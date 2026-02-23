	.file	"ccm.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ccm.c"
	.section	.text.mbedtls_cipher_info_get_block_size,"ax",@progbits
	.align	1
	.type	mbedtls_cipher_info_get_block_size, @function
mbedtls_cipher_info_get_block_size:
.LFB16:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/cipher.h"
	.loc 1 547 1
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
	.loc 1 548 8
	lw	a5,-20(s0)
	bne	a5,zero,.L2
	.loc 1 549 16
	li	a5,0
	j	.L3
.L2:
	.loc 1 552 26
	lw	a5,-20(s0)
	lw	a5,4(a5)
	andi	a5,a5,31
	andi	a5,a5,0xff
.L3:
	.loc 1 553 1
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
.LFE16:
	.size	mbedtls_cipher_info_get_block_size, .-mbedtls_cipher_info_get_block_size
	.section	.text.mbedtls_ccm_init,"ax",@progbits
	.align	1
	.globl	mbedtls_ccm_init
	.type	mbedtls_ccm_init, @function
mbedtls_ccm_init:
.LFB30:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ccm.c"
	.loc 2 48 1
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
	.loc 2 49 5
	li	a2,128
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 2 50 1
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
.LFE30:
	.size	mbedtls_ccm_init, .-mbedtls_ccm_init
	.section	.text.mbedtls_ccm_setkey,"ax",@progbits
	.align	1
	.globl	mbedtls_ccm_setkey
	.type	mbedtls_ccm_setkey, @function
mbedtls_ccm_setkey:
.LFB31:
	.loc 2 56 1
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
	mv	a5,a1
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sb	a5,-37(s0)
	.loc 2 57 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 72 19
	lw	a4,-48(s0)
	lbu	a5,-37(s0)
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_cipher_info_from_values
	sw	a0,-24(s0)
	.loc 2 74 8
	lw	a5,-24(s0)
	bne	a5,zero,.L6
	.loc 2 75 16
	li	a5,-13
	j	.L7
.L6:
	.loc 2 78 9
	lw	a0,-24(s0)
	call	mbedtls_cipher_info_get_block_size
	mv	a4,a0
	.loc 2 78 8 discriminator 1
	li	a5,16
	beq	a4,a5,.L8
	.loc 2 79 16
	li	a5,-13
	j	.L7
.L8:
	.loc 2 82 5
	lw	a5,-36(s0)
	addi	a5,a5,56
	mv	a0,a5
	call	mbedtls_cipher_free
	.loc 2 84 16
	lw	a5,-36(s0)
	addi	a5,a5,56
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_cipher_setup
	sw	a0,-20(s0)
	.loc 2 84 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L9
	.loc 2 85 16
	lw	a5,-20(s0)
	j	.L7
.L9:
	.loc 2 88 16
	lw	a5,-36(s0)
	addi	a5,a5,56
	lw	a4,-48(s0)
	li	a3,1
	mv	a2,a4
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_cipher_setkey
	sw	a0,-20(s0)
	.loc 2 88 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L10
	.loc 2 90 16
	lw	a5,-20(s0)
	j	.L7
.L10:
	.loc 2 94 12
	lw	a5,-20(s0)
.L7:
	.loc 2 95 1
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
.LFE31:
	.size	mbedtls_ccm_setkey, .-mbedtls_ccm_setkey
	.section	.text.mbedtls_ccm_free,"ax",@progbits
	.align	1
	.globl	mbedtls_ccm_free
	.type	mbedtls_ccm_free, @function
mbedtls_ccm_free:
.LFB32:
	.loc 2 101 1
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
	.loc 2 102 8
	lw	a5,-20(s0)
	beq	a5,zero,.L14
	.loc 2 108 5
	lw	a5,-20(s0)
	addi	a5,a5,56
	mv	a0,a5
	call	mbedtls_cipher_free
	.loc 2 110 5
	li	a1,128
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
	j	.L11
.L14:
	.loc 2 103 9
	nop
.L11:
	.loc 2 111 1
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
	.size	mbedtls_ccm_free, .-mbedtls_ccm_free
	.section	.text.mbedtls_ccm_crypt,"ax",@progbits
	.align	1
	.type	mbedtls_ccm_crypt, @function
mbedtls_ccm_crypt:
.LFB33:
	.loc 2 127 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	sw	a4,-84(s0)
	.loc 2 128 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 129 19
	sw	zero,-56(s0)
	sw	zero,-52(s0)
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	.loc 2 134 12
	sw	zero,-60(s0)
	.loc 2 135 11
	lw	a5,-68(s0)
	addi	a0,a5,56
	.loc 2 135 54
	lw	a5,-68(s0)
	addi	a5,a5,16
	.loc 2 135 11
	addi	a4,s0,-60
	addi	a3,s0,-56
	li	a2,16
	mv	a1,a5
	call	mbedtls_cipher_update
	sw	a0,-20(s0)
	.loc 2 137 8
	lw	a5,-20(s0)
	beq	a5,zero,.L16
	.loc 2 138 12
	lw	a5,-68(s0)
	lw	a5,124(a5)
	.loc 2 138 20
	ori	a4,a5,16
	lw	a5,-68(s0)
	sw	a4,124(a5)
	.loc 2 139 9
	addi	a5,s0,-56
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 2 140 16
	lw	a5,-20(s0)
	j	.L20
.L16:
	.loc 2 143 5
	addi	a4,s0,-56
	lw	a5,-72(s0)
	add	a5,a4,a5
	lw	a4,-84(s0)
	sw	a4,-24(s0)
	lw	a4,-80(s0)
	sw	a4,-28(s0)
	sw	a5,-32(s0)
	lw	a5,-76(s0)
	sw	a5,-36(s0)
.LBB10:
.LBB11:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/common.h"
	.loc 3 191 12
	sw	zero,-40(s0)
	.loc 3 234 5
	j	.L18
.L19:
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
.L18:
	.loc 3 234 14 discriminator 1
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	bgtu	a4,a5,.L19
	.loc 3 237 1
	nop
.LBE11:
.LBE10:
	.loc 2 145 5
	addi	a5,s0,-56
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 2 146 12
	lw	a5,-20(s0)
.L20:
	.loc 2 147 1
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	mbedtls_ccm_crypt, .-mbedtls_ccm_crypt
	.section	.text.mbedtls_ccm_clear_state,"ax",@progbits
	.align	1
	.type	mbedtls_ccm_clear_state, @function
mbedtls_ccm_clear_state:
.LFB34:
	.loc 2 150 1
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
	.loc 2 151 16
	lw	a5,-20(s0)
	sw	zero,124(a5)
	.loc 2 152 15
	lw	a5,-20(s0)
	.loc 2 152 5
	li	a2,16
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 153 15
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 2 153 5
	li	a2,16
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 154 1
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
.LFE34:
	.size	mbedtls_ccm_clear_state, .-mbedtls_ccm_clear_state
	.section	.text.ccm_calculate_first_block_if_ready,"ax",@progbits
	.align	1
	.type	ccm_calculate_first_block_if_ready, @function
ccm_calculate_first_block_if_ready:
.LFB35:
	.loc 2 157 1
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
	.loc 2 158 9
	li	a5,-110
	sw	a5,-28(s0)
	.loc 2 168 14
	lw	a5,-36(s0)
	lw	a5,124(a5)
	.loc 2 168 22
	andi	a5,a5,1
	.loc 2 168 8
	beq	a5,zero,.L23
	.loc 2 168 42 discriminator 1
	lw	a5,-36(s0)
	lw	a5,124(a5)
	.loc 2 168 50 discriminator 1
	andi	a5,a5,2
	.loc 2 168 34 discriminator 1
	bne	a5,zero,.L24
.L23:
	.loc 2 169 16
	li	a5,0
	j	.L35
.L24:
	.loc 2 175 12
	lw	a5,-36(s0)
	lw	a5,40(a5)
	.loc 2 175 8
	bne	a5,zero,.L26
	.loc 2 176 16
	lw	a5,-36(s0)
	lw	a4,52(a5)
	.loc 2 176 12
	li	a5,3
	beq	a4,a5,.L27
	.loc 2 176 34 discriminator 1
	lw	a5,-36(s0)
	lw	a4,52(a5)
	.loc 2 176 28 discriminator 1
	li	a5,2
	bne	a4,a5,.L28
.L27:
	.loc 2 177 32
	lw	a5,-36(s0)
	sw	zero,32(a5)
	.loc 2 178 20
	li	a5,0
	j	.L35
.L28:
	.loc 2 180 20
	li	a5,-13
	j	.L35
.L26:
	.loc 2 196 11
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 2 196 22
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 2 196 15
	beq	a5,zero,.L29
	.loc 2 196 15 is_stmt 0 discriminator 1
	li	a5,64
	j	.L30
.L29:
	.loc 2 196 15 discriminator 2
	li	a5,0
.L30:
	.loc 2 196 15 discriminator 4
	or	a5,a5,a4
	slli	a5,a5,24
	srai	a5,a5,24
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	sb	a4,0(a5)
	.loc 2 197 11 is_stmt 1
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 2 197 23
	lw	a5,-36(s0)
	lw	a5,40(a5)
	.loc 2 197 33
	addi	a5,a5,-2
	.loc 2 197 38
	srli	a5,a5,1
	.loc 2 197 43
	andi	a5,a5,0xff
	slli	a5,a5,3
	andi	a5,a5,0xff
	.loc 2 197 15
	or	a5,a4,a5
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	sb	a4,0(a5)
	.loc 2 198 11
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 2 198 21
	lw	a5,-36(s0)
	lw	a5,48(a5)
	.loc 2 198 25
	andi	a5,a5,0xff
	addi	a5,a5,-1
	andi	a5,a5,0xff
	.loc 2 198 15
	or	a5,a4,a5
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	sb	a4,0(a5)
	.loc 2 200 12
	sb	zero,-17(s0)
	.loc 2 200 26
	lw	a5,-36(s0)
	lw	a5,32(a5)
	sw	a5,-24(s0)
	.loc 2 200 5
	j	.L31
.L32:
	.loc 2 201 18
	lbu	a5,-17(s0)
	li	a4,15
	sub	a5,a4,a5
	.loc 2 201 25
	lw	a4,-24(s0)
	andi	a4,a4,0xff
	.loc 2 201 22
	lw	a3,-36(s0)
	add	a5,a3,a5
	sb	a4,0(a5)
	.loc 2 200 61 discriminator 3
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
	.loc 2 200 74 discriminator 3
	lw	a5,-24(s0)
	srli	a5,a5,8
	sw	a5,-24(s0)
.L31:
	.loc 2 200 50 discriminator 1
	lbu	a4,-17(s0)
	.loc 2 200 55 discriminator 1
	lw	a5,-36(s0)
	lw	a5,48(a5)
	.loc 2 200 50 discriminator 1
	bltu	a4,a5,.L32
	.loc 2 204 8
	lw	a5,-24(s0)
	beq	a5,zero,.L33
	.loc 2 205 12
	lw	a5,-36(s0)
	lw	a5,124(a5)
	.loc 2 205 20
	ori	a4,a5,16
	lw	a5,-36(s0)
	sw	a4,124(a5)
	.loc 2 206 16
	li	a5,-13
	j	.L35
