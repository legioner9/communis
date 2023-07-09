	.file	"lc_1.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs" "lib/lc_1.c"
	.section	.rodata
.LC0:
	.string	"alloc npt FAIL's"
	.text
	.globl	npt_lc_1_IntPt
	.type	npt_lc_1_IntPt, @function
npt_lc_1_IntPt:
.LFB6:
	.file 1 "lib/lc_1.c"
	.loc 1 65 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 66 8
	cmpq	$0, -8(%rbp)
	jne	.L2
	.loc 1 68 9
	movl	$.LC0, %edi
	call	puts
	.loc 1 69 9
	movl	$1, %edi
	call	exit
.L2:
	.loc 1 71 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	npt_lc_1_IntPt, .-npt_lc_1_IntPt
	.section	.rodata
.LC1:
	.string	"alloc ndpt FAIL's"
	.text
	.globl	ndpt_lc_1_IntPt
	.type	ndpt_lc_1_IntPt, @function
ndpt_lc_1_IntPt:
.LFB7:
	.loc 1 74 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 75 8
	cmpq	$0, -8(%rbp)
	jne	.L4
	.loc 1 77 9
	movl	$.LC1, %edi
	call	puts
	.loc 1 78 9
	movl	$1, %edi
	call	exit
.L4:
	.loc 1 80 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ndpt_lc_1_IntPt, .-ndpt_lc_1_IntPt
	.globl	_tmpp
	.type	_tmpp, @function
_tmpp:
.LFB8:
	.loc 1 82 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 83 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	_tmpp, .-_tmpp
	.section	.rodata
	.align 8
.LC2:
	.string	"res_stat = %d\nst_dev = 0x%o\nst_ino = 0x%o\nst_mode = 0x%o\nst_nlink = %d\nst_uid = 0x%o\nst_gid = 0x%o\nst_rdev = 0x%o\nst_size = %d\nst_blksize = 0x%o\nst_blocks = 0x%o\n"
	.text
	.globl	prn_stat_lc_1_path
	.type	prn_stat_lc_1_path, @function
prn_stat_lc_1_path:
.LFB9:
	.loc 1 86 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -184(%rbp)
	.loc 1 88 20
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat
	movl	%eax, -20(%rbp)
	.loc 1 89 5
	movq	-112(%rbp), %r11
	movq	-120(%rbp), %r10
	movq	-128(%rbp), %r9
	movq	-136(%rbp), %r8
	movl	-144(%rbp), %edi
	movl	-148(%rbp), %esi
	movq	-160(%rbp), %r12
	movl	-152(%rbp), %ebx
	movq	-168(%rbp), %rcx
	movq	-176(%rbp), %rdx
	movl	-20(%rbp), %eax
	pushq	%r11
	pushq	%r10
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	pushq	%rsi
	movq	%r12, %r9
	movl	%ebx, %r8d
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	addq	$48, %rsp
	.loc 1 101 12
	movl	$0, %eax
	.loc 1 102 1
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	prn_stat_lc_1_path, .-prn_stat_lc_1_path
	.section	.rodata
	.align 8
.LC3:
	.string	"failed in file %s at line # %d\n"
	.align 8
.LC4:
	.string	"from prn_stat_lc_1_path_\321\201 path = %s\n"
.LC5:
	.string	"return -1"
.LC6:
	.string	"exit(1)"
.LC7:
	.string	"return original error"
	.text
	.globl	prn_stat_lc_1_path_с
	.type	prn_stat_lc_1_path_с, @function
prn_stat_lc_1_path_с:
.LFB10:
	.loc 1 105 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movl	%edx, -196(%rbp)
	movl	%ecx, -200(%rbp)
	movl	%r8d, -204(%rbp)
	movl	%r9d, -208(%rbp)
	.loc 1 108 20
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat
	movl	%eax, -20(%rbp)
	.loc 1 110 8
	cmpl	$-1, -20(%rbp)
	je	.L9
	.loc 1 112 9
	movq	-112(%rbp), %r11
	movq	-120(%rbp), %r10
	movq	-128(%rbp), %r9
	movq	-136(%rbp), %r8
	movl	-144(%rbp), %edi
	movl	-148(%rbp), %esi
	movq	-160(%rbp), %r12
	movl	-152(%rbp), %ebx
	movq	-168(%rbp), %rcx
	movq	-176(%rbp), %rdx
	movl	-20(%rbp), %eax
	pushq	%r11
	pushq	%r10
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	pushq	%rsi
	movq	%r12, %r9
	movl	%ebx, %r8d
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	addq	$48, %rsp
	.loc 1 124 16
	movl	$0, %eax
	jmp	.L8
.L9:
	.loc 1 128 20
	movl	-200(%rbp), %eax
	andl	$2, %eax
	.loc 1 128 12
	testl	%eax, %eax
	je	.L11
	.loc 1 130 13
	movq	stderr(%rip), %rax
	movl	-196(%rbp), %ecx
	movq	-192(%rbp), %rdx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 131 13
	movq	stderr(%rip), %rax
	movq	-184(%rbp), %rdx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L11:
	.loc 1 133 20
	movl	-208(%rbp), %eax
	andl	$2, %eax
	.loc 1 133 12
	testl	%eax, %eax
	je	.L12
	.loc 1 135 24
	movl	-200(%rbp), %eax
	andl	$2, %eax
	.loc 1 135 16
	testl	%eax, %eax
	je	.L13
	.loc 1 136 17
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L13:
	.loc 1 137 20
	movl	$-1, %eax
	jmp	.L8
