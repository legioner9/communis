	.file	"io_1.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"failed in file %s at line # %d\n"
	.align 8
.LC1:
	.string	"from fclose_s ftell(stream) = %ld, errno = %d\n"
.LC2:
	.string	"exit(errno) with"
	.text
	.globl	fclose_c
	.type	fclose_c, @function
fclose_c:
.LFB6:
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.L2
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
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
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L2:
	movl	-20(%rbp), %eax
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ferror
	testl	%eax, %eax
	je	.L5
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
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
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L5:
	movl	-20(%rbp), %eax
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
	.string	"from fgetpos_c ftell(stream) = %ld, pos = %d, errno = %d\n"
	.text
	.globl	fgetpos_c
	.type	fgetpos_c, @function
fgetpos_c:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fgetpos
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L8
	movq	stderr(%rip), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
	movl	(%rax), %ebx
	movq	-48(%rbp), %rax
	movl	%eax, %r12d
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movl	%ebx, %r8d
	movl	%r12d, %ecx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L8:
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
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
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fgets
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L11
	movq	stderr(%rip), %rax
	movl	-48(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
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
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L11:
	movq	-24(%rbp), %rax
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
	.string	"from fopen_s path = %s, mode = %s, errno = %d\n"
	.text
	.globl	fopen_c
	.type	fopen_c, @function
fopen_c:
.LFB10:
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
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L14
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	%esi, %r8d
	movl	$.LC6, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L14:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	fopen_c, .-fopen_c
	.section	.rodata
	.align 8
.LC7:
	.string	"from fputc_c ftell(stream) = %ld, character = %d, errno = %d\n"
	.text
	.globl	fputc_c
	.type	fputc_c, @function
fputc_c:
.LFB11:
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
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc
	movl	%eax, -20(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.L17
	movq	stderr(%rip), %rax
	movl	-40(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
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
	movl	$.LC7, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L17:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	fputc_c, .-fputc_c
	.section	.rodata
	.align 8
.LC8:
	.string	"from fputs_s ftell(stream) = %ld,  str = %s errno = %d\n"
	.text
	.globl	fputs_c
	.type	fputs_c, @function
fputs_c:
.LFB12:
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
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.L20
	movq	stderr(%rip), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
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
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L20:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	fputs_c, .-fputs_c
	.section	.rodata
	.align 8
.LC9:
	.string	"from fread_c size = %d,count = %d errno = %d\n"
	.text
	.globl	fread_c
	.type	fread_c, @function
fread_c:
.LFB13:
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
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fread
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.L23
	movq	stderr(%rip), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%esi, %r8d
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L23:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	fread_c, .-fread_c
	.section	.rodata
	.align 8
.LC10:
	.string	"from freopen_s filename = %s, mode = %s, errno = %d\n"
	.text
	.globl	freopen_c
	.type	freopen_c, @function
freopen_c:
.LFB14:
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
	cmpq	$0, -40(%rbp)
	jne	.L26
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	%esi, %r8d
	movl	$.LC10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L26:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	freopen_c, .-freopen_c
	.section	.rodata
	.align 8
.LC11:
	.string	"from fseek_s ftell(stream) = %ld, offset = %d, errno = %d\n"
	.text
	.globl	fseek_c
	.type	fseek_c, @function
fseek_c:
.LFB15:
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
	movl	-44(%rbp), %eax
	movslq	%eax, %rcx
	movl	-48(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L29
	movq	stderr(%rip), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
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
	movl	$.LC11, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L29:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	fseek_c, .-fseek_c
	.section	.rodata
	.align 8
.LC12:
	.string	"from fsetpos_c ftell(stream) = %ld, pos = %d, errno = %d\n"
	.text
	.globl	fsetpos_c
	.type	fsetpos_c, @function
fsetpos_c:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fsetpos
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L32
	movq	stderr(%rip), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
	movl	(%rax), %ebx
	movq	-48(%rbp), %rax
	movl	%eax, %r12d
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movl	%ebx, %r8d
	movl	%r12d, %ecx
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L32:
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	fsetpos_c, .-fsetpos_c
	.section	.rodata
.LC13:
	.string	"from ftell_s errno = %d\n"
	.text
	.globl	ftell_c
	.type	ftell_c, @function
ftell_c:
.LFB17:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, -8(%rbp)
	cmpq	$-1, -8(%rbp)
	jne	.L35
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L35:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ftell_c, .-ftell_c
	.section	.rodata
	.align 8
.LC14:
	.string	"from fwrite_c ftell(stream) = %ld,size = %d,count = %d errno = %d\n"
	.text
	.globl	fwrite_c
	.type	fwrite_c, @function
fwrite_c:
.LFB18:
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
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fwrite
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ferror
	testl	%eax, %eax
	je	.L38
	movq	stderr(%rip), %rax
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
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
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L38:
	movq	-24(%rbp), %rax
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	getc
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ferror
	testl	%eax, %eax
	je	.L41
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
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
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L41:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	getc_c, .-getc_c
	.section	.rodata
.LC15:
	.string	"from getchar_c errno = %d\n"
	.text
	.globl	getchar_c
	.type	getchar_c, @function
getchar_c:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	call	getchar
	movl	%eax, -4(%rbp)
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	ferror
	testl	%eax, %eax
	je	.L44
	movq	stderr(%rip), %rax
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L44:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	getchar_c, .-getchar_c
	.section	.rodata
	.align 8
.LC16:
	.string	"from putc_c ftell(stream) = %ld, character = %d, errno = %d\n"
	.text
	.globl	putc_c
	.type	putc_c, @function
putc_c:
.LFB21:
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
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	putc
	movl	%eax, -20(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.L47
	movq	stderr(%rip), %rax
	movl	-40(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
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
	movl	$.LC16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L47:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	putc_c, .-putc_c
	.section	.rodata
	.align 8
.LC17:
	.string	"from putchar_c character = %d, errno = %d\n"
	.text
	.globl	putchar_c
	.type	putchar_c, @function
putchar_c:
.LFB22:
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
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	je	.L50
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC17, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L50:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	putchar_c, .-putchar_c
	.section	.rodata
	.align 8
.LC18:
	.string	"from puts_s str = %s errno = %d\n"
	.text
	.globl	puts_c
	.type	puts_c, @function
puts_c:
.LFB23:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L53
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L53:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	puts_c, .-puts_c
	.section	.rodata
	.align 8
.LC19:
	.string	"from remove_c filename = %s, errno = %d\n"
	.text
	.globl	remove_c
	.type	remove_c, @function
remove_c:
.LFB24:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	remove
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L56
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC19, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L56:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	remove_c, .-remove_c
	.section	.rodata
	.align 8
.LC20:
	.string	"from is_ist_c filename = %s, errno = %d\n"
	.text
	.globl	is_ist_c
	.type	is_ist_c, @function
is_ist_c:
.LFB25:
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
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	access
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L59
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	__errno_location
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC20, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$.LC2, %edi
	call	perror
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L59:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	is_ist_c, .-is_ist_c
	.globl	or_ist_c
	.type	or_ist_c, @function
or_ist_c:
.LFB26:
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
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	access
	cmpl	$-1, %eax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	or_ist_c, .-or_ist_c
	.section	.rodata
.LC21:
	.string	"\ninfo:%s, ftell(stream) = %d\n"
	.text
	.globl	prpos_
	.type	prpos_, @function
prpos_:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC21, %edi
	movl	$0, %eax
	call	printf
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	prpos_, .-prpos_
	.ident	"GCC: (GNU) 11.2.1 20220127 (Red Hat 11.2.1-9)"
	.section	.note.GNU-stack,"",@progbits
