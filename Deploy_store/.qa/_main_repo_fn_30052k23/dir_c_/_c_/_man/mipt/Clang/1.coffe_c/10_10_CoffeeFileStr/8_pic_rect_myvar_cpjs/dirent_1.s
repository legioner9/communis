	.file	"dirent_1.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs" "lib/dirent_1.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"failed in file %s at line # %d\n"
.LC1:
	.string	"from dirfd_\321\201 errno = %d\n"
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
	.globl	dirfd_с
	.type	dirfd_с, @function
dirfd_с:
.LFB6:
	.file 1 "lib/dirent_1.c"
	.loc 1 56 1
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
	.loc 1 59 16
	movl	-44(%rbp), %eax
	andl	$1, %eax
	.loc 1 59 8
	testl	%eax, %eax
	je	.L2
.LBB2:
	.loc 1 61 17
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dirfd
	movl	%eax, -4(%rbp)
	.loc 1 62 12
	cmpl	$-1, -4(%rbp)
	jne	.L3
	.loc 1 64 24
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 64 16
	testl	%eax, %eax
	je	.L4
	.loc 1 66 17
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 67 63
	call	__errno_location
	.loc 1 67 17
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 68 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 69 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L4:
	.loc 1 71 24
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 71 16
	testl	%eax, %eax
	je	.L5
	.loc 1 73 28
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 73 20
	testl	%eax, %eax
	je	.L6
	.loc 1 74 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L6:
	.loc 1 75 24
	movl	$-1, %eax
	jmp	.L7
.L5:
	.loc 1 77 29
	movl	-48(%rbp), %eax
	andl	$4, %eax
	.loc 1 77 21
	testl	%eax, %eax
	je	.L8
	.loc 1 79 28
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 79 20
	testl	%eax, %eax
	je	.L9
	.loc 1 80 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L9:
	.loc 1 81 22
	call	__errno_location
	.loc 1 81 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L8:
	.loc 1 83 29
	movl	-48(%rbp), %eax
	andl	$1, %eax
	.loc 1 83 21
	testl	%eax, %eax
	je	.L10
	.loc 1 85 28
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 85 20
	testl	%eax, %eax
	je	.L11
	.loc 1 86 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L11:
	.loc 1 87 24
	movl	-4(%rbp), %eax
	jmp	.L7
.L10:
	.loc 1 91 17
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 92 63
	call	__errno_location
	.loc 1 92 17
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 93 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 94 17
	movl	$1, %edi
	call	exit
.L3:
	.loc 1 97 16
	movl	-4(%rbp), %eax
	jmp	.L7
.L2:
.LBE2:
	.loc 1 101 9
	movl	$.LC7, %edi
	call	perror
	.loc 1 102 9
	movl	$1, %edi
	call	exit
.L7:
	.loc 1 105 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	dirfd_с, .-dirfd_с
	.section	.rodata
	.align 8
.LC8:
	.string	"from opendir_\321\201 dirname = %s, errno = %d\n"
	.text
	.globl	opendir_с
	.type	opendir_с, @function
opendir_с:
.LFB7:
	.loc 1 110 1
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
	.loc 1 113 16
	movl	-44(%rbp), %eax
	andl	$2, %eax
	.loc 1 113 8
	testl	%eax, %eax
	je	.L13
.LBB3:
	.loc 1 115 18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	opendir
	movq	%rax, -8(%rbp)
	.loc 1 116 12
	cmpq	$0, -8(%rbp)
	jne	.L14
	.loc 1 118 24
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 118 16
	testl	%eax, %eax
	je	.L15
	.loc 1 120 17
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 121 88
	call	__errno_location
	.loc 1 121 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 122 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 123 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L15:
	.loc 1 125 24
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 125 16
	testl	%eax, %eax
	je	.L16
	.loc 1 127 28
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 127 20
	testl	%eax, %eax
	je	.L17
	.loc 1 128 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L17:
	.loc 1 129 24
	movq	$-1, %rax
	jmp	.L18
