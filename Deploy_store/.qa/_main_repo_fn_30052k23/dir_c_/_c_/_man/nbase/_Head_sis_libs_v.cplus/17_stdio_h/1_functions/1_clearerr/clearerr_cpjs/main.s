	.file	"main.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_v.cplus/17_stdio_h/1_functions/1_clearerr/clearerr_cpjs" "main.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"main.c"
.LC1:
	.string	"r"
.LC2:
	.string	"myfile.txt"
.LC3:
	.string	" ftell_c(pFile) = %ld,ferror(pFile) = %d, errno = %d\n"
.LC4:
	.string	"before clearerr: "
.LC5:
	.string	"after clearerr: "
.LC6:
	.string	"after fseek_s: "
.LC7:
	.string	"after fgetc"
.LC8:
	.string	"No errors reading myfile.txt"
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
.LVL0:
.LFB6:
	.file 1 "main.c"
	.loc 1 23 1 view -0
	.cfi_startproc
	.loc 1 24 3 view .LVU1
	.loc 1 27 3 view .LVU2
	.loc 1 23 1 is_stmt 0 view .LVU3
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	.loc 1 27 11 view .LVU4
	movl	$27, %ecx
	movl	$.LC0, %edx
	movl	$.LC1, %esi
.LVL1:
	.loc 1 23 1 view .LVU5
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	.loc 1 27 11 view .LVU6
	movl	$.LC2, %edi
.LVL2:
	.loc 1 23 1 view .LVU7
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 27 11 view .LVU8
	call	fopen_c
.LVL3:
	.loc 1 29 3 view .LVU9
	movl	$120, %edi
	movq	%rax, %rsi
	.loc 1 27 11 view .LVU10
	movq	%rax, %rbx
.LVL4:
	.loc 1 29 3 is_stmt 1 view .LVU11
	call	fputc
.LVL5:
	.loc 1 31 3 view .LVU12
	.loc 1 31 128 is_stmt 0 view .LVU13
	call	__errno_location
.LVL6:
	.loc 1 31 3 view .LVU14
	movq	%rbx, %rdi
	movl	(%rax), %r8d
	.loc 1 31 128 view .LVU15
	movq	%rax, %rbp
	.loc 1 31 3 view .LVU16
	movl	%r8d, 12(%rsp)
	call	ferror
.LVL7:
	movl	$31, %edx
	movl	$.LC0, %esi
	movq	%rbx, %rdi
	movl	%eax, %r12d
	call	ftell_c
.LVL8:
	movl	12(%rsp), %r8d
	movl	%r12d, %ecx
	movq	stdout(%rip), %rdi
	movq	%rax, %rdx
	movl	$.LC3, %esi
	xorl	%eax, %eax
	call	fprintf
.LVL9:
	.loc 1 33 3 is_stmt 1 view .LVU17
	movl	$.LC4, %edi
	call	perror
.LVL10:
	.loc 1 34 3 view .LVU18
	movq	%rbx, %rdi
	call	clearerr
.LVL11:
	.loc 1 35 3 view .LVU19
	movl	$.LC5, %edi
	call	perror
.LVL12:
	.loc 1 36 3 view .LVU20
	movl	0(%rbp), %r8d
	movq	%rbx, %rdi
	movl	%r8d, 12(%rsp)
	call	ferror
.LVL13:
	movl	$36, %edx
	movl	$.LC0, %esi
	movq	%rbx, %rdi
	movl	%eax, %r12d
	call	ftell_c
.LVL14:
	movl	12(%rsp), %r8d
	movl	%r12d, %ecx
	movq	stdout(%rip), %rdi
	movq	%rax, %rdx
	movl	$.LC3, %esi
	xorl	%eax, %eax
	call	fprintf
.LVL15:
	.loc 1 38 3 view .LVU21
	movl	$.LC0, %ecx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movl	$2, %edx
	movl	$38, %r8d
	call	fseek_c
.LVL16:
	.loc 1 39 3 view .LVU22
	movl	$.LC6, %edi
	call	perror
