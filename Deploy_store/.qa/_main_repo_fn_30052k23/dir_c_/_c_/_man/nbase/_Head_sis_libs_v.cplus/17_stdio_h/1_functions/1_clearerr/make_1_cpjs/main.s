	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d \n"
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
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movl	$100, %edi
	call	fill_rand_lc_0_MxV_Ac_Ar
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$6, %edi
	call	pr_int_arr_lc_0_Ac_Ar
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	is_prime_lc_0_Chint
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (GNU) 11.2.1 20220127 (Red Hat 11.2.1-9)"
	.section	.note.GNU-stack,"",@progbits
