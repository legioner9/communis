	.file	"lc_in.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs" "lib/lc_in.c"
	.section	.rodata
.LC0:
	.string	"Unknown host %s.\n"
	.text
	.globl	init_sockaddr_lc_in
	.type	init_sockaddr_lc_in, @function
init_sockaddr_lc_in:
.LFB6:
	.file 1 "lib/lc_in.c"
	.loc 1 46 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movw	%ax, -36(%rbp)
	.loc 1 49 20
	movq	-24(%rbp), %rax
	movw	$2, (%rax)
	.loc 1 50 20
	movzwl	-36(%rbp), %eax
	movl	%eax, %edi
	call	htons
	.loc 1 50 18
	movq	-24(%rbp), %rdx
	movw	%ax, 2(%rdx)
	.loc 1 51 14
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	gethostbyname
	movq	%rax, -8(%rbp)
	.loc 1 52 6
	cmpq	$0, -8(%rbp)
	jne	.L2
	.loc 1 54 7
	movq	stderr(%rip), %rax
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 55 7
	movl	$1, %edi
	call	exit
.L2:
	.loc 1 57 48
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 57 21
	movq	(%rax), %rdx
	.loc 1 57 18
	movq	-24(%rbp), %rax
	movl	(%rdx), %edx
	movl	%edx, 4(%rax)
	.loc 1 58 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	init_sockaddr_lc_in, .-init_sockaddr_lc_in
	.section	.rodata
.LC1:
	.string	"socket"
.LC2:
	.string	"bind"
	.text
	.globl	make_socket_lc_in
	.type	make_socket_lc_in, @function
make_socket_lc_in:
.LFB7:
	.loc 1 61 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, %eax
	movw	%ax, -36(%rbp)
	.loc 1 66 10
	movl	$0, %edx
	movl	$1, %esi
	movl	$2, %edi
	call	socket
	movl	%eax, -4(%rbp)
	.loc 1 67 6
	cmpl	$0, -4(%rbp)
	jns	.L4
	.loc 1 69 7
	movl	$.LC1, %edi
	call	perror
	.loc 1 70 7
	movl	$1, %edi
	call	exit
.L4:
	.loc 1 74 19
	movw	$2, -32(%rbp)
	.loc 1 75 19
	movzwl	-36(%rbp), %eax
	movl	%eax, %edi
	call	htons
	.loc 1 75 17
	movw	%ax, -30(%rbp)
	.loc 1 76 26
	movl	$0, %edi
	call	htonl
	.loc 1 76 24
	movl	%eax, -28(%rbp)
	.loc 1 77 7
	leaq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	movl	$16, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	bind
	.loc 1 77 6
	testl	%eax, %eax
	jns	.L5
	.loc 1 79 7
	movl	$.LC2, %edi
	call	perror
	.loc 1 80 7
	movl	$1, %edi
	call	exit
.L5:
	.loc 1 83 10
	movl	-4(%rbp), %eax
	.loc 1 84 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	make_socket_lc_in, .-make_socket_lc_in
