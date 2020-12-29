
==================== Asm code ====================
.section .text
.align 8
.globl proc
.type proc, @function
proc:
_c1:
	movl $1234,%ebx
	jmp *(%rbp)
	.size proc, .-proc


