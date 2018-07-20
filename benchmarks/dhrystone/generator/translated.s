	.text
	.file	"llvm-link"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi0:
	.cfi_def_cfa_offset 16
.Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi2:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$120, %rsp
.Lcfi3:
	.cfi_offset %rbx, -24
	callq	init_monitor
	movl	$65537, %edi            # imm = 0x10001
	callq	enqueue_signature
	leaq	-128(%rbp), %rdi
	movl	$0, -80(%rbp)
	movl	$0, -76(%rbp)
	xorl	%esi, %esi
	callq	gettimeofday
# BB#1:
	movl	$65538, %edi            # imm = 0x10002
	callq	enqueue_signature
	movl	$8, -24(%rbp)
	movl	$1048576, -16(%rbp)     # imm = 0x100000
	movl	$1, %edi
	callq	srand
# BB#2:
	movl	$65539, %edi            # imm = 0x10003
	callq	enqueue_signature
	movl	-16(%rbp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
# BB#3:
	movl	$65540, %edi            # imm = 0x10004
	callq	enqueue_signature
	movq	%rbx, -32(%rbp)
	movl	-16(%rbp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
# BB#4:
	movl	$65541, %edi            # imm = 0x10005
	callq	enqueue_signature
	movq	%rbx, -72(%rbp)
	movl	-16(%rbp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
# BB#5:
	movl	$65542, %edi            # imm = 0x10006
	callq	enqueue_signature
	movq	%rbx, -96(%rbp)
	movl	-16(%rbp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
# BB#6:
	movl	$65543, %edi            # imm = 0x10007
	callq	enqueue_signature
	movq	%rbx, -88(%rbp)
	movl	-24(%rbp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
# BB#7:
	movl	$65544, %edi            # imm = 0x10008
	callq	enqueue_signature
	movq	%rbx, -48(%rbp)
	movl	-24(%rbp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
# BB#8:
	movl	$65545, %edi            # imm = 0x10009
	callq	enqueue_signature
	movq	%rbx, -40(%rbp)
	movl	$0, -12(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movl	$65546, %edi            # imm = 0x1000A
	callq	enqueue_signature
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB0_14
# BB#10:                                #   in Loop: Header=BB0_9 Depth=1
	movl	$65547, %edi            # imm = 0x1000B
	callq	enqueue_signature
	callq	rand
	movl	%eax, %ebx
# BB#11:                                #   in Loop: Header=BB0_9 Depth=1
	movl	$65548, %edi            # imm = 0x1000C
	callq	enqueue_signature
	movl	$1000, %ecx             # imm = 0x3E8
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	cvtsi2ssl	%edx, %xmm0
	movq	-48(%rbp), %rax
	movl	-12(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	callq	rand
	movl	%eax, %ebx
# BB#12:                                #   in Loop: Header=BB0_9 Depth=1
	movl	$65549, %edi            # imm = 0x1000D
	callq	enqueue_signature
	movl	$1000, %ecx             # imm = 0x3E8
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	cvtsi2ssl	%edx, %xmm0
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
# BB#13:                                #   in Loop: Header=BB0_9 Depth=1
	movl	$65550, %edi            # imm = 0x1000E
	callq	enqueue_signature
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_9
.LBB0_14:
	movl	$65551, %edi            # imm = 0x1000F
	callq	enqueue_signature
	movl	$0, -12(%rbp)
.LBB0_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
	movl	$65552, %edi            # imm = 0x10010
	callq	enqueue_signature
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jae	.LBB0_28
# BB#16:                                #   in Loop: Header=BB0_15 Depth=1
	movl	$65553, %edi            # imm = 0x10011
	callq	enqueue_signature
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	movl	$0, -20(%rbp)
.LBB0_17:                               #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$65554, %edi            # imm = 0x10012
	callq	enqueue_signature
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB0_26
# BB#18:                                #   in Loop: Header=BB0_17 Depth=2
	movl	$65555, %edi            # imm = 0x10013
	callq	enqueue_signature
	callq	rand
	movl	%eax, %ebx
# BB#19:                                #   in Loop: Header=BB0_17 Depth=2
	movl	$65556, %edi            # imm = 0x10014
	callq	enqueue_signature
	movl	$2, %ecx
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB0_22
# BB#20:                                #   in Loop: Header=BB0_17 Depth=2
	movl	$65557, %edi            # imm = 0x10015
	callq	enqueue_signature
	movq	-48(%rbp), %rax
	movl	-20(%rbp), %ecx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	-40(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movl	-12(%rbp), %eax
	cvtsi2ssq	%rax, %xmm1
	mulss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	callq	cos
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
# BB#21:                                #   in Loop: Header=BB0_17 Depth=2
	movl	$65558, %edi            # imm = 0x10016
	callq	enqueue_signature
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1        # 8-byte Folded Reload
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	jmp	.LBB0_24
.LBB0_22:                               #   in Loop: Header=BB0_17 Depth=2
	movl	$65559, %edi            # imm = 0x10017
	callq	enqueue_signature
	movq	-48(%rbp), %rax
	movl	-20(%rbp), %ecx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	-40(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movl	-12(%rbp), %eax
	cvtsi2ssq	%rax, %xmm1
	mulss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	callq	sin
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
# BB#23:                                #   in Loop: Header=BB0_17 Depth=2
	movl	$65560, %edi            # imm = 0x10018
	callq	enqueue_signature
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1        # 8-byte Folded Reload
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_24:                               #   in Loop: Header=BB0_17 Depth=2
	movl	$65561, %edi            # imm = 0x10019
	callq	enqueue_signature
	xorps	%xmm0, %xmm0
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
# BB#25:                                #   in Loop: Header=BB0_17 Depth=2
	movl	$65562, %edi            # imm = 0x1001A
	callq	enqueue_signature
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_17
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=1
	movl	$65563, %edi            # imm = 0x1001B
	callq	enqueue_signature
# BB#27:                                #   in Loop: Header=BB0_15 Depth=1
	movl	$65564, %edi            # imm = 0x1001C
	callq	enqueue_signature
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_15
.LBB0_28:
	movl	$65565, %edi            # imm = 0x1001D
	callq	enqueue_signature
	movl	-16(%rbp), %edi
	movl	-76(%rbp), %esi
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-96(%rbp), %r8
	movq	-88(%rbp), %r9
	movb	$0, %al
	callq	fft_float
# BB#29:
	movl	$65566, %edi            # imm = 0x1001E
	callq	enqueue_signature
	movq	-32(%rbp), %rdi
	callq	free
# BB#30:
	movl	$65567, %edi            # imm = 0x1001F
	callq	enqueue_signature
	movq	-72(%rbp), %rdi
	callq	free
# BB#31:
	movl	$65568, %edi            # imm = 0x10020
	callq	enqueue_signature
	movq	-96(%rbp), %rdi
	callq	free
# BB#32:
	movl	$65569, %edi            # imm = 0x10021
	callq	enqueue_signature
	movq	-88(%rbp), %rdi
	callq	free
# BB#33:
	movl	$65570, %edi            # imm = 0x10022
	callq	enqueue_signature
	movq	-48(%rbp), %rdi
	callq	free
# BB#34:
	movl	$65571, %edi            # imm = 0x10023
	callq	enqueue_signature
	movq	-40(%rbp), %rdi
	callq	free
# BB#35:
	movl	$65572, %edi            # imm = 0x10024
	callq	enqueue_signature
	leaq	-112(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
# BB#36:
	movl	$65573, %edi            # imm = 0x10025
	callq	enqueue_signature
	movabsq	$.L.str, %rdi
	movl	$1000, %ecx             # imm = 0x3E8
	movq	-112(%rbp), %rax
	subq	-128(%rbp), %rax
	imulq	$1000, %rax, %rsi       # imm = 0x3E8
	movq	-104(%rbp), %rax
	subq	-120(%rbp), %rax
	cqto
	idivq	%rcx
	addq	%rax, %rsi
	movb	$0, %al
	callq	printf
# BB#37:
	movl	$65574, %edi            # imm = 0x10026
	callq	enqueue_signature
	movl	-80(%rbp), %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	IsPowerOfTwo            # -- Begin function IsPowerOfTwo
	.p2align	4, 0x90
	.type	IsPowerOfTwo,@function
IsPowerOfTwo:                           # @IsPowerOfTwo
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi4:
	.cfi_def_cfa_offset 16
.Lcfi5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi6:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Lcfi7:
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
	movl	$655361, %edi           # imm = 0xA0001
	callq	enqueue_signature
	movl	%ebx, -12(%rbp)
	cmpl	$2, -12(%rbp)
	jae	.LBB1_2
# BB#1:
	movl	$655362, %edi           # imm = 0xA0002
	callq	enqueue_signature
	movl	$0, -16(%rbp)
	jmp	.LBB1_5
.LBB1_2:
	movl	$655363, %edi           # imm = 0xA0003
	callq	enqueue_signature
	movl	-12(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	andl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB1_4
# BB#3:
	movl	$655364, %edi           # imm = 0xA0004
	callq	enqueue_signature
	movl	$0, -16(%rbp)
	jmp	.LBB1_5
.LBB1_4:
	movl	$655365, %edi           # imm = 0xA0005
	callq	enqueue_signature
	movl	$1, -16(%rbp)
.LBB1_5:
	movl	$655366, %edi           # imm = 0xA0006
	callq	enqueue_signature
	movl	-16(%rbp), %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	IsPowerOfTwo, .Lfunc_end1-IsPowerOfTwo
	.cfi_endproc
                                        # -- End function
	.globl	NumberOfBitsNeeded      # -- Begin function NumberOfBitsNeeded
	.p2align	4, 0x90
	.type	NumberOfBitsNeeded,@function
NumberOfBitsNeeded:                     # @NumberOfBitsNeeded
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi8:
	.cfi_def_cfa_offset 16
.Lcfi9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi10:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Lcfi11:
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
	movl	$720897, %edi           # imm = 0xB0001
	callq	enqueue_signature
	movl	%ebx, -16(%rbp)
	cmpl	$2, -16(%rbp)
	jae	.LBB2_2
# BB#1:
	movl	$720898, %edi           # imm = 0xB0002
	callq	enqueue_signature
	movabsq	$.L.str.1, %rsi
	movq	stderr, %rdi
	movl	-16(%rbp), %edx
	movb	$0, %al
	callq	fprintf
.LBB2_2:
	movl	$720899, %edi           # imm = 0xB0003
	callq	enqueue_signature
	movl	$0, -12(%rbp)
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movl	$720900, %edi           # imm = 0xB0004
	callq	enqueue_signature
	movl	$1, %eax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
                                        # kill: %CL<def> %ECX<kill>
	shll	%cl, %eax
	andl	%edx, %eax
	cmpl	$0, %eax
	je	.LBB2_5
# BB#4:
	movl	$720901, %edi           # imm = 0xB0005
	callq	enqueue_signature
	movl	-12(%rbp), %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB2_5:                                #   in Loop: Header=BB2_3 Depth=1
	movl	$720902, %edi           # imm = 0xB0006
	callq	enqueue_signature
# BB#6:                                 #   in Loop: Header=BB2_3 Depth=1
	movl	$720903, %edi           # imm = 0xB0007
	callq	enqueue_signature
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_3
.Lfunc_end2:
	.size	NumberOfBitsNeeded, .Lfunc_end2-NumberOfBitsNeeded
	.cfi_endproc
                                        # -- End function
	.globl	ReverseBits             # -- Begin function ReverseBits
	.p2align	4, 0x90
	.type	ReverseBits,@function
ReverseBits:                            # @ReverseBits
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi12:
	.cfi_def_cfa_offset 16
.Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi14:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Lcfi15:
	.cfi_offset %rbx, -32
.Lcfi16:
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movl	%edi, %ebx
	movl	$851969, %edi           # imm = 0xD0001
	callq	enqueue_signature
	movl	%ebx, -28(%rbp)
	movl	%r14d, -32(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movl	$851970, %edi           # imm = 0xD0002
	callq	enqueue_signature
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jae	.LBB3_4
# BB#2:                                 #   in Loop: Header=BB3_1 Depth=1
	movl	$851971, %edi           # imm = 0xD0003
	callq	enqueue_signature
	movl	-20(%rbp), %eax
	shll	$1, %eax
	movl	-28(%rbp), %ecx
	andl	$1, %ecx
	orl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-28(%rbp), %eax
	shrl	$1, %eax
	movl	%eax, -28(%rbp)
# BB#3:                                 #   in Loop: Header=BB3_1 Depth=1
	movl	$851972, %edi           # imm = 0xD0004
	callq	enqueue_signature
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB3_1
.LBB3_4:
	movl	$851973, %edi           # imm = 0xD0005
	callq	enqueue_signature
	movl	-20(%rbp), %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ReverseBits, .Lfunc_end3-ReverseBits
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function Index_to_frequency
.LCPI4_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	Index_to_frequency
	.p2align	4, 0x90
	.type	Index_to_frequency,@function
Index_to_frequency:                     # @Index_to_frequency
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi17:
	.cfi_def_cfa_offset 16
.Lcfi18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi19:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Lcfi20:
	.cfi_offset %rbx, -32
.Lcfi21:
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movl	%edi, %ebx
	movl	$917505, %edi           # imm = 0xE0001
	callq	enqueue_signature
	movl	%ebx, -24(%rbp)
	movl	%r14d, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jb	.LBB4_2
# BB#1:
	movl	$917506, %edi           # imm = 0xE0002
	callq	enqueue_signature
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB4_6
.LBB4_2:
	movl	$917507, %edi           # imm = 0xE0003
	callq	enqueue_signature
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	shrl	$1, %ecx
	cmpl	%ecx, %eax
	ja	.LBB4_4
# BB#3:
	movl	$917508, %edi           # imm = 0xE0004
	callq	enqueue_signature
	movl	-20(%rbp), %eax
	cvtsi2sdq	%rax, %xmm0
	movl	-24(%rbp), %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB4_6
.LBB4_4:
	movl	$917509, %edi           # imm = 0xE0005
	callq	enqueue_signature
# BB#5:
	movl	$917510, %edi           # imm = 0xE0006
	callq	enqueue_signature
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	cvtsi2sdq	%rdx, %xmm0
	movaps	.LCPI4_0(%rip), %xmm1   # xmm1 = [-0.000000e+00,-0.000000e+00]
	pxor	%xmm0, %xmm1
	cvtsi2sdq	%rax, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
.LBB4_6:
	movl	$917511, %edi           # imm = 0xE0007
	callq	enqueue_signature
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Index_to_frequency, .Lfunc_end4-Index_to_frequency
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function fft_float
.LCPI5_0:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI5_1:
	.quad	-4611686018427387904    # double -2
.LCPI5_2:
	.quad	4611686018427387904     # double 2
	.text
	.globl	fft_float
	.p2align	4, 0x90
	.type	fft_float,@function
fft_float:                              # @fft_float
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi22:
	.cfi_def_cfa_offset 16
.Lcfi23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi24:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
.Lcfi25:
	.cfi_offset %rbx, -56
.Lcfi26:
	.cfi_offset %r12, -48
.Lcfi27:
	.cfi_offset %r13, -40
.Lcfi28:
	.cfi_offset %r14, -32
.Lcfi29:
	.cfi_offset %r15, -24
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %r13
	movl	%esi, %ebx
	movl	%edi, %r14d
	movl	$983041, %edi           # imm = 0xF0001
	callq	enqueue_signature
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	%r14d, -52(%rbp)
	movl	%ebx, -100(%rbp)
	movq	%r13, -248(%rbp)
	movq	%r12, -240(%rbp)
	movq	%r15, -88(%rbp)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)
	movsd	%xmm0, -120(%rbp)
	movl	-52(%rbp), %edi
	callq	IsPowerOfTwo
	movl	%eax, %ebx
# BB#1:
	movl	$983042, %edi           # imm = 0xF0002
	callq	enqueue_signature
	cmpl	$0, %ebx
	jne	.LBB5_3
# BB#2:
	movl	$983043, %edi           # imm = 0xF0003
	callq	enqueue_signature
	movabsq	$.L.str.4, %rsi
	movq	stderr, %rdi
	movl	-52(%rbp), %edx
	movb	$0, %al
	callq	fprintf
.LBB5_3:
	movl	$983044, %edi           # imm = 0xF0004
	callq	enqueue_signature
	cmpl	$0, -100(%rbp)
	je	.LBB5_5
# BB#4:
	movl	$983045, %edi           # imm = 0xF0005
	callq	enqueue_signature
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%xmm0, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm0
	movsd	%xmm0, -120(%rbp)
.LBB5_5:
	movl	$983046, %edi           # imm = 0xF0006
	callq	enqueue_signature
	movabsq	$.L.str.1.5, %rsi
	movq	-248(%rbp), %rdi
	callq	CheckPointer
# BB#6:
	movl	$983047, %edi           # imm = 0xF0007
	callq	enqueue_signature
	movabsq	$.L.str.2, %rsi
	movq	-88(%rbp), %rdi
	callq	CheckPointer
# BB#7:
	movl	$983048, %edi           # imm = 0xF0008
	callq	enqueue_signature
	movabsq	$.L.str.3, %rsi
	movq	-80(%rbp), %rdi
	callq	CheckPointer
# BB#8:
	movl	$983049, %edi           # imm = 0xF0009
	callq	enqueue_signature
	movl	-52(%rbp), %edi
	callq	NumberOfBitsNeeded
	movl	%eax, %ebx
# BB#9:
	movl	$983050, %edi           # imm = 0xF000A
	callq	enqueue_signature
	movl	%ebx, -124(%rbp)
	movl	$0, -44(%rbp)
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	movl	$983051, %edi           # imm = 0xF000B
	callq	enqueue_signature
	movl	-44(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jae	.LBB5_17
# BB#11:                                #   in Loop: Header=BB5_10 Depth=1
	movl	$983052, %edi           # imm = 0xF000C
	callq	enqueue_signature
	movl	-44(%rbp), %edi
	movl	-124(%rbp), %esi
	callq	ReverseBits
	movl	%eax, %ebx
# BB#12:                                #   in Loop: Header=BB5_10 Depth=1
	movl	$983053, %edi           # imm = 0xF000D
	callq	enqueue_signature
	movl	%ebx, -48(%rbp)
	movq	-248(%rbp), %rax
	movl	-44(%rbp), %ecx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movl	-48(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	cmpq	$0, -240(%rbp)
	jne	.LBB5_14
# BB#13:                                #   in Loop: Header=BB5_10 Depth=1
	movl	$983054, %edi           # imm = 0xF000E
	callq	enqueue_signature
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB5_15
.LBB5_14:                               #   in Loop: Header=BB5_10 Depth=1
	movl	$983055, %edi           # imm = 0xF000F
	callq	enqueue_signature
	movq	-240(%rbp), %rax
	movl	-44(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB5_15:                               #   in Loop: Header=BB5_10 Depth=1
	movl	$983056, %edi           # imm = 0xF0010
	callq	enqueue_signature
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
# BB#16:                                #   in Loop: Header=BB5_10 Depth=1
	movl	$983057, %edi           # imm = 0xF0011
	callq	enqueue_signature
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_10
.LBB5_17:
	movl	$983058, %edi           # imm = 0xF0012
	callq	enqueue_signature
	movl	$1, -92(%rbp)
	movl	$2, -68(%rbp)
.LBB5_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_24 Depth 2
                                        #       Child Loop BB5_26 Depth 3
	movl	$983059, %edi           # imm = 0xF0013
	callq	enqueue_signature
	movl	-68(%rbp), %eax
	cmpl	-52(%rbp), %eax
	ja	.LBB5_33
# BB#19:                                #   in Loop: Header=BB5_18 Depth=1
	movsd	.LCPI5_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movl	$983060, %edi           # imm = 0xF0014
	callq	enqueue_signature
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-68(%rbp), %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	callq	sin
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
# BB#20:                                #   in Loop: Header=BB5_18 Depth=1
	movl	$983061, %edi           # imm = 0xF0015
	callq	enqueue_signature
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%xmm0, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm0
	callq	sin
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
# BB#21:                                #   in Loop: Header=BB5_18 Depth=1
	movl	$983062, %edi           # imm = 0xF0016
	callq	enqueue_signature
	movsd	.LCPI5_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -264(%rbp)
	mulsd	-112(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
# BB#22:                                #   in Loop: Header=BB5_18 Depth=1
	movl	$983063, %edi           # imm = 0xF0017
	callq	enqueue_signature
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%xmm0, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm0
	callq	cos
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
# BB#23:                                #   in Loop: Header=BB5_18 Depth=1
	movl	$983064, %edi           # imm = 0xF0018
	callq	enqueue_signature
	movsd	.LCPI5_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -216(%rbp)
	mulsd	-216(%rbp), %xmm0
	movsd	%xmm0, -208(%rbp)
	movl	$0, -44(%rbp)
.LBB5_24:                               #   Parent Loop BB5_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_26 Depth 3
	movl	$983065, %edi           # imm = 0xF0019
	callq	enqueue_signature
	movl	-44(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jae	.LBB5_31
# BB#25:                                #   in Loop: Header=BB5_24 Depth=2
	movl	$983066, %edi           # imm = 0xF001A
	callq	enqueue_signature
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	$0, -96(%rbp)
.LBB5_26:                               #   Parent Loop BB5_18 Depth=1
                                        #     Parent Loop BB5_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$983067, %edi           # imm = 0xF001B
	callq	enqueue_signature
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jae	.LBB5_29
# BB#27:                                #   in Loop: Header=BB5_26 Depth=3
	movl	$983068, %edi           # imm = 0xF001C
	callq	enqueue_signature
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-184(%rbp), %xmm0
	subsd	-176(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-152(%rbp), %xmm0
	subsd	-144(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movl	-48(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -72(%rbp)
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movl	-72(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movl	-72(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -232(%rbp)
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movl	-72(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movl	-72(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -224(%rbp)
	movq	-88(%rbp), %rax
	movl	-48(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm0
	subsd	-232(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-88(%rbp), %rax
	movl	-72(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm0
	subsd	-224(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-80(%rbp), %rax
	movl	-72(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movl	-48(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# BB#28:                                #   in Loop: Header=BB5_26 Depth=3
	movl	$983069, %edi           # imm = 0xF001D
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB5_26
.LBB5_29:                               #   in Loop: Header=BB5_24 Depth=2
	movl	$983070, %edi           # imm = 0xF001E
	callq	enqueue_signature
# BB#30:                                #   in Loop: Header=BB5_24 Depth=2
	movl	$983071, %edi           # imm = 0xF001F
	callq	enqueue_signature
	movl	-68(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_24
.LBB5_31:                               #   in Loop: Header=BB5_18 Depth=1
	movl	$983072, %edi           # imm = 0xF0020
	callq	enqueue_signature
	movl	-68(%rbp), %eax
	movl	%eax, -92(%rbp)
# BB#32:                                #   in Loop: Header=BB5_18 Depth=1
	movl	$983073, %edi           # imm = 0xF0021
	callq	enqueue_signature
	movl	-68(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB5_18
.LBB5_33:
	movl	$983074, %edi           # imm = 0xF0022
	callq	enqueue_signature
	cmpl	$0, -100(%rbp)
	je	.LBB5_39
# BB#34:
	movl	$983075, %edi           # imm = 0xF0023
	callq	enqueue_signature
	movl	-52(%rbp), %eax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -200(%rbp)
	movl	$0, -44(%rbp)
.LBB5_35:                               # =>This Inner Loop Header: Depth=1
	movl	$983076, %edi           # imm = 0xF0024
	callq	enqueue_signature
	movl	-44(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jae	.LBB5_38
# BB#36:                                #   in Loop: Header=BB5_35 Depth=1
	movl	$983077, %edi           # imm = 0xF0025
	callq	enqueue_signature
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movl	-44(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movl	-44(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# BB#37:                                #   in Loop: Header=BB5_35 Depth=1
	movl	$983078, %edi           # imm = 0xF0026
	callq	enqueue_signature
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_35
.LBB5_38:
	movl	$983079, %edi           # imm = 0xF0027
	callq	enqueue_signature
.LBB5_39:
	movl	$983080, %edi           # imm = 0xF0028
	callq	enqueue_signature
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	fft_float, .Lfunc_end5-fft_float
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function CheckPointer
	.type	CheckPointer,@function
CheckPointer:                           # @CheckPointer
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi30:
	.cfi_def_cfa_offset 16
.Lcfi31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi32:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Lcfi33:
	.cfi_offset %rbx, -32
.Lcfi34:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$1048577, %edi          # imm = 0x100001
	callq	enqueue_signature
	movq	%rbx, -32(%rbp)
	movq	%r14, -24(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_2
# BB#1:
	movl	$1048578, %edi          # imm = 0x100002
	callq	enqueue_signature
	movabsq	$.L.str.4.6, %rsi
	movq	stderr, %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
.LBB6_2:
	movl	$1048579, %edi          # imm = 0x100003
	callq	enqueue_signature
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	CheckPointer, .Lfunc_end6-CheckPointer
	.cfi_endproc
                                        # -- End function
	.globl	CallcheckerSet          # -- Begin function CallcheckerSet
	.p2align	4, 0x90
	.type	CallcheckerSet,@function
CallcheckerSet:                         # @CallcheckerSet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi35:
	.cfi_def_cfa_offset 16
	callq	init_monitor
	movl	$1, %edi
	callq	enqueue_signature
	popq	%rax
	retq
.Lfunc_end7:
	.size	CallcheckerSet, .Lfunc_end7-CallcheckerSet
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%ld\n"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\n"
	.size	.L.str.1, 73

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Error in fft():  NumSamples=%u is not power of two\n"
	.size	.L.str.4, 52

	.type	.L.str.1.5,@object      # @.str.1.5
.L.str.1.5:
	.asciz	"RealIn"
	.size	.L.str.1.5, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"RealOut"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ImagOut"
	.size	.L.str.3, 8

	.type	.L.str.4.6,@object      # @.str.4.6
.L.str.4.6:
	.asciz	"Error in fft_float():  %s == NULL\n"
	.size	.L.str.4.6, 35


	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.section	".note.GNU-stack","",@progbits
