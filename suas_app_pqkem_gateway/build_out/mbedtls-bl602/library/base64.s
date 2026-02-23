	.file	"base64.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/base64.c"
	.section	.text.mbedtls_ct_compiler_opaque,"ax",@progbits
	.align	1
	.type	mbedtls_ct_compiler_opaque, @function
mbedtls_ct_compiler_opaque:
.LFB11:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/constant_time_impl.h"
	.loc 1 86 1
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
	.loc 1 88 5
	lw	a5,-20(s0)
	sw	a5,-20(s0)
	.loc 1 89 12
	lw	a5,-20(s0)
	.loc 1 93 1
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
	.size	mbedtls_ct_compiler_opaque, .-mbedtls_ct_compiler_opaque
	.section	.text.mbedtls_ct_uchar_in_range_if,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uchar_in_range_if, @function
mbedtls_ct_uchar_in_range_if:
.LFB16:
	.loc 1 395 1
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
	mv	a4,a3
	sb	a5,-33(s0)
	mv	a5,a1
	sb	a5,-34(s0)
	mv	a5,a2
	sb	a5,-35(s0)
	mv	a5,a4
	sb	a5,-36(s0)
	.loc 1 396 46
	lbu	a5,-35(s0)
	mv	a0,a5
	call	mbedtls_ct_compiler_opaque
	mv	a5,a0
	.loc 1 396 25 discriminator 1
	sb	a5,-17(s0)
	.loc 1 397 46
	lbu	a5,-36(s0)
	mv	a0,a5
	call	mbedtls_ct_compiler_opaque
	mv	a5,a0
	.loc 1 397 25 discriminator 1
	sb	a5,-18(s0)
	.loc 1 400 26
	lbu	a4,-17(s0)
	.loc 1 400 40
	lbu	a5,-33(s0)
	sub	a5,a4,a5
	.loc 1 400 14
	srli	a5,a5,8
	sw	a5,-24(s0)
	.loc 1 402 27
	lbu	a4,-34(s0)
	.loc 1 402 43
	lbu	a5,-17(s0)
	sub	a5,a4,a5
	.loc 1 402 14
	srli	a5,a5,8
	sw	a5,-28(s0)
	.loc 1 404 40
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lw	a5,-28(s0)
	andi	a5,a5,0xff
	or	a5,a4,a5
	andi	a5,a5,0xff
	.loc 1 404 12
	not	a5,a5
	andi	a5,a5,0xff
	.loc 1 404 54
	lbu	a4,-18(s0)
	and	a5,a5,a4
	andi	a5,a5,0xff
	.loc 1 405 1
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
.LFE16:
	.size	mbedtls_ct_uchar_in_range_if, .-mbedtls_ct_uchar_in_range_if
	.section	.text.mbedtls_ct_base64_enc_char,"ax",@progbits
	.align	1
	.type	mbedtls_ct_base64_enc_char, @function
mbedtls_ct_base64_enc_char:
.LFB39:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/base64.c"
	.loc 2 28 1
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
	.loc 2 29 19
	sb	zero,-17(s0)
	.loc 2 33 14
	lbu	a5,-33(s0)
	addi	a5,a5,65
	andi	a4,a5,0xff
	lbu	a5,-33(s0)
	mv	a3,a4
	mv	a2,a5
	li	a1,25
	li	a0,0
	call	mbedtls_ct_uchar_in_range_if
	mv	a5,a0
	mv	a4,a5
	.loc 2 33 11 discriminator 1
	lbu	a5,-17(s0)
	or	a5,a4,a5
	sb	a5,-17(s0)
	.loc 2 34 14
	lbu	a5,-33(s0)
	addi	a5,a5,71
	andi	a4,a5,0xff
	lbu	a5,-33(s0)
	mv	a3,a4
	mv	a2,a5
	li	a1,51
	li	a0,26
	call	mbedtls_ct_uchar_in_range_if
	mv	a5,a0
	mv	a4,a5
	.loc 2 34 11 discriminator 1
	lbu	a5,-17(s0)
	or	a5,a4,a5
	sb	a5,-17(s0)
	.loc 2 35 14
	lbu	a5,-33(s0)
	addi	a5,a5,-4
	andi	a4,a5,0xff
	lbu	a5,-33(s0)
	mv	a3,a4
	mv	a2,a5
	li	a1,61
	li	a0,52
	call	mbedtls_ct_uchar_in_range_if
	mv	a5,a0
	mv	a4,a5
	.loc 2 35 11 discriminator 1
	lbu	a5,-17(s0)
	or	a5,a4,a5
	sb	a5,-17(s0)
	.loc 2 36 14
	lbu	a5,-33(s0)
	li	a3,43
	mv	a2,a5
	li	a1,62
	li	a0,62
	call	mbedtls_ct_uchar_in_range_if
	mv	a5,a0
	mv	a4,a5
	.loc 2 36 11 discriminator 1
	lbu	a5,-17(s0)
	or	a5,a4,a5
	sb	a5,-17(s0)
	.loc 2 37 14
	lbu	a5,-33(s0)
	li	a3,47
	mv	a2,a5
	li	a1,63
	li	a0,63
	call	mbedtls_ct_uchar_in_range_if
	mv	a5,a0
	mv	a4,a5
	.loc 2 37 11 discriminator 1
	lbu	a5,-17(s0)
	or	a5,a4,a5
	sb	a5,-17(s0)
	.loc 2 38 12
	lbu	a5,-17(s0)
	.loc 2 39 1
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
.LFE39:
	.size	mbedtls_ct_base64_enc_char, .-mbedtls_ct_base64_enc_char
	.section	.text.mbedtls_ct_base64_dec_value,"ax",@progbits
	.align	1
	.type	mbedtls_ct_base64_dec_value, @function
