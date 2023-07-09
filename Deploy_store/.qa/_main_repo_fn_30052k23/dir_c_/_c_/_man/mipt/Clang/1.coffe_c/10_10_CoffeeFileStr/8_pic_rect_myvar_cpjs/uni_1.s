	.file	"uni_1.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs" "lib/uni_1.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"failed in file %s at line # %d\n"
	.align 8
.LC1:
	.string	"from access_c pathname = %s,mode = %d errno = %d\n"
.LC2:
	.string	"exit(errno) with"
	.text
	.globl	access_c
	.type	access_c, @function
access_c:
.LFB6:
	.file 1 "lib/uni_1.c"
	.loc 1 64 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	.loc 1 65 13
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	access
	movl	%eax, -4(%rbp)
	.loc 1 66 8
	cmpl	$-1, -4(%rbp)
	jne	.L2
	.loc 1 68 9
	movq	stderr(%rip), %rax
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 69 92
	call	__errno_location
	.loc 1 69 9
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%esi, %r8d
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 70 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 71 14
	call	__errno_location
	.loc 1 71 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L2:
	.loc 1 73 12
	movl	-4(%rbp), %eax
	.loc 1 74 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	access_c, .-access_c
	.globl	access_cb
	.type	access_cb, @function
access_cb:
.LFB7:
	.loc 1 77 1
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
	.loc 1 78 13
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	access
	movl	%eax, -4(%rbp)
	.loc 1 79 8
	cmpl	$-1, -4(%rbp)
	jne	.L5
	.loc 1 81 9
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
.LVL0:
.L5:
	.loc 1 83 12
	movl	-4(%rbp), %eax
	.loc 1 84 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	access_cb, .-access_cb
	.section	.rodata
	.align 8
.LC3:
	.string	"from chdir_\321\201 pathname = %s, errno = %d\n"
	.text
	.globl	chdir_с
	.type	chdir_с, @function
chdir_с:
.LFB8:
	.loc 1 90 1
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
	.loc 1 91 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	chdir
	movl	%eax, -4(%rbp)
	.loc 1 92 8
	cmpl	$-1, -4(%rbp)
	jne	.L8
	.loc 1 94 9
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 95 76
	call	__errno_location
	.loc 1 95 9
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 96 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 97 14
	call	__errno_location
	.loc 1 97 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L8:
	.loc 1 99 12
	movl	-4(%rbp), %eax
	.loc 1 100 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	chdir_с, .-chdir_с
	.globl	chdir_сb
	.type	chdir_сb, @function
chdir_сb:
.LFB9:
	.loc 1 103 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 104 13
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	chdir
	movl	%eax, -4(%rbp)
	.loc 1 105 8
	cmpl	$-1, -4(%rbp)
	jne	.L11
	.loc 1 107 9
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
.LVL1:
.L11:
	.loc 1 109 12
	movl	-4(%rbp), %eax
	.loc 1 110 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	chdir_сb, .-chdir_сb
	.section	.rodata
	.align 8
.LC4:
	.string	"from chown_\321\201 path = %s, owner = %d, owner = %d, errno = %d\n"
	.text
	.globl	chown_с
	.type	chown_с, @function
chown_с:
.LFB10:
	.loc 1 114 1
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
	.loc 1 115 13
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	chown
	movl	%eax, -4(%rbp)
	.loc 1 116 8
	cmpl	$-1, -4(%rbp)
	jne	.L14
	.loc 1 118 9
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 119 110
	call	__errno_location
	.loc 1 119 9
	movl	(%rax), %edi
	movq	stderr(%rip), %rax
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$.LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 120 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 121 14
	call	__errno_location
	.loc 1 121 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L14:
	.loc 1 123 12
	movl	-4(%rbp), %eax
	.loc 1 124 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	chown_с, .-chown_с
	.globl	chown_сb
	.type	chown_сb, @function
chown_сb:
.LFB11:
	.loc 1 127 1
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
	.loc 1 128 13
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	chown
	movl	%eax, -4(%rbp)
	.loc 1 129 8
	cmpl	$-1, -4(%rbp)
	jne	.L17
	.loc 1 131 9
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %r8
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
.LVL2:
.L17:
	.loc 1 133 12
	movl	-4(%rbp), %eax
	.loc 1 134 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	chown_сb, .-chown_сb
	.section	.rodata
	.align 8
.LC5:
	.string	"from close_\321\201 fildes = %d, errno = %d\n"
.LC6:
	.string	"Error is: "
.LC7:
	.string	"return -1"
.LC8:
	.string	"exit(errno): "
.LC9:
	.string	"return original error"
	.align 8
.LC10:
	.string	"st__re NOT equal (STRE_ERR|STRE_MNS|STRE_EXI)  exit(1) That error NOT treat: "
	.align 8
.LC11:
	.string	" st__if NOT equal STIF_ONE exit(1)"
	.text
	.globl	close_с
	.type	close_с, @function
close_с:
.LFB12:
	.loc 1 138 1
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
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	.loc 1 141 16
	movl	-40(%rbp), %eax
	andl	$1, %eax
	.loc 1 141 8
	testl	%eax, %eax
	je	.L20
.LBB2:
	.loc 1 143 17
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	close
	movl	%eax, -4(%rbp)
	.loc 1 144 12
	cmpl	$-1, -4(%rbp)
	jne	.L21
	.loc 1 146 24
	movl	-36(%rbp), %eax
	andl	$2, %eax
	.loc 1 146 16
	testl	%eax, %eax
	je	.L22
	.loc 1 148 17
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 149 84
	call	__errno_location
	.loc 1 149 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC5, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 150 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 151 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L22:
	.loc 1 153 24
	movl	-44(%rbp), %eax
	andl	$2, %eax
	.loc 1 153 16
	testl	%eax, %eax
	je	.L23
	.loc 1 155 28
	movl	-36(%rbp), %eax
	andl	$2, %eax
	.loc 1 155 20
	testl	%eax, %eax
	je	.L24
	.loc 1 156 21
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
.L24:
	.loc 1 157 24
	movl	$-1, %eax
	jmp	.L25
.L23:
	.loc 1 159 29
	movl	-44(%rbp), %eax
	andl	$4, %eax
	.loc 1 159 21
	testl	%eax, %eax
	je	.L26
	.loc 1 161 28
	movl	-36(%rbp), %eax
	andl	$2, %eax
	.loc 1 161 20
	testl	%eax, %eax
	je	.L27
	.loc 1 162 21
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
.L27:
	.loc 1 163 22
	call	__errno_location
	.loc 1 163 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L26:
	.loc 1 165 29
	movl	-44(%rbp), %eax
	andl	$1, %eax
	.loc 1 165 21
	testl	%eax, %eax
	je	.L28
	.loc 1 167 28
	movl	-36(%rbp), %eax
	andl	$2, %eax
	.loc 1 167 20
	testl	%eax, %eax
	je	.L29
	.loc 1 168 21
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
.L29:
	.loc 1 169 24
	movl	-4(%rbp), %eax
	jmp	.L25
.L28:
	.loc 1 173 17
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 174 84
	call	__errno_location
	.loc 1 174 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC5, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 175 17
	movl	$.LC10, %edi
	call	perror
	.loc 1 176 17
	movl	$1, %edi
	call	exit
.L21:
	.loc 1 192 16
	movl	-4(%rbp), %eax
	jmp	.L25
.L20:
.LBE2:
	.loc 1 196 9
	movl	$.LC11, %edi
	call	perror
	.loc 1 197 9
	movl	$1, %edi
	call	exit
.L25:
	.loc 1 200 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	close_с, .-close_с
	.section	.rodata
	.align 8
.LC12:
	.string	"from dup_\321\201 oldfd = %d, errno = %d\n"
	.text
	.globl	dup_с
	.type	dup_с, @function
dup_с:
.LFB13:
	.loc 1 228 1
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
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	.loc 1 230 16
	movl	-40(%rbp), %eax
	andl	$1, %eax
	.loc 1 230 8
	testl	%eax, %eax
	je	.L31
