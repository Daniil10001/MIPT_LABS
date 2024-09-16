	.file	"arrays.cpp"
	.text
	.globl	_Z6swap_pPPiS0_
	.type	_Z6swap_pPPiS0_, @function
_Z6swap_pPPiS0_:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	je	.L4
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L1
.L4:
	nop
.L1:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z6swap_pPPiS0_, .-_Z6swap_pPPiS0_
	.globl	_Z4swapPiS_
	.type	_Z4swapPiS_, @function
_Z4swapPiS_:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L8
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	xorl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	xorl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	xorl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L5
.L8:
	nop
.L5:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_Z4swapPiS_, .-_Z4swapPiS_
	.globl	_Z10shift_dataPiii
	.type	_Z10shift_dataPiii, @function
_Z10shift_dataPiii:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L10
.L11:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	subl	$1, -4(%rbp)
.L10:
	cmpl	$0, -4(%rbp)
	jns	.L11
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	_Z10shift_dataPiii, .-_Z10shift_dataPiii
	.globl	_Z12default_compPiS_
	.type	_Z12default_compPiS_, @function
_Z12default_compPiS_:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setle	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	_Z12default_compPiS_, .-_Z12default_compPiS_
	.globl	comp_function
	.section	.data.rel.local,"aw"
	.align 8
	.type	comp_function, @object
	.size	comp_function, 8
comp_function:
	.quad	_Z12default_compPiS_
	.text
	.globl	_Z7comparePiS_
	.type	_Z7comparePiS_, @function
_Z7comparePiS_:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	comp_function(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testb	%al, %al
	jne	.L15
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L16
.L15:
	movl	$1, %eax
	jmp	.L17
.L16:
	movl	$0, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	_Z7comparePiS_, .-_Z7comparePiS_
	.globl	_Z11update_heapPiiPFbS_S_Eib
	.type	_Z11update_heapPiiPFbS_S_Eib, @function
_Z11update_heapPiiPFbS_S_Eib:
.LFB5:
	.cfi_startproc
	endbr64
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
	movl	%r8d, %eax
	movb	%al, -44(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.L28
	movb	$0, -2(%rbp)
	movb	$0, -1(%rbp)
	movl	-32(%rbp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	cmpl	%eax, -28(%rbp)
	jle	.L22
	movq	-40(%rbp), %rax
	movl	-32(%rbp), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rsi
	movq	-24(%rbp), %rdx
	addq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	cmpb	%al, -44(%rbp)
	setne	%al
	testb	%al, %al
	je	.L22
	movb	$1, -2(%rbp)
.L22:
	movl	-32(%rbp), %eax
	addl	$1, %eax
	addl	%eax, %eax
	cmpl	%eax, -28(%rbp)
	jle	.L23
	movq	-40(%rbp), %rax
	movl	-32(%rbp), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	addq	$2, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rsi
	movq	-24(%rbp), %rdx
	addq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	cmpb	%al, -44(%rbp)
	setne	%al
	testb	%al, %al
	je	.L23
	movb	$1, -1(%rbp)
.L23:
	movzbl	-2(%rbp), %eax
	cmpb	-1(%rbp), %al
	jne	.L24
	movzbl	-2(%rbp), %eax
	cmpl	$1, %eax
	jne	.L24
	movq	-40(%rbp), %rax
	movl	-32(%rbp), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movl	-32(%rbp), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	addq	$2, %rdx
	leaq	0(,%rdx,4), %rsi
	movq	-24(%rbp), %rdx
	addq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	cmpb	%al, -44(%rbp)
	setne	%al
	testb	%al, %al
	je	.L25
	movl	-32(%rbp), %eax
	addl	%eax, %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z4swapPiS_
	movl	-32(%rbp), %eax
	addl	%eax, %eax
	leal	1(%rax), %ecx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	_Z11update_heapPiiPFbS_S_Eib
	jmp	.L19
.L25:
	movl	-32(%rbp), %eax
	addl	%eax, %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z4swapPiS_
	movl	-32(%rbp), %eax
	addl	$1, %eax
	leal	(%rax,%rax), %ecx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	_Z11update_heapPiiPFbS_S_Eib
	jmp	.L19
.L24:
	cmpb	$0, -2(%rbp)
	je	.L27
	movl	-32(%rbp), %eax
	addl	%eax, %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z4swapPiS_
	movl	-32(%rbp), %eax
	addl	%eax, %eax
	leal	1(%rax), %ecx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	_Z11update_heapPiiPFbS_S_Eib
.L27:
	cmpb	$0, -1(%rbp)
	je	.L19
	movl	-32(%rbp), %eax
	addl	%eax, %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z4swapPiS_
	movl	-32(%rbp), %eax
	addl	$1, %eax
	leal	(%rax,%rax), %ecx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	_Z11update_heapPiiPFbS_S_Eib
	jmp	.L19
.L28:
	nop
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	_Z11update_heapPiiPFbS_S_Eib, .-_Z11update_heapPiiPFbS_S_Eib
	.globl	_Z4heapPiiPFbS_S_Eib
	.type	_Z4heapPiiPFbS_S_Eib, @function
_Z4heapPiiPFbS_S_Eib:
.LFB6:
	.cfi_startproc
	endbr64
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
	movl	%r8d, %eax
	movb	%al, -44(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L30
.L31:
	movl	-4(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	_Z11update_heapPiiPFbS_S_Eib
	subl	$1, -4(%rbp)
.L30:
	cmpl	$0, -4(%rbp)
	jns	.L31
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	_Z4heapPiiPFbS_S_Eib, .-_Z4heapPiiPFbS_S_Eib
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