.Letext0:
	.file 2 "/usr/include/bits/types.h"
	.file 3 "/usr/include/bits/stdint-uintn.h"
	.file 4 "/usr/lib/gcc/x86_64-redhat-linux/12/include/stddef.h"
	.file 5 "/usr/include/bits/types/struct_FILE.h"
	.file 6 "/usr/include/bits/types/FILE.h"
	.file 7 "/usr/include/bits/socket.h"
	.file 8 "/usr/include/bits/sockaddr.h"
	.file 9 "/usr/include/netinet/in.h"
	.file 10 "/usr/include/netdb.h"
	.file 11 "/usr/include/sys/socket.h"
	.file 12 "/usr/include/stdlib.h"
	.file 13 "/usr/include/stdio.h"
	.file 14 "/usr/include/bits/socket_type.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5ec
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x11
	.long	.LASF98
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
	.uleb128 0x3
	.long	.LASF8
	.byte	0x2
	.byte	0x28
	.byte	0x1c
	.long	0x35
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF9
	.byte	0x2
	.byte	0x2a
	.byte	0x16
	.long	0x3c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.long	.LASF11
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x77
	.uleb128 0x3
	.long	.LASF12
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x77
	.uleb128 0x13
	.byte	0x8
	.uleb128 0x5
	.long	0x9d
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0xf
	.long	0x9d
	.uleb128 0x3
	.long	.LASF14
	.byte	0x2
	.byte	0xd2
	.byte	0x17
	.long	0x3c
	.uleb128 0x5
	.long	0xa4
	.uleb128 0x10
	.long	0xb5
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x19
	.byte	0x14
	.long	0x58
	.uleb128 0x3
	.long	.LASF16
	.byte	0x3
	.byte	0x1a
	.byte	0x14
	.long	0x6b
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF17
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF18
	.uleb128 0x3
	.long	.LASF19
	.byte	0x4
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF20
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF21
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF22
	.uleb128 0x7
	.long	.LASF67
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.long	0x28c
	.uleb128 0x1
	.long	.LASF23
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x64
	.byte	0
	.uleb128 0x1
	.long	.LASF24
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x98
	.byte	0x8
	.uleb128 0x1
	.long	.LASF25
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x98
	.byte	0x10
	.uleb128 0x1
	.long	.LASF26
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x98
	.byte	0x18
	.uleb128 0x1
	.long	.LASF27
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x98
	.byte	0x20
	.uleb128 0x1
	.long	.LASF28
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x98
	.byte	0x28
	.uleb128 0x1
	.long	.LASF29
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x98
	.byte	0x30
	.uleb128 0x1
	.long	.LASF30
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x98
	.byte	0x38
	.uleb128 0x1
	.long	.LASF31
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x98
	.byte	0x40
	.uleb128 0x1
	.long	.LASF32
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x98
	.byte	0x48
	.uleb128 0x1
	.long	.LASF33
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x98
	.byte	0x50
	.uleb128 0x1
	.long	.LASF34
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x98
	.byte	0x58
	.uleb128 0x1
	.long	.LASF35
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x2a5
	.byte	0x60
	.uleb128 0x1
	.long	.LASF36
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x2aa
	.byte	0x68
	.uleb128 0x1
	.long	.LASF37
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x64
	.byte	0x70
	.uleb128 0x1
	.long	.LASF38
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x64
	.byte	0x74
	.uleb128 0x1
	.long	.LASF39
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x7e
	.byte	0x78
	.uleb128 0x1
	.long	.LASF40
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x1
	.long	.LASF41
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x1
	.long	.LASF42
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x2af
	.byte	0x83
	.uleb128 0x1
	.long	.LASF43
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x2bf
	.byte	0x88
	.uleb128 0x1
	.long	.LASF44
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x8a
	.byte	0x90
	.uleb128 0x1
	.long	.LASF45
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x2c9
	.byte	0x98
	.uleb128 0x1
	.long	.LASF46
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x2d3
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF47
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x2aa
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF48
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x96
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF49
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0xe5
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF50
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x64
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF51
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2d8
	.byte	0xc4
	.byte	0
	.uleb128 0x3
	.long	.LASF52
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0x106
	.uleb128 0x14
	.long	.LASF99
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF53
	.uleb128 0x5
	.long	0x2a0
	.uleb128 0x5
	.long	0x106
	.uleb128 0x8
	.long	0x9d
	.long	0x2bf
	.uleb128 0x9
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x298
	.uleb128 0xb
	.long	.LASF54
	.uleb128 0x5
	.long	0x2c4
	.uleb128 0xb
	.long	.LASF55
	.uleb128 0x5
	.long	0x2ce
	.uleb128 0x8
	.long	0x9d
	.long	0x2e8
	.uleb128 0x9
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	0x28c
	.uleb128 0x10
	.long	0x2e8
	.uleb128 0x15
	.long	.LASF100
	.byte	0xd
	.byte	0x91
	.byte	0xe
	.long	0x2e8
	.uleb128 0x3
	.long	.LASF56
	.byte	0x7
	.byte	0x21
	.byte	0x15
	.long	0xa9
	.uleb128 0x16
	.long	.LASF101
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0xe
	.byte	0x18
	.byte	0x6
	.long	0x357
	.uleb128 0x6
	.long	.LASF57
	.byte	0x1
	.uleb128 0x6
	.long	.LASF58
	.byte	0x2
	.uleb128 0x6
	.long	.LASF59
	.byte	0x3
	.uleb128 0x6
	.long	.LASF60
	.byte	0x4
	.uleb128 0x6
	.long	.LASF61
	.byte	0x5
	.uleb128 0x6
	.long	.LASF62
	.byte	0x6
	.uleb128 0x6
	.long	.LASF63
	.byte	0xa
	.uleb128 0x17
	.long	.LASF64
	.long	0x80000
	.uleb128 0x18
	.long	.LASF65
	.value	0x800
	.byte	0
	.uleb128 0x3
	.long	.LASF66
	.byte	0x8
	.byte	0x1c
	.byte	0x1c
	.long	0x35
	.uleb128 0x7
	.long	.LASF68
	.byte	0x10
	.byte	0x7
	.byte	0xb6
	.long	0x38a
	.uleb128 0x1
	.long	.LASF69
	.byte	0x7
	.byte	0xb8
	.byte	0x5
	.long	0x357
	.byte	0
	.uleb128 0x1
	.long	.LASF70
	.byte	0x7
	.byte	0xb9
	.byte	0xa
	.long	0x38f
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.long	0x363
	.uleb128 0x8
	.long	0x9d
	.long	0x39f
	.uleb128 0x9
	.long	0x43
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.long	.LASF71
	.byte	0x9
	.byte	0x1e
	.byte	0x12
	.long	0xcb
	.uleb128 0x7
	.long	.LASF72
	.byte	0x4
	.byte	0x9
	.byte	0x1f
	.long	0x3c5
	.uleb128 0x1
	.long	.LASF73
	.byte	0x9
	.byte	0x21
	.byte	0xf
	.long	0x39f
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF74
	.byte	0x9
	.byte	0x7b
	.byte	0x12
	.long	0xbf
	.uleb128 0x7
	.long	.LASF75
	.byte	0x10
	.byte	0x9
	.byte	0xf5
	.long	0x412
	.uleb128 0x1
	.long	.LASF76
	.byte	0x9
	.byte	0xf7
	.byte	0x5
	.long	0x357
	.byte	0
	.uleb128 0x1
	.long	.LASF77
	.byte	0x9
	.byte	0xf8
	.byte	0xf
	.long	0x3c5
	.byte	0x2
	.uleb128 0x1
	.long	.LASF78
	.byte	0x9
	.byte	0xf9
	.byte	0x14
	.long	0x3ab
	.byte	0x4
	.uleb128 0x1
	.long	.LASF79
	.byte	0x9
	.byte	0xfc
	.byte	0x13
	.long	0x412
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x2e
	.long	0x422
	.uleb128 0x9
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	0x98
	.uleb128 0x7
	.long	.LASF80
	.byte	0x20
	.byte	0xa
	.byte	0x62
	.long	0x475
	.uleb128 0x1
	.long	.LASF81
	.byte	0xa
	.byte	0x64
	.byte	0x9
	.long	0x98
	.byte	0
	.uleb128 0x1
	.long	.LASF82
	.byte	0xa
	.byte	0x65
	.byte	0xa
	.long	0x422
	.byte	0x8
	.uleb128 0x1
	.long	.LASF83
	.byte	0xa
	.byte	0x66
	.byte	0x7
	.long	0x64
	.byte	0x10
	.uleb128 0x1
	.long	.LASF84
	.byte	0xa
	.byte	0x67
	.byte	0x7
	.long	0x64
	.byte	0x14
	.uleb128 0x1
	.long	.LASF85
	.byte	0xa
	.byte	0x68
	.byte	0xa
	.long	0x422
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	.LASF86
	.byte	0xb
	.byte	0x70
	.byte	0xc
	.long	0x64
	.long	0x495
	.uleb128 0x4
	.long	0x64
	.uleb128 0x4
	.long	0x495
	.uleb128 0x4
	.long	0x2fe
	.byte	0
	.uleb128 0x5
	.long	0x38a
	.uleb128 0xd
	.long	.LASF87
	.byte	0x9
	.value	0x181
	.byte	0x11
	.long	0xcb
	.long	0x4b1
	.uleb128 0x4
	.long	0xcb
	.byte	0
	.uleb128 0x19
	.long	.LASF102
	.byte	0xd
	.value	0x324
	.byte	0xd
	.long	0x4c4
	.uleb128 0x4
	.long	0xb5
	.byte	0
	.uleb128 0xc
	.long	.LASF88
	.byte	0xb
	.byte	0x66
	.byte	0xc
	.long	0x64
	.long	0x4e4
	.uleb128 0x4
	.long	0x64
	.uleb128 0x4
	.long	0x64
	.uleb128 0x4
	.long	0x64
	.byte	0
	.uleb128 0x1a
	.long	.LASF89
	.byte	0xc
	.value	0x270
	.byte	0xd
	.long	0x4f7
	.uleb128 0x4
	.long	0x64
	.byte	0
	.uleb128 0xd
	.long	.LASF90
	.byte	0xd
	.value	0x15e
	.byte	0xc
	.long	0x64
	.long	0x514
	.uleb128 0x4
	.long	0x2ed
	.uleb128 0x4
	.long	0xba
	.uleb128 0x1b
	.byte	0
	.uleb128 0xc
	.long	.LASF91
	.byte	0xa
	.byte	0x8e
	.byte	0x18
	.long	0x52a
	.long	0x52a
	.uleb128 0x4
	.long	0xb5
	.byte	0
	.uleb128 0x5
	.long	0x427
	.uleb128 0xd
	.long	.LASF92
	.byte	0x9
	.value	0x183
	.byte	0x11
	.long	0xbf
	.long	0x546
	.uleb128 0x4
	.long	0xbf
	.byte	0
	.uleb128 0x1c
	.long	.LASF103
	.byte	0x1
	.byte	0x3c
	.byte	0xb
	.long	0x64
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x593
	.uleb128 0xa
	.long	.LASF95
	.byte	0x3c
	.byte	0x27
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.long	.LASF93
	.byte	0x3e
	.byte	0x7
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.long	.LASF94
	.byte	0x3f
	.byte	0x16
	.long	0x3d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1d
	.long	.LASF104
	.byte	0x1
	.byte	0x2d
	.byte	0xc
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ea
	.uleb128 0xa
	.long	.LASF94
	.byte	0x2d
	.byte	0x35
	.long	0x5ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.long	.LASF96
	.byte	0x2d
	.byte	0x47
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.long	.LASF95
	.byte	0x2d
	.byte	0x5a
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.long	.LASF97
	.byte	0x2f
	.byte	0x13
	.long	0x52a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.long	0x3d1
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
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
.LASF22:
	.string	"long double"
