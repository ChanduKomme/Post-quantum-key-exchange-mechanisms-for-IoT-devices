	.file	"pkwrite.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pkwrite.c"
	.section	.text.mbedtls_pk_rsa,"ax",@progbits
	.align	1
	.type	mbedtls_pk_rsa, @function
mbedtls_pk_rsa:
.LFB67:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/pk.h"
	.loc 1 1038 1
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
	.loc 1 1039 13
	addi	a5,s0,-24
	mv	a0,a5
	call	mbedtls_pk_get_type
	mv	a5,a0
	.loc 1 1039 13 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 1 1039 5 is_stmt 1 discriminator 1
	li	a5,1
	bne	a4,a5,.L2
	.loc 1 1041 20
	lw	a5,-20(s0)
	j	.L3
.L2:
	.loc 1 1043 19
	li	a5,0
.L3:
	.loc 1 1045 1
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
.LFE67:
	.size	mbedtls_pk_rsa, .-mbedtls_pk_rsa
	.section	.text.mbedtls_pk_ec,"ax",@progbits
	.align	1
	.type	mbedtls_pk_ec, @function
mbedtls_pk_ec:
.LFB68:
	.loc 1 1061 1
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
	.loc 1 1062 13
	addi	a5,s0,-24
	mv	a0,a5
	call	mbedtls_pk_get_type
	mv	a5,a0
	addi	a4,a5,-2
	.loc 1 1062 5 discriminator 1
	li	a5,2
	bgtu	a4,a5,.L5
	.loc 1 1066 20
	lw	a5,-20(s0)
	j	.L6
.L5:
	.loc 1 1068 19
	li	a5,0
.L6:
	.loc 1 1070 1
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
	.size	mbedtls_pk_ec, .-mbedtls_pk_ec
	.section	.text.mbedtls_pk_ec_ro,"ax",@progbits
	.align	1
	.type	mbedtls_pk_ec_ro, @function
mbedtls_pk_ec_ro:
.LFB72:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk_internal.h"
	.loc 2 61 1
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
	.loc 2 62 13
	addi	a5,s0,-24
	mv	a0,a5
	call	mbedtls_pk_get_type
	mv	a5,a0
	addi	a4,a5,-2
	.loc 2 62 5 discriminator 1
	li	a5,2
	bgtu	a4,a5,.L8
	.loc 2 66 20
	lw	a5,-20(s0)
	j	.L9
.L8:
	.loc 2 68 19
	li	a5,0
.L9:
	.loc 2 70 1
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
.LFE72:
	.size	mbedtls_pk_ec_ro, .-mbedtls_pk_ec_ro
	.section	.text.mbedtls_pk_ec_rw,"ax",@progbits
	.align	1
	.type	mbedtls_pk_ec_rw, @function
mbedtls_pk_ec_rw:
.LFB73:
	.loc 2 73 1
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
	.loc 2 74 13
	addi	a5,s0,-24
	mv	a0,a5
	call	mbedtls_pk_get_type
	mv	a5,a0
	addi	a4,a5,-2
	.loc 2 74 5 discriminator 1
	li	a5,2
	bgtu	a4,a5,.L11
	.loc 2 78 20
	lw	a5,-20(s0)
	j	.L12
.L11:
	.loc 2 80 19
	li	a5,0
.L12:
	.loc 2 82 1
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
.LFE73:
	.size	mbedtls_pk_ec_rw, .-mbedtls_pk_ec_rw
	.section	.text.mbedtls_pk_get_ec_group_id,"ax",@progbits
	.align	1
	.type	mbedtls_pk_get_ec_group_id, @function
mbedtls_pk_get_ec_group_id:
.LFB74:
	.loc 2 87 1
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
	.loc 2 109 14
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_ec_ro
	mv	a5,a0
	.loc 2 109 12 discriminator 1
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	.loc 2 113 12
	lbu	a5,-17(s0)
	.loc 2 114 1
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
.LFE74:
	.size	mbedtls_pk_get_ec_group_id, .-mbedtls_pk_get_ec_group_id
	.section	.text.mbedtls_pk_is_rfc8410,"ax",@progbits
	.align	1
	.type	mbedtls_pk_is_rfc8410, @function
mbedtls_pk_is_rfc8410:
.LFB75:
	.loc 2 125 1
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
	.loc 2 126 31
	lw	a0,-36(s0)
	call	mbedtls_pk_get_ec_group_id
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 2 128 47
	lbu	a4,-17(s0)
	li	a5,9
	beq	a4,a5,.L16
	.loc 2 128 47 is_stmt 0 discriminator 2
	lbu	a4,-17(s0)
	li	a5,13
	bne	a4,a5,.L17
.L16:
	.loc 2 128 47 discriminator 3
	li	a5,1
	.loc 2 128 47
	j	.L19
.L17:
	.loc 2 128 47 discriminator 4
	li	a5,0
.L19:
	.loc 2 129 1 is_stmt 1
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
.LFE75:
	.size	mbedtls_pk_is_rfc8410, .-mbedtls_pk_is_rfc8410
	.section	.text.pk_write_rsa_der,"ax",@progbits
	.align	1
	.type	pk_write_rsa_der, @function
