#include "common.h"
#include "process.h"
#include "x86/memory.h"

ProcessTable idle;
ProcessTable pcb_tb[NR_MAX_PCB];
ProcessTable * current;

extern SegDesc gdt[NR_SEGMENTS];
extern TSS tss;

#define SECTSIZE 512
#define ELF_START_POS (201*SECTSIZE)

extern uint32_t loader(char *buf,int offset);
extern void readseg(char *address, int count, int offset);

void initProcess()
{
	idle.state=RUN;
	idle.timeCount=5;
	for(int i=0;i<NR_MAX_PCB;i++)
	{
		pcb_tb[i].state=DEAD;
		pcb_tb[i].stackframe.gs=USEL(SEG_UDATA);
		pcb_tb[i].stackframe.fs=USEL(SEG_UDATA);
		pcb_tb[i].stackframe.es=USEL(SEG_UDATA);
		pcb_tb[i].stackframe.ds=USEL(SEG_UDATA);
		//eip
		pcb_tb[i].stackframe.cs=USEL(SEG_UCODE);
		pcb_tb[i].stackframe.eflags=0x202;
		pcb_tb[i].stackframe.esp=0x100000;
		pcb_tb[i].stackframe.ss=USEL(SEG_UCODE);
		pcb_tb[i].pid=i+1;

		pcb_tb[i].code_seg=SEG(STA_X | STA_R, (i<<20)+0x200000,       0xffffffff, DPL_USER);
		pcb_tb[i].data_seg=SEG(STA_W,         (i<<20)+0x200000,       0xffffffff, DPL_USER);
	}
	/*加载用户程序至内存*/
	char *buf=(char *)0x8000;
	/*read elf from disk*/
	readseg((char*)buf, SECTSIZE, ELF_START_POS);
	pcb_tb[0].stackframe.eip=loader(buf,0x200000);
	pcb_tb[0].state=WAIT;

	current=&idle;
}


void schedule()
{
	for (ProcessTable * temp=&pcb_tb[0];temp!=&pcb_tb[NR_MAX_PCB];temp++)
	{
		if(WAIT==temp->state)
		{
			current            =temp;
			current->timeCount =10;
			current->state     =RUN;
			
			// tss.ss0=???
			tss.esp0=(uint32_t)((char *)&current->state);
			
			gdt[SEG_UCODE] = current->code_seg;
			gdt[SEG_UDATA] = current->data_seg;
			// Log("cs=%x\n",current->stackframe.cs);
			// Log("eip=%x\n",current->stackframe.eip);
			// Log("ucode.base.15-0=%x\n",gdt[SEG_UCODE].base_15_0);
			// Log("ucode.base.23-16=%x\n",gdt[SEG_UCODE].base_23_16);
			// Log("ucode.base.32_24=%x\n",gdt[SEG_UCODE].base_31_24);
			return;
		}
	}
	current=&idle;
	current->timeCount=10;
}