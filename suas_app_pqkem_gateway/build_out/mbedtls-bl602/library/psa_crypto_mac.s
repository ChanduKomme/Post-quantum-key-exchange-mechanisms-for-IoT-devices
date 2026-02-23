	.file	"psa_crypto_mac.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_mac.c"
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
	.section	.text.psa_get_key_bits,"ax",@progbits
	.align	1
	.type	psa_get_key_bits, @function
psa_get_key_bits:
.LFB50:
	.loc 1 443 1
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
	.loc 1 444 22
	lw	a5,-20(s0)
	lhu	a5,2(a5)
	.loc 1 445 1
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
.LFE50:
	.size	psa_get_key_bits, .-psa_get_key_bits
	.section	.text.psa_hmac_abort_internal,"ax",@progbits
	.align	1
	.type	psa_hmac_abort_internal, @function
psa_hmac_abort_internal:
.LFB68:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_mac.c"
	.loc 2 26 1
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
	.loc 2 27 34
	lw	a5,-20(s0)
	addi	a5,a5,240
	.loc 2 27 5
	li	a1,144
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 2 28 27
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 2 28 12
	mv	a0,a5
	call	psa_hash_abort
	mv	a5,a0
	.loc 2 29 1
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
.LFE68:
	.size	psa_hmac_abort_internal, .-psa_hmac_abort_internal
	.section	.text.psa_hmac_setup_internal,"ax",@progbits
	.align	1
	.type	psa_hmac_setup_internal, @function
