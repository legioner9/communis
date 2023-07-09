	.file	"lib_1.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_v.cplus/17_stdio_h/1_functions/1_clearerr/clearerr_cpjs" "lib/lib_1.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"failed in file %s at line # %d\n"
.LC1:
	.string	"from malloc_c size = %lu, errno = %d\n"
.LC2:
	.string	"exit(1) with"
	.text
	.globl	malloc_c
	.type	malloc_c, @function
malloc_c:
.LVL0:
.LFB6:
	.file 1 "lib/lib_1.c"
	.loc 1 27 1 view -0
	.cfi_startproc
	.loc 1 28 5 view .LVU1
	.loc 1 27 1 is_stmt 0 view .LVU2
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 27 1 view .LVU3
	movq	%rdi, %rbx
	.loc 1 28 17 view .LVU4
	call	malloc
.LVL1:
	.loc 1 29 5 is_stmt 1 view .LVU5
	.loc 1 29 8 is_stmt 0 view .LVU6
	testq	%rax, %rax
	jne	.L1
	.loc 1 32 9 is_stmt 1 view .LVU7
	movq	stderr(%rip), %rdi
	movl	%r12d, %ecx
	movq	%rbp, %rdx
	movl	$.LC0, %esi
	call	fprintf
.LVL2:
	.loc 1 33 9 view .LVU8
	.loc 1 33 73 is_stmt 0 view .LVU9
	call	__errno_location
.LVL3:
	.loc 1 33 9 view .LVU10
	movq	stderr(%rip), %rdi
	movq	%rbx, %rdx
	movl	$.LC1, %esi
	movl	(%rax), %ecx
	xorl	%eax, %eax
	call	fprintf
.LVL4:
	.loc 1 34 9 is_stmt 1 view .LVU11
	movl	$.LC2, %edi
	call	perror
.LVL5:
	.loc 1 35 9 view .LVU12
	movl	$1, %edi
	call	exit
.LVL6:
.L1:
	.loc 1 38 1 is_stmt 0 view .LVU13
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL7:
	.loc 1 38 1 view .LVU14
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL8:
	.loc 1 38 1 view .LVU15
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL9:
	.loc 1 38 1 view .LVU16
	ret
	.cfi_endproc
