	.file	"io_1.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs" "lib/io_1.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"failed in file %s at line # %d\n"
	.align 8
.LC1:
	.string	"from fclose_c ftell(stream) = %ld, errno = %d\n"
.LC2:
	.string	"exit(errno) with"
	.text
	.globl	fclose_c
	.type	fclose_c, @function
fclose_c:
.LFB6:
	.file 1 "lib/io_1.c"
	.loc 1 53 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	.loc 1 54 13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	%eax, -20(%rbp)
	.loc 1 55 8
	cmpl	$-1, -20(%rbp)
	jne	.L2
	.loc 1 57 9
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 58 91
	call	__errno_location
	.loc 1 58 9
	movl	(%rax), %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movl	%ebx, %ecx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 59 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 60 14
	call	__errno_location
	.loc 1 60 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L2:
	.loc 1 62 12
	movl	-20(%rbp), %eax
	.loc 1 63 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	fclose_c, .-fclose_c
	.section	.rodata
	.align 8
.LC3:
	.string	"from fgetc_c ftell(stream) = %ld, errno = %d\n"
	.text
	.globl	fgetc_c
	.type	fgetc_c, @function
fgetc_c:
.LFB7:
	.loc 1 69 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	.loc 1 70 13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc
	movl	%eax, -20(%rbp)
	.loc 1 71 9
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ferror
	.loc 1 71 8
	testl	%eax, %eax
	je	.L5
	.loc 1 73 9
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 74 90
	call	__errno_location
	.loc 1 74 9
	movl	(%rax), %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movl	%ebx, %ecx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 75 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 76 14
	call	__errno_location
	.loc 1 76 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L5:
	.loc 1 78 12
	movl	-20(%rbp), %eax
	.loc 1 79 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	fgetc_c, .-fgetc_c
	.section	.rodata
	.align 8
.LC4:
	.string	"from fgetpos_c ftell(stream) = %ld, pos = %lu, errno = %d\n"
	.text
	.globl	fgetpos_c
	.type	fgetpos_c, @function
fgetpos_c:
.LFB8:
	.loc 1 82 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	.loc 1 83 13
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fgetpos
	movl	%eax, -20(%rbp)
	.loc 1 84 8
	cmpl	$0, -20(%rbp)
	je	.L8
	.loc 1 86 9
	movq	stderr(%rip), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 87 108
	call	__errno_location
	.loc 1 87 9
	movl	(%rax), %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, %rsi
	movq	stderr(%rip), %rax
	movq	-48(%rbp), %rdx
	movl	%ebx, %r8d
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 88 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 89 14
	call	__errno_location
	.loc 1 89 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L8:
	.loc 1 91 12
	movl	-20(%rbp), %eax
	.loc 1 92 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	fgetpos_c, .-fgetpos_c
	.section	.rodata
	.align 8
.LC5:
	.string	"from fgets_s ftell(stream) = %ld, str = %s, num = %d, errno = %d\n"
	.text
	.globl	fgets_c
	.type	fgets_c, @function
