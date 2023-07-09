	.file	"socket_1.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs" "lib/socket_1.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"failed in file %s at line # %d\n"
	.align 8
.LC1:
	.string	"from accept_\321\201 socket = %d, errno = %d\n"
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
	.globl	accept_с
	.type	accept_с, @function
accept_с:
.LFB6:
	.file 1 "lib/socket_1.c"
	.loc 1 53 1
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
	.loc 1 56 16
	movl	16(%rbp), %eax
	andl	$1, %eax
	.loc 1 56 8
	testl	%eax, %eax
	je	.L2
.LBB2:
	.loc 1 58 17
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	accept
	movl	%eax, -4(%rbp)
	.loc 1 59 12
	cmpl	$-1, -4(%rbp)
	jne	.L3
	.loc 1 61 24
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 61 16
	testl	%eax, %eax
	je	.L4
	.loc 1 63 17
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 64 85
	call	__errno_location
	.loc 1 64 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 65 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 66 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L4:
	.loc 1 68 24
	movl	24(%rbp), %eax
	andl	$2, %eax
	.loc 1 68 16
	testl	%eax, %eax
	je	.L5
	.loc 1 70 28
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 70 20
	testl	%eax, %eax
	je	.L6
	.loc 1 71 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L6:
	.loc 1 72 24
	movl	$-1, %eax
	jmp	.L7
.L5:
	.loc 1 74 29
	movl	24(%rbp), %eax
	andl	$4, %eax
	.loc 1 74 21
	testl	%eax, %eax
	je	.L8
	.loc 1 76 28
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 76 20
	testl	%eax, %eax
	je	.L9
	.loc 1 77 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L9:
	.loc 1 78 22
	call	__errno_location
	.loc 1 78 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L8:
	.loc 1 80 29
	movl	24(%rbp), %eax
	andl	$1, %eax
	.loc 1 80 21
	testl	%eax, %eax
	je	.L10
	.loc 1 82 28
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 82 20
	testl	%eax, %eax
	je	.L11
	.loc 1 83 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L11:
	.loc 1 84 24
	movl	-4(%rbp), %eax
	jmp	.L7
.L10:
	.loc 1 88 17
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 89 85
	call	__errno_location
	.loc 1 89 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 90 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 91 17
	movl	$1, %edi
	call	exit
.L3:
	.loc 1 94 16
	movl	-4(%rbp), %eax
	jmp	.L7
.L2:
.LBE2:
	.loc 1 98 9
	movl	$.LC7, %edi
	call	perror
	.loc 1 99 9
	movl	$1, %edi
	call	exit
.L7:
	.loc 1 102 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	accept_с, .-accept_с
	.section	.rodata
	.align 8
.LC8:
	.string	"from bind_\321\201 socket = %d, address_len = %d, errno = %d\n"
	.text
	.globl	bind_с
	.type	bind_с, @function
bind_с:
.LFB7:
	.loc 1 105 1
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
	movl	%r9d, -48(%rbp)
	.loc 1 108 16
	movl	16(%rbp), %eax
	andl	$1, %eax
	.loc 1 108 8
	testl	%eax, %eax
	je	.L13
.LBB3:
	.loc 1 110 17
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	bind
	movl	%eax, -4(%rbp)
	.loc 1 111 12
	cmpl	$-1, -4(%rbp)
	jne	.L14
	.loc 1 113 24
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 113 16
	testl	%eax, %eax
	je	.L15
	.loc 1 115 17
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 116 114
	call	__errno_location
	.loc 1 116 17
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	%esi, %r8d
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 117 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 118 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L15:
	.loc 1 120 24
	movl	24(%rbp), %eax
	andl	$2, %eax
	.loc 1 120 16
	testl	%eax, %eax
	je	.L16
	.loc 1 122 28
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 122 20
	testl	%eax, %eax
	je	.L17
	.loc 1 123 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L17:
	.loc 1 124 24
	movl	$-1, %eax
	jmp	.L18
.L16:
	.loc 1 126 29
	movl	24(%rbp), %eax
	andl	$4, %eax
	.loc 1 126 21
	testl	%eax, %eax
	je	.L19
	.loc 1 128 28
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 128 20
	testl	%eax, %eax
	je	.L20
	.loc 1 129 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L20:
	.loc 1 130 22
	call	__errno_location
	.loc 1 130 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L19:
	.loc 1 132 29
	movl	24(%rbp), %eax
	andl	$1, %eax
	.loc 1 132 21
	testl	%eax, %eax
	je	.L21
	.loc 1 134 28
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 134 20
	testl	%eax, %eax
	je	.L22
	.loc 1 135 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L22:
	.loc 1 136 24
	movl	-4(%rbp), %eax
	jmp	.L18
.L21:
	.loc 1 140 17
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 141 114
	call	__errno_location
	.loc 1 141 17
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	%esi, %r8d
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 142 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 143 17
	movl	$1, %edi
	call	exit
.L14:
	.loc 1 146 16
	movl	-4(%rbp), %eax
	jmp	.L18
.L13:
.LBE3:
	.loc 1 150 9
	movl	$.LC7, %edi
	call	perror
	.loc 1 151 9
	movl	$1, %edi
	call	exit
.L18:
	.loc 1 154 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	bind_с, .-bind_с
	.section	.rodata
	.align 8
.LC9:
	.string	"from connect_\321\201 socket = %d, errno = %d\n"
	.text
	.globl	connect_с
	.type	connect_с, @function
connect_с:
.LFB8:
	.loc 1 157 1
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
	movl	%r9d, -48(%rbp)
	.loc 1 160 16
	movl	16(%rbp), %eax
	andl	$1, %eax
	.loc 1 160 8
	testl	%eax, %eax
	je	.L24
.LBB4:
	.loc 1 162 17
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	connect
	movl	%eax, -4(%rbp)
	.loc 1 163 12
	cmpl	$-1, -4(%rbp)
	jne	.L25
	.loc 1 165 24
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 165 16
	testl	%eax, %eax
	je	.L26
	.loc 1 167 17
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 168 86
	call	__errno_location
	.loc 1 168 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 169 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 170 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L26:
	.loc 1 172 24
	movl	24(%rbp), %eax
	andl	$2, %eax
	.loc 1 172 16
	testl	%eax, %eax
	je	.L27
	.loc 1 174 28
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 174 20
	testl	%eax, %eax
	je	.L28
	.loc 1 175 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L28:
	.loc 1 176 24
	movl	$-1, %eax
	jmp	.L29
