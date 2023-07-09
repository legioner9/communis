	.file	"lc_2.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs" "lib/lc_2.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"failed in file %s at line # %d\n"
	.align 8
.LC1:
	.string	"from send_whilen_lc_2_\321\201 buffer = %s, socket = %d\n"
	.align 8
.LC2:
	.string	"length_pack > length_max , exit(1)"
	.text
	.globl	send_whilen_lc_2_с
	.type	send_whilen_lc_2_с, @function
send_whilen_lc_2_с:
.LFB6:
	.file 1 "lib/lc_2.c"
	.loc 1 65 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	.loc 1 66 23
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	.loc 1 66 38
	addl	$1, %eax
	.loc 1 66 9
	movl	%eax, -8(%rbp)
	.loc 1 67 21
	movl	-8(%rbp), %eax
	cltq
	.loc 1 67 8
	cmpq	%rax, -40(%rbp)
	jnb	.L2
	.loc 1 69 9
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 70 9
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 71 9
	movl	$.LC2, %edi
	call	puts
	.loc 1 72 9
	movl	$1, %edi
	call	exit
.L2:
	.loc 1 75 9
	movl	$0, -4(%rbp)
	.loc 1 77 11
	jmp	.L3
.L4:
.LBB2:
	.loc 1 79 20
	movl	-8(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movl	-52(%rbp), %r9d
	movq	-48(%rbp), %r8
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	subq	$8, %rsp
	movl	32(%rbp), %edi
	pushq	%rdi
	movl	24(%rbp), %edi
	pushq	%rdi
	movl	16(%rbp), %edi
	pushq	%rdi
	movl	%eax, %edi
	movl	$0, %eax
	call	send_с
	addq	$32, %rsp
	movl	%eax, -12(%rbp)
	.loc 1 80 11
	movl	-12(%rbp), %eax
	addl	%eax, -4(%rbp)
.L3:
.LBE2:
	.loc 1 77 14
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L4
	.loc 1 83 12
	movl	$0, %eax
	.loc 1 84 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	send_whilen_lc_2_с, .-send_whilen_lc_2_с
	.section	.rodata
.LC3:
	.string	"Connect closed"
	.text
	.globl	recv_whilen_lc_2_с
	.type	recv_whilen_lc_2_с, @function
recv_whilen_lc_2_с:
.LFB7:
	.loc 1 87 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	.loc 1 88 9
	movl	$0, -4(%rbp)
	.loc 1 90 11
	jmp	.L7
.L10:
.LBB3:
	.loc 1 92 21
	movl	-4(%rbp), %eax
	cltq
	movq	-40(%rbp), %rdx
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-52(%rbp), %r9d
	movq	-48(%rbp), %r8
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	subq	$8, %rsp
	movl	32(%rbp), %ecx
	pushq	%rcx
	movl	24(%rbp), %ecx
	pushq	%rcx
	movl	16(%rbp), %ecx
	pushq	%rcx
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	recv_с
	addq	$32, %rsp
	movl	%eax, -8(%rbp)
	.loc 1 93 12
	cmpl	$0, -8(%rbp)
	jne	.L8
	.loc 1 95 13
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	.loc 1 96 13
	jmp	.L9
.L8:
	.loc 1 100 15
	movl	-8(%rbp), %eax
	addl	%eax, -4(%rbp)
.L7:
.LBE3:
	.loc 1 90 14
	movl	-4(%rbp), %eax
	cltq
	cmpq	-40(%rbp), %rax
	jb	.L10
.L9:
	.loc 1 103 12
	movl	$0, %eax
	.loc 1 104 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	recv_whilen_lc_2_с, .-recv_whilen_lc_2_с
.Letext0:
	.file 2 "/usr/include/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-redhat-linux/12/include/stddef.h"
	.file 4 "/usr/include/bits/types/struct_FILE.h"
	.file 5 "/usr/include/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/stdlib.h"
	.file 8 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4ed
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.long	0x58
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x7
	.long	.LASF9
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x64
	.uleb128 0x7
	.long	.LASF10
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x64
	.uleb128 0x15
	.byte	0x8
	.uleb128 0x4
	.long	0x8a
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0xb
	.long	0x8a
	.uleb128 0x4
	.long	0x91
	.uleb128 0xc
	.long	0x96
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x7
	.long	.LASF14
	.byte	0x3
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF17
	.uleb128 0x16
	.long	.LASF70
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x239
	.uleb128 0x1
	.long	.LASF18
	.byte	0x33
	.byte	0x7
	.long	0x58
	.byte	0
	.uleb128 0x1
	.long	.LASF19
	.byte	0x36
	.byte	0x9
	.long	0x85
	.byte	0x8
	.uleb128 0x1
	.long	.LASF20
	.byte	0x37
	.byte	0x9
	.long	0x85
	.byte	0x10
	.uleb128 0x1
	.long	.LASF21
	.byte	0x38
	.byte	0x9
	.long	0x85
	.byte	0x18
	.uleb128 0x1
	.long	.LASF22
	.byte	0x39
	.byte	0x9
	.long	0x85
	.byte	0x20
	.uleb128 0x1
	.long	.LASF23
	.byte	0x3a
	.byte	0x9
	.long	0x85
	.byte	0x28
	.uleb128 0x1
	.long	.LASF24
	.byte	0x3b
	.byte	0x9
	.long	0x85
	.byte	0x30
	.uleb128 0x1
	.long	.LASF25
	.byte	0x3c
	.byte	0x9
	.long	0x85
	.byte	0x38
	.uleb128 0x1
	.long	.LASF26
	.byte	0x3d
	.byte	0x9
	.long	0x85
	.byte	0x40
	.uleb128 0x1
	.long	.LASF27
	.byte	0x40
	.byte	0x9
	.long	0x85
	.byte	0x48
	.uleb128 0x1
	.long	.LASF28
	.byte	0x41
	.byte	0x9
	.long	0x85
	.byte	0x50
	.uleb128 0x1
	.long	.LASF29
	.byte	0x42
	.byte	0x9
	.long	0x85
	.byte	0x58
	.uleb128 0x1
	.long	.LASF30
	.byte	0x44
	.byte	0x16
	.long	0x252
	.byte	0x60
	.uleb128 0x1
	.long	.LASF31
	.byte	0x46
	.byte	0x14
	.long	0x257
	.byte	0x68
	.uleb128 0x1
	.long	.LASF32
	.byte	0x48
	.byte	0x7
	.long	0x58
	.byte	0x70
	.uleb128 0x1
	.long	.LASF33
	.byte	0x49
	.byte	0x7
	.long	0x58
	.byte	0x74
	.uleb128 0x1
	.long	.LASF34
	.byte	0x4a
	.byte	0xb
	.long	0x6b
	.byte	0x78
	.uleb128 0x1
	.long	.LASF35
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x1
	.long	.LASF36
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x1
	.long	.LASF37
	.byte	0x4f
	.byte	0x8
	.long	0x25c
	.byte	0x83
	.uleb128 0x1
	.long	.LASF38
	.byte	0x51
	.byte	0xf
	.long	0x26c
	.byte	0x88
	.uleb128 0x1
	.long	.LASF39
	.byte	0x59
	.byte	0xd
	.long	0x77
	.byte	0x90
	.uleb128 0x1
	.long	.LASF40
	.byte	0x5b
	.byte	0x17
	.long	0x276
	.byte	0x98
	.uleb128 0x1
	.long	.LASF41
	.byte	0x5c
	.byte	0x19
	.long	0x280
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF42
	.byte	0x5d
	.byte	0x14
	.long	0x257
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF43
	.byte	0x5e
	.byte	0x9
	.long	0x83
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF44
	.byte	0x5f
	.byte	0xa
	.long	0xae
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF45
	.byte	0x60
	.byte	0x7
	.long	0x58
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF46
	.byte	0x62
	.byte	0x8
	.long	0x285
	.byte	0xc4
	.byte	0
	.uleb128 0x7
	.long	.LASF47
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xcf
	.uleb128 0x17
	.long	.LASF71
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x8
	.long	.LASF48
	.uleb128 0x4
	.long	0x24d
	.uleb128 0x4
	.long	0xcf
	.uleb128 0xd
	.long	0x8a
	.long	0x26c
	.uleb128 0xe
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x245
	.uleb128 0x8
	.long	.LASF49
	.uleb128 0x4
	.long	0x271
	.uleb128 0x8
	.long	.LASF50
	.uleb128 0x4
	.long	0x27b
	.uleb128 0xd
	.long	0x8a
	.long	0x295
	.uleb128 0xe
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	0x239
	.uleb128 0xc
	.long	0x295
	.uleb128 0x18
	.long	.LASF72
	.byte	0x6
	.byte	0x91
	.byte	0xe
	.long	0x295
	.uleb128 0x4
	.long	0x2b0
	.uleb128 0x19
	.uleb128 0x9
	.long	.LASF53
	.byte	0x6
	.value	0x164
	.byte	0xc
	.long	0x58
	.long	0x2c9
	.uleb128 0x6
	.long	0x96
	.uleb128 0x5
	.byte	0
	.uleb128 0xf
	.long	.LASF51
	.byte	0x5c
	.byte	0x15
	.long	0x58
	.long	0x2da
	.uleb128 0x5
	.byte	0
	.uleb128 0xf
	.long	.LASF52
	.byte	0x4f
	.byte	0x14
	.long	0x58
	.long	0x2eb
	.uleb128 0x5
	.byte	0
	.uleb128 0x1a
	.long	.LASF54
	.byte	0x7
	.value	0x270
	.byte	0xd
	.long	0x2fe
	.uleb128 0x6
	.long	0x58
	.byte	0
	.uleb128 0x9
	.long	.LASF55
	.byte	0x6
	.value	0x15e
	.byte	0xc
	.long	0x58
	.long	0x31b
	.uleb128 0x6
	.long	0x29a
	.uleb128 0x6
	.long	0x9b
	.uleb128 0x5
	.byte	0
	.uleb128 0x9
	.long	.LASF56
	.byte	0x8
	.value	0x197
	.byte	0xf
	.long	0xae
	.long	0x332
	.uleb128 0x6
	.long	0x96
	.byte	0
	.uleb128 0x1b
	.long	.LASF73
	.byte	0x1
	.byte	0x56
	.byte	0xb
	.long	0x58
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x40c
	.uleb128 0x2
	.long	.LASF57
	.byte	0x56
	.byte	0x23
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.long	.LASF58
	.byte	0x56
	.byte	0x37
	.long	0x2ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF59
	.byte	0x56
	.byte	0x46
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF60
	.byte	0x56
	.byte	0x57
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF61
	.byte	0x56
	.byte	0x6a
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF62
	.byte	0x56
	.byte	0x7a
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.long	.LASF63
	.byte	0x56
	.byte	0x84
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x56
	.byte	0x90
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2
	.long	.LASF65
	.byte	0x56
	.byte	0x9c
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.string	"n"
	.byte	0x58
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0xa
	.long	.LASF66
	.byte	0x5c
	.byte	0xd
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.long	.LASF51
	.byte	0x5c
	.byte	0x15
	.long	0x58
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF74
	.byte	0x1
	.byte	0x40
	.byte	0xb
	.long	0x58
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF57
	.byte	0x40
	.byte	0x23
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.long	.LASF58
	.byte	0x40
	.byte	0x37
	.long	0x2ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF67
	.byte	0x40
	.byte	0x46
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF60
	.byte	0x40
	.byte	0x56
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF61
	.byte	0x40
	.byte	0x69
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF62
	.byte	0x40
	.byte	0x79
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.long	.LASF63
	.byte	0x40
	.byte	0x83
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x40
	.byte	0x8f
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2
	.long	.LASF65
	.byte	0x40
	.byte	0x9b
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xa
	.long	.LASF59
	.byte	0x42
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"n"
	.byte	0x4b
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xa
	.long	.LASF68
	.byte	0x4f
	.byte	0xd
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.long	.LASF52
	.byte	0x4f
	.byte	0x14
	.long	0x58
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
.LASF34:
	.string	"_old_offset"
.LASF29:
	.string	"_IO_save_end"
.LASF24:
	.string	"_IO_write_end"
.LASF7:
	.string	"short int"
.LASF14:
	.string	"size_t"
.LASF71:
	.string	"_IO_lock_t"
.LASF39:
	.string	"_offset"
.LASF42:
	.string	"_freeres_list"
.LASF66:
	.string	"recvd"
.LASF23:
	.string	"_IO_write_ptr"
.LASF18:
	.string	"_flags"
.LASF25:
	.string	"_IO_buf_base"
.LASF61:
	.string	"file"
.LASF30:
	.string	"_markers"
.LASF20:
	.string	"_IO_read_end"
.LASF43:
	.string	"_freeres_buf"
.LASF62:
	.string	"line"
.LASF74:
	.string	"send_whilen_lc_2_\321\201"
.LASF73:
	.string	"recv_whilen_lc_2_\321\201"
.LASF12:
	.string	"float"
.LASF59:
	.string	"length_pack"
.LASF72:
	.string	"stderr"
.LASF15:
	.string	"long long int"
.LASF38:
	.string	"_lock"
.LASF8:
	.string	"long int"
.LASF63:
	.string	"st__mo"
.LASF57:
	.string	"socket"
.LASF53:
	.string	"printf"
.LASF35:
	.string	"_cur_column"
.LASF55:
	.string	"fprintf"
.LASF54:
	.string	"exit"
.LASF70:
	.string	"_IO_FILE"
.LASF17:
	.string	"long double"
.LASF2:
	.string	"unsigned char"
.LASF52:
	.string	"send_\321\201"
.LASF6:
	.string	"signed char"
.LASF60:
	.string	"flags"
.LASF16:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF48:
	.string	"_IO_marker"
.LASF37:
	.string	"_shortbuf"
.LASF22:
	.string	"_IO_write_base"
.LASF46:
	.string	"_unused2"
.LASF19:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_IO_buf_end"
.LASF64:
	.string	"st__if"
.LASF11:
	.string	"char"
.LASF56:
	.string	"strlen"
.LASF41:
	.string	"_wide_data"
.LASF65:
	.string	"st__re"
.LASF44:
	.string	"__pad5"
.LASF58:
	.string	"buffer"
.LASF3:
	.string	"short unsigned int"
.LASF68:
	.string	"sent"
.LASF5:
	.string	"long unsigned int"
.LASF13:
	.string	"double"
.LASF10:
	.string	"__off64_t"
.LASF51:
	.string	"recv_\321\201"
.LASF9:
	.string	"__off_t"
.LASF31:
	.string	"_chain"
.LASF50:
	.string	"_IO_wide_data"
.LASF28:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_flags2"
.LASF45:
	.string	"_mode"
.LASF21:
	.string	"_IO_read_base"
.LASF36:
	.string	"_vtable_offset"
.LASF40:
	.string	"_codecvt"
.LASF67:
	.string	"length_max"
.LASF27:
	.string	"_IO_save_base"
.LASF32:
	.string	"_fileno"
.LASF47:
	.string	"FILE"
.LASF69:
	.string	"GNU C17 12.2.1 20220819 (Red Hat 12.2.1-1) -mtune=generic -march=x86-64 -g"
.LASF49:
	.string	"_IO_codecvt"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs"
.LASF0:
	.string	"lib/lc_2.c"
	.ident	"GCC: (GNU) 12.2.1 20220819 (Red Hat 12.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
