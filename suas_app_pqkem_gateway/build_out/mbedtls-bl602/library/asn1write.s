	.file	"asn1write.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/asn1write.c"
	.section	.text.mbedtls_asn1_write_len,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_write_len
	.type	mbedtls_asn1_write_len, @function
mbedtls_asn1_write_len:
.LFB15:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/asn1write.c"
	.loc 1 25 1
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
	.loc 1 32 9
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 34 8
	lw	a4,-44(s0)
	li	a5,127
	bleu	a4,a5,.L2
.LBB2:
	.loc 1 35 21
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	.loc 1 35 9
	j	.L3
.L4:
	.loc 1 36 21
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 35 40 discriminator 3
	lw	a5,-24(s0)
	srli	a5,a5,8
	sw	a5,-24(s0)
.L3:
	.loc 1 35 32 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L4
.L2:
.LBE2:
	.loc 1 40 21
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 40 24
	lw	a5,-40(s0)
	sub	a5,a4,a5
	.loc 1 40 8
	lw	a4,-20(s0)
	ble	a4,a5,.L5
	.loc 1 41 16
	li	a5,-108
	j	.L6
.L5:
	.loc 1 45 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 45 10
	addi	a4,a5,-1
	.loc 1 45 17
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 45 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 45 20
	lw	a4,-44(s0)
	andi	a4,a4,0xff
	.loc 1 45 17
	sb	a4,0(a5)
	.loc 1 46 13
	lw	a5,-44(s0)
	srli	a5,a5,8
	sw	a5,-44(s0)
	.loc 1 47 14 discriminator 1
	lw	a5,-44(s0)
	bne	a5,zero,.L5
	.loc 1 49 8
	lw	a4,-20(s0)
	li	a5,1
	ble	a4,a5,.L7
	.loc 1 50 19
	lw	a5,-20(s0)
	andi	a4,a5,0xff
	.loc 1 50 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 50 10
	addi	a3,a5,-1
	.loc 1 50 17
	lw	a5,-36(s0)
	sw	a3,0(a5)
	.loc 1 50 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 50 19
	addi	a4,a4,127
	andi	a4,a4,0xff
	.loc 1 50 17
	sb	a4,0(a5)
.L7:
	.loc 1 53 12
	lw	a5,-20(s0)
.L6:
	.loc 1 54 1
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
	.size	mbedtls_asn1_write_len, .-mbedtls_asn1_write_len
	.section	.text.mbedtls_asn1_write_tag,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_write_tag
	.type	mbedtls_asn1_write_tag, @function
mbedtls_asn1_write_tag:
.LFB16:
	.loc 1 57 1
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
	sb	a5,-25(s0)
	.loc 1 58 9
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 58 12
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 1 58 8
	bgt	a5,zero,.L9
	.loc 1 59 16
	li	a5,-108
	j	.L10
.L9:
	.loc 1 62 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 62 6
	addi	a4,a5,-1
	.loc 1 62 13
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 62 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 62 13
	lbu	a4,-25(s0)
	sb	a4,0(a5)
	.loc 1 64 12
	li	a5,1
.L10:
	.loc 1 65 1
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
	.size	mbedtls_asn1_write_tag, .-mbedtls_asn1_write_tag
	.section	.text.mbedtls_asn1_write_len_and_tag,"ax",@progbits
	.align	1
	.type	mbedtls_asn1_write_len_and_tag, @function
mbedtls_asn1_write_len_and_tag:
.LFB17:
	.loc 1 73 1
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
	mv	a5,a3
	sb	a5,-45(s0)
	.loc 1 74 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 76 22
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_write_len
	sw	a0,-20(s0)
	.loc 1 76 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L12
	.loc 1 76 74 discriminator 2
	lw	a5,-20(s0)
	.loc 1 76 74 is_stmt 0
	j	.L13
.L12:
	.loc 1 76 90 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 1 77 22
	lbu	a5,-45(s0)
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_write_tag
	sw	a0,-20(s0)
	.loc 1 77 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L14
	.loc 1 77 74 discriminator 2
	lw	a5,-20(s0)
	.loc 1 77 74 is_stmt 0
	j	.L13
.L14:
	.loc 1 77 90 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 1 79 12
	lw	a5,-44(s0)
.L13:
	.loc 1 80 1
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
	.size	mbedtls_asn1_write_len_and_tag, .-mbedtls_asn1_write_len_and_tag
	.section	.text.mbedtls_asn1_write_raw_buffer,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_write_raw_buffer
	.type	mbedtls_asn1_write_raw_buffer, @function
mbedtls_asn1_write_raw_buffer:
.LFB18:
	.loc 1 84 1
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
	.loc 1 85 12
	sw	zero,-20(s0)
	.loc 1 87 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 87 8
	lw	a4,-40(s0)
	bgtu	a4,a5,.L16
	.loc 1 87 33 discriminator 1
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 87 36 discriminator 1
	lw	a5,-40(s0)
	sub	a5,a4,a5
	.loc 1 87 23 discriminator 1
	mv	a4,a5
	.loc 1 87 20 discriminator 1
	lw	a5,-48(s0)
	bleu	a5,a4,.L17
.L16:
	.loc 1 88 16
	li	a5,-108
	j	.L18
