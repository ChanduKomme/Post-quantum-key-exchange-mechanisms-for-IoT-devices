	.file	"pk_wrap.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk_wrap.c"
	.section	.text.rsa_can_do,"ax",@progbits
	.align	1
	.type	rsa_can_do, @function
rsa_can_do:
.LFB79:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk_wrap.c"
	.loc 1 53 1
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
	.loc 1 54 35
	lbu	a4,-17(s0)
	li	a5,1
	beq	a4,a5,.L2
	.loc 1 54 35 is_stmt 0 discriminator 2
	lbu	a4,-17(s0)
	li	a5,6
	bne	a4,a5,.L3
.L2:
	.loc 1 54 35 discriminator 3
	li	a5,1
	.loc 1 54 35
	j	.L5
.L3:
	.loc 1 54 35 discriminator 4
	li	a5,0
.L5:
	.loc 1 56 1 is_stmt 1
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
.LFE79:
	.size	rsa_can_do, .-rsa_can_do
	.section	.text.rsa_get_bitlen,"ax",@progbits
	.align	1
	.type	rsa_get_bitlen, @function
rsa_get_bitlen:
.LFB80:
	.loc 1 59 1
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
	.loc 1 60 32
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 61 12
	lw	a0,-20(s0)
	call	mbedtls_rsa_get_bitlen
	mv	a5,a0
	.loc 1 62 1
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
	.size	rsa_get_bitlen, .-rsa_get_bitlen
	.section	.text.rsa_verify_wrap,"ax",@progbits
	.align	1
	.type	rsa_verify_wrap, @function
rsa_verify_wrap:
.LFB81:
	.loc 1 133 1
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
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 134 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 135 26
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 136 22
	lw	a0,-24(s0)
	call	mbedtls_rsa_get_len
	sw	a0,-28(s0)
	.loc 1 144 8
	lw	a4,-56(s0)
	lw	a5,-28(s0)
	bgeu	a4,a5,.L9
	.loc 1 145 16
	li	a5,-16384
	addi	a5,a5,-896
	j	.L10
.L9:
	.loc 1 148 16
	lbu	a5,-37(s0)
	lw	a4,-52(s0)
	lw	a3,-44(s0)
	lw	a2,-48(s0)
	mv	a1,a5
	lw	a0,-24(s0)
	call	mbedtls_rsa_pkcs1_verify
	sw	a0,-20(s0)
	.loc 1 148 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L11
	.loc 1 151 16
	lw	a5,-20(s0)
	j	.L10
.L11:
	.loc 1 159 8
	lw	a4,-56(s0)
	lw	a5,-28(s0)
	bleu	a4,a5,.L12
	.loc 1 160 16
	li	a5,-16384
	addi	a5,a5,1792
	j	.L10
.L12:
	.loc 1 163 12
	li	a5,0
.L10:
	.loc 1 164 1
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
	.size	rsa_verify_wrap, .-rsa_verify_wrap
	.section	.text.rsa_sign_wrap,"ax",@progbits
	.align	1
	.type	rsa_sign_wrap, @function