.LVL17:
	.loc 1 40 3 view .LVU23
	movl	0(%rbp), %r8d
	movq	%rbx, %rdi
	movl	%r8d, 12(%rsp)
	call	ferror
.LVL18:
	movl	$40, %edx
	movl	$.LC0, %esi
	movq	%rbx, %rdi
	movl	%eax, %r12d
	call	ftell_c
.LVL19:
	movl	12(%rsp), %r8d
	movl	%r12d, %ecx
	movq	stdout(%rip), %rdi
	movq	%rax, %rdx
	movl	$.LC3, %esi
	xorl	%eax, %eax
	call	fprintf
.LVL20:
	.loc 1 45 3 view .LVU24
	movl	0(%rbp), %r8d
	movq	%rbx, %rdi
	movl	%r8d, 12(%rsp)
	call	ferror
.LVL21:
	movl	$45, %edx
	movl	$.LC0, %esi
	movq	%rbx, %rdi
	movl	%eax, %ebp
	call	ftell_c
.LVL22:
	movl	12(%rsp), %r8d
	movl	%ebp, %ecx
	movq	stdout(%rip), %rdi
	movq	%rax, %rdx
	movl	$.LC3, %esi
	xorl	%eax, %eax
	call	fprintf
.LVL23:
	.loc 1 46 3 view .LVU25
	movl	$.LC7, %edi
	call	perror
.LVL24:
	.loc 1 47 3 view .LVU26
	.loc 1 47 8 is_stmt 0 view .LVU27
	movq	%rbx, %rdi
	call	ferror
.LVL25:
	.loc 1 47 6 view .LVU28
	testl	%eax, %eax
	jne	.L2
	.loc 1 48 5 is_stmt 1 view .LVU29
	movl	$.LC8, %edi
	call	puts
.LVL26:
.L2:
	.loc 1 49 3 view .LVU30
	movq	%rbx, %rdi
	call	fclose
