
==================== Asm code ====================
.section .text
.align 8
.globl func1
.type func1, @function
func1:
_c4:
	cmpq %r14,%rbx
	jbe _c3
_c1:
	movl $111,%ebx
_c2:
	jmp *(%rbp)
_c3:
	movl $100,%ebx
	jmp _c2
	.size func1, .-func1


