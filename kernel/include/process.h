#ifndef __PROCESS__
#define __PROCESS__

#include "common.h"

#define K_SIZE 4096
#define MAX_PCB 4
enum {RUN, SLEEP, WAIT, DEAD};
typedef struct PCB{
	void *tf;
	uint8_t kstack[K_SIZE];
	uint32_t state;
	uint32_t time;
	uint32_t sleep_time;
}PCB;

extern PCB *current;
extern PCB idle, pcb_table[MAX_PCB];

#endif