.L12:
	.loc 1 139 25
	movl	-208(%rbp), %eax
	andl	$4, %eax
	.loc 1 139 17
	testl	%eax, %eax
	je	.L14
	.loc 1 141 24
	movl	-200(%rbp), %eax
	andl	$2, %eax
	.loc 1 141 16
	testl	%eax, %eax
	je	.L15
	.loc 1 142 17
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
.L15:
	.loc 1 143 13
	movl	$1, %edi
	call	exit
.L14:
	.loc 1 145 25
	movl	-208(%rbp), %eax
	andl	$1, %eax
	.loc 1 145 17
	testl	%eax, %eax
	je	.L16
	.loc 1 147 24
	movl	-200(%rbp), %eax
	andl	$2, %eax
	.loc 1 147 16
	testl	%eax, %eax
	je	.L17
	.loc 1 148 17
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
.L17:
	.loc 1 149 20
	movl	$0, %eax
	jmp	.L8
.L16:
.L8:
	.loc 1 152 1
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	prn_stat_lc_1_path_с, .-prn_stat_lc_1_path_с
	.section	.rodata
	.align 8
.LC8:
	.string	"d_name = %s\nd_ino = %d\nd_type = 0x%o\nd_reclen = 0x%o\nd_off = %d\n\n"
	.align 8
.LC9:
	.string	"from prn_dirent_lc_1_entry_\321\201\n"
	.text
	.globl	prn_dirent_lc_1_entry_с
	.type	prn_dirent_lc_1_entry_с, @function
prn_dirent_lc_1_entry_с:
.LFB11:
	.loc 1 155 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	.loc 1 159 14
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	.loc 1 159 8
	testw	%ax, %ax
	je	.L20
	.loc 1 161 9
	movq	-8(%rbp), %rax
	movq	8(%rax), %r8
	.loc 1 167 65
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	.loc 1 161 9
	movzwl	%ax, %edi
	.loc 1 167 50
	movq	-8(%rbp), %rax
	movzbl	18(%rax), %eax
	.loc 1 161 9
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 167 21
	movq	-8(%rbp), %rcx
	leaq	19(%rcx), %rsi
	.loc 1 161 9
	movq	%r8, %r9
	movl	%edi, %r8d
	movl	%edx, %ecx
	movq	%rax, %rdx
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	jmp	.L21
.L20:
	.loc 1 171 20
	movl	-24(%rbp), %eax
	andl	$2, %eax
	.loc 1 171 12
	testl	%eax, %eax
	je	.L22
	.loc 1 173 13
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 174 13
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$30, %edx
	movl	$1, %esi
	movl	$.LC9, %edi
	call	fwrite
.L22:
	.loc 1 176 20
	movl	-32(%rbp), %eax
	andl	$2, %eax
	.loc 1 176 12
	testl	%eax, %eax
	je	.L23
	.loc 1 178 24
	movl	-24(%rbp), %eax
	andl	$2, %eax
	.loc 1 178 16
	testl	%eax, %eax
	je	.L24
	.loc 1 179 17
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L24:
	.loc 1 180 20
	movl	$-1, %eax
	jmp	.L25
.L23:
	.loc 1 182 25
	movl	-32(%rbp), %eax
	andl	$4, %eax
	.loc 1 182 17
	testl	%eax, %eax
	je	.L26
	.loc 1 184 24
	movl	-24(%rbp), %eax
	andl	$2, %eax
	.loc 1 184 16
	testl	%eax, %eax
	je	.L27
	.loc 1 185 17
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
.L27:
	.loc 1 186 13
	movl	$1, %edi
	call	exit
.L26:
	.loc 1 188 25
	movl	-32(%rbp), %eax
	andl	$1, %eax
	.loc 1 188 17
	testl	%eax, %eax
	je	.L21
	.loc 1 190 24
	movl	-24(%rbp), %eax
	andl	$2, %eax
	.loc 1 190 16
	testl	%eax, %eax
	je	.L28
	.loc 1 191 17
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
.L28:
	.loc 1 192 20
	movl	$0, %eax
	jmp	.L25
.L21:
	.loc 1 196 12
	movl	$0, %eax
.L25:
	.loc 1 197 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	prn_dirent_lc_1_entry_с, .-prn_dirent_lc_1_entry_с
	.section	.rodata
	.align 8
.LC10:
	.string	"name.sa_family = %d, name.sa_data = %s\n"
	.text
	.globl	prn_sockadr_bind_lc_1_с
	.type	prn_sockadr_bind_lc_1_с, @function
prn_sockadr_bind_lc_1_с:
.LFB12:
	.loc 1 200 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	.loc 1 206 81
	movq	-8(%rbp), %rax
	leaq	2(%rax), %rdx
	.loc 1 206 64
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 206 9
	movzwl	%ax, %eax
	movl	%eax, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
	.loc 1 234 12
	movl	$0, %eax
	.loc 1 235 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	prn_sockadr_bind_lc_1_с, .-prn_sockadr_bind_lc_1_с
	.section	.rodata
	.align 8
