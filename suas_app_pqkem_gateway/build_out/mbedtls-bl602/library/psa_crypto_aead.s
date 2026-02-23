	.file	"psa_crypto_aead.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_aead.c"
	.section	.text.psa_get_key_type,"ax",@progbits
	.align	1
	.type	psa_get_key_type, @function
psa_get_key_type:
.LFB48:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_struct.h"
	.loc 1 427 1
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
	.loc 1 428 22
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	.loc 1 429 1
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
.LFE48:
	.size	psa_get_key_type, .-psa_get_key_type
	.section	.text.psa_aead_setup,"ax",@progbits
	.align	1
	.type	psa_aead_setup, @function
psa_aead_setup:
.LFB71:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_aead.c"
	.loc 2 32 1
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
	.loc 2 33 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 2 36 33
	lw	a5,-40(s0)
	lhu	a5,2(a5)
	.loc 2 36 12
	sw	a5,-28(s0)
	.loc 2 39 60
	lw	a5,-40(s0)
	lhu	a5,0(a5)
	.loc 2 39 14
	addi	a4,s0,-21
	addi	a3,s0,-22
	addi	a2,s0,-28
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_cipher_values_from_psa
	sw	a0,-20(s0)
	.loc 2 41 8
	lw	a5,-20(s0)
	beq	a5,zero,.L4
	.loc 2 42 16
	lw	a5,-20(s0)
	j	.L16
.L4:
	.loc 2 45 91
	lw	a4,-52(s0)
	li	a5,-4161536
	addi	a5,a5,-1
	and	a5,a4,a5
	.loc 2 45 5
	li	a4,88080384
	addi	a4,a4,256
	beq	a5,a4,.L6
	li	a4,88080384
	addi	a4,a4,512
	beq	a5,a4,.L7
	j	.L17
.L6:
	.loc 2 48 28
	lw	a5,-36(s0)
	li	a4,89128960
	addi	a4,a4,256
	sw	a4,0(a5)
	.loc 2 52 30
	lw	a5,-40(s0)
	lhu	a5,0(a5)
	.loc 2 52 38
	mv	a4,a5
	li	a5,28672
	and	a4,a4,a5
	.loc 2 52 16
	li	a5,8192
	bne	a4,a5,.L9
	.loc 2 52 117 discriminator 1
	lw	a5,-40(s0)
	lhu	a5,0(a5)
	.loc 2 52 131 discriminator 1
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	andi	a4,a5,7
	.loc 2 52 142 discriminator 1
	li	a5,4
	beq	a4,a5,.L10
.L9:
	.loc 2 53 24
	li	a5,-135
	j	.L16
