	.file	"dirent_1.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_v.cplus/17_stdio_h/1_functions/1_clearerr/clearerr_cpjs" "lib/dirent_1.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"failed in file %s at line # %d\n"
.LC1:
	.string	"from dirfd_\321\201 dirp = %d, errno = %d\n"
.LC2:
	.string	"exit(errno) with"
	.text
	.globl	dirfd_с
	.type	dirfd_с, @function
dirfd_с:
.LVL0:
.LFB6:
	.file 1 "lib/dirent_1.c"
	.loc 1 40 1 view -0
	.cfi_startproc
	.loc 1 41 5 view .LVU1
	.loc 1 40 1 is_stmt 0 view .LVU2
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 40 1 view .LVU3
	movq	%rsi, %rbx
	.loc 1 41 13 view .LVU4
	call	dirfd
.LVL1:
	.loc 1 42 5 is_stmt 1 view .LVU5
	.loc 1 42 8 is_stmt 0 view .LVU6
	cmpl	$-1, %eax
	jne	.L1
	.loc 1 44 9 is_stmt 1 view .LVU7
	movq	stderr(%rip), %rdi
	movq	%rbx, %rdx
	movl	%r12d, %ecx
	xorl	%eax, %eax
.LVL2:
	.loc 1 44 9 is_stmt 0 view .LVU8
	movl	$.LC0, %esi
	call	fprintf
.LVL3:
	.loc 1 45 9 is_stmt 1 view .LVU9
	.loc 1 45 72 is_stmt 0 view .LVU10
	call	__errno_location
.LVL4:
	.loc 1 45 9 view .LVU11
	movq	stderr(%rip), %rdi
	movq	%rbp, %rdx
	movl	$.LC1, %esi
	movl	(%rax), %ecx
	.loc 1 45 72 view .LVU12
	movq	%rax, %rbx
.LVL5:
	.loc 1 45 9 view .LVU13
	xorl	%eax, %eax
	call	fprintf
.LVL6:
	.loc 1 46 9 is_stmt 1 view .LVU14
	movl	$.LC2, %edi
	call	perror
.LVL7:
	.loc 1 47 9 view .LVU15
	movl	(%rbx), %edi
	call	exit
.LVL8:
.L1:
	.loc 1 50 1 is_stmt 0 view .LVU16
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL9:
	.loc 1 50 1 view .LVU17
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL10:
	.loc 1 50 1 view .LVU18
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL11:
	.loc 1 50 1 view .LVU19
	ret
	.cfi_endproc
.LFE6:
	.size	dirfd_с, .-dirfd_с
	.globl	dirfd_сb
	.type	dirfd_сb, @function
dirfd_сb:
.LVL12:
.LFB7:
	.loc 1 53 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 54 5 view .LVU21
	.loc 1 53 1 is_stmt 0 view .LVU22
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	.loc 1 54 13 view .LVU23
	movq	%rsi, %rdi
.LVL13:
	.loc 1 53 1 view .LVU24
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 54 13 view .LVU25
	call	dirfd
.LVL14:
	.loc 1 54 13 view .LVU26
	movl	%eax, %ebx
.LVL15:
	.loc 1 55 5 is_stmt 1 view .LVU27
	.loc 1 55 8 is_stmt 0 view .LVU28
	incl	%eax
.LVL16:
	.loc 1 55 8 view .LVU29
	jne	.L5
	.loc 1 57 9 is_stmt 1 view .LVU30
	movq	%rbp, %rdi
	call	*%r12
.LVL17:
	.loc 1 59 5 view .LVU31
.L5:
	.loc 1 60 1 is_stmt 0 view .LVU32
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL18:
	.loc 1 60 1 view .LVU33
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL19:
	.loc 1 60 1 view .LVU34
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL20:
	.loc 1 60 1 view .LVU35
	ret
	.cfi_endproc
.LFE7:
	.size	dirfd_сb, .-dirfd_сb
	.section	.rodata.str1.1
.LC3:
	.string	"from opendir_\321\201 dirname = %s, errno = %d\n"
	.text
	.globl	opendir_с
	.type	opendir_с, @function
opendir_с:
.LVL21:
.LFB8:
	.loc 1 64 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 65 5 view .LVU37
	.loc 1 64 1 is_stmt 0 view .LVU38
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 64 1 view .LVU39
	movq	%rsi, %rbx
	.loc 1 65 14 view .LVU40
	call	opendir