.LBB3:
	.loc 1 232 17
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	dup
	movl	%eax, -4(%rbp)
	.loc 1 233 12
	cmpl	$-1, -4(%rbp)
	jne	.L32
	.loc 1 235 24
	movl	-36(%rbp), %eax
	andl	$2, %eax
	.loc 1 235 16
	testl	%eax, %eax
	je	.L33
	.loc 1 237 17
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 238 80
	call	__errno_location
	.loc 1 238 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 239 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 240 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L33:
	.loc 1 242 24
	movl	-44(%rbp), %eax
	andl	$2, %eax
	.loc 1 242 16
	testl	%eax, %eax
	je	.L34
	.loc 1 244 28
	movl	-36(%rbp), %eax
	andl	$2, %eax
	.loc 1 244 20
	testl	%eax, %eax
	je	.L35
	.loc 1 245 21
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
.L35:
	.loc 1 246 24
	movl	$-1, %eax
	jmp	.L36
.L34:
	.loc 1 248 29
	movl	-44(%rbp), %eax
	andl	$4, %eax
	.loc 1 248 21
	testl	%eax, %eax
	je	.L37
	.loc 1 250 28
	movl	-36(%rbp), %eax
	andl	$2, %eax
	.loc 1 250 20
	testl	%eax, %eax
	je	.L38
	.loc 1 251 21
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
.L38:
	.loc 1 252 22
	call	__errno_location
	.loc 1 252 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L37:
	.loc 1 254 29
	movl	-44(%rbp), %eax
	andl	$1, %eax
	.loc 1 254 21
	testl	%eax, %eax
	je	.L39
	.loc 1 256 28
	movl	-36(%rbp), %eax
	andl	$2, %eax
	.loc 1 256 20
	testl	%eax, %eax
	je	.L40
	.loc 1 257 21
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
.L40:
	.loc 1 258 24
	movl	-4(%rbp), %eax
	jmp	.L36
.L39:
	.loc 1 262 17
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 263 80
	call	__errno_location
	.loc 1 263 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 264 17
	movl	$.LC10, %edi
	call	perror
	.loc 1 265 17
	movl	$1, %edi
	call	exit
.L32:
	.loc 1 268 16
	movl	-4(%rbp), %eax
	jmp	.L36
.L31:
.LBE3:
	.loc 1 272 9
	movl	$.LC11, %edi
	call	perror
	.loc 1 273 9
	movl	$1, %edi
	call	exit
.L36:
	.loc 1 276 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	dup_с, .-dup_с
	.section	.rodata
	.align 8
.LC13:
	.string	"from fork_\321\201 pid_t = %d, errno = %d\n"
	.text
	.globl	fork_с
	.type	fork_с, @function
fork_с:
.LFB14:
	.loc 1 318 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 319 15
	call	fork
	movl	%eax, -4(%rbp)
	.loc 1 320 8
	cmpl	$-1, -4(%rbp)
	jne	.L42
	.loc 1 322 9
	movq	stderr(%rip), %rax
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 323 69
	call	__errno_location
	.loc 1 323 9
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-4(%rbp), %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 324 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 325 14
	call	__errno_location
	.loc 1 325 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L42:
	.loc 1 327 12
	movl	-4(%rbp), %eax
	.loc 1 328 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	fork_с, .-fork_с
	.globl	fork_сb
	.type	fork_сb, @function
fork_сb:
.LFB15:
	.loc 1 331 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 332 15
	call	fork
	movl	%eax, -4(%rbp)
	.loc 1 333 8
	cmpl	$-1, -4(%rbp)
	jne	.L45
	.loc 1 335 9
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, %edi
	call	*%rdx
.LVL3:
.L45:
	.loc 1 337 12
	movl	-4(%rbp), %eax
	.loc 1 338 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	fork_сb, .-fork_сb
	.section	.rodata
	.align 8
.LC14:
	.string	"from fsync_\321\201 fildes = %d, errno = %d\n"
	.text
	.globl	fsync_с
	.type	fsync_с, @function
fsync_с:
.LFB16:
	.loc 1 342 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -24(%rbp)
	.loc 1 343 13
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	fsync
	movl	%eax, -4(%rbp)
	.loc 1 344 8
	cmpl	$-1, -4(%rbp)
	jne	.L48
	.loc 1 346 9
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 347 76
	call	__errno_location
	.loc 1 347 9
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 348 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 349 14
	call	__errno_location
	.loc 1 349 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L48:
	.loc 1 351 12
	movl	-4(%rbp), %eax
	.loc 1 352 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	fsync_с, .-fsync_с
	.globl	fsync_сb
	.type	fsync_сb, @function
fsync_сb:
.LFB17:
	.loc 1 355 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 356 13
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	fsync
	movl	%eax, -4(%rbp)
	.loc 1 357 8
	cmpl	$-1, -4(%rbp)
	jne	.L51
	.loc 1 359 9
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, %edi
	call	*%rdx
.LVL4:
.L51:
	.loc 1 361 12
	movl	-4(%rbp), %eax
	.loc 1 362 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	fsync_сb, .-fsync_сb
	.section	.rodata
.LC15:
	.string	"from getgroups_\321\201 errno = %d\n"
	.text
	.globl	getgroups_с
	.type	getgroups_с, @function
getgroups_с:
.LFB18:
	.loc 1 370 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -24(%rbp)
	.loc 1 371 13
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	getgroups
	movl	%eax, -4(%rbp)
	.loc 1 372 8
	cmpl	$-1, -4(%rbp)
	jne	.L54
	.loc 1 374 9
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 375 59
	call	__errno_location
	.loc 1 375 9
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 376 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 377 14
	call	__errno_location
	.loc 1 377 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L54:
	.loc 1 379 12
	movl	-4(%rbp), %eax
	.loc 1 380 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	getgroups_с, .-getgroups_с
	.globl	getgroups_сb
	.type	getgroups_сb, @function
getgroups_сb:
.LFB19:
	.loc 1 383 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 384 13
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	getgroups
	movl	%eax, -4(%rbp)
	.loc 1 385 8
	cmpl	$-1, -4(%rbp)
	jne	.L57
	.loc 1 387 9
	movq	-24(%rbp), %rax
	call	*%rax
.LVL5:
.L57:
	.loc 1 389 12
	movl	-4(%rbp), %eax
	.loc 1 390 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	getgroups_сb, .-getgroups_сb
	.section	.rodata
	.align 8
.LC16:
	.string	"from gethostname_\321\201 errno = %d\n"
	.text
	.globl	gethostname_с
	.type	gethostname_с, @function
gethostname_с:
.LFB20:
	.loc 1 394 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	.loc 1 395 13
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gethostname
	movl	%eax, -4(%rbp)
	.loc 1 396 8
	cmpl	$-1, -4(%rbp)
	jne	.L60
	.loc 1 398 9
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 399 61
	call	__errno_location
	.loc 1 399 9
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 400 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 401 14
	call	__errno_location
	.loc 1 401 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L60:
	.loc 1 403 12
	movl	-4(%rbp), %eax
	.loc 1 404 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	gethostname_с, .-gethostname_с
	.globl	gethostname_сb
	.type	gethostname_сb, @function
gethostname_сb:
.LFB21:
	.loc 1 407 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 408 13
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gethostname
	movl	%eax, -4(%rbp)
	.loc 1 409 8
	cmpl	$-1, -4(%rbp)
	jne	.L63
	.loc 1 411 9
	movq	-24(%rbp), %rax
	call	*%rax
.LVL6:
.L63:
	.loc 1 413 12
	movl	-4(%rbp), %eax
	.loc 1 414 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	gethostname_сb, .-gethostname_сb
	.section	.rodata
.LC17:
	.string	"from getlogin_\321\201 errno = %d\n"
	.text
	.globl	getlogin_с
	.type	getlogin_с, @function
getlogin_с:
.LFB22:
	.loc 1 417 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 418 15
	call	getlogin
	movq	%rax, -8(%rbp)
	.loc 1 419 8
	cmpq	$0, -8(%rbp)
	jne	.L66
	.loc 1 421 9
	movq	stderr(%rip), %rax
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 422 58
	call	__errno_location
	.loc 1 422 9
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC17, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 423 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 424 14
	call	__errno_location
	.loc 1 424 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L66:
	.loc 1 426 12
	movq	-8(%rbp), %rax
	.loc 1 427 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	getlogin_с, .-getlogin_с
	.globl	getlogin_сb
	.type	getlogin_сb, @function
