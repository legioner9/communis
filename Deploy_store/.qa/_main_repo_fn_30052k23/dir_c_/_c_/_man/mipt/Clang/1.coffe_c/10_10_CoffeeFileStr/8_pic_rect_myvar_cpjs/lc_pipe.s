	.file	"lc_pipe.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs" "lib/lc_pipe.c"
	.globl	wal_lc_pipe
	.type	wal_lc_pipe, @function
wal_lc_pipe:
.LFB6:
	.file 1 "lib/lc_pipe.c"
	.loc 1 38 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 40 9
	movl	$1, -8(%rbp)
	.loc 1 41 9
	movl	$0, -12(%rbp)
	.loc 1 44 11
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	.loc 1 45 11
	jmp	.L2
.L8:
	.loc 1 47 12
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L3
	.loc 1 47 27 discriminator 1
	cmpl	$32, -16(%rbp)
	je	.L4
	.loc 1 48 23
	cmpl	$9, -16(%rbp)
	je	.L4
	.loc 1 48 36 discriminator 1
	cmpl	$10, -16(%rbp)
	je	.L4
	.loc 1 48 49 discriminator 2
	cmpl	$8, -16(%rbp)
	jne	.L3
.L4:
	.loc 1 49 13
	movl	$10, %edi
	call	putchar
	.loc 1 50 19
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L2
.L3:
	.loc 1 51 19
	cmpl	$32, -16(%rbp)
	je	.L6
	.loc 1 51 30 discriminator 2
	cmpl	$9, -16(%rbp)
	je	.L6
	.loc 1 51 43 discriminator 4
	cmpl	$10, -16(%rbp)
	je	.L6
	.loc 1 51 56 discriminator 6
	cmpl	$8, -16(%rbp)
	jne	.L7
.L6:
	.loc 1 52 19 discriminator 7
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	.loc 1 53 13 discriminator 7
	jmp	.L2
.L7:
	.loc 1 55 19
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	.loc 1 56 13
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	putchar
.L2:
	.loc 1 45 17
	call	getchar
	movl	%eax, -16(%rbp)
	.loc 1 45 28
	cmpl	$-1, -16(%rbp)
	jne	.L8
	.loc 1 59 12
	movl	$0, %eax
	.loc 1 60 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	wal_lc_pipe, .-wal_lc_pipe
	.section	.rodata
.LC0:
	.string	"all_chars: %d\n"
.LC1:
	.string	"dig %d: %d\n"
.LC2:
	.string	"b_alfabet: %d\n"
.LC3:
	.string	"s_alfabet: %d\n"
.LC4:
	.string	"spaces: %d\n"
.LC5:
	.string	"rest_chars: %d\n"
	.text
	.globl	plrt_s_lc_pipe
	.type	plrt_s_lc_pipe, @function
plrt_s_lc_pipe:
.LFB7:
	.loc 1 63 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.loc 1 65 9
	movl	$0, -4(%rbp)
	.loc 1 66 9
	movl	$0, -8(%rbp)
	.loc 1 67 9
	movl	$0, -12(%rbp)
	.loc 1 68 9
	movl	$0, -16(%rbp)
	.loc 1 69 9
	movl	$0, -20(%rbp)
	.loc 1 71 9
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movq	%xmm0, -48(%rbp)
	.loc 1 72 11
	jmp	.L11
.L18:
	.loc 1 73 9
	addl	$1, -4(%rbp)
	.loc 1 74 12
	cmpl	$47, -28(%rbp)
	jle	.L12
	.loc 1 74 22 discriminator 1
	cmpl	$56, -28(%rbp)
	jg	.L12
	.loc 1 75 23
	movl	-28(%rbp), %eax
	subl	$48, %eax
	.loc 1 75 20
	movslq	%eax, %rdx
	movl	-80(%rbp,%rdx,4), %edx
	.loc 1 75 13
	addl	$1, %edx
	cltq
	movl	%edx, -80(%rbp,%rax,4)
	jmp	.L11
.L12:
	.loc 1 76 19
	cmpl	$64, -28(%rbp)
	jle	.L14
	.loc 1 76 29 discriminator 1
	cmpl	$90, -28(%rbp)
	jg	.L14
	.loc 1 77 13
	addl	$1, -12(%rbp)
	jmp	.L11
.L14:
	.loc 1 78 19
	cmpl	$96, -28(%rbp)
	jle	.L15
	.loc 1 78 29 discriminator 1
	cmpl	$122, -28(%rbp)
	jg	.L15
	.loc 1 79 13
	addl	$1, -16(%rbp)
	jmp	.L11
