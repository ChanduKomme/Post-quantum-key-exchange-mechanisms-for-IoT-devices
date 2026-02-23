	.file	"ssl_tls.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_tls.c"
	.section	.text.mbedtls_cipher_info_get_mode,"ax",@progbits
	.align	1
	.type	mbedtls_cipher_info_get_mode, @function
mbedtls_cipher_info_get_mode:
.LFB20:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/cipher.h"
	.loc 1 465 1
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
	.loc 1 466 8
	lw	a5,-20(s0)
	bne	a5,zero,.L2
	.loc 1 467 16
	li	a5,0
	j	.L3
.L2:
	.loc 1 469 44
	lw	a5,-20(s0)
	lw	a5,4(a5)
	srli	a5,a5,12
	andi	a5,a5,15
	andi	a5,a5,0xff
.L3:
	.loc 1 471 1
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
.LFE20:
	.size	mbedtls_cipher_info_get_mode, .-mbedtls_cipher_info_get_mode
	.section	.text.mbedtls_cipher_info_get_key_bitlen,"ax",@progbits
	.align	1
	.type	mbedtls_cipher_info_get_key_bitlen, @function
mbedtls_cipher_info_get_key_bitlen:
.LFB21:
	.loc 1 486 1
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
	.loc 1 487 8
	lw	a5,-20(s0)
	bne	a5,zero,.L5
	.loc 1 488 16
	li	a5,0
	j	.L6
.L5:
	.loc 1 490 30
	lw	a5,-20(s0)
	lw	a5,4(a5)
	srli	a5,a5,8
	andi	a5,a5,15
	andi	a5,a5,0xff
	.loc 1 490 44
	slli	a5,a5,6
.L6:
	.loc 1 492 1
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
	.size	mbedtls_cipher_info_get_key_bitlen, .-mbedtls_cipher_info_get_key_bitlen
	.section	.text.mbedtls_cipher_info_get_iv_size,"ax",@progbits
	.align	1
	.type	mbedtls_cipher_info_get_iv_size, @function
mbedtls_cipher_info_get_iv_size:
.LFB23:
	.loc 1 527 1
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
	.loc 1 528 8
	lw	a5,-20(s0)
	bne	a5,zero,.L8
	.loc 1 529 16
	li	a5,0
	j	.L9
.L8:
	.loc 1 532 26
	lw	a5,-20(s0)
	lw	a5,4(a5)
	srli	a5,a5,5
	andi	a5,a5,7
	andi	a5,a5,0xff
	.loc 1 532 37
	slli	a5,a5,2
.L9:
	.loc 1 533 1
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
.LFE23:
	.size	mbedtls_cipher_info_get_iv_size, .-mbedtls_cipher_info_get_iv_size
	.section	.text.mbedtls_cipher_info_get_block_size,"ax",@progbits
	.align	1
	.type	mbedtls_cipher_info_get_block_size, @function
mbedtls_cipher_info_get_block_size:
.LFB24:
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
	bne	a5,zero,.L11
	.loc 1 549 16
	li	a5,0
	j	.L12
.L11:
	.loc 1 552 26
	lw	a5,-20(s0)
	lw	a5,4(a5)
	andi	a5,a5,31
	andi	a5,a5,0xff
.L12:
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
.LFE24:
	.size	mbedtls_cipher_info_get_block_size, .-mbedtls_cipher_info_get_block_size
	.section	.text.mbedtls_cipher_get_cipher_mode,"ax",@progbits
	.align	1
	.type	mbedtls_cipher_get_cipher_mode, @function
mbedtls_cipher_get_cipher_mode:
.LFB28:
	.loc 1 706 1
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
	.loc 1 707 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 707 8
	bne	a5,zero,.L14
	.loc 1 708 16
	li	a5,0
	j	.L15
.L14:
	.loc 1 711 39
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 711 52
	lw	a5,4(a5)
	srli	a5,a5,12
	andi	a5,a5,15
	andi	a5,a5,0xff
.L15:
	.loc 1 712 1
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
	.size	mbedtls_cipher_get_cipher_mode, .-mbedtls_cipher_get_cipher_mode
	.section	.text.mbedtls_ssl_get_version_number,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_get_version_number, @function
mbedtls_ssl_get_version_number:
.LFB95:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ssl.h"
	.loc 2 4876 1
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
	.loc 2 4877 15
	lw	a5,-20(s0)
	lhu	a5,16(a5)
	.loc 2 4878 1
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
.LFE95:
	.size	mbedtls_ssl_get_version_number, .-mbedtls_ssl_get_version_number
	.section	.text.mbedtls_ssl_is_handshake_over,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_is_handshake_over, @function
mbedtls_ssl_is_handshake_over:
.LFB96:
	.loc 2 5115 1
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
	.loc 2 5116 15
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 2 5116 23
	slti	a5,a5,27
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 2 5117 1
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
.LFE96:
	.size	mbedtls_ssl_is_handshake_over, .-mbedtls_ssl_is_handshake_over
	.section	.text.mbedtls_ssl_ciphersuite_uses_srv_cert,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_ciphersuite_uses_srv_cert, @function
mbedtls_ssl_ciphersuite_uses_srv_cert:
.LFB102:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_ciphersuites_internal.h"
	.loc 3 93 1
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
	.loc 3 94 17
	lw	a5,-20(s0)
	lbu	a5,10(a5)
	.loc 3 94 5
	li	a4,10
	bgt	a5,a4,.L21
	li	a4,9
	bge	a5,a4,.L22
	li	a4,4
	bgt	a5,a4,.L23
	bgt	a5,zero,.L22
	j	.L21
.L23:
	li	a4,7
	bne	a5,a4,.L21
.L22:
	.loc 3 102 20
	li	a5,1
	j	.L24
.L21:
	.loc 3 105 20
	li	a5,0
.L24:
	.loc 3 107 1
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
.LFE102:
	.size	mbedtls_ssl_ciphersuite_uses_srv_cert, .-mbedtls_ssl_ciphersuite_uses_srv_cert
	.section	.text.mbedtls_pk_ec_ro,"ax",@progbits
	.align	1
	.type	mbedtls_pk_ec_ro, @function
mbedtls_pk_ec_ro:
.LFB107:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk_internal.h"
	.loc 4 61 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	.loc 4 62 13
	addi	a5,s0,-24
	mv	a0,a5
	call	mbedtls_pk_get_type
	mv	a5,a0
	addi	a4,a5,-2
	.loc 4 62 5 discriminator 1
	li	a5,2
	bgtu	a4,a5,.L26
	.loc 4 66 20
	lw	a5,-20(s0)
	j	.L27
.L26:
	.loc 4 68 19
	li	a5,0
.L27:
	.loc 4 70 1
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
.LFE107:
	.size	mbedtls_pk_ec_ro, .-mbedtls_pk_ec_ro
	.section	.text.mbedtls_pk_get_ec_group_id,"ax",@progbits
	.align	1
	.type	mbedtls_pk_get_ec_group_id, @function
mbedtls_pk_get_ec_group_id:
.LFB109:
	.loc 4 87 1
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
	.loc 4 109 14
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_ec_ro
	mv	a5,a0
	.loc 4 109 12 discriminator 1
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	.loc 4 113 12
	lbu	a5,-17(s0)
	.loc 4 114 1
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
.LFE109:
	.size	mbedtls_pk_get_ec_group_id, .-mbedtls_pk_get_ec_group_id
	.section	.text.mbedtls_ssl_get_output_buflen,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_get_output_buflen, @function
mbedtls_ssl_get_output_buflen:
.LFB111:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_misc.h"
	.loc 5 463 1
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
	.loc 5 465 12
	lw	a0,-20(s0)
	call	mbedtls_ssl_get_output_max_frag_len
	mv	a5,a0
	.loc 5 467 12
	addi	a5,a5,381
	.loc 5 472 1
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
.LFE111:
	.size	mbedtls_ssl_get_output_buflen, .-mbedtls_ssl_get_output_buflen
	.section	.text.mbedtls_ssl_get_input_buflen,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_get_input_buflen, @function
mbedtls_ssl_get_input_buflen:
.LFB112:
	.loc 5 475 1
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
	.loc 5 477 12
	lw	a0,-20(s0)
	call	mbedtls_ssl_get_input_max_frag_len
	mv	a5,a0
	.loc 5 479 12
	addi	a5,a5,381
	.loc 5 484 1
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
.LFE112:
	.size	mbedtls_ssl_get_input_buflen, .-mbedtls_ssl_get_input_buflen
	.section	.text.mbedtls_ssl_chk_buf_ptr,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_chk_buf_ptr, @function
mbedtls_ssl_chk_buf_ptr:
.LFB113:
	.loc 5 509 1
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
	.loc 5 510 24
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bgtu	a4,a5,.L35
	.loc 5 510 49 discriminator 2
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 5 510 35 discriminator 2
	mv	a4,a5
	.loc 5 510 24 discriminator 2
	lw	a5,-28(s0)
	bleu	a5,a4,.L36
.L35:
	.loc 5 510 24 is_stmt 0 discriminator 3
	li	a5,1
	.loc 5 510 24
	j	.L38
.L36:
	.loc 5 510 24 discriminator 4
	li	a5,0
.L38:
	.loc 5 511 1 is_stmt 1
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
.LFE113:
	.size	mbedtls_ssl_chk_buf_ptr, .-mbedtls_ssl_chk_buf_ptr
	.section	.text.mbedtls_ssl_transform_uses_aead,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_transform_uses_aead, @function
mbedtls_ssl_transform_uses_aead:
.LFB114:
	.loc 5 1186 1
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
	.loc 5 1188 21
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 5 1188 35
	bne	a5,zero,.L40
	.loc 5 1188 47 discriminator 1
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 5 1188 35 discriminator 1
	beq	a5,zero,.L40
	.loc 5 1188 35 is_stmt 0 discriminator 3
	li	a5,1
	.loc 5 1188 35
	j	.L42
.L40:
	.loc 5 1188 35 discriminator 4
	li	a5,0
.L42:
	.loc 5 1193 1 is_stmt 1
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
.LFE114:
	.size	mbedtls_ssl_transform_uses_aead, .-mbedtls_ssl_transform_uses_aead
	.section	.rodata
	.align	2
.LC1:
	.string	"handshake state: %d (%s) -> %d (%s)"
	.align	2
.LC2:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_misc.h"
	.section	.text.mbedtls_ssl_handshake_set_state,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_handshake_set_state, @function
mbedtls_ssl_handshake_set_state:
.LFB115:
	.loc 5 1352 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 5 1353 5
	lw	a5,-36(s0)
	lw	s1,4(a5)
	.loc 5 1353 207
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 5 1353 5
	andi	a5,a5,0xff
	mv	a0,a5
	call	mbedtls_ssl_states_str
	mv	s3,a0
	.loc 5 1353 5 is_stmt 0 discriminator 1
	lbu	s2,-37(s0)
	lbu	a5,-37(s0)
	mv	a0,a5
	call	mbedtls_ssl_states_str
	mv	a5,a0
	.loc 5 1353 5 discriminator 2
	sw	a5,0(sp)
	mv	a7,s2
	mv	a6,s3
	mv	a5,s1
	lui	a4,%hi(.LC1)
	addi	a4,a4,%lo(.LC1)
	li	a3,1353
	lui	a2,%hi(.LC2)
	addi	a2,a2,%lo(.LC2)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1356 18 is_stmt 1
	lbu	a4,-37(s0)
	.loc 5 1356 16
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 5 1357 1
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE115:
	.size	mbedtls_ssl_handshake_set_state, .-mbedtls_ssl_handshake_set_state
	.section	.text.mbedtls_ssl_handshake_increment_state,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_handshake_increment_state, @function
mbedtls_ssl_handshake_increment_state:
.LFB116:
	.loc 5 1360 1
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
	.loc 5 1361 45
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 5 1361 5
	andi	a5,a5,0xff
	.loc 5 1361 53
	addi	a5,a5,1
	andi	a5,a5,0xff
	.loc 5 1361 5
	mv	a1,a5
	lw	a0,-20(s0)
	call	mbedtls_ssl_handshake_set_state
	.loc 5 1362 1
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
.LFE116:
	.size	mbedtls_ssl_handshake_increment_state, .-mbedtls_ssl_handshake_increment_state
	.section	.text.mbedtls_ssl_write_handshake_msg,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_write_handshake_msg, @function
mbedtls_ssl_write_handshake_msg:
.LFB117:
	.loc 5 1476 1
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
	.loc 5 1477 12
	li	a2,1
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_ssl_write_handshake_msg_ext
	mv	a5,a0
	.loc 5 1478 1
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
.LFE117:
	.size	mbedtls_ssl_write_handshake_msg, .-mbedtls_ssl_write_handshake_msg
	.section	.text.mbedtls_ssl_get_psk,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_get_psk, @function
mbedtls_ssl_get_psk:
.LFB118:
	.loc 5 1567 1
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
	.loc 5 1568 12
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 1568 23
	lw	a5,408(a5)
	.loc 5 1568 8
	beq	a5,zero,.L48
	.loc 5 1568 42 discriminator 1
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 1568 53 discriminator 1
	lw	a5,412(a5)
	.loc 5 1568 36 discriminator 1
	beq	a5,zero,.L48
	.loc 5 1569 19
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 1569 30
	lw	a4,408(a5)
	.loc 5 1569 14
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 5 1570 23
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 1570 34
	lw	a4,412(a5)
	.loc 5 1570 18
	lw	a5,-28(s0)
	sw	a4,0(a5)
	j	.L49
.L48:
	.loc 5 1571 19
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 1571 25
	lw	a5,172(a5)
	.loc 5 1571 15
	beq	a5,zero,.L50
	.loc 5 1571 44 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 1571 50 discriminator 1
	lw	a5,176(a5)
	.loc 5 1571 38 discriminator 1
	beq	a5,zero,.L50
	.loc 5 1572 19
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 1572 25
	lw	a4,172(a5)
	.loc 5 1572 14
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 5 1573 23
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 1573 29
	lw	a4,176(a5)
	.loc 5 1573 18
	lw	a5,-28(s0)
	sw	a4,0(a5)
	j	.L49
.L50:
	.loc 5 1575 14
	lw	a5,-24(s0)
	sw	zero,0(a5)
	.loc 5 1576 18
	lw	a5,-28(s0)
	sw	zero,0(a5)
	.loc 5 1577 16
	li	a5,-28672
	addi	a5,a5,-1536
	j	.L51
.L49:
	.loc 5 1580 12
	li	a5,0
.L51:
	.loc 5 1581 1
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
.LFE118:
	.size	mbedtls_ssl_get_psk, .-mbedtls_ssl_get_psk
	.section	.text.mbedtls_ssl_check_srtp_profile_value,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_check_srtp_profile_value, @function
mbedtls_ssl_check_srtp_profile_value:
.LFB119:
	.loc 5 1659 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sh	a5,-18(s0)
	.loc 5 1660 5
	lhu	a5,-18(s0)
	li	a4,2
	bgt	a5,a4,.L53
	bgt	a5,zero,.L54
	.loc 5 1666 18
	j	.L58
.L53:
	addi	a4,a5,-5
	.loc 5 1660 5
	li	a5,1
	bgtu	a4,a5,.L58
.L54:
	.loc 5 1665 20
	lhu	a5,-18(s0)
	j	.L56
.L58:
	.loc 5 1666 18
	nop
	.loc 5 1668 12
	li	a5,0
.L56:
	.loc 5 1669 1
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
.LFE119:
	.size	mbedtls_ssl_check_srtp_profile_value, .-mbedtls_ssl_check_srtp_profile_value
	.section	.text.mbedtls_ssl_own_cert,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_own_cert, @function
mbedtls_ssl_own_cert:
.LFB121:
	.loc 5 1687 1
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
	.loc 5 1690 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 1690 8
	beq	a5,zero,.L60
	.loc 5 1690 37 discriminator 1
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 1690 48 discriminator 1
	lw	a5,540(a5)
	.loc 5 1690 31 discriminator 1
	beq	a5,zero,.L60
	.loc 5 1691 23
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 1691 18
	lw	a5,540(a5)
	sw	a5,-20(s0)
	j	.L61
.L60:
	.loc 5 1693 23
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 1693 18
	lw	a5,108(a5)
	sw	a5,-20(s0)
.L61:
	.loc 5 1696 35
	lw	a5,-20(s0)
	beq	a5,zero,.L62
	.loc 5 1696 35 is_stmt 0 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 1696 35
	j	.L64
.L62:
	.loc 5 1696 35 discriminator 2
	li	a5,0
.L64:
	.loc 5 1697 1 is_stmt 1
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
.LFE121:
	.size	mbedtls_ssl_own_cert, .-mbedtls_ssl_own_cert
	.section	.text.mbedtls_ssl_hs_hdr_len,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_hs_hdr_len, @function
mbedtls_ssl_hs_hdr_len:
.LFB124:
	.loc 5 1777 1
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
	.loc 5 1779 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 1779 18
	lbu	a4,5(a5)
	.loc 5 1779 8
	li	a5,1
	bne	a4,a5,.L66
	.loc 5 1780 16
	li	a5,12
	j	.L67
.L66:
	.loc 5 1785 12
	li	a5,4
.L67:
	.loc 5 1786 1
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
.LFE124:
	.size	mbedtls_ssl_hs_hdr_len, .-mbedtls_ssl_hs_hdr_len
	.section	.text.mbedtls_ssl_conf_is_tls12_only,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_conf_is_tls12_only, @function
mbedtls_ssl_conf_is_tls12_only:
.LFB126:
	.loc 5 1915 1
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
	.loc 5 1916 16
	lw	a5,-20(s0)
	lhu	a4,2(a5)
	.loc 5 1916 64
	li	a5,771
	bne	a4,a5,.L69
	.loc 5 1917 16
	lw	a5,-20(s0)
	lhu	a4,0(a5)
	.loc 5 1916 64 discriminator 1
	li	a5,771
	bne	a4,a5,.L69
	.loc 5 1916 64 is_stmt 0 discriminator 3
	li	a5,1
	.loc 5 1916 64
	j	.L71
.L69:
	.loc 5 1916 64 discriminator 4
	li	a5,0
.L71:
	.loc 5 1918 1 is_stmt 1
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
.LFE126:
	.size	mbedtls_ssl_conf_is_tls12_only, .-mbedtls_ssl_conf_is_tls12_only
	.section	.text.mbedtls_ssl_get_groups,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_get_groups, @function
mbedtls_ssl_get_groups:
.LFB129:
	.loc 5 2326 1
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
	.loc 5 2328 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 2328 21
	lw	a5,152(a5)
	.loc 5 2336 1
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
.LFE129:
	.size	mbedtls_ssl_get_groups, .-mbedtls_ssl_get_groups
	.section	.text.mbedtls_ssl_get_sig_algs,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_get_sig_algs, @function
mbedtls_ssl_get_sig_algs:
.LFB135:
	.loc 5 2430 1
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
	.loc 5 2440 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 2440 21
	lw	a5,148(a5)
	.loc 5 2447 1
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
.LFE135:
	.size	mbedtls_ssl_get_sig_algs, .-mbedtls_ssl_get_sig_algs
	.section	.text.mbedtls_ssl_sig_alg_is_offered,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_sig_alg_is_offered, @function
mbedtls_ssl_sig_alg_is_offered:
.LFB136:
	.loc 5 2539 1
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
	sh	a5,-38(s0)
	.loc 5 2540 31
	lw	a0,-36(s0)
	call	mbedtls_ssl_get_sig_algs
	sw	a0,-20(s0)
	.loc 5 2541 8
	lw	a5,-20(s0)
	bne	a5,zero,.L79
	.loc 5 2542 16
	li	a5,0
	j	.L78
.L81:
	.loc 5 2546 13
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	.loc 5 2546 12
	lhu	a4,-38(s0)
	bne	a4,a5,.L80
	.loc 5 2547 20
	li	a5,1
	j	.L78
.L80:
	.loc 5 2545 36
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
.L79:
	.loc 5 2545 12 discriminator 1
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	.loc 5 2545 21 discriminator 1
	bne	a5,zero,.L81
	.loc 5 2550 12
	li	a5,0
.L78:
	.loc 5 2551 1
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
.LFE136:
	.size	mbedtls_ssl_sig_alg_is_offered, .-mbedtls_ssl_sig_alg_is_offered
	.section	.text.mbedtls_ssl_tls12_sig_alg_is_supported,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_tls12_sig_alg_is_supported, @function
mbedtls_ssl_tls12_sig_alg_is_supported:
.LFB138:
	.loc 5 2593 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sh	a5,-34(s0)
	.loc 5 2595 27
	lhu	a5,-34(s0)
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 2595 19
	sb	a5,-17(s0)
	.loc 5 2596 19
	lhu	a5,-34(s0)
	sb	a5,-18(s0)
	.loc 5 2598 5
	lbu	a5,-17(s0)
	li	a4,6
	beq	a5,a4,.L96
	li	a4,6
	bgt	a5,a4,.L84
	li	a4,5
	beq	a5,a4,.L97
	li	a4,5
	bgt	a5,a4,.L84
	li	a4,4
	beq	a5,a4,.L98
	li	a4,4
	bgt	a5,a4,.L84
	li	a4,3
	beq	a5,a4,.L99
	li	a4,3
	bgt	a5,a4,.L84
	li	a4,1
	beq	a5,a4,.L100
	li	a4,2
	beq	a5,a4,.L101
.L84:
	.loc 5 2630 20
	li	a5,0
	j	.L91
.L96:
	.loc 5 2626 13
	nop
	j	.L90
.L97:
	.loc 5 2621 13
	nop
	j	.L90
.L98:
	.loc 5 2616 13
	nop
	j	.L90
.L99:
	.loc 5 2611 13
	nop
	j	.L90
.L100:
	.loc 5 2601 13
	nop
	j	.L90
.L101:
	.loc 5 2606 13
	nop
.L90:
	.loc 5 2633 5
	lbu	a5,-18(s0)
	li	a4,1
	beq	a5,a4,.L102
	li	a4,3
	beq	a5,a4,.L103
	.loc 5 2645 20
	li	a5,0
	j	.L91
.L102:
	.loc 5 2636 13
	nop
	j	.L95
.L103:
	.loc 5 2641 13
	nop
.L95:
	.loc 5 2648 12
	li	a5,1
.L91:
	.loc 5 2649 1
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
.LFE138:
	.size	mbedtls_ssl_tls12_sig_alg_is_supported, .-mbedtls_ssl_tls12_sig_alg_is_supported
	.section	.text.mbedtls_ssl_sig_alg_is_supported,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_sig_alg_is_supported, @function
mbedtls_ssl_sig_alg_is_supported:
.LFB139:
	.loc 5 2655 1
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
	mv	a5,a1
	sh	a5,-22(s0)
	.loc 5 2658 12
	lw	a5,-20(s0)
	lhu	a4,16(a5)
	.loc 5 2658 8
	li	a5,771
	bne	a4,a5,.L105
	.loc 5 2659 16
	lhu	a5,-22(s0)
	mv	a0,a5
	call	mbedtls_ssl_tls12_sig_alg_is_supported
	mv	a5,a0
	j	.L106
.L105:
	.loc 5 2670 12
	li	a5,0
.L106:
	.loc 5 2671 1
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
.LFE139:
	.size	mbedtls_ssl_sig_alg_is_supported, .-mbedtls_ssl_sig_alg_is_supported
	.section	.text.mbedtls_ssl_conf_cid,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_cid
	.type	mbedtls_ssl_conf_cid, @function
mbedtls_ssl_conf_cid:
.LFB142:
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_tls.c"
	.loc 6 87 1
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
	.loc 6 88 8
	lw	a4,-24(s0)
	li	a5,32
	bleu	a4,a5,.L108
	.loc 6 89 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L109
.L108:
	.loc 6 92 8
	lw	a4,-28(s0)
	li	a5,1
	beq	a4,a5,.L110
	.loc 6 92 31 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L110
	.loc 6 94 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L109
.L110:
	.loc 6 97 33
	lw	a5,-28(s0)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,16(a5)
	.loc 6 98 19
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,100(a5)
	.loc 6 99 12
	li	a5,0
.L109:
	.loc 6 100 1
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
.LFE142:
	.size	mbedtls_ssl_conf_cid, .-mbedtls_ssl_conf_cid
	.section	.rodata
	.align	2
.LC3:
	.string	"Disable use of CID extension."
	.align	2
.LC4:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_tls.c"
	.align	2
.LC5:
	.string	"Enable use of CID extension."
	.align	2
.LC6:
	.string	"Own CID"
	.align	2
.LC7:
	.string	"CID length %u does not match CID length %u in config"
	.section	.text.mbedtls_ssl_set_cid,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_cid
	.type	mbedtls_ssl_set_cid, @function
mbedtls_ssl_set_cid:
.LFB143:
	.loc 6 106 1
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
	.loc 6 107 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 6 107 18
	lbu	a4,5(a5)
	.loc 6 107 8
	li	a5,1
	beq	a4,a5,.L112
	.loc 6 108 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L113
.L112:
	.loc 6 111 24
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,589(a5)
	.loc 6 112 8
	lw	a5,-24(s0)
	bne	a5,zero,.L114
	.loc 6 113 9
	lui	a5,%hi(.LC3)
	addi	a4,a5,%lo(.LC3)
	li	a3,113
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 6 114 16
	li	a5,0
	j	.L113
.L114:
	.loc 6 116 5
	lui	a5,%hi(.LC5)
	addi	a4,a5,%lo(.LC5)
	li	a3,116
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 6 117 5
	lw	a6,-32(s0)
	lw	a5,-28(s0)
	lui	a4,%hi(.LC6)
	addi	a4,a4,%lo(.LC6)
	li	a3,117
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,3
	lw	a0,-20(s0)
	call	mbedtls_debug_print_buf
	.loc 6 119 27
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 6 119 33
	lw	a5,100(a5)
	.loc 6 119 8
	lw	a4,-32(s0)
	beq	a4,a5,.L115
	.loc 6 120 226
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 6 120 232
	lw	a5,100(a5)
	.loc 6 120 9
	mv	a6,a5
	lw	a5,-32(s0)
	lui	a4,%hi(.LC7)
	addi	a4,a4,%lo(.LC7)
	li	a3,120
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,3
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 6 123 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L113
.L115:
	.loc 6 126 15
	lw	a5,-20(s0)
	addi	a5,a5,556
	.loc 6 126 5
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	mv	a0,a5
	call	memcpy
	.loc 6 129 24
	lw	a5,-32(s0)
	andi	a4,a5,0xff
	.loc 6 129 22
	lw	a5,-20(s0)
	sb	a4,588(a5)
	.loc 6 131 12
	li	a5,0
.L113:
	.loc 6 132 1
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
.LFE143:
	.size	mbedtls_ssl_set_cid, .-mbedtls_ssl_set_cid
	.section	.text.mbedtls_ssl_get_own_cid,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_own_cid
	.type	mbedtls_ssl_get_own_cid, @function
mbedtls_ssl_get_own_cid:
.LFB144:
	.loc 6 138 1
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
	.loc 6 139 14
	lw	a5,-24(s0)
	sw	zero,0(a5)
	.loc 6 141 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 6 141 18
	lbu	a4,5(a5)
	.loc 6 141 8
	li	a5,1
	beq	a4,a5,.L117
	.loc 6 142 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L118
.L117:
	.loc 6 148 12
	lw	a5,-20(s0)
	lbu	a5,588(a5)
	.loc 6 148 8
	beq	a5,zero,.L119
	.loc 6 148 37 discriminator 1
	lw	a5,-20(s0)
	lbu	a5,589(a5)
	.loc 6 148 31 discriminator 1
	bne	a5,zero,.L120
.L119:
	.loc 6 149 16
	li	a5,0
	j	.L118
.L120:
	.loc 6 152 8
	lw	a5,-32(s0)
	beq	a5,zero,.L121
	.loc 6 153 27
	lw	a5,-20(s0)
	lbu	a5,588(a5)
	mv	a4,a5
	.loc 6 153 22
	lw	a5,-32(s0)
	sw	a4,0(a5)
	.loc 6 154 12
	lw	a5,-28(s0)
	beq	a5,zero,.L121
	.loc 6 155 32
	lw	a5,-20(s0)
	addi	a4,a5,556
	.loc 6 155 46
	lw	a5,-20(s0)
	lbu	a5,588(a5)
	.loc 6 155 13
	mv	a2,a5
	mv	a1,a4
	lw	a0,-28(s0)
	call	memcpy
.L121:
	.loc 6 159 14
	lw	a5,-24(s0)
	li	a4,1
	sw	a4,0(a5)
	.loc 6 161 12
	li	a5,0
.L118:
	.loc 6 162 1
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
.LFE144:
	.size	mbedtls_ssl_get_own_cid, .-mbedtls_ssl_get_own_cid
	.section	.text.mbedtls_ssl_get_peer_cid,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_peer_cid
	.type	mbedtls_ssl_get_peer_cid, @function
mbedtls_ssl_get_peer_cid:
.LFB145:
	.loc 6 168 1
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
	.loc 6 169 14
	lw	a5,-24(s0)
	sw	zero,0(a5)
	.loc 6 171 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 6 171 18
	lbu	a4,5(a5)
	.loc 6 171 8
	li	a5,1
	bne	a4,a5,.L123
	.loc 6 172 9
	lw	a0,-20(s0)
	call	mbedtls_ssl_is_handshake_over
	mv	a5,a0
	.loc 6 171 35 discriminator 1
	bne	a5,zero,.L124
.L123:
	.loc 6 173 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L125
.L124:
	.loc 6 180 12
	lw	a5,-20(s0)
	lw	a5,68(a5)
	.loc 6 180 26
	lbu	a5,220(a5)
	.loc 6 180 8
	bne	a5,zero,.L126
	.loc 6 181 12
	lw	a5,-20(s0)
	lw	a5,68(a5)
	.loc 6 181 26
	lbu	a5,221(a5)
	.loc 6 180 44 discriminator 1
	bne	a5,zero,.L126
	.loc 6 182 16
	li	a5,0
	j	.L125
.L126:
	.loc 6 185 8
	lw	a5,-32(s0)
	beq	a5,zero,.L127
	.loc 6 186 28
	lw	a5,-20(s0)
	lw	a5,68(a5)
	.loc 6 186 42
	lbu	a5,221(a5)
	mv	a4,a5
	.loc 6 186 23
	lw	a5,-32(s0)
	sw	a4,0(a5)
	.loc 6 187 12
	lw	a5,-28(s0)
	beq	a5,zero,.L127
	.loc 6 188 33
	lw	a5,-20(s0)
	lw	a5,68(a5)
	.loc 6 188 47
	addi	a4,a5,254
	.loc 6 189 23
	lw	a5,-20(s0)
	lw	a5,68(a5)
	.loc 6 189 37
	lbu	a5,221(a5)
	.loc 6 188 13
	mv	a2,a5
	mv	a1,a4
	lw	a0,-28(s0)
	call	memcpy
.L127:
	.loc 6 193 14
	lw	a5,-24(s0)
	li	a4,1
	sw	a4,0(a5)
	.loc 6 195 12
	li	a5,0
.L125:
	.loc 6 196 1
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
.LFE145:
	.size	mbedtls_ssl_get_peer_cid, .-mbedtls_ssl_get_peer_cid
	.section	.text.ssl_mfl_code_to_length,"ax",@progbits
	.align	1
	.type	ssl_mfl_code_to_length, @function
ssl_mfl_code_to_length:
.LFB146:
	.loc 6 211 1
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
	.loc 6 212 5
	lw	a4,-20(s0)
	li	a5,4
	beq	a4,a5,.L129
	lw	a4,-20(s0)
	li	a5,4
	bgt	a4,a5,.L130
	lw	a4,-20(s0)
	li	a5,3
	beq	a4,a5,.L131
	lw	a4,-20(s0)
	li	a5,3
	bgt	a4,a5,.L130
	lw	a4,-20(s0)
	li	a5,2
	beq	a4,a5,.L132
	lw	a4,-20(s0)
	li	a5,2
	bgt	a4,a5,.L130
	lw	a5,-20(s0)
	beq	a5,zero,.L133
	lw	a4,-20(s0)
	li	a5,1
	beq	a4,a5,.L134
	j	.L130
.L133:
	.loc 6 214 20
	li	a5,16384
	j	.L135
.L134:
	.loc 6 216 20
	li	a5,512
	j	.L135
.L132:
	.loc 6 218 20
	li	a5,1024
	j	.L135
.L131:
	.loc 6 220 20
	li	a5,4096
	addi	a5,a5,-2048
	j	.L135
.L129:
	.loc 6 222 20
	li	a5,4096
	j	.L135
.L130:
	.loc 6 224 20
	li	a5,16384
.L135:
	.loc 6 226 1
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
.LFE146:
	.size	ssl_mfl_code_to_length, .-ssl_mfl_code_to_length
	.section	.text.mbedtls_ssl_session_copy,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_session_copy
	.type	mbedtls_ssl_session_copy, @function
mbedtls_ssl_session_copy:
.LFB147:
	.loc 6 231 1
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
	.loc 6 232 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_session_free
	.loc 6 233 5
	li	a2,120
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	memcpy
	.loc 6 235 17
	lw	a5,-36(s0)
	sw	zero,104(a5)
	.loc 6 250 12
	lw	a5,-40(s0)
	lw	a5,96(a5)
	.loc 6 250 8
	beq	a5,zero,.L137
.LBB76:
	.loc 6 251 13
	li	a5,-110
	sw	a5,-20(s0)
	.loc 6 253 26
	li	a1,404
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 6 253 24 discriminator 1
	lw	a5,-36(s0)
	sw	a4,96(a5)
	.loc 6 254 16
	lw	a5,-36(s0)
	lw	a5,96(a5)
	.loc 6 254 12
	bne	a5,zero,.L138
	.loc 6 255 20
	li	a5,-32768
	addi	a5,a5,256
	j	.L139
.L138:
	.loc 6 258 9
	lw	a5,-36(s0)
	lw	a5,96(a5)
	mv	a0,a5
	call	mbedtls_x509_crt_init
	.loc 6 260 20
	lw	a5,-36(s0)
	lw	a4,96(a5)
	.loc 6 260 66
	lw	a5,-40(s0)
	lw	a5,96(a5)
	.loc 6 260 82
	lw	a3,12(a5)
	.loc 6 261 50
	lw	a5,-40(s0)
	lw	a5,96(a5)
	.loc 6 260 20
	lw	a5,8(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_x509_crt_parse_der
	sw	a0,-20(s0)
	.loc 6 260 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L137
	.loc 6 262 21
	lw	a5,-36(s0)
	lw	a5,96(a5)
	.loc 6 262 13
	mv	a0,a5
	call	free
	.loc 6 263 28
	lw	a5,-36(s0)
	sw	zero,96(a5)
	.loc 6 264 20
	lw	a5,-20(s0)
	j	.L139
.L137:
.LBE76:
	.loc 6 295 12
	lw	a5,-40(s0)
	lw	a5,104(a5)
	.loc 6 295 8
	beq	a5,zero,.L140
	.loc 6 296 36
	lw	a5,-40(s0)
	lw	a5,108(a5)
	.loc 6 296 23
	mv	a1,a5
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 6 296 21 discriminator 1
	lw	a5,-36(s0)
	sw	a4,104(a5)
	.loc 6 297 16
	lw	a5,-36(s0)
	lw	a5,104(a5)
	.loc 6 297 12
	bne	a5,zero,.L141
	.loc 6 298 20
	li	a5,-32768
	addi	a5,a5,256
	j	.L139
.L141:
	.loc 6 301 19
	lw	a5,-36(s0)
	lw	a4,104(a5)
	.loc 6 301 32
	lw	a5,-40(s0)
	lw	a3,104(a5)
	.loc 6 301 45
	lw	a5,-40(s0)
	lw	a5,108(a5)
	.loc 6 301 9
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
.L140:
	.loc 6 317 12
	li	a5,0
.L139:
	.loc 6 318 1
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
.LFE147:
	.size	mbedtls_ssl_session_copy, .-mbedtls_ssl_session_copy
	.section	.text.resize_buffer,"ax",@progbits
	.align	1
	.type	resize_buffer, @function
resize_buffer:
.LFB148:
	.loc 6 323 1
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
	.loc 6 324 37
	lw	a1,-40(s0)
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-20(s0)
	.loc 6 325 8
	lw	a5,-20(s0)
	bne	a5,zero,.L143
	.loc 6 326 16
	li	a5,-32768
	addi	a5,a5,256
	j	.L144
.L143:
	.loc 6 333 5
	lw	a5,-36(s0)
	lw	a3,0(a5)
	.loc 6 334 23
	lw	a5,-44(s0)
	lw	a4,0(a5)
	.loc 6 333 5
	lw	a5,-40(s0)
	bleu	a5,a4,.L145
	mv	a5,a4
.L145:
	mv	a2,a5
	mv	a1,a3
	lw	a0,-20(s0)
	call	memcpy
	.loc 6 335 5
	lw	a5,-36(s0)
	lw	a4,0(a5)
	lw	a5,-44(s0)
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_zeroize_and_free
	.loc 6 337 13
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 6 338 14
	lw	a5,-44(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 6 340 12
	li	a5,0
.L144:
	.loc 6 341 1
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
.LFE148:
	.size	resize_buffer, .-resize_buffer
	.section	.rodata
	.align	2
.LC8:
	.string	"input buffer resizing failed - out of memory"
	.align	2
.LC9:
	.string	"Reallocating in_buf to %zu"
	.align	2
.LC10:
	.string	"output buffer resizing failed - out of memory"
	.align	2
.LC11:
	.string	"Reallocating out_buf to %zu"
	.section	.text.handle_buffer_resizing,"ax",@progbits
	.align	1
	.type	handle_buffer_resizing, @function
handle_buffer_resizing:
.LFB149:
	.loc 6 346 1
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
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	.loc 6 347 9
	sw	zero,-20(s0)
	.loc 6 348 12
	sw	zero,-24(s0)
	.loc 6 348 28
	sw	zero,-28(s0)
	.loc 6 348 46
	sw	zero,-32(s0)
	.loc 6 348 65
	sw	zero,-36(s0)
	.loc 6 349 12
	sw	zero,-40(s0)
	.loc 6 349 29
	sw	zero,-44(s0)
	.loc 6 349 48
	sw	zero,-48(s0)
	.loc 6 350 12
	lw	a5,-52(s0)
	lw	a5,96(a5)
	.loc 6 350 8
	beq	a5,zero,.L147
	.loc 6 351 25
	lw	a5,-52(s0)
	lw	a4,120(a5)
	.loc 6 351 39
	lw	a5,-52(s0)
	lw	a5,96(a5)
	.loc 6 351 34
	sub	a5,a4,a5
	.loc 6 351 20
	sw	a5,-24(s0)
	.loc 6 352 27
	lw	a5,-52(s0)
	lw	a4,116(a5)
	.loc 6 352 40
	lw	a5,-52(s0)
	lw	a5,96(a5)
	.loc 6 352 35
	sub	a5,a4,a5
	.loc 6 352 22
	sw	a5,-28(s0)
	.loc 6 353 28
	lw	a5,-52(s0)
	lw	a4,112(a5)
	.loc 6 353 42
	lw	a5,-52(s0)
	lw	a5,96(a5)
	.loc 6 353 37
	sub	a5,a4,a5
	.loc 6 353 23
	sw	a5,-32(s0)
	.loc 6 354 21
	lw	a5,-52(s0)
	lw	a4,104(a5)
	.loc 6 354 35
	lw	a5,-52(s0)
	lw	a5,96(a5)
	.loc 6 354 30
	sub	a5,a4,a5
	.loc 6 354 16
	sw	a5,-36(s0)
	.loc 6 355 13
	lw	a5,-56(s0)
	beq	a5,zero,.L148
	.loc 6 356 16
	lw	a5,-52(s0)
	lw	a5,140(a5)
	.loc 6 356 46
	lw	a4,-60(s0)
	bgeu	a4,a5,.L149
	.loc 6 356 52 discriminator 1
	lw	a5,-52(s0)
	lw	a5,136(a5)
	.loc 6 356 46 discriminator 1
	lw	a4,-60(s0)
	bleu	a4,a5,.L149
	.loc 6 356 46 is_stmt 0 discriminator 3
	li	a5,1
	.loc 6 356 46
	j	.L150
.L149:
	.loc 6 356 46 discriminator 4
	li	a5,0
.L150:
	.loc 6 355 13 is_stmt 1
	andi	a5,a5,1
	andi	a5,a5,0xff
	j	.L151
.L148:
	.loc 6 357 16
	lw	a5,-52(s0)
	lw	a5,140(a5)
	.loc 6 355 13 discriminator 1
	lw	a4,-60(s0)
	sgtu	a5,a4,a5
	andi	a5,a5,0xff
.L151:
	.loc 6 355 12 discriminator 3
	beq	a5,zero,.L147
	.loc 6 358 17
	lw	a5,-52(s0)
	addi	a4,a5,96
	lw	a5,-52(s0)
	addi	a5,a5,140
	mv	a2,a5
	lw	a1,-60(s0)
	mv	a0,a4
	call	resize_buffer
	mv	a5,a0
	.loc 6 358 16 discriminator 1
	beq	a5,zero,.L152
	.loc 6 359 17
	lui	a5,%hi(.LC8)
	addi	a4,a5,%lo(.LC8)
	li	a3,359
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	j	.L147
.L152:
	.loc 6 361 17
	lw	a5,-60(s0)
	lui	a4,%hi(.LC9)
	addi	a4,a4,%lo(.LC9)
	li	a3,361
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 363 26
	li	a5,1
	sw	a5,-20(s0)
.L147:
	.loc 6 368 12
	lw	a5,-52(s0)
	lw	a5,192(a5)
	.loc 6 368 8
	beq	a5,zero,.L153
	.loc 6 369 26
	lw	a5,-52(s0)
	lw	a4,216(a5)
	.loc 6 369 41
	lw	a5,-52(s0)
	lw	a5,192(a5)
	.loc 6 369 36
	sub	a5,a4,a5
	.loc 6 369 21
	sw	a5,-40(s0)
	.loc 6 370 28
	lw	a5,-52(s0)
	lw	a4,212(a5)
	.loc 6 370 42
	lw	a5,-52(s0)
	lw	a5,192(a5)
	.loc 6 370 37
	sub	a5,a4,a5
	.loc 6 370 23
	sw	a5,-44(s0)
	.loc 6 371 29
	lw	a5,-52(s0)
	lw	a4,208(a5)
	.loc 6 371 44
	lw	a5,-52(s0)
	lw	a5,192(a5)
	.loc 6 371 39
	sub	a5,a4,a5
	.loc 6 371 24
	sw	a5,-48(s0)
	.loc 6 372 13
	lw	a5,-56(s0)
	beq	a5,zero,.L154
	.loc 6 373 16
	lw	a5,-52(s0)
	lw	a5,232(a5)
	.loc 6 373 48
	lw	a4,-64(s0)
	bgeu	a4,a5,.L155
	.loc 6 373 54 discriminator 1
	lw	a5,-52(s0)
	lw	a5,228(a5)
	.loc 6 373 48 discriminator 1
	lw	a4,-64(s0)
	bleu	a4,a5,.L155
	.loc 6 373 48 is_stmt 0 discriminator 3
	li	a5,1
	.loc 6 373 48
	j	.L156
.L155:
	.loc 6 373 48 discriminator 4
	li	a5,0
.L156:
	.loc 6 372 13 is_stmt 1
	andi	a5,a5,1
	andi	a5,a5,0xff
	j	.L157
.L154:
	.loc 6 374 16
	lw	a5,-52(s0)
	lw	a5,232(a5)
	.loc 6 372 13 discriminator 1
	lw	a4,-64(s0)
	sgtu	a5,a4,a5
	andi	a5,a5,0xff
.L157:
	.loc 6 372 12 discriminator 3
	beq	a5,zero,.L153
	.loc 6 375 17
	lw	a5,-52(s0)
	addi	a4,a5,192
	lw	a5,-52(s0)
	addi	a5,a5,232
	mv	a2,a5
	lw	a1,-64(s0)
	mv	a0,a4
	call	resize_buffer
	mv	a5,a0
	.loc 6 375 16 discriminator 1
	beq	a5,zero,.L158
	.loc 6 376 17
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,376
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	j	.L153
.L158:
	.loc 6 378 17
	lw	a5,-64(s0)
	lui	a4,%hi(.LC11)
	addi	a4,a4,%lo(.LC11)
	li	a3,378
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 380 26
	li	a5,1
	sw	a5,-20(s0)
.L153:
	.loc 6 384 8
	lw	a5,-20(s0)
	beq	a5,zero,.L160
	.loc 6 386 26
	lw	a5,-52(s0)
	lw	a4,96(a5)
	.loc 6 386 35
	lw	a5,-36(s0)
	add	a4,a4,a5
	.loc 6 386 21
	lw	a5,-52(s0)
	sw	a4,104(a5)
	.loc 6 387 9
	lw	a0,-52(s0)
	call	mbedtls_ssl_update_in_pointers
	.loc 6 388 9
	lw	a0,-52(s0)
	call	mbedtls_ssl_reset_out_pointers
	.loc 6 392 27
	lw	a5,-52(s0)
	lw	a4,192(a5)
	.loc 6 392 37
	lw	a5,-40(s0)
	add	a4,a4,a5
	.loc 6 392 22
	lw	a5,-52(s0)
	sw	a4,216(a5)
	.loc 6 393 27
	lw	a5,-52(s0)
	lw	a4,192(a5)
	.loc 6 393 37
	lw	a5,-48(s0)
	add	a4,a4,a5
	.loc 6 393 22
	lw	a5,-52(s0)
	sw	a4,208(a5)
	.loc 6 394 26
	lw	a5,-52(s0)
	lw	a4,192(a5)
	.loc 6 394 36
	lw	a5,-44(s0)
	add	a4,a4,a5
	.loc 6 394 21
	lw	a5,-52(s0)
	sw	a4,212(a5)
	.loc 6 396 26
	lw	a5,-52(s0)
	lw	a4,96(a5)
	.loc 6 396 35
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 6 396 21
	lw	a5,-52(s0)
	sw	a4,120(a5)
	.loc 6 397 26
	lw	a5,-52(s0)
	lw	a4,96(a5)
	.loc 6 397 35
	lw	a5,-32(s0)
	add	a4,a4,a5
	.loc 6 397 21
	lw	a5,-52(s0)
	sw	a4,112(a5)
	.loc 6 398 25
	lw	a5,-52(s0)
	lw	a4,96(a5)
	.loc 6 398 34
	lw	a5,-28(s0)
	add	a4,a4,a5
	.loc 6 398 20
	lw	a5,-52(s0)
	sw	a4,116(a5)
.L160:
	.loc 6 400 1
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE149:
	.size	handle_buffer_resizing, .-handle_buffer_resizing
	.section	.text.mbedtls_ssl_tls_prf,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_tls_prf
	.type	mbedtls_ssl_tls_prf, @function
mbedtls_ssl_tls_prf:
.LFB150:
	.loc 6 476 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	a7,-64(s0)
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 6 477 29
	sw	zero,-20(s0)
	.loc 6 479 5
	lbu	a5,-33(s0)
	li	a4,1
	beq	a5,a4,.L162
	li	a4,2
	beq	a5,a4,.L163
	j	.L167
.L162:
	.loc 6 483 21
	lui	a5,%hi(tls_prf_sha384)
	addi	a5,a5,%lo(tls_prf_sha384)
	sw	a5,-20(s0)
	.loc 6 484 13
	j	.L165
.L163:
	.loc 6 488 21
	lui	a5,%hi(tls_prf_sha256)
	addi	a5,a5,%lo(tls_prf_sha256)
	sw	a5,-20(s0)
	.loc 6 489 13
	j	.L165
.L167:
	.loc 6 493 20
	li	a5,-28672
	addi	a5,a5,-128
	j	.L166
.L165:
	.loc 6 496 12
	lw	a7,-20(s0)
	lw	a6,-64(s0)
	lw	a5,-60(s0)
	lw	a4,-56(s0)
	lw	a3,-52(s0)
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	jalr	a7
.LVL0:
	mv	a5,a0
.L166:
	.loc 6 497 1
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
.LFE150:
	.size	mbedtls_ssl_tls_prf, .-mbedtls_ssl_tls_prf
	.section	.text.ssl_clear_peer_cert,"ax",@progbits
	.align	1
	.type	ssl_clear_peer_cert, @function
ssl_clear_peer_cert:
.LFB151:
	.loc 6 501 1
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
	.loc 6 503 16
	lw	a5,-20(s0)
	lw	a5,96(a5)
	.loc 6 503 8
	beq	a5,zero,.L170
	.loc 6 504 9
	lw	a5,-20(s0)
	lw	a5,96(a5)
	mv	a0,a5
	call	mbedtls_x509_crt_free
	.loc 6 505 21
	lw	a5,-20(s0)
	lw	a5,96(a5)
	.loc 6 505 9
	mv	a0,a5
	call	free
	.loc 6 506 28
	lw	a5,-20(s0)
	sw	zero,96(a5)
.L170:
	.loc 6 517 1
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
.LFE151:
	.size	ssl_clear_peer_cert, .-ssl_clear_peer_cert
	.section	.text.mbedtls_ssl_get_extension_id,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_extension_id
	.type	mbedtls_ssl_get_extension_id, @function
mbedtls_ssl_get_extension_id:
.LFB152:
	.loc 6 521 1
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
	.loc 6 522 5
	lw	a4,-20(s0)
	li	a5,51
	beq	a4,a5,.L172
	lw	a4,-20(s0)
	li	a5,51
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,50
	beq	a4,a5,.L174
	lw	a4,-20(s0)
	li	a5,50
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,49
	beq	a4,a5,.L175
	lw	a4,-20(s0)
	li	a5,49
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,48
	beq	a4,a5,.L176
	lw	a4,-20(s0)
	li	a5,48
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,47
	beq	a4,a5,.L177
	lw	a4,-20(s0)
	li	a5,47
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,45
	beq	a4,a5,.L178
	lw	a4,-20(s0)
	li	a5,45
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,44
	beq	a4,a5,.L179
	lw	a4,-20(s0)
	li	a5,44
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,43
	beq	a4,a5,.L180
	lw	a4,-20(s0)
	li	a5,43
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,42
	beq	a4,a5,.L181
	lw	a4,-20(s0)
	li	a5,42
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,41
	beq	a4,a5,.L182
	lw	a4,-20(s0)
	li	a5,41
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,35
	beq	a4,a5,.L183
	lw	a4,-20(s0)
	li	a5,35
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,28
	beq	a4,a5,.L184
	lw	a4,-20(s0)
	li	a5,28
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,23
	beq	a4,a5,.L185
	lw	a4,-20(s0)
	li	a5,23
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,22
	beq	a4,a5,.L186
	lw	a4,-20(s0)
	li	a5,22
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,21
	beq	a4,a5,.L187
	lw	a4,-20(s0)
	li	a5,21
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,20
	beq	a4,a5,.L188
	lw	a4,-20(s0)
	li	a5,20
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,19
	beq	a4,a5,.L189
	lw	a4,-20(s0)
	li	a5,19
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,18
	beq	a4,a5,.L190
	lw	a4,-20(s0)
	li	a5,18
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,16
	beq	a4,a5,.L191
	lw	a4,-20(s0)
	li	a5,16
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,15
	beq	a4,a5,.L192
	lw	a4,-20(s0)
	li	a5,15
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,14
	beq	a4,a5,.L193
	lw	a4,-20(s0)
	li	a5,14
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,13
	beq	a4,a5,.L194
	lw	a4,-20(s0)
	li	a5,13
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,11
	beq	a4,a5,.L195
	lw	a4,-20(s0)
	li	a5,11
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,10
	beq	a4,a5,.L196
	lw	a4,-20(s0)
	li	a5,10
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,5
	beq	a4,a5,.L197
	lw	a4,-20(s0)
	li	a5,5
	bgtu	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,4
	beq	a4,a5,.L198
	lw	a4,-20(s0)
	li	a5,4
	bgtu	a4,a5,.L173
	lw	a5,-20(s0)
	beq	a5,zero,.L199
	lw	a4,-20(s0)
	li	a5,1
	beq	a4,a5,.L200
	j	.L173
.L199:
	.loc 6 524 20
	li	a5,1
	j	.L201
.L200:
	.loc 6 527 20
	li	a5,2
	j	.L201
.L197:
	.loc 6 530 20
	li	a5,3
	j	.L201
.L196:
	.loc 6 533 20
	li	a5,4
	j	.L201
.L194:
	.loc 6 536 20
	li	a5,5
	j	.L201
.L193:
	.loc 6 539 20
	li	a5,6
	j	.L201
.L192:
	.loc 6 542 20
	li	a5,7
	j	.L201
.L191:
	.loc 6 545 20
	li	a5,8
	j	.L201
.L190:
	.loc 6 548 20
	li	a5,9
	j	.L201
.L189:
	.loc 6 551 20
	li	a5,10
	j	.L201
.L188:
	.loc 6 554 20
	li	a5,11
	j	.L201
.L187:
	.loc 6 557 20
	li	a5,12
	j	.L201
.L182:
	.loc 6 560 20
	li	a5,13
	j	.L201
.L181:
	.loc 6 563 20
	li	a5,14
	j	.L201
.L180:
	.loc 6 566 20
	li	a5,15
	j	.L201
.L179:
	.loc 6 569 20
	li	a5,16
	j	.L201
.L178:
	.loc 6 572 20
	li	a5,17
	j	.L201
.L177:
	.loc 6 575 20
	li	a5,18
	j	.L201
.L176:
	.loc 6 578 20
	li	a5,19
	j	.L201
.L175:
	.loc 6 581 20
	li	a5,20
	j	.L201
.L174:
	.loc 6 584 20
	li	a5,21
	j	.L201
.L172:
	.loc 6 587 20
	li	a5,22
	j	.L201
.L198:
	.loc 6 590 20
	li	a5,23
	j	.L201
.L195:
	.loc 6 593 20
	li	a5,24
	j	.L201
.L186:
	.loc 6 596 20
	li	a5,25
	j	.L201
.L185:
	.loc 6 599 20
	li	a5,26
	j	.L201
.L184:
	.loc 6 602 20
	li	a5,28
	j	.L201
.L183:
	.loc 6 605 20
	li	a5,27
	j	.L201
.L173:
	.loc 6 609 12
	li	a5,0
.L201:
	.loc 6 610 1
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
.LFE152:
	.size	mbedtls_ssl_get_extension_id, .-mbedtls_ssl_get_extension_id
	.section	.text.mbedtls_ssl_get_extension_mask,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_extension_mask
	.type	mbedtls_ssl_get_extension_mask, @function
mbedtls_ssl_get_extension_mask:
.LFB153:
	.loc 6 613 1
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
	.loc 6 614 17
	lw	a0,-20(s0)
	call	mbedtls_ssl_get_extension_id
	mv	a4,a0
	.loc 6 614 14 discriminator 1
	li	a5,1
	sll	a5,a5,a4
	.loc 6 615 1
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
.LFE153:
	.size	mbedtls_ssl_get_extension_mask, .-mbedtls_ssl_get_extension_mask
	.section	.rodata
	.align	2
.LC12:
	.string	"unrecognized"
	.align	2
.LC13:
	.string	"server_name"
	.align	2
.LC14:
	.string	"max_fragment_length"
	.align	2
.LC15:
	.string	"status_request"
	.align	2
.LC16:
	.string	"supported_groups"
	.align	2
.LC17:
	.string	"signature_algorithms"
	.align	2
.LC18:
	.string	"use_srtp"
	.align	2
.LC19:
	.string	"heartbeat"
	.align	2
.LC20:
	.string	"application_layer_protocol_negotiation"
	.align	2
.LC21:
	.string	"signed_certificate_timestamp"
	.align	2
.LC22:
	.string	"client_certificate_type"
	.align	2
.LC23:
	.string	"server_certificate_type"
	.align	2
.LC24:
	.string	"padding"
	.align	2
.LC25:
	.string	"pre_shared_key"
	.align	2
.LC26:
	.string	"early_data"
	.align	2
.LC27:
	.string	"supported_versions"
	.align	2
.LC28:
	.string	"cookie"
	.align	2
.LC29:
	.string	"psk_key_exchange_modes"
	.align	2
.LC30:
	.string	"certificate_authorities"
	.align	2
.LC31:
	.string	"oid_filters"
	.align	2
.LC32:
	.string	"post_handshake_auth"
	.align	2
.LC33:
	.string	"signature_algorithms_cert"
	.align	2
.LC34:
	.string	"key_share"
	.align	2
.LC35:
	.string	"truncated_hmac"
	.align	2
.LC36:
	.string	"supported_point_formats"
	.align	2
.LC37:
	.string	"encrypt_then_mac"
	.align	2
.LC38:
	.string	"extended_master_secret"
	.align	2
.LC39:
	.string	"session_ticket"
	.align	2
.LC40:
	.string	"record_size_limit"
	.section	.data.extension_name_table,"aw"
	.align	2
	.type	extension_name_table, @object
	.size	extension_name_table, 116
extension_name_table:
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.section	.rodata.extension_type_table,"a"
	.align	2
	.type	extension_type_table, @object
	.size	extension_type_table, 116
extension_type_table:
	.word	255
	.word	0
	.word	1
	.word	5
	.word	10
	.word	13
	.word	14
	.word	15
	.word	16
	.word	18
	.word	19
	.word	20
	.word	21
	.word	41
	.word	42
	.word	43
	.word	44
	.word	45
	.word	47
	.word	48
	.word	49
	.word	50
	.word	51
	.word	4
	.word	11
	.word	22
	.word	23
	.word	35
	.word	28
	.section	.text.mbedtls_ssl_get_extension_name,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_extension_name
	.type	mbedtls_ssl_get_extension_name, @function
mbedtls_ssl_get_extension_name:
.LFB154:
	.loc 6 683 1
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
	.loc 6 685 9
	lw	a0,-20(s0)
	call	mbedtls_ssl_get_extension_id
	mv	a3,a0
	.loc 6 684 32
	lui	a5,%hi(extension_name_table)
	addi	a4,a5,%lo(extension_name_table)
	slli	a5,a3,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 6 686 1
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
.LFE154:
	.size	mbedtls_ssl_get_extension_name, .-mbedtls_ssl_get_extension_name
	.section	.rodata
	.align	2
.LC41:
	.string	"ClientHello"
	.align	2
.LC42:
	.string	"ServerHello"
	.align	2
.LC43:
	.string	"HelloRetryRequest"
	.align	2
.LC44:
	.string	"NewSessionTicket"
	.align	2
.LC45:
	.string	"EncryptedExtensions"
	.align	2
.LC46:
	.string	"Certificate"
	.align	2
.LC47:
	.string	"CertificateRequest"
	.align	2
.LC48:
	.string	"Unknown"
	.section	.text.ssl_tls13_get_hs_msg_name,"ax",@progbits
	.align	1
	.type	ssl_tls13_get_hs_msg_name, @function
ssl_tls13_get_hs_msg_name:
.LFB155:
	.loc 6 689 1
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
	.loc 6 690 5
	lw	a4,-20(s0)
	li	a5,13
	beq	a4,a5,.L207
	lw	a4,-20(s0)
	li	a5,13
	bgt	a4,a5,.L208
	lw	a4,-20(s0)
	li	a5,11
	beq	a4,a5,.L209
	lw	a4,-20(s0)
	li	a5,11
	bgt	a4,a5,.L208
	lw	a4,-20(s0)
	li	a5,8
	beq	a4,a5,.L210
	lw	a4,-20(s0)
	li	a5,8
	bgt	a4,a5,.L208
	lw	a4,-20(s0)
	li	a5,4
	beq	a4,a5,.L211
	lw	a4,-20(s0)
	li	a5,4
	bgt	a4,a5,.L208
	lw	a4,-20(s0)
	li	a5,2
	beq	a4,a5,.L212
	lw	a4,-20(s0)
	li	a5,2
	bgt	a4,a5,.L208
	lw	a4,-20(s0)
	li	a5,-2
	beq	a4,a5,.L213
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L208
	.loc 6 692 20
	lui	a5,%hi(.LC41)
	addi	a5,a5,%lo(.LC41)
	j	.L214
.L212:
	.loc 6 694 20
	lui	a5,%hi(.LC42)
	addi	a5,a5,%lo(.LC42)
	j	.L214
.L213:
	.loc 6 696 20
	lui	a5,%hi(.LC43)
	addi	a5,a5,%lo(.LC43)
	j	.L214
.L211:
	.loc 6 698 20
	lui	a5,%hi(.LC44)
	addi	a5,a5,%lo(.LC44)
	j	.L214
.L210:
	.loc 6 700 20
	lui	a5,%hi(.LC45)
	addi	a5,a5,%lo(.LC45)
	j	.L214
.L209:
	.loc 6 702 20
	lui	a5,%hi(.LC46)
	addi	a5,a5,%lo(.LC46)
	j	.L214
.L207:
	.loc 6 704 20
	lui	a5,%hi(.LC47)
	addi	a5,a5,%lo(.LC47)
	j	.L214
.L208:
	.loc 6 706 12
	lui	a5,%hi(.LC48)
	addi	a5,a5,%lo(.LC48)
.L214:
	.loc 6 707 1
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
.LFE155:
	.size	ssl_tls13_get_hs_msg_name, .-ssl_tls13_get_hs_msg_name
	.section	.rodata
	.align	2
.LC49:
	.string	"%s: %s(%u) extension %s %s."
	.align	2
.LC50:
	.string	"%s: %s(%u) extension %s."
	.align	2
.LC51:
	.string	"%s: %s(%u) extension."
	.section	.text.mbedtls_ssl_print_extension,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_print_extension
	.type	mbedtls_ssl_print_extension, @function
mbedtls_ssl_print_extension:
.LFB156:
	.loc 6 713 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	a7,-64(s0)
	.loc 6 715 8
	lw	a5,-60(s0)
	beq	a5,zero,.L216
	.loc 6 715 20 discriminator 1
	lw	a5,-64(s0)
	beq	a5,zero,.L216
	.loc 6 716 9
	lw	a0,-52(s0)
	call	ssl_tls13_get_hs_msg_name
	mv	s1,a0
	.loc 6 716 9 is_stmt 0 discriminator 1
	lw	a0,-56(s0)
	call	mbedtls_ssl_get_extension_name
	mv	a4,a0
	.loc 6 716 9 discriminator 2
	lw	a5,-64(s0)
	sw	a5,4(sp)
	lw	a5,-60(s0)
	sw	a5,0(sp)
	lw	a7,-56(s0)
	mv	a6,a4
	mv	a5,s1
	lui	a4,%hi(.LC49)
	addi	a4,a4,%lo(.LC49)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 723 9 is_stmt 1
	j	.L215
.L216:
	.loc 6 726 41
	lw	a5,-60(s0)
	beq	a5,zero,.L218
	.loc 6 726 15 discriminator 1
	lw	a5,-60(s0)
	sw	a5,-20(s0)
	j	.L219
.L218:
	.loc 6 726 15 is_stmt 0 discriminator 2
	lw	a5,-64(s0)
	sw	a5,-20(s0)
.L219:
	.loc 6 727 8 is_stmt 1
	lw	a5,-20(s0)
	beq	a5,zero,.L220
	.loc 6 728 9
	lw	a0,-52(s0)
	call	ssl_tls13_get_hs_msg_name
	mv	s1,a0
	.loc 6 728 9 is_stmt 0 discriminator 1
	lw	a0,-56(s0)
	call	mbedtls_ssl_get_extension_name
	mv	a4,a0
	.loc 6 728 9 discriminator 2
	lw	a5,-20(s0)
	sw	a5,0(sp)
	lw	a7,-56(s0)
	mv	a6,a4
	mv	a5,s1
	lui	a4,%hi(.LC50)
	addi	a4,a4,%lo(.LC50)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 733 9 is_stmt 1
	j	.L215
.L220:
	.loc 6 736 5
	lw	a0,-52(s0)
	call	ssl_tls13_get_hs_msg_name
	mv	s1,a0
	.loc 6 736 5 is_stmt 0 discriminator 1
	lw	a0,-56(s0)
	call	mbedtls_ssl_get_extension_name
	mv	a5,a0
	.loc 6 736 5 discriminator 2
	lw	a7,-56(s0)
	mv	a6,a5
	mv	a5,s1
	lui	a4,%hi(.LC51)
	addi	a4,a4,%lo(.LC51)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
.L215:
	.loc 6 740 1 is_stmt 1
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE156:
	.size	mbedtls_ssl_print_extension, .-mbedtls_ssl_print_extension
	.section	.rodata
	.align	2
.LC52:
	.string	"exists"
	.align	2
.LC53:
	.string	"does not exist"
	.section	.text.mbedtls_ssl_print_extensions,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_print_extensions
	.type	mbedtls_ssl_print_extensions, @function
mbedtls_ssl_print_extensions:
.LFB157:
	.loc 6 746 1
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
.LBB77:
	.loc 6 748 19
	sw	zero,-20(s0)
	.loc 6 748 5
	j	.L222
.L225:
	.loc 6 752 70
	lui	a5,%hi(extension_type_table)
	addi	a4,a5,%lo(extension_type_table)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 6 753 34
	lw	a5,-20(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 6 753 29
	lw	a5,-56(s0)
	and	a5,a4,a5
	.loc 6 751 9
	beq	a5,zero,.L223
	.loc 6 751 9 is_stmt 0 discriminator 1
	lui	a5,%hi(.LC52)
	addi	a5,a5,%lo(.LC52)
	j	.L224
.L223:
	.loc 6 751 9 discriminator 2
	lui	a5,%hi(.LC53)
	addi	a5,a5,%lo(.LC53)
.L224:
	.loc 6 751 9 discriminator 4
	lw	a7,-60(s0)
	mv	a6,a5
	mv	a5,a3
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_ssl_print_extension
	.loc 6 750 11 is_stmt 1
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L222:
	.loc 6 749 12
	lw	a4,-20(s0)
	li	a5,28
	bleu	a4,a5,.L225
.LBE77:
	.loc 6 755 1
	nop
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE157:
	.size	mbedtls_ssl_print_extensions, .-mbedtls_ssl_print_extensions
	.section	.rodata
	.align	2
.LC54:
	.string	"should never happen"
	.section	.text.mbedtls_ssl_optimize_checksum,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_optimize_checksum
	.type	mbedtls_ssl_optimize_checksum, @function
mbedtls_ssl_optimize_checksum:
.LFB158:
	.loc 6 789 1
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
	.loc 6 793 25
	lw	a5,-24(s0)
	lbu	a4,9(a5)
	.loc 6 793 8
	li	a5,10
	bne	a4,a5,.L227
	.loc 6 794 12
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 794 41
	lui	a4,%hi(ssl_update_checksum_sha384)
	addi	a4,a4,%lo(ssl_update_checksum_sha384)
	sw	a4,28(a5)
	j	.L226
.L227:
	.loc 6 798 25
	lw	a5,-24(s0)
	lbu	a4,9(a5)
	.loc 6 798 8
	li	a5,10
	beq	a4,a5,.L229
	.loc 6 799 12
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 799 41
	lui	a4,%hi(ssl_update_checksum_sha256)
	addi	a4,a4,%lo(ssl_update_checksum_sha256)
	sw	a4,28(a5)
	j	.L226
.L229:
	.loc 6 803 9
	lui	a5,%hi(.LC54)
	addi	a4,a5,%lo(.LC54)
	li	a3,803
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 6 804 9
	nop
.L226:
	.loc 6 806 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE158:
	.size	mbedtls_ssl_optimize_checksum, .-mbedtls_ssl_optimize_checksum
	.section	.text.mbedtls_ssl_add_hs_hdr_to_checksum,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_add_hs_hdr_to_checksum
	.type	mbedtls_ssl_add_hs_hdr_to_checksum, @function
mbedtls_ssl_add_hs_hdr_to_checksum:
.LFB159:
	.loc 6 811 1
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
	.loc 6 815 18
	lw	a5,-40(s0)
	andi	a5,a5,0xff
	.loc 6 815 15
	sb	a5,-20(s0)
	.loc 6 816 45
	lw	a5,-44(s0)
	srli	a5,a5,16
	.loc 6 816 18
	andi	a5,a5,0xff
	.loc 6 816 15
	sb	a5,-19(s0)
	.loc 6 817 45
	lw	a5,-44(s0)
	srli	a5,a5,8
	.loc 6 817 18
	andi	a5,a5,0xff
	.loc 6 817 15
	sb	a5,-18(s0)
	.loc 6 818 18
	lw	a5,-44(s0)
	andi	a5,a5,0xff
	.loc 6 818 15
	sb	a5,-17(s0)
	.loc 6 820 15
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 820 26
	lw	a5,28(a5)
	.loc 6 820 12
	addi	a4,s0,-20
	li	a2,4
	mv	a1,a4
	lw	a0,-36(s0)
	jalr	a5
.LVL1:
	mv	a5,a0
	.loc 6 821 1
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
.LFE159:
	.size	mbedtls_ssl_add_hs_hdr_to_checksum, .-mbedtls_ssl_add_hs_hdr_to_checksum
	.section	.text.mbedtls_ssl_add_hs_msg_to_checksum,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_add_hs_msg_to_checksum
	.type	mbedtls_ssl_add_hs_msg_to_checksum, @function
mbedtls_ssl_add_hs_msg_to_checksum:
.LFB160:
	.loc 6 827 1
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
	sw	a3,-48(s0)
	.loc 6 829 11
	lw	a2,-48(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_ssl_add_hs_hdr_to_checksum
	sw	a0,-20(s0)
	.loc 6 830 8
	lw	a5,-20(s0)
	beq	a5,zero,.L233
	.loc 6 831 16
	lw	a5,-20(s0)
	j	.L234
.L233:
	.loc 6 833 15
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 833 26
	lw	a5,28(a5)
	.loc 6 833 12
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	jalr	a5
.LVL2:
	mv	a5,a0
.L234:
	.loc 6 834 1
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
.LFE160:
	.size	mbedtls_ssl_add_hs_msg_to_checksum, .-mbedtls_ssl_add_hs_msg_to_checksum
	.section	.text.mbedtls_ssl_reset_checksum,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_reset_checksum
	.type	mbedtls_ssl_reset_checksum, @function
mbedtls_ssl_reset_checksum:
.LFB161:
	.loc 6 837 1
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
	.loc 6 843 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 6 859 25
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 859 5
	addi	a5,a5,708
	mv	a0,a5
	call	mbedtls_md_free
	.loc 6 860 25
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 860 5
	addi	a5,a5,708
	mv	a0,a5
	call	mbedtls_md_init
	.loc 6 861 32
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 861 11
	addi	s1,a5,708
	li	a0,9
	call	mbedtls_md_info_from_type
	mv	a5,a0
	.loc 6 861 11 is_stmt 0 discriminator 1
	li	a2,0
	mv	a1,a5
	mv	a0,s1
	call	mbedtls_md_setup
	sw	a0,-20(s0)
	.loc 6 864 8 is_stmt 1
	lw	a5,-20(s0)
	beq	a5,zero,.L236
	.loc 6 865 16
	lw	a5,-20(s0)
	j	.L237
.L236:
	.loc 6 867 33
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 867 11
	addi	a5,a5,708
	mv	a0,a5
	call	mbedtls_md_starts
	sw	a0,-20(s0)
	.loc 6 868 8
	lw	a5,-20(s0)
	beq	a5,zero,.L238
	.loc 6 869 16
	lw	a5,-20(s0)
	j	.L237
.L238:
	.loc 6 884 25
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 884 5
	addi	a5,a5,720
	mv	a0,a5
	call	mbedtls_md_free
	.loc 6 885 25
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 885 5
	addi	a5,a5,720
	mv	a0,a5
	call	mbedtls_md_init
	.loc 6 886 32
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 886 11
	addi	s1,a5,720
	li	a0,10
	call	mbedtls_md_info_from_type
	mv	a5,a0
	.loc 6 886 11 is_stmt 0 discriminator 1
	li	a2,0
	mv	a1,a5
	mv	a0,s1
	call	mbedtls_md_setup
	sw	a0,-20(s0)
	.loc 6 888 8 is_stmt 1
	lw	a5,-20(s0)
	beq	a5,zero,.L239
	.loc 6 889 16
	lw	a5,-20(s0)
	j	.L237
.L239:
	.loc 6 891 33
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 891 11
	addi	a5,a5,720
	mv	a0,a5
	call	mbedtls_md_starts
	sw	a0,-20(s0)
	.loc 6 892 8
	lw	a5,-20(s0)
	beq	a5,zero,.L240
	.loc 6 893 16
	lw	a5,-20(s0)
	j	.L237
.L240:
	.loc 6 897 12
	li	a5,0
.L237:
	.loc 6 898 1
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
.LFE161:
	.size	mbedtls_ssl_reset_checksum, .-mbedtls_ssl_reset_checksum
	.section	.text.ssl_update_checksum_start,"ax",@progbits
	.align	1
	.type	ssl_update_checksum_start, @function
ssl_update_checksum_start:
.LFB162:
	.loc 6 902 1
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
	.loc 6 908 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 6 922 33
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 922 11
	addi	a5,a5,708
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_md_update
	sw	a0,-20(s0)
	.loc 6 923 8
	lw	a5,-20(s0)
	beq	a5,zero,.L242
	.loc 6 924 16
	lw	a5,-20(s0)
	j	.L243
.L242:
	.loc 6 935 33
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 935 11
	addi	a5,a5,720
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_md_update
	sw	a0,-20(s0)
	.loc 6 936 8
	lw	a5,-20(s0)
	beq	a5,zero,.L244
	.loc 6 937 16
	lw	a5,-20(s0)
	j	.L243
.L244:
	.loc 6 941 12
	li	a5,0
.L243:
	.loc 6 942 1
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
.LFE162:
	.size	ssl_update_checksum_start, .-ssl_update_checksum_start
	.section	.text.ssl_update_checksum_sha256,"ax",@progbits
	.align	1
	.type	ssl_update_checksum_sha256, @function
ssl_update_checksum_sha256:
.LFB163:
	.loc 6 947 1
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
	.loc 6 952 34
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 952 12
	addi	a5,a5,708
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_md_update
	mv	a5,a0
	.loc 6 954 1
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
.LFE163:
	.size	ssl_update_checksum_sha256, .-ssl_update_checksum_sha256
	.section	.text.ssl_update_checksum_sha384,"ax",@progbits
	.align	1
	.type	ssl_update_checksum_sha384, @function
ssl_update_checksum_sha384:
.LFB164:
	.loc 6 960 1
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
	.loc 6 965 34
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 965 12
	addi	a5,a5,720
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_md_update
	mv	a5,a0
	.loc 6 967 1
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
.LFE164:
	.size	ssl_update_checksum_sha384, .-ssl_update_checksum_sha384
	.section	.text.ssl_handshake_params_init,"ax",@progbits
	.align	1
	.type	ssl_handshake_params_init, @function
ssl_handshake_params_init:
.LFB165:
	.loc 6 971 1
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
	.loc 6 972 5
	li	a2,996
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 6 978 5
	lw	a5,-20(s0)
	addi	a5,a5,708
	mv	a0,a5
	call	mbedtls_md_init
	.loc 6 985 5
	lw	a5,-20(s0)
	addi	a5,a5,720
	mv	a0,a5
	call	mbedtls_md_init
	.loc 6 989 32
	lw	a5,-20(s0)
	lui	a4,%hi(ssl_update_checksum_start)
	addi	a4,a4,%lo(ssl_update_checksum_start)
	sw	a4,28(a5)
	.loc 6 992 5
	lw	a5,-20(s0)
	addi	a5,a5,84
	mv	a0,a5
	call	mbedtls_dhm_init
	.loc 6 996 5
	lw	a5,-20(s0)
	addi	a5,a5,164
	mv	a0,a5
	call	mbedtls_ecdh_init
	.loc 6 1012 5
	lw	a5,-20(s0)
	addi	a5,a5,420
	mv	a0,a5
	call	mbedtls_x509_crt_restart_init
	.loc 6 1016 29
	lw	a5,-20(s0)
	li	a4,3
	sb	a4,2(a5)
	.loc 6 1023 1
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
.LFE165:
	.size	ssl_handshake_params_init, .-ssl_handshake_params_init
	.section	.text.mbedtls_ssl_transform_init,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_transform_init
	.type	mbedtls_ssl_transform_init, @function
mbedtls_ssl_transform_init:
.LFB166:
	.loc 6 1026 1
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
	.loc 6 1027 5
	li	a2,352
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 6 1033 5
	lw	a5,-20(s0)
	addi	a5,a5,84
	mv	a0,a5
	call	mbedtls_cipher_init
	.loc 6 1034 5
	lw	a5,-20(s0)
	addi	a5,a5,152
	mv	a0,a5
	call	mbedtls_cipher_init
	.loc 6 1042 5
	lw	a5,-20(s0)
	addi	a5,a5,52
	mv	a0,a5
	call	mbedtls_md_init
	.loc 6 1043 5
	lw	a5,-20(s0)
	addi	a5,a5,64
	mv	a0,a5
	call	mbedtls_md_init
	.loc 6 1046 1
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
.LFE166:
	.size	mbedtls_ssl_transform_init, .-mbedtls_ssl_transform_init
	.section	.text.mbedtls_ssl_session_init,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_session_init
	.type	mbedtls_ssl_session_init, @function
mbedtls_ssl_session_init:
.LFB167:
	.loc 6 1049 1
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
	.loc 6 1050 5
	li	a2,120
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 6 1051 1
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
.LFE167:
	.size	mbedtls_ssl_session_init, .-mbedtls_ssl_session_init
	.section	.rodata
	.align	2
.LC55:
	.string	"alloc() of ssl sub-contexts failed"
	.align	2
.LC56:
	.string	"mbedtls_ssl_reset_checksum"
	.section	.text.ssl_handshake_init,"ax",@progbits
	.align	1
	.type	ssl_handshake_init, @function
ssl_handshake_init:
.LFB168:
	.loc 6 1055 1
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
	.loc 6 1056 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 6 1060 12
	lw	a5,-36(s0)
	lw	a5,80(a5)
	.loc 6 1060 8
	beq	a5,zero,.L253
	.loc 6 1061 9
	lw	a5,-36(s0)
	lw	a5,80(a5)
	mv	a0,a5
	call	mbedtls_ssl_transform_free
.L253:
	.loc 6 1064 12
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 6 1064 8
	beq	a5,zero,.L254
	.loc 6 1065 9
	lw	a5,-36(s0)
	lw	a5,60(a5)
	mv	a0,a5
	call	mbedtls_ssl_session_free
.L254:
	.loc 6 1067 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 1067 8
	beq	a5,zero,.L255
	.loc 6 1068 9
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_free
.L255:
	.loc 6 1076 12
	lw	a5,-36(s0)
	lw	a5,80(a5)
	.loc 6 1076 8
	bne	a5,zero,.L256
	.loc 6 1077 36
	li	a1,352
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 6 1077 34 discriminator 1
	lw	a5,-36(s0)
	sw	a4,80(a5)
.L256:
	.loc 6 1081 12
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 6 1081 8
	bne	a5,zero,.L257
	.loc 6 1082 34
	li	a1,120
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 6 1082 32 discriminator 1
	lw	a5,-36(s0)
	sw	a4,60(a5)
.L257:
	.loc 6 1085 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 1085 8
	bne	a5,zero,.L258
	.loc 6 1086 26
	li	a1,996
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 6 1086 24 discriminator 1
	lw	a5,-36(s0)
	sw	a4,64(a5)
.L258:
	.loc 6 1091 5
	li	a5,16384
	addi	a3,a5,381
	li	a5,16384
	addi	a2,a5,381
	li	a1,0
	lw	a0,-36(s0)
	call	handle_buffer_resizing
	.loc 6 1096 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 1096 8
	beq	a5,zero,.L259
	.loc 6 1098 12
	lw	a5,-36(s0)
	lw	a5,80(a5)
	.loc 6 1096 41 discriminator 1
	beq	a5,zero,.L259
	.loc 6 1100 12
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 6 1098 41
	bne	a5,zero,.L260
.L259:
	.loc 6 1101 9
	lui	a5,%hi(.LC55)
	addi	a4,a5,%lo(.LC55)
	li	a3,1101
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 1103 17
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 1103 9
	mv	a0,a5
	call	free
	.loc 6 1104 24
	lw	a5,-36(s0)
	sw	zero,64(a5)
	.loc 6 1107 17
	lw	a5,-36(s0)
	lw	a5,80(a5)
	.loc 6 1107 9
	mv	a0,a5
	call	free
	.loc 6 1108 34
	lw	a5,-36(s0)
	sw	zero,80(a5)
	.loc 6 1111 17
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 6 1111 9
	mv	a0,a5
	call	free
	.loc 6 1112 32
	lw	a5,-36(s0)
	sw	zero,60(a5)
	.loc 6 1114 16
	li	a5,-32768
	addi	a5,a5,256
	j	.L261
.L260:
	.loc 6 1128 5
	lw	a5,-36(s0)
	lw	a5,60(a5)
	mv	a0,a5
	call	mbedtls_ssl_session_init
	.loc 6 1129 5
	lw	a5,-36(s0)
	lw	a5,64(a5)
	mv	a0,a5
	call	ssl_handshake_params_init
	.loc 6 1132 5
	lw	a5,-36(s0)
	lw	a5,80(a5)
	mv	a0,a5
	call	mbedtls_ssl_transform_init
	.loc 6 1136 11
	lw	a0,-36(s0)
	call	mbedtls_ssl_reset_checksum
	sw	a0,-20(s0)
	.loc 6 1137 8
	lw	a5,-20(s0)
	beq	a5,zero,.L262
	.loc 6 1138 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC56)
	addi	a4,a4,%lo(.LC56)
	li	a3,1138
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 6 1139 16
	lw	a5,-20(s0)
	j	.L261
.L262:
	.loc 6 1150 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 1150 18
	lbu	a4,5(a5)
	.loc 6 1150 8
	li	a5,1
	bne	a4,a5,.L263
	.loc 6 1151 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 1151 48
	lw	a4,-36(s0)
	lw	a4,72(a4)
	.loc 6 1151 43
	sw	a4,660(a5)
	.loc 6 1153 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 1153 22
	lbu	a5,4(a5)
	.loc 6 1153 12
	bne	a5,zero,.L264
	.loc 6 1154 16
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 1154 46
	sb	zero,10(a5)
	j	.L265
.L264:
	.loc 6 1156 16
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 1156 46
	li	a4,2
	sb	a4,10(a5)
.L265:
	.loc 6 1159 9
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_ssl_set_timer
.L263:
	.loc 6 1271 12
	li	a5,0
.L261:
	.loc 6 1272 1
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
.LFE168:
	.size	ssl_handshake_init, .-ssl_handshake_init
	.section	.text.ssl_cookie_write_dummy,"ax",@progbits
	.align	1
	.type	ssl_cookie_write_dummy, @function
ssl_cookie_write_dummy:
.LFB169:
	.loc 6 1280 1
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
	.loc 6 1287 12
	li	a5,-28672
	addi	a5,a5,-128
	.loc 6 1288 1
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
.LFE169:
	.size	ssl_cookie_write_dummy, .-ssl_cookie_write_dummy
	.section	.text.ssl_cookie_check_dummy,"ax",@progbits
	.align	1
	.type	ssl_cookie_check_dummy, @function
ssl_cookie_check_dummy:
.LFB170:
	.loc 6 1294 1
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
	.loc 6 1301 12
	li	a5,-28672
	addi	a5,a5,-128
	.loc 6 1302 1
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
.LFE170:
	.size	ssl_cookie_check_dummy, .-ssl_cookie_check_dummy
	.section	.text.mbedtls_ssl_init,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_init
	.type	mbedtls_ssl_init, @function
mbedtls_ssl_init:
.LFB171:
	.loc 6 1309 1
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
	.loc 6 1310 5
	li	a2,608
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 6 1311 1
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
.LFE171:
	.size	mbedtls_ssl_init, .-mbedtls_ssl_init
	.section	.rodata
	.align	2
.LC57:
	.string	"The SSL configuration is tls12 only."
	.align	2
.LC58:
	.string	"The SSL configuration is invalid."
	.section	.text.ssl_conf_version_check,"ax",@progbits
	.align	1
	.type	ssl_conf_version_check, @function
ssl_conf_version_check:
.LFB172:
	.loc 6 1315 1
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
	.loc 6 1316 31
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 6 1331 9
	lw	a0,-20(s0)
	call	mbedtls_ssl_conf_is_tls12_only
	mv	a5,a0
	.loc 6 1331 8 discriminator 1
	beq	a5,zero,.L272
	.loc 6 1332 9
	lui	a5,%hi(.LC57)
	addi	a4,a5,%lo(.LC57)
	li	a3,1332
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,4
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 1333 16
	li	a5,0
	j	.L273
.L272:
	.loc 6 1349 5
	lui	a5,%hi(.LC58)
	addi	a4,a5,%lo(.LC58)
	li	a3,1349
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 1350 12
	li	a5,-24576
	addi	a5,a5,384
.L273:
	.loc 6 1351 1
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
.LFE172:
	.size	ssl_conf_version_check, .-ssl_conf_version_check
	.section	.rodata
	.align	2
.LC59:
	.string	"no RNG provided"
	.section	.text.ssl_conf_check,"ax",@progbits
	.align	1
	.type	ssl_conf_check, @function
ssl_conf_check:
.LFB173:
	.loc 6 1355 1
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
	.loc 6 1357 11
	lw	a0,-36(s0)
	call	ssl_conf_version_check
	sw	a0,-20(s0)
	.loc 6 1358 8
	lw	a5,-20(s0)
	beq	a5,zero,.L275
	.loc 6 1359 16
	lw	a5,-20(s0)
	j	.L276
.L275:
	.loc 6 1362 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 1362 18
	lw	a5,32(a5)
	.loc 6 1362 8
	bne	a5,zero,.L277
	.loc 6 1363 9
	lui	a5,%hi(.LC59)
	addi	a4,a5,%lo(.LC59)
	li	a3,1363
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 1364 16
	li	a5,-28672
	addi	a5,a5,-1024
	j	.L276
.L277:
	.loc 6 1369 12
	li	a5,0
.L276:
	.loc 6 1370 1
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
.LFE173:
	.size	ssl_conf_check, .-ssl_conf_check
	.section	.rodata
	.align	2
.LC60:
	.string	"alloc(%zu bytes) failed"
	.section	.text.mbedtls_ssl_setup,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_setup
	.type	mbedtls_ssl_setup, @function
mbedtls_ssl_setup:
.LFB174:
	.loc 6 1378 1
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
	.loc 6 1379 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 6 1380 12
	li	a5,16384
	addi	a5,a5,381
	sw	a5,-24(s0)
	.loc 6 1381 12
	li	a5,16384
	addi	a5,a5,381
	sw	a5,-28(s0)
	.loc 6 1383 15
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 6 1385 16
	lw	a0,-36(s0)
	call	ssl_conf_check
	sw	a0,-20(s0)
	.loc 6 1385 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L279
	.loc 6 1386 16
	lw	a5,-20(s0)
	j	.L280
.L279:
	.loc 6 1388 27
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 1388 33
	lhu	a4,0(a5)
	.loc 6 1388 22
	lw	a5,-36(s0)
	sh	a4,16(a5)
	.loc 6 1395 18
	lw	a5,-36(s0)
	sw	zero,192(a5)
	.loc 6 1398 21
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,140(a5)
	.loc 6 1400 19
	lw	a1,-24(s0)
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 6 1400 17 discriminator 1
	lw	a5,-36(s0)
	sw	a4,96(a5)
	.loc 6 1401 12
	lw	a5,-36(s0)
	lw	a5,96(a5)
	.loc 6 1401 8
	bne	a5,zero,.L281
	.loc 6 1402 9
	lw	a5,-24(s0)
	lui	a4,%hi(.LC60)
	addi	a4,a4,%lo(.LC60)
	li	a3,1402
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 1403 13
	li	a5,-32768
	addi	a5,a5,256
	sw	a5,-20(s0)
	.loc 6 1404 9
	j	.L282
.L281:
	.loc 6 1408 22
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,232(a5)
	.loc 6 1410 20
	lw	a1,-28(s0)
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 6 1410 18 discriminator 1
	lw	a5,-36(s0)
	sw	a4,192(a5)
	.loc 6 1411 12
	lw	a5,-36(s0)
	lw	a5,192(a5)
	.loc 6 1411 8
	bne	a5,zero,.L283
	.loc 6 1412 9
	lw	a5,-28(s0)
	lui	a4,%hi(.LC60)
	addi	a4,a4,%lo(.LC60)
	li	a3,1412
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 1413 13
	li	a5,-32768
	addi	a5,a5,256
	sw	a5,-20(s0)
	.loc 6 1414 9
	j	.L282
.L283:
	.loc 6 1417 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_reset_in_pointers
	.loc 6 1418 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_reset_out_pointers
	.loc 6 1421 12
	lw	a5,-36(s0)
	addi	a5,a5,256
	.loc 6 1421 5
	li	a2,260
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 6 1424 16
	lw	a0,-36(s0)
	call	ssl_handshake_init
	sw	a0,-20(s0)
	.loc 6 1424 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L285
	.loc 6 1428 12
	li	a5,0
	j	.L280
.L285:
	.loc 6 1425 9
	nop
.L282:
	.loc 6 1431 13
	lw	a5,-36(s0)
	lw	a5,96(a5)
	.loc 6 1431 5
	mv	a0,a5
	call	free
	.loc 6 1432 13
	lw	a5,-36(s0)
	lw	a5,192(a5)
	.loc 6 1432 5
	mv	a0,a5
	call	free
	.loc 6 1434 15
	lw	a5,-36(s0)
	sw	zero,0(a5)
	.loc 6 1437 21
	lw	a5,-36(s0)
	sw	zero,140(a5)
	.loc 6 1438 22
	lw	a5,-36(s0)
	sw	zero,232(a5)
	.loc 6 1440 17
	lw	a5,-36(s0)
	sw	zero,96(a5)
	.loc 6 1441 18
	lw	a5,-36(s0)
	sw	zero,192(a5)
	.loc 6 1443 17
	lw	a5,-36(s0)
	sw	zero,104(a5)
	.loc 6 1444 17
	lw	a5,-36(s0)
	sw	zero,100(a5)
	.loc 6 1445 17
	lw	a5,-36(s0)
	sw	zero,112(a5)
	.loc 6 1446 16
	lw	a5,-36(s0)
	sw	zero,116(a5)
	.loc 6 1447 17
	lw	a5,-36(s0)
	sw	zero,120(a5)
	.loc 6 1449 18
	lw	a5,-36(s0)
	sw	zero,200(a5)
	.loc 6 1450 18
	lw	a5,-36(s0)
	sw	zero,196(a5)
	.loc 6 1451 18
	lw	a5,-36(s0)
	sw	zero,208(a5)
	.loc 6 1452 17
	lw	a5,-36(s0)
	sw	zero,212(a5)
	.loc 6 1453 18
	lw	a5,-36(s0)
	sw	zero,216(a5)
	.loc 6 1455 12
	lw	a5,-20(s0)
.L280:
	.loc 6 1456 1
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
.LFE174:
	.size	mbedtls_ssl_setup, .-mbedtls_ssl_setup
	.section	.text.mbedtls_ssl_session_reset_msg_layer,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_session_reset_msg_layer
	.type	mbedtls_ssl_session_reset_msg_layer, @function
mbedtls_ssl_session_reset_msg_layer:
.LFB175:
	.loc 6 1467 1
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
	.loc 6 1469 12
	lw	a5,-36(s0)
	lw	a5,140(a5)
	sw	a5,-20(s0)
	.loc 6 1470 12
	lw	a5,-36(s0)
	lw	a5,232(a5)
	sw	a5,-24(s0)
	.loc 6 1481 5
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_ssl_set_timer
	.loc 6 1483 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_reset_in_pointers
	.loc 6 1484 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_reset_out_pointers
	.loc 6 1487 18
	lw	a5,-36(s0)
	sw	zero,124(a5)
	.loc 6 1488 18
	lw	a5,-36(s0)
	sw	zero,172(a5)
	.loc 6 1489 21
	lw	a5,-36(s0)
	sw	zero,128(a5)
	.loc 6 1490 20
	lw	a5,-36(s0)
	sw	zero,132(a5)
	.loc 6 1491 19
	lw	a5,-36(s0)
	sw	zero,168(a5)
	.loc 6 1492 31
	lw	a5,-36(s0)
	sw	zero,176(a5)
	.loc 6 1493 23
	lw	a5,-36(s0)
	sw	zero,68(a5)
	.loc 6 1497 8
	lw	a5,-40(s0)
	bne	a5,zero,.L287
	.loc 6 1498 42
	lw	a5,-36(s0)
	sw	zero,20(a5)
.L287:
	.loc 6 1502 29
	lw	a5,-36(s0)
	sw	zero,148(a5)
	.loc 6 1503 19
	lw	a5,-36(s0)
	sh	zero,144(a5)
	.loc 6 1507 8
	lw	a5,-40(s0)
	bne	a5,zero,.L288
	.loc 6 1508 22
	lw	a5,-36(s0)
	sw	zero,136(a5)
	.loc 6 1509 19
	lw	a5,-36(s0)
	lw	a5,96(a5)
	.loc 6 1509 9
	lw	a2,-20(s0)
	li	a1,0
	mv	a0,a5
	call	memset
.L288:
	.loc 6 1512 21
	lw	a5,-36(s0)
	sb	zero,180(a5)
	.loc 6 1515 22
	lw	a5,-36(s0)
	sw	zero,220(a5)
	.loc 6 1516 21
	lw	a5,-36(s0)
	sw	zero,224(a5)
	.loc 6 1517 19
	lw	a5,-36(s0)
	sw	zero,228(a5)
	.loc 6 1518 15
	lw	a5,-36(s0)
	lw	a5,192(a5)
	.loc 6 1518 5
	lw	a2,-24(s0)
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 6 1519 15
	lw	a5,-36(s0)
	addi	a5,a5,236
	.loc 6 1519 5
	li	a2,8
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 6 1520 24
	lw	a5,-36(s0)
	sw	zero,72(a5)
	.loc 6 1523 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_dtls_replay_reset
	.loc 6 1527 12
	lw	a5,-36(s0)
	lw	a5,76(a5)
	.loc 6 1527 8
	beq	a5,zero,.L290
	.loc 6 1528 9
	lw	a5,-36(s0)
	lw	a5,76(a5)
	mv	a0,a5
	call	mbedtls_ssl_transform_free
	.loc 6 1529 17
	lw	a5,-36(s0)
	lw	a5,76(a5)
	.loc 6 1529 9
	mv	a0,a5
	call	free
	.loc 6 1530 24
	lw	a5,-36(s0)
	sw	zero,76(a5)
.L290:
	.loc 6 1552 1
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
.LFE175:
	.size	mbedtls_ssl_session_reset_msg_layer, .-mbedtls_ssl_session_reset_msg_layer
	.section	.text.mbedtls_ssl_session_reset_int,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_session_reset_int
	.type	mbedtls_ssl_session_reset_int, @function
mbedtls_ssl_session_reset_int:
.LFB176:
	.loc 6 1555 1
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
	.loc 6 1556 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 6 1558 5
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_set_state
	.loc 6 1559 27
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 1559 33
	lhu	a4,0(a5)
	.loc 6 1559 22
	lw	a5,-36(s0)
	sh	a4,16(a5)
	.loc 6 1561 5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_ssl_session_reset_msg_layer
	.loc 6 1565 24
	lw	a5,-36(s0)
	sw	zero,8(a5)
	.loc 6 1566 30
	lw	a5,-36(s0)
	sw	zero,12(a5)
	.loc 6 1568 26
	lw	a5,-36(s0)
	sw	zero,528(a5)
	.loc 6 1569 15
	lw	a5,-36(s0)
	addi	a5,a5,532
	.loc 6 1569 5
	li	a2,12
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 6 1570 15
	lw	a5,-36(s0)
	addi	a5,a5,544
	.loc 6 1570 5
	li	a2,12
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 6 1572 31
	lw	a5,-36(s0)
	sw	zero,524(a5)
	.loc 6 1574 21
	lw	a5,-36(s0)
	sw	zero,48(a5)
	.loc 6 1575 22
	lw	a5,-36(s0)
	sw	zero,52(a5)
	.loc 6 1576 12
	lw	a5,-36(s0)
	lw	a5,56(a5)
	.loc 6 1576 8
	beq	a5,zero,.L292
	.loc 6 1577 9
	lw	a5,-36(s0)
	lw	a5,56(a5)
	mv	a0,a5
	call	mbedtls_ssl_session_free
	.loc 6 1578 17
	lw	a5,-36(s0)
	lw	a5,56(a5)
	.loc 6 1578 9
	mv	a0,a5
	call	free
	.loc 6 1579 22
	lw	a5,-36(s0)
	sw	zero,56(a5)
.L292:
	.loc 6 1583 22
	lw	a5,-36(s0)
	sw	zero,252(a5)
	.loc 6 1587 9
	li	a5,1
	sw	a5,-24(s0)
	.loc 6 1589 28
	lw	a5,-40(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 6 1589 17
	sw	a5,-24(s0)
	.loc 6 1591 8
	lw	a5,-24(s0)
	beq	a5,zero,.L293
	.loc 6 1592 17
	lw	a5,-36(s0)
	lw	a5,516(a5)
	.loc 6 1592 9
	mv	a0,a5
	call	free
	.loc 6 1593 21
	lw	a5,-36(s0)
	sw	zero,516(a5)
	.loc 6 1594 25
	lw	a5,-36(s0)
	sw	zero,520(a5)
.L293:
	.loc 6 1598 16
	lw	a0,-36(s0)
	call	ssl_handshake_init
	sw	a0,-20(s0)
	.loc 6 1598 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L294
	.loc 6 1599 16
	lw	a5,-20(s0)
	j	.L295
.L294:
	.loc 6 1602 12
	li	a5,0
.L295:
	.loc 6 1603 1
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
.LFE176:
	.size	mbedtls_ssl_session_reset_int, .-mbedtls_ssl_session_reset_int
	.section	.text.mbedtls_ssl_session_reset,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_session_reset
	.type	mbedtls_ssl_session_reset, @function
mbedtls_ssl_session_reset:
.LFB177:
	.loc 6 1610 1
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
	.loc 6 1611 12
	li	a1,0
	lw	a0,-20(s0)
	call	mbedtls_ssl_session_reset_int
	mv	a5,a0
	.loc 6 1612 1
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
.LFE177:
	.size	mbedtls_ssl_session_reset, .-mbedtls_ssl_session_reset
	.section	.text.mbedtls_ssl_conf_endpoint,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_endpoint
	.type	mbedtls_ssl_conf_endpoint, @function
mbedtls_ssl_conf_endpoint:
.LFB178:
	.loc 6 1618 1
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
	.loc 6 1619 20
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,4(a5)
	.loc 6 1620 1
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
.LFE178:
	.size	mbedtls_ssl_conf_endpoint, .-mbedtls_ssl_conf_endpoint
	.section	.text.mbedtls_ssl_conf_transport,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_transport
	.type	mbedtls_ssl_conf_transport, @function
mbedtls_ssl_conf_transport:
.LFB179:
	.loc 6 1623 1
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
	.loc 6 1624 21
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,5(a5)
	.loc 6 1625 1
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
.LFE179:
	.size	mbedtls_ssl_conf_transport, .-mbedtls_ssl_conf_transport
	.section	.text.mbedtls_ssl_conf_dtls_anti_replay,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_dtls_anti_replay
	.type	mbedtls_ssl_conf_dtls_anti_replay, @function
mbedtls_ssl_conf_dtls_anti_replay:
.LFB180:
	.loc 6 1629 1
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
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 6 1630 23
	lw	a5,-20(s0)
	lbu	a4,-21(s0)
	sb	a4,11(a5)
	.loc 6 1631 1
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
.LFE180:
	.size	mbedtls_ssl_conf_dtls_anti_replay, .-mbedtls_ssl_conf_dtls_anti_replay
	.section	.text.mbedtls_ssl_conf_dtls_badmac_limit,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_dtls_badmac_limit
	.type	mbedtls_ssl_conf_dtls_badmac_limit, @function
mbedtls_ssl_conf_dtls_badmac_limit:
.LFB181:
	.loc 6 1635 1
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
	.loc 6 1636 24
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,224(a5)
	.loc 6 1637 1
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
.LFE181:
	.size	mbedtls_ssl_conf_dtls_badmac_limit, .-mbedtls_ssl_conf_dtls_badmac_limit
	.section	.text.mbedtls_ssl_set_datagram_packing,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_datagram_packing
	.type	mbedtls_ssl_set_datagram_packing, @function
mbedtls_ssl_set_datagram_packing:
.LFB182:
	.loc 6 1643 1
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
	.loc 6 1644 37
	lw	a5,-24(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 6 1644 35
	lw	a5,-20(s0)
	sb	a4,188(a5)
	.loc 6 1645 1
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
.LFE182:
	.size	mbedtls_ssl_set_datagram_packing, .-mbedtls_ssl_set_datagram_packing
	.section	.text.mbedtls_ssl_conf_handshake_timeout,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_handshake_timeout
	.type	mbedtls_ssl_conf_handshake_timeout, @function
mbedtls_ssl_conf_handshake_timeout:
.LFB183:
	.loc 6 1649 1
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
	.loc 6 1650 26
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,204(a5)
	.loc 6 1651 26
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,208(a5)
	.loc 6 1652 1
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
.LFE183:
	.size	mbedtls_ssl_conf_handshake_timeout, .-mbedtls_ssl_conf_handshake_timeout
	.section	.text.mbedtls_ssl_conf_authmode,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_authmode
	.type	mbedtls_ssl_conf_authmode, @function
mbedtls_ssl_conf_authmode:
.LFB184:
	.loc 6 1656 1
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
	.loc 6 1657 20
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,6(a5)
	.loc 6 1658 1
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
.LFE184:
	.size	mbedtls_ssl_conf_authmode, .-mbedtls_ssl_conf_authmode
	.section	.text.mbedtls_ssl_conf_verify,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_verify
	.type	mbedtls_ssl_conf_verify, @function
mbedtls_ssl_conf_verify:
.LFB185:
	.loc 6 1664 1
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
	.loc 6 1665 18
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,60(a5)
	.loc 6 1666 18
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,64(a5)
	.loc 6 1667 1
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
.LFE185:
	.size	mbedtls_ssl_conf_verify, .-mbedtls_ssl_conf_verify
	.section	.text.mbedtls_ssl_conf_rng,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_rng
	.type	mbedtls_ssl_conf_rng, @function
mbedtls_ssl_conf_rng:
.LFB186:
	.loc 6 1673 1
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
	.loc 6 1674 17
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,32(a5)
	.loc 6 1675 17
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,36(a5)
	.loc 6 1676 1
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
.LFE186:
	.size	mbedtls_ssl_conf_rng, .-mbedtls_ssl_conf_rng
	.section	.text.mbedtls_ssl_conf_dbg,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_dbg
	.type	mbedtls_ssl_conf_dbg, @function
mbedtls_ssl_conf_dbg:
.LFB187:
	.loc 6 1681 1
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
	.loc 6 1682 17
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,24(a5)
	.loc 6 1683 17
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,28(a5)
	.loc 6 1684 1
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
.LFE187:
	.size	mbedtls_ssl_conf_dbg, .-mbedtls_ssl_conf_dbg
	.section	.text.mbedtls_ssl_set_bio,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_bio
	.type	mbedtls_ssl_set_bio, @function
mbedtls_ssl_set_bio:
.LFB188:
	.loc 6 1691 1
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
	.loc 6 1692 16
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,44(a5)
	.loc 6 1693 17
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,32(a5)
	.loc 6 1694 17
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	sw	a4,36(a5)
	.loc 6 1695 25
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,40(a5)
	.loc 6 1696 1
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
.LFE188:
	.size	mbedtls_ssl_set_bio, .-mbedtls_ssl_set_bio
	.section	.text.mbedtls_ssl_set_mtu,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_mtu
	.type	mbedtls_ssl_set_mtu, @function
mbedtls_ssl_set_mtu:
.LFB189:
	.loc 6 1700 1
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
	mv	a5,a1
	sh	a5,-22(s0)
	.loc 6 1701 14
	lw	a5,-20(s0)
	lhu	a4,-22(s0)
	sh	a4,244(a5)
	.loc 6 1702 1
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
.LFE189:
	.size	mbedtls_ssl_set_mtu, .-mbedtls_ssl_set_mtu
	.section	.text.mbedtls_ssl_conf_read_timeout,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_read_timeout
	.type	mbedtls_ssl_conf_read_timeout, @function
mbedtls_ssl_conf_read_timeout:
.LFB190:
	.loc 6 1706 1
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
	.loc 6 1707 24
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,200(a5)
	.loc 6 1708 1
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
.LFE190:
	.size	mbedtls_ssl_conf_read_timeout, .-mbedtls_ssl_conf_read_timeout
	.section	.text.mbedtls_ssl_set_timer_cb,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_timer_cb
	.type	mbedtls_ssl_set_timer_cb, @function
mbedtls_ssl_set_timer_cb:
.LFB191:
	.loc 6 1714 1
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
	.loc 6 1715 18
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,84(a5)
	.loc 6 1716 22
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,88(a5)
	.loc 6 1717 22
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	sw	a4,92(a5)
	.loc 6 1720 5
	li	a1,0
	lw	a0,-20(s0)
	call	mbedtls_ssl_set_timer
	.loc 6 1721 1
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
.LFE191:
	.size	mbedtls_ssl_set_timer_cb, .-mbedtls_ssl_set_timer_cb
	.section	.text.mbedtls_ssl_conf_session_cache,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_session_cache
	.type	mbedtls_ssl_conf_session_cache, @function
mbedtls_ssl_conf_session_cache:
.LFB192:
	.loc 6 1728 1
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
	.loc 6 1729 19
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,48(a5)
	.loc 6 1730 23
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,40(a5)
	.loc 6 1731 23
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	sw	a4,44(a5)
	.loc 6 1732 1
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
.LFE192:
	.size	mbedtls_ssl_conf_session_cache, .-mbedtls_ssl_conf_session_cache
	.section	.text.mbedtls_ssl_set_session,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_session
	.type	mbedtls_ssl_set_session, @function
mbedtls_ssl_set_session:
.LFB193:
	.loc 6 1737 1
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
	.loc 6 1738 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 6 1740 8
	lw	a5,-36(s0)
	beq	a5,zero,.L314
	.loc 6 1740 20 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L314
	.loc 6 1742 12
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 6 1741 24
	beq	a5,zero,.L314
	.loc 6 1743 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 1743 18
	lbu	a5,4(a5)
	.loc 6 1742 39
	beq	a5,zero,.L315
.L314:
	.loc 6 1744 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L316
.L315:
	.loc 6 1747 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 1747 23
	lbu	a4,0(a5)
	.loc 6 1747 8
	li	a5,1
	bne	a4,a5,.L317
	.loc 6 1748 16
	li	a5,-28672
	addi	a5,a5,-128
	j	.L316
.L317:
	.loc 6 1775 16
	lw	a5,-36(s0)
	lw	a5,60(a5)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_ssl_session_copy
	sw	a0,-20(s0)
	.loc 6 1775 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L318
	.loc 6 1777 16
	lw	a5,-20(s0)
	j	.L316
.L318:
	.loc 6 1780 8
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 1780 28
	li	a4,1
	sb	a4,0(a5)
	.loc 6 1782 12
	li	a5,0
.L316:
	.loc 6 1783 1
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
.LFE193:
	.size	mbedtls_ssl_set_session, .-mbedtls_ssl_set_session
	.section	.text.mbedtls_ssl_conf_ciphersuites,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_ciphersuites
	.type	mbedtls_ssl_conf_ciphersuites, @function
mbedtls_ssl_conf_ciphersuites:
.LFB194:
	.loc 6 1788 1
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
	.loc 6 1789 28
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,20(a5)
	.loc 6 1790 1
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
.LFE194:
	.size	mbedtls_ssl_conf_ciphersuites, .-mbedtls_ssl_conf_ciphersuites
	.section	.text.mbedtls_ssl_conf_cert_profile,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_cert_profile
	.type	mbedtls_ssl_conf_cert_profile, @function
mbedtls_ssl_conf_cert_profile:
.LFB195:
	.loc 6 1820 1
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
	.loc 6 1821 24
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,104(a5)
	.loc 6 1822 1
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
.LFE195:
	.size	mbedtls_ssl_conf_cert_profile, .-mbedtls_ssl_conf_cert_profile
	.section	.text.ssl_key_cert_free,"ax",@progbits
	.align	1
	.type	ssl_key_cert_free, @function
ssl_key_cert_free:
.LFB196:
	.loc 6 1825 1
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
	.loc 6 1826 27
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 6 1828 11
	j	.L322
.L323:
	.loc 6 1829 14
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sw	a5,-24(s0)
	.loc 6 1830 9
	lw	a0,-20(s0)
	call	free
	.loc 6 1831 13
	lw	a5,-24(s0)
	sw	a5,-20(s0)
.L322:
	.loc 6 1828 16
	lw	a5,-20(s0)
	bne	a5,zero,.L323
	.loc 6 1833 1
	nop
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
.LFE196:
	.size	ssl_key_cert_free, .-ssl_key_cert_free
	.section	.text.ssl_append_key_cert,"ax",@progbits
	.align	1
	.type	ssl_append_key_cert, @function
ssl_append_key_cert:
.LFB197:
	.loc 6 1840 1
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
	.loc 6 1843 8
	lw	a5,-40(s0)
	bne	a5,zero,.L325
	.loc 6 1845 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	ssl_key_cert_free
	.loc 6 1846 15
	lw	a5,-36(s0)
	sw	zero,0(a5)
	.loc 6 1847 16
	li	a5,0
	j	.L326
.L325:
	.loc 6 1850 16
	li	a1,12
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-24(s0)
	.loc 6 1851 8
	lw	a5,-24(s0)
	bne	a5,zero,.L327
	.loc 6 1852 16
	li	a5,-32768
	addi	a5,a5,256
	j	.L326
.L327:
	.loc 6 1855 20
	lw	a5,-24(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 6 1856 19
	lw	a5,-24(s0)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	.loc 6 1857 20
	lw	a5,-24(s0)
	sw	zero,8(a5)
	.loc 6 1860 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 1860 8
	bne	a5,zero,.L328
	.loc 6 1861 15
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	j	.L329
.L328:
.LBB78:
	.loc 6 1863 31
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 6 1864 15
	j	.L330
.L331:
	.loc 6 1865 17
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sw	a5,-20(s0)
.L330:
	.loc 6 1864 19
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 6 1864 26
	bne	a5,zero,.L331
	.loc 6 1867 19
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,8(a5)
.L329:
.LBE78:
	.loc 6 1870 12
	li	a5,0
.L326:
	.loc 6 1871 1
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
.LFE197:
	.size	ssl_append_key_cert, .-ssl_append_key_cert
	.section	.text.mbedtls_ssl_conf_own_cert,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_own_cert
	.type	mbedtls_ssl_conf_own_cert, @function
mbedtls_ssl_conf_own_cert:
.LFB198:
	.loc 6 1876 1
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
	.loc 6 1877 12
	lw	a5,-20(s0)
	addi	a5,a5,108
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	ssl_append_key_cert
	mv	a5,a0
	.loc 6 1878 1
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
.LFE198:
	.size	mbedtls_ssl_conf_own_cert, .-mbedtls_ssl_conf_own_cert
	.section	.text.mbedtls_ssl_conf_ca_chain,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_ca_chain
	.type	mbedtls_ssl_conf_ca_chain, @function
mbedtls_ssl_conf_ca_chain:
.LFB199:
	.loc 6 1883 1
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
	.loc 6 1884 20
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,112(a5)
	.loc 6 1885 18
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,116(a5)
	.loc 6 1890 19
	lw	a5,-20(s0)
	sw	zero,120(a5)
	.loc 6 1891 19
	lw	a5,-20(s0)
	sw	zero,124(a5)
	.loc 6 1893 1
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
.LFE199:
	.size	mbedtls_ssl_conf_ca_chain, .-mbedtls_ssl_conf_ca_chain
	.section	.text.mbedtls_ssl_conf_ca_cb,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_ca_cb
	.type	mbedtls_ssl_conf_ca_cb, @function
mbedtls_ssl_conf_ca_cb:
.LFB200:
	.loc 6 1899 1
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
	.loc 6 1900 19
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,120(a5)
	.loc 6 1901 19
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,124(a5)
	.loc 6 1905 20
	lw	a5,-20(s0)
	sw	zero,112(a5)
	.loc 6 1906 18
	lw	a5,-20(s0)
	sw	zero,116(a5)
	.loc 6 1907 1
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
.LFE200:
	.size	mbedtls_ssl_conf_ca_cb, .-mbedtls_ssl_conf_ca_cb
	.section	.text.mbedtls_ssl_get_hs_sni,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_hs_sni
	.type	mbedtls_ssl_get_hs_sni, @function
mbedtls_ssl_get_hs_sni:
.LFB201:
	.loc 6 1914 1
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
	.loc 6 1915 20
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 1915 31
	lw	a4,988(a5)
	.loc 6 1915 15
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 6 1916 15
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 1916 26
	lw	a5,984(a5)
	.loc 6 1917 1
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
.LFE201:
	.size	mbedtls_ssl_get_hs_sni, .-mbedtls_ssl_get_hs_sni
	.section	.text.mbedtls_ssl_set_hs_own_cert,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_hs_own_cert
	.type	mbedtls_ssl_set_hs_own_cert, @function
mbedtls_ssl_set_hs_own_cert:
.LFB202:
	.loc 6 1922 1
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
	.loc 6 1923 36
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 1923 12
	addi	a5,a5,544
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	ssl_append_key_cert
	mv	a5,a0
	.loc 6 1925 1
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
.LFE202:
	.size	mbedtls_ssl_set_hs_own_cert, .-mbedtls_ssl_set_hs_own_cert
	.section	.text.mbedtls_ssl_set_hs_ca_chain,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_hs_ca_chain
	.type	mbedtls_ssl_set_hs_ca_chain, @function
mbedtls_ssl_set_hs_ca_chain:
.LFB203:
	.loc 6 1930 1
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
	.loc 6 1931 8
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 1931 34
	lw	a4,-24(s0)
	sw	a4,548(a5)
	.loc 6 1932 8
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 1932 32
	lw	a4,-28(s0)
	sw	a4,552(a5)
	.loc 6 1933 1
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
.LFE203:
	.size	mbedtls_ssl_set_hs_ca_chain, .-mbedtls_ssl_set_hs_ca_chain
	.section	.text.mbedtls_ssl_set_hs_dn_hints,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_hs_dn_hints
	.type	mbedtls_ssl_set_hs_dn_hints, @function
mbedtls_ssl_set_hs_dn_hints:
.LFB204:
	.loc 6 1938 1
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
	.loc 6 1939 8
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 1939 30
	lw	a4,-24(s0)
	sw	a4,992(a5)
	.loc 6 1940 1
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
.LFE204:
	.size	mbedtls_ssl_set_hs_dn_hints, .-mbedtls_ssl_set_hs_dn_hints
	.section	.text.mbedtls_ssl_set_hs_authmode,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_hs_authmode
	.type	mbedtls_ssl_set_hs_authmode, @function
mbedtls_ssl_set_hs_authmode:
.LFB205:
	.loc 6 1945 1
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
	.loc 6 1946 8
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 1946 34
	lw	a4,-24(s0)
	andi	a4,a4,0xff
	sb	a4,2(a5)
	.loc 6 1947 1
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
.LFE205:
	.size	mbedtls_ssl_set_hs_authmode, .-mbedtls_ssl_set_hs_authmode
	.section	.text.mbedtls_ssl_set_verify,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_verify
	.type	mbedtls_ssl_set_verify, @function
mbedtls_ssl_set_verify:
.LFB206:
	.loc 6 1954 1
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
	.loc 6 1955 17
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,24(a5)
	.loc 6 1956 17
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,28(a5)
	.loc 6 1957 1
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
.LFE206:
	.size	mbedtls_ssl_set_verify, .-mbedtls_ssl_set_verify
	.section	.text.mbedtls_ssl_conf_has_static_psk,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_has_static_psk
	.type	mbedtls_ssl_conf_has_static_psk, @function
mbedtls_ssl_conf_has_static_psk:
.LFB207:
	.loc 6 2111 1
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
	.loc 6 2112 13
	lw	a5,-20(s0)
	lw	a5,180(a5)
	.loc 6 2112 8
	beq	a5,zero,.L345
	.loc 6 2113 13
	lw	a5,-20(s0)
	lw	a5,184(a5)
	.loc 6 2112 39 discriminator 1
	bne	a5,zero,.L346
.L345:
	.loc 6 2114 16
	li	a5,0
	j	.L347
.L346:
	.loc 6 2123 13
	lw	a5,-20(s0)
	lw	a5,172(a5)
	.loc 6 2123 8
	beq	a5,zero,.L348
	.loc 6 2123 33 discriminator 1
	lw	a5,-20(s0)
	lw	a5,176(a5)
	.loc 6 2123 26 discriminator 1
	beq	a5,zero,.L348
	.loc 6 2124 16
	li	a5,1
	j	.L347
.L348:
	.loc 6 2127 12
	li	a5,0
.L347:
	.loc 6 2128 1
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
.LFE207:
	.size	mbedtls_ssl_conf_has_static_psk, .-mbedtls_ssl_conf_has_static_psk
	.section	.text.ssl_conf_remove_psk,"ax",@progbits
	.align	1
	.type	ssl_conf_remove_psk, @function
ssl_conf_remove_psk:
.LFB208:
	.loc 6 2131 1
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
	.loc 6 2140 13
	lw	a5,-20(s0)
	lw	a5,172(a5)
	.loc 6 2140 8
	beq	a5,zero,.L350
	.loc 6 2141 38
	lw	a5,-20(s0)
	lw	a4,172(a5)
	.loc 6 2141 9
	lw	a5,-20(s0)
	lw	a5,176(a5)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_zeroize_and_free
	.loc 6 2142 19
	lw	a5,-20(s0)
	sw	zero,172(a5)
	.loc 6 2143 23
	lw	a5,-20(s0)
	sw	zero,176(a5)
.L350:
	.loc 6 2147 13
	lw	a5,-20(s0)
	lw	a5,180(a5)
	.loc 6 2147 8
	beq	a5,zero,.L352
	.loc 6 2148 18
	lw	a5,-20(s0)
	lw	a5,180(a5)
	.loc 6 2148 9
	mv	a0,a5
	call	free
	.loc 6 2149 28
	lw	a5,-20(s0)
	sw	zero,180(a5)
	.loc 6 2150 32
	lw	a5,-20(s0)
	sw	zero,184(a5)
.L352:
	.loc 6 2152 1
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
.LFE208:
	.size	ssl_conf_remove_psk, .-ssl_conf_remove_psk
	.section	.text.ssl_conf_set_psk_identity,"ax",@progbits
	.align	1
	.type	ssl_conf_set_psk_identity, @function
ssl_conf_set_psk_identity:
.LFB209:
	.loc 6 2162 1
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
	.loc 6 2164 8
	lw	a5,-24(s0)
	beq	a5,zero,.L354
	.loc 6 2164 43 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L354
	.loc 6 2166 27
	lw	a5,-28(s0)
	srli	a5,a5,16
	.loc 6 2165 31
	bne	a5,zero,.L354
	.loc 6 2166 39
	lw	a4,-28(s0)
	li	a5,16384
	bleu	a4,a5,.L355
.L354:
	.loc 6 2168 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L356
.L355:
	.loc 6 2171 26
	lw	a1,-28(s0)
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 6 2171 24 discriminator 1
	lw	a5,-20(s0)
	sw	a4,180(a5)
	.loc 6 2172 13
	lw	a5,-20(s0)
	lw	a5,180(a5)
	.loc 6 2172 8
	bne	a5,zero,.L357
	.loc 6 2173 16
	li	a5,-32768
	addi	a5,a5,256
	j	.L356
.L357:
	.loc 6 2176 28
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,184(a5)
	.loc 6 2177 16
	lw	a5,-20(s0)
	lw	a4,180(a5)
	.loc 6 2177 5
	lw	a5,-20(s0)
	lw	a5,184(a5)
	mv	a2,a5
	lw	a1,-24(s0)
	mv	a0,a4
	call	memcpy
	.loc 6 2179 12
	li	a5,0
.L356:
	.loc 6 2180 1
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
.LFE209:
	.size	ssl_conf_set_psk_identity, .-ssl_conf_set_psk_identity
	.section	.text.mbedtls_ssl_conf_psk,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_psk
	.type	mbedtls_ssl_conf_psk, @function
mbedtls_ssl_conf_psk:
.LFB210:
	.loc 6 2185 1
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
	.loc 6 2186 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 6 2189 9
	lw	a0,-36(s0)
	call	mbedtls_ssl_conf_has_static_psk
	mv	a5,a0
	.loc 6 2189 8 discriminator 1
	beq	a5,zero,.L359
	.loc 6 2190 16
	li	a5,-28672
	addi	a5,a5,-128
	j	.L360
.L359:
	.loc 6 2194 8
	lw	a5,-40(s0)
	bne	a5,zero,.L361
	.loc 6 2195 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L360
.L361:
	.loc 6 2197 8
	lw	a5,-44(s0)
	bne	a5,zero,.L362
	.loc 6 2198 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L360
.L362:
	.loc 6 2200 8
	lw	a4,-44(s0)
	li	a5,32
	bleu	a4,a5,.L363
	.loc 6 2201 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L360
.L363:
	.loc 6 2204 22
	lw	a1,-44(s0)
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 6 2204 20 discriminator 1
	lw	a5,-36(s0)
	sw	a4,172(a5)
	.loc 6 2204 14 discriminator 1
	lw	a5,-36(s0)
	lw	a5,172(a5)
	.loc 6 2204 8 discriminator 1
	bne	a5,zero,.L364
	.loc 6 2205 16
	li	a5,-32768
	addi	a5,a5,256
	j	.L360
.L364:
	.loc 6 2207 19
	lw	a5,-36(s0)
	lw	a4,-44(s0)
	sw	a4,176(a5)
	.loc 6 2208 16
	lw	a5,-36(s0)
	lw	a4,172(a5)
	.loc 6 2208 5
	lw	a5,-36(s0)
	lw	a5,176(a5)
	mv	a2,a5
	lw	a1,-40(s0)
	mv	a0,a4
	call	memcpy
	.loc 6 2211 11
	lw	a2,-52(s0)
	lw	a1,-48(s0)
	lw	a0,-36(s0)
	call	ssl_conf_set_psk_identity
	sw	a0,-20(s0)
	.loc 6 2212 8
	lw	a5,-20(s0)
	beq	a5,zero,.L365
	.loc 6 2213 9
	lw	a0,-36(s0)
	call	ssl_conf_remove_psk
.L365:
	.loc 6 2216 12
	lw	a5,-20(s0)
.L360:
	.loc 6 2217 1
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
.LFE210:
	.size	mbedtls_ssl_conf_psk, .-mbedtls_ssl_conf_psk
	.section	.text.ssl_remove_psk,"ax",@progbits
	.align	1
	.type	ssl_remove_psk, @function
ssl_remove_psk:
.LFB211:
	.loc 6 2220 1
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
	.loc 6 2232 12
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 2232 23
	lw	a5,408(a5)
	.loc 6 2232 8
	beq	a5,zero,.L368
	.loc 6 2233 37
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 2233 48
	lw	a4,408(a5)
	.loc 6 2234 37
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 2233 9
	lw	a5,412(a5)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_zeroize_and_free
	.loc 6 2235 12
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 2235 33
	sw	zero,412(a5)
	.loc 6 2236 12
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 2236 29
	sw	zero,408(a5)
.L368:
	.loc 6 2239 1
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
.LFE211:
	.size	ssl_remove_psk, .-ssl_remove_psk
	.section	.text.mbedtls_ssl_set_hs_psk,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_hs_psk
	.type	mbedtls_ssl_set_hs_psk, @function
mbedtls_ssl_set_hs_psk:
.LFB212:
	.loc 6 2243 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	.loc 6 2251 8
	lw	a5,-24(s0)
	beq	a5,zero,.L370
	.loc 6 2251 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 2251 20 discriminator 1
	bne	a5,zero,.L371
.L370:
	.loc 6 2252 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L372
.L371:
	.loc 6 2255 8
	lw	a4,-28(s0)
	li	a5,32
	bleu	a4,a5,.L373
	.loc 6 2256 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L372
.L373:
	.loc 6 2259 5
	lw	a0,-20(s0)
	call	ssl_remove_psk
	.loc 6 2293 13
	lw	a5,-20(s0)
	lw	s1,64(a5)
	.loc 6 2293 32
	lw	a1,-28(s0)
	li	a0,1
	call	calloc
	mv	a5,a0
	.loc 6 2293 30 discriminator 1
	sw	a5,408(s1)
	.loc 6 2293 24 discriminator 1
	lw	a5,408(s1)
	.loc 6 2293 8 discriminator 1
	bne	a5,zero,.L374
	.loc 6 2294 16
	li	a5,-32768
	addi	a5,a5,256
	j	.L372
.L374:
	.loc 6 2297 8
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 2297 29
	lw	a4,-28(s0)
	sw	a4,412(a5)
	.loc 6 2298 15
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 2298 26
	lw	a4,408(a5)
	.loc 6 2298 41
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 2298 5
	lw	a5,412(a5)
	mv	a2,a5
	lw	a1,-24(s0)
	mv	a0,a4
	call	memcpy
	.loc 6 2300 12
	li	a5,0
.L372:
	.loc 6 2302 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE212:
	.size	mbedtls_ssl_set_hs_psk, .-mbedtls_ssl_set_hs_psk
	.section	.text.mbedtls_ssl_conf_psk_cb,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_psk_cb
	.type	mbedtls_ssl_conf_psk_cb, @function
mbedtls_ssl_conf_psk_cb:
.LFB213:
	.loc 6 2352 1
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
	.loc 6 2353 17
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,68(a5)
	.loc 6 2354 17
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,72(a5)
	.loc 6 2355 1
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
.LFE213:
	.size	mbedtls_ssl_conf_psk_cb, .-mbedtls_ssl_conf_psk_cb
	.section	.text.mbedtls_ssl_get_base_mode,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_get_base_mode, @function
mbedtls_ssl_get_base_mode:
.LFB214:
	.loc 6 2379 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 6 2381 8
	lbu	a4,-17(s0)
	li	a5,2
	bne	a4,a5,.L377
	.loc 6 2382 16
	li	a5,1
	j	.L378
.L377:
	.loc 6 2389 8
	lbu	a4,-17(s0)
	li	a5,6
	beq	a4,a5,.L379
	.loc 6 2389 34 discriminator 1
	lbu	a4,-17(s0)
	li	a5,8
	beq	a4,a5,.L379
	.loc 6 2390 34
	lbu	a4,-17(s0)
	li	a5,11
	bne	a4,a5,.L380
.L379:
	.loc 6 2392 16
	li	a5,3
	j	.L378
.L380:
	.loc 6 2396 12
	li	a5,0
.L378:
	.loc 6 2397 1
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
.LFE214:
	.size	mbedtls_ssl_get_base_mode, .-mbedtls_ssl_get_base_mode
	.section	.text.mbedtls_ssl_get_actual_mode,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_get_actual_mode, @function
mbedtls_ssl_get_actual_mode:
.LFB215:
	.loc 6 2403 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-24(s0)
	sb	a5,-17(s0)
	.loc 6 2405 8
	lw	a4,-24(s0)
	li	a5,1
	bne	a4,a5,.L382
	.loc 6 2405 31 discriminator 1
	lbu	a4,-17(s0)
	li	a5,1
	bne	a4,a5,.L382
	.loc 6 2407 16
	li	a5,2
	j	.L383
.L382:
	.loc 6 2412 12
	lbu	a5,-17(s0)
.L383:
	.loc 6 2413 1
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
.LFE215:
	.size	mbedtls_ssl_get_actual_mode, .-mbedtls_ssl_get_actual_mode
	.section	.text.mbedtls_ssl_get_mode_from_transform,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_mode_from_transform
	.type	mbedtls_ssl_get_mode_from_transform, @function
mbedtls_ssl_get_mode_from_transform:
.LFB216:
	.loc 6 2417 1
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
	.loc 6 2418 36
	lw	a5,-36(s0)
	addi	a5,a5,84
	mv	a0,a5
	call	mbedtls_cipher_get_cipher_mode
	mv	a5,a0
	.loc 6 2418 36 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_ssl_get_base_mode
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 6 2426 9 is_stmt 1
	sw	zero,-24(s0)
	.loc 6 2428 22
	lw	a5,-36(s0)
	lw	a5,76(a5)
	sw	a5,-24(s0)
	.loc 6 2430 12
	lbu	a5,-17(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_ssl_get_actual_mode
	mv	a5,a0
	.loc 6 2431 1
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
.LFE216:
	.size	mbedtls_ssl_get_mode_from_transform, .-mbedtls_ssl_get_mode_from_transform
	.section	.text.mbedtls_ssl_get_mode_from_ciphersuite,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_mode_from_ciphersuite
	.type	mbedtls_ssl_get_mode_from_ciphersuite, @function
mbedtls_ssl_get_mode_from_ciphersuite:
.LFB217:
	.loc 6 2438 1
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
	.loc 6 2439 24
	sb	zero,-17(s0)
	.loc 6 2453 68
	lw	a5,-40(s0)
	lbu	a5,8(a5)
	.loc 6 2453 9
	mv	a0,a5
	call	mbedtls_cipher_info_from_type
	sw	a0,-24(s0)
	.loc 6 2454 8
	lw	a5,-24(s0)
	beq	a5,zero,.L387
	.loc 6 2456 13
	lw	a0,-24(s0)
	call	mbedtls_cipher_info_get_mode
	mv	a5,a0
	.loc 6 2456 13 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_ssl_get_base_mode
	mv	a5,a0
	sb	a5,-17(s0)
.L387:
	.loc 6 2464 12 is_stmt 1
	lbu	a5,-17(s0)
	lw	a1,-36(s0)
	mv	a0,a5
	call	mbedtls_ssl_get_actual_mode
	mv	a5,a0
	.loc 6 2465 1
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
.LFE217:
	.size	mbedtls_ssl_get_mode_from_ciphersuite, .-mbedtls_ssl_get_mode_from_ciphersuite
	.section	.text.mbedtls_ssl_conf_dh_param_bin,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_dh_param_bin
	.type	mbedtls_ssl_conf_dh_param_bin, @function
mbedtls_ssl_conf_dh_param_bin:
.LFB218:
	.loc 6 2671 1
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
	.loc 6 2672 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 6 2674 5
	lw	a5,-36(s0)
	addi	a5,a5,156
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 6 2675 5
	lw	a5,-36(s0)
	addi	a5,a5,164
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 6 2677 16
	lw	a5,-36(s0)
	addi	a5,a5,156
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 6 2677 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L390
	.loc 6 2678 16
	lw	a5,-36(s0)
	addi	a5,a5,164
	lw	a2,-52(s0)
	lw	a1,-48(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 6 2677 74 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L391
.L390:
	.loc 6 2679 9
	lw	a5,-36(s0)
	addi	a5,a5,156
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 6 2680 9
	lw	a5,-36(s0)
	addi	a5,a5,164
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 6 2681 16
	lw	a5,-20(s0)
	j	.L392
.L391:
	.loc 6 2684 12
	li	a5,0
.L392:
	.loc 6 2685 1
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
.LFE218:
	.size	mbedtls_ssl_conf_dh_param_bin, .-mbedtls_ssl_conf_dh_param_bin
	.section	.text.mbedtls_ssl_conf_dh_param_ctx,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_dh_param_ctx
	.type	mbedtls_ssl_conf_dh_param_ctx, @function
mbedtls_ssl_conf_dh_param_ctx:
.LFB219:
	.loc 6 2688 1
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
	.loc 6 2689 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 6 2691 5
	lw	a5,-36(s0)
	addi	a5,a5,156
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 6 2692 5
	lw	a5,-36(s0)
	addi	a5,a5,164
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 6 2694 16
	lw	a5,-36(s0)
	addi	a5,a5,156
	mv	a2,a5
	li	a1,0
	lw	a0,-40(s0)
	call	mbedtls_dhm_get_value
	sw	a0,-20(s0)
	.loc 6 2694 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L394
	.loc 6 2696 16
	lw	a5,-36(s0)
	addi	a5,a5,164
	mv	a2,a5
	li	a1,1
	lw	a0,-40(s0)
	call	mbedtls_dhm_get_value
	sw	a0,-20(s0)
	.loc 6 2695 58
	lw	a5,-20(s0)
	beq	a5,zero,.L395
.L394:
	.loc 6 2698 9
	lw	a5,-36(s0)
	addi	a5,a5,156
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 6 2699 9
	lw	a5,-36(s0)
	addi	a5,a5,164
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 6 2700 16
	lw	a5,-20(s0)
	j	.L396
.L395:
	.loc 6 2703 12
	li	a5,0
.L396:
	.loc 6 2704 1
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
.LFE219:
	.size	mbedtls_ssl_conf_dh_param_ctx, .-mbedtls_ssl_conf_dh_param_ctx
	.section	.text.mbedtls_ssl_conf_dhm_min_bitlen,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_dhm_min_bitlen
	.type	mbedtls_ssl_conf_dhm_min_bitlen, @function
mbedtls_ssl_conf_dhm_min_bitlen:
.LFB220:
	.loc 6 2713 1
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
	.loc 6 2714 26
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,228(a5)
	.loc 6 2715 1
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
.LFE220:
	.size	mbedtls_ssl_conf_dhm_min_bitlen, .-mbedtls_ssl_conf_dhm_min_bitlen
	.section	.text.mbedtls_ssl_conf_sig_algs,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_sig_algs
	.type	mbedtls_ssl_conf_sig_algs, @function
mbedtls_ssl_conf_sig_algs:
.LFB221:
	.loc 6 2733 1
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
	.loc 6 2737 20
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,148(a5)
	.loc 6 2738 1
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
.LFE221:
	.size	mbedtls_ssl_conf_sig_algs, .-mbedtls_ssl_conf_sig_algs
	.section	.text.mbedtls_ssl_conf_groups,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_groups
	.type	mbedtls_ssl_conf_groups, @function
mbedtls_ssl_conf_groups:
.LFB222:
	.loc 6 2765 1
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
	.loc 6 2769 22
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,152(a5)
	.loc 6 2770 1
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
.LFE222:
	.size	mbedtls_ssl_conf_groups, .-mbedtls_ssl_conf_groups
	.section	.rodata
	.align	2
.LC61:
	.string	""
	.section	.srodata.ssl_hostname_skip_cn_verification,"a"
	.align	2
	.type	ssl_hostname_skip_cn_verification, @object
	.size	ssl_hostname_skip_cn_verification, 4
ssl_hostname_skip_cn_verification:
	.word	.LC61
	.section	.text.mbedtls_ssl_has_set_hostname_been_called,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_has_set_hostname_been_called, @function
mbedtls_ssl_has_set_hostname_been_called:
.LFB223:
	.loc 6 2791 1
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
	.loc 6 2792 15
	lw	a5,-20(s0)
	lw	a5,248(a5)
	.loc 6 2792 26
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 6 2793 1
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
.LFE223:
	.size	mbedtls_ssl_has_set_hostname_been_called, .-mbedtls_ssl_has_set_hostname_been_called
	.section	.text.mbedtls_ssl_get_hostname_pointer,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_hostname_pointer
	.type	mbedtls_ssl_get_hostname_pointer, @function
mbedtls_ssl_get_hostname_pointer:
.LFB224:
	.loc 6 2802 1
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
	.loc 6 2803 12
	lw	a5,-20(s0)
	lw	a4,248(a5)
	.loc 6 2803 23
	lui	a5,%hi(.LC61)
	addi	a5,a5,%lo(.LC61)
	.loc 6 2803 8
	bne	a4,a5,.L403
	.loc 6 2804 15
	li	a5,0
	j	.L404
.L403:
	.loc 6 2806 15
	lw	a5,-20(s0)
	lw	a5,248(a5)
.L404:
	.loc 6 2807 1
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
.LFE224:
	.size	mbedtls_ssl_get_hostname_pointer, .-mbedtls_ssl_get_hostname_pointer
	.section	.text.mbedtls_ssl_free_hostname,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_free_hostname, @function
mbedtls_ssl_free_hostname:
.LFB225:
	.loc 6 2810 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 6 2811 12
	lw	a5,-20(s0)
	lw	a5,248(a5)
	.loc 6 2811 8
	beq	a5,zero,.L406
	.loc 6 2812 12
	lw	a5,-20(s0)
	lw	a4,248(a5)
	.loc 6 2812 23
	lui	a5,%hi(.LC61)
	addi	a5,a5,%lo(.LC61)
	.loc 6 2811 30 discriminator 1
	beq	a4,a5,.L406
	.loc 6 2813 37
	lw	a5,-20(s0)
	lw	s1,248(a5)
	.loc 6 2813 59
	lw	a5,-20(s0)
	lw	a5,248(a5)
	.loc 6 2813 9
	mv	a0,a5
	call	strlen
	mv	a5,a0
	.loc 6 2813 9 is_stmt 0 discriminator 1
	mv	a1,a5
	mv	a0,s1
	call	mbedtls_zeroize_and_free
.L406:
	.loc 6 2815 19 is_stmt 1
	lw	a5,-20(s0)
	sw	zero,248(a5)
	.loc 6 2816 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE225:
	.size	mbedtls_ssl_free_hostname, .-mbedtls_ssl_free_hostname
	.section	.text.mbedtls_ssl_set_hostname,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_hostname
	.type	mbedtls_ssl_set_hostname, @function
mbedtls_ssl_set_hostname:
.LFB226:
	.loc 6 2819 1
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
	.loc 6 2821 12
	sw	zero,-20(s0)
	.loc 6 2825 8
	lw	a5,-40(s0)
	beq	a5,zero,.L408
	.loc 6 2826 24
	lw	a0,-40(s0)
	call	strlen
	sw	a0,-20(s0)
	.loc 6 2828 12
	lw	a4,-20(s0)
	li	a5,255
	bleu	a4,a5,.L408
	.loc 6 2829 20
	li	a5,-28672
	addi	a5,a5,-256
	j	.L409
.L408:
	.loc 6 2835 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_free_hostname
	.loc 6 2837 8
	lw	a5,-40(s0)
	bne	a5,zero,.L410
	.loc 6 2843 23
	lui	a5,%hi(.LC61)
	addi	a4,a5,%lo(.LC61)
	lw	a5,-36(s0)
	sw	a4,248(a5)
	j	.L411
.L410:
	.loc 6 2845 25
	lw	a5,-20(s0)
	addi	a5,a5,1
	mv	a1,a5
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 6 2845 23 discriminator 1
	lw	a5,-36(s0)
	sw	a4,248(a5)
	.loc 6 2846 16
	lw	a5,-36(s0)
	lw	a5,248(a5)
	.loc 6 2846 12
	bne	a5,zero,.L412
	.loc 6 2850 20
	li	a5,-32768
	addi	a5,a5,256
	j	.L409
.L412:
	.loc 6 2853 19
	lw	a5,-36(s0)
	lw	a5,248(a5)
	.loc 6 2853 9
	lw	a2,-20(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 6 2855 12
	lw	a5,-36(s0)
	lw	a4,248(a5)
	.loc 6 2855 22
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 6 2855 37
	sb	zero,0(a5)
.L411:
	.loc 6 2858 12
	li	a5,0
.L409:
	.loc 6 2859 1
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
.LFE226:
	.size	mbedtls_ssl_set_hostname, .-mbedtls_ssl_set_hostname
	.section	.text.mbedtls_ssl_conf_sni,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_sni
	.type	mbedtls_ssl_conf_sni, @function
mbedtls_ssl_conf_sni:
.LFB227:
	.loc 6 2867 1
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
	.loc 6 2868 17
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,52(a5)
	.loc 6 2869 17
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,56(a5)
	.loc 6 2870 1
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
.LFE227:
	.size	mbedtls_ssl_conf_sni, .-mbedtls_ssl_conf_sni
	.section	.text.mbedtls_ssl_conf_alpn_protocols,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_alpn_protocols
	.type	mbedtls_ssl_conf_alpn_protocols, @function
mbedtls_ssl_conf_alpn_protocols:
.LFB228:
	.loc 6 2875 1
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
	.loc 6 2884 13
	sw	zero,-20(s0)
	.loc 6 2885 12
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 6 2885 5
	j	.L415
.L419:
	.loc 6 2886 19
	lw	a5,-24(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	strlen
	sw	a0,-28(s0)
	.loc 6 2887 17
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 6 2889 12
	lw	a5,-28(s0)
	beq	a5,zero,.L416
	.loc 6 2889 28 discriminator 1
	lw	a4,-28(s0)
	li	a5,255
	bgtu	a4,a5,.L416
	.loc 6 2890 29
	lw	a4,-20(s0)
	li	a5,65536
	bltu	a4,a5,.L417
.L416:
	.loc 6 2892 20
	li	a5,-28672
	addi	a5,a5,-256
	j	.L418
.L417:
	.loc 6 2885 34 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
.L415:
	.loc 6 2885 22 discriminator 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 6 2885 25 discriminator 1
	bne	a5,zero,.L419
	.loc 6 2896 21
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,188(a5)
	.loc 6 2898 12
	li	a5,0
.L418:
	.loc 6 2899 1
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
.LFE228:
	.size	mbedtls_ssl_conf_alpn_protocols, .-mbedtls_ssl_conf_alpn_protocols
	.section	.text.mbedtls_ssl_get_alpn_protocol,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_alpn_protocol
	.type	mbedtls_ssl_get_alpn_protocol, @function
mbedtls_ssl_get_alpn_protocol:
.LFB229:
	.loc 6 2902 1
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
	.loc 6 2903 15
	lw	a5,-20(s0)
	lw	a5,252(a5)
	.loc 6 2904 1
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
.LFE229:
	.size	mbedtls_ssl_get_alpn_protocol, .-mbedtls_ssl_get_alpn_protocol
	.section	.text.mbedtls_ssl_conf_srtp_mki_value_supported,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_srtp_mki_value_supported
	.type	mbedtls_ssl_conf_srtp_mki_value_supported, @function
mbedtls_ssl_conf_srtp_mki_value_supported:
.LFB230:
	.loc 6 2910 1
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
	.loc 6 2911 33
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,17(a5)
	.loc 6 2912 1
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
.LFE230:
	.size	mbedtls_ssl_conf_srtp_mki_value_supported, .-mbedtls_ssl_conf_srtp_mki_value_supported
	.section	.text.mbedtls_ssl_dtls_srtp_set_mki_value,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_dtls_srtp_set_mki_value
	.type	mbedtls_ssl_dtls_srtp_set_mki_value, @function
mbedtls_ssl_dtls_srtp_set_mki_value:
.LFB231:
	.loc 6 2917 1
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
	mv	a5,a2
	sh	a5,-26(s0)
	.loc 6 2918 8
	lhu	a4,-26(s0)
	li	a5,255
	bleu	a4,a5,.L424
	.loc 6 2919 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L425
.L424:
	.loc 6 2922 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 6 2922 18
	lbu	a5,17(a5)
	.loc 6 2922 8
	bne	a5,zero,.L426
	.loc 6 2923 16
	li	a5,-28672
	addi	a5,a5,-128
	j	.L425
.L426:
	.loc 6 2926 31
	lw	a5,-20(s0)
	addi	a5,a5,260
	.loc 6 2926 5
	lhu	a4,-26(s0)
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	memcpy
	.loc 6 2927 33
	lw	a5,-20(s0)
	lhu	a4,-26(s0)
	sh	a4,258(a5)
	.loc 6 2928 12
	li	a5,0
.L425:
	.loc 6 2929 1
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
.LFE231:
	.size	mbedtls_ssl_dtls_srtp_set_mki_value, .-mbedtls_ssl_dtls_srtp_set_mki_value
	.section	.text.mbedtls_ssl_conf_dtls_srtp_protection_profiles,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_dtls_srtp_protection_profiles
	.type	mbedtls_ssl_conf_dtls_srtp_protection_profiles, @function
mbedtls_ssl_conf_dtls_srtp_protection_profiles:
.LFB232:
	.loc 6 2933 1
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
	.loc 6 2935 12
	sw	zero,-24(s0)
	.loc 6 2939 12
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 6 2939 5
	j	.L428
.L432:
	.loc 6 2942 13
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	mv	a0,a5
	call	mbedtls_ssl_check_srtp_profile_value
	mv	a5,a0
	.loc 6 2942 12 discriminator 1
	beq	a5,zero,.L429
	.loc 6 2943 22
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	j	.L430
.L429:
	.loc 6 2946 23
	li	a5,5
	sw	a5,-24(s0)
.L430:
	.loc 6 2941 11
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
.L428:
	.loc 6 2939 24 discriminator 1
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	.loc 6 2939 50 discriminator 1
	beq	a5,zero,.L431
	.loc 6 2939 50 is_stmt 0 discriminator 2
	lw	a4,-24(s0)
	li	a5,4
	bleu	a4,a5,.L432
.L431:
	.loc 6 2950 8 is_stmt 1
	lw	a4,-24(s0)
	li	a5,4
	bleu	a4,a5,.L433
	.loc 6 2951 38
	lw	a5,-36(s0)
	sw	zero,192(a5)
	.loc 6 2952 42
	lw	a5,-36(s0)
	sw	zero,196(a5)
	.loc 6 2953 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L434
.L433:
	.loc 6 2956 34
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,192(a5)
	.loc 6 2957 38
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,196(a5)
	.loc 6 2959 12
	li	a5,0
.L434:
	.loc 6 2960 1
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
.LFE232:
	.size	mbedtls_ssl_conf_dtls_srtp_protection_profiles, .-mbedtls_ssl_conf_dtls_srtp_protection_profiles
	.section	.text.mbedtls_ssl_get_dtls_srtp_negotiation_result,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_dtls_srtp_negotiation_result
	.type	mbedtls_ssl_get_dtls_srtp_negotiation_result, @function
mbedtls_ssl_get_dtls_srtp_negotiation_result:
.LFB233:
	.loc 6 2964 1
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
	.loc 6 2965 67
	lw	a5,-20(s0)
	lhu	a4,256(a5)
	.loc 6 2965 46
	lw	a5,-24(s0)
	sh	a4,0(a5)
	.loc 6 2967 23
	lw	a5,-24(s0)
	lhu	a5,0(a5)
	.loc 6 2967 8
	bne	a5,zero,.L436
	.loc 6 2968 33
	lw	a5,-24(s0)
	sh	zero,2(a5)
	.loc 6 2974 1
	j	.L438
.L436:
	.loc 6 2970 54
	lw	a5,-20(s0)
	lhu	a4,258(a5)
	.loc 6 2970 33
	lw	a5,-24(s0)
	sh	a4,2(a5)
	.loc 6 2971 30
	lw	a5,-24(s0)
	addi	a4,a5,4
	.loc 6 2971 62
	lw	a5,-20(s0)
	addi	a3,a5,260
	.loc 6 2972 35
	lw	a5,-20(s0)
	lhu	a5,258(a5)
	.loc 6 2971 9
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
.L438:
	.loc 6 2974 1
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
.LFE233:
	.size	mbedtls_ssl_get_dtls_srtp_negotiation_result, .-mbedtls_ssl_get_dtls_srtp_negotiation_result
	.section	.text.mbedtls_ssl_conf_cert_req_ca_list,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_cert_req_ca_list
	.type	mbedtls_ssl_conf_cert_req_ca_list, @function
mbedtls_ssl_conf_cert_req_ca_list:
.LFB234:
	.loc 6 2992 1
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
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 6 2993 28
	lw	a5,-20(s0)
	lbu	a4,-21(s0)
	sb	a4,14(a5)
	.loc 6 2994 1
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
.LFE234:
	.size	mbedtls_ssl_conf_cert_req_ca_list, .-mbedtls_ssl_conf_cert_req_ca_list
	.section	.text.mbedtls_ssl_conf_encrypt_then_mac,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_encrypt_then_mac
	.type	mbedtls_ssl_conf_encrypt_then_mac, @function
mbedtls_ssl_conf_encrypt_then_mac:
.LFB235:
	.loc 6 2999 1
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
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 6 3000 28
	lw	a5,-20(s0)
	lbu	a4,-21(s0)
	sb	a4,9(a5)
	.loc 6 3001 1
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
.LFE235:
	.size	mbedtls_ssl_conf_encrypt_then_mac, .-mbedtls_ssl_conf_encrypt_then_mac
	.section	.text.mbedtls_ssl_conf_extended_master_secret,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_extended_master_secret
	.type	mbedtls_ssl_conf_extended_master_secret, @function
mbedtls_ssl_conf_extended_master_secret:
.LFB236:
	.loc 6 3006 1
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
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 6 3007 23
	lw	a5,-20(s0)
	lbu	a4,-21(s0)
	sb	a4,10(a5)
	.loc 6 3008 1
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
.LFE236:
	.size	mbedtls_ssl_conf_extended_master_secret, .-mbedtls_ssl_conf_extended_master_secret
	.section	.text.mbedtls_ssl_conf_max_frag_len,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_max_frag_len
	.type	mbedtls_ssl_conf_max_frag_len, @function
mbedtls_ssl_conf_max_frag_len:
.LFB237:
	.loc 6 3013 1
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
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 6 3014 8
	lbu	a4,-21(s0)
	li	a5,4
	bgtu	a4,a5,.L443
	.loc 6 3015 9
	lbu	a5,-21(s0)
	mv	a0,a5
	call	ssl_mfl_code_to_length
	mv	a4,a0
	.loc 6 3014 23 discriminator 1
	li	a5,16384
	bleu	a4,a5,.L444
.L443:
	.loc 6 3016 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L445
.L444:
	.loc 6 3019 20
	lw	a5,-20(s0)
	lbu	a4,-21(s0)
	sb	a4,8(a5)
	.loc 6 3021 12
	li	a5,0
.L445:
	.loc 6 3022 1
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
.LFE237:
	.size	mbedtls_ssl_conf_max_frag_len, .-mbedtls_ssl_conf_max_frag_len
	.section	.text.mbedtls_ssl_conf_legacy_renegotiation,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_legacy_renegotiation
	.type	mbedtls_ssl_conf_legacy_renegotiation, @function
mbedtls_ssl_conf_legacy_renegotiation:
.LFB238:
	.loc 6 3026 1
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
	.loc 6 3027 38
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,7(a5)
	.loc 6 3028 1
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
.LFE238:
	.size	mbedtls_ssl_conf_legacy_renegotiation, .-mbedtls_ssl_conf_legacy_renegotiation
	.section	.text.mbedtls_ssl_conf_renegotiation,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_renegotiation
	.type	mbedtls_ssl_conf_renegotiation, @function
mbedtls_ssl_conf_renegotiation:
.LFB239:
	.loc 6 3032 1
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
	.loc 6 3033 33
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,12(a5)
	.loc 6 3034 1
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
.LFE239:
	.size	mbedtls_ssl_conf_renegotiation, .-mbedtls_ssl_conf_renegotiation
	.section	.text.mbedtls_ssl_conf_renegotiation_enforced,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_renegotiation_enforced
	.type	mbedtls_ssl_conf_renegotiation_enforced, @function
mbedtls_ssl_conf_renegotiation_enforced:
.LFB240:
	.loc 6 3037 1
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
	.loc 6 3038 30
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,212(a5)
	.loc 6 3039 1
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
.LFE240:
	.size	mbedtls_ssl_conf_renegotiation_enforced, .-mbedtls_ssl_conf_renegotiation_enforced
	.section	.text.mbedtls_ssl_conf_renegotiation_period,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_renegotiation_period
	.type	mbedtls_ssl_conf_renegotiation_period, @function
mbedtls_ssl_conf_renegotiation_period:
.LFB241:
	.loc 6 3043 1
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
	.loc 6 3044 16
	lw	a5,-20(s0)
	addi	a5,a5,216
	.loc 6 3044 5
	li	a2,8
	lw	a1,-24(s0)
	mv	a0,a5
	call	memcpy
	.loc 6 3045 1
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
.LFE241:
	.size	mbedtls_ssl_conf_renegotiation_period, .-mbedtls_ssl_conf_renegotiation_period
	.section	.text.mbedtls_ssl_conf_session_tickets,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_session_tickets
	.type	mbedtls_ssl_conf_session_tickets, @function
mbedtls_ssl_conf_session_tickets:
.LFB242:
	.loc 6 3052 1
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
	.loc 6 3053 9
	lw	a5,-20(s0)
	lbu	a5,13(a5)
	.loc 6 3053 27
	andi	a5,a5,-2
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,13(a5)
	.loc 6 3054 9
	lw	a5,-20(s0)
	lbu	a5,13(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 6 3054 49
	lw	a5,-24(s0)
	snez	a5,a5
	andi	a5,a5,0xff
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 6 3054 27
	or	a5,a4,a5
	slli	a5,a5,24
	srai	a5,a5,24
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,13(a5)
	.loc 6 3056 1
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
.LFE242:
	.size	mbedtls_ssl_conf_session_tickets, .-mbedtls_ssl_conf_session_tickets
	.section	.text.mbedtls_ssl_conf_session_tickets_cb,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_session_tickets_cb
	.type	mbedtls_ssl_conf_session_tickets_cb, @function
mbedtls_ssl_conf_session_tickets_cb:
.LFB243:
	.loc 6 3083 1
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
	.loc 6 3084 26
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,88(a5)
	.loc 6 3085 26
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,92(a5)
	.loc 6 3086 20
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	sw	a4,96(a5)
	.loc 6 3087 1
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
.LFE243:
	.size	mbedtls_ssl_conf_session_tickets_cb, .-mbedtls_ssl_conf_session_tickets_cb
	.section	.text.mbedtls_ssl_set_export_keys_cb,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_export_keys_cb
	.type	mbedtls_ssl_set_export_keys_cb, @function
mbedtls_ssl_set_export_keys_cb:
.LFB244:
	.loc 6 3094 1
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
	.loc 6 3095 24
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,592(a5)
	.loc 6 3096 24
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,596(a5)
	.loc 6 3097 1
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
.LFE244:
	.size	mbedtls_ssl_set_export_keys_cb, .-mbedtls_ssl_set_export_keys_cb
	.section	.text.mbedtls_ssl_conf_async_private_cb,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_async_private_cb
	.type	mbedtls_ssl_conf_async_private_cb, @function
mbedtls_ssl_conf_async_private_cb:
.LFB245:
	.loc 6 3107 1
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
	sw	a5,-40(s0)
	.loc 6 3108 30
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,128(a5)
	.loc 6 3109 33
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,132(a5)
	.loc 6 3110 26
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	sw	a4,136(a5)
	.loc 6 3111 26
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,140(a5)
	.loc 6 3112 31
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,144(a5)
	.loc 6 3113 1
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
.LFE245:
	.size	mbedtls_ssl_conf_async_private_cb, .-mbedtls_ssl_conf_async_private_cb
	.section	.text.mbedtls_ssl_conf_get_async_config_data,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_get_async_config_data
	.type	mbedtls_ssl_conf_get_async_config_data, @function
mbedtls_ssl_conf_get_async_config_data:
.LFB246:
	.loc 6 3116 1
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
	.loc 6 3117 16
	lw	a5,-20(s0)
	lw	a5,144(a5)
	.loc 6 3118 1
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
.LFE246:
	.size	mbedtls_ssl_conf_get_async_config_data, .-mbedtls_ssl_conf_get_async_config_data
	.section	.text.mbedtls_ssl_get_async_operation_data,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_async_operation_data
	.type	mbedtls_ssl_get_async_operation_data, @function
mbedtls_ssl_get_async_operation_data:
.LFB247:
	.loc 6 3121 1
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
	.loc 6 3122 12
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 3122 8
	bne	a5,zero,.L457
	.loc 6 3123 15
	li	a5,0
	j	.L458
.L457:
	.loc 6 3125 19
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 3125 30
	lw	a5,980(a5)
.L458:
	.loc 6 3127 1
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
.LFE247:
	.size	mbedtls_ssl_get_async_operation_data, .-mbedtls_ssl_get_async_operation_data
	.section	.text.mbedtls_ssl_set_async_operation_data,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_async_operation_data
	.type	mbedtls_ssl_set_async_operation_data, @function
mbedtls_ssl_set_async_operation_data:
.LFB248:
	.loc 6 3131 1
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
	.loc 6 3132 12
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 3132 8
	beq	a5,zero,.L461
	.loc 6 3133 12
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 3133 40
	lw	a4,-24(s0)
	sw	a4,980(a5)
.L461:
	.loc 6 3135 1
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
.LFE248:
	.size	mbedtls_ssl_set_async_operation_data, .-mbedtls_ssl_set_async_operation_data
	.section	.text.mbedtls_ssl_get_verify_result,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_verify_result
	.type	mbedtls_ssl_get_verify_result, @function
mbedtls_ssl_get_verify_result:
.LFB249:
	.loc 6 3142 1
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
	.loc 6 3143 12
	lw	a5,-20(s0)
	lw	a5,56(a5)
	.loc 6 3143 8
	beq	a5,zero,.L463
	.loc 6 3144 19
	lw	a5,-20(s0)
	lw	a5,56(a5)
	.loc 6 3144 28
	lw	a5,100(a5)
	j	.L464
.L463:
	.loc 6 3147 12
	lw	a5,-20(s0)
	lw	a5,60(a5)
	.loc 6 3147 8
	beq	a5,zero,.L465
	.loc 6 3148 19
	lw	a5,-20(s0)
	lw	a5,60(a5)
	.loc 6 3148 38
	lw	a5,100(a5)
	j	.L464
.L465:
	.loc 6 3151 12
	li	a5,-1
.L464:
	.loc 6 3152 1
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
.LFE249:
	.size	mbedtls_ssl_get_verify_result, .-mbedtls_ssl_get_verify_result
	.section	.text.mbedtls_ssl_get_ciphersuite_id_from_ssl,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_ciphersuite_id_from_ssl
	.type	mbedtls_ssl_get_ciphersuite_id_from_ssl, @function
mbedtls_ssl_get_ciphersuite_id_from_ssl:
.LFB250:
	.loc 6 3155 1
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
	.loc 6 3156 8
	lw	a5,-20(s0)
	beq	a5,zero,.L467
	.loc 6 3156 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,56(a5)
	.loc 6 3156 20 discriminator 1
	bne	a5,zero,.L468
.L467:
	.loc 6 3157 16
	li	a5,0
	j	.L469
.L468:
	.loc 6 3160 15
	lw	a5,-20(s0)
	lw	a5,56(a5)
	.loc 6 3160 24
	lw	a5,8(a5)
.L469:
	.loc 6 3161 1
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
.LFE250:
	.size	mbedtls_ssl_get_ciphersuite_id_from_ssl, .-mbedtls_ssl_get_ciphersuite_id_from_ssl
	.section	.text.mbedtls_ssl_get_ciphersuite,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_ciphersuite
	.type	mbedtls_ssl_get_ciphersuite, @function
mbedtls_ssl_get_ciphersuite:
.LFB251:
	.loc 6 3164 1
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
	.loc 6 3165 8
	lw	a5,-20(s0)
	beq	a5,zero,.L471
	.loc 6 3165 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,56(a5)
	.loc 6 3165 20 discriminator 1
	bne	a5,zero,.L472
.L471:
	.loc 6 3166 15
	li	a5,0
	j	.L473
.L472:
	.loc 6 3169 48
	lw	a5,-20(s0)
	lw	a5,56(a5)
	.loc 6 3169 57
	lw	a5,8(a5)
	.loc 6 3169 12
	mv	a0,a5
	call	mbedtls_ssl_get_ciphersuite_name
	mv	a5,a0
.L473:
	.loc 6 3170 1
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
.LFE251:
	.size	mbedtls_ssl_get_ciphersuite, .-mbedtls_ssl_get_ciphersuite
	.section	.rodata
	.align	2
.LC62:
	.string	"DTLSv1.2"
	.align	2
.LC63:
	.string	"unknown (DTLS)"
	.align	2
.LC64:
	.string	"TLSv1.2"
	.align	2
.LC65:
	.string	"TLSv1.3"
	.align	2
.LC66:
	.string	"unknown"
	.section	.text.mbedtls_ssl_get_version,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_version
	.type	mbedtls_ssl_get_version, @function
mbedtls_ssl_get_version:
.LFB252:
	.loc 6 3173 1
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
	.loc 6 3175 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 6 3175 18
	lbu	a4,5(a5)
	.loc 6 3175 8
	li	a5,1
	bne	a4,a5,.L475
	.loc 6 3176 20
	lw	a5,-20(s0)
	lhu	a5,16(a5)
	mv	a4,a5
	.loc 6 3176 9
	li	a5,771
	bne	a4,a5,.L476
	.loc 6 3178 24
	lui	a5,%hi(.LC62)
	addi	a5,a5,%lo(.LC62)
	j	.L477
.L476:
	.loc 6 3180 24
	lui	a5,%hi(.LC63)
	addi	a5,a5,%lo(.LC63)
	j	.L477
.L475:
	.loc 6 3185 16
	lw	a5,-20(s0)
	lhu	a5,16(a5)
	.loc 6 3185 5
	li	a4,771
	beq	a5,a4,.L478
	li	a4,772
	beq	a5,a4,.L479
	j	.L481
.L478:
	.loc 6 3187 20
	lui	a5,%hi(.LC64)
	addi	a5,a5,%lo(.LC64)
	j	.L477
.L479:
	.loc 6 3189 20
	lui	a5,%hi(.LC65)
	addi	a5,a5,%lo(.LC65)
	j	.L477
.L481:
	.loc 6 3191 20
	lui	a5,%hi(.LC66)
	addi	a5,a5,%lo(.LC66)
.L477:
	.loc 6 3193 1
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
.LFE252:
	.size	mbedtls_ssl_get_version, .-mbedtls_ssl_get_version
	.section	.text.mbedtls_ssl_get_input_max_frag_len,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_input_max_frag_len
	.type	mbedtls_ssl_get_input_max_frag_len, @function
mbedtls_ssl_get_input_max_frag_len:
.LFB253:
	.loc 6 3222 1
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
	.loc 6 3223 12
	li	a5,16384
	sw	a5,-20(s0)
	.loc 6 3228 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 3228 18
	lbu	a5,4(a5)
	.loc 6 3228 8
	bne	a5,zero,.L483
	.loc 6 3229 12
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 6 3228 34 discriminator 1
	li	a5,5
	ble	a4,a5,.L483
	.loc 6 3230 42
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 3230 48
	lbu	a5,8(a5)
	.loc 6 3230 16
	mv	a0,a5
	call	ssl_mfl_code_to_length
	mv	a5,a0
	j	.L484
.L483:
	.loc 6 3235 12
	lw	a5,-36(s0)
	lw	a5,52(a5)
	.loc 6 3235 8
	beq	a5,zero,.L485
	.loc 6 3236 46
	lw	a5,-36(s0)
	lw	a5,52(a5)
	.loc 6 3236 59
	lbu	a5,0(a5)
	.loc 6 3236 20
	mv	a0,a5
	call	ssl_mfl_code_to_length
	sw	a0,-24(s0)
	.loc 6 3237 12
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L485
	.loc 6 3238 21
	lw	a5,-24(s0)
	sw	a5,-20(s0)
.L485:
	.loc 6 3243 12
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 6 3243 8
	beq	a5,zero,.L486
	.loc 6 3244 46
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 6 3244 65
	lbu	a5,0(a5)
	.loc 6 3244 20
	mv	a0,a5
	call	ssl_mfl_code_to_length
	sw	a0,-24(s0)
	.loc 6 3245 12
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L486
	.loc 6 3246 21
	lw	a5,-24(s0)
	sw	a5,-20(s0)
.L486:
	.loc 6 3250 12
	lw	a5,-20(s0)
.L484:
	.loc 6 3251 1
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
.LFE253:
	.size	mbedtls_ssl_get_input_max_frag_len, .-mbedtls_ssl_get_input_max_frag_len
	.section	.text.mbedtls_ssl_get_output_max_frag_len,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_output_max_frag_len
	.type	mbedtls_ssl_get_output_max_frag_len, @function
mbedtls_ssl_get_output_max_frag_len:
.LFB254:
	.loc 6 3254 1
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
	.loc 6 3260 41
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 3260 47
	lbu	a5,8(a5)
	.loc 6 3260 15
	mv	a0,a5
	call	ssl_mfl_code_to_length
	sw	a0,-20(s0)
	.loc 6 3263 12
	lw	a5,-36(s0)
	lw	a5,52(a5)
	.loc 6 3263 8
	beq	a5,zero,.L488
	.loc 6 3264 35
	lw	a5,-36(s0)
	lw	a5,52(a5)
	.loc 6 3264 48
	lbu	a5,0(a5)
	.loc 6 3264 9
	mv	a0,a5
	call	ssl_mfl_code_to_length
	mv	a4,a0
	.loc 6 3263 33 discriminator 1
	lw	a5,-20(s0)
	bleu	a5,a4,.L488
	.loc 6 3265 45
	lw	a5,-36(s0)
	lw	a5,52(a5)
	.loc 6 3265 58
	lbu	a5,0(a5)
	.loc 6 3265 19
	mv	a0,a5
	call	ssl_mfl_code_to_length
	sw	a0,-20(s0)
.L488:
	.loc 6 3269 12
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 6 3269 8
	beq	a5,zero,.L489
	.loc 6 3270 35
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 6 3270 54
	lbu	a5,0(a5)
	.loc 6 3270 9
	mv	a0,a5
	call	ssl_mfl_code_to_length
	mv	a4,a0
	.loc 6 3269 39 discriminator 1
	lw	a5,-20(s0)
	bleu	a5,a4,.L489
	.loc 6 3271 45
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 6 3271 64
	lbu	a5,0(a5)
	.loc 6 3271 19
	mv	a0,a5
	call	ssl_mfl_code_to_length
	sw	a0,-20(s0)
.L489:
	.loc 6 3274 12
	lw	a5,-20(s0)
	.loc 6 3275 1
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
.LFE254:
	.size	mbedtls_ssl_get_output_max_frag_len, .-mbedtls_ssl_get_output_max_frag_len
	.section	.text.mbedtls_ssl_get_current_mtu,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_current_mtu
	.type	mbedtls_ssl_get_current_mtu, @function
mbedtls_ssl_get_current_mtu:
.LFB255:
	.loc 6 3280 1
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
	.loc 6 3282 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 6 3282 18
	lbu	a5,4(a5)
	.loc 6 3282 8
	bne	a5,zero,.L492
	.loc 6 3283 13
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 6 3282 34 discriminator 1
	li	a5,1
	beq	a4,a5,.L493
	.loc 6 3284 13
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 6 3283 49
	li	a5,2
	bne	a4,a5,.L492
.L493:
	.loc 6 3285 16
	li	a5,0
	j	.L494
.L492:
	.loc 6 3288 12
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 3288 8
	beq	a5,zero,.L495
	.loc 6 3288 37 discriminator 1
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 3288 48 discriminator 1
	lhu	a5,706(a5)
	.loc 6 3288 31 discriminator 1
	bne	a5,zero,.L496
.L495:
	.loc 6 3289 19
	lw	a5,-20(s0)
	lhu	a5,244(a5)
	j	.L494
.L496:
	.loc 6 3292 12
	lw	a5,-20(s0)
	lhu	a5,244(a5)
	.loc 6 3292 8
	bne	a5,zero,.L497
	.loc 6 3293 19
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 3293 30
	lhu	a5,706(a5)
	j	.L494
.L497:
	.loc 6 3296 26
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 3296 37
	lhu	a4,706(a5)
	.loc 6 3296 15
	lw	a5,-20(s0)
	lhu	a5,244(a5)
	.loc 6 3297 21
	mv	a2,a5
	mv	a3,a4
	slli	a4,a3,16
	srli	a4,a4,16
	slli	a5,a2,16
	srli	a5,a5,16
	bleu	a4,a5,.L498
	mv	a3,a2
.L498:
	slli	a5,a3,16
	srli	a5,a5,16
.L494:
	.loc 6 3298 1
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
.LFE255:
	.size	mbedtls_ssl_get_current_mtu, .-mbedtls_ssl_get_current_mtu
	.section	.rodata
	.align	2
.LC67:
	.string	"MTU too low for record expansion"
	.section	.text.mbedtls_ssl_get_max_out_record_payload,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_max_out_record_payload
	.type	mbedtls_ssl_get_max_out_record_payload, @function
mbedtls_ssl_get_max_out_record_payload:
.LFB256:
	.loc 6 3302 1
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
	.loc 6 3303 12
	li	a5,16384
	sw	a5,-20(s0)
	.loc 6 3312 24
	lw	a0,-52(s0)
	call	mbedtls_ssl_get_output_max_frag_len
	sw	a0,-24(s0)
	.loc 6 3314 8
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bleu	a4,a5,.L500
	.loc 6 3315 17
	lw	a5,-24(s0)
	sw	a5,-20(s0)
.L500:
	.loc 6 3327 12
	lw	a5,-52(s0)
	lw	a5,72(a5)
	.loc 6 3327 8
	beq	a5,zero,.L501
	.loc 6 3328 12
	lw	a5,-52(s0)
	lw	a5,72(a5)
	.loc 6 3328 27
	lhu	a4,80(a5)
	.loc 6 3327 35 discriminator 1
	li	a5,772
	bne	a4,a5,.L501
	.loc 6 3339 35
	lw	a5,-20(s0)
	andi	a5,a5,-16
	.loc 6 3339 17
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L501:
	.loc 6 3344 9
	lw	a0,-52(s0)
	call	mbedtls_ssl_get_current_mtu
	mv	a5,a0
	.loc 6 3344 8 discriminator 1
	beq	a5,zero,.L502
.LBB79:
	.loc 6 3345 28
	lw	a0,-52(s0)
	call	mbedtls_ssl_get_current_mtu
	sw	a0,-28(s0)
	.loc 6 3346 25
	lw	a0,-52(s0)
	call	mbedtls_ssl_get_record_expansion
	sw	a0,-32(s0)
	.loc 6 3347 22
	lw	a5,-32(s0)
	sw	a5,-36(s0)
	.loc 6 3349 12
	lw	a5,-32(s0)
	bge	a5,zero,.L503
	.loc 6 3350 20
	lw	a5,-32(s0)
	j	.L504
.L503:
	.loc 6 3353 12
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bgtu	a4,a5,.L505
	.loc 6 3354 13
	lui	a5,%hi(.LC67)
	addi	a4,a5,%lo(.LC67)
	li	a5,4096
	addi	a3,a5,-742
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 3355 20
	li	a5,-28672
	addi	a5,a5,-128
	j	.L504
.L505:
	.loc 6 3358 27
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	.loc 6 3358 12
	lw	a4,-20(s0)
	bleu	a4,a5,.L502
	.loc 6 3359 21
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
.L502:
.LBE79:
	.loc 6 3370 12
	lw	a5,-20(s0)
.L504:
	.loc 6 3371 1
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
.LFE256:
	.size	mbedtls_ssl_get_max_out_record_payload, .-mbedtls_ssl_get_max_out_record_payload
	.section	.text.mbedtls_ssl_get_max_in_record_payload,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_max_in_record_payload
	.type	mbedtls_ssl_get_max_in_record_payload, @function
mbedtls_ssl_get_max_in_record_payload:
.LFB257:
	.loc 6 3374 1
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
	.loc 6 3375 12
	li	a5,16384
	sw	a5,-20(s0)
	.loc 6 3382 24
	lw	a0,-36(s0)
	call	mbedtls_ssl_get_input_max_frag_len
	sw	a0,-24(s0)
	.loc 6 3384 8
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bleu	a4,a5,.L507
	.loc 6 3385 17
	lw	a5,-24(s0)
	sw	a5,-20(s0)
.L507:
	.loc 6 3389 12
	lw	a5,-20(s0)
	.loc 6 3390 1
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
.LFE257:
	.size	mbedtls_ssl_get_max_in_record_payload, .-mbedtls_ssl_get_max_in_record_payload
	.section	.text.mbedtls_ssl_get_peer_cert,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_peer_cert
	.type	mbedtls_ssl_get_peer_cert, @function
mbedtls_ssl_get_peer_cert:
.LFB258:
	.loc 6 3394 1
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
	.loc 6 3395 8
	lw	a5,-20(s0)
	beq	a5,zero,.L510
	.loc 6 3395 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,56(a5)
	.loc 6 3395 20 discriminator 1
	bne	a5,zero,.L511
.L510:
	.loc 6 3396 15
	li	a5,0
	j	.L512
.L511:
	.loc 6 3400 15
	lw	a5,-20(s0)
	lw	a5,56(a5)
	.loc 6 3400 24
	lw	a5,96(a5)
.L512:
	.loc 6 3404 1
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
.LFE258:
	.size	mbedtls_ssl_get_peer_cert, .-mbedtls_ssl_get_peer_cert
	.section	.text.mbedtls_ssl_get_session,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_session
	.type	mbedtls_ssl_get_session, @function
mbedtls_ssl_get_session:
.LFB259:
	.loc 6 3410 1
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
	.loc 6 3413 8
	lw	a5,-36(s0)
	beq	a5,zero,.L514
	.loc 6 3413 20 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L514
	.loc 6 3415 12
	lw	a5,-36(s0)
	lw	a5,56(a5)
	.loc 6 3414 20
	beq	a5,zero,.L514
	.loc 6 3416 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 3416 18
	lbu	a5,4(a5)
	.loc 6 3415 29
	beq	a5,zero,.L515
.L514:
	.loc 6 3417 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L516
.L515:
	.loc 6 3431 12
	lw	a5,-36(s0)
	lw	a5,56(a5)
	.loc 6 3431 21
	lbu	a4,1(a5)
	.loc 6 3431 8
	li	a5,1
	bne	a4,a5,.L517
	.loc 6 3432 16
	li	a5,-28672
	addi	a5,a5,-128
	j	.L516
.L517:
	.loc 6 3435 44
	lw	a5,-36(s0)
	lw	a5,56(a5)
	.loc 6 3435 11
	mv	a1,a5
	lw	a0,-40(s0)
	call	mbedtls_ssl_session_copy
	sw	a0,-20(s0)
	.loc 6 3436 8
	lw	a5,-20(s0)
	beq	a5,zero,.L518
	.loc 6 3437 16
	lw	a5,-20(s0)
	j	.L516
.L518:
	.loc 6 3441 8
	lw	a5,-36(s0)
	lw	a5,56(a5)
	.loc 6 3441 28
	li	a4,1
	sb	a4,1(a5)
	.loc 6 3442 12
	li	a5,0
.L516:
	.loc 6 3443 1
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
.LFE259:
	.size	mbedtls_ssl_get_session, .-mbedtls_ssl_get_session
	.section	.text.ssl_tls12_session_save,"ax",@progbits
	.align	1
	.type	ssl_tls12_session_save, @function
ssl_tls12_session_save:
.LFB260:
	.loc 6 3455 1
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
	.loc 6 3456 20
	lw	a5,-72(s0)
	sw	a5,-20(s0)
	.loc 6 3457 12
	sw	zero,-24(s0)
	.loc 6 3485 10
	lw	a5,-24(s0)
	addi	a5,a5,85
	sw	a5,-24(s0)
	.loc 6 3490 8
	lw	a4,-24(s0)
	lw	a5,-76(s0)
	bgtu	a4,a5,.L520
	.loc 6 3491 36
	lw	a5,-68(s0)
	lw	a3,12(a5)
	.loc 6 3491 11
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 3491 17
	andi	a4,a3,0xff
	.loc 6 3491 14
	sb	a4,0(a5)
	.loc 6 3492 26
	lw	a5,-68(s0)
	addi	a5,a5,16
	.loc 6 3492 9
	li	a2,32
	mv	a1,a5
	lw	a0,-20(s0)
	call	memcpy
	.loc 6 3493 11
	lw	a5,-20(s0)
	addi	a5,a5,32
	sw	a5,-20(s0)
	.loc 6 3495 26
	lw	a5,-68(s0)
	addi	a5,a5,48
	.loc 6 3495 9
	li	a2,48
	mv	a1,a5
	lw	a0,-20(s0)
	call	memcpy
	.loc 6 3496 11
	lw	a5,-20(s0)
	addi	a5,a5,48
	sw	a5,-20(s0)
	.loc 6 3498 184 discriminator 2
	lw	a5,-68(s0)
	lw	a5,100(a5)
	.loc 6 3498 147 discriminator 2
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	mv	a4,a5
	lw	a5,-20(s0)
	sw	a5,-32(s0)
	sw	a4,-36(s0)
.LBB80:
.LBB81:
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/alignment.h"
	.loc 7 200 33
	lw	a5,-32(s0)
	sw	a5,-40(s0)
	.loc 7 201 12
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-36(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-36(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-36(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 7 205 1
	nop
.LBE81:
.LBE80:
	.loc 6 3499 11
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
.L520:
	.loc 6 3507 16
	lw	a5,-68(s0)
	lw	a5,96(a5)
	.loc 6 3507 8
	bne	a5,zero,.L521
	.loc 6 3508 18
	sw	zero,-28(s0)
	j	.L522
.L521:
	.loc 6 3510 27
	lw	a5,-68(s0)
	lw	a5,96(a5)
	.loc 6 3510 18
	lw	a5,8(a5)
	sw	a5,-28(s0)
.L522:
	.loc 6 3513 10
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	addi	a5,a5,3
	sw	a5,-24(s0)
	.loc 6 3515 8
	lw	a4,-24(s0)
	lw	a5,-76(s0)
	bgtu	a4,a5,.L523
	.loc 6 3516 40
	lw	a5,-28(s0)
	srli	a3,a5,16
	.loc 6 3516 11
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 3516 17
	andi	a4,a3,0xff
	.loc 6 3516 14
	sb	a4,0(a5)
	.loc 6 3517 40
	lw	a5,-28(s0)
	srli	a3,a5,8
	.loc 6 3517 11
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 3517 17
	andi	a4,a3,0xff
	.loc 6 3517 14
	sb	a4,0(a5)
	.loc 6 3518 11
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 3518 17
	lw	a4,-28(s0)
	andi	a4,a4,0xff
	.loc 6 3518 14
	sb	a4,0(a5)
	.loc 6 3520 20
	lw	a5,-68(s0)
	lw	a5,96(a5)
	.loc 6 3520 12
	beq	a5,zero,.L523
	.loc 6 3521 30
	lw	a5,-68(s0)
	lw	a5,96(a5)
	.loc 6 3521 46
	lw	a5,12(a5)
	.loc 6 3521 13
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	memcpy
	.loc 6 3522 15
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L523:
	.loc 6 3550 16
	lw	a5,-68(s0)
	lbu	a5,2(a5)
	.loc 6 3550 8
	bne	a5,zero,.L524
	.loc 6 3551 28
	lw	a5,-68(s0)
	lw	a4,108(a5)
	.loc 6 3551 14
	lw	a5,-24(s0)
	add	a5,a4,a5
	addi	a5,a5,7
	sw	a5,-24(s0)
	.loc 6 3553 12
	lw	a4,-24(s0)
	lw	a5,-76(s0)
	bgtu	a4,a5,.L524
	.loc 6 3554 41
	lw	a5,-68(s0)
	lw	a5,108(a5)
	.loc 6 3554 55
	srli	a3,a5,16
	.loc 6 3554 15
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 3554 21
	andi	a4,a3,0xff
	.loc 6 3554 18
	sb	a4,0(a5)
	.loc 6 3555 41
	lw	a5,-68(s0)
	lw	a5,108(a5)
	.loc 6 3555 55
	srli	a3,a5,8
	.loc 6 3555 15
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 3555 21
	andi	a4,a3,0xff
	.loc 6 3555 18
	sb	a4,0(a5)
	.loc 6 3556 40
	lw	a5,-68(s0)
	lw	a3,108(a5)
	.loc 6 3556 15
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 3556 21
	andi	a4,a3,0xff
	.loc 6 3556 18
	sb	a4,0(a5)
	.loc 6 3558 24
	lw	a5,-68(s0)
	lw	a5,104(a5)
	.loc 6 3558 16
	beq	a5,zero,.L525
	.loc 6 3559 34
	lw	a5,-68(s0)
	lw	a4,104(a5)
	.loc 6 3559 51
	lw	a5,-68(s0)
	lw	a5,108(a5)
	.loc 6 3559 17
	mv	a2,a5
	mv	a1,a4
	lw	a0,-20(s0)
	call	memcpy
	.loc 6 3560 29
	lw	a5,-68(s0)
	lw	a5,108(a5)
	.loc 6 3560 19
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L525:
	.loc 6 3563 190 discriminator 2
	lw	a5,-68(s0)
	lw	a5,112(a5)
	.loc 6 3563 153 discriminator 2
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	mv	a4,a5
	lw	a5,-20(s0)
	sw	a5,-44(s0)
	sw	a4,-48(s0)
.LBB82:
.LBB83:
	.loc 7 200 33
	lw	a5,-44(s0)
	sw	a5,-52(s0)
	.loc 7 201 12
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-48(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-48(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-48(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 7 205 1
	nop
.LBE83:
.LBE82:
	.loc 6 3564 15
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
.L524:
	.loc 6 3584 10
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 6 3586 8
	lw	a4,-24(s0)
	lw	a5,-76(s0)
	bgtu	a4,a5,.L526
	.loc 6 3587 11
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 3587 23
	lw	a4,-68(s0)
	lbu	a4,0(a4)
	.loc 6 3587 14
	sb	a4,0(a5)
.L526:
	.loc 6 3592 10
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 6 3594 8
	lw	a4,-24(s0)
	lw	a5,-76(s0)
	bgtu	a4,a5,.L527
	.loc 6 3595 36
	lw	a5,-68(s0)
	lw	a3,116(a5)
	.loc 6 3595 11
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 3595 17
	andi	a4,a3,0xff
	.loc 6 3595 14
	sb	a4,0(a5)
.L527:
	.loc 6 3599 12
	lw	a5,-24(s0)
	.loc 6 3600 1
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
.LFE260:
	.size	ssl_tls12_session_save, .-ssl_tls12_session_save
	.section	.text.ssl_tls12_session_load,"ax",@progbits
	.align	1
	.type	ssl_tls12_session_load, @function
ssl_tls12_session_load:
.LFB261:
	.loc 6 3606 1
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
	.loc 6 3616 26
	lw	a5,-72(s0)
	sw	a5,-20(s0)
	.loc 6 3617 33
	lw	a4,-72(s0)
	lw	a5,-76(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 6 3636 41
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 6 3636 27
	mv	a4,a5
	.loc 6 3636 8
	li	a5,84
	bgtu	a4,a5,.L530
	.loc 6 3637 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L531
.L530:
	.loc 6 3640 25
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 3640 23
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 6 3640 21
	lw	a5,-68(s0)
	sw	a4,12(a5)
	.loc 6 3641 19
	lw	a5,-68(s0)
	addi	a5,a5,16
	.loc 6 3641 5
	li	a2,32
	lw	a1,-20(s0)
	mv	a0,a5
	call	memcpy
	.loc 6 3642 7
	lw	a5,-20(s0)
	addi	a5,a5,32
	sw	a5,-20(s0)
	.loc 6 3644 19
	lw	a5,-68(s0)
	addi	a5,a5,48
	.loc 6 3644 5
	li	a2,48
	lw	a1,-20(s0)
	mv	a0,a5
	call	memcpy
	.loc 6 3645 7
	lw	a5,-20(s0)
	addi	a5,a5,48
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sw	a5,-44(s0)
.LBB84:
.LBB85:
	.loc 7 174 33
	lw	a5,-44(s0)
	sw	a5,-40(s0)
	.loc 7 175 7
	lw	a5,-40(s0)
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
	.loc 7 179 12
	lw	a5,-36(s0)
.LBE85:
.LBE84:
	.loc 6 3647 77 discriminator 1
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	mv	a4,a5
	.loc 6 3647 28 discriminator 2
	lw	a5,-68(s0)
	sw	a4,100(a5)
	.loc 6 3648 7
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 6 3654 24
	lw	a5,-68(s0)
	sw	zero,96(a5)
	.loc 6 3660 21
	lw	a5,-68(s0)
	sw	zero,104(a5)
	.loc 6 3669 27
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 6 3669 13
	mv	a4,a5
	.loc 6 3669 8
	li	a5,2
	bgtu	a4,a5,.L533
	.loc 6 3670 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L531
.L533:
	.loc 6 3673 33
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 6 3673 39
	slli	a4,a5,16
	.loc 6 3673 63
	lw	a5,-20(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 6 3673 73
	slli	a5,a5,8
	.loc 6 3673 46
	or	a5,a4,a5
	.loc 6 3673 96
	lw	a4,-20(s0)
	addi	a4,a4,2
	lbu	a4,0(a4)
	.loc 6 3673 14
	or	a5,a5,a4
	sw	a5,-28(s0)
	.loc 6 3674 7
	lw	a5,-20(s0)
	addi	a5,a5,3
	sw	a5,-20(s0)
	.loc 6 3676 8
	lw	a5,-28(s0)
	beq	a5,zero,.L534
.LBB86:
	.loc 6 3677 13
	li	a5,-110
	sw	a5,-32(s0)
	.loc 6 3679 38
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 6 3679 24
	mv	a4,a5
	.loc 6 3679 12
	lw	a5,-28(s0)
	bleu	a5,a4,.L535
	.loc 6 3680 20
	li	a5,-28672
	addi	a5,a5,-256
	j	.L531
.L535:
	.loc 6 3683 30
	li	a1,404
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 6 3683 28 discriminator 1
	lw	a5,-68(s0)
	sw	a4,96(a5)
	.loc 6 3685 20
	lw	a5,-68(s0)
	lw	a5,96(a5)
	.loc 6 3685 12
	bne	a5,zero,.L536
	.loc 6 3686 20
	li	a5,-32768
	addi	a5,a5,256
	j	.L531
.L536:
	.loc 6 3689 9
	lw	a5,-68(s0)
	lw	a5,96(a5)
	mv	a0,a5
	call	mbedtls_x509_crt_init
	.loc 6 3691 20
	lw	a5,-68(s0)
	lw	a5,96(a5)
	lw	a2,-28(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	mbedtls_x509_crt_parse_der
	sw	a0,-32(s0)
	.loc 6 3691 12 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L537
	.loc 6 3693 13
	lw	a5,-68(s0)
	lw	a5,96(a5)
	mv	a0,a5
	call	mbedtls_x509_crt_free
	.loc 6 3694 25
	lw	a5,-68(s0)
	lw	a5,96(a5)
	.loc 6 3694 13
	mv	a0,a5
	call	free
	.loc 6 3695 32
	lw	a5,-68(s0)
	sw	zero,96(a5)
	.loc 6 3696 20
	lw	a5,-32(s0)
	j	.L531
.L537:
	.loc 6 3699 11
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L534:
.LBE86:
	.loc 6 3742 16
	lw	a5,-68(s0)
	lbu	a5,2(a5)
	.loc 6 3742 8
	bne	a5,zero,.L538
	.loc 6 3743 31
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 6 3743 17
	mv	a4,a5
	.loc 6 3743 12
	li	a5,2
	bgtu	a4,a5,.L539
	.loc 6 3744 20
	li	a5,-28672
	addi	a5,a5,-256
	j	.L531
.L539:
	.loc 6 3747 48
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 6 3747 54
	slli	a4,a5,16
	.loc 6 3747 78
	lw	a5,-20(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 6 3747 88
	slli	a5,a5,8
	.loc 6 3747 61
	or	a5,a4,a5
	.loc 6 3747 111
	lw	a4,-20(s0)
	addi	a4,a4,2
	lbu	a4,0(a4)
	.loc 6 3747 94
	or	a4,a5,a4
	.loc 6 3747 29
	lw	a5,-68(s0)
	sw	a4,108(a5)
	.loc 6 3748 11
	lw	a5,-20(s0)
	addi	a5,a5,3
	sw	a5,-20(s0)
	.loc 6 3750 20
	lw	a5,-68(s0)
	lw	a5,108(a5)
	.loc 6 3750 12
	beq	a5,zero,.L540
	.loc 6 3751 24
	lw	a5,-68(s0)
	lw	a5,108(a5)
	.loc 6 3751 53
	lw	a3,-24(s0)
	lw	a4,-20(s0)
	sub	a4,a3,a4
	.loc 6 3751 16
	bleu	a5,a4,.L541
	.loc 6 3752 24
	li	a5,-28672
	addi	a5,a5,-256
	j	.L531
.L541:
	.loc 6 3755 31
	lw	a5,-68(s0)
	lw	a5,108(a5)
	mv	a1,a5
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 6 3755 29 discriminator 1
	lw	a5,-68(s0)
	sw	a4,104(a5)
	.loc 6 3756 24
	lw	a5,-68(s0)
	lw	a5,104(a5)
	.loc 6 3756 16
	bne	a5,zero,.L542
	.loc 6 3757 24
	li	a5,-32768
	addi	a5,a5,256
	j	.L531
.L542:
	.loc 6 3760 27
	lw	a5,-68(s0)
	lw	a4,104(a5)
	.loc 6 3760 13
	lw	a5,-68(s0)
	lw	a5,108(a5)
	mv	a2,a5
	lw	a1,-20(s0)
	mv	a0,a4
	call	memcpy
	.loc 6 3761 25
	lw	a5,-68(s0)
	lw	a5,108(a5)
	.loc 6 3761 15
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L540:
	.loc 6 3764 31
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 6 3764 17
	mv	a4,a5
	.loc 6 3764 12
	li	a5,3
	bgtu	a4,a5,.L543
	.loc 6 3765 20
	li	a5,-28672
	addi	a5,a5,-256
	j	.L531
.L543:
	lw	a5,-20(s0)
	sw	a5,-48(s0)
.LBB87:
.LBB88:
	.loc 7 174 33
	lw	a5,-48(s0)
	sw	a5,-52(s0)
	.loc 7 175 7
	lw	a5,-52(s0)
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
	sw	a5,-56(s0)
	.loc 7 179 12
	lw	a5,-56(s0)
.LBE88:
.LBE87:
	.loc 6 3768 83 discriminator 1
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	mv	a4,a5
	.loc 6 3768 34 discriminator 2
	lw	a5,-68(s0)
	sw	a4,112(a5)
	.loc 6 3769 11
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
.L538:
	.loc 6 3787 8
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bne	a4,a5,.L545
	.loc 6 3788 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L531
.L545:
	.loc 6 3791 27
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 3791 25
	lbu	a4,0(a5)
	.loc 6 3791 23
	lw	a5,-68(s0)
	sb	a4,0(a5)
	.loc 6 3795 8
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bne	a4,a5,.L546
	.loc 6 3796 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L531
.L546:
	.loc 6 3799 35
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 3799 33
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 6 3799 31
	lw	a5,-68(s0)
	sw	a4,116(a5)
	.loc 6 3803 8
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	beq	a4,a5,.L547
	.loc 6 3804 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L531
.L547:
	.loc 6 3807 12
	li	a5,0
.L531:
	.loc 6 3808 1
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
.LFE261:
	.size	ssl_tls12_session_load, .-ssl_tls12_session_load
	.section	.srodata.ssl_serialized_session_header,"a"
	.align	2
	.type	ssl_serialized_session_header, @object
	.size	ssl_serialized_session_header, 5
ssl_serialized_session_header:
	.base64	"AwYFAP4="
	.section	.text.ssl_session_save,"ax",@progbits
	.align	1
	.type	ssl_session_save, @function
ssl_session_save:
.LFB262:
	.loc 6 4358 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	mv	a5,a1
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sb	a5,-53(s0)
	.loc 6 4359 20
	lw	a5,-60(s0)
	sw	a5,-20(s0)
	.loc 6 4360 12
	sw	zero,-24(s0)
	.loc 6 4366 8
	lw	a5,-52(s0)
	bne	a5,zero,.L549
	.loc 6 4367 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L550
.L549:
	.loc 6 4370 8
	lbu	a5,-53(s0)
	bne	a5,zero,.L551
	.loc 6 4374 14
	lw	a5,-24(s0)
	addi	a5,a5,5
	sw	a5,-24(s0)
	.loc 6 4376 12
	lw	a4,-24(s0)
	lw	a5,-64(s0)
	bgtu	a4,a5,.L551
	.loc 6 4377 13
	li	a2,5
	lui	a5,%hi(ssl_serialized_session_header)
	addi	a1,a5,%lo(ssl_serialized_session_header)
	lw	a0,-20(s0)
	call	memcpy
	.loc 6 4379 15
	lw	a5,-20(s0)
	addi	a5,a5,5
	sw	a5,-20(s0)
.L551:
	.loc 6 4386 10
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 6 4389 8
	lw	a4,-24(s0)
	lw	a5,-64(s0)
	bgtu	a4,a5,.L552
	.loc 6 4390 36
	lw	a5,-52(s0)
	lhu	a3,4(a5)
	.loc 6 4390 11
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 4390 17
	andi	a4,a3,0xff
	.loc 6 4390 14
	sb	a4,0(a5)
	.loc 6 4391 11
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 4391 23
	lw	a4,-52(s0)
	lbu	a4,2(a4)
	.loc 6 4391 14
	sb	a4,0(a5)
	.loc 6 4392 182 discriminator 2
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 6 4392 145 discriminator 2
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a4,-20(s0)
	sw	a4,-32(s0)
	sh	a5,-34(s0)
.LBB89:
.LBB90:
	.loc 7 148 33
	lw	a5,-32(s0)
	sw	a5,-40(s0)
	.loc 7 149 12
	lw	a5,-40(s0)
	lhu	a4,-34(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-34(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 7 153 1
	nop
.LBE90:
.LBE89:
	.loc 6 4393 11
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
.L552:
	.loc 6 4397 56
	lw	a4,-64(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L553
	.loc 6 4397 19 discriminator 1
	lw	a4,-64(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	j	.L554
.L553:
	.loc 6 4397 19 is_stmt 0 discriminator 2
	sw	zero,-28(s0)
.L554:
	.loc 6 4398 20 is_stmt 1
	lw	a5,-52(s0)
	lhu	a5,4(a5)
	mv	a4,a5
	.loc 6 4398 5
	li	a5,771
	bne	a4,a5,.L555
	.loc 6 4401 21
	lw	a2,-28(s0)
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	ssl_tls12_session_save
	mv	a4,a0
	.loc 6 4401 18 discriminator 1
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 6 4402 13
	nop
	.loc 6 4419 11
	lw	a5,-68(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 6 4420 8
	lw	a4,-24(s0)
	lw	a5,-64(s0)
	bleu	a4,a5,.L557
	j	.L558
.L555:
	.loc 6 4416 20
	li	a5,-28672
	addi	a5,a5,-128
	j	.L550
.L558:
	.loc 6 4421 16
	li	a5,-28672
	addi	a5,a5,1536
	j	.L550
.L557:
	.loc 6 4424 12
	li	a5,0
.L550:
	.loc 6 4425 1
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
.LFE262:
	.size	ssl_session_save, .-ssl_session_save
	.section	.text.mbedtls_ssl_session_save,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_session_save
	.type	mbedtls_ssl_session_save, @function
mbedtls_ssl_session_save:
.LFB263:
	.loc 6 4434 1
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
	.loc 6 4435 12
	lw	a4,-32(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	li	a1,0
	lw	a0,-20(s0)
	call	ssl_session_save
	mv	a5,a0
	.loc 6 4436 1
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
.LFE263:
	.size	mbedtls_ssl_session_save, .-mbedtls_ssl_session_save
	.section	.text.ssl_session_load,"ax",@progbits
	.align	1
	.type	ssl_session_load, @function
ssl_session_load:
.LFB264:
	.loc 6 4449 1
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
	mv	a5,a1
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sb	a5,-53(s0)
	.loc 6 4450 26
	lw	a5,-60(s0)
	sw	a5,-20(s0)
	.loc 6 4451 33
	lw	a4,-60(s0)
	lw	a5,-64(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 6 4455 8
	lw	a5,-52(s0)
	bne	a5,zero,.L562
	.loc 6 4456 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L563
.L562:
	.loc 6 4459 8
	lbu	a5,-53(s0)
	bne	a5,zero,.L564
	.loc 6 4464 27
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 6 4464 13
	mv	a4,a5
	.loc 6 4464 12
	li	a5,4
	bgtu	a4,a5,.L565
	.loc 6 4465 20
	li	a5,-28672
	addi	a5,a5,-256
	j	.L563
.L565:
	.loc 6 4468 13
	li	a2,5
	lui	a5,%hi(ssl_serialized_session_header)
	addi	a1,a5,%lo(ssl_serialized_session_header)
	lw	a0,-20(s0)
	call	memcmp
	mv	a5,a0
	.loc 6 4468 12 discriminator 1
	beq	a5,zero,.L566
	.loc 6 4470 20
	li	a5,-24576
	addi	a5,a5,256
	j	.L563
.L566:
	.loc 6 4472 11
	lw	a5,-20(s0)
	addi	a5,a5,5
	sw	a5,-20(s0)
.L564:
	.loc 6 4478 27
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 6 4478 13
	mv	a4,a5
	.loc 6 4478 8
	li	a5,3
	bgtu	a4,a5,.L567
	.loc 6 4479 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L563
.L567:
	.loc 6 4481 71
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 4481 69
	lbu	a5,0(a5)
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 6 4481 67
	ori	a5,a5,768
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 6 4481 28
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 6 4481 26
	lw	a5,-52(s0)
	sh	a4,4(a5)
	.loc 6 4482 27
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 4482 25
	lbu	a4,0(a5)
	.loc 6 4482 23
	lw	a5,-52(s0)
	sb	a4,2(a5)
	lw	a5,-20(s0)
	sw	a5,-32(s0)
.LBB91:
.LBB92:
	.loc 7 122 33
	lw	a5,-32(s0)
	sw	a5,-36(s0)
	.loc 7 123 7
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-38(s0)
	.loc 7 127 12
	lhu	a5,-38(s0)
.LBE92:
.LBE91:
	.loc 6 4483 77 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 6 4483 75 discriminator 2
	mv	a4,a5
	.loc 6 4483 26 discriminator 2
	lw	a5,-52(s0)
	sw	a4,8(a5)
	.loc 6 4484 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 6 4487 35
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 6 4487 19
	sw	a5,-28(s0)
	.loc 6 4488 20
	lw	a5,-52(s0)
	lhu	a5,4(a5)
	mv	a4,a5
	.loc 6 4488 5
	li	a5,771
	bne	a4,a5,.L569
	.loc 6 4491 20
	lw	a2,-28(s0)
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	ssl_tls12_session_load
	mv	a5,a0
	j	.L563
.L569:
	.loc 6 4500 20
	li	a5,-28672
	addi	a5,a5,-256
.L563:
	.loc 6 4502 1
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
.LFE264:
	.size	ssl_session_load, .-ssl_session_load
	.section	.text.mbedtls_ssl_session_load,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_session_load
	.type	mbedtls_ssl_session_load, @function
mbedtls_ssl_session_load:
.LFB265:
	.loc 6 4510 1
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
	.loc 6 4511 15
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	li	a1,0
	lw	a0,-36(s0)
	call	ssl_session_load
	sw	a0,-20(s0)
	.loc 6 4513 8
	lw	a5,-20(s0)
	beq	a5,zero,.L571
	.loc 6 4514 9
	lw	a0,-36(s0)
	call	mbedtls_ssl_session_free
.L571:
	.loc 6 4517 12
	lw	a5,-20(s0)
	.loc 6 4518 1
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
.LFE265:
	.size	mbedtls_ssl_session_load, .-mbedtls_ssl_session_load
	.section	.text.ssl_prepare_handshake_step,"ax",@progbits
	.align	1
	.type	ssl_prepare_handshake_step, @function
ssl_prepare_handshake_step:
.LFB266:
	.loc 6 4525 1
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
	.loc 6 4526 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 6 4543 16
	lw	a0,-36(s0)
	call	mbedtls_ssl_flush_output
	sw	a0,-20(s0)
	.loc 6 4543 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L574
	.loc 6 4544 16
	lw	a5,-20(s0)
	j	.L575
.L574:
	.loc 6 4548 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 4548 18
	lbu	a4,5(a5)
	.loc 6 4548 8
	li	a5,1
	bne	a4,a5,.L576
	.loc 6 4549 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 4549 23
	lbu	a4,10(a5)
	.loc 6 4548 35 discriminator 1
	li	a5,1
	bne	a4,a5,.L576
	.loc 6 4550 20
	lw	a0,-36(s0)
	call	mbedtls_ssl_flight_transmit
	sw	a0,-20(s0)
	.loc 6 4550 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L576
	.loc 6 4551 20
	lw	a5,-20(s0)
	j	.L575
.L576:
	.loc 6 4556 12
	lw	a5,-20(s0)
.L575:
	.loc 6 4557 1
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
.LFE266:
	.size	ssl_prepare_handshake_step, .-ssl_prepare_handshake_step
	.section	.rodata
	.align	2
.LC68:
	.string	"client state: %s"
	.section	.text.mbedtls_ssl_handshake_step,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_handshake_step
	.type	mbedtls_ssl_handshake_step, @function
mbedtls_ssl_handshake_step:
.LFB267:
	.loc 6 4560 1
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
	.loc 6 4561 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 6 4563 8
	lw	a5,-36(s0)
	beq	a5,zero,.L578
	.loc 6 4564 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 4563 53 discriminator 1
	beq	a5,zero,.L578
	.loc 6 4565 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 4564 53
	beq	a5,zero,.L578
	.loc 6 4566 12
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 6 4565 53
	li	a5,27
	bne	a4,a5,.L579
.L578:
	.loc 6 4567 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L580
.L579:
	.loc 6 4570 11
	lw	a0,-36(s0)
	call	ssl_prepare_handshake_step
	sw	a0,-20(s0)
	.loc 6 4571 8
	lw	a5,-20(s0)
	beq	a5,zero,.L581
	.loc 6 4572 16
	lw	a5,-20(s0)
	j	.L580
.L581:
	.loc 6 4575 11
	lw	a0,-36(s0)
	call	mbedtls_ssl_handle_pending_alert
	sw	a0,-20(s0)
	.loc 6 4576 8
	lw	a5,-20(s0)
	bne	a5,zero,.L590
	.loc 6 4582 9
	li	a5,-28672
	addi	a5,a5,-256
	sw	a5,-20(s0)
	.loc 6 4585 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 4585 18
	lbu	a5,4(a5)
	.loc 6 4585 8
	bne	a5,zero,.L584
	.loc 6 4586 200
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 6 4586 9
	andi	a5,a5,0xff
	mv	a0,a5
	call	mbedtls_ssl_states_str
	mv	a5,a0
	.loc 6 4586 9 is_stmt 0 discriminator 1
	lui	a4,%hi(.LC68)
	addi	a4,a4,%lo(.LC68)
	li	a3,4096
	addi	a3,a3,490
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 4589 20 is_stmt 1
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 6 4589 9
	beq	a5,zero,.L585
	li	a4,1
	beq	a5,a4,.L586
	j	.L589
.L585:
	.loc 6 4591 17
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_set_state
	.loc 6 4592 21
	sw	zero,-20(s0)
	.loc 6 4593 17
	j	.L584
.L586:
	.loc 6 4596 23
	lw	a0,-36(s0)
	call	mbedtls_ssl_write_client_hello
	sw	a0,-20(s0)
	.loc 6 4597 17
	j	.L584
.L589:
	.loc 6 4607 23
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_client_step
	sw	a0,-20(s0)
.L584:
	.loc 6 4616 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 4616 18
	lbu	a4,4(a5)
	.loc 6 4616 8
	li	a5,1
	bne	a4,a5,.L588
	.loc 6 4624 15
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_server_step
	sw	a0,-20(s0)
.L588:
	.loc 6 4631 8
	lw	a5,-20(s0)
	beq	a5,zero,.L591
	.loc 6 4635 16
	lw	a5,-36(s0)
	lbu	a5,180(a5)
	.loc 6 4635 12
	beq	a5,zero,.L591
	.loc 6 4636 19
	lw	a0,-36(s0)
	call	mbedtls_ssl_handle_pending_alert
	sw	a0,-20(s0)
	.loc 6 4637 13
	j	.L583
.L590:
	.loc 6 4577 9
	nop
	j	.L583
.L591:
	.loc 6 4641 1
	nop
.L583:
	.loc 6 4642 12
	lw	a5,-20(s0)
.L580:
	.loc 6 4643 1
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
.LFE267:
	.size	mbedtls_ssl_handshake_step, .-mbedtls_ssl_handshake_step
	.section	.rodata
	.align	2
.LC69:
	.string	"You must use mbedtls_ssl_set_timer_cb() for DTLS"
	.align	2
.LC70:
	.string	"=> handshake"
	.align	2
.LC71:
	.string	"<= handshake"
	.section	.text.mbedtls_ssl_handshake,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_handshake
	.type	mbedtls_ssl_handshake, @function
mbedtls_ssl_handshake:
.LFB268:
	.loc 6 4649 1
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
	.loc 6 4650 9
	sw	zero,-20(s0)
	.loc 6 4654 8
	lw	a5,-36(s0)
	beq	a5,zero,.L593
	.loc 6 4654 26 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 4654 20 discriminator 1
	bne	a5,zero,.L594
.L593:
	.loc 6 4655 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L595
.L594:
	.loc 6 4659 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 4659 18
	lbu	a4,5(a5)
	.loc 6 4659 8
	li	a5,1
	bne	a4,a5,.L596
	.loc 6 4660 13
	lw	a5,-36(s0)
	lw	a5,88(a5)
	.loc 6 4659 35 discriminator 1
	beq	a5,zero,.L597
	.loc 6 4660 40
	lw	a5,-36(s0)
	lw	a5,92(a5)
	.loc 6 4660 34
	bne	a5,zero,.L596
.L597:
	.loc 6 4661 9
	lui	a5,%hi(.LC69)
	addi	a4,a5,%lo(.LC69)
	li	a5,4096
	addi	a3,a5,565
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 4663 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L595
.L596:
	.loc 6 4667 5
	lui	a5,%hi(.LC70)
	addi	a4,a5,%lo(.LC70)
	li	a5,4096
	addi	a3,a5,571
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 4670 11
	j	.L598
.L600:
	.loc 6 4671 15
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_step
	sw	a0,-20(s0)
	.loc 6 4673 12
	lw	a5,-20(s0)
	bne	a5,zero,.L601
.L598:
	.loc 6 4670 15
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 6 4670 23
	li	a5,27
	bne	a4,a5,.L600
	j	.L599
.L601:
	.loc 6 4674 13
	nop
.L599:
	.loc 6 4678 5
	lui	a5,%hi(.LC71)
	addi	a4,a5,%lo(.LC71)
	li	a5,4096
	addi	a3,a5,582
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 4680 12
	lw	a5,-20(s0)
.L595:
	.loc 6 4681 1
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
.LFE268:
	.size	mbedtls_ssl_handshake, .-mbedtls_ssl_handshake
	.section	.rodata
	.align	2
.LC72:
	.string	"=> write hello request"
	.align	2
.LC73:
	.string	"mbedtls_ssl_write_handshake_msg"
	.align	2
.LC74:
	.string	"<= write hello request"
	.section	.text.ssl_write_hello_request,"ax",@progbits
	.align	1
	.type	ssl_write_hello_request, @function
ssl_write_hello_request:
.LFB269:
	.loc 6 4690 1
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
	.loc 6 4691 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 6 4693 5
	lui	a5,%hi(.LC72)
	addi	a4,a5,%lo(.LC72)
	li	a5,4096
	addi	a3,a5,597
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 4695 21
	lw	a5,-36(s0)
	li	a4,4
	sw	a4,224(a5)
	.loc 6 4696 22
	lw	a5,-36(s0)
	li	a4,22
	sw	a4,220(a5)
	.loc 6 4697 8
	lw	a5,-36(s0)
	lw	a5,216(a5)
	.loc 6 4697 21
	sb	zero,0(a5)
	.loc 6 4699 16
	lw	a0,-36(s0)
	call	mbedtls_ssl_write_handshake_msg
	sw	a0,-20(s0)
	.loc 6 4699 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L603
	.loc 6 4700 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC73)
	addi	a4,a4,%lo(.LC73)
	li	a3,4096
	addi	a3,a3,604
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 6 4701 16
	lw	a5,-20(s0)
	j	.L604
.L603:
	.loc 6 4704 5
	lui	a5,%hi(.LC74)
	addi	a4,a5,%lo(.LC74)
	li	a5,4096
	addi	a3,a5,608
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 4706 12
	li	a5,0
.L604:
	.loc 6 4707 1
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
.LFE269:
	.size	ssl_write_hello_request, .-ssl_write_hello_request
	.section	.rodata
	.align	2
.LC75:
	.string	"=> renegotiate"
	.align	2
.LC76:
	.string	"mbedtls_ssl_handshake"
	.align	2
.LC77:
	.string	"<= renegotiate"
	.section	.text.mbedtls_ssl_start_renegotiation,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_start_renegotiation
	.type	mbedtls_ssl_start_renegotiation, @function
mbedtls_ssl_start_renegotiation:
.LFB270:
	.loc 6 4720 1
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
	.loc 6 4721 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 6 4723 5
	lui	a5,%hi(.LC75)
	addi	a4,a5,%lo(.LC75)
	li	a5,4096
	addi	a3,a5,627
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 4725 16
	lw	a0,-36(s0)
	call	ssl_handshake_init
	sw	a0,-20(s0)
	.loc 6 4725 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L606
	.loc 6 4726 16
	lw	a5,-20(s0)
	j	.L607
.L606:
	.loc 6 4732 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 4732 18
	lbu	a4,5(a5)
	.loc 6 4732 8
	li	a5,1
	bne	a4,a5,.L608
	.loc 6 4733 12
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 6 4732 35 discriminator 1
	li	a5,3
	bne	a4,a5,.L608
	.loc 6 4734 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 4734 22
	lbu	a4,4(a5)
	.loc 6 4734 12
	li	a5,1
	bne	a4,a5,.L609
	.loc 6 4735 16
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 4735 41
	li	a4,1
	sw	a4,632(a5)
	j	.L608
.L609:
	.loc 6 4737 16
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 4737 40
	li	a4,1
	sw	a4,636(a5)
.L608:
	.loc 6 4742 5
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_set_state
	.loc 6 4743 24
	lw	a5,-36(s0)
	li	a4,1
	sw	a4,8(a5)
	.loc 6 4745 16
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake
	sw	a0,-20(s0)
	.loc 6 4745 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L610
	.loc 6 4746 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC76)
	addi	a4,a4,%lo(.LC76)
	li	a3,4096
	addi	a3,a3,650
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 6 4747 16
	lw	a5,-20(s0)
	j	.L607
.L610:
	.loc 6 4750 5
	lui	a5,%hi(.LC77)
	addi	a4,a5,%lo(.LC77)
	li	a5,4096
	addi	a3,a5,654
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 4752 12
	li	a5,0
.L607:
	.loc 6 4753 1
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
.LFE270:
	.size	mbedtls_ssl_start_renegotiation, .-mbedtls_ssl_start_renegotiation
	.section	.rodata
	.align	2
.LC78:
	.string	"mbedtls_ssl_start_renegotiation"
	.section	.text.mbedtls_ssl_renegotiate,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_renegotiate
	.type	mbedtls_ssl_renegotiate, @function
mbedtls_ssl_renegotiate:
.LFB271:
	.loc 6 4760 1
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
	.loc 6 4761 9
	li	a5,-28672
	addi	a5,a5,-128
	sw	a5,-20(s0)
	.loc 6 4763 8
	lw	a5,-36(s0)
	beq	a5,zero,.L612
	.loc 6 4763 26 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 4763 20 discriminator 1
	bne	a5,zero,.L613
.L612:
	.loc 6 4764 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L614
.L613:
	.loc 6 4769 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 4769 18
	lbu	a4,4(a5)
	.loc 6 4769 8
	li	a5,1
	bne	a4,a5,.L615
	.loc 6 4770 13
	lw	a0,-36(s0)
	call	mbedtls_ssl_is_handshake_over
	mv	a5,a0
	.loc 6 4770 12 discriminator 1
	bne	a5,zero,.L616
	.loc 6 4771 20
	li	a5,-28672
	addi	a5,a5,-256
	j	.L614
.L616:
	.loc 6 4774 28
	lw	a5,-36(s0)
	li	a4,3
	sw	a4,8(a5)
	.loc 6 4777 16
	lw	a5,-36(s0)
	lw	a5,228(a5)
	.loc 6 4777 12
	beq	a5,zero,.L617
	.loc 6 4778 20
	lw	a0,-36(s0)
	call	mbedtls_ssl_flush_output
	mv	a5,a0
	j	.L614
.L617:
	.loc 6 4781 16
	lw	a0,-36(s0)
	call	ssl_write_hello_request
	mv	a5,a0
	j	.L614
.L615:
	.loc 6 4790 12
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 6 4790 8
	li	a5,1
	beq	a4,a5,.L618
	.loc 6 4791 13
	lw	a0,-36(s0)
	call	mbedtls_ssl_is_handshake_over
	mv	a5,a0
	.loc 6 4791 12 discriminator 1
	bne	a5,zero,.L619
	.loc 6 4792 20
	li	a5,-28672
	addi	a5,a5,-256
	j	.L614
.L619:
	.loc 6 4795 20
	lw	a0,-36(s0)
	call	mbedtls_ssl_start_renegotiation
	sw	a0,-20(s0)
	.loc 6 4795 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L620
	.loc 6 4796 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC78)
	addi	a4,a4,%lo(.LC78)
	li	a3,4096
	addi	a3,a3,700
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 6 4797 20
	lw	a5,-20(s0)
	j	.L614
.L618:
	.loc 6 4800 20
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake
	sw	a0,-20(s0)
	.loc 6 4800 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L620
	.loc 6 4801 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC76)
	addi	a4,a4,%lo(.LC76)
	li	a3,4096
	addi	a3,a3,705
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 6 4802 20
	lw	a5,-20(s0)
	j	.L614
.L620:
	.loc 6 4807 12
	lw	a5,-20(s0)
.L614:
	.loc 6 4808 1
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
.LFE271:
	.size	mbedtls_ssl_renegotiate, .-mbedtls_ssl_renegotiate
	.section	.text.mbedtls_ssl_handshake_free,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_handshake_free
	.type	mbedtls_ssl_handshake_free, @function
mbedtls_ssl_handshake_free:
.LFB272:
	.loc 6 4812 1
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
	.loc 6 4813 35
	lw	a5,-36(s0)
	lw	a5,64(a5)
	sw	a5,-20(s0)
	.loc 6 4815 8
	lw	a5,-20(s0)
	beq	a5,zero,.L627
	.loc 6 4843 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 4843 18
	lw	a5,140(a5)
	.loc 6 4843 8
	beq	a5,zero,.L624
	.loc 6 4843 54 discriminator 1
	lw	a5,-20(s0)
	lbu	a5,9(a5)
	.loc 6 4843 42 discriminator 1
	beq	a5,zero,.L624
	.loc 6 4844 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 4844 18
	lw	a5,140(a5)
	.loc 6 4844 9
	lw	a0,-36(s0)
	jalr	a5
.LVL3:
	.loc 6 4845 38
	lw	a5,-20(s0)
	sb	zero,9(a5)
.L624:
	.loc 6 4853 5
	lw	a5,-20(s0)
	addi	a5,a5,708
	mv	a0,a5
	call	mbedtls_md_free
	.loc 6 4860 5
	lw	a5,-20(s0)
	addi	a5,a5,720
	mv	a0,a5
	call	mbedtls_md_free
	.loc 6 4865 5
	lw	a5,-20(s0)
	addi	a5,a5,84
	mv	a0,a5
	call	mbedtls_dhm_free
	.loc 6 4869 5
	lw	a5,-20(s0)
	addi	a5,a5,164
	mv	a0,a5
	call	mbedtls_ecdh_free
	.loc 6 4898 28
	lw	a5,-20(s0)
	lw	a5,404(a5)
	.loc 6 4898 5
	mv	a0,a5
	call	free
	.loc 6 4913 18
	lw	a5,-20(s0)
	lw	a5,408(a5)
	.loc 6 4913 8
	beq	a5,zero,.L625
	.loc 6 4914 43
	lw	a5,-20(s0)
	lw	a4,408(a5)
	.loc 6 4914 9
	lw	a5,-20(s0)
	lw	a5,412(a5)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_zeroize_and_free
.L625:
	.loc 6 4925 5
	lw	a5,-20(s0)
	lw	a5,544(a5)
	mv	a0,a5
	call	ssl_key_cert_free
	.loc 6 4929 5
	lw	a5,-20(s0)
	addi	a5,a5,420
	mv	a0,a5
	call	mbedtls_x509_crt_restart_free
	.loc 6 4930 18
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 6 4930 8
	beq	a5,zero,.L626
	.loc 6 4931 9
	lw	a5,-20(s0)
	lw	a5,16(a5)
	mv	a0,a5
	call	mbedtls_x509_crt_free
	.loc 6 4932 23
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 6 4932 9
	mv	a0,a5
	call	free
.L626:
	.loc 6 4943 19
	lw	a5,-20(s0)
	lw	a5,624(a5)
	.loc 6 4943 5
	mv	a0,a5
	call	free
	.loc 6 4948 5
	lw	a5,-20(s0)
	lw	a5,644(a5)
	mv	a0,a5
	call	mbedtls_ssl_flight_free
	.loc 6 4949 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_buffering_free
	.loc 6 4973 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_get_input_buflen
	mv	s1,a0
	.loc 6 4973 5 is_stmt 0 discriminator 1
	lw	a0,-36(s0)
	call	mbedtls_ssl_get_output_buflen
	mv	a5,a0
	.loc 6 4973 5 discriminator 2
	mv	a3,a5
	mv	a2,s1
	li	a1,1
	lw	a0,-36(s0)
	call	handle_buffer_resizing
	.loc 6 4978 5 is_stmt 1
	li	a1,996
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
	j	.L621
.L627:
	.loc 6 4816 9
	nop
.L621:
	.loc 6 4980 1
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
.LFE272:
	.size	mbedtls_ssl_handshake_free, .-mbedtls_ssl_handshake_free
	.section	.text.mbedtls_ssl_session_free,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_session_free
	.type	mbedtls_ssl_session_free, @function
mbedtls_ssl_session_free:
.LFB273:
	.loc 6 4983 1
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
	.loc 6 4984 8
	lw	a5,-20(s0)
	beq	a5,zero,.L631
	.loc 6 4989 5
	lw	a0,-20(s0)
	call	ssl_clear_peer_cert
	.loc 6 4997 17
	lw	a5,-20(s0)
	lw	a5,104(a5)
	.loc 6 4997 5
	mv	a0,a5
	call	free
	.loc 6 5005 5
	li	a1,120
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
	j	.L628
.L631:
	.loc 6 4985 9
	nop
.L628:
	.loc 6 5006 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE273:
	.size	mbedtls_ssl_session_free, .-mbedtls_ssl_session_free
	.section	.srodata.ssl_serialized_context_header,"a"
	.align	2
	.type	ssl_serialized_context_header, @object
	.size	ssl_serialized_context_header, 8
ssl_serialized_context_header:
	.base64	"AwYFAP4AAA8="
	.section	.rodata
	.align	2
.LC79:
	.string	"Initial handshake isn't over"
	.align	2
.LC80:
	.string	"Handshake isn't completed"
	.align	2
.LC81:
	.string	"Serialised structures aren't ready"
	.align	2
.LC82:
	.string	"There is pending incoming data"
	.align	2
.LC83:
	.string	"There is pending outgoing data"
	.align	2
.LC84:
	.string	"Only DTLS is supported"
	.align	2
.LC85:
	.string	"Only version 1.2 supported"
	.align	2
.LC86:
	.string	"Only AEAD ciphersuites supported"
	.align	2
.LC87:
	.string	"Renegotiation must not be enabled"
	.align	2
.LC88:
	.string	"saved context"
	.section	.text.mbedtls_ssl_context_save,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_context_save
	.type	mbedtls_ssl_context_save, @function
mbedtls_ssl_context_save:
.LFB274:
	.loc 6 5099 1
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
	sw	a2,-124(s0)
	sw	a3,-128(s0)
	.loc 6 5100 20
	lw	a5,-120(s0)
	sw	a5,-20(s0)
	.loc 6 5101 12
	sw	zero,-28(s0)
	.loc 6 5103 9
	sw	zero,-32(s0)
	.loc 6 5114 9
	lw	a0,-116(s0)
	call	mbedtls_ssl_is_handshake_over
	mv	a5,a0
	.loc 6 5114 8 discriminator 1
	bne	a5,zero,.L633
	.loc 6 5115 9
	lui	a5,%hi(.LC79)
	addi	a4,a5,%lo(.LC79)
	li	a5,4096
	addi	a3,a5,1019
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 6 5116 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L659
.L633:
	.loc 6 5118 12
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 6 5118 8
	beq	a5,zero,.L635
	.loc 6 5119 9
	lui	a5,%hi(.LC80)
	addi	a4,a5,%lo(.LC80)
	li	a5,4096
	addi	a3,a5,1023
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 6 5120 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L659
.L635:
	.loc 6 5123 12
	lw	a5,-116(s0)
	lw	a5,76(a5)
	.loc 6 5123 8
	beq	a5,zero,.L636
	.loc 6 5123 37 discriminator 1
	lw	a5,-116(s0)
	lw	a5,56(a5)
	.loc 6 5123 31 discriminator 1
	bne	a5,zero,.L637
.L636:
	.loc 6 5124 9
	lui	a5,%hi(.LC81)
	addi	a4,a5,%lo(.LC81)
	li	a5,4096
	addi	a3,a5,1028
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 6 5125 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L659
.L637:
	.loc 6 5128 9
	lw	a0,-116(s0)
	call	mbedtls_ssl_check_pending
	mv	a5,a0
	.loc 6 5128 8 discriminator 1
	beq	a5,zero,.L638
	.loc 6 5129 9
	lui	a5,%hi(.LC82)
	addi	a4,a5,%lo(.LC82)
	li	a5,4096
	addi	a3,a5,1033
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 6 5130 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L659
.L638:
	.loc 6 5132 12
	lw	a5,-116(s0)
	lw	a5,228(a5)
	.loc 6 5132 8
	beq	a5,zero,.L639
	.loc 6 5133 9
	lui	a5,%hi(.LC83)
	addi	a4,a5,%lo(.LC83)
	li	a5,4096
	addi	a3,a5,1037
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 6 5134 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L659
.L639:
	.loc 6 5137 12
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 6 5137 18
	lbu	a4,5(a5)
	.loc 6 5137 8
	li	a5,1
	beq	a4,a5,.L640
	.loc 6 5138 9
	lui	a5,%hi(.LC84)
	addi	a4,a5,%lo(.LC84)
	li	a5,4096
	addi	a3,a5,1042
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 6 5139 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L659
.L640:
	.loc 6 5142 12
	lw	a5,-116(s0)
	lhu	a4,16(a5)
	.loc 6 5142 8
	li	a5,771
	beq	a4,a5,.L641
	.loc 6 5143 9
	lui	a5,%hi(.LC85)
	addi	a4,a5,%lo(.LC85)
	li	a5,4096
	addi	a3,a5,1047
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 6 5144 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L659
.L641:
	.loc 6 5147 44
	lw	a5,-116(s0)
	lw	a5,76(a5)
	.loc 6 5147 9
	mv	a0,a5
	call	mbedtls_ssl_transform_uses_aead
	mv	a4,a0
	.loc 6 5147 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L642
	.loc 6 5148 9
	lui	a5,%hi(.LC86)
	addi	a4,a5,%lo(.LC86)
	li	a5,4096
	addi	a3,a5,1052
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 6 5149 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L659
.L642:
	.loc 6 5153 12
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 6 5153 18
	lbu	a5,12(a5)
	.loc 6 5153 8
	beq	a5,zero,.L643
	.loc 6 5154 9
	lui	a5,%hi(.LC87)
	addi	a4,a5,%lo(.LC87)
	li	a5,4096
	addi	a3,a5,1058
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 6 5155 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L659
.L643:
	.loc 6 5162 10
	lw	a5,-28(s0)
	addi	a5,a5,8
	sw	a5,-28(s0)
	.loc 6 5164 8
	lw	a4,-28(s0)
	lw	a5,-124(s0)
	bgtu	a4,a5,.L644
	.loc 6 5165 9
	li	a2,8
	lui	a5,%hi(ssl_serialized_context_header)
	addi	a1,a5,%lo(ssl_serialized_context_header)
	lw	a0,-20(s0)
	call	memcpy
	.loc 6 5167 11
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.L644:
	.loc 6 5173 31
	lw	a5,-116(s0)
	lw	a5,56(a5)
	.loc 6 5173 11
	addi	a4,s0,-108
	li	a3,0
	li	a2,0
	li	a1,1
	mv	a0,a5
	call	ssl_session_save
	sw	a0,-32(s0)
	.loc 6 5174 8
	lw	a4,-32(s0)
	li	a5,-28672
	addi	a5,a5,1536
	beq	a4,a5,.L645
	.loc 6 5175 16
	lw	a5,-32(s0)
	j	.L659
.L645:
	.loc 6 5178 10
	lw	a4,-108(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	addi	a5,a5,4
	sw	a5,-28(s0)
	.loc 6 5179 8
	lw	a4,-28(s0)
	lw	a5,-124(s0)
	bgtu	a4,a5,.L646
	.loc 6 5180 136 discriminator 2
	lw	a5,-108(s0)
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	mv	a4,a5
	lw	a5,-20(s0)
	sw	a5,-36(s0)
	sw	a4,-40(s0)
.LBB93:
.LBB94:
	.loc 7 200 33
	lw	a5,-36(s0)
	sw	a5,-44(s0)
	.loc 7 201 12
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
	.loc 7 205 1
	nop
.LBE94:
.LBE93:
	.loc 6 5181 11
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 6 5183 35
	lw	a5,-116(s0)
	lw	a5,56(a5)
	.loc 6 5183 15
	lw	a3,-108(s0)
	addi	a4,s0,-108
	lw	a2,-20(s0)
	li	a1,1
	mv	a0,a5
	call	ssl_session_save
	sw	a0,-32(s0)
	.loc 6 5185 12
	lw	a5,-32(s0)
	beq	a5,zero,.L647
	.loc 6 5186 20
	lw	a5,-32(s0)
	j	.L659
.L647:
	.loc 6 5189 11
	lw	a5,-108(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L646:
	.loc 6 5195 10
	lw	a5,-28(s0)
	addi	a5,a5,64
	sw	a5,-28(s0)
	.loc 6 5196 8
	lw	a4,-28(s0)
	lw	a5,-124(s0)
	bgtu	a4,a5,.L648
	.loc 6 5197 22
	lw	a5,-116(s0)
	lw	a5,76(a5)
	.loc 6 5197 33
	addi	a5,a5,286
	.loc 6 5197 9
	li	a2,64
	mv	a1,a5
	lw	a0,-20(s0)
	call	memcpy
	.loc 6 5199 11
	lw	a5,-20(s0)
	addi	a5,a5,64
	sw	a5,-20(s0)
.L648:
	.loc 6 5203 21
	lw	a5,-116(s0)
	lw	a5,76(a5)
	.loc 6 5203 32
	lbu	a5,220(a5)
	mv	a4,a5
	.loc 6 5203 50
	lw	a5,-116(s0)
	lw	a5,76(a5)
	.loc 6 5203 61
	lbu	a5,221(a5)
	.loc 6 5203 45
	add	a4,a4,a5
	.loc 6 5203 10
	lw	a5,-28(s0)
	add	a5,a4,a5
	addi	a5,a5,2
	sw	a5,-28(s0)
	.loc 6 5204 8
	lw	a4,-28(s0)
	lw	a5,-124(s0)
	bgtu	a4,a5,.L649
	.loc 6 5205 19
	lw	a5,-116(s0)
	lw	a4,76(a5)
	.loc 6 5205 11
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	.loc 6 5205 30
	lbu	a4,220(a4)
	.loc 6 5205 14
	sb	a4,0(a5)
	.loc 6 5206 22
	lw	a5,-116(s0)
	lw	a5,76(a5)
	.loc 6 5206 33
	addi	a4,a5,222
	.loc 6 5206 46
	lw	a5,-116(s0)
	lw	a5,76(a5)
	.loc 6 5206 57
	lbu	a5,220(a5)
	.loc 6 5206 9
	mv	a2,a5
	mv	a1,a4
	lw	a0,-20(s0)
	call	memcpy
	.loc 6 5207 17
	lw	a5,-116(s0)
	lw	a5,76(a5)
	.loc 6 5207 28
	lbu	a5,220(a5)
	mv	a4,a5
	.loc 6 5207 11
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 6 5209 19
	lw	a5,-116(s0)
	lw	a4,76(a5)
	.loc 6 5209 11
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	.loc 6 5209 30
	lbu	a4,221(a4)
	.loc 6 5209 14
	sb	a4,0(a5)
	.loc 6 5210 22
	lw	a5,-116(s0)
	lw	a5,76(a5)
	.loc 6 5210 33
	addi	a4,a5,254
	.loc 6 5210 47
	lw	a5,-116(s0)
	lw	a5,76(a5)
	.loc 6 5210 58
	lbu	a5,221(a5)
	.loc 6 5210 9
	mv	a2,a5
	mv	a1,a4
	lw	a0,-20(s0)
	call	memcpy
	.loc 6 5211 17
	lw	a5,-116(s0)
	lw	a5,76(a5)
	.loc 6 5211 28
	lbu	a5,221(a5)
	mv	a4,a5
	.loc 6 5211 11
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
.L649:
	.loc 6 5218 10
	lw	a5,-28(s0)
	addi	a5,a5,4
	sw	a5,-28(s0)
	.loc 6 5219 8
	lw	a4,-28(s0)
	lw	a5,-124(s0)
	bgtu	a4,a5,.L650
	.loc 6 5220 190 discriminator 2
	lw	a5,-116(s0)
	lw	a5,20(a5)
	.loc 6 5220 157 discriminator 2
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	mv	a4,a5
	lw	a5,-20(s0)
	sw	a5,-48(s0)
	sw	a4,-52(s0)
.LBB95:
.LBB96:
	.loc 7 200 33
	lw	a5,-48(s0)
	sw	a5,-56(s0)
	.loc 7 201 12
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
	.loc 7 205 1
	nop
.LBE96:
.LBE95:
	.loc 6 5221 11
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
.L650:
	.loc 6 5225 10
	lw	a5,-28(s0)
	addi	a5,a5,16
	sw	a5,-28(s0)
	.loc 6 5226 8
	lw	a4,-28(s0)
	lw	a5,-124(s0)
	bgtu	a4,a5,.L651
	.loc 6 5227 176 discriminator 2
	lw	a5,-116(s0)
	lw	a4,152(a5)
	lw	a5,156(a5)
	.loc 6 5227 143 discriminator 2
	mv	a0,a4
	mv	a1,a5
	call	__bswapdi2
	mv	a4,a0
	mv	a5,a1
	lw	a3,-20(s0)
	sw	a3,-60(s0)
	sw	a4,-72(s0)
	sw	a5,-68(s0)
.LBB97:
.LBB98:
	.loc 7 252 33
	lw	a5,-60(s0)
	sw	a5,-76(s0)
	.loc 7 253 12
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
	lw	a4,-68(s0)
	andi	a4,a4,255
	lbu	a3,4(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,4(a5)
	lw	a4,-68(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,5(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,5(a5)
	lw	a4,-68(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,6(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,6(a5)
	lw	a4,-68(s0)
	srli	a4,a4,24
	lbu	a3,7(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,7(a5)
	.loc 7 257 1
	nop
.LBE98:
.LBE97:
	.loc 6 5228 11
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
	.loc 6 5230 172 discriminator 2
	lw	a5,-116(s0)
	lw	a4,160(a5)
	lw	a5,164(a5)
	.loc 6 5230 139 discriminator 2
	mv	a0,a4
	mv	a1,a5
	call	__bswapdi2
	mv	a4,a0
	mv	a5,a1
	lw	a3,-20(s0)
	sw	a3,-80(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBB99:
.LBB100:
	.loc 7 252 33
	lw	a5,-80(s0)
	sw	a5,-92(s0)
	.loc 7 253 12
	lw	a5,-92(s0)
	lw	a4,-88(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-88(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-88(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-88(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	lw	a4,-84(s0)
	andi	a4,a4,255
	lbu	a3,4(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,4(a5)
	lw	a4,-84(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,5(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,5(a5)
	lw	a4,-84(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,6(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,6(a5)
	lw	a4,-84(s0)
	srli	a4,a4,24
	lbu	a3,7(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,7(a5)
	.loc 7 257 1
	nop
.LBE100:
.LBE99:
	.loc 6 5231 11
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.L651:
	.loc 6 5236 10
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
	.loc 6 5237 8
	lw	a4,-28(s0)
	lw	a5,-124(s0)
	bgtu	a4,a5,.L652
	.loc 6 5238 11
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 5238 19
	lw	a4,-116(s0)
	lbu	a4,188(a4)
	.loc 6 5238 14
	sb	a4,0(a5)
.L652:
	.loc 6 5242 10
	lw	a5,-28(s0)
	addi	a5,a5,8
	sw	a5,-28(s0)
	.loc 6 5243 8
	lw	a4,-28(s0)
	lw	a5,-124(s0)
	bgtu	a4,a5,.L653
	.loc 6 5244 22
	lw	a5,-116(s0)
	addi	a5,a5,236
	.loc 6 5244 9
	li	a2,8
	mv	a1,a5
	lw	a0,-20(s0)
	call	memcpy
	.loc 6 5245 11
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.L653:
	.loc 6 5249 10
	lw	a5,-28(s0)
	addi	a5,a5,2
	sw	a5,-28(s0)
	.loc 6 5250 8
	lw	a4,-28(s0)
	lw	a5,-124(s0)
	bgtu	a4,a5,.L654
	.loc 6 5251 166 discriminator 2
	lw	a5,-116(s0)
	lhu	a5,244(a5)
	.loc 6 5251 133 discriminator 2
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a4,-20(s0)
	sw	a4,-96(s0)
	sh	a5,-98(s0)
.LBB101:
.LBB102:
	.loc 7 148 33
	lw	a5,-96(s0)
	sw	a5,-104(s0)
	.loc 7 149 12
	lw	a5,-104(s0)
	lhu	a4,-98(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-98(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 7 153 1
	nop
.LBE102:
.LBE101:
	.loc 6 5252 11
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
.L654:
.LBB103:
	.loc 6 5258 37
	lw	a5,-116(s0)
	lw	a5,252(a5)
	.loc 6 5258 23
	beq	a5,zero,.L655
	.loc 6 5259 44
	lw	a5,-116(s0)
	lw	a5,252(a5)
	mv	a0,a5
	call	strlen
	mv	a5,a0
	.loc 6 5258 23 discriminator 1
	sb	a5,-21(s0)
	j	.L656
.L655:
	.loc 6 5258 23 is_stmt 0 discriminator 2
	sb	zero,-21(s0)
.L656:
	.loc 6 5262 14 is_stmt 1
	lbu	a4,-21(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	addi	a5,a5,1
	sw	a5,-28(s0)
	.loc 6 5263 12
	lw	a4,-28(s0)
	lw	a5,-124(s0)
	bgtu	a4,a5,.L657
	.loc 6 5264 15
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 5264 18
	lbu	a4,-21(s0)
	sb	a4,0(a5)
	.loc 6 5266 20
	lw	a5,-116(s0)
	lw	a5,252(a5)
	.loc 6 5266 16
	beq	a5,zero,.L657
	.loc 6 5267 30
	lw	a5,-116(s0)
	lw	a5,252(a5)
	.loc 6 5267 17
	lbu	a4,-21(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-20(s0)
	call	memcpy
	.loc 6 5268 19
	lbu	a5,-21(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L657:
.LBE103:
	.loc 6 5277 11
	lw	a5,-128(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 6 5279 8
	lw	a4,-28(s0)
	lw	a5,-124(s0)
	bleu	a4,a5,.L658
	.loc 6 5280 16
	li	a5,-28672
	addi	a5,a5,1536
	j	.L659
.L658:
	.loc 6 5283 5
	lw	a6,-28(s0)
	lw	a5,-120(s0)
	lui	a4,%hi(.LC88)
	addi	a4,a4,%lo(.LC88)
	li	a3,4096
	addi	a3,a3,1187
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,4
	lw	a0,-116(s0)
	call	mbedtls_debug_print_buf
	.loc 6 5285 12
	li	a1,0
	lw	a0,-116(s0)
	call	mbedtls_ssl_session_reset_int
	mv	a5,a0
.L659:
	.loc 6 5286 1
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
.LFE274:
	.size	mbedtls_ssl_context_save, .-mbedtls_ssl_context_save
	.section	.rodata
	.align	2
.LC89:
	.string	"context to load"
	.section	.text.ssl_context_load,"ax",@progbits
	.align	1
	.type	ssl_context_load, @function
ssl_context_load:
.LFB275:
	.loc 6 5298 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	a0,-132(s0)
	sw	a1,-136(s0)
	sw	a2,-140(s0)
	.loc 6 5299 26
	lw	a5,-136(s0)
	sw	a5,-24(s0)
	.loc 6 5300 33
	lw	a4,-136(s0)
	lw	a5,-140(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 6 5302 9
	li	a5,-110
	sw	a5,-32(s0)
	.loc 6 5304 16
	sw	zero,-36(s0)
	.loc 6 5313 12
	lw	a5,-132(s0)
	lw	a5,4(a5)
	.loc 6 5313 8
	bne	a5,zero,.L661
	.loc 6 5314 12
	lw	a5,-132(s0)
	lw	a5,56(a5)
	.loc 6 5313 49 discriminator 1
	beq	a5,zero,.L662
.L661:
	.loc 6 5315 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L663
.L662:
	.loc 6 5324 12
	lw	a5,-132(s0)
	lw	a5,0(a5)
	.loc 6 5324 18
	lbu	a5,12(a5)
	.loc 6 5322 8
	bne	a5,zero,.L664
	.loc 6 5326 12
	lw	a5,-132(s0)
	lw	a5,0(a5)
	.loc 6 5326 18
	lbu	a4,5(a5)
	.loc 6 5324 47
	li	a5,1
	bne	a4,a5,.L664
	.loc 6 5327 12
	lw	a5,-132(s0)
	lw	a5,0(a5)
	.loc 6 5327 18
	lhu	a4,0(a5)
	.loc 6 5326 35
	li	a5,770
	bleu	a4,a5,.L664
	.loc 6 5328 12
	lw	a5,-132(s0)
	lw	a5,0(a5)
	.loc 6 5328 18
	lhu	a4,2(a5)
	.loc 6 5327 65
	li	a5,771
	bleu	a4,a5,.L665
.L664:
	.loc 6 5330 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L663
.L665:
	.loc 6 5333 5
	lw	a6,-140(s0)
	lw	a5,-136(s0)
	lui	a4,%hi(.LC89)
	addi	a4,a4,%lo(.LC89)
	li	a3,4096
	addi	a3,a3,1237
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,4
	lw	a0,-132(s0)
	call	mbedtls_debug_print_buf
	.loc 6 5338 23
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 6 5338 9
	mv	a4,a5
	.loc 6 5338 8
	li	a5,7
	bgtu	a4,a5,.L666
	.loc 6 5339 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L663
.L666:
	.loc 6 5342 9
	li	a2,8
	lui	a5,%hi(ssl_serialized_context_header)
	addi	a1,a5,%lo(ssl_serialized_context_header)
	lw	a0,-24(s0)
	call	memcmp
	mv	a5,a0
	.loc 6 5342 8 discriminator 1
	beq	a5,zero,.L667
	.loc 6 5344 16
	li	a5,-24576
	addi	a5,a5,256
	j	.L663
.L667:
	.loc 6 5346 7
	lw	a5,-24(s0)
	addi	a5,a5,8
	sw	a5,-24(s0)
	.loc 6 5351 23
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 6 5351 9
	mv	a4,a5
	.loc 6 5351 8
	li	a5,3
	bgtu	a4,a5,.L668
	.loc 6 5352 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L663
.L668:
	lw	a5,-24(s0)
	sw	a5,-48(s0)
.LBB104:
.LBB105:
	.loc 7 174 33
	lw	a5,-48(s0)
	sw	a5,-52(s0)
	.loc 7 175 7
	lw	a5,-52(s0)
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
	sw	a5,-56(s0)
	.loc 7 179 12
	lw	a5,-56(s0)
.LBE105:
.LBE104:
	.loc 6 5355 66 discriminator 1
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	sw	a5,-40(s0)
	.loc 6 5356 7
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 6 5360 23
	lw	a5,-132(s0)
	lw	a4,60(a5)
	.loc 6 5360 18
	lw	a5,-132(s0)
	sw	a4,56(a5)
	.loc 6 5361 26
	lw	a5,-132(s0)
	lw	a4,56(a5)
	.loc 6 5361 21
	lw	a5,-132(s0)
	sw	a4,48(a5)
	.loc 6 5362 27
	lw	a5,-132(s0)
	lw	a4,56(a5)
	.loc 6 5362 22
	lw	a5,-132(s0)
	sw	a4,52(a5)
	.loc 6 5363 28
	lw	a5,-132(s0)
	sw	zero,60(a5)
	.loc 6 5365 23
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 6 5365 9
	mv	a4,a5
	.loc 6 5365 8
	lw	a5,-40(s0)
	bleu	a5,a4,.L670
	.loc 6 5366 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L663
.L670:
	.loc 6 5369 11
	lw	a5,-132(s0)
	lw	a5,56(a5)
	lw	a3,-40(s0)
	lw	a2,-24(s0)
	li	a1,1
	mv	a0,a5
	call	ssl_session_load
	sw	a0,-32(s0)
	.loc 6 5370 8
	lw	a5,-32(s0)
	beq	a5,zero,.L671
	.loc 6 5371 9
	lw	a5,-132(s0)
	lw	a5,56(a5)
	mv	a0,a5
	call	mbedtls_ssl_session_free
	.loc 6 5372 16
	lw	a5,-32(s0)
	j	.L663
.L671:
	.loc 6 5375 7
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 6 5384 25
	lw	a5,-132(s0)
	lw	a4,80(a5)
	.loc 6 5384 20
	lw	a5,-132(s0)
	sw	a4,76(a5)
	.loc 6 5385 28
	lw	a5,-132(s0)
	lw	a4,76(a5)
	.loc 6 5385 23
	lw	a5,-132(s0)
	sw	a4,68(a5)
	.loc 6 5386 29
	lw	a5,-132(s0)
	lw	a4,76(a5)
	.loc 6 5386 24
	lw	a5,-132(s0)
	sw	a4,72(a5)
	.loc 6 5387 30
	lw	a5,-132(s0)
	sw	zero,80(a5)
	.loc 6 5391 40
	lw	a5,-132(s0)
	lw	a5,56(a5)
	.loc 6 5391 16
	lw	a5,8(a5)
	mv	a0,a5
	call	ssl_tls12prf_from_cs
	sw	a0,-36(s0)
	.loc 6 5392 8
	lw	a5,-36(s0)
	bne	a5,zero,.L672
	.loc 6 5393 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L663
.L672:
	.loc 6 5397 23
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 6 5397 9
	mv	a4,a5
	.loc 6 5397 8
	li	a5,63
	bgtu	a4,a5,.L673
	.loc 6 5398 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L663
.L673:
	.loc 6 5401 11
	lw	a5,-132(s0)
	lw	a0,76(a5)
	.loc 6 5402 43
	lw	a5,-132(s0)
	lw	a5,56(a5)
	.loc 6 5401 11
	lw	a1,8(a5)
	.loc 6 5403 43
	lw	a5,-132(s0)
	lw	a5,56(a5)
	.loc 6 5403 52
	addi	a2,a5,48
	.loc 6 5405 43
	lw	a5,-132(s0)
	lw	a5,56(a5)
	.loc 6 5401 11
	lw	a3,116(a5)
	.loc 6 5410 43
	lw	a5,-132(s0)
	lw	a5,0(a5)
	.loc 6 5410 49
	lbu	a5,4(a5)
	.loc 6 5401 11
	mv	a4,a5
	lw	a5,-132(s0)
	sw	a5,0(sp)
	mv	a7,a4
	li	a6,771
	lw	a5,-24(s0)
	lw	a4,-36(s0)
	call	ssl_tls12_populate_transform
	sw	a0,-32(s0)
	.loc 6 5412 8
	lw	a5,-32(s0)
	beq	a5,zero,.L674
	.loc 6 5413 16
	lw	a5,-32(s0)
	j	.L663
.L674:
	.loc 6 5416 7
	lw	a5,-24(s0)
	addi	a5,a5,64
	sw	a5,-24(s0)
	.loc 6 5420 8
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	bne	a4,a5,.L675
	.loc 6 5421 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L663
.L675:
	.loc 6 5424 36
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 6 5424 8
	lw	a4,-132(s0)
	lw	a4,76(a4)
	.loc 6 5424 34
	lbu	a5,0(a5)
	.loc 6 5424 32
	sb	a5,220(a4)
	.loc 6 5426 23
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 6 5426 9
	mv	a4,a5
	.loc 6 5426 33
	lw	a5,-132(s0)
	lw	a5,76(a5)
	.loc 6 5426 44
	lbu	a5,220(a5)
	.loc 6 5426 57
	addi	a5,a5,1
	.loc 6 5426 8
	bgeu	a4,a5,.L676
	.loc 6 5427 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L663
.L676:
	.loc 6 5430 15
	lw	a5,-132(s0)
	lw	a5,76(a5)
	.loc 6 5430 26
	addi	a4,a5,222
	.loc 6 5430 42
	lw	a5,-132(s0)
	lw	a5,76(a5)
	.loc 6 5430 53
	lbu	a5,220(a5)
	.loc 6 5430 5
	mv	a2,a5
	lw	a1,-24(s0)
	mv	a0,a4
	call	memcpy
	.loc 6 5431 13
	lw	a5,-132(s0)
	lw	a5,76(a5)
	.loc 6 5431 24
	lbu	a5,220(a5)
	mv	a4,a5
	.loc 6 5431 7
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 6 5433 37
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 6 5433 8
	lw	a4,-132(s0)
	lw	a4,76(a4)
	.loc 6 5433 35
	lbu	a5,0(a5)
	.loc 6 5433 33
	sb	a5,221(a4)
	.loc 6 5435 23
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 6 5435 9
	mv	a4,a5
	.loc 6 5435 33
	lw	a5,-132(s0)
	lw	a5,76(a5)
	.loc 6 5435 44
	lbu	a5,221(a5)
	.loc 6 5435 8
	bgeu	a4,a5,.L677
	.loc 6 5436 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L663
.L677:
	.loc 6 5439 15
	lw	a5,-132(s0)
	lw	a5,76(a5)
	.loc 6 5439 26
	addi	a4,a5,254
	.loc 6 5439 43
	lw	a5,-132(s0)
	lw	a5,76(a5)
	.loc 6 5439 54
	lbu	a5,221(a5)
	.loc 6 5439 5
	mv	a2,a5
	lw	a1,-24(s0)
	mv	a0,a4
	call	memcpy
	.loc 6 5440 13
	lw	a5,-132(s0)
	lw	a5,76(a5)
	.loc 6 5440 24
	lbu	a5,221(a5)
	mv	a4,a5
	.loc 6 5440 7
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 6 5446 23
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 6 5446 9
	mv	a4,a5
	.loc 6 5446 8
	li	a5,3
	bgtu	a4,a5,.L678
	.loc 6 5447 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L663
.L678:
	lw	a5,-24(s0)
	sw	a5,-60(s0)
.LBB106:
.LBB107:
	.loc 7 174 33
	lw	a5,-60(s0)
	sw	a5,-64(s0)
	.loc 7 175 7
	lw	a5,-64(s0)
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
	sw	a5,-68(s0)
	.loc 7 179 12
	lw	a5,-68(s0)
.LBE107:
.LBE106:
	.loc 6 5450 87 discriminator 1
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	mv	a4,a5
	.loc 6 5450 38 discriminator 2
	lw	a5,-132(s0)
	sw	a4,20(a5)
	.loc 6 5451 7
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 6 5454 23
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 6 5454 9
	mv	a4,a5
	.loc 6 5454 8
	li	a5,15
	bgtu	a4,a5,.L680
	.loc 6 5455 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L663
.L680:
	lw	a5,-24(s0)
	sw	a5,-92(s0)
.LBB108:
.LBB109:
	.loc 7 226 33
	lw	a5,-92(s0)
	sw	a5,-96(s0)
	.loc 7 227 7
	lw	a5,-96(s0)
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
	sw	a2,-104(s0)
	sw	a3,-100(s0)
	.loc 7 231 12
	lw	a4,-104(s0)
	lw	a5,-100(s0)
.LBE109:
.LBE108:
	.loc 6 5458 73 discriminator 1
	mv	a0,a4
	mv	a1,a5
	call	__bswapdi2
	mv	a4,a0
	mv	a5,a1
	.loc 6 5458 24 discriminator 2
	lw	a3,-132(s0)
	sw	a4,152(a3)
	sw	a5,156(a3)
	.loc 6 5459 7
	lw	a5,-24(s0)
	addi	a5,a5,8
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	sw	a5,-72(s0)
.LBB110:
.LBB111:
	.loc 7 226 33
	lw	a5,-72(s0)
	sw	a5,-76(s0)
	.loc 7 227 7
	lw	a5,-76(s0)
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
	sw	a2,-88(s0)
	sw	a3,-84(s0)
	.loc 7 231 12
	lw	a4,-88(s0)
	lw	a5,-84(s0)
.LBE111:
.LBE110:
	.loc 6 5461 69 discriminator 1
	mv	a0,a4
	mv	a1,a5
	call	__bswapdi2
	mv	a4,a0
	mv	a5,a1
	.loc 6 5461 20 discriminator 2
	lw	a3,-132(s0)
	sw	a4,160(a3)
	sw	a5,164(a3)
	.loc 6 5462 7
	lw	a5,-24(s0)
	addi	a5,a5,8
	sw	a5,-24(s0)
	.loc 6 5466 8
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	bne	a4,a5,.L683
	.loc 6 5467 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L663
.L683:
	.loc 6 5470 39
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 6 5470 37
	lbu	a4,0(a5)
	.loc 6 5470 35
	lw	a5,-132(s0)
	sb	a4,188(a5)
	.loc 6 5473 23
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 6 5473 9
	mv	a4,a5
	.loc 6 5473 8
	li	a5,7
	bgtu	a4,a5,.L684
	.loc 6 5474 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L663
.L684:
	.loc 6 5476 15
	lw	a5,-132(s0)
	addi	a5,a5,236
	.loc 6 5476 5
	li	a2,8
	lw	a1,-24(s0)
	mv	a0,a5
	call	memcpy
	.loc 6 5477 7
	lw	a5,-24(s0)
	addi	a5,a5,8
	sw	a5,-24(s0)
	.loc 6 5480 23
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 6 5480 9
	mv	a4,a5
	.loc 6 5480 8
	li	a5,1
	bgtu	a4,a5,.L685
	.loc 6 5481 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L663
.L685:
	lw	a5,-24(s0)
	sw	a5,-108(s0)
.LBB112:
.LBB113:
	.loc 7 122 33
	lw	a5,-108(s0)
	sw	a5,-112(s0)
	.loc 7 123 7
	lw	a5,-112(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-114(s0)
	.loc 7 127 12
	lhu	a5,-114(s0)
.LBE113:
.LBE112:
	.loc 6 5484 65 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 6 5484 14 discriminator 2
	lw	a5,-132(s0)
	sh	a4,244(a5)
	.loc 6 5485 7
	lw	a5,-24(s0)
	addi	a5,a5,2
	sw	a5,-24(s0)
.LBB114:
	.loc 6 5493 12
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	bne	a4,a5,.L687
	.loc 6 5494 20
	li	a5,-28672
	addi	a5,a5,-256
	j	.L663
.L687:
	.loc 6 5497 22
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 6 5497 18
	lbu	a5,0(a5)
	sb	a5,-41(s0)
	.loc 6 5499 12
	lbu	a5,-41(s0)
	beq	a5,zero,.L688
	.loc 6 5499 33 discriminator 1
	lw	a5,-132(s0)
	lw	a5,0(a5)
	.loc 6 5499 39 discriminator 1
	lw	a5,188(a5)
	.loc 6 5499 27 discriminator 1
	beq	a5,zero,.L688
	.loc 6 5501 27
	lw	a5,-132(s0)
	lw	a5,0(a5)
	.loc 6 5501 22
	lw	a5,188(a5)
	sw	a5,-20(s0)
	.loc 6 5501 13
	j	.L689
.L691:
	.loc 6 5502 21
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	strlen
	mv	a4,a0
	.loc 6 5502 34 discriminator 1
	lbu	a5,-41(s0)
	.loc 6 5502 20 discriminator 1
	bne	a4,a5,.L690
	.loc 6 5503 21
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lbu	a4,-41(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-24(s0)
	call	memcmp
	mv	a5,a0
	.loc 6 5502 46 discriminator 2
	bne	a5,zero,.L690
	.loc 6 5504 40
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 6 5504 38
	lw	a5,-132(s0)
	sw	a4,252(a5)
	.loc 6 5505 21
	j	.L688
.L690:
	.loc 6 5501 62 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
.L689:
	.loc 6 5501 46 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 6 5501 51 discriminator 1
	bne	a5,zero,.L691
.L688:
	.loc 6 5511 12
	lbu	a5,-41(s0)
	beq	a5,zero,.L692
	.loc 6 5511 33 discriminator 1
	lw	a5,-132(s0)
	lw	a5,252(a5)
	.loc 6 5511 27 discriminator 1
	bne	a5,zero,.L692
	.loc 6 5512 20
	li	a5,-28672
	addi	a5,a5,-256
	j	.L663
.L692:
	.loc 6 5515 11
	lbu	a5,-41(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
.LBE114:
	.loc 6 5525 5
	li	a1,27
	lw	a0,-132(s0)
	call	mbedtls_ssl_handshake_set_state
	.loc 6 5526 22
	lw	a5,-132(s0)
	li	a4,771
	sh	a4,16(a5)
	.loc 6 5530 5
	lw	a5,-132(s0)
	lw	a5,76(a5)
	mv	a1,a5
	lw	a0,-132(s0)
	call	mbedtls_ssl_update_out_pointers
	.loc 6 5533 19
	lw	a5,-132(s0)
	li	a4,1
	sh	a4,144(a5)
	.loc 6 5540 12
	lw	a5,-132(s0)
	lw	a5,64(a5)
	.loc 6 5540 8
	beq	a5,zero,.L693
	.loc 6 5541 9
	lw	a0,-132(s0)
	call	mbedtls_ssl_handshake_free
	.loc 6 5542 17
	lw	a5,-132(s0)
	lw	a5,64(a5)
	.loc 6 5542 9
	mv	a0,a5
	call	free
	.loc 6 5543 24
	lw	a5,-132(s0)
	sw	zero,64(a5)
.L693:
	.loc 6 5549 8
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	beq	a4,a5,.L694
	.loc 6 5550 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L663
.L694:
	.loc 6 5553 12
	li	a5,0
.L663:
	.loc 6 5554 1
	mv	a0,a5
	lw	ra,156(sp)
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE275:
	.size	ssl_context_load, .-ssl_context_load
	.section	.text.mbedtls_ssl_context_load,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_context_load
	.type	mbedtls_ssl_context_load, @function
mbedtls_ssl_context_load:
.LFB276:
	.loc 6 5562 1
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
	.loc 6 5563 15
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	ssl_context_load
	sw	a0,-20(s0)
	.loc 6 5565 8
	lw	a5,-20(s0)
	beq	a5,zero,.L696
	.loc 6 5566 9
	lw	a0,-36(s0)
	call	mbedtls_ssl_free
.L696:
	.loc 6 5569 12
	lw	a5,-20(s0)
	.loc 6 5570 1
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
.LFE276:
	.size	mbedtls_ssl_context_load, .-mbedtls_ssl_context_load
	.section	.rodata
	.align	2
.LC90:
	.string	"=> free"
	.align	2
.LC91:
	.string	"<= free"
	.section	.text.mbedtls_ssl_free,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_free
	.type	mbedtls_ssl_free, @function
mbedtls_ssl_free:
.LFB277:
	.loc 6 5577 1
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
	.loc 6 5578 8
	lw	a5,-36(s0)
	beq	a5,zero,.L706
	.loc 6 5582 5
	lui	a5,%hi(.LC90)
	addi	a4,a5,%lo(.LC90)
	li	a5,4096
	addi	a3,a5,1486
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 5584 12
	lw	a5,-36(s0)
	lw	a5,192(a5)
	.loc 6 5584 8
	beq	a5,zero,.L701
.LBB115:
	.loc 6 5586 16
	lw	a5,-36(s0)
	lw	a5,232(a5)
	sw	a5,-20(s0)
	.loc 6 5591 37
	lw	a5,-36(s0)
	lw	a5,192(a5)
	.loc 6 5591 9
	lw	a1,-20(s0)
	mv	a0,a5
	call	mbedtls_zeroize_and_free
	.loc 6 5592 22
	lw	a5,-36(s0)
	sw	zero,192(a5)
.L701:
.LBE115:
	.loc 6 5595 12
	lw	a5,-36(s0)
	lw	a5,96(a5)
	.loc 6 5595 8
	beq	a5,zero,.L702
.LBB116:
	.loc 6 5597 16
	lw	a5,-36(s0)
	lw	a5,140(a5)
	sw	a5,-24(s0)
	.loc 6 5602 37
	lw	a5,-36(s0)
	lw	a5,96(a5)
	.loc 6 5602 9
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_zeroize_and_free
	.loc 6 5603 21
	lw	a5,-36(s0)
	sw	zero,96(a5)
.L702:
.LBE116:
	.loc 6 5606 12
	lw	a5,-36(s0)
	lw	a5,76(a5)
	.loc 6 5606 8
	beq	a5,zero,.L703
	.loc 6 5607 9
	lw	a5,-36(s0)
	lw	a5,76(a5)
	mv	a0,a5
	call	mbedtls_ssl_transform_free
	.loc 6 5608 17
	lw	a5,-36(s0)
	lw	a5,76(a5)
	.loc 6 5608 9
	mv	a0,a5
	call	free
.L703:
	.loc 6 5611 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 5611 8
	beq	a5,zero,.L704
	.loc 6 5612 9
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_free
	.loc 6 5613 17
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 5613 9
	mv	a0,a5
	call	free
	.loc 6 5616 9
	lw	a5,-36(s0)
	lw	a5,80(a5)
	mv	a0,a5
	call	mbedtls_ssl_transform_free
	.loc 6 5617 17
	lw	a5,-36(s0)
	lw	a5,80(a5)
	.loc 6 5617 9
	mv	a0,a5
	call	free
	.loc 6 5620 9
	lw	a5,-36(s0)
	lw	a5,60(a5)
	mv	a0,a5
	call	mbedtls_ssl_session_free
	.loc 6 5621 17
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 6 5621 9
	mv	a0,a5
	call	free
.L704:
	.loc 6 5629 12
	lw	a5,-36(s0)
	lw	a5,56(a5)
	.loc 6 5629 8
	beq	a5,zero,.L705
	.loc 6 5630 9
	lw	a5,-36(s0)
	lw	a5,56(a5)
	mv	a0,a5
	call	mbedtls_ssl_session_free
	.loc 6 5631 17
	lw	a5,-36(s0)
	lw	a5,56(a5)
	.loc 6 5631 9
	mv	a0,a5
	call	free
.L705:
	.loc 6 5635 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_free_hostname
	.loc 6 5639 13
	lw	a5,-36(s0)
	lw	a5,516(a5)
	.loc 6 5639 5
	mv	a0,a5
	call	free
	.loc 6 5642 5
	lui	a5,%hi(.LC91)
	addi	a4,a5,%lo(.LC91)
	li	a5,4096
	addi	a3,a5,1546
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 5645 5
	li	a1,608
	lw	a0,-36(s0)
	call	mbedtls_platform_zeroize
	j	.L698
.L706:
	.loc 6 5579 9
	nop
.L698:
	.loc 6 5646 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE277:
	.size	mbedtls_ssl_free, .-mbedtls_ssl_free
	.section	.text.mbedtls_ssl_config_init,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_config_init
	.type	mbedtls_ssl_config_init, @function
mbedtls_ssl_config_init:
.LFB278:
	.loc 6 5652 1
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
	.loc 6 5653 5
	li	a2,244
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 6 5654 1
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
.LFE278:
	.size	mbedtls_ssl_config_init, .-mbedtls_ssl_config_init
	.section	.rodata.ssl_preset_default_groups,"a"
	.align	2
	.type	ssl_preset_default_groups, @object
	.size	ssl_preset_default_groups, 28
ssl_preset_default_groups:
	.half	29
	.half	23
	.half	24
	.half	30
	.half	25
	.half	26
	.half	27
	.half	28
	.half	256
	.half	257
	.half	258
	.half	259
	.half	260
	.half	0
	.section	.rodata.ssl_preset_suiteb_ciphersuites,"a"
	.align	2
	.type	ssl_preset_suiteb_ciphersuites, @object
	.size	ssl_preset_suiteb_ciphersuites, 12
ssl_preset_suiteb_ciphersuites:
	.word	49195
	.word	49196
	.word	0
	.section	.rodata.ssl_preset_default_sig_algs,"a"
	.align	2
	.type	ssl_preset_default_sig_algs, @object
	.size	ssl_preset_default_sig_algs, 14
ssl_preset_default_sig_algs:
	.half	1027
	.half	1283
	.half	1539
	.half	1537
	.half	1281
	.half	1025
	.half	0
	.section	.rodata.ssl_tls12_preset_default_sig_algs,"a"
	.align	2
	.type	ssl_tls12_preset_default_sig_algs, @object
	.size	ssl_tls12_preset_default_sig_algs, 14
ssl_tls12_preset_default_sig_algs:
	.half	1539
	.half	1537
	.half	1283
	.half	1281
	.half	1027
	.half	1025
	.half	0
	.section	.srodata.ssl_preset_suiteb_sig_algs,"a"
	.align	2
	.type	ssl_preset_suiteb_sig_algs, @object
	.size	ssl_preset_suiteb_sig_algs, 6
ssl_preset_suiteb_sig_algs:
	.half	1027
	.half	1283
	.half	0
	.section	.srodata.ssl_tls12_preset_suiteb_sig_algs,"a"
	.align	2
	.type	ssl_tls12_preset_suiteb_sig_algs, @object
	.size	ssl_tls12_preset_suiteb_sig_algs, 6
ssl_tls12_preset_suiteb_sig_algs:
	.half	1027
	.half	1283
	.half	0
	.section	.srodata.ssl_preset_suiteb_groups,"a"
	.align	2
	.type	ssl_preset_suiteb_groups, @object
	.size	ssl_preset_suiteb_groups, 6
ssl_preset_suiteb_groups:
	.half	23
	.half	24
	.half	0
	.section	.rodata
	.align	2
.LC92:
	.string	" entry(%04x,%zu) is duplicated at %zu\n"
	.section	.text.ssl_check_no_sig_alg_duplication,"ax",@progbits
	.align	1
	.type	ssl_check_no_sig_alg_duplication, @function
ssl_check_no_sig_alg_duplication:
.LFB279:
	.loc 6 5864 1
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
	.loc 6 5866 9
	sw	zero,-28(s0)
	.loc 6 5868 12
	sw	zero,-20(s0)
	.loc 6 5868 5
	j	.L709
.L714:
	.loc 6 5869 16
	sw	zero,-24(s0)
	.loc 6 5869 9
	j	.L710
.L713:
	.loc 6 5870 25
	lw	a5,-20(s0)
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lhu	a4,0(a5)
	.loc 6 5870 40
	lw	a5,-24(s0)
	slli	a5,a5,1
	lw	a3,-36(s0)
	add	a5,a3,a5
	lhu	a5,0(a5)
	.loc 6 5870 16
	bne	a4,a5,.L716
	.loc 6 5875 36
	lw	a5,-20(s0)
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lhu	a5,0(a5)
	.loc 6 5873 13
	lw	a3,-20(s0)
	lw	a2,-24(s0)
	mv	a1,a5
	lui	a5,%hi(.LC92)
	addi	a0,a5,%lo(.LC92)
	call	printf
	.loc 6 5876 17
	li	a5,-1
	sw	a5,-28(s0)
	j	.L712
.L716:
	.loc 6 5871 17
	nop
.L712:
	.loc 6 5869 29 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L710:
	.loc 6 5869 23 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bltu	a4,a5,.L713
	.loc 6 5868 38 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L709:
	.loc 6 5868 25 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lhu	a5,0(a5)
	.loc 6 5868 29 discriminator 1
	bne	a5,zero,.L714
	.loc 6 5879 12
	lw	a5,-28(s0)
	.loc 6 5880 1
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
.LFE279:
	.size	ssl_check_no_sig_alg_duplication, .-ssl_check_no_sig_alg_duplication
	.section	.rodata
	.align	2
.LC93:
	.string	"ssl_preset_suiteb_sig_algs has duplicated entries\n"
	.align	2
.LC94:
	.string	"ssl_preset_default_sig_algs has duplicated entries\n"
	.align	2
.LC95:
	.string	"ssl_tls12_preset_suiteb_sig_algs has duplicated entries\n"
	.align	2
.LC96:
	.string	"ssl_tls12_preset_default_sig_algs has duplicated entries\n"
	.align	2
.LC0:
	.base64	"///////////JD9qiIWjCNMTGYouA3BzRKQJOCIpnzHQCC76mOxObIlFKCHmONATd75UZs806QxswKwpt8l8UN0/hNW1tUcJF5IW1dmJefsb0TELppjftawv/XLb0Brft7jhr+1qJn6WunyQRfEsf5kkoZlHs5Fs9wgB8uKFjvwWY2kg2HFXTmmkWP6j9JM9fg2VdI9yjrZYcYvNWIIVSu57VKQdwlpZtZww1Tkq8mATxdGwIyhghfDKQXkYuNs474553LBgOhgObJ4Oi7Aeij7XFXfBvTFLJ3ivL9pVYFxg5lUl86pVq5RXSJhiY+gUQFXKOWoqsqmj/////////"
	.ascii	"\377"
	.section	.text.mbedtls_ssl_config_defaults,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_config_defaults
	.type	mbedtls_ssl_config_defaults, @function
mbedtls_ssl_config_defaults:
.LFB280:
	.loc 6 5889 1
	.cfi_startproc
	addi	sp,sp,-304
	.cfi_def_cfa_offset 304
	sw	ra,300(sp)
	sw	s0,296(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,304
	.cfi_def_cfa 8, 0
	sw	a0,-292(s0)
	sw	a1,-296(s0)
	sw	a2,-300(s0)
	sw	a3,-304(s0)
	.loc 6 5891 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 6 5895 9
	lui	a5,%hi(ssl_preset_suiteb_sig_algs)
	addi	a0,a5,%lo(ssl_preset_suiteb_sig_algs)
	call	ssl_check_no_sig_alg_duplication
	mv	a5,a0
	.loc 6 5895 8 discriminator 1
	beq	a5,zero,.L718
	.loc 6 5896 9
	lui	a5,%hi(.LC93)
	addi	a0,a5,%lo(.LC93)
	call	printf
	.loc 6 5897 16
	li	a5,-110
	j	.L719
.L718:
	.loc 6 5900 9
	lui	a5,%hi(ssl_preset_default_sig_algs)
	addi	a0,a5,%lo(ssl_preset_default_sig_algs)
	call	ssl_check_no_sig_alg_duplication
	mv	a5,a0
	.loc 6 5900 8 discriminator 1
	beq	a5,zero,.L720
	.loc 6 5901 9
	lui	a5,%hi(.LC94)
	addi	a0,a5,%lo(.LC94)
	call	printf
	.loc 6 5902 16
	li	a5,-110
	j	.L719
.L720:
	.loc 6 5906 9
	lui	a5,%hi(ssl_tls12_preset_suiteb_sig_algs)
	addi	a0,a5,%lo(ssl_tls12_preset_suiteb_sig_algs)
	call	ssl_check_no_sig_alg_duplication
	mv	a5,a0
	.loc 6 5906 8 discriminator 1
	beq	a5,zero,.L721
	.loc 6 5907 9
	lui	a5,%hi(.LC95)
	addi	a0,a5,%lo(.LC95)
	call	printf
	.loc 6 5908 16
	li	a5,-110
	j	.L719
.L721:
	.loc 6 5911 9
	lui	a5,%hi(ssl_tls12_preset_default_sig_algs)
	addi	a0,a5,%lo(ssl_tls12_preset_default_sig_algs)
	call	ssl_check_no_sig_alg_duplication
	mv	a5,a0
	.loc 6 5911 8 discriminator 1
	beq	a5,zero,.L722
	.loc 6 5912 9
	lui	a5,%hi(.LC96)
	addi	a0,a5,%lo(.LC96)
	call	printf
	.loc 6 5913 16
	li	a5,-110
	j	.L719
.L722:
	.loc 6 5920 5
	lw	a1,-296(s0)
	lw	a0,-292(s0)
	call	mbedtls_ssl_conf_endpoint
	.loc 6 5921 5
	lw	a1,-300(s0)
	lw	a0,-292(s0)
	call	mbedtls_ssl_conf_transport
	.loc 6 5927 8
	lw	a5,-296(s0)
	bne	a5,zero,.L723
	.loc 6 5928 24
	lw	a5,-292(s0)
	li	a4,2
	sb	a4,6(a5)
	.loc 6 5930 9
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_ssl_conf_session_tickets
.L723:
	.loc 6 5962 28
	lw	a5,-292(s0)
	li	a4,1
	sb	a4,9(a5)
	.loc 6 5966 23
	lw	a5,-292(s0)
	li	a4,1
	sb	a4,10(a5)
	.loc 6 5970 26
	lw	a5,-292(s0)
	lui	a4,%hi(ssl_cookie_write_dummy)
	addi	a4,a4,%lo(ssl_cookie_write_dummy)
	sw	a4,76(a5)
	.loc 6 5971 26
	lw	a5,-292(s0)
	lui	a4,%hi(ssl_cookie_check_dummy)
	addi	a4,a4,%lo(ssl_cookie_check_dummy)
	sw	a4,80(a5)
	.loc 6 5975 23
	lw	a5,-292(s0)
	li	a4,1
	sb	a4,11(a5)
	.loc 6 5979 28
	lw	a5,-292(s0)
	li	a4,1
	sb	a4,14(a5)
	.loc 6 5980 28
	lw	a5,-292(s0)
	sb	zero,15(a5)
	.loc 6 5984 26
	lw	a5,-292(s0)
	li	a4,1000
	sw	a4,204(a5)
	.loc 6 5985 26
	lw	a5,-292(s0)
	li	a4,61440
	addi	a4,a4,-1440
	sw	a4,208(a5)
	.loc 6 5989 30
	lw	a5,-292(s0)
	li	a4,16
	sw	a4,212(a5)
	.loc 6 5990 16
	lw	a5,-292(s0)
	addi	a5,a5,216
	.loc 6 5990 5
	li	a2,2
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 6 5991 12
	lw	a5,-292(s0)
	addi	a5,a5,216
	.loc 6 5991 5
	addi	a5,a5,2
	li	a2,6
	li	a1,255
	mv	a0,a5
	call	memset
	.loc 6 5995 8
	lw	a4,-296(s0)
	li	a5,1
	bne	a4,a5,.L724
.LBB117:
	.loc 6 5996 29
	lui	a5,%hi(.LC0)
	addi	a4,a5,%lo(.LC0)
	addi	a5,s0,-280
	mv	a3,a4
	li	a4,256
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcpy
	.loc 6 5998 29
	li	a5,2
	sb	a5,-24(s0)
	.loc 6 6001 20
	addi	a3,s0,-24
	addi	a5,s0,-280
	li	a4,1
	li	a2,256
	mv	a1,a5
	lw	a0,-292(s0)
	call	mbedtls_ssl_conf_dh_param_bin
	sw	a0,-20(s0)
	.loc 6 6001 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L724
	.loc 6 6004 20
	lw	a5,-20(s0)
	j	.L719
.L724:
.LBE117:
	.loc 6 6028 8
	lw	a4,-300(s0)
	li	a5,1
	bne	a4,a5,.L726
	.loc 6 6030 31
	lw	a5,-292(s0)
	li	a4,771
	sh	a4,2(a5)
	.loc 6 6031 31
	lw	a5,-292(s0)
	li	a4,771
	sh	a4,0(a5)
	j	.L727
.L726:
	.loc 6 6043 31
	lw	a5,-292(s0)
	li	a4,771
	sh	a4,2(a5)
	.loc 6 6044 31
	lw	a5,-292(s0)
	li	a4,771
	sh	a4,0(a5)
.L727:
	.loc 6 6053 5
	lw	a4,-304(s0)
	li	a5,2
	bne	a4,a5,.L728
	.loc 6 6059 36
	lw	a5,-292(s0)
	lui	a4,%hi(ssl_preset_suiteb_ciphersuites)
	addi	a4,a4,%lo(ssl_preset_suiteb_ciphersuites)
	sw	a4,20(a5)
	.loc 6 6062 32
	lw	a5,-292(s0)
	lui	a4,%hi(mbedtls_x509_crt_profile_suiteb)
	addi	a4,a4,%lo(mbedtls_x509_crt_profile_suiteb)
	sw	a4,104(a5)
	.loc 6 6067 17
	lw	a0,-292(s0)
	call	mbedtls_ssl_conf_is_tls12_only
	mv	a5,a0
	.loc 6 6067 16 discriminator 1
	beq	a5,zero,.L729
	.loc 6 6068 32
	lw	a5,-292(s0)
	lui	a4,%hi(ssl_tls12_preset_suiteb_sig_algs)
	addi	a4,a4,%lo(ssl_tls12_preset_suiteb_sig_algs)
	sw	a4,148(a5)
	j	.L730
.L729:
	.loc 6 6071 28
	lw	a5,-292(s0)
	lui	a4,%hi(ssl_preset_suiteb_sig_algs)
	addi	a4,a4,%lo(ssl_preset_suiteb_sig_algs)
	sw	a4,148(a5)
.L730:
	.loc 6 6077 30
	lw	a5,-292(s0)
	lui	a4,%hi(ssl_preset_suiteb_groups)
	addi	a4,a4,%lo(ssl_preset_suiteb_groups)
	sw	a4,152(a5)
	.loc 6 6078 13
	j	.L731
.L728:
	.loc 6 6085 38
	call	mbedtls_ssl_list_ciphersuites
	mv	a4,a0
	.loc 6 6085 36 discriminator 1
	lw	a5,-292(s0)
	sw	a4,20(a5)
	.loc 6 6088 32
	lw	a5,-292(s0)
	lui	a4,%hi(mbedtls_x509_crt_profile_default)
	addi	a4,a4,%lo(mbedtls_x509_crt_profile_default)
	sw	a4,104(a5)
	.loc 6 6093 17
	lw	a0,-292(s0)
	call	mbedtls_ssl_conf_is_tls12_only
	mv	a5,a0
	.loc 6 6093 16 discriminator 1
	beq	a5,zero,.L732
	.loc 6 6094 32
	lw	a5,-292(s0)
	lui	a4,%hi(ssl_tls12_preset_default_sig_algs)
	addi	a4,a4,%lo(ssl_tls12_preset_default_sig_algs)
	sw	a4,148(a5)
	j	.L733
.L732:
	.loc 6 6097 28
	lw	a5,-292(s0)
	lui	a4,%hi(ssl_preset_default_sig_algs)
	addi	a4,a4,%lo(ssl_preset_default_sig_algs)
	sw	a4,148(a5)
.L733:
	.loc 6 6103 30
	lw	a5,-292(s0)
	lui	a4,%hi(ssl_preset_default_groups)
	addi	a4,a4,%lo(ssl_preset_default_groups)
	sw	a4,152(a5)
	.loc 6 6106 34
	lw	a5,-292(s0)
	li	a4,1024
	sw	a4,228(a5)
.L731:
	.loc 6 6110 12
	li	a5,0
.L719:
	.loc 6 6111 1
	mv	a0,a5
	lw	ra,300(sp)
	.cfi_restore 1
	lw	s0,296(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 304
	addi	sp,sp,304
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE280:
	.size	mbedtls_ssl_config_defaults, .-mbedtls_ssl_config_defaults
	.section	.text.mbedtls_ssl_config_free,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_config_free
	.type	mbedtls_ssl_config_free, @function
mbedtls_ssl_config_free:
.LFB281:
	.loc 6 6117 1
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
	.loc 6 6118 8
	lw	a5,-20(s0)
	beq	a5,zero,.L739
	.loc 6 6123 5
	lw	a5,-20(s0)
	addi	a5,a5,156
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 6 6124 5
	lw	a5,-20(s0)
	addi	a5,a5,164
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 6 6133 13
	lw	a5,-20(s0)
	lw	a5,172(a5)
	.loc 6 6133 8
	beq	a5,zero,.L737
	.loc 6 6134 38
	lw	a5,-20(s0)
	lw	a4,172(a5)
	.loc 6 6134 9
	lw	a5,-20(s0)
	lw	a5,176(a5)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_zeroize_and_free
	.loc 6 6135 19
	lw	a5,-20(s0)
	sw	zero,172(a5)
	.loc 6 6136 23
	lw	a5,-20(s0)
	sw	zero,176(a5)
.L737:
	.loc 6 6139 13
	lw	a5,-20(s0)
	lw	a5,180(a5)
	.loc 6 6139 8
	beq	a5,zero,.L738
	.loc 6 6140 38
	lw	a5,-20(s0)
	lw	a4,180(a5)
	.loc 6 6140 9
	lw	a5,-20(s0)
	lw	a5,184(a5)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_zeroize_and_free
	.loc 6 6141 28
	lw	a5,-20(s0)
	sw	zero,180(a5)
	.loc 6 6142 32
	lw	a5,-20(s0)
	sw	zero,184(a5)
.L738:
	.loc 6 6147 5
	lw	a5,-20(s0)
	lw	a5,108(a5)
	mv	a0,a5
	call	ssl_key_cert_free
	.loc 6 6150 5
	li	a1,244
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
	j	.L734
.L739:
	.loc 6 6119 9
	nop
.L734:
	.loc 6 6151 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE281:
	.size	mbedtls_ssl_config_free, .-mbedtls_ssl_config_free
	.section	.text.mbedtls_ssl_sig_from_pk,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_sig_from_pk
	.type	mbedtls_ssl_sig_from_pk, @function
mbedtls_ssl_sig_from_pk:
.LFB282:
	.loc 6 6159 1
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
	.loc 6 6161 9
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_pk_can_do
	mv	a5,a0
	.loc 6 6161 8 discriminator 1
	beq	a5,zero,.L741
	.loc 6 6162 16
	li	a5,1
	j	.L742
.L741:
	.loc 6 6166 9
	li	a1,4
	lw	a0,-20(s0)
	call	mbedtls_pk_can_do
	mv	a5,a0
	.loc 6 6166 8 discriminator 1
	beq	a5,zero,.L743
	.loc 6 6167 16
	li	a5,3
	j	.L742
.L743:
	.loc 6 6170 12
	li	a5,0
.L742:
	.loc 6 6171 1
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
.LFE282:
	.size	mbedtls_ssl_sig_from_pk, .-mbedtls_ssl_sig_from_pk
	.section	.text.mbedtls_ssl_sig_from_pk_alg,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_sig_from_pk_alg
	.type	mbedtls_ssl_sig_from_pk_alg, @function
mbedtls_ssl_sig_from_pk_alg:
.LFB283:
	.loc 6 6174 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 6 6175 5
	lbu	a5,-17(s0)
	li	a4,4
	beq	a5,a4,.L745
	li	a4,4
	bgt	a5,a4,.L746
	li	a4,1
	beq	a5,a4,.L747
	li	a4,2
	beq	a5,a4,.L745
	j	.L746
.L747:
	.loc 6 6177 20
	li	a5,1
	j	.L748
.L745:
	.loc 6 6180 20
	li	a5,3
	j	.L748
.L746:
	.loc 6 6182 20
	li	a5,0
.L748:
	.loc 6 6184 1
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
.LFE283:
	.size	mbedtls_ssl_sig_from_pk_alg, .-mbedtls_ssl_sig_from_pk_alg
	.section	.text.mbedtls_ssl_pk_alg_from_sig,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_pk_alg_from_sig
	.type	mbedtls_ssl_pk_alg_from_sig, @function
mbedtls_ssl_pk_alg_from_sig:
.LFB284:
	.loc 6 6187 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 6 6188 5
	lbu	a5,-17(s0)
	li	a4,1
	beq	a5,a4,.L750
	li	a4,3
	beq	a5,a4,.L751
	j	.L754
.L750:
	.loc 6 6191 20
	li	a5,1
	j	.L753
.L751:
	.loc 6 6195 20
	li	a5,4
	j	.L753
.L754:
	.loc 6 6198 20
	li	a5,0
.L753:
	.loc 6 6200 1
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
.LFE284:
	.size	mbedtls_ssl_pk_alg_from_sig, .-mbedtls_ssl_pk_alg_from_sig
	.section	.text.mbedtls_ssl_md_alg_from_hash,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_md_alg_from_hash
	.type	mbedtls_ssl_md_alg_from_hash, @function
mbedtls_ssl_md_alg_from_hash:
.LFB285:
	.loc 6 6208 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 6 6209 5
	lbu	a5,-17(s0)
	li	a4,6
	beq	a5,a4,.L756
	li	a4,6
	bgt	a5,a4,.L757
	li	a4,5
	beq	a5,a4,.L758
	li	a4,5
	bgt	a5,a4,.L757
	li	a4,4
	beq	a5,a4,.L759
	li	a4,4
	bgt	a5,a4,.L757
	li	a4,3
	beq	a5,a4,.L760
	li	a4,3
	bgt	a5,a4,.L757
	li	a4,1
	beq	a5,a4,.L761
	li	a4,2
	beq	a5,a4,.L762
	j	.L757
.L761:
	.loc 6 6212 20
	li	a5,3
	j	.L763
.L762:
	.loc 6 6216 20
	li	a5,5
	j	.L763
.L760:
	.loc 6 6220 20
	li	a5,8
	j	.L763
.L759:
	.loc 6 6224 20
	li	a5,9
	j	.L763
.L758:
	.loc 6 6228 20
	li	a5,10
	j	.L763
.L756:
	.loc 6 6232 20
	li	a5,11
	j	.L763
.L757:
	.loc 6 6235 20
	li	a5,0
.L763:
	.loc 6 6237 1
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
.LFE285:
	.size	mbedtls_ssl_md_alg_from_hash, .-mbedtls_ssl_md_alg_from_hash
	.section	.text.mbedtls_ssl_hash_from_md_alg,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_hash_from_md_alg
	.type	mbedtls_ssl_hash_from_md_alg, @function
mbedtls_ssl_hash_from_md_alg:
.LFB286:
	.loc 6 6243 1
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
	.loc 6 6244 5
	lw	a4,-20(s0)
	li	a5,11
	beq	a4,a5,.L765
	lw	a4,-20(s0)
	li	a5,11
	bgt	a4,a5,.L766
	lw	a4,-20(s0)
	li	a5,10
	beq	a4,a5,.L767
	lw	a4,-20(s0)
	li	a5,10
	bgt	a4,a5,.L766
	lw	a4,-20(s0)
	li	a5,9
	beq	a4,a5,.L768
	lw	a4,-20(s0)
	li	a5,9
	bgt	a4,a5,.L766
	lw	a4,-20(s0)
	li	a5,8
	beq	a4,a5,.L769
	lw	a4,-20(s0)
	li	a5,8
	bgt	a4,a5,.L766
	lw	a4,-20(s0)
	li	a5,3
	beq	a4,a5,.L770
	lw	a4,-20(s0)
	li	a5,5
	beq	a4,a5,.L771
	j	.L766
.L770:
	.loc 6 6247 20
	li	a5,1
	j	.L772
.L771:
	.loc 6 6251 20
	li	a5,2
	j	.L772
.L769:
	.loc 6 6255 20
	li	a5,3
	j	.L772
.L768:
	.loc 6 6259 20
	li	a5,4
	j	.L772
.L767:
	.loc 6 6263 20
	li	a5,5
	j	.L772
.L765:
	.loc 6 6267 20
	li	a5,6
	j	.L772
.L766:
	.loc 6 6270 20
	li	a5,0
.L772:
	.loc 6 6272 1
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
.LFE286:
	.size	mbedtls_ssl_hash_from_md_alg, .-mbedtls_ssl_hash_from_md_alg
	.section	.text.mbedtls_ssl_check_curve_tls_id,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_check_curve_tls_id
	.type	mbedtls_ssl_check_curve_tls_id, @function
mbedtls_ssl_check_curve_tls_id:
.LFB287:
	.loc 6 6279 1
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
	sh	a5,-38(s0)
	.loc 6 6280 34
	lw	a0,-36(s0)
	call	mbedtls_ssl_get_groups
	sw	a0,-20(s0)
	.loc 6 6282 8
	lw	a5,-20(s0)
	bne	a5,zero,.L776
	.loc 6 6283 16
	li	a5,-1
	j	.L775
.L778:
	.loc 6 6287 13
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	.loc 6 6287 12
	lhu	a4,-38(s0)
	bne	a4,a5,.L777
	.loc 6 6288 20
	li	a5,0
	j	.L775
.L777:
	.loc 6 6286 40
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
.L776:
	.loc 6 6286 12 discriminator 1
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	.loc 6 6286 24 discriminator 1
	bne	a5,zero,.L778
	.loc 6 6292 12
	li	a5,-1
.L775:
	.loc 6 6293 1
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
.LFE287:
	.size	mbedtls_ssl_check_curve_tls_id, .-mbedtls_ssl_check_curve_tls_id
	.section	.text.mbedtls_ssl_check_curve,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_check_curve
	.type	mbedtls_ssl_check_curve, @function
mbedtls_ssl_check_curve:
.LFB288:
	.loc 6 6300 1
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
	sb	a5,-37(s0)
	.loc 6 6301 23
	lbu	a5,-37(s0)
	mv	a0,a5
	call	mbedtls_ssl_get_tls_id_from_ecp_group_id
	mv	a5,a0
	sh	a5,-18(s0)
	.loc 6 6303 8
	lhu	a5,-18(s0)
	bne	a5,zero,.L780
	.loc 6 6304 16
	li	a5,-1
	j	.L781
.L780:
	.loc 6 6307 12
	lhu	a5,-18(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_ssl_check_curve_tls_id
	mv	a5,a0
.L781:
	.loc 6 6308 1
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
.LFE288:
	.size	mbedtls_ssl_check_curve, .-mbedtls_ssl_check_curve
	.section	.rodata.tls_id_match_table,"a"
	.align	2
	.type	tls_id_match_table, @object
	.size	tls_id_match_table, 84
tls_id_match_table:
	.half	25
	.byte	5
	.byte	18
	.half	521
	.half	28
	.byte	8
	.byte	48
	.half	512
	.half	24
	.byte	4
	.byte	18
	.half	384
	.half	27
	.byte	7
	.byte	48
	.half	384
	.half	23
	.byte	3
	.byte	18
	.half	256
	.half	22
	.byte	12
	.byte	23
	.half	256
	.half	26
	.byte	6
	.byte	48
	.half	256
	.half	21
	.byte	2
	.byte	18
	.half	224
	.half	20
	.byte	11
	.byte	23
	.half	224
	.half	19
	.byte	1
	.byte	18
	.half	192
	.half	18
	.byte	10
	.byte	23
	.half	192
	.half	29
	.byte	9
	.byte	65
	.half	255
	.half	30
	.byte	13
	.byte	65
	.half	448
	.half	0
	.byte	0
	.byte	0
	.half	0
	.section	.text.mbedtls_ssl_get_psa_curve_info_from_tls_id,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_psa_curve_info_from_tls_id
	.type	mbedtls_ssl_get_psa_curve_info_from_tls_id, @function
mbedtls_ssl_get_psa_curve_info_from_tls_id:
.LFB289:
	.loc 6 6363 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sh	a5,-34(s0)
.LBB118:
	.loc 6 6364 14
	sw	zero,-20(s0)
	.loc 6 6364 5
	j	.L783
.L788:
	.loc 6 6365 34
	lui	a5,%hi(tls_id_match_table)
	addi	a3,a5,%lo(tls_id_match_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a3,a5
	lhu	a5,0(a5)
	.loc 6 6365 12
	lhu	a4,-34(s0)
	bne	a4,a5,.L784
	.loc 6 6366 16
	lw	a5,-40(s0)
	beq	a5,zero,.L785
	.loc 6 6367 76
	lui	a5,%hi(tls_id_match_table)
	addi	a3,a5,%lo(tls_id_match_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a3,a5
	lbu	a5,3(a5)
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 6 6367 52
	li	a5,28672
	addi	a5,a5,256
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 6 6367 23
	lw	a5,-40(s0)
	sh	a4,0(a5)
.L785:
	.loc 6 6369 16
	lw	a5,-44(s0)
	beq	a5,zero,.L786
	.loc 6 6370 46
	lui	a5,%hi(tls_id_match_table)
	addi	a3,a5,%lo(tls_id_match_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a3,a5
	lhu	a5,4(a5)
	mv	a4,a5
	.loc 6 6370 23
	lw	a5,-44(s0)
	sw	a4,0(a5)
.L786:
	.loc 6 6372 20
	li	a5,0
	j	.L787
.L784:
	.loc 6 6364 57 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L783:
	.loc 6 6364 42 discriminator 1
	lui	a5,%hi(tls_id_match_table)
	addi	a3,a5,%lo(tls_id_match_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a3,a5
	lhu	a5,0(a5)
	.loc 6 6364 50 discriminator 1
	bne	a5,zero,.L788
.LBE118:
	.loc 6 6376 12
	li	a5,-134
.L787:
	.loc 6 6377 1
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
.LFE289:
	.size	mbedtls_ssl_get_psa_curve_info_from_tls_id, .-mbedtls_ssl_get_psa_curve_info_from_tls_id
	.section	.text.mbedtls_ssl_get_ecp_group_id_from_tls_id,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_ecp_group_id_from_tls_id
	.type	mbedtls_ssl_get_ecp_group_id_from_tls_id, @function
mbedtls_ssl_get_ecp_group_id_from_tls_id:
.LFB290:
	.loc 6 6380 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sh	a5,-34(s0)
.LBB119:
	.loc 6 6381 14
	sw	zero,-20(s0)
	.loc 6 6381 5
	j	.L790
.L793:
	.loc 6 6382 34
	lui	a5,%hi(tls_id_match_table)
	addi	a3,a5,%lo(tls_id_match_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a3,a5
	lhu	a5,0(a5)
	.loc 6 6382 12
	lhu	a4,-34(s0)
	bne	a4,a5,.L791
	.loc 6 6383 41
	lui	a5,%hi(tls_id_match_table)
	addi	a3,a5,%lo(tls_id_match_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a3,a5
	lbu	a5,2(a5)
	j	.L792
.L791:
	.loc 6 6381 57 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L790:
	.loc 6 6381 42 discriminator 1
	lui	a5,%hi(tls_id_match_table)
	addi	a3,a5,%lo(tls_id_match_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a3,a5
	lhu	a5,0(a5)
	.loc 6 6381 50 discriminator 1
	bne	a5,zero,.L793
.LBE119:
	.loc 6 6387 12
	li	a5,0
.L792:
	.loc 6 6388 1
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
.LFE290:
	.size	mbedtls_ssl_get_ecp_group_id_from_tls_id, .-mbedtls_ssl_get_ecp_group_id_from_tls_id
	.section	.text.mbedtls_ssl_get_tls_id_from_ecp_group_id,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_tls_id_from_ecp_group_id
	.type	mbedtls_ssl_get_tls_id_from_ecp_group_id, @function
mbedtls_ssl_get_tls_id_from_ecp_group_id:
.LFB291:
	.loc 6 6391 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-33(s0)
.LBB120:
	.loc 6 6392 14
	sw	zero,-20(s0)
	.loc 6 6392 5
	j	.L795
.L798:
	.loc 6 6394 34
	lui	a5,%hi(tls_id_match_table)
	addi	a3,a5,%lo(tls_id_match_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a3,a5
	lbu	a5,2(a5)
	.loc 6 6394 12
	lbu	a4,-33(s0)
	bne	a4,a5,.L796
	.loc 6 6395 41
	lui	a5,%hi(tls_id_match_table)
	addi	a3,a5,%lo(tls_id_match_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a3,a5
	lhu	a5,0(a5)
	j	.L797
.L796:
	.loc 6 6393 11
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L795:
	.loc 6 6392 42 discriminator 1
	lui	a5,%hi(tls_id_match_table)
	addi	a3,a5,%lo(tls_id_match_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a3,a5
	lbu	a5,2(a5)
	.loc 6 6392 56 discriminator 1
	bne	a5,zero,.L798
.LBE120:
	.loc 6 6399 12
	li	a5,0
.L797:
	.loc 6 6400 1
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
.LFE291:
	.size	mbedtls_ssl_get_tls_id_from_ecp_group_id, .-mbedtls_ssl_get_tls_id_from_ecp_group_id
	.section	.rodata
	.align	2
.LC97:
	.string	"secp521r1"
	.align	2
.LC98:
	.string	"brainpoolP512r1"
	.align	2
.LC99:
	.string	"secp384r1"
	.align	2
.LC100:
	.string	"brainpoolP384r1"
	.align	2
.LC101:
	.string	"secp256r1"
	.align	2
.LC102:
	.string	"secp256k1"
	.align	2
.LC103:
	.string	"brainpoolP256r1"
	.align	2
.LC104:
	.string	"secp224r1"
	.align	2
.LC105:
	.string	"secp224k1"
	.align	2
.LC106:
	.string	"secp192r1"
	.align	2
.LC107:
	.string	"secp192k1"
	.align	2
.LC108:
	.string	"x25519"
	.align	2
.LC109:
	.string	"x448"
	.section	.rodata.tls_id_curve_name_table,"a"
	.align	2
	.type	tls_id_curve_name_table, @object
	.size	tls_id_curve_name_table, 112
tls_id_curve_name_table:
	.half	25
	.zero	2
	.word	.LC97
	.half	28
	.zero	2
	.word	.LC98
	.half	24
	.zero	2
	.word	.LC99
	.half	27
	.zero	2
	.word	.LC100
	.half	23
	.zero	2
	.word	.LC101
	.half	22
	.zero	2
	.word	.LC102
	.half	26
	.zero	2
	.word	.LC103
	.half	21
	.zero	2
	.word	.LC104
	.half	20
	.zero	2
	.word	.LC105
	.half	19
	.zero	2
	.word	.LC106
	.half	18
	.zero	2
	.word	.LC107
	.half	29
	.zero	2
	.word	.LC108
	.half	30
	.zero	2
	.word	.LC109
	.half	0
	.zero	2
	.word	0
	.section	.text.mbedtls_ssl_get_curve_name_from_tls_id,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_curve_name_from_tls_id
	.type	mbedtls_ssl_get_curve_name_from_tls_id, @function
mbedtls_ssl_get_curve_name_from_tls_id:
.LFB292:
	.loc 6 6425 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sh	a5,-34(s0)
.LBB121:
	.loc 6 6426 14
	sw	zero,-20(s0)
	.loc 6 6426 5
	j	.L800
.L803:
	.loc 6 6427 39
	lui	a5,%hi(tls_id_curve_name_table)
	addi	a4,a5,%lo(tls_id_curve_name_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lhu	a5,0(a5)
	.loc 6 6427 12
	lhu	a4,-34(s0)
	bne	a4,a5,.L801
	.loc 6 6428 46
	lui	a5,%hi(tls_id_curve_name_table)
	addi	a4,a5,%lo(tls_id_curve_name_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a5,4(a5)
	j	.L802
.L801:
	.loc 6 6426 62 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L800:
	.loc 6 6426 47 discriminator 1
	lui	a5,%hi(tls_id_curve_name_table)
	addi	a4,a5,%lo(tls_id_curve_name_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lhu	a5,0(a5)
	.loc 6 6426 55 discriminator 1
	bne	a5,zero,.L803
.LBE121:
	.loc 6 6432 11
	li	a5,0
.L802:
	.loc 6 6433 1
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
.LFE292:
	.size	mbedtls_ssl_get_curve_name_from_tls_id, .-mbedtls_ssl_get_curve_name_from_tls_id
	.section	.rodata
	.align	2
.LC110:
	.string	"mbedtls_md_finish"
	.section	.text.ssl_get_handshake_transcript_sha384,"ax",@progbits
	.align	1
	.type	ssl_get_handshake_transcript_sha384, @function
ssl_get_handshake_transcript_sha384:
.LFB293:
	.loc 6 6491 1
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
	sw	a3,-48(s0)
	.loc 6 6495 8
	lw	a4,-44(s0)
	li	a5,47
	bgtu	a4,a5,.L805
	.loc 6 6496 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L811
.L805:
	.loc 6 6499 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_md_init
	.loc 6 6500 11
	li	a0,10
	call	mbedtls_md_info_from_type
	mv	a4,a0
	.loc 6 6500 11 is_stmt 0 discriminator 1
	addi	a5,s0,-32
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_setup
	sw	a0,-20(s0)
	.loc 6 6501 8 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L812
	.loc 6 6504 41
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 6504 37
	addi	a4,a5,720
	.loc 6 6504 11
	addi	a5,s0,-32
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_clone
	sw	a0,-20(s0)
	.loc 6 6505 8
	lw	a5,-20(s0)
	bne	a5,zero,.L813
	.loc 6 6509 16
	addi	a5,s0,-32
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_md_finish
	sw	a0,-20(s0)
	.loc 6 6509 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L810
	.loc 6 6510 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC110)
	addi	a4,a4,%lo(.LC110)
	li	a3,8192
	addi	a3,a3,-1682
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 6 6511 9
	j	.L808
.L810:
	.loc 6 6514 11
	lw	a5,-48(s0)
	li	a4,48
	sw	a4,0(a5)
	j	.L808
.L812:
	.loc 6 6502 9
	nop
	j	.L808
.L813:
	.loc 6 6506 9
	nop
.L808:
	.loc 6 6518 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_md_free
	.loc 6 6519 12
	lw	a5,-20(s0)
.L811:
	.loc 6 6520 1
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
.LFE293:
	.size	ssl_get_handshake_transcript_sha384, .-ssl_get_handshake_transcript_sha384
	.section	.text.ssl_get_handshake_transcript_sha256,"ax",@progbits
	.align	1
	.type	ssl_get_handshake_transcript_sha256, @function
ssl_get_handshake_transcript_sha256:
.LFB294:
	.loc 6 6529 1
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
	sw	a3,-48(s0)
	.loc 6 6533 8
	lw	a4,-44(s0)
	li	a5,31
	bgtu	a4,a5,.L815
	.loc 6 6534 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L821
.L815:
	.loc 6 6537 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_md_init
	.loc 6 6538 11
	li	a0,9
	call	mbedtls_md_info_from_type
	mv	a4,a0
	.loc 6 6538 11 is_stmt 0 discriminator 1
	addi	a5,s0,-32
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_setup
	sw	a0,-20(s0)
	.loc 6 6539 8 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L822
	.loc 6 6542 41
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 6542 37
	addi	a4,a5,708
	.loc 6 6542 11
	addi	a5,s0,-32
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_clone
	sw	a0,-20(s0)
	.loc 6 6543 8
	lw	a5,-20(s0)
	bne	a5,zero,.L823
	.loc 6 6547 16
	addi	a5,s0,-32
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_md_finish
	sw	a0,-20(s0)
	.loc 6 6547 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L820
	.loc 6 6548 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC110)
	addi	a4,a4,%lo(.LC110)
	li	a3,8192
	addi	a3,a3,-1644
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 6 6549 9
	j	.L818
.L820:
	.loc 6 6552 11
	lw	a5,-48(s0)
	li	a4,32
	sw	a4,0(a5)
	j	.L818
.L822:
	.loc 6 6540 9
	nop
	j	.L818
.L823:
	.loc 6 6544 9
	nop
.L818:
	.loc 6 6556 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_md_free
	.loc 6 6557 12
	lw	a5,-20(s0)
.L821:
	.loc 6 6558 1
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
.LFE294:
	.size	ssl_get_handshake_transcript_sha256, .-ssl_get_handshake_transcript_sha256
	.section	.text.mbedtls_ssl_get_handshake_transcript,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_handshake_transcript
	.type	mbedtls_ssl_get_handshake_transcript, @function
mbedtls_ssl_get_handshake_transcript:
.LFB295:
	.loc 6 6566 1
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
	mv	a5,a1
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sb	a5,-21(s0)
	.loc 6 6567 5
	lbu	a5,-21(s0)
	li	a4,9
	beq	a5,a4,.L825
	li	a4,10
	bne	a5,a4,.L829
	.loc 6 6571 20
	lw	a3,-36(s0)
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	lw	a0,-20(s0)
	call	ssl_get_handshake_transcript_sha384
	mv	a5,a0
	j	.L827
.L825:
	.loc 6 6576 20
	lw	a3,-36(s0)
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	lw	a0,-20(s0)
	call	ssl_get_handshake_transcript_sha256
	mv	a5,a0
	j	.L827
.L829:
	.loc 6 6587 13
	nop
	.loc 6 6589 12
	li	a5,-28672
	addi	a5,a5,1024
.L827:
	.loc 6 6590 1
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
.LFE295:
	.size	mbedtls_ssl_get_handshake_transcript, .-mbedtls_ssl_get_handshake_transcript
	.section	.rodata
	.align	2
.LC111:
	.string	"missing input data in %s"
	.align	2
.LC112:
	.string	"received signature algorithm: 0x%x %s"
	.align	2
.LC113:
	.string	"valid signature algorithm: %s"
	.align	2
.LC114:
	.string	"Signature algorithms extension length misaligned"
	.align	2
.LC115:
	.string	"no signature algorithm in common"
	.section	.text.mbedtls_ssl_parse_sig_alg_ext,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_parse_sig_alg_ext
	.type	mbedtls_ssl_parse_sig_alg_ext, @function
mbedtls_ssl_parse_sig_alg_ext:
.LFB296:
	.loc 6 6638 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	.loc 6 6639 26
	lw	a5,-72(s0)
	sw	a5,-20(s0)
	.loc 6 6640 12
	sw	zero,-28(s0)
	.loc 6 6643 14
	sw	zero,-24(s0)
	.loc 6 6645 14
	li	a2,2
	lw	a1,-76(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 6 6645 13 discriminator 1
	beq	a5,zero,.L831
	.loc 6 6645 63 discriminator 2
	lui	a5,%hi(__func__.2)
	addi	a5,a5,%lo(__func__.2)
	lui	a4,%hi(.LC111)
	addi	a4,a4,%lo(.LC111)
	li	a3,8192
	addi	a3,a3,-1547
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 6645 226 discriminator 3
	li	a5,-28672
	addi	a2,a5,-768
	li	a1,50
	lw	a0,-68(s0)
	call	mbedtls_ssl_pend_fatal_alert
	.loc 6 6645 281 discriminator 4
	li	a5,-28672
	addi	a5,a5,-768
	.loc 6 6645 281 is_stmt 0
	j	.L832
.L831:
	lw	a5,-20(s0)
	sw	a5,-40(s0)
.LBB122:
.LBB123:
	.loc 7 122 33 is_stmt 1
	lw	a5,-40(s0)
	sw	a5,-44(s0)
	.loc 7 123 7
	lw	a5,-44(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-46(s0)
	.loc 7 127 12
	lhu	a5,-46(s0)
.LBE123:
.LBE122:
	.loc 6 6646 79 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 6 6646 28 discriminator 2
	sw	a5,-28(s0)
	.loc 6 6647 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 6 6649 15
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 6 6649 26
	addi	a5,a5,44
	.loc 6 6649 5
	li	a2,40
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 6 6652 14
	lw	a2,-28(s0)
	lw	a1,-76(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 6 6652 13 discriminator 1
	beq	a5,zero,.L834
	.loc 6 6652 84 discriminator 2
	lui	a5,%hi(__func__.2)
	addi	a5,a5,%lo(__func__.2)
	lui	a4,%hi(.LC111)
	addi	a4,a4,%lo(.LC111)
	li	a3,8192
	addi	a3,a3,-1540
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 6652 247 discriminator 3
	li	a5,-28672
	addi	a2,a5,-768
	li	a1,50
	lw	a0,-68(s0)
	call	mbedtls_ssl_pend_fatal_alert
	.loc 6 6652 302 discriminator 4
	li	a5,-28672
	addi	a5,a5,-768
	.loc 6 6652 302 is_stmt 0
	j	.L832
.L834:
	.loc 6 6653 28 is_stmt 1
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 6 6654 11
	j	.L835
.L841:
	.loc 6 6655 18
	li	a2,2
	lw	a1,-32(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 6 6655 17 discriminator 1
	beq	a5,zero,.L836
	.loc 6 6655 86 discriminator 2
	lui	a5,%hi(__func__.2)
	addi	a5,a5,%lo(__func__.2)
	lui	a4,%hi(.LC111)
	addi	a4,a4,%lo(.LC111)
	li	a3,8192
	addi	a3,a3,-1537
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 6655 249 discriminator 3
	li	a5,-28672
	addi	a2,a5,-768
	li	a1,50
	lw	a0,-68(s0)
	call	mbedtls_ssl_pend_fatal_alert
	.loc 6 6655 304 discriminator 4
	li	a5,-28672
	addi	a5,a5,-768
	.loc 6 6655 304 is_stmt 0
	j	.L832
.L836:
	lw	a5,-20(s0)
	sw	a5,-52(s0)
.LBB124:
.LBB125:
	.loc 7 122 33 is_stmt 1
	lw	a5,-52(s0)
	sw	a5,-56(s0)
	.loc 7 123 7
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-58(s0)
	.loc 7 127 12
	lhu	a5,-58(s0)
.LBE125:
.LBE124:
	.loc 6 6656 68 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	sh	a5,-34(s0)
	.loc 6 6657 11
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 6 6658 9
	lhu	s1,-34(s0)
	lhu	a5,-34(s0)
	mv	a0,a5
	call	mbedtls_ssl_sig_alg_to_str
	mv	a5,a0
	.loc 6 6658 9 is_stmt 0 discriminator 1
	mv	a6,a5
	mv	a5,s1
	lui	a4,%hi(.LC112)
	addi	a4,a4,%lo(.LC112)
	li	a3,8192
	addi	a3,a3,-1534
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,4
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 6662 16 is_stmt 1
	lw	a5,-68(s0)
	lhu	a4,16(a5)
	.loc 6 6662 12
	li	a5,771
	bne	a4,a5,.L838
	.loc 6 6663 16
	lhu	a5,-34(s0)
	mv	a1,a5
	lw	a0,-68(s0)
	call	mbedtls_ssl_sig_alg_is_supported
	mv	a5,a0
	.loc 6 6662 60 discriminator 1
	beq	a5,zero,.L844
	.loc 6 6664 16
	lhu	a5,-34(s0)
	mv	a1,a5
	lw	a0,-68(s0)
	call	mbedtls_ssl_sig_alg_is_offered
	mv	a5,a0
	.loc 6 6663 14
	beq	a5,zero,.L844
.L838:
	.loc 6 6669 9
	lhu	a5,-34(s0)
	mv	a0,a5
	call	mbedtls_ssl_sig_alg_to_str
	mv	a5,a0
	.loc 6 6669 9 is_stmt 0 discriminator 1
	lui	a4,%hi(.LC113)
	addi	a4,a4,%lo(.LC113)
	li	a3,8192
	addi	a3,a3,-1523
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,4
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 6672 24 is_stmt 1
	lw	a5,-24(s0)
	addi	a4,a5,1
	.loc 6 6672 12
	li	a5,19
	bgtu	a4,a5,.L835
	.loc 6 6673 16
	lw	a5,-68(s0)
	lw	a4,64(a5)
	.loc 6 6673 59
	lw	a5,-24(s0)
	addi	a5,a5,16
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a4,-34(s0)
	sh	a4,12(a5)
	.loc 6 6674 24
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	j	.L835
.L844:
	.loc 6 6665 13
	nop
.L835:
	.loc 6 6654 14
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	bltu	a4,a5,.L841
	.loc 6 6678 8
	lw	a4,-20(s0)
	lw	a5,-76(s0)
	beq	a4,a5,.L842
	.loc 6 6679 9
	lui	a5,%hi(.LC114)
	addi	a4,a5,%lo(.LC114)
	li	a5,8192
	addi	a3,a5,-1513
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 6681 9
	li	a5,-28672
	addi	a2,a5,-768
	li	a1,50
	lw	a0,-68(s0)
	call	mbedtls_ssl_pend_fatal_alert
	.loc 6 6683 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L832
.L842:
	.loc 6 6686 8
	lw	a5,-24(s0)
	bne	a5,zero,.L843
	.loc 6 6687 9
	lui	a5,%hi(.LC115)
	addi	a4,a5,%lo(.LC115)
	li	a5,8192
	addi	a3,a5,-1505
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 6688 9
	li	a5,-28672
	addi	a2,a5,512
	li	a1,40
	lw	a0,-68(s0)
	call	mbedtls_ssl_pend_fatal_alert
	.loc 6 6690 16
	li	a5,-28672
	addi	a5,a5,512
	j	.L832
.L843:
	.loc 6 6693 8
	lw	a5,-68(s0)
	lw	a4,64(a5)
	.loc 6 6693 51
	lw	a5,-24(s0)
	addi	a5,a5,16
	slli	a5,a5,1
	add	a5,a4,a5
	sh	zero,12(a5)
	.loc 6 6694 12
	li	a5,0
.L832:
	.loc 6 6695 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE296:
	.size	mbedtls_ssl_parse_sig_alg_ext, .-mbedtls_ssl_parse_sig_alg_ext
	.section	.text.tls_prf_generic,"ax",@progbits
	.align	1
	.type	tls_prf_generic, @function
tls_prf_generic:
.LFB297:
	.loc 6 6855 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	a1,-136(s0)
	sw	a2,-140(s0)
	sw	a3,-144(s0)
	sw	a4,-148(s0)
	sw	a5,-152(s0)
	sw	a6,-156(s0)
	sw	a7,-160(s0)
	mv	a5,a0
	sb	a5,-129(s0)
	.loc 6 6859 12
	sw	zero,-36(s0)
	.loc 6 6863 9
	li	a5,-110
	sw	a5,-32(s0)
	.loc 6 6865 5
	addi	a5,s0,-128
	mv	a0,a5
	call	mbedtls_md_init
	.loc 6 6867 20
	lbu	a5,-129(s0)
	mv	a0,a5
	call	mbedtls_md_info_from_type
	sw	a0,-40(s0)
	.loc 6 6867 8 discriminator 1
	lw	a5,-40(s0)
	bne	a5,zero,.L846
	.loc 6 6868 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L867
.L846:
	.loc 6 6871 14
	lw	a0,-40(s0)
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 6 6871 12 discriminator 1
	sw	a5,-44(s0)
	.loc 6 6873 22
	lw	a4,-44(s0)
	lw	a5,-148(s0)
	add	a5,a4,a5
	.loc 6 6873 13
	lw	a4,-156(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 6 6874 11
	lw	a1,-36(s0)
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-48(s0)
	.loc 6 6875 8
	lw	a5,-48(s0)
	bne	a5,zero,.L848
	.loc 6 6876 13
	li	a5,-32768
	addi	a5,a5,256
	sw	a5,-32(s0)
	.loc 6 6877 9
	j	.L849
.L848:
	.loc 6 6880 8
	lw	a5,-148(s0)
	sw	a5,-52(s0)
	.loc 6 6881 16
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	.loc 6 6881 5
	lw	a2,-52(s0)
	lw	a1,-144(s0)
	mv	a0,a5
	call	memcpy
	.loc 6 6882 25
	lw	a4,-44(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	lw	a4,-48(s0)
	add	a5,a4,a5
	.loc 6 6882 5
	lw	a2,-156(s0)
	lw	a1,-152(s0)
	mv	a0,a5
	call	memcpy
	.loc 6 6883 8
	lw	a4,-52(s0)
	lw	a5,-156(s0)
	add	a5,a4,a5
	sw	a5,-52(s0)
	.loc 6 6888 16
	addi	a5,s0,-128
	li	a2,1
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_md_setup
	sw	a0,-32(s0)
	.loc 6 6888 8 discriminator 1
	lw	a5,-32(s0)
	bne	a5,zero,.L868
	.loc 6 6892 11
	addi	a5,s0,-128
	lw	a2,-140(s0)
	lw	a1,-136(s0)
	mv	a0,a5
	call	mbedtls_md_hmac_starts
	sw	a0,-32(s0)
	.loc 6 6893 8
	lw	a5,-32(s0)
	bne	a5,zero,.L869
	.loc 6 6896 47
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	add	a4,a4,a5
	.loc 6 6896 11
	addi	a5,s0,-128
	lw	a2,-52(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_hmac_update
	sw	a0,-32(s0)
	.loc 6 6897 8
	lw	a5,-32(s0)
	bne	a5,zero,.L870
	.loc 6 6900 11
	addi	a5,s0,-128
	lw	a1,-48(s0)
	mv	a0,a5
	call	mbedtls_md_hmac_finish
	sw	a0,-32(s0)
	.loc 6 6901 8
	lw	a5,-32(s0)
	bne	a5,zero,.L871
	.loc 6 6905 12
	sw	zero,-20(s0)
	.loc 6 6905 5
	j	.L854
.L865:
	.loc 6 6906 15
	addi	a5,s0,-128
	mv	a0,a5
	call	mbedtls_md_hmac_reset
	sw	a0,-32(s0)
	.loc 6 6907 12
	lw	a5,-32(s0)
	bne	a5,zero,.L872
	.loc 6 6910 15
	lw	a4,-44(s0)
	lw	a5,-52(s0)
	add	a4,a4,a5
	addi	a5,s0,-128
	mv	a2,a4
	lw	a1,-48(s0)
	mv	a0,a5
	call	mbedtls_md_hmac_update
	sw	a0,-32(s0)
	.loc 6 6911 12
	lw	a5,-32(s0)
	bne	a5,zero,.L873
	.loc 6 6914 15
	addi	a4,s0,-116
	addi	a5,s0,-128
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_hmac_finish
	sw	a0,-32(s0)
	.loc 6 6915 12
	lw	a5,-32(s0)
	bne	a5,zero,.L874
	.loc 6 6919 15
	addi	a5,s0,-128
	mv	a0,a5
	call	mbedtls_md_hmac_reset
	sw	a0,-32(s0)
	.loc 6 6920 12
	lw	a5,-32(s0)
	bne	a5,zero,.L875
	.loc 6 6923 15
	addi	a5,s0,-128
	lw	a2,-44(s0)
	lw	a1,-48(s0)
	mv	a0,a5
	call	mbedtls_md_hmac_update
	sw	a0,-32(s0)
	.loc 6 6924 12
	lw	a5,-32(s0)
	bne	a5,zero,.L876
	.loc 6 6927 15
	addi	a5,s0,-128
	lw	a1,-48(s0)
	mv	a0,a5
	call	mbedtls_md_hmac_finish
	sw	a0,-32(s0)
	.loc 6 6928 12
	lw	a5,-32(s0)
	bne	a5,zero,.L877
	.loc 6 6932 16
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	.loc 6 6932 49
	lw	a4,0(s0)
	bgeu	a4,a5,.L861
	.loc 6 6932 11 discriminator 1
	lw	a4,0(s0)
	lw	a5,-44(s0)
	remu	a5,a4,a5
	sw	a5,-28(s0)
	j	.L862
.L861:
	.loc 6 6932 11 is_stmt 0 discriminator 2
	lw	a5,-44(s0)
	sw	a5,-28(s0)
.L862:
	.loc 6 6934 16 is_stmt 1
	sw	zero,-24(s0)
	.loc 6 6934 9
	j	.L863
.L864:
	.loc 6 6935 22
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 6 6935 19
	lw	a4,-160(s0)
	add	a5,a4,a5
	.loc 6 6935 32
	lw	a4,-24(s0)
	addi	a4,a4,-16
	add	a4,a4,s0
	lbu	a4,-100(a4)
	.loc 6 6935 27
	sb	a4,0(a5)
	.loc 6 6934 29 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L863:
	.loc 6 6934 23 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	bltu	a4,a5,.L864
	.loc 6 6905 29 discriminator 2
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L854:
	.loc 6 6905 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,0(s0)
	bltu	a4,a5,.L865
	.loc 6 6939 1
	j	.L849
.L868:
	.loc 6 6889 9
	nop
	j	.L849
.L869:
	.loc 6 6894 9
	nop
	j	.L849
.L870:
	.loc 6 6898 9
	nop
	j	.L849
.L871:
	.loc 6 6902 9
	nop
	j	.L849
.L872:
	.loc 6 6908 13
	nop
	j	.L849
.L873:
	.loc 6 6912 13
	nop
	j	.L849
.L874:
	.loc 6 6916 13
	nop
	j	.L849
.L875:
	.loc 6 6921 13
	nop
	j	.L849
.L876:
	.loc 6 6925 13
	nop
	j	.L849
.L877:
	.loc 6 6929 13
	nop
.L849:
	.loc 6 6940 5
	addi	a5,s0,-128
	mv	a0,a5
	call	mbedtls_md_free
	.loc 6 6942 8
	lw	a5,-48(s0)
	beq	a5,zero,.L866
	.loc 6 6943 9
	lw	a1,-36(s0)
	lw	a0,-48(s0)
	call	mbedtls_platform_zeroize
.L866:
	.loc 6 6946 5
	addi	a5,s0,-116
	li	a1,64
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 6 6948 5
	lw	a0,-48(s0)
	call	free
	.loc 6 6950 12
	lw	a5,-32(s0)
.L867:
	.loc 6 6951 1
	mv	a0,a5
	lw	ra,156(sp)
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE297:
	.size	tls_prf_generic, .-tls_prf_generic
	.section	.text.tls_prf_sha256,"ax",@progbits
	.align	1
	.type	tls_prf_sha256, @function
tls_prf_sha256:
.LFB298:
	.loc 6 6961 1
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
	.loc 6 6962 12
	lw	a0,-28(s0)
	call	strlen
	mv	a4,a0
	.loc 6 6962 12 is_stmt 0 discriminator 1
	lw	a5,-44(s0)
	sw	a5,0(sp)
	lw	a7,-40(s0)
	lw	a6,-36(s0)
	lw	a5,-32(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	li	a0,9
	call	tls_prf_generic
	mv	a5,a0
	.loc 6 6964 1 is_stmt 1
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
.LFE298:
	.size	tls_prf_sha256, .-tls_prf_sha256
	.section	.text.tls_prf_sha384,"ax",@progbits
	.align	1
	.type	tls_prf_sha384, @function
tls_prf_sha384:
.LFB299:
	.loc 6 6973 1
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
	.loc 6 6974 12
	lw	a0,-28(s0)
	call	strlen
	mv	a4,a0
	.loc 6 6974 12 is_stmt 0 discriminator 1
	lw	a5,-44(s0)
	sw	a5,0(sp)
	lw	a7,-40(s0)
	lw	a6,-36(s0)
	lw	a5,-32(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	li	a0,10
	call	tls_prf_generic
	mv	a5,a0
	.loc 6 6976 1 is_stmt 1
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
.LFE299:
	.size	tls_prf_sha384, .-tls_prf_sha384
	.section	.text.ssl_set_handshake_prfs,"ax",@progbits
	.align	1
	.type	ssl_set_handshake_prfs, @function
ssl_set_handshake_prfs:
.LFB300:
	.loc 6 6991 1
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
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 6 6993 8
	lbu	a4,-21(s0)
	li	a5,10
	bne	a4,a5,.L883
	.loc 6 6994 28
	lw	a5,-20(s0)
	lui	a4,%hi(tls_prf_sha384)
	addi	a4,a4,%lo(tls_prf_sha384)
	sw	a4,40(a5)
	.loc 6 6995 32
	lw	a5,-20(s0)
	lui	a4,%hi(ssl_calc_verify_tls_sha384)
	addi	a4,a4,%lo(ssl_calc_verify_tls_sha384)
	sw	a4,32(a5)
	.loc 6 6996 34
	lw	a5,-20(s0)
	lui	a4,%hi(ssl_calc_finished_tls_sha384)
	addi	a4,a4,%lo(ssl_calc_finished_tls_sha384)
	sw	a4,36(a5)
	j	.L884
.L883:
	.loc 6 7002 28
	lw	a5,-20(s0)
	lui	a4,%hi(tls_prf_sha256)
	addi	a4,a4,%lo(tls_prf_sha256)
	sw	a4,40(a5)
	.loc 6 7003 32
	lw	a5,-20(s0)
	lui	a4,%hi(ssl_calc_verify_tls_sha256)
	addi	a4,a4,%lo(ssl_calc_verify_tls_sha256)
	sw	a4,32(a5)
	.loc 6 7004 34
	lw	a5,-20(s0)
	lui	a4,%hi(ssl_calc_finished_tls_sha256)
	addi	a4,a4,%lo(ssl_calc_finished_tls_sha256)
	sw	a4,36(a5)
.L884:
	.loc 6 7014 12
	li	a5,0
	.loc 6 7015 1
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
.LFE300:
	.size	ssl_set_handshake_prfs, .-ssl_set_handshake_prfs
	.section	.rodata
	.align	2
.LC116:
	.string	"master secret"
	.align	2
.LC117:
	.string	"no premaster (session resumed)"
	.align	2
.LC118:
	.string	"extended master secret"
	.align	2
.LC119:
	.string	"calc_verify"
	.align	2
.LC120:
	.string	"session hash for extended master secret"
	.align	2
.LC121:
	.string	"prf"
	.align	2
.LC122:
	.string	"premaster secret"
	.section	.text.ssl_compute_master,"ax",@progbits
	.align	1
	.type	ssl_compute_master, @function
ssl_compute_master:
.LFB301:
	.loc 6 7035 1
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
	.loc 6 7036 9
	li	a5,-110
	sw	a5,-28(s0)
	.loc 6 7040 18
	li	a5,48
	sw	a5,-32(s0)
	.loc 6 7050 17
	lui	a5,%hi(.LC116)
	addi	a5,a5,%lo(.LC116)
	sw	a5,-20(s0)
	.loc 6 7059 26
	lw	a5,-100(s0)
	addi	a5,a5,808
	sw	a5,-24(s0)
	.loc 6 7060 12
	li	a5,64
	sw	a5,-84(s0)
	.loc 6 7070 18
	lw	a5,-100(s0)
	lbu	a5,0(a5)
	.loc 6 7070 8
	beq	a5,zero,.L887
	.loc 6 7071 9
	lui	a5,%hi(.LC117)
	addi	a4,a5,%lo(.LC117)
	li	a5,8192
	addi	a3,a5,-1121
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-108(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7072 16
	li	a5,0
	j	.L892
.L887:
	.loc 6 7076 18
	lw	a5,-100(s0)
	lbu	a4,8(a5)
	.loc 6 7076 8
	li	a5,1
	bne	a4,a5,.L889
	.loc 6 7077 13
	lui	a5,%hi(.LC118)
	addi	a5,a5,%lo(.LC118)
	sw	a5,-20(s0)
	.loc 6 7078 14
	addi	a5,s0,-80
	sw	a5,-24(s0)
	.loc 6 7079 24
	lw	a5,-100(s0)
	lw	a5,32(a5)
	.loc 6 7079 15
	addi	a3,s0,-84
	addi	a4,s0,-80
	mv	a2,a3
	mv	a1,a4
	lw	a0,-108(s0)
	jalr	a5
.LVL4:
	sw	a0,-28(s0)
	.loc 6 7080 12
	lw	a5,-28(s0)
	beq	a5,zero,.L890
	.loc 6 7081 13
	lw	a5,-28(s0)
	lui	a4,%hi(.LC119)
	addi	a4,a4,%lo(.LC119)
	li	a3,8192
	addi	a3,a3,-1111
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-108(s0)
	call	mbedtls_debug_print_ret
.L890:
	.loc 6 7084 9
	lw	a4,-84(s0)
	addi	a5,s0,-80
	mv	a6,a4
	lui	a4,%hi(.LC120)
	addi	a4,a4,%lo(.LC120)
	li	a3,8192
	addi	a3,a3,-1108
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,3
	lw	a0,-108(s0)
	call	mbedtls_debug_print_buf
.L889:
	.loc 6 7204 24
	lw	a5,-100(s0)
	lw	a7,40(a5)
	.loc 6 7204 43
	lw	a5,-100(s0)
	addi	a0,a5,872
	.loc 6 7204 15
	lw	a5,-100(s0)
	lw	a1,976(a5)
	lw	a4,-84(s0)
	lw	a6,-32(s0)
	lw	a5,-104(s0)
	lw	a3,-24(s0)
	lw	a2,-20(s0)
	jalr	a7
.LVL5:
	sw	a0,-28(s0)
	.loc 6 7208 12
	lw	a5,-28(s0)
	beq	a5,zero,.L891
	.loc 6 7209 13
	lw	a5,-28(s0)
	lui	a4,%hi(.LC121)
	addi	a4,a4,%lo(.LC121)
	li	a3,8192
	addi	a3,a3,-983
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-108(s0)
	call	mbedtls_debug_print_ret
	.loc 6 7210 20
	lw	a5,-28(s0)
	j	.L892
.L891:
	.loc 6 7213 162
	lw	a5,-100(s0)
	addi	a4,a5,872
	.loc 6 7213 9
	lw	a5,-100(s0)
	lw	a5,976(a5)
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC122)
	addi	a4,a4,%lo(.LC122)
	li	a3,8192
	addi	a3,a3,-979
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,3
	lw	a0,-108(s0)
	call	mbedtls_debug_print_buf
	.loc 6 7217 43
	lw	a5,-100(s0)
	addi	a5,a5,872
	.loc 6 7217 9
	li	a1,102
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 6 7221 12
	li	a5,0
.L892:
	.loc 6 7222 1
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
.LFE301:
	.size	ssl_compute_master, .-ssl_compute_master
	.section	.rodata
	.align	2
.LC123:
	.string	"=> derive keys"
	.align	2
.LC124:
	.string	"ssl_set_handshake_prfs"
	.align	2
.LC125:
	.string	"ssl_compute_master"
	.align	2
.LC126:
	.string	"ssl_tls12_populate_transform"
	.align	2
.LC127:
	.string	"<= derive keys"
	.section	.text.mbedtls_ssl_derive_keys,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_derive_keys
	.type	mbedtls_ssl_derive_keys, @function
mbedtls_ssl_derive_keys:
.LFB302:
	.loc 6 7225 1
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
	.loc 6 7226 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 6 7228 12
	lw	a5,-100(s0)
	lw	a5,64(a5)
	.loc 6 7227 45
	lw	a5,24(a5)
	sw	a5,-24(s0)
	.loc 6 7230 5
	lui	a5,%hi(.LC123)
	addi	a4,a5,%lo(.LC123)
	li	a5,8192
	addi	a3,a5,-962
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7233 11
	lw	a5,-100(s0)
	lw	a4,64(a5)
	.loc 6 7234 70
	lw	a5,-24(s0)
	lbu	a5,9(a5)
	.loc 6 7233 11
	mv	a1,a5
	mv	a0,a4
	call	ssl_set_handshake_prfs
	sw	a0,-20(s0)
	.loc 6 7235 8
	lw	a5,-20(s0)
	beq	a5,zero,.L894
	.loc 6 7236 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC124)
	addi	a4,a4,%lo(.LC124)
	li	a3,8192
	addi	a3,a3,-956
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_ret
	.loc 6 7237 16
	lw	a5,-20(s0)
	j	.L895
.L894:
	.loc 6 7241 11
	lw	a5,-100(s0)
	lw	a4,64(a5)
	.loc 6 7242 33
	lw	a5,-100(s0)
	lw	a5,60(a5)
	.loc 6 7242 52
	addi	a5,a5,48
	.loc 6 7241 11
	lw	a2,-100(s0)
	mv	a1,a5
	mv	a0,a4
	call	ssl_compute_master
	sw	a0,-20(s0)
	.loc 6 7244 8
	lw	a5,-20(s0)
	beq	a5,zero,.L896
	.loc 6 7245 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC125)
	addi	a4,a4,%lo(.LC125)
	li	a3,8192
	addi	a3,a3,-947
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_ret
	.loc 6 7246 16
	lw	a5,-20(s0)
	j	.L895
.L896:
.LBB126:
	.loc 6 7254 24
	lw	a5,-100(s0)
	lw	a5,64(a5)
	.loc 6 7254 35
	addi	a4,a5,808
	.loc 6 7254 9
	addi	a5,s0,-88
	li	a2,64
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 6 7255 19
	lw	a5,-100(s0)
	lw	a5,64(a5)
	.loc 6 7255 30
	addi	a4,a5,808
	.loc 6 7255 9
	addi	a5,s0,-88
	addi	a5,a5,32
	li	a2,32
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 6 7256 19
	lw	a5,-100(s0)
	lw	a5,64(a5)
	.loc 6 7256 16
	addi	a5,a5,808
	.loc 6 7256 9
	addi	a5,a5,32
	addi	a4,s0,-88
	li	a2,32
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 6 7257 9
	addi	a5,s0,-88
	li	a1,64
	mv	a0,a5
	call	mbedtls_platform_zeroize
.LBE126:
	.loc 6 7261 11
	lw	a5,-100(s0)
	lw	a0,80(a5)
	.loc 6 7262 43
	lw	a5,-100(s0)
	lw	a5,60(a5)
	.loc 6 7261 11
	lw	a1,8(a5)
	.loc 6 7263 43
	lw	a5,-100(s0)
	lw	a5,60(a5)
	.loc 6 7263 62
	addi	a2,a5,48
	.loc 6 7265 43
	lw	a5,-100(s0)
	lw	a5,60(a5)
	.loc 6 7261 11
	lw	a3,116(a5)
	.loc 6 7267 43
	lw	a5,-100(s0)
	lw	a5,64(a5)
	.loc 6 7267 54
	lw	a4,40(a5)
	.loc 6 7268 43
	lw	a5,-100(s0)
	lw	a5,64(a5)
	.loc 6 7268 54
	addi	t1,a5,808
	.loc 6 7261 11
	lw	a5,-100(s0)
	lhu	a6,16(a5)
	.loc 6 7270 43
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 6 7270 49
	lbu	a5,4(a5)
	.loc 6 7261 11
	mv	a7,a5
	lw	a5,-100(s0)
	sw	a5,0(sp)
	mv	a5,t1
	call	ssl_tls12_populate_transform
	sw	a0,-20(s0)
	.loc 6 7272 8
	lw	a5,-20(s0)
	beq	a5,zero,.L897
	.loc 6 7273 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC126)
	addi	a4,a4,%lo(.LC126)
	li	a3,8192
	addi	a3,a3,-919
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_ret
	.loc 6 7274 16
	lw	a5,-20(s0)
	j	.L895
.L897:
	.loc 6 7278 33
	lw	a5,-100(s0)
	lw	a5,64(a5)
	.loc 6 7278 44
	addi	a5,a5,808
	.loc 6 7278 5
	li	a1,64
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 6 7281 5
	lui	a5,%hi(.LC127)
	addi	a4,a5,%lo(.LC127)
	li	a5,8192
	addi	a3,a5,-911
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7283 12
	li	a5,0
.L895:
	.loc 6 7284 1
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
.LFE302:
	.size	mbedtls_ssl_derive_keys, .-mbedtls_ssl_derive_keys
	.section	.text.mbedtls_ssl_set_calc_verify_md,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_calc_verify_md
	.type	mbedtls_ssl_set_calc_verify_md, @function
mbedtls_ssl_set_calc_verify_md:
.LFB303:
	.loc 6 7287 1
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
	.loc 6 7288 5
	lw	a4,-24(s0)
	li	a5,4
	beq	a4,a5,.L899
	lw	a4,-24(s0)
	li	a5,5
	bne	a4,a5,.L900
	.loc 6 7291 16
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 7291 41
	lui	a4,%hi(ssl_calc_verify_tls_sha384)
	addi	a4,a4,%lo(ssl_calc_verify_tls_sha384)
	sw	a4,32(a5)
	.loc 6 7292 13
	j	.L901
.L899:
	.loc 6 7296 16
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 7296 41
	lui	a4,%hi(ssl_calc_verify_tls_sha256)
	addi	a4,a4,%lo(ssl_calc_verify_tls_sha256)
	sw	a4,32(a5)
	.loc 6 7297 13
	j	.L901
.L900:
	.loc 6 7300 20
	li	a5,-1
	j	.L902
.L901:
	.loc 6 7306 12
	li	a5,0
.L902:
	.loc 6 7307 1
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
.LFE303:
	.size	mbedtls_ssl_set_calc_verify_md, .-mbedtls_ssl_set_calc_verify_md
	.section	.rodata
	.align	2
.LC128:
	.string	"=> calc verify"
	.align	2
.LC129:
	.string	"calculated verify result"
	.align	2
.LC130:
	.string	"<= calc verify"
	.section	.text.ssl_calc_verify_tls_legacy,"ax",@progbits
	.align	1
	.type	ssl_calc_verify_tls_legacy, @function
ssl_calc_verify_tls_legacy:
.LFB304:
	.loc 6 7345 1
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
	sw	a3,-48(s0)
	.loc 6 7346 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 6 7349 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_md_init
	.loc 6 7354 5
	lui	a5,%hi(.LC128)
	addi	a4,a5,%lo(.LC128)
	li	a5,8192
	addi	a3,a5,-838
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7356 11
	lw	a0,-40(s0)
	call	mbedtls_md_info_from_ctx
	mv	a4,a0
	.loc 6 7356 11 is_stmt 0 discriminator 1
	addi	a5,s0,-32
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_setup
	sw	a0,-20(s0)
	.loc 6 7357 8 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L909
	.loc 6 7360 11
	addi	a5,s0,-32
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_md_clone
	sw	a0,-20(s0)
	.loc 6 7361 8
	lw	a5,-20(s0)
	bne	a5,zero,.L910
	.loc 6 7365 11
	addi	a5,s0,-32
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_md_finish
	sw	a0,-20(s0)
	.loc 6 7366 8
	lw	a5,-20(s0)
	bne	a5,zero,.L911
	.loc 6 7370 13
	lw	a0,-40(s0)
	call	mbedtls_md_info_from_ctx
	mv	a5,a0
	.loc 6 7370 13 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 6 7370 13 discriminator 2
	mv	a4,a5
	.loc 6 7370 11 is_stmt 1 discriminator 2
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 6 7372 5
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a6,a5
	lw	a5,-44(s0)
	lui	a4,%hi(.LC129)
	addi	a4,a4,%lo(.LC129)
	li	a3,8192
	addi	a3,a3,-820
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_buf
	.loc 6 7373 5
	lui	a5,%hi(.LC130)
	addi	a4,a5,%lo(.LC130)
	li	a5,8192
	addi	a3,a5,-819
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	j	.L905
.L909:
	.loc 6 7358 9
	nop
	j	.L905
.L910:
	.loc 6 7362 9
	nop
	j	.L905
.L911:
	.loc 6 7367 9
	nop
.L905:
	.loc 6 7376 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_md_free
	.loc 6 7377 12
	lw	a5,-20(s0)
	.loc 6 7378 1
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
.LFE304:
	.size	ssl_calc_verify_tls_legacy, .-ssl_calc_verify_tls_legacy
	.section	.text.ssl_calc_verify_tls_sha256,"ax",@progbits
	.align	1
	.type	ssl_calc_verify_tls_sha256, @function
ssl_calc_verify_tls_sha256:
.LFB305:
	.loc 6 7385 1
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
	.loc 6 7390 48
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 7390 44
	addi	a5,a5,708
	.loc 6 7390 12
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	ssl_calc_verify_tls_legacy
	mv	a5,a0
	.loc 6 7393 1
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
.LFE305:
	.size	ssl_calc_verify_tls_sha256, .-ssl_calc_verify_tls_sha256
	.section	.text.ssl_calc_verify_tls_sha384,"ax",@progbits
	.align	1
	.type	ssl_calc_verify_tls_sha384, @function
ssl_calc_verify_tls_sha384:
.LFB306:
	.loc 6 7400 1
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
	.loc 6 7405 48
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 7405 44
	addi	a5,a5,720
	.loc 6 7405 12
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	ssl_calc_verify_tls_legacy
	mv	a5,a0
	.loc 6 7408 1
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
.LFE306:
	.size	ssl_calc_verify_tls_sha384, .-ssl_calc_verify_tls_sha384
	.section	.rodata
	.align	2
.LC131:
	.string	"mbedtls_ecdh_calc_secret"
	.section	.text.mbedtls_ssl_psk_derive_premaster,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_psk_derive_premaster
	.type	mbedtls_ssl_psk_derive_premaster, @function
mbedtls_ssl_psk_derive_premaster:
.LFB307:
	.loc 6 7414 1
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
	mv	a5,a1
	sb	a5,-85(s0)
	.loc 6 7415 27
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 6 7415 20
	addi	a5,a5,872
	sw	a5,-20(s0)
	.loc 6 7416 20
	lw	a5,-20(s0)
	addi	a5,a5,102
	sw	a5,-24(s0)
	.loc 6 7417 26
	sw	zero,-72(s0)
	.loc 6 7418 12
	sw	zero,-76(s0)
	.loc 6 7419 19
	addi	a4,s0,-76
	addi	a5,s0,-72
	mv	a2,a4
	mv	a1,a5
	lw	a0,-84(s0)
	call	mbedtls_ssl_get_psk
	sw	a0,-28(s0)
	.loc 6 7421 8
	lw	a4,-28(s0)
	li	a5,-28672
	addi	a5,a5,-1536
	bne	a4,a5,.L917
	.loc 6 7429 12
	lbu	a4,-85(s0)
	li	a5,6
	beq	a4,a5,.L917
	.loc 6 7430 13
	lui	a5,%hi(.LC54)
	addi	a4,a5,%lo(.LC54)
	li	a5,8192
	addi	a3,a5,-762
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7431 20
	li	a5,-28672
	addi	a5,a5,1024
	j	.L929
.L917:
	.loc 6 7443 8
	lbu	a4,-85(s0)
	li	a5,5
	bne	a4,a5,.L919
	.loc 6 7444 17
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a4,a4,a5
	.loc 6 7444 12
	li	a5,1
	bgt	a4,a5,.L920
	.loc 6 7445 20
	li	a5,-28672
	addi	a5,a5,-256
	j	.L929
.L920:
	.loc 6 7448 132 discriminator 2
	lw	a5,-76(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a4,-20(s0)
	sw	a4,-36(s0)
	sh	a5,-38(s0)
.LBB127:
.LBB128:
	.loc 7 148 33
	lw	a5,-36(s0)
	sw	a5,-44(s0)
	.loc 7 149 12
	lw	a5,-44(s0)
	lhu	a4,-38(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-38(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 7 153 1
	nop
.LBE128:
.LBE127:
	.loc 6 7449 11
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 6 7451 12
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bltu	a4,a5,.L921
	.loc 6 7451 38 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 6 7451 24 discriminator 1
	mv	a4,a5
	.loc 6 7451 43 discriminator 1
	lw	a5,-76(s0)
	.loc 6 7451 21 discriminator 1
	bgeu	a4,a5,.L922
.L921:
	.loc 6 7452 20
	li	a5,-28672
	addi	a5,a5,-256
	j	.L929
.L922:
	.loc 6 7455 9
	lw	a5,-76(s0)
	mv	a2,a5
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 6 7456 11
	lw	a5,-76(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	j	.L923
.L919:
	.loc 6 7493 8
	lbu	a4,-85(s0)
	li	a5,8
	bne	a4,a5,.L924
.LBB129:
	.loc 6 7494 13
	li	a5,-110
	sw	a5,-32(s0)
	.loc 6 7497 49
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 6 7497 20
	addi	a0,a5,164
	lw	a5,-20(s0)
	addi	a2,a5,2
	.loc 6 7498 71
	lw	a5,-20(s0)
	addi	a5,a5,2
	.loc 6 7498 66
	lw	a4,-24(s0)
	sub	a5,a4,a5
	.loc 6 7497 20
	mv	a3,a5
	.loc 6 7499 48
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 6 7499 54
	lw	a4,32(a5)
	.loc 6 7499 66
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 6 7499 72
	lw	a5,36(a5)
	.loc 6 7497 20
	addi	a1,s0,-80
	call	mbedtls_ecdh_calc_secret
	sw	a0,-32(s0)
	.loc 6 7497 12 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L925
	.loc 6 7500 13
	lw	a5,-32(s0)
	lui	a4,%hi(.LC131)
	addi	a4,a4,%lo(.LC131)
	li	a3,8192
	addi	a3,a3,-692
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-84(s0)
	call	mbedtls_debug_print_ret
	.loc 6 7501 20
	lw	a5,-32(s0)
	j	.L929
.L925:
	.loc 6 7504 129 discriminator 2
	lw	a5,-80(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a4,-20(s0)
	sw	a4,-48(s0)
	sh	a5,-50(s0)
.LBB130:
.LBB131:
	.loc 7 148 33
	lw	a5,-48(s0)
	sw	a5,-56(s0)
	.loc 7 149 12
	lw	a5,-56(s0)
	lhu	a4,-50(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-50(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 7 153 1
	nop
.LBE131:
.LBE130:
	.loc 6 7505 16
	lw	a5,-80(s0)
	addi	a5,a5,2
	.loc 6 7505 11
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 6 7507 139
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 6 7507 135
	addi	a4,a5,164
	.loc 6 7507 9
	li	a5,2
	li	a3,8192
	addi	a3,a3,-685
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_printf_ecdh
	j	.L923
.L924:
.LBE129:
	.loc 6 7512 9
	lui	a5,%hi(.LC54)
	addi	a4,a5,%lo(.LC54)
	li	a5,8192
	addi	a3,a5,-680
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7513 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L929
.L923:
	.loc 6 7517 13
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a4,a4,a5
	.loc 6 7517 8
	li	a5,1
	bgt	a4,a5,.L926
	.loc 6 7518 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L929
.L926:
	.loc 6 7521 128 discriminator 2
	lw	a5,-76(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a4,-20(s0)
	sw	a4,-60(s0)
	sh	a5,-62(s0)
.LBB132:
.LBB133:
	.loc 7 148 33
	lw	a5,-60(s0)
	sw	a5,-68(s0)
	.loc 7 149 12
	lw	a5,-68(s0)
	lhu	a4,-62(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-62(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 7 153 1
	nop
.LBE133:
.LBE132:
	.loc 6 7522 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 6 7524 8
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bltu	a4,a5,.L927
	.loc 6 7524 34 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 6 7524 20 discriminator 1
	mv	a4,a5
	.loc 6 7524 39 discriminator 1
	lw	a5,-76(s0)
	.loc 6 7524 17 discriminator 1
	bgeu	a4,a5,.L928
.L927:
	.loc 6 7525 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L929
.L928:
	.loc 6 7528 5
	lw	a5,-72(s0)
	lw	a4,-76(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-20(s0)
	call	memcpy
	.loc 6 7529 7
	lw	a5,-76(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 6 7531 47
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 6 7531 42
	addi	a5,a5,872
	lw	a4,-20(s0)
	sub	a4,a4,a5
	.loc 6 7531 8
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 6 7531 28
	sw	a4,976(a5)
	.loc 6 7533 12
	li	a5,0
.L929:
	.loc 6 7534 1
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
.LFE307:
	.size	mbedtls_ssl_psk_derive_premaster, .-mbedtls_ssl_psk_derive_premaster
	.section	.rodata
	.align	2
.LC132:
	.string	"no longer retransmitting hello request"
	.section	.text.mbedtls_ssl_resend_hello_request,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_resend_hello_request
	.type	mbedtls_ssl_resend_hello_request, @function
mbedtls_ssl_resend_hello_request:
.LFB308:
	.loc 6 7543 1
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
	.loc 6 7546 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 7546 18
	lw	a5,212(a5)
	.loc 6 7546 8
	bge	a5,zero,.L931
.LBB134:
	.loc 6 7547 29
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 7547 35
	lw	a4,208(a5)
	.loc 6 7547 57
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 7547 63
	lw	a5,204(a5)
	.loc 6 7547 52
	divu	a5,a4,a5
	.loc 6 7547 18
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 6 7548 23
	li	a5,1
	sb	a5,-21(s0)
	.loc 6 7550 15
	j	.L932
.L933:
	.loc 6 7551 13
	lbu	a5,-21(s0)
	addi	a5,a5,1
	sb	a5,-21(s0)
	.loc 6 7552 19
	lw	a5,-20(s0)
	srli	a5,a5,1
	sw	a5,-20(s0)
.L932:
	.loc 6 7550 22
	lw	a5,-20(s0)
	bne	a5,zero,.L933
	.loc 6 7555 18
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 6 7555 13
	addi	a4,a5,1
	.loc 6 7555 12
	lw	a5,-36(s0)
	sw	a4,12(a5)
	.loc 6 7555 18
	lw	a5,-36(s0)
	lw	a4,12(a5)
	.loc 6 7555 40
	lbu	a5,-21(s0)
	.loc 6 7555 12
	ble	a4,a5,.L931
	.loc 6 7556 13
	lui	a5,%hi(.LC132)
	addi	a4,a5,%lo(.LC132)
	li	a5,8192
	addi	a3,a5,-636
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7557 20
	li	a5,0
	j	.L934
.L931:
.LBE134:
	.loc 6 7561 12
	lw	a0,-36(s0)
	call	ssl_write_hello_request
	mv	a5,a0
.L934:
	.loc 6 7562 1
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
.LFE308:
	.size	mbedtls_ssl_resend_hello_request, .-mbedtls_ssl_resend_hello_request
	.section	.rodata
	.align	2
.LC133:
	.string	"=> write certificate"
	.align	2
.LC134:
	.string	"<= skip write certificate"
	.align	2
.LC135:
	.string	"own certificate"
	.align	2
.LC136:
	.string	"certificate too large, %zu > %zu"
	.align	2
.LC137:
	.string	"<= write certificate"
	.section	.text.mbedtls_ssl_write_certificate,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_write_certificate
	.type	mbedtls_ssl_write_certificate, @function
mbedtls_ssl_write_certificate:
.LFB309:
	.loc 6 7609 1
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
	.loc 6 7610 9
	li	a5,-28672
	addi	a5,a5,-128
	sw	a5,-28(s0)
	.loc 6 7614 12
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 7613 38
	lw	a5,24(a5)
	sw	a5,-32(s0)
	.loc 6 7616 5
	lui	a5,%hi(.LC133)
	addi	a4,a5,%lo(.LC133)
	li	a5,8192
	addi	a3,a5,-576
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7618 10
	lw	a0,-32(s0)
	call	mbedtls_ssl_ciphersuite_uses_srv_cert
	mv	a5,a0
	.loc 6 7618 8 discriminator 1
	bne	a5,zero,.L936
	.loc 6 7619 9
	lui	a5,%hi(.LC134)
	addi	a4,a5,%lo(.LC134)
	li	a5,8192
	addi	a3,a5,-573
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7620 9
	lw	a0,-52(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 6 7621 16
	li	a5,0
	j	.L937
.L936:
	.loc 6 7625 12
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 6 7625 18
	lbu	a5,4(a5)
	.loc 6 7625 8
	bne	a5,zero,.L938
	.loc 6 7626 16
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 7626 27
	lbu	a5,732(a5)
	.loc 6 7626 12
	bne	a5,zero,.L938
	.loc 6 7627 13
	lui	a5,%hi(.LC134)
	addi	a4,a5,%lo(.LC134)
	li	a5,8192
	addi	a3,a5,-565
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7628 13
	lw	a0,-52(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 6 7629 20
	li	a5,0
	j	.L937
.L938:
	.loc 6 7634 12
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 6 7634 18
	lbu	a4,4(a5)
	.loc 6 7634 8
	li	a5,1
	bne	a4,a5,.L939
	.loc 6 7635 13
	lw	a0,-52(s0)
	call	mbedtls_ssl_own_cert
	mv	a5,a0
	.loc 6 7635 12 discriminator 1
	bne	a5,zero,.L939
	.loc 6 7638 20
	li	a5,-28672
	addi	a5,a5,1024
	j	.L937
.L939:
	.loc 6 7643 148
	lw	a0,-52(s0)
	call	mbedtls_ssl_own_cert
	mv	a5,a0
	.loc 6 7643 5 discriminator 1
	lui	a4,%hi(.LC135)
	addi	a4,a4,%lo(.LC135)
	li	a3,8192
	addi	a3,a3,-549
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_crt
	.loc 6 7654 7
	li	a5,7
	sw	a5,-20(s0)
	.loc 6 7655 11
	lw	a0,-52(s0)
	call	mbedtls_ssl_own_cert
	sw	a0,-24(s0)
	.loc 6 7657 11
	j	.L940
.L942:
	.loc 6 7658 11
	lw	a5,-24(s0)
	lw	a5,8(a5)
	sw	a5,-36(s0)
	.loc 6 7659 27
	li	a5,16384
	addi	a4,a5,-3
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 6 7659 12
	lw	a4,-36(s0)
	bleu	a4,a5,.L941
	.loc 6 7660 188
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	.loc 6 7660 13
	addi	a5,a5,3
	li	a6,16384
	lui	a4,%hi(.LC136)
	addi	a4,a4,%lo(.LC136)
	li	a3,8192
	addi	a3,a3,-532
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7663 20
	li	a5,-28672
	addi	a5,a5,1536
	j	.L937
.L941:
	.loc 6 7666 44
	lw	a5,-36(s0)
	srli	a3,a5,16
	.loc 6 7666 12
	lw	a5,-52(s0)
	lw	a4,216(a5)
	.loc 6 7666 21
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 6 7666 28
	andi	a4,a3,0xff
	.loc 6 7666 25
	sb	a4,0(a5)
	.loc 6 7667 48
	lw	a5,-36(s0)
	srli	a3,a5,8
	.loc 6 7667 12
	lw	a5,-52(s0)
	lw	a4,216(a5)
	.loc 6 7667 21
	lw	a5,-20(s0)
	addi	a5,a5,1
	add	a5,a4,a5
	.loc 6 7667 32
	andi	a4,a3,0xff
	.loc 6 7667 29
	sb	a4,0(a5)
	.loc 6 7668 12
	lw	a5,-52(s0)
	lw	a4,216(a5)
	.loc 6 7668 21
	lw	a5,-20(s0)
	addi	a5,a5,2
	add	a5,a4,a5
	.loc 6 7668 32
	lw	a4,-36(s0)
	andi	a4,a4,0xff
	.loc 6 7668 29
	sb	a4,0(a5)
	.loc 6 7670 11
	lw	a5,-20(s0)
	addi	a5,a5,3
	sw	a5,-20(s0)
	.loc 6 7670 27
	lw	a5,-52(s0)
	lw	a4,216(a5)
	.loc 6 7670 37
	lw	a5,-20(s0)
	add	a4,a4,a5
	.loc 6 7670 50
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 6 7670 17
	lw	a2,-36(s0)
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 6 7671 11
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 6 7671 21
	lw	a5,-24(s0)
	lw	a5,400(a5)
	sw	a5,-24(s0)
.L940:
	.loc 6 7657 16
	lw	a5,-24(s0)
	bne	a5,zero,.L942
	.loc 6 7674 39
	lw	a5,-20(s0)
	addi	a5,a5,-7
	.loc 6 7674 44
	srli	a4,a5,16
	.loc 6 7674 8
	lw	a5,-52(s0)
	lw	a5,216(a5)
	.loc 6 7674 17
	addi	a5,a5,4
	.loc 6 7674 24
	andi	a4,a4,0xff
	.loc 6 7674 21
	sb	a4,0(a5)
	.loc 6 7675 39
	lw	a5,-20(s0)
	addi	a5,a5,-7
	.loc 6 7675 44
	srli	a4,a5,8
	.loc 6 7675 8
	lw	a5,-52(s0)
	lw	a5,216(a5)
	.loc 6 7675 17
	addi	a5,a5,5
	.loc 6 7675 24
	andi	a4,a4,0xff
	.loc 6 7675 21
	sb	a4,0(a5)
	.loc 6 7676 24
	lw	a5,-20(s0)
	andi	a4,a5,0xff
	.loc 6 7676 8
	lw	a5,-52(s0)
	lw	a5,216(a5)
	.loc 6 7676 17
	addi	a5,a5,6
	.loc 6 7676 24
	addi	a4,a4,-7
	andi	a4,a4,0xff
	.loc 6 7676 21
	sb	a4,0(a5)
	.loc 6 7678 21
	lw	a5,-52(s0)
	lw	a4,-20(s0)
	sw	a4,224(a5)
	.loc 6 7679 22
	lw	a5,-52(s0)
	li	a4,22
	sw	a4,220(a5)
	.loc 6 7680 8
	lw	a5,-52(s0)
	lw	a5,216(a5)
	.loc 6 7680 21
	li	a4,11
	sb	a4,0(a5)
	.loc 6 7682 5
	lw	a0,-52(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 6 7684 16
	lw	a0,-52(s0)
	call	mbedtls_ssl_write_handshake_msg
	sw	a0,-28(s0)
	.loc 6 7684 8 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L943
	.loc 6 7685 9
	lw	a5,-28(s0)
	lui	a4,%hi(.LC73)
	addi	a4,a4,%lo(.LC73)
	li	a3,8192
	addi	a3,a3,-507
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_ret
	.loc 6 7686 16
	lw	a5,-28(s0)
	j	.L937
.L943:
	.loc 6 7689 5
	lui	a5,%hi(.LC137)
	addi	a4,a5,%lo(.LC137)
	li	a5,8192
	addi	a3,a5,-503
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7691 12
	lw	a5,-28(s0)
.L937:
	.loc 6 7692 1
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
.LFE309:
	.size	mbedtls_ssl_write_certificate, .-mbedtls_ssl_write_certificate
	.section	.text.ssl_check_peer_crt_unchanged,"ax",@progbits
	.align	1
	.type	ssl_check_peer_crt_unchanged, @function
ssl_check_peer_crt_unchanged:
.LFB310:
	.loc 6 7701 1
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
	.loc 6 7702 50
	lw	a5,-36(s0)
	lw	a5,56(a5)
	.loc 6 7702 36
	lw	a5,96(a5)
	sw	a5,-20(s0)
	.loc 6 7704 8
	lw	a5,-20(s0)
	bne	a5,zero,.L945
	.loc 6 7705 16
	li	a5,-1
	j	.L946
.L945:
	.loc 6 7708 22
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 6 7708 8
	lw	a4,-44(s0)
	beq	a4,a5,.L947
	.loc 6 7709 16
	li	a5,-1
	j	.L946
.L947:
	.loc 6 7712 32
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 6 7712 58
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 6 7712 12
	mv	a2,a5
	lw	a1,-40(s0)
	mv	a0,a4
	call	memcmp
	mv	a5,a0
.L946:
	.loc 6 7713 1
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
.LFE310:
	.size	ssl_check_peer_crt_unchanged, .-ssl_check_peer_crt_unchanged
	.section	.rodata
	.align	2
.LC138:
	.string	"bad certificate message"
	.align	2
.LC139:
	.string	"Check that peer CRT hasn't changed during renegotiation"
	.align	2
.LC140:
	.string	"new server cert during renegotiation"
	.align	2
.LC141:
	.string	" mbedtls_x509_crt_parse_der"
	.align	2
.LC142:
	.string	"peer certificate"
	.section	.text.ssl_parse_certificate_chain,"ax",@progbits
	.align	1
	.type	ssl_parse_certificate_chain, @function
ssl_parse_certificate_chain:
.LFB311:
	.loc 6 7756 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	.loc 6 7757 9
	li	a5,-110
	sw	a5,-32(s0)
	.loc 6 7759 9
	sw	zero,-20(s0)
	.loc 6 7764 12
	lw	a5,-68(s0)
	lw	a4,128(a5)
	.loc 6 7764 8
	li	a5,22
	beq	a4,a5,.L949
	.loc 6 7765 9
	lui	a5,%hi(.LC138)
	addi	a4,a5,%lo(.LC138)
	li	a5,8192
	addi	a3,a5,-427
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7766 9
	li	a2,10
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 6 7768 16
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L950
.L949:
	.loc 6 7771 12
	lw	a5,-68(s0)
	lw	a5,120(a5)
	.loc 6 7771 20
	lbu	a4,0(a5)
	.loc 6 7771 8
	li	a5,11
	beq	a4,a5,.L951
	.loc 6 7772 9
	li	a2,10
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 6 7774 16
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L950
.L951:
	.loc 6 7777 12
	lw	a5,-68(s0)
	lw	s1,168(a5)
	.loc 6 7777 25
	lw	a0,-68(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a5,a0
	.loc 6 7777 57 discriminator 1
	addi	a5,a5,6
	.loc 6 7777 8 discriminator 1
	bgeu	s1,a5,.L952
	.loc 6 7778 9
	lui	a5,%hi(.LC138)
	addi	a4,a5,%lo(.LC138)
	li	a5,8192
	addi	a3,a5,-414
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7779 9
	li	a2,50
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 6 7781 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L950
.L952:
	.loc 6 7784 9
	lw	a0,-68(s0)
	call	mbedtls_ssl_hs_hdr_len
	sw	a0,-24(s0)
	.loc 6 7789 123
	lw	a5,-68(s0)
	lw	a4,120(a5)
	.loc 6 7789 133
	lw	a5,-24(s0)
	addi	a5,a5,1
	add	a5,a4,a5
	sw	a5,-40(s0)
.LBB135:
.LBB136:
	.loc 7 122 33
	lw	a5,-40(s0)
	sw	a5,-44(s0)
	.loc 7 123 7
	lw	a5,-44(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-46(s0)
	.loc 7 127 12
	lhu	a5,-46(s0)
.LBE136:
.LBE135:
	.loc 6 7789 72 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 6 7789 7 discriminator 2
	sw	a5,-36(s0)
	.loc 6 7791 12
	lw	a5,-68(s0)
	lw	a4,120(a5)
	.loc 6 7791 20
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 6 7791 8
	bne	a5,zero,.L954
	.loc 6 7792 12
	lw	a5,-68(s0)
	lw	s1,168(a5)
	.loc 6 7792 34
	lw	a0,-68(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a4,a0
	.loc 6 7792 32 discriminator 1
	lw	a5,-36(s0)
	add	a5,a4,a5
	addi	a5,a5,3
	.loc 6 7791 29 discriminator 1
	beq	s1,a5,.L955
.L954:
	.loc 6 7793 9
	lui	a5,%hi(.LC138)
	addi	a4,a5,%lo(.LC138)
	li	a5,8192
	addi	a3,a5,-399
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7794 9
	li	a2,50
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 6 7796 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L950
.L955:
	.loc 6 7800 7
	lw	a5,-24(s0)
	addi	a5,a5,3
	sw	a5,-24(s0)
	.loc 6 7803 11
	j	.L956
.L970:
	.loc 6 7805 15
	lw	a5,-24(s0)
	addi	a4,a5,3
	.loc 6 7805 24
	lw	a5,-68(s0)
	lw	a5,168(a5)
	.loc 6 7805 12
	bleu	a4,a5,.L957
	.loc 6 7806 13
	lui	a5,%hi(.LC138)
	addi	a4,a5,%lo(.LC138)
	li	a5,8192
	addi	a3,a5,-386
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7807 13
	li	a2,50
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 6 7810 20
	li	a5,-28672
	addi	a5,a5,-768
	j	.L950
.L957:
	.loc 6 7814 16
	lw	a5,-68(s0)
	lw	a4,120(a5)
	.loc 6 7814 24
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 6 7814 12
	beq	a5,zero,.L958
	.loc 6 7815 13
	lui	a5,%hi(.LC138)
	addi	a4,a5,%lo(.LC138)
	li	a5,8192
	addi	a3,a5,-377
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7816 13
	li	a2,43
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 6 7819 20
	li	a5,-32768
	addi	a5,a5,1536
	j	.L950
.L958:
	.loc 6 7823 127
	lw	a5,-68(s0)
	lw	a4,120(a5)
	.loc 6 7823 137
	lw	a5,-24(s0)
	addi	a5,a5,1
	add	a5,a4,a5
	sw	a5,-52(s0)
.LBB137:
.LBB138:
	.loc 7 122 33
	lw	a5,-52(s0)
	sw	a5,-56(s0)
	.loc 7 123 7
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-58(s0)
	.loc 7 127 12
	lhu	a5,-58(s0)
.LBE138:
.LBE137:
	.loc 6 7823 76 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 6 7823 11 discriminator 2
	sw	a5,-36(s0)
	.loc 6 7824 11
	lw	a5,-24(s0)
	addi	a5,a5,3
	sw	a5,-24(s0)
	.loc 6 7826 12
	lw	a4,-36(s0)
	li	a5,127
	bleu	a4,a5,.L960
	.loc 6 7826 26 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	add	a4,a4,a5
	.loc 6 7826 35 discriminator 1
	lw	a5,-68(s0)
	lw	a5,168(a5)
	.loc 6 7826 21 discriminator 1
	bleu	a4,a5,.L961
.L960:
	.loc 6 7827 13
	lui	a5,%hi(.LC138)
	addi	a4,a5,%lo(.LC138)
	li	a5,8192
	addi	a3,a5,-365
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7828 13
	li	a2,50
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 6 7831 20
	li	a5,-28672
	addi	a5,a5,-768
	j	.L950
.L961:
	.loc 6 7836 20
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 7836 12
	bne	a5,zero,.L962
	.loc 6 7837 16
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 6 7837 22
	lbu	a5,4(a5)
	.loc 6 7836 28 discriminator 1
	bne	a5,zero,.L962
	.loc 6 7838 16
	lw	a5,-68(s0)
	lw	a4,8(a5)
	.loc 6 7837 38
	li	a5,1
	bne	a4,a5,.L962
	.loc 6 7843 13
	lui	a5,%hi(.LC139)
	addi	a4,a5,%lo(.LC139)
	li	a5,8192
	addi	a3,a5,-349
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7845 50
	lw	a5,-68(s0)
	lw	a4,120(a5)
	.loc 6 7844 17
	lw	a5,-24(s0)
	add	a5,a4,a5
	lw	a2,-36(s0)
	mv	a1,a5
	lw	a0,-68(s0)
	call	ssl_check_peer_crt_unchanged
	mv	a5,a0
	.loc 6 7844 16 discriminator 1
	beq	a5,zero,.L963
	.loc 6 7847 17
	lui	a5,%hi(.LC140)
	addi	a4,a5,%lo(.LC140)
	li	a5,8192
	addi	a3,a5,-345
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7848 17
	li	a2,49
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 6 7851 24
	li	a5,-32768
	addi	a5,a5,1536
	j	.L950
.L963:
	.loc 6 7855 13
	lw	a5,-68(s0)
	lw	a5,56(a5)
	mv	a0,a5
	call	ssl_clear_peer_cert
.L962:
	.loc 6 7861 52
	lw	a5,-68(s0)
	lw	a4,120(a5)
	.loc 6 7861 61
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 6 7861 15
	lw	a2,-36(s0)
	mv	a1,a5
	lw	a0,-72(s0)
	call	mbedtls_x509_crt_parse_der
	sw	a0,-32(s0)
	.loc 6 7867 9
	lw	a5,-32(s0)
	beq	a5,zero,.L971
	lw	a5,-32(s0)
	bgt	a5,zero,.L965
	lw	a4,-32(s0)
	li	a5,-8192
	addi	a5,a5,-1408
	beq	a4,a5,.L966
	lw	a4,-32(s0)
	li	a5,-8192
	addi	a5,a5,-1408
	bgt	a4,a5,.L965
	lw	a4,-32(s0)
	li	a5,-12288
	addi	a5,a5,1920
	beq	a4,a5,.L967
	lw	a4,-32(s0)
	li	a5,-8192
	addi	a5,a5,-1582
	bne	a4,a5,.L965
	.loc 6 7872 17
	j	.L971
.L967:
	.loc 6 7875 23
	li	a5,80
	sb	a5,-25(s0)
	.loc 6 7876 17
	j	.L969
.L966:
	.loc 6 7879 23
	li	a5,43
	sb	a5,-25(s0)
	.loc 6 7880 17
	j	.L969
.L965:
	.loc 6 7883 23
	li	a5,42
	sb	a5,-25(s0)
.L969:
	.loc 6 7885 17
	lbu	a5,-25(s0)
	mv	a2,a5
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 6 7886 17
	lw	a5,-32(s0)
	lui	a4,%hi(.LC141)
	addi	a4,a4,%lo(.LC141)
	li	a3,8192
	addi	a3,a3,-306
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_ret
	.loc 6 7887 24
	lw	a5,-32(s0)
	j	.L950
.L971:
	.loc 6 7872 17
	nop
	.loc 6 7890 11
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
.L956:
	.loc 6 7803 19
	lw	a5,-68(s0)
	lw	a5,168(a5)
	.loc 6 7803 14
	lw	a4,-24(s0)
	bltu	a4,a5,.L970
	.loc 6 7893 5
	lw	a5,-72(s0)
	lui	a4,%hi(.LC142)
	addi	a4,a4,%lo(.LC142)
	li	a3,8192
	addi	a3,a3,-299
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,3
	lw	a0,-68(s0)
	call	mbedtls_debug_print_crt
	.loc 6 7894 12
	li	a5,0
.L950:
	.loc 6 7895 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE311:
	.size	ssl_parse_certificate_chain, .-ssl_parse_certificate_chain
	.section	.rodata
	.align	2
.LC143:
	.base64	"AAAAAA=="
	.align	2
.LC144:
	.string	"peer has no certificate"
	.section	.text.ssl_srv_check_client_no_crt_notification,"ax",@progbits
	.align	1
	.type	ssl_srv_check_client_no_crt_notification, @function
ssl_srv_check_client_no_crt_notification:
.LFB312:
	.loc 6 7900 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 6 7901 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 6 7901 18
	lbu	a5,4(a5)
	.loc 6 7901 8
	bne	a5,zero,.L973
	.loc 6 7902 16
	li	a5,-1
	j	.L974
.L973:
	.loc 6 7905 12
	lw	a5,-20(s0)
	lw	s1,168(a5)
	.loc 6 7905 30
	lw	a0,-20(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a5,a0
	.loc 6 7905 28 discriminator 1
	addi	a5,a5,3
	.loc 6 7905 8 discriminator 1
	bne	s1,a5,.L975
	.loc 6 7906 12
	lw	a5,-20(s0)
	lw	a4,128(a5)
	.loc 6 7905 58 discriminator 2
	li	a5,22
	bne	a4,a5,.L975
	.loc 6 7907 12
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 6 7907 20
	lbu	a4,0(a5)
	.loc 6 7906 31
	li	a5,11
	bne	a4,a5,.L975
	.loc 6 7908 19
	lw	a5,-20(s0)
	lw	s1,120(a5)
	.loc 6 7908 30
	lw	a0,-20(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a5,a0
	.loc 6 7908 28 discriminator 1
	add	a4,s1,a5
	.loc 6 7908 9 discriminator 1
	li	a2,3
	lui	a5,%hi(.LC143)
	addi	a1,a5,%lo(.LC143)
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 6 7907 30
	bne	a5,zero,.L975
	.loc 6 7909 9
	lui	a5,%hi(.LC144)
	addi	a4,a5,%lo(.LC144)
	li	a5,8192
	addi	a3,a5,-283
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 6 7910 16
	li	a5,0
	j	.L974
.L975:
	.loc 6 7912 12
	li	a5,-1
.L974:
	.loc 6 7913 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE312:
	.size	ssl_srv_check_client_no_crt_notification, .-ssl_srv_check_client_no_crt_notification
	.section	.text.ssl_parse_certificate_coordinate,"ax",@progbits
	.align	1
	.type	ssl_parse_certificate_coordinate, @function
ssl_parse_certificate_coordinate:
.LFB313:
	.loc 6 7927 1
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
	.loc 6 7929 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 7928 38
	lw	a5,24(a5)
	sw	a5,-20(s0)
	.loc 6 7931 10
	lw	a0,-20(s0)
	call	mbedtls_ssl_ciphersuite_uses_srv_cert
	mv	a5,a0
	.loc 6 7931 8 discriminator 1
	bne	a5,zero,.L977
	.loc 6 7932 16
	li	a5,1
	j	.L978
.L977:
	.loc 6 7936 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 7936 18
	lbu	a4,4(a5)
	.loc 6 7936 8
	li	a5,1
	bne	a4,a5,.L979
	.loc 6 7937 29
	lw	a5,-20(s0)
	lbu	a4,10(a5)
	.loc 6 7937 12
	li	a5,7
	bne	a4,a5,.L980
	.loc 6 7938 20
	li	a5,1
	j	.L978
.L980:
	.loc 6 7941 12
	lw	a5,-40(s0)
	bne	a5,zero,.L979
	.loc 6 7942 16
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 6 7942 51
	li	a4,128
	sw	a4,100(a5)
	.loc 6 7944 20
	li	a5,1
	j	.L978
.L979:
	.loc 6 7951 12
	li	a5,0
.L978:
	.loc 6 7952 1
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
.LFE313:
	.size	ssl_parse_certificate_coordinate, .-ssl_parse_certificate_coordinate
	.section	.rodata
	.align	2
.LC145:
	.string	"=> parse certificate"
	.align	2
.LC146:
	.string	"<= skip parse certificate"
	.align	2
.LC147:
	.string	"mbedtls_ssl_read_record"
	.align	2
.LC148:
	.string	"<= parse certificate"
	.section	.text.mbedtls_ssl_parse_certificate,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_parse_certificate
	.type	mbedtls_ssl_parse_certificate, @function
mbedtls_ssl_parse_certificate:
.LFB314:
	.loc 6 8007 1
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
	.loc 6 8008 9
	sw	zero,-20(s0)
	.loc 6 8012 29
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 8012 40
	lbu	a4,2(a5)
	.loc 6 8014 24
	li	a5,3
	beq	a4,a5,.L982
	.loc 6 8013 29
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 8013 40
	lbu	a5,2(a5)
	.loc 6 8012 15
	sw	a5,-24(s0)
	j	.L983
.L982:
	.loc 6 8014 29 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 6 8014 35 discriminator 1
	lbu	a5,6(a5)
	.loc 6 8012 15
	sw	a5,-24(s0)
.L983:
	.loc 6 8018 11
	sw	zero,-28(s0)
	.loc 6 8019 23
	sw	zero,-32(s0)
	.loc 6 8021 5
	lui	a5,%hi(.LC145)
	addi	a4,a5,%lo(.LC145)
	li	a5,8192
	addi	a3,a5,-171
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8023 20
	lw	a1,-24(s0)
	lw	a0,-52(s0)
	call	ssl_parse_certificate_coordinate
	sw	a0,-36(s0)
	.loc 6 8024 8
	lw	a4,-36(s0)
	li	a5,1
	bne	a4,a5,.L984
	.loc 6 8025 9
	lui	a5,%hi(.LC146)
	addi	a4,a5,%lo(.LC146)
	li	a5,8192
	addi	a3,a5,-167
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8026 9
	j	.L985
.L984:
	.loc 6 8030 12
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 8030 23
	lbu	a5,11(a5)
	.loc 6 8030 8
	beq	a5,zero,.L986
	.loc 6 8031 12
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 8031 23
	lbu	a4,12(a5)
	.loc 6 8030 38 discriminator 1
	li	a5,1
	bne	a4,a5,.L986
	.loc 6 8032 20
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 8032 15
	lw	a5,16(a5)
	sw	a5,-32(s0)
	.loc 6 8033 12
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 8033 40
	sw	zero,16(a5)
	.loc 6 8034 9
	j	.L987
.L986:
	.loc 6 8038 16
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_ssl_read_record
	sw	a0,-20(s0)
	.loc 6 8038 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L988
	.loc 6 8041 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC147)
	addi	a4,a4,%lo(.LC147)
	li	a3,8192
	addi	a3,a3,-151
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_ret
	.loc 6 8042 9
	j	.L985
.L988:
	.loc 6 8046 9
	lw	a0,-52(s0)
	call	ssl_srv_check_client_no_crt_notification
	mv	a5,a0
	.loc 6 8046 8 discriminator 1
	bne	a5,zero,.L989
	.loc 6 8047 12
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 6 8047 47
	li	a4,64
	sw	a4,100(a5)
	.loc 6 8049 12
	lw	a4,-24(s0)
	li	a5,1
	beq	a4,a5,.L999
	.loc 6 8050 17
	li	a5,-28672
	addi	a5,a5,-1152
	sw	a5,-20(s0)
	.loc 6 8053 9
	j	.L999
.L989:
	.loc 6 8059 5
	lw	a5,-52(s0)
	lw	a5,60(a5)
	mv	a0,a5
	call	ssl_clear_peer_cert
	.loc 6 8061 13
	li	a1,404
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-32(s0)
	.loc 6 8062 8
	lw	a5,-32(s0)
	bne	a5,zero,.L991
	.loc 6 8063 9
	li	a5,404
	lui	a4,%hi(.LC60)
	addi	a4,a4,%lo(.LC60)
	li	a3,8192
	addi	a3,a3,-129
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8065 9
	li	a2,80
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 6 8069 13
	li	a5,-32768
	addi	a5,a5,256
	sw	a5,-20(s0)
	.loc 6 8070 9
	j	.L985
.L991:
	.loc 6 8072 5
	lw	a0,-32(s0)
	call	mbedtls_x509_crt_init
	.loc 6 8074 11
	lw	a1,-32(s0)
	lw	a0,-52(s0)
	call	ssl_parse_certificate_chain
	sw	a0,-20(s0)
	.loc 6 8075 8
	lw	a5,-20(s0)
	bne	a5,zero,.L1000
	.loc 6 8080 12
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 8080 23
	lbu	a5,11(a5)
	.loc 6 8080 8
	beq	a5,zero,.L1001
	.loc 6 8081 12
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 8081 36
	li	a4,1
	sb	a4,12(a5)
	j	.L987
.L1001:
	.loc 6 8084 1
	nop
.L987:
	.loc 6 8085 12
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 8085 23
	lbu	a5,11(a5)
	.loc 6 8085 8
	beq	a5,zero,.L993
	.loc 6 8086 22
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 8086 16
	addi	a5,a5,420
	sw	a5,-28(s0)
.L993:
	.loc 6 8091 45
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 8090 11
	lw	a5,24(a5)
	lw	a4,-28(s0)
	mv	a3,a5
	lw	a2,-32(s0)
	lw	a1,-24(s0)
	lw	a0,-52(s0)
	call	mbedtls_ssl_verify_certificate
	sw	a0,-20(s0)
	.loc 6 8093 8
	lw	a5,-20(s0)
	bne	a5,zero,.L1002
	.loc 6 8131 8
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 6 8131 39
	lw	a4,-32(s0)
	sw	a4,96(a5)
	.loc 6 8132 11
	sw	zero,-32(s0)
	.loc 6 8135 5
	lui	a5,%hi(.LC148)
	addi	a4,a5,%lo(.LC148)
	li	a5,8192
	addi	a3,a5,-57
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	j	.L985
.L999:
	.loc 6 8053 9
	nop
	j	.L985
.L1000:
	.loc 6 8076 9
	nop
	j	.L985
.L1002:
	.loc 6 8094 9
	nop
.L985:
	.loc 6 8139 8
	lw	a5,-20(s0)
	bne	a5,zero,.L995
	.loc 6 8140 9
	lw	a0,-52(s0)
	call	mbedtls_ssl_handshake_increment_state
.L995:
	.loc 6 8144 8
	lw	a4,-20(s0)
	li	a5,-28672
	bne	a4,a5,.L996
	.loc 6 8145 12
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 8145 40
	lw	a4,-32(s0)
	sw	a4,16(a5)
	.loc 6 8146 15
	sw	zero,-32(s0)
.L996:
	.loc 6 8150 8
	lw	a5,-32(s0)
	beq	a5,zero,.L997
	.loc 6 8151 9
	lw	a0,-32(s0)
	call	mbedtls_x509_crt_free
	.loc 6 8152 9
	lw	a0,-32(s0)
	call	free
.L997:
	.loc 6 8155 12
	lw	a5,-20(s0)
	.loc 6 8156 1
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
.LFE314:
	.size	mbedtls_ssl_parse_certificate, .-mbedtls_ssl_parse_certificate
	.section	.rodata
	.align	2
.LC149:
	.string	"client finished"
	.align	2
.LC150:
	.string	"server finished"
	.align	2
.LC151:
	.string	"=> calc finished tls"
	.align	2
.LC152:
	.string	"finished output"
	.align	2
.LC153:
	.string	"calc finished result"
	.align	2
.LC154:
	.string	"<= calc finished"
	.section	.text.ssl_calc_finished_tls_generic,"ax",@progbits
	.align	1
	.type	ssl_calc_finished_tls_generic, @function
ssl_calc_finished_tls_generic:
.LFB315:
	.loc 6 8162 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	.loc 6 8163 18
	li	a5,12
	sw	a5,-32(s0)
	.loc 6 8171 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 6 8172 27
	lw	a5,-56(s0)
	sw	a5,-36(s0)
	.loc 6 8174 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_md_init
	.loc 6 8177 26
	lw	a5,-52(s0)
	lw	a5,60(a5)
	sw	a5,-28(s0)
	.loc 6 8178 8
	lw	a5,-28(s0)
	bne	a5,zero,.L1004
	.loc 6 8179 17
	lw	a5,-52(s0)
	lw	a5,56(a5)
	sw	a5,-28(s0)
.L1004:
	.loc 6 8182 12
	lw	a5,-72(s0)
	bne	a5,zero,.L1005
	.loc 6 8182 12 is_stmt 0 discriminator 1
	lui	a5,%hi(.LC149)
	addi	a5,a5,%lo(.LC149)
	sw	a5,-20(s0)
	j	.L1006
.L1005:
	.loc 6 8182 12 discriminator 2
	lui	a5,%hi(.LC150)
	addi	a5,a5,%lo(.LC150)
	sw	a5,-20(s0)
.L1006:
	.loc 6 8200 5 is_stmt 1
	lui	a5,%hi(.LC151)
	addi	a4,a5,%lo(.LC151)
	li	a5,8192
	addi	a3,a5,8
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8202 11
	lw	a0,-36(s0)
	call	mbedtls_md_info_from_ctx
	mv	a4,a0
	.loc 6 8202 11 is_stmt 0 discriminator 1
	addi	a5,s0,-48
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_setup
	sw	a0,-24(s0)
	.loc 6 8203 8 is_stmt 1
	lw	a5,-24(s0)
	bne	a5,zero,.L1012
	.loc 6 8206 11
	addi	a5,s0,-48
	lw	a1,-36(s0)
	mv	a0,a5
	call	mbedtls_md_clone
	sw	a0,-24(s0)
	.loc 6 8207 8
	lw	a5,-24(s0)
	bne	a5,zero,.L1013
	.loc 6 8211 11
	addi	a5,s0,-48
	lw	a1,-60(s0)
	mv	a0,a5
	call	mbedtls_md_finish
	sw	a0,-24(s0)
	.loc 6 8212 8
	lw	a5,-24(s0)
	bne	a5,zero,.L1014
	.loc 6 8217 5
	lw	a6,-64(s0)
	lw	a5,-60(s0)
	lui	a4,%hi(.LC152)
	addi	a4,a4,%lo(.LC152)
	li	a3,8192
	addi	a3,a3,25
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,4
	lw	a0,-52(s0)
	call	mbedtls_debug_print_buf
	.loc 6 8224 8
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 8224 19
	lw	a7,40(a5)
	.loc 6 8224 36
	lw	a5,-28(s0)
	addi	a0,a5,48
	.loc 6 8224 5
	lw	a6,-32(s0)
	lw	a5,-68(s0)
	lw	a4,-64(s0)
	lw	a3,-60(s0)
	lw	a2,-20(s0)
	li	a1,48
	jalr	a7
.LVL6:
	.loc 6 8227 5
	lw	a6,-32(s0)
	lw	a5,-68(s0)
	lui	a4,%hi(.LC153)
	addi	a4,a4,%lo(.LC153)
	li	a3,8192
	addi	a3,a3,35
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_buf
	.loc 6 8229 5
	lw	a1,-64(s0)
	lw	a0,-60(s0)
	call	mbedtls_platform_zeroize
	.loc 6 8231 5
	lui	a5,%hi(.LC154)
	addi	a4,a5,%lo(.LC154)
	li	a5,8192
	addi	a3,a5,39
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	j	.L1008
.L1012:
	.loc 6 8204 9
	nop
	j	.L1008
.L1013:
	.loc 6 8208 9
	nop
	j	.L1008
.L1014:
	.loc 6 8213 9
	nop
.L1008:
	.loc 6 8238 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_md_free
	.loc 6 8239 12
	lw	a5,-24(s0)
	.loc 6 8241 1
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
.LFE315:
	.size	ssl_calc_finished_tls_generic, .-ssl_calc_finished_tls_generic
	.section	.text.ssl_calc_finished_tls_sha256,"ax",@progbits
	.align	1
	.type	ssl_calc_finished_tls_sha256, @function
ssl_calc_finished_tls_sha256:
.LFB316:
	.loc 6 8246 1
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
	sw	a2,-60(s0)
	.loc 6 8252 46
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 8252 42
	addi	a1,a5,708
	.loc 6 8248 12
	addi	a2,s0,-48
	lw	a5,-60(s0)
	lw	a4,-56(s0)
	li	a3,32
	lw	a0,-52(s0)
	call	ssl_calc_finished_tls_generic
	mv	a5,a0
	.loc 6 8256 1
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
.LFE316:
	.size	ssl_calc_finished_tls_sha256, .-ssl_calc_finished_tls_sha256
	.section	.text.ssl_calc_finished_tls_sha384,"ax",@progbits
	.align	1
	.type	ssl_calc_finished_tls_sha384, @function
ssl_calc_finished_tls_sha384:
.LFB317:
	.loc 6 8263 1
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
	.loc 6 8269 46
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 6 8269 42
	addi	a1,a5,720
	.loc 6 8265 12
	addi	a2,s0,-64
	lw	a5,-76(s0)
	lw	a4,-72(s0)
	li	a3,48
	lw	a0,-68(s0)
	call	ssl_calc_finished_tls_generic
	mv	a5,a0
	.loc 6 8273 1
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
.LFE317:
	.size	ssl_calc_finished_tls_sha384, .-ssl_calc_finished_tls_sha384
	.section	.rodata
	.align	2
.LC155:
	.string	"=> handshake wrapup: final free"
	.align	2
.LC156:
	.string	"<= handshake wrapup: final free"
	.section	.text.mbedtls_ssl_handshake_wrapup_free_hs_transform,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_handshake_wrapup_free_hs_transform
	.type	mbedtls_ssl_handshake_wrapup_free_hs_transform, @function
mbedtls_ssl_handshake_wrapup_free_hs_transform:
.LFB318:
	.loc 6 8277 1
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
	.loc 6 8278 5
	lui	a5,%hi(.LC155)
	addi	a4,a5,%lo(.LC155)
	li	a5,8192
	addi	a3,a5,86
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8283 5
	lw	a0,-20(s0)
	call	mbedtls_ssl_handshake_free
	.loc 6 8284 13
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 6 8284 5
	mv	a0,a5
	call	free
	.loc 6 8285 20
	lw	a5,-20(s0)
	sw	zero,64(a5)
	.loc 6 8290 12
	lw	a5,-20(s0)
	lw	a5,76(a5)
	.loc 6 8290 8
	beq	a5,zero,.L1020
	.loc 6 8291 9
	lw	a5,-20(s0)
	lw	a5,76(a5)
	mv	a0,a5
	call	mbedtls_ssl_transform_free
	.loc 6 8292 17
	lw	a5,-20(s0)
	lw	a5,76(a5)
	.loc 6 8292 9
	mv	a0,a5
	call	free
.L1020:
	.loc 6 8294 25
	lw	a5,-20(s0)
	lw	a4,80(a5)
	.loc 6 8294 20
	lw	a5,-20(s0)
	sw	a4,76(a5)
	.loc 6 8295 30
	lw	a5,-20(s0)
	sw	zero,80(a5)
	.loc 6 8297 5
	lui	a5,%hi(.LC156)
	addi	a4,a5,%lo(.LC156)
	li	a5,8192
	addi	a3,a5,105
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8298 1
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
.LFE318:
	.size	mbedtls_ssl_handshake_wrapup_free_hs_transform, .-mbedtls_ssl_handshake_wrapup_free_hs_transform
	.section	.rodata
	.align	2
.LC157:
	.string	"=> handshake wrapup"
	.align	2
.LC158:
	.string	"cache did not store session"
	.align	2
.LC159:
	.string	"skip freeing handshake and transform"
	.align	2
.LC160:
	.string	"<= handshake wrapup"
	.section	.text.mbedtls_ssl_handshake_wrapup,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_handshake_wrapup
	.type	mbedtls_ssl_handshake_wrapup, @function
mbedtls_ssl_handshake_wrapup:
.LFB319:
	.loc 6 8301 1
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
	.loc 6 8302 21
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 8302 32
	lbu	a5,0(a5)
	.loc 6 8302 9
	sw	a5,-20(s0)
	.loc 6 8304 5
	lui	a5,%hi(.LC157)
	addi	a4,a5,%lo(.LC157)
	li	a5,8192
	addi	a3,a5,112
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8307 12
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 6 8307 8
	li	a5,1
	bne	a4,a5,.L1022
	.loc 6 8308 28
	lw	a5,-36(s0)
	li	a4,2
	sw	a4,8(a5)
	.loc 6 8309 34
	lw	a5,-36(s0)
	sw	zero,12(a5)
.L1022:
	.loc 6 8316 12
	lw	a5,-36(s0)
	lw	a5,56(a5)
	.loc 6 8316 8
	beq	a5,zero,.L1023
	.loc 6 8320 16
	lw	a5,-36(s0)
	lw	a4,56(a5)
	.loc 6 8319 12
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 6 8320 25
	lw	a4,116(a4)
	.loc 6 8319 50
	sw	a4,116(a5)
	.loc 6 8323 9
	lw	a5,-36(s0)
	lw	a5,56(a5)
	mv	a0,a5
	call	mbedtls_ssl_session_free
	.loc 6 8324 17
	lw	a5,-36(s0)
	lw	a5,56(a5)
	.loc 6 8324 9
	mv	a0,a5
	call	free
.L1023:
	.loc 6 8326 23
	lw	a5,-36(s0)
	lw	a4,60(a5)
	.loc 6 8326 18
	lw	a5,-36(s0)
	sw	a4,56(a5)
	.loc 6 8327 28
	lw	a5,-36(s0)
	sw	zero,60(a5)
	.loc 6 8332 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 8332 18
	lw	a5,44(a5)
	.loc 6 8332 8
	beq	a5,zero,.L1024
	.loc 6 8333 12
	lw	a5,-36(s0)
	lw	a5,56(a5)
	.loc 6 8333 21
	lw	a5,12(a5)
	.loc 6 8332 39 discriminator 1
	beq	a5,zero,.L1024
	.loc 6 8333 35
	lw	a5,-20(s0)
	bne	a5,zero,.L1024
	.loc 6 8335 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 8335 22
	lw	a5,44(a5)
	.loc 6 8335 39
	lw	a4,-36(s0)
	lw	a4,0(a4)
	.loc 6 8335 45
	lw	a0,48(a4)
	.loc 6 8336 39
	lw	a4,-36(s0)
	lw	a4,56(a4)
	.loc 6 8336 48
	addi	a1,a4,16
	.loc 6 8337 39
	lw	a4,-36(s0)
	lw	a4,56(a4)
	.loc 6 8335 13
	lw	a2,12(a4)
	.loc 6 8338 39
	lw	a4,-36(s0)
	lw	a4,56(a4)
	.loc 6 8335 13
	mv	a3,a4
	jalr	a5
.LVL7:
	mv	a5,a0
	.loc 6 8335 12 discriminator 1
	beq	a5,zero,.L1024
	.loc 6 8339 13
	lui	a5,%hi(.LC158)
	addi	a4,a5,%lo(.LC158)
	li	a5,8192
	addi	a3,a5,147
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
.L1024:
	.loc 6 8344 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 8344 18
	lbu	a4,5(a5)
	.loc 6 8344 8
	li	a5,1
	bne	a4,a5,.L1025
	.loc 6 8345 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 8345 23
	lw	a5,644(a5)
	.loc 6 8344 35 discriminator 1
	beq	a5,zero,.L1025
	.loc 6 8347 9
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_ssl_set_timer
	.loc 6 8351 9
	lui	a5,%hi(.LC159)
	addi	a4,a5,%lo(.LC159)
	li	a5,8192
	addi	a3,a5,159
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	j	.L1026
.L1025:
	.loc 6 8354 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_wrapup_free_hs_transform
.L1026:
	.loc 6 8356 5
	li	a1,27
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_set_state
	.loc 6 8358 5
	lui	a5,%hi(.LC160)
	addi	a4,a5,%lo(.LC160)
	li	a5,8192
	addi	a3,a5,166
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8359 1
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
.LFE319:
	.size	mbedtls_ssl_handshake_wrapup, .-mbedtls_ssl_handshake_wrapup
	.section	.rodata
	.align	2
.LC161:
	.string	"=> write finished"
	.align	2
.LC162:
	.string	"calc_finished"
	.align	2
.LC163:
	.string	"switching to new transform spec for outbound data"
	.align	2
.LC164:
	.string	"DTLS epoch would wrap"
	.align	2
.LC165:
	.string	"mbedtls_ssl_flight_transmit"
	.align	2
.LC166:
	.string	"<= write finished"
	.section	.text.mbedtls_ssl_write_finished,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_write_finished
	.type	mbedtls_ssl_write_finished, @function
mbedtls_ssl_write_finished:
.LFB320:
	.loc 6 8362 1
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
	.loc 6 8366 5
	lui	a5,%hi(.LC161)
	addi	a4,a5,%lo(.LC161)
	li	a5,8192
	addi	a3,a5,174
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8368 5
	lw	a5,-36(s0)
	lw	a5,80(a5)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_ssl_update_out_pointers
	.loc 6 8370 14
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 8370 25
	lw	a5,36(a5)
	.loc 6 8370 49
	lw	a4,-36(s0)
	lw	a4,216(a4)
	.loc 6 8370 11
	addi	a3,a4,4
	.loc 6 8370 67
	lw	a4,-36(s0)
	lw	a4,0(a4)
	.loc 6 8370 73
	lbu	a4,4(a4)
	.loc 6 8370 11
	mv	a2,a4
	mv	a1,a3
	lw	a0,-36(s0)
	jalr	a5
.LVL8:
	sw	a0,-24(s0)
	.loc 6 8371 8
	lw	a5,-24(s0)
	beq	a5,zero,.L1028
	.loc 6 8372 9
	lw	a5,-24(s0)
	lui	a4,%hi(.LC162)
	addi	a4,a4,%lo(.LC162)
	li	a3,8192
	addi	a3,a3,180
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 6 8373 16
	lw	a5,-24(s0)
	j	.L1029
.L1028:
	.loc 6 8382 14
	li	a5,12
	sw	a5,-28(s0)
	.loc 6 8385 26
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,528(a5)
	.loc 6 8386 15
	lw	a5,-36(s0)
	addi	a4,a5,532
	.loc 6 8386 37
	lw	a5,-36(s0)
	lw	a5,216(a5)
	.loc 6 8386 47
	addi	a5,a5,4
	.loc 6 8386 5
	lw	a2,-28(s0)
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 6 8389 25
	lw	a5,-28(s0)
	addi	a4,a5,4
	.loc 6 8389 21
	lw	a5,-36(s0)
	sw	a4,224(a5)
	.loc 6 8390 22
	lw	a5,-36(s0)
	li	a4,22
	sw	a4,220(a5)
	.loc 6 8391 8
	lw	a5,-36(s0)
	lw	a5,216(a5)
	.loc 6 8391 21
	li	a4,20
	sb	a4,0(a5)
	.loc 6 8397 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 8397 23
	lbu	a5,0(a5)
	.loc 6 8397 8
	beq	a5,zero,.L1030
	.loc 6 8399 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 8399 22
	lbu	a5,4(a5)
	.loc 6 8399 12
	bne	a5,zero,.L1031
	.loc 6 8400 13
	li	a1,15
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_set_state
.L1031:
	.loc 6 8404 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 8404 22
	lbu	a4,4(a5)
	.loc 6 8404 12
	li	a5,1
	bne	a4,a5,.L1032
	.loc 6 8405 13
	li	a1,10
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_set_state
	j	.L1032
.L1030:
	.loc 6 8409 9
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_increment_state
.L1032:
	.loc 6 8416 5
	lui	a5,%hi(.LC163)
	addi	a4,a5,%lo(.LC163)
	li	a5,8192
	addi	a3,a5,224
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8419 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 8419 18
	lbu	a4,5(a5)
	.loc 6 8419 8
	li	a5,1
	bne	a4,a5,.L1033
.LBB139:
	.loc 6 8423 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 8423 48
	lw	a4,-36(s0)
	lw	a4,72(a4)
	.loc 6 8423 43
	sw	a4,660(a5)
	.loc 6 8424 19
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 6 8424 30
	addi	a4,a5,664
	.loc 6 8424 48
	lw	a5,-36(s0)
	addi	a5,a5,236
	.loc 6 8424 9
	li	a2,8
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 6 8428 16
	lw	a5,-36(s0)
	addi	a5,a5,238
	.loc 6 8428 9
	li	a2,6
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 6 8432 16
	li	a5,2
	sb	a5,-17(s0)
	.loc 6 8432 9
	j	.L1034
.L1037:
	.loc 6 8433 38
	lbu	a5,-17(s0)
	addi	a5,a5,-1
	.loc 6 8433 35
	lw	a4,-36(s0)
	add	a4,a4,a5
	lbu	a4,236(a4)
	.loc 6 8433 17
	addi	a4,a4,1
	andi	a3,a4,0xff
	.loc 6 8433 16
	lw	a4,-36(s0)
	add	a4,a4,a5
	sb	a3,236(a4)
	.loc 6 8433 35
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a5,236(a5)
	.loc 6 8433 16
	bne	a5,zero,.L1042
	.loc 6 8432 29 discriminator 2
	lbu	a5,-17(s0)
	addi	a5,a5,-1
	sb	a5,-17(s0)
.L1034:
	.loc 6 8432 23 discriminator 1
	lbu	a5,-17(s0)
	bne	a5,zero,.L1037
	j	.L1036
.L1042:
	.loc 6 8434 17
	nop
.L1036:
	.loc 6 8439 12
	lbu	a5,-17(s0)
	bne	a5,zero,.L1038
	.loc 6 8440 13
	lui	a5,%hi(.LC164)
	addi	a4,a5,%lo(.LC164)
	li	a5,8192
	addi	a3,a5,248
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8441 20
	li	a5,-28672
	addi	a5,a5,1152
	j	.L1029
.L1033:
.LBE139:
	.loc 6 8445 15
	lw	a5,-36(s0)
	addi	a5,a5,236
	.loc 6 8445 5
	li	a2,8
	li	a1,0
	mv	a0,a5
	call	memset
.L1038:
	.loc 6 8447 29
	lw	a5,-36(s0)
	lw	a4,80(a5)
	.loc 6 8447 24
	lw	a5,-36(s0)
	sw	a4,72(a5)
	.loc 6 8448 27
	lw	a5,-36(s0)
	lw	a4,60(a5)
	.loc 6 8448 22
	lw	a5,-36(s0)
	sw	a4,52(a5)
	.loc 6 8451 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 8451 18
	lbu	a4,5(a5)
	.loc 6 8451 8
	li	a5,1
	bne	a4,a5,.L1039
	.loc 6 8452 9
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_flight_completed
.L1039:
	.loc 6 8456 16
	lw	a0,-36(s0)
	call	mbedtls_ssl_write_handshake_msg
	sw	a0,-24(s0)
	.loc 6 8456 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L1040
	.loc 6 8457 9
	lw	a5,-24(s0)
	lui	a4,%hi(.LC73)
	addi	a4,a4,%lo(.LC73)
	li	a3,8192
	addi	a3,a3,265
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 6 8458 16
	lw	a5,-24(s0)
	j	.L1029
.L1040:
	.loc 6 8462 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 6 8462 18
	lbu	a4,5(a5)
	.loc 6 8462 8
	li	a5,1
	bne	a4,a5,.L1041
	.loc 6 8463 16
	lw	a0,-36(s0)
	call	mbedtls_ssl_flight_transmit
	sw	a0,-24(s0)
	.loc 6 8462 35 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L1041
	.loc 6 8464 9
	lw	a5,-24(s0)
	lui	a4,%hi(.LC165)
	addi	a4,a4,%lo(.LC165)
	li	a3,8192
	addi	a3,a3,272
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 6 8465 16
	lw	a5,-24(s0)
	j	.L1029
.L1041:
	.loc 6 8469 5
	lui	a5,%hi(.LC166)
	addi	a4,a5,%lo(.LC166)
	li	a5,8192
	addi	a3,a5,277
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8471 12
	li	a5,0
.L1029:
	.loc 6 8472 1
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
.LFE320:
	.size	mbedtls_ssl_write_finished, .-mbedtls_ssl_write_finished
	.section	.rodata
	.align	2
.LC167:
	.string	"=> parse finished"
	.align	2
.LC168:
	.string	"bad finished message"
	.align	2
.LC169:
	.string	"<= parse finished"
	.section	.text.mbedtls_ssl_parse_finished,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_parse_finished
	.type	mbedtls_ssl_parse_finished, @function
mbedtls_ssl_parse_finished:
.LFB321:
	.loc 6 8477 1
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
	.loc 6 8478 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 6 8479 18
	li	a5,12
	sw	a5,-24(s0)
	.loc 6 8482 5
	lui	a5,%hi(.LC167)
	addi	a4,a5,%lo(.LC167)
	li	a5,8192
	addi	a3,a5,290
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8484 14
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 8484 25
	lw	a5,36(a5)
	.loc 6 8484 54
	lw	a4,-52(s0)
	lw	a4,0(a4)
	.loc 6 8484 60
	lbu	a4,4(a4)
	.loc 6 8484 11
	xori	a4,a4,1
	andi	a4,a4,0xff
	mv	a3,a4
	addi	a4,s0,-36
	mv	a2,a3
	mv	a1,a4
	lw	a0,-52(s0)
	jalr	a5
.LVL9:
	sw	a0,-20(s0)
	.loc 6 8485 8
	lw	a5,-20(s0)
	beq	a5,zero,.L1044
	.loc 6 8486 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC162)
	addi	a4,a4,%lo(.LC162)
	li	a3,8192
	addi	a3,a3,294
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_ret
	.loc 6 8487 16
	lw	a5,-20(s0)
	j	.L1056
.L1044:
	.loc 6 8490 16
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_ssl_read_record
	sw	a0,-20(s0)
	.loc 6 8490 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L1046
	.loc 6 8491 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC147)
	addi	a4,a4,%lo(.LC147)
	li	a3,8192
	addi	a3,a3,299
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_ret
	.loc 6 8492 9
	j	.L1047
.L1046:
	.loc 6 8495 12
	lw	a5,-52(s0)
	lw	a4,128(a5)
	.loc 6 8495 8
	li	a5,22
	beq	a4,a5,.L1048
	.loc 6 8496 9
	lui	a5,%hi(.LC168)
	addi	a4,a5,%lo(.LC168)
	li	a5,8192
	addi	a3,a5,304
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8497 9
	li	a2,10
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 6 8499 13
	li	a5,-28672
	addi	a5,a5,-1792
	sw	a5,-20(s0)
	.loc 6 8500 9
	j	.L1047
.L1048:
	.loc 6 8503 12
	lw	a5,-52(s0)
	lw	a5,120(a5)
	.loc 6 8503 20
	lbu	a4,0(a5)
	.loc 6 8503 8
	li	a5,20
	beq	a4,a5,.L1049
	.loc 6 8504 9
	li	a2,10
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 6 8506 13
	li	a5,-28672
	addi	a5,a5,-1792
	sw	a5,-20(s0)
	.loc 6 8507 9
	j	.L1047
.L1049:
	.loc 6 8510 12
	lw	a5,-52(s0)
	lw	s1,168(a5)
	.loc 6 8510 26
	lw	a0,-52(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a4,a0
	.loc 6 8510 54 discriminator 1
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 6 8510 8 discriminator 1
	beq	s1,a5,.L1050
	.loc 6 8511 9
	lui	a5,%hi(.LC168)
	addi	a4,a5,%lo(.LC168)
	li	a5,8192
	addi	a3,a5,319
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8512 9
	li	a2,50
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 6 8514 13
	li	a5,-28672
	addi	a5,a5,-768
	sw	a5,-20(s0)
	.loc 6 8515 9
	j	.L1047
.L1050:
	.loc 6 8518 30
	lw	a5,-52(s0)
	lw	s1,120(a5)
	.loc 6 8518 41
	lw	a0,-52(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a5,a0
	.loc 6 8518 39 discriminator 1
	add	a5,s1,a5
	.loc 6 8518 9 discriminator 1
	addi	a4,s0,-36
	lw	a2,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ct_memcmp
	mv	a5,a0
	.loc 6 8518 8 discriminator 2
	beq	a5,zero,.L1051
	.loc 6 8520 9
	lui	a5,%hi(.LC168)
	addi	a4,a5,%lo(.LC168)
	li	a5,8192
	addi	a3,a5,328
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8521 9
	li	a2,51
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 6 8523 13
	li	a5,-28672
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 6 8524 9
	j	.L1047
.L1051:
	.loc 6 8528 26
	lw	a5,-52(s0)
	lw	a4,-24(s0)
	sw	a4,528(a5)
	.loc 6 8529 15
	lw	a5,-52(s0)
	addi	a5,a5,544
	.loc 6 8529 5
	addi	a4,s0,-36
	lw	a2,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 6 8532 12
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 8532 23
	lbu	a5,0(a5)
	.loc 6 8532 8
	beq	a5,zero,.L1052
	.loc 6 8534 16
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 6 8534 22
	lbu	a5,4(a5)
	.loc 6 8534 12
	bne	a5,zero,.L1053
	.loc 6 8535 13
	li	a1,10
	lw	a0,-52(s0)
	call	mbedtls_ssl_handshake_set_state
.L1053:
	.loc 6 8539 16
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 6 8539 22
	lbu	a4,4(a5)
	.loc 6 8539 12
	li	a5,1
	bne	a4,a5,.L1054
	.loc 6 8540 13
	li	a1,15
	lw	a0,-52(s0)
	call	mbedtls_ssl_handshake_set_state
	j	.L1054
.L1052:
	.loc 6 8544 9
	lw	a0,-52(s0)
	call	mbedtls_ssl_handshake_increment_state
.L1054:
	.loc 6 8548 12
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 6 8548 18
	lbu	a4,5(a5)
	.loc 6 8548 8
	li	a5,1
	bne	a4,a5,.L1055
	.loc 6 8549 9
	lw	a0,-52(s0)
	call	mbedtls_ssl_recv_flight_completed
.L1055:
	.loc 6 8553 5
	lui	a5,%hi(.LC169)
	addi	a4,a5,%lo(.LC169)
	li	a5,8192
	addi	a3,a5,361
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
.L1047:
	.loc 6 8556 5
	addi	a5,s0,-36
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 6 8557 12
	lw	a5,-20(s0)
.L1056:
	.loc 6 8558 1
	mv	a0,a5
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
.LFE321:
	.size	mbedtls_ssl_parse_finished, .-mbedtls_ssl_parse_finished
	.section	.text.ssl_tls12prf_from_cs,"ax",@progbits
	.align	1
	.type	ssl_tls12prf_from_cs, @function
ssl_tls12prf_from_cs:
.LFB322:
	.loc 6 8566 1
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
	.loc 6 8568 9
	lw	a0,-36(s0)
	call	mbedtls_ssl_ciphersuite_from_id
	sw	a0,-20(s0)
	.loc 6 8570 8
	lw	a5,-20(s0)
	beq	a5,zero,.L1058
	.loc 6 8570 52 discriminator 1
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	.loc 6 8570 33 discriminator 1
	li	a5,10
	bne	a4,a5,.L1058
	.loc 6 8571 16
	lui	a5,%hi(tls_prf_sha384)
	addi	a5,a5,%lo(tls_prf_sha384)
	j	.L1059
.L1058:
	.loc 6 8576 12
	lw	a5,-20(s0)
	beq	a5,zero,.L1060
	.loc 6 8576 56 discriminator 1
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	.loc 6 8576 37 discriminator 1
	li	a5,9
	bne	a4,a5,.L1060
	.loc 6 8577 20
	lui	a5,%hi(tls_prf_sha256)
	addi	a5,a5,%lo(tls_prf_sha256)
	j	.L1059
.L1060:
	.loc 6 8586 11
	li	a5,0
.L1059:
	.loc 6 8587 1
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
.LFE322:
	.size	ssl_tls12prf_from_cs, .-ssl_tls12prf_from_cs
	.section	.text.tls_prf_get_type,"ax",@progbits
	.align	1
	.type	tls_prf_get_type, @function
tls_prf_get_type:
.LFB323:
	.loc 6 8591 1
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
	.loc 6 8594 8
	lw	a4,-20(s0)
	lui	a5,%hi(tls_prf_sha384)
	addi	a5,a5,%lo(tls_prf_sha384)
	bne	a4,a5,.L1062
	.loc 6 8595 16
	li	a5,1
	j	.L1063
.L1062:
	.loc 6 8599 8
	lw	a4,-20(s0)
	lui	a5,%hi(tls_prf_sha256)
	addi	a5,a5,%lo(tls_prf_sha256)
	bne	a4,a5,.L1064
	.loc 6 8600 16
	li	a5,2
	j	.L1063
.L1064:
	.loc 6 8603 12
	li	a5,0
.L1063:
	.loc 6 8604 1
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
.LFE323:
	.size	tls_prf_get_type, .-tls_prf_get_type
	.section	.rodata
	.align	2
.LC170:
	.string	"ciphersuite info for %d not found"
	.align	2
.LC171:
	.string	"cipher info for %u not found"
	.align	2
.LC172:
	.string	"mbedtls_md info for %u not found"
	.align	2
.LC173:
	.string	"Copy CIDs into SSL transform"
	.align	2
.LC174:
	.string	"Incoming CID"
	.align	2
.LC175:
	.string	"Outgoing CID"
	.align	2
.LC176:
	.string	"key expansion"
	.align	2
.LC177:
	.string	"ciphersuite = %s"
	.align	2
.LC178:
	.string	"random bytes"
	.align	2
.LC179:
	.string	"key block"
	.align	2
.LC180:
	.string	"mbedtls_md_setup"
	.align	2
.LC181:
	.string	"keylen: %u, minlen: %u, ivlen: %u, maclen: %u"
	.align	2
.LC182:
	.string	"mbedtls_cipher_setup"
	.align	2
.LC183:
	.string	"mbedtls_cipher_setkey"
	.align	2
.LC184:
	.string	"mbedtls_cipher_set_padding_mode"
	.section	.text.ssl_tls12_populate_transform,"ax",@progbits
	.align	1
	.type	ssl_tls12_populate_transform, @function
ssl_tls12_populate_transform:
.LFB324:
	.loc 6 8638 1
	.cfi_startproc
	addi	sp,sp,-400
	.cfi_def_cfa_offset 400
	sw	ra,396(sp)
	sw	s0,392(sp)
	sw	s1,388(sp)
	sw	s2,384(sp)
	sw	s3,380(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,400
	.cfi_def_cfa 8, 0
	sw	a0,-356(s0)
	sw	a1,-360(s0)
	sw	a2,-364(s0)
	sw	a3,-368(s0)
	sw	a4,-372(s0)
	sw	a5,-376(s0)
	mv	a5,a6
	sw	a7,-384(s0)
	sh	a5,-378(s0)
	.loc 6 8639 9
	sw	zero,-36(s0)
	.loc 6 8645 12
	sw	zero,-56(s0)
	.loc 6 8668 33
	lw	a5,-356(s0)
	lw	a4,-368(s0)
	sw	a4,76(a5)
	.loc 6 8670 28
	lw	a5,-356(s0)
	lhu	a4,-378(s0)
	sh	a4,80(a5)
	.loc 6 8673 21
	lw	a5,-356(s0)
	addi	a5,a5,286
	.loc 6 8673 5
	li	a2,64
	lw	a1,-376(s0)
	mv	a0,a5
	call	memcpy
	.loc 6 8687 24
	lw	a0,-360(s0)
	call	mbedtls_ssl_ciphersuite_from_id
	sw	a0,-64(s0)
	.loc 6 8688 8
	lw	a5,-64(s0)
	bne	a5,zero,.L1066
	.loc 6 8689 9
	lw	a5,-360(s0)
	lui	a4,%hi(.LC170)
	addi	a4,a4,%lo(.LC170)
	li	a3,8192
	addi	a3,a3,497
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,0(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8691 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L1104
.L1066:
	.loc 6 8694 16
	lw	a1,-64(s0)
	lw	a0,-368(s0)
	call	mbedtls_ssl_get_mode_from_ciphersuite
	mv	a5,a0
	sb	a5,-65(s0)
	.loc 6 8700 8
	lbu	a4,-65(s0)
	li	a5,3
	bne	a4,a5,.L1068
	.loc 6 8702 29
	lw	a5,-64(s0)
	lbu	a5,11(a5)
	.loc 6 8702 37
	andi	a5,a5,2
	.loc 6 8702 48
	beq	a5,zero,.L1069
	.loc 6 8702 48 is_stmt 0 discriminator 1
	li	a5,8
	j	.L1070
.L1069:
	.loc 6 8702 48 discriminator 2
	li	a5,16
.L1070:
	.loc 6 8701 27 is_stmt 1
	lw	a4,-356(s0)
	sw	a5,16(a4)
.L1068:
	.loc 6 8716 89
	lw	a5,-64(s0)
	lbu	a5,8(a5)
	.loc 6 8716 19
	mv	a0,a5
	call	mbedtls_cipher_info_from_type
	sw	a0,-72(s0)
	.loc 6 8717 8
	lw	a5,-72(s0)
	bne	a5,zero,.L1071
	.loc 6 8718 181
	lw	a5,-64(s0)
	lbu	a5,8(a5)
	.loc 6 8718 9
	lui	a4,%hi(.LC171)
	addi	a4,a4,%lo(.LC171)
	li	a3,8192
	addi	a3,a3,526
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,0(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8720 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L1104
.L1071:
	.loc 6 8732 77
	lw	a5,-64(s0)
	lbu	a5,9(a5)
	.loc 6 8732 15
	mv	a0,a5
	call	mbedtls_md_info_from_type
	sw	a0,-76(s0)
	.loc 6 8733 8
	lw	a5,-76(s0)
	bne	a5,zero,.L1072
	.loc 6 8734 196
	lw	a5,-64(s0)
	lbu	a5,9(a5)
	.loc 6 8734 9
	lui	a4,%hi(.LC172)
	addi	a4,a4,%lo(.LC172)
	li	a3,8192
	addi	a3,a3,542
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,0(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8736 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L1104
.L1072:
	.loc 6 8743 12
	lw	a5,0(s0)
	lw	a5,64(a5)
	.loc 6 8743 23
	lbu	a4,672(a5)
	.loc 6 8743 8
	li	a5,1
	bne	a4,a5,.L1073
	.loc 6 8744 9
	lui	a5,%hi(.LC173)
	addi	a4,a5,%lo(.LC173)
	li	a5,8192
	addi	a3,a5,552
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,0(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8746 36
	lw	a5,0(s0)
	lbu	a4,588(a5)
	.loc 6 8746 31
	lw	a5,-356(s0)
	sb	a4,220(a5)
	.loc 6 8747 25
	lw	a5,-356(s0)
	addi	a4,a5,222
	.loc 6 8747 38
	lw	a5,0(s0)
	addi	a3,a5,556
	.loc 6 8747 52
	lw	a5,0(s0)
	lbu	a5,588(a5)
	.loc 6 8747 9
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
	.loc 6 8748 158
	lw	a5,-356(s0)
	addi	a4,a5,222
	.loc 6 8748 177
	lw	a5,-356(s0)
	lbu	a5,220(a5)
	.loc 6 8748 9
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC174)
	addi	a4,a4,%lo(.LC174)
	li	a3,8192
	addi	a3,a3,556
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,3
	lw	a0,0(s0)
	call	mbedtls_debug_print_buf
	.loc 6 8751 37
	lw	a5,0(s0)
	lw	a5,64(a5)
	.loc 6 8751 48
	lbu	a4,705(a5)
	.loc 6 8751 32
	lw	a5,-356(s0)
	sb	a4,221(a5)
	.loc 6 8752 25
	lw	a5,-356(s0)
	addi	a4,a5,254
	.loc 6 8752 39
	lw	a5,0(s0)
	lw	a5,64(a5)
	.loc 6 8752 50
	addi	a3,a5,673
	.loc 6 8753 19
	lw	a5,0(s0)
	lw	a5,64(a5)
	.loc 6 8753 30
	lbu	a5,705(a5)
	.loc 6 8752 9
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
	.loc 6 8754 158
	lw	a5,-356(s0)
	addi	a4,a5,254
	.loc 6 8754 178
	lw	a5,-356(s0)
	lbu	a5,221(a5)
	.loc 6 8754 9
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC175)
	addi	a4,a4,%lo(.LC175)
	li	a3,8192
	addi	a3,a3,562
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,3
	lw	a0,0(s0)
	call	mbedtls_debug_print_buf
.L1073:
	.loc 6 8762 11
	addi	a5,s0,-348
	lw	a7,-372(s0)
	li	a6,256
	li	a4,64
	lw	a3,-376(s0)
	lui	a2,%hi(.LC176)
	addi	a2,a2,%lo(.LC176)
	li	a1,48
	lw	a0,-364(s0)
	jalr	a7
.LVL10:
	sw	a0,-36(s0)
	.loc 6 8763 8
	lw	a5,-36(s0)
	beq	a5,zero,.L1074
	.loc 6 8764 9
	lw	a5,-36(s0)
	lui	a4,%hi(.LC121)
	addi	a4,a4,%lo(.LC121)
	li	a3,8192
	addi	a3,a3,572
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,0(s0)
	call	mbedtls_debug_print_ret
	.loc 6 8765 16
	lw	a5,-36(s0)
	j	.L1104
.L1074:
	.loc 6 8768 5
	lw	a0,-360(s0)
	call	mbedtls_ssl_get_ciphersuite_name
	mv	a5,a0
	.loc 6 8768 5 is_stmt 0 discriminator 1
	lui	a4,%hi(.LC177)
	addi	a4,a4,%lo(.LC177)
	li	a3,8192
	addi	a3,a3,576
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,3
	lw	a0,0(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8770 5 is_stmt 1
	li	a6,48
	lw	a5,-364(s0)
	lui	a4,%hi(.LC116)
	addi	a4,a4,%lo(.LC116)
	li	a3,8192
	addi	a3,a3,578
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,3
	lw	a0,0(s0)
	call	mbedtls_debug_print_buf
	.loc 6 8771 5
	li	a6,64
	lw	a5,-376(s0)
	lui	a4,%hi(.LC178)
	addi	a4,a4,%lo(.LC178)
	li	a3,8192
	addi	a3,a3,579
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,4
	lw	a0,0(s0)
	call	mbedtls_debug_print_buf
	.loc 6 8772 5
	addi	a5,s0,-348
	li	a6,256
	lui	a4,%hi(.LC179)
	addi	a4,a4,%lo(.LC179)
	li	a3,8192
	addi	a3,a3,580
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,4
	lw	a0,0(s0)
	call	mbedtls_debug_print_buf
	.loc 6 8781 14
	lw	a0,-72(s0)
	call	mbedtls_cipher_info_get_key_bitlen
	mv	a5,a0
	.loc 6 8781 12 discriminator 1
	srli	a5,a5,3
	sw	a5,-80(s0)
	.loc 6 8785 8
	lbu	a4,-65(s0)
	li	a5,3
	bne	a4,a5,.L1075
.LBB140:
	.loc 6 8788 27
	lw	a5,-356(s0)
	sw	zero,12(a5)
	.loc 6 8789 21
	sw	zero,-56(s0)
	.loc 6 8799 26
	lw	a5,-356(s0)
	li	a4,12
	sw	a4,4(a5)
	.loc 6 8801 13
	sw	zero,-88(s0)
	.loc 6 8805 26
	lw	a0,-72(s0)
	call	mbedtls_cipher_info_get_mode
	mv	a5,a0
	.loc 6 8806 26
	addi	a5,a5,-11
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 6 8805 23
	sw	a5,-88(s0)
	.loc 6 8809 12
	lw	a5,-88(s0)
	beq	a5,zero,.L1076
	.loc 6 8810 36
	lw	a5,-356(s0)
	li	a4,12
	sw	a4,8(a5)
	j	.L1077
.L1076:
	.loc 6 8812 36
	lw	a5,-356(s0)
	li	a4,4
	sw	a4,8(a5)
.L1077:
	.loc 6 8816 35
	lw	a5,-356(s0)
	lw	a4,4(a5)
	.loc 6 8816 54
	lw	a5,-356(s0)
	lw	a5,8(a5)
	.loc 6 8816 24
	sub	a5,a4,a5
	sw	a5,-92(s0)
	.loc 6 8817 55
	lw	a5,-356(s0)
	lw	a4,16(a5)
	.loc 6 8817 44
	lw	a5,-92(s0)
	add	a4,a4,a5
	.loc 6 8817 27
	lw	a5,-356(s0)
	sw	a4,0(a5)
.LBE140:
	j	.L1078
.L1075:
	.loc 6 8821 8
	lbu	a5,-65(s0)
	beq	a5,zero,.L1079
	.loc 6 8821 45 discriminator 1
	lbu	a4,-65(s0)
	li	a5,1
	beq	a4,a5,.L1079
	.loc 6 8822 42
	lbu	a4,-65(s0)
	li	a5,2
	bne	a4,a5,.L1080
.L1079:
.LBB141:
	.loc 6 8827 29
	lw	a0,-72(s0)
	call	mbedtls_cipher_info_get_block_size
	sw	a0,-84(s0)
	.loc 6 8835 20
	lw	a5,-356(s0)
	addi	a5,a5,52
	li	a2,1
	lw	a1,-76(s0)
	mv	a0,a5
	call	mbedtls_md_setup
	sw	a0,-36(s0)
	.loc 6 8835 12 discriminator 1
	lw	a5,-36(s0)
	bne	a5,zero,.L1081
	.loc 6 8836 20
	lw	a5,-356(s0)
	addi	a5,a5,64
	li	a2,1
	lw	a1,-76(s0)
	mv	a0,a5
	call	mbedtls_md_setup
	sw	a0,-36(s0)
	.loc 6 8835 79 discriminator 2
	lw	a5,-36(s0)
	beq	a5,zero,.L1082
.L1081:
	.loc 6 8837 13
	lw	a5,-36(s0)
	lui	a4,%hi(.LC180)
	addi	a4,a4,%lo(.LC180)
	li	a3,8192
	addi	a3,a3,645
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,0(s0)
	call	mbedtls_debug_print_ret
	.loc 6 8838 13
	j	.L1083
.L1082:
	.loc 6 8842 23
	lw	a0,-76(s0)
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 6 8842 21 discriminator 1
	sw	a5,-56(s0)
	.loc 6 8844 27
	lw	a5,-356(s0)
	lw	a4,-56(s0)
	sw	a4,12(a5)
	.loc 6 8850 28
	lw	a0,-72(s0)
	call	mbedtls_cipher_info_get_iv_size
	mv	a4,a0
	.loc 6 8850 26 discriminator 1
	lw	a5,-356(s0)
	sw	a4,4(a5)
	.loc 6 8854 12
	lbu	a5,-65(s0)
	bne	a5,zero,.L1084
	.loc 6 8855 42
	lw	a5,-356(s0)
	lw	a4,12(a5)
	.loc 6 8855 31
	lw	a5,-356(s0)
	sw	a4,0(a5)
.LBE141:
	.loc 6 8823 47
	j	.L1078
.L1084:
.LBB142:
	.loc 6 8864 16
	lbu	a4,-65(s0)
	li	a5,2
	bne	a4,a5,.L1086
	.loc 6 8865 46
	lw	a5,-356(s0)
	lw	a4,12(a5)
	.loc 6 8866 37
	lw	a5,-84(s0)
	add	a4,a4,a5
	.loc 6 8865 35
	lw	a5,-356(s0)
	sw	a4,0(a5)
	j	.L1087
.L1086:
	.loc 6 8870 46
	lw	a5,-356(s0)
	lw	a4,12(a5)
	.loc 6 8871 37
	lw	a5,-84(s0)
	add	a4,a4,a5
	.loc 6 8872 48
	lw	a5,-356(s0)
	lw	a3,12(a5)
	.loc 6 8872 57
	lw	a5,-84(s0)
	remu	a5,a3,a5
	.loc 6 8872 37
	sub	a4,a4,a5
	.loc 6 8870 35
	lw	a5,-356(s0)
	sw	a4,0(a5)
.L1087:
	.loc 6 8875 16
	lhu	a4,-378(s0)
	li	a5,771
	bne	a4,a5,.L1088
	.loc 6 8876 26
	lw	a5,-356(s0)
	lw	a4,0(a5)
	.loc 6 8876 47
	lw	a5,-356(s0)
	lw	a5,4(a5)
	.loc 6 8876 35
	add	a4,a4,a5
	lw	a5,-356(s0)
	sw	a4,0(a5)
.LBE142:
	.loc 6 8823 47
	j	.L1078
.L1088:
.LBB143:
	.loc 6 8878 17
	lui	a5,%hi(.LC54)
	addi	a4,a5,%lo(.LC54)
	li	a5,8192
	addi	a3,a5,686
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,0(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8879 21
	li	a5,-28672
	addi	a5,a5,1024
	sw	a5,-36(s0)
	.loc 6 8880 17
	j	.L1083
.L1080:
.LBE143:
	.loc 6 8886 9
	lui	a5,%hi(.LC54)
	addi	a4,a5,%lo(.LC54)
	li	a5,8192
	addi	a3,a5,694
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,0(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8887 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L1104
.L1078:
	.loc 6 8890 217
	lw	a5,-356(s0)
	lw	a4,0(a5)
	.loc 6 8890 247
	lw	a5,-356(s0)
	lw	a3,4(a5)
	.loc 6 8890 276
	lw	a5,-356(s0)
	lw	a5,12(a5)
	.loc 6 8890 5
	sw	a5,0(sp)
	mv	a7,a3
	mv	a6,a4
	lw	a5,-80(s0)
	lui	a4,%hi(.LC181)
	addi	a4,a4,%lo(.LC181)
	li	a3,8192
	addi	a3,a3,698
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,3
	lw	a0,0(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8900 8
	lw	a5,-384(s0)
	bne	a5,zero,.L1089
	.loc 6 8901 37
	lw	a5,-56(s0)
	slli	a5,a5,1
	.loc 6 8901 14
	addi	a4,s0,-348
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 6 8902 37
	lw	a5,-56(s0)
	slli	a4,a5,1
	.loc 6 8902 41
	lw	a5,-80(s0)
	add	a5,a4,a5
	.loc 6 8902 14
	addi	a4,s0,-348
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 6 8904 17
	addi	a5,s0,-348
	sw	a5,-48(s0)
	.loc 6 8905 17
	addi	a4,s0,-348
	lw	a5,-56(s0)
	add	a5,a4,a5
	sw	a5,-52(s0)
	.loc 6 8907 33
	lw	a5,-356(s0)
	lw	a5,8(a5)
	.loc 6 8908 46
	beq	a5,zero,.L1090
	.loc 6 8907 21
	lw	a5,-356(s0)
	lw	a5,8(a5)
	sw	a5,-60(s0)
	j	.L1091
.L1090:
	lw	a5,-356(s0)
	lw	a5,4(a5)
	sw	a5,-60(s0)
.L1091:
	.loc 6 8909 25
	lw	a5,-356(s0)
	addi	a3,a5,20
	.loc 6 8909 40
	lw	a4,-44(s0)
	lw	a5,-80(s0)
	add	a5,a4,a5
	.loc 6 8909 9
	lw	a2,-60(s0)
	mv	a1,a5
	mv	a0,a3
	call	memcpy
	.loc 6 8910 25
	lw	a5,-356(s0)
	addi	a3,a5,36
	.loc 6 8910 49
	lw	a4,-80(s0)
	lw	a5,-60(s0)
	add	a5,a4,a5
	lw	a4,-44(s0)
	add	a5,a4,a5
	.loc 6 8910 9
	lw	a2,-60(s0)
	mv	a1,a5
	mv	a0,a3
	call	memcpy
	j	.L1092
.L1089:
	.loc 6 8915 8
	lw	a4,-384(s0)
	li	a5,1
	bne	a4,a5,.L1093
	.loc 6 8916 37
	lw	a5,-56(s0)
	slli	a4,a5,1
	.loc 6 8916 41
	lw	a5,-80(s0)
	add	a5,a4,a5
	.loc 6 8916 14
	addi	a4,s0,-348
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 6 8917 37
	lw	a5,-56(s0)
	slli	a5,a5,1
	.loc 6 8917 14
	addi	a4,s0,-348
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 6 8919 17
	addi	a4,s0,-348
	lw	a5,-56(s0)
	add	a5,a4,a5
	sw	a5,-48(s0)
	.loc 6 8920 17
	addi	a5,s0,-348
	sw	a5,-52(s0)
	.loc 6 8922 33
	lw	a5,-356(s0)
	lw	a5,8(a5)
	.loc 6 8923 46
	beq	a5,zero,.L1094
	.loc 6 8922 21
	lw	a5,-356(s0)
	lw	a5,8(a5)
	sw	a5,-60(s0)
	j	.L1095
.L1094:
	lw	a5,-356(s0)
	lw	a5,4(a5)
	sw	a5,-60(s0)
.L1095:
	.loc 6 8924 25
	lw	a5,-356(s0)
	addi	a3,a5,36
	.loc 6 8924 40
	lw	a4,-40(s0)
	lw	a5,-80(s0)
	add	a5,a4,a5
	.loc 6 8924 9
	lw	a2,-60(s0)
	mv	a1,a5
	mv	a0,a3
	call	memcpy
	.loc 6 8925 25
	lw	a5,-356(s0)
	addi	a3,a5,20
	.loc 6 8925 49
	lw	a4,-80(s0)
	lw	a5,-60(s0)
	add	a5,a4,a5
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 6 8925 9
	lw	a2,-60(s0)
	mv	a1,a5
	mv	a0,a3
	call	memcpy
	j	.L1092
.L1093:
	.loc 6 8930 9
	lui	a5,%hi(.LC54)
	addi	a4,a5,%lo(.LC54)
	li	a5,8192
	addi	a3,a5,738
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,0(s0)
	call	mbedtls_debug_print_msg
	.loc 6 8931 13
	li	a5,-28672
	addi	a5,a5,1024
	sw	a5,-36(s0)
	.loc 6 8932 9
	j	.L1083
.L1092:
	.loc 6 8935 12
	lw	a5,0(s0)
	lw	a5,592(a5)
	.loc 6 8935 8
	beq	a5,zero,.L1096
	.loc 6 8936 12
	lw	a5,0(s0)
	lw	s1,592(a5)
	.loc 6 8936 31
	lw	a5,0(s0)
	lw	s2,596(a5)
	.loc 6 8936 9
	lw	a5,-376(s0)
	addi	s3,a5,32
	lw	a0,-372(s0)
	call	tls_prf_get_type
	mv	a5,a0
	.loc 6 8936 9 is_stmt 0 discriminator 1
	mv	a6,a5
	lw	a5,-376(s0)
	mv	a4,s3
	li	a3,48
	lw	a2,-364(s0)
	li	a1,0
	mv	a0,s2
	jalr	s1
.LVL11:
.L1096:
	.loc 6 8974 16 is_stmt 1
	lw	a5,-356(s0)
	addi	a5,a5,84
	lw	a1,-72(s0)
	mv	a0,a5
	call	mbedtls_cipher_setup
	sw	a0,-36(s0)
	.loc 6 8974 8 discriminator 1
	lw	a5,-36(s0)
	beq	a5,zero,.L1097
	.loc 6 8976 9
	lw	a5,-36(s0)
	lui	a4,%hi(.LC182)
	addi	a4,a4,%lo(.LC182)
	li	a3,8192
	addi	a3,a3,784
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,0(s0)
	call	mbedtls_debug_print_ret
	.loc 6 8977 9
	j	.L1083
.L1097:
	.loc 6 8980 16
	lw	a5,-356(s0)
	addi	a5,a5,152
	lw	a1,-72(s0)
	mv	a0,a5
	call	mbedtls_cipher_setup
	sw	a0,-36(s0)
	.loc 6 8980 8 discriminator 1
	lw	a5,-36(s0)
	beq	a5,zero,.L1098
	.loc 6 8982 9
	lw	a5,-36(s0)
	lui	a4,%hi(.LC182)
	addi	a4,a4,%lo(.LC182)
	li	a3,8192
	addi	a3,a3,790
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,0(s0)
	call	mbedtls_debug_print_ret
	.loc 6 8983 9
	j	.L1083
.L1098:
	.loc 6 8986 16
	lw	a5,-356(s0)
	addi	s1,a5,84
	.loc 6 8987 44
	lw	a0,-72(s0)
	call	mbedtls_cipher_info_get_key_bitlen
	mv	a5,a0
	.loc 6 8986 16
	li	a3,1
	mv	a2,a5
	lw	a1,-40(s0)
	mv	a0,s1
	call	mbedtls_cipher_setkey
	sw	a0,-36(s0)
	.loc 6 8986 8 discriminator 1
	lw	a5,-36(s0)
	beq	a5,zero,.L1099
	.loc 6 8989 9
	lw	a5,-36(s0)
	lui	a4,%hi(.LC183)
	addi	a4,a4,%lo(.LC183)
	li	a3,8192
	addi	a3,a3,797
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,0(s0)
	call	mbedtls_debug_print_ret
	.loc 6 8990 9
	j	.L1083
.L1099:
	.loc 6 8993 16
	lw	a5,-356(s0)
	addi	s1,a5,152
	.loc 6 8994 44
	lw	a0,-72(s0)
	call	mbedtls_cipher_info_get_key_bitlen
	mv	a5,a0
	.loc 6 8993 16
	li	a3,0
	mv	a2,a5
	lw	a1,-44(s0)
	mv	a0,s1
	call	mbedtls_cipher_setkey
	sw	a0,-36(s0)
	.loc 6 8993 8 discriminator 1
	lw	a5,-36(s0)
	beq	a5,zero,.L1100
	.loc 6 8996 9
	lw	a5,-36(s0)
	lui	a4,%hi(.LC183)
	addi	a4,a4,%lo(.LC183)
	li	a3,8192
	addi	a3,a3,804
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,0(s0)
	call	mbedtls_debug_print_ret
	.loc 6 8997 9
	j	.L1083
.L1100:
	.loc 6 9001 9
	lw	a0,-72(s0)
	call	mbedtls_cipher_info_get_mode
	mv	a5,a0
	mv	a4,a5
	.loc 6 9001 8 discriminator 1
	li	a5,2
	bne	a4,a5,.L1101
	.loc 6 9002 20
	lw	a5,-356(s0)
	addi	a5,a5,84
	li	a1,4
	mv	a0,a5
	call	mbedtls_cipher_set_padding_mode
	sw	a0,-36(s0)
	.loc 6 9002 12 discriminator 1
	lw	a5,-36(s0)
	beq	a5,zero,.L1102
	.loc 6 9004 13
	lw	a5,-36(s0)
	lui	a4,%hi(.LC184)
	addi	a4,a4,%lo(.LC184)
	li	a3,8192
	addi	a3,a3,812
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,0(s0)
	call	mbedtls_debug_print_ret
	.loc 6 9005 13
	j	.L1083
.L1102:
	.loc 6 9008 20
	lw	a5,-356(s0)
	addi	a5,a5,152
	li	a1,4
	mv	a0,a5
	call	mbedtls_cipher_set_padding_mode
	sw	a0,-36(s0)
	.loc 6 9008 12 discriminator 1
	lw	a5,-36(s0)
	beq	a5,zero,.L1101
	.loc 6 9010 13
	lw	a5,-36(s0)
	lui	a4,%hi(.LC184)
	addi	a4,a4,%lo(.LC184)
	li	a3,8192
	addi	a3,a3,818
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,0(s0)
	call	mbedtls_debug_print_ret
	.loc 6 9011 13
	j	.L1083
.L1101:
	.loc 6 9020 8
	lw	a5,-56(s0)
	beq	a5,zero,.L1105
	.loc 6 9057 15
	lw	a5,-356(s0)
	addi	a5,a5,52
	lw	a2,-56(s0)
	lw	a1,-48(s0)
	mv	a0,a5
	call	mbedtls_md_hmac_starts
	sw	a0,-36(s0)
	.loc 6 9058 12
	lw	a5,-36(s0)
	bne	a5,zero,.L1106
	.loc 6 9061 15
	lw	a5,-356(s0)
	addi	a5,a5,64
	lw	a2,-56(s0)
	lw	a1,-52(s0)
	mv	a0,a5
	call	mbedtls_md_hmac_starts
	sw	a0,-36(s0)
.L1105:
	.loc 6 9072 1
	nop
	j	.L1083
.L1106:
	.loc 6 9059 13
	nop
.L1083:
	.loc 6 9073 5
	addi	a5,s0,-348
	li	a1,256
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 6 9074 12
	lw	a5,-36(s0)
.L1104:
	.loc 6 9075 1
	mv	a0,a5
	lw	ra,396(sp)
	.cfi_restore 1
	lw	s0,392(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 400
	lw	s1,388(sp)
	.cfi_restore 9
	lw	s2,384(sp)
	.cfi_restore 18
	lw	s3,380(sp)
	.cfi_restore 19
	addi	sp,sp,400
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE324:
	.size	ssl_tls12_populate_transform, .-ssl_tls12_populate_transform
	.section	.rodata
	.align	2
.LC185:
	.string	"Perform mbedtls-based computation of digest of ServerKeyExchange"
	.align	2
.LC186:
	.string	"mbedtls_md_starts"
	.align	2
.LC187:
	.string	"mbedtls_md_update"
	.section	.text.mbedtls_ssl_get_key_exchange_md_tls1_2,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_key_exchange_md_tls1_2
	.type	mbedtls_ssl_get_key_exchange_md_tls1_2, @function
mbedtls_ssl_get_key_exchange_md_tls1_2:
.LFB325:
	.loc 6 9225 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sb	a5,-69(s0)
	.loc 6 9226 9
	sw	zero,-20(s0)
	.loc 6 9228 40
	lbu	a5,-69(s0)
	mv	a0,a5
	call	mbedtls_md_info_from_type
	sw	a0,-24(s0)
	.loc 6 9229 16
	lw	a0,-24(s0)
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 6 9229 16 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 6 9229 14 is_stmt 1 discriminator 1
	lw	a5,-60(s0)
	sw	a4,0(a5)
	.loc 6 9231 5
	lui	a5,%hi(.LC185)
	addi	a4,a5,%lo(.LC185)
	li	a5,8192
	addi	a3,a5,1039
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 9233 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_md_init
	.loc 6 9242 16
	addi	a5,s0,-36
	li	a2,0
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_md_setup
	sw	a0,-20(s0)
	.loc 6 9242 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L1108
	.loc 6 9243 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC180)
	addi	a4,a4,%lo(.LC180)
	li	a3,8192
	addi	a3,a3,1051
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_ret
	.loc 6 9244 9
	j	.L1109
.L1108:
	.loc 6 9246 16
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_md_starts
	sw	a0,-20(s0)
	.loc 6 9246 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L1110
	.loc 6 9247 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC186)
	addi	a4,a4,%lo(.LC186)
	li	a3,8192
	addi	a3,a3,1055
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_ret
	.loc 6 9248 9
	j	.L1109
.L1110:
	.loc 6 9250 43
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 9250 54
	addi	a4,a5,808
	.loc 6 9250 16
	addi	a5,s0,-36
	li	a2,64
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_update
	sw	a0,-20(s0)
	.loc 6 9250 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L1111
	.loc 6 9251 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC187)
	addi	a4,a4,%lo(.LC187)
	li	a3,8192
	addi	a3,a3,1059
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_ret
	.loc 6 9252 9
	j	.L1109
.L1111:
	.loc 6 9254 16
	addi	a5,s0,-36
	lw	a2,-68(s0)
	lw	a1,-64(s0)
	mv	a0,a5
	call	mbedtls_md_update
	sw	a0,-20(s0)
	.loc 6 9254 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L1112
	.loc 6 9255 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC187)
	addi	a4,a4,%lo(.LC187)
	li	a3,8192
	addi	a3,a3,1063
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_ret
	.loc 6 9256 9
	j	.L1109
.L1112:
	.loc 6 9258 16
	addi	a5,s0,-36
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_md_finish
	sw	a0,-20(s0)
	.loc 6 9258 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L1115
	.loc 6 9259 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC110)
	addi	a4,a4,%lo(.LC110)
	li	a3,8192
	addi	a3,a3,1067
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_ret
	.loc 6 9260 9
	j	.L1109
.L1115:
	.loc 6 9263 1
	nop
.L1109:
	.loc 6 9264 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_md_free
	.loc 6 9266 8
	lw	a5,-20(s0)
	beq	a5,zero,.L1113
	.loc 6 9267 9
	li	a2,80
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
.L1113:
	.loc 6 9271 12
	lw	a5,-20(s0)
	.loc 6 9272 1
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
.LFE325:
	.size	mbedtls_ssl_get_key_exchange_md_tls1_2, .-mbedtls_ssl_get_key_exchange_md_tls1_2
	.section	.text.mbedtls_ssl_tls12_get_preferred_hash_for_sig_alg,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_tls12_get_preferred_hash_for_sig_alg
	.type	mbedtls_ssl_tls12_get_preferred_hash_for_sig_alg, @function
mbedtls_ssl_tls12_get_preferred_hash_for_sig_alg:
.LFB326:
	.loc 6 9281 1
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
	.loc 6 9283 38
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 9283 15
	addi	a5,a5,44
	sw	a5,-24(s0)
	.loc 6 9285 8
	lw	a5,-56(s0)
	bne	a5,zero,.L1117
	.loc 6 9286 16
	li	a5,0
	j	.L1118
.L1117:
	.loc 6 9289 12
	sw	zero,-20(s0)
	.loc 6 9289 5
	j	.L1119
.L1122:
.LBB144:
	.loc 6 9291 31
	lw	a5,-20(s0)
	slli	a5,a5,1
	lw	a4,-24(s0)
	add	a5,a4,a5
	lhu	a5,0(a5)
	.loc 6 9291 35
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 6 9290 22
	sw	a5,-28(s0)
	.loc 6 9294 31
	lw	a5,-20(s0)
	slli	a5,a5,1
	lw	a4,-24(s0)
	add	a5,a4,a5
	lhu	a5,0(a5)
	.loc 6 9293 22
	andi	a5,a5,255
	sw	a5,-32(s0)
	.loc 6 9298 13
	lw	a5,-28(s0)
	andi	a5,a5,0xff
	mv	a0,a5
	call	mbedtls_ssl_md_alg_from_hash
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 6 9299 12
	lbu	a5,-33(s0)
	beq	a5,zero,.L1123
	.loc 6 9303 12
	lw	a4,-56(s0)
	lw	a5,-32(s0)
	bne	a4,a5,.L1121
	.loc 6 9326 20
	lw	a5,-28(s0)
	j	.L1118
.L1123:
	.loc 6 9300 13
	nop
.L1121:
.LBE144:
	.loc 6 9289 47 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L1119:
	.loc 6 9289 34 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,1
	lw	a4,-24(s0)
	add	a5,a4,a5
	lhu	a5,0(a5)
	.loc 6 9289 38 discriminator 1
	bne	a5,zero,.L1122
	.loc 6 9330 12
	li	a5,0
.L1118:
	.loc 6 9331 1
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
.LFE326:
	.size	mbedtls_ssl_tls12_get_preferred_hash_for_sig_alg, .-mbedtls_ssl_tls12_get_preferred_hash_for_sig_alg
	.section	.text.mbedtls_ssl_validate_ciphersuite,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_validate_ciphersuite
	.type	mbedtls_ssl_validate_ciphersuite, @function
mbedtls_ssl_validate_ciphersuite:
.LFB327:
	.loc 6 9342 1
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
	mv	a5,a2
	mv	a4,a3
	sh	a5,-26(s0)
	mv	a5,a4
	sh	a5,-28(s0)
	.loc 6 9345 8
	lw	a5,-24(s0)
	bne	a5,zero,.L1125
	.loc 6 9346 16
	li	a5,-1
	j	.L1126
.L1125:
	.loc 6 9349 20
	lw	a5,-24(s0)
	lhu	a5,12(a5)
	.loc 6 9349 8
	lhu	a4,-28(s0)
	bltu	a4,a5,.L1127
	.loc 6 9350 20
	lw	a5,-24(s0)
	lhu	a5,14(a5)
	.loc 6 9349 57 discriminator 1
	lhu	a4,-26(s0)
	bleu	a4,a5,.L1128
.L1127:
	.loc 6 9351 16
	li	a5,-1
	j	.L1126
.L1128:
	.loc 6 9370 9
	lw	a0,-24(s0)
	call	mbedtls_ssl_ciphersuite_uses_psk
	mv	a5,a0
	.loc 6 9370 8 discriminator 1
	beq	a5,zero,.L1129
	.loc 6 9371 44
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 6 9371 9
	mv	a0,a5
	call	mbedtls_ssl_conf_has_static_psk
	mv	a5,a0
	.loc 6 9370 54 discriminator 2
	bne	a5,zero,.L1129
	.loc 6 9372 16
	li	a5,-1
	j	.L1126
.L1129:
	.loc 6 9377 12
	li	a5,0
.L1126:
	.loc 6 9378 1
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
.LFE327:
	.size	mbedtls_ssl_validate_ciphersuite, .-mbedtls_ssl_validate_ciphersuite
	.section	.rodata
	.align	2
.LC188:
	.string	"adding signature_algorithms extension"
	.align	2
.LC189:
	.string	"got signature scheme [%x] %s"
	.align	2
.LC190:
	.string	"sent signature scheme [%x] %s"
	.align	2
.LC191:
	.string	"No signature algorithms defined."
	.section	.text.mbedtls_ssl_write_sig_alg_ext,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_write_sig_alg_ext
	.type	mbedtls_ssl_write_sig_alg_ext, @function
mbedtls_ssl_write_sig_alg_ext:
.LFB328:
	.loc 6 9424 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	.loc 6 9425 20
	lw	a5,-88(s0)
	sw	a5,-24(s0)
	.loc 6 9427 12
	sw	zero,-28(s0)
	.loc 6 9429 14
	lw	a5,-96(s0)
	sw	zero,0(a5)
	.loc 6 9431 5
	lui	a5,%hi(.LC188)
	addi	a4,a5,%lo(.LC188)
	li	a5,8192
	addi	a3,a5,1239
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 6 9438 14
	li	a2,6
	lw	a1,-92(s0)
	lw	a0,-24(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 6 9438 13 discriminator 1
	beq	a5,zero,.L1131
	.loc 6 9438 70 discriminator 2
	li	a5,-28672
	addi	a5,a5,1536
	.loc 6 9438 70 is_stmt 0
	j	.L1132
.L1131:
	.loc 6 9439 7 is_stmt 1
	lw	a5,-24(s0)
	addi	a5,a5,6
	sw	a5,-24(s0)
	.loc 6 9444 23
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	.loc 6 9445 31
	lw	a0,-84(s0)
	call	mbedtls_ssl_get_sig_algs
	sw	a0,-20(s0)
	.loc 6 9446 8
	lw	a5,-20(s0)
	bne	a5,zero,.L1134
	.loc 6 9447 16
	li	a5,-24576
	addi	a5,a5,384
	j	.L1132
.L1138:
	.loc 6 9451 165
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	.loc 6 9451 9
	mv	s1,a5
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	mv	a0,a5
	call	mbedtls_ssl_sig_alg_to_str
	mv	a5,a0
	.loc 6 9451 9 is_stmt 0 discriminator 1
	mv	a6,a5
	mv	a5,s1
	lui	a4,%hi(.LC189)
	addi	a4,a4,%lo(.LC189)
	li	a3,8192
	addi	a3,a3,1259
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 6 9454 14 is_stmt 1
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	mv	a1,a5
	lw	a0,-84(s0)
	call	mbedtls_ssl_sig_alg_is_supported
	mv	a5,a0
	.loc 6 9454 12 discriminator 1
	beq	a5,zero,.L1140
	.loc 6 9457 18
	li	a2,2
	lw	a1,-92(s0)
	lw	a0,-24(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 6 9457 17 discriminator 1
	beq	a5,zero,.L1137
	.loc 6 9457 74 discriminator 2
	li	a5,-28672
	addi	a5,a5,1536
	.loc 6 9457 74 is_stmt 0
	j	.L1132
.L1137:
	.loc 6 9458 133 is_stmt 1 discriminator 2
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a4,-24(s0)
	sw	a4,-36(s0)
	sh	a5,-38(s0)
.LBB145:
.LBB146:
	.loc 7 148 33
	lw	a5,-36(s0)
	sw	a5,-44(s0)
	.loc 7 149 12
	lw	a5,-44(s0)
	lhu	a4,-38(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-38(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 7 153 1
	nop
.LBE146:
.LBE145:
	.loc 6 9459 11
	lw	a5,-24(s0)
	addi	a5,a5,2
	sw	a5,-24(s0)
	.loc 6 9460 166
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	.loc 6 9460 9
	mv	s1,a5
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	mv	a0,a5
	call	mbedtls_ssl_sig_alg_to_str
	mv	a5,a0
	.loc 6 9460 9 is_stmt 0 discriminator 1
	mv	a6,a5
	mv	a5,s1
	lui	a4,%hi(.LC190)
	addi	a4,a4,%lo(.LC190)
	li	a3,8192
	addi	a3,a3,1268
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	j	.L1136
.L1140:
	.loc 6 9455 13 is_stmt 1
	nop
.L1136:
	.loc 6 9450 36
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
.L1134:
	.loc 6 9450 12 discriminator 1
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	.loc 6 9450 21 discriminator 1
	bne	a5,zero,.L1138
	.loc 6 9466 41
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	sub	a5,a4,a5
	.loc 6 9466 27
	sw	a5,-28(s0)
	.loc 6 9467 8
	lw	a5,-28(s0)
	bne	a5,zero,.L1139
	.loc 6 9468 9
	lui	a5,%hi(.LC191)
	addi	a4,a5,%lo(.LC191)
	li	a5,8192
	addi	a3,a5,1276
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 6 9469 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L1132
.L1139:
	lw	a5,-88(s0)
	sw	a5,-48(s0)
	li	a5,4096
	addi	a5,a5,-768
	sh	a5,-50(s0)
.LBB147:
.LBB148:
	.loc 7 148 33
	lw	a5,-48(s0)
	sw	a5,-56(s0)
	.loc 7 149 12
	lw	a5,-56(s0)
	lhu	a4,-50(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-50(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 7 153 1
	nop
.LBE148:
.LBE147:
	.loc 6 9473 143 discriminator 2
	lw	a5,-88(s0)
	addi	a4,a5,2
	.loc 6 9473 150 discriminator 2
	lw	a5,-28(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,2
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a3,a5,8
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-60(s0)
	sh	a5,-62(s0)
.LBB149:
.LBB150:
	.loc 7 148 33
	lw	a5,-60(s0)
	sw	a5,-68(s0)
	.loc 7 149 12
	lw	a5,-68(s0)
	lhu	a4,-62(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-62(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 7 153 1
	nop
.LBE150:
.LBE149:
	.loc 6 9474 139 discriminator 2
	lw	a5,-88(s0)
	addi	a4,a5,4
	.loc 6 9474 146 discriminator 2
	lw	a5,-28(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a3,a5,8
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-72(s0)
	sh	a5,-74(s0)
.LBB151:
.LBB152:
	.loc 7 148 33
	lw	a5,-72(s0)
	sw	a5,-80(s0)
	.loc 7 149 12
	lw	a5,-80(s0)
	lhu	a4,-74(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-74(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 7 153 1
	nop
.LBE152:
.LBE151:
	.loc 6 9476 28
	lw	a4,-24(s0)
	lw	a5,-88(s0)
	sub	a5,a4,a5
	.loc 6 9476 16
	mv	a4,a5
	.loc 6 9476 14
	lw	a5,-96(s0)
	sw	a4,0(a5)
	.loc 6 9482 12
	li	a5,0
.L1132:
	.loc 6 9483 1
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	lw	s1,84(sp)
	.cfi_restore 9
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE328:
	.size	mbedtls_ssl_write_sig_alg_ext, .-mbedtls_ssl_write_sig_alg_ext
	.section	.rodata
	.align	2
.LC192:
	.string	"parse ServerName extension"
	.align	2
.LC193:
	.string	"ssl_sni_wrapper"
	.section	.text.mbedtls_ssl_parse_server_name_ext,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_parse_server_name_ext
	.type	mbedtls_ssl_parse_server_name_ext, @function
mbedtls_ssl_parse_server_name_ext:
.LFB329:
	.loc 6 9511 1
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
	.loc 6 9512 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 6 9513 26
	lw	a5,-72(s0)
	sw	a5,-20(s0)
	.loc 6 9517 5
	lui	a5,%hi(.LC192)
	addi	a4,a5,%lo(.LC192)
	li	a5,8192
	addi	a3,a5,1325
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 9519 14
	li	a2,2
	lw	a1,-76(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 6 9519 13 discriminator 1
	beq	a5,zero,.L1142
	.loc 6 9519 63 discriminator 2
	lui	a5,%hi(__func__.1)
	addi	a5,a5,%lo(__func__.1)
	lui	a4,%hi(.LC111)
	addi	a4,a4,%lo(.LC111)
	li	a3,8192
	addi	a3,a3,1327
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 9519 226 discriminator 3
	li	a5,-28672
	addi	a2,a5,-768
	li	a1,50
	lw	a0,-68(s0)
	call	mbedtls_ssl_pend_fatal_alert
	.loc 6 9519 281 discriminator 4
	li	a5,-28672
	addi	a5,a5,-768
	.loc 6 9519 281 is_stmt 0
	j	.L1143
.L1142:
	lw	a5,-20(s0)
	sw	a5,-40(s0)
.LBB153:
.LBB154:
	.loc 7 122 33 is_stmt 1
	lw	a5,-40(s0)
	sw	a5,-44(s0)
	.loc 7 123 7
	lw	a5,-44(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-46(s0)
	.loc 7 127 12
	lhu	a5,-46(s0)
.LBE154:
.LBE153:
	.loc 6 9520 77 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 6 9520 26 discriminator 2
	sw	a5,-28(s0)
	.loc 6 9521 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 6 9523 14
	lw	a2,-28(s0)
	lw	a1,-76(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 6 9523 13 discriminator 1
	beq	a5,zero,.L1145
	.loc 6 9523 82 discriminator 2
	lui	a5,%hi(__func__.1)
	addi	a5,a5,%lo(__func__.1)
	lui	a4,%hi(.LC111)
	addi	a4,a4,%lo(.LC111)
	li	a3,8192
	addi	a3,a3,1331
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 9523 245 discriminator 3
	li	a5,-28672
	addi	a2,a5,-768
	li	a1,50
	lw	a0,-68(s0)
	call	mbedtls_ssl_pend_fatal_alert
	.loc 6 9523 300 discriminator 4
	li	a5,-28672
	addi	a5,a5,-768
	.loc 6 9523 300 is_stmt 0
	j	.L1143
.L1145:
	.loc 6 9524 26 is_stmt 1
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 6 9525 11
	j	.L1146
.L1153:
	.loc 6 9526 18
	li	a2,3
	lw	a1,-32(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 6 9526 17 discriminator 1
	beq	a5,zero,.L1147
	.loc 6 9526 84 discriminator 2
	lui	a5,%hi(__func__.1)
	addi	a5,a5,%lo(__func__.1)
	lui	a4,%hi(.LC111)
	addi	a4,a4,%lo(.LC111)
	li	a3,8192
	addi	a3,a3,1334
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 9526 247 discriminator 3
	li	a5,-28672
	addi	a2,a5,-768
	li	a1,50
	lw	a0,-68(s0)
	call	mbedtls_ssl_pend_fatal_alert
	.loc 6 9526 302 discriminator 4
	li	a5,-28672
	addi	a5,a5,-768
	.loc 6 9526 302 is_stmt 0
	j	.L1143
.L1147:
	.loc 6 9527 124 is_stmt 1
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.LBB155:
.LBB156:
	.loc 7 122 33
	lw	a5,-52(s0)
	sw	a5,-56(s0)
	.loc 7 123 7
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-58(s0)
	.loc 7 127 12
	lhu	a5,-58(s0)
.LBE156:
.LBE155:
	.loc 6 9527 73 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 6 9527 22 discriminator 2
	sw	a5,-36(s0)
	.loc 6 9528 18
	lw	a5,-36(s0)
	addi	a5,a5,3
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 6 9528 17 discriminator 1
	beq	a5,zero,.L1149
	.loc 6 9528 99 discriminator 2
	lui	a5,%hi(__func__.1)
	addi	a5,a5,%lo(__func__.1)
	lui	a4,%hi(.LC111)
	addi	a4,a4,%lo(.LC111)
	li	a3,8192
	addi	a3,a3,1336
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 9528 262 discriminator 3
	li	a5,-28672
	addi	a2,a5,-768
	li	a1,50
	lw	a0,-68(s0)
	call	mbedtls_ssl_pend_fatal_alert
	.loc 6 9528 317 discriminator 4
	li	a5,-28672
	addi	a5,a5,-768
	.loc 6 9528 317 is_stmt 0
	j	.L1143
.L1149:
	.loc 6 9531 14 is_stmt 1
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 6 9531 12
	bne	a5,zero,.L1150
	.loc 6 9537 16
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 6 9537 42
	lw	a4,-20(s0)
	addi	a4,a4,3
	.loc 6 9537 38
	sw	a4,984(a5)
	.loc 6 9538 16
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 6 9538 42
	lw	a4,-36(s0)
	sw	a4,988(a5)
	.loc 6 9539 20
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 6 9539 26
	lw	a5,52(a5)
	.loc 6 9539 16
	bne	a5,zero,.L1151
	.loc 6 9540 24
	li	a5,0
	j	.L1143
.L1151:
	.loc 6 9542 22
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 6 9542 28
	lw	a5,52(a5)
	.loc 6 9542 39
	lw	a4,-68(s0)
	lw	a4,0(a4)
	.loc 6 9542 45
	lw	a0,56(a4)
	.loc 6 9542 19
	lw	a4,-20(s0)
	addi	a4,a4,3
	lw	a3,-36(s0)
	mv	a2,a4
	lw	a1,-68(s0)
	jalr	a5
.LVL12:
	sw	a0,-24(s0)
	.loc 6 9544 16
	lw	a5,-24(s0)
	beq	a5,zero,.L1152
	.loc 6 9545 17
	lw	a5,-24(s0)
	lui	a4,%hi(.LC193)
	addi	a4,a4,%lo(.LC193)
	li	a3,8192
	addi	a3,a3,1353
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_ret
	.loc 6 9546 17
	li	a5,-28672
	addi	a2,a5,-2048
	li	a1,112
	lw	a0,-68(s0)
	call	mbedtls_ssl_pend_fatal_alert
	.loc 6 9548 24
	li	a5,-28672
	addi	a5,a5,-2048
	j	.L1143
.L1152:
	.loc 6 9550 20
	li	a5,0
	j	.L1143
.L1150:
	.loc 6 9553 11
	lw	a5,-36(s0)
	addi	a5,a5,3
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L1146:
	.loc 6 9525 14
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	bltu	a4,a5,.L1153
	.loc 6 9556 12
	li	a5,0
.L1143:
	.loc 6 9557 1
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
.LFE329:
	.size	mbedtls_ssl_parse_server_name_ext, .-mbedtls_ssl_parse_server_name_ext
	.section	.text.mbedtls_ssl_parse_alpn_ext,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_parse_alpn_ext
	.type	mbedtls_ssl_parse_alpn_ext, @function
mbedtls_ssl_parse_alpn_ext:
.LFB330:
	.loc 6 9565 1
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
	.loc 6 9566 26
	lw	a5,-72(s0)
	sw	a5,-20(s0)
	.loc 6 9573 12
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 6 9573 18
	lw	a5,188(a5)
	.loc 6 9573 8
	bne	a5,zero,.L1155
	.loc 6 9574 16
	li	a5,0
	j	.L1156
.L1155:
	.loc 6 9591 14
	li	a2,4
	lw	a1,-76(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 6 9591 13 discriminator 1
	beq	a5,zero,.L1157
	.loc 6 9591 63 discriminator 2
	lui	a5,%hi(__func__.0)
	addi	a5,a5,%lo(__func__.0)
	lui	a4,%hi(.LC111)
	addi	a4,a4,%lo(.LC111)
	li	a3,8192
	addi	a3,a3,1399
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 9591 226 discriminator 3
	li	a5,-28672
	addi	a2,a5,-768
	li	a1,50
	lw	a0,-68(s0)
	call	mbedtls_ssl_pend_fatal_alert
	.loc 6 9591 281 discriminator 4
	li	a5,-28672
	addi	a5,a5,-768
	.loc 6 9591 281 is_stmt 0
	j	.L1156
.L1157:
	lw	a5,-20(s0)
	sw	a5,-48(s0)
.LBB157:
.LBB158:
	.loc 7 122 33 is_stmt 1
	lw	a5,-48(s0)
	sw	a5,-52(s0)
	.loc 7 123 7
	lw	a5,-52(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-54(s0)
	.loc 7 127 12
	lhu	a5,-54(s0)
.LBE158:
.LBE157:
	.loc 6 9593 79 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 6 9593 28 discriminator 2
	sw	a5,-28(s0)
	.loc 6 9594 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 6 9595 14
	lw	a2,-28(s0)
	lw	a1,-76(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 6 9595 13 discriminator 1
	beq	a5,zero,.L1159
	.loc 6 9595 84 discriminator 2
	lui	a5,%hi(__func__.0)
	addi	a5,a5,%lo(__func__.0)
	lui	a4,%hi(.LC111)
	addi	a4,a4,%lo(.LC111)
	li	a3,8192
	addi	a3,a3,1403
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 9595 247 discriminator 3
	li	a5,-28672
	addi	a2,a5,-768
	li	a1,50
	lw	a0,-68(s0)
	call	mbedtls_ssl_pend_fatal_alert
	.loc 6 9595 302 discriminator 4
	li	a5,-28672
	addi	a5,a5,-768
	.loc 6 9595 302 is_stmt 0
	j	.L1156
.L1159:
	.loc 6 9596 24 is_stmt 1
	lw	a5,-20(s0)
	sw	a5,-32(s0)
	.loc 6 9597 28
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 6 9600 11
	j	.L1160
.L1163:
	.loc 6 9601 31
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 9601 29
	lbu	a5,0(a5)
	.loc 6 9601 27
	sw	a5,-44(s0)
	.loc 6 9602 18
	lw	a2,-44(s0)
	lw	a1,-36(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 6 9602 17 discriminator 1
	beq	a5,zero,.L1161
	.loc 6 9602 102 discriminator 2
	lui	a5,%hi(__func__.0)
	addi	a5,a5,%lo(__func__.0)
	lui	a4,%hi(.LC111)
	addi	a4,a4,%lo(.LC111)
	li	a3,8192
	addi	a3,a3,1410
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 6 9602 265 discriminator 3
	li	a5,-28672
	addi	a2,a5,-768
	li	a1,50
	lw	a0,-68(s0)
	call	mbedtls_ssl_pend_fatal_alert
	.loc 6 9602 320 discriminator 4
	li	a5,-28672
	addi	a5,a5,-768
	.loc 6 9602 320 is_stmt 0
	j	.L1156
.L1161:
	.loc 6 9604 12 is_stmt 1
	lw	a5,-44(s0)
	bne	a5,zero,.L1162
	.loc 6 9605 13
	li	a5,-24576
	addi	a2,a5,-1536
	li	a1,47
	lw	a0,-68(s0)
	call	mbedtls_ssl_pend_fatal_alert
	.loc 6 9608 20
	li	a5,-24576
	addi	a5,a5,-1536
	j	.L1156
.L1162:
	.loc 6 9611 11
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L1160:
	.loc 6 9600 14
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	bltu	a4,a5,.L1163
.LBB159:
	.loc 6 9615 33
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 6 9615 23
	lw	a5,188(a5)
	sw	a5,-24(s0)
	.loc 6 9615 5
	j	.L1164
.L1168:
.LBB160:
	.loc 6 9616 33
	lw	a5,-24(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	strlen
	sw	a0,-40(s0)
	.loc 6 9617 11
	lw	a5,-32(s0)
	sw	a5,-20(s0)
	.loc 6 9618 15
	j	.L1165
.L1167:
	.loc 6 9619 35
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 6 9619 33
	lbu	a5,0(a5)
	.loc 6 9619 31
	sw	a5,-44(s0)
	.loc 6 9620 16
	lw	a4,-44(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L1166
	.loc 6 9621 17
	lw	a5,-24(s0)
	lw	a5,0(a5)
	lw	a2,-40(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	memcmp
	mv	a5,a0
	.loc 6 9620 47 discriminator 1
	bne	a5,zero,.L1166
	.loc 6 9622 36
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 6 9622 34
	lw	a5,-68(s0)
	sw	a4,252(a5)
	.loc 6 9623 24
	li	a5,0
	j	.L1156
.L1166:
	.loc 6 9626 15
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L1165:
	.loc 6 9618 18
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	bltu	a4,a5,.L1167
.LBE160:
	.loc 6 9615 70 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
.L1164:
	.loc 6 9615 52 discriminator 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 6 9615 58 discriminator 1
	bne	a5,zero,.L1168
.LBE159:
	.loc 6 9631 5
	li	a5,-28672
	addi	a2,a5,-1408
	li	a1,120
	lw	a0,-68(s0)
	call	mbedtls_ssl_pend_fatal_alert
	.loc 6 9634 12
	li	a5,-28672
	addi	a5,a5,-1408
.L1156:
	.loc 6 9635 1
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
.LFE330:
	.size	mbedtls_ssl_parse_alpn_ext, .-mbedtls_ssl_parse_alpn_ext
	.section	.rodata
	.align	2
.LC194:
	.string	"server side, adding alpn extension"
	.section	.text.mbedtls_ssl_write_alpn_ext,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_write_alpn_ext
	.type	mbedtls_ssl_write_alpn_ext, @function
mbedtls_ssl_write_alpn_ext:
.LFB331:
	.loc 6 9641 1
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
	.loc 6 9642 20
	lw	a5,-72(s0)
	sw	a5,-20(s0)
	.loc 6 9644 14
	lw	a5,-80(s0)
	sw	zero,0(a5)
	.loc 6 9646 12
	lw	a5,-68(s0)
	lw	a5,252(a5)
	.loc 6 9646 8
	bne	a5,zero,.L1170
	.loc 6 9647 16
	li	a5,0
	j	.L1171
.L1170:
	.loc 6 9650 25
	lw	a5,-68(s0)
	lw	a5,252(a5)
	mv	a0,a5
	call	strlen
	sw	a0,-24(s0)
	.loc 6 9651 14
	lw	a5,-24(s0)
	addi	a5,a5,7
	mv	a2,a5
	lw	a1,-76(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 6 9651 13 discriminator 1
	beq	a5,zero,.L1172
	.loc 6 9651 90 discriminator 2
	li	a5,-28672
	addi	a5,a5,1536
	.loc 6 9651 90 is_stmt 0
	j	.L1171
.L1172:
	.loc 6 9653 5 is_stmt 1
	lui	a5,%hi(.LC194)
	addi	a4,a5,%lo(.LC194)
	li	a5,8192
	addi	a3,a5,1461
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	li	a5,4096
	sh	a5,-30(s0)
.LBB161:
.LBB162:
	.loc 7 148 33
	lw	a5,-28(s0)
	sw	a5,-36(s0)
	.loc 7 149 12
	lw	a5,-36(s0)
	lhu	a4,-30(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-30(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 7 153 1
	nop
.LBE162:
.LBE161:
	.loc 6 9663 18
	lw	a5,-24(s0)
	addi	a4,a5,7
	.loc 6 9663 14
	lw	a5,-80(s0)
	sw	a4,0(a5)
	.loc 6 9665 135 discriminator 2
	lw	a5,-20(s0)
	addi	a4,a5,2
	.loc 6 9665 142 discriminator 2
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,3
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a3,a5,8
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-40(s0)
	sh	a5,-42(s0)
.LBB163:
.LBB164:
	.loc 7 148 33
	lw	a5,-40(s0)
	sw	a5,-48(s0)
	.loc 7 149 12
	lw	a5,-48(s0)
	lhu	a4,-42(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-42(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 7 153 1
	nop
.LBE164:
.LBE163:
	.loc 6 9666 135 discriminator 2
	lw	a5,-20(s0)
	addi	a4,a5,4
	.loc 6 9666 142 discriminator 2
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a3,a5,8
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-52(s0)
	sh	a5,-54(s0)
.LBB165:
.LBB166:
	.loc 7 148 33
	lw	a5,-52(s0)
	sw	a5,-60(s0)
	.loc 7 149 12
	lw	a5,-60(s0)
	lhu	a4,-54(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-54(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 7 153 1
	nop
.LBE166:
.LBE165:
	.loc 6 9670 6
	lw	a5,-20(s0)
	addi	a5,a5,6
	.loc 6 9670 13
	lw	a4,-24(s0)
	andi	a4,a4,0xff
	.loc 6 9670 10
	sb	a4,0(a5)
	.loc 6 9672 14
	lw	a5,-20(s0)
	addi	a4,a5,7
	.loc 6 9672 22
	lw	a5,-68(s0)
	lw	a5,252(a5)
	.loc 6 9672 5
	lw	a2,-24(s0)
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 6 9678 12
	li	a5,0
.L1171:
	.loc 6 9679 1
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
.LFE331:
	.size	mbedtls_ssl_write_alpn_ext, .-mbedtls_ssl_write_alpn_ext
	.section	.rodata
	.align	2
.LC195:
	.base64	"KwYBBQUHAwEA"
	.align	2
.LC196:
	.base64	"KwYBBQUHAwIA"
	.section	.text.mbedtls_ssl_check_cert_usage,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_check_cert_usage
	.type	mbedtls_ssl_check_cert_usage, @function
mbedtls_ssl_check_cert_usage:
.LFB332:
	.loc 6 9770 1
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
	mv	a5,a3
	sw	a4,-52(s0)
	sh	a5,-46(s0)
	.loc 6 9771 9
	sw	zero,-20(s0)
	.loc 6 9772 18
	sw	zero,-24(s0)
	.loc 6 9784 8
	lhu	a4,-46(s0)
	li	a5,771
	bne	a4,a5,.L1174
	.loc 6 9784 51 discriminator 1
	lw	a5,-44(s0)
	bne	a5,zero,.L1174
	.loc 6 9787 28
	lw	a5,-40(s0)
	lbu	a5,10(a5)
	.loc 6 9787 9
	li	a4,11
	beq	a5,a4,.L1175
	li	a4,11
	bgt	a5,a4,.L1180
	li	a4,10
	bgt	a5,a4,.L1180
	li	a4,9
	bge	a5,a4,.L1177
	li	a4,8
	beq	a5,a4,.L1175
	li	a4,8
	bgt	a5,a4,.L1180
	li	a4,7
	beq	a5,a4,.L1178
	li	a4,7
	bgt	a5,a4,.L1180
	li	a4,6
	bgt	a5,a4,.L1180
	li	a4,5
	bge	a5,a4,.L1175
	li	a4,4
	bgt	a5,a4,.L1180
	li	a4,2
	bge	a5,a4,.L1179
	beq	a5,zero,.L1175
	li	a4,1
	bne	a5,a4,.L1180
.L1178:
	.loc 6 9790 23
	li	a5,32
	sw	a5,-24(s0)
	.loc 6 9791 17
	j	.L1176
.L1179:
	.loc 6 9796 23
	li	a5,128
	sw	a5,-24(s0)
	.loc 6 9797 17
	j	.L1176
.L1177:
	.loc 6 9801 23
	li	a5,8
	sw	a5,-24(s0)
	.loc 6 9802 17
	j	.L1176
.L1175:
	.loc 6 9810 23
	sw	zero,-24(s0)
	.loc 6 9787 9
	j	.L1180
.L1176:
	j	.L1180
.L1174:
	.loc 6 9820 15
	li	a5,128
	sw	a5,-24(s0)
.L1180:
	.loc 6 9823 9
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	mbedtls_x509_crt_check_key_usage
	mv	a5,a0
	.loc 6 9823 8 discriminator 1
	beq	a5,zero,.L1181
	.loc 6 9824 9
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 6 9824 16
	li	a5,4096
	addi	a5,a5,-2048
	or	a4,a4,a5
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 6 9825 13
	li	a5,-1
	sw	a5,-20(s0)
.L1181:
	.loc 6 9832 8
	lw	a5,-44(s0)
	bne	a5,zero,.L1182
	.loc 6 9833 17
	lui	a5,%hi(.LC195)
	addi	a5,a5,%lo(.LC195)
	sw	a5,-28(s0)
	.loc 6 9834 17
	li	a5,8
	sw	a5,-32(s0)
	j	.L1183
.L1182:
	.loc 6 9836 17
	lui	a5,%hi(.LC196)
	addi	a5,a5,%lo(.LC196)
	sw	a5,-28(s0)
	.loc 6 9837 17
	li	a5,8
	sw	a5,-32(s0)
.L1183:
	.loc 6 9840 9
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	lw	a0,-36(s0)
	call	mbedtls_x509_crt_check_extended_key_usage
	mv	a5,a0
	.loc 6 9840 8 discriminator 1
	beq	a5,zero,.L1184
	.loc 6 9841 9
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 6 9841 16
	li	a5,4096
	or	a4,a4,a5
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 6 9842 13
	li	a5,-1
	sw	a5,-20(s0)
.L1184:
	.loc 6 9845 12
	lw	a5,-20(s0)
	.loc 6 9846 1
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
.LFE332:
	.size	mbedtls_ssl_check_cert_usage, .-mbedtls_ssl_check_cert_usage
	.section	.rodata
	.align	2
.LC197:
	.string	"Certificate verification without having set hostname"
	.align	2
.LC198:
	.string	"Certificate verification without CN verification"
	.section	.text.get_hostname_for_verification,"ax",@progbits
	.align	1
	.type	get_hostname_for_verification, @function
get_hostname_for_verification:
.LFB333:
	.loc 6 9850 1
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
	.loc 6 9851 10
	lw	a0,-20(s0)
	call	mbedtls_ssl_has_set_hostname_been_called
	mv	a5,a0
	.loc 6 9851 8 discriminator 1
	bne	a5,zero,.L1187
	.loc 6 9852 9
	lui	a5,%hi(.LC197)
	addi	a4,a5,%lo(.LC197)
	li	a5,8192
	addi	a3,a5,1660
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
.L1187:
	.loc 6 9861 17
	lw	a0,-20(s0)
	call	mbedtls_ssl_get_hostname_pointer
	mv	a4,a0
	.loc 6 9861 15 discriminator 1
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 6 9862 9
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 6 9862 8
	bne	a5,zero,.L1188
	.loc 6 9863 9
	lui	a5,%hi(.LC198)
	addi	a4,a5,%lo(.LC198)
	li	a5,8192
	addi	a3,a5,1671
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,2
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
.L1188:
	.loc 6 9866 12
	li	a5,0
	.loc 6 9867 1
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
.LFE333:
	.size	get_hostname_for_verification, .-get_hostname_for_verification
	.section	.rodata
	.align	2
.LC199:
	.string	"Use context-specific verification callback"
	.align	2
.LC200:
	.string	"Use configuration-specific verification callback"
	.align	2
.LC201:
	.string	"get_hostname_for_verification"
	.align	2
.LC202:
	.string	"use CA callback for X.509 CRT verification"
	.align	2
.LC203:
	.string	"x509_verify_cert"
	.align	2
.LC204:
	.string	"bad certificate (EC key curve)"
	.align	2
.LC205:
	.string	"bad certificate (usage extensions)"
	.align	2
.LC206:
	.string	"got no CA chain"
	.align	2
.LC207:
	.string	"! Certificate verification flags %08x"
	.align	2
.LC208:
	.string	"Certificate verification flags clear"
	.section	.text.mbedtls_ssl_verify_certificate,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_verify_certificate
	.type	mbedtls_ssl_verify_certificate, @function
mbedtls_ssl_verify_certificate:
.LFB334:
	.loc 6 9874 1
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
	.loc 6 9875 8
	lw	a5,-56(s0)
	bne	a5,zero,.L1191
	.loc 6 9876 16
	li	a5,0
	j	.L1221
.L1191:
	.loc 6 9884 12
	lw	a5,-52(s0)
	lw	a5,24(a5)
	.loc 6 9884 8
	beq	a5,zero,.L1193
	.loc 6 9885 9
	lui	a5,%hi(.LC199)
	addi	a4,a5,%lo(.LC199)
	li	a5,8192
	addi	a3,a5,1693
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 9886 16
	lw	a5,-52(s0)
	lw	a5,24(a5)
	sw	a5,-20(s0)
	.loc 6 9887 16
	lw	a5,-52(s0)
	lw	a5,28(a5)
	sw	a5,-24(s0)
	j	.L1194
.L1193:
	.loc 6 9889 9
	lui	a5,%hi(.LC200)
	addi	a4,a5,%lo(.LC200)
	li	a5,8192
	addi	a3,a5,1697
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 9890 21
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 6 9890 16
	lw	a5,60(a5)
	sw	a5,-20(s0)
	.loc 6 9891 21
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 6 9891 16
	lw	a5,64(a5)
	sw	a5,-24(s0)
.L1194:
	.loc 6 9894 17
	lui	a5,%hi(.LC61)
	addi	a5,a5,%lo(.LC61)
	sw	a5,-48(s0)
	.loc 6 9895 15
	addi	a5,s0,-48
	mv	a1,a5
	lw	a0,-52(s0)
	call	get_hostname_for_verification
	sw	a0,-28(s0)
	.loc 6 9896 8
	lw	a5,-28(s0)
	beq	a5,zero,.L1195
	.loc 6 9897 9
	lw	a5,-28(s0)
	lui	a4,%hi(.LC201)
	addi	a4,a4,%lo(.LC201)
	li	a3,8192
	addi	a3,a3,1705
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_ret
	.loc 6 9898 16
	lw	a5,-28(s0)
	j	.L1221
.L1195:
	.loc 6 9901 9
	sw	zero,-32(s0)
	.loc 6 9903 12
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 6 9903 18
	lw	a5,120(a5)
	.loc 6 9903 8
	beq	a5,zero,.L1196
	.loc 6 9905 35
	li	a5,1
	sw	a5,-32(s0)
	.loc 6 9907 9
	lui	a5,%hi(.LC202)
	addi	a4,a5,%lo(.LC202)
	li	a5,8192
	addi	a3,a5,1715
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 9910 16
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 6 9910 22
	lw	a1,120(a5)
	.loc 6 9911 16
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 6 9911 22
	lw	a2,124(a5)
	.loc 6 9912 16
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 6 9912 22
	lw	a3,104(a5)
	.loc 6 9908 15
	lw	a4,-48(s0)
	.loc 6 9914 17
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 6 9908 15
	addi	a5,a5,100
	lw	a7,-24(s0)
	lw	a6,-20(s0)
	lw	a0,-60(s0)
	call	mbedtls_x509_crt_verify_with_ca_cb
	sw	a0,-28(s0)
	j	.L1197
.L1196:
.LBB167:
	.loc 6 9922 16
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 9922 27
	lw	a5,548(a5)
	.loc 6 9922 12
	beq	a5,zero,.L1198
	.loc 6 9923 27
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 9923 22
	lw	a5,548(a5)
	sw	a5,-36(s0)
	.loc 6 9924 25
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 6 9924 20
	lw	a5,552(a5)
	sw	a5,-40(s0)
	j	.L1199
.L1198:
	.loc 6 9928 27
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 6 9928 22
	lw	a5,112(a5)
	sw	a5,-36(s0)
	.loc 6 9929 25
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 6 9929 20
	lw	a5,116(a5)
	sw	a5,-40(s0)
.L1199:
	.loc 6 9932 12
	lw	a5,-36(s0)
	beq	a5,zero,.L1200
	.loc 6 9933 39
	li	a5,1
	sw	a5,-32(s0)
.L1200:
	.loc 6 9939 16
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 6 9939 22
	lw	a3,104(a5)
	.loc 6 9936 15
	lw	a4,-48(s0)
	.loc 6 9941 17
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 6 9936 15
	addi	a2,a5,100
	lw	a5,-68(s0)
	sw	a5,0(sp)
	lw	a7,-24(s0)
	lw	a6,-20(s0)
	mv	a5,a2
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-60(s0)
	call	mbedtls_x509_crt_verify_restartable
	sw	a0,-28(s0)
.L1197:
.LBE167:
	.loc 6 9945 8
	lw	a5,-28(s0)
	beq	a5,zero,.L1201
	.loc 6 9946 9
	lw	a5,-28(s0)
	lui	a4,%hi(.LC203)
	addi	a4,a4,%lo(.LC203)
	li	a3,8192
	addi	a3,a3,1754
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_ret
.L1201:
	.loc 6 9950 8
	lw	a4,-28(s0)
	li	a5,-20480
	addi	a5,a5,1280
	bne	a4,a5,.L1202
	.loc 6 9951 16
	li	a5,-28672
	j	.L1221
.L1202:
	.loc 6 9968 12
	lw	a5,-52(s0)
	lhu	a4,16(a5)
	.loc 6 9968 8
	li	a5,771
	bne	a4,a5,.L1203
	.loc 6 9969 27
	lw	a5,-60(s0)
	addi	a5,a5,204
	.loc 6 9969 9
	li	a1,2
	mv	a0,a5
	call	mbedtls_pk_can_do
	mv	a5,a0
	.loc 6 9968 56 discriminator 1
	beq	a5,zero,.L1203
	.loc 6 9970 69
	lw	a5,-60(s0)
	addi	a5,a5,204
	.loc 6 9970 42
	mv	a0,a5
	call	mbedtls_pk_get_ec_group_id
	mv	a5,a0
	.loc 6 9970 13 discriminator 1
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_ssl_check_curve
	mv	a5,a0
	.loc 6 9970 12 discriminator 2
	beq	a5,zero,.L1203
	.loc 6 9971 13
	lui	a5,%hi(.LC204)
	addi	a4,a5,%lo(.LC204)
	li	a5,8192
	addi	a3,a5,1779
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 9972 16
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 6 9972 35
	lw	a3,100(a5)
	.loc 6 9972 16
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 6 9972 51
	li	a4,65536
	or	a4,a3,a4
	sw	a4,100(a5)
	.loc 6 9973 16
	lw	a5,-28(s0)
	bne	a5,zero,.L1203
	.loc 6 9974 21
	li	a5,-32768
	addi	a5,a5,1536
	sw	a5,-28(s0)
.L1203:
	.loc 6 9983 41
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 6 9983 47
	lbu	a5,4(a5)
	.loc 6 9981 9
	mv	a2,a5
	.loc 6 9984 41
	lw	a5,-52(s0)
	lhu	a3,16(a5)
	.loc 6 9985 42
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 6 9981 9
	addi	a5,a5,100
	mv	a4,a5
	lw	a1,-64(s0)
	lw	a0,-60(s0)
	call	mbedtls_ssl_check_cert_usage
	mv	a5,a0
	.loc 6 9981 8 discriminator 1
	beq	a5,zero,.L1204
	.loc 6 9986 9
	lui	a5,%hi(.LC205)
	addi	a4,a5,%lo(.LC205)
	li	a5,8192
	addi	a3,a5,1794
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 9987 12
	lw	a5,-28(s0)
	bne	a5,zero,.L1204
	.loc 6 9988 17
	li	a5,-32768
	addi	a5,a5,1536
	sw	a5,-28(s0)
.L1204:
	.loc 6 10000 8
	lw	a4,-56(s0)
	li	a5,1
	bne	a4,a5,.L1205
	.loc 6 10000 23 discriminator 1
	lw	a4,-28(s0)
	li	a5,-8192
	addi	a5,a5,-1792
	beq	a4,a5,.L1206
	.loc 6 10001 25
	lw	a4,-28(s0)
	li	a5,-32768
	addi	a5,a5,1536
	bne	a4,a5,.L1205
.L1206:
	.loc 6 10003 13
	sw	zero,-28(s0)
.L1205:
	.loc 6 10008 8
	lw	a5,-32(s0)
	bne	a5,zero,.L1207
	.loc 6 10008 40 discriminator 1
	lw	a4,-56(s0)
	li	a5,2
	bne	a4,a5,.L1207
	.loc 6 10009 9
	lui	a5,%hi(.LC206)
	addi	a4,a5,%lo(.LC206)
	li	a5,8192
	addi	a3,a5,1817
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 6 10010 13
	li	a5,-28672
	addi	a5,a5,-1664
	sw	a5,-28(s0)
.L1207:
	.loc 6 10013 8
	lw	a5,-28(s0)
	beq	a5,zero,.L1208
.LBB168:
	.loc 6 10019 16
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 6 10019 35
	lw	a5,100(a5)
	.loc 6 10019 51
	andi	a5,a5,256
	.loc 6 10019 12
	beq	a5,zero,.L1209
	.loc 6 10020 19
	li	a5,49
	sb	a5,-41(s0)
	j	.L1210
.L1209:
	.loc 6 10021 23
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 6 10021 42
	lw	a5,100(a5)
	.loc 6 10021 58
	andi	a5,a5,4
	.loc 6 10021 19
	beq	a5,zero,.L1211
	.loc 6 10022 19
	li	a5,42
	sb	a5,-41(s0)
	j	.L1210
.L1211:
	.loc 6 10023 23
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 6 10023 42
	lw	a4,100(a5)
	.loc 6 10023 58
	li	a5,4096
	addi	a5,a5,-2048
	and	a5,a4,a5
	.loc 6 10023 19
	beq	a5,zero,.L1212
	.loc 6 10024 19
	li	a5,43
	sb	a5,-41(s0)
	j	.L1210
.L1212:
	.loc 6 10025 23
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 6 10025 42
	lw	a4,100(a5)
	.loc 6 10025 58
	li	a5,4096
	and	a5,a4,a5
	.loc 6 10025 19
	beq	a5,zero,.L1213
	.loc 6 10026 19
	li	a5,43
	sb	a5,-41(s0)
	j	.L1210
.L1213:
	.loc 6 10027 23
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 6 10027 42
	lw	a4,100(a5)
	.loc 6 10027 58
	li	a5,32768
	and	a5,a4,a5
	.loc 6 10027 19
	beq	a5,zero,.L1214
	.loc 6 10028 19
	li	a5,43
	sb	a5,-41(s0)
	j	.L1210
.L1214:
	.loc 6 10029 23
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 6 10029 42
	lw	a4,100(a5)
	.loc 6 10029 58
	li	a5,65536
	and	a5,a4,a5
	.loc 6 10029 19
	beq	a5,zero,.L1215
	.loc 6 10030 19
	li	a5,43
	sb	a5,-41(s0)
	j	.L1210
.L1215:
	.loc 6 10031 23
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 6 10031 42
	lw	a5,100(a5)
	.loc 6 10031 58
	andi	a5,a5,1
	.loc 6 10031 19
	beq	a5,zero,.L1216
	.loc 6 10032 19
	li	a5,45
	sb	a5,-41(s0)
	j	.L1210
.L1216:
	.loc 6 10033 23
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 6 10033 42
	lw	a5,100(a5)
	.loc 6 10033 58
	andi	a5,a5,2
	.loc 6 10033 19
	beq	a5,zero,.L1217
	.loc 6 10034 19
	li	a5,44
	sb	a5,-41(s0)
	j	.L1210
.L1217:
	.loc 6 10035 23
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 6 10035 42
	lw	a5,100(a5)
	.loc 6 10035 58
	andi	a5,a5,8
	.loc 6 10035 19
	beq	a5,zero,.L1218
	.loc 6 10036 19
	li	a5,48
	sb	a5,-41(s0)
	j	.L1210
.L1218:
	.loc 6 10038 19
	li	a5,46
	sb	a5,-41(s0)
.L1210:
	.loc 6 10040 9
	lbu	a5,-41(s0)
	mv	a2,a5
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
.L1208:
.LBE168:
	.loc 6 10045 12
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 6 10045 31
	lw	a5,100(a5)
	.loc 6 10045 8
	beq	a5,zero,.L1219
	.loc 6 10046 193
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 6 10046 212
	lw	a5,100(a5)
	.loc 6 10046 9
	lui	a4,%hi(.LC207)
	addi	a4,a4,%lo(.LC207)
	li	a3,8192
	addi	a3,a3,1854
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	j	.L1220
.L1219:
	.loc 6 10049 9
	lui	a5,%hi(.LC208)
	addi	a4,a5,%lo(.LC208)
	li	a5,8192
	addi	a3,a5,1857
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
.L1220:
	.loc 6 10053 12
	lw	a5,-28(s0)
.L1221:
	.loc 6 10054 1
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
.LFE334:
	.size	mbedtls_ssl_verify_certificate, .-mbedtls_ssl_verify_certificate
	.section	.text.mbedtls_ssl_tls12_export_keying_material,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_tls12_export_keying_material, @function
mbedtls_ssl_tls12_export_keying_material:
.LFB335:
	.loc 6 10069 1
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
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	sw	a6,-76(s0)
	sw	a7,-80(s0)
	mv	a5,a1
	sb	a5,-53(s0)
	.loc 6 10070 9
	sw	zero,-24(s0)
	.loc 6 10071 20
	sw	zero,-28(s0)
	.loc 6 10076 18
	li	a5,64
	sw	a5,-32(s0)
	.loc 6 10077 12
	lw	a5,-32(s0)
	sw	a5,-20(s0)
	.loc 6 10078 8
	lw	a5,0(s0)
	beq	a5,zero,.L1223
	.loc 6 10079 12
	lw	a4,-80(s0)
	li	a5,65536
	bltu	a4,a5,.L1224
	.loc 6 10080 20
	li	a5,-28672
	addi	a5,a5,-256
	j	.L1225
.L1224:
	.loc 6 10086 23
	lw	a4,-80(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	addi	a5,a5,2
	sw	a5,-20(s0)
.L1223:
	.loc 6 10089 17
	li	a1,1
	lw	a0,-20(s0)
	call	calloc
	mv	a5,a0
	sw	a5,-28(s0)
	.loc 6 10090 8
	lw	a5,-28(s0)
	bne	a5,zero,.L1226
	.loc 6 10091 16
	li	a5,-32768
	addi	a5,a5,256
	j	.L1225
.L1226:
	.loc 6 10095 15
	lw	a5,-52(s0)
	lw	a5,76(a5)
	.loc 6 10095 12
	addi	a5,a5,286
	.loc 6 10094 5
	addi	a5,a5,32
	li	a2,32
	mv	a1,a5
	lw	a0,-28(s0)
	call	memcpy
	.loc 6 10097 22
	lw	a5,-28(s0)
	addi	a4,a5,32
	.loc 6 10098 15
	lw	a5,-52(s0)
	lw	a5,76(a5)
	.loc 6 10098 26
	addi	a5,a5,286
	.loc 6 10097 5
	li	a2,32
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 6 10100 8
	lw	a5,0(s0)
	beq	a5,zero,.L1227
	.loc 6 10101 157 discriminator 2
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a4,a4,a5
	.loc 6 10101 176 discriminator 2
	lw	a5,-80(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a3,a5,8
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-36(s0)
	sh	a5,-38(s0)
.LBB169:
.LBB170:
	.loc 7 148 33
	lw	a5,-36(s0)
	sw	a5,-44(s0)
	.loc 7 149 12
	lw	a5,-44(s0)
	lhu	a4,-38(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-38(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 7 153 1
	nop
.LBE170:
.LBE169:
	.loc 6 10102 42
	lw	a5,-32(s0)
	addi	a5,a5,2
	lw	a4,-28(s0)
	add	a5,a4,a5
	.loc 6 10102 9
	lw	a2,-80(s0)
	lw	a1,-76(s0)
	mv	a0,a5
	call	memcpy
.L1227:
	.loc 6 10104 40
	lw	a5,-52(s0)
	lw	a5,56(a5)
	.loc 6 10104 49
	addi	a1,a5,48
	.loc 6 10104 11
	lbu	a0,-53(s0)
	lw	a5,-64(s0)
	sw	a5,0(sp)
	lw	a7,-60(s0)
	lw	a6,-20(s0)
	lw	a5,-28(s0)
	lw	a4,-72(s0)
	lw	a3,-68(s0)
	li	a2,48
	call	tls_prf_generic
	sw	a0,-24(s0)
	.loc 6 10108 5
	lw	a0,-28(s0)
	call	free
	.loc 6 10109 12
	lw	a5,-24(s0)
.L1225:
	.loc 6 10110 1
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
.LFE335:
	.size	mbedtls_ssl_tls12_export_keying_material, .-mbedtls_ssl_tls12_export_keying_material
	.section	.text.mbedtls_ssl_export_keying_material,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_export_keying_material
	.type	mbedtls_ssl_export_keying_material, @function
mbedtls_ssl_export_keying_material:
.LFB336:
	.loc 6 10148 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	a7,-64(s0)
	.loc 6 10149 10
	lw	a0,-36(s0)
	call	mbedtls_ssl_is_handshake_over
	mv	a5,a0
	.loc 6 10149 8 discriminator 1
	bne	a5,zero,.L1229
	.loc 6 10151 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L1230
.L1229:
	.loc 6 10154 8
	lw	a4,-44(s0)
	li	a5,8192
	addi	a5,a5,-32
	bleu	a4,a5,.L1231
	.loc 6 10155 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L1230
.L1231:
	.loc 6 10158 26
	lw	a0,-36(s0)
	call	mbedtls_ssl_get_ciphersuite_id_from_ssl
	sw	a0,-20(s0)
	.loc 6 10159 52
	lw	a0,-20(s0)
	call	mbedtls_ssl_ciphersuite_from_id
	sw	a0,-24(s0)
	.loc 6 10160 29
	lw	a5,-24(s0)
	lbu	a5,9(a5)
	sb	a5,-25(s0)
	.loc 6 10162 13
	lw	a0,-36(s0)
	call	mbedtls_ssl_get_version_number
	mv	a5,a0
	.loc 6 10162 13 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 6 10162 5 is_stmt 1 discriminator 1
	li	a5,771
	bne	a4,a5,.L1232
	.loc 6 10165 20
	lbu	a1,-25(s0)
	lw	a5,-64(s0)
	sw	a5,0(sp)
	lw	a7,-60(s0)
	lw	a6,-56(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_ssl_tls12_export_keying_material
	mv	a5,a0
	j	.L1230
.L1232:
	.loc 6 10181 20
	li	a5,-28672
	addi	a5,a5,384
.L1230:
	.loc 6 10183 1
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
.LFE336:
	.size	mbedtls_ssl_export_keying_material, .-mbedtls_ssl_export_keying_material
	.section	.rodata.__func__.2,"a"
	.align	2
	.type	__func__.2, @object
	.size	__func__.2, 30
__func__.2:
	.string	"mbedtls_ssl_parse_sig_alg_ext"
	.section	.rodata.__func__.1,"a"
	.align	2
	.type	__func__.1, @object
	.size	__func__.1, 34
__func__.1:
	.string	"mbedtls_ssl_parse_server_name_ext"
	.section	.rodata.__func__.0,"a"
	.align	2
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"mbedtls_ssl_parse_alpn_ext"
	.text
.Letext0:
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecp.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_types.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/cmac.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/pk.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ssl_ciphersuites.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509_crl.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509_crt.h"
	.file 22 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/dhm.h"
	.file 23 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecdh.h"
	.file 24 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/debug_internal.h"
	.file 25 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/constant_time.h"
	.file 26 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_debug_helpers.h"
	.file 27 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 28 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_client.h"
	.file 29 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 30 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/common.h"
	.file 31 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x85c5
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x44
	.4byte	.LASF1140
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x26
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x26
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x10
	.4byte	0x32
	.uleb128 0x26
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x26
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x26
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x26
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x26
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x26
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x45
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x10
	.4byte	0x68
	.uleb128 0x26
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x10
	.4byte	0x74
	.uleb128 0x11
	.4byte	.LASF12
	.byte	0x8
	.byte	0xe5
	.byte	0x16
	.4byte	0x74
	.uleb128 0x10
	.4byte	0x80
	.uleb128 0x26
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x11
	.4byte	.LASF13
	.byte	0x9
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x9
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x10
	.4byte	0xa4
	.uleb128 0x11
	.4byte	.LASF15
	.byte	0x9
	.byte	0x31
	.byte	0x1c
	.4byte	0x45
	.uleb128 0x10
	.4byte	0xb5
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x9
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0x9
	.byte	0x37
	.byte	0x20
	.4byte	0x61
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x9
	.byte	0x56
	.byte	0x16
	.4byte	0x74
	.uleb128 0x15
	.4byte	0x32
	.4byte	0xfa
	.uleb128 0x16
	.4byte	0x74
	.byte	0x3
	.byte	0
	.uleb128 0x46
	.byte	0x4
	.uleb128 0x36
	.4byte	0xfa
	.uleb128 0x7
	.4byte	0x32
	.uleb128 0x7
	.4byte	0x10b
	.uleb128 0x26
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x10
	.4byte	0x10b
	.uleb128 0x7
	.4byte	0x112
	.uleb128 0x10
	.4byte	0x117
	.uleb128 0x36
	.4byte	0x117
	.uleb128 0x7
	.4byte	0x130
	.uleb128 0x36
	.4byte	0x126
	.uleb128 0x47
	.uleb128 0x32
	.byte	0x2
	.byte	0x7
	.byte	0x56
	.4byte	0x145
	.uleb128 0xb
	.string	"x"
	.byte	0x7
	.byte	0x57
	.byte	0xe
	.4byte	0xb5
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x7
	.byte	0x58
	.byte	0x1b
	.4byte	0x131
	.uleb128 0x32
	.byte	0x4
	.byte	0x7
	.byte	0x59
	.4byte	0x165
	.uleb128 0xb
	.string	"x"
	.byte	0x7
	.byte	0x5a
	.byte	0xe
	.4byte	0xc6
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x7
	.byte	0x5b
	.byte	0x1b
	.4byte	0x151
	.uleb128 0x32
	.byte	0x8
	.byte	0x7
	.byte	0x5c
	.4byte	0x185
	.uleb128 0xb
	.string	"x"
	.byte	0x7
	.byte	0x5d
	.byte	0xe
	.4byte	0xd2
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x7
	.byte	0x5e
	.byte	0x1b
	.4byte	0x171
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0xa
	.byte	0xd1
	.byte	0xd
	.4byte	0x19d
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x1b6
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x101
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0xb
	.byte	0xaa
	.byte	0x12
	.4byte	0xc6
	.uleb128 0x1e
	.4byte	.LASF25
	.byte	0x8
	.byte	0xb
	.byte	0xd0
	.byte	0x10
	.4byte	0x1f1
	.uleb128 0xb
	.string	"p"
	.byte	0xb
	.byte	0xd5
	.byte	0x17
	.4byte	0x1f1
	.byte	0
	.uleb128 0xb
	.string	"s"
	.byte	0xb
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xb
	.string	"n"
	.byte	0xb
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.4byte	0x1b6
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0xb
	.byte	0xf0
	.byte	0x1
	.4byte	0x1c2
	.uleb128 0x29
	.byte	0x7
	.4byte	0x32
	.byte	0xc
	.byte	0x66
	.4byte	0x263
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0xc
	.byte	0x75
	.byte	0x3
	.4byte	0x202
	.uleb128 0x1e
	.4byte	.LASF41
	.byte	0x18
	.byte	0xc
	.byte	0x9e
	.byte	0x10
	.4byte	0x29e
	.uleb128 0xb
	.string	"X"
	.byte	0xc
	.byte	0x9f
	.byte	0x11
	.4byte	0x1f6
	.byte	0
	.uleb128 0xb
	.string	"Y"
	.byte	0xc
	.byte	0xa0
	.byte	0x11
	.4byte	0x1f6
	.byte	0x8
	.uleb128 0xb
	.string	"Z"
	.byte	0xc
	.byte	0xa1
	.byte	0x11
	.4byte	0x1f6
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0xc
	.byte	0xa3
	.byte	0x1
	.4byte	0x26f
	.uleb128 0x1e
	.4byte	.LASF42
	.byte	0x60
	.byte	0xc
	.byte	0xe9
	.byte	0x10
	.4byte	0x36f
	.uleb128 0xb
	.string	"id"
	.byte	0xc
	.byte	0xea
	.byte	0x1a
	.4byte	0x263
	.byte	0
	.uleb128 0xb
	.string	"P"
	.byte	0xc
	.byte	0xeb
	.byte	0x11
	.4byte	0x1f6
	.byte	0x4
	.uleb128 0xb
	.string	"A"
	.byte	0xc
	.byte	0xec
	.byte	0x11
	.4byte	0x1f6
	.byte	0xc
	.uleb128 0xb
	.string	"B"
	.byte	0xc
	.byte	0xf1
	.byte	0x11
	.4byte	0x1f6
	.byte	0x14
	.uleb128 0xb
	.string	"G"
	.byte	0xc
	.byte	0xf3
	.byte	0x17
	.4byte	0x29e
	.byte	0x1c
	.uleb128 0xb
	.string	"N"
	.byte	0xc
	.byte	0xf4
	.byte	0x11
	.4byte	0x1f6
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0xc
	.byte	0xf5
	.byte	0xc
	.4byte	0x80
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0xc
	.byte	0xf6
	.byte	0xc
	.4byte	0x80
	.byte	0x40
	.uleb128 0xb
	.string	"h"
	.byte	0xc
	.byte	0xfb
	.byte	0x12
	.4byte	0x74
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0xc
	.byte	0xfc
	.byte	0xa
	.4byte	0x383
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0xc
	.byte	0xfe
	.byte	0xa
	.4byte	0x3a1
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0xc
	.byte	0xff
	.byte	0xa
	.4byte	0x3a1
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0xc
	.2byte	0x100
	.byte	0xb
	.4byte	0xfa
	.byte	0x54
	.uleb128 0x1b
	.string	"T"
	.byte	0xc
	.2byte	0x101
	.byte	0x18
	.4byte	0x39c
	.byte	0x58
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0xc
	.2byte	0x102
	.byte	0xc
	.4byte	0x80
	.byte	0x5c
	.byte	0
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x37e
	.uleb128 0x2
	.4byte	0x37e
	.byte	0
	.uleb128 0x7
	.4byte	0x1f6
	.uleb128 0x7
	.4byte	0x36f
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x39c
	.uleb128 0x2
	.4byte	0x39c
	.uleb128 0x2
	.4byte	0xfa
	.byte	0
	.uleb128 0x7
	.4byte	0x29e
	.uleb128 0x7
	.4byte	0x388
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0xc
	.2byte	0x104
	.byte	0x1
	.4byte	0x2aa
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0xc
	.2byte	0x16c
	.byte	0x28
	.4byte	0x3c0
	.uleb128 0x33
	.4byte	.LASF52
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0xc
	.2byte	0x173
	.byte	0x2b
	.4byte	0x3d2
	.uleb128 0x33
	.4byte	.LASF53
	.uleb128 0x27
	.byte	0x10
	.byte	0xc
	.2byte	0x178
	.byte	0x9
	.4byte	0x419
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0xc
	.2byte	0x179
	.byte	0xe
	.4byte	0x74
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0xc
	.2byte	0x17a
	.byte	0xe
	.4byte	0x74
	.byte	0x4
	.uleb128 0x1b
	.string	"rsm"
	.byte	0xc
	.2byte	0x17b
	.byte	0x22
	.4byte	0x419
	.byte	0x8
	.uleb128 0x1b
	.string	"ma"
	.byte	0xc
	.2byte	0x17c
	.byte	0x25
	.4byte	0x41e
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.4byte	0x3b3
	.uleb128 0x7
	.4byte	0x3c5
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0xc
	.2byte	0x17d
	.byte	0x3
	.4byte	0x3d7
	.uleb128 0x2a
	.4byte	.LASF57
	.byte	0x80
	.byte	0xc
	.2byte	0x1ac
	.byte	0x10
	.4byte	0x465
	.uleb128 0x1b
	.string	"grp"
	.byte	0xc
	.2byte	0x1ad
	.byte	0x17
	.4byte	0x3a6
	.byte	0
	.uleb128 0x1b
	.string	"d"
	.byte	0xc
	.2byte	0x1ae
	.byte	0x11
	.4byte	0x1f6
	.byte	0x60
	.uleb128 0x1b
	.string	"Q"
	.byte	0xc
	.2byte	0x1af
	.byte	0x17
	.4byte	0x29e
	.byte	0x68
	.byte	0
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0xc
	.2byte	0x1b1
	.byte	0x1
	.4byte	0x430
	.uleb128 0x10
	.4byte	0x465
	.uleb128 0x29
	.byte	0x7
	.4byte	0x32
	.byte	0xd
	.byte	0x2f
	.4byte	0x4cc
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x11
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x12
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0xd
	.byte	0x3c
	.byte	0x3
	.4byte	0x477
	.uleb128 0x10
	.4byte	0x4cc
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0xd
	.byte	0x6b
	.byte	0x22
	.4byte	0x4ee
	.uleb128 0x10
	.4byte	0x4dd
	.uleb128 0x33
	.4byte	.LASF71
	.uleb128 0x1e
	.4byte	.LASF72
	.byte	0xc
	.byte	0xd
	.byte	0x7a
	.byte	0x10
	.4byte	0x528
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0xd
	.byte	0x7c
	.byte	0x1e
	.4byte	0x528
	.byte	0
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0xd
	.byte	0x84
	.byte	0xb
	.4byte	0xfa
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0xd
	.byte	0x88
	.byte	0xb
	.4byte	0xfa
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	0x4e9
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0xd
	.byte	0x8a
	.byte	0x3
	.4byte	0x4f3
	.uleb128 0x10
	.4byte	0x52d
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0xe
	.byte	0x3b
	.byte	0x11
	.4byte	0x98
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0xe
	.byte	0x4e
	.byte	0x12
	.4byte	0xb5
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0xe
	.byte	0x61
	.byte	0x11
	.4byte	0xa4
	.uleb128 0x15
	.4byte	0x32
	.4byte	0x572
	.uleb128 0x16
	.4byte	0x74
	.byte	0x3f
	.byte	0
	.uleb128 0x29
	.byte	0x7
	.4byte	0x32
	.byte	0x1
	.byte	0x54
	.4byte	0x777
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF85
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF86
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF88
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF91
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF92
	.byte	0xd
	.uleb128 0x4
	.4byte	.LASF93
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF94
	.byte	0xf
	.uleb128 0x4
	.4byte	.LASF95
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF96
	.byte	0x11
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0x12
	.uleb128 0x4
	.4byte	.LASF98
	.byte	0x13
	.uleb128 0x4
	.4byte	.LASF99
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0x15
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0x16
	.uleb128 0x4
	.4byte	.LASF102
	.byte	0x17
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0x19
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0x1a
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0x1b
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0x1d
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0x1e
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0x1f
	.uleb128 0x4
	.4byte	.LASF111
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF112
	.byte	0x21
	.uleb128 0x4
	.4byte	.LASF113
	.byte	0x22
	.uleb128 0x4
	.4byte	.LASF114
	.byte	0x23
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x24
	.uleb128 0x4
	.4byte	.LASF116
	.byte	0x25
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0x26
	.uleb128 0x4
	.4byte	.LASF118
	.byte	0x27
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0x28
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x29
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x2a
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0x2b
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0x2c
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x2d
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0x2e
	.uleb128 0x4
	.4byte	.LASF126
	.byte	0x2f
	.uleb128 0x4
	.4byte	.LASF127
	.byte	0x30
	.uleb128 0x4
	.4byte	.LASF128
	.byte	0x31
	.uleb128 0x4
	.4byte	.LASF129
	.byte	0x32
	.uleb128 0x4
	.4byte	.LASF130
	.byte	0x33
	.uleb128 0x4
	.4byte	.LASF131
	.byte	0x34
	.uleb128 0x4
	.4byte	.LASF132
	.byte	0x35
	.uleb128 0x4
	.4byte	.LASF133
	.byte	0x36
	.uleb128 0x4
	.4byte	.LASF134
	.byte	0x37
	.uleb128 0x4
	.4byte	.LASF135
	.byte	0x38
	.uleb128 0x4
	.4byte	.LASF136
	.byte	0x39
	.uleb128 0x4
	.4byte	.LASF137
	.byte	0x3a
	.uleb128 0x4
	.4byte	.LASF138
	.byte	0x3b
	.uleb128 0x4
	.4byte	.LASF139
	.byte	0x3c
	.uleb128 0x4
	.4byte	.LASF140
	.byte	0x3d
	.uleb128 0x4
	.4byte	.LASF141
	.byte	0x3e
	.uleb128 0x4
	.4byte	.LASF142
	.byte	0x3f
	.uleb128 0x4
	.4byte	.LASF143
	.byte	0x40
	.uleb128 0x4
	.4byte	.LASF144
	.byte	0x41
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x42
	.uleb128 0x4
	.4byte	.LASF146
	.byte	0x43
	.uleb128 0x4
	.4byte	.LASF147
	.byte	0x44
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0x45
	.uleb128 0x4
	.4byte	.LASF149
	.byte	0x46
	.uleb128 0x4
	.4byte	.LASF150
	.byte	0x47
	.uleb128 0x4
	.4byte	.LASF151
	.byte	0x48
	.uleb128 0x4
	.4byte	.LASF152
	.byte	0x49
	.uleb128 0x4
	.4byte	.LASF153
	.byte	0x4a
	.uleb128 0x4
	.4byte	.LASF154
	.byte	0x4b
	.uleb128 0x4
	.4byte	.LASF155
	.byte	0x4c
	.uleb128 0x4
	.4byte	.LASF156
	.byte	0x4d
	.uleb128 0x4
	.4byte	.LASF157
	.byte	0x4e
	.uleb128 0x4
	.4byte	.LASF158
	.byte	0x4f
	.uleb128 0x4
	.4byte	.LASF159
	.byte	0x50
	.uleb128 0x4
	.4byte	.LASF160
	.byte	0x51
	.uleb128 0x4
	.4byte	.LASF161
	.byte	0x52
	.uleb128 0x4
	.4byte	.LASF162
	.byte	0x53
	.byte	0
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0x1
	.byte	0xa9
	.byte	0x3
	.4byte	0x572
	.uleb128 0x10
	.4byte	0x777
	.uleb128 0x29
	.byte	0x7
	.4byte	0x32
	.byte	0x1
	.byte	0xac
	.4byte	0x7e9
	.uleb128 0x4
	.4byte	.LASF164
	.byte	0
	.uleb128 0x4
	.4byte	.LASF165
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF166
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF167
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF168
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF170
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF171
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF172
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF173
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF174
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF175
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF176
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF177
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.4byte	.LASF178
	.byte	0x1
	.byte	0xbb
	.byte	0x3
	.4byte	0x788
	.uleb128 0x29
	.byte	0x7
	.4byte	0x32
	.byte	0x1
	.byte	0xbe
	.4byte	0x820
	.uleb128 0x4
	.4byte	.LASF179
	.byte	0
	.uleb128 0x4
	.4byte	.LASF180
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF181
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF182
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF183
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0x1
	.byte	0xc4
	.byte	0x3
	.4byte	0x7f5
	.uleb128 0x29
	.byte	0x5
	.4byte	0x2b
	.byte	0x1
	.byte	0xc7
	.4byte	0x84b
	.uleb128 0x48
	.4byte	.LASF185
	.sleb128 -1
	.uleb128 0x4
	.4byte	.LASF186
	.byte	0
	.uleb128 0x4
	.4byte	.LASF187
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF188
	.byte	0x1
	.byte	0xcb
	.byte	0x3
	.4byte	0x82c
	.uleb128 0x10
	.4byte	0x84b
	.uleb128 0x11
	.4byte	.LASF189
	.byte	0x1
	.byte	0xf9
	.byte	0x27
	.4byte	0x868
	.uleb128 0x1e
	.4byte	.LASF189
	.byte	0x24
	.byte	0xf
	.byte	0x3b
	.byte	0x8
	.4byte	0x89d
	.uleb128 0x9
	.4byte	.LASF190
	.byte	0xf
	.byte	0x3d
	.byte	0x13
	.4byte	0xa24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF191
	.byte	0xf
	.byte	0x41
	.byte	0x13
	.4byte	0xa24
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF192
	.byte	0xf
	.byte	0x44
	.byte	0xc
	.4byte	0x80
	.byte	0x20
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF193
	.byte	0x8
	.byte	0x1
	.2byte	0x10a
	.byte	0x10
	.4byte	0x923
	.uleb128 0x3
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x10c
	.byte	0x11
	.4byte	0x117
	.byte	0
	.uleb128 0x28
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x10f
	.byte	0x12
	.4byte	0x74
	.byte	0x5
	.byte	0x20
	.uleb128 0x28
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x115
	.byte	0x12
	.4byte	0x74
	.byte	0x3
	.byte	0x25
	.uleb128 0x28
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x11b
	.byte	0x12
	.4byte	0x74
	.byte	0x4
	.byte	0x28
	.uleb128 0x28
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x120
	.byte	0x12
	.4byte	0x74
	.byte	0x4
	.byte	0x2c
	.uleb128 0x28
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x128
	.byte	0x12
	.4byte	0x74
	.byte	0x8
	.byte	0x30
	.uleb128 0x28
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x12e
	.byte	0x12
	.4byte	0x74
	.byte	0x2
	.byte	0x38
	.uleb128 0x28
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x131
	.byte	0x12
	.4byte	0x74
	.byte	0x5
	.byte	0x3a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x133
	.byte	0x3
	.4byte	0x89d
	.uleb128 0x10
	.4byte	0x923
	.uleb128 0x2a
	.4byte	.LASF202
	.byte	0x44
	.byte	0x1
	.2byte	0x13c
	.byte	0x10
	.4byte	0x9dd
	.uleb128 0x3
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x13e
	.byte	0x22
	.4byte	0x9dd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x141
	.byte	0x9
	.4byte	0x68
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x146
	.byte	0x19
	.4byte	0x84b
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x14c
	.byte	0xb
	.4byte	0x9f7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x152
	.byte	0xa
	.4byte	0xa1f
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x158
	.byte	0x13
	.4byte	0xa24
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x15b
	.byte	0xc
	.4byte	0x80
	.byte	0x24
	.uleb128 0x1b
	.string	"iv"
	.byte	0x1
	.2byte	0x15f
	.byte	0x13
	.4byte	0xa24
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x162
	.byte	0xc
	.4byte	0x80
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x165
	.byte	0xb
	.4byte	0xfa
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x169
	.byte	0x1d
	.4byte	0xa34
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.4byte	0x930
	.uleb128 0x31
	.4byte	0x9f7
	.uleb128 0x2
	.4byte	0x101
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x7
	.4byte	0x9e2
	.uleb128 0x17
	.4byte	0x68
	.4byte	0xa1a
	.uleb128 0x2
	.4byte	0x101
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0xa1a
	.uleb128 0x2
	.4byte	0xa1a
	.byte	0
	.uleb128 0x7
	.4byte	0x80
	.uleb128 0x7
	.4byte	0x9fc
	.uleb128 0x15
	.4byte	0x32
	.4byte	0xa34
	.uleb128 0x16
	.4byte	0x74
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x85c
	.uleb128 0xf
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x177
	.byte	0x3
	.4byte	0x935
	.uleb128 0x10
	.4byte	0xa39
	.uleb128 0x7
	.4byte	0xa4
	.uleb128 0x29
	.byte	0x7
	.4byte	0x32
	.byte	0x10
	.byte	0x49
	.4byte	0xa8d
	.uleb128 0x4
	.4byte	.LASF210
	.byte	0
	.uleb128 0x4
	.4byte	.LASF211
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF212
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF213
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF214
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF216
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF217
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.4byte	.LASF218
	.byte	0x10
	.byte	0x52
	.byte	0x3
	.4byte	0xa50
	.uleb128 0x11
	.4byte	.LASF219
	.byte	0x10
	.byte	0xd5
	.byte	0x22
	.4byte	0xaaa
	.uleb128 0x10
	.4byte	0xa99
	.uleb128 0x33
	.4byte	.LASF219
	.uleb128 0x1e
	.4byte	.LASF220
	.byte	0x8
	.byte	0x10
	.byte	0xdc
	.byte	0x10
	.4byte	0xad7
	.uleb128 0x9
	.4byte	.LASF221
	.byte	0x10
	.byte	0xdd
	.byte	0x1e
	.4byte	0xad7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF222
	.byte	0x10
	.byte	0xde
	.byte	0xb
	.4byte	0xfa
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0xaa5
	.uleb128 0xf
	.4byte	.LASF220
	.byte	0x10
	.2byte	0x109
	.byte	0x3
	.4byte	0xaaf
	.uleb128 0x10
	.4byte	0xadc
	.uleb128 0x27
	.byte	0x8
	.byte	0x10
	.2byte	0x10f
	.byte	0x9
	.4byte	0xb15
	.uleb128 0x3
	.4byte	.LASF221
	.byte	0x10
	.2byte	0x110
	.byte	0x1e
	.4byte	0xad7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF223
	.byte	0x10
	.2byte	0x111
	.byte	0xb
	.4byte	0xfa
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF224
	.byte	0x10
	.2byte	0x112
	.byte	0x3
	.4byte	0xaee
	.uleb128 0x2f
	.byte	0x1
	.4byte	0x32
	.byte	0x11
	.2byte	0x101
	.byte	0xe
	.4byte	0xb79
	.uleb128 0x4
	.4byte	.LASF225
	.byte	0
	.uleb128 0x4
	.4byte	.LASF226
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF227
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF228
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF229
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF231
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF232
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF233
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF234
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF235
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF236
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.4byte	.LASF237
	.byte	0x11
	.2byte	0x10e
	.byte	0x3
	.4byte	0xb22
	.uleb128 0xf
	.4byte	.LASF238
	.byte	0x11
	.2byte	0x1b2
	.byte	0x2a
	.4byte	0xb98
	.uleb128 0x10
	.4byte	0xb86
	.uleb128 0x2a
	.4byte	.LASF238
	.byte	0x10
	.byte	0x11
	.2byte	0x1c0
	.byte	0x8
	.4byte	0xc16
	.uleb128 0x1b
	.string	"id"
	.byte	0x11
	.2byte	0x1c1
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x3
	.4byte	.LASF194
	.byte	0x11
	.2byte	0x1c2
	.byte	0x11
	.4byte	0x117
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF239
	.byte	0x11
	.2byte	0x1c4
	.byte	0xd
	.4byte	0xa4
	.byte	0x8
	.uleb128 0x1b
	.string	"mac"
	.byte	0x11
	.2byte	0x1c5
	.byte	0xd
	.4byte	0xa4
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF240
	.byte	0x11
	.2byte	0x1c6
	.byte	0xd
	.4byte	0xa4
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF200
	.byte	0x11
	.2byte	0x1c7
	.byte	0xd
	.4byte	0xa4
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF241
	.byte	0x11
	.2byte	0x1c9
	.byte	0xe
	.4byte	0xb5
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF242
	.byte	0x11
	.2byte	0x1ca
	.byte	0xe
	.4byte	0xb5
	.byte	0xe
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF243
	.byte	0xc
	.byte	0x12
	.byte	0x8d
	.byte	0x10
	.4byte	0xc49
	.uleb128 0xb
	.string	"tag"
	.byte	0x12
	.byte	0x8e
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0xb
	.string	"len"
	.byte	0x12
	.byte	0x8f
	.byte	0xc
	.4byte	0x80
	.byte	0x4
	.uleb128 0xb
	.string	"p"
	.byte	0x12
	.byte	0x90
	.byte	0x14
	.4byte	0x101
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF243
	.byte	0x12
	.byte	0x92
	.byte	0x1
	.4byte	0xc16
	.uleb128 0x1e
	.4byte	.LASF244
	.byte	0x10
	.byte	0x12
	.byte	0xa1
	.byte	0x10
	.4byte	0xc7d
	.uleb128 0xb
	.string	"buf"
	.byte	0x12
	.byte	0xa2
	.byte	0x16
	.4byte	0xc49
	.byte	0
	.uleb128 0x9
	.4byte	.LASF245
	.byte	0x12
	.byte	0xab
	.byte	0x23
	.4byte	0xc7d
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.4byte	0xc55
	.uleb128 0x11
	.4byte	.LASF244
	.byte	0x12
	.byte	0xad
	.byte	0x1
	.4byte	0xc55
	.uleb128 0x1e
	.4byte	.LASF246
	.byte	0x20
	.byte	0x12
	.byte	0xb2
	.byte	0x10
	.4byte	0xcd0
	.uleb128 0xb
	.string	"oid"
	.byte	0x12
	.byte	0xb3
	.byte	0x16
	.4byte	0xc49
	.byte	0
	.uleb128 0xb
	.string	"val"
	.byte	0x12
	.byte	0xb4
	.byte	0x16
	.4byte	0xc49
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF245
	.byte	0x12
	.byte	0xbd
	.byte	0x25
	.4byte	0xcd0
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF247
	.byte	0x12
	.byte	0xc4
	.byte	0x13
	.4byte	0x32
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.4byte	0xc8e
	.uleb128 0x11
	.4byte	.LASF246
	.byte	0x12
	.byte	0xc6
	.byte	0x1
	.4byte	0xc8e
	.uleb128 0x11
	.4byte	.LASF248
	.byte	0x13
	.byte	0xd8
	.byte	0x1a
	.4byte	0xc49
	.uleb128 0x11
	.4byte	.LASF249
	.byte	0x13
	.byte	0xe3
	.byte	0x21
	.4byte	0xcd5
	.uleb128 0x11
	.4byte	.LASF250
	.byte	0x13
	.byte	0xe8
	.byte	0x1f
	.4byte	0xc82
	.uleb128 0x1e
	.4byte	.LASF251
	.byte	0x34
	.byte	0x13
	.byte	0xed
	.byte	0x10
	.4byte	0xd47
	.uleb128 0x9
	.4byte	.LASF252
	.byte	0x13
	.byte	0xee
	.byte	0x16
	.4byte	0xce1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF253
	.byte	0x13
	.byte	0xef
	.byte	0x1b
	.4byte	0xcf9
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF254
	.byte	0x13
	.byte	0xf0
	.byte	0x16
	.4byte	0xce1
	.byte	0x1c
	.uleb128 0xb
	.string	"raw"
	.byte	0x13
	.byte	0xf1
	.byte	0x16
	.4byte	0xce1
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF251
	.byte	0x13
	.byte	0xf3
	.byte	0x1
	.4byte	0xd05
	.uleb128 0x1e
	.4byte	.LASF255
	.byte	0x18
	.byte	0x13
	.byte	0xf6
	.byte	0x10
	.4byte	0xdaf
	.uleb128 0x9
	.4byte	.LASF256
	.byte	0x13
	.byte	0xf7
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0xb
	.string	"mon"
	.byte	0x13
	.byte	0xf7
	.byte	0xf
	.4byte	0x68
	.byte	0x4
	.uleb128 0xb
	.string	"day"
	.byte	0x13
	.byte	0xf7
	.byte	0x14
	.4byte	0x68
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF257
	.byte	0x13
	.byte	0xf8
	.byte	0x9
	.4byte	0x68
	.byte	0xc
	.uleb128 0xb
	.string	"min"
	.byte	0x13
	.byte	0xf8
	.byte	0xf
	.4byte	0x68
	.byte	0x10
	.uleb128 0xb
	.string	"sec"
	.byte	0x13
	.byte	0xf8
	.byte	0x14
	.4byte	0x68
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF255
	.byte	0x13
	.byte	0xfa
	.byte	0x1
	.4byte	0xd53
	.uleb128 0x1e
	.4byte	.LASF258
	.byte	0x40
	.byte	0x14
	.byte	0x27
	.byte	0x10
	.4byte	0xe0a
	.uleb128 0xb
	.string	"raw"
	.byte	0x14
	.byte	0x29
	.byte	0x16
	.4byte	0xce1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF259
	.byte	0x14
	.byte	0x2b
	.byte	0x16
	.4byte	0xce1
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF260
	.byte	0x14
	.byte	0x2d
	.byte	0x17
	.4byte	0xdaf
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF261
	.byte	0x14
	.byte	0x33
	.byte	0x16
	.4byte	0xce1
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF245
	.byte	0x14
	.byte	0x38
	.byte	0x24
	.4byte	0xe0a
	.byte	0x3c
	.byte	0
	.uleb128 0x7
	.4byte	0xdbb
	.uleb128 0x11
	.4byte	.LASF258
	.byte	0x14
	.byte	0x3a
	.byte	0x1
	.4byte	0xdbb
	.uleb128 0x1e
	.4byte	.LASF262
	.byte	0xf4
	.byte	0x14
	.byte	0x40
	.byte	0x10
	.4byte	0xef9
	.uleb128 0xb
	.string	"raw"
	.byte	0x14
	.byte	0x41
	.byte	0x16
	.4byte	0xce1
	.byte	0
	.uleb128 0xb
	.string	"tbs"
	.byte	0x14
	.byte	0x42
	.byte	0x16
	.4byte	0xce1
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF263
	.byte	0x14
	.byte	0x44
	.byte	0x9
	.4byte	0x68
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF264
	.byte	0x14
	.byte	0x45
	.byte	0x16
	.4byte	0xce1
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF265
	.byte	0x14
	.byte	0x47
	.byte	0x16
	.4byte	0xce1
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF266
	.byte	0x14
	.byte	0x49
	.byte	0x17
	.4byte	0xced
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF267
	.byte	0x14
	.byte	0x4b
	.byte	0x17
	.4byte	0xdaf
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF268
	.byte	0x14
	.byte	0x4c
	.byte	0x17
	.4byte	0xdaf
	.byte	0x6c
	.uleb128 0x9
	.4byte	.LASF269
	.byte	0x14
	.byte	0x4e
	.byte	0x1c
	.4byte	0xe0f
	.byte	0x84
	.uleb128 0x9
	.4byte	.LASF270
	.byte	0x14
	.byte	0x50
	.byte	0x16
	.4byte	0xce1
	.byte	0xc4
	.uleb128 0x9
	.4byte	.LASF271
	.byte	0x14
	.byte	0x52
	.byte	0x16
	.4byte	0xce1
	.byte	0xd0
	.uleb128 0xb
	.string	"sig"
	.byte	0x14
	.byte	0x53
	.byte	0x16
	.4byte	0xce1
	.byte	0xdc
	.uleb128 0x9
	.4byte	.LASF272
	.byte	0x14
	.byte	0x54
	.byte	0x17
	.4byte	0x4cc
	.byte	0xe8
	.uleb128 0x9
	.4byte	.LASF273
	.byte	0x14
	.byte	0x55
	.byte	0x17
	.4byte	0xa8d
	.byte	0xe9
	.uleb128 0x9
	.4byte	.LASF274
	.byte	0x14
	.byte	0x56
	.byte	0xb
	.4byte	0xfa
	.byte	0xec
	.uleb128 0x9
	.4byte	.LASF245
	.byte	0x14
	.byte	0x5b
	.byte	0x1e
	.4byte	0xef9
	.byte	0xf0
	.byte	0
	.uleb128 0x7
	.4byte	0xe1b
	.uleb128 0x11
	.4byte	.LASF262
	.byte	0x14
	.byte	0x5d
	.byte	0x1
	.4byte	0xe1b
	.uleb128 0x49
	.4byte	.LASF275
	.2byte	0x194
	.byte	0x15
	.byte	0x29
	.byte	0x10
	.4byte	0x10b9
	.uleb128 0x9
	.4byte	.LASF276
	.byte	0x15
	.byte	0x2a
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0xb
	.string	"raw"
	.byte	0x15
	.byte	0x2c
	.byte	0x16
	.4byte	0xce1
	.byte	0x4
	.uleb128 0xb
	.string	"tbs"
	.byte	0x15
	.byte	0x2d
	.byte	0x16
	.4byte	0xce1
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF263
	.byte	0x15
	.byte	0x2f
	.byte	0x9
	.4byte	0x68
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF259
	.byte	0x15
	.byte	0x30
	.byte	0x16
	.4byte	0xce1
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF264
	.byte	0x15
	.byte	0x31
	.byte	0x16
	.4byte	0xce1
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF265
	.byte	0x15
	.byte	0x33
	.byte	0x16
	.4byte	0xce1
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF277
	.byte	0x15
	.byte	0x34
	.byte	0x16
	.4byte	0xce1
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF266
	.byte	0x15
	.byte	0x36
	.byte	0x17
	.4byte	0xced
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF278
	.byte	0x15
	.byte	0x37
	.byte	0x17
	.4byte	0xced
	.byte	0x70
	.uleb128 0x9
	.4byte	.LASF279
	.byte	0x15
	.byte	0x39
	.byte	0x17
	.4byte	0xdaf
	.byte	0x90
	.uleb128 0x9
	.4byte	.LASF280
	.byte	0x15
	.byte	0x3a
	.byte	0x17
	.4byte	0xdaf
	.byte	0xa8
	.uleb128 0x9
	.4byte	.LASF281
	.byte	0x15
	.byte	0x3c
	.byte	0x16
	.4byte	0xce1
	.byte	0xc0
	.uleb128 0xb
	.string	"pk"
	.byte	0x15
	.byte	0x3d
	.byte	0x18
	.4byte	0xadc
	.byte	0xcc
	.uleb128 0x9
	.4byte	.LASF282
	.byte	0x15
	.byte	0x3f
	.byte	0x16
	.4byte	0xce1
	.byte	0xd4
	.uleb128 0x9
	.4byte	.LASF283
	.byte	0x15
	.byte	0x40
	.byte	0x16
	.4byte	0xce1
	.byte	0xe0
	.uleb128 0x9
	.4byte	.LASF284
	.byte	0x15
	.byte	0x41
	.byte	0x16
	.4byte	0xce1
	.byte	0xec
	.uleb128 0x9
	.4byte	.LASF285
	.byte	0x15
	.byte	0x42
	.byte	0x1b
	.4byte	0xcf9
	.byte	0xf8
	.uleb128 0x22
	.4byte	.LASF286
	.byte	0x43
	.byte	0x16
	.4byte	0xce1
	.2byte	0x108
	.uleb128 0x22
	.4byte	.LASF287
	.byte	0x44
	.byte	0x1c
	.4byte	0xd47
	.2byte	0x114
	.uleb128 0x22
	.4byte	.LASF288
	.byte	0x46
	.byte	0x1b
	.4byte	0xcf9
	.2byte	0x148
	.uleb128 0x22
	.4byte	.LASF289
	.byte	0x48
	.byte	0x9
	.4byte	0x68
	.2byte	0x158
	.uleb128 0x22
	.4byte	.LASF290
	.byte	0x49
	.byte	0x9
	.4byte	0x68
	.2byte	0x15c
	.uleb128 0x22
	.4byte	.LASF291
	.byte	0x4a
	.byte	0x9
	.4byte	0x68
	.2byte	0x160
	.uleb128 0x22
	.4byte	.LASF292
	.byte	0x4c
	.byte	0x12
	.4byte	0x74
	.2byte	0x164
	.uleb128 0x22
	.4byte	.LASF293
	.byte	0x4e
	.byte	0x1b
	.4byte	0xcf9
	.2byte	0x168
	.uleb128 0x22
	.4byte	.LASF294
	.byte	0x50
	.byte	0x13
	.4byte	0x32
	.2byte	0x178
	.uleb128 0x4a
	.string	"sig"
	.byte	0x15
	.byte	0x52
	.byte	0x16
	.4byte	0xce1
	.2byte	0x17c
	.uleb128 0x22
	.4byte	.LASF272
	.byte	0x53
	.byte	0x17
	.4byte	0x4cc
	.2byte	0x188
	.uleb128 0x22
	.4byte	.LASF273
	.byte	0x54
	.byte	0x17
	.4byte	0xa8d
	.2byte	0x189
	.uleb128 0x22
	.4byte	.LASF274
	.byte	0x55
	.byte	0xb
	.4byte	0xfa
	.2byte	0x18c
	.uleb128 0x22
	.4byte	.LASF245
	.byte	0x5a
	.byte	0x1e
	.4byte	0x10b9
	.2byte	0x190
	.byte	0
	.uleb128 0x7
	.4byte	0xf0a
	.uleb128 0x11
	.4byte	.LASF275
	.byte	0x15
	.byte	0x5c
	.byte	0x1
	.4byte	0xf0a
	.uleb128 0x10
	.4byte	0x10be
	.uleb128 0x1e
	.4byte	.LASF295
	.byte	0x10
	.byte	0x15
	.byte	0x7d
	.byte	0x10
	.4byte	0x1111
	.uleb128 0x9
	.4byte	.LASF296
	.byte	0x15
	.byte	0x7e
	.byte	0xe
	.4byte	0xc6
	.byte	0
	.uleb128 0x9
	.4byte	.LASF297
	.byte	0x15
	.byte	0x7f
	.byte	0xe
	.4byte	0xc6
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF298
	.byte	0x15
	.byte	0x82
	.byte	0xe
	.4byte	0xc6
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF299
	.byte	0x15
	.byte	0x83
	.byte	0xe
	.4byte	0xc6
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.4byte	.LASF295
	.byte	0x15
	.byte	0x85
	.byte	0x1
	.4byte	0x10cf
	.uleb128 0x10
	.4byte	0x1111
	.uleb128 0x7
	.4byte	0xadc
	.uleb128 0x32
	.byte	0x8
	.byte	0x15
	.byte	0xfa
	.4byte	0x114a
	.uleb128 0xb
	.string	"crt"
	.byte	0x15
	.byte	0xfb
	.byte	0x17
	.4byte	0x114a
	.byte	0
	.uleb128 0x9
	.4byte	.LASF200
	.byte	0x15
	.byte	0xfc
	.byte	0xe
	.4byte	0xc6
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0x10be
	.uleb128 0x11
	.4byte	.LASF300
	.byte	0x15
	.byte	0xfd
	.byte	0x3
	.4byte	0x1127
	.uleb128 0x27
	.byte	0x58
	.byte	0x15
	.2byte	0x107
	.byte	0x9
	.4byte	0x1190
	.uleb128 0x3
	.4byte	.LASF301
	.byte	0x15
	.2byte	0x108
	.byte	0x28
	.4byte	0x1190
	.byte	0
	.uleb128 0x1b
	.string	"len"
	.byte	0x15
	.2byte	0x109
	.byte	0xe
	.4byte	0x74
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF302
	.byte	0x15
	.2byte	0x110
	.byte	0x17
	.4byte	0x114a
	.byte	0x54
	.byte	0
	.uleb128 0x15
	.4byte	0x114f
	.4byte	0x11a0
	.uleb128 0x16
	.4byte	0x74
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.4byte	.LASF303
	.byte	0x15
	.2byte	0x112
	.byte	0x3
	.4byte	0x115b
	.uleb128 0x2f
	.byte	0x1
	.4byte	0x32
	.byte	0x15
	.2byte	0x126
	.byte	0xa
	.4byte	0x11c8
	.uleb128 0x4
	.4byte	.LASF304
	.byte	0
	.uleb128 0x4
	.4byte	.LASF305
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.byte	0x78
	.byte	0x15
	.2byte	0x119
	.byte	0x9
	.4byte	0x1242
	.uleb128 0x1b
	.string	"pk"
	.byte	0x15
	.2byte	0x11b
	.byte	0x1c
	.4byte	0xb15
	.byte	0
	.uleb128 0x3
	.4byte	.LASF306
	.byte	0x15
	.2byte	0x11e
	.byte	0x17
	.4byte	0x114a
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF307
	.byte	0x15
	.2byte	0x11f
	.byte	0x17
	.4byte	0x114a
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF308
	.byte	0x15
	.2byte	0x120
	.byte	0x9
	.4byte	0x68
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF309
	.byte	0x15
	.2byte	0x123
	.byte	0x9
	.4byte	0x68
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF310
	.byte	0x15
	.2byte	0x129
	.byte	0x7
	.4byte	0x11ad
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF311
	.byte	0x15
	.2byte	0x12a
	.byte	0x9
	.4byte	0x68
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF312
	.byte	0x15
	.2byte	0x12b
	.byte	0x23
	.4byte	0x11a0
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF313
	.byte	0x15
	.2byte	0x12d
	.byte	0x3
	.4byte	0x11c8
	.uleb128 0x39
	.4byte	.LASF314
	.2byte	0x144
	.4byte	0x111d
	.uleb128 0x39
	.4byte	.LASF315
	.2byte	0x150
	.4byte	0x111d
	.uleb128 0x7
	.4byte	0x10ca
	.uleb128 0x10
	.4byte	0x1265
	.uleb128 0x7
	.4byte	0x39
	.uleb128 0x10
	.4byte	0x126f
	.uleb128 0xf
	.4byte	.LASF316
	.byte	0x15
	.2byte	0x310
	.byte	0xf
	.4byte	0x1286
	.uleb128 0x7
	.4byte	0x128b
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x12a4
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x1265
	.uleb128 0x2
	.4byte	0x12a4
	.byte	0
	.uleb128 0x7
	.4byte	0x114a
	.uleb128 0x29
	.byte	0x7
	.4byte	0x32
	.byte	0x16
	.byte	0x53
	.4byte	0x12da
	.uleb128 0x4
	.4byte	.LASF317
	.byte	0
	.uleb128 0x4
	.4byte	.LASF318
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF319
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF320
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF321
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF322
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.4byte	.LASF323
	.byte	0x16
	.byte	0x5a
	.byte	0x3
	.4byte	0x12a9
	.uleb128 0x1e
	.4byte	.LASF324
	.byte	0x50
	.byte	0x16
	.byte	0x65
	.byte	0x10
	.4byte	0x1368
	.uleb128 0xb
	.string	"P"
	.byte	0x16
	.byte	0x66
	.byte	0x11
	.4byte	0x1f6
	.byte	0
	.uleb128 0xb
	.string	"G"
	.byte	0x16
	.byte	0x67
	.byte	0x11
	.4byte	0x1f6
	.byte	0x8
	.uleb128 0xb
	.string	"X"
	.byte	0x16
	.byte	0x68
	.byte	0x11
	.4byte	0x1f6
	.byte	0x10
	.uleb128 0xb
	.string	"GX"
	.byte	0x16
	.byte	0x69
	.byte	0x11
	.4byte	0x1f6
	.byte	0x18
	.uleb128 0xb
	.string	"GY"
	.byte	0x16
	.byte	0x6a
	.byte	0x11
	.4byte	0x1f6
	.byte	0x20
	.uleb128 0xb
	.string	"K"
	.byte	0x16
	.byte	0x6b
	.byte	0x11
	.4byte	0x1f6
	.byte	0x28
	.uleb128 0xb
	.string	"RP"
	.byte	0x16
	.byte	0x6c
	.byte	0x11
	.4byte	0x1f6
	.byte	0x30
	.uleb128 0xb
	.string	"Vi"
	.byte	0x16
	.byte	0x6d
	.byte	0x11
	.4byte	0x1f6
	.byte	0x38
	.uleb128 0xb
	.string	"Vf"
	.byte	0x16
	.byte	0x6e
	.byte	0x11
	.4byte	0x1f6
	.byte	0x40
	.uleb128 0xb
	.string	"pX"
	.byte	0x16
	.byte	0x6f
	.byte	0x11
	.4byte	0x1f6
	.byte	0x48
	.byte	0
	.uleb128 0x11
	.4byte	.LASF324
	.byte	0x16
	.byte	0x71
	.byte	0x1
	.4byte	0x12e6
	.uleb128 0x10
	.4byte	0x1368
	.uleb128 0x1e
	.4byte	.LASF325
	.byte	0xf0
	.byte	0x17
	.byte	0x69
	.byte	0x10
	.4byte	0x140b
	.uleb128 0xb
	.string	"grp"
	.byte	0x17
	.byte	0x6b
	.byte	0x17
	.4byte	0x3a6
	.byte	0
	.uleb128 0xb
	.string	"d"
	.byte	0x17
	.byte	0x6c
	.byte	0x11
	.4byte	0x1f6
	.byte	0x60
	.uleb128 0xb
	.string	"Q"
	.byte	0x17
	.byte	0x6d
	.byte	0x17
	.4byte	0x29e
	.byte	0x68
	.uleb128 0xb
	.string	"Qp"
	.byte	0x17
	.byte	0x6e
	.byte	0x17
	.4byte	0x29e
	.byte	0x80
	.uleb128 0xb
	.string	"z"
	.byte	0x17
	.byte	0x6f
	.byte	0x11
	.4byte	0x1f6
	.byte	0x98
	.uleb128 0x9
	.4byte	.LASF326
	.byte	0x17
	.byte	0x70
	.byte	0x9
	.4byte	0x68
	.byte	0xa0
	.uleb128 0xb
	.string	"Vi"
	.byte	0x17
	.byte	0x71
	.byte	0x17
	.4byte	0x29e
	.byte	0xa4
	.uleb128 0xb
	.string	"Vf"
	.byte	0x17
	.byte	0x72
	.byte	0x17
	.4byte	0x29e
	.byte	0xbc
	.uleb128 0xb
	.string	"_d"
	.byte	0x17
	.byte	0x73
	.byte	0x11
	.4byte	0x1f6
	.byte	0xd4
	.uleb128 0x9
	.4byte	.LASF327
	.byte	0x17
	.byte	0x75
	.byte	0x9
	.4byte	0x68
	.byte	0xdc
	.uleb128 0xb
	.string	"rs"
	.byte	0x17
	.byte	0x76
	.byte	0x1d
	.4byte	0x423
	.byte	0xe0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF325
	.byte	0x17
	.byte	0x8e
	.byte	0x1
	.4byte	0x1379
	.uleb128 0x10
	.4byte	0x140b
	.uleb128 0x15
	.4byte	0x32
	.4byte	0x142c
	.uleb128 0x16
	.4byte	0x74
	.byte	0x65
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	0x32
	.byte	0x2
	.2byte	0x2eb
	.byte	0xe
	.4byte	0x14ef
	.uleb128 0x4
	.4byte	.LASF328
	.byte	0
	.uleb128 0x4
	.4byte	.LASF329
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF330
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF331
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF332
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF334
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF335
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF336
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF337
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF338
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF339
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF340
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF341
	.byte	0xd
	.uleb128 0x4
	.4byte	.LASF342
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF343
	.byte	0xf
	.uleb128 0x4
	.4byte	.LASF344
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF345
	.byte	0x11
	.uleb128 0x4
	.4byte	.LASF346
	.byte	0x12
	.uleb128 0x4
	.4byte	.LASF347
	.byte	0x13
	.uleb128 0x4
	.4byte	.LASF348
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF349
	.byte	0x15
	.uleb128 0x4
	.4byte	.LASF350
	.byte	0x16
	.uleb128 0x4
	.4byte	.LASF351
	.byte	0x17
	.uleb128 0x4
	.4byte	.LASF352
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF353
	.byte	0x19
	.uleb128 0x4
	.4byte	.LASF354
	.byte	0x1a
	.uleb128 0x4
	.4byte	.LASF355
	.byte	0x1b
	.uleb128 0x4
	.4byte	.LASF356
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF357
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF358
	.byte	0x2
	.2byte	0x30b
	.byte	0x1
	.4byte	0x142c
	.uleb128 0xf
	.4byte	.LASF359
	.byte	0x2
	.2byte	0x32d
	.byte	0xd
	.4byte	0x1509
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x1522
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0xf
	.4byte	.LASF360
	.byte	0x2
	.2byte	0x345
	.byte	0xd
	.4byte	0x19d
	.uleb128 0xf
	.4byte	.LASF361
	.byte	0x2
	.2byte	0x35f
	.byte	0xd
	.4byte	0x153c
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x155a
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x101
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0xc6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF362
	.byte	0x2
	.2byte	0x379
	.byte	0xe
	.4byte	0x1567
	.uleb128 0x31
	.4byte	0x157c
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0xc6
	.uleb128 0x2
	.4byte	0xc6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF363
	.byte	0x2
	.2byte	0x388
	.byte	0xd
	.4byte	0x1589
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x1598
	.uleb128 0x2
	.4byte	0xfa
	.byte	0
	.uleb128 0xf
	.4byte	.LASF364
	.byte	0x2
	.2byte	0x38b
	.byte	0x24
	.4byte	0x15aa
	.uleb128 0x10
	.4byte	0x1598
	.uleb128 0x2a
	.4byte	.LASF364
	.byte	0x78
	.byte	0x2
	.2byte	0x4fb
	.byte	0x8
	.4byte	0x167c
	.uleb128 0x3
	.4byte	.LASF365
	.byte	0x2
	.2byte	0x4fd
	.byte	0x13
	.4byte	0x32
	.byte	0
	.uleb128 0x3
	.4byte	.LASF366
	.byte	0x2
	.2byte	0x505
	.byte	0x13
	.4byte	0x32
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF367
	.byte	0x2
	.2byte	0x506
	.byte	0xd
	.4byte	0xa4
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF368
	.byte	0x2
	.2byte	0x50b
	.byte	0x22
	.4byte	0x255e
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF369
	.byte	0x2
	.2byte	0x510
	.byte	0x9
	.4byte	0x68
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF370
	.byte	0x2
	.2byte	0x511
	.byte	0xc
	.4byte	0x80
	.byte	0xc
	.uleb128 0x1b
	.string	"id"
	.byte	0x2
	.2byte	0x512
	.byte	0x13
	.4byte	0x256b
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF371
	.byte	0x2
	.2byte	0x513
	.byte	0x13
	.4byte	0x257b
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF372
	.byte	0x2
	.2byte	0x517
	.byte	0x17
	.4byte	0x114a
	.byte	0x60
	.uleb128 0x3
	.4byte	.LASF373
	.byte	0x2
	.2byte	0x520
	.byte	0xe
	.4byte	0xc6
	.byte	0x64
	.uleb128 0x3
	.4byte	.LASF374
	.byte	0x2
	.2byte	0x523
	.byte	0x14
	.4byte	0x101
	.byte	0x68
	.uleb128 0x3
	.4byte	.LASF375
	.byte	0x2
	.2byte	0x524
	.byte	0xc
	.4byte	0x80
	.byte	0x6c
	.uleb128 0x3
	.4byte	.LASF376
	.byte	0x2
	.2byte	0x525
	.byte	0xe
	.4byte	0xc6
	.byte	0x70
	.uleb128 0x3
	.4byte	.LASF377
	.byte	0x2
	.2byte	0x557
	.byte	0x9
	.4byte	0x68
	.byte	0x74
	.byte	0
	.uleb128 0xf
	.4byte	.LASF378
	.byte	0x2
	.2byte	0x38c
	.byte	0x24
	.4byte	0x168e
	.uleb128 0x10
	.4byte	0x167c
	.uleb128 0x34
	.4byte	.LASF378
	.2byte	0x260
	.byte	0x2
	.2byte	0x6c3
	.byte	0x8
	.4byte	0x1ac5
	.uleb128 0x3
	.4byte	.LASF379
	.byte	0x2
	.2byte	0x6c4
	.byte	0x1f
	.4byte	0x27d9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF190
	.byte	0x2
	.2byte	0x6c9
	.byte	0x9
	.4byte	0x68
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF380
	.byte	0x2
	.2byte	0x6cb
	.byte	0x9
	.4byte	0x68
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF381
	.byte	0x2
	.2byte	0x6cc
	.byte	0x9
	.4byte	0x68
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF368
	.byte	0x2
	.2byte	0x6e1
	.byte	0x22
	.4byte	0x255e
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF382
	.byte	0x2
	.2byte	0x6f4
	.byte	0xe
	.4byte	0x74
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF383
	.byte	0x2
	.2byte	0x6f8
	.byte	0xa
	.4byte	0x26ed
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF384
	.byte	0x2
	.2byte	0x6f9
	.byte	0xb
	.4byte	0xfa
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF385
	.byte	0x2
	.2byte	0x6fc
	.byte	0x19
	.4byte	0x27de
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF386
	.byte	0x2
	.2byte	0x6fd
	.byte	0x19
	.4byte	0x27e3
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF387
	.byte	0x2
	.2byte	0x6fe
	.byte	0x21
	.4byte	0x27e8
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF388
	.byte	0x2
	.2byte	0x701
	.byte	0xb
	.4byte	0xfa
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF389
	.byte	0x2
	.2byte	0x706
	.byte	0x1a
	.4byte	0x23fa
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF390
	.byte	0x2
	.2byte	0x707
	.byte	0x1a
	.4byte	0x23fa
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF391
	.byte	0x2
	.2byte	0x708
	.byte	0x1a
	.4byte	0x23fa
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF392
	.byte	0x2
	.2byte	0x709
	.byte	0x1a
	.4byte	0x23fa
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF393
	.byte	0x2
	.2byte	0x70b
	.byte	0x23
	.4byte	0x27ed
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF394
	.byte	0x2
	.2byte	0x711
	.byte	0x1c
	.4byte	0x27f2
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF395
	.byte	0x2
	.2byte	0x714
	.byte	0x1c
	.4byte	0x27f2
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF396
	.byte	0x2
	.2byte	0x717
	.byte	0x1c
	.4byte	0x27f2
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF397
	.byte	0x2
	.2byte	0x71b
	.byte	0x1c
	.4byte	0x27f2
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF398
	.byte	0x2
	.2byte	0x729
	.byte	0xb
	.4byte	0xfa
	.byte	0x54
	.uleb128 0x3
	.4byte	.LASF399
	.byte	0x2
	.2byte	0x72b
	.byte	0x1e
	.4byte	0x27f7
	.byte	0x58
	.uleb128 0x3
	.4byte	.LASF400
	.byte	0x2
	.2byte	0x72c
	.byte	0x1e
	.4byte	0x27fc
	.byte	0x5c
	.uleb128 0x3
	.4byte	.LASF401
	.byte	0x2
	.2byte	0x731
	.byte	0x14
	.4byte	0x101
	.byte	0x60
	.uleb128 0x3
	.4byte	.LASF402
	.byte	0x2
	.2byte	0x732
	.byte	0x14
	.4byte	0x101
	.byte	0x64
	.uleb128 0x3
	.4byte	.LASF403
	.byte	0x2
	.2byte	0x735
	.byte	0x14
	.4byte	0x101
	.byte	0x68
	.uleb128 0x3
	.4byte	.LASF404
	.byte	0x2
	.2byte	0x737
	.byte	0x14
	.4byte	0x101
	.byte	0x6c
	.uleb128 0x3
	.4byte	.LASF405
	.byte	0x2
	.2byte	0x73a
	.byte	0x14
	.4byte	0x101
	.byte	0x70
	.uleb128 0x3
	.4byte	.LASF406
	.byte	0x2
	.2byte	0x73b
	.byte	0x14
	.4byte	0x101
	.byte	0x74
	.uleb128 0x3
	.4byte	.LASF407
	.byte	0x2
	.2byte	0x73c
	.byte	0x14
	.4byte	0x101
	.byte	0x78
	.uleb128 0x3
	.4byte	.LASF408
	.byte	0x2
	.2byte	0x73d
	.byte	0x14
	.4byte	0x101
	.byte	0x7c
	.uleb128 0x3
	.4byte	.LASF409
	.byte	0x2
	.2byte	0x73f
	.byte	0x9
	.4byte	0x68
	.byte	0x80
	.uleb128 0x3
	.4byte	.LASF410
	.byte	0x2
	.2byte	0x740
	.byte	0xc
	.4byte	0x80
	.byte	0x84
	.uleb128 0x3
	.4byte	.LASF411
	.byte	0x2
	.2byte	0x741
	.byte	0xc
	.4byte	0x80
	.byte	0x88
	.uleb128 0x3
	.4byte	.LASF412
	.byte	0x2
	.2byte	0x743
	.byte	0xc
	.4byte	0x80
	.byte	0x8c
	.uleb128 0x3
	.4byte	.LASF413
	.byte	0x2
	.2byte	0x746
	.byte	0xe
	.4byte	0xb5
	.byte	0x90
	.uleb128 0x3
	.4byte	.LASF414
	.byte	0x2
	.2byte	0x747
	.byte	0xc
	.4byte	0x80
	.byte	0x94
	.uleb128 0x3
	.4byte	.LASF415
	.byte	0x2
	.2byte	0x74b
	.byte	0xe
	.4byte	0xd2
	.byte	0x98
	.uleb128 0x3
	.4byte	.LASF416
	.byte	0x2
	.2byte	0x74c
	.byte	0xe
	.4byte	0xd2
	.byte	0xa0
	.uleb128 0x3
	.4byte	.LASF417
	.byte	0x2
	.2byte	0x74f
	.byte	0xc
	.4byte	0x80
	.byte	0xa8
	.uleb128 0x3
	.4byte	.LASF418
	.byte	0x2
	.2byte	0x751
	.byte	0x9
	.4byte	0x68
	.byte	0xac
	.uleb128 0x3
	.4byte	.LASF419
	.byte	0x2
	.2byte	0x753
	.byte	0x9
	.4byte	0x68
	.byte	0xb0
	.uleb128 0x3
	.4byte	.LASF420
	.byte	0x2
	.2byte	0x759
	.byte	0x13
	.4byte	0x32
	.byte	0xb4
	.uleb128 0x3
	.4byte	.LASF421
	.byte	0x2
	.2byte	0x75d
	.byte	0x13
	.4byte	0x32
	.byte	0xb5
	.uleb128 0x3
	.4byte	.LASF422
	.byte	0x2
	.2byte	0x75f
	.byte	0x9
	.4byte	0x68
	.byte	0xb8
	.uleb128 0x3
	.4byte	.LASF423
	.byte	0x2
	.2byte	0x764
	.byte	0xd
	.4byte	0xa4
	.byte	0xbc
	.uleb128 0x3
	.4byte	.LASF424
	.byte	0x2
	.2byte	0x778
	.byte	0x14
	.4byte	0x101
	.byte	0xc0
	.uleb128 0x3
	.4byte	.LASF425
	.byte	0x2
	.2byte	0x779
	.byte	0x14
	.4byte	0x101
	.byte	0xc4
	.uleb128 0x3
	.4byte	.LASF426
	.byte	0x2
	.2byte	0x77a
	.byte	0x14
	.4byte	0x101
	.byte	0xc8
	.uleb128 0x3
	.4byte	.LASF427
	.byte	0x2
	.2byte	0x77c
	.byte	0x14
	.4byte	0x101
	.byte	0xcc
	.uleb128 0x3
	.4byte	.LASF428
	.byte	0x2
	.2byte	0x77f
	.byte	0x14
	.4byte	0x101
	.byte	0xd0
	.uleb128 0x3
	.4byte	.LASF429
	.byte	0x2
	.2byte	0x780
	.byte	0x14
	.4byte	0x101
	.byte	0xd4
	.uleb128 0x3
	.4byte	.LASF430
	.byte	0x2
	.2byte	0x781
	.byte	0x14
	.4byte	0x101
	.byte	0xd8
	.uleb128 0x3
	.4byte	.LASF431
	.byte	0x2
	.2byte	0x783
	.byte	0x9
	.4byte	0x68
	.byte	0xdc
	.uleb128 0x3
	.4byte	.LASF432
	.byte	0x2
	.2byte	0x784
	.byte	0xc
	.4byte	0x80
	.byte	0xe0
	.uleb128 0x3
	.4byte	.LASF433
	.byte	0x2
	.2byte	0x785
	.byte	0xc
	.4byte	0x80
	.byte	0xe4
	.uleb128 0x3
	.4byte	.LASF434
	.byte	0x2
	.2byte	0x787
	.byte	0xc
	.4byte	0x80
	.byte	0xe8
	.uleb128 0x3
	.4byte	.LASF435
	.byte	0x2
	.2byte	0x78a
	.byte	0x13
	.4byte	0x27c9
	.byte	0xec
	.uleb128 0x1b
	.string	"mtu"
	.byte	0x2
	.2byte	0x78d
	.byte	0xe
	.4byte	0xb5
	.byte	0xf4
	.uleb128 0x3
	.4byte	.LASF436
	.byte	0x2
	.2byte	0x7b0
	.byte	0xb
	.4byte	0x106
	.byte	0xf8
	.uleb128 0x3
	.4byte	.LASF437
	.byte	0x2
	.2byte	0x7b4
	.byte	0x11
	.4byte	0x117
	.byte	0xfc
	.uleb128 0xd
	.4byte	.LASF438
	.byte	0x2
	.2byte	0x7bb
	.byte	0x1c
	.4byte	0x252e
	.2byte	0x100
	.uleb128 0xd
	.4byte	.LASF439
	.byte	0x2
	.2byte	0x7c2
	.byte	0x14
	.4byte	0x101
	.2byte	0x204
	.uleb128 0xd
	.4byte	.LASF440
	.byte	0x2
	.2byte	0x7c3
	.byte	0xc
	.4byte	0x80
	.2byte	0x208
	.uleb128 0xd
	.4byte	.LASF441
	.byte	0x2
	.2byte	0x7ca
	.byte	0x9
	.4byte	0x68
	.2byte	0x20c
	.uleb128 0xd
	.4byte	.LASF442
	.byte	0x2
	.2byte	0x7cd
	.byte	0xc
	.4byte	0x80
	.2byte	0x210
	.uleb128 0xd
	.4byte	.LASF443
	.byte	0x2
	.2byte	0x7ce
	.byte	0xa
	.4byte	0x2801
	.2byte	0x214
	.uleb128 0xd
	.4byte	.LASF444
	.byte	0x2
	.2byte	0x7cf
	.byte	0xa
	.4byte	0x2801
	.2byte	0x220
	.uleb128 0xd
	.4byte	.LASF445
	.byte	0x2
	.2byte	0x7d9
	.byte	0x13
	.4byte	0x256b
	.2byte	0x22c
	.uleb128 0xd
	.4byte	.LASF446
	.byte	0x2
	.2byte	0x7da
	.byte	0xd
	.4byte	0xa4
	.2byte	0x24c
	.uleb128 0xd
	.4byte	.LASF447
	.byte	0x2
	.2byte	0x7db
	.byte	0xd
	.4byte	0xa4
	.2byte	0x24d
	.uleb128 0xd
	.4byte	.LASF448
	.byte	0x2
	.2byte	0x7e2
	.byte	0x20
	.4byte	0x2811
	.2byte	0x250
	.uleb128 0xd
	.4byte	.LASF449
	.byte	0x2
	.2byte	0x7e3
	.byte	0xb
	.4byte	0xfa
	.2byte	0x254
	.uleb128 0xd
	.4byte	.LASF450
	.byte	0x2
	.2byte	0x7ee
	.byte	0x1d
	.4byte	0x2662
	.2byte	0x258
	.byte	0
	.uleb128 0xf
	.4byte	.LASF451
	.byte	0x2
	.2byte	0x38d
	.byte	0x23
	.4byte	0x1ad7
	.uleb128 0x10
	.4byte	0x1ac5
	.uleb128 0x2a
	.4byte	.LASF451
	.byte	0xf4
	.byte	0x2
	.2byte	0x5af
	.byte	0x8
	.4byte	0x1eac
	.uleb128 0x3
	.4byte	.LASF242
	.byte	0x2
	.2byte	0x5b5
	.byte	0x22
	.4byte	0x255e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF241
	.byte	0x2
	.2byte	0x5b6
	.byte	0x22
	.4byte	0x255e
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF367
	.byte	0x2
	.2byte	0x5be
	.byte	0xd
	.4byte	0xa4
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF452
	.byte	0x2
	.2byte	0x5bf
	.byte	0xd
	.4byte	0xa4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF453
	.byte	0x2
	.2byte	0x5c0
	.byte	0xd
	.4byte	0xa4
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF454
	.byte	0x2
	.2byte	0x5c2
	.byte	0xd
	.4byte	0xa4
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF365
	.byte	0x2
	.2byte	0x5c4
	.byte	0xd
	.4byte	0xa4
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF377
	.byte	0x2
	.2byte	0x5c8
	.byte	0xd
	.4byte	0xa4
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF455
	.byte	0x2
	.2byte	0x5cb
	.byte	0xd
	.4byte	0xa4
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF456
	.byte	0x2
	.2byte	0x5ce
	.byte	0xd
	.4byte	0xa4
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF457
	.byte	0x2
	.2byte	0x5d1
	.byte	0xd
	.4byte	0xa4
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF458
	.byte	0x2
	.2byte	0x5db
	.byte	0xd
	.4byte	0xa4
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF459
	.byte	0x2
	.2byte	0x5e5
	.byte	0xd
	.4byte	0xa4
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF460
	.byte	0x2
	.2byte	0x5e7
	.byte	0xd
	.4byte	0xa4
	.byte	0xf
	.uleb128 0x3
	.4byte	.LASF461
	.byte	0x2
	.2byte	0x5ec
	.byte	0xd
	.4byte	0xa4
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF462
	.byte	0x2
	.2byte	0x5f1
	.byte	0xd
	.4byte	0xa4
	.byte	0x11
	.uleb128 0x3
	.4byte	.LASF463
	.byte	0x2
	.2byte	0x5fa
	.byte	0x10
	.4byte	0x266f
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF464
	.byte	0x2
	.2byte	0x602
	.byte	0xb
	.4byte	0x2693
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF465
	.byte	0x2
	.2byte	0x603
	.byte	0xb
	.4byte	0xfa
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF466
	.byte	0x2
	.2byte	0x606
	.byte	0xa
	.4byte	0x2698
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF467
	.byte	0x2
	.2byte	0x607
	.byte	0xb
	.4byte	0xfa
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF468
	.byte	0x2
	.2byte	0x60a
	.byte	0x1e
	.4byte	0x269d
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF469
	.byte	0x2
	.2byte	0x60c
	.byte	0x1e
	.4byte	0x26a2
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF470
	.byte	0x2
	.2byte	0x60d
	.byte	0xb
	.4byte	0xfa
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF471
	.byte	0x2
	.2byte	0x611
	.byte	0xa
	.4byte	0x26c5
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF472
	.byte	0x2
	.2byte	0x612
	.byte	0xb
	.4byte	0xfa
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF383
	.byte	0x2
	.2byte	0x617
	.byte	0xa
	.4byte	0x26ed
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF384
	.byte	0x2
	.2byte	0x618
	.byte	0xb
	.4byte	0xfa
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF473
	.byte	0x2
	.2byte	0x61e
	.byte	0xa
	.4byte	0x26c5
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF474
	.byte	0x2
	.2byte	0x61f
	.byte	0xb
	.4byte	0xfa
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF475
	.byte	0x2
	.2byte	0x625
	.byte	0xa
	.4byte	0x271a
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF476
	.byte	0x2
	.2byte	0x628
	.byte	0xa
	.4byte	0x2742
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF477
	.byte	0x2
	.2byte	0x62a
	.byte	0xb
	.4byte	0xfa
	.byte	0x54
	.uleb128 0x3
	.4byte	.LASF478
	.byte	0x2
	.2byte	0x62f
	.byte	0xa
	.4byte	0x276f
	.byte	0x58
	.uleb128 0x3
	.4byte	.LASF479
	.byte	0x2
	.2byte	0x633
	.byte	0xa
	.4byte	0x2792
	.byte	0x5c
	.uleb128 0x3
	.4byte	.LASF480
	.byte	0x2
	.2byte	0x634
	.byte	0xb
	.4byte	0xfa
	.byte	0x60
	.uleb128 0x3
	.4byte	.LASF481
	.byte	0x2
	.2byte	0x637
	.byte	0xc
	.4byte	0x80
	.byte	0x64
	.uleb128 0x3
	.4byte	.LASF482
	.byte	0x2
	.2byte	0x63b
	.byte	0x25
	.4byte	0x2797
	.byte	0x68
	.uleb128 0x3
	.4byte	.LASF483
	.byte	0x2
	.2byte	0x63c
	.byte	0x1b
	.4byte	0x279c
	.byte	0x6c
	.uleb128 0x3
	.4byte	.LASF484
	.byte	0x2
	.2byte	0x63d
	.byte	0x17
	.4byte	0x114a
	.byte	0x70
	.uleb128 0x3
	.4byte	.LASF485
	.byte	0x2
	.2byte	0x63e
	.byte	0x17
	.4byte	0x27a1
	.byte	0x74
	.uleb128 0x3
	.4byte	.LASF486
	.byte	0x2
	.2byte	0x640
	.byte	0x1e
	.4byte	0x1279
	.byte	0x78
	.uleb128 0x3
	.4byte	.LASF487
	.byte	0x2
	.2byte	0x641
	.byte	0xb
	.4byte	0xfa
	.byte	0x7c
	.uleb128 0x3
	.4byte	.LASF488
	.byte	0x2
	.2byte	0x647
	.byte	0x1f
	.4byte	0x27a6
	.byte	0x80
	.uleb128 0x3
	.4byte	.LASF489
	.byte	0x2
	.2byte	0x648
	.byte	0x22
	.4byte	0x27ab
	.byte	0x84
	.uleb128 0x3
	.4byte	.LASF490
	.byte	0x2
	.2byte	0x64a
	.byte	0x21
	.4byte	0x27b0
	.byte	0x88
	.uleb128 0x3
	.4byte	.LASF491
	.byte	0x2
	.2byte	0x64b
	.byte	0x21
	.4byte	0x27b5
	.byte	0x8c
	.uleb128 0x3
	.4byte	.LASF492
	.byte	0x2
	.2byte	0x64c
	.byte	0xb
	.4byte	0xfa
	.byte	0x90
	.uleb128 0x3
	.4byte	.LASF493
	.byte	0x2
	.2byte	0x654
	.byte	0x15
	.4byte	0x27ba
	.byte	0x94
	.uleb128 0x3
	.4byte	.LASF494
	.byte	0x2
	.2byte	0x65b
	.byte	0x15
	.4byte	0x27ba
	.byte	0x98
	.uleb128 0x3
	.4byte	.LASF495
	.byte	0x2
	.2byte	0x65e
	.byte	0x11
	.4byte	0x1f6
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF496
	.byte	0x2
	.2byte	0x65f
	.byte	0x11
	.4byte	0x1f6
	.byte	0xa4
	.uleb128 0x1b
	.string	"psk"
	.byte	0x2
	.2byte	0x66c
	.byte	0x14
	.4byte	0x101
	.byte	0xac
	.uleb128 0x3
	.4byte	.LASF497
	.byte	0x2
	.2byte	0x670
	.byte	0xc
	.4byte	0x80
	.byte	0xb0
	.uleb128 0x3
	.4byte	.LASF498
	.byte	0x2
	.2byte	0x676
	.byte	0x14
	.4byte	0x101
	.byte	0xb4
	.uleb128 0x3
	.4byte	.LASF499
	.byte	0x2
	.2byte	0x67b
	.byte	0xc
	.4byte	0x80
	.byte	0xb8
	.uleb128 0x3
	.4byte	.LASF500
	.byte	0x2
	.2byte	0x690
	.byte	0x12
	.4byte	0x27bf
	.byte	0xbc
	.uleb128 0x3
	.4byte	.LASF501
	.byte	0x2
	.2byte	0x695
	.byte	0x25
	.4byte	0x27c4
	.byte	0xc0
	.uleb128 0x3
	.4byte	.LASF502
	.byte	0x2
	.2byte	0x697
	.byte	0xc
	.4byte	0x80
	.byte	0xc4
	.uleb128 0x3
	.4byte	.LASF503
	.byte	0x2
	.2byte	0x69e
	.byte	0xe
	.4byte	0xc6
	.byte	0xc8
	.uleb128 0x3
	.4byte	.LASF504
	.byte	0x2
	.2byte	0x6a1
	.byte	0xe
	.4byte	0xc6
	.byte	0xcc
	.uleb128 0x3
	.4byte	.LASF505
	.byte	0x2
	.2byte	0x6a3
	.byte	0xe
	.4byte	0xc6
	.byte	0xd0
	.uleb128 0x3
	.4byte	.LASF506
	.byte	0x2
	.2byte	0x6a8
	.byte	0x9
	.4byte	0x68
	.byte	0xd4
	.uleb128 0x3
	.4byte	.LASF507
	.byte	0x2
	.2byte	0x6a9
	.byte	0x13
	.4byte	0x27c9
	.byte	0xd8
	.uleb128 0x3
	.4byte	.LASF508
	.byte	0x2
	.2byte	0x6ad
	.byte	0x12
	.4byte	0x74
	.byte	0xe0
	.uleb128 0x3
	.4byte	.LASF509
	.byte	0x2
	.2byte	0x6b0
	.byte	0x12
	.4byte	0x74
	.byte	0xe4
	.uleb128 0x3
	.4byte	.LASF450
	.byte	0x2
	.2byte	0x6b8
	.byte	0x1d
	.4byte	0x2662
	.byte	0xe8
	.uleb128 0x3
	.4byte	.LASF510
	.byte	0x2
	.2byte	0x6bb
	.byte	0x19
	.4byte	0x2622
	.byte	0xec
	.uleb128 0x3
	.4byte	.LASF511
	.byte	0x2
	.2byte	0x6bf
	.byte	0x1d
	.4byte	0x1265
	.byte	0xf0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF512
	.byte	0x2
	.2byte	0x390
	.byte	0x26
	.4byte	0x1ebe
	.uleb128 0x10
	.4byte	0x1eac
	.uleb128 0x34
	.4byte	.LASF512
	.2byte	0x160
	.byte	0x5
	.2byte	0x461
	.byte	0x8
	.4byte	0x1fcb
	.uleb128 0x3
	.4byte	.LASF513
	.byte	0x5
	.2byte	0x465
	.byte	0xc
	.4byte	0x80
	.byte	0
	.uleb128 0x3
	.4byte	.LASF514
	.byte	0x5
	.2byte	0x466
	.byte	0xc
	.4byte	0x80
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF515
	.byte	0x5
	.2byte	0x467
	.byte	0xc
	.4byte	0x80
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF516
	.byte	0x5
	.2byte	0x468
	.byte	0xc
	.4byte	0x80
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF517
	.byte	0x5
	.2byte	0x469
	.byte	0xc
	.4byte	0x80
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF518
	.byte	0x5
	.2byte	0x46b
	.byte	0x13
	.4byte	0xa24
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF519
	.byte	0x5
	.2byte	0x46c
	.byte	0x13
	.4byte	0xa24
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF520
	.byte	0x5
	.2byte	0x475
	.byte	0x1a
	.4byte	0x52d
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF521
	.byte	0x5
	.2byte	0x476
	.byte	0x1a
	.4byte	0x52d
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF377
	.byte	0x5
	.2byte	0x47a
	.byte	0x9
	.4byte	0x68
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF368
	.byte	0x5
	.2byte	0x47f
	.byte	0x22
	.4byte	0x255e
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF522
	.byte	0x5
	.2byte	0x486
	.byte	0x1e
	.4byte	0xa39
	.byte	0x54
	.uleb128 0x3
	.4byte	.LASF523
	.byte	0x5
	.2byte	0x487
	.byte	0x1e
	.4byte	0xa39
	.byte	0x98
	.uleb128 0x3
	.4byte	.LASF524
	.byte	0x5
	.2byte	0x48b
	.byte	0xd
	.4byte	0xa4
	.byte	0xdc
	.uleb128 0x3
	.4byte	.LASF525
	.byte	0x5
	.2byte	0x48c
	.byte	0xd
	.4byte	0xa4
	.byte	0xdd
	.uleb128 0x3
	.4byte	.LASF404
	.byte	0x5
	.2byte	0x48d
	.byte	0x13
	.4byte	0x256b
	.byte	0xde
	.uleb128 0x3
	.4byte	.LASF427
	.byte	0x5
	.2byte	0x48e
	.byte	0x13
	.4byte	0x256b
	.byte	0xfe
	.uleb128 0xd
	.4byte	.LASF526
	.byte	0x5
	.2byte	0x496
	.byte	0x13
	.4byte	0x562
	.2byte	0x11e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF527
	.byte	0x2
	.2byte	0x391
	.byte	0x2d
	.4byte	0x1fd8
	.uleb128 0x34
	.4byte	.LASF527
	.2byte	0x3e4
	.byte	0x5
	.2byte	0x285
	.byte	0x8
	.4byte	0x2337
	.uleb128 0x3
	.4byte	.LASF528
	.byte	0x5
	.2byte	0x288
	.byte	0xd
	.4byte	0xa4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF529
	.byte	0x5
	.2byte	0x289
	.byte	0xd
	.4byte	0xa4
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF530
	.byte	0x5
	.2byte	0x28c
	.byte	0xd
	.4byte	0xa4
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF531
	.byte	0x5
	.2byte	0x292
	.byte	0xd
	.4byte	0xa4
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF532
	.byte	0x5
	.2byte	0x29a
	.byte	0xd
	.4byte	0xa4
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF241
	.byte	0x5
	.2byte	0x2b0
	.byte	0x22
	.4byte	0x255e
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF455
	.byte	0x5
	.2byte	0x2b4
	.byte	0xd
	.4byte	0xa4
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF533
	.byte	0x5
	.2byte	0x2b8
	.byte	0xd
	.4byte	0xa4
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF534
	.byte	0x5
	.2byte	0x2bc
	.byte	0x13
	.4byte	0x32
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF535
	.byte	0x5
	.2byte	0x2c5
	.byte	0xd
	.4byte	0xa4
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF536
	.byte	0x5
	.2byte	0x2cc
	.byte	0x7
	.4byte	0x2895
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF537
	.byte	0x5
	.2byte	0x2cd
	.byte	0x17
	.4byte	0x114a
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF538
	.byte	0x5
	.2byte	0x2ce
	.byte	0xc
	.4byte	0x80
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF539
	.byte	0x5
	.2byte	0x2d1
	.byte	0x26
	.4byte	0x2a2c
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF540
	.byte	0x5
	.2byte	0x2d4
	.byte	0xb
	.4byte	0x2a4f
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF541
	.byte	0x5
	.2byte	0x2d6
	.byte	0xb
	.4byte	0x2a72
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF542
	.byte	0x5
	.2byte	0x2d8
	.byte	0xb
	.4byte	0x2a90
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF543
	.byte	0x5
	.2byte	0x2d9
	.byte	0x1d
	.4byte	0x2a95
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF544
	.byte	0x5
	.2byte	0x300
	.byte	0xe
	.4byte	0x2a9a
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF545
	.byte	0x5
	.2byte	0x309
	.byte	0x19
	.4byte	0x1368
	.byte	0x54
	.uleb128 0x3
	.4byte	.LASF546
	.byte	0x5
	.2byte	0x30e
	.byte	0x1a
	.4byte	0x140b
	.byte	0xa4
	.uleb128 0xd
	.4byte	.LASF547
	.byte	0x5
	.2byte	0x32c
	.byte	0xf
	.4byte	0x2aaa
	.2byte	0x194
	.uleb128 0x3a
	.string	"psk"
	.2byte	0x334
	.byte	0x14
	.4byte	0x101
	.2byte	0x198
	.uleb128 0xd
	.4byte	.LASF497
	.byte	0x5
	.2byte	0x335
	.byte	0xc
	.4byte	0x80
	.2byte	0x19c
	.uleb128 0xd
	.4byte	.LASF548
	.byte	0x5
	.2byte	0x337
	.byte	0xe
	.4byte	0xb5
	.2byte	0x1a0
	.uleb128 0xd
	.4byte	.LASF549
	.byte	0x5
	.2byte	0x33b
	.byte	0x22
	.4byte	0x1242
	.2byte	0x1a4
	.uleb128 0xd
	.4byte	.LASF483
	.byte	0x5
	.2byte	0x33f
	.byte	0x1b
	.4byte	0x279c
	.2byte	0x21c
	.uleb128 0xd
	.4byte	.LASF550
	.byte	0x5
	.2byte	0x341
	.byte	0x1b
	.4byte	0x279c
	.2byte	0x220
	.uleb128 0xd
	.4byte	.LASF551
	.byte	0x5
	.2byte	0x342
	.byte	0x17
	.4byte	0x114a
	.2byte	0x224
	.uleb128 0xd
	.4byte	.LASF552
	.byte	0x5
	.2byte	0x343
	.byte	0x17
	.4byte	0x27a1
	.2byte	0x228
	.uleb128 0xd
	.4byte	.LASF553
	.byte	0x5
	.2byte	0x361
	.byte	0x7
	.4byte	0x294f
	.2byte	0x22c
	.uleb128 0xd
	.4byte	.LASF554
	.byte	0x5
	.2byte	0x366
	.byte	0x14
	.4byte	0x101
	.2byte	0x270
	.uleb128 0xd
	.4byte	.LASF555
	.byte	0x5
	.2byte	0x36e
	.byte	0xd
	.4byte	0xa4
	.2byte	0x274
	.uleb128 0xd
	.4byte	.LASF556
	.byte	0x5
	.2byte	0x37d
	.byte	0x13
	.4byte	0x32
	.2byte	0x275
	.uleb128 0xd
	.4byte	.LASF557
	.byte	0x5
	.2byte	0x381
	.byte	0x12
	.4byte	0x74
	.2byte	0x278
	.uleb128 0xd
	.4byte	.LASF558
	.byte	0x5
	.2byte	0x382
	.byte	0x12
	.4byte	0x74
	.2byte	0x27c
	.uleb128 0xd
	.4byte	.LASF559
	.byte	0x5
	.2byte	0x384
	.byte	0xe
	.4byte	0xc6
	.2byte	0x280
	.uleb128 0xd
	.4byte	.LASF560
	.byte	0x5
	.2byte	0x385
	.byte	0x1e
	.4byte	0x2aaf
	.2byte	0x284
	.uleb128 0xd
	.4byte	.LASF561
	.byte	0x5
	.2byte	0x386
	.byte	0x1e
	.4byte	0x2aaf
	.2byte	0x288
	.uleb128 0xd
	.4byte	.LASF562
	.byte	0x5
	.2byte	0x387
	.byte	0x14
	.4byte	0x101
	.2byte	0x28c
	.uleb128 0xd
	.4byte	.LASF563
	.byte	0x5
	.2byte	0x388
	.byte	0x12
	.4byte	0x74
	.2byte	0x290
	.uleb128 0xd
	.4byte	.LASF564
	.byte	0x5
	.2byte	0x38a
	.byte	0x1c
	.4byte	0x27f2
	.2byte	0x294
	.uleb128 0xd
	.4byte	.LASF565
	.byte	0x5
	.2byte	0x38c
	.byte	0x13
	.4byte	0x27c9
	.2byte	0x298
	.uleb128 0xd
	.4byte	.LASF566
	.byte	0x5
	.2byte	0x392
	.byte	0xd
	.4byte	0xa4
	.2byte	0x2a0
	.uleb128 0xd
	.4byte	.LASF567
	.byte	0x5
	.2byte	0x396
	.byte	0x13
	.4byte	0x256b
	.2byte	0x2a1
	.uleb128 0xd
	.4byte	.LASF568
	.byte	0x5
	.2byte	0x397
	.byte	0xd
	.4byte	0xa4
	.2byte	0x2c1
	.uleb128 0x3a
	.string	"mtu"
	.2byte	0x39b
	.byte	0xe
	.4byte	0xb5
	.2byte	0x2c2
	.uleb128 0xd
	.4byte	.LASF569
	.byte	0x5
	.2byte	0x3a5
	.byte	0x1a
	.4byte	0x52d
	.2byte	0x2c4
	.uleb128 0xd
	.4byte	.LASF570
	.byte	0x5
	.2byte	0x3ac
	.byte	0x1a
	.4byte	0x52d
	.2byte	0x2d0
	.uleb128 0xd
	.4byte	.LASF571
	.byte	0x5
	.2byte	0x3bb
	.byte	0xd
	.4byte	0xa4
	.2byte	0x2dc
	.uleb128 0xd
	.4byte	.LASF572
	.byte	0x5
	.2byte	0x3d9
	.byte	0x7
	.4byte	0x2a0b
	.2byte	0x2e0
	.uleb128 0xd
	.4byte	.LASF526
	.byte	0x5
	.2byte	0x3dd
	.byte	0x13
	.4byte	0x562
	.2byte	0x328
	.uleb128 0xd
	.4byte	.LASF573
	.byte	0x5
	.2byte	0x3e1
	.byte	0x13
	.4byte	0x141c
	.2byte	0x368
	.uleb128 0xd
	.4byte	.LASF574
	.byte	0x5
	.2byte	0x3e3
	.byte	0xc
	.4byte	0x80
	.2byte	0x3d0
	.uleb128 0xd
	.4byte	.LASF575
	.byte	0x5
	.2byte	0x404
	.byte	0xb
	.4byte	0xfa
	.2byte	0x3d4
	.uleb128 0xd
	.4byte	.LASF576
	.byte	0x5
	.2byte	0x408
	.byte	0x1a
	.4byte	0x126f
	.2byte	0x3d8
	.uleb128 0xd
	.4byte	.LASF577
	.byte	0x5
	.2byte	0x409
	.byte	0xc
	.4byte	0x80
	.2byte	0x3dc
	.uleb128 0xd
	.4byte	.LASF511
	.byte	0x5
	.2byte	0x40b
	.byte	0x1d
	.4byte	0x1265
	.2byte	0x3e0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF578
	.byte	0x2
	.2byte	0x394
	.byte	0x25
	.4byte	0x2344
	.uleb128 0x2a
	.4byte	.LASF578
	.byte	0xc
	.byte	0x5
	.2byte	0x4e4
	.byte	0x8
	.4byte	0x237d
	.uleb128 0x3
	.4byte	.LASF579
	.byte	0x5
	.2byte	0x4e5
	.byte	0x17
	.4byte	0x114a
	.byte	0
	.uleb128 0x1b
	.string	"key"
	.byte	0x5
	.2byte	0x4e6
	.byte	0x19
	.4byte	0x1122
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF245
	.byte	0x5
	.2byte	0x4e7
	.byte	0x1b
	.4byte	0x279c
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	.LASF580
	.byte	0x2
	.2byte	0x397
	.byte	0x28
	.4byte	0x238a
	.uleb128 0x2a
	.4byte	.LASF580
	.byte	0x10
	.byte	0x5
	.2byte	0x4ef
	.byte	0x8
	.4byte	0x23cf
	.uleb128 0x1b
	.string	"p"
	.byte	0x5
	.2byte	0x4f0
	.byte	0x14
	.4byte	0x101
	.byte	0
	.uleb128 0x1b
	.string	"len"
	.byte	0x5
	.2byte	0x4f1
	.byte	0xc
	.4byte	0x80
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF199
	.byte	0x5
	.2byte	0x4f2
	.byte	0x13
	.4byte	0x32
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF245
	.byte	0x5
	.2byte	0x4f3
	.byte	0x1e
	.4byte	0x2aaf
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.4byte	.LASF581
	.byte	0x2
	.2byte	0x3be
	.byte	0xd
	.4byte	0x23dc
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x23fa
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x23fa
	.byte	0
	.uleb128 0x7
	.4byte	0x1598
	.uleb128 0xf
	.4byte	.LASF582
	.byte	0x2
	.2byte	0x3d4
	.byte	0xd
	.4byte	0x240c
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x242a
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x242a
	.byte	0
	.uleb128 0x7
	.4byte	0x15a5
	.uleb128 0xf
	.4byte	.LASF583
	.byte	0x2
	.2byte	0x422
	.byte	0xd
	.4byte	0x243c
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x245f
	.uleb128 0x2
	.4byte	0x245f
	.uleb128 0x2
	.4byte	0x114a
	.uleb128 0x2
	.4byte	0x4cc
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x7
	.4byte	0x167c
	.uleb128 0xf
	.4byte	.LASF584
	.byte	0x2
	.2byte	0x464
	.byte	0xd
	.4byte	0x2471
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x248f
	.uleb128 0x2
	.4byte	0x245f
	.uleb128 0x2
	.4byte	0x114a
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0xf
	.4byte	.LASF585
	.byte	0x2
	.2byte	0x494
	.byte	0xd
	.4byte	0x249c
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x24ba
	.uleb128 0x2
	.4byte	0x245f
	.uleb128 0x2
	.4byte	0x101
	.uleb128 0x2
	.4byte	0xa1a
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0xf
	.4byte	.LASF586
	.byte	0x2
	.2byte	0x4aa
	.byte	0xe
	.4byte	0x24c7
	.uleb128 0x31
	.4byte	0x24d2
	.uleb128 0x2
	.4byte	0x245f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF587
	.byte	0x2
	.2byte	0x4db
	.byte	0x12
	.4byte	0xb5
	.uleb128 0x10
	.4byte	0x24d2
	.uleb128 0x34
	.4byte	.LASF588
	.2byte	0x104
	.byte	0x2
	.2byte	0x4dd
	.byte	0x10
	.4byte	0x251e
	.uleb128 0x3
	.4byte	.LASF589
	.byte	0x2
	.2byte	0x4df
	.byte	0x1e
	.4byte	0x24d2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF590
	.byte	0x2
	.2byte	0x4e1
	.byte	0xe
	.4byte	0xb5
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF591
	.byte	0x2
	.2byte	0x4e3
	.byte	0x13
	.4byte	0x251e
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.4byte	0x32
	.4byte	0x252e
	.uleb128 0x16
	.4byte	0x74
	.byte	0xfe
	.byte	0
	.uleb128 0xf
	.4byte	.LASF592
	.byte	0x2
	.2byte	0x4e5
	.byte	0x1
	.4byte	0x24e4
	.uleb128 0x2f
	.byte	0x2
	.4byte	0x45
	.byte	0x2
	.2byte	0x4ea
	.byte	0xe
	.4byte	0x255e
	.uleb128 0x4
	.4byte	.LASF593
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF594
	.2byte	0x303
	.uleb128 0x3b
	.4byte	.LASF595
	.2byte	0x304
	.byte	0
	.uleb128 0xf
	.4byte	.LASF596
	.byte	0x2
	.2byte	0x4ee
	.byte	0x3
	.4byte	0x253b
	.uleb128 0x15
	.4byte	0x32
	.4byte	0x257b
	.uleb128 0x16
	.4byte	0x74
	.byte	0x1f
	.byte	0
	.uleb128 0x15
	.4byte	0x32
	.4byte	0x258b
	.uleb128 0x16
	.4byte	0x74
	.byte	0x2f
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	0x32
	.byte	0x2
	.2byte	0x562
	.byte	0xe
	.4byte	0x25b8
	.uleb128 0x4
	.4byte	.LASF597
	.byte	0
	.uleb128 0x4
	.4byte	.LASF598
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF599
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF600
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF601
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF602
	.byte	0x2
	.2byte	0x569
	.byte	0x1
	.4byte	0x258b
	.uleb128 0x10
	.4byte	0x25b8
	.uleb128 0x2f
	.byte	0x1
	.4byte	0x32
	.byte	0x2
	.2byte	0x56b
	.byte	0xe
	.4byte	0x25df
	.uleb128 0x4
	.4byte	.LASF603
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF604
	.byte	0x2
	.2byte	0x575
	.byte	0x3
	.4byte	0x25ca
	.uleb128 0xf
	.4byte	.LASF605
	.byte	0x2
	.2byte	0x586
	.byte	0xe
	.4byte	0x25f9
	.uleb128 0x31
	.4byte	0x2622
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x25df
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x25b8
	.byte	0
	.uleb128 0xf
	.4byte	.LASF606
	.byte	0x2
	.2byte	0x59e
	.byte	0xf
	.4byte	0x262f
	.uleb128 0x7
	.4byte	0x2634
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x2643
	.uleb128 0x2
	.4byte	0x245f
	.byte	0
	.uleb128 0x3c
	.byte	0x4
	.byte	0x2
	.2byte	0x5a7
	.byte	0x9
	.4byte	0x2662
	.uleb128 0x3d
	.string	"n"
	.2byte	0x5a8
	.byte	0xf
	.4byte	0xde
	.uleb128 0x3d
	.string	"p"
	.2byte	0x5a9
	.byte	0xb
	.4byte	0xfa
	.byte	0
	.uleb128 0xf
	.4byte	.LASF607
	.byte	0x2
	.2byte	0x5aa
	.byte	0x3
	.4byte	0x2643
	.uleb128 0x7
	.4byte	0x6f
	.uleb128 0x31
	.4byte	0x2693
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x117
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x117
	.byte	0
	.uleb128 0x7
	.4byte	0x2674
	.uleb128 0x7
	.4byte	0x19d
	.uleb128 0x7
	.4byte	0x23cf
	.uleb128 0x7
	.4byte	0x23ff
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x26c5
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x245f
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x7
	.4byte	0x26a7
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x26e8
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x114a
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x26e8
	.byte	0
	.uleb128 0x7
	.4byte	0xc6
	.uleb128 0x7
	.4byte	0x26ca
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x2715
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x2715
	.uleb128 0x2
	.4byte	0x101
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x7
	.4byte	0x101
	.uleb128 0x7
	.4byte	0x26f2
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x2742
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x7
	.4byte	0x271f
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x276f
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x242a
	.uleb128 0x2
	.4byte	0x101
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0xa1a
	.uleb128 0x2
	.4byte	0x26e8
	.byte	0
	.uleb128 0x7
	.4byte	0x2747
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x2792
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x23fa
	.uleb128 0x2
	.4byte	0x101
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x7
	.4byte	0x2774
	.uleb128 0x7
	.4byte	0x111d
	.uleb128 0x7
	.4byte	0x2337
	.uleb128 0x7
	.4byte	0xefe
	.uleb128 0x7
	.4byte	0x242f
	.uleb128 0x7
	.4byte	0x2464
	.uleb128 0x7
	.4byte	0x248f
	.uleb128 0x7
	.4byte	0x24ba
	.uleb128 0x7
	.4byte	0xc1
	.uleb128 0x7
	.4byte	0x117
	.uleb128 0x7
	.4byte	0x24df
	.uleb128 0x15
	.4byte	0x32
	.4byte	0x27d9
	.uleb128 0x16
	.4byte	0x74
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.4byte	0x1ad2
	.uleb128 0x7
	.4byte	0x14fc
	.uleb128 0x7
	.4byte	0x1522
	.uleb128 0x7
	.4byte	0x152f
	.uleb128 0x7
	.4byte	0x1fcb
	.uleb128 0x7
	.4byte	0x1eac
	.uleb128 0x7
	.4byte	0x155a
	.uleb128 0x7
	.4byte	0x157c
	.uleb128 0x15
	.4byte	0x10b
	.4byte	0x2811
	.uleb128 0x16
	.4byte	0x74
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	0x25ec
	.uleb128 0xf
	.4byte	.LASF608
	.byte	0x2
	.2byte	0xa92
	.byte	0xd
	.4byte	0x2747
	.uleb128 0xf
	.4byte	.LASF609
	.byte	0x2
	.2byte	0xab0
	.byte	0xd
	.4byte	0x2774
	.uleb128 0x29
	.byte	0x7
	.4byte	0x32
	.byte	0x18
	.byte	0x8f
	.4byte	0x284f
	.uleb128 0x4
	.4byte	.LASF610
	.byte	0
	.uleb128 0x4
	.4byte	.LASF611
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF612
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF613
	.byte	0x18
	.byte	0x93
	.byte	0x3
	.4byte	0x2830
	.uleb128 0xf
	.4byte	.LASF614
	.byte	0x5
	.2byte	0x249
	.byte	0xd
	.4byte	0x2868
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x2895
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x117
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x101
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	0x32
	.byte	0x5
	.2byte	0x2c6
	.byte	0xa
	.4byte	0x28c2
	.uleb128 0x4
	.4byte	.LASF615
	.byte	0
	.uleb128 0x4
	.4byte	.LASF616
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF617
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF618
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF619
	.byte	0x4
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF620
	.byte	0xc
	.byte	0x5
	.2byte	0x353
	.byte	0x10
	.4byte	0x291a
	.uleb128 0x28
	.4byte	.LASF621
	.byte	0x5
	.2byte	0x354
	.byte	0x16
	.4byte	0x74
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.4byte	.LASF622
	.byte	0x5
	.2byte	0x355
	.byte	0x16
	.4byte	0x74
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF623
	.byte	0x5
	.2byte	0x356
	.byte	0x16
	.4byte	0x74
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF624
	.byte	0x5
	.2byte	0x357
	.byte	0x1c
	.4byte	0x101
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF625
	.byte	0x5
	.2byte	0x358
	.byte	0x14
	.4byte	0x80
	.byte	0x8
	.byte	0
	.uleb128 0x27
	.byte	0xc
	.byte	0x5
	.2byte	0x35b
	.byte	0x9
	.4byte	0x294f
	.uleb128 0x3
	.4byte	.LASF624
	.byte	0x5
	.2byte	0x35c
	.byte	0x1c
	.4byte	0x101
	.byte	0
	.uleb128 0x1b
	.string	"len"
	.byte	0x5
	.2byte	0x35d
	.byte	0x14
	.4byte	0x80
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF626
	.byte	0x5
	.2byte	0x35e
	.byte	0x16
	.4byte	0x74
	.byte	0x8
	.byte	0
	.uleb128 0x27
	.byte	0x44
	.byte	0x5
	.2byte	0x34c
	.byte	0x5
	.4byte	0x2991
	.uleb128 0x3
	.4byte	.LASF627
	.byte	0x5
	.2byte	0x34d
	.byte	0x10
	.4byte	0x80
	.byte	0
	.uleb128 0x3
	.4byte	.LASF628
	.byte	0x5
	.2byte	0x350
	.byte	0x11
	.4byte	0xa4
	.byte	0x4
	.uleb128 0x1b
	.string	"hs"
	.byte	0x5
	.2byte	0x359
	.byte	0xb
	.4byte	0x2991
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF629
	.byte	0x5
	.2byte	0x35f
	.byte	0xb
	.4byte	0x291a
	.byte	0x38
	.byte	0
	.uleb128 0x15
	.4byte	0x28c2
	.4byte	0x29a1
	.uleb128 0x16
	.4byte	0x74
	.byte	0x3
	.byte	0
	.uleb128 0x27
	.byte	0x48
	.byte	0x5
	.2byte	0x3c6
	.byte	0x9
	.4byte	0x29d6
	.uleb128 0x3
	.4byte	.LASF630
	.byte	0x5
	.2byte	0x3c7
	.byte	0x15
	.4byte	0xa4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF631
	.byte	0x5
	.2byte	0x3cb
	.byte	0x1b
	.4byte	0x562
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF632
	.byte	0x5
	.2byte	0x3cc
	.byte	0x14
	.4byte	0x80
	.byte	0x44
	.byte	0
	.uleb128 0x27
	.byte	0x48
	.byte	0x5
	.2byte	0x3d0
	.byte	0x9
	.4byte	0x2a0b
	.uleb128 0x3
	.4byte	.LASF630
	.byte	0x5
	.2byte	0x3d1
	.byte	0x15
	.4byte	0xa4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF631
	.byte	0x5
	.2byte	0x3d5
	.byte	0x1b
	.4byte	0x562
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF632
	.byte	0x5
	.2byte	0x3d6
	.byte	0x14
	.4byte	0x80
	.byte	0x44
	.byte	0
	.uleb128 0x3c
	.byte	0x48
	.byte	0x5
	.2byte	0x3c4
	.byte	0x5
	.4byte	0x2a2c
	.uleb128 0x3e
	.4byte	.LASF633
	.2byte	0x3cd
	.4byte	0x29a1
	.uleb128 0x3e
	.4byte	.LASF634
	.2byte	0x3d7
	.4byte	0x29d6
	.byte	0
	.uleb128 0x7
	.4byte	0xb93
	.uleb128 0x10
	.4byte	0x2a2c
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x2a4f
	.uleb128 0x2
	.4byte	0x245f
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x7
	.4byte	0x2a36
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x2a6d
	.uleb128 0x2
	.4byte	0x2a6d
	.uleb128 0x2
	.4byte	0x101
	.uleb128 0x2
	.4byte	0xa1a
	.byte	0
	.uleb128 0x7
	.4byte	0x1689
	.uleb128 0x7
	.4byte	0x2a54
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x2a90
	.uleb128 0x2
	.4byte	0x245f
	.uleb128 0x2
	.4byte	0x101
	.uleb128 0x2
	.4byte	0x68
	.byte	0
	.uleb128 0x7
	.4byte	0x2a77
	.uleb128 0x7
	.4byte	0x285b
	.uleb128 0x15
	.4byte	0xb5
	.4byte	0x2aaa
	.uleb128 0x16
	.4byte	0x74
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0xb5
	.uleb128 0x7
	.4byte	0x237d
	.uleb128 0x2f
	.byte	0x1
	.4byte	0x32
	.byte	0x5
	.2byte	0xae2
	.byte	0xe
	.4byte	0x2adb
	.uleb128 0x4
	.4byte	.LASF635
	.byte	0
	.uleb128 0x4
	.4byte	.LASF636
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF637
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF638
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF639
	.byte	0x5
	.2byte	0xae7
	.byte	0x3
	.4byte	0x2ab4
	.uleb128 0xf
	.4byte	.LASF640
	.byte	0x6
	.2byte	0x196
	.byte	0xf
	.4byte	0x2af5
	.uleb128 0x7
	.4byte	0x2868
	.uleb128 0xf
	.4byte	.LASF641
	.byte	0x6
	.2byte	0x1a0
	.byte	0xd
	.4byte	0x2868
	.uleb128 0x15
	.4byte	0x117
	.4byte	0x2b17
	.uleb128 0x16
	.4byte	0x74
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF642
	.byte	0x6
	.2byte	0x26a
	.byte	0x14
	.4byte	0x2b07
	.uleb128 0x5
	.byte	0x3
	.4byte	extension_name_table
	.uleb128 0x15
	.4byte	0x7b
	.4byte	0x2b3a
	.uleb128 0x16
	.4byte	0x74
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.4byte	0x2b2a
	.uleb128 0x6
	.4byte	.LASF643
	.byte	0x6
	.2byte	0x28a
	.byte	0x1b
	.4byte	0x2b3a
	.uleb128 0x5
	.byte	0x3
	.4byte	extension_type_table
	.uleb128 0x6
	.4byte	.LASF644
	.byte	0x6
	.2byte	0xada
	.byte	0x1a
	.4byte	0x11c
	.uleb128 0x5
	.byte	0x3
	.4byte	ssl_hostname_skip_cn_verification
	.uleb128 0x15
	.4byte	0x39
	.4byte	0x2b75
	.uleb128 0x16
	.4byte	0x74
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	0x2b65
	.uleb128 0x6
	.4byte	.LASF645
	.byte	0x6
	.2byte	0x1088
	.byte	0x1c
	.4byte	0x2b75
	.uleb128 0x5
	.byte	0x3
	.4byte	ssl_serialized_session_header
	.uleb128 0x15
	.4byte	0x39
	.4byte	0x2b9d
	.uleb128 0x16
	.4byte	0x74
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.4byte	0x2b8d
	.uleb128 0x6
	.4byte	.LASF646
	.byte	0x6
	.2byte	0x13b6
	.byte	0x1c
	.4byte	0x2b9d
	.uleb128 0x5
	.byte	0x3
	.4byte	ssl_serialized_context_header
	.uleb128 0x15
	.4byte	0xc1
	.4byte	0x2bc5
	.uleb128 0x16
	.4byte	0x74
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.4byte	0x2bb5
	.uleb128 0x6
	.4byte	.LASF647
	.byte	0x6
	.2byte	0x161e
	.byte	0x17
	.4byte	0x2bc5
	.uleb128 0x5
	.byte	0x3
	.4byte	ssl_preset_default_groups
	.uleb128 0x15
	.4byte	0x6f
	.4byte	0x2bed
	.uleb128 0x16
	.4byte	0x74
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	0x2bdd
	.uleb128 0x6
	.4byte	.LASF648
	.byte	0x6
	.2byte	0x1641
	.byte	0x12
	.4byte	0x2bed
	.uleb128 0x5
	.byte	0x3
	.4byte	ssl_preset_suiteb_ciphersuites
	.uleb128 0x15
	.4byte	0xc1
	.4byte	0x2c15
	.uleb128 0x16
	.4byte	0x74
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.4byte	0x2c05
	.uleb128 0x6
	.4byte	.LASF649
	.byte	0x6
	.2byte	0x1651
	.byte	0x17
	.4byte	0x2c15
	.uleb128 0x5
	.byte	0x3
	.4byte	ssl_preset_default_sig_algs
	.uleb128 0x6
	.4byte	.LASF650
	.byte	0x6
	.2byte	0x1685
	.byte	0x17
	.4byte	0x2c15
	.uleb128 0x5
	.byte	0x3
	.4byte	ssl_tls12_preset_default_sig_algs
	.uleb128 0x15
	.4byte	0xc1
	.4byte	0x2c50
	.uleb128 0x16
	.4byte	0x74
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	0x2c40
	.uleb128 0x6
	.4byte	.LASF651
	.byte	0x6
	.2byte	0x16b0
	.byte	0x17
	.4byte	0x2c50
	.uleb128 0x5
	.byte	0x3
	.4byte	ssl_preset_suiteb_sig_algs
	.uleb128 0x6
	.4byte	.LASF652
	.byte	0x6
	.2byte	0x16c5
	.byte	0x17
	.4byte	0x2c50
	.uleb128 0x5
	.byte	0x3
	.4byte	ssl_tls12_preset_suiteb_sig_algs
	.uleb128 0x6
	.4byte	.LASF653
	.byte	0x6
	.2byte	0x16d9
	.byte	0x17
	.4byte	0x2c50
	.uleb128 0x5
	.byte	0x3
	.4byte	ssl_preset_suiteb_groups
	.uleb128 0x27
	.byte	0x6
	.byte	0x6
	.2byte	0x18a7
	.byte	0xe
	.4byte	0x2cd1
	.uleb128 0x3
	.4byte	.LASF654
	.byte	0x6
	.2byte	0x18a8
	.byte	0xe
	.4byte	0xb5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF655
	.byte	0x6
	.2byte	0x18a9
	.byte	0x1a
	.4byte	0x263
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF656
	.byte	0x6
	.2byte	0x18aa
	.byte	0x16
	.4byte	0x556
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF657
	.byte	0x6
	.2byte	0x18ab
	.byte	0xe
	.4byte	0xb5
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	0x2c8e
	.uleb128 0x15
	.4byte	0x2cd1
	.4byte	0x2ce6
	.uleb128 0x16
	.4byte	0x74
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.4byte	0x2cd6
	.uleb128 0x6
	.4byte	.LASF658
	.byte	0x6
	.2byte	0x18ac
	.byte	0x3
	.4byte	0x2ce6
	.uleb128 0x5
	.byte	0x3
	.4byte	tls_id_match_table
	.uleb128 0x27
	.byte	0x8
	.byte	0x6
	.2byte	0x1903
	.byte	0xe
	.4byte	0x2d25
	.uleb128 0x3
	.4byte	.LASF654
	.byte	0x6
	.2byte	0x1904
	.byte	0xe
	.4byte	0xb5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF194
	.byte	0x6
	.2byte	0x1905
	.byte	0x11
	.4byte	0x117
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	0x2cfe
	.uleb128 0x15
	.4byte	0x2d25
	.4byte	0x2d3a
	.uleb128 0x16
	.4byte	0x74
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.4byte	0x2d2a
	.uleb128 0x6
	.4byte	.LASF659
	.byte	0x6
	.2byte	0x1906
	.byte	0x3
	.4byte	0x2d3a
	.uleb128 0x5
	.byte	0x3
	.4byte	tls_id_curve_name_table
	.uleb128 0x14
	.4byte	.LASF660
	.byte	0x10
	.2byte	0x400
	.byte	0x13
	.4byte	0xa8d
	.4byte	0x2d69
	.uleb128 0x2
	.4byte	0x2d69
	.byte	0
	.uleb128 0x7
	.4byte	0xae9
	.uleb128 0x14
	.4byte	.LASF661
	.byte	0x15
	.2byte	0x2e9
	.byte	0x5
	.4byte	0x68
	.4byte	0x2dad
	.uleb128 0x2
	.4byte	0x114a
	.uleb128 0x2
	.4byte	0x114a
	.uleb128 0x2
	.4byte	0x27a1
	.uleb128 0x2
	.4byte	0x2797
	.uleb128 0x2
	.4byte	0x117
	.uleb128 0x2
	.4byte	0x26e8
	.uleb128 0x2
	.4byte	0x26ed
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x2dad
	.byte	0
	.uleb128 0x7
	.4byte	0x1242
	.uleb128 0x14
	.4byte	.LASF662
	.byte	0x15
	.2byte	0x32b
	.byte	0x5
	.4byte	0x68
	.4byte	0x2dec
	.uleb128 0x2
	.4byte	0x114a
	.uleb128 0x2
	.4byte	0x1279
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x2797
	.uleb128 0x2
	.4byte	0x117
	.uleb128 0x2
	.4byte	0x26e8
	.uleb128 0x2
	.4byte	0x26ed
	.uleb128 0x2
	.4byte	0xfa
	.byte	0
	.uleb128 0x14
	.4byte	.LASF663
	.byte	0x15
	.2byte	0x35a
	.byte	0x5
	.4byte	0x68
	.4byte	0x2e0d
	.uleb128 0x2
	.4byte	0x1265
	.uleb128 0x2
	.4byte	0x117
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x14
	.4byte	.LASF664
	.byte	0x15
	.2byte	0x34a
	.byte	0x5
	.4byte	0x68
	.4byte	0x2e29
	.uleb128 0x2
	.4byte	0x1265
	.uleb128 0x2
	.4byte	0x74
	.byte	0
	.uleb128 0x20
	.4byte	.LASF665
	.byte	0x3
	.byte	0x19
	.byte	0x5
	.4byte	0x68
	.4byte	0x2e3f
	.uleb128 0x2
	.4byte	0x2a2c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF666
	.byte	0x1
	.2byte	0x353
	.byte	0x5
	.4byte	0x68
	.4byte	0x2e5b
	.uleb128 0x2
	.4byte	0x2e5b
	.uleb128 0x2
	.4byte	0x820
	.byte	0
	.uleb128 0x7
	.4byte	0xa39
	.uleb128 0x14
	.4byte	.LASF667
	.byte	0x1
	.2byte	0x33e
	.byte	0x5
	.4byte	0x68
	.4byte	0x2e86
	.uleb128 0x2
	.4byte	0x2e5b
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x857
	.byte	0
	.uleb128 0x14
	.4byte	.LASF668
	.byte	0x1
	.2byte	0x27e
	.byte	0x5
	.4byte	0x68
	.4byte	0x2ea2
	.uleb128 0x2
	.4byte	0x2e5b
	.uleb128 0x2
	.4byte	0x9dd
	.byte	0
	.uleb128 0x14
	.4byte	.LASF669
	.byte	0x11
	.2byte	0x1d0
	.byte	0x22
	.4byte	0x2a2c
	.4byte	0x2eb9
	.uleb128 0x2
	.4byte	0x68
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF671
	.byte	0x5
	.2byte	0x6fe
	.4byte	0x2ecb
	.uleb128 0x2
	.4byte	0x245f
	.byte	0
	.uleb128 0x20
	.4byte	.LASF670
	.byte	0x19
	.byte	0x20
	.byte	0x5
	.4byte	0x68
	.4byte	0x2eeb
	.uleb128 0x2
	.4byte	0x126
	.uleb128 0x2
	.4byte	0x126
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF672
	.byte	0x5
	.2byte	0x6fd
	.4byte	0x2efd
	.uleb128 0x2
	.4byte	0x245f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF673
	.byte	0x5
	.2byte	0x5b3
	.byte	0x5
	.4byte	0x68
	.4byte	0x2f19
	.uleb128 0x2
	.4byte	0x245f
	.uleb128 0x2
	.4byte	0x74
	.byte	0
	.uleb128 0x14
	.4byte	.LASF674
	.byte	0x2
	.2byte	0x14fd
	.byte	0x5
	.4byte	0x68
	.4byte	0x2f3a
	.uleb128 0x2
	.4byte	0x245f
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x23
	.4byte	.LASF675
	.byte	0x18
	.byte	0x86
	.4byte	0x2f64
	.uleb128 0x2
	.4byte	0x2a6d
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x117
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x117
	.uleb128 0x2
	.4byte	0x1265
	.byte	0
	.uleb128 0x23
	.4byte	.LASF676
	.byte	0x18
	.byte	0xa5
	.4byte	0x2f8e
	.uleb128 0x2
	.4byte	0x2a6d
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x117
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x2f8e
	.uleb128 0x2
	.4byte	0x284f
	.byte	0
	.uleb128 0x7
	.4byte	0x1417
	.uleb128 0x14
	.4byte	.LASF677
	.byte	0x17
	.2byte	0x1ad
	.byte	0x5
	.4byte	0x68
	.4byte	0x2fc3
	.uleb128 0x2
	.4byte	0x2fc3
	.uleb128 0x2
	.4byte	0xa1a
	.uleb128 0x2
	.4byte	0x101
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x2fc8
	.uleb128 0x2
	.4byte	0xfa
	.byte	0
	.uleb128 0x7
	.4byte	0x140b
	.uleb128 0x7
	.4byte	0x191
	.uleb128 0x14
	.4byte	.LASF678
	.byte	0xd
	.2byte	0x181
	.byte	0x1a
	.4byte	0x528
	.4byte	0x2fe4
	.uleb128 0x2
	.4byte	0x2fe4
	.byte	0
	.uleb128 0x7
	.4byte	0x539
	.uleb128 0x14
	.4byte	.LASF679
	.byte	0xd
	.2byte	0x1ed
	.byte	0x5
	.4byte	0x68
	.4byte	0x3000
	.uleb128 0x2
	.4byte	0x3000
	.byte	0
	.uleb128 0x7
	.4byte	0x52d
	.uleb128 0x14
	.4byte	.LASF680
	.byte	0xd
	.2byte	0x1db
	.byte	0x5
	.4byte	0x68
	.4byte	0x3021
	.uleb128 0x2
	.4byte	0x3000
	.uleb128 0x2
	.4byte	0x101
	.byte	0
	.uleb128 0x14
	.4byte	.LASF681
	.byte	0xd
	.2byte	0x1c5
	.byte	0x5
	.4byte	0x68
	.4byte	0x3042
	.uleb128 0x2
	.4byte	0x3000
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x14
	.4byte	.LASF682
	.byte	0xd
	.2byte	0x1ae
	.byte	0x5
	.4byte	0x68
	.4byte	0x3063
	.uleb128 0x2
	.4byte	0x3000
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x20
	.4byte	.LASF683
	.byte	0xd
	.byte	0xeb
	.byte	0xf
	.4byte	0x32
	.4byte	0x3079
	.uleb128 0x2
	.4byte	0x528
	.byte	0
	.uleb128 0x20
	.4byte	.LASF684
	.byte	0x1a
	.byte	0x23
	.byte	0xd
	.4byte	0x117
	.4byte	0x308f
	.uleb128 0x2
	.4byte	0xb5
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF685
	.byte	0x5
	.2byte	0x753
	.4byte	0x30ab
	.uleb128 0x2
	.4byte	0x245f
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0x68
	.byte	0
	.uleb128 0x14
	.4byte	.LASF686
	.byte	0xd
	.2byte	0x13c
	.byte	0x5
	.4byte	0x68
	.4byte	0x30c7
	.uleb128 0x2
	.4byte	0x3000
	.uleb128 0x2
	.4byte	0x101
	.byte	0
	.uleb128 0x20
	.4byte	.LASF687
	.byte	0xd
	.byte	0xdf
	.byte	0x5
	.4byte	0x68
	.4byte	0x30e2
	.uleb128 0x2
	.4byte	0x3000
	.uleb128 0x2
	.4byte	0x2fe4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF688
	.byte	0x10
	.2byte	0x1c8
	.byte	0x5
	.4byte	0x68
	.4byte	0x30fe
	.uleb128 0x2
	.4byte	0x2d69
	.uleb128 0x2
	.4byte	0xa8d
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF1141
	.byte	0x11
	.2byte	0x1cd
	.byte	0xc
	.4byte	0x266f
	.uleb128 0x20
	.4byte	.LASF689
	.byte	0x1b
	.byte	0xce
	.byte	0x5
	.4byte	0x68
	.4byte	0x3122
	.uleb128 0x2
	.4byte	0x121
	.uleb128 0x3f
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF690
	.byte	0x5
	.2byte	0x742
	.4byte	0x3139
	.uleb128 0x2
	.4byte	0x245f
	.uleb128 0x2
	.4byte	0x27f2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF691
	.byte	0x2
	.2byte	0x12cb
	.byte	0x5
	.4byte	0x68
	.4byte	0x3150
	.uleb128 0x2
	.4byte	0x2a6d
	.byte	0
	.uleb128 0x23
	.4byte	.LASF692
	.byte	0xa
	.byte	0x9f
	.4byte	0x3166
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF693
	.byte	0x5
	.2byte	0x768
	.4byte	0x3178
	.uleb128 0x2
	.4byte	0x245f
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF694
	.byte	0x5
	.2byte	0x769
	.4byte	0x318a
	.uleb128 0x2
	.4byte	0x2aaf
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF695
	.byte	0x15
	.2byte	0x382
	.4byte	0x319c
	.uleb128 0x2
	.4byte	0x2dad
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF696
	.byte	0x17
	.2byte	0x108
	.4byte	0x31ae
	.uleb128 0x2
	.4byte	0x2fc3
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF697
	.byte	0x16
	.2byte	0x14b
	.4byte	0x31c0
	.uleb128 0x2
	.4byte	0x31c0
	.byte	0
	.uleb128 0x7
	.4byte	0x1368
	.uleb128 0x14
	.4byte	.LASF698
	.byte	0x5
	.2byte	0x5c0
	.byte	0x5
	.4byte	0x68
	.4byte	0x31e6
	.uleb128 0x2
	.4byte	0x245f
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x68
	.byte	0
	.uleb128 0x14
	.4byte	.LASF699
	.byte	0x5
	.2byte	0x53a
	.byte	0x5
	.4byte	0x68
	.4byte	0x31fd
	.uleb128 0x2
	.4byte	0x245f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF700
	.byte	0x5
	.2byte	0x538
	.byte	0x5
	.4byte	0x68
	.4byte	0x3214
	.uleb128 0x2
	.4byte	0x245f
	.byte	0
	.uleb128 0x20
	.4byte	.LASF701
	.byte	0x1c
	.byte	0x14
	.byte	0x5
	.4byte	0x68
	.4byte	0x322a
	.uleb128 0x2
	.4byte	0x245f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF702
	.byte	0x5
	.2byte	0x74e
	.byte	0x5
	.4byte	0x68
	.4byte	0x3241
	.uleb128 0x2
	.4byte	0x245f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF703
	.byte	0x5
	.2byte	0x702
	.byte	0x5
	.4byte	0x68
	.4byte	0x3258
	.uleb128 0x2
	.4byte	0x245f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF704
	.byte	0x5
	.2byte	0x5d2
	.byte	0x5
	.4byte	0x68
	.4byte	0x326f
	.uleb128 0x2
	.4byte	0x245f
	.byte	0
	.uleb128 0x20
	.4byte	.LASF705
	.byte	0x1d
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x328f
	.uleb128 0x2
	.4byte	0x126
	.uleb128 0x2
	.4byte	0x126
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x14
	.4byte	.LASF706
	.byte	0x2
	.2byte	0x1321
	.byte	0x5
	.4byte	0x68
	.4byte	0x32a6
	.uleb128 0x2
	.4byte	0x2a6d
	.byte	0
	.uleb128 0x14
	.4byte	.LASF707
	.byte	0x2
	.2byte	0x7f9
	.byte	0xd
	.4byte	0x117
	.4byte	0x32bd
	.uleb128 0x2
	.4byte	0x6f
	.byte	0
	.uleb128 0x20
	.4byte	.LASF708
	.byte	0x1d
	.byte	0x29
	.byte	0x8
	.4byte	0x80
	.4byte	0x32d3
	.uleb128 0x2
	.4byte	0x117
	.byte	0
	.uleb128 0x14
	.4byte	.LASF709
	.byte	0x16
	.2byte	0x13f
	.byte	0x5
	.4byte	0x68
	.4byte	0x32f4
	.uleb128 0x2
	.4byte	0x32f4
	.uleb128 0x2
	.4byte	0x12da
	.uleb128 0x2
	.4byte	0x37e
	.byte	0
	.uleb128 0x7
	.4byte	0x1374
	.uleb128 0x14
	.4byte	.LASF710
	.byte	0xb
	.2byte	0x227
	.byte	0x5
	.4byte	0x68
	.4byte	0x331a
	.uleb128 0x2
	.4byte	0x37e
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF711
	.byte	0xb
	.2byte	0x103
	.4byte	0x332c
	.uleb128 0x2
	.4byte	0x37e
	.byte	0
	.uleb128 0x14
	.4byte	.LASF712
	.byte	0x1
	.2byte	0x19f
	.byte	0x1e
	.4byte	0x9dd
	.4byte	0x3343
	.uleb128 0x2
	.4byte	0x783
	.byte	0
	.uleb128 0x20
	.4byte	.LASF713
	.byte	0x1a
	.byte	0x16
	.byte	0xd
	.4byte	0x117
	.4byte	0x3359
	.uleb128 0x2
	.4byte	0x14ef
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF714
	.byte	0x5
	.2byte	0x75c
	.4byte	0x336b
	.uleb128 0x2
	.4byte	0x245f
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF715
	.byte	0x5
	.2byte	0x73f
	.4byte	0x337d
	.uleb128 0x2
	.4byte	0x245f
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF716
	.byte	0x5
	.2byte	0x73b
	.4byte	0x3394
	.uleb128 0x2
	.4byte	0x245f
	.uleb128 0x2
	.4byte	0xc6
	.byte	0
	.uleb128 0x23
	.4byte	.LASF717
	.byte	0x18
	.byte	0x31
	.4byte	0x33be
	.uleb128 0x2
	.4byte	0x2a6d
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x117
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x117
	.uleb128 0x2
	.4byte	0x68
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF718
	.byte	0x5
	.2byte	0x525
	.4byte	0x33d0
	.uleb128 0x2
	.4byte	0x27f2
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF719
	.byte	0x1
	.2byte	0x256
	.4byte	0x33e2
	.uleb128 0x2
	.4byte	0x2e5b
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF720
	.byte	0x15
	.2byte	0x37d
	.4byte	0x33f4
	.uleb128 0x2
	.4byte	0x2dad
	.byte	0
	.uleb128 0x23
	.4byte	.LASF721
	.byte	0x17
	.byte	0xec
	.4byte	0x3405
	.uleb128 0x2
	.4byte	0x2fc3
	.byte	0
	.uleb128 0x23
	.4byte	.LASF722
	.byte	0x16
	.byte	0x7c
	.4byte	0x3416
	.uleb128 0x2
	.4byte	0x31c0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF723
	.byte	0x1d
	.byte	0x21
	.byte	0x8
	.4byte	0xfa
	.4byte	0x3436
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x14
	.4byte	.LASF724
	.byte	0xd
	.2byte	0x127
	.byte	0x5
	.4byte	0x68
	.4byte	0x3457
	.uleb128 0x2
	.4byte	0x3000
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x14
	.4byte	.LASF725
	.byte	0xd
	.2byte	0x114
	.byte	0x5
	.4byte	0x68
	.4byte	0x346e
	.uleb128 0x2
	.4byte	0x3000
	.byte	0
	.uleb128 0x20
	.4byte	.LASF726
	.byte	0xd
	.byte	0xc5
	.byte	0x5
	.4byte	0x68
	.4byte	0x348e
	.uleb128 0x2
	.4byte	0x3000
	.uleb128 0x2
	.4byte	0x528
	.uleb128 0x2
	.4byte	0x68
	.byte	0
	.uleb128 0x20
	.4byte	.LASF727
	.byte	0xd
	.byte	0x95
	.byte	0x1a
	.4byte	0x528
	.4byte	0x34a4
	.uleb128 0x2
	.4byte	0x4cc
	.byte	0
	.uleb128 0x23
	.4byte	.LASF728
	.byte	0xd
	.byte	0x9f
	.4byte	0x34b5
	.uleb128 0x2
	.4byte	0x3000
	.byte	0
	.uleb128 0x23
	.4byte	.LASF729
	.byte	0xd
	.byte	0xae
	.4byte	0x34c6
	.uleb128 0x2
	.4byte	0x3000
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF730
	.byte	0x15
	.2byte	0x377
	.4byte	0x34d8
	.uleb128 0x2
	.4byte	0x114a
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF731
	.byte	0x5
	.2byte	0x741
	.4byte	0x34ea
	.uleb128 0x2
	.4byte	0x245f
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF732
	.byte	0x5
	.2byte	0x740
	.4byte	0x34fc
	.uleb128 0x2
	.4byte	0x245f
	.byte	0
	.uleb128 0x23
	.4byte	.LASF733
	.byte	0x1e
	.byte	0x79
	.4byte	0x3512
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x23
	.4byte	.LASF734
	.byte	0x1f
	.byte	0x5e
	.4byte	0x3523
	.uleb128 0x2
	.4byte	0xfa
	.byte	0
	.uleb128 0x14
	.4byte	.LASF735
	.byte	0x15
	.2byte	0x170
	.byte	0x5
	.4byte	0x68
	.4byte	0x3544
	.uleb128 0x2
	.4byte	0x114a
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF736
	.byte	0x15
	.2byte	0x370
	.4byte	0x3556
	.uleb128 0x2
	.4byte	0x114a
	.byte	0
	.uleb128 0x20
	.4byte	.LASF737
	.byte	0x1f
	.byte	0x5a
	.byte	0x7
	.4byte	0xfa
	.4byte	0x3571
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x20
	.4byte	.LASF738
	.byte	0x1d
	.byte	0x1f
	.byte	0x8
	.4byte	0xfa
	.4byte	0x3591
	.uleb128 0x2
	.4byte	0xfc
	.uleb128 0x2
	.4byte	0x12b
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x23
	.4byte	.LASF739
	.byte	0x18
	.byte	0x46
	.4byte	0x35c0
	.uleb128 0x2
	.4byte	0x2a6d
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x117
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x117
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x23
	.4byte	.LASF740
	.byte	0x18
	.byte	0x1e
	.4byte	0x35e6
	.uleb128 0x2
	.4byte	0x2a6d
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x117
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x117
	.uleb128 0x3f
	.byte	0
	.uleb128 0xa
	.4byte	.LASF752
	.2byte	0x279f
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB336
	.4byte	.LFE336-.LFB336
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x36b1
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x279f
	.byte	0x3d
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"out"
	.byte	0x6
	.2byte	0x27a0
	.byte	0x31
	.4byte	0xa4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF741
	.byte	0x6
	.2byte	0x27a0
	.byte	0x43
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF742
	.byte	0x6
	.2byte	0x27a1
	.byte	0x34
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF743
	.byte	0x6
	.2byte	0x27a1
	.byte	0x48
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF744
	.byte	0x6
	.2byte	0x27a2
	.byte	0x3d
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF745
	.byte	0x6
	.2byte	0x27a2
	.byte	0x53
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF746
	.byte	0x6
	.2byte	0x27a3
	.byte	0x32
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.4byte	.LASF747
	.byte	0x6
	.2byte	0x27ae
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF369
	.byte	0x6
	.2byte	0x27af
	.byte	0x26
	.4byte	0x2a2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF748
	.byte	0x6
	.2byte	0x27b0
	.byte	0x1d
	.4byte	0x4d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x12
	.4byte	.LASF757
	.byte	0x6
	.2byte	0x274c
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB335
	.4byte	.LFE335-.LFB335
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37ca
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x274c
	.byte	0x50
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF748
	.byte	0x6
	.2byte	0x274d
	.byte	0x4d
	.4byte	0x4d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x5
	.string	"out"
	.byte	0x6
	.2byte	0x274e
	.byte	0x3e
	.4byte	0xa4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF741
	.byte	0x6
	.2byte	0x274f
	.byte	0x42
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF742
	.byte	0x6
	.2byte	0x2750
	.byte	0x41
	.4byte	0x117
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	.LASF743
	.byte	0x6
	.2byte	0x2751
	.byte	0x42
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.4byte	.LASF744
	.byte	0x6
	.2byte	0x2752
	.byte	0x4a
	.4byte	0x126f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.4byte	.LASF745
	.byte	0x6
	.2byte	0x2753
	.byte	0x42
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.4byte	.LASF746
	.byte	0x6
	.2byte	0x2754
	.byte	0x3f
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x2756
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x6
	.2byte	0x2757
	.byte	0x14
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF750
	.byte	0x6
	.2byte	0x275c
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF751
	.byte	0x6
	.2byte	0x275d
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.4byte	0x8570
	.4byte	.LBB169
	.4byte	.LBE169-.LBB169
	.2byte	0x2775
	.byte	0x74
	.uleb128 0xc
	.4byte	0x857a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	0x8583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0xe
	.4byte	0x858c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF753
	.2byte	0x268d
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB334
	.4byte	.LFE334-.LFB334
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x38ce
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x268d
	.byte	0x39
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF453
	.byte	0x6
	.2byte	0x268e
	.byte	0x28
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF754
	.byte	0x6
	.2byte	0x268f
	.byte	0x36
	.4byte	0x114a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF539
	.byte	0x6
	.2byte	0x2690
	.byte	0x45
	.4byte	0x2a2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF223
	.byte	0x6
	.2byte	0x2691
	.byte	0x2a
	.4byte	0xfa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.4byte	.LASF383
	.byte	0x6
	.2byte	0x269a
	.byte	0xb
	.4byte	0x26ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF384
	.byte	0x6
	.2byte	0x269b
	.byte	0xb
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF436
	.byte	0x6
	.2byte	0x26a6
	.byte	0x11
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x26a7
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF755
	.byte	0x6
	.2byte	0x26ad
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.4byte	.LBB167
	.4byte	.LBE167-.LBB167
	.4byte	0x38b3
	.uleb128 0x6
	.4byte	.LASF484
	.byte	0x6
	.2byte	0x26bf
	.byte	0x1b
	.4byte	0x114a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF485
	.byte	0x6
	.2byte	0x26c0
	.byte	0x1b
	.4byte	0x27a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1f
	.4byte	.LBB168
	.4byte	.LBE168-.LBB168
	.uleb128 0x6
	.4byte	.LASF756
	.byte	0x6
	.2byte	0x271e
	.byte	0x11
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF758
	.byte	0x6
	.2byte	0x2678
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB333
	.4byte	.LFE333-.LFB333
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x390a
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x2678
	.byte	0x3f
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF436
	.byte	0x6
	.2byte	0x2679
	.byte	0x37
	.4byte	0x27bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF759
	.2byte	0x2625
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB332
	.4byte	.LFE332-.LFB332
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39b5
	.uleb128 0x1
	.4byte	.LASF579
	.byte	0x6
	.2byte	0x2625
	.byte	0x3a
	.4byte	0x1265
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF369
	.byte	0x6
	.2byte	0x2626
	.byte	0x43
	.4byte	0x2a2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF760
	.byte	0x6
	.2byte	0x2627
	.byte	0x26
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF368
	.byte	0x6
	.2byte	0x2628
	.byte	0x3f
	.4byte	0x255e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x1
	.4byte	.LASF200
	.byte	0x6
	.2byte	0x2629
	.byte	0x2c
	.4byte	0x26e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x262b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF761
	.byte	0x6
	.2byte	0x262c
	.byte	0x12
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF762
	.byte	0x6
	.2byte	0x262d
	.byte	0x11
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF763
	.byte	0x6
	.2byte	0x262e
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF764
	.2byte	0x25a5
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB331
	.4byte	.LFE331-.LFB331
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ab5
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x25a5
	.byte	0x35
	.4byte	0x245f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0x25a6
	.byte	0x2f
	.4byte	0x101
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.string	"end"
	.byte	0x6
	.2byte	0x25a7
	.byte	0x2f
	.4byte	0x101
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.4byte	.LASF428
	.byte	0x6
	.2byte	0x25a8
	.byte	0x28
	.4byte	0xa1a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x8
	.string	"p"
	.byte	0x6
	.2byte	0x25aa
	.byte	0x14
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF765
	.byte	0x6
	.2byte	0x25ab
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.4byte	0x8570
	.4byte	.LBB161
	.4byte	.LBE161-.LBB161
	.2byte	0x25bd
	.byte	0x53
	.4byte	0x3a5e
	.uleb128 0xc
	.4byte	0x857a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.4byte	0x8583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0xe
	.4byte	0x858c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1c
	.4byte	0x8570
	.4byte	.LBB163
	.4byte	.LBE163-.LBB163
	.2byte	0x25c1
	.byte	0x66
	.4byte	0x3a8b
	.uleb128 0xc
	.4byte	0x857a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.4byte	0x8583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0xe
	.4byte	0x858c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x21
	.4byte	0x8570
	.4byte	.LBB165
	.4byte	.LBE165-.LBB165
	.2byte	0x25c2
	.byte	0x66
	.uleb128 0xc
	.4byte	0x857a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.4byte	0x8583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0xe
	.4byte	0x858c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF766
	.2byte	0x255a
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB330
	.4byte	.LFE330-.LFB330
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3bc1
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x255a
	.byte	0x35
	.4byte	0x245f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0x255b
	.byte	0x35
	.4byte	0x126f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.string	"end"
	.byte	0x6
	.2byte	0x255c
	.byte	0x35
	.4byte	0x126f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x8
	.string	"p"
	.byte	0x6
	.2byte	0x255e
	.byte	0x1a
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF767
	.byte	0x6
	.2byte	0x255f
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF768
	.byte	0x6
	.2byte	0x2560
	.byte	0x1a
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF769
	.byte	0x6
	.2byte	0x2561
	.byte	0x1a
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF765
	.byte	0x6
	.2byte	0x2562
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.4byte	.LASF776
	.4byte	0x3bd1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.0
	.uleb128 0x30
	.4byte	.LBB159
	.4byte	.LBE159-.LBB159
	.4byte	0x3b97
	.uleb128 0x6
	.4byte	.LASF770
	.byte	0x6
	.2byte	0x258f
	.byte	0x17
	.4byte	0x27bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LBB160
	.4byte	.LBE160-.LBB160
	.uleb128 0x6
	.4byte	.LASF771
	.byte	0x6
	.2byte	0x2590
	.byte	0x16
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	0x859d
	.4byte	.LBB157
	.4byte	.LBE157-.LBB157
	.2byte	0x2579
	.byte	0x61
	.uleb128 0xc
	.4byte	0x85aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	0x85b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0xe
	.4byte	0x85bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x112
	.4byte	0x3bd1
	.uleb128 0x16
	.4byte	0x74
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.4byte	0x3bc1
	.uleb128 0xa
	.4byte	.LASF772
	.2byte	0x2524
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB329
	.4byte	.LFE329-.LFB329
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3cd7
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x2524
	.byte	0x3c
	.4byte	0x245f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0x2525
	.byte	0x3c
	.4byte	0x126f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.string	"end"
	.byte	0x6
	.2byte	0x2526
	.byte	0x3c
	.4byte	0x126f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x2528
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"p"
	.byte	0x6
	.2byte	0x2529
	.byte	0x1a
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF773
	.byte	0x6
	.2byte	0x252a
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF774
	.byte	0x6
	.2byte	0x252a
	.byte	0x22
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF775
	.byte	0x6
	.2byte	0x252b
	.byte	0x1a
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.4byte	.LASF776
	.4byte	0x3ce7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.1
	.uleb128 0x1c
	.4byte	0x859d
	.4byte	.LBB153
	.4byte	.LBE153-.LBB153
	.2byte	0x2530
	.byte	0x5f
	.4byte	0x3cad
	.uleb128 0xc
	.4byte	0x85aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.4byte	0x85b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0xe
	.4byte	0x85bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x21
	.4byte	0x859d
	.4byte	.LBB155
	.4byte	.LBE155-.LBB155
	.2byte	0x2537
	.byte	0x5b
	.uleb128 0xc
	.4byte	0x85aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.4byte	0x85b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0xe
	.4byte	0x85bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x112
	.4byte	0x3ce7
	.uleb128 0x16
	.4byte	0x74
	.byte	0x21
	.byte	0
	.uleb128 0x10
	.4byte	0x3cd7
	.uleb128 0xa
	.4byte	.LASF777
	.2byte	0x24ce
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB328
	.4byte	.LFE328-.LFB328
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e3d
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x24ce
	.byte	0x38
	.4byte	0x245f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0x24ce
	.byte	0x4c
	.4byte	0x101
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x5
	.string	"end"
	.byte	0x6
	.2byte	0x24cf
	.byte	0x38
	.4byte	0x126f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1
	.4byte	.LASF428
	.byte	0x6
	.2byte	0x24cf
	.byte	0x45
	.4byte	0xa1a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x8
	.string	"p"
	.byte	0x6
	.2byte	0x24d1
	.byte	0x14
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF778
	.byte	0x6
	.2byte	0x24d2
	.byte	0x14
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF779
	.byte	0x6
	.2byte	0x24d3
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF780
	.byte	0x6
	.2byte	0x24e5
	.byte	0x15
	.4byte	0x27ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.4byte	0x8570
	.4byte	.LBB145
	.4byte	.LBE145-.LBB145
	.2byte	0x24f2
	.byte	0x5d
	.4byte	0x3db5
	.uleb128 0xc
	.4byte	0x857a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	0x8583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0xe
	.4byte	0x858c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1c
	.4byte	0x8570
	.4byte	.LBB147
	.4byte	.LBE147-.LBB147
	.2byte	0x2500
	.byte	0x55
	.4byte	0x3de2
	.uleb128 0xc
	.4byte	0x857a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.4byte	0x8583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0xe
	.4byte	0x858c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1c
	.4byte	0x8570
	.4byte	.LBB149
	.4byte	.LBE149-.LBB149
	.2byte	0x2501
	.byte	0x6c
	.4byte	0x3e10
	.uleb128 0xc
	.4byte	0x857a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.4byte	0x8583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0xe
	.4byte	0x858c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x21
	.4byte	0x8570
	.4byte	.LBB151
	.4byte	.LBE151-.LBB151
	.2byte	0x2502
	.byte	0x68
	.uleb128 0xc
	.4byte	0x857a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xc
	.4byte	0x8583
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0xe
	.4byte	0x858c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF781
	.2byte	0x2479
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB327
	.4byte	.LFE327-.LFB327
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e98
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x247a
	.byte	0x20
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF782
	.byte	0x6
	.2byte	0x247b
	.byte	0x26
	.4byte	0x2a2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF241
	.byte	0x6
	.2byte	0x247c
	.byte	0x22
	.4byte	0x255e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1
	.4byte	.LASF242
	.byte	0x6
	.2byte	0x247d
	.byte	0x22
	.4byte	0x255e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF783
	.2byte	0x243e
	.byte	0xe
	.4byte	0x74
	.4byte	.LFB326
	.4byte	.LFE326-.LFB326
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f2b
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x243f
	.byte	0x1a
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF780
	.byte	0x6
	.2byte	0x2440
	.byte	0x12
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.string	"i"
	.byte	0x6
	.2byte	0x2442
	.byte	0x12
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF544
	.byte	0x6
	.2byte	0x2443
	.byte	0xf
	.4byte	0x2aaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LBB144
	.4byte	.LBE144-.LBB144
	.uleb128 0x6
	.4byte	.LASF784
	.byte	0x6
	.2byte	0x244a
	.byte	0x16
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF785
	.byte	0x6
	.2byte	0x244d
	.byte	0x16
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF786
	.byte	0x6
	.2byte	0x2451
	.byte	0x1b
	.4byte	0x4cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF787
	.2byte	0x2405
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB325
	.4byte	.LFE325-.LFB325
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fe3
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x2405
	.byte	0x41
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF788
	.byte	0x6
	.2byte	0x2406
	.byte	0x3b
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF789
	.byte	0x6
	.2byte	0x2406
	.byte	0x49
	.4byte	0xa1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF624
	.byte	0x6
	.2byte	0x2407
	.byte	0x3b
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF625
	.byte	0x6
	.2byte	0x2407
	.byte	0x48
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	.LASF786
	.byte	0x6
	.2byte	0x2408
	.byte	0x3e
	.4byte	0x4cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x240a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"ctx"
	.byte	0x6
	.2byte	0x240b
	.byte	0x1a
	.4byte	0x52d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x240c
	.byte	0x1e
	.4byte	0x528
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.4byte	.LASF800
	.2byte	0x242f
	.4byte	.L1109
	.byte	0
	.uleb128 0x12
	.4byte	.LASF790
	.byte	0x6
	.2byte	0x21b3
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB324
	.4byte	.LFE324-.LFB324
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41c0
	.uleb128 0x1
	.4byte	.LASF396
	.byte	0x6
	.2byte	0x21b3
	.byte	0x40
	.4byte	0x27f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x1
	.4byte	.LASF369
	.byte	0x6
	.2byte	0x21b4
	.byte	0x2d
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x1
	.4byte	.LASF371
	.byte	0x6
	.2byte	0x21b5
	.byte	0x3d
	.4byte	0x126f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x1
	.4byte	.LASF377
	.byte	0x6
	.2byte	0x21b7
	.byte	0x2d
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x1
	.4byte	.LASF543
	.byte	0x6
	.2byte	0x21b9
	.byte	0x37
	.4byte	0x41c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x1
	.4byte	.LASF526
	.byte	0x6
	.2byte	0x21ba
	.byte	0x3d
	.4byte	0x126f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x1
	.4byte	.LASF368
	.byte	0x6
	.2byte	0x21bb
	.byte	0x46
	.4byte	0x255e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -378
	.uleb128 0x1
	.4byte	.LASF367
	.byte	0x6
	.2byte	0x21bc
	.byte	0x32
	.4byte	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x21bd
	.byte	0x44
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x21bf
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF791
	.byte	0x6
	.2byte	0x21c0
	.byte	0x13
	.4byte	0x41c5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x6
	.4byte	.LASF792
	.byte	0x6
	.2byte	0x21c1
	.byte	0x14
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF793
	.byte	0x6
	.2byte	0x21c2
	.byte	0x14
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF794
	.byte	0x6
	.2byte	0x21c3
	.byte	0x14
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.4byte	.LASF795
	.byte	0x6
	.2byte	0x21c4
	.byte	0x14
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.4byte	.LASF796
	.byte	0x6
	.2byte	0x21c5
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.4byte	.LASF797
	.byte	0x6
	.2byte	0x21c6
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.4byte	.LASF798
	.byte	0x6
	.2byte	0x21c7
	.byte	0xc
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.4byte	.LASF539
	.byte	0x6
	.2byte	0x21c8
	.byte	0x26
	.4byte	0x2a2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.4byte	.LASF799
	.byte	0x6
	.2byte	0x21c9
	.byte	0x18
	.4byte	0x2adb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x6
	.4byte	.LASF203
	.byte	0x6
	.2byte	0x21cb
	.byte	0x22
	.4byte	0x9dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x21cc
	.byte	0x1e
	.4byte	0x528
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x4c
	.string	"end"
	.byte	0x6
	.2byte	0x2370
	.byte	0x1
	.4byte	.L1083
	.uleb128 0x30
	.4byte	.LBB140
	.4byte	.LBE140-.LBB140
	.4byte	0x41a8
	.uleb128 0x6
	.4byte	.LASF801
	.byte	0x6
	.2byte	0x2252
	.byte	0x10
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x6
	.4byte	.LASF802
	.byte	0x6
	.2byte	0x2261
	.byte	0xd
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x4d
	.4byte	.LLRL0
	.uleb128 0x6
	.4byte	.LASF195
	.byte	0x6
	.2byte	0x227b
	.byte	0x10
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x2afa
	.uleb128 0x15
	.4byte	0x32
	.4byte	0x41d5
	.uleb128 0x16
	.4byte	0x74
	.byte	0xff
	.byte	0
	.uleb128 0x18
	.4byte	.LASF803
	.byte	0x6
	.2byte	0x218e
	.byte	0x1e
	.4byte	0x25b8
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4201
	.uleb128 0x1
	.4byte	.LASF543
	.byte	0x6
	.2byte	0x218e
	.byte	0x47
	.4byte	0x2a95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF804
	.byte	0x6
	.2byte	0x2175
	.byte	0x13
	.4byte	0x2ae8
	.4byte	.LFB322
	.4byte	.LFE322-.LFB322
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x423d
	.uleb128 0x1
	.4byte	.LASF747
	.byte	0x6
	.2byte	0x2175
	.byte	0x2c
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF539
	.byte	0x6
	.2byte	0x2177
	.byte	0x2d
	.4byte	0x2a31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF805
	.2byte	0x211c
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42a3
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x211c
	.byte	0x35
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x211e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF806
	.byte	0x6
	.2byte	0x211f
	.byte	0x12
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"buf"
	.byte	0x6
	.2byte	0x2120
	.byte	0x13
	.4byte	0x42a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.4byte	.LASF800
	.2byte	0x216b
	.4byte	.L1047
	.byte	0
	.uleb128 0x15
	.4byte	0x32
	.4byte	0x42b3
	.uleb128 0x16
	.4byte	0x74
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.4byte	.LASF807
	.2byte	0x20a9
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB320
	.4byte	.LFE320-.LFB320
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4316
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x20a9
	.byte	0x35
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x20ab
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF806
	.byte	0x6
	.2byte	0x20ac
	.byte	0x12
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.4byte	.LBB139
	.4byte	.LBE139-.LBB139
	.uleb128 0x8
	.string	"i"
	.byte	0x6
	.2byte	0x20e4
	.byte	0x17
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF808
	.2byte	0x206c
	.4byte	.LFB319
	.4byte	.LFE319-.LFB319
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x434c
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x206c
	.byte	0x38
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF528
	.byte	0x6
	.2byte	0x206e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF809
	.2byte	0x2054
	.4byte	.LFB318
	.4byte	.LFE318-.LFB318
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4372
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x2054
	.byte	0x4a
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF810
	.byte	0x6
	.2byte	0x2045
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB317
	.4byte	.LFE317-.LFB317
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43d1
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x2046
	.byte	0x1a
	.4byte	0x245f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0x2046
	.byte	0x2e
	.4byte	0x101
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.4byte	.LASF811
	.byte	0x6
	.2byte	0x2046
	.byte	0x37
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x6
	.4byte	.LASF812
	.byte	0x6
	.2byte	0x2048
	.byte	0x13
	.4byte	0x257b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x12
	.4byte	.LASF813
	.byte	0x6
	.2byte	0x2034
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB316
	.4byte	.LFE316-.LFB316
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x442d
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x2035
	.byte	0x1a
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0x2035
	.byte	0x2e
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF811
	.byte	0x6
	.2byte	0x2035
	.byte	0x37
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.4byte	.LASF812
	.byte	0x6
	.2byte	0x2037
	.byte	0x13
	.4byte	0x256b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x12
	.4byte	.LASF814
	.byte	0x6
	.2byte	0x1fdf
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB315
	.4byte	.LFE315-.LFB315
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4516
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1fdf
	.byte	0x3f
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"ctx"
	.byte	0x6
	.2byte	0x1fdf
	.byte	0x4a
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF812
	.byte	0x6
	.2byte	0x1fe0
	.byte	0x39
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF815
	.byte	0x6
	.2byte	0x1fe0
	.byte	0x48
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0x1fe1
	.byte	0x39
	.4byte	0x101
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	.LASF811
	.byte	0x6
	.2byte	0x1fe1
	.byte	0x42
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.string	"len"
	.byte	0x6
	.2byte	0x1fe3
	.byte	0x12
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF816
	.byte	0x6
	.2byte	0x1fe4
	.byte	0x11
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x1feb
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF817
	.byte	0x6
	.2byte	0x1fec
	.byte	0x1b
	.4byte	0x3000
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF818
	.byte	0x6
	.2byte	0x1fed
	.byte	0x1a
	.4byte	0x52d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.4byte	.LASF391
	.byte	0x6
	.2byte	0x1ff1
	.byte	0x1a
	.4byte	0x23fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.4byte	.LASF800
	.2byte	0x2029
	.4byte	.L1008
	.byte	0
	.uleb128 0xa
	.4byte	.LASF819
	.2byte	0x1f46
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB314
	.4byte	.LFE314-.LFB314
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45a7
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1f46
	.byte	0x38
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x1f48
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF820
	.byte	0x6
	.2byte	0x1f49
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF453
	.byte	0x6
	.2byte	0x1f4c
	.byte	0xf
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF223
	.byte	0x6
	.2byte	0x1f52
	.byte	0xb
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF754
	.byte	0x6
	.2byte	0x1f53
	.byte	0x17
	.4byte	0x114a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.4byte	.LASF800
	.2byte	0x1fc9
	.4byte	.L985
	.uleb128 0x24
	.4byte	.LASF821
	.2byte	0x1f94
	.4byte	.L987
	.byte	0
	.uleb128 0x12
	.4byte	.LASF822
	.byte	0x6
	.2byte	0x1ef5
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB313
	.4byte	.LFE313-.LFB313
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45f3
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1ef5
	.byte	0x42
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF453
	.byte	0x6
	.2byte	0x1ef6
	.byte	0x31
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF539
	.byte	0x6
	.2byte	0x1ef8
	.byte	0x26
	.4byte	0x2a2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF823
	.byte	0x6
	.2byte	0x1edb
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB312
	.4byte	.LFE312-.LFB312
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x461f
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1edb
	.byte	0x4a
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF824
	.byte	0x6
	.2byte	0x1e4a
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB311
	.4byte	.LFE311-.LFB311
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x470a
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1e4a
	.byte	0x3d
	.4byte	0x245f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	.LASF754
	.byte	0x6
	.2byte	0x1e4b
	.byte	0x3a
	.4byte	0x114a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x1e4d
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF825
	.byte	0x6
	.2byte	0x1e4f
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"i"
	.byte	0x6
	.2byte	0x1e51
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"n"
	.byte	0x6
	.2byte	0x1e51
	.byte	0xf
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF756
	.byte	0x6
	.2byte	0x1e52
	.byte	0xd
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x24
	.4byte	.LASF826
	.2byte	0x1ecc
	.4byte	.L969
	.uleb128 0x1c
	.4byte	0x859d
	.4byte	.LBB135
	.4byte	.LBE135-.LBB135
	.2byte	0x1e6d
	.byte	0x5a
	.4byte	0x46e0
	.uleb128 0xc
	.4byte	0x85aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.4byte	0x85b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0xe
	.4byte	0x85bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x21
	.4byte	0x859d
	.4byte	.LBB137
	.4byte	.LBE137-.LBB137
	.2byte	0x1e8f
	.byte	0x5e
	.uleb128 0xc
	.4byte	0x85aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.4byte	0x85b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0xe
	.4byte	0x85bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF827
	.byte	0x6
	.2byte	0x1e12
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB310
	.4byte	.LFE310-.LFB310
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4766
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1e12
	.byte	0x3e
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF828
	.byte	0x6
	.2byte	0x1e13
	.byte	0x38
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF829
	.byte	0x6
	.2byte	0x1e14
	.byte	0x30
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF830
	.byte	0x6
	.2byte	0x1e16
	.byte	0x24
	.4byte	0x126a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF831
	.2byte	0x1db8
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB309
	.4byte	.LFE309-.LFB309
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x47dd
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1db8
	.byte	0x38
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x1dba
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"i"
	.byte	0x6
	.2byte	0x1dbb
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"n"
	.byte	0x6
	.2byte	0x1dbb
	.byte	0xf
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"crt"
	.byte	0x6
	.2byte	0x1dbc
	.byte	0x1d
	.4byte	0x1265
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF539
	.byte	0x6
	.2byte	0x1dbd
	.byte	0x26
	.4byte	0x2a2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF832
	.2byte	0x1d76
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB308
	.4byte	.LFE308-.LFB308
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4832
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1d76
	.byte	0x3b
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.4byte	.LBB134
	.4byte	.LBE134-.LBB134
	.uleb128 0x6
	.4byte	.LASF833
	.byte	0x6
	.2byte	0x1d7b
	.byte	0x12
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF834
	.byte	0x6
	.2byte	0x1d7c
	.byte	0x17
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF835
	.2byte	0x1cf5
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB307
	.4byte	.LFE307-.LFB307
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x496e
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1cf5
	.byte	0x3b
	.4byte	0x245f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.4byte	.LASF836
	.byte	0x6
	.2byte	0x1cf5
	.byte	0x5c
	.4byte	0xb79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -85
	.uleb128 0x8
	.string	"p"
	.byte	0x6
	.2byte	0x1cf7
	.byte	0x14
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"end"
	.byte	0x6
	.2byte	0x1cf8
	.byte	0x14
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"psk"
	.byte	0x6
	.2byte	0x1cf9
	.byte	0x1a
	.4byte	0x126f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.4byte	.LASF497
	.byte	0x6
	.2byte	0x1cfa
	.byte	0xc
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x6
	.4byte	.LASF837
	.byte	0x6
	.2byte	0x1cfb
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.4byte	.LBB129
	.4byte	.LBE129-.LBB129
	.4byte	0x4916
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x1d46
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF838
	.byte	0x6
	.2byte	0x1d47
	.byte	0x10
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.4byte	0x8570
	.4byte	.LBB130
	.4byte	.LBE130-.LBB130
	.2byte	0x1d50
	.byte	0x59
	.uleb128 0xc
	.4byte	0x857a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.4byte	0x8583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0xe
	.4byte	0x858c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x8570
	.4byte	.LBB127
	.4byte	.LBE127-.LBB127
	.2byte	0x1d18
	.byte	0x5c
	.4byte	0x4943
	.uleb128 0xc
	.4byte	0x857a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	0x8583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0xe
	.4byte	0x858c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x21
	.4byte	0x8570
	.4byte	.LBB132
	.4byte	.LBE132-.LBB132
	.2byte	0x1d61
	.byte	0x58
	.uleb128 0xc
	.4byte	0x857a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.4byte	0x8583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0xe
	.4byte	0x858c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF839
	.byte	0x6
	.2byte	0x1ce5
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB306
	.4byte	.LFE306-.LFB306
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49ba
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1ce5
	.byte	0x3b
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF788
	.byte	0x6
	.2byte	0x1ce6
	.byte	0x2f
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF815
	.byte	0x6
	.2byte	0x1ce7
	.byte	0x28
	.4byte	0xa1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LASF840
	.byte	0x6
	.2byte	0x1cd6
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB305
	.4byte	.LFE305-.LFB305
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a06
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1cd6
	.byte	0x3b
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF788
	.byte	0x6
	.2byte	0x1cd7
	.byte	0x2f
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF815
	.byte	0x6
	.2byte	0x1cd8
	.byte	0x28
	.4byte	0xa1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LASF841
	.byte	0x6
	.2byte	0x1cad
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB304
	.4byte	.LFE304-.LFB304
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a8d
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1cad
	.byte	0x42
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF817
	.byte	0x6
	.2byte	0x1cae
	.byte	0x43
	.4byte	0x2fe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF788
	.byte	0x6
	.2byte	0x1caf
	.byte	0x36
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF815
	.byte	0x6
	.2byte	0x1cb0
	.byte	0x2f
	.4byte	0xa1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x1cb2
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF818
	.byte	0x6
	.2byte	0x1cb3
	.byte	0x1a
	.4byte	0x52d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.4byte	.LASF800
	.2byte	0x1ccf
	.4byte	.L905
	.byte	0
	.uleb128 0x19
	.4byte	.LASF842
	.2byte	0x1c76
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB303
	.4byte	.LFE303-.LFB303
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ac7
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1c76
	.byte	0x39
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"md"
	.byte	0x6
	.2byte	0x1c76
	.byte	0x42
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF843
	.2byte	0x1c38
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB302
	.4byte	.LFE302-.LFB302
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b2e
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1c38
	.byte	0x32
	.4byte	0x245f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x1c3a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF539
	.byte	0x6
	.2byte	0x1c3b
	.byte	0x2d
	.4byte	0x2a31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LBB126
	.4byte	.LBE126-.LBB126
	.uleb128 0x8
	.string	"tmp"
	.byte	0x6
	.2byte	0x1c55
	.byte	0x17
	.4byte	0x562
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF844
	.byte	0x6
	.2byte	0x1b78
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB301
	.4byte	.LFE301-.LFB301
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bdf
	.uleb128 0x1
	.4byte	.LASF393
	.byte	0x6
	.2byte	0x1b78
	.byte	0x3d
	.4byte	0x27ed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1
	.4byte	.LASF371
	.byte	0x6
	.2byte	0x1b79
	.byte	0x2e
	.4byte	0x101
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1b7a
	.byte	0x3a
	.4byte	0x2a6d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x1b7c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF845
	.byte	0x6
	.2byte	0x1b80
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF846
	.byte	0x6
	.2byte	0x1b83
	.byte	0x13
	.4byte	0x257b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x8
	.string	"lbl"
	.byte	0x6
	.2byte	0x1b8a
	.byte	0x11
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF847
	.byte	0x6
	.2byte	0x1b93
	.byte	0x1a
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF848
	.byte	0x6
	.2byte	0x1b94
	.byte	0xc
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x18
	.4byte	.LASF849
	.byte	0x6
	.2byte	0x1b4d
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB300
	.4byte	.LFE300-.LFB300
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c1b
	.uleb128 0x1
	.4byte	.LASF393
	.byte	0x6
	.2byte	0x1b4d
	.byte	0x41
	.4byte	0x27ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF788
	.byte	0x6
	.2byte	0x1b4e
	.byte	0x35
	.4byte	0x4cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x12
	.4byte	.LASF850
	.byte	0x6
	.2byte	0x1b39
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB299
	.4byte	.LFE299-.LFB299
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ca7
	.uleb128 0x1
	.4byte	.LASF851
	.byte	0x6
	.2byte	0x1b39
	.byte	0x30
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF852
	.byte	0x6
	.2byte	0x1b39
	.byte	0x3f
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF742
	.byte	0x6
	.2byte	0x1b3a
	.byte	0x27
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF853
	.byte	0x6
	.2byte	0x1b3b
	.byte	0x30
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF854
	.byte	0x6
	.2byte	0x1b3b
	.byte	0x3f
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF855
	.byte	0x6
	.2byte	0x1b3c
	.byte	0x2a
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF856
	.byte	0x6
	.2byte	0x1b3c
	.byte	0x39
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x12
	.4byte	.LASF857
	.byte	0x6
	.2byte	0x1b2d
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB298
	.4byte	.LFE298-.LFB298
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d33
	.uleb128 0x1
	.4byte	.LASF851
	.byte	0x6
	.2byte	0x1b2d
	.byte	0x30
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF852
	.byte	0x6
	.2byte	0x1b2d
	.byte	0x3f
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF742
	.byte	0x6
	.2byte	0x1b2e
	.byte	0x27
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF853
	.byte	0x6
	.2byte	0x1b2f
	.byte	0x30
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF854
	.byte	0x6
	.2byte	0x1b2f
	.byte	0x3f
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF855
	.byte	0x6
	.2byte	0x1b30
	.byte	0x2a
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF856
	.byte	0x6
	.2byte	0x1b30
	.byte	0x39
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x12
	.4byte	.LASF858
	.byte	0x6
	.2byte	0x1ac2
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB297
	.4byte	.LFE297-.LFB297
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e9d
	.uleb128 0x1
	.4byte	.LASF859
	.byte	0x6
	.2byte	0x1ac2
	.byte	0x2e
	.4byte	0x4cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -129
	.uleb128 0x1
	.4byte	.LASF851
	.byte	0x6
	.2byte	0x1ac3
	.byte	0x31
	.4byte	0x126f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1
	.4byte	.LASF852
	.byte	0x6
	.2byte	0x1ac3
	.byte	0x40
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x1
	.4byte	.LASF742
	.byte	0x6
	.2byte	0x1ac4
	.byte	0x28
	.4byte	0x117
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1
	.4byte	.LASF743
	.byte	0x6
	.2byte	0x1ac4
	.byte	0x36
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x1
	.4byte	.LASF853
	.byte	0x6
	.2byte	0x1ac5
	.byte	0x31
	.4byte	0x126f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1
	.4byte	.LASF854
	.byte	0x6
	.2byte	0x1ac5
	.byte	0x40
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x1
	.4byte	.LASF855
	.byte	0x6
	.2byte	0x1ac6
	.byte	0x2b
	.4byte	0x101
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1
	.4byte	.LASF856
	.byte	0x6
	.2byte	0x1ac6
	.byte	0x3a
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.string	"nb"
	.byte	0x6
	.2byte	0x1ac8
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.string	"i"
	.byte	0x6
	.2byte	0x1ac9
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"j"
	.byte	0x6
	.2byte	0x1ac9
	.byte	0xf
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"k"
	.byte	0x6
	.2byte	0x1ac9
	.byte	0x12
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF860
	.byte	0x6
	.2byte	0x1ac9
	.byte	0x15
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"tmp"
	.byte	0x6
	.2byte	0x1aca
	.byte	0x14
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.4byte	.LASF861
	.byte	0x6
	.2byte	0x1acb
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"h_i"
	.byte	0x6
	.2byte	0x1acc
	.byte	0x13
	.4byte	0x562
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x1acd
	.byte	0x1e
	.4byte	0x528
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x1ace
	.byte	0x1a
	.4byte	0x52d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x1acf
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.4byte	.LASF800
	.2byte	0x1b1b
	.4byte	.L849
	.byte	0
	.uleb128 0xa
	.4byte	.LASF862
	.2byte	0x19eb
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB296
	.4byte	.LFE296-.LFB296
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f9e
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x19eb
	.byte	0x38
	.4byte	0x245f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0x19ec
	.byte	0x38
	.4byte	0x126f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.string	"end"
	.byte	0x6
	.2byte	0x19ed
	.byte	0x38
	.4byte	0x126f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x8
	.string	"p"
	.byte	0x6
	.2byte	0x19ef
	.byte	0x1a
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF863
	.byte	0x6
	.2byte	0x19f0
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF864
	.byte	0x6
	.2byte	0x19f1
	.byte	0x1a
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF780
	.byte	0x6
	.2byte	0x19f2
	.byte	0xe
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x6
	.4byte	.LASF865
	.byte	0x6
	.2byte	0x19f3
	.byte	0xe
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.4byte	.LASF776
	.4byte	0x4fae
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.2
	.uleb128 0x1c
	.4byte	0x859d
	.4byte	.LBB122
	.4byte	.LBE122-.LBB122
	.2byte	0x19f6
	.byte	0x61
	.4byte	0x4f74
	.uleb128 0xc
	.4byte	0x85aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.4byte	0x85b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0xe
	.4byte	0x85bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x21
	.4byte	0x859d
	.4byte	.LBB124
	.4byte	.LBE124-.LBB124
	.2byte	0x1a00
	.byte	0x56
	.uleb128 0xc
	.4byte	0x85aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.4byte	0x85b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0xe
	.4byte	0x85bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x112
	.4byte	0x4fae
	.uleb128 0x16
	.4byte	0x74
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.4byte	0x4f9e
	.uleb128 0xa
	.4byte	.LASF866
	.2byte	0x19a1
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB295
	.4byte	.LFE295-.LFB295
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x501d
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x19a1
	.byte	0x3f
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"md"
	.byte	0x6
	.2byte	0x19a2
	.byte	0x42
	.4byte	0x4d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x5
	.string	"dst"
	.byte	0x6
	.2byte	0x19a3
	.byte	0x39
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF867
	.byte	0x6
	.2byte	0x19a4
	.byte	0x31
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF868
	.byte	0x6
	.2byte	0x19a5
	.byte	0x32
	.4byte	0xa1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x12
	.4byte	.LASF869
	.byte	0x6
	.2byte	0x197d
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB294
	.4byte	.LFE294-.LFB294
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50a4
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x197d
	.byte	0x45
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"dst"
	.byte	0x6
	.2byte	0x197e
	.byte	0x3f
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF867
	.byte	0x6
	.2byte	0x197f
	.byte	0x37
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF868
	.byte	0x6
	.2byte	0x1980
	.byte	0x38
	.4byte	0xa1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x1982
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF870
	.byte	0x6
	.2byte	0x1983
	.byte	0x1a
	.4byte	0x52d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.4byte	.LASF800
	.2byte	0x199a
	.4byte	.L818
	.byte	0
	.uleb128 0x12
	.4byte	.LASF871
	.byte	0x6
	.2byte	0x1957
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB293
	.4byte	.LFE293-.LFB293
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x512b
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1957
	.byte	0x45
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"dst"
	.byte	0x6
	.2byte	0x1958
	.byte	0x3f
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF867
	.byte	0x6
	.2byte	0x1959
	.byte	0x37
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF868
	.byte	0x6
	.2byte	0x195a
	.byte	0x38
	.4byte	0xa1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x195c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF872
	.byte	0x6
	.2byte	0x195d
	.byte	0x1a
	.4byte	0x52d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.4byte	.LASF800
	.2byte	0x1974
	.4byte	.L808
	.byte	0
	.uleb128 0x19
	.4byte	.LASF873
	.2byte	0x1918
	.byte	0xd
	.4byte	0x117
	.4byte	.LFB292
	.4byte	.LFE292-.LFB292
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x516e
	.uleb128 0x1
	.4byte	.LASF654
	.byte	0x6
	.2byte	0x1918
	.byte	0x3d
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1f
	.4byte	.LBB121
	.4byte	.LBE121-.LBB121
	.uleb128 0x8
	.string	"i"
	.byte	0x6
	.2byte	0x191a
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF874
	.2byte	0x18f6
	.byte	0xa
	.4byte	0xb5
	.4byte	.LFB291
	.4byte	.LFE291-.LFB291
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51b1
	.uleb128 0x1
	.4byte	.LASF875
	.byte	0x6
	.2byte	0x18f6
	.byte	0x48
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1f
	.4byte	.LBB120
	.4byte	.LBE120-.LBB120
	.uleb128 0x8
	.string	"i"
	.byte	0x6
	.2byte	0x18f8
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF876
	.2byte	0x18eb
	.byte	0x16
	.4byte	0x263
	.4byte	.LFB290
	.4byte	.LFE290-.LFB290
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51f4
	.uleb128 0x1
	.4byte	.LASF654
	.byte	0x6
	.2byte	0x18eb
	.byte	0x48
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1f
	.4byte	.LBB119
	.4byte	.LBE119-.LBB119
	.uleb128 0x8
	.string	"i"
	.byte	0x6
	.2byte	0x18ed
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF877
	.2byte	0x18d8
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB289
	.4byte	.LFE289-.LFB289
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5257
	.uleb128 0x1
	.4byte	.LASF654
	.byte	0x6
	.2byte	0x18d8
	.byte	0x39
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF199
	.byte	0x6
	.2byte	0x18d9
	.byte	0x40
	.4byte	0x5257
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF657
	.byte	0x6
	.2byte	0x18da
	.byte	0x38
	.4byte	0xa1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.4byte	.LBB118
	.4byte	.LBE118-.LBB118
	.uleb128 0x8
	.string	"i"
	.byte	0x6
	.2byte	0x18dc
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x54a
	.uleb128 0xa
	.4byte	.LASF878
	.2byte	0x189b
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB288
	.4byte	.LFE288-.LFB288
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52a7
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x189b
	.byte	0x38
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF875
	.byte	0x6
	.2byte	0x189b
	.byte	0x52
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x6
	.4byte	.LASF654
	.byte	0x6
	.2byte	0x189d
	.byte	0xe
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF879
	.2byte	0x1886
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB287
	.4byte	.LFE287-.LFB287
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52f2
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1886
	.byte	0x3f
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF654
	.byte	0x6
	.2byte	0x1886
	.byte	0x4d
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x6
	.4byte	.LASF494
	.byte	0x6
	.2byte	0x1888
	.byte	0x15
	.4byte	0x27ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF880
	.2byte	0x1862
	.byte	0xf
	.4byte	0x32
	.4byte	.LFB286
	.4byte	.LFE286-.LFB286
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x531c
	.uleb128 0x5
	.string	"md"
	.byte	0x6
	.2byte	0x1862
	.byte	0x30
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF881
	.2byte	0x183f
	.byte	0x13
	.4byte	0x4cc
	.4byte	.LFB285
	.4byte	.LFE285-.LFB285
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5347
	.uleb128 0x1
	.4byte	.LASF788
	.byte	0x6
	.2byte	0x183f
	.byte	0x3e
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x19
	.4byte	.LASF882
	.2byte	0x182a
	.byte	0x13
	.4byte	0xa8d
	.4byte	.LFB284
	.4byte	.LFE284-.LFB284
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5372
	.uleb128 0x5
	.string	"sig"
	.byte	0x6
	.2byte	0x182a
	.byte	0x3d
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x19
	.4byte	.LASF883
	.2byte	0x181d
	.byte	0xf
	.4byte	0x32
	.4byte	.LFB283
	.4byte	.LFE283-.LFB283
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x539d
	.uleb128 0x1
	.4byte	.LASF199
	.byte	0x6
	.2byte	0x181d
	.byte	0x3d
	.4byte	0xa8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF884
	.2byte	0x180e
	.byte	0xf
	.4byte	0x32
	.4byte	.LFB282
	.4byte	.LFE282-.LFB282
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53c7
	.uleb128 0x5
	.string	"pk"
	.byte	0x6
	.2byte	0x180e
	.byte	0x3b
	.4byte	0x1122
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF885
	.2byte	0x17e4
	.4byte	.LFB281
	.4byte	.LFE281-.LFB281
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53ed
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x17e4
	.byte	0x32
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	0x1ac5
	.uleb128 0xa
	.4byte	.LASF886
	.2byte	0x16ff
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB280
	.4byte	.LFE280-.LFB280
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x548c
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x16ff
	.byte	0x35
	.4byte	0x53ed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x1
	.4byte	.LASF367
	.byte	0x6
	.2byte	0x1700
	.byte	0x25
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x1
	.4byte	.LASF452
	.byte	0x6
	.2byte	0x1700
	.byte	0x33
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x1
	.4byte	.LASF887
	.byte	0x6
	.2byte	0x1700
	.byte	0x42
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x1703
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LBB117
	.4byte	.LBE117-.LBB117
	.uleb128 0x6
	.4byte	.LASF888
	.byte	0x6
	.2byte	0x176c
	.byte	0x1d
	.4byte	0x548c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x6
	.4byte	.LASF889
	.byte	0x6
	.2byte	0x176e
	.byte	0x1d
	.4byte	0x549c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x39
	.4byte	0x549c
	.uleb128 0x16
	.4byte	0x74
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.4byte	0x39
	.4byte	0x54ac
	.uleb128 0x16
	.4byte	0x74
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF890
	.byte	0x6
	.2byte	0x16e7
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB279
	.4byte	.LFE279-.LFB279
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5504
	.uleb128 0x1
	.4byte	.LASF493
	.byte	0x6
	.2byte	0x16e7
	.byte	0x3d
	.4byte	0x27ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"i"
	.byte	0x6
	.2byte	0x16e9
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"j"
	.byte	0x6
	.2byte	0x16e9
	.byte	0xf
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x16ea
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF891
	.2byte	0x1613
	.4byte	.LFB278
	.4byte	.LFE278-.LFB278
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x552a
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x1613
	.byte	0x32
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF892
	.2byte	0x15c8
	.4byte	.LFB277
	.4byte	.LFE277-.LFB277
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5588
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x15c8
	.byte	0x2c
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.4byte	.LBB115
	.4byte	.LBE115-.LBB115
	.4byte	0x556d
	.uleb128 0x6
	.4byte	.LASF434
	.byte	0x6
	.2byte	0x15d2
	.byte	0x10
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LBB116
	.4byte	.LBE116-.LBB116
	.uleb128 0x6
	.4byte	.LASF412
	.byte	0x6
	.2byte	0x15dd
	.byte	0x10
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF893
	.2byte	0x15b7
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB276
	.4byte	.LFE276-.LFB276
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55e3
	.uleb128 0x1
	.4byte	.LASF744
	.byte	0x6
	.2byte	0x15b7
	.byte	0x33
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0x15b8
	.byte	0x33
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"len"
	.byte	0x6
	.2byte	0x15b9
	.byte	0x25
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x15bb
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF894
	.byte	0x6
	.2byte	0x14af
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB275
	.4byte	.LFE275-.LFB275
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5795
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x14af
	.byte	0x32
	.4byte	0x245f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0x14b0
	.byte	0x32
	.4byte	0x126f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x5
	.string	"len"
	.byte	0x6
	.2byte	0x14b1
	.byte	0x24
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x8
	.string	"p"
	.byte	0x6
	.2byte	0x14b3
	.byte	0x1a
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"end"
	.byte	0x6
	.2byte	0x14b4
	.byte	0x21
	.4byte	0x1274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF895
	.byte	0x6
	.2byte	0x14b5
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x14b6
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF896
	.byte	0x6
	.2byte	0x14b8
	.byte	0x10
	.4byte	0x2ae8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.4byte	0x56ad
	.uleb128 0x6
	.4byte	.LASF771
	.byte	0x6
	.2byte	0x1572
	.byte	0x11
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x8
	.string	"cur"
	.byte	0x6
	.2byte	0x1573
	.byte	0x16
	.4byte	0x27bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	0x8544
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.2byte	0x14eb
	.byte	0x56
	.4byte	0x56da
	.uleb128 0xc
	.4byte	0x8552
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	0x855b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.4byte	0x8564
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1c
	.4byte	0x8544
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.2byte	0x154a
	.byte	0x6b
	.4byte	0x5708
	.uleb128 0xc
	.4byte	0x8552
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xe
	.4byte	0x855b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xe
	.4byte	0x8564
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1c
	.4byte	0x84eb
	.4byte	.LBB108
	.4byte	.LBE108-.LBB108
	.2byte	0x1552
	.byte	0x5d
	.4byte	0x5738
	.uleb128 0xc
	.4byte	0x84f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0xe
	.4byte	0x8502
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xe
	.4byte	0x850b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x1c
	.4byte	0x84eb
	.4byte	.LBB110
	.4byte	.LBE110-.LBB110
	.2byte	0x1555
	.byte	0x59
	.4byte	0x5768
	.uleb128 0xc
	.4byte	0x84f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xe
	.4byte	0x8502
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xe
	.4byte	0x850b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x21
	.4byte	0x859d
	.4byte	.LBB112
	.4byte	.LBE112-.LBB112
	.2byte	0x156c
	.byte	0x53
	.uleb128 0xc
	.4byte	0x85aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0xe
	.4byte	0x85b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -114
	.uleb128 0xe
	.4byte	0x85bc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF897
	.2byte	0x13e7
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB274
	.4byte	.LFE274-.LFB274
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5936
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x13e7
	.byte	0x33
	.4byte	0x245f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0x13e8
	.byte	0x2d
	.4byte	0x101
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1
	.4byte	.LASF898
	.byte	0x6
	.2byte	0x13e9
	.byte	0x25
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1
	.4byte	.LASF868
	.byte	0x6
	.2byte	0x13ea
	.byte	0x26
	.4byte	0xa1a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x8
	.string	"p"
	.byte	0x6
	.2byte	0x13ec
	.byte	0x14
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF899
	.byte	0x6
	.2byte	0x13ed
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF895
	.byte	0x6
	.2byte	0x13ee
	.byte	0xc
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x13ef
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.4byte	0x5850
	.uleb128 0x6
	.4byte	.LASF771
	.byte	0x6
	.2byte	0x148a
	.byte	0x17
	.4byte	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x1c
	.4byte	0x8517
	.4byte	.LBB93
	.4byte	.LBE93-.LBB93
	.2byte	0x143c
	.byte	0x60
	.4byte	0x587d
	.uleb128 0xc
	.4byte	0x8521
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	0x852a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.4byte	0x8533
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1c
	.4byte	0x8517
	.4byte	.LBB95
	.4byte	.LBE95-.LBB95
	.2byte	0x1464
	.byte	0x75
	.4byte	0x58aa
	.uleb128 0xc
	.4byte	0x8521
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.4byte	0x852a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.4byte	0x8533
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1c
	.4byte	0x84be
	.4byte	.LBB97
	.4byte	.LBE97-.LBB97
	.2byte	0x146b
	.byte	0x67
	.4byte	0x58d9
	.uleb128 0xc
	.4byte	0x84c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.4byte	0x84d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xe
	.4byte	0x84da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x1c
	.4byte	0x84be
	.4byte	.LBB99
	.4byte	.LBE99-.LBB99
	.2byte	0x146e
	.byte	0x63
	.4byte	0x5909
	.uleb128 0xc
	.4byte	0x84c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xc
	.4byte	0x84d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xe
	.4byte	0x84da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x21
	.4byte	0x8570
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.2byte	0x1483
	.byte	0x5d
	.uleb128 0xc
	.4byte	0x857a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xc
	.4byte	0x8583
	.uleb128 0x3
	.byte	0x91
	.sleb128 -98
	.uleb128 0xe
	.4byte	0x858c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF900
	.2byte	0x1376
	.4byte	.LFB273
	.4byte	.LFE273-.LFB273
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x595c
	.uleb128 0x1
	.4byte	.LASF391
	.byte	0x6
	.2byte	0x1376
	.byte	0x34
	.4byte	0x23fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF901
	.2byte	0x12cb
	.4byte	.LFB272
	.4byte	.LFE272-.LFB272
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5992
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x12cb
	.byte	0x36
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF393
	.byte	0x6
	.2byte	0x12cd
	.byte	0x23
	.4byte	0x27ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF902
	.2byte	0x1297
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB271
	.4byte	.LFE271-.LFB271
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59cd
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1297
	.byte	0x32
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x1299
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF903
	.2byte	0x126f
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB270
	.4byte	.LFE270-.LFB270
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a08
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x126f
	.byte	0x3a
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x1271
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF904
	.byte	0x6
	.2byte	0x1251
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB269
	.4byte	.LFE269-.LFB269
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a44
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1251
	.byte	0x39
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x1253
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF905
	.2byte	0x1228
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB268
	.4byte	.LFE268-.LFB268
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a7f
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x1228
	.byte	0x30
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x122a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF906
	.2byte	0x11cf
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB267
	.4byte	.LFE267-.LFB267
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ac5
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x11cf
	.byte	0x35
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x11d1
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.4byte	.LASF907
	.2byte	0x1221
	.4byte	.L583
	.byte	0
	.uleb128 0x12
	.4byte	.LASF908
	.byte	0x6
	.2byte	0x11ac
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB266
	.4byte	.LFE266-.LFB266
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b01
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x11ac
	.byte	0x3c
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x11ae
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF909
	.2byte	0x119b
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB265
	.4byte	.LFE265-.LFB265
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b5c
	.uleb128 0x1
	.4byte	.LASF391
	.byte	0x6
	.2byte	0x119b
	.byte	0x33
	.4byte	0x23fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0x119c
	.byte	0x33
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"len"
	.byte	0x6
	.2byte	0x119d
	.byte	0x25
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x119f
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF910
	.byte	0x6
	.2byte	0x115d
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB264
	.4byte	.LFE264-.LFB264
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c0f
	.uleb128 0x1
	.4byte	.LASF391
	.byte	0x6
	.2byte	0x115d
	.byte	0x32
	.4byte	0x23fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF911
	.byte	0x6
	.2byte	0x115e
	.byte	0x2b
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0x115f
	.byte	0x32
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.string	"len"
	.byte	0x6
	.2byte	0x1160
	.byte	0x24
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.string	"p"
	.byte	0x6
	.2byte	0x1162
	.byte	0x1a
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"end"
	.byte	0x6
	.2byte	0x1163
	.byte	0x21
	.4byte	0x1274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF912
	.byte	0x6
	.2byte	0x1164
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.4byte	0x859d
	.4byte	.LBB91
	.4byte	.LBE91-.LBB91
	.2byte	0x1183
	.byte	0x5f
	.uleb128 0xc
	.4byte	0x85aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.4byte	0x85b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0xe
	.4byte	0x85bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF913
	.2byte	0x114e
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB263
	.4byte	.LFE263-.LFB263
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c6a
	.uleb128 0x1
	.4byte	.LASF391
	.byte	0x6
	.2byte	0x114e
	.byte	0x39
	.4byte	0x242a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0x114f
	.byte	0x2d
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF898
	.byte	0x6
	.2byte	0x1150
	.byte	0x25
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF868
	.byte	0x6
	.2byte	0x1151
	.byte	0x26
	.4byte	0xa1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x12
	.4byte	.LASF914
	.byte	0x6
	.2byte	0x1101
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB262
	.4byte	.LFE262-.LFB262
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d2e
	.uleb128 0x1
	.4byte	.LASF391
	.byte	0x6
	.2byte	0x1101
	.byte	0x38
	.4byte	0x242a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF911
	.byte	0x6
	.2byte	0x1102
	.byte	0x2b
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0x1103
	.byte	0x2c
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF898
	.byte	0x6
	.2byte	0x1104
	.byte	0x24
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF868
	.byte	0x6
	.2byte	0x1105
	.byte	0x25
	.4byte	0xa1a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x8
	.string	"p"
	.byte	0x6
	.2byte	0x1107
	.byte	0x14
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF899
	.byte	0x6
	.2byte	0x1108
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF912
	.byte	0x6
	.2byte	0x1109
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.4byte	0x8570
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.2byte	0x1128
	.byte	0x69
	.uleb128 0xc
	.4byte	0x857a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.4byte	0x8583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xe
	.4byte	0x858c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF915
	.byte	0x6
	.2byte	0xe13
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB261
	.4byte	.LFE261-.LFB261
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e1f
	.uleb128 0x1
	.4byte	.LASF391
	.byte	0x6
	.2byte	0xe13
	.byte	0x38
	.4byte	0x23fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0xe14
	.byte	0x38
	.4byte	0x126f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.string	"len"
	.byte	0x6
	.2byte	0xe15
	.byte	0x2a
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x6
	.4byte	.LASF916
	.byte	0x6
	.2byte	0xe1c
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"p"
	.byte	0x6
	.2byte	0xe20
	.byte	0x1a
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"end"
	.byte	0x6
	.2byte	0xe21
	.byte	0x21
	.4byte	0x1274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.4byte	0x5dc8
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0xe5d
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.4byte	0x8544
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.2byte	0xe3f
	.byte	0x61
	.4byte	0x5df5
	.uleb128 0xc
	.4byte	0x8552
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.4byte	0x855b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	0x8564
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x21
	.4byte	0x8544
	.4byte	.LBB87
	.4byte	.LBE87-.LBB87
	.2byte	0xeb8
	.byte	0x67
	.uleb128 0xc
	.4byte	0x8552
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	0x855b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.4byte	0x8564
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF917
	.byte	0x6
	.2byte	0xd7c
	.byte	0xf
	.4byte	0x80
	.4byte	.LFB260
	.4byte	.LFE260-.LFB260
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ef2
	.uleb128 0x1
	.4byte	.LASF391
	.byte	0x6
	.2byte	0xd7c
	.byte	0x41
	.4byte	0x242a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0xd7d
	.byte	0x35
	.4byte	0x101
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.4byte	.LASF898
	.byte	0x6
	.2byte	0xd7e
	.byte	0x2d
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x8
	.string	"p"
	.byte	0x6
	.2byte	0xd80
	.byte	0x14
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF899
	.byte	0x6
	.2byte	0xd81
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF916
	.byte	0x6
	.2byte	0xd88
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.4byte	0x8517
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.2byte	0xdaa
	.byte	0x6b
	.4byte	0x5ec8
	.uleb128 0xc
	.4byte	0x8521
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.4byte	0x852a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	0x8533
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x21
	.4byte	0x8517
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.2byte	0xdeb
	.byte	0x71
	.uleb128 0xc
	.4byte	0x8521
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.4byte	0x852a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	0x8533
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF918
	.2byte	0xd50
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB259
	.4byte	.LFE259-.LFB259
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f3d
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xd50
	.byte	0x38
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"dst"
	.byte	0x6
	.2byte	0xd51
	.byte	0x32
	.4byte	0x23fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0xd53
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF919
	.2byte	0xd41
	.byte	0x19
	.4byte	0x1265
	.4byte	.LFB258
	.4byte	.LFE258-.LFB258
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f68
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xd41
	.byte	0x4e
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF920
	.2byte	0xd2d
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB257
	.4byte	.LFE257-.LFB257
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5fb3
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xd2d
	.byte	0x46
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF921
	.byte	0x6
	.2byte	0xd2f
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"mfl"
	.byte	0x6
	.2byte	0xd36
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF922
	.2byte	0xce5
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB256
	.4byte	.LFE256-.LFB256
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6038
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xce5
	.byte	0x47
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.4byte	.LASF921
	.byte	0x6
	.2byte	0xce7
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"mfl"
	.byte	0x6
	.2byte	0xcf0
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LBB79
	.4byte	.LBE79-.LBB79
	.uleb128 0x8
	.string	"mtu"
	.byte	0x6
	.2byte	0xd11
	.byte	0x16
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0xd12
	.byte	0x13
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF923
	.byte	0x6
	.2byte	0xd13
	.byte	0x16
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF924
	.2byte	0xccf
	.byte	0x8
	.4byte	0x80
	.4byte	.LFB255
	.4byte	.LFE255-.LFB255
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6063
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xccf
	.byte	0x3f
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF925
	.2byte	0xcb5
	.byte	0x8
	.4byte	0x80
	.4byte	.LFB254
	.4byte	.LFE254-.LFB254
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x609e
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xcb5
	.byte	0x47
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF921
	.byte	0x6
	.2byte	0xcb7
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF926
	.2byte	0xc95
	.byte	0x8
	.4byte	0x80
	.4byte	.LFB253
	.4byte	.LFE253-.LFB253
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60e9
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xc95
	.byte	0x46
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF921
	.byte	0x6
	.2byte	0xc97
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF927
	.byte	0x6
	.2byte	0xc98
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.4byte	.LASF928
	.2byte	0xc64
	.byte	0xd
	.4byte	0x117
	.4byte	.LFB252
	.4byte	.LFE252-.LFB252
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6114
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xc64
	.byte	0x40
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF929
	.2byte	0xc5b
	.byte	0xd
	.4byte	0x117
	.4byte	.LFB251
	.4byte	.LFE251-.LFB251
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x613f
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xc5b
	.byte	0x44
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF930
	.2byte	0xc52
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB250
	.4byte	.LFE250-.LFB250
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x616a
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xc52
	.byte	0x48
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF931
	.2byte	0xc45
	.byte	0xa
	.4byte	0xc6
	.4byte	.LFB249
	.4byte	.LFE249-.LFB249
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6195
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xc45
	.byte	0x43
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF932
	.2byte	0xc39
	.4byte	.LFB248
	.4byte	.LFE248-.LFB248
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61cb
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xc39
	.byte	0x40
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"ctx"
	.byte	0x6
	.2byte	0xc3a
	.byte	0x31
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.4byte	.LASF933
	.2byte	0xc30
	.byte	0x7
	.4byte	0xfa
	.4byte	.LFB247
	.4byte	.LFE247-.LFB247
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61f6
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xc30
	.byte	0x47
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF934
	.2byte	0xc2b
	.byte	0x7
	.4byte	0xfa
	.4byte	.LFB246
	.4byte	.LFE246-.LFB246
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6221
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xc2b
	.byte	0x48
	.4byte	0x27d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF935
	.2byte	0xc1c
	.4byte	.LFB245
	.4byte	.LFE245-.LFB245
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6297
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xc1d
	.byte	0x19
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF936
	.byte	0x6
	.2byte	0xc1e
	.byte	0x1f
	.4byte	0x27a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF937
	.byte	0x6
	.2byte	0xc1f
	.byte	0x22
	.4byte	0x27ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF490
	.byte	0x6
	.2byte	0xc20
	.byte	0x21
	.4byte	0x27b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF491
	.byte	0x6
	.2byte	0xc21
	.byte	0x21
	.4byte	0x27b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF938
	.byte	0x6
	.2byte	0xc22
	.byte	0xb
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x13
	.4byte	.LASF939
	.2byte	0xc13
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x62dd
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xc13
	.byte	0x3a
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF448
	.byte	0x6
	.2byte	0xc14
	.byte	0x40
	.4byte	0x2811
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF449
	.byte	0x6
	.2byte	0xc15
	.byte	0x2b
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.4byte	.LASF940
	.2byte	0xc07
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6333
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xc07
	.byte	0x3e
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF478
	.byte	0x6
	.2byte	0xc08
	.byte	0x46
	.4byte	0x6333
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF479
	.byte	0x6
	.2byte	0xc09
	.byte	0x46
	.4byte	0x6338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF480
	.byte	0x6
	.2byte	0xc0a
	.byte	0x30
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	0x2816
	.uleb128 0x7
	.4byte	0x2823
	.uleb128 0x13
	.4byte	.LASF941
	.2byte	0xbeb
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6373
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xbeb
	.byte	0x3b
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF942
	.byte	0x6
	.2byte	0xbeb
	.byte	0x45
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF943
	.2byte	0xbe1
	.4byte	.LFB241
	.4byte	.LFE241-.LFB241
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63a9
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xbe1
	.byte	0x40
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF944
	.byte	0x6
	.2byte	0xbe2
	.byte	0x40
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF945
	.2byte	0xbdc
	.4byte	.LFB240
	.4byte	.LFE240-.LFB240
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63df
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xbdc
	.byte	0x42
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF946
	.byte	0x6
	.2byte	0xbdc
	.byte	0x4c
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF947
	.2byte	0xbd7
	.4byte	.LFB239
	.4byte	.LFE239-.LFB239
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6415
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xbd7
	.byte	0x39
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF948
	.byte	0x6
	.2byte	0xbd7
	.byte	0x43
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF949
	.2byte	0xbd1
	.4byte	.LFB238
	.4byte	.LFE238-.LFB238
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x644b
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xbd1
	.byte	0x40
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF950
	.byte	0x6
	.2byte	0xbd1
	.byte	0x4a
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF951
	.2byte	0xbc4
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6486
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xbc4
	.byte	0x37
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF365
	.byte	0x6
	.2byte	0xbc4
	.byte	0x4b
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x13
	.4byte	.LASF952
	.2byte	0xbbd
	.4byte	.LFB236
	.4byte	.LFE236-.LFB236
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64bc
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xbbd
	.byte	0x42
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"ems"
	.byte	0x6
	.2byte	0xbbd
	.byte	0x4d
	.4byte	0x10b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x13
	.4byte	.LASF953
	.2byte	0xbb6
	.4byte	.LFB235
	.4byte	.LFE235-.LFB235
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64f2
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xbb6
	.byte	0x3c
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"etm"
	.byte	0x6
	.2byte	0xbb6
	.byte	0x47
	.4byte	0x10b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x13
	.4byte	.LASF954
	.2byte	0xbae
	.4byte	.LFB234
	.4byte	.LFE234-.LFB234
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6528
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xbae
	.byte	0x3c
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF459
	.byte	0x6
	.2byte	0xbaf
	.byte	0x2d
	.4byte	0x10b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF955
	.2byte	0xb92
	.4byte	.LFB233
	.4byte	.LFE233-.LFB233
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x655e
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xb92
	.byte	0x4e
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF438
	.byte	0x6
	.2byte	0xb93
	.byte	0x4b
	.4byte	0x655e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.4byte	0x252e
	.uleb128 0xa
	.4byte	.LASF956
	.2byte	0xb73
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB232
	.4byte	.LFE232-.LFB232
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65bc
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xb73
	.byte	0x48
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF957
	.byte	0x6
	.2byte	0xb74
	.byte	0x54
	.4byte	0x27c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"p"
	.byte	0x6
	.2byte	0xb76
	.byte	0x25
	.4byte	0x27c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF958
	.byte	0x6
	.2byte	0xb77
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF959
	.2byte	0xb62
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB231
	.4byte	.LFE231-.LFB231
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6607
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xb62
	.byte	0x3e
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF591
	.byte	0x6
	.2byte	0xb63
	.byte	0x38
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF590
	.byte	0x6
	.2byte	0xb64
	.byte	0x32
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x13
	.4byte	.LASF960
	.2byte	0xb5c
	.4byte	.LFB230
	.4byte	.LFE230-.LFB230
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x663d
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xb5c
	.byte	0x44
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF961
	.byte	0x6
	.2byte	0xb5d
	.byte	0x34
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.4byte	.LASF962
	.2byte	0xb55
	.byte	0xd
	.4byte	0x117
	.4byte	.LFB229
	.4byte	.LFE229-.LFB229
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6668
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xb55
	.byte	0x46
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF963
	.2byte	0xb3a
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB228
	.4byte	.LFE228-.LFB228
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x66d1
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xb3a
	.byte	0x39
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF964
	.byte	0x6
	.2byte	0xb3a
	.byte	0x4c
	.4byte	0x27bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF965
	.byte	0x6
	.2byte	0xb3c
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF966
	.byte	0x6
	.2byte	0xb3c
	.byte	0x15
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"p"
	.byte	0x6
	.2byte	0xb3d
	.byte	0x12
	.4byte	0x27bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF967
	.2byte	0xb2f
	.4byte	.LFB227
	.4byte	.LFE227-.LFB227
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6717
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xb2f
	.byte	0x2f
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF471
	.byte	0x6
	.2byte	0xb30
	.byte	0x21
	.4byte	0x6735
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF472
	.byte	0x6
	.2byte	0xb32
	.byte	0x21
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x6735
	.uleb128 0x2
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x245f
	.uleb128 0x2
	.4byte	0x126f
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x7
	.4byte	0x6717
	.uleb128 0xa
	.4byte	.LASF968
	.2byte	0xb02
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6785
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xb02
	.byte	0x33
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF436
	.byte	0x6
	.2byte	0xb02
	.byte	0x44
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF774
	.byte	0x6
	.2byte	0xb05
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF987
	.byte	0x6
	.2byte	0xaf9
	.byte	0xd
	.4byte	.LFB225
	.4byte	.LFE225-.LFB225
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67ad
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xaf9
	.byte	0x3c
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF969
	.2byte	0xaf1
	.byte	0xd
	.4byte	0x117
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67d8
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xaf1
	.byte	0x49
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF970
	.byte	0x6
	.2byte	0xae5
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB223
	.4byte	.LFE223-.LFB223
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6804
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0xae6
	.byte	0x20
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF971
	.2byte	0xacb
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x683a
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xacb
	.byte	0x32
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF494
	.byte	0x6
	.2byte	0xacc
	.byte	0x2e
	.4byte	0x27ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF972
	.2byte	0xaab
	.4byte	.LFB221
	.4byte	.LFE221-.LFB221
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6870
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xaab
	.byte	0x34
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF493
	.byte	0x6
	.2byte	0xaac
	.byte	0x30
	.4byte	0x27ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF973
	.2byte	0xa97
	.4byte	.LFB220
	.4byte	.LFE220-.LFB220
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x68a6
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xa97
	.byte	0x3a
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF974
	.byte	0x6
	.2byte	0xa98
	.byte	0x33
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF975
	.2byte	0xa7f
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB219
	.4byte	.LFE219-.LFB219
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x68f1
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xa7f
	.byte	0x37
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF545
	.byte	0x6
	.2byte	0xa7f
	.byte	0x52
	.4byte	0x31c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0xa81
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF976
	.2byte	0xa6c
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x696c
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0xa6c
	.byte	0x37
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF495
	.byte	0x6
	.2byte	0xa6d
	.byte	0x38
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF977
	.byte	0x6
	.2byte	0xa6d
	.byte	0x46
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF496
	.byte	0x6
	.2byte	0xa6e
	.byte	0x38
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF978
	.byte	0x6
	.2byte	0xa6e
	.byte	0x46
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0xa70
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF979
	.2byte	0x981
	.byte	0x14
	.4byte	0x2adb
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69c7
	.uleb128 0x1
	.4byte	.LASF377
	.byte	0x6
	.2byte	0x983
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF980
	.byte	0x6
	.2byte	0x985
	.byte	0x26
	.4byte	0x2a2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF981
	.byte	0x6
	.2byte	0x987
	.byte	0x18
	.4byte	0x2adb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x6
	.4byte	.LASF239
	.byte	0x6
	.2byte	0x994
	.byte	0x22
	.4byte	0x9dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF982
	.2byte	0x96f
	.byte	0x14
	.4byte	0x2adb
	.4byte	.LFB216
	.4byte	.LFE216-.LFB216
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a12
	.uleb128 0x1
	.4byte	.LASF396
	.byte	0x6
	.2byte	0x970
	.byte	0x22
	.4byte	0x6a12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF981
	.byte	0x6
	.2byte	0x972
	.byte	0x18
	.4byte	0x2adb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x6
	.4byte	.LASF377
	.byte	0x6
	.2byte	0x97a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.4byte	0x1eb9
	.uleb128 0x18
	.4byte	.LASF983
	.byte	0x6
	.2byte	0x960
	.byte	0x1b
	.4byte	0x2adb
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a53
	.uleb128 0x1
	.4byte	.LASF981
	.byte	0x6
	.2byte	0x961
	.byte	0x18
	.4byte	0x2adb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF377
	.byte	0x6
	.2byte	0x962
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.4byte	.LASF984
	.byte	0x6
	.2byte	0x949
	.byte	0x1b
	.4byte	0x2adb
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a7f
	.uleb128 0x1
	.4byte	.LASF198
	.byte	0x6
	.2byte	0x94a
	.byte	0x1b
	.4byte	0x7e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x13
	.4byte	.LASF985
	.2byte	0x92c
	.4byte	.LFB213
	.4byte	.LFE213-.LFB213
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ac5
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x92c
	.byte	0x32
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF473
	.byte	0x6
	.2byte	0x92d
	.byte	0x24
	.4byte	0x6735
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF474
	.byte	0x6
	.2byte	0x92f
	.byte	0x24
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF986
	.2byte	0x8c1
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b10
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x8c1
	.byte	0x31
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"psk"
	.byte	0x6
	.2byte	0x8c2
	.byte	0x31
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF497
	.byte	0x6
	.2byte	0x8c2
	.byte	0x3d
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF988
	.byte	0x6
	.2byte	0x8ab
	.byte	0xd
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b38
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x8ab
	.byte	0x31
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF989
	.2byte	0x886
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6bb3
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x886
	.byte	0x2e
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"psk"
	.byte	0x6
	.2byte	0x887
	.byte	0x2f
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF497
	.byte	0x6
	.2byte	0x887
	.byte	0x3b
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF498
	.byte	0x6
	.2byte	0x888
	.byte	0x2f
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF499
	.byte	0x6
	.2byte	0x888
	.byte	0x44
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x88a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF990
	.byte	0x6
	.2byte	0x86f
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6bff
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x86f
	.byte	0x3a
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF498
	.byte	0x6
	.2byte	0x870
	.byte	0x3b
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF499
	.byte	0x6
	.2byte	0x871
	.byte	0x2d
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF991
	.byte	0x6
	.2byte	0x852
	.byte	0xd
	.4byte	.LFB208
	.4byte	.LFE208-.LFB208
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c27
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x852
	.byte	0x35
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF992
	.2byte	0x83e
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB207
	.4byte	.LFE207-.LFB207
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c52
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x83e
	.byte	0x3f
	.4byte	0x27d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF993
	.2byte	0x79f
	.4byte	.LFB206
	.4byte	.LFE206-.LFB206
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c98
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x79f
	.byte	0x32
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF383
	.byte	0x6
	.2byte	0x7a0
	.byte	0x23
	.4byte	0x26ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF384
	.byte	0x6
	.2byte	0x7a1
	.byte	0x23
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.4byte	.LASF994
	.2byte	0x797
	.4byte	.LFB205
	.4byte	.LFE205-.LFB205
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6cce
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x797
	.byte	0x37
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF453
	.byte	0x6
	.2byte	0x798
	.byte	0x26
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF995
	.2byte	0x790
	.4byte	.LFB204
	.4byte	.LFE204-.LFB204
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d04
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x790
	.byte	0x37
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"crt"
	.byte	0x6
	.2byte	0x791
	.byte	0x3a
	.4byte	0x1265
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF996
	.2byte	0x787
	.4byte	.LFB203
	.4byte	.LFE203-.LFB203
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d4a
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x787
	.byte	0x37
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF484
	.byte	0x6
	.2byte	0x788
	.byte	0x34
	.4byte	0x114a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF485
	.byte	0x6
	.2byte	0x789
	.byte	0x34
	.4byte	0x27a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF997
	.2byte	0x77f
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d95
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x77f
	.byte	0x36
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF998
	.byte	0x6
	.2byte	0x780
	.byte	0x33
	.4byte	0x114a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF999
	.byte	0x6
	.2byte	0x781
	.byte	0x35
	.4byte	0x1122
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1000
	.2byte	0x778
	.byte	0x16
	.4byte	0x126f
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6dd0
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x778
	.byte	0x42
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF1001
	.byte	0x6
	.2byte	0x779
	.byte	0x35
	.4byte	0xa1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1002
	.2byte	0x768
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e16
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x768
	.byte	0x31
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF486
	.byte	0x6
	.2byte	0x769
	.byte	0x36
	.4byte	0x1279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF487
	.byte	0x6
	.2byte	0x76a
	.byte	0x23
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1003
	.2byte	0x758
	.4byte	.LFB199
	.4byte	.LFE199-.LFB199
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e5c
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x758
	.byte	0x34
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF484
	.byte	0x6
	.2byte	0x759
	.byte	0x32
	.4byte	0x114a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF485
	.byte	0x6
	.2byte	0x75a
	.byte	0x32
	.4byte	0x27a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1004
	.2byte	0x751
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB198
	.4byte	.LFE198-.LFB198
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ea7
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x751
	.byte	0x33
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF998
	.byte	0x6
	.2byte	0x752
	.byte	0x31
	.4byte	0x114a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF999
	.byte	0x6
	.2byte	0x753
	.byte	0x33
	.4byte	0x1122
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1005
	.byte	0x6
	.2byte	0x72d
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB197
	.4byte	.LFE197-.LFB197
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f1d
	.uleb128 0x1
	.4byte	.LASF1006
	.byte	0x6
	.2byte	0x72d
	.byte	0x37
	.4byte	0x6f1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF579
	.byte	0x6
	.2byte	0x72e
	.byte	0x32
	.4byte	0x114a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"key"
	.byte	0x6
	.2byte	0x72f
	.byte	0x34
	.4byte	0x1122
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF1007
	.byte	0x6
	.2byte	0x731
	.byte	0x1b
	.4byte	0x279c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.uleb128 0x8
	.string	"cur"
	.byte	0x6
	.2byte	0x747
	.byte	0x1f
	.4byte	0x279c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x279c
	.uleb128 0x2b
	.4byte	.LASF1008
	.byte	0x6
	.2byte	0x720
	.byte	0xd
	.4byte	.LFB196
	.4byte	.LFE196-.LFB196
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f6a
	.uleb128 0x1
	.4byte	.LASF483
	.byte	0x6
	.2byte	0x720
	.byte	0x35
	.4byte	0x279c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"cur"
	.byte	0x6
	.2byte	0x722
	.byte	0x1b
	.4byte	0x279c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF245
	.byte	0x6
	.2byte	0x722
	.byte	0x2c
	.4byte	0x279c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1009
	.2byte	0x71a
	.4byte	.LFB195
	.4byte	.LFE195-.LFB195
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fa0
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x71a
	.byte	0x38
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF1010
	.byte	0x6
	.2byte	0x71b
	.byte	0x44
	.4byte	0x2797
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1011
	.2byte	0x6fa
	.4byte	.LFB194
	.4byte	.LFE194-.LFB194
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fd6
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x6fa
	.byte	0x38
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF1012
	.byte	0x6
	.2byte	0x6fb
	.byte	0x2f
	.4byte	0x266f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1013
	.2byte	0x6c8
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB193
	.4byte	.LFE193-.LFB193
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7021
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x6c8
	.byte	0x32
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF391
	.byte	0x6
	.2byte	0x6c8
	.byte	0x52
	.4byte	0x242a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x6ca
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1014
	.2byte	0x6bc
	.4byte	.LFB192
	.4byte	.LFE192-.LFB192
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7077
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x6bc
	.byte	0x39
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF470
	.byte	0x6
	.2byte	0x6bd
	.byte	0x2b
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF468
	.byte	0x6
	.2byte	0x6be
	.byte	0x3e
	.4byte	0x269d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF469
	.byte	0x6
	.2byte	0x6bf
	.byte	0x3e
	.4byte	0x26a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF1015
	.2byte	0x6ae
	.4byte	.LFB191
	.4byte	.LFE191-.LFB191
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70cd
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x6ae
	.byte	0x34
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF398
	.byte	0x6
	.2byte	0x6af
	.byte	0x25
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF399
	.byte	0x6
	.2byte	0x6b0
	.byte	0x38
	.4byte	0x27f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF400
	.byte	0x6
	.2byte	0x6b1
	.byte	0x38
	.4byte	0x27fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1016
	.2byte	0x6a9
	.4byte	.LFB190
	.4byte	.LFE190-.LFB190
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7103
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x6a9
	.byte	0x38
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF1017
	.byte	0x6
	.2byte	0x6a9
	.byte	0x47
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1018
	.2byte	0x6a3
	.4byte	.LFB189
	.4byte	.LFE189-.LFB189
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7139
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x6a3
	.byte	0x2f
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"mtu"
	.byte	0x6
	.2byte	0x6a3
	.byte	0x3d
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1019
	.2byte	0x696
	.4byte	.LFB188
	.4byte	.LFE188-.LFB188
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x719f
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x696
	.byte	0x2f
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF388
	.byte	0x6
	.2byte	0x697
	.byte	0x20
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF385
	.byte	0x6
	.2byte	0x698
	.byte	0x2e
	.4byte	0x27de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF386
	.byte	0x6
	.2byte	0x699
	.byte	0x2e
	.4byte	0x27e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF387
	.byte	0x6
	.2byte	0x69a
	.byte	0x36
	.4byte	0x27e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1020
	.2byte	0x68e
	.4byte	.LFB187
	.4byte	.LFE187-.LFB187
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71e5
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x68e
	.byte	0x2f
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF464
	.byte	0x6
	.2byte	0x68f
	.byte	0x22
	.4byte	0x2693
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF465
	.byte	0x6
	.2byte	0x690
	.byte	0x21
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1021
	.2byte	0x686
	.4byte	.LFB186
	.4byte	.LFE186-.LFB186
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x722b
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x686
	.byte	0x2f
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF466
	.byte	0x6
	.2byte	0x687
	.byte	0x21
	.4byte	0x2698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF467
	.byte	0x6
	.2byte	0x688
	.byte	0x21
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1022
	.2byte	0x67d
	.4byte	.LFB185
	.4byte	.LFE185-.LFB185
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7271
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x67d
	.byte	0x32
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF383
	.byte	0x6
	.2byte	0x67e
	.byte	0x24
	.4byte	0x26ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF384
	.byte	0x6
	.2byte	0x67f
	.byte	0x24
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1023
	.2byte	0x677
	.4byte	.LFB184
	.4byte	.LFE184-.LFB184
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72a7
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x677
	.byte	0x34
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF453
	.byte	0x6
	.2byte	0x677
	.byte	0x3e
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1024
	.2byte	0x66f
	.4byte	.LFB183
	.4byte	.LFE183-.LFB183
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72ed
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x66f
	.byte	0x3d
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"min"
	.byte	0x6
	.2byte	0x670
	.byte	0x32
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"max"
	.byte	0x6
	.2byte	0x670
	.byte	0x40
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1025
	.2byte	0x669
	.4byte	.LFB182
	.4byte	.LFE182-.LFB182
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7323
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x669
	.byte	0x3c
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF1026
	.byte	0x6
	.2byte	0x66a
	.byte	0x30
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1027
	.2byte	0x662
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7359
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x662
	.byte	0x3d
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF1028
	.byte	0x6
	.2byte	0x662
	.byte	0x4c
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1029
	.2byte	0x65c
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x738f
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x65c
	.byte	0x3c
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF198
	.byte	0x6
	.2byte	0x65c
	.byte	0x47
	.4byte	0x10b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1030
	.2byte	0x656
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73c5
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x656
	.byte	0x35
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF452
	.byte	0x6
	.2byte	0x656
	.byte	0x3f
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1031
	.2byte	0x651
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73fb
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x651
	.byte	0x34
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF367
	.byte	0x6
	.2byte	0x651
	.byte	0x3e
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1032
	.2byte	0x649
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7426
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x649
	.byte	0x34
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1033
	.2byte	0x612
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7481
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x612
	.byte	0x38
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF1034
	.byte	0x6
	.2byte	0x612
	.byte	0x41
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x614
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF1035
	.byte	0x6
	.2byte	0x633
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF1036
	.2byte	0x5b9
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x74d7
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x5b9
	.byte	0x3f
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF1034
	.byte	0x6
	.2byte	0x5ba
	.byte	0x2e
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF412
	.byte	0x6
	.2byte	0x5bd
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF434
	.byte	0x6
	.2byte	0x5be
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1037
	.2byte	0x560
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x754d
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x560
	.byte	0x2c
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x561
	.byte	0x31
	.4byte	0x27d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x563
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF412
	.byte	0x6
	.2byte	0x564
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF434
	.byte	0x6
	.2byte	0x565
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.4byte	.LASF1038
	.2byte	0x596
	.4byte	.L282
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1039
	.byte	0x6
	.2byte	0x54a
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7589
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x54a
	.byte	0x36
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x54c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1040
	.byte	0x6
	.2byte	0x522
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x75c5
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x522
	.byte	0x3e
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF379
	.byte	0x6
	.2byte	0x524
	.byte	0x1f
	.4byte	0x27d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF1041
	.2byte	0x51c
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x75eb
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x51c
	.byte	0x2c
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1042
	.byte	0x6
	.2byte	0x50b
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7657
	.uleb128 0x5
	.string	"ctx"
	.byte	0x6
	.2byte	0x50b
	.byte	0x29
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF554
	.byte	0x6
	.2byte	0x50c
	.byte	0x38
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF555
	.byte	0x6
	.2byte	0x50c
	.byte	0x47
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF439
	.byte	0x6
	.2byte	0x50d
	.byte	0x38
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF440
	.byte	0x6
	.2byte	0x50d
	.byte	0x47
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1043
	.byte	0x6
	.2byte	0x4fd
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x76c1
	.uleb128 0x5
	.string	"ctx"
	.byte	0x6
	.2byte	0x4fd
	.byte	0x29
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"p"
	.byte	0x6
	.2byte	0x4fe
	.byte	0x33
	.4byte	0x2715
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"end"
	.byte	0x6
	.2byte	0x4fe
	.byte	0x45
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF439
	.byte	0x6
	.2byte	0x4ff
	.byte	0x38
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF440
	.byte	0x6
	.2byte	0x4ff
	.byte	0x47
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1044
	.byte	0x6
	.2byte	0x41e
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x76fd
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x41e
	.byte	0x34
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x420
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF1045
	.2byte	0x418
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7723
	.uleb128 0x1
	.4byte	.LASF391
	.byte	0x6
	.2byte	0x418
	.byte	0x34
	.4byte	0x23fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF1046
	.2byte	0x401
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7749
	.uleb128 0x1
	.4byte	.LASF396
	.byte	0x6
	.2byte	0x401
	.byte	0x38
	.4byte	0x27f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF1047
	.byte	0x6
	.2byte	0x3ca
	.byte	0xd
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7771
	.uleb128 0x1
	.4byte	.LASF393
	.byte	0x6
	.2byte	0x3ca
	.byte	0x45
	.4byte	0x27ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1048
	.byte	0x6
	.2byte	0x3be
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x77bd
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x3be
	.byte	0x3c
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0x3bf
	.byte	0x3c
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"len"
	.byte	0x6
	.2byte	0x3bf
	.byte	0x48
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1049
	.byte	0x6
	.2byte	0x3b1
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7809
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x3b1
	.byte	0x3c
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0x3b2
	.byte	0x3c
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"len"
	.byte	0x6
	.2byte	0x3b2
	.byte	0x48
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1050
	.byte	0x6
	.2byte	0x384
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB162
	.4byte	.LFE162-.LFB162
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7865
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x384
	.byte	0x3b
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"buf"
	.byte	0x6
	.2byte	0x385
	.byte	0x3b
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"len"
	.byte	0x6
	.2byte	0x385
	.byte	0x47
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x38c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1051
	.2byte	0x344
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x78a0
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x344
	.byte	0x35
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x34b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1052
	.2byte	0x337
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x790b
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x337
	.byte	0x3d
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF1053
	.byte	0x6
	.2byte	0x338
	.byte	0x31
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"msg"
	.byte	0x6
	.2byte	0x339
	.byte	0x3d
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF1054
	.byte	0x6
	.2byte	0x33a
	.byte	0x2f
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"ret"
	.byte	0x6
	.2byte	0x33c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1055
	.2byte	0x328
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB159
	.4byte	.LFE159-.LFB159
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7966
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x328
	.byte	0x3d
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF1053
	.byte	0x6
	.2byte	0x329
	.byte	0x31
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF1056
	.byte	0x6
	.2byte	0x32a
	.byte	0x2f
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF1057
	.byte	0x6
	.2byte	0x32c
	.byte	0x13
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF1058
	.2byte	0x313
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x799c
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x313
	.byte	0x39
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF539
	.byte	0x6
	.2byte	0x314
	.byte	0x45
	.4byte	0x2a2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF1059
	.2byte	0x2e6
	.4byte	.LFB157
	.4byte	.LFE157-.LFB157
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a3a
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x2e6
	.byte	0x3e
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF1060
	.byte	0x6
	.2byte	0x2e7
	.byte	0x27
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF1061
	.byte	0x6
	.2byte	0x2e7
	.byte	0x3a
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF1062
	.byte	0x6
	.2byte	0x2e7
	.byte	0x44
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF1063
	.byte	0x6
	.2byte	0x2e8
	.byte	0x27
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF1064
	.byte	0x6
	.2byte	0x2e8
	.byte	0x3d
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF1065
	.byte	0x6
	.2byte	0x2e9
	.byte	0x2f
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.4byte	.LBB77
	.4byte	.LBE77-.LBB77
	.uleb128 0x8
	.string	"i"
	.byte	0x6
	.2byte	0x2ec
	.byte	0x13
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF1066
	.2byte	0x2c5
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ae0
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x2c5
	.byte	0x3d
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF1060
	.byte	0x6
	.2byte	0x2c6
	.byte	0x26
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF1061
	.byte	0x6
	.2byte	0x2c6
	.byte	0x39
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF1062
	.byte	0x6
	.2byte	0x2c6
	.byte	0x43
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF1063
	.byte	0x6
	.2byte	0x2c7
	.byte	0x26
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF1067
	.byte	0x6
	.2byte	0x2c7
	.byte	0x40
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF1068
	.byte	0x6
	.2byte	0x2c8
	.byte	0x2e
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF1069
	.byte	0x6
	.2byte	0x2c8
	.byte	0x46
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.4byte	.LASF1070
	.byte	0x6
	.2byte	0x2ca
	.byte	0x11
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1071
	.byte	0x6
	.2byte	0x2b0
	.byte	0x14
	.4byte	0x117
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b0c
	.uleb128 0x1
	.4byte	.LASF1063
	.byte	0x6
	.2byte	0x2b0
	.byte	0x32
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1072
	.2byte	0x2aa
	.byte	0xd
	.4byte	0x117
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b37
	.uleb128 0x1
	.4byte	.LASF1067
	.byte	0x6
	.2byte	0x2aa
	.byte	0x39
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1073
	.2byte	0x264
	.byte	0xa
	.4byte	0xc6
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b62
	.uleb128 0x1
	.4byte	.LASF1067
	.byte	0x6
	.2byte	0x264
	.byte	0x36
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1074
	.2byte	0x208
	.byte	0xa
	.4byte	0xc6
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b8d
	.uleb128 0x1
	.4byte	.LASF1067
	.byte	0x6
	.2byte	0x208
	.byte	0x34
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF1075
	.byte	0x6
	.2byte	0x1f4
	.byte	0xd
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7bb5
	.uleb128 0x1
	.4byte	.LASF391
	.byte	0x6
	.2byte	0x1f4
	.byte	0x36
	.4byte	0x23fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1076
	.2byte	0x1d7
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c60
	.uleb128 0x5
	.string	"prf"
	.byte	0x6
	.2byte	0x1d7
	.byte	0x35
	.4byte	0x25c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF851
	.byte	0x6
	.2byte	0x1d8
	.byte	0x2f
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF852
	.byte	0x6
	.2byte	0x1d8
	.byte	0x3e
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF742
	.byte	0x6
	.2byte	0x1d9
	.byte	0x26
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF853
	.byte	0x6
	.2byte	0x1da
	.byte	0x2f
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF854
	.byte	0x6
	.2byte	0x1da
	.byte	0x3e
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF855
	.byte	0x6
	.2byte	0x1db
	.byte	0x29
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF856
	.byte	0x6
	.2byte	0x1db
	.byte	0x38
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.4byte	.LASF543
	.byte	0x6
	.2byte	0x1dd
	.byte	0x1d
	.4byte	0x2a95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF1077
	.byte	0x6
	.2byte	0x157
	.byte	0xd
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d38
	.uleb128 0x5
	.string	"ssl"
	.byte	0x6
	.2byte	0x157
	.byte	0x39
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF1078
	.byte	0x6
	.2byte	0x157
	.byte	0x42
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF1079
	.byte	0x6
	.2byte	0x158
	.byte	0x2b
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF1080
	.byte	0x6
	.2byte	0x159
	.byte	0x2b
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.4byte	.LASF1081
	.byte	0x6
	.2byte	0x15b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF1082
	.byte	0x6
	.2byte	0x15c
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF1083
	.byte	0x6
	.2byte	0x15c
	.byte	0x1c
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF1084
	.byte	0x6
	.2byte	0x15c
	.byte	0x2e
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF1085
	.byte	0x6
	.2byte	0x15c
	.byte	0x41
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF1086
	.byte	0x6
	.2byte	0x15d
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF1087
	.byte	0x6
	.2byte	0x15d
	.byte	0x1d
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF1088
	.byte	0x6
	.2byte	0x15d
	.byte	0x30
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1089
	.byte	0x6
	.2byte	0x142
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d94
	.uleb128 0x1
	.4byte	.LASF1090
	.byte	0x6
	.2byte	0x142
	.byte	0x2a
	.4byte	0x2715
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF1091
	.byte	0x6
	.2byte	0x142
	.byte	0x39
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF1092
	.byte	0x6
	.2byte	0x142
	.byte	0x4a
	.4byte	0xa1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF1093
	.byte	0x6
	.2byte	0x144
	.byte	0x14
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.4byte	.LASF1094
	.byte	0xe5
	.4byte	0x68
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7de4
	.uleb128 0x2c
	.string	"dst"
	.byte	0x6
	.byte	0xe5
	.byte	0x33
	.4byte	0x23fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"src"
	.byte	0x6
	.byte	0xe6
	.byte	0x39
	.4byte	0x242a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.uleb128 0x40
	.string	"ret"
	.byte	0x6
	.byte	0xfb
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF1095
	.byte	0x6
	.byte	0xd2
	.byte	0x15
	.4byte	0x74
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e0e
	.uleb128 0x2c
	.string	"mfl"
	.byte	0x6
	.byte	0xd2
	.byte	0x30
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.4byte	.LASF1096
	.byte	0xa4
	.4byte	0x68
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e63
	.uleb128 0x2c
	.string	"ssl"
	.byte	0x6
	.byte	0xa4
	.byte	0x33
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.4byte	.LASF1097
	.byte	0x6
	.byte	0xa5
	.byte	0x23
	.4byte	0x7e63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.4byte	.LASF567
	.byte	0x6
	.byte	0xa6
	.byte	0x2c
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.4byte	.LASF568
	.byte	0x6
	.byte	0xa7
	.byte	0x26
	.4byte	0xa1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	0x68
	.uleb128 0x35
	.4byte	.LASF1098
	.byte	0x86
	.4byte	0x68
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ebd
	.uleb128 0x2c
	.string	"ssl"
	.byte	0x6
	.byte	0x86
	.byte	0x32
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.4byte	.LASF1097
	.byte	0x6
	.byte	0x87
	.byte	0x22
	.4byte	0x7e63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.4byte	.LASF445
	.byte	0x6
	.byte	0x88
	.byte	0x2b
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.4byte	.LASF446
	.byte	0x6
	.byte	0x89
	.byte	0x25
	.4byte	0xa1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.4byte	.LASF1099
	.byte	0x66
	.4byte	0x68
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f12
	.uleb128 0x2c
	.string	"ssl"
	.byte	0x6
	.byte	0x66
	.byte	0x2e
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.4byte	.LASF1100
	.byte	0x6
	.byte	0x67
	.byte	0x1d
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.4byte	.LASF445
	.byte	0x6
	.byte	0x68
	.byte	0x2e
	.4byte	0x126f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.4byte	.LASF446
	.byte	0x6
	.byte	0x69
	.byte	0x20
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF1101
	.byte	0x6
	.byte	0x54
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f5a
	.uleb128 0x25
	.4byte	.LASF379
	.byte	0x6
	.byte	0x54
	.byte	0x2e
	.4byte	0x53ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.string	"len"
	.byte	0x6
	.byte	0x55
	.byte	0x21
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.4byte	.LASF1102
	.byte	0x6
	.byte	0x56
	.byte	0x1e
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1103
	.byte	0x5
	.2byte	0xa5c
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f96
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0xa5d
	.byte	0x20
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF780
	.byte	0x5
	.2byte	0xa5e
	.byte	0x14
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1104
	.byte	0x5
	.2byte	0xa1f
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7fe2
	.uleb128 0x1
	.4byte	.LASF780
	.byte	0x5
	.2byte	0xa20
	.byte	0x14
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x6
	.4byte	.LASF788
	.byte	0x5
	.2byte	0xa23
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x8
	.string	"sig"
	.byte	0x5
	.2byte	0xa24
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1105
	.byte	0x5
	.2byte	0x9e9
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x802e
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x9e9
	.byte	0x4d
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF1106
	.byte	0x5
	.2byte	0x9ea
	.byte	0x3b
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x6
	.4byte	.LASF780
	.byte	0x5
	.2byte	0x9ec
	.byte	0x15
	.4byte	0x27ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1107
	.byte	0x5
	.2byte	0x97c
	.byte	0x1b
	.4byte	0x126
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x805a
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x97d
	.byte	0x20
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1108
	.byte	0x5
	.2byte	0x915
	.byte	0x1b
	.4byte	0x126
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8086
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x915
	.byte	0x4d
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1109
	.byte	0x5
	.2byte	0x77a
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x80b2
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x5
	.2byte	0x77a
	.byte	0x4c
	.4byte	0x27d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1110
	.byte	0x5
	.2byte	0x6f0
	.byte	0x16
	.4byte	0x80
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x80de
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x6f0
	.byte	0x48
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1111
	.byte	0x5
	.2byte	0x696
	.byte	0x21
	.4byte	0x114a
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x811a
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x696
	.byte	0x4b
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF483
	.byte	0x5
	.2byte	0x698
	.byte	0x1b
	.4byte	0x279c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1112
	.byte	0x5
	.2byte	0x679
	.byte	0x28
	.4byte	0x24d2
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8146
	.uleb128 0x1
	.4byte	.LASF1113
	.byte	0x5
	.2byte	0x67a
	.byte	0x15
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1114
	.byte	0x5
	.2byte	0x61d
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8192
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x61d
	.byte	0x42
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"psk"
	.byte	0x5
	.2byte	0x61e
	.byte	0x3d
	.4byte	0x8192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF497
	.byte	0x5
	.2byte	0x61e
	.byte	0x4a
	.4byte	0xa1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x7
	.4byte	0x126f
	.uleb128 0x12
	.4byte	.LASF1115
	.byte	0x5
	.2byte	0x5c3
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x81c3
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x5c3
	.byte	0x48
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF1116
	.byte	0x5
	.2byte	0x54f
	.byte	0x14
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x81eb
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x54f
	.byte	0x4f
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF1117
	.byte	0x5
	.2byte	0x546
	.byte	0x14
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8223
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x546
	.byte	0x49
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF190
	.byte	0x5
	.2byte	0x547
	.byte	0x47
	.4byte	0x14ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1118
	.byte	0x5
	.2byte	0x4a0
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x824f
	.uleb128 0x1
	.4byte	.LASF396
	.byte	0x5
	.2byte	0x4a1
	.byte	0x22
	.4byte	0x6a12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1119
	.byte	0x5
	.2byte	0x1fb
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x829b
	.uleb128 0x5
	.string	"cur"
	.byte	0x5
	.2byte	0x1fb
	.byte	0x3a
	.4byte	0x829b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"end"
	.byte	0x5
	.2byte	0x1fc
	.byte	0x3a
	.4byte	0x829b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF1120
	.byte	0x5
	.2byte	0x1fc
	.byte	0x46
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x7
	.4byte	0xb0
	.uleb128 0x12
	.4byte	.LASF1121
	.byte	0x5
	.2byte	0x1da
	.byte	0x16
	.4byte	0x80
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82cc
	.uleb128 0x5
	.string	"ctx"
	.byte	0x5
	.2byte	0x1da
	.byte	0x4e
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1122
	.byte	0x5
	.2byte	0x1ce
	.byte	0x16
	.4byte	0x80
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82f8
	.uleb128 0x5
	.string	"ctx"
	.byte	0x5
	.2byte	0x1ce
	.byte	0x4f
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x42
	.4byte	.LASF1123
	.byte	0x56
	.byte	0x24
	.4byte	0x263
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x832e
	.uleb128 0x2c
	.string	"pk"
	.byte	0x4
	.byte	0x56
	.byte	0x59
	.4byte	0x2d69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x40
	.string	"id"
	.byte	0x4
	.byte	0x58
	.byte	0x1a
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x42
	.4byte	.LASF1124
	.byte	0x3c
	.byte	0x2a
	.4byte	0x8356
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8356
	.uleb128 0x2c
	.string	"pk"
	.byte	0x4
	.byte	0x3c
	.byte	0x54
	.4byte	0xae9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.4byte	0x472
	.uleb128 0x41
	.4byte	.LASF1125
	.byte	0x3
	.byte	0x5c
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8385
	.uleb128 0x25
	.4byte	.LASF1126
	.byte	0x3
	.byte	0x5c
	.byte	0x5a
	.4byte	0x2a2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1127
	.byte	0x2
	.2byte	0x13fa
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83b1
	.uleb128 0x5
	.string	"ssl"
	.byte	0x2
	.2byte	0x13fa
	.byte	0x46
	.4byte	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1128
	.byte	0x2
	.2byte	0x130a
	.byte	0x2c
	.4byte	0x255e
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83dd
	.uleb128 0x5
	.string	"ssl"
	.byte	0x2
	.2byte	0x130b
	.byte	0x20
	.4byte	0x2a6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1129
	.byte	0x1
	.2byte	0x2c0
	.byte	0x25
	.4byte	0x7e9
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8409
	.uleb128 0x5
	.string	"ctx"
	.byte	0x1
	.2byte	0x2c1
	.byte	0x25
	.4byte	0x8409
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	0xa46
	.uleb128 0x18
	.4byte	.LASF1130
	.byte	0x1
	.2byte	0x221
	.byte	0x16
	.4byte	0x80
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x843a
	.uleb128 0x1
	.4byte	.LASF1126
	.byte	0x1
	.2byte	0x222
	.byte	0x22
	.4byte	0x9dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1131
	.byte	0x1
	.2byte	0x20d
	.byte	0x16
	.4byte	0x80
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8466
	.uleb128 0x1
	.4byte	.LASF1126
	.byte	0x1
	.2byte	0x20e
	.byte	0x22
	.4byte	0x9dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1132
	.byte	0x1
	.2byte	0x1e4
	.byte	0x16
	.4byte	0x80
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8492
	.uleb128 0x1
	.4byte	.LASF1126
	.byte	0x1
	.2byte	0x1e5
	.byte	0x22
	.4byte	0x9dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1133
	.byte	0x1
	.2byte	0x1cf
	.byte	0x25
	.4byte	0x7e9
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84be
	.uleb128 0x1
	.4byte	.LASF1126
	.byte	0x1
	.2byte	0x1d0
	.byte	0x22
	.4byte	0x9dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x38
	.4byte	.LASF1134
	.byte	0xf6
	.4byte	0x84e6
	.uleb128 0x2d
	.string	"p"
	.byte	0xf6
	.byte	0x37
	.4byte	0xfa
	.uleb128 0x2d
	.string	"x"
	.byte	0xf6
	.byte	0x43
	.4byte	0xd2
	.uleb128 0x2e
	.string	"p64"
	.byte	0xfc
	.byte	0x21
	.4byte	0x84e6
	.byte	0
	.uleb128 0x7
	.4byte	0x185
	.uleb128 0x43
	.4byte	.LASF1136
	.byte	0xdb
	.4byte	0xd2
	.4byte	0x8517
	.uleb128 0x2d
	.string	"p"
	.byte	0xdb
	.byte	0x41
	.4byte	0x126
	.uleb128 0x2e
	.string	"r"
	.byte	0xdd
	.byte	0xe
	.4byte	0xd2
	.uleb128 0x2e
	.string	"p64"
	.byte	0xe2
	.byte	0x21
	.4byte	0x84e6
	.byte	0
	.uleb128 0x38
	.4byte	.LASF1135
	.byte	0xc2
	.4byte	0x853f
	.uleb128 0x2d
	.string	"p"
	.byte	0xc2
	.byte	0x37
	.4byte	0xfa
	.uleb128 0x2d
	.string	"x"
	.byte	0xc2
	.byte	0x43
	.4byte	0xc6
	.uleb128 0x2e
	.string	"p32"
	.byte	0xc8
	.byte	0x21
	.4byte	0x853f
	.byte	0
	.uleb128 0x7
	.4byte	0x165
	.uleb128 0x43
	.4byte	.LASF1137
	.byte	0xa7
	.4byte	0xc6
	.4byte	0x8570
	.uleb128 0x2d
	.string	"p"
	.byte	0xa7
	.byte	0x41
	.4byte	0x126
	.uleb128 0x2e
	.string	"r"
	.byte	0xa9
	.byte	0xe
	.4byte	0xc6
	.uleb128 0x2e
	.string	"p32"
	.byte	0xae
	.byte	0x21
	.4byte	0x853f
	.byte	0
	.uleb128 0x38
	.4byte	.LASF1138
	.byte	0x8e
	.4byte	0x8598
	.uleb128 0x2d
	.string	"p"
	.byte	0x8e
	.byte	0x37
	.4byte	0xfa
	.uleb128 0x2d
	.string	"x"
	.byte	0x8e
	.byte	0x43
	.4byte	0xb5
	.uleb128 0x2e
	.string	"p16"
	.byte	0x94
	.byte	0x21
	.4byte	0x8598
	.byte	0
	.uleb128 0x7
	.4byte	0x145
	.uleb128 0x4f
	.4byte	.LASF1139
	.byte	0x7
	.byte	0x73
	.byte	0x18
	.4byte	0xb5
	.byte	0x3
	.uleb128 0x2d
	.string	"p"
	.byte	0x73
	.byte	0x41
	.4byte	0x126
	.uleb128 0x2e
	.string	"r"
	.byte	0x75
	.byte	0xe
	.4byte	0xb5
	.uleb128 0x2e
	.string	"p16"
	.byte	0x7a
	.byte	0x21
	.4byte	0x8598
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
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x5
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
	.uleb128 0x1c
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
	.sleb128 6
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 21
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xa
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
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x36
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 39
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x17
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
	.uleb128 0x3d
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x43
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 24
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x4d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.4byte	0x704
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.4byte	.LFB157
	.4byte	.LFE157-.LFB157
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.4byte	.LFB159
	.4byte	.LFE159-.LFB159
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.4byte	.LFB162
	.4byte	.LFE162-.LFB162
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.4byte	.LFB182
	.4byte	.LFE182-.LFB182
	.4byte	.LFB183
	.4byte	.LFE183-.LFB183
	.4byte	.LFB184
	.4byte	.LFE184-.LFB184
	.4byte	.LFB185
	.4byte	.LFE185-.LFB185
	.4byte	.LFB186
	.4byte	.LFE186-.LFB186
	.4byte	.LFB187
	.4byte	.LFE187-.LFB187
	.4byte	.LFB188
	.4byte	.LFE188-.LFB188
	.4byte	.LFB189
	.4byte	.LFE189-.LFB189
	.4byte	.LFB190
	.4byte	.LFE190-.LFB190
	.4byte	.LFB191
	.4byte	.LFE191-.LFB191
	.4byte	.LFB192
	.4byte	.LFE192-.LFB192
	.4byte	.LFB193
	.4byte	.LFE193-.LFB193
	.4byte	.LFB194
	.4byte	.LFE194-.LFB194
	.4byte	.LFB195
	.4byte	.LFE195-.LFB195
	.4byte	.LFB196
	.4byte	.LFE196-.LFB196
	.4byte	.LFB197
	.4byte	.LFE197-.LFB197
	.4byte	.LFB198
	.4byte	.LFE198-.LFB198
	.4byte	.LFB199
	.4byte	.LFE199-.LFB199
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.4byte	.LFB203
	.4byte	.LFE203-.LFB203
	.4byte	.LFB204
	.4byte	.LFE204-.LFB204
	.4byte	.LFB205
	.4byte	.LFE205-.LFB205
	.4byte	.LFB206
	.4byte	.LFE206-.LFB206
	.4byte	.LFB207
	.4byte	.LFE207-.LFB207
	.4byte	.LFB208
	.4byte	.LFE208-.LFB208
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.4byte	.LFB213
	.4byte	.LFE213-.LFB213
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
	.4byte	.LFB216
	.4byte	.LFE216-.LFB216
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
	.4byte	.LFB219
	.4byte	.LFE219-.LFB219
	.4byte	.LFB220
	.4byte	.LFE220-.LFB220
	.4byte	.LFB221
	.4byte	.LFE221-.LFB221
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.4byte	.LFB223
	.4byte	.LFE223-.LFB223
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.4byte	.LFB225
	.4byte	.LFE225-.LFB225
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
	.4byte	.LFB227
	.4byte	.LFE227-.LFB227
	.4byte	.LFB228
	.4byte	.LFE228-.LFB228
	.4byte	.LFB229
	.4byte	.LFE229-.LFB229
	.4byte	.LFB230
	.4byte	.LFE230-.LFB230
	.4byte	.LFB231
	.4byte	.LFE231-.LFB231
	.4byte	.LFB232
	.4byte	.LFE232-.LFB232
	.4byte	.LFB233
	.4byte	.LFE233-.LFB233
	.4byte	.LFB234
	.4byte	.LFE234-.LFB234
	.4byte	.LFB235
	.4byte	.LFE235-.LFB235
	.4byte	.LFB236
	.4byte	.LFE236-.LFB236
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.4byte	.LFB238
	.4byte	.LFE238-.LFB238
	.4byte	.LFB239
	.4byte	.LFE239-.LFB239
	.4byte	.LFB240
	.4byte	.LFE240-.LFB240
	.4byte	.LFB241
	.4byte	.LFE241-.LFB241
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.4byte	.LFB245
	.4byte	.LFE245-.LFB245
	.4byte	.LFB246
	.4byte	.LFE246-.LFB246
	.4byte	.LFB247
	.4byte	.LFE247-.LFB247
	.4byte	.LFB248
	.4byte	.LFE248-.LFB248
	.4byte	.LFB249
	.4byte	.LFE249-.LFB249
	.4byte	.LFB250
	.4byte	.LFE250-.LFB250
	.4byte	.LFB251
	.4byte	.LFE251-.LFB251
	.4byte	.LFB252
	.4byte	.LFE252-.LFB252
	.4byte	.LFB253
	.4byte	.LFE253-.LFB253
	.4byte	.LFB254
	.4byte	.LFE254-.LFB254
	.4byte	.LFB255
	.4byte	.LFE255-.LFB255
	.4byte	.LFB256
	.4byte	.LFE256-.LFB256
	.4byte	.LFB257
	.4byte	.LFE257-.LFB257
	.4byte	.LFB258
	.4byte	.LFE258-.LFB258
	.4byte	.LFB259
	.4byte	.LFE259-.LFB259
	.4byte	.LFB260
	.4byte	.LFE260-.LFB260
	.4byte	.LFB261
	.4byte	.LFE261-.LFB261
	.4byte	.LFB262
	.4byte	.LFE262-.LFB262
	.4byte	.LFB263
	.4byte	.LFE263-.LFB263
	.4byte	.LFB264
	.4byte	.LFE264-.LFB264
	.4byte	.LFB265
	.4byte	.LFE265-.LFB265
	.4byte	.LFB266
	.4byte	.LFE266-.LFB266
	.4byte	.LFB267
	.4byte	.LFE267-.LFB267
	.4byte	.LFB268
	.4byte	.LFE268-.LFB268
	.4byte	.LFB269
	.4byte	.LFE269-.LFB269
	.4byte	.LFB270
	.4byte	.LFE270-.LFB270
	.4byte	.LFB271
	.4byte	.LFE271-.LFB271
	.4byte	.LFB272
	.4byte	.LFE272-.LFB272
	.4byte	.LFB273
	.4byte	.LFE273-.LFB273
	.4byte	.LFB274
	.4byte	.LFE274-.LFB274
	.4byte	.LFB275
	.4byte	.LFE275-.LFB275
	.4byte	.LFB276
	.4byte	.LFE276-.LFB276
	.4byte	.LFB277
	.4byte	.LFE277-.LFB277
	.4byte	.LFB278
	.4byte	.LFE278-.LFB278
	.4byte	.LFB279
	.4byte	.LFE279-.LFB279
	.4byte	.LFB280
	.4byte	.LFE280-.LFB280
	.4byte	.LFB281
	.4byte	.LFE281-.LFB281
	.4byte	.LFB282
	.4byte	.LFE282-.LFB282
	.4byte	.LFB283
	.4byte	.LFE283-.LFB283
	.4byte	.LFB284
	.4byte	.LFE284-.LFB284
	.4byte	.LFB285
	.4byte	.LFE285-.LFB285
	.4byte	.LFB286
	.4byte	.LFE286-.LFB286
	.4byte	.LFB287
	.4byte	.LFE287-.LFB287
	.4byte	.LFB288
	.4byte	.LFE288-.LFB288
	.4byte	.LFB289
	.4byte	.LFE289-.LFB289
	.4byte	.LFB290
	.4byte	.LFE290-.LFB290
	.4byte	.LFB291
	.4byte	.LFE291-.LFB291
	.4byte	.LFB292
	.4byte	.LFE292-.LFB292
	.4byte	.LFB293
	.4byte	.LFE293-.LFB293
	.4byte	.LFB294
	.4byte	.LFE294-.LFB294
	.4byte	.LFB295
	.4byte	.LFE295-.LFB295
	.4byte	.LFB296
	.4byte	.LFE296-.LFB296
	.4byte	.LFB297
	.4byte	.LFE297-.LFB297
	.4byte	.LFB298
	.4byte	.LFE298-.LFB298
	.4byte	.LFB299
	.4byte	.LFE299-.LFB299
	.4byte	.LFB300
	.4byte	.LFE300-.LFB300
	.4byte	.LFB301
	.4byte	.LFE301-.LFB301
	.4byte	.LFB302
	.4byte	.LFE302-.LFB302
	.4byte	.LFB303
	.4byte	.LFE303-.LFB303
	.4byte	.LFB304
	.4byte	.LFE304-.LFB304
	.4byte	.LFB305
	.4byte	.LFE305-.LFB305
	.4byte	.LFB306
	.4byte	.LFE306-.LFB306
	.4byte	.LFB307
	.4byte	.LFE307-.LFB307
	.4byte	.LFB308
	.4byte	.LFE308-.LFB308
	.4byte	.LFB309
	.4byte	.LFE309-.LFB309
	.4byte	.LFB310
	.4byte	.LFE310-.LFB310
	.4byte	.LFB311
	.4byte	.LFE311-.LFB311
	.4byte	.LFB312
	.4byte	.LFE312-.LFB312
	.4byte	.LFB313
	.4byte	.LFE313-.LFB313
	.4byte	.LFB314
	.4byte	.LFE314-.LFB314
	.4byte	.LFB315
	.4byte	.LFE315-.LFB315
	.4byte	.LFB316
	.4byte	.LFE316-.LFB316
	.4byte	.LFB317
	.4byte	.LFE317-.LFB317
	.4byte	.LFB318
	.4byte	.LFE318-.LFB318
	.4byte	.LFB319
	.4byte	.LFE319-.LFB319
	.4byte	.LFB320
	.4byte	.LFE320-.LFB320
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.4byte	.LFB322
	.4byte	.LFE322-.LFB322
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
	.4byte	.LFB324
	.4byte	.LFE324-.LFB324
	.4byte	.LFB325
	.4byte	.LFE325-.LFB325
	.4byte	.LFB326
	.4byte	.LFE326-.LFB326
	.4byte	.LFB327
	.4byte	.LFE327-.LFB327
	.4byte	.LFB328
	.4byte	.LFE328-.LFB328
	.4byte	.LFB329
	.4byte	.LFE329-.LFB329
	.4byte	.LFB330
	.4byte	.LFE330-.LFB330
	.4byte	.LFB331
	.4byte	.LFE331-.LFB331
	.4byte	.LFB332
	.4byte	.LFE332-.LFB332
	.4byte	.LFB333
	.4byte	.LFE333-.LFB333
	.4byte	.LFB334
	.4byte	.LFE334-.LFB334
	.4byte	.LFB335
	.4byte	.LFE335-.LFB335
	.4byte	.LFB336
	.4byte	.LFE336-.LFB336
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
	.4byte	.LBB141
	.byte	0x4
	.uleb128 .LBB141-.LBB141
	.uleb128 .LBE141-.LBB141
	.byte	0x4
	.uleb128 .LBB142-.LBB141
	.uleb128 .LBE142-.LBB141
	.byte	0x4
	.uleb128 .LBB143-.LBB141
	.uleb128 .LBE143-.LBB141
	.byte	0
.LLRL1:
	.byte	0x7
	.4byte	.LFB20
	.uleb128 .LFE20-.LFB20
	.byte	0x7
	.4byte	.LFB21
	.uleb128 .LFE21-.LFB21
	.byte	0x7
	.4byte	.LFB23
	.uleb128 .LFE23-.LFB23
	.byte	0x7
	.4byte	.LFB24
	.uleb128 .LFE24-.LFB24
	.byte	0x7
	.4byte	.LFB28
	.uleb128 .LFE28-.LFB28
	.byte	0x7
	.4byte	.LFB95
	.uleb128 .LFE95-.LFB95
	.byte	0x7
	.4byte	.LFB96
	.uleb128 .LFE96-.LFB96
	.byte	0x7
	.4byte	.LFB102
	.uleb128 .LFE102-.LFB102
	.byte	0x7
	.4byte	.LFB107
	.uleb128 .LFE107-.LFB107
	.byte	0x7
	.4byte	.LFB109
	.uleb128 .LFE109-.LFB109
	.byte	0x7
	.4byte	.LFB111
	.uleb128 .LFE111-.LFB111
	.byte	0x7
	.4byte	.LFB112
	.uleb128 .LFE112-.LFB112
	.byte	0x7
	.4byte	.LFB113
	.uleb128 .LFE113-.LFB113
	.byte	0x7
	.4byte	.LFB114
	.uleb128 .LFE114-.LFB114
	.byte	0x7
	.4byte	.LFB115
	.uleb128 .LFE115-.LFB115
	.byte	0x7
	.4byte	.LFB116
	.uleb128 .LFE116-.LFB116
	.byte	0x7
	.4byte	.LFB117
	.uleb128 .LFE117-.LFB117
	.byte	0x7
	.4byte	.LFB118
	.uleb128 .LFE118-.LFB118
	.byte	0x7
	.4byte	.LFB119
	.uleb128 .LFE119-.LFB119
	.byte	0x7
	.4byte	.LFB121
	.uleb128 .LFE121-.LFB121
	.byte	0x7
	.4byte	.LFB124
	.uleb128 .LFE124-.LFB124
	.byte	0x7
	.4byte	.LFB126
	.uleb128 .LFE126-.LFB126
	.byte	0x7
	.4byte	.LFB129
	.uleb128 .LFE129-.LFB129
	.byte	0x7
	.4byte	.LFB135
	.uleb128 .LFE135-.LFB135
	.byte	0x7
	.4byte	.LFB136
	.uleb128 .LFE136-.LFB136
	.byte	0x7
	.4byte	.LFB138
	.uleb128 .LFE138-.LFB138
	.byte	0x7
	.4byte	.LFB139
	.uleb128 .LFE139-.LFB139
	.byte	0x7
	.4byte	.LFB142
	.uleb128 .LFE142-.LFB142
	.byte	0x7
	.4byte	.LFB143
	.uleb128 .LFE143-.LFB143
	.byte	0x7
	.4byte	.LFB144
	.uleb128 .LFE144-.LFB144
	.byte	0x7
	.4byte	.LFB145
	.uleb128 .LFE145-.LFB145
	.byte	0x7
	.4byte	.LFB146
	.uleb128 .LFE146-.LFB146
	.byte	0x7
	.4byte	.LFB147
	.uleb128 .LFE147-.LFB147
	.byte	0x7
	.4byte	.LFB148
	.uleb128 .LFE148-.LFB148
	.byte	0x7
	.4byte	.LFB149
	.uleb128 .LFE149-.LFB149
	.byte	0x7
	.4byte	.LFB150
	.uleb128 .LFE150-.LFB150
	.byte	0x7
	.4byte	.LFB151
	.uleb128 .LFE151-.LFB151
	.byte	0x7
	.4byte	.LFB152
	.uleb128 .LFE152-.LFB152
	.byte	0x7
	.4byte	.LFB153
	.uleb128 .LFE153-.LFB153
	.byte	0x7
	.4byte	.LFB154
	.uleb128 .LFE154-.LFB154
	.byte	0x7
	.4byte	.LFB155
	.uleb128 .LFE155-.LFB155
	.byte	0x7
	.4byte	.LFB156
	.uleb128 .LFE156-.LFB156
	.byte	0x7
	.4byte	.LFB157
	.uleb128 .LFE157-.LFB157
	.byte	0x7
	.4byte	.LFB158
	.uleb128 .LFE158-.LFB158
	.byte	0x7
	.4byte	.LFB159
	.uleb128 .LFE159-.LFB159
	.byte	0x7
	.4byte	.LFB160
	.uleb128 .LFE160-.LFB160
	.byte	0x7
	.4byte	.LFB161
	.uleb128 .LFE161-.LFB161
	.byte	0x7
	.4byte	.LFB162
	.uleb128 .LFE162-.LFB162
	.byte	0x7
	.4byte	.LFB163
	.uleb128 .LFE163-.LFB163
	.byte	0x7
	.4byte	.LFB164
	.uleb128 .LFE164-.LFB164
	.byte	0x7
	.4byte	.LFB165
	.uleb128 .LFE165-.LFB165
	.byte	0x7
	.4byte	.LFB166
	.uleb128 .LFE166-.LFB166
	.byte	0x7
	.4byte	.LFB167
	.uleb128 .LFE167-.LFB167
	.byte	0x7
	.4byte	.LFB168
	.uleb128 .LFE168-.LFB168
	.byte	0x7
	.4byte	.LFB169
	.uleb128 .LFE169-.LFB169
	.byte	0x7
	.4byte	.LFB170
	.uleb128 .LFE170-.LFB170
	.byte	0x7
	.4byte	.LFB171
	.uleb128 .LFE171-.LFB171
	.byte	0x7
	.4byte	.LFB172
	.uleb128 .LFE172-.LFB172
	.byte	0x7
	.4byte	.LFB173
	.uleb128 .LFE173-.LFB173
	.byte	0x7
	.4byte	.LFB174
	.uleb128 .LFE174-.LFB174
	.byte	0x7
	.4byte	.LFB175
	.uleb128 .LFE175-.LFB175
	.byte	0x7
	.4byte	.LFB176
	.uleb128 .LFE176-.LFB176
	.byte	0x7
	.4byte	.LFB177
	.uleb128 .LFE177-.LFB177
	.byte	0x7
	.4byte	.LFB178
	.uleb128 .LFE178-.LFB178
	.byte	0x7
	.4byte	.LFB179
	.uleb128 .LFE179-.LFB179
	.byte	0x7
	.4byte	.LFB180
	.uleb128 .LFE180-.LFB180
	.byte	0x7
	.4byte	.LFB181
	.uleb128 .LFE181-.LFB181
	.byte	0x7
	.4byte	.LFB182
	.uleb128 .LFE182-.LFB182
	.byte	0x7
	.4byte	.LFB183
	.uleb128 .LFE183-.LFB183
	.byte	0x7
	.4byte	.LFB184
	.uleb128 .LFE184-.LFB184
	.byte	0x7
	.4byte	.LFB185
	.uleb128 .LFE185-.LFB185
	.byte	0x7
	.4byte	.LFB186
	.uleb128 .LFE186-.LFB186
	.byte	0x7
	.4byte	.LFB187
	.uleb128 .LFE187-.LFB187
	.byte	0x7
	.4byte	.LFB188
	.uleb128 .LFE188-.LFB188
	.byte	0x7
	.4byte	.LFB189
	.uleb128 .LFE189-.LFB189
	.byte	0x7
	.4byte	.LFB190
	.uleb128 .LFE190-.LFB190
	.byte	0x7
	.4byte	.LFB191
	.uleb128 .LFE191-.LFB191
	.byte	0x7
	.4byte	.LFB192
	.uleb128 .LFE192-.LFB192
	.byte	0x7
	.4byte	.LFB193
	.uleb128 .LFE193-.LFB193
	.byte	0x7
	.4byte	.LFB194
	.uleb128 .LFE194-.LFB194
	.byte	0x7
	.4byte	.LFB195
	.uleb128 .LFE195-.LFB195
	.byte	0x7
	.4byte	.LFB196
	.uleb128 .LFE196-.LFB196
	.byte	0x7
	.4byte	.LFB197
	.uleb128 .LFE197-.LFB197
	.byte	0x7
	.4byte	.LFB198
	.uleb128 .LFE198-.LFB198
	.byte	0x7
	.4byte	.LFB199
	.uleb128 .LFE199-.LFB199
	.byte	0x7
	.4byte	.LFB200
	.uleb128 .LFE200-.LFB200
	.byte	0x7
	.4byte	.LFB201
	.uleb128 .LFE201-.LFB201
	.byte	0x7
	.4byte	.LFB202
	.uleb128 .LFE202-.LFB202
	.byte	0x7
	.4byte	.LFB203
	.uleb128 .LFE203-.LFB203
	.byte	0x7
	.4byte	.LFB204
	.uleb128 .LFE204-.LFB204
	.byte	0x7
	.4byte	.LFB205
	.uleb128 .LFE205-.LFB205
	.byte	0x7
	.4byte	.LFB206
	.uleb128 .LFE206-.LFB206
	.byte	0x7
	.4byte	.LFB207
	.uleb128 .LFE207-.LFB207
	.byte	0x7
	.4byte	.LFB208
	.uleb128 .LFE208-.LFB208
	.byte	0x7
	.4byte	.LFB209
	.uleb128 .LFE209-.LFB209
	.byte	0x7
	.4byte	.LFB210
	.uleb128 .LFE210-.LFB210
	.byte	0x7
	.4byte	.LFB211
	.uleb128 .LFE211-.LFB211
	.byte	0x7
	.4byte	.LFB212
	.uleb128 .LFE212-.LFB212
	.byte	0x7
	.4byte	.LFB213
	.uleb128 .LFE213-.LFB213
	.byte	0x7
	.4byte	.LFB214
	.uleb128 .LFE214-.LFB214
	.byte	0x7
	.4byte	.LFB215
	.uleb128 .LFE215-.LFB215
	.byte	0x7
	.4byte	.LFB216
	.uleb128 .LFE216-.LFB216
	.byte	0x7
	.4byte	.LFB217
	.uleb128 .LFE217-.LFB217
	.byte	0x7
	.4byte	.LFB218
	.uleb128 .LFE218-.LFB218
	.byte	0x7
	.4byte	.LFB219
	.uleb128 .LFE219-.LFB219
	.byte	0x7
	.4byte	.LFB220
	.uleb128 .LFE220-.LFB220
	.byte	0x7
	.4byte	.LFB221
	.uleb128 .LFE221-.LFB221
	.byte	0x7
	.4byte	.LFB222
	.uleb128 .LFE222-.LFB222
	.byte	0x7
	.4byte	.LFB223
	.uleb128 .LFE223-.LFB223
	.byte	0x7
	.4byte	.LFB224
	.uleb128 .LFE224-.LFB224
	.byte	0x7
	.4byte	.LFB225
	.uleb128 .LFE225-.LFB225
	.byte	0x7
	.4byte	.LFB226
	.uleb128 .LFE226-.LFB226
	.byte	0x7
	.4byte	.LFB227
	.uleb128 .LFE227-.LFB227
	.byte	0x7
	.4byte	.LFB228
	.uleb128 .LFE228-.LFB228
	.byte	0x7
	.4byte	.LFB229
	.uleb128 .LFE229-.LFB229
	.byte	0x7
	.4byte	.LFB230
	.uleb128 .LFE230-.LFB230
	.byte	0x7
	.4byte	.LFB231
	.uleb128 .LFE231-.LFB231
	.byte	0x7
	.4byte	.LFB232
	.uleb128 .LFE232-.LFB232
	.byte	0x7
	.4byte	.LFB233
	.uleb128 .LFE233-.LFB233
	.byte	0x7
	.4byte	.LFB234
	.uleb128 .LFE234-.LFB234
	.byte	0x7
	.4byte	.LFB235
	.uleb128 .LFE235-.LFB235
	.byte	0x7
	.4byte	.LFB236
	.uleb128 .LFE236-.LFB236
	.byte	0x7
	.4byte	.LFB237
	.uleb128 .LFE237-.LFB237
	.byte	0x7
	.4byte	.LFB238
	.uleb128 .LFE238-.LFB238
	.byte	0x7
	.4byte	.LFB239
	.uleb128 .LFE239-.LFB239
	.byte	0x7
	.4byte	.LFB240
	.uleb128 .LFE240-.LFB240
	.byte	0x7
	.4byte	.LFB241
	.uleb128 .LFE241-.LFB241
	.byte	0x7
	.4byte	.LFB242
	.uleb128 .LFE242-.LFB242
	.byte	0x7
	.4byte	.LFB243
	.uleb128 .LFE243-.LFB243
	.byte	0x7
	.4byte	.LFB244
	.uleb128 .LFE244-.LFB244
	.byte	0x7
	.4byte	.LFB245
	.uleb128 .LFE245-.LFB245
	.byte	0x7
	.4byte	.LFB246
	.uleb128 .LFE246-.LFB246
	.byte	0x7
	.4byte	.LFB247
	.uleb128 .LFE247-.LFB247
	.byte	0x7
	.4byte	.LFB248
	.uleb128 .LFE248-.LFB248
	.byte	0x7
	.4byte	.LFB249
	.uleb128 .LFE249-.LFB249
	.byte	0x7
	.4byte	.LFB250
	.uleb128 .LFE250-.LFB250
	.byte	0x7
	.4byte	.LFB251
	.uleb128 .LFE251-.LFB251
	.byte	0x7
	.4byte	.LFB252
	.uleb128 .LFE252-.LFB252
	.byte	0x7
	.4byte	.LFB253
	.uleb128 .LFE253-.LFB253
	.byte	0x7
	.4byte	.LFB254
	.uleb128 .LFE254-.LFB254
	.byte	0x7
	.4byte	.LFB255
	.uleb128 .LFE255-.LFB255
	.byte	0x7
	.4byte	.LFB256
	.uleb128 .LFE256-.LFB256
	.byte	0x7
	.4byte	.LFB257
	.uleb128 .LFE257-.LFB257
	.byte	0x7
	.4byte	.LFB258
	.uleb128 .LFE258-.LFB258
	.byte	0x7
	.4byte	.LFB259
	.uleb128 .LFE259-.LFB259
	.byte	0x7
	.4byte	.LFB260
	.uleb128 .LFE260-.LFB260
	.byte	0x7
	.4byte	.LFB261
	.uleb128 .LFE261-.LFB261
	.byte	0x7
	.4byte	.LFB262
	.uleb128 .LFE262-.LFB262
	.byte	0x7
	.4byte	.LFB263
	.uleb128 .LFE263-.LFB263
	.byte	0x7
	.4byte	.LFB264
	.uleb128 .LFE264-.LFB264
	.byte	0x7
	.4byte	.LFB265
	.uleb128 .LFE265-.LFB265
	.byte	0x7
	.4byte	.LFB266
	.uleb128 .LFE266-.LFB266
	.byte	0x7
	.4byte	.LFB267
	.uleb128 .LFE267-.LFB267
	.byte	0x7
	.4byte	.LFB268
	.uleb128 .LFE268-.LFB268
	.byte	0x7
	.4byte	.LFB269
	.uleb128 .LFE269-.LFB269
	.byte	0x7
	.4byte	.LFB270
	.uleb128 .LFE270-.LFB270
	.byte	0x7
	.4byte	.LFB271
	.uleb128 .LFE271-.LFB271
	.byte	0x7
	.4byte	.LFB272
	.uleb128 .LFE272-.LFB272
	.byte	0x7
	.4byte	.LFB273
	.uleb128 .LFE273-.LFB273
	.byte	0x7
	.4byte	.LFB274
	.uleb128 .LFE274-.LFB274
	.byte	0x7
	.4byte	.LFB275
	.uleb128 .LFE275-.LFB275
	.byte	0x7
	.4byte	.LFB276
	.uleb128 .LFE276-.LFB276
	.byte	0x7
	.4byte	.LFB277
	.uleb128 .LFE277-.LFB277
	.byte	0x7
	.4byte	.LFB278
	.uleb128 .LFE278-.LFB278
	.byte	0x7
	.4byte	.LFB279
	.uleb128 .LFE279-.LFB279
	.byte	0x7
	.4byte	.LFB280
	.uleb128 .LFE280-.LFB280
	.byte	0x7
	.4byte	.LFB281
	.uleb128 .LFE281-.LFB281
	.byte	0x7
	.4byte	.LFB282
	.uleb128 .LFE282-.LFB282
	.byte	0x7
	.4byte	.LFB283
	.uleb128 .LFE283-.LFB283
	.byte	0x7
	.4byte	.LFB284
	.uleb128 .LFE284-.LFB284
	.byte	0x7
	.4byte	.LFB285
	.uleb128 .LFE285-.LFB285
	.byte	0x7
	.4byte	.LFB286
	.uleb128 .LFE286-.LFB286
	.byte	0x7
	.4byte	.LFB287
	.uleb128 .LFE287-.LFB287
	.byte	0x7
	.4byte	.LFB288
	.uleb128 .LFE288-.LFB288
	.byte	0x7
	.4byte	.LFB289
	.uleb128 .LFE289-.LFB289
	.byte	0x7
	.4byte	.LFB290
	.uleb128 .LFE290-.LFB290
	.byte	0x7
	.4byte	.LFB291
	.uleb128 .LFE291-.LFB291
	.byte	0x7
	.4byte	.LFB292
	.uleb128 .LFE292-.LFB292
	.byte	0x7
	.4byte	.LFB293
	.uleb128 .LFE293-.LFB293
	.byte	0x7
	.4byte	.LFB294
	.uleb128 .LFE294-.LFB294
	.byte	0x7
	.4byte	.LFB295
	.uleb128 .LFE295-.LFB295
	.byte	0x7
	.4byte	.LFB296
	.uleb128 .LFE296-.LFB296
	.byte	0x7
	.4byte	.LFB297
	.uleb128 .LFE297-.LFB297
	.byte	0x7
	.4byte	.LFB298
	.uleb128 .LFE298-.LFB298
	.byte	0x7
	.4byte	.LFB299
	.uleb128 .LFE299-.LFB299
	.byte	0x7
	.4byte	.LFB300
	.uleb128 .LFE300-.LFB300
	.byte	0x7
	.4byte	.LFB301
	.uleb128 .LFE301-.LFB301
	.byte	0x7
	.4byte	.LFB302
	.uleb128 .LFE302-.LFB302
	.byte	0x7
	.4byte	.LFB303
	.uleb128 .LFE303-.LFB303
	.byte	0x7
	.4byte	.LFB304
	.uleb128 .LFE304-.LFB304
	.byte	0x7
	.4byte	.LFB305
	.uleb128 .LFE305-.LFB305
	.byte	0x7
	.4byte	.LFB306
	.uleb128 .LFE306-.LFB306
	.byte	0x7
	.4byte	.LFB307
	.uleb128 .LFE307-.LFB307
	.byte	0x7
	.4byte	.LFB308
	.uleb128 .LFE308-.LFB308
	.byte	0x7
	.4byte	.LFB309
	.uleb128 .LFE309-.LFB309
	.byte	0x7
	.4byte	.LFB310
	.uleb128 .LFE310-.LFB310
	.byte	0x7
	.4byte	.LFB311
	.uleb128 .LFE311-.LFB311
	.byte	0x7
	.4byte	.LFB312
	.uleb128 .LFE312-.LFB312
	.byte	0x7
	.4byte	.LFB313
	.uleb128 .LFE313-.LFB313
	.byte	0x7
	.4byte	.LFB314
	.uleb128 .LFE314-.LFB314
	.byte	0x7
	.4byte	.LFB315
	.uleb128 .LFE315-.LFB315
	.byte	0x7
	.4byte	.LFB316
	.uleb128 .LFE316-.LFB316
	.byte	0x7
	.4byte	.LFB317
	.uleb128 .LFE317-.LFB317
	.byte	0x7
	.4byte	.LFB318
	.uleb128 .LFE318-.LFB318
	.byte	0x7
	.4byte	.LFB319
	.uleb128 .LFE319-.LFB319
	.byte	0x7
	.4byte	.LFB320
	.uleb128 .LFE320-.LFB320
	.byte	0x7
	.4byte	.LFB321
	.uleb128 .LFE321-.LFB321
	.byte	0x7
	.4byte	.LFB322
	.uleb128 .LFE322-.LFB322
	.byte	0x7
	.4byte	.LFB323
	.uleb128 .LFE323-.LFB323
	.byte	0x7
	.4byte	.LFB324
	.uleb128 .LFE324-.LFB324
	.byte	0x7
	.4byte	.LFB325
	.uleb128 .LFE325-.LFB325
	.byte	0x7
	.4byte	.LFB326
	.uleb128 .LFE326-.LFB326
	.byte	0x7
	.4byte	.LFB327
	.uleb128 .LFE327-.LFB327
	.byte	0x7
	.4byte	.LFB328
	.uleb128 .LFE328-.LFB328
	.byte	0x7
	.4byte	.LFB329
	.uleb128 .LFE329-.LFB329
	.byte	0x7
	.4byte	.LFB330
	.uleb128 .LFE330-.LFB330
	.byte	0x7
	.4byte	.LFB331
	.uleb128 .LFE331-.LFB331
	.byte	0x7
	.4byte	.LFB332
	.uleb128 .LFE332-.LFB332
	.byte	0x7
	.4byte	.LFB333
	.uleb128 .LFE333-.LFB333
	.byte	0x7
	.4byte	.LFB334
	.uleb128 .LFE334-.LFB334
	.byte	0x7
	.4byte	.LFB335
	.uleb128 .LFE335-.LFB335
	.byte	0x7
	.4byte	.LFB336
	.uleb128 .LFE336-.LFB336
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF955:
	.string	"mbedtls_ssl_get_dtls_srtp_negotiation_result"
.LASF305:
	.string	"x509_crt_rs_find_parent"
.LASF969:
	.string	"mbedtls_ssl_get_hostname_pointer"
.LASF232:
	.string	"MBEDTLS_KEY_EXCHANGE_RSA_PSK"
.LASF1078:
	.string	"downsizing"
.LASF146:
	.string	"MBEDTLS_CIPHER_ARIA_256_CCM"
.LASF132:
	.string	"MBEDTLS_CIPHER_ARIA_128_CBC"
.LASF1002:
	.string	"mbedtls_ssl_conf_ca_cb"
.LASF310:
	.string	"in_progress"
.LASF839:
	.string	"ssl_calc_verify_tls_sha384"
.LASF1089:
	.string	"resize_buffer"
.LASF976:
	.string	"mbedtls_ssl_conf_dh_param_bin"
.LASF203:
	.string	"cipher_info"
.LASF500:
	.string	"alpn_list"
.LASF501:
	.string	"dtls_srtp_profile_list"
.LASF776:
	.string	"__func__"
.LASF41:
	.string	"mbedtls_ecp_point"
.LASF553:
	.string	"buffering"
.LASF422:
	.string	"alert_reason"
.LASF699:
	.string	"mbedtls_ssl_handshake_server_step"
.LASF377:
	.string	"encrypt_then_mac"
.LASF63:
	.string	"MBEDTLS_MD_SHA256"
.LASF1034:
	.string	"partial"
.LASF1020:
	.string	"mbedtls_ssl_conf_dbg"
.LASF1091:
	.string	"len_new"
.LASF1092:
	.string	"len_old"
.LASF1027:
	.string	"mbedtls_ssl_conf_dtls_badmac_limit"
.LASF539:
	.string	"ciphersuite_info"
.LASF144:
	.string	"MBEDTLS_CIPHER_ARIA_128_CCM"
.LASF1105:
	.string	"mbedtls_ssl_sig_alg_is_offered"
.LASF653:
	.string	"ssl_preset_suiteb_groups"
.LASF644:
	.string	"ssl_hostname_skip_cn_verification"
.LASF710:
	.string	"mbedtls_mpi_read_binary"
.LASF894:
	.string	"ssl_context_load"
.LASF276:
	.string	"own_buffer"
.LASF1101:
	.string	"mbedtls_ssl_conf_cid"
.LASF69:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF912:
	.string	"remaining_len"
.LASF1097:
	.string	"enabled"
.LASF722:
	.string	"mbedtls_dhm_init"
.LASF594:
	.string	"MBEDTLS_SSL_VERSION_TLS1_2"
.LASF595:
	.string	"MBEDTLS_SSL_VERSION_TLS1_3"
.LASF331:
	.string	"MBEDTLS_SSL_SERVER_CERTIFICATE"
.LASF680:
	.string	"mbedtls_md_hmac_finish"
.LASF913:
	.string	"mbedtls_ssl_session_save"
.LASF848:
	.string	"seed_len"
.LASF33:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF341:
	.string	"MBEDTLS_SSL_SERVER_FINISHED"
.LASF720:
	.string	"mbedtls_x509_crt_restart_init"
.LASF978:
	.string	"G_len"
.LASF95:
	.string	"MBEDTLS_CIPHER_AES_256_GCM"
.LASF1083:
	.string	"iv_offset_in"
.LASF772:
	.string	"mbedtls_ssl_parse_server_name_ext"
.LASF970:
	.string	"mbedtls_ssl_has_set_hostname_been_called"
.LASF149:
	.string	"MBEDTLS_CIPHER_ARIA_256_CCM_STAR_NO_TAG"
.LASF885:
	.string	"mbedtls_ssl_config_free"
.LASF76:
	.string	"psa_status_t"
.LASF369:
	.string	"ciphersuite"
.LASF835:
	.string	"mbedtls_ssl_psk_derive_premaster"
.LASF104:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CFB128"
.LASF590:
	.string	"mki_len"
.LASF736:
	.string	"mbedtls_x509_crt_init"
.LASF911:
	.string	"omit_header"
.LASF148:
	.string	"MBEDTLS_CIPHER_ARIA_192_CCM_STAR_NO_TAG"
.LASF661:
	.string	"mbedtls_x509_crt_verify_restartable"
.LASF15:
	.string	"uint16_t"
.LASF568:
	.string	"peer_cid_len"
.LASF527:
	.string	"mbedtls_ssl_handshake_params"
.LASF265:
	.string	"issuer_raw"
.LASF93:
	.string	"MBEDTLS_CIPHER_AES_128_GCM"
.LASF400:
	.string	"f_get_timer"
.LASF465:
	.string	"p_dbg"
.LASF1074:
	.string	"mbedtls_ssl_get_extension_id"
.LASF1068:
	.string	"extra_msg0"
.LASF1069:
	.string	"extra_msg1"
.LASF434:
	.string	"out_buf_len"
.LASF666:
	.string	"mbedtls_cipher_set_padding_mode"
.LASF490:
	.string	"f_async_resume"
.LASF1095:
	.string	"ssl_mfl_code_to_length"
.LASF245:
	.string	"next"
.LASF857:
	.string	"tls_prf_sha256"
.LASF546:
	.string	"ecdh_ctx"
.LASF935:
	.string	"mbedtls_ssl_conf_async_private_cb"
.LASF243:
	.string	"mbedtls_asn1_buf"
.LASF88:
	.string	"MBEDTLS_CIPHER_AES_192_CFB128"
.LASF411:
	.string	"in_left"
.LASF705:
	.string	"memcmp"
.LASF650:
	.string	"ssl_tls12_preset_default_sig_algs"
.LASF907:
	.string	"cleanup"
.LASF525:
	.string	"out_cid_len"
.LASF931:
	.string	"mbedtls_ssl_get_verify_result"
.LASF28:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF315:
	.string	"mbedtls_x509_crt_profile_suiteb"
.LASF855:
	.string	"dstbuf"
.LASF35:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF662:
	.string	"mbedtls_x509_crt_verify_with_ca_cb"
.LASF186:
	.string	"MBEDTLS_DECRYPT"
.LASF542:
	.string	"calc_finished"
.LASF274:
	.string	"sig_opts"
.LASF264:
	.string	"sig_oid"
.LASF1118:
	.string	"mbedtls_ssl_transform_uses_aead"
.LASF214:
	.string	"MBEDTLS_PK_ECDSA"
.LASF837:
	.string	"psk_ret"
.LASF678:
	.string	"mbedtls_md_info_from_ctx"
.LASF257:
	.string	"hour"
.LASF627:
	.string	"total_bytes_buffered"
.LASF399:
	.string	"f_set_timer"
.LASF774:
	.string	"hostname_len"
.LASF403:
	.string	"in_hdr"
.LASF585:
	.string	"mbedtls_ssl_async_resume_t"
.LASF887:
	.string	"preset"
.LASF1119:
	.string	"mbedtls_ssl_chk_buf_ptr"
.LASF225:
	.string	"MBEDTLS_KEY_EXCHANGE_NONE"
.LASF383:
	.string	"f_vrfy"
.LASF351:
	.string	"MBEDTLS_SSL_CLIENT_CCS_BEFORE_2ND_CLIENT_HELLO"
.LASF767:
	.string	"protocol_name_list_len"
.LASF647:
	.string	"ssl_preset_default_groups"
.LASF962:
	.string	"mbedtls_ssl_get_alpn_protocol"
.LASF1008:
	.string	"ssl_key_cert_free"
.LASF634:
	.string	"finished_in"
.LASF1115:
	.string	"mbedtls_ssl_write_handshake_msg"
.LASF130:
	.string	"MBEDTLS_CIPHER_ARIA_192_ECB"
.LASF216:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF13:
	.string	"int32_t"
.LASF122:
	.string	"MBEDTLS_CIPHER_AES_256_CCM_STAR_NO_TAG"
.LASF1040:
	.string	"ssl_conf_version_check"
.LASF231:
	.string	"MBEDTLS_KEY_EXCHANGE_DHE_PSK"
.LASF414:
	.string	"next_record_offset"
.LASF114:
	.string	"MBEDTLS_CIPHER_DES_EDE_CBC"
.LASF394:
	.string	"transform_in"
.LASF443:
	.string	"own_verify_data"
.LASF537:
	.string	"ecrs_peer_cert"
.LASF928:
	.string	"mbedtls_ssl_get_version"
.LASF292:
	.string	"key_usage"
.LASF745:
	.string	"context_len"
.LASF121:
	.string	"MBEDTLS_CIPHER_AES_192_CCM_STAR_NO_TAG"
.LASF74:
	.string	"md_ctx"
.LASF344:
	.string	"MBEDTLS_SSL_NEW_SESSION_TICKET"
.LASF842:
	.string	"mbedtls_ssl_set_calc_verify_md"
.LASF878:
	.string	"mbedtls_ssl_check_curve"
.LASF271:
	.string	"sig_oid2"
.LASF703:
	.string	"mbedtls_ssl_flight_transmit"
.LASF219:
	.string	"mbedtls_pk_info_t"
.LASF1104:
	.string	"mbedtls_ssl_tls12_sig_alg_is_supported"
.LASF1055:
	.string	"mbedtls_ssl_add_hs_hdr_to_checksum"
.LASF1070:
	.string	"extra_msg"
.LASF900:
	.string	"mbedtls_ssl_session_free"
.LASF296:
	.string	"allowed_mds"
.LASF908:
	.string	"ssl_prepare_handshake_step"
.LASF832:
	.string	"mbedtls_ssl_resend_hello_request"
.LASF758:
	.string	"get_hostname_for_verification"
.LASF100:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CBC"
.LASF915:
	.string	"ssl_tls12_session_load"
.LASF335:
	.string	"MBEDTLS_SSL_CLIENT_CERTIFICATE"
.LASF233:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_PSK"
.LASF861:
	.string	"tmp_len"
.LASF25:
	.string	"mbedtls_mpi"
.LASF755:
	.string	"have_ca_chain_or_callback"
.LASF176:
	.string	"MBEDTLS_MODE_KW"
.LASF229:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA"
.LASF256:
	.string	"year"
.LASF378:
	.string	"mbedtls_ssl_context"
.LASF530:
	.string	"sni_authmode"
.LASF364:
	.string	"mbedtls_ssl_session"
.LASF901:
	.string	"mbedtls_ssl_handshake_free"
.LASF191:
	.string	"unprocessed_block"
.LASF734:
	.string	"free"
.LASF332:
	.string	"MBEDTLS_SSL_SERVER_KEY_EXCHANGE"
.LASF448:
	.string	"f_export_keys"
.LASF747:
	.string	"ciphersuite_id"
.LASF754:
	.string	"chain"
.LASF936:
	.string	"f_async_sign"
.LASF124:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CCM"
.LASF64:
	.string	"MBEDTLS_MD_SHA384"
.LASF1057:
	.string	"hs_hdr"
.LASF195:
	.string	"block_size"
.LASF785:
	.string	"sig_alg_received"
.LASF801:
	.string	"explicit_ivlen"
.LASF738:
	.string	"memcpy"
.LASF686:
	.string	"mbedtls_md_finish"
.LASF46:
	.string	"t_pre"
.LASF156:
	.string	"MBEDTLS_CIPHER_CHACHA20_POLY1305"
.LASF153:
	.string	"MBEDTLS_CIPHER_AES_128_XTS"
.LASF905:
	.string	"mbedtls_ssl_handshake"
.LASF891:
	.string	"mbedtls_ssl_config_init"
.LASF1126:
	.string	"info"
.LASF1053:
	.string	"hs_type"
.LASF1039:
	.string	"ssl_conf_check"
.LASF596:
	.string	"mbedtls_ssl_protocol_version"
.LASF73:
	.string	"md_info"
.LASF964:
	.string	"protos"
.LASF681:
	.string	"mbedtls_md_hmac_update"
.LASF340:
	.string	"MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC"
.LASF260:
	.string	"revocation_date"
.LASF302:
	.string	"trust_ca_cb_result"
.LASF1088:
	.string	"len_offset_out"
.LASF432:
	.string	"out_msglen"
.LASF147:
	.string	"MBEDTLS_CIPHER_ARIA_128_CCM_STAR_NO_TAG"
.LASF295:
	.string	"mbedtls_x509_crt_profile"
.LASF40:
	.string	"mbedtls_ecp_group_id"
.LASF698:
	.string	"mbedtls_ssl_write_handshake_msg_ext"
.LASF932:
	.string	"mbedtls_ssl_set_async_operation_data"
.LASF347:
	.string	"MBEDTLS_SSL_ENCRYPTED_EXTENSIONS"
.LASF679:
	.string	"mbedtls_md_hmac_reset"
.LASF131:
	.string	"MBEDTLS_CIPHER_ARIA_256_ECB"
.LASF984:
	.string	"mbedtls_ssl_get_base_mode"
.LASF484:
	.string	"ca_chain"
.LASF209:
	.string	"cmac_ctx"
.LASF139:
	.string	"MBEDTLS_CIPHER_ARIA_192_CTR"
.LASF552:
	.string	"sni_ca_crl"
.LASF1056:
	.string	"total_hs_len"
.LASF864:
	.string	"supported_sig_algs_end"
.LASF199:
	.string	"type"
.LASF934:
	.string	"mbedtls_ssl_conf_get_async_config_data"
.LASF708:
	.string	"strlen"
.LASF986:
	.string	"mbedtls_ssl_set_hs_psk"
.LASF57:
	.string	"mbedtls_ecp_keypair"
.LASF1005:
	.string	"ssl_append_key_cert"
.LASF766:
	.string	"mbedtls_ssl_parse_alpn_ext"
.LASF566:
	.string	"cid_in_use"
.LASF412:
	.string	"in_buf_len"
.LASF694:
	.string	"mbedtls_ssl_flight_free"
.LASF563:
	.string	"in_flight_start_seq"
.LASF771:
	.string	"alpn_len"
.LASF356:
	.string	"MBEDTLS_SSL_TLS1_3_NEW_SESSION_TICKET"
.LASF601:
	.string	"MBEDTLS_SSL_HKDF_EXPAND_SHA256"
.LASF945:
	.string	"mbedtls_ssl_conf_renegotiation_enforced"
.LASF129:
	.string	"MBEDTLS_CIPHER_ARIA_128_ECB"
.LASF475:
	.string	"f_cookie_write"
.LASF1106:
	.string	"proposed_sig_alg"
.LASF669:
	.string	"mbedtls_ssl_ciphersuite_from_id"
.LASF1076:
	.string	"mbedtls_ssl_tls_prf"
.LASF284:
	.string	"v3_ext"
.LASF645:
	.string	"ssl_serialized_session_header"
.LASF992:
	.string	"mbedtls_ssl_conf_has_static_psk"
.LASF764:
	.string	"mbedtls_ssl_write_alpn_ext"
.LASF548:
	.string	"selected_identity"
.LASF198:
	.string	"mode"
.LASF1140:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF1009:
	.string	"mbedtls_ssl_conf_cert_profile"
.LASF1093:
	.string	"resized_buffer"
.LASF1080:
	.string	"out_buf_new_len"
.LASF45:
	.string	"modp"
.LASF101:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CBC"
.LASF877:
	.string	"mbedtls_ssl_get_psa_curve_info_from_tls_id"
.LASF751:
	.string	"prf_input_len"
.LASF371:
	.string	"master"
.LASF1125:
	.string	"mbedtls_ssl_ciphersuite_uses_srv_cert"
.LASF519:
	.string	"iv_dec"
.LASF795:
	.string	"mac_dec"
.LASF1100:
	.string	"enable"
.LASF910:
	.string	"ssl_session_load"
.LASF494:
	.string	"group_list"
.LASF783:
	.string	"mbedtls_ssl_tls12_get_preferred_hash_for_sig_alg"
.LASF535:
	.string	"ecrs_enabled"
.LASF561:
	.string	"cur_msg"
.LASF853:
	.string	"random"
.LASF136:
	.string	"MBEDTLS_CIPHER_ARIA_192_CFB128"
.LASF996:
	.string	"mbedtls_ssl_set_hs_ca_chain"
.LASF520:
	.string	"md_ctx_enc"
.LASF882:
	.string	"mbedtls_ssl_pk_alg_from_sig"
.LASF709:
	.string	"mbedtls_dhm_get_value"
.LASF65:
	.string	"MBEDTLS_MD_SHA512"
.LASF3:
	.string	"unsigned char"
.LASF999:
	.string	"pk_key"
.LASF844:
	.string	"ssl_compute_master"
.LASF503:
	.string	"read_timeout"
.LASF940:
	.string	"mbedtls_ssl_conf_session_tickets_cb"
.LASF444:
	.string	"peer_verify_data"
.LASF125:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CCM"
.LASF609:
	.string	"mbedtls_ssl_ticket_parse_t"
.LASF99:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CBC"
.LASF858:
	.string	"tls_prf_generic"
.LASF638:
	.string	"MBEDTLS_SSL_MODE_AEAD"
.LASF582:
	.string	"mbedtls_ssl_cache_set_t"
.LASF77:
	.string	"psa_key_type_t"
.LASF757:
	.string	"mbedtls_ssl_tls12_export_keying_material"
.LASF706:
	.string	"mbedtls_ssl_get_record_expansion"
.LASF159:
	.string	"MBEDTLS_CIPHER_AES_256_KW"
.LASF696:
	.string	"mbedtls_ecdh_free"
.LASF120:
	.string	"MBEDTLS_CIPHER_AES_128_CCM_STAR_NO_TAG"
.LASF1048:
	.string	"ssl_update_checksum_sha384"
.LASF395:
	.string	"transform_out"
.LASF350:
	.string	"MBEDTLS_SSL_CLIENT_CCS_AFTER_SERVER_FINISHED"
.LASF1139:
	.string	"mbedtls_get_unaligned_uint16"
.LASF941:
	.string	"mbedtls_ssl_conf_session_tickets"
.LASF316:
	.string	"mbedtls_x509_crt_ca_cb_t"
.LASF946:
	.string	"max_records"
.LASF544:
	.string	"received_sig_algs"
.LASF1087:
	.string	"iv_offset_out"
.LASF123:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CCM"
.LASF1045:
	.string	"mbedtls_ssl_session_init"
.LASF1022:
	.string	"mbedtls_ssl_conf_verify"
.LASF384:
	.string	"p_vrfy"
.LASF59:
	.string	"MBEDTLS_MD_MD5"
.LASF208:
	.string	"cipher_ctx"
.LASF555:
	.string	"cookie_len"
.LASF217:
	.string	"MBEDTLS_PK_OPAQUE"
.LASF270:
	.string	"crl_ext"
.LASF1025:
	.string	"mbedtls_ssl_set_datagram_packing"
.LASF1017:
	.string	"timeout"
.LASF684:
	.string	"mbedtls_ssl_sig_alg_to_str"
.LASF718:
	.string	"mbedtls_ssl_transform_free"
.LASF301:
	.string	"items"
.LASF349:
	.string	"MBEDTLS_SSL_CLIENT_CERTIFICATE_VERIFY"
.LASF972:
	.string	"mbedtls_ssl_conf_sig_algs"
.LASF17:
	.string	"uint64_t"
.LASF930:
	.string	"mbedtls_ssl_get_ciphersuite_id_from_ssl"
.LASF674:
	.string	"mbedtls_ssl_send_alert_message"
.LASF185:
	.string	"MBEDTLS_OPERATION_NONE"
.LASF852:
	.string	"slen"
.LASF140:
	.string	"MBEDTLS_CIPHER_ARIA_256_CTR"
.LASF759:
	.string	"mbedtls_ssl_check_cert_usage"
.LASF541:
	.string	"calc_verify"
.LASF658:
	.string	"tls_id_match_table"
.LASF814:
	.string	"ssl_calc_finished_tls_generic"
.LASF975:
	.string	"mbedtls_ssl_conf_dh_param_ctx"
.LASF30:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF1037:
	.string	"mbedtls_ssl_setup"
.LASF43:
	.string	"pbits"
.LASF1018:
	.string	"mbedtls_ssl_set_mtu"
.LASF288:
	.string	"certificate_policies"
.LASF823:
	.string	"ssl_srv_check_client_no_crt_notification"
.LASF614:
	.string	"mbedtls_ssl_tls_prf_cb"
.LASF157:
	.string	"MBEDTLS_CIPHER_AES_128_KW"
.LASF789:
	.string	"hashlen"
.LASF983:
	.string	"mbedtls_ssl_get_actual_mode"
.LASF533:
	.string	"async_in_progress"
.LASF604:
	.string	"mbedtls_ssl_key_export_type"
.LASF1102:
	.string	"ignore_other_cid"
.LASF973:
	.string	"mbedtls_ssl_conf_dhm_min_bitlen"
.LASF261:
	.string	"entry_ext"
.LASF138:
	.string	"MBEDTLS_CIPHER_ARIA_128_CTR"
.LASF753:
	.string	"mbedtls_ssl_verify_certificate"
.LASF806:
	.string	"hash_len"
.LASF142:
	.string	"MBEDTLS_CIPHER_ARIA_192_GCM"
.LASF942:
	.string	"use_tickets"
.LASF739:
	.string	"mbedtls_debug_print_buf"
.LASF482:
	.string	"cert_profile"
.LASF366:
	.string	"exported"
.LASF363:
	.string	"mbedtls_ssl_get_timer_t"
.LASF207:
	.string	"unprocessed_data"
.LASF733:
	.string	"mbedtls_zeroize_and_free"
.LASF816:
	.string	"sender"
.LASF1096:
	.string	"mbedtls_ssl_get_peer_cid"
.LASF312:
	.string	"ver_chain"
.LASF685:
	.string	"mbedtls_ssl_pend_fatal_alert"
.LASF51:
	.string	"mbedtls_ecp_restart_muladd_ctx"
.LASF948:
	.string	"renegotiation"
.LASF415:
	.string	"in_window_top"
.LASF578:
	.string	"mbedtls_ssl_key_cert"
.LASF1063:
	.string	"hs_msg_type"
.LASF811:
	.string	"from"
.LASF781:
	.string	"mbedtls_ssl_validate_ciphersuite"
.LASF451:
	.string	"mbedtls_ssl_config"
.LASF800:
	.string	"exit"
.LASF1062:
	.string	"line"
.LASF1066:
	.string	"mbedtls_ssl_print_extension"
.LASF456:
	.string	"anti_replay"
.LASF113:
	.string	"MBEDTLS_CIPHER_DES_EDE_ECB"
.LASF651:
	.string	"ssl_preset_suiteb_sig_algs"
.LASF613:
	.string	"mbedtls_debug_ecdh_attr"
.LASF869:
	.string	"ssl_get_handshake_transcript_sha256"
.LASF192:
	.string	"unprocessed_len"
.LASF1001:
	.string	"name_len"
.LASF89:
	.string	"MBEDTLS_CIPHER_AES_256_CFB128"
.LASF42:
	.string	"mbedtls_ecp_group"
.LASF611:
	.string	"MBEDTLS_DEBUG_ECDH_QP"
.LASF228:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_RSA"
.LASF1065:
	.string	"extra"
.LASF740:
	.string	"mbedtls_debug_print_msg"
.LASF820:
	.string	"crt_expected"
.LASF1136:
	.string	"mbedtls_get_unaligned_uint64"
.LASF278:
	.string	"subject"
.LASF867:
	.string	"dst_len"
.LASF807:
	.string	"mbedtls_ssl_write_finished"
.LASF289:
	.string	"ext_types"
.LASF323:
	.string	"mbedtls_dhm_parameter"
.LASF833:
	.string	"ratio"
.LASF919:
	.string	"mbedtls_ssl_get_peer_cert"
.LASF818:
	.string	"cloned_ctx"
.LASF770:
	.string	"alpn"
.LASF1077:
	.string	"handle_buffer_resizing"
.LASF487:
	.string	"p_ca_cb"
.LASF102:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CFB128"
.LASF390:
	.string	"session_out"
.LASF1013:
	.string	"mbedtls_ssl_set_session"
.LASF449:
	.string	"p_export_keys"
.LASF97:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_ECB"
.LASF12:
	.string	"size_t"
.LASF562:
	.string	"cur_msg_p"
.LASF1026:
	.string	"allow_packing"
.LASF1109:
	.string	"mbedtls_ssl_conf_is_tls12_only"
.LASF748:
	.string	"hash_alg"
.LASF14:
	.string	"uint8_t"
.LASF729:
	.string	"mbedtls_md_free"
.LASF1085:
	.string	"hdr_in"
.LASF515:
	.string	"fixed_ivlen"
.LASF763:
	.string	"ext_len"
.LASF253:
	.string	"authorityCertIssuer"
.LASF673:
	.string	"mbedtls_ssl_read_record"
.LASF675:
	.string	"mbedtls_debug_print_crt"
.LASF362:
	.string	"mbedtls_ssl_set_timer_t"
.LASF600:
	.string	"MBEDTLS_SSL_HKDF_EXPAND_SHA384"
.LASF24:
	.string	"mbedtls_mpi_uint"
.LASF851:
	.string	"secret"
.LASF1047:
	.string	"ssl_handshake_params_init"
.LASF575:
	.string	"user_async_ctx"
.LASF904:
	.string	"ssl_write_hello_request"
.LASF189:
	.string	"mbedtls_cmac_context_t"
.LASF1094:
	.string	"mbedtls_ssl_session_copy"
.LASF610:
	.string	"MBEDTLS_DEBUG_ECDH_Q"
.LASF279:
	.string	"valid_from"
.LASF612:
	.string	"MBEDTLS_DEBUG_ECDH_Z"
.LASF1131:
	.string	"mbedtls_cipher_info_get_iv_size"
.LASF803:
	.string	"tls_prf_get_type"
.LASF982:
	.string	"mbedtls_ssl_get_mode_from_transform"
.LASF370:
	.string	"id_len"
.LASF61:
	.string	"MBEDTLS_MD_SHA1"
.LASF473:
	.string	"f_psk"
.LASF26:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF765:
	.string	"protocol_name_len"
.LASF545:
	.string	"dhm_ctx"
.LASF433:
	.string	"out_left"
.LASF327:
	.string	"restart_enabled"
.LASF836:
	.string	"key_ex"
.LASF750:
	.string	"randbytes_len"
.LASF338:
	.string	"MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC"
.LASF286:
	.string	"subject_key_id"
.LASF572:
	.string	"state_local"
.LASF791:
	.string	"keyblk"
.LASF21:
	.string	"mbedtls_uint32_unaligned_t"
.LASF1012:
	.string	"ciphersuites"
.LASF592:
	.string	"mbedtls_dtls_srtp_info"
.LASF345:
	.string	"MBEDTLS_SSL_SERVER_HELLO_VERIFY_REQUEST_SENT"
.LASF459:
	.string	"cert_req_ca_list"
.LASF78:
	.string	"psa_ecc_family_t"
.LASF922:
	.string	"mbedtls_ssl_get_max_out_record_payload"
.LASF721:
	.string	"mbedtls_ecdh_init"
.LASF440:
	.string	"cli_id_len"
.LASF526:
	.string	"randbytes"
.LASF1128:
	.string	"mbedtls_ssl_get_version_number"
.LASF597:
	.string	"MBEDTLS_SSL_TLS_PRF_NONE"
.LASF280:
	.string	"valid_to"
.LASF1082:
	.string	"written_in"
.LASF143:
	.string	"MBEDTLS_CIPHER_ARIA_256_GCM"
.LASF255:
	.string	"mbedtls_x509_time"
.LASF937:
	.string	"f_async_decrypt"
.LASF550:
	.string	"sni_key_cert"
.LASF246:
	.string	"mbedtls_asn1_named_data"
.LASF768:
	.string	"protocol_name_list"
.LASF534:
	.string	"retransmit_state"
.LASF1120:
	.string	"need"
.LASF1075:
	.string	"ssl_clear_peer_cert"
.LASF1061:
	.string	"file"
.LASF298:
	.string	"allowed_curves"
.LASF155:
	.string	"MBEDTLS_CIPHER_CHACHA20"
.LASF649:
	.string	"ssl_preset_default_sig_algs"
.LASF244:
	.string	"mbedtls_asn1_sequence"
.LASF291:
	.string	"max_pathlen"
.LASF1046:
	.string	"mbedtls_ssl_transform_init"
.LASF502:
	.string	"dtls_srtp_profile_list_len"
.LASF731:
	.string	"mbedtls_ssl_reset_out_pointers"
.LASF639:
	.string	"mbedtls_ssl_mode_t"
.LASF683:
	.string	"mbedtls_md_get_size"
.LASF50:
	.string	"mbedtls_ecp_restart_mul_ctx"
.LASF676:
	.string	"mbedtls_debug_printf_ecdh"
.LASF141:
	.string	"MBEDTLS_CIPHER_ARIA_128_GCM"
.LASF287:
	.string	"authority_key_id"
.LASF516:
	.string	"maclen"
.LASF357:
	.string	"MBEDTLS_SSL_TLS1_3_NEW_SESSION_TICKET_FLUSH"
.LASF477:
	.string	"p_cookie"
.LASF727:
	.string	"mbedtls_md_info_from_type"
.LASF538:
	.string	"ecrs_n"
.LASF429:
	.string	"out_iv"
.LASF825:
	.string	"crt_cnt"
.LASF446:
	.string	"own_cid_len"
.LASF636:
	.string	"MBEDTLS_SSL_MODE_CBC"
.LASF521:
	.string	"md_ctx_dec"
.LASF784:
	.string	"hash_alg_received"
.LASF557:
	.string	"out_msg_seq"
.LASF902:
	.string	"mbedtls_ssl_renegotiate"
.LASF182:
	.string	"MBEDTLS_PADDING_ZEROS"
.LASF828:
	.string	"crt_buf"
.LASF98:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_ECB"
.LASF606:
	.string	"mbedtls_ssl_hs_cb_t"
.LASF227:
	.string	"MBEDTLS_KEY_EXCHANGE_DHE_RSA"
.LASF569:
	.string	"fin_sha256"
.LASF106:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CTR"
.LASF387:
	.string	"f_recv_timeout"
.LASF517:
	.string	"taglen"
.LASF181:
	.string	"MBEDTLS_PADDING_ZEROS_AND_LEN"
.LASF254:
	.string	"authorityCertSerialNumber"
.LASF234:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDH_RSA"
.LASF641:
	.string	"ssl_tls_prf_t"
.LASF875:
	.string	"grp_id"
.LASF376:
	.string	"ticket_lifetime"
.LASF577:
	.string	"sni_name_len"
.LASF979:
	.string	"mbedtls_ssl_get_mode_from_ciphersuite"
.LASF892:
	.string	"mbedtls_ssl_free"
.LASF778:
	.string	"supported_sig_alg"
.LASF655:
	.string	"ecp_group_id"
.LASF963:
	.string	"mbedtls_ssl_conf_alpn_protocols"
.LASF903:
	.string	"mbedtls_ssl_start_renegotiation"
.LASF96:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_ECB"
.LASF994:
	.string	"mbedtls_ssl_set_hs_authmode"
.LASF583:
	.string	"mbedtls_ssl_async_sign_t"
.LASF496:
	.string	"dhm_G"
.LASF817:
	.string	"hs_ctx"
.LASF495:
	.string	"dhm_P"
.LASF409:
	.string	"in_msgtype"
.LASF166:
	.string	"MBEDTLS_MODE_CBC"
.LASF507:
	.string	"renego_period"
.LASF1019:
	.string	"mbedtls_ssl_set_bio"
.LASF476:
	.string	"f_cookie_check"
.LASF380:
	.string	"renego_status"
.LASF889:
	.string	"dhm_g"
.LASF361:
	.string	"mbedtls_ssl_recv_timeout_t"
.LASF876:
	.string	"mbedtls_ssl_get_ecp_group_id_from_tls_id"
.LASF888:
	.string	"dhm_p"
.LASF744:
	.string	"context"
.LASF617:
	.string	"ssl_ecrs_ske_start_processing"
.LASF300:
	.string	"mbedtls_x509_crt_verify_chain_item"
.LASF80:
	.string	"MBEDTLS_CIPHER_NULL"
.LASF871:
	.string	"ssl_get_handshake_transcript_sha384"
.LASF518:
	.string	"iv_enc"
.LASF32:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF794:
	.string	"mac_enc"
.LASF829:
	.string	"crt_buf_len"
.LASF654:
	.string	"tls_id"
.LASF187:
	.string	"MBEDTLS_ENCRYPT"
.LASF1015:
	.string	"mbedtls_ssl_set_timer_cb"
.LASF172:
	.string	"MBEDTLS_MODE_CCM"
.LASF466:
	.string	"f_rng"
.LASF510:
	.string	"f_cert_cb"
.LASF565:
	.string	"alt_out_ctr"
.LASF348:
	.string	"MBEDTLS_SSL_END_OF_EARLY_DATA"
.LASF648:
	.string	"ssl_preset_suiteb_ciphersuites"
.LASF728:
	.string	"mbedtls_md_init"
.LASF779:
	.string	"supported_sig_alg_len"
.LASF1114:
	.string	"mbedtls_ssl_get_psk"
.LASF201:
	.string	"base_idx"
.LASF920:
	.string	"mbedtls_ssl_get_max_in_record_payload"
.LASF1124:
	.string	"mbedtls_pk_ec_ro"
.LASF668:
	.string	"mbedtls_cipher_setup"
.LASF523:
	.string	"cipher_ctx_dec"
.LASF581:
	.string	"mbedtls_ssl_cache_get_t"
.LASF290:
	.string	"ca_istrue"
.LASF551:
	.string	"sni_ca_chain"
.LASF926:
	.string	"mbedtls_ssl_get_input_max_frag_len"
.LASF846:
	.string	"session_hash"
.LASF769:
	.string	"protocol_name_list_end"
.LASF1107:
	.string	"mbedtls_ssl_get_sig_algs"
.LASF1112:
	.string	"mbedtls_ssl_check_srtp_profile_value"
.LASF307:
	.string	"fallback_parent"
.LASF194:
	.string	"name"
.LASF549:
	.string	"ecrs_ctx"
.LASF405:
	.string	"in_len"
.LASF761:
	.string	"usage"
.LASF474:
	.string	"p_psk"
.LASF659:
	.string	"tls_id_curve_name_table"
.LASF635:
	.string	"MBEDTLS_SSL_MODE_STREAM"
.LASF206:
	.string	"get_padding"
.LASF950:
	.string	"allow_legacy"
.LASF247:
	.string	"next_merged"
.LASF602:
	.string	"mbedtls_tls_prf_types"
.LASF576:
	.string	"sni_name"
.LASF917:
	.string	"ssl_tls12_session_save"
.LASF528:
	.string	"resume"
.LASF242:
	.string	"max_tls_version"
.LASF959:
	.string	"mbedtls_ssl_dtls_srtp_set_mki_value"
.LASF343:
	.string	"MBEDTLS_SSL_HANDSHAKE_WRAPUP"
.LASF497:
	.string	"psk_len"
.LASF865:
	.string	"common_idx"
.LASF845:
	.string	"master_secret_len"
.LASF622:
	.string	"is_fragmented"
.LASF197:
	.string	"key_bitlen"
.LASF277:
	.string	"subject_raw"
.LASF532:
	.string	"new_session_ticket"
.LASF1110:
	.string	"mbedtls_ssl_hs_hdr_len"
.LASF628:
	.string	"seen_ccs"
.LASF488:
	.string	"f_async_sign_start"
.LASF107:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CTR"
.LASF167:
	.string	"MBEDTLS_MODE_CFB"
.LASF956:
	.string	"mbedtls_ssl_conf_dtls_srtp_protection_profiles"
.LASF1111:
	.string	"mbedtls_ssl_own_cert"
.LASF365:
	.string	"mfl_code"
.LASF866:
	.string	"mbedtls_ssl_get_handshake_transcript"
.LASF1060:
	.string	"level"
.LASF777:
	.string	"mbedtls_ssl_write_sig_alg_ext"
.LASF428:
	.string	"out_len"
.LASF458:
	.string	"session_tickets"
.LASF71:
	.string	"mbedtls_md_info_t"
.LASF893:
	.string	"mbedtls_ssl_context_load"
.LASF873:
	.string	"mbedtls_ssl_get_curve_name_from_tls_id"
.LASF652:
	.string	"ssl_tls12_preset_suiteb_sig_algs"
.LASF34:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF704:
	.string	"mbedtls_ssl_flush_output"
.LASF258:
	.string	"mbedtls_x509_crl_entry"
.LASF5:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF815:
	.string	"hlen"
.LASF117:
	.string	"MBEDTLS_CIPHER_AES_128_CCM"
.LASF1032:
	.string	"mbedtls_ssl_session_reset"
.LASF665:
	.string	"mbedtls_ssl_ciphersuite_uses_psk"
.LASF297:
	.string	"allowed_pks"
.LASF105:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CTR"
.LASF631:
	.string	"digest"
.LASF212:
	.string	"MBEDTLS_PK_ECKEY"
.LASF48:
	.string	"t_data"
.LASF603:
	.string	"MBEDTLS_SSL_KEY_EXPORT_TLS12_MASTER_SECRET"
.LASF109:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_GCM"
.LASF313:
	.string	"mbedtls_x509_crt_restart_ctx"
.LASF368:
	.string	"tls_version"
.LASF457:
	.string	"disable_renegotiation"
.LASF513:
	.string	"minlen"
.LASF188:
	.string	"mbedtls_operation_t"
.LASF567:
	.string	"peer_cid"
.LASF250:
	.string	"mbedtls_x509_sequence"
.LASF85:
	.string	"MBEDTLS_CIPHER_AES_192_CBC"
.LASF716:
	.string	"mbedtls_ssl_set_timer"
.LASF886:
	.string	"mbedtls_ssl_config_defaults"
.LASF1067:
	.string	"extension_type"
.LASF54:
	.string	"ops_done"
.LASF508:
	.string	"badmac_limit"
.LASF491:
	.string	"f_async_cancel"
.LASF379:
	.string	"conf"
.LASF381:
	.string	"renego_records_seen"
.LASF952:
	.string	"mbedtls_ssl_conf_extended_master_secret"
.LASF337:
	.string	"MBEDTLS_SSL_CERTIFICATE_VERIFY"
.LASF1021:
	.string	"mbedtls_ssl_conf_rng"
.LASF421:
	.string	"alert_type"
.LASF874:
	.string	"mbedtls_ssl_get_tls_id_from_ecp_group_id"
.LASF987:
	.string	"mbedtls_ssl_free_hostname"
.LASF224:
	.string	"mbedtls_pk_restart_ctx"
.LASF190:
	.string	"state"
.LASF509:
	.string	"dhm_min_bitlen"
.LASF118:
	.string	"MBEDTLS_CIPHER_AES_192_CCM"
.LASF664:
	.string	"mbedtls_x509_crt_check_key_usage"
.LASF1073:
	.string	"mbedtls_ssl_get_extension_mask"
.LASF558:
	.string	"in_msg_seq"
.LASF237:
	.string	"mbedtls_key_exchange_type_t"
.LASF320:
	.string	"MBEDTLS_DHM_PARAM_GX"
.LASF584:
	.string	"mbedtls_ssl_async_decrypt_t"
.LASF471:
	.string	"f_sni"
.LASF663:
	.string	"mbedtls_x509_crt_check_extended_key_usage"
.LASF1041:
	.string	"mbedtls_ssl_init"
.LASF989:
	.string	"mbedtls_ssl_conf_psk"
.LASF177:
	.string	"MBEDTLS_MODE_KWP"
.LASF881:
	.string	"mbedtls_ssl_md_alg_from_hash"
.LASF1035:
	.string	"free_cli_id"
.LASF570:
	.string	"fin_sha384"
.LASF938:
	.string	"async_config_data"
.LASF478:
	.string	"f_ticket_write"
.LASF266:
	.string	"issuer"
.LASF921:
	.string	"max_len"
.LASF1129:
	.string	"mbedtls_cipher_get_cipher_mode"
.LASF218:
	.string	"mbedtls_pk_type_t"
.LASF211:
	.string	"MBEDTLS_PK_RSA"
.LASF318:
	.string	"MBEDTLS_DHM_PARAM_G"
.LASF322:
	.string	"MBEDTLS_DHM_PARAM_K"
.LASF204:
	.string	"operation"
.LASF637:
	.string	"MBEDTLS_SSL_MODE_CBC_ETM"
.LASF158:
	.string	"MBEDTLS_CIPHER_AES_192_KW"
.LASF317:
	.string	"MBEDTLS_DHM_PARAM_P"
.LASF330:
	.string	"MBEDTLS_SSL_SERVER_HELLO"
.LASF184:
	.string	"mbedtls_cipher_padding_t"
.LASF809:
	.string	"mbedtls_ssl_handshake_wrapup_free_hs_transform"
.LASF319:
	.string	"MBEDTLS_DHM_PARAM_X"
.LASF221:
	.string	"pk_info"
.LASF717:
	.string	"mbedtls_debug_print_ret"
.LASF438:
	.string	"dtls_srtp_info"
.LASF914:
	.string	"ssl_session_save"
.LASF1016:
	.string	"mbedtls_ssl_conf_read_timeout"
.LASF588:
	.string	"mbedtls_dtls_srtp_info_t"
.LASF981:
	.string	"base_mode"
.LASF712:
	.string	"mbedtls_cipher_info_from_type"
.LASF1138:
	.string	"mbedtls_put_unaligned_uint16"
.LASF53:
	.string	"mbedtls_ecp_restart_muladd"
.LASF248:
	.string	"mbedtls_x509_buf"
.LASF455:
	.string	"extended_ms"
.LASF847:
	.string	"seed"
.LASF657:
	.string	"bits"
.LASF556:
	.string	"cookie_verify_result"
.LASF442:
	.string	"verify_data_len"
.LASF1130:
	.string	"mbedtls_cipher_info_get_block_size"
.LASF629:
	.string	"future_record"
.LASF38:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF574:
	.string	"pmslen"
.LASF707:
	.string	"mbedtls_ssl_get_ciphersuite_name"
.LASF890:
	.string	"ssl_check_no_sig_alg_duplication"
.LASF6:
	.string	"long int"
.LASF856:
	.string	"dlen"
.LASF929:
	.string	"mbedtls_ssl_get_ciphersuite"
.LASF467:
	.string	"p_rng"
.LASF939:
	.string	"mbedtls_ssl_set_export_keys_cb"
.LASF285:
	.string	"subject_alt_names"
.LASF375:
	.string	"ticket_len"
.LASF633:
	.string	"finished_out"
.LASF294:
	.string	"ns_cert_type"
.LASF321:
	.string	"MBEDTLS_DHM_PARAM_GY"
.LASF906:
	.string	"mbedtls_ssl_handshake_step"
.LASF304:
	.string	"x509_crt_rs_none"
.LASF1028:
	.string	"limit"
.LASF268:
	.string	"next_update"
.LASF792:
	.string	"key1"
.LASF793:
	.string	"key2"
.LASF1054:
	.string	"msg_len"
.LASF267:
	.string	"this_update"
.LASF827:
	.string	"ssl_check_peer_crt_unchanged"
.LASF223:
	.string	"rs_ctx"
.LASF87:
	.string	"MBEDTLS_CIPHER_AES_128_CFB128"
.LASF719:
	.string	"mbedtls_cipher_init"
.LASF480:
	.string	"p_ticket"
.LASF72:
	.string	"mbedtls_md_context_t"
.LASF700:
	.string	"mbedtls_ssl_handshake_client_step"
.LASF798:
	.string	"keylen"
.LASF742:
	.string	"label"
.LASF623:
	.string	"is_complete"
.LASF1135:
	.string	"mbedtls_put_unaligned_uint32"
.LASF110:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_GCM"
.LASF391:
	.string	"session"
.LASF854:
	.string	"rlen"
.LASF128:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CCM_STAR_NO_TAG"
.LASF933:
	.string	"mbedtls_ssl_get_async_operation_data"
.LASF450:
	.string	"user_data"
.LASF531:
	.string	"certificate_request_sent"
.LASF838:
	.string	"zlen"
.LASF1121:
	.string	"mbedtls_ssl_get_input_buflen"
.LASF86:
	.string	"MBEDTLS_CIPHER_AES_256_CBC"
.LASF16:
	.string	"uint32_t"
.LASF993:
	.string	"mbedtls_ssl_set_verify"
.LASF373:
	.string	"verify_result"
.LASF441:
	.string	"secure_renegotiation"
.LASF790:
	.string	"ssl_tls12_populate_transform"
.LASF1029:
	.string	"mbedtls_ssl_conf_dtls_anti_replay"
.LASF127:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CCM_STAR_NO_TAG"
.LASF342:
	.string	"MBEDTLS_SSL_FLUSH_BUFFERS"
.LASF18:
	.string	"uintptr_t"
.LASF802:
	.string	"is_chachapoly"
.LASF819:
	.string	"mbedtls_ssl_parse_certificate"
.LASF11:
	.string	"long double"
.LASF262:
	.string	"mbedtls_x509_crl"
.LASF339:
	.string	"MBEDTLS_SSL_CLIENT_FINISHED"
.LASF108:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_GCM"
.LASF275:
	.string	"mbedtls_x509_crt"
.LASF1099:
	.string	"mbedtls_ssl_set_cid"
.LASF55:
	.string	"depth"
.LASF1059:
	.string	"mbedtls_ssl_print_extensions"
.LASF116:
	.string	"MBEDTLS_CIPHER_DES_EDE3_CBC"
.LASF389:
	.string	"session_in"
.LASF164:
	.string	"MBEDTLS_MODE_NONE"
.LASF259:
	.string	"serial"
.LASF213:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF119:
	.string	"MBEDTLS_CIPHER_AES_256_CCM"
.LASF483:
	.string	"key_cert"
.LASF84:
	.string	"MBEDTLS_CIPHER_AES_128_CBC"
.LASF524:
	.string	"in_cid_len"
.LASF7:
	.string	"long unsigned int"
.LASF202:
	.string	"mbedtls_cipher_context_t"
.LASF175:
	.string	"MBEDTLS_MODE_CHACHAPOLY"
.LASF743:
	.string	"label_len"
.LASF44:
	.string	"nbits"
.LASF269:
	.string	"entry"
.LASF967:
	.string	"mbedtls_ssl_conf_sni"
.LASF688:
	.string	"mbedtls_pk_can_do"
.LASF579:
	.string	"cert"
.LASF682:
	.string	"mbedtls_md_hmac_starts"
.LASF165:
	.string	"MBEDTLS_MODE_ECB"
.LASF1043:
	.string	"ssl_cookie_write_dummy"
.LASF1050:
	.string	"ssl_update_checksum_start"
.LASF671:
	.string	"mbedtls_ssl_recv_flight_completed"
.LASF1064:
	.string	"extensions_mask"
.LASF161:
	.string	"MBEDTLS_CIPHER_AES_192_KWP"
.LASF499:
	.string	"psk_identity_len"
.LASF909:
	.string	"mbedtls_ssl_session_load"
.LASF47:
	.string	"t_post"
.LASF282:
	.string	"issuer_id"
.LASF1127:
	.string	"mbedtls_ssl_is_handshake_over"
.LASF621:
	.string	"is_valid"
.LASF19:
	.string	"char"
.LASF961:
	.string	"support_mki_value"
.LASF454:
	.string	"allow_legacy_renegotiation"
.LASF354:
	.string	"MBEDTLS_SSL_SERVER_CCS_AFTER_HELLO_RETRY_REQUEST"
.LASF1134:
	.string	"mbedtls_put_unaligned_uint64"
.LASF958:
	.string	"list_size"
.LASF1036:
	.string	"mbedtls_ssl_session_reset_msg_layer"
.LASF691:
	.string	"mbedtls_ssl_check_pending"
.LASF971:
	.string	"mbedtls_ssl_conf_groups"
.LASF1031:
	.string	"mbedtls_ssl_conf_endpoint"
.LASF813:
	.string	"ssl_calc_finished_tls_sha256"
.LASF420:
	.string	"send_alert"
.LASF168:
	.string	"MBEDTLS_MODE_OFB"
.LASF540:
	.string	"update_checksum"
.LASF1000:
	.string	"mbedtls_ssl_get_hs_sni"
.LASF687:
	.string	"mbedtls_md_clone"
.LASF880:
	.string	"mbedtls_ssl_hash_from_md_alg"
.LASF1033:
	.string	"mbedtls_ssl_session_reset_int"
.LASF799:
	.string	"ssl_mode"
.LASF573:
	.string	"premaster"
.LASF404:
	.string	"in_cid"
.LASF447:
	.string	"negotiate_cid"
.LASF543:
	.string	"tls_prf"
.LASF230:
	.string	"MBEDTLS_KEY_EXCHANGE_PSK"
.LASF949:
	.string	"mbedtls_ssl_conf_legacy_renegotiation"
.LASF1081:
	.string	"modified"
.LASF353:
	.string	"MBEDTLS_SSL_CLIENT_CCS_AFTER_CLIENT_HELLO"
.LASF840:
	.string	"ssl_calc_verify_tls_sha256"
.LASF830:
	.string	"peer_crt"
.LASF210:
	.string	"MBEDTLS_PK_NONE"
.LASF607:
	.string	"mbedtls_ssl_user_data_t"
.LASF788:
	.string	"hash"
.LASF1103:
	.string	"mbedtls_ssl_sig_alg_is_supported"
.LASF580:
	.string	"mbedtls_ssl_flight_item"
.LASF463:
	.string	"ciphersuite_list"
.LASF762:
	.string	"ext_oid"
.LASF472:
	.string	"p_sni"
.LASF642:
	.string	"extension_name_table"
.LASF23:
	.string	"mbedtls_f_rng_t"
.LASF222:
	.string	"pk_ctx"
.LASF859:
	.string	"md_type"
.LASF309:
	.string	"parent_is_trusted"
.LASF849:
	.string	"ssl_set_handshake_prfs"
.LASF413:
	.string	"in_epoch"
.LASF439:
	.string	"cli_id"
.LASF1090:
	.string	"buffer"
.LASF924:
	.string	"mbedtls_ssl_get_current_mtu"
.LASF974:
	.string	"bitlen"
.LASF311:
	.string	"self_cnt"
.LASF775:
	.string	"server_name_list_end"
.LASF29:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF252:
	.string	"keyIdentifier"
.LASF408:
	.string	"in_offt"
.LASF249:
	.string	"mbedtls_x509_name"
.LASF468:
	.string	"f_get_cache"
.LASF303:
	.string	"mbedtls_x509_crt_verify_chain"
.LASF1122:
	.string	"mbedtls_ssl_get_output_buflen"
.LASF31:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF437:
	.string	"alpn_chosen"
.LASF493:
	.string	"sig_algs"
.LASF522:
	.string	"cipher_ctx_enc"
.LASF529:
	.string	"cli_exts"
.LASF879:
	.string	"mbedtls_ssl_check_curve_tls_id"
.LASF918:
	.string	"mbedtls_ssl_get_session"
.LASF392:
	.string	"session_negotiate"
.LASF406:
	.string	"in_iv"
.LASF393:
	.string	"handshake"
.LASF505:
	.string	"hs_timeout_max"
.LASF925:
	.string	"mbedtls_ssl_get_output_max_frag_len"
.LASF1133:
	.string	"mbedtls_cipher_info_get_mode"
.LASF822:
	.string	"ssl_parse_certificate_coordinate"
.LASF670:
	.string	"mbedtls_ct_memcmp"
.LASF489:
	.string	"f_async_decrypt_start"
.LASF326:
	.string	"point_format"
.LASF49:
	.string	"T_size"
.LASF615:
	.string	"ssl_ecrs_none"
.LASF75:
	.string	"hmac_ctx"
.LASF586:
	.string	"mbedtls_ssl_async_cancel_t"
.LASF416:
	.string	"in_window"
.LASF372:
	.string	"peer_cert"
.LASF329:
	.string	"MBEDTLS_SSL_CLIENT_HELLO"
.LASF860:
	.string	"md_len"
.LASF314:
	.string	"mbedtls_x509_crt_profile_default"
.LASF1051:
	.string	"mbedtls_ssl_reset_checksum"
.LASF998:
	.string	"own_cert"
.LASF178:
	.string	"mbedtls_cipher_mode_t"
.LASF618:
	.string	"ssl_ecrs_cke_ecdh_calc_secret"
.LASF112:
	.string	"MBEDTLS_CIPHER_DES_CBC"
.LASF927:
	.string	"read_mfl"
.LASF1042:
	.string	"ssl_cookie_check_dummy"
.LASF220:
	.string	"mbedtls_pk_context"
.LASF724:
	.string	"mbedtls_md_update"
.LASF1007:
	.string	"new_cert"
.LASF205:
	.string	"add_padding"
.LASF954:
	.string	"mbedtls_ssl_conf_cert_req_ca_list"
.LASF452:
	.string	"transport"
.LASF308:
	.string	"fallback_signature_is_good"
.LASF169:
	.string	"MBEDTLS_MODE_CTR"
.LASF162:
	.string	"MBEDTLS_CIPHER_AES_256_KWP"
.LASF1123:
	.string	"mbedtls_pk_get_ec_group_id"
.LASF787:
	.string	"mbedtls_ssl_get_key_exchange_md_tls1_2"
.LASF397:
	.string	"transform_negotiate"
.LASF66:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF82:
	.string	"MBEDTLS_CIPHER_AES_192_ECB"
.LASF1003:
	.string	"mbedtls_ssl_conf_ca_chain"
.LASF805:
	.string	"mbedtls_ssl_parse_finished"
.LASF713:
	.string	"mbedtls_ssl_states_str"
.LASF1113:
	.string	"srtp_profile_value"
.LASF1014:
	.string	"mbedtls_ssl_conf_session_cache"
.LASF593:
	.string	"MBEDTLS_SSL_VERSION_UNKNOWN"
.LASF988:
	.string	"ssl_remove_psk"
.LASF382:
	.string	"badmac_seen_or_in_hsfraglen"
.LASF690:
	.string	"mbedtls_ssl_update_out_pointers"
.LASF126:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CCM_STAR_NO_TAG"
.LASF591:
	.string	"mki_value"
.LASF608:
	.string	"mbedtls_ssl_ticket_write_t"
.LASF151:
	.string	"MBEDTLS_CIPHER_AES_192_OFB"
.LASF486:
	.string	"f_ca_cb"
.LASF160:
	.string	"MBEDTLS_CIPHER_AES_128_KWP"
.LASF436:
	.string	"hostname"
.LASF780:
	.string	"sig_alg"
.LASF235:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA"
.LASF960:
	.string	"mbedtls_ssl_conf_srtp_mki_value_supported"
.LASF514:
	.string	"ivlen"
.LASF689:
	.string	"printf"
.LASF135:
	.string	"MBEDTLS_CIPHER_ARIA_128_CFB128"
.LASF1058:
	.string	"mbedtls_ssl_optimize_checksum"
.LASF737:
	.string	"calloc"
.LASF624:
	.string	"data"
.LASF359:
	.string	"mbedtls_ssl_send_t"
.LASF426:
	.string	"out_hdr"
.LASF824:
	.string	"ssl_parse_certificate_chain"
.LASF174:
	.string	"MBEDTLS_MODE_XTS"
.LASF367:
	.string	"endpoint"
.LASF693:
	.string	"mbedtls_ssl_buffering_free"
.LASF401:
	.string	"in_buf"
.LASF103:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CFB128"
.LASF895:
	.string	"session_len"
.LASF1006:
	.string	"head"
.LASF1071:
	.string	"ssl_tls13_get_hs_msg_name"
.LASF786:
	.string	"md_alg"
.LASF957:
	.string	"profiles"
.LASF334:
	.string	"MBEDTLS_SSL_SERVER_HELLO_DONE"
.LASF324:
	.string	"mbedtls_dhm_context"
.LASF725:
	.string	"mbedtls_md_starts"
.LASF599:
	.string	"MBEDTLS_SSL_TLS_PRF_SHA256"
.LASF498:
	.string	"psk_identity"
.LASF616:
	.string	"ssl_ecrs_crt_verify"
.LASF667:
	.string	"mbedtls_cipher_setkey"
.LASF605:
	.string	"mbedtls_ssl_export_keys_t"
.LASF360:
	.string	"mbedtls_ssl_recv_t"
.LASF179:
	.string	"MBEDTLS_PADDING_PKCS7"
.LASF966:
	.string	"tot_len"
.LASF325:
	.string	"mbedtls_ecdh_context"
.LASF991:
	.string	"ssl_conf_remove_psk"
.LASF67:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF20:
	.string	"mbedtls_uint16_unaligned_t"
.LASF1116:
	.string	"mbedtls_ssl_handshake_increment_state"
.LASF355:
	.string	"MBEDTLS_SSL_HANDSHAKE_OVER"
.LASF625:
	.string	"data_len"
.LASF445:
	.string	"own_cid"
.LASF1137:
	.string	"mbedtls_get_unaligned_uint32"
.LASF333:
	.string	"MBEDTLS_SSL_CERTIFICATE_REQUEST"
.LASF701:
	.string	"mbedtls_ssl_write_client_hello"
.LASF460:
	.string	"respect_cli_pref"
.LASF470:
	.string	"p_cache"
.LASF173:
	.string	"MBEDTLS_MODE_CCM_STAR_NO_TAG"
.LASF773:
	.string	"server_name_list_len"
.LASF492:
	.string	"p_async_config_data"
.LASF831:
	.string	"mbedtls_ssl_write_certificate"
.LASF424:
	.string	"out_buf"
.LASF702:
	.string	"mbedtls_ssl_handle_pending_alert"
.LASF407:
	.string	"in_msg"
.LASF241:
	.string	"min_tls_version"
.LASF980:
	.string	"suite"
.LASF863:
	.string	"supported_sig_algs_len"
.LASF677:
	.string	"mbedtls_ecdh_calc_secret"
.LASF1030:
	.string	"mbedtls_ssl_conf_transport"
.LASF810:
	.string	"ssl_calc_finished_tls_sha384"
.LASF272:
	.string	"sig_md"
.LASF352:
	.string	"MBEDTLS_SSL_SERVER_CCS_AFTER_SERVER_HELLO"
.LASF479:
	.string	"f_ticket_parse"
.LASF571:
	.string	"client_auth"
.LASF36:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF461:
	.string	"ignore_unexpected_cid"
.LASF9:
	.string	"long long unsigned int"
.LASF336:
	.string	"MBEDTLS_SSL_CLIENT_KEY_EXCHANGE"
.LASF306:
	.string	"parent"
.LASF897:
	.string	"mbedtls_ssl_context_save"
.LASF760:
	.string	"recv_endpoint"
.LASF283:
	.string	"subject_id"
.LASF236:
	.string	"MBEDTLS_KEY_EXCHANGE_ECJPAKE"
.LASF183:
	.string	"MBEDTLS_PADDING_NONE"
.LASF417:
	.string	"in_hslen"
.LASF735:
	.string	"mbedtls_x509_crt_parse_der"
.LASF711:
	.string	"mbedtls_mpi_free"
.LASF1024:
	.string	"mbedtls_ssl_conf_handshake_timeout"
.LASF506:
	.string	"renego_max_records"
.LASF83:
	.string	"MBEDTLS_CIPHER_AES_256_ECB"
.LASF782:
	.string	"suite_info"
.LASF821:
	.string	"crt_verify"
.LASF547:
	.string	"curves_tls_id"
.LASF22:
	.string	"mbedtls_uint64_unaligned_t"
.LASF91:
	.string	"MBEDTLS_CIPHER_AES_192_CTR"
.LASF559:
	.string	"retransmit_timeout"
.LASF281:
	.string	"pk_raw"
.LASF58:
	.string	"MBEDTLS_MD_NONE"
.LASF453:
	.string	"authmode"
.LASF430:
	.string	"out_msg"
.LASF39:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF1038:
	.string	"error"
.LASF346:
	.string	"MBEDTLS_SSL_HELLO_RETRY_REQUEST"
.LASF951:
	.string	"mbedtls_ssl_conf_max_frag_len"
.LASF293:
	.string	"ext_key_usage"
.LASF884:
	.string	"mbedtls_ssl_sig_from_pk"
.LASF660:
	.string	"mbedtls_pk_get_type"
.LASF299:
	.string	"rsa_min_bitlen"
.LASF977:
	.string	"P_len"
.LASF115:
	.string	"MBEDTLS_CIPHER_DES_EDE3_ECB"
.LASF358:
	.string	"mbedtls_ssl_states"
.LASF386:
	.string	"f_recv"
.LASF152:
	.string	"MBEDTLS_CIPHER_AES_256_OFB"
.LASF170:
	.string	"MBEDTLS_MODE_GCM"
.LASF554:
	.string	"cookie"
.LASF81:
	.string	"MBEDTLS_CIPHER_AES_128_ECB"
.LASF944:
	.string	"period"
.LASF504:
	.string	"hs_timeout_min"
.LASF843:
	.string	"mbedtls_ssl_derive_keys"
.LASF560:
	.string	"flight"
.LASF423:
	.string	"disable_datagram_packing"
.LASF402:
	.string	"in_ctr"
.LASF619:
	.string	"ssl_ecrs_crt_vrfy_sign"
.LASF163:
	.string	"mbedtls_cipher_type_t"
.LASF697:
	.string	"mbedtls_dhm_free"
.LASF273:
	.string	"sig_pk"
.LASF732:
	.string	"mbedtls_ssl_update_in_pointers"
.LASF180:
	.string	"MBEDTLS_PADDING_ONE_AND_ZEROS"
.LASF150:
	.string	"MBEDTLS_CIPHER_AES_128_OFB"
.LASF746:
	.string	"use_context"
.LASF796:
	.string	"mac_key_len"
.LASF226:
	.string	"MBEDTLS_KEY_EXCHANGE_RSA"
.LASF749:
	.string	"prf_input"
.LASF1098:
	.string	"mbedtls_ssl_get_own_cid"
.LASF536:
	.string	"ecrs_state"
.LASF626:
	.string	"epoch"
.LASF1108:
	.string	"mbedtls_ssl_get_groups"
.LASF133:
	.string	"MBEDTLS_CIPHER_ARIA_192_CBC"
.LASF171:
	.string	"MBEDTLS_MODE_STREAM"
.LASF8:
	.string	"long long int"
.LASF943:
	.string	"mbedtls_ssl_conf_renegotiation_period"
.LASF1117:
	.string	"mbedtls_ssl_handshake_set_state"
.LASF985:
	.string	"mbedtls_ssl_conf_psk_cb"
.LASF672:
	.string	"mbedtls_ssl_send_flight_completed"
.LASF425:
	.string	"out_ctr"
.LASF462:
	.string	"dtls_srtp_mki_support"
.LASF812:
	.string	"padbuf"
.LASF997:
	.string	"mbedtls_ssl_set_hs_own_cert"
.LASF385:
	.string	"f_send"
.LASF965:
	.string	"cur_len"
.LASF564:
	.string	"alt_transform_out"
.LASF511:
	.string	"dn_hints"
.LASF695:
	.string	"mbedtls_x509_crt_restart_free"
.LASF723:
	.string	"memset"
.LASF868:
	.string	"olen"
.LASF215:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF145:
	.string	"MBEDTLS_CIPHER_ARIA_192_CCM"
.LASF1004:
	.string	"mbedtls_ssl_conf_own_cert"
.LASF196:
	.string	"iv_size"
.LASF398:
	.string	"p_timer"
.LASF374:
	.string	"ticket"
.LASF899:
	.string	"used"
.LASF841:
	.string	"ssl_calc_verify_tls_legacy"
.LASF1052:
	.string	"mbedtls_ssl_add_hs_msg_to_checksum"
.LASF1141:
	.string	"mbedtls_ssl_list_ciphersuites"
.LASF643:
	.string	"extension_type_table"
.LASF79:
	.string	"MBEDTLS_CIPHER_NONE"
.LASF834:
	.string	"doublings"
.LASF726:
	.string	"mbedtls_md_setup"
.LASF741:
	.string	"key_len"
.LASF630:
	.string	"preparation_done"
.LASF883:
	.string	"mbedtls_ssl_sig_from_pk_alg"
.LASF947:
	.string	"mbedtls_ssl_conf_renegotiation"
.LASF238:
	.string	"mbedtls_ssl_ciphersuite_t"
.LASF730:
	.string	"mbedtls_x509_crt_free"
.LASF464:
	.string	"f_dbg"
.LASF137:
	.string	"MBEDTLS_CIPHER_ARIA_256_CFB128"
.LASF396:
	.string	"transform"
.LASF656:
	.string	"psa_family"
.LASF715:
	.string	"mbedtls_ssl_reset_in_pointers"
.LASF92:
	.string	"MBEDTLS_CIPHER_AES_256_CTR"
.LASF898:
	.string	"buf_len"
.LASF240:
	.string	"key_exchange"
.LASF870:
	.string	"sha256"
.LASF512:
	.string	"mbedtls_ssl_transform"
.LASF410:
	.string	"in_msglen"
.LASF1086:
	.string	"written_out"
.LASF598:
	.string	"MBEDTLS_SSL_TLS_PRF_SHA384"
.LASF1084:
	.string	"len_offset_in"
.LASF418:
	.string	"nb_zero"
.LASF620:
	.string	"mbedtls_ssl_hs_buffer"
.LASF481:
	.string	"cid_len"
.LASF27:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF52:
	.string	"mbedtls_ecp_restart_mul"
.LASF251:
	.string	"mbedtls_x509_authority"
.LASF995:
	.string	"mbedtls_ssl_set_hs_dn_hints"
.LASF1072:
	.string	"mbedtls_ssl_get_extension_name"
.LASF68:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF90:
	.string	"MBEDTLS_CIPHER_AES_128_CTR"
.LASF1079:
	.string	"in_buf_new_len"
.LASF94:
	.string	"MBEDTLS_CIPHER_AES_192_GCM"
.LASF804:
	.string	"ssl_tls12prf_from_cs"
.LASF263:
	.string	"version"
.LASF239:
	.string	"cipher"
.LASF328:
	.string	"MBEDTLS_SSL_HELLO_REQUEST"
.LASF111:
	.string	"MBEDTLS_CIPHER_DES_ECB"
.LASF640:
	.string	"tls_prf_fn"
.LASF1132:
	.string	"mbedtls_cipher_info_get_key_bitlen"
.LASF10:
	.string	"unsigned int"
.LASF968:
	.string	"mbedtls_ssl_set_hostname"
.LASF62:
	.string	"MBEDTLS_MD_SHA224"
.LASF37:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF632:
	.string	"digest_len"
.LASF646:
	.string	"ssl_serialized_context_header"
.LASF826:
	.string	"crt_parse_der_failed"
.LASF154:
	.string	"MBEDTLS_CIPHER_AES_256_XTS"
.LASF56:
	.string	"mbedtls_ecp_restart_ctx"
.LASF692:
	.string	"mbedtls_platform_zeroize"
.LASF990:
	.string	"ssl_conf_set_psk_identity"
.LASF850:
	.string	"tls_prf_sha384"
.LASF872:
	.string	"sha384"
.LASF431:
	.string	"out_msgtype"
.LASF797:
	.string	"iv_copy_len"
.LASF4:
	.string	"short int"
.LASF427:
	.string	"out_cid"
.LASF1049:
	.string	"ssl_update_checksum_sha256"
.LASF435:
	.string	"cur_out_ctr"
.LASF808:
	.string	"mbedtls_ssl_handshake_wrapup"
.LASF953:
	.string	"mbedtls_ssl_conf_encrypt_then_mac"
.LASF1011:
	.string	"mbedtls_ssl_conf_ciphersuites"
.LASF1010:
	.string	"profile"
.LASF862:
	.string	"mbedtls_ssl_parse_sig_alg_ext"
.LASF714:
	.string	"mbedtls_ssl_dtls_replay_reset"
.LASF485:
	.string	"ca_crl"
.LASF1023:
	.string	"mbedtls_ssl_conf_authmode"
.LASF388:
	.string	"p_bio"
.LASF70:
	.string	"mbedtls_md_type_t"
.LASF134:
	.string	"MBEDTLS_CIPHER_ARIA_256_CBC"
.LASF587:
	.string	"mbedtls_ssl_srtp_profile"
.LASF469:
	.string	"f_set_cache"
.LASF752:
	.string	"mbedtls_ssl_export_keying_material"
.LASF60:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF193:
	.string	"mbedtls_cipher_info_t"
.LASF923:
	.string	"overhead"
.LASF896:
	.string	"prf_func"
.LASF589:
	.string	"chosen_dtls_srtp_profile"
.LASF419:
	.string	"keep_current_message"
.LASF200:
	.string	"flags"
.LASF916:
	.string	"cert_len"
.LASF756:
	.string	"alert"
.LASF1044:
	.string	"ssl_handshake_init"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_tls.c"
	.globl	__bswapdi2
	.globl	__bswapsi2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
