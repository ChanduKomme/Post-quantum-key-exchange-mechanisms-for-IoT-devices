	.file	"nist_kw.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/nist_kw.c"
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
	.section	.text.mbedtls_ct_compiler_opaque,"ax",@progbits
	.align	1
	.type	mbedtls_ct_compiler_opaque, @function
mbedtls_ct_compiler_opaque:
.LFB27:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/constant_time_impl.h"
	.loc 2 86 1
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
	.loc 2 88 5
	lw	a5,-20(s0)
	sw	a5,-20(s0)
	.loc 2 89 12
	lw	a5,-20(s0)
	.loc 2 93 1
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
	.size	mbedtls_ct_compiler_opaque, .-mbedtls_ct_compiler_opaque
	.section	.text.mbedtls_ct_bool,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool, @function
mbedtls_ct_bool:
.LFB28:
	.loc 2 121 1
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
	.loc 2 184 34
	lw	a0,-36(s0)
	call	mbedtls_ct_compiler_opaque
	sw	a0,-20(s0)
	.loc 2 192 27
	lw	a5,-20(s0)
	neg	a4,a5
	.loc 2 192 39
	lw	a5,-20(s0)
	srli	a5,a5,1
	.loc 2 192 34
	neg	a5,a5
	.loc 2 192 32
	or	a5,a4,a5
	.loc 2 192 22
	sw	a5,-24(s0)
	.loc 2 195 11
	lw	a5,-24(s0)
	.loc 2 195 34
	srli	a5,a5,31
	.loc 2 195 7
	sw	a5,-24(s0)
	.loc 2 198 38
	lw	a5,-24(s0)
	neg	a5,a5
	.loc 2 203 1
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
	.size	mbedtls_ct_bool, .-mbedtls_ct_bool
	.section	.text.mbedtls_ct_if,"ax",@progbits
	.align	1
	.type	mbedtls_ct_if, @function
mbedtls_ct_if:
.LFB29:
	.loc 2 208 1
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
	.loc 2 266 36
	lw	a0,-36(s0)
	call	mbedtls_ct_compiler_opaque
	mv	a5,a0
	.loc 2 265 28
	not	a5,a5
	sw	a5,-20(s0)
	.loc 2 267 44
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	and	a4,a4,a5
	.loc 2 267 63
	lw	a3,-20(s0)
	lw	a5,-44(s0)
	and	a5,a3,a5
	.loc 2 267 12
	or	a5,a4,a5
	.loc 2 269 1
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
	.size	mbedtls_ct_if, .-mbedtls_ct_if
	.section	.text.mbedtls_ct_uint_lt,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_lt, @function
mbedtls_ct_uint_lt:
.LFB30:
	.loc 2 272 1
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
	.loc 2 354 34
	lw	a0,-36(s0)
	call	mbedtls_ct_compiler_opaque
	sw	a0,-20(s0)
	.loc 2 355 34
	lw	a0,-40(s0)
	call	mbedtls_ct_compiler_opaque
	sw	a0,-24(s0)
	.loc 2 360 55
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	xor	a5,a4,a5
	.loc 2 360 35
	srli	a5,a5,31
	mv	a0,a5
	call	mbedtls_ct_bool
	sw	a0,-28(s0)
	.loc 2 372 29
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	mbedtls_ct_if
	sw	a0,-32(s0)
	.loc 2 375 9
	lw	a5,-32(s0)
	srli	a5,a5,31
	sw	a5,-32(s0)
	.loc 2 378 12
	lw	a0,-32(s0)
	call	mbedtls_ct_bool
	mv	a5,a0
	.loc 2 380 1
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
.LFE30:
	.size	mbedtls_ct_uint_lt, .-mbedtls_ct_uint_lt
	.section	.text.mbedtls_ct_error_if,"ax",@progbits
	.align	1
	.type	mbedtls_ct_error_if, @function
mbedtls_ct_error_if:
.LFB41:
	.loc 2 473 1
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
	.loc 2 480 66
	lw	a5,-24(s0)
	neg	a5,a5
	.loc 2 480 20
	mv	a4,a5
	.loc 2 481 55
	lw	a5,-28(s0)
	neg	a5,a5
	.loc 2 480 20
	mv	a2,a5
	mv	a1,a4
	lw	a0,-20(s0)
	call	mbedtls_ct_if
	mv	a5,a0
	.loc 2 480 12 discriminator 1
	neg	a5,a5
	.loc 2 482 1
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
.LFE41:
	.size	mbedtls_ct_error_if, .-mbedtls_ct_error_if
	.section	.text.mbedtls_ct_uint_gt,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_gt, @function
mbedtls_ct_uint_gt:
.LFB44:
	.loc 2 497 1
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
	.loc 2 498 12
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	mbedtls_ct_uint_lt
	mv	a5,a0
	.loc 2 499 1
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
.LFE44:
	.size	mbedtls_ct_uint_gt, .-mbedtls_ct_uint_gt
	.section	.srodata.NIST_KW_ICV1,"a"
	.align	2
	.type	NIST_KW_ICV1, @object
	.size	NIST_KW_ICV1, 8
NIST_KW_ICV1:
	.base64	"pqampqampqY="
	.section	.srodata.NIST_KW_ICV2,"a"
	.align	2
	.type	NIST_KW_ICV2, @object
	.size	NIST_KW_ICV2, 4
NIST_KW_ICV2:
	.base64	"pllZpg=="
	.section	.text.mbedtls_nist_kw_init,"ax",@progbits
	.align	1
	.globl	mbedtls_nist_kw_init
	.type	mbedtls_nist_kw_init, @function
mbedtls_nist_kw_init:
.LFB54:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/nist_kw.c"
	.loc 3 47 1
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
	.loc 3 48 5
	li	a2,68
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 3 49 1
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
.LFE54:
	.size	mbedtls_nist_kw_init, .-mbedtls_nist_kw_init
	.section	.text.mbedtls_nist_kw_setkey,"ax",@progbits
	.align	1
	.globl	mbedtls_nist_kw_setkey
	.type	mbedtls_nist_kw_setkey, @function
mbedtls_nist_kw_setkey:
.LFB55:
	.loc 3 56 1
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
	mv	a5,a1
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sb	a5,-37(s0)
	.loc 3 57 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 60 19
	lw	a4,-48(s0)
	lbu	a5,-37(s0)
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_cipher_info_from_values
	sw	a0,-24(s0)
	.loc 3 63 8
	lw	a5,-24(s0)
	bne	a5,zero,.L18
	.loc 3 64 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L19
.L18:
	.loc 3 67 9
	lw	a0,-24(s0)
	call	mbedtls_cipher_info_get_block_size
	mv	a4,a0
	.loc 3 67 8 discriminator 1
	li	a5,16
	beq	a4,a5,.L20
	.loc 3 68 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L19
.L20:
	.loc 3 80 8
	lbu	a4,-37(s0)
	li	a5,2
	beq	a4,a5,.L21
	.loc 3 81 16
	li	a5,-24576
	addi	a5,a5,-128
	j	.L19
