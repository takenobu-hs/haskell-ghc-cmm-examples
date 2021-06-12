
==================== Asm code ====================
.section .text
.align 8
.globl func1
.type func1, @function
func1:
_c1:
	addq $16,%r12
	addq $8,%rbp
	movq %r12,%rbx
	addq %rbp,%rbx
	jmp *(%rbp)
	.size func1, .-func1


