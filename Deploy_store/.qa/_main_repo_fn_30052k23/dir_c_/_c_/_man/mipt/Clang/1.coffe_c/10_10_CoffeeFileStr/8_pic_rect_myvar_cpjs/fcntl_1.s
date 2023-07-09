	.file	"fcntl_1.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs" "lib/fcntl_1.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"failed in file %s at line # %d\n"
	.align 8
.LC1:
	.string	"from open_\321\201 path = %s, oflag =%d, mode =%d, errno = %d\n"
.LC2:
	.string	"Error is: "
.LC3:
	.string	"return -1"
.LC4:
	.string	"exit(errno): "
.LC5:
	.string	"return original error"
	.align 8
.LC6:
	.string	"st__re NOT equal (STRE_ERR|STRE_MNS|STRE_EXI)  exit(1) That error NOT treat: "
	.align 8
.LC7:
	.string	" st__if NOT equal STIF_NUL exit(1)"
	.text
	.globl	open_с
	.type	open_с, @function
open_с:
.LFB6:
	.file 1 "lib/fcntl_1.c"
	.loc 1 55 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	.loc 1 58 16
	movl	16(%rbp), %eax
	andl	$1, %eax
	.loc 1 58 8
	testl	%eax, %eax
	je	.L2
.LBB2:
	.loc 1 60 17
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open
	movl	%eax, -4(%rbp)
	.loc 1 61 12
	cmpl	$-1, -4(%rbp)
	jne	.L3
	.loc 1 63 24
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 63 16
	testl	%eax, %eax
	je	.L4
	.loc 1 65 17
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 66 113
	call	__errno_location
	.loc 1 66 17
	movl	(%rax), %edi
	movq	stderr(%rip), %rax
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 67 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 68 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L4:
	.loc 1 70 24
	movl	24(%rbp), %eax
	andl	$2, %eax
	.loc 1 70 16
	testl	%eax, %eax
	je	.L5
	.loc 1 72 28
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 72 20
	testl	%eax, %eax
	je	.L6
	.loc 1 73 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L6:
	.loc 1 74 24
	movl	$-1, %eax
	jmp	.L7
.L5:
	.loc 1 76 29
	movl	24(%rbp), %eax
	andl	$4, %eax
	.loc 1 76 21
	testl	%eax, %eax
	je	.L8
	.loc 1 78 28
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 78 20
	testl	%eax, %eax
	je	.L9
	.loc 1 79 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L9:
	.loc 1 80 22
	call	__errno_location
	.loc 1 80 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L8:
	.loc 1 82 29
	movl	24(%rbp), %eax
	andl	$1, %eax
	.loc 1 82 21
	testl	%eax, %eax
	je	.L10
	.loc 1 84 28
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 84 20
	testl	%eax, %eax
	je	.L11
	.loc 1 85 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L11:
	.loc 1 86 24
	movl	-4(%rbp), %eax
	jmp	.L7
.L10:
	.loc 1 90 17
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 91 113
	call	__errno_location
	.loc 1 91 17
	movl	(%rax), %edi
	movq	stderr(%rip), %rax
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 92 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 93 17
	movl	$1, %edi
	call	exit
.L3:
	.loc 1 96 16
	movl	-4(%rbp), %eax
	jmp	.L7
.L2:
.LBE2:
	.loc 1 100 9
	movl	$.LC7, %edi
	call	perror
	.loc 1 101 9
	movl	$1, %edi
	call	exit
.L7:
	.loc 1 104 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	open_с, .-open_с
	.section	.rodata
	.align 8
.LC8:
	.string	"from openat_\321\201 dirdes = %d, path = %s, oflag =%d, mode =%d, errno = %d\n"
	.text
	.globl	openat_с
	.type	openat_с, @function
openat_с:
.LFB7:
	.loc 1 121 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -40(%rbp)
	.loc 1 124 16
	movl	24(%rbp), %eax
	andl	$1, %eax
	.loc 1 124 8
	testl	%eax, %eax
	je	.L13