.L27:
	.loc 1 178 29
	movl	24(%rbp), %eax
	andl	$4, %eax
	.loc 1 178 21
	testl	%eax, %eax
	je	.L30
	.loc 1 180 28
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 180 20
	testl	%eax, %eax
	je	.L31
	.loc 1 181 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L31:
	.loc 1 182 22
	call	__errno_location
	.loc 1 182 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L30:
	.loc 1 184 29
	movl	24(%rbp), %eax
	andl	$1, %eax
	.loc 1 184 21
	testl	%eax, %eax
	je	.L32
	.loc 1 186 28
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 186 20
	testl	%eax, %eax
	je	.L33
	.loc 1 187 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L33:
	.loc 1 188 24
	movl	-4(%rbp), %eax
	jmp	.L29
.L32:
	.loc 1 192 17
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 193 86
	call	__errno_location
	.loc 1 193 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 194 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 195 17
	movl	$1, %edi
	call	exit
.L25:
	.loc 1 198 16
	movl	-4(%rbp), %eax
	jmp	.L29
.L24:
.LBE4:
	.loc 1 202 9
	movl	$.LC7, %edi
	call	perror
	.loc 1 203 9
	movl	$1, %edi
	call	exit
.L29:
	.loc 1 206 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	connect_с, .-connect_с
	.section	.rodata
	.align 8
.LC10:
	.string	"from getsockname_\321\201 socket = %d, errno = %d\n"
	.text
	.globl	getsockname_с
	.type	getsockname_с, @function
getsockname_с:
.LFB9:
	.loc 1 210 1
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
	.loc 1 213 16
	movl	16(%rbp), %eax
	andl	$1, %eax
	.loc 1 213 8
	testl	%eax, %eax
	je	.L35
.LBB5:
	.loc 1 215 17
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	getsockname
	movl	%eax, -4(%rbp)
	.loc 1 216 12
	cmpl	$-1, -4(%rbp)
	jne	.L36
	.loc 1 218 24
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 218 16
	testl	%eax, %eax
	je	.L37
	.loc 1 220 17
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 221 90
	call	__errno_location
	.loc 1 221 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 222 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 223 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L37:
	.loc 1 225 24
	movl	24(%rbp), %eax
	andl	$2, %eax
	.loc 1 225 16
	testl	%eax, %eax
	je	.L38
	.loc 1 227 28
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 227 20
	testl	%eax, %eax
	je	.L39
	.loc 1 228 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L39:
	.loc 1 229 24
	movl	$-1, %eax
	jmp	.L40
.L38:
	.loc 1 231 29
	movl	24(%rbp), %eax
	andl	$4, %eax
	.loc 1 231 21
	testl	%eax, %eax
	je	.L41
	.loc 1 233 28
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 233 20
	testl	%eax, %eax
	je	.L42
	.loc 1 234 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L42:
	.loc 1 235 22
	call	__errno_location
	.loc 1 235 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L41:
	.loc 1 237 29
	movl	24(%rbp), %eax
	andl	$1, %eax
	.loc 1 237 21
	testl	%eax, %eax
	je	.L43
	.loc 1 239 28
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 239 20
	testl	%eax, %eax
	je	.L44
	.loc 1 240 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L44:
	.loc 1 241 24
	movl	-4(%rbp), %eax
	jmp	.L40
.L43:
	.loc 1 245 17
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 246 90
	call	__errno_location
	.loc 1 246 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 247 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 248 17
	movl	$1, %edi
	call	exit
.L36:
	.loc 1 251 16
	movl	-4(%rbp), %eax
	jmp	.L40
.L35:
.LBE5:
	.loc 1 255 9
	movl	$.LC7, %edi
	call	perror
	.loc 1 256 9
	movl	$1, %edi
	call	exit
.L40:
	.loc 1 259 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	getsockname_с, .-getsockname_с
	.section	.rodata
	.align 8
.LC11:
	.string	"from listen_\321\201 socket = %d, backlog = %d, errno = %d\n"
	.text
	.globl	listen_с
	.type	listen_с, @function
listen_с:
.LFB10:
	.loc 1 264 1
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
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	.loc 1 267 16
	movl	-44(%rbp), %eax
	andl	$1, %eax
	.loc 1 267 8
	testl	%eax, %eax
	je	.L46
.LBB6:
	.loc 1 269 17
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	listen
	movl	%eax, -4(%rbp)
	.loc 1 270 12
	cmpl	$-1, -4(%rbp)
	jne	.L47
	.loc 1 272 24
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 272 16
	testl	%eax, %eax
	je	.L48
	.loc 1 274 17
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 275 108
	call	__errno_location
	.loc 1 275 17
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	%esi, %r8d
	movl	$.LC11, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 276 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 277 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L48:
	.loc 1 279 24
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 279 16
	testl	%eax, %eax
	je	.L49
	.loc 1 281 28
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 281 20
	testl	%eax, %eax
	je	.L50
	.loc 1 282 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L50:
	.loc 1 283 24
	movl	$-1, %eax
	jmp	.L51
.L49:
	.loc 1 285 29
	movl	16(%rbp), %eax
	andl	$4, %eax
	.loc 1 285 21
	testl	%eax, %eax
	je	.L52
	.loc 1 287 28
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 287 20
	testl	%eax, %eax
	je	.L53
	.loc 1 288 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L53:
	.loc 1 289 22
	call	__errno_location
	.loc 1 289 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L52:
	.loc 1 291 29
	movl	16(%rbp), %eax
	andl	$1, %eax
	.loc 1 291 21
	testl	%eax, %eax
	je	.L54
	.loc 1 293 28
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 293 20
	testl	%eax, %eax
	je	.L55
	.loc 1 294 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L55:
	.loc 1 295 24
	movl	-4(%rbp), %eax
	jmp	.L51
.L54:
	.loc 1 299 17
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 300 108
	call	__errno_location
	.loc 1 300 17
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	%esi, %r8d
	movl	$.LC11, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 301 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 302 17
	movl	$1, %edi
	call	exit
