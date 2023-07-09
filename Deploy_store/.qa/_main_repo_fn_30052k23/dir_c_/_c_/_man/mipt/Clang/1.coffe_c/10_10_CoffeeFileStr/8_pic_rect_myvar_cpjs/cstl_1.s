	.file	"cstl_1.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs" "lib/cstl_1.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"failed in file %s at line # %d\n"
	.align 8
.LC1:
	.string	"from cstl_1_ls dir_path = %s, errno = %d\n"
.LC2:
	.string	"exit(errno) with"
.LC3:
	.string	"."
.LC4:
	.string	".."
	.text
	.globl	cstl_1_ls_a
	.type	cstl_1_ls_a, @function
cstl_1_ls_a:
.LFB6:
	.file 1 "lib/cstl_1.c"
	.loc 1 37 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	.loc 1 42 16
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	opendir
	movq	%rax, -8(%rbp)
	.loc 1 42 8
	cmpq	$0, -8(%rbp)
	jne	.L4
	.loc 1 44 9
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 45 81
	call	__errno_location
	.loc 1 45 9
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-40(%rbp), %rdx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 46 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 48 16
	movl	$-1, %eax
	jmp	.L3
.L6:
	.loc 1 55 18
	movq	-16(%rbp), %rax
	addq	$19, %rax
	movq	%rax, -24(%rbp)
	.loc 1 57 17
	movq	-24(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strcmp
	.loc 1 57 16
	testl	%eax, %eax
	je	.L4
	.loc 1 57 38 discriminator 1
	movq	-24(%rbp), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	strcmp
	.loc 1 57 35 discriminator 1
	testl	%eax, %eax
	je	.L4
	.loc 1 59 17
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	puts
.L4:
	.loc 1 53 25
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	readdir
	movq	%rax, -16(%rbp)
	.loc 1 53 39
	cmpq	$0, -16(%rbp)
	jne	.L6
	.loc 1 62 9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	closedir
	.loc 1 64 12
	movl	$0, %eax
.L3:
	.loc 1 65 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	cstl_1_ls_a, .-cstl_1_ls_a
	.globl	cstl_1_ls_c
	.type	cstl_1_ls_c, @function
cstl_1_ls_c:
.LFB7:
	.loc 1 68 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	.loc 1 73 16
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	opendir
	movq	%rax, -8(%rbp)
	.loc 1 73 8
	cmpq	$0, -8(%rbp)
	jne	.L9
	.loc 1 75 9
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 76 81
	call	__errno_location
	.loc 1 76 9
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-40(%rbp), %rdx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 77 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 78 14
	call	__errno_location
	.loc 1 78 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L11:
	.loc 1 86 18
	movq	-16(%rbp), %rax
	addq	$19, %rax
	movq	%rax, -24(%rbp)
	.loc 1 88 17
	movq	-24(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strcmp
	.loc 1 88 16
	testl	%eax, %eax
	je	.L9
	.loc 1 88 38 discriminator 1
	movq	-24(%rbp), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	strcmp
	.loc 1 88 35 discriminator 1
	testl	%eax, %eax
	je	.L9
	.loc 1 90 17
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	puts
.L9:
	.loc 1 84 25
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	readdir
	movq	%rax, -16(%rbp)
	.loc 1 84 39
	cmpq	$0, -16(%rbp)
	jne	.L11
	.loc 1 93 9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	closedir
	.loc 1 95 12
	movl	$0, %eax
	.loc 1 96 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	cstl_1_ls_c, .-cstl_1_ls_c
	.globl	cstl_1_ls_a_b
	.type	cstl_1_ls_a_b, @function
cstl_1_ls_a_b:
.LFB8:
	.loc 1 99 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	.loc 1 104 16
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	opendir
	movq	%rax, -8(%rbp)
	.loc 1 104 8
	cmpq	$0, -8(%rbp)
	jne	.L16
	.loc 1 106 9
	movq	stderr(%rip), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 107 81
	call	__errno_location
	.loc 1 107 9
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-40(%rbp), %rdx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 108 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 110 16
	movl	$-1, %eax
	jmp	.L15
.L18:
	.loc 1 117 18
	movq	-16(%rbp), %rax
	addq	$19, %rax
	movq	%rax, -24(%rbp)
	.loc 1 119 17
	movq	-24(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strcmp
	.loc 1 119 16
	testl	%eax, %eax
	je	.L16
	.loc 1 119 38 discriminator 1
	movq	-24(%rbp), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	strcmp
	.loc 1 119 35 discriminator 1
	testl	%eax, %eax
	je	.L16
	.loc 1 121 17
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
.LVL0:
.L16:
	.loc 1 115 25
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	readdir
	movq	%rax, -16(%rbp)
	.loc 1 115 39
	cmpq	$0, -16(%rbp)
	jne	.L18
	.loc 1 124 9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	closedir
	.loc 1 126 12
	movl	$0, %eax
.L15:
	.loc 1 127 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	cstl_1_ls_a_b, .-cstl_1_ls_a_b
	.globl	cstl_1_ls_ab
	.type	cstl_1_ls_ab, @function
cstl_1_ls_ab:
.LFB9:
	.loc 1 130 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	.loc 1 135 16
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	opendir
	movq	%rax, -8(%rbp)
	.loc 1 135 8
	cmpq	$0, -8(%rbp)
	jne	.L22
	.loc 1 137 9
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
.LVL1:
	jmp	.L21
.L24:
	.loc 1 145 18
	movq	-16(%rbp), %rax
	addq	$19, %rax
	movq	%rax, -24(%rbp)
	.loc 1 147 17
	movq	-24(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strcmp
	.loc 1 147 16
	testl	%eax, %eax
	je	.L22
	.loc 1 147 38 discriminator 1
	movq	-24(%rbp), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	strcmp
	.loc 1 147 35 discriminator 1
	testl	%eax, %eax
	je	.L22
	.loc 1 149 17
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	puts
.L22:
	.loc 1 143 25
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	readdir
	movq	%rax, -16(%rbp)
	.loc 1 143 39
	cmpq	$0, -16(%rbp)
	jne	.L24
	.loc 1 152 9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	closedir
.L21:
	.loc 1 154 12
	movl	$0, %eax
	.loc 1 155 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	cstl_1_ls_ab, .-cstl_1_ls_ab
.Letext0:
	.file 2 "/usr/include/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-redhat-linux/12/include/stddef.h"
	.file 4 "/usr/include/bits/types/struct_FILE.h"
	.file 5 "/usr/include/bits/types/FILE.h"
	.file 6 "/usr/include/bits/dirent.h"
	.file 7 "/usr/include/stdlib.h"
	.file 8 "/usr/include/dirent.h"
	.file 9 "/usr/include/string.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x601
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x10
	.long	.LASF75
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
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xe
	.long	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x7
	.long	.LASF9
	.byte	0x2
	.byte	0x94
	.byte	0x19
	.long	0x43
	.uleb128 0x7
	.long	.LASF10
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x64
	.uleb128 0x7
	.long	.LASF11
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x64
	.uleb128 0x12
	.byte	0x8
	.uleb128 0x4
	.long	0x96
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0xe
	.long	0x96
	.uleb128 0x4
	.long	0x9d
	.uleb128 0xf
	.long	0xa2
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF14
	.uleb128 0x7
	.long	.LASF15
	.byte	0x3
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF17
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF18
	.uleb128 0x13
	.long	.LASF52
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x262
	.uleb128 0x1
	.long	.LASF19
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x58
	.byte	0
	.uleb128 0x1
	.long	.LASF20
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x91
	.byte	0x8
	.uleb128 0x1
	.long	.LASF21
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x91
	.byte	0x10
	.uleb128 0x1
	.long	.LASF22
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x91
	.byte	0x18
	.uleb128 0x1
	.long	.LASF23
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x91
	.byte	0x20
	.uleb128 0x1
	.long	.LASF24
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x91
	.byte	0x28
	.uleb128 0x1
	.long	.LASF25
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x91
	.byte	0x30
	.uleb128 0x1
	.long	.LASF26
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x91
	.byte	0x38
	.uleb128 0x1
	.long	.LASF27
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x91
	.byte	0x40
	.uleb128 0x1
	.long	.LASF28
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x91
	.byte	0x48
	.uleb128 0x1
	.long	.LASF29
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x91
	.byte	0x50
	.uleb128 0x1
	.long	.LASF30
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x91
	.byte	0x58
	.uleb128 0x1
	.long	.LASF31
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x27b
	.byte	0x60
	.uleb128 0x1
	.long	.LASF32
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x280
	.byte	0x68
	.uleb128 0x1
	.long	.LASF33
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x58
	.byte	0x70
	.uleb128 0x1
	.long	.LASF34
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x58
	.byte	0x74
	.uleb128 0x1
	.long	.LASF35
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x77
	.byte	0x78
	.uleb128 0x1
	.long	.LASF36
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x1
	.long	.LASF37
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x1
	.long	.LASF38
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x285
	.byte	0x83
	.uleb128 0x1
	.long	.LASF39
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x295
	.byte	0x88
	.uleb128 0x1
	.long	.LASF40
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x83
	.byte	0x90
	.uleb128 0x1
	.long	.LASF41
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x29f
	.byte	0x98
	.uleb128 0x1
	.long	.LASF42
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x2a9
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF43
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x280
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF44
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x8f
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF45
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0xba
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF46
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x58
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF47
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x2ae
	.byte	0xc4
	.byte	0
	.uleb128 0x7
	.long	.LASF48
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xdb
	.uleb128 0x14
	.long	.LASF76
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x8
	.long	.LASF49
	.uleb128 0x4
	.long	0x276
	.uleb128 0x4
	.long	0xdb
	.uleb128 0xb
	.long	0x96
	.long	0x295
	.uleb128 0xc
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x26e
	.uleb128 0x8
	.long	.LASF50
	.uleb128 0x4
	.long	0x29a
	.uleb128 0x8
	.long	.LASF51
	.uleb128 0x4
	.long	0x2a4
	.uleb128 0xb
	.long	0x96
	.long	0x2be
	.uleb128 0xc
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	0x262
	.uleb128 0xf
	.long	0x2be
	.uleb128 0x15
	.long	.LASF77
	.byte	0xa
	.byte	0x91
	.byte	0xe
	.long	0x2be
	.uleb128 0x16
	.long	.LASF53
	.value	0x118
	.byte	0x6
	.byte	0x16
	.byte	0x8
	.long	0x324
	.uleb128 0x1
	.long	.LASF54
	.byte	0x6
	.byte	0x19
	.byte	0xd
	.long	0x6b
	.byte	0
	.uleb128 0x1
	.long	.LASF55
	.byte	0x6
	.byte	0x1a
	.byte	0xd
	.long	0x77
	.byte	0x8
	.uleb128 0x1
	.long	.LASF56
	.byte	0x6
	.byte	0x1f
	.byte	0x18
	.long	0x35
	.byte	0x10
	.uleb128 0x1
	.long	.LASF57
	.byte	0x6
	.byte	0x20
	.byte	0x13
	.long	0x2e
	.byte	0x12
	.uleb128 0x1
	.long	.LASF58
	.byte	0x6
	.byte	0x21
	.byte	0xa
	.long	0x324
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.long	0x96
	.long	0x334
	.uleb128 0xc
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x17
	.string	"DIR"
	.byte	0x8
	.byte	0x7f
	.byte	0x1c
	.long	0x340
	.uleb128 0x8
	.long	.LASF59
	.uleb128 0x18
	.long	.LASF60
	.byte	0x7
	.value	0x270
	.byte	0xd
	.long	0x358
	.uleb128 0x5
	.long	0x58
	.byte	0
	.uleb128 0x9
	.long	.LASF61
	.byte	0x8
	.byte	0x95
	.byte	0xc
	.long	0x58
	.long	0x36e
	.uleb128 0x5
	.long	0x36e
	.byte	0
	.uleb128 0x4
	.long	0x334
	.uleb128 0x9
	.long	.LASF62
	.byte	0x8
	.byte	0xa2
	.byte	0x17
	.long	0x389
	.long	0x389
	.uleb128 0x5
	.long	0x36e
	.byte	0
	.uleb128 0x4
	.long	0x2d4
	.uleb128 0x9
	.long	.LASF63
	.byte	0x9
	.byte	0x9c
	.byte	0xc
	.long	0x58
	.long	0x3a9
	.uleb128 0x5
	.long	0xa2
	.uleb128 0x5
	.long	0xa2
	.byte	0
	.uleb128 0x19
	.long	.LASF78
	.byte	0xa
	.value	0x324
	.byte	0xd
	.long	0x3bc
	.uleb128 0x5
	.long	0xa2
	.byte	0
	.uleb128 0x1a
	.long	.LASF79
	.byte	0xb
	.byte	0x25
	.byte	0xd
	.long	0x3c8
	.uleb128 0x4
	.long	0x58
	.uleb128 0x1b
	.long	.LASF64
	.byte	0xa
	.value	0x15e
	.byte	0xc
	.long	0x58
	.long	0x3ea
	.uleb128 0x5
	.long	0x2c3
	.uleb128 0x5
	.long	0xa7
	.uleb128 0x1c
	.byte	0
	.uleb128 0x9
	.long	.LASF65
	.byte	0x8
	.byte	0x86
	.byte	0xd
	.long	0x36e
	.long	0x400
	.uleb128 0x5
	.long	0xa2
	.byte	0
	.uleb128 0xd
	.long	.LASF72
	.byte	0x81
	.long	0x58
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x484
	.uleb128 0x3
	.long	.LASF66
	.byte	0x81
	.byte	0x1e
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.long	.LASF67
	.byte	0x81
	.byte	0x2c
	.long	0x493
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.long	.LASF68
	.byte	0x81
	.byte	0x46
	.long	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.long	.LASF69
	.byte	0x81
	.byte	0x56
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xa
	.string	"dir"
	.byte	0x83
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.long	.LASF70
	.byte	0x84
	.byte	0x14
	.long	0x389
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.long	.LASF71
	.byte	0x85
	.byte	0xb
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1d
	.long	0x58
	.long	0x493
	.uleb128 0x5
	.long	0x91
	.byte	0
	.uleb128 0x4
	.long	0x484
	.uleb128 0xd
	.long	.LASF73
	.byte	0x62
	.long	0x58
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x51c
	.uleb128 0x3
	.long	.LASF66
	.byte	0x62
	.byte	0x25
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.string	"cb"
	.byte	0x1
	.byte	0x62
	.byte	0x33
	.long	0x493
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.long	.LASF68
	.byte	0x62
	.byte	0x4b
	.long	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.long	.LASF69
	.byte	0x62
	.byte	0x5b
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xa
	.string	"dir"
	.byte	0x64
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.long	.LASF70
	.byte	0x65
	.byte	0x14
	.long	0x389
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.long	.LASF71
	.byte	0x66
	.byte	0xb
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xd
	.long	.LASF74
	.byte	0x43
	.long	0x58
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x591
	.uleb128 0x3
	.long	.LASF66
	.byte	0x43
	.byte	0x23
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.long	.LASF68
	.byte	0x43
	.byte	0x39
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.long	.LASF69
	.byte	0x43
	.byte	0x49
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.string	"dir"
	.byte	0x45
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.long	.LASF70
	.byte	0x46
	.byte	0x14
	.long	0x389
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.long	.LASF71
	.byte	0x47
	.byte	0xb
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1f
	.long	.LASF80
	.byte	0x1
	.byte	0x24
	.byte	0xb
	.long	0x58
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.long	.LASF66
	.byte	0x24
	.byte	0x23
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.long	.LASF68
	.byte	0x24
	.byte	0x39
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.long	.LASF69
	.byte	0x24
	.byte	0x49
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.string	"dir"
	.byte	0x26
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.long	.LASF70
	.byte	0x27
	.byte	0x14
	.long	0x389
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.long	.LASF71
	.byte	0x28
	.byte	0xb
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1a
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
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
.LASF80:
	.string	"cstl_1_ls_a"
.LASF79:
	.string	"__errno_location"
.LASF74:
	.string	"cstl_1_ls_c"
.LASF62:
	.string	"readdir"
.LASF35:
	.string	"_old_offset"
.LASF59:
	.string	"__dirstream"
.LASF30:
	.string	"_IO_save_end"
.LASF25:
	.string	"_IO_write_end"
.LASF7:
	.string	"short int"
.LASF15:
	.string	"size_t"
.LASF76:
	.string	"_IO_lock_t"
.LASF40:
	.string	"_offset"
.LASF53:
	.string	"dirent"
.LASF24:
	.string	"_IO_write_ptr"
.LASF19:
	.string	"_flags"
.LASF26:
	.string	"_IO_buf_base"
.LASF68:
	.string	"file"
.LASF31:
	.string	"_markers"
.LASF21:
	.string	"_IO_read_end"
.LASF44:
	.string	"_freeres_buf"
.LASF69:
	.string	"line"
.LASF56:
	.string	"d_reclen"
.LASF65:
	.string	"opendir"
.LASF57:
	.string	"d_type"
.LASF13:
	.string	"float"
.LASF77:
	.string	"stderr"
.LASF16:
	.string	"long long int"
.LASF39:
	.string	"_lock"
.LASF8:
	.string	"long int"
.LASF54:
	.string	"d_ino"
.LASF36:
	.string	"_cur_column"
.LASF78:
	.string	"perror"
.LASF64:
	.string	"fprintf"
.LASF71:
	.string	"name"
.LASF60:
	.string	"exit"
.LASF37:
	.string	"_vtable_offset"
.LASF70:
	.string	"entry"
.LASF52:
	.string	"_IO_FILE"
.LASF18:
	.string	"long double"
.LASF2:
	.string	"unsigned char"
.LASF67:
	.string	"cb_a"
.LASF6:
	.string	"signed char"
.LASF41:
	.string	"_codecvt"
.LASF17:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF49:
	.string	"_IO_marker"
.LASF38:
	.string	"_shortbuf"
.LASF23:
	.string	"_IO_write_base"
.LASF72:
	.string	"cstl_1_ls_ab"
.LASF20:
	.string	"_IO_read_ptr"
.LASF27:
	.string	"_IO_buf_end"
.LASF12:
	.string	"char"
.LASF55:
	.string	"d_off"
.LASF42:
	.string	"_wide_data"
.LASF43:
	.string	"_freeres_list"
.LASF73:
	.string	"cstl_1_ls_a_b"
.LASF47:
	.string	"_unused2"
.LASF45:
	.string	"__pad5"
.LASF9:
	.string	"__ino_t"
.LASF58:
	.string	"d_name"
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
.LASF63:
	.string	"strcmp"
.LASF34:
	.string	"_flags2"
.LASF46:
	.string	"_mode"
.LASF22:
	.string	"_IO_read_base"
.LASF66:
	.string	"dir_path"
.LASF28:
	.string	"_IO_save_base"
.LASF33:
	.string	"_fileno"
.LASF48:
	.string	"FILE"
.LASF61:
	.string	"closedir"
.LASF75:
	.string	"GNU C17 12.2.1 20220819 (Red Hat 12.2.1-1) -mtune=generic -march=x86-64 -g"
.LASF50:
	.string	"_IO_codecvt"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs"
.LASF0:
	.string	"lib/cstl_1.c"
	.ident	"GCC: (GNU) 12.2.1 20220819 (Red Hat 12.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