.L15:
	.loc 1 80 19
	cmpl	$32, -28(%rbp)
	je	.L16
	.loc 1 80 29 discriminator 1
	cmpl	$10, -28(%rbp)
	je	.L16
	.loc 1 80 42 discriminator 2
	cmpl	$9, -28(%rbp)
	jne	.L17
.L16:
	.loc 1 81 13
	addl	$1, -20(%rbp)
	jmp	.L11
.L17:
	.loc 1 83 13
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	.loc 1 84 13
	addl	$1, -8(%rbp)
.L11:
	.loc 1 72 17
	call	getchar
	movl	%eax, -28(%rbp)
	.loc 1 72 28
	cmpl	$-1, -28(%rbp)
	jne	.L18
	.loc 1 88 5
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
.LBB2:
	.loc 1 89 14
	movl	$0, -24(%rbp)
	.loc 1 89 5
	jmp	.L19
.L20:
	.loc 1 90 43 discriminator 3
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 90 9 discriminator 3
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	.loc 1 89 30 discriminator 3
	addl	$1, -24(%rbp)
.L19:
	.loc 1 89 23 discriminator 1
	cmpl	$9, -24(%rbp)
	jle	.L20
.LBE2:
	.loc 1 93 5
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	.loc 1 94 5
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	.loc 1 95 5
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	.loc 1 96 5
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	.loc 1 97 12
	movl	$0, %eax
	.loc 1 98 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	plrt_s_lc_pipe, .-plrt_s_lc_pipe
.Letext0:
	.file 2 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1d6
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x6
	.long	.LASF24
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x8
	.long	0x66
	.uleb128 0x9
	.byte	0x8
	.long	0x6d
	.uleb128 0x1
	.byte	0x4
	.byte	0x4
	.long	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.long	.LASF11
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.long	.LASF14
	.uleb128 0x4
	.long	.LASF15
	.value	0x164
	.long	0x58
	.long	0xb1
	.uleb128 0x5
	.long	0x72
	.uleb128 0xa
	.byte	0
	.uleb128 0xb
	.long	.LASF25
	.byte	0x2
	.value	0x208
	.byte	0xc
	.long	0x58
	.uleb128 0x4
	.long	.LASF16
	.value	0x22c
	.long	0x58
	.long	0xd3
	.uleb128 0x5
	.long	0x58
	.byte	0
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.long	0x58
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x175
	.uleb128 0x3
	.string	"c"
	.byte	0x40
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.long	.LASF17
	.byte	0x41
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.long	.LASF18
	.byte	0x42
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.long	.LASF19
	.byte	0x43
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.long	.LASF20
	.byte	0x44
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.long	.LASF21
	.byte	0x45
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.long	.LASF22
	.byte	0x47
	.byte	0x9
	.long	0x175
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xd
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x3
	.string	"i"
	.byte	0x59
	.byte	0xe
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x58
	.long	0x185
	.uleb128 0xf
	.long	0x43
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.long	.LASF27
	.byte	0x1
	.byte	0x25
	.byte	0xb
	.long	0x58
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.string	"IN"
	.byte	0x28
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"OUT"
	.byte	0x29
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.string	"c"
	.byte	0x2b
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.long	.LASF23
	.byte	0x2b
	.byte	0xc
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
.LASF27:
	.string	"wal_lc_pipe"
.LASF23:
	.string	"state"
.LASF19:
	.string	"b_alfabet"
.LASF18:
	.string	"rest_chars"
.LASF10:
	.string	"float"
.LASF13:
	.string	"long long unsigned int"
.LASF2:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF17:
	.string	"all_chars"
.LASF16:
	.string	"putchar"
.LASF11:
	.string	"double"
.LASF26:
	.string	"plrt_s_lc_pipe"
.LASF4:
	.string	"unsigned int"
.LASF22:
	.string	"digit"
.LASF9:
	.string	"char"
.LASF25:
	.string	"getchar"
.LASF20:
	.string	"s_alfabet"
.LASF14:
	.string	"long double"
.LASF12:
	.string	"long long int"
.LASF15:
	.string	"printf"
.LASF7:
	.string	"short int"
.LASF24:
	.string	"GNU C17 12.2.1 20220819 (Red Hat 12.2.1-1) -mtune=generic -march=x86-64 -g"
.LASF8:
	.string	"long int"
.LASF21:
	.string	"spaces"
.LASF6:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"lib/lc_pipe.c"
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs"
	.ident	"GCC: (GNU) 12.2.1 20220819 (Red Hat 12.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