mbedtls_ct_base64_dec_value:
.LFB40:
	.loc 2 43 1
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
	.loc 2 44 19
	sb	zero,-17(s0)
	.loc 2 49 12
	lbu	a5,-33(s0)
	addi	a5,a5,-64
	andi	a4,a5,0xff
	lbu	a5,-33(s0)
	mv	a3,a4
	mv	a2,a5
	li	a1,90
	li	a0,65
	call	mbedtls_ct_uchar_in_range_if
	mv	a5,a0
	mv	a4,a5
	.loc 2 49 9 discriminator 1
	lbu	a5,-17(s0)
	or	a5,a4,a5
	sb	a5,-17(s0)
	.loc 2 50 12
	lbu	a5,-33(s0)
	addi	a5,a5,-70
	andi	a4,a5,0xff
	lbu	a5,-33(s0)
	mv	a3,a4
	mv	a2,a5
	li	a1,122
	li	a0,97
	call	mbedtls_ct_uchar_in_range_if
	mv	a5,a0
	mv	a4,a5
	.loc 2 50 9 discriminator 1
	lbu	a5,-17(s0)
	or	a5,a4,a5
	sb	a5,-17(s0)
	.loc 2 51 12
	lbu	a5,-33(s0)
	addi	a5,a5,5
	andi	a4,a5,0xff
	lbu	a5,-33(s0)
	mv	a3,a4
	mv	a2,a5
	li	a1,57
	li	a0,48
	call	mbedtls_ct_uchar_in_range_if
	mv	a5,a0
	mv	a4,a5
	.loc 2 51 9 discriminator 1
	lbu	a5,-17(s0)
	or	a5,a4,a5
	sb	a5,-17(s0)
	.loc 2 52 12
	lbu	a5,-33(s0)
	addi	a5,a5,20
	andi	a4,a5,0xff
	lbu	a5,-33(s0)
	mv	a3,a4
	mv	a2,a5
	li	a1,43
	li	a0,43
	call	mbedtls_ct_uchar_in_range_if
	mv	a5,a0
	mv	a4,a5
	.loc 2 52 9 discriminator 1
	lbu	a5,-17(s0)
	or	a5,a4,a5
	sb	a5,-17(s0)
	.loc 2 53 12
	lbu	a5,-33(s0)
	addi	a5,a5,17
	andi	a4,a5,0xff
	lbu	a5,-33(s0)
	mv	a3,a4
	mv	a2,a5
	li	a1,47
	li	a0,47
	call	mbedtls_ct_uchar_in_range_if
	mv	a5,a0
	mv	a4,a5
	.loc 2 53 9 discriminator 1
	lbu	a5,-17(s0)
	or	a5,a4,a5
	sb	a5,-17(s0)
	.loc 2 56 16
	lbu	a5,-17(s0)
	addi	a5,a5,-1
	andi	a5,a5,0xff
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 2 57 1
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
	.size	mbedtls_ct_base64_dec_value, .-mbedtls_ct_base64_dec_value
	.section	.text.mbedtls_base64_encode,"ax",@progbits
	.align	1
	.globl	mbedtls_base64_encode
	.type	mbedtls_base64_encode, @function
mbedtls_base64_encode:
.LFB41:
	.loc 2 64 1
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
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	.loc 2 69 8
	lw	a5,-68(s0)
	bne	a5,zero,.L10
	.loc 2 70 15
	lw	a5,-60(s0)
	sw	zero,0(a5)
	.loc 2 71 16
	li	a5,0
	j	.L11
.L10:
	.loc 2 74 14
	lw	a4,-68(s0)
	li	a5,-1431654400
	addi	a5,a5,-1365
	mulhu	a5,a4,a5
	srli	a2,a5,1
	.loc 2 74 26
	lw	a3,-68(s0)
	li	a5,-1431654400
	addi	a5,a5,-1365
	mulhu	a5,a3,a5
	srli	a4,a5,1
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	sub	a4,a3,a5
	.loc 2 74 30
	snez	a5,a4
	andi	a5,a5,0xff
	.loc 2 74 7
	add	a5,a2,a5
	sw	a5,-32(s0)
	.loc 2 76 8
	lw	a4,-32(s0)
	li	a5,1073741824
	bltu	a4,a5,.L12
	.loc 2 77 15
	lw	a5,-60(s0)
	li	a4,-1
	sw	a4,0(a5)
	.loc 2 78 16
	li	a5,-42
	j	.L11
