	.file	"lc_str.c"
	.text
.Ltext0:
	.file 0 "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs" "lib/lc_str.c"
	.globl	cp_str_lc_str
	.type	cp_str_lc_str, @function
cp_str_lc_str:
.LFB6:
	.file 1 "lib/lc_str.c"
	.loc 1 38 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 39 9
	movl	$0, -4(%rbp)
	.loc 1 40 11
	jmp	.L2
.L3:
	.loc 1 41 9
	addl	$1, -4(%rbp)
.L2:
	.loc 1 40 25
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 40 15
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 40 25
	movzbl	(%rdx), %edx
	.loc 1 40 19
	movb	%dl, (%rax)
	.loc 1 40 15
	movzbl	(%rax), %eax
	.loc 1 40 30
	testb	%al, %al
	jne	.L3
	.loc 1 42 12
	movl	-4(%rbp), %eax
	.loc 1 43 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	cp_str_lc_str, .-cp_str_lc_str
	.section	.rodata
.LC0:
	.string	"\\0"
.LC1:
	.string	"\\n"
.LC2:
	.string	"\\f"
.LC3:
	.string	"\\t"
.LC4:
	.string	"\\v"
.LC5:
	.string	"\\a"
.LC6:
	.string	"\\b"
	.text
	.globl	unseal_cntchar_lc_str
	.type	unseal_cntchar_lc_str, @function
unseal_cntchar_lc_str:
.LFB7:
	.loc 1 46 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	.loc 1 49 12
	movl	$0, -20(%rbp)
	.loc 1 49 5
	jmp	.L6
.L15:
	.loc 1 51 19
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 51 11
	movsbl	%al, %eax
	movl	%eax, -24(%rbp)
	.loc 1 52 12
	cmpl	$0, -24(%rbp)
	jne	.L7
	.loc 1 54 13
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	jmp	.L8
.L7:
	.loc 1 56 17
	cmpl	$10, -24(%rbp)
	jne	.L9
	.loc 1 58 13
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	.loc 1 59 13
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L8
.L9:
	.loc 1 61 17
	cmpl	$12, -24(%rbp)
	jne	.L10
	.loc 1 63 13
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	.loc 1 64 13
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L8
.L10:
	.loc 1 66 17
	cmpl	$9, -24(%rbp)
	jne	.L11
	.loc 1 68 13
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	.loc 1 69 13
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L8
.L11:
	.loc 1 71 17
	cmpl	$11, -24(%rbp)
	jne	.L12
	.loc 1 73 13
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	.loc 1 74 13
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L8
.L12:
	.loc 1 76 17
	cmpl	$7, -24(%rbp)
	jne	.L13
	.loc 1 78 13
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	.loc 1 79 13
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L8
.L13:
	.loc 1 81 17
	cmpl	$8, -24(%rbp)
	jne	.L14
	.loc 1 83 13
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	.loc 1 84 13
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L8
.L14:
	.loc 1 87 13
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	putchar
.L8:
	.loc 1 49 36 discriminator 2
	addl	$1, -20(%rbp)
.L6:
	.loc 1 49 19 discriminator 1
	movl	-20(%rbp), %eax
	movslq	%eax, %rbx
	.loc 1 49 21 discriminator 1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	.loc 1 49 31 discriminator 1
	addq	$1, %rax
	.loc 1 49 19 discriminator 1
	cmpq	%rax, %rbx
	jb	.L15
	.loc 1 90 12
	movl	$0, %eax
	.loc 1 91 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	unseal_cntchar_lc_str, .-unseal_cntchar_lc_str
	.globl	unseal_cntcharn_lc_str
	.type	unseal_cntcharn_lc_str, @function
unseal_cntcharn_lc_str:
.LFB8:
	.loc 1 94 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 97 12
	movl	$0, -4(%rbp)
	.loc 1 97 5
	jmp	.L18
.L27:
	.loc 1 101 19
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 101 11
	movsbl	%al, %eax
	movl	%eax, -8(%rbp)
	.loc 1 102 12
	cmpl	$0, -8(%rbp)
	jne	.L19
	.loc 1 104 13
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	jmp	.L20
.L19:
	.loc 1 106 17
	cmpl	$10, -8(%rbp)
	jne	.L21
	.loc 1 108 13
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	.loc 1 109 13
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L20
.L21:
	.loc 1 111 17
	cmpl	$12, -8(%rbp)
	jne	.L22
	.loc 1 113 13
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	.loc 1 114 13
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L20
.L22:
	.loc 1 116 17
	cmpl	$9, -8(%rbp)
	jne	.L23
	.loc 1 118 13
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	.loc 1 119 13
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L20
.L23:
	.loc 1 121 17
	cmpl	$11, -8(%rbp)
	jne	.L24
	.loc 1 123 13
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	.loc 1 124 13
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L20
.L24:
	.loc 1 126 17
	cmpl	$7, -8(%rbp)
	jne	.L25
	.loc 1 128 13
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	.loc 1 129 13
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L20
.L25:
	.loc 1 131 17
	cmpl	$8, -8(%rbp)
	jne	.L26
	.loc 1 133 13
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	.loc 1 134 13
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L20
.L26:
	.loc 1 137 13
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	putchar
.L20:
	.loc 1 97 24 discriminator 2
	addl	$1, -4(%rbp)
