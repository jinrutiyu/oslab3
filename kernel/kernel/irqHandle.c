#include "x86.h"
#include "device.h"
#include "process.h"
#include "syscall.h"
#include "tools.h"

static int line=5;
static int col=0;

#define pattern 0x0c

extern ProcessTable idle;
extern ProcessTable pcb_tb[NR_MAX_PCB];
extern ProcessTable * current;

uint32_t __ptr;



void 		syscallHandle(struct TrapFrame *tf);
void  GProtectFaultHandle(struct TrapFrame *tf);
void 		  timerHandle(					  );

void showCharInScreen(char ch);

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
		case 1000:
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
		Log("write::%x\n",GET_SEG_BASE(current->data_seg));
		char *buf=(void *)tf->ecx+GET_SEG_BASE(current->data_seg);/*偏移量*/
		int len=tf->edx;
		int retlen=0;
		char ch;
		while (len--) 
		{
			ch=*(buf++);
			if (ch == '\0') 
				break;
			// putChar(ch);
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

void do_sys_exit(struct TrapFrame *tf)
{
	current->state=DEAD;
	schedule();
}

void do_sys_sleep(struct TrapFrame *tf)
{
	current->state=SLEEP;
	current->sleepTime=tf->ebx;
	schedule();
}

void do_sys_fork(struct TrapFrame *tf)
{
	int child_pcb_index=applyANewPcb();
	ProcessTable * child_pcb=&pcb_tb[child_pcb_index];
	
	SegDesc temp_code_seg=child_pcb->code_seg;
	SegDesc temp_data_seg=child_pcb->data_seg;
	*child_pcb=*current;
	child_pcb->code_seg=temp_code_seg;
	child_pcb->data_seg=temp_data_seg;

	//完整拷贝用户地址空间
	//from current->code_seg.base -> +0x400000
	// 2 child_pcb->code_seg.base -> +0x400000

	memcpy((char*)GET_SEG_BASE(child_pcb->code_seg),(char*)GET_SEG_BASE(current->code_seg),0x400000);

	child_pcb->state=WAIT;
	child_pcb->stackframe.eax=0;//向子进程返回0
	tf->eax=child_pcb->pid;//向父进程返回子进程的pid
}


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

void syscallHandle(struct TrapFrame *tf) {
	switch(tf->eax) {
/*------case|--SYS_num------|---------------handler---------*/
		case SYS_write		: 		do_sys_write(tf);			break;
		case SYS_exit		:		do_sys_exit(tf);			break;
		case SYS_fork		:		do_sys_fork(tf);			break;
		case SYS_nanosleep	:		do_sys_sleep(tf);			break;
		default: assert(0);
	}
}


void GProtectFaultHandle(struct TrapFrame *tf){
	assert(0);
	return;
}

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