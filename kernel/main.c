#include "common.h"
#include "x86.h"
#include "device.h"
#include "process.h"

extern ProcessTable idle;

void idle_fun()
{
	asm volatile("movl %0,%%esp"
					:
					:"r"(&idle.stackframe));//每次进idle 都把esp 指回去
	asm volatile ("sti");
	while(1)
    {
    	asm volatile("hlt");
   	}
}

void kEntry(void) {
	initSerial();// initialize serial port
	initTimer();// initialize 8253
	initIdt(); // initialize idt
	initIntr(); // iniialize 8259a
	initSeg(); // initialize gdt, tss
	initProcess();
	
// loadUMain(); // load user program, enter user space
// 
	asm volatile ("movl %0,%%esp"
					:
					:"r"((uint32_t)(&idle.state-2)));
	idle_fun();
	assert(0);
}

