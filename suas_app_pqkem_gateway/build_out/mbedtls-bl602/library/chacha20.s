	.file	"chacha20.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/chacha20.c"
	.section	.text.chacha20_quarter_round,"ax",@progbits
	.align	1
	.type	chacha20_quarter_round, @function
chacha20_quarter_round:
.LFB15:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/chacha20.c"
	.loc 1 54 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	.loc 1 56 10
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 1 56 22
	lw	a5,-28(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 56 10
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a2,-20(s0)
	add	a5,a2,a5
	.loc 1 56 14
	add	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 57 10
	lw	a5,-36(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 1 57 22
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 57 10
	lw	a5,-36(s0)
	slli	a5,a5,2
	lw	a2,-20(s0)
	add	a5,a2,a5
	.loc 1 57 14
	xor	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 58 35
	lw	a5,-36(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 1 58 40
	lw	a5,0(a5)
	.loc 1 58 10
	lw	a4,-36(s0)
	slli	a4,a4,2
	lw	a3,-20(s0)
	add	a4,a3,a4
	.loc 1 58 49
	srli	a3,a5,16
	slli	a5,a5,16
	add	a5,a5,a3
	.loc 1 58 14
	sw	a5,0(a4)
	.loc 1 61 10
	lw	a5,-32(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 1 61 22
	lw	a5,-36(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 61 10
	lw	a5,-32(s0)
	slli	a5,a5,2
	lw	a2,-20(s0)
	add	a5,a2,a5
	.loc 1 61 14
	add	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 62 10
	lw	a5,-28(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 1 62 22
	lw	a5,-32(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 62 10
	lw	a5,-28(s0)
	slli	a5,a5,2
	lw	a2,-20(s0)
	add	a5,a2,a5
	.loc 1 62 14
	xor	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 63 35
	lw	a5,-28(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 1 63 40
	lw	a5,0(a5)
	.loc 1 63 10
	lw	a4,-28(s0)
	slli	a4,a4,2
	lw	a3,-20(s0)
	add	a4,a3,a4
	.loc 1 63 49
	srli	a3,a5,20
	slli	a5,a5,12
	add	a5,a5,a3
	.loc 1 63 14
	sw	a5,0(a4)
	.loc 1 66 10
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 1 66 22
	lw	a5,-28(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 66 10
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a2,-20(s0)
	add	a5,a2,a5
	.loc 1 66 14
	add	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 67 10
	lw	a5,-36(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 1 67 22
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 67 10
	lw	a5,-36(s0)
	slli	a5,a5,2
	lw	a2,-20(s0)
	add	a5,a2,a5
	.loc 1 67 14
	xor	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 68 35
	lw	a5,-36(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 1 68 40
	lw	a5,0(a5)
	.loc 1 68 10
	lw	a4,-36(s0)
	slli	a4,a4,2
	lw	a3,-20(s0)
	add	a4,a3,a4
	.loc 1 68 48
	srli	a3,a5,24
	slli	a5,a5,8
	add	a5,a5,a3
	.loc 1 68 14
	sw	a5,0(a4)
	.loc 1 71 10
	lw	a5,-32(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 1 71 22
	lw	a5,-36(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 71 10
	lw	a5,-32(s0)
	slli	a5,a5,2
	lw	a2,-20(s0)
	add	a5,a2,a5
	.loc 1 71 14
	add	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 72 10
	lw	a5,-28(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 1 72 22
	lw	a5,-32(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 72 10
	lw	a5,-28(s0)
	slli	a5,a5,2
	lw	a2,-20(s0)
	add	a5,a2,a5
	.loc 1 72 14
	xor	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 73 35
	lw	a5,-28(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 1 73 40
	lw	a5,0(a5)
	.loc 1 73 10
	lw	a4,-28(s0)
	slli	a4,a4,2
	lw	a3,-20(s0)
	add	a4,a3,a4
	.loc 1 73 48
	srli	a3,a5,25
	slli	a5,a5,7
	add	a5,a5,a3
	.loc 1 73 14
	sw	a5,0(a4)
	.loc 1 74 1
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
.LFE15:
	.size	chacha20_quarter_round, .-chacha20_quarter_round
	.section	.text.chacha20_inner_block,"ax",@progbits
	.align	1
	.type	chacha20_inner_block, @function
chacha20_inner_block:
.LFB16:
	.loc 1 85 1
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
	.loc 1 86 5
	li	a4,12
	li	a3,8
	li	a2,4
	li	a1,0
	lw	a0,-20(s0)
	call	chacha20_quarter_round
	.loc 1 87 5
	li	a4,13
	li	a3,9
	li	a2,5
	li	a1,1
	lw	a0,-20(s0)
	call	chacha20_quarter_round
	.loc 1 88 5
	li	a4,14
	li	a3,10
	li	a2,6
	li	a1,2
	lw	a0,-20(s0)
	call	chacha20_quarter_round
	.loc 1 89 5
	li	a4,15
	li	a3,11
	li	a2,7
	li	a1,3
	lw	a0,-20(s0)
	call	chacha20_quarter_round
	.loc 1 91 5
	li	a4,15
	li	a3,10
	li	a2,5
	li	a1,0
	lw	a0,-20(s0)
	call	chacha20_quarter_round
	.loc 1 92 5
	li	a4,12
	li	a3,11
	li	a2,6
	li	a1,1
	lw	a0,-20(s0)
	call	chacha20_quarter_round
	.loc 1 93 5
	li	a4,13
	li	a3,8
	li	a2,7
	li	a1,2
	lw	a0,-20(s0)
	call	chacha20_quarter_round
	.loc 1 94 5
	li	a4,14
	li	a3,9
	li	a2,4
	li	a1,3
	lw	a0,-20(s0)
	call	chacha20_quarter_round
	.loc 1 95 1
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
.LFE16:
	.size	chacha20_inner_block, .-chacha20_inner_block
	.section	.text.chacha20_block,"ax",@progbits
	.align	1
	.type	chacha20_block, @function
chacha20_block:
.LFB17:
	.loc 1 105 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-116(s0)
	sw	a1,-120(s0)
	.loc 1 109 5
	addi	a5,s0,-100
	li	a2,64
	lw	a1,-116(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 113 12
	sw	zero,-20(s0)
	.loc 1 113 5
	j	.L4
.L5:
	.loc 1 114 9
	addi	a5,s0,-100
	mv	a0,a5
	call	chacha20_inner_block
	.loc 1 113 28 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L4:
	.loc 1 113 20 discriminator 1
	lw	a4,-20(s0)
	li	a5,9
	bleu	a4,a5,.L5
	.loc 1 117 18
	lw	a4,-100(s0)
	.loc 1 117 38
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 1 117 22
	add	a5,a4,a5
	sw	a5,-100(s0)
	.loc 1 118 18
	lw	a4,-96(s0)
	.loc 1 118 38
	lw	a5,-116(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	.loc 1 118 22
	add	a5,a4,a5
	sw	a5,-96(s0)
	.loc 1 119 18
	lw	a4,-92(s0)
	.loc 1 119 38
	lw	a5,-116(s0)
	addi	a5,a5,8
	lw	a5,0(a5)
	.loc 1 119 22
	add	a5,a4,a5
	sw	a5,-92(s0)
	.loc 1 120 18
	lw	a4,-88(s0)
	.loc 1 120 38
	lw	a5,-116(s0)
	addi	a5,a5,12
	lw	a5,0(a5)
	.loc 1 120 22
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 1 121 18
	lw	a4,-84(s0)
	.loc 1 121 38
	lw	a5,-116(s0)
	addi	a5,a5,16
	lw	a5,0(a5)
	.loc 1 121 22
	add	a5,a4,a5
	sw	a5,-84(s0)
	.loc 1 122 18
	lw	a4,-80(s0)
	.loc 1 122 38
	lw	a5,-116(s0)
	addi	a5,a5,20
	lw	a5,0(a5)
	.loc 1 122 22
	add	a5,a4,a5
	sw	a5,-80(s0)
	.loc 1 123 18
	lw	a4,-76(s0)
	.loc 1 123 38
	lw	a5,-116(s0)
	addi	a5,a5,24
	lw	a5,0(a5)
	.loc 1 123 22
	add	a5,a4,a5
	sw	a5,-76(s0)
	.loc 1 124 18
	lw	a4,-72(s0)
	.loc 1 124 38
	lw	a5,-116(s0)
	addi	a5,a5,28
	lw	a5,0(a5)
	.loc 1 124 22
	add	a5,a4,a5
	sw	a5,-72(s0)
	.loc 1 125 18
	lw	a4,-68(s0)
	.loc 1 125 38
	lw	a5,-116(s0)
	addi	a5,a5,32
	lw	a5,0(a5)
	.loc 1 125 22
	add	a5,a4,a5
	sw	a5,-68(s0)
	.loc 1 126 18
	lw	a4,-64(s0)
	.loc 1 126 38
	lw	a5,-116(s0)
	addi	a5,a5,36
	lw	a5,0(a5)
	.loc 1 126 22
	add	a5,a4,a5
	sw	a5,-64(s0)
	.loc 1 127 18
	lw	a4,-60(s0)
	.loc 1 127 39
	lw	a5,-116(s0)
	addi	a5,a5,40
	lw	a5,0(a5)
	.loc 1 127 23
	add	a5,a4,a5
	sw	a5,-60(s0)
	.loc 1 128 18
	lw	a4,-56(s0)
	.loc 1 128 39
	lw	a5,-116(s0)
	addi	a5,a5,44
	lw	a5,0(a5)
	.loc 1 128 23
	add	a5,a4,a5
	sw	a5,-56(s0)
	.loc 1 129 18
	lw	a4,-52(s0)
	.loc 1 129 39
	lw	a5,-116(s0)
	addi	a5,a5,48
	lw	a5,0(a5)
	.loc 1 129 23
	add	a5,a4,a5
	sw	a5,-52(s0)
	.loc 1 130 18
	lw	a4,-48(s0)
	.loc 1 130 39
	lw	a5,-116(s0)
	addi	a5,a5,52
	lw	a5,0(a5)
	.loc 1 130 23
	add	a5,a4,a5
	sw	a5,-48(s0)
	.loc 1 131 18
	lw	a4,-44(s0)
	.loc 1 131 39
	lw	a5,-116(s0)
	addi	a5,a5,56
	lw	a5,0(a5)
	.loc 1 131 23
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 1 132 18
	lw	a4,-40(s0)
	.loc 1 132 39
	lw	a5,-116(s0)
	addi	a5,a5,60
	lw	a5,0(a5)
	.loc 1 132 23
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 1 134 12
	sw	zero,-20(s0)
	.loc 1 134 5
	j	.L6
.L7:
.LBB31:
	.loc 1 135 16
	lw	a5,-20(s0)
	slli	a5,a5,2
	sw	a5,-24(s0)
	.loc 1 137 174 discriminator 2
	lw	a4,-120(s0)
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 1 137 133 discriminator 2
	lw	a3,-20(s0)
	addi	a5,s0,-100
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	sw	a4,-28(s0)
	sw	a5,-32(s0)
.LBB32:
.LBB33:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/alignment.h"
	.loc 2 200 33
	lw	a5,-28(s0)
	sw	a5,-36(s0)
	.loc 2 201 12
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-32(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-32(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-32(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 2 205 1
	nop
.LBE33:
.LBE32:
.LBE31:
	.loc 1 134 27 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L6:
	.loc 1 134 20 discriminator 1
	lw	a4,-20(s0)
	li	a5,15
	bleu	a4,a5,.L7
	.loc 1 140 5
	addi	a5,s0,-100
	li	a1,64
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 1 141 1
	nop
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	chacha20_block, .-chacha20_block
	.section	.text.mbedtls_chacha20_init,"ax",@progbits
	.align	1
	.globl	mbedtls_chacha20_init
	.type	mbedtls_chacha20_init, @function
mbedtls_chacha20_init:
.LFB18:
	.loc 1 144 1
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
	.loc 1 145 33
	lw	a5,-20(s0)
	.loc 1 145 5
	li	a1,64
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 1 146 33
	lw	a5,-20(s0)
	addi	a5,a5,64
	.loc 1 146 5
	li	a1,64
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 1 149 31
	lw	a5,-20(s0)
	li	a4,64
	sw	a4,128(a5)
	.loc 1 150 1
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
.LFE18:
	.size	mbedtls_chacha20_init, .-mbedtls_chacha20_init
	.section	.text.mbedtls_chacha20_free,"ax",@progbits
	.align	1
	.globl	mbedtls_chacha20_free
	.type	mbedtls_chacha20_free, @function
mbedtls_chacha20_free:
.LFB19:
	.loc 1 153 1
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
	.loc 1 154 8
	lw	a5,-20(s0)
	beq	a5,zero,.L11
	.loc 1 155 9
	li	a1,132
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
.L11:
	.loc 1 157 1
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
.LFE19:
	.size	mbedtls_chacha20_free, .-mbedtls_chacha20_free
	.section	.text.mbedtls_chacha20_setkey,"ax",@progbits
	.align	1
	.globl	mbedtls_chacha20_setkey
	.type	mbedtls_chacha20_setkey, @function
mbedtls_chacha20_setkey:
.LFB20:
	.loc 1 161 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-116(s0)
	sw	a1,-120(s0)
	.loc 1 163 19
	lw	a5,-116(s0)
	li	a4,1634762752
	addi	a4,a4,-1947
	sw	a4,0(a5)
	.loc 1 164 19
	lw	a5,-116(s0)
	li	a4,857759744
	addi	a4,a4,1134
	sw	a4,4(a5)
	.loc 1 165 19
	lw	a5,-116(s0)
	li	a4,2036477952
	addi	a4,a4,-718
	sw	a4,8(a5)
	.loc 1 166 19
	lw	a5,-116(s0)
	li	a4,1797283840
	addi	a4,a4,1396
	sw	a4,12(a5)
	lw	a5,-120(s0)
	sw	a5,-104(s0)
.LBB34:
.LBB35:
	.loc 2 174 33
	lw	a5,-104(s0)
	sw	a5,-108(s0)
	.loc 2 175 7
	lw	a5,-108(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	sw	a5,-112(s0)
	.loc 2 179 12
	lw	a4,-112(s0)
.LBE35:
.LBE34:
	.loc 1 169 19 discriminator 1
	lw	a5,-116(s0)
	sw	a4,16(a5)
	.loc 1 170 126
	lw	a5,-120(s0)
	addi	a5,a5,4
	sw	a5,-92(s0)
.LBB36:
.LBB37:
	.loc 2 174 33
	lw	a5,-92(s0)
	sw	a5,-96(s0)
	.loc 2 175 7
	lw	a5,-96(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	sw	a5,-100(s0)
	.loc 2 179 12
	lw	a4,-100(s0)
.LBE37:
.LBE36:
	.loc 1 170 19 discriminator 1
	lw	a5,-116(s0)
	sw	a4,20(a5)
	.loc 1 171 126
	lw	a5,-120(s0)
	addi	a5,a5,8
	sw	a5,-80(s0)
.LBB38:
.LBB39:
	.loc 2 174 33
	lw	a5,-80(s0)
	sw	a5,-84(s0)
	.loc 2 175 7
	lw	a5,-84(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	sw	a5,-88(s0)
	.loc 2 179 12
	lw	a4,-88(s0)
.LBE39:
.LBE38:
	.loc 1 171 19 discriminator 1
	lw	a5,-116(s0)
	sw	a4,24(a5)
	.loc 1 172 127
	lw	a5,-120(s0)
	addi	a5,a5,12
	sw	a5,-68(s0)
.LBB40:
.LBB41:
	.loc 2 174 33
	lw	a5,-68(s0)
	sw	a5,-72(s0)
	.loc 2 175 7
	lw	a5,-72(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	sw	a5,-76(s0)
	.loc 2 179 12
	lw	a4,-76(s0)
.LBE41:
.LBE40:
	.loc 1 172 19 discriminator 1
	lw	a5,-116(s0)
	sw	a4,28(a5)
	.loc 1 173 127
	lw	a5,-120(s0)
	addi	a5,a5,16
	sw	a5,-56(s0)
.LBB42:
.LBB43:
	.loc 2 174 33
	lw	a5,-56(s0)
	sw	a5,-60(s0)
	.loc 2 175 7
	lw	a5,-60(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	sw	a5,-64(s0)
	.loc 2 179 12
	lw	a4,-64(s0)
.LBE43:
.LBE42:
	.loc 1 173 19 discriminator 1
	lw	a5,-116(s0)
	sw	a4,32(a5)
	.loc 1 174 127
	lw	a5,-120(s0)
	addi	a5,a5,20
	sw	a5,-44(s0)
.LBB44:
.LBB45:
	.loc 2 174 33
	lw	a5,-44(s0)
	sw	a5,-48(s0)
	.loc 2 175 7
	lw	a5,-48(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	sw	a5,-52(s0)
	.loc 2 179 12
	lw	a4,-52(s0)
.LBE45:
.LBE44:
	.loc 1 174 19 discriminator 1
	lw	a5,-116(s0)
	sw	a4,36(a5)
	.loc 1 175 128
	lw	a5,-120(s0)
	addi	a5,a5,24
	sw	a5,-32(s0)
.LBB46:
.LBB47:
	.loc 2 174 33
	lw	a5,-32(s0)
	sw	a5,-36(s0)
	.loc 2 175 7
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	sw	a5,-40(s0)
	.loc 2 179 12
	lw	a4,-40(s0)
.LBE47:
.LBE46:
	.loc 1 175 20 discriminator 1
	lw	a5,-116(s0)
	sw	a4,40(a5)
	.loc 1 176 128
	lw	a5,-120(s0)
	addi	a5,a5,28
	sw	a5,-20(s0)
.LBB48:
.LBB49:
	.loc 2 174 33
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 2 175 7
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	sw	a5,-28(s0)
	.loc 2 179 12
	lw	a4,-28(s0)
.LBE49:
.LBE48:
	.loc 1 176 20 discriminator 1
	lw	a5,-116(s0)
	sw	a4,44(a5)
	.loc 1 178 12
	li	a5,0
	.loc 1 179 1
	mv	a0,a5
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	mbedtls_chacha20_setkey, .-mbedtls_chacha20_setkey
	.section	.text.mbedtls_chacha20_starts,"ax",@progbits
	.align	1
	.globl	mbedtls_chacha20_starts
	.type	mbedtls_chacha20_starts, @function
mbedtls_chacha20_starts:
.LFB21:
	.loc 1 184 1
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
	sw	a2,-76(s0)
	.loc 1 186 20
	lw	a5,-68(s0)
	lw	a4,-76(s0)
	sw	a4,48(a5)
	lw	a5,-72(s0)
	sw	a5,-44(s0)
.LBB50:
.LBB51:
	.loc 2 174 33
	lw	a5,-44(s0)
	sw	a5,-48(s0)
	.loc 2 175 7
	lw	a5,-48(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	sw	a5,-52(s0)
	.loc 2 179 12
	lw	a4,-52(s0)
.LBE51:
.LBE50:
	.loc 1 189 20 discriminator 1
	lw	a5,-68(s0)
	sw	a4,52(a5)
	.loc 1 190 131
	lw	a5,-72(s0)
	addi	a5,a5,4
	sw	a5,-32(s0)
.LBB52:
.LBB53:
	.loc 2 174 33
	lw	a5,-32(s0)
	sw	a5,-36(s0)
	.loc 2 175 7
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	sw	a5,-40(s0)
	.loc 2 179 12
	lw	a4,-40(s0)
.LBE53:
.LBE52:
	.loc 1 190 20 discriminator 1
	lw	a5,-68(s0)
	sw	a4,56(a5)
	.loc 1 191 131
	lw	a5,-72(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.LBB54:
.LBB55:
	.loc 2 174 33
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 2 175 7
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	sw	a5,-28(s0)
	.loc 2 179 12
	lw	a4,-28(s0)
.LBE55:
.LBE54:
	.loc 1 191 20 discriminator 1
	lw	a5,-68(s0)
	sw	a4,60(a5)
	.loc 1 193 33
	lw	a5,-68(s0)
	addi	a5,a5,64
	.loc 1 193 5
	li	a1,64
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 1 196 31
	lw	a5,-68(s0)
	li	a4,64
	sw	a4,128(a5)
	.loc 1 198 12
	li	a5,0
	.loc 1 199 1
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
.LFE21:
	.size	mbedtls_chacha20_starts, .-mbedtls_chacha20_starts
	.section	.text.mbedtls_chacha20_update,"ax",@progbits
	.align	1
	.globl	mbedtls_chacha20_update
	.type	mbedtls_chacha20_update, @function
mbedtls_chacha20_update:
.LFB22:
	.loc 1 205 1
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
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	.loc 1 206 12
	sw	zero,-20(s0)
	.loc 1 209 11
	j	.L28
.L30:
	.loc 1 210 31
	lw	a4,-76(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 1 211 47
	lw	a5,-68(s0)
	lw	a5,128(a5)
	.loc 1 211 43
	lw	a4,-68(s0)
	add	a5,a4,a5
	lbu	a4,64(a5)
	.loc 1 210 15
	lw	a2,-80(s0)
	lw	a5,-20(s0)
	add	a5,a2,a5
	.loc 1 210 24
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 213 12
	lw	a5,-68(s0)
	lw	a5,128(a5)
	.loc 1 213 34
	addi	a4,a5,1
	lw	a5,-68(s0)
	sw	a4,128(a5)
	.loc 1 214 15
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 215 13
	lw	a5,-72(s0)
	addi	a5,a5,-1
	sw	a5,-72(s0)
.L28:
	.loc 1 209 22
	lw	a5,-72(s0)
	beq	a5,zero,.L31
	.loc 1 209 28 discriminator 1
	lw	a5,-68(s0)
	lw	a4,128(a5)
	.loc 1 209 22 discriminator 1
	li	a5,63
	bleu	a4,a5,.L30
	.loc 1 219 11
	j	.L31
.L34:
	.loc 1 221 27
	lw	a4,-68(s0)
	.loc 1 221 39
	lw	a5,-68(s0)
	addi	a5,a5,64
	.loc 1 221 9
	mv	a1,a5
	mv	a0,a4
	call	chacha20_block
	.loc 1 222 19
	lw	a5,-68(s0)
	lw	a5,48(a5)
	.loc 1 222 26
	addi	a4,a5,1
	lw	a5,-68(s0)
	sw	a4,48(a5)
	.loc 1 224 9
	lw	a4,-80(s0)
	lw	a5,-20(s0)
	add	a3,a4,a5
	lw	a4,-76(s0)
	lw	a5,-20(s0)
	add	a4,a4,a5
	.loc 1 224 57
	lw	a5,-68(s0)
	addi	a5,a5,64
	sw	a3,-24(s0)
	sw	a4,-28(s0)
	sw	a5,-32(s0)
	li	a5,64
	sw	a5,-36(s0)
.LBB56:
.LBB57:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/common.h"
	.loc 3 191 12
	sw	zero,-40(s0)
	.loc 3 234 5
	j	.L32
.L33:
	.loc 3 235 17
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 3 235 24
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 3 235 10
	lw	a2,-24(s0)
	lw	a5,-40(s0)
	add	a5,a2,a5
	.loc 3 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 3 234 20 discriminator 2
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
.L32:
	.loc 3 234 14 discriminator 1
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	bgtu	a4,a5,.L33
	.loc 3 237 1
	nop
.LBE57:
.LBE56:
	.loc 1 226 16
	lw	a5,-20(s0)
	addi	a5,a5,64
	sw	a5,-20(s0)
	.loc 1 227 14
	lw	a5,-72(s0)
	addi	a5,a5,-64
	sw	a5,-72(s0)
.L31:
	.loc 1 219 17
	lw	a4,-72(s0)
	li	a5,63
	bgtu	a4,a5,.L34
	.loc 1 231 8
	lw	a5,-72(s0)
	beq	a5,zero,.L35
	.loc 1 233 27
	lw	a4,-68(s0)
	.loc 1 233 39
	lw	a5,-68(s0)
	addi	a5,a5,64
	.loc 1 233 9
	mv	a1,a5
	mv	a0,a4
	call	chacha20_block
	.loc 1 234 19
	lw	a5,-68(s0)
	lw	a5,48(a5)
	.loc 1 234 26
	addi	a4,a5,1
	lw	a5,-68(s0)
	sw	a4,48(a5)
	.loc 1 236 9
	lw	a4,-80(s0)
	lw	a5,-20(s0)
	add	a3,a4,a5
	lw	a4,-76(s0)
	lw	a5,-20(s0)
	add	a4,a4,a5
	.loc 1 236 57
	lw	a5,-68(s0)
	addi	a5,a5,64
	sw	a3,-44(s0)
	sw	a4,-48(s0)
	sw	a5,-52(s0)
	lw	a5,-72(s0)
	sw	a5,-56(s0)
.LBB58:
.LBB59:
	.loc 3 191 12
	sw	zero,-60(s0)
	.loc 3 234 5
	j	.L36
.L37:
	.loc 3 235 17
	lw	a4,-48(s0)
	lw	a5,-60(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 3 235 24
	lw	a4,-52(s0)
	lw	a5,-60(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 3 235 10
	lw	a2,-44(s0)
	lw	a5,-60(s0)
	add	a5,a2,a5
	.loc 3 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 3 234 20 discriminator 2
	lw	a5,-60(s0)
	addi	a5,a5,1
	sw	a5,-60(s0)
.L36:
	.loc 3 234 14 discriminator 1
	lw	a4,-56(s0)
	lw	a5,-60(s0)
	bgtu	a4,a5,.L37
	.loc 3 237 1
	nop
.LBE59:
.LBE58:
	.loc 1 238 35
	lw	a5,-68(s0)
	lw	a4,-72(s0)
	sw	a4,128(a5)
.L35:
	.loc 1 242 12
	li	a5,0
	.loc 1 243 1
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
.LFE22:
	.size	mbedtls_chacha20_update, .-mbedtls_chacha20_update
	.section	.text.mbedtls_chacha20_crypt,"ax",@progbits
	.align	1
	.globl	mbedtls_chacha20_crypt
	.type	mbedtls_chacha20_crypt, @function
mbedtls_chacha20_crypt:
.LFB23:
	.loc 1 251 1
	.cfi_startproc
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sw	ra,188(sp)
	sw	s0,184(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,192
	.cfi_def_cfa 8, 0
	sw	a0,-164(s0)
	sw	a1,-168(s0)
	sw	a2,-172(s0)
	sw	a3,-176(s0)
	sw	a4,-180(s0)
	sw	a5,-184(s0)
	.loc 1 253 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 255 5
	addi	a5,s0,-152
	mv	a0,a5
	call	mbedtls_chacha20_init
	.loc 1 257 11
	addi	a5,s0,-152
	lw	a1,-164(s0)
	mv	a0,a5
	call	mbedtls_chacha20_setkey
	sw	a0,-20(s0)
	.loc 1 258 8
	lw	a5,-20(s0)
	bne	a5,zero,.L44
	.loc 1 262 11
	addi	a5,s0,-152
	lw	a2,-172(s0)
	lw	a1,-168(s0)
	mv	a0,a5
	call	mbedtls_chacha20_starts
	sw	a0,-20(s0)
	.loc 1 263 8
	lw	a5,-20(s0)
	bne	a5,zero,.L45
	.loc 1 267 11
	addi	a5,s0,-152
	lw	a3,-184(s0)
	lw	a2,-180(s0)
	lw	a1,-176(s0)
	mv	a0,a5
	call	mbedtls_chacha20_update
	sw	a0,-20(s0)
	j	.L41
.L44:
	.loc 1 259 9
	nop
	j	.L41
.L45:
	.loc 1 264 9
	nop
.L41:
	.loc 1 270 5
	addi	a5,s0,-152
	mv	a0,a5
	call	mbedtls_chacha20_free
	.loc 1 271 12
	lw	a5,-20(s0)
	.loc 1 272 1
	mv	a0,a5
	lw	ra,188(sp)
	.cfi_restore 1
	lw	s0,184(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 192
	addi	sp,sp,192
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	mbedtls_chacha20_crypt, .-mbedtls_chacha20_crypt
	.section	.rodata.test_keys,"a"
	.align	2
	.type	test_keys, @object
	.size	test_keys, 64
test_keys:
	.zero	32
	.zero	31
	.ascii	"\001"
	.section	.rodata.test_nonces,"a"
	.align	2
	.type	test_nonces, @object
	.size	test_nonces, 24
test_nonces:
	.base64	"AAAAAAAAAAAAAAAA"
	.zero	11
	.ascii	"\002"
	.section	.srodata.test_counters,"a"
	.align	2
	.type	test_counters, @object
	.size	test_counters, 8
test_counters:
	.word	0
	.word	1
	.section	.rodata.test_input,"a"
	.align	2
	.type	test_input, @object
	.size	test_input, 750
test_input:
	.zero	65
	.zero	310
	.ascii	"Any submission to the IETF intended by the Contributor for p"
	.ascii	"ublication as all or part of an IETF Internet-Draft or RFC a"
	.ascii	"nd any statement made within the context of an IETF activity"
	.ascii	" is considered an \"IETF Contribution\". Such statements inc"
	.ascii	"lude oral statements in IETF sessions, as well as written an"
	.ascii	"d electronic communications made at any time or place, which"
	.ascii	" are addressed to"
	.section	.rodata.test_output,"a"
	.align	2
	.type	test_output, @object
	.size	test_output, 750
test_output:
	.base64	"drjgraDxPZBAXWrlU4a9KL3SGbigje0aqDbvzIt3DcfaQVl8UVdIjXck4D+42Eo3akO49BUYoRzDh7Zpsu5lhgA="
	.zero	310
	.base64	"o/vwffP6L95PN2yiPoJzcEFgXZ9PT1e9jP8sHUt5Vewql5SL03IpFcjz0zf303AFDp6W1ke3w59W4DHKXrYlDUBC4CeF7Oz6S0u16OrQRA4gtujbCdiBp8YTL0IOUnlQQr36d3PYqQUUR7MpHOFBHGgEZVUqpsQFt3ZNXoe+qFrQD4RJ7Y9y0NZiqwUmkcpmQkvIbS34DqQfQ6v5N9MlncSy0N+0imyROd3X92lm6SjmNVU7p2xch517NdSesuYrCHHNrGOJOeJeih4O+dUoD6jKMos1HDx2WYnLzz2qi2zMOq+fOXnJKzcg/Ijcle2Eob4FnGSZuf2iNufoGLBL"
	.base64	"C8OcHodrGTv+VWl1P4gSjMCKqptj0aFvgO8lVNcYnEEfWGnKUsW4P6Nv8ha5wdMAYr68/S3FvOCRGTT9p5qG9uaYztdZw/+bZHczjz2k+c2FFOqZgsyvs0GyOE3ZAvPRq3rGHdKcbyG6W4YvNzDjfP3E/YBsIvIh"
	.section	.srodata.test_lengths,"a"
	.align	2
	.type	test_lengths, @object
	.size	test_lengths, 8
test_lengths:
	.word	64
	.word	375
	.section	.rodata
	.align	2
.LC0:
	.string	"  ChaCha20 test %u "
	.align	2
.LC1:
	.string	"error code: %i\n"
	.align	2
.LC2:
	.string	"failed (output)\n"
	.align	2
.LC3:
	.string	"passed\n"
	.align	2
.LC4:
	.string	"\n"
	.section	.text.mbedtls_chacha20_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_chacha20_self_test
	.type	mbedtls_chacha20_self_test, @function
mbedtls_chacha20_self_test:
.LFB24:
	.loc 1 461 1
	.cfi_startproc
	addi	sp,sp,-432
	.cfi_def_cfa_offset 432
	sw	ra,428(sp)
	sw	s0,424(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,432
	.cfi_def_cfa 8, 0
	sw	a0,-420(s0)
	.loc 1 464 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 1 466 12
	sw	zero,-20(s0)
	.loc 1 466 5
	j	.L47
.L55:
	.loc 1 467 12
	lw	a5,-420(s0)
	beq	a5,zero,.L48
	.loc 1 468 13
	lw	a1,-20(s0)
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
.L48:
	.loc 1 471 47
	lw	a5,-20(s0)
	slli	a4,a5,5
	lui	a5,%hi(test_keys)
	addi	a5,a5,%lo(test_keys)
	add	a0,a4,a5
	.loc 1 472 49
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(test_nonces)
	addi	a4,a4,%lo(test_nonces)
	add	a1,a5,a4
	.loc 1 473 51
	lui	a5,%hi(test_counters)
	addi	a4,a5,%lo(test_counters)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a2,0(a5)
	.loc 1 474 50
	lui	a5,%hi(test_lengths)
	addi	a4,a5,%lo(test_lengths)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 1 475 48
	lw	a4,-20(s0)
	li	a5,375
	mul	a4,a4,a5
	lui	a5,%hi(test_input)
	addi	a5,a5,%lo(test_input)
	add	a4,a4,a5
	.loc 1 471 15
	addi	a5,s0,-408
	call	mbedtls_chacha20_crypt
	sw	a0,-24(s0)
	.loc 1 478 17
	lw	a5,-24(s0)
	beq	a5,zero,.L49
	.loc 1 478 36 discriminator 1
	lw	a5,-420(s0)
	beq	a5,zero,.L50
	.loc 1 478 51 discriminator 2
	lw	a1,-24(s0)
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L50:
	.loc 1 478 92 discriminator 5
	li	a5,-1
	.loc 1 478 92 is_stmt 0
	j	.L57
.L49:
	.loc 1 480 51 is_stmt 1
	lw	a4,-20(s0)
	li	a5,375
	mul	a4,a4,a5
	lui	a5,%hi(test_output)
	addi	a5,a5,%lo(test_output)
	add	a3,a4,a5
	.loc 1 480 68
	lui	a5,%hi(test_lengths)
	addi	a4,a5,%lo(test_lengths)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 480 25
	addi	a5,s0,-408
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 1 480 17 discriminator 1
	beq	a5,zero,.L52
	.loc 1 480 80 discriminator 2
	lw	a5,-420(s0)
	beq	a5,zero,.L53
	.loc 1 480 95 discriminator 3
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L53:
	.loc 1 480 132 discriminator 6
	li	a5,-1
	.loc 1 480 132 is_stmt 0
	j	.L57
.L52:
	.loc 1 483 12 is_stmt 1
	lw	a5,-420(s0)
	beq	a5,zero,.L54
	.loc 1 484 13
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
.L54:
	.loc 1 466 27 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L47:
	.loc 1 466 20 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L55
	.loc 1 488 8
	lw	a5,-420(s0)
	beq	a5,zero,.L56
	.loc 1 489 9
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.L56:
	.loc 1 492 12
	li	a5,0
.L57:
	.loc 1 493 1
	mv	a0,a5
	lw	ra,428(sp)
	.cfi_restore 1
	lw	s0,424(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 432
	addi	sp,sp,432
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	mbedtls_chacha20_self_test, .-mbedtls_chacha20_self_test
	.text
.Letext0:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/chacha20.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8ec
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1c
	.4byte	.LASF54
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x7
	.4byte	0x32
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xe
	.4byte	.LASF12
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x7
	.4byte	0x76
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xe
	.4byte	.LASF13
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0xe
	.4byte	.LASF14
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x7
	.4byte	0x9a
	.uleb128 0x1e
	.byte	0x4
	.uleb128 0x11
	.4byte	0xab
	.uleb128 0xa
	.4byte	0x32
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x7
	.4byte	0xb7
	.uleb128 0xa
	.4byte	0xbe
	.uleb128 0x11
	.4byte	0xc3
	.uleb128 0xa
	.4byte	0xd7
	.uleb128 0x11
	.4byte	0xcd
	.uleb128 0x1f
	.uleb128 0x20
	.byte	0x4
	.byte	0x2
	.byte	0x59
	.byte	0x9
	.4byte	0xed
	.uleb128 0x21
	.string	"x"
	.byte	0x2
	.byte	0x5a
	.byte	0xe
	.4byte	0x9a
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF16
	.byte	0x2
	.byte	0x5b
	.byte	0x1b
	.4byte	0xd8
	.uleb128 0x22
	.4byte	.LASF20
	.byte	0x84
	.byte	0x6
	.byte	0x26
	.byte	0x10
	.4byte	0x12b
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0x27
	.byte	0xe
	.4byte	0x12b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0x28
	.byte	0xd
	.4byte	0x13b
	.byte	0x40
	.uleb128 0x12
	.4byte	.LASF19
	.byte	0x29
	.byte	0xc
	.4byte	0x76
	.byte	0x80
	.byte	0
	.uleb128 0xb
	.4byte	0x9a
	.4byte	0x13b
	.uleb128 0x8
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.4byte	0x8e
	.4byte	0x14b
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2b
	.byte	0x1
	.4byte	0xf9
	.uleb128 0xb
	.4byte	0x39
	.4byte	0x16d
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x1
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.4byte	0x157
	.uleb128 0xc
	.4byte	.LASF21
	.2byte	0x116
	.byte	0x1c
	.4byte	0x16d
	.uleb128 0x5
	.byte	0x3
	.4byte	test_keys
	.uleb128 0xb
	.4byte	0x39
	.4byte	0x19a
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x1
	.uleb128 0x8
	.4byte	0x6f
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	0x184
	.uleb128 0xc
	.4byte	.LASF22
	.2byte	0x126
	.byte	0x1c
	.4byte	0x19a
	.uleb128 0x5
	.byte	0x3
	.4byte	test_nonces
	.uleb128 0xb
	.4byte	0xa6
	.4byte	0x1c1
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x1b1
	.uleb128 0xc
	.4byte	.LASF23
	.2byte	0x132
	.byte	0x17
	.4byte	0x1c1
	.uleb128 0x5
	.byte	0x3
	.4byte	test_counters
	.uleb128 0xb
	.4byte	0x39
	.4byte	0x1ef
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x1
	.uleb128 0x17
	.4byte	0x6f
	.2byte	0x176
	.byte	0
	.uleb128 0x7
	.4byte	0x1d8
	.uleb128 0xc
	.4byte	.LASF24
	.2byte	0x138
	.byte	0x1c
	.4byte	0x1ef
	.uleb128 0x5
	.byte	0x3
	.4byte	test_input
	.uleb128 0xc
	.4byte	.LASF25
	.2byte	0x177
	.byte	0x1c
	.4byte	0x1ef
	.uleb128 0x5
	.byte	0x3
	.4byte	test_output
	.uleb128 0xb
	.4byte	0x82
	.4byte	0x228
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x218
	.uleb128 0xc
	.4byte	.LASF26
	.2byte	0x1b6
	.byte	0x15
	.4byte	0x228
	.uleb128 0x5
	.byte	0x3
	.4byte	test_lengths
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x7
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x25f
	.uleb128 0x9
	.4byte	0xcd
	.uleb128 0x9
	.4byte	0xcd
	.uleb128 0x9
	.4byte	0x76
	.byte	0
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x8
	.byte	0xce
	.byte	0x5
	.4byte	0x68
	.4byte	0x276
	.uleb128 0x9
	.4byte	0xc8
	.uleb128 0x23
	.byte	0
	.uleb128 0x24
	.4byte	.LASF55
	.byte	0x9
	.byte	0x9f
	.byte	0x6
	.4byte	0x28d
	.uleb128 0x9
	.4byte	0xab
	.uleb128 0x9
	.4byte	0x76
	.byte	0
	.uleb128 0x13
	.4byte	.LASF29
	.byte	0x7
	.byte	0x1f
	.byte	0x8
	.4byte	0xab
	.4byte	0x2ad
	.uleb128 0x9
	.4byte	0xad
	.uleb128 0x9
	.4byte	0xd2
	.uleb128 0x9
	.4byte	0x76
	.byte	0
	.uleb128 0x25
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1cc
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x306
	.uleb128 0x26
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x1cc
	.byte	0x24
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0xc
	.4byte	.LASF30
	.2byte	0x1ce
	.byte	0x13
	.4byte	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x18
	.string	"i"
	.2byte	0x1cf
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"ret"
	.2byte	0x1d0
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	0x32
	.4byte	0x317
	.uleb128 0x17
	.4byte	0x6f
	.2byte	0x17c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0xf5
	.4byte	0x68
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b4
	.uleb128 0x5
	.string	"key"
	.byte	0xf5
	.byte	0x30
	.4byte	0x3b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0xf6
	.byte	0x30
	.4byte	0x3b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0xf7
	.byte	0x25
	.4byte	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0xf8
	.byte	0x23
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0xf9
	.byte	0x31
	.4byte	0x3b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0xfa
	.byte	0x2b
	.4byte	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x15
	.string	"ctx"
	.byte	0xfc
	.byte	0x1e
	.4byte	0x14b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x15
	.string	"ret"
	.byte	0xfd
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x10d
	.byte	0x1
	.4byte	.L41
	.byte	0
	.uleb128 0xa
	.4byte	0x39
	.uleb128 0x14
	.4byte	.LASF38
	.byte	0xc9
	.4byte	0x68
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x490
	.uleb128 0x5
	.string	"ctx"
	.byte	0xc9
	.byte	0x37
	.4byte	0x490
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0xca
	.byte	0x24
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0xcb
	.byte	0x32
	.4byte	0x3b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0xcc
	.byte	0x2c
	.4byte	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0xce
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	0x852
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0xe0
	.byte	0x9
	.4byte	0x457
	.uleb128 0x2
	.4byte	0x85d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	0x867
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	0x871
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	0x87b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	0x885
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xf
	.4byte	0x852
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0xec
	.byte	0x9
	.uleb128 0x2
	.4byte	0x85d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	0x867
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	0x871
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	0x87b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	0x885
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x14b
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0xb5
	.4byte	0x68
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55b
	.uleb128 0x5
	.string	"ctx"
	.byte	0xb5
	.byte	0x37
	.4byte	0x490
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0xb6
	.byte	0x31
	.4byte	0x3b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0xb7
	.byte	0x26
	.4byte	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x6
	.4byte	0x8c1
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0xbd
	.byte	0x5e
	.4byte	0x506
	.uleb128 0x2
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	0x8d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	0x8e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x6
	.4byte	0x8c1
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0xbe
	.byte	0x5e
	.4byte	0x532
	.uleb128 0x2
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	0x8d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	0x8e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xf
	.4byte	0x8c1
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0xbf
	.byte	0x5e
	.uleb128 0x2
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	0x8d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	0x8e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF42
	.byte	0x1
	.byte	0x9f
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fc
	.uleb128 0x5
	.string	"ctx"
	.byte	0x9f
	.byte	0x37
	.4byte	0x490
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x5
	.string	"key"
	.byte	0xa0
	.byte	0x31
	.4byte	0x3b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x6
	.4byte	0x8c1
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0xa9
	.byte	0x5b
	.4byte	0x5c2
	.uleb128 0x2
	.4byte	0x8ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1
	.4byte	0x8d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1
	.4byte	0x8e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x6
	.4byte	0x8c1
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0xaa
	.byte	0x5b
	.4byte	0x5f1
	.uleb128 0x2
	.4byte	0x8ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1
	.4byte	0x8d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1
	.4byte	0x8e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x6
	.4byte	0x8c1
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0xab
	.byte	0x5b
	.4byte	0x620
	.uleb128 0x2
	.4byte	0x8ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.4byte	0x8d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.4byte	0x8e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x6
	.4byte	0x8c1
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0xac
	.byte	0x5c
	.4byte	0x64f
	.uleb128 0x2
	.4byte	0x8ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	0x8d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.4byte	0x8e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x6
	.4byte	0x8c1
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0xad
	.byte	0x5c
	.4byte	0x67b
	.uleb128 0x2
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	0x8d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	0x8e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x6
	.4byte	0x8c1
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0xae
	.byte	0x5c
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	0x8d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	0x8e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x6
	.4byte	0x8c1
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0xaf
	.byte	0x5d
	.4byte	0x6d3
	.uleb128 0x2
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	0x8d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	0x8e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xf
	.4byte	0x8c1
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.byte	0xb0
	.byte	0x5d
	.uleb128 0x2
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	0x8d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	0x8e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF43
	.byte	0x98
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71f
	.uleb128 0x5
	.string	"ctx"
	.byte	0x98
	.byte	0x36
	.4byte	0x490
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF44
	.byte	0x8f
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x742
	.uleb128 0x5
	.string	"ctx"
	.byte	0x8f
	.byte	0x36
	.4byte	0x490
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF48
	.byte	0x67
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x67
	.byte	0x2b
	.4byte	0x7d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x68
	.byte	0x2a
	.4byte	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x6a
	.byte	0xe
	.4byte	0x12b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x15
	.string	"i"
	.byte	0x6b
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x87
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.4byte	0x890
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x89
	.byte	0x85
	.uleb128 0x2
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	0x8a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	0x8af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xa6
	.uleb128 0x1a
	.4byte	.LASF49
	.byte	0x54
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f8
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x54
	.byte	0x2b
	.4byte	0x7f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	0x9a
	.uleb128 0x2a
	.4byte	.LASF50
	.byte	0x1
	.byte	0x31
	.byte	0x14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x852
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x31
	.byte	0x34
	.4byte	0x7f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"a"
	.byte	0x32
	.byte	0x32
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"b"
	.byte	0x33
	.byte	0x32
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"c"
	.byte	0x34
	.byte	0x32
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"d"
	.byte	0x35
	.byte	0x32
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF51
	.byte	0x3
	.byte	0xba
	.4byte	0x890
	.uleb128 0xd
	.string	"r"
	.byte	0x3
	.byte	0xba
	.byte	0x2f
	.4byte	0xb2
	.uleb128 0xd
	.string	"a"
	.byte	0x3
	.byte	0xbb
	.byte	0x35
	.4byte	0x3b4
	.uleb128 0xd
	.string	"b"
	.byte	0x3
	.byte	0xbc
	.byte	0x35
	.4byte	0x3b4
	.uleb128 0xd
	.string	"n"
	.byte	0x3
	.byte	0xbd
	.byte	0x27
	.4byte	0x76
	.uleb128 0x10
	.string	"i"
	.byte	0x3
	.byte	0xbf
	.byte	0xc
	.4byte	0x76
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF52
	.byte	0x2
	.byte	0xc2
	.4byte	0x8bc
	.uleb128 0xd
	.string	"p"
	.byte	0x2
	.byte	0xc2
	.byte	0x37
	.4byte	0xab
	.uleb128 0xd
	.string	"x"
	.byte	0x2
	.byte	0xc2
	.byte	0x43
	.4byte	0x9a
	.uleb128 0x10
	.string	"p32"
	.byte	0x2
	.byte	0xc8
	.byte	0x21
	.4byte	0x8bc
	.byte	0
	.uleb128 0xa
	.4byte	0xed
	.uleb128 0x2b
	.4byte	.LASF53
	.byte	0x2
	.byte	0xa7
	.byte	0x18
	.4byte	0x9a
	.byte	0x3
	.uleb128 0xd
	.string	"p"
	.byte	0x2
	.byte	0xa7
	.byte	0x41
	.4byte	0xcd
	.uleb128 0x10
	.string	"r"
	.byte	0x2
	.byte	0xa9
	.byte	0xe
	.4byte	0x9a
	.uleb128 0x10
	.string	"p32"
	.byte	0x2
	.byte	0xae
	.byte	0x21
	.4byte	0x8bc
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.sleb128 5
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x27
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"printf"
.LASF42:
	.string	"mbedtls_chacha20_setkey"
.LASF20:
	.string	"mbedtls_chacha20_context"
.LASF12:
	.string	"size_t"
.LASF51:
	.string	"mbedtls_xor"
.LASF31:
	.string	"mbedtls_chacha20_self_test"
.LASF25:
	.string	"test_output"
.LASF22:
	.string	"test_nonces"
.LASF9:
	.string	"long long unsigned int"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF49:
	.string	"chacha20_inner_block"
.LASF24:
	.string	"test_input"
.LASF53:
	.string	"mbedtls_get_unaligned_uint32"
.LASF17:
	.string	"state"
.LASF6:
	.string	"long int"
.LASF32:
	.string	"mbedtls_chacha20_crypt"
.LASF29:
	.string	"memcpy"
.LASF41:
	.string	"mbedtls_chacha20_starts"
.LASF16:
	.string	"mbedtls_uint32_unaligned_t"
.LASF23:
	.string	"test_counters"
.LASF10:
	.string	"unsigned int"
.LASF7:
	.string	"long unsigned int"
.LASF39:
	.string	"size"
.LASF5:
	.string	"short unsigned int"
.LASF43:
	.string	"mbedtls_chacha20_free"
.LASF30:
	.string	"output"
.LASF45:
	.string	"initial_state"
.LASF11:
	.string	"long double"
.LASF47:
	.string	"working_state"
.LASF56:
	.string	"cleanup"
.LASF46:
	.string	"keystream"
.LASF3:
	.string	"unsigned char"
.LASF4:
	.string	"short int"
.LASF35:
	.string	"counter"
.LASF38:
	.string	"mbedtls_chacha20_update"
.LASF36:
	.string	"data_len"
.LASF34:
	.string	"nonce"
.LASF37:
	.string	"input"
.LASF19:
	.string	"keystream_bytes_used"
.LASF14:
	.string	"uint32_t"
.LASF21:
	.string	"test_keys"
.LASF26:
	.string	"test_lengths"
.LASF15:
	.string	"char"
.LASF55:
	.string	"mbedtls_platform_zeroize"
.LASF33:
	.string	"verbose"
.LASF27:
	.string	"memcmp"
.LASF40:
	.string	"offset"
.LASF54:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF50:
	.string	"chacha20_quarter_round"
.LASF48:
	.string	"chacha20_block"
.LASF13:
	.string	"uint8_t"
.LASF52:
	.string	"mbedtls_put_unaligned_uint32"
.LASF44:
	.string	"mbedtls_chacha20_init"
.LASF18:
	.string	"keystream8"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/chacha20.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
