	.file	"n2sort.cpp"
	.text
	.globl	_Z10buble_sortPiiPFbS_S_E
	.type	_Z10buble_sortPiiPFbS_S_E, @function
_Z10buble_sortPiiPFbS_S_E:
.LFB0:
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
	movb	$1, -9(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L2
.L8:
	movb	$1, -9(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L3
.L5:
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rsi
	movq	-24(%rbp), %rdx
	addq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	xorl	$1, %eax
	testb	%al, %al
	je	.L4
	movl	-4(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z4swapPiS_@PLT
	movb	$0, -9(%rbp)
.L4:
	addl	$1, -4(%rbp)
.L3:
	movl	-28(%rbp), %eax
	subl	-8(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L5
	cmpb	$0, -9(%rbp)
	jne	.L9
	addl	$1, -8(%rbp)
.L2:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L8
	jmp	.L10
.L9:
	nop
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z10buble_sortPiiPFbS_S_E, .-_Z10buble_sortPiiPFbS_S_E
	.globl	_Z11choose_sortPiiPFbS_S_E
	.type	_Z11choose_sortPiiPFbS_S_E, @function
_Z11choose_sortPiiPFbS_S_E:
.LFB1:
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
	movl	$0, -8(%rbp)
	jmp	.L12
.L16:
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L13
.L15:
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rsi
	movq	-24(%rbp), %rdx
	addq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	xorl	$1, %eax
	testb	%al, %al
	je	.L14
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z4swapPiS_@PLT
.L14:
	addl	$1, -4(%rbp)
.L13:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L15
	addl	$1, -8(%rbp)
.L12:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L16
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_Z11choose_sortPiiPFbS_S_E, .-_Z11choose_sortPiiPFbS_S_E
	.globl	_Z11shaker_sortPiiPFbS_S_E
	.type	_Z11shaker_sortPiiPFbS_S_E, @function
_Z11shaker_sortPiiPFbS_S_E:
.LFB2:
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
	movb	$1, -13(%rbp)
	movl	$0, -12(%rbp)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L18
.L21:
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rsi
	movq	-24(%rbp), %rdx
	addq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	xorl	$1, %eax
	testb	%al, %al
	je	.L20
	movl	-4(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z4swapPiS_@PLT
	movb	$0, -13(%rbp)
.L20:
	addl	$1, -4(%rbp)
.L19:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L21
	subl	$1, -8(%rbp)
	jmp	.L22
.L24:
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	-4(%rdx), %rsi
	movq	-24(%rbp), %rdx
	addq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	xorl	$1, %eax
	testb	%al, %al
	je	.L23
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z4swapPiS_@PLT
	movb	$0, -13(%rbp)
.L23:
	subl	$1, -4(%rbp)
.L22:
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.L24
	addl	$1, -12(%rbp)
	cmpb	$0, -13(%rbp)
	jne	.L27
.L18:
	movl	-8(%rbp), %eax
	subl	-12(%rbp), %eax
	testl	%eax, %eax
	jg	.L19
	jmp	.L28
.L27:
	nop
.L28:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	_Z11shaker_sortPiiPFbS_S_E, .-_Z11shaker_sortPiiPFbS_S_E
	.globl	_Z8put_sortPiiPFbS_S_E
	.type	_Z8put_sortPiiPFbS_S_E, @function
_Z8put_sortPiiPFbS_S_E:
.LFB3:
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
	movl	$4, %edi
	call	_Znwm@PLT
	movq	%rax, -8(%rbp)
	movl	$1, -16(%rbp)
	jmp	.L30
.L35:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, -12(%rbp)
	jmp	.L31
.L34:
	movq	-40(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
	testb	%al, %al
	je	.L32
	movl	-16(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movl	$1, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	_Z10shift_dataPiii@PLT
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z4swapPiS_@PLT
	jmp	.L33
.L32:
	addl	$1, -12(%rbp)
.L31:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L34
.L33:
	addl	$1, -16(%rbp)
.L30:
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L35
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	je	.L37
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
.L37:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	_Z8put_sortPiiPFbS_S_E, .-_Z8put_sortPiiPFbS_S_E
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
