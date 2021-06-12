
==================== Asm code ====================
.section .text
.align 8
.globl func1
.type func1, @function
func1:
_c1:
	movl $256,%ebx
	jmp *(%rbp)
	.size func1, .-func1