.L33:
	.loc 2 213 11
	lw	a5,-36(s0)
	addi	a5,a5,56
	.loc 2 213 54
	lw	a1,-36(s0)
	.loc 2 213 66
	lw	a3,-36(s0)
	.loc 2 213 11
	addi	a4,s0,-32
	li	a2,16
	mv	a0,a5
	call	mbedtls_cipher_update
	sw	a0,-28(s0)
	.loc 2 215 8
	lw	a5,-28(s0)
	beq	a5,zero,.L34
	.loc 2 216 12
	lw	a5,-36(s0)
	lw	a5,124(a5)
	.loc 2 216 20
	ori	a4,a5,16
	lw	a5,-36(s0)
	sw	a4,124(a5)
	.loc 2 217 16
	lw	a5,-28(s0)
	j	.L35
.L34:
	.loc 2 220 12
	li	a5,0
.L35:
	.loc 2 221 1
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
.LFE35:
	.size	ccm_calculate_first_block_if_ready, .-ccm_calculate_first_block_if_ready
	.section	.text.mbedtls_ccm_starts,"ax",@progbits
	.align	1
	.globl	mbedtls_ccm_starts
	.type	mbedtls_ccm_starts, @function
mbedtls_ccm_starts:
.LFB36:
	.loc 2 227 1
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
	sw	a3,-32(s0)
	.loc 2 229 8
	lw	a4,-32(s0)
	li	a5,6
	bleu	a4,a5,.L37
	.loc 2 229 20 discriminator 1
	lw	a4,-32(s0)
	li	a5,13
	bleu	a4,a5,.L38
.L37:
	.loc 2 230 16
	li	a5,-13
	j	.L39
.L38:
	.loc 2 233 15
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sw	a4,52(a5)
	.loc 2 234 23
	lw	a5,-32(s0)
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 234 21
	li	a5,15
	sub	a5,a5,a4
	mv	a4,a5
	.loc 2 234 12
	lw	a5,-20(s0)
	sw	a4,48(a5)
	.loc 2 246 15
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 2 246 5
	li	a2,16
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 247 22
	lw	a5,-20(s0)
	lw	a5,48(a5)
	.loc 2 247 26
	andi	a5,a5,0xff
	addi	a5,a5,-1
	andi	a4,a5,0xff
	.loc 2 247 17
	lw	a5,-20(s0)
	sb	a4,16(a5)
	.loc 2 248 12
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 2 248 5
	addi	a5,a5,1
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	mv	a0,a5
	call	memcpy
	.loc 2 249 12
	lw	a5,-20(s0)
	addi	a4,a5,16
	.loc 2 249 25
	lw	a5,-32(s0)
	addi	a5,a5,1
	.loc 2 249 5
	add	a4,a4,a5
	.loc 2 249 41
	lw	a5,-20(s0)
	lw	a5,48(a5)
	.loc 2 249 5
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	memset
	.loc 2 250 18
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,31(a5)
	.loc 2 255 12
	lw	a5,-20(s0)
	.loc 2 255 5
	addi	a5,a5,1
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	mv	a0,a5
	call	memcpy
	.loc 2 257 8
	lw	a5,-20(s0)
	lw	a5,124(a5)
	.loc 2 257 16
	ori	a4,a5,1
	lw	a5,-20(s0)
	sw	a4,124(a5)
	.loc 2 258 12
	lw	a0,-20(s0)
	call	ccm_calculate_first_block_if_ready
	mv	a5,a0
.L39:
	.loc 2 259 1
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
.LFE36:
	.size	mbedtls_ccm_starts, .-mbedtls_ccm_starts
	.section	.text.mbedtls_ccm_set_lengths,"ax",@progbits
	.align	1
	.globl	mbedtls_ccm_set_lengths
	.type	mbedtls_ccm_set_lengths, @function
mbedtls_ccm_set_lengths:
.LFB37:
	.loc 2 265 1
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
	sw	a3,-32(s0)
	.loc 2 273 8
	lw	a4,-32(s0)
	li	a5,2
	beq	a4,a5,.L41
	.loc 2 273 22 discriminator 1
	lw	a4,-32(s0)
	li	a5,16
	bgtu	a4,a5,.L41
	.loc 2 273 49 discriminator 2
	lw	a5,-32(s0)
	andi	a5,a5,1
	.loc 2 273 38 discriminator 2
	beq	a5,zero,.L42
.L41:
	.loc 2 274 16
	li	a5,-13
	j	.L43
.L42:
	.loc 2 277 8
	lw	a4,-24(s0)
	li	a5,65536
	addi	a5,a5,-257
	bleu	a4,a5,.L44
	.loc 2 278 16
	li	a5,-13
	j	.L43
.L44:
	.loc 2 281 24
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,32(a5)
	.loc 2 282 18
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,36(a5)
	.loc 2 283 18
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	sw	a4,40(a5)
	.loc 2 284 20
	lw	a5,-20(s0)
	sw	zero,44(a5)
	.loc 2 286 8
	lw	a5,-20(s0)
	lw	a5,124(a5)
	.loc 2 286 16
	ori	a4,a5,2
	lw	a5,-20(s0)
	sw	a4,124(a5)
	.loc 2 287 12
	lw	a0,-20(s0)
	call	ccm_calculate_first_block_if_ready
	mv	a5,a0
.L43:
	.loc 2 288 1
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
.LFE37:
	.size	mbedtls_ccm_set_lengths, .-mbedtls_ccm_set_lengths
	.section	.text.mbedtls_ccm_update_ad,"ax",@progbits
	.align	1
	.globl	mbedtls_ccm_update_ad
	.type	mbedtls_ccm_update_ad, @function
mbedtls_ccm_update_ad:
.LFB38:
	.loc 2 293 1
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
	.loc 2 294 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 2 300 12
	lw	a5,-68(s0)
	lw	a5,124(a5)
	.loc 2 300 20
	andi	a5,a5,16
	.loc 2 300 8
	beq	a5,zero,.L46
	.loc 2 301 16
	li	a5,-13
	j	.L60
.L46:
	.loc 2 304 8
	lw	a5,-76(s0)
	beq	a5,zero,.L48
	.loc 2 305 16
	lw	a5,-68(s0)
	lw	a5,124(a5)
	.loc 2 305 24
	andi	a5,a5,8
	.loc 2 305 12
	beq	a5,zero,.L49
	.loc 2 306 20
	li	a5,-13
	j	.L60
.L49:
	.loc 2 309 18
	lw	a5,-68(s0)
	lw	a5,124(a5)
	.loc 2 309 26
	andi	a5,a5,4
	.loc 2 309 12
	bne	a5,zero,.L50
	.loc 2 310 30
	lw	a5,-68(s0)
	lw	a5,36(a5)
	.loc 2 310 16
	lw	a4,-76(s0)
	bleu	a4,a5,.L51
	.loc 2 311 24
	li	a5,-13
	j	.L60
.L51:
	.loc 2 314 19
	lw	a5,-68(s0)
	lbu	a4,0(a5)
	.loc 2 314 47
	lw	a5,-68(s0)
	lw	a5,36(a5)
	.loc 2 314 57
	srli	a5,a5,8
	.loc 2 314 26
	andi	a5,a5,0xff
	.loc 2 314 23
	xor	a5,a4,a5
	andi	a4,a5,0xff
	lw	a5,-68(s0)
	sb	a4,0(a5)
	.loc 2 315 19
	lw	a5,-68(s0)
	lbu	a4,1(a5)
	.loc 2 315 47
	lw	a5,-68(s0)
	lw	a5,36(a5)
	.loc 2 315 26
	andi	a5,a5,0xff
	.loc 2 315 23
	xor	a5,a4,a5
	andi	a4,a5,0xff
	lw	a5,-68(s0)
	sb	a4,1(a5)
	.loc 2 317 16
	lw	a5,-68(s0)
	lw	a5,124(a5)
	.loc 2 317 24
	ori	a4,a5,4
	lw	a5,-68(s0)
	sw	a4,124(a5)
	j	.L53
.L50:
	.loc 2 318 23
	lw	a5,-68(s0)
	lw	a4,44(a5)
	.loc 2 318 35
	lw	a5,-76(s0)
	add	a4,a4,a5
	.loc 2 318 50
	lw	a5,-68(s0)
	lw	a5,36(a5)
	.loc 2 318 19
	bleu	a4,a5,.L53
	.loc 2 319 20
	li	a5,-13
	j	.L60
