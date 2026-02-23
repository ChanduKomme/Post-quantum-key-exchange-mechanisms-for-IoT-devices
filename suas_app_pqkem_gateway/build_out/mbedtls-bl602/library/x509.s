	.file	"x509.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509.c"
	.section	.text.mbedtls_error_add,"ax",@progbits
	.align	1
	.type	mbedtls_error_add, @function
mbedtls_error_add:
.LFB76:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/error.h"
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
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	.loc 1 153 17
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 1 154 1
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
.LFE76:
	.size	mbedtls_error_add, .-mbedtls_error_add
	.section	.rodata
	.align	2
.LC0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509.c"
	.section	.text.mbedtls_x509_get_serial,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_get_serial
	.type	mbedtls_x509_get_serial, @function
mbedtls_x509_get_serial:
.LFB80:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509.c"
	.loc 2 65 1
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
	.loc 2 66 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 68 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 68 14
	lw	a4,-40(s0)
	sub	a5,a4,a5
	.loc 2 68 8
	bgt	a5,zero,.L4
	.loc 2 69 16
	li	a3,69
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-96
	li	a5,-8192
	addi	a0,a5,-640
	call	mbedtls_error_add
	mv	a5,a0
	j	.L5
.L4:
	.loc 2 73 10
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 73 9
	lbu	a4,0(a5)
	.loc 2 73 8
	li	a5,130
	beq	a4,a5,.L6
	.loc 2 74 10
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 74 9
	lbu	a4,0(a5)
	.loc 2 73 34 discriminator 1
	li	a5,2
	beq	a4,a5,.L6
	.loc 2 75 16
	li	a3,75
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-98
	li	a5,-8192
	addi	a0,a5,-640
	call	mbedtls_error_add
	mv	a5,a0
	j	.L5
.L6:
	.loc 2 79 21
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 79 24
	addi	a3,a5,1
	lw	a4,-36(s0)
	sw	a3,0(a4)
	.loc 2 79 19
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 2 79 17
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 2 81 16
	lw	a5,-44(s0)
	addi	a5,a5,4
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_len
	sw	a0,-20(s0)
	.loc 2 81 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L7
	.loc 2 82 16
	li	a3,82
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-640
	call	mbedtls_error_add
	mv	a5,a0
	j	.L5
.L7:
	.loc 2 85 17
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 85 15
	lw	a5,-44(s0)
	sw	a4,8(a5)
	.loc 2 86 5
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 86 17
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 2 86 8
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 2 88 12
	li	a5,0
.L5:
	.loc 2 89 1
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
	.size	mbedtls_x509_get_serial, .-mbedtls_x509_get_serial
	.section	.text.mbedtls_x509_get_alg_null,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_get_alg_null
	.type	mbedtls_x509_get_alg_null, @function
mbedtls_x509_get_alg_null:
.LFB81:
	.loc 2 99 1
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
	.loc 2 100 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 102 16
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_alg_null
	sw	a0,-20(s0)
	.loc 2 102 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L9
	.loc 2 103 16
	li	a3,103
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L10
.L9:
	.loc 2 106 12
	li	a5,0
.L10:
	.loc 2 107 1
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
.LFE81:
	.size	mbedtls_x509_get_alg_null, .-mbedtls_x509_get_alg_null
	.section	.text.mbedtls_x509_get_alg,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_get_alg
	.type	mbedtls_x509_get_alg, @function
mbedtls_x509_get_alg:
.LFB82:
	.loc 2 114 1
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
	.loc 2 115 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 117 16
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_alg
	sw	a0,-20(s0)
	.loc 2 117 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L12
	.loc 2 118 16
	li	a3,118
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L13
.L12:
	.loc 2 121 12
	li	a5,0
.L13:
	.loc 2 122 1
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
.LFE82:
	.size	mbedtls_x509_get_alg, .-mbedtls_x509_get_alg
	.section	.text.x509_get_attr_type_value,"ax",@progbits
	.align	1
	.type	x509_get_attr_type_value, @function
x509_get_attr_type_value:
.LFB83:
	.loc 2 409 1
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
	.loc 2 410 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 415 16
	addi	a5,s0,-32
	li	a3,48
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 415 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L15
	.loc 2 417 16
	li	a3,417
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-896
	call	mbedtls_error_add
	mv	a5,a0
	j	.L23
.L15:
	.loc 2 420 11
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 420 14
	lw	a5,-32(s0)
	.loc 2 420 9
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 2 422 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 422 14
	lw	a4,-40(s0)
	sub	a5,a4,a5
	.loc 2 422 8
	bgt	a5,zero,.L17
	.loc 2 423 16
	li	a3,423
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-96
	li	a5,-8192
	addi	a0,a5,-896
	call	mbedtls_error_add
	mv	a5,a0
	j	.L23
.L17:
	.loc 2 427 9
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	.loc 2 428 17
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 428 16
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 2 428 14
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 2 430 16
	lw	a5,-24(s0)
	addi	a5,a5,4
	li	a3,6
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 430 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L18
	.loc 2 431 16
	li	a3,431
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-896
	call	mbedtls_error_add
	mv	a5,a0
	j	.L23
.L18:
	.loc 2 434 14
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 434 12
	lw	a5,-24(s0)
	sw	a4,8(a5)
	.loc 2 435 5
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 435 14
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 2 435 8
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 2 437 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 437 14
	lw	a4,-40(s0)
	sub	a5,a4,a5
	.loc 2 437 8
	bgt	a5,zero,.L19
	.loc 2 438 16
	li	a3,438
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-96
	li	a5,-8192
	addi	a0,a5,-896
	call	mbedtls_error_add
	mv	a5,a0
	j	.L23
.L19:
	.loc 2 442 10
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 442 9
	lbu	a4,0(a5)
	.loc 2 442 8
	li	a5,30
	beq	a4,a5,.L20
	.loc 2 442 25 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 442 24 discriminator 1
	lbu	a4,0(a5)
	.loc 2 442 21 discriminator 1
	li	a5,12
	beq	a4,a5,.L20
	.loc 2 443 10
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 443 9
	lbu	a4,0(a5)
	.loc 2 442 36 discriminator 2
	li	a5,20
	beq	a4,a5,.L20
	.loc 2 443 25
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 443 24
	lbu	a4,0(a5)
	.loc 2 443 21
	li	a5,19
	beq	a4,a5,.L20
	.loc 2 444 10
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 444 9
	lbu	a4,0(a5)
	.loc 2 443 36 discriminator 1
	li	a5,22
	beq	a4,a5,.L20
	.loc 2 444 25
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 444 24
	lbu	a4,0(a5)
	.loc 2 444 21
	li	a5,28
	beq	a4,a5,.L20
	.loc 2 445 10
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 445 9
	lbu	a4,0(a5)
	.loc 2 444 36 discriminator 1
	li	a5,3
	beq	a4,a5,.L20
	.loc 2 446 16
	li	a3,446
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-98
	li	a5,-8192
	addi	a0,a5,-896
	call	mbedtls_error_add
	mv	a5,a0
	j	.L23
.L20:
	.loc 2 450 9
	lw	a5,-44(s0)
	addi	a5,a5,12
	sw	a5,-28(s0)
	.loc 2 451 18
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 451 21
	addi	a3,a5,1
	lw	a4,-36(s0)
	sw	a3,0(a4)
	.loc 2 451 16
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 2 451 14
	lw	a5,-28(s0)
	sw	a4,0(a5)
	.loc 2 453 16
	lw	a5,-28(s0)
	addi	a5,a5,4
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_len
	sw	a0,-20(s0)
	.loc 2 453 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L21
	.loc 2 454 16
	li	a3,454
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-896
	call	mbedtls_error_add
	mv	a5,a0
	j	.L23
.L21:
	.loc 2 457 14
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 457 12
	lw	a5,-28(s0)
	sw	a4,8(a5)
	.loc 2 458 5
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 458 14
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 2 458 8
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 2 460 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 460 8
	lw	a4,-40(s0)
	beq	a4,a5,.L22
	.loc 2 461 16
	li	a3,461
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-896
	call	mbedtls_error_add
	mv	a5,a0
	j	.L23
.L22:
	.loc 2 465 15
	lw	a5,-44(s0)
	sw	zero,24(a5)
	.loc 2 467 12
	li	a5,0
.L23:
	.loc 2 468 1
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
.LFE83:
	.size	x509_get_attr_type_value, .-x509_get_attr_type_value
	.section	.text.mbedtls_x509_get_name,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_get_name
	.type	mbedtls_x509_get_name, @function
mbedtls_x509_get_name:
.LFB84:
	.loc 2 500 1
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
	.loc 2 501 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 504 24
	lw	a5,-44(s0)
	sw	a5,-24(s0)
.L35:
	.loc 2 511 20
	addi	a5,s0,-32
	li	a3,49
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 511 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L25
	.loc 2 513 19
	li	a3,513
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-896
	call	mbedtls_error_add
	sw	a0,-20(s0)
	.loc 2 514 13
	j	.L26
.L25:
	.loc 2 517 19
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 517 22
	lw	a5,-32(s0)
	.loc 2 517 17
	add	a5,a4,a5
	sw	a5,-28(s0)
.L31:
	.loc 2 520 24
	lw	a2,-44(s0)
	lw	a1,-28(s0)
	lw	a0,-36(s0)
	call	x509_get_attr_type_value
	sw	a0,-20(s0)
	.loc 2 520 16 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L38
	.loc 2 524 17
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 524 16
	lw	a4,-28(s0)
	beq	a4,a5,.L39
	.loc 2 529 30
	lw	a5,-44(s0)
	li	a4,1
	sb	a4,28(a5)
	.loc 2 531 25
	li	a1,32
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 2 531 23 discriminator 1
	lw	a5,-44(s0)
	sw	a4,24(a5)
	.loc 2 533 20
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 2 533 16
	bne	a5,zero,.L30
	.loc 2 534 21
	li	a5,-12288
	addi	a5,a5,1920
	sw	a5,-20(s0)
	.loc 2 535 17
	j	.L26
.L30:
	.loc 2 538 17
	lw	a5,-44(s0)
	lw	a5,24(a5)
	sw	a5,-44(s0)
	.loc 2 520 16
	j	.L31
.L39:
	.loc 2 525 17
	nop
	.loc 2 544 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 544 12
	lw	a4,-40(s0)
	bne	a4,a5,.L32
	.loc 2 545 20
	li	a5,0
	j	.L36
.L32:
	.loc 2 548 21
	li	a1,32
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 2 548 19 discriminator 1
	lw	a5,-44(s0)
	sw	a4,24(a5)
	.loc 2 550 16
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 2 550 12
	bne	a5,zero,.L34
	.loc 2 551 17
	li	a5,-12288
	addi	a5,a5,1920
	sw	a5,-20(s0)
	.loc 2 552 13
	j	.L26
.L34:
	.loc 2 555 13
	lw	a5,-44(s0)
	lw	a5,24(a5)
	sw	a5,-44(s0)
	.loc 2 511 12
	j	.L35
.L38:
	.loc 2 521 17
	nop
.L26:
	.loc 2 560 51
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 2 560 5
	mv	a0,a5
	call	mbedtls_asn1_free_named_data_list_shallow
	.loc 2 561 16
	lw	a5,-24(s0)
	sw	zero,24(a5)
	.loc 2 563 12
	lw	a5,-20(s0)
.L36:
	.loc 2 564 1
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
.LFE84:
	.size	mbedtls_x509_get_name, .-mbedtls_x509_get_name
	.section	.text.x509_date_is_valid,"ax",@progbits
	.align	1
	.type	x509_date_is_valid, @function
x509_date_is_valid:
.LFB85:
	.loc 2 567 1
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
	.loc 2 570 14
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 2 570 5
	li	a4,12
	beq	a5,a4,.L41
	li	a4,12
	bgt	a5,a4,.L42
	li	a4,11
	beq	a5,a4,.L43
	li	a4,11
	bgt	a5,a4,.L42
	li	a4,10
	beq	a5,a4,.L41
	li	a4,10
	bgt	a5,a4,.L42
	li	a4,9
	beq	a5,a4,.L43
	li	a4,9
	bgt	a5,a4,.L42
	li	a4,8
	bgt	a5,a4,.L42
	li	a4,7
	bge	a5,a4,.L41
	li	a4,6
	beq	a5,a4,.L43
	li	a4,6
	bgt	a5,a4,.L42
	li	a4,5
	beq	a5,a4,.L41
	li	a4,5
	bgt	a5,a4,.L42
	li	a4,4
	beq	a5,a4,.L43
	li	a4,4
	bgt	a5,a4,.L42
	li	a4,3
	beq	a5,a4,.L41
	li	a4,3
	bgt	a5,a4,.L42
	li	a4,1
	beq	a5,a4,.L41
	li	a4,2
	beq	a5,a4,.L44
	j	.L42
.L41:
	.loc 2 572 24
	li	a5,31
	sw	a5,-20(s0)
	.loc 2 573 13
	j	.L45
.L43:
	.loc 2 575 24
	li	a5,30
	sw	a5,-20(s0)
	.loc 2 576 13
	j	.L45
.L44:
	.loc 2 578 36
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 578 18
	sw	a5,-24(s0)
	.loc 2 579 33
	lw	a5,-24(s0)
	andi	a5,a5,3
	.loc 2 581 32
	bne	a5,zero,.L46
	.loc 2 579 49
	lw	a4,-24(s0)
	li	a5,1374388224
	addi	a5,a5,1311
	mulhu	a5,a4,a5
	srli	a5,a5,5
	li	a3,100
	mul	a5,a5,a3
	sub	a5,a4,a5
	.loc 2 579 38
	bne	a5,zero,.L47
	.loc 2 580 51
	lw	a4,-24(s0)
	li	a5,1374388224
	addi	a5,a5,1311
	mulhu	a5,a4,a5
	srli	a5,a5,7
	li	a3,400
	mul	a5,a5,a3
	sub	a5,a4,a5
	.loc 2 580 42
	beq	a5,zero,.L47
.L46:
	.loc 2 579 24
	li	a5,28
	sw	a5,-20(s0)
	.loc 2 582 13
	j	.L45
.L47:
	.loc 2 579 24 discriminator 1
	li	a5,29
	sw	a5,-20(s0)
	.loc 2 582 13
	j	.L45
.L42:
	.loc 2 584 20
	li	a5,-8192
	addi	a5,a5,-1024
	j	.L49
.L45:
	.loc 2 587 26
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 587 32
	addi	a5,a5,-1
	.loc 2 587 9
	mv	a4,a5
	.loc 2 587 8
	lw	a5,-20(s0)
	bleu	a5,a4,.L50
	.loc 2 589 25
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 589 9
	mv	a4,a5
	.loc 2 587 51 discriminator 1
	li	a5,8192
	addi	a5,a5,1807
	bgtu	a4,a5,.L50
	.loc 2 590 25
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 2 590 9
	mv	a4,a5
	.loc 2 589 39
	li	a5,23
	bgtu	a4,a5,.L50
	.loc 2 591 25
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 2 591 9
	mv	a4,a5
	.loc 2 590 37
	li	a5,59
	bgtu	a4,a5,.L50
	.loc 2 592 25
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 2 592 9
	mv	a4,a5
	.loc 2 591 36
	li	a5,59
	bleu	a4,a5,.L51
.L50:
	.loc 2 593 16
	li	a5,-8192
	addi	a5,a5,-1024
	j	.L49
.L51:
	.loc 2 596 12
	li	a5,0
.L49:
	.loc 2 597 1
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
.LFE85:
	.size	x509_date_is_valid, .-x509_date_is_valid
	.section	.text.x509_parse2_int,"ax",@progbits
	.align	1
	.type	x509_parse2_int, @function