.LVL27:
	.loc 1 53 3 view .LVU31
	.loc 1 54 1 is_stmt 0 view .LVU32
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL28:
	.loc 1 54 1 view .LVU33
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-redhat-linux/12/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/bits/types/struct_FILE.h"
	.file 5 "/usr/include/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "lib/io_1.h"
	.file 8 "/usr/include/errno.h"
	.file 9 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x746
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x11
	.long	.LASF63
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL3
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x7
	.long	.LASF9
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x36
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x12
	.byte	0x8
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.long	0x62
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x7
	.long	.LASF10
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x6e
	.uleb128 0x7
	.long	.LASF11
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x6e
	.uleb128 0x6
	.long	0x92
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0xb
	.long	0x92
	.uleb128 0x14
	.long	.LASF64
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x208
	.uleb128 0x2
	.long	.LASF13
	.byte	0x33
	.byte	0x7
	.long	0x62
	.byte	0
	.uleb128 0x2
	.long	.LASF14
	.byte	0x36
	.byte	0x9
	.long	0x8d
	.byte	0x8
	.uleb128 0x2
	.long	.LASF15
	.byte	0x37
	.byte	0x9
	.long	0x8d
	.byte	0x10
	.uleb128 0x2
	.long	.LASF16
	.byte	0x38
	.byte	0x9
	.long	0x8d
	.byte	0x18
	.uleb128 0x2
	.long	.LASF17
	.byte	0x39
	.byte	0x9
	.long	0x8d
	.byte	0x20
	.uleb128 0x2
	.long	.LASF18
	.byte	0x3a
	.byte	0x9
	.long	0x8d
	.byte	0x28
	.uleb128 0x2
	.long	.LASF19
	.byte	0x3b
	.byte	0x9
	.long	0x8d
	.byte	0x30
	.uleb128 0x2
	.long	.LASF20
	.byte	0x3c
	.byte	0x9
	.long	0x8d
	.byte	0x38
	.uleb128 0x2
	.long	.LASF21
	.byte	0x3d
	.byte	0x9
	.long	0x8d
	.byte	0x40
	.uleb128 0x2
	.long	.LASF22
	.byte	0x40
	.byte	0x9
	.long	0x8d
	.byte	0x48
	.uleb128 0x2
	.long	.LASF23
	.byte	0x41
	.byte	0x9
	.long	0x8d
	.byte	0x50
	.uleb128 0x2
	.long	.LASF24
	.byte	0x42
	.byte	0x9
	.long	0x8d
	.byte	0x58
	.uleb128 0x2
	.long	.LASF25
	.byte	0x44
	.byte	0x16
	.long	0x221
	.byte	0x60
	.uleb128 0x2
	.long	.LASF26
	.byte	0x46
	.byte	0x14
	.long	0x226
	.byte	0x68
	.uleb128 0x2
	.long	.LASF27
	.byte	0x48
	.byte	0x7
	.long	0x62
	.byte	0x70
	.uleb128 0x2
	.long	.LASF28
	.byte	0x49
	.byte	0x7
	.long	0x62
	.byte	0x74
	.uleb128 0x2
	.long	.LASF29
	.byte	0x4a
	.byte	0xb
	.long	0x75
	.byte	0x78
	.uleb128 0x2
	.long	.LASF30
	.byte	0x4d
	.byte	0x12
	.long	0x4d
	.byte	0x80
	.uleb128 0x2
	.long	.LASF31
	.byte	0x4e
	.byte	0xf
	.long	0x54
	.byte	0x82
	.uleb128 0x2
	.long	.LASF32
	.byte	0x4f
	.byte	0x8
	.long	0x22b
	.byte	0x83
	.uleb128 0x2
	.long	.LASF33
	.byte	0x51
	.byte	0xf
	.long	0x23b
	.byte	0x88
	.uleb128 0x2
	.long	.LASF34
	.byte	0x59
	.byte	0xd
	.long	0x81
	.byte	0x90
	.uleb128 0x2
	.long	.LASF35
	.byte	0x5b
	.byte	0x17
	.long	0x245
	.byte	0x98
	.uleb128 0x2
	.long	.LASF36
	.byte	0x5c
	.byte	0x19
	.long	0x24f
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF37
	.byte	0x5d
	.byte	0x14
	.long	0x226
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF38
	.byte	0x5e
	.byte	0x9
	.long	0x44
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF39
	.byte	0x5f
	.byte	0xa
	.long	0x2a
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF40
	.byte	0x60
	.byte	0x7
	.long	0x62
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x62
	.byte	0x8
	.long	0x254
	.byte	0xc4
	.byte	0
	.uleb128 0x7
	.long	.LASF42
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0x9e
	.uleb128 0x15
	.long	.LASF65
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x9
	.long	.LASF43
	.uleb128 0x6
	.long	0x21c
	.uleb128 0x6
	.long	0x9e
	.uleb128 0xc
	.long	0x92
	.long	0x23b
	.uleb128 0xd
	.long	0x36
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x214
	.uleb128 0x9
	.long	.LASF44
	.uleb128 0x6
	.long	0x240
	.uleb128 0x9
	.long	.LASF45
	.uleb128 0x6
	.long	0x24a
	.uleb128 0xc
	.long	0x92
	.long	0x264
	.uleb128 0xd
	.long	0x36
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.long	0x208
	.uleb128 0xe
	.long	0x264
	.uleb128 0x16
	.long	.LASF61
	.byte	0x6
	.byte	0x90
	.byte	0xe
	.long	0x264
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x6
	.long	0x99
	.uleb128 0xe
	.long	0x288
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF48
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.long	.LASF49
	.uleb128 0x8
	.long	.LASF50
	.byte	0x6
	.byte	0xb2
	.byte	0xc
	.long	0x62
	.long	0x2b6
	.uleb128 0x4
	.long	0x264
	.byte	0
	.uleb128 0x8
	.long	.LASF51
	.byte	0x7
	.byte	0x10
	.byte	0x5
	.long	0x62
	.long	0x2e0
	.uleb128 0x4
	.long	0x264
	.uleb128 0x4
	.long	0x62
	.uleb128 0x4
	.long	0x62
	.uleb128 0x4
	.long	0x288
	.uleb128 0x4
	.long	0x69
	.byte	0
	.uleb128 0xf
	.long	.LASF52
	.value	0x312
	.long	0x2f1
	.uleb128 0x4
	.long	0x264
	.byte	0
	.uleb128 0xf
	.long	.LASF53
	.value	0x324
	.long	0x302
	.uleb128 0x4
	.long	0x288
	.byte	0
	.uleb128 0xa
	.long	.LASF54
	.value	0x15e
	.long	0x62
	.long	0x31d
	.uleb128 0x4
	.long	0x269
	.uleb128 0x4
	.long	0x28d
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x7
	.byte	0xe
	.byte	0xa
	.long	0x6e
	.long	0x33d
	.uleb128 0x4
	.long	0x264
	.uleb128 0x4
	.long	0x288
	.uleb128 0x4
	.long	0x69
	.byte	0
	.uleb128 0xa
	.long	.LASF56
	.value	0x316
	.long	0x62
	.long	0x352
	.uleb128 0x4
	.long	0x264
	.byte	0
	.uleb128 0x18
	.long	.LASF66
	.byte	0x8
	.byte	0x25
	.byte	0xd
	.long	0x35e
	.uleb128 0x6
	.long	0x62
	.uleb128 0xa
	.long	.LASF57
	.value	0x225
	.long	0x62
	.long	0x37d
	.uleb128 0x4
	.long	0x62
	.uleb128 0x4
	.long	0x264
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0x7
	.byte	0x15
	.byte	0x7
	.long	0x264
	.long	0x3a2
	.uleb128 0x4
	.long	0x288
	.uleb128 0x4
	.long	0x288
	.uleb128 0x4
	.long	0x288
	.uleb128 0x4
	.long	0x69
	.byte	0
	.uleb128 0x19
	.long	.LASF67
	.byte	0x1
	.byte	0x16
	.byte	0x5
	.long	0x62
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x739
	.uleb128 0x10
	.long	.LASF59
	.byte	0xe
	.long	0x62
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x10
	.long	.LASF60
	.byte	0x20
	.long	0x739
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x1a
	.long	.LASF62
	.byte	0x1
	.byte	0x18
	.byte	0x9
	.long	0x264
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x3
	.quad	.LVL3
	.long	0x37d
	.long	0x43a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x4b
	.byte	0
	.uleb128 0x3
	.quad	.LVL5
	.long	0x363
	.long	0x458
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x78
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL6
	.long	0x352
	.uleb128 0x3
	.quad	.LVL7
	.long	0x33d
	.long	0x47d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL8
	.long	0x31d
	.long	0x4a7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x3
	.quad	.LVL9
	.long	0x302
	.long	0x4d4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.quad	.LVL10
	.long	0x2f1
	.long	0x4f3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x3
	.quad	.LVL11
	.long	0x2e0
	.long	0x50b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL12
	.long	0x2f1
	.long	0x52a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.uleb128 0x3
	.quad	.LVL13
	.long	0x33d
	.long	0x542
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL14
	.long	0x31d
	.long	0x56d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.uleb128 0x3
	.quad	.LVL15
	.long	0x302
	.long	0x59a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.quad	.LVL16
	.long	0x2b6
	.long	0x5cf
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x26
	.byte	0
	.uleb128 0x3
	.quad	.LVL17
	.long	0x2f1
	.long	0x5ee
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0x3
	.quad	.LVL18
	.long	0x33d
	.long	0x606
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL19
	.long	0x31d
	.long	0x631
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.quad	.LVL20
	.long	0x302
	.long	0x65e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.quad	.LVL21
	.long	0x33d
	.long	0x676
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL22
	.long	0x31d
	.long	0x6a1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x3
	.quad	.LVL23
	.long	0x302
	.long	0x6ce
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.quad	.LVL24
	.long	0x2f1
	.long	0x6ed
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x3
	.quad	.LVL25
	.long	0x33d
	.long	0x705
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL26
	.long	0x73e
	.long	0x724
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.uleb128 0x1c
	.quad	.LVL27
	.long	0x2a0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x288
	.uleb128 0x1d
	.long	.LASF68
	.long	.LASF69
	.byte	0x9
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 22
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
	.uleb128 0x11
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1d
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
.LVUS0:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LFE6-.LVL0
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
	.uleb128 0
