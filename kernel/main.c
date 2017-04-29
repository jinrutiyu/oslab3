#include "common.h"
#include "x86.h"
#include "device.h"
#include "process.h"

extern ProcessTable idle;


void kEntry(void) {
	initSerial();// initialize serial port
	initTimer();// initialize 8253
	initIdt(); // initialize idt
	initIntr(); // iniialize 8259a
	initSeg(); // initialize gdt, tss
	initProcess();
	
// loadUMain(); // load user program, enter user space
	while(1)
    {
    	asm volatile("hlt");
   	}
	assert(0);
}
