	.file	"l3p_1.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs" "lib/l3p_1.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"failed in file %s at line # %d\n"
.LC1:
	.string	"from fileno_c errno = %d\n"
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
	.string	" st__if NOT equal STIF_ONE exit(1)"
	.text
	.globl	fileno_c
	.type	fileno_c, @function
fileno_c:
.LFB6:
	.file 1 "lib/l3p_1.c"
	.loc 1 66 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	.loc 1 69 16
	movl	-44(%rbp), %eax
	andl	$1, %eax
	.loc 1 69 8
	testl	%eax, %eax
	je	.L2
.LBB2:
	.loc 1 71 17
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fileno
	movl	%eax, -4(%rbp)
	.loc 1 72 12
	cmpl	$-1, -4(%rbp)
	jne	.L3
	.loc 1 74 24
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 74 16
	testl	%eax, %eax
	je	.L4
	.loc 1 76 17
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 77 63
	call	__errno_location
	.loc 1 77 17
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 78 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 79 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L4:
	.loc 1 81 24
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 81 16
	testl	%eax, %eax
	je	.L5
	.loc 1 83 28
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 83 20
	testl	%eax, %eax
	je	.L6
	.loc 1 84 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L6:
	.loc 1 85 24
	movl	$-1, %eax
	jmp	.L7
.L5:
	.loc 1 87 29
	movl	-48(%rbp), %eax
	andl	$4, %eax
	.loc 1 87 21
	testl	%eax, %eax
	je	.L8
	.loc 1 89 28
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 89 20
	testl	%eax, %eax
	je	.L9
	.loc 1 90 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L9:
	.loc 1 91 22
	call	__errno_location
	.loc 1 91 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L8:
	.loc 1 93 29
	movl	-48(%rbp), %eax
	andl	$1, %eax
	.loc 1 93 21
	testl	%eax, %eax
	je	.L10
	.loc 1 95 28
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 95 20
	testl	%eax, %eax
	je	.L11
	.loc 1 96 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L11:
	.loc 1 97 24
	movl	-4(%rbp), %eax
	jmp	.L7
.L10:
	.loc 1 101 17
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 102 63
	call	__errno_location
	.loc 1 102 17
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 103 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 104 17
	movl	$1, %edi
	call	exit
.L3:
	.loc 1 107 16
	movl	-4(%rbp), %eax
	jmp	.L7
.L2:
.LBE2:
	.loc 1 111 9
	movl	$.LC7, %edi
	call	perror
	.loc 1 112 9
	movl	$1, %edi
	call	exit
.L7:
	.loc 1 115 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	fileno_c, .-fileno_c
