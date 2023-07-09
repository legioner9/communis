	.file	"io_1.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_v.cplus/13_stdarg_h/1_macros/1_va_arg/cplus_cpjs" "lib/io_1.c"
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
	.file 1 "lib/io_1.c"
	.loc 1 30 1
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
	.loc 1 31 14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	%eax, -20(%rbp)
	.loc 1 32 8
	cmpl	$-1, -20(%rbp)
	jne	.L2
	.loc 1 34 9
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 35 91
	call	__errno_location
	.loc 1 35 9
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
	.loc 1 36 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 37 14
	call	__errno_location
	.loc 1 37 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L2:
	.loc 1 39 12
	movl	-20(%rbp), %eax
	.loc 1 40 1
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
	.loc 1 46 1
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
	.loc 1 47 13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc
	movl	%eax, -20(%rbp)
	.loc 1 48 9
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ferror
	.loc 1 48 8
	testl	%eax, %eax
	je	.L5
	.loc 1 50 9
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 51 90
	call	__errno_location
	.loc 1 51 9
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
	.loc 1 52 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 53 14
	call	__errno_location
	.loc 1 53 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L5:
	.loc 1 55 12
	movl	-20(%rbp), %eax
	.loc 1 56 1
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
	.string	"from fgetpos_c ftell(stream) = %ld, pos = %ld, errno = %d\n"
	.text
	.globl	fgetpos_c
	.type	fgetpos_c, @function