.L18:
	.loc 1 97 19 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L27
	.loc 1 140 12
	movl	$0, %eax
	.loc 1 141 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	unseal_cntcharn_lc_str, .-unseal_cntcharn_lc_str
	.globl	unseal_cntcharns_lc_str
	.type	unseal_cntcharns_lc_str, @function
unseal_cntcharns_lc_str:
.LFB9:
	.loc 1 145 1
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
	.loc 1 148 5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	.loc 1 149 12
	movl	$0, -4(%rbp)
	.loc 1 149 5
	jmp	.L30
.L39:
	.loc 1 153 19
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 153 11
	movsbl	%al, %eax
	movl	%eax, -8(%rbp)
	.loc 1 154 12
	cmpl	$0, -8(%rbp)
	jne	.L31
	.loc 1 156 13
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	jmp	.L32
.L31:
	.loc 1 158 17
	cmpl	$10, -8(%rbp)
	jne	.L33
	.loc 1 160 13
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	.loc 1 161 13
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L32
.L33:
	.loc 1 163 17
	cmpl	$12, -8(%rbp)
	jne	.L34
	.loc 1 165 13
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	.loc 1 166 13
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L32
.L34:
	.loc 1 168 17
	cmpl	$9, -8(%rbp)
	jne	.L35
	.loc 1 170 13
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	.loc 1 171 13
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L32
.L35:
	.loc 1 173 17
	cmpl	$11, -8(%rbp)
	jne	.L36
	.loc 1 175 13
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	.loc 1 176 13
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L32
.L36:
	.loc 1 178 17
	cmpl	$7, -8(%rbp)
	jne	.L37
	.loc 1 180 13
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	.loc 1 181 13
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L32
.L37:
	.loc 1 183 17
	cmpl	$8, -8(%rbp)
	jne	.L38
	.loc 1 185 13
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	.loc 1 186 13
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L32
.L38:
	.loc 1 189 13
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	putchar
.L32:
	.loc 1 149 24 discriminator 2
	addl	$1, -4(%rbp)
.L30:
	.loc 1 149 19 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L39
	.loc 1 191 5
	movl	$10, %edi
	call	putchar
	.loc 1 193 12
	movl	$0, %eax
	.loc 1 194 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	unseal_cntcharns_lc_str, .-unseal_cntcharns_lc_str
	.globl	uns_ns_lc_str
	.type	uns_ns_lc_str, @function
uns_ns_lc_str:
.LFB10:
	.loc 1 197 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 1 198 12
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	unseal_cntcharns_lc_str
	.loc 1 199 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	uns_ns_lc_str, .-uns_ns_lc_str
	.globl	l2a_free_lc_str
	.type	l2a_free_lc_str, @function
l2a_free_lc_str:
.LFB11:
	.loc 1 202 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 203 18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	.loc 1 203 12
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	.loc 1 204 17
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -16(%rbp)
	.loc 1 205 8
	cmpq	$0, -16(%rbp)
	jne	.L44
	.loc 1 206 16
	movl	$0, %eax
	jmp	.L45
.L44:
	.loc 1 208 5
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	.loc 1 210 12
	movq	-16(%rbp), %rax
.L45:
	.loc 1 211 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	l2a_free_lc_str, .-l2a_free_lc_str
	.globl	strcat_lc_str
	.type	strcat_lc_str, @function
strcat_lc_str:
.LFB12:
	.loc 1 214 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 215 27
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	.loc 1 215 12
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	.loc 1 216 23
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -24(%rbp)
.LBB2:
	.loc 1 218 17
	movq	$0, -8(%rbp)
	.loc 1 218 5
	jmp	.L47
.L48:
	.loc 1 220 33 discriminator 3
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 220 23 discriminator 3
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	.loc 1 220 13 discriminator 3
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 220 33 discriminator 3
	movzbl	(%rax), %eax
	.loc 1 220 28 discriminator 3
	movb	%al, (%rdx)
	.loc 1 218 43 discriminator 3
	addq	$1, -8(%rbp)
.L47:
	.loc 1 218 26 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L48
.LBE2:
	.loc 1 223 12
	movq	-40(%rbp), %rax
	.loc 1 224 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	strcat_lc_str, .-strcat_lc_str
	.globl	strlen_lc_str
	.type	strlen_lc_str, @function