getlogin_сb:
.LFB23:
	.loc 1 430 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 431 15
	call	getlogin
	movq	%rax, -8(%rbp)
	.loc 1 432 8
	cmpq	$0, -8(%rbp)
	jne	.L69
	.loc 1 434 9
	movq	-24(%rbp), %rdx
	movl	$0, %eax
	call	*%rdx
.LVL7:
.L69:
	.loc 1 436 12
	movq	-8(%rbp), %rax
	.loc 1 437 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	getlogin_сb, .-getlogin_сb
	.section	.rodata
	.align 8
.LC18:
	.string	"from getlogin_r_\321\201 errno = %d\n"
	.text
	.globl	getlogin_r_с
	.type	getlogin_r_с, @function
getlogin_r_с:
.LFB24:
	.loc 1 440 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	.loc 1 441 13
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getlogin_r
	movl	%eax, -4(%rbp)
	.loc 1 442 8
	cmpl	$0, -4(%rbp)
	je	.L72
	.loc 1 444 9
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 445 60
	call	__errno_location
	.loc 1 445 9
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 446 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 447 14
	call	__errno_location
	.loc 1 447 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L72:
	.loc 1 449 12
	movl	-4(%rbp), %eax
	.loc 1 450 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	getlogin_r_с, .-getlogin_r_с
	.globl	getlogin_r_сb
	.type	getlogin_r_сb, @function
getlogin_r_сb:
.LFB25:
	.loc 1 453 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 454 13
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getlogin_r
	movl	%eax, -4(%rbp)
	.loc 1 455 8
	cmpl	$0, -4(%rbp)
	je	.L75
	.loc 1 457 9
	movq	-24(%rbp), %rax
	call	*%rax
.LVL8:
.L75:
	.loc 1 459 12
	movl	-4(%rbp), %eax
	.loc 1 460 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	getlogin_r_сb, .-getlogin_r_сb
	.section	.rodata
	.align 8
.LC19:
	.string	"from getsid_\321\201 pid = %u, errno = %d\n"
	.text
	.globl	getsid_с
	.type	getsid_с, @function
getsid_с:
.LFB26:
	.loc 1 468 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -24(%rbp)
	.loc 1 469 13
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	getsid
	movl	%eax, -4(%rbp)
	.loc 1 470 8
	cmpl	$-1, -4(%rbp)
	jne	.L78
	.loc 1 472 9
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 473 71
	call	__errno_location
	.loc 1 473 9
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC19, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 474 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 475 14
	call	__errno_location
	.loc 1 475 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L78:
	.loc 1 477 12
	movl	-4(%rbp), %eax
	.loc 1 478 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	getsid_с, .-getsid_с
	.globl	getsid_сb
	.type	getsid_сb, @function
getsid_сb:
.LFB27:
	.loc 1 481 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 482 13
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	getsid
	movl	%eax, -4(%rbp)
	.loc 1 483 8
	cmpl	$-1, -4(%rbp)
	jne	.L81
	.loc 1 485 9
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, %edi
	call	*%rdx
.LVL9:
.L81:
	.loc 1 487 12
	movl	-4(%rbp), %eax
	.loc 1 488 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	getsid_сb, .-getsid_сb
	.section	.rodata
	.align 8
.LC20:
	.string	"from lockf_\321\201 fildes = %d,function = %ld,size = %ld, errno = %d\n"
	.text
	.globl	lockf_с
	.type	lockf_с, @function
