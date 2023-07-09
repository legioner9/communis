	.file	"lc_0.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs" "lib/lc_0.c"
	.globl	fill_rand_lc_0_MxV_Ac_Ar
	.type	fill_rand_lc_0_MxV_Ac_Ar, @function
fill_rand_lc_0_MxV_Ac_Ar:
.LFB6:
	.file 1 "lib/lc_0.c"
	.loc 1 21 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	.loc 1 24 11
	movl	$0, %edi
	call	time
	.loc 1 24 5
	movl	%eax, %edi
	call	srand
.LBB2:
	.loc 1 25 14
	movl	$0, -4(%rbp)
	.loc 1 25 5
	jmp	.L2
.L3:
	.loc 1 27 18 discriminator 3
	call	rand
	.loc 1 27 12 discriminator 3
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-32(%rbp), %rdx
	addq	%rdx, %rcx
	.loc 1 27 25 discriminator 3
	cltd
	idivl	-20(%rbp)
	movl	%edx, %eax
	.loc 1 27 16 discriminator 3
	movl	%eax, (%rcx)
	.loc 1 25 32 discriminator 3
	addl	$1, -4(%rbp)
.L2:
	.loc 1 25 23 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L3
.LBE2:
	.loc 1 29 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	fill_rand_lc_0_MxV_Ac_Ar, .-fill_rand_lc_0_MxV_Ac_Ar
	.section	.rodata
.LC0:
	.string	"%4d"
	.text
	.globl	pr_int_arr_lc_0_Ac_Ar
	.type	pr_int_arr_lc_0_Ac_Ar, @function
pr_int_arr_lc_0_Ac_Ar:
.LFB7:
	.loc 1 32 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
.LBB3:
	.loc 1 35 14
	movl	$0, -4(%rbp)
	.loc 1 35 5
	jmp	.L5
.L6:
	.loc 1 37 26 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 37 9 discriminator 3
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	.loc 1 35 32 discriminator 3
	addl	$1, -4(%rbp)
.L5:
	.loc 1 35 23 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L6
.LBE3:
	.loc 1 39 5
	movl	$10, %edi
	call	putchar
	.loc 1 40 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	pr_int_arr_lc_0_Ac_Ar, .-pr_int_arr_lc_0_Ac_Ar
	.section	.rodata
.LC1:
	.string	"divisor = %d\n"
	.text
	.globl	is_prime_lc_0_Chint
	.type	is_prime_lc_0_Chint, @function
is_prime_lc_0_Chint:
.LFB8:
	.loc 1 43 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
.LBB4:
	.loc 1 44 14
	movl	$2, -4(%rbp)
	.loc 1 44 5
	jmp	.L8