strlen_lc_str:
.LFB13:
	.loc 1 227 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 229 12
	movq	$0, -8(%rbp)
	.loc 1 229 5
	jmp	.L51
.L53:
	.loc 1 229 45 discriminator 4
	addq	$1, -8(%rbp)
.L51:
	.loc 1 229 20 discriminator 1
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 229 32 discriminator 1
	testb	%al, %al
	je	.L52
	.loc 1 229 32 is_stmt 0 discriminator 3
	cmpq	$999, -8(%rbp)
	jbe	.L53
.L52:
	.loc 1 232 8 is_stmt 1
	cmpq	$999, -8(%rbp)
	jne	.L54
	.loc 1 234 16
	movq	$-1, %rax
	jmp	.L55
.L54:
	.loc 1 236 12
	movq	-8(%rbp), %rax
.L55:
	.loc 1 237 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	strlen_lc_str, .-strlen_lc_str
	.globl	rm_charn_lc_str
	.type	rm_charn_lc_str, @function
rm_charn_lc_str:
.LFB14:
	.loc 1 239 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movl	%edx, -48(%rbp)
	movb	%al, -44(%rbp)
	.loc 1 240 26
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	.loc 1 241 9
	movl	$1, -4(%rbp)
	.loc 1 246 7
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 248 11
	jmp	.L57
.L61:
	.loc 1 250 15
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 251 15
	jmp	.L58
.L59:
	.loc 1 253 18
	addq	$1, -24(%rbp)
	.loc 1 254 14
	addl	$1, -4(%rbp)
.L58:
	.loc 1 251 21
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 251 25
	cmpb	%al, -44(%rbp)
	je	.L59
	.loc 1 257 12
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L60
	.loc 1 259 18
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	.loc 1 260 13
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
.L60:
	.loc 1 262 10
	addl	$1, -4(%rbp)
	.loc 1 263 10
	addq	$1, -16(%rbp)
.L57:
	.loc 1 248 14
	movl	-4(%rbp), %eax
	cltq
	cmpq	-32(%rbp), %rax
	jb	.L61
	.loc 1 266 12
	movq	-40(%rbp), %rax
	.loc 1 267 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	rm_charn_lc_str, .-rm_charn_lc_str