psa_hmac_setup_internal:
.LFB69:
	.loc 2 36 1
	.cfi_startproc
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sw	ra,188(sp)
	sw	s0,184(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,192
	.cfi_def_cfa 8, 0
	sw	a0,-180(s0)
	sw	a1,-184(s0)
	sw	a2,-188(s0)
	sw	a3,-192(s0)
	.loc 2 39 72
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 39 58
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 39 147
	li	a5,33554432
	addi	a5,a5,3
	beq	a4,a5,.L8
	.loc 2 39 195 discriminator 1
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 39 181 discriminator 1
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 39 270 discriminator 1
	li	a5,33554432
	addi	a5,a5,4
	beq	a4,a5,.L9
	.loc 2 39 318 discriminator 3
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 39 304 discriminator 3
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 39 393 discriminator 3
	li	a5,33554432
	addi	a5,a5,5
	beq	a4,a5,.L10
	.loc 2 39 441 discriminator 5
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 39 427 discriminator 5
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 39 516 discriminator 5
	li	a5,33554432
	addi	a5,a5,8
	beq	a4,a5,.L11
	.loc 2 39 564 discriminator 7
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 39 550 discriminator 7
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 39 639 discriminator 7
	li	a5,33554432
	addi	a5,a5,9
	beq	a4,a5,.L12
	.loc 2 39 687 discriminator 9
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 39 673 discriminator 9
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 39 762 discriminator 9
	li	a5,33554432
	addi	a5,a5,10
	beq	a4,a5,.L13
	.loc 2 39 810 discriminator 11
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 39 796 discriminator 11
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 39 885 discriminator 11
	li	a5,33554432
	addi	a5,a5,11
	beq	a4,a5,.L14
	.loc 2 39 933 discriminator 13
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 39 919 discriminator 13
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 39 1008 discriminator 13
	li	a5,33554432
	addi	a5,a5,12
	beq	a4,a5,.L15
	.loc 2 39 1056 discriminator 15
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 39 1042 discriminator 15
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 39 1131 discriminator 15
	li	a5,33554432
	addi	a5,a5,13
	beq	a4,a5,.L16
	.loc 2 39 1179 discriminator 17
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 39 1165 discriminator 17
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 39 1254 discriminator 17
	li	a5,33554432
	addi	a5,a5,16
	beq	a4,a5,.L17
	.loc 2 39 1302 discriminator 19
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 39 1288 discriminator 19
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 39 1377 discriminator 19
	li	a5,33554432
	addi	a5,a5,17
	beq	a4,a5,.L18
	.loc 2 39 1425 discriminator 21
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 39 1411 discriminator 21
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 39 1500 discriminator 21
	li	a5,33554432
	addi	a5,a5,18
	beq	a4,a5,.L19
	.loc 2 39 1548 discriminator 23
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 39 1534 discriminator 23
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 39 1623 discriminator 23
	li	a5,33554432
	addi	a5,a5,19
	bne	a4,a5,.L20
	.loc 2 39 12 discriminator 25
	li	a5,64
	sw	a5,-24(s0)
	j	.L21
.L20:
	.loc 2 39 12 is_stmt 0 discriminator 26
	sw	zero,-24(s0)
	j	.L21
.L19:
	.loc 2 39 12 discriminator 24
	li	a5,48
	sw	a5,-24(s0)
	j	.L21
.L18:
	.loc 2 39 12 discriminator 22
	li	a5,32
	sw	a5,-24(s0)
	j	.L21
.L17:
	.loc 2 39 12 discriminator 20
	li	a5,28
	sw	a5,-24(s0)
	j	.L21
.L16:
	.loc 2 39 12 discriminator 18
	li	a5,32
	sw	a5,-24(s0)
	j	.L21
.L15:
	.loc 2 39 12 discriminator 16
	li	a5,28
	sw	a5,-24(s0)
	j	.L21
.L14:
	.loc 2 39 12 discriminator 14
	li	a5,64
	sw	a5,-24(s0)
	j	.L21
.L13:
	.loc 2 39 12 discriminator 12
	li	a5,48
	sw	a5,-24(s0)
	j	.L21
.L12:
	.loc 2 39 12 discriminator 10
	li	a5,32
	sw	a5,-24(s0)
	j	.L21
.L11:
	.loc 2 39 12 discriminator 8
	li	a5,28
	sw	a5,-24(s0)
	j	.L21
.L10:
	.loc 2 39 12 discriminator 6
	li	a5,20
	sw	a5,-24(s0)
	j	.L21
.L9:
	.loc 2 39 12 discriminator 4
	li	a5,20
	sw	a5,-24(s0)
	j	.L21
.L8:
	.loc 2 39 12 discriminator 2
	li	a5,16
	sw	a5,-24(s0)
.L21:
	.loc 2 40 73 is_stmt 1
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 40 59
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 40 148
	li	a5,33554432
	addi	a5,a5,3
	beq	a4,a5,.L22
	.loc 2 40 196 discriminator 1
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 40 182 discriminator 1
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 40 271 discriminator 1
	li	a5,33554432
	addi	a5,a5,4
	beq	a4,a5,.L23
	.loc 2 40 319 discriminator 3
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 40 305 discriminator 3
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 40 394 discriminator 3
	li	a5,33554432
	addi	a5,a5,5
	beq	a4,a5,.L24
	.loc 2 40 442 discriminator 5
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 40 428 discriminator 5
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 40 517 discriminator 5
	li	a5,33554432
	addi	a5,a5,8
	beq	a4,a5,.L25
	.loc 2 40 565 discriminator 7
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 40 551 discriminator 7
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 40 640 discriminator 7
	li	a5,33554432
	addi	a5,a5,9
	beq	a4,a5,.L26
	.loc 2 40 688 discriminator 9
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 40 674 discriminator 9
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 40 764 discriminator 9
	li	a5,33554432
	addi	a5,a5,10
	beq	a4,a5,.L27
	.loc 2 40 812 discriminator 11
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 40 798 discriminator 11
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 40 888 discriminator 11
	li	a5,33554432
	addi	a5,a5,11
	beq	a4,a5,.L28
	.loc 2 40 936 discriminator 13
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 40 922 discriminator 13
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 40 1012 discriminator 13
	li	a5,33554432
	addi	a5,a5,12
	beq	a4,a5,.L29
	.loc 2 40 1060 discriminator 15
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 40 1046 discriminator 15
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 40 1136 discriminator 15
	li	a5,33554432
	addi	a5,a5,13
	beq	a4,a5,.L30
	.loc 2 40 1184 discriminator 17
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 40 1170 discriminator 17
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 40 1260 discriminator 17
	li	a5,33554432
	addi	a5,a5,16
	beq	a4,a5,.L31
	.loc 2 40 1308 discriminator 19
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 40 1294 discriminator 19
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 40 1384 discriminator 19
	li	a5,33554432
	addi	a5,a5,17
	beq	a4,a5,.L32
	.loc 2 40 1432 discriminator 21
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 40 1418 discriminator 21
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 40 1508 discriminator 21
	li	a5,33554432
	addi	a5,a5,18
	beq	a4,a5,.L33
	.loc 2 40 1556 discriminator 23
	lw	a5,-192(s0)
	andi	a4,a5,255
	.loc 2 40 1542 discriminator 23
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 40 1631 discriminator 23
	li	a5,33554432
	addi	a5,a5,19
	bne	a4,a5,.L34
	.loc 2 40 12 discriminator 25
	li	a5,72
	sw	a5,-28(s0)
	j	.L35
.L34:
	.loc 2 40 12 is_stmt 0 discriminator 26
	sw	zero,-28(s0)
	j	.L35
.L33:
	.loc 2 40 12 discriminator 24
	li	a5,104
	sw	a5,-28(s0)
	j	.L35
.L32:
	.loc 2 40 12 discriminator 22
	li	a5,136
	sw	a5,-28(s0)
	j	.L35
.L31:
	.loc 2 40 12 discriminator 20
	li	a5,144
	sw	a5,-28(s0)
	j	.L35
.L30:
	.loc 2 40 12 discriminator 18
	li	a5,128
	sw	a5,-28(s0)
	j	.L35
.L29:
	.loc 2 40 12 discriminator 16
	li	a5,128
	sw	a5,-28(s0)
	j	.L35
.L28:
	.loc 2 40 12 discriminator 14
	li	a5,128
	sw	a5,-28(s0)
	j	.L35
.L27:
	.loc 2 40 12 discriminator 12
	li	a5,128
	sw	a5,-28(s0)
	j	.L35
.L26:
	.loc 2 40 12 discriminator 10
	li	a5,64
	sw	a5,-28(s0)
	j	.L35
.L25:
	.loc 2 40 12 discriminator 8
	li	a5,64
	sw	a5,-28(s0)
	j	.L35
.L24:
	.loc 2 40 12 discriminator 6
	li	a5,64
	sw	a5,-28(s0)
	j	.L35
.L23:
	.loc 2 40 12 discriminator 4
	li	a5,64
	sw	a5,-28(s0)
	j	.L35
.L22:
	.loc 2 40 12 discriminator 2
	li	a5,64
	sw	a5,-28(s0)
.L35:
	.loc 2 43 15 is_stmt 1
	lw	a5,-180(s0)
	lw	a4,-192(s0)
	sw	a4,0(a5)
	.loc 2 51 8
	lw	a4,-28(s0)
	li	a5,144
	bleu	a4,a5,.L36
	.loc 2 52 16
	li	a5,-134
	j	.L48
.L36:
	.loc 2 54 8
	lw	a4,-28(s0)
	li	a5,144
	bleu	a4,a5,.L38
	.loc 2 55 16
	li	a5,-134
	j	.L48
.L38:
	.loc 2 57 8
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	bgeu	a4,a5,.L39
	.loc 2 58 16
	li	a5,-134
	j	.L48
.L39:
	.loc 2 61 20
	lw	a5,-188(s0)
	.loc 2 61 8
	lw	a4,-28(s0)
	bgeu	a4,a5,.L40
	.loc 2 62 18
	lw	a2,-188(s0)
	addi	a5,s0,-188
	addi	a3,s0,-176
	li	a4,144
	lw	a1,-184(s0)
	lw	a0,-192(s0)
	call	psa_hash_compute
	sw	a0,-32(s0)
	.loc 2 64 12
	lw	a5,-32(s0)
	beq	a5,zero,.L41
	.loc 2 65 13
	j	.L42
.L40:
	.loc 2 72 25
	lw	a5,-188(s0)
	.loc 2 72 13
	beq	a5,zero,.L41
	.loc 2 73 9
	lw	a4,-188(s0)
	addi	a5,s0,-176
	mv	a2,a4
	lw	a1,-184(s0)
	mv	a0,a5
	call	memcpy
.L41:
	.loc 2 78 12
	sw	zero,-20(s0)
	.loc 2 78 5
	j	.L43
.L44:
	.loc 2 79 13
	lw	a5,-20(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-160(a5)
	.loc 2 79 17
	xori	a5,a5,54
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-160(a5)
	.loc 2 78 34 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L43:
	.loc 2 78 19 discriminator 1
	lw	a5,-188(s0)
	lw	a4,-20(s0)
	bltu	a4,a5,.L44
	.loc 2 81 5
	lw	a5,-188(s0)
	addi	a4,s0,-176
	add	a3,a4,a5
	lw	a5,-188(s0)
	lw	a4,-28(s0)
	sub	a5,a4,a5
	mv	a2,a5
	li	a1,54
	mv	a0,a3
	call	memset
	.loc 2 85 12
	sw	zero,-20(s0)
	.loc 2 85 5
	j	.L45
.L46:
	.loc 2 86 29
	lw	a5,-20(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-160(a5)
	.loc 2 86 23
	xori	a5,a5,106
	andi	a4,a5,0xff
	lw	a3,-180(s0)
	lw	a5,-20(s0)
	add	a5,a3,a5
	sb	a4,240(a5)
	.loc 2 85 34 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L45:
	.loc 2 85 19 discriminator 1
	lw	a5,-188(s0)
	lw	a4,-20(s0)
	bltu	a4,a5,.L46
	.loc 2 88 12
	lw	a5,-180(s0)
	addi	a4,a5,240
	.loc 2 88 5
	lw	a5,-188(s0)
	add	a3,a4,a5
	lw	a5,-188(s0)
	lw	a4,-28(s0)
	sub	a5,a4,a5
	mv	a2,a5
	li	a1,92
	mv	a0,a3
	call	memset
	.loc 2 90 29
	lw	a5,-180(s0)
	addi	a5,a5,8
	.loc 2 90 14
	lw	a1,-192(s0)
	mv	a0,a5
	call	psa_hash_setup
	sw	a0,-32(s0)
	.loc 2 91 8
	lw	a5,-32(s0)
	bne	a5,zero,.L49
	.loc 2 95 30
	lw	a5,-180(s0)
	addi	a5,a5,8
	.loc 2 95 14
	addi	a4,s0,-176
	lw	a2,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	psa_hash_update
	sw	a0,-32(s0)
	j	.L42
.L49:
	.loc 2 92 9
	nop
.L42:
	.loc 2 98 5
	addi	a5,s0,-176
	li	a1,144
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 2 100 12
	lw	a5,-32(s0)
.L48:
	.loc 2 101 1
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
.LFE69:
	.size	psa_hmac_setup_internal, .-psa_hmac_setup_internal
	.section	.text.psa_hmac_update_internal,"ax",@progbits
	.align	1
	.type	psa_hmac_update_internal, @function
psa_hmac_update_internal:
.LFB70:
	.loc 2 107 1
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
	.loc 2 108 28
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 2 108 12
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	psa_hash_update
	mv	a5,a0
	.loc 2 109 1
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
.LFE70:
	.size	psa_hmac_update_internal, .-psa_hmac_update_internal
	.section	.text.psa_hmac_finish_internal,"ax",@progbits
	.align	1
	.type	psa_hmac_finish_internal, @function
psa_hmac_finish_internal:
.LFB71:
	.loc 2 115 1
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
	.loc 2 117 21
	lw	a5,-100(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 2 118 12
	sw	zero,-96(s0)
	.loc 2 119 73
	lw	a5,-28(s0)
	andi	a4,a5,255
	.loc 2 119 59
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 119 148
	li	a5,33554432
	addi	a5,a5,3
	beq	a4,a5,.L53
	.loc 2 119 196 discriminator 1
	lw	a5,-28(s0)
	andi	a4,a5,255
	.loc 2 119 182 discriminator 1
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 119 271 discriminator 1
	li	a5,33554432
	addi	a5,a5,4
	beq	a4,a5,.L54
	.loc 2 119 319 discriminator 3
	lw	a5,-28(s0)
	andi	a4,a5,255
	.loc 2 119 305 discriminator 3
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 119 394 discriminator 3
	li	a5,33554432
	addi	a5,a5,5
	beq	a4,a5,.L55
	.loc 2 119 442 discriminator 5
	lw	a5,-28(s0)
	andi	a4,a5,255
	.loc 2 119 428 discriminator 5
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 119 517 discriminator 5
	li	a5,33554432
	addi	a5,a5,8
	beq	a4,a5,.L56
	.loc 2 119 565 discriminator 7
	lw	a5,-28(s0)
	andi	a4,a5,255
	.loc 2 119 551 discriminator 7
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 119 640 discriminator 7
	li	a5,33554432
	addi	a5,a5,9
	beq	a4,a5,.L57
	.loc 2 119 688 discriminator 9
	lw	a5,-28(s0)
	andi	a4,a5,255
	.loc 2 119 674 discriminator 9
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 119 764 discriminator 9
	li	a5,33554432
	addi	a5,a5,10
	beq	a4,a5,.L58
	.loc 2 119 812 discriminator 11
	lw	a5,-28(s0)
	andi	a4,a5,255
	.loc 2 119 798 discriminator 11
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 119 888 discriminator 11
	li	a5,33554432
	addi	a5,a5,11
	beq	a4,a5,.L59
	.loc 2 119 936 discriminator 13
	lw	a5,-28(s0)
	andi	a4,a5,255
	.loc 2 119 922 discriminator 13
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 119 1012 discriminator 13
	li	a5,33554432
	addi	a5,a5,12
	beq	a4,a5,.L60
	.loc 2 119 1060 discriminator 15
	lw	a5,-28(s0)
	andi	a4,a5,255
	.loc 2 119 1046 discriminator 15
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 119 1136 discriminator 15
	li	a5,33554432
	addi	a5,a5,13
	beq	a4,a5,.L61
	.loc 2 119 1184 discriminator 17
	lw	a5,-28(s0)
	andi	a4,a5,255
	.loc 2 119 1170 discriminator 17
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 119 1260 discriminator 17
	li	a5,33554432
	addi	a5,a5,16
	beq	a4,a5,.L62
	.loc 2 119 1308 discriminator 19
	lw	a5,-28(s0)
	andi	a4,a5,255
	.loc 2 119 1294 discriminator 19
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 119 1384 discriminator 19
	li	a5,33554432
	addi	a5,a5,17
	beq	a4,a5,.L63
	.loc 2 119 1432 discriminator 21
	lw	a5,-28(s0)
	andi	a4,a5,255
	.loc 2 119 1418 discriminator 21
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 119 1508 discriminator 21
	li	a5,33554432
	addi	a5,a5,18
	beq	a4,a5,.L64
	.loc 2 119 1556 discriminator 23
	lw	a5,-28(s0)
	andi	a4,a5,255
	.loc 2 119 1542 discriminator 23
	li	a5,33554432
	or	a4,a4,a5
	.loc 2 119 1631 discriminator 23
	li	a5,33554432
	addi	a5,a5,19
	bne	a4,a5,.L65
	.loc 2 119 12 discriminator 25
	li	a5,72
	sw	a5,-20(s0)
	j	.L66
.L65:
	.loc 2 119 12 is_stmt 0 discriminator 26
	sw	zero,-20(s0)
	j	.L66
.L64:
	.loc 2 119 12 discriminator 24
	li	a5,104
	sw	a5,-20(s0)
	j	.L66
.L63:
	.loc 2 119 12 discriminator 22
	li	a5,136
	sw	a5,-20(s0)
	j	.L66
.L62:
	.loc 2 119 12 discriminator 20
	li	a5,144
	sw	a5,-20(s0)
	j	.L66
.L61:
	.loc 2 119 12 discriminator 18
	li	a5,128
	sw	a5,-20(s0)
	j	.L66
.L60:
	.loc 2 119 12 discriminator 16
	li	a5,128
	sw	a5,-20(s0)
	j	.L66
.L59:
	.loc 2 119 12 discriminator 14
	li	a5,128
	sw	a5,-20(s0)
	j	.L66
.L58:
	.loc 2 119 12 discriminator 12
	li	a5,128
	sw	a5,-20(s0)
	j	.L66
.L57:
	.loc 2 119 12 discriminator 10
	li	a5,64
	sw	a5,-20(s0)
	j	.L66
.L56:
	.loc 2 119 12 discriminator 8
	li	a5,64
	sw	a5,-20(s0)
	j	.L66
.L55:
	.loc 2 119 12 discriminator 6
	li	a5,64
	sw	a5,-20(s0)
	j	.L66
.L54:
	.loc 2 119 12 discriminator 4
	li	a5,64
	sw	a5,-20(s0)
	j	.L66
.L53:
	.loc 2 119 12 discriminator 2
	li	a5,64
	sw	a5,-20(s0)
.L66:
	.loc 2 122 30 is_stmt 1
	lw	a5,-100(s0)
	addi	a5,a5,8
	.loc 2 122 14
	addi	a3,s0,-96
	addi	a4,s0,-92
	li	a2,64
	mv	a1,a4
	mv	a0,a5
	call	psa_hash_finish
	sw	a0,-24(s0)
	.loc 2 123 8
	lw	a5,-24(s0)
	beq	a5,zero,.L67
	.loc 2 124 16
	lw	a5,-24(s0)
	j	.L74
.L67:
	.loc 2 128 29
	lw	a5,-100(s0)
	addi	a5,a5,8
	.loc 2 128 14
	lw	a1,-28(s0)
	mv	a0,a5
	call	psa_hash_setup
	sw	a0,-24(s0)
	.loc 2 129 8
	lw	a5,-24(s0)
	bne	a5,zero,.L75
	.loc 2 133 30
	lw	a5,-100(s0)
	addi	a4,a5,8
	.loc 2 133 51
	lw	a5,-100(s0)
	addi	a5,a5,240
	.loc 2 133 14
	lw	a2,-20(s0)
	mv	a1,a5
	mv	a0,a4
	call	psa_hash_update
	sw	a0,-24(s0)
	.loc 2 134 8
	lw	a5,-24(s0)
	bne	a5,zero,.L76
	.loc 2 138 30
	lw	a5,-100(s0)
	addi	a5,a5,8
	.loc 2 138 14
	lw	a3,-96(s0)
	addi	a4,s0,-92
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	psa_hash_update
	sw	a0,-24(s0)
	.loc 2 139 8
	lw	a5,-24(s0)
	bne	a5,zero,.L77
	.loc 2 143 30
	lw	a5,-100(s0)
	addi	a5,a5,8
	.loc 2 143 14
	addi	a3,s0,-96
	addi	a4,s0,-92
	li	a2,64
	mv	a1,a4
	mv	a0,a5
	call	psa_hash_finish
	sw	a0,-24(s0)
	.loc 2 144 8
	lw	a5,-24(s0)
	bne	a5,zero,.L78
	.loc 2 148 5
	addi	a5,s0,-92
	lw	a2,-108(s0)
	mv	a1,a5
	lw	a0,-104(s0)
	call	memcpy
	j	.L70
.L75:
	.loc 2 130 9
	nop
	j	.L70
.L76:
	.loc 2 135 9
	nop
	j	.L70
.L77:
	.loc 2 140 9
	nop
	j	.L70
.L78:
	.loc 2 145 9
	nop
.L70:
	.loc 2 151 5
	lw	a4,-96(s0)
	addi	a5,s0,-92
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 2 152 12
	lw	a5,-24(s0)
.L74:
	.loc 2 153 1
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
.LFE71:
	.size	psa_hmac_finish_internal, .-psa_hmac_finish_internal
	.section	.text.cmac_setup,"ax",@progbits
	.align	1
	.type	cmac_setup, @function
cmac_setup:
.LFB72:
	.loc 2 160 1
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
	sw	a2,-44(s0)
	.loc 2 161 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 166 9
	lw	a0,-40(s0)
	call	psa_get_key_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 166 8 discriminator 1
	li	a5,8192
	addi	a5,a5,769
	bne	a4,a5,.L80
	.loc 2 167 10
	lw	a0,-40(s0)
	call	psa_get_key_bits
	mv	a4,a0
	.loc 2 166 67 discriminator 2
	li	a5,64
	beq	a4,a5,.L81
	.loc 2 168 10
	lw	a0,-40(s0)
	call	psa_get_key_bits
	mv	a4,a0
	.loc 2 167 45
	li	a5,128
	bne	a4,a5,.L80
.L81:
	.loc 2 169 16
	li	a5,-134
	j	.L82
.L80:
	.loc 2 174 9
	lw	a0,-40(s0)
	call	psa_get_key_type
	mv	a5,a0
	mv	s1,a5
	.loc 2 174 9 is_stmt 0 discriminator 1
	lw	a0,-40(s0)
	call	psa_get_key_bits
	mv	a5,a0
	.loc 2 174 9 discriminator 2
	li	a3,0
	mv	a2,a5
	mv	a1,s1
	li	a5,62914560
	addi	a0,a5,512
	call	mbedtls_cipher_info_from_psa
	sw	a0,-24(s0)
	.loc 2 180 8 is_stmt 1
	lw	a5,-24(s0)
	bne	a5,zero,.L83
	.loc 2 181 16
	li	a5,-134
	j	.L82
.L83:
	.loc 2 184 11
	lw	a5,-36(s0)
	addi	a5,a5,8
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_cipher_setup
	sw	a0,-20(s0)
	.loc 2 185 8
	lw	a5,-20(s0)
	bne	a5,zero,.L86
	.loc 2 189 11
	lw	a5,-36(s0)
	addi	s1,a5,8
	lw	a0,-40(s0)
	call	psa_get_key_bits
	mv	a5,a0
	.loc 2 189 11 is_stmt 0 discriminator 1
	mv	a2,a5
	lw	a1,-44(s0)
	mv	a0,s1
	call	mbedtls_cipher_cmac_starts
	sw	a0,-20(s0)
	j	.L85
.L86:
	.loc 2 186 9 is_stmt 1
	nop
.L85:
	.loc 2 193 12
	lw	a0,-20(s0)
	call	mbedtls_to_psa_error
	mv	a5,a0
.L82:
	.loc 2 194 1
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
.LFE72:
	.size	cmac_setup, .-cmac_setup
	.section	.text.mac_init,"ax",@progbits
	.align	1
	.type	mac_init, @function
mac_init:
.LFB73:
	.loc 2 205 1
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
	.loc 2 206 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 2 208 20
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 2 211 20
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 211 27
	li	a5,-4161536
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 2 211 8
	li	a5,62914560
	addi	a5,a5,512
	bne	a4,a5,.L88
	.loc 2 212 9
	lw	a5,-36(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_cipher_init
	.loc 2 213 16
	sw	zero,-20(s0)
	j	.L89
.L88:
	.loc 2 217 21
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 217 28
	li	a5,2143289344
	and	a4,a4,a5
	.loc 2 217 8
	li	a5,58720256
	bne	a4,a5,.L90
	.loc 2 219 33
	lw	a5,-36(s0)
	sw	zero,8(a5)
	.loc 2 220 16
	sw	zero,-20(s0)
	j	.L89
.L90:
	.loc 2 225 16
	li	a5,-134
	sw	a5,-20(s0)
.L89:
	.loc 2 228 8
	lw	a5,-20(s0)
	beq	a5,zero,.L91
	.loc 2 229 9
	li	a2,392
	li	a1,0
	lw	a0,-36(s0)
	call	memset
.L91:
	.loc 2 231 12
	lw	a5,-20(s0)
	.loc 2 232 1
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
.LFE73:
	.size	mac_init, .-mac_init
	.section	.text.mbedtls_psa_mac_abort,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_mac_abort
	.type	mbedtls_psa_mac_abort, @function
mbedtls_psa_mac_abort:
.LFB74:
	.loc 2 235 1
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
	.loc 2 236 18
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 236 8
	bne	a5,zero,.L94
	.loc 2 240 16
	li	a5,0
	j	.L95
.L94:
	.loc 2 243 20
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 243 27
	li	a5,-4161536
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 2 243 8
	li	a5,62914560
	addi	a5,a5,512
	bne	a4,a5,.L96
	.loc 2 244 9
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_cipher_free
	j	.L97
.L96:
	.loc 2 248 21
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 248 28
	li	a5,2143289344
	and	a4,a4,a5
	.loc 2 248 8
	li	a5,58720256
	bne	a4,a5,.L100
	.loc 2 249 9
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	psa_hmac_abort_internal
.L97:
	.loc 2 258 20
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 2 260 12
	li	a5,0
	j	.L95
.L100:
	.loc 2 255 9
	nop
.L99:
	.loc 2 267 5
	li	a2,392
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 2 268 12
	li	a5,-137
.L95:
	.loc 2 269 1
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
.LFE74:
	.size	mbedtls_psa_mac_abort, .-mbedtls_psa_mac_abort
	.section	.text.psa_mac_setup,"ax",@progbits
	.align	1
	.type	psa_mac_setup, @function
psa_mac_setup:
.LFB75:
	.loc 2 276 1
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
	.loc 2 277 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 2 280 18
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 280 8
	beq	a5,zero,.L102
	.loc 2 281 16
	li	a5,-137
	j	.L103
.L102:
	.loc 2 284 14
	lw	a1,-52(s0)
	lw	a0,-36(s0)
	call	mac_init
	sw	a0,-20(s0)
	.loc 2 285 8
	lw	a5,-20(s0)
	beq	a5,zero,.L104
	.loc 2 286 16
	lw	a5,-20(s0)
	j	.L103
.L104:
	.loc 2 290 16
	lw	a4,-52(s0)
	li	a5,-4161536
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 2 290 8
	li	a5,62914560
	addi	a5,a5,512
	bne	a4,a5,.L105
	.loc 2 294 18
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	cmac_setup
	sw	a0,-20(s0)
	j	.L106
.L105:
	.loc 2 298 17
	lw	a4,-52(s0)
	li	a5,2143289344
	and	a4,a4,a5
	.loc 2 298 8
	li	a5,58720256
	bne	a4,a5,.L107
	.loc 2 299 18
	lw	a5,-36(s0)
	addi	a0,a5,8
	.loc 2 302 83
	lw	a5,-52(s0)
	andi	a4,a5,255
	.loc 2 302 74
	li	a5,33554432
	or	a5,a4,a5
	.loc 2 299 18
	mv	a3,a5
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	call	psa_hmac_setup_internal
	sw	a0,-20(s0)
	j	.L106
.L107:
	.loc 2 309 16
	li	a5,-134
	sw	a5,-20(s0)
.L106:
	.loc 2 312 8
	lw	a5,-20(s0)
	beq	a5,zero,.L108
	.loc 2 313 9
	lw	a0,-36(s0)
	call	mbedtls_psa_mac_abort
.L108:
	.loc 2 316 12
	lw	a5,-20(s0)
.L103:
	.loc 2 317 1
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
	.size	psa_mac_setup, .-psa_mac_setup
	.section	.text.mbedtls_psa_mac_sign_setup,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_mac_sign_setup
	.type	mbedtls_psa_mac_sign_setup, @function
mbedtls_psa_mac_sign_setup:
.LFB76:
	.loc 2 325 1
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
	.loc 2 326 12
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	psa_mac_setup
	mv	a5,a0
	.loc 2 328 1
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
.LFE76:
	.size	mbedtls_psa_mac_sign_setup, .-mbedtls_psa_mac_sign_setup
	.section	.text.mbedtls_psa_mac_verify_setup,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_mac_verify_setup
	.type	mbedtls_psa_mac_verify_setup, @function
mbedtls_psa_mac_verify_setup:
.LFB77:
	.loc 2 336 1
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
	.loc 2 337 12
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	psa_mac_setup
	mv	a5,a0
	.loc 2 339 1
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
	.size	mbedtls_psa_mac_verify_setup, .-mbedtls_psa_mac_verify_setup
	.section	.text.mbedtls_psa_mac_update,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_mac_update
	.type	mbedtls_psa_mac_update, @function
mbedtls_psa_mac_update:
.LFB78:
	.loc 2 345 1
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
	.loc 2 346 18
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 346 8
	bne	a5,zero,.L114
	.loc 2 347 16
	li	a5,-137
	j	.L115
.L114:
	.loc 2 351 20
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 351 27
	li	a5,-4161536
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 2 351 8
	li	a5,62914560
	addi	a5,a5,512
	bne	a4,a5,.L116
	.loc 2 352 16
	lw	a5,-20(s0)
	addi	a5,a5,8
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_cipher_cmac_update
	mv	a5,a0
	.loc 2 352 16 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	mv	a5,a0
	.loc 2 352 16
	j	.L115
.L116:
	.loc 2 358 21 is_stmt 1
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 358 28
	li	a5,2143289344
	and	a4,a4,a5
	.loc 2 358 8
	li	a5,58720256
	bne	a4,a5,.L117
	.loc 2 359 16
	lw	a5,-20(s0)
	addi	a5,a5,8
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	psa_hmac_update_internal
	mv	a5,a0
	j	.L115
.L117:
	.loc 2 368 16
	li	a5,-137
.L115:
	.loc 2 370 1
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
	.size	mbedtls_psa_mac_update, .-mbedtls_psa_mac_update
	.section	.text.psa_mac_finish_internal,"ax",@progbits
	.align	1
	.type	psa_mac_finish_internal, @function
psa_mac_finish_internal:
.LFB79:
	.loc 2 375 1
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
	.loc 2 377 20
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 377 27
	li	a5,-4161536
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 2 377 8
	li	a5,62914560
	addi	a5,a5,512
	bne	a4,a5,.L119
.LBB2:
	.loc 2 379 19
	lw	a5,-52(s0)
	addi	a5,a5,8
	addi	a4,s0,-36
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_cipher_cmac_finish
	sw	a0,-20(s0)
	.loc 2 380 12
	lw	a5,-20(s0)
	bne	a5,zero,.L120
	.loc 2 381 13
	addi	a5,s0,-36
	lw	a2,-60(s0)
	mv	a1,a5
	lw	a0,-56(s0)
	call	memcpy
.L120:
	.loc 2 383 9
	addi	a5,s0,-36
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 2 384 16
	lw	a0,-20(s0)
	call	mbedtls_to_psa_error
	mv	a5,a0
	j	.L121
.L119:
.LBE2:
	.loc 2 388 21
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 388 28
	li	a5,2143289344
	and	a4,a4,a5
	.loc 2 388 8
	li	a5,58720256
	bne	a4,a5,.L122
	.loc 2 389 16
	lw	a5,-52(s0)
	addi	a5,a5,8
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	mv	a0,a5
	call	psa_hmac_finish_internal
	mv	a5,a0
	j	.L121
.L122:
	.loc 2 399 16
	li	a5,-137
.L121:
	.loc 2 401 1
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
.LFE79:
	.size	psa_mac_finish_internal, .-psa_mac_finish_internal
	.section	.text.mbedtls_psa_mac_sign_finish,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_mac_sign_finish
	.type	mbedtls_psa_mac_sign_finish, @function
mbedtls_psa_mac_sign_finish:
.LFB80:
	.loc 2 408 1
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
	.loc 2 409 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 2 411 18
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 411 8
	bne	a5,zero,.L124
	.loc 2 412 16
	li	a5,-137
	j	.L125
.L124:
	.loc 2 415 14
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	psa_mac_finish_internal
	sw	a0,-20(s0)
	.loc 2 416 8
	lw	a5,-20(s0)
	bne	a5,zero,.L126
	.loc 2 417 21
	lw	a5,-48(s0)
	lw	a4,-44(s0)
	sw	a4,0(a5)
.L126:
	.loc 2 420 12
	lw	a5,-20(s0)
.L125:
	.loc 2 421 1
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
.LFE80:
	.size	mbedtls_psa_mac_sign_finish, .-mbedtls_psa_mac_sign_finish
	.section	.text.mbedtls_psa_mac_verify_finish,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_mac_verify_finish
	.type	mbedtls_psa_mac_verify_finish, @function
mbedtls_psa_mac_verify_finish:
.LFB81:
	.loc 2 427 1
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
	.loc 2 429 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 2 431 18
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 431 8
	bne	a5,zero,.L128
	.loc 2 432 16
	li	a5,-137
	j	.L133
.L128:
	.loc 2 436 8
	lw	a4,-108(s0)
	li	a5,64
	bleu	a4,a5,.L130
	.loc 2 437 16
	li	a5,-135
	j	.L133
.L130:
	.loc 2 440 14
	addi	a5,s0,-84
	lw	a2,-108(s0)
	mv	a1,a5
	lw	a0,-100(s0)
	call	psa_mac_finish_internal
	sw	a0,-20(s0)
	.loc 2 441 8
	lw	a5,-20(s0)
	bne	a5,zero,.L134
	.loc 2 445 9
	addi	a5,s0,-84
	lw	a2,-108(s0)
	mv	a1,a5
	lw	a0,-104(s0)
	call	mbedtls_ct_memcmp
	mv	a5,a0
	.loc 2 445 8 discriminator 1
	beq	a5,zero,.L135
	.loc 2 446 16
	li	a5,-149
	sw	a5,-20(s0)
	j	.L132
.L134:
	.loc 2 442 9
	nop
	j	.L132
.L135:
	.loc 2 449 1
	nop
.L132:
	.loc 2 450 5
	addi	a5,s0,-84
	li	a1,64
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 2 452 12
	lw	a5,-20(s0)
.L133:
	.loc 2 453 1
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
.LFE81:
	.size	mbedtls_psa_mac_verify_finish, .-mbedtls_psa_mac_verify_finish
	.section	.text.mbedtls_psa_mac_compute,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_mac_compute
	.type	mbedtls_psa_mac_compute, @function
mbedtls_psa_mac_compute:
.LFB82:
	.loc 2 465 1
	.cfi_startproc
	addi	sp,sp,-448
	.cfi_def_cfa_offset 448
	sw	ra,444(sp)
	sw	s0,440(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,448
	.cfi_def_cfa 8, 0
	sw	a0,-420(s0)
	sw	a1,-424(s0)
	sw	a2,-428(s0)
	sw	a3,-432(s0)
	sw	a4,-436(s0)
	sw	a5,-440(s0)
	sw	a6,-444(s0)
	sw	a7,-448(s0)
	.loc 2 466 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 2 467 33
	sw	zero,-416(s0)
	sw	zero,-408(s0)
	.loc 2 476 5
	addi	a5,s0,-416
	li	a2,392
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 478 14
	addi	a5,s0,-416
	lw	a4,-432(s0)
	lw	a3,-428(s0)
	lw	a2,-424(s0)
	lw	a1,-420(s0)
	mv	a0,a5
	call	psa_mac_setup
	sw	a0,-20(s0)
	.loc 2 481 8
	lw	a5,-20(s0)
	bne	a5,zero,.L141
	.loc 2 485 8
	lw	a5,-440(s0)
	beq	a5,zero,.L139
	.loc 2 486 18
	addi	a5,s0,-416
	lw	a2,-440(s0)
	lw	a1,-436(s0)
	mv	a0,a5
	call	mbedtls_psa_mac_update
	sw	a0,-20(s0)
	.loc 2 487 12
	lw	a5,-20(s0)
	bne	a5,zero,.L142
.L139:
	.loc 2 492 14
	addi	a5,s0,-416
	lw	a2,-448(s0)
	lw	a1,-444(s0)
	mv	a0,a5
	call	psa_mac_finish_internal
	sw	a0,-20(s0)
	.loc 2 493 8
	lw	a5,-20(s0)
	bne	a5,zero,.L143
	.loc 2 494 21
	lw	a5,0(s0)
	lw	a4,-448(s0)
	sw	a4,0(a5)
	j	.L138
.L141:
	.loc 2 482 9
	nop
	j	.L138
.L142:
	.loc 2 488 13
	nop
	j	.L138
.L143:
	.loc 2 497 1
	nop
.L138:
	.loc 2 498 5
	addi	a5,s0,-416
	mv	a0,a5
	call	mbedtls_psa_mac_abort
	.loc 2 500 12
	lw	a5,-20(s0)
	.loc 2 501 1
	mv	a0,a5
	lw	ra,444(sp)
	.cfi_restore 1
	lw	s0,440(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 448
	addi	sp,sp,448
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE82:
	.size	mbedtls_psa_mac_compute, .-mbedtls_psa_mac_compute
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_types.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md5.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ripemd160.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/sha1.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/sha256.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/sha512.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/sha3.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_builtin_primitives.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/cipher.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/cmac.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_driver_contexts_primitives.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_builtin_composites.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/constant_time.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_core.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_cipher.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 22 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x10f8
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x27
	.4byte	.LASF151
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x18
	.4byte	0x32
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x28
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x18
	.4byte	0x95
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x45
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x37
	.byte	0x20
	.4byte	0x61
	.uleb128 0x29
	.byte	0x4
	.uleb128 0x1f
	.4byte	0xca
	.uleb128 0x5
	.4byte	0x32
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x18
	.4byte	0xd6
	.uleb128 0x5
	.4byte	0xdd
	.uleb128 0x5
	.4byte	0xf1
	.uleb128 0x1f
	.4byte	0xe7
	.uleb128 0x2a
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x3b
	.byte	0x11
	.4byte	0x89
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x4e
	.byte	0x12
	.4byte	0xa6
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x86
	.byte	0x12
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0xb7
	.byte	0x12
	.4byte	0xb2
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x113
	.byte	0x12
	.4byte	0xb2
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x124
	.byte	0x16
	.4byte	0x122
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x143
	.byte	0x12
	.4byte	0xb2
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x1b0
	.byte	0x25
	.4byte	0x15b
	.uleb128 0x18
	.4byte	0x149
	.uleb128 0x19
	.4byte	.LASF31
	.byte	0x18
	.byte	0x1
	.2byte	0x127
	.byte	0x8
	.4byte	0x1af
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x12c
	.byte	0x14
	.4byte	0xfe
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x12d
	.byte	0x14
	.4byte	0x82c
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x12e
	.byte	0x18
	.4byte	0x116
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x12f
	.byte	0x16
	.4byte	0x81f
	.byte	0x8
	.uleb128 0x1a
	.string	"id"
	.byte	0x1
	.2byte	0x13b
	.byte	0x1a
	.4byte	0x12f
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x58
	.byte	0x6
	.byte	0x27
	.byte	0x10
	.4byte	0x1e4
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x6
	.byte	0x28
	.byte	0xe
	.4byte	0x1e4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x6
	.byte	0x29
	.byte	0xe
	.4byte	0x1f4
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x6
	.byte	0x2a
	.byte	0x13
	.4byte	0x204
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.4byte	0xb2
	.4byte	0x1f4
	.uleb128 0x9
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0xb2
	.4byte	0x204
	.uleb128 0x9
	.4byte	0x6f
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x32
	.4byte	0x214
	.uleb128 0x9
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x6
	.byte	0x2c
	.byte	0x1
	.4byte	0x1af
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x5c
	.byte	0x7
	.byte	0x1e
	.byte	0x10
	.4byte	0x255
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x7
	.byte	0x1f
	.byte	0xe
	.4byte	0x1e4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x7
	.byte	0x20
	.byte	0xe
	.4byte	0x255
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x7
	.byte	0x21
	.byte	0x13
	.4byte	0x204
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.4byte	0xb2
	.4byte	0x265
	.uleb128 0x9
	.4byte	0x6f
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x7
	.byte	0x23
	.byte	0x1
	.4byte	0x220
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x5c
	.byte	0x8
	.byte	0x2d
	.byte	0x10
	.4byte	0x2a6
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x8
	.byte	0x2e
	.byte	0xe
	.4byte	0x1e4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x8
	.byte	0x2f
	.byte	0xe
	.4byte	0x255
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x8
	.byte	0x30
	.byte	0x13
	.4byte	0x204
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x8
	.byte	0x32
	.byte	0x1
	.4byte	0x271
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x6c
	.byte	0x9
	.byte	0x28
	.byte	0x10
	.4byte	0x2f4
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x9
	.byte	0x29
	.byte	0x13
	.4byte	0x204
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x9
	.byte	0x2a
	.byte	0xe
	.4byte	0x1e4
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x9
	.byte	0x2b
	.byte	0xe
	.4byte	0x2f4
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x9
	.byte	0x2d
	.byte	0x9
	.4byte	0x68
	.byte	0x68
	.byte	0
	.uleb128 0x8
	.4byte	0xb2
	.4byte	0x304
	.uleb128 0x9
	.4byte	0x6f
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x9
	.byte	0x31
	.byte	0x1
	.4byte	0x2b2
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0xd8
	.byte	0xa
	.byte	0x27
	.byte	0x10
	.4byte	0x352
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0xa
	.byte	0x28
	.byte	0xe
	.4byte	0x352
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0xa
	.byte	0x29
	.byte	0xe
	.4byte	0x362
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0xa
	.byte	0x2a
	.byte	0x13
	.4byte	0x372
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0xa
	.byte	0x2c
	.byte	0x9
	.4byte	0x68
	.byte	0xd0
	.byte	0
	.uleb128 0x8
	.4byte	0xbe
	.4byte	0x362
	.uleb128 0x9
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0xbe
	.4byte	0x372
	.uleb128 0x9
	.4byte	0x6f
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x32
	.4byte	0x382
	.uleb128 0x9
	.4byte	0x6f
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0xa
	.byte	0x30
	.byte	0x1
	.4byte	0x310
	.uleb128 0x20
	.byte	0xd0
	.byte	0xb
	.byte	0x32
	.4byte	0x3cb
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0xb
	.byte	0x33
	.byte	0xe
	.4byte	0x3cb
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0xb
	.byte	0x34
	.byte	0xe
	.4byte	0xb2
	.byte	0xc8
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xb
	.byte	0x35
	.byte	0xe
	.4byte	0xa6
	.byte	0xcc
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xb
	.byte	0x36
	.byte	0xe
	.4byte	0xa6
	.byte	0xce
	.byte	0
	.uleb128 0x8
	.4byte	0xbe
	.4byte	0x3db
	.uleb128 0x9
	.4byte	0x6f
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0xb
	.byte	0x38
	.byte	0x1
	.4byte	0x38e
	.uleb128 0x21
	.byte	0xd8
	.byte	0xc
	.byte	0x36
	.byte	0x5
	.4byte	0x445
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0xc
	.byte	0x37
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x2b
	.string	"md5"
	.byte	0xc
	.byte	0x39
	.byte	0x1d
	.4byte	0x214
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0xc
	.byte	0x3c
	.byte	0x23
	.4byte	0x265
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0xc
	.byte	0x3f
	.byte	0x1e
	.4byte	0x2a6
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0xc
	.byte	0x43
	.byte	0x20
	.4byte	0x304
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0xc
	.byte	0x47
	.byte	0x20
	.4byte	0x382
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0xc
	.byte	0x4d
	.byte	0x1e
	.4byte	0x3db
	.byte	0
	.uleb128 0x20
	.byte	0xe0
	.byte	0xc
	.byte	0x34
	.4byte	0x468
	.uleb128 0x11
	.string	"alg"
	.byte	0xc
	.byte	0x35
	.byte	0x15
	.4byte	0x10a
	.byte	0
	.uleb128 0x11
	.string	"ctx"
	.byte	0xc
	.byte	0x4f
	.byte	0x7
	.4byte	0x3e7
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0xc
	.byte	0x50
	.byte	0x3
	.4byte	0x445
	.uleb128 0x22
	.byte	0x7
	.4byte	0x32
	.byte	0x42
	.4byte	0x4b0
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0xd
	.byte	0x4b
	.byte	0x3
	.4byte	0x474
	.uleb128 0x22
	.byte	0x5
	.4byte	0x2b
	.byte	0xc7
	.4byte	0x4da
	.uleb128 0x2c
	.4byte	.LASF62
	.sleb128 -1
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0xd
	.byte	0xcb
	.byte	0x3
	.4byte	0x4bc
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0xd
	.byte	0xf9
	.byte	0x27
	.4byte	0x4f2
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x24
	.byte	0xe
	.byte	0x3b
	.byte	0x8
	.4byte	0x527
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0xe
	.byte	0x3d
	.byte	0x13
	.4byte	0x6a0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xe
	.byte	0x41
	.byte	0x13
	.4byte	0x6a0
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xe
	.byte	0x44
	.byte	0xc
	.4byte	0x76
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF69
	.byte	0x8
	.byte	0xd
	.2byte	0x10a
	.byte	0x10
	.4byte	0x59f
	.uleb128 0x6
	.4byte	.LASF70
	.byte	0xd
	.2byte	0x10c
	.byte	0x11
	.4byte	0xe2
	.byte	0
	.uleb128 0x12
	.4byte	.LASF71
	.2byte	0x10f
	.4byte	0x6f
	.byte	0x5
	.byte	0x20
	.uleb128 0x12
	.4byte	.LASF72
	.2byte	0x115
	.4byte	0x6f
	.byte	0x3
	.byte	0x25
	.uleb128 0x12
	.4byte	.LASF73
	.2byte	0x11b
	.4byte	0x6f
	.byte	0x4
	.byte	0x28
	.uleb128 0x12
	.4byte	.LASF74
	.2byte	0x120
	.4byte	0x6f
	.byte	0x4
	.byte	0x2c
	.uleb128 0x12
	.4byte	.LASF27
	.2byte	0x128
	.4byte	0x6f
	.byte	0x8
	.byte	0x30
	.uleb128 0x12
	.4byte	.LASF75
	.2byte	0x12e
	.4byte	0x6f
	.byte	0x2
	.byte	0x38
	.uleb128 0x12
	.4byte	.LASF76
	.2byte	0x131
	.4byte	0x6f
	.byte	0x5
	.byte	0x3a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0xd
	.2byte	0x133
	.byte	0x3
	.4byte	0x527
	.uleb128 0x18
	.4byte	0x59f
	.uleb128 0x19
	.4byte	.LASF77
	.byte	0x44
	.byte	0xd
	.2byte	0x13c
	.byte	0x10
	.4byte	0x659
	.uleb128 0x6
	.4byte	.LASF78
	.byte	0xd
	.2byte	0x13e
	.byte	0x22
	.4byte	0x659
	.byte	0
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0xd
	.2byte	0x141
	.byte	0x9
	.4byte	0x68
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF79
	.byte	0xd
	.2byte	0x146
	.byte	0x19
	.4byte	0x4da
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF80
	.byte	0xd
	.2byte	0x14c
	.byte	0xb
	.4byte	0x673
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF81
	.byte	0xd
	.2byte	0x152
	.byte	0xa
	.4byte	0x69b
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0xd
	.2byte	0x158
	.byte	0x13
	.4byte	0x6a0
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0xd
	.2byte	0x15b
	.byte	0xc
	.4byte	0x76
	.byte	0x24
	.uleb128 0x1a
	.string	"iv"
	.byte	0xd
	.2byte	0x15f
	.byte	0x13
	.4byte	0x6a0
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0xd
	.2byte	0x162
	.byte	0xc
	.4byte	0x76
	.byte	0x38
	.uleb128 0x6
	.4byte	.LASF83
	.byte	0xd
	.2byte	0x165
	.byte	0xb
	.4byte	0xca
	.byte	0x3c
	.uleb128 0x6
	.4byte	.LASF84
	.byte	0xd
	.2byte	0x169
	.byte	0x1d
	.4byte	0x6b0
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.4byte	0x5ac
	.uleb128 0x2d
	.4byte	0x673
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x5
	.4byte	0x65e
	.uleb128 0x2e
	.4byte	0x68
	.4byte	0x696
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x696
	.byte	0
	.uleb128 0x5
	.4byte	0x76
	.uleb128 0x5
	.4byte	0x678
	.uleb128 0x8
	.4byte	0x32
	.4byte	0x6b0
	.uleb128 0x9
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0x4e6
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0xd
	.2byte	0x177
	.byte	0x3
	.4byte	0x5b1
	.uleb128 0x21
	.byte	0xe0
	.byte	0xf
	.byte	0x57
	.byte	0x9
	.4byte	0x6e4
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0xf
	.byte	0x58
	.byte	0xe
	.4byte	0x6f
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0xf
	.byte	0x59
	.byte	0x22
	.4byte	0x468
	.byte	0
	.uleb128 0x4
	.4byte	.LASF86
	.byte	0xf
	.byte	0x5d
	.byte	0x3
	.4byte	0x6c2
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0xe8
	.byte	0x1
	.byte	0x46
	.byte	0x8
	.4byte	0x717
	.uleb128 0x11
	.string	"id"
	.byte	0x1
	.byte	0x50
	.byte	0x12
	.4byte	0x6f
	.byte	0
	.uleb128 0x11
	.string	"ctx"
	.byte	0x1
	.byte	0x51
	.byte	0x1f
	.4byte	0x6e4
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x95
	.4byte	0x727
	.uleb128 0x9
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x95
	.4byte	0x737
	.uleb128 0x9
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x23
	.2byte	0x180
	.byte	0x2d
	.4byte	0x767
	.uleb128 0x11
	.string	"alg"
	.byte	0x10
	.byte	0x2f
	.byte	0x15
	.4byte	0x10a
	.byte	0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x10
	.byte	0x31
	.byte	0x21
	.4byte	0x6f0
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x10
	.byte	0x33
	.byte	0xd
	.4byte	0x767
	.byte	0xf0
	.byte	0
	.uleb128 0x8
	.4byte	0x95
	.4byte	0x777
	.uleb128 0x9
	.4byte	0x6f
	.byte	0x8f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0x10
	.byte	0x34
	.byte	0x3
	.4byte	0x737
	.uleb128 0x2f
	.2byte	0x180
	.byte	0x10
	.byte	0x3b
	.byte	0x5
	.4byte	0x7b2
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x10
	.byte	0x3c
	.byte	0x12
	.4byte	0x6f
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x10
	.byte	0x3e
	.byte	0x26
	.4byte	0x777
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x10
	.byte	0x41
	.byte	0x22
	.4byte	0x6b5
	.byte	0
	.uleb128 0x23
	.2byte	0x188
	.byte	0x39
	.4byte	0x7d5
	.uleb128 0x11
	.string	"alg"
	.byte	0x10
	.byte	0x3a
	.byte	0x15
	.4byte	0x10a
	.byte	0
	.uleb128 0x11
	.string	"ctx"
	.byte	0x10
	.byte	0x43
	.byte	0x7
	.4byte	0x783
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF93
	.byte	0x10
	.byte	0x44
	.byte	0x3
	.4byte	0x7b2
	.uleb128 0x5
	.4byte	0x95
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0xc
	.byte	0x1
	.2byte	0x10c
	.byte	0x8
	.4byte	0x81f
	.uleb128 0x6
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x10d
	.byte	0x15
	.4byte	0x13c
	.byte	0
	.uleb128 0x1a
	.string	"alg"
	.byte	0x1
	.2byte	0x10e
	.byte	0x15
	.4byte	0x10a
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x10f
	.byte	0x15
	.4byte	0x10a
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x111
	.byte	0x21
	.4byte	0x7e6
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x11c
	.byte	0x12
	.4byte	0xa6
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0x11
	.2byte	0x3b0
	.byte	0x25
	.4byte	0x6f0
	.uleb128 0x5
	.4byte	0xa1
	.uleb128 0x5
	.4byte	0x156
	.uleb128 0x13
	.4byte	.LASF100
	.byte	0x12
	.byte	0x20
	.byte	0x5
	.4byte	0x68
	.4byte	0x870
	.uleb128 0x1
	.4byte	0xe7
	.uleb128 0x1
	.4byte	0xe7
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0xe
	.byte	0x95
	.byte	0x5
	.4byte	0x68
	.4byte	0x88b
	.uleb128 0x1
	.4byte	0x88b
	.uleb128 0x1
	.4byte	0xd1
	.byte	0
	.uleb128 0x5
	.4byte	0x6b5
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0xe
	.byte	0x82
	.byte	0x5
	.4byte	0x68
	.4byte	0x8b0
	.uleb128 0x1
	.4byte	0x88b
	.uleb128 0x1
	.4byte	0x8b0
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x5
	.4byte	0x39
	.uleb128 0x24
	.4byte	.LASF103
	.2byte	0x261
	.4byte	0x8c6
	.uleb128 0x1
	.4byte	0x88b
	.byte	0
	.uleb128 0x24
	.4byte	.LASF104
	.2byte	0x256
	.4byte	0x8d7
	.uleb128 0x1
	.4byte	0x88b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x13
	.2byte	0x119
	.byte	0xe
	.4byte	0xf2
	.4byte	0x8ee
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0xe
	.byte	0x69
	.byte	0x5
	.4byte	0x68
	.4byte	0x90e
	.uleb128 0x1
	.4byte	0x88b
	.uleb128 0x1
	.4byte	0x8b0
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0xd
	.2byte	0x27e
	.byte	0x5
	.4byte	0x68
	.4byte	0x92a
	.uleb128 0x1
	.4byte	0x88b
	.uleb128 0x1
	.4byte	0x659
	.byte	0
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x14
	.byte	0x31
	.byte	0x1e
	.4byte	0x659
	.4byte	0x94f
	.uleb128 0x1
	.4byte	0x10a
	.uleb128 0x1
	.4byte	0xfe
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x94f
	.byte	0
	.uleb128 0x5
	.4byte	0x4b0
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x11
	.2byte	0x434
	.byte	0xe
	.4byte	0xf2
	.4byte	0x97a
	.uleb128 0x1
	.4byte	0x97a
	.uleb128 0x1
	.4byte	0x7e1
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x696
	.byte	0
	.uleb128 0x5
	.4byte	0x839
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x11
	.2byte	0x406
	.byte	0xe
	.4byte	0xf2
	.4byte	0x9a0
	.uleb128 0x1
	.4byte	0x97a
	.uleb128 0x1
	.4byte	0x846
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x11
	.2byte	0x3ec
	.byte	0xe
	.4byte	0xf2
	.4byte	0x9bc
	.uleb128 0x1
	.4byte	0x97a
	.uleb128 0x1
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.4byte	.LASF112
	.byte	0x15
	.byte	0x21
	.byte	0x8
	.4byte	0xca
	.4byte	0x9dc
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x13
	.4byte	.LASF113
	.byte	0x15
	.byte	0x1f
	.byte	0x8
	.4byte	0xca
	.4byte	0x9fc
	.uleb128 0x1
	.4byte	0xcc
	.uleb128 0x1
	.4byte	0xec
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x11
	.2byte	0x36b
	.byte	0xe
	.4byte	0xf2
	.4byte	0xa2c
	.uleb128 0x1
	.4byte	0x10a
	.uleb128 0x1
	.4byte	0x846
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x7e1
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x696
	.byte	0
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x11
	.2byte	0x47a
	.byte	0xe
	.4byte	0xf2
	.4byte	0xa43
	.uleb128 0x1
	.4byte	0x97a
	.byte	0
	.uleb128 0x30
	.4byte	.LASF116
	.byte	0x16
	.byte	0x9f
	.byte	0x6
	.4byte	0xa5a
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x15
	.4byte	.LASF125
	.2byte	0x1c7
	.4byte	0xf2
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb34
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x1c8
	.byte	0x21
	.4byte	0x84b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x1c9
	.byte	0x14
	.4byte	0x846
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x2
	.2byte	0x1ca
	.byte	0xc
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0xf
	.string	"alg"
	.2byte	0x1cb
	.byte	0x15
	.4byte	0x10a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x2
	.2byte	0x1cc
	.byte	0x14
	.4byte	0x846
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x2
	.2byte	0x1cd
	.byte	0xc
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0xf
	.string	"mac"
	.2byte	0x1ce
	.byte	0xe
	.4byte	0x7e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -444
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x1cf
	.byte	0xc
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x1d0
	.byte	0xd
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.4byte	.LASF124
	.2byte	0x1d2
	.byte	0x12
	.4byte	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	.LASF79
	.2byte	0x1d3
	.byte	0x21
	.4byte	0x7d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x1b
	.4byte	.LASF128
	.2byte	0x1f1
	.4byte	.L138
	.byte	0
	.uleb128 0x15
	.4byte	.LASF126
	.2byte	0x1a7
	.4byte	0xf2
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbaa
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x1a8
	.byte	0x22
	.4byte	0xbaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xf
	.string	"mac"
	.2byte	0x1a9
	.byte	0x14
	.4byte	0x846
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x1aa
	.byte	0xc
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x16
	.4byte	.LASF127
	.2byte	0x1ac
	.byte	0xd
	.4byte	0x727
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x16
	.4byte	.LASF124
	.2byte	0x1ad
	.byte	0x12
	.4byte	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF129
	.2byte	0x1c1
	.4byte	.L132
	.byte	0
	.uleb128 0x5
	.4byte	0x7d5
	.uleb128 0x15
	.4byte	.LASF130
	.2byte	0x193
	.4byte	0xf2
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc17
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x194
	.byte	0x22
	.4byte	0xbaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"mac"
	.2byte	0x195
	.byte	0xe
	.4byte	0x7e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x196
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x197
	.byte	0xd
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	.LASF124
	.2byte	0x199
	.byte	0x12
	.4byte	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.4byte	.LASF134
	.2byte	0x174
	.4byte	0xf2
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc88
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x175
	.byte	0x22
	.4byte	0xbaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xf
	.string	"mac"
	.2byte	0x176
	.byte	0xe
	.4byte	0x7e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x176
	.byte	0x1a
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x26
	.string	"tmp"
	.2byte	0x17a
	.byte	0x11
	.4byte	0x717
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.string	"ret"
	.2byte	0x17b
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF131
	.2byte	0x155
	.4byte	0xf2
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd2
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x156
	.byte	0x22
	.4byte	0xbaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x2
	.2byte	0x157
	.byte	0x14
	.4byte	0x846
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x2
	.2byte	0x158
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x15
	.4byte	.LASF132
	.2byte	0x14a
	.4byte	0xf2
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd3b
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x14b
	.byte	0x22
	.4byte	0xbaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x14c
	.byte	0x21
	.4byte	0x84b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x14d
	.byte	0x14
	.4byte	0x846
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x2
	.2byte	0x14e
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"alg"
	.2byte	0x14f
	.byte	0x15
	.4byte	0x10a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x15
	.4byte	.LASF133
	.2byte	0x13f
	.4byte	0xf2
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xda4
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x140
	.byte	0x22
	.4byte	0xbaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x141
	.byte	0x21
	.4byte	0x84b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x142
	.byte	0x14
	.4byte	0x846
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x2
	.2byte	0x143
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"alg"
	.2byte	0x144
	.byte	0x15
	.4byte	0x10a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.4byte	.LASF135
	.2byte	0x10f
	.4byte	0xf2
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe1c
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x10f
	.byte	0x40
	.4byte	0xbaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x110
	.byte	0x3f
	.4byte	0x84b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x111
	.byte	0x32
	.4byte	0x846
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x2
	.2byte	0x112
	.byte	0x2a
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"alg"
	.2byte	0x113
	.byte	0x33
	.4byte	0x10a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.4byte	.LASF124
	.2byte	0x115
	.byte	0x12
	.4byte	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.4byte	.LASF136
	.byte	0x2
	.byte	0xea
	.byte	0xe
	.4byte	0xf2
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe50
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0xea
	.byte	0x41
	.4byte	0xbaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF137
	.2byte	0x106
	.4byte	.L99
	.byte	0
	.uleb128 0x17
	.4byte	.LASF138
	.byte	0xca
	.4byte	0xf2
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe93
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0xcb
	.byte	0x22
	.4byte	0xbaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.string	"alg"
	.byte	0xcc
	.byte	0x15
	.4byte	0x10a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	.LASF124
	.byte	0xce
	.byte	0x12
	.4byte	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF139
	.byte	0x9d
	.4byte	0xf2
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xefc
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x9d
	.byte	0x3d
	.4byte	0xbaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF117
	.byte	0x9e
	.byte	0x3c
	.4byte	0x84b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF118
	.byte	0x9f
	.byte	0x2f
	.4byte	0x846
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.string	"ret"
	.byte	0xa1
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0xad
	.byte	0x22
	.4byte	0x659
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0xc0
	.4byte	.L85
	.byte	0
	.uleb128 0x17
	.4byte	.LASF140
	.byte	0x6f
	.4byte	0xf2
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf94
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x70
	.byte	0x23
	.4byte	0xf94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1c
	.string	"mac"
	.byte	0x71
	.byte	0xe
	.4byte	0x7e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x7
	.4byte	.LASF122
	.byte	0x72
	.byte	0xc
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1d
	.string	"tmp"
	.byte	0x74
	.byte	0xd
	.4byte	0x727
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0xd
	.4byte	.LASF141
	.byte	0x75
	.byte	0x15
	.4byte	0x10a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LASF142
	.byte	0x76
	.byte	0xc
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x77
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF124
	.byte	0x78
	.byte	0x12
	.4byte	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0x96
	.4byte	.L70
	.byte	0
	.uleb128 0x5
	.4byte	0x777
	.uleb128 0x17
	.4byte	.LASF143
	.byte	0x67
	.4byte	0xf2
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfdc
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x68
	.byte	0x23
	.4byte	0xf94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF144
	.byte	0x69
	.byte	0x14
	.4byte	0x846
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF145
	.byte	0x6a
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x17
	.4byte	.LASF146
	.byte	0x1f
	.4byte	0xf2
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1080
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x20
	.byte	0x23
	.4byte	0xf94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x1c
	.string	"key"
	.byte	0x21
	.byte	0x14
	.4byte	0x846
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x7
	.4byte	.LASF147
	.byte	0x22
	.byte	0xc
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x7
	.4byte	.LASF141
	.byte	0x23
	.byte	0x15
	.4byte	0x10a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0xd
	.4byte	.LASF148
	.byte	0x25
	.byte	0xd
	.4byte	0x767
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1d
	.string	"i"
	.byte	0x26
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF142
	.byte	0x27
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x28
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LASF124
	.byte	0x29
	.byte	0x12
	.4byte	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0x61
	.4byte	.L42
	.byte	0
	.uleb128 0x17
	.4byte	.LASF149
	.byte	0x18
	.4byte	0xf2
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10a7
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x19
	.byte	0x23
	.4byte	0xf94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1b9
	.byte	0x16
	.4byte	0x76
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10d3
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1ba
	.byte	0x21
	.4byte	0x84b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x1a9
	.byte	0x1e
	.4byte	0xfe
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1aa
	.byte	0x21
	.4byte	0x84b
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.sleb128 21
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
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x17
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
	.uleb128 0x22
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
	.sleb128 13
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 16
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0x25
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
	.sleb128 21
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x7c
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
	.uleb128 0x34
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
	.4byte	0x9c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
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
	.4byte	.LFB50
	.uleb128 .LFE50-.LFB50
	.byte	0x7
	.4byte	.LFB68
	.uleb128 .LFE68-.LFB68
	.byte	0x7
	.4byte	.LFB69
	.uleb128 .LFE69-.LFB69
	.byte	0x7
	.4byte	.LFB70
	.uleb128 .LFE70-.LFB70
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
.LASF69:
	.string	"mbedtls_cipher_info_t"
.LASF36:
	.string	"mbedtls_ripemd160_context"
.LASF12:
	.string	"size_t"
.LASF41:
	.string	"is384"
.LASF64:
	.string	"MBEDTLS_ENCRYPT"
.LASF38:
	.string	"mbedtls_sha256_context"
.LASF17:
	.string	"uint64_t"
.LASF59:
	.string	"MBEDTLS_CIPHER_ID_ARIA"
.LASF108:
	.string	"mbedtls_cipher_info_from_psa"
.LASF78:
	.string	"cipher_info"
.LASF110:
	.string	"psa_hash_update"
.LASF27:
	.string	"type"
.LASF145:
	.string	"data_length"
.LASF21:
	.string	"psa_algorithm_t"
.LASF101:
	.string	"mbedtls_cipher_cmac_finish"
.LASF9:
	.string	"long long unsigned int"
.LASF93:
	.string	"mbedtls_psa_mac_operation_t"
.LASF100:
	.string	"mbedtls_ct_memcmp"
.LASF90:
	.string	"mbedtls_psa_hmac_operation_t"
.LASF73:
	.string	"key_bitlen"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF81:
	.string	"get_padding"
.LASF48:
	.string	"sha1"
.LASF51:
	.string	"sha3"
.LASF137:
	.string	"bad_state"
.LASF34:
	.string	"state"
.LASF28:
	.string	"bits"
.LASF6:
	.string	"long int"
.LASF76:
	.string	"base_idx"
.LASF149:
	.string	"psa_hmac_abort_internal"
.LASF15:
	.string	"uint16_t"
.LASF43:
	.string	"olen"
.LASF94:
	.string	"psa_key_policy_s"
.LASF97:
	.string	"psa_key_policy_t"
.LASF133:
	.string	"mbedtls_psa_mac_sign_setup"
.LASF32:
	.string	"mbedtls_md5_context"
.LASF136:
	.string	"mbedtls_psa_mac_abort"
.LASF147:
	.string	"key_length"
.LASF127:
	.string	"actual_mac"
.LASF20:
	.string	"psa_key_type_t"
.LASF56:
	.string	"MBEDTLS_CIPHER_ID_DES"
.LASF131:
	.string	"mbedtls_psa_mac_update"
.LASF118:
	.string	"key_buffer"
.LASF83:
	.string	"cipher_ctx"
.LASF68:
	.string	"unprocessed_len"
.LASF111:
	.string	"psa_hash_setup"
.LASF125:
	.string	"mbedtls_psa_mac_compute"
.LASF58:
	.string	"MBEDTLS_CIPHER_ID_CAMELLIA"
.LASF61:
	.string	"mbedtls_cipher_id_t"
.LASF140:
	.string	"psa_hmac_finish_internal"
.LASF7:
	.string	"long unsigned int"
.LASF70:
	.string	"name"
.LASF50:
	.string	"sha512"
.LASF144:
	.string	"data"
.LASF88:
	.string	"hash_ctx"
.LASF5:
	.string	"short unsigned int"
.LASF150:
	.string	"psa_get_key_bits"
.LASF62:
	.string	"MBEDTLS_OPERATION_NONE"
.LASF24:
	.string	"mbedtls_svc_key_id_t"
.LASF87:
	.string	"psa_hash_operation_s"
.LASF123:
	.string	"mac_length"
.LASF113:
	.string	"memcpy"
.LASF39:
	.string	"is224"
.LASF79:
	.string	"operation"
.LASF33:
	.string	"total"
.LASF86:
	.string	"psa_driver_hash_context_t"
.LASF107:
	.string	"mbedtls_cipher_setup"
.LASF31:
	.string	"psa_key_attributes_s"
.LASF26:
	.string	"psa_key_attributes_t"
.LASF80:
	.string	"add_padding"
.LASF30:
	.string	"policy"
.LASF54:
	.string	"MBEDTLS_CIPHER_ID_NULL"
.LASF85:
	.string	"mbedtls_ctx"
.LASF67:
	.string	"unprocessed_block"
.LASF98:
	.string	"psa_key_bits_t"
.LASF52:
	.string	"mbedtls_psa_hash_operation_t"
.LASF63:
	.string	"MBEDTLS_DECRYPT"
.LASF66:
	.string	"mbedtls_cmac_context_t"
.LASF122:
	.string	"mac_size"
.LASF45:
	.string	"mbedtls_sha3_context"
.LASF129:
	.string	"cleanup"
.LASF72:
	.string	"iv_size"
.LASF29:
	.string	"lifetime"
.LASF19:
	.string	"psa_status_t"
.LASF71:
	.string	"block_size"
.LASF65:
	.string	"mbedtls_operation_t"
.LASF132:
	.string	"mbedtls_psa_mac_verify_setup"
.LASF77:
	.string	"mbedtls_cipher_context_t"
.LASF91:
	.string	"hmac"
.LASF57:
	.string	"MBEDTLS_CIPHER_ID_3DES"
.LASF115:
	.string	"psa_hash_abort"
.LASF13:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF141:
	.string	"hash_alg"
.LASF4:
	.string	"short int"
.LASF47:
	.string	"ripemd160"
.LASF143:
	.string	"psa_hmac_update_internal"
.LASF60:
	.string	"MBEDTLS_CIPHER_ID_CHACHA20"
.LASF128:
	.string	"exit"
.LASF120:
	.string	"input"
.LASF135:
	.string	"psa_mac_setup"
.LASF49:
	.string	"sha256"
.LASF117:
	.string	"attributes"
.LASF46:
	.string	"dummy"
.LASF16:
	.string	"uint32_t"
.LASF22:
	.string	"psa_key_lifetime_t"
.LASF106:
	.string	"mbedtls_cipher_cmac_starts"
.LASF11:
	.string	"long double"
.LASF148:
	.string	"ipad"
.LASF18:
	.string	"char"
.LASF134:
	.string	"psa_mac_finish_internal"
.LASF74:
	.string	"mode"
.LASF10:
	.string	"unsigned int"
.LASF116:
	.string	"mbedtls_platform_zeroize"
.LASF42:
	.string	"index"
.LASF138:
	.string	"mac_init"
.LASF37:
	.string	"mbedtls_sha1_context"
.LASF35:
	.string	"buffer"
.LASF130:
	.string	"mbedtls_psa_mac_sign_finish"
.LASF55:
	.string	"MBEDTLS_CIPHER_ID_AES"
.LASF151:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF53:
	.string	"MBEDTLS_CIPHER_ID_NONE"
.LASF92:
	.string	"cmac"
.LASF105:
	.string	"mbedtls_to_psa_error"
.LASF102:
	.string	"mbedtls_cipher_cmac_update"
.LASF44:
	.string	"max_block_size"
.LASF95:
	.string	"usage"
.LASF23:
	.string	"psa_key_id_t"
.LASF40:
	.string	"mbedtls_sha512_context"
.LASF104:
	.string	"mbedtls_cipher_init"
.LASF112:
	.string	"memset"
.LASF124:
	.string	"status"
.LASF25:
	.string	"psa_key_usage_t"
.LASF14:
	.string	"uint8_t"
.LASF75:
	.string	"flags"
.LASF121:
	.string	"input_length"
.LASF103:
	.string	"mbedtls_cipher_free"
.LASF96:
	.string	"alg2"
.LASF84:
	.string	"cmac_ctx"
.LASF139:
	.string	"cmac_setup"
.LASF82:
	.string	"unprocessed_data"
.LASF114:
	.string	"psa_hash_compute"
.LASF99:
	.string	"psa_hash_operation_t"
.LASF109:
	.string	"psa_hash_finish"
.LASF119:
	.string	"key_buffer_size"
.LASF89:
	.string	"opad"
.LASF152:
	.string	"psa_get_key_type"
.LASF126:
	.string	"mbedtls_psa_mac_verify_finish"
.LASF142:
	.string	"hash_size"
.LASF146:
	.string	"psa_hmac_setup_internal"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_mac.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