.L12:
	.loc 2 81 7
	lw	a5,-32(s0)
	slli	a5,a5,2
	sw	a5,-32(s0)
	.loc 2 83 19
	lw	a5,-32(s0)
	addi	a5,a5,1
	.loc 2 83 8
	lw	a4,-56(s0)
	bltu	a4,a5,.L13
	.loc 2 83 24 discriminator 1
	lw	a5,-52(s0)
	bne	a5,zero,.L14
.L13:
	.loc 2 84 19
	lw	a5,-32(s0)
	addi	a4,a5,1
	.loc 2 84 15
	lw	a5,-60(s0)
	sw	a4,0(a5)
	.loc 2 85 16
	li	a5,-42
	j	.L11
.L14:
	.loc 2 88 15
	lw	a4,-68(s0)
	li	a5,-1431654400
	addi	a5,a5,-1365
	mulhu	a5,a4,a5
	srli	a4,a5,1
	.loc 2 88 7
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	sw	a5,-32(s0)
	.loc 2 90 12
	sw	zero,-20(s0)
	.loc 2 90 19
	lw	a5,-52(s0)
	sw	a5,-28(s0)
	.loc 2 90 5
	j	.L15
.L16:
	.loc 2 91 18
	lw	a5,-64(s0)
	addi	a4,a5,1
	sw	a4,-64(s0)
	.loc 2 91 14
	lbu	a5,0(a5)
	.loc 2 91 12
	sw	a5,-36(s0)
	.loc 2 92 18
	lw	a5,-64(s0)
	addi	a4,a5,1
	sw	a4,-64(s0)
	.loc 2 92 14
	lbu	a5,0(a5)
	.loc 2 92 12
	sw	a5,-24(s0)
	.loc 2 93 18
	lw	a5,-64(s0)
	addi	a4,a5,1
	sw	a4,-64(s0)
	.loc 2 93 14
	lbu	a5,0(a5)
	.loc 2 93 12
	sw	a5,-40(s0)
	.loc 2 95 47
	lw	a5,-36(s0)
	srai	a5,a5,2
	.loc 2 95 53
	andi	a5,a5,0xff
	.loc 2 95 16
	andi	a5,a5,63
	andi	a4,a5,0xff
	.loc 2 95 11
	lw	s1,-28(s0)
	addi	a5,s1,1
	sw	a5,-28(s0)
	.loc 2 95 16
	mv	a0,a4
	call	mbedtls_ct_base64_enc_char
	mv	a5,a0
	.loc 2 95 14 discriminator 1
	sb	a5,0(s1)
	.loc 2 96 54
	lw	a5,-36(s0)
	andi	a5,a5,0xff
	slli	a5,a5,4
	andi	a5,a5,0xff
	andi	a5,a5,48
	andi	a4,a5,0xff
	.loc 2 96 66
	lw	a5,-24(s0)
	srai	a5,a5,4
	.loc 2 97 43
	andi	a5,a5,0xff
	.loc 2 96 60
	add	a5,a4,a5
	andi	a5,a5,0xff
	.loc 2 96 16
	andi	a5,a5,63
	andi	a4,a5,0xff
	.loc 2 96 11
	lw	s1,-28(s0)
	addi	a5,s1,1
	sw	a5,-28(s0)
	.loc 2 96 16
	mv	a0,a4
	call	mbedtls_ct_base64_enc_char
	mv	a5,a0
	.loc 2 96 14 discriminator 1
	sb	a5,0(s1)
	.loc 2 98 55
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	slli	a5,a5,2
	andi	a5,a5,0xff
	andi	a5,a5,60
	andi	a4,a5,0xff
	.loc 2 98 67
	lw	a5,-40(s0)
	srai	a5,a5,6
	.loc 2 99 43
	andi	a5,a5,0xff
	.loc 2 98 61
	add	a5,a4,a5
	andi	a5,a5,0xff
	.loc 2 98 16
	andi	a5,a5,63
	andi	a4,a5,0xff
	.loc 2 98 11
	lw	s1,-28(s0)
	addi	a5,s1,1
	sw	a5,-28(s0)
	.loc 2 98 16
	mv	a0,a4
	call	mbedtls_ct_base64_enc_char
	mv	a5,a0
	.loc 2 98 14 discriminator 1
	sb	a5,0(s1)
	.loc 2 100 46
	lw	a5,-40(s0)
	andi	a5,a5,0xff
	.loc 2 100 16
	andi	a5,a5,63
	andi	a4,a5,0xff
	.loc 2 100 11
	lw	s1,-28(s0)
	addi	a5,s1,1
	sw	a5,-28(s0)
	.loc 2 100 16
	mv	a0,a4
	call	mbedtls_ct_base64_enc_char
	mv	a5,a0
	.loc 2 100 14 discriminator 1
	sb	a5,0(s1)
	.loc 2 90 35 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,3
	sw	a5,-20(s0)