.LFE6:
	.size	malloc_c, .-malloc_c
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-redhat-linux/12/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/bits/types/struct_FILE.h"
	.file 5 "/usr/include/bits/types/FILE.h"
	.file 6 "/usr/include/stdlib.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x41c
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xf
	.long	.LASF57
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
	.uleb128 0x10
	.byte	0x8
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
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.long	0x66
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x6
	.long	.LASF10
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x72
	.uleb128 0x6
	.long	.LASF11
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x72
	.uleb128 0x3
	.long	0x96
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0xa
	.long	0x96
	.uleb128 0x12
	.long	.LASF58
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x20c
	.uleb128 0x1
	.long	.LASF13
	.byte	0x33
	.byte	0x7
	.long	0x66
	.byte	0
	.uleb128 0x1
	.long	.LASF14
	.byte	0x36
	.byte	0x9
	.long	0x91
	.byte	0x8
	.uleb128 0x1
	.long	.LASF15
	.byte	0x37
	.byte	0x9
	.long	0x91
	.byte	0x10
	.uleb128 0x1
	.long	.LASF16
	.byte	0x38
	.byte	0x9
	.long	0x91
	.byte	0x18
	.uleb128 0x1
	.long	.LASF17
	.byte	0x39
	.byte	0x9
	.long	0x91
	.byte	0x20
	.uleb128 0x1
	.long	.LASF18
	.byte	0x3a
	.byte	0x9
	.long	0x91
	.byte	0x28
	.uleb128 0x1
	.long	.LASF19
	.byte	0x3b
	.byte	0x9
	.long	0x91
	.byte	0x30
	.uleb128 0x1
	.long	.LASF20
	.byte	0x3c
	.byte	0x9
	.long	0x91
	.byte	0x38
	.uleb128 0x1
	.long	.LASF21
	.byte	0x3d
	.byte	0x9
	.long	0x91
	.byte	0x40
	.uleb128 0x1
	.long	.LASF22
	.byte	0x40
	.byte	0x9
	.long	0x91
	.byte	0x48
	.uleb128 0x1
	.long	.LASF23
	.byte	0x41
	.byte	0x9
	.long	0x91
	.byte	0x50
	.uleb128 0x1
	.long	.LASF24
	.byte	0x42
	.byte	0x9
	.long	0x91
	.byte	0x58
	.uleb128 0x1
	.long	.LASF25
	.byte	0x44
	.byte	0x16
	.long	0x225
	.byte	0x60
	.uleb128 0x1
	.long	.LASF26
	.byte	0x46
	.byte	0x14
	.long	0x22a
	.byte	0x68
	.uleb128 0x1
	.long	.LASF27
	.byte	0x48
	.byte	0x7
	.long	0x66
	.byte	0x70
	.uleb128 0x1
	.long	.LASF28
	.byte	0x49
	.byte	0x7
	.long	0x66
	.byte	0x74
	.uleb128 0x1
	.long	.LASF29
	.byte	0x4a
	.byte	0xb
	.long	0x79
	.byte	0x78
	.uleb128 0x1
	.long	.LASF30
	.byte	0x4d
	.byte	0x12
	.long	0x51
	.byte	0x80
	.uleb128 0x1
	.long	.LASF31
	.byte	0x4e
	.byte	0xf
	.long	0x58
	.byte	0x82
	.uleb128 0x1
	.long	.LASF32
	.byte	0x4f
	.byte	0x8
	.long	0x22f
	.byte	0x83
	.uleb128 0x1
	.long	.LASF33
	.byte	0x51
	.byte	0xf
	.long	0x23f
	.byte	0x88
	.uleb128 0x1
	.long	.LASF34
	.byte	0x59
	.byte	0xd
	.long	0x85
	.byte	0x90
	.uleb128 0x1
	.long	.LASF35
	.byte	0x5b
	.byte	0x17
	.long	0x249
	.byte	0x98
	.uleb128 0x1
	.long	.LASF36
	.byte	0x5c
	.byte	0x19
	.long	0x253
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF37
	.byte	0x5d
	.byte	0x14
	.long	0x22a
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF38
	.byte	0x5e
	.byte	0x9
	.long	0x48
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF39
	.byte	0x5f
	.byte	0xa
	.long	0x2e
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF40
	.byte	0x60
	.byte	0x7
	.long	0x66
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF41
	.byte	0x62
	.byte	0x8
	.long	0x258
	.byte	0xc4
	.byte	0
	.uleb128 0x6
	.long	.LASF42
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xa2
	.uleb128 0x13
	.long	.LASF59
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x8
	.long	.LASF43
	.uleb128 0x3
	.long	0x220
	.uleb128 0x3
	.long	0xa2
	.uleb128 0xb
	.long	0x96
	.long	0x23f
	.uleb128 0xc
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x218
	.uleb128 0x8
	.long	.LASF44
	.uleb128 0x3
	.long	0x244
	.uleb128 0x8
	.long	.LASF45
	.uleb128 0x3
	.long	0x24e
	.uleb128 0xb
	.long	0x96
	.long	0x268
	.uleb128 0xc
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.long	0x20c
	.uleb128 0xd
	.long	0x268
	.uleb128 0x14
	.long	.LASF56
	.byte	0x7
	.byte	0x91
	.byte	0xe
	.long	0x268
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x3
	.long	0x9d
	.uleb128 0xd
	.long	0x28c
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF48
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF49
	.uleb128 0x15
	.long	.LASF50
	.byte	0x6
	.value	0x270
	.byte	0xd
	.long	0x2b7
	.uleb128 0x5
	.long	0x66
	.byte	0
	.uleb128 0x16
	.long	.LASF60
	.byte	0x7
	.value	0x324
	.byte	0xd
	.long	0x2ca
	.uleb128 0x5
	.long	0x28c
	.byte	0
	.uleb128 0x17
	.long	.LASF61
	.byte	0x8
	.byte	0x25
	.byte	0xd
	.long	0x2d6
	.uleb128 0x3
	.long	0x66
	.uleb128 0xe
	.long	.LASF51
	.byte	0x7
	.value	0x15e
	.byte	0xc
	.long	0x66
	.long	0x2f8
	.uleb128 0x5
	.long	0x26d
	.uleb128 0x5
	.long	0x291
	.uleb128 0x18
	.byte	0
	.uleb128 0xe
	.long	.LASF52
	.byte	0x6
	.value	0x21c
	.byte	0xe
	.long	0x48
	.long	0x30f
	.uleb128 0x5
	.long	0x2e
	.byte	0
	.uleb128 0x19
	.long	.LASF62
	.byte	0x1
	.byte	0x1a
	.byte	0xd
	.long	0x48
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF53
	.byte	0x1d
	.long	0x2e
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x9
	.long	.LASF54
	.byte	0x2f
	.long	0x28c
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x9
	.long	.LASF55
	.byte	0x3f
	.long	0x6d
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x1c
	.byte	0xb
	.long	0x91
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x7
	.quad	.LVL1
	.long	0x2f8
	.long	0x38f
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL2
	.long	0x2db
	.long	0x3ba
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL3
	.long	0x2ca
	.uleb128 0x7
	.quad	.LVL4
	.long	0x2db
	.long	0x3ec
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL5
	.long	0x2b7
	.long	0x40b
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0x1c
	.quad	.LVL6
	.long	0x2a4
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 26
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
.LVUS0:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LFE6-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LFE6-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LFE6-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 .LVU5
	.uleb128 .LVU8
	.uleb128 .LVU13
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL2-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LFE6-.Ltext0
	.uleb128 0x1
	.byte	0x50
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
.LASF11:
	.string	"__off64_t"