.LASF39:
	.string	"_old_offset"
.LASF14:
	.string	"__socklen_t"
.LASF34:
	.string	"_IO_save_end"
.LASF29:
	.string	"_IO_write_end"
.LASF7:
	.string	"short int"
.LASF19:
	.string	"size_t"
.LASF99:
	.string	"_IO_lock_t"
.LASF44:
	.string	"_offset"
.LASF28:
	.string	"_IO_write_ptr"
.LASF83:
	.string	"h_addrtype"
.LASF9:
	.string	"__uint32_t"
.LASF8:
	.string	"__uint16_t"
.LASF80:
	.string	"hostent"
.LASF35:
	.string	"_markers"
.LASF25:
	.string	"_IO_read_end"
.LASF63:
	.string	"SOCK_PACKET"
.LASF48:
	.string	"_freeres_buf"
.LASF104:
	.string	"init_sockaddr_lc_in"
.LASF76:
	.string	"sin_family"
.LASF85:
	.string	"h_addr_list"
.LASF96:
	.string	"hostname"
.LASF6:
	.string	"signed char"
.LASF17:
	.string	"float"
.LASF100:
	.string	"stderr"
.LASF20:
	.string	"long long int"
.LASF43:
	.string	"_lock"
.LASF10:
	.string	"long int"