fgetpos_c:
.LFB8:
	.loc 1 59 1
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
	.loc 1 60 13
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fgetpos
	movl	%eax, -20(%rbp)
	.loc 1 61 8
	cmpl	$0, -20(%rbp)
	je	.L8
	.loc 1 63 9
	movq	stderr(%rip), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 64 108
	call	__errno_location
	.loc 1 64 9
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
	.loc 1 65 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 66 14
	call	__errno_location
	.loc 1 66 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L8:
	.loc 1 68 12
	movl	-20(%rbp), %eax
	.loc 1 69 1
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
	.loc 1 72 1
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
	.loc 1 73 15
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fgets
	movq	%rax, -24(%rbp)
	.loc 1 74 8
	cmpq	$0, -24(%rbp)
	jne	.L11
	.loc 1 76 9
	movq	stderr(%rip), %rax
	movl	-48(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 77 120
	call	__errno_location
	.loc 1 77 9
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
	.loc 1 78 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 79 14
	call	__errno_location
	.loc 1 79 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L11:
	.loc 1 81 12
	movq	-24(%rbp), %rax
	.loc 1 82 1
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
	.loc 1 85 1
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
	.loc 1 86 20
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -8(%rbp)
	.loc 1 87 8
	cmpq	$0, -8(%rbp)
	jne	.L14
	.loc 1 90 9
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 91 88
	call	__errno_location
	.loc 1 91 9
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	%esi, %r8d
	movl	$.LC6, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 92 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 93 14
	call	__errno_location
	.loc 1 93 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L14:
	.loc 1 96 12
	movq	-8(%rbp), %rax
	.loc 1 97 1
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
	.loc 1 101 1
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
	.loc 1 102 13
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc
	movl	%eax, -20(%rbp)
	.loc 1 103 8
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.L17
	.loc 1 105 9
	movq	stderr(%rip), %rax
	movl	-40(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 106 117
	call	__errno_location
	.loc 1 106 9
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
	.loc 1 107 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 108 14
	call	__errno_location
	.loc 1 108 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L17:
	.loc 1 110 12
	movl	-20(%rbp), %eax
	.loc 1 111 1
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
	.loc 1 114 1
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
	.loc 1 115 13
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs
	movl	%eax, -20(%rbp)
	.loc 1 116 8
	cmpl	$-1, -20(%rbp)
	jne	.L20
	.loc 1 118 9
	movq	stderr(%rip), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 119 105
	call	__errno_location
	.loc 1 119 9
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
	.loc 1 120 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 121 14
	call	__errno_location
	.loc 1 121 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L20:
	.loc 1 123 12
	movl	-20(%rbp), %eax
	.loc 1 124 1
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
	.string	"from fread_c size = %ld,count = %ld errno = %d\n"
	.text
	.globl	fread_c
	.type	fread_c, @function
fread_c:
.LFB13:
	.loc 1 127 1
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
	.loc 1 128 16
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fread
	movq	%rax, -8(%rbp)
	.loc 1 129 8
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.L23
	.loc 1 131 9
	movq	stderr(%rip), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 133 90
	call	__errno_location
	.loc 1 133 9
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%esi, %r8d
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 135 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 136 14
	call	__errno_location
	.loc 1 136 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L23:
	.loc 1 138 12
	movq	-8(%rbp), %rax
	.loc 1 139 1
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
	.loc 1 142 1
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
	.loc 1 144 8
	cmpq	$0, -40(%rbp)
	jne	.L26
	.loc 1 147 9
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 148 98
	call	__errno_location
	.loc 1 148 9
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	%esi, %r8d
	movl	$.LC10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 149 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 150 14
	call	__errno_location
	.loc 1 150 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L26:
	.loc 1 153 12
	movq	-8(%rbp), %rax
	.loc 1 154 1
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
	.loc 1 158 1
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
	.loc 1 159 13
	movl	-44(%rbp), %eax
	movslq	%eax, %rcx
	movl	-48(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek
	movl	%eax, -20(%rbp)
	.loc 1 160 8
	cmpl	$0, -20(%rbp)
	je	.L29
	.loc 1 162 9
	movq	stderr(%rip), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 163 111
	call	__errno_location
	.loc 1 163 9
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
	.loc 1 164 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 165 14
	call	__errno_location
	.loc 1 165 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L29:
	.loc 1 167 12
	movl	-20(%rbp), %eax
	.loc 1 168 1
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
	.string	"from fsetpos_c ftell(stream) = %ld, pos = %ld, errno = %d\n"
	.text
	.globl	fsetpos_c
	.type	fsetpos_c, @function
fsetpos_c:
.LFB16:
	.loc 1 171 1
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
	.loc 1 172 13
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fsetpos
	movl	%eax, -20(%rbp)
	.loc 1 173 8
	cmpl	$0, -20(%rbp)
	je	.L32
	.loc 1 175 9
	movq	stderr(%rip), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 176 108
	call	__errno_location
	.loc 1 176 9
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
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 177 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 178 14
	call	__errno_location
	.loc 1 178 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L32:
	.loc 1 180 12
	movl	-20(%rbp), %eax
	.loc 1 181 1
	movq	-8(%rbp), %rbx
	leave
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
	.loc 1 184 1
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
	.loc 1 185 18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, -8(%rbp)
	.loc 1 186 8
	cmpq	$-1, -8(%rbp)
	jne	.L35
	.loc 1 188 9
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 189 54
	call	__errno_location
	.loc 1 189 9
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 190 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 191 14
	call	__errno_location
	.loc 1 191 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L35:
	.loc 1 193 12
	movq	-8(%rbp), %rax
	.loc 1 194 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ftell_c, .-ftell_c
	.section	.rodata
	.align 8
.LC14:
	.string	"from fwrite_c ftell(stream) = %ld,size = %ld,count = %ld errno = %d\n"
	.text
	.globl	fwrite_c
	.type	fwrite_c, @function
fwrite_c:
.LFB18:
	.loc 1 197 1
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
	.loc 1 198 16
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fwrite
	movq	%rax, -24(%rbp)
	.loc 1 199 9
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ferror
	.loc 1 199 8
	testl	%eax, %eax
	je	.L38
	.loc 1 201 9
	movq	stderr(%rip), %rax
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 202 126
	call	__errno_location
	.loc 1 202 9
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
	.loc 1 203 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 204 14
	call	__errno_location
	.loc 1 204 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L38:
	.loc 1 206 12
	movq	-24(%rbp), %rax
	.loc 1 207 1
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
	.loc 1 210 1
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
	.loc 1 211 13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	getc
	movl	%eax, -20(%rbp)
	.loc 1 212 9
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ferror
	.loc 1 212 8
	testl	%eax, %eax
	je	.L41
	.loc 1 214 9
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 215 90
	call	__errno_location
	.loc 1 215 9
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
	.loc 1 216 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 217 14
	call	__errno_location
	.loc 1 217 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L41:
	.loc 1 219 12
	movl	-20(%rbp), %eax
	.loc 1 220 1
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
	.loc 1 223 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 224 13
	call	getchar
	movl	%eax, -4(%rbp)
	.loc 1 225 9
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	ferror
	.loc 1 225 8
	testl	%eax, %eax
	je	.L44
	.loc 1 227 9
	movq	stderr(%rip), %rax
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 228 56
	call	__errno_location
	.loc 1 228 9
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 229 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 230 14
	call	__errno_location
	.loc 1 230 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L44:
	.loc 1 232 12
	movl	-4(%rbp), %eax
	.loc 1 233 1
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
	.loc 1 239 1
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
	.loc 1 240 13
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	putc
	movl	%eax, -20(%rbp)
	.loc 1 241 8
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.L47
	.loc 1 243 9
	movq	stderr(%rip), %rax
	movl	-40(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 244 116
	call	__errno_location
	.loc 1 244 9
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
	.loc 1 245 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 246 14
	call	__errno_location
	.loc 1 246 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L47:
	.loc 1 248 12
	movl	-20(%rbp), %eax
	.loc 1 249 1
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
	.loc 1 252 1
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
	.loc 1 253 13
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	movl	%eax, -4(%rbp)
	.loc 1 254 8
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	je	.L50
	.loc 1 256 9
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 257 83
	call	__errno_location
	.loc 1 257 9
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC17, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 258 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 259 14
	call	__errno_location
	.loc 1 259 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L50:
	.loc 1 261 12
	movl	-4(%rbp), %eax
	.loc 1 262 1
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
	.loc 1 265 1
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
	.loc 1 266 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	movl	%eax, -4(%rbp)
	.loc 1 267 8
	cmpl	$-1, -4(%rbp)
	jne	.L53
	.loc 1 269 9
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 270 67
	call	__errno_location
	.loc 1 270 9
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 271 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 272 14
	call	__errno_location
	.loc 1 272 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L53:
	.loc 1 274 12
	movl	-4(%rbp), %eax
	.loc 1 275 1
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
	.loc 1 278 1
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
	.loc 1 279 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	remove
	movl	%eax, -4(%rbp)
	.loc 1 280 8
	cmpl	$0, -4(%rbp)
	je	.L56
	.loc 1 282 9
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 283 80
	call	__errno_location
	.loc 1 283 9
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC19, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 284 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 285 14
	call	__errno_location
	.loc 1 285 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L56:
	.loc 1 287 12
	movl	-4(%rbp), %eax
	.loc 1 288 1
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
	.loc 1 309 1
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
	.loc 1 310 13
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	access
	movl	%eax, -4(%rbp)
	.loc 1 311 8
	cmpl	$-1, -4(%rbp)
	jne	.L59
	.loc 1 313 9
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 314 80
	call	__errno_location
	.loc 1 314 9
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC20, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 315 9
	movl	$.LC2, %edi
	call	perror
	.loc 1 316 14
	call	__errno_location
	.loc 1 316 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L59:
	.loc 1 318 12
	movl	-4(%rbp), %eax
	.loc 1 319 1
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
	.loc 1 322 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 323 13
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	access
	.loc 1 323 33
	cmpl	$-1, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 1 324 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	or_ist_, .-or_ist_
	.section	.rodata
	.align 8
.LC21:
	.string	"\ninfo:%s, ftell(stream) = %ld\n"
	.text
	.globl	prpos_
	.type	prpos_, @function
prpos_:
.LFB27:
	.loc 1 327 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 328 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC21, %edi
	movl	$0, %eax
	call	printf
	.loc 1 329 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	prpos_, .-prpos_
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-redhat-linux/11/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
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
	.long	0xe68
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x19
	.long	.LASF122
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xa
	.long	.LASF9
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.long	0x3a
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x1a
	.byte	0x8
	.uleb128 0xc
	.long	0x48
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xe
	.long	0x6b
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0xa
	.long	.LASF10
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x77
	.uleb128 0xa
	.long	.LASF11
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x77
	.uleb128 0x8
	.long	0xa0
	.uleb128 0xc
	.long	0x96
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0xe
	.long	0xa0
	.uleb128 0x1c
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.long	0xcc
	.uleb128 0x14
	.long	.LASF13
	.byte	0x12
	.byte	0x13
	.long	0x41
	.uleb128 0x14
	.long	.LASF14
	.byte	0x13
	.byte	0xa
	.long	0xcc
	.byte	0
	.uleb128 0xf
	.long	0xa0
	.long	0xdc
	.uleb128 0x10
	.long	0x3a
	.byte	0x3
	.byte	0
	.uleb128 0x1d
	.byte	0x8
	.byte	0x4
	.byte	0xd
	.byte	0x9
	.long	0x100
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0xf
	.byte	0x7
	.long	0x6b
	.byte	0
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x14
	.byte	0x5
	.long	0xac
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.byte	0x15
	.byte	0x3
	.long	0xdc
	.uleb128 0x15
	.long	.LASF21
	.byte	0x10
	.byte	0x5
	.byte	0xa
	.byte	0x10
	.long	0x134
	.uleb128 0x3
	.long	.LASF18
	.byte	0x5
	.byte	0xc
	.byte	0xb
	.long	0x7e
	.byte	0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0xd
	.byte	0xf
	.long	0x100
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0xe
	.byte	0x3
	.long	0x10c
	.uleb128 0x15
	.long	.LASF22
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x2c7
	.uleb128 0x3
	.long	.LASF23
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x6b
	.byte	0
	.uleb128 0x3
	.long	.LASF24
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x96
	.byte	0x8
	.uleb128 0x3
	.long	.LASF25
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0x96
	.byte	0x10
	.uleb128 0x3
	.long	.LASF26
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0x96
	.byte	0x18
	.uleb128 0x3
	.long	.LASF27
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0x96
	.byte	0x20
	.uleb128 0x3
	.long	.LASF28
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0x96
	.byte	0x28
	.uleb128 0x3
	.long	.LASF29
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0x96
	.byte	0x30
	.uleb128 0x3
	.long	.LASF30
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0x96
	.byte	0x38
	.uleb128 0x3
	.long	.LASF31
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x96
	.byte	0x40
	.uleb128 0x3
	.long	.LASF32
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0x96
	.byte	0x48
	.uleb128 0x3
	.long	.LASF33
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0x96
	.byte	0x50
	.uleb128 0x3
	.long	.LASF34
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0x96
	.byte	0x58
	.uleb128 0x3
	.long	.LASF35
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x2e0
	.byte	0x60
	.uleb128 0x3
	.long	.LASF36
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x2e5
	.byte	0x68
	.uleb128 0x3
	.long	.LASF37
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x6b
	.byte	0x70
	.uleb128 0x3
	.long	.LASF38
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x6b
	.byte	0x74
	.uleb128 0x3
	.long	.LASF39
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0x7e
	.byte	0x78
	.uleb128 0x3
	.long	.LASF40
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x56
	.byte	0x80
	.uleb128 0x3
	.long	.LASF41
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x5d
	.byte	0x82
	.uleb128 0x3
	.long	.LASF42
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x2ea
	.byte	0x83
	.uleb128 0x3
	.long	.LASF43
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x2fa
	.byte	0x88
	.uleb128 0x3
	.long	.LASF44
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0x8a
	.byte	0x90
	.uleb128 0x3
	.long	.LASF45
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x304
	.byte	0x98
	.uleb128 0x3
	.long	.LASF46
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x30e
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF47
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x2e5
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF48
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x48
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF49
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x2e
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF50
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x6b
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF51
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x313
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF52
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0x140
	.uleb128 0x1e
	.long	.LASF123
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF53
	.uleb128 0x8
	.long	0x2db
	.uleb128 0x8
	.long	0x140
	.uleb128 0xf
	.long	0xa0
	.long	0x2fa
	.uleb128 0x10
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x2d3
	.uleb128 0x11
	.long	.LASF54
	.uleb128 0x8
	.long	0x2ff
	.uleb128 0x11
	.long	.LASF55
	.uleb128 0x8
	.long	0x309
	.uleb128 0xf
	.long	0xa0
	.long	0x323
	.uleb128 0x10
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.long	.LASF56
	.byte	0x8
	.byte	0x54
	.byte	0x12
	.long	0x134
	.uleb128 0xe
	.long	0x323
	.uleb128 0x16
	.long	.LASF57
	.byte	0x89
	.long	0x33e
	.uleb128 0x8
	.long	0x2c7
	.uleb128 0xc
	.long	0x33e
	.uleb128 0x16
	.long	.LASF58
	.byte	0x8b
	.long	0x33e
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF59
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF60
	.uleb128 0x8
	.long	0x36a
	.uleb128 0xc
	.long	0x360
	.uleb128 0x1f
	.uleb128 0x8
	.long	0xa7
	.uleb128 0xc
	.long	0x36b
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.long	.LASF61
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.long	.LASF62
	.uleb128 0x4
	.long	.LASF63
	.byte	0x8
	.value	0x15e
	.byte	0xc
	.long	0x6b
	.long	0x39b
	.uleb128 0x2
	.long	0x36b
	.uleb128 0x17
	.byte	0
	.uleb128 0x4
	.long	.LASF64
	.byte	0x9
	.value	0x11f
	.byte	0xc
	.long	0x6b
	.long	0x3b7
	.uleb128 0x2
	.long	0x36b
	.uleb128 0x2
	.long	0x6b
	.byte	0
	.uleb128 0x12
	.long	.LASF65
	.byte	0x92
	.byte	0xc
	.long	0x6b
	.long	0x3cc
	.uleb128 0x2
	.long	0x36b
	.byte	0
	.uleb128 0x4
	.long	.LASF66
	.byte	0x8
	.value	0x28f
	.byte	0xc
	.long	0x6b
	.long	0x3e3
	.uleb128 0x2
	.long	0x36b
	.byte	0
	.uleb128 0x4
	.long	.LASF67
	.byte	0x8
	.value	0x226
	.byte	0xc
	.long	0x6b
	.long	0x3fa
	.uleb128 0x2
	.long	0x6b
	.byte	0
	.uleb128 0x4
	.long	.LASF68
	.byte	0x8
	.value	0x220
	.byte	0xc
	.long	0x6b
	.long	0x416
	.uleb128 0x2
	.long	0x6b
	.uleb128 0x2
	.long	0x33e
	.byte	0
	.uleb128 0x20
	.long	.LASF83
	.byte	0x8
	.value	0x202
	.byte	0xc
	.long	0x6b
	.uleb128 0x4
	.long	.LASF69
	.byte	0x8
	.value	0x1fc
	.byte	0xc
	.long	0x6b
	.long	0x43a
	.uleb128 0x2
	.long	0x33e
	.byte	0
	.uleb128 0x4
	.long	.LASF70
	.byte	0x8
	.value	0x2a3
	.byte	0xf
	.long	0x2e
	.long	0x460
	.uleb128 0x2
	.long	0x365
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x343
	.byte	0
	.uleb128 0x4
	.long	.LASF71
	.byte	0x8
	.value	0x2f7
	.byte	0xc
	.long	0x6b
	.long	0x47c
	.uleb128 0x2
	.long	0x33e
	.uleb128 0x2
	.long	0x47c
	.byte	0
	.uleb128 0x8
	.long	0x32f
	.uleb128 0x4
	.long	.LASF72
	.byte	0x8
	.value	0x2c3
	.byte	0xc
	.long	0x6b
	.long	0x4a2
	.uleb128 0x2
	.long	0x33e
	.uleb128 0x2
	.long	0x77
	.uleb128 0x2
	.long	0x6b
	.byte	0
	.uleb128 0x4
	.long	.LASF73
	.byte	0x8
	.value	0x29d
	.byte	0xf
	.long	0x2e
	.long	0x4c8
	.uleb128 0x2
	.long	0x4a
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x343
	.byte	0
	.uleb128 0x4
	.long	.LASF74
	.byte	0x8
	.value	0x289
	.byte	0xc
	.long	0x6b
	.long	0x4e4
	.uleb128 0x2
	.long	0x370
	.uleb128 0x2
	.long	0x343
	.byte	0
	.uleb128 0x4
	.long	.LASF75
	.byte	0x8
	.value	0x21f
	.byte	0xc
	.long	0x6b
	.long	0x500
	.uleb128 0x2
	.long	0x6b
	.uleb128 0x2
	.long	0x33e
	.byte	0
	.uleb128 0x12
	.long	.LASF76
	.byte	0xfc
	.byte	0xe
	.long	0x33e
	.long	0x51a
	.uleb128 0x2
	.long	0x370
	.uleb128 0x2
	.long	0x370
	.byte	0
	.uleb128 0x4
	.long	.LASF77
	.byte	0x8
	.value	0x24a
	.byte	0xe
	.long	0x96
	.long	0x53b
	.uleb128 0x2
	.long	0x9b
	.uleb128 0x2
	.long	0x6b
	.uleb128 0x2
	.long	0x343
	.byte	0
	.uleb128 0x4
	.long	.LASF78
	.byte	0x8
	.value	0x2f2
	.byte	0xc
	.long	0x6b
	.long	0x557
	.uleb128 0x2
	.long	0x343
	.uleb128 0x2
	.long	0x55c
	.byte	0
	.uleb128 0x8
	.long	0x323
	.uleb128 0xc
	.long	0x557
	.uleb128 0x4
	.long	.LASF79
	.byte	0x8
	.value	0x310
	.byte	0xc
	.long	0x6b
	.long	0x578
	.uleb128 0x2
	.long	0x33e
	.byte	0
	.uleb128 0x4
	.long	.LASF80
	.byte	0x8
	.value	0x1fb
	.byte	0xc
	.long	0x6b
	.long	0x58f
	.uleb128 0x2
	.long	0x33e
	.byte	0
	.uleb128 0x21
	.long	.LASF81
	.byte	0xa
	.value	0x26e
	.byte	0xd
	.long	0x5a2
	.uleb128 0x2
	.long	0x6b
	.byte	0
	.uleb128 0x22
	.long	.LASF124
	.byte	0x8
	.value	0x31e
	.byte	0xd
	.long	0x5b5
	.uleb128 0x2
	.long	0x36b
	.byte	0
	.uleb128 0x4
	.long	.LASF82
	.byte	0x8
	.value	0x2c8
	.byte	0x11
	.long	0x77
	.long	0x5cc
	.uleb128 0x2
	.long	0x33e
	.byte	0
	.uleb128 0x23
	.long	.LASF84
	.byte	0xb
	.byte	0x25
	.byte	0xd
	.long	0x5d8
	.uleb128 0x8
	.long	0x6b
	.uleb128 0x4
	.long	.LASF85
	.byte	0x8
	.value	0x158
	.byte	0xc
	.long	0x6b
	.long	0x5fa
	.uleb128 0x2
	.long	0x343
	.uleb128 0x2
	.long	0x370
	.uleb128 0x17
	.byte	0
	.uleb128 0x12
	.long	.LASF86
	.byte	0xac
	.byte	0xc
	.long	0x6b
	.long	0x60f
	.uleb128 0x2
	.long	0x33e
	.byte	0
	.uleb128 0x24
	.long	.LASF120
	.byte	0x1
	.value	0x146
	.byte	0xc
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x64d
	.uleb128 0x9
	.long	.LASF87
	.value	0x146
	.byte	0x19
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF88
	.value	0x146
	.byte	0x2d
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xd
	.long	.LASF90
	.value	0x141
	.long	0x6b
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x67e
	.uleb128 0x9
	.long	.LASF89
	.value	0x141
	.byte	0x1f
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	.LASF91
	.value	0x134
	.long	0x6b
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d9
	.uleb128 0x9
	.long	.LASF89
	.value	0x134
	.byte	0x20
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF92
	.value	0x134
	.byte	0x36
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.long	.LASF93
	.value	0x134
	.byte	0x46
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.string	"a"
	.value	0x136
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.long	.LASF94
	.value	0x115
	.long	0x6b
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x734
	.uleb128 0x9
	.long	.LASF89
	.value	0x115
	.byte	0x20
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF92
	.value	0x115
	.byte	0x36
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.long	.LASF93
	.value	0x115
	.byte	0x46
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.string	"a"
	.value	0x117
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.long	.LASF95
	.value	0x108
	.long	0x6b
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x790
	.uleb128 0x25
	.string	"str"
	.byte	0x1
	.value	0x108
	.byte	0x1e
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF92
	.value	0x108
	.byte	0x2f
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.long	.LASF93
	.value	0x108
	.byte	0x3f
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.string	"a"
	.value	0x10a
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.long	.LASF96
	.byte	0xfb
	.byte	0xb
	.long	0x6b
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x7e8
	.uleb128 0x1
	.long	.LASF97
	.byte	0xfb
	.byte	0x19
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.long	.LASF92
	.byte	0xfb
	.byte	0x30
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF93
	.byte	0xfb
	.byte	0x40
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"c"
	.byte	0xfd
	.byte	0x9
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.long	.LASF98
	.byte	0xee
	.byte	0xb
	.long	0x6b
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x84f
	.uleb128 0x1
	.long	.LASF97
	.byte	0xee
	.byte	0x16
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.long	.LASF87
	.byte	0xee
	.byte	0x27
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF92
	.byte	0xee
	.byte	0x3b
	.long	0x36b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.long	.LASF93
	.byte	0xee
	.byte	0x4b
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"c"
	.byte	0xf0
	.byte	0x9
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x5
	.long	.LASF99
	.byte	0xde
	.byte	0xb
	.long	0x6b
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x899
	.uleb128 0x1
	.long	.LASF92
	.byte	0xde
	.byte	0x21
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF93
	.byte	0xde
	.byte	0x31
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"c"
	.byte	0xe0
	.byte	0x9
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.long	.LASF100
	.byte	0xd1
	.byte	0xb
	.long	0x6b
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f2
	.uleb128 0x1
	.long	.LASF87
	.byte	0xd1
	.byte	0x18
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF92
	.byte	0xd1
	.byte	0x2c
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF93
	.byte	0xd1
	.byte	0x3c
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.string	"c"
	.byte	0xd3
	.byte	0x9
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x5
	.long	.LASF101
	.byte	0xc4
	.byte	0xe
	.long	0x2e
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x978
	.uleb128 0xb
	.string	"ptr"
	.byte	0xc4
	.byte	0x23
	.long	0x360
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF102
	.byte	0xc4
	.byte	0x2f
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF103
	.byte	0xc4
	.byte	0x3c
	.long	0x2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.long	.LASF87
	.byte	0xc4
	.byte	0x49
	.long	0x33e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.long	.LASF92
	.byte	0xc4
	.byte	0x5d
	.long	0x36b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.long	.LASF93
	.byte	0xc4
	.byte	0x6d
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x6
	.string	"a"
	.byte	0xc6
	.byte	0xc
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x5
	.long	.LASF104
	.byte	0xb7
	.byte	0x10
	.long	0x77
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x9d0
	.uleb128 0x1
	.long	.LASF87
	.byte	0xb7
	.byte	0x1e
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF92
	.byte	0xb7
	.byte	0x32
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF93
	.byte	0xb7
	.byte	0x42
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"a"
	.byte	0xb9
	.byte	0xe
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.long	.LASF105
	.byte	0xaa
	.byte	0xb
	.long	0x6b
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xa38
	.uleb128 0x1
	.long	.LASF87
	.byte	0xaa
	.byte	0x1b
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"pos"
	.byte	0xaa
	.byte	0x2b
	.long	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF92
	.byte	0xaa
	.byte	0x3c
	.long	0x36b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.long	.LASF93
	.byte	0xaa
	.byte	0x4c
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x6
	.string	"a"
	.byte	0xac
	.byte	0x9
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x5
	.long	.LASF106
	.byte	0x9d
	.byte	0xb
	.long	0x6b
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xaae
	.uleb128 0x1
	.long	.LASF87
	.byte	0x9d
	.byte	0x19
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF107
	.byte	0x9d
	.byte	0x25
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.long	.LASF108
	.byte	0x9d
	.byte	0x31
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF92
	.byte	0x9d
	.byte	0x45
	.long	0x36b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.long	.LASF93
	.byte	0x9d
	.byte	0x55
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x6
	.string	"a"
	.byte	0x9f
	.byte	0x9
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x5
	.long	.LASF109
	.byte	0x8d
	.byte	0xd
	.long	0x33e
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xb24
	.uleb128 0x1
	.long	.LASF89
	.byte	0x8d
	.byte	0x23
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF110
	.byte	0x8d
	.byte	0x39
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF87
	.byte	0x8d
	.byte	0x45
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF92
	.byte	0x8d
	.byte	0x59
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF93
	.byte	0x8d
	.byte	0x69
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x18
	.long	.LASF111
	.byte	0x8f
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.long	.LASF112
	.byte	0x7e
	.byte	0xe
	.long	0x2e
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xba8
	.uleb128 0xb
	.string	"ptr"
	.byte	0x7e
	.byte	0x1c
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF102
	.byte	0x7e
	.byte	0x28
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF103
	.byte	0x7e
	.byte	0x35
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF87
	.byte	0x7e
	.byte	0x42
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF92
	.byte	0x7e
	.byte	0x56
	.long	0x36b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.long	.LASF93
	.byte	0x7e
	.byte	0x66
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x6
	.string	"a"
	.byte	0x80
	.byte	0xc
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.long	.LASF113
	.byte	0x71
	.byte	0xb
	.long	0x6b
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xc10
	.uleb128 0xb
	.string	"str"
	.byte	0x71
	.byte	0x1f
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF87
	.byte	0x71
	.byte	0x2a
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF92
	.byte	0x71
	.byte	0x3e
	.long	0x36b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.long	.LASF93
	.byte	0x71
	.byte	0x4e
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x6
	.string	"a"
	.byte	0x73
	.byte	0x9
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x5
	.long	.LASF114
	.byte	0x64
	.byte	0xb
	.long	0x6b
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xc77
	.uleb128 0x1
	.long	.LASF97
	.byte	0x64
	.byte	0x17
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.long	.LASF87
	.byte	0x64
	.byte	0x28
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF92
	.byte	0x64
	.byte	0x3c
	.long	0x36b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.long	.LASF93
	.byte	0x64
	.byte	0x4c
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"c"
	.byte	0x66
	.byte	0x9
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x5
	.long	.LASF115
	.byte	0x54
	.byte	0xd
	.long	0x33e
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xcde
	.uleb128 0x1
	.long	.LASF116
	.byte	0x54
	.byte	0x21
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF110
	.byte	0x54
	.byte	0x33
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF92
	.byte	0x54
	.byte	0x45
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF93
	.byte	0x54
	.byte	0x55
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.long	.LASF87
	.byte	0x56
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.long	.LASF117
	.byte	0x47
	.byte	0xd
	.long	0x96
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xd54
	.uleb128 0xb
	.string	"str"
	.byte	0x47
	.byte	0x1b
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"num"
	.byte	0x47
	.byte	0x24
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.long	.LASF87
	.byte	0x47
	.byte	0x2f
	.long	0x33e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.long	.LASF92
	.byte	0x47
	.byte	0x43
	.long	0x36b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.long	.LASF93
	.byte	0x47
	.byte	0x53
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"a"
	.byte	0x49
	.byte	0xb
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x5
	.long	.LASF118
	.byte	0x3a
	.byte	0xb
	.long	0x6b
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xdbc
	.uleb128 0x1
	.long	.LASF87
	.byte	0x3a
	.byte	0x1b
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"pos"
	.byte	0x3a
	.byte	0x2b
	.long	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF92
	.byte	0x3a
	.byte	0x3c
	.long	0x36b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.long	.LASF93
	.byte	0x3a
	.byte	0x4c
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x6
	.string	"a"
	.byte	0x3c
	.byte	0x9
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x5
	.long	.LASF119
	.byte	0x2d
	.byte	0xb
	.long	0x6b
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xe15
	.uleb128 0x1
	.long	.LASF87
	.byte	0x2d
	.byte	0x19
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF92
	.byte	0x2d
	.byte	0x2d
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF93
	.byte	0x2d
	.byte	0x3d
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.string	"c"
	.byte	0x2f
	.byte	0x9
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x26
	.long	.LASF121
	.byte	0x1
	.byte	0x1d
	.byte	0xb
	.long	0x6b
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1
	.long	.LASF87
	.byte	0x1d
	.byte	0x1a
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.long	.LASF92
	.byte	0x1d
	.byte	0x2e
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF93
	.byte	0x1d
	.byte	0x3e
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.string	"a"
	.byte	0x1f
	.byte	0x9
	.long	0x6b
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
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.sleb128 9
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
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
.LASF42:
	.string	"_shortbuf"
.LASF123:
	.string	"_IO_lock_t"
.LASF58:
	.string	"stderr"
.LASF31:
	.string	"_IO_buf_end"
.LASF98:
	.string	"putc_c"
.LASF29:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF47:
	.string	"_freeres_list"
.LASF23:
	.string	"_flags"
.LASF121:
	.string	"fclose_c"
.LASF35:
	.string	"_markers"
.LASF99:
	.string	"getchar_c"
.LASF75:
	.string	"fputc"
.LASF118:
	.string	"fgetpos_c"
.LASF110:
	.string	"mode"
.LASF112:
	.string	"fread_c"
.LASF67:
	.string	"putchar"
.LASF90:
	.string	"or_ist_"
.LASF74:
	.string	"fputs"
.LASF84:
	.string	"__errno_location"
.LASF113:
	.string	"fputs_c"
.LASF100:
	.string	"getc_c"
.LASF34:
	.string	"_IO_save_end"
.LASF15:
	.string	"__count"
.LASF61:
	.string	"float"
.LASF78:
	.string	"fgetpos"
.LASF54:
	.string	"_IO_codecvt"
.LASF103:
	.string	"count"
.LASF60:
	.string	"long long unsigned int"
.LASF92:
	.string	"file"
.LASF33:
	.string	"_IO_backup_base"
.LASF44:
	.string	"_offset"
.LASF85:
	.string	"fprintf"
.LASF37:
	.string	"_fileno"
.LASF65:
	.string	"remove"
.LASF91:
	.string	"is_ist_c"
.LASF66:
	.string	"puts"
.LASF9:
	.string	"size_t"
.LASF107:
	.string	"offset"
.LASF97:
	.string	"character"
.LASF26:
	.string	"_IO_read_base"
.LASF117:
	.string	"fgets_c"
.LASF57:
	.string	"stdin"
.LASF116:
	.string	"path"
.LASF16:
	.string	"__value"
.LASF95:
	.string	"puts_c"
.LASF12:
	.string	"char"
.LASF50:
	.string	"_mode"
.LASF89:
	.string	"filename"
.LASF109:
	.string	"freopen_c"
.LASF79:
	.string	"ferror"
.LASF53:
	.string	"_IO_marker"
.LASF24:
	.string	"_IO_read_ptr"
.LASF81:
	.string	"exit"
.LASF68:
	.string	"putc"
.LASF13:
	.string	"__wch"
.LASF122:
	.string	"GNU C17 11.2.1 20220127 (Red Hat 11.2.1-9) -mtune=generic -march=x86-64 -g"
.LASF83:
	.string	"getchar"
.LASF27:
	.string	"_IO_write_base"
.LASF59:
	.string	"long long int"
.LASF124:
	.string	"perror"
.LASF96:
	.string	"putchar_c"
.LASF63:
	.string	"printf"
.LASF32:
	.string	"_IO_save_base"
.LASF105:
	.string	"fsetpos_c"
.LASF72:
	.string	"fseek"
.LASF102:
	.string	"size"
.LASF48:
	.string	"_freeres_buf"
.LASF71:
	.string	"fsetpos"
.LASF101:
	.string	"fwrite_c"
.LASF88:
	.string	"info"
.LASF82:
	.string	"ftell"
.LASF80:
	.string	"fgetc"
.LASF49:
	.string	"__pad5"
.LASF64:
	.string	"access"
.LASF76:
	.string	"fopen"
.LASF41:
	.string	"_vtable_offset"
.LASF77:
	.string	"fgets"
.LASF17:
	.string	"__mbstate_t"
.LASF20:
	.string	"__fpos_t"
.LASF108:
	.string	"endSet"
.LASF18:
	.string	"__pos"
.LASF25:
	.string	"_IO_read_end"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"long int"
.LASF56:
	.string	"fpos_t"
.LASF73:
	.string	"fread"
.LASF55:
	.string	"_IO_wide_data"
.LASF14:
	.string	"__wchb"
.LASF86:
	.string	"fclose"
.LASF69:
	.string	"getc"
.LASF21:
	.string	"_G_fpos_t"
.LASF115:
	.string	"fopen_c"
.LASF46:
	.string	"_wide_data"
.LASF43:
	.string	"_lock"
.LASF2:
	.string	"long unsigned int"
.LASF39:
	.string	"_old_offset"
.LASF22:
	.string	"_IO_FILE"
.LASF111:
	.string	"stream_out"
.LASF4:
	.string	"unsigned char"
.LASF104:
	.string	"ftell_c"
.LASF93:
	.string	"line"
.LASF28:
	.string	"_IO_write_ptr"
.LASF114:
	.string	"fputc_c"
.LASF120:
	.string	"prpos_"
.LASF106:
	.string	"fseek_c"
.LASF45:
	.string	"_codecvt"
.LASF94:
	.string	"remove_c"
.LASF70:
	.string	"fwrite"
.LASF10:
	.string	"__off_t"
.LASF6:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF62:
	.string	"double"
.LASF36:
	.string	"_chain"
.LASF52:
	.string	"FILE"
.LASF19:
	.string	"__state"
.LASF38:
	.string	"_flags2"
.LASF40:
	.string	"_cur_column"
.LASF11:
	.string	"__off64_t"
.LASF51:
	.string	"_unused2"
.LASF30:
	.string	"_IO_buf_base"
.LASF87:
	.string	"stream"
.LASF119:
	.string	"fgetc_c"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_v.cplus/13_stdarg_h/1_macros/1_va_arg/cplus_cpjs"
.LASF0:
	.string	"lib/io_1.c"
	.ident	"GCC: (GNU) 11.2.1 20220127 (Red Hat 11.2.1-9)"
	.section	.note.GNU-stack,"",@progbits