.L15:
	.loc 2 90 28 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	bltu	a4,a5,.L16
	.loc 2 103 8
	lw	a4,-20(s0)
	lw	a5,-68(s0)
	bgeu	a4,a5,.L17
	.loc 2 104 18
	lw	a5,-64(s0)
	addi	a4,a5,1
	sw	a4,-64(s0)
	.loc 2 104 14
	lbu	a5,0(a5)
	.loc 2 104 12
	sw	a5,-36(s0)
	.loc 2 105 18
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 2 105 40
	lw	a4,-68(s0)
	bleu	a4,a5,.L18
	.loc 2 105 37 discriminator 1
	lw	a5,-64(s0)
	addi	a4,a5,1
	sw	a4,-64(s0)
	.loc 2 105 33 discriminator 1
	lbu	a5,0(a5)
	.loc 2 105 12 discriminator 1
	sw	a5,-24(s0)
	j	.L19
.L18:
	.loc 2 105 12 is_stmt 0 discriminator 2
	sw	zero,-24(s0)
.L19:
	.loc 2 107 47 is_stmt 1
	lw	a5,-36(s0)
	srai	a5,a5,2
	.loc 2 107 53
	andi	a5,a5,0xff
	.loc 2 107 16
	andi	a5,a5,63
	andi	a4,a5,0xff
	.loc 2 107 11
	lw	s1,-28(s0)
	addi	a5,s1,1
	sw	a5,-28(s0)
	.loc 2 107 16
	mv	a0,a4
	call	mbedtls_ct_base64_enc_char
	mv	a5,a0
	.loc 2 107 14 discriminator 1
	sb	a5,0(s1)
	.loc 2 108 54
	lw	a5,-36(s0)
	andi	a5,a5,0xff
	slli	a5,a5,4
	andi	a5,a5,0xff
	andi	a5,a5,48
	andi	a4,a5,0xff
	.loc 2 108 66
	lw	a5,-24(s0)
	srai	a5,a5,4
	.loc 2 109 43
	andi	a5,a5,0xff
	.loc 2 108 60
	add	a5,a4,a5
	andi	a5,a5,0xff
	.loc 2 108 16
	andi	a5,a5,63
	andi	a4,a5,0xff
	.loc 2 108 11
	lw	s1,-28(s0)
	addi	a5,s1,1
	sw	a5,-28(s0)
	.loc 2 108 16
	mv	a0,a4
	call	mbedtls_ct_base64_enc_char
	mv	a5,a0
	.loc 2 108 14 discriminator 1
	sb	a5,0(s1)
	.loc 2 111 16
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 2 111 12
	lw	a4,-68(s0)
	bleu	a4,a5,.L20
	.loc 2 112 64
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	slli	a5,a5,2
	andi	a5,a5,0xff
	.loc 2 112 20
	andi	a5,a5,60
	andi	a4,a5,0xff
	.loc 2 112 15
	lw	s1,-28(s0)
	addi	a5,s1,1
	sw	a5,-28(s0)
	.loc 2 112 20
	mv	a0,a4
	call	mbedtls_ct_base64_enc_char
	mv	a5,a0
	.loc 2 112 18 discriminator 1
	sb	a5,0(s1)
	j	.L21
.L20:
	.loc 2 114 15
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 2 114 18
	li	a4,61
	sb	a4,0(a5)
.L21:
	.loc 2 117 11
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 2 117 14
	li	a4,61
	sb	a4,0(a5)
.L17:
	.loc 2 120 25
	lw	a4,-28(s0)
	lw	a5,-52(s0)
	sub	a5,a4,a5
	.loc 2 120 13
	mv	a4,a5
	.loc 2 120 11
	lw	a5,-60(s0)
	sw	a4,0(a5)
	.loc 2 121 8
	lw	a5,-28(s0)
	sb	zero,0(a5)
	.loc 2 123 12
	li	a5,0
.L11:
	.loc 2 124 1
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
.LFE41:
	.size	mbedtls_base64_encode, .-mbedtls_base64_encode
	.section	.text.mbedtls_base64_decode,"ax",@progbits
	.align	1
	.globl	mbedtls_base64_decode
	.type	mbedtls_base64_decode, @function
mbedtls_base64_decode:
.LFB42:
	.loc 2 131 1
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
	.loc 2 135 14
	sw	zero,-32(s0)
	.loc 2 136 14
	sw	zero,-36(s0)
	.loc 2 137 9
	sw	zero,-40(s0)
	.loc 2 141 16
	sw	zero,-24(s0)
	.loc 2 141 12
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	.loc 2 141 5
	j	.L23
.L38:
	.loc 2 143 24
	sw	zero,-40(s0)
	.loc 2 144 15
	j	.L24
.L26:
	.loc 2 145 13
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 2 146 28
	li	a5,1
	sw	a5,-40(s0)
