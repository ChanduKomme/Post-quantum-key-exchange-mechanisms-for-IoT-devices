	.file	"utils_rbtree.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils" "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_rbtree.c"
	.section	.text.rb_node_alloc,"ax",@progbits
	.align	1
	.globl	rb_node_alloc
	.type	rb_node_alloc, @function
rb_node_alloc:
.LFB4:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_rbtree.c"
	.loc 1 37 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 38 12
	li	a0,16
	call	pvPortMalloc
	mv	a5,a0
	.loc 1 39 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	rb_node_alloc, .-rb_node_alloc
	.section	.text.rb_node_init,"ax",@progbits
	.align	1
	.globl	rb_node_init
	.type	rb_node_init, @function
rb_node_init:
.LFB5:
	.loc 1 42 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 43 8
	lw	a5,-20(s0)
	beq	a5,zero,.L4
	.loc 1 44 19
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,0(a5)
	.loc 1 45 39
	lw	a5,-20(s0)
	sw	zero,8(a5)
	.loc 1 45 35
	lw	a5,-20(s0)
	lw	a4,8(a5)
	.loc 1 45 23
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 46 21
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,12(a5)
.L4:
	.loc 1 48 12
	lw	a5,-20(s0)
	.loc 1 49 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	rb_node_init, .-rb_node_init
	.section	.text.rb_node_create,"ax",@progbits
	.align	1
	.globl	rb_node_create
	.type	rb_node_create, @function
rb_node_create:
.LFB6:
	.loc 1 52 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 53 12
	call	rb_node_alloc
	mv	a5,a0
	.loc 1 53 12 is_stmt 0 discriminator 1
	lw	a1,-20(s0)
	mv	a0,a5
	call	rb_node_init
	mv	a5,a0
	.loc 1 54 1 is_stmt 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	rb_node_create, .-rb_node_create
	.section	.text.rb_node_dealloc,"ax",@progbits
	.align	1
	.globl	rb_node_dealloc
	.type	rb_node_dealloc, @function
rb_node_dealloc:
.LFB7:
	.loc 1 57 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 58 8
	lw	a5,-20(s0)
	beq	a5,zero,.L10
	.loc 1 59 9
	lw	a0,-20(s0)
	call	vPortFree
.L10:
	.loc 1 61 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	rb_node_dealloc, .-rb_node_dealloc
	.section	.text.rb_node_is_red,"ax",@progbits
	.align	1
	.type	rb_node_is_red, @function
rb_node_is_red:
.LFB8:
	.loc 1 64 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 65 29
	lw	a5,-20(s0)
	beq	a5,zero,.L12
	.loc 1 65 29 is_stmt 0 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 65 29
	j	.L14
.L12:
	.loc 1 65 29 discriminator 2
	li	a5,0
.L14:
	.loc 1 66 1 is_stmt 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	rb_node_is_red, .-rb_node_is_red
	.section	.text.rb_node_rotate,"ax",@progbits
	.align	1
	.type	rb_node_rotate, @function