.L17:
	.loc 1 91 9
	lw	a5,-48(s0)
	sw	a5,-20(s0)
	.loc 1 92 6
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 92 10
	lw	a5,-20(s0)
	neg	a5,a5
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 93 8
	lw	a5,-20(s0)
	beq	a5,zero,.L19
	.loc 1 94 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a2,-20(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	memcpy
.L19:
	.loc 1 97 12
	lw	a5,-20(s0)
.L18:
	.loc 1 98 1
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
	.size	mbedtls_asn1_write_raw_buffer, .-mbedtls_asn1_write_raw_buffer
	.section	.text.mbedtls_asn1_write_mpi,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_write_mpi
	.type	mbedtls_asn1_write_mpi, @function
mbedtls_asn1_write_mpi:
.LFB19:
	.loc 1 102 1
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
	.loc 1 103 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 104 12
	sw	zero,-24(s0)
	.loc 1 108 11
	lw	a0,-44(s0)
	call	mbedtls_mpi_size
	sw	a0,-24(s0)
	.loc 1 112 8
	lw	a5,-24(s0)
	bne	a5,zero,.L21
	.loc 1 113 13
	li	a5,1
	sw	a5,-24(s0)
.L21:
	.loc 1 116 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 116 8
	lw	a4,-40(s0)
	bgtu	a4,a5,.L22
	.loc 1 116 33 discriminator 1
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 116 36 discriminator 1
	lw	a5,-40(s0)
	sub	a5,a4,a5
	.loc 1 116 23 discriminator 1
	mv	a4,a5
	.loc 1 116 20 discriminator 1
	lw	a5,-24(s0)
	bleu	a5,a4,.L23
.L22:
	.loc 1 117 16
	li	a5,-108
	j	.L24
.L23:
	.loc 1 120 6
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 120 10
	lw	a5,-24(s0)
	neg	a5,a5
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 121 22
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a2,-24(s0)
	mv	a1,a5
	lw	a0,-44(s0)
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 1 121 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L29
	.loc 1 126 10
	lw	a5,-44(s0)
	lh	a4,4(a5)
	.loc 1 126 8
	li	a5,1
	bne	a4,a5,.L27
	.loc 1 126 23 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 126 22 discriminator 1
	lbu	a5,0(a5)
	.loc 1 126 19 discriminator 1
	slli	a5,a5,24
	srai	a5,a5,24
	bge	a5,zero,.L27
	.loc 1 127 13
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 127 16
	lw	a5,-40(s0)
	sub	a5,a4,a5
	.loc 1 127 12
	bgt	a5,zero,.L28
	.loc 1 128 20
	li	a5,-108
	j	.L24
.L28:
	.loc 1 131 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 131 10
	addi	a4,a5,-1
	.loc 1 131 17
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 131 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 131 17
	sb	zero,0(a5)
	.loc 1 132 13
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L27:
	.loc 1 135 11
	li	a3,2
	lw	a2,-24(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_write_len_and_tag
	sw	a0,-20(s0)
	j	.L26
.L29:
	.loc 1 121 67
	nop
.L26:
	.loc 1 138 12
	lw	a5,-20(s0)
.L24:
	.loc 1 139 1
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
.LFE19:
	.size	mbedtls_asn1_write_mpi, .-mbedtls_asn1_write_mpi
	.section	.text.mbedtls_asn1_write_null,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_write_null
	.type	mbedtls_asn1_write_null, @function
mbedtls_asn1_write_null:
.LFB20:
	.loc 1 143 1
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
	.loc 1 146 12
	li	a3,5
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_asn1_write_len_and_tag
	mv	a5,a0
	.loc 1 147 1
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
	.size	mbedtls_asn1_write_null, .-mbedtls_asn1_write_null
	.section	.text.mbedtls_asn1_write_oid,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_write_oid
	.type	mbedtls_asn1_write_oid, @function
mbedtls_asn1_write_oid:
.LFB21:
	.loc 1 151 1
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
	.loc 1 152 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 153 12
	sw	zero,-24(s0)
	.loc 1 155 22
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_write_raw_buffer
	sw	a0,-20(s0)
	.loc 1 155 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L33
	.loc 1 155 114 discriminator 2
	lw	a5,-20(s0)
	.loc 1 155 114 is_stmt 0
	j	.L34
.L33:
	.loc 1 155 130 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 157 12
	li	a3,6
	lw	a2,-24(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_write_len_and_tag
	mv	a5,a0
.L34:
	.loc 1 158 1
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
	.size	mbedtls_asn1_write_oid, .-mbedtls_asn1_write_oid
	.section	.text.mbedtls_asn1_write_algorithm_identifier,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_write_algorithm_identifier
	.type	mbedtls_asn1_write_algorithm_identifier, @function
mbedtls_asn1_write_algorithm_identifier:
.LFB22:
	.loc 1 163 1
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
	.loc 1 164 12
	li	a5,1
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_asn1_write_algorithm_identifier_ext
	mv	a5,a0
	.loc 1 165 1
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
	.size	mbedtls_asn1_write_algorithm_identifier, .-mbedtls_asn1_write_algorithm_identifier
	.section	.text.mbedtls_asn1_write_algorithm_identifier_ext,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_write_algorithm_identifier_ext
	.type	mbedtls_asn1_write_algorithm_identifier_ext, @function
mbedtls_asn1_write_algorithm_identifier_ext:
.LFB23:
	.loc 1 170 1
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
	.loc 1 171 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 1 172 12
	sw	zero,-20(s0)
	.loc 1 174 8
	lw	a5,-56(s0)
	beq	a5,zero,.L38
	.loc 1 175 12
	lw	a5,-52(s0)
	bne	a5,zero,.L39
	.loc 1 176 30
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_write_null
	sw	a0,-24(s0)
	.loc 1 176 21 discriminator 1
	lw	a5,-24(s0)
	bge	a5,zero,.L40
	.loc 1 176 78 discriminator 2
	lw	a5,-24(s0)
	.loc 1 176 78 is_stmt 0
	j	.L41
.L40:
	.loc 1 176 94 is_stmt 1 discriminator 3
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	j	.L38
.L39:
	.loc 1 178 17
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L38:
	.loc 1 182 22
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_write_oid
	sw	a0,-24(s0)
	.loc 1 182 13 discriminator 1
	lw	a5,-24(s0)
	bge	a5,zero,.L42
	.loc 1 182 83 discriminator 2
	lw	a5,-24(s0)
	.loc 1 182 83 is_stmt 0
	j	.L41
.L42:
	.loc 1 182 99 is_stmt 1 discriminator 3
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 184 12
	li	a3,48
	lw	a2,-20(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_write_len_and_tag
	mv	a5,a0
.L41:
	.loc 1 186 1
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
	.size	mbedtls_asn1_write_algorithm_identifier_ext, .-mbedtls_asn1_write_algorithm_identifier_ext
	.section	.text.mbedtls_asn1_write_bool,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_write_bool
	.type	mbedtls_asn1_write_bool, @function
mbedtls_asn1_write_bool:
.LFB24:
	.loc 1 189 1
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
	.loc 1 190 12
	sw	zero,-20(s0)
	.loc 1 192 9
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 192 12
	lw	a5,-40(s0)
	sub	a5,a4,a5
	.loc 1 192 8
	bgt	a5,zero,.L44
	.loc 1 193 16
	li	a5,-108
	j	.L45
.L44:
	.loc 1 196 13
	lw	a5,-44(s0)
	beq	a5,zero,.L46
	.loc 1 196 13 is_stmt 0 discriminator 1
	li	a5,255
	j	.L47
.L46:
	.loc 1 196 13 discriminator 2
	li	a5,0
.L47:
	.loc 1 196 9 is_stmt 1 discriminator 4
	lw	a4,-36(s0)
	lw	a4,0(a4)
	.loc 1 196 6 discriminator 4
	addi	a3,a4,-1
	.loc 1 196 13 discriminator 4
	lw	a4,-36(s0)
	sw	a3,0(a4)
	.loc 1 196 9 discriminator 4
	lw	a4,-36(s0)
	lw	a4,0(a4)
	.loc 1 196 13 discriminator 4
	sb	a5,0(a4)
	.loc 1 197 8
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 199 12
	li	a3,1
	lw	a2,-20(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_write_len_and_tag
	mv	a5,a0
.L45:
	.loc 1 200 1
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
	.size	mbedtls_asn1_write_bool, .-mbedtls_asn1_write_bool
	.section	.text.asn1_write_tagged_int,"ax",@progbits
	.align	1
	.type	asn1_write_tagged_int, @function
asn1_write_tagged_int:
.LFB25:
	.loc 1 203 1
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
	.loc 1 204 12
	sw	zero,-20(s0)
.L51:
	.loc 1 207 13
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 207 16
	lw	a5,-40(s0)
	sub	a5,a4,a5
	.loc 1 207 12
	bgt	a5,zero,.L49
	.loc 1 208 20
	li	a5,-108
	j	.L50
.L49:
	.loc 1 210 13
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 211 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 211 10
	addi	a4,a5,-1
	.loc 1 211 17
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 211 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 211 17
	lw	a4,-44(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 212 13
	lw	a5,-44(s0)
	srai	a5,a5,8
	sw	a5,-44(s0)
	.loc 1 213 18
	lw	a5,-44(s0)
	bgt	a5,zero,.L51
	.loc 1 215 10
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 215 9
	lbu	a5,0(a5)
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 215 8
	bge	a5,zero,.L52
	.loc 1 216 13
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 216 16
	lw	a5,-40(s0)
	sub	a5,a4,a5
	.loc 1 216 12
	bgt	a5,zero,.L53
	.loc 1 217 20
	li	a5,-108
	j	.L50
.L53:
	.loc 1 219 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 219 10
	addi	a4,a5,-1
	.loc 1 219 17
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 219 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 219 17
	sb	zero,0(a5)
	.loc 1 220 13
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L52:
	.loc 1 223 12
	lw	a5,-48(s0)
	andi	a5,a5,0xff
	mv	a3,a5
	lw	a2,-20(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_write_len_and_tag
	mv	a5,a0
.L50:
	.loc 1 224 1
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
.LFE25:
	.size	asn1_write_tagged_int, .-asn1_write_tagged_int
	.section	.text.mbedtls_asn1_write_int,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_write_int
	.type	mbedtls_asn1_write_int, @function
mbedtls_asn1_write_int:
.LFB26:
	.loc 1 227 1
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
	.loc 1 228 12
	li	a3,2
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	asn1_write_tagged_int
	mv	a5,a0
	.loc 1 229 1
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
.LFE26:
	.size	mbedtls_asn1_write_int, .-mbedtls_asn1_write_int
	.section	.text.mbedtls_asn1_write_enum,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_write_enum
	.type	mbedtls_asn1_write_enum, @function
mbedtls_asn1_write_enum:
.LFB27:
	.loc 1 232 1
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
	.loc 1 233 12
	li	a3,10
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	asn1_write_tagged_int
	mv	a5,a0
	.loc 1 234 1
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
	.size	mbedtls_asn1_write_enum, .-mbedtls_asn1_write_enum
	.section	.text.mbedtls_asn1_write_tagged_string,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_write_tagged_string
	.type	mbedtls_asn1_write_tagged_string, @function
mbedtls_asn1_write_tagged_string:
.LFB28:
	.loc 1 238 1
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
	.loc 1 239 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 240 12
	sw	zero,-24(s0)
	.loc 1 242 22
	lw	a3,-52(s0)
	lw	a2,-48(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_write_raw_buffer
	sw	a0,-20(s0)
	.loc 1 242 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L59
	.loc 1 242 116 discriminator 2
	lw	a5,-20(s0)
	.loc 1 242 116 is_stmt 0
	j	.L60
.L59:
	.loc 1 242 132 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 246 12
	lw	a5,-44(s0)
	andi	a5,a5,0xff
	mv	a3,a5
	lw	a2,-24(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_write_len_and_tag
	mv	a5,a0
.L60:
	.loc 1 247 1
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
.LFE28:
	.size	mbedtls_asn1_write_tagged_string, .-mbedtls_asn1_write_tagged_string
	.section	.text.mbedtls_asn1_write_utf8_string,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_write_utf8_string
	.type	mbedtls_asn1_write_utf8_string, @function
mbedtls_asn1_write_utf8_string:
.LFB29:
	.loc 1 251 1
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
	.loc 1 252 12
	lw	a4,-32(s0)
	lw	a3,-28(s0)
	li	a2,12
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_asn1_write_tagged_string
	mv	a5,a0
	.loc 1 253 1
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
.LFE29:
	.size	mbedtls_asn1_write_utf8_string, .-mbedtls_asn1_write_utf8_string
	.section	.text.mbedtls_asn1_write_printable_string,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_write_printable_string
	.type	mbedtls_asn1_write_printable_string, @function
mbedtls_asn1_write_printable_string:
.LFB30:
	.loc 1 257 1
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
	.loc 1 258 12
	lw	a4,-32(s0)
	lw	a3,-28(s0)
	li	a2,19
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_asn1_write_tagged_string
	mv	a5,a0
	.loc 1 260 1
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
.LFE30:
	.size	mbedtls_asn1_write_printable_string, .-mbedtls_asn1_write_printable_string
	.section	.text.mbedtls_asn1_write_ia5_string,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_write_ia5_string
	.type	mbedtls_asn1_write_ia5_string, @function
mbedtls_asn1_write_ia5_string:
.LFB31:
	.loc 1 264 1
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
	.loc 1 265 12
	lw	a4,-32(s0)
	lw	a3,-28(s0)
	li	a2,22
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_asn1_write_tagged_string
	mv	a5,a0
	.loc 1 266 1
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
.LFE31:
	.size	mbedtls_asn1_write_ia5_string, .-mbedtls_asn1_write_ia5_string
	.section	.text.mbedtls_asn1_write_named_bitstring,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_write_named_bitstring
	.type	mbedtls_asn1_write_named_bitstring, @function
mbedtls_asn1_write_named_bitstring:
.LFB32:
	.loc 1 272 1
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
	.loc 1 278 22
	lw	a5,-64(s0)
	addi	a5,a5,7
	.loc 1 278 14
	srli	a5,a5,3
	sw	a5,-28(s0)
	.loc 1 279 29
	lw	a5,-28(s0)
	slli	a4,a5,3
	.loc 1 279 17
	lw	a5,-64(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 286 8
	lw	a5,-64(s0)
	beq	a5,zero,.L68
	.loc 1 287 35
	lw	a5,-28(s0)
	addi	a5,a5,-1
	.loc 1 287 18
	lw	a4,-60(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 288 28
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 288 38
	lw	a5,-32(s0)
	sra	a5,a4,a5
	.loc 1 288 26
	sb	a5,-21(s0)
.L72:
	.loc 1 291 17
	lbu	a5,-21(s0)
	andi	a5,a5,1
	sb	a5,-33(s0)
	.loc 1 292 30
	lbu	a5,-21(s0)
	srli	a5,a5,1
	sb	a5,-21(s0)
	.loc 1 294 16
	lbu	a5,-33(s0)
	bne	a5,zero,.L74
	.loc 1 298 17
	lw	a5,-64(s0)
	addi	a5,a5,-1
	sw	a5,-64(s0)
	.loc 1 299 16
	lw	a5,-64(s0)
	beq	a5,zero,.L75
	.loc 1 303 22
	lw	a5,-64(s0)
	andi	a5,a5,7
	.loc 1 303 16
	bne	a5,zero,.L72
	.loc 1 304 34
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	sb	a5,-21(s0)
	.loc 1 291 17
	j	.L72
.L74:
	.loc 1 295 17
	nop
	j	.L68
.L75:
	.loc 1 300 17
	nop
.L68:
	.loc 1 309 12
	lw	a3,-64(s0)
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_write_bitstring
	mv	a5,a0
	.loc 1 310 1
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
.LFE32:
	.size	mbedtls_asn1_write_named_bitstring, .-mbedtls_asn1_write_named_bitstring
	.section	.text.mbedtls_asn1_write_bitstring,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_write_bitstring
	.type	mbedtls_asn1_write_bitstring, @function
mbedtls_asn1_write_bitstring:
.LFB33:
	.loc 1 314 1
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
	.loc 1 315 12
	sw	zero,-20(s0)
	.loc 1 318 22
	lw	a5,-48(s0)
	addi	a5,a5,7
	.loc 1 318 14
	srli	a5,a5,3
	sw	a5,-24(s0)
	.loc 1 319 29
	lw	a5,-24(s0)
	slli	a4,a5,3
	.loc 1 319 17
	lw	a5,-48(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 321 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 321 8
	lw	a4,-40(s0)
	bgtu	a4,a5,.L77
	.loc 1 321 33 discriminator 1
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 321 36 discriminator 1
	lw	a5,-40(s0)
	sub	a5,a4,a5
	.loc 1 321 23 discriminator 1
	mv	a4,a5
	.loc 1 321 56 discriminator 1
	lw	a5,-24(s0)
	addi	a5,a5,1
	.loc 1 321 20 discriminator 1
	bgeu	a4,a5,.L78
.L77:
	.loc 1 322 16
	li	a5,-108
	j	.L79
.L78:
	.loc 1 325 9
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 328 8
	lw	a5,-24(s0)
	beq	a5,zero,.L80
	.loc 1 329 17
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 330 22
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 330 42
	lw	a5,-28(s0)
	li	a3,1
	sll	a5,a3,a5
	.loc 1 330 33
	andi	a5,a5,0xff
	neg	a5,a5
	andi	a5,a5,0xff
	slli	a5,a5,24
	srai	a5,a5,24
	and	a5,a4,a5
	slli	a3,a5,24
	srai	a3,a3,24
	.loc 1 330 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 330 10
	addi	a4,a5,-1
	.loc 1 330 17
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 330 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 330 33
	andi	a4,a3,0xff
	.loc 1 330 17
	sb	a4,0(a5)
	.loc 1 331 10
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 331 14
	lw	a5,-24(s0)
	neg	a5,a5
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 332 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a2,-24(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	memcpy
.L80:
	.loc 1 336 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 336 6
	addi	a4,a5,-1
	.loc 1 336 13
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 336 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 336 15
	lw	a4,-28(s0)
	andi	a4,a4,0xff
	.loc 1 336 13
	sb	a4,0(a5)
	.loc 1 338 12
	li	a3,3
	lw	a2,-20(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_write_len_and_tag
	mv	a5,a0
.L79:
	.loc 1 339 1
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
.LFE33:
	.size	mbedtls_asn1_write_bitstring, .-mbedtls_asn1_write_bitstring
	.section	.text.mbedtls_asn1_write_octet_string,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_write_octet_string
	.type	mbedtls_asn1_write_octet_string, @function
mbedtls_asn1_write_octet_string:
.LFB34:
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
	.loc 1 344 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 345 12
	sw	zero,-24(s0)
	.loc 1 347 22
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_write_raw_buffer
	sw	a0,-20(s0)
	.loc 1 347 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L82
	.loc 1 347 87 discriminator 2
	lw	a5,-20(s0)
	.loc 1 347 87 is_stmt 0
	j	.L83
.L82:
	.loc 1 347 103 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 349 12
	li	a3,4
	lw	a2,-24(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_write_len_and_tag
	mv	a5,a0
.L83:
	.loc 1 350 1
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
.LFE34:
	.size	mbedtls_asn1_write_octet_string, .-mbedtls_asn1_write_octet_string
	.section	.text.mbedtls_asn1_store_named_data,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_store_named_data
	.type	mbedtls_asn1_store_named_data, @function
mbedtls_asn1_store_named_data:
.LFB35:
	.loc 1 381 1
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
	.loc 1 384 45
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_asn1_find_named_data
	sw	a0,-20(s0)
	.loc 1 384 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L85
	.loc 1 387 43
	li	a1,32
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-20(s0)
	.loc 1 389 12
	lw	a5,-20(s0)
	bne	a5,zero,.L86
	.loc 1 390 19
	li	a5,0
	j	.L87
.L86:
	.loc 1 393 22
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	.loc 1 394 22
	lw	a1,-44(s0)
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 1 394 20 discriminator 1
	lw	a5,-20(s0)
	sw	a4,8(a5)
	.loc 1 395 21
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 395 12
	bne	a5,zero,.L88
	.loc 1 396 13
	lw	a0,-20(s0)
	call	free
	.loc 1 397 19
	li	a5,0
	j	.L87
.L88:
	.loc 1 400 24
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 400 9
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 402 22
	lw	a5,-20(s0)
	lw	a4,-52(s0)
	sw	a4,16(a5)
	.loc 1 403 12
	lw	a5,-52(s0)
	beq	a5,zero,.L89
	.loc 1 404 26
	lw	a1,-52(s0)
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 1 404 24 discriminator 1
	lw	a5,-20(s0)
	sw	a4,20(a5)
	.loc 1 405 25
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 405 16
	bne	a5,zero,.L89
	.loc 1 406 30
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 406 17
	mv	a0,a5
	call	free
	.loc 1 407 17
	lw	a0,-20(s0)
	call	free
	.loc 1 408 23
	li	a5,0
	j	.L87
.L89:
	.loc 1 412 21
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 412 19
	lw	a5,-20(s0)
	sw	a4,24(a5)
	.loc 1 413 15
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	j	.L90
.L85:
	.loc 1 414 15
	lw	a5,-52(s0)
	bne	a5,zero,.L91
	.loc 1 415 22
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 415 9
	mv	a0,a5
	call	free
	.loc 1 416 20
	lw	a5,-20(s0)
	sw	zero,20(a5)
	.loc 1 417 22
	lw	a5,-20(s0)
	sw	zero,16(a5)
	j	.L90
.L91:
	.loc 1 418 24
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 418 15
	lw	a4,-52(s0)
	beq	a4,a5,.L90
.LBB3:
	.loc 1 424 19
	lw	a1,-52(s0)
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-24(s0)
	.loc 1 425 12
	lw	a5,-24(s0)
	bne	a5,zero,.L92
	.loc 1 426 19
	li	a5,0
	j	.L87
.L92:
	.loc 1 429 22
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 429 9
	mv	a0,a5
	call	free
	.loc 1 430 20
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,20(a5)
	.loc 1 431 22
	lw	a5,-20(s0)
	lw	a4,-52(s0)
	sw	a4,16(a5)
.L90:
.LBE3:
	.loc 1 434 8
	lw	a5,-48(s0)
	beq	a5,zero,.L93
	.loc 1 434 20 discriminator 1
	lw	a5,-52(s0)
	beq	a5,zero,.L93
	.loc 1 435 24
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 435 9
	lw	a2,-52(s0)
	lw	a1,-48(s0)
	mv	a0,a5
	call	memcpy
.L93:
	.loc 1 438 12
	lw	a5,-20(s0)
.L87:
	.loc 1 439 1
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
.LFE35:
	.size	mbedtls_asn1_store_named_data, .-mbedtls_asn1_store_named_data
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa74
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xf
	.4byte	0x32
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x19
	.byte	0x4
	.uleb128 0x12
	.4byte	0xa1
	.uleb128 0x8
	.4byte	0x32
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0xf
	.4byte	0xad
	.uleb128 0x8
	.4byte	0xb4
	.uleb128 0x8
	.4byte	0xc8
	.uleb128 0x12
	.4byte	0xbe
	.uleb128 0x1a
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x4
	.byte	0xaa
	.byte	0x12
	.4byte	0x95
	.uleb128 0x10
	.4byte	.LASF17
	.byte	0x8
	.byte	0x4
	.byte	0xd0
	.4byte	0x103
	.uleb128 0xa
	.string	"p"
	.byte	0x4
	.byte	0xd5
	.byte	0x17
	.4byte	0x103
	.byte	0
	.uleb128 0xa
	.string	"s"
	.byte	0x4
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xa
	.string	"n"
	.byte	0x4
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	0xc9
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x4
	.byte	0xf0
	.byte	0x1
	.4byte	0xd5
	.uleb128 0xf
	.4byte	0x108
	.uleb128 0x10
	.4byte	.LASF18
	.byte	0xc
	.byte	0x5
	.byte	0x8d
	.4byte	0x14b
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
	.4byte	0xa8
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x5
	.byte	0x92
	.byte	0x1
	.4byte	0x119
	.uleb128 0x10
	.4byte	.LASF19
	.byte	0x20
	.byte	0x5
	.byte	0xb2
	.4byte	0x196
	.uleb128 0xa
	.string	"oid"
	.byte	0x5
	.byte	0xb3
	.byte	0x16
	.4byte	0x14b
	.byte	0
	.uleb128 0xa
	.string	"val"
	.byte	0x5
	.byte	0xb4
	.byte	0x16
	.4byte	0x14b
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF20
	.byte	0xbd
	.byte	0x25
	.4byte	0x196
	.byte	0x18
	.uleb128 0x13
	.4byte	.LASF21
	.byte	0xc4
	.byte	0x13
	.4byte	0x32
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.4byte	0x157
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0xc6
	.byte	0x1
	.4byte	0x157
	.uleb128 0xf
	.4byte	0x19b
	.uleb128 0x1b
	.4byte	.LASF64
	.byte	0x6
	.byte	0x5e
	.byte	0x6
	.4byte	0x1be
	.uleb128 0x4
	.4byte	0xa1
	.byte	0
	.uleb128 0x14
	.4byte	.LASF22
	.byte	0x6
	.byte	0x5a
	.byte	0x7
	.4byte	0xa1
	.4byte	0x1d9
	.uleb128 0x4
	.4byte	0x76
	.uleb128 0x4
	.4byte	0x76
	.byte	0
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x253
	.byte	0x20
	.4byte	0x1fa
	.4byte	0x1fa
	.uleb128 0x4
	.4byte	0x1fa
	.uleb128 0x4
	.4byte	0xb9
	.uleb128 0x4
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.4byte	0x1a7
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x248
	.byte	0x5
	.4byte	0x68
	.4byte	0x220
	.uleb128 0x4
	.4byte	0x220
	.uleb128 0x4
	.4byte	0xa8
	.uleb128 0x4
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.4byte	0x114
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x1c9
	.byte	0x8
	.4byte	0x76
	.4byte	0x23c
	.uleb128 0x4
	.4byte	0x220
	.byte	0
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0x7
	.byte	0x1f
	.byte	0x8
	.4byte	0xa1
	.4byte	0x25c
	.uleb128 0x4
	.4byte	0xa3
	.uleb128 0x4
	.4byte	0xc3
	.uleb128 0x4
	.4byte	0x76
	.byte	0
	.uleb128 0xe
	.4byte	.LASF30
	.2byte	0x178
	.byte	0x1a
	.4byte	0x2e8
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e8
	.uleb128 0x3
	.4byte	.LASF27
	.2byte	0x179
	.byte	0x1f
	.4byte	0x2ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"oid"
	.2byte	0x17a
	.byte	0x11
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF28
	.2byte	0x17a
	.byte	0x1d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.string	"val"
	.2byte	0x17b
	.byte	0x1a
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF29
	.2byte	0x17c
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.string	"cur"
	.2byte	0x17e
	.byte	0x1e
	.4byte	0x2e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xc
	.string	"p"
	.2byte	0x1a8
	.byte	0xf
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x19b
	.uleb128 0x8
	.4byte	0x2e8
	.uleb128 0x8
	.4byte	0x39
	.uleb128 0xe
	.4byte	.LASF31
	.2byte	0x155
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x36a
	.uleb128 0x9
	.string	"p"
	.2byte	0x155
	.byte	0x35
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF32
	.2byte	0x155
	.byte	0x4d
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"buf"
	.2byte	0x156
	.byte	0x3a
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF33
	.2byte	0x156
	.byte	0x46
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"ret"
	.2byte	0x158
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"len"
	.2byte	0x159
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	0xa8
	.uleb128 0xe
	.4byte	.LASF34
	.2byte	0x138
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f1
	.uleb128 0x9
	.string	"p"
	.2byte	0x138
	.byte	0x32
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF32
	.2byte	0x138
	.byte	0x4a
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"buf"
	.2byte	0x139
	.byte	0x37
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF35
	.2byte	0x139
	.byte	0x43
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"len"
	.2byte	0x13b
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF36
	.2byte	0x13c
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LASF37
	.2byte	0x13c
	.byte	0x19
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF38
	.2byte	0x10c
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x491
	.uleb128 0x9
	.string	"p"
	.2byte	0x10c
	.byte	0x38
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF32
	.2byte	0x10d
	.byte	0x3d
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.string	"buf"
	.2byte	0x10e
	.byte	0x3d
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF35
	.2byte	0x10f
	.byte	0x2f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.4byte	.LASF36
	.2byte	0x111
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.4byte	.LASF37
	.2byte	0x111
	.byte	0x19
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LASF39
	.2byte	0x112
	.byte	0x1a
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF40
	.2byte	0x113
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0xc
	.string	"bit"
	.2byte	0x114
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0xe
	.4byte	.LASF41
	.2byte	0x106
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e6
	.uleb128 0x9
	.string	"p"
	.2byte	0x106
	.byte	0x33
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF32
	.2byte	0x106
	.byte	0x4b
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF42
	.2byte	0x107
	.byte	0x2f
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF43
	.2byte	0x107
	.byte	0x3c
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0xff
	.4byte	0x68
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x537
	.uleb128 0x1
	.string	"p"
	.byte	0xff
	.byte	0x39
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0xff
	.byte	0x51
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF42
	.2byte	0x100
	.byte	0x35
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF43
	.2byte	0x100
	.byte	0x42
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0xf9
	.4byte	0x68
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x586
	.uleb128 0x1
	.string	"p"
	.byte	0xf9
	.byte	0x34
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0xf9
	.byte	0x4c
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0xfa
	.byte	0x30
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0xfa
	.byte	0x3d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0xec
	.4byte	0x68
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ff
	.uleb128 0x1
	.string	"p"
	.byte	0xec
	.byte	0x36
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0xec
	.byte	0x4e
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"tag"
	.byte	0xec
	.byte	0x59
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0xed
	.byte	0x32
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0xed
	.byte	0x3f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"ret"
	.byte	0xef
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"len"
	.byte	0xf0
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0xe7
	.4byte	0x68
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x640
	.uleb128 0x1
	.string	"p"
	.byte	0xe7
	.byte	0x2d
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0xe7
	.byte	0x45
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"val"
	.byte	0xe7
	.byte	0x50
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0xe2
	.4byte	0x68
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x681
	.uleb128 0x1
	.string	"p"
	.byte	0xe2
	.byte	0x2c
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0xe2
	.byte	0x44
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"val"
	.byte	0xe2
	.byte	0x4f
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0xca
	.4byte	0x68
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6de
	.uleb128 0x1
	.string	"p"
	.byte	0xca
	.byte	0x32
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0xca
	.byte	0x4a
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"val"
	.byte	0xca
	.byte	0x55
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"tag"
	.byte	0xca
	.byte	0x5e
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"len"
	.byte	0xcc
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0xbc
	.4byte	0x68
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72d
	.uleb128 0x1
	.string	"p"
	.byte	0xbc
	.byte	0x2d
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0xbc
	.byte	0x45
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xbc
	.byte	0x50
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"len"
	.byte	0xbe
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0xa7
	.4byte	0x68
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b4
	.uleb128 0x1
	.string	"p"
	.byte	0xa7
	.byte	0x41
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0xa7
	.byte	0x59
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"oid"
	.byte	0xa8
	.byte	0x3d
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0xa8
	.byte	0x49
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xa9
	.byte	0x38
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xa9
	.byte	0x45
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"ret"
	.byte	0xab
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"len"
	.byte	0xac
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0xa0
	.4byte	0x68
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x811
	.uleb128 0x1
	.string	"p"
	.byte	0xa0
	.byte	0x3d
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0xa0
	.byte	0x55
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"oid"
	.byte	0xa1
	.byte	0x39
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0xa1
	.byte	0x45
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xa2
	.byte	0x34
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x95
	.4byte	0x68
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x87c
	.uleb128 0x1
	.string	"p"
	.byte	0x95
	.byte	0x2c
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x95
	.byte	0x44
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"oid"
	.byte	0x96
	.byte	0x28
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x96
	.byte	0x34
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"ret"
	.byte	0x98
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"len"
	.byte	0x99
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x8e
	.4byte	0x68
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8af
	.uleb128 0x1
	.string	"p"
	.byte	0x8e
	.byte	0x2d
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x8e
	.byte	0x45
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x65
	.4byte	0x68
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x916
	.uleb128 0x1
	.string	"p"
	.byte	0x65
	.byte	0x2c
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x65
	.byte	0x44
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"X"
	.byte	0x65
	.byte	0x5e
	.4byte	0x220
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"ret"
	.byte	0x67
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"len"
	.byte	0x68
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.4byte	.LASF65
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.4byte	.L26
	.byte	0
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x52
	.4byte	0x68
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x973
	.uleb128 0x1
	.string	"p"
	.byte	0x52
	.byte	0x33
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x52
	.byte	0x4b
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"buf"
	.byte	0x53
	.byte	0x38
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x53
	.byte	0x44
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"len"
	.byte	0x55
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x45
	.4byte	0x68
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d0
	.uleb128 0x1
	.string	"p"
	.byte	0x45
	.byte	0x3b
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x46
	.byte	0x40
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"len"
	.byte	0x47
	.byte	0x32
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"tag"
	.byte	0x48
	.byte	0x39
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x5
	.string	"ret"
	.byte	0x4a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF61
	.byte	0x1
	.byte	0x38
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa13
	.uleb128 0x1
	.string	"p"
	.byte	0x38
	.byte	0x2c
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x38
	.byte	0x44
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"tag"
	.byte	0x38
	.byte	0x59
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF66
	.byte	0x1
	.byte	0x18
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1
	.string	"p"
	.byte	0x18
	.byte	0x2c
	.4byte	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x18
	.byte	0x44
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"len"
	.byte	0x18
	.byte	0x52
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0x1
	.byte	0x20
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x5
	.string	"l"
	.byte	0x23
	.byte	0x15
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xbc
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
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
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
	.byte	0x7
	.4byte	.LFB33
	.uleb128 .LFE33-.LFB33
	.byte	0x7
	.4byte	.LFB34
	.uleb128 .LFE34-.LFB34
	.byte	0x7
	.4byte	.LFB35
	.uleb128 .LFE35-.LFB35
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"size_t"
.LASF36:
	.string	"unused_bits"
.LASF23:
	.string	"mbedtls_asn1_find_named_data"
.LASF18:
	.string	"mbedtls_asn1_buf"
.LASF9:
	.string	"long long unsigned int"
.LASF46:
	.string	"mbedtls_asn1_write_tagged_string"
.LASF20:
	.string	"next"
.LASF17:
	.string	"mbedtls_mpi"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF40:
	.string	"cur_byte_shifted"
.LASF35:
	.string	"bits"
.LASF6:
	.string	"long int"
.LASF30:
	.string	"mbedtls_asn1_store_named_data"
.LASF62:
	.string	"required"
.LASF28:
	.string	"oid_len"
.LASF26:
	.string	"memcpy"
.LASF43:
	.string	"text_len"
.LASF29:
	.string	"val_len"
.LASF58:
	.string	"mbedtls_asn1_write_raw_buffer"
.LASF10:
	.string	"unsigned int"
.LASF7:
	.string	"long unsigned int"
.LASF41:
	.string	"mbedtls_asn1_write_ia5_string"
.LASF33:
	.string	"size"
.LASF5:
	.string	"short unsigned int"
.LASF25:
	.string	"mbedtls_mpi_size"
.LASF34:
	.string	"mbedtls_asn1_write_bitstring"
.LASF37:
	.string	"byte_len"
.LASF51:
	.string	"mbedtls_asn1_write_algorithm_identifier_ext"
.LASF11:
	.string	"long double"
.LASF61:
	.string	"mbedtls_asn1_write_tag"
.LASF49:
	.string	"mbedtls_asn1_write_bool"
.LASF48:
	.string	"mbedtls_asn1_write_int"
.LASF65:
	.string	"cleanup"
.LASF45:
	.string	"mbedtls_asn1_write_utf8_string"
.LASF47:
	.string	"mbedtls_asn1_write_enum"
.LASF16:
	.string	"mbedtls_mpi_uint"
.LASF3:
	.string	"unsigned char"
.LASF52:
	.string	"par_len"
.LASF4:
	.string	"short int"
.LASF24:
	.string	"mbedtls_mpi_write_binary"
.LASF39:
	.string	"cur_byte"
.LASF27:
	.string	"head"
.LASF14:
	.string	"uint32_t"
.LASF38:
	.string	"mbedtls_asn1_write_named_bitstring"
.LASF56:
	.string	"mbedtls_asn1_write_null"
.LASF15:
	.string	"char"
.LASF42:
	.string	"text"
.LASF55:
	.string	"mbedtls_asn1_write_oid"
.LASF50:
	.string	"boolean"
.LASF57:
	.string	"mbedtls_asn1_write_mpi"
.LASF31:
	.string	"mbedtls_asn1_write_octet_string"
.LASF66:
	.string	"mbedtls_asn1_write_len"
.LASF63:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF64:
	.string	"free"
.LASF19:
	.string	"mbedtls_asn1_named_data"
.LASF59:
	.string	"asn1_write_tagged_int"
.LASF22:
	.string	"calloc"
.LASF13:
	.string	"uint8_t"
.LASF53:
	.string	"has_par"
.LASF60:
	.string	"mbedtls_asn1_write_len_and_tag"
.LASF21:
	.string	"next_merged"
.LASF44:
	.string	"mbedtls_asn1_write_printable_string"
.LASF32:
	.string	"start"
.LASF54:
	.string	"mbedtls_asn1_write_algorithm_identifier"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/asn1write.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
