
==================== Asm code ====================
.section .text
.align 8
.globl proc
.type proc, @function
proc:
_c1:
	jmp *(%rbp)
	.size proc, .-proc


