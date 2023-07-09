	.file	"libgen_1.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs" "lib/libgen_1.c"
	.globl	basename_c_free
	.type	basename_c_free, @function
basename_c_free:
.LFB6:
	.file 1 "lib/libgen_1.c"
	.loc 1 39 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 40 22
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strdup
	movq	%rax, -8(%rbp)
	.loc 1 42 20
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	basename
	cltq
	.loc 1 43 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	basename_c_free, .-basename_c_free
	.globl	dirname_c_free
	.type	dirname_c_free, @function
dirname_c_free:
.LFB7:
	.loc 1 46 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 47 22
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strdup
	movq	%rax, -8(%rbp)
	.loc 1 49 20
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	dirname
	cltq
	.loc 1 50 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	dirname_c_free, .-dirname_c_free
.Letext0:
	.file 2 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x162
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x8
	.long	.LASF19
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
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.long	0x6b
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0xa
	.long	0x6b
	.uleb128 0x3
	.long	0x72
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
	.byte	0x31
	.long	0x58
	.long	0xaf
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF16
	.byte	0x2a
	.long	0x58
	.long	0xbf
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.long	.LASF20
	.byte	0x2
	.byte	0xbb
	.byte	0xe
	.long	0x66
	.long	0xd5
	.uleb128 0xc
	.long	0x77
	.byte	0
	.uleb128 0xd
	.long	.LASF21
	.byte	0x1
	.byte	0x2d
	.byte	0xd
	.long	0x66
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x11f
	.uleb128 0x5
	.long	.LASF17
	.byte	0x2d
	.byte	0x22
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF18
	.byte	0x2f
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF15
	.byte	0x31
	.long	0x58
	.uleb128 0x2
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF22
	.byte	0x1
	.byte	0x26
	.byte	0xd
	.long	0x66
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.long	.LASF17
	.byte	0x26
	.byte	0x23
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF18
	.byte	0x28
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF16
	.byte	0x2a
	.long	0x58
	.uleb128 0x2
	.byte	0
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
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
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
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
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
.LASF21:
	.string	"dirname_c_free"
.LASF18:
	.string	"dup_path"
.LASF4:
	.string	"unsigned int"
.LASF17:
	.string	"path"
.LASF5:
	.string	"long unsigned int"
.LASF12:
	.string	"long long int"
.LASF13:
	.string	"long long unsigned int"
.LASF19:
	.string	"GNU C17 12.2.1 20220819 (Red Hat 12.2.1-1) -mtune=generic -march=x86-64 -g"
.LASF2:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF15:
	.string	"dirname"
.LASF11:
	.string	"double"
.LASF8:
	.string	"long int"
.LASF3:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF14:
	.string	"long double"
.LASF10:
	.string	"float"
.LASF22:
	.string	"basename_c_free"
.LASF7:
	.string	"short int"
.LASF16:
	.string	"basename"
.LASF20:
	.string	"strdup"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs"
.LASF0:
	.string	"lib/libgen_1.c"
	.ident	"GCC: (GNU) 12.2.1 20220819 (Red Hat 12.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