.LASF61:
	.string	"__errno_location"
.LASF15:
	.string	"_IO_read_end"
.LASF9:
	.string	"size_t"
.LASF58:
	.string	"_IO_FILE"
.LASF56:
	.string	"stderr"
.LASF22:
	.string	"_IO_save_base"
.LASF21:
	.string	"_IO_buf_end"
.LASF14:
	.string	"_IO_read_ptr"
.LASF39:
	.string	"__pad5"
.LASF3:
	.string	"unsigned int"
.LASF60:
	.string	"perror"
.LASF34:
	.string	"_offset"
.LASF23:
	.string	"_IO_backup_base"
.LASF40:
	.string	"_mode"
.LASF26:
	.string	"_chain"
.LASF48:
	.string	"float"
.LASF54:
	.string	"file"
.LASF50:
	.string	"exit"
.LASF55:
	.string	"line"
.LASF53:
	.string	"size"
.LASF38:
	.string	"_freeres_buf"
.LASF17:
	.string	"_IO_write_base"
.LASF2:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF24:
	.string	"_IO_save_end"
.LASF59:
	.string	"_IO_lock_t"
.LASF25:
	.string	"_markers"
.LASF49:
	.string	"double"
.LASF42:
	.string	"FILE"
.LASF28:
	.string	"_flags2"
.LASF29:
	.string	"_old_offset"
.LASF33:
	.string	"_lock"
.LASF4:
	.string	"unsigned char"
.LASF43:
	.string	"_IO_marker"
.LASF30:
	.string	"_cur_column"
.LASF47:
	.string	"long long unsigned int"
.LASF44:
	.string	"_IO_codecvt"
.LASF27:
	.string	"_fileno"
.LASF20:
	.string	"_IO_buf_base"
.LASF31:
	.string	"_vtable_offset"
.LASF35:
	.string	"_codecvt"
.LASF37:
	.string	"_freeres_list"
.LASF10:
	.string	"__off_t"
.LASF41:
	.string	"_unused2"
.LASF46:
	.string	"long long int"
.LASF51:
	.string	"fprintf"
.LASF12:
	.string	"char"
.LASF19:
	.string	"_IO_write_end"
.LASF7:
	.string	"short int"
.LASF62:
	.string	"malloc_c"
.LASF13:
	.string	"_flags"
.LASF57:
	.string	"GNU C17 12.1.1 20220507 (Red Hat 12.1.1-1) -mtune=generic -march=x86-64 -g -ggdb -Os"
.LASF36:
	.string	"_wide_data"
.LASF8:
	.string	"long int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF45:
	.string	"_IO_wide_data"
.LASF6:
	.string	"signed char"
.LASF16:
	.string	"_IO_read_base"
.LASF52:
	.string	"malloc"
.LASF32:
	.string	"_shortbuf"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_v.cplus/17_stdio_h/1_functions/1_clearerr/clearerr_cpjs"
.LASF0:
	.string	"lib/lib_1.c"
	.ident	"GCC: (GNU) 12.1.1 20220507 (Red Hat 12.1.1-1)"
	.section	.note.GNU-stack,"",@progbits