rsa_sign_wrap:
.LFB82:
	.loc 1 258 1
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
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	a7,-64(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 259 26
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 267 16
	lw	a0,-20(s0)
	call	mbedtls_rsa_get_len
	mv	a4,a0
	.loc 1 267 14 discriminator 1
	lw	a5,-60(s0)
	sw	a4,0(a5)
	.loc 1 268 20
	lw	a5,-60(s0)
	lw	a5,0(a5)
	.loc 1 268 8
	lw	a4,-56(s0)
	bgeu	a4,a5,.L14
	.loc 1 269 16
	li	a5,-16384
	addi	a5,a5,1920
	j	.L15
.L14:
	.loc 1 272 12
	lbu	a3,-37(s0)
	lw	a6,-52(s0)
	lw	a5,-44(s0)
	lw	a4,-48(s0)
	lw	a2,0(s0)
	lw	a1,-64(s0)
	lw	a0,-20(s0)
	call	mbedtls_rsa_pkcs1_sign
	mv	a5,a0
.L15:
	.loc 1 275 1
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
.LFE82:
	.size	rsa_sign_wrap, .-rsa_sign_wrap
	.section	.text.rsa_decrypt_wrap,"ax",@progbits
	.align	1
	.type	rsa_decrypt_wrap, @function
rsa_decrypt_wrap:
.LFB83:
	.loc 1 349 1
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
	.loc 1 350 26
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 352 17
	lw	a0,-20(s0)
	call	mbedtls_rsa_get_len
	mv	a4,a0
	.loc 1 352 8 discriminator 1
	lw	a5,-44(s0)
	beq	a5,a4,.L17
	.loc 1 353 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L18
.L17:
	.loc 1 356 12
	lw	a6,-56(s0)
	lw	a5,-48(s0)
	lw	a4,-40(s0)
	lw	a3,-52(s0)
	lw	a2,-64(s0)
	lw	a1,-60(s0)
	lw	a0,-20(s0)
	call	mbedtls_rsa_pkcs1_decrypt
	mv	a5,a0
.L18:
	.loc 1 358 1
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
.LFE83:
	.size	rsa_decrypt_wrap, .-rsa_decrypt_wrap
	.section	.text.rsa_encrypt_wrap,"ax",@progbits
	.align	1
	.type	rsa_encrypt_wrap, @function
rsa_encrypt_wrap:
.LFB84:
	.loc 1 431 1
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
	.loc 1 432 26
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 433 13
	lw	a0,-20(s0)
	call	mbedtls_rsa_get_len
	mv	a4,a0
	.loc 1 433 11 discriminator 1
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 1 435 9
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 435 8
	lw	a4,-56(s0)
	bgeu	a4,a5,.L20
	.loc 1 436 16
	li	a5,-16384
	addi	a5,a5,-1024
	j	.L21
.L20:
	.loc 1 439 12
	lw	a5,-48(s0)
	lw	a4,-40(s0)
	lw	a3,-44(s0)
	lw	a2,-64(s0)
	lw	a1,-60(s0)
	lw	a0,-20(s0)
	call	mbedtls_rsa_pkcs1_encrypt
	mv	a5,a0
.L21:
	.loc 1 441 1
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
.LFE84:
	.size	rsa_encrypt_wrap, .-rsa_encrypt_wrap
	.section	.text.rsa_check_pair_wrap,"ax",@progbits
	.align	1
	.type	rsa_check_pair_wrap, @function
rsa_check_pair_wrap:
.LFB85:
	.loc 1 447 1
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
	.loc 1 450 72
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 451 72
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 450 12
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_rsa_check_pub_priv
	mv	a5,a0
	.loc 1 452 1
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
.LFE85:
	.size	rsa_check_pair_wrap, .-rsa_check_pair_wrap
	.section	.text.rsa_alloc_wrap,"ax",@progbits
	.align	1
	.type	rsa_alloc_wrap, @function
rsa_alloc_wrap:
.LFB86:
	.loc 1 455 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 456 17
	li	a1,120
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-20(s0)
	.loc 1 458 8
	lw	a5,-20(s0)
	beq	a5,zero,.L25
	.loc 1 459 9
	lw	a0,-20(s0)
	call	mbedtls_rsa_init
.L25:
	.loc 1 462 12
	lw	a5,-20(s0)
	.loc 1 463 1
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
.LFE86:
	.size	rsa_alloc_wrap, .-rsa_alloc_wrap
	.section	.text.rsa_free_wrap,"ax",@progbits
	.align	1
	.type	rsa_free_wrap, @function
rsa_free_wrap:
.LFB87:
	.loc 1 466 1
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
	.loc 1 467 5
	lw	a0,-20(s0)
	call	mbedtls_rsa_free
	.loc 1 468 5
	lw	a0,-20(s0)
	call	free
	.loc 1 469 1
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
.LFE87:
	.size	rsa_free_wrap, .-rsa_free_wrap
	.section	.rodata
	.align	2
.LC0:
	.string	"rsa.N"
	.align	2
.LC1:
	.string	"rsa.E"
	.section	.text.rsa_debug,"ax",@progbits
	.align	1
	.type	rsa_debug, @function
rsa_debug:
.LFB88:
	.loc 1 472 1
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
	.loc 1 478 26
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 480 17
	lw	a5,-40(s0)
	li	a4,1
	sb	a4,0(a5)
	.loc 1 481 17
	lw	a5,-40(s0)
	lui	a4,%hi(.LC0)
	addi	a4,a4,%lo(.LC0)
	sw	a4,4(a5)
	.loc 1 482 20
	lw	a5,-20(s0)
	addi	a4,a5,8
	.loc 1 482 18
	lw	a5,-40(s0)
	sw	a4,8(a5)
	.loc 1 484 10
	lw	a5,-40(s0)
	addi	a5,a5,12
	sw	a5,-40(s0)
	.loc 1 486 17
	lw	a5,-40(s0)
	li	a4,1
	sb	a4,0(a5)
	.loc 1 487 17
	lw	a5,-40(s0)
	lui	a4,%hi(.LC1)
	addi	a4,a4,%lo(.LC1)
	sw	a4,4(a5)
	.loc 1 488 20
	lw	a5,-20(s0)
	addi	a4,a5,16
	.loc 1 488 18
	lw	a5,-40(s0)
	sw	a4,8(a5)
	.loc 1 490 1
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
.LFE88:
	.size	rsa_debug, .-rsa_debug
	.globl	mbedtls_rsa_info
	.section	.rodata
	.align	2
.LC2:
	.string	"RSA"
	.section	.rodata.mbedtls_rsa_info,"a"
	.align	2
	.type	mbedtls_rsa_info, @object
	.size	mbedtls_rsa_info, 64
mbedtls_rsa_info:
	.byte	1
	.zero	3
	.word	.LC2
	.word	rsa_get_bitlen
	.word	rsa_can_do
	.word	rsa_verify_wrap
	.word	rsa_sign_wrap
	.word	0
	.word	0
	.word	rsa_decrypt_wrap
	.word	rsa_encrypt_wrap
	.word	rsa_check_pair_wrap
	.word	rsa_alloc_wrap
	.word	rsa_free_wrap
	.word	0
	.word	0
	.word	rsa_debug
	.section	.text.eckey_can_do,"ax",@progbits
	.align	1
	.type	eckey_can_do, @function
eckey_can_do:
.LFB89:
	.loc 1 519 1
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
	.loc 1 521 40
	lbu	a4,-17(s0)
	li	a5,2
	beq	a4,a5,.L30
	.loc 1 520 37
	lbu	a4,-17(s0)
	li	a5,3
	beq	a4,a5,.L30
	.loc 1 521 40 discriminator 2
	lbu	a4,-17(s0)
	li	a5,4
	bne	a4,a5,.L31
.L30:
	.loc 1 521 40 is_stmt 0 discriminator 1
	li	a5,1
	.loc 1 521 40
	j	.L33
.L31:
	.loc 1 521 40 discriminator 3
	li	a5,0
.L33:
	.loc 1 523 1 is_stmt 1
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
.LFE89:
	.size	eckey_can_do, .-eckey_can_do
	.section	.text.eckey_get_bitlen,"ax",@progbits
	.align	1
	.type	eckey_get_bitlen, @function
eckey_get_bitlen:
.LFB90:
	.loc 1 526 1
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
	.loc 1 530 26
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 531 20
	lw	a5,-20(s0)
	lw	a5,60(a5)
	.loc 1 533 1
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
.LFE90:
	.size	eckey_get_bitlen, .-eckey_get_bitlen
	.section	.text.ecdsa_verify_wrap,"ax",@progbits
	.align	1
	.type	ecdsa_verify_wrap, @function
ecdsa_verify_wrap:
.LFB91:
	.loc 1 674 1
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
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 675 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 678 68
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 678 11
	lw	a4,-56(s0)
	lw	a3,-52(s0)
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_ecdsa_read_signature
	sw	a0,-20(s0)
	.loc 1 681 8
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1024
	bne	a4,a5,.L37
	.loc 1 682 16
	li	a5,-16384
	addi	a5,a5,1792
	j	.L38
.L37:
	.loc 1 685 12
	lw	a5,-20(s0)
.L38:
	.loc 1 686 1
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
.LFE91:
	.size	ecdsa_verify_wrap, .-ecdsa_verify_wrap
	.section	.text.ecdsa_sign_wrap,"ax",@progbits
	.align	1
	.type	ecdsa_sign_wrap, @function
ecdsa_sign_wrap:
.LFB92:
	.loc 1 813 1
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
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	sw	a7,-48(s0)
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 1 814 70
	lw	a5,-20(s0)
	lw	a0,4(a5)
	.loc 1 814 12
	lbu	a1,-21(s0)
	lw	a5,0(s0)
	sw	a5,0(sp)
	lw	a7,-48(s0)
	lw	a6,-44(s0)
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	call	mbedtls_ecdsa_write_signature
	mv	a5,a0
	.loc 1 818 1
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
.LFE92:
	.size	ecdsa_sign_wrap, .-ecdsa_sign_wrap
	.section	.text.eckey_rs_alloc,"ax",@progbits
	.align	1
	.type	eckey_rs_alloc, @function
eckey_rs_alloc:
.LFB93:
	.loc 1 847 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 850 17
	li	a1,156
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-20(s0)
	.loc 1 852 8
	lw	a5,-20(s0)
	beq	a5,zero,.L42
	.loc 1 853 16
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 854 9
	lw	a5,-24(s0)
	mv	a0,a5
	call	mbedtls_ecdsa_restart_init
	.loc 1 855 9
	lw	a5,-24(s0)
	addi	a5,a5,28
	mv	a0,a5
	call	mbedtls_ecdsa_init
.L42:
	.loc 1 858 12
	lw	a5,-20(s0)
	.loc 1 859 1
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
.LFE93:
	.size	eckey_rs_alloc, .-eckey_rs_alloc
	.section	.text.eckey_rs_free,"ax",@progbits
	.align	1
	.type	eckey_rs_free, @function
eckey_rs_free:
.LFB94:
	.loc 1 862 1
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
	.loc 1 865 8
	lw	a5,-36(s0)
	beq	a5,zero,.L47
	.loc 1 869 12
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 870 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_ecdsa_restart_free
	.loc 1 871 5
	lw	a5,-20(s0)
	addi	a5,a5,28
	mv	a0,a5
	call	mbedtls_ecdsa_free
	.loc 1 873 5
	lw	a0,-36(s0)
	call	free
	j	.L44
.L47:
	.loc 1 866 9
	nop
.L44:
	.loc 1 874 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE94:
	.size	eckey_rs_free, .-eckey_rs_free
	.section	.text.eckey_verify_rs_wrap,"ax",@progbits
	.align	1
	.type	eckey_verify_rs_wrap, @function
eckey_verify_rs_wrap:
.LFB95:
	.loc 1 880 1
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
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 881 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 882 24
	lw	a5,-60(s0)
	sw	a5,-24(s0)
	.loc 1 885 8
	lw	a5,-24(s0)
	bne	a5,zero,.L49
	.loc 1 886 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L50
.L49:
	.loc 1 890 26
	lw	a5,-24(s0)
	lw	a5,88(a5)
	.loc 1 890 8
	bne	a5,zero,.L51
	.loc 1 891 26
	lw	a5,-24(s0)
	addi	a4,a5,28
	.loc 1 891 71
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 891 26
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ecdsa_from_keypair
	sw	a0,-20(s0)
	.loc 1 891 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L53
.L51:
	.loc 1 894 85
	lw	a5,-24(s0)
	.loc 1 894 22
	lbu	a1,-37(s0)
	mv	a6,a5
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a0,-36(s0)
	call	ecdsa_verify_rs_wrap
	sw	a0,-20(s0)
	.loc 1 898 1
	j	.L52
.L53:
	.loc 1 891 89
	nop
.L52:
	.loc 1 899 12
	lw	a5,-20(s0)
.L50:
	.loc 1 900 1
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
.LFE95:
	.size	eckey_verify_rs_wrap, .-eckey_verify_rs_wrap
	.section	.text.eckey_sign_rs_wrap,"ax",@progbits
	.align	1
	.type	eckey_sign_rs_wrap, @function
eckey_sign_rs_wrap:
.LFB96:
	.loc 1 907 1
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
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	a7,-64(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 908 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 909 24
	lw	a5,4(s0)
	sw	a5,-24(s0)
	.loc 1 912 8
	lw	a5,-24(s0)
	bne	a5,zero,.L55
	.loc 1 913 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L56
.L55:
	.loc 1 917 26
	lw	a5,-24(s0)
	lw	a5,88(a5)
	.loc 1 917 8
	bne	a5,zero,.L57
	.loc 1 918 26
	lw	a5,-24(s0)
	addi	a4,a5,28
	.loc 1 918 71
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 918 26
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ecdsa_from_keypair
	sw	a0,-20(s0)
	.loc 1 918 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L59
.L57:
	.loc 1 921 107
	lw	a5,-24(s0)
	.loc 1 921 22
	lbu	a1,-37(s0)
	sw	a5,4(sp)
	lw	a5,0(s0)
	sw	a5,0(sp)
	lw	a7,-64(s0)
	lw	a6,-60(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a0,-36(s0)
	call	ecdsa_sign_rs_wrap
	sw	a0,-20(s0)
	.loc 1 925 1
	j	.L58
.L59:
	.loc 1 918 89
	nop
.L58:
	.loc 1 926 12
	lw	a5,-20(s0)
.L56:
	.loc 1 927 1
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
.LFE96:
	.size	eckey_sign_rs_wrap, .-eckey_sign_rs_wrap
	.section	.text.eckey_check_pair_wrap,"ax",@progbits
	.align	1
	.type	eckey_check_pair_wrap, @function
eckey_check_pair_wrap:
.LFB97:
	.loc 1 1031 1
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
	.loc 1 1032 72
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 1033 72
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 1032 12
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ecp_check_pub_priv
	mv	a5,a0
	.loc 1 1035 1
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
.LFE97:
	.size	eckey_check_pair_wrap, .-eckey_check_pair_wrap
	.section	.text.eckey_alloc_wrap,"ax",@progbits
	.align	1
	.type	eckey_alloc_wrap, @function
eckey_alloc_wrap:
.LFB98:
	.loc 1 1082 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1083 17
	li	a1,128
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-20(s0)
	.loc 1 1085 8
	lw	a5,-20(s0)
	beq	a5,zero,.L63
	.loc 1 1086 9
	lw	a0,-20(s0)
	call	mbedtls_ecp_keypair_init
.L63:
	.loc 1 1089 12
	lw	a5,-20(s0)
	.loc 1 1090 1
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
.LFE98:
	.size	eckey_alloc_wrap, .-eckey_alloc_wrap
	.section	.text.eckey_free_wrap,"ax",@progbits
	.align	1
	.type	eckey_free_wrap, @function
eckey_free_wrap:
.LFB99:
	.loc 1 1093 1
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
	.loc 1 1094 5
	lw	a0,-20(s0)
	call	mbedtls_ecp_keypair_free
	.loc 1 1095 5
	lw	a0,-20(s0)
	call	free
	.loc 1 1096 1
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
.LFE99:
	.size	eckey_free_wrap, .-eckey_free_wrap
	.section	.rodata
	.align	2
.LC3:
	.string	"eckey.Q"
	.section	.text.eckey_debug,"ax",@progbits
	.align	1
	.type	eckey_debug, @function
eckey_debug:
.LFB100:
	.loc 1 1100 1
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
	.loc 1 1106 26
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 1107 17
	lw	a5,-40(s0)
	li	a4,2
	sb	a4,0(a5)
	.loc 1 1108 17
	lw	a5,-40(s0)
	lui	a4,%hi(.LC3)
	addi	a4,a4,%lo(.LC3)
	sw	a4,4(a5)
	.loc 1 1109 20
	lw	a5,-20(s0)
	addi	a4,a5,104
	.loc 1 1109 18
	lw	a5,-40(s0)
	sw	a4,8(a5)
	.loc 1 1111 1
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
.LFE100:
	.size	eckey_debug, .-eckey_debug
	.globl	mbedtls_eckey_info
	.section	.rodata
	.align	2
.LC4:
	.string	"EC"
	.section	.rodata.mbedtls_eckey_info,"a"
	.align	2
	.type	mbedtls_eckey_info, @object
	.size	mbedtls_eckey_info, 64
mbedtls_eckey_info:
	.byte	2
	.zero	3
	.word	.LC4
	.word	eckey_get_bitlen
	.word	eckey_can_do
	.word	ecdsa_verify_wrap
	.word	ecdsa_sign_wrap
	.word	eckey_verify_rs_wrap
	.word	eckey_sign_rs_wrap
	.word	0
	.word	0
	.word	eckey_check_pair_wrap
	.word	eckey_alloc_wrap
	.word	eckey_free_wrap
	.word	eckey_rs_alloc
	.word	eckey_rs_free
	.word	eckey_debug
	.section	.text.eckeydh_can_do,"ax",@progbits
	.align	1
	.type	eckeydh_can_do, @function
eckeydh_can_do:
.LFB101:
	.loc 1 1151 1
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
	.loc 1 1152 37
	lbu	a4,-17(s0)
	li	a5,2
	beq	a4,a5,.L68
	.loc 1 1152 37 is_stmt 0 discriminator 2
	lbu	a4,-17(s0)
	li	a5,3
	bne	a4,a5,.L69
.L68:
	.loc 1 1152 37 discriminator 3
	li	a5,1
	.loc 1 1152 37
	j	.L71
.L69:
	.loc 1 1152 37 discriminator 4
	li	a5,0
.L71:
	.loc 1 1154 1 is_stmt 1
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
.LFE101:
	.size	eckeydh_can_do, .-eckeydh_can_do
	.globl	mbedtls_eckeydh_info
	.section	.rodata
	.align	2
.LC5:
	.string	"EC_DH"
	.section	.rodata.mbedtls_eckeydh_info,"a"
	.align	2
	.type	mbedtls_eckeydh_info, @object
	.size	mbedtls_eckeydh_info, 64
mbedtls_eckeydh_info:
	.byte	3
	.zero	3
	.word	.LC5
	.word	eckey_get_bitlen
	.word	eckeydh_can_do
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	eckey_check_pair_wrap
	.word	eckey_alloc_wrap
	.word	eckey_free_wrap
	.zero	8
	.word	eckey_debug
	.section	.text.ecdsa_can_do,"ax",@progbits
	.align	1
	.type	ecdsa_can_do, @function
ecdsa_can_do:
.LFB102:
	.loc 1 1182 1
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
	.loc 1 1183 17
	lbu	a5,-17(s0)
	addi	a5,a5,-4
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 1184 1
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
	.size	ecdsa_can_do, .-ecdsa_can_do
	.section	.text.ecdsa_verify_rs_wrap,"ax",@progbits
	.align	1
	.type	ecdsa_verify_rs_wrap, @function
ecdsa_verify_rs_wrap:
.LFB103:
	.loc 1 1191 1
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
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 1192 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 1196 37
	lw	a5,-36(s0)
	lw	a0,4(a5)
	.loc 1 1195 11
	lw	a5,-60(s0)
	lw	a4,-56(s0)
	lw	a3,-52(s0)
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	call	mbedtls_ecdsa_read_signature_restartable
	sw	a0,-20(s0)
	.loc 1 1200 8
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1024
	bne	a4,a5,.L75
	.loc 1 1201 16
	li	a5,-16384
	addi	a5,a5,1792
	j	.L76
.L75:
	.loc 1 1204 12
	lw	a5,-20(s0)
.L76:
	.loc 1 1205 1
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
.LFE103:
	.size	ecdsa_verify_rs_wrap, .-ecdsa_verify_rs_wrap
	.section	.text.ecdsa_sign_rs_wrap,"ax",@progbits
	.align	1
	.type	ecdsa_sign_rs_wrap, @function
ecdsa_sign_rs_wrap:
.LFB104:
	.loc 1 1212 1
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
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	sw	a7,-48(s0)
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 1 1214 37
	lw	a5,-20(s0)
	lw	a0,4(a5)
	.loc 1 1213 12
	lbu	a1,-21(s0)
	lw	a5,4(s0)
	sw	a5,4(sp)
	lw	a5,0(s0)
	sw	a5,0(sp)
	lw	a7,-48(s0)
	lw	a6,-44(s0)
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	call	mbedtls_ecdsa_write_signature_restartable
	mv	a5,a0
	.loc 1 1218 1
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
.LFE104:
	.size	ecdsa_sign_rs_wrap, .-ecdsa_sign_rs_wrap
	.section	.text.ecdsa_rs_alloc,"ax",@progbits
	.align	1
	.type	ecdsa_rs_alloc, @function
ecdsa_rs_alloc:
.LFB105:
	.loc 1 1221 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1222 17
	li	a1,28
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-20(s0)
	.loc 1 1224 8
	lw	a5,-20(s0)
	beq	a5,zero,.L80
	.loc 1 1225 9
	lw	a0,-20(s0)
	call	mbedtls_ecdsa_restart_init
.L80:
	.loc 1 1228 12
	lw	a5,-20(s0)
	.loc 1 1229 1
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
.LFE105:
	.size	ecdsa_rs_alloc, .-ecdsa_rs_alloc
	.section	.text.ecdsa_rs_free,"ax",@progbits
	.align	1
	.type	ecdsa_rs_free, @function
ecdsa_rs_free:
.LFB106:
	.loc 1 1232 1
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
	.loc 1 1233 5
	lw	a0,-20(s0)
	call	mbedtls_ecdsa_restart_free
	.loc 1 1234 5
	lw	a0,-20(s0)
	call	free
	.loc 1 1235 1
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
.LFE106:
	.size	ecdsa_rs_free, .-ecdsa_rs_free
	.globl	mbedtls_ecdsa_info
	.section	.rodata
	.align	2
.LC6:
	.string	"ECDSA"
	.section	.rodata.mbedtls_ecdsa_info,"a"
	.align	2
	.type	mbedtls_ecdsa_info, @object
	.size	mbedtls_ecdsa_info, 64
mbedtls_ecdsa_info:
	.byte	4
	.zero	3
	.word	.LC6
	.word	eckey_get_bitlen
	.word	ecdsa_can_do
	.word	ecdsa_verify_wrap
	.word	ecdsa_sign_wrap
	.word	ecdsa_verify_rs_wrap
	.word	ecdsa_sign_rs_wrap
	.word	0
	.word	0
	.word	eckey_check_pair_wrap
	.word	eckey_alloc_wrap
	.word	eckey_free_wrap
	.word	ecdsa_rs_alloc
	.word	ecdsa_rs_free
	.word	eckey_debug
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/rsa.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecp.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecdsa.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/pk.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk_wrap.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x169b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x24
	.4byte	.LASF184
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x14
	.4byte	0x32
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xc
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x25
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0xc
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x26
	.byte	0x4
	.uleb128 0x4
	.4byte	0x32
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x14
	.4byte	0x9c
	.uleb128 0x4
	.4byte	0xa3
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0xd1
	.byte	0xd
	.4byte	0xb9
	.uleb128 0xd
	.4byte	0x68
	.4byte	0xd2
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x16
	.4byte	0x32
	.byte	0x5
	.byte	0x2f
	.4byte	0x126
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x11
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x12
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x5
	.byte	0x3c
	.byte	0x3
	.4byte	0xd2
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x6
	.byte	0xaa
	.byte	0x12
	.4byte	0x89
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x8
	.byte	0x6
	.byte	0xd0
	.byte	0x10
	.4byte	0x16d
	.uleb128 0x5
	.string	"p"
	.byte	0x6
	.byte	0xd5
	.byte	0x17
	.4byte	0x16d
	.byte	0
	.uleb128 0x5
	.string	"s"
	.byte	0x6
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x5
	.string	"n"
	.byte	0x6
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	0x132
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x6
	.byte	0xf0
	.byte	0x1
	.4byte	0x13e
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x78
	.byte	0x7
	.byte	0x55
	.byte	0x10
	.4byte	0x257
	.uleb128 0x5
	.string	"ver"
	.byte	0x7
	.byte	0x56
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x5
	.string	"len"
	.byte	0x7
	.byte	0x5a
	.byte	0xc
	.4byte	0x76
	.byte	0x4
	.uleb128 0x5
	.string	"N"
	.byte	0x7
	.byte	0x5c
	.byte	0x11
	.4byte	0x172
	.byte	0x8
	.uleb128 0x5
	.string	"E"
	.byte	0x7
	.byte	0x5d
	.byte	0x11
	.4byte	0x172
	.byte	0x10
	.uleb128 0x5
	.string	"D"
	.byte	0x7
	.byte	0x5f
	.byte	0x11
	.4byte	0x172
	.byte	0x18
	.uleb128 0x5
	.string	"P"
	.byte	0x7
	.byte	0x60
	.byte	0x11
	.4byte	0x172
	.byte	0x20
	.uleb128 0x5
	.string	"Q"
	.byte	0x7
	.byte	0x61
	.byte	0x11
	.4byte	0x172
	.byte	0x28
	.uleb128 0x5
	.string	"DP"
	.byte	0x7
	.byte	0x63
	.byte	0x11
	.4byte	0x172
	.byte	0x30
	.uleb128 0x5
	.string	"DQ"
	.byte	0x7
	.byte	0x64
	.byte	0x11
	.4byte	0x172
	.byte	0x38
	.uleb128 0x5
	.string	"QP"
	.byte	0x7
	.byte	0x65
	.byte	0x11
	.4byte	0x172
	.byte	0x40
	.uleb128 0x5
	.string	"RN"
	.byte	0x7
	.byte	0x67
	.byte	0x11
	.4byte	0x172
	.byte	0x48
	.uleb128 0x5
	.string	"RP"
	.byte	0x7
	.byte	0x69
	.byte	0x11
	.4byte	0x172
	.byte	0x50
	.uleb128 0x5
	.string	"RQ"
	.byte	0x7
	.byte	0x6a
	.byte	0x11
	.4byte	0x172
	.byte	0x58
	.uleb128 0x5
	.string	"Vi"
	.byte	0x7
	.byte	0x6c
	.byte	0x11
	.4byte	0x172
	.byte	0x60
	.uleb128 0x5
	.string	"Vf"
	.byte	0x7
	.byte	0x6d
	.byte	0x11
	.4byte	0x172
	.byte	0x68
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x7
	.byte	0x6f
	.byte	0x9
	.4byte	0x68
	.byte	0x70
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x7
	.byte	0x72
	.byte	0x9
	.4byte	0x68
	.byte	0x74
	.byte	0
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x7
	.byte	0x7b
	.byte	0x1
	.4byte	0x17e
	.uleb128 0x14
	.4byte	0x257
	.uleb128 0x16
	.4byte	0x32
	.byte	0x8
	.byte	0x66
	.4byte	0x2c8
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x8
	.byte	0x75
	.byte	0x3
	.4byte	0x268
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x18
	.byte	0x8
	.byte	0x9e
	.byte	0x10
	.4byte	0x303
	.uleb128 0x5
	.string	"X"
	.byte	0x8
	.byte	0x9f
	.byte	0x11
	.4byte	0x172
	.byte	0
	.uleb128 0x5
	.string	"Y"
	.byte	0x8
	.byte	0xa0
	.byte	0x11
	.4byte	0x172
	.byte	0x8
	.uleb128 0x5
	.string	"Z"
	.byte	0x8
	.byte	0xa1
	.byte	0x11
	.4byte	0x172
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x8
	.byte	0xa3
	.byte	0x1
	.4byte	0x2d4
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x60
	.byte	0x8
	.byte	0xe9
	.byte	0x10
	.4byte	0x3d3
	.uleb128 0x5
	.string	"id"
	.byte	0x8
	.byte	0xea
	.byte	0x1a
	.4byte	0x2c8
	.byte	0
	.uleb128 0x5
	.string	"P"
	.byte	0x8
	.byte	0xeb
	.byte	0x11
	.4byte	0x172
	.byte	0x4
	.uleb128 0x5
	.string	"A"
	.byte	0x8
	.byte	0xec
	.byte	0x11
	.4byte	0x172
	.byte	0xc
	.uleb128 0x5
	.string	"B"
	.byte	0x8
	.byte	0xf1
	.byte	0x11
	.4byte	0x172
	.byte	0x14
	.uleb128 0x5
	.string	"G"
	.byte	0x8
	.byte	0xf3
	.byte	0x17
	.4byte	0x303
	.byte	0x1c
	.uleb128 0x5
	.string	"N"
	.byte	0x8
	.byte	0xf4
	.byte	0x11
	.4byte	0x172
	.byte	0x34
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x8
	.byte	0xf5
	.byte	0xc
	.4byte	0x76
	.byte	0x3c
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x8
	.byte	0xf6
	.byte	0xc
	.4byte	0x76
	.byte	0x40
	.uleb128 0x5
	.string	"h"
	.byte	0x8
	.byte	0xfb
	.byte	0x12
	.4byte	0x6f
	.byte	0x44
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x8
	.byte	0xfc
	.byte	0xa
	.4byte	0x3e7
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x8
	.byte	0xfe
	.byte	0xa
	.4byte	0x405
	.byte	0x4c
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x8
	.byte	0xff
	.byte	0xa
	.4byte	0x405
	.byte	0x50
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x8
	.2byte	0x100
	.byte	0xb
	.4byte	0x95
	.byte	0x54
	.uleb128 0x13
	.string	"T"
	.2byte	0x101
	.byte	0x18
	.4byte	0x400
	.byte	0x58
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x8
	.2byte	0x102
	.byte	0xc
	.4byte	0x76
	.byte	0x5c
	.byte	0
	.uleb128 0xd
	.4byte	0x68
	.4byte	0x3e2
	.uleb128 0x1
	.4byte	0x3e2
	.byte	0
	.uleb128 0x4
	.4byte	0x172
	.uleb128 0x4
	.4byte	0x3d3
	.uleb128 0xd
	.4byte	0x68
	.4byte	0x400
	.uleb128 0x1
	.4byte	0x400
	.uleb128 0x1
	.4byte	0x95
	.byte	0
	.uleb128 0x4
	.4byte	0x303
	.uleb128 0x4
	.4byte	0x3ec
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x8
	.2byte	0x104
	.byte	0x1
	.4byte	0x30f
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x8
	.2byte	0x16c
	.byte	0x28
	.4byte	0x424
	.uleb128 0x15
	.4byte	.LASF60
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x8
	.2byte	0x173
	.byte	0x2b
	.4byte	0x436
	.uleb128 0x15
	.4byte	.LASF61
	.uleb128 0x1e
	.byte	0x10
	.byte	0x8
	.2byte	0x178
	.4byte	0x47a
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x8
	.2byte	0x179
	.byte	0xe
	.4byte	0x6f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x8
	.2byte	0x17a
	.byte	0xe
	.4byte	0x6f
	.byte	0x4
	.uleb128 0x13
	.string	"rsm"
	.2byte	0x17b
	.byte	0x22
	.4byte	0x47a
	.byte	0x8
	.uleb128 0x13
	.string	"ma"
	.2byte	0x17c
	.byte	0x25
	.4byte	0x47f
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	0x417
	.uleb128 0x4
	.4byte	0x429
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x17d
	.byte	0x3
	.4byte	0x43b
	.uleb128 0x27
	.4byte	.LASF65
	.byte	0x80
	.byte	0x8
	.2byte	0x1ac
	.byte	0x10
	.4byte	0x4c3
	.uleb128 0x13
	.string	"grp"
	.2byte	0x1ad
	.byte	0x17
	.4byte	0x40a
	.byte	0
	.uleb128 0x13
	.string	"d"
	.2byte	0x1ae
	.byte	0x11
	.4byte	0x172
	.byte	0x60
	.uleb128 0x13
	.string	"Q"
	.2byte	0x1af
	.byte	0x17
	.4byte	0x303
	.byte	0x68
	.byte	0
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x1b1
	.byte	0x1
	.4byte	0x491
	.uleb128 0x14
	.4byte	0x4c3
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x9
	.byte	0x44
	.byte	0x1d
	.4byte	0x4c3
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x9
	.byte	0x4d
	.byte	0x2a
	.4byte	0x4ed
	.uleb128 0x15
	.4byte	.LASF68
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x9
	.byte	0x54
	.byte	0x2a
	.4byte	0x4fe
	.uleb128 0x15
	.4byte	.LASF70
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0x9
	.byte	0x5c
	.byte	0x2a
	.4byte	0x50f
	.uleb128 0x15
	.4byte	.LASF72
	.uleb128 0x28
	.byte	0x1c
	.byte	0x9
	.byte	0x62
	.byte	0x9
	.4byte	0x552
	.uleb128 0x5
	.string	"ecp"
	.byte	0x9
	.byte	0x63
	.byte	0x1d
	.4byte	0x484
	.byte	0
	.uleb128 0x5
	.string	"ver"
	.byte	0x9
	.byte	0x65
	.byte	0x24
	.4byte	0x552
	.byte	0x10
	.uleb128 0x5
	.string	"sig"
	.byte	0x9
	.byte	0x66
	.byte	0x24
	.4byte	0x557
	.byte	0x14
	.uleb128 0x5
	.string	"det"
	.byte	0x9
	.byte	0x68
	.byte	0x24
	.4byte	0x55c
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.4byte	0x4e1
	.uleb128 0x4
	.4byte	0x4f2
	.uleb128 0x4
	.4byte	0x503
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x9
	.byte	0x6a
	.byte	0x3
	.4byte	0x514
	.uleb128 0x4
	.4byte	0x76
	.uleb128 0x4
	.4byte	0x4d5
	.uleb128 0x16
	.4byte	0x32
	.byte	0xa
	.byte	0x49
	.4byte	0x5b3
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0xa
	.byte	0x52
	.byte	0x3
	.4byte	0x577
	.uleb128 0x16
	.4byte	0x32
	.byte	0xa
	.byte	0xbb
	.4byte	0x5e3
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0xa
	.byte	0xc0
	.byte	0x3
	.4byte	0x5bf
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0xc
	.byte	0xa
	.byte	0xc5
	.byte	0x10
	.4byte	0x624
	.uleb128 0x6
	.4byte	.LASF89
	.byte	0xa
	.byte	0xc6
	.byte	0x1b
	.4byte	0x5e3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF90
	.byte	0xa
	.byte	0xc7
	.byte	0x11
	.4byte	0xa8
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0xa
	.byte	0xc8
	.byte	0xb
	.4byte	0x95
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF88
	.byte	0xa
	.byte	0xc9
	.byte	0x3
	.4byte	0x5ef
	.uleb128 0x8
	.4byte	.LASF92
	.byte	0xa
	.byte	0xd5
	.byte	0x22
	.4byte	0x641
	.uleb128 0x14
	.4byte	0x630
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0x40
	.byte	0xb
	.byte	0x16
	.byte	0x8
	.4byte	0x71f
	.uleb128 0x6
	.4byte	.LASF89
	.byte	0xb
	.byte	0x18
	.byte	0x17
	.4byte	0x5b3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF90
	.byte	0xb
	.byte	0x1b
	.byte	0x11
	.4byte	0xa8
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0xb
	.byte	0x1e
	.byte	0xe
	.4byte	0x76d
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0xb
	.byte	0x21
	.byte	0xb
	.4byte	0x781
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF95
	.byte	0xb
	.byte	0x24
	.byte	0xb
	.4byte	0x7b3
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF96
	.byte	0xb
	.byte	0x29
	.byte	0xb
	.4byte	0x7f4
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0xb
	.byte	0x31
	.byte	0xb
	.4byte	0x826
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0xb
	.byte	0x37
	.byte	0xb
	.4byte	0x867
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0xb
	.byte	0x3f
	.byte	0xb
	.4byte	0x89e
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF100
	.byte	0xb
	.byte	0x45
	.byte	0xb
	.4byte	0x89e
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0xb
	.byte	0x4b
	.byte	0xb
	.4byte	0x8c1
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF102
	.byte	0xb
	.byte	0x50
	.byte	0xe
	.4byte	0x8cb
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF103
	.byte	0xb
	.byte	0x53
	.byte	0xc
	.4byte	0x8db
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF104
	.byte	0xb
	.byte	0x57
	.byte	0xd
	.4byte	0x8cb
	.byte	0x34
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0xb
	.byte	0x5a
	.byte	0xc
	.4byte	0x8db
	.byte	0x38
	.uleb128 0x6
	.4byte	.LASF106
	.byte	0xb
	.byte	0x5e
	.byte	0xc
	.4byte	0x8f5
	.byte	0x3c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF107
	.byte	0x8
	.byte	0xa
	.byte	0xdc
	.byte	0x10
	.4byte	0x747
	.uleb128 0x6
	.4byte	.LASF108
	.byte	0xa
	.byte	0xdd
	.byte	0x1e
	.4byte	0x747
	.byte	0
	.uleb128 0x6
	.4byte	.LASF109
	.byte	0xa
	.byte	0xde
	.byte	0xb
	.4byte	0x95
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	0x63c
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0xa
	.2byte	0x109
	.byte	0x3
	.4byte	0x71f
	.uleb128 0xd
	.4byte	0x76
	.4byte	0x768
	.uleb128 0x1
	.4byte	0x768
	.byte	0
	.uleb128 0x4
	.4byte	0x74c
	.uleb128 0x4
	.4byte	0x759
	.uleb128 0xd
	.4byte	0x68
	.4byte	0x781
	.uleb128 0x1
	.4byte	0x5b3
	.byte	0
	.uleb128 0x4
	.4byte	0x772
	.uleb128 0xd
	.4byte	0x68
	.4byte	0x7ae
	.uleb128 0x1
	.4byte	0x768
	.uleb128 0x1
	.4byte	0x126
	.uleb128 0x1
	.4byte	0x7ae
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x7ae
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.4byte	0x39
	.uleb128 0x4
	.4byte	0x786
	.uleb128 0xd
	.4byte	0x68
	.4byte	0x7ef
	.uleb128 0x1
	.4byte	0x768
	.uleb128 0x1
	.4byte	0x126
	.uleb128 0x1
	.4byte	0x7ae
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x56d
	.uleb128 0x1
	.4byte	0x7ef
	.uleb128 0x1
	.4byte	0x95
	.byte	0
	.uleb128 0x4
	.4byte	0xb9
	.uleb128 0x4
	.4byte	0x7b8
	.uleb128 0xd
	.4byte	0x68
	.4byte	0x826
	.uleb128 0x1
	.4byte	0x768
	.uleb128 0x1
	.4byte	0x126
	.uleb128 0x1
	.4byte	0x7ae
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x7ae
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x95
	.byte	0
	.uleb128 0x4
	.4byte	0x7f9
	.uleb128 0xd
	.4byte	0x68
	.4byte	0x867
	.uleb128 0x1
	.4byte	0x768
	.uleb128 0x1
	.4byte	0x126
	.uleb128 0x1
	.4byte	0x7ae
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x56d
	.uleb128 0x1
	.4byte	0x7ef
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x95
	.byte	0
	.uleb128 0x4
	.4byte	0x82b
	.uleb128 0xd
	.4byte	0x68
	.4byte	0x89e
	.uleb128 0x1
	.4byte	0x768
	.uleb128 0x1
	.4byte	0x7ae
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x56d
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x7ef
	.uleb128 0x1
	.4byte	0x95
	.byte	0
	.uleb128 0x4
	.4byte	0x86c
	.uleb128 0xd
	.4byte	0x68
	.4byte	0x8c1
	.uleb128 0x1
	.4byte	0x768
	.uleb128 0x1
	.4byte	0x768
	.uleb128 0x1
	.4byte	0x7ef
	.uleb128 0x1
	.4byte	0x95
	.byte	0
	.uleb128 0x4
	.4byte	0x8a3
	.uleb128 0x29
	.4byte	0x95
	.uleb128 0x4
	.4byte	0x8c6
	.uleb128 0x1f
	.4byte	0x8db
	.uleb128 0x1
	.4byte	0x95
	.byte	0
	.uleb128 0x4
	.4byte	0x8d0
	.uleb128 0x1f
	.4byte	0x8f0
	.uleb128 0x1
	.4byte	0x768
	.uleb128 0x1
	.4byte	0x8f0
	.byte	0
	.uleb128 0x4
	.4byte	0x624
	.uleb128 0x4
	.4byte	0x8e0
	.uleb128 0x17
	.4byte	.LASF110
	.byte	0x6c
	.4byte	0x63c
	.uleb128 0x17
	.4byte	.LASF111
	.byte	0x70
	.4byte	0x63c
	.uleb128 0x17
	.4byte	.LASF112
	.byte	0x71
	.4byte	0x63c
	.uleb128 0x17
	.4byte	.LASF113
	.byte	0x75
	.4byte	0x63c
	.uleb128 0x18
	.4byte	0x8fa
	.2byte	0x1ec
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_rsa_info
	.uleb128 0x1e
	.byte	0x9c
	.byte	0x1
	.2byte	0x349
	.4byte	0x955
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x34a
	.byte	0x1f
	.4byte	0x561
	.byte	0
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x34b
	.byte	0x1b
	.4byte	0x4d5
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x34c
	.byte	0x3
	.4byte	0x92f
	.uleb128 0x18
	.4byte	0x904
	.2byte	0x459
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_eckey_info
	.uleb128 0x18
	.4byte	0x90e
	.2byte	0x484
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_eckeydh_info
	.uleb128 0x18
	.4byte	0x918
	.2byte	0x4d6
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_ecdsa_info
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x20a
	.byte	0x5
	.4byte	0x68
	.4byte	0x9cd
	.uleb128 0x1
	.4byte	0x572
	.uleb128 0x1
	.4byte	0x126
	.uleb128 0x1
	.4byte	0x7ae
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x56d
	.uleb128 0x1
	.4byte	0x9cd
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x9d2
	.byte	0
	.uleb128 0x4
	.4byte	0xad
	.uleb128 0x4
	.4byte	0x561
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x9
	.2byte	0x250
	.byte	0x5
	.4byte	0x68
	.4byte	0xa07
	.uleb128 0x1
	.4byte	0x572
	.uleb128 0x1
	.4byte	0x7ae
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x7ae
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x9d2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0x8
	.2byte	0x288
	.4byte	0xa19
	.uleb128 0x1
	.4byte	0xa19
	.byte	0
	.uleb128 0x4
	.4byte	0x4c3
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0x8
	.2byte	0x26f
	.4byte	0xa30
	.uleb128 0x1
	.4byte	0xa19
	.byte	0
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x8
	.2byte	0x5ac
	.byte	0x5
	.4byte	0x68
	.4byte	0xa56
	.uleb128 0x1
	.4byte	0xa56
	.uleb128 0x1
	.4byte	0xa56
	.uleb128 0x1
	.4byte	0x9cd
	.uleb128 0x1
	.4byte	0x95
	.byte	0
	.uleb128 0x4
	.4byte	0x4d0
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x9
	.2byte	0x277
	.byte	0x5
	.4byte	0x68
	.4byte	0xa77
	.uleb128 0x1
	.4byte	0x572
	.uleb128 0x1
	.4byte	0xa56
	.byte	0
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0x9
	.2byte	0x289
	.4byte	0xa89
	.uleb128 0x1
	.4byte	0x572
	.byte	0
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0x9
	.2byte	0x29b
	.4byte	0xa9b
	.uleb128 0x1
	.4byte	0x9d2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0x9
	.2byte	0x280
	.4byte	0xaad
	.uleb128 0x1
	.4byte	0x572
	.byte	0
	.uleb128 0x11
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x292
	.4byte	0xabf
	.uleb128 0x1
	.4byte	0x9d2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x9
	.2byte	0x1da
	.byte	0x5
	.4byte	0x68
	.4byte	0xafe
	.uleb128 0x1
	.4byte	0x572
	.uleb128 0x1
	.4byte	0x126
	.uleb128 0x1
	.4byte	0x7ae
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x56d
	.uleb128 0x1
	.4byte	0x9cd
	.uleb128 0x1
	.4byte	0x95
	.byte	0
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x9
	.2byte	0x22d
	.byte	0x5
	.4byte	0x68
	.4byte	0xb29
	.uleb128 0x1
	.4byte	0x572
	.uleb128 0x1
	.4byte	0x7ae
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x7ae
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x20
	.4byte	.LASF129
	.byte	0xc
	.byte	0x5e
	.4byte	0xb3a
	.uleb128 0x1
	.4byte	0x95
	.byte	0
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0x7
	.2byte	0x47a
	.4byte	0xb4c
	.uleb128 0x1
	.4byte	0xb4c
	.byte	0
	.uleb128 0x4
	.4byte	0x257
	.uleb128 0x20
	.4byte	.LASF131
	.byte	0x7
	.byte	0x8b
	.4byte	0xb62
	.uleb128 0x1
	.4byte	0xb4c
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0xc
	.byte	0x5a
	.byte	0x7
	.4byte	0x95
	.4byte	0xb7d
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x7
	.2byte	0x219
	.byte	0x5
	.4byte	0x68
	.4byte	0xb99
	.uleb128 0x1
	.4byte	0xb99
	.uleb128 0x1
	.4byte	0xb99
	.byte	0
	.uleb128 0x4
	.4byte	0x263
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x7
	.2byte	0x26d
	.byte	0x5
	.4byte	0x68
	.4byte	0xbce
	.uleb128 0x1
	.4byte	0xb4c
	.uleb128 0x1
	.4byte	0x9cd
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x7ae
	.uleb128 0x1
	.4byte	0x97
	.byte	0
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x7
	.2byte	0x2d5
	.byte	0x5
	.4byte	0x68
	.4byte	0xc03
	.uleb128 0x1
	.4byte	0xb4c
	.uleb128 0x1
	.4byte	0x9cd
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x56d
	.uleb128 0x1
	.4byte	0x7ae
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x7
	.2byte	0x353
	.byte	0x5
	.4byte	0x68
	.4byte	0xc38
	.uleb128 0x1
	.4byte	0xb4c
	.uleb128 0x1
	.4byte	0x9cd
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x126
	.uleb128 0x1
	.4byte	0x6f
	.uleb128 0x1
	.4byte	0x7ae
	.uleb128 0x1
	.4byte	0x97
	.byte	0
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x7
	.2byte	0x3fc
	.byte	0x5
	.4byte	0x68
	.4byte	0xc63
	.uleb128 0x1
	.4byte	0xb4c
	.uleb128 0x1
	.4byte	0x126
	.uleb128 0x1
	.4byte	0x6f
	.uleb128 0x1
	.4byte	0x7ae
	.uleb128 0x1
	.4byte	0x7ae
	.byte	0
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x7
	.2byte	0x1bf
	.byte	0x8
	.4byte	0x76
	.4byte	0xc7a
	.uleb128 0x1
	.4byte	0xb99
	.byte	0
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x7
	.2byte	0x1b5
	.byte	0x8
	.4byte	0x76
	.4byte	0xc91
	.uleb128 0x1
	.4byte	0xb99
	.byte	0
	.uleb128 0x19
	.4byte	.LASF153
	.2byte	0x4cf
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb6
	.uleb128 0x7
	.string	"ctx"
	.2byte	0x4cf
	.byte	0x21
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF140
	.2byte	0x4c4
	.byte	0xe
	.4byte	0x95
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce0
	.uleb128 0x9
	.string	"ctx"
	.2byte	0x4c6
	.byte	0xb
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF141
	.2byte	0x4b7
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd90
	.uleb128 0x7
	.string	"pk"
	.2byte	0x4b7
	.byte	0x33
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x4b7
	.byte	0x49
	.4byte	0x126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x2
	.4byte	.LASF143
	.2byte	0x4b8
	.byte	0x34
	.4byte	0x7ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF144
	.2byte	0x4b8
	.byte	0x41
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.string	"sig"
	.2byte	0x4b9
	.byte	0x2e
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF145
	.2byte	0x4b9
	.byte	0x3a
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF146
	.2byte	0x4b9
	.byte	0x4c
	.4byte	0x56d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF147
	.2byte	0x4ba
	.byte	0x25
	.4byte	0x7ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0x4ba
	.byte	0x54
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.4byte	.LASF149
	.2byte	0x4bb
	.byte	0x25
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF150
	.2byte	0x4a3
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe22
	.uleb128 0x7
	.string	"pk"
	.2byte	0x4a3
	.byte	0x35
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x4a3
	.byte	0x4b
	.4byte	0x126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.4byte	.LASF143
	.2byte	0x4a4
	.byte	0x36
	.4byte	0x7ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF144
	.2byte	0x4a4
	.byte	0x43
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"sig"
	.2byte	0x4a5
	.byte	0x36
	.4byte	0x7ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF146
	.2byte	0x4a5
	.byte	0x42
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF149
	.2byte	0x4a6
	.byte	0x27
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.string	"ret"
	.2byte	0x4a8
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF151
	.2byte	0x49d
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe4c
	.uleb128 0x2
	.4byte	.LASF89
	.2byte	0x49d
	.byte	0x2b
	.4byte	0x5b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF152
	.2byte	0x47e
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe76
	.uleb128 0x2
	.4byte	.LASF89
	.2byte	0x47e
	.byte	0x2d
	.4byte	0x5b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x21
	.4byte	.LASF154
	.2byte	0x44b
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb8
	.uleb128 0x7
	.string	"pk"
	.2byte	0x44b
	.byte	0x2d
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF155
	.2byte	0x44b
	.byte	0x48
	.4byte	0x8f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"ecp"
	.2byte	0x452
	.byte	0x1a
	.4byte	0xa19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF156
	.2byte	0x444
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xedd
	.uleb128 0x7
	.string	"ctx"
	.2byte	0x444
	.byte	0x23
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF157
	.2byte	0x439
	.byte	0xe
	.4byte	0x95
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf07
	.uleb128 0x9
	.string	"ctx"
	.2byte	0x43b
	.byte	0xb
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF158
	.2byte	0x404
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf5e
	.uleb128 0x7
	.string	"pub"
	.2byte	0x404
	.byte	0x36
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"prv"
	.2byte	0x404
	.byte	0x4f
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF147
	.2byte	0x405
	.byte	0x28
	.4byte	0x7ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0x406
	.byte	0x28
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF159
	.2byte	0x386
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1036
	.uleb128 0x7
	.string	"pk"
	.2byte	0x386
	.byte	0x33
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x386
	.byte	0x49
	.4byte	0x126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.4byte	.LASF143
	.2byte	0x387
	.byte	0x34
	.4byte	0x7ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF144
	.2byte	0x387
	.byte	0x41
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"sig"
	.2byte	0x388
	.byte	0x2e
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF145
	.2byte	0x388
	.byte	0x3a
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF146
	.2byte	0x388
	.byte	0x4c
	.4byte	0x56d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF147
	.2byte	0x389
	.byte	0x25
	.4byte	0x7ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0x389
	.byte	0x54
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.4byte	.LASF149
	.2byte	0x38a
	.byte	0x25
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.string	"ret"
	.2byte	0x38c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"rs"
	.2byte	0x38d
	.byte	0x18
	.4byte	0x1036
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.4byte	.LASF161
	.2byte	0x39d
	.4byte	.L58
	.byte	0
	.uleb128 0x4
	.4byte	0x955
	.uleb128 0xa
	.4byte	.LASF160
	.2byte	0x36c
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10e6
	.uleb128 0x7
	.string	"pk"
	.2byte	0x36c
	.byte	0x35
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x36c
	.byte	0x4b
	.4byte	0x126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.4byte	.LASF143
	.2byte	0x36d
	.byte	0x36
	.4byte	0x7ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF144
	.2byte	0x36d
	.byte	0x43
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"sig"
	.2byte	0x36e
	.byte	0x36
	.4byte	0x7ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF146
	.2byte	0x36e
	.byte	0x42
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF149
	.2byte	0x36f
	.byte	0x27
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.string	"ret"
	.2byte	0x371
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"rs"
	.2byte	0x372
	.byte	0x18
	.4byte	0x1036
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.4byte	.LASF161
	.2byte	0x382
	.4byte	.L52
	.byte	0
	.uleb128 0x19
	.4byte	.LASF162
	.2byte	0x35d
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1119
	.uleb128 0x7
	.string	"ctx"
	.2byte	0x35d
	.byte	0x21
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.4byte	.LASF149
	.2byte	0x35f
	.4byte	0x1036
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF163
	.2byte	0x34e
	.byte	0xe
	.4byte	0x95
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1151
	.uleb128 0x23
	.4byte	.LASF149
	.2byte	0x350
	.4byte	0x1036
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"ctx"
	.2byte	0x352
	.byte	0xb
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF164
	.2byte	0x329
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11f2
	.uleb128 0x7
	.string	"pk"
	.2byte	0x329
	.byte	0x30
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x329
	.byte	0x46
	.4byte	0x126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x2
	.4byte	.LASF143
	.2byte	0x32a
	.byte	0x31
	.4byte	0x7ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF144
	.2byte	0x32a
	.byte	0x3e
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.string	"sig"
	.2byte	0x32b
	.byte	0x2b
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF145
	.2byte	0x32b
	.byte	0x37
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF146
	.2byte	0x32b
	.byte	0x49
	.4byte	0x56d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF147
	.2byte	0x32c
	.byte	0x22
	.4byte	0x7ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0x32c
	.byte	0x51
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF165
	.2byte	0x29f
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1275
	.uleb128 0x7
	.string	"pk"
	.2byte	0x29f
	.byte	0x32
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x29f
	.byte	0x48
	.4byte	0x126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.4byte	.LASF143
	.2byte	0x2a0
	.byte	0x33
	.4byte	0x7ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF144
	.2byte	0x2a0
	.byte	0x40
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"sig"
	.2byte	0x2a1
	.byte	0x33
	.4byte	0x7ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF146
	.2byte	0x2a1
	.byte	0x3f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.string	"ret"
	.2byte	0x2a3
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF166
	.2byte	0x20d
	.byte	0xf
	.4byte	0x76
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12ad
	.uleb128 0x7
	.string	"pk"
	.2byte	0x20d
	.byte	0x34
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"ecp"
	.2byte	0x212
	.byte	0x1a
	.4byte	0xa19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF167
	.2byte	0x206
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12d7
	.uleb128 0x2
	.4byte	.LASF89
	.2byte	0x206
	.byte	0x2b
	.4byte	0x5b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x21
	.4byte	.LASF168
	.2byte	0x1d7
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1319
	.uleb128 0x7
	.string	"pk"
	.2byte	0x1d7
	.byte	0x2b
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF155
	.2byte	0x1d7
	.byte	0x46
	.4byte	0x8f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"rsa"
	.2byte	0x1de
	.byte	0x1a
	.4byte	0xb4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF169
	.2byte	0x1d1
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x133e
	.uleb128 0x7
	.string	"ctx"
	.2byte	0x1d1
	.byte	0x21
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF170
	.2byte	0x1c6
	.byte	0xe
	.4byte	0x95
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1368
	.uleb128 0x9
	.string	"ctx"
	.2byte	0x1c8
	.byte	0xb
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF171
	.2byte	0x1bc
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13bf
	.uleb128 0x7
	.string	"pub"
	.2byte	0x1bc
	.byte	0x34
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"prv"
	.2byte	0x1bc
	.byte	0x4d
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF147
	.2byte	0x1bd
	.byte	0x26
	.4byte	0x7ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0x1be
	.byte	0x26
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF172
	.2byte	0x1ab
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1460
	.uleb128 0x7
	.string	"pk"
	.2byte	0x1ab
	.byte	0x31
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF173
	.2byte	0x1ac
	.byte	0x32
	.4byte	0x7ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF174
	.2byte	0x1ac
	.byte	0x40
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF175
	.2byte	0x1ad
	.byte	0x2c
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF176
	.2byte	0x1ad
	.byte	0x3c
	.4byte	0x56d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF177
	.2byte	0x1ad
	.byte	0x49
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF147
	.2byte	0x1ae
	.byte	0x23
	.4byte	0x7ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0x1ae
	.byte	0x52
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.string	"rsa"
	.2byte	0x1b0
	.byte	0x1a
	.4byte	0xb4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF178
	.2byte	0x159
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1501
	.uleb128 0x7
	.string	"pk"
	.2byte	0x159
	.byte	0x31
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF173
	.2byte	0x15a
	.byte	0x32
	.4byte	0x7ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF174
	.2byte	0x15a
	.byte	0x40
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF175
	.2byte	0x15b
	.byte	0x2c
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF176
	.2byte	0x15b
	.byte	0x3c
	.4byte	0x56d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF177
	.2byte	0x15b
	.byte	0x49
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF147
	.2byte	0x15c
	.byte	0x23
	.4byte	0x7ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0x15c
	.byte	0x52
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.string	"rsa"
	.2byte	0x15e
	.byte	0x1a
	.4byte	0xb4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF179
	.byte	0xfe
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15ac
	.uleb128 0x1b
	.string	"pk"
	.byte	0xfe
	.byte	0x2e
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF142
	.byte	0xfe
	.byte	0x44
	.4byte	0x126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xe
	.4byte	.LASF143
	.byte	0xff
	.byte	0x2f
	.4byte	0x7ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.4byte	.LASF144
	.byte	0xff
	.byte	0x3c
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"sig"
	.2byte	0x100
	.byte	0x29
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF145
	.2byte	0x100
	.byte	0x35
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF146
	.2byte	0x100
	.byte	0x47
	.4byte	0x56d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF147
	.2byte	0x101
	.byte	0x20
	.4byte	0x7ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0x101
	.byte	0x4f
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.string	"rsa"
	.2byte	0x103
	.byte	0x1a
	.4byte	0xb4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF180
	.byte	0x82
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1644
	.uleb128 0x1b
	.string	"pk"
	.byte	0x82
	.byte	0x30
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF142
	.byte	0x82
	.byte	0x46
	.4byte	0x126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xe
	.4byte	.LASF143
	.byte	0x83
	.byte	0x31
	.4byte	0x7ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.4byte	.LASF144
	.byte	0x83
	.byte	0x3e
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"sig"
	.byte	0x84
	.byte	0x31
	.4byte	0x7ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.4byte	.LASF146
	.byte	0x84
	.byte	0x3d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"ret"
	.byte	0x86
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.string	"rsa"
	.byte	0x87
	.byte	0x1a
	.4byte	0xb4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.4byte	.LASF181
	.byte	0x1
	.byte	0x88
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF182
	.byte	0x3a
	.byte	0xf
	.4byte	0x76
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1679
	.uleb128 0x1b
	.string	"pk"
	.byte	0x3a
	.byte	0x32
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.string	"rsa"
	.byte	0x3c
	.byte	0x20
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF183
	.byte	0x1
	.byte	0x34
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0x34
	.byte	0x29
	.4byte	0x5b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 32
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 25
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
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
	.sleb128 13
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
	.uleb128 0x22
	.uleb128 0xa
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
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x21
	.sleb128 24
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x34
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
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xf4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
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
	.byte	0x7
	.4byte	.LFB83
	.uleb128 .LFE83-.LFB83
	.byte	0x7
	.4byte	.LFB84
	.uleb128 .LFE84-.LFB84
	.byte	0x7
	.4byte	.LFB85
	.uleb128 .LFE85-.LFB85
	.byte	0x7
	.4byte	.LFB86
	.uleb128 .LFE86-.LFB86
	.byte	0x7
	.4byte	.LFB87
	.uleb128 .LFE87-.LFB87
	.byte	0x7
	.4byte	.LFB88
	.uleb128 .LFE88-.LFB88
	.byte	0x7
	.4byte	.LFB89
	.uleb128 .LFE89-.LFB89
	.byte	0x7
	.4byte	.LFB90
	.uleb128 .LFE90-.LFB90
	.byte	0x7
	.4byte	.LFB91
	.uleb128 .LFE91-.LFB91
	.byte	0x7
	.4byte	.LFB92
	.uleb128 .LFE92-.LFB92
	.byte	0x7
	.4byte	.LFB93
	.uleb128 .LFE93-.LFB93
	.byte	0x7
	.4byte	.LFB94
	.uleb128 .LFE94-.LFB94
	.byte	0x7
	.4byte	.LFB95
	.uleb128 .LFE95-.LFB95
	.byte	0x7
	.4byte	.LFB96
	.uleb128 .LFE96-.LFB96
	.byte	0x7
	.4byte	.LFB97
	.uleb128 .LFE97-.LFB97
	.byte	0x7
	.4byte	.LFB98
	.uleb128 .LFE98-.LFB98
	.byte	0x7
	.4byte	.LFB99
	.uleb128 .LFE99-.LFB99
	.byte	0x7
	.4byte	.LFB100
	.uleb128 .LFE100-.LFB100
	.byte	0x7
	.4byte	.LFB101
	.uleb128 .LFE101-.LFB101
	.byte	0x7
	.4byte	.LFB102
	.uleb128 .LFE102-.LFB102
	.byte	0x7
	.4byte	.LFB103
	.uleb128 .LFE103-.LFB103
	.byte	0x7
	.4byte	.LFB104
	.uleb128 .LFE104-.LFB104
	.byte	0x7
	.4byte	.LFB105
	.uleb128 .LFE105-.LFB105
	.byte	0x7
	.4byte	.LFB106
	.uleb128 .LFE106-.LFB106
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF116:
	.string	"eckey_restart_ctx"
.LASF32:
	.string	"padding"
.LASF82:
	.string	"mbedtls_pk_type_t"
.LASF33:
	.string	"hash_id"
.LASF12:
	.string	"size_t"
.LASF72:
	.string	"mbedtls_ecdsa_restart_det"
.LASF96:
	.string	"sign_func"
.LASF139:
	.string	"mbedtls_rsa_get_bitlen"
.LASF87:
	.string	"mbedtls_pk_debug_type"
.LASF156:
	.string	"eckey_free_wrap"
.LASF89:
	.string	"type"
.LASF9:
	.string	"long long unsigned int"
.LASF118:
	.string	"mbedtls_ecdsa_read_signature_restartable"
.LASF53:
	.string	"modp"
.LASF157:
	.string	"eckey_alloc_wrap"
.LASF71:
	.string	"mbedtls_ecdsa_restart_det_ctx"
.LASF56:
	.string	"t_data"
.LASF81:
	.string	"MBEDTLS_PK_OPAQUE"
.LASF124:
	.string	"mbedtls_ecdsa_restart_free"
.LASF47:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF129:
	.string	"free"
.LASF114:
	.string	"ecdsa_rs"
.LASF30:
	.string	"mbedtls_mpi"
.LASF31:
	.string	"mbedtls_rsa_context"
.LASF165:
	.string	"ecdsa_verify_wrap"
.LASF92:
	.string	"mbedtls_pk_info_t"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF166:
	.string	"eckey_get_bitlen"
.LASF54:
	.string	"t_pre"
.LASF163:
	.string	"eckey_rs_alloc"
.LASF146:
	.string	"sig_len"
.LASF164:
	.string	"ecdsa_sign_wrap"
.LASF64:
	.string	"mbedtls_ecp_restart_ctx"
.LASF147:
	.string	"f_rng"
.LASF34:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF6:
	.string	"long int"
.LASF140:
	.string	"ecdsa_rs_alloc"
.LASF144:
	.string	"hash_len"
.LASF112:
	.string	"mbedtls_eckeydh_info"
.LASF20:
	.string	"MBEDTLS_MD_SHA224"
.LASF83:
	.string	"MBEDTLS_PK_DEBUG_NONE"
.LASF173:
	.string	"input"
.LASF10:
	.string	"unsigned int"
.LASF120:
	.string	"mbedtls_ecp_keypair_init"
.LASF36:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF176:
	.string	"olen"
.LASF84:
	.string	"MBEDTLS_PK_DEBUG_MPI"
.LASF115:
	.string	"ecdsa_ctx"
.LASF106:
	.string	"debug_func"
.LASF27:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF159:
	.string	"eckey_sign_rs_wrap"
.LASF119:
	.string	"mbedtls_ecp_keypair_free"
.LASF98:
	.string	"sign_rs_func"
.LASF21:
	.string	"MBEDTLS_MD_SHA256"
.LASF35:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF178:
	.string	"rsa_decrypt_wrap"
.LASF38:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF149:
	.string	"rs_ctx"
.LASF52:
	.string	"nbits"
.LASF91:
	.string	"value"
.LASF170:
	.string	"rsa_alloc_wrap"
.LASF122:
	.string	"mbedtls_ecdsa_from_keypair"
.LASF135:
	.string	"mbedtls_rsa_pkcs1_decrypt"
.LASF25:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF175:
	.string	"output"
.LASF168:
	.string	"rsa_debug"
.LASF44:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF90:
	.string	"name"
.LASF138:
	.string	"mbedtls_rsa_get_len"
.LASF18:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF28:
	.string	"mbedtls_md_type_t"
.LASF86:
	.string	"MBEDTLS_PK_DEBUG_PSA_EC"
.LASF45:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF5:
	.string	"short unsigned int"
.LASF62:
	.string	"ops_done"
.LASF77:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF121:
	.string	"mbedtls_ecp_check_pub_priv"
.LASF76:
	.string	"MBEDTLS_PK_ECKEY"
.LASF127:
	.string	"mbedtls_ecdsa_write_signature"
.LASF78:
	.string	"MBEDTLS_PK_ECDSA"
.LASF67:
	.string	"mbedtls_ecdsa_restart_ver_ctx"
.LASF41:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF97:
	.string	"verify_rs_func"
.LASF58:
	.string	"mbedtls_ecp_restart_mul_ctx"
.LASF182:
	.string	"rsa_get_bitlen"
.LASF105:
	.string	"rs_free_func"
.LASF99:
	.string	"decrypt_func"
.LASF148:
	.string	"p_rng"
.LASF85:
	.string	"MBEDTLS_PK_DEBUG_ECP"
.LASF60:
	.string	"mbedtls_ecp_restart_mul"
.LASF49:
	.string	"mbedtls_ecp_point"
.LASF169:
	.string	"rsa_free_wrap"
.LASF40:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF162:
	.string	"eckey_rs_free"
.LASF160:
	.string	"eckey_verify_rs_wrap"
.LASF39:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF57:
	.string	"T_size"
.LASF152:
	.string	"eckeydh_can_do"
.LASF23:
	.string	"MBEDTLS_MD_SHA512"
.LASF183:
	.string	"rsa_can_do"
.LASF113:
	.string	"mbedtls_ecdsa_info"
.LASF19:
	.string	"MBEDTLS_MD_SHA1"
.LASF111:
	.string	"mbedtls_eckey_info"
.LASF161:
	.string	"cleanup"
.LASF66:
	.string	"mbedtls_ecdsa_context"
.LASF179:
	.string	"rsa_sign_wrap"
.LASF154:
	.string	"eckey_debug"
.LASF137:
	.string	"mbedtls_rsa_pkcs1_verify"
.LASF107:
	.string	"mbedtls_pk_context"
.LASF16:
	.string	"MBEDTLS_MD_NONE"
.LASF150:
	.string	"ecdsa_verify_rs_wrap"
.LASF94:
	.string	"can_do"
.LASF172:
	.string	"rsa_encrypt_wrap"
.LASF101:
	.string	"check_pair_func"
.LASF117:
	.string	"mbedtls_ecdsa_write_signature_restartable"
.LASF153:
	.string	"ecdsa_rs_free"
.LASF104:
	.string	"rs_alloc_func"
.LASF93:
	.string	"get_bitlen"
.LASF29:
	.string	"mbedtls_mpi_uint"
.LASF48:
	.string	"mbedtls_ecp_group_id"
.LASF3:
	.string	"unsigned char"
.LASF4:
	.string	"short int"
.LASF136:
	.string	"mbedtls_rsa_pkcs1_sign"
.LASF65:
	.string	"mbedtls_ecp_keypair"
.LASF59:
	.string	"mbedtls_ecp_restart_muladd_ctx"
.LASF73:
	.string	"mbedtls_ecdsa_restart_ctx"
.LASF50:
	.string	"mbedtls_ecp_group"
.LASF46:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF109:
	.string	"pk_ctx"
.LASF95:
	.string	"verify_func"
.LASF13:
	.string	"uint32_t"
.LASF103:
	.string	"ctx_free_func"
.LASF69:
	.string	"mbedtls_ecdsa_restart_sig_ctx"
.LASF133:
	.string	"mbedtls_rsa_check_pub_priv"
.LASF7:
	.string	"long unsigned int"
.LASF63:
	.string	"depth"
.LASF100:
	.string	"encrypt_func"
.LASF14:
	.string	"char"
.LASF180:
	.string	"rsa_verify_wrap"
.LASF171:
	.string	"rsa_check_pair_wrap"
.LASF80:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF68:
	.string	"mbedtls_ecdsa_restart_ver"
.LASF15:
	.string	"mbedtls_f_rng_t"
.LASF11:
	.string	"long double"
.LASF55:
	.string	"t_post"
.LASF128:
	.string	"mbedtls_ecdsa_read_signature"
.LASF22:
	.string	"MBEDTLS_MD_SHA384"
.LASF17:
	.string	"MBEDTLS_MD_MD5"
.LASF184:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF143:
	.string	"hash"
.LASF42:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF167:
	.string	"eckey_can_do"
.LASF70:
	.string	"mbedtls_ecdsa_restart_sig"
.LASF79:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF26:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF131:
	.string	"mbedtls_rsa_init"
.LASF134:
	.string	"mbedtls_rsa_pkcs1_encrypt"
.LASF141:
	.string	"ecdsa_sign_rs_wrap"
.LASF88:
	.string	"mbedtls_pk_debug_item"
.LASF126:
	.string	"mbedtls_ecdsa_restart_init"
.LASF132:
	.string	"calloc"
.LASF74:
	.string	"MBEDTLS_PK_NONE"
.LASF177:
	.string	"osize"
.LASF174:
	.string	"ilen"
.LASF130:
	.string	"mbedtls_rsa_free"
.LASF158:
	.string	"eckey_check_pair_wrap"
.LASF51:
	.string	"pbits"
.LASF37:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF145:
	.string	"sig_size"
.LASF142:
	.string	"md_alg"
.LASF110:
	.string	"mbedtls_rsa_info"
.LASF125:
	.string	"mbedtls_ecdsa_init"
.LASF43:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF24:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF61:
	.string	"mbedtls_ecp_restart_muladd"
.LASF151:
	.string	"ecdsa_can_do"
.LASF75:
	.string	"MBEDTLS_PK_RSA"
.LASF102:
	.string	"ctx_alloc_func"
.LASF155:
	.string	"items"
.LASF123:
	.string	"mbedtls_ecdsa_free"
.LASF108:
	.string	"pk_info"
.LASF181:
	.string	"rsa_len"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk_wrap.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