.LLST1:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LFE6-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU11
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU33
.LLST2:
	.byte	0x6
	.quad	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL5-1-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL5-1-.LVL4
	.uleb128 .LVL28-.LVL4
	.uleb128 0x1
	.byte	0x53
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
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL3:
	.byte	0x7
	.quad	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF66:
	.string	"__errno_location"
.LASF69:
	.string	"__builtin_puts"
.LASF51:
	.string	"fseek_c"
.LASF49:
	.string	"double"
.LASF64:
	.string	"_IO_FILE"
.LASF58:
	.string	"fopen_c"
.LASF24:
	.string	"_IO_save_end"
.LASF7:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF52:
	.string	"clearerr"
.LASF34:
	.string	"_offset"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF20:
	.string	"_IO_buf_base"
.LASF56:
	.string	"ferror"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF38:
	.string	"_freeres_buf"
.LASF48:
	.string	"float"
.LASF46:
	.string	"long long int"
.LASF33:
	.string	"_lock"
.LASF8:
	.string	"long int"
.LASF30:
	.string	"_cur_column"
.LASF53:
	.string	"perror"
.LASF54:
	.string	"fprintf"
.LASF60:
	.string	"argv"
.LASF29:
	.string	"_old_offset"
.LASF4:
	.string	"unsigned char"
