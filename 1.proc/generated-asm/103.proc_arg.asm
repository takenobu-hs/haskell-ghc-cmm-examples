
==================== Asm code ====================
.section .text
.align 8
.globl proc
.type proc, @function
proc:
_c2:
	addq $123,%rbx
	jmp *(%rbp)
	.size proc, .-proc