x509_parse2_int:
.LFB86:
	.loc 2 600 1
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
	.loc 2 601 20
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 2 601 24
	addi	a5,a5,-48
	.loc 2 601 14
	sw	a5,-20(s0)
	.loc 2 602 20
	lw	a5,-36(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 2 602 24
	addi	a5,a5,-48
	.loc 2 602 14
	sw	a5,-24(s0)
	.loc 2 603 56
	lw	a4,-20(s0)
	li	a5,9
	bgtu	a4,a5,.L53
	.loc 2 603 21 discriminator 1
	lw	a4,-24(s0)
	li	a5,9
	bgtu	a4,a5,.L53
	.loc 2 603 45 discriminator 3
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	.loc 2 603 50 discriminator 3
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 603 56
	j	.L55
.L53:
	.loc 2 603 56 is_stmt 0 discriminator 4
	li	a5,-1
.L55:
	.loc 2 604 1 is_stmt 1
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
.LFE86:
	.size	x509_parse2_int, .-x509_parse2_int
	.section	.text.x509_parse_time,"ax",@progbits
	.align	1
	.type	x509_parse_time, @function
x509_parse_time:
.LFB87:
	.loc 2 612 1
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
	.loc 2 618 16
	lw	a0,-36(s0)
	call	x509_parse2_int
	mv	a4,a0
	.loc 2 618 14 discriminator 1
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 2 619 11
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 2 619 8
	bge	a5,zero,.L57
	.loc 2 620 16
	li	a5,-8192
	addi	a5,a5,-1024
	j	.L58
.L57:
	.loc 2 623 8
	lw	a4,-44(s0)
	li	a5,4
	bne	a4,a5,.L59
	.loc 2 624 15
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 624 11
	li	a5,100
	mul	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 625 11
	lw	a5,-36(s0)
	addi	a5,a5,2
	sw	a5,-36(s0)
	.loc 2 626 20
	lw	a0,-36(s0)
	call	x509_parse2_int
	mv	a4,a0
	.loc 2 626 18 discriminator 1
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 2 627 15
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 2 627 12
	bge	a5,zero,.L60
	.loc 2 628 20
	li	a5,-8192
	addi	a5,a5,-1024
	j	.L58
.L59:
	.loc 2 631 16
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 631 36
	li	a5,49
	bgt	a4,a5,.L61
	.loc 2 631 11 discriminator 1
	li	a5,2000
	sw	a5,-20(s0)
	j	.L60
.L61:
	.loc 2 631 11 is_stmt 0 discriminator 2
	li	a5,1900
	sw	a5,-20(s0)
.L60:
	.loc 2 633 7 is_stmt 1
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 633 14
	lw	a5,-20(s0)
	add	a4,a4,a5
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 2 635 15
	lw	a5,-36(s0)
	addi	a5,a5,2
	mv	a0,a5
	call	x509_parse2_int
	mv	a4,a0
	.loc 2 635 13 discriminator 1
	lw	a5,-40(s0)
	sw	a4,4(a5)
	.loc 2 636 15
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	x509_parse2_int
	mv	a4,a0
	.loc 2 636 13 discriminator 1
	lw	a5,-40(s0)
	sw	a4,8(a5)
	.loc 2 637 16
	lw	a5,-36(s0)
	addi	a5,a5,6
	mv	a0,a5
	call	x509_parse2_int
	mv	a4,a0
	.loc 2 637 14 discriminator 1
	lw	a5,-40(s0)
	sw	a4,12(a5)
	.loc 2 638 15
	lw	a5,-36(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	x509_parse2_int
	mv	a4,a0
	.loc 2 638 13 discriminator 1
	lw	a5,-40(s0)
	sw	a4,16(a5)
	.loc 2 639 15
	lw	a5,-36(s0)
	addi	a5,a5,10
	mv	a0,a5
	call	x509_parse2_int
	mv	a4,a0
	.loc 2 639 13 discriminator 1
	lw	a5,-40(s0)
	sw	a4,20(a5)
	.loc 2 641 12
	lw	a0,-40(s0)
	call	x509_date_is_valid
	mv	a5,a0
.L58:
	.loc 2 642 1
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
.LFE87:
	.size	x509_parse_time, .-x509_parse_time
	.section	.text.mbedtls_x509_get_time,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_get_time
	.type	mbedtls_x509_get_time, @function
mbedtls_x509_get_time:
.LFB88:
	.loc 2 651 1
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
	.loc 2 652 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 2 656 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 656 14
	lw	a4,-40(s0)
	sub	a5,a4,a5
	.loc 2 656 8
	bgt	a5,zero,.L63
	.loc 2 657 16
	li	a3,657
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-96
	li	a5,-8192
	addi	a0,a5,-1024
	call	mbedtls_error_add
	mv	a5,a0
	j	.L71
.L63:
	.loc 2 661 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 661 9
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	.loc 2 663 8
	lbu	a4,-25(s0)
	li	a5,23
	bne	a4,a5,.L65
	.loc 2 664 18
	li	a5,2
	sw	a5,-20(s0)
	j	.L66
.L65:
	.loc 2 665 15
	lbu	a4,-25(s0)
	li	a5,24
	bne	a4,a5,.L67
	.loc 2 666 18
	li	a5,4
	sw	a5,-20(s0)
	j	.L66
.L67:
	.loc 2 668 16
	li	a3,668
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-98
	li	a5,-8192
	addi	a0,a5,-1024
	call	mbedtls_error_add
	mv	a5,a0
	j	.L71
.L66:
	.loc 2 672 6
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 672 9
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 2 673 11
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_len
	sw	a0,-24(s0)
	.loc 2 675 8
	lw	a5,-24(s0)
	beq	a5,zero,.L68
	.loc 2 676 16
	li	a3,676
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-24(s0)
	li	a5,-8192
	addi	a0,a5,-1024
	call	mbedtls_error_add
	mv	a5,a0
	j	.L71
.L68:
	.loc 2 680 25
	lw	a5,-20(s0)
	addi	a4,a5,10
	.loc 2 680 13
	lw	a5,-32(s0)
	.loc 2 680 8
	beq	a4,a5,.L69
	.loc 2 681 27
	lw	a5,-20(s0)
	addi	a4,a5,11
	.loc 2 681 15
	lw	a5,-32(s0)
	.loc 2 680 30 discriminator 1
	bne	a4,a5,.L70
	.loc 2 681 36
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 681 39
	lw	a5,-32(s0)
	addi	a5,a5,-1
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 2 681 9
	li	a5,90
	beq	a4,a5,.L69
.L70:
	.loc 2 682 16
	li	a5,-8192
	addi	a5,a5,-1024
	j	.L71
.L69:
	.loc 2 685 6
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 685 10
	lw	a5,-32(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 2 686 28
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 686 31
	lw	a5,-32(s0)
	neg	a5,a5
	add	a5,a4,a5
	.loc 2 686 12
	lw	a2,-20(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	x509_parse_time
	mv	a5,a0
.L71:
	.loc 2 687 1
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
.LFE88:
	.size	mbedtls_x509_get_time, .-mbedtls_x509_get_time
	.section	.text.mbedtls_x509_get_sig,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_get_sig
	.type	mbedtls_x509_get_sig, @function
mbedtls_x509_get_sig:
.LFB89:
	.loc 2 690 1
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
	.loc 2 691 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 695 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 695 14
	lw	a4,-40(s0)
	sub	a5,a4,a5
	.loc 2 695 8
	bgt	a5,zero,.L73
	.loc 2 696 16
	li	a3,696
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-96
	li	a5,-8192
	addi	a0,a5,-1152
	call	mbedtls_error_add
	mv	a5,a0
	j	.L76
.L73:
	.loc 2 700 17
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 700 16
	lbu	a5,0(a5)
	.loc 2 700 14
	sw	a5,-24(s0)
	.loc 2 702 16
	addi	a5,s0,-28
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_bitstring_null
	sw	a0,-20(s0)
	.loc 2 702 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L75
	.loc 2 703 16
	li	a3,703
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1152
	call	mbedtls_error_add
	mv	a5,a0
	j	.L76
.L75:
	.loc 2 706 14
	lw	a5,-44(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 2 707 14
	lw	a4,-28(s0)
	lw	a5,-44(s0)
	sw	a4,4(a5)
	.loc 2 708 14
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 708 12
	lw	a5,-44(s0)
	sw	a4,8(a5)
	.loc 2 710 5
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 710 8
	lw	a5,-28(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 2 712 12
	li	a5,0
.L76:
	.loc 2 713 1
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
.LFE89:
	.size	mbedtls_x509_get_sig, .-mbedtls_x509_get_sig
	.section	.text.mbedtls_x509_get_sig_alg,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_get_sig_alg
	.type	mbedtls_x509_get_sig_alg, @function
mbedtls_x509_get_sig_alg:
.LFB90:
	.loc 2 721 1
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
	.loc 2 722 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 724 9
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 724 8
	beq	a5,zero,.L78
	.loc 2 725 16
	li	a5,-8192
	addi	a5,a5,-2048
	j	.L79
.L78:
	.loc 2 728 16
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	mbedtls_oid_get_sig_alg
	sw	a0,-20(s0)
	.loc 2 728 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L80
	.loc 2 729 16
	li	a3,729
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1536
	call	mbedtls_error_add
	mv	a5,a0
	j	.L79
.L80:
	.loc 2 755 24
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 755 12
	li	a5,5
	beq	a4,a5,.L81
	.loc 2 755 51 discriminator 1
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 2 755 38 discriminator 1
	bne	a5,zero,.L82
.L81:
	.loc 2 756 23
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 755 63 discriminator 3
	beq	a5,zero,.L83
.L82:
	.loc 2 757 20
	li	a5,-8192
	addi	a5,a5,-768
	j	.L79
.L83:
	.loc 2 761 12
	li	a5,0
.L79:
	.loc 2 762 1
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
.LFE90:
	.size	mbedtls_x509_get_sig_alg, .-mbedtls_x509_get_sig_alg
	.section	.text.mbedtls_x509_get_ext,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_get_ext
	.type	mbedtls_x509_get_ext, @function
mbedtls_x509_get_ext:
.LFB91:
	.loc 2 770 1
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
	.loc 2 771 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 777 11
	lw	a5,-44(s0)
	addi	a4,a5,4
	lw	a5,-48(s0)
	ori	a5,a5,160
	mv	a3,a5
	mv	a2,a4
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 779 8
	lw	a5,-20(s0)
	beq	a5,zero,.L85
	.loc 2 780 16
	li	a3,780
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L89
.L85:
	.loc 2 783 28
	lw	a5,-48(s0)
	ori	a4,a5,160
	.loc 2 783 14
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 2 784 14
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 784 12
	lw	a5,-44(s0)
	sw	a4,8(a5)
	.loc 2 785 11
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 785 19
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 2 785 9
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 2 790 16
	addi	a5,s0,-24
	li	a3,48
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 790 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L87
	.loc 2 792 16
	li	a3,792
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L89
.L87:
	.loc 2 795 16
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 795 19
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 795 8
	lw	a4,-40(s0)
	beq	a4,a5,.L88
	.loc 2 796 16
	li	a3,796
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L89
.L88:
	.loc 2 800 12
	li	a5,0
.L89:
	.loc 2 801 1
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
.LFE91:
	.size	mbedtls_x509_get_ext, .-mbedtls_x509_get_ext
	.section	.text.nibble_to_hex_digit,"ax",@progbits
	.align	1
	.type	nibble_to_hex_digit, @function
nibble_to_hex_digit:
.LFB92:
	.loc 2 804 1
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
	.loc 2 805 33
	lw	a4,-20(s0)
	li	a5,9
	bgt	a4,a5,.L91
	.loc 2 805 26 discriminator 1
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	.loc 2 805 33 discriminator 1
	addi	a5,a5,48
	andi	a5,a5,0xff
	.loc 2 805 33 is_stmt 0
	j	.L93
.L91:
	.loc 2 805 43 is_stmt 1 discriminator 2
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	.loc 2 805 33 discriminator 2
	addi	a5,a5,55
	andi	a5,a5,0xff
.L93:
	.loc 2 806 1
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
.LFE92:
	.size	nibble_to_hex_digit, .-nibble_to_hex_digit
	.section	.rodata
	.align	2
.LC1:
	.string	" + "
	.align	2
.LC2:
	.string	", "
	.align	2
.LC3:
	.string	"%s="
	.align	2
.LC4:
	.string	"="
	.align	2
.LC5:
	.string	"??="
	.align	2
.LC6:
	.string	",=+<>;\"\\"
	.align	2
.LC7:
	.string	"# "
	.align	2
.LC8:
	.string	"%s"
	.section	.text.mbedtls_x509_dn_gets,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_dn_gets
	.type	mbedtls_x509_dn_gets, @function
mbedtls_x509_dn_gets:
.LFB93:
	.loc 2 813 1
	.cfi_startproc
	addi	sp,sp,-352
	.cfi_def_cfa_offset 352
	sw	ra,348(sp)
	sw	s0,344(sp)
	sw	s1,340(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,352
	.cfi_def_cfa 8, 0
	sw	a0,-340(s0)
	sw	a1,-344(s0)
	sw	a2,-348(s0)
	.loc 2 814 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 819 22
	sb	zero,-33(s0)
	.loc 2 821 17
	sw	zero,-80(s0)
	.loc 2 826 5
	addi	a5,s0,-336
	li	a2,256
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 828 10
	lw	a5,-348(s0)
	sw	a5,-40(s0)
	.loc 2 829 7
	lw	a5,-340(s0)
	sw	a5,-44(s0)
	.loc 2 830 7
	lw	a5,-344(s0)
	sw	a5,-32(s0)
	.loc 2 832 11
	j	.L95
.L136:
	.loc 2 833 23
	lw	a5,-40(s0)
	lw	a5,8(a5)
	.loc 2 833 12
	bne	a5,zero,.L96
	.loc 2 834 18
	lw	a5,-40(s0)
	lw	a5,24(a5)
	sw	a5,-40(s0)
	.loc 2 835 13
	j	.L95
.L96:
	.loc 2 838 12
	lw	a4,-40(s0)
	lw	a5,-348(s0)
	beq	a4,a5,.L98
	.loc 2 839 19
	lbu	a5,-33(s0)
	beq	a5,zero,.L99
	.loc 2 839 19 is_stmt 0 discriminator 1
	lui	a5,%hi(.LC1)
	addi	a5,a5,%lo(.LC1)
	j	.L100
.L99:
	.loc 2 839 19 discriminator 2
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
.L100:
	.loc 2 839 19 discriminator 4
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-44(s0)
	call	snprintf
	sw	a0,-20(s0)
	.loc 2 840 21 is_stmt 1
	lw	a5,-20(s0)
	blt	a5,zero,.L101
	.loc 2 840 33 discriminator 2
	lw	a5,-20(s0)
	.loc 2 840 30 discriminator 2
	lw	a4,-32(s0)
	bgtu	a4,a5,.L102
.L101:
	.loc 2 840 59 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 840 59 is_stmt 0
	j	.L137
.L102:
	.loc 2 840 73 is_stmt 1 discriminator 4
	lw	a5,-20(s0)
	.loc 2 840 70 discriminator 4
	lw	a4,-32(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 840 92 discriminator 4
	lw	a5,-20(s0)
	.loc 2 840 89 discriminator 4
	lw	a4,-44(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
.L98:
	.loc 2 843 37
	lw	a5,-40(s0)
	lw	a4,12(a5)
	.loc 2 844 51
	li	a5,12
	beq	a4,a5,.L104
	.loc 2 844 37 discriminator 1
	lw	a5,-40(s0)
	lw	a4,12(a5)
	.loc 2 843 51
	li	a5,19
	beq	a4,a5,.L104
	.loc 2 845 37
	lw	a5,-40(s0)
	lw	a4,12(a5)
	.loc 2 844 51 discriminator 4
	li	a5,22
	beq	a4,a5,.L104
	.loc 2 844 51 is_stmt 0 discriminator 3
	li	a5,1
	.loc 2 844 51
	j	.L105
.L104:
	.loc 2 844 51 discriminator 2
	li	a5,0
.L105:
	.loc 2 843 25 is_stmt 1
	sw	a5,-48(s0)
	.loc 2 847 20
	lw	a5,-40(s0)
	addi	a4,s0,-80
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_oid_get_attr_short_name
	sw	a0,-20(s0)
	.loc 2 847 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L106
	.loc 2 848 19
	lw	a5,-80(s0)
	mv	a3,a5
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	lw	a1,-32(s0)
	lw	a0,-44(s0)
	call	snprintf
	sw	a0,-20(s0)
	j	.L107
.L106:
	.loc 2 850 24
	lw	a5,-40(s0)
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-44(s0)
	call	mbedtls_oid_get_numeric_string
	sw	a0,-20(s0)
	.loc 2 850 16 discriminator 1
	lw	a5,-20(s0)
	ble	a5,zero,.L108
	.loc 2 851 19
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 852 19
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 2 853 23
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	lw	a1,-32(s0)
	lw	a0,-44(s0)
	call	snprintf
	sw	a0,-20(s0)
	.loc 2 854 33
	li	a5,1
	sw	a5,-48(s0)
	j	.L107
.L108:
	.loc 2 855 23
	lw	a4,-20(s0)
	li	a5,-11
	bne	a4,a5,.L109
	.loc 2 856 24
	li	a5,-12288
	addi	a5,a5,1664
	j	.L137
.L109:
	.loc 2 858 23
	lui	a5,%hi(.LC5)
	addi	a2,a5,%lo(.LC5)
	lw	a1,-32(s0)
	lw	a0,-44(s0)
	call	snprintf
	sw	a0,-20(s0)
.L107:
	.loc 2 861 17
	lw	a5,-20(s0)
	blt	a5,zero,.L110
	.loc 2 861 29 discriminator 2
	lw	a5,-20(s0)
	.loc 2 861 26 discriminator 2
	lw	a4,-32(s0)
	bgtu	a4,a5,.L111
.L110:
	.loc 2 861 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 861 55 is_stmt 0
	j	.L137
.L111:
	.loc 2 861 69 is_stmt 1 discriminator 4
	lw	a5,-20(s0)
	.loc 2 861 66 discriminator 4
	lw	a4,-32(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 861 88 discriminator 4
	lw	a5,-20(s0)
	.loc 2 861 85 discriminator 4
	lw	a4,-44(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 2 863 12
	lw	a5,-48(s0)
	beq	a5,zero,.L112
	.loc 2 864 18
	li	a5,35
	sb	a5,-336(s0)
	.loc 2 866 43
	addi	a5,s0,-72
	addi	a5,a5,6
	.loc 2 866 24
	sw	a5,-76(s0)
	.loc 2 867 87
	lw	a5,-40(s0)
	lw	a3,16(a5)
	.loc 2 867 24
	addi	a4,s0,-72
	addi	a5,s0,-76
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_asn1_write_len
	sw	a0,-20(s0)
	.loc 2 867 16 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L113
	.loc 2 868 24
	li	a5,-110
	j	.L137
.L113:
	.loc 2 870 27
	lw	a5,-20(s0)
	sw	a5,-56(s0)
	.loc 2 871 87
	lw	a5,-40(s0)
	lw	a5,12(a5)
	.loc 2 871 24
	andi	a3,a5,0xff
	addi	a4,s0,-72
	addi	a5,s0,-76
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_asn1_write_tag
	sw	a0,-20(s0)
	.loc 2 871 16 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L114
	.loc 2 872 24
	li	a5,-110
	j	.L137
.L114:
	.loc 2 874 27
	lw	a5,-20(s0)
	sw	a5,-60(s0)
	.loc 2 875 79
	lw	a4,-56(s0)
	lw	a5,-60(s0)
	add	a5,a4,a5
	.loc 2 875 36
	li	a4,6
	sub	a5,a4,a5
	sw	a5,-64(s0)
	.loc 2 876 20
	sw	zero,-24(s0)
	.loc 2 876 27
	li	a5,1
	sw	a5,-28(s0)
	.loc 2 876 13
	j	.L115
.L117:
	.loc 2 877 23
	lw	a5,-28(s0)
	addi	a4,a5,1
	.loc 2 877 20
	li	a5,254
	bleu	a4,a5,.L116
	.loc 2 878 28
	li	a5,-12288
	addi	a5,a5,1664
	j	.L137
.L116:
	.loc 2 880 60
	lw	a4,-64(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 880 19
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-56(a5)
	sb	a5,-49(s0)
	.loc 2 881 25
	lbu	a5,-49(s0)
	andi	a5,a5,15
	sb	a5,-50(s0)
	.loc 2 882 26
	lbu	a5,-49(s0)
	srli	a5,a5,4
	sb	a5,-51(s0)
	.loc 2 883 26
	lbu	a4,-51(s0)
	.loc 2 883 20
	lw	s1,-28(s0)
	addi	a5,s1,1
	sw	a5,-28(s0)
	.loc 2 883 26
	mv	a0,a4
	call	nibble_to_hex_digit
	mv	a5,a0
	mv	a4,a5
	.loc 2 883 24 discriminator 1
	addi	a5,s1,-16
	add	a5,a5,s0
	sb	a4,-320(a5)
	.loc 2 884 26
	lbu	a4,-50(s0)
	.loc 2 884 20
	lw	s1,-28(s0)
	addi	a5,s1,1
	sw	a5,-28(s0)
	.loc 2 884 26
	mv	a0,a4
	call	nibble_to_hex_digit
	mv	a5,a0
	mv	a4,a5
	.loc 2 884 24 discriminator 1
	addi	a5,s1,-16
	add	a5,a5,s0
	sb	a4,-320(a5)
	.loc 2 876 68 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L115:
	.loc 2 876 50 discriminator 1
	lw	a4,-56(s0)
	lw	a5,-60(s0)
	add	a5,a4,a5
	.loc 2 876 34 discriminator 1
	lw	a4,-24(s0)
	bltu	a4,a5,.L117
	.loc 2 886 20
	sw	zero,-24(s0)
	.loc 2 886 13
	j	.L118
.L120:
	.loc 2 887 23
	lw	a5,-28(s0)
	addi	a4,a5,1
	.loc 2 887 20
	li	a5,254
	bleu	a4,a5,.L119
	.loc 2 888 28
	li	a5,-12288
	addi	a5,a5,1664
	j	.L137
.L119:
	.loc 2 890 30
	lw	a5,-40(s0)
	lw	a4,20(a5)
	.loc 2 890 32
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 890 19
	lbu	a5,0(a5)
	sb	a5,-49(s0)
	.loc 2 891 25
	lbu	a5,-49(s0)
	andi	a5,a5,15
	sb	a5,-50(s0)
	.loc 2 892 26
	lbu	a5,-49(s0)
	srli	a5,a5,4
	sb	a5,-51(s0)
	.loc 2 893 26
	lbu	a4,-51(s0)
	.loc 2 893 20
	lw	s1,-28(s0)
	addi	a5,s1,1
	sw	a5,-28(s0)
	.loc 2 893 26
	mv	a0,a4
	call	nibble_to_hex_digit
	mv	a5,a0
	mv	a4,a5
	.loc 2 893 24 discriminator 1
	addi	a5,s1,-16
	add	a5,a5,s0
	sb	a4,-320(a5)
	.loc 2 894 26
	lbu	a4,-50(s0)
	.loc 2 894 20
	lw	s1,-28(s0)
	addi	a5,s1,1
	sw	a5,-28(s0)
	.loc 2 894 26
	mv	a0,a4
	call	nibble_to_hex_digit
	mv	a5,a0
	mv	a4,a5
	.loc 2 894 24 discriminator 1
	addi	a5,s1,-16
	add	a5,a5,s0
	sb	a4,-320(a5)
	.loc 2 886 45 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L118:
	.loc 2 886 38 discriminator 1
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 2 886 27 discriminator 1
	lw	a4,-24(s0)
	bltu	a4,a5,.L120
	j	.L121
.L112:
	.loc 2 897 20
	sw	zero,-24(s0)
	.loc 2 897 27
	sw	zero,-28(s0)
	.loc 2 897 13
	j	.L122
.L133:
	.loc 2 898 20
	lw	a4,-28(s0)
	li	a5,254
	bleu	a4,a5,.L123
	.loc 2 899 28
	li	a5,-12288
	addi	a5,a5,1664
	j	.L137
.L123:
	.loc 2 902 30
	lw	a5,-40(s0)
	lw	a4,20(a5)
	.loc 2 902 32
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 902 19
	lbu	a5,0(a5)
	sb	a5,-49(s0)
	.loc 2 904 20
	lbu	a5,-49(s0)
	bne	a5,zero,.L124
	.loc 2 905 28
	li	a5,-8192
	addi	a5,a5,-896
	j	.L137
.L124:
	.loc 2 907 25
	lbu	a5,-49(s0)
	mv	a1,a5
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	strchr
	mv	a5,a0
	.loc 2 907 24 discriminator 1
	bne	a5,zero,.L125
	.loc 2 907 49 discriminator 2
	lw	a5,-24(s0)
	bne	a5,zero,.L126
	.loc 2 908 38
	lbu	a5,-49(s0)
	mv	a1,a5
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	strchr
	mv	a5,a0
	.loc 2 908 35 discriminator 1
	bne	a5,zero,.L125
.L126:
	.loc 2 909 41
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 2 909 45
	addi	a5,a5,-1
	.loc 2 908 55 discriminator 2
	lw	a4,-24(s0)
	bne	a4,a5,.L127
	.loc 2 909 49
	lbu	a4,-49(s0)
	li	a5,32
	bne	a4,a5,.L127
.L125:
	.loc 2 910 31
	lw	a5,-28(s0)
	addi	a4,a5,1
	.loc 2 910 28
	li	a5,254
	bleu	a4,a5,.L128
	.loc 2 911 36
	li	a5,-12288
	addi	a5,a5,1664
	j	.L137
.L128:
	.loc 2 913 28
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 2 913 32
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,92
	sb	a4,-320(a5)
.L127:
	.loc 2 916 20
	lbu	a4,-49(s0)
	li	a5,31
	bleu	a4,a5,.L129
	.loc 2 916 28 discriminator 1
	lbu	a4,-49(s0)
	li	a5,126
	bleu	a4,a5,.L130
.L129:
	.loc 2 917 27
	lw	a5,-28(s0)
	addi	a4,a5,3
	.loc 2 917 24
	li	a5,254
	bleu	a4,a5,.L131
	.loc 2 918 32
	li	a5,-12288
	addi	a5,a5,1664
	j	.L137
.L131:
	.loc 2 920 24
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 2 920 28
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,92
	sb	a4,-320(a5)
	.loc 2 921 29
	lbu	a5,-49(s0)
	andi	a5,a5,15
	sb	a5,-50(s0)
	.loc 2 922 30
	lbu	a5,-49(s0)
	srli	a5,a5,4
	sb	a5,-51(s0)
	.loc 2 923 30
	lbu	a4,-51(s0)
	.loc 2 923 24
	lw	s1,-28(s0)
	addi	a5,s1,1
	sw	a5,-28(s0)
	.loc 2 923 30
	mv	a0,a4
	call	nibble_to_hex_digit
	mv	a5,a0
	mv	a4,a5
	.loc 2 923 28 discriminator 1
	addi	a5,s1,-16
	add	a5,a5,s0
	sb	a4,-320(a5)
	.loc 2 924 28
	lbu	a5,-50(s0)
	mv	a0,a5
	call	nibble_to_hex_digit
	mv	a5,a0
	mv	a4,a5
	.loc 2 924 26 discriminator 1
	lw	a5,-28(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-320(a5)
	.loc 2 924 26 is_stmt 0
	j	.L132
.L130:
	.loc 2 926 26 is_stmt 1
	lw	a5,-28(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-49(s0)
	sb	a4,-320(a5)
.L132:
	.loc 2 897 52 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 2 897 57 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L122:
	.loc 2 897 45 discriminator 1
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 2 897 34 discriminator 1
	lw	a4,-24(s0)
	bltu	a4,a5,.L133
.L121:
	.loc 2 930 14
	lw	a5,-28(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-320(a5)
	.loc 2 931 15
	addi	a5,s0,-336
	mv	a3,a5
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	lw	a1,-32(s0)
	lw	a0,-44(s0)
	call	snprintf
	sw	a0,-20(s0)
	.loc 2 932 17
	lw	a5,-20(s0)
	blt	a5,zero,.L134
	.loc 2 932 29 discriminator 2
	lw	a5,-20(s0)
	.loc 2 932 26 discriminator 2
	lw	a4,-32(s0)
	bgtu	a4,a5,.L135
.L134:
	.loc 2 932 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 932 55 is_stmt 0
	j	.L137
.L135:
	.loc 2 932 69 is_stmt 1 discriminator 4
	lw	a5,-20(s0)
	.loc 2 932 66 discriminator 4
	lw	a4,-32(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 932 88 discriminator 4
	lw	a5,-20(s0)
	.loc 2 932 85 discriminator 4
	lw	a4,-44(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 2 934 15
	lw	a5,-40(s0)
	lbu	a5,28(a5)
	sb	a5,-33(s0)
	.loc 2 935 14
	lw	a5,-40(s0)
	lw	a5,24(a5)
	sw	a5,-40(s0)
.L95:
	.loc 2 832 17
	lw	a5,-40(s0)
	bne	a5,zero,.L136
	.loc 2 938 24
	lw	a4,-344(s0)
	lw	a5,-32(s0)
	sub	a5,a4,a5
.L137:
	.loc 2 939 1
	mv	a0,a5
	lw	ra,348(sp)
	.cfi_restore 1
	lw	s0,344(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 352
	lw	s1,340(sp)
	.cfi_restore 9
	addi	sp,sp,352
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE93:
	.size	mbedtls_x509_dn_gets, .-mbedtls_x509_dn_gets
	.section	.rodata
	.align	2
.LC9:
	.string	":"
	.align	2
.LC10:
	.string	""
	.align	2
.LC11:
	.string	"%02X%s"
	.align	2
.LC12:
	.string	"...."
	.section	.text.mbedtls_x509_serial_gets,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_serial_gets
	.type	mbedtls_x509_serial_gets, @function
mbedtls_x509_serial_gets:
.LFB94:
	.loc 2 946 1
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
	.loc 2 947 9
	li	a5,-110
	sw	a5,-36(s0)
	.loc 2 951 7
	lw	a5,-52(s0)
	sw	a5,-32(s0)
	.loc 2 952 7
	lw	a5,-56(s0)
	sw	a5,-24(s0)
	.loc 2 954 17
	lw	a5,-60(s0)
	lw	a4,4(a5)
	.loc 2 955 23
	li	a5,32
	bgtu	a4,a5,.L139
	.loc 2 954 8
	lw	a5,-60(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	j	.L140
.L139:
	li	a5,28
	sw	a5,-28(s0)
.L140:
	.loc 2 957 12
	sw	zero,-20(s0)
	.loc 2 957 5
	j	.L141
.L149:
	.loc 2 958 12
	lw	a5,-20(s0)
	bne	a5,zero,.L142
	.loc 2 958 20 discriminator 1
	lw	a4,-28(s0)
	li	a5,1
	bleu	a4,a5,.L142
	.loc 2 958 39 discriminator 2
	lw	a5,-60(s0)
	lw	a4,8(a5)
	.loc 2 958 42 discriminator 2
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 2 958 30 discriminator 2
	beq	a5,zero,.L153
.L142:
	.loc 2 963 38
	lw	a5,-60(s0)
	lw	a4,8(a5)
	.loc 2 963 41
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 2 962 15
	mv	a3,a5
	.loc 2 963 54
	lw	a5,-28(s0)
	addi	a5,a5,-1
	.loc 2 962 15
	lw	a4,-20(s0)
	bgeu	a4,a5,.L144
	.loc 2 962 15 is_stmt 0 discriminator 1
	lui	a5,%hi(.LC9)
	addi	a5,a5,%lo(.LC9)
	j	.L145
.L144:
	.loc 2 962 15 discriminator 2
	lui	a5,%hi(.LC10)
	addi	a5,a5,%lo(.LC10)
.L145:
	.loc 2 962 15 discriminator 4
	mv	a4,a5
	lui	a5,%hi(.LC11)
	addi	a2,a5,%lo(.LC11)
	lw	a1,-24(s0)
	lw	a0,-32(s0)
	call	snprintf
	sw	a0,-36(s0)
	.loc 2 964 17 is_stmt 1
	lw	a5,-36(s0)
	blt	a5,zero,.L146
	.loc 2 964 29 discriminator 2
	lw	a5,-36(s0)
	.loc 2 964 26 discriminator 2
	lw	a4,-24(s0)
	bgtu	a4,a5,.L147
.L146:
	.loc 2 964 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 964 55 is_stmt 0
	j	.L148
.L147:
	.loc 2 964 69 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 2 964 66 discriminator 4
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 964 88 discriminator 4
	lw	a5,-36(s0)
	.loc 2 964 85 discriminator 4
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	j	.L143
.L153:
	.loc 2 959 13
	nop
.L143:
	.loc 2 957 26 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L141:
	.loc 2 957 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	bltu	a4,a5,.L149
	.loc 2 967 21
	lw	a5,-60(s0)
	lw	a5,4(a5)
	.loc 2 967 8
	lw	a4,-28(s0)
	beq	a4,a5,.L150
	.loc 2 968 15
	lui	a5,%hi(.LC12)
	addi	a2,a5,%lo(.LC12)
	lw	a1,-24(s0)
	lw	a0,-32(s0)
	call	snprintf
	sw	a0,-36(s0)
	.loc 2 969 17
	lw	a5,-36(s0)
	blt	a5,zero,.L151
	.loc 2 969 29 discriminator 2
	lw	a5,-36(s0)
	.loc 2 969 26 discriminator 2
	lw	a4,-24(s0)
	bgtu	a4,a5,.L152
.L151:
	.loc 2 969 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 969 55 is_stmt 0
	j	.L148
.L152:
	.loc 2 969 69 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 2 969 66 discriminator 4
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 969 88 discriminator 4
	lw	a5,-36(s0)
	.loc 2 969 85 discriminator 4
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
.L150:
	.loc 2 972 24
	lw	a4,-56(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
.L148:
	.loc 2 973 1
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
.LFE94:
	.size	mbedtls_x509_serial_gets, .-mbedtls_x509_serial_gets
	.section	.rodata
	.align	2
.LC13:
	.string	"???"
	.section	.text.mbedtls_x509_sig_alg_gets,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_sig_alg_gets
	.type	mbedtls_x509_sig_alg_gets, @function
mbedtls_x509_sig_alg_gets:
.LFB95:
	.loc 2 982 1
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
	sw	a5,-52(s0)
	mv	a5,a3
	sb	a5,-45(s0)
	mv	a5,a4
	sb	a5,-46(s0)
	.loc 2 983 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 984 11
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 2 985 12
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	.loc 2 986 17
	sw	zero,-32(s0)
	.loc 2 988 11
	addi	a5,s0,-32
	mv	a1,a5
	lw	a0,-44(s0)
	call	mbedtls_oid_get_sig_alg_desc
	sw	a0,-20(s0)
	.loc 2 989 8
	lw	a5,-20(s0)
	beq	a5,zero,.L155
	.loc 2 990 15
	lui	a5,%hi(.LC13)
	addi	a2,a5,%lo(.LC13)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-20(s0)
	j	.L156
.L155:
	.loc 2 992 15
	lw	a5,-32(s0)
	mv	a3,a5
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-20(s0)
.L156:
	.loc 2 994 13
	lw	a5,-20(s0)
	blt	a5,zero,.L157
	.loc 2 994 25 discriminator 2
	lw	a5,-20(s0)
	.loc 2 994 22 discriminator 2
	lw	a4,-28(s0)
	bgtu	a4,a5,.L158
.L157:
	.loc 2 994 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 994 51 is_stmt 0
	j	.L160
.L158:
	.loc 2 994 65 is_stmt 1 discriminator 4
	lw	a5,-20(s0)
	.loc 2 994 62 discriminator 4
	lw	a4,-28(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 994 84 discriminator 4
	lw	a5,-20(s0)
	.loc 2 994 81 discriminator 4
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1017 24
	lw	a4,-40(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
.L160:
	.loc 2 1018 1
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
	.size	mbedtls_x509_sig_alg_gets, .-mbedtls_x509_sig_alg_gets
	.section	.rodata
	.align	2
.LC14:
	.string	"%s key size"
	.section	.text.mbedtls_x509_key_size_helper,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_key_size_helper
	.type	mbedtls_x509_key_size_helper, @function
mbedtls_x509_key_size_helper:
.LFB96:
	.loc 2 1025 1
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
	.loc 2 1026 11
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 1027 12
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 2 1028 9
	li	a5,-110
	sw	a5,-28(s0)
	.loc 2 1030 11
	lw	a3,-44(s0)
	lui	a5,%hi(.LC14)
	addi	a2,a5,%lo(.LC14)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	snprintf
	sw	a0,-28(s0)
	.loc 2 1031 13
	lw	a5,-28(s0)
	blt	a5,zero,.L162
	.loc 2 1031 25 discriminator 2
	lw	a5,-28(s0)
	.loc 2 1031 22 discriminator 2
	lw	a4,-24(s0)
	bgtu	a4,a5,.L163
.L162:
	.loc 2 1031 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1031 51 is_stmt 0
	j	.L164
.L163:
	.loc 2 1031 65 is_stmt 1 discriminator 4
	lw	a5,-28(s0)
	.loc 2 1031 62 discriminator 4
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1031 84 discriminator 4
	lw	a5,-28(s0)
	.loc 2 1031 81 discriminator 4
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1033 12
	li	a5,0
.L164:
	.loc 2 1034 1
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
.LFE96:
	.size	mbedtls_x509_key_size_helper, .-mbedtls_x509_key_size_helper
	.section	.text.mbedtls_x509_time_cmp,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_time_cmp
	.type	mbedtls_x509_time_cmp, @function
mbedtls_x509_time_cmp:
.LFB97:
	.loc 2 1038 1
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
	.loc 2 1041 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 1041 21
	slli	a4,a5,9
	.loc 2 1041 32
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 2 1041 38
	slli	a5,a5,5
	.loc 2 1041 27
	or	a4,a4,a5
	.loc 2 1041 49
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 1041 44
	or	a4,a4,a5
	.loc 2 1042 14
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 2 1042 21
	slli	a3,a5,9
	.loc 2 1042 32
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 1042 38
	slli	a5,a5,5
	.loc 2 1042 27
	or	a3,a3,a5
	.loc 2 1042 49
	lw	a5,-40(s0)
	lw	a5,8(a5)
	.loc 2 1042 44
	or	a5,a3,a5
	.loc 2 1041 7
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1043 8
	lw	a5,-20(s0)
	beq	a5,zero,.L166
	.loc 2 1044 16
	lw	a5,-20(s0)
	j	.L167
.L166:
	.loc 2 1047 14
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 2 1047 21
	slli	a4,a5,12
	.loc 2 1047 33
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 2 1047 39
	slli	a5,a5,6
	.loc 2 1047 28
	or	a4,a4,a5
	.loc 2 1047 50
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 2 1047 45
	or	a4,a4,a5
	.loc 2 1048 14
	lw	a5,-40(s0)
	lw	a5,12(a5)
	.loc 2 1048 21
	slli	a3,a5,12
	.loc 2 1048 33
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 2 1048 39
	slli	a5,a5,6
	.loc 2 1048 28
	or	a3,a3,a5
	.loc 2 1048 50
	lw	a5,-40(s0)
	lw	a5,20(a5)
	.loc 2 1048 45
	or	a5,a3,a5
	.loc 2 1047 7
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1049 12
	lw	a5,-20(s0)
.L167:
	.loc 2 1050 1
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
.LFE97:
	.size	mbedtls_x509_time_cmp, .-mbedtls_x509_time_cmp
	.section	.text.mbedtls_x509_time_is_past,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_time_is_past
	.type	mbedtls_x509_time_is_past, @function
mbedtls_x509_time_is_past:
.LFB98:
	.loc 2 1100 1
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
	.loc 2 1102 12
	li	a5,0
	.loc 2 1103 1
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
	.size	mbedtls_x509_time_is_past, .-mbedtls_x509_time_is_past
	.section	.text.mbedtls_x509_time_is_future,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_time_is_future
	.type	mbedtls_x509_time_is_future, @function
mbedtls_x509_time_is_future:
.LFB99:
	.loc 2 1106 1
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
	.loc 2 1108 12
	li	a5,0
	.loc 2 1109 1
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
.LFE99:
	.size	mbedtls_x509_time_is_future, .-mbedtls_x509_time_is_future
	.section	.rodata
	.align	2
.LC15:
	.base64	"KwYBBQUHCAQA"
	.section	.text.x509_get_other_name,"ax",@progbits
	.align	1
	.type	x509_get_other_name, @function
x509_get_other_name:
.LFB100:
	.loc 2 1128 1
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
	.loc 2 1129 9
	sw	zero,-20(s0)
	.loc 2 1131 40
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 2 1131 20
	sw	a5,-32(s0)
	.loc 2 1132 34
	lw	a4,-32(s0)
	.loc 2 1132 52
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 2 1132 26
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1135 26
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 1135 32
	andi	a4,a5,223
	.loc 2 1135 8
	li	a5,128
	beq	a4,a5,.L173
	.loc 2 1141 16
	li	a5,-8192
	addi	a5,a5,-2048
	j	.L187
.L173:
	.loc 2 1144 16
	addi	a4,s0,-28
	addi	a5,s0,-32
	li	a3,6
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 1144 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L175
	.loc 2 1146 16
	li	a3,1146
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L187
.L175:
	.loc 2 1149 17
	li	a5,6
	sw	a5,-44(s0)
	.loc 2 1150 15
	lw	a5,-32(s0)
	sw	a5,-36(s0)
	.loc 2 1151 17
	lw	a5,-28(s0)
	sw	a5,-40(s0)
	.loc 2 1156 88
	lw	a4,-40(s0)
	.loc 2 1156 95
	li	a5,8
	bne	a4,a5,.L176
	.loc 2 1156 168 discriminator 2
	lw	a5,-36(s0)
	.loc 2 1156 98 discriminator 2
	lw	a4,-40(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC15)
	addi	a0,a5,%lo(.LC15)
	call	memcmp
	mv	a5,a0
	.loc 2 1156 95 discriminator 3
	beq	a5,zero,.L177
.L176:
	.loc 2 1156 95 is_stmt 0 discriminator 4
	li	a5,1
	.loc 2 1156 95
	j	.L178
.L177:
	.loc 2 1156 95 discriminator 5
	li	a5,0
.L178:
	.loc 2 1156 8 is_stmt 1 discriminator 7
	beq	a5,zero,.L179
	.loc 2 1157 16
	li	a5,-8192
	addi	a5,a5,-128
	j	.L187
.L179:
	.loc 2 1159 25
	lw	a5,-56(s0)
	lw	a4,-44(s0)
	sw	a4,0(a5)
	lw	a4,-40(s0)
	sw	a4,4(a5)
	lw	a4,-36(s0)
	sw	a4,8(a5)
	.loc 2 1161 7
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 1162 16
	addi	a4,s0,-28
	addi	a5,s0,-32
	li	a3,160
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 1162 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L180
	.loc 2 1165 16
	li	a3,1165
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L187
.L180:
	.loc 2 1168 18
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 2 1168 8
	lw	a4,-24(s0)
	beq	a4,a5,.L181
	.loc 2 1169 16
	li	a3,1169
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L187
.L181:
	.loc 2 1173 16
	addi	a4,s0,-28
	addi	a5,s0,-32
	li	a3,48
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 1173 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L182
	.loc 2 1175 16
	li	a3,1175
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L187
.L182:
	.loc 2 1178 18
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 2 1178 8
	lw	a4,-24(s0)
	beq	a4,a5,.L183
	.loc 2 1179 16
	li	a3,1179
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L187
.L183:
	.loc 2 1183 16
	addi	a4,s0,-28
	addi	a5,s0,-32
	li	a3,6
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 1183 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L184
	.loc 2 1184 16
	li	a3,1184
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L187
.L184:
	.loc 2 1187 52
	lw	a5,-56(s0)
	li	a4,6
	sw	a4,12(a5)
	.loc 2 1188 50
	lw	a4,-32(s0)
	lw	a5,-56(s0)
	sw	a4,20(a5)
	.loc 2 1189 52
	lw	a4,-28(s0)
	lw	a5,-56(s0)
	sw	a4,16(a5)
	.loc 2 1191 7
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 1192 16
	addi	a4,s0,-28
	addi	a5,s0,-32
	li	a3,4
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 1192 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L185
	.loc 2 1194 16
	li	a3,1194
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L187
.L185:
	.loc 2 1197 52
	lw	a5,-56(s0)
	li	a4,4
	sw	a4,24(a5)
	.loc 2 1198 50
	lw	a4,-32(s0)
	lw	a5,-56(s0)
	sw	a4,32(a5)
	.loc 2 1199 52
	lw	a4,-28(s0)
	lw	a5,-56(s0)
	sw	a4,28(a5)
	.loc 2 1200 7
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 1201 11
	lw	a5,-32(s0)
	.loc 2 1201 8
	lw	a4,-24(s0)
	beq	a4,a5,.L186
	.loc 2 1202 16
	li	a3,1202
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L187
.L186:
	.loc 2 1205 12
	li	a5,0
.L187:
	.loc 2 1206 1
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
.LFE100:
	.size	x509_get_other_name, .-x509_get_other_name
	.section	.text.mbedtls_x509_get_subject_alt_name_ext,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_get_subject_alt_name_ext
	.type	mbedtls_x509_get_subject_alt_name_ext, @function
mbedtls_x509_get_subject_alt_name_ext:
.LFB101:
	.loc 2 1216 1
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
	.loc 2 1217 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 2 1219 28
	lw	a5,-92(s0)
	sw	a5,-20(s0)
	.loc 2 1221 11
	j	.L189
.L198:
.LBB2:
	.loc 2 1224 9
	addi	a5,s0,-80
	li	a2,40
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 1226 28
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 2 1226 27
	lbu	a5,0(a5)
	.loc 2 1226 25
	sw	a5,-40(s0)
	.loc 2 1227 10
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 2 1227 13
	addi	a4,a5,1
	lw	a5,-84(s0)
	sw	a4,0(a5)
	.loc 2 1229 20
	addi	a5,s0,-28
	mv	a2,a5
	lw	a1,-88(s0)
	lw	a0,-84(s0)
	call	mbedtls_asn1_get_len
	sw	a0,-24(s0)
	.loc 2 1229 12 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L190
	.loc 2 1230 20
	li	a3,1230
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-24(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L200
.L190:
	.loc 2 1233 25
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 2 1233 23
	sw	a5,-32(s0)
	.loc 2 1234 25
	lw	a5,-28(s0)
	sw	a5,-36(s0)
	.loc 2 1236 25
	lw	a5,-40(s0)
	.loc 2 1236 30
	andi	a4,a5,192
	.loc 2 1236 12
	li	a5,128
	beq	a4,a5,.L192
	.loc 2 1238 20
	li	a3,1238
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-98
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L200
.L192:
	.loc 2 1246 15
	addi	a4,s0,-80
	addi	a5,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_x509_parse_subject_alt_name
	sw	a0,-24(s0)
	.loc 2 1251 12
	lw	a5,-24(s0)
	beq	a5,zero,.L193
	.loc 2 1251 22 discriminator 1
	lw	a4,-24(s0)
	li	a5,-8192
	addi	a5,a5,-128
	beq	a4,a5,.L193
	.loc 2 1252 56
	lw	a5,-92(s0)
	lw	a5,12(a5)
	.loc 2 1252 13
	mv	a0,a5
	call	mbedtls_asn1_sequence_free
	.loc 2 1253 36
	lw	a5,-92(s0)
	sw	zero,12(a5)
	.loc 2 1254 20
	lw	a5,-24(s0)
	j	.L200
.L193:
	.loc 2 1257 9
	addi	a5,s0,-80
	mv	a0,a5
	call	mbedtls_x509_free_subject_alt_name
	.loc 2 1259 21
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 1259 12
	beq	a5,zero,.L194
	.loc 2 1260 20
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 2 1260 16
	beq	a5,zero,.L195
	.loc 2 1261 24
	li	a5,-8192
	addi	a5,a5,-1280
	j	.L200
.L195:
	.loc 2 1264 25
	li	a1,16
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 2 1264 23 discriminator 1
	lw	a5,-20(s0)
	sw	a4,12(a5)
	.loc 2 1266 20
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 2 1266 16
	bne	a5,zero,.L196
	.loc 2 1267 24
	li	a3,1267
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-106
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L200
.L196:
	.loc 2 1271 17
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L194:
	.loc 2 1274 18
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	lw	a4,-36(s0)
	sw	a4,4(a5)
	lw	a4,-32(s0)
	sw	a4,8(a5)
	.loc 2 1275 9
	lw	a5,-84(s0)
	lw	a4,0(a5)
	.loc 2 1275 26
	lw	a5,-36(s0)
	.loc 2 1275 12
	add	a4,a4,a5
	lw	a5,-84(s0)
	sw	a4,0(a5)
.L189:
.LBE2:
	.loc 2 1221 12
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 2 1221 15
	lw	a4,-88(s0)
	bgtu	a4,a5,.L198
	.loc 2 1279 15
	lw	a5,-20(s0)
	sw	zero,12(a5)
	.loc 2 1281 9
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 2 1281 8
	lw	a4,-88(s0)
	beq	a4,a5,.L199
	.loc 2 1282 16
	li	a3,1282
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L200
.L199:
	.loc 2 1286 12
	li	a5,0
.L200:
	.loc 2 1287 1
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
.LFE101:
	.size	mbedtls_x509_get_subject_alt_name_ext, .-mbedtls_x509_get_subject_alt_name_ext
	.section	.text.mbedtls_x509_get_subject_alt_name,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_get_subject_alt_name
	.type	mbedtls_x509_get_subject_alt_name, @function
mbedtls_x509_get_subject_alt_name:
.LFB102:
	.loc 2 1320 1
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
	.loc 2 1321 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1325 16
	addi	a5,s0,-24
	li	a3,48
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 1325 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L202
	.loc 2 1327 16
	li	a3,1327
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L205
.L202:
	.loc 2 1330 9
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 1330 12
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 1330 8
	lw	a4,-40(s0)
	beq	a4,a5,.L204
	.loc 2 1331 16
	li	a3,1331
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L205
.L204:
	.loc 2 1335 12
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_x509_get_subject_alt_name_ext
	mv	a5,a0
.L205:
	.loc 2 1336 1
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
.LFE102:
	.size	mbedtls_x509_get_subject_alt_name, .-mbedtls_x509_get_subject_alt_name
	.section	.text.mbedtls_x509_get_ns_cert_type,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_get_ns_cert_type
	.type	mbedtls_x509_get_ns_cert_type, @function
mbedtls_x509_get_ns_cert_type:
.LFB103:
	.loc 2 1341 1
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
	.loc 2 1342 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1343 28
	sw	zero,-32(s0)
	sb	zero,-28(s0)
	sw	zero,-24(s0)
	.loc 2 1345 16
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_bitstring
	sw	a0,-20(s0)
	.loc 2 1345 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L207
	.loc 2 1346 16
	li	a3,1346
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L211
.L207:
	.loc 2 1351 11
	lw	a5,-32(s0)
	.loc 2 1351 8
	bne	a5,zero,.L209
	.loc 2 1352 23
	lw	a5,-44(s0)
	sb	zero,0(a5)
	.loc 2 1353 16
	li	a5,0
	j	.L211
.L209:
	.loc 2 1356 11
	lw	a4,-32(s0)
	.loc 2 1356 8
	li	a5,1
	beq	a4,a5,.L210
	.loc 2 1357 16
	li	a3,1357
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-100
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L211
.L210:
	.loc 2 1362 24
	lw	a5,-24(s0)
	.loc 2 1362 21
	lbu	a4,0(a5)
	.loc 2 1362 19
	lw	a5,-44(s0)
	sb	a4,0(a5)
	.loc 2 1363 12
	li	a5,0
.L211:
	.loc 2 1364 1
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
.LFE103:
	.size	mbedtls_x509_get_ns_cert_type, .-mbedtls_x509_get_ns_cert_type
	.section	.text.mbedtls_x509_get_key_usage,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_get_key_usage
	.type	mbedtls_x509_get_key_usage, @function
mbedtls_x509_get_key_usage:
.LFB104:
	.loc 2 1369 1
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
	.loc 2 1370 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 2 1372 28
	sw	zero,-36(s0)
	sb	zero,-32(s0)
	sw	zero,-28(s0)
	.loc 2 1374 16
	addi	a5,s0,-36
	mv	a2,a5
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_get_bitstring
	sw	a0,-24(s0)
	.loc 2 1374 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L213
	.loc 2 1375 16
	li	a3,1375
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-24(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L219
.L213:
	.loc 2 1380 11
	lw	a5,-36(s0)
	.loc 2 1380 8
	bne	a5,zero,.L215
	.loc 2 1381 20
	lw	a5,-60(s0)
	sw	zero,0(a5)
	.loc 2 1382 16
	li	a5,0
	j	.L219
.L215:
	.loc 2 1386 16
	lw	a5,-60(s0)
	sw	zero,0(a5)
	.loc 2 1387 12
	sw	zero,-20(s0)
	.loc 2 1387 5
	j	.L216
.L218:
	.loc 2 1388 9
	lw	a5,-60(s0)
	lw	a4,0(a5)
	.loc 2 1388 40
	lw	a3,-28(s0)
	.loc 2 1388 42
	lw	a5,-20(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 1388 23
	mv	a3,a5
	.loc 2 1388 51
	lw	a5,-20(s0)
	slli	a5,a5,3
	.loc 2 1388 46
	sll	a5,a3,a5
	.loc 2 1388 20
	or	a4,a4,a5
	lw	a5,-60(s0)
	sw	a4,0(a5)
	.loc 2 1387 58 discriminator 4
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L216:
	.loc 2 1387 23 discriminator 1
	lw	a5,-36(s0)
	.loc 2 1387 28 discriminator 1
	lw	a4,-20(s0)
	bgeu	a4,a5,.L217
	.loc 2 1387 28 is_stmt 0 discriminator 3
	lw	a4,-20(s0)
	li	a5,3
	bleu	a4,a5,.L218
.L217:
	.loc 2 1391 12 is_stmt 1
	li	a5,0
.L219:
	.loc 2 1392 1
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
	.size	mbedtls_x509_get_key_usage, .-mbedtls_x509_get_key_usage
	.section	.text.mbedtls_x509_parse_subject_alt_name,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_parse_subject_alt_name
	.type	mbedtls_x509_parse_subject_alt_name, @function
mbedtls_x509_parse_subject_alt_name:
.LFB105:
	.loc 2 1396 1
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
	.loc 2 1397 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1398 20
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 2 1398 26
	andi	a5,a5,223
	.loc 2 1398 5
	li	a4,135
	beq	a5,a4,.L221
	li	a4,135
	bgt	a5,a4,.L222
	li	a4,134
	beq	a5,a4,.L223
	li	a4,134
	bgt	a5,a4,.L222
	li	a4,132
	beq	a5,a4,.L224
	li	a4,132
	bgt	a5,a4,.L222
	li	a4,130
	beq	a5,a4,.L225
	li	a4,130
	bgt	a5,a4,.L222
	li	a4,128
	beq	a5,a4,.L226
	li	a4,129
	beq	a5,a4,.L227
	j	.L222
.L226:
.LBB3:
	.loc 2 1408 19
	addi	a5,s0,-64
	mv	a1,a5
	lw	a0,-68(s0)
	call	x509_get_other_name
	sw	a0,-20(s0)
	.loc 2 1409 16
	lw	a5,-20(s0)
	beq	a5,zero,.L228
	.loc 2 1410 24
	lw	a5,-20(s0)
	j	.L229
.L228:
	.loc 2 1413 13
	li	a2,40
	li	a1,0
	lw	a0,-72(s0)
	call	memset
	.loc 2 1414 23
	lw	a5,-72(s0)
	sw	zero,0(a5)
	.loc 2 1415 20
	lw	a5,-72(s0)
	addi	a5,a5,4
	.loc 2 1415 13
	addi	a4,s0,-64
	li	a2,36
	mv	a1,a4
	mv	a0,a5
	call	memcpy
.LBE3:
	.loc 2 1419 9
	j	.L230
.L223:
	.loc 2 1425 13
	li	a2,40
	li	a1,0
	lw	a0,-72(s0)
	call	memset
	.loc 2 1426 23
	lw	a5,-72(s0)
	li	a4,6
	sw	a4,0(a5)
	.loc 2 1428 20
	lw	a5,-72(s0)
	addi	a5,a5,4
	.loc 2 1428 13
	li	a2,12
	lw	a1,-68(s0)
	mv	a0,a5
	call	memcpy
	.loc 2 1432 9
	j	.L230
.L225:
	.loc 2 1438 13
	li	a2,40
	li	a1,0
	lw	a0,-72(s0)
	call	memset
	.loc 2 1439 23
	lw	a5,-72(s0)
	li	a4,2
	sw	a4,0(a5)
	.loc 2 1441 20
	lw	a5,-72(s0)
	addi	a5,a5,4
	.loc 2 1441 13
	li	a2,12
	lw	a1,-68(s0)
	mv	a0,a5
	call	memcpy
	.loc 2 1444 9
	j	.L230
.L221:
	.loc 2 1450 13
	li	a2,40
	li	a1,0
	lw	a0,-72(s0)
	call	memset
	.loc 2 1451 23
	lw	a5,-72(s0)
	li	a4,7
	sw	a4,0(a5)
	.loc 2 1453 24
	lw	a5,-68(s0)
	lw	a4,4(a5)
	.loc 2 1453 16
	li	a5,4
	beq	a4,a5,.L231
	.loc 2 1453 45 discriminator 1
	lw	a5,-68(s0)
	lw	a4,4(a5)
	.loc 2 1453 35 discriminator 1
	li	a5,16
	bne	a4,a5,.L232
.L231:
	.loc 2 1454 24
	lw	a5,-72(s0)
	addi	a5,a5,4
	.loc 2 1454 17
	li	a2,12
	lw	a1,-68(s0)
	mv	a0,a5
	call	memcpy
	.loc 2 1460 9
	j	.L230
.L232:
	.loc 2 1457 24
	li	a5,-8192
	addi	a5,a5,-2048
	j	.L229
.L227:
	.loc 2 1466 13
	li	a2,40
	li	a1,0
	lw	a0,-72(s0)
	call	memset
	.loc 2 1467 23
	lw	a5,-72(s0)
	li	a4,1
	sw	a4,0(a5)
	.loc 2 1468 20
	lw	a5,-72(s0)
	addi	a5,a5,4
	.loc 2 1468 13
	li	a2,12
	lw	a1,-68(s0)
	mv	a0,a5
	call	memcpy
	.loc 2 1470 9
	j	.L230
.L224:
.LBB4:
	.loc 2 1477 39
	lw	a5,-68(s0)
	lw	a5,8(a5)
	.loc 2 1477 28
	sw	a5,-28(s0)
	.loc 2 1478 13
	li	a2,40
	li	a1,0
	lw	a0,-72(s0)
	call	memset
	.loc 2 1479 23
	lw	a5,-72(s0)
	li	a4,4
	sw	a4,0(a5)
	.loc 2 1481 19
	lw	a4,-28(s0)
	.loc 2 1481 55
	lw	a5,-68(s0)
	lw	a5,4(a5)
	.loc 2 1481 46
	add	a4,a4,a5
	.loc 2 1481 19
	addi	a2,s0,-24
	addi	a5,s0,-28
	li	a3,48
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 1484 16
	lw	a5,-20(s0)
	beq	a5,zero,.L233
	.loc 2 1485 24
	lw	a5,-20(s0)
	j	.L229
.L233:
	.loc 2 1488 24
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	.loc 2 1488 52
	add	a4,a4,a5
	.loc 2 1488 24
	lw	a5,-72(s0)
	addi	a3,a5,4
	addi	a5,s0,-28
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_x509_get_name
	sw	a0,-20(s0)
	.loc 2 1488 16 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L236
	.loc 2 1490 24
	lw	a5,-20(s0)
	j	.L229
.L222:
.LBE4:
	.loc 2 1498 20
	li	a5,-8192
	addi	a5,a5,-128
	j	.L229
.L236:
	.loc 2 1493 9
	nop
.L230:
	.loc 2 1500 12
	li	a5,0
.L229:
	.loc 2 1501 1
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
.LFE105:
	.size	mbedtls_x509_parse_subject_alt_name, .-mbedtls_x509_parse_subject_alt_name
	.section	.text.mbedtls_x509_free_subject_alt_name,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_free_subject_alt_name
	.type	mbedtls_x509_free_subject_alt_name, @function
mbedtls_x509_free_subject_alt_name:
.LFB106:
	.loc 2 1504 1
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
	.loc 2 1505 12
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 1505 8
	li	a5,4
	bne	a4,a5,.L239
	.loc 2 1506 74
	lw	a5,-20(s0)
	lw	a5,28(a5)
	.loc 2 1506 9
	mv	a0,a5
	call	mbedtls_asn1_free_named_data_list_shallow
.L239:
	.loc 2 1508 1
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
	.size	mbedtls_x509_free_subject_alt_name, .-mbedtls_x509_free_subject_alt_name
	.section	.rodata
	.align	2
.LC16:
	.string	"\n%s    <unsupported>"
	.align	2
.LC17:
	.string	"\n%s    <malformed>"
	.align	2
.LC18:
	.string	"\n%s    otherName :"
	.align	2
.LC19:
	.string	"\n%s        hardware module name :"
	.align	2
.LC20:
	.string	"\n%s            hardware type          : "
	.align	2
.LC21:
	.string	"\n%s            hardware serial number : "
	.align	2
.LC22:
	.string	"%02X"
	.align	2
.LC23:
	.string	"\n%s    uniformResourceIdentifier : "
	.align	2
.LC24:
	.string	"dNSName"
	.align	2
.LC25:
	.string	"rfc822Name"
	.align	2
.LC26:
	.string	"\n%s    %s : "
	.align	2
.LC27:
	.string	"iPAddress"
	.align	2
.LC28:
	.string	"%u.%u.%u.%u"
	.align	2
.LC29:
	.string	"%X%X:%X%X:%X%X:%X%X:%X%X:%X%X:%X%X:%X%X"
	.align	2
.LC30:
	.string	"\n%s    directoryName : "
	.section	.text.mbedtls_x509_info_subject_alt_name,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_info_subject_alt_name
	.type	mbedtls_x509_info_subject_alt_name, @function
mbedtls_x509_info_subject_alt_name:
.LFB107:
	.loc 2 1515 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	sw	s1,148(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	sw	a2,-108(s0)
	sw	a3,-112(s0)
	.loc 2 1516 9
	li	a5,-110
	sw	a5,-36(s0)
	.loc 2 1518 12
	lw	a5,-104(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 1519 11
	lw	a5,-100(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 2 1520 34
	lw	a5,-108(s0)
	sw	a5,-32(s0)
	.loc 2 1524 11
	j	.L241
.L306:
	.loc 2 1525 9
	addi	a5,s0,-96
	li	a2,40
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 1526 57
	lw	a5,-32(s0)
	.loc 2 1526 21
	addi	a4,s0,-96
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_x509_parse_subject_alt_name
	sw	a0,-40(s0)
	.loc 2 1527 12
	lw	a5,-40(s0)
	beq	a5,zero,.L242
	.loc 2 1528 16
	lw	a4,-40(s0)
	li	a5,-8192
	addi	a5,a5,-128
	bne	a4,a5,.L243
	.loc 2 1529 23
	lw	a3,-112(s0)
	lui	a5,%hi(.LC16)
	addi	a2,a5,%lo(.LC16)
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	snprintf
	sw	a0,-36(s0)
	.loc 2 1530 25
	lw	a5,-36(s0)
	blt	a5,zero,.L244
	.loc 2 1530 37 discriminator 2
	lw	a5,-36(s0)
	.loc 2 1530 34 discriminator 2
	lw	a4,-24(s0)
	bgtu	a4,a5,.L245
.L244:
	.loc 2 1530 63 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1530 63 is_stmt 0
	j	.L307
.L245:
	.loc 2 1530 77 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1530 74 discriminator 4
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1530 96 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1530 93 discriminator 4
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	j	.L247
.L243:
	.loc 2 1532 23
	lw	a3,-112(s0)
	lui	a5,%hi(.LC17)
	addi	a2,a5,%lo(.LC17)
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	snprintf
	sw	a0,-36(s0)
	.loc 2 1533 25
	lw	a5,-36(s0)
	blt	a5,zero,.L248
	.loc 2 1533 37 discriminator 2
	lw	a5,-36(s0)
	.loc 2 1533 34 discriminator 2
	lw	a4,-24(s0)
	bgtu	a4,a5,.L249
.L248:
	.loc 2 1533 63 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1533 63 is_stmt 0
	j	.L307
.L249:
	.loc 2 1533 77 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1533 74 discriminator 4
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1533 96 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1533 93 discriminator 4
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
.L247:
	.loc 2 1535 17
	lw	a5,-32(s0)
	lw	a5,12(a5)
	sw	a5,-32(s0)
	.loc 2 1536 13
	j	.L241
.L242:
	.loc 2 1539 20
	lw	a5,-96(s0)
	.loc 2 1539 9
	li	a4,7
	beq	a5,a4,.L251
	li	a4,7
	bgt	a5,a4,.L252
	li	a4,6
	beq	a5,a4,.L253
	li	a4,6
	bgt	a5,a4,.L252
	li	a4,4
	beq	a5,a4,.L254
	li	a4,4
	bgt	a5,a4,.L252
	beq	a5,zero,.L255
	blt	a5,zero,.L252
	addi	a4,a5,-1
	li	a5,1
	bgtu	a4,a5,.L252
	j	.L308
.L255:
.LBB5:
	.loc 2 1545 46
	addi	a5,s0,-96
	addi	a5,a5,4
	sw	a5,-56(s0)
	.loc 2 1547 23
	lw	a3,-112(s0)
	lui	a5,%hi(.LC18)
	addi	a2,a5,%lo(.LC18)
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	snprintf
	sw	a0,-36(s0)
	.loc 2 1548 25
	lw	a5,-36(s0)
	blt	a5,zero,.L257
	.loc 2 1548 37 discriminator 2
	lw	a5,-36(s0)
	.loc 2 1548 34 discriminator 2
	lw	a4,-24(s0)
	bgtu	a4,a5,.L258
.L257:
	.loc 2 1548 63 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1548 63 is_stmt 0
	j	.L307
.L258:
	.loc 2 1548 77 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1548 74 discriminator 4
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1548 96 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1548 93 discriminator 4
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1550 112
	lw	a5,-56(s0)
	lw	a4,4(a5)
	.loc 2 1550 119
	li	a5,8
	bne	a4,a5,.L259
	.loc 2 1550 204 discriminator 2
	lw	a5,-56(s0)
	lw	a4,8(a5)
	.loc 2 1550 122 discriminator 2
	lw	a5,-56(s0)
	lw	a5,4(a5)
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC15)
	addi	a0,a5,%lo(.LC15)
	call	memcmp
	mv	a5,a0
	.loc 2 1550 119 discriminator 3
	beq	a5,zero,.L260
.L259:
	.loc 2 1550 119 is_stmt 0 discriminator 4
	li	a5,1
	.loc 2 1550 119
	j	.L261
.L260:
	.loc 2 1550 119 discriminator 5
	li	a5,0
.L261:
	.loc 2 1550 20 is_stmt 1 discriminator 7
	bne	a5,zero,.L309
	.loc 2 1552 27
	lw	a3,-112(s0)
	lui	a5,%hi(.LC19)
	addi	a2,a5,%lo(.LC19)
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	snprintf
	sw	a0,-36(s0)
	.loc 2 1553 29
	lw	a5,-36(s0)
	blt	a5,zero,.L263
	.loc 2 1553 41 discriminator 2
	lw	a5,-36(s0)
	.loc 2 1553 38 discriminator 2
	lw	a4,-24(s0)
	bgtu	a4,a5,.L264
.L263:
	.loc 2 1553 67 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1553 67 is_stmt 0
	j	.L307
.L264:
	.loc 2 1553 81 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1553 78 discriminator 4
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1553 100 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1553 97 discriminator 4
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1555 25
	lw	a3,-112(s0)
	lui	a5,%hi(.LC20)
	addi	a2,a5,%lo(.LC20)
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	snprintf
	sw	a0,-36(s0)
	.loc 2 1556 29
	lw	a5,-36(s0)
	blt	a5,zero,.L265
	.loc 2 1556 41 discriminator 2
	lw	a5,-36(s0)
	.loc 2 1556 38 discriminator 2
	lw	a4,-24(s0)
	bgtu	a4,a5,.L266
.L265:
	.loc 2 1556 67 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1556 67 is_stmt 0
	j	.L307
.L266:
	.loc 2 1556 81 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1556 78 discriminator 4
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1556 100 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1556 97 discriminator 4
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1560 58
	lw	a5,-56(s0)
	addi	a5,a5,12
	.loc 2 1558 27
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	mbedtls_oid_get_numeric_string
	sw	a0,-36(s0)
	.loc 2 1561 29
	lw	a5,-36(s0)
	blt	a5,zero,.L267
	.loc 2 1561 41 discriminator 2
	lw	a5,-36(s0)
	.loc 2 1561 38 discriminator 2
	lw	a4,-24(s0)
	bgtu	a4,a5,.L268
.L267:
	.loc 2 1561 67 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1561 67 is_stmt 0
	j	.L307
.L268:
	.loc 2 1561 81 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1561 78 discriminator 4
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1561 100 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1561 97 discriminator 4
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1564 25
	lw	a3,-112(s0)
	lui	a5,%hi(.LC21)
	addi	a2,a5,%lo(.LC21)
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	snprintf
	sw	a0,-36(s0)
	.loc 2 1565 29
	lw	a5,-36(s0)
	blt	a5,zero,.L269
	.loc 2 1565 41 discriminator 2
	lw	a5,-36(s0)
	.loc 2 1565 38 discriminator 2
	lw	a4,-24(s0)
	bgtu	a4,a5,.L270
.L269:
	.loc 2 1565 67 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1565 67 is_stmt 0
	j	.L307
.L270:
	.loc 2 1565 81 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1565 78 discriminator 4
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1565 100 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1565 97 discriminator 4
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1567 28
	sw	zero,-20(s0)
	.loc 2 1567 21
	j	.L271
.L274:
	.loc 2 1571 90
	lw	a5,-56(s0)
	lw	a4,32(a5)
	.loc 2 1571 92
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 2 1568 31
	mv	a3,a5
	lui	a5,%hi(.LC22)
	addi	a2,a5,%lo(.LC22)
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	snprintf
	sw	a0,-36(s0)
	.loc 2 1572 33
	lw	a5,-36(s0)
	blt	a5,zero,.L272
	.loc 2 1572 45 discriminator 2
	lw	a5,-36(s0)
	.loc 2 1572 42 discriminator 2
	lw	a4,-24(s0)
	bgtu	a4,a5,.L273
.L272:
	.loc 2 1572 71 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1572 71 is_stmt 0
	j	.L307
.L273:
	.loc 2 1572 85 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1572 82 discriminator 4
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1572 104 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1572 101 discriminator 4
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1567 86 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L271:
	.loc 2 1567 79 discriminator 1
	lw	a5,-56(s0)
	lw	a5,28(a5)
	.loc 2 1567 35 discriminator 1
	lw	a4,-20(s0)
	bltu	a4,a5,.L274
.LBE5:
	.loc 2 1576 13
	j	.L309
.L253:
	.loc 2 1582 23
	lw	a3,-112(s0)
	lui	a5,%hi(.LC23)
	addi	a2,a5,%lo(.LC23)
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	snprintf
	sw	a0,-36(s0)
	.loc 2 1583 25
	lw	a5,-36(s0)
	blt	a5,zero,.L276
	.loc 2 1583 37 discriminator 2
	lw	a5,-36(s0)
	.loc 2 1583 34 discriminator 2
	lw	a4,-24(s0)
	bgtu	a4,a5,.L277
.L276:
	.loc 2 1583 63 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1583 63 is_stmt 0
	j	.L307
.L277:
	.loc 2 1583 77 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1583 74 discriminator 4
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1583 96 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1583 93 discriminator 4
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1584 46
	lw	a5,-88(s0)
	.loc 2 1584 20
	lw	a4,-24(s0)
	bgtu	a4,a5,.L278
	.loc 2 1585 24
	lw	a5,-24(s0)
	beq	a5,zero,.L279
	.loc 2 1586 28
	lw	a5,-28(s0)
	sb	zero,0(a5)
.L279:
	.loc 2 1588 28
	li	a5,-12288
	addi	a5,a5,1664
	j	.L307
.L278:
	.loc 2 1591 52
	lw	a5,-84(s0)
	.loc 2 1591 17
	lw	a4,-88(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-28(s0)
	call	memcpy
	.loc 2 1592 47
	lw	a5,-88(s0)
	.loc 2 1592 19
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1593 47
	lw	a5,-88(s0)
	.loc 2 1593 19
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1595 13
	j	.L275
.L308:
.LBB6:
	.loc 2 1603 29
	lui	a5,%hi(.LC24)
	addi	a5,a5,%lo(.LC24)
	sw	a5,-48(s0)
	.loc 2 1604 29
	lui	a5,%hi(.LC25)
	addi	a5,a5,%lo(.LC25)
	sw	a5,-52(s0)
	.loc 2 1609 43
	lw	a4,-96(s0)
	.loc 2 1606 23
	li	a5,2
	bne	a4,a5,.L280
	.loc 2 1606 23 is_stmt 0 discriminator 1
	lw	a5,-48(s0)
	j	.L281
.L280:
	.loc 2 1606 23 discriminator 2
	lw	a5,-52(s0)
.L281:
	.loc 2 1606 23 discriminator 4
	mv	a4,a5
	lw	a3,-112(s0)
	lui	a5,%hi(.LC26)
	addi	a2,a5,%lo(.LC26)
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	snprintf
	sw	a0,-36(s0)
	.loc 2 1611 25 is_stmt 1
	lw	a5,-36(s0)
	blt	a5,zero,.L282
	.loc 2 1611 37 discriminator 2
	lw	a5,-36(s0)
	.loc 2 1611 34 discriminator 2
	lw	a4,-24(s0)
	bgtu	a4,a5,.L283
.L282:
	.loc 2 1611 63 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1611 63 is_stmt 0
	j	.L307
.L283:
	.loc 2 1611 77 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1611 74 discriminator 4
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1611 96 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1611 93 discriminator 4
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1612 46
	lw	a5,-88(s0)
	.loc 2 1612 20
	lw	a4,-24(s0)
	bgtu	a4,a5,.L284
	.loc 2 1613 24
	lw	a5,-24(s0)
	beq	a5,zero,.L285
	.loc 2 1614 28
	lw	a5,-28(s0)
	sb	zero,0(a5)
.L285:
	.loc 2 1616 28
	li	a5,-12288
	addi	a5,a5,1664
	j	.L307
.L284:
	.loc 2 1619 52
	lw	a5,-84(s0)
	.loc 2 1619 17
	lw	a4,-88(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-28(s0)
	call	memcpy
	.loc 2 1620 47
	lw	a5,-88(s0)
	.loc 2 1620 19
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1621 47
	lw	a5,-88(s0)
	.loc 2 1621 19
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
.LBE6:
	.loc 2 1623 13
	j	.L275
.L251:
.LBB7:
	.loc 2 1629 23
	lui	a5,%hi(.LC27)
	addi	a4,a5,%lo(.LC27)
	lw	a3,-112(s0)
	lui	a5,%hi(.LC26)
	addi	a2,a5,%lo(.LC26)
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	snprintf
	sw	a0,-36(s0)
	.loc 2 1631 25
	lw	a5,-36(s0)
	blt	a5,zero,.L286
	.loc 2 1631 37 discriminator 2
	lw	a5,-36(s0)
	.loc 2 1631 34 discriminator 2
	lw	a4,-24(s0)
	bgtu	a4,a5,.L287
.L286:
	.loc 2 1631 63 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1631 63 is_stmt 0
	j	.L307
.L287:
	.loc 2 1631 77 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1631 74 discriminator 4
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1631 96 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1631 93 discriminator 4
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1632 46
	lw	a5,-88(s0)
	.loc 2 1632 20
	lw	a4,-24(s0)
	bgtu	a4,a5,.L288
	.loc 2 1633 24
	lw	a5,-24(s0)
	beq	a5,zero,.L289
	.loc 2 1634 28
	lw	a5,-28(s0)
	sb	zero,0(a5)
.L289:
	.loc 2 1636 28
	li	a5,-12288
	addi	a5,a5,1664
	j	.L307
.L288:
	.loc 2 1639 32
	lw	a5,-84(s0)
	sw	a5,-44(s0)
	.loc 2 1641 46
	lw	a4,-88(s0)
	.loc 2 1641 20
	li	a5,4
	bne	a4,a5,.L290
	.loc 2 1642 59
	lw	a5,-44(s0)
	lbu	a5,0(a5)
	.loc 2 1642 27
	mv	a3,a5
	.loc 2 1642 66
	lw	a5,-44(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 2 1642 27
	mv	a4,a5
	.loc 2 1642 73
	lw	a5,-44(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 2 1642 27
	mv	a2,a5
	.loc 2 1642 80
	lw	a5,-44(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 2 1642 27
	mv	a6,a5
	mv	a5,a2
	lui	a2,%hi(.LC28)
	addi	a2,a2,%lo(.LC28)
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	snprintf
	sw	a0,-36(s0)
	.loc 2 1643 29
	lw	a5,-36(s0)
	blt	a5,zero,.L291
	.loc 2 1643 41 discriminator 2
	lw	a5,-36(s0)
	.loc 2 1643 38 discriminator 2
	lw	a4,-24(s0)
	bgtu	a4,a5,.L292
.L291:
	.loc 2 1643 67 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1643 67 is_stmt 0
	j	.L307
.L292:
	.loc 2 1643 81 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1643 78 discriminator 4
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1643 100 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1643 97 discriminator 4
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
.LBE7:
	.loc 2 1658 13
	j	.L275
.L290:
.LBB8:
	.loc 2 1644 53
	lw	a4,-88(s0)
	.loc 2 1644 27
	li	a5,16
	bne	a4,a5,.L294
	.loc 2 1647 46
	lw	a5,-44(s0)
	lbu	a5,0(a5)
	.loc 2 1645 27
	mv	t5,a5
	.loc 2 1647 53
	lw	a5,-44(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 2 1645 27
	mv	t6,a5
	.loc 2 1647 60
	lw	a5,-44(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 2 1645 27
	mv	t0,a5
	.loc 2 1647 67
	lw	a5,-44(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 2 1645 27
	mv	t2,a5
	.loc 2 1647 74
	lw	a5,-44(s0)
	addi	a5,a5,4
	lbu	a5,0(a5)
	.loc 2 1645 27
	mv	s1,a5
	.loc 2 1647 81
	lw	a5,-44(s0)
	addi	a5,a5,5
	lbu	a5,0(a5)
	.loc 2 1645 27
	mv	a4,a5
	.loc 2 1647 88
	lw	a5,-44(s0)
	addi	a5,a5,6
	lbu	a5,0(a5)
	.loc 2 1645 27
	mv	a3,a5
	.loc 2 1648 46
	lw	a5,-44(s0)
	addi	a5,a5,7
	lbu	a5,0(a5)
	.loc 2 1645 27
	mv	a2,a5
	.loc 2 1648 53
	lw	a5,-44(s0)
	addi	a5,a5,8
	lbu	a5,0(a5)
	.loc 2 1645 27
	mv	a1,a5
	.loc 2 1648 60
	lw	a5,-44(s0)
	addi	a5,a5,9
	lbu	a5,0(a5)
	.loc 2 1645 27
	mv	a0,a5
	.loc 2 1648 67
	lw	a5,-44(s0)
	addi	a5,a5,10
	lbu	a5,0(a5)
	.loc 2 1645 27
	mv	a6,a5
	.loc 2 1648 75
	lw	a5,-44(s0)
	addi	a5,a5,11
	lbu	a5,0(a5)
	.loc 2 1645 27
	mv	a7,a5
	.loc 2 1648 83
	lw	a5,-44(s0)
	addi	a5,a5,12
	lbu	a5,0(a5)
	.loc 2 1645 27
	mv	t1,a5
	.loc 2 1648 91
	lw	a5,-44(s0)
	addi	a5,a5,13
	lbu	a5,0(a5)
	.loc 2 1645 27
	mv	t3,a5
	.loc 2 1649 46
	lw	a5,-44(s0)
	addi	a5,a5,14
	lbu	a5,0(a5)
	.loc 2 1645 27
	mv	t4,a5
	.loc 2 1649 54
	lw	a5,-44(s0)
	addi	a5,a5,15
	lbu	a5,0(a5)
	.loc 2 1645 27
	sw	a5,40(sp)
	sw	t4,36(sp)
	sw	t3,32(sp)
	sw	t1,28(sp)
	sw	a7,24(sp)
	sw	a6,20(sp)
	sw	a0,16(sp)
	sw	a1,12(sp)
	sw	a2,8(sp)
	sw	a3,4(sp)
	sw	a4,0(sp)
	mv	a7,s1
	mv	a6,t2
	mv	a5,t0
	mv	a4,t6
	mv	a3,t5
	lui	a2,%hi(.LC29)
	addi	a2,a2,%lo(.LC29)
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	snprintf
	sw	a0,-36(s0)
	.loc 2 1650 29
	lw	a5,-36(s0)
	blt	a5,zero,.L295
	.loc 2 1650 41 discriminator 2
	lw	a5,-36(s0)
	.loc 2 1650 38 discriminator 2
	lw	a4,-24(s0)
	bgtu	a4,a5,.L296
.L295:
	.loc 2 1650 67 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1650 67 is_stmt 0
	j	.L307
.L296:
	.loc 2 1650 81 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1650 78 discriminator 4
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1650 100 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1650 97 discriminator 4
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
.LBE8:
	.loc 2 1658 13
	j	.L275
.L294:
.LBB9:
	.loc 2 1652 24
	lw	a5,-24(s0)
	beq	a5,zero,.L297
	.loc 2 1653 28
	lw	a5,-28(s0)
	sb	zero,0(a5)
.L297:
	.loc 2 1655 28
	li	a5,-8192
	addi	a5,a5,-2048
	j	.L307
.L254:
.LBE9:
	.loc 2 1664 23
	lw	a3,-112(s0)
	lui	a5,%hi(.LC30)
	addi	a2,a5,%lo(.LC30)
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	snprintf
	sw	a0,-36(s0)
	.loc 2 1665 20
	lw	a5,-36(s0)
	blt	a5,zero,.L298
	.loc 2 1665 32 discriminator 1
	lw	a5,-36(s0)
	.loc 2 1665 29 discriminator 1
	lw	a4,-24(s0)
	bgtu	a4,a5,.L299
.L298:
	.loc 2 1666 21
	addi	a5,s0,-96
	mv	a0,a5
	call	mbedtls_x509_free_subject_alt_name
.L299:
	.loc 2 1669 25
	lw	a5,-36(s0)
	blt	a5,zero,.L300
	.loc 2 1669 37 discriminator 2
	lw	a5,-36(s0)
	.loc 2 1669 34 discriminator 2
	lw	a4,-24(s0)
	bgtu	a4,a5,.L301
.L300:
	.loc 2 1669 63 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1669 63 is_stmt 0
	j	.L307
.L301:
	.loc 2 1669 77 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1669 74 discriminator 4
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1669 96 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1669 93 discriminator 4
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1670 23
	addi	a5,s0,-96
	addi	a5,a5,4
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	mbedtls_x509_dn_gets
	sw	a0,-36(s0)
	.loc 2 1672 20
	lw	a5,-36(s0)
	bge	a5,zero,.L302
	.loc 2 1673 21
	addi	a5,s0,-96
	mv	a0,a5
	call	mbedtls_x509_free_subject_alt_name
	.loc 2 1674 24
	lw	a5,-24(s0)
	beq	a5,zero,.L303
	.loc 2 1675 28
	lw	a5,-28(s0)
	sb	zero,0(a5)
.L303:
	.loc 2 1677 28
	lw	a5,-36(s0)
	j	.L307
.L302:
	.loc 2 1680 19
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1681 19
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1683 13
	j	.L275
.L252:
	.loc 2 1688 23
	lw	a3,-112(s0)
	lui	a5,%hi(.LC16)
	addi	a2,a5,%lo(.LC16)
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	snprintf
	sw	a0,-36(s0)
	.loc 2 1689 25
	lw	a5,-36(s0)
	blt	a5,zero,.L304
	.loc 2 1689 37 discriminator 2
	lw	a5,-36(s0)
	.loc 2 1689 34 discriminator 2
	lw	a4,-24(s0)
	bgtu	a4,a5,.L305
.L304:
	.loc 2 1689 63 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1689 63 is_stmt 0
	j	.L307
.L305:
	.loc 2 1689 77 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1689 74 discriminator 4
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1689 96 discriminator 4
	lw	a5,-36(s0)
	.loc 2 1689 93 discriminator 4
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1690 17
	j	.L275
.L309:
	.loc 2 1576 13
	nop
.L275:
	.loc 2 1695 9
	addi	a5,s0,-96
	mv	a0,a5
	call	mbedtls_x509_free_subject_alt_name
	.loc 2 1696 13
	lw	a5,-32(s0)
	lw	a5,12(a5)
	sw	a5,-32(s0)
.L241:
	.loc 2 1524 16
	lw	a5,-32(s0)
	bne	a5,zero,.L306
	.loc 2 1699 8
	lw	a5,-28(s0)
	sb	zero,0(a5)
	.loc 2 1701 11
	lw	a5,-104(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 2 1702 10
	lw	a5,-100(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 2 1704 12
	li	a5,0
.L307:
	.loc 2 1705 1
	mv	a0,a5
	lw	ra,156(sp)
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	lw	s1,148(sp)
	.cfi_restore 9
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE107:
	.size	mbedtls_x509_info_subject_alt_name, .-mbedtls_x509_info_subject_alt_name
	.section	.rodata
	.align	2
.LC31:
	.string	"%sSSL Client"
	.align	2
.LC32:
	.string	"%sSSL Server"
	.align	2
.LC33:
	.string	"%sEmail"
	.align	2
.LC34:
	.string	"%sObject Signing"
	.align	2
.LC35:
	.string	"%sReserved"
	.align	2
.LC36:
	.string	"%sSSL CA"
	.align	2
.LC37:
	.string	"%sEmail CA"
	.align	2
.LC38:
	.string	"%sObject Signing CA"
	.section	.text.mbedtls_x509_info_cert_type,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_info_cert_type
	.type	mbedtls_x509_info_cert_type, @function
mbedtls_x509_info_cert_type:
.LFB108:
	.loc 2 1723 1
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
	mv	a5,a2
	sb	a5,-41(s0)
	.loc 2 1724 9
	li	a5,-110
	sw	a5,-32(s0)
	.loc 2 1725 12
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 2 1726 11
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 1727 17
	lui	a5,%hi(.LC10)
	addi	a5,a5,%lo(.LC10)
	sw	a5,-28(s0)
	.loc 2 1729 14
	lb	a5,-41(s0)
	.loc 2 1729 13
	bge	a5,zero,.L311
	.loc 2 1729 52 discriminator 1
	lw	a3,-28(s0)
	lui	a5,%hi(.LC31)
	addi	a2,a5,%lo(.LC31)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 1729 100 discriminator 2
	lw	a5,-32(s0)
	blt	a5,zero,.L312
	.loc 2 1729 112 discriminator 4
	lw	a5,-32(s0)
	.loc 2 1729 109 discriminator 4
	lw	a4,-20(s0)
	bgtu	a4,a5,.L313
.L312:
	.loc 2 1729 138 discriminator 5
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1729 138 is_stmt 0
	j	.L314
.L313:
	.loc 2 1729 152 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1729 149 discriminator 6
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1729 171 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1729 168 discriminator 6
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1729 202 discriminator 6
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-28(s0)
.L311:
	.loc 2 1730 27
	lbu	a5,-41(s0)
	andi	a5,a5,64
	.loc 2 1730 13
	beq	a5,zero,.L315
	.loc 2 1730 52 discriminator 1
	lw	a3,-28(s0)
	lui	a5,%hi(.LC32)
	addi	a2,a5,%lo(.LC32)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 1730 100 discriminator 2
	lw	a5,-32(s0)
	blt	a5,zero,.L316
	.loc 2 1730 112 discriminator 4
	lw	a5,-32(s0)
	.loc 2 1730 109 discriminator 4
	lw	a4,-20(s0)
	bgtu	a4,a5,.L317
.L316:
	.loc 2 1730 138 discriminator 5
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1730 138 is_stmt 0
	j	.L314
.L317:
	.loc 2 1730 152 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1730 149 discriminator 6
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1730 171 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1730 168 discriminator 6
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1730 202 discriminator 6
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-28(s0)
.L315:
	.loc 2 1731 27
	lbu	a5,-41(s0)
	andi	a5,a5,32
	.loc 2 1731 13
	beq	a5,zero,.L318
	.loc 2 1731 52 discriminator 1
	lw	a3,-28(s0)
	lui	a5,%hi(.LC33)
	addi	a2,a5,%lo(.LC33)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 1731 95 discriminator 2
	lw	a5,-32(s0)
	blt	a5,zero,.L319
	.loc 2 1731 107 discriminator 4
	lw	a5,-32(s0)
	.loc 2 1731 104 discriminator 4
	lw	a4,-20(s0)
	bgtu	a4,a5,.L320
.L319:
	.loc 2 1731 133 discriminator 5
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1731 133 is_stmt 0
	j	.L314
.L320:
	.loc 2 1731 147 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1731 144 discriminator 6
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1731 166 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1731 163 discriminator 6
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1731 197 discriminator 6
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-28(s0)
.L318:
	.loc 2 1732 27
	lbu	a5,-41(s0)
	andi	a5,a5,16
	.loc 2 1732 13
	beq	a5,zero,.L321
	.loc 2 1732 52 discriminator 1
	lw	a3,-28(s0)
	lui	a5,%hi(.LC34)
	addi	a2,a5,%lo(.LC34)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 1732 104 discriminator 2
	lw	a5,-32(s0)
	blt	a5,zero,.L322
	.loc 2 1732 116 discriminator 4
	lw	a5,-32(s0)
	.loc 2 1732 113 discriminator 4
	lw	a4,-20(s0)
	bgtu	a4,a5,.L323
.L322:
	.loc 2 1732 142 discriminator 5
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1732 142 is_stmt 0
	j	.L314
.L323:
	.loc 2 1732 156 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1732 153 discriminator 6
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1732 175 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1732 172 discriminator 6
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1732 206 discriminator 6
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-28(s0)
.L321:
	.loc 2 1733 27
	lbu	a5,-41(s0)
	andi	a5,a5,8
	.loc 2 1733 13
	beq	a5,zero,.L324
	.loc 2 1733 52 discriminator 1
	lw	a3,-28(s0)
	lui	a5,%hi(.LC35)
	addi	a2,a5,%lo(.LC35)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 1733 98 discriminator 2
	lw	a5,-32(s0)
	blt	a5,zero,.L325
	.loc 2 1733 110 discriminator 4
	lw	a5,-32(s0)
	.loc 2 1733 107 discriminator 4
	lw	a4,-20(s0)
	bgtu	a4,a5,.L326
.L325:
	.loc 2 1733 136 discriminator 5
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1733 136 is_stmt 0
	j	.L314
.L326:
	.loc 2 1733 150 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1733 147 discriminator 6
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1733 169 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1733 166 discriminator 6
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1733 200 discriminator 6
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-28(s0)
.L324:
	.loc 2 1734 27
	lbu	a5,-41(s0)
	andi	a5,a5,4
	.loc 2 1734 13
	beq	a5,zero,.L327
	.loc 2 1734 52 discriminator 1
	lw	a3,-28(s0)
	lui	a5,%hi(.LC36)
	addi	a2,a5,%lo(.LC36)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 1734 96 discriminator 2
	lw	a5,-32(s0)
	blt	a5,zero,.L328
	.loc 2 1734 108 discriminator 4
	lw	a5,-32(s0)
	.loc 2 1734 105 discriminator 4
	lw	a4,-20(s0)
	bgtu	a4,a5,.L329
.L328:
	.loc 2 1734 134 discriminator 5
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1734 134 is_stmt 0
	j	.L314
.L329:
	.loc 2 1734 148 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1734 145 discriminator 6
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1734 167 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1734 164 discriminator 6
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1734 198 discriminator 6
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-28(s0)
.L327:
	.loc 2 1735 27
	lbu	a5,-41(s0)
	andi	a5,a5,2
	.loc 2 1735 13
	beq	a5,zero,.L330
	.loc 2 1735 52 discriminator 1
	lw	a3,-28(s0)
	lui	a5,%hi(.LC37)
	addi	a2,a5,%lo(.LC37)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 1735 98 discriminator 2
	lw	a5,-32(s0)
	blt	a5,zero,.L331
	.loc 2 1735 110 discriminator 4
	lw	a5,-32(s0)
	.loc 2 1735 107 discriminator 4
	lw	a4,-20(s0)
	bgtu	a4,a5,.L332
.L331:
	.loc 2 1735 136 discriminator 5
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1735 136 is_stmt 0
	j	.L314
.L332:
	.loc 2 1735 150 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1735 147 discriminator 6
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1735 169 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1735 166 discriminator 6
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1735 200 discriminator 6
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-28(s0)
.L330:
	.loc 2 1736 27
	lbu	a5,-41(s0)
	andi	a5,a5,1
	.loc 2 1736 13
	beq	a5,zero,.L333
	.loc 2 1736 52 discriminator 1
	lw	a3,-28(s0)
	lui	a5,%hi(.LC38)
	addi	a2,a5,%lo(.LC38)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 1736 107 discriminator 2
	lw	a5,-32(s0)
	blt	a5,zero,.L334
	.loc 2 1736 119 discriminator 4
	lw	a5,-32(s0)
	.loc 2 1736 116 discriminator 4
	lw	a4,-20(s0)
	bgtu	a4,a5,.L335
.L334:
	.loc 2 1736 145 discriminator 5
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1736 145 is_stmt 0
	j	.L314
.L335:
	.loc 2 1736 159 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1736 156 discriminator 6
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1736 178 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1736 175 discriminator 6
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1736 209 discriminator 6
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-28(s0)
.L333:
	.loc 2 1738 11
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 2 1739 10
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 2 1741 12
	li	a5,0
.L314:
	.loc 2 1742 1
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
.LFE108:
	.size	mbedtls_x509_info_cert_type, .-mbedtls_x509_info_cert_type
	.section	.rodata
	.align	2
.LC39:
	.string	"%sDigital Signature"
	.align	2
.LC40:
	.string	"%sNon Repudiation"
	.align	2
.LC41:
	.string	"%sKey Encipherment"
	.align	2
.LC42:
	.string	"%sData Encipherment"
	.align	2
.LC43:
	.string	"%sKey Agreement"
	.align	2
.LC44:
	.string	"%sKey Cert Sign"
	.align	2
.LC45:
	.string	"%sCRL Sign"
	.align	2
.LC46:
	.string	"%sEncipher Only"
	.align	2
.LC47:
	.string	"%sDecipher Only"
	.section	.text.mbedtls_x509_info_key_usage,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_info_key_usage
	.type	mbedtls_x509_info_key_usage, @function
mbedtls_x509_info_key_usage:
.LFB109:
	.loc 2 1753 1
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
	.loc 2 1754 9
	li	a5,-110
	sw	a5,-32(s0)
	.loc 2 1755 12
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 2 1756 11
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 1757 17
	lui	a5,%hi(.LC10)
	addi	a5,a5,%lo(.LC10)
	sw	a5,-28(s0)
	.loc 2 1759 26
	lw	a5,-44(s0)
	andi	a5,a5,128
	.loc 2 1759 13
	beq	a5,zero,.L337
	.loc 2 1759 51 discriminator 1
	lw	a3,-28(s0)
	lui	a5,%hi(.LC39)
	addi	a2,a5,%lo(.LC39)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 1759 106 discriminator 2
	lw	a5,-32(s0)
	blt	a5,zero,.L338
	.loc 2 1759 118 discriminator 4
	lw	a5,-32(s0)
	.loc 2 1759 115 discriminator 4
	lw	a4,-20(s0)
	bgtu	a4,a5,.L339
.L338:
	.loc 2 1759 144 discriminator 5
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1759 144 is_stmt 0
	j	.L340
.L339:
	.loc 2 1759 158 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1759 155 discriminator 6
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1759 177 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1759 174 discriminator 6
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1759 208 discriminator 6
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-28(s0)
.L337:
	.loc 2 1760 26
	lw	a5,-44(s0)
	andi	a5,a5,64
	.loc 2 1760 13
	beq	a5,zero,.L341
	.loc 2 1760 51 discriminator 1
	lw	a3,-28(s0)
	lui	a5,%hi(.LC40)
	addi	a2,a5,%lo(.LC40)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 1760 104 discriminator 2
	lw	a5,-32(s0)
	blt	a5,zero,.L342
	.loc 2 1760 116 discriminator 4
	lw	a5,-32(s0)
	.loc 2 1760 113 discriminator 4
	lw	a4,-20(s0)
	bgtu	a4,a5,.L343
.L342:
	.loc 2 1760 142 discriminator 5
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1760 142 is_stmt 0
	j	.L340
.L343:
	.loc 2 1760 156 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1760 153 discriminator 6
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1760 175 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1760 172 discriminator 6
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1760 206 discriminator 6
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-28(s0)
.L341:
	.loc 2 1761 26
	lw	a5,-44(s0)
	andi	a5,a5,32
	.loc 2 1761 13
	beq	a5,zero,.L344
	.loc 2 1761 51 discriminator 1
	lw	a3,-28(s0)
	lui	a5,%hi(.LC41)
	addi	a2,a5,%lo(.LC41)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 1761 105 discriminator 2
	lw	a5,-32(s0)
	blt	a5,zero,.L345
	.loc 2 1761 117 discriminator 4
	lw	a5,-32(s0)
	.loc 2 1761 114 discriminator 4
	lw	a4,-20(s0)
	bgtu	a4,a5,.L346
.L345:
	.loc 2 1761 143 discriminator 5
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1761 143 is_stmt 0
	j	.L340
.L346:
	.loc 2 1761 157 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1761 154 discriminator 6
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1761 176 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1761 173 discriminator 6
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1761 207 discriminator 6
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-28(s0)
.L344:
	.loc 2 1762 26
	lw	a5,-44(s0)
	andi	a5,a5,16
	.loc 2 1762 13
	beq	a5,zero,.L347
	.loc 2 1762 51 discriminator 1
	lw	a3,-28(s0)
	lui	a5,%hi(.LC42)
	addi	a2,a5,%lo(.LC42)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 1762 106 discriminator 2
	lw	a5,-32(s0)
	blt	a5,zero,.L348
	.loc 2 1762 118 discriminator 4
	lw	a5,-32(s0)
	.loc 2 1762 115 discriminator 4
	lw	a4,-20(s0)
	bgtu	a4,a5,.L349
.L348:
	.loc 2 1762 144 discriminator 5
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1762 144 is_stmt 0
	j	.L340
.L349:
	.loc 2 1762 158 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1762 155 discriminator 6
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1762 177 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1762 174 discriminator 6
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1762 208 discriminator 6
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-28(s0)
.L347:
	.loc 2 1763 26
	lw	a5,-44(s0)
	andi	a5,a5,8
	.loc 2 1763 13
	beq	a5,zero,.L350
	.loc 2 1763 51 discriminator 1
	lw	a3,-28(s0)
	lui	a5,%hi(.LC43)
	addi	a2,a5,%lo(.LC43)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 1763 102 discriminator 2
	lw	a5,-32(s0)
	blt	a5,zero,.L351
	.loc 2 1763 114 discriminator 4
	lw	a5,-32(s0)
	.loc 2 1763 111 discriminator 4
	lw	a4,-20(s0)
	bgtu	a4,a5,.L352
.L351:
	.loc 2 1763 140 discriminator 5
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1763 140 is_stmt 0
	j	.L340
.L352:
	.loc 2 1763 154 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1763 151 discriminator 6
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1763 173 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1763 170 discriminator 6
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1763 204 discriminator 6
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-28(s0)
.L350:
	.loc 2 1764 26
	lw	a5,-44(s0)
	andi	a5,a5,4
	.loc 2 1764 13
	beq	a5,zero,.L353
	.loc 2 1764 51 discriminator 1
	lw	a3,-28(s0)
	lui	a5,%hi(.LC44)
	addi	a2,a5,%lo(.LC44)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 1764 102 discriminator 2
	lw	a5,-32(s0)
	blt	a5,zero,.L354
	.loc 2 1764 114 discriminator 4
	lw	a5,-32(s0)
	.loc 2 1764 111 discriminator 4
	lw	a4,-20(s0)
	bgtu	a4,a5,.L355
.L354:
	.loc 2 1764 140 discriminator 5
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1764 140 is_stmt 0
	j	.L340
.L355:
	.loc 2 1764 154 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1764 151 discriminator 6
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1764 173 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1764 170 discriminator 6
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1764 204 discriminator 6
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-28(s0)
.L353:
	.loc 2 1765 26
	lw	a5,-44(s0)
	andi	a5,a5,2
	.loc 2 1765 13
	beq	a5,zero,.L356
	.loc 2 1765 51 discriminator 1
	lw	a3,-28(s0)
	lui	a5,%hi(.LC45)
	addi	a2,a5,%lo(.LC45)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 1765 97 discriminator 2
	lw	a5,-32(s0)
	blt	a5,zero,.L357
	.loc 2 1765 109 discriminator 4
	lw	a5,-32(s0)
	.loc 2 1765 106 discriminator 4
	lw	a4,-20(s0)
	bgtu	a4,a5,.L358
.L357:
	.loc 2 1765 135 discriminator 5
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1765 135 is_stmt 0
	j	.L340
.L358:
	.loc 2 1765 149 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1765 146 discriminator 6
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1765 168 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1765 165 discriminator 6
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1765 199 discriminator 6
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-28(s0)
.L356:
	.loc 2 1766 26
	lw	a5,-44(s0)
	andi	a5,a5,1
	.loc 2 1766 13
	beq	a5,zero,.L359
	.loc 2 1766 51 discriminator 1
	lw	a3,-28(s0)
	lui	a5,%hi(.LC46)
	addi	a2,a5,%lo(.LC46)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 1766 102 discriminator 2
	lw	a5,-32(s0)
	blt	a5,zero,.L360
	.loc 2 1766 114 discriminator 4
	lw	a5,-32(s0)
	.loc 2 1766 111 discriminator 4
	lw	a4,-20(s0)
	bgtu	a4,a5,.L361
.L360:
	.loc 2 1766 140 discriminator 5
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1766 140 is_stmt 0
	j	.L340
.L361:
	.loc 2 1766 154 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1766 151 discriminator 6
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1766 173 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1766 170 discriminator 6
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1766 204 discriminator 6
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-28(s0)
.L359:
	.loc 2 1767 26
	lw	a4,-44(s0)
	li	a5,32768
	and	a5,a4,a5
	.loc 2 1767 13
	beq	a5,zero,.L362
	.loc 2 1767 53 discriminator 1
	lw	a3,-28(s0)
	lui	a5,%hi(.LC47)
	addi	a2,a5,%lo(.LC47)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 1767 104 discriminator 2
	lw	a5,-32(s0)
	blt	a5,zero,.L363
	.loc 2 1767 116 discriminator 4
	lw	a5,-32(s0)
	.loc 2 1767 113 discriminator 4
	lw	a4,-20(s0)
	bgtu	a4,a5,.L364
.L363:
	.loc 2 1767 142 discriminator 5
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 1767 142 is_stmt 0
	j	.L340
.L364:
	.loc 2 1767 156 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1767 153 discriminator 6
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1767 175 discriminator 6
	lw	a5,-32(s0)
	.loc 2 1767 172 discriminator 6
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1767 206 discriminator 6
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-28(s0)
.L362:
	.loc 2 1769 11
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 2 1770 10
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 2 1772 12
	li	a5,0
.L340:
	.loc 2 1773 1
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
	.size	mbedtls_x509_info_key_usage, .-mbedtls_x509_info_key_usage
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/pk.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/oid.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1write.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x14cb
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x25
	.4byte	.LASF154
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
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
	.uleb128 0xf
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
	.uleb128 0x26
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0xb
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x27
	.byte	0x4
	.uleb128 0x13
	.4byte	0x95
	.uleb128 0x5
	.4byte	0x32
	.uleb128 0x5
	.4byte	0xab
	.uleb128 0x13
	.4byte	0xa1
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0xf
	.4byte	0xab
	.uleb128 0x5
	.4byte	0xb2
	.uleb128 0x13
	.4byte	0xb7
	.uleb128 0x5
	.4byte	0xcb
	.uleb128 0x13
	.4byte	0xc1
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF15
	.byte	0xc
	.byte	0x5
	.byte	0x8d
	.4byte	0xfe
	.uleb128 0xa
	.string	"tag"
	.byte	0x5
	.byte	0x8e
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0xa
	.string	"len"
	.byte	0x5
	.byte	0x8f
	.byte	0xc
	.4byte	0x76
	.byte	0x4
	.uleb128 0xa
	.string	"p"
	.byte	0x5
	.byte	0x90
	.byte	0x14
	.4byte	0x9c
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x5
	.byte	0x92
	.byte	0x1
	.4byte	0xcc
	.uleb128 0xf
	.4byte	0xfe
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0xc
	.byte	0x5
	.byte	0x97
	.4byte	0x141
	.uleb128 0xa
	.string	"len"
	.byte	0x5
	.byte	0x98
	.byte	0xc
	.4byte	0x76
	.byte	0
	.uleb128 0x10
	.4byte	.LASF17
	.byte	0x5
	.byte	0x99
	.byte	0x13
	.4byte	0x32
	.byte	0x4
	.uleb128 0xa
	.string	"p"
	.byte	0x5
	.byte	0x9a
	.byte	0x14
	.4byte	0x9c
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0x9c
	.byte	0x1
	.4byte	0x10f
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x10
	.byte	0x5
	.byte	0xa1
	.4byte	0x174
	.uleb128 0xa
	.string	"buf"
	.byte	0x5
	.byte	0xa2
	.byte	0x16
	.4byte	0xfe
	.byte	0
	.uleb128 0x10
	.4byte	.LASF19
	.byte	0x5
	.byte	0xab
	.byte	0x23
	.4byte	0x174
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	0x14d
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0xad
	.byte	0x1
	.4byte	0x14d
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x20
	.byte	0x5
	.byte	0xb2
	.4byte	0x1c6
	.uleb128 0xa
	.string	"oid"
	.byte	0x5
	.byte	0xb3
	.byte	0x16
	.4byte	0xfe
	.byte	0
	.uleb128 0xa
	.string	"val"
	.byte	0x5
	.byte	0xb4
	.byte	0x16
	.4byte	0xfe
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF19
	.byte	0x5
	.byte	0xbd
	.byte	0x25
	.4byte	0x1c6
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF21
	.byte	0x5
	.byte	0xc4
	.byte	0x13
	.4byte	0x32
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x185
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0xc6
	.byte	0x1
	.4byte	0x185
	.uleb128 0x1d
	.4byte	0x32
	.byte	0x6
	.byte	0x2f
	.4byte	0x22b
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3c
	.byte	0x3
	.4byte	0x1d7
	.uleb128 0x5
	.4byte	0x76
	.uleb128 0x1d
	.4byte	0x32
	.byte	0x7
	.byte	0x49
	.4byte	0x278
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x7
	.byte	0x52
	.byte	0x3
	.4byte	0x23c
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x8
	.byte	0xd8
	.byte	0x1a
	.4byte	0xfe
	.uleb128 0xf
	.4byte	0x284
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x8
	.byte	0xdd
	.byte	0x20
	.4byte	0x141
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x8
	.byte	0xe3
	.byte	0x21
	.4byte	0x1cb
	.uleb128 0xf
	.4byte	0x2a1
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x8
	.byte	0xe8
	.byte	0x1f
	.4byte	0x179
	.uleb128 0xf
	.4byte	0x2b2
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x18
	.byte	0x8
	.byte	0xf6
	.4byte	0x31e
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x8
	.byte	0xf7
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0xa
	.string	"mon"
	.byte	0x8
	.byte	0xf7
	.byte	0xf
	.4byte	0x68
	.byte	0x4
	.uleb128 0xa
	.string	"day"
	.byte	0x8
	.byte	0xf7
	.byte	0x14
	.4byte	0x68
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x8
	.byte	0xf8
	.byte	0x9
	.4byte	0x68
	.byte	0xc
	.uleb128 0xa
	.string	"min"
	.byte	0x8
	.byte	0xf8
	.byte	0xf
	.4byte	0x68
	.byte	0x10
	.uleb128 0xa
	.string	"sec"
	.byte	0x8
	.byte	0xf8
	.byte	0x14
	.4byte	0x68
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x8
	.byte	0xfa
	.byte	0x1
	.4byte	0x2c3
	.uleb128 0xf
	.4byte	0x31e
	.uleb128 0x29
	.byte	0x18
	.byte	0x8
	.2byte	0x113
	.byte	0x9
	.4byte	0x354
	.uleb128 0x15
	.string	"oid"
	.2byte	0x114
	.byte	0x1e
	.4byte	0x284
	.byte	0
	.uleb128 0x15
	.string	"val"
	.2byte	0x115
	.byte	0x1e
	.4byte	0x284
	.byte	0xc
	.byte	0
	.uleb128 0x1e
	.byte	0x18
	.2byte	0x10c
	.4byte	0x369
	.uleb128 0x14
	.4byte	.LASF54
	.2byte	0x117
	.byte	0x9
	.4byte	0x32f
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF51
	.byte	0x24
	.2byte	0x105
	.4byte	0x390
	.uleb128 0x16
	.4byte	.LASF52
	.2byte	0x10b
	.byte	0x16
	.4byte	0x284
	.byte	0
	.uleb128 0x16
	.4byte	.LASF53
	.2byte	0x119
	.byte	0x5
	.4byte	0x354
	.byte	0xc
	.byte	0
	.uleb128 0x20
	.4byte	.LASF51
	.2byte	0x11b
	.4byte	0x369
	.uleb128 0x1e
	.byte	0x24
	.2byte	0x126
	.4byte	0x3c8
	.uleb128 0x14
	.4byte	.LASF55
	.2byte	0x127
	.byte	0x25
	.4byte	0x390
	.uleb128 0x14
	.4byte	.LASF56
	.2byte	0x128
	.byte	0x1b
	.4byte	0x2a1
	.uleb128 0x14
	.4byte	.LASF57
	.2byte	0x129
	.byte	0x1a
	.4byte	0x284
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF58
	.byte	0x28
	.2byte	0x124
	.4byte	0x3ef
	.uleb128 0x16
	.4byte	.LASF59
	.2byte	0x125
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x15
	.string	"san"
	.2byte	0x12b
	.byte	0x5
	.4byte	0x39b
	.byte	0x4
	.byte	0
	.uleb128 0x20
	.4byte	.LASF58
	.2byte	0x12d
	.4byte	0x3c8
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x9
	.byte	0x1f
	.byte	0x8
	.4byte	0x95
	.4byte	0x41a
	.uleb128 0x2
	.4byte	0x97
	.uleb128 0x2
	.4byte	0xc6
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x149
	.4byte	0x68
	.4byte	0x43a
	.uleb128 0x2
	.4byte	0x43a
	.uleb128 0x2
	.4byte	0x43f
	.uleb128 0x2
	.4byte	0x444
	.byte	0
	.uleb128 0x5
	.4byte	0x9c
	.uleb128 0x5
	.4byte	0x39
	.uleb128 0x5
	.4byte	0x141
	.uleb128 0x21
	.4byte	.LASF73
	.2byte	0x1aa
	.4byte	0x45a
	.uleb128 0x2
	.4byte	0x45a
	.byte	0
	.uleb128 0x5
	.4byte	0x179
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x9
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x47f
	.uleb128 0x2
	.4byte	0xc1
	.uleb128 0x2
	.4byte	0xc1
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0xa
	.2byte	0x274
	.4byte	0x68
	.4byte	0x49a
	.uleb128 0x2
	.4byte	0x49a
	.uleb128 0x2
	.4byte	0x49f
	.byte	0
	.uleb128 0x5
	.4byte	0x10a
	.uleb128 0x5
	.4byte	0xb7
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x9
	.byte	0x23
	.byte	0x7
	.4byte	0xa1
	.4byte	0x4bf
	.uleb128 0x2
	.4byte	0xb7
	.uleb128 0x2
	.4byte	0x68
	.byte	0
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0xb
	.byte	0x43
	.byte	0x5
	.4byte	0x68
	.4byte	0x4df
	.uleb128 0x2
	.4byte	0x43a
	.uleb128 0x2
	.4byte	0x43f
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0xb
	.byte	0x35
	.byte	0x5
	.4byte	0x68
	.4byte	0x4ff
	.uleb128 0x2
	.4byte	0x43a
	.uleb128 0x2
	.4byte	0x43f
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0xa
	.2byte	0x1f0
	.4byte	0x68
	.4byte	0x51f
	.uleb128 0x2
	.4byte	0xa1
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0x49a
	.byte	0
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0xa
	.2byte	0x218
	.4byte	0x68
	.4byte	0x53a
	.uleb128 0x2
	.4byte	0x49a
	.uleb128 0x2
	.4byte	0x49f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0xc
	.2byte	0x110
	.4byte	0x68
	.4byte	0x55b
	.uleb128 0x2
	.4byte	0xa6
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0xbc
	.uleb128 0x2a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x9
	.byte	0x21
	.byte	0x8
	.4byte	0x95
	.4byte	0x57b
	.uleb128 0x2
	.4byte	0x95
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0xa
	.2byte	0x269
	.4byte	0x68
	.4byte	0x59b
	.uleb128 0x2
	.4byte	0x49a
	.uleb128 0x2
	.4byte	0x59b
	.uleb128 0x2
	.4byte	0x5a0
	.byte	0
	.uleb128 0x5
	.4byte	0x22b
	.uleb128 0x5
	.4byte	0x278
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x15e
	.4byte	0x68
	.4byte	0x5c5
	.uleb128 0x2
	.4byte	0x43a
	.uleb128 0x2
	.4byte	0x43f
	.uleb128 0x2
	.4byte	0x237
	.byte	0
	.uleb128 0x21
	.4byte	.LASF74
	.2byte	0x277
	.4byte	0x5d6
	.uleb128 0x2
	.4byte	0x5d6
	.byte	0
	.uleb128 0x5
	.4byte	0x1cb
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0xd
	.byte	0x5a
	.byte	0x7
	.4byte	0x95
	.4byte	0x5f6
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x5
	.byte	0xf5
	.byte	0x5
	.4byte	0x68
	.4byte	0x61b
	.uleb128 0x2
	.4byte	0x43a
	.uleb128 0x2
	.4byte	0x43f
	.uleb128 0x2
	.4byte	0x237
	.uleb128 0x2
	.4byte	0x68
	.byte	0
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x232
	.4byte	0x68
	.4byte	0x640
	.uleb128 0x2
	.4byte	0x43a
	.uleb128 0x2
	.4byte	0x43f
	.uleb128 0x2
	.4byte	0x640
	.uleb128 0x2
	.4byte	0x640
	.byte	0
	.uleb128 0x5
	.4byte	0xfe
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x245
	.4byte	0x68
	.4byte	0x665
	.uleb128 0x2
	.4byte	0x43a
	.uleb128 0x2
	.4byte	0x43f
	.uleb128 0x2
	.4byte	0x640
	.byte	0
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x5
	.byte	0xdc
	.byte	0x5
	.4byte	0x68
	.4byte	0x685
	.uleb128 0x2
	.4byte	0x43a
	.uleb128 0x2
	.4byte	0x43f
	.uleb128 0x2
	.4byte	0x237
	.byte	0
	.uleb128 0x8
	.4byte	.LASF82
	.2byte	0x6d7
	.4byte	0x68
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x704
	.uleb128 0x3
	.string	"buf"
	.2byte	0x6d7
	.byte	0x28
	.4byte	0x704
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF80
	.2byte	0x6d7
	.byte	0x35
	.4byte	0x237
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF81
	.2byte	0x6d8
	.byte	0x2e
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"ret"
	.2byte	0x6da
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"n"
	.2byte	0x6db
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"p"
	.2byte	0x6dc
	.byte	0xb
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"sep"
	.2byte	0x6dd
	.byte	0x11
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5
	.4byte	0xa1
	.uleb128 0x8
	.4byte	.LASF83
	.2byte	0x6b9
	.4byte	0x68
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x788
	.uleb128 0x3
	.string	"buf"
	.2byte	0x6b9
	.byte	0x28
	.4byte	0x704
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF80
	.2byte	0x6b9
	.byte	0x35
	.4byte	0x237
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF84
	.2byte	0x6ba
	.byte	0x2f
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1
	.string	"ret"
	.2byte	0x6bc
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"n"
	.2byte	0x6bd
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"p"
	.2byte	0x6be
	.byte	0xb
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"sep"
	.2byte	0x6bf
	.byte	0x11
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	.LASF85
	.2byte	0x5e7
	.4byte	0x68
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a3
	.uleb128 0x3
	.string	"buf"
	.2byte	0x5e7
	.byte	0x2f
	.4byte	0x704
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x4
	.4byte	.LASF80
	.2byte	0x5e7
	.byte	0x3c
	.4byte	0x237
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x4
	.4byte	.LASF86
	.2byte	0x5e9
	.byte	0x29
	.4byte	0x8a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x4
	.4byte	.LASF87
	.2byte	0x5ea
	.byte	0x34
	.4byte	0xb7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1
	.string	"ret"
	.2byte	0x5ec
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"i"
	.2byte	0x5ed
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"n"
	.2byte	0x5ee
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"p"
	.2byte	0x5ef
	.byte	0xb
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"cur"
	.2byte	0x5f0
	.byte	0x22
	.4byte	0x8a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"san"
	.2byte	0x5f1
	.byte	0x2b
	.4byte	0x3ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x6
	.4byte	.LASF88
	.2byte	0x5f2
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x862
	.uleb128 0x6
	.4byte	.LASF55
	.2byte	0x609
	.byte	0x2e
	.4byte	0x8a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x17
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x88e
	.uleb128 0x6
	.4byte	.LASF89
	.2byte	0x643
	.byte	0x1d
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.4byte	.LASF90
	.2byte	0x644
	.byte	0x1d
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2b
	.4byte	.LLRL0
	.uleb128 0x1
	.string	"ip"
	.2byte	0x667
	.byte	0x20
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x2be
	.uleb128 0x5
	.4byte	0x390
	.uleb128 0x2c
	.4byte	.LASF155
	.byte	0x2
	.2byte	0x5df
	.byte	0x6
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d4
	.uleb128 0x3
	.string	"san"
	.2byte	0x5df
	.byte	0x50
	.4byte	0x8d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x3ef
	.uleb128 0x8
	.4byte	.LASF91
	.2byte	0x572
	.4byte	0x68
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x965
	.uleb128 0x4
	.4byte	.LASF92
	.2byte	0x572
	.byte	0x41
	.4byte	0x965
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.string	"san"
	.2byte	0x573
	.byte	0x50
	.4byte	0x8d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.string	"ret"
	.2byte	0x575
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x93e
	.uleb128 0x6
	.4byte	.LASF55
	.2byte	0x57e
	.byte	0x29
	.4byte	0x390
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x22
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x6
	.4byte	.LASF93
	.2byte	0x5c4
	.byte	0x14
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"p"
	.2byte	0x5c5
	.byte	0x1c
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x290
	.uleb128 0x8
	.4byte	.LASF94
	.2byte	0x556
	.4byte	0x68
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d9
	.uleb128 0x3
	.string	"p"
	.2byte	0x556
	.byte	0x30
	.4byte	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"end"
	.2byte	0x557
	.byte	0x35
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF81
	.2byte	0x558
	.byte	0x2e
	.4byte	0x9d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"ret"
	.2byte	0x55a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"i"
	.2byte	0x55b
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"bs"
	.2byte	0x55c
	.byte	0x1c
	.4byte	0x295
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x5
	.4byte	0x6f
	.uleb128 0x8
	.4byte	.LASF95
	.2byte	0x53a
	.4byte	0x68
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa40
	.uleb128 0x3
	.string	"p"
	.2byte	0x53a
	.byte	0x33
	.4byte	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"end"
	.2byte	0x53b
	.byte	0x38
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF84
	.2byte	0x53c
	.byte	0x32
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"ret"
	.2byte	0x53e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"bs"
	.2byte	0x53f
	.byte	0x1c
	.4byte	0x295
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF96
	.2byte	0x525
	.4byte	0x68
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa3
	.uleb128 0x3
	.string	"p"
	.2byte	0x525
	.byte	0x37
	.4byte	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"end"
	.2byte	0x526
	.byte	0x3c
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF86
	.2byte	0x527
	.byte	0x3e
	.4byte	0xaa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"ret"
	.2byte	0x529
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"len"
	.2byte	0x52a
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	0x2b2
	.uleb128 0x8
	.4byte	.LASF97
	.2byte	0x4bd
	.4byte	0x68
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb46
	.uleb128 0x3
	.string	"p"
	.2byte	0x4bd
	.byte	0x3b
	.4byte	0x43a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3
	.string	"end"
	.2byte	0x4be
	.byte	0x40
	.4byte	0x43f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4
	.4byte	.LASF86
	.2byte	0x4bf
	.byte	0x42
	.4byte	0xaa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1
	.string	"ret"
	.2byte	0x4c1
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF98
	.2byte	0x4c2
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"cur"
	.2byte	0x4c3
	.byte	0x1c
	.4byte	0x45a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x6
	.4byte	.LASF99
	.2byte	0x4c6
	.byte	0x2f
	.4byte	0x3ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.4byte	.LASF100
	.2byte	0x4c7
	.byte	0x1a
	.4byte	0x284
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF128
	.2byte	0x466
	.4byte	0x68
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc7
	.uleb128 0x4
	.4byte	.LASF86
	.2byte	0x466
	.byte	0x38
	.4byte	0x965
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF55
	.2byte	0x467
	.byte	0x3d
	.4byte	0x8a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"ret"
	.2byte	0x469
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"len"
	.2byte	0x46a
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"p"
	.2byte	0x46b
	.byte	0x14
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"end"
	.2byte	0x46c
	.byte	0x1a
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF101
	.2byte	0x46d
	.byte	0x16
	.4byte	0x284
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x19
	.4byte	.LASF102
	.2byte	0x451
	.4byte	0x68
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf0
	.uleb128 0x4
	.4byte	.LASF103
	.2byte	0x451
	.byte	0x3a
	.4byte	0xbf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x32a
	.uleb128 0x19
	.4byte	.LASF104
	.2byte	0x44b
	.4byte	0x68
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc1d
	.uleb128 0x3
	.string	"to"
	.2byte	0x44b
	.byte	0x38
	.4byte	0xbf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF105
	.2byte	0x40c
	.4byte	0x68
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc60
	.uleb128 0x3
	.string	"t1"
	.2byte	0x40c
	.byte	0x34
	.4byte	0xbf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"t2"
	.2byte	0x40d
	.byte	0x34
	.4byte	0xbf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"x"
	.2byte	0x40f
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF106
	.2byte	0x400
	.4byte	0x68
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd0
	.uleb128 0x3
	.string	"buf"
	.2byte	0x400
	.byte	0x28
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF107
	.2byte	0x400
	.byte	0x34
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF108
	.2byte	0x400
	.byte	0x4a
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"p"
	.2byte	0x402
	.byte	0xb
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"n"
	.2byte	0x403
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"ret"
	.2byte	0x404
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	.LASF109
	.2byte	0x3d3
	.4byte	0x68
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd7c
	.uleb128 0x3
	.string	"buf"
	.2byte	0x3d3
	.byte	0x25
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF80
	.2byte	0x3d3
	.byte	0x31
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF110
	.2byte	0x3d3
	.byte	0x4f
	.4byte	0x965
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF111
	.2byte	0x3d4
	.byte	0x31
	.4byte	0x278
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x4
	.4byte	.LASF112
	.2byte	0x3d4
	.byte	0x4b
	.4byte	0x22b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x4
	.4byte	.LASF113
	.2byte	0x3d5
	.byte	0x2b
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"ret"
	.2byte	0x3d7
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"p"
	.2byte	0x3d8
	.byte	0xb
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"n"
	.2byte	0x3d9
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF114
	.2byte	0x3da
	.byte	0x11
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF115
	.2byte	0x3b1
	.4byte	0x68
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe07
	.uleb128 0x3
	.string	"buf"
	.2byte	0x3b1
	.byte	0x24
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF80
	.2byte	0x3b1
	.byte	0x30
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF116
	.2byte	0x3b1
	.byte	0x4e
	.4byte	0x965
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"ret"
	.2byte	0x3b3
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"i"
	.2byte	0x3b4
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"n"
	.2byte	0x3b4
	.byte	0xf
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"nr"
	.2byte	0x3b4
	.byte	0x12
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"p"
	.2byte	0x3b5
	.byte	0xb
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF117
	.2byte	0x32c
	.4byte	0x68
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf56
	.uleb128 0x3
	.string	"buf"
	.2byte	0x32c
	.byte	0x20
	.4byte	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x4
	.4byte	.LASF80
	.2byte	0x32c
	.byte	0x2c
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x3
	.string	"dn"
	.2byte	0x32c
	.byte	0x4b
	.4byte	0xf56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x1
	.string	"ret"
	.2byte	0x32e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"i"
	.2byte	0x32f
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"j"
	.2byte	0x32f
	.byte	0xf
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"n"
	.2byte	0x32f
	.byte	0x12
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF118
	.2byte	0x32f
	.byte	0x15
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.4byte	.LASF119
	.2byte	0x32f
	.byte	0x24
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.4byte	.LASF120
	.2byte	0x32f
	.byte	0x33
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.4byte	.LASF121
	.2byte	0x331
	.byte	0x13
	.4byte	0xf5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.4byte	.LASF122
	.2byte	0x332
	.byte	0x14
	.4byte	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.string	"c"
	.2byte	0x333
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x6
	.4byte	.LASF123
	.2byte	0x333
	.byte	0x16
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x6
	.4byte	.LASF108
	.2byte	0x334
	.byte	0x1e
	.4byte	0xf56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF124
	.2byte	0x335
	.byte	0x11
	.4byte	0xb7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.4byte	.LASF125
	.2byte	0x336
	.byte	0xa
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x6
	.4byte	.LASF126
	.2byte	0x336
	.byte	0x13
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -51
	.uleb128 0x1
	.string	"s"
	.2byte	0x337
	.byte	0xa
	.4byte	0xf6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1
	.string	"p"
	.2byte	0x337
	.byte	0x13
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF127
	.2byte	0x338
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x5
	.4byte	0x2ad
	.uleb128 0x23
	.4byte	0x32
	.4byte	0xf6b
	.uleb128 0x24
	.4byte	0x6f
	.byte	0x5
	.byte	0
	.uleb128 0x23
	.4byte	0xab
	.4byte	0xf7b
	.uleb128 0x24
	.4byte	0x6f
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF129
	.2byte	0x323
	.byte	0xd
	.4byte	0xab
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa3
	.uleb128 0x3
	.string	"i"
	.2byte	0x323
	.byte	0x25
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF130
	.2byte	0x300
	.4byte	0x68
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1015
	.uleb128 0x3
	.string	"p"
	.2byte	0x300
	.byte	0x2a
	.4byte	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"end"
	.2byte	0x300
	.byte	0x42
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"ext"
	.2byte	0x301
	.byte	0x2c
	.4byte	0x1015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"tag"
	.2byte	0x301
	.byte	0x35
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"ret"
	.2byte	0x303
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"len"
	.2byte	0x304
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	0x284
	.uleb128 0x8
	.4byte	.LASF131
	.2byte	0x2ce
	.4byte	0x68
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x108e
	.uleb128 0x4
	.4byte	.LASF110
	.2byte	0x2ce
	.byte	0x36
	.4byte	0x965
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF132
	.2byte	0x2ce
	.byte	0x57
	.4byte	0x965
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF112
	.2byte	0x2cf
	.byte	0x31
	.4byte	0x59b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF111
	.2byte	0x2cf
	.byte	0x4c
	.4byte	0x5a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF113
	.2byte	0x2d0
	.byte	0x25
	.4byte	0x108e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"ret"
	.2byte	0x2d2
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x95
	.uleb128 0x8
	.4byte	.LASF133
	.2byte	0x2b1
	.4byte	0x68
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1105
	.uleb128 0x3
	.string	"p"
	.2byte	0x2b1
	.byte	0x2a
	.4byte	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"end"
	.2byte	0x2b1
	.byte	0x42
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"sig"
	.2byte	0x2b1
	.byte	0x59
	.4byte	0x1015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"ret"
	.2byte	0x2b3
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"len"
	.2byte	0x2b4
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF134
	.2byte	0x2b5
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF135
	.2byte	0x289
	.4byte	0x68
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1185
	.uleb128 0x3
	.string	"p"
	.2byte	0x289
	.byte	0x2b
	.4byte	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"end"
	.2byte	0x289
	.byte	0x43
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"tm"
	.2byte	0x28a
	.byte	0x2e
	.4byte	0x1185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"ret"
	.2byte	0x28c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"len"
	.2byte	0x28d
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF136
	.2byte	0x28d
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"tag"
	.2byte	0x28e
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x5
	.4byte	0x31e
	.uleb128 0x18
	.4byte	.LASF137
	.2byte	0x262
	.4byte	0x68
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11db
	.uleb128 0x3
	.string	"p"
	.2byte	0x262
	.byte	0x31
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"tm"
	.2byte	0x262
	.byte	0x47
	.4byte	0x1185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF138
	.2byte	0x263
	.byte	0x23
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"x"
	.2byte	0x265
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF139
	.2byte	0x257
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x121f
	.uleb128 0x3
	.string	"p"
	.2byte	0x257
	.byte	0x31
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"d1"
	.2byte	0x259
	.byte	0xe
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"d2"
	.2byte	0x25a
	.byte	0xe
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF140
	.2byte	0x236
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1265
	.uleb128 0x3
	.string	"t"
	.2byte	0x236
	.byte	0x38
	.4byte	0xbf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF141
	.2byte	0x238
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF49
	.2byte	0x239
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF142
	.2byte	0x1f2
	.4byte	0x68
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12f3
	.uleb128 0x3
	.string	"p"
	.2byte	0x1f2
	.byte	0x2b
	.4byte	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"end"
	.2byte	0x1f2
	.byte	0x43
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"cur"
	.2byte	0x1f3
	.byte	0x2e
	.4byte	0x12f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"ret"
	.2byte	0x1f5
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF143
	.2byte	0x1f6
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF144
	.2byte	0x1f7
	.byte	0x1a
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF145
	.2byte	0x1f8
	.byte	0x18
	.4byte	0x12f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.4byte	.LASF156
	.byte	0x2
	.2byte	0x22e
	.byte	0x1
	.4byte	.L26
	.byte	0
	.uleb128 0x5
	.4byte	0x2a1
	.uleb128 0x18
	.4byte	.LASF146
	.2byte	0x196
	.4byte	0x68
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1379
	.uleb128 0x3
	.string	"p"
	.2byte	0x196
	.byte	0x35
	.4byte	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"end"
	.2byte	0x197
	.byte	0x3a
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"cur"
	.2byte	0x198
	.byte	0x38
	.4byte	0x12f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"ret"
	.2byte	0x19a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"len"
	.2byte	0x19b
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"oid"
	.2byte	0x19c
	.byte	0x17
	.4byte	0x1015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"val"
	.2byte	0x19d
	.byte	0x17
	.4byte	0x1015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF147
	.byte	0x70
	.4byte	0x68
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13d9
	.uleb128 0xe
	.string	"p"
	.byte	0x2
	.byte	0x70
	.byte	0x2a
	.4byte	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"end"
	.byte	0x2
	.byte	0x70
	.byte	0x42
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"alg"
	.byte	0x2
	.byte	0x71
	.byte	0x2c
	.4byte	0x1015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.4byte	.LASF148
	.byte	0x2
	.byte	0x71
	.byte	0x43
	.4byte	0x1015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"ret"
	.byte	0x73
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF149
	.byte	0x61
	.4byte	0x68
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x142a
	.uleb128 0xe
	.string	"p"
	.byte	0x2
	.byte	0x61
	.byte	0x2f
	.4byte	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"end"
	.byte	0x2
	.byte	0x61
	.byte	0x47
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"alg"
	.byte	0x2
	.byte	0x62
	.byte	0x31
	.4byte	0x1015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.string	"ret"
	.byte	0x64
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF150
	.byte	0x3f
	.4byte	0x68
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x147b
	.uleb128 0xe
	.string	"p"
	.byte	0x2
	.byte	0x3f
	.byte	0x2d
	.4byte	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"end"
	.byte	0x2
	.byte	0x3f
	.byte	0x45
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.4byte	.LASF116
	.byte	0x2
	.byte	0x40
	.byte	0x2f
	.4byte	0x1015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.string	"ret"
	.byte	0x42
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF157
	.byte	0x1
	.byte	0x8e
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.4byte	.LASF151
	.byte	0x1
	.byte	0x8e
	.byte	0x29
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"low"
	.byte	0x1
	.byte	0x8e
	.byte	0x33
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF152
	.byte	0x1
	.byte	0x8f
	.byte	0x31
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF153
	.byte	0x1
	.byte	0x8f
	.byte	0x3b
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x5
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x11
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
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x7a
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
	.sleb128 2
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
	.uleb128 0x1c
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
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
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
	.sleb128 5
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x10c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
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
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
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
	.4byte	.LBB7
	.byte	0x4
	.uleb128 .LBB7-.LBB7
	.uleb128 .LBE7-.LBB7
	.byte	0x4
	.uleb128 .LBB8-.LBB7
	.uleb128 .LBE8-.LBB7
	.byte	0x4
	.uleb128 .LBB9-.LBB7
	.uleb128 .LBE9-.LBB7
	.byte	0
.LLRL1:
	.byte	0x7
	.4byte	.LFB76
	.uleb128 .LFE76-.LFB76
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
	.byte	0x7
	.4byte	.LFB107
	.uleb128 .LFE107-.LFB107
	.byte	0x7
	.4byte	.LFB108
	.uleb128 .LFE108-.LFB108
	.byte	0x7
	.4byte	.LFB109
	.uleb128 .LFE109-.LFB109
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF63:
	.string	"mbedtls_oid_get_sig_alg_desc"
.LASF3:
	.string	"unsigned char"
.LASF43:
	.string	"mbedtls_pk_type_t"
.LASF12:
	.string	"size_t"
.LASF17:
	.string	"unused_bits"
.LASF93:
	.string	"name_len"
.LASF59:
	.string	"type"
.LASF15:
	.string	"mbedtls_asn1_buf"
.LASF133:
	.string	"mbedtls_x509_get_sig"
.LASF129:
	.string	"nibble_to_hex_digit"
.LASF9:
	.string	"long long unsigned int"
.LASF98:
	.string	"tag_len"
.LASF46:
	.string	"mbedtls_x509_name"
.LASF67:
	.string	"mbedtls_oid_get_numeric_string"
.LASF111:
	.string	"pk_alg"
.LASF42:
	.string	"MBEDTLS_PK_OPAQUE"
.LASF110:
	.string	"sig_oid"
.LASF77:
	.string	"mbedtls_asn1_get_alg"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF125:
	.string	"lowbits"
.LASF117:
	.string	"mbedtls_x509_dn_gets"
.LASF101:
	.string	"cur_oid"
.LASF134:
	.string	"tag_type"
.LASF127:
	.string	"print_hexstring"
.LASF102:
	.string	"mbedtls_x509_time_is_future"
.LASF6:
	.string	"long int"
.LASF141:
	.string	"month_days"
.LASF100:
	.string	"tmp_san_buf"
.LASF26:
	.string	"MBEDTLS_MD_SHA224"
.LASF144:
	.string	"end_set"
.LASF60:
	.string	"memcpy"
.LASF121:
	.string	"asn1_tag_len_buf"
.LASF66:
	.string	"mbedtls_asn1_write_len"
.LASF44:
	.string	"mbedtls_x509_buf"
.LASF33:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF153:
	.string	"line"
.LASF106:
	.string	"mbedtls_x509_key_size_helper"
.LASF68:
	.string	"mbedtls_oid_get_attr_short_name"
.LASF53:
	.string	"value"
.LASF118:
	.string	"asn1_len_size"
.LASF10:
	.string	"unsigned int"
.LASF31:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF7:
	.string	"long unsigned int"
.LASF137:
	.string	"x509_parse_time"
.LASF64:
	.string	"strchr"
.LASF108:
	.string	"name"
.LASF24:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF34:
	.string	"mbedtls_md_type_t"
.LASF119:
	.string	"asn1_tag_size"
.LASF89:
	.string	"dns_name"
.LASF150:
	.string	"mbedtls_x509_get_serial"
.LASF37:
	.string	"MBEDTLS_PK_ECKEY"
.LASF57:
	.string	"unstructured_name"
.LASF71:
	.string	"mbedtls_oid_get_sig_alg"
.LASF45:
	.string	"mbedtls_x509_bitstring"
.LASF149:
	.string	"mbedtls_x509_get_alg_null"
.LASF157:
	.string	"mbedtls_error_add"
.LASF104:
	.string	"mbedtls_x509_time_is_past"
.LASF146:
	.string	"x509_get_attr_type_value"
.LASF103:
	.string	"from"
.LASF39:
	.string	"MBEDTLS_PK_ECDSA"
.LASF86:
	.string	"subject_alt_name"
.LASF70:
	.string	"memset"
.LASF87:
	.string	"prefix"
.LASF91:
	.string	"mbedtls_x509_parse_subject_alt_name"
.LASF56:
	.string	"directory_name"
.LASF82:
	.string	"mbedtls_x509_info_key_usage"
.LASF124:
	.string	"short_name"
.LASF84:
	.string	"ns_cert_type"
.LASF107:
	.string	"buf_size"
.LASF29:
	.string	"MBEDTLS_MD_SHA512"
.LASF131:
	.string	"mbedtls_x509_get_sig_alg"
.LASF114:
	.string	"desc"
.LASF143:
	.string	"set_len"
.LASF139:
	.string	"x509_parse2_int"
.LASF25:
	.string	"MBEDTLS_MD_SHA1"
.LASF32:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF99:
	.string	"tmp_san_name"
.LASF120:
	.string	"asn1_tag_len_buf_start"
.LASF50:
	.string	"hour"
.LASF22:
	.string	"MBEDTLS_MD_NONE"
.LASF97:
	.string	"mbedtls_x509_get_subject_alt_name_ext"
.LASF49:
	.string	"year"
.LASF138:
	.string	"yearlen"
.LASF156:
	.string	"error"
.LASF27:
	.string	"MBEDTLS_MD_SHA256"
.LASF18:
	.string	"mbedtls_asn1_sequence"
.LASF130:
	.string	"mbedtls_x509_get_ext"
.LASF74:
	.string	"mbedtls_asn1_free_named_data_list_shallow"
.LASF61:
	.string	"mbedtls_asn1_get_bitstring"
.LASF95:
	.string	"mbedtls_x509_get_ns_cert_type"
.LASF115:
	.string	"mbedtls_x509_serial_gets"
.LASF113:
	.string	"sig_opts"
.LASF135:
	.string	"mbedtls_x509_get_time"
.LASF58:
	.string	"mbedtls_x509_subject_alternative_name"
.LASF96:
	.string	"mbedtls_x509_get_subject_alt_name"
.LASF4:
	.string	"short int"
.LASF152:
	.string	"file"
.LASF155:
	.string	"mbedtls_x509_free_subject_alt_name"
.LASF79:
	.string	"mbedtls_asn1_get_len"
.LASF128:
	.string	"x509_get_other_name"
.LASF126:
	.string	"highbits"
.LASF76:
	.string	"mbedtls_asn1_get_tag"
.LASF145:
	.string	"head"
.LASF147:
	.string	"mbedtls_x509_get_alg"
.LASF13:
	.string	"uint32_t"
.LASF90:
	.string	"rfc822_name"
.LASF132:
	.string	"sig_params"
.LASF38:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF142:
	.string	"mbedtls_x509_get_name"
.LASF78:
	.string	"mbedtls_asn1_get_alg_null"
.LASF11:
	.string	"long double"
.LASF14:
	.string	"char"
.LASF72:
	.string	"mbedtls_asn1_get_bitstring_null"
.LASF81:
	.string	"key_usage"
.LASF41:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF148:
	.string	"params"
.LASF36:
	.string	"MBEDTLS_PK_RSA"
.LASF88:
	.string	"parse_ret"
.LASF151:
	.string	"high"
.LASF94:
	.string	"mbedtls_x509_get_key_usage"
.LASF105:
	.string	"mbedtls_x509_time_cmp"
.LASF62:
	.string	"memcmp"
.LASF28:
	.string	"MBEDTLS_MD_SHA384"
.LASF23:
	.string	"MBEDTLS_MD_MD5"
.LASF154:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF5:
	.string	"short unsigned int"
.LASF65:
	.string	"mbedtls_asn1_write_tag"
.LASF54:
	.string	"hardware_module_name"
.LASF40:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF69:
	.string	"snprintf"
.LASF55:
	.string	"other_name"
.LASF136:
	.string	"year_len"
.LASF20:
	.string	"mbedtls_asn1_named_data"
.LASF92:
	.string	"san_buf"
.LASF75:
	.string	"calloc"
.LASF35:
	.string	"MBEDTLS_PK_NONE"
.LASF51:
	.string	"mbedtls_x509_san_other_name"
.LASF47:
	.string	"mbedtls_x509_sequence"
.LASF140:
	.string	"x509_date_is_valid"
.LASF73:
	.string	"mbedtls_asn1_sequence_free"
.LASF116:
	.string	"serial"
.LASF112:
	.string	"md_alg"
.LASF80:
	.string	"size"
.LASF21:
	.string	"next_merged"
.LASF19:
	.string	"next"
.LASF30:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF85:
	.string	"mbedtls_x509_info_subject_alt_name"
.LASF122:
	.string	"asn1_len_p"
.LASF83:
	.string	"mbedtls_x509_info_cert_type"
.LASF123:
	.string	"merge"
.LASF109:
	.string	"mbedtls_x509_sig_alg_gets"
.LASF52:
	.string	"type_id"
.LASF16:
	.string	"mbedtls_asn1_bitstring"
.LASF48:
	.string	"mbedtls_x509_time"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