.LVL22:
	.loc 1 66 5 is_stmt 1 view .LVU41
	.loc 1 66 8 is_stmt 0 view .LVU42
	cmpq	$-1, %rax
	jne	.L8
	.loc 1 68 9 is_stmt 1 view .LVU43
	movq	stderr(%rip), %rdi
	movq	%rbx, %rdx
	movl	%r12d, %ecx
	xorl	%eax, %eax
.LVL23:
	.loc 1 68 9 is_stmt 0 view .LVU44
	movl	$.LC0, %esi
	call	fprintf
.LVL24:
	.loc 1 69 9 is_stmt 1 view .LVU45
	.loc 1 69 80 is_stmt 0 view .LVU46
	call	__errno_location
.LVL25:
	.loc 1 69 9 view .LVU47
	movq	stderr(%rip), %rdi
	movq	%rbp, %rdx
	movl	$.LC3, %esi
	movl	(%rax), %ecx
	.loc 1 69 80 view .LVU48
	movq	%rax, %rbx
.LVL26:
	.loc 1 69 9 view .LVU49
	xorl	%eax, %eax
	call	fprintf
.LVL27:
	.loc 1 70 9 is_stmt 1 view .LVU50
	movl	$.LC2, %edi
	call	perror
.LVL28:
	.loc 1 71 9 view .LVU51
	movl	(%rbx), %edi
	call	exit
.LVL29:
.L8:
	.loc 1 74 1 is_stmt 0 view .LVU52
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL30:
	.loc 1 74 1 view .LVU53
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL31:
	.loc 1 74 1 view .LVU54
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL32:
	.loc 1 74 1 view .LVU55
	ret
	.cfi_endproc
.LFE8:
	.size	opendir_с, .-opendir_с
	.globl	opendir_сb
	.type	opendir_сb, @function
opendir_сb:
.LVL33:
.LFB9:
	.loc 1 77 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 78 5 view .LVU57
	.loc 1 77 1 is_stmt 0 view .LVU58
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	.loc 1 78 14 view .LVU59
	movq	%rsi, %rdi
.LVL34:
	.loc 1 77 1 view .LVU60
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 78 14 view .LVU61
	call	opendir
.LVL35:
	.loc 1 78 14 view .LVU62
	movq	%rax, %rbx
.LVL36:
	.loc 1 79 5 is_stmt 1 view .LVU63
	.loc 1 79 8 is_stmt 0 view .LVU64
	incq	%rax
.LVL37:
	.loc 1 79 8 view .LVU65
	jne	.L11
	.loc 1 81 9 is_stmt 1 view .LVU66
	movq	%rbp, %rdi
	call	*%r12
.LVL38:
	.loc 1 83 5 view .LVU67
.L11:
	.loc 1 84 1 is_stmt 0 view .LVU68
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL39:
	.loc 1 84 1 view .LVU69
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL40:
	.loc 1 84 1 view .LVU70
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL41:
	.loc 1 84 1 view .LVU71
	ret
	.cfi_endproc
.LFE9:
	.size	opendir_сb, .-opendir_сb