.L10:
	.loc 2 56 13
	lw	a5,-36(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_ccm_init
	.loc 2 57 22
	lw	a5,-36(s0)
	addi	a5,a5,8
	lbu	a4,-21(s0)
	lw	a3,-28(s0)
	lw	a2,-44(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ccm_setkey
	mv	a5,a0
	.loc 2 57 22 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	.loc 2 60 16 is_stmt 1
	lw	a5,-20(s0)
	beq	a5,zero,.L18
	.loc 2 61 24
	lw	a5,-20(s0)
	j	.L16
.L7:
	.loc 2 68 28
	lw	a5,-36(s0)
	li	a4,89128960
	addi	a4,a4,512
	sw	a4,0(a5)
	.loc 2 72 30
	lw	a5,-40(s0)
	lhu	a5,0(a5)
	.loc 2 72 38
	mv	a4,a5
	li	a5,28672
	and	a4,a4,a5
	.loc 2 72 16
	li	a5,8192
	bne	a4,a5,.L13
	.loc 2 72 117 discriminator 1
	lw	a5,-40(s0)
	lhu	a5,0(a5)
	.loc 2 72 131 discriminator 1
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	andi	a4,a5,7
	.loc 2 72 142 discriminator 1
	li	a5,4
	beq	a4,a5,.L14
.L13:
	.loc 2 73 24
	li	a5,-135
	j	.L16
.L14:
	.loc 2 76 13
	lw	a5,-36(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_gcm_init
	.loc 2 77 22
	lw	a5,-36(s0)
	addi	a5,a5,8
	lbu	a4,-21(s0)
	lw	a3,-28(s0)
	lw	a2,-44(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_gcm_setkey
	mv	a5,a0
	.loc 2 77 22 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	.loc 2 80 16 is_stmt 1
	lw	a5,-20(s0)
	beq	a5,zero,.L19
	.loc 2 81 24
	lw	a5,-20(s0)
	j	.L16
.L17:
	.loc 2 107 20
	li	a5,-134
	j	.L16
.L18:
	.loc 2 63 13
	nop
	j	.L12
.L19:
	.loc 2 83 13
	nop
.L12:
	.loc 2 110 27
	lw	a0,-40(s0)
	call	psa_get_key_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 110 25 discriminator 1
	lw	a5,-36(s0)
	sh	a4,4(a5)
	.loc 2 112 71
	lw	a5,-52(s0)
	srli	a5,a5,16
	andi	a5,a5,0xff
	andi	a5,a5,63
	andi	a4,a5,0xff
	.loc 2 112 27
	lw	a5,-36(s0)
	sb	a4,7(a5)
	.loc 2 114 12
	li	a5,0
.L16:
	.loc 2 115 1
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
.LFE71:
	.size	psa_aead_setup, .-psa_aead_setup
	.section	.text.mbedtls_psa_aead_encrypt,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_aead_encrypt
	.type	mbedtls_psa_aead_encrypt, @function
mbedtls_psa_aead_encrypt:
.LFB72:
	.loc 2 125 1
	.cfi_startproc
	addi	sp,sp,-224
	.cfi_def_cfa_offset 224
	sw	ra,220(sp)
	sw	s0,216(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,224
	.cfi_def_cfa 8, 0
	addi	sp,sp,-2048
	addi	sp,sp,-2048
	li	t1,-4096
	addi	t1,t1,-16
	add	t1,t1,s0
	sw	a0,-164(t1)
	li	a0,-4096
	addi	a0,a0,-16
	add	a0,a0,s0
	sw	a1,-168(a0)
	li	a1,-4096
	addi	a1,a1,-16
	add	a1,a1,s0
	sw	a2,-172(a1)
	li	a2,-4096
	addi	a2,a2,-16
	add	a2,a2,s0
	sw	a3,-176(a2)
	li	a3,-4096
	addi	a3,a3,-16
	add	a3,a3,s0
	sw	a4,-180(a3)
	li	a4,-4096
	addi	a4,a4,-16
	add	a4,a4,s0
	sw	a5,-184(a4)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a6,-188(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a7,-192(a5)
	.loc 2 126 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 2 127 34
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	zero,-160(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sh	zero,-156(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-154(a5)
	andi	a4,a4,-2
	sb	a4,-154(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-153(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	zero,-152(a5)
	.loc 2 130 14
	li	a5,-4096
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a2,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a1,-4096
	addi	a1,a1,-160
	addi	a1,a1,-16
	add	a0,a1,s0
	lw	a4,-176(a4)
	lw	a3,-172(a3)
	lw	a2,-168(a2)
	lw	a1,-164(a5)
	call	psa_aead_setup
	sw	a0,-20(s0)
	.loc 2 133 8
	lw	a5,-20(s0)
	bne	a5,zero,.L29
	.loc 2 139 56
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-153(a5)
	mv	a4,a5
	.loc 2 139 45
	lw	a5,4(s0)
	add	a5,a4,a5
	.loc 2 139 8
	lw	a4,12(s0)
	bgeu	a4,a5,.L23
	.loc 2 140 16
	li	a5,-138
	sw	a5,-20(s0)
	.loc 2 141 9
	j	.L22
.L23:
	.loc 2 143 9
	lw	a4,8(s0)
	lw	a5,4(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 146 18
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-160(a5)
	.loc 2 146 8
	li	a5,89128960
	addi	a5,a5,256
	bne	a4,a5,.L24
	.loc 2 154 55
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-153(a5)
	.loc 2 147 18
	mv	a6,a5
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-4096
	addi	a4,a4,-16
	add	a4,a4,s0
	li	a3,-4096
	addi	a3,a3,-16
	add	a3,a3,s0
	li	a2,-4096
	addi	a2,a2,-16
	add	a2,a2,s0
	li	a1,-4096
	addi	a1,a1,-160
	addi	a1,a1,-16
	add	a1,a1,s0
	addi	a0,a1,8
	sw	a6,4(sp)
	lw	a1,-24(s0)
	sw	a1,0(sp)
	lw	a7,8(s0)
	lw	a6,0(s0)
	lw	a5,-192(a5)
	lw	a4,-188(a4)
	lw	a3,-184(a3)
	lw	a2,-180(a2)
	lw	a1,4(s0)
	call	mbedtls_ccm_encrypt_and_tag
	mv	a5,a0
	.loc 2 147 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L25
.L24:
	.loc 2 158 18 is_stmt 1
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-160(a5)
	.loc 2 158 8
	li	a5,89128960
	addi	a5,a5,512
	bne	a4,a5,.L26
	.loc 2 166 48
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-153(a5)
	.loc 2 159 18
	mv	a6,a5
	li	a5,-4096
	addi	a5,a5,-16
	add	a2,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-4096
	addi	a4,a4,-16
	add	a4,a4,s0
	li	a3,-4096
	addi	a3,a3,-16
	add	a3,a3,s0
	li	a1,-4096
	addi	a1,a1,-160
	addi	a1,a1,-16
	add	a1,a1,s0
	addi	a0,a1,8
	lw	a1,-24(s0)
	sw	a1,8(sp)
	sw	a6,4(sp)
	lw	a1,8(s0)
	sw	a1,0(sp)
	lw	a7,0(s0)
	lw	a6,-192(a2)
	lw	a5,-188(a5)
	lw	a4,-184(a4)
	lw	a3,-180(a3)
	lw	a2,4(s0)
	li	a1,1
	call	mbedtls_gcm_crypt_and_tag
	mv	a5,a0
	.loc 2 159 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L25
.L26:
	.loc 2 193 16 is_stmt 1
	li	a5,-134
	j	.L28
.L25:
	.loc 2 196 8
	lw	a5,-20(s0)
	bne	a5,zero,.L30
	.loc 2 197 58
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-153(a5)
	mv	a4,a5
	.loc 2 197 47
	lw	a5,4(s0)
	add	a4,a4,a5
	.loc 2 197 28
	lw	a5,16(s0)
	sw	a4,0(a5)
	j	.L22
.L29:
	.loc 2 134 9
	nop
	j	.L22
.L30:
	.loc 2 200 1
	nop
.L22:
	.loc 2 201 5
	li	a5,-4096
	addi	a5,a5,-160
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	mbedtls_psa_aead_abort
	.loc 2 203 12
	lw	a5,-20(s0)
.L28:
	.loc 2 204 1
	mv	a0,a5
	li	t0,4096
	add	sp,sp,t0
	.cfi_def_cfa 2, 224
	lw	ra,220(sp)
	.cfi_restore 1
	lw	s0,216(sp)
	.cfi_restore 8
	addi	sp,sp,224
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE72:
	.size	mbedtls_psa_aead_encrypt, .-mbedtls_psa_aead_encrypt
	.section	.text.psa_aead_unpadded_locate_tag,"ax",@progbits
	.align	1
	.type	psa_aead_unpadded_locate_tag, @function
psa_aead_unpadded_locate_tag:
.LFB73:
	.loc 2 216 1
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
	.loc 2 218 8
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	bleu	a4,a5,.L32
	.loc 2 219 16
	li	a5,-135
	j	.L33
.L32:
	.loc 2 221 20
	lw	a4,-44(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 222 8
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	bleu	a4,a5,.L34
	.loc 2 223 16
	li	a5,-138
	j	.L33
.L34:
	.loc 2 225 25
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a4,a4,a5
	.loc 2 225 12
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 2 226 12
	li	a5,0
.L33:
	.loc 2 227 1
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
.LFE73:
	.size	psa_aead_unpadded_locate_tag, .-psa_aead_unpadded_locate_tag
	.section	.text.mbedtls_psa_aead_decrypt,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_aead_decrypt
	.type	mbedtls_psa_aead_decrypt, @function
mbedtls_psa_aead_decrypt:
.LFB74:
	.loc 2 237 1
	.cfi_startproc
	addi	sp,sp,-240
	.cfi_def_cfa_offset 240
	sw	ra,236(sp)
	sw	s0,232(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,240
	.cfi_def_cfa 8, 0
	addi	sp,sp,-2048
	addi	sp,sp,-2048
	li	t1,-4096
	addi	t1,t1,-16
	add	t1,t1,s0
	sw	a0,-180(t1)
	li	a0,-4096
	addi	a0,a0,-16
	add	a0,a0,s0
	sw	a1,-184(a0)
	li	a1,-4096
	addi	a1,a1,-16
	add	a1,a1,s0
	sw	a2,-188(a1)
	li	a2,-4096
	addi	a2,a2,-16
	add	a2,a2,s0
	sw	a3,-192(a2)
	li	a3,-4096
	addi	a3,a3,-16
	add	a3,a3,s0
	sw	a4,-196(a3)
	li	a4,-4096
	addi	a4,a4,-16
	add	a4,a4,s0
	sw	a5,-200(a4)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a6,-204(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a7,-208(a5)
	.loc 2 238 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 2 239 34
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	zero,-160(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sh	zero,-156(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-154(a5)
	andi	a4,a4,-2
	sb	a4,-154(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-153(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	zero,-152(a5)
	.loc 2 240 20
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	zero,-164(a5)
	.loc 2 242 14
	li	a5,-4096
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a2,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a1,-4096
	addi	a1,a1,-160
	addi	a1,a1,-16
	add	a0,a1,s0
	lw	a4,-192(a4)
	lw	a3,-188(a3)
	lw	a2,-184(a2)
	lw	a1,-180(a5)
	call	psa_aead_setup
	sw	a0,-20(s0)
	.loc 2 245 8
	lw	a5,-20(s0)
	bne	a5,zero,.L45
	.loc 2 249 52
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-153(a5)
	.loc 2 249 14
	mv	a0,a5
	li	a5,-4096
	addi	a5,a5,-164
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a4,a5
	lw	a3,12(s0)
	lw	a2,4(s0)
	lw	a1,0(s0)
	call	psa_aead_unpadded_locate_tag
	sw	a0,-20(s0)
	.loc 2 252 8
	lw	a5,-20(s0)
	bne	a5,zero,.L46
	.loc 2 257 18
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-160(a5)
	.loc 2 257 8
	li	a5,89128960
	addi	a5,a5,256
	bne	a4,a5,.L39
	.loc 2 260 67
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-153(a5)
	mv	a4,a5
	.loc 2 258 18
	lw	a5,4(s0)
	sub	t1,a5,a4
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a1,-164(a5)
	.loc 2 265 52
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-153(a5)
	.loc 2 258 18
	mv	a6,a5
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-4096
	addi	a4,a4,-16
	add	a4,a4,s0
	li	a3,-4096
	addi	a3,a3,-16
	add	a3,a3,s0
	li	a2,-4096
	addi	a2,a2,-16
	add	a2,a2,s0
	li	a0,-4096
	addi	a0,a0,-160
	addi	a0,a0,-16
	add	a0,a0,s0
	addi	a0,a0,8
	sw	a6,4(sp)
	sw	a1,0(sp)
	lw	a7,8(s0)
	lw	a6,0(s0)
	lw	a5,-208(a5)
	lw	a4,-204(a4)
	lw	a3,-200(a3)
	lw	a2,-196(a2)
	mv	a1,t1
	call	mbedtls_ccm_auth_decrypt
	mv	a5,a0
	.loc 2 258 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L40
.L39:
	.loc 2 269 18 is_stmt 1
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-160(a5)
	.loc 2 269 8
	li	a5,89128960
	addi	a5,a5,512
	bne	a4,a5,.L41
	.loc 2 272 67
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-153(a5)
	mv	a4,a5
	.loc 2 270 18
	lw	a5,4(s0)
	sub	t1,a5,a4
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a6,-164(a5)
	.loc 2 276 52
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-153(a5)
	.loc 2 270 18
	mv	a7,a5
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-4096
	addi	a4,a4,-16
	add	a4,a4,s0
	li	a3,-4096
	addi	a3,a3,-16
	add	a3,a3,s0
	li	a2,-4096
	addi	a2,a2,-16
	add	a2,a2,s0
	li	a1,-4096
	addi	a1,a1,-160
	addi	a1,a1,-16
	add	a1,a1,s0
	addi	a0,a1,8
	lw	a1,8(s0)
	sw	a1,4(sp)
	lw	a1,0(s0)
	sw	a1,0(sp)
	lw	a5,-208(a5)
	lw	a4,-204(a4)
	lw	a3,-200(a3)
	lw	a2,-196(a2)
	mv	a1,t1
	call	mbedtls_gcm_auth_decrypt
	mv	a5,a0
	.loc 2 270 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L40
.L41:
	.loc 2 303 16 is_stmt 1
	li	a5,-134
	j	.L44
.L40:
	.loc 2 306 8
	lw	a5,-20(s0)
	bne	a5,zero,.L47
	.loc 2 307 58
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-153(a5)
	mv	a4,a5
	.loc 2 307 47
	lw	a5,4(s0)
	sub	a4,a5,a4
	.loc 2 307 27
	lw	a5,16(s0)
	sw	a4,0(a5)
	j	.L37
.L45:
	.loc 2 246 9
	nop
	j	.L37
.L46:
	.loc 2 253 9
	nop
	j	.L37
.L47:
	.loc 2 310 1
	nop
.L37:
	.loc 2 311 5
	li	a5,-4096
	addi	a5,a5,-160
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	mbedtls_psa_aead_abort
	.loc 2 313 8
	lw	a5,-20(s0)
	bne	a5,zero,.L43
	.loc 2 314 58
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-153(a5)
	mv	a4,a5
	.loc 2 314 47
	lw	a5,4(s0)
	sub	a4,a5,a4
	.loc 2 314 27
	lw	a5,16(s0)
	sw	a4,0(a5)
.L43:
	.loc 2 316 12
	lw	a5,-20(s0)
.L44:
	.loc 2 317 1
	mv	a0,a5
	li	t0,4096
	add	sp,sp,t0
	.cfi_def_cfa 2, 240
	lw	ra,236(sp)
	.cfi_restore 1
	lw	s0,232(sp)
	.cfi_restore 8
	addi	sp,sp,240
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE74:
	.size	mbedtls_psa_aead_decrypt, .-mbedtls_psa_aead_decrypt
	.section	.text.mbedtls_psa_aead_encrypt_setup,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_aead_encrypt_setup
	.type	mbedtls_psa_aead_encrypt_setup, @function
mbedtls_psa_aead_encrypt_setup:
.LFB75:
	.loc 2 327 1
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
	.loc 2 328 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 2 330 14
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	psa_aead_setup
	sw	a0,-20(s0)
	.loc 2 333 8
	lw	a5,-20(s0)
	bne	a5,zero,.L49
	.loc 2 334 31
	lw	a5,-36(s0)
	lbu	a4,6(a5)
	ori	a4,a4,1
	sb	a4,6(a5)
.L49:
	.loc 2 337 12
	lw	a5,-20(s0)
	.loc 2 338 1
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
.LFE75:
	.size	mbedtls_psa_aead_encrypt_setup, .-mbedtls_psa_aead_encrypt_setup
	.section	.text.mbedtls_psa_aead_decrypt_setup,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_aead_decrypt_setup
	.type	mbedtls_psa_aead_decrypt_setup, @function
mbedtls_psa_aead_decrypt_setup:
.LFB76:
	.loc 2 348 1
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
	.loc 2 349 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 2 351 14
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	psa_aead_setup
	sw	a0,-20(s0)
	.loc 2 354 8
	lw	a5,-20(s0)
	bne	a5,zero,.L52
	.loc 2 355 31
	lw	a5,-36(s0)
	lbu	a4,6(a5)
	andi	a4,a4,-2
	sb	a4,6(a5)
.L52:
	.loc 2 358 12
	lw	a5,-20(s0)
	.loc 2 359 1
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
.LFE76:
	.size	mbedtls_psa_aead_decrypt_setup, .-mbedtls_psa_aead_decrypt_setup
	.section	.text.mbedtls_psa_aead_set_nonce,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_aead_set_nonce
	.type	mbedtls_psa_aead_set_nonce, @function
mbedtls_psa_aead_set_nonce:
.LFB77:
	.loc 2 366 1
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
	.loc 2 367 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 2 370 18
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 370 8
	li	a5,89128960
	addi	a5,a5,512
	bne	a4,a5,.L55
	.loc 2 371 18
	lw	a5,-36(s0)
	addi	a4,a5,8
	.loc 2 373 54
	lw	a5,-36(s0)
	lbu	a5,6(a5)
	.loc 2 371 18
	andi	a5,a5,1
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_gcm_starts
	mv	a5,a0
	.loc 2 371 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L56
.L55:
	.loc 2 380 18 is_stmt 1
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 380 8
	li	a5,89128960
	addi	a5,a5,256
	bne	a4,a5,.L57
	.loc 2 381 18
	lw	a5,-36(s0)
	addi	a4,a5,8
	.loc 2 383 54
	lw	a5,-36(s0)
	lbu	a5,6(a5)
	.loc 2 381 18
	andi	a5,a5,1
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ccm_starts
	mv	a5,a0
	.loc 2 381 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L56
.L57:
	.loc 2 413 16 is_stmt 1
	li	a5,-134
	j	.L58
.L56:
	.loc 2 416 12
	lw	a5,-20(s0)
.L58:
	.loc 2 417 1
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
.LFE77:
	.size	mbedtls_psa_aead_set_nonce, .-mbedtls_psa_aead_set_nonce
	.section	.text.mbedtls_psa_aead_set_lengths,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_aead_set_lengths
	.type	mbedtls_psa_aead_set_lengths, @function
mbedtls_psa_aead_set_lengths:
.LFB78:
	.loc 2 424 1
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
	.loc 2 426 18
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 426 8
	li	a5,89128960
	addi	a5,a5,256
	bne	a4,a5,.L60
	.loc 2 427 16
	lw	a5,-20(s0)
	addi	a4,a5,8
	.loc 2 431 46
	lw	a5,-20(s0)
	lbu	a5,7(a5)
	.loc 2 427 16
	mv	a3,a5
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a4
	call	mbedtls_ccm_set_lengths
	mv	a5,a0
	.loc 2 427 16 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	mv	a5,a0
	.loc 2 427 16
	j	.L61
.L60:
	.loc 2 440 12 is_stmt 1
	li	a5,0
.L61:
	.loc 2 441 1
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
.LFE78:
	.size	mbedtls_psa_aead_set_lengths, .-mbedtls_psa_aead_set_lengths
	.section	.text.mbedtls_psa_aead_update_ad,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_aead_update_ad
	.type	mbedtls_psa_aead_update_ad, @function
mbedtls_psa_aead_update_ad:
.LFB79:
	.loc 2 448 1
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
	.loc 2 449 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 2 452 18
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 452 8
	li	a5,89128960
	addi	a5,a5,512
	bne	a4,a5,.L63
	.loc 2 453 18
	lw	a5,-36(s0)
	addi	a5,a5,8
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_gcm_update_ad
	mv	a5,a0
	.loc 2 453 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L64
.L63:
	.loc 2 458 18 is_stmt 1
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 458 8
	li	a5,89128960
	addi	a5,a5,256
	bne	a4,a5,.L65
	.loc 2 459 18
	lw	a5,-36(s0)
	addi	a5,a5,8
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_ccm_update_ad
	mv	a5,a0
	.loc 2 459 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L64
.L65:
	.loc 2 476 16 is_stmt 1
	li	a5,-134
	j	.L66
.L64:
	.loc 2 479 12
	lw	a5,-20(s0)
.L66:
	.loc 2 480 1
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
.LFE79:
	.size	mbedtls_psa_aead_update_ad, .-mbedtls_psa_aead_update_ad
	.section	.text.mbedtls_psa_aead_update,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_aead_update
	.type	mbedtls_psa_aead_update, @function
mbedtls_psa_aead_update:
.LFB80:
	.loc 2 491 1
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
	.loc 2 493 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 2 495 26
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	.loc 2 498 18
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 498 8
	li	a5,89128960
	addi	a5,a5,512
	bne	a4,a5,.L68
	.loc 2 499 18
	lw	a5,-36(s0)
	addi	a0,a5,8
	addi	a5,s0,-24
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	call	mbedtls_gcm_update
	mv	a5,a0
	.loc 2 499 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L69
.L68:
	.loc 2 507 18 is_stmt 1
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 507 8
	li	a5,89128960
	addi	a5,a5,256
	bne	a4,a5,.L70
	.loc 2 508 12
	lw	a4,-52(s0)
	lw	a5,-44(s0)
	bgeu	a4,a5,.L71
	.loc 2 509 20
	li	a5,-138
	j	.L74
.L71:
	.loc 2 512 18
	lw	a5,-36(s0)
	addi	a0,a5,8
	addi	a5,s0,-24
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	call	mbedtls_ccm_update
	mv	a5,a0
	.loc 2 512 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L69
.L70:
	.loc 2 538 16 is_stmt 1
	li	a5,-134
	j	.L74
.L69:
	.loc 2 541 8
	lw	a5,-20(s0)
	bne	a5,zero,.L73
	.loc 2 542 24
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	sw	a4,0(a5)
.L73:
	.loc 2 545 12
	lw	a5,-20(s0)
.L74:
	.loc 2 546 1
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
.LFE80:
	.size	mbedtls_psa_aead_update, .-mbedtls_psa_aead_update
	.section	.text.mbedtls_psa_aead_finish,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_aead_finish
	.type	mbedtls_psa_aead_finish, @function
mbedtls_psa_aead_finish:
.LFB81:
	.loc 2 557 1
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
	.loc 2 558 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 2 559 12
	sw	zero,-24(s0)
	.loc 2 561 29
	lw	a5,-36(s0)
	lbu	a5,7(a5)
	mv	a4,a5
	.loc 2 561 8
	lw	a5,-56(s0)
	bgeu	a5,a4,.L76
	.loc 2 562 16
	li	a5,-138
	j	.L77
.L76:
	.loc 2 566 18
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 566 8
	li	a5,89128960
	addi	a5,a5,512
	bne	a4,a5,.L78
	.loc 2 567 18
	lw	a5,-36(s0)
	addi	a0,a5,8
	.loc 2 570 46
	lw	a5,-36(s0)
	lbu	a5,7(a5)
	.loc 2 567 18
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	call	mbedtls_gcm_finish
	mv	a5,a0
	.loc 2 567 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L79
.L78:
	.loc 2 574 18 is_stmt 1
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 574 8
	li	a5,89128960
	addi	a5,a5,256
	bne	a4,a5,.L80
	.loc 2 577 33
	lw	a5,-36(s0)
	lbu	a5,7(a5)
	mv	a4,a5
	.loc 2 577 12
	lw	a5,-56(s0)
	bgeu	a5,a4,.L81
	.loc 2 578 20
	li	a5,-138
	j	.L77
.L81:
	.loc 2 581 18
	lw	a5,-36(s0)
	addi	a4,a5,8
	.loc 2 583 46
	lw	a5,-36(s0)
	lbu	a5,7(a5)
	.loc 2 581 18
	mv	a2,a5
	lw	a1,-52(s0)
	mv	a0,a4
	call	mbedtls_ccm_finish
	mv	a5,a0
	.loc 2 581 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L79
.L80:
	.loc 2 609 16 is_stmt 1
	li	a5,-134
	j	.L77
.L79:
	.loc 2 612 8
	lw	a5,-20(s0)
	bne	a5,zero,.L82
	.loc 2 615 28
	lw	a5,-48(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 2 616 32
	lw	a5,-36(s0)
	lbu	a5,7(a5)
	mv	a4,a5
	.loc 2 616 21
	lw	a5,-60(s0)
	sw	a4,0(a5)
.L82:
	.loc 2 619 12
	lw	a5,-20(s0)
.L77:
	.loc 2 620 1
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
.LFE81:
	.size	mbedtls_psa_aead_finish, .-mbedtls_psa_aead_finish
	.section	.text.mbedtls_psa_aead_abort,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_aead_abort
	.type	mbedtls_psa_aead_abort, @function
mbedtls_psa_aead_abort:
.LFB82:
	.loc 2 625 1
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
	.loc 2 626 22
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 626 5
	li	a4,89128960
	addi	a4,a4,256
	beq	a5,a4,.L84
	li	a4,89128960
	addi	a4,a4,512
	beq	a5,a4,.L85
	j	.L86
.L84:
	.loc 2 629 13
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_ccm_free
	.loc 2 630 13
	j	.L86
.L85:
	.loc 2 634 13
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_gcm_free
	.loc 2 635 13
	nop
.L86:
	.loc 2 644 27
	lw	a5,-20(s0)
	lbu	a4,6(a5)
	andi	a4,a4,-2
	sb	a4,6(a5)
	.loc 2 646 12
	li	a5,0
	.loc 2 647 1
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
.LFE82:
	.size	mbedtls_psa_aead_abort, .-mbedtls_psa_aead_abort
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_types.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/cipher.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/cmac.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/gcm.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ccm.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_builtin_composites.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_core.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_cipher.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1080
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x21
	.4byte	.LASF159
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x12
	.4byte	0x32
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x22
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x12
	.4byte	0x95
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x45
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x4
	.byte	0x37
	.byte	0x20
	.4byte	0x61
	.uleb128 0x23
	.byte	0x4
	.uleb128 0x6
	.4byte	0x32
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x12
	.4byte	0xd1
	.uleb128 0x6
	.4byte	0xd8
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x5
	.byte	0x3b
	.byte	0x11
	.4byte	0x89
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x5
	.byte	0x4e
	.byte	0x12
	.4byte	0xa6
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x5
	.byte	0x86
	.byte	0x12
	.4byte	0xb2
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x5
	.byte	0xb7
	.byte	0x12
	.4byte	0xb2
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x113
	.byte	0x12
	.4byte	0xb2
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x124
	.byte	0x16
	.4byte	0x112
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x143
	.byte	0x12
	.4byte	0xb2
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x1b0
	.byte	0x25
	.4byte	0x14b
	.uleb128 0x12
	.4byte	0x139
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x18
	.byte	0x1
	.2byte	0x127
	.byte	0x8
	.4byte	0x19f
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x12c
	.byte	0x14
	.4byte	0xee
	.byte	0
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x12d
	.byte	0x14
	.4byte	0x662
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x12e
	.byte	0x18
	.4byte	0x106
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x12f
	.byte	0x16
	.4byte	0x655
	.byte	0x8
	.uleb128 0x15
	.string	"id"
	.byte	0x1
	.2byte	0x13b
	.byte	0x1a
	.4byte	0x11f
	.byte	0x14
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.4byte	0x32
	.byte	0x42
	.4byte	0x1db
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF39
	.byte	0x6
	.byte	0x4b
	.byte	0x3
	.4byte	0x19f
	.uleb128 0x16
	.byte	0x7
	.4byte	0x32
	.byte	0xac
	.4byte	0x247
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.4byte	.LASF54
	.byte	0x6
	.byte	0xbb
	.byte	0x3
	.4byte	0x1e7
	.uleb128 0x16
	.byte	0x5
	.4byte	0x2b
	.byte	0xc7
	.4byte	0x271
	.uleb128 0x24
	.4byte	.LASF55
	.sleb128 -1
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF58
	.byte	0x6
	.byte	0xcb
	.byte	0x3
	.4byte	0x253
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0x6
	.byte	0xf9
	.byte	0x27
	.4byte	0x289
	.uleb128 0x1c
	.4byte	.LASF59
	.byte	0x24
	.byte	0x7
	.byte	0x3b
	.byte	0x8
	.4byte	0x2be
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x7
	.byte	0x3d
	.byte	0x13
	.4byte	0x437
	.byte	0
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x7
	.byte	0x41
	.byte	0x13
	.4byte	0x437
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x7
	.byte	0x44
	.byte	0xc
	.4byte	0x76
	.byte	0x20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x8
	.byte	0x6
	.2byte	0x10a
	.byte	0x10
	.4byte	0x336
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x10c
	.byte	0x11
	.4byte	0xdd
	.byte	0
	.uleb128 0xf
	.4byte	.LASF66
	.2byte	0x10f
	.4byte	0x6f
	.byte	0x5
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF67
	.2byte	0x115
	.4byte	0x6f
	.byte	0x3
	.byte	0x25
	.uleb128 0xf
	.4byte	.LASF68
	.2byte	0x11b
	.4byte	0x6f
	.byte	0x4
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF69
	.2byte	0x120
	.4byte	0x6f
	.byte	0x4
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF27
	.2byte	0x128
	.4byte	0x6f
	.byte	0x8
	.byte	0x30
	.uleb128 0xf
	.4byte	.LASF70
	.2byte	0x12e
	.4byte	0x6f
	.byte	0x2
	.byte	0x38
	.uleb128 0xf
	.4byte	.LASF71
	.2byte	0x131
	.4byte	0x6f
	.byte	0x5
	.byte	0x3a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x133
	.byte	0x3
	.4byte	0x2be
	.uleb128 0x12
	.4byte	0x336
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x44
	.byte	0x6
	.2byte	0x13c
	.byte	0x10
	.4byte	0x3f0
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x13e
	.byte	0x22
	.4byte	0x3f0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x141
	.byte	0x9
	.4byte	0x68
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x146
	.byte	0x19
	.4byte	0x271
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x14c
	.byte	0xb
	.4byte	0x40a
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x152
	.byte	0xa
	.4byte	0x432
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x158
	.byte	0x13
	.4byte	0x437
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x15b
	.byte	0xc
	.4byte	0x76
	.byte	0x24
	.uleb128 0x15
	.string	"iv"
	.byte	0x6
	.2byte	0x15f
	.byte	0x13
	.4byte	0x437
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x162
	.byte	0xc
	.4byte	0x76
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x165
	.byte	0xb
	.4byte	0xca
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x169
	.byte	0x1d
	.4byte	0x447
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.4byte	0x343
	.uleb128 0x25
	.4byte	0x40a
	.uleb128 0x1
	.4byte	0xcc
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x6
	.4byte	0x3f5
	.uleb128 0x26
	.4byte	0x68
	.4byte	0x42d
	.uleb128 0x1
	.4byte	0xcc
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x42d
	.uleb128 0x1
	.4byte	0x42d
	.byte	0
	.uleb128 0x6
	.4byte	0x76
	.uleb128 0x6
	.4byte	0x40f
	.uleb128 0x1d
	.4byte	0x32
	.4byte	0x447
	.uleb128 0x17
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x27d
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x177
	.byte	0x3
	.4byte	0x348
	.uleb128 0x27
	.4byte	.LASF80
	.2byte	0x1090
	.byte	0x8
	.byte	0x3a
	.byte	0x10
	.4byte	0x4d9
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x8
	.byte	0x3e
	.byte	0x1e
	.4byte	0x44c
	.byte	0
	.uleb128 0x11
	.string	"H"
	.byte	0x8
	.byte	0x40
	.byte	0xe
	.4byte	0x4d9
	.byte	0x48
	.uleb128 0x18
	.string	"len"
	.byte	0x41
	.byte	0xe
	.4byte	0xbe
	.2byte	0x1048
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x42
	.byte	0xe
	.4byte	0xbe
	.2byte	0x1050
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x43
	.byte	0x13
	.4byte	0x437
	.2byte	0x1058
	.uleb128 0x18
	.string	"y"
	.byte	0x44
	.byte	0x13
	.4byte	0x437
	.2byte	0x1068
	.uleb128 0x18
	.string	"buf"
	.byte	0x45
	.byte	0x13
	.4byte	0x437
	.2byte	0x1078
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x46
	.byte	0x13
	.4byte	0x32
	.2byte	0x1088
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x49
	.byte	0x13
	.4byte	0x32
	.2byte	0x1089
	.byte	0
	.uleb128 0x1d
	.4byte	0xbe
	.4byte	0x4ef
	.uleb128 0x17
	.4byte	0x6f
	.byte	0xff
	.uleb128 0x17
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF80
	.byte	0x8
	.byte	0x4b
	.byte	0x1
	.4byte	0x459
	.uleb128 0x1c
	.4byte	.LASF84
	.byte	0x80
	.byte	0x9
	.byte	0x45
	.byte	0x10
	.4byte	0x587
	.uleb128 0x11
	.string	"y"
	.byte	0x9
	.byte	0x46
	.byte	0x13
	.4byte	0x437
	.byte	0
	.uleb128 0x11
	.string	"ctr"
	.byte	0x9
	.byte	0x47
	.byte	0x13
	.4byte	0x437
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0x9
	.byte	0x48
	.byte	0xc
	.4byte	0x76
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0x9
	.byte	0x49
	.byte	0xc
	.4byte	0x76
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0x9
	.byte	0x4a
	.byte	0xc
	.4byte	0x76
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x9
	.byte	0x4b
	.byte	0xc
	.4byte	0x76
	.byte	0x2c
	.uleb128 0x11
	.string	"q"
	.byte	0x9
	.byte	0x51
	.byte	0x12
	.4byte	0x6f
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x9
	.byte	0x52
	.byte	0x12
	.4byte	0x6f
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x9
	.byte	0x5a
	.byte	0x1e
	.4byte	0x44c
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x9
	.byte	0x5c
	.byte	0x9
	.4byte	0x68
	.byte	0x7c
	.byte	0
	.uleb128 0x5
	.4byte	.LASF84
	.byte	0x9
	.byte	0x5f
	.byte	0x1
	.4byte	0x4fb
	.uleb128 0x28
	.2byte	0x1090
	.byte	0xa
	.byte	0x57
	.byte	0x5
	.4byte	0x5be
	.uleb128 0x29
	.4byte	.LASF88
	.byte	0xa
	.byte	0x58
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x1e
	.string	"ccm"
	.byte	0x5a
	.4byte	0x587
	.uleb128 0x1e
	.string	"gcm"
	.byte	0x5d
	.4byte	0x4ef
	.byte	0
	.uleb128 0x2a
	.2byte	0x1098
	.byte	0xa
	.byte	0x4f
	.byte	0x9
	.4byte	0x60b
	.uleb128 0x11
	.string	"alg"
	.byte	0xa
	.byte	0x50
	.byte	0x15
	.4byte	0xfa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0xa
	.byte	0x51
	.byte	0x14
	.4byte	0xee
	.byte	0x4
	.uleb128 0x2b
	.4byte	.LASF90
	.byte	0xa
	.byte	0x53
	.byte	0x12
	.4byte	0x6f
	.byte	0x1
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0xa
	.byte	0x55
	.byte	0xd
	.4byte	0x95
	.byte	0x7
	.uleb128 0x11
	.string	"ctx"
	.byte	0xa
	.byte	0x63
	.byte	0x7
	.4byte	0x593
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF92
	.byte	0xa
	.byte	0x65
	.byte	0x3
	.4byte	0x5be
	.uleb128 0x6
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0xc
	.byte	0x1
	.2byte	0x10c
	.byte	0x8
	.4byte	0x655
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x10d
	.byte	0x15
	.4byte	0x12c
	.byte	0
	.uleb128 0x15
	.string	"alg"
	.byte	0x1
	.2byte	0x10e
	.byte	0x15
	.4byte	0xfa
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x10f
	.byte	0x15
	.4byte	0xfa
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x111
	.byte	0x21
	.4byte	0x61c
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x11c
	.byte	0x12
	.4byte	0xa6
	.uleb128 0x6
	.4byte	0xa1
	.uleb128 0x6
	.4byte	0x146
	.uleb128 0x2c
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x170
	.byte	0x6
	.4byte	0x68c
	.uleb128 0x1
	.4byte	0x68c
	.byte	0
	.uleb128 0x6
	.4byte	0x4ef
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x9
	.byte	0x87
	.4byte	0x6a2
	.uleb128 0x1
	.4byte	0x6a2
	.byte	0
	.uleb128 0x6
	.4byte	0x587
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0x9
	.2byte	0x1fd
	.byte	0x5
	.4byte	0x68
	.4byte	0x6c8
	.uleb128 0x1
	.4byte	0x6a2
	.uleb128 0x1
	.4byte	0xcc
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x164
	.byte	0x5
	.4byte	0x68
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x68c
	.uleb128 0x1
	.4byte	0xcc
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x42d
	.uleb128 0x1
	.4byte	0xcc
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x1d9
	.byte	0x5
	.4byte	0x68
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x6a2
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0xcc
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x42d
	.byte	0
	.uleb128 0x6
	.4byte	0x39
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x13e
	.byte	0x5
	.4byte	0x68
	.4byte	0x75d
	.uleb128 0x1
	.4byte	0x68c
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0xcc
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x42d
	.byte	0
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x196
	.byte	0x5
	.4byte	0x68
	.4byte	0x77e
	.uleb128 0x1
	.4byte	0x6a2
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x105
	.byte	0x5
	.4byte	0x68
	.4byte	0x79f
	.uleb128 0x1
	.4byte	0x68c
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x173
	.byte	0x5
	.4byte	0x68
	.4byte	0x7c5
	.uleb128 0x1
	.4byte	0x6a2
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x153
	.byte	0x5
	.4byte	0x68
	.4byte	0x7eb
	.uleb128 0x1
	.4byte	0x6a2
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0x8
	.byte	0xec
	.byte	0x5
	.4byte	0x68
	.4byte	0x810
	.uleb128 0x1
	.4byte	0x68c
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0x8
	.byte	0xd4
	.byte	0x5
	.4byte	0x68
	.4byte	0x853
	.uleb128 0x1
	.4byte	0x68c
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0xcc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x103
	.byte	0x5
	.4byte	0x68
	.4byte	0x897
	.uleb128 0x1
	.4byte	0x6a2
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0xcc
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0x8
	.byte	0xa5
	.byte	0x5
	.4byte	0x68
	.4byte	0x8df
	.uleb128 0x1
	.4byte	0x68c
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0xcc
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0xcc
	.byte	0
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0x9
	.byte	0xad
	.byte	0x5
	.4byte	0x68
	.4byte	0x922
	.uleb128 0x1
	.4byte	0x6a2
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0xcc
	.uleb128 0x1
	.4byte	0xcc
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0x8
	.byte	0x6e
	.byte	0x5
	.4byte	0x68
	.4byte	0x947
	.uleb128 0x1
	.4byte	0x68c
	.uleb128 0x1
	.4byte	0x1db
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x6f
	.byte	0
	.uleb128 0x19
	.4byte	.LASF114
	.byte	0x8
	.byte	0x5c
	.4byte	0x958
	.uleb128 0x1
	.4byte	0x68c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF115
	.byte	0xb
	.2byte	0x119
	.byte	0xe
	.4byte	0xe2
	.4byte	0x96f
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0x9
	.byte	0x7b
	.byte	0x5
	.4byte	0x68
	.4byte	0x994
	.uleb128 0x1
	.4byte	0x6a2
	.uleb128 0x1
	.4byte	0x1db
	.uleb128 0x1
	.4byte	0x728
	.uleb128 0x1
	.4byte	0x6f
	.byte	0
	.uleb128 0x19
	.4byte	.LASF117
	.byte	0x9
	.byte	0x6c
	.4byte	0x9a5
	.uleb128 0x1
	.4byte	0x6a2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0xc
	.byte	0x20
	.byte	0xe
	.4byte	0xe2
	.4byte	0x9cf
	.uleb128 0x1
	.4byte	0xfa
	.uleb128 0x1
	.4byte	0xee
	.uleb128 0x1
	.4byte	0x42d
	.uleb128 0x1
	.4byte	0x9cf
	.uleb128 0x1
	.4byte	0x9d4
	.byte	0
	.uleb128 0x6
	.4byte	0x247
	.uleb128 0x6
	.4byte	0x1db
	.uleb128 0xd
	.4byte	.LASF119
	.2byte	0x26f
	.4byte	0xe2
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa03
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x270
	.byte	0x23
	.4byte	0xa03
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x60b
	.uleb128 0xd
	.4byte	.LASF120
	.2byte	0x225
	.4byte	0xe2
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaaf
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x226
	.byte	0x23
	.4byte	0xa03
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0x2
	.2byte	0x227
	.byte	0xe
	.4byte	0x617
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x228
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x229
	.byte	0xd
	.4byte	0x42d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.string	"tag"
	.2byte	0x22a
	.byte	0xe
	.4byte	0x617
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x22b
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x2
	.2byte	0x22c
	.byte	0xd
	.4byte	0x42d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xe
	.4byte	.LASF125
	.2byte	0x22e
	.byte	0x12
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF126
	.2byte	0x22f
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF127
	.2byte	0x1e4
	.4byte	0xe2
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb47
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x1e5
	.byte	0x23
	.4byte	0xa03
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x2
	.2byte	0x1e6
	.byte	0x14
	.4byte	0x66f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x2
	.2byte	0x1e7
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0x2
	.2byte	0x1e8
	.byte	0xe
	.4byte	0x617
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0x2
	.2byte	0x1e9
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0x2
	.2byte	0x1ea
	.byte	0xd
	.4byte	0x42d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.4byte	.LASF133
	.2byte	0x1ec
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.4byte	.LASF125
	.2byte	0x1ed
	.byte	0x12
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF134
	.2byte	0x1bc
	.4byte	0xe2
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x1bd
	.byte	0x23
	.4byte	0xa03
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x2
	.2byte	0x1be
	.byte	0x14
	.4byte	0x66f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x2
	.2byte	0x1bf
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.4byte	.LASF125
	.2byte	0x1c1
	.byte	0x12
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF135
	.2byte	0x1a4
	.4byte	0xe2
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbea
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x1a5
	.byte	0x23
	.4byte	0xa03
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF136
	.byte	0x2
	.2byte	0x1a6
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF137
	.byte	0x2
	.2byte	0x1a7
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xd
	.4byte	.LASF138
	.2byte	0x16a
	.4byte	0xe2
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc43
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x16b
	.byte	0x23
	.4byte	0xa03
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0x2
	.2byte	0x16c
	.byte	0x14
	.4byte	0x66f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0x2
	.2byte	0x16d
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.4byte	.LASF125
	.2byte	0x16f
	.byte	0x12
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF141
	.2byte	0x156
	.4byte	0xe2
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcbb
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x157
	.byte	0x23
	.4byte	0xa03
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0x2
	.2byte	0x158
	.byte	0x21
	.4byte	0x674
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0x2
	.2byte	0x159
	.byte	0x14
	.4byte	0x66f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0x2
	.2byte	0x15a
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.string	"alg"
	.2byte	0x15b
	.byte	0x15
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.4byte	.LASF125
	.2byte	0x15d
	.byte	0x12
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF145
	.2byte	0x141
	.4byte	0xe2
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd33
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x142
	.byte	0x23
	.4byte	0xa03
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0x2
	.2byte	0x143
	.byte	0x21
	.4byte	0x674
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0x2
	.2byte	0x144
	.byte	0x14
	.4byte	0x66f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0x2
	.2byte	0x145
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.string	"alg"
	.2byte	0x146
	.byte	0x15
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.4byte	.LASF125
	.2byte	0x148
	.byte	0x12
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF146
	.byte	0xe5
	.4byte	0xe2
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe42
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0xe6
	.byte	0x21
	.4byte	0x674
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4292
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0xe7
	.byte	0x14
	.4byte	0x66f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4296
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0xe7
	.byte	0x27
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4300
	.uleb128 0x1b
	.string	"alg"
	.byte	0xe8
	.4byte	0xfa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4304
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0xe9
	.byte	0x14
	.4byte	0x66f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4308
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0xe9
	.byte	0x22
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4312
	.uleb128 0x2
	.4byte	.LASF147
	.byte	0xea
	.byte	0x14
	.4byte	0x66f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4316
	.uleb128 0x2
	.4byte	.LASF148
	.byte	0xea
	.byte	0x2c
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4320
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0xeb
	.byte	0x14
	.4byte	0x66f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0xeb
	.byte	0x27
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2
	.4byte	.LASF149
	.byte	0xec
	.byte	0xe
	.4byte	0x617
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0xec
	.byte	0x20
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0xec
	.byte	0x38
	.4byte	0x42d
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0xee
	.byte	0x12
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0xef
	.byte	0x22
	.4byte	0x60b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4272
	.uleb128 0x20
	.string	"tag"
	.byte	0xf0
	.byte	0x14
	.4byte	0x66f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4276
	.uleb128 0x2d
	.4byte	.LASF154
	.byte	0x2
	.2byte	0x136
	.byte	0x1
	.4byte	.L37
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF155
	.byte	0x2
	.byte	0xd3
	.byte	0x15
	.4byte	0xe2
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb1
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0xd3
	.byte	0x39
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0xd4
	.byte	0x41
	.4byte	0x66f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0xd5
	.byte	0x39
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0xd6
	.byte	0x39
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0xd7
	.byte	0x42
	.4byte	0xeb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0xd9
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x66f
	.uleb128 0x1f
	.4byte	.LASF153
	.byte	0x75
	.4byte	0xe2
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfc3
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0x76
	.byte	0x21
	.4byte	0x674
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4276
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x77
	.byte	0x14
	.4byte	0x66f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4280
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0x77
	.byte	0x27
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4284
	.uleb128 0x1b
	.string	"alg"
	.byte	0x78
	.4byte	0xfa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4288
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0x79
	.byte	0x14
	.4byte	0x66f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4292
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0x79
	.byte	0x22
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4296
	.uleb128 0x2
	.4byte	.LASF147
	.byte	0x7a
	.byte	0x14
	.4byte	0x66f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4300
	.uleb128 0x2
	.4byte	.LASF148
	.byte	0x7a
	.byte	0x2c
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4304
	.uleb128 0x2
	.4byte	.LASF149
	.byte	0x7b
	.byte	0x14
	.4byte	0x66f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x7b
	.byte	0x26
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x7c
	.byte	0xe
	.4byte	0x617
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x7c
	.byte	0x21
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0x7c
	.byte	0x3a
	.4byte	0x42d
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x7e
	.byte	0x12
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x7f
	.byte	0x22
	.4byte	0x60b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4272
	.uleb128 0x20
	.string	"tag"
	.byte	0x80
	.byte	0xe
	.4byte	0x617
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.4byte	.LASF154
	.byte	0x2
	.byte	0xc8
	.byte	0x1
	.4byte	.L22
	.byte	0
	.uleb128 0x30
	.4byte	.LASF156
	.byte	0x2
	.byte	0x1a
	.byte	0x15
	.4byte	0xe2
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x105b
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x1b
	.byte	0x23
	.4byte	0xa03
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0x1c
	.byte	0x21
	.4byte	0x674
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x1d
	.byte	0x14
	.4byte	0x66f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0x1e
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"alg"
	.byte	0x1f
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x21
	.byte	0x12
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0x22
	.byte	0x19
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x23
	.byte	0x1b
	.4byte	0x247
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0x24
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x31
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x1a9
	.byte	0x1e
	.4byte	0xee
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x1aa
	.byte	0x21
	.4byte	0x674
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x3
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x16
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
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 29
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.sleb128 14
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x29
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
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x2b
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
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
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
	.4byte	.LFB48
	.uleb128 .LFE48-.LFB48
	.byte	0x7
	.4byte	.LFB71
	.uleb128 .LFE71-.LFB71
	.byte	0x7
	.4byte	.LFB72
	.uleb128 .LFE72-.LFB72
	.byte	0x7
	.4byte	.LFB73
	.uleb128 .LFE73-.LFB73
	.byte	0x7
	.4byte	.LFB74
	.uleb128 .LFE74-.LFB74
	.byte	0x7
	.4byte	.LFB75
	.uleb128 .LFE75-.LFB75
	.byte	0x7
	.4byte	.LFB76
	.uleb128 .LFE76-.LFB76
	.byte	0x7
	.4byte	.LFB77
	.uleb128 .LFE77-.LFB77
	.byte	0x7
	.4byte	.LFB78
	.uleb128 .LFE78-.LFB78
	.byte	0x7
	.4byte	.LFB79
	.uleb128 .LFE79-.LFB79
	.byte	0x7
	.4byte	.LFB80
	.uleb128 .LFE80-.LFB80
	.byte	0x7
	.4byte	.LFB81
	.uleb128 .LFE81-.LFB81
	.byte	0x7
	.4byte	.LFB82
	.uleb128 .LFE82-.LFB82
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF114:
	.string	"mbedtls_gcm_init"
.LASF105:
	.string	"mbedtls_gcm_update_ad"
.LASF106:
	.string	"mbedtls_ccm_set_lengths"
.LASF12:
	.string	"size_t"
.LASF21:
	.string	"psa_algorithm_t"
.LASF57:
	.string	"MBEDTLS_ENCRYPT"
.LASF109:
	.string	"mbedtls_gcm_auth_decrypt"
.LASF17:
	.string	"uint64_t"
.LASF37:
	.string	"MBEDTLS_CIPHER_ID_ARIA"
.LASF41:
	.string	"MBEDTLS_MODE_ECB"
.LASF73:
	.string	"cipher_info"
.LASF100:
	.string	"mbedtls_ccm_finish"
.LASF27:
	.string	"type"
.LASF101:
	.string	"mbedtls_gcm_finish"
.LASF157:
	.string	"cipher_id"
.LASF9:
	.string	"long long unsigned int"
.LASF36:
	.string	"MBEDTLS_CIPHER_ID_CAMELLIA"
.LASF118:
	.string	"mbedtls_cipher_values_from_psa"
.LASF49:
	.string	"MBEDTLS_MODE_CCM_STAR_NO_TAG"
.LASF112:
	.string	"mbedtls_ccm_encrypt_and_tag"
.LASF81:
	.string	"add_len"
.LASF68:
	.string	"key_bitlen"
.LASF136:
	.string	"ad_length"
.LASF121:
	.string	"ciphertext"
.LASF2:
	.string	"signed char"
.LASF134:
	.string	"mbedtls_psa_aead_update_ad"
.LASF120:
	.string	"mbedtls_psa_aead_finish"
.LASF76:
	.string	"get_padding"
.LASF145:
	.string	"mbedtls_psa_aead_encrypt_setup"
.LASF103:
	.string	"mbedtls_gcm_update"
.LASF132:
	.string	"output_length"
.LASF131:
	.string	"output_size"
.LASF61:
	.string	"state"
.LASF28:
	.string	"bits"
.LASF6:
	.string	"long int"
.LASF47:
	.string	"MBEDTLS_MODE_STREAM"
.LASF85:
	.string	"plaintext_len"
.LASF8:
	.string	"long long int"
.LASF91:
	.string	"tag_length"
.LASF93:
	.string	"psa_key_policy_s"
.LASF96:
	.string	"psa_key_policy_t"
.LASF20:
	.string	"psa_key_type_t"
.LASF141:
	.string	"mbedtls_psa_aead_decrypt_setup"
.LASF87:
	.string	"processed"
.LASF146:
	.string	"mbedtls_psa_aead_decrypt"
.LASF51:
	.string	"MBEDTLS_MODE_CHACHAPOLY"
.LASF62:
	.string	"unprocessed_block"
.LASF34:
	.string	"MBEDTLS_CIPHER_ID_DES"
.LASF82:
	.string	"base_ectr"
.LASF150:
	.string	"plaintext_size"
.LASF143:
	.string	"key_buffer"
.LASF78:
	.string	"cipher_ctx"
.LASF98:
	.string	"mbedtls_gcm_free"
.LASF63:
	.string	"unprocessed_len"
.LASF10:
	.string	"unsigned int"
.LASF66:
	.string	"block_size"
.LASF80:
	.string	"mbedtls_gcm_context"
.LASF39:
	.string	"mbedtls_cipher_id_t"
.LASF137:
	.string	"plaintext_length"
.LASF130:
	.string	"output"
.LASF122:
	.string	"ciphertext_size"
.LASF89:
	.string	"key_type"
.LASF65:
	.string	"name"
.LASF151:
	.string	"p_tag"
.LASF5:
	.string	"short unsigned int"
.LASF55:
	.string	"MBEDTLS_OPERATION_NONE"
.LASF24:
	.string	"mbedtls_svc_key_id_t"
.LASF113:
	.string	"mbedtls_gcm_setkey"
.LASF71:
	.string	"base_idx"
.LASF140:
	.string	"nonce_length"
.LASF15:
	.string	"uint16_t"
.LASF86:
	.string	"tag_len"
.LASF48:
	.string	"MBEDTLS_MODE_CCM"
.LASF54:
	.string	"mbedtls_cipher_mode_t"
.LASF22:
	.string	"psa_key_lifetime_t"
.LASF135:
	.string	"mbedtls_psa_aead_set_lengths"
.LASF60:
	.string	"psa_key_attributes_s"
.LASF26:
	.string	"psa_key_attributes_t"
.LASF64:
	.string	"mbedtls_cipher_info_t"
.LASF102:
	.string	"mbedtls_ccm_update"
.LASF90:
	.string	"is_encrypt"
.LASF75:
	.string	"add_padding"
.LASF30:
	.string	"policy"
.LASF32:
	.string	"MBEDTLS_CIPHER_ID_NULL"
.LASF124:
	.string	"tag_size"
.LASF110:
	.string	"mbedtls_ccm_auth_decrypt"
.LASF116:
	.string	"mbedtls_ccm_setkey"
.LASF97:
	.string	"psa_key_bits_t"
.LASF11:
	.string	"long double"
.LASF56:
	.string	"MBEDTLS_DECRYPT"
.LASF59:
	.string	"mbedtls_cmac_context_t"
.LASF149:
	.string	"plaintext"
.LASF74:
	.string	"operation"
.LASF119:
	.string	"mbedtls_psa_aead_abort"
.LASF138:
	.string	"mbedtls_psa_aead_set_nonce"
.LASF67:
	.string	"iv_size"
.LASF29:
	.string	"lifetime"
.LASF40:
	.string	"MBEDTLS_MODE_NONE"
.LASF127:
	.string	"mbedtls_psa_aead_update"
.LASF152:
	.string	"payload_length"
.LASF19:
	.string	"psa_status_t"
.LASF133:
	.string	"update_output_length"
.LASF58:
	.string	"mbedtls_operation_t"
.LASF72:
	.string	"mbedtls_cipher_context_t"
.LASF147:
	.string	"additional_data"
.LASF35:
	.string	"MBEDTLS_CIPHER_ID_3DES"
.LASF53:
	.string	"MBEDTLS_MODE_KWP"
.LASF44:
	.string	"MBEDTLS_MODE_OFB"
.LASF13:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF52:
	.string	"MBEDTLS_MODE_KW"
.LASF4:
	.string	"short int"
.LASF38:
	.string	"MBEDTLS_CIPHER_ID_CHACHA20"
.LASF156:
	.string	"psa_aead_setup"
.LASF45:
	.string	"MBEDTLS_MODE_CTR"
.LASF154:
	.string	"exit"
.LASF139:
	.string	"nonce"
.LASF128:
	.string	"input"
.LASF46:
	.string	"MBEDTLS_MODE_GCM"
.LASF107:
	.string	"mbedtls_ccm_starts"
.LASF104:
	.string	"mbedtls_ccm_update_ad"
.LASF142:
	.string	"attributes"
.LASF88:
	.string	"dummy"
.LASF16:
	.string	"uint32_t"
.LASF108:
	.string	"mbedtls_gcm_starts"
.LASF92:
	.string	"mbedtls_psa_aead_operation_t"
.LASF7:
	.string	"long unsigned int"
.LASF18:
	.string	"char"
.LASF69:
	.string	"mode"
.LASF153:
	.string	"mbedtls_psa_aead_encrypt"
.LASF158:
	.string	"key_bits"
.LASF155:
	.string	"psa_aead_unpadded_locate_tag"
.LASF43:
	.string	"MBEDTLS_MODE_CFB"
.LASF33:
	.string	"MBEDTLS_CIPHER_ID_AES"
.LASF159:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF31:
	.string	"MBEDTLS_CIPHER_ID_NONE"
.LASF115:
	.string	"mbedtls_to_psa_error"
.LASF123:
	.string	"ciphertext_length"
.LASF94:
	.string	"usage"
.LASF23:
	.string	"psa_key_id_t"
.LASF42:
	.string	"MBEDTLS_MODE_CBC"
.LASF125:
	.string	"status"
.LASF50:
	.string	"MBEDTLS_MODE_XTS"
.LASF25:
	.string	"psa_key_usage_t"
.LASF14:
	.string	"uint8_t"
.LASF70:
	.string	"flags"
.LASF148:
	.string	"additional_data_length"
.LASF129:
	.string	"input_length"
.LASF117:
	.string	"mbedtls_ccm_init"
.LASF95:
	.string	"alg2"
.LASF79:
	.string	"cmac_ctx"
.LASF126:
	.string	"finish_output_size"
.LASF77:
	.string	"unprocessed_data"
.LASF84:
	.string	"mbedtls_ccm_context"
.LASF111:
	.string	"mbedtls_gcm_crypt_and_tag"
.LASF144:
	.string	"key_buffer_size"
.LASF99:
	.string	"mbedtls_ccm_free"
.LASF160:
	.string	"psa_get_key_type"
.LASF83:
	.string	"acceleration"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_aead.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
