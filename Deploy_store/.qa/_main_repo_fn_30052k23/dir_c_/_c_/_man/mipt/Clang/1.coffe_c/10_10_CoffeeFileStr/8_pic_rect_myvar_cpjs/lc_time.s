	.file	"lc_time.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs" "lib/lc_time.c"
	.globl	usleep_lc_time
	.type	usleep_lc_time, @function
usleep_lc_time:
.LFB6:
	.file 1 "lib/lc_time.c"
	.loc 1 88 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 90 15
	movq	$0, -16(%rbp)
	.loc 1 91 16
	movl	-20(%rbp), %eax
	movq	%rax, -8(%rbp)
	.loc 1 92 5
	leaq	-16(%rbp), %rax
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	select
	.loc 1 93 12
	movl	$0, %eax
	.loc 1 94 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	usleep_lc_time, .-usleep_lc_time
.Letext0:
	.file 2 "/usr/include/bits/types.h"
	.file 3 "/usr/include/bits/types/struct_timeval.h"
	.file 4 "/usr/include/sys/select.h"
	.file 5 "/usr/include/unistd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1b4
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x7
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
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF9
	.byte	0x2
	.byte	0xa0
	.byte	0x1a
	.long	0x5f
	.uleb128 0x2
	.long	.LASF10
	.byte	0x2
	.byte	0xa1
	.byte	0x1e
	.long	0x3c
	.uleb128 0x2
	.long	.LASF11
	.byte	0x2
	.byte	0xa2
	.byte	0x1f
	.long	0x5f
	.uleb128 0x9
	.byte	0x8
	.uleb128 0x4
	.long	0x8a
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0xa
	.long	0x91
	.uleb128 0x5
	.long	0x98
	.uleb128 0x4
	.long	0x9d
	.uleb128 0x1
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.long	.LASF14
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.long	.LASF17
	.uleb128 0xb
	.long	.LASF25
	.byte	0x10
	.byte	0x3
	.byte	0x8
	.byte	0x8
	.long	0xf2
	.uleb128 0x6
	.long	.LASF18
	.byte	0x3
	.byte	0xe
	.byte	0xc
	.long	0x66
	.byte	0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x3
	.byte	0xf
	.byte	0x11
	.long	0x7e
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF20
	.byte	0x4
	.byte	0x31
	.byte	0x12
	.long	0x5f
	.uleb128 0xc
	.byte	0x80
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x115
	.uleb128 0x6
	.long	.LASF21
	.byte	0x4
	.byte	0x43
	.byte	0xf
	.long	0x115
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xf2
	.long	0x125
	.uleb128 0xe
	.long	0x43
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.long	.LASF22
	.byte	0x4
	.byte	0x46
	.byte	0x5
	.long	0xfe
	.uleb128 0x2
	.long	.LASF23
	.byte	0x5
	.byte	0xff
	.byte	0x16
	.long	0x72
	.uleb128 0xf
	.long	.LASF26
	.byte	0x4
	.byte	0x66
	.byte	0xc
	.long	0x58
	.long	0x167
	.uleb128 0x3
	.long	0x58
	.uleb128 0x3
	.long	0x16c
	.uleb128 0x3
	.long	0x16c
	.uleb128 0x3
	.long	0x16c
	.uleb128 0x3
	.long	0x176
	.byte	0
	.uleb128 0x5
	.long	0x125
	.uleb128 0x4
	.long	0x167
	.uleb128 0x5
	.long	0xca
	.uleb128 0x4
	.long	0x171
	.uleb128 0x10
	.long	.LASF27
	.byte	0x1
	.byte	0x57
	.byte	0xb
	.long	0x58
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.long	.LASF28
	.byte	0x1
	.byte	0x57
	.byte	0x25
	.long	0x131
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"tv"
	.byte	0x1
	.byte	0x59
	.byte	0x14
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x11
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
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
.LASF15:
	.string	"long long int"
.LASF4:
	.string	"unsigned int"
.LASF18:
	.string	"tv_sec"
.LASF5:
	.string	"long unsigned int"
.LASF7:
	.string	"short int"
.LASF16:
	.string	"long long unsigned int"
.LASF2:
	.string	"unsigned char"
.LASF21:
	.string	"__fds_bits"
.LASF25:
	.string	"timeval"
.LASF14:
	.string	"double"
.LASF24:
	.string	"GNU C17 12.2.1 20220819 (Red Hat 12.2.1-1) -mtune=generic -march=x86-64 -g"
.LASF17:
	.string	"long double"
.LASF27:
	.string	"usleep_lc_time"
.LASF19:
	.string	"tv_usec"
.LASF9:
	.string	"__time_t"
.LASF22:
	.string	"fd_set"
.LASF3:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF8:
	.string	"long int"
.LASF13:
	.string	"float"
.LASF10:
	.string	"__useconds_t"
.LASF11:
	.string	"__suseconds_t"
.LASF26:
	.string	"select"
.LASF20:
	.string	"__fd_mask"
.LASF28:
	.string	"usec"
.LASF12:
	.string	"char"
.LASF23:
	.string	"useconds_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs"
.LASF0:
	.string	"lib/lc_time.c"
	.ident	"GCC: (GNU) 12.2.1 20220819 (Red Hat 12.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