.L21:
	.loc 3 84 5
	lw	a5,-36(s0)
	mv	a0,a5
	call	mbedtls_cipher_free
	.loc 3 86 16
	lw	a5,-36(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_cipher_setup
	sw	a0,-20(s0)
	.loc 3 86 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L22
	.loc 3 87 16
	lw	a5,-20(s0)
	j	.L19
.L22:
	.loc 3 90 16
	lw	a4,-36(s0)
	lw	a2,-48(s0)
	lw	a5,-52(s0)
	snez	a5,a5
	andi	a5,a5,0xff
	slli	a5,a5,24
	srai	a5,a5,24
	mv	a3,a5
	lw	a1,-44(s0)
	mv	a0,a4
	call	mbedtls_cipher_setkey
	sw	a0,-20(s0)
	.loc 3 90 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L23
	.loc 3 94 16
	lw	a5,-20(s0)
	j	.L19
.L23:
	.loc 3 97 12
	li	a5,0
.L19:
	.loc 3 98 1
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
.LFE55:
	.size	mbedtls_nist_kw_setkey, .-mbedtls_nist_kw_setkey
	.section	.text.mbedtls_nist_kw_free,"ax",@progbits
	.align	1
	.globl	mbedtls_nist_kw_free
	.type	mbedtls_nist_kw_free, @function
mbedtls_nist_kw_free:
.LFB56:
	.loc 3 104 1
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
	.loc 3 105 8
	lw	a5,-20(s0)
	beq	a5,zero,.L27
	.loc 3 109 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_cipher_free
	.loc 3 110 5
	li	a1,68
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
	j	.L24
.L27:
	.loc 3 106 9
	nop
.L24:
	.loc 3 111 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE56:
	.size	mbedtls_nist_kw_free, .-mbedtls_nist_kw_free
	.section	.text.calc_a_xor_t,"ax",@progbits
	.align	1
	.type	calc_a_xor_t, @function
calc_a_xor_t:
.LFB57:
	.loc 3 118 1
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
	sw	a1,-48(s0)
	sw	a2,-44(s0)
	.loc 3 119 12
	sw	zero,-20(s0)
	.loc 3 120 12
	sw	zero,-20(s0)
	.loc 3 120 5
	j	.L29
.L32:
	.loc 3 121 10
	lw	a2,-36(s0)
	lw	a3,-20(s0)
	add	a3,a2,a3
	lbu	a1,0(a3)
	.loc 3 121 39
	li	a2,7
	lw	a3,-20(s0)
	sub	a3,a2,a3
	.loc 3 121 44
	slli	a3,a3,3
	.loc 3 121 20
	addi	a2,a3,-32
	blt	a2,zero,.L30
	lw	a3,-44(s0)
	srl	a4,a3,a2
	li	a5,0
	j	.L31
.L30:
	lw	a2,-44(s0)
	slli	a0,a2,1
	li	a2,31
	sub	a2,a2,a3
	sll	a2,a0,a2
	lw	a0,-48(s0)
	srl	a4,a0,a3
	add	a4,a2,a4
	lw	a2,-44(s0)
	srl	a5,a2,a3
.L31:
	.loc 3 121 14
	andi	a2,a4,0xff
	.loc 3 121 10
	lw	a0,-36(s0)
	lw	a3,-20(s0)
	add	a3,a0,a3
	.loc 3 121 14
	xor	a2,a1,a2
	andi	a2,a2,0xff
	sb	a2,0(a3)
	.loc 3 120 33 discriminator 3
	lw	a3,-20(s0)
	addi	a3,a3,1
	sw	a3,-20(s0)
.L29:
	.loc 3 120 19 discriminator 1
	lw	a2,-20(s0)
	li	a3,7
	bleu	a2,a3,.L32
	.loc 3 123 1
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
.LFE57:
	.size	calc_a_xor_t, .-calc_a_xor_t
	.section	.text.mbedtls_nist_kw_wrap,"ax",@progbits
	.align	1
	.globl	mbedtls_nist_kw_wrap
	.type	mbedtls_nist_kw_wrap, @function
mbedtls_nist_kw_wrap:
.LFB58:
	.loc 3 133 1
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
	sw	a0,-116(s0)
	sw	a2,-124(s0)
	sw	a3,-128(s0)
	sw	a4,-132(s0)
	sw	a5,-136(s0)
	sw	a6,-140(s0)
	mv	a5,a1
	sb	a5,-117(s0)
	.loc 3 134 9
	sw	zero,-36(s0)
	.loc 3 135 12
	sw	zero,-56(s0)
	.loc 3 137 18
	sw	zero,-40(s0)
	.loc 3 138 14
	li	a5,0
	li	a6,0
	sw	a5,-48(s0)
	sw	a6,-44(s0)
	.loc 3 142 14
	lw	a5,-136(s0)
	sw	zero,0(a5)
	.loc 3 146 8
	lbu	a5,-117(s0)
	bne	a5,zero,.L34
	.loc 3 147 31
	lw	a5,-128(s0)
	addi	a5,a5,8
	.loc 3 147 12
	lw	a4,-140(s0)
	bgeu	a4,a5,.L35
	.loc 3 148 20
	li	a5,-24576
	addi	a5,a5,-256
	j	.L54
.L35:
	.loc 3 155 12
	lw	a4,-128(s0)
	li	a5,15
	bleu	a4,a5,.L37
	.loc 3 159 20
	lw	a5,-128(s0)
	andi	a5,a5,7
	.loc 3 155 25 discriminator 1
	beq	a5,zero,.L38
.L37:
	.loc 3 160 20
	li	a5,-24576
	addi	a5,a5,-256
	j	.L54
.L38:
	.loc 3 163 9
	li	a2,8
	lui	a5,%hi(NIST_KW_ICV1)
	addi	a1,a5,%lo(NIST_KW_ICV1)
	lw	a0,-132(s0)
	call	memcpy
	.loc 3 164 24
	lw	a5,-132(s0)
	addi	a5,a5,8
	.loc 3 164 9
	lw	a2,-128(s0)
	lw	a1,-124(s0)
	mv	a0,a5
	call	memmove
	j	.L39
.L34:
	.loc 3 166 20
	lw	a5,-128(s0)
	andi	a5,a5,7
	.loc 3 166 12
	beq	a5,zero,.L40
	.loc 3 167 35
	lw	a5,-128(s0)
	andi	a5,a5,7
	.loc 3 167 20
	li	a4,8
	sub	a5,a4,a5
	sw	a5,-40(s0)
.L40:
	.loc 3 170 35
	lw	a4,-128(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	addi	a5,a5,8
	.loc 3 170 12
	lw	a4,-140(s0)
	bgeu	a4,a5,.L41
	.loc 3 171 20
	li	a5,-24576
	addi	a5,a5,-256
	j	.L54
.L41:
	.loc 3 178 12
	lw	a5,-128(s0)
	bne	a5,zero,.L42
	.loc 3 183 20
	li	a5,-24576
	addi	a5,a5,-256
	j	.L54
.L42:
	.loc 3 186 9
	li	a2,4
	lui	a5,%hi(NIST_KW_ICV2)
	addi	a1,a5,%lo(NIST_KW_ICV2)
	lw	a0,-132(s0)
	call	memcpy
	.loc 3 187 153 discriminator 2
	lw	a5,-132(s0)
	addi	s1,a5,4
	.loc 3 187 164 discriminator 2
	lw	a0,-128(s0)
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-68(s0)
	sw	a5,-72(s0)
.LBB9:
.LBB10:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/alignment.h"
	.loc 4 200 33
	lw	a5,-68(s0)
	sw	a5,-76(s0)
	.loc 4 201 12
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
	.loc 4 205 1
	nop
.LBE10:
.LBE9:
	.loc 3 190 23
	lw	a5,-132(s0)
	addi	a5,a5,8
	.loc 3 190 9
	lw	a2,-128(s0)
	lw	a1,-124(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 191 27
	lw	a5,-128(s0)
	addi	a5,a5,8
	lw	a4,-132(s0)
	add	a5,a4,a5
	.loc 3 191 9
	lw	a2,-40(s0)
	li	a1,0
	mv	a0,a5
	call	memset
.L39:
	.loc 3 193 27
	lw	a4,-128(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	.loc 3 193 37
	srli	a5,a5,3
	.loc 3 193 16
	addi	a5,a5,1
	sw	a5,-56(s0)
	.loc 3 195 11
	lw	a5,-56(s0)
	addi	a4,a5,-1
	.loc 3 195 7
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	sw	a5,-60(s0)
	.loc 3 197 8
	lbu	a4,-117(s0)
	li	a5,1
	bne	a4,a5,.L43
	.loc 3 198 9
	lw	a4,-128(s0)
	li	a5,8
	bgtu	a4,a5,.L43
	.loc 3 199 9
	addi	a5,s0,-112
	li	a2,16
	lw	a1,-132(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 200 15
	lw	a5,-116(s0)
	addi	a4,s0,-80
	addi	a1,s0,-112
	lw	a3,-132(s0)
	li	a2,16
	mv	a0,a5
	call	mbedtls_cipher_update
	sw	a0,-36(s0)
	.loc 3 202 12
	lw	a5,-36(s0)
	beq	a5,zero,.L46
	.loc 3 203 13
	j	.L45
.L43:
.LBB11:
	.loc 3 206 24
	lw	a5,-132(s0)
	addi	a5,a5,8
	sw	a5,-52(s0)
	.loc 3 207 24
	lw	a5,-132(s0)
	sw	a5,-64(s0)
	.loc 3 212 12
	lw	a4,-56(s0)
	li	a5,2
	bgtu	a4,a5,.L47
	.loc 3 213 17
	li	a5,-24576
	addi	a5,a5,-256
	sw	a5,-36(s0)
	.loc 3 214 13
	j	.L45
.L47:
	.loc 3 218 16
	li	a4,1
	li	a5,0
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	.loc 3 218 9
	j	.L48
.L51:
	.loc 3 219 13
	addi	a5,s0,-112
	li	a2,8
	lw	a1,-64(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 220 13
	addi	a5,s0,-112
	addi	a5,a5,8
	li	a2,8
	lw	a1,-52(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 222 19
	lw	a5,-116(s0)
	addi	a4,s0,-80
	addi	a3,s0,-96
	addi	a1,s0,-112
	li	a2,16
	mv	a0,a5
	call	mbedtls_cipher_update
	sw	a0,-36(s0)
	.loc 3 224 16
	lw	a5,-36(s0)
	bne	a5,zero,.L55
	.loc 3 228 13
	addi	a5,s0,-96
	li	a2,8
	mv	a1,a5
	lw	a0,-64(s0)
	call	memcpy
	.loc 3 229 13
	lw	a1,-48(s0)
	lw	a2,-44(s0)
	lw	a0,-64(s0)
	call	calc_a_xor_t
	.loc 3 231 13
	addi	a5,s0,-96
	addi	a5,a5,8
	li	a2,8
	mv	a1,a5
	lw	a0,-52(s0)
	call	memcpy
	.loc 3 232 16
	lw	a5,-52(s0)
	addi	a5,a5,8
	sw	a5,-52(s0)
	.loc 3 233 44
	lw	a5,-56(s0)
	slli	a5,a5,3
	.loc 3 233 30
	lw	a4,-132(s0)
	add	a5,a4,a5
	.loc 3 233 16
	lw	a4,-52(s0)
	bltu	a4,a5,.L50
	.loc 3 234 20
	lw	a5,-132(s0)
	addi	a5,a5,8
	sw	a5,-52(s0)
.L50:
	.loc 3 218 30 discriminator 2
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	li	a0,1
	li	a1,0
	add	a4,a2,a0
	mv	a6,a4
	sltu	a6,a6,a2
	add	a5,a3,a1
	add	a3,a6,a5
	mv	a5,a3
	sw	a4,-48(s0)
	sw	a5,-44(s0)
.L48:
	.loc 3 218 23 discriminator 1
	lw	a5,-60(s0)
	mv	s2,a5
	li	s3,0
	lw	a5,-44(s0)
	mv	a4,s3
	bgtu	a5,a4,.L46
	lw	a5,-44(s0)
	mv	a4,s3
	bne	a5,a4,.L51
	lw	a5,-48(s0)
	mv	a4,s2
	bleu	a5,a4,.L51
.L46:
.LBE11:
	.loc 3 239 27
	lw	a5,-56(s0)
	slli	a4,a5,3
	.loc 3 239 14
	lw	a5,-136(s0)
	sw	a4,0(a5)
	j	.L45
.L55:
.LBB12:
	.loc 3 225 17
	nop
.L45:
.LBE12:
	.loc 3 243 8
	lw	a5,-36(s0)
	beq	a5,zero,.L53
	.loc 3 244 9
	lw	a5,-56(s0)
	slli	a5,a5,3
	mv	a2,a5
	li	a1,0
	lw	a0,-132(s0)
	call	memset
.L53:
	.loc 3 246 5
	addi	a5,s0,-112
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 247 5
	addi	a5,s0,-96
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 249 12
	lw	a5,-36(s0)
.L54:
	.loc 3 250 1
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
.LFE58:
	.size	mbedtls_nist_kw_wrap, .-mbedtls_nist_kw_wrap
	.section	.text.unwrap,"ax",@progbits
	.align	1
	.type	unwrap, @function
unwrap:
.LFB59:
	.loc 3 264 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	sw	a4,-100(s0)
	sw	a5,-104(s0)
	.loc 3 265 9
	sw	zero,-20(s0)
	.loc 3 266 24
	lw	a5,-92(s0)
	addi	a4,a5,-1
	.loc 3 266 18
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	sw	a5,-40(s0)
	.loc 3 268 14
	li	a5,0
	li	a6,0
	sw	a5,-32(s0)
	sw	a6,-28(s0)
	.loc 3 271 20
	sw	zero,-36(s0)
	.loc 3 272 14
	lw	a5,-104(s0)
	sw	zero,0(a5)
	.loc 3 274 8
	lw	a4,-92(s0)
	li	a5,2
	bgtu	a4,a5,.L57
	.loc 3 275 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L66
.L57:
	.loc 3 278 5
	li	a2,8
	lw	a1,-88(s0)
	lw	a0,-96(s0)
	call	memcpy
	.loc 3 279 27
	lw	a5,-88(s0)
	addi	a4,a5,8
	.loc 3 279 44
	lw	a5,-92(s0)
	addi	a5,a5,-1
	.loc 3 279 5
	slli	a5,a5,3
	mv	a2,a5
	mv	a1,a4
	lw	a0,-100(s0)
	call	memmove
	.loc 3 280 30
	lw	a5,-92(s0)
	addi	a5,a5,-2
	.loc 3 280 35
	slli	a5,a5,3
	.loc 3 280 7
	lw	a4,-100(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 3 283 12
	lw	a5,-40(s0)
	sw	a5,-32(s0)
	sw	zero,-28(s0)
	.loc 3 283 5
	j	.L59
.L64:
	.loc 3 284 9
	lw	a1,-32(s0)
	lw	a2,-28(s0)
	lw	a0,-96(s0)
	call	calc_a_xor_t
	.loc 3 286 9
	addi	a5,s0,-76
	li	a2,8
	lw	a1,-96(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 287 9
	addi	a5,s0,-76
	addi	a5,a5,8
	li	a2,8
	lw	a1,-36(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 289 15
	lw	a5,-84(s0)
	addi	a4,s0,-44
	addi	a3,s0,-60
	addi	a1,s0,-76
	li	a2,16
	mv	a0,a5
	call	mbedtls_cipher_update
	sw	a0,-20(s0)
	.loc 3 291 12
	lw	a5,-20(s0)
	bne	a5,zero,.L67
	.loc 3 295 9
	addi	a5,s0,-60
	li	a2,8
	mv	a1,a5
	lw	a0,-96(s0)
	call	memcpy
	.loc 3 298 9
	addi	a5,s0,-60
	addi	a5,a5,8
	li	a2,8
	mv	a1,a5
	lw	a0,-36(s0)
	call	memcpy
	.loc 3 300 12
	lw	a4,-36(s0)
	lw	a5,-100(s0)
	bne	a4,a5,.L62
	.loc 3 301 38
	lw	a5,-92(s0)
	addi	a5,a5,-2
	.loc 3 301 43
	slli	a5,a5,3
	.loc 3 301 15
	lw	a4,-100(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	j	.L63
.L62:
	.loc 3 303 15
	lw	a5,-36(s0)
	addi	a5,a5,-8
	sw	a5,-36(s0)
.L63:
	.loc 3 283 26 discriminator 2
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	li	a0,-1
	li	a1,-1
	add	a4,a2,a0
	mv	a6,a4
	sltu	a6,a6,a2
	add	a5,a3,a1
	add	a3,a6,a5
	mv	a5,a3
	sw	a4,-32(s0)
	sw	a5,-28(s0)
.L59:
	.loc 3 283 19 discriminator 1
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	or	a5,a5,a4
	bne	a5,zero,.L64
	.loc 3 307 28
	lw	a5,-92(s0)
	addi	a5,a5,-1
	.loc 3 307 33
	slli	a4,a5,3
	.loc 3 307 14
	lw	a5,-104(s0)
	sw	a4,0(a5)
	j	.L61
.L67:
	.loc 3 292 13
	nop
.L61:
	.loc 3 310 8
	lw	a5,-20(s0)
	beq	a5,zero,.L65
	.loc 3 311 39
	lw	a5,-92(s0)
	addi	a5,a5,-1
	.loc 3 311 9
	slli	a5,a5,3
	mv	a2,a5
	li	a1,0
	lw	a0,-100(s0)
	call	memset
.L65:
	.loc 3 313 5
	addi	a5,s0,-76
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 314 5
	addi	a5,s0,-60
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 316 12
	lw	a5,-20(s0)
.L66:
	.loc 3 317 1
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
.LFE59:
	.size	unwrap, .-unwrap
	.section	.text.mbedtls_nist_kw_unwrap,"ax",@progbits
	.align	1
	.globl	mbedtls_nist_kw_unwrap
	.type	mbedtls_nist_kw_unwrap, @function
mbedtls_nist_kw_unwrap:
.LFB60:
	.loc 3 327 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	sw	a4,-100(s0)
	sw	a5,-104(s0)
	sw	a6,-108(s0)
	mv	a5,a1
	sb	a5,-85(s0)
	.loc 3 328 9
	sw	zero,-20(s0)
	.loc 3 333 14
	lw	a5,-104(s0)
	sw	zero,0(a5)
	.loc 3 334 27
	lw	a5,-96(s0)
	addi	a5,a5,-8
	.loc 3 334 8
	lw	a4,-108(s0)
	bgeu	a4,a5,.L69
	.loc 3 335 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L88
.L69:
	.loc 3 338 8
	lbu	a5,-85(s0)
	bne	a5,zero,.L71
	.loc 3 343 12
	lw	a4,-96(s0)
	li	a5,23
	bleu	a4,a5,.L72
	.loc 3 347 20
	lw	a5,-96(s0)
	andi	a5,a5,7
	.loc 3 343 25 discriminator 1
	beq	a5,zero,.L73
.L72:
	.loc 3 348 20
	li	a5,-24576
	addi	a5,a5,-256
	j	.L88
.L73:
	.loc 3 351 15
	lw	a5,-96(s0)
	srli	a2,a5,3
	addi	a3,s0,-52
	lw	a5,-104(s0)
	lw	a4,-100(s0)
	lw	a1,-92(s0)
	lw	a0,-84(s0)
	call	unwrap
	sw	a0,-20(s0)
	.loc 3 353 12
	lw	a5,-20(s0)
	bne	a5,zero,.L89
	.loc 3 358 16
	addi	a5,s0,-52
	li	a2,8
	mv	a1,a5
	lui	a5,%hi(NIST_KW_ICV1)
	addi	a0,a5,%lo(NIST_KW_ICV1)
	call	mbedtls_ct_memcmp
	mv	a5,a0
	.loc 3 358 14 discriminator 1
	sw	a5,-56(s0)
	.loc 3 360 18
	lw	a5,-56(s0)
	.loc 3 360 12
	beq	a5,zero,.L75
	.loc 3 361 17
	li	a5,-24576
	addi	a5,a5,-768
	sw	a5,-20(s0)
	.loc 3 362 13
	j	.L75
.L71:
	.loc 3 365 15
	lbu	a4,-85(s0)
	li	a5,1
	bne	a4,a5,.L76
.LBB13:
	.loc 3 366 16
	sw	zero,-24(s0)
	.loc 3 372 12
	lw	a4,-96(s0)
	li	a5,15
	bleu	a4,a5,.L77
	.loc 3 376 20
	lw	a5,-96(s0)
	andi	a5,a5,7
	.loc 3 372 28 discriminator 1
	beq	a5,zero,.L78
.L77:
	.loc 3 377 20
	li	a5,-24576
	addi	a5,a5,-256
	j	.L88
.L78:
	.loc 3 380 12
	lw	a4,-96(s0)
	li	a5,16
	bne	a4,a5,.L79
.LBB14:
	.loc 3 382 19
	lw	a5,-84(s0)
	addi	a4,s0,-44
	addi	a3,s0,-80
	li	a2,16
	lw	a1,-92(s0)
	mv	a0,a5
	call	mbedtls_cipher_update
	sw	a0,-20(s0)
	.loc 3 384 16
	lw	a5,-20(s0)
	bne	a5,zero,.L90
	.loc 3 388 13
	addi	a4,s0,-80
	addi	a5,s0,-52
	li	a2,8
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 3 389 13
	addi	a5,s0,-80
	addi	a5,a5,8
	li	a2,8
	mv	a1,a5
	lw	a0,-100(s0)
	call	memcpy
	.loc 3 390 13
	addi	a5,s0,-80
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 391 22
	lw	a5,-104(s0)
	li	a4,8
	sw	a4,0(a5)
.LBE14:
	j	.L82
.L79:
	.loc 3 394 19
	lw	a5,-96(s0)
	srli	a2,a5,3
	addi	a3,s0,-52
	lw	a5,-104(s0)
	lw	a4,-100(s0)
	lw	a1,-92(s0)
	lw	a0,-84(s0)
	call	unwrap
	sw	a0,-20(s0)
	.loc 3 396 16
	lw	a5,-20(s0)
	bne	a5,zero,.L91
.L82:
	.loc 3 402 16
	addi	a5,s0,-52
	li	a2,4
	mv	a1,a5
	lui	a5,%hi(NIST_KW_ICV2)
	addi	a0,a5,%lo(NIST_KW_ICV2)
	call	mbedtls_ct_memcmp
	mv	a5,a0
	.loc 3 402 14 discriminator 1
	sw	a5,-56(s0)
	.loc 3 404 18
	lw	a5,-56(s0)
	.loc 3 404 12
	beq	a5,zero,.L83
	.loc 3 405 17
	li	a5,-24576
	addi	a5,a5,-768
	sw	a5,-20(s0)
.L83:
	.loc 3 408 87
	addi	a5,s0,-52
	addi	a5,a5,4
	sw	a5,-32(s0)
.LBB15:
.LBB16:
	.loc 4 174 33
	lw	a5,-32(s0)
	sw	a5,-36(s0)
	.loc 4 175 7
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
	.loc 4 179 12
	lw	a5,-40(s0)
.LBE16:
.LBE15:
	.loc 3 408 67 discriminator 1
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	sw	a5,-28(s0)
	.loc 3 415 29
	lw	a4,-96(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	.loc 3 415 16
	addi	a5,a5,-8
	sw	a5,-24(s0)
	.loc 3 416 15
	li	a1,7
	lw	a0,-24(s0)
	call	mbedtls_ct_uint_gt
	mv	a4,a0
	.loc 3 416 15 is_stmt 0 discriminator 1
	lw	a2,-20(s0)
	li	a5,-24576
	addi	a1,a5,-768
	mv	a0,a4
	call	mbedtls_ct_error_if
	sw	a0,-20(s0)
	.loc 3 418 16 is_stmt 1
	lw	a5,-24(s0)
	andi	a5,a5,7
	sw	a5,-24(s0)
	.loc 3 421 23
	sw	zero,-64(s0)
	sw	zero,-60(s0)
	.loc 3 423 21
	lw	a5,-104(s0)
	lw	a5,0(a5)
	.loc 3 423 20
	addi	a5,a5,-8
	.loc 3 423 13
	lw	a4,-100(s0)
	add	a0,a4,a5
	.loc 3 422 16
	li	a4,8
	lw	a5,-24(s0)
	sub	a3,a4,a5
	addi	a5,s0,-64
	li	a4,0
	li	a2,8
	mv	a1,a5
	call	mbedtls_ct_memcmp_partial
	mv	a5,a0
	.loc 3 422 14 discriminator 1
	sw	a5,-56(s0)
	.loc 3 426 18
	lw	a5,-56(s0)
	.loc 3 426 12
	beq	a5,zero,.L85
	.loc 3 427 17
	li	a5,-24576
	addi	a5,a5,-768
	sw	a5,-20(s0)
.L85:
	.loc 3 430 12
	lw	a5,-20(s0)
	bne	a5,zero,.L92
	.loc 3 433 23
	lw	a4,-100(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 3 433 9
	lw	a2,-24(s0)
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 3 434 18
	lw	a5,-104(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
.LBE13:
	j	.L75
.L76:
	.loc 3 436 13
	li	a5,-24576
	addi	a5,a5,-128
	sw	a5,-20(s0)
	.loc 3 437 9
	j	.L75
.L89:
	.loc 3 354 13
	nop
	j	.L75
.L90:
.LBB18:
.LBB17:
	.loc 3 385 17 discriminator 1
	nop
	j	.L75
.L91:
.LBE17:
	.loc 3 397 17
	nop
	j	.L75
.L92:
	.loc 3 431 13
	nop
.L75:
.LBE18:
	.loc 3 441 8
	lw	a5,-20(s0)
	beq	a5,zero,.L87
	.loc 3 442 9
	lw	a5,-104(s0)
	lw	a5,0(a5)
	mv	a2,a5
	li	a1,0
	lw	a0,-100(s0)
	call	memset
	.loc 3 443 18
	lw	a5,-104(s0)
	sw	zero,0(a5)
.L87:
	.loc 3 446 5
	addi	a5,s0,-56
	li	a1,4
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 447 5
	addi	a5,s0,-52
	li	a1,8
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 449 12
	lw	a5,-20(s0)
.L88:
	.loc 3 450 1
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
.LFE60:
	.size	mbedtls_nist_kw_unwrap, .-mbedtls_nist_kw_unwrap
	.section	.rodata.key_len,"a"
	.align	2
	.type	key_len, @object
	.size	key_len, 12
key_len:
	.word	16
	.word	24
	.word	32
	.section	.rodata.kw_key,"a"
	.align	2
	.type	kw_key, @object
	.size	kw_key, 96
kw_key:
	.base64	"dXXaOpNgfMK/2M7Hqt/ZpgA="
	.zero	15
	.base64	"LYUmCB0C+1uF9prChuzVfUDfXfNJR0TTAA=="
	.zero	7
	.base64	"ESrUG0hWxyVKmEjTD914M1sDmkiolixNHLeOq9Xa14g="
	.section	.rodata.kw_msg,"a"
	.align	2
	.type	kw_msg, @object
	.size	kw_msg, 120
kw_msg:
	.base64	"QhNtPDhKPurJWgZv0o/tPwA="
	.zero	23
	.base64	"lcEb9TU6/tuY/dbIym/bbaVLdLSZD9xFwJ0Vj1HOYp3irybjJQ5rTA=="
	.base64	"GyC/GZCwZdeY4bMiZK1QqHR0kroJoE3RAA=="
	.zero	15
	.section	.rodata.kw_msg_len,"a"
	.align	2
	.type	kw_msg_len, @object
	.size	kw_msg_len, 12
kw_msg_len:
	.word	16
	.word	40
	.word	24
	.section	.rodata.kw_out_len,"a"
	.align	2
	.type	kw_out_len, @object
	.size	kw_out_len, 12
kw_out_len:
	.word	24
	.word	48
	.word	32
	.section	.rodata.kw_res,"a"
	.align	2
	.type	kw_res, @object
	.size	kw_res, 144
kw_res:
	.base64	"Ax9r1+YeZD32hZSBb2TKo/Vvq+olSPX7AA=="
	.zero	23
	.base64	"RDxvFQmDcZE+XIFMoaBC7GgvexNtJDpNbEJvxpcVY+ihSlWOCWQWGb8D/K+Qsfwt"
	.base64	"uoolmkcbeH3V1UDsJdQ9hyAP2txtHwXZFlhPqfbL9RIA"
	.zero	15
	.section	.rodata.kwp_key,"a"
	.align	2
	.type	kwp_key, @object
	.size	kwp_key, 96
kwp_key:
	.base64	"eGXiDzwhZZq0aQtinN88xAA="
	.zero	15
	.base64	"9fiWo70vSpgj7xYrALgF194epGYmlqJYAA=="
	.zero	7
	.base64	"ldonAMpv2aUlVO4qjfE4b1uUoaYO2KSu9gqNYatfIlo="
	.section	.rodata.kwp_msg,"a"
	.align	2
	.type	kwp_msg, @object
	.size	kwp_msg, 93
kwp_msg:
	.base64	"vWhD1CA3jciWAA=="
	.zero	21
	.base64	"bM3VhRhAl+vVw68+R9AsGRR7TZlflkNmkVZ1jBMWjw=="
	.string	"\321"
	.zero	29
	.section	.rodata.kwp_msg_len,"a"
	.align	2
	.type	kwp_msg_len, @object
	.size	kwp_msg_len, 12
kwp_msg_len:
	.word	9
	.word	31
	.word	1
	.section	.rodata.kwp_res,"a"
	.align	2
	.type	kwp_res, @object
	.size	kwp_res, 144
kwp_res:
	.base64	"QeypVtSqBH61z07+ZZZh5022+MVk4jUAAA=="
	.zero	23
	.base64	"TpvCvLxsHhPTNbzA93NqiPqHU2YVu45ji8yBZoRoF5Bnz6mKnQ4zJgA="
	.zero	7
	.base64	"Brp65vMkjP3PJnUH+gAbxAA="
	.zero	31
	.section	.rodata.kwp_out_len,"a"
	.align	2
	.type	kwp_out_len, @object
	.size	kwp_out_len, 12
kwp_out_len:
	.word	24
	.word	40
	.word	16
	.section	.rodata
	.align	2
.LC0:
	.string	"  KW-AES-%u "
	.align	2
.LC1:
	.string	"  KW: setup failed "
	.align	2
.LC2:
	.string	"failed. "
	.align	2
.LC3:
	.string	"failed\n"
	.align	2
.LC4:
	.string	" passed\n"
	.align	2
.LC5:
	.string	"  KWP-AES-%u "
	.align	2
.LC6:
	.string	"  KWP: setup failed "
	.align	2
.LC7:
	.string	"\n"
	.section	.text.mbedtls_nist_kw_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_nist_kw_self_test
	.type	mbedtls_nist_kw_self_test, @function
mbedtls_nist_kw_self_test:
.LFB61:
	.loc 3 585 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	a0,-148(s0)
	.loc 3 590 9
	sw	zero,-24(s0)
	.loc 3 591 5
	addi	a5,s0,-92
	mv	a0,a5
	call	mbedtls_nist_kw_init
.LBB19:
	.loc 3 599 16
	sw	zero,-20(s0)
	.loc 3 599 9
	j	.L94
.L108:
	.loc 3 600 16
	lw	a5,-148(s0)
	beq	a5,zero,.L95
	.loc 3 601 62
	lui	a5,%hi(key_len)
	addi	a4,a5,%lo(key_len)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 3 601 17
	slli	a5,a5,3
	mv	a1,a5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
.L95:
	.loc 3 605 48
	lw	a5,-20(s0)
	slli	a4,a5,5
	lui	a5,%hi(kw_key)
	addi	a5,a5,%lo(kw_key)
	add	a2,a4,a5
	.loc 3 605 60
	lui	a5,%hi(key_len)
	addi	a4,a5,%lo(key_len)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 3 604 19
	slli	a3,a5,3
	addi	a5,s0,-92
	li	a4,1
	li	a1,2
	mv	a0,a5
	call	mbedtls_nist_kw_setkey
	sw	a0,-24(s0)
	.loc 3 606 16
	lw	a5,-24(s0)
	beq	a5,zero,.L96
	.loc 3 607 20
	lw	a5,-148(s0)
	beq	a5,zero,.L125
	.loc 3 608 21
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	.loc 3 611 17
	j	.L125
.L96:
	.loc 3 614 72
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,3
	lui	a4,%hi(kw_msg)
	addi	a4,a4,%lo(kw_msg)
	add	a2,a5,a4
	.loc 3 615 50
	lui	a5,%hi(kw_msg_len)
	addi	a4,a5,%lo(kw_msg_len)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 3 614 19
	addi	a5,s0,-144
	addi	a4,s0,-140
	addi	a0,s0,-92
	li	a6,48
	li	a1,0
	call	mbedtls_nist_kw_wrap
	sw	a0,-24(s0)
	.loc 3 616 16
	lw	a5,-24(s0)
	bne	a5,zero,.L99
	.loc 3 616 39 discriminator 1
	lui	a5,%hi(kw_out_len)
	addi	a4,a5,%lo(kw_out_len)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 3 616 43 discriminator 1
	lw	a5,-144(s0)
	.loc 3 616 26 discriminator 1
	bne	a4,a5,.L99
	.loc 3 617 35
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,4
	lui	a4,%hi(kw_res)
	addi	a4,a4,%lo(kw_res)
	add	a3,a5,a4
	.loc 3 617 50
	lui	a5,%hi(kw_out_len)
	addi	a4,a5,%lo(kw_out_len)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 3 617 17
	addi	a5,s0,-140
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 3 616 51 discriminator 2
	beq	a5,zero,.L100
.L99:
	.loc 3 618 20
	lw	a5,-148(s0)
	beq	a5,zero,.L101
	.loc 3 619 21
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L101:
	.loc 3 622 21
	li	a5,1
	sw	a5,-24(s0)
	.loc 3 623 17
	j	.L98
.L100:
	.loc 3 627 53
	lw	a5,-20(s0)
	slli	a4,a5,5
	lui	a5,%hi(kw_key)
	addi	a5,a5,%lo(kw_key)
	add	a2,a4,a5
	.loc 3 627 65
	lui	a5,%hi(key_len)
	addi	a4,a5,%lo(key_len)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 3 626 24
	slli	a3,a5,3
	addi	a5,s0,-92
	li	a4,0
	li	a1,2
	mv	a0,a5
	call	mbedtls_nist_kw_setkey
	sw	a0,-24(s0)
	.loc 3 626 16 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L102
	.loc 3 629 20
	lw	a5,-148(s0)
	beq	a5,zero,.L126
	.loc 3 630 21
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	.loc 3 633 17
	j	.L126
.L102:
	.loc 3 636 19
	lw	a3,-144(s0)
	addi	a5,s0,-144
	addi	a4,s0,-140
	addi	a2,s0,-140
	addi	a0,s0,-92
	li	a6,48
	li	a1,0
	call	mbedtls_nist_kw_unwrap
	sw	a0,-24(s0)
	.loc 3 639 16
	lw	a5,-24(s0)
	bne	a5,zero,.L104
	.loc 3 639 47 discriminator 1
	lui	a5,%hi(kw_msg_len)
	addi	a4,a5,%lo(kw_msg_len)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 3 639 34 discriminator 1
	lw	a5,-144(s0)
	.loc 3 639 26 discriminator 1
	bne	a4,a5,.L104
	.loc 3 640 35
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,3
	lui	a4,%hi(kw_msg)
	addi	a4,a4,%lo(kw_msg)
	add	a3,a5,a4
	.loc 3 640 50
	lui	a5,%hi(kw_msg_len)
	addi	a4,a5,%lo(kw_msg_len)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 3 640 17
	addi	a5,s0,-140
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 3 639 51 discriminator 2
	beq	a5,zero,.L105
.L104:
	.loc 3 641 20
	lw	a5,-148(s0)
	beq	a5,zero,.L106
	.loc 3 642 21
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
.L106:
	.loc 3 645 21
	li	a5,1
	sw	a5,-24(s0)
	.loc 3 646 17
	j	.L98
.L105:
	.loc 3 649 16
	lw	a5,-148(s0)
	beq	a5,zero,.L107
	.loc 3 650 17
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.L107:
	.loc 3 599 37 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L94:
	.loc 3 599 23 discriminator 1
	lui	a5,%hi(num_tests.1)
	lw	a5,%lo(num_tests.1)(a5)
	lw	a4,-20(s0)
	blt	a4,a5,.L108
.LBE19:
.LBB20:
	.loc 3 661 16
	sw	zero,-20(s0)
	.loc 3 661 9
	j	.L109
.L122:
	.loc 3 662 18
	li	a5,48
	sw	a5,-144(s0)
	.loc 3 663 16
	lw	a5,-148(s0)
	beq	a5,zero,.L110
	.loc 3 664 63
	lui	a5,%hi(key_len)
	addi	a4,a5,%lo(key_len)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 3 664 17
	slli	a5,a5,3
	mv	a1,a5
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	printf
.L110:
	.loc 3 667 78
	lw	a5,-20(s0)
	slli	a4,a5,5
	lui	a5,%hi(kwp_key)
	addi	a5,a5,%lo(kwp_key)
	add	a2,a4,a5
	.loc 3 668 49
	lui	a5,%hi(key_len)
	addi	a4,a5,%lo(key_len)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 3 667 19
	slli	a3,a5,3
	addi	a5,s0,-92
	li	a4,1
	li	a1,2
	mv	a0,a5
	call	mbedtls_nist_kw_setkey
	sw	a0,-24(s0)
	.loc 3 669 16
	lw	a5,-24(s0)
	beq	a5,zero,.L111
	.loc 3 670 20
	lw	a5,-148(s0)
	beq	a5,zero,.L127
	.loc 3 671 21
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
	.loc 3 674 17
	j	.L127
.L111:
	.loc 3 676 74
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,5
	sub	a5,a5,a4
	lui	a4,%hi(kwp_msg)
	addi	a4,a4,%lo(kwp_msg)
	add	a2,a5,a4
	.loc 3 677 51
	lui	a5,%hi(kwp_msg_len)
	addi	a4,a5,%lo(kwp_msg_len)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 3 676 19
	addi	a5,s0,-144
	addi	a4,s0,-140
	addi	a0,s0,-92
	li	a6,48
	li	a1,1
	call	mbedtls_nist_kw_wrap
	sw	a0,-24(s0)
	.loc 3 679 16
	lw	a5,-24(s0)
	bne	a5,zero,.L113
	.loc 3 679 40 discriminator 1
	lui	a5,%hi(kwp_out_len)
	addi	a4,a5,%lo(kwp_out_len)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 3 679 44 discriminator 1
	lw	a5,-144(s0)
	.loc 3 679 26 discriminator 1
	bne	a4,a5,.L113
	.loc 3 680 36
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,4
	lui	a4,%hi(kwp_res)
	addi	a4,a4,%lo(kwp_res)
	add	a3,a5,a4
	.loc 3 680 52
	lui	a5,%hi(kwp_out_len)
	addi	a4,a5,%lo(kwp_out_len)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 3 680 17
	addi	a5,s0,-140
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 3 679 52 discriminator 2
	beq	a5,zero,.L114
.L113:
	.loc 3 681 20
	lw	a5,-148(s0)
	beq	a5,zero,.L115
	.loc 3 682 21
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L115:
	.loc 3 685 21
	li	a5,1
	sw	a5,-24(s0)
	.loc 3 686 17
	j	.L98
.L114:
	.loc 3 690 54
	lw	a5,-20(s0)
	slli	a4,a5,5
	lui	a5,%hi(kwp_key)
	addi	a5,a5,%lo(kwp_key)
	add	a2,a4,a5
	.loc 3 690 66
	lui	a5,%hi(key_len)
	addi	a4,a5,%lo(key_len)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 3 689 24
	slli	a3,a5,3
	addi	a5,s0,-92
	li	a4,0
	li	a1,2
	mv	a0,a5
	call	mbedtls_nist_kw_setkey
	sw	a0,-24(s0)
	.loc 3 689 16 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L116
	.loc 3 692 20
	lw	a5,-148(s0)
	beq	a5,zero,.L128
	.loc 3 693 21
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
	.loc 3 696 17
	j	.L128
.L116:
	.loc 3 699 19
	lw	a3,-144(s0)
	addi	a5,s0,-144
	addi	a4,s0,-140
	addi	a2,s0,-140
	addi	a0,s0,-92
	li	a6,48
	li	a1,1
	call	mbedtls_nist_kw_unwrap
	sw	a0,-24(s0)
	.loc 3 702 16
	lw	a5,-24(s0)
	bne	a5,zero,.L118
	.loc 3 702 48 discriminator 1
	lui	a5,%hi(kwp_msg_len)
	addi	a4,a5,%lo(kwp_msg_len)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 3 702 34 discriminator 1
	lw	a5,-144(s0)
	.loc 3 702 26 discriminator 1
	bne	a4,a5,.L118
	.loc 3 703 36
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,5
	sub	a5,a5,a4
	lui	a4,%hi(kwp_msg)
	addi	a4,a4,%lo(kwp_msg)
	add	a3,a5,a4
	.loc 3 703 52
	lui	a5,%hi(kwp_msg_len)
	addi	a4,a5,%lo(kwp_msg_len)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 3 703 17
	addi	a5,s0,-140
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 3 702 52 discriminator 2
	beq	a5,zero,.L119
.L118:
	.loc 3 704 20
	lw	a5,-148(s0)
	beq	a5,zero,.L120
	.loc 3 705 21
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L120:
	.loc 3 708 21
	li	a5,1
	sw	a5,-24(s0)
	.loc 3 709 17
	j	.L98
.L119:
	.loc 3 712 16
	lw	a5,-148(s0)
	beq	a5,zero,.L121
	.loc 3 713 17
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.L121:
	.loc 3 661 37 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L109:
	.loc 3 661 23 discriminator 1
	lui	a5,%hi(num_tests.0)
	lw	a5,%lo(num_tests.0)(a5)
	lw	a4,-20(s0)
	blt	a4,a5,.L122
.LBE20:
	.loc 3 717 1
	j	.L98
.L125:
.LBB21:
	.loc 3 611 17
	nop
	j	.L98
.L126:
	.loc 3 633 17
	nop
	j	.L98
.L127:
.LBE21:
.LBB22:
	.loc 3 674 17
	nop
	j	.L98
.L128:
	.loc 3 696 17
	nop
.L98:
.LBE22:
	.loc 3 718 5
	addi	a5,s0,-92
	mv	a0,a5
	call	mbedtls_nist_kw_free
	.loc 3 720 8
	lw	a5,-148(s0)
	beq	a5,zero,.L123
	.loc 3 721 9
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
.L123:
	.loc 3 724 12
	lw	a5,-24(s0)
	.loc 3 725 1
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
.LFE61:
	.size	mbedtls_nist_kw_self_test, .-mbedtls_nist_kw_self_test
	.section	.srodata.num_tests.1,"a"
	.align	2
	.type	num_tests.1, @object
	.size	num_tests.1, 4
num_tests.1:
	.word	3
	.section	.srodata.num_tests.0,"a"
	.align	2
	.type	num_tests.0, @object
	.size	num_tests.0, 4
num_tests.0:
	.word	3
	.text
.Letext0:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/nist_kw.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/constant_time_internal.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/constant_time.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf47
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x26
	.4byte	.LASF138
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL5
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	0x32
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x27
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	0x68
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	0x74
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x5
	.byte	0xe5
	.byte	0x16
	.4byte	0x74
	.uleb128 0x4
	.4byte	0x80
	.uleb128 0xb
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x6
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x4
	.4byte	0xa4
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x6
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x6
	.byte	0x37
	.byte	0x20
	.4byte	0x61
	.uleb128 0x28
	.byte	0x4
	.uleb128 0x17
	.4byte	0xcd
	.uleb128 0x9
	.4byte	0x32
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x4
	.4byte	0xd9
	.uleb128 0x9
	.4byte	0xe0
	.uleb128 0x17
	.4byte	0xe5
	.uleb128 0x9
	.4byte	0xf9
	.uleb128 0x17
	.4byte	0xef
	.uleb128 0x29
	.uleb128 0x1d
	.byte	0x4
	.byte	0x4
	.byte	0x59
	.4byte	0x10e
	.uleb128 0x2a
	.string	"x"
	.byte	0x4
	.byte	0x5a
	.byte	0xe
	.4byte	0xb5
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0x5b
	.byte	0x1b
	.4byte	0xfa
	.uleb128 0x15
	.byte	0x7
	.4byte	0x32
	.byte	0x1
	.byte	0x42
	.4byte	0x157
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4b
	.byte	0x3
	.4byte	0x11a
	.uleb128 0x4
	.4byte	0x157
	.uleb128 0x15
	.byte	0x7
	.4byte	0x32
	.byte	0x1
	.byte	0xac
	.4byte	0x1c9
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x1
	.byte	0xbb
	.byte	0x3
	.4byte	0x168
	.uleb128 0x4
	.4byte	0x1c9
	.uleb128 0x15
	.byte	0x5
	.4byte	0x2b
	.byte	0x1
	.byte	0xc7
	.4byte	0x1f9
	.uleb128 0x2b
	.4byte	.LASF43
	.sleb128 -1
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x1
	.byte	0xcb
	.byte	0x3
	.4byte	0x1da
	.uleb128 0x4
	.4byte	0x1f9
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x1
	.byte	0xf9
	.byte	0x27
	.4byte	0x216
	.uleb128 0x2c
	.4byte	.LASF47
	.uleb128 0x1e
	.4byte	.LASF56
	.byte	0x8
	.2byte	0x10a
	.4byte	0x290
	.uleb128 0xc
	.4byte	.LASF48
	.2byte	0x10c
	.byte	0x11
	.4byte	0xe5
	.byte	0
	.uleb128 0x12
	.4byte	.LASF49
	.2byte	0x10f
	.4byte	0x74
	.byte	0x5
	.byte	0x20
	.uleb128 0x12
	.4byte	.LASF50
	.2byte	0x115
	.4byte	0x74
	.byte	0x3
	.byte	0x25
	.uleb128 0x12
	.4byte	.LASF51
	.2byte	0x11b
	.4byte	0x74
	.byte	0x4
	.byte	0x28
	.uleb128 0x12
	.4byte	.LASF52
	.2byte	0x120
	.4byte	0x74
	.byte	0x4
	.byte	0x2c
	.uleb128 0x12
	.4byte	.LASF53
	.2byte	0x128
	.4byte	0x74
	.byte	0x8
	.byte	0x30
	.uleb128 0x12
	.4byte	.LASF54
	.2byte	0x12e
	.4byte	0x74
	.byte	0x2
	.byte	0x38
	.uleb128 0x12
	.4byte	.LASF55
	.2byte	0x131
	.4byte	0x74
	.byte	0x5
	.byte	0x3a
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF56
	.2byte	0x133
	.4byte	0x21b
	.uleb128 0x4
	.4byte	0x290
	.uleb128 0x1e
	.4byte	.LASF57
	.byte	0x44
	.2byte	0x13c
	.4byte	0x33c
	.uleb128 0xc
	.4byte	.LASF58
	.2byte	0x13e
	.byte	0x22
	.4byte	0x33c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.2byte	0x141
	.byte	0x9
	.4byte	0x68
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF59
	.2byte	0x146
	.byte	0x19
	.4byte	0x1f9
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF60
	.2byte	0x14c
	.byte	0xb
	.4byte	0x356
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF61
	.2byte	0x152
	.byte	0xa
	.4byte	0x37e
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF62
	.2byte	0x158
	.byte	0x13
	.4byte	0x383
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF63
	.2byte	0x15b
	.byte	0xc
	.4byte	0x80
	.byte	0x24
	.uleb128 0x2d
	.string	"iv"
	.byte	0x1
	.2byte	0x15f
	.byte	0x13
	.4byte	0x383
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF50
	.2byte	0x162
	.byte	0xc
	.4byte	0x80
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF64
	.2byte	0x165
	.byte	0xb
	.4byte	0xcd
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF65
	.2byte	0x169
	.byte	0x1d
	.4byte	0x393
	.byte	0x40
	.byte	0
	.uleb128 0x9
	.4byte	0x29b
	.uleb128 0x2e
	.4byte	0x356
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x80
	.uleb128 0x1
	.4byte	0x80
	.byte	0
	.uleb128 0x9
	.4byte	0x341
	.uleb128 0x2f
	.4byte	0x68
	.4byte	0x379
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x80
	.uleb128 0x1
	.4byte	0x379
	.uleb128 0x1
	.4byte	0x379
	.byte	0
	.uleb128 0x9
	.4byte	0x80
	.uleb128 0x9
	.4byte	0x35b
	.uleb128 0xa
	.4byte	0x32
	.4byte	0x393
	.uleb128 0x5
	.4byte	0x74
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	0x20a
	.uleb128 0x1f
	.4byte	.LASF57
	.2byte	0x177
	.4byte	0x2a0
	.uleb128 0x15
	.byte	0x7
	.4byte	0x32
	.byte	0x7
	.byte	0x23
	.4byte	0x3bc
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0x7
	.byte	0x26
	.byte	0x3
	.4byte	0x3a3
	.uleb128 0x1d
	.byte	0x44
	.byte	0x7
	.byte	0x33
	.4byte	0x3de
	.uleb128 0x30
	.4byte	.LASF64
	.byte	0x7
	.byte	0x34
	.byte	0x1e
	.4byte	0x398
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF69
	.byte	0x7
	.byte	0x35
	.byte	0x3
	.4byte	0x3c8
	.uleb128 0x6
	.4byte	.LASF70
	.byte	0x8
	.byte	0x50
	.byte	0x12
	.4byte	0xb5
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0x8
	.byte	0x51
	.byte	0x12
	.4byte	0xb5
	.uleb128 0x4
	.4byte	0x3f6
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0x8
	.byte	0x52
	.byte	0x11
	.4byte	0x98
	.uleb128 0xa
	.4byte	0x39
	.4byte	0x423
	.uleb128 0x5
	.4byte	0x74
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	0x413
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x27
	.byte	0x1c
	.4byte	0x423
	.uleb128 0x5
	.byte	0x3
	.4byte	NIST_KW_ICV1
	.uleb128 0xa
	.4byte	0x39
	.4byte	0x449
	.uleb128 0x5
	.4byte	0x74
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	0x439
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x29
	.byte	0x1c
	.4byte	0x449
	.uleb128 0x5
	.byte	0x3
	.4byte	NIST_KW_ICV2
	.uleb128 0xa
	.4byte	0x7b
	.4byte	0x46f
	.uleb128 0x5
	.4byte	0x74
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	0x45f
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x3
	.2byte	0x1cc
	.byte	0x1b
	.4byte	0x46f
	.uleb128 0x5
	.byte	0x3
	.4byte	key_len
	.uleb128 0xa
	.4byte	0x39
	.4byte	0x49d
	.uleb128 0x5
	.4byte	0x74
	.byte	0x2
	.uleb128 0x5
	.4byte	0x74
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	0x487
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x3
	.2byte	0x1d4
	.byte	0x1c
	.4byte	0x49d
	.uleb128 0x5
	.byte	0x3
	.4byte	kw_key
	.uleb128 0xa
	.4byte	0x39
	.4byte	0x4cb
	.uleb128 0x5
	.4byte	0x74
	.byte	0x2
	.uleb128 0x5
	.4byte	0x74
	.byte	0x27
	.byte	0
	.uleb128 0x4
	.4byte	0x4b5
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x3
	.2byte	0x1e2
	.byte	0x1c
	.4byte	0x4cb
	.uleb128 0x5
	.byte	0x3
	.4byte	kw_msg
	.uleb128 0xa
	.4byte	0x8c
	.4byte	0x4f3
	.uleb128 0x5
	.4byte	0x74
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	0x4e3
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x3
	.2byte	0x1f1
	.byte	0x15
	.4byte	0x4f3
	.uleb128 0x5
	.byte	0x3
	.4byte	kw_msg_len
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x3
	.2byte	0x1f8
	.byte	0x15
	.4byte	0x4f3
	.uleb128 0x5
	.byte	0x3
	.4byte	kw_out_len
	.uleb128 0xa
	.4byte	0x39
	.4byte	0x534
	.uleb128 0x5
	.4byte	0x74
	.byte	0x2
	.uleb128 0x5
	.4byte	0x74
	.byte	0x2f
	.byte	0
	.uleb128 0x4
	.4byte	0x51e
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x3
	.2byte	0x1ff
	.byte	0x1c
	.4byte	0x534
	.uleb128 0x5
	.byte	0x3
	.4byte	kw_res
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x211
	.byte	0x1c
	.4byte	0x49d
	.uleb128 0x5
	.byte	0x3
	.4byte	kwp_key
	.uleb128 0xa
	.4byte	0x39
	.4byte	0x575
	.uleb128 0x5
	.4byte	0x74
	.byte	0x2
	.uleb128 0x5
	.4byte	0x74
	.byte	0x1e
	.byte	0
	.uleb128 0x4
	.4byte	0x55f
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x3
	.2byte	0x21f
	.byte	0x1c
	.4byte	0x575
	.uleb128 0x5
	.byte	0x3
	.4byte	kwp_msg
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x3
	.2byte	0x22a
	.byte	0x15
	.4byte	0x4f3
	.uleb128 0x5
	.byte	0x3
	.4byte	kwp_msg_len
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x3
	.2byte	0x232
	.byte	0x1c
	.4byte	0x534
	.uleb128 0x5
	.byte	0x3
	.4byte	kwp_res
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x3
	.2byte	0x240
	.byte	0x15
	.4byte	0x4f3
	.uleb128 0x5
	.byte	0x3
	.4byte	kwp_out_len
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x9
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x5e6
	.uleb128 0x1
	.4byte	0xef
	.uleb128 0x1
	.4byte	0xef
	.uleb128 0x1
	.4byte	0x80
	.byte	0
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0xa
	.byte	0xce
	.byte	0x5
	.4byte	0x68
	.4byte	0x5fd
	.uleb128 0x1
	.4byte	0xea
	.uleb128 0x31
	.byte	0
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0x8
	.2byte	0x238
	.byte	0x5
	.4byte	0x68
	.4byte	0x628
	.uleb128 0x1
	.4byte	0xef
	.uleb128 0x1
	.4byte	0xef
	.uleb128 0x1
	.4byte	0x80
	.uleb128 0x1
	.4byte	0x80
	.uleb128 0x1
	.4byte	0x80
	.byte	0
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0xb
	.byte	0x20
	.byte	0x5
	.4byte	0x68
	.4byte	0x648
	.uleb128 0x1
	.4byte	0xef
	.uleb128 0x1
	.4byte	0xef
	.uleb128 0x1
	.4byte	0x80
	.byte	0
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x3c5
	.byte	0x5
	.4byte	0x68
	.4byte	0x673
	.uleb128 0x1
	.4byte	0x673
	.uleb128 0x1
	.4byte	0x678
	.uleb128 0x1
	.4byte	0x80
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x379
	.byte	0
	.uleb128 0x9
	.4byte	0x398
	.uleb128 0x9
	.4byte	0x39
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0x9
	.byte	0x20
	.byte	0x8
	.4byte	0xcd
	.4byte	0x69d
	.uleb128 0x1
	.4byte	0xcd
	.uleb128 0x1
	.4byte	0xef
	.uleb128 0x1
	.4byte	0x80
	.byte	0
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0x9
	.byte	0x1f
	.byte	0x8
	.4byte	0xcd
	.4byte	0x6bd
	.uleb128 0x1
	.4byte	0xcf
	.uleb128 0x1
	.4byte	0xf4
	.uleb128 0x1
	.4byte	0x80
	.byte	0
	.uleb128 0x32
	.4byte	.LASF95
	.byte	0xc
	.byte	0x9f
	.byte	0x6
	.4byte	0x6d4
	.uleb128 0x1
	.4byte	0xcd
	.uleb128 0x1
	.4byte	0x80
	.byte	0
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x33e
	.byte	0x5
	.4byte	0x68
	.4byte	0x6fa
	.uleb128 0x1
	.4byte	0x673
	.uleb128 0x1
	.4byte	0x678
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x205
	.byte	0
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x27e
	.byte	0x5
	.4byte	0x68
	.4byte	0x716
	.uleb128 0x1
	.4byte	0x673
	.uleb128 0x1
	.4byte	0x33c
	.byte	0
	.uleb128 0x33
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x261
	.byte	0x6
	.4byte	0x729
	.uleb128 0x1
	.4byte	0x673
	.byte	0
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x1af
	.byte	0x1e
	.4byte	0x33c
	.4byte	0x74a
	.uleb128 0x1
	.4byte	0x163
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x1d5
	.byte	0
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x9
	.byte	0x21
	.byte	0x8
	.4byte	0xcd
	.4byte	0x76a
	.uleb128 0x1
	.4byte	0xcd
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x80
	.byte	0
	.uleb128 0x20
	.4byte	.LASF101
	.2byte	0x248
	.4byte	0x68
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x829
	.uleb128 0x7
	.4byte	.LASF103
	.byte	0x3
	.2byte	0x248
	.byte	0x23
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x8
	.string	"ctx"
	.byte	0x3
	.2byte	0x24a
	.byte	0x1d
	.4byte	0x3de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x8
	.string	"out"
	.byte	0x3
	.2byte	0x24b
	.byte	0x13
	.4byte	0x829
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x3
	.2byte	0x24c
	.byte	0xc
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x8
	.string	"i"
	.byte	0x3
	.2byte	0x24d
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"ret"
	.byte	0x3
	.2byte	0x24e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"end"
	.byte	0x3
	.2byte	0x2cd
	.byte	0x1
	.4byte	.L98
	.uleb128 0x18
	.4byte	.LLRL3
	.4byte	0x80f
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0x3
	.2byte	0x255
	.byte	0x1a
	.4byte	0x6f
	.uleb128 0x5
	.byte	0x3
	.4byte	num_tests.1
	.byte	0
	.uleb128 0x21
	.4byte	.LLRL4
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0x3
	.2byte	0x293
	.byte	0x1a
	.4byte	0x6f
	.uleb128 0x5
	.byte	0x3
	.4byte	num_tests.0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x32
	.4byte	0x839
	.uleb128 0x5
	.4byte	0x74
	.byte	0x2f
	.byte	0
	.uleb128 0x20
	.4byte	.LASF102
	.2byte	0x143
	.4byte	0x68
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98e
	.uleb128 0xf
	.string	"ctx"
	.byte	0x3
	.2byte	0x143
	.byte	0x35
	.4byte	0x98e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x3
	.2byte	0x144
	.byte	0x33
	.4byte	0x3bc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -85
	.uleb128 0x7
	.4byte	.LASF104
	.byte	0x3
	.2byte	0x145
	.byte	0x31
	.4byte	0x678
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0x3
	.2byte	0x145
	.byte	0x3f
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x7
	.4byte	.LASF106
	.byte	0x3
	.2byte	0x146
	.byte	0x2b
	.4byte	0xd4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x7
	.4byte	.LASF107
	.byte	0x3
	.2byte	0x146
	.byte	0x3b
	.4byte	0x379
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x7
	.4byte	.LASF108
	.byte	0x3
	.2byte	0x146
	.byte	0x4b
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x8
	.string	"ret"
	.byte	0x3
	.2byte	0x148
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x3
	.2byte	0x149
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"A"
	.byte	0x3
	.2byte	0x14a
	.byte	0x13
	.4byte	0x993
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0x3
	.2byte	0x14b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.4byte	.LASF110
	.2byte	0x1b8
	.4byte	.L75
	.uleb128 0x21
	.4byte	.LLRL1
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0x3
	.2byte	0x16e
	.byte	0x10
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0x3
	.2byte	0x16f
	.byte	0x12
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0x3
	.2byte	0x1a5
	.byte	0x17
	.4byte	0x9a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.4byte	.LLRL2
	.4byte	0x962
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0x3
	.2byte	0x17d
	.byte	0x1b
	.4byte	0x383
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x35
	.4byte	0xf1f
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.byte	0x3
	.2byte	0x198
	.byte	0x57
	.uleb128 0x19
	.4byte	0xf2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.4byte	0xf35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.4byte	0xf3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x3de
	.uleb128 0xa
	.4byte	0x32
	.4byte	0x9a3
	.uleb128 0x5
	.4byte	0x74
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0xb0
	.4byte	0x9b3
	.uleb128 0x5
	.4byte	0x74
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x3
	.2byte	0x104
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa9
	.uleb128 0xf
	.string	"ctx"
	.byte	0x3
	.2byte	0x104
	.byte	0x2c
	.4byte	0x98e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x7
	.4byte	.LASF104
	.byte	0x3
	.2byte	0x105
	.byte	0x28
	.4byte	0x678
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x7
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x105
	.byte	0x36
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0xf
	.string	"A"
	.byte	0x3
	.2byte	0x106
	.byte	0x21
	.4byte	0xd4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x7
	.4byte	.LASF106
	.byte	0x3
	.2byte	0x107
	.byte	0x22
	.4byte	0xd4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x7
	.4byte	.LASF107
	.byte	0x3
	.2byte	0x107
	.byte	0x32
	.4byte	0x379
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x8
	.string	"ret"
	.byte	0x3
	.2byte	0x109
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"s"
	.byte	0x3
	.2byte	0x10a
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x3
	.2byte	0x10b
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"t"
	.byte	0x3
	.2byte	0x10c
	.byte	0xe
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0x3
	.2byte	0x10d
	.byte	0x13
	.4byte	0x383
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x10e
	.byte	0x13
	.4byte	0x383
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x8
	.string	"R"
	.byte	0x3
	.2byte	0x10f
	.byte	0x14
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.4byte	.LASF110
	.2byte	0x135
	.4byte	.L61
	.byte	0
	.uleb128 0x23
	.4byte	.LASF117
	.byte	0x81
	.4byte	0x68
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc01
	.uleb128 0xd
	.string	"ctx"
	.byte	0x3
	.byte	0x81
	.byte	0x33
	.4byte	0x98e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x3
	.byte	0x82
	.byte	0x31
	.4byte	0x3bc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -117
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x3
	.byte	0x83
	.byte	0x2f
	.4byte	0x678
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x3
	.byte	0x83
	.byte	0x3d
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x3
	.byte	0x84
	.byte	0x29
	.4byte	0xd4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0x3
	.byte	0x84
	.byte	0x39
	.4byte	0x379
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0x3
	.byte	0x84
	.byte	0x49
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x10
	.string	"ret"
	.byte	0x3
	.byte	0x86
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0x87
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.string	"s"
	.byte	0x3
	.byte	0x88
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0x89
	.byte	0xc
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0x89
	.byte	0x12
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"t"
	.byte	0x3
	.byte	0x8a
	.byte	0xe
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0x8b
	.byte	0x13
	.4byte	0x383
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0x8c
	.byte	0x13
	.4byte	0x383
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.4byte	.LASF110
	.byte	0x3
	.byte	0xf1
	.byte	0x1
	.4byte	.L45
	.uleb128 0x18
	.4byte	.LLRL0
	.4byte	0xbd4
	.uleb128 0x10
	.string	"R2"
	.byte	0x3
	.byte	0xce
	.byte	0x18
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.string	"A"
	.byte	0x3
	.byte	0xcf
	.byte	0x18
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x37
	.4byte	0xeef
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.byte	0x3
	.byte	0xbb
	.byte	0x73
	.uleb128 0x19
	.4byte	0xefc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x19
	.4byte	0xf05
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.4byte	0xf0e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF139
	.byte	0x3
	.byte	0x75
	.byte	0xd
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3f
	.uleb128 0xd
	.string	"A"
	.byte	0x3
	.byte	0x75
	.byte	0x28
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"t"
	.byte	0x3
	.byte	0x75
	.byte	0x37
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"i"
	.byte	0x3
	.byte	0x77
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.4byte	.LASF122
	.byte	0x67
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc63
	.uleb128 0xd
	.string	"ctx"
	.byte	0x3
	.byte	0x67
	.byte	0x34
	.4byte	0x98e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	.LASF118
	.byte	0x33
	.4byte	0x68
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce4
	.uleb128 0xd
	.string	"ctx"
	.byte	0x3
	.byte	0x33
	.byte	0x35
	.4byte	0x98e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF119
	.byte	0x3
	.byte	0x34
	.byte	0x30
	.4byte	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xd
	.string	"key"
	.byte	0x3
	.byte	0x35
	.byte	0x31
	.4byte	0x678
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.4byte	.LASF120
	.byte	0x3
	.byte	0x36
	.byte	0x29
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	.LASF121
	.byte	0x3
	.byte	0x37
	.byte	0x26
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.string	"ret"
	.byte	0x3
	.byte	0x39
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x3a
	.byte	0x22
	.4byte	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.4byte	.LASF123
	.byte	0x2e
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd08
	.uleb128 0xd
	.string	"ctx"
	.byte	0x3
	.byte	0x2e
	.byte	0x34
	.4byte	0x98e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF125
	.byte	0x2
	.2byte	0x1ef
	.byte	0x26
	.4byte	0x3ea
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd40
	.uleb128 0xf
	.string	"x"
	.byte	0x2
	.2byte	0x1ef
	.byte	0x4b
	.4byte	0x3f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"y"
	.byte	0x2
	.2byte	0x1f0
	.byte	0x4b
	.4byte	0x3f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x2
	.2byte	0x1d8
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd8c
	.uleb128 0x7
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x1d8
	.byte	0x3e
	.4byte	0x3ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"if1"
	.byte	0x2
	.2byte	0x1d8
	.byte	0x4d
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"if0"
	.byte	0x2
	.2byte	0x1d8
	.byte	0x56
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x16
	.4byte	.LASF128
	.byte	0x2
	.2byte	0x10f
	.byte	0x26
	.4byte	0x3ea
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe02
	.uleb128 0xf
	.string	"x"
	.byte	0x2
	.2byte	0x10f
	.byte	0x4b
	.4byte	0x3f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"y"
	.byte	0x2
	.2byte	0x10f
	.byte	0x60
	.4byte	0x3f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"xo"
	.byte	0x2
	.2byte	0x162
	.byte	0x1d
	.4byte	0x402
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"yo"
	.byte	0x2
	.2byte	0x163
	.byte	0x1d
	.4byte	0x402
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x2
	.2byte	0x168
	.byte	0x1c
	.4byte	0x3ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"ret"
	.byte	0x2
	.2byte	0x174
	.byte	0x17
	.4byte	0x3f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.4byte	.LASF130
	.byte	0xcd
	.byte	0x21
	.4byte	0x3f6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe59
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0x2
	.byte	0xcd
	.byte	0x46
	.4byte	0x3ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"if1"
	.byte	0x2
	.byte	0xce
	.byte	0x41
	.4byte	0x3f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"if0"
	.byte	0x2
	.byte	0xcf
	.byte	0x41
	.4byte	0x3f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0x2
	.2byte	0x109
	.byte	0x1c
	.4byte	0x3ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.4byte	.LASF132
	.byte	0x78
	.byte	0x26
	.4byte	0x3ea
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe9b
	.uleb128 0xd
	.string	"x"
	.byte	0x2
	.byte	0x78
	.byte	0x48
	.4byte	0x3f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"xo"
	.byte	0x2
	.byte	0xb8
	.byte	0x1d
	.4byte	0x402
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.string	"y"
	.byte	0x2
	.byte	0xc0
	.byte	0x16
	.4byte	0x407
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.4byte	.LASF133
	.byte	0x2
	.byte	0x55
	.byte	0x21
	.4byte	0x3f6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec3
	.uleb128 0xd
	.string	"x"
	.byte	0x2
	.byte	0x55
	.byte	0x4e
	.4byte	0x3f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x221
	.byte	0x16
	.4byte	0x80
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeef
	.uleb128 0x7
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x222
	.byte	0x22
	.4byte	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF136
	.byte	0x4
	.byte	0xc2
	.byte	0x14
	.byte	0x3
	.4byte	0xf1a
	.uleb128 0x1b
	.string	"p"
	.byte	0xc2
	.byte	0x37
	.4byte	0xcd
	.uleb128 0x1b
	.string	"x"
	.byte	0xc2
	.byte	0x43
	.4byte	0xb5
	.uleb128 0x1c
	.string	"p32"
	.byte	0xc8
	.byte	0x21
	.4byte	0xf1a
	.byte	0
	.uleb128 0x9
	.4byte	0x10e
	.uleb128 0x3c
	.4byte	.LASF137
	.byte	0x4
	.byte	0xa7
	.byte	0x18
	.4byte	0xb5
	.byte	0x3
	.uleb128 0x1b
	.string	"p"
	.byte	0xa7
	.byte	0x41
	.4byte	0xef
	.uleb128 0x1c
	.string	"r"
	.byte	0xa9
	.byte	0xe
	.4byte	0xb5
	.uleb128 0x1c
	.string	"p32"
	.byte	0xae
	.byte	0x21
	.4byte	0xf1a
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.4byte	0x8c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
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
	.4byte	.LBB11
	.byte	0x4
	.uleb128 .LBB11-.LBB11
	.uleb128 .LBE11-.LBB11
	.byte	0x4
	.uleb128 .LBB12-.LBB11
	.uleb128 .LBE12-.LBB11
	.byte	0
.LLRL1:
	.byte	0x5
	.4byte	.LBB13
	.byte	0x4
	.uleb128 .LBB13-.LBB13
	.uleb128 .LBE13-.LBB13
	.byte	0x4
	.uleb128 .LBB18-.LBB13
	.uleb128 .LBE18-.LBB13
	.byte	0
.LLRL2:
	.byte	0x5
	.4byte	.LBB14
	.byte	0x4
	.uleb128 .LBB14-.LBB14
	.uleb128 .LBE14-.LBB14
	.byte	0x4
	.uleb128 .LBB17-.LBB14
	.uleb128 .LBE17-.LBB14
	.byte	0
.LLRL3:
	.byte	0x5
	.4byte	.LBB19
	.byte	0x4
	.uleb128 .LBB19-.LBB19
	.uleb128 .LBE19-.LBB19
	.byte	0x4
	.uleb128 .LBB21-.LBB19
	.uleb128 .LBE21-.LBB19
	.byte	0
.LLRL4:
	.byte	0x5
	.4byte	.LBB20
	.byte	0x4
	.uleb128 .LBB20-.LBB20
	.uleb128 .LBE20-.LBB20
	.byte	0x4
	.uleb128 .LBB22-.LBB20
	.uleb128 .LBE22-.LBB20
	.byte	0
.LLRL5:
	.byte	0x7
	.4byte	.LFB16
	.uleb128 .LFE16-.LFB16
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
	.4byte	.LFB41
	.uleb128 .LFE41-.LFB41
	.byte	0x7
	.4byte	.LFB44
	.uleb128 .LFE44-.LFB44
	.byte	0x7
	.4byte	.LFB54
	.uleb128 .LFE54-.LFB54
	.byte	0x7
	.4byte	.LFB55
	.uleb128 .LFE55-.LFB55
	.byte	0x7
	.4byte	.LFB56
	.uleb128 .LFE56-.LFB56
	.byte	0x7
	.4byte	.LFB57
	.uleb128 .LFE57-.LFB57
	.byte	0x7
	.4byte	.LFB58
	.uleb128 .LFE58-.LFB58
	.byte	0x7
	.4byte	.LFB59
	.uleb128 .LFE59-.LFB59
	.byte	0x7
	.4byte	.LFB60
	.uleb128 .LFE60-.LFB60
	.byte	0x7
	.4byte	.LFB61
	.uleb128 .LFE61-.LFB61
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF73:
	.string	"NIST_KW_ICV1"
.LASF74:
	.string	"NIST_KW_ICV2"
.LASF118:
	.string	"mbedtls_nist_kw_setkey"
.LASF70:
	.string	"mbedtls_ct_condition_t"
.LASF59:
	.string	"operation"
.LASF104:
	.string	"input"
.LASF139:
	.string	"calc_a_xor_t"
.LASF83:
	.string	"kwp_msg_len"
.LASF33:
	.string	"MBEDTLS_MODE_CTR"
.LASF54:
	.string	"flags"
.LASF120:
	.string	"keybits"
.LASF10:
	.string	"unsigned int"
.LASF130:
	.string	"mbedtls_ct_if"
.LASF76:
	.string	"kw_key"
.LASF88:
	.string	"mbedtls_ct_memcmp_partial"
.LASF113:
	.string	"zero"
.LASF89:
	.string	"mbedtls_ct_memcmp"
.LASF47:
	.string	"mbedtls_cmac_context_t"
.LASF66:
	.string	"MBEDTLS_KW_MODE_KW"
.LASF107:
	.string	"out_len"
.LASF31:
	.string	"MBEDTLS_MODE_CFB"
.LASF69:
	.string	"mbedtls_nist_kw_context"
.LASF52:
	.string	"mode"
.LASF81:
	.string	"kwp_key"
.LASF132:
	.string	"mbedtls_ct_bool"
.LASF46:
	.string	"mbedtls_operation_t"
.LASF78:
	.string	"kw_msg_len"
.LASF99:
	.string	"olen"
.LASF15:
	.string	"uint32_t"
.LASF43:
	.string	"MBEDTLS_OPERATION_NONE"
.LASF79:
	.string	"kw_out_len"
.LASF91:
	.string	"memmove"
.LASF131:
	.string	"not_cond"
.LASF27:
	.string	"mbedtls_cipher_id_t"
.LASF9:
	.string	"long long unsigned int"
.LASF110:
	.string	"cleanup"
.LASF108:
	.string	"out_size"
.LASF42:
	.string	"mbedtls_cipher_mode_t"
.LASF65:
	.string	"cmac_ctx"
.LASF45:
	.string	"MBEDTLS_ENCRYPT"
.LASF44:
	.string	"MBEDTLS_DECRYPT"
.LASF56:
	.string	"mbedtls_cipher_info_t"
.LASF112:
	.string	"Plen"
.LASF124:
	.string	"unwrap"
.LASF63:
	.string	"unprocessed_len"
.LASF12:
	.string	"size_t"
.LASF129:
	.string	"cond"
.LASF86:
	.string	"memcmp"
.LASF106:
	.string	"output"
.LASF126:
	.string	"mbedtls_ct_error_if"
.LASF97:
	.string	"mbedtls_cipher_info_from_values"
.LASF18:
	.string	"mbedtls_uint32_unaligned_t"
.LASF28:
	.string	"MBEDTLS_MODE_NONE"
.LASF101:
	.string	"mbedtls_nist_kw_self_test"
.LASF93:
	.string	"mbedtls_cipher_setkey"
.LASF38:
	.string	"MBEDTLS_MODE_XTS"
.LASF123:
	.string	"mbedtls_nist_kw_init"
.LASF102:
	.string	"mbedtls_nist_kw_unwrap"
.LASF137:
	.string	"mbedtls_get_unaligned_uint32"
.LASF17:
	.string	"char"
.LASF41:
	.string	"MBEDTLS_MODE_KWP"
.LASF19:
	.string	"MBEDTLS_CIPHER_ID_NONE"
.LASF80:
	.string	"kw_res"
.LASF35:
	.string	"MBEDTLS_MODE_STREAM"
.LASF96:
	.string	"mbedtls_cipher_free"
.LASF77:
	.string	"kw_msg"
.LASF119:
	.string	"cipher"
.LASF14:
	.string	"uint8_t"
.LASF116:
	.string	"inbuff"
.LASF114:
	.string	"outbuff"
.LASF134:
	.string	"mbedtls_cipher_info_get_block_size"
.LASF90:
	.string	"mbedtls_cipher_update"
.LASF8:
	.string	"long long int"
.LASF105:
	.string	"in_len"
.LASF87:
	.string	"printf"
.LASF50:
	.string	"iv_size"
.LASF37:
	.string	"MBEDTLS_MODE_CCM_STAR_NO_TAG"
.LASF34:
	.string	"MBEDTLS_MODE_GCM"
.LASF40:
	.string	"MBEDTLS_MODE_KW"
.LASF117:
	.string	"mbedtls_nist_kw_wrap"
.LASF75:
	.string	"key_len"
.LASF122:
	.string	"mbedtls_nist_kw_free"
.LASF98:
	.string	"memset"
.LASF100:
	.string	"num_tests"
.LASF39:
	.string	"MBEDTLS_MODE_CHACHAPOLY"
.LASF135:
	.string	"info"
.LASF125:
	.string	"mbedtls_ct_uint_gt"
.LASF11:
	.string	"long double"
.LASF21:
	.string	"MBEDTLS_CIPHER_ID_AES"
.LASF4:
	.string	"short int"
.LASF20:
	.string	"MBEDTLS_CIPHER_ID_NULL"
.LASF6:
	.string	"long int"
.LASF115:
	.string	"semiblocks"
.LASF72:
	.string	"mbedtls_ct_int_t"
.LASF109:
	.string	"diff"
.LASF29:
	.string	"MBEDTLS_MODE_ECB"
.LASF16:
	.string	"uint64_t"
.LASF55:
	.string	"base_idx"
.LASF49:
	.string	"block_size"
.LASF51:
	.string	"key_bitlen"
.LASF61:
	.string	"get_padding"
.LASF58:
	.string	"cipher_info"
.LASF64:
	.string	"cipher_ctx"
.LASF48:
	.string	"name"
.LASF111:
	.string	"padlen"
.LASF25:
	.string	"MBEDTLS_CIPHER_ID_ARIA"
.LASF24:
	.string	"MBEDTLS_CIPHER_ID_CAMELLIA"
.LASF7:
	.string	"long unsigned int"
.LASF133:
	.string	"mbedtls_ct_compiler_opaque"
.LASF13:
	.string	"int32_t"
.LASF85:
	.string	"kwp_out_len"
.LASF136:
	.string	"mbedtls_put_unaligned_uint32"
.LASF22:
	.string	"MBEDTLS_CIPHER_ID_DES"
.LASF94:
	.string	"mbedtls_cipher_setup"
.LASF53:
	.string	"type"
.LASF3:
	.string	"unsigned char"
.LASF82:
	.string	"kwp_msg"
.LASF121:
	.string	"is_wrap"
.LASF30:
	.string	"MBEDTLS_MODE_CBC"
.LASF67:
	.string	"MBEDTLS_KW_MODE_KWP"
.LASF32:
	.string	"MBEDTLS_MODE_OFB"
.LASF57:
	.string	"mbedtls_cipher_context_t"
.LASF26:
	.string	"MBEDTLS_CIPHER_ID_CHACHA20"
.LASF71:
	.string	"mbedtls_ct_uint_t"
.LASF103:
	.string	"verbose"
.LASF68:
	.string	"mbedtls_nist_kw_mode_t"
.LASF23:
	.string	"MBEDTLS_CIPHER_ID_3DES"
.LASF2:
	.string	"signed char"
.LASF128:
	.string	"mbedtls_ct_uint_lt"
.LASF5:
	.string	"short unsigned int"
.LASF92:
	.string	"memcpy"
.LASF84:
	.string	"kwp_res"
.LASF36:
	.string	"MBEDTLS_MODE_CCM"
.LASF60:
	.string	"add_padding"
.LASF62:
	.string	"unprocessed_data"
.LASF138:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF127:
	.string	"condition"
.LASF95:
	.string	"mbedtls_platform_zeroize"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/nist_kw.c"
	.globl	__bswapsi2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