.L16:
	.loc 1 131 29
	movl	-48(%rbp), %eax
	andl	$4, %eax
	.loc 1 131 21
	testl	%eax, %eax
	je	.L19
	.loc 1 133 28
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 133 20
	testl	%eax, %eax
	je	.L20
	.loc 1 134 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L20:
	.loc 1 135 22
	call	__errno_location
	.loc 1 135 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L19:
	.loc 1 137 29
	movl	-48(%rbp), %eax
	andl	$1, %eax
	.loc 1 137 21
	testl	%eax, %eax
	je	.L21
	.loc 1 139 28
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 139 20
	testl	%eax, %eax
	je	.L22
	.loc 1 140 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L22:
	.loc 1 141 24
	movq	-8(%rbp), %rax
	jmp	.L18
.L21:
	.loc 1 145 17
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 146 88
	call	__errno_location
	.loc 1 146 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 147 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 148 17
	movl	$1, %edi
	call	exit
.L14:
	.loc 1 151 16
	movq	-8(%rbp), %rax
	jmp	.L18
.L13:
.LBE3:
	.loc 1 155 9
	movl	$.LC7, %edi
	call	perror
	.loc 1 156 9
	movl	$1, %edi
	call	exit
.L18:
	.loc 1 161 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	opendir_с, .-opendir_с
	.section	.rodata
.LC9:
	.string	"from readdir_\321\201 errno = %d\n"
	.align 8
.LC10:
	.string	" st__if NOT equal STIF_ENU exit(1)"
	.text
	.globl	readdir_с
	.type	readdir_с, @function
readdir_с:
.LFB8:
	.loc 1 179 1
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
	.loc 1 181 16
	movl	-44(%rbp), %eax
	andl	$4, %eax
	.loc 1 181 8
	testl	%eax, %eax
	je	.L24
.LBB4:
	.loc 1 184 23
	call	__errno_location
	.loc 1 184 13
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 185 28
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	readdir
	movq	%rax, -16(%rbp)
	.loc 1 186 12
	cmpq	$0, -16(%rbp)
	jne	.L25
	.loc 1 186 37 discriminator 1
	call	__errno_location
	movl	(%rax), %eax
	.loc 1 186 23 discriminator 1
	cmpl	%eax, -4(%rbp)
	je	.L25
	.loc 1 188 24
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 188 16
	testl	%eax, %eax
	je	.L26
	.loc 1 190 17
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 191 65
	call	__errno_location
	.loc 1 191 17
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 192 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 193 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L26:
	.loc 1 195 24
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 195 16
	testl	%eax, %eax
	je	.L27
	.loc 1 197 28
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 197 20
	testl	%eax, %eax
	je	.L28
	.loc 1 199 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	.loc 1 200 21
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L28:
	.loc 1 202 24
	movq	$-1, %rax
	jmp	.L29
.L27:
	.loc 1 204 29
	movl	-48(%rbp), %eax
	andl	$4, %eax
	.loc 1 204 21
	testl	%eax, %eax
	je	.L30
	.loc 1 206 28
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 206 20
	testl	%eax, %eax
	je	.L31
	.loc 1 208 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	.loc 1 209 21
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L31:
	.loc 1 211 22
	call	__errno_location
	.loc 1 211 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L30:
	.loc 1 213 29
	movl	-48(%rbp), %eax
	andl	$1, %eax
	.loc 1 213 21
	testl	%eax, %eax
	je	.L32
	.loc 1 215 28
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 215 20
	testl	%eax, %eax
	je	.L33
	.loc 1 217 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	.loc 1 218 21
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L33:
	.loc 1 220 24
	movq	-16(%rbp), %rax
	jmp	.L29
.L32:
	.loc 1 224 17
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 225 65
	call	__errno_location
	.loc 1 225 17
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 226 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 227 17
	movl	$1, %edi
	call	exit
.L25:
	.loc 1 230 16
	movq	-16(%rbp), %rax
	jmp	.L29
.L24:
.LBE4:
	.loc 1 234 9
	movl	$.LC10, %edi
	call	perror
	.loc 1 235 9
	movl	$1, %edi
	call	exit