.LASF88:
	.string	"socket"
.LASF58:
	.string	"SOCK_DGRAM"
.LASF40:
	.string	"_cur_column"
.LASF102:
	.string	"perror"
.LASF90:
	.string	"fprintf"
.LASF78:
	.string	"sin_addr"
.LASF94:
	.string	"name"
.LASF89:
	.string	"exit"
.LASF67:
	.string	"_IO_FILE"
.LASF82:
	.string	"h_aliases"
.LASF66:
	.string	"sa_family_t"
.LASF2:
	.string	"unsigned char"
.LASF60:
	.string	"SOCK_RDM"
.LASF56:
	.string	"socklen_t"
.LASF87:
	.string	"htonl"
.LASF79:
	.string	"sin_zero"
.LASF21:
	.string	"long long unsigned int"
.LASF16:
	.string	"uint32_t"
.LASF42:
	.string	"_shortbuf"
.LASF92:
	.string	"htons"
.LASF53:
	.string	"_IO_marker"
.LASF15:
	.string	"uint16_t"
.LASF73:
	.string	"s_addr"
.LASF27:
	.string	"_IO_write_base"
.LASF51:
	.string	"_unused2"
.LASF24:
	.string	"_IO_read_ptr"
.LASF74:
	.string	"in_port_t"
