	.file	"asn1parse.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/asn1parse.c"
	.section	.text.mbedtls_asn1_get_len,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_len
	.type	mbedtls_asn1_get_len, @function
mbedtls_asn1_get_len:
.LFB15:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/asn1parse.c"
	.loc 1 31 1
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
	.loc 1 32 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 32 14
	lw	a4,-40(s0)
	sub	a5,a4,a5
	.loc 1 32 8
	bgt	a5,zero,.L2
	.loc 1 33 16
	li	a5,-96
	j	.L3
.L2:
	.loc 1 36 11
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 36 10
	lbu	a5,0(a5)
	.loc 1 36 22
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 36 8
	blt	a5,zero,.L4
	.loc 1 37 18
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 37 21
	addi	a3,a5,1
	lw	a4,-36(s0)
	sw	a3,0(a4)
	.loc 1 37 16
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 37 14
	lw	a5,-44(s0)
	sw	a4,0(a5)
	j	.L5
.L4:
.LBB2:
	.loc 1 39 19
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 39 18
	lbu	a5,0(a5)
	.loc 1 39 13
	andi	a5,a5,127
	sw	a5,-20(s0)
	.loc 1 40 12
	lw	a5,-20(s0)
	beq	a5,zero,.L6
	.loc 1 40 20 discriminator 1
	lw	a4,-20(s0)
	li	a5,4
	ble	a4,a5,.L7
.L6:
	.loc 1 41 20
	li	a5,-100
	j	.L3
.L7:
	.loc 1 43 20
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 43 18
	lw	a4,-40(s0)
	sub	a5,a4,a5
	.loc 1 43 12
	lw	a4,-20(s0)
	blt	a4,a5,.L8
	.loc 1 44 20
	li	a5,-96
	j	.L3
.L8:
	.loc 1 46 14
	lw	a5,-44(s0)
	sw	zero,0(a5)
	.loc 1 47 10
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 47 13
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 48 15
	j	.L9
.L10:
	.loc 1 49 21
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 1 49 26
	slli	a5,a5,8
	.loc 1 49 35
	lw	a4,-36(s0)
	lw	a4,0(a4)
	.loc 1 49 34
	lbu	a4,0(a4)
	.loc 1 49 32
	or	a4,a5,a4
	.loc 1 49 18
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 1 50 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 50 17
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,0(a5)
.L9:
	.loc 1 48 17
	lw	a5,-20(s0)
	addi	a4,a5,-1
	sw	a4,-20(s0)
	.loc 1 48 16
	bne	a5,zero,.L10
.L5:
.LBE2:
	.loc 1 54 9
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 1 54 32
	lw	a4,-36(s0)
	lw	a4,0(a4)
	.loc 1 54 30
	lw	a3,-40(s0)
	sub	a4,a3,a4
	.loc 1 54 8
	bleu	a5,a4,.L11
	.loc 1 55 16
	li	a5,-96
	j	.L3
.L11:
	.loc 1 58 12
	li	a5,0
.L3:
	.loc 1 59 1
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
.LFE15:
	.size	mbedtls_asn1_get_len, .-mbedtls_asn1_get_len
	.section	.text.mbedtls_asn1_get_tag,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_tag
	.type	mbedtls_asn1_get_tag, @function
mbedtls_asn1_get_tag:
.LFB16:
	.loc 1 64 1
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
	.loc 1 65 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 65 14
	lw	a4,-24(s0)
	sub	a5,a4,a5
	.loc 1 65 8
	bgt	a5,zero,.L13
	.loc 1 66 16
	li	a5,-96
	j	.L14
.L13:
	.loc 1 69 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 69 9
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 69 8
	lw	a5,-32(s0)
	beq	a5,a4,.L15
	.loc 1 70 16
	li	a5,-98
	j	.L14
.L15:
	.loc 1 73 6
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 73 9
	addi	a4,a5,1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 75 12
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_asn1_get_len
	mv	a5,a0
.L14:
	.loc 1 76 1
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
	.size	mbedtls_asn1_get_tag, .-mbedtls_asn1_get_tag
	.section	.text.mbedtls_asn1_get_bool,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_bool
	.type	mbedtls_asn1_get_bool, @function
mbedtls_asn1_get_bool:
.LFB17:
	.loc 1 83 1
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
	.loc 1 84 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 87 16
	addi	a5,s0,-24
	li	a3,1
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 1 87 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L17
	.loc 1 88 16
	lw	a5,-20(s0)
	j	.L20
.L17:
	.loc 1 91 13
	lw	a4,-24(s0)
	.loc 1 91 8
	li	a5,1
	beq	a4,a5,.L19
	.loc 1 92 16
	li	a5,-100
	j	.L20
.L19:
	.loc 1 95 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 95 13
	lbu	a5,0(a5)
	.loc 1 95 27
	snez	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 1 95 10
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 1 96 6
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 96 9
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 98 12
	li	a5,0
.L20:
	.loc 1 99 1
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
.LFE17:
	.size	mbedtls_asn1_get_bool, .-mbedtls_asn1_get_bool
	.section	.text.asn1_get_tagged_int,"ax",@progbits
	.align	1
	.type	asn1_get_tagged_int, @function
