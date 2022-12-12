	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"The 1st test was successful"
	.align	2
.LC1:
	.string	"The 1st test failed"
	.align	2
.LC2:
	.string	"The 2nd test was successful"
	.align	2
.LC3:
	.string	"The 2nd test failed"
	.align	2
.LC4:
	.string	"The 3rd test was successful"
	.align	2
.LC5:
	.string	"The 3rd test failed"
	.align	2
.LC6:
	.string	"All the tests were successful"
	.align	2
.LC7:
	.string	"Some of the tests were unsuccessful"
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sw	ra,12(sp)
	li	a2,1
	li	a1,10
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	call	kStatistics
	li	a5,2
	beq	a0,a5,.L11
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	puts
	lui	a5,%hi(isTestsSuccessful.2)
	sb	zero,%lo(isTestsSuccessful.2)(a5)
.L3:
	li	a2,4
	li	a1,6
	lui	a0,%hi(.LANCHOR0+40)
	addi	a0,a0,%lo(.LANCHOR0+40)
	call	kStatistics
	li	a5,11
	beq	a0,a5,.L12
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	puts
	lui	a5,%hi(isTestsSuccessful.2)
	sb	zero,%lo(isTestsSuccessful.2)(a5)
.L5:
	li	a2,12
	li	a1,12
	lui	a0,%hi(.LANCHOR0+64)
	addi	a0,a0,%lo(.LANCHOR0+64)
	call	kStatistics
	li	a5,55
	beq	a0,a5,.L13
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	puts
	lui	a5,%hi(isTestsSuccessful.2)
	sb	zero,%lo(isTestsSuccessful.2)(a5)
.L8:
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
	j	.L9
.L11:
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	puts
	j	.L3
.L12:
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	puts
	j	.L5
.L13:
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	puts
	lui	a5,%hi(isTestsSuccessful.2)
	lbu	a5,%lo(isTestsSuccessful.2)(a5)
	beq	a5,zero,.L8
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf
.L9:
	li	a0,0
	lw	ra,12(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	array1.3, @object
	.size	array1.3, 40
array1.3:
	.word	6
	.word	11
	.word	23
	.word	21
	.word	9
	.word	5
	.word	15
	.word	40
	.word	8
	.word	2
	.type	array2.1, @object
	.size	array2.1, 24
array2.1:
	.word	6
	.word	11
	.word	23
	.word	21
	.word	9
	.word	5
	.type	array3.0, @object
	.size	array3.0, 48
array3.0:
	.word	6
	.word	11
	.word	23
	.word	21
	.word	9
	.word	5
	.word	15
	.word	40
	.word	8
	.word	2
	.word	55
	.word	4
	.section	.sdata,"aw"
	.type	isTestsSuccessful.2, @object
	.size	isTestsSuccessful.2, 1
isTestsSuccessful.2:
	.byte	1
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