.L59:
	.loc 2 323 26
	lw	a5,-68(s0)
	lw	a5,44(a5)
	.loc 2 323 38
	addi	a5,a5,2
	.loc 2 323 20
	andi	a5,a5,15
	sw	a5,-28(s0)
	.loc 2 325 21
	li	a4,16
	lw	a5,-28(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 327 16
	lw	a4,-20(s0)
	lw	a5,-76(s0)
	bleu	a4,a5,.L54
	.loc 2 328 25
	lw	a5,-76(s0)
	sw	a5,-20(s0)
.L54:
	.loc 2 331 25
	lw	a4,-68(s0)
	.loc 2 331 13
	lw	a5,-28(s0)
	add	a4,a4,a5
	.loc 2 331 42
	lw	a3,-68(s0)
	.loc 2 331 13
	lw	a5,-28(s0)
	add	a5,a3,a5
	sw	a4,-32(s0)
	sw	a5,-36(s0)
	lw	a5,-72(s0)
	sw	a5,-40(s0)
	lw	a5,-20(s0)
	sw	a5,-44(s0)
.LBB12:
.LBB13:
	.loc 3 191 12
	sw	zero,-48(s0)
	.loc 3 234 5
	j	.L55
.L56:
	.loc 3 235 17
	lw	a4,-36(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 3 235 24
	lw	a4,-40(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 3 235 10
	lw	a2,-32(s0)
	lw	a5,-48(s0)
	add	a5,a2,a5
	.loc 3 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 3 234 20 discriminator 2
	lw	a5,-48(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
.L55:
	.loc 3 234 14 discriminator 1
	lw	a4,-44(s0)
	lw	a5,-48(s0)
	bgtu	a4,a5,.L56
	.loc 3 237 1
	nop
.LBE13:
.LBE12:
	.loc 2 333 16
	lw	a5,-68(s0)
	lw	a4,44(a5)
	.loc 2 333 28
	lw	a5,-20(s0)
	add	a4,a4,a5
	lw	a5,-68(s0)
	sw	a4,44(a5)
	.loc 2 334 21
	lw	a4,-76(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-76(s0)
	.loc 2 335 17
	lw	a4,-72(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-72(s0)
	.loc 2 337 25
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	add	a4,a4,a5
	.loc 2 337 16
	li	a5,16
	beq	a4,a5,.L57
	.loc 2 337 46 discriminator 1
	lw	a5,-68(s0)
	lw	a4,44(a5)
	.loc 2 337 64 discriminator 1
	lw	a5,-68(s0)
	lw	a5,36(a5)
	.loc 2 337 40 discriminator 1
	bne	a4,a5,.L53
.L57:
	.loc 2 341 23
	lw	a5,-68(s0)
	addi	a5,a5,56
	.loc 2 341 66
	lw	a1,-68(s0)
	.loc 2 341 78
	lw	a3,-68(s0)
	.loc 2 341 23
	addi	a4,s0,-52
	li	a2,16
	mv	a0,a5
	call	mbedtls_cipher_update
	sw	a0,-24(s0)
	.loc 2 343 20
	lw	a5,-24(s0)
	beq	a5,zero,.L53
	.loc 2 344 24
	lw	a5,-68(s0)
	lw	a5,124(a5)
	.loc 2 344 32
	ori	a4,a5,16
	lw	a5,-68(s0)
	sw	a4,124(a5)
	.loc 2 345 28
	lw	a5,-24(s0)
	j	.L60
.L53:
	.loc 2 322 24
	lw	a5,-76(s0)
	bne	a5,zero,.L59
	.loc 2 350 16
	lw	a5,-68(s0)
	lw	a4,44(a5)
	.loc 2 350 34
	lw	a5,-68(s0)
	lw	a5,36(a5)
	.loc 2 350 12
	bne	a4,a5,.L48
	.loc 2 351 16
	lw	a5,-68(s0)
	lw	a5,124(a5)
	.loc 2 351 24
	ori	a4,a5,8
	lw	a5,-68(s0)
	sw	a4,124(a5)
	.loc 2 352 28
	lw	a5,-68(s0)
	sw	zero,44(a5)
.L48:
	.loc 2 356 12
	li	a5,0
.L60:
	.loc 2 357 1
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
.LFE38:
	.size	mbedtls_ccm_update_ad, .-mbedtls_ccm_update_ad
	.section	.text.mbedtls_ccm_update,"ax",@progbits
	.align	1
	.globl	mbedtls_ccm_update
	.type	mbedtls_ccm_update, @function
mbedtls_ccm_update:
.LFB39:
	.loc 2 363 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	sw	a2,-108(s0)
	sw	a3,-112(s0)
	sw	a4,-116(s0)
	sw	a5,-120(s0)
	.loc 2 364 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 373 12
	lw	a5,-100(s0)
	lw	a5,124(a5)
	.loc 2 373 20
	andi	a5,a5,16
	.loc 2 373 8
	beq	a5,zero,.L62
	.loc 2 374 16
	li	a5,-13
	j	.L87
.L62:
	.loc 2 380 12
	lw	a5,-100(s0)
	lw	a5,40(a5)
	.loc 2 380 8
	beq	a5,zero,.L64
	.loc 2 380 33 discriminator 1
	lw	a5,-100(s0)
	lw	a4,44(a5)
	.loc 2 380 45 discriminator 1
	lw	a5,-108(s0)
	add	a4,a4,a5
	.loc 2 380 62 discriminator 1
	lw	a5,-100(s0)
	lw	a5,32(a5)
	.loc 2 380 27 discriminator 1
	bleu	a4,a5,.L64
	.loc 2 381 16
	li	a5,-13
	j	.L87
.L64:
	.loc 2 384 8
	lw	a4,-116(s0)
	lw	a5,-108(s0)
	bgeu	a4,a5,.L65
	.loc 2 385 16
	li	a5,-13
	j	.L87
.L65:
	.loc 2 387 17
	lw	a5,-120(s0)
	lw	a4,-108(s0)
	sw	a4,0(a5)
	.loc 2 389 9
	sw	zero,-20(s0)
	.loc 2 391 11
	j	.L66
.L86:
	.loc 2 392 21
	lw	a5,-100(s0)
	lw	a5,44(a5)
	.loc 2 392 16
	andi	a5,a5,15
	sw	a5,-32(s0)
	.loc 2 394 17
	li	a4,16
	lw	a5,-32(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 396 12
	lw	a4,-28(s0)
	lw	a5,-108(s0)
	bleu	a4,a5,.L67
	.loc 2 397 21
	lw	a5,-108(s0)
	sw	a5,-28(s0)
.L67:
	.loc 2 400 12
	lw	a5,-100(s0)
	lw	a4,44(a5)
	.loc 2 400 24
	lw	a5,-28(s0)
	add	a4,a4,a5
	lw	a5,-100(s0)
	sw	a4,44(a5)
	.loc 2 402 16
	lw	a5,-100(s0)
	lw	a4,52(a5)
	.loc 2 402 12
	li	a5,1
	beq	a4,a5,.L68
	.loc 2 403 16
	lw	a5,-100(s0)
	lw	a4,52(a5)
	.loc 2 402 28 discriminator 1
	li	a5,3
	bne	a4,a5,.L69
.L68:
	.loc 2 404 25
	lw	a4,-100(s0)
	.loc 2 404 13
	lw	a5,-32(s0)
	add	a4,a4,a5
	.loc 2 404 42
	lw	a3,-100(s0)
	.loc 2 404 13
	lw	a5,-32(s0)
	add	a5,a3,a5
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	lw	a5,-104(s0)
	sw	a5,-44(s0)
	lw	a5,-28(s0)
	sw	a5,-48(s0)
.LBB14:
.LBB15:
	.loc 3 191 12
	sw	zero,-52(s0)
	.loc 3 234 5
	j	.L70
.L71:
	.loc 3 235 17
	lw	a4,-40(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 3 235 24
	lw	a4,-44(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 3 235 10
	lw	a2,-36(s0)
	lw	a5,-52(s0)
	add	a5,a2,a5
	.loc 3 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 3 234 20 discriminator 2
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.L70:
	.loc 3 234 14 discriminator 1
	lw	a4,-48(s0)
	lw	a5,-52(s0)
	bgtu	a4,a5,.L71
	.loc 3 237 1
	nop
.LBE15:
.LBE14:
	.loc 2 406 25
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a4,a4,a5
	.loc 2 406 16
	li	a5,16
	beq	a4,a5,.L72
	.loc 2 406 46 discriminator 1
	lw	a5,-100(s0)
	lw	a4,44(a5)
	.loc 2 406 64 discriminator 1
	lw	a5,-100(s0)
	lw	a5,32(a5)
	.loc 2 406 40 discriminator 1
	bne	a4,a5,.L73
.L72:
	.loc 2 410 23
	lw	a5,-100(s0)
	addi	a5,a5,56
	.loc 2 410 66
	lw	a1,-100(s0)
	.loc 2 410 78
	lw	a3,-100(s0)
	.loc 2 410 23
	addi	a4,s0,-76
	li	a2,16
	mv	a0,a5
	call	mbedtls_cipher_update
	sw	a0,-20(s0)
	.loc 2 412 20
	lw	a5,-20(s0)
	beq	a5,zero,.L73
	.loc 2 413 24
	lw	a5,-100(s0)
	lw	a5,124(a5)
	.loc 2 413 32
	ori	a4,a5,16
	lw	a5,-100(s0)
	sw	a4,124(a5)
	.loc 2 414 21
	j	.L74
.L73:
	.loc 2 418 19
	lw	a4,-112(s0)
	lw	a3,-104(s0)
	lw	a2,-28(s0)
	lw	a1,-32(s0)
	lw	a0,-100(s0)
	call	mbedtls_ccm_crypt
	sw	a0,-20(s0)
	.loc 2 419 16
	lw	a5,-20(s0)
	bne	a5,zero,.L88
.L69:
	.loc 2 424 16
	lw	a5,-100(s0)
	lw	a5,52(a5)
	.loc 2 424 12
	beq	a5,zero,.L75
	.loc 2 425 16
	lw	a5,-100(s0)
	lw	a4,52(a5)
	.loc 2 424 28 discriminator 1
	li	a5,2
	bne	a4,a5,.L76
.L75:
	.loc 2 432 19
	addi	a5,s0,-92
	mv	a4,a5
	lw	a3,-104(s0)
	lw	a2,-28(s0)
	lw	a1,-32(s0)
	lw	a0,-100(s0)
	call	mbedtls_ccm_crypt
	sw	a0,-20(s0)
	.loc 2 433 16
	lw	a5,-20(s0)
	bne	a5,zero,.L89
	.loc 2 437 25
	lw	a4,-100(s0)
	.loc 2 437 13
	lw	a5,-32(s0)
	add	a4,a4,a5
	.loc 2 437 42
	lw	a3,-100(s0)
	.loc 2 437 13
	lw	a5,-32(s0)
	add	a5,a3,a5
	sw	a4,-56(s0)
	sw	a5,-60(s0)
	addi	a5,s0,-92
	sw	a5,-64(s0)
	lw	a5,-28(s0)
	sw	a5,-68(s0)
.LBB16:
.LBB17:
	.loc 3 191 12
	sw	zero,-72(s0)
	.loc 3 234 5
	j	.L78
.L79:
	.loc 3 235 17
	lw	a4,-60(s0)
	lw	a5,-72(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 3 235 24
	lw	a4,-64(s0)
	lw	a5,-72(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 3 235 10
	lw	a2,-56(s0)
	lw	a5,-72(s0)
	add	a5,a2,a5
	.loc 3 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 3 234 20 discriminator 2
	lw	a5,-72(s0)
	addi	a5,a5,1
	sw	a5,-72(s0)
.L78:
	.loc 3 234 14 discriminator 1
	lw	a4,-68(s0)
	lw	a5,-72(s0)
	bgtu	a4,a5,.L79
	.loc 3 237 1
	nop
.LBE17:
.LBE16:
	.loc 2 439 13
	addi	a5,s0,-92
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-112(s0)
	call	memcpy
	.loc 2 441 25
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a4,a4,a5
	.loc 2 441 16
	li	a5,16
	beq	a4,a5,.L80
	.loc 2 441 46 discriminator 1
	lw	a5,-100(s0)
	lw	a4,44(a5)
	.loc 2 441 64 discriminator 1
	lw	a5,-100(s0)
	lw	a5,32(a5)
	.loc 2 441 40 discriminator 1
	bne	a4,a5,.L76
.L80:
	.loc 2 445 23
	lw	a5,-100(s0)
	addi	a5,a5,56
	.loc 2 445 66
	lw	a1,-100(s0)
	.loc 2 445 78
	lw	a3,-100(s0)
	.loc 2 445 23
	addi	a4,s0,-76
	li	a2,16
	mv	a0,a5
	call	mbedtls_cipher_update
	sw	a0,-20(s0)
	.loc 2 447 20
	lw	a5,-20(s0)
	beq	a5,zero,.L76
	.loc 2 448 24
	lw	a5,-100(s0)
	lw	a5,124(a5)
	.loc 2 448 32
	ori	a4,a5,16
	lw	a5,-100(s0)
	sw	a4,124(a5)
	.loc 2 449 21
	j	.L74
.L76:
	.loc 2 454 21
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a4,a4,a5
	.loc 2 454 12
	li	a5,16
	beq	a4,a5,.L81
	.loc 2 454 42 discriminator 1
	lw	a5,-100(s0)
	lw	a4,44(a5)
	.loc 2 454 60 discriminator 1
	lw	a5,-100(s0)
	lw	a5,32(a5)
	.loc 2 454 36 discriminator 1
	bne	a4,a5,.L82
.L81:
	.loc 2 455 20
	sb	zero,-21(s0)
	.loc 2 455 13
	j	.L83
.L85:
	.loc 2 456 36
	lbu	a5,-21(s0)
	li	a4,15
	sub	a5,a4,a5
	.loc 2 456 33
	lw	a4,-100(s0)
	add	a4,a4,a5
	lbu	a4,16(a4)
	.loc 2 456 21
	addi	a4,a4,1
	andi	a3,a4,0xff
	.loc 2 456 20
	lw	a4,-100(s0)
	add	a4,a4,a5
	sb	a3,16(a4)
	.loc 2 456 33
	lw	a4,-100(s0)
	add	a5,a4,a5
	lbu	a5,16(a5)
	.loc 2 456 20
	bne	a5,zero,.L90
	.loc 2 455 38 discriminator 2
	lbu	a5,-21(s0)
	addi	a5,a5,1
	sb	a5,-21(s0)
.L83:
	.loc 2 455 27 discriminator 1
	lbu	a4,-21(s0)
	.loc 2 455 32 discriminator 1
	lw	a5,-100(s0)
	lw	a5,48(a5)
	.loc 2 455 27 discriminator 1
	bltu	a4,a5,.L85
	j	.L82
.L90:
	.loc 2 457 21
	nop
.L82:
	.loc 2 462 19
	lw	a4,-108(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	sw	a5,-108(s0)
	.loc 2 463 15
	lw	a4,-104(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-104(s0)
	.loc 2 464 16
	lw	a4,-112(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-112(s0)
.L66:
	.loc 2 391 22
	lw	a5,-108(s0)
	bne	a5,zero,.L86
	.loc 2 467 1
	j	.L74
.L88:
	.loc 2 420 17
	nop
	j	.L74
.L89:
	.loc 2 434 17
	nop
.L74:
	.loc 2 468 5
	addi	a5,s0,-92
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 2 470 12
	lw	a5,-20(s0)
.L87:
	.loc 2 471 1
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
.LFE39:
	.size	mbedtls_ccm_update, .-mbedtls_ccm_update
	.section	.text.mbedtls_ccm_finish,"ax",@progbits
	.align	1
	.globl	mbedtls_ccm_finish
	.type	mbedtls_ccm_finish, @function
mbedtls_ccm_finish:
.LFB40:
	.loc 2 475 1
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
	.loc 2 476 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 2 479 12
	lw	a5,-36(s0)
	lw	a5,124(a5)
	.loc 2 479 20
	andi	a5,a5,16
	.loc 2 479 8
	beq	a5,zero,.L92
	.loc 2 480 16
	li	a5,-110
	j	.L93
.L92:
	.loc 2 483 12
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 2 483 8
	beq	a5,zero,.L94
	.loc 2 483 34 discriminator 1
	lw	a5,-36(s0)
	lw	a5,124(a5)
	.loc 2 483 42 discriminator 1
	andi	a5,a5,8
	.loc 2 483 26 discriminator 1
	bne	a5,zero,.L94
	.loc 2 484 16
	li	a5,-13
	j	.L93
.L94:
	.loc 2 487 12
	lw	a5,-36(s0)
	lw	a5,32(a5)
	.loc 2 487 8
	beq	a5,zero,.L95
	.loc 2 487 38 discriminator 1
	lw	a5,-36(s0)
	lw	a4,44(a5)
	.loc 2 487 56 discriminator 1
	lw	a5,-36(s0)
	lw	a5,32(a5)
	.loc 2 487 32 discriminator 1
	beq	a4,a5,.L95
	.loc 2 488 16
	li	a5,-13
	j	.L93
.L95:
	.loc 2 494 12
	sb	zero,-17(s0)
	.loc 2 494 5
	j	.L96
.L97:
	.loc 2 495 20
	lbu	a5,-17(s0)
	li	a4,15
	sub	a5,a4,a5
	.loc 2 495 24
	lw	a4,-36(s0)
	add	a5,a4,a5
	sb	zero,16(a5)
	.loc 2 494 30 discriminator 3
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L96:
	.loc 2 494 19 discriminator 1
	lbu	a4,-17(s0)
	.loc 2 494 24 discriminator 1
	lw	a5,-36(s0)
	lw	a5,48(a5)
	.loc 2 494 19 discriminator 1
	bltu	a4,a5,.L97
	.loc 2 498 44
	lw	a5,-36(s0)
	.loc 2 498 52
	lw	a4,-36(s0)
	.loc 2 498 11
	mv	a3,a5
	li	a2,16
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_ccm_crypt
	sw	a0,-24(s0)
	.loc 2 499 8
	lw	a5,-24(s0)
	beq	a5,zero,.L98
	.loc 2 500 16
	lw	a5,-24(s0)
	j	.L93
.L98:
	.loc 2 502 8
	lw	a5,-40(s0)
	beq	a5,zero,.L99
	.loc 2 503 24
	lw	a5,-36(s0)
	.loc 2 503 9
	lw	a2,-44(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
.L99:
	.loc 2 505 5
	lw	a0,-36(s0)
	call	mbedtls_ccm_clear_state
	.loc 2 507 12
	li	a5,0
.L93:
	.loc 2 508 1
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
.LFE40:
	.size	mbedtls_ccm_finish, .-mbedtls_ccm_finish
	.section	.text.ccm_auth_crypt,"ax",@progbits
	.align	1
	.type	ccm_auth_crypt, @function
ccm_auth_crypt:
.LFB41:
	.loc 2 518 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	a7,-64(s0)
	.loc 2 519 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 522 16
	lw	a3,-52(s0)
	lw	a2,-48(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_ccm_starts
	sw	a0,-20(s0)
	.loc 2 522 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L101
	.loc 2 523 16
	lw	a5,-20(s0)
	j	.L107
.L101:
	.loc 2 526 16
	lw	a3,8(s0)
	lw	a2,-44(s0)
	lw	a1,-60(s0)
	lw	a0,-36(s0)
	call	mbedtls_ccm_set_lengths
	sw	a0,-20(s0)
	.loc 2 526 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L103
	.loc 2 527 16
	lw	a5,-20(s0)
	j	.L107
.L103:
	.loc 2 530 16
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-36(s0)
	call	mbedtls_ccm_update_ad
	sw	a0,-20(s0)
	.loc 2 530 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L104
	.loc 2 531 16
	lw	a5,-20(s0)
	j	.L107
.L104:
	.loc 2 534 16
	addi	a5,s0,-24
	lw	a4,-44(s0)
	lw	a3,0(s0)
	lw	a2,-44(s0)
	lw	a1,-64(s0)
	lw	a0,-36(s0)
	call	mbedtls_ccm_update
	sw	a0,-20(s0)
	.loc 2 534 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L105
	.loc 2 536 16
	lw	a5,-20(s0)
	j	.L107
.L105:
	.loc 2 539 16
	lw	a2,8(s0)
	lw	a1,4(s0)
	lw	a0,-36(s0)
	call	mbedtls_ccm_finish
	sw	a0,-20(s0)
	.loc 2 539 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L106
	.loc 2 540 16
	lw	a5,-20(s0)
	j	.L107
.L106:
	.loc 2 543 12
	li	a5,0
.L107:
	.loc 2 544 1
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
.LFE41:
	.size	ccm_auth_crypt, .-ccm_auth_crypt
	.section	.text.mbedtls_ccm_star_encrypt_and_tag,"ax",@progbits
	.align	1
	.globl	mbedtls_ccm_star_encrypt_and_tag
	.type	mbedtls_ccm_star_encrypt_and_tag, @function
mbedtls_ccm_star_encrypt_and_tag:
.LFB42:
	.loc 2 554 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	sw	a7,-48(s0)
	.loc 2 555 12
	lw	a5,4(s0)
	sw	a5,8(sp)
	lw	a5,0(s0)
	sw	a5,4(sp)
	lw	a5,-48(s0)
	sw	a5,0(sp)
	lw	a7,-44(s0)
	lw	a6,-40(s0)
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	li	a1,3
	lw	a0,-20(s0)
	call	ccm_auth_crypt
	mv	a5,a0
	.loc 2 557 1
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
.LFE42:
	.size	mbedtls_ccm_star_encrypt_and_tag, .-mbedtls_ccm_star_encrypt_and_tag
	.section	.text.mbedtls_ccm_encrypt_and_tag,"ax",@progbits
	.align	1
	.globl	mbedtls_ccm_encrypt_and_tag
	.type	mbedtls_ccm_encrypt_and_tag, @function
mbedtls_ccm_encrypt_and_tag:
.LFB43:
	.loc 2 564 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	sw	a7,-48(s0)
	.loc 2 565 12
	lw	a5,4(s0)
	sw	a5,8(sp)
	lw	a5,0(s0)
	sw	a5,4(sp)
	lw	a5,-48(s0)
	sw	a5,0(sp)
	lw	a7,-44(s0)
	lw	a6,-40(s0)
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	li	a1,1
	lw	a0,-20(s0)
	call	ccm_auth_crypt
	mv	a5,a0
	.loc 2 567 1
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
.LFE43:
	.size	mbedtls_ccm_encrypt_and_tag, .-mbedtls_ccm_encrypt_and_tag
	.section	.text.mbedtls_ccm_compare_tags,"ax",@progbits
	.align	1
	.type	mbedtls_ccm_compare_tags, @function
mbedtls_ccm_compare_tags:
.LFB44:
	.loc 2 575 1
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
	.loc 2 577 16
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_ct_memcmp
	sw	a0,-20(s0)
	.loc 2 579 8
	lw	a5,-20(s0)
	beq	a5,zero,.L113
	.loc 2 580 16
	li	a5,-15
	j	.L114
.L113:
	.loc 2 583 12
	li	a5,0
.L114:
	.loc 2 584 1
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
.LFE44:
	.size	mbedtls_ccm_compare_tags, .-mbedtls_ccm_compare_tags
	.section	.text.ccm_auth_decrypt,"ax",@progbits
	.align	1
	.type	ccm_auth_decrypt, @function
ccm_auth_decrypt:
.LFB45:
	.loc 2 591 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	sw	a6,-76(s0)
	sw	a7,-80(s0)
	.loc 2 592 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 595 16
	lw	a5,8(s0)
	sw	a5,8(sp)
	addi	a5,s0,-36
	sw	a5,4(sp)
	lw	a5,0(s0)
	sw	a5,0(sp)
	lw	a7,-80(s0)
	lw	a6,-76(s0)
	lw	a5,-72(s0)
	lw	a4,-68(s0)
	lw	a3,-64(s0)
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	ccm_auth_crypt
	sw	a0,-20(s0)
	.loc 2 595 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L116
	.loc 2 598 16
	lw	a5,-20(s0)
	j	.L119
.L116:
	.loc 2 601 16
	addi	a5,s0,-36
	lw	a2,8(s0)
	mv	a1,a5
	lw	a0,4(s0)
	call	mbedtls_ccm_compare_tags
	sw	a0,-20(s0)
	.loc 2 601 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L118
	.loc 2 602 9
	lw	a1,-60(s0)
	lw	a0,0(s0)
	call	mbedtls_platform_zeroize
	.loc 2 603 16
	lw	a5,-20(s0)
	j	.L119
.L118:
	.loc 2 606 12
	li	a5,0
.L119:
	.loc 2 607 1
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE45:
	.size	ccm_auth_decrypt, .-ccm_auth_decrypt
	.section	.text.mbedtls_ccm_star_auth_decrypt,"ax",@progbits
	.align	1
	.globl	mbedtls_ccm_star_auth_decrypt
	.type	mbedtls_ccm_star_auth_decrypt, @function
mbedtls_ccm_star_auth_decrypt:
.LFB46:
	.loc 2 614 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	sw	a7,-48(s0)
	.loc 2 615 12
	lw	a5,4(s0)
	sw	a5,8(sp)
	lw	a5,0(s0)
	sw	a5,4(sp)
	lw	a5,-48(s0)
	sw	a5,0(sp)
	lw	a7,-44(s0)
	lw	a6,-40(s0)
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	li	a1,2
	lw	a0,-20(s0)
	call	ccm_auth_decrypt
	mv	a5,a0
	.loc 2 618 1
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
.LFE46:
	.size	mbedtls_ccm_star_auth_decrypt, .-mbedtls_ccm_star_auth_decrypt
	.section	.text.mbedtls_ccm_auth_decrypt,"ax",@progbits
	.align	1
	.globl	mbedtls_ccm_auth_decrypt
	.type	mbedtls_ccm_auth_decrypt, @function
mbedtls_ccm_auth_decrypt:
.LFB47:
	.loc 2 625 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	sw	a7,-48(s0)
	.loc 2 626 12
	lw	a5,4(s0)
	sw	a5,8(sp)
	lw	a5,0(s0)
	sw	a5,4(sp)
	lw	a5,-48(s0)
	sw	a5,0(sp)
	lw	a7,-44(s0)
	lw	a6,-40(s0)
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	li	a1,0
	lw	a0,-20(s0)
	call	ccm_auth_decrypt
	mv	a5,a0
	.loc 2 629 1
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
.LFE47:
	.size	mbedtls_ccm_auth_decrypt, .-mbedtls_ccm_auth_decrypt
	.section	.rodata.key_test_data,"a"
	.align	2
	.type	key_test_data, @object
	.size	key_test_data, 16
key_test_data:
	.ascii	"@ABCDEFGHIJKLMNO"
	.section	.rodata.iv_test_data,"a"
	.align	2
	.type	iv_test_data, @object
	.size	iv_test_data, 12
iv_test_data:
	.base64	"EBESExQVFhcYGRob"
	.section	.rodata.ad_test_data,"a"
	.align	2
	.type	ad_test_data, @object
	.size	ad_test_data, 20
ad_test_data:
	.base64	"AAECAwQFBgcICQoLDA0ODxAREhM="
	.section	.rodata.msg_test_data,"a"
	.align	2
	.type	msg_test_data, @object
	.size	msg_test_data, 24
msg_test_data:
	.ascii	" !\"#$%&'()*+,-./01234567"
	.section	.rodata.iv_len_test_data,"a"
	.align	2
	.type	iv_len_test_data, @object
	.size	iv_len_test_data, 12
iv_len_test_data:
	.word	7
	.word	8
	.word	12
	.section	.rodata.add_len_test_data,"a"
	.align	2
	.type	add_len_test_data, @object
	.size	add_len_test_data, 12
add_len_test_data:
	.word	8
	.word	16
	.word	20
	.section	.rodata.msg_len_test_data,"a"
	.align	2
	.type	msg_len_test_data, @object
	.size	msg_len_test_data, 12
msg_len_test_data:
	.word	4
	.word	16
	.word	24
	.section	.rodata.tag_len_test_data,"a"
	.align	2
	.type	tag_len_test_data, @object
	.size	tag_len_test_data, 12
tag_len_test_data:
	.word	4
	.word	6
	.word	8
	.section	.rodata.res_test_data,"a"
	.align	2
	.type	res_test_data, @object
	.size	res_test_data, 96
res_test_data:
	.base64	"cWIBW02sJV0A"
	.zero	23
	.base64	"0qHw4FHqX2IIGneSBz1ZPR/GT7+szQA="
	.zero	9
	.base64	"47IBqfW3GnqbHOrszZfnC2F2qtmkQoqlSEOS+8GwmVE="
	.section	.rodata
	.align	2
.LC0:
	.string	"  CCM: setup failed"
	.align	2
.LC1:
	.string	"  CCM-AES #%u: "
	.align	2
.LC2:
	.string	"failed\n"
	.align	2
.LC3:
	.string	"passed\n"
	.align	2
.LC4:
	.string	"\n"
	.section	.text.mbedtls_ccm_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_ccm_self_test
	.type	mbedtls_ccm_self_test, @function
mbedtls_ccm_self_test:
.LFB48:
	.loc 2 682 1
	.cfi_startproc
	addi	sp,sp,-240
	.cfi_def_cfa_offset 240
	sw	ra,236(sp)
	sw	s0,232(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,240
	.cfi_def_cfa 8, 0
	sw	a0,-212(s0)
	.loc 2 692 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 2 694 5
	addi	a5,s0,-152
	mv	a0,a5
	call	mbedtls_ccm_init
	.loc 2 696 9
	addi	a4,s0,-152
	li	a3,128
	lui	a5,%hi(key_test_data)
	addi	a2,a5,%lo(key_test_data)
	li	a1,2
	mv	a0,a4
	call	mbedtls_ccm_setkey
	mv	a5,a0
	.loc 2 696 8 discriminator 1
	beq	a5,zero,.L125
	.loc 2 698 12
	lw	a5,-212(s0)
	beq	a5,zero,.L126
	.loc 2 699 13
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
.L126:
	.loc 2 702 16
	li	a5,1
	j	.L139
.L125:
	.loc 2 705 12
	sw	zero,-20(s0)
	.loc 2 705 5
	j	.L128
.L137:
	.loc 2 706 12
	lw	a5,-212(s0)
	beq	a5,zero,.L129
	.loc 2 707 13
	lw	a5,-20(s0)
	addi	a5,a5,1
	mv	a1,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L129:
	.loc 2 710 9
	addi	a5,s0,-176
	li	a2,24
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 711 9
	addi	a5,s0,-208
	li	a2,32
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 712 59
	lui	a5,%hi(msg_len_test_data)
	addi	a4,a5,%lo(msg_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 712 9
	addi	a4,s0,-176
	mv	a2,a5
	lui	a5,%hi(msg_test_data)
	addi	a1,a5,%lo(msg_test_data)
	mv	a0,a4
	call	memcpy
	.loc 2 714 66
	lui	a5,%hi(msg_len_test_data)
	addi	a4,a5,%lo(msg_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a1,0(a5)
	.loc 2 715 73
	lui	a5,%hi(iv_len_test_data)
	addi	a4,a5,%lo(iv_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a2,0(a5)
	.loc 2 716 74
	lui	a5,%hi(add_len_test_data)
	addi	a4,a5,%lo(add_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	t1,0(a5)
	.loc 2 718 73
	lui	a5,%hi(msg_len_test_data)
	addi	a4,a5,%lo(msg_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 714 15
	addi	a4,s0,-208
	add	a5,a4,a5
	.loc 2 719 60
	lui	a4,%hi(tag_len_test_data)
	addi	a3,a4,%lo(tag_len_test_data)
	lw	a4,-20(s0)
	slli	a4,a4,2
	add	a4,a3,a4
	lw	a4,0(a4)
	.loc 2 714 15
	addi	a6,s0,-208
	addi	a3,s0,-176
	addi	a0,s0,-152
	sw	a4,4(sp)
	sw	a5,0(sp)
	mv	a7,a6
	mv	a6,a3
	mv	a5,t1
	lui	a4,%hi(ad_test_data)
	addi	a4,a4,%lo(ad_test_data)
	mv	a3,a2
	lui	a2,%hi(iv_test_data)
	addi	a2,a2,%lo(iv_test_data)
	call	mbedtls_ccm_encrypt_and_tag
	sw	a0,-24(s0)
	.loc 2 721 12
	lw	a5,-24(s0)
	bne	a5,zero,.L130
	.loc 2 722 45
	lw	a5,-20(s0)
	slli	a4,a5,5
	lui	a5,%hi(res_test_data)
	addi	a5,a5,%lo(res_test_data)
	add	a1,a4,a5
	.loc 2 723 37
	lui	a5,%hi(msg_len_test_data)
	addi	a4,a5,%lo(msg_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 723 60
	lui	a5,%hi(tag_len_test_data)
	addi	a3,a5,%lo(tag_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 2 722 13
	add	a4,a4,a5
	addi	a5,s0,-208
	mv	a2,a4
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 2 721 22 discriminator 1
	beq	a5,zero,.L131
.L130:
	.loc 2 724 16
	lw	a5,-212(s0)
	beq	a5,zero,.L132
	.loc 2 725 17
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L132:
	.loc 2 728 20
	li	a5,1
	j	.L139
.L131:
	.loc 2 730 9
	addi	a5,s0,-176
	li	a2,24
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 732 63
	lui	a5,%hi(msg_len_test_data)
	addi	a4,a5,%lo(msg_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a1,0(a5)
	.loc 2 733 70
	lui	a5,%hi(iv_len_test_data)
	addi	a4,a5,%lo(iv_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a2,0(a5)
	.loc 2 734 71
	lui	a5,%hi(add_len_test_data)
	addi	a4,a5,%lo(add_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	t1,0(a5)
	.loc 2 736 70
	lui	a5,%hi(msg_len_test_data)
	addi	a4,a5,%lo(msg_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 732 15
	addi	a4,s0,-208
	add	a5,a4,a5
	.loc 2 737 57
	lui	a4,%hi(tag_len_test_data)
	addi	a3,a4,%lo(tag_len_test_data)
	lw	a4,-20(s0)
	slli	a4,a4,2
	add	a4,a3,a4
	lw	a4,0(a4)
	.loc 2 732 15
	addi	a6,s0,-176
	addi	a3,s0,-208
	addi	a0,s0,-152
	sw	a4,4(sp)
	sw	a5,0(sp)
	mv	a7,a6
	mv	a6,a3
	mv	a5,t1
	lui	a4,%hi(ad_test_data)
	addi	a4,a4,%lo(ad_test_data)
	mv	a3,a2
	lui	a2,%hi(iv_test_data)
	addi	a2,a2,%lo(iv_test_data)
	call	mbedtls_ccm_auth_decrypt
	sw	a0,-24(s0)
	.loc 2 739 12
	lw	a5,-24(s0)
	bne	a5,zero,.L133
	.loc 2 740 63
	lui	a5,%hi(msg_len_test_data)
	addi	a4,a5,%lo(msg_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 740 13
	addi	a4,s0,-176
	mv	a2,a5
	lui	a5,%hi(msg_test_data)
	addi	a1,a5,%lo(msg_test_data)
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 2 739 22 discriminator 1
	beq	a5,zero,.L134
.L133:
	.loc 2 741 16
	lw	a5,-212(s0)
	beq	a5,zero,.L135
	.loc 2 742 17
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L135:
	.loc 2 745 20
	li	a5,1
	j	.L139
.L134:
	.loc 2 748 12
	lw	a5,-212(s0)
	beq	a5,zero,.L136
	.loc 2 749 13
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
.L136:
	.loc 2 705 25 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L128:
	.loc 2 705 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,2
	bleu	a4,a5,.L137
	.loc 2 753 5
	addi	a5,s0,-152
	mv	a0,a5
	call	mbedtls_ccm_free
	.loc 2 755 8
	lw	a5,-212(s0)
	beq	a5,zero,.L138
	.loc 2 756 9
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.L138:
	.loc 2 759 12
	li	a5,0
.L139:
	.loc 2 760 1
	mv	a0,a5
	lw	ra,236(sp)
	.cfi_restore 1
	lw	s0,232(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 240
	addi	sp,sp,240
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE48:
	.size	mbedtls_ccm_self_test, .-mbedtls_ccm_self_test
	.text
.Letext0:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ccm.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/constant_time.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1170
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x24
	.4byte	.LASF131
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x7
	.4byte	0x32
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x25
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x11
	.4byte	.LASF12
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x7
	.4byte	0x76
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x11
	.4byte	.LASF13
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x26
	.byte	0x4
	.uleb128 0x1a
	.4byte	0x9a
	.uleb128 0x9
	.4byte	0x32
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x7
	.4byte	0xa6
	.uleb128 0x9
	.4byte	0xad
	.uleb128 0x1a
	.4byte	0xb2
	.uleb128 0x9
	.4byte	0xc6
	.uleb128 0x1a
	.4byte	0xbc
	.uleb128 0x27
	.uleb128 0x1b
	.byte	0x7
	.4byte	0x32
	.byte	0x42
	.4byte	0x103
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4b
	.byte	0x3
	.4byte	0xc7
	.uleb128 0x7
	.4byte	0x103
	.uleb128 0x1b
	.byte	0x7
	.4byte	0x32
	.byte	0xac
	.4byte	0x174
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0xbb
	.byte	0x3
	.4byte	0x114
	.uleb128 0x7
	.4byte	0x174
	.uleb128 0x1b
	.byte	0x5
	.4byte	0x2b
	.byte	0xc7
	.4byte	0x1a3
	.uleb128 0x28
	.4byte	.LASF39
	.sleb128 -1
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x1
	.byte	0xcb
	.byte	0x3
	.4byte	0x185
	.uleb128 0x7
	.4byte	0x1a3
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x1
	.byte	0xf9
	.byte	0x27
	.4byte	0x1c0
	.uleb128 0x29
	.4byte	.LASF43
	.uleb128 0x1e
	.4byte	.LASF51
	.byte	0x8
	.2byte	0x10a
	.4byte	0x23a
	.uleb128 0xa
	.4byte	.LASF53
	.2byte	0x10c
	.byte	0x11
	.4byte	0xb2
	.byte	0
	.uleb128 0x12
	.4byte	.LASF44
	.2byte	0x10f
	.4byte	0x6f
	.byte	0x5
	.byte	0x20
	.uleb128 0x12
	.4byte	.LASF45
	.2byte	0x115
	.4byte	0x6f
	.byte	0x3
	.byte	0x25
	.uleb128 0x12
	.4byte	.LASF46
	.2byte	0x11b
	.4byte	0x6f
	.byte	0x4
	.byte	0x28
	.uleb128 0x12
	.4byte	.LASF47
	.2byte	0x120
	.4byte	0x6f
	.byte	0x4
	.byte	0x2c
	.uleb128 0x12
	.4byte	.LASF48
	.2byte	0x128
	.4byte	0x6f
	.byte	0x8
	.byte	0x30
	.uleb128 0x12
	.4byte	.LASF49
	.2byte	0x12e
	.4byte	0x6f
	.byte	0x2
	.byte	0x38
	.uleb128 0x12
	.4byte	.LASF50
	.2byte	0x131
	.4byte	0x6f
	.byte	0x5
	.byte	0x3a
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF51
	.2byte	0x133
	.4byte	0x1c5
	.uleb128 0x7
	.4byte	0x23a
	.uleb128 0x1e
	.4byte	.LASF52
	.byte	0x44
	.2byte	0x13c
	.4byte	0x2e6
	.uleb128 0xa
	.4byte	.LASF54
	.2byte	0x13e
	.byte	0x22
	.4byte	0x2e6
	.byte	0
	.uleb128 0xa
	.4byte	.LASF46
	.2byte	0x141
	.byte	0x9
	.4byte	0x68
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF55
	.2byte	0x146
	.byte	0x19
	.4byte	0x1a3
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF56
	.2byte	0x14c
	.byte	0xb
	.4byte	0x300
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF57
	.2byte	0x152
	.byte	0xa
	.4byte	0x328
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF58
	.2byte	0x158
	.byte	0x13
	.4byte	0x32d
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF59
	.2byte	0x15b
	.byte	0xc
	.4byte	0x76
	.byte	0x24
	.uleb128 0x2a
	.string	"iv"
	.byte	0x1
	.2byte	0x15f
	.byte	0x13
	.4byte	0x32d
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF45
	.2byte	0x162
	.byte	0xc
	.4byte	0x76
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF60
	.2byte	0x165
	.byte	0xb
	.4byte	0x9a
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF61
	.2byte	0x169
	.byte	0x1d
	.4byte	0x33d
	.byte	0x40
	.byte	0
	.uleb128 0x9
	.4byte	0x245
	.uleb128 0x2b
	.4byte	0x300
	.uleb128 0x2
	.4byte	0xa1
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.4byte	0x2eb
	.uleb128 0x2c
	.4byte	0x68
	.4byte	0x323
	.uleb128 0x2
	.4byte	0xa1
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0x323
	.uleb128 0x2
	.4byte	0x323
	.byte	0
	.uleb128 0x9
	.4byte	0x76
	.uleb128 0x9
	.4byte	0x305
	.uleb128 0xd
	.4byte	0x32
	.4byte	0x33d
	.uleb128 0xb
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	0x1b4
	.uleb128 0x1f
	.4byte	.LASF52
	.2byte	0x177
	.4byte	0x24a
	.uleb128 0x2d
	.4byte	.LASF62
	.byte	0x80
	.byte	0x6
	.byte	0x45
	.byte	0x10
	.4byte	0x3cf
	.uleb128 0x1c
	.string	"y"
	.byte	0x46
	.byte	0x13
	.4byte	0x32d
	.byte	0
	.uleb128 0x1c
	.string	"ctr"
	.byte	0x47
	.byte	0x13
	.4byte	0x32d
	.byte	0x10
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x48
	.byte	0xc
	.4byte	0x76
	.byte	0x20
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x49
	.byte	0xc
	.4byte	0x76
	.byte	0x24
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x4a
	.byte	0xc
	.4byte	0x76
	.byte	0x28
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x4b
	.byte	0xc
	.4byte	0x76
	.byte	0x2c
	.uleb128 0x1c
	.string	"q"
	.byte	0x51
	.byte	0x12
	.4byte	0x6f
	.byte	0x30
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x52
	.byte	0x12
	.4byte	0x6f
	.byte	0x34
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x5a
	.byte	0x1e
	.4byte	0x342
	.byte	0x38
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x5c
	.byte	0x9
	.4byte	0x68
	.byte	0x7c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x6
	.byte	0x5f
	.byte	0x1
	.4byte	0x34d
	.uleb128 0xd
	.4byte	0x39
	.4byte	0x3eb
	.uleb128 0xb
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x3db
	.uleb128 0x5
	.4byte	.LASF68
	.2byte	0x283
	.byte	0x1c
	.4byte	0x3eb
	.uleb128 0x5
	.byte	0x3
	.4byte	key_test_data
	.uleb128 0xd
	.4byte	0x39
	.4byte	0x412
	.uleb128 0xb
	.4byte	0x6f
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	0x402
	.uleb128 0x5
	.4byte	.LASF69
	.2byte	0x288
	.byte	0x1c
	.4byte	0x412
	.uleb128 0x5
	.byte	0x3
	.4byte	iv_test_data
	.uleb128 0xd
	.4byte	0x39
	.4byte	0x439
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x429
	.uleb128 0x5
	.4byte	.LASF70
	.2byte	0x28d
	.byte	0x1c
	.4byte	0x439
	.uleb128 0x5
	.byte	0x3
	.4byte	ad_test_data
	.uleb128 0xd
	.4byte	0x39
	.4byte	0x460
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.4byte	0x450
	.uleb128 0x5
	.4byte	.LASF71
	.2byte	0x293
	.byte	0x1c
	.4byte	0x460
	.uleb128 0x5
	.byte	0x3
	.4byte	msg_test_data
	.uleb128 0xd
	.4byte	0x82
	.4byte	0x487
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	0x477
	.uleb128 0x5
	.4byte	.LASF72
	.2byte	0x299
	.byte	0x15
	.4byte	0x487
	.uleb128 0x5
	.byte	0x3
	.4byte	iv_len_test_data
	.uleb128 0x5
	.4byte	.LASF73
	.2byte	0x29a
	.byte	0x15
	.4byte	0x487
	.uleb128 0x5
	.byte	0x3
	.4byte	add_len_test_data
	.uleb128 0x5
	.4byte	.LASF74
	.2byte	0x29b
	.byte	0x15
	.4byte	0x487
	.uleb128 0x5
	.byte	0x3
	.4byte	msg_len_test_data
	.uleb128 0x5
	.4byte	.LASF75
	.2byte	0x29c
	.byte	0x15
	.4byte	0x487
	.uleb128 0x5
	.byte	0x3
	.4byte	tag_len_test_data
	.uleb128 0xd
	.4byte	0x39
	.4byte	0x4ea
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x2
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.4byte	0x4d4
	.uleb128 0x5
	.4byte	.LASF76
	.2byte	0x29e
	.byte	0x1c
	.4byte	0x4ea
	.uleb128 0x5
	.byte	0x3
	.4byte	res_test_data
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x7
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x521
	.uleb128 0x2
	.4byte	0xbc
	.uleb128 0x2
	.4byte	0xbc
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x8
	.byte	0xce
	.byte	0x5
	.4byte	0x68
	.4byte	0x538
	.uleb128 0x2
	.4byte	0xb7
	.uleb128 0x2e
	.byte	0
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x9
	.byte	0x20
	.byte	0x5
	.4byte	0x68
	.4byte	0x558
	.uleb128 0x2
	.4byte	0xbc
	.uleb128 0x2
	.4byte	0xbc
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x7
	.byte	0x1f
	.byte	0x8
	.4byte	0x9a
	.4byte	0x578
	.uleb128 0x2
	.4byte	0x9c
	.uleb128 0x2
	.4byte	0xc1
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x16
	.4byte	.LASF81
	.2byte	0x3c5
	.byte	0x5
	.4byte	0x68
	.4byte	0x5a2
	.uleb128 0x2
	.4byte	0x5a2
	.uleb128 0x2
	.4byte	0x5a7
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0xa1
	.uleb128 0x2
	.4byte	0x323
	.byte	0
	.uleb128 0x9
	.4byte	0x342
	.uleb128 0x9
	.4byte	0x39
	.uleb128 0x2f
	.4byte	.LASF84
	.byte	0xa
	.byte	0x9f
	.byte	0x6
	.4byte	0x5c3
	.uleb128 0x2
	.4byte	0x9a
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x16
	.4byte	.LASF82
	.2byte	0x33e
	.byte	0x5
	.4byte	0x68
	.4byte	0x5e8
	.uleb128 0x2
	.4byte	0x5a2
	.uleb128 0x2
	.4byte	0x5a7
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x1af
	.byte	0
	.uleb128 0x16
	.4byte	.LASF83
	.2byte	0x27e
	.byte	0x5
	.4byte	0x68
	.4byte	0x603
	.uleb128 0x2
	.4byte	0x5a2
	.uleb128 0x2
	.4byte	0x2e6
	.byte	0
	.uleb128 0x30
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x261
	.byte	0x6
	.4byte	0x616
	.uleb128 0x2
	.4byte	0x5a2
	.byte	0
	.uleb128 0x16
	.4byte	.LASF86
	.2byte	0x1af
	.byte	0x1e
	.4byte	0x2e6
	.4byte	0x636
	.uleb128 0x2
	.4byte	0x10f
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x180
	.byte	0
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x7
	.byte	0x21
	.byte	0x8
	.4byte	0x9a
	.4byte	0x656
	.uleb128 0x2
	.4byte	0x9a
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xe
	.4byte	.LASF90
	.2byte	0x2a9
	.4byte	0x68
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6cd
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x2a9
	.byte	0x1f
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0xc
	.string	"ctx"
	.2byte	0x2ab
	.byte	0x19
	.4byte	0x3cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x5
	.4byte	.LASF88
	.2byte	0x2b1
	.byte	0x13
	.4byte	0x6cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x2b2
	.byte	0x13
	.4byte	0x6dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0xc
	.string	"i"
	.2byte	0x2b3
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"ret"
	.2byte	0x2b4
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	0x32
	.4byte	0x6dd
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.4byte	0x32
	.4byte	0x6ed
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF91
	.2byte	0x26c
	.4byte	0x68
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a2
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x26c
	.byte	0x33
	.4byte	0x7a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x26c
	.byte	0x3f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"iv"
	.2byte	0x26d
	.byte	0x33
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x26d
	.byte	0x3e
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"add"
	.2byte	0x26e
	.byte	0x33
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x2
	.2byte	0x26e
	.byte	0x3f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x26f
	.byte	0x33
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x26f
	.byte	0x49
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"tag"
	.2byte	0x270
	.byte	0x33
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x2
	.2byte	0x270
	.byte	0x3f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x9
	.4byte	0x3cf
	.uleb128 0xe
	.4byte	.LASF97
	.2byte	0x261
	.4byte	0x68
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x85c
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x261
	.byte	0x38
	.4byte	0x7a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x261
	.byte	0x44
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"iv"
	.2byte	0x262
	.byte	0x38
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x262
	.byte	0x43
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"add"
	.2byte	0x263
	.byte	0x38
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x2
	.2byte	0x263
	.byte	0x44
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x264
	.byte	0x38
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x264
	.byte	0x4e
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"tag"
	.2byte	0x265
	.byte	0x38
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x2
	.2byte	0x265
	.byte	0x44
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF99
	.2byte	0x24a
	.4byte	0x68
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x943
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x24a
	.byte	0x32
	.4byte	0x7a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x2
	.2byte	0x24a
	.byte	0x3b
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x24a
	.byte	0x48
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.string	"iv"
	.2byte	0x24b
	.byte	0x32
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x24b
	.byte	0x3d
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.string	"add"
	.2byte	0x24c
	.byte	0x32
	.4byte	0x5a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x2
	.2byte	0x24c
	.byte	0x3e
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x24d
	.byte	0x32
	.4byte	0x5a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x24d
	.byte	0x48
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.string	"tag"
	.2byte	0x24e
	.byte	0x32
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x2
	.2byte	0x24e
	.byte	0x3e
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.string	"ret"
	.2byte	0x250
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF98
	.2byte	0x251
	.byte	0x13
	.4byte	0x32d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF100
	.2byte	0x23c
	.4byte	0x68
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99c
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x2
	.2byte	0x23c
	.byte	0x3a
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x2
	.2byte	0x23d
	.byte	0x3a
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x2
	.2byte	0x23e
	.byte	0x2c
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF103
	.2byte	0x241
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF104
	.2byte	0x22f
	.4byte	0x68
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa51
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x22f
	.byte	0x36
	.4byte	0x7a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x22f
	.byte	0x42
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"iv"
	.2byte	0x230
	.byte	0x36
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x230
	.byte	0x41
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"add"
	.2byte	0x231
	.byte	0x36
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x2
	.2byte	0x231
	.byte	0x42
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x232
	.byte	0x36
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x232
	.byte	0x4c
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"tag"
	.2byte	0x233
	.byte	0x30
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x2
	.2byte	0x233
	.byte	0x3c
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF105
	.2byte	0x225
	.4byte	0x68
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb06
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x225
	.byte	0x3b
	.4byte	0x7a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x225
	.byte	0x47
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"iv"
	.2byte	0x226
	.byte	0x3b
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x226
	.byte	0x46
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"add"
	.2byte	0x227
	.byte	0x3b
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x2
	.2byte	0x227
	.byte	0x47
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x228
	.byte	0x3b
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x228
	.byte	0x51
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"tag"
	.2byte	0x229
	.byte	0x35
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x2
	.2byte	0x229
	.byte	0x41
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF106
	.2byte	0x201
	.4byte	0x68
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe9
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x201
	.byte	0x30
	.4byte	0x7a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x2
	.2byte	0x201
	.byte	0x39
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x201
	.byte	0x46
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"iv"
	.2byte	0x202
	.byte	0x30
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x202
	.byte	0x3b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"add"
	.2byte	0x203
	.byte	0x30
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x2
	.2byte	0x203
	.byte	0x3c
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x204
	.byte	0x30
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x204
	.byte	0x46
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.string	"tag"
	.2byte	0x205
	.byte	0x2a
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x2
	.2byte	0x205
	.byte	0x36
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.string	"ret"
	.2byte	0x207
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF107
	.2byte	0x208
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF108
	.2byte	0x1d9
	.4byte	0x68
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc4d
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x1d9
	.byte	0x2d
	.4byte	0x7a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"tag"
	.2byte	0x1da
	.byte	0x27
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x2
	.2byte	0x1da
	.byte	0x33
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"ret"
	.2byte	0x1dc
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"i"
	.2byte	0x1dd
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xe
	.4byte	.LASF109
	.2byte	0x167
	.4byte	0x68
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdab
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x167
	.byte	0x2d
	.4byte	0x7a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x168
	.byte	0x2d
	.4byte	0x5a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0x2
	.2byte	0x168
	.byte	0x3b
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x169
	.byte	0x27
	.4byte	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x169
	.byte	0x36
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x16a
	.byte	0x20
	.4byte	0x323
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xc
	.string	"ret"
	.2byte	0x16c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"i"
	.2byte	0x16d
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x5
	.4byte	.LASF113
	.2byte	0x16e
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF114
	.2byte	0x16e
	.byte	0x15
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF107
	.2byte	0x170
	.byte	0xc
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x5
	.4byte	.LASF115
	.2byte	0x173
	.byte	0x13
	.4byte	0x32d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.4byte	.LASF132
	.byte	0x2
	.2byte	0x1d3
	.byte	0x1
	.4byte	.L74
	.uleb128 0x32
	.4byte	0x113b
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x2
	.2byte	0x194
	.byte	0xd
	.4byte	0xd70
	.uleb128 0x6
	.4byte	0x1144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	0x114d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	0x1156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	0x115f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.4byte	0x1168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x20
	.4byte	0x113b
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.2byte	0x1b5
	.uleb128 0x6
	.4byte	0x1144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.4byte	0x114d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.4byte	0x1156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.4byte	0x115f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.4byte	0x1168
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF116
	.2byte	0x122
	.4byte	0x68
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe6a
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x122
	.byte	0x30
	.4byte	0x7a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.string	"add"
	.2byte	0x123
	.byte	0x30
	.4byte	0x5a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x2
	.2byte	0x124
	.byte	0x22
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xc
	.string	"ret"
	.2byte	0x126
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF113
	.2byte	0x127
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF114
	.2byte	0x127
	.byte	0x15
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF107
	.2byte	0x129
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.4byte	0x113b
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.2byte	0x14b
	.uleb128 0x6
	.4byte	0x1144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	0x114d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	0x1156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	0x115f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.4byte	0x1168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF117
	.2byte	0x105
	.4byte	0x68
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec3
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x105
	.byte	0x32
	.4byte	0x7a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x106
	.byte	0x24
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x2
	.2byte	0x107
	.byte	0x24
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x2
	.2byte	0x108
	.byte	0x24
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.4byte	.LASF119
	.byte	0xdf
	.4byte	0x68
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf13
	.uleb128 0xf
	.string	"ctx"
	.byte	0xdf
	.byte	0x2d
	.4byte	0x7a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0xe0
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"iv"
	.byte	0xe1
	.byte	0x2d
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0xe2
	.byte	0x1f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x22
	.4byte	.LASF120
	.byte	0x9c
	.4byte	0x68
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf70
	.uleb128 0xf
	.string	"ctx"
	.byte	0x9c
	.byte	0x44
	.4byte	0x7a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"ret"
	.byte	0x9e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"i"
	.byte	0x9f
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0xa0
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0xa2
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x33
	.4byte	.LASF133
	.byte	0x2
	.byte	0x95
	.byte	0xd
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf95
	.uleb128 0xf
	.string	"ctx"
	.byte	0x95
	.byte	0x3a
	.4byte	0x7a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.4byte	.LASF122
	.byte	0x7b
	.4byte	0x68
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x105c
	.uleb128 0xf
	.string	"ctx"
	.byte	0x7b
	.byte	0x33
	.4byte	0x7a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x7c
	.byte	0x25
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0x7c
	.byte	0x34
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0x7d
	.byte	0x33
	.4byte	0x5a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x7e
	.byte	0x2d
	.4byte	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x18
	.string	"ret"
	.byte	0x80
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF123
	.byte	0x81
	.byte	0x13
	.4byte	0x32d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x86
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.4byte	0x113b
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x2
	.byte	0x8f
	.byte	0x5
	.uleb128 0x6
	.4byte	0x1144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	0x114d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	0x1156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	0x115f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.4byte	0x1168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF127
	.byte	0x64
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x107f
	.uleb128 0xf
	.string	"ctx"
	.byte	0x64
	.byte	0x2c
	.4byte	0x7a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF124
	.byte	0x34
	.4byte	0x68
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ec
	.uleb128 0xf
	.string	"ctx"
	.byte	0x34
	.byte	0x2d
	.4byte	0x7a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0x35
	.byte	0x2c
	.4byte	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xf
	.string	"key"
	.byte	0x36
	.byte	0x2d
	.4byte	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0x37
	.byte	0x25
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"ret"
	.byte	0x39
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x46
	.byte	0x22
	.4byte	0x2e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.4byte	.LASF128
	.byte	0x2f
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x110f
	.uleb128 0xf
	.string	"ctx"
	.byte	0x2f
	.byte	0x2c
	.4byte	0x7a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x221
	.byte	0x16
	.4byte	0x76
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x113b
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x222
	.byte	0x22
	.4byte	0x2e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x36
	.4byte	.LASF134
	.byte	0x3
	.byte	0xba
	.byte	0x14
	.byte	0x3
	.uleb128 0x19
	.string	"r"
	.byte	0xba
	.byte	0x2f
	.4byte	0xa1
	.uleb128 0x19
	.string	"a"
	.byte	0xbb
	.byte	0x35
	.4byte	0x5a7
	.uleb128 0x19
	.string	"b"
	.byte	0xbc
	.byte	0x35
	.4byte	0x5a7
	.uleb128 0x19
	.string	"n"
	.byte	0xbd
	.byte	0x27
	.4byte	0x76
	.uleb128 0x37
	.string	"i"
	.byte	0x3
	.byte	0xbf
	.byte	0xc
	.4byte	0x76
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
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x5
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x19
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.sleb128 2
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xb4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
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
	.4byte	.LFB16
	.uleb128 .LFE16-.LFB16
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
	.byte	0x7
	.4byte	.LFB34
	.uleb128 .LFE34-.LFB34
	.byte	0x7
	.4byte	.LFB35
	.uleb128 .LFE35-.LFB35
	.byte	0x7
	.4byte	.LFB36
	.uleb128 .LFE36-.LFB36
	.byte	0x7
	.4byte	.LFB37
	.uleb128 .LFE37-.LFB37
	.byte	0x7
	.4byte	.LFB38
	.uleb128 .LFE38-.LFB38
	.byte	0x7
	.4byte	.LFB39
	.uleb128 .LFE39-.LFB39
	.byte	0x7
	.4byte	.LFB40
	.uleb128 .LFE40-.LFB40
	.byte	0x7
	.4byte	.LFB41
	.uleb128 .LFE41-.LFB41
	.byte	0x7
	.4byte	.LFB42
	.uleb128 .LFE42-.LFB42
	.byte	0x7
	.4byte	.LFB43
	.uleb128 .LFE43-.LFB43
	.byte	0x7
	.4byte	.LFB44
	.uleb128 .LFE44-.LFB44
	.byte	0x7
	.4byte	.LFB45
	.uleb128 .LFE45-.LFB45
	.byte	0x7
	.4byte	.LFB46
	.uleb128 .LFE46-.LFB46
	.byte	0x7
	.4byte	.LFB47
	.uleb128 .LFE47-.LFB47
	.byte	0x7
	.4byte	.LFB48
	.uleb128 .LFE48-.LFB48
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF55:
	.string	"operation"
.LASF95:
	.string	"input"
.LASF29:
	.string	"MBEDTLS_MODE_CTR"
.LASF49:
	.string	"flags"
.LASF126:
	.string	"keybits"
.LASF74:
	.string	"msg_len_test_data"
.LASF10:
	.string	"unsigned int"
.LASF79:
	.string	"mbedtls_ct_memcmp"
.LASF43:
	.string	"mbedtls_cmac_context_t"
.LASF27:
	.string	"MBEDTLS_MODE_CFB"
.LASF47:
	.string	"mode"
.LASF42:
	.string	"mbedtls_operation_t"
.LASF69:
	.string	"iv_test_data"
.LASF107:
	.string	"olen"
.LASF127:
	.string	"mbedtls_ccm_free"
.LASF39:
	.string	"MBEDTLS_OPERATION_NONE"
.LASF134:
	.string	"mbedtls_xor"
.LASF106:
	.string	"ccm_auth_crypt"
.LASF23:
	.string	"mbedtls_cipher_id_t"
.LASF63:
	.string	"plaintext_len"
.LASF9:
	.string	"long long unsigned int"
.LASF114:
	.string	"offset"
.LASF38:
	.string	"mbedtls_cipher_mode_t"
.LASF61:
	.string	"cmac_ctx"
.LASF41:
	.string	"MBEDTLS_ENCRYPT"
.LASF40:
	.string	"MBEDTLS_DECRYPT"
.LASF51:
	.string	"mbedtls_cipher_info_t"
.LASF71:
	.string	"msg_test_data"
.LASF94:
	.string	"iv_len"
.LASF59:
	.string	"unprocessed_len"
.LASF12:
	.string	"size_t"
.LASF77:
	.string	"memcmp"
.LASF96:
	.string	"output"
.LASF65:
	.string	"tag_len"
.LASF86:
	.string	"mbedtls_cipher_info_from_values"
.LASF24:
	.string	"MBEDTLS_MODE_NONE"
.LASF68:
	.string	"key_test_data"
.LASF90:
	.string	"mbedtls_ccm_self_test"
.LASF110:
	.string	"input_len"
.LASF82:
	.string	"mbedtls_cipher_setkey"
.LASF34:
	.string	"MBEDTLS_MODE_XTS"
.LASF124:
	.string	"mbedtls_ccm_setkey"
.LASF14:
	.string	"char"
.LASF120:
	.string	"ccm_calculate_first_block_if_ready"
.LASF37:
	.string	"MBEDTLS_MODE_KWP"
.LASF15:
	.string	"MBEDTLS_CIPHER_ID_NONE"
.LASF91:
	.string	"mbedtls_ccm_auth_decrypt"
.LASF31:
	.string	"MBEDTLS_MODE_STREAM"
.LASF85:
	.string	"mbedtls_cipher_free"
.LASF132:
	.string	"exit"
.LASF118:
	.string	"total_ad_len"
.LASF125:
	.string	"cipher"
.LASF116:
	.string	"mbedtls_ccm_update_ad"
.LASF13:
	.string	"uint8_t"
.LASF104:
	.string	"mbedtls_ccm_encrypt_and_tag"
.LASF98:
	.string	"check_tag"
.LASF75:
	.string	"tag_len_test_data"
.LASF129:
	.string	"mbedtls_cipher_info_get_block_size"
.LASF81:
	.string	"mbedtls_cipher_update"
.LASF109:
	.string	"mbedtls_ccm_update"
.LASF70:
	.string	"ad_test_data"
.LASF8:
	.string	"long long int"
.LASF78:
	.string	"printf"
.LASF45:
	.string	"iv_size"
.LASF33:
	.string	"MBEDTLS_MODE_CCM_STAR_NO_TAG"
.LASF30:
	.string	"MBEDTLS_MODE_GCM"
.LASF36:
	.string	"MBEDTLS_MODE_KW"
.LASF73:
	.string	"add_len_test_data"
.LASF87:
	.string	"memset"
.LASF113:
	.string	"use_len"
.LASF35:
	.string	"MBEDTLS_MODE_CHACHAPOLY"
.LASF117:
	.string	"mbedtls_ccm_set_lengths"
.LASF130:
	.string	"info"
.LASF105:
	.string	"mbedtls_ccm_star_encrypt_and_tag"
.LASF128:
	.string	"mbedtls_ccm_init"
.LASF123:
	.string	"tmp_buf"
.LASF11:
	.string	"long double"
.LASF17:
	.string	"MBEDTLS_CIPHER_ID_AES"
.LASF101:
	.string	"tag1"
.LASF102:
	.string	"tag2"
.LASF121:
	.string	"len_left"
.LASF4:
	.string	"short int"
.LASF16:
	.string	"MBEDTLS_CIPHER_ID_NULL"
.LASF64:
	.string	"add_len"
.LASF6:
	.string	"long int"
.LASF111:
	.string	"output_size"
.LASF93:
	.string	"length"
.LASF103:
	.string	"diff"
.LASF88:
	.string	"plaintext"
.LASF25:
	.string	"MBEDTLS_MODE_ECB"
.LASF133:
	.string	"mbedtls_ccm_clear_state"
.LASF50:
	.string	"base_idx"
.LASF44:
	.string	"block_size"
.LASF46:
	.string	"key_bitlen"
.LASF57:
	.string	"get_padding"
.LASF54:
	.string	"cipher_info"
.LASF60:
	.string	"cipher_ctx"
.LASF53:
	.string	"name"
.LASF108:
	.string	"mbedtls_ccm_finish"
.LASF97:
	.string	"mbedtls_ccm_star_auth_decrypt"
.LASF112:
	.string	"output_len"
.LASF21:
	.string	"MBEDTLS_CIPHER_ID_ARIA"
.LASF20:
	.string	"MBEDTLS_CIPHER_ID_CAMELLIA"
.LASF7:
	.string	"long unsigned int"
.LASF76:
	.string	"res_test_data"
.LASF99:
	.string	"ccm_auth_decrypt"
.LASF72:
	.string	"iv_len_test_data"
.LASF18:
	.string	"MBEDTLS_CIPHER_ID_DES"
.LASF122:
	.string	"mbedtls_ccm_crypt"
.LASF83:
	.string	"mbedtls_cipher_setup"
.LASF48:
	.string	"type"
.LASF100:
	.string	"mbedtls_ccm_compare_tags"
.LASF3:
	.string	"unsigned char"
.LASF26:
	.string	"MBEDTLS_MODE_CBC"
.LASF115:
	.string	"local_output"
.LASF67:
	.string	"state"
.LASF66:
	.string	"processed"
.LASF28:
	.string	"MBEDTLS_MODE_OFB"
.LASF52:
	.string	"mbedtls_cipher_context_t"
.LASF22:
	.string	"MBEDTLS_CIPHER_ID_CHACHA20"
.LASF92:
	.string	"verbose"
.LASF19:
	.string	"MBEDTLS_CIPHER_ID_3DES"
.LASF2:
	.string	"signed char"
.LASF89:
	.string	"ciphertext"
.LASF5:
	.string	"short unsigned int"
.LASF80:
	.string	"memcpy"
.LASF32:
	.string	"MBEDTLS_MODE_CCM"
.LASF119:
	.string	"mbedtls_ccm_starts"
.LASF62:
	.string	"mbedtls_ccm_context"
.LASF56:
	.string	"add_padding"
.LASF58:
	.string	"unprocessed_data"
.LASF131:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF84:
	.string	"mbedtls_platform_zeroize"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ccm.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