.L11:
	.loc 1 48 20
	movl	-20(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%edx, %eax
	.loc 1 48 12
	testl	%eax, %eax
	jne	.L9
	.loc 1 50 13
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	.loc 1 51 20
	movl	$0, %eax
	jmp	.L10
.L9:
	.loc 1 46 10
	addl	$1, -4(%rbp)
.L8:
	.loc 1 45 18
	movl	-4(%rbp), %eax
	imull	%eax, %eax
	.loc 1 45 28
	cmpl	%eax, -20(%rbp)
	jge	.L11
.LBE4:
	.loc 1 54 12
	movl	$1, %eax
.L10:
	.loc 1 55 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	is_prime_lc_0_Chint, .-is_prime_lc_0_Chint
	.globl	insert_sort_up_lc_0_AcMxV_Ar
	.type	insert_sort_up_lc_0_AcMxV_Ar, @function
insert_sort_up_lc_0_AcMxV_Ar:
.LFB9:
	.loc 1 58 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
.LBB5:
	.loc 1 59 17
	movq	$1, -8(%rbp)
	.loc 1 59 5
	jmp	.L13
.L17:
.LBB6:
	.loc 1 61 13
	movq	-8(%rbp), %rax
	movl	%eax, -12(%rbp)
	.loc 1 62 15
	jmp	.L14
.L16:
.LBB7:
	.loc 1 64 24
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 64 17
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	.loc 1 65 25
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 65 14
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	-4(%rdx), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 65 25
	movl	(%rax), %eax
	.loc 1 65 22
	movl	%eax, (%rdx)
	.loc 1 66 14
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 66 18
	movl	-16(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 1 68 14
	subl	$1, -12(%rbp)
.L14:
.LBE7:
	.loc 1 62 22
	cmpl	$0, -12(%rbp)
	jle	.L15
	.loc 1 62 27 discriminator 1
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	.loc 1 62 38 discriminator 1
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	.loc 1 62 22 discriminator 1
	cmpl	%eax, %edx
	jg	.L16
.L15:
.LBE6:
	.loc 1 59 32 discriminator 2
	addq	$1, -8(%rbp)
.L13:
	.loc 1 59 26 discriminator 1
	movl	-20(%rbp), %eax
	cltq
	cmpq	%rax, -8(%rbp)
	jb	.L17
.LBE5:
	.loc 1 71 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	insert_sort_up_lc_0_AcMxV_Ar, .-insert_sort_up_lc_0_AcMxV_Ar
	.globl	insert_sort_down_lc_0_AcMxV_Ar
	.type	insert_sort_down_lc_0_AcMxV_Ar, @function
insert_sort_down_lc_0_AcMxV_Ar:
.LFB10:
	.loc 1 74 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
.LBB8:
	.loc 1 75 23
	movl	-20(%rbp), %eax
	subl	$1, %eax
	.loc 1 75 17
	cltq
	movq	%rax, -8(%rbp)
	.loc 1 75 5
	jmp	.L19
.L23:
.LBB9:
	.loc 1 77 13
	movq	-8(%rbp), %rax
	movl	%eax, -12(%rbp)
	.loc 1 78 15
	jmp	.L20
.L22:
.LBB10:
	.loc 1 81 24
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 81 17
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	.loc 1 82 21
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 82 14
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 82 21
	movl	(%rax), %eax
	.loc 1 82 18
	movl	%eax, (%rdx)
	.loc 1 83 14
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 83 22
	movl	-16(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 1 85 14
	addl	$1, -12(%rbp)
.L20:
.LBE10:
	.loc 1 78 22
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.L21
	.loc 1 78 27 discriminator 1
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	.loc 1 78 38 discriminator 1
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	.loc 1 78 22 discriminator 1
	cmpl	%eax, %edx
	jl	.L22
.L21:
.LBE9:
	.loc 1 75 36 discriminator 2
	subq	$1, -8(%rbp)
.L19:
	.loc 1 75 30 discriminator 1
	cmpq	$0, -8(%rbp)
	jne	.L23
.LBE8:
	.loc 1 88 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	insert_sort_down_lc_0_AcMxV_Ar, .-insert_sort_down_lc_0_AcMxV_Ar
	.globl	gcd_lc_0_int_int
	.type	gcd_lc_0_int_int, @function
gcd_lc_0_int_int:
.LFB11:
	.loc 1 92 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 1 93 8
	cmpl	$0, -24(%rbp)
	jne	.L25
	.loc 1 94 16
	movl	-20(%rbp), %eax
	jmp	.L26
.L25:
	.loc 1 95 9
	movl	-20(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	movl	%edx, -4(%rbp)
	.loc 1 96 12
	movl	-4(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	gcd_lc_0_int_int
.L26:
	.loc 1 97 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	gcd_lc_0_int_int, .-gcd_lc_0_int_int
	.globl	factorial_lc_0_int
	.type	factorial_lc_0_int, @function
factorial_lc_0_int:
.LFB12:
	.loc 1 100 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 101 8
	cmpl	$0, -20(%rbp)
	jne	.L28
	.loc 1 102 16
	movl	$1, %eax
	jmp	.L29
.L28:
	.loc 1 103 20
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	call	factorial_lc_0_int
	.loc 1 103 9
	movl	-20(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 1 104 12
	movl	-4(%rbp), %eax
.L29:
	.loc 1 105 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	factorial_lc_0_int, .-factorial_lc_0_int
	.globl	fib_lc_0_int
	.type	fib_lc_0_int, @function
fib_lc_0_int:
.LFB13:
	.loc 1 108 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	.loc 1 109 8
	cmpl	$1, -36(%rbp)
	jg	.L31
	.loc 1 110 16
	movl	-36(%rbp), %eax
	jmp	.L32
.L31:
	.loc 1 111 16
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	call	fib_lc_0_int
	movl	%eax, %ebx
	.loc 1 111 38
	movl	-36(%rbp), %eax
	subl	$2, %eax
	movl	%eax, %edi
	call	fib_lc_0_int
	.loc 1 111 9
	addl	%ebx, %eax
	movl	%eax, -20(%rbp)
	.loc 1 112 12
	movl	-20(%rbp), %eax
.L32:
	.loc 1 113 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	fib_lc_0_int, .-fib_lc_0_int
	.section	.rodata
.LC2:
	.string	"n = %d : from %d to %d\n"
	.text
	.globl	hanoi_lc_0_hight_from_to
	.type	hanoi_lc_0_hight_from_to, @function
hanoi_lc_0_hight_from_to:
.LFB14:
	.loc 1 116 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	.loc 1 118 8
	cmpl	$1, -20(%rbp)
	jne	.L34
	.loc 1 119 9
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	.loc 1 127 1
	jmp	.L36
.L34:
.LBB11:
	.loc 1 122 21
	movl	$6, %eax
	subl	-24(%rbp), %eax
	.loc 1 122 13
	subl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	.loc 1 123 9
	movl	-20(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-4(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	hanoi_lc_0_hight_from_to
	.loc 1 124 9
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	.loc 1 125 9
	movl	-20(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-28(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	hanoi_lc_0_hight_from_to
.L36:
.LBE11:
	.loc 1 127 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	hanoi_lc_0_hight_from_to, .-hanoi_lc_0_hight_from_to
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-redhat-linux/12/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/bits/types/time_t.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/time.h"
	.file 7 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x445
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xd
	.long	.LASF29
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x6
	.long	.LASF9
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x3a
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x6
	.long	.LASF10
	.byte	0x3
	.byte	0xa0
	.byte	0x1a
	.long	0x6b
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0xf
	.long	0x7e
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x6
	.long	.LASF13
	.byte	0x4
	.byte	0xa
	.byte	0x12
	.long	0x72
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x7
	.long	0x85
	.uleb128 0x10
	.long	.LASF15
	.byte	0x5
	.value	0x164
	.byte	0xc
	.long	0x64
	.long	0xc1
	.uleb128 0x8
	.long	0xa4
	.uleb128 0x11
	.byte	0
	.uleb128 0x12
	.long	.LASF30
	.byte	0x7
	.value	0x1c6
	.byte	0xc
	.long	0x64
	.uleb128 0x13
	.long	.LASF31
	.byte	0x7
	.value	0x1c8
	.byte	0xd
	.long	0xe1
	.uleb128 0x8
	.long	0x41
	.byte	0
	.uleb128 0x14
	.long	.LASF16
	.byte	0x6
	.byte	0x4c
	.byte	0xf
	.long	0x91
	.long	0xf7
	.uleb128 0x8
	.long	0xf7
	.byte	0
	.uleb128 0x7
	.long	0x91
	.uleb128 0xb
	.long	.LASF21
	.byte	0x73
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x15d
	.uleb128 0x1
	.string	"n"
	.byte	0x73
	.byte	0x29
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"i"
	.byte	0x73
	.byte	0x30
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"k"
	.byte	0x73
	.byte	0x37
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x4
	.string	"tmp"
	.byte	0x7a
	.byte	0xd
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF18
	.byte	0x6b
	.long	0x64
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x198
	.uleb128 0x1
	.string	"a"
	.byte	0x6b
	.byte	0x1c
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.long	.LASF17
	.byte	0x6f
	.byte	0x9
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x5
	.long	.LASF19
	.byte	0x63
	.long	0x64
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d3
	.uleb128 0x1
	.string	"a"
	.byte	0x63
	.byte	0x22
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.long	.LASF17
	.byte	0x67
	.byte	0x9
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.long	.LASF20
	.byte	0x5b
	.long	0x64
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x21a
	.uleb128 0x1
	.string	"a"
	.byte	0x5b
	.byte	0x20
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"b"
	.byte	0x5b
	.byte	0x27
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.string	"div"
	.byte	0x5f
	.byte	0x9
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.long	.LASF22
	.byte	0x49
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ab
	.uleb128 0x1
	.string	"N"
	.byte	0x49
	.byte	0x2f
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"A"
	.byte	0x49
	.byte	0x36
	.long	0x2ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x4
	.string	"i"
	.byte	0x4b
	.byte	0x11
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x4
	.string	"k"
	.byte	0x4d
	.byte	0xd
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x4
	.string	"tmp"
	.byte	0x51
	.byte	0x11
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x64
	.uleb128 0xc
	.long	.LASF23
	.byte	0x39
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x341
	.uleb128 0x1
	.string	"N"
	.byte	0x39
	.byte	0x2d
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"A"
	.byte	0x39
	.byte	0x34
	.long	0x2ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x4
	.string	"i"
	.byte	0x3b
	.byte	0x11
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x4
	.string	"k"
	.byte	0x3d
	.byte	0xd
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x4
	.string	"tmp"
	.byte	0x40
	.byte	0x11
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF24
	.byte	0x2a
	.long	0x64
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x38e
	.uleb128 0x1
	.string	"a"
	.byte	0x2a
	.byte	0x23
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x9
	.long	.LASF25
	.byte	0x2c
	.byte	0xe
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1f
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e5
	.uleb128 0xa
	.long	.LASF27
	.byte	0x1f
	.byte	0x26
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"arr"
	.byte	0x1f
	.byte	0x30
	.long	0x2ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x4
	.string	"i"
	.byte	0x23
	.byte	0xe
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF32
	.byte	0x1
	.byte	0x14
	.byte	0xc
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.long	.LASF28
	.byte	0x14
	.byte	0x29
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.long	.LASF27
	.byte	0x14
	.byte	0x38
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"arr"
	.byte	0x14
	.byte	0x42
	.long	0x2ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x4
	.string	"i"
	.byte	0x19
	.byte	0xe
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF19:
	.string	"factorial_lc_0_int"
.LASF26:
	.string	"pr_int_arr_lc_0_Ac_Ar"
.LASF24:
	.string	"is_prime_lc_0_Chint"
.LASF17:
	.string	"step"
.LASF22:
	.string	"insert_sort_down_lc_0_AcMxV_Ar"
.LASF23:
	.string	"insert_sort_up_lc_0_AcMxV_Ar"
.LASF32:
	.string	"fill_rand_lc_0_MxV_Ac_Ar"
.LASF4:
	.string	"unsigned char"
.LASF2:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF10:
	.string	"__time_t"
.LASF31:
	.string	"srand"
.LASF3:
	.string	"unsigned int"
.LASF14:
	.string	"long long unsigned int"
.LASF25:
	.string	"divisor"
.LASF28:
	.string	"max_value"
.LASF13:
	.string	"time_t"
.LASF16:
	.string	"time"
.LASF21:
	.string	"hanoi_lc_0_hight_from_to"
.LASF27:
	.string	"argc"
.LASF18:
	.string	"fib_lc_0_int"
.LASF12:
	.string	"long long int"
.LASF11:
	.string	"char"
.LASF15:
	.string	"printf"
.LASF7:
	.string	"short int"
.LASF29:
	.string	"GNU C17 12.2.1 20220819 (Red Hat 12.2.1-1) -mtune=generic -march=x86-64 -g"
.LASF8:
	.string	"long int"
.LASF6:
	.string	"signed char"
.LASF20:
	.string	"gcd_lc_0_int_int"
.LASF30:
	.string	"rand"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs"
.LASF0:
	.string	"lib/lc_0.c"
	.ident	"GCC: (GNU) 12.2.1 20220819 (Red Hat 12.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
