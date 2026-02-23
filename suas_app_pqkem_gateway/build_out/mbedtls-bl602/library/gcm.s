	.file	"gcm.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/gcm.c"
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
	.section	.text.mbedtls_gcm_init,"ax",@progbits
	.align	1
	.globl	mbedtls_gcm_init
	.type	mbedtls_gcm_init, @function
mbedtls_gcm_init:
.LFB30:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/gcm.c"
	.loc 2 54 1
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
	.loc 2 55 5
	li	a5,4096
	addi	a2,a5,144
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 2 56 1
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
	.size	mbedtls_gcm_init, .-mbedtls_gcm_init
	.section	.text.gcm_set_acceleration,"ax",@progbits
	.align	1
	.type	gcm_set_acceleration, @function
gcm_set_acceleration:
.LFB31:
	.loc 2 59 1
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
	.loc 2 61 23
	lw	a4,-20(s0)
	li	a5,4096
	add	a5,a4,a5
	li	a4,1
	sb	a4,137(a5)
	.loc 2 78 1
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
.LFE31:
	.size	gcm_set_acceleration, .-gcm_set_acceleration
	.section	.text.gcm_gen_table_rightshift,"ax",@progbits
	.align	1
	.type	gcm_gen_table_rightshift, @function
gcm_gen_table_rightshift:
.LFB32:
	.loc 2 81 1
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	ra,140(sp)
	sw	s0,136(sp)
	sw	s1,132(sp)
	sw	s2,128(sp)
	sw	s3,124(sp)
	sw	s4,120(sp)
	sw	s5,116(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sw	a0,-132(s0)
	sw	a1,-136(s0)
	.loc 2 82 14
	lw	a5,-132(s0)
	sw	a5,-40(s0)
	.loc 2 83 14
	lw	a5,-136(s0)
	sw	a5,-36(s0)
	.loc 2 85 252 discriminator 2
	lw	a5,-132(s0)
	addi	s1,a5,8
	.loc 2 85 401 discriminator 2
	lw	a5,-136(s0)
	addi	a5,a5,8
	sw	a5,-64(s0)
.LBB50:
.LBB51:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/alignment.h"
	.loc 3 226 33
	lw	a5,-64(s0)
	sw	a5,-68(s0)
	.loc 3 227 7
	lw	a5,-68(s0)
	lbu	a4,0(a5)
	lbu	a1,1(a5)
	slli	a1,a1,8
	or	a4,a1,a4
	lbu	a1,2(a5)
	slli	a1,a1,16
	or	a4,a1,a4
	lbu	a1,3(a5)
	slli	a1,a1,24
	or	a4,a1,a4
	mv	a2,a4
	lbu	a4,4(a5)
	lbu	a1,5(a5)
	slli	a1,a1,8
	or	a4,a1,a4
	lbu	a1,6(a5)
	slli	a1,a1,16
	or	a4,a1,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a3,a5
	sw	a2,-80(s0)
	sw	a3,-76(s0)
	.loc 3 231 12
	lw	a4,-80(s0)
	lw	a5,-76(s0)
.LBE51:
.LBE50:
	.loc 2 85 342 discriminator 6
	mv	a0,a4
	mv	a1,a5
	call	__bswapdi2
	mv	a4,a0
	mv	a5,a1
	.loc 2 85 259 discriminator 7
	slli	a3,a5,31
	srli	s4,a4,1
	add	s4,a3,s4
	srli	s5,a5,1
	mv	a0,s4
	mv	a1,s5
	call	__bswapdi2
	mv	a4,a0
	mv	a5,a1
	sw	s1,-44(s0)
	sw	a4,-56(s0)
	sw	a5,-52(s0)
.LBB52:
.LBB53:
	.loc 3 252 33
	lw	a5,-44(s0)
	sw	a5,-60(s0)
	.loc 3 253 12
	lw	a5,-60(s0)
	lw	a4,-56(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-56(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-56(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-56(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	lw	a4,-52(s0)
	andi	a4,a4,255
	lbu	a3,4(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,4(a5)
	lw	a4,-52(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,5(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,5(a5)
	lw	a4,-52(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,6(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,6(a5)
	lw	a4,-52(s0)
	srli	a4,a4,24
	lbu	a3,7(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,7(a5)
	.loc 3 257 1
	nop
.LBE53:
.LBE52:
	.loc 2 86 10
	lw	a5,-40(s0)
	addi	a5,a5,8
	lbu	a5,0(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 2 86 23
	lw	a5,-36(s0)
	addi	a5,a5,7
	lbu	a5,0(a5)
	.loc 2 86 14
	slli	a5,a5,24
	srai	a5,a5,24
	slli	a5,a5,7
	slli	a5,a5,24
	srai	a5,a5,24
	or	a5,a4,a5
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 2 86 10
	lw	a5,-40(s0)
	addi	a5,a5,8
	.loc 2 86 14
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lw	a5,-136(s0)
	sw	a5,-104(s0)
.LBB54:
.LBB55:
	.loc 3 226 33
	lw	a5,-104(s0)
	sw	a5,-108(s0)
	.loc 3 227 7
	lw	a5,-108(s0)
	lbu	a4,0(a5)
	lbu	a1,1(a5)
	slli	a1,a1,8
	or	a4,a1,a4
	lbu	a1,2(a5)
	slli	a1,a1,16
	or	a4,a1,a4
	lbu	a1,3(a5)
	slli	a1,a1,24
	or	a4,a1,a4
	mv	a2,a4
	lbu	a4,4(a5)
	lbu	a1,5(a5)
	slli	a1,a1,8
	or	a4,a1,a4
	lbu	a1,6(a5)
	slli	a1,a1,16
	or	a4,a1,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a3,a5
	sw	a2,-120(s0)
	sw	a3,-116(s0)
	.loc 3 231 12
	lw	a4,-120(s0)
	lw	a5,-116(s0)
.LBE55:
.LBE54:
	.loc 2 87 342 discriminator 6
	mv	a0,a4
	mv	a1,a5
	call	__bswapdi2
	mv	a4,a0
	mv	a5,a1
	.loc 2 87 259 discriminator 7
	slli	a3,a5,31
	srli	s2,a4,1
	add	s2,a3,s2
	srli	s3,a5,1
	mv	a0,s2
	mv	a1,s3
	call	__bswapdi2
	mv	a4,a0
	mv	a5,a1
	lw	a3,-132(s0)
	sw	a3,-84(s0)
	sw	a4,-96(s0)
	sw	a5,-92(s0)
.LBB56:
.LBB57:
	.loc 3 252 33
	lw	a5,-84(s0)
	sw	a5,-100(s0)
	.loc 3 253 12
	lw	a5,-100(s0)
	lw	a4,-96(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-96(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-96(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-96(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	lw	a4,-92(s0)
	andi	a4,a4,255
	lbu	a3,4(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,4(a5)
	lw	a4,-92(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,5(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,5(a5)
	lw	a4,-92(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,6(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,6(a5)
	lw	a4,-92(s0)
	srli	a4,a4,24
	lbu	a3,7(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,7(a5)
	.loc 3 257 1
	nop
.LBE57:
.LBE56:
	.loc 2 88 10
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 2 88 23
	lw	a5,-36(s0)
	addi	a5,a5,15
	lbu	a5,0(a5)
	.loc 2 88 28
	andi	a5,a5,1
	.loc 2 88 14
	beq	a5,zero,.L9
	.loc 2 88 14 is_stmt 0 discriminator 1
	li	a5,-31
	j	.L10
.L9:
	.loc 2 88 14 discriminator 2
	li	a5,0
.L10:
	.loc 2 88 14 discriminator 4
	xor	a5,a5,a4
	slli	a5,a5,24
	srai	a5,a5,24
	andi	a4,a5,0xff
	lw	a5,-40(s0)
	sb	a4,0(a5)
	.loc 2 89 1 is_stmt 1
	nop
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	lw	s1,132(sp)
	.cfi_restore 9
	lw	s2,128(sp)
	.cfi_restore 18
	lw	s3,124(sp)
	.cfi_restore 19
	lw	s4,120(sp)
	.cfi_restore 20
	lw	s5,116(sp)
	.cfi_restore 21
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	gcm_gen_table_rightshift, .-gcm_gen_table_rightshift
	.section	.text.gcm_gen_table,"ax",@progbits
	.align	1
	.type	gcm_gen_table, @function
gcm_gen_table:
.LFB33:
	.loc 2 100 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	.loc 2 102 14
	sw	zero,-72(s0)
	sw	zero,-68(s0)
	sw	zero,-64(s0)
	sw	zero,-60(s0)
	.loc 2 103 14
	addi	a5,s0,-72
	sw	a5,-28(s0)
	.loc 2 108 12
	sw	zero,-76(s0)
	.loc 2 109 11
	lw	a5,-84(s0)
	addi	a4,s0,-76
	lw	a3,-28(s0)
	li	a2,16
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_cipher_update
	sw	a0,-32(s0)
	.loc 2 111 8
	lw	a5,-32(s0)
	beq	a5,zero,.L12
	.loc 2 112 16
	lw	a5,-32(s0)
	j	.L22
.L12:
	.loc 2 115 5
	lw	a0,-84(s0)
	call	gcm_set_acceleration
	.loc 2 118 28
	lw	a4,-72(s0)
	lw	a5,-68(s0)
	.loc 2 118 22
	lw	a2,-84(s0)
	li	a3,4096
	add	a3,a2,a3
	sw	a4,-1976(a3)
	sw	a5,-1972(a3)
	.loc 2 119 28
	lw	a4,-64(s0)
	lw	a5,-60(s0)
	.loc 2 119 22
	lw	a2,-84(s0)
	li	a3,4096
	add	a3,a2,a3
	sw	a4,-1968(a3)
	sw	a5,-1964(a3)
	.loc 2 134 26
	lw	a5,-84(s0)
	li	a3,0
	li	a4,0
	sw	a3,72(a5)
	sw	a4,76(a5)
	.loc 2 135 26
	lw	a5,-84(s0)
	sw	a3,80(a5)
	sw	a4,84(a5)
	.loc 2 137 20
	li	a5,64
	sw	a5,-20(s0)
	.loc 2 137 13
	j	.L14
.L15:
	.loc 2 138 48
	lw	a5,-20(s0)
	addi	a5,a5,4
	slli	a5,a5,4
	lw	a4,-84(s0)
	add	a5,a4,a5
	addi	a3,a5,8
	.loc 2 138 61
	lw	a5,-20(s0)
	slli	a5,a5,1
	.loc 2 138 59
	addi	a5,a5,4
	slli	a5,a5,4
	lw	a4,-84(s0)
	add	a5,a4,a5
	addi	a5,a5,8
	.loc 2 138 17
	mv	a1,a5
	mv	a0,a3
	call	gcm_gen_table_rightshift
	.loc 2 137 38 discriminator 3
	lw	a5,-20(s0)
	srai	a5,a5,1
	sw	a5,-20(s0)
.L14:
	.loc 2 137 31 discriminator 1
	lw	a5,-20(s0)
	bgt	a5,zero,.L15
	.loc 2 149 20
	li	a5,2
	sw	a5,-20(s0)
	.loc 2 149 13
	j	.L16
.L21:
	.loc 2 150 24
	li	a5,1
	sw	a5,-24(s0)
	.loc 2 150 17
	j	.L17
.L20:
	.loc 2 151 67
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 151 59
	addi	a5,a5,4
	slli	a5,a5,4
	lw	a4,-84(s0)
	add	a5,a4,a5
	addi	a3,a5,8
	.loc 2 152 59
	lw	a5,-20(s0)
	addi	a5,a5,4
	slli	a5,a5,4
	lw	a4,-84(s0)
	add	a5,a4,a5
	addi	a4,a5,8
	.loc 2 153 59
	lw	a5,-24(s0)
	addi	a5,a5,4
	slli	a5,a5,4
	lw	a2,-84(s0)
	add	a5,a2,a5
	addi	a5,a5,8
	sw	a3,-36(s0)
	sw	a4,-40(s0)
	sw	a5,-44(s0)
	li	a5,16
	sw	a5,-48(s0)
.LBB58:
.LBB59:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/common.h"
	.loc 4 273 12
	sw	zero,-52(s0)
	.loc 4 302 5
	j	.L18
.L19:
	.loc 4 303 17
	lw	a4,-40(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 4 303 24
	lw	a4,-44(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 4 303 10
	lw	a2,-36(s0)
	lw	a5,-52(s0)
	add	a5,a2,a5
	.loc 4 303 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 4 302 20 discriminator 2
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.L18:
	.loc 4 302 14 discriminator 1
	lw	a4,-48(s0)
	lw	a5,-52(s0)
	bgtu	a4,a5,.L19
	.loc 4 305 1
	nop
.LBE59:
.LBE58:
	.loc 2 150 37 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L17:
	.loc 2 150 31 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	blt	a4,a5,.L20
	.loc 2 149 36 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,1
	sw	a5,-20(s0)
.L16:
	.loc 2 149 27 discriminator 1
	lw	a4,-20(s0)
	li	a5,255
	ble	a4,a5,.L21
	.loc 2 159 12
	li	a5,0
.L22:
	.loc 2 160 1
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
	.size	gcm_gen_table, .-gcm_gen_table
	.section	.text.mbedtls_gcm_setkey,"ax",@progbits
	.align	1
	.globl	mbedtls_gcm_setkey
	.type	mbedtls_gcm_setkey, @function
mbedtls_gcm_setkey:
.LFB34:
	.loc 2 166 1
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
	.loc 2 167 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 169 8
	lw	a4,-48(s0)
	li	a5,128
	beq	a4,a5,.L24
	.loc 2 169 24 discriminator 1
	lw	a4,-48(s0)
	li	a5,192
	beq	a4,a5,.L24
	.loc 2 169 42 discriminator 2
	lw	a4,-48(s0)
	li	a5,256
	beq	a4,a5,.L24
	.loc 2 170 16
	li	a5,-20
	j	.L25
.L24:
	.loc 2 186 19
	lw	a4,-48(s0)
	lbu	a5,-37(s0)
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_cipher_info_from_values
	sw	a0,-24(s0)
	.loc 2 188 8
	lw	a5,-24(s0)
	bne	a5,zero,.L26
	.loc 2 189 16
	li	a5,-20
	j	.L25
.L26:
	.loc 2 192 9
	lw	a0,-24(s0)
	call	mbedtls_cipher_info_get_block_size
	mv	a4,a0
	.loc 2 192 8 discriminator 1
	li	a5,16
	beq	a4,a5,.L27
	.loc 2 193 16
	li	a5,-20
	j	.L25
.L27:
	.loc 2 196 5
	lw	a5,-36(s0)
	mv	a0,a5
	call	mbedtls_cipher_free
	.loc 2 198 16
	lw	a5,-36(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_cipher_setup
	sw	a0,-20(s0)
	.loc 2 198 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L28
	.loc 2 199 16
	lw	a5,-20(s0)
	j	.L25
.L28:
	.loc 2 202 16
	lw	a5,-36(s0)
	lw	a4,-48(s0)
	li	a3,1
	mv	a2,a4
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_cipher_setkey
	sw	a0,-20(s0)
	.loc 2 202 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L29
	.loc 2 204 16
	lw	a5,-20(s0)
	j	.L25
.L29:
	.loc 2 208 16
	lw	a0,-36(s0)
	call	gcm_gen_table
	sw	a0,-20(s0)
	.loc 2 208 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L30
	.loc 2 209 16
	lw	a5,-20(s0)
	j	.L25
.L30:
	.loc 2 212 12
	li	a5,0
.L25:
	.loc 2 213 1
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
.LFE34:
	.size	mbedtls_gcm_setkey, .-mbedtls_gcm_setkey
	.section	.rodata.last8,"a"
	.align	2
	.type	last8, @object
	.size	last8, 512
last8:
	.half	0
	.half	-15871
	.half	-31741
	.half	17922
	.half	2055
	.half	-13818
	.half	-29692
	.half	19973
	.half	4110
	.half	-11761
	.half	-27635
	.half	22028
	.half	6153
	.half	-9720
	.half	-25590
	.half	24075
	.half	8220
	.half	-7651
	.half	-23521
	.half	26142
	.half	10267
	.half	-5606
	.half	-21480
	.half	28185
	.half	12306
	.half	-3565
	.half	-19439
	.half	30224
	.half	14357
	.half	-1516
	.half	-17386
	.half	32279
	.half	16440
	.half	-32199
	.half	-15301
	.half	1594
	.half	18495
	.half	-30146
	.half	-13252
	.half	3645
	.half	20534
	.half	-28105
	.half	-11211
	.half	5684
	.half	22577
	.half	-26064
	.half	-9166
	.half	7731
	.half	24612
	.half	-24027
	.half	-7129
	.half	9766
	.half	26659
	.half	-21982
	.half	-5088
	.half	11809
	.half	28714
	.half	-19925
	.half	-3031
	.half	13864
	.half	30765
	.half	-17876
	.half	-978
	.half	15919
	.half	-32656
	.half	17009
	.half	1139
	.half	-14734
	.half	-30601
	.half	19062
	.half	3188
	.half	-12683
	.half	-28546
	.half	21119
	.half	5245
	.half	-10628
	.half	-26503
	.half	23160
	.half	7290
	.half	-8581
	.half	-24468
	.half	25197
	.half	9327
	.half	-6546
	.half	-22421
	.half	27242
	.half	11368
	.half	-4503
	.half	-20382
	.half	29283
	.half	13409
	.half	-2464
	.half	-18331
	.half	31332
	.half	15462
	.half	-409
	.half	-16312
	.half	585
	.half	17483
	.half	-31158
	.half	-14257
	.half	2638
	.half	19532
	.half	-29107
	.half	-12218
	.half	4679
	.half	21573
	.half	-27068
	.half	-10175
	.half	6720
	.half	23618
	.half	-25021
	.half	-8108
	.half	8789
	.half	25687
	.half	-22954
	.half	-6061
	.half	10834
	.half	27728
	.half	-20911
	.half	-4006
	.half	12891
	.half	29785
	.half	-18856
	.half	-1955
	.half	14940
	.half	31838
	.half	-16801
	.half	225
	.half	-15648
	.half	-31518
	.half	18147
	.half	2278
	.half	-13593
	.half	-29467
	.half	20196
	.half	4335
	.half	-11538
	.half	-27412
	.half	22253
	.half	6376
	.half	-9495
	.half	-25365
	.half	24298
	.half	8445
	.half	-7428
	.half	-23298
	.half	26367
	.half	10490
	.half	-5381
	.half	-21255
	.half	28408
	.half	12531
	.half	-3342
	.half	-19216
	.half	30449
	.half	14580
	.half	-1291
	.half	-17161
	.half	32502
	.half	16601
	.half	-32040
	.half	-15142
	.half	1755
	.half	18654
	.half	-29985
	.half	-13091
	.half	3804
	.half	20695
	.half	-27946
	.half	-11052
	.half	5845
	.half	22736
	.half	-25903
	.half	-9005
	.half	7890
	.half	24773
	.half	-23868
	.half	-6970
	.half	9927
	.half	26818
	.half	-21821
	.half	-4927
	.half	11968
	.half	28875
	.half	-19766
	.half	-2872
	.half	14025
	.half	30924
	.half	-17715
	.half	-817
	.half	16078
	.half	-32623
	.half	17040
	.half	1170
	.half	-14701
	.half	-30570
	.half	19095
	.half	3221
	.half	-12652
	.half	-28513
	.half	21150
	.half	5276
	.half	-10595
	.half	-26472
	.half	23193
	.half	7323
	.half	-8550
	.half	-24435
	.half	25228
	.half	9358
	.half	-6513
	.half	-22390
	.half	27275
	.half	11401
	.half	-4472
	.half	-20349
	.half	29314
	.half	13440
	.half	-2431
	.half	-18300
	.half	31365
	.half	15495
	.half	-378
	.half	-16215
	.half	680
	.half	17578
	.half	-31061
	.half	-14162
	.half	2735
	.half	19629
	.half	-29012
	.half	-12121
	.half	4774
	.half	21668
	.half	-26971
	.half	-10080
	.half	6817
	.half	23715
	.half	-24926
	.half	-8011
	.half	8884
	.half	25782
	.half	-22857
	.half	-5966
	.half	10931
	.half	27825
	.half	-20816
	.half	-3909
	.half	12986
	.half	29880
	.half	-18759
	.half	-1860
	.half	15037
	.half	31935
	.half	-16706
	.section	.text.gcm_mult_largetable,"ax",@progbits
	.align	1
	.type	gcm_mult_largetable, @function
gcm_mult_largetable:
.LFB35:
	.loc 2 252 1
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
	.loc 2 255 15
	addi	a3,s0,-88
	sw	a3,-24(s0)
	.loc 2 256 14
	addi	a3,s0,-88
	sw	a3,-28(s0)
	.loc 2 259 13
	li	a2,0
	li	a3,0
	sw	a2,-88(s0)
	sw	a3,-84(s0)
	.loc 2 260 13
	sw	a2,-80(s0)
	sw	a3,-76(s0)
	.loc 2 274 16
	li	a3,15
	sw	a3,-20(s0)
	.loc 2 274 9
	j	.L32
.L35:
	.loc 2 275 58
	lw	a3,-20(s0)
	lw	a2,-104(s0)
	add	a3,a2,a3
	lbu	a3,0(a3)
	.loc 2 275 56
	slli	a3,a3,4
	lw	a2,-108(s0)
	add	a3,a2,a3
	lw	a2,-28(s0)
	sw	a2,-40(s0)
	lw	a2,-28(s0)
	sw	a2,-36(s0)
	sw	a3,-44(s0)
	li	a3,16
	sw	a3,-48(s0)
.LBB60:
.LBB61:
	.loc 4 273 12
	sw	zero,-52(s0)
	.loc 4 302 5
	j	.L33
.L34:
	.loc 4 303 17
	lw	a2,-36(s0)
	lw	a3,-52(s0)
	add	a3,a2,a3
	lbu	a1,0(a3)
	.loc 4 303 24
	lw	a2,-44(s0)
	lw	a3,-52(s0)
	add	a3,a2,a3
	lbu	a2,0(a3)
	.loc 4 303 10
	lw	a0,-40(s0)
	lw	a3,-52(s0)
	add	a3,a0,a3
	.loc 4 303 14
	xor	a2,a1,a2
	andi	a2,a2,0xff
	sb	a2,0(a3)
	.loc 4 302 20 discriminator 2
	lw	a3,-52(s0)
	addi	a3,a3,1
	sw	a3,-52(s0)
.L33:
	.loc 4 302 14 discriminator 1
	lw	a2,-48(s0)
	lw	a3,-52(s0)
	bgtu	a2,a3,.L34
	.loc 4 305 1
	nop
.LBE61:
.LBE60:
	.loc 2 276 17
	lw	a3,-28(s0)
	lbu	a3,15(a3)
	sb	a3,-29(s0)
	.loc 2 278 17
	lw	a2,-80(s0)
	lw	a3,-76(s0)
	.loc 2 278 21
	srli	a1,a2,24
	slli	a5,a3,8
	add	a5,a1,a5
	slli	a4,a2,8
	sw	a4,-80(s0)
	sw	a5,-76(s0)
	.loc 2 279 16
	lw	a3,-28(s0)
	addi	a3,a3,8
	.loc 2 279 20
	lw	a2,-28(s0)
	lbu	a2,7(a2)
	sb	a2,0(a3)
	.loc 2 280 17
	lw	a2,-88(s0)
	lw	a3,-84(s0)
	.loc 2 280 21
	srli	a1,a2,24
	slli	a7,a3,8
	add	a7,a1,a7
	slli	a6,a2,8
	sw	a6,-88(s0)
	sw	a7,-84(s0)
	.loc 2 282 17
	lw	a3,-24(s0)
	lhu	a2,0(a3)
	.loc 2 282 29
	lbu	a3,-29(s0)
	lui	a1,%hi(last8)
	addi	a1,a1,%lo(last8)
	slli	a3,a3,1
	add	a3,a1,a3
	lhu	a3,0(a3)
	.loc 2 282 21
	xor	a3,a2,a3
	slli	a2,a3,16
	srli	a2,a2,16
	lw	a3,-24(s0)
	sh	a2,0(a3)
	.loc 2 274 30 discriminator 3
	lw	a3,-20(s0)
	addi	a3,a3,-1
	sw	a3,-20(s0)
.L32:
	.loc 2 274 24 discriminator 1
	lw	a3,-20(s0)
	bgt	a3,zero,.L35
	.loc 2 286 53
	lw	a5,-104(s0)
	lbu	a5,0(a5)
	.loc 2 286 51
	slli	a5,a5,4
	lw	a4,-108(s0)
	add	a5,a4,a5
	lw	a4,-100(s0)
	sw	a4,-56(s0)
	lw	a4,-28(s0)
	sw	a4,-60(s0)
	sw	a5,-64(s0)
	li	a5,16
	sw	a5,-68(s0)
.LBB62:
.LBB63:
	.loc 4 273 12
	sw	zero,-72(s0)
	.loc 4 302 5
	j	.L36
.L37:
	.loc 4 303 17
	lw	a4,-60(s0)
	lw	a5,-72(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 4 303 24
	lw	a4,-64(s0)
	lw	a5,-72(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 4 303 10
	lw	a2,-56(s0)
	lw	a5,-72(s0)
	add	a5,a2,a5
	.loc 4 303 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 4 302 20 discriminator 2
	lw	a5,-72(s0)
	addi	a5,a5,1
	sw	a5,-72(s0)
.L36:
	.loc 4 302 14 discriminator 1
	lw	a4,-68(s0)
	lw	a5,-72(s0)
	bgtu	a4,a5,.L37
	.loc 4 305 1
	nop
.LBE63:
.LBE62:
	.loc 2 287 1
	nop
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	gcm_mult_largetable, .-gcm_mult_largetable
	.section	.text.gcm_mult,"ax",@progbits
	.align	1
	.type	gcm_mult, @function
gcm_mult:
.LFB36:
	.loc 2 349 1
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
	.loc 2 350 16
	lw	a4,-20(s0)
	li	a5,4096
	add	a5,a4,a5
	lbu	a5,137(a5)
	mv	a4,a5
	.loc 2 350 5
	li	a5,1
	bne	a4,a5,.L41
	.loc 2 365 47
	lw	a5,-20(s0)
	addi	a5,a5,72
	.loc 2 365 13
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	gcm_mult_largetable
	.loc 2 366 13
	nop
	.loc 2 374 5
	nop
.L41:
	nop
	.loc 2 375 1
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
	.size	gcm_mult, .-gcm_mult
	.section	.text.mbedtls_gcm_starts,"ax",@progbits
	.align	1
	.globl	mbedtls_gcm_starts
	.type	mbedtls_gcm_starts, @function
mbedtls_gcm_starts:
.LFB37:
	.loc 2 380 1
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	ra,140(sp)
	sw	s0,136(sp)
	sw	s1,132(sp)
	sw	s2,128(sp)
	sw	s3,124(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sw	a0,-132(s0)
	sw	a1,-136(s0)
	sw	a2,-140(s0)
	sw	a3,-144(s0)
	.loc 2 381 9
	li	a3,-110
	sw	a3,-40(s0)
	.loc 2 387 12
	sw	zero,-128(s0)
	.loc 2 392 8
	lw	a3,-144(s0)
	beq	a3,zero,.L43
	.loc 2 392 24 discriminator 1
	lw	a3,-144(s0)
	mv	a6,a3
	li	a7,0
	.loc 2 392 42 discriminator 1
	srli	a4,a7,29
	li	a5,0
	.loc 2 392 21 discriminator 1
	mv	a3,a4
	or	a3,a3,a5
	beq	a3,zero,.L44
.L43:
	.loc 2 393 16
	li	a5,-20
	j	.L57
.L44:
	.loc 2 396 15
	lw	a4,-132(s0)
	li	a5,4096
	addi	a5,a5,104
	add	a5,a4,a5
	.loc 2 396 5
	li	a2,16
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 397 15
	lw	a4,-132(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a5,a4,a5
	.loc 2 397 5
	li	a2,16
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 399 15
	lw	a5,-136(s0)
	andi	a4,a5,0xff
	lw	a3,-132(s0)
	li	a5,4096
	add	a5,a3,a5
	sb	a4,136(a5)
	.loc 2 400 14
	lw	a4,-132(s0)
	li	a5,4096
	add	a5,a4,a5
	li	a2,0
	li	a3,0
	sw	a2,72(a5)
	sw	a3,76(a5)
	.loc 2 401 18
	lw	a4,-132(s0)
	li	a5,4096
	add	a5,a4,a5
	sw	a2,80(a5)
	sw	a3,84(a5)
	.loc 2 403 8
	lw	a4,-144(s0)
	li	a5,12
	bne	a4,a5,.L47
	.loc 2 404 19
	lw	a4,-132(s0)
	li	a5,4096
	addi	a5,a5,104
	add	a5,a4,a5
	.loc 2 404 9
	lw	a2,-144(s0)
	lw	a1,-140(s0)
	mv	a0,a5
	call	memcpy
	.loc 2 405 20
	lw	a4,-132(s0)
	li	a5,4096
	add	a5,a4,a5
	li	a4,1
	sb	a4,119(a5)
	j	.L48
.L47:
	.loc 2 407 9
	addi	a5,s0,-124
	li	a2,16
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 408 19
	lw	a5,-144(s0)
	mv	s2,a5
	li	s3,0
	.loc 2 408 17
	srli	a5,s2,29
	slli	a4,s3,3
	add	a5,a4,a5
	sw	a5,-44(s0)
	slli	a5,s2,3
	sw	a5,-48(s0)
	.loc 2 409 99 discriminator 2
	addi	s1,s0,-124
	addi	s1,s1,8
	.loc 2 409 146 discriminator 2
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	__bswapdi2
	mv	a4,a0
	mv	a5,a1
	sw	s1,-56(s0)
	sw	a4,-64(s0)
	sw	a5,-60(s0)
.LBB64:
.LBB65:
	.loc 3 252 33
	lw	a5,-56(s0)
	sw	a5,-68(s0)
	.loc 3 253 12
	lw	a5,-68(s0)
	lw	a4,-64(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-64(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-64(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-64(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	lw	a4,-60(s0)
	andi	a4,a4,255
	lbu	a3,4(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,4(a5)
	lw	a4,-60(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,5(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,5(a5)
	lw	a4,-60(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,6(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,6(a5)
	lw	a4,-60(s0)
	srli	a4,a4,24
	lbu	a3,7(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,7(a5)
	.loc 3 257 1
	nop
.LBE65:
.LBE64:
	.loc 2 411 11
	lw	a5,-140(s0)
	sw	a5,-36(s0)
	.loc 2 412 15
	j	.L49
.L53:
	.loc 2 413 21
	lw	a5,-144(s0)
	li	a4,16
	bleu	a5,a4,.L50
	li	a5,16
.L50:
	sw	a5,-52(s0)
	.loc 2 420 28
	lw	a4,-132(s0)
	li	a5,4096
	addi	a5,a5,104
	add	a4,a4,a5
	.loc 2 420 36
	lw	a3,-132(s0)
	li	a5,4096
	addi	a5,a5,104
	add	a5,a3,a5
	sw	a4,-72(s0)
	sw	a5,-76(s0)
	lw	a5,-36(s0)
	sw	a5,-80(s0)
	lw	a5,-52(s0)
	sw	a5,-84(s0)
.LBB66:
.LBB67:
	.loc 4 191 12
	sw	zero,-88(s0)
	.loc 4 234 5
	j	.L51
.L52:
	.loc 4 235 17
	lw	a4,-76(s0)
	lw	a5,-88(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 4 235 24
	lw	a4,-80(s0)
	lw	a5,-88(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 4 235 10
	lw	a2,-72(s0)
	lw	a5,-88(s0)
	add	a5,a2,a5
	.loc 4 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 4 234 20 discriminator 2
	lw	a5,-88(s0)
	addi	a5,a5,1
	sw	a5,-88(s0)
.L51:
	.loc 4 234 14 discriminator 1
	lw	a4,-84(s0)
	lw	a5,-88(s0)
	bgtu	a4,a5,.L52
	.loc 4 237 1
	nop
.LBE67:
.LBE66:
	.loc 2 426 30
	lw	a4,-132(s0)
	li	a5,4096
	addi	a5,a5,104
	add	a3,a4,a5
	.loc 2 426 38
	lw	a4,-132(s0)
	li	a5,4096
	addi	a5,a5,104
	add	a5,a4,a5
	.loc 2 426 13
	mv	a2,a5
	mv	a1,a3
	lw	a0,-132(s0)
	call	gcm_mult
	.loc 2 428 20
	lw	a4,-144(s0)
	lw	a5,-52(s0)
	sub	a5,a4,a5
	sw	a5,-144(s0)
	.loc 2 429 15
	lw	a4,-36(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
.L49:
	.loc 2 412 23
	lw	a5,-144(s0)
	bne	a5,zero,.L53
	.loc 2 432 24
	lw	a4,-132(s0)
	li	a5,4096
	addi	a5,a5,104
	add	a4,a4,a5
	.loc 2 432 32
	lw	a3,-132(s0)
	li	a5,4096
	addi	a5,a5,104
	add	a5,a3,a5
	sw	a4,-92(s0)
	sw	a5,-96(s0)
	addi	a5,s0,-124
	sw	a5,-100(s0)
	li	a5,16
	sw	a5,-104(s0)
.LBB68:
.LBB69:
	.loc 4 191 12
	sw	zero,-108(s0)
	.loc 4 234 5
	j	.L54
.L55:
	.loc 4 235 17
	lw	a4,-96(s0)
	lw	a5,-108(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 4 235 24
	lw	a4,-100(s0)
	lw	a5,-108(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 4 235 10
	lw	a2,-92(s0)
	lw	a5,-108(s0)
	add	a5,a2,a5
	.loc 4 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 4 234 20 discriminator 2
	lw	a5,-108(s0)
	addi	a5,a5,1
	sw	a5,-108(s0)
.L54:
	.loc 4 234 14 discriminator 1
	lw	a4,-104(s0)
	lw	a5,-108(s0)
	bgtu	a4,a5,.L55
	.loc 4 237 1
	nop
.LBE69:
.LBE68:
	.loc 2 434 26
	lw	a4,-132(s0)
	li	a5,4096
	addi	a5,a5,104
	add	a3,a4,a5
	.loc 2 434 34
	lw	a4,-132(s0)
	li	a5,4096
	addi	a5,a5,104
	add	a5,a4,a5
	.loc 2 434 9
	mv	a2,a5
	mv	a1,a3
	lw	a0,-132(s0)
	call	gcm_mult
.L48:
	.loc 2 441 11
	lw	a0,-132(s0)
	.loc 2 441 54
	lw	a4,-132(s0)
	li	a5,4096
	addi	a5,a5,104
	add	a1,a4,a5
	.loc 2 441 66
	lw	a4,-132(s0)
	li	a5,4096
	addi	a5,a5,88
	add	a5,a4,a5
	.loc 2 441 11
	addi	a4,s0,-128
	mv	a3,a5
	li	a2,16
	call	mbedtls_cipher_update
	sw	a0,-40(s0)
	.loc 2 443 8
	lw	a5,-40(s0)
	beq	a5,zero,.L56
	.loc 2 444 16
	lw	a5,-40(s0)
	j	.L57
.L56:
	.loc 2 447 12
	li	a5,0
.L57:
	.loc 2 448 1
	mv	a0,a5
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	lw	s1,132(sp)
	.cfi_restore 9
	lw	s2,128(sp)
	.cfi_restore 18
	lw	s3,124(sp)
	.cfi_restore 19
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE37:
	.size	mbedtls_gcm_starts, .-mbedtls_gcm_starts
	.section	.text.mbedtls_gcm_update_ad,"ax",@progbits
	.align	1
	.globl	mbedtls_gcm_update_ad
	.type	mbedtls_gcm_update_ad, @function
mbedtls_gcm_update_ad:
.LFB38:
	.loc 2 469 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	sw	s2,116(sp)
	sw	s3,112(sp)
	sw	s4,108(sp)
	sw	s5,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-116(s0)
	sw	a1,-120(s0)
	sw	a2,-124(s0)
	.loc 2 481 22
	lw	a4,-116(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a2,80(a5)
	lw	a3,84(a5)
	.loc 2 481 34
	lw	a5,-124(s0)
	mv	t1,a5
	li	t2,0
	.loc 2 481 17
	add	a4,a2,t1
	mv	a1,a4
	sltu	a1,a1,a2
	add	a5,a3,t2
	add	a3,a1,a5
	mv	a5,a3
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	.loc 2 482 26
	lw	a4,-116(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,80(a5)
	lw	a5,84(a5)
	.loc 2 482 8
	lw	a3,-44(s0)
	mv	a2,a5
	bltu	a3,a2,.L59
	lw	a3,-44(s0)
	mv	a2,a5
	bne	a3,a2,.L76
	lw	a3,-48(s0)
	mv	a5,a4
	bltu	a3,a5,.L59
.L76:
	.loc 2 482 51 discriminator 1
	lw	a5,-44(s0)
	srli	a6,a5,29
	li	a7,0
	.loc 2 482 36 discriminator 1
	mv	a5,a6
	or	a5,a5,a7
	beq	a5,zero,.L61
.L59:
	.loc 2 483 16
	li	a5,-20
	j	.L63
.L61:
	.loc 2 486 17
	lw	a4,-116(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,80(a5)
	lw	a5,84(a5)
	.loc 2 486 27
	mv	a5,a4
	.loc 2 486 12
	andi	a5,a5,15
	sw	a5,-52(s0)
	.loc 2 487 7
	lw	a5,-120(s0)
	sw	a5,-36(s0)
	.loc 2 489 8
	lw	a5,-52(s0)
	beq	a5,zero,.L64
	.loc 2 490 17
	li	a4,16
	lw	a5,-52(s0)
	sub	a5,a4,a5
	sw	a5,-40(s0)
	.loc 2 491 12
	lw	a4,-40(s0)
	lw	a5,-124(s0)
	bleu	a4,a5,.L65
	.loc 2 492 21
	lw	a5,-124(s0)
	sw	a5,-40(s0)
.L65:
	.loc 2 495 21
	lw	a4,-116(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a4,a4,a5
	.loc 2 495 9
	lw	a5,-52(s0)
	add	a4,a4,a5
	.loc 2 495 40
	lw	a3,-116(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a3,a3,a5
	.loc 2 495 9
	lw	a5,-52(s0)
	add	a5,a3,a5
	sw	a4,-56(s0)
	sw	a5,-60(s0)
	lw	a5,-36(s0)
	sw	a5,-64(s0)
	lw	a5,-40(s0)
	sw	a5,-68(s0)
.LBB70:
.LBB71:
	.loc 4 191 12
	sw	zero,-72(s0)
	.loc 4 234 5
	j	.L66
.L67:
	.loc 4 235 17
	lw	a4,-60(s0)
	lw	a5,-72(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 4 235 24
	lw	a4,-64(s0)
	lw	a5,-72(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 4 235 10
	lw	a2,-56(s0)
	lw	a5,-72(s0)
	add	a5,a2,a5
	.loc 4 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 4 234 20 discriminator 2
	lw	a5,-72(s0)
	addi	a5,a5,1
	sw	a5,-72(s0)
.L66:
	.loc 4 234 14 discriminator 1
	lw	a4,-68(s0)
	lw	a5,-72(s0)
	bgtu	a4,a5,.L67
	.loc 4 237 1
	nop
.LBE71:
.LBE70:
	.loc 2 497 20
	lw	a4,-52(s0)
	lw	a5,-40(s0)
	add	a4,a4,a5
	.loc 2 497 12
	li	a5,16
	bne	a4,a5,.L68
	.loc 2 498 30
	lw	a4,-116(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a3,a4,a5
	.loc 2 498 40
	lw	a4,-116(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a5,a4,a5
	.loc 2 498 13
	mv	a2,a5
	mv	a1,a3
	lw	a0,-116(s0)
	call	gcm_mult
.L68:
	.loc 2 501 12
	lw	a4,-116(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,80(a5)
	lw	a5,84(a5)
	.loc 2 501 22
	lw	a3,-40(s0)
	mv	s4,a3
	li	s5,0
	add	a2,a4,s4
	mv	a1,a2
	sltu	a1,a1,a4
	add	a3,a5,s5
	add	a5,a1,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	lw	a2,-116(s0)
	li	a3,4096
	add	a3,a2,a3
	sw	a4,80(a3)
	sw	a5,84(a3)
	.loc 2 502 17
	lw	a4,-124(s0)
	lw	a5,-40(s0)
	sub	a5,a4,a5
	sw	a5,-124(s0)
	.loc 2 503 11
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
.L64:
	.loc 2 506 8
	lw	a4,-116(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,80(a5)
	lw	a5,84(a5)
	.loc 2 506 18
	lw	a3,-124(s0)
	mv	s2,a3
	li	s3,0
	add	a2,a4,s2
	mv	a1,a2
	sltu	a1,a1,a4
	add	a3,a5,s3
	add	a5,a1,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	lw	a2,-116(s0)
	li	a3,4096
	add	a3,a2,a3
	sw	a4,80(a3)
	sw	a5,84(a3)
	.loc 2 508 11
	j	.L69
.L72:
	.loc 2 509 24
	lw	a4,-116(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a4,a4,a5
	.loc 2 509 34
	lw	a3,-116(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a5,a3,a5
	sw	a4,-76(s0)
	sw	a5,-80(s0)
	lw	a5,-36(s0)
	sw	a5,-84(s0)
	li	a5,16
	sw	a5,-88(s0)
.LBB72:
.LBB73:
	.loc 4 191 12
	sw	zero,-92(s0)
	.loc 4 234 5
	j	.L70
.L71:
	.loc 4 235 17
	lw	a4,-80(s0)
	lw	a5,-92(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 4 235 24
	lw	a4,-84(s0)
	lw	a5,-92(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 4 235 10
	lw	a2,-76(s0)
	lw	a5,-92(s0)
	add	a5,a2,a5
	.loc 4 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 4 234 20 discriminator 2
	lw	a5,-92(s0)
	addi	a5,a5,1
	sw	a5,-92(s0)
.L70:
	.loc 4 234 14 discriminator 1
	lw	a4,-88(s0)
	lw	a5,-92(s0)
	bgtu	a4,a5,.L71
	.loc 4 237 1
	nop
.LBE73:
.LBE72:
	.loc 2 511 26
	lw	a4,-116(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a3,a4,a5
	.loc 2 511 36
	lw	a4,-116(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a5,a4,a5
	.loc 2 511 9
	mv	a2,a5
	mv	a1,a3
	lw	a0,-116(s0)
	call	gcm_mult
	.loc 2 513 17
	lw	a5,-124(s0)
	addi	a5,a5,-16
	sw	a5,-124(s0)
	.loc 2 514 11
	lw	a5,-36(s0)
	addi	a5,a5,16
	sw	a5,-36(s0)
.L69:
	.loc 2 508 20
	lw	a4,-124(s0)
	li	a5,15
	bgtu	a4,a5,.L72
	.loc 2 517 8
	lw	a5,-124(s0)
	beq	a5,zero,.L73
	.loc 2 518 24
	lw	a4,-116(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a4,a4,a5
	.loc 2 518 34
	lw	a3,-116(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a5,a3,a5
	sw	a4,-96(s0)
	sw	a5,-100(s0)
	lw	a5,-36(s0)
	sw	a5,-104(s0)
	lw	a5,-124(s0)
	sw	a5,-108(s0)
.LBB74:
.LBB75:
	.loc 4 191 12
	sw	zero,-112(s0)
	.loc 4 234 5
	j	.L74
.L75:
	.loc 4 235 17
	lw	a4,-100(s0)
	lw	a5,-112(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 4 235 24
	lw	a4,-104(s0)
	lw	a5,-112(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 4 235 10
	lw	a2,-96(s0)
	lw	a5,-112(s0)
	add	a5,a2,a5
	.loc 4 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 4 234 20 discriminator 2
	lw	a5,-112(s0)
	addi	a5,a5,1
	sw	a5,-112(s0)
.L74:
	.loc 4 234 14 discriminator 1
	lw	a4,-108(s0)
	lw	a5,-112(s0)
	bgtu	a4,a5,.L75
	.loc 4 237 1
	nop
.L73:
.LBE75:
.LBE74:
	.loc 2 521 12
	li	a5,0
.L63:
	.loc 2 522 1
	mv	a0,a5
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	lw	s2,116(sp)
	.cfi_restore 18
	lw	s3,112(sp)
	.cfi_restore 19
	lw	s4,108(sp)
	.cfi_restore 20
	lw	s5,104(sp)
	.cfi_restore 21
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	mbedtls_gcm_update_ad, .-mbedtls_gcm_update_ad
	.section	.text.gcm_incr,"ax",@progbits
	.align	1
	.type	gcm_incr, @function
gcm_incr:
.LFB39:
	.loc 2 526 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	.loc 2 527 119
	lw	a5,-52(s0)
	addi	a5,a5,12
	sw	a5,-24(s0)
.LBB76:
.LBB77:
	.loc 3 174 33
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	.loc 3 175 7
	lw	a5,-28(s0)
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
	sw	a5,-32(s0)
	.loc 3 179 12
	lw	a5,-32(s0)
.LBE77:
.LBE76:
	.loc 2 527 66 discriminator 1
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	sw	a5,-20(s0)
	.loc 2 528 6
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 2 529 116 discriminator 2
	lw	a5,-52(s0)
	addi	s1,a5,12
	.loc 2 529 124 discriminator 2
	lw	a0,-20(s0)
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-36(s0)
	sw	a5,-40(s0)
.LBB78:
.LBB79:
	.loc 3 200 33
	lw	a5,-36(s0)
	sw	a5,-44(s0)
	.loc 3 201 12
	lw	a5,-44(s0)
	lw	a4,-40(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-40(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-40(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-40(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 3 205 1
	nop
.LBE79:
.LBE78:
	.loc 2 530 1
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE39:
	.size	gcm_incr, .-gcm_incr
	.section	.text.gcm_mask,"ax",@progbits
	.align	1
	.type	gcm_mask, @function
gcm_mask:
.LFB40:
	.loc 2 539 1
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
	.loc 2 540 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 545 12
	sw	zero,-84(s0)
	.loc 2 546 11
	lw	a0,-100(s0)
	.loc 2 546 54
	lw	a4,-100(s0)
	li	a5,4096
	addi	a5,a5,104
	add	a5,a4,a5
	.loc 2 546 11
	addi	a4,s0,-84
	lw	a3,-104(s0)
	li	a2,16
	mv	a1,a5
	call	mbedtls_cipher_update
	sw	a0,-20(s0)
	.loc 2 548 8
	lw	a5,-20(s0)
	beq	a5,zero,.L80
	.loc 2 549 9
	li	a1,16
	lw	a0,-104(s0)
	call	mbedtls_platform_zeroize
	.loc 2 550 16
	lw	a5,-20(s0)
	j	.L90
.L80:
	.loc 2 553 12
	lw	a4,-100(s0)
	li	a5,4096
	add	a5,a4,a5
	lbu	a5,136(a5)
	.loc 2 553 8
	bne	a5,zero,.L82
	.loc 2 554 21
	lw	a4,-100(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a4,a4,a5
	.loc 2 554 9
	lw	a5,-108(s0)
	add	a4,a4,a5
	.loc 2 554 40
	lw	a3,-100(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a3,a3,a5
	.loc 2 554 9
	lw	a5,-108(s0)
	add	a5,a3,a5
	sw	a4,-24(s0)
	sw	a5,-28(s0)
	lw	a5,-116(s0)
	sw	a5,-32(s0)
	lw	a5,-112(s0)
	sw	a5,-36(s0)
.LBB80:
.LBB81:
	.loc 4 191 12
	sw	zero,-40(s0)
	.loc 4 234 5
	j	.L83
.L84:
	.loc 4 235 17
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 4 235 24
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 4 235 10
	lw	a2,-24(s0)
	lw	a5,-40(s0)
	add	a5,a2,a5
	.loc 4 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 4 234 20 discriminator 2
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
.L83:
	.loc 4 234 14 discriminator 1
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	bgtu	a4,a5,.L84
	.loc 4 237 1
	nop
.L82:
.LBE81:
.LBE80:
	.loc 2 556 30
	lw	a4,-104(s0)
	lw	a5,-108(s0)
	add	a5,a4,a5
	lw	a4,-120(s0)
	sw	a4,-44(s0)
	sw	a5,-48(s0)
	lw	a5,-116(s0)
	sw	a5,-52(s0)
	lw	a5,-112(s0)
	sw	a5,-56(s0)
.LBB82:
.LBB83:
	.loc 4 191 12
	sw	zero,-60(s0)
	.loc 4 234 5
	j	.L85
.L86:
	.loc 4 235 17
	lw	a4,-48(s0)
	lw	a5,-60(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 4 235 24
	lw	a4,-52(s0)
	lw	a5,-60(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 4 235 10
	lw	a2,-44(s0)
	lw	a5,-60(s0)
	add	a5,a2,a5
	.loc 4 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 4 234 20 discriminator 2
	lw	a5,-60(s0)
	addi	a5,a5,1
	sw	a5,-60(s0)
.L85:
	.loc 4 234 14 discriminator 1
	lw	a4,-56(s0)
	lw	a5,-60(s0)
	bgtu	a4,a5,.L86
	.loc 4 237 1
	nop
.LBE83:
.LBE82:
	.loc 2 557 12
	lw	a4,-100(s0)
	li	a5,4096
	add	a5,a4,a5
	lbu	a4,136(a5)
	.loc 2 557 8
	li	a5,1
	bne	a4,a5,.L87
	.loc 2 558 21
	lw	a4,-100(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a4,a4,a5
	.loc 2 558 9
	lw	a5,-108(s0)
	add	a4,a4,a5
	.loc 2 558 40
	lw	a3,-100(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a3,a3,a5
	.loc 2 558 9
	lw	a5,-108(s0)
	add	a5,a3,a5
	sw	a4,-64(s0)
	sw	a5,-68(s0)
	lw	a5,-120(s0)
	sw	a5,-72(s0)
	lw	a5,-112(s0)
	sw	a5,-76(s0)
.LBB84:
.LBB85:
	.loc 4 191 12
	sw	zero,-80(s0)
	.loc 4 234 5
	j	.L88
.L89:
	.loc 4 235 17
	lw	a4,-68(s0)
	lw	a5,-80(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 4 235 24
	lw	a4,-72(s0)
	lw	a5,-80(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 4 235 10
	lw	a2,-64(s0)
	lw	a5,-80(s0)
	add	a5,a2,a5
	.loc 4 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 4 234 20 discriminator 2
	lw	a5,-80(s0)
	addi	a5,a5,1
	sw	a5,-80(s0)
.L88:
	.loc 4 234 14 discriminator 1
	lw	a4,-76(s0)
	lw	a5,-80(s0)
	bgtu	a4,a5,.L89
	.loc 4 237 1
	nop
.L87:
.LBE85:
.LBE84:
	.loc 2 561 12
	li	a5,0
.L90:
	.loc 2 562 1
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
.LFE40:
	.size	gcm_mask, .-gcm_mask
	.section	.text.mbedtls_gcm_update,"ax",@progbits
	.align	1
	.globl	mbedtls_gcm_update
	.type	mbedtls_gcm_update, @function
mbedtls_gcm_update:
.LFB41:
	.loc 2 568 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s2,100(sp)
	sw	s3,96(sp)
	sw	s4,92(sp)
	sw	s5,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	sw	a4,-100(s0)
	sw	a5,-104(s0)
	.loc 2 569 9
	li	a5,-110
	sw	a5,-48(s0)
	.loc 2 570 26
	lw	a5,-88(s0)
	sw	a5,-36(s0)
	.loc 2 571 20
	lw	a5,-96(s0)
	sw	a5,-40(s0)
	.loc 2 573 19
	sw	zero,-68(s0)
	sw	zero,-64(s0)
	sw	zero,-60(s0)
	sw	zero,-56(s0)
	.loc 2 575 8
	lw	a4,-100(s0)
	lw	a5,-92(s0)
	bgeu	a4,a5,.L92
	.loc 2 576 16
	li	a5,-22
	j	.L110
.L92:
	.loc 2 578 20
	lw	a5,-104(s0)
	lw	a4,-92(s0)
	sw	a4,0(a5)
	.loc 2 584 8
	lw	a5,-92(s0)
	bne	a5,zero,.L94
	.loc 2 585 16
	li	a5,0
	j	.L110
.L94:
	.loc 2 588 8
	lw	a4,-96(s0)
	lw	a5,-88(s0)
	bleu	a4,a5,.L95
	.loc 2 588 44 discriminator 1
	lw	a4,-96(s0)
	lw	a5,-88(s0)
	sub	a5,a4,a5
	.loc 2 588 27 discriminator 1
	mv	a4,a5
	.loc 2 588 24 discriminator 1
	lw	a5,-92(s0)
	bleu	a5,a4,.L95
	.loc 2 589 16
	li	a5,-20
	j	.L110
.L95:
	.loc 2 594 12
	lw	a4,-84(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,72(a5)
	lw	a5,76(a5)
	.loc 2 594 18
	lw	a3,-92(s0)
	mv	t3,a3
	li	t4,0
	add	a2,a4,t3
	mv	a1,a2
	sltu	a1,a1,a4
	add	a3,a5,t4
	add	a5,a1,a3
	mv	a3,a5
	.loc 2 594 38
	lw	a4,-84(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,72(a5)
	lw	a5,76(a5)
	.loc 2 594 8
	mv	a0,a5
	mv	a1,a3
	bgtu	a0,a1,.L96
	mv	a0,a5
	mv	a1,a3
	bne	a0,a1,.L111
	mv	a5,a2
	bgtu	a4,a5,.L96
.L111:
	.loc 2 595 23
	lw	a4,-84(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,72(a5)
	lw	a5,76(a5)
	.loc 2 595 29
	lw	a3,-92(s0)
	mv	t1,a3
	li	t2,0
	add	a2,a4,t1
	mv	a1,a2
	sltu	a1,a1,a4
	add	a3,a5,t2
	add	a5,a1,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	.loc 2 594 44 discriminator 1
	mv	a2,a5
	li	a3,15
	bgtu	a2,a3,.L96
	mv	a2,a5
	li	a3,15
	bne	a2,a3,.L98
	li	a5,-32
	bleu	a4,a5,.L98
.L96:
	.loc 2 596 16
	li	a5,-20
	j	.L110
.L98:
	.loc 2 599 12
	lw	a4,-84(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a2,72(a5)
	lw	a3,76(a5)
	.loc 2 599 8
	mv	a5,a2
	or	a5,a5,a3
	bne	a5,zero,.L100
	.loc 2 599 29 discriminator 1
	lw	a4,-84(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,80(a5)
	lw	a5,84(a5)
	.loc 2 599 39 discriminator 1
	andi	a6,a4,15
	andi	a7,a5,0
	.loc 2 599 23 discriminator 1
	mv	a5,a6
	or	a5,a5,a7
	beq	a5,zero,.L100
	.loc 2 600 26
	lw	a4,-84(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a3,a4,a5
	.loc 2 600 36
	lw	a4,-84(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a5,a4,a5
	.loc 2 600 9
	mv	a2,a5
	mv	a1,a3
	lw	a0,-84(s0)
	call	gcm_mult
.L100:
	.loc 2 603 17
	lw	a4,-84(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,72(a5)
	lw	a5,76(a5)
	.loc 2 603 23
	mv	a5,a4
	.loc 2 603 12
	andi	a5,a5,15
	sw	a5,-52(s0)
	.loc 2 604 8
	lw	a5,-52(s0)
	beq	a5,zero,.L102
.LBB86:
	.loc 2 605 16
	li	a4,16
	lw	a5,-52(s0)
	sub	a5,a4,a5
	sw	a5,-44(s0)
	.loc 2 606 12
	lw	a4,-44(s0)
	lw	a5,-92(s0)
	bleu	a4,a5,.L103
	.loc 2 607 21
	lw	a5,-92(s0)
	sw	a5,-44(s0)
.L103:
	.loc 2 610 20
	addi	a1,s0,-68
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-44(s0)
	lw	a2,-52(s0)
	lw	a0,-84(s0)
	call	gcm_mask
	sw	a0,-48(s0)
	.loc 2 610 12 discriminator 1
	lw	a5,-48(s0)
	beq	a5,zero,.L104
	.loc 2 611 20
	lw	a5,-48(s0)
	j	.L110
.L104:
	.loc 2 614 20
	lw	a4,-52(s0)
	lw	a5,-44(s0)
	add	a4,a4,a5
	.loc 2 614 12
	li	a5,16
	bne	a4,a5,.L105
	.loc 2 615 30
	lw	a4,-84(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a3,a4,a5
	.loc 2 615 40
	lw	a4,-84(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a5,a4,a5
	.loc 2 615 13
	mv	a2,a5
	mv	a1,a3
	lw	a0,-84(s0)
	call	gcm_mult
.L105:
	.loc 2 618 12
	lw	a4,-84(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,72(a5)
	lw	a5,76(a5)
	.loc 2 618 18
	lw	a3,-44(s0)
	mv	s4,a3
	li	s5,0
	add	a2,a4,s4
	mv	a1,a2
	sltu	a1,a1,a4
	add	a3,a5,s5
	add	a5,a1,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	lw	a2,-84(s0)
	li	a3,4096
	add	a3,a2,a3
	sw	a4,72(a3)
	sw	a5,76(a3)
	.loc 2 619 22
	lw	a4,-92(s0)
	lw	a5,-44(s0)
	sub	a5,a4,a5
	sw	a5,-92(s0)
	.loc 2 620 11
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 2 621 15
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
.L102:
.LBE86:
	.loc 2 624 8
	lw	a4,-84(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,72(a5)
	lw	a5,76(a5)
	.loc 2 624 14
	lw	a3,-92(s0)
	mv	s2,a3
	li	s3,0
	add	a2,a4,s2
	mv	a1,a2
	sltu	a1,a1,a4
	add	a3,a5,s3
	add	a5,a1,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	lw	a2,-84(s0)
	li	a3,4096
	add	a3,a2,a3
	sw	a4,72(a3)
	sw	a5,76(a3)
	.loc 2 626 11
	j	.L106
.L108:
	.loc 2 627 21
	lw	a4,-84(s0)
	li	a5,4096
	addi	a5,a5,104
	add	a5,a4,a5
	.loc 2 627 9
	mv	a0,a5
	call	gcm_incr
	.loc 2 628 20
	addi	a1,s0,-68
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	li	a3,16
	li	a2,0
	lw	a0,-84(s0)
	call	gcm_mask
	sw	a0,-48(s0)
	.loc 2 628 12 discriminator 1
	lw	a5,-48(s0)
	beq	a5,zero,.L107
	.loc 2 629 20
	lw	a5,-48(s0)
	j	.L110
.L107:
	.loc 2 632 26
	lw	a4,-84(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a3,a4,a5
	.loc 2 632 36
	lw	a4,-84(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a5,a4,a5
	.loc 2 632 9
	mv	a2,a5
	mv	a1,a3
	lw	a0,-84(s0)
	call	gcm_mult
	.loc 2 634 22
	lw	a5,-92(s0)
	addi	a5,a5,-16
	sw	a5,-92(s0)
	.loc 2 635 11
	lw	a5,-36(s0)
	addi	a5,a5,16
	sw	a5,-36(s0)
	.loc 2 636 15
	lw	a5,-40(s0)
	addi	a5,a5,16
	sw	a5,-40(s0)
.L106:
	.loc 2 626 25
	lw	a4,-92(s0)
	li	a5,15
	bgtu	a4,a5,.L108
	.loc 2 639 8
	lw	a5,-92(s0)
	beq	a5,zero,.L109
	.loc 2 640 21
	lw	a4,-84(s0)
	li	a5,4096
	addi	a5,a5,104
	add	a5,a4,a5
	.loc 2 640 9
	mv	a0,a5
	call	gcm_incr
	.loc 2 641 20
	addi	a1,s0,-68
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-92(s0)
	li	a2,0
	lw	a0,-84(s0)
	call	gcm_mask
	sw	a0,-48(s0)
	.loc 2 641 12 discriminator 1
	lw	a5,-48(s0)
	beq	a5,zero,.L109
	.loc 2 642 20
	lw	a5,-48(s0)
	j	.L110
.L109:
	.loc 2 646 5
	addi	a5,s0,-68
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 2 647 12
	li	a5,0
.L110:
	.loc 2 648 1
	mv	a0,a5
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	lw	s2,100(sp)
	.cfi_restore 18
	lw	s3,96(sp)
	.cfi_restore 19
	lw	s4,92(sp)
	.cfi_restore 20
	lw	s5,88(sp)
	.cfi_restore 21
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE41:
	.size	mbedtls_gcm_update, .-mbedtls_gcm_update
	.section	.text.mbedtls_gcm_finish,"ax",@progbits
	.align	1
	.globl	mbedtls_gcm_finish
	.type	mbedtls_gcm_finish, @function
mbedtls_gcm_finish:
.LFB42:
	.loc 2 654 1
	.cfi_startproc
	addi	sp,sp,-208
	.cfi_def_cfa_offset 208
	sw	ra,204(sp)
	sw	s0,200(sp)
	sw	s1,196(sp)
	sw	s2,192(sp)
	sw	s3,188(sp)
	sw	s4,184(sp)
	sw	s5,180(sp)
	sw	s6,176(sp)
	sw	s7,172(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	addi	s0,sp,208
	.cfi_def_cfa 8, 0
	sw	a0,-180(s0)
	sw	a1,-184(s0)
	sw	a2,-188(s0)
	sw	a3,-192(s0)
	sw	a4,-196(s0)
	sw	a5,-200(s0)
	.loc 2 663 20
	lw	a5,-192(s0)
	sw	zero,0(a5)
	.loc 2 668 19
	lw	a4,-180(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,72(a5)
	lw	a5,76(a5)
	.loc 2 668 14
	srli	a3,a4,29
	slli	a2,a5,3
	add	a3,a2,a3
	sw	a3,-52(s0)
	slli	a5,a4,3
	sw	a5,-56(s0)
	.loc 2 669 23
	lw	a4,-180(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,80(a5)
	lw	a5,84(a5)
	.loc 2 669 18
	srli	a3,a4,29
	slli	a2,a5,3
	add	a3,a2,a3
	sw	a3,-60(s0)
	slli	a5,a4,3
	sw	a5,-64(s0)
	.loc 2 671 12
	lw	a4,-180(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a2,72(a5)
	lw	a3,76(a5)
	.loc 2 671 8
	mv	a5,a2
	or	a5,a5,a3
	bne	a5,zero,.L113
	.loc 2 671 29 discriminator 1
	lw	a4,-180(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,80(a5)
	lw	a5,84(a5)
	.loc 2 671 39 discriminator 1
	andi	a6,a4,15
	andi	a7,a5,0
	.loc 2 671 23 discriminator 1
	mv	a5,a6
	or	a5,a5,a7
	beq	a5,zero,.L113
	.loc 2 672 26
	lw	a4,-180(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a3,a4,a5
	.loc 2 672 36
	lw	a4,-180(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a5,a4,a5
	.loc 2 672 9
	mv	a2,a5
	mv	a1,a3
	lw	a0,-180(s0)
	call	gcm_mult
.L113:
	.loc 2 675 8
	lw	a4,-200(s0)
	li	a5,16
	bgtu	a4,a5,.L115
	.loc 2 675 22 discriminator 1
	lw	a4,-200(s0)
	li	a5,3
	bgtu	a4,a5,.L116
.L115:
	.loc 2 676 16
	li	a5,-20
	j	.L127
.L116:
	.loc 2 679 12
	lw	a4,-180(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,72(a5)
	lw	a5,76(a5)
	.loc 2 679 18
	andi	s2,a4,15
	andi	s3,a5,0
	.loc 2 679 8
	mv	a5,s2
	or	a5,a5,s3
	beq	a5,zero,.L118
	.loc 2 680 26
	lw	a4,-180(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a3,a4,a5
	.loc 2 680 36
	lw	a4,-180(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a5,a4,a5
	.loc 2 680 9
	mv	a2,a5
	mv	a1,a3
	lw	a0,-180(s0)
	call	gcm_mult
.L118:
	.loc 2 683 20
	lw	a4,-180(s0)
	li	a5,4096
	addi	a5,a5,88
	add	a5,a4,a5
	.loc 2 683 5
	lw	a2,-200(s0)
	mv	a1,a5
	lw	a0,-196(s0)
	call	memcpy
	.loc 2 685 8
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	or	a5,a5,a4
	bne	a5,zero,.L120
	.loc 2 685 18 discriminator 1
	lw	a5,-64(s0)
	lw	a4,-60(s0)
	or	a5,a5,a4
	beq	a5,zero,.L121
.L120:
	.loc 2 686 9
	addi	a5,s0,-168
	li	a2,16
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 688 203 discriminator 2
	lw	a5,-60(s0)
	srli	s6,a5,0
	li	s7,0
	.loc 2 688 159 discriminator 2
	mv	a5,s6
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	mv	a4,a5
	addi	a5,s0,-168
	sw	a5,-68(s0)
	sw	a4,-72(s0)
.LBB87:
.LBB88:
	.loc 3 200 33
	lw	a5,-68(s0)
	sw	a5,-76(s0)
	.loc 3 201 12
	lw	a5,-76(s0)
	lw	a4,-72(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-72(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-72(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-72(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 3 205 1
	nop
.LBE88:
.LBE87:
	.loc 2 689 106 discriminator 2
	addi	s1,s0,-168
	addi	s1,s1,4
	.loc 2 689 153 discriminator 2
	lw	a5,-64(s0)
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-80(s0)
	sw	a5,-84(s0)
.LBB89:
.LBB90:
	.loc 3 200 33
	lw	a5,-80(s0)
	sw	a5,-88(s0)
	.loc 3 201 12
	lw	a5,-88(s0)
	lw	a4,-84(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-84(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-84(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-84(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 3 205 1
	nop
.LBE90:
.LBE89:
	.loc 2 690 108 discriminator 2
	addi	s1,s0,-168
	addi	s1,s1,8
	.loc 2 690 195 discriminator 2
	lw	a5,-52(s0)
	srli	s4,a5,0
	li	s5,0
	.loc 2 690 155 discriminator 2
	mv	a5,s4
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-92(s0)
	sw	a5,-96(s0)
.LBB91:
.LBB92:
	.loc 3 200 33
	lw	a5,-92(s0)
	sw	a5,-100(s0)
	.loc 3 201 12
	lw	a5,-100(s0)
	lw	a4,-96(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-96(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-96(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-96(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 3 205 1
	nop
.LBE92:
.LBE91:
	.loc 2 691 103 discriminator 2
	addi	s1,s0,-168
	addi	s1,s1,12
	.loc 2 691 151 discriminator 2
	lw	a5,-56(s0)
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-144(s0)
	sw	a5,-148(s0)
.LBB93:
.LBB94:
	.loc 3 200 33
	lw	a5,-144(s0)
	sw	a5,-152(s0)
	.loc 3 201 12
	lw	a5,-152(s0)
	lw	a4,-148(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-148(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-148(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-148(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 3 205 1
	nop
.LBE94:
.LBE93:
	.loc 2 693 24
	lw	a4,-180(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a4,a4,a5
	.loc 2 693 34
	lw	a3,-180(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a5,a3,a5
	sw	a4,-124(s0)
	sw	a5,-128(s0)
	addi	a5,s0,-168
	sw	a5,-132(s0)
	li	a5,16
	sw	a5,-136(s0)
.LBB95:
.LBB96:
	.loc 4 191 12
	sw	zero,-140(s0)
	.loc 4 234 5
	j	.L123
.L124:
	.loc 4 235 17
	lw	a4,-128(s0)
	lw	a5,-140(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 4 235 24
	lw	a4,-132(s0)
	lw	a5,-140(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 4 235 10
	lw	a2,-124(s0)
	lw	a5,-140(s0)
	add	a5,a2,a5
	.loc 4 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 4 234 20 discriminator 2
	lw	a5,-140(s0)
	addi	a5,a5,1
	sw	a5,-140(s0)
.L123:
	.loc 4 234 14 discriminator 1
	lw	a4,-136(s0)
	lw	a5,-140(s0)
	bgtu	a4,a5,.L124
	.loc 4 237 1
	nop
.LBE96:
.LBE95:
	.loc 2 695 26
	lw	a4,-180(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a3,a4,a5
	.loc 2 695 36
	lw	a4,-180(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a5,a4,a5
	.loc 2 695 9
	mv	a2,a5
	mv	a1,a3
	lw	a0,-180(s0)
	call	gcm_mult
	.loc 2 697 34
	lw	a4,-180(s0)
	li	a5,4096
	addi	a5,a5,120
	add	a5,a4,a5
	lw	a4,-196(s0)
	sw	a4,-104(s0)
	lw	a4,-196(s0)
	sw	a4,-108(s0)
	sw	a5,-112(s0)
	lw	a5,-200(s0)
	sw	a5,-116(s0)
.LBB97:
.LBB98:
	.loc 4 191 12
	sw	zero,-120(s0)
	.loc 4 234 5
	j	.L125
.L126:
	.loc 4 235 17
	lw	a4,-108(s0)
	lw	a5,-120(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 4 235 24
	lw	a4,-112(s0)
	lw	a5,-120(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 4 235 10
	lw	a2,-104(s0)
	lw	a5,-120(s0)
	add	a5,a2,a5
	.loc 4 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 4 234 20 discriminator 2
	lw	a5,-120(s0)
	addi	a5,a5,1
	sw	a5,-120(s0)
.L125:
	.loc 4 234 14 discriminator 1
	lw	a4,-116(s0)
	lw	a5,-120(s0)
	bgtu	a4,a5,.L126
	.loc 4 237 1
	nop
.L121:
.LBE98:
.LBE97:
	.loc 2 700 12
	li	a5,0
.L127:
	.loc 2 701 1
	mv	a0,a5
	lw	ra,204(sp)
	.cfi_restore 1
	lw	s0,200(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 208
	lw	s1,196(sp)
	.cfi_restore 9
	lw	s2,192(sp)
	.cfi_restore 18
	lw	s3,188(sp)
	.cfi_restore 19
	lw	s4,184(sp)
	.cfi_restore 20
	lw	s5,180(sp)
	.cfi_restore 21
	lw	s6,176(sp)
	.cfi_restore 22
	lw	s7,172(sp)
	.cfi_restore 23
	addi	sp,sp,208
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE42:
	.size	mbedtls_gcm_finish, .-mbedtls_gcm_finish
	.section	.text.mbedtls_gcm_crypt_and_tag,"ax",@progbits
	.align	1
	.globl	mbedtls_gcm_crypt_and_tag
	.type	mbedtls_gcm_crypt_and_tag, @function
mbedtls_gcm_crypt_and_tag:
.LFB43:
	.loc 2 714 1
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
	.loc 2 715 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 718 16
	lw	a3,-52(s0)
	lw	a2,-48(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_gcm_starts
	sw	a0,-20(s0)
	.loc 2 718 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L129
	.loc 2 719 16
	lw	a5,-20(s0)
	j	.L134
.L129:
	.loc 2 722 16
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-36(s0)
	call	mbedtls_gcm_update_ad
	sw	a0,-20(s0)
	.loc 2 722 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L131
	.loc 2 723 16
	lw	a5,-20(s0)
	j	.L134
.L131:
	.loc 2 726 16
	addi	a5,s0,-24
	lw	a4,-44(s0)
	lw	a3,0(s0)
	lw	a2,-44(s0)
	lw	a1,-64(s0)
	lw	a0,-36(s0)
	call	mbedtls_gcm_update
	sw	a0,-20(s0)
	.loc 2 726 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L132
	.loc 2 728 16
	lw	a5,-20(s0)
	j	.L134
.L132:
	.loc 2 731 16
	addi	a3,s0,-24
	lw	a5,4(s0)
	lw	a4,8(s0)
	li	a2,0
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_gcm_finish
	sw	a0,-20(s0)
	.loc 2 731 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L133
	.loc 2 732 16
	lw	a5,-20(s0)
	j	.L134
.L133:
	.loc 2 735 12
	li	a5,0
.L134:
	.loc 2 736 1
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
	.size	mbedtls_gcm_crypt_and_tag, .-mbedtls_gcm_crypt_and_tag
	.section	.text.mbedtls_gcm_auth_decrypt,"ax",@progbits
	.align	1
	.globl	mbedtls_gcm_auth_decrypt
	.type	mbedtls_gcm_auth_decrypt, @function
mbedtls_gcm_auth_decrypt:
.LFB44:
	.loc 2 748 1
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
	.loc 2 749 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 753 16
	addi	a5,s0,-40
	sw	a5,8(sp)
	lw	a5,-80(s0)
	sw	a5,4(sp)
	lw	a5,4(s0)
	sw	a5,0(sp)
	lw	a7,0(s0)
	lw	a6,-72(s0)
	lw	a5,-68(s0)
	lw	a4,-64(s0)
	lw	a3,-60(s0)
	lw	a2,-56(s0)
	li	a1,0
	lw	a0,-52(s0)
	call	mbedtls_gcm_crypt_and_tag
	sw	a0,-20(s0)
	.loc 2 753 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L136
	.loc 2 756 16
	lw	a5,-20(s0)
	j	.L139
.L136:
	.loc 2 760 12
	addi	a5,s0,-40
	lw	a2,-80(s0)
	mv	a1,a5
	lw	a0,-76(s0)
	call	mbedtls_ct_memcmp
	sw	a0,-24(s0)
	.loc 2 762 8
	lw	a5,-24(s0)
	beq	a5,zero,.L138
	.loc 2 763 9
	lw	a1,-56(s0)
	lw	a0,4(s0)
	call	mbedtls_platform_zeroize
	.loc 2 764 16
	li	a5,-18
	j	.L139
.L138:
	.loc 2 767 12
	li	a5,0
.L139:
	.loc 2 768 1
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
.LFE44:
	.size	mbedtls_gcm_auth_decrypt, .-mbedtls_gcm_auth_decrypt
	.section	.text.mbedtls_gcm_free,"ax",@progbits
	.align	1
	.globl	mbedtls_gcm_free
	.type	mbedtls_gcm_free, @function
mbedtls_gcm_free:
.LFB45:
	.loc 2 771 1
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
	.loc 2 772 8
	lw	a5,-20(s0)
	beq	a5,zero,.L143
	.loc 2 778 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_cipher_free
	.loc 2 780 5
	li	a5,4096
	addi	a1,a5,144
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
	j	.L140
.L143:
	.loc 2 773 9
	nop
.L140:
	.loc 2 781 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE45:
	.size	mbedtls_gcm_free, .-mbedtls_gcm_free
	.section	.rodata.key_index_test_data,"a"
	.align	2
	.type	key_index_test_data, @object
	.size	key_index_test_data, 24
key_index_test_data:
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.section	.rodata.key_test_data,"a"
	.align	2
	.type	key_test_data, @object
	.size	key_test_data, 64
key_test_data:
	.zero	32
	.base64	"/v/pkoZlcxxtao+UZzCDCP7/6ZKGZXMcbWqPlGcwgwg="
	.section	.rodata.iv_len_test_data,"a"
	.align	2
	.type	iv_len_test_data, @object
	.size	iv_len_test_data, 24
iv_len_test_data:
	.word	12
	.word	12
	.word	12
	.word	12
	.word	8
	.word	60
	.section	.rodata.iv_index_test_data,"a"
	.align	2
	.type	iv_index_test_data, @object
	.size	iv_index_test_data, 24
iv_index_test_data:
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	2
	.section	.rodata.iv_test_data,"a"
	.align	2
	.type	iv_test_data, @object
	.size	iv_test_data, 192
iv_test_data:
	.base64	"AAAAAAAAAAAAAAAAAA=="
	.zero	51
	.base64	"yv66vvrO263eyviIAA=="
	.zero	51
	.base64	"kxMiXfiEBuVVkJxa/1Jpqmp6lThTT32h5MMD0qMYpyjDwMlRVoCVOfzw4kKaa1JUFq7b9aDealemN7ObAA=="
	.zero	3
	.section	.rodata.add_len_test_data,"a"
	.align	2
	.type	add_len_test_data, @object
	.size	add_len_test_data, 24
add_len_test_data:
	.word	0
	.word	0
	.word	0
	.word	20
	.word	20
	.word	20
	.section	.rodata.add_index_test_data,"a"
	.align	2
	.type	add_index_test_data, @object
	.size	add_index_test_data, 24
add_index_test_data:
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.section	.rodata.additional_test_data,"a"
	.align	2
	.type	additional_test_data, @object
	.size	additional_test_data, 128
additional_test_data:
	.zero	2
	.zero	62
	.base64	"/u36zt6tvu/+7frO3q2+76ut2tIA"
	.zero	43
	.section	.rodata.pt_len_test_data,"a"
	.align	2
	.type	pt_len_test_data, @object
	.size	pt_len_test_data, 24
pt_len_test_data:
	.word	0
	.word	16
	.word	64
	.word	60
	.word	60
	.word	60
	.section	.rodata.pt_index_test_data,"a"
	.align	2
	.type	pt_index_test_data, @object
	.size	pt_index_test_data, 24
pt_index_test_data:
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.section	.rodata.pt_test_data,"a"
	.align	2
	.type	pt_test_data, @object
	.size	pt_test_data, 128
pt_test_data:
	.zero	17
	.zero	47
	.base64	"2TEyJfiEBuWlWQnFr/UmmoanqVMVNPfaLkwwPYoxinIcPAyVlWgJUy/PDiRJprUlsWrt9aoN5le6Y3s5Gq/SVQ=="
	.section	.rodata.ct_test_data,"a"
	.align	2
	.type	ct_test_data, @object
	.size	ct_test_data, 1152
ct_test_data:
	.zero	2
	.zero	62
	.base64	"A4jazmC2o5LzKMK5cbL+eAA="
	.zero	47
	.base64	"QoMewiF3dCRLciG3hNDUnOOqIS8sAqTgNcF+IymsoS4h1RSyVGaTHH2PalqshKoFG6MLOWoKrJc9WOCRRz9ZhQ=="
	.base64	"QoMewiF3dCRLciG3hNDUnOOqIS8sAqTgNcF+IymsoS4h1RSyVGaTHH2PalqshKoFG6MLOWoKrJc9WOCRAA=="
	.zero	3
	.base64	"YTU7TCgGk0p3f/UfoipHVWmbKnFPzcb4N2bl+XtsdCNzgGkA5J8ksisJdUTUiWtCSYm14eusDwfCP0WYAA=="
	.zero	3
	.base64	"jOJJmGJWFbYDoDOsoT+4lL6REqXDohGouiYqPMp+LKcB5Kmk+6Q8kMzcsoHUjHxv1ih10qykFwNMNK7lAA=="
	.zero	3
	.zero	2
	.zero	62
	.base64	"mOckfAfw/kEcJn5DhLD2AAA="
	.zero	47
	.base64	"OYDKCzwA6EHrBvrEhyonV4WeHOqm79mEYoWTtAyh4Zx9dz0AwUTFJaxhnRjISj9HGOJEiy/jJNnM2icQrK3iVg=="
	.base64	"OYDKCzwA6EHrBvrEhyonV4WeHOqm79mEYoWTtAyh4Zx9dz0AwUTFJaxhnRjISj9HGOJEiy/jJNnM2icQAA=="
	.zero	3
	.base64	"DxD1ma4UoVTtJLNuJTJNuMVmYy7yu7NPg0coD8RQcFf93CnfmkcfdcZlQdTU2tHJ6ToZpY6LRz+g8GL3AA=="
	.zero	3
	.base64	"0n6IaBzjJDxIMBZaj9z5/x3podjmtEfvbve3mChmbkWB55ASrzTd2eLwN1ibKS2z5nwDZ0X6Iufptzc7AA=="
	.zero	3
	.zero	2
	.zero	62
	.base64	"zqdAPU1ga24HTsXTuvOdGAA="
	.zero	47
	.base64	"Ui3B8JlWfQf0fzejKoRCfWQ6jNy/5cDJdZiivSVV0aqMsI5IWQ27PaewixBWgog4xfYeY5O6egq8yfZiiYAVrQ=="
	.base64	"Ui3B8JlWfQf0fzejKoRCfWQ6jNy/5cDJdZiivSVV0aqMsI5IWQ27PaewixBWgog4xfYeY5O6egq8yfZiAA=="
	.zero	3
	.base64	"w3Yt8cp4fTKuR8E78ZhEy68a4U0Ll2r6xS/315u6neD+tYLTOTSk8JVMwjY7xz94YqxDDmSr5Jn0fJsfAA=="
	.zero	3
	.base64	"Wo3vLwyeU/H3XXhTZZ4qIO6ysiqv3mQZoFirT290a/QPwMO3gPJERS2j6/HF2CzeokGJlyAO+C5Ern4/AA=="
	.zero	3
	.section	.rodata.tag_test_data,"a"
	.align	2
	.type	tag_test_data, @object
	.size	tag_test_data, 288
tag_test_data:
	.base64	"WOL8zvp+MGE2fx1XpOdFWg=="
	.base64	"q25H1CzsE731OmeyEle93w=="
	.base64	"TVwq8yfNZKYs81q9K6b6tA=="
	.base64	"W8lPvDIhpduU+ula5xIaRw=="
	.base64	"NhLS5547B4VWG+FKrKL8yw=="
	.base64	"YZzFrv/+C/pGKvQ8FpnQUA=="
	.base64	"zTOyisdz90ugDtHzElckNQ=="
	.base64	"L/WNgAM5J6uO9NRYdRTw+w=="
	.base64	"mSSnyFhzNr+xGAJNuGdKFA=="
	.base64	"JRlJjoDxR483ulW9bSdhjA=="
	.base64	"ZdzFf89iOiQJT8ykDTUz+A=="
	.base64	"3PVm/ykcJbu4Vo/D03am2Q=="
	.base64	"Uw+K+8dFNrmpY7TxxMtziw=="
	.base64	"0NHIp5mZa/AmW5i11Iq5GQ=="
	.base64	"sJTaxdk0cb3sGlAicOPMbA=="
	.base64	"dvxuzg9OF2jN34hTuy1VGw=="
	.base64	"OjN9v0anksReRUkT/i6o8g=="
	.base64	"pEqCZu4cjrDItdTPWunxmg=="
	.section	.rodata
	.align	2
.LC0:
	.string	"  GCM note: built-in implementation.\n"
	.align	2
.LC1:
	.string	"enc"
	.align	2
.LC2:
	.string	"  AES-GCM-%3d #%d (%s): "
	.align	2
.LC3:
	.string	"skipped\n"
	.align	2
.LC4:
	.string	"passed\n"
	.align	2
.LC5:
	.string	"dec"
	.align	2
.LC6:
	.string	"  AES-GCM-%3d #%d split (%s): "
	.align	2
.LC7:
	.string	"\n"
	.align	2
.LC8:
	.string	"failed\n"
	.section	.text.mbedtls_gcm_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_gcm_self_test
	.type	mbedtls_gcm_self_test, @function
mbedtls_gcm_self_test:
.LFB46:
	.loc 2 1018 1
	.cfi_startproc
	addi	sp,sp,-320
	.cfi_def_cfa_offset 320
	sw	ra,316(sp)
	sw	s0,312(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,320
	.cfi_def_cfa 8, 0
	addi	sp,sp,-2048
	addi	sp,sp,-2048
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a0,-276(a5)
	.loc 2 1023 25
	li	a5,2
	sb	a5,-29(s0)
	.loc 2 1026 8
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-276(a5)
	beq	a5,zero,.L145
	.loc 2 1042 9
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
.L145:
	.loc 2 1049 12
	sw	zero,-24(s0)
	.loc 2 1049 5
	j	.L146
.L192:
.LBB99:
	.loc 2 1050 27
	lw	a5,-24(s0)
	addi	a5,a5,2
	.loc 2 1050 13
	slli	a5,a5,6
	sw	a5,-36(s0)
	.loc 2 1052 16
	sw	zero,-20(s0)
	.loc 2 1052 9
	j	.L147
.L191:
	.loc 2 1053 16
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-276(a5)
	beq	a5,zero,.L148
	.loc 2 1054 17
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lw	a2,-20(s0)
	lw	a1,-36(s0)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L148:
	.loc 2 1058 13
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	mbedtls_gcm_init
	.loc 2 1061 71
	lui	a5,%hi(key_index_test_data)
	addi	a4,a5,%lo(key_index_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1061 51
	slli	a4,a5,5
	lui	a5,%hi(key_test_data)
	addi	a5,a5,%lo(key_test_data)
	add	a2,a4,a5
	.loc 2 1060 19
	lw	a3,-36(s0)
	lbu	a4,-29(s0)
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_gcm_setkey
	sw	a0,-28(s0)
	.loc 2 1068 16
	lw	a4,-28(s0)
	li	a5,-114
	bne	a4,a5,.L149
	.loc 2 1068 32 discriminator 1
	lw	a4,-36(s0)
	li	a5,192
	bne	a4,a5,.L149
	.loc 2 1069 17
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	.loc 2 1070 17
	j	.L150
.L149:
	.loc 2 1071 23
	lw	a5,-28(s0)
	bne	a5,zero,.L197
	.loc 2 1076 61
	lui	a5,%hi(pt_len_test_data)
	addi	a4,a5,%lo(pt_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a2,0(a5)
	.loc 2 1077 76
	lui	a5,%hi(iv_index_test_data)
	addi	a4,a5,%lo(iv_index_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1077 57
	slli	a4,a5,6
	lui	a5,%hi(iv_test_data)
	addi	a5,a5,%lo(iv_test_data)
	add	a3,a4,a5
	.loc 2 1078 61
	lui	a5,%hi(iv_len_test_data)
	addi	a4,a5,%lo(iv_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a1,0(a5)
	.loc 2 1079 85
	lui	a5,%hi(add_index_test_data)
	addi	a4,a5,%lo(add_index_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1079 65
	slli	a4,a5,6
	lui	a5,%hi(additional_test_data)
	addi	a5,a5,%lo(additional_test_data)
	add	t1,a4,a5
	.loc 2 1080 62
	lui	a5,%hi(add_len_test_data)
	addi	a4,a5,%lo(add_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a6,0(a5)
	.loc 2 1081 76
	lui	a5,%hi(pt_index_test_data)
	addi	a4,a5,%lo(pt_index_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1081 57
	slli	a4,a5,6
	lui	a5,%hi(pt_test_data)
	addi	a5,a5,%lo(pt_test_data)
	add	a4,a4,a5
	.loc 2 1075 19
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a0,a5,s0
	li	a5,-4096
	addi	a5,a5,-256
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a5,8(sp)
	li	a5,16
	sw	a5,4(sp)
	li	a5,-4096
	addi	a5,a5,-240
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a5,0(sp)
	mv	a7,a4
	mv	a5,t1
	mv	a4,a1
	li	a1,1
	call	mbedtls_gcm_crypt_and_tag
	sw	a0,-28(s0)
	.loc 2 1091 16
	lw	a5,-28(s0)
	bne	a5,zero,.L198
	.loc 2 1095 44
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	.loc 2 1095 48
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 2 1095 41
	slli	a4,a5,6
	lui	a5,%hi(ct_test_data)
	addi	a5,a5,%lo(ct_test_data)
	add	a3,a4,a5
	.loc 2 1096 40
	lui	a5,%hi(pt_len_test_data)
	addi	a4,a5,%lo(pt_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 1095 17
	li	a5,-4096
	addi	a5,a5,-240
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 2 1095 16 discriminator 1
	bne	a5,zero,.L154
	.loc 2 1097 49
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	.loc 2 1097 53
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 2 1097 46
	slli	a4,a5,4
	lui	a5,%hi(tag_test_data)
	addi	a5,a5,%lo(tag_test_data)
	add	a4,a4,a5
	.loc 2 1097 17
	li	a5,-4096
	addi	a5,a5,-256
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a2,16
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 2 1096 50
	beq	a5,zero,.L155
.L154:
	.loc 2 1098 21
	li	a5,1
	sw	a5,-28(s0)
	.loc 2 1099 17
	j	.L152
.L155:
	.loc 2 1102 13
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	mbedtls_gcm_free
	.loc 2 1104 16
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-276(a5)
	beq	a5,zero,.L156
	.loc 2 1105 17
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.L156:
	.loc 2 1108 13
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	mbedtls_gcm_init
	.loc 2 1110 16
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-276(a5)
	beq	a5,zero,.L157
	.loc 2 1111 17
	lui	a5,%hi(.LC5)
	addi	a3,a5,%lo(.LC5)
	lw	a2,-20(s0)
	lw	a1,-36(s0)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L157:
	.loc 2 1116 71
	lui	a5,%hi(key_index_test_data)
	addi	a4,a5,%lo(key_index_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1116 51
	slli	a4,a5,5
	lui	a5,%hi(key_test_data)
	addi	a5,a5,%lo(key_test_data)
	add	a2,a4,a5
	.loc 2 1115 19
	lw	a3,-36(s0)
	lbu	a4,-29(s0)
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_gcm_setkey
	sw	a0,-28(s0)
	.loc 2 1118 16
	lw	a5,-28(s0)
	bne	a5,zero,.L199
	.loc 2 1123 61
	lui	a5,%hi(pt_len_test_data)
	addi	a4,a5,%lo(pt_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a2,0(a5)
	.loc 2 1124 76
	lui	a5,%hi(iv_index_test_data)
	addi	a4,a5,%lo(iv_index_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1124 57
	slli	a4,a5,6
	lui	a5,%hi(iv_test_data)
	addi	a5,a5,%lo(iv_test_data)
	add	a3,a4,a5
	.loc 2 1125 61
	lui	a5,%hi(iv_len_test_data)
	addi	a4,a5,%lo(iv_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a1,0(a5)
	.loc 2 1126 85
	lui	a5,%hi(add_index_test_data)
	addi	a4,a5,%lo(add_index_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1126 65
	slli	a4,a5,6
	lui	a5,%hi(additional_test_data)
	addi	a5,a5,%lo(additional_test_data)
	add	t1,a4,a5
	.loc 2 1127 62
	lui	a5,%hi(add_len_test_data)
	addi	a4,a5,%lo(add_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a6,0(a5)
	.loc 2 1128 60
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	.loc 2 1128 64
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 2 1128 57
	slli	a4,a5,6
	lui	a5,%hi(ct_test_data)
	addi	a5,a5,%lo(ct_test_data)
	add	a4,a4,a5
	.loc 2 1122 19
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a0,a5,s0
	li	a5,-4096
	addi	a5,a5,-256
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a5,8(sp)
	li	a5,16
	sw	a5,4(sp)
	li	a5,-4096
	addi	a5,a5,-240
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a5,0(sp)
	mv	a7,a4
	mv	a5,t1
	mv	a4,a1
	li	a1,0
	call	mbedtls_gcm_crypt_and_tag
	sw	a0,-28(s0)
	.loc 2 1130 16
	lw	a5,-28(s0)
	bne	a5,zero,.L200
	.loc 2 1134 60
	lui	a5,%hi(pt_index_test_data)
	addi	a4,a5,%lo(pt_index_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1134 41
	slli	a4,a5,6
	lui	a5,%hi(pt_test_data)
	addi	a5,a5,%lo(pt_test_data)
	add	a3,a4,a5
	.loc 2 1135 40
	lui	a5,%hi(pt_len_test_data)
	addi	a4,a5,%lo(pt_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 1134 17
	li	a5,-4096
	addi	a5,a5,-240
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 2 1134 16 discriminator 1
	bne	a5,zero,.L160
	.loc 2 1136 49
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	.loc 2 1136 53
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 2 1136 46
	slli	a4,a5,4
	lui	a5,%hi(tag_test_data)
	addi	a5,a5,%lo(tag_test_data)
	add	a4,a4,a5
	.loc 2 1136 17
	li	a5,-4096
	addi	a5,a5,-256
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a2,16
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 2 1135 50
	beq	a5,zero,.L161
.L160:
	.loc 2 1137 21
	li	a5,1
	sw	a5,-28(s0)
	.loc 2 1138 17
	j	.L152
.L161:
	.loc 2 1141 13
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	mbedtls_gcm_free
	.loc 2 1143 16
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-276(a5)
	beq	a5,zero,.L162
	.loc 2 1144 17
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.L162:
	.loc 2 1147 13
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	mbedtls_gcm_init
	.loc 2 1149 16
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-276(a5)
	beq	a5,zero,.L163
	.loc 2 1150 17
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lw	a2,-20(s0)
	lw	a1,-36(s0)
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
.L163:
	.loc 2 1155 71
	lui	a5,%hi(key_index_test_data)
	addi	a4,a5,%lo(key_index_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1155 51
	slli	a4,a5,5
	lui	a5,%hi(key_test_data)
	addi	a5,a5,%lo(key_test_data)
	add	a2,a4,a5
	.loc 2 1154 19
	lw	a3,-36(s0)
	lbu	a4,-29(s0)
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_gcm_setkey
	sw	a0,-28(s0)
	.loc 2 1157 16
	lw	a5,-28(s0)
	bne	a5,zero,.L201
	.loc 2 1162 69
	lui	a5,%hi(iv_index_test_data)
	addi	a4,a5,%lo(iv_index_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1162 50
	slli	a4,a5,6
	lui	a5,%hi(iv_test_data)
	addi	a5,a5,%lo(iv_test_data)
	add	a2,a4,a5
	.loc 2 1163 54
	lui	a5,%hi(iv_len_test_data)
	addi	a4,a5,%lo(iv_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 1161 19
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a3,a4
	li	a1,1
	mv	a0,a5
	call	mbedtls_gcm_starts
	sw	a0,-28(s0)
	.loc 2 1164 16
	lw	a5,-28(s0)
	bne	a5,zero,.L202
	.loc 2 1169 81
	lui	a5,%hi(add_index_test_data)
	addi	a4,a5,%lo(add_index_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1169 61
	slli	a4,a5,6
	lui	a5,%hi(additional_test_data)
	addi	a5,a5,%lo(additional_test_data)
	add	a3,a4,a5
	.loc 2 1170 58
	lui	a5,%hi(add_len_test_data)
	addi	a4,a5,%lo(add_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 1168 19
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	mbedtls_gcm_update_ad
	sw	a0,-28(s0)
	.loc 2 1171 16
	lw	a5,-28(s0)
	bne	a5,zero,.L203
	.loc 2 1175 33
	lui	a5,%hi(pt_len_test_data)
	addi	a4,a5,%lo(pt_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 1175 16
	li	a5,32
	bleu	a4,a5,.L167
.LBB100:
	.loc 2 1176 51
	lui	a5,%hi(pt_len_test_data)
	addi	a4,a5,%lo(pt_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1176 24
	addi	a5,a5,-32
	sw	a5,-40(s0)
	.loc 2 1178 73
	lui	a5,%hi(pt_index_test_data)
	addi	a4,a5,%lo(pt_index_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1178 54
	slli	a4,a5,6
	lui	a5,%hi(pt_test_data)
	addi	a5,a5,%lo(pt_test_data)
	add	a1,a4,a5
	.loc 2 1177 23
	li	a5,-4096
	addi	a5,a5,-260
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-240
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a0,a5,s0
	mv	a5,a4
	li	a4,64
	li	a2,32
	call	mbedtls_gcm_update
	sw	a0,-28(s0)
	.loc 2 1181 20
	lw	a5,-28(s0)
	bne	a5,zero,.L204
	.loc 2 1184 26
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-260(a5)
	.loc 2 1184 20
	li	a5,32
	bne	a4,a5,.L205
	.loc 2 1189 73
	lui	a5,%hi(pt_index_test_data)
	addi	a4,a5,%lo(pt_index_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1189 42
	slli	a4,a5,6
	lui	a5,%hi(pt_test_data)
	addi	a5,a5,%lo(pt_test_data)
	add	a5,a4,a5
	.loc 2 1188 23
	addi	a1,a5,32
	li	a5,-4096
	addi	a5,a5,-240
	addi	a5,a5,-16
	add	a3,a5,s0
	addi	a3,a3,32
	li	a5,-4096
	addi	a5,a5,-260
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a0,a5,s0
	mv	a5,a4
	li	a4,32
	lw	a2,-40(s0)
	call	mbedtls_gcm_update
	sw	a0,-28(s0)
	.loc 2 1192 20
	lw	a5,-28(s0)
	bne	a5,zero,.L206
	.loc 2 1195 26
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-260(a5)
	.loc 2 1195 20
	lw	a4,-40(s0)
	beq	a4,a5,.L171
	.loc 2 1196 21
	j	.L152
.L167:
.LBE100:
	.loc 2 1200 73
	lui	a5,%hi(pt_index_test_data)
	addi	a4,a5,%lo(pt_index_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1200 54
	slli	a4,a5,6
	lui	a5,%hi(pt_test_data)
	addi	a5,a5,%lo(pt_test_data)
	add	a1,a4,a5
	.loc 2 1201 58
	lui	a5,%hi(pt_len_test_data)
	addi	a4,a5,%lo(pt_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a2,0(a5)
	.loc 2 1199 23
	li	a5,-4096
	addi	a5,a5,-260
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-240
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a0,a5,s0
	mv	a5,a4
	li	a4,64
	call	mbedtls_gcm_update
	sw	a0,-28(s0)
	.loc 2 1203 20
	lw	a5,-28(s0)
	bne	a5,zero,.L207
	.loc 2 1206 45
	lui	a5,%hi(pt_len_test_data)
	addi	a4,a5,%lo(pt_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 1206 26
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-260(a5)
	.loc 2 1206 20
	bne	a4,a5,.L208
.L171:
	.loc 2 1211 19
	li	a5,-4096
	addi	a5,a5,-256
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-260
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a0,a5,s0
	li	a5,16
	li	a2,0
	li	a1,0
	call	mbedtls_gcm_finish
	sw	a0,-28(s0)
	.loc 2 1212 16
	lw	a5,-28(s0)
	bne	a5,zero,.L209
	.loc 2 1216 44
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	.loc 2 1216 48
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 2 1216 41
	slli	a4,a5,6
	lui	a5,%hi(ct_test_data)
	addi	a5,a5,%lo(ct_test_data)
	add	a3,a4,a5
	.loc 2 1217 40
	lui	a5,%hi(pt_len_test_data)
	addi	a4,a5,%lo(pt_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 1216 17
	li	a5,-4096
	addi	a5,a5,-240
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 2 1216 16 discriminator 1
	bne	a5,zero,.L174
	.loc 2 1218 49
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	.loc 2 1218 53
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 2 1218 46
	slli	a4,a5,4
	lui	a5,%hi(tag_test_data)
	addi	a5,a5,%lo(tag_test_data)
	add	a4,a4,a5
	.loc 2 1218 17
	li	a5,-4096
	addi	a5,a5,-256
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a2,16
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 2 1217 50
	beq	a5,zero,.L175
.L174:
	.loc 2 1219 21
	li	a5,1
	sw	a5,-28(s0)
	.loc 2 1220 17
	j	.L152
.L175:
	.loc 2 1223 13
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	mbedtls_gcm_free
	.loc 2 1225 16
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-276(a5)
	beq	a5,zero,.L176
	.loc 2 1226 17
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.L176:
	.loc 2 1229 13
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	mbedtls_gcm_init
	.loc 2 1231 16
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-276(a5)
	beq	a5,zero,.L177
	.loc 2 1232 17
	lui	a5,%hi(.LC5)
	addi	a3,a5,%lo(.LC5)
	lw	a2,-20(s0)
	lw	a1,-36(s0)
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
.L177:
	.loc 2 1237 71
	lui	a5,%hi(key_index_test_data)
	addi	a4,a5,%lo(key_index_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1237 51
	slli	a4,a5,5
	lui	a5,%hi(key_test_data)
	addi	a5,a5,%lo(key_test_data)
	add	a2,a4,a5
	.loc 2 1236 19
	lw	a3,-36(s0)
	lbu	a4,-29(s0)
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_gcm_setkey
	sw	a0,-28(s0)
	.loc 2 1239 16
	lw	a5,-28(s0)
	bne	a5,zero,.L210
	.loc 2 1244 69
	lui	a5,%hi(iv_index_test_data)
	addi	a4,a5,%lo(iv_index_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1244 50
	slli	a4,a5,6
	lui	a5,%hi(iv_test_data)
	addi	a5,a5,%lo(iv_test_data)
	add	a2,a4,a5
	.loc 2 1245 54
	lui	a5,%hi(iv_len_test_data)
	addi	a4,a5,%lo(iv_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 1243 19
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a3,a4
	li	a1,0
	mv	a0,a5
	call	mbedtls_gcm_starts
	sw	a0,-28(s0)
	.loc 2 1246 16
	lw	a5,-28(s0)
	bne	a5,zero,.L211
	.loc 2 1250 81
	lui	a5,%hi(add_index_test_data)
	addi	a4,a5,%lo(add_index_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1250 61
	slli	a4,a5,6
	lui	a5,%hi(additional_test_data)
	addi	a5,a5,%lo(additional_test_data)
	add	a3,a4,a5
	.loc 2 1251 58
	lui	a5,%hi(add_len_test_data)
	addi	a4,a5,%lo(add_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 1249 19
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	mbedtls_gcm_update_ad
	sw	a0,-28(s0)
	.loc 2 1252 16
	lw	a5,-28(s0)
	bne	a5,zero,.L212
	.loc 2 1256 33
	lui	a5,%hi(pt_len_test_data)
	addi	a4,a5,%lo(pt_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 1256 16
	li	a5,32
	bleu	a4,a5,.L181
.LBB101:
	.loc 2 1257 51
	lui	a5,%hi(pt_len_test_data)
	addi	a4,a5,%lo(pt_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1257 24
	addi	a5,a5,-32
	sw	a5,-44(s0)
	.loc 2 1259 57
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	.loc 2 1259 61
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 2 1259 54
	slli	a4,a5,6
	lui	a5,%hi(ct_test_data)
	addi	a5,a5,%lo(ct_test_data)
	add	a1,a4,a5
	.loc 2 1258 23
	li	a5,-4096
	addi	a5,a5,-260
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-240
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a0,a5,s0
	mv	a5,a4
	li	a4,64
	li	a2,32
	call	mbedtls_gcm_update
	sw	a0,-28(s0)
	.loc 2 1261 20
	lw	a5,-28(s0)
	bne	a5,zero,.L213
	.loc 2 1264 26
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-260(a5)
	.loc 2 1264 20
	li	a5,32
	bne	a4,a5,.L214
	.loc 2 1269 57
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	.loc 2 1269 61
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 2 1269 42
	slli	a4,a5,6
	lui	a5,%hi(ct_test_data)
	addi	a5,a5,%lo(ct_test_data)
	add	a5,a4,a5
	.loc 2 1268 23
	addi	a1,a5,32
	li	a5,-4096
	addi	a5,a5,-240
	addi	a5,a5,-16
	add	a3,a5,s0
	addi	a3,a3,32
	li	a5,-4096
	addi	a5,a5,-260
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a0,a5,s0
	mv	a5,a4
	li	a4,32
	lw	a2,-44(s0)
	call	mbedtls_gcm_update
	sw	a0,-28(s0)
	.loc 2 1272 20
	lw	a5,-28(s0)
	bne	a5,zero,.L215
	.loc 2 1275 26
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-260(a5)
	.loc 2 1275 20
	lw	a4,-44(s0)
	beq	a4,a5,.L185
	.loc 2 1276 21
	j	.L152
.L181:
.LBE101:
	.loc 2 1280 57
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	.loc 2 1280 61
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 2 1280 54
	slli	a4,a5,6
	lui	a5,%hi(ct_test_data)
	addi	a5,a5,%lo(ct_test_data)
	add	a1,a4,a5
	.loc 2 1281 58
	lui	a5,%hi(pt_len_test_data)
	addi	a4,a5,%lo(pt_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a2,0(a5)
	.loc 2 1279 23
	li	a5,-4096
	addi	a5,a5,-260
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-240
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a0,a5,s0
	mv	a5,a4
	li	a4,64
	call	mbedtls_gcm_update
	sw	a0,-28(s0)
	.loc 2 1283 20
	lw	a5,-28(s0)
	bne	a5,zero,.L216
	.loc 2 1286 45
	lui	a5,%hi(pt_len_test_data)
	addi	a4,a5,%lo(pt_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 1286 26
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-260(a5)
	.loc 2 1286 20
	bne	a4,a5,.L217
.L185:
	.loc 2 1291 19
	li	a5,-4096
	addi	a5,a5,-256
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-260
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a0,a5,s0
	li	a5,16
	li	a2,0
	li	a1,0
	call	mbedtls_gcm_finish
	sw	a0,-28(s0)
	.loc 2 1292 16
	lw	a5,-28(s0)
	bne	a5,zero,.L218
	.loc 2 1296 60
	lui	a5,%hi(pt_index_test_data)
	addi	a4,a5,%lo(pt_index_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1296 41
	slli	a4,a5,6
	lui	a5,%hi(pt_test_data)
	addi	a5,a5,%lo(pt_test_data)
	add	a3,a4,a5
	.loc 2 1297 40
	lui	a5,%hi(pt_len_test_data)
	addi	a4,a5,%lo(pt_len_test_data)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 1296 17
	li	a5,-4096
	addi	a5,a5,-240
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 2 1296 16 discriminator 1
	bne	a5,zero,.L188
	.loc 2 1298 49
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	.loc 2 1298 53
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 2 1298 46
	slli	a4,a5,4
	lui	a5,%hi(tag_test_data)
	addi	a5,a5,%lo(tag_test_data)
	add	a4,a4,a5
	.loc 2 1298 17
	li	a5,-4096
	addi	a5,a5,-256
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a2,16
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 2 1297 50
	beq	a5,zero,.L189
.L188:
	.loc 2 1299 21
	li	a5,1
	sw	a5,-28(s0)
	.loc 2 1300 17
	j	.L152
.L189:
	.loc 2 1303 13
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	mbedtls_gcm_free
	.loc 2 1305 16
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-276(a5)
	beq	a5,zero,.L190
	.loc 2 1306 17
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.L190:
	.loc 2 1052 29 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L147:
	.loc 2 1052 23 discriminator 1
	lw	a4,-20(s0)
	li	a5,5
	ble	a4,a5,.L191
.L150:
.LBE99:
	.loc 2 1049 34 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L146:
	.loc 2 1049 19 discriminator 1
	lui	a5,%hi(loop_limit.0)
	lw	a5,%lo(loop_limit.0)(a5)
	lw	a4,-24(s0)
	blt	a4,a5,.L192
	.loc 2 1311 8
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-276(a5)
	beq	a5,zero,.L193
	.loc 2 1312 9
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
.L193:
	.loc 2 1315 9
	sw	zero,-28(s0)
	j	.L152
.L197:
.LBB104:
	.loc 2 1072 17
	nop
	j	.L152
.L198:
	.loc 2 1092 17
	nop
	j	.L152
.L199:
	.loc 2 1119 17
	nop
	j	.L152
.L200:
	.loc 2 1131 17
	nop
	j	.L152
.L201:
	.loc 2 1158 17
	nop
	j	.L152
.L202:
	.loc 2 1165 17
	nop
	j	.L152
.L203:
	.loc 2 1172 17
	nop
	j	.L152
.L204:
.LBB102:
	.loc 2 1182 21
	nop
	j	.L152
.L205:
	.loc 2 1185 21
	nop
	j	.L152
.L206:
	.loc 2 1193 21
	nop
	j	.L152
.L207:
.LBE102:
	.loc 2 1204 21
	nop
	j	.L152
.L208:
	.loc 2 1207 21
	nop
	j	.L152
.L209:
	.loc 2 1213 17
	nop
	j	.L152
.L210:
	.loc 2 1240 17
	nop
	j	.L152
.L211:
	.loc 2 1247 17
	nop
	j	.L152
.L212:
	.loc 2 1253 17
	nop
	j	.L152
.L213:
.LBB103:
	.loc 2 1262 21
	nop
	j	.L152
.L214:
	.loc 2 1265 21
	nop
	j	.L152
.L215:
	.loc 2 1273 21
	nop
	j	.L152
.L216:
.LBE103:
	.loc 2 1284 21
	nop
	j	.L152
.L217:
	.loc 2 1287 21
	nop
	j	.L152
.L218:
	.loc 2 1293 17
	nop
.L152:
.LBE104:
	.loc 2 1318 8
	lw	a5,-28(s0)
	beq	a5,zero,.L194
	.loc 2 1319 12
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-276(a5)
	beq	a5,zero,.L195
	.loc 2 1320 13
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
.L195:
	.loc 2 1322 9
	li	a5,-4096
	addi	a5,a5,-176
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	mbedtls_gcm_free
.L194:
	.loc 2 1325 12
	lw	a5,-28(s0)
	.loc 2 1326 1
	mv	a0,a5
	li	t0,4096
	add	sp,sp,t0
	.cfi_def_cfa 2, 320
	lw	ra,316(sp)
	.cfi_restore 1
	lw	s0,312(sp)
	.cfi_restore 8
	addi	sp,sp,320
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE46:
	.size	mbedtls_gcm_self_test, .-mbedtls_gcm_self_test
	.section	.srodata.loop_limit.0,"a"
	.align	2
	.type	loop_limit.0, @object
	.size	loop_limit.0, 4
loop_limit.0:
	.word	3
	.text
.Letext0:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/gcm.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/constant_time.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x171b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x2b
	.4byte	.LASF152
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL3
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x8
	.4byte	0x32
	.uleb128 0xf
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xf
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xf
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.4byte	0x68
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xd
	.4byte	.LASF12
	.byte	0x5
	.byte	0xe5
	.byte	0x16
	.4byte	0x74
	.uleb128 0x8
	.4byte	0x7b
	.uleb128 0xf
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xd
	.4byte	.LASF13
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x8
	.4byte	0x93
	.uleb128 0xd
	.4byte	.LASF14
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.4byte	0x45
	.uleb128 0x8
	.4byte	0xa4
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x6
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x6
	.byte	0x37
	.byte	0x20
	.4byte	0x61
	.uleb128 0x8
	.4byte	0xc1
	.uleb128 0x2d
	.byte	0x4
	.uleb128 0x1d
	.4byte	0xd2
	.uleb128 0x9
	.4byte	0x32
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x8
	.4byte	0xde
	.uleb128 0x9
	.4byte	0xe5
	.uleb128 0x1d
	.4byte	0xea
	.uleb128 0x9
	.4byte	0xfe
	.uleb128 0x1d
	.4byte	0xf4
	.uleb128 0x2e
	.uleb128 0x23
	.byte	0x4
	.byte	0x59
	.4byte	0x111
	.uleb128 0x1e
	.string	"x"
	.byte	0x3
	.byte	0x5a
	.4byte	0xb5
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x3
	.byte	0x5b
	.byte	0x1b
	.4byte	0xff
	.uleb128 0x23
	.byte	0x8
	.byte	0x5c
	.4byte	0x12f
	.uleb128 0x1e
	.string	"x"
	.byte	0x3
	.byte	0x5d
	.4byte	0xc1
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x3
	.byte	0x5e
	.byte	0x1b
	.4byte	0x11d
	.uleb128 0x1f
	.byte	0x7
	.4byte	0x32
	.byte	0x42
	.4byte	0x177
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4b
	.byte	0x3
	.4byte	0x13b
	.uleb128 0x8
	.4byte	0x177
	.uleb128 0x1f
	.byte	0x7
	.4byte	0x32
	.byte	0xac
	.4byte	0x1e8
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0xbb
	.byte	0x3
	.4byte	0x188
	.uleb128 0x8
	.4byte	0x1e8
	.uleb128 0x1f
	.byte	0x5
	.4byte	0x2b
	.byte	0xc7
	.4byte	0x217
	.uleb128 0x2f
	.4byte	.LASF44
	.sleb128 -1
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x1
	.byte	0xcb
	.byte	0x3
	.4byte	0x1f9
	.uleb128 0x8
	.4byte	0x217
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x1
	.byte	0xf9
	.byte	0x27
	.4byte	0x234
	.uleb128 0x30
	.4byte	.LASF48
	.uleb128 0x24
	.4byte	.LASF57
	.byte	0x8
	.2byte	0x10a
	.4byte	0x2ae
	.uleb128 0x10
	.4byte	.LASF49
	.2byte	0x10c
	.byte	0x11
	.4byte	0xea
	.byte	0
	.uleb128 0x14
	.4byte	.LASF50
	.2byte	0x10f
	.4byte	0x74
	.byte	0x5
	.byte	0x20
	.uleb128 0x14
	.4byte	.LASF51
	.2byte	0x115
	.4byte	0x74
	.byte	0x3
	.byte	0x25
	.uleb128 0x14
	.4byte	.LASF52
	.2byte	0x11b
	.4byte	0x74
	.byte	0x4
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF53
	.2byte	0x120
	.4byte	0x74
	.byte	0x4
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF54
	.2byte	0x128
	.4byte	0x74
	.byte	0x8
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF55
	.2byte	0x12e
	.4byte	0x74
	.byte	0x2
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF56
	.2byte	0x131
	.4byte	0x74
	.byte	0x5
	.byte	0x3a
	.byte	0
	.uleb128 0x25
	.4byte	.LASF57
	.2byte	0x133
	.4byte	0x239
	.uleb128 0x8
	.4byte	0x2ae
	.uleb128 0x24
	.4byte	.LASF58
	.byte	0x44
	.2byte	0x13c
	.4byte	0x35a
	.uleb128 0x10
	.4byte	.LASF59
	.2byte	0x13e
	.byte	0x22
	.4byte	0x35a
	.byte	0
	.uleb128 0x10
	.4byte	.LASF52
	.2byte	0x141
	.byte	0x9
	.4byte	0x68
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF60
	.2byte	0x146
	.byte	0x19
	.4byte	0x217
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF61
	.2byte	0x14c
	.byte	0xb
	.4byte	0x374
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF62
	.2byte	0x152
	.byte	0xa
	.4byte	0x39c
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF63
	.2byte	0x158
	.byte	0x13
	.4byte	0x3a1
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF64
	.2byte	0x15b
	.byte	0xc
	.4byte	0x7b
	.byte	0x24
	.uleb128 0x31
	.string	"iv"
	.byte	0x1
	.2byte	0x15f
	.byte	0x13
	.4byte	0x3a1
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF51
	.2byte	0x162
	.byte	0xc
	.4byte	0x7b
	.byte	0x38
	.uleb128 0x10
	.4byte	.LASF65
	.2byte	0x165
	.byte	0xb
	.4byte	0xd2
	.byte	0x3c
	.uleb128 0x10
	.4byte	.LASF66
	.2byte	0x169
	.byte	0x1d
	.4byte	0x3b1
	.byte	0x40
	.byte	0
	.uleb128 0x9
	.4byte	0x2b9
	.uleb128 0x32
	.4byte	0x374
	.uleb128 0x3
	.4byte	0xd9
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x9
	.4byte	0x35f
	.uleb128 0x33
	.4byte	0x68
	.4byte	0x397
	.uleb128 0x3
	.4byte	0xd9
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x397
	.uleb128 0x3
	.4byte	0x397
	.byte	0
	.uleb128 0x9
	.4byte	0x7b
	.uleb128 0x9
	.4byte	0x379
	.uleb128 0xe
	.4byte	0x32
	.4byte	0x3b1
	.uleb128 0xa
	.4byte	0x74
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	0x228
	.uleb128 0x25
	.4byte	.LASF58
	.2byte	0x177
	.4byte	0x2be
	.uleb128 0x34
	.4byte	.LASF67
	.2byte	0x1090
	.byte	0x7
	.byte	0x3a
	.byte	0x10
	.4byte	0x440
	.uleb128 0x35
	.4byte	.LASF65
	.byte	0x7
	.byte	0x3e
	.byte	0x1e
	.4byte	0x3b6
	.byte	0
	.uleb128 0x1e
	.string	"H"
	.byte	0x7
	.byte	0x40
	.4byte	0x440
	.byte	0x48
	.uleb128 0x20
	.string	"len"
	.byte	0x41
	.byte	0xe
	.4byte	0xc1
	.2byte	0x1048
	.uleb128 0x1a
	.4byte	.LASF68
	.byte	0x42
	.byte	0xe
	.4byte	0xc1
	.2byte	0x1050
	.uleb128 0x1a
	.4byte	.LASF69
	.byte	0x43
	.byte	0x13
	.4byte	0x3a1
	.2byte	0x1058
	.uleb128 0x20
	.string	"y"
	.byte	0x44
	.byte	0x13
	.4byte	0x3a1
	.2byte	0x1068
	.uleb128 0x20
	.string	"buf"
	.byte	0x45
	.byte	0x13
	.4byte	0x3a1
	.2byte	0x1078
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x46
	.byte	0x13
	.4byte	0x32
	.2byte	0x1088
	.uleb128 0x1a
	.4byte	.LASF70
	.byte	0x49
	.byte	0x13
	.4byte	0x32
	.2byte	0x1089
	.byte	0
	.uleb128 0xe
	.4byte	0xc1
	.4byte	0x456
	.uleb128 0xa
	.4byte	0x74
	.byte	0xff
	.uleb128 0xa
	.4byte	0x74
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x7
	.byte	0x4b
	.byte	0x1
	.4byte	0x3c1
	.uleb128 0xe
	.4byte	0xb0
	.4byte	0x472
	.uleb128 0xa
	.4byte	0x74
	.byte	0xff
	.byte	0
	.uleb128 0x8
	.4byte	0x462
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0xd8
	.byte	0x17
	.4byte	0x472
	.uleb128 0x5
	.byte	0x3
	.4byte	last8
	.uleb128 0xe
	.4byte	0x6f
	.4byte	0x498
	.uleb128 0xa
	.4byte	0x74
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	0x488
	.uleb128 0x2
	.4byte	.LASF72
	.2byte	0x319
	.byte	0x12
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	key_index_test_data
	.uleb128 0xe
	.4byte	0x39
	.4byte	0x4c5
	.uleb128 0xa
	.4byte	0x74
	.byte	0x1
	.uleb128 0xa
	.4byte	0x74
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0x4af
	.uleb128 0x2
	.4byte	.LASF73
	.2byte	0x31c
	.byte	0x1c
	.4byte	0x4c5
	.uleb128 0x5
	.byte	0x3
	.4byte	key_test_data
	.uleb128 0xe
	.4byte	0x87
	.4byte	0x4ec
	.uleb128 0xa
	.4byte	0x74
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	0x4dc
	.uleb128 0x2
	.4byte	.LASF74
	.2byte	0x328
	.byte	0x15
	.4byte	0x4ec
	.uleb128 0x5
	.byte	0x3
	.4byte	iv_len_test_data
	.uleb128 0x2
	.4byte	.LASF75
	.2byte	0x32b
	.byte	0x12
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	iv_index_test_data
	.uleb128 0xe
	.4byte	0x39
	.4byte	0x52b
	.uleb128 0xa
	.4byte	0x74
	.byte	0x2
	.uleb128 0xa
	.4byte	0x74
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.4byte	0x515
	.uleb128 0x2
	.4byte	.LASF76
	.2byte	0x32e
	.byte	0x1c
	.4byte	0x52b
	.uleb128 0x5
	.byte	0x3
	.4byte	iv_test_data
	.uleb128 0x2
	.4byte	.LASF77
	.2byte	0x33e
	.byte	0x15
	.4byte	0x4ec
	.uleb128 0x5
	.byte	0x3
	.4byte	add_len_test_data
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x341
	.byte	0x12
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	add_index_test_data
	.uleb128 0xe
	.4byte	0x39
	.4byte	0x57c
	.uleb128 0xa
	.4byte	0x74
	.byte	0x1
	.uleb128 0xa
	.4byte	0x74
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.4byte	0x566
	.uleb128 0x2
	.4byte	.LASF79
	.2byte	0x344
	.byte	0x1c
	.4byte	0x57c
	.uleb128 0x5
	.byte	0x3
	.4byte	additional_test_data
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x34c
	.byte	0x15
	.4byte	0x4ec
	.uleb128 0x5
	.byte	0x3
	.4byte	pt_len_test_data
	.uleb128 0x2
	.4byte	.LASF81
	.2byte	0x34f
	.byte	0x12
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	pt_index_test_data
	.uleb128 0x2
	.4byte	.LASF82
	.2byte	0x352
	.byte	0x1c
	.4byte	0x57c
	.uleb128 0x5
	.byte	0x3
	.4byte	pt_test_data
	.uleb128 0xe
	.4byte	0x39
	.4byte	0x5df
	.uleb128 0xa
	.4byte	0x74
	.byte	0x11
	.uleb128 0xa
	.4byte	0x74
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.4byte	0x5c9
	.uleb128 0x2
	.4byte	.LASF83
	.2byte	0x360
	.byte	0x1c
	.4byte	0x5df
	.uleb128 0x5
	.byte	0x3
	.4byte	ct_test_data
	.uleb128 0xe
	.4byte	0x39
	.4byte	0x60c
	.uleb128 0xa
	.4byte	0x74
	.byte	0x11
	.uleb128 0xa
	.4byte	0x74
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x5f6
	.uleb128 0x2
	.4byte	.LASF84
	.2byte	0x3cf
	.byte	0x1c
	.4byte	0x60c
	.uleb128 0x5
	.byte	0x3
	.4byte	tag_test_data
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x8
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x643
	.uleb128 0x3
	.4byte	0xf4
	.uleb128 0x3
	.4byte	0xf4
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x9
	.byte	0xce
	.byte	0x5
	.4byte	0x68
	.4byte	0x65a
	.uleb128 0x3
	.4byte	0xef
	.uleb128 0x36
	.byte	0
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0xa
	.byte	0x20
	.byte	0x5
	.4byte	0x68
	.4byte	0x67a
	.uleb128 0x3
	.4byte	0xf4
	.uleb128 0x3
	.4byte	0xf4
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x37
	.4byte	.LASF91
	.byte	0xb
	.byte	0x9f
	.byte	0x6
	.4byte	0x691
	.uleb128 0x3
	.4byte	0xd2
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x8
	.byte	0x1f
	.byte	0x8
	.4byte	0xd2
	.4byte	0x6b1
	.uleb128 0x3
	.4byte	0xd4
	.uleb128 0x3
	.4byte	0xf9
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF89
	.2byte	0x33e
	.byte	0x5
	.4byte	0x68
	.4byte	0x6d6
	.uleb128 0x3
	.4byte	0x6d6
	.uleb128 0x3
	.4byte	0x6db
	.uleb128 0x3
	.4byte	0x68
	.uleb128 0x3
	.4byte	0x223
	.byte	0
	.uleb128 0x9
	.4byte	0x3b6
	.uleb128 0x9
	.4byte	0x39
	.uleb128 0x1b
	.4byte	.LASF90
	.2byte	0x27e
	.byte	0x5
	.4byte	0x68
	.4byte	0x6fb
	.uleb128 0x3
	.4byte	0x6d6
	.uleb128 0x3
	.4byte	0x35a
	.byte	0
	.uleb128 0x38
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x261
	.byte	0x6
	.4byte	0x70e
	.uleb128 0x3
	.4byte	0x6d6
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF93
	.2byte	0x1af
	.byte	0x1e
	.4byte	0x35a
	.4byte	0x72e
	.uleb128 0x3
	.4byte	0x183
	.uleb128 0x3
	.4byte	0x68
	.uleb128 0x3
	.4byte	0x1f4
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF94
	.2byte	0x3c5
	.byte	0x5
	.4byte	0x68
	.4byte	0x758
	.uleb128 0x3
	.4byte	0x6d6
	.uleb128 0x3
	.4byte	0x6db
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0xd9
	.uleb128 0x3
	.4byte	0x397
	.byte	0
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0x8
	.byte	0x21
	.byte	0x8
	.4byte	0xd2
	.4byte	0x778
	.uleb128 0x3
	.4byte	0xd2
	.uleb128 0x3
	.4byte	0x68
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x15
	.4byte	.LASF103
	.2byte	0x3f9
	.4byte	0x68
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x87d
	.uleb128 0x4
	.4byte	.LASF102
	.byte	0x2
	.2byte	0x3f9
	.byte	0x1f
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4388
	.uleb128 0xb
	.string	"ctx"
	.2byte	0x3fb
	.byte	0x19
	.4byte	0x456
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4288
	.uleb128 0xb
	.string	"buf"
	.2byte	0x3fc
	.byte	0x13
	.4byte	0x87d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4352
	.uleb128 0x2
	.4byte	.LASF96
	.2byte	0x3fd
	.byte	0x13
	.4byte	0x3a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4368
	.uleb128 0xb
	.string	"i"
	.2byte	0x3fe
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"j"
	.2byte	0x3fe
	.byte	0xc
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"ret"
	.2byte	0x3fe
	.byte	0xf
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF97
	.2byte	0x3ff
	.byte	0x19
	.4byte	0x177
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x400
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4372
	.uleb128 0x2
	.4byte	.LASF99
	.2byte	0x416
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x5
	.byte	0x3
	.4byte	loop_limit.0
	.uleb128 0x39
	.4byte	.LASF153
	.byte	0x2
	.2byte	0x525
	.byte	0x1
	.4byte	.L152
	.uleb128 0x26
	.4byte	.LLRL0
	.uleb128 0x2
	.4byte	.LASF100
	.2byte	0x41a
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3a
	.4byte	.LLRL1
	.4byte	0x866
	.uleb128 0x2
	.4byte	.LASF101
	.2byte	0x498
	.byte	0x18
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x26
	.4byte	.LLRL2
	.uleb128 0x2
	.4byte	.LASF101
	.2byte	0x4e9
	.byte	0x18
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x32
	.4byte	0x88d
	.uleb128 0xa
	.4byte	0x74
	.byte	0x3f
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF143
	.byte	0x2
	.2byte	0x302
	.byte	0x6
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b4
	.uleb128 0x7
	.string	"ctx"
	.2byte	0x302
	.byte	0x2c
	.4byte	0x8b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x456
	.uleb128 0x15
	.4byte	.LASF104
	.2byte	0x2e2
	.4byte	0x68
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99f
	.uleb128 0x7
	.string	"ctx"
	.2byte	0x2e2
	.byte	0x33
	.4byte	0x8b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0x2
	.2byte	0x2e3
	.byte	0x25
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"iv"
	.2byte	0x2e4
	.byte	0x33
	.4byte	0x6db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0x2
	.2byte	0x2e5
	.byte	0x25
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"add"
	.2byte	0x2e6
	.byte	0x33
	.4byte	0x6db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x2
	.2byte	0x2e7
	.byte	0x25
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x7
	.string	"tag"
	.2byte	0x2e8
	.byte	0x33
	.4byte	0x6db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0x2
	.2byte	0x2e9
	.byte	0x25
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x2ea
	.byte	0x33
	.4byte	0x6db
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x2eb
	.byte	0x2d
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.string	"ret"
	.2byte	0x2ed
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF110
	.2byte	0x2ee
	.byte	0x13
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF111
	.2byte	0x2ef
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.4byte	.LASF112
	.2byte	0x2bf
	.4byte	0x68
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa82
	.uleb128 0x7
	.string	"ctx"
	.2byte	0x2bf
	.byte	0x34
	.4byte	0x8b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x2
	.2byte	0x2c0
	.byte	0x23
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0x2
	.2byte	0x2c1
	.byte	0x26
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"iv"
	.2byte	0x2c2
	.byte	0x34
	.4byte	0x6db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0x2
	.2byte	0x2c3
	.byte	0x26
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"add"
	.2byte	0x2c4
	.byte	0x34
	.4byte	0x6db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x2
	.2byte	0x2c5
	.byte	0x26
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x2c6
	.byte	0x34
	.4byte	0x6db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x2c7
	.byte	0x2e
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0x2
	.2byte	0x2c8
	.byte	0x26
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x7
	.string	"tag"
	.2byte	0x2c9
	.byte	0x2e
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xb
	.string	"ret"
	.2byte	0x2cb
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x2cc
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.4byte	.LASF113
	.2byte	0x28a
	.4byte	0x68
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6e
	.uleb128 0x7
	.string	"ctx"
	.2byte	0x28a
	.byte	0x2d
	.4byte	0x8b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x28b
	.byte	0x27
	.4byte	0xd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x4
	.4byte	.LASF114
	.byte	0x2
	.2byte	0x28b
	.byte	0x36
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x28c
	.byte	0x20
	.4byte	0x397
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x7
	.string	"tag"
	.2byte	0x28d
	.byte	0x27
	.4byte	0xd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0x2
	.2byte	0x28d
	.byte	0x33
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x28f
	.byte	0x13
	.4byte	0x3a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x290
	.byte	0xe
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF118
	.2byte	0x291
	.byte	0xe
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.4byte	0x16bf
	.4byte	.LBB87
	.4byte	.LBE87-.LBB87
	.2byte	0x2b0
	.byte	0x70
	.4byte	0xb5d
	.uleb128 0x1
	.4byte	0x16ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	0x16d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.4byte	0x16de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0xc
	.4byte	0x16bf
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.2byte	0x2b1
	.byte	0x6a
	.4byte	0xb8d
	.uleb128 0x1
	.4byte	0x16ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.4byte	0x16d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x5
	.4byte	0x16de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0xc
	.4byte	0x16bf
	.4byte	.LBB91
	.4byte	.LBE91-.LBB91
	.2byte	0x2b2
	.byte	0x6c
	.4byte	0xbbd
	.uleb128 0x1
	.4byte	0x16ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1
	.4byte	0x16d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x5
	.4byte	0x16de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0xc
	.4byte	0x16bf
	.4byte	.LBB93
	.4byte	.LBE93-.LBB93
	.2byte	0x2b3
	.byte	0x67
	.4byte	0xbed
	.uleb128 0x1
	.4byte	0x16ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1
	.4byte	0x16d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x5
	.4byte	0x16de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0xc
	.4byte	0x161e
	.4byte	.LBB95
	.4byte	.LBE95-.LBB95
	.2byte	0x2b5
	.byte	0x9
	.4byte	0xc2f
	.uleb128 0x1
	.4byte	0x1629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1
	.4byte	0x1633
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1
	.4byte	0x163d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1
	.4byte	0x1647
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x5
	.4byte	0x1651
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.uleb128 0x17
	.4byte	0x161e
	.4byte	.LBB97
	.4byte	.LBE97-.LBB97
	.2byte	0x2b9
	.byte	0x9
	.uleb128 0x1
	.4byte	0x1629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1
	.4byte	0x1633
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1
	.4byte	0x163d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1
	.4byte	0x1647
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x5
	.4byte	0x1651
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF119
	.2byte	0x234
	.4byte	0x68
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd50
	.uleb128 0x7
	.string	"ctx"
	.2byte	0x234
	.byte	0x2d
	.4byte	0x8b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x235
	.byte	0x2d
	.4byte	0x6db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x2
	.2byte	0x235
	.byte	0x3b
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x236
	.byte	0x27
	.4byte	0xd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x4
	.4byte	.LASF114
	.byte	0x2
	.2byte	0x236
	.byte	0x36
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x237
	.byte	0x20
	.4byte	0x397
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xb
	.string	"ret"
	.2byte	0x239
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"p"
	.2byte	0x23a
	.byte	0x1a
	.4byte	0x6db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF121
	.2byte	0x23b
	.byte	0x14
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF122
	.2byte	0x23c
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x23d
	.byte	0x13
	.4byte	0x3a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3c
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x25d
	.byte	0x10
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF136
	.byte	0x2
	.2byte	0x216
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea7
	.uleb128 0x7
	.string	"ctx"
	.2byte	0x216
	.byte	0x2a
	.4byte	0x8b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x217
	.byte	0x23
	.4byte	0xd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x218
	.byte	0x1c
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x218
	.byte	0x2b
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x219
	.byte	0x2a
	.4byte	0x6db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x21a
	.byte	0x24
	.4byte	0xd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xb
	.string	"ret"
	.2byte	0x21c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x221
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xc
	.4byte	0x161e
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.2byte	0x22a
	.byte	0x9
	.4byte	0xe2c
	.uleb128 0x1
	.4byte	0x1629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	0x1633
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	0x163d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	0x1647
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	0x1651
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xc
	.4byte	0x161e
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.2byte	0x22c
	.byte	0x5
	.4byte	0xe69
	.uleb128 0x1
	.4byte	0x1629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	0x1633
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	0x163d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	0x1647
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.4byte	0x1651
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x17
	.4byte	0x161e
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.2byte	0x22e
	.byte	0x9
	.uleb128 0x1
	.4byte	0x1629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	0x1633
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	0x163d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.4byte	0x1647
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x5
	.4byte	0x1651
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF129
	.2byte	0x20d
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf2d
	.uleb128 0x7
	.string	"y"
	.2byte	0x20d
	.byte	0x24
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.string	"x"
	.2byte	0x20f
	.byte	0xe
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	0x16f0
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.2byte	0x20f
	.byte	0x56
	.4byte	0xf03
	.uleb128 0x1
	.4byte	0x16fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	0x1707
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	0x1711
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x17
	.4byte	0x16bf
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.2byte	0x211
	.byte	0x53
	.uleb128 0x1
	.4byte	0x16ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	0x16d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	0x16de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF125
	.2byte	0x1d3
	.4byte	0x68
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1071
	.uleb128 0x7
	.string	"ctx"
	.2byte	0x1d3
	.byte	0x30
	.4byte	0x8b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x7
	.string	"add"
	.2byte	0x1d4
	.byte	0x30
	.4byte	0x6db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x2
	.2byte	0x1d4
	.byte	0x3c
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0xb
	.string	"p"
	.2byte	0x1d6
	.byte	0x1a
	.4byte	0x6db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x1d7
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF122
	.2byte	0x1d7
	.byte	0x15
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF126
	.2byte	0x1d8
	.byte	0xe
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.4byte	0x161e
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.2byte	0x1ef
	.byte	0x9
	.4byte	0xff0
	.uleb128 0x1
	.4byte	0x1629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	0x1633
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	0x163d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	0x1647
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.4byte	0x1651
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xc
	.4byte	0x161e
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.2byte	0x1fd
	.byte	0x9
	.4byte	0x1032
	.uleb128 0x1
	.4byte	0x1629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.4byte	0x1633
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.4byte	0x163d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.4byte	0x1647
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x5
	.4byte	0x1651
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x17
	.4byte	0x161e
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.2byte	0x206
	.byte	0x9
	.uleb128 0x1
	.4byte	0x1629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.4byte	0x1633
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1
	.4byte	0x163d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1
	.4byte	0x1647
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x5
	.4byte	0x1651
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF127
	.2byte	0x179
	.4byte	0x68
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11d4
	.uleb128 0x7
	.string	"ctx"
	.2byte	0x179
	.byte	0x2d
	.4byte	0x8b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x2
	.2byte	0x17a
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x7
	.string	"iv"
	.2byte	0x17b
	.byte	0x2d
	.4byte	0x6db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0x2
	.2byte	0x17b
	.byte	0x38
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xb
	.string	"ret"
	.2byte	0x17d
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x17e
	.byte	0x13
	.4byte	0x3a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0xb
	.string	"p"
	.2byte	0x17f
	.byte	0x1a
	.4byte	0x6db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x180
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF128
	.2byte	0x181
	.byte	0xe
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x183
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xc
	.4byte	0x165c
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.2byte	0x199
	.byte	0x63
	.4byte	0x1153
	.uleb128 0x1
	.4byte	0x1667
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	0x1671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.4byte	0x167b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0xc
	.4byte	0x161e
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.2byte	0x1a4
	.byte	0xd
	.4byte	0x1195
	.uleb128 0x1
	.4byte	0x1629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.4byte	0x1633
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.4byte	0x163d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.4byte	0x1647
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x5
	.4byte	0x1651
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x17
	.4byte	0x161e
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.2byte	0x1b0
	.byte	0x9
	.uleb128 0x1
	.4byte	0x1629
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1
	.4byte	0x1633
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.4byte	0x163d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1
	.4byte	0x1647
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x5
	.4byte	0x1651
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF130
	.2byte	0x15b
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1216
	.uleb128 0x7
	.string	"ctx"
	.2byte	0x15b
	.byte	0x2b
	.4byte	0x8b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"x"
	.2byte	0x15b
	.byte	0x44
	.4byte	0x6db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x15c
	.byte	0x24
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x28
	.4byte	.LASF131
	.byte	0xfb
	.byte	0xd
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1314
	.uleb128 0x21
	.4byte	.LASF109
	.byte	0xfb
	.byte	0x2a
	.4byte	0x1314
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x12
	.string	"x"
	.byte	0xfb
	.byte	0x41
	.4byte	0x1319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x12
	.string	"H"
	.byte	0xfb
	.byte	0x4d
	.4byte	0x132e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x18
	.string	"i"
	.byte	0xfd
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF132
	.byte	0xfe
	.byte	0xe
	.4byte	0x131e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x13
	.4byte	.LASF133
	.byte	0xff
	.byte	0xf
	.4byte	0x1333
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"u8z"
	.2byte	0x100
	.byte	0xe
	.4byte	0x1314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.string	"rem"
	.2byte	0x101
	.byte	0xd
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0xc
	.4byte	0x15dc
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.2byte	0x113
	.byte	0xd
	.4byte	0x12d8
	.uleb128 0x1
	.4byte	0x15ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	0x15f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	0x15fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	0x1608
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	0x1612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x17
	.4byte	0x15dc
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.2byte	0x11e
	.byte	0x5
	.uleb128 0x1
	.4byte	0x15ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	0x15f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	0x15fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	0x1608
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.4byte	0x1612
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x93
	.uleb128 0x9
	.4byte	0x9f
	.uleb128 0xe
	.4byte	0xc1
	.4byte	0x132e
	.uleb128 0xa
	.4byte	0x74
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x131e
	.uleb128 0x9
	.4byte	0xa4
	.uleb128 0x3e
	.4byte	.LASF134
	.byte	0x2
	.byte	0xa2
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13a7
	.uleb128 0x12
	.string	"ctx"
	.byte	0xa2
	.byte	0x2d
	.4byte	0x8b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.4byte	.LASF97
	.byte	0xa3
	.byte	0x2c
	.4byte	0x177
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x12
	.string	"key"
	.byte	0xa4
	.byte	0x2d
	.4byte	0x6db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.4byte	.LASF135
	.byte	0xa5
	.byte	0x25
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"ret"
	.byte	0xa7
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0xb8
	.byte	0x22
	.4byte	0x35a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF137
	.byte	0x2
	.byte	0x63
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1459
	.uleb128 0x12
	.string	"ctx"
	.byte	0x63
	.byte	0x2f
	.4byte	0x8b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x18
	.string	"ret"
	.byte	0x65
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"i"
	.byte	0x65
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"j"
	.byte	0x65
	.byte	0x11
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF138
	.byte	0x66
	.byte	0xe
	.4byte	0x131e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.string	"h"
	.byte	0x67
	.byte	0xe
	.4byte	0x1314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x6c
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.4byte	0x15dc
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0x97
	.byte	0x15
	.uleb128 0x1
	.4byte	0x15ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	0x15f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	0x15fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	0x1608
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	0x1612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.LASF139
	.byte	0x2
	.byte	0x50
	.byte	0x14
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x155d
	.uleb128 0x12
	.string	"dst"
	.byte	0x50
	.byte	0x36
	.4byte	0x155d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x12
	.string	"src"
	.byte	0x50
	.byte	0x4d
	.4byte	0x1562
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x13
	.4byte	.LASF140
	.byte	0x52
	.byte	0xe
	.4byte	0x1314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF141
	.byte	0x53
	.byte	0xe
	.4byte	0x1314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.4byte	0x168d
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x55
	.4byte	0x14d6
	.uleb128 0x1
	.4byte	0x169e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.4byte	0x16a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.4byte	0x16b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x41
	.4byte	0x165c
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x2
	.byte	0x55
	.byte	0xd5
	.4byte	0x1503
	.uleb128 0x1
	.4byte	0x1667
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	0x1671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.4byte	0x167b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x2a
	.4byte	0x168d
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x57
	.4byte	0x1531
	.uleb128 0x1
	.4byte	0x169e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x5
	.4byte	0x16a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x5
	.4byte	0x16b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x29
	.4byte	0x165c
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x57
	.byte	0xd5
	.uleb128 0x1
	.4byte	0x1667
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.4byte	0x1671
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x5
	.4byte	0x167b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xc1
	.uleb128 0x9
	.4byte	0xcd
	.uleb128 0x28
	.4byte	.LASF142
	.byte	0x3a
	.byte	0x14
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x158b
	.uleb128 0x12
	.string	"ctx"
	.byte	0x3a
	.byte	0x3e
	.4byte	0x8b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x42
	.4byte	.LASF144
	.byte	0x2
	.byte	0x35
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15b0
	.uleb128 0x12
	.string	"ctx"
	.byte	0x35
	.byte	0x2c
	.4byte	0x8b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x43
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x221
	.byte	0x16
	.4byte	0x7b
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15dc
	.uleb128 0x4
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x222
	.byte	0x22
	.4byte	0x35a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x44
	.4byte	.LASF147
	.byte	0x4
	.2byte	0x10c
	.byte	0x14
	.byte	0x3
	.4byte	0x161e
	.uleb128 0x1c
	.string	"r"
	.2byte	0x10c
	.byte	0x37
	.4byte	0xd9
	.uleb128 0x1c
	.string	"a"
	.2byte	0x10d
	.byte	0x3d
	.4byte	0x6db
	.uleb128 0x1c
	.string	"b"
	.2byte	0x10e
	.byte	0x3d
	.4byte	0x6db
	.uleb128 0x1c
	.string	"n"
	.2byte	0x10f
	.byte	0x2f
	.4byte	0x7b
	.uleb128 0x45
	.string	"i"
	.byte	0x4
	.2byte	0x111
	.byte	0xc
	.4byte	0x7b
	.byte	0
	.uleb128 0x22
	.4byte	.LASF148
	.byte	0x4
	.byte	0xba
	.4byte	0x165c
	.uleb128 0x11
	.string	"r"
	.byte	0x4
	.byte	0xba
	.byte	0x2f
	.4byte	0xd9
	.uleb128 0x11
	.string	"a"
	.byte	0x4
	.byte	0xbb
	.byte	0x35
	.4byte	0x6db
	.uleb128 0x11
	.string	"b"
	.byte	0x4
	.byte	0xbc
	.byte	0x35
	.4byte	0x6db
	.uleb128 0x11
	.string	"n"
	.byte	0x4
	.byte	0xbd
	.byte	0x27
	.4byte	0x7b
	.uleb128 0x16
	.string	"i"
	.byte	0x4
	.byte	0xbf
	.byte	0xc
	.4byte	0x7b
	.byte	0
	.uleb128 0x22
	.4byte	.LASF149
	.byte	0x3
	.byte	0xf6
	.4byte	0x1688
	.uleb128 0x11
	.string	"p"
	.byte	0x3
	.byte	0xf6
	.byte	0x37
	.4byte	0xd2
	.uleb128 0x11
	.string	"x"
	.byte	0x3
	.byte	0xf6
	.byte	0x43
	.4byte	0xc1
	.uleb128 0x16
	.string	"p64"
	.byte	0x3
	.byte	0xfc
	.byte	0x21
	.4byte	0x1688
	.byte	0
	.uleb128 0x9
	.4byte	0x12f
	.uleb128 0x46
	.4byte	.LASF154
	.byte	0x3
	.byte	0xdb
	.byte	0x18
	.4byte	0xc1
	.byte	0x3
	.4byte	0x16bf
	.uleb128 0x11
	.string	"p"
	.byte	0x3
	.byte	0xdb
	.byte	0x41
	.4byte	0xf4
	.uleb128 0x16
	.string	"r"
	.byte	0x3
	.byte	0xdd
	.byte	0xe
	.4byte	0xc1
	.uleb128 0x16
	.string	"p64"
	.byte	0x3
	.byte	0xe2
	.byte	0x21
	.4byte	0x1688
	.byte	0
	.uleb128 0x22
	.4byte	.LASF150
	.byte	0x3
	.byte	0xc2
	.4byte	0x16eb
	.uleb128 0x11
	.string	"p"
	.byte	0x3
	.byte	0xc2
	.byte	0x37
	.4byte	0xd2
	.uleb128 0x11
	.string	"x"
	.byte	0x3
	.byte	0xc2
	.byte	0x43
	.4byte	0xb5
	.uleb128 0x16
	.string	"p32"
	.byte	0x3
	.byte	0xc8
	.byte	0x21
	.4byte	0x16eb
	.byte	0
	.uleb128 0x9
	.4byte	0x111
	.uleb128 0x47
	.4byte	.LASF151
	.byte	0x3
	.byte	0xa7
	.byte	0x18
	.4byte	0xb5
	.byte	0x3
	.uleb128 0x11
	.string	"p"
	.byte	0x3
	.byte	0xa7
	.byte	0x41
	.4byte	0xf4
	.uleb128 0x16
	.string	"r"
	.byte	0x3
	.byte	0xa9
	.byte	0xe
	.4byte	0xb5
	.uleb128 0x16
	.string	"p32"
	.byte	0x3
	.byte	0xae
	.byte	0x21
	.4byte	0x16eb
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0xb
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
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 362
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.4byte	0xa4
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
	.byte	0x5
	.4byte	.LBB99
	.byte	0x4
	.uleb128 .LBB99-.LBB99
	.uleb128 .LBE99-.LBB99
	.byte	0x4
	.uleb128 .LBB104-.LBB99
	.uleb128 .LBE104-.LBB99
	.byte	0
.LLRL1:
	.byte	0x5
	.4byte	.LBB100
	.byte	0x4
	.uleb128 .LBB100-.LBB100
	.uleb128 .LBE100-.LBB100
	.byte	0x4
	.uleb128 .LBB102-.LBB100
	.uleb128 .LBE102-.LBB100
	.byte	0
.LLRL2:
	.byte	0x5
	.4byte	.LBB101
	.byte	0x4
	.uleb128 .LBB101-.LBB101
	.uleb128 .LBE101-.LBB101
	.byte	0x4
	.uleb128 .LBB103-.LBB101
	.uleb128 .LBE103-.LBB101
	.byte	0
.LLRL3:
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF144:
	.string	"mbedtls_gcm_init"
.LASF60:
	.string	"operation"
.LASF108:
	.string	"input"
.LASF82:
	.string	"pt_test_data"
.LASF34:
	.string	"MBEDTLS_MODE_CTR"
.LASF55:
	.string	"flags"
.LASF133:
	.string	"u16z"
.LASF135:
	.string	"keybits"
.LASF10:
	.string	"unsigned int"
.LASF87:
	.string	"mbedtls_ct_memcmp"
.LASF48:
	.string	"mbedtls_cmac_context_t"
.LASF121:
	.string	"out_p"
.LASF81:
	.string	"pt_index_test_data"
.LASF32:
	.string	"MBEDTLS_MODE_CFB"
.LASF99:
	.string	"loop_limit"
.LASF53:
	.string	"mode"
.LASF47:
	.string	"mbedtls_operation_t"
.LASF76:
	.string	"iv_test_data"
.LASF67:
	.string	"mbedtls_gcm_context"
.LASF98:
	.string	"olen"
.LASF70:
	.string	"acceleration"
.LASF15:
	.string	"uint32_t"
.LASF44:
	.string	"MBEDTLS_OPERATION_NONE"
.LASF151:
	.string	"mbedtls_get_unaligned_uint32"
.LASF120:
	.string	"input_length"
.LASF148:
	.string	"mbedtls_xor"
.LASF142:
	.string	"gcm_set_acceleration"
.LASF28:
	.string	"mbedtls_cipher_id_t"
.LASF9:
	.string	"long long unsigned int"
.LASF122:
	.string	"offset"
.LASF43:
	.string	"mbedtls_cipher_mode_t"
.LASF66:
	.string	"cmac_ctx"
.LASF46:
	.string	"MBEDTLS_ENCRYPT"
.LASF45:
	.string	"MBEDTLS_DECRYPT"
.LASF57:
	.string	"mbedtls_cipher_info_t"
.LASF19:
	.string	"mbedtls_uint64_unaligned_t"
.LASF137:
	.string	"gcm_gen_table"
.LASF134:
	.string	"mbedtls_gcm_setkey"
.LASF150:
	.string	"mbedtls_put_unaligned_uint32"
.LASF106:
	.string	"iv_len"
.LASF64:
	.string	"unprocessed_len"
.LASF12:
	.string	"size_t"
.LASF85:
	.string	"memcmp"
.LASF128:
	.string	"iv_bits"
.LASF109:
	.string	"output"
.LASF107:
	.string	"tag_len"
.LASF93:
	.string	"mbedtls_cipher_info_from_values"
.LASF18:
	.string	"mbedtls_uint32_unaligned_t"
.LASF29:
	.string	"MBEDTLS_MODE_NONE"
.LASF73:
	.string	"key_test_data"
.LASF117:
	.string	"orig_len"
.LASF72:
	.string	"key_index_test_data"
.LASF104:
	.string	"mbedtls_gcm_auth_decrypt"
.LASF89:
	.string	"mbedtls_cipher_setkey"
.LASF39:
	.string	"MBEDTLS_MODE_XTS"
.LASF96:
	.string	"tag_buf"
.LASF139:
	.string	"gcm_gen_table_rightshift"
.LASF17:
	.string	"char"
.LASF42:
	.string	"MBEDTLS_MODE_KWP"
.LASF20:
	.string	"MBEDTLS_CIPHER_ID_NONE"
.LASF36:
	.string	"MBEDTLS_MODE_STREAM"
.LASF92:
	.string	"mbedtls_cipher_free"
.LASF153:
	.string	"exit"
.LASF118:
	.string	"orig_add_len"
.LASF97:
	.string	"cipher"
.LASF84:
	.string	"tag_test_data"
.LASF130:
	.string	"gcm_mult"
.LASF13:
	.string	"uint8_t"
.LASF125:
	.string	"mbedtls_gcm_update_ad"
.LASF83:
	.string	"ct_test_data"
.LASF110:
	.string	"check_tag"
.LASF145:
	.string	"mbedtls_cipher_info_get_block_size"
.LASF94:
	.string	"mbedtls_cipher_update"
.LASF8:
	.string	"long long int"
.LASF86:
	.string	"printf"
.LASF149:
	.string	"mbedtls_put_unaligned_uint64"
.LASF119:
	.string	"mbedtls_gcm_update"
.LASF147:
	.string	"mbedtls_xor_no_simd"
.LASF51:
	.string	"iv_size"
.LASF38:
	.string	"MBEDTLS_MODE_CCM_STAR_NO_TAG"
.LASF35:
	.string	"MBEDTLS_MODE_GCM"
.LASF41:
	.string	"MBEDTLS_MODE_KW"
.LASF115:
	.string	"output_length"
.LASF100:
	.string	"key_len"
.LASF77:
	.string	"add_len_test_data"
.LASF95:
	.string	"memset"
.LASF71:
	.string	"last8"
.LASF126:
	.string	"new_add_len"
.LASF124:
	.string	"use_len"
.LASF80:
	.string	"pt_len_test_data"
.LASF40:
	.string	"MBEDTLS_MODE_CHACHAPOLY"
.LASF146:
	.string	"info"
.LASF143:
	.string	"mbedtls_gcm_free"
.LASF154:
	.string	"mbedtls_get_unaligned_uint64"
.LASF132:
	.string	"u64z"
.LASF140:
	.string	"u8Dst"
.LASF11:
	.string	"long double"
.LASF14:
	.string	"uint16_t"
.LASF22:
	.string	"MBEDTLS_CIPHER_ID_AES"
.LASF112:
	.string	"mbedtls_gcm_crypt_and_tag"
.LASF79:
	.string	"additional_test_data"
.LASF113:
	.string	"mbedtls_gcm_finish"
.LASF4:
	.string	"short int"
.LASF101:
	.string	"rest_len"
.LASF21:
	.string	"MBEDTLS_CIPHER_ID_NULL"
.LASF68:
	.string	"add_len"
.LASF6:
	.string	"long int"
.LASF114:
	.string	"output_size"
.LASF105:
	.string	"length"
.LASF111:
	.string	"diff"
.LASF30:
	.string	"MBEDTLS_MODE_ECB"
.LASF16:
	.string	"uint64_t"
.LASF56:
	.string	"base_idx"
.LASF50:
	.string	"block_size"
.LASF52:
	.string	"key_bitlen"
.LASF62:
	.string	"get_padding"
.LASF59:
	.string	"cipher_info"
.LASF65:
	.string	"cipher_ctx"
.LASF49:
	.string	"name"
.LASF78:
	.string	"add_index_test_data"
.LASF116:
	.string	"work_buf"
.LASF129:
	.string	"gcm_incr"
.LASF26:
	.string	"MBEDTLS_CIPHER_ID_ARIA"
.LASF25:
	.string	"MBEDTLS_CIPHER_ID_CAMELLIA"
.LASF7:
	.string	"long unsigned int"
.LASF69:
	.string	"base_ectr"
.LASF74:
	.string	"iv_len_test_data"
.LASF23:
	.string	"MBEDTLS_CIPHER_ID_DES"
.LASF90:
	.string	"mbedtls_cipher_setup"
.LASF54:
	.string	"type"
.LASF123:
	.string	"ectr"
.LASF3:
	.string	"unsigned char"
.LASF31:
	.string	"MBEDTLS_MODE_CBC"
.LASF127:
	.string	"mbedtls_gcm_starts"
.LASF141:
	.string	"u8Src"
.LASF33:
	.string	"MBEDTLS_MODE_OFB"
.LASF58:
	.string	"mbedtls_cipher_context_t"
.LASF27:
	.string	"MBEDTLS_CIPHER_ID_CHACHA20"
.LASF138:
	.string	"u64h"
.LASF102:
	.string	"verbose"
.LASF24:
	.string	"MBEDTLS_CIPHER_ID_3DES"
.LASF2:
	.string	"signed char"
.LASF103:
	.string	"mbedtls_gcm_self_test"
.LASF5:
	.string	"short unsigned int"
.LASF88:
	.string	"memcpy"
.LASF131:
	.string	"gcm_mult_largetable"
.LASF37:
	.string	"MBEDTLS_MODE_CCM"
.LASF75:
	.string	"iv_index_test_data"
.LASF61:
	.string	"add_padding"
.LASF63:
	.string	"unprocessed_data"
.LASF136:
	.string	"gcm_mask"
.LASF152:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF91:
	.string	"mbedtls_platform_zeroize"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/gcm.c"
	.globl	__bswapsi2
	.globl	__bswapdi2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
