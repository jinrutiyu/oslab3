#include "x86.h"
#include "device.h"
#include "process.h"
#include "x86/memory.h"
#include "syscall.h"

static int line=5;
static int col=0;

#define pattern 0x0c

extern ProcessTable idle;
extern ProcessTable pcb_tb[NR_MAX_PCB];
extern ProcessTable * current;

uint32_t __ptr;

void showCharInScreen(char ch){
	if(ch!='\n')
	{
		short b=(pattern<<8)+(int)(ch);
		int place=(line*80+col)*2;
		short* p=(short*)(0xb8000+place);
		*p=b;
		col++;
		if(col==80)
		{
			line++;
			col=0;
		}
	}
	else {
		line++;
		col=0;
	}
}

void syscallHandle(struct TrapFrame *tf);

void GProtectFaultHandle(struct TrapFrame *tf);

void timerHandle()
{
	if(current==&idle)
	{
		putChar('.');
	}	
	else if(current==&pcb_tb[0])
		putChar('1');
	else if(current==&pcb_tb[1])
		putChar('2');
	else
		assert(0);

	for(int i=0;i<NR_MAX_PCB;i++)
	{
		if(SLEEP==pcb_tb[i].state)
		{
			pcb_tb[i].sleepTime--;
			if(pcb_tb[i].sleepTime==0) 
				pcb_tb[i].state=WAIT;
		}
	}
	if(current->timeCount==0)
	{
		current->state=WAIT;
		schedule();
	}
	else
		current->timeCount--;
}


void irqHandle(struct TrapFrame *tf) {
	/*
	 * 中断处理程序
	 */
	/* Reassign segment register */
	// asm volatile(	"pushl %ds		\n\t"
	// 				"pushl %es		\n\t"
	// 				"pushl %fs		\n\t"
	// 				"pushl %gs			");

	asm volatile("movw %%ax,%%es\n\t"
				 "movw %%ax,%%ds\n\t"
				 "movw %%ax,%%fs\n\t"
				 "movw %%ax,%%gs	"
				 :
				 : "a" (KSEL(SEG_KDATA)));
	// Log("irq::%d",tf->irq);
	switch(tf->irq) {
		case -1:
			break;
		case 0xd:
			GProtectFaultHandle(tf);
			break;
		case 0x80:
			syscallHandle(tf);
			break;
		case 1000://Timer
			// Log("time 1000\n");
			timerHandle();

			if(current==&idle)
			{
				__ptr=0;
			}
			else
			{
				//change the esp to the Process temp's PCB
				__ptr=(uint32_t)&current->stackframe;
			}			
			// Log("__ptr=%x",__ptr);
			break;
		default:Log("\nirq::%d\n",tf->irq);assert(0);
	}
	// asm volatile("popl %gs		\n\t"
	// 			 "popl %fs		\n\t"
	// 			 "popl %es		\n\t"
	// 			 "popl %ds			");

}

void do_sys_write(struct TrapFrame *tf)
{
	if (tf->ebx == 1 || tf->ebx == 2)
	{
		char *buf=(void *)tf->ecx+GET_SEG_BASE(current->data_seg);/*偏移量*/
		int len=tf->edx;
		int retlen=0;
		char ch;
		while (len--) 
		{
			ch=*(buf++);
			if (ch == '\0') 
				break;
			putChar(ch);
			showCharInScreen(ch);
			retlen++;		
		}
		tf->eax=retlen;
	}
	else
	{
		assert(0);
	}
}


void syscallHandle(struct TrapFrame *tf) {
	switch(tf->eax) {
/*------case|--SYS_num------|---------------handler---------*/
		case SYS_write		: 		do_sys_write(tf);	break;
		case SYS_exit		:							break;
		case SYS_fork		:							break;
		case SYS_nanosleep	:							break;
		default: assert(0);
	}
}

void GProtectFaultHandle(struct TrapFrame *tf){
	assert(0);
	return;
}