.L29:
	.loc 1 238 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	readdir_с, .-readdir_с
	.section	.rodata
.LC11:
	.string	"from readdir_r_\321\201 errno = %d\n"
	.align 8
.LC12:
	.string	" st__if NOT equal STIF_NEN exit(1)"
	.text
	.globl	readdir_r_с
	.type	readdir_r_с, @function
readdir_r_с:
.LFB9:
	.loc 1 255 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	.loc 1 258 16
	movl	16(%rbp), %eax
	andl	$8, %eax
	.loc 1 258 8
	testl	%eax, %eax
	je	.L35
.LBB5:
	.loc 1 261 17
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	readdir_r
	movl	%eax, -4(%rbp)
	.loc 1 262 12
	cmpl	$0, -4(%rbp)
	je	.L36
	.loc 1 264 24
	movl	-56(%rbp), %eax
	andl	$2, %eax
	.loc 1 264 16
	testl	%eax, %eax
	je	.L37
	.loc 1 266 17
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 267 67
	call	__errno_location
	.loc 1 267 17
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC11, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 268 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 269 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L37:
	.loc 1 271 24
	movl	24(%rbp), %eax
	andl	$2, %eax
	.loc 1 271 16
	testl	%eax, %eax
	je	.L38
	.loc 1 273 28
	movl	-56(%rbp), %eax
	andl	$2, %eax
	.loc 1 273 20
	testl	%eax, %eax
	je	.L39
	.loc 1 275 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	.loc 1 276 21
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L39:
	.loc 1 278 24
	movl	$-1, %eax
	jmp	.L40
.L38:
	.loc 1 280 29
	movl	24(%rbp), %eax
	andl	$4, %eax
	.loc 1 280 21
	testl	%eax, %eax
	je	.L41
	.loc 1 282 28
	movl	-56(%rbp), %eax
	andl	$2, %eax
	.loc 1 282 20
	testl	%eax, %eax
	je	.L42
	.loc 1 284 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	.loc 1 285 21
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L42:
	.loc 1 287 22
	call	__errno_location
	.loc 1 287 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L41:
	.loc 1 289 29
	movl	24(%rbp), %eax
	andl	$1, %eax
	.loc 1 289 21
	testl	%eax, %eax
	je	.L43
	.loc 1 291 28
	movl	-56(%rbp), %eax
	andl	$2, %eax
	.loc 1 291 20
	testl	%eax, %eax
	je	.L44
	.loc 1 293 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	.loc 1 294 21
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L44:
	.loc 1 296 24
	movl	-4(%rbp), %eax
	jmp	.L40
.L43:
	.loc 1 300 17
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 301 67
	call	__errno_location
	.loc 1 301 17
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC11, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 302 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 303 17
	movl	$1, %edi
	call	exit
.L36:
	.loc 1 306 16
	movl	-4(%rbp), %eax
	jmp	.L40
.L35:
.LBE5:
	.loc 1 310 9
	movl	$.LC12, %edi
	call	perror
	.loc 1 311 9
	movl	$1, %edi
	call	exit
.L40:
	.loc 1 314 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	readdir_r_с, .-readdir_r_с
	.section	.rodata
	.align 8
.LC13:
	.string	"from scandir_\321\201 dir_path = %s, errno = %d\n"
	.text
	.globl	scandir_с
	.type	scandir_с, @function
scandir_с:
.LFB10:
	.loc 1 331 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -60(%rbp)
	.loc 1 334 16
	movl	24(%rbp), %eax
	andl	$1, %eax
	.loc 1 334 8
	testl	%eax, %eax
	je	.L46