lockf_с:
.LFB28:
	.loc 1 496 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	.loc 1 497 15
	movq	-32(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	lockf
	.loc 1 497 11
	cltq
	movq	%rax, -8(%rbp)
	.loc 1 498 8
	cmpq	$-1, -8(%rbp)
	jne	.L84
	.loc 1 500 9
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 501 118
	call	__errno_location
	.loc 1 501 9
	movl	(%rax), %edi
	movq	stderr(%rip), %rax
	movq	-32(%rbp), %rsi
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	%edi, %r9d
	movq	%rsi, %r8
	movl	$.LC20, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 502 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 503 14
	call	__errno_location
	.loc 1 503 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L84:
	.loc 1 505 12
	movq	-8(%rbp), %rax
	.loc 1 506 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	lockf_с, .-lockf_с
	.globl	lockf_сb
	.type	lockf_сb, @function
lockf_сb:
.LFB29:
	.loc 1 509 1
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
	.loc 1 510 15
	movq	-40(%rbp), %rdx
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	lockf
	.loc 1 510 11
	cltq
	movq	%rax, -8(%rbp)
	.loc 1 511 8
	cmpq	$-1, -8(%rbp)
	jne	.L87
	.loc 1 513 9
	movq	-40(%rbp), %rdx
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %r8
	movl	%ecx, %esi
	movl	%eax, %edi
	call	*%r8
.LVL10:
.L87:
	.loc 1 515 12
	movq	-8(%rbp), %rax
	.loc 1 516 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	lockf_сb, .-lockf_сb
	.section	.rodata
	.align 8
.LC21:
	.string	"from lockf_\321\201 fildes = %d,function = %d,size = %d, errno = %d\n"
	.text
	.globl	lseek_с
	.type	lseek_с, @function
lseek_с:
.LFB30:
	.loc 1 519 1
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
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	.loc 1 520 13
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek
	.loc 1 520 9
	movl	%eax, -4(%rbp)
	.loc 1 521 8
	cmpl	$-1, -4(%rbp)
	jne	.L90
	.loc 1 523 9
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 524 115
	call	__errno_location
	.loc 1 524 9
	movl	(%rax), %edi
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %esi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$.LC21, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 525 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 526 14
	call	__errno_location
	.loc 1 526 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L90:
	.loc 1 528 12
	movl	-4(%rbp), %eax
	.loc 1 529 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	lseek_с, .-lseek_с
	.globl	lseek_сb
	.type	lseek_сb, @function
lseek_сb:
.LFB31:
	.loc 1 532 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	.loc 1 533 13
	movl	-32(%rbp), %edx
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek
	.loc 1 533 9
	movl	%eax, -4(%rbp)
	.loc 1 534 8
	cmpl	$-1, -4(%rbp)
	jne	.L93
	.loc 1 536 9
	movl	-32(%rbp), %edx
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %r8
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	*%r8
.LVL11:
.L93:
	.loc 1 538 12
	movl	-4(%rbp), %eax
	.loc 1 539 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	lseek_сb, .-lseek_сb
	.section	.rodata
	.align 8
.LC22:
	.string	"from read_\321\201 fildes = %d, nbyte = %ld, errno = %d\n"
	.text
	.globl	read_с
	.type	read_с, @function
read_с:
.LFB32:
	.loc 1 548 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -52(%rbp)
	.loc 1 551 16
	movl	16(%rbp), %eax
	andl	$1, %eax
	.loc 1 551 8
	testl	%eax, %eax
	je	.L96
.LBB4:
	.loc 1 553 21
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read
	movq	%rax, -8(%rbp)
	.loc 1 554 12
	cmpq	$-1, -8(%rbp)
	jne	.L97
	.loc 1 556 24
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 556 16
	testl	%eax, %eax
	je	.L98
	.loc 1 558 17
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 559 103
	call	__errno_location
	.loc 1 559 17
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	movl	%esi, %r8d
	movl	$.LC22, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 560 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 561 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L98:
	.loc 1 563 24
	movl	24(%rbp), %eax
	andl	$2, %eax
	.loc 1 563 16
	testl	%eax, %eax
	je	.L99
	.loc 1 565 28
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 565 20
	testl	%eax, %eax
	je	.L100
	.loc 1 566 21
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
.L100:
	.loc 1 567 24
	movq	$-1, %rax
	jmp	.L101
.L99:
	.loc 1 569 29
	movl	24(%rbp), %eax
	andl	$4, %eax
	.loc 1 569 21
	testl	%eax, %eax
	je	.L102
	.loc 1 571 28
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 571 20
	testl	%eax, %eax
	je	.L103
	.loc 1 572 21
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
.L103:
	.loc 1 573 22
	call	__errno_location
	.loc 1 573 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L102:
	.loc 1 575 29
	movl	24(%rbp), %eax
	andl	$1, %eax
	.loc 1 575 21
	testl	%eax, %eax
	je	.L104
	.loc 1 577 28
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 577 20
	testl	%eax, %eax
	je	.L105
	.loc 1 578 21
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
.L105:
	.loc 1 579 24
	movq	-8(%rbp), %rax
	jmp	.L101
.L104:
	.loc 1 583 17
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 584 103
	call	__errno_location
	.loc 1 584 17
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	movl	%esi, %r8d
	movl	$.LC22, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 585 17
	movl	$.LC10, %edi
	call	perror
	.loc 1 586 17
	movl	$1, %edi
	call	exit
.L97:
	.loc 1 589 16
	movq	-8(%rbp), %rax
	jmp	.L101
.L96:
.LBE4:
	.loc 1 593 9
	movl	$.LC11, %edi
	call	perror
	.loc 1 594 9
	movl	$1, %edi
	call	exit
.L101:
	.loc 1 597 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	read_с, .-read_с
	.globl	read_сb
	.type	read_сb, @function
read_сb:
.LFB33:
	.loc 1 613 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 1 614 17
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read
	movq	%rax, -8(%rbp)
	.loc 1 615 8
	cmpq	$-1, -8(%rbp)
	jne	.L107
	.loc 1 617 9
	movq	-48(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	*%rcx
.LVL12:
.L107:
	.loc 1 619 12
	movq	-8(%rbp), %rax
	.loc 1 620 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	read_сb, .-read_сb
	.section	.rodata
	.align 8
.LC23:
	.string	"from unlink_\321\201 fd = %d, errno = %d\n"
	.text
	.globl	unlink_с
	.type	unlink_с, @function
unlink_с:
.LFB34:
	.loc 1 647 1
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
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	.loc 1 650 16
	movl	-40(%rbp), %eax
	andl	$1, %eax
	.loc 1 650 8
	testl	%eax, %eax
	je	.L110
.LBB5:
	.loc 1 653 17
	movl	-20(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	unlink
	movl	%eax, -4(%rbp)
	.loc 1 654 12
	cmpl	$-1, -4(%rbp)
	jne	.L111
	.loc 1 656 24
	movl	-36(%rbp), %eax
	andl	$2, %eax
	.loc 1 656 16
	testl	%eax, %eax
	je	.L112
	.loc 1 658 17
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 659 77
	call	__errno_location
	.loc 1 659 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC23, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 660 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 661 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L112:
	.loc 1 663 24
	movl	-44(%rbp), %eax
	andl	$2, %eax
	.loc 1 663 16
	testl	%eax, %eax
	je	.L113
	.loc 1 665 28
	movl	-36(%rbp), %eax
	andl	$2, %eax
	.loc 1 665 20
	testl	%eax, %eax
	je	.L114
	.loc 1 666 21
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
.L114:
	.loc 1 667 24
	movl	$-1, %eax
	jmp	.L115
.L113:
	.loc 1 669 29
	movl	-44(%rbp), %eax
	andl	$4, %eax
	.loc 1 669 21
	testl	%eax, %eax
	je	.L116
	.loc 1 671 28
	movl	-36(%rbp), %eax
	andl	$2, %eax
	.loc 1 671 20
	testl	%eax, %eax
	je	.L117
	.loc 1 672 21
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
.L117:
	.loc 1 673 22
	call	__errno_location
	.loc 1 673 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L116:
	.loc 1 675 29
	movl	-44(%rbp), %eax
	andl	$1, %eax
	.loc 1 675 21
	testl	%eax, %eax
	je	.L118
	.loc 1 677 28
	movl	-36(%rbp), %eax
	andl	$2, %eax
	.loc 1 677 20
	testl	%eax, %eax
	je	.L119
	.loc 1 678 21
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
.L119:
	.loc 1 679 24
	movl	-4(%rbp), %eax
	jmp	.L115
.L118:
	.loc 1 683 17
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 684 77
	call	__errno_location
	.loc 1 684 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC23, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 685 17
	movl	$.LC10, %edi
	call	perror
	.loc 1 686 17
	movl	$1, %edi
	call	exit
.L111:
	.loc 1 689 16
	movl	-4(%rbp), %eax
	jmp	.L115
.L110:
.LBE5:
	.loc 1 693 9
	movl	$.LC11, %edi
	call	perror
	.loc 1 694 9
	movl	$1, %edi
	call	exit
.L115:
	.loc 1 697 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	unlink_с, .-unlink_с
	.section	.rodata
	.align 8
.LC24:
	.string	"from write_\321\201 fildes = %d, errno = %d\n"
	.text
	.globl	write_с
	.type	write_с, @function
write_с:
.LFB35:
	.loc 1 701 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -52(%rbp)
	.loc 1 704 16
	movl	16(%rbp), %eax
	andl	$1, %eax
	.loc 1 704 8
	testl	%eax, %eax
	je	.L121
.LBB6:
	.loc 1 706 17
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write
	.loc 1 706 13
	movl	%eax, -4(%rbp)
	.loc 1 707 12
	cmpl	$-1, -4(%rbp)
	jne	.L122
	.loc 1 709 24
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 709 16
	testl	%eax, %eax
	je	.L123
	.loc 1 711 17
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 712 84
	call	__errno_location
	.loc 1 712 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC24, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 713 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 714 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L123:
	.loc 1 716 24
	movl	24(%rbp), %eax
	andl	$2, %eax
	.loc 1 716 16
	testl	%eax, %eax
	je	.L124
	.loc 1 718 28
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 718 20
	testl	%eax, %eax
	je	.L125
	.loc 1 719 21
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
.L125:
	.loc 1 720 24
	movl	$-1, %eax
	jmp	.L126
.L124:
	.loc 1 722 29
	movl	24(%rbp), %eax
	andl	$4, %eax
	.loc 1 722 21
	testl	%eax, %eax
	je	.L127
	.loc 1 724 28
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 724 20
	testl	%eax, %eax
	je	.L128
	.loc 1 725 21
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
.L128:
	.loc 1 726 22
	call	__errno_location
	.loc 1 726 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L127:
	.loc 1 728 29
	movl	24(%rbp), %eax
	andl	$1, %eax
	.loc 1 728 21
	testl	%eax, %eax
	je	.L129
	.loc 1 730 28
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 730 20
	testl	%eax, %eax
	je	.L130
	.loc 1 731 21
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
.L130:
	.loc 1 732 24
	movl	-4(%rbp), %eax
	jmp	.L126
.L129:
	.loc 1 736 17
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 737 84
	call	__errno_location
	.loc 1 737 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC24, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 738 17
	movl	$.LC10, %edi
	call	perror
	.loc 1 739 17
	movl	$1, %edi
	call	exit
.L122:
	.loc 1 742 16
	movl	-4(%rbp), %eax
	jmp	.L126
.L121:
.LBE6:
	.loc 1 746 9
	movl	$.LC11, %edi
	call	perror
	.loc 1 747 9
	movl	$1, %edi
	call	exit
.L126:
	.loc 1 750 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	write_с, .-write_с
.Letext0:
	.file 2 "/usr/include/bits/types.h"
	.file 3 "/usr/include/signal.h"
	.file 4 "/usr/lib/gcc/x86_64-redhat-linux/12/include/stddef.h"
	.file 5 "/usr/include/bits/types/struct_FILE.h"
	.file 6 "/usr/include/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/sys/types.h"
	.file 9 "/usr/include/unistd.h"
	.file 10 "/usr/include/stdlib.h"
	.file 11 "/usr/include/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x12a5
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x19
	.long	.LASF133
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x1a
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x13
	.long	0x58
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0xb
	.long	.LASF9
	.byte	0x2
	.byte	0x92
	.byte	0x19
	.long	0x3c
	.uleb128 0xb
	.long	.LASF10
	.byte	0x2
	.byte	0x93
	.byte	0x19
	.long	0x3c
	.uleb128 0xb
	.long	.LASF11
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x64
	.uleb128 0xb
	.long	.LASF12
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x64
	.uleb128 0xb
	.long	.LASF13
	.byte	0x2
	.byte	0x9a
	.byte	0x19
	.long	0x58
	.uleb128 0x1b
	.byte	0x8
	.uleb128 0xb
	.long	.LASF14
	.byte	0x2
	.byte	0xc2
	.byte	0x1b
	.long	0x64
	.uleb128 0x5
	.long	0xba
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x13
	.long	0xba
	.uleb128 0x5
	.long	0xc1
	.uleb128 0x14
	.long	0xc6
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.long	.LASF16
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.long	.LASF17
	.uleb128 0xb
	.long	.LASF18
	.byte	0x3
	.byte	0x28
	.byte	0x11
	.long	0x9b
	.uleb128 0xb
	.long	.LASF19
	.byte	0x3
	.byte	0x2e
	.byte	0x11
	.long	0x6b
	.uleb128 0xb
	.long	.LASF20
	.byte	0x4
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF21
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF22
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.long	.LASF23
	.uleb128 0x1c
	.long	.LASF134
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x281
	.uleb128 0x4
	.long	.LASF24
	.byte	0x33
	.byte	0x7
	.long	0x58
	.byte	0
	.uleb128 0x4
	.long	.LASF25
	.byte	0x36
	.byte	0x9
	.long	0xb5
	.byte	0x8
	.uleb128 0x4
	.long	.LASF26
	.byte	0x37
	.byte	0x9
	.long	0xb5
	.byte	0x10
	.uleb128 0x4
	.long	.LASF27
	.byte	0x38
	.byte	0x9
	.long	0xb5
	.byte	0x18
	.uleb128 0x4
	.long	.LASF28
	.byte	0x39
	.byte	0x9
	.long	0xb5
	.byte	0x20
	.uleb128 0x4
	.long	.LASF29
	.byte	0x3a
	.byte	0x9
	.long	0xb5
	.byte	0x28
	.uleb128 0x4
	.long	.LASF30
	.byte	0x3b
	.byte	0x9
	.long	0xb5
	.byte	0x30
	.uleb128 0x4
	.long	.LASF31
	.byte	0x3c
	.byte	0x9
	.long	0xb5
	.byte	0x38
	.uleb128 0x4
	.long	.LASF32
	.byte	0x3d
	.byte	0x9
	.long	0xb5
	.byte	0x40
	.uleb128 0x4
	.long	.LASF33
	.byte	0x40
	.byte	0x9
	.long	0xb5
	.byte	0x48
	.uleb128 0x4
	.long	.LASF34
	.byte	0x41
	.byte	0x9
	.long	0xb5
	.byte	0x50
	.uleb128 0x4
	.long	.LASF35
	.byte	0x42
	.byte	0x9
	.long	0xb5
	.byte	0x58
	.uleb128 0x4
	.long	.LASF36
	.byte	0x44
	.byte	0x16
	.long	0x29a
	.byte	0x60
	.uleb128 0x4
	.long	.LASF37
	.byte	0x46
	.byte	0x14
	.long	0x29f
	.byte	0x68
	.uleb128 0x4
	.long	.LASF38
	.byte	0x48
	.byte	0x7
	.long	0x58
	.byte	0x70
	.uleb128 0x4
	.long	.LASF39
	.byte	0x49
	.byte	0x7
	.long	0x58
	.byte	0x74
	.uleb128 0x4
	.long	.LASF40
	.byte	0x4a
	.byte	0xb
	.long	0x83
	.byte	0x78
	.uleb128 0x4
	.long	.LASF41
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x4
	.long	.LASF42
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x4
	.long	.LASF43
	.byte	0x4f
	.byte	0x8
	.long	0x2a4
	.byte	0x83
	.uleb128 0x4
	.long	.LASF44
	.byte	0x51
	.byte	0xf
	.long	0x2b4
	.byte	0x88
	.uleb128 0x4
	.long	.LASF45
	.byte	0x59
	.byte	0xd
	.long	0x8f
	.byte	0x90
	.uleb128 0x4
	.long	.LASF46
	.byte	0x5b
	.byte	0x17
	.long	0x2be
	.byte	0x98
	.uleb128 0x4
	.long	.LASF47
	.byte	0x5c
	.byte	0x19
	.long	0x2c8
	.byte	0xa0
	.uleb128 0x4
	.long	.LASF48
	.byte	0x5d
	.byte	0x14
	.long	0x29f
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF49
	.byte	0x5e
	.byte	0x9
	.long	0xa7
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF50
	.byte	0x5f
	.byte	0xa
	.long	0xf6
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF51
	.byte	0x60
	.byte	0x7
	.long	0x58
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF52
	.byte	0x62
	.byte	0x8
	.long	0x2cd
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF53
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0x117
	.uleb128 0x1d
	.long	.LASF135
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0x10
	.long	.LASF54
	.uleb128 0x5
	.long	0x295
	.uleb128 0x5
	.long	0x117
	.uleb128 0x15
	.long	0xba
	.long	0x2b4
	.uleb128 0x16
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x28d
	.uleb128 0x10
	.long	.LASF55
	.uleb128 0x5
	.long	0x2b9
	.uleb128 0x10
	.long	.LASF56
	.uleb128 0x5
	.long	0x2c3
	.uleb128 0x15
	.long	0xba
	.long	0x2dd
	.uleb128 0x16
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.long	.LASF57
	.byte	0x7
	.byte	0x3f
	.byte	0x11
	.long	0x83
	.uleb128 0xb
	.long	.LASF58
	.byte	0x7
	.byte	0x4d
	.byte	0x13
	.long	0xa9
	.uleb128 0x5
	.long	0x281
	.uleb128 0x14
	.long	0x2f5
	.uleb128 0x17
	.long	.LASF59
	.byte	0x90
	.long	0x2f5
	.uleb128 0x17
	.long	.LASF60
	.byte	0x91
	.long	0x2f5
	.uleb128 0xb
	.long	.LASF61
	.byte	0x8
	.byte	0x40
	.byte	0x11
	.long	0x77
	.uleb128 0x5
	.long	0x324
	.uleb128 0x1e
	.uleb128 0x8
	.long	.LASF62
	.byte	0x9
	.value	0x17a
	.byte	0x10
	.long	0x2e9
	.long	0x346
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x31f
	.uleb128 0x2
	.long	0xf6
	.byte	0
	.uleb128 0x8
	.long	.LASF63
	.byte	0x9
	.value	0x35a
	.byte	0xc
	.long	0x58
	.long	0x35d
	.uleb128 0x2
	.long	0xc6
	.byte	0
	.uleb128 0x8
	.long	.LASF64
	.byte	0x9
	.value	0x173
	.byte	0x10
	.long	0x2e9
	.long	0x37e
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0xa7
	.uleb128 0x2
	.long	0xf6
	.byte	0
	.uleb128 0x8
	.long	.LASF65
	.byte	0x9
	.value	0x153
	.byte	0x10
	.long	0x83
	.long	0x39f
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x83
	.uleb128 0x2
	.long	0x58
	.byte	0
	.uleb128 0x8
	.long	.LASF66
	.byte	0x9
	.value	0x45a
	.byte	0xc
	.long	0x58
	.long	0x3c0
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x83
	.byte	0
	.uleb128 0x8
	.long	.LASF67
	.byte	0x9
	.value	0x2b5
	.byte	0x10
	.long	0x9b
	.long	0x3d7
	.uleb128 0x2
	.long	0x9b
	.byte	0
	.uleb128 0x8
	.long	.LASF68
	.byte	0x9
	.value	0x379
	.byte	0xc
	.long	0x58
	.long	0x3f3
	.uleb128 0x2
	.long	0xb5
	.uleb128 0x2
	.long	0xf6
	.byte	0
	.uleb128 0x18
	.long	.LASF72
	.value	0x371
	.byte	0xe
	.long	0xb5
	.uleb128 0x8
	.long	.LASF69
	.byte	0x9
	.value	0x38f
	.byte	0xc
	.long	0x58
	.long	0x41b
	.uleb128 0x2
	.long	0xb5
	.uleb128 0x2
	.long	0xf6
	.byte	0
	.uleb128 0x8
	.long	.LASF70
	.byte	0x9
	.value	0x2c7
	.byte	0xc
	.long	0x58
	.long	0x437
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x437
	.byte	0
	.uleb128 0x5
	.long	0x77
	.uleb128 0x8
	.long	.LASF71
	.byte	0x9
	.value	0x3dd
	.byte	0xc
	.long	0x58
	.long	0x453
	.uleb128 0x2
	.long	0x58
	.byte	0
	.uleb128 0x18
	.long	.LASF73
	.value	0x30a
	.byte	0x10
	.long	0x9b
	.uleb128 0x1f
	.string	"dup"
	.byte	0x9
	.value	0x228
	.byte	0xc
	.long	0x58
	.long	0x476
	.uleb128 0x2
	.long	0x58
	.byte	0
	.uleb128 0x8
	.long	.LASF74
	.byte	0x7
	.value	0x164
	.byte	0xc
	.long	0x58
	.long	0x48e
	.uleb128 0x2
	.long	0xc6
	.uleb128 0x11
	.byte	0
	.uleb128 0x20
	.long	.LASF75
	.byte	0x7
	.byte	0xe6
	.byte	0xc
	.long	0x58
	.long	0x4a4
	.uleb128 0x2
	.long	0x2f5
	.byte	0
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.value	0x166
	.byte	0xc
	.long	0x58
	.long	0x4bb
	.uleb128 0x2
	.long	0x58
	.byte	0
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.value	0x1ed
	.byte	0xc
	.long	0x58
	.long	0x4dc
	.uleb128 0x2
	.long	0xc6
	.uleb128 0x2
	.long	0x6b
	.uleb128 0x2
	.long	0x77
	.byte	0
	.uleb128 0x8
	.long	.LASF78
	.byte	0x9
	.value	0x205
	.byte	0xc
	.long	0x58
	.long	0x4f3
	.uleb128 0x2
	.long	0xc6
	.byte	0
	.uleb128 0x21
	.long	.LASF79
	.byte	0xa
	.value	0x270
	.byte	0xd
	.long	0x506
	.uleb128 0x2
	.long	0x58
	.byte	0
	.uleb128 0x22
	.long	.LASF136
	.byte	0x7
	.value	0x324
	.byte	0xd
	.long	0x519
	.uleb128 0x2
	.long	0xc6
	.byte	0
	.uleb128 0x23
	.long	.LASF80
	.byte	0xb
	.byte	0x25
	.byte	0xd
	.long	0x525
	.uleb128 0x5
	.long	0x58
	.uleb128 0x8
	.long	.LASF81
	.byte	0x7
	.value	0x15e
	.byte	0xc
	.long	0x58
	.long	0x547
	.uleb128 0x2
	.long	0x2fa
	.uleb128 0x2
	.long	0xcb
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	.LASF82
	.byte	0x9
	.value	0x11f
	.byte	0xc
	.long	0x58
	.long	0x563
	.uleb128 0x2
	.long	0xc6
	.uleb128 0x2
	.long	0x58
	.byte	0
	.uleb128 0x6
	.long	.LASF90
	.value	0x2bc
	.byte	0xb
	.long	0x58
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x61e
	.uleb128 0x1
	.long	.LASF83
	.value	0x2bc
	.byte	0x18
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"buf"
	.value	0x2bc
	.byte	0x2c
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF84
	.value	0x2bc
	.byte	0x38
	.long	0xf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF85
	.value	0x2bc
	.byte	0x4b
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF86
	.value	0x2bc
	.byte	0x5b
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF87
	.value	0x2bc
	.byte	0x65
	.long	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.long	.LASF88
	.value	0x2bc
	.byte	0x71
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.long	.LASF89
	.value	0x2bc
	.byte	0x7d
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x7
	.string	"a"
	.value	0x2c2
	.byte	0xd
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LASF91
	.value	0x286
	.byte	0xb
	.long	0x58
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b9
	.uleb128 0x9
	.string	"fd"
	.value	0x286
	.byte	0x19
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.long	.LASF85
	.value	0x286
	.byte	0x29
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF86
	.value	0x286
	.byte	0x39
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF87
	.value	0x286
	.byte	0x43
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.long	.LASF88
	.value	0x286
	.byte	0x4f
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF89
	.value	0x286
	.byte	0x5b
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xf
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x7
	.string	"a"
	.value	0x28d
	.byte	0xd
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LASF92
	.value	0x264
	.byte	0x5
	.long	0x58
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x724
	.uleb128 0x9
	.string	"cb"
	.value	0x264
	.byte	0x12
	.long	0x738
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF83
	.value	0x264
	.byte	0x27
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.string	"buf"
	.value	0x264
	.byte	0x35
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF84
	.value	0x264
	.byte	0x41
	.long	0xf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"a"
	.value	0x266
	.byte	0xd
	.long	0x2e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	0x58
	.long	0x738
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0xf6
	.byte	0
	.uleb128 0x5
	.long	0x724
	.uleb128 0x6
	.long	.LASF93
	.value	0x223
	.byte	0xf
	.long	0x2e9
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f8
	.uleb128 0x1
	.long	.LASF83
	.value	0x223
	.byte	0x1b
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"buf"
	.value	0x223
	.byte	0x29
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF84
	.value	0x223
	.byte	0x35
	.long	0xf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF85
	.value	0x223
	.byte	0x48
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF86
	.value	0x223
	.byte	0x58
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF87
	.value	0x223
	.byte	0x62
	.long	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.long	.LASF88
	.value	0x223
	.byte	0x6e
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.long	.LASF89
	.value	0x223
	.byte	0x7a
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x7
	.string	"a"
	.value	0x229
	.byte	0x11
	.long	0x2e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LASF94
	.value	0x213
	.byte	0xb
	.long	0x58
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x863
	.uleb128 0x9
	.string	"cb"
	.value	0x213
	.byte	0x19
	.long	0x87c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF83
	.value	0x213
	.byte	0x32
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.long	.LASF95
	.value	0x213
	.byte	0x40
	.long	0x2dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF96
	.value	0x213
	.byte	0x4c
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"a"
	.value	0x215
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.long	0x58
	.long	0x87c
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x2dd
	.uleb128 0x2
	.long	0x58
	.byte	0
	.uleb128 0x5
	.long	0x863
	.uleb128 0x6
	.long	.LASF97
	.value	0x206
	.byte	0xb
	.long	0x58
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x8fc
	.uleb128 0x1
	.long	.LASF83
	.value	0x206
	.byte	0x18
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.long	.LASF95
	.value	0x206
	.byte	0x26
	.long	0x2dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF96
	.value	0x206
	.byte	0x32
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF85
	.value	0x206
	.byte	0x45
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF86
	.value	0x206
	.byte	0x55
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.string	"a"
	.value	0x208
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF98
	.value	0x1fc
	.byte	0xd
	.long	0x2dd
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x967
	.uleb128 0x9
	.string	"cb"
	.value	0x1fc
	.byte	0x1b
	.long	0x980
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF83
	.value	0x1fc
	.byte	0x34
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.long	.LASF99
	.value	0x1fc
	.byte	0x40
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF100
	.value	0x1fc
	.byte	0x50
	.long	0x2dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"a"
	.value	0x1fe
	.byte	0xb
	.long	0x2dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	0x58
	.long	0x980
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x2dd
	.byte	0
	.uleb128 0x5
	.long	0x967
	.uleb128 0x6
	.long	.LASF101
	.value	0x1ef
	.byte	0xd
	.long	0x2dd
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0xa00
	.uleb128 0x1
	.long	.LASF83
	.value	0x1ef
	.byte	0x1a
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.long	.LASF99
	.value	0x1ef
	.byte	0x26
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF100
	.value	0x1ef
	.byte	0x36
	.long	0x2dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF85
	.value	0x1ef
	.byte	0x48
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF86
	.value	0x1ef
	.byte	0x58
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.string	"a"
	.value	0x1f1
	.byte	0xb
	.long	0x2dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF102
	.value	0x1e0
	.byte	0xb
	.long	0x58
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0xa4d
	.uleb128 0x9
	.string	"cb"
	.value	0x1e0
	.byte	0x1a
	.long	0xa5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"pid"
	.value	0x1e0
	.byte	0x2b
	.long	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"a"
	.value	0x1e2
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.long	0x58
	.long	0xa5c
	.uleb128 0x2
	.long	0xde
	.byte	0
	.uleb128 0x5
	.long	0xa4d
	.uleb128 0x6
	.long	.LASF103
	.value	0x1d3
	.byte	0xb
	.long	0x58
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0xabe
	.uleb128 0x9
	.string	"pid"
	.value	0x1d3
	.byte	0x1b
	.long	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.long	.LASF85
	.value	0x1d3
	.byte	0x2c
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF86
	.value	0x1d3
	.byte	0x3c
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"a"
	.value	0x1d5
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF104
	.value	0x1c4
	.byte	0xb
	.long	0x58
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xb1a
	.uleb128 0x9
	.string	"cb"
	.value	0x1c4
	.byte	0x1e
	.long	0xb1f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF105
	.value	0x1c4
	.byte	0x2e
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF106
	.value	0x1c4
	.byte	0x3b
	.long	0xf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"a"
	.value	0x1c6
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	0x58
	.uleb128 0x5
	.long	0xb1a
	.uleb128 0x6
	.long	.LASF107
	.value	0x1b7
	.byte	0xb
	.long	0x58
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xb90
	.uleb128 0x1
	.long	.LASF105
	.value	0x1b7
	.byte	0x1f
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF106
	.value	0x1b7
	.byte	0x2c
	.long	0xf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF85
	.value	0x1b7
	.byte	0x42
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF86
	.value	0x1b7
	.byte	0x52
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.string	"a"
	.value	0x1b9
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF108
	.value	0x1ad
	.byte	0xd
	.long	0xb5
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xbce
	.uleb128 0x9
	.string	"cb"
	.value	0x1ad
	.byte	0x1e
	.long	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"a"
	.value	0x1af
	.byte	0xb
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	0x58
	.long	0xbd9
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0xbce
	.uleb128 0x6
	.long	.LASF109
	.value	0x1a0
	.byte	0xd
	.long	0xb5
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xc2c
	.uleb128 0x1
	.long	.LASF85
	.value	0x1a0
	.byte	0x25
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF86
	.value	0x1a0
	.byte	0x35
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"a"
	.value	0x1a2
	.byte	0xb
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF110
	.value	0x196
	.byte	0xb
	.long	0x58
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xc88
	.uleb128 0x9
	.string	"cb"
	.value	0x196
	.byte	0x1f
	.long	0xb1f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF105
	.value	0x196
	.byte	0x2f
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF111
	.value	0x196
	.byte	0x3c
	.long	0xf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"a"
	.value	0x198
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF112
	.value	0x189
	.byte	0xb
	.long	0x58
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xcf4
	.uleb128 0x1
	.long	.LASF105
	.value	0x189
	.byte	0x20
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF111
	.value	0x189
	.byte	0x2d
	.long	0xf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF85
	.value	0x189
	.byte	0x42
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF86
	.value	0x189
	.byte	0x52
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.string	"a"
	.value	0x18b
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF113
	.value	0x17e
	.byte	0xb
	.long	0x58
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xd50
	.uleb128 0x9
	.string	"cb"
	.value	0x17e
	.byte	0x1d
	.long	0xb1f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF114
	.value	0x17e
	.byte	0x2b
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.long	.LASF115
	.value	0x17e
	.byte	0x3d
	.long	0xd50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"a"
	.value	0x180
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.long	0x313
	.uleb128 0x6
	.long	.LASF116
	.value	0x171
	.byte	0xb
	.long	0x58
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xdc1
	.uleb128 0x1
	.long	.LASF114
	.value	0x171
	.byte	0x1c
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.long	.LASF115
	.value	0x171
	.byte	0x2e
	.long	0xd50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF85
	.value	0x171
	.byte	0x47
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF86
	.value	0x171
	.byte	0x57
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"a"
	.value	0x173
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF117
	.value	0x162
	.byte	0xb
	.long	0x58
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xe0e
	.uleb128 0x9
	.string	"cb"
	.value	0x162
	.byte	0x19
	.long	0xe1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF83
	.value	0x162
	.byte	0x26
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"a"
	.value	0x164
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.long	0x58
	.long	0xe1d
	.uleb128 0x2
	.long	0x58
	.byte	0
	.uleb128 0x5
	.long	0xe0e
	.uleb128 0x6
	.long	.LASF118
	.value	0x155
	.byte	0xb
	.long	0x58
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xe7f
	.uleb128 0x1
	.long	.LASF83
	.value	0x155
	.byte	0x18
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.long	.LASF85
	.value	0x155
	.byte	0x2c
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF86
	.value	0x155
	.byte	0x3c
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"a"
	.value	0x157
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF119
	.value	0x14a
	.byte	0xd
	.long	0xde
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xebd
	.uleb128 0x9
	.string	"cb"
	.value	0x14a
	.byte	0x1a
	.long	0xa5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"a"
	.value	0x14c
	.byte	0xb
	.long	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF120
	.value	0x13d
	.byte	0xd
	.long	0xde
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xf0b
	.uleb128 0x1
	.long	.LASF85
	.value	0x13d
	.byte	0x21
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF86
	.value	0x13d
	.byte	0x31
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"a"
	.value	0x13f
	.byte	0xb
	.long	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF121
	.byte	0xe3
	.long	0x58
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xf9e
	.uleb128 0x3
	.long	.LASF122
	.byte	0xe3
	.byte	0x16
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.long	.LASF85
	.byte	0xe3
	.byte	0x29
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF86
	.byte	0xe3
	.byte	0x39
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF87
	.byte	0xe3
	.byte	0x43
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.long	.LASF88
	.byte	0xe3
	.byte	0x4f
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.long	.LASF89
	.byte	0xe3
	.byte	0x5b
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xf
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0xd
	.string	"a"
	.byte	0xe8
	.byte	0xd
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF123
	.byte	0x89
	.long	0x58
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1031
	.uleb128 0x3
	.long	.LASF83
	.byte	0x89
	.byte	0x18
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.long	.LASF85
	.byte	0x89
	.byte	0x2c
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF86
	.byte	0x89
	.byte	0x3c
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF87
	.byte	0x89
	.byte	0x46
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.long	.LASF88
	.byte	0x89
	.byte	0x52
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.long	.LASF89
	.byte	0x89
	.byte	0x5e
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xf
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xd
	.string	"a"
	.byte	0x8f
	.byte	0xd
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF124
	.byte	0x7e
	.long	0x58
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1094
	.uleb128 0x12
	.string	"cb"
	.byte	0x7e
	.long	0x10ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF125
	.byte	0x7e
	.byte	0x39
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF126
	.byte	0x7e
	.byte	0x45
	.long	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.long	.LASF127
	.byte	0x7e
	.byte	0x52
	.long	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.string	"a"
	.byte	0x80
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.long	0x58
	.long	0x10ad
	.uleb128 0x2
	.long	0xb5
	.uleb128 0x2
	.long	0xea
	.uleb128 0x2
	.long	0xea
	.byte	0
	.uleb128 0x5
	.long	0x1094
	.uleb128 0xe
	.long	.LASF128
	.byte	0x71
	.long	0x58
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1125
	.uleb128 0x3
	.long	.LASF125
	.byte	0x71
	.byte	0x20
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF126
	.byte	0x71
	.byte	0x2c
	.long	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.long	.LASF127
	.byte	0x71
	.byte	0x39
	.long	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF85
	.byte	0x71
	.byte	0x4c
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.long	.LASF86
	.byte	0x71
	.byte	0x5c
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xd
	.string	"a"
	.byte	0x73
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF129
	.byte	0x66
	.long	0x58
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x116c
	.uleb128 0x12
	.string	"cb"
	.byte	0x66
	.long	0x117b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF125
	.byte	0x66
	.byte	0x2b
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.string	"a"
	.byte	0x68
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.long	0x58
	.long	0x117b
	.uleb128 0x2
	.long	0xb5
	.byte	0
	.uleb128 0x5
	.long	0x116c
	.uleb128 0xe
	.long	.LASF130
	.byte	0x59
	.long	0x58
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x11d7
	.uleb128 0x3
	.long	.LASF125
	.byte	0x59
	.byte	0x1a
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF85
	.byte	0x59
	.byte	0x2c
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF86
	.byte	0x59
	.byte	0x3c
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xd
	.string	"a"
	.byte	0x5b
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF131
	.byte	0x4c
	.long	0x58
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x122c
	.uleb128 0x12
	.string	"cb"
	.byte	0x4c
	.long	0x1240
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF125
	.byte	0x4c
	.byte	0x30
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF132
	.byte	0x4c
	.byte	0x3a
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xd
	.string	"a"
	.byte	0x4e
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.long	0x58
	.long	0x1240
	.uleb128 0x2
	.long	0xb5
	.uleb128 0x2
	.long	0x58
	.byte	0
	.uleb128 0x5
	.long	0x122c
	.uleb128 0x26
	.long	.LASF137
	.byte	0x1
	.byte	0x3f
	.byte	0xb
	.long	0x58
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.long	.LASF125
	.byte	0x3f
	.byte	0x20
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF132
	.byte	0x3f
	.byte	0x2a
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.long	.LASF85
	.byte	0x3f
	.byte	0x3d
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.long	.LASF86
	.byte	0x3f
	.byte	0x4d
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.string	"a"
	.byte	0x41
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x18
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
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x21
	.sleb128 25
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.string	"printf"
.LASF11:
	.string	"__off_t"
.LASF10:
	.string	"__gid_t"
.LASF7:
	.string	"short int"
.LASF25:
	.string	"_IO_read_ptr"
.LASF37:
	.string	"_chain"
.LASF82:
	.string	"access"
.LASF114:
	.string	"gidsetsize"
.LASF20:
	.string	"size_t"
.LASF77:
	.string	"chown"
.LASF96:
	.string	"where"
.LASF43:
	.string	"_shortbuf"
.LASF76:
	.string	"close"
.LASF58:
	.string	"ssize_t"
.LASF125:
	.string	"path"
.LASF31:
	.string	"_IO_buf_base"
.LASF22:
	.string	"long long unsigned int"
.LASF113:
	.string	"getgroups_\321\201b"
.LASF117:
	.string	"fsync_\321\201b"
.LASF83:
	.string	"fildes"
.LASF106:
	.string	"namesize"
.LASF46:
	.string	"_codecvt"
.LASF93:
	.string	"read_\321\201"
.LASF21:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF124:
	.string	"chown_\321\201b"
.LASF99:
	.string	"function"
.LASF100:
	.string	"size"
.LASF66:
	.string	"lockf"
.LASF38:
	.string	"_fileno"
.LASF26:
	.string	"_IO_read_end"
.LASF78:
	.string	"chdir"
.LASF127:
	.string	"group"
.LASF8:
	.string	"long int"
.LASF24:
	.string	"_flags"
.LASF118:
	.string	"fsync_\321\201"
.LASF14:
	.string	"__ssize_t"
.LASF32:
	.string	"_IO_buf_end"
.LASF41:
	.string	"_cur_column"
.LASF55:
	.string	"_IO_codecvt"
.LASF17:
	.string	"double"
.LASF102:
	.string	"getsid_\321\201b"
.LASF45:
	.string	"_offset"
.LASF90:
	.string	"write_\321\201"
.LASF67:
	.string	"getsid"
.LASF3:
	.string	"short unsigned int"
.LASF86:
	.string	"line"
.LASF61:
	.string	"gid_t"
.LASF92:
	.string	"read_\321\201b"
.LASF107:
	.string	"getlogin_r_\321\201"
.LASF104:
	.string	"getlogin_r_\321\201b"
.LASF133:
	.string	"GNU C17 12.2.1 20220819 (Red Hat 12.2.1-1) -mtune=generic -march=x86-64 -g"
.LASF54:
	.string	"_IO_marker"
.LASF110:
	.string	"gethostname_\321\201b"
.LASF101:
	.string	"lockf_\321\201"
.LASF4:
	.string	"unsigned int"
.LASF49:
	.string	"_freeres_buf"
.LASF81:
	.string	"fprintf"
.LASF5:
	.string	"long unsigned int"
.LASF29:
	.string	"_IO_write_ptr"
.LASF57:
	.string	"off_t"
.LASF105:
	.string	"name"
.LASF19:
	.string	"uid_t"
.LASF84:
	.string	"nbyte"
.LASF73:
	.string	"fork"
.LASF68:
	.string	"getlogin_r"
.LASF33:
	.string	"_IO_save_base"
.LASF116:
	.string	"getgroups_\321\201"
.LASF94:
	.string	"lseek_\321\201b"
.LASF72:
	.string	"getlogin"
.LASF44:
	.string	"_lock"
.LASF91:
	.string	"unlink_\321\201"
.LASF39:
	.string	"_flags2"
.LASF51:
	.string	"_mode"
.LASF121:
	.string	"dup_\321\201"
.LASF59:
	.string	"stdout"
.LASF89:
	.string	"st__re"
.LASF128:
	.string	"chown_\321\201"
.LASF62:
	.string	"write"
.LASF63:
	.string	"unlink"
.LASF98:
	.string	"lockf_\321\201b"
.LASF69:
	.string	"gethostname"
.LASF30:
	.string	"_IO_write_end"
.LASF135:
	.string	"_IO_lock_t"
.LASF134:
	.string	"_IO_FILE"
.LASF88:
	.string	"st__if"
.LASF16:
	.string	"float"
.LASF115:
	.string	"grouplist"
.LASF97:
	.string	"lseek_\321\201"
.LASF75:
	.string	"fflush"
.LASF36:
	.string	"_markers"
.LASF85:
	.string	"file"
.LASF71:
	.string	"fsync"
.LASF2:
	.string	"unsigned char"
.LASF13:
	.string	"__pid_t"
.LASF56:
	.string	"_IO_wide_data"
.LASF130:
	.string	"chdir_\321\201"
.LASF42:
	.string	"_vtable_offset"
.LASF120:
	.string	"fork_\321\201"
.LASF53:
	.string	"FILE"
.LASF132:
	.string	"amode"
.LASF108:
	.string	"getlogin_\321\201b"
.LASF47:
	.string	"_wide_data"
.LASF126:
	.string	"owner"
.LASF119:
	.string	"fork_\321\201b"
.LASF23:
	.string	"long double"
.LASF15:
	.string	"char"
.LASF129:
	.string	"chdir_\321\201b"
.LASF80:
	.string	"__errno_location"
.LASF9:
	.string	"__uid_t"
.LASF12:
	.string	"__off64_t"
.LASF95:
	.string	"offset"
.LASF111:
	.string	"namelen"
.LASF27:
	.string	"_IO_read_base"
.LASF35:
	.string	"_IO_save_end"
.LASF123:
	.string	"close_\321\201"
.LASF87:
	.string	"st__mo"
.LASF50:
	.string	"__pad5"
.LASF52:
	.string	"_unused2"
.LASF60:
	.string	"stderr"
.LASF122:
	.string	"oldfd"
.LASF79:
	.string	"exit"
.LASF109:
	.string	"getlogin_\321\201"
.LASF131:
	.string	"access_cb"
.LASF34:
	.string	"_IO_backup_base"
.LASF65:
	.string	"lseek"
.LASF112:
	.string	"gethostname_\321\201"
.LASF136:
	.string	"perror"
.LASF64:
	.string	"read"
.LASF18:
	.string	"pid_t"
.LASF48:
	.string	"_freeres_list"
.LASF103:
	.string	"getsid_\321\201"
.LASF70:
	.string	"getgroups"
.LASF40:
	.string	"_old_offset"
.LASF28:
	.string	"_IO_write_base"
.LASF137:
	.string	"access_c"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs"
.LASF0:
	.string	"lib/uni_1.c"
	.ident	"GCC: (GNU) 12.2.1 20220819 (Red Hat 12.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