.LASF59:
	.string	"argc"
.LASF6:
	.string	"signed char"
.LASF35:
	.string	"_codecvt"
.LASF47:
	.string	"long long unsigned int"
.LASF62:
	.string	"pFile"
.LASF3:
	.string	"unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF68:
	.string	"puts"
.LASF17:
	.string	"_IO_write_base"
.LASF41:
	.string	"_unused2"
.LASF14:
	.string	"_IO_read_ptr"
.LASF21:
	.string	"_IO_buf_end"
.LASF12:
	.string	"char"
.LASF67:
	.string	"main"
.LASF57:
	.string	"fputc"
.LASF36:
	.string	"_wide_data"
.LASF37:
	.string	"_freeres_list"
.LASF50:
	.string	"fclose"
.LASF39:
	.string	"__pad5"
.LASF55:
	.string	"ftell_c"
.LASF5:
	.string	"short unsigned int"
.LASF2:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_end"
.LASF11:
	.string	"__off64_t"
.LASF27:
	.string	"_fileno"
.LASF26:
	.string	"_chain"
.LASF45:
	.string	"_IO_wide_data"
.LASF40:
	.string	"_mode"
.LASF10:
	.string	"__off_t"
.LASF23:
	.string	"_IO_backup_base"
.LASF28:
	.string	"_flags2"
.LASF44:
	.string	"_IO_codecvt"
.LASF16:
	.string	"_IO_read_base"
.LASF31:
	.string	"_vtable_offset"
.LASF63:
	.string	"GNU C17 12.1.1 20220507 (Red Hat 12.1.1-1) -mtune=generic -march=x86-64 -g -ggdb -Os"
.LASF22:
	.string	"_IO_save_base"
.LASF42:
	.string	"FILE"
.LASF61:
	.string	"stdout"
.LASF65:
	.string	"_IO_lock_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_v.cplus/17_stdio_h/1_functions/1_clearerr/clearerr_cpjs"
.LASF0:
	.string	"main.c"
	.ident	"GCC: (GNU) 12.1.1 20220507 (Red Hat 12.1.1-1)"
	.section	.note.GNU-stack,"",@progbits