.LBB6:
	.loc 1 336 17
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	scandir
	movl	%eax, -4(%rbp)
	.loc 1 337 12
	cmpl	$-1, -4(%rbp)
	jne	.L47
	.loc 1 339 24
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 339 16
	testl	%eax, %eax
	je	.L48
	.loc 1 341 17
	movq	stderr(%rip), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 342 90
	call	__errno_location
	.loc 1 342 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 343 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 344 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L48:
	.loc 1 346 24
	movl	32(%rbp), %eax
	andl	$2, %eax
	.loc 1 346 16
	testl	%eax, %eax
	je	.L49
	.loc 1 348 28
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 348 20
	testl	%eax, %eax
	je	.L50
	.loc 1 349 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L50:
	.loc 1 350 24
	movl	$-1, %eax
	jmp	.L51
.L49:
	.loc 1 352 29
	movl	32(%rbp), %eax
	andl	$4, %eax
	.loc 1 352 21
	testl	%eax, %eax
	je	.L52
	.loc 1 354 28
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 354 20
	testl	%eax, %eax
	je	.L53
	.loc 1 355 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L53:
	.loc 1 356 22
	call	__errno_location
	.loc 1 356 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L52:
	.loc 1 358 29
	movl	32(%rbp), %eax
	andl	$1, %eax
	.loc 1 358 21
	testl	%eax, %eax
	je	.L54
	.loc 1 360 28
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 360 20
	testl	%eax, %eax
	je	.L55
	.loc 1 361 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L55:
	.loc 1 362 24
	movl	-4(%rbp), %eax
	jmp	.L51
.L54:
	.loc 1 366 17
	movq	stderr(%rip), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 367 90
	call	__errno_location
	.loc 1 367 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 368 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 369 17
	movl	$1, %edi
	call	exit
.L47:
	.loc 1 372 16
	movl	-4(%rbp), %eax
	jmp	.L51
.L46:
.LBE6:
	.loc 1 376 9
	movl	$.LC7, %edi
	call	perror
	.loc 1 377 9
	movl	$1, %edi
	call	exit
.L51:
	.loc 1 380 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	scandir_с, .-scandir_с