rb_node_rotate:
.LFB9:
	.loc 1 69 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 70 21
	sw	zero,-20(s0)
	.loc 1 72 8
	lw	a5,-36(s0)
	beq	a5,zero,.L16
	.loc 1 73 29
	lw	a5,-40(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 73 16
	lw	a4,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 74 20
	lw	a5,-40(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a2,a5
	.loc 1 74 40
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,4(a5)
	.loc 1 74 26
	lw	a3,-36(s0)
	slli	a5,a2,2
	add	a5,a3,a5
	sw	a4,4(a5)
	.loc 1 75 27
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,4(a5)
	.loc 1 76 19
	lw	a5,-36(s0)
	li	a4,1
	sw	a4,0(a5)
	.loc 1 77 21
	lw	a5,-20(s0)
	sw	zero,0(a5)
.L16:
	.loc 1 79 12
	lw	a5,-20(s0)
	.loc 1 80 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	rb_node_rotate, .-rb_node_rotate
	.section	.text.rb_node_rotate2,"ax",@progbits
	.align	1
	.type	rb_node_rotate2, @function
rb_node_rotate2:
.LFB10:
	.loc 1 83 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 84 21
	sw	zero,-20(s0)
	.loc 1 86 8
	lw	a5,-36(s0)
	beq	a5,zero,.L19
	.loc 1 87 54
	lw	a5,-40(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 87 28
	lw	a4,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,4(a5)
	lw	a5,-40(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a3,a5
	.loc 1 87 20
	lw	a5,-40(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	s1,a5
	.loc 1 87 28
	mv	a1,a3
	mv	a0,a4
	call	rb_node_rotate
	mv	a3,a0
	.loc 1 87 26 discriminator 1
	lw	a4,-36(s0)
	slli	a5,s1,2
	add	a5,a4,a5
	sw	a3,4(a5)
	.loc 1 88 18
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	rb_node_rotate
	sw	a0,-20(s0)
.L19:
	.loc 1 90 12
	lw	a5,-20(s0)
	.loc 1 91 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	rb_node_rotate2, .-rb_node_rotate2
	.section	.text.rb_tree_node_cmp_ptr_cb,"ax",@progbits
	.align	1
	.globl	rb_tree_node_cmp_ptr_cb
	.type	rb_tree_node_cmp_ptr_cb, @function
rb_tree_node_cmp_ptr_cb:
.LFB11:
	.loc 1 95 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	.loc 1 96 14
	lw	a5,-24(s0)
	lw	a4,12(a5)
	.loc 1 96 25
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 96 22
	sgtu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a3,a5
	.loc 1 96 38
	lw	a5,-24(s0)
	lw	a4,12(a5)
	.loc 1 96 49
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 96 46
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	.loc 1 96 34
	sub	a5,a3,a5
	.loc 1 97 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	rb_tree_node_cmp_ptr_cb, .-rb_tree_node_cmp_ptr_cb
	.section	.text.rb_tree_node_dealloc_cb,"ax",@progbits
	.align	1
	.globl	rb_tree_node_dealloc_cb
	.type	rb_tree_node_dealloc_cb, @function
rb_tree_node_dealloc_cb:
.LFB12:
	.loc 1 100 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 101 8
	lw	a5,-20(s0)
	beq	a5,zero,.L25
	.loc 1 102 12
	lw	a5,-24(s0)
	beq	a5,zero,.L25
	.loc 1 103 13
	lw	a0,-24(s0)
	call	rb_node_dealloc
.L25:
	.loc 1 106 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	rb_tree_node_dealloc_cb, .-rb_tree_node_dealloc_cb
	.section	.text.rb_tree_alloc,"ax",@progbits
	.align	1
	.globl	rb_tree_alloc
	.type	rb_tree_alloc, @function
rb_tree_alloc:
.LFB13:
	.loc 1 110 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 111 12
	li	a0,16
	call	pvPortMalloc
	mv	a5,a0
	.loc 1 112 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	rb_tree_alloc, .-rb_tree_alloc
	.section	.text.rb_tree_init,"ax",@progbits
	.align	1
	.globl	rb_tree_init
	.type	rb_tree_init, @function
rb_tree_init:
.LFB14:
	.loc 1 115 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 116 8
	lw	a5,-20(s0)
	beq	a5,zero,.L29
	.loc 1 117 20
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 1 118 20
	lw	a5,-20(s0)
	sw	zero,8(a5)
	.loc 1 119 47
	lw	a5,-24(s0)
	beq	a5,zero,.L30
	.loc 1 119 47 is_stmt 0 discriminator 1
	lw	a5,-24(s0)
	j	.L31
.L30:
	.loc 1 119 47 discriminator 2
	lui	a5,%hi(rb_tree_node_cmp_ptr_cb)
	addi	a5,a5,%lo(rb_tree_node_cmp_ptr_cb)
.L31:
	.loc 1 119 19 is_stmt 1 discriminator 4
	lw	a4,-20(s0)
	sw	a5,4(a4)
.L29:
	.loc 1 122 12
	lw	a5,-20(s0)
	.loc 1 123 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	rb_tree_init, .-rb_tree_init
	.section	.text.rb_tree_create,"ax",@progbits
	.align	1
	.globl	rb_tree_create
	.type	rb_tree_create, @function
rb_tree_create:
.LFB15:
	.loc 1 126 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 127 12
	call	rb_tree_alloc
	mv	a5,a0
	.loc 1 127 12 is_stmt 0 discriminator 1
	lw	a1,-20(s0)
	mv	a0,a5
	call	rb_tree_init
	mv	a5,a0
	.loc 1 128 1 is_stmt 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	rb_tree_create, .-rb_tree_create
	.section	.text.rb_tree_dealloc,"ax",@progbits
	.align	1
	.globl	rb_tree_dealloc
	.type	rb_tree_dealloc, @function
rb_tree_dealloc:
.LFB16:
	.loc 1 131 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 132 8
	lw	a5,-36(s0)
	beq	a5,zero,.L42
	.loc 1 133 12
	lw	a5,-40(s0)
	beq	a5,zero,.L37
.LBB2:
	.loc 1 134 29
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 135 29
	sw	zero,-24(s0)
	.loc 1 140 19
	j	.L38
.L41:
	.loc 1 141 31
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 141 20
	bne	a5,zero,.L39
	.loc 1 144 26
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sw	a5,-24(s0)
	.loc 1 145 21
	lw	a5,-40(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	jalr	a5
.LVL0:
	.loc 1 146 26
	sw	zero,-20(s0)
	j	.L40
.L39:
	.loc 1 150 26
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 151 47
	lw	a5,-24(s0)
	lw	a4,8(a5)
	.loc 1 151 35
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 152 35
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	sw	a4,8(a5)
.L40:
	.loc 1 154 22
	lw	a5,-24(s0)
	sw	a5,-20(s0)
.L38:
	.loc 1 140 20
	lw	a5,-20(s0)
	bne	a5,zero,.L41
.L37:
.LBE2:
	.loc 1 157 9
	lw	a0,-36(s0)
	call	vPortFree
.L42:
	.loc 1 159 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	rb_tree_dealloc, .-rb_tree_dealloc
	.section	.rodata
	.align	2
.LC0:
	.string	"Red violation"
	.align	2
.LC1:
	.string	"Binary tree violation"
	.align	2
.LC2:
	.string	"Black violation"
	.section	.text.rb_tree_test,"ax",@progbits
	.align	1
	.globl	rb_tree_test
	.type	rb_tree_test, @function
rb_tree_test:
.LFB17:
	.loc 1 162 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 165 8
	lw	a5,-40(s0)
	bne	a5,zero,.L44
	.loc 1 166 16
	li	a5,1
	j	.L45
.L44:
.LBB3:
	.loc 1 168 25
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 169 25
	lw	a5,-40(s0)
	lw	a5,8(a5)
	sw	a5,-24(s0)
	.loc 1 172 13
	lw	a0,-40(s0)
	call	rb_node_is_red
	mv	a5,a0
	.loc 1 172 12 discriminator 1
	beq	a5,zero,.L46
	.loc 1 173 17
	lw	a0,-20(s0)
	call	rb_node_is_red
	mv	a5,a0
	.loc 1 173 16 discriminator 1
	bne	a5,zero,.L47
	.loc 1 173 39 discriminator 2
	lw	a0,-24(s0)
	call	rb_node_is_red
	mv	a5,a0
	.loc 1 173 36 discriminator 3
	beq	a5,zero,.L46
.L47:
	.loc 1 174 17
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 175 24
	li	a5,0
	j	.L45
.L46:
	.loc 1 179 14
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	rb_tree_test
	sw	a0,-28(s0)
	.loc 1 180 14
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	rb_tree_test
	sw	a0,-32(s0)
	.loc 1 183 12
	lw	a5,-20(s0)
	beq	a5,zero,.L48
	.loc 1 183 33 discriminator 1
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 183 29 discriminator 1
	lw	a2,-40(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	jalr	a5
.LVL1:
	mv	a5,a0
	.loc 1 183 26 discriminator 2
	bge	a5,zero,.L49
.L48:
	.loc 1 184 13
	lw	a5,-24(s0)
	beq	a5,zero,.L50
	.loc 1 184 35 discriminator 1
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 184 31 discriminator 1
	lw	a2,-40(s0)
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	jalr	a5
.LVL2:
	mv	a5,a0
	.loc 1 184 28 discriminator 2
	bgt	a5,zero,.L50
.L49:
	.loc 1 186 13
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	puts
	.loc 1 187 20
	li	a5,0
	j	.L45
.L50:
	.loc 1 191 12
	lw	a5,-28(s0)
	beq	a5,zero,.L51
	.loc 1 191 22 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L51
	.loc 1 191 33 discriminator 2
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	beq	a4,a5,.L51
	.loc 1 192 13
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	puts
	.loc 1 193 20
	li	a5,0
	j	.L45
.L51:
	.loc 1 197 12
	lw	a5,-28(s0)
	beq	a5,zero,.L52
	.loc 1 197 22 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L52
	.loc 1 198 20
	lw	a0,-40(s0)
	call	rb_node_is_red
	mv	a5,a0
	.loc 1 198 49 discriminator 1
	bne	a5,zero,.L53
	.loc 1 198 49 is_stmt 0 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,1
	.loc 1 198 49
	j	.L45
.L53:
	.loc 1 198 49 discriminator 3
	lw	a5,-28(s0)
	.loc 1 198 49
	j	.L45
.L52:
	.loc 1 200 20 is_stmt 1
	li	a5,0
.L45:
.LBE3:
	.loc 1 202 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	rb_tree_test, .-rb_tree_test
	.section	.text.rb_tree_find,"ax",@progbits
	.align	1
	.globl	rb_tree_find
	.type	rb_tree_find, @function
rb_tree_find:
.LFB18:
	.loc 1 205 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	.loc 1 206 11
	sw	zero,-20(s0)
	.loc 1 208 8
	lw	a5,-52(s0)
	beq	a5,zero,.L56
.LBB4:
	.loc 1 209 24
	sw	zero,-44(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	sw	zero,-32(s0)
	lw	a5,-56(s0)
	sw	a5,-32(s0)
	.loc 1 210 25
	lw	a5,-52(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 211 13
	sw	zero,-28(s0)
	.loc 1 212 15
	j	.L57
.L60:
	.loc 1 213 28
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 213 24
	addi	a4,s0,-44
	mv	a2,a4
	lw	a1,-24(s0)
	lw	a0,-52(s0)
	jalr	a5
.LVL3:
	sw	a0,-28(s0)
	.loc 1 213 16 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L64
	.loc 1 217 35
	lw	a5,-28(s0)
	srli	a5,a5,31
	andi	a5,a5,0xff
	.loc 1 217 20
	lw	a4,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	sw	a5,-24(s0)
.L57:
	.loc 1 212 16
	lw	a5,-24(s0)
	bne	a5,zero,.L60
	j	.L59
.L64:
	.loc 1 219 17
	nop
.L59:
	.loc 1 222 33
	lw	a5,-24(s0)
	beq	a5,zero,.L61
	.loc 1 222 16 discriminator 1
	lw	a5,-24(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	j	.L56
.L61:
	.loc 1 222 16 is_stmt 0 discriminator 2
	sw	zero,-20(s0)
.L56:
.LBE4:
	.loc 1 224 12 is_stmt 1
	lw	a5,-20(s0)
	.loc 1 225 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	rb_tree_find, .-rb_tree_find
	.section	.text.rb_tree_insert,"ax",@progbits
	.align	1
	.globl	rb_tree_insert
	.type	rb_tree_insert, @function
rb_tree_insert:
.LFB19:
	.loc 1 229 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 230 12
	lw	a0,-24(s0)
	call	rb_node_create
	mv	a5,a0
	.loc 1 230 12 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-20(s0)
	call	rb_tree_insert_node
	mv	a5,a0
	.loc 1 231 1 is_stmt 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	rb_tree_insert, .-rb_tree_insert
	.section	.text.rb_tree_insert_node,"ax",@progbits
	.align	1
	.globl	rb_tree_insert_node
	.type	rb_tree_insert_node, @function
rb_tree_insert_node:
.LFB20:
	.loc 1 235 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	.loc 1 236 8
	lw	a5,-68(s0)
	beq	a5,zero,.L68
	.loc 1 236 14 discriminator 1
	lw	a5,-72(s0)
	beq	a5,zero,.L68
	.loc 1 237 17
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 1 237 12
	bne	a5,zero,.L69
	.loc 1 238 24
	lw	a5,-68(s0)
	lw	a4,-72(s0)
	sw	a4,0(a5)
	j	.L70
.L69:
.LBB5:
	.loc 1 240 28
	sw	zero,-60(s0)
	sw	zero,-56(s0)
	sw	zero,-52(s0)
	sw	zero,-48(s0)
	.loc 1 243 17
	sw	zero,-36(s0)
	.loc 1 243 26
	sw	zero,-40(s0)
	.loc 1 246 15
	addi	a5,s0,-60
	sw	a5,-24(s0)
	.loc 1 247 19
	sw	zero,-28(s0)
	.loc 1 247 15
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	.loc 1 248 34
	lw	a5,-68(s0)
	lw	a4,0(a5)
	.loc 1 248 28
	lw	a5,-24(s0)
	sw	a4,8(a5)
	.loc 1 248 15
	lw	a5,-24(s0)
	lw	a5,8(a5)
	sw	a5,-32(s0)
.L78:
	.loc 1 252 20
	lw	a5,-32(s0)
	bne	a5,zero,.L71
	.loc 1 255 38
	lw	a5,-72(s0)
	sw	a5,-32(s0)
	.loc 1 255 34
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,4(a5)
	j	.L72
.L71:
	.loc 1 256 50
	lw	a5,-32(s0)
	lw	a5,4(a5)
	.loc 1 256 28
	mv	a0,a5
	call	rb_node_is_red
	mv	a5,a0
	.loc 1 256 27 discriminator 1
	beq	a5,zero,.L72
	.loc 1 256 80 discriminator 2
	lw	a5,-32(s0)
	lw	a5,8(a5)
	.loc 1 256 58 discriminator 2
	mv	a0,a5
	call	rb_node_is_red
	mv	a5,a0
	.loc 1 256 55 discriminator 3
	beq	a5,zero,.L72
	.loc 1 259 28
	lw	a5,-32(s0)
	li	a4,1
	sw	a4,0(a5)
	.loc 1 260 28
	lw	a5,-32(s0)
	lw	a5,4(a5)
	.loc 1 260 37
	sw	zero,0(a5)
	.loc 1 261 28
	lw	a5,-32(s0)
	lw	a5,8(a5)
	.loc 1 261 37
	sw	zero,0(a5)
.L72:
	.loc 1 264 21
	lw	a0,-32(s0)
	call	rb_node_is_red
	mv	a5,a0
	.loc 1 264 20 discriminator 1
	beq	a5,zero,.L73
	.loc 1 264 42 discriminator 2
	lw	a0,-28(s0)
	call	rb_node_is_red
	mv	a5,a0
	.loc 1 264 39 discriminator 3
	beq	a5,zero,.L73
.LBB6:
	.loc 1 267 39
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 267 43
	lw	a4,-20(s0)
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 267 25
	sw	a5,-44(s0)
	.loc 1 268 37
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 268 24
	lw	a4,-32(s0)
	bne	a4,a5,.L74
	.loc 1 269 41
	lw	a5,-40(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-20(s0)
	call	rb_node_rotate
	mv	a3,a0
	.loc 1 269 39 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	a3,4(a5)
	j	.L73
.L74:
	.loc 1 271 41
	lw	a5,-40(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-20(s0)
	call	rb_node_rotate2
	mv	a3,a0
	.loc 1 271 39 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	a3,4(a5)
.L73:
.LBE6:
	.loc 1 277 25
	lw	a5,-68(s0)
	lw	a5,4(a5)
	.loc 1 277 21
	lw	a2,-72(s0)
	lw	a1,-32(s0)
	lw	a0,-68(s0)
	jalr	a5
.LVL4:
	mv	a5,a0
	.loc 1 277 20 discriminator 1
	beq	a5,zero,.L81
	.loc 1 281 22
	lw	a5,-36(s0)
	sw	a5,-40(s0)
	.loc 1 282 27
	lw	a5,-68(s0)
	lw	a5,4(a5)
	.loc 1 282 23
	lw	a2,-72(s0)
	lw	a1,-32(s0)
	lw	a0,-68(s0)
	jalr	a5
.LVL5:
	mv	a5,a0
	.loc 1 282 48 discriminator 1
	srli	a5,a5,31
	andi	a5,a5,0xff
	.loc 1 282 21 discriminator 1
	sw	a5,-36(s0)
	.loc 1 285 20
	lw	a5,-20(s0)
	beq	a5,zero,.L77
	.loc 1 286 23
	lw	a5,-20(s0)
	sw	a5,-24(s0)
.L77:
	.loc 1 289 19
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	.loc 1 289 26
	lw	a5,-32(s0)
	sw	a5,-28(s0)
	.loc 1 290 19
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	sw	a5,-32(s0)
	.loc 1 252 20
	j	.L78
.L81:
	.loc 1 278 21
	nop
	.loc 1 294 35
	lw	a4,-52(s0)
	.loc 1 294 24
	lw	a5,-68(s0)
	sw	a4,0(a5)
.L70:
.LBE5:
	.loc 1 298 13
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 1 298 25
	sw	zero,0(a5)
	.loc 1 299 15
	lw	a5,-68(s0)
	lw	a5,8(a5)
	.loc 1 299 9
	addi	a4,a5,1
	lw	a5,-68(s0)
	sw	a4,8(a5)
.L68:
	.loc 1 302 12
	li	a5,1
	.loc 1 303 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	rb_tree_insert_node, .-rb_tree_insert_node
	.section	.text.rb_tree_remove_with_cb,"ax",@progbits
	.align	1
	.globl	rb_tree_remove_with_cb
	.type	rb_tree_remove_with_cb, @function
rb_tree_remove_with_cb:
.LFB21:
	.loc 1 309 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	sw	a2,-108(s0)
	.loc 1 310 13
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 1 310 8
	beq	a5,zero,.L83
.LBB7:
	.loc 1 311 24
	sw	zero,-68(s0)
	sw	zero,-64(s0)
	sw	zero,-60(s0)
	sw	zero,-56(s0)
	.loc 1 312 24
	sw	zero,-84(s0)
	sw	zero,-80(s0)
	sw	zero,-76(s0)
	sw	zero,-72(s0)
	lw	a5,-104(s0)
	sw	a5,-72(s0)
	.loc 1 314 25
	sw	zero,-28(s0)
	.loc 1 315 13
	li	a5,1
	sw	a5,-32(s0)
	.loc 1 318 11
	addi	a5,s0,-68
	sw	a5,-20(s0)
	.loc 1 319 15
	sw	zero,-24(s0)
	.loc 1 319 11
	lw	a5,-24(s0)
	sw	a5,-36(s0)
	.loc 1 320 26
	lw	a5,-100(s0)
	lw	a4,0(a5)
	.loc 1 320 20
	lw	a5,-20(s0)
	sw	a4,8(a5)
	.loc 1 324 15
	j	.L84
.L91:
.LBB8:
	.loc 1 325 17
	lw	a5,-32(s0)
	sw	a5,-44(s0)
	.loc 1 328 15
	lw	a5,-24(s0)
	sw	a5,-36(s0)
	.loc 1 328 22
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 329 15
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 330 23
	lw	a5,-100(s0)
	lw	a5,4(a5)
	.loc 1 330 19
	addi	a4,s0,-84
	mv	a2,a4
	lw	a1,-20(s0)
	lw	a0,-100(s0)
	jalr	a5
.LVL6:
	mv	a5,a0
	.loc 1 330 45 discriminator 1
	srli	a5,a5,31
	andi	a5,a5,0xff
	.loc 1 330 17 discriminator 1
	sw	a5,-32(s0)
	.loc 1 334 21
	lw	a5,-100(s0)
	lw	a5,4(a5)
	.loc 1 334 17
	addi	a4,s0,-84
	mv	a2,a4
	lw	a1,-20(s0)
	lw	a0,-100(s0)
	jalr	a5
.LVL7:
	mv	a5,a0
	.loc 1 334 16 discriminator 1
	bne	a5,zero,.L85
	.loc 1 335 19
	lw	a5,-20(s0)
	sw	a5,-28(s0)
.L85:
	.loc 1 339 18
	lw	a0,-20(s0)
	call	rb_node_is_red
	mv	a5,a0
	.loc 1 339 16 discriminator 1
	bne	a5,zero,.L84
	.loc 1 339 62 discriminator 2
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 339 40 discriminator 2
	mv	a0,a5
	call	rb_node_is_red
	mv	a5,a0
	.loc 1 339 36 discriminator 3
	bne	a5,zero,.L84
	.loc 1 340 44
	lw	a5,-32(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 340 43
	lw	a4,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 340 21
	mv	a0,a5
	call	rb_node_is_red
	mv	a5,a0
	.loc 1 340 20 discriminator 1
	beq	a5,zero,.L87
	.loc 1 341 41
	lw	a1,-32(s0)
	lw	a0,-20(s0)
	call	rb_node_rotate
	mv	a3,a0
	.loc 1 341 39 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	a3,4(a5)
	.loc 1 341 23 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	sw	a5,-24(s0)
	j	.L84
.L87:
	.loc 1 342 52
	lw	a5,-32(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 342 51
	lw	a4,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 342 29
	mv	a0,a5
	call	rb_node_is_red
	mv	a5,a0
	.loc 1 342 27 discriminator 1
	bne	a5,zero,.L84
.LBB9:
	.loc 1 343 49
	lw	a5,-44(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 343 37
	lw	a4,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	sw	a5,-48(s0)
	.loc 1 344 24
	lw	a5,-48(s0)
	beq	a5,zero,.L84
	.loc 1 345 53
	lw	a5,-44(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 345 52
	lw	a4,-48(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 345 30
	mv	a0,a5
	call	rb_node_is_red
	mv	a5,a0
	.loc 1 345 28 discriminator 1
	bne	a5,zero,.L88
	.loc 1 345 87 discriminator 2
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 345 65 discriminator 2
	mv	a0,a5
	call	rb_node_is_red
	mv	a5,a0
	.loc 1 345 61 discriminator 3
	bne	a5,zero,.L88
	.loc 1 348 36
	lw	a5,-24(s0)
	sw	zero,0(a5)
	.loc 1 349 36
	lw	a5,-48(s0)
	li	a4,1
	sw	a4,0(a5)
	.loc 1 350 36
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,0(a5)
	j	.L84
.L88:
.LBB10:
	.loc 1 352 47
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 352 51
	lw	a4,-24(s0)
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 352 33
	sw	a5,-52(s0)
	.loc 1 353 55
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 353 33
	mv	a0,a5
	call	rb_node_is_red
	mv	a5,a0
	.loc 1 353 32 discriminator 1
	beq	a5,zero,.L89
	.loc 1 354 49
	lw	a1,-44(s0)
	lw	a0,-24(s0)
	call	rb_node_rotate2
	mv	a3,a0
	.loc 1 354 47 discriminator 1
	lw	a4,-36(s0)
	lw	a5,-52(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	a3,4(a5)
	j	.L90
.L89:
	.loc 1 355 63
	lw	a5,-44(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 355 62
	lw	a4,-48(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 355 40
	mv	a0,a5
	call	rb_node_is_red
	mv	a5,a0
	.loc 1 355 39 discriminator 1
	beq	a5,zero,.L90
	.loc 1 356 49
	lw	a1,-44(s0)
	lw	a0,-24(s0)
	call	rb_node_rotate
	mv	a3,a0
	.loc 1 356 47 discriminator 1
	lw	a4,-36(s0)
	lw	a5,-52(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	a3,4(a5)
.L90:
	.loc 1 360 45
	lw	a4,-36(s0)
	lw	a5,-52(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 360 57
	li	a4,1
	sw	a4,0(a5)
	.loc 1 360 51
	lw	a4,0(a5)
	.loc 1 360 36
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 361 36
	lw	a4,-36(s0)
	lw	a5,-52(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 361 48
	lw	a5,4(a5)
	.loc 1 361 57
	sw	zero,0(a5)
	.loc 1 362 36
	lw	a4,-36(s0)
	lw	a5,-52(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 362 48
	lw	a5,8(a5)
	.loc 1 362 57
	sw	zero,0(a5)
.L84:
.LBE10:
.LBE9:
.LBE8:
	.loc 1 324 23
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 324 29
	bne	a5,zero,.L91
	.loc 1 370 12
	lw	a5,-28(s0)
	beq	a5,zero,.L92
.LBB11:
	.loc 1 371 19
	lw	a5,-28(s0)
	lw	a5,12(a5)
	sw	a5,-40(s0)
	.loc 1 372 25
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 372 22
	lw	a5,-28(s0)
	sw	a4,12(a5)
	.loc 1 373 22
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,12(a5)
	.loc 1 375 55
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 375 59
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a3,a5
	.loc 1 375 28
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 375 32
	lw	a4,-20(s0)
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a2,a5
	.loc 1 375 47
	lw	a4,-20(s0)
	slli	a5,a3,2
	add	a5,a4,a5
	lw	a4,4(a5)
	.loc 1 375 38
	lw	a3,-24(s0)
	slli	a5,a2,2
	add	a5,a3,a5
	sw	a4,4(a5)
	.loc 1 377 16
	lw	a5,-108(s0)
	beq	a5,zero,.L93
	.loc 1 378 17
	lw	a5,-108(s0)
	lw	a1,-20(s0)
	lw	a0,-100(s0)
	jalr	a5
.LVL8:
.L93:
	.loc 1 380 15
	sw	zero,-20(s0)
.L92:
.LBE11:
	.loc 1 384 31
	lw	a4,-60(s0)
	.loc 1 384 20
	lw	a5,-100(s0)
	sw	a4,0(a5)
	.loc 1 387 17
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 1 387 12
	beq	a5,zero,.L94
	.loc 1 388 17
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 1 388 29
	sw	zero,0(a5)
.L94:
	.loc 1 391 15
	lw	a5,-100(s0)
	lw	a5,8(a5)
	.loc 1 391 9
	addi	a4,a5,-1
	lw	a5,-100(s0)
	sw	a4,8(a5)
.L83:
.LBE7:
	.loc 1 393 12
	li	a5,1
	.loc 1 394 1
	mv	a0,a5
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	rb_tree_remove_with_cb, .-rb_tree_remove_with_cb
	.section	.text.rb_tree_remove,"ax",@progbits
	.align	1
	.globl	rb_tree_remove
	.type	rb_tree_remove, @function
rb_tree_remove:
.LFB22:
	.loc 1 397 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 398 9
	sw	zero,-20(s0)
	.loc 1 400 8
	lw	a5,-36(s0)
	beq	a5,zero,.L97
	.loc 1 401 18
	lui	a5,%hi(rb_tree_node_dealloc_cb)
	addi	a2,a5,%lo(rb_tree_node_dealloc_cb)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	rb_tree_remove_with_cb
	sw	a0,-20(s0)
.L97:
	.loc 1 403 12
	lw	a5,-20(s0)
	.loc 1 404 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	rb_tree_remove, .-rb_tree_remove
	.section	.text.rb_tree_size,"ax",@progbits
	.align	1
	.globl	rb_tree_size
	.type	rb_tree_size, @function
rb_tree_size:
.LFB23:
	.loc 1 407 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 408 12
	sw	zero,-20(s0)
	.loc 1 410 8
	lw	a5,-36(s0)
	beq	a5,zero,.L100
	.loc 1 411 16
	lw	a5,-36(s0)
	lw	a5,8(a5)
	sw	a5,-20(s0)
.L100:
	.loc 1 413 12
	lw	a5,-20(s0)
	.loc 1 414 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	rb_tree_size, .-rb_tree_size
	.section	.text.rb_iter_alloc,"ax",@progbits
	.align	1
	.globl	rb_iter_alloc
	.type	rb_iter_alloc, @function
rb_iter_alloc:
.LFB24:
	.loc 1 418 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 419 12
	li	a0,272
	call	pvPortMalloc
	mv	a5,a0
	.loc 1 420 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	rb_iter_alloc, .-rb_iter_alloc
	.section	.text.rb_iter_init,"ax",@progbits
	.align	1
	.globl	rb_iter_init
	.type	rb_iter_init, @function
rb_iter_init:
.LFB25:
	.loc 1 423 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 424 8
	lw	a5,-20(s0)
	beq	a5,zero,.L105
	.loc 1 425 20
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 1 426 20
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 1 427 19
	lw	a5,-20(s0)
	sw	zero,264(a5)
.L105:
	.loc 1 429 12
	lw	a5,-20(s0)
	.loc 1 430 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	rb_iter_init, .-rb_iter_init
	.section	.text.rb_iter_create,"ax",@progbits
	.align	1
	.globl	rb_iter_create
	.type	rb_iter_create, @function
rb_iter_create:
.LFB26:
	.loc 1 433 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 434 12
	call	rb_iter_alloc
	mv	a5,a0
	.loc 1 434 12 is_stmt 0 discriminator 1
	mv	a0,a5
	call	rb_iter_init
	mv	a5,a0
	.loc 1 435 1 is_stmt 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	rb_iter_create, .-rb_iter_create
	.section	.text.rb_iter_dealloc,"ax",@progbits
	.align	1
	.globl	rb_iter_dealloc
	.type	rb_iter_dealloc, @function
rb_iter_dealloc:
.LFB27:
	.loc 1 438 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 439 8
	lw	a5,-20(s0)
	beq	a5,zero,.L111
	.loc 1 440 9
	lw	a0,-20(s0)
	call	vPortFree
.L111:
	.loc 1 442 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	rb_iter_dealloc, .-rb_iter_dealloc
	.section	.text.rb_iter_start,"ax",@progbits
	.align	1
	.type	rb_iter_start, @function
rb_iter_start:
.LFB28:
	.loc 1 447 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 1 448 11
	sw	zero,-20(s0)
	.loc 1 450 8
	lw	a5,-36(s0)
	beq	a5,zero,.L113
	.loc 1 451 20
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 1 452 26
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 1 452 20
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 1 453 19
	lw	a5,-36(s0)
	sw	zero,264(a5)
	.loc 1 456 17
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 456 12
	beq	a5,zero,.L114
	.loc 1 457 19
	j	.L115
.L116:
	.loc 1 458 32
	lw	a5,-36(s0)
	lw	a5,264(a5)
	.loc 1 458 37
	addi	a3,a5,1
	lw	a4,-36(s0)
	sw	a3,264(a4)
	.loc 1 458 47
	lw	a4,-36(s0)
	lw	a4,4(a4)
	.loc 1 458 41
	lw	a3,-36(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,8(a5)
	.loc 1 459 34
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 459 46
	lw	a5,-44(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,4(a5)
	.loc 1 459 28
	lw	a5,-36(s0)
	sw	a4,4(a5)
.L115:
	.loc 1 457 24
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 457 36
	lw	a5,-44(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 457 42
	bne	a5,zero,.L116
.L114:
	.loc 1 462 22
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 462 43
	beq	a5,zero,.L117
	.loc 1 462 49 discriminator 1
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 462 16 discriminator 1
	lw	a5,12(a5)
	sw	a5,-20(s0)
	j	.L113
.L117:
	.loc 1 462 16 is_stmt 0 discriminator 2
	sw	zero,-20(s0)
.L113:
	.loc 1 465 12 is_stmt 1
	lw	a5,-20(s0)
	.loc 1 466 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	rb_iter_start, .-rb_iter_start
	.section	.text.rb_iter_move,"ax",@progbits
	.align	1
	.type	rb_iter_move, @function
rb_iter_move:
.LFB29:
	.loc 1 470 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 471 13
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 471 25
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 471 8
	beq	a5,zero,.L120
	.loc 1 473 24
	lw	a5,-36(s0)
	lw	a5,264(a5)
	.loc 1 473 29
	addi	a3,a5,1
	lw	a4,-36(s0)
	sw	a3,264(a4)
	.loc 1 473 39
	lw	a4,-36(s0)
	lw	a4,4(a4)
	.loc 1 473 33
	lw	a3,-36(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,8(a5)
	.loc 1 474 26
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 474 38
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,4(a5)
	.loc 1 474 20
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 1 475 15
	j	.L121
.L122:
	.loc 1 476 28
	lw	a5,-36(s0)
	lw	a5,264(a5)
	.loc 1 476 33
	addi	a3,a5,1
	lw	a4,-36(s0)
	sw	a3,264(a4)
	.loc 1 476 43
	lw	a4,-36(s0)
	lw	a4,4(a4)
	.loc 1 476 37
	lw	a3,-36(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,8(a5)
	.loc 1 477 30
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 477 43
	lw	a5,-40(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 477 42
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,4(a5)
	.loc 1 477 24
	lw	a5,-36(s0)
	sw	a4,4(a5)
.L121:
	.loc 1 475 21
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 475 34
	lw	a5,-40(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 475 33
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 475 40
	bne	a5,zero,.L122
	j	.L123
.L120:
.LBB12:
	.loc 1 481 25
	sw	zero,-20(s0)
.L125:
	.loc 1 483 21
	lw	a5,-36(s0)
	lw	a5,264(a5)
	.loc 1 483 16
	bne	a5,zero,.L124
	.loc 1 484 28
	lw	a5,-36(s0)
	sw	zero,4(a5)
	.loc 1 485 17
	j	.L123
.L124:
	.loc 1 487 18
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 488 43
	lw	a5,-36(s0)
	lw	a5,264(a5)
	.loc 1 488 37
	addi	a4,a5,-1
	.loc 1 488 24
	lw	a5,-36(s0)
	sw	a4,264(a5)
	.loc 1 488 43
	lw	a5,-36(s0)
	lw	a5,264(a5)
	.loc 1 488 36
	lw	a4,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,8(a5)
	.loc 1 488 24
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 1 489 30
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 489 42
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 489 23
	lw	a4,-20(s0)
	beq	a4,a5,.L125
.L123:
.LBE12:
	.loc 1 491 16
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 491 37
	beq	a5,zero,.L126
	.loc 1 491 43 discriminator 1
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 491 37 discriminator 1
	lw	a5,12(a5)
	.loc 1 491 37 is_stmt 0
	j	.L128
.L126:
	.loc 1 491 37 discriminator 2
	li	a5,0
.L128:
	.loc 1 492 1 is_stmt 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	rb_iter_move, .-rb_iter_move
	.section	.text.rb_iter_first,"ax",@progbits
	.align	1
	.globl	rb_iter_first
	.type	rb_iter_first, @function
rb_iter_first:
.LFB30:
	.loc 1 495 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 496 12
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	rb_iter_start
	mv	a5,a0
	.loc 1 497 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	rb_iter_first, .-rb_iter_first
	.section	.text.rb_iter_last,"ax",@progbits
	.align	1
	.globl	rb_iter_last
	.type	rb_iter_last, @function
rb_iter_last:
.LFB31:
	.loc 1 500 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 501 12
	li	a2,1
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	rb_iter_start
	mv	a5,a0
	.loc 1 502 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	rb_iter_last, .-rb_iter_last
	.section	.text.rb_iter_next,"ax",@progbits
	.align	1
	.globl	rb_iter_next
	.type	rb_iter_next, @function
rb_iter_next:
.LFB32:
	.loc 1 505 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 506 12
	li	a1,1
	lw	a0,-20(s0)
	call	rb_iter_move
	mv	a5,a0
	.loc 1 507 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	rb_iter_next, .-rb_iter_next
	.section	.text.rb_iter_prev,"ax",@progbits
	.align	1
	.globl	rb_iter_prev
	.type	rb_iter_prev, @function
rb_iter_prev:
.LFB33:
	.loc 1 510 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 511 12
	li	a1,0
	lw	a0,-20(s0)
	call	rb_iter_move
	mv	a5,a0
	.loc 1 512 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	rb_iter_prev, .-rb_iter_prev
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_rbtree.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa08
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1e
	.4byte	.LASF68
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1f
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xf
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x20
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x13
	.4byte	0x86
	.uleb128 0xa
	.4byte	0x8d
	.uleb128 0x21
	.4byte	0x92
	.uleb128 0xf
	.4byte	.LASF14
	.byte	0x3
	.byte	0x4c
	.byte	0xf
	.4byte	0xa8
	.uleb128 0xa
	.4byte	0xad
	.uleb128 0x22
	.4byte	0x2b
	.4byte	0xc6
	.uleb128 0x6
	.4byte	0xc6
	.uleb128 0x6
	.4byte	0x106
	.uleb128 0x6
	.4byte	0x106
	.byte	0
	.uleb128 0xa
	.4byte	0xcb
	.uleb128 0x14
	.4byte	.LASF18
	.byte	0x55
	.4byte	0x106
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x56
	.byte	0x15
	.4byte	0x106
	.byte	0
	.uleb128 0x15
	.string	"cmp"
	.byte	0x57
	.byte	0x18
	.4byte	0x9c
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x58
	.byte	0xc
	.4byte	0x32
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x59
	.byte	0xb
	.4byte	0x84
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	0x10b
	.uleb128 0x14
	.4byte	.LASF19
	.byte	0x4f
	.4byte	0x13a
	.uleb128 0x15
	.string	"red"
	.byte	0x50
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x51
	.byte	0x15
	.4byte	0x160
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x52
	.byte	0xb
	.4byte	0x84
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.4byte	0x10b
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x3
	.byte	0x4d
	.byte	0x10
	.4byte	0x14b
	.uleb128 0xa
	.4byte	0x150
	.uleb128 0x23
	.4byte	0x160
	.uleb128 0x6
	.4byte	0xc6
	.uleb128 0x6
	.4byte	0x106
	.byte	0
	.uleb128 0x16
	.4byte	0x106
	.4byte	0x170
	.uleb128 0x17
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x24
	.4byte	.LASF23
	.2byte	0x110
	.byte	0x3
	.byte	0x5c
	.byte	0x8
	.4byte	0x1bf
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x5d
	.byte	0x15
	.4byte	0xc6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x5e
	.byte	0x15
	.4byte	0x106
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x5f
	.byte	0x15
	.4byte	0x1bf
	.byte	0x8
	.uleb128 0x25
	.string	"top"
	.byte	0x3
	.byte	0x60
	.byte	0xc
	.4byte	0x32
	.2byte	0x108
	.uleb128 0x26
	.4byte	.LASF17
	.byte	0x3
	.byte	0x61
	.byte	0xb
	.4byte	0x84
	.2byte	0x10c
	.byte	0
	.uleb128 0x16
	.4byte	0x106
	.4byte	0x1cf
	.uleb128 0x17
	.4byte	0x3e
	.byte	0x3f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x4
	.byte	0xe3
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1e5
	.uleb128 0x6
	.4byte	0x92
	.byte	0
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x4
	.byte	0xce
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1fc
	.uleb128 0x6
	.4byte	0x97
	.uleb128 0x27
	.byte	0
	.uleb128 0x28
	.4byte	.LASF69
	.byte	0x5
	.byte	0xa4
	.byte	0x6
	.4byte	0x20e
	.uleb128 0x6
	.4byte	0x84
	.byte	0
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x5
	.byte	0xa3
	.byte	0x7
	.4byte	0x84
	.4byte	0x224
	.uleb128 0x6
	.4byte	0x32
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.2byte	0x1fd
	.byte	0x8
	.4byte	0x84
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24e
	.uleb128 0x2
	.4byte	.LASF32
	.2byte	0x1fd
	.byte	0x25
	.4byte	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	0x170
	.uleb128 0xc
	.4byte	.LASF31
	.2byte	0x1f8
	.byte	0x8
	.4byte	0x84
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27d
	.uleb128 0x2
	.4byte	.LASF32
	.2byte	0x1f8
	.byte	0x25
	.4byte	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.2byte	0x1f3
	.byte	0x8
	.4byte	0x84
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b6
	.uleb128 0x2
	.4byte	.LASF32
	.2byte	0x1f3
	.byte	0x25
	.4byte	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF24
	.2byte	0x1f3
	.byte	0x3b
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF34
	.2byte	0x1ee
	.byte	0x7
	.4byte	0x84
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ef
	.uleb128 0x2
	.4byte	.LASF32
	.2byte	0x1ee
	.byte	0x25
	.4byte	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF24
	.2byte	0x1ee
	.byte	0x3b
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.4byte	.LASF35
	.2byte	0x1d5
	.4byte	0x84
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x340
	.uleb128 0x2
	.4byte	.LASF32
	.2byte	0x1d5
	.byte	0x2c
	.4byte	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.string	"dir"
	.2byte	0x1d5
	.byte	0x36
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x7
	.4byte	.LASF37
	.2byte	0x1e1
	.byte	0x19
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF36
	.2byte	0x1be
	.4byte	0x84
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x396
	.uleb128 0x2
	.4byte	.LASF32
	.2byte	0x1be
	.byte	0x2e
	.4byte	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF24
	.2byte	0x1be
	.byte	0x44
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.string	"dir"
	.2byte	0x1be
	.byte	0x4e
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.4byte	.LASF38
	.2byte	0x1c0
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x1b5
	.byte	0x6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3bd
	.uleb128 0x2
	.4byte	.LASF32
	.2byte	0x1b5
	.byte	0x27
	.4byte	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF40
	.2byte	0x1b0
	.4byte	0x24e
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF39
	.2byte	0x1a6
	.byte	0x12
	.4byte	0x24e
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fc
	.uleb128 0x2
	.4byte	.LASF32
	.2byte	0x1a6
	.byte	0x30
	.4byte	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF41
	.2byte	0x1a1
	.4byte	0x24e
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF42
	.2byte	0x196
	.byte	0x8
	.4byte	0x32
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44a
	.uleb128 0x2
	.4byte	.LASF32
	.2byte	0x196
	.byte	0x26
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF38
	.2byte	0x198
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF43
	.2byte	0x18c
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x492
	.uleb128 0x2
	.4byte	.LASF32
	.2byte	0x18c
	.byte	0x25
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF21
	.2byte	0x18c
	.byte	0x31
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF38
	.2byte	0x18e
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.2byte	0x134
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b0
	.uleb128 0x2
	.4byte	.LASF32
	.2byte	0x134
	.byte	0x2d
	.4byte	0xc6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.4byte	.LASF21
	.2byte	0x134
	.byte	0x39
	.4byte	0x84
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.4byte	.LASF45
	.2byte	0x134
	.byte	0x4f
	.4byte	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x5
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x7
	.4byte	.LASF46
	.2byte	0x137
	.byte	0x18
	.4byte	0x10b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x7
	.4byte	.LASF25
	.2byte	0x138
	.byte	0x18
	.4byte	0x10b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xb
	.string	"q"
	.2byte	0x139
	.byte	0x19
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"p"
	.2byte	0x139
	.byte	0x1d
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"g"
	.2byte	0x139
	.byte	0x21
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"f"
	.2byte	0x13a
	.byte	0x19
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.string	"dir"
	.2byte	0x13b
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x595
	.uleb128 0x7
	.4byte	.LASF37
	.2byte	0x145
	.byte	0x11
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0xb
	.string	"s"
	.2byte	0x157
	.byte	0x25
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x7
	.4byte	.LASF47
	.2byte	0x160
	.byte	0x21
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0xb
	.string	"tmp"
	.2byte	0x173
	.byte	0x13
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0xea
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x665
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0xea
	.byte	0x2a
	.4byte	0xc6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0xea
	.byte	0x40
	.4byte	0x106
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0xf0
	.byte	0x1c
	.4byte	0x10b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.string	"g"
	.byte	0xf1
	.byte	0x1d
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"t"
	.byte	0xf1
	.byte	0x21
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.string	"p"
	.byte	0xf2
	.byte	0x1d
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.string	"q"
	.byte	0xf2
	.byte	0x21
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.string	"dir"
	.byte	0xf3
	.byte	0x11
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0xf3
	.byte	0x1a
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x7
	.4byte	.LASF47
	.2byte	0x10b
	.byte	0x19
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0xe4
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69b
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0xe4
	.byte	0x24
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0xe4
	.byte	0x30
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0xcc
	.byte	0x8
	.4byte	0x84
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x712
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0xcc
	.byte	0x25
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0xcc
	.byte	0x31
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0xce
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0xd1
	.byte	0x18
	.4byte	0x10b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.string	"it"
	.byte	0xd2
	.byte	0x19
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.string	"cmp"
	.byte	0xd3
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0xa1
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x786
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0xa1
	.byte	0x22
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0xa1
	.byte	0x38
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.string	"lh"
	.byte	0xa3
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.string	"rh"
	.byte	0xa3
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x4
	.string	"ln"
	.byte	0xa8
	.byte	0x19
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"rn"
	.byte	0xa9
	.byte	0x19
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x82
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7dd
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x82
	.byte	0x26
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x82
	.byte	0x3b
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x86
	.byte	0x1d
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x87
	.byte	0x1d
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x7d
	.byte	0x12
	.4byte	0xc6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x805
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x7d
	.byte	0x35
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x72
	.byte	0x12
	.4byte	0xc6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83b
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x72
	.byte	0x30
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x72
	.byte	0x49
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF58
	.byte	0x6d
	.4byte	0xc6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x63
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x880
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x63
	.byte	0x2f
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x63
	.byte	0x45
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x5e
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c0
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x5e
	.byte	0x3e
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"a"
	.byte	0x5e
	.byte	0x54
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"b"
	.byte	0x5e
	.byte	0x67
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF61
	.byte	0x1
	.byte	0x52
	.byte	0x19
	.4byte	0x106
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x905
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x52
	.byte	0x3a
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"dir"
	.byte	0x52
	.byte	0x44
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x54
	.byte	0x15
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x44
	.byte	0x19
	.4byte	0x106
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x949
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x44
	.byte	0x39
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"dir"
	.byte	0x44
	.byte	0x43
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x46
	.byte	0x15
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF63
	.byte	0x3f
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x971
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x3f
	.byte	0x32
	.4byte	0x971
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	0x13a
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x38
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x999
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x38
	.byte	0x27
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x33
	.byte	0x12
	.4byte	0x106
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c1
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x33
	.byte	0x28
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x29
	.byte	0x12
	.4byte	0x106
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f7
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x29
	.byte	0x30
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x29
	.byte	0x3c
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF67
	.byte	0x24
	.4byte	0x106
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
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
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2e
	.byte	0
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
	.sleb128 18
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x21
	.sleb128 18
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x90
	.uleb128 0xb
	.uleb128 0x91
	.uleb128 0x6
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x25
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x104
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL0:
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0x7
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0x7
	.4byte	.LFB7
	.uleb128 .LFE7-.LFB7
	.byte	0x7
	.4byte	.LFB8
	.uleb128 .LFE8-.LFB8
	.byte	0x7
	.4byte	.LFB9
	.uleb128 .LFE9-.LFB9
	.byte	0x7
	.4byte	.LFB10
	.uleb128 .LFE10-.LFB10
	.byte	0x7
	.4byte	.LFB11
	.uleb128 .LFE11-.LFB11
	.byte	0x7
	.4byte	.LFB12
	.uleb128 .LFE12-.LFB12
	.byte	0x7
	.4byte	.LFB13
	.uleb128 .LFE13-.LFB13
	.byte	0x7
	.4byte	.LFB14
	.uleb128 .LFE14-.LFB14
	.byte	0x7
	.4byte	.LFB15
	.uleb128 .LFE15-.LFB15
	.byte	0x7
	.4byte	.LFB16
	.uleb128 .LFE16-.LFB16
	.byte	0x7
	.4byte	.LFB17
	.uleb128 .LFE17-.LFB17
	.byte	0x7
	.4byte	.LFB18
	.uleb128 .LFE18-.LFB18
	.byte	0x7
	.4byte	.LFB19
	.uleb128 .LFE19-.LFB19
	.byte	0x7
	.4byte	.LFB20
	.uleb128 .LFE20-.LFB20
	.byte	0x7
	.4byte	.LFB21
	.uleb128 .LFE21-.LFB21
	.byte	0x7
	.4byte	.LFB22
	.uleb128 .LFE22-.LFB22
	.byte	0x7
	.4byte	.LFB23
	.uleb128 .LFE23-.LFB23
	.byte	0x7
	.4byte	.LFB24
	.uleb128 .LFE24-.LFB24
	.byte	0x7
	.4byte	.LFB25
	.uleb128 .LFE25-.LFB25
	.byte	0x7
	.4byte	.LFB26
	.uleb128 .LFE26-.LFB26
	.byte	0x7
	.4byte	.LFB27
	.uleb128 .LFE27-.LFB27
	.byte	0x7
	.4byte	.LFB28
	.uleb128 .LFE28-.LFB28
	.byte	0x7
	.4byte	.LFB29
	.uleb128 .LFE29-.LFB29
	.byte	0x7
	.4byte	.LFB30
	.uleb128 .LFE30-.LFB30
	.byte	0x7
	.4byte	.LFB31
	.uleb128 .LFE31-.LFB31
	.byte	0x7
	.4byte	.LFB32
	.uleb128 .LFE32-.LFB32
	.byte	0x7
	.4byte	.LFB33
	.uleb128 .LFE33-.LFB33
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"printf"
.LASF65:
	.string	"rb_node_create"
.LASF13:
	.string	"size_t"
.LASF67:
	.string	"rb_node_alloc"
.LASF26:
	.string	"path"
.LASF11:
	.string	"long long unsigned int"
.LASF40:
	.string	"rb_iter_create"
.LASF61:
	.string	"rb_node_rotate2"
.LASF56:
	.string	"rb_tree_init"
.LASF52:
	.string	"rb_iter_dealloc"
.LASF3:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF48:
	.string	"rb_tree_insert_node"
.LASF64:
	.string	"rb_node_dealloc"
.LASF7:
	.string	"long int"
.LASF60:
	.string	"rb_tree_node_cmp_ptr_cb"
.LASF30:
	.string	"rb_iter_prev"
.LASF39:
	.string	"rb_iter_init"
.LASF32:
	.string	"self"
.LASF44:
	.string	"rb_tree_remove_with_cb"
.LASF43:
	.string	"rb_tree_remove"
.LASF20:
	.string	"link"
.LASF29:
	.string	"pvPortMalloc"
.LASF36:
	.string	"rb_iter_start"
.LASF21:
	.string	"value"
.LASF31:
	.string	"rb_iter_next"
.LASF2:
	.string	"unsigned int"
.LASF35:
	.string	"rb_iter_move"
.LASF10:
	.string	"long unsigned int"
.LASF16:
	.string	"size"
.LASF9:
	.string	"short unsigned int"
.LASF34:
	.string	"rb_iter_first"
.LASF37:
	.string	"last"
.LASF53:
	.string	"rb_tree_dealloc"
.LASF45:
	.string	"node_cb"
.LASF69:
	.string	"vPortFree"
.LASF41:
	.string	"rb_iter_alloc"
.LASF27:
	.string	"puts"
.LASF4:
	.string	"long double"
.LASF22:
	.string	"rb_tree_node_f"
.LASF55:
	.string	"rb_tree_create"
.LASF14:
	.string	"rb_tree_node_cmp_f"
.LASF47:
	.string	"dir2"
.LASF49:
	.string	"rb_tree_insert"
.LASF33:
	.string	"rb_iter_last"
.LASF23:
	.string	"rb_iter"
.LASF8:
	.string	"unsigned char"
.LASF25:
	.string	"node"
.LASF6:
	.string	"short int"
.LASF17:
	.string	"info"
.LASF50:
	.string	"rb_tree_find"
.LASF63:
	.string	"rb_node_is_red"
.LASF54:
	.string	"save"
.LASF46:
	.string	"head"
.LASF42:
	.string	"rb_tree_size"
.LASF18:
	.string	"rb_tree"
.LASF12:
	.string	"char"
.LASF19:
	.string	"rb_node"
.LASF68:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF59:
	.string	"rb_tree_node_dealloc_cb"
.LASF24:
	.string	"tree"
.LASF58:
	.string	"rb_tree_alloc"
.LASF62:
	.string	"rb_node_rotate"
.LASF66:
	.string	"rb_node_init"
.LASF51:
	.string	"rb_tree_test"
.LASF57:
	.string	"node_cmp_cb"
.LASF38:
	.string	"result"
.LASF15:
	.string	"root"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_rbtree.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