pk_write_rsa_der:
.LFB79:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pkwrite.c"
	.loc 3 64 1
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
	.loc 3 85 34
	lw	a5,-28(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_rsa
	mv	a5,a0
	.loc 3 85 12 discriminator 1
	lw	a2,-20(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_rsa_write_key
	mv	a5,a0
	.loc 3 86 1
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
	.size	pk_write_rsa_der, .-pk_write_rsa_der
	.section	.text.pk_write_ec_pubkey,"ax",@progbits
	.align	1
	.type	pk_write_ec_pubkey, @function
pk_write_ec_pubkey:
.LFB80:
	.loc 3 121 1
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
	.loc 3 122 12
	sw	zero,-28(s0)
	.loc 3 124 31
	lw	a5,-188(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_ec
	sw	a0,-20(s0)
	.loc 3 125 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 3 142 51
	lw	a0,-20(s0)
	.loc 3 142 61
	lw	a5,-20(s0)
	addi	a1,a5,104
	.loc 3 142 20
	addi	a4,s0,-164
	addi	a3,s0,-28
	li	a5,133
	li	a2,0
	call	mbedtls_ecp_point_write_binary
	sw	a0,-24(s0)
	.loc 3 142 12 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L23
	.loc 3 145 20
	lw	a5,-24(s0)
	j	.L27
.L23:
	.loc 3 149 9
	lw	a5,-180(s0)
	lw	a5,0(a5)
	.loc 3 149 8
	lw	a4,-184(s0)
	bgtu	a4,a5,.L25
	.loc 3 149 33 discriminator 1
	lw	a5,-180(s0)
	lw	a4,0(a5)
	.loc 3 149 36 discriminator 1
	lw	a5,-184(s0)
	sub	a5,a4,a5
	.loc 3 149 23 discriminator 1
	mv	a4,a5
	.loc 3 149 45 discriminator 1
	lw	a5,-28(s0)
	.loc 3 149 20 discriminator 1
	bgeu	a4,a5,.L26
.L25:
	.loc 3 150 16
	li	a5,-108
	j	.L27
.L26:
	.loc 3 153 5
	lw	a5,-180(s0)
	lw	a4,0(a5)
	.loc 3 153 8
	lw	a5,-28(s0)
	neg	a5,a5
	add	a4,a4,a5
	lw	a5,-180(s0)
	sw	a4,0(a5)
	.loc 3 154 5
	lw	a5,-180(s0)
	lw	a5,0(a5)
	lw	a3,-28(s0)
	addi	a4,s0,-164
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 3 156 12
	lw	a5,-28(s0)
.L27:
	.loc 3 157 1
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
.LFE80:
	.size	pk_write_ec_pubkey, .-pk_write_ec_pubkey
	.section	.text.pk_write_ec_private,"ax",@progbits
	.align	1
	.type	pk_write_ec_private, @function
pk_write_ec_private:
.LFB81:
	.loc 3 194 1
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
	.loc 3 196 9
	li	a5,-110
	sw	a5,-20(s0)
.LBB2:
	.loc 3 210 35
	lw	a5,-108(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_ec_rw
	sw	a0,-24(s0)
	.loc 3 211 31
	lw	a5,-24(s0)
	lw	a5,60(a5)
	.loc 3 211 38
	addi	a5,a5,7
	.loc 3 211 43
	srli	a5,a5,3
	.loc 3 211 21
	sw	a5,-28(s0)
	.loc 3 213 15
	addi	a4,s0,-96
	addi	a5,s0,-28
	li	a3,66
	mv	a2,a4
	mv	a1,a5
	lw	a0,-24(s0)
	call	mbedtls_ecp_write_key_ext
	sw	a0,-20(s0)
	.loc 3 214 12
	lw	a5,-20(s0)
	bne	a5,zero,.L32
.LBE2:
	.loc 3 218 11
	lw	a4,-28(s0)
	addi	a5,s0,-96
	mv	a3,a4
	mv	a2,a5
	lw	a1,-104(s0)
	lw	a0,-100(s0)
	call	mbedtls_asn1_write_octet_string
	sw	a0,-20(s0)
	j	.L30
.L32:
.LBB3:
	.loc 3 215 13
	nop
.L30:
.LBE3:
	.loc 3 220 5
	addi	a5,s0,-96
	li	a1,66
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 221 12
	lw	a5,-20(s0)
	.loc 3 222 1
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
	.size	pk_write_ec_private, .-pk_write_ec_private
	.section	.text.pk_write_ec_param,"ax",@progbits
	.align	1
	.type	pk_write_ec_param, @function
pk_write_ec_param:
.LFB82:
	.loc 3 232 1
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
	.loc 3 233 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 234 12
	sw	zero,-24(s0)
	.loc 3 238 16
	addi	a3,s0,-32
	addi	a4,s0,-28
	lbu	a5,-41(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_oid_get_oid_by_ec_grp
	sw	a0,-20(s0)
	.loc 3 238 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L34
	.loc 3 239 16
	lw	a5,-20(s0)
	j	.L37
.L34:
	.loc 3 242 22
	lw	a5,-28(s0)
	lw	a4,-32(s0)
	mv	a3,a4
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_write_oid
	sw	a0,-20(s0)
	.loc 3 242 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L36
	.loc 3 242 83 discriminator 2
	lw	a5,-20(s0)
	.loc 3 242 83 is_stmt 0
	j	.L37
.L36:
	.loc 3 242 99 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 244 12
	lw	a5,-24(s0)
.L37:
	.loc 3 245 1
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
	.size	pk_write_ec_param, .-pk_write_ec_param
	.section	.text.pk_write_ec_rfc8410_der,"ax",@progbits
	.align	1
	.type	pk_write_ec_rfc8410_der, @function
pk_write_ec_rfc8410_der:
.LFB83:
	.loc 3 265 1
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
	.loc 3 266 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 267 12
	sw	zero,-24(s0)
	.loc 3 268 12
	sw	zero,-32(s0)
	.loc 3 273 22
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	pk_write_ec_private
	sw	a0,-20(s0)
	.loc 3 273 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L39
	.loc 3 273 68 discriminator 2
	lw	a5,-20(s0)
	.loc 3 273 68 is_stmt 0
	j	.L48
.L39:
	.loc 3 273 84 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 274 22
	lw	a2,-24(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_write_len
	sw	a0,-20(s0)
	.loc 3 274 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L41
	.loc 3 274 72 discriminator 2
	lw	a5,-20(s0)
	.loc 3 274 72 is_stmt 0
	j	.L48
.L41:
	.loc 3 274 88 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 275 22
	li	a2,4
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_write_tag
	sw	a0,-20(s0)
	.loc 3 275 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L42
	.loc 3 275 73 discriminator 2
	lw	a5,-20(s0)
	.loc 3 275 73 is_stmt 0
	j	.L48
.L42:
	.loc 3 275 89 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 277 14
	lw	a0,-60(s0)
	call	mbedtls_pk_get_ec_group_id
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 3 279 16
	addi	a3,s0,-32
	addi	a4,s0,-36
	lbu	a5,-25(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_oid_get_oid_by_ec_grp_algid
	sw	a0,-20(s0)
	.loc 3 279 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L43
	.loc 3 280 16
	lw	a5,-20(s0)
	j	.L48
.L43:
	.loc 3 282 22
	lw	a2,-36(s0)
	lw	a3,-32(s0)
	li	a5,0
	li	a4,0
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_write_algorithm_identifier_ext
	sw	a0,-20(s0)
	.loc 3 282 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L44
	.loc 3 282 108 discriminator 2
	lw	a5,-20(s0)
	.loc 3 282 108 is_stmt 0
	j	.L48
.L44:
	.loc 3 282 124 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 286 22
	li	a2,0
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_write_int
	sw	a0,-20(s0)
	.loc 3 286 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L45
	.loc 3 286 70 discriminator 2
	lw	a5,-20(s0)
	.loc 3 286 70 is_stmt 0
	j	.L48
.L45:
	.loc 3 286 86 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 288 22
	lw	a2,-24(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_write_len
	sw	a0,-20(s0)
	.loc 3 288 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L46
	.loc 3 288 72 discriminator 2
	lw	a5,-20(s0)
	.loc 3 288 72 is_stmt 0
	j	.L48
.L46:
	.loc 3 288 88 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 289 22
	li	a2,48
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_write_tag
	sw	a0,-20(s0)
	.loc 3 289 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L47
	.loc 3 289 80 discriminator 2
	lw	a5,-20(s0)
	.loc 3 289 80 is_stmt 0
	j	.L48
.L47:
	.loc 3 289 96 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 292 12
	lw	a5,-24(s0)
.L48:
	.loc 3 293 1
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
	.size	pk_write_ec_rfc8410_der, .-pk_write_ec_rfc8410_der
	.section	.text.pk_write_ec_der,"ax",@progbits
	.align	1
	.type	pk_write_ec_der, @function
pk_write_ec_der:
.LFB84:
	.loc 3 308 1
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
	.loc 3 309 12
	sw	zero,-20(s0)
	.loc 3 311 12
	sw	zero,-24(s0)
	.loc 3 311 25
	sw	zero,-28(s0)
	.loc 3 315 22
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	pk_write_ec_pubkey
	sw	a0,-32(s0)
	.loc 3 315 13 discriminator 1
	lw	a5,-32(s0)
	bge	a5,zero,.L50
	.loc 3 315 67 discriminator 2
	lw	a5,-32(s0)
	.loc 3 315 67 is_stmt 0
	j	.L51
.L50:
	.loc 3 315 87 is_stmt 1 discriminator 3
	lw	a5,-32(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 317 9
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 3 317 12
	lw	a5,-56(s0)
	sub	a5,a4,a5
	.loc 3 317 8
	bgt	a5,zero,.L52
	.loc 3 318 16
	li	a5,-108
	j	.L51
.L52:
	.loc 3 320 6
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 320 9
	addi	a4,a5,-1
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 3 321 6
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 321 9
	sb	zero,0(a5)
	.loc 3 322 13
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 3 324 22
	lw	a2,-24(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_write_len
	sw	a0,-32(s0)
	.loc 3 324 13 discriminator 1
	lw	a5,-32(s0)
	bge	a5,zero,.L53
	.loc 3 324 76 discriminator 2
	lw	a5,-32(s0)
	.loc 3 324 76 is_stmt 0
	j	.L51
.L53:
	.loc 3 324 96 is_stmt 1 discriminator 3
	lw	a5,-32(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 325 22
	li	a2,3
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_write_tag
	sw	a0,-32(s0)
	.loc 3 325 13 discriminator 1
	lw	a5,-32(s0)
	bge	a5,zero,.L54
	.loc 3 325 73 discriminator 2
	lw	a5,-32(s0)
	.loc 3 325 73 is_stmt 0
	j	.L51
.L54:
	.loc 3 325 93 is_stmt 1 discriminator 3
	lw	a5,-32(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 327 22
	lw	a2,-24(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_write_len
	sw	a0,-32(s0)
	.loc 3 327 13 discriminator 1
	lw	a5,-32(s0)
	bge	a5,zero,.L55
	.loc 3 327 76 discriminator 2
	lw	a5,-32(s0)
	.loc 3 327 76 is_stmt 0
	j	.L51
.L55:
	.loc 3 327 96 is_stmt 1 discriminator 3
	lw	a5,-32(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 328 22
	li	a2,161
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_write_tag
	sw	a0,-32(s0)
	.loc 3 328 13 discriminator 1
	lw	a5,-32(s0)
	bge	a5,zero,.L56
	.loc 3 328 84 discriminator 2
	lw	a5,-32(s0)
	.loc 3 328 84 is_stmt 0
	j	.L51
.L56:
	.loc 3 328 104 is_stmt 1 discriminator 3
	lw	a5,-32(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 331 9
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 3 334 14
	lw	a0,-60(s0)
	call	mbedtls_pk_get_ec_group_id
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 3 335 22
	lbu	a5,-33(s0)
	mv	a2,a5
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	pk_write_ec_param
	sw	a0,-32(s0)
	.loc 3 335 13 discriminator 1
	lw	a5,-32(s0)
	bge	a5,zero,.L57
	.loc 3 335 70 discriminator 2
	lw	a5,-32(s0)
	.loc 3 335 70 is_stmt 0
	j	.L51
.L57:
	.loc 3 335 90 is_stmt 1 discriminator 3
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 336 22
	lw	a2,-28(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_write_len
	sw	a0,-32(s0)
	.loc 3 336 13 discriminator 1
	lw	a5,-32(s0)
	bge	a5,zero,.L58
	.loc 3 336 76 discriminator 2
	lw	a5,-32(s0)
	.loc 3 336 76 is_stmt 0
	j	.L51
.L58:
	.loc 3 336 96 is_stmt 1 discriminator 3
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 337 22
	li	a2,160
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_write_tag
	sw	a0,-32(s0)
	.loc 3 337 13 discriminator 1
	lw	a5,-32(s0)
	bge	a5,zero,.L59
	.loc 3 337 84 discriminator 2
	lw	a5,-32(s0)
	.loc 3 337 84 is_stmt 0
	j	.L51
.L59:
	.loc 3 337 104 is_stmt 1 discriminator 3
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 340 9
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 3 343 22
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	pk_write_ec_private
	sw	a0,-32(s0)
	.loc 3 343 13 discriminator 1
	lw	a5,-32(s0)
	bge	a5,zero,.L60
	.loc 3 343 68 discriminator 2
	lw	a5,-32(s0)
	.loc 3 343 68 is_stmt 0
	j	.L51
.L60:
	.loc 3 343 84 is_stmt 1 discriminator 3
	lw	a5,-32(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 3 346 22
	li	a2,1
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_write_int
	sw	a0,-32(s0)
	.loc 3 346 13 discriminator 1
	lw	a5,-32(s0)
	bge	a5,zero,.L61
	.loc 3 346 70 discriminator 2
	lw	a5,-32(s0)
	.loc 3 346 70 is_stmt 0
	j	.L51
.L61:
	.loc 3 346 86 is_stmt 1 discriminator 3
	lw	a5,-32(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 3 348 22
	lw	a2,-20(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_write_len
	sw	a0,-32(s0)
	.loc 3 348 13 discriminator 1
	lw	a5,-32(s0)
	bge	a5,zero,.L62
	.loc 3 348 72 discriminator 2
	lw	a5,-32(s0)
	.loc 3 348 72 is_stmt 0
	j	.L51
.L62:
	.loc 3 348 88 is_stmt 1 discriminator 3
	lw	a5,-32(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 3 349 22
	li	a2,48
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_write_tag
	sw	a0,-32(s0)
	.loc 3 349 13 discriminator 1
	lw	a5,-32(s0)
	bge	a5,zero,.L63
	.loc 3 349 80 discriminator 2
	lw	a5,-32(s0)
	.loc 3 349 80 is_stmt 0
	j	.L51
.L63:
	.loc 3 349 96 is_stmt 1 discriminator 3
	lw	a5,-32(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 3 352 12
	lw	a5,-20(s0)
.L51:
	.loc 3 353 1
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
	.size	pk_write_ec_der, .-pk_write_ec_der
	.section	.text.pk_get_type_ext,"ax",@progbits
	.align	1
	.type	pk_get_type_ext, @function
pk_get_type_ext:
.LFB85:
	.loc 3 390 1
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
	.loc 3 391 33
	lw	a0,-36(s0)
	call	mbedtls_pk_get_type
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 3 413 12
	lbu	a5,-17(s0)
	.loc 3 414 1
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
	.size	pk_get_type_ext, .-pk_get_type_ext
	.section	.text.mbedtls_pk_write_pubkey,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_write_pubkey
	.type	mbedtls_pk_write_pubkey, @function
mbedtls_pk_write_pubkey:
.LFB86:
	.loc 3 421 1
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
	.loc 3 422 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 3 423 12
	sw	zero,-20(s0)
	.loc 3 426 9
	lw	a0,-44(s0)
	call	mbedtls_pk_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 3 426 8 discriminator 1
	li	a5,1
	bne	a4,a5,.L67
	.loc 3 427 51
	lw	a5,-44(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_rsa
	mv	a5,a0
	.loc 3 427 26 discriminator 1
	lw	a2,-36(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_rsa_write_pubkey
	sw	a0,-24(s0)
	.loc 3 427 17 discriminator 2
	lw	a5,-24(s0)
	bge	a5,zero,.L68
	.loc 3 427 97 discriminator 3
	lw	a5,-24(s0)
	.loc 3 427 97 is_stmt 0
	j	.L69
.L68:
	.loc 3 427 113 is_stmt 1 discriminator 4
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	j	.L70
.L67:
	.loc 3 431 9
	lw	a0,-44(s0)
	call	mbedtls_pk_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 3 431 8 discriminator 1
	li	a5,2
	bne	a4,a5,.L71
	.loc 3 432 26
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	pk_write_ec_pubkey
	sw	a0,-24(s0)
	.loc 3 432 17 discriminator 1
	lw	a5,-24(s0)
	bge	a5,zero,.L72
	.loc 3 432 74 discriminator 2
	lw	a5,-24(s0)
	.loc 3 432 74 is_stmt 0
	j	.L69
.L72:
	.loc 3 432 90 is_stmt 1 discriminator 3
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	j	.L70
.L71:
	.loc 3 440 12
	li	a5,-16384
	addi	a5,a5,1664
	j	.L69
.L70:
	.loc 3 442 12
	lw	a5,-20(s0)
.L69:
	.loc 3 443 1
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
	.size	mbedtls_pk_write_pubkey, .-mbedtls_pk_write_pubkey
	.section	.text.mbedtls_pk_write_pubkey_der,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_write_pubkey_der
	.type	mbedtls_pk_write_pubkey_der, @function
mbedtls_pk_write_pubkey_der:
.LFB87:
	.loc 3 446 1
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
	.loc 3 447 9
	li	a5,-110
	sw	a5,-28(s0)
	.loc 3 449 9
	li	a5,1
	sw	a5,-20(s0)
	.loc 3 450 12
	sw	zero,-32(s0)
	.loc 3 450 21
	sw	zero,-24(s0)
	.loc 3 450 34
	sw	zero,-44(s0)
	.loc 3 452 17
	sw	zero,-48(s0)
	.loc 3 454 8
	lw	a5,-60(s0)
	bne	a5,zero,.L74
	.loc 3 455 16
	li	a5,-108
	j	.L89
.L74:
	.loc 3 458 13
	lw	a4,-56(s0)
	lw	a5,-60(s0)
	add	a5,a4,a5
	.loc 3 458 7
	sw	a5,-40(s0)
	.loc 3 460 22
	addi	a5,s0,-40
	lw	a2,-52(s0)
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_pk_write_pubkey
	sw	a0,-28(s0)
	.loc 3 460 13 discriminator 1
	lw	a5,-28(s0)
	bge	a5,zero,.L76
	.loc 3 460 74 discriminator 2
	lw	a5,-28(s0)
	.loc 3 460 74 is_stmt 0
	j	.L89
.L76:
	.loc 3 460 90 is_stmt 1 discriminator 3
	lw	a5,-28(s0)
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 3 462 11
	lw	a4,-40(s0)
	lw	a5,-56(s0)
	sub	a5,a4,a5
	.loc 3 462 8
	bgt	a5,zero,.L77
	.loc 3 463 16
	li	a5,-108
	j	.L89
.L77:
	.loc 3 471 6
	lw	a5,-40(s0)
	addi	a5,a5,-1
	.loc 3 471 10
	sw	a5,-40(s0)
	.loc 3 471 6
	lw	a5,-40(s0)
	.loc 3 471 10
	sb	zero,0(a5)
	.loc 3 472 9
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
	.loc 3 474 22
	addi	a5,s0,-40
	lw	a2,-32(s0)
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_asn1_write_len
	sw	a0,-28(s0)
	.loc 3 474 13 discriminator 1
	lw	a5,-28(s0)
	bge	a5,zero,.L78
	.loc 3 474 73 discriminator 2
	lw	a5,-28(s0)
	.loc 3 474 73 is_stmt 0
	j	.L89
.L78:
	.loc 3 474 89 is_stmt 1 discriminator 3
	lw	a5,-28(s0)
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 3 475 22
	addi	a5,s0,-40
	li	a2,3
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_asn1_write_tag
	sw	a0,-28(s0)
	.loc 3 475 13 discriminator 1
	lw	a5,-28(s0)
	bge	a5,zero,.L79
	.loc 3 475 74 discriminator 2
	lw	a5,-28(s0)
	.loc 3 475 74 is_stmt 0
	j	.L89
.L79:
	.loc 3 475 90 is_stmt 1 discriminator 3
	lw	a5,-28(s0)
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 3 477 15
	lw	a0,-52(s0)
	call	pk_get_type_ext
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 3 480 9
	lw	a0,-52(s0)
	call	pk_get_type_ext
	mv	a5,a0
	mv	a4,a5
	.loc 3 480 8 discriminator 1
	li	a5,2
	bne	a4,a5,.L80
.LBB4:
	.loc 3 481 42
	lw	a0,-52(s0)
	call	mbedtls_pk_get_ec_group_id
	mv	a5,a0
	sb	a5,-34(s0)
	.loc 3 482 12
	lbu	a4,-34(s0)
	li	a5,9
	beq	a4,a5,.L81
	.loc 3 482 55 discriminator 1
	lbu	a4,-34(s0)
	li	a5,13
	bne	a4,a5,.L82
.L81:
	.loc 3 483 19
	addi	a3,s0,-44
	addi	a4,s0,-48
	lbu	a5,-34(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_oid_get_oid_by_ec_grp_algid
	sw	a0,-28(s0)
	.loc 3 484 16
	lw	a5,-28(s0)
	beq	a5,zero,.L83
	.loc 3 485 24
	lw	a5,-28(s0)
	j	.L89
.L83:
	.loc 3 487 21
	sw	zero,-20(s0)
	j	.L80
.L82:
	.loc 3 489 30
	lbu	a4,-34(s0)
	addi	a5,s0,-40
	mv	a2,a4
	lw	a1,-56(s0)
	mv	a0,a5
	call	pk_write_ec_param
	sw	a0,-28(s0)
	.loc 3 489 21 discriminator 1
	lw	a5,-28(s0)
	bge	a5,zero,.L84
	.loc 3 489 82 discriminator 2
	lw	a5,-28(s0)
	.loc 3 489 82 is_stmt 0
	j	.L89
.L84:
	.loc 3 489 102 is_stmt 1 discriminator 3
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
.L80:
.LBE4:
	.loc 3 495 17
	lw	a5,-44(s0)
	.loc 3 495 8
	bne	a5,zero,.L85
	.loc 3 496 15
	addi	a3,s0,-44
	addi	a4,s0,-48
	lbu	a5,-33(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_oid_get_oid_by_pk_alg
	sw	a0,-28(s0)
	.loc 3 497 12
	lw	a5,-28(s0)
	beq	a5,zero,.L85
	.loc 3 498 20
	lw	a5,-28(s0)
	j	.L89
.L85:
	.loc 3 502 22
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	addi	a0,s0,-40
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	lw	a1,-56(s0)
	call	mbedtls_asn1_write_algorithm_identifier_ext
	sw	a0,-28(s0)
	.loc 3 502 13 discriminator 1
	lw	a5,-28(s0)
	bge	a5,zero,.L86
	.loc 3 502 121 discriminator 2
	lw	a5,-28(s0)
	.loc 3 502 121 is_stmt 0
	j	.L89
.L86:
	.loc 3 502 137 is_stmt 1 discriminator 3
	lw	a5,-28(s0)
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 3 505 22
	addi	a5,s0,-40
	lw	a2,-32(s0)
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_asn1_write_len
	sw	a0,-28(s0)
	.loc 3 505 13 discriminator 1
	lw	a5,-28(s0)
	bge	a5,zero,.L87
	.loc 3 505 73 discriminator 2
	lw	a5,-28(s0)
	.loc 3 505 73 is_stmt 0
	j	.L89
.L87:
	.loc 3 505 89 is_stmt 1 discriminator 3
	lw	a5,-28(s0)
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 3 506 22
	addi	a5,s0,-40
	li	a2,48
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_asn1_write_tag
	sw	a0,-28(s0)
	.loc 3 506 13 discriminator 1
	lw	a5,-28(s0)
	bge	a5,zero,.L88
	.loc 3 506 81 discriminator 2
	lw	a5,-28(s0)
	.loc 3 506 81 is_stmt 0
	j	.L89
.L88:
	.loc 3 506 97 is_stmt 1 discriminator 3
	lw	a5,-28(s0)
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 3 509 12
	lw	a5,-32(s0)
.L89:
	.loc 3 510 1
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
.LFE87:
	.size	mbedtls_pk_write_pubkey_der, .-mbedtls_pk_write_pubkey_der
	.section	.text.mbedtls_pk_write_key_der,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_write_key_der
	.type	mbedtls_pk_write_key_der, @function
mbedtls_pk_write_key_der:
.LFB88:
	.loc 3 513 1
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
	.loc 3 516 8
	lw	a5,-44(s0)
	bne	a5,zero,.L91
	.loc 3 517 16
	li	a5,-108
	j	.L96
.L91:
	.loc 3 520 13
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	.loc 3 520 7
	sw	a5,-20(s0)
	.loc 3 523 9
	lw	a0,-36(s0)
	call	pk_get_type_ext
	mv	a5,a0
	mv	a4,a5
	.loc 3 523 8 discriminator 1
	li	a5,1
	bne	a4,a5,.L93
	.loc 3 524 16
	addi	a5,s0,-20
	lw	a2,-36(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	pk_write_rsa_der
	mv	a5,a0
	j	.L96
.L93:
	.loc 3 528 9
	lw	a0,-36(s0)
	call	pk_get_type_ext
	mv	a5,a0
	mv	a4,a5
	.loc 3 528 8 discriminator 1
	li	a5,2
	bne	a4,a5,.L94
	.loc 3 530 13
	lw	a0,-36(s0)
	call	mbedtls_pk_is_rfc8410
	mv	a5,a0
	.loc 3 530 12 discriminator 1
	beq	a5,zero,.L95
	.loc 3 531 20
	addi	a5,s0,-20
	lw	a2,-36(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	pk_write_ec_rfc8410_der
	mv	a5,a0
	j	.L96
.L95:
	.loc 3 534 16
	addi	a5,s0,-20
	lw	a2,-36(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	pk_write_ec_der
	mv	a5,a0
	j	.L96
.L94:
	.loc 3 537 12
	li	a5,-16384
	addi	a5,a5,1664
.L96:
	.loc 3 538 1
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
	.size	mbedtls_pk_write_key_der, .-mbedtls_pk_write_key_der
	.text
.Letext0:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/rsa.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecp.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/oid.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/rsa_internal.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1write.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcdf
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1f
	.4byte	.LASF99
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
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
	.uleb128 0xd
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
	.uleb128 0x20
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x21
	.byte	0x4
	.uleb128 0x18
	.4byte	0x95
	.uleb128 0x4
	.4byte	0x32
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0xd
	.4byte	0xa1
	.uleb128 0x4
	.4byte	0xa8
	.uleb128 0x4
	.4byte	0xbc
	.uleb128 0x18
	.4byte	0xb2
	.uleb128 0x22
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x6
	.byte	0xaa
	.byte	0x12
	.4byte	0x89
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x8
	.byte	0x6
	.byte	0xd0
	.4byte	0xf7
	.uleb128 0x2
	.string	"p"
	.byte	0x6
	.byte	0xd5
	.byte	0x17
	.4byte	0xf7
	.byte	0
	.uleb128 0x2
	.string	"s"
	.byte	0x6
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x2
	.string	"n"
	.byte	0x6
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	0xbd
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x6
	.byte	0xf0
	.byte	0x1
	.4byte	0xc9
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0x78
	.byte	0x7
	.byte	0x55
	.4byte	0x1e0
	.uleb128 0x2
	.string	"ver"
	.byte	0x7
	.byte	0x56
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x2
	.string	"len"
	.byte	0x7
	.byte	0x5a
	.byte	0xc
	.4byte	0x76
	.byte	0x4
	.uleb128 0x2
	.string	"N"
	.byte	0x7
	.byte	0x5c
	.byte	0x11
	.4byte	0xfc
	.byte	0x8
	.uleb128 0x2
	.string	"E"
	.byte	0x7
	.byte	0x5d
	.byte	0x11
	.4byte	0xfc
	.byte	0x10
	.uleb128 0x2
	.string	"D"
	.byte	0x7
	.byte	0x5f
	.byte	0x11
	.4byte	0xfc
	.byte	0x18
	.uleb128 0x2
	.string	"P"
	.byte	0x7
	.byte	0x60
	.byte	0x11
	.4byte	0xfc
	.byte	0x20
	.uleb128 0x2
	.string	"Q"
	.byte	0x7
	.byte	0x61
	.byte	0x11
	.4byte	0xfc
	.byte	0x28
	.uleb128 0x2
	.string	"DP"
	.byte	0x7
	.byte	0x63
	.byte	0x11
	.4byte	0xfc
	.byte	0x30
	.uleb128 0x2
	.string	"DQ"
	.byte	0x7
	.byte	0x64
	.byte	0x11
	.4byte	0xfc
	.byte	0x38
	.uleb128 0x2
	.string	"QP"
	.byte	0x7
	.byte	0x65
	.byte	0x11
	.4byte	0xfc
	.byte	0x40
	.uleb128 0x2
	.string	"RN"
	.byte	0x7
	.byte	0x67
	.byte	0x11
	.4byte	0xfc
	.byte	0x48
	.uleb128 0x2
	.string	"RP"
	.byte	0x7
	.byte	0x69
	.byte	0x11
	.4byte	0xfc
	.byte	0x50
	.uleb128 0x2
	.string	"RQ"
	.byte	0x7
	.byte	0x6a
	.byte	0x11
	.4byte	0xfc
	.byte	0x58
	.uleb128 0x2
	.string	"Vi"
	.byte	0x7
	.byte	0x6c
	.byte	0x11
	.4byte	0xfc
	.byte	0x60
	.uleb128 0x2
	.string	"Vf"
	.byte	0x7
	.byte	0x6d
	.byte	0x11
	.4byte	0xfc
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x7
	.byte	0x6f
	.byte	0x9
	.4byte	0x68
	.byte	0x70
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x7
	.byte	0x72
	.byte	0x9
	.4byte	0x68
	.byte	0x74
	.byte	0
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x7
	.byte	0x7b
	.byte	0x1
	.4byte	0x108
	.uleb128 0xd
	.4byte	0x1e0
	.uleb128 0x19
	.4byte	0x32
	.byte	0x8
	.byte	0x66
	.4byte	0x251
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x8
	.byte	0x75
	.byte	0x3
	.4byte	0x1f1
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x18
	.byte	0x8
	.byte	0x9e
	.4byte	0x28b
	.uleb128 0x2
	.string	"X"
	.byte	0x8
	.byte	0x9f
	.byte	0x11
	.4byte	0xfc
	.byte	0
	.uleb128 0x2
	.string	"Y"
	.byte	0x8
	.byte	0xa0
	.byte	0x11
	.4byte	0xfc
	.byte	0x8
	.uleb128 0x2
	.string	"Z"
	.byte	0x8
	.byte	0xa1
	.byte	0x11
	.4byte	0xfc
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x8
	.byte	0xa3
	.byte	0x1
	.4byte	0x25d
	.uleb128 0xd
	.4byte	0x28b
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x60
	.byte	0x8
	.byte	0xe9
	.4byte	0x35d
	.uleb128 0x2
	.string	"id"
	.byte	0x8
	.byte	0xea
	.byte	0x1a
	.4byte	0x251
	.byte	0
	.uleb128 0x2
	.string	"P"
	.byte	0x8
	.byte	0xeb
	.byte	0x11
	.4byte	0xfc
	.byte	0x4
	.uleb128 0x2
	.string	"A"
	.byte	0x8
	.byte	0xec
	.byte	0x11
	.4byte	0xfc
	.byte	0xc
	.uleb128 0x2
	.string	"B"
	.byte	0x8
	.byte	0xf1
	.byte	0x11
	.4byte	0xfc
	.byte	0x14
	.uleb128 0x2
	.string	"G"
	.byte	0x8
	.byte	0xf3
	.byte	0x17
	.4byte	0x28b
	.byte	0x1c
	.uleb128 0x2
	.string	"N"
	.byte	0x8
	.byte	0xf4
	.byte	0x11
	.4byte	0xfc
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x8
	.byte	0xf5
	.byte	0xc
	.4byte	0x76
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x8
	.byte	0xf6
	.byte	0xc
	.4byte	0x76
	.byte	0x40
	.uleb128 0x2
	.string	"h"
	.byte	0x8
	.byte	0xfb
	.byte	0x12
	.4byte	0x6f
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x8
	.byte	0xfc
	.byte	0xa
	.4byte	0x371
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x8
	.byte	0xfe
	.byte	0xa
	.4byte	0x38f
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x8
	.byte	0xff
	.byte	0xa
	.4byte	0x38f
	.byte	0x50
	.uleb128 0x1a
	.4byte	.LASF42
	.2byte	0x100
	.byte	0xb
	.4byte	0x95
	.byte	0x54
	.uleb128 0x13
	.string	"T"
	.2byte	0x101
	.byte	0x18
	.4byte	0x38a
	.byte	0x58
	.uleb128 0x1a
	.4byte	.LASF43
	.2byte	0x102
	.byte	0xc
	.4byte	0x76
	.byte	0x5c
	.byte	0
	.uleb128 0x1b
	.4byte	0x68
	.4byte	0x36c
	.uleb128 0x1
	.4byte	0x36c
	.byte	0
	.uleb128 0x4
	.4byte	0xfc
	.uleb128 0x4
	.4byte	0x35d
	.uleb128 0x1b
	.4byte	0x68
	.4byte	0x38a
	.uleb128 0x1
	.4byte	0x38a
	.uleb128 0x1
	.4byte	0x95
	.byte	0
	.uleb128 0x4
	.4byte	0x28b
	.uleb128 0x4
	.4byte	0x376
	.uleb128 0x15
	.4byte	.LASF36
	.byte	0x8
	.2byte	0x104
	.byte	0x1
	.4byte	0x29c
	.uleb128 0xd
	.4byte	0x394
	.uleb128 0x23
	.4byte	.LASF44
	.byte	0x80
	.byte	0x8
	.2byte	0x1ac
	.byte	0x10
	.4byte	0x3d8
	.uleb128 0x13
	.string	"grp"
	.2byte	0x1ad
	.byte	0x17
	.4byte	0x394
	.byte	0
	.uleb128 0x13
	.string	"d"
	.2byte	0x1ae
	.byte	0x11
	.4byte	0xfc
	.byte	0x60
	.uleb128 0x13
	.string	"Q"
	.2byte	0x1af
	.byte	0x17
	.4byte	0x28b
	.byte	0x68
	.byte	0
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x8
	.2byte	0x1b1
	.byte	0x1
	.4byte	0x3a6
	.uleb128 0xd
	.4byte	0x3d8
	.uleb128 0x4
	.4byte	0x76
	.uleb128 0x19
	.4byte	0x32
	.byte	0x1
	.byte	0x49
	.4byte	0x42b
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.4byte	0x3ef
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x1
	.byte	0xd5
	.byte	0x22
	.4byte	0x448
	.uleb128 0xd
	.4byte	0x437
	.uleb128 0x24
	.4byte	.LASF54
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x8
	.byte	0x1
	.byte	0xdc
	.4byte	0x474
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x1
	.byte	0xdd
	.byte	0x1e
	.4byte	0x474
	.byte	0
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x1
	.byte	0xde
	.byte	0xb
	.4byte	0x95
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	0x443
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x109
	.byte	0x3
	.4byte	0x44d
	.uleb128 0xd
	.4byte	0x479
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x9
	.2byte	0x22d
	.byte	0x5
	.4byte	0x68
	.4byte	0x4ac
	.uleb128 0x1
	.4byte	0x42b
	.uleb128 0x1
	.4byte	0x4ac
	.uleb128 0x1
	.4byte	0x3ea
	.byte	0
	.uleb128 0x4
	.4byte	0xad
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0xa
	.byte	0x5f
	.byte	0x5
	.4byte	0x68
	.4byte	0x4d1
	.uleb128 0x1
	.4byte	0x4d1
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0x4d6
	.byte	0
	.uleb128 0x4
	.4byte	0x1ec
	.uleb128 0x4
	.4byte	0x9c
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0xb
	.byte	0xd1
	.byte	0x5
	.4byte	0x68
	.4byte	0x4fb
	.uleb128 0x1
	.4byte	0x4d6
	.uleb128 0x1
	.4byte	0x4fb
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x4
	.4byte	0x39
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0xb
	.byte	0xae
	.byte	0x5
	.4byte	0x68
	.4byte	0x52f
	.uleb128 0x1
	.4byte	0x4d6
	.uleb128 0x1
	.4byte	0x4fb
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x9
	.2byte	0x25c
	.byte	0x5
	.4byte	0x68
	.4byte	0x550
	.uleb128 0x1
	.4byte	0x251
	.uleb128 0x1
	.4byte	0x4ac
	.uleb128 0x1
	.4byte	0x3ea
	.byte	0
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0xb
	.byte	0x43
	.byte	0x5
	.4byte	0x68
	.4byte	0x570
	.uleb128 0x1
	.4byte	0x4d6
	.uleb128 0x1
	.4byte	0x4fb
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0xb
	.byte	0x35
	.byte	0x5
	.4byte	0x68
	.4byte	0x590
	.uleb128 0x1
	.4byte	0x4d6
	.uleb128 0x1
	.4byte	0x4fb
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0xb
	.byte	0x87
	.byte	0x5
	.4byte	0x68
	.4byte	0x5b5
	.uleb128 0x1
	.4byte	0x4d6
	.uleb128 0x1
	.4byte	0x4fb
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x9
	.2byte	0x244
	.byte	0x5
	.4byte	0x68
	.4byte	0x5d6
	.uleb128 0x1
	.4byte	0x251
	.uleb128 0x1
	.4byte	0x4ac
	.uleb128 0x1
	.4byte	0x3ea
	.byte	0
	.uleb128 0x25
	.4byte	.LASF100
	.byte	0xd
	.byte	0x9f
	.byte	0x6
	.4byte	0x5ed
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0xb
	.2byte	0x163
	.byte	0x5
	.4byte	0x68
	.4byte	0x613
	.uleb128 0x1
	.4byte	0x4d6
	.uleb128 0x1
	.4byte	0x4fb
	.uleb128 0x1
	.4byte	0x4fb
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x8
	.2byte	0x577
	.byte	0x5
	.4byte	0x68
	.4byte	0x639
	.uleb128 0x1
	.4byte	0x639
	.uleb128 0x1
	.4byte	0x3ea
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.4byte	0x3e5
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0xc
	.byte	0x1f
	.byte	0x8
	.4byte	0x95
	.4byte	0x65e
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0xb7
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x8
	.2byte	0x305
	.byte	0x5
	.4byte	0x68
	.4byte	0x68e
	.uleb128 0x1
	.4byte	0x68e
	.uleb128 0x1
	.4byte	0x693
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x3ea
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.4byte	0x3a1
	.uleb128 0x4
	.4byte	0x297
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x400
	.byte	0x13
	.4byte	0x42b
	.4byte	0x6af
	.uleb128 0x1
	.4byte	0x6af
	.byte	0
	.uleb128 0x4
	.4byte	0x486
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0xa
	.byte	0x48
	.byte	0x5
	.4byte	0x68
	.4byte	0x6d4
	.uleb128 0x1
	.4byte	0x4d1
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0x4d6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF74
	.2byte	0x200
	.4byte	0x68
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72a
	.uleb128 0x5
	.string	"key"
	.byte	0x3
	.2byte	0x200
	.byte	0x38
	.4byte	0x6af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"buf"
	.byte	0x3
	.2byte	0x200
	.byte	0x4c
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.4byte	.LASF73
	.2byte	0x200
	.byte	0x58
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"c"
	.2byte	0x202
	.byte	0x14
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF75
	.2byte	0x1bd
	.4byte	0x68
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x802
	.uleb128 0x5
	.string	"key"
	.byte	0x3
	.2byte	0x1bd
	.byte	0x3b
	.4byte	0x6af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"buf"
	.byte	0x3
	.2byte	0x1bd
	.byte	0x4f
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.4byte	.LASF73
	.2byte	0x1bd
	.byte	0x5b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.string	"ret"
	.2byte	0x1bf
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"c"
	.2byte	0x1c0
	.byte	0x14
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.4byte	.LASF76
	.2byte	0x1c1
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"len"
	.2byte	0x1c2
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.4byte	.LASF77
	.2byte	0x1c2
	.byte	0x15
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF78
	.2byte	0x1c2
	.byte	0x22
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.4byte	.LASF79
	.2byte	0x1c3
	.byte	0x17
	.4byte	0x42b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x6
	.string	"oid"
	.2byte	0x1c4
	.byte	0x11
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0xa
	.4byte	.LASF80
	.2byte	0x1e1
	.byte	0x1e
	.4byte	0x251
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF81
	.2byte	0x1a3
	.4byte	0x68
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x867
	.uleb128 0x5
	.string	"p"
	.byte	0x3
	.2byte	0x1a3
	.byte	0x2d
	.4byte	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.4byte	.LASF82
	.2byte	0x1a3
	.byte	0x3f
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"key"
	.byte	0x3
	.2byte	0x1a4
	.byte	0x37
	.4byte	0x6af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"ret"
	.2byte	0x1a6
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"len"
	.2byte	0x1a7
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x3
	.2byte	0x185
	.byte	0x1a
	.4byte	0x42b
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a1
	.uleb128 0x5
	.string	"pk"
	.byte	0x3
	.2byte	0x185
	.byte	0x44
	.4byte	0x6af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF79
	.2byte	0x187
	.byte	0x17
	.4byte	0x42b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x3
	.2byte	0x132
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x935
	.uleb128 0x5
	.string	"p"
	.byte	0x3
	.2byte	0x132
	.byte	0x2c
	.4byte	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"buf"
	.byte	0x3
	.2byte	0x132
	.byte	0x3e
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"pk"
	.byte	0x3
	.2byte	0x133
	.byte	0x36
	.4byte	0x6af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.string	"len"
	.2byte	0x135
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"ret"
	.2byte	0x136
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.4byte	.LASF85
	.2byte	0x137
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF77
	.2byte	0x137
	.byte	0x19
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.4byte	.LASF86
	.2byte	0x138
	.byte	0x1a
	.4byte	0x251
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x3
	.2byte	0x107
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c9
	.uleb128 0x5
	.string	"p"
	.byte	0x3
	.2byte	0x107
	.byte	0x34
	.4byte	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"buf"
	.byte	0x3
	.2byte	0x107
	.byte	0x46
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"pk"
	.byte	0x3
	.2byte	0x108
	.byte	0x3e
	.4byte	0x6af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.string	"ret"
	.2byte	0x10a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"len"
	.2byte	0x10b
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF78
	.2byte	0x10c
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"oid"
	.2byte	0x10d
	.byte	0x11
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF86
	.2byte	0x10e
	.byte	0x1a
	.4byte	0x251
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0x3
	.byte	0xe6
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa47
	.uleb128 0x7
	.string	"p"
	.byte	0x3
	.byte	0xe6
	.byte	0x2e
	.4byte	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0xe6
	.byte	0x40
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0xe7
	.byte	0x33
	.4byte	0x251
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x8
	.string	"ret"
	.byte	0x3
	.byte	0xe9
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"len"
	.byte	0x3
	.byte	0xea
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"oid"
	.byte	0x3
	.byte	0xeb
	.byte	0x11
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.4byte	.LASF78
	.byte	0xec
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0x3
	.byte	0xc0
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xada
	.uleb128 0x7
	.string	"p"
	.byte	0x3
	.byte	0xc0
	.byte	0x30
	.4byte	0x4d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0xc0
	.byte	0x42
	.4byte	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x7
	.string	"pk"
	.byte	0x3
	.byte	0xc1
	.byte	0x3a
	.4byte	0x6af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1c
	.4byte	.LASF90
	.byte	0xc3
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"ret"
	.byte	0x3
	.byte	0xc4
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"tmp"
	.byte	0x3
	.byte	0xc5
	.byte	0x13
	.4byte	0xada
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.4byte	.LASF101
	.byte	0x3
	.byte	0xdb
	.byte	0x1
	.4byte	.L30
	.uleb128 0x28
	.4byte	.LLRL0
	.uleb128 0x8
	.string	"ec"
	.byte	0x3
	.byte	0xd2
	.byte	0x1e
	.4byte	0xaea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x32
	.4byte	0xaea
	.uleb128 0x1e
	.4byte	0x6f
	.byte	0x41
	.byte	0
	.uleb128 0x4
	.4byte	0x3d8
	.uleb128 0xf
	.4byte	.LASF91
	.byte	0x3
	.byte	0x77
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb72
	.uleb128 0x7
	.string	"p"
	.byte	0x3
	.byte	0x77
	.byte	0x2f
	.4byte	0x4d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x77
	.byte	0x41
	.4byte	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x7
	.string	"pk"
	.byte	0x3
	.byte	0x78
	.byte	0x39
	.4byte	0x6af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x8
	.string	"len"
	.byte	0x3
	.byte	0x7a
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"buf"
	.byte	0x3
	.byte	0x7b
	.byte	0x13
	.4byte	0xb72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x8
	.string	"ec"
	.byte	0x3
	.byte	0x7c
	.byte	0x1a
	.4byte	0xaea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"ret"
	.byte	0x3
	.byte	0x7d
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.4byte	0x32
	.4byte	0xb82
	.uleb128 0x1e
	.4byte	0x6f
	.byte	0x84
	.byte	0
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0x3
	.byte	0x3e
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc7
	.uleb128 0x7
	.string	"p"
	.byte	0x3
	.byte	0x3e
	.byte	0x2d
	.4byte	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"buf"
	.byte	0x3
	.byte	0x3e
	.byte	0x3f
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"pk"
	.byte	0x3
	.byte	0x3f
	.byte	0x37
	.4byte	0x6af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0x2
	.byte	0x7c
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbfe
	.uleb128 0x7
	.string	"pk"
	.byte	0x2
	.byte	0x7c
	.byte	0x43
	.4byte	0x6af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"id"
	.byte	0x2
	.byte	0x7e
	.byte	0x1a
	.4byte	0x251
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xf
	.4byte	.LASF94
	.byte	0x2
	.byte	0x56
	.byte	0x24
	.4byte	0x251
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc35
	.uleb128 0x7
	.string	"pk"
	.byte	0x2
	.byte	0x56
	.byte	0x59
	.4byte	0x6af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"id"
	.byte	0x2
	.byte	0x58
	.byte	0x1a
	.4byte	0x251
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0x2
	.byte	0x48
	.byte	0x24
	.4byte	0xaea
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc5e
	.uleb128 0x7
	.string	"pk"
	.byte	0x2
	.byte	0x48
	.byte	0x4e
	.4byte	0x486
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF96
	.byte	0x2
	.byte	0x3c
	.byte	0x2a
	.4byte	0x639
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc87
	.uleb128 0x7
	.string	"pk"
	.byte	0x2
	.byte	0x3c
	.byte	0x54
	.4byte	0x486
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x424
	.byte	0x24
	.4byte	0xaea
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb2
	.uleb128 0x5
	.string	"pk"
	.byte	0x1
	.2byte	0x424
	.byte	0x4b
	.4byte	0x486
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x40d
	.byte	0x24
	.4byte	0xcdd
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcdd
	.uleb128 0x5
	.string	"pk"
	.byte	0x1
	.2byte	0x40d
	.byte	0x4c
	.4byte	0x486
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	0x1e0
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x8
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
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
	.uleb128 0x5
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x18
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
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
	.4byte	.LBB2
	.byte	0x4
	.uleb128 .LBB2-.LBB2
	.uleb128 .LBE2-.LBB2
	.byte	0x4
	.uleb128 .LBB3-.LBB2
	.uleb128 .LBE3-.LBB2
	.byte	0
.LLRL1:
	.byte	0x7
	.4byte	.LFB67
	.uleb128 .LFE67-.LFB67
	.byte	0x7
	.4byte	.LFB68
	.uleb128 .LFE68-.LFB68
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"padding"
.LASF53:
	.string	"mbedtls_pk_type_t"
.LASF19:
	.string	"hash_id"
.LASF12:
	.string	"size_t"
.LASF80:
	.string	"ec_grp_id"
.LASF58:
	.string	"mbedtls_oid_get_oid_by_pk_alg"
.LASF92:
	.string	"pk_write_rsa_der"
.LASF96:
	.string	"mbedtls_pk_ec_ro"
.LASF42:
	.string	"t_data"
.LASF52:
	.string	"MBEDTLS_PK_OPAQUE"
.LASF33:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF16:
	.string	"mbedtls_mpi"
.LASF17:
	.string	"mbedtls_rsa_context"
.LASF27:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF54:
	.string	"mbedtls_pk_info_t"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF40:
	.string	"t_pre"
.LASF97:
	.string	"mbedtls_pk_ec"
.LASF9:
	.string	"long long unsigned int"
.LASF20:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF6:
	.string	"long int"
.LASF70:
	.string	"mbedtls_ecp_point_write_binary"
.LASF66:
	.string	"mbedtls_oid_get_oid_by_ec_grp"
.LASF78:
	.string	"oid_len"
.LASF87:
	.string	"pk_write_ec_rfc8410_der"
.LASF22:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF74:
	.string	"mbedtls_pk_write_key_der"
.LASF25:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF75:
	.string	"mbedtls_pk_write_pubkey_der"
.LASF65:
	.string	"mbedtls_asn1_write_oid"
.LASF21:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF24:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF93:
	.string	"mbedtls_pk_is_rfc8410"
.LASF38:
	.string	"nbits"
.LASF94:
	.string	"mbedtls_pk_get_ec_group_id"
.LASF10:
	.string	"unsigned int"
.LASF7:
	.string	"long unsigned int"
.LASF30:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF62:
	.string	"mbedtls_oid_get_oid_by_ec_grp_algid"
.LASF89:
	.string	"pk_write_ec_private"
.LASF73:
	.string	"size"
.LASF5:
	.string	"short unsigned int"
.LASF47:
	.string	"MBEDTLS_PK_ECKEY"
.LASF31:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF90:
	.string	"byte_length"
.LASF49:
	.string	"MBEDTLS_PK_ECDSA"
.LASF26:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF86:
	.string	"grp_id"
.LASF61:
	.string	"mbedtls_asn1_write_algorithm_identifier_ext"
.LASF56:
	.string	"pk_info"
.LASF43:
	.string	"T_size"
.LASF59:
	.string	"mbedtls_rsa_write_pubkey"
.LASF60:
	.string	"mbedtls_asn1_write_int"
.LASF37:
	.string	"pbits"
.LASF28:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF55:
	.string	"mbedtls_pk_context"
.LASF79:
	.string	"pk_type"
.LASF71:
	.string	"mbedtls_pk_get_type"
.LASF72:
	.string	"mbedtls_rsa_write_key"
.LASF15:
	.string	"mbedtls_mpi_uint"
.LASF34:
	.string	"mbedtls_ecp_group_id"
.LASF3:
	.string	"unsigned char"
.LASF77:
	.string	"par_len"
.LASF4:
	.string	"short int"
.LASF44:
	.string	"mbedtls_ecp_keypair"
.LASF68:
	.string	"mbedtls_ecp_write_key_ext"
.LASF101:
	.string	"exit"
.LASF36:
	.string	"mbedtls_ecp_group"
.LASF32:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF57:
	.string	"pk_ctx"
.LASF13:
	.string	"uint32_t"
.LASF48:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF11:
	.string	"long double"
.LASF14:
	.string	"char"
.LASF51:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF83:
	.string	"pk_get_type_ext"
.LASF100:
	.string	"mbedtls_platform_zeroize"
.LASF39:
	.string	"modp"
.LASF41:
	.string	"t_post"
.LASF88:
	.string	"pk_write_ec_param"
.LASF98:
	.string	"mbedtls_pk_rsa"
.LASF67:
	.string	"mbedtls_asn1_write_octet_string"
.LASF64:
	.string	"mbedtls_asn1_write_len"
.LASF69:
	.string	"memcpy"
.LASF99:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF63:
	.string	"mbedtls_asn1_write_tag"
.LASF50:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF91:
	.string	"pk_write_ec_pubkey"
.LASF35:
	.string	"mbedtls_ecp_point"
.LASF45:
	.string	"MBEDTLS_PK_NONE"
.LASF95:
	.string	"mbedtls_pk_ec_rw"
.LASF23:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF76:
	.string	"has_par"
.LASF29:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF84:
	.string	"pk_write_ec_der"
.LASF81:
	.string	"mbedtls_pk_write_pubkey"
.LASF85:
	.string	"pub_len"
.LASF82:
	.string	"start"
.LASF46:
	.string	"MBEDTLS_PK_RSA"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pkwrite.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
