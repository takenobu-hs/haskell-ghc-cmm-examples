
==================== Asm code ====================
.section .text
.align 8
.globl proc
.type proc, @function
proc:
_c4:
	addq %rsi,%r14
	addq %r14,%rbx
	jmp *(%rbp)
	.size proc, .-proc