.L24:
	.loc 2 144 25
	lw	a4,-20(s0)
	lw	a5,-68(s0)
	bgeu	a4,a5,.L25
	.loc 2 144 31 discriminator 1
	lw	a4,-64(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 2 144 25 discriminator 1
	li	a5,32
	beq	a4,a5,.L26
.L25:
	.loc 2 150 12
	lw	a4,-20(s0)
	lw	a5,-68(s0)
	beq	a4,a5,.L54
	.loc 2 154 19
	lw	a4,-68(s0)
	lw	a5,-20(s0)
	sub	a4,a4,a5
	.loc 2 154 12
	li	a5,1
	bleu	a4,a5,.L29
	.loc 2 155 16
	lw	a4,-64(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 2 154 29 discriminator 1
	li	a5,13
	bne	a4,a5,.L29
	.loc 2 155 34
	lw	a5,-20(s0)
	addi	a5,a5,1
	lw	a4,-64(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 2 155 28
	li	a5,10
	beq	a4,a5,.L55
.L29:
	.loc 2 159 16
	lw	a4,-64(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 2 159 12
	li	a5,10
	beq	a4,a5,.L56
	.loc 2 164 12
	lw	a5,-40(s0)
	beq	a5,zero,.L32
	.loc 2 165 20
	li	a5,-44
	j	.L33
.L32:
	.loc 2 168 16
	lw	a4,-64(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 2 168 20
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 2 168 12
	bge	a5,zero,.L34
	.loc 2 169 20
	li	a5,-44
	j	.L33
.L34:
	.loc 2 172 16
	lw	a4,-64(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 2 172 12
	li	a5,61
	bne	a4,a5,.L35
	.loc 2 173 16
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	li	a5,2
	bleu	a4,a5,.L36
	.loc 2 174 24
	li	a5,-44
	j	.L33
.L35:
	.loc 2 177 16
	lw	a5,-36(s0)
	beq	a5,zero,.L37
	.loc 2 178 24
	li	a5,-44
	j	.L33
.L37:
	.loc 2 180 48
	lw	a4,-64(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 2 180 17
	lbu	a5,0(a5)
	mv	a0,a5
	call	mbedtls_ct_base64_dec_value
	mv	a5,a0
	.loc 2 180 16 discriminator 1
	bge	a5,zero,.L36
	.loc 2 181 24
	li	a5,-44
	j	.L33
.L36:
	.loc 2 184 10
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	j	.L30
.L55:
	.loc 2 156 13
	nop
	j	.L30
.L56:
	.loc 2 160 13
	nop
.L30:
	.loc 2 141 32 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L23:
	.loc 2 141 23 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-68(s0)
	bltu	a4,a5,.L38
	j	.L28
.L54:
	.loc 2 151 13
	nop
.L28:
	.loc 2 190 12
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	.loc 2 190 22
	andi	a4,a5,3
	.loc 2 190 8
	li	a5,1
	bne	a4,a5,.L39
	.loc 2 191 16
	li	a5,-44
	j	.L33
.L39:
	.loc 2 193 11
	lw	a5,-24(s0)
	andi	a5,a5,3
	.loc 2 193 8
	beq	a5,zero,.L40
	.loc 2 194 16
	li	a5,-44
	j	.L33
.L40:
	.loc 2 209 16
	lw	a5,-24(s0)
	srli	a4,a5,2
	.loc 2 209 21
	mv	a5,a4
	slli	a5,a5,1
	add	a4,a5,a4
	.loc 2 209 25
	lw	a5,-36(s0)
	sub	a4,a4,a5
	.loc 2 209 11
	lw	a5,-60(s0)
	sw	a4,0(a5)
	.loc 2 220 10
	lw	a5,-60(s0)
	lw	a5,0(a5)
	.loc 2 220 8
	beq	a5,zero,.L41
	.loc 2 220 21 discriminator 1
	lw	a5,-52(s0)
	beq	a5,zero,.L42
.L41:
	.loc 2 220 46 discriminator 3
	lw	a5,-60(s0)
	lw	a5,0(a5)
	.loc 2 220 36 discriminator 3
	lw	a4,-56(s0)
	bgeu	a4,a5,.L43
.L42:
	.loc 2 221 16
	li	a5,-42
	j	.L33
.L43:
	.loc 2 224 12
	sw	zero,-28(s0)
	.loc 2 224 19
	lw	a5,-52(s0)
	sw	a5,-44(s0)
	.loc 2 224 5
	j	.L44
.L50:
	.loc 2 225 13
	lw	a5,-64(s0)
	lbu	a4,0(a5)
	.loc 2 225 12
	li	a5,13
	beq	a4,a5,.L57
	.loc 2 225 29 discriminator 2
	lw	a5,-64(s0)
	lbu	a4,0(a5)
	.loc 2 225 26 discriminator 2
	li	a5,10
	beq	a4,a5,.L57
	.loc 2 225 45 discriminator 4
	lw	a5,-64(s0)
	lbu	a4,0(a5)
	.loc 2 225 42 discriminator 4
	li	a5,32
	beq	a4,a5,.L57
	.loc 2 228 13
	lw	a5,-64(s0)
	lbu	a4,0(a5)
	.loc 2 228 12
	li	a5,61
	beq	a4,a5,.L58
	.loc 2 233 11
	lw	a5,-28(s0)
	slli	a5,a5,6
	sw	a5,-28(s0)
	.loc 2 234 14
	lw	a5,-64(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	mbedtls_ct_base64_dec_value
	mv	a5,a0
	.loc 2 234 14 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 2 234 11 is_stmt 1 discriminator 1
	lw	a5,-28(s0)
	or	a5,a5,a4
	sw	a5,-28(s0)
	.loc 2 236 12
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
	lw	a4,-32(s0)
	li	a5,4
	bne	a4,a5,.L47
	.loc 2 237 32
	sw	zero,-32(s0)
	.loc 2 238 37
	lw	a5,-28(s0)
	srli	a3,a5,16
	.loc 2 238 15
	lw	a5,-44(s0)
	addi	a4,a5,1
	sw	a4,-44(s0)
	.loc 2 238 21
	andi	a4,a3,0xff
	.loc 2 238 18
	sb	a4,0(a5)
	.loc 2 239 37
	lw	a5,-28(s0)
	srli	a3,a5,8
	.loc 2 239 15
	lw	a5,-44(s0)
	addi	a4,a5,1
	sw	a4,-44(s0)
	.loc 2 239 21
	andi	a4,a3,0xff
	.loc 2 239 18
	sb	a4,0(a5)
	.loc 2 240 15
	lw	a5,-44(s0)
	addi	a4,a5,1
	sw	a4,-44(s0)
	.loc 2 240 21
	lw	a4,-28(s0)
	andi	a4,a4,0xff
	.loc 2 240 18
	sb	a4,0(a5)
	j	.L47
.L57:
	.loc 2 226 13
	nop
.L47:
	.loc 2 224 34 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 2 224 41 discriminator 2
	lw	a5,-64(s0)
	addi	a5,a5,1
	sw	a5,-64(s0)
.L44:
	.loc 2 224 28 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L50
	j	.L49
.L58:
	.loc 2 231 13
	nop
.L49:
	.loc 2 243 8
	lw	a4,-32(s0)
	li	a5,3
	bne	a4,a5,.L51
	.loc 2 244 32
	lw	a5,-28(s0)
	slli	a5,a5,6
	.loc 2 244 38
	srli	a3,a5,16
	.loc 2 244 11
	lw	a5,-44(s0)
	addi	a4,a5,1
	sw	a4,-44(s0)
	.loc 2 244 17
	andi	a4,a3,0xff
	.loc 2 244 14
	sb	a4,0(a5)
	.loc 2 245 32
	lw	a5,-28(s0)
	slli	a5,a5,6
	.loc 2 245 38
	srli	a3,a5,8
	.loc 2 245 11
	lw	a5,-44(s0)
	addi	a4,a5,1
	sw	a4,-44(s0)
	.loc 2 245 17
	andi	a4,a3,0xff
	.loc 2 245 14
	sb	a4,0(a5)
	j	.L52
.L51:
	.loc 2 246 15
	lw	a4,-32(s0)
	li	a5,2
	bne	a4,a5,.L52
	.loc 2 247 32
	lw	a5,-28(s0)
	slli	a5,a5,12
	.loc 2 247 39
	srli	a3,a5,16
	.loc 2 247 11
	lw	a5,-44(s0)
	addi	a4,a5,1
	sw	a4,-44(s0)
	.loc 2 247 17
	andi	a4,a3,0xff
	.loc 2 247 14
	sb	a4,0(a5)
.L52:
	.loc 2 250 9
	lw	a5,-60(s0)
	lw	a5,0(a5)
	.loc 2 250 30
	lw	a3,-44(s0)
	lw	a4,-52(s0)
	sub	a4,a3,a4
	.loc 2 250 8
	beq	a5,a4,.L53
	.loc 2 251 16
	li	a5,-110
	j	.L33
.L53:
	.loc 2 254 12
	li	a5,0
.L33:
	.loc 2 255 1
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
.LFE42:
	.size	mbedtls_base64_decode, .-mbedtls_base64_decode
	.section	.rodata.base64_test_dec,"a"
	.align	2
	.type	base64_test_dec, @object
	.size	base64_test_dec, 64
base64_test_dec:
	.base64	"JEhuVodiWr2/F9mixBcaAZTtjx4Rs9cJDLbpEG8i7hPKswcFdsn6MWwINP+Nwmw4AEPpVJevUEvRQbqVMVoLlw=="
	.section	.rodata.base64_test_enc,"a"
	.align	2
	.type	base64_test_enc, @object
	.size	base64_test_enc, 89
base64_test_enc:
	.string	"JEhuVodiWr2/F9mixBcaAZTtjx4Rs9cJDLbpEG8i7hPKswcFdsn6MWwINP+Nwmw4AEPpVJevUEvRQbqVMVoLlw=="
	.section	.rodata
	.align	2
.LC0:
	.string	"  Base64 encoding test: "
	.align	2
.LC1:
	.string	"failed\n"
	.align	2
.LC2:
	.string	"passed\n  Base64 decoding test: "
	.align	2
.LC3:
	.string	"passed\n\n"
	.section	.text.mbedtls_base64_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_base64_self_test
	.type	mbedtls_base64_self_test, @function
mbedtls_base64_self_test:
.LFB43:
	.loc 2 279 1
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sw	ra,172(sp)
	sw	s0,168(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	sw	a0,-164(s0)
	.loc 2 284 8
	lw	a5,-164(s0)
	beq	a5,zero,.L60
	.loc 2 285 9
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
.L60:
	.loc 2 288 9
	lui	a5,%hi(base64_test_dec)
	addi	a5,a5,%lo(base64_test_dec)
	sw	a5,-20(s0)
	.loc 2 290 9
	addi	a2,s0,-24
	addi	a5,s0,-152
	li	a4,64
	lw	a3,-20(s0)
	li	a1,128
	mv	a0,a5
	call	mbedtls_base64_encode
	mv	a5,a0
	.loc 2 290 8 discriminator 1
	bne	a5,zero,.L61
	.loc 2 291 9
	addi	a5,s0,-152
	li	a2,88
	mv	a1,a5
	lui	a5,%hi(base64_test_enc)
	addi	a0,a5,%lo(base64_test_enc)
	call	memcmp
	mv	a5,a0
	.loc 2 290 75 discriminator 2
	beq	a5,zero,.L62
.L61:
	.loc 2 292 12
	lw	a5,-164(s0)
	beq	a5,zero,.L63
	.loc 2 293 13
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L63:
	.loc 2 296 16
	li	a5,1
	j	.L70
.L62:
	.loc 2 299 8
	lw	a5,-164(s0)
	beq	a5,zero,.L65
	.loc 2 300 9
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L65:
	.loc 2 303 9
	lui	a5,%hi(base64_test_enc)
	addi	a5,a5,%lo(base64_test_enc)
	sw	a5,-20(s0)
	.loc 2 305 9
	addi	a2,s0,-24
	addi	a5,s0,-152
	li	a4,88
	lw	a3,-20(s0)
	li	a1,128
	mv	a0,a5
	call	mbedtls_base64_decode
	mv	a5,a0
	.loc 2 305 8 discriminator 1
	bne	a5,zero,.L66
	.loc 2 306 9
	addi	a5,s0,-152
	li	a2,64
	mv	a1,a5
	lui	a5,%hi(base64_test_dec)
	addi	a0,a5,%lo(base64_test_dec)
	call	memcmp
	mv	a5,a0
	.loc 2 305 75 discriminator 2
	beq	a5,zero,.L67
.L66:
	.loc 2 307 12
	lw	a5,-164(s0)
	beq	a5,zero,.L68
	.loc 2 308 13
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L68:
	.loc 2 311 16
	li	a5,1
	j	.L70
.L67:
	.loc 2 314 8
	lw	a5,-164(s0)
	beq	a5,zero,.L69
	.loc 2 315 9
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
.L69:
	.loc 2 318 12
	li	a5,0
.L70:
	.loc 2 319 1
	mv	a0,a5
	lw	ra,172(sp)
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE43:
	.size	mbedtls_base64_self_test, .-mbedtls_base64_self_test
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/constant_time_internal.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x450
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x7
	.4byte	0x32
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x5
	.4byte	0x32
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x7
	.4byte	0xa6
	.uleb128 0x5
	.4byte	0xad
	.uleb128 0x15
	.4byte	0xb2
	.uleb128 0x5
	.4byte	0xc1
	.uleb128 0x16
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0x51
	.byte	0x12
	.4byte	0x95
	.uleb128 0xc
	.4byte	0x39
	.4byte	0xde
	.uleb128 0xd
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x7
	.4byte	0xce
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x2
	.2byte	0x103
	.byte	0x1c
	.4byte	0xde
	.uleb128 0x5
	.byte	0x3
	.4byte	base64_test_dec
	.uleb128 0xc
	.4byte	0x39
	.4byte	0x106
	.uleb128 0xd
	.4byte	0x6f
	.byte	0x58
	.byte	0
	.uleb128 0x7
	.4byte	0xf6
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x2
	.2byte	0x10f
	.byte	0x1c
	.4byte	0x106
	.uleb128 0x5
	.byte	0x3
	.4byte	base64_test_enc
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x6
	.byte	0x1e
	.4byte	0x68
	.4byte	0x13d
	.uleb128 0x9
	.4byte	0xbc
	.uleb128 0x9
	.4byte	0xbc
	.uleb128 0x9
	.4byte	0x76
	.byte	0
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x7
	.byte	0xce
	.4byte	0x68
	.4byte	0x153
	.uleb128 0x9
	.4byte	0xb7
	.uleb128 0x17
	.byte	0
	.uleb128 0x18
	.4byte	.LASF22
	.byte	0x2
	.2byte	0x116
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b1
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x2
	.2byte	0x116
	.byte	0x22
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0xa
	.string	"len"
	.byte	0x2
	.2byte	0x118
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"src"
	.byte	0x2
	.2byte	0x119
	.byte	0x1a
	.4byte	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x2
	.2byte	0x11a
	.byte	0x13
	.4byte	0x1b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x5
	.4byte	0x39
	.uleb128 0xc
	.4byte	0x32
	.4byte	0x1c6
	.uleb128 0xd
	.4byte	0x6f
	.byte	0x7f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x81
	.4byte	0x68
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x282
	.uleb128 0x4
	.string	"dst"
	.byte	0x2
	.byte	0x81
	.byte	0x2a
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x81
	.byte	0x36
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x81
	.byte	0x44
	.4byte	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.string	"src"
	.byte	0x2
	.byte	0x82
	.byte	0x30
	.4byte	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x82
	.byte	0x3c
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.string	"i"
	.byte	0x84
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"n"
	.byte	0x85
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"x"
	.byte	0x86
	.byte	0xe
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x87
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x88
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x89
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"p"
	.byte	0x8a
	.byte	0x14
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x5
	.4byte	0x76
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x3e
	.4byte	0x68
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x334
	.uleb128 0x4
	.string	"dst"
	.byte	0x2
	.byte	0x3e
	.byte	0x2a
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x3e
	.byte	0x36
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x3e
	.byte	0x44
	.4byte	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.string	"src"
	.byte	0x2
	.byte	0x3f
	.byte	0x30
	.4byte	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x3f
	.byte	0x3c
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.string	"i"
	.byte	0x41
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"n"
	.byte	0x41
	.byte	0xf
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.string	"C1"
	.byte	0x42
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"C2"
	.byte	0x42
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"C3"
	.byte	0x42
	.byte	0x11
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"p"
	.byte	0x43
	.byte	0x14
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x2a
	.byte	0xd
	.4byte	0x2b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x369
	.uleb128 0x4
	.string	"c"
	.byte	0x2
	.byte	0x2a
	.byte	0x37
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.string	"val"
	.byte	0x2c
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1b
	.byte	0xf
	.4byte	0x32
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39f
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x1b
	.byte	0x38
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x1d
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x19
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x187
	.byte	0x1d
	.4byte	0x32
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42f
	.uleb128 0xe
	.string	"low"
	.2byte	0x187
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x188
	.byte	0x48
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xe
	.string	"c"
	.2byte	0x189
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0xe
	.string	"t"
	.2byte	0x18a
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"co"
	.byte	0x1
	.2byte	0x18c
	.byte	0x19
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xa
	.string	"to"
	.byte	0x1
	.2byte	0x18d
	.byte	0x19
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x190
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x192
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF41
	.byte	0x1
	.byte	0x55
	.byte	0x21
	.4byte	0xc2
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.string	"x"
	.byte	0x1
	.byte	0x55
	.byte	0x4e
	.4byte	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 72
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.sleb128 5
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
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
	.4byte	.LFB16
	.uleb128 .LFE16-.LFB16
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"verbose"
.LASF28:
	.string	"accumulated_digits"
.LASF19:
	.string	"memcmp"
.LASF37:
	.string	"high"
.LASF34:
	.string	"value"
.LASF18:
	.string	"base64_test_enc"
.LASF16:
	.string	"mbedtls_ct_uint_t"
.LASF41:
	.string	"mbedtls_ct_compiler_opaque"
.LASF25:
	.string	"dlen"
.LASF3:
	.string	"unsigned char"
.LASF32:
	.string	"mbedtls_ct_base64_dec_value"
.LASF38:
	.string	"low_mask"
.LASF27:
	.string	"slen"
.LASF7:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF12:
	.string	"size_t"
.LASF33:
	.string	"mbedtls_ct_base64_enc_char"
.LASF30:
	.string	"spaces_present"
.LASF22:
	.string	"mbedtls_base64_self_test"
.LASF31:
	.string	"mbedtls_base64_encode"
.LASF10:
	.string	"unsigned int"
.LASF35:
	.string	"digit"
.LASF9:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF26:
	.string	"olen"
.LASF39:
	.string	"high_mask"
.LASF8:
	.string	"long long int"
.LASF15:
	.string	"char"
.LASF20:
	.string	"printf"
.LASF4:
	.string	"short int"
.LASF21:
	.string	"buffer"
.LASF40:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF14:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF11:
	.string	"long double"
.LASF2:
	.string	"signed char"
.LASF29:
	.string	"equals"
.LASF23:
	.string	"mbedtls_base64_decode"
.LASF17:
	.string	"base64_test_dec"
.LASF36:
	.string	"mbedtls_ct_uchar_in_range_if"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/base64.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