.Letext0:
	.file 2 "/usr/include/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-redhat-linux/12/include/stddef.h"
	.file 4 "/usr/include/bits/types/struct_FILE.h"
	.file 5 "/usr/include/bits/types/FILE.h"
	.file 6 "/usr/include/dirent.h"
	.file 7 "/usr/include/stdlib.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x681
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x15
	.long	.LASF64
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
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xd
	.long	0x58
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x8
	.long	.LASF9
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x64
	.uleb128 0x8
	.long	.LASF10
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x64
	.uleb128 0x17
	.byte	0x8
	.uleb128 0x4
	.long	0x8a
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0xd
	.long	0x8a
	.uleb128 0x4
	.long	0x91
	.uleb128 0xe
	.long	0x96
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x8
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
	.uleb128 0x18
	.long	.LASF65
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
	.uleb128 0x8
	.long	.LASF47
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xcf
	.uleb128 0x19
	.long	.LASF66
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x9
	.long	.LASF48
	.uleb128 0x4
	.long	0x24d
	.uleb128 0x4
	.long	0xcf
	.uleb128 0xf
	.long	0x8a
	.long	0x26c
	.uleb128 0x10
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x245
	.uleb128 0x9
	.long	.LASF49
	.uleb128 0x4
	.long	0x271
	.uleb128 0x9
	.long	.LASF50
	.uleb128 0x4
	.long	0x27b
	.uleb128 0xf
	.long	0x8a
	.long	0x295
	.uleb128 0x10
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	0x239
	.uleb128 0xe
	.long	0x295
	.uleb128 0x1a
	.long	.LASF57
	.byte	0x8
	.byte	0x91
	.byte	0xe
	.long	0x295
	.uleb128 0x1b
	.string	"DIR"
	.byte	0x6
	.byte	0x7f
	.byte	0x1c
	.long	0x2b7
	.uleb128 0x9
	.long	.LASF51
	.uleb128 0x11
	.long	.LASF52
	.byte	0x86
	.byte	0xd
	.long	0x2d1
	.long	0x2d1
	.uleb128 0x6
	.long	0x96
	.byte	0
	.uleb128 0x4
	.long	0x2ab
	.uleb128 0x1c
	.long	.LASF53
	.byte	0x7
	.value	0x270
	.byte	0xd
	.long	0x2e9
	.uleb128 0x6
	.long	0x58
	.byte	0
	.uleb128 0x1d
	.long	.LASF67
	.byte	0x8
	.value	0x324
	.byte	0xd
	.long	0x2fc
	.uleb128 0x6
	.long	0x96
	.byte	0
	.uleb128 0x1e
	.long	.LASF68
	.byte	0x9
	.byte	0x25
	.byte	0xd
	.long	0x308
	.uleb128 0x4
	.long	0x58
	.uleb128 0x1f
	.long	.LASF54
	.byte	0x8
	.value	0x15e
	.byte	0xc
	.long	0x58
	.long	0x32a
	.uleb128 0x6
	.long	0x29a
	.uleb128 0x6
	.long	0x9b
	.uleb128 0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF55
	.byte	0xe0
	.byte	0xc
	.long	0x58
	.long	0x33f
	.uleb128 0x6
	.long	0x2d1
	.byte	0
	.uleb128 0xc
	.long	.LASF58
	.byte	0x4c
	.byte	0xc
	.long	0x2d1
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c2
	.uleb128 0x12
	.string	"cb"
	.byte	0x4c
	.byte	0x1c
	.long	0x3d1
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x7
	.long	.LASF56
	.byte	0x4c
	.byte	0x2e
	.long	0x85
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0xa
	.string	"a"
	.byte	0x4e
	.byte	0xa
	.long	0x2d1
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x5
	.quad	.LVL35
	.long	0x2bc
	.long	0x3ae
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.quad	.LVL38
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x58
	.long	0x3d1
	.uleb128 0x6
	.long	0x85
	.byte	0
	.uleb128 0x4
	.long	0x3c2
	.uleb128 0xc
	.long	.LASF59
	.byte	0x3f
	.byte	0xc
	.long	0x2d1
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e3
	.uleb128 0x7
	.long	.LASF56
	.byte	0x3f
	.byte	0x1d
	.long	0x85
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x7
	.long	.LASF60
	.byte	0x3f
	.byte	0x32
	.long	0x96
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x7
	.long	.LASF61
	.byte	0x3f
	.byte	0x42
	.long	0x5f
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0xa
	.string	"a"
	.byte	0x41
	.byte	0xa
	.long	0x2d1
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x5
	.quad	.LVL22
	.long	0x2bc
	.long	0x459
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL24
	.long	0x30d
	.long	0x484
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.quad	.LVL25
	.long	0x2fc
	.uleb128 0x5
	.quad	.LVL27
	.long	0x30d
	.long	0x4b6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL28
	.long	0x2e9
	.long	0x4d5
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0xb
	.quad	.LVL29
	.long	0x2d6
	.byte	0
	.uleb128 0xc
	.long	.LASF62
	.byte	0x34
	.byte	0xb
	.long	0x58
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x566
	.uleb128 0x12
	.string	"cb"
	.byte	0x34
	.byte	0x19
	.long	0x575
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x7
	.long	.LASF63
	.byte	0x34
	.byte	0x29
	.long	0x2d1
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0xa
	.string	"a"
	.byte	0x36
	.byte	0x9
	.long	0x58
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x5
	.quad	.LVL14
	.long	0x32a
	.long	0x552
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.quad	.LVL17
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x58
	.long	0x575
	.uleb128 0x6
	.long	0x2d1
	.byte	0
	.uleb128 0x4
	.long	0x566
	.uleb128 0x21
	.long	.LASF69
	.byte	0x1
	.byte	0x27
	.byte	0xb
	.long	0x58
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.long	.LASF63
	.byte	0x27
	.byte	0x19
	.long	0x2d1
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x7
	.long	.LASF60
	.byte	0x27
	.byte	0x2b
	.long	0x96
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x7
	.long	.LASF61
	.byte	0x27
	.byte	0x3b
	.long	0x5f
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0xa
	.string	"a"
	.byte	0x29
	.byte	0x9
	.long	0x58
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x5
	.quad	.LVL1
	.long	0x32a
	.long	0x5fa
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL3
	.long	0x30d
	.long	0x625
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.quad	.LVL4
	.long	0x2fc
	.uleb128 0x5
	.quad	.LVL6
	.long	0x30d
	.long	0x657
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL7
	.long	0x2e9
	.long	0x676
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0xb
	.quad	.LVL8
	.long	0x2d6
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x83
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x16
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS11:
	.uleb128 0
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 0
.LLST11:
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL41-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LFE9-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 0
.LLST12:
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL35-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL35-1-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL40-.Ltext0
	.uleb128 .LFE9-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU63
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 0
.LLST13:
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LFE9-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 0
.LLST7:
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL22-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL22-1-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LFE8-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 0
.LLST8:
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL22-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL22-1-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LFE8-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 0
.LLST9:
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL22-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL22-1-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LFE8-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU41
	.uleb128 .LVU44
	.uleb128 .LVU52
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LFE8-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST4:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LFE7-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 0
.LLST5:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL14-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL14-1-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LFE7-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU27
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 0
.LLST6:
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL18-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LFE7-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
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
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
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
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
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
	.uleb128 .LVU16
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
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
.LASF68:
	.string	"__errno_location"
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
.LASF66:
	.string	"_IO_lock_t"