.L47:
	.loc 1 305 16
	movl	-4(%rbp), %eax
	jmp	.L51
.L46:
.LBE6:
	.loc 1 309 9
	movl	$.LC7, %edi
	call	perror
	.loc 1 310 9
	movl	$1, %edi
	call	exit
.L51:
	.loc 1 313 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	listen_с, .-listen_с
	.section	.rodata
	.align 8
.LC12:
	.string	"from recv_\321\201 socket = %d, errno = %d\n"
	.text
	.globl	recv_с
	.type	recv_с, @function
recv_с:
.LFB11:
	.loc 1 316 1
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
	movl	%ecx, -24(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	.loc 1 319 16
	movl	24(%rbp), %eax
	andl	$1, %eax
	.loc 1 319 8
	testl	%eax, %eax
	je	.L57
.LBB7:
	.loc 1 321 21
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	recv
	movq	%rax, -8(%rbp)
	.loc 1 322 12
	cmpq	$-1, -8(%rbp)
	jne	.L58
	.loc 1 324 24
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 324 16
	testl	%eax, %eax
	je	.L59
	.loc 1 326 17
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 327 83
	call	__errno_location
	.loc 1 327 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 328 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 329 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L59:
	.loc 1 331 24
	movl	32(%rbp), %eax
	andl	$2, %eax
	.loc 1 331 16
	testl	%eax, %eax
	je	.L60
	.loc 1 333 28
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 333 20
	testl	%eax, %eax
	je	.L61
	.loc 1 334 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L61:
	.loc 1 335 24
	movq	$-1, %rax
	jmp	.L62
.L60:
	.loc 1 337 29
	movl	32(%rbp), %eax
	andl	$4, %eax
	.loc 1 337 21
	testl	%eax, %eax
	je	.L63
	.loc 1 339 28
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 339 20
	testl	%eax, %eax
	je	.L64
	.loc 1 340 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L64:
	.loc 1 341 22
	call	__errno_location
	.loc 1 341 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L63:
	.loc 1 343 29
	movl	32(%rbp), %eax
	andl	$1, %eax
	.loc 1 343 21
	testl	%eax, %eax
	je	.L65
	.loc 1 345 28
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 345 20
	testl	%eax, %eax
	je	.L66
	.loc 1 346 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L66:
	.loc 1 347 24
	movq	-8(%rbp), %rax
	jmp	.L62
.L65:
	.loc 1 351 17
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 352 83
	call	__errno_location
	.loc 1 352 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 353 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 354 17
	movl	$1, %edi
	call	exit
.L58:
	.loc 1 357 16
	movq	-8(%rbp), %rax
	jmp	.L62
.L57:
.LBE7:
	.loc 1 361 9
	movl	$.LC7, %edi
	call	perror
	.loc 1 362 9
	movl	$1, %edi
	call	exit
.L62:
	.loc 1 365 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	recv_с, .-recv_с
	.section	.rodata
	.align 8
.LC13:
	.string	"from recvfrom_\321\201 socket = %d, errno = %d\n"
	.text
	.globl	recvfrom_c
	.type	recvfrom_c, @function
recvfrom_c:
.LFB12:
	.loc 1 368 1
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
	movl	%ecx, -24(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	.loc 1 371 16
	movl	40(%rbp), %eax
	andl	$1, %eax
	.loc 1 371 8
	testl	%eax, %eax
	je	.L68
.LBB8:
	.loc 1 373 21
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	%eax, %edi
	call	recvfrom
	movq	%rax, -8(%rbp)
	.loc 1 374 12
	cmpq	$-1, -8(%rbp)
	jne	.L69
	.loc 1 376 24
	movl	32(%rbp), %eax
	andl	$2, %eax
	.loc 1 376 16
	testl	%eax, %eax
	je	.L70
	.loc 1 378 17
	movq	stderr(%rip), %rax
	movl	24(%rbp), %ecx
	movq	16(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 379 87
	call	__errno_location
	.loc 1 379 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 380 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 381 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L70:
	.loc 1 383 24
	movl	48(%rbp), %eax
	andl	$2, %eax
	.loc 1 383 16
	testl	%eax, %eax
	je	.L71
	.loc 1 385 28
	movl	32(%rbp), %eax
	andl	$2, %eax
	.loc 1 385 20
	testl	%eax, %eax
	je	.L72
	.loc 1 386 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L72:
	.loc 1 387 24
	movq	$-1, %rax
	jmp	.L73
.L71:
	.loc 1 389 29
	movl	48(%rbp), %eax
	andl	$4, %eax
	.loc 1 389 21
	testl	%eax, %eax
	je	.L74
	.loc 1 391 28
	movl	32(%rbp), %eax
	andl	$2, %eax
	.loc 1 391 20
	testl	%eax, %eax
	je	.L75
	.loc 1 392 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L75:
	.loc 1 393 22
	call	__errno_location
	.loc 1 393 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L74:
	.loc 1 395 29
	movl	48(%rbp), %eax
	andl	$1, %eax
	.loc 1 395 21
	testl	%eax, %eax
	je	.L76
	.loc 1 397 28
	movl	32(%rbp), %eax
	andl	$2, %eax
	.loc 1 397 20
	testl	%eax, %eax
	je	.L77
	.loc 1 398 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L77:
	.loc 1 399 24
	movq	-8(%rbp), %rax
	jmp	.L73
.L76:
	.loc 1 403 17
	movq	stderr(%rip), %rax
	movl	24(%rbp), %ecx
	movq	16(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 404 87
	call	__errno_location
	.loc 1 404 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 405 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 406 17
	movl	$1, %edi
	call	exit
.L69:
	.loc 1 409 16
	movq	-8(%rbp), %rax
	jmp	.L73
.L68:
.LBE8:
	.loc 1 413 9
	movl	$.LC7, %edi
	call	perror
	.loc 1 414 9
	movl	$1, %edi
	call	exit
.L73:
	.loc 1 417 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	recvfrom_c, .-recvfrom_c
	.section	.rodata
	.align 8
.LC14:
	.string	"from send_\321\201 socket = %d, errno = %d\n"
	.text
	.globl	send_с
	.type	send_с, @function
send_с:
.LFB13:
	.loc 1 421 1
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
	movl	%ecx, -24(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	.loc 1 424 16
	movl	24(%rbp), %eax
	andl	$1, %eax
	.loc 1 424 8
	testl	%eax, %eax
	je	.L79
.LBB9:
	.loc 1 426 21
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	send
	movq	%rax, -8(%rbp)
	.loc 1 427 12
	cmpq	$-1, -8(%rbp)
	jne	.L80
	.loc 1 429 24
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 429 16
	testl	%eax, %eax
	je	.L81
	.loc 1 431 17
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 432 83
	call	__errno_location
	.loc 1 432 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 433 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 434 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L81:
	.loc 1 436 24
	movl	32(%rbp), %eax
	andl	$2, %eax
	.loc 1 436 16
	testl	%eax, %eax
	je	.L82
	.loc 1 438 28
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 438 20
	testl	%eax, %eax
	je	.L83
	.loc 1 439 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L83:
	.loc 1 440 24
	movq	$-1, %rax
	jmp	.L84
.L82:
	.loc 1 442 29
	movl	32(%rbp), %eax
	andl	$4, %eax
	.loc 1 442 21
	testl	%eax, %eax
	je	.L85
	.loc 1 444 28
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 444 20
	testl	%eax, %eax
	je	.L86
	.loc 1 445 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L86:
	.loc 1 446 22
	call	__errno_location
	.loc 1 446 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L85:
	.loc 1 448 29
	movl	32(%rbp), %eax
	andl	$1, %eax
	.loc 1 448 21
	testl	%eax, %eax
	je	.L87
	.loc 1 450 28
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 450 20
	testl	%eax, %eax
	je	.L88
	.loc 1 451 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L88:
	.loc 1 452 24
	movq	-8(%rbp), %rax
	jmp	.L84
.L87:
	.loc 1 456 17
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 457 83
	call	__errno_location
	.loc 1 457 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 458 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 459 17
	movl	$1, %edi
	call	exit
.L80:
	.loc 1 462 16
	movq	-8(%rbp), %rax
	jmp	.L84
.L79:
.LBE9:
	.loc 1 466 9
	movl	$.LC7, %edi
	call	perror
	.loc 1 467 9
	movl	$1, %edi
	call	exit
.L84:
	.loc 1 470 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	send_с, .-send_с
	.section	.rodata
	.align 8
.LC15:
	.string	"from sendto_\321\201 socket = %d, errno = %d\n"
	.text
	.globl	sendto_с
	.type	sendto_с, @function
sendto_с:
.LFB14:
	.loc 1 474 1
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
	movl	%ecx, -24(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	.loc 1 477 16
	movl	40(%rbp), %eax
	andl	$1, %eax
	.loc 1 477 8
	testl	%eax, %eax
	je	.L90
.LBB10:
	.loc 1 479 21
	movl	-52(%rbp), %r8d
	movq	-48(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movl	%eax, %edi
	call	sendto
	movq	%rax, -8(%rbp)
	.loc 1 480 12
	cmpq	$-1, -8(%rbp)
	jne	.L91
	.loc 1 482 24
	movl	32(%rbp), %eax
	andl	$2, %eax
	.loc 1 482 16
	testl	%eax, %eax
	je	.L92
	.loc 1 484 17
	movq	stderr(%rip), %rax
	movl	24(%rbp), %ecx
	movq	16(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 485 85
	call	__errno_location
	.loc 1 485 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 486 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 487 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L92:
	.loc 1 489 24
	movl	48(%rbp), %eax
	andl	$2, %eax
	.loc 1 489 16
	testl	%eax, %eax
	je	.L93
	.loc 1 491 28
	movl	32(%rbp), %eax
	andl	$2, %eax
	.loc 1 491 20
	testl	%eax, %eax
	je	.L94
	.loc 1 492 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L94:
	.loc 1 493 24
	movq	$-1, %rax
	jmp	.L95
.L93:
	.loc 1 495 29
	movl	48(%rbp), %eax
	andl	$4, %eax
	.loc 1 495 21
	testl	%eax, %eax
	je	.L96
	.loc 1 497 28
	movl	32(%rbp), %eax
	andl	$2, %eax
	.loc 1 497 20
	testl	%eax, %eax
	je	.L97
	.loc 1 498 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L97:
	.loc 1 499 22
	call	__errno_location
	.loc 1 499 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L96:
	.loc 1 501 29
	movl	48(%rbp), %eax
	andl	$1, %eax
	.loc 1 501 21
	testl	%eax, %eax
	je	.L98
	.loc 1 503 28
	movl	32(%rbp), %eax
	andl	$2, %eax
	.loc 1 503 20
	testl	%eax, %eax
	je	.L99
	.loc 1 504 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L99:
	.loc 1 505 24
	movq	-8(%rbp), %rax
	jmp	.L95
.L98:
	.loc 1 509 17
	movq	stderr(%rip), %rax
	movl	24(%rbp), %ecx
	movq	16(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 510 85
	call	__errno_location
	.loc 1 510 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 511 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 512 17
	movl	$1, %edi
	call	exit
.L91:
	.loc 1 515 16
	movq	-8(%rbp), %rax
	jmp	.L95
.L90:
.LBE10:
	.loc 1 519 9
	movl	$.LC7, %edi
	call	perror
	.loc 1 520 9
	movl	$1, %edi
	call	exit
.L95:
	.loc 1 523 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	sendto_с, .-sendto_с
	.section	.rodata
	.align 8
.LC16:
	.string	"from socket_\321\201 domain = %d, type = %d, protocol = %d, errno = %d\n"
	.text
	.globl	socket_с
	.type	socket_с, @function
socket_с:
.LFB15:
	.loc 1 529 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -44(%rbp)
	.loc 1 531 16
	movl	16(%rbp), %eax
	andl	$1, %eax
	.loc 1 531 8
	testl	%eax, %eax
	je	.L101
.LBB11:
	.loc 1 533 17
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	socket
	movl	%eax, -4(%rbp)
	.loc 1 534 12
	cmpl	$-1, -4(%rbp)
	jne	.L102
	.loc 1 536 24
	movl	-44(%rbp), %eax
	andl	$2, %eax
	.loc 1 536 16
	testl	%eax, %eax
	je	.L103
	.loc 1 538 17
	movq	stderr(%rip), %rax
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 539 127
	call	__errno_location
	.loc 1 539 17
	movl	(%rax), %edi
	movq	stderr(%rip), %rax
	movl	-28(%rbp), %esi
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$.LC16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 540 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 541 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L103:
	.loc 1 543 24
	movl	24(%rbp), %eax
	andl	$2, %eax
	.loc 1 543 16
	testl	%eax, %eax
	je	.L104
	.loc 1 545 28
	movl	-44(%rbp), %eax
	andl	$2, %eax
	.loc 1 545 20
	testl	%eax, %eax
	je	.L105
	.loc 1 546 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L105:
	.loc 1 547 24
	movl	$-1, %eax
	jmp	.L106
.L104:
	.loc 1 549 29
	movl	24(%rbp), %eax
	andl	$4, %eax
	.loc 1 549 21
	testl	%eax, %eax
	je	.L107
	.loc 1 551 28
	movl	-44(%rbp), %eax
	andl	$2, %eax
	.loc 1 551 20
	testl	%eax, %eax
	je	.L108
	.loc 1 552 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L108:
	.loc 1 553 22
	call	__errno_location
	.loc 1 553 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L107:
	.loc 1 555 29
	movl	24(%rbp), %eax
	andl	$1, %eax
	.loc 1 555 21
	testl	%eax, %eax
	je	.L109
	.loc 1 557 28
	movl	-44(%rbp), %eax
	andl	$2, %eax
	.loc 1 557 20
	testl	%eax, %eax
	je	.L110
	.loc 1 558 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L110:
	.loc 1 559 24
	movl	-4(%rbp), %eax
	jmp	.L106
.L109:
	.loc 1 563 17
	movq	stderr(%rip), %rax
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 564 127
	call	__errno_location
	.loc 1 564 17
	movl	(%rax), %edi
	movq	stderr(%rip), %rax
	movl	-28(%rbp), %esi
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$.LC16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 565 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 566 17
	movl	$1, %edi
	call	exit
.L102:
	.loc 1 589 16
	movl	-4(%rbp), %eax
	jmp	.L106
.L101:
.LBE11:
	.loc 1 593 9
	movl	$.LC7, %edi
	call	perror
	.loc 1 594 9
	movl	$1, %edi
	call	exit
.L106:
	.loc 1 597 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	socket_с, .-socket_с
.Letext0:
	.file 2 "/usr/include/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-redhat-linux/12/include/stddef.h"
	.file 4 "/usr/include/bits/types/struct_FILE.h"
	.file 5 "/usr/include/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/bits/socket.h"
	.file 8 "/usr/include/bits/sockaddr.h"
	.file 9 "/usr/include/sys/socket.h"
	.file 10 "/usr/include/stdlib.h"
	.file 11 "/usr/include/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xccc
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x17
	.long	.LASF102
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
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xf
	.long	0x58
	.uleb128 0x5
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
	.uleb128 0x19
	.byte	0x8
	.uleb128 0xc
	.long	0x83
	.uleb128 0x8
	.long	.LASF11
	.byte	0x2
	.byte	0xc2
	.byte	0x1b
	.long	0x64
	.uleb128 0x6
	.long	0x9b
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0xf
	.long	0x9b
	.uleb128 0x8
	.long	.LASF13
	.byte	0x2
	.byte	0xd2
	.byte	0x17
	.long	0x3c
	.uleb128 0x6
	.long	0xa2
	.uleb128 0xc
	.long	0xb3
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF14
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.long	.LASF15
	.uleb128 0x8
	.long	.LASF16
	.byte	0x3
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF17
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF18
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.long	.LASF19
	.uleb128 0x14
	.long	.LASF58
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.long	0x272
	.uleb128 0x4
	.long	.LASF20
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x58
	.byte	0
	.uleb128 0x4
	.long	.LASF21
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x96
	.byte	0x8
	.uleb128 0x4
	.long	.LASF22
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x96
	.byte	0x10
	.uleb128 0x4
	.long	.LASF23
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x96
	.byte	0x18
	.uleb128 0x4
	.long	.LASF24
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x96
	.byte	0x20
	.uleb128 0x4
	.long	.LASF25
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x96
	.byte	0x28
	.uleb128 0x4
	.long	.LASF26
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x96
	.byte	0x30
	.uleb128 0x4
	.long	.LASF27
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x96
	.byte	0x38
	.uleb128 0x4
	.long	.LASF28
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x96
	.byte	0x40
	.uleb128 0x4
	.long	.LASF29
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x96
	.byte	0x48
	.uleb128 0x4
	.long	.LASF30
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x96
	.byte	0x50
	.uleb128 0x4
	.long	.LASF31
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x96
	.byte	0x58
	.uleb128 0x4
	.long	.LASF32
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x28b
	.byte	0x60
	.uleb128 0x4
	.long	.LASF33
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x290
	.byte	0x68
	.uleb128 0x4
	.long	.LASF34
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x58
	.byte	0x70
	.uleb128 0x4
	.long	.LASF35
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x58
	.byte	0x74
	.uleb128 0x4
	.long	.LASF36
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x6b
	.byte	0x78
	.uleb128 0x4
	.long	.LASF37
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x4
	.long	.LASF38
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x4
	.long	.LASF39
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x295
	.byte	0x83
	.uleb128 0x4
	.long	.LASF40
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x2a5
	.byte	0x88
	.uleb128 0x4
	.long	.LASF41
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x77
	.byte	0x90
	.uleb128 0x4
	.long	.LASF42
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x2af
	.byte	0x98
	.uleb128 0x4
	.long	.LASF43
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x2b9
	.byte	0xa0
	.uleb128 0x4
	.long	.LASF44
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x290
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF45
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x83
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF46
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0xcb
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF47
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x58
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF48
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x2be
	.byte	0xc4
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xec
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x10
	.long	.LASF50
	.uleb128 0x6
	.long	0x286
	.uleb128 0x6
	.long	0xec
	.uleb128 0x11
	.long	0x9b
	.long	0x2a5
	.uleb128 0x12
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x27e
	.uleb128 0x10
	.long	.LASF51
	.uleb128 0x6
	.long	0x2aa
	.uleb128 0x10
	.long	.LASF52
	.uleb128 0x6
	.long	0x2b4
	.uleb128 0x11
	.long	0x9b
	.long	0x2ce
	.uleb128 0x12
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x4d
	.byte	0x13
	.long	0x8a
	.uleb128 0x6
	.long	0x272
	.uleb128 0xc
	.long	0x2da
	.uleb128 0x15
	.long	.LASF54
	.byte	0x90
	.long	0x2da
	.uleb128 0x15
	.long	.LASF55
	.byte	0x91
	.long	0x2da
	.uleb128 0x6
	.long	0x2fd
	.uleb128 0x1b
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0x21
	.byte	0x15
	.long	0xa7
	.uleb128 0x8
	.long	.LASF57
	.byte	0x8
	.byte	0x1c
	.byte	0x1c
	.long	0x35
	.uleb128 0x14
	.long	.LASF59
	.byte	0x10
	.byte	0x7
	.byte	0xb6
	.long	0x33d
	.uleb128 0x4
	.long	.LASF60
	.byte	0x7
	.byte	0xb8
	.byte	0x5
	.long	0x30a
	.byte	0
	.uleb128 0x4
	.long	.LASF61
	.byte	0x7
	.byte	0xb9
	.byte	0xa
	.long	0x342
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.long	0x316
	.uleb128 0x11
	.long	0x9b
	.long	0x352
	.uleb128 0x12
	.long	0x43
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.long	.LASF62
	.byte	0x9
	.byte	0x66
	.byte	0xc
	.long	0x58
	.long	0x372
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x58
	.byte	0
	.uleb128 0x9
	.long	.LASF63
	.byte	0x9
	.byte	0x98
	.byte	0x10
	.long	0x2ce
	.long	0x3a1
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x2f8
	.uleb128 0x2
	.long	0xcb
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x3a1
	.uleb128 0x2
	.long	0x2fe
	.byte	0
	.uleb128 0x6
	.long	0x33d
	.uleb128 0x9
	.long	.LASF64
	.byte	0x9
	.byte	0x8a
	.byte	0x10
	.long	0x2ce
	.long	0x3cb
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x2f8
	.uleb128 0x2
	.long	0xcb
	.uleb128 0x2
	.long	0x58
	.byte	0
	.uleb128 0x9
	.long	.LASF65
	.byte	0x9
	.byte	0xa3
	.byte	0x10
	.long	0x2ce
	.long	0x3fa
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x85
	.uleb128 0x2
	.long	0xcb
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x3ff
	.uleb128 0x2
	.long	0x409
	.byte	0
	.uleb128 0x6
	.long	0x316
	.uleb128 0xc
	.long	0x3fa
	.uleb128 0x6
	.long	0x2fe
	.uleb128 0xc
	.long	0x404
	.uleb128 0x9
	.long	.LASF66
	.byte	0x9
	.byte	0x91
	.byte	0x10
	.long	0x2ce
	.long	0x433
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x83
	.uleb128 0x2
	.long	0xcb
	.uleb128 0x2
	.long	0x58
	.byte	0
	.uleb128 0xd
	.long	.LASF67
	.byte	0x9
	.value	0x128
	.long	0x58
	.long	0x44e
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x58
	.byte	0
	.uleb128 0x9
	.long	.LASF68
	.byte	0x9
	.byte	0x74
	.byte	0xc
	.long	0x58
	.long	0x46e
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x3ff
	.uleb128 0x2
	.long	0x409
	.byte	0
	.uleb128 0x9
	.long	.LASF69
	.byte	0x9
	.byte	0x7e
	.byte	0xc
	.long	0x58
	.long	0x48e
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x3a1
	.uleb128 0x2
	.long	0x2fe
	.byte	0
	.uleb128 0x9
	.long	.LASF70
	.byte	0x9
	.byte	0x70
	.byte	0xc
	.long	0x58
	.long	0x4ae
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x3a1
	.uleb128 0x2
	.long	0x2fe
	.byte	0
	.uleb128 0x1c
	.long	.LASF71
	.byte	0xa
	.value	0x270
	.byte	0xd
	.long	0x4c1
	.uleb128 0x2
	.long	0x58
	.byte	0
	.uleb128 0xd
	.long	.LASF72
	.byte	0x6
	.value	0x164
	.long	0x58
	.long	0x4d8
	.uleb128 0x2
	.long	0xb3
	.uleb128 0x16
	.byte	0
	.uleb128 0x9
	.long	.LASF73
	.byte	0x6
	.byte	0xe6
	.byte	0xc
	.long	0x58
	.long	0x4ee
	.uleb128 0x2
	.long	0x2da
	.byte	0
	.uleb128 0x1d
	.long	.LASF104
	.byte	0x6
	.value	0x324
	.byte	0xd
	.long	0x501
	.uleb128 0x2
	.long	0xb3
	.byte	0
	.uleb128 0x1e
	.long	.LASF105
	.byte	0xb
	.byte	0x25
	.byte	0xd
	.long	0x50d
	.uleb128 0x6
	.long	0x58
	.uleb128 0xd
	.long	.LASF74
	.byte	0x6
	.value	0x15e
	.long	0x58
	.long	0x52e
	.uleb128 0x2
	.long	0x2df
	.uleb128 0x2
	.long	0xb8
	.uleb128 0x16
	.byte	0
	.uleb128 0xd
	.long	.LASF75
	.byte	0x9
	.value	0x132
	.long	0x58
	.long	0x54e
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x3ff
	.uleb128 0x2
	.long	0x409
	.byte	0
	.uleb128 0xa
	.long	.LASF84
	.value	0x210
	.byte	0xb
	.long	0x58
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x608
	.uleb128 0x1
	.long	.LASF76
	.value	0x210
	.byte	0x19
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.long	.LASF77
	.value	0x210
	.byte	0x25
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF78
	.value	0x210
	.byte	0x2f
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.long	.LASF79
	.value	0x210
	.byte	0x45
	.long	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF80
	.value	0x210
	.byte	0x55
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF81
	.value	0x210
	.byte	0x5f
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.long	.LASF82
	.value	0x210
	.byte	0x6b
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.long	.LASF83
	.value	0x210
	.byte	0x77
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x7
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0xb
	.string	"a"
	.value	0x215
	.byte	0xd
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LASF85
	.value	0x1d9
	.byte	0xf
	.long	0x2ce
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f0
	.uleb128 0x1
	.long	.LASF62
	.value	0x1d9
	.byte	0x1d
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.long	.LASF86
	.value	0x1d9
	.byte	0x31
	.long	0x2f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF87
	.value	0x1d9
	.byte	0x41
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF88
	.value	0x1d9
	.byte	0x4d
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF89
	.value	0x1d9
	.byte	0x6b
	.long	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF90
	.value	0x1d9
	.byte	0x80
	.long	0x2fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.long	.LASF79
	.value	0x1d9
	.byte	0x96
	.long	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.long	.LASF80
	.value	0x1d9
	.byte	0xa6
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1
	.long	.LASF81
	.value	0x1d9
	.byte	0xb0
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1
	.long	.LASF82
	.value	0x1d9
	.byte	0xbc
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1
	.long	.LASF83
	.value	0x1d9
	.byte	0xc8
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x7
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0xb
	.string	"a"
	.value	0x1df
	.byte	0x11
	.long	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LASF91
	.value	0x1a4
	.byte	0xf
	.long	0x2ce
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ba
	.uleb128 0x1
	.long	.LASF62
	.value	0x1a4
	.byte	0x1b
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.long	.LASF92
	.value	0x1a4
	.byte	0x2f
	.long	0x2f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF87
	.value	0x1a4
	.byte	0x3e
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF88
	.value	0x1a4
	.byte	0x4a
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF79
	.value	0x1a4
	.byte	0x5d
	.long	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF80
	.value	0x1a4
	.byte	0x6d
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.long	.LASF81
	.value	0x1a4
	.byte	0x77
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.long	.LASF82
	.value	0x1a4
	.byte	0x83
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1
	.long	.LASF83
	.value	0x1a4
	.byte	0x8f
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x7
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0xb
	.string	"a"
	.value	0x1aa
	.byte	0x11
	.long	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LASF93
	.value	0x16f
	.byte	0xf
	.long	0x2ce
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x8a2
	.uleb128 0x1
	.long	.LASF62
	.value	0x16f
	.byte	0x1e
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.long	.LASF92
	.value	0x16f
	.byte	0x35
	.long	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF87
	.value	0x16f
	.byte	0x44
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF88
	.value	0x16f
	.byte	0x50
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF94
	.value	0x16f
	.byte	0x69
	.long	0x3fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF95
	.value	0x16f
	.byte	0x86
	.long	0x409
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.long	.LASF79
	.value	0x16f
	.byte	0x9f
	.long	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.long	.LASF80
	.value	0x16f
	.byte	0xaf
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1
	.long	.LASF81
	.value	0x16f
	.byte	0xb9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1
	.long	.LASF82
	.value	0x16f
	.byte	0xc5
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1
	.long	.LASF83
	.value	0x16f
	.byte	0xd1
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x7
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0xb
	.string	"a"
	.value	0x175
	.byte	0x11
	.long	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LASF96
	.value	0x13b
	.byte	0xf
	.long	0x2ce
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x96c
	.uleb128 0x1
	.long	.LASF62
	.value	0x13b
	.byte	0x1b
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.long	.LASF92
	.value	0x13b
	.byte	0x29
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF87
	.value	0x13b
	.byte	0x38
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF88
	.value	0x13b
	.byte	0x44
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF79
	.value	0x13b
	.byte	0x57
	.long	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF80
	.value	0x13b
	.byte	0x67
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.long	.LASF81
	.value	0x13b
	.byte	0x71
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.long	.LASF82
	.value	0x13b
	.byte	0x7d
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1
	.long	.LASF83
	.value	0x13b
	.byte	0x89
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x7
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0xb
	.string	"a"
	.value	0x141
	.byte	0x11
	.long	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LASF97
	.value	0x107
	.byte	0xb
	.long	0x58
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xa17
	.uleb128 0x1
	.long	.LASF62
	.value	0x107
	.byte	0x19
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.long	.LASF98
	.value	0x107
	.byte	0x25
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF79
	.value	0x107
	.byte	0x3a
	.long	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF80
	.value	0x107
	.byte	0x4a
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.long	.LASF81
	.value	0x107
	.byte	0x54
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF82
	.value	0x107
	.byte	0x60
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.long	.LASF83
	.value	0x107
	.byte	0x6c
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0xb
	.string	"a"
	.value	0x10d
	.byte	0xd
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF99
	.byte	0xd1
	.long	0x58
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xac6
	.uleb128 0x3
	.long	.LASF62
	.byte	0xd1
	.byte	0x1e
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.long	.LASF94
	.byte	0xd1
	.byte	0x40
	.long	0x3ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF95
	.byte	0xd1
	.byte	0x5d
	.long	0x409
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.long	.LASF79
	.byte	0xd1
	.byte	0x76
	.long	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.long	.LASF80
	.byte	0xd1
	.byte	0x86
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF81
	.byte	0xd1
	.byte	0x90
	.long	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.long	.LASF82
	.byte	0xd1
	.byte	0x9c
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.long	.LASF83
	.byte	0xd1
	.byte	0xa8
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x7
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0xe
	.string	"a"
	.byte	0xd7
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF100
	.byte	0x9c
	.long	0x58
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xb74
	.uleb128 0x3
	.long	.LASF62
	.byte	0x9c
	.byte	0x1a
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.long	.LASF94
	.byte	0x9c
	.byte	0x39
	.long	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF95
	.byte	0x9c
	.byte	0x4c
	.long	0x2fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF79
	.byte	0x9c
	.byte	0x65
	.long	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.long	.LASF80
	.byte	0x9c
	.byte	0x75
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.long	.LASF81
	.byte	0x9c
	.byte	0x7f
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.long	.LASF82
	.byte	0x9c
	.byte	0x8b
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.long	.LASF83
	.byte	0x9c
	.byte	0x97
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x7
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0xe
	.string	"a"
	.byte	0xa2
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF101
	.byte	0x68
	.long	0x58
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xc22
	.uleb128 0x3
	.long	.LASF62
	.byte	0x68
	.byte	0x17
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.long	.LASF94
	.byte	0x68
	.byte	0x36
	.long	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF95
	.byte	0x68
	.byte	0x49
	.long	0x2fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF79
	.byte	0x68
	.byte	0x62
	.long	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.long	.LASF80
	.byte	0x68
	.byte	0x72
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.long	.LASF81
	.byte	0x68
	.byte	0x7c
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.long	.LASF82
	.byte	0x68
	.byte	0x88
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.long	.LASF83
	.byte	0x68
	.byte	0x94
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x7
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0xe
	.string	"a"
	.byte	0x6e
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF106
	.byte	0x1
	.byte	0x34
	.byte	0xb
	.long	0x58
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.long	.LASF62
	.byte	0x34
	.byte	0x19
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.long	.LASF94
	.byte	0x34
	.byte	0x3b
	.long	0x3ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF95
	.byte	0x34
	.byte	0x58
	.long	0x409
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.long	.LASF79
	.byte	0x34
	.byte	0x71
	.long	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.long	.LASF80
	.byte	0x34
	.byte	0x81
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF81
	.byte	0x34
	.byte	0x8b
	.long	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.long	.LASF82
	.byte	0x34
	.byte	0x97
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.long	.LASF83
	.byte	0x34
	.byte	0xa3
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x7
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xe
	.string	"a"
	.byte	0x3a
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x26
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
.LASF98:
	.string	"backlog"
.LASF105:
	.string	"__errno_location"
.LASF36:
	.string	"_old_offset"
.LASF13:
	.string	"__socklen_t"
.LASF76:
	.string	"domain"
.LASF89:
	.string	"dest_addr"
.LASF64:
	.string	"send"
.LASF65:
	.string	"recvfrom"
.LASF95:
	.string	"address_len"
.LASF31:
	.string	"_IO_save_end"
.LASF26:
	.string	"_IO_write_end"
.LASF7:
	.string	"short int"
.LASF16:
	.string	"size_t"
.LASF103:
	.string	"_IO_lock_t"
.LASF41:
	.string	"_offset"
.LASF44:
	.string	"_freeres_list"
.LASF25:
	.string	"_IO_write_ptr"
.LASF20:
	.string	"_flags"
.LASF84:
	.string	"socket_\321\201"
.LASF27:
	.string	"_IO_buf_base"
.LASF53:
	.string	"ssize_t"
.LASF86:
	.string	"message"
.LASF32:
	.string	"_markers"
.LASF85:
	.string	"sendto_\321\201"
.LASF45:
	.string	"_freeres_buf"
.LASF69:
	.string	"connect"
.LASF101:
	.string	"bind_\321\201"
.LASF80:
	.string	"line"
.LASF63:
	.string	"sendto"
.LASF68:
	.string	"getsockname"
.LASF87:
	.string	"length"
.LASF78:
	.string	"protocol"
.LASF14:
	.string	"float"
.LASF55:
	.string	"stderr"
.LASF17:
	.string	"long long int"
.LASF18:
	.string	"long long unsigned int"
.LASF99:
	.string	"getsockname_\321\201"
.LASF11:
	.string	"__ssize_t"
.LASF40:
	.string	"_lock"
.LASF100:
	.string	"connect_\321\201"
.LASF8:
	.string	"long int"
.LASF81:
	.string	"st__mo"
.LASF93:
	.string	"recvfrom_c"
.LASF72:
	.string	"printf"
.LASF37:
	.string	"_cur_column"
.LASF104:
	.string	"perror"
.LASF97:
	.string	"listen_\321\201"
.LASF74:
	.string	"fprintf"
.LASF71:
	.string	"exit"
.LASF73:
	.string	"fflush"
.LASF58:
	.string	"_IO_FILE"
.LASF19:
	.string	"long double"
.LASF57:
	.string	"sa_family_t"
.LASF2:
	.string	"unsigned char"
.LASF79:
	.string	"file"
.LASF56:
	.string	"socklen_t"
.LASF6:
	.string	"signed char"
.LASF88:
	.string	"flags"
.LASF94:
	.string	"address"
.LASF77:
	.string	"type"
.LASF4:
	.string	"unsigned int"
.LASF50:
	.string	"_IO_marker"
.LASF39:
	.string	"_shortbuf"
.LASF22:
	.string	"_IO_read_end"
.LASF24:
	.string	"_IO_write_base"
.LASF48:
	.string	"_unused2"
.LASF21:
	.string	"_IO_read_ptr"
.LASF61:
	.string	"sa_data"
.LASF28:
	.string	"_IO_buf_end"
.LASF82:
	.string	"st__if"
.LASF12:
	.string	"char"
.LASF43:
	.string	"_wide_data"
.LASF83:
	.string	"st__re"
.LASF70:
	.string	"bind"
.LASF67:
	.string	"listen"
.LASF46:
	.string	"__pad5"
.LASF75:
	.string	"accept"
.LASF92:
	.string	"buffer"
.LASF3:
	.string	"short unsigned int"
.LASF5:
	.string	"long unsigned int"
.LASF90:
	.string	"dest_len"
.LASF15:
	.string	"double"
.LASF10:
	.string	"__off64_t"
.LASF96:
	.string	"recv_\321\201"
.LASF9:
	.string	"__off_t"
.LASF106:
	.string	"accept_\321\201"
.LASF33:
	.string	"_chain"
.LASF52:
	.string	"_IO_wide_data"
.LASF62:
	.string	"socket"
.LASF30:
	.string	"_IO_backup_base"
.LASF35:
	.string	"_flags2"
.LASF60:
	.string	"sa_family"
.LASF47:
	.string	"_mode"
.LASF23:
	.string	"_IO_read_base"
.LASF38:
	.string	"_vtable_offset"
.LASF42:
	.string	"_codecvt"
.LASF29:
	.string	"_IO_save_base"
.LASF34:
	.string	"_fileno"
.LASF49:
	.string	"FILE"
.LASF66:
	.string	"recv"
.LASF91:
	.string	"send_\321\201"
.LASF102:
	.string	"GNU C17 12.2.1 20220819 (Red Hat 12.2.1-1) -mtune=generic -march=x86-64 -g"
.LASF54:
	.string	"stdout"
.LASF59:
	.string	"sockaddr"
.LASF51:
	.string	"_IO_codecvt"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs"
.LASF0:
	.string	"lib/socket_1.c"
	.ident	"GCC: (GNU) 12.2.1 20220819 (Red Hat 12.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
