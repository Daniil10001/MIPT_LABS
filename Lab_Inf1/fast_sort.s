	.file	"fast_sort.cpp"
	.text
	.globl	_Z9comb_sortPiiPFbS_S_E
	.type	_Z9comb_sortPiiPFbS_S_E, @function
_Z9comb_sortPiiPFbS_S_E:
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
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -12(%rbp)
	movb	$1, -13(%rbp)
	jmp	.L2
.L6:
	movl	$0, -8(%rbp)
	jmp	.L3
.L5:
	movq	-40(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rcx
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
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
	je	.L4
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
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
.L4:
	addl	$1, -8(%rbp)
.L3:
	movl	-28(%rbp), %eax
	subl	-12(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L5
	sarl	-12(%rbp)
.L2:
	cmpl	$1, -12(%rbp)
	jg	.L6
	movl	$1, -12(%rbp)
.L12:
	movb	$1, -13(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L7
.L9:
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
	je	.L8
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
.L8:
	addl	$1, -4(%rbp)
.L7:
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jl	.L9
	cmpb	$0, -13(%rbp)
	jne	.L14
	jmp	.L12
.L14:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z9comb_sortPiiPFbS_S_E, .-_Z9comb_sortPiiPFbS_S_E
	.globl	_Z10merge_sortPiiPFbS_S_E
	.type	_Z10merge_sortPiiPFbS_S_E, @function
_Z10merge_sortPiiPFbS_S_E:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L16
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	movq	%rax, -8(%rbp)
	movl	$1, -28(%rbp)
	jmp	.L18
.L16:
	call	__cxa_throw_bad_array_new_length@PLT
.L32:
	movl	$0, -16(%rbp)
	jmp	.L19
.L31:
	movl	-16(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-16(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L20
.L24:
	movl	-16(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -24(%rbp)
	je	.L25
	movl	-28(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -20(%rbp)
	je	.L25
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.L25
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.L25
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rsi
	movq	-40(%rbp), %rdx
	addq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	testb	%al, %al
	je	.L22
	movl	-24(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -24(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rcx
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	jmp	.L23
.L22:
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rcx
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
.L23:
	addl	$1, -12(%rbp)
.L20:
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L24
	jmp	.L25
.L27:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rcx
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -12(%rbp)
	addl	$1, -24(%rbp)
.L25:
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.L28
	movl	-16(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -24(%rbp)
	jl	.L27
	jmp	.L28
.L30:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rcx
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -12(%rbp)
	addl	$1, -20(%rbp)
.L28:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.L29
	movl	-28(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -20(%rbp)
	jl	.L30
.L29:
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	addl	%eax, -16(%rbp)
.L19:
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L31
	sall	-28(%rbp)
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L18:
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L32
	cmpq	$0, -8(%rbp)
	je	.L34
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L34:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_Z10merge_sortPiiPFbS_S_E, .-_Z10merge_sortPiiPFbS_S_E
	.globl	_Z10quick_sortPiiiPFbS_S_ES_i
	.type	_Z10quick_sortPiiiPFbS_S_ES_i, @function
_Z10quick_sortPiiiPFbS_S_ES_i:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movl	%r9d, -84(%rbp)
	cmpl	$1, -64(%rbp)
	jle	.L45
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	cmpl	$2, -64(%rbp)
	jne	.L38
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
	xorl	$1, %eax
	testb	%al, %al
	je	.L46
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z4swapPiS_@PLT
	jmp	.L46
.L38:
	movl	$0, -36(%rbp)
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L40
.L44:
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, -28(%rbp)
	je	.L47
	movq	-72(%rbp), %rdx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	*%rdx
	testb	%al, %al
	je	.L43
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -36(%rbp)
	jmp	.L42
.L43:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	subl	$1, -32(%rbp)
	jmp	.L42
.L47:
	nop
.L42:
	addl	$1, -28(%rbp)
.L40:
	movl	-28(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.L44
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-84(%rbp), %r8d
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movl	-36(%rbp), %edx
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_Z10quick_sortPiiiPFbS_S_ES_i
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	-64(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, %edi
	movl	-60(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	leal	1(%rax), %esi
	movl	-84(%rbp), %r8d
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	_Z10quick_sortPiiiPFbS_S_ES_i
	jmp	.L35
.L45:
	nop
	jmp	.L35
.L46:
	nop
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	_Z10quick_sortPiiiPFbS_S_ES_i, .-_Z10quick_sortPiiiPFbS_S_ES_i
	.globl	_Z10quick_sortPiiPFbS_S_E
	.type	_Z10quick_sortPiiPFbS_S_E, @function
_Z10quick_sortPiiPFbS_S_E:
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
	movl	-28(%rbp), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L49
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %edi
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edi, %r9d
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10quick_sortPiiiPFbS_S_ES_i
	cmpq	$0, -8(%rbp)
	je	.L53
	jmp	.L52
.L49:
	call	__cxa_throw_bad_array_new_length@PLT
.L52:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L53:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	_Z10quick_sortPiiPFbS_S_E, .-_Z10quick_sortPiiPFbS_S_E
	.globl	_Z9heap_sortPiiPFbS_S_E
	.type	_Z9heap_sortPiiPFbS_S_E, @function
_Z9heap_sortPiiPFbS_S_E:
.LFB4:
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
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	_Z4heapPiiPFbS_S_Eib@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L55
.L56:
	movq	-40(%rbp), %rdx
	movl	-4(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	_Z11update_heapPiiPFbS_S_Eib@PLT
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z4swapPiS_@PLT
	subl	$1, -4(%rbp)
.L55:
	cmpl	$1, -4(%rbp)
	jg	.L56
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	_Z9heap_sortPiiPFbS_S_E, .-_Z9heap_sortPiiPFbS_S_E
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
