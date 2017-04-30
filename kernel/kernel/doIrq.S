.code32
#----|-----entry------|-errorcode-|-----id-----|---handler---|
.globl no0;    no0:   pushl $0;  pushl    $0; jmp asmDoIrq
.globl no1;    no1:   pushl $0;  pushl    $1; jmp asmDoIrq
.globl no2;    no2:   pushl $0;  pushl    $2; jmp asmDoIrq
.globl no3;    no3:   pushl $0;  pushl    $3; jmp asmDoIrq
.globl no4;    no4:   pushl $0;  pushl    $4; jmp asmDoIrq
.globl no5;    no5:   pushl $0;  pushl    $5; jmp asmDoIrq
.globl no6;    no6:   pushl $0;  pushl    $6; jmp asmDoIrq
.globl no7;    no7:   pushl $0;  pushl    $7; jmp asmDoIrq
.globl no8;    no8:              pushl    $8; jmp asmDoIrq
.globl no9;    no9:   pushl $0;  pushl    $9; jmp asmDoIrq
.globl no10;   no10:             pushl   $10; jmp asmDoIrq
.globl no11;   no11:             pushl   $11; jmp asmDoIrq
.globl no12;   no12:             pushl   $12; jmp asmDoIrq
.globl no13;   no13:             pushl   $13; jmp asmDoIrq
.globl no14;   no14:             pushl   $14; jmp asmDoIrq
.globl intr0; intr0:  pushl $0;	 pushl $1000; jmp asmDoIrq



.globl irqEmpty;
			irqEmpty:	pushl $0;  pushl   $-1; jmp asmDoIrq

.global irqGProtectFault
irqGProtectFault:
	pushl $0xd
	jmp asmDoIrq

.global irqSyscall
irqSyscall:
	pushl $0 // push dummy error code
	pushl $0x80 // push interrupt vector into kernel stack
	jmp asmDoIrq

# .global __ptr

.global asmDoIrq
asmDoIrq:
	cli
	pushl %ds
	pushl %es
	pushl %fs
	pushl %gs
	pushal // push process state into kernel stack
	pushl %esp
	call irqHandle

	movl __ptr,%eax
	test %eax,%eax
	jz switch
	movl %eax,%esp

.globl switch
switch:
	addl $4, %esp
	popal

	popl %gs
	popl %fs
	popl %es
	popl %ds

	addl $4, %esp //interrupt vector is on top of kernel stack
	addl $4, %esp //error code is on top of kernel stack
	sti
	iret
