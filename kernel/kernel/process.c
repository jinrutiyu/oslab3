#include "common.h"
#include "process.h"
#include "x86/memory.h"

ProcessTable idle;
ProcessTable pcb_tb[NR_MAX_PCB];
ProcessTable * current;


extern TSS tss;

void init_Process()
{
	
}


void schedule()
{
	for (ProcessTable * temp=current+1;temp!=&pcb_tb[NR_MAX_PCB+1];temp++)
	{
		if(WAIT==temp->state)
		{
			current=temp;
			current->timeCount=10;
			current->state=RUN;
			tss.esp0=(uint32_t)((char *)&current->state);
			return;
		}
	}
	current=&idle;
}