.LBB3:
	.loc 1 126 17
	movl	-36(%rbp), %ecx
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	movl	$0, %eax
	call	openat
	movl	%eax, -4(%rbp)
	.loc 1 127 12
	cmpl	$-1, -4(%rbp)
	jne	.L14
	.loc 1 129 24
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 129 16
	testl	%eax, %eax
	je	.L15
	.loc 1 131 17
	movq	stderr(%rip), %rax
	movl	-40(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 132 136
	call	__errno_location
	.loc 1 132 17
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %r8d
	movl	-24(%rbp), %edi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	subq	$8, %rsp
	pushq	%rsi
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	addq	$16, %rsp
	.loc 1 133 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 134 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L15:
	.loc 1 136 24
	movl	32(%rbp), %eax
	andl	$2, %eax
	.loc 1 136 16
	testl	%eax, %eax
	je	.L16
	.loc 1 138 28
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 138 20
	testl	%eax, %eax
	je	.L17
	.loc 1 139 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L17:
	.loc 1 140 24
	movl	$-1, %eax
	jmp	.L18
.L16:
	.loc 1 142 29
	movl	32(%rbp), %eax
	andl	$4, %eax
	.loc 1 142 21
	testl	%eax, %eax
	je	.L19
	.loc 1 144 28
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 144 20
	testl	%eax, %eax
	je	.L20
	.loc 1 145 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L20:
	.loc 1 146 22
	call	__errno_location
	.loc 1 146 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L19:
	.loc 1 148 29
	movl	32(%rbp), %eax
	andl	$1, %eax
	.loc 1 148 21
	testl	%eax, %eax
	je	.L21
	.loc 1 150 28
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 150 20
	testl	%eax, %eax
	je	.L22
	.loc 1 151 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L22:
	.loc 1 152 24
	movl	-4(%rbp), %eax
	jmp	.L18
.L21:
	.loc 1 156 17
	movq	stderr(%rip), %rax
	movl	-40(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 157 136
	call	__errno_location
	.loc 1 157 17
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %r8d
	movl	-24(%rbp), %edi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	subq	$8, %rsp
	pushq	%rsi
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	addq	$16, %rsp
	.loc 1 158 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 159 17
	movl	$1, %edi
	call	exit
.L14:
	.loc 1 162 16
	movl	-4(%rbp), %eax
	jmp	.L18
.L13:
.LBE3:
	.loc 1 166 9
	movl	$.LC7, %edi
	call	perror
	.loc 1 167 9
	movl	$1, %edi
	call	exit
.L18:
	.loc 1 170 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	openat_с, .-openat_с
.Letext0:
	.file 2 "/usr/include/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-redhat-linux/12/include/stddef.h"
	.file 4 "/usr/include/bits/types/struct_FILE.h"
	.file 5 "/usr/include/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/sys/types.h"
	.file 8 "/usr/include/fcntl.h"
	.file 9 "/usr/include/stdlib.h"
	.file 10 "/usr/include/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4ea
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x12
	.long	.LASF70
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
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.long	0x58
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x6
	.long	.LASF9
	.byte	0x2
	.byte	0x96
	.byte	0x1a
	.long	0x3c
	.uleb128 0x6
	.long	.LASF10
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x64
	.uleb128 0x6
	.long	.LASF11
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x64
	.uleb128 0x14
	.byte	0x8
	.uleb128 0x5
	.long	0x96
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0xa
	.long	0x96
	.uleb128 0x5
	.long	0x9d
	.uleb128 0xb
	.long	0xa2
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF14
	.uleb128 0x6
	.long	.LASF15
	.byte	0x3
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF17
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF18
	.uleb128 0x15
	.long	.LASF71
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x245
	.uleb128 0x1
	.long	.LASF19
	.byte	0x33
	.byte	0x7
	.long	0x58
	.byte	0
	.uleb128 0x1
	.long	.LASF20
	.byte	0x36
	.byte	0x9
	.long	0x91
	.byte	0x8
	.uleb128 0x1
	.long	.LASF21
	.byte	0x37
	.byte	0x9
	.long	0x91
	.byte	0x10
	.uleb128 0x1
	.long	.LASF22
	.byte	0x38
	.byte	0x9
	.long	0x91
	.byte	0x18
	.uleb128 0x1
	.long	.LASF23
	.byte	0x39
	.byte	0x9
	.long	0x91
	.byte	0x20
	.uleb128 0x1
	.long	.LASF24
	.byte	0x3a
	.byte	0x9
	.long	0x91
	.byte	0x28
	.uleb128 0x1
	.long	.LASF25
	.byte	0x3b
	.byte	0x9
	.long	0x91
	.byte	0x30
	.uleb128 0x1
	.long	.LASF26
	.byte	0x3c
	.byte	0x9
	.long	0x91
	.byte	0x38
	.uleb128 0x1
	.long	.LASF27
	.byte	0x3d
	.byte	0x9
	.long	0x91
	.byte	0x40
	.uleb128 0x1
	.long	.LASF28
	.byte	0x40
	.byte	0x9
	.long	0x91
	.byte	0x48
	.uleb128 0x1
	.long	.LASF29
	.byte	0x41
	.byte	0x9
	.long	0x91
	.byte	0x50
	.uleb128 0x1
	.long	.LASF30
	.byte	0x42
	.byte	0x9
	.long	0x91
	.byte	0x58
	.uleb128 0x1
	.long	.LASF31
	.byte	0x44
	.byte	0x16
	.long	0x25e
	.byte	0x60
	.uleb128 0x1
	.long	.LASF32
	.byte	0x46
	.byte	0x14
	.long	0x263
	.byte	0x68
	.uleb128 0x1
	.long	.LASF33
	.byte	0x48
	.byte	0x7
	.long	0x58
	.byte	0x70
	.uleb128 0x1
	.long	.LASF34
	.byte	0x49
	.byte	0x7
	.long	0x58
	.byte	0x74
	.uleb128 0x1
	.long	.LASF35
	.byte	0x4a
	.byte	0xb
	.long	0x77
	.byte	0x78
	.uleb128 0x1
	.long	.LASF36
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x1
	.long	.LASF37
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x1
	.long	.LASF38
	.byte	0x4f
	.byte	0x8
	.long	0x268
	.byte	0x83
	.uleb128 0x1
	.long	.LASF39
	.byte	0x51
	.byte	0xf
	.long	0x278
	.byte	0x88
	.uleb128 0x1
	.long	.LASF40
	.byte	0x59
	.byte	0xd
	.long	0x83
	.byte	0x90
	.uleb128 0x1
	.long	.LASF41
	.byte	0x5b
	.byte	0x17
	.long	0x282
	.byte	0x98
	.uleb128 0x1
	.long	.LASF42
	.byte	0x5c
	.byte	0x19
	.long	0x28c
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF43
	.byte	0x5d
	.byte	0x14
	.long	0x263
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF44
	.byte	0x5e
	.byte	0x9
	.long	0x8f
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF45
	.byte	0x5f
	.byte	0xa
	.long	0xba
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF46
	.byte	0x60
	.byte	0x7
	.long	0x58
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF47
	.byte	0x62
	.byte	0x8
	.long	0x291
	.byte	0xc4
	.byte	0
	.uleb128 0x6
	.long	.LASF48
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xdb
	.uleb128 0x16
	.long	.LASF72
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x8
	.long	.LASF49
	.uleb128 0x5
	.long	0x259
	.uleb128 0x5
	.long	0xdb
	.uleb128 0xc
	.long	0x96
	.long	0x278
	.uleb128 0xd
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x251
	.uleb128 0x8
	.long	.LASF50
	.uleb128 0x5
	.long	0x27d
	.uleb128 0x8
	.long	.LASF51
	.uleb128 0x5
	.long	0x287
	.uleb128 0xc
	.long	0x96
	.long	0x2a1
	.uleb128 0xd
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	0x245
	.uleb128 0xb
	.long	0x2a1
	.uleb128 0xe
	.long	.LASF52
	.byte	0x90
	.long	0x2a1
	.uleb128 0xe
	.long	.LASF53
	.byte	0x91
	.long	0x2a1
	.uleb128 0x6
	.long	.LASF54
	.byte	0x7
	.byte	0x45
	.byte	0x12
	.long	0x6b
	.uleb128 0x9
	.long	.LASF55
	.byte	0x8
	.byte	0xe9
	.long	0x58
	.long	0x2eb
	.uleb128 0x4
	.long	0x58
	.uleb128 0x4
	.long	0xa2
	.uleb128 0x4
	.long	0x58
	.uleb128 0x7
	.byte	0
	.uleb128 0x17
	.long	.LASF56
	.byte	0x9
	.value	0x270
	.byte	0xd
	.long	0x2fe
	.uleb128 0x4
	.long	0x58
	.byte	0
	.uleb128 0xf
	.long	.LASF57
	.value	0x164
	.long	0x58
	.long	0x314
	.uleb128 0x4
	.long	0xa2
	.uleb128 0x7
	.byte	0
	.uleb128 0x9
	.long	.LASF58
	.byte	0x6
	.byte	0xe6
	.long	0x58
	.long	0x329
	.uleb128 0x4
	.long	0x2a1
	.byte	0
	.uleb128 0x18
	.long	.LASF73
	.byte	0x6
	.value	0x324
	.byte	0xd
	.long	0x33c
	.uleb128 0x4
	.long	0xa2
	.byte	0
	.uleb128 0x19
	.long	.LASF74
	.byte	0xa
	.byte	0x25
	.byte	0xd
	.long	0x348
	.uleb128 0x5
	.long	0x58
	.uleb128 0xf
	.long	.LASF59
	.value	0x15e
	.long	0x58
	.long	0x368
	.uleb128 0x4
	.long	0x2a6
	.uleb128 0x4
	.long	0xa7
	.uleb128 0x7
	.byte	0
	.uleb128 0x9
	.long	.LASF60
	.byte	0x8
	.byte	0xd1
	.long	0x58
	.long	0x383
	.uleb128 0x4
	.long	0xa2
	.uleb128 0x4
	.long	0x58
	.uleb128 0x7
	.byte	0
	.uleb128 0x1a
	.long	.LASF75
	.byte	0x1
	.byte	0x78
	.byte	0xb
	.long	0x58
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x441
	.uleb128 0x2
	.long	.LASF61
	.byte	0x78
	.byte	0x19
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.long	.LASF62
	.byte	0x78
	.byte	0x27
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF63
	.byte	0x78
	.byte	0x31
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF64
	.byte	0x78
	.byte	0x3f
	.long	0x2bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.long	.LASF65
	.byte	0x78
	.byte	0x51
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF66
	.byte	0x78
	.byte	0x61
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF67
	.byte	0x78
	.byte	0x6b
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x78
	.byte	0x77
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2
	.long	.LASF69
	.byte	0x78
	.byte	0x83
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x11
	.string	"a"
	.byte	0x7e
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF76
	.byte	0x1
	.byte	0x36
	.byte	0xb
	.long	0x58
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF62
	.byte	0x36
	.byte	0x19
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF63
	.byte	0x36
	.byte	0x23
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.long	.LASF64
	.byte	0x36
	.byte	0x31
	.long	0x2bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF65
	.byte	0x36
	.byte	0x43
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF66
	.byte	0x36
	.byte	0x53
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.long	.LASF67
	.byte	0x36
	.byte	0x5d
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF68
	.byte	0x36
	.byte	0x69
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.long	.LASF69
	.byte	0x36
	.byte	0x75
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x11
	.string	"a"
	.byte	0x3c
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x5
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
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x37
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x19
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
.LASF74:
	.string	"__errno_location"
.LASF35:
	.string	"_old_offset"
.LASF30:
	.string	"_IO_save_end"
.LASF25:
	.string	"_IO_write_end"
.LASF9:
	.string	"__mode_t"
.LASF15:
	.string	"size_t"
.LASF72:
	.string	"_IO_lock_t"
.LASF40:
	.string	"_offset"
.LASF43:
	.string	"_freeres_list"
.LASF55:
	.string	"openat"
.LASF24:
	.string	"_IO_write_ptr"
.LASF19:
	.string	"_flags"
.LASF64:
	.string	"mode"
.LASF26:
	.string	"_IO_buf_base"
.LASF65:
	.string	"file"
.LASF7:
	.string	"short int"
.LASF31:
	.string	"_markers"
.LASF21:
	.string	"_IO_read_end"
.LASF44:
	.string	"_freeres_buf"
.LASF63:
	.string	"oflag"
.LASF66:
	.string	"line"
.LASF13:
	.string	"float"
.LASF53:
	.string	"stderr"
.LASF16:
	.string	"long long int"
.LASF17:
	.string	"long long unsigned int"
.LASF39:
	.string	"_lock"
.LASF8:
	.string	"long int"
.LASF67:
	.string	"st__mo"
.LASF57:
	.string	"printf"
.LASF36:
	.string	"_cur_column"
.LASF73:
	.string	"perror"
.LASF59:
	.string	"fprintf"
.LASF56:
	.string	"exit"
.LASF58:
	.string	"fflush"
.LASF71:
	.string	"_IO_FILE"
.LASF18:
	.string	"long double"
.LASF2:
	.string	"unsigned char"
.LASF6:
	.string	"signed char"
.LASF41:
	.string	"_codecvt"
.LASF75:
	.string	"openat_\321\201"
.LASF54:
	.string	"mode_t"
.LASF4:
	.string	"unsigned int"
.LASF49:
	.string	"_IO_marker"
.LASF38:
	.string	"_shortbuf"
.LASF23:
	.string	"_IO_write_base"
.LASF47:
	.string	"_unused2"
.LASF20:
	.string	"_IO_read_ptr"
.LASF27:
	.string	"_IO_buf_end"
.LASF68:
	.string	"st__if"
.LASF12:
	.string	"char"
.LASF42:
	.string	"_wide_data"
.LASF69:
	.string	"st__re"
.LASF45:
	.string	"__pad5"
.LASF76:
	.string	"open_\321\201"
.LASF3:
	.string	"short unsigned int"
.LASF5:
	.string	"long unsigned int"
.LASF14:
	.string	"double"
.LASF11:
	.string	"__off64_t"
.LASF10:
	.string	"__off_t"
.LASF32:
	.string	"_chain"
.LASF51:
	.string	"_IO_wide_data"
.LASF29:
	.string	"_IO_backup_base"
.LASF61:
	.string	"dirdes"
.LASF62:
	.string	"path"
.LASF34:
	.string	"_flags2"
.LASF46:
	.string	"_mode"
.LASF22:
	.string	"_IO_read_base"
.LASF60:
	.string	"open"
.LASF37:
	.string	"_vtable_offset"
.LASF28:
	.string	"_IO_save_base"
.LASF33:
	.string	"_fileno"
.LASF48:
	.string	"FILE"
.LASF70:
	.string	"GNU C17 12.2.1 20220819 (Red Hat 12.2.1-1) -mtune=generic -march=x86-64 -g"
.LASF52:
	.string	"stdout"
.LASF50:
	.string	"_IO_codecvt"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs"
.LASF0:
	.string	"lib/fcntl_1.c"
	.ident	"GCC: (GNU) 12.2.1 20220819 (Red Hat 12.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