asn1_get_tagged_int:
.LFB18:
	.loc 1 104 1
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
	.loc 1 105 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 108 16
	addi	a5,s0,-24
	lw	a3,-44(s0)
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 1 108 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L22
	.loc 1 109 16
	lw	a5,-20(s0)
	j	.L33
.L22:
	.loc 1 116 13
	lw	a5,-24(s0)
	.loc 1 116 8
	bne	a5,zero,.L24
	.loc 1 117 16
	li	a5,-100
	j	.L33
.L24:
	.loc 1 120 11
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 120 10
	lbu	a5,0(a5)
	.loc 1 120 22
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 120 8
	bge	a5,zero,.L26
	.loc 1 121 16
	li	a5,-100
	j	.L33
.L28:
	.loc 1 126 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 126 9
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 127 9
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L26:
	.loc 1 125 16
	lw	a5,-24(s0)
	.loc 1 125 20
	beq	a5,zero,.L27
	.loc 1 125 24 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 125 23 discriminator 1
	lbu	a5,0(a5)
	.loc 1 125 20 discriminator 1
	beq	a5,zero,.L28
.L27:
	.loc 1 132 13
	lw	a4,-24(s0)
	.loc 1 132 8
	li	a5,4
	bleu	a4,a5,.L29
	.loc 1 133 16
	li	a5,-100
	j	.L33
.L29:
	.loc 1 135 13
	lw	a4,-24(s0)
	.loc 1 135 8
	li	a5,4
	bne	a4,a5,.L30
	.loc 1 135 33 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 135 32 discriminator 1
	lbu	a5,0(a5)
	.loc 1 135 44 discriminator 1
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 135 28 discriminator 1
	bge	a5,zero,.L30
	.loc 1 136 16
	li	a5,-100
	j	.L33
.L30:
	.loc 1 139 10
	lw	a5,-48(s0)
	sw	zero,0(a5)
	.loc 1 140 11
	j	.L31
.L32:
	.loc 1 141 17
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 1 141 22
	slli	a5,a5,8
	.loc 1 141 31
	lw	a4,-36(s0)
	lw	a4,0(a4)
	.loc 1 141 30
	lbu	a4,0(a4)
	.loc 1 141 28
	or	a4,a5,a4
	.loc 1 141 14
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 1 142 10
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 142 13
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,0(a5)
.L31:
	.loc 1 140 15
	lw	a5,-24(s0)
	addi	a4,a5,-1
	sw	a4,-24(s0)
	.loc 1 140 18
	bne	a5,zero,.L32
	.loc 1 145 12
	li	a5,0
.L33:
	.loc 1 146 1
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
.LFE18:
	.size	asn1_get_tagged_int, .-asn1_get_tagged_int
	.section	.text.mbedtls_asn1_get_int,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_int
	.type	mbedtls_asn1_get_int, @function
mbedtls_asn1_get_int:
.LFB19:
	.loc 1 151 1
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
	.loc 1 152 12
	lw	a3,-28(s0)
	li	a2,2
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	asn1_get_tagged_int
	mv	a5,a0
	.loc 1 153 1
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
.LFE19:
	.size	mbedtls_asn1_get_int, .-mbedtls_asn1_get_int
	.section	.text.mbedtls_asn1_get_enum,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_enum
	.type	mbedtls_asn1_get_enum, @function
mbedtls_asn1_get_enum:
.LFB20:
	.loc 1 158 1
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
	.loc 1 159 12
	lw	a3,-28(s0)
	li	a2,10
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	asn1_get_tagged_int
	mv	a5,a0
	.loc 1 160 1
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
	.size	mbedtls_asn1_get_enum, .-mbedtls_asn1_get_enum
	.section	.text.mbedtls_asn1_get_mpi,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_mpi
	.type	mbedtls_asn1_get_mpi, @function
mbedtls_asn1_get_mpi:
.LFB21:
	.loc 1 166 1
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
	.loc 1 167 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 170 16
	addi	a5,s0,-24
	li	a3,2
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 1 170 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L39
	.loc 1 171 16
	lw	a5,-20(s0)
	j	.L41