fgets_c:
.LFB9:
	.loc 1 95 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -48(%rbp)
	.loc 1 96 15
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fgets
	movq	%rax, -24(%rbp)
	.loc 1 97 8
	cmpq	$0, -24(%rbp)
	jne	.L11
	.loc 1 99 9
	movq	stderr(%rip), %rax
	movl	-48(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 100 120
	call	__errno_location
	.loc 1 100 9
	movl	(%rax), %ebx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, %rsi
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	%ebx, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$.LC5, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 101 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 102 14
	call	__errno_location
	.loc 1 102 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L11:
	.loc 1 104 12
	movq	-24(%rbp), %rax
	.loc 1 105 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	fgets_c, .-fgets_c
	.section	.rodata
	.align 8
.LC6:
	.string	"from fopen_c path = %s, mode = %s, errno = %d\n"
.LC7:
	.string	"Error is: "
.LC8:
	.string	"return -1"
.LC9:
	.string	"exit(errno): "
.LC10:
	.string	"return original error"
	.align 8
.LC11:
	.string	"st__re NOT equal (STRE_ERR|STRE_MNS|STRE_EXI)  exit(1) That error NOT treat: "
	.align 8
.LC12:
	.string	" st__if NOT equal STIF_NUL exit(1)"
	.text
	.globl	fopen_c
	.type	fopen_c, @function
fopen_c:
.LFB10:
	.loc 1 108 1
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
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	.loc 1 111 16
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 111 8
	testl	%eax, %eax
	je	.L14
.LBB2:
	.loc 1 113 19
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -8(%rbp)
	.loc 1 114 12
	cmpq	$0, -8(%rbp)
	jne	.L15
	.loc 1 116 24
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 116 16
	testl	%eax, %eax
	je	.L16
	.loc 1 118 17
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 119 96
	call	__errno_location
	.loc 1 119 17
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	%esi, %r8d
	movl	$.LC6, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 120 17
	movl	$.LC7, %edi
	call	perror
	.loc 1 121 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L16:
	.loc 1 123 24
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 123 16
	testl	%eax, %eax
	je	.L17
	.loc 1 125 28
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 125 20
	testl	%eax, %eax
	je	.L18
	.loc 1 126 21
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
.L18:
	.loc 1 127 24
	movq	$-1, %rax
	jmp	.L19
.L17:
	.loc 1 129 29
	movl	16(%rbp), %eax
	andl	$4, %eax
	.loc 1 129 21
	testl	%eax, %eax
	je	.L20
	.loc 1 131 28
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 131 20
	testl	%eax, %eax
	je	.L21
	.loc 1 132 21
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
.L21:
	.loc 1 133 22
	call	__errno_location
	.loc 1 133 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L20:
	.loc 1 135 29
	movl	16(%rbp), %eax
	andl	$1, %eax
	.loc 1 135 21
	testl	%eax, %eax
	je	.L22
	.loc 1 137 28
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 137 20
	testl	%eax, %eax
	je	.L23
	.loc 1 138 21
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
.L23:
	.loc 1 139 24
	movq	-8(%rbp), %rax
	jmp	.L19
.L22:
	.loc 1 143 17
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 144 96
	call	__errno_location
	.loc 1 144 17
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	%esi, %r8d
	movl	$.LC6, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 145 17
	movl	$.LC11, %edi
	call	perror
	.loc 1 146 17
	movl	$1, %edi
	call	exit
.L15:
	.loc 1 149 16
	movq	-8(%rbp), %rax
	jmp	.L19
.L14:
.LBE2:
	.loc 1 153 9
	movl	$.LC12, %edi
	call	perror
	.loc 1 154 9
	movl	$1, %edi
	call	exit
.L19:
	.loc 1 158 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	fopen_c, .-fopen_c
	.section	.rodata
	.align 8
.LC13:
	.string	"from fputc_c ftell(stream) = %ld, character = %d, errno = %d\n"
	.text
	.globl	fputc_c
	.type	fputc_c, @function
fputc_c:
.LFB11:
	.loc 1 177 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -40(%rbp)
	.loc 1 178 13
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc
	movl	%eax, -20(%rbp)
	.loc 1 179 8
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.L25
	.loc 1 181 9
	movq	stderr(%rip), %rax
	movl	-40(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 182 117
	call	__errno_location
	.loc 1 182 9
	movl	(%rax), %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, %rsi
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %edx
	movl	%ebx, %r8d
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 183 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 184 14
	call	__errno_location
	.loc 1 184 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L25:
	.loc 1 186 12
	movl	-20(%rbp), %eax
	.loc 1 187 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	fputc_c, .-fputc_c
	.section	.rodata
	.align 8
.LC14:
	.string	"from fputs_s ftell(stream) = %ld,  str = %s errno = %d\n"
	.text
	.globl	fputs_c
	.type	fputs_c, @function
fputs_c:
.LFB12:
	.loc 1 190 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	.loc 1 191 13
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs
	movl	%eax, -20(%rbp)
	.loc 1 192 8
	cmpl	$-1, -20(%rbp)
	jne	.L28
	.loc 1 194 9
	movq	stderr(%rip), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 195 105
	call	__errno_location
	.loc 1 195 9
	movl	(%rax), %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, %rsi
	movq	stderr(%rip), %rax
	movq	-40(%rbp), %rdx
	movl	%ebx, %r8d
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 196 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 197 14
	call	__errno_location
	.loc 1 197 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L28:
	.loc 1 199 12
	movl	-20(%rbp), %eax
	.loc 1 200 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	fputs_c, .-fputs_c
	.section	.rodata
	.align 8
.LC15:
	.string	"from fread_c size = %lu,count = %ld errno = %d\n"
	.text
	.globl	fread_c
	.type	fread_c, @function
fread_c:
.LFB13:
	.loc 1 203 1
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
	.loc 1 204 16
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fread
	movq	%rax, -8(%rbp)
	.loc 1 205 8
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.L31
	.loc 1 207 9
	movq	stderr(%rip), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 209 90
	call	__errno_location
	.loc 1 209 9
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%esi, %r8d
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 211 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 212 14
	call	__errno_location
	.loc 1 212 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L31:
	.loc 1 214 12
	movq	-8(%rbp), %rax
	.loc 1 215 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	fread_c, .-fread_c
	.section	.rodata
	.align 8
.LC16:
	.string	"from freopen_s filename = %s, mode = %s, errno = %d\n"
	.text
	.globl	freopen_c
	.type	freopen_c, @function
freopen_c:
.LFB14:
	.loc 1 218 1
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
	.loc 1 219 24
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	freopen
	movq	%rax, -8(%rbp)
	.loc 1 220 8
	cmpq	$0, -8(%rbp)
	jne	.L34
	.loc 1 222 9
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 223 98
	call	__errno_location
	.loc 1 223 9
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	%esi, %r8d
	movl	$.LC16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 224 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 225 14
	call	__errno_location
	.loc 1 225 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L34:
	.loc 1 228 12
	movq	-8(%rbp), %rax
	.loc 1 229 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	freopen_c, .-freopen_c
	.section	.rodata
	.align 8
.LC17:
	.string	"from fseek_s ftell(stream) = %ld, offset = %d, errno = %d\n"
	.text
	.globl	fseek_c
	.type	fseek_c, @function
fseek_c:
.LFB15:
	.loc 1 233 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	.loc 1 234 13
	movl	-44(%rbp), %eax
	movslq	%eax, %rcx
	movl	-48(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek
	movl	%eax, -20(%rbp)
	.loc 1 235 8
	cmpl	$0, -20(%rbp)
	je	.L37
	.loc 1 237 9
	movq	stderr(%rip), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 238 111
	call	__errno_location
	.loc 1 238 9
	movl	(%rax), %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, %rsi
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %edx
	movl	%ebx, %r8d
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$.LC17, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 239 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 240 14
	call	__errno_location
	.loc 1 240 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L37:
	.loc 1 242 12
	movl	-20(%rbp), %eax
	.loc 1 243 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	fseek_c, .-fseek_c
	.section	.rodata
	.align 8
.LC18:
	.string	"from fsetpos_c ftell(stream) = %ld, pos = %lu, errno = %d\n"
	.text
	.globl	fsetpos_c
	.type	fsetpos_c, @function
fsetpos_c:
.LFB16:
	.loc 1 246 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	.loc 1 247 13
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fsetpos
	movl	%eax, -20(%rbp)
	.loc 1 248 8
	cmpl	$0, -20(%rbp)
	je	.L40
	.loc 1 250 9
	movq	stderr(%rip), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 251 108
	call	__errno_location
	.loc 1 251 9
	movl	(%rax), %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, %rsi
	movq	stderr(%rip), %rax
	movq	-48(%rbp), %rdx
	movl	%ebx, %r8d
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 252 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 253 14
	call	__errno_location
	.loc 1 253 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L40:
	.loc 1 255 12
	movl	-20(%rbp), %eax
	.loc 1 256 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	fsetpos_c, .-fsetpos_c
	.section	.rodata
.LC19:
	.string	"from ftell_s errno = %d\n"
	.text
	.globl	ftell_c
	.type	ftell_c, @function
ftell_c:
.LFB17:
	.loc 1 259 1
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
	.loc 1 260 18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, -8(%rbp)
	.loc 1 261 8
	cmpq	$-1, -8(%rbp)
	jne	.L43
	.loc 1 263 9
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 264 54
	call	__errno_location
	.loc 1 264 9
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 265 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 266 14
	call	__errno_location
	.loc 1 266 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L43:
	.loc 1 268 12
	movq	-8(%rbp), %rax
	.loc 1 269 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ftell_c, .-ftell_c
	.section	.rodata
	.align 8
.LC20:
	.string	"from fwrite_c ftell(stream) = %ld,size = %lu,count = %ld errno = %d\n"
	.text
	.globl	fwrite_c
	.type	fwrite_c, @function
fwrite_c:
.LFB18:
	.loc 1 272 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	%r9d, -76(%rbp)
	.loc 1 273 16
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fwrite
	movq	%rax, -24(%rbp)
	.loc 1 274 9
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ferror
	.loc 1 274 8
	testl	%eax, %eax
	je	.L46
	.loc 1 276 9
	movq	stderr(%rip), %rax
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 277 126
	call	__errno_location
	.loc 1 277 9
	movl	(%rax), %ebx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, %rsi
	movq	stderr(%rip), %rax
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%ebx, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$.LC20, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 278 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 279 14
	call	__errno_location
	.loc 1 279 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L46:
	.loc 1 281 12
	movq	-24(%rbp), %rax
	.loc 1 282 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	fwrite_c, .-fwrite_c
	.globl	getc_c
	.type	getc_c, @function
getc_c:
.LFB19:
	.loc 1 285 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	.loc 1 286 13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	getc
	movl	%eax, -20(%rbp)
	.loc 1 287 9
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ferror
	.loc 1 287 8
	testl	%eax, %eax
	je	.L49
	.loc 1 289 9
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 290 90
	call	__errno_location
	.loc 1 290 9
	movl	(%rax), %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movl	%ebx, %ecx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 291 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 292 14
	call	__errno_location
	.loc 1 292 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L49:
	.loc 1 294 12
	movl	-20(%rbp), %eax
	.loc 1 295 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	getc_c, .-getc_c
	.section	.rodata
.LC21:
	.string	"from getchar_c errno = %d\n"
	.text
	.globl	getchar_c
	.type	getchar_c, @function
getchar_c:
.LFB20:
	.loc 1 298 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 299 13
	call	getchar
	movl	%eax, -4(%rbp)
	.loc 1 300 9
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	ferror
	.loc 1 300 8
	testl	%eax, %eax
	je	.L52
	.loc 1 302 9
	movq	stderr(%rip), %rax
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 303 56
	call	__errno_location
	.loc 1 303 9
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC21, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 304 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 305 14
	call	__errno_location
	.loc 1 305 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L52:
	.loc 1 307 12
	movl	-4(%rbp), %eax
	.loc 1 308 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	getchar_c, .-getchar_c
	.section	.rodata
	.align 8
.LC22:
	.string	"from putc_c ftell(stream) = %ld, character = %d, errno = %d\n"
	.text
	.globl	putc_c
	.type	putc_c, @function
putc_c:
.LFB21:
	.loc 1 314 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -40(%rbp)
	.loc 1 315 13
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	putc
	movl	%eax, -20(%rbp)
	.loc 1 316 8
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.L55
	.loc 1 318 9
	movq	stderr(%rip), %rax
	movl	-40(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 319 116
	call	__errno_location
	.loc 1 319 9
	movl	(%rax), %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, %rsi
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %edx
	movl	%ebx, %r8d
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$.LC22, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 320 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 321 14
	call	__errno_location
	.loc 1 321 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L55:
	.loc 1 323 12
	movl	-20(%rbp), %eax
	.loc 1 324 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	putc_c, .-putc_c
	.section	.rodata
	.align 8
.LC23:
	.string	"from putchar_c character = %d, errno = %d\n"
	.text
	.globl	putchar_c
	.type	putchar_c, @function
putchar_c:
.LFB22:
	.loc 1 327 1
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
	.loc 1 328 13
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	movl	%eax, -4(%rbp)
	.loc 1 329 8
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	je	.L58
	.loc 1 331 9
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 332 83
	call	__errno_location
	.loc 1 332 9
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC23, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 333 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 334 14
	call	__errno_location
	.loc 1 334 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L58:
	.loc 1 336 12
	movl	-4(%rbp), %eax
	.loc 1 337 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	putchar_c, .-putchar_c
	.section	.rodata
	.align 8
.LC24:
	.string	"from puts_s str = %s errno = %d\n"
	.text
	.globl	puts_c
	.type	puts_c, @function
puts_c:
.LFB23:
	.loc 1 340 1
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
	.loc 1 341 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	movl	%eax, -4(%rbp)
	.loc 1 342 8
	cmpl	$-1, -4(%rbp)
	jne	.L61
	.loc 1 344 9
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 345 67
	call	__errno_location
	.loc 1 345 9
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC24, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 346 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 347 14
	call	__errno_location
	.loc 1 347 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L61:
	.loc 1 349 12
	movl	-4(%rbp), %eax
	.loc 1 350 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	puts_c, .-puts_c
	.section	.rodata
	.align 8
.LC25:
	.string	"from remove_\321\201 filename = %s, errno = %d\n"
	.align 8
.LC26:
	.string	" st__if NOT equal STIF_ONE exit(1)"
	.text
	.globl	remove_с
	.type	remove_с, @function
remove_с:
.LFB24:
	.loc 1 366 1
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
	.loc 1 370 16
	movl	-44(%rbp), %eax
	andl	$1, %eax
	.loc 1 370 8
	testl	%eax, %eax
	je	.L64
.LBB3:
	.loc 1 372 17
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	remove
	movl	%eax, -4(%rbp)
	.loc 1 373 12
	cmpl	$-1, -4(%rbp)
	jne	.L65
	.loc 1 375 24
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 375 16
	testl	%eax, %eax
	je	.L66
	.loc 1 377 17
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 378 89
	call	__errno_location
	.loc 1 378 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC25, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 379 17
	movl	$.LC7, %edi
	call	perror
	.loc 1 380 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L66:
	.loc 1 382 24
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 382 16
	testl	%eax, %eax
	je	.L67
	.loc 1 384 28
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 384 20
	testl	%eax, %eax
	je	.L68
	.loc 1 385 21
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
.L68:
	.loc 1 386 24
	movl	$-1, %eax
	jmp	.L69
.L67:
	.loc 1 388 29
	movl	-48(%rbp), %eax
	andl	$4, %eax
	.loc 1 388 21
	testl	%eax, %eax
	je	.L70
	.loc 1 390 28
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 390 20
	testl	%eax, %eax
	je	.L71
	.loc 1 391 21
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
.L71:
	.loc 1 392 22
	call	__errno_location
	.loc 1 392 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L70:
	.loc 1 394 29
	movl	-48(%rbp), %eax
	andl	$1, %eax
	.loc 1 394 21
	testl	%eax, %eax
	je	.L72
	.loc 1 396 28
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 1 396 20
	testl	%eax, %eax
	je	.L73
	.loc 1 397 21
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
.L73:
	.loc 1 398 24
	movl	-4(%rbp), %eax
	jmp	.L69
.L72:
	.loc 1 402 17
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 403 89
	call	__errno_location
	.loc 1 403 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC25, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 404 17
	movl	$.LC11, %edi
	call	perror
	.loc 1 405 17
	movl	$1, %edi
	call	exit
.L65:
	.loc 1 408 16
	movl	-4(%rbp), %eax
	jmp	.L69
.L64:
.LBE3:
	.loc 1 412 9
	movl	$.LC26, %edi
	call	perror
	.loc 1 413 9
	movl	$1, %edi
	call	exit
.L69:
	.loc 1 417 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	remove_с, .-remove_с
	.section	.rodata
	.align 8
.LC27:
	.string	"from is_ist_c filename = %s, errno = %d\n"
	.text
	.globl	is_ist_c
	.type	is_ist_c, @function
is_ist_c:
.LFB25:
	.loc 1 438 1
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
	.loc 1 439 13
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	access
	movl	%eax, -4(%rbp)
	.loc 1 440 8
	cmpl	$-1, -4(%rbp)
	jne	.L75
	.loc 1 442 9
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 443 80
	call	__errno_location
	.loc 1 443 9
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC27, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 444 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 445 14
	call	__errno_location
	.loc 1 445 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L75:
	.loc 1 447 12
	movl	-4(%rbp), %eax
	.loc 1 448 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	is_ist_c, .-is_ist_c
	.globl	or_ist_
	.type	or_ist_, @function
or_ist_:
.LFB26:
	.loc 1 451 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 452 13
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	access
	.loc 1 452 33
	cmpl	$-1, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 1 453 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	or_ist_, .-or_ist_
	.section	.rodata
	.align 8
.LC28:
	.string	"\ninfo:%s, ftell(stream) = %ld\n"
	.text
	.globl	prpos_
	.type	prpos_, @function
prpos_:
.LFB27:
	.loc 1 456 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 457 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC28, %edi
	movl	$0, %eax
	call	printf
	.loc 1 458 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	prpos_, .-prpos_
.Letext0:
	.file 2 "/usr/include/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-redhat-linux/12/include/stddef.h"
	.file 4 "/usr/include/bits/types/__mbstate_t.h"
	.file 5 "/usr/include/bits/types/__fpos_t.h"
	.file 6 "/usr/include/bits/types/struct_FILE.h"
	.file 7 "/usr/include/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/unistd.h"
	.file 10 "/usr/include/stdlib.h"
	.file 11 "/usr/include/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf52
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1a
	.long	.LASF129
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xf
	.long	0x58
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0xc
	.long	.LASF9
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x64
	.uleb128 0xc
	.long	.LASF10
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x64
	.uleb128 0x1c
	.byte	0x8
	.uleb128 0xd
	.long	0x83
	.uleb128 0x7
	.long	0x94
	.uleb128 0xd
	.long	0x8a
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0xf
	.long	0x94
	.uleb128 0x7
	.long	0x9b
	.uleb128 0xd
	.long	0xa0
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0xc
	.long	.LASF14
	.byte	0x3
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0x10
	.long	0x94
	.long	0xe2
	.uleb128 0x11
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.long	.LASF17
	.uleb128 0x1d
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.long	0x109
	.uleb128 0x15
	.long	.LASF18
	.byte	0x12
	.byte	0x13
	.long	0x3c
	.uleb128 0x15
	.long	.LASF19
	.byte	0x13
	.byte	0xa
	.long	0xd2
	.byte	0
	.uleb128 0x1e
	.byte	0x8
	.byte	0x4
	.byte	0xd
	.byte	0x9
	.long	0x12d
	.uleb128 0x4
	.long	.LASF20
	.byte	0x4
	.byte	0xf
	.byte	0x7
	.long	0x58
	.byte	0
	.uleb128 0x4
	.long	.LASF21
	.byte	0x4
	.byte	0x14
	.byte	0x5
	.long	0xe9
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	.LASF22
	.byte	0x4
	.byte	0x15
	.byte	0x3
	.long	0x109
	.uleb128 0x16
	.long	.LASF26
	.byte	0x10
	.byte	0x5
	.byte	0xa
	.byte	0x10
	.long	0x161
	.uleb128 0x4
	.long	.LASF23
	.byte	0x5
	.byte	0xc
	.byte	0xb
	.long	0x6b
	.byte	0
	.uleb128 0x4
	.long	.LASF24
	.byte	0x5
	.byte	0xd
	.byte	0xf
	.long	0x12d
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF25
	.byte	0x5
	.byte	0xe
	.byte	0x3
	.long	0x139
	.uleb128 0x16
	.long	.LASF27
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x2f4
	.uleb128 0x4
	.long	.LASF28
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x58
	.byte	0
	.uleb128 0x4
	.long	.LASF29
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x8a
	.byte	0x8
	.uleb128 0x4
	.long	.LASF30
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0x8a
	.byte	0x10
	.uleb128 0x4
	.long	.LASF31
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0x8a
	.byte	0x18
	.uleb128 0x4
	.long	.LASF32
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0x8a
	.byte	0x20
	.uleb128 0x4
	.long	.LASF33
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0x8a
	.byte	0x28
	.uleb128 0x4
	.long	.LASF34
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0x8a
	.byte	0x30
	.uleb128 0x4
	.long	.LASF35
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0x8a
	.byte	0x38
	.uleb128 0x4
	.long	.LASF36
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x8a
	.byte	0x40
	.uleb128 0x4
	.long	.LASF37
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0x8a
	.byte	0x48
	.uleb128 0x4
	.long	.LASF38
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0x8a
	.byte	0x50
	.uleb128 0x4
	.long	.LASF39
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0x8a
	.byte	0x58
	.uleb128 0x4
	.long	.LASF40
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x30d
	.byte	0x60
	.uleb128 0x4
	.long	.LASF41
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x312
	.byte	0x68
	.uleb128 0x4
	.long	.LASF42
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x58
	.byte	0x70
	.uleb128 0x4
	.long	.LASF43
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x58
	.byte	0x74
	.uleb128 0x4
	.long	.LASF44
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0x6b
	.byte	0x78
	.uleb128 0x4
	.long	.LASF45
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x4
	.long	.LASF46
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x4
	.long	.LASF47
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x317
	.byte	0x83
	.uleb128 0x4
	.long	.LASF48
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x327
	.byte	0x88
	.uleb128 0x4
	.long	.LASF49
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0x77
	.byte	0x90
	.uleb128 0x4
	.long	.LASF50
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x331
	.byte	0x98
	.uleb128 0x4
	.long	.LASF51
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x33b
	.byte	0xa0
	.uleb128 0x4
	.long	.LASF52
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x312
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF53
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x83
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF54
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0xb8
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF55
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x58
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF56
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x340
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF57
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0x16d
	.uleb128 0x1f
	.long	.LASF130
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0x12
	.long	.LASF58
	.uleb128 0x7
	.long	0x308
	.uleb128 0x7
	.long	0x16d
	.uleb128 0x10
	.long	0x94
	.long	0x327
	.uleb128 0x11
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x300
	.uleb128 0x12
	.long	.LASF59
	.uleb128 0x7
	.long	0x32c
	.uleb128 0x12
	.long	.LASF60
	.uleb128 0x7
	.long	0x336
	.uleb128 0x10
	.long	0x94
	.long	0x350
	.uleb128 0x11
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.long	.LASF61
	.byte	0x8
	.byte	0x54
	.byte	0x12
	.long	0x161
	.uleb128 0xf
	.long	0x350
	.uleb128 0x13
	.long	.LASF62
	.byte	0x8f
	.long	0x36b
	.uleb128 0x7
	.long	0x2f4
	.uleb128 0xd
	.long	0x36b
	.uleb128 0x13
	.long	.LASF63
	.byte	0x90
	.long	0x36b
	.uleb128 0x13
	.long	.LASF64
	.byte	0x91
	.long	0x36b
	.uleb128 0x7
	.long	0x393
	.uleb128 0xd
	.long	0x389
	.uleb128 0x20
	.uleb128 0x5
	.long	.LASF65
	.byte	0x9
	.value	0x11f
	.byte	0xc
	.long	0x58
	.long	0x3b0
	.uleb128 0x1
	.long	0xa0
	.uleb128 0x1
	.long	0x58
	.byte	0
	.uleb128 0x14
	.long	.LASF66
	.byte	0x98
	.long	0x58
	.long	0x3c4
	.uleb128 0x1
	.long	0xa0
	.byte	0
	.uleb128 0x5
	.long	.LASF67
	.byte	0x8
	.value	0x295
	.byte	0xc
	.long	0x58
	.long	0x3db
	.uleb128 0x1
	.long	0xa0
	.byte	0
	.uleb128 0x5
	.long	.LASF68
	.byte	0x8
	.value	0x22c
	.byte	0xc
	.long	0x58
	.long	0x3f2
	.uleb128 0x1
	.long	0x58
	.byte	0
	.uleb128 0x5
	.long	.LASF69
	.byte	0x8
	.value	0x226
	.byte	0xc
	.long	0x58
	.long	0x40e
	.uleb128 0x1
	.long	0x58
	.uleb128 0x1
	.long	0x36b
	.byte	0
	.uleb128 0x21
	.long	.LASF87
	.byte	0x8
	.value	0x208
	.byte	0xc
	.long	0x58
	.uleb128 0x5
	.long	.LASF70
	.byte	0x8
	.value	0x202
	.byte	0xc
	.long	0x58
	.long	0x432
	.uleb128 0x1
	.long	0x36b
	.byte	0
	.uleb128 0x5
	.long	.LASF71
	.byte	0x8
	.value	0x2a9
	.byte	0xf
	.long	0xb8
	.long	0x458
	.uleb128 0x1
	.long	0x38e
	.uleb128 0x1
	.long	0xb8
	.uleb128 0x1
	.long	0xb8
	.uleb128 0x1
	.long	0x370
	.byte	0
	.uleb128 0x5
	.long	.LASF72
	.byte	0x8
	.value	0x2fd
	.byte	0xc
	.long	0x58
	.long	0x474
	.uleb128 0x1
	.long	0x36b
	.uleb128 0x1
	.long	0x474
	.byte	0
	.uleb128 0x7
	.long	0x35c
	.uleb128 0x5
	.long	.LASF73
	.byte	0x8
	.value	0x2c9
	.byte	0xc
	.long	0x58
	.long	0x49a
	.uleb128 0x1
	.long	0x36b
	.uleb128 0x1
	.long	0x64
	.uleb128 0x1
	.long	0x58
	.byte	0
	.uleb128 0x5
	.long	.LASF74
	.byte	0x8
	.value	0x109
	.byte	0xe
	.long	0x36b
	.long	0x4bb
	.uleb128 0x1
	.long	0xa5
	.uleb128 0x1
	.long	0xa5
	.uleb128 0x1
	.long	0x370
	.byte	0
	.uleb128 0x5
	.long	.LASF75
	.byte	0x8
	.value	0x2a3
	.byte	0xf
	.long	0xb8
	.long	0x4e1
	.uleb128 0x1
	.long	0x85
	.uleb128 0x1
	.long	0xb8
	.uleb128 0x1
	.long	0xb8
	.uleb128 0x1
	.long	0x370
	.byte	0
	.uleb128 0x5
	.long	.LASF76
	.byte	0x8
	.value	0x28f
	.byte	0xc
	.long	0x58
	.long	0x4fd
	.uleb128 0x1
	.long	0xa5
	.uleb128 0x1
	.long	0x370
	.byte	0
	.uleb128 0x5
	.long	.LASF77
	.byte	0x8
	.value	0x225
	.byte	0xc
	.long	0x58
	.long	0x519
	.uleb128 0x1
	.long	0x58
	.uleb128 0x1
	.long	0x36b
	.byte	0
	.uleb128 0x5
	.long	.LASF78
	.byte	0x8
	.value	0x164
	.byte	0xc
	.long	0x58
	.long	0x531
	.uleb128 0x1
	.long	0xa0
	.uleb128 0x17
	.byte	0
	.uleb128 0x14
	.long	.LASF79
	.byte	0xe6
	.long	0x58
	.long	0x545
	.uleb128 0x1
	.long	0x36b
	.byte	0
	.uleb128 0x5
	.long	.LASF80
	.byte	0x8
	.value	0x102
	.byte	0xe
	.long	0x36b
	.long	0x561
	.uleb128 0x1
	.long	0xa5
	.uleb128 0x1
	.long	0xa5
	.byte	0
	.uleb128 0x5
	.long	.LASF81
	.byte	0x8
	.value	0x250
	.byte	0xe
	.long	0x8a
	.long	0x582
	.uleb128 0x1
	.long	0x8f
	.uleb128 0x1
	.long	0x58
	.uleb128 0x1
	.long	0x370
	.byte	0
	.uleb128 0x5
	.long	.LASF82
	.byte	0x8
	.value	0x2f8
	.byte	0xc
	.long	0x58
	.long	0x59e
	.uleb128 0x1
	.long	0x370
	.uleb128 0x1
	.long	0x5a3
	.byte	0
	.uleb128 0x7
	.long	0x350
	.uleb128 0xd
	.long	0x59e
	.uleb128 0x5
	.long	.LASF83
	.byte	0x8
	.value	0x316
	.byte	0xc
	.long	0x58
	.long	0x5bf
	.uleb128 0x1
	.long	0x36b
	.byte	0
	.uleb128 0x5
	.long	.LASF84
	.byte	0x8
	.value	0x201
	.byte	0xc
	.long	0x58
	.long	0x5d6
	.uleb128 0x1
	.long	0x36b
	.byte	0
	.uleb128 0x22
	.long	.LASF85
	.byte	0xa
	.value	0x270
	.byte	0xd
	.long	0x5e9
	.uleb128 0x1
	.long	0x58
	.byte	0
	.uleb128 0x23
	.long	.LASF131
	.byte	0x8
	.value	0x324
	.byte	0xd
	.long	0x5fc
	.uleb128 0x1
	.long	0xa0
	.byte	0
	.uleb128 0x5
	.long	.LASF86
	.byte	0x8
	.value	0x2ce
	.byte	0x11
	.long	0x64
	.long	0x613
	.uleb128 0x1
	.long	0x36b
	.byte	0
	.uleb128 0x24
	.long	.LASF88
	.byte	0xb
	.byte	0x25
	.byte	0xd
	.long	0x61f
	.uleb128 0x7
	.long	0x58
	.uleb128 0x5
	.long	.LASF89
	.byte	0x8
	.value	0x15e
	.byte	0xc
	.long	0x58
	.long	0x641
	.uleb128 0x1
	.long	0x370
	.uleb128 0x1
	.long	0xa5
	.uleb128 0x17
	.byte	0
	.uleb128 0x14
	.long	.LASF90
	.byte	0xb2
	.long	0x58
	.long	0x655
	.uleb128 0x1
	.long	0x36b
	.byte	0
	.uleb128 0x25
	.long	.LASF127
	.byte	0x1
	.value	0x1c7
	.byte	0xc
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x693
	.uleb128 0x3
	.long	.LASF91
	.value	0x1c7
	.byte	0x19
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.long	.LASF92
	.value	0x1c7
	.byte	0x2d
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	.LASF94
	.value	0x1c2
	.byte	0xb
	.long	0x58
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c5
	.uleb128 0x3
	.long	.LASF93
	.value	0x1c2
	.byte	0x1f
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.long	.LASF95
	.value	0x1b5
	.byte	0xb
	.long	0x58
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x722
	.uleb128 0x3
	.long	.LASF93
	.value	0x1b5
	.byte	0x20
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF96
	.value	0x1b5
	.byte	0x36
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF97
	.value	0x1b5
	.byte	0x46
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.string	"a"
	.value	0x1b7
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF98
	.value	0x16d
	.byte	0xb
	.long	0x58
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x7be
	.uleb128 0x3
	.long	.LASF93
	.value	0x16d
	.byte	0x1b
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF96
	.value	0x16d
	.byte	0x31
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF97
	.value	0x16d
	.byte	0x41
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.long	.LASF99
	.value	0x16d
	.byte	0x4b
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.long	.LASF100
	.value	0x16d
	.byte	0x57
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.long	.LASF101
	.value	0x16d
	.byte	0x63
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0xb
	.string	"a"
	.value	0x174
	.byte	0xd
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	.LASF102
	.value	0x153
	.byte	0xb
	.long	0x58
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x81b
	.uleb128 0x19
	.string	"str"
	.value	0x153
	.byte	0x1e
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF96
	.value	0x153
	.byte	0x2f
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF97
	.value	0x153
	.byte	0x3f
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.string	"a"
	.value	0x155
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF103
	.value	0x146
	.byte	0xb
	.long	0x58
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x878
	.uleb128 0x3
	.long	.LASF104
	.value	0x146
	.byte	0x19
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.long	.LASF96
	.value	0x146
	.byte	0x30
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF97
	.value	0x146
	.byte	0x40
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"c"
	.value	0x148
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF105
	.value	0x139
	.byte	0xb
	.long	0x58
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e5
	.uleb128 0x3
	.long	.LASF104
	.value	0x139
	.byte	0x16
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.long	.LASF91
	.value	0x139
	.byte	0x27
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.long	.LASF96
	.value	0x139
	.byte	0x3b
	.long	0xa0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.long	.LASF97
	.value	0x139
	.byte	0x4b
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"c"
	.value	0x13b
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x8
	.long	.LASF106
	.value	0x129
	.byte	0xb
	.long	0x58
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x933
	.uleb128 0x3
	.long	.LASF96
	.value	0x129
	.byte	0x21
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF97
	.value	0x129
	.byte	0x31
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.string	"c"
	.value	0x12b
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF107
	.value	0x11c
	.byte	0xb
	.long	0x58
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x991
	.uleb128 0x3
	.long	.LASF91
	.value	0x11c
	.byte	0x18
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.long	.LASF96
	.value	0x11c
	.byte	0x2c
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.long	.LASF97
	.value	0x11c
	.byte	0x3c
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xb
	.string	"c"
	.value	0x11e
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x8
	.long	.LASF108
	.value	0x10f
	.byte	0xe
	.long	0xb8
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xa1f
	.uleb128 0x19
	.string	"ptr"
	.value	0x10f
	.byte	0x23
	.long	0x389
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.long	.LASF109
	.value	0x10f
	.byte	0x2f
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.long	.LASF110
	.value	0x10f
	.byte	0x3c
	.long	0xb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.long	.LASF91
	.value	0x10f
	.byte	0x49
	.long	0x36b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.long	.LASF96
	.value	0x10f
	.byte	0x5d
	.long	0xa0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3
	.long	.LASF97
	.value	0x10f
	.byte	0x6d
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0xb
	.string	"a"
	.value	0x111
	.byte	0xc
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x8
	.long	.LASF111
	.value	0x102
	.byte	0x10
	.long	0x64
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xa7c
	.uleb128 0x3
	.long	.LASF91
	.value	0x102
	.byte	0x1e
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF96
	.value	0x102
	.byte	0x32
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF97
	.value	0x102
	.byte	0x42
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.string	"a"
	.value	0x104
	.byte	0xe
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	.LASF112
	.byte	0xf5
	.byte	0xb
	.long	0x58
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xae4
	.uleb128 0x2
	.long	.LASF91
	.byte	0xf5
	.byte	0x1b
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.string	"pos"
	.byte	0xf5
	.byte	0x2b
	.long	0x59e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF96
	.byte	0xf5
	.byte	0x3c
	.long	0xa0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.long	.LASF97
	.byte	0xf5
	.byte	0x4c
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xa
	.string	"a"
	.byte	0xf7
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x9
	.long	.LASF113
	.byte	0xe8
	.byte	0xb
	.long	0x58
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xb5a
	.uleb128 0x2
	.long	.LASF91
	.byte	0xe8
	.byte	0x19
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF114
	.byte	0xe8
	.byte	0x25
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.long	.LASF115
	.byte	0xe8
	.byte	0x31
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF96
	.byte	0xe8
	.byte	0x45
	.long	0xa0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.long	.LASF97
	.byte	0xe8
	.byte	0x55
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xa
	.string	"a"
	.byte	0xea
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x9
	.long	.LASF116
	.byte	0xd9
	.byte	0xd
	.long	0x36b
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xbd2
	.uleb128 0x2
	.long	.LASF93
	.byte	0xd9
	.byte	0x23
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF117
	.byte	0xd9
	.byte	0x39
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF91
	.byte	0xd9
	.byte	0x45
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF96
	.byte	0xd9
	.byte	0x59
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF97
	.byte	0xd9
	.byte	0x69
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.long	.LASF118
	.byte	0x1
	.byte	0xdb
	.byte	0xb
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	.LASF119
	.byte	0xca
	.byte	0xe
	.long	0xb8
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xc56
	.uleb128 0xe
	.string	"ptr"
	.byte	0xca
	.byte	0x1c
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF109
	.byte	0xca
	.byte	0x28
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF110
	.byte	0xca
	.byte	0x35
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF91
	.byte	0xca
	.byte	0x42
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF96
	.byte	0xca
	.byte	0x56
	.long	0xa0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.long	.LASF97
	.byte	0xca
	.byte	0x66
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xa
	.string	"a"
	.byte	0xcc
	.byte	0xc
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	.LASF120
	.byte	0xbd
	.byte	0xb
	.long	0x58
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xcbe
	.uleb128 0xe
	.string	"str"
	.byte	0xbd
	.byte	0x1f
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF91
	.byte	0xbd
	.byte	0x2a
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF96
	.byte	0xbd
	.byte	0x3e
	.long	0xa0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.long	.LASF97
	.byte	0xbd
	.byte	0x4e
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xa
	.string	"a"
	.byte	0xbf
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x9
	.long	.LASF121
	.byte	0xb0
	.byte	0xb
	.long	0x58
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xd25
	.uleb128 0x2
	.long	.LASF104
	.byte	0xb0
	.byte	0x17
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.long	.LASF91
	.byte	0xb0
	.byte	0x28
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF96
	.byte	0xb0
	.byte	0x3c
	.long	0xa0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.long	.LASF97
	.byte	0xb0
	.byte	0x4c
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.string	"c"
	.byte	0xb2
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x9
	.long	.LASF122
	.byte	0x6b
	.byte	0xd
	.long	0x36b
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xdc8
	.uleb128 0x2
	.long	.LASF123
	.byte	0x6b
	.byte	0x21
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF117
	.byte	0x6b
	.byte	0x33
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF96
	.byte	0x6b
	.byte	0x45
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF97
	.byte	0x6b
	.byte	0x55
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.long	.LASF99
	.byte	0x6b
	.byte	0x5f
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF100
	.byte	0x6b
	.byte	0x6b
	.long	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.long	.LASF101
	.byte	0x6b
	.byte	0x77
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xa
	.string	"a"
	.byte	0x71
	.byte	0xf
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF124
	.byte	0x5e
	.byte	0xd
	.long	0x8a
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xe3e
	.uleb128 0xe
	.string	"str"
	.byte	0x5e
	.byte	0x1b
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.string	"num"
	.byte	0x5e
	.byte	0x24
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.long	.LASF91
	.byte	0x5e
	.byte	0x2f
	.long	0x36b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.long	.LASF96
	.byte	0x5e
	.byte	0x43
	.long	0xa0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.long	.LASF97
	.byte	0x5e
	.byte	0x53
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.string	"a"
	.byte	0x60
	.byte	0xb
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x9
	.long	.LASF125
	.byte	0x51
	.byte	0xb
	.long	0x58
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xea6
	.uleb128 0x2
	.long	.LASF91
	.byte	0x51
	.byte	0x1b
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.string	"pos"
	.byte	0x51
	.byte	0x2b
	.long	0x59e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF96
	.byte	0x51
	.byte	0x3c
	.long	0xa0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.long	.LASF97
	.byte	0x51
	.byte	0x4c
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xa
	.string	"a"
	.byte	0x53
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x9
	.long	.LASF126
	.byte	0x44
	.byte	0xb
	.long	0x58
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xeff
	.uleb128 0x2
	.long	.LASF91
	.byte	0x44
	.byte	0x19
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF96
	.byte	0x44
	.byte	0x2d
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF97
	.byte	0x44
	.byte	0x3d
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.string	"c"
	.byte	0x46
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x27
	.long	.LASF128
	.byte	0x1
	.byte	0x34
	.byte	0xb
	.long	0x58
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF91
	.byte	0x34
	.byte	0x1a
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF96
	.byte	0x34
	.byte	0x2e
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF97
	.byte	0x34
	.byte	0x3e
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.string	"a"
	.byte	0x36
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x9
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
	.uleb128 0x18
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
	.uleb128 0xd
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
.LASF78:
	.string	"printf"
.LASF9:
	.string	"__off_t"
.LASF110:
	.string	"count"
.LASF7:
	.string	"short int"
.LASF29:
	.string	"_IO_read_ptr"
.LASF41:
	.string	"_chain"
.LASF65:
	.string	"access"
.LASF14:
	.string	"size_t"
.LASF47:
	.string	"_shortbuf"
.LASF91:
	.string	"stream"
.LASF123:
	.string	"path"
.LASF35:
	.string	"_IO_buf_base"
.LASF16:
	.string	"long long unsigned int"
.LASF38:
	.string	"_IO_backup_base"
.LASF125:
	.string	"fgetpos_c"
.LASF66:
	.string	"remove"
.LASF22:
	.string	"__mbstate_t"
.LASF50:
	.string	"_codecvt"
.LASF73:
	.string	"fseek"
.LASF15:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF126:
	.string	"fgetc_c"
.LASF42:
	.string	"_fileno"
.LASF30:
	.string	"_IO_read_end"
.LASF8:
	.string	"long int"
.LASF28:
	.string	"_flags"
.LASF51:
	.string	"_wide_data"
.LASF111:
	.string	"ftell_c"
.LASF45:
	.string	"_cur_column"
.LASF68:
	.string	"putchar"
.LASF59:
	.string	"_IO_codecvt"
.LASF121:
	.string	"fputc_c"
.LASF13:
	.string	"double"
.LASF44:
	.string	"_old_offset"
.LASF49:
	.string	"_offset"
.LASF26:
	.string	"_G_fpos_t"
.LASF97:
	.string	"line"
.LASF124:
	.string	"fgets_c"
.LASF23:
	.string	"__pos"
.LASF100:
	.string	"st__if"
.LASF129:
	.string	"GNU C17 12.2.1 20220819 (Red Hat 12.2.1-1) -mtune=generic -march=x86-64 -g"
.LASF58:
	.string	"_IO_marker"
.LASF62:
	.string	"stdin"
.LASF119:
	.string	"fread_c"
.LASF19:
	.string	"__wchb"
.LASF70:
	.string	"getc"
.LASF89:
	.string	"fprintf"
.LASF120:
	.string	"fputs_c"
.LASF5:
	.string	"long unsigned int"
.LASF83:
	.string	"ferror"
.LASF33:
	.string	"_IO_write_ptr"
.LASF109:
	.string	"size"
.LASF3:
	.string	"short unsigned int"
.LASF102:
	.string	"puts_c"
.LASF37:
	.string	"_IO_save_base"
.LASF18:
	.string	"__wch"
.LASF84:
	.string	"fgetc"
.LASF74:
	.string	"freopen"
.LASF48:
	.string	"_lock"
.LASF43:
	.string	"_flags2"
.LASF55:
	.string	"_mode"
.LASF81:
	.string	"fgets"
.LASF69:
	.string	"putc"
.LASF63:
	.string	"stdout"
.LASF53:
	.string	"_freeres_buf"
.LASF101:
	.string	"st__re"
.LASF131:
	.string	"perror"
.LASF67:
	.string	"puts"
.LASF104:
	.string	"character"
.LASF93:
	.string	"filename"
.LASF34:
	.string	"_IO_write_end"
.LASF77:
	.string	"fputc"
.LASF130:
	.string	"_IO_lock_t"
.LASF27:
	.string	"_IO_FILE"
.LASF76:
	.string	"fputs"
.LASF118:
	.string	"stream_out"
.LASF25:
	.string	"__fpos_t"
.LASF12:
	.string	"float"
.LASF128:
	.string	"fclose_c"
.LASF79:
	.string	"fflush"
.LASF40:
	.string	"_markers"
.LASF24:
	.string	"__state"
.LASF75:
	.string	"fread"
.LASF2:
	.string	"unsigned char"
.LASF108:
	.string	"fwrite_c"
.LASF94:
	.string	"or_ist_"
.LASF36:
	.string	"_IO_buf_end"
.LASF92:
	.string	"info"
.LASF96:
	.string	"file"
.LASF106:
	.string	"getchar_c"
.LASF46:
	.string	"_vtable_offset"
.LASF57:
	.string	"FILE"
.LASF85:
	.string	"exit"
.LASF122:
	.string	"fopen_c"
.LASF115:
	.string	"endSet"
.LASF20:
	.string	"__count"
.LASF21:
	.string	"__value"
.LASF113:
	.string	"fseek_c"
.LASF17:
	.string	"long double"
.LASF11:
	.string	"char"
.LASF117:
	.string	"mode"
.LASF4:
	.string	"unsigned int"
.LASF112:
	.string	"fsetpos_c"
.LASF61:
	.string	"fpos_t"
.LASF72:
	.string	"fsetpos"
.LASF80:
	.string	"fopen"
.LASF103:
	.string	"putchar_c"
.LASF88:
	.string	"__errno_location"
.LASF90:
	.string	"fclose"
.LASF10:
	.string	"__off64_t"
.LASF114:
	.string	"offset"
.LASF31:
	.string	"_IO_read_base"
.LASF39:
	.string	"_IO_save_end"
.LASF87:
	.string	"getchar"
.LASF107:
	.string	"getc_c"
.LASF99:
	.string	"st__mo"
.LASF54:
	.string	"__pad5"
.LASF56:
	.string	"_unused2"
.LASF64:
	.string	"stderr"
.LASF116:
	.string	"freopen_c"
.LASF105:
	.string	"putc_c"
.LASF127:
	.string	"prpos_"
.LASF71:
	.string	"fwrite"
.LASF52:
	.string	"_freeres_list"
.LASF60:
	.string	"_IO_wide_data"
.LASF95:
	.string	"is_ist_c"
.LASF86:
	.string	"ftell"
.LASF98:
	.string	"remove_\321\201"
.LASF82:
	.string	"fgetpos"
.LASF32:
	.string	"_IO_write_base"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs"
.LASF0:
	.string	"lib/io_1.c"
	.ident	"GCC: (GNU) 12.2.1 20220819 (Red Hat 12.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