.Letext0:
	.file 2 "/usr/include/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-redhat-linux/12/include/stddef.h"
	.file 4 "/usr/include/bits/types/struct_FILE.h"
	.file 5 "/usr/include/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/stdlib.h"
	.file 8 "/usr/include/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3cf
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xf
	.long	.LASF64
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
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
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.long	0x58
	.uleb128 0x2
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
	.uleb128 0x11
	.byte	0x8
	.uleb128 0x3
	.long	0x8a
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x9
	.long	0x8a
	.uleb128 0x3
	.long	0x91
	.uleb128 0xa
	.long	0x96
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x6
	.long	.LASF14
	.byte	0x3
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF17
	.uleb128 0x12
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
	.uleb128 0x6
	.long	.LASF47
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xcf
	.uleb128 0x13
	.long	.LASF66
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x7
	.long	.LASF48
	.uleb128 0x3
	.long	0x24d
	.uleb128 0x3
	.long	0xcf
	.uleb128 0xb
	.long	0x8a
	.long	0x26c
	.uleb128 0xc
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x245
	.uleb128 0x7
	.long	.LASF49
	.uleb128 0x3
	.long	0x271
	.uleb128 0x7
	.long	.LASF50
	.uleb128 0x3
	.long	0x27b
	.uleb128 0xb
	.long	0x8a
	.long	0x295
	.uleb128 0xc
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.long	0x239
	.uleb128 0xa
	.long	0x295
	.uleb128 0xd
	.long	.LASF51
	.byte	0x90
	.long	0x295
	.uleb128 0xd
	.long	.LASF52
	.byte	0x91
	.long	0x295
	.uleb128 0x14
	.long	.LASF53
	.byte	0x7
	.value	0x270
	.byte	0xd
	.long	0x2c6
	.uleb128 0x4
	.long	0x58
	.byte	0
	.uleb128 0x8
	.long	.LASF54
	.value	0x164
	.long	0x58
	.long	0x2dc
	.uleb128 0x4
	.long	0x96
	.uleb128 0xe
	.byte	0
	.uleb128 0x15
	.long	.LASF55
	.byte	0x6
	.byte	0xe6
	.byte	0xc
	.long	0x58
	.long	0x2f2
	.uleb128 0x4
	.long	0x295
	.byte	0
	.uleb128 0x16
	.long	.LASF67
	.byte	0x6
	.value	0x324
	.byte	0xd
	.long	0x305
	.uleb128 0x4
	.long	0x96
	.byte	0
	.uleb128 0x17
	.long	.LASF68
	.byte	0x8
	.byte	0x25
	.byte	0xd
	.long	0x311
	.uleb128 0x3
	.long	0x58
	.uleb128 0x8
	.long	.LASF56
	.value	0x15e
	.long	0x58
	.long	0x331
	.uleb128 0x4
	.long	0x29a
	.uleb128 0x4
	.long	0x9b
	.uleb128 0xe
	.byte	0
	.uleb128 0x8
	.long	.LASF57
	.value	0x329
	.long	0x58
	.long	0x346
	.uleb128 0x4
	.long	0x295
	.byte	0
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.byte	0x41
	.byte	0xb
	.long	0x58
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.long	.LASF58
	.byte	0x1a
	.long	0x295
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF59
	.byte	0x2e
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF60
	.byte	0x3e
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.long	.LASF61
	.byte	0x48
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF62
	.byte	0x54
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.long	.LASF63
	.byte	0x60
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1a
	.string	"a"
	.byte	0x1
	.byte	0x47
	.byte	0xd
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x21
	.sleb128 65
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x37
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
	.uleb128 0xe
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
.LASF68:
	.string	"__errno_location"
.LASF34:
	.string	"_old_offset"
.LASF57:
	.string	"fileno"
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
.LASF42:
	.string	"_freeres_list"
.LASF23:
	.string	"_IO_write_ptr"
.LASF18:
	.string	"_flags"
.LASF25:
	.string	"_IO_buf_base"
.LASF59:
	.string	"file"
.LASF30:
	.string	"_markers"
.LASF20:
	.string	"_IO_read_end"
.LASF43:
	.string	"_freeres_buf"
.LASF60:
	.string	"line"
.LASF12:
	.string	"float"
.LASF52:
	.string	"stderr"
.LASF15:
	.string	"long long int"
.LASF38:
	.string	"_lock"
.LASF8:
	.string	"long int"
.LASF61:
	.string	"st__mo"
.LASF54:
	.string	"printf"
.LASF58:
	.string	"stream"
.LASF35:
	.string	"_cur_column"
.LASF67:
	.string	"perror"
.LASF56:
	.string	"fprintf"
.LASF53:
	.string	"exit"
.LASF55:
	.string	"fflush"
.LASF65:
	.string	"_IO_FILE"
.LASF17:
	.string	"long double"
.LASF2:
	.string	"unsigned char"
.LASF69:
	.string	"fileno_c"
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
.LASF62:
	.string	"st__if"
.LASF11:
	.string	"char"
.LASF41:
	.string	"_wide_data"
.LASF63:
	.string	"st__re"
.LASF44:
	.string	"__pad5"
.LASF3:
	.string	"short unsigned int"
.LASF5:
	.string	"long unsigned int"
.LASF13:
	.string	"double"
.LASF10:
	.string	"__off64_t"
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
.LASF27:
	.string	"_IO_save_base"
.LASF32:
	.string	"_fileno"
.LASF47:
	.string	"FILE"
.LASF64:
	.string	"GNU C17 12.2.1 20220819 (Red Hat 12.2.1-1) -mtune=generic -march=x86-64 -g"
.LASF51:
	.string	"stdout"
.LASF49:
	.string	"_IO_codecvt"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs"
.LASF0:
	.string	"lib/l3p_1.c"
	.ident	"GCC: (GNU) 12.2.1 20220819 (Red Hat 12.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
