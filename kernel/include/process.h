#ifndef __PROCESS_H__
#define __PROCESS_H__

#define MAX_STACK_SIZE 4096
#define NR_MAX_PCB 2

#include "common.h"

enum {RUN, SLEEP, WAIT, DEAD};

typedef struct StackFrame
{
	uint32_t gs,fs,es,ds;
	uint32_t edi, esi, ebp, xxx, ebx, edx, ecx, eax;
	int32_t irq;
	uint32_t error;
	uint32_t eip,cs,eflags,esp,ss;
}StackFrame;

typedef struct ProcessTable
{
	uint32_t stack[MAX_STACK_SIZE]; // 内 核 堆 栈
	struct StackFrame stackframe;
	int state;
	int timeCount;
	int sleepTime;
	uint32_t pid;
}ProcessTable;


extern void schedule();
#endif