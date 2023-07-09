	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"Enter words (max 50 char): "
.LC1:
	.string	"main.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	movl	$1, %esi
	movl	$.LC0, %edi
	call	fwrite
	movq	stdin(%rip), %rdx
	leaq	-64(%rbp), %rax
	movl	$38, %r8d
	movl	$.LC1, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	fgets_c
	movq	stdout(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (GNU) 11.2.1 20220127 (Red Hat 11.2.1-9)"
	.section	.note.GNU-stack,"",@progbits
