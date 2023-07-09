	.file	"main.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs" "main.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"char buf_out[wigth_pic] = {}; => buf_out:"
.LC1:
	.string	"main.c"
.LC2:
	.string	"r"
.LC3:
	.string	"pict"
.LC4:
	.string	"%s"
	.align 8
.LC5:
	.string	"fscanf(fdpic, \"%s\", buf_out) => buf_out:"
	.align 8
.LC6:
	.string	"curr_str = (char *)calloc(buf_len, sizeof(char)); => curr_str:"
	.align 8
.LC7:
	.string	"prio_str = (char *)calloc(buf_len, sizeof(char)); => prio_str:"
	.align 8
.LC8:
	.string	"memset(prio_str, '.', sizeof(char) * buf_len); => prio_str:"
.LC9:
	.string	"i: %d, count: %d\n"
	.align 8
.LC10:
	.string	"memcpy(prio_str, curr_str, buf_len); => prio_str:"
.LC11:
	.string	"count: %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.file 1 "main.c"
	.loc 1 127 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	.loc 1 130 9
	movl	$0, -4(%rbp)
	.loc 1 131 9
	movl	$0, -8(%rbp)
	.loc 1 132 10
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -71(%rbp)
	movq	$0, -63(%rbp)
	.loc 1 134 5
	leaq	-80(%rbp), %rax
	movl	$.LC0, %edx
	movl	$25, %esi
	movq	%rax, %rdi
	call	uns_ns_lc_str
	.loc 1 138 19
	subq	$8, %rsp
	pushq	$4
	movl	$2, %r9d
	movl	$2, %r8d
	movl	$138, %ecx
	movl	$.LC1, %edx
	movl	$.LC2, %esi
	movl	$.LC3, %edi
	call	fopen_c
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
	.loc 1 140 5
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_fscanf
	.loc 1 141 22
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	.loc 1 143 5
	leaq	-80(%rbp), %rax
	movl	$.LC5, %edx
	movl	$25, %esi
	movq	%rax, %rdi
	call	uns_ns_lc_str
	.loc 1 145 24
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	calloc
	movq	%rax, -40(%rbp)
	.loc 1 146 24
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	calloc
	movq	%rax, -48(%rbp)
	.loc 1 147 5
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	$.LC6, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	uns_ns_lc_str
	.loc 1 148 5
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	$.LC7, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	uns_ns_lc_str
	.loc 1 150 5
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	memset
	.loc 1 151 5
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	$.LC8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	uns_ns_lc_str
.L7:
	.loc 1 156 9
	movq	-32(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
.LBB2:
	.loc 1 159 18
	movl	$0, -12(%rbp)
	.loc 1 159 9
	jmp	.L2
.L6:
	.loc 1 163 25
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 163 16
	cmpb	$42, %al
	jne	.L3
	.loc 1 165 20
	cmpl	$0, -4(%rbp)
	jne	.L4
	.loc 1 165 44 discriminator 1
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 165 33 discriminator 1
	cmpb	$46, %al
	jne	.L4
	.loc 1 167 26
	addl	$1, -8(%rbp)
	.loc 1 168 21
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
.L4:
	.loc 1 170 24
	movl	$1, -4(%rbp)
	jmp	.L5
.L3:
	.loc 1 172 30
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 172 21
	cmpb	$46, %al
	jne	.L5
	.loc 1 174 24
	movl	$0, -4(%rbp)
.L5:
	.loc 1 159 39 discriminator 2
	addl	$1, -12(%rbp)
.L2:
	.loc 1 159 27 discriminator 1
	movl	-12(%rbp), %eax
	cltq
	cmpq	-32(%rbp), %rax
	jb	.L6
.LBE2:
	.loc 1 178 9
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	.loc 1 179 9
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	$.LC10, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	uns_ns_lc_str
	.loc 1 181 14
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_fscanf
	.loc 1 181 43
	cmpl	$-1, %eax
	jne	.L7
	.loc 1 183 5
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC11, %edi
	movl	$0, %eax
	call	printf
	.loc 1 185 5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free
	.loc 1 186 5
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free
	.loc 1 187 5
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free
	.loc 1 189 12
	movl	$0, %eax
	.loc 1 190 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/include/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-redhat-linux/12/include/stddef.h"
	.file 4 "/usr/include/bits/types/struct_FILE.h"
	.file 5 "/usr/include/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/string.h"
	.file 8 "/usr/include/stdlib.h"
	.file 9 "lib/io_1.h"
	.file 10 "lib/lc_str.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4a9
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x10
	.long	.LASF68
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
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xd
	.long	0x58
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x6
	.long	.LASF9
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x64
	.uleb128 0x6
	.long	.LASF10
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x64
	.uleb128 0x12
	.byte	0x8
	.uleb128 0x8
	.long	0x83
	.uleb128 0x4
	.long	0x8f
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0xd
	.long	0x8f
	.uleb128 0x4
	.long	0x96
	.uleb128 0x8
	.long	0x9b
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x6
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
	.uleb128 0x13
	.long	.LASF69
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x23e
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
	.long	0x8a
	.byte	0x8
	.uleb128 0x1
	.long	.LASF20
	.byte	0x37
	.byte	0x9
	.long	0x8a
	.byte	0x10
	.uleb128 0x1
	.long	.LASF21
	.byte	0x38
	.byte	0x9
	.long	0x8a
	.byte	0x18
	.uleb128 0x1
	.long	.LASF22
	.byte	0x39
	.byte	0x9
	.long	0x8a
	.byte	0x20
	.uleb128 0x1
	.long	.LASF23
	.byte	0x3a
	.byte	0x9
	.long	0x8a
	.byte	0x28
	.uleb128 0x1
	.long	.LASF24
	.byte	0x3b
	.byte	0x9
	.long	0x8a
	.byte	0x30
	.uleb128 0x1
	.long	.LASF25
	.byte	0x3c
	.byte	0x9
	.long	0x8a
	.byte	0x38
	.uleb128 0x1
	.long	.LASF26
	.byte	0x3d
	.byte	0x9
	.long	0x8a
	.byte	0x40
	.uleb128 0x1
	.long	.LASF27
	.byte	0x40
	.byte	0x9
	.long	0x8a
	.byte	0x48
	.uleb128 0x1
	.long	.LASF28
	.byte	0x41
	.byte	0x9
	.long	0x8a
	.byte	0x50
	.uleb128 0x1
	.long	.LASF29
	.byte	0x42
	.byte	0x9
	.long	0x8a
	.byte	0x58
	.uleb128 0x1
	.long	.LASF30
	.byte	0x44
	.byte	0x16
	.long	0x257
	.byte	0x60
	.uleb128 0x1
	.long	.LASF31
	.byte	0x46
	.byte	0x14
	.long	0x25c
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
	.long	0x261
	.byte	0x83
	.uleb128 0x1
	.long	.LASF38
	.byte	0x51
	.byte	0xf
	.long	0x271
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
	.long	0x27b
	.byte	0x98
	.uleb128 0x1
	.long	.LASF41
	.byte	0x5c
	.byte	0x19
	.long	0x285
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF42
	.byte	0x5d
	.byte	0x14
	.long	0x25c
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
	.long	0xb3
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
	.long	0x28a
	.byte	0xc4
	.byte	0
	.uleb128 0x6
	.long	.LASF47
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xd4
	.uleb128 0x14
	.long	.LASF70
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x9
	.long	.LASF48
	.uleb128 0x4
	.long	0x252
	.uleb128 0x4
	.long	0xd4
	.uleb128 0xe
	.long	0x8f
	.long	0x271
	.uleb128 0xa
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x24a
	.uleb128 0x9
	.long	.LASF49
	.uleb128 0x4
	.long	0x276
	.uleb128 0x9
	.long	.LASF50
	.uleb128 0x4
	.long	0x280
	.uleb128 0xe
	.long	0x8f
	.long	0x29a
	.uleb128 0xa
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	0x23e
	.uleb128 0x8
	.long	0x29a
	.uleb128 0x4
	.long	0x2a9
	.uleb128 0x15
	.uleb128 0x4
	.long	0x8a
	.uleb128 0x16
	.long	.LASF71
	.byte	0x8
	.value	0x22b
	.byte	0xd
	.long	0x2c2
	.uleb128 0x2
	.long	0x83
	.byte	0
	.uleb128 0xb
	.long	.LASF51
	.byte	0x6
	.value	0x164
	.byte	0xc
	.long	0x58
	.long	0x2da
	.uleb128 0x2
	.long	0x9b
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.long	.LASF52
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.long	0x83
	.long	0x2fa
	.uleb128 0x2
	.long	0x83
	.uleb128 0x2
	.long	0x2a4
	.uleb128 0x2
	.long	0xb3
	.byte	0
	.uleb128 0x7
	.long	.LASF53
	.byte	0x7
	.byte	0x3d
	.byte	0xe
	.long	0x83
	.long	0x31a
	.uleb128 0x2
	.long	0x83
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0xb3
	.byte	0
	.uleb128 0xb
	.long	.LASF54
	.byte	0x8
	.value	0x21f
	.byte	0xe
	.long	0x83
	.long	0x336
	.uleb128 0x2
	.long	0xb3
	.uleb128 0x2
	.long	0xb3
	.byte	0
	.uleb128 0xb
	.long	.LASF55
	.byte	0x7
	.value	0x197
	.byte	0xf
	.long	0xb3
	.long	0x34d
	.uleb128 0x2
	.long	0x9b
	.byte	0
	.uleb128 0x17
	.long	.LASF72
	.byte	0x6
	.value	0x1b2
	.byte	0xc
	.long	.LASF73
	.long	0x58
	.long	0x36e
	.uleb128 0x2
	.long	0x29f
	.uleb128 0x2
	.long	0xa0
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.long	.LASF56
	.byte	0x9
	.byte	0x16
	.byte	0x7
	.long	0x29a
	.long	0x3a2
	.uleb128 0x2
	.long	0x9b
	.uleb128 0x2
	.long	0x9b
	.uleb128 0x2
	.long	0x9b
	.uleb128 0x2
	.long	0x5f
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x58
	.byte	0
	.uleb128 0x7
	.long	.LASF57
	.byte	0xa
	.byte	0x9
	.byte	0x5
	.long	0x58
	.long	0x3c2
	.uleb128 0x2
	.long	0x8a
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x8a
	.byte	0
	.uleb128 0x18
	.long	.LASF74
	.byte	0x1
	.byte	0x7c
	.byte	0x5
	.long	0x58
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a0
	.uleb128 0xc
	.long	.LASF58
	.byte	0x7c
	.byte	0xe
	.long	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xc
	.long	.LASF59
	.byte	0x7d
	.byte	0x10
	.long	0x2aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xc
	.long	.LASF60
	.byte	0x7e
	.byte	0x11
	.long	0x2aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x5
	.long	.LASF61
	.byte	0x82
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.long	.LASF62
	.byte	0x83
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.long	.LASF63
	.byte	0x84
	.byte	0xa
	.long	0x4a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x5
	.long	.LASF64
	.byte	0x88
	.byte	0xb
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.long	.LASF65
	.byte	0x88
	.byte	0x16
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF75
	.byte	0x1
	.byte	0x88
	.byte	0x21
	.long	0x8a
	.uleb128 0x5
	.long	.LASF66
	.byte	0x8a
	.byte	0xb
	.long	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF67
	.byte	0x8d
	.byte	0xc
	.long	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x9f
	.byte	0x12
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x8f
	.uleb128 0xa
	.long	0x43
	.byte	0x18
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
.LASF26:
	.string	"_IO_buf_end"
.LASF34:
	.string	"_old_offset"
.LASF13:
	.string	"double"
.LASF60:
	.string	"envp"
.LASF56:
	.string	"fopen_c"
.LASF29:
	.string	"_IO_save_end"
.LASF7:
	.string	"short int"
.LASF14:
	.string	"size_t"
.LASF64:
	.string	"curr_str"
.LASF39:
	.string	"_offset"
.LASF74:
	.string	"main"
.LASF23:
	.string	"_IO_write_ptr"
.LASF18:
	.string	"_flags"
.LASF52:
	.string	"memcpy"
.LASF25:
	.string	"_IO_buf_base"
.LASF66:
	.string	"fdpic"
.LASF30:
	.string	"_markers"
.LASF20:
	.string	"_IO_read_end"
.LASF43:
	.string	"_freeres_buf"
.LASF73:
	.string	"__isoc99_fscanf"
.LASF71:
	.string	"free"
.LASF12:
	.string	"float"
.LASF15:
	.string	"long long int"
.LASF38:
	.string	"_lock"
.LASF8:
	.string	"long int"
.LASF51:
	.string	"printf"
.LASF57:
	.string	"uns_ns_lc_str"
.LASF35:
	.string	"_cur_column"
.LASF22:
	.string	"_IO_write_base"
.LASF59:
	.string	"argv"
.LASF69:
	.string	"_IO_FILE"
.LASF17:
	.string	"long double"
.LASF2:
	.string	"unsigned char"
.LASF61:
	.string	"before"
.LASF58:
	.string	"argc"
.LASF75:
	.string	"post_str"
.LASF6:
	.string	"signed char"
.LASF40:
	.string	"_codecvt"
.LASF16:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF48:
	.string	"_IO_marker"
.LASF37:
	.string	"_shortbuf"
.LASF31:
	.string	"_chain"
.LASF46:
	.string	"_unused2"
.LASF19:
	.string	"_IO_read_ptr"
.LASF3:
	.string	"short unsigned int"
.LASF63:
	.string	"buf_out"
.LASF11:
	.string	"char"
.LASF72:
	.string	"fscanf"
.LASF55:
	.string	"strlen"
.LASF41:
	.string	"_wide_data"
.LASF42:
	.string	"_freeres_list"
.LASF54:
	.string	"calloc"
.LASF67:
	.string	"buf_len"
.LASF44:
	.string	"__pad5"
.LASF49:
	.string	"_IO_codecvt"
.LASF5:
	.string	"long unsigned int"
.LASF24:
	.string	"_IO_write_end"
.LASF10:
	.string	"__off64_t"
.LASF32:
	.string	"_fileno"
.LASF9:
	.string	"__off_t"
.LASF62:
	.string	"count"
.LASF28:
	.string	"_IO_backup_base"
.LASF53:
	.string	"memset"
.LASF33:
	.string	"_flags2"
.LASF45:
	.string	"_mode"
.LASF21:
	.string	"_IO_read_base"
.LASF36:
	.string	"_vtable_offset"
.LASF50:
	.string	"_IO_wide_data"
.LASF27:
	.string	"_IO_save_base"
.LASF47:
	.string	"FILE"
.LASF65:
	.string	"prio_str"
.LASF68:
	.string	"GNU C17 12.2.1 20220819 (Red Hat 12.2.1-1) -mtune=generic -march=x86-64 -g"
.LASF70:
	.string	"_IO_lock_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs"
.LASF0:
	.string	"main.c"
	.ident	"GCC: (GNU) 12.2.1 20220819 (Red Hat 12.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