.Letext0:
	.file 2 "/usr/include/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-redhat-linux/12/include/stddef.h"
	.file 4 "/usr/include/bits/types/struct_FILE.h"
	.file 5 "/usr/include/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/bits/dirent.h"
	.file 8 "/usr/include/dirent.h"
	.file 9 "/usr/include/stdlib.h"
	.file 10 "/usr/include/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7e6
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x16
	.long	.LASF89
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
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.long	0x58
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x9
	.long	.LASF9
	.byte	0x2
	.byte	0x94
	.byte	0x19
	.long	0x43
	.uleb128 0x9
	.long	.LASF10
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x64
	.uleb128 0x9
	.long	.LASF11
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x64
	.uleb128 0x18
	.byte	0x8
	.uleb128 0x4
	.long	0x96
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0xc
	.long	0x96
	.uleb128 0x4
	.long	0x9d
	.uleb128 0x7
	.long	0xa2
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.long	.LASF14
	.uleb128 0x9
	.long	.LASF15
	.byte	0x3
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF17
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.long	.LASF18
	.uleb128 0x19
	.long	.LASF54
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
	.uleb128 0x9
	.long	.LASF48
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xdb
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF49
	.uleb128 0x4
	.long	0x276
	.uleb128 0x4
	.long	0xdb
	.uleb128 0xd
	.long	0x96
	.long	0x295
	.uleb128 0xe
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x26e
	.uleb128 0xb
	.long	.LASF50
	.uleb128 0x4
	.long	0x29a
	.uleb128 0xb
	.long	.LASF51
	.uleb128 0x4
	.long	0x2a4
	.uleb128 0xd
	.long	0x96
	.long	0x2be
	.uleb128 0xe
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	0x262
	.uleb128 0x7
	.long	0x2be
	.uleb128 0x11
	.long	.LASF52
	.byte	0x90
	.long	0x2be
	.uleb128 0x11
	.long	.LASF53
	.byte	0x91
	.long	0x2be
	.uleb128 0x1b
	.long	.LASF55
	.value	0x118
	.byte	0x7
	.byte	0x16
	.byte	0x8
	.long	0x32c
	.uleb128 0x1
	.long	.LASF56
	.byte	0x7
	.byte	0x19
	.byte	0xd
	.long	0x6b
	.byte	0
	.uleb128 0x1
	.long	.LASF57
	.byte	0x7
	.byte	0x1a
	.byte	0xd
	.long	0x77
	.byte	0x8
	.uleb128 0x1
	.long	.LASF58
	.byte	0x7
	.byte	0x1f
	.byte	0x18
	.long	0x35
	.byte	0x10
	.uleb128 0x1
	.long	.LASF59
	.byte	0x7
	.byte	0x20
	.byte	0x13
	.long	0x2e
	.byte	0x12
	.uleb128 0x1
	.long	.LASF60
	.byte	0x7
	.byte	0x21
	.byte	0xa
	.long	0x331
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.long	0x2dc
	.uleb128 0xd
	.long	0x96
	.long	0x341
	.uleb128 0xe
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x1c
	.string	"DIR"
	.byte	0x8
	.byte	0x7f
	.byte	0x1c
	.long	0x34d
	.uleb128 0xb
	.long	.LASF61
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0xff
	.byte	0xc
	.long	0x58
	.long	0x377
	.uleb128 0x3
	.long	0xa7
	.uleb128 0x3
	.long	0x37c
	.uleb128 0x3
	.long	0x395
	.uleb128 0x3
	.long	0x3ae
	.byte	0
	.uleb128 0x4
	.long	0x381
	.uleb128 0x7
	.long	0x377
	.uleb128 0x4
	.long	0x38b
	.uleb128 0x7
	.long	0x381
	.uleb128 0x4
	.long	0x2dc
	.uleb128 0x7
	.long	0x38b
	.uleb128 0x4
	.long	0x39a
	.uleb128 0x12
	.long	0x58
	.long	0x3a9
	.uleb128 0x3
	.long	0x3a9
	.byte	0
	.uleb128 0x4
	.long	0x32c
	.uleb128 0x4
	.long	0x3b3
	.uleb128 0x12
	.long	0x58
	.long	0x3c7
	.uleb128 0x3
	.long	0x3c7
	.uleb128 0x3
	.long	0x3c7
	.byte	0
	.uleb128 0x4
	.long	0x3a9
	.uleb128 0x8
	.long	.LASF63
	.byte	0x8
	.byte	0xb7
	.byte	0xc
	.long	0x58
	.long	0x3ec
	.uleb128 0x3
	.long	0x3f1
	.uleb128 0x3
	.long	0x390
	.uleb128 0x3
	.long	0x386
	.byte	0
	.uleb128 0x4
	.long	0x341
	.uleb128 0x7
	.long	0x3ec
	.uleb128 0x8
	.long	.LASF64
	.byte	0x8
	.byte	0xa2
	.byte	0x17
	.long	0x38b
	.long	0x40c
	.uleb128 0x3
	.long	0x3ec
	.byte	0
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0x86
	.byte	0xd
	.long	0x3ec
	.long	0x422
	.uleb128 0x3
	.long	0xa2
	.byte	0
	.uleb128 0x1d
	.long	.LASF66
	.byte	0x9
	.value	0x270
	.byte	0xd
	.long	0x435
	.uleb128 0x3
	.long	0x58
	.byte	0
	.uleb128 0x13
	.long	.LASF67
	.value	0x164
	.long	0x58
	.long	0x44b
	.uleb128 0x3
	.long	0xa2
	.uleb128 0x14
	.byte	0
	.uleb128 0x8
	.long	.LASF68
	.byte	0x6
	.byte	0xe6
	.byte	0xc
	.long	0x58
	.long	0x461
	.uleb128 0x3
	.long	0x2be
	.byte	0
	.uleb128 0x1e
	.long	.LASF91
	.byte	0x6
	.value	0x324
	.byte	0xd
	.long	0x474
	.uleb128 0x3
	.long	0xa2
	.byte	0
	.uleb128 0x1f
	.long	.LASF92
	.byte	0xa
	.byte	0x25
	.byte	0xd
	.long	0x480
	.uleb128 0x4
	.long	0x58
	.uleb128 0x13
	.long	.LASF69
	.value	0x15e
	.long	0x58
	.long	0x4a0
	.uleb128 0x3
	.long	0x2c3
	.uleb128 0x3
	.long	0xa7
	.uleb128 0x14
	.byte	0
	.uleb128 0x8
	.long	.LASF70
	.byte	0x8
	.byte	0xe0
	.byte	0xc
	.long	0x58
	.long	0x4b6
	.uleb128 0x3
	.long	0x3ec
	.byte	0
	.uleb128 0x20
	.long	.LASF80
	.byte	0x1
	.value	0x14a
	.byte	0xb
	.long	0x58
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x56f
	.uleb128 0x6
	.long	.LASF71
	.byte	0x1c
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF72
	.byte	0x37
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.long	.LASF73
	.byte	0x47
	.long	0x395
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.long	.LASF74
	.byte	0x6d
	.long	0x3ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.long	.LASF75
	.byte	0xb3
	.long	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.long	.LASF76
	.byte	0xc3
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x6
	.long	.LASF77
	.byte	0xcd
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.long	.LASF78
	.byte	0xd9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x6
	.long	.LASF79
	.byte	0xe5
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xa
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x15
	.string	"a"
	.value	0x150
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF81
	.byte	0xfe
	.byte	0xb
	.long	0x58
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x621
	.uleb128 0x2
	.long	.LASF82
	.byte	0xfe
	.byte	0x26
	.long	0x3f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF83
	.byte	0xfe
	.byte	0x44
	.long	0x390
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF84
	.byte	0xfe
	.byte	0x64
	.long	0x386
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF75
	.byte	0xfe
	.byte	0x78
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF76
	.byte	0xfe
	.byte	0x88
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.long	.LASF77
	.byte	0xfe
	.byte	0x92
	.long	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.long	.LASF78
	.byte	0xfe
	.byte	0x9e
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.long	.LASF79
	.byte	0xfe
	.byte	0xaa
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xa
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x15
	.string	"a"
	.value	0x105
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF85
	.byte	0xb2
	.byte	0x16
	.long	0x38b
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c4
	.uleb128 0x2
	.long	.LASF82
	.byte	0xb2
	.byte	0x26
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF75
	.byte	0xb2
	.byte	0x38
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF76
	.byte	0xb2
	.byte	0x48
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.long	.LASF77
	.byte	0xb2
	.byte	0x52
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF78
	.byte	0xb2
	.byte	0x5e
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.long	.LASF79
	.byte	0xb2
	.byte	0x6a
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x21
	.long	.LASF86
	.byte	0x1
	.byte	0xb8
	.byte	0xd
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.string	"a"
	.byte	0xb9
	.byte	0x18
	.long	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF87
	.byte	0x6d
	.byte	0xc
	.long	0x3ec
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x758
	.uleb128 0x2
	.long	.LASF88
	.byte	0x6d
	.byte	0x1d
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF75
	.byte	0x6d
	.byte	0x32
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF76
	.byte	0x6d
	.byte	0x42
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.long	.LASF77
	.byte	0x6d
	.byte	0x4c
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF78
	.byte	0x6d
	.byte	0x58
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.long	.LASF79
	.byte	0x6d
	.byte	0x64
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x10
	.string	"a"
	.byte	0x73
	.byte	0xe
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF93
	.byte	0x1
	.byte	0x37
	.byte	0xb
	.long	0x58
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF82
	.byte	0x37
	.byte	0x19
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF75
	.byte	0x37
	.byte	0x2b
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF76
	.byte	0x37
	.byte	0x3b
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.long	.LASF77
	.byte	0x37
	.byte	0x45
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF78
	.byte	0x37
	.byte	0x51
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.long	.LASF79
	.byte	0x37
	.byte	0x5d
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x10
	.string	"a"
	.byte	0x3d
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
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 330
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x37
	.byte	0
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
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
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
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.uleb128 0x18
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
.LASF92:
	.string	"__errno_location"
