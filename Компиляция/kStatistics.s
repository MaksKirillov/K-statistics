	.file	"kStatistics.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	kStatistics
	.type	kStatistics, @function
kStatistics:
	beq	a1,zero,.L2
	addi	a6,a1,-1
	slli	a1,a1,2
	add	a1,a0,a1
	li	a7,1
	j	.L3
.L4:
	addi	a5,a5,4
	beq	a5,a1,.L6
.L5:
	lw	a4,-4(a5)
	lw	a3,0(a5)
	bleu	a4,a3,.L4
	sw	a3,-4(a5)
	sw	a4,0(a5)
	j	.L4
.L6:
	addi	a6,a6,-1
	addi	a1,a1,-4
.L3:
	addi	a4,a6,1
	addi	a5,a0,4
	bgtu	a4,a7,.L5
	bne	a6,zero,.L6
.L2:
	slli	a5,a2,2
	add	a0,a0,a5
	lw	a0,-4(a0)
	ret
	.size	kStatistics, .-kStatistics
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