.LC11:
	.string	"result_addr.sin_family = %d, result_addr.sin_addr.s_addr = %s, result_addr.sin_port = %d\n"
	.align 8
.LC12:
	.string	"from prn_addr_from_socket_\321\201 socket = %d\n"
	.text
	.globl	prn_addr_from_socket_lc_1_с
	.type	prn_addr_from_socket_lc_1_с, @function
prn_addr_from_socket_lc_1_с:
.LFB13:
	.loc 1 238 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -72(%rbp)
	movl	%ecx, -84(%rbp)
	movl	%r8d, -88(%rbp)
	movl	%r9d, -92(%rbp)
	.loc 1 241 9
	movl	$16, -52(%rbp)
	.loc 1 243 13
	leaq	-52(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movl	-68(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	getsockname
	movl	%eax, -20(%rbp)
	.loc 1 245 8
	cmpl	$-1, -20(%rbp)
	je	.L32
	.loc 1 247 184
	movzwl	-46(%rbp), %eax
	.loc 1 247 167
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	ntohs
	.loc 1 247 9
	movzwl	%ax, %ebx
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	inet_ntoa
	movq	%rax, %rdx
	.loc 1 247 121
	movzwl	-48(%rbp), %eax
	.loc 1 247 9
	movzwl	%ax, %eax
	movl	%ebx, %ecx
	movl	%eax, %esi
	movl	$.LC11, %edi
	movl	$0, %eax
	call	printf
	.loc 1 248 16
	movl	-20(%rbp), %eax
	jmp	.L31
.L32:
	.loc 1 252 20
	movl	-84(%rbp), %eax
	andl	$2, %eax
	.loc 1 252 12
	testl	%eax, %eax
	je	.L34
	.loc 1 254 13
	movq	stderr(%rip), %rax
	movl	-72(%rbp), %ecx
	movq	-80(%rbp), %rdx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 255 13
	movq	stderr(%rip), %rax
	movl	-68(%rbp), %edx
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L34:
	.loc 1 257 20
	movl	-92(%rbp), %eax
	andl	$2, %eax
	.loc 1 257 12
	testl	%eax, %eax
	je	.L35
	.loc 1 259 24
	movl	-84(%rbp), %eax
	andl	$2, %eax
	.loc 1 259 16
	testl	%eax, %eax
	je	.L36
	.loc 1 260 17
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L36:
	.loc 1 261 20
	movl	$-1, %eax
	jmp	.L31
.L35:
	.loc 1 263 25
	movl	-92(%rbp), %eax
	andl	$4, %eax
	.loc 1 263 17
	testl	%eax, %eax
	je	.L37
	.loc 1 265 24
	movl	-84(%rbp), %eax
	andl	$2, %eax
	.loc 1 265 16
	testl	%eax, %eax
	je	.L38
	.loc 1 266 17
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
.L38:
	.loc 1 267 13
	movl	$1, %edi
	call	exit
.L37:
	.loc 1 269 25
	movl	-92(%rbp), %eax
	andl	$1, %eax
	.loc 1 269 17
	testl	%eax, %eax
	je	.L39
	.loc 1 271 24
	movl	-84(%rbp), %eax
	andl	$2, %eax
	.loc 1 271 16
	testl	%eax, %eax
	je	.L40
	.loc 1 272 17
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
.L40:
	.loc 1 273 20
	movl	-20(%rbp), %eax
	jmp	.L31
.L39:
.L31:
	.loc 1 276 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	prn_addr_from_socket_lc_1_с, .-prn_addr_from_socket_lc_1_с
	.section	.rodata
	.align 8
.LC13:
	.string	"addr.sin_family = %d, addr.sin_addr.s_addr = %s, addr.sin_port = %d\n"
	.text
	.globl	prn_addr_in_from_name_lc_1_с
	.type	prn_addr_in_from_name_lc_1_с, @function
prn_addr_in_from_name_lc_1_с:
.LFB14:
	.loc 1 279 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rsi, %rax
	movq	%rdi, %r10
	movq	%r10, %rsi
	movq	%r11, %rdi
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	.loc 1 280 138
	movzwl	-30(%rbp), %eax
	.loc 1 280 128
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	ntohs
	.loc 1 280 5
	movzwl	%ax, %ebx
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	inet_ntoa
	movq	%rax, %rdx
	.loc 1 280 89
	movzwl	-32(%rbp), %eax
	.loc 1 280 5
	movzwl	%ax, %eax
	movl	%ebx, %ecx
	movl	%eax, %esi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	printf
	.loc 1 281 12
	movl	$0, %eax
	.loc 1 282 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	prn_addr_in_from_name_lc_1_с, .-prn_addr_in_from_name_lc_1_с
.Letext0:
	.file 2 "/usr/include/bits/types.h"
	.file 3 "/usr/include/bits/stdint-uintn.h"
	.file 4 "/usr/include/bits/types/struct_timespec.h"
	.file 5 "/usr/lib/gcc/x86_64-redhat-linux/12/include/stddef.h"
	.file 6 "/usr/include/bits/types/struct_FILE.h"
	.file 7 "/usr/include/bits/types/FILE.h"
	.file 8 "/usr/include/bits/struct_stat.h"
	.file 9 "/usr/include/bits/socket.h"
	.file 10 "/usr/include/bits/sockaddr.h"
	.file 11 "/usr/include/netinet/in.h"
	.file 12 "/usr/include/bits/dirent.h"
	.file 13 "/usr/include/arpa/inet.h"
	.file 14 "/usr/include/sys/socket.h"
	.file 15 "/usr/include/stdio.h"
	.file 16 "/usr/include/sys/stat.h"
	.file 17 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9fe
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x14
	.long	.LASF134
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x5
	.byte	0x8
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
	.uleb128 0x3
	.long	.LASF8
	.byte	0x2
	.byte	0x28
	.byte	0x1c
	.long	0x35
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x12
	.long	0x64
	.uleb128 0x3
	.long	.LASF9
	.byte	0x2
	.byte	0x2a
	.byte	0x16
	.long	0x3c
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.long	.LASF11
	.byte	0x2
	.byte	0x91
	.byte	0x19
	.long	0x43
	.uleb128 0x3
	.long	.LASF12
	.byte	0x2
	.byte	0x92
	.byte	0x19
	.long	0x3c
	.uleb128 0x3
	.long	.LASF13
	.byte	0x2
	.byte	0x93
	.byte	0x19
	.long	0x3c
	.uleb128 0x3
	.long	.LASF14
	.byte	0x2
	.byte	0x94
	.byte	0x19
	.long	0x43
	.uleb128 0x3
	.long	.LASF15
	.byte	0x2
	.byte	0x96
	.byte	0x1a
	.long	0x3c
	.uleb128 0x3
	.long	.LASF16
	.byte	0x2
	.byte	0x97
	.byte	0x1b
	.long	0x43
	.uleb128 0x3
	.long	.LASF17
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x7c
	.uleb128 0x3
	.long	.LASF18
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x7c
	.uleb128 0x3
	.long	.LASF19
	.byte	0x2
	.byte	0xa0
	.byte	0x1a
	.long	0x7c
	.uleb128 0x16
	.byte	0x8
	.uleb128 0x3
	.long	.LASF20
	.byte	0x2
	.byte	0xaf
	.byte	0x1d
	.long	0x7c
	.uleb128 0x3
	.long	.LASF21
	.byte	0x2
	.byte	0xb4
	.byte	0x1c
	.long	0x7c
	.uleb128 0x3
	.long	.LASF22
	.byte	0x2
	.byte	0xc5
	.byte	0x21
	.long	0x7c
	.uleb128 0x4
	.long	0x11a
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF23
	.uleb128 0x12
	.long	0x11a
	.uleb128 0x3
	.long	.LASF24
	.byte	0x2
	.byte	0xd2
	.byte	0x17
	.long	0x3c
	.uleb128 0x4
	.long	0x121
	.uleb128 0xd
	.long	0x132
	.uleb128 0x3
	.long	.LASF25
	.byte	0x3
	.byte	0x19
	.byte	0x14
	.long	0x58
	.uleb128 0x3
	.long	.LASF26
	.byte	0x3
	.byte	0x1a
	.byte	0x14
	.long	0x70
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF27
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.long	.LASF28
	.uleb128 0x7
	.long	.LASF35
	.byte	0x10
	.byte	0x4
	.byte	0xb
	.long	0x189
	.uleb128 0x1
	.long	.LASF29
	.byte	0x4
	.byte	0x10
	.byte	0xc
	.long	0xe3
	.byte	0
	.uleb128 0x1
	.long	.LASF30
	.byte	0x4
	.byte	0x15
	.byte	0x15
	.long	0x109
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF31
	.byte	0x5
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF32
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF33
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.long	.LASF34
	.uleb128 0x7
	.long	.LASF36
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.long	0x330
	.uleb128 0x1
	.long	.LASF37
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x64
	.byte	0
	.uleb128 0x1
	.long	.LASF38
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x115
	.byte	0x8
	.uleb128 0x1
	.long	.LASF39
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0x115
	.byte	0x10
	.uleb128 0x1
	.long	.LASF40
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0x115
	.byte	0x18
	.uleb128 0x1
	.long	.LASF41
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0x115
	.byte	0x20
	.uleb128 0x1
	.long	.LASF42
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0x115
	.byte	0x28
	.uleb128 0x1
	.long	.LASF43
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0x115
	.byte	0x30
	.uleb128 0x1
	.long	.LASF44
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0x115
	.byte	0x38
	.uleb128 0x1
	.long	.LASF45
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x115
	.byte	0x40
	.uleb128 0x1
	.long	.LASF46
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0x115
	.byte	0x48
	.uleb128 0x1
	.long	.LASF47
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0x115
	.byte	0x50
	.uleb128 0x1
	.long	.LASF48
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0x115
	.byte	0x58
	.uleb128 0x1
	.long	.LASF49
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x349
	.byte	0x60
	.uleb128 0x1
	.long	.LASF50
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x34e
	.byte	0x68
	.uleb128 0x1
	.long	.LASF51
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x64
	.byte	0x70
	.uleb128 0x1
	.long	.LASF52
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x64
	.byte	0x74
	.uleb128 0x1
	.long	.LASF53
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0xcb
	.byte	0x78
	.uleb128 0x1
	.long	.LASF54
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x1
	.long	.LASF55
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x1
	.long	.LASF56
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x353
	.byte	0x83
	.uleb128 0x1
	.long	.LASF57
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x363
	.byte	0x88
	.uleb128 0x1
	.long	.LASF58
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0xd7
	.byte	0x90
	.uleb128 0x1
	.long	.LASF59
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x36d
	.byte	0x98
	.uleb128 0x1
	.long	.LASF60
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x377
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF61
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x34e
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF62
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0xef
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF63
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x189
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF64
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x64
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF65
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x37c
	.byte	0xc4
	.byte	0
	.uleb128 0x3
	.long	.LASF66
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0x1aa
	.uleb128 0x17
	.long	.LASF135
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF67
	.uleb128 0x4
	.long	0x344
	.uleb128 0x4
	.long	0x1aa
	.uleb128 0x8
	.long	0x11a
	.long	0x363
	.uleb128 0x9
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x33c
	.uleb128 0xe
	.long	.LASF68
	.uleb128 0x4
	.long	0x368
	.uleb128 0xe
	.long	.LASF69
	.uleb128 0x4
	.long	0x372
	.uleb128 0x8
	.long	0x11a
	.long	0x38c
	.uleb128 0x9
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	0x330
	.uleb128 0xd
	.long	0x38c
	.uleb128 0x18
	.long	.LASF136
	.byte	0xf
	.byte	0x91
	.byte	0xe
	.long	0x38c
	.uleb128 0x7
	.long	.LASF70
	.byte	0x90
	.byte	0x8
	.byte	0x1a
	.long	0x472
	.uleb128 0x1
	.long	.LASF71
	.byte	0x8
	.byte	0x1f
	.byte	0xd
	.long	0x83
	.byte	0
	.uleb128 0x1
	.long	.LASF72
	.byte	0x8
	.byte	0x24
	.byte	0xd
	.long	0xa7
	.byte	0x8
	.uleb128 0x1
	.long	.LASF73
	.byte	0x8
	.byte	0x2c
	.byte	0xf
	.long	0xbf
	.byte	0x10
	.uleb128 0x1
	.long	.LASF74
	.byte	0x8
	.byte	0x2d
	.byte	0xe
	.long	0xb3
	.byte	0x18
	.uleb128 0x1
	.long	.LASF75
	.byte	0x8
	.byte	0x2f
	.byte	0xd
	.long	0x8f
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF76
	.byte	0x8
	.byte	0x30
	.byte	0xd
	.long	0x9b
	.byte	0x20
	.uleb128 0x1
	.long	.LASF77
	.byte	0x8
	.byte	0x32
	.byte	0x9
	.long	0x64
	.byte	0x24
	.uleb128 0x1
	.long	.LASF78
	.byte	0x8
	.byte	0x34
	.byte	0xd
	.long	0x83
	.byte	0x28
	.uleb128 0x1
	.long	.LASF79
	.byte	0x8
	.byte	0x39
	.byte	0xd
	.long	0xcb
	.byte	0x30
	.uleb128 0x1
	.long	.LASF80
	.byte	0x8
	.byte	0x3d
	.byte	0x11
	.long	0xf1
	.byte	0x38
	.uleb128 0x1
	.long	.LASF81
	.byte	0x8
	.byte	0x3f
	.byte	0x10
	.long	0xfd
	.byte	0x40
	.uleb128 0x1
	.long	.LASF82
	.byte	0x8
	.byte	0x4a
	.byte	0x15
	.long	0x162
	.byte	0x48
	.uleb128 0x1
	.long	.LASF83
	.byte	0x8
	.byte	0x4b
	.byte	0x15
	.long	0x162
	.byte	0x58
	.uleb128 0x1
	.long	.LASF84
	.byte	0x8
	.byte	0x4c
	.byte	0x15
	.long	0x162
	.byte	0x68
	.uleb128 0x1
	.long	.LASF85
	.byte	0x8
	.byte	0x59
	.byte	0x17
	.long	0x472
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x109
	.long	0x482
	.uleb128 0x9
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF86
	.byte	0x9
	.byte	0x21
	.byte	0x15
	.long	0x126
	.uleb128 0x3
	.long	.LASF87
	.byte	0xa
	.byte	0x1c
	.byte	0x1c
	.long	0x35
	.uleb128 0x7
	.long	.LASF88
	.byte	0x10
	.byte	0x9
	.byte	0xb6
	.long	0x4c1
	.uleb128 0x1
	.long	.LASF89
	.byte	0x9
	.byte	0xb8
	.byte	0x5
	.long	0x48e
	.byte	0
	.uleb128 0x1
	.long	.LASF90
	.byte	0x9
	.byte	0xb9
	.byte	0xa
	.long	0x4c1
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0x11a
	.long	0x4d1
	.uleb128 0x9
	.long	0x43
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.long	.LASF91
	.byte	0xb
	.byte	0x1e
	.byte	0x12
	.long	0x148
	.uleb128 0x7
	.long	.LASF92
	.byte	0x4
	.byte	0xb
	.byte	0x1f
	.long	0x4f7
	.uleb128 0x1
	.long	.LASF93
	.byte	0xb
	.byte	0x21
	.byte	0xf
	.long	0x4d1
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF94
	.byte	0xb
	.byte	0x7b
	.byte	0x12
	.long	0x13c
	.uleb128 0x7
	.long	.LASF95
	.byte	0x10
	.byte	0xb
	.byte	0xf5
	.long	0x544
	.uleb128 0x1
	.long	.LASF96
	.byte	0xb
	.byte	0xf7
	.byte	0x5
	.long	0x48e
	.byte	0
	.uleb128 0x1
	.long	.LASF97
	.byte	0xb
	.byte	0xf8
	.byte	0xf
	.long	0x4f7
	.byte	0x2
	.uleb128 0x1
	.long	.LASF98
	.byte	0xb
	.byte	0xf9
	.byte	0x14
	.long	0x4dd
	.byte	0x4
	.uleb128 0x1
	.long	.LASF99
	.byte	0xb
	.byte	0xfc
	.byte	0x13
	.long	0x544
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x2e
	.long	0x554
	.uleb128 0x9
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.long	.LASF100
	.value	0x118
	.byte	0xc
	.byte	0x16
	.byte	0x8
	.long	0x5a4
	.uleb128 0x1
	.long	.LASF101
	.byte	0xc
	.byte	0x19
	.byte	0xd
	.long	0xa7
	.byte	0
	.uleb128 0x1
	.long	.LASF102
	.byte	0xc
	.byte	0x1a
	.byte	0xd
	.long	0xcb
	.byte	0x8
	.uleb128 0x1
	.long	.LASF103
	.byte	0xc
	.byte	0x1f
	.byte	0x18
	.long	0x35
	.byte	0x10
	.uleb128 0x1
	.long	.LASF104
	.byte	0xc
	.byte	0x20
	.byte	0x13
	.long	0x2e
	.byte	0x12
	.uleb128 0x1
	.long	.LASF105
	.byte	0xc
	.byte	0x21
	.byte	0xa
	.long	0x5a4
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.long	0x11a
	.long	0x5b4
	.uleb128 0x9
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0xf
	.long	.LASF106
	.byte	0xd
	.byte	0x35
	.byte	0xe
	.long	0x115
	.long	0x5ca
	.uleb128 0x6
	.long	0x4dd
	.byte	0
	.uleb128 0x10
	.long	.LASF107
	.byte	0xb
	.value	0x17f
	.byte	0x11
	.long	0x13c
	.long	0x5e1
	.uleb128 0x6
	.long	0x13c
	.byte	0
	.uleb128 0xf
	.long	.LASF108
	.byte	0xe
	.byte	0x74
	.byte	0xc
	.long	0x64
	.long	0x601
	.uleb128 0x6
	.long	0x64
	.uleb128 0x6
	.long	0x606
	.uleb128 0x6
	.long	0x610
	.byte	0
	.uleb128 0x4
	.long	0x49a
	.uleb128 0xd
	.long	0x601
	.uleb128 0x4
	.long	0x482
	.uleb128 0xd
	.long	0x60b
	.uleb128 0x10
	.long	.LASF109
	.byte	0xf
	.value	0x15e
	.byte	0xc
	.long	0x64
	.long	0x632
	.uleb128 0x6
	.long	0x391
	.uleb128 0x6
	.long	0x137
	.uleb128 0x13
	.byte	0
	.uleb128 0x10
	.long	.LASF110
	.byte	0xf
	.value	0x164
	.byte	0xc
	.long	0x64
	.long	0x64a
	.uleb128 0x6
	.long	0x132
	.uleb128 0x13
	.byte	0
	.uleb128 0xf
	.long	.LASF70
	.byte	0x10
	.byte	0xcd
	.byte	0xc
	.long	0x64
	.long	0x665
	.uleb128 0x6
	.long	0x137
	.uleb128 0x6
	.long	0x66a
	.byte	0
	.uleb128 0x4
	.long	0x3a2
	.uleb128 0xd
	.long	0x665
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x11
	.value	0x270
	.byte	0xd
	.long	0x682
	.uleb128 0x6
	.long	0x64
	.byte	0
	.uleb128 0x1b
	.long	.LASF118
	.byte	0x1
	.value	0x116
	.byte	0xb
	.long	0x64
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f5
	.uleb128 0xa
	.long	.LASF112
	.byte	0x3c
	.long	0x503
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.long	.LASF113
	.byte	0x4e
	.long	0x132
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.long	.LASF114
	.byte	0x5e
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.long	.LASF115
	.byte	0x68
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.long	.LASF116
	.byte	0x74
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.long	.LASF117
	.byte	0x80
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.long	.LASF119
	.byte	0xed
	.long	0x64
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x79a
	.uleb128 0x2
	.long	.LASF120
	.byte	0xed
	.byte	0x2c
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.long	.LASF113
	.byte	0xed
	.byte	0x40
	.long	0x132
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2
	.long	.LASF114
	.byte	0xed
	.byte	0x50
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.long	.LASF115
	.byte	0xed
	.byte	0x5a
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.long	.LASF116
	.byte	0xed
	.byte	0x66
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.long	.LASF117
	.byte	0xed
	.byte	0x72
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0xc
	.long	.LASF121
	.byte	0xf0
	.byte	0x18
	.long	0x503
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.long	.LASF122
	.byte	0xf1
	.byte	0x9
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.string	"a"
	.byte	0x1
	.byte	0xf3
	.byte	0x9
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xb
	.long	.LASF123
	.byte	0xc7
	.long	0x64
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x80f
	.uleb128 0x2
	.long	.LASF124
	.byte	0xc7
	.byte	0x35
	.long	0x601
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.long	.LASF113
	.byte	0xc7
	.byte	0x47
	.long	0x132
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.long	.LASF114
	.byte	0xc7
	.byte	0x57
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.long	.LASF115
	.byte	0xc7
	.byte	0x61
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF116
	.byte	0xc7
	.byte	0x6d
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.long	.LASF117
	.byte	0xc7
	.byte	0x79
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xb
	.long	.LASF125
	.byte	0x9a
	.long	0x64
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x884
	.uleb128 0x2
	.long	.LASF126
	.byte	0x9a
	.byte	0x33
	.long	0x884
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.long	.LASF113
	.byte	0x9a
	.byte	0x46
	.long	0x132
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.long	.LASF114
	.byte	0x9a
	.byte	0x56
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.long	.LASF115
	.byte	0x9a
	.byte	0x60
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF116
	.byte	0x9a
	.byte	0x6c
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.long	.LASF117
	.byte	0x9a
	.byte	0x78
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x4
	.long	0x554
	.uleb128 0xb
	.long	.LASF127
	.byte	0x68
	.long	0x64
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x921
	.uleb128 0x2
	.long	.LASF128
	.byte	0x68
	.byte	0x2d
	.long	0x132
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2
	.long	.LASF113
	.byte	0x68
	.byte	0x3f
	.long	0x132
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2
	.long	.LASF114
	.byte	0x68
	.byte	0x4f
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x2
	.long	.LASF115
	.byte	0x68
	.byte	0x59
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2
	.long	.LASF116
	.byte	0x68
	.byte	0x65
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x2
	.long	.LASF117
	.byte	0x68
	.byte	0x71
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0xc
	.long	.LASF129
	.byte	0x6b
	.byte	0x11
	.long	0x3a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0xc
	.long	.LASF130
	.byte	0x6c
	.byte	0x9
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xb
	.long	.LASF131
	.byte	0x55
	.long	0x64
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x96e
	.uleb128 0x2
	.long	.LASF128
	.byte	0x55
	.byte	0x2a
	.long	0x132
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0xc
	.long	.LASF129
	.byte	0x57
	.byte	0x11
	.long	0x3a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0xc
	.long	.LASF130
	.byte	0x58
	.byte	0x9
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1d
	.long	.LASF132
	.byte	0x1
	.byte	0x51
	.byte	0xb
	.long	0x64
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x99d
	.uleb128 0x11
	.string	"t"
	.byte	0x51
	.byte	0x15
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	.LASF133
	.byte	0x49
	.long	0x64
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x9cb
	.uleb128 0x11
	.string	"pt"
	.byte	0x49
	.byte	0x21
	.long	0x9cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.long	0x9d0
	.uleb128 0x4
	.long	0x64
	.uleb128 0x1e
	.long	.LASF137
	.byte	0x1
	.byte	0x40
	.byte	0xb
	.long	0x64
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.string	"pt"
	.byte	0x40
	.byte	0x1f
	.long	0x9d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 278
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x1e
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
.LASF110:
	.string	"printf"
.LASF17:
	.string	"__off_t"
.LASF13:
	.string	"__gid_t"
.LASF38:
	.string	"_IO_read_ptr"
.LASF50:
	.string	"_chain"
.LASF84:
	.string	"st_ctim"
.LASF31:
	.string	"size_t"
.LASF120:
	.string	"socket"
.LASF56:
	.string	"_shortbuf"
.LASF118:
	.string	"prn_addr_in_from_name_lc_1_\321\201"
.LASF128:
	.string	"path"
.LASF44:
	.string	"_IO_buf_base"
.LASF126:
	.string	"entry"
.LASF33:
	.string	"long long unsigned int"
.LASF91:
	.string	"in_addr_t"
.LASF112:
	.string	"addr"
.LASF86:
	.string	"socklen_t"
.LASF123:
	.string	"prn_sockadr_bind_lc_1_\321\201"
.LASF59:
	.string	"_codecvt"
.LASF70:
	.string	"stat"
.LASF32:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF72:
	.string	"st_ino"
.LASF15:
	.string	"__mode_t"
.LASF119:
	.string	"prn_addr_from_socket_lc_1_\321\201"
.LASF51:
	.string	"_fileno"
.LASF39:
	.string	"_IO_read_end"
.LASF21:
	.string	"__blkcnt_t"
.LASF10:
	.string	"long int"
.LASF103:
	.string	"d_reclen"
.LASF37:
	.string	"_flags"
.LASF60:
	.string	"_wide_data"
.LASF45:
	.string	"_IO_buf_end"
.LASF54:
	.string	"_cur_column"
.LASF68:
	.string	"_IO_codecvt"
.LASF25:
	.string	"uint16_t"
.LASF28:
	.string	"double"
.LASF42:
	.string	"_IO_write_ptr"
.LASF53:
	.string	"_old_offset"
.LASF58:
	.string	"_offset"
.LASF105:
	.string	"d_name"
.LASF8:
	.string	"__uint16_t"
.LASF114:
	.string	"line"
.LASF9:
	.string	"__uint32_t"
.LASF129:
	.string	"st_struct"
.LASF116:
	.string	"st__if"
.LASF99:
	.string	"sin_zero"
.LASF137:
	.string	"npt_lc_1_IntPt"
.LASF81:
	.string	"st_blocks"
.LASF75:
	.string	"st_uid"
.LASF134:
	.string	"GNU C17 12.2.1 20220819 (Red Hat 12.2.1-1) -mtune=generic -march=x86-64 -g"
.LASF67:
	.string	"_IO_marker"
.LASF4:
	.string	"unsigned int"
.LASF93:
	.string	"s_addr"
.LASF62:
	.string	"_freeres_buf"
.LASF109:
	.string	"fprintf"
.LASF5:
	.string	"long unsigned int"
.LASF125:
	.string	"prn_dirent_lc_1_entry_\321\201"
.LASF108:
	.string	"getsockname"
.LASF124:
	.string	"name"
.LASF3:
	.string	"short unsigned int"
.LASF98:
	.string	"sin_addr"
.LASF102:
	.string	"d_off"
.LASF46:
	.string	"_IO_save_base"
.LASF16:
	.string	"__nlink_t"
.LASF57:
	.string	"_lock"
.LASF52:
	.string	"_flags2"
.LASF64:
	.string	"_mode"
.LASF127:
	.string	"prn_stat_lc_1_path_\321\201"
.LASF79:
	.string	"st_size"
.LASF117:
	.string	"st__re"
.LASF74:
	.string	"st_mode"
.LASF96:
	.string	"sin_family"
.LASF30:
	.string	"tv_nsec"
.LASF11:
	.string	"__dev_t"
.LASF29:
	.string	"tv_sec"
.LASF22:
	.string	"__syscall_slong_t"
.LASF43:
	.string	"_IO_write_end"
.LASF100:
	.string	"dirent"
.LASF101:
	.string	"d_ino"
.LASF135:
	.string	"_IO_lock_t"
.LASF36:
	.string	"_IO_FILE"
.LASF20:
	.string	"__blksize_t"
.LASF27:
	.string	"float"
.LASF97:
	.string	"sin_port"
.LASF89:
	.string	"sa_family"
.LASF49:
	.string	"_markers"
.LASF85:
	.string	"__glibc_reserved"
.LASF131:
	.string	"prn_stat_lc_1_path"
.LASF132:
	.string	"_tmpp"
.LASF2:
	.string	"unsigned char"
.LASF133:
	.string	"ndpt_lc_1_IntPt"
.LASF104:
	.string	"d_type"
.LASF107:
	.string	"ntohs"
.LASF113:
	.string	"file"
.LASF80:
	.string	"st_blksize"
.LASF35:
	.string	"timespec"
.LASF55:
	.string	"_vtable_offset"
.LASF66:
	.string	"FILE"
.LASF111:
	.string	"exit"
.LASF77:
	.string	"__pad0"
.LASF14:
	.string	"__ino_t"
.LASF73:
	.string	"st_nlink"
.LASF78:
	.string	"st_rdev"
.LASF34:
	.string	"long double"
.LASF23:
	.string	"char"
.LASF130:
	.string	"res_stat"
.LASF24:
	.string	"__socklen_t"
.LASF106:
	.string	"inet_ntoa"
.LASF7:
	.string	"short int"
.LASF12:
	.string	"__uid_t"
.LASF18:
	.string	"__off64_t"
.LASF122:
	.string	"namelen"
.LASF40:
	.string	"_IO_read_base"
.LASF48:
	.string	"_IO_save_end"
.LASF115:
	.string	"st__mo"
.LASF76:
	.string	"st_gid"
.LASF63:
	.string	"__pad5"
.LASF19:
	.string	"__time_t"
.LASF87:
	.string	"sa_family_t"
.LASF65:
	.string	"_unused2"
.LASF136:
	.string	"stderr"
.LASF82:
	.string	"st_atim"
.LASF88:
	.string	"sockaddr"
.LASF95:
	.string	"sockaddr_in"
.LASF47:
	.string	"_IO_backup_base"
.LASF83:
	.string	"st_mtim"
.LASF90:
	.string	"sa_data"
.LASF61:
	.string	"_freeres_list"
.LASF71:
	.string	"st_dev"
.LASF69:
	.string	"_IO_wide_data"
.LASF121:
	.string	"result_addr"
.LASF41:
	.string	"_IO_write_base"
.LASF94:
	.string	"in_port_t"
.LASF26:
	.string	"uint32_t"
.LASF92:
	.string	"in_addr"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"lib/lc_1.c"
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs"
	.ident	"GCC: (GNU) 12.2.1 20220819 (Red Hat 12.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