.LASF84:
	.string	"result"
.LASF35:
	.string	"_old_offset"
.LASF68:
	.string	"fflush"
.LASF61:
	.string	"__dirstream"
.LASF30:
	.string	"_IO_save_end"
.LASF25:
	.string	"_IO_write_end"
.LASF7:
	.string	"short int"
.LASF15:
	.string	"size_t"
.LASF64:
	.string	"readdir"
.LASF90:
	.string	"_IO_lock_t"
.LASF40:
	.string	"_offset"
.LASF55:
	.string	"dirent"
.LASF43:
	.string	"_freeres_list"
.LASF73:
	.string	"select"
.LASF24:
	.string	"_IO_write_ptr"
.LASF19:
	.string	"_flags"
.LASF26:
	.string	"_IO_buf_base"
.LASF75:
	.string	"file"
.LASF81:
	.string	"readdir_r_\321\201"
.LASF31:
	.string	"_markers"
.LASF21:
	.string	"_IO_read_end"
.LASF87:
	.string	"opendir_\321\201"
.LASF44:
	.string	"_freeres_buf"
.LASF93:
	.string	"dirfd_\321\201"
.LASF76:
	.string	"line"
.LASF58:
	.string	"d_reclen"
.LASF88:
	.string	"dirname"
.LASF59:
	.string	"d_type"