.Letext0:
	.file 2 "/usr/include/string.h"
	.file 3 "/usr/include/stdlib.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/lib/gcc/x86_64-redhat-linux/12/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x449
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xb
	.long	.LASF38
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0xd
	.byte	0x8
	.uleb128 0x9
	.long	0x6d
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0xe
	.long	0x6d
	.uleb128 0x9
	.long	0x74
	.uleb128 0x1
	.byte	0x4
	.byte	0x4
	.long	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.long	.LASF11
	.uleb128 0xf
	.long	.LASF39
	.byte	0x5
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.long	.LASF14
	.uleb128 0x9
	.long	0xb2
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF15
	.byte	0x95
	.long	0x68
	.long	0xcc
	.uleb128 0x4
	.long	0x68
	.uleb128 0x4
	.long	0x79
	.byte	0
	.uleb128 0xa
	.long	.LASF16
	.byte	0x2b
	.long	0x66
	.long	0xea
	.uleb128 0x4
	.long	0x66
	.uleb128 0x4
	.long	0xad
	.uleb128 0x4
	.long	0x8c
	.byte	0
	.uleb128 0x7
	.long	.LASF17
	.byte	0x3
	.value	0x21c
	.byte	0xe
	.long	0x66
	.long	0x101
	.uleb128 0x4
	.long	0x8c
	.byte	0
	.uleb128 0x7
	.long	.LASF18
	.byte	0x2
	.value	0x197
	.byte	0xf
	.long	0x8c
	.long	0x118
	.uleb128 0x4
	.long	0x79
	.byte	0
	.uleb128 0x7
	.long	.LASF19
	.byte	0x4
	.value	0x22c
	.byte	0xc
	.long	0x58
	.long	0x12f
	.uleb128 0x4
	.long	0x58
	.byte	0
	.uleb128 0x7
	.long	.LASF20
	.byte	0x4
	.value	0x164
	.byte	0xc
	.long	0x58
	.long	0x147
	.uleb128 0x4
	.long	0x79
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	.LASF24
	.byte	0xee
	.byte	0xd
	.long	0x68
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c5
	.uleb128 0x3
	.string	"str"
	.byte	0xee
	.byte	0x23
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.long	.LASF21
	.byte	0xee
	.byte	0x2d
	.long	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.string	"n"
	.byte	0xee
	.byte	0x3a
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.long	.LASF22
	.byte	0xf0
	.byte	0xc
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"i"
	.byte	0xf1
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"p"
	.byte	0xf3
	.byte	0xb
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.long	.LASF23
	.byte	0xf4
	.byte	0xb
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x12
	.long	.LASF25
	.byte	0x1
	.byte	0xe2
	.byte	0xe
	.long	0x8c
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x202
	.uleb128 0x3
	.string	"str"
	.byte	0xe2
	.byte	0x22
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"i"
	.byte	0xe4
	.byte	0xc
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.long	.LASF26
	.byte	0xd5
	.byte	0xd
	.long	0x68
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x27a
	.uleb128 0x6
	.long	.LASF27
	.byte	0xd5
	.byte	0x21
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.string	"src"
	.byte	0xd5
	.byte	0x2d
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.long	.LASF28
	.byte	0xd7
	.byte	0xc
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.long	.LASF29
	.byte	0xd8
	.byte	0xc
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2
	.string	"i"
	.byte	0xda
	.byte	0x11
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF30
	.byte	0xc9
	.byte	0xd
	.long	0x68
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c6
	.uleb128 0x6
	.long	.LASF31
	.byte	0xc9
	.byte	0x23
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.byte	0xcb
	.byte	0xc
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"arr"
	.byte	0xcc
	.byte	0xb
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.long	.LASF32
	.byte	0xc4
	.byte	0xb
	.long	0x58
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x30e
	.uleb128 0x3
	.string	"s"
	.byte	0xc4
	.byte	0x1f
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"n"
	.byte	0xc4
	.byte	0x26
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.long	.LASF33
	.byte	0xc4
	.byte	0x2f
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x5
	.long	.LASF34
	.byte	0x90
	.byte	0xb
	.long	0x58
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x36e
	.uleb128 0x3
	.string	"s"
	.byte	0x90
	.byte	0x29
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"n"
	.byte	0x90
	.byte	0x30
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.long	.LASF33
	.byte	0x90
	.byte	0x39
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"i"
	.byte	0x92
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"c"
	.byte	0x93
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.long	.LASF35
	.byte	0x5d
	.byte	0xb
	.long	0x58
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c0
	.uleb128 0x3
	.string	"s"
	.byte	0x5d
	.byte	0x28
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"n"
	.byte	0x5d
	.byte	0x2f
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"i"
	.byte	0x5f
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"c"
	.byte	0x60
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.long	.LASF36
	.byte	0x2d
	.byte	0xb
	.long	0x58
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x406
	.uleb128 0x3
	.string	"s"
	.byte	0x2d
	.byte	0x27
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"i"
	.byte	0x2f
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"c"
	.byte	0x30
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x14
	.long	.LASF40
	.byte	0x1
	.byte	0x25
	.byte	0xb
	.long	0x58
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.string	"to"
	.byte	0x25
	.byte	0x1f
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF37
	.byte	0x25
	.byte	0x29
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"i"
	.byte	0x27
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
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
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
.LASF39:
	.string	"size_t"
.LASF37:
	.string	"from"
.LASF30:
	.string	"l2a_free_lc_str"
.LASF17:
	.string	"malloc"
.LASF31:
	.string	"literal"
.LASF3:
	.string	"short unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF29:
	.string	"len_dist"
.LASF21:
	.string	"removed"
.LASF10:
	.string	"float"
.LASF40:
	.string	"cp_str_lc_str"
.LASF24:
	.string	"rm_charn_lc_str"
.LASF35:
	.string	"unseal_cntcharn_lc_str"
.LASF5:
	.string	"long unsigned int"
.LASF15:
	.string	"strcat"
.LASF19:
	.string	"putchar"
.LASF2:
	.string	"unsigned char"
.LASF11:
	.string	"double"
.LASF22:
	.string	"len_arg_str"
.LASF7:
	.string	"short int"
.LASF26:
	.string	"strcat_lc_str"
.LASF9:
	.string	"char"
.LASF27:
	.string	"dest"
.LASF18:
	.string	"strlen"
.LASF33:
	.string	"comment"
.LASF36:
	.string	"unseal_cntchar_lc_str"
.LASF12:
	.string	"long long int"
.LASF32:
	.string	"uns_ns_lc_str"
.LASF20:
	.string	"printf"
.LASF16:
	.string	"memcpy"
.LASF23:
	.string	"pnext"
.LASF38:
	.string	"GNU C17 12.2.1 20220819 (Red Hat 12.2.1-1) -mtune=generic -march=x86-64 -g"
.LASF28:
	.string	"full_len_src"
.LASF34:
	.string	"unseal_cntcharns_lc_str"
.LASF8:
	.string	"long int"
.LASF25:
	.string	"strlen_lc_str"
.LASF14:
	.string	"long double"
.LASF6:
	.string	"signed char"
.LASF13:
	.string	"long long unsigned int"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs"
.LASF0:
	.string	"lib/lc_str.c"
	.ident	"GCC: (GNU) 12.2.1 20220819 (Red Hat 12.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
