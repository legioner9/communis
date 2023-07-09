	.file	"lc_1.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_v.cplus/17_stdio_h/1_functions/1_clearerr/clearerr_cpjs" "lib/lc_1.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"alloc npt FAIL's"
	.text
	.globl	npt_lc_1_IntPt
	.type	npt_lc_1_IntPt, @function
npt_lc_1_IntPt:
.LVL0:
.LFB6:
	.file 1 "lib/lc_1.c"
	.loc 1 22 1 view -0
	.cfi_startproc
	.loc 1 23 5 view .LVU1
	.loc 1 23 8 is_stmt 0 view .LVU2
	testq	%rdi, %rdi
	jne	.L2
	.loc 1 25 9 is_stmt 1 view .LVU3
	.loc 1 22 1 is_stmt 0 view .LVU4
	pushq	%rax
	.cfi_def_cfa_offset 16
	.loc 1 25 9 view .LVU5
	movl	$.LC0, %edi
.LVL1:
	.loc 1 25 9 view .LVU6
	call	puts
.LVL2:
	.loc 1 26 9 is_stmt 1 view .LVU7
	movl	$1, %edi
	call	exit
.LVL3:
.L2:
	.cfi_def_cfa_offset 8
	.loc 1 28 1 is_stmt 0 view .LVU8
	ret
	.cfi_endproc
.LFE6:
	.size	npt_lc_1_IntPt, .-npt_lc_1_IntPt
	.section	.rodata.str1.1
.LC1:
	.string	"alloc ndpt FAIL's"
	.text
	.globl	ndpt_lc_1_IntPt
	.type	ndpt_lc_1_IntPt, @function
ndpt_lc_1_IntPt:
.LVL4:
.LFB7:
	.loc 1 31 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 32 5 view .LVU10
	.loc 1 32 8 is_stmt 0 view .LVU11
	testq	%rdi, %rdi
	jne	.L8
	.loc 1 34 9 is_stmt 1 view .LVU12
	.loc 1 31 1 is_stmt 0 view .LVU13
	pushq	%rax
	.cfi_def_cfa_offset 16
	.loc 1 34 9 view .LVU14
	movl	$.LC1, %edi
.LVL5:
	.loc 1 34 9 view .LVU15
	call	puts
.LVL6:
	.loc 1 35 9 is_stmt 1 view .LVU16
	movl	$1, %edi
	call	exit
.LVL7:
.L8:
	.cfi_def_cfa_offset 8
	.loc 1 37 1 is_stmt 0 view .LVU17
	ret
	.cfi_endproc
.LFE7:
	.size	ndpt_lc_1_IntPt, .-ndpt_lc_1_IntPt
	.globl	_tmpp
	.type	_tmpp, @function
_tmpp:
.LVL8:
.LFB8:
	.loc 1 39 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 40 1 view .LVU19
	ret
	.cfi_endproc
.LFE8:
	.size	_tmpp, .-_tmpp
.Letext0:
	.file 2 "/usr/include/stdlib.h"
	.file 3 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x197
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x1
	.byte	0x2
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
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0xa
	.long	.LASF16
	.byte	0x2
	.value	0x270
	.byte	0xd
	.long	0x8e
	.uleb128 0xb
	.long	0x58
	.byte	0
	.uleb128 0x3
	.long	.LASF12
	.byte	0x26
	.long	0x58
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xbb
	.uleb128 0xc
	.string	"t"
	.byte	0x1
	.byte	0x26
	.byte	0x15
	.long	0x58
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1e
	.long	0x58
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x120
	.uleb128 0x4
	.string	"pt"
	.byte	0x1e
	.byte	0x21
	.long	0x120
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x5
	.quad	.LVL6
	.long	0x18f
	.long	0x10c
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.uleb128 0x6
	.quad	.LVL7
	.long	0x7b
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x125
	.uleb128 0x7
	.long	0x58
	.uleb128 0x3
	.long	.LASF14
	.byte	0x15
	.long	0x58
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x18f
	.uleb128 0x4
	.string	"pt"
	.byte	0x15
	.byte	0x1f
	.long	0x125
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x5
	.quad	.LVL2
	.long	0x18f
	.long	0x17b
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.uleb128 0x6
	.quad	.LVL3
	.long	0x7b
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.long	.LASF18
	.byte	0x3
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
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
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS1:
	.uleb128 0
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LFE7-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LFE6-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.Ldebug_loc3:
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
.LASF10:
	.string	"long long int"
.LASF17:
	.string	"puts"
.LASF13:
	.string	"ndpt_lc_1_IntPt"
.LASF18:
	.string	"__builtin_puts"
.LASF2:
	.string	"long unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF14:
	.string	"npt_lc_1_IntPt"
.LASF8:
	.string	"long int"
.LASF15:
	.string	"GNU C17 12.1.1 20220507 (Red Hat 12.1.1-1) -mtune=generic -march=x86-64 -g -ggdb -Os"
.LASF12:
	.string	"_tmpp"
.LASF5:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF16:
	.string	"exit"
.LASF7:
	.string	"short int"
.LASF3:
	.string	"unsigned int"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"lib/lc_1.c"
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_v.cplus/17_stdio_h/1_functions/1_clearerr/clearerr_cpjs"
	.ident	"GCC: (GNU) 12.1.1 20220507 (Red Hat 12.1.1-1)"
	.section	.note.GNU-stack,"",@progbits