.LASF39:
	.string	"_offset"
.LASF23:
	.string	"_IO_write_ptr"
.LASF18:
	.string	"_flags"
.LASF25:
	.string	"_IO_buf_base"
.LASF60:
	.string	"file"
.LASF30:
	.string	"_markers"
.LASF20:
	.string	"_IO_read_end"
.LASF59:
	.string	"opendir_\321\201"
.LASF43:
	.string	"_freeres_buf"
.LASF69:
	.string	"dirfd_\321\201"
.LASF61:
	.string	"line"
.LASF62:
	.string	"dirfd_\321\201b"
.LASF56:
	.string	"dirname"
.LASF63:
	.string	"dirp"
.LASF57:
	.string	"stderr"
.LASF15:
	.string	"long long int"
.LASF38:
	.string	"_lock"
.LASF8:
	.string	"long int"
.LASF35:
	.string	"_cur_column"
.LASF67:
	.string	"perror"
.LASF54:
	.string	"fprintf"
.LASF53:
	.string	"exit"
.LASF65:
	.string	"_IO_FILE"
.LASF17:
	.string	"long double"
.LASF52:
	.string	"opendir"
.LASF2:
	.string	"unsigned char"
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
.LASF22:
	.string	"_IO_write_base"
.LASF46:
	.string	"_unused2"
.LASF19:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_IO_buf_end"
.LASF58:
	.string	"opendir_\321\201b"
.LASF11:
	.string	"char"
.LASF41:
	.string	"_wide_data"
.LASF42:
	.string	"_freeres_list"
.LASF44:
	.string	"__pad5"
.LASF51:
	.string	"__dirstream"
.LASF12:
	.string	"float"
.LASF5:
	.string	"long unsigned int"
.LASF55:
	.string	"dirfd"
.LASF13:
	.string	"double"
.LASF10:
	.string	"__off64_t"
.LASF9:
	.string	"__off_t"
.LASF3:
	.string	"short unsigned int"
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
.LASF64:
	.string	"GNU C17 12.1.1 20220507 (Red Hat 12.1.1-1) -mtune=generic -march=x86-64 -g -ggdb -Os"
.LASF27:
	.string	"_IO_save_base"
.LASF32:
	.string	"_fileno"
.LASF47:
	.string	"FILE"
.LASF49:
	.string	"_IO_codecvt"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_v.cplus/17_stdio_h/1_functions/1_clearerr/clearerr_cpjs"
.LASF0:
	.string	"lib/dirent_1.c"
	.ident	"GCC: (GNU) 12.1.1 20220507 (Red Hat 12.1.1-1)"
	.section	.note.GNU-stack,"",@progbits
