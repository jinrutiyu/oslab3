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
extern void idle_fun();

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
		pcb_tb[i].stackframe.esp=0x200000;
		pcb_tb[i].stackframe.ss=USEL(SEG_UDATA);
		pcb_tb[i].pid=i+1;

		pcb_tb[i].code_seg=SEG(STA_X | STA_R, 4*i*(1<<20),       0xffffffff, DPL_USER);
		pcb_tb[i].data_seg=SEG(STA_W,         4*i*(1<<20),       0xffffffff, DPL_USER);
	}
	/*加载用户程序至内存*/
	char *buf=(char *)0x8000;
	/*read elf from disk*/
	readseg((char*)buf, SECTSIZE, ELF_START_POS);
	pcb_tb[0].stackframe.eip=loader(buf,0);
	pcb_tb[0].state=WAIT;
	current=&idle;
}


void schedule()
{
	Log("SCHEDULE");
	
	ProcessTable * toFirstBeScheduled=(current==&pcb_tb[0]?&pcb_tb[1]:&pcb_tb[0]);
	ProcessTable * toNextBeScheduled=(toFirstBeScheduled==&pcb_tb[0]?&pcb_tb[1]:&pcb_tb[0]);
	if(WAIT==toFirstBeScheduled->state)
	{
		Log("\n%d->%d\n",ProcessTableIndex(current),ProcessTableIndex(toFirstBeScheduled));
		current            =toFirstBeScheduled;
		current->timeCount =10;
		current->state     =RUN;
		
		tss.esp0=(uint32_t)((char *)&current->state);
		
		gdt[SEG_UCODE] = current->code_seg;
		gdt[SEG_UDATA] = current->data_seg;
		setGdt(gdt, sizeof(gdt));
		return;
	}

	if(WAIT==toNextBeScheduled->state)
	{
		Log("\n%d->%d\n",ProcessTableIndex(current),ProcessTableIndex(toNextBeScheduled));

		current            =toNextBeScheduled;
		current->timeCount =10;
		current->state     =RUN;
		
		tss.esp0=(uint32_t)((char *)&current->state);
		
		gdt[SEG_UCODE] = current->code_seg;
		gdt[SEG_UDATA] = current->data_seg;
		setGdt(gdt, sizeof(gdt));
		return;
	}
	Log("\n%d->%d\n",ProcessTableIndex(current),-1);
	current=&idle;
	current->state=RUN;
	current->timeCount=10;
	idle_fun();
}

int applyANewPcb()
{
	for (int index=0;index<NR_MAX_PCB;index++)
	{
		if(DEAD==pcb_tb[index].state)
			return index;
	}
	assert(0);
	return -1;
}