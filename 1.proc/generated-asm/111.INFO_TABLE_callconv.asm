
==================== Asm code ====================
.section .text
.align 8
.align 8
	.quad	1
	.long	2
	.long	0
.globl abc_info
.type abc_info, @object
abc_info:
_c2:
	jmp *(%rbp)
	.size abc_info, .-abc_info


