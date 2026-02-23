	.file	"coap_minimal.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/suas_app_pqkem_gateway" "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/coap_minimal.c"
	.section	.text.coap_parse,"ax",@progbits
	.align	1
	.globl	coap_parse
	.type	coap_parse, @function
coap_parse:
.LFB2:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/coap_minimal.c"
	.loc 1 10 1
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
	.loc 1 11 8
	lw	a5,-52(s0)
	beq	a5,zero,.L2
	.loc 1 11 14 discriminator 1
	lw	a5,-56(s0)
	beq	a5,zero,.L2
	.loc 1 11 22 discriminator 2
	lw	a4,-60(s0)
	li	a5,3
	bgtu	a4,a5,.L3
.L2:
	.loc 1 12 16
	li	a5,0
	j	.L4
.L3:
	.loc 1 15 5
	li	a2,56
	li	a1,0
	lw	a0,-52(s0)
	call	memset
	.loc 1 18 13
	lw	a5,-56(s0)
	lbu	a5,0(a5)
	sb	a5,-37(s0)
	.loc 1 19 14
	lbu	a5,-37(s0)
	srli	a5,a5,6
	andi	a4,a5,0xff
	lw	a5,-52(s0)
	sb	a4,0(a5)
	.loc 1 20 27
	lbu	a5,-37(s0)
	srli	a5,a5,4
	andi	a5,a5,0xff
	andi	a5,a5,3
	andi	a4,a5,0xff
	.loc 1 20 15
	lw	a5,-52(s0)
	sb	a4,1(a5)
	.loc 1 21 25
	lbu	a5,-37(s0)
	andi	a5,a5,15
	andi	a4,a5,0xff
	.loc 1 21 20
	lw	a5,-52(s0)
	sb	a4,2(a5)
	.loc 1 22 20
	lw	a5,-56(s0)
	addi	a5,a5,1
	lbu	a4,0(a5)
	.loc 1 22 15
	lw	a5,-52(s0)
	sb	a4,3(a5)
	.loc 1 23 33
	lw	a5,-56(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 23 43
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,8
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 23 48
	lw	a5,-56(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 23 43
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 23 17
	lw	a5,-52(s0)
	sh	a4,4(a5)
	.loc 1 25 12
	lw	a5,-52(s0)
	lbu	a4,0(a5)
	.loc 1 25 8
	li	a5,1
	bne	a4,a5,.L5
	.loc 1 25 29 discriminator 1
	lw	a5,-52(s0)
	lbu	a4,2(a5)
	.loc 1 25 23 discriminator 1
	li	a5,8
	bleu	a4,a5,.L6
.L5:
	.loc 1 26 16
	li	a5,0
	j	.L4
.L6:
	.loc 1 29 12
	li	a5,4
	sw	a5,-20(s0)
	.loc 1 31 21
	lw	a5,-52(s0)
	lbu	a5,2(a5)
	mv	a4,a5
	.loc 1 31 16
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 31 8
	lw	a4,-60(s0)
	bgeu	a4,a5,.L7
	.loc 1 32 16
	li	a5,0
	j	.L4
.L7:
	.loc 1 36 12
	lw	a5,-52(s0)
	lbu	a5,2(a5)
	.loc 1 36 8
	beq	a5,zero,.L8
	.loc 1 37 19
	lw	a5,-52(s0)
	addi	a3,a5,6
	.loc 1 37 32
	lw	a4,-56(s0)
	lw	a5,-20(s0)
	add	a4,a4,a5
	.loc 1 37 45
	lw	a5,-52(s0)
	lbu	a5,2(a5)
	.loc 1 37 9
	mv	a2,a5
	mv	a1,a4
	mv	a0,a3
	call	memcpy
	.loc 1 38 22
	lw	a5,-52(s0)
	lbu	a5,2(a5)
	mv	a4,a5
	.loc 1 38 16
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
.L8:
	.loc 1 42 14
	sh	zero,-22(s0)
	.loc 1 43 12
	sw	zero,-28(s0)
	.loc 1 45 11
	j	.L9
.L27:
.LBB2:
	.loc 1 46 27
	lw	a4,-56(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 46 17
	lbu	a5,0(a5)
	sb	a5,-38(s0)
	.loc 1 47 12
	lbu	a4,-38(s0)
	li	a5,255
	bne	a4,a5,.L10
	.loc 1 49 19
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 50 13
	j	.L11
.L10:
	.loc 1 53 17
	lbu	a5,-38(s0)
	srli	a5,a5,4
	sb	a5,-29(s0)
	.loc 1 54 17
	lbu	a5,-38(s0)
	andi	a5,a5,15
	sb	a5,-30(s0)
	.loc 1 55 15
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 58 12
	lbu	a4,-29(s0)
	li	a5,13
	bne	a4,a5,.L12
	.loc 1 59 16
	lw	a4,-20(s0)
	lw	a5,-60(s0)
	bltu	a4,a5,.L13
	.loc 1 59 39 discriminator 1
	li	a5,0
	.loc 1 59 39 is_stmt 0
	j	.L4
.L13:
	.loc 1 60 36 is_stmt 1
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 60 29
	lw	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 60 19
	addi	a5,a5,13
	sb	a5,-29(s0)
	j	.L14
.L12:
	.loc 1 61 19
	lbu	a4,-29(s0)
	li	a5,14
	bne	a4,a5,.L15
	.loc 1 62 24
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 1 62 16
	lw	a4,-60(s0)
	bgtu	a4,a5,.L16
	.loc 1 62 43 discriminator 1
	li	a5,0
	.loc 1 62 43 is_stmt 0
	j	.L4
.L16:
	.loc 1 63 61 is_stmt 1
	lw	a5,-20(s0)
	addi	a5,a5,1
	lw	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 63 19
	addi	a5,a5,13
	sb	a5,-29(s0)
	.loc 1 64 20
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	j	.L14
.L15:
	.loc 1 65 19
	lbu	a4,-29(s0)
	li	a5,15
	bne	a4,a5,.L14
	.loc 1 67 20
	li	a5,0
	j	.L4
.L14:
	.loc 1 71 12
	lbu	a4,-30(s0)
	li	a5,13
	bne	a4,a5,.L17
	.loc 1 72 16
	lw	a4,-20(s0)
	lw	a5,-60(s0)
	bltu	a4,a5,.L18
	.loc 1 72 39 discriminator 1
	li	a5,0
	.loc 1 72 39 is_stmt 0
	j	.L4
.L18:
	.loc 1 73 38 is_stmt 1
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 73 31
	lw	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 73 21
	addi	a5,a5,13
	sb	a5,-30(s0)
	j	.L19
.L17:
	.loc 1 74 19
	lbu	a4,-30(s0)
	li	a5,14
	bne	a4,a5,.L20
	.loc 1 75 24
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 1 75 16
	lw	a4,-60(s0)
	bgtu	a4,a5,.L21
	.loc 1 75 43 discriminator 1
	li	a5,0
	.loc 1 75 43 is_stmt 0
	j	.L4
.L21:
	.loc 1 76 63 is_stmt 1
	lw	a5,-20(s0)
	addi	a5,a5,1
	lw	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 76 21
	addi	a5,a5,13
	sb	a5,-30(s0)
	.loc 1 77 20
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	j	.L19
.L20:
	.loc 1 78 19
	lbu	a4,-30(s0)
	li	a5,15
	bne	a4,a5,.L19
	.loc 1 80 20
	li	a5,0
	j	.L4
.L19:
	.loc 1 83 41
	lbu	a5,-29(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 83 18
	lhu	a4,-22(s0)
	add	a5,a5,a4
	sh	a5,-40(s0)
	.loc 1 84 20
	lbu	a4,-30(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 84 12
	lw	a4,-60(s0)
	bgeu	a4,a5,.L22
	.loc 1 85 20
	li	a5,0
	j	.L4
.L22:
	.loc 1 88 12
	lhu	a4,-40(s0)
	li	a5,11
	bne	a4,a5,.L23
.LBB3:
	.loc 1 90 16
	lw	a5,-28(s0)
	beq	a5,zero,.L24
	.loc 1 90 29 discriminator 1
	lw	a4,-28(s0)
	li	a5,30
	bgtu	a4,a5,.L24
	.loc 1 91 42
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 91 46
	lw	a4,-52(s0)
	add	a5,a4,a5
	li	a4,47
	sb	a4,14(a5)
.L24:
	.loc 1 94 20
	lbu	a5,-30(s0)
	sw	a5,-36(s0)
	.loc 1 95 29
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	add	a4,a4,a5
	.loc 1 95 16
	li	a5,31
	bleu	a4,a5,.L25
	.loc 1 96 20
	lw	a4,-28(s0)
	li	a5,31
	bgtu	a4,a5,.L26
	.loc 1 97 26
	li	a4,31
	lw	a5,-28(s0)
	sub	a5,a4,a5
	sw	a5,-36(s0)
	j	.L25
.L26:
	.loc 1 99 26
	sw	zero,-36(s0)
.L25:
	.loc 1 102 16
	lw	a5,-36(s0)
	beq	a5,zero,.L23
	.loc 1 103 24
	lw	a5,-52(s0)
	addi	a4,a5,14
	.loc 1 103 17
	lw	a5,-28(s0)
	add	a3,a4,a5
	.loc 1 103 57
	lw	a4,-56(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 103 17
	lw	a2,-36(s0)
	mv	a1,a5
	mv	a0,a3
	call	memcpy
	.loc 1 104 29
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
.L23:
.LBE3:
	.loc 1 108 16
	lbu	a5,-30(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 109 22
	lhu	a5,-40(s0)
	sh	a5,-22(s0)
.L9:
.LBE2:
	.loc 1 45 19
	lw	a4,-20(s0)
	lw	a5,-60(s0)
	bltu	a4,a5,.L27
.L11:
	.loc 1 112 8
	lw	a4,-28(s0)
	li	a5,31
	bgtu	a4,a5,.L28
	.loc 1 113 36
	lw	a4,-52(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sb	zero,14(a5)
	j	.L29
.L28:
	.loc 1 115 31
	lw	a5,-52(s0)
	sb	zero,45(a5)
.L29:
	.loc 1 117 25
	lw	a4,-28(s0)
	li	a5,31
	bgtu	a4,a5,.L30
	.loc 1 117 25 is_stmt 0 discriminator 1
	lw	a5,-28(s0)
	andi	a5,a5,0xff
	j	.L31
.L30:
	.loc 1 117 25 discriminator 2
	li	a5,31
.L31:
	.loc 1 117 23 is_stmt 1 discriminator 4
	lw	a4,-52(s0)
	sb	a5,46(a4)
	.loc 1 121 8
	lw	a4,-20(s0)
	lw	a5,-60(s0)
	bgtu	a4,a5,.L32
	.loc 1 122 28
	lw	a4,-56(s0)
	lw	a5,-20(s0)
	add	a4,a4,a5
	.loc 1 122 22
	lw	a5,-52(s0)
	sw	a4,48(a5)
	.loc 1 123 32
	lw	a4,-60(s0)
	lw	a5,-20(s0)
	sub	a4,a4,a5
	.loc 1 123 26
	lw	a5,-52(s0)
	sw	a4,52(a5)
.L32:
	.loc 1 126 12
	li	a5,1
.L4:
	.loc 1 127 1
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
.LFE2:
	.size	coap_parse, .-coap_parse
	.section	.text.coap_build_simple,"ax",@progbits
	.align	1
	.globl	coap_build_simple
	.type	coap_build_simple, @function
coap_build_simple:
.LFB3:
	.loc 1 141 1
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
	sw	a5,-80(s0)
	sw	a6,-84(s0)
	sw	a7,-88(s0)
	mv	a5,a2
	sb	a5,-73(s0)
	mv	a5,a3
	sb	a5,-74(s0)
	mv	a5,a4
	sh	a5,-76(s0)
	.loc 1 142 8
	lw	a5,-68(s0)
	beq	a5,zero,.L34
	.loc 1 142 14 discriminator 1
	lw	a4,-72(s0)
	li	a5,3
	bgtu	a4,a5,.L35
.L34:
	.loc 1 143 16
	li	a5,0
	j	.L36
.L35:
	.loc 1 146 12
	sw	zero,-20(s0)
	.loc 1 147 13
	sb	zero,-41(s0)
	.loc 1 150 59
	lbu	a5,-73(s0)
	slli	a5,a5,4
	andi	a5,a5,0xff
	andi	a5,a5,48
	andi	a4,a5,0xff
	.loc 1 150 78
	lbu	a5,-41(s0)
	andi	a5,a5,15
	andi	a5,a5,0xff
	.loc 1 150 65
	or	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 150 15
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	.loc 1 150 8
	lw	a3,-68(s0)
	add	a5,a3,a5
	.loc 1 150 21
	ori	a4,a4,64
	andi	a4,a4,0xff
	.loc 1 150 19
	sb	a4,0(a5)
	.loc 1 151 15
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 151 8
	lw	a4,-68(s0)
	add	a5,a4,a5
	.loc 1 151 19
	lbu	a4,-74(s0)
	sb	a4,0(a5)
	.loc 1 152 21
	lhu	a5,-76(s0)
	srli	a5,a5,8
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 1 152 15
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 152 8
	lw	a4,-68(s0)
	add	a5,a4,a5
	.loc 1 152 21
	andi	a4,a3,0xff
	.loc 1 152 19
	sb	a4,0(a5)
	.loc 1 153 15
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 153 8
	lw	a4,-68(s0)
	add	a5,a4,a5
	.loc 1 153 21
	lhu	a4,-76(s0)
	andi	a4,a4,0xff
	.loc 1 153 19
	sb	a4,0(a5)
	.loc 1 155 14
	sh	zero,-22(s0)
	.loc 1 158 8
	lw	a5,-80(s0)
	beq	a5,zero,.L37
	.loc 1 158 29 discriminator 1
	lw	a5,-80(s0)
	lbu	a5,0(a5)
	.loc 1 158 18 discriminator 1
	beq	a5,zero,.L37
.LBB4:
	.loc 1 159 21
	lw	a5,-80(s0)
	sw	a5,-28(s0)
	.loc 1 160 15
	j	.L38
.L40:
.LBB5:
	.loc 1 163 24
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L39:
	.loc 1 162 20
	lw	a5,-28(s0)
	lbu	a4,0(a5)
	.loc 1 162 29
	li	a5,47
	beq	a4,a5,.L40
	.loc 1 165 18
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 165 16
	beq	a5,zero,.L56
	.loc 1 169 25
	lw	a5,-28(s0)
	sw	a5,-32(s0)
	.loc 1 170 19
	j	.L42
.L44:
	.loc 1 171 20
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L42:
	.loc 1 170 20
	lw	a5,-32(s0)
	lbu	a5,0(a5)
	.loc 1 170 25
	beq	a5,zero,.L43
	.loc 1 170 28 discriminator 1
	lw	a5,-32(s0)
	lbu	a4,0(a5)
	.loc 1 170 25 discriminator 1
	li	a5,47
	bne	a4,a5,.L44
.L43:
	.loc 1 174 22
	li	a5,11
	sh	a5,-44(s0)
	.loc 1 175 22
	lhu	a5,-44(s0)
	mv	a4,a5
	lhu	a5,-22(s0)
	sub	a5,a4,a5
	sh	a5,-46(s0)
	.loc 1 176 47
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	.loc 1 176 22
	sh	a5,-48(s0)
	.loc 1 181 20
	sw	zero,-40(s0)
	.loc 1 184 16
	lhu	a4,-46(s0)
	li	a5,12
	bgtu	a4,a5,.L45
	.loc 1 185 30
	lhu	a5,-46(s0)
	sb	a5,-33(s0)
	j	.L46
.L45:
	.loc 1 186 23
	lhu	a4,-46(s0)
	li	a5,268
	bgtu	a4,a5,.L47
	.loc 1 187 30
	li	a5,13
	sb	a5,-33(s0)
	.loc 1 188 34
	lhu	a5,-46(s0)
	andi	a4,a5,0xff
	.loc 1 188 28
	lw	a5,-40(s0)
	addi	a3,a5,1
	sw	a3,-40(s0)
	.loc 1 188 34
	addi	a4,a4,-13
	andi	a4,a4,0xff
	.loc 1 188 32
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-40(a5)
	j	.L46
.L47:
.LBB6:
	.loc 1 190 30
	li	a5,14
	sb	a5,-33(s0)
	.loc 1 191 26
	lhu	a5,-46(s0)
	addi	a5,a5,-269
	sh	a5,-50(s0)
	.loc 1 192 34
	lhu	a5,-50(s0)
	srli	a5,a5,8
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 1 192 28
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 192 34
	andi	a4,a3,0xff
	.loc 1 192 32
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-40(a5)
	.loc 1 193 28
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 193 34
	lhu	a4,-50(s0)
	andi	a4,a4,0xff
	.loc 1 193 32
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-40(a5)
.L46:
.LBE6:
	.loc 1 197 16
	lhu	a4,-48(s0)
	li	a5,12
	bgtu	a4,a5,.L48
	.loc 1 198 28
	lhu	a5,-48(s0)
	sb	a5,-34(s0)
	j	.L49
.L48:
	.loc 1 199 23
	lhu	a4,-48(s0)
	li	a5,268
	bgtu	a4,a5,.L50
	.loc 1 200 28
	li	a5,13
	sb	a5,-34(s0)
	.loc 1 201 34
	lhu	a5,-48(s0)
	andi	a4,a5,0xff
	.loc 1 201 28
	lw	a5,-40(s0)
	addi	a3,a5,1
	sw	a3,-40(s0)
	.loc 1 201 34
	addi	a4,a4,-13
	andi	a4,a4,0xff
	.loc 1 201 32
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-40(a5)
	j	.L49
.L50:
.LBB7:
	.loc 1 203 28
	li	a5,14
	sb	a5,-34(s0)
	.loc 1 204 26
	lhu	a5,-48(s0)
	addi	a5,a5,-269
	sh	a5,-52(s0)
	.loc 1 205 34
	lhu	a5,-52(s0)
	srli	a5,a5,8
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 1 205 28
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 205 34
	andi	a4,a3,0xff
	.loc 1 205 32
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-40(a5)
	.loc 1 206 28
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 206 34
	lhu	a4,-52(s0)
	andi	a4,a4,0xff
	.loc 1 206 32
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-40(a5)
.L49:
.LBE7:
	.loc 1 209 28
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	add	a4,a4,a5
	.loc 1 209 38
	lhu	a5,-48(s0)
	add	a5,a4,a5
	addi	a5,a5,1
	.loc 1 209 16
	lw	a4,-72(s0)
	bgeu	a4,a5,.L51
	.loc 1 210 24
	li	a5,0
	j	.L36
.L51:
	.loc 1 213 59
	lb	a5,-33(s0)
	slli	a5,a5,4
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 213 73
	lb	a5,-34(s0)
	andi	a5,a5,15
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 213 59
	or	a5,a4,a5
	slli	a3,a5,24
	srai	a3,a3,24
	.loc 1 213 23
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 213 16
	lw	a4,-68(s0)
	add	a5,a4,a5
	.loc 1 213 29
	andi	a4,a3,0xff
	.loc 1 213 27
	sb	a4,0(a5)
	.loc 1 214 16
	lw	a5,-40(s0)
	beq	a5,zero,.L52
	.loc 1 215 28
	lw	a4,-68(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 215 17
	addi	a4,s0,-56
	lw	a2,-40(s0)
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 216 24
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L52:
	.loc 1 219 24
	lw	a4,-68(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 219 13
	lhu	a4,-48(s0)
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 220 20
	lhu	a5,-48(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 222 26
	lhu	a5,-44(s0)
	sh	a5,-22(s0)
	.loc 1 223 21
	lw	a5,-32(s0)
	sw	a5,-28(s0)
.L38:
.LBE5:
	.loc 1 160 16
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L39
	j	.L37
.L56:
.LBB8:
	.loc 1 166 17
	nop
.L37:
.LBE8:
.LBE4:
	.loc 1 228 8
	lw	a5,-84(s0)
	beq	a5,zero,.L54
	.loc 1 228 17 discriminator 1
	lw	a5,-88(s0)
	beq	a5,zero,.L54
	.loc 1 229 24
	lw	a4,-20(s0)
	lw	a5,-88(s0)
	add	a5,a4,a5
	addi	a5,a5,1
	.loc 1 229 12
	lw	a4,-72(s0)
	bgeu	a4,a5,.L55
	.loc 1 230 20
	li	a5,0
	j	.L36
.L55:
	.loc 1 232 19
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 232 12
	lw	a4,-68(s0)
	add	a5,a4,a5
	.loc 1 232 23
	li	a4,-1
	sb	a4,0(a5)
	.loc 1 233 20
	lw	a4,-68(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 233 9
	lw	a2,-88(s0)
	lw	a1,-84(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 234 16
	lw	a4,-20(s0)
	lw	a5,-88(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L54:
	.loc 1 237 12
	lw	a5,-20(s0)
.L36:
	.loc 1 238 1
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
.LFE3:
	.size	coap_build_simple, .-coap_build_simple
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/include/coap_minimal.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x425
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x8
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x58
	.uleb128 0xd
	.4byte	0x47
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x8
	.4byte	.LASF8
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x87
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x13
	.byte	0x38
	.byte	0x4
	.byte	0x1f
	.byte	0x9
	.4byte	0x124
	.uleb128 0x14
	.string	"ver"
	.byte	0x4
	.byte	0x20
	.byte	0xd
	.4byte	0x47
	.byte	0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x21
	.byte	0xd
	.4byte	0x47
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x22
	.byte	0xd
	.4byte	0x47
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x23
	.byte	0xd
	.4byte	0x47
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x24
	.byte	0xe
	.4byte	0x5f
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x25
	.byte	0xd
	.4byte	0x124
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x27
	.byte	0xa
	.4byte	0x134
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x28
	.byte	0xd
	.4byte	0x47
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x2a
	.byte	0x14
	.4byte	0x150
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x2b
	.byte	0xc
	.4byte	0x8e
	.byte	0x34
	.byte	0
	.uleb128 0xb
	.4byte	0x47
	.4byte	0x134
	.uleb128 0xc
	.4byte	0x87
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	0x144
	.4byte	0x144
	.uleb128 0xc
	.4byte	0x87
	.byte	0x1f
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0xd
	.4byte	0x144
	.uleb128 0x6
	.4byte	0x53
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.byte	0x2c
	.byte	0x3
	.4byte	0xa1
	.uleb128 0x15
	.byte	0x4
	.uleb128 0xe
	.4byte	0x161
	.uleb128 0x6
	.4byte	0x14b
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x1f
	.4byte	0x161
	.4byte	0x18b
	.uleb128 0x5
	.4byte	0x163
	.uleb128 0x5
	.4byte	0x190
	.uleb128 0x5
	.4byte	0x8e
	.byte	0
	.uleb128 0x6
	.4byte	0x195
	.uleb128 0xe
	.4byte	0x18b
	.uleb128 0x16
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x21
	.4byte	0x161
	.4byte	0x1b4
	.uleb128 0x5
	.4byte	0x161
	.uleb128 0x5
	.4byte	0x80
	.uleb128 0x5
	.4byte	0x8e
	.byte	0
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x85
	.byte	0x8
	.4byte	0x8e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x332
	.uleb128 0x9
	.string	"buf"
	.byte	0x85
	.byte	0x23
	.4byte	0x332
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x86
	.byte	0x21
	.4byte	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x87
	.byte	0x22
	.4byte	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x88
	.byte	0x22
	.4byte	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x89
	.byte	0x23
	.4byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x8a
	.byte	0x26
	.4byte	0x168
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x8b
	.byte	0x29
	.4byte	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x8c
	.byte	0x21
	.4byte	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x92
	.byte	0xc
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x93
	.byte	0xd
	.4byte	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x9b
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0xa
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x9f
	.byte	0x15
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.4byte	.LLRL0
	.uleb128 0x7
	.string	"end"
	.byte	0xa9
	.byte	0x19
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0xae
	.byte	0x16
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0xaf
	.byte	0x16
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0xb0
	.byte	0x16
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0xb2
	.byte	0x15
	.4byte	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0xb3
	.byte	0x15
	.4byte	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x7
	.string	"ext"
	.byte	0xb4
	.byte	0x15
	.4byte	0x337
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0xb5
	.byte	0x14
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x317
	.uleb128 0x7
	.string	"tmp"
	.byte	0xbf
	.byte	0x1a
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.byte	0
	.uleb128 0xa
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x7
	.string	"tmp"
	.byte	0xcc
	.byte	0x1a
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x47
	.uleb128 0xb
	.4byte	0x47
	.4byte	0x347
	.uleb128 0xc
	.4byte	0x87
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x7
	.byte	0x6
	.4byte	0x41c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41c
	.uleb128 0x9
	.string	"msg"
	.byte	0x7
	.byte	0x1e
	.4byte	0x423
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.string	"buf"
	.byte	0x8
	.byte	0x20
	.4byte	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.string	"len"
	.byte	0x9
	.byte	0x18
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.string	"b0"
	.byte	0x12
	.byte	0xd
	.4byte	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x1d
	.byte	0xc
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x2a
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x2b
	.byte	0xc
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x2e
	.byte	0x11
	.4byte	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x35
	.byte	0x11
	.4byte	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x36
	.byte	0x11
	.4byte	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x53
	.byte	0x12
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x5e
	.byte	0x14
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF43
	.uleb128 0x6
	.4byte	0x155
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x34
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
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
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
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
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
	.4byte	.LBB5
	.byte	0x4
	.uleb128 .LBB5-.LBB5
	.uleb128 .LBE5-.LBB5
	.byte	0x4
	.uleb128 .LBB8-.LBB5
	.uleb128 .LBE8-.LBB5
	.byte	0
.LLRL1:
	.byte	0x7
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0x7
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"delta"
.LASF7:
	.string	"uint8_t"
.LASF39:
	.string	"coap_parse"
.LASF36:
	.string	"len_nibble"
.LASF37:
	.string	"ext_len"
.LASF40:
	.string	"uri_written"
.LASF35:
	.string	"delta_nibble"
.LASF23:
	.string	"payload_len"
.LASF20:
	.string	"uri_path"
.LASF28:
	.string	"maxlen"
.LASF38:
	.string	"coap_build_simple"
.LASF10:
	.string	"long unsigned int"
.LASF9:
	.string	"short unsigned int"
.LASF13:
	.string	"size_t"
.LASF21:
	.string	"uri_path_len"
.LASF19:
	.string	"token"
.LASF31:
	.string	"segment"
.LASF27:
	.string	"memset"
.LASF30:
	.string	"last_opt_num"
.LASF17:
	.string	"code"
.LASF32:
	.string	"opt_num"
.LASF6:
	.string	"unsigned char"
.LASF12:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF25:
	.string	"CoapMessage"
.LASF18:
	.string	"msg_id"
.LASF22:
	.string	"payload"
.LASF16:
	.string	"token_len"
.LASF34:
	.string	"opt_len"
.LASF5:
	.string	"long long int"
.LASF44:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF26:
	.string	"memcpy"
.LASF29:
	.string	"offset"
.LASF15:
	.string	"type"
.LASF3:
	.string	"short int"
.LASF41:
	.string	"byte"
.LASF8:
	.string	"uint16_t"
.LASF4:
	.string	"long int"
.LASF24:
	.string	"char"
.LASF14:
	.string	"long double"
.LASF2:
	.string	"signed char"
.LASF43:
	.string	"_Bool"
.LASF42:
	.string	"copy"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/suas_app_pqkem_gateway"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/coap_minimal.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