.LASF49:
	.string	"__pad5"
.LASF84:
	.string	"h_length"
.LASF91:
	.string	"gethostbyname"
.LASF61:
	.string	"SOCK_SEQPACKET"
.LASF13:
	.string	"char"
.LASF46:
	.string	"_wide_data"
.LASF47:
	.string	"_freeres_list"
.LASF86:
	.string	"bind"
.LASF64:
	.string	"SOCK_CLOEXEC"
.LASF97:
	.string	"hostinfo"
.LASF71:
	.string	"in_addr_t"
.LASF81:
	.string	"h_name"
.LASF101:
	.string	"__socket_type"
.LASF59:
	.string	"SOCK_RAW"
.LASF95:
	.string	"port"
.LASF5:
	.string	"long unsigned int"
.LASF72:
	.string	"in_addr"
.LASF18:
	.string	"double"
.LASF12:
	.string	"__off64_t"
.LASF31:
	.string	"_IO_buf_end"
.LASF11:
	.string	"__off_t"
.LASF3:
	.string	"short unsigned int"
.LASF36:
	.string	"_chain"
.LASF77:
	.string	"sin_port"
.LASF55:
	.string	"_IO_wide_data"
.LASF33:
	.string	"_IO_backup_base"
.LASF30:
	.string	"_IO_buf_base"
.LASF38:
	.string	"_flags2"
.LASF69:
	.string	"sa_family"
.LASF50:
	.string	"_mode"
.LASF26:
	.string	"_IO_read_base"
.LASF41:
	.string	"_vtable_offset"
.LASF45:
	.string	"_codecvt"
.LASF70:
	.string	"sa_data"
.LASF57:
	.string	"SOCK_STREAM"
.LASF103:
	.string	"make_socket_lc_in"
.LASF32:
	.string	"_IO_save_base"
.LASF68:
	.string	"sockaddr"
.LASF37:
	.string	"_fileno"
.LASF52:
	.string	"FILE"
.LASF4:
	.string	"unsigned int"
.LASF98:
	.string	"GNU C17 12.2.1 20220819 (Red Hat 12.2.1-1) -mtune=generic -march=x86-64 -g"
.LASF23:
	.string	"_flags"
.LASF75:
	.string	"sockaddr_in"
.LASF62:
	.string	"SOCK_DCCP"
.LASF54:
	.string	"_IO_codecvt"
.LASF93:
	.string	"sock"
.LASF65:
	.string	"SOCK_NONBLOCK"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs"
.LASF0:
	.string	"lib/lc_in.c"
	.ident	"GCC: (GNU) 12.2.1 20220819 (Red Hat 12.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