.LASF82:
	.string	"dirp"
.LASF53:
	.string	"stderr"
.LASF16:
	.string	"long long int"
.LASF39:
	.string	"_lock"
.LASF8:
	.string	"long int"
.LASF77:
	.string	"st__mo"
.LASF67:
	.string	"printf"
.LASF56:
	.string	"d_ino"
.LASF36:
	.string	"_cur_column"
.LASF91:
	.string	"perror"
.LASF69:
	.string	"fprintf"
.LASF13:
	.string	"float"
.LASF66:
	.string	"exit"
.LASF37:
	.string	"_vtable_offset"
.LASF83:
	.string	"entry"
.LASF54:
	.string	"_IO_FILE"
.LASF18:
	.string	"long double"
.LASF65:
	.string	"opendir"
.LASF80:
	.string	"scandir_\321\201"
.LASF2:
	.string	"unsigned char"
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
.LASF47:
	.string	"_unused2"
.LASF20:
	.string	"_IO_read_ptr"
.LASF27:
	.string	"_IO_buf_end"
.LASF78:
	.string	"st__if"
.LASF12:
	.string	"char"
.LASF57:
	.string	"d_off"
.LASF62:
	.string	"scandir"
.LASF42:
	.string	"_wide_data"
.LASF79:
	.string	"st__re"
.LASF45:
	.string	"__pad5"
.LASF86:
	.string	"e_start"
.LASF60:
	.string	"d_name"
.LASF85:
	.string	"readdir_\321\201"
.LASF5:
	.string	"long unsigned int"
.LASF70:
	.string	"dirfd"
.LASF14:
	.string	"double"
.LASF63:
	.string	"readdir_r"
.LASF11:
	.string	"__off64_t"
.LASF72:
	.string	"namelist"
.LASF10:
	.string	"__off_t"
.LASF3:
	.string	"short unsigned int"
.LASF32:
	.string	"_chain"
.LASF51:
	.string	"_IO_wide_data"
.LASF74:
	.string	"compare"
.LASF29:
	.string	"_IO_backup_base"
.LASF34:
	.string	"_flags2"
.LASF46:
	.string	"_mode"
.LASF22:
	.string	"_IO_read_base"
.LASF9:
	.string	"__ino_t"
.LASF71:
	.string	"dir_path"
.LASF28:
	.string	"_IO_save_base"
.LASF33:
	.string	"_fileno"
.LASF48:
	.string	"FILE"
.LASF89:
	.string	"GNU C17 12.2.1 20220819 (Red Hat 12.2.1-1) -mtune=generic -march=x86-64 -g"
.LASF52:
	.string	"stdout"
.LASF50:
	.string	"_IO_codecvt"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs"
.LASF0:
	.string	"lib/dirent_1.c"
	.ident	"GCC: (GNU) 12.2.1 20220819 (Red Hat 12.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
