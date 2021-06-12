
==================== Asm code ====================
.section .text
.align 8
.globl func1
.type func1, @function
func1:
_c1:
	movl $256,%ebx
	leaq 2(%rbx),%r14
	decq %r14
	imulq $10,%r14
	movl $3,%eax
	movq %rax,%rbx
	movq %r14,%rax
	xorq %rdx,%rdx
	divq %rbx
	movq %rax,%r14
	shlq $2,%r14
	shrq $1,%r14
	movl $100,%eax
	movq %rax,%rbx
	movq %r14,%rax
	xorq %rdx,%rdx
	divq %rbx
	movq %rdx,%r14
	movq %r14,%rbx
	jmp *(%rbp)
	.size func1, .-func1


