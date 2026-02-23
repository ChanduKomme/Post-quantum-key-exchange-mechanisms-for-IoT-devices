	.file	"ctr_drbg.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ctr_drbg.c"
	.section	.text.mbedtls_ctr_increment_counter,"ax",@progbits
	.align	1
	.type	mbedtls_ctr_increment_counter, @function
mbedtls_ctr_increment_counter:
.LFB11:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ctr.h"
	.loc 1 22 1
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
.LBB14:
	.loc 1 25 14
	li	a5,3
	sw	a5,-20(s0)
.L4:
.LBB15:
	.loc 1 26 132
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 1 26 127
	lw	a4,-52(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
.LBB16:
.LBB17:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/alignment.h"
	.loc 2 174 33
	lw	a5,-28(s0)
	sw	a5,-32(s0)
	.loc 2 175 7
	lw	a5,-32(s0)
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
	sw	a5,-36(s0)
	.loc 2 179 12
	lw	a5,-36(s0)
.LBE17:
.LBE16:
	.loc 1 26 74 discriminator 1
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	sw	a5,-24(s0)
	.loc 1 27 11
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 1 28 129 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 1 28 124 discriminator 2
	lw	a4,-52(s0)
	add	s1,a4,a5
	.loc 1 28 136 discriminator 2
	lw	a0,-24(s0)
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-40(s0)
	sw	a5,-44(s0)
.LBB18:
.LBB19:
	.loc 2 200 33
	lw	a5,-40(s0)
	sw	a5,-48(s0)
	.loc 2 201 12
	lw	a5,-48(s0)
	lw	a4,-44(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-44(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-44(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-44(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 2 205 1
	nop
.LBE19:
.LBE18:
	.loc 1 29 12
	lw	a5,-24(s0)
	bne	a5,zero,.L5
	.loc 1 29 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L5
.LBE15:
	.loc 1 25 23
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 25 27
	j	.L4
.L5:
.LBE14:
	.loc 1 33 1
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
.LFE11:
	.size	mbedtls_ctr_increment_counter, .-mbedtls_ctr_increment_counter
	.section	.text.mbedtls_ctr_drbg_init,"ax",@progbits
	.align	1
	.globl	mbedtls_ctr_drbg_init
	.type	mbedtls_ctr_drbg_init, @function
mbedtls_ctr_drbg_init:
.LFB17:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ctr_drbg.c"
	.loc 3 74 1
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
	.loc 3 75 5
	li	a2,320
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 3 80 5
	lw	a5,-20(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	mbedtls_aes_init
	.loc 3 84 25
	lw	a5,-20(s0)
	li	a4,-1
	sw	a4,16(a5)
	.loc 3 86 26
	lw	a5,-20(s0)
	li	a4,8192
	addi	a4,a4,1808
	sw	a4,28(a5)
	.loc 3 87 1
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
.LFE17:
	.size	mbedtls_ctr_drbg_init, .-mbedtls_ctr_drbg_init
	.section	.text.mbedtls_ctr_drbg_free,"ax",@progbits
	.align	1
	.globl	mbedtls_ctr_drbg_free
	.type	mbedtls_ctr_drbg_free, @function
mbedtls_ctr_drbg_free:
.LFB18:
	.loc 3 94 1
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
	.loc 3 95 8
	lw	a5,-20(s0)
	beq	a5,zero,.L10
	.loc 3 108 5
	lw	a5,-20(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	mbedtls_aes_free
	.loc 3 110 5
	li	a1,320
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
	.loc 3 111 26
	lw	a5,-20(s0)
	li	a4,8192
	addi	a4,a4,1808
	sw	a4,28(a5)
	.loc 3 112 25
	lw	a5,-20(s0)
	li	a4,-1
	sw	a4,16(a5)
	j	.L7
.L10:
	.loc 3 96 9
	nop
.L7:
	.loc 3 113 1
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
	.size	mbedtls_ctr_drbg_free, .-mbedtls_ctr_drbg_free
	.section	.text.mbedtls_ctr_drbg_set_prediction_resistance,"ax",@progbits
	.align	1
	.globl	mbedtls_ctr_drbg_set_prediction_resistance
	.type	mbedtls_ctr_drbg_set_prediction_resistance, @function
mbedtls_ctr_drbg_set_prediction_resistance:
.LFB19:
	.loc 3 117 1
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
	.loc 3 118 32
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,20(a5)
	.loc 3 119 1
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
	.size	mbedtls_ctr_drbg_set_prediction_resistance, .-mbedtls_ctr_drbg_set_prediction_resistance
	.section	.text.mbedtls_ctr_drbg_set_entropy_len,"ax",@progbits
	.align	1
	.globl	mbedtls_ctr_drbg_set_entropy_len
	.type	mbedtls_ctr_drbg_set_entropy_len, @function
mbedtls_ctr_drbg_set_entropy_len:
.LFB20:
	.loc 3 123 1
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
	.loc 3 124 22
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,24(a5)
	.loc 3 125 1
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
.LFE20:
	.size	mbedtls_ctr_drbg_set_entropy_len, .-mbedtls_ctr_drbg_set_entropy_len
	.section	.text.mbedtls_ctr_drbg_set_nonce_len,"ax",@progbits
	.align	1
	.globl	mbedtls_ctr_drbg_set_nonce_len
	.type	mbedtls_ctr_drbg_set_nonce_len, @function
mbedtls_ctr_drbg_set_nonce_len:
.LFB21:
	.loc 3 129 1
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
	.loc 3 132 12
	lw	a5,-20(s0)
	lw	a5,312(a5)
	.loc 3 132 8
	beq	a5,zero,.L14
	.loc 3 133 16
	li	a5,-52
	j	.L15
.L14:
	.loc 3 136 8
	lw	a4,-24(s0)
	li	a5,384
	bleu	a4,a5,.L16
	.loc 3 137 16
	li	a5,-56
	j	.L15
.L16:
	.loc 3 143 13
	lw	a5,-24(s0)
	.loc 3 143 8
	bge	a5,zero,.L17
	.loc 3 144 16
	li	a5,-56
	j	.L15
.L17:
	.loc 3 151 27
	lw	a4,-24(s0)
	.loc 3 151 25
	lw	a5,-20(s0)
	sw	a4,16(a5)
	.loc 3 152 12
	li	a5,0
.L15:
	.loc 3 153 1
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
.LFE21:
	.size	mbedtls_ctr_drbg_set_nonce_len, .-mbedtls_ctr_drbg_set_nonce_len
	.section	.text.mbedtls_ctr_drbg_set_reseed_interval,"ax",@progbits
	.align	1
	.globl	mbedtls_ctr_drbg_set_reseed_interval
	.type	mbedtls_ctr_drbg_set_reseed_interval, @function
mbedtls_ctr_drbg_set_reseed_interval:
.LFB22:
	.loc 3 157 1
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
	.loc 3 158 26
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,28(a5)
	.loc 3 159 1
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
.LFE22:
	.size	mbedtls_ctr_drbg_set_reseed_interval, .-mbedtls_ctr_drbg_set_reseed_interval
	.section	.text.block_cipher_df,"ax",@progbits
	.align	1
	.type	block_cipher_df, @function
block_cipher_df:
.LFB23:
	.loc 3 163 1
	.cfi_startproc
	addi	sp,sp,-896
	.cfi_def_cfa_offset 896
	sw	ra,892(sp)
	sw	s0,888(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,896
	.cfi_def_cfa 8, 0
	sw	a0,-884(s0)
	sw	a1,-888(s0)
	sw	a2,-892(s0)
	.loc 3 170 9
	sw	zero,-24(s0)
	.loc 3 185 8
	lw	a4,-892(s0)
	li	a5,384
	bleu	a4,a5,.L20
	.loc 3 186 16
	li	a5,-56
	j	.L38
.L20:
	.loc 3 189 5
	addi	a5,s0,-492
	li	a2,416
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 3 199 7
	addi	a5,s0,-492
	addi	a5,a5,16
	sw	a5,-20(s0)
	.loc 3 200 129 discriminator 2
	lw	a0,-892(s0)
	call	__bswapsi2
	mv	a5,a0
	mv	a4,a5
	lw	a5,-20(s0)
	sw	a5,-48(s0)
	sw	a4,-52(s0)
.LBB20:
.LBB21:
	.loc 2 200 33
	lw	a5,-48(s0)
	sw	a5,-56(s0)
	.loc 2 201 12
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-52(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-52(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-52(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 2 205 1
	nop
.LBE21:
.LBE20:
	.loc 3 201 7
	lw	a5,-20(s0)
	addi	a5,a5,7
	sw	a5,-20(s0)
	.loc 3 202 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 3 202 10
	li	a4,48
	sb	a4,0(a5)
	.loc 3 203 5
	lw	a2,-892(s0)
	lw	a1,-888(s0)
	lw	a0,-20(s0)
	call	memcpy
	.loc 3 204 6
	lw	a4,-20(s0)
	lw	a5,-892(s0)
	add	a5,a4,a5
	.loc 3 204 17
	li	a4,-128
	sb	a4,0(a5)
	.loc 3 206 13
	lw	a5,-892(s0)
	addi	a5,a5,25
	sw	a5,-40(s0)
	.loc 3 208 12
	sw	zero,-28(s0)
	.loc 3 208 5
	j	.L22
.L23:
	.loc 3 209 16
	lw	a5,-28(s0)
	andi	a4,a5,0xff
	lw	a5,-28(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-556(a5)
	.loc 3 208 26 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L22:
	.loc 3 208 19 discriminator 1
	lw	a4,-28(s0)
	li	a5,31
	ble	a4,a5,.L23
	.loc 3 219 5
	addi	a5,s0,-868
	mv	a0,a5
	call	mbedtls_aes_init
	.loc 3 221 16
	addi	a4,s0,-572
	addi	a5,s0,-868
	li	a2,256
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_aes_setkey_enc
	sw	a0,-24(s0)
	.loc 3 221 8 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L39
	.loc 3 230 12
	sw	zero,-32(s0)
	.loc 3 230 5
	j	.L26
.L32:
	.loc 3 231 11
	addi	a5,s0,-492
	sw	a5,-20(s0)
	.loc 3 232 9
	addi	a5,s0,-588
	li	a2,16
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 3 233 17
	lw	a5,-40(s0)
	sw	a5,-36(s0)
	.loc 3 235 15
	j	.L27
.L31:
	addi	a5,s0,-588
	sw	a5,-60(s0)
	addi	a5,s0,-588
	sw	a5,-64(s0)
	lw	a5,-20(s0)
	sw	a5,-68(s0)
	li	a5,16
	sw	a5,-72(s0)
.LBB22:
.LBB23:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/common.h"
	.loc 4 191 12
	sw	zero,-76(s0)
	.loc 4 234 5
	j	.L28
.L29:
	.loc 4 235 17
	lw	a4,-64(s0)
	lw	a5,-76(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 4 235 24
	lw	a4,-68(s0)
	lw	a5,-76(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 4 235 10
	lw	a2,-60(s0)
	lw	a5,-76(s0)
	add	a5,a2,a5
	.loc 4 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 4 234 20 discriminator 2
	lw	a5,-76(s0)
	addi	a5,a5,1
	sw	a5,-76(s0)
.L28:
	.loc 4 234 14 discriminator 1
	lw	a4,-72(s0)
	lw	a5,-76(s0)
	bgtu	a4,a5,.L29
	.loc 4 237 1
	nop
.LBE23:
.LBE22:
	.loc 3 237 15
	lw	a5,-20(s0)
	addi	a5,a5,16
	sw	a5,-20(s0)
	.loc 3 239 27
	lw	a5,-36(s0)
	li	a4,16
	bleu	a5,a4,.L30
	li	a5,16
.L30:
	.loc 3 238 21
	lw	a4,-36(s0)
	sub	a5,a4,a5
	sw	a5,-36(s0)
	.loc 3 249 24
	addi	a3,s0,-588
	addi	a4,s0,-588
	addi	a5,s0,-868
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	mbedtls_aes_crypt_ecb
	sw	a0,-24(s0)
	.loc 3 249 16 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L40
.L27:
	.loc 3 235 24
	lw	a5,-36(s0)
	bne	a5,zero,.L31
	.loc 3 256 9
	lw	a5,-32(s0)
	addi	a4,s0,-540
	add	a5,a4,a5
	addi	a4,s0,-588
	li	a2,16
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 3 261 12
	lbu	a5,-489(s0)
	.loc 3 261 15
	addi	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,-489(s0)
	.loc 3 230 34 discriminator 2
	lw	a5,-32(s0)
	addi	a5,a5,16
	sw	a5,-32(s0)
.L26:
	.loc 3 230 19 discriminator 1
	lw	a4,-32(s0)
	li	a5,47
	ble	a4,a5,.L32
	.loc 3 276 16
	addi	a4,s0,-540
	addi	a5,s0,-868
	li	a2,256
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_aes_setkey_enc
	sw	a0,-24(s0)
	.loc 3 276 8 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L41
	.loc 3 281 8
	addi	a5,s0,-540
	addi	a5,a5,32
	sw	a5,-44(s0)
	.loc 3 282 7
	lw	a5,-884(s0)
	sw	a5,-20(s0)
	.loc 3 284 12
	sw	zero,-32(s0)
	.loc 3 284 5
	j	.L34
.L36:
	.loc 3 293 20
	addi	a5,s0,-868
	lw	a3,-44(s0)
	lw	a2,-44(s0)
	li	a1,1
	mv	a0,a5
	call	mbedtls_aes_crypt_ecb
	sw	a0,-24(s0)
	.loc 3 293 12 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L42
	.loc 3 298 9
	li	a2,16
	lw	a1,-44(s0)
	lw	a0,-20(s0)
	call	memcpy
	.loc 3 299 11
	lw	a5,-20(s0)
	addi	a5,a5,16
	sw	a5,-20(s0)
	.loc 3 284 34 discriminator 2
	lw	a5,-32(s0)
	addi	a5,a5,16
	sw	a5,-32(s0)
.L34:
	.loc 3 284 19 discriminator 1
	lw	a4,-32(s0)
	li	a5,47
	ble	a4,a5,.L36
	.loc 3 301 1
	j	.L25
.L39:
	.loc 3 223 9
	nop
	j	.L25
.L40:
	.loc 3 251 17
	nop
	j	.L25
.L41:
	.loc 3 278 9
	nop
	j	.L25
.L42:
	.loc 3 295 13
	nop
.L25:
	.loc 3 305 5
	addi	a5,s0,-868
	mv	a0,a5
	call	mbedtls_aes_free
	.loc 3 310 5
	addi	a5,s0,-492
	li	a1,416
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 311 5
	addi	a5,s0,-540
	li	a1,48
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 312 5
	addi	a5,s0,-572
	li	a1,32
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 313 5
	addi	a5,s0,-588
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 314 8
	lw	a5,-24(s0)
	beq	a5,zero,.L37
	.loc 3 318 9
	li	a1,48
	lw	a0,-884(s0)
	call	mbedtls_platform_zeroize
.L37:
	.loc 3 321 12
	lw	a5,-24(s0)
.L38:
	.loc 3 322 1
	mv	a0,a5
	lw	ra,892(sp)
	.cfi_restore 1
	lw	s0,888(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 896
	addi	sp,sp,896
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	block_cipher_df, .-block_cipher_df
	.section	.text.ctr_drbg_update_internal,"ax",@progbits
	.align	1
	.type	ctr_drbg_update_internal, @function
ctr_drbg_update_internal:
.LFB24:
	.loc 3 334 1
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
	.loc 3 336 20
	addi	a5,s0,-96
	sw	a5,-20(s0)
	.loc 3 338 9
	sw	zero,-28(s0)
	.loc 3 344 5
	addi	a5,s0,-96
	li	a2,48
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 3 346 12
	sw	zero,-24(s0)
	.loc 3 346 5
	j	.L44
.L47:
	.loc 3 350 42
	lw	a5,-100(s0)
	.loc 3 350 9
	mv	a0,a5
	call	mbedtls_ctr_increment_counter
	.loc 3 363 20
	lw	a5,-100(s0)
	addi	a5,a5,32
	.loc 3 364 45
	lw	a4,-100(s0)
	.loc 3 363 20
	lw	a3,-20(s0)
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	mbedtls_aes_crypt_ecb
	sw	a0,-28(s0)
	.loc 3 363 12 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L52
	.loc 3 369 11
	lw	a5,-20(s0)
	addi	a5,a5,16
	sw	a5,-20(s0)
	.loc 3 346 34 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,16
	sw	a5,-24(s0)
.L44:
	.loc 3 346 19 discriminator 1
	lw	a4,-24(s0)
	li	a5,47
	ble	a4,a5,.L47
	addi	a5,s0,-96
	sw	a5,-32(s0)
	addi	a5,s0,-96
	sw	a5,-36(s0)
	lw	a5,-104(s0)
	sw	a5,-40(s0)
	li	a5,48
	sw	a5,-44(s0)
.LBB24:
.LBB25:
	.loc 4 191 12
	sw	zero,-48(s0)
	.loc 4 234 5
	j	.L48
.L49:
	.loc 4 235 17
	lw	a4,-36(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 4 235 24
	lw	a4,-40(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 4 235 10
	lw	a2,-32(s0)
	lw	a5,-48(s0)
	add	a5,a2,a5
	.loc 4 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 4 234 20 discriminator 2
	lw	a5,-48(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
.L48:
	.loc 4 234 14 discriminator 1
	lw	a4,-44(s0)
	lw	a5,-48(s0)
	bgtu	a4,a5,.L49
	.loc 4 237 1
	nop
.LBE25:
.LBE24:
	.loc 3 386 16
	lw	a5,-100(s0)
	addi	a5,a5,32
	addi	a4,s0,-96
	li	a2,256
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_aes_setkey_enc
	sw	a0,-28(s0)
	.loc 3 386 8 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L53
	.loc 3 391 15
	lw	a4,-100(s0)
	.loc 3 391 5
	addi	a5,s0,-96
	addi	a5,a5,32
	li	a2,16
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	j	.L46
.L52:
	.loc 3 365 13
	nop
	j	.L46
.L53:
	.loc 3 388 9
	nop
.L46:
	.loc 3 395 5
	addi	a5,s0,-96
	li	a1,48
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 396 12
	lw	a5,-28(s0)
	.loc 3 397 1
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
.LFE24:
	.size	ctr_drbg_update_internal, .-ctr_drbg_update_internal
	.section	.text.mbedtls_ctr_drbg_update,"ax",@progbits
	.align	1
	.globl	mbedtls_ctr_drbg_update
	.type	mbedtls_ctr_drbg_update, @function
mbedtls_ctr_drbg_update:
.LFB25:
	.loc 3 414 1
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
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	.loc 3 416 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 418 8
	lw	a5,-92(s0)
	bne	a5,zero,.L55
	.loc 3 419 16
	li	a5,0
	j	.L59
.L55:
	.loc 3 422 16
	addi	a5,s0,-68
	lw	a2,-92(s0)
	lw	a1,-88(s0)
	mv	a0,a5
	call	block_cipher_df
	sw	a0,-20(s0)
	.loc 3 422 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L60
	.loc 3 425 16
	addi	a5,s0,-68
	mv	a1,a5
	lw	a0,-84(s0)
	call	ctr_drbg_update_internal
	sw	a0,-20(s0)
	.loc 3 429 1
	j	.L58
.L60:
	.loc 3 423 9
	nop
.L58:
	.loc 3 430 5
	addi	a5,s0,-68
	li	a1,48
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 431 12
	lw	a5,-20(s0)
.L59:
	.loc 3 432 1
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
.LFE25:
	.size	mbedtls_ctr_drbg_update, .-mbedtls_ctr_drbg_update
	.section	.text.mbedtls_ctr_drbg_reseed_internal,"ax",@progbits
	.align	1
	.type	mbedtls_ctr_drbg_reseed_internal, @function
mbedtls_ctr_drbg_reseed_internal:
.LFB26:
	.loc 3 451 1
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
	sw	a1,-424(s0)
	sw	a2,-428(s0)
	sw	a3,-432(s0)
	.loc 3 453 12
	sw	zero,-20(s0)
	.loc 3 454 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 3 456 12
	lw	a5,-420(s0)
	lw	a4,24(a5)
	.loc 3 456 8
	li	a5,384
	bleu	a4,a5,.L62
	.loc 3 457 16
	li	a5,-56
	j	.L73
.L62:
	.loc 3 459 30
	lw	a5,-420(s0)
	lw	a5,24(a5)
	.loc 3 459 25
	li	a4,384
	sub	a5,a4,a5
	.loc 3 459 8
	lw	a4,-432(s0)
	bleu	a4,a5,.L64
	.loc 3 460 16
	li	a5,-56
	j	.L73
.L64:
	.loc 3 462 24
	lw	a5,-420(s0)
	lw	a4,24(a5)
	.loc 3 462 38
	lw	a5,-432(s0)
	add	a5,a4,a5
	li	a4,384
	sub	a5,a4,a5
	.loc 3 462 8
	lw	a4,-428(s0)
	bleu	a4,a5,.L65
	.loc 3 463 16
	li	a5,-56
	j	.L73
.L65:
	.loc 3 466 5
	addi	a5,s0,-408
	li	a2,384
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 3 469 17
	lw	a5,-420(s0)
	lw	a5,312(a5)
	.loc 3 469 14
	lw	a4,-420(s0)
	lw	a3,316(a4)
	lw	a4,-420(s0)
	lw	a2,24(a4)
	addi	a4,s0,-408
	mv	a1,a4
	mv	a0,a3
	jalr	a5
.LVL0:
	mv	a5,a0
	.loc 3 469 8 discriminator 1
	beq	a5,zero,.L66
	.loc 3 470 16
	li	a5,-52
	j	.L73
.L66:
	.loc 3 472 19
	lw	a5,-420(s0)
	lw	a5,24(a5)
	.loc 3 472 13
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 3 475 8
	lw	a5,-432(s0)
	beq	a5,zero,.L67
	.loc 3 476 21
	lw	a5,-420(s0)
	lw	a5,312(a5)
	.loc 3 476 18
	lw	a4,-420(s0)
	lw	a0,316(a4)
	addi	a3,s0,-408
	lw	a4,-20(s0)
	add	a4,a3,a4
	lw	a2,-432(s0)
	mv	a1,a4
	jalr	a5
.LVL1:
	mv	a5,a0
	.loc 3 476 12 discriminator 1
	beq	a5,zero,.L68
	.loc 3 477 20
	li	a5,-52
	j	.L73
.L68:
	.loc 3 479 17
	lw	a4,-20(s0)
	lw	a5,-432(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L67:
	.loc 3 483 8
	lw	a5,-424(s0)
	beq	a5,zero,.L69
	.loc 3 483 27 discriminator 1
	lw	a5,-428(s0)
	beq	a5,zero,.L69
	.loc 3 484 9
	addi	a4,s0,-408
	lw	a5,-20(s0)
	add	a5,a4,a5
	lw	a2,-428(s0)
	lw	a1,-424(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 485 17
	lw	a4,-20(s0)
	lw	a5,-428(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L69:
	.loc 3 489 16
	addi	a4,s0,-408
	addi	a5,s0,-408
	lw	a2,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	block_cipher_df
	sw	a0,-24(s0)
	.loc 3 489 8 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L74
	.loc 3 494 16
	addi	a5,s0,-408
	mv	a1,a5
	lw	a0,-420(s0)
	call	ctr_drbg_update_internal
	sw	a0,-24(s0)
	.loc 3 494 8 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L75
	.loc 3 497 25
	lw	a5,-420(s0)
	li	a4,1
	sw	a4,16(a5)
	j	.L71
.L74:
	.loc 3 490 9
	nop
	j	.L71
.L75:
	.loc 3 495 9
	nop
.L71:
	.loc 3 500 5
	addi	a5,s0,-408
	li	a1,384
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 501 12
	lw	a5,-24(s0)
.L73:
	.loc 3 502 1
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
.LFE26:
	.size	mbedtls_ctr_drbg_reseed_internal, .-mbedtls_ctr_drbg_reseed_internal
	.section	.text.mbedtls_ctr_drbg_reseed,"ax",@progbits
	.align	1
	.globl	mbedtls_ctr_drbg_reseed
	.type	mbedtls_ctr_drbg_reseed, @function
mbedtls_ctr_drbg_reseed:
.LFB27:
	.loc 3 506 1
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
	.loc 3 507 12
	li	a3,0
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ctr_drbg_reseed_internal
	mv	a5,a0
	.loc 3 508 1
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
.LFE27:
	.size	mbedtls_ctr_drbg_reseed, .-mbedtls_ctr_drbg_reseed
	.section	.text.good_nonce_len,"ax",@progbits
	.align	1
	.type	good_nonce_len, @function
good_nonce_len:
.LFB28:
	.loc 3 516 1
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
	.loc 3 517 8
	lw	a4,-20(s0)
	li	a5,47
	bleu	a4,a5,.L79
	.loc 3 518 16
	li	a5,0
	j	.L80
.L79:
	.loc 3 520 29
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 3 520 34
	srli	a5,a5,1
.L80:
	.loc 3 522 1
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
.LFE28:
	.size	good_nonce_len, .-good_nonce_len
	.section	.text.mbedtls_ctr_drbg_seed,"ax",@progbits
	.align	1
	.globl	mbedtls_ctr_drbg_seed
	.type	mbedtls_ctr_drbg_seed, @function
mbedtls_ctr_drbg_seed:
.LFB29:
	.loc 3 540 1
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
	.loc 3 541 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 3 545 5
	addi	a5,s0,-56
	li	a2,32
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 3 552 20
	lw	a5,-68(s0)
	lw	a4,-72(s0)
	sw	a4,312(a5)
	.loc 3 553 20
	lw	a5,-68(s0)
	lw	a4,-76(s0)
	sw	a4,316(a5)
	.loc 3 555 12
	lw	a5,-68(s0)
	lw	a5,24(a5)
	.loc 3 555 8
	bne	a5,zero,.L82
	.loc 3 556 26
	lw	a5,-68(s0)
	li	a4,32
	sw	a4,24(a5)
.L82:
	.loc 3 562 21
	lw	a5,-68(s0)
	lw	a5,16(a5)
	.loc 3 563 47
	blt	a5,zero,.L83
	.loc 3 563 30 discriminator 1
	lw	a5,-68(s0)
	lw	a5,16(a5)
	.loc 3 562 15
	sw	a5,-20(s0)
	j	.L84
.L83:
	.loc 3 564 18
	lw	a5,-68(s0)
	lw	a5,24(a5)
	mv	a0,a5
	call	good_nonce_len
	sw	a0,-20(s0)
.L84:
	.loc 3 576 16
	lw	a5,-68(s0)
	addi	a5,a5,32
	addi	a4,s0,-56
	li	a2,256
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_aes_setkey_enc
	sw	a0,-24(s0)
	.loc 3 576 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L85
	.loc 3 578 16
	lw	a5,-24(s0)
	j	.L88
.L85:
	.loc 3 583 16
	lw	a3,-20(s0)
	lw	a2,-84(s0)
	lw	a1,-80(s0)
	lw	a0,-68(s0)
	call	mbedtls_ctr_drbg_reseed_internal
	sw	a0,-24(s0)
	.loc 3 583 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L87
	.loc 3 585 16
	lw	a5,-24(s0)
	j	.L88
.L87:
	.loc 3 587 12
	li	a5,0
.L88:
	.loc 3 588 1
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
.LFE29:
	.size	mbedtls_ctr_drbg_seed, .-mbedtls_ctr_drbg_seed
	.section	.text.mbedtls_ctr_drbg_random_with_add,"ax",@progbits
	.align	1
	.globl	mbedtls_ctr_drbg_random_with_add
	.type	mbedtls_ctr_drbg_random_with_add, @function
mbedtls_ctr_drbg_random_with_add:
.LFB30:
	.loc 3 612 1
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
	.loc 3 613 9
	sw	zero,-20(s0)
	.loc 3 614 31
	lw	a5,-100(s0)
	sw	a5,-28(s0)
	.loc 3 615 20
	lw	a5,-104(s0)
	sw	a5,-24(s0)
	.loc 3 622 8
	lw	a4,-108(s0)
	li	a5,1024
	bleu	a4,a5,.L90
	.loc 3 623 16
	li	a5,-54
	j	.L104
.L90:
	.loc 3 626 8
	lw	a4,-116(s0)
	li	a5,256
	bleu	a4,a5,.L92
	.loc 3 627 16
	li	a5,-56
	j	.L104
.L92:
	.loc 3 630 5
	addi	a5,s0,-96
	li	a2,48
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 3 632 12
	lw	a5,-28(s0)
	lw	a4,16(a5)
	.loc 3 632 34
	lw	a5,-28(s0)
	lw	a5,28(a5)
	.loc 3 632 8
	bgt	a4,a5,.L93
	.loc 3 633 12
	lw	a5,-28(s0)
	lw	a5,20(a5)
	.loc 3 632 52 discriminator 1
	beq	a5,zero,.L94
.L93:
	.loc 3 634 20
	lw	a2,-116(s0)
	lw	a1,-112(s0)
	lw	a0,-28(s0)
	call	mbedtls_ctr_drbg_reseed
	sw	a0,-20(s0)
	.loc 3 634 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L95
	.loc 3 635 20
	lw	a5,-20(s0)
	j	.L104
.L95:
	.loc 3 637 17
	sw	zero,-116(s0)
.L94:
	.loc 3 640 8
	lw	a5,-116(s0)
	beq	a5,zero,.L99
	.loc 3 641 20
	addi	a5,s0,-96
	lw	a2,-116(s0)
	lw	a1,-112(s0)
	mv	a0,a5
	call	block_cipher_df
	sw	a0,-20(s0)
	.loc 3 641 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L105
	.loc 3 644 20
	addi	a5,s0,-96
	mv	a1,a5
	lw	a0,-28(s0)
	call	ctr_drbg_update_internal
	sw	a0,-20(s0)
	.loc 3 644 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L106
	.loc 3 649 11
	j	.L99
.L102:
	.loc 3 653 42
	lw	a5,-28(s0)
	.loc 3 653 9
	mv	a0,a5
	call	mbedtls_ctr_increment_counter
	.loc 3 669 20
	lw	a5,-28(s0)
	addi	a4,a5,32
	.loc 3 670 45
	lw	a2,-28(s0)
	.loc 3 669 20
	addi	a5,s0,-96
	addi	a5,a5,48
	mv	a3,a5
	li	a1,1
	mv	a0,a4
	call	mbedtls_aes_crypt_ecb
	sw	a0,-20(s0)
	.loc 3 669 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L107
	.loc 3 675 17
	lw	a5,-108(s0)
	li	a4,16
	bleu	a5,a4,.L101
	li	a5,16
.L101:
	sw	a5,-32(s0)
	.loc 3 680 9
	addi	a5,s0,-96
	addi	a5,a5,48
	lw	a2,-32(s0)
	mv	a1,a5
	lw	a0,-24(s0)
	call	memcpy
	.loc 3 681 11
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 682 20
	lw	a4,-108(s0)
	lw	a5,-32(s0)
	sub	a5,a4,a5
	sw	a5,-108(s0)
.L99:
	.loc 3 649 23
	lw	a5,-108(s0)
	bne	a5,zero,.L102
	.loc 3 685 16
	addi	a5,s0,-96
	mv	a1,a5
	lw	a0,-28(s0)
	call	ctr_drbg_update_internal
	sw	a0,-20(s0)
	.loc 3 685 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L108
	.loc 3 689 8
	lw	a5,-28(s0)
	lw	a5,16(a5)
	.loc 3 689 24
	addi	a4,a5,1
	lw	a5,-28(s0)
	sw	a4,16(a5)
	j	.L98
.L105:
	.loc 3 642 13
	nop
	j	.L98
.L106:
	.loc 3 645 13
	nop
	j	.L98
.L107:
	.loc 3 671 13
	nop
	j	.L98
.L108:
	.loc 3 686 9
	nop
.L98:
	.loc 3 692 5
	addi	a5,s0,-96
	li	a1,64
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 693 12
	lw	a5,-20(s0)
.L104:
	.loc 3 694 1
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
.LFE30:
	.size	mbedtls_ctr_drbg_random_with_add, .-mbedtls_ctr_drbg_random_with_add
	.section	.text.mbedtls_ctr_drbg_random,"ax",@progbits
	.align	1
	.globl	mbedtls_ctr_drbg_random
	.type	mbedtls_ctr_drbg_random, @function
mbedtls_ctr_drbg_random:
.LFB31:
	.loc 3 698 1
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
	.loc 3 699 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 700 31
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 3 708 11
	li	a4,0
	li	a3,0
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	mbedtls_ctr_drbg_random_with_add
	sw	a0,-20(s0)
	.loc 3 716 12
	lw	a5,-20(s0)
	.loc 3 717 1
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
	.size	mbedtls_ctr_drbg_random, .-mbedtls_ctr_drbg_random
	.section	.rodata.entropy_source_pr,"a"
	.align	2
	.type	entropy_source_pr, @object
	.size	entropy_source_pr, 112
entropy_source_pr:
	.base64	"ylj98rl3y0nU4FviOVDZimqzxS/fdNWFj9G6ZFR72x7F6iTA+gyQFQkgkkIyNkVFfSB2a8+iFcgvn7yIP4DRLLcW0YCe4cmziBshRe+hf87IkjVVKtkdjhI4rAFOOBh2nPK21BO2LHfA5+YMR0SVvg=="
	.section	.rodata.entropy_source_nopr,"a"
	.align	2
	.type	entropy_source_nopr, @object
	.size	entropy_source_nopr, 80
entropy_source_nopr:
	.base64	"TPshhnM0bZ1QySLkmw380JCt8E9cO6RzJ9/Nb6Y6eFwBaWKn/SeHokv2vkfvN4Pxt+xGByNjg0obATPywjiR208RpoZR8j46ix/cA7GSx+c="
	.section	.rodata.pers_pr,"a"
	.align	2
	.type	pers_pr, @object
	.size	pers_pr, 32
pers_pr:
	.base64	"WnCV6YFAUjORU3511hmdHq0NxqfebB/g6hgzqH4GIOk="
	.section	.rodata.pers_nopr,"a"
	.align	2
	.type	pers_nopr, @object
	.size	pers_nopr, 32
pers_nopr:
	.base64	"iO644Og78ylL2s1gmevkv1Xs2RE/ceXry0V189amims="
	.section	.rodata.result_pr,"a"
	.align	2
	.type	result_pr, @object
	.size	result_pr, 64
result_pr:
	.base64	"zi/bttm3OYUExcBCwjHGHZtaWfh+Dcxie2URVRDrnj2k+xxqGMB0293nAiNjIdA5+afEUoQ7SUByK7BsnNvDQw=="
	.section	.rodata.result_nopr,"a"
	.align	2
	.type	result_nopr, @object
	.size	result_nopr, 64
result_nopr:
	.base64	"pVGAoZC+862vKPa3lenx89bfobJ90EZ7DHX1+pMelxR1snyuA6KWVOL0CWbqM2QwQNFAD+Z3hzr4CXwf6fACmA=="
	.section	.sbss.test_offset,"aw",@nobits
	.align	2
	.type	test_offset, @object
	.size	test_offset, 4
test_offset:
	.zero	4
	.section	.text.ctr_drbg_self_test_entropy,"ax",@progbits
	.align	1
	.type	ctr_drbg_self_test_entropy, @function
ctr_drbg_self_test_entropy:
.LFB32:
	.loc 3 930 1
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
	.loc 3 931 26
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 3 932 5
	lui	a5,%hi(test_offset)
	lw	a5,%lo(test_offset)(a5)
	.loc 3 932 19
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 3 932 5
	lw	a2,-44(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 3 933 17
	lui	a5,%hi(test_offset)
	lw	a4,%lo(test_offset)(a5)
	lw	a5,-44(s0)
	add	a4,a4,a5
	lui	a5,%hi(test_offset)
	sw	a4,%lo(test_offset)(a5)
	.loc 3 934 12
	li	a5,0
	.loc 3 935 1
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
.LFE32:
	.size	ctr_drbg_self_test_entropy, .-ctr_drbg_self_test_entropy
	.section	.rodata
	.align	2
.LC0:
	.string	"  CTR_DRBG (PR = TRUE) : "
	.align	2
.LC1:
	.string	"failed\n"
	.align	2
.LC2:
	.string	"passed\n"
	.align	2
.LC3:
	.string	"  CTR_DRBG (PR = FALSE): "
	.align	2
.LC4:
	.string	"\n"
	.section	.text.mbedtls_ctr_drbg_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_ctr_drbg_self_test
	.type	mbedtls_ctr_drbg_self_test, @function
mbedtls_ctr_drbg_self_test:
.LFB33:
	.loc 3 950 1
	.cfi_startproc
	addi	sp,sp,-416
	.cfi_def_cfa_offset 416
	sw	ra,412(sp)
	sw	s0,408(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,416
	.cfi_def_cfa 8, 0
	sw	a0,-404(s0)
	.loc 3 954 5
	addi	a5,s0,-336
	mv	a0,a5
	call	mbedtls_ctr_drbg_init
	.loc 3 959 8
	lw	a5,-404(s0)
	beq	a5,zero,.L114
	.loc 3 960 9
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
.L114:
	.loc 3 963 17
	lui	a5,%hi(test_offset)
	sw	zero,%lo(test_offset)(a5)
	.loc 3 964 5
	addi	a5,s0,-336
	li	a1,32
	mv	a0,a5
	call	mbedtls_ctr_drbg_set_entropy_len
	.loc 3 965 5
	addi	a5,s0,-336
	li	a1,16
	mv	a0,a5
	call	mbedtls_ctr_drbg_set_nonce_len
	.loc 3 966 10
	addi	a0,s0,-336
	li	a4,32
	lui	a5,%hi(pers_pr)
	addi	a3,a5,%lo(pers_pr)
	lui	a5,%hi(entropy_source_pr)
	addi	a2,a5,%lo(entropy_source_pr)
	lui	a5,%hi(ctr_drbg_self_test_entropy)
	addi	a1,a5,%lo(ctr_drbg_self_test_entropy)
	call	mbedtls_ctr_drbg_seed
	mv	a5,a0
	.loc 3 966 8 discriminator 1
	beq	a5,zero,.L115
	.loc 3 966 119 discriminator 2
	lw	a5,-404(s0)
	beq	a5,zero,.L116
	.loc 3 966 134 discriminator 3
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L116:
	.loc 3 966 161 discriminator 6
	li	a5,1
	.loc 3 966 161 is_stmt 0
	j	.L138
.L115:
	.loc 3 970 5 is_stmt 1
	addi	a5,s0,-336
	li	a1,1
	mv	a0,a5
	call	mbedtls_ctr_drbg_set_prediction_resistance
	.loc 3 971 10
	addi	a4,s0,-400
	addi	a5,s0,-336
	li	a2,64
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ctr_drbg_random
	mv	a5,a0
	.loc 3 971 8 discriminator 1
	beq	a5,zero,.L118
	.loc 3 971 61 discriminator 2
	lw	a5,-404(s0)
	beq	a5,zero,.L119
	.loc 3 971 76 discriminator 3
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L119:
	.loc 3 971 103 discriminator 6
	li	a5,1
	.loc 3 971 103 is_stmt 0
	j	.L138
.L118:
	.loc 3 972 10 is_stmt 1
	addi	a4,s0,-400
	addi	a5,s0,-336
	li	a2,64
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ctr_drbg_random
	mv	a5,a0
	.loc 3 972 8 discriminator 1
	beq	a5,zero,.L120
	.loc 3 972 76 discriminator 2
	lw	a5,-404(s0)
	beq	a5,zero,.L121
	.loc 3 972 91 discriminator 3
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L121:
	.loc 3 972 118 discriminator 6
	li	a5,1
	.loc 3 972 118 is_stmt 0
	j	.L138
.L120:
	.loc 3 973 10 is_stmt 1
	addi	a4,s0,-400
	li	a2,64
	lui	a5,%hi(result_pr)
	addi	a1,a5,%lo(result_pr)
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 3 973 8 discriminator 1
	beq	a5,zero,.L122
	.loc 3 973 64 discriminator 2
	lw	a5,-404(s0)
	beq	a5,zero,.L123
	.loc 3 973 79 discriminator 3
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L123:
	.loc 3 973 106 discriminator 6
	li	a5,1
	.loc 3 973 106 is_stmt 0
	j	.L138
.L122:
	.loc 3 975 5 is_stmt 1
	addi	a5,s0,-336
	mv	a0,a5
	call	mbedtls_ctr_drbg_free
	.loc 3 977 8
	lw	a5,-404(s0)
	beq	a5,zero,.L124
	.loc 3 978 9
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L124:
	.loc 3 984 8
	lw	a5,-404(s0)
	beq	a5,zero,.L125
	.loc 3 985 9
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
.L125:
	.loc 3 988 5
	addi	a5,s0,-336
	mv	a0,a5
	call	mbedtls_ctr_drbg_init
	.loc 3 990 17
	lui	a5,%hi(test_offset)
	sw	zero,%lo(test_offset)(a5)
	.loc 3 991 5
	addi	a5,s0,-336
	li	a1,32
	mv	a0,a5
	call	mbedtls_ctr_drbg_set_entropy_len
	.loc 3 992 5
	addi	a5,s0,-336
	li	a1,16
	mv	a0,a5
	call	mbedtls_ctr_drbg_set_nonce_len
	.loc 3 993 10
	addi	a0,s0,-336
	li	a4,32
	lui	a5,%hi(pers_nopr)
	addi	a3,a5,%lo(pers_nopr)
	lui	a5,%hi(entropy_source_nopr)
	addi	a2,a5,%lo(entropy_source_nopr)
	lui	a5,%hi(ctr_drbg_self_test_entropy)
	addi	a1,a5,%lo(ctr_drbg_self_test_entropy)
	call	mbedtls_ctr_drbg_seed
	mv	a5,a0
	.loc 3 993 8 discriminator 1
	beq	a5,zero,.L126
	.loc 3 993 123 discriminator 2
	lw	a5,-404(s0)
	beq	a5,zero,.L127
	.loc 3 993 138 discriminator 3
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L127:
	.loc 3 993 165 discriminator 6
	li	a5,1
	.loc 3 993 165 is_stmt 0
	j	.L138
.L126:
	.loc 3 997 10 is_stmt 1
	addi	a5,s0,-336
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	mbedtls_ctr_drbg_reseed
	mv	a5,a0
	.loc 3 997 8 discriminator 1
	beq	a5,zero,.L128
	.loc 3 997 21 discriminator 2
	lw	a5,-404(s0)
	beq	a5,zero,.L129
	.loc 3 997 36 discriminator 3
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L129:
	.loc 3 997 63 discriminator 6
	li	a5,1
	.loc 3 997 63 is_stmt 0
	j	.L138
.L128:
	.loc 3 998 10 is_stmt 1
	addi	a4,s0,-400
	addi	a5,s0,-336
	li	a2,64
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ctr_drbg_random
	mv	a5,a0
	.loc 3 998 8 discriminator 1
	beq	a5,zero,.L130
	.loc 3 998 61 discriminator 2
	lw	a5,-404(s0)
	beq	a5,zero,.L131
	.loc 3 998 76 discriminator 3
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L131:
	.loc 3 998 103 discriminator 6
	li	a5,1
	.loc 3 998 103 is_stmt 0
	j	.L138
.L130:
	.loc 3 999 10 is_stmt 1
	addi	a4,s0,-400
	addi	a5,s0,-336
	li	a2,64
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ctr_drbg_random
	mv	a5,a0
	.loc 3 999 8 discriminator 1
	beq	a5,zero,.L132
	.loc 3 999 78 discriminator 2
	lw	a5,-404(s0)
	beq	a5,zero,.L133
	.loc 3 999 93 discriminator 3
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L133:
	.loc 3 999 120 discriminator 6
	li	a5,1
	.loc 3 999 120 is_stmt 0
	j	.L138
.L132:
	.loc 3 1000 10 is_stmt 1
	addi	a4,s0,-400
	li	a2,64
	lui	a5,%hi(result_nopr)
	addi	a1,a5,%lo(result_nopr)
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 3 1000 8 discriminator 1
	beq	a5,zero,.L134
	.loc 3 1000 68 discriminator 2
	lw	a5,-404(s0)
	beq	a5,zero,.L135
	.loc 3 1000 83 discriminator 3
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L135:
	.loc 3 1000 110 discriminator 6
	li	a5,1
	.loc 3 1000 110 is_stmt 0
	j	.L138
.L134:
	.loc 3 1002 5 is_stmt 1
	addi	a5,s0,-336
	mv	a0,a5
	call	mbedtls_ctr_drbg_free
	.loc 3 1004 8
	lw	a5,-404(s0)
	beq	a5,zero,.L136
	.loc 3 1005 9
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L136:
	.loc 3 1008 8
	lw	a5,-404(s0)
	beq	a5,zero,.L137
	.loc 3 1009 9
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.L137:
	.loc 3 1012 12
	li	a5,0
.L138:
	.loc 3 1013 1
	mv	a0,a5
	lw	ra,412(sp)
	.cfi_restore 1
	lw	s0,408(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 416
	addi	sp,sp,416
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	mbedtls_ctr_drbg_self_test, .-mbedtls_ctr_drbg_self_test
	.text
.Letext0:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc90
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x25
	.4byte	.LASF84
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xf
	.4byte	0x32
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x26
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x10
	.4byte	.LASF12
	.byte	0x5
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x10
	.4byte	.LASF13
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x10
	.4byte	.LASF14
	.byte	0x6
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x27
	.byte	0x4
	.uleb128 0x18
	.4byte	0xa1
	.uleb128 0xa
	.4byte	0x32
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0xf
	.4byte	0xad
	.uleb128 0xa
	.4byte	0xb4
	.uleb128 0x18
	.4byte	0xb9
	.uleb128 0xa
	.4byte	0xcd
	.uleb128 0x18
	.4byte	0xc3
	.uleb128 0x28
	.uleb128 0x29
	.byte	0x4
	.byte	0x2
	.byte	0x59
	.byte	0x9
	.4byte	0xe3
	.uleb128 0x19
	.string	"x"
	.byte	0x2
	.byte	0x5a
	.byte	0xe
	.4byte	0x95
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF16
	.byte	0x2
	.byte	0x5b
	.byte	0x1b
	.4byte	0xce
	.uleb128 0x2a
	.4byte	0x68
	.4byte	0x108
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0xa8
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF18
	.2byte	0x118
	.byte	0x7
	.byte	0x3f
	.4byte	0x13c
	.uleb128 0x19
	.string	"nr"
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x7
	.byte	0x41
	.byte	0xc
	.4byte	0x76
	.byte	0x4
	.uleb128 0x19
	.string	"buf"
	.byte	0x7
	.byte	0x47
	.byte	0xe
	.4byte	0x13c
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	0x95
	.4byte	0x14c
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x43
	.byte	0
	.uleb128 0x10
	.4byte	.LASF18
	.byte	0x7
	.byte	0x51
	.byte	0x1
	.4byte	0x108
	.uleb128 0x1d
	.4byte	.LASF19
	.2byte	0x140
	.byte	0x8
	.byte	0xb9
	.4byte	0x1ce
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x8
	.byte	0xba
	.byte	0x13
	.4byte	0x1ce
	.byte	0
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x8
	.byte	0xbb
	.byte	0x9
	.4byte	0x68
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x8
	.byte	0xc5
	.byte	0x9
	.4byte	0x68
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x8
	.byte	0xc9
	.byte	0xc
	.4byte	0x76
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0x68
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x8
	.byte	0xd2
	.byte	0x19
	.4byte	0x14c
	.byte	0x20
	.uleb128 0x1e
	.4byte	.LASF26
	.byte	0xd8
	.byte	0xa
	.4byte	0x1de
	.2byte	0x138
	.uleb128 0x1e
	.4byte	.LASF27
	.byte	0xdb
	.byte	0xb
	.4byte	0xa1
	.2byte	0x13c
	.byte	0
	.uleb128 0x7
	.4byte	0x32
	.4byte	0x1de
	.uleb128 0xb
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0xef
	.uleb128 0x10
	.4byte	.LASF19
	.byte	0x8
	.byte	0xe8
	.byte	0x1
	.4byte	0x158
	.uleb128 0x7
	.4byte	0x39
	.4byte	0x1ff
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x6f
	.byte	0
	.uleb128 0xf
	.4byte	0x1ef
	.uleb128 0x4
	.4byte	.LASF28
	.2byte	0x362
	.byte	0x1c
	.4byte	0x1ff
	.uleb128 0x5
	.byte	0x3
	.4byte	entropy_source_pr
	.uleb128 0x7
	.4byte	0x39
	.4byte	0x226
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x4f
	.byte	0
	.uleb128 0xf
	.4byte	0x216
	.uleb128 0x4
	.4byte	.LASF29
	.2byte	0x372
	.byte	0x1c
	.4byte	0x226
	.uleb128 0x5
	.byte	0x3
	.4byte	entropy_source_nopr
	.uleb128 0x7
	.4byte	0x39
	.4byte	0x24d
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	0x23d
	.uleb128 0x4
	.4byte	.LASF30
	.2byte	0x37e
	.byte	0x1c
	.4byte	0x24d
	.uleb128 0x5
	.byte	0x3
	.4byte	pers_pr
	.uleb128 0x4
	.4byte	.LASF31
	.2byte	0x384
	.byte	0x1c
	.4byte	0x24d
	.uleb128 0x5
	.byte	0x3
	.4byte	pers_nopr
	.uleb128 0x7
	.4byte	0x39
	.4byte	0x286
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0xf
	.4byte	0x276
	.uleb128 0x4
	.4byte	.LASF32
	.2byte	0x38a
	.byte	0x1c
	.4byte	0x286
	.uleb128 0x5
	.byte	0x3
	.4byte	result_pr
	.uleb128 0x4
	.4byte	.LASF33
	.2byte	0x394
	.byte	0x1c
	.4byte	0x286
	.uleb128 0x5
	.byte	0x3
	.4byte	result_nopr
	.uleb128 0x4
	.4byte	.LASF34
	.2byte	0x39f
	.byte	0xf
	.4byte	0x76
	.uleb128 0x5
	.byte	0x3
	.4byte	test_offset
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x9
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x2e1
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0xa
	.byte	0xce
	.byte	0x5
	.4byte	0x68
	.4byte	0x2f8
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x2b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x7
	.byte	0xf7
	.byte	0x5
	.4byte	0x68
	.4byte	0x31d
	.uleb128 0x1
	.4byte	0x31d
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x322
	.uleb128 0x1
	.4byte	0xa8
	.byte	0
	.uleb128 0xa
	.4byte	0x14c
	.uleb128 0xa
	.4byte	0x39
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x7
	.byte	0x9b
	.byte	0x5
	.4byte	0x68
	.4byte	0x347
	.uleb128 0x1
	.4byte	0x31d
	.uleb128 0x1
	.4byte	0x322
	.uleb128 0x1
	.4byte	0x6f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x9
	.byte	0x1f
	.byte	0x8
	.4byte	0xa1
	.4byte	0x367
	.uleb128 0x1
	.4byte	0xa3
	.uleb128 0x1
	.4byte	0xc8
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF40
	.byte	0xb
	.byte	0x9f
	.4byte	0x37d
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF41
	.byte	0x7
	.byte	0x74
	.4byte	0x38e
	.uleb128 0x1
	.4byte	0x31d
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF42
	.byte	0x7
	.byte	0x6b
	.4byte	0x39f
	.uleb128 0x1
	.4byte	0x31d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x9
	.byte	0x21
	.byte	0x8
	.4byte	0xa1
	.4byte	0x3bf
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x12
	.4byte	.LASF46
	.2byte	0x3b5
	.4byte	0x68
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x409
	.uleb128 0x2
	.4byte	.LASF44
	.2byte	0x3b5
	.byte	0x24
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x3b7
	.byte	0x1e
	.4byte	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x3
	.string	"buf"
	.2byte	0x3b8
	.byte	0x13
	.4byte	0x409
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.byte	0
	.uleb128 0x7
	.4byte	0x32
	.4byte	0x419
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF60
	.2byte	0x3a0
	.4byte	0x68
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46d
	.uleb128 0x2
	.4byte	.LASF45
	.2byte	0x3a0
	.byte	0x2d
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"buf"
	.2byte	0x3a0
	.byte	0x42
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"len"
	.2byte	0x3a1
	.byte	0x2e
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"p"
	.2byte	0x3a3
	.byte	0x1a
	.4byte	0x322
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF47
	.2byte	0x2b8
	.4byte	0x68
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d2
	.uleb128 0x2
	.4byte	.LASF48
	.2byte	0x2b8
	.byte	0x23
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF49
	.2byte	0x2b8
	.byte	0x39
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF50
	.2byte	0x2b9
	.byte	0x24
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"ret"
	.2byte	0x2bb
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x2bc
	.byte	0x1f
	.4byte	0x4d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	0x1e3
	.uleb128 0x12
	.4byte	.LASF51
	.2byte	0x261
	.4byte	0x68
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5bd
	.uleb128 0x2
	.4byte	.LASF48
	.2byte	0x261
	.byte	0x2c
	.4byte	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.4byte	.LASF49
	.2byte	0x262
	.byte	0x35
	.4byte	0xa8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.4byte	.LASF50
	.2byte	0x262
	.byte	0x44
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2
	.4byte	.LASF52
	.2byte	0x263
	.byte	0x3b
	.4byte	0x322
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2
	.4byte	.LASF53
	.2byte	0x263
	.byte	0x4e
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x3
	.string	"ret"
	.2byte	0x265
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x266
	.byte	0x1f
	.4byte	0x4d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.string	"p"
	.2byte	0x267
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.byte	0x40
	.byte	0x3
	.2byte	0x268
	.byte	0x5
	.4byte	0x592
	.uleb128 0x2d
	.4byte	.LASF54
	.byte	0x3
	.2byte	0x269
	.byte	0x17
	.4byte	0x5bd
	.byte	0
	.uleb128 0x2e
	.string	"tmp"
	.byte	0x3
	.2byte	0x26a
	.byte	0x17
	.4byte	0x1ce
	.byte	0x30
	.byte	0
	.uleb128 0x4
	.4byte	.LASF55
	.2byte	0x26b
	.byte	0x7
	.4byte	0x56b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x4
	.4byte	.LASF56
	.2byte	0x26c
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.4byte	.LASF66
	.2byte	0x2b3
	.4byte	.L98
	.byte	0
	.uleb128 0x7
	.4byte	0x32
	.4byte	0x5cd
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x2f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF57
	.2byte	0x217
	.4byte	0x68
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x664
	.uleb128 0x8
	.string	"ctx"
	.2byte	0x217
	.byte	0x35
	.4byte	0x4d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF26
	.2byte	0x218
	.byte	0x21
	.4byte	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF27
	.2byte	0x219
	.byte	0x21
	.4byte	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.4byte	.LASF58
	.2byte	0x21a
	.byte	0x30
	.4byte	0x322
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x8
	.string	"len"
	.2byte	0x21b
	.byte	0x22
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3
	.string	"ret"
	.2byte	0x21d
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"key"
	.2byte	0x21e
	.byte	0x13
	.4byte	0x664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF59
	.2byte	0x21f
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	0x32
	.4byte	0x674
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF61
	.byte	0x3
	.2byte	0x203
	.byte	0xf
	.4byte	0x76
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69f
	.uleb128 0x2
	.4byte	.LASF23
	.2byte	0x203
	.byte	0x25
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF62
	.2byte	0x1f8
	.4byte	0x68
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e6
	.uleb128 0x8
	.string	"ctx"
	.2byte	0x1f8
	.byte	0x37
	.4byte	0x4d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF52
	.2byte	0x1f9
	.byte	0x32
	.4byte	0x322
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"len"
	.2byte	0x1f9
	.byte	0x45
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF63
	.2byte	0x1bf
	.4byte	0x68
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x779
	.uleb128 0x8
	.string	"ctx"
	.2byte	0x1bf
	.byte	0x47
	.4byte	0x4d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x2
	.4byte	.LASF52
	.2byte	0x1c0
	.byte	0x42
	.4byte	0x322
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x8
	.string	"len"
	.2byte	0x1c1
	.byte	0x34
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x2
	.4byte	.LASF59
	.2byte	0x1c2
	.byte	0x34
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x4
	.4byte	.LASF64
	.2byte	0x1c4
	.byte	0x13
	.4byte	0x779
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x4
	.4byte	.LASF65
	.2byte	0x1c5
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"ret"
	.2byte	0x1c6
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF66
	.2byte	0x1f3
	.4byte	.L71
	.byte	0
	.uleb128 0x7
	.4byte	0x32
	.4byte	0x78a
	.uleb128 0x1f
	.4byte	0x6f
	.2byte	0x17f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF67
	.2byte	0x19b
	.4byte	0x68
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7fe
	.uleb128 0x8
	.string	"ctx"
	.2byte	0x19b
	.byte	0x37
	.4byte	0x4d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.4byte	.LASF52
	.2byte	0x19c
	.byte	0x32
	.4byte	0x322
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.4byte	.LASF53
	.2byte	0x19d
	.byte	0x24
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x4
	.4byte	.LASF54
	.2byte	0x19f
	.byte	0x13
	.4byte	0x5bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.string	"ret"
	.2byte	0x1a0
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF66
	.2byte	0x1ad
	.4byte	.L58
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF68
	.2byte	0x14c
	.4byte	0x68
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b6
	.uleb128 0x8
	.string	"ctx"
	.2byte	0x14c
	.byte	0x3f
	.4byte	0x4d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.4byte	.LASF45
	.2byte	0x14d
	.byte	0x39
	.4byte	0x322
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3
	.string	"tmp"
	.2byte	0x14f
	.byte	0x13
	.4byte	0x5bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3
	.string	"p"
	.2byte	0x150
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"j"
	.2byte	0x151
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"ret"
	.2byte	0x152
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LASF66
	.2byte	0x18a
	.4byte	.L46
	.uleb128 0x30
	.4byte	0xbf6
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x3
	.2byte	0x174
	.byte	0x5
	.uleb128 0x5
	.4byte	0xc01
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	0xc0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	0xc15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	0xc1f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	0xc29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF69
	.byte	0x3
	.byte	0xa1
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa20
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0xa1
	.byte	0x2b
	.4byte	0xa8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -884
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0xa2
	.byte	0x31
	.4byte	0x322
	.uleb128 0x3
	.byte	0x91
	.sleb128 -888
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0xa2
	.byte	0x3e
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -892
	.uleb128 0x9
	.string	"buf"
	.byte	0x3
	.byte	0xa4
	.byte	0x13
	.4byte	0xa20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -492
	.uleb128 0x9
	.string	"tmp"
	.byte	0x3
	.byte	0xa6
	.byte	0x13
	.4byte	0x5bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -540
	.uleb128 0x9
	.string	"key"
	.byte	0x3
	.byte	0xa7
	.byte	0x13
	.4byte	0x664
	.uleb128 0x3
	.byte	0x91
	.sleb128 -572
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0xa8
	.byte	0x13
	.4byte	0x1ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -588
	.uleb128 0x9
	.string	"p"
	.byte	0x3
	.byte	0xa9
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"iv"
	.byte	0x3
	.byte	0xa9
	.byte	0x18
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.string	"ret"
	.byte	0x3
	.byte	0xaa
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.4byte	.LASF25
	.byte	0xb3
	.byte	0x19
	.4byte	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -868
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.byte	0xb6
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.string	"j"
	.byte	0x3
	.byte	0xb6
	.byte	0xc
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0xb7
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.4byte	.LASF56
	.byte	0xb7
	.byte	0x15
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.4byte	.LASF66
	.2byte	0x12d
	.4byte	.L25
	.uleb128 0x20
	.4byte	0xc34
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x3
	.byte	0xc8
	.byte	0x59
	.4byte	0x9e3
	.uleb128 0x5
	.4byte	0xc3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	0xc49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.4byte	0xc53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x21
	.4byte	0xbf6
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x3
	.byte	0xec
	.byte	0xd
	.uleb128 0x5
	.4byte	0xc01
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.4byte	0xc0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.4byte	0xc15
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.4byte	0xc1f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.4byte	0xc29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x32
	.4byte	0xa31
	.uleb128 0x1f
	.4byte	0x6f
	.2byte	0x19f
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF75
	.byte	0x9b
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa63
	.uleb128 0xc
	.string	"ctx"
	.byte	0x3
	.byte	0x9b
	.byte	0x45
	.4byte	0x4d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x9c
	.byte	0x2f
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.4byte	.LASF74
	.byte	0x3
	.byte	0x7f
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa9c
	.uleb128 0xc
	.string	"ctx"
	.byte	0x3
	.byte	0x7f
	.byte	0x3e
	.4byte	0x4d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"len"
	.byte	0x3
	.byte	0x80
	.byte	0x2b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF76
	.byte	0x79
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xacf
	.uleb128 0xc
	.string	"ctx"
	.byte	0x3
	.byte	0x79
	.byte	0x41
	.4byte	0x4d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"len"
	.byte	0x3
	.byte	0x7a
	.byte	0x2e
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF77
	.byte	0x73
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb01
	.uleb128 0xc
	.string	"ctx"
	.byte	0x3
	.byte	0x73
	.byte	0x4b
	.4byte	0x4d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x74
	.byte	0x35
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.4byte	.LASF79
	.byte	0x5d
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb25
	.uleb128 0xc
	.string	"ctx"
	.byte	0x3
	.byte	0x5d
	.byte	0x36
	.4byte	0x4d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.4byte	.LASF80
	.byte	0x49
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb49
	.uleb128 0xc
	.string	"ctx"
	.byte	0x3
	.byte	0x49
	.byte	0x36
	.4byte	0x4d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.4byte	.LASF85
	.byte	0x1
	.byte	0x15
	.byte	0x14
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf1
	.uleb128 0xc
	.string	"n"
	.byte	0x1
	.byte	0x15
	.byte	0x3a
	.4byte	0xbf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x19
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x9
	.string	"x"
	.byte	0x1
	.byte	0x1a
	.byte	0x12
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.4byte	0xc65
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x1a
	.byte	0x5e
	.4byte	0xbc5
	.uleb128 0x5
	.4byte	0xc72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	0xc7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	0xc86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.4byte	0xc34
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x1c
	.byte	0x5b
	.uleb128 0x5
	.4byte	0xc3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	0xc49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	0xc53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x89
	.uleb128 0x24
	.4byte	.LASF81
	.byte	0x4
	.byte	0xba
	.4byte	0xc34
	.uleb128 0xe
	.string	"r"
	.byte	0x4
	.byte	0xba
	.byte	0x2f
	.4byte	0xa8
	.uleb128 0xe
	.string	"a"
	.byte	0x4
	.byte	0xbb
	.byte	0x35
	.4byte	0x322
	.uleb128 0xe
	.string	"b"
	.byte	0x4
	.byte	0xbc
	.byte	0x35
	.4byte	0x322
	.uleb128 0xe
	.string	"n"
	.byte	0x4
	.byte	0xbd
	.byte	0x27
	.4byte	0x76
	.uleb128 0x17
	.string	"i"
	.byte	0x4
	.byte	0xbf
	.byte	0xc
	.4byte	0x76
	.byte	0
	.uleb128 0x24
	.4byte	.LASF82
	.byte	0x2
	.byte	0xc2
	.4byte	0xc60
	.uleb128 0xe
	.string	"p"
	.byte	0x2
	.byte	0xc2
	.byte	0x37
	.4byte	0xa1
	.uleb128 0xe
	.string	"x"
	.byte	0x2
	.byte	0xc2
	.byte	0x43
	.4byte	0x95
	.uleb128 0x17
	.string	"p32"
	.byte	0x2
	.byte	0xc8
	.byte	0x21
	.4byte	0xc60
	.byte	0
	.uleb128 0xa
	.4byte	0xe3
	.uleb128 0x34
	.4byte	.LASF83
	.byte	0x2
	.byte	0xa7
	.byte	0x18
	.4byte	0x95
	.byte	0x3
	.uleb128 0xe
	.string	"p"
	.byte	0x2
	.byte	0xa7
	.byte	0x41
	.4byte	0xc3
	.uleb128 0x17
	.string	"r"
	.byte	0x2
	.byte	0xa9
	.byte	0xe
	.4byte	0x95
	.uleb128 0x17
	.string	"p32"
	.byte	0x2
	.byte	0xae
	.byte	0x21
	.4byte	0xc60
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x9
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
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
	.sleb128 3
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
	.uleb128 0x18
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
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
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
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
	.4byte	.LFB11
	.uleb128 .LFE11-.LFB11
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
.LASF36:
	.string	"printf"
.LASF12:
	.string	"size_t"
.LASF81:
	.string	"mbedtls_xor"
.LASF63:
	.string	"mbedtls_ctr_drbg_reseed_internal"
.LASF56:
	.string	"use_len"
.LASF26:
	.string	"f_entropy"
.LASF60:
	.string	"ctr_drbg_self_test_entropy"
.LASF9:
	.string	"long long unsigned int"
.LASF67:
	.string	"mbedtls_ctr_drbg_update"
.LASF33:
	.string	"result_nopr"
.LASF50:
	.string	"output_len"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF59:
	.string	"nonce_len"
.LASF75:
	.string	"mbedtls_ctr_drbg_set_reseed_interval"
.LASF62:
	.string	"mbedtls_ctr_drbg_reseed"
.LASF83:
	.string	"mbedtls_get_unaligned_uint32"
.LASF31:
	.string	"pers_nopr"
.LASF6:
	.string	"long int"
.LASF72:
	.string	"buf_len"
.LASF76:
	.string	"mbedtls_ctr_drbg_set_entropy_len"
.LASF29:
	.string	"entropy_source_nopr"
.LASF78:
	.string	"resistance"
.LASF39:
	.string	"memcpy"
.LASF16:
	.string	"mbedtls_uint32_unaligned_t"
.LASF61:
	.string	"good_nonce_len"
.LASF58:
	.string	"custom"
.LASF73:
	.string	"interval"
.LASF55:
	.string	"locals"
.LASF10:
	.string	"unsigned int"
.LASF21:
	.string	"reseed_counter"
.LASF64:
	.string	"seed"
.LASF30:
	.string	"pers_pr"
.LASF7:
	.string	"long unsigned int"
.LASF45:
	.string	"data"
.LASF77:
	.string	"mbedtls_ctr_drbg_set_prediction_resistance"
.LASF5:
	.string	"short unsigned int"
.LASF57:
	.string	"mbedtls_ctr_drbg_seed"
.LASF48:
	.string	"p_rng"
.LASF80:
	.string	"mbedtls_ctr_drbg_init"
.LASF49:
	.string	"output"
.LASF53:
	.string	"add_len"
.LASF74:
	.string	"mbedtls_ctr_drbg_set_nonce_len"
.LASF11:
	.string	"long double"
.LASF79:
	.string	"mbedtls_ctr_drbg_free"
.LASF34:
	.string	"test_offset"
.LASF19:
	.string	"mbedtls_ctr_drbg_context"
.LASF65:
	.string	"seedlen"
.LASF27:
	.string	"p_entropy"
.LASF46:
	.string	"mbedtls_ctr_drbg_self_test"
.LASF3:
	.string	"unsigned char"
.LASF4:
	.string	"short int"
.LASF20:
	.string	"counter"
.LASF38:
	.string	"mbedtls_aes_setkey_enc"
.LASF70:
	.string	"data_len"
.LASF66:
	.string	"exit"
.LASF71:
	.string	"chain"
.LASF47:
	.string	"mbedtls_ctr_drbg_random"
.LASF23:
	.string	"entropy_len"
.LASF14:
	.string	"uint32_t"
.LASF15:
	.string	"char"
.LASF68:
	.string	"ctr_drbg_update_internal"
.LASF28:
	.string	"entropy_source_pr"
.LASF40:
	.string	"mbedtls_platform_zeroize"
.LASF44:
	.string	"verbose"
.LASF52:
	.string	"additional"
.LASF35:
	.string	"memcmp"
.LASF24:
	.string	"reseed_interval"
.LASF84:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF85:
	.string	"mbedtls_ctr_increment_counter"
.LASF43:
	.string	"memset"
.LASF42:
	.string	"mbedtls_aes_init"
.LASF13:
	.string	"uint8_t"
.LASF17:
	.string	"rk_offset"
.LASF32:
	.string	"result_pr"
.LASF82:
	.string	"mbedtls_put_unaligned_uint32"
.LASF41:
	.string	"mbedtls_aes_free"
.LASF18:
	.string	"mbedtls_aes_context"
.LASF37:
	.string	"mbedtls_aes_crypt_ecb"
.LASF54:
	.string	"add_input"
.LASF22:
	.string	"prediction_resistance"
.LASF25:
	.string	"aes_ctx"
.LASF69:
	.string	"block_cipher_df"
.LASF51:
	.string	"mbedtls_ctr_drbg_random_with_add"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ctr_drbg.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.globl	__bswapsi2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