.L39:
	.loc 1 174 11
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a4,-24(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-44(s0)
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 1 176 5
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 176 8
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 178 12
	lw	a5,-20(s0)
.L41:
	.loc 1 179 1
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
.LFE21:
	.size	mbedtls_asn1_get_mpi, .-mbedtls_asn1_get_mpi
	.section	.text.mbedtls_asn1_get_bitstring,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_bitstring
	.type	mbedtls_asn1_get_bitstring, @function
mbedtls_asn1_get_bitstring:
.LFB22:
	.loc 1 184 1
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
	.loc 1 185 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 188 16
	lw	a5,-44(s0)
	li	a3,3
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 1 188 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L43
	.loc 1 189 16
	lw	a5,-20(s0)
	j	.L44
.L43:
	.loc 1 193 11
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 1 193 8
	bne	a5,zero,.L45
	.loc 1 194 16
	li	a5,-96
	j	.L44
.L45:
	.loc 1 196 7
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 1 196 13
	addi	a4,a5,-1
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 1 199 24
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 199 23
	lbu	a4,0(a5)
	.loc 1 199 21
	lw	a5,-44(s0)
	sb	a4,4(a5)
	.loc 1 200 11
	lw	a5,-44(s0)
	lbu	a4,4(a5)
	.loc 1 200 8
	li	a5,7
	bleu	a4,a5,.L46
	.loc 1 201 16
	li	a5,-100
	j	.L44
.L46:
	.loc 1 203 6
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 203 9
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 206 13
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 206 11
	lw	a5,-44(s0)
	sw	a4,8(a5)
	.loc 1 207 5
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 207 13
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 1 207 8
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 209 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 209 8
	lw	a4,-40(s0)
	beq	a4,a5,.L47
	.loc 1 210 16
	li	a5,-102
	j	.L44
.L47:
	.loc 1 213 12
	li	a5,0
.L44:
	.loc 1 214 1
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
.LFE22:
	.size	mbedtls_asn1_get_bitstring, .-mbedtls_asn1_get_bitstring
	.section	.text.mbedtls_asn1_traverse_sequence_of,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_traverse_sequence_of
	.type	mbedtls_asn1_traverse_sequence_of, @function
mbedtls_asn1_traverse_sequence_of:
.LFB23:
	.loc 1 228 1
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
	mv	a1,a2
	mv	a2,a3
	mv	a3,a4
	mv	a4,a5
	sw	a6,-48(s0)
	sw	a7,-52(s0)
	mv	a5,a1
	sb	a5,-41(s0)
	mv	a5,a2
	sb	a5,-42(s0)
	mv	a5,a3
	sb	a5,-43(s0)
	mv	a5,a4
	sb	a5,-44(s0)
	.loc 1 233 16
	addi	a5,s0,-28
	li	a3,48
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 1 233 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L49
	.loc 1 235 16
	lw	a5,-20(s0)
	j	.L57
.L49:
	.loc 1 238 9
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 238 12
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 238 8
	lw	a4,-40(s0)
	beq	a4,a5,.L52
	.loc 1 239 16
	li	a5,-102
	j	.L57
.L56:
.LBB3:
	.loc 1 243 37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 243 40
	addi	a3,a5,1
	lw	a4,-36(s0)
	sw	a3,0(a4)
	.loc 1 243 29
	lbu	a5,0(a5)
	sb	a5,-21(s0)
	.loc 1 245 35
	lbu	a5,-21(s0)
	mv	a4,a5
	lbu	a5,-41(s0)
	and	a5,a4,a5
	andi	a5,a5,0xff
	.loc 1 245 12
	lbu	a4,-42(s0)
	beq	a4,a5,.L53
	.loc 1 246 20
	li	a5,-98
	j	.L57
.L53:
	.loc 1 249 20
	addi	a5,s0,-28
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_len
	sw	a0,-20(s0)
	.loc 1 249 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L54
	.loc 1 250 20
	lw	a5,-20(s0)
	j	.L57
.L54:
	.loc 1 253 34
	lbu	a5,-21(s0)
	mv	a4,a5
	lbu	a5,-43(s0)
	and	a5,a4,a5
	andi	a5,a5,0xff
	.loc 1 253 12
	lbu	a4,-44(s0)
	bne	a4,a5,.L55
	.loc 1 254 16
	lw	a5,-48(s0)
	beq	a5,zero,.L55
	.loc 1 255 23
	lbu	a4,-21(s0)
	lw	a5,-36(s0)
	lw	a2,0(a5)
	lw	a3,-28(s0)
	lw	a5,-48(s0)
	mv	a1,a4
	lw	a0,-52(s0)
	jalr	a5
.LVL0:
	sw	a0,-20(s0)
	.loc 1 256 20
	lw	a5,-20(s0)
	beq	a5,zero,.L55
	.loc 1 257 28
	lw	a5,-20(s0)
	j	.L57
.L55:
	.loc 1 262 9
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 262 12
	lw	a5,-28(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
.L52:
.LBE3:
	.loc 1 242 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 242 15
	lw	a4,-40(s0)
	bgtu	a4,a5,.L56
	.loc 1 265 12
	li	a5,0
.L57:
	.loc 1 266 1
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
.LFE23:
	.size	mbedtls_asn1_traverse_sequence_of, .-mbedtls_asn1_traverse_sequence_of
	.section	.text.mbedtls_asn1_get_bitstring_null,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_bitstring_null
	.type	mbedtls_asn1_get_bitstring_null, @function
mbedtls_asn1_get_bitstring_null:
.LFB24:
	.loc 1 273 1
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
	.loc 1 274 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 276 16
	li	a3,3
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 1 276 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L59
	.loc 1 277 16
	lw	a5,-20(s0)
	j	.L60
.L59:
	.loc 1 280 9
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 1 280 8
	bne	a5,zero,.L61
	.loc 1 281 16
	li	a5,-104
	j	.L60
.L61:
	.loc 1 283 8
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 1 283 5
	addi	a4,a5,-1
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 1 285 10
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 285 9
	lbu	a5,0(a5)
	.loc 1 285 8
	beq	a5,zero,.L62
	.loc 1 286 16
	li	a5,-104
	j	.L60
.L62:
	.loc 1 288 8
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 288 5
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 290 12
	li	a5,0
.L60:
	.loc 1 291 1
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
.LFE24:
	.size	mbedtls_asn1_get_bitstring_null, .-mbedtls_asn1_get_bitstring_null
	.section	.text.mbedtls_asn1_sequence_free,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_sequence_free
	.type	mbedtls_asn1_sequence_free, @function
mbedtls_asn1_sequence_free:
.LFB25:
	.loc 1 294 1
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
	.loc 1 295 11
	j	.L64
.L65:
.LBB4:
	.loc 1 296 32
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 297 9
	lw	a0,-36(s0)
	call	free
	.loc 1 298 13
	lw	a5,-20(s0)
	sw	a5,-36(s0)
.L64:
.LBE4:
	.loc 1 295 16
	lw	a5,-36(s0)
	bne	a5,zero,.L65
	.loc 1 300 1
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
.LFE25:
	.size	mbedtls_asn1_sequence_free, .-mbedtls_asn1_sequence_free
	.section	.text.asn1_get_sequence_of_cb,"ax",@progbits
	.align	1
	.type	asn1_get_sequence_of_cb, @function
asn1_get_sequence_of_cb:
.LFB26:
	.loc 1 311 1
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
	.loc 1 312 36
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 314 28
	lw	a5,-24(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 317 17
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 317 8
	beq	a5,zero,.L67
	.loc 1 319 13
	li	a1,16
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 1 318 19
	lw	a5,-20(s0)
	sw	a4,12(a5)
	.loc 1 321 16
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 321 12
	bne	a5,zero,.L68
	.loc 1 322 20
	li	a5,-106
	j	.L69
.L68:
	.loc 1 325 13
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L67:
	.loc 1 328 16
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	sw	a4,8(a5)
	.loc 1 329 18
	lw	a5,-20(s0)
	lw	a4,-48(s0)
	sw	a4,4(a5)
	.loc 1 330 18
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 1 332 17
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	sw	a4,4(a5)
	.loc 1 333 12
	li	a5,0
.L69:
	.loc 1 334 1
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
.LFE26:
	.size	asn1_get_sequence_of_cb, .-asn1_get_sequence_of_cb
	.section	.text.mbedtls_asn1_get_sequence_of,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_sequence_of
	.type	mbedtls_asn1_get_sequence_of, @function
mbedtls_asn1_get_sequence_of:
.LFB27:
	.loc 1 343 1
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
	.loc 1 344 35
	lw	a5,-48(s0)
	sw	a5,-24(s0)
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	.loc 1 345 5
	li	a2,16
	li	a1,0
	lw	a0,-44(s0)
	call	memset
	.loc 1 346 12
	lw	a5,-48(s0)
	andi	a3,a5,0xff
	addi	a5,s0,-24
	mv	a7,a5
	lui	a5,%hi(asn1_get_sequence_of_cb)
	addi	a6,a5,%lo(asn1_get_sequence_of_cb)
	li	a5,0
	li	a4,0
	li	a2,255
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_traverse_sequence_of
	mv	a5,a0
	.loc 1 349 1
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
.LFE27:
	.size	mbedtls_asn1_get_sequence_of, .-mbedtls_asn1_get_sequence_of
	.section	.text.mbedtls_asn1_get_alg,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_alg
	.type	mbedtls_asn1_get_alg, @function
mbedtls_asn1_get_alg:
.LFB28:
	.loc 1 354 1
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
	.loc 1 355 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 358 16
	addi	a5,s0,-24
	li	a3,48
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 1 358 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L73
	.loc 1 360 16
	lw	a5,-20(s0)
	j	.L80
.L73:
	.loc 1 363 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 363 14
	lw	a4,-40(s0)
	sub	a5,a4,a5
	.loc 1 363 8
	bgt	a5,zero,.L75
	.loc 1 364 16
	li	a5,-96
	j	.L80
.L75:
	.loc 1 367 17
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 367 16
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 367 14
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 1 368 11
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 368 14
	lw	a5,-24(s0)
	.loc 1 368 9
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 1 370 16
	lw	a5,-44(s0)
	addi	a5,a5,4
	li	a3,6
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 1 370 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L76
	.loc 1 371 16
	lw	a5,-20(s0)
	j	.L80
.L76:
	.loc 1 374 14
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 374 12
	lw	a5,-44(s0)
	sw	a4,8(a5)
	.loc 1 375 5
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 375 14
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 375 8
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 377 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 377 8
	lw	a4,-40(s0)
	bne	a4,a5,.L77
	.loc 1 378 9
	li	a1,12
	lw	a0,-48(s0)
	call	mbedtls_platform_zeroize
	.loc 1 379 16
	li	a5,0
	j	.L80
.L77:
	.loc 1 382 20
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 382 19
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 382 17
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 1 383 6
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 383 9
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 385 16
	lw	a5,-48(s0)
	addi	a5,a5,4
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_len
	sw	a0,-20(s0)
	.loc 1 385 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L78
	.loc 1 386 16
	lw	a5,-20(s0)
	j	.L80
.L78:
	.loc 1 389 17
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 389 15
	lw	a5,-48(s0)
	sw	a4,8(a5)
	.loc 1 390 5
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 390 17
	lw	a5,-48(s0)
	lw	a5,4(a5)
	.loc 1 390 8
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 392 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 392 8
	lw	a4,-40(s0)
	beq	a4,a5,.L79
	.loc 1 393 16
	li	a5,-102
	j	.L80
.L79:
	.loc 1 396 12
	li	a5,0
.L80:
	.loc 1 397 1
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
	.size	mbedtls_asn1_get_alg, .-mbedtls_asn1_get_alg
	.section	.text.mbedtls_asn1_get_alg_null,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_alg_null
	.type	mbedtls_asn1_get_alg_null, @function
mbedtls_asn1_get_alg_null:
.LFB29:
	.loc 1 402 1
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
	.loc 1 403 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 406 5
	addi	a5,s0,-32
	li	a2,12
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 408 16
	addi	a5,s0,-32
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_alg
	sw	a0,-20(s0)
	.loc 1 408 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L82
	.loc 1 409 16
	lw	a5,-20(s0)
	j	.L87
.L82:
	.loc 1 412 16
	lw	a4,-32(s0)
	.loc 1 412 8
	li	a5,5
	beq	a4,a5,.L84
	.loc 1 412 38 discriminator 1
	lw	a5,-32(s0)
	.loc 1 412 29 discriminator 1
	bne	a5,zero,.L85
.L84:
	.loc 1 412 58 discriminator 3
	lw	a5,-28(s0)
	.loc 1 412 49 discriminator 3
	beq	a5,zero,.L86
.L85:
	.loc 1 413 16
	li	a5,-104
	j	.L87
.L86:
	.loc 1 416 12
	li	a5,0
.L87:
	.loc 1 417 1
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
	.size	mbedtls_asn1_get_alg_null, .-mbedtls_asn1_get_alg_null
	.section	.text.mbedtls_asn1_free_named_data_list,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_free_named_data_list
	.type	mbedtls_asn1_free_named_data_list, @function
mbedtls_asn1_free_named_data_list:
.LFB30:
	.loc 1 434 1
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
	.loc 1 437 11
	j	.L89
.L90:
	.loc 1 438 20
	lw	a5,-20(s0)
	lw	a4,24(a5)
	.loc 1 438 15
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 439 22
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 439 9
	mv	a0,a5
	call	free
	.loc 1 440 22
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 440 9
	mv	a0,a5
	call	free
	.loc 1 441 9
	lw	a0,-20(s0)
	call	free
.L89:
	.loc 1 437 17
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 437 26
	lw	a5,-20(s0)
	bne	a5,zero,.L90
	.loc 1 443 1
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
.LFE30:
	.size	mbedtls_asn1_free_named_data_list, .-mbedtls_asn1_free_named_data_list
	.section	.text.mbedtls_asn1_free_named_data_list_shallow,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_free_named_data_list_shallow
	.type	mbedtls_asn1_free_named_data_list_shallow, @function
mbedtls_asn1_free_named_data_list_shallow:
.LFB31:
	.loc 1 446 1
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
.LBB5:
	.loc 1 447 5
	j	.L92
.L93:
	.loc 1 448 14
	lw	a5,-36(s0)
	lw	a5,24(a5)
	sw	a5,-20(s0)
	.loc 1 449 9
	lw	a0,-36(s0)
	call	free
	.loc 1 447 59 discriminator 2
	lw	a5,-20(s0)
	sw	a5,-36(s0)
.L92:
	.loc 1 447 46 discriminator 1
	lw	a5,-36(s0)
	bne	a5,zero,.L93
.LBE5:
	.loc 1 451 1
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
.LFE31:
	.size	mbedtls_asn1_free_named_data_list_shallow, .-mbedtls_asn1_free_named_data_list_shallow
	.section	.text.mbedtls_asn1_find_named_data,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_find_named_data
	.type	mbedtls_asn1_find_named_data, @function
mbedtls_asn1_find_named_data:
.LFB32:
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
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	.loc 1 456 11
	j	.L95
.L98:
	.loc 1 457 22
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 457 12
	lw	a4,-28(s0)
	bne	a4,a5,.L96
	.loc 1 458 29
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 458 13
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 1 457 34 discriminator 1
	beq	a5,zero,.L100
.L96:
	.loc 1 462 14
	lw	a5,-20(s0)
	lw	a5,24(a5)
	sw	a5,-20(s0)
.L95:
	.loc 1 456 17
	lw	a5,-20(s0)
	bne	a5,zero,.L98
	j	.L97
.L100:
	.loc 1 459 13
	nop
.L97:
	.loc 1 465 12
	lw	a5,-20(s0)
	.loc 1 466 1
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
.LFE32:
	.size	mbedtls_asn1_find_named_data, .-mbedtls_asn1_find_named_data
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x987
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x17
	.4byte	.LASF59
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x12
	.4byte	0x32
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x19
	.byte	0x4
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x12
	.4byte	0x9c
	.uleb128 0x2
	.4byte	0xa3
	.uleb128 0x2
	.4byte	0xb2
	.uleb128 0x1a
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0xaa
	.byte	0x12
	.4byte	0x89
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x8
	.byte	0x4
	.byte	0xd0
	.4byte	0xed
	.uleb128 0x6
	.string	"p"
	.byte	0x4
	.byte	0xd5
	.byte	0x17
	.4byte	0xed
	.byte	0
	.uleb128 0x6
	.string	"s"
	.byte	0x4
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x6
	.string	"n"
	.byte	0x4
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	0xb3
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0xf0
	.byte	0x1
	.4byte	0xbf
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0xc
	.byte	0x5
	.byte	0x8d
	.4byte	0x130
	.uleb128 0x6
	.string	"tag"
	.byte	0x5
	.byte	0x8e
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x6
	.string	"len"
	.byte	0x5
	.byte	0x8f
	.byte	0xc
	.4byte	0x76
	.byte	0x4
	.uleb128 0x6
	.string	"p"
	.byte	0x5
	.byte	0x90
	.byte	0x14
	.4byte	0x97
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x92
	.byte	0x1
	.4byte	0xfe
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0xc
	.byte	0x5
	.byte	0x97
	.4byte	0x16d
	.uleb128 0x6
	.string	"len"
	.byte	0x5
	.byte	0x98
	.byte	0xc
	.4byte	0x76
	.byte	0
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x99
	.byte	0x13
	.4byte	0x32
	.byte	0x4
	.uleb128 0x6
	.string	"p"
	.byte	0x5
	.byte	0x9a
	.byte	0x14
	.4byte	0x97
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0x9c
	.byte	0x1
	.4byte	0x13c
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x10
	.byte	0x5
	.byte	0xa1
	.4byte	0x19f
	.uleb128 0x6
	.string	"buf"
	.byte	0x5
	.byte	0xa2
	.byte	0x16
	.4byte	0x130
	.byte	0
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0xab
	.byte	0x23
	.4byte	0x19f
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	0x179
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0xad
	.byte	0x1
	.4byte	0x179
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x20
	.byte	0x5
	.byte	0xb2
	.4byte	0x1ef
	.uleb128 0x6
	.string	"oid"
	.byte	0x5
	.byte	0xb3
	.byte	0x16
	.4byte	0x130
	.byte	0
	.uleb128 0x6
	.string	"val"
	.byte	0x5
	.byte	0xb4
	.byte	0x16
	.4byte	0x130
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0xbd
	.byte	0x25
	.4byte	0x1ef
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0xc4
	.byte	0x13
	.4byte	0x32
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.4byte	0x1b0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x5
	.byte	0xc6
	.byte	0x1
	.4byte	0x1b0
	.uleb128 0x12
	.4byte	0x1f4
	.uleb128 0x1b
	.byte	0x8
	.byte	0x1
	.2byte	0x12e
	.byte	0x9
	.4byte	0x22a
	.uleb128 0x15
	.string	"tag"
	.2byte	0x12f
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x15
	.string	"cur"
	.2byte	0x130
	.byte	0x1c
	.4byte	0x22a
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	0x1a4
	.uleb128 0x1c
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x131
	.byte	0x3
	.4byte	0x205
	.uleb128 0x13
	.4byte	.LASF25
	.byte	0x6
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x25c
	.uleb128 0x4
	.4byte	0xad
	.uleb128 0x4
	.4byte	0xad
	.uleb128 0x4
	.4byte	0x76
	.byte	0
	.uleb128 0x16
	.4byte	.LASF28
	.byte	0x8
	.byte	0x9f
	.4byte	0x272
	.uleb128 0x4
	.4byte	0x95
	.uleb128 0x4
	.4byte	0x76
	.byte	0
	.uleb128 0x13
	.4byte	.LASF26
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.4byte	0x95
	.4byte	0x292
	.uleb128 0x4
	.4byte	0x95
	.uleb128 0x4
	.4byte	0x68
	.uleb128 0x4
	.4byte	0x76
	.byte	0
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x7
	.byte	0x5a
	.byte	0x7
	.4byte	0x95
	.4byte	0x2ad
	.uleb128 0x4
	.4byte	0x76
	.uleb128 0x4
	.4byte	0x76
	.byte	0
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0x7
	.byte	0x5e
	.4byte	0x2be
	.uleb128 0x4
	.4byte	0x95
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x227
	.byte	0x5
	.4byte	0x68
	.4byte	0x2df
	.uleb128 0x4
	.4byte	0x2df
	.uleb128 0x4
	.4byte	0x2e4
	.uleb128 0x4
	.4byte	0x76
	.byte	0
	.uleb128 0x2
	.4byte	0xf2
	.uleb128 0x2
	.4byte	0x39
	.uleb128 0xc
	.4byte	.LASF36
	.2byte	0x1c5
	.byte	0x20
	.4byte	0x331
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x331
	.uleb128 0xd
	.4byte	.LASF31
	.2byte	0x1c5
	.byte	0x5c
	.4byte	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"oid"
	.2byte	0x1c6
	.byte	0x49
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"len"
	.2byte	0x1c6
	.byte	0x55
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2
	.4byte	0x200
	.uleb128 0x14
	.4byte	.LASF33
	.2byte	0x1bd
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x374
	.uleb128 0xd
	.4byte	.LASF32
	.2byte	0x1bd
	.byte	0x49
	.4byte	0x374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0xe
	.4byte	.LASF21
	.2byte	0x1bf
	.byte	0x23
	.4byte	0x374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	0x1f4
	.uleb128 0x14
	.4byte	.LASF34
	.2byte	0x1b1
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ad
	.uleb128 0xd
	.4byte	.LASF35
	.2byte	0x1b1
	.byte	0x42
	.4byte	0x3ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"cur"
	.2byte	0x1b3
	.byte	0x1e
	.4byte	0x374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2
	.4byte	0x374
	.uleb128 0xc
	.4byte	.LASF37
	.2byte	0x18f
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x416
	.uleb128 0x3
	.string	"p"
	.2byte	0x18f
	.byte	0x2f
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"end"
	.2byte	0x190
	.byte	0x34
	.4byte	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"alg"
	.2byte	0x191
	.byte	0x31
	.4byte	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.string	"ret"
	.2byte	0x193
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF38
	.2byte	0x194
	.byte	0x16
	.4byte	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2
	.4byte	0x97
	.uleb128 0x2
	.4byte	0x130
	.uleb128 0xc
	.4byte	.LASF39
	.2byte	0x15f
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x493
	.uleb128 0x3
	.string	"p"
	.2byte	0x15f
	.byte	0x2a
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"end"
	.2byte	0x160
	.byte	0x2f
	.4byte	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"alg"
	.2byte	0x161
	.byte	0x2c
	.4byte	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.4byte	.LASF38
	.2byte	0x161
	.byte	0x43
	.4byte	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"ret"
	.2byte	0x163
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"len"
	.2byte	0x164
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF40
	.2byte	0x153
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f7
	.uleb128 0x3
	.string	"p"
	.2byte	0x153
	.byte	0x32
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"end"
	.2byte	0x154
	.byte	0x37
	.4byte	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"cur"
	.2byte	0x155
	.byte	0x39
	.4byte	0x22a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"tag"
	.2byte	0x156
	.byte	0x26
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	.LASF41
	.2byte	0x158
	.byte	0x23
	.4byte	0x22f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x133
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56d
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x133
	.byte	0x2a
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"tag"
	.2byte	0x134
	.byte	0x28
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	.LASF42
	.2byte	0x135
	.byte	0x33
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"len"
	.2byte	0x136
	.byte	0x2b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	.LASF41
	.2byte	0x138
	.byte	0x24
	.4byte	0x56d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"cur"
	.2byte	0x13a
	.byte	0x1c
	.4byte	0x22a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2
	.4byte	0x22f
	.uleb128 0x14
	.4byte	.LASF43
	.2byte	0x125
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b0
	.uleb128 0x3
	.string	"seq"
	.2byte	0x125
	.byte	0x38
	.4byte	0x22a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0xe
	.4byte	.LASF21
	.2byte	0x128
	.byte	0x20
	.4byte	0x22a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.2byte	0x10f
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x605
	.uleb128 0x3
	.string	"p"
	.2byte	0x10f
	.byte	0x35
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"end"
	.2byte	0x10f
	.byte	0x4d
	.4byte	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"len"
	.2byte	0x110
	.byte	0x2d
	.4byte	0x605
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.string	"ret"
	.2byte	0x112
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0xdc
	.4byte	0x68
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c4
	.uleb128 0x1
	.string	"p"
	.byte	0xdd
	.byte	0x15
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"end"
	.byte	0xde
	.byte	0x1a
	.4byte	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0xdf
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0xdf
	.byte	0x30
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0xe0
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -43
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0xe0
	.byte	0x2f
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"cb"
	.byte	0xe1
	.byte	0xb
	.4byte	0x6e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"ctx"
	.byte	0xe3
	.byte	0xb
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"ret"
	.byte	0xe5
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"len"
	.byte	0xe6
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x7
	.string	"tag"
	.byte	0xf3
	.byte	0x1d
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x68
	.4byte	0x6e2
	.uleb128 0x4
	.4byte	0x95
	.uleb128 0x4
	.4byte	0x68
	.uleb128 0x4
	.4byte	0x97
	.uleb128 0x4
	.4byte	0x76
	.byte	0
	.uleb128 0x2
	.4byte	0x6c4
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0xb6
	.4byte	0x68
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x735
	.uleb128 0x1
	.string	"p"
	.byte	0xb6
	.byte	0x30
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"end"
	.byte	0xb6
	.byte	0x48
	.4byte	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"bs"
	.byte	0xb7
	.byte	0x38
	.4byte	0x735
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"ret"
	.byte	0xb9
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2
	.4byte	0x16d
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0xa3
	.4byte	0x68
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x795
	.uleb128 0x1
	.string	"p"
	.byte	0xa3
	.byte	0x2a
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"end"
	.byte	0xa4
	.byte	0x2f
	.4byte	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"X"
	.byte	0xa5
	.byte	0x27
	.4byte	0x2df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"ret"
	.byte	0xa7
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"len"
	.byte	0xa8
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x9b
	.4byte	0x68
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d6
	.uleb128 0x1
	.string	"p"
	.byte	0x9b
	.byte	0x2b
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"end"
	.byte	0x9c
	.byte	0x30
	.4byte	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"val"
	.byte	0x9d
	.byte	0x20
	.4byte	0x7d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x94
	.4byte	0x68
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x81c
	.uleb128 0x1
	.string	"p"
	.byte	0x94
	.byte	0x2a
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"end"
	.byte	0x95
	.byte	0x2f
	.4byte	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"val"
	.byte	0x96
	.byte	0x1f
	.4byte	0x7d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x20
	.4byte	.LASF55
	.byte	0x1
	.byte	0x65
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x889
	.uleb128 0x1
	.string	"p"
	.byte	0x65
	.byte	0x30
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"end"
	.byte	0x66
	.byte	0x35
	.4byte	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"tag"
	.byte	0x67
	.byte	0x24
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"val"
	.byte	0x67
	.byte	0x2e
	.4byte	0x7d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"ret"
	.byte	0x69
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"len"
	.byte	0x6a
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x50
	.4byte	0x68
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e6
	.uleb128 0x1
	.string	"p"
	.byte	0x50
	.byte	0x2b
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"end"
	.byte	0x51
	.byte	0x30
	.4byte	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"val"
	.byte	0x52
	.byte	0x20
	.4byte	0x7d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"ret"
	.byte	0x54
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"len"
	.byte	0x55
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x3d
	.4byte	0x68
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x935
	.uleb128 0x1
	.string	"p"
	.byte	0x3d
	.byte	0x2a
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"end"
	.byte	0x3e
	.byte	0x2f
	.4byte	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"len"
	.byte	0x3f
	.byte	0x22
	.4byte	0x605
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"tag"
	.byte	0x3f
	.byte	0x2b
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.4byte	.LASF58
	.byte	0x1
	.byte	0x1c
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1
	.string	"p"
	.byte	0x1c
	.byte	0x2a
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"end"
	.byte	0x1d
	.byte	0x2f
	.4byte	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"len"
	.byte	0x1e
	.byte	0x22
	.4byte	0x605
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x7
	.string	"n"
	.byte	0x27
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.sleb128 5
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x15
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
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
	.4byte	.LFB15
	.uleb128 .LFE15-.LFB15
	.byte	0x7
	.4byte	.LFB16
	.uleb128 .LFE16-.LFB16
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"size_t"
.LASF47:
	.string	"tag_must_val"
.LASF36:
	.string	"mbedtls_asn1_find_named_data"
.LASF17:
	.string	"mbedtls_asn1_buf"
.LASF9:
	.string	"long long unsigned int"
.LASF34:
	.string	"mbedtls_asn1_free_named_data_list"
.LASF21:
	.string	"next"
.LASF16:
	.string	"mbedtls_mpi"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long int"
.LASF24:
	.string	"asn1_get_sequence_of_cb_ctx_t"
.LASF43:
	.string	"mbedtls_asn1_sequence_free"
.LASF55:
	.string	"asn1_get_tagged_int"
.LASF56:
	.string	"mbedtls_asn1_get_bool"
.LASF41:
	.string	"cb_ctx"
.LASF10:
	.string	"unsigned int"
.LASF7:
	.string	"long unsigned int"
.LASF32:
	.string	"name"
.LASF49:
	.string	"tag_may_val"
.LASF5:
	.string	"short unsigned int"
.LASF30:
	.string	"mbedtls_mpi_read_binary"
.LASF46:
	.string	"tag_must_mask"
.LASF53:
	.string	"mbedtls_asn1_get_int"
.LASF44:
	.string	"mbedtls_asn1_get_bitstring_null"
.LASF11:
	.string	"long double"
.LASF39:
	.string	"mbedtls_asn1_get_alg"
.LASF45:
	.string	"mbedtls_asn1_traverse_sequence_of"
.LASF20:
	.string	"mbedtls_asn1_sequence"
.LASF33:
	.string	"mbedtls_asn1_free_named_data_list_shallow"
.LASF50:
	.string	"mbedtls_asn1_get_bitstring"
.LASF54:
	.string	"asn1_get_sequence_of_cb"
.LASF15:
	.string	"mbedtls_mpi_uint"
.LASF3:
	.string	"unsigned char"
.LASF4:
	.string	"short int"
.LASF48:
	.string	"tag_may_mask"
.LASF58:
	.string	"mbedtls_asn1_get_len"
.LASF57:
	.string	"mbedtls_asn1_get_tag"
.LASF35:
	.string	"head"
.LASF13:
	.string	"uint32_t"
.LASF37:
	.string	"mbedtls_asn1_get_alg_null"
.LASF14:
	.string	"char"
.LASF38:
	.string	"params"
.LASF28:
	.string	"mbedtls_platform_zeroize"
.LASF25:
	.string	"memcmp"
.LASF59:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF29:
	.string	"free"
.LASF52:
	.string	"mbedtls_asn1_get_enum"
.LASF26:
	.string	"memset"
.LASF22:
	.string	"mbedtls_asn1_named_data"
.LASF27:
	.string	"calloc"
.LASF40:
	.string	"mbedtls_asn1_get_sequence_of"
.LASF51:
	.string	"mbedtls_asn1_get_mpi"
.LASF23:
	.string	"next_merged"
.LASF42:
	.string	"start"
.LASF31:
	.string	"list"
.LASF19:
	.string	"unused_bits"
.LASF18:
	.string	"mbedtls_asn1_bitstring"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/asn1parse.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
