	.file	"pkparse.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pkparse.c"
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
	.section	.text.mbedtls_error_add,"ax",@progbits
	.align	1
	.type	mbedtls_error_add, @function
mbedtls_error_add:
.LFB72:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/error.h"
	.loc 2 144 1
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
	.loc 2 153 17
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 154 1
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
	.size	mbedtls_error_add, .-mbedtls_error_add
	.section	.text.pk_ecc_tag_is_specified_ec_domain,"ax",@progbits
	.align	1
	.type	pk_ecc_tag_is_specified_ec_domain, @function
pk_ecc_tag_is_specified_ec_domain:
.LFB79:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pkparse.c"
	.loc 3 86 1
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
	.loc 3 87 16
	lw	a5,-20(s0)
	addi	a5,a5,-48
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 3 88 1
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
	.size	pk_ecc_tag_is_specified_ec_domain, .-pk_ecc_tag_is_specified_ec_domain
	.section	.rodata
	.align	2
.LC0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pkparse.c"
	.align	2
.LC1:
	.base64	"KoZIzj0BAQA="
	.section	.text.pk_group_from_specified,"ax",@progbits
	.align	1
	.type	pk_group_from_specified, @function
pk_group_from_specified:
.LFB80:
	.loc 3 110 1
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
	.loc 3 111 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 112 30
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 3 112 20
	sw	a5,-36(s0)
	.loc 3 113 44
	lw	a5,-52(s0)
	lw	a4,8(a5)
	.loc 3 113 56
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 3 113 32
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 119 16
	addi	a4,s0,-44
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_int
	sw	a0,-20(s0)
	.loc 3 119 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L9
	.loc 3 120 16
	li	a3,120
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L31
.L9:
	.loc 3 123 13
	lw	a5,-44(s0)
	.loc 3 123 8
	ble	a5,zero,.L11
	.loc 3 123 24 discriminator 1
	lw	a4,-44(s0)
	.loc 3 123 17 discriminator 1
	li	a5,3
	ble	a4,a5,.L12
.L11:
	.loc 3 124 16
	li	a5,-16384
	addi	a5,a5,768
	j	.L31
.L12:
	.loc 3 133 16
	addi	a4,s0,-40
	addi	a5,s0,-36
	li	a3,48
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 133 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L13
	.loc 3 135 16
	lw	a5,-20(s0)
	j	.L31
.L13:
	.loc 3 138 19
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	.loc 3 138 15
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 148 16
	addi	a4,s0,-40
	addi	a5,s0,-36
	li	a3,6
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 148 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L14
	.loc 3 149 16
	lw	a5,-20(s0)
	j	.L31
.L14:
	.loc 3 152 13
	lw	a4,-40(s0)
	.loc 3 152 8
	li	a5,7
	bne	a4,a5,.L15
	.loc 3 153 9
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	mv	a2,a5
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 3 152 73 discriminator 1
	beq	a5,zero,.L16
.L15:
	.loc 3 154 16
	li	a5,-16384
	addi	a5,a5,1664
	j	.L31
.L16:
	.loc 3 157 7
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 3 160 16
	lw	a5,-56(s0)
	addi	a4,a5,4
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_mpi
	sw	a0,-20(s0)
	.loc 3 160 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L17
	.loc 3 161 16
	li	a3,161
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L31
.L17:
	.loc 3 164 37
	lw	a5,-56(s0)
	addi	a5,a5,4
	.loc 3 164 18
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	mv	a4,a0
	.loc 3 164 16 discriminator 1
	lw	a5,-56(s0)
	sw	a4,60(a5)
	.loc 3 166 11
	lw	a5,-36(s0)
	.loc 3 166 8
	lw	a4,-28(s0)
	beq	a4,a5,.L18
	.loc 3 167 16
	li	a3,167
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L31
.L18:
	.loc 3 180 16
	addi	a4,s0,-40
	addi	a5,s0,-36
	li	a3,48
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 180 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L19
	.loc 3 182 16
	lw	a5,-20(s0)
	j	.L31
.L19:
	.loc 3 185 19
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	.loc 3 185 15
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 3 191 16
	addi	a4,s0,-40
	addi	a5,s0,-36
	li	a3,4
	mv	a2,a4
	lw	a1,-32(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 191 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L20
	.loc 3 192 16
	lw	a5,-56(s0)
	addi	a5,a5,12
	lw	a4,-36(s0)
	lw	a3,-40(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 3 191 70 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L21
.L20:
	.loc 3 193 16
	li	a3,193
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L31
.L21:
	.loc 3 196 7
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 3 198 16
	addi	a4,s0,-40
	addi	a5,s0,-36
	li	a3,4
	mv	a2,a4
	lw	a1,-32(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 198 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L22
	.loc 3 199 16
	lw	a5,-56(s0)
	addi	a5,a5,20
	lw	a4,-36(s0)
	lw	a3,-40(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 3 198 70 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L23
.L22:
	.loc 3 200 16
	li	a3,200
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L31
.L23:
	.loc 3 203 7
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 3 206 16
	addi	a4,s0,-40
	addi	a5,s0,-36
	li	a3,3
	mv	a2,a4
	lw	a1,-32(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 206 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L24
	.loc 3 207 11
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
.L24:
	.loc 3 210 11
	lw	a5,-36(s0)
	.loc 3 210 8
	lw	a4,-32(s0)
	beq	a4,a5,.L25
	.loc 3 211 16
	li	a3,211
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L31
.L25:
	.loc 3 218 16
	addi	a4,s0,-40
	addi	a5,s0,-36
	li	a3,4
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 218 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L26
	.loc 3 219 16
	li	a3,219
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L31
.L26:
	.loc 3 222 16
	lw	a5,-56(s0)
	addi	a5,a5,28
	lw	a4,-36(s0)
	lw	a3,-40(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-56(s0)
	call	mbedtls_ecp_point_read_binary
	sw	a0,-20(s0)
	.loc 3 222 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L27
	.loc 3 228 12
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,384
	bne	a4,a5,.L28
	.loc 3 229 15
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 3 228 28 discriminator 1
	li	a5,2
	beq	a4,a5,.L29
	.loc 3 229 31
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 3 229 27
	li	a5,3
	bne	a4,a5,.L28
.L29:
	.loc 3 230 37
	lw	a5,-56(s0)
	addi	a5,a5,4
	.loc 3 230 20
	mv	a0,a5
	call	mbedtls_mpi_size
	mv	a5,a0
	.loc 3 230 46 discriminator 1
	addi	a4,a5,1
	.loc 3 230 17 discriminator 1
	lw	a5,-40(s0)
	.loc 3 229 44 discriminator 1
	bne	a4,a5,.L28
	.loc 3 231 13
	lw	a5,-56(s0)
	addi	a4,a5,28
	lw	a5,-36(s0)
	.loc 3 231 50
	addi	a3,a5,1
	.loc 3 231 13
	lw	a5,-40(s0)
	addi	a5,a5,-1
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_mpi_read_binary
	mv	a5,a0
	.loc 3 230 50
	bne	a5,zero,.L28
	.loc 3 232 13
	lw	a5,-56(s0)
	addi	a4,a5,36
	.loc 3 232 42
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 3 232 46
	addi	a5,a5,-2
	.loc 3 232 13
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_lset
	mv	a5,a0
	.loc 3 231 69
	bne	a5,zero,.L28
	.loc 3 233 13
	lw	a5,-56(s0)
	addi	a5,a5,44
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	mv	a5,a0
	.loc 3 232 56
	beq	a5,zero,.L27
.L28:
	.loc 3 234 20
	li	a5,-16384
	addi	a5,a5,768
	j	.L31
.L27:
	.loc 3 238 7
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 3 243 16
	lw	a5,-56(s0)
	addi	a4,a5,52
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_mpi
	sw	a0,-20(s0)
	.loc 3 243 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L30
	.loc 3 244 16
	li	a3,244
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L31
.L30:
	.loc 3 247 37
	lw	a5,-56(s0)
	addi	a5,a5,52
	.loc 3 247 18
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	mv	a4,a0
	.loc 3 247 16 discriminator 1
	lw	a5,-56(s0)
	sw	a4,64(a5)
	.loc 3 253 12
	li	a5,0
.L31:
	.loc 3 254 1
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
.LFE80:
	.size	pk_group_from_specified, .-pk_group_from_specified
	.section	.text.pk_group_id_from_group,"ax",@progbits
	.align	1
	.type	pk_group_id_from_group, @function
pk_group_id_from_group:
.LFB81:
	.loc 3 261 1
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	ra,140(sp)
	sw	s0,136(sp)
	sw	s1,132(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sw	a0,-132(s0)
	sw	a1,-136(s0)
	.loc 3 262 9
	sw	zero,-20(s0)
	.loc 3 266 5
	addi	a5,s0,-120
	mv	a0,a5
	call	mbedtls_ecp_group_init
	.loc 3 268 15
	call	mbedtls_ecp_grp_id_list
	sw	a0,-24(s0)
	.loc 3 268 5
	j	.L33
.L37:
	.loc 3 270 9
	addi	a5,s0,-120
	mv	a0,a5
	call	mbedtls_ecp_group_free
	.loc 3 271 26
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	addi	a5,s0,-120
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecp_group_load
	sw	a0,-20(s0)
	.loc 3 271 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L40
	.loc 3 274 16
	lw	a5,-132(s0)
	lw	a4,60(a5)
	.loc 3 274 30
	lw	a5,-60(s0)
	.loc 3 274 12
	bne	a4,a5,.L36
	.loc 3 274 43 discriminator 1
	lw	a5,-132(s0)
	lw	a4,64(a5)
	.loc 3 274 57 discriminator 1
	lw	a5,-56(s0)
	.loc 3 274 37 discriminator 1
	bne	a4,a5,.L36
	.loc 3 275 13
	lw	a5,-132(s0)
	addi	a4,a5,4
	addi	a5,s0,-120
	addi	a5,a5,4
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 3 274 64 discriminator 2
	bne	a5,zero,.L36
	.loc 3 276 13
	lw	a5,-132(s0)
	addi	a4,a5,12
	addi	a5,s0,-120
	addi	a5,a5,12
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 3 275 55
	bne	a5,zero,.L36
	.loc 3 277 13
	lw	a5,-132(s0)
	addi	a4,a5,20
	addi	a5,s0,-120
	addi	a5,a5,20
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 3 276 55
	bne	a5,zero,.L36
	.loc 3 278 13
	lw	a5,-132(s0)
	addi	a4,a5,52
	addi	a5,s0,-120
	addi	a5,a5,52
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 3 277 55
	bne	a5,zero,.L36
	.loc 3 279 13
	lw	a5,-132(s0)
	addi	a4,a5,28
	addi	a5,s0,-120
	addi	a5,a5,28
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 3 278 55
	bne	a5,zero,.L36
	.loc 3 280 13
	lw	a5,-132(s0)
	addi	a4,a5,44
	addi	a5,s0,-120
	addi	a5,a5,44
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 3 279 59
	bne	a5,zero,.L36
	.loc 3 282 13
	lw	a5,-132(s0)
	addi	a5,a5,36
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_get_bit
	mv	s1,a0
	.loc 3 282 50 discriminator 1
	addi	a5,s0,-120
	addi	a5,a5,36
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_get_bit
	mv	a5,a0
	.loc 3 280 59
	beq	s1,a5,.L41
.L36:
	.loc 3 268 72 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L33:
	.loc 3 268 42 discriminator 2
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 3 268 46 discriminator 2
	bne	a5,zero,.L37
	.loc 3 287 1
	j	.L35
.L40:
	.loc 3 271 68
	nop
	j	.L35
.L41:
	.loc 3 283 13
	nop
.L35:
	.loc 3 288 5
	addi	a5,s0,-120
	mv	a0,a5
	call	mbedtls_ecp_group_free
	.loc 3 290 15
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	.loc 3 290 13
	lw	a5,-136(s0)
	sb	a4,0(a5)
	.loc 3 292 8
	lw	a5,-20(s0)
	bne	a5,zero,.L38
	.loc 3 292 21 discriminator 1
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 3 292 18 discriminator 1
	bne	a5,zero,.L38
	.loc 3 293 13
	li	a5,-20480
	addi	a5,a5,384
	sw	a5,-20(s0)
.L38:
	.loc 3 296 12
	lw	a5,-20(s0)
	.loc 3 297 1
	mv	a0,a5
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	lw	s1,132(sp)
	.cfi_restore 9
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE81:
	.size	pk_group_id_from_group, .-pk_group_id_from_group
	.section	.text.pk_ecc_group_id_from_specified,"ax",@progbits
	.align	1
	.type	pk_ecc_group_id_from_specified, @function
pk_ecc_group_id_from_specified:
.LFB82:
	.loc 3 304 1
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	ra,140(sp)
	sw	s0,136(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sw	a0,-132(s0)
	sw	a1,-136(s0)
	.loc 3 305 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 308 5
	addi	a5,s0,-116
	mv	a0,a5
	call	mbedtls_ecp_group_init
	.loc 3 310 16
	addi	a5,s0,-116
	mv	a1,a5
	lw	a0,-132(s0)
	call	pk_group_from_specified
	sw	a0,-20(s0)
	.loc 3 310 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L46
	.loc 3 314 11
	addi	a5,s0,-116
	lw	a1,-136(s0)
	mv	a0,a5
	call	pk_group_id_from_group
	sw	a0,-20(s0)
	j	.L44
.L46:
	.loc 3 311 9
	nop
.L44:
	.loc 3 324 5
	addi	a5,s0,-116
	addi	a5,a5,52
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 3 325 5
	addi	a5,s0,-116
	addi	a5,a5,4
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 3 326 5
	addi	a5,s0,-116
	addi	a5,a5,12
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 3 327 5
	addi	a5,s0,-116
	addi	a5,a5,20
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 3 328 5
	addi	a5,s0,-116
	addi	a5,a5,28
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 3 330 12
	lw	a5,-20(s0)
	.loc 3 331 1
	mv	a0,a5
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE82:
	.size	pk_ecc_group_id_from_specified, .-pk_ecc_group_id_from_specified
	.section	.text.pk_get_ecparams,"ax",@progbits
	.align	1
	.type	pk_get_ecparams, @function
pk_get_ecparams:
.LFB83:
	.loc 3 350 1
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
	.loc 3 351 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 353 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 353 13
	lw	a4,-40(s0)
	sub	a5,a4,a5
	.loc 3 353 8
	bgt	a5,zero,.L48
	.loc 3 354 16
	li	a3,354
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-96
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L49
.L48:
	.loc 3 359 20
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 359 19
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 3 359 17
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 3 360 15
	lw	a5,-44(s0)
	lw	a4,0(a5)
	.loc 3 360 8
	li	a5,6
	beq	a4,a5,.L50
	.loc 3 361 10
	lw	a5,-44(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	pk_ecc_tag_is_specified_ec_domain
	mv	a5,a0
	.loc 3 360 29 discriminator 1
	bne	a5,zero,.L50
	.loc 3 362 16
	li	a3,362
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-98
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L49
.L50:
	.loc 3 366 16
	lw	a5,-44(s0)
	addi	a4,a5,4
	lw	a5,-44(s0)
	lw	a5,0(a5)
	mv	a3,a5
	mv	a2,a4
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 366 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L51
	.loc 3 367 16
	li	a3,367
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L49
.L51:
	.loc 3 370 17
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 3 370 15
	lw	a5,-44(s0)
	sw	a4,8(a5)
	.loc 3 371 5
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 3 371 17
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 3 371 8
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 3 373 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 373 8
	lw	a4,-40(s0)
	beq	a4,a5,.L52
	.loc 3 374 16
	li	a3,374
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L49
.L52:
	.loc 3 378 12
	li	a5,0
.L49:
	.loc 3 379 1
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
	.size	pk_get_ecparams, .-pk_get_ecparams
	.section	.text.pk_use_ecparams,"ax",@progbits
	.align	1
	.type	pk_use_ecparams, @function
pk_use_ecparams:
.LFB84:
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
	sw	a1,-40(s0)
	.loc 3 391 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 394 15
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 3 394 8
	li	a5,6
	bne	a4,a5,.L54
	.loc 3 395 13
	addi	a5,s0,-21
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_oid_get_ec_grp
	mv	a5,a0
	.loc 3 395 12 discriminator 1
	beq	a5,zero,.L55
	.loc 3 396 20
	li	a5,-16384
	addi	a5,a5,1536
	j	.L57
.L54:
	.loc 3 399 15
	addi	a5,s0,-21
	mv	a1,a5
	lw	a0,-36(s0)
	call	pk_ecc_group_id_from_specified
	sw	a0,-20(s0)
	.loc 3 400 12
	lw	a5,-20(s0)
	beq	a5,zero,.L55
	.loc 3 401 20
	lw	a5,-20(s0)
	j	.L57
.L55:
	.loc 3 405 12
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	mbedtls_pk_ecc_set_group
	mv	a5,a0
.L57:
	.loc 3 406 1
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
	.size	pk_use_ecparams, .-pk_use_ecparams
	.section	.text.pk_use_ecparams_rfc8410,"ax",@progbits
	.align	1
	.type	pk_use_ecparams_rfc8410, @function
pk_use_ecparams_rfc8410:
.LFB85:
	.loc 3 416 1
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
	sw	a2,-28(s0)
	sb	a5,-21(s0)
	.loc 3 417 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 417 8
	bne	a5,zero,.L59
	.loc 3 417 35 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 3 417 26 discriminator 1
	beq	a5,zero,.L60
.L59:
	.loc 3 418 16
	li	a5,-16384
	addi	a5,a5,768
	j	.L61
.L60:
	.loc 3 421 12
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-28(s0)
	call	mbedtls_pk_ecc_set_group
	mv	a5,a0
.L61:
	.loc 3 422 1
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
	.size	pk_use_ecparams_rfc8410, .-pk_use_ecparams_rfc8410
	.section	.text.pk_parse_key_rfc8410_der,"ax",@progbits
	.align	1
	.type	pk_parse_key_rfc8410_der, @function
pk_parse_key_rfc8410_der:
.LFB86:
	.loc 3 432 1
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
	.loc 3 433 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 436 16
	lw	a4,-40(s0)
	.loc 3 436 48
	lw	a5,-44(s0)
	add	a4,a4,a5
	.loc 3 436 16
	addi	a2,s0,-24
	addi	a5,s0,-40
	li	a3,4
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 436 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L63
	.loc 3 437 16
	li	a3,437
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L68
.L63:
	.loc 3 440 13
	lw	a4,-40(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 3 440 8
	lw	a4,-48(s0)
	beq	a4,a5,.L65
	.loc 3 441 16
	li	a5,-16384
	addi	a5,a5,768
	j	.L68
.L65:
	.loc 3 447 11
	lw	a5,-40(s0)
	lw	a4,-24(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_pk_ecc_set_key
	sw	a0,-20(s0)
	.loc 3 448 8
	lw	a5,-20(s0)
	beq	a5,zero,.L66
	.loc 3 449 16
	lw	a5,-20(s0)
	j	.L68
.L66:
	.loc 3 455 16
	lw	a5,-40(s0)
	lw	a2,-24(s0)
	lw	a4,-56(s0)
	lw	a3,-52(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_pk_ecc_set_pubkey_from_prv
	sw	a0,-20(s0)
	.loc 3 455 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L67
	.loc 3 456 16
	lw	a5,-20(s0)
	j	.L68
.L67:
	.loc 3 459 12
	li	a5,0
.L68:
	.loc 3 460 1
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
.LFE86:
	.size	pk_parse_key_rfc8410_der, .-pk_parse_key_rfc8410_der
	.section	.text.pk_get_pk_alg,"ax",@progbits
	.align	1
	.type	pk_get_pk_alg, @function
pk_get_pk_alg:
.LFB87:
	.loc 3 475 1
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
	.loc 3 476 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 479 5
	li	a2,12
	li	a1,0
	lw	a0,-48(s0)
	call	memset
	.loc 3 481 16
	addi	a5,s0,-32
	lw	a3,-48(s0)
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_alg
	sw	a0,-20(s0)
	.loc 3 481 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L70
	.loc 3 482 16
	li	a3,482
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,1408
	call	mbedtls_error_add
	mv	a5,a0
	j	.L77
.L70:
	.loc 3 485 11
	addi	a5,s0,-32
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_oid_get_pk_alg
	sw	a0,-20(s0)
	.loc 3 487 8
	lw	a4,-20(s0)
	li	a5,-46
	bne	a4,a5,.L72
	.loc 3 488 15
	addi	a5,s0,-32
	lw	a1,-52(s0)
	mv	a0,a5
	call	mbedtls_oid_get_ec_grp_algid
	sw	a0,-20(s0)
	.loc 3 489 12
	lw	a5,-20(s0)
	bne	a5,zero,.L72
	.loc 3 490 21
	lw	a5,-44(s0)
	li	a4,2
	sb	a4,0(a5)
.L72:
	.loc 3 496 8
	lw	a5,-20(s0)
	beq	a5,zero,.L73
	.loc 3 497 16
	li	a5,-16384
	addi	a5,a5,896
	j	.L77
.L73:
	.loc 3 503 9
	lw	a5,-44(s0)
	lbu	a4,0(a5)
	.loc 3 503 8
	li	a5,1
	bne	a4,a5,.L74
	.loc 3 504 17
	lw	a5,-48(s0)
	lw	a4,0(a5)
	.loc 3 503 35 discriminator 1
	li	a5,5
	beq	a4,a5,.L75
	.loc 3 504 40
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 3 504 31
	bne	a5,zero,.L76
.L75:
	.loc 3 505 16
	lw	a5,-48(s0)
	lw	a5,4(a5)
	.loc 3 504 52 discriminator 1
	beq	a5,zero,.L74
.L76:
	.loc 3 506 16
	li	a5,-16384
	addi	a5,a5,1408
	j	.L77
.L74:
	.loc 3 509 12
	li	a5,0
.L77:
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
	.size	pk_get_pk_alg, .-pk_get_pk_alg
	.section	.text.mbedtls_pk_parse_subpubkey,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_parse_subpubkey
	.type	mbedtls_pk_parse_subpubkey, @function
mbedtls_pk_parse_subpubkey:
.LFB88:
	.loc 3 519 1
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
	.loc 3 520 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 523 23
	sb	zero,-41(s0)
	.loc 3 524 26
	sb	zero,-42(s0)
	.loc 3 527 16
	addi	a5,s0,-28
	li	a3,48
	mv	a2,a5
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 527 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L79
	.loc 3 529 16
	li	a3,529
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L99
.L79:
	.loc 3 532 11
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 3 532 14
	lw	a5,-28(s0)
	.loc 3 532 9
	add	a5,a4,a5
	sw	a5,-56(s0)
	.loc 3 534 16
	addi	a4,s0,-42
	addi	a3,s0,-40
	addi	a5,s0,-41
	mv	a2,a5
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	pk_get_pk_alg
	sw	a0,-20(s0)
	.loc 3 534 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L81
	.loc 3 535 16
	lw	a5,-20(s0)
	j	.L99
.L81:
	.loc 3 538 16
	addi	a5,s0,-28
	mv	a2,a5
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_get_bitstring_null
	sw	a0,-20(s0)
	.loc 3 538 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L82
	.loc 3 539 16
	li	a3,539
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L99
.L82:
	.loc 3 542 9
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 3 542 12
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 3 542 8
	lw	a4,-56(s0)
	beq	a4,a5,.L83
	.loc 3 543 16
	li	a3,543
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-16384
	addi	a0,a5,1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L99
.L83:
	.loc 3 547 20
	lbu	a5,-41(s0)
	mv	a0,a5
	call	mbedtls_pk_info_from_type
	sw	a0,-24(s0)
	.loc 3 547 8 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L84
	.loc 3 548 16
	li	a5,-16384
	addi	a5,a5,896
	j	.L99
.L84:
	.loc 3 551 16
	lw	a1,-24(s0)
	lw	a0,-60(s0)
	call	mbedtls_pk_setup
	sw	a0,-20(s0)
	.loc 3 551 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L85
	.loc 3 552 16
	lw	a5,-20(s0)
	j	.L99
.L85:
	.loc 3 556 16
	lbu	a4,-41(s0)
	.loc 3 556 8
	li	a5,1
	bne	a4,a5,.L86
	.loc 3 557 15
	lw	a5,-60(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_rsa
	.loc 3 557 15 is_stmt 0 discriminator 1
	lw	a5,-52(s0)
	lw	a3,0(a5)
	.loc 3 557 81 is_stmt 1 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 557 79 discriminator 1
	lw	a4,-56(s0)
	sub	a5,a4,a5
	.loc 3 557 15 discriminator 1
	mv	a2,a5
	mv	a1,a3
	call	mbedtls_rsa_parse_pubkey
	sw	a0,-20(s0)
	.loc 3 558 12
	lw	a5,-20(s0)
	bne	a5,zero,.L87
	.loc 3 560 16
	lw	a5,-52(s0)
	lw	a4,-56(s0)
	sw	a4,0(a5)
	j	.L90
.L87:
	.loc 3 561 19
	lw	a4,-20(s0)
	li	a5,-95
	bge	a4,a5,.L89
	.loc 3 561 37 discriminator 1
	lw	a4,-20(s0)
	li	a5,-108
	blt	a4,a5,.L89
	.loc 3 564 19
	li	a3,564
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,1280
	call	mbedtls_error_add
	sw	a0,-20(s0)
	.loc 3 564 17
	j	.L90
.L89:
	.loc 3 566 17
	li	a5,-16384
	addi	a5,a5,1280
	sw	a5,-20(s0)
	j	.L90
.L86:
	.loc 3 571 16
	lbu	a4,-41(s0)
	.loc 3 571 8
	li	a5,3
	beq	a4,a5,.L91
	.loc 3 571 49 discriminator 1
	lbu	a4,-41(s0)
	.loc 3 571 39 discriminator 1
	li	a5,2
	bne	a4,a5,.L92
.L91:
	.loc 3 573 25
	lbu	a4,-42(s0)
	.loc 3 573 12
	li	a5,9
	beq	a4,a5,.L93
	.loc 3 573 69 discriminator 1
	lbu	a4,-42(s0)
	.loc 3 573 55 discriminator 1
	li	a5,13
	bne	a4,a5,.L94
.L93:
	.loc 3 574 19
	lbu	a4,-42(s0)
	addi	a5,s0,-40
	lw	a2,-60(s0)
	mv	a1,a4
	mv	a0,a5
	call	pk_use_ecparams_rfc8410
	sw	a0,-20(s0)
	.loc 3 574 17
	j	.L95
.L94:
	.loc 3 578 19
	addi	a5,s0,-40
	lw	a1,-60(s0)
	mv	a0,a5
	call	pk_use_ecparams
	sw	a0,-20(s0)
.L95:
	.loc 3 580 12
	lw	a5,-20(s0)
	bne	a5,zero,.L90
	.loc 3 581 19
	lw	a5,-52(s0)
	lw	a3,0(a5)
	.loc 3 581 69
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 581 67
	lw	a4,-56(s0)
	sub	a5,a4,a5
	.loc 3 581 19
	mv	a2,a5
	mv	a1,a3
	lw	a0,-60(s0)
	call	mbedtls_pk_ecc_set_pubkey
	sw	a0,-20(s0)
	.loc 3 582 16
	lw	a5,-52(s0)
	lw	a4,-56(s0)
	sw	a4,0(a5)
	.loc 3 580 12
	j	.L90
.L92:
	.loc 3 586 9
	li	a5,-16384
	addi	a5,a5,896
	sw	a5,-20(s0)
.L90:
	.loc 3 588 8
	lw	a5,-20(s0)
	bne	a5,zero,.L97
	.loc 3 588 21 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 588 18 discriminator 1
	lw	a4,-56(s0)
	beq	a4,a5,.L97
	.loc 3 589 15
	li	a3,589
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-16384
	addi	a0,a5,1280
	call	mbedtls_error_add
	sw	a0,-20(s0)
.L97:
	.loc 3 593 8
	lw	a5,-20(s0)
	beq	a5,zero,.L98
	.loc 3 594 9
	lw	a0,-60(s0)
	call	mbedtls_pk_free
.L98:
	.loc 3 597 12
	lw	a5,-20(s0)
.L99:
	.loc 3 598 1
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
.LFE88:
	.size	mbedtls_pk_parse_subpubkey, .-mbedtls_pk_parse_subpubkey
	.section	.text.pk_parse_key_sec1_der,"ax",@progbits
	.align	1
	.type	pk_parse_key_sec1_der, @function
pk_parse_key_sec1_der:
.LFB89:
	.loc 3 607 1
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
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	sw	a4,-84(s0)
	.loc 3 608 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 611 22
	sw	zero,-60(s0)
	sw	zero,-56(s0)
	sw	zero,-52(s0)
	.loc 3 612 20
	lw	a5,-72(s0)
	sw	a5,-64(s0)
	.loc 3 614 28
	lw	a4,-64(s0)
	.loc 3 614 20
	lw	a5,-76(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 627 16
	addi	a4,s0,-48
	addi	a5,s0,-64
	li	a3,48
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 627 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L101
	.loc 3 629 16
	li	a3,629
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L116
.L101:
	.loc 3 632 13
	lw	a4,-64(s0)
	lw	a5,-48(s0)
	.loc 3 632 9
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 634 16
	addi	a4,s0,-44
	addi	a5,s0,-64
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_int
	sw	a0,-20(s0)
	.loc 3 634 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L103
	.loc 3 635 16
	li	a3,635
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L116
.L103:
	.loc 3 638 17
	lw	a4,-44(s0)
	.loc 3 638 8
	li	a5,1
	beq	a4,a5,.L104
	.loc 3 639 16
	li	a5,-16384
	addi	a5,a5,640
	j	.L116
.L104:
	.loc 3 642 16
	addi	a4,s0,-48
	addi	a5,s0,-64
	li	a3,4
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 642 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L105
	.loc 3 643 16
	li	a3,643
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L116
.L105:
	.loc 3 648 7
	lw	a5,-64(s0)
	sw	a5,-32(s0)
	.loc 3 649 11
	lw	a5,-48(s0)
	sw	a5,-36(s0)
	.loc 3 651 7
	lw	a4,-64(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	sw	a5,-64(s0)
	.loc 3 653 17
	sw	zero,-24(s0)
	.loc 3 654 11
	lw	a5,-64(s0)
	.loc 3 654 8
	lw	a4,-28(s0)
	beq	a4,a5,.L106
	.loc 3 658 20
	addi	a4,s0,-48
	addi	a5,s0,-64
	li	a3,160
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 658 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L107
	.loc 3 661 24
	lw	a4,-64(s0)
	lw	a5,-48(s0)
	.loc 3 661 46
	add	a4,a4,a5
	.loc 3 661 24
	addi	a3,s0,-60
	addi	a5,s0,-64
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	pk_get_ecparams
	sw	a0,-20(s0)
	.loc 3 661 16 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L108
	.loc 3 662 24
	addi	a5,s0,-60
	lw	a1,-68(s0)
	mv	a0,a5
	call	pk_use_ecparams
	sw	a0,-20(s0)
	.loc 3 661 68 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L106
.L108:
	.loc 3 663 24
	lw	a5,-20(s0)
	j	.L116
.L107:
	.loc 3 665 19
	lw	a4,-20(s0)
	li	a5,-98
	beq	a4,a5,.L106
	.loc 3 666 20
	li	a3,666
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L116
.L106:
	.loc 3 673 11
	lw	a2,-36(s0)
	lw	a1,-32(s0)
	lw	a0,-68(s0)
	call	mbedtls_pk_ecc_set_key
	sw	a0,-20(s0)
	.loc 3 674 8
	lw	a5,-20(s0)
	beq	a5,zero,.L109
	.loc 3 675 16
	lw	a5,-20(s0)
	j	.L116
.L109:
	.loc 3 678 11
	lw	a5,-64(s0)
	.loc 3 678 8
	lw	a4,-28(s0)
	beq	a4,a5,.L110
	.loc 3 683 20
	addi	a4,s0,-48
	addi	a5,s0,-64
	li	a3,161
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 683 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L111
	.loc 3 686 22
	lw	a4,-64(s0)
	lw	a5,-48(s0)
	.loc 3 686 18
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 3 688 24
	addi	a4,s0,-48
	addi	a5,s0,-64
	mv	a2,a4
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_bitstring_null
	sw	a0,-20(s0)
	.loc 3 688 16 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L112
	.loc 3 689 24
	li	a3,689
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L116
.L112:
	.loc 3 692 19
	lw	a4,-64(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	.loc 3 692 16
	lw	a4,-40(s0)
	beq	a4,a5,.L113
	.loc 3 693 24
	li	a3,693
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L116
.L113:
	.loc 3 697 24
	lw	a3,-64(s0)
	.loc 3 697 72
	lw	a5,-64(s0)
	lw	a4,-40(s0)
	sub	a5,a4,a5
	.loc 3 697 24
	mv	a2,a5
	mv	a1,a3
	lw	a0,-68(s0)
	call	mbedtls_pk_ecc_set_pubkey
	sw	a0,-20(s0)
	.loc 3 697 16 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L114
	.loc 3 698 29
	li	a5,1
	sw	a5,-24(s0)
	j	.L110
.L114:
	.loc 3 704 20
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,384
	beq	a4,a5,.L110
	.loc 3 705 28
	li	a5,-16384
	addi	a5,a5,768
	j	.L116
.L111:
	.loc 3 708 19
	lw	a4,-20(s0)
	li	a5,-98
	beq	a4,a5,.L110
	.loc 3 709 20
	li	a3,709
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L116
.L110:
	.loc 3 713 8
	lw	a5,-24(s0)
	bne	a5,zero,.L115
	.loc 3 714 20
	lw	a4,-84(s0)
	lw	a3,-80(s0)
	lw	a2,-36(s0)
	lw	a1,-32(s0)
	lw	a0,-68(s0)
	call	mbedtls_pk_ecc_set_pubkey_from_prv
	sw	a0,-20(s0)
	.loc 3 714 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L115
	.loc 3 715 20
	lw	a5,-20(s0)
	j	.L116
.L115:
	.loc 3 719 12
	li	a5,0
.L116:
	.loc 3 720 1
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
.LFE89:
	.size	pk_parse_key_sec1_der, .-pk_parse_key_sec1_der
	.section	.text.pk_parse_key_pkcs8_unencrypted_der,"ax",@progbits
	.align	1
	.type	pk_parse_key_pkcs8_unencrypted_der, @function
pk_parse_key_pkcs8_unencrypted_der:
.LFB90:
	.loc 3 746 1
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
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	sw	a4,-84(s0)
	.loc 3 750 20
	lw	a5,-72(s0)
	sw	a5,-52(s0)
	.loc 3 751 28
	lw	a4,-52(s0)
	.loc 3 751 20
	lw	a5,-76(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 752 23
	sb	zero,-53(s0)
	.loc 3 753 26
	sb	zero,-54(s0)
	.loc 3 777 16
	addi	a4,s0,-36
	addi	a5,s0,-52
	li	a3,48
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 777 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L118
	.loc 3 779 16
	li	a3,779
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L138
.L118:
	.loc 3 782 13
	lw	a4,-52(s0)
	lw	a5,-36(s0)
	.loc 3 782 9
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 784 16
	addi	a4,s0,-32
	addi	a5,s0,-52
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_int
	sw	a0,-20(s0)
	.loc 3 784 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L120
	.loc 3 785 16
	li	a3,785
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L138
.L120:
	.loc 3 788 17
	lw	a5,-32(s0)
	.loc 3 788 8
	beq	a5,zero,.L121
	.loc 3 789 16
	li	a3,789
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,640
	call	mbedtls_error_add
	mv	a5,a0
	j	.L138
.L121:
	.loc 3 792 16
	addi	a4,s0,-54
	addi	a3,s0,-48
	addi	a2,s0,-53
	addi	a5,s0,-52
	lw	a1,-24(s0)
	mv	a0,a5
	call	pk_get_pk_alg
	sw	a0,-20(s0)
	.loc 3 792 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L122
	.loc 3 793 16
	lw	a5,-20(s0)
	j	.L138
.L122:
	.loc 3 796 16
	addi	a4,s0,-36
	addi	a5,s0,-52
	li	a3,4
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 796 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L123
	.loc 3 797 16
	li	a3,797
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L138
.L123:
	.loc 3 800 13
	lw	a5,-36(s0)
	.loc 3 800 8
	bne	a5,zero,.L124
	.loc 3 801 16
	li	a3,801
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-96
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L138
.L124:
	.loc 3 805 20
	lbu	a5,-53(s0)
	mv	a0,a5
	call	mbedtls_pk_info_from_type
	sw	a0,-28(s0)
	.loc 3 805 8 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L125
	.loc 3 806 16
	li	a5,-16384
	addi	a5,a5,896
	j	.L138
.L125:
	.loc 3 809 16
	lw	a1,-28(s0)
	lw	a0,-68(s0)
	call	mbedtls_pk_setup
	sw	a0,-20(s0)
	.loc 3 809 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L126
	.loc 3 810 16
	lw	a5,-20(s0)
	j	.L138
.L126:
	.loc 3 814 16
	lbu	a4,-53(s0)
	.loc 3 814 8
	li	a5,1
	bne	a4,a5,.L127
	.loc 3 815 20
	lw	a5,-68(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_rsa
	mv	a3,a0
	.loc 3 815 20 is_stmt 0 discriminator 1
	lw	a5,-52(s0)
	lw	a4,-36(s0)
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	mbedtls_rsa_parse_key
	sw	a0,-20(s0)
	.loc 3 815 12 is_stmt 1 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L128
	.loc 3 816 13
	lw	a0,-68(s0)
	call	mbedtls_pk_free
	.loc 3 817 20
	lw	a5,-20(s0)
	j	.L138
.L127:
	.loc 3 822 16
	lbu	a4,-53(s0)
	.loc 3 822 8
	li	a5,2
	beq	a4,a5,.L129
	.loc 3 822 46 discriminator 1
	lbu	a4,-53(s0)
	.loc 3 822 36 discriminator 1
	li	a5,3
	bne	a4,a5,.L130
.L129:
	.loc 3 824 25
	lbu	a4,-54(s0)
	.loc 3 824 12
	li	a5,9
	beq	a4,a5,.L131
	.loc 3 824 69 discriminator 1
	lbu	a4,-54(s0)
	.loc 3 824 55 discriminator 1
	li	a5,13
	bne	a4,a5,.L132
.L131:
	.loc 3 826 22
	lbu	a4,-54(s0)
	addi	a5,s0,-48
	lw	a2,-68(s0)
	mv	a1,a4
	mv	a0,a5
	call	pk_use_ecparams_rfc8410
	sw	a0,-20(s0)
	.loc 3 825 16
	lw	a5,-20(s0)
	bne	a5,zero,.L133
	.loc 3 828 22
	lw	a1,-52(s0)
	lw	a2,-36(s0)
	lw	a5,-84(s0)
	lw	a4,-80(s0)
	lw	a3,-24(s0)
	lw	a0,-68(s0)
	call	pk_parse_key_rfc8410_der
	sw	a0,-20(s0)
	.loc 3 826 76
	lw	a5,-20(s0)
	beq	a5,zero,.L139
.L133:
	.loc 3 830 17
	lw	a0,-68(s0)
	call	mbedtls_pk_free
	.loc 3 831 24
	lw	a5,-20(s0)
	j	.L138
.L132:
	.loc 3 836 24
	addi	a5,s0,-48
	lw	a1,-68(s0)
	mv	a0,a5
	call	pk_use_ecparams
	sw	a0,-20(s0)
	.loc 3 836 16 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L136
	.loc 3 837 24
	lw	a5,-52(s0)
	lw	a2,-36(s0)
	lw	a4,-84(s0)
	lw	a3,-80(s0)
	mv	a1,a5
	lw	a0,-68(s0)
	call	pk_parse_key_sec1_der
	sw	a0,-20(s0)
	.loc 3 836 59 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L140
.L136:
	.loc 3 838 17
	lw	a0,-68(s0)
	call	mbedtls_pk_free
	.loc 3 839 24
	lw	a5,-20(s0)
	j	.L138
.L139:
	.loc 3 825 16
	nop
	.loc 3 824 12
	j	.L140
.L130:
	.loc 3 844 12
	li	a5,-16384
	addi	a5,a5,896
	j	.L138
.L140:
	.loc 3 824 12
	nop
.L128:
	.loc 3 846 13
	lw	a4,-52(s0)
	lw	a5,-36(s0)
	.loc 3 846 9
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 847 21
	lw	a4,-72(s0)
	lw	a5,-76(s0)
	add	a5,a4,a5
	.loc 3 847 8
	lw	a4,-24(s0)
	beq	a4,a5,.L137
	.loc 3 848 16
	li	a3,848
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L138
.L137:
	.loc 3 852 12
	li	a5,0
.L138:
	.loc 3 853 1
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
.LFE90:
	.size	pk_parse_key_pkcs8_unencrypted_der, .-pk_parse_key_pkcs8_unencrypted_der
	.section	.rodata
	.align	2
.LC2:
	.base64	"KoZIhvcNAQUNAA=="
	.section	.text.mbedtls_pk_parse_key_pkcs8_encrypted_der,"ax",@progbits
	.align	1
	.type	mbedtls_pk_parse_key_pkcs8_encrypted_der, @function
mbedtls_pk_parse_key_pkcs8_encrypted_der:
.LFB91:
	.loc 3 870 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	sw	a4,-100(s0)
	sw	a5,-104(s0)
	sw	a6,-108(s0)
	.loc 3 871 14
	sw	zero,-20(s0)
	.loc 3 880 12
	sw	zero,-72(s0)
	.loc 3 882 7
	lw	a5,-88(s0)
	sw	a5,-40(s0)
	.loc 3 883 13
	lw	a4,-40(s0)
	.loc 3 883 9
	lw	a5,-92(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 885 8
	lw	a5,-100(s0)
	bne	a5,zero,.L142
	.loc 3 886 16
	li	a5,-16384
	addi	a5,a5,1024
	j	.L157
.L142:
	.loc 3 904 16
	addi	a4,s0,-36
	addi	a5,s0,-40
	li	a3,48
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-28(s0)
	.loc 3 904 8 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L144
	.loc 3 906 16
	li	a3,906
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-28(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L157
.L144:
	.loc 3 909 13
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	.loc 3 909 9
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 911 16
	addi	a3,s0,-64
	addi	a4,s0,-52
	addi	a5,s0,-40
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_alg
	sw	a0,-28(s0)
	.loc 3 911 8 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L145
	.loc 3 912 16
	li	a3,912
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-28(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L157
.L145:
	.loc 3 915 16
	addi	a4,s0,-36
	addi	a5,s0,-40
	li	a3,4
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-28(s0)
	.loc 3 915 8 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L146
	.loc 3 916 16
	li	a3,916
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-28(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L157
.L146:
	.loc 3 919 9
	lw	a5,-40(s0)
	sw	a5,-32(s0)
	.loc 3 925 9
	addi	a3,s0,-65
	addi	a4,s0,-66
	addi	a5,s0,-52
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_oid_get_pkcs12_pbe_alg
	mv	a5,a0
	.loc 3 925 8 discriminator 1
	bne	a5,zero,.L147
	.loc 3 926 20
	lbu	a2,-65(s0)
	lbu	a3,-66(s0)
	lw	a1,-40(s0)
	lw	a6,-36(s0)
	lw	a5,-36(s0)
	addi	a0,s0,-64
	addi	a4,s0,-72
	sw	a4,8(sp)
	sw	a5,4(sp)
	lw	a5,-32(s0)
	sw	a5,0(sp)
	mv	a7,a6
	mv	a6,a1
	lw	a5,-100(s0)
	lw	a4,-96(s0)
	li	a1,0
	call	mbedtls_pkcs12_pbe_ext
	sw	a0,-28(s0)
	.loc 3 926 12 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L148
	.loc 3 929 16
	lw	a4,-28(s0)
	li	a5,-8192
	addi	a5,a5,512
	bne	a4,a5,.L149
	.loc 3 930 24
	li	a5,-16384
	addi	a5,a5,1152
	j	.L157
.L149:
	.loc 3 933 20
	lw	a5,-28(s0)
	j	.L157
.L148:
	.loc 3 936 19
	li	a5,1
	sw	a5,-20(s0)
	j	.L150
.L147:
	.loc 3 940 96
	lw	a4,-48(s0)
	.loc 3 940 103
	li	a5,9
	bne	a4,a5,.L151
	.loc 3 940 184 discriminator 2
	lw	a5,-44(s0)
	.loc 3 940 106 discriminator 2
	lw	a4,-48(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	memcmp
	mv	a5,a0
	.loc 3 940 103 discriminator 3
	beq	a5,zero,.L152
.L151:
	.loc 3 940 103 is_stmt 0 discriminator 4
	li	a5,1
	.loc 3 940 103
	j	.L153
.L152:
	.loc 3 940 103 discriminator 5
	li	a5,0
.L153:
	.loc 3 940 8 is_stmt 1 discriminator 7
	bne	a5,zero,.L150
	.loc 3 941 20
	lw	a4,-40(s0)
	lw	a3,-36(s0)
	lw	a2,-36(s0)
	addi	a0,s0,-64
	addi	a5,s0,-72
	sw	a5,0(sp)
	mv	a7,a2
	lw	a6,-32(s0)
	mv	a5,a3
	lw	a3,-100(s0)
	lw	a2,-96(s0)
	li	a1,0
	call	mbedtls_pkcs5_pbes2_ext
	sw	a0,-28(s0)
	.loc 3 941 12 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L154
	.loc 3 943 16
	lw	a4,-28(s0)
	li	a5,-12288
	addi	a5,a5,512
	bne	a4,a5,.L155
	.loc 3 944 24
	li	a5,-16384
	addi	a5,a5,1152
	j	.L157
.L155:
	.loc 3 947 20
	lw	a5,-28(s0)
	j	.L157
.L154:
	.loc 3 950 19
	li	a5,1
	sw	a5,-20(s0)
.L150:
	.loc 3 957 8
	lw	a5,-20(s0)
	bne	a5,zero,.L156
	.loc 3 958 16
	li	a5,-16384
	addi	a5,a5,1664
	j	.L157
.L156:
	.loc 3 960 12
	lw	a5,-72(s0)
	lw	a4,-108(s0)
	lw	a3,-104(s0)
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-84(s0)
	call	pk_parse_key_pkcs8_unencrypted_der
	mv	a5,a0
.L157:
	.loc 3 961 1
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
.LFE91:
	.size	mbedtls_pk_parse_key_pkcs8_encrypted_der, .-mbedtls_pk_parse_key_pkcs8_encrypted_der
	.section	.text.mbedtls_pk_parse_key,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_parse_key
	.type	mbedtls_pk_parse_key, @function
mbedtls_pk_parse_key:
.LFB92:
	.loc 3 977 1
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
	.loc 3 978 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 985 8
	lw	a5,-44(s0)
	bne	a5,zero,.L159
	.loc 3 986 16
	li	a5,-16384
	addi	a5,a5,768
	j	.L160
.L159:
	.loc 3 1107 8
	lw	a5,-52(s0)
	beq	a5,zero,.L161
.LBB2:
	.loc 3 1110 25
	lw	a1,-44(s0)
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-24(s0)
	.loc 3 1110 12 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L162
	.loc 3 1111 20
	li	a5,-16384
	addi	a5,a5,128
	j	.L160
.L162:
	.loc 3 1114 9
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	memcpy
	.loc 3 1116 15
	lw	a6,-60(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	mbedtls_pk_parse_key_pkcs8_encrypted_der
	sw	a0,-20(s0)
	.loc 3 1119 9
	lw	a1,-44(s0)
	lw	a0,-24(s0)
	call	mbedtls_zeroize_and_free
.L161:
.LBE2:
	.loc 3 1122 8
	lw	a5,-20(s0)
	bne	a5,zero,.L163
	.loc 3 1123 16
	li	a5,0
	j	.L160
.L163:
	.loc 3 1126 5
	lw	a0,-36(s0)
	call	mbedtls_pk_free
	.loc 3 1127 5
	lw	a0,-36(s0)
	call	mbedtls_pk_init
	.loc 3 1129 8
	lw	a4,-20(s0)
	li	a5,-16384
	addi	a5,a5,1152
	bne	a4,a5,.L164
	.loc 3 1130 16
	lw	a5,-20(s0)
	j	.L160
.L164:
	.loc 3 1134 11
	lw	a4,-60(s0)
	lw	a3,-56(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	pk_parse_key_pkcs8_unencrypted_der
	sw	a0,-20(s0)
	.loc 3 1135 8
	lw	a5,-20(s0)
	bne	a5,zero,.L165
	.loc 3 1136 16
	li	a5,0
	j	.L160
.L165:
	.loc 3 1139 5
	lw	a0,-36(s0)
	call	mbedtls_pk_free
	.loc 3 1140 5
	lw	a0,-36(s0)
	call	mbedtls_pk_init
	.loc 3 1144 15
	li	a0,1
	call	mbedtls_pk_info_from_type
	sw	a0,-28(s0)
	.loc 3 1145 9
	lw	a1,-28(s0)
	lw	a0,-36(s0)
	call	mbedtls_pk_setup
	mv	a5,a0
	.loc 3 1145 8 discriminator 1
	bne	a5,zero,.L166
	.loc 3 1146 9
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_rsa
	mv	a5,a0
	.loc 3 1146 9 is_stmt 0 discriminator 1
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_rsa_parse_key
	mv	a5,a0
	.loc 3 1145 44 is_stmt 1 discriminator 2
	bne	a5,zero,.L166
	.loc 3 1147 16
	li	a5,0
	j	.L160
.L166:
	.loc 3 1150 5
	lw	a0,-36(s0)
	call	mbedtls_pk_free
	.loc 3 1151 5
	lw	a0,-36(s0)
	call	mbedtls_pk_init
	.loc 3 1155 15
	li	a0,2
	call	mbedtls_pk_info_from_type
	sw	a0,-28(s0)
	.loc 3 1156 9
	lw	a1,-28(s0)
	lw	a0,-36(s0)
	call	mbedtls_pk_setup
	mv	a5,a0
	.loc 3 1156 8 discriminator 1
	bne	a5,zero,.L167
	.loc 3 1157 9
	lw	a4,-60(s0)
	lw	a3,-56(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	pk_parse_key_sec1_der
	mv	a5,a0
	.loc 3 1156 44 discriminator 2
	bne	a5,zero,.L167
	.loc 3 1159 16
	li	a5,0
	j	.L160
.L167:
	.loc 3 1161 5
	lw	a0,-36(s0)
	call	mbedtls_pk_free
	.loc 3 1174 12
	li	a5,-16384
	addi	a5,a5,768
.L160:
	.loc 3 1175 1
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
	.size	mbedtls_pk_parse_key, .-mbedtls_pk_parse_key
	.section	.text.mbedtls_pk_parse_public_key,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_parse_public_key
	.type	mbedtls_pk_parse_public_key, @function
mbedtls_pk_parse_public_key:
.LFB93:
	.loc 3 1182 1
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
	.loc 3 1183 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 1193 8
	lw	a5,-44(s0)
	bne	a5,zero,.L169
	.loc 3 1194 16
	li	a5,-16384
	addi	a5,a5,768
	j	.L175
.L169:
	.loc 3 1259 20
	li	a0,1
	call	mbedtls_pk_info_from_type
	sw	a0,-24(s0)
	.loc 3 1259 8 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L171
	.loc 3 1260 16
	li	a5,-16384
	addi	a5,a5,896
	j	.L175
.L171:
	.loc 3 1263 16
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	mbedtls_pk_setup
	sw	a0,-20(s0)
	.loc 3 1263 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L172
	.loc 3 1264 16
	lw	a5,-20(s0)
	j	.L175
.L172:
	.loc 3 1267 7
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	.loc 3 1268 11
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_rsa
	mv	a4,a0
	.loc 3 1268 11 is_stmt 0 discriminator 1
	lw	a5,-28(s0)
	lw	a2,-44(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_rsa_parse_pubkey
	sw	a0,-20(s0)
	.loc 3 1269 8 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L173
	.loc 3 1270 16
	lw	a5,-20(s0)
	j	.L175
.L173:
	.loc 3 1272 5
	lw	a0,-36(s0)
	call	mbedtls_pk_free
	.loc 3 1273 8
	lw	a4,-20(s0)
	li	a5,-98
	beq	a4,a5,.L174
	.loc 3 1274 16
	lw	a5,-20(s0)
	j	.L175
.L174:
	.loc 3 1277 7
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	.loc 3 1279 11
	lw	a4,-28(s0)
	.loc 3 1279 44
	lw	a5,-44(s0)
	add	a4,a4,a5
	.loc 3 1279 11
	addi	a5,s0,-28
	lw	a2,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_pk_parse_subpubkey
	sw	a0,-20(s0)
	.loc 3 1281 12
	lw	a5,-20(s0)
.L175:
	.loc 3 1282 1
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
.LFE93:
	.size	mbedtls_pk_parse_public_key, .-mbedtls_pk_parse_public_key
	.text
.Letext0:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/rsa.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecp.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/cipher.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/common.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/pkcs5.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/pkcs12.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/oid.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/rsa_internal.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1560
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1e
	.4byte	.LASF243
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
	.uleb128 0xe
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
	.uleb128 0x1f
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0xc
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x20
	.byte	0x4
	.uleb128 0x18
	.4byte	0xa1
	.uleb128 0x6
	.4byte	0x32
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0xe
	.4byte	0xad
	.uleb128 0x6
	.4byte	0xb4
	.uleb128 0x6
	.4byte	0xc8
	.uleb128 0x18
	.4byte	0xbe
	.uleb128 0x21
	.uleb128 0x15
	.4byte	0x68
	.4byte	0xe2
	.uleb128 0x2
	.4byte	0xa1
	.uleb128 0x2
	.4byte	0xa8
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x12
	.byte	0x7
	.4byte	0x32
	.byte	0x6
	.byte	0x2f
	.4byte	0x137
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x6
	.byte	0x3c
	.byte	0x3
	.4byte	0xe2
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x7
	.byte	0xa9
	.byte	0x11
	.4byte	0x89
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x7
	.byte	0xaa
	.byte	0x12
	.4byte	0x95
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x8
	.byte	0x7
	.byte	0xd0
	.4byte	0x189
	.uleb128 0x3
	.string	"p"
	.byte	0x7
	.byte	0xd5
	.byte	0x17
	.4byte	0x189
	.byte	0
	.uleb128 0x3
	.string	"s"
	.byte	0x7
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x3
	.string	"n"
	.byte	0x7
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	0x14f
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x7
	.byte	0xf0
	.byte	0x1
	.4byte	0x15b
	.uleb128 0xe
	.4byte	0x18e
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x78
	.byte	0x8
	.byte	0x55
	.4byte	0x277
	.uleb128 0x3
	.string	"ver"
	.byte	0x8
	.byte	0x56
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x3
	.string	"len"
	.byte	0x8
	.byte	0x5a
	.byte	0xc
	.4byte	0x76
	.byte	0x4
	.uleb128 0x3
	.string	"N"
	.byte	0x8
	.byte	0x5c
	.byte	0x11
	.4byte	0x18e
	.byte	0x8
	.uleb128 0x3
	.string	"E"
	.byte	0x8
	.byte	0x5d
	.byte	0x11
	.4byte	0x18e
	.byte	0x10
	.uleb128 0x3
	.string	"D"
	.byte	0x8
	.byte	0x5f
	.byte	0x11
	.4byte	0x18e
	.byte	0x18
	.uleb128 0x3
	.string	"P"
	.byte	0x8
	.byte	0x60
	.byte	0x11
	.4byte	0x18e
	.byte	0x20
	.uleb128 0x3
	.string	"Q"
	.byte	0x8
	.byte	0x61
	.byte	0x11
	.4byte	0x18e
	.byte	0x28
	.uleb128 0x3
	.string	"DP"
	.byte	0x8
	.byte	0x63
	.byte	0x11
	.4byte	0x18e
	.byte	0x30
	.uleb128 0x3
	.string	"DQ"
	.byte	0x8
	.byte	0x64
	.byte	0x11
	.4byte	0x18e
	.byte	0x38
	.uleb128 0x3
	.string	"QP"
	.byte	0x8
	.byte	0x65
	.byte	0x11
	.4byte	0x18e
	.byte	0x40
	.uleb128 0x3
	.string	"RN"
	.byte	0x8
	.byte	0x67
	.byte	0x11
	.4byte	0x18e
	.byte	0x48
	.uleb128 0x3
	.string	"RP"
	.byte	0x8
	.byte	0x69
	.byte	0x11
	.4byte	0x18e
	.byte	0x50
	.uleb128 0x3
	.string	"RQ"
	.byte	0x8
	.byte	0x6a
	.byte	0x11
	.4byte	0x18e
	.byte	0x58
	.uleb128 0x3
	.string	"Vi"
	.byte	0x8
	.byte	0x6c
	.byte	0x11
	.4byte	0x18e
	.byte	0x60
	.uleb128 0x3
	.string	"Vf"
	.byte	0x8
	.byte	0x6d
	.byte	0x11
	.4byte	0x18e
	.byte	0x68
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x8
	.byte	0x6f
	.byte	0x9
	.4byte	0x68
	.byte	0x70
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x8
	.byte	0x72
	.byte	0x9
	.4byte	0x68
	.byte	0x74
	.byte	0
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x8
	.byte	0x7b
	.byte	0x1
	.4byte	0x19f
	.uleb128 0x12
	.byte	0x7
	.4byte	0x32
	.byte	0x9
	.byte	0x66
	.4byte	0x2e4
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x9
	.byte	0x75
	.byte	0x3
	.4byte	0x283
	.uleb128 0xe
	.4byte	0x2e4
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x18
	.byte	0x9
	.byte	0x9e
	.4byte	0x323
	.uleb128 0x3
	.string	"X"
	.byte	0x9
	.byte	0x9f
	.byte	0x11
	.4byte	0x18e
	.byte	0
	.uleb128 0x3
	.string	"Y"
	.byte	0x9
	.byte	0xa0
	.byte	0x11
	.4byte	0x18e
	.byte	0x8
	.uleb128 0x3
	.string	"Z"
	.byte	0x9
	.byte	0xa1
	.byte	0x11
	.4byte	0x18e
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x9
	.byte	0xa3
	.byte	0x1
	.4byte	0x2f5
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x60
	.byte	0x9
	.byte	0xe9
	.4byte	0x3f1
	.uleb128 0x3
	.string	"id"
	.byte	0x9
	.byte	0xea
	.byte	0x1a
	.4byte	0x2e4
	.byte	0
	.uleb128 0x3
	.string	"P"
	.byte	0x9
	.byte	0xeb
	.byte	0x11
	.4byte	0x18e
	.byte	0x4
	.uleb128 0x3
	.string	"A"
	.byte	0x9
	.byte	0xec
	.byte	0x11
	.4byte	0x18e
	.byte	0xc
	.uleb128 0x3
	.string	"B"
	.byte	0x9
	.byte	0xf1
	.byte	0x11
	.4byte	0x18e
	.byte	0x14
	.uleb128 0x3
	.string	"G"
	.byte	0x9
	.byte	0xf3
	.byte	0x17
	.4byte	0x323
	.byte	0x1c
	.uleb128 0x3
	.string	"N"
	.byte	0x9
	.byte	0xf4
	.byte	0x11
	.4byte	0x18e
	.byte	0x34
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x9
	.byte	0xf5
	.byte	0xc
	.4byte	0x76
	.byte	0x3c
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x9
	.byte	0xf6
	.byte	0xc
	.4byte	0x76
	.byte	0x40
	.uleb128 0x3
	.string	"h"
	.byte	0x9
	.byte	0xfb
	.byte	0x12
	.4byte	0x6f
	.byte	0x44
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x9
	.byte	0xfc
	.byte	0xa
	.4byte	0x405
	.byte	0x48
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x9
	.byte	0xfe
	.byte	0xa
	.4byte	0x423
	.byte	0x4c
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x9
	.byte	0xff
	.byte	0xa
	.4byte	0x423
	.byte	0x50
	.uleb128 0x19
	.4byte	.LASF57
	.2byte	0x100
	.byte	0xb
	.4byte	0xa1
	.byte	0x54
	.uleb128 0x22
	.string	"T"
	.byte	0x9
	.2byte	0x101
	.byte	0x18
	.4byte	0x41e
	.byte	0x58
	.uleb128 0x19
	.4byte	.LASF58
	.2byte	0x102
	.byte	0xc
	.4byte	0x76
	.byte	0x5c
	.byte	0
	.uleb128 0x15
	.4byte	0x68
	.4byte	0x400
	.uleb128 0x2
	.4byte	0x400
	.byte	0
	.uleb128 0x6
	.4byte	0x18e
	.uleb128 0x6
	.4byte	0x3f1
	.uleb128 0x15
	.4byte	0x68
	.4byte	0x41e
	.uleb128 0x2
	.4byte	0x41e
	.uleb128 0x2
	.4byte	0xa1
	.byte	0
	.uleb128 0x6
	.4byte	0x323
	.uleb128 0x6
	.4byte	0x40a
	.uleb128 0x1a
	.4byte	.LASF51
	.byte	0x9
	.2byte	0x104
	.byte	0x1
	.4byte	0x32f
	.uleb128 0xe
	.4byte	0x428
	.uleb128 0x12
	.byte	0x7
	.4byte	0x32
	.byte	0xa
	.byte	0x54
	.4byte	0x63f
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x35
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x36
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0x37
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x39
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x3b
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x49
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x4b
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x4d
	.uleb128 0x1
	.4byte	.LASF137
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0x4f
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0x51
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0x52
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0x53
	.byte	0
	.uleb128 0xa
	.4byte	.LASF143
	.byte	0xa
	.byte	0xa9
	.byte	0x3
	.4byte	0x43a
	.uleb128 0x12
	.byte	0x5
	.4byte	0x2b
	.byte	0xa
	.byte	0xc7
	.4byte	0x66a
	.uleb128 0x23
	.4byte	.LASF144
	.sleb128 -1
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x76
	.uleb128 0x12
	.byte	0x7
	.4byte	0x32
	.byte	0x1
	.byte	0x49
	.4byte	0x6ac
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF155
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.4byte	0x66f
	.uleb128 0xa
	.4byte	.LASF156
	.byte	0x1
	.byte	0xd5
	.byte	0x22
	.4byte	0x6c9
	.uleb128 0xe
	.4byte	0x6b8
	.uleb128 0x24
	.4byte	.LASF156
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0x8
	.byte	0x1
	.byte	0xdc
	.4byte	0x6f5
	.uleb128 0xf
	.4byte	.LASF158
	.byte	0x1
	.byte	0xdd
	.byte	0x1e
	.4byte	0x6f5
	.byte	0
	.uleb128 0xf
	.4byte	.LASF159
	.byte	0x1
	.byte	0xde
	.byte	0xb
	.4byte	0xa1
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0x6c4
	.uleb128 0x1a
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x109
	.byte	0x3
	.4byte	0x6ce
	.uleb128 0xe
	.4byte	0x6fa
	.uleb128 0x10
	.4byte	.LASF160
	.byte	0xc
	.byte	0xb
	.byte	0x8d
	.4byte	0x73e
	.uleb128 0x3
	.string	"tag"
	.byte	0xb
	.byte	0x8e
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x3
	.string	"len"
	.byte	0xb
	.byte	0x8f
	.byte	0xc
	.4byte	0x76
	.byte	0x4
	.uleb128 0x3
	.string	"p"
	.byte	0xb
	.byte	0x90
	.byte	0x14
	.4byte	0xa8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF160
	.byte	0xb
	.byte	0x92
	.byte	0x1
	.4byte	0x70c
	.uleb128 0xe
	.4byte	0x73e
	.uleb128 0x11
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x136
	.4byte	0x761
	.uleb128 0x2
	.4byte	0x761
	.byte	0
	.uleb128 0x6
	.4byte	0x6fa
	.uleb128 0x25
	.4byte	.LASF162
	.byte	0xc
	.byte	0x79
	.byte	0x6
	.4byte	0x77d
	.uleb128 0x2
	.4byte	0xa1
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0xd
	.byte	0x1f
	.byte	0x8
	.4byte	0xa1
	.4byte	0x79d
	.uleb128 0x2
	.4byte	0xa3
	.uleb128 0x2
	.4byte	0xc3
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xb
	.4byte	.LASF164
	.byte	0xe
	.byte	0x5a
	.byte	0x7
	.4byte	0xa1
	.4byte	0x7b8
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xb
	.4byte	.LASF165
	.byte	0xf
	.byte	0x7d
	.byte	0x5
	.4byte	0x68
	.4byte	0x7f6
	.uleb128 0x2
	.4byte	0x7f6
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x7fb
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0x7fb
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0xa8
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0x66a
	.byte	0
	.uleb128 0x6
	.4byte	0x74a
	.uleb128 0x6
	.4byte	0x39
	.uleb128 0xe
	.4byte	0x7fb
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0x10
	.byte	0x8b
	.byte	0x5
	.4byte	0x68
	.4byte	0x84d
	.uleb128 0x2
	.4byte	0x84d
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x63f
	.uleb128 0x2
	.4byte	0x137
	.uleb128 0x2
	.4byte	0x7fb
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0x7fb
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0xa8
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0x66a
	.byte	0
	.uleb128 0x6
	.4byte	0x73e
	.uleb128 0x9
	.4byte	.LASF167
	.byte	0x11
	.2byte	0x2ce
	.byte	0x5
	.4byte	0x68
	.4byte	0x873
	.uleb128 0x2
	.4byte	0x7f6
	.uleb128 0x2
	.4byte	0x873
	.uleb128 0x2
	.4byte	0x878
	.byte	0
	.uleb128 0x6
	.4byte	0x137
	.uleb128 0x6
	.4byte	0x63f
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0x12
	.byte	0x22
	.byte	0x5
	.4byte	0x68
	.4byte	0x89d
	.uleb128 0x2
	.4byte	0x89d
	.uleb128 0x2
	.4byte	0x7fb
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x6
	.4byte	0x277
	.uleb128 0x9
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x400
	.byte	0x13
	.4byte	0x6ac
	.4byte	0x8b9
	.uleb128 0x2
	.4byte	0x8b9
	.byte	0
	.uleb128 0x6
	.4byte	0x707
	.uleb128 0x11
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x143
	.4byte	0x8d0
	.uleb128 0x2
	.4byte	0x761
	.byte	0
	.uleb128 0xb
	.4byte	.LASF171
	.byte	0x13
	.byte	0xa2
	.byte	0x5
	.4byte	0x68
	.4byte	0x8f0
	.uleb128 0x2
	.4byte	0x761
	.uleb128 0x2
	.4byte	0x7fb
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xb
	.4byte	.LASF172
	.byte	0x12
	.byte	0x32
	.byte	0x5
	.4byte	0x68
	.4byte	0x910
	.uleb128 0x2
	.4byte	0x89d
	.uleb128 0x2
	.4byte	0x7fb
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x166
	.byte	0x5
	.4byte	0x68
	.4byte	0x92c
	.uleb128 0x2
	.4byte	0x761
	.uleb128 0x2
	.4byte	0x6f5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x12e
	.byte	0x1a
	.4byte	0x6f5
	.4byte	0x943
	.uleb128 0x2
	.4byte	0x6ac
	.byte	0
	.uleb128 0x9
	.4byte	.LASF175
	.byte	0xb
	.2byte	0x15e
	.byte	0x5
	.4byte	0x68
	.4byte	0x964
	.uleb128 0x2
	.4byte	0x964
	.uleb128 0x2
	.4byte	0x7fb
	.uleb128 0x2
	.4byte	0x66a
	.byte	0
	.uleb128 0x6
	.4byte	0xa8
	.uleb128 0x9
	.4byte	.LASF176
	.byte	0x11
	.2byte	0x250
	.byte	0x5
	.4byte	0x68
	.4byte	0x985
	.uleb128 0x2
	.4byte	0x7f6
	.uleb128 0x2
	.4byte	0x985
	.byte	0
	.uleb128 0x6
	.4byte	0x2e4
	.uleb128 0x9
	.4byte	.LASF177
	.byte	0x11
	.2byte	0x222
	.byte	0x5
	.4byte	0x68
	.4byte	0x9a6
	.uleb128 0x2
	.4byte	0x7f6
	.uleb128 0x2
	.4byte	0x9a6
	.byte	0
	.uleb128 0x6
	.4byte	0x6ac
	.uleb128 0x9
	.4byte	.LASF178
	.byte	0xb
	.2byte	0x232
	.byte	0x5
	.4byte	0x68
	.4byte	0x9d1
	.uleb128 0x2
	.4byte	0x964
	.uleb128 0x2
	.4byte	0x7fb
	.uleb128 0x2
	.4byte	0x84d
	.uleb128 0x2
	.4byte	0x84d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0xd
	.byte	0x21
	.byte	0x8
	.4byte	0xa1
	.4byte	0x9f1
	.uleb128 0x2
	.4byte	0xa1
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xb
	.4byte	.LASF180
	.byte	0x13
	.byte	0xb7
	.byte	0x5
	.4byte	0x68
	.4byte	0xa1b
	.uleb128 0x2
	.4byte	0x761
	.uleb128 0x2
	.4byte	0x7fb
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0xa1b
	.uleb128 0x2
	.4byte	0xa1
	.byte	0
	.uleb128 0x6
	.4byte	0xc9
	.uleb128 0xb
	.4byte	.LASF181
	.byte	0x13
	.byte	0x93
	.byte	0x5
	.4byte	0x68
	.4byte	0xa40
	.uleb128 0x2
	.4byte	0x761
	.uleb128 0x2
	.4byte	0xa8
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xb
	.4byte	.LASF182
	.byte	0x13
	.byte	0x8a
	.byte	0x5
	.4byte	0x68
	.4byte	0xa5b
	.uleb128 0x2
	.4byte	0x761
	.uleb128 0x2
	.4byte	0x2e4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF183
	.byte	0x11
	.2byte	0x239
	.byte	0x5
	.4byte	0x68
	.4byte	0xa77
	.uleb128 0x2
	.4byte	0x7f6
	.uleb128 0x2
	.4byte	0x985
	.byte	0
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0x9
	.2byte	0x276
	.4byte	0xa89
	.uleb128 0x2
	.4byte	0x41e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF185
	.byte	0x7
	.2byte	0x103
	.4byte	0xa9b
	.uleb128 0x2
	.4byte	0x400
	.byte	0
	.uleb128 0x9
	.4byte	.LASF186
	.byte	0x7
	.2byte	0x18d
	.byte	0x5
	.4byte	0x68
	.4byte	0xab7
	.uleb128 0x2
	.4byte	0xab7
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x6
	.4byte	0x19a
	.uleb128 0x9
	.4byte	.LASF187
	.byte	0x7
	.2byte	0x28d
	.byte	0x5
	.4byte	0x68
	.4byte	0xad8
	.uleb128 0x2
	.4byte	0xab7
	.uleb128 0x2
	.4byte	0xab7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF188
	.byte	0x9
	.2byte	0x369
	.byte	0x5
	.4byte	0x68
	.4byte	0xaf4
	.uleb128 0x2
	.4byte	0xaf4
	.uleb128 0x2
	.4byte	0x2e4
	.byte	0
	.uleb128 0x6
	.4byte	0x428
	.uleb128 0x11
	.4byte	.LASF189
	.byte	0x9
	.2byte	0x27f
	.4byte	0xb0b
	.uleb128 0x2
	.4byte	0xaf4
	.byte	0
	.uleb128 0x26
	.4byte	.LASF244
	.byte	0x9
	.2byte	0x235
	.byte	0x1d
	.4byte	0xb18
	.uleb128 0x6
	.4byte	0x2f0
	.uleb128 0x11
	.4byte	.LASF190
	.byte	0x9
	.2byte	0x268
	.4byte	0xb2f
	.uleb128 0x2
	.4byte	0xaf4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF191
	.byte	0x7
	.2byte	0x181
	.byte	0x5
	.4byte	0x68
	.4byte	0xb4b
	.uleb128 0x2
	.4byte	0x400
	.uleb128 0x2
	.4byte	0x143
	.byte	0
	.uleb128 0x9
	.4byte	.LASF192
	.byte	0x7
	.2byte	0x1c9
	.byte	0x8
	.4byte	0x76
	.4byte	0xb62
	.uleb128 0x2
	.4byte	0xab7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF193
	.byte	0x9
	.2byte	0x323
	.byte	0x5
	.4byte	0x68
	.4byte	0xb88
	.uleb128 0x2
	.4byte	0xb88
	.uleb128 0x2
	.4byte	0x41e
	.uleb128 0x2
	.4byte	0x7fb
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x6
	.4byte	0x435
	.uleb128 0x9
	.4byte	.LASF194
	.byte	0x7
	.2byte	0x227
	.byte	0x5
	.4byte	0x68
	.4byte	0xbae
	.uleb128 0x2
	.4byte	0x400
	.uleb128 0x2
	.4byte	0x7fb
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.4byte	.LASF195
	.byte	0x7
	.2byte	0x1ba
	.byte	0x8
	.4byte	0x76
	.4byte	0xbc5
	.uleb128 0x2
	.4byte	0xab7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF196
	.byte	0xb
	.2byte	0x21d
	.byte	0x5
	.4byte	0x68
	.4byte	0xbe6
	.uleb128 0x2
	.4byte	0x964
	.uleb128 0x2
	.4byte	0x7fb
	.uleb128 0x2
	.4byte	0x400
	.byte	0
	.uleb128 0xb
	.4byte	.LASF197
	.byte	0xd
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0xc06
	.uleb128 0x2
	.4byte	0xbe
	.uleb128 0x2
	.4byte	0xbe
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xb
	.4byte	.LASF198
	.byte	0xb
	.byte	0xf5
	.byte	0x5
	.4byte	0x68
	.4byte	0xc2b
	.uleb128 0x2
	.4byte	0x964
	.uleb128 0x2
	.4byte	0x7fb
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x68
	.byte	0
	.uleb128 0x9
	.4byte	.LASF199
	.byte	0xb
	.2byte	0x11f
	.byte	0x5
	.4byte	0x68
	.4byte	0xc4c
	.uleb128 0x2
	.4byte	0x964
	.uleb128 0x2
	.4byte	0x7fb
	.uleb128 0x2
	.4byte	0xc4c
	.byte	0
	.uleb128 0x6
	.4byte	0x68
	.uleb128 0x16
	.4byte	.LASF201
	.2byte	0x49c
	.4byte	0x68
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc5
	.uleb128 0x7
	.string	"ctx"
	.byte	0x3
	.2byte	0x49c
	.byte	0x35
	.4byte	0x761
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"key"
	.byte	0x3
	.2byte	0x49d
	.byte	0x36
	.4byte	0x7fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF200
	.2byte	0x49d
	.byte	0x42
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.string	"ret"
	.2byte	0x49f
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"p"
	.2byte	0x4a0
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF158
	.2byte	0x4a2
	.byte	0x1e
	.4byte	0x6f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.4byte	.LASF202
	.2byte	0x3cd
	.4byte	0x68
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd81
	.uleb128 0x7
	.string	"pk"
	.byte	0x3
	.2byte	0x3cd
	.byte	0x2e
	.4byte	0x761
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"key"
	.byte	0x3
	.2byte	0x3ce
	.byte	0x2f
	.4byte	0x7fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF200
	.2byte	0x3ce
	.byte	0x3b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"pwd"
	.byte	0x3
	.2byte	0x3cf
	.byte	0x2f
	.4byte	0x7fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LASF203
	.2byte	0x3cf
	.byte	0x3b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LASF204
	.2byte	0x3d0
	.byte	0x20
	.4byte	0xa1b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.4byte	.LASF205
	.2byte	0x3d0
	.byte	0x4f
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.string	"ret"
	.2byte	0x3d2
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF158
	.2byte	0x3d3
	.byte	0x1e
	.4byte	0x6f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x8
	.4byte	.LASF206
	.2byte	0x454
	.byte	0x18
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF213
	.2byte	0x361
	.4byte	0x68
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb3
	.uleb128 0x7
	.string	"pk"
	.byte	0x3
	.2byte	0x362
	.byte	0x19
	.4byte	0x761
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x7
	.string	"key"
	.byte	0x3
	.2byte	0x363
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x5
	.4byte	.LASF200
	.2byte	0x363
	.byte	0x20
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x7
	.string	"pwd"
	.byte	0x3
	.2byte	0x364
	.byte	0x1a
	.4byte	0x7fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x5
	.4byte	.LASF203
	.2byte	0x364
	.byte	0x26
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x5
	.4byte	.LASF204
	.2byte	0x365
	.byte	0xb
	.4byte	0xa1b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x5
	.4byte	.LASF205
	.2byte	0x365
	.byte	0x3a
	.4byte	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x4
	.string	"ret"
	.2byte	0x367
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF207
	.2byte	0x367
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"len"
	.2byte	0x368
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"buf"
	.2byte	0x369
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.string	"p"
	.2byte	0x36a
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.string	"end"
	.2byte	0x36a
	.byte	0x18
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF208
	.2byte	0x36b
	.byte	0x16
	.4byte	0x73e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF209
	.2byte	0x36b
	.byte	0x23
	.4byte	0x73e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.4byte	.LASF210
	.2byte	0x36d
	.byte	0x1b
	.4byte	0x63f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x8
	.4byte	.LASF211
	.2byte	0x36e
	.byte	0x17
	.4byte	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0x8
	.4byte	.LASF212
	.2byte	0x370
	.byte	0xc
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xd
	.4byte	.LASF214
	.2byte	0x2e6
	.4byte	0x68
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa3
	.uleb128 0x7
	.string	"pk"
	.byte	0x3
	.2byte	0x2e7
	.byte	0x19
	.4byte	0x761
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x7
	.string	"key"
	.byte	0x3
	.2byte	0x2e8
	.byte	0x1a
	.4byte	0x7fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.4byte	.LASF200
	.2byte	0x2e8
	.byte	0x26
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x5
	.4byte	.LASF204
	.2byte	0x2e9
	.byte	0xb
	.4byte	0xa1b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.4byte	.LASF205
	.2byte	0x2e9
	.byte	0x3a
	.4byte	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x4
	.string	"ret"
	.2byte	0x2eb
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF215
	.2byte	0x2eb
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.string	"len"
	.2byte	0x2ec
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF216
	.2byte	0x2ed
	.byte	0x16
	.4byte	0x73e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.string	"p"
	.2byte	0x2ee
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.string	"end"
	.2byte	0x2ef
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF217
	.2byte	0x2f0
	.byte	0x17
	.4byte	0x6ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x8
	.4byte	.LASF218
	.2byte	0x2f1
	.byte	0x1a
	.4byte	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x8
	.4byte	.LASF158
	.2byte	0x2f2
	.byte	0x1e
	.4byte	0x6f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xd
	.4byte	.LASF219
	.2byte	0x25c
	.4byte	0x68
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10a0
	.uleb128 0x7
	.string	"pk"
	.byte	0x3
	.2byte	0x25c
	.byte	0x36
	.4byte	0x761
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x7
	.string	"key"
	.byte	0x3
	.2byte	0x25d
	.byte	0x37
	.4byte	0x7fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.4byte	.LASF200
	.2byte	0x25d
	.byte	0x43
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x5
	.4byte	.LASF204
	.2byte	0x25e
	.byte	0x28
	.4byte	0xa1b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.4byte	.LASF205
	.2byte	0x25e
	.byte	0x57
	.4byte	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x4
	.string	"ret"
	.2byte	0x260
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF215
	.2byte	0x261
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF220
	.2byte	0x261
	.byte	0x12
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.string	"len"
	.2byte	0x262
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.4byte	.LASF221
	.2byte	0x262
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF216
	.2byte	0x263
	.byte	0x16
	.4byte	0x73e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.string	"p"
	.2byte	0x264
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.string	"d"
	.2byte	0x265
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.string	"end"
	.2byte	0x266
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF222
	.2byte	0x267
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x16
	.4byte	.LASF223
	.2byte	0x205
	.4byte	0x68
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1141
	.uleb128 0x7
	.string	"p"
	.byte	0x3
	.2byte	0x205
	.byte	0x30
	.4byte	0x964
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"end"
	.byte	0x3
	.2byte	0x205
	.byte	0x48
	.4byte	0x7fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"pk"
	.byte	0x3
	.2byte	0x206
	.byte	0x34
	.4byte	0x761
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.string	"ret"
	.2byte	0x208
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"len"
	.2byte	0x209
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF224
	.2byte	0x20a
	.byte	0x16
	.4byte	0x73e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF217
	.2byte	0x20b
	.byte	0x17
	.4byte	0x6ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x8
	.4byte	.LASF218
	.2byte	0x20c
	.byte	0x1a
	.4byte	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x8
	.4byte	.LASF158
	.2byte	0x20d
	.byte	0x1e
	.4byte	0x6f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF225
	.2byte	0x1d7
	.4byte	0x68
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11c4
	.uleb128 0x7
	.string	"p"
	.byte	0x3
	.2byte	0x1d7
	.byte	0x2a
	.4byte	0x964
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"end"
	.byte	0x3
	.2byte	0x1d8
	.byte	0x2f
	.4byte	0x7fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF217
	.2byte	0x1d9
	.byte	0x2d
	.4byte	0x9a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF216
	.2byte	0x1d9
	.byte	0x47
	.4byte	0x84d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LASF218
	.2byte	0x1da
	.byte	0x30
	.4byte	0x985
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.string	"ret"
	.2byte	0x1dc
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF226
	.2byte	0x1dd
	.byte	0x16
	.4byte	0x73e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xd
	.4byte	.LASF227
	.2byte	0x1ad
	.4byte	0x68
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1258
	.uleb128 0x7
	.string	"pk"
	.byte	0x3
	.2byte	0x1ad
	.byte	0x39
	.4byte	0x761
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"key"
	.byte	0x3
	.2byte	0x1ae
	.byte	0x34
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF200
	.2byte	0x1ae
	.byte	0x40
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"end"
	.byte	0x3
	.2byte	0x1ae
	.byte	0x5d
	.4byte	0x7fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LASF204
	.2byte	0x1af
	.byte	0x2b
	.4byte	0xa1b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LASF205
	.2byte	0x1af
	.byte	0x5a
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.string	"ret"
	.2byte	0x1b1
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"len"
	.2byte	0x1b2
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF228
	.2byte	0x19d
	.4byte	0x68
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x129f
	.uleb128 0x5
	.4byte	.LASF216
	.2byte	0x19d
	.byte	0x3c
	.4byte	0x7f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF229
	.2byte	0x19e
	.byte	0x39
	.4byte	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x7
	.string	"pk"
	.byte	0x3
	.2byte	0x19f
	.byte	0x38
	.4byte	0x761
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xd
	.4byte	.LASF230
	.2byte	0x185
	.4byte	0x68
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12f5
	.uleb128 0x5
	.4byte	.LASF216
	.2byte	0x185
	.byte	0x34
	.4byte	0x7f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"pk"
	.byte	0x3
	.2byte	0x185
	.byte	0x50
	.4byte	0x761
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.string	"ret"
	.2byte	0x187
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF229
	.2byte	0x188
	.byte	0x1a
	.4byte	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xd
	.4byte	.LASF231
	.2byte	0x15c
	.4byte	0x68
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x134b
	.uleb128 0x7
	.string	"p"
	.byte	0x3
	.2byte	0x15c
	.byte	0x2c
	.4byte	0x964
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"end"
	.byte	0x3
	.2byte	0x15c
	.byte	0x44
	.4byte	0x7fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF216
	.2byte	0x15d
	.byte	0x2e
	.4byte	0x84d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.string	"ret"
	.2byte	0x15f
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF232
	.2byte	0x12e
	.4byte	0x68
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13af
	.uleb128 0x5
	.4byte	.LASF216
	.2byte	0x12e
	.byte	0x43
	.4byte	0x7f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x5
	.4byte	.LASF229
	.2byte	0x12f
	.byte	0x41
	.4byte	0x985
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x4
	.string	"ret"
	.2byte	0x131
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"grp"
	.2byte	0x132
	.byte	0x17
	.4byte	0x428
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1b
	.4byte	.LASF234
	.2byte	0x13c
	.4byte	.L44
	.byte	0
	.uleb128 0xd
	.4byte	.LASF233
	.2byte	0x104
	.4byte	0x68
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1422
	.uleb128 0x7
	.string	"grp"
	.byte	0x3
	.2byte	0x104
	.byte	0x3c
	.4byte	0xb88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x5
	.4byte	.LASF229
	.2byte	0x104
	.byte	0x57
	.4byte	0x985
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x4
	.string	"ret"
	.2byte	0x106
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"ref"
	.2byte	0x107
	.byte	0x17
	.4byte	0x428
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x4
	.string	"id"
	.2byte	0x108
	.byte	0x21
	.4byte	0xb18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LASF234
	.2byte	0x11f
	.4byte	.L35
	.byte	0
	.uleb128 0x28
	.4byte	.LASF235
	.byte	0x3
	.byte	0x6d
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14bb
	.uleb128 0x14
	.4byte	.LASF216
	.byte	0x3
	.byte	0x6d
	.byte	0x3c
	.4byte	0x7f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.string	"grp"
	.byte	0x3
	.byte	0x6d
	.byte	0x57
	.4byte	0xaf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.string	"ret"
	.byte	0x6f
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"p"
	.byte	0x70
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.string	"end"
	.byte	0x71
	.byte	0x20
	.4byte	0x800
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.4byte	.LASF236
	.byte	0x72
	.byte	0x1a
	.4byte	0x7fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.4byte	.LASF237
	.byte	0x72
	.byte	0x26
	.4byte	0x7fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"len"
	.byte	0x73
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"ver"
	.byte	0x74
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF238
	.byte	0x3
	.byte	0x55
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14e5
	.uleb128 0x17
	.string	"tag"
	.byte	0x3
	.byte	0x55
	.byte	0x32
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF239
	.byte	0x2
	.byte	0x8e
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x153c
	.uleb128 0x14
	.4byte	.LASF240
	.byte	0x2
	.byte	0x8e
	.byte	0x29
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.string	"low"
	.byte	0x2
	.byte	0x8e
	.byte	0x33
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF241
	.byte	0x2
	.byte	0x8f
	.byte	0x31
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LASF242
	.byte	0x2
	.byte	0x8f
	.byte	0x3b
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x29
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x40d
	.byte	0x24
	.4byte	0x89d
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.string	"pk"
	.byte	0x1
	.2byte	0x40d
	.byte	0x4c
	.4byte	0x707
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x18
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
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
	.4byte	.LFB67
	.uleb128 .LFE67-.LFB67
	.byte	0x7
	.4byte	.LFB72
	.uleb128 .LFE72-.LFB72
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF34:
	.string	"hash_id"
.LASF201:
	.string	"mbedtls_pk_parse_public_key"
.LASF194:
	.string	"mbedtls_mpi_read_binary"
.LASF12:
	.string	"size_t"
.LASF212:
	.string	"outlen"
.LASF146:
	.string	"MBEDTLS_ENCRYPT"
.LASF109:
	.string	"MBEDTLS_CIPHER_ARIA_128_ECB"
.LASF173:
	.string	"mbedtls_pk_setup"
.LASF186:
	.string	"mbedtls_mpi_get_bit"
.LASF232:
	.string	"pk_ecc_group_id_from_specified"
.LASF89:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_GCM"
.LASF13:
	.string	"int32_t"
.LASF63:
	.string	"MBEDTLS_CIPHER_AES_256_ECB"
.LASF157:
	.string	"mbedtls_pk_context"
.LASF160:
	.string	"mbedtls_asn1_buf"
.LASF128:
	.string	"MBEDTLS_CIPHER_ARIA_192_CCM_STAR_NO_TAG"
.LASF53:
	.string	"nbits"
.LASF51:
	.string	"mbedtls_ecp_group"
.LASF158:
	.string	"pk_info"
.LASF64:
	.string	"MBEDTLS_CIPHER_AES_128_CBC"
.LASF155:
	.string	"mbedtls_pk_type_t"
.LASF68:
	.string	"MBEDTLS_CIPHER_AES_192_CFB128"
.LASF228:
	.string	"pk_use_ecparams_rfc8410"
.LASF119:
	.string	"MBEDTLS_CIPHER_ARIA_192_CTR"
.LASF156:
	.string	"mbedtls_pk_info_t"
.LASF101:
	.string	"MBEDTLS_CIPHER_AES_192_CCM_STAR_NO_TAG"
.LASF244:
	.string	"mbedtls_ecp_grp_id_list"
.LASF17:
	.string	"MBEDTLS_MD_MD5"
.LASF97:
	.string	"MBEDTLS_CIPHER_AES_128_CCM"
.LASF135:
	.string	"MBEDTLS_CIPHER_CHACHA20"
.LASF114:
	.string	"MBEDTLS_CIPHER_ARIA_256_CBC"
.LASF36:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF239:
	.string	"mbedtls_error_add"
.LASF162:
	.string	"mbedtls_zeroize_and_free"
.LASF49:
	.string	"mbedtls_ecp_group_id"
.LASF235:
	.string	"pk_group_from_specified"
.LASF88:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_GCM"
.LASF22:
	.string	"MBEDTLS_MD_SHA384"
.LASF6:
	.string	"long int"
.LASF132:
	.string	"MBEDTLS_CIPHER_AES_256_OFB"
.LASF227:
	.string	"pk_parse_key_rfc8410_der"
.LASF168:
	.string	"mbedtls_rsa_parse_key"
.LASF200:
	.string	"keylen"
.LASF126:
	.string	"MBEDTLS_CIPHER_ARIA_256_CCM"
.LASF203:
	.string	"pwdlen"
.LASF42:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF92:
	.string	"MBEDTLS_CIPHER_DES_CBC"
.LASF185:
	.string	"mbedtls_mpi_free"
.LASF231:
	.string	"pk_get_ecparams"
.LASF26:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF193:
	.string	"mbedtls_ecp_point_read_binary"
.LASF108:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CCM_STAR_NO_TAG"
.LASF240:
	.string	"high"
.LASF80:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CBC"
.LASF118:
	.string	"MBEDTLS_CIPHER_ARIA_128_CTR"
.LASF181:
	.string	"mbedtls_pk_ecc_set_key"
.LASF223:
	.string	"mbedtls_pk_parse_subpubkey"
.LASF221:
	.string	"d_len"
.LASF72:
	.string	"MBEDTLS_CIPHER_AES_256_CTR"
.LASF2:
	.string	"signed char"
.LASF41:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF220:
	.string	"pubkey_done"
.LASF207:
	.string	"decrypted"
.LASF29:
	.string	"mbedtls_mpi_sint"
.LASF104:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CCM"
.LASF3:
	.string	"unsigned char"
.LASF174:
	.string	"mbedtls_pk_info_from_type"
.LASF208:
	.string	"pbe_alg_oid"
.LASF43:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF30:
	.string	"mbedtls_mpi_uint"
.LASF152:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF138:
	.string	"MBEDTLS_CIPHER_AES_192_KW"
.LASF167:
	.string	"mbedtls_oid_get_pkcs12_pbe_alg"
.LASF202:
	.string	"mbedtls_pk_parse_key"
.LASF136:
	.string	"MBEDTLS_CIPHER_CHACHA20_POLY1305"
.LASF124:
	.string	"MBEDTLS_CIPHER_ARIA_128_CCM"
.LASF141:
	.string	"MBEDTLS_CIPHER_AES_192_KWP"
.LASF78:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_ECB"
.LASF15:
	.string	"char"
.LASF55:
	.string	"t_pre"
.LASF242:
	.string	"line"
.LASF147:
	.string	"MBEDTLS_PK_NONE"
.LASF79:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CBC"
.LASF172:
	.string	"mbedtls_rsa_parse_pubkey"
.LASF197:
	.string	"memcmp"
.LASF219:
	.string	"pk_parse_key_sec1_der"
.LASF83:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CFB128"
.LASF23:
	.string	"MBEDTLS_MD_SHA512"
.LASF122:
	.string	"MBEDTLS_CIPHER_ARIA_192_GCM"
.LASF106:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CCM_STAR_NO_TAG"
.LASF198:
	.string	"mbedtls_asn1_get_tag"
.LASF103:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CCM"
.LASF241:
	.string	"file"
.LASF94:
	.string	"MBEDTLS_CIPHER_DES_EDE_CBC"
.LASF189:
	.string	"mbedtls_ecp_group_free"
.LASF115:
	.string	"MBEDTLS_CIPHER_ARIA_128_CFB128"
.LASF210:
	.string	"cipher_alg"
.LASF180:
	.string	"mbedtls_pk_ecc_set_pubkey_from_prv"
.LASF27:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF137:
	.string	"MBEDTLS_CIPHER_AES_128_KW"
.LASF209:
	.string	"pbe_params"
.LASF140:
	.string	"MBEDTLS_CIPHER_AES_128_KWP"
.LASF153:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF58:
	.string	"T_size"
.LASF204:
	.string	"f_rng"
.LASF62:
	.string	"MBEDTLS_CIPHER_AES_192_ECB"
.LASF191:
	.string	"mbedtls_mpi_lset"
.LASF214:
	.string	"pk_parse_key_pkcs8_unencrypted_der"
.LASF143:
	.string	"mbedtls_cipher_type_t"
.LASF7:
	.string	"long unsigned int"
.LASF196:
	.string	"mbedtls_asn1_get_mpi"
.LASF211:
	.string	"md_alg"
.LASF129:
	.string	"MBEDTLS_CIPHER_ARIA_256_CCM_STAR_NO_TAG"
.LASF18:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF87:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CTR"
.LASF134:
	.string	"MBEDTLS_CIPHER_AES_256_XTS"
.LASF121:
	.string	"MBEDTLS_CIPHER_ARIA_128_GCM"
.LASF195:
	.string	"mbedtls_mpi_bitlen"
.LASF233:
	.string	"pk_group_id_from_group"
.LASF75:
	.string	"MBEDTLS_CIPHER_AES_256_GCM"
.LASF139:
	.string	"MBEDTLS_CIPHER_AES_256_KW"
.LASF59:
	.string	"MBEDTLS_CIPHER_NONE"
.LASF44:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF102:
	.string	"MBEDTLS_CIPHER_AES_256_CCM_STAR_NO_TAG"
.LASF145:
	.string	"MBEDTLS_DECRYPT"
.LASF187:
	.string	"mbedtls_mpi_cmp_mpi"
.LASF67:
	.string	"MBEDTLS_CIPHER_AES_128_CFB128"
.LASF184:
	.string	"mbedtls_ecp_point_free"
.LASF171:
	.string	"mbedtls_pk_ecc_set_pubkey"
.LASF113:
	.string	"MBEDTLS_CIPHER_ARIA_192_CBC"
.LASF8:
	.string	"long long int"
.LASF61:
	.string	"MBEDTLS_CIPHER_AES_128_ECB"
.LASF217:
	.string	"pk_alg"
.LASF131:
	.string	"MBEDTLS_CIPHER_AES_192_OFB"
.LASF32:
	.string	"mbedtls_rsa_context"
.LASF222:
	.string	"end2"
.LASF182:
	.string	"mbedtls_pk_ecc_set_group"
.LASF236:
	.string	"end_field"
.LASF149:
	.string	"MBEDTLS_PK_ECKEY"
.LASF125:
	.string	"MBEDTLS_CIPHER_ARIA_192_CCM"
.LASF47:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF159:
	.string	"pk_ctx"
.LASF19:
	.string	"MBEDTLS_MD_SHA1"
.LASF96:
	.string	"MBEDTLS_CIPHER_DES_EDE3_CBC"
.LASF100:
	.string	"MBEDTLS_CIPHER_AES_128_CCM_STAR_NO_TAG"
.LASF199:
	.string	"mbedtls_asn1_get_int"
.LASF169:
	.string	"mbedtls_pk_get_type"
.LASF69:
	.string	"MBEDTLS_CIPHER_AES_256_CFB128"
.LASF151:
	.string	"MBEDTLS_PK_ECDSA"
.LASF183:
	.string	"mbedtls_oid_get_ec_grp"
.LASF71:
	.string	"MBEDTLS_CIPHER_AES_192_CTR"
.LASF234:
	.string	"cleanup"
.LASF111:
	.string	"MBEDTLS_CIPHER_ARIA_256_ECB"
.LASF10:
	.string	"unsigned int"
.LASF176:
	.string	"mbedtls_oid_get_ec_grp_algid"
.LASF154:
	.string	"MBEDTLS_PK_OPAQUE"
.LASF213:
	.string	"mbedtls_pk_parse_key_pkcs8_encrypted_der"
.LASF127:
	.string	"MBEDTLS_CIPHER_ARIA_128_CCM_STAR_NO_TAG"
.LASF48:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF112:
	.string	"MBEDTLS_CIPHER_ARIA_128_CBC"
.LASF60:
	.string	"MBEDTLS_CIPHER_NULL"
.LASF91:
	.string	"MBEDTLS_CIPHER_DES_ECB"
.LASF66:
	.string	"MBEDTLS_CIPHER_AES_256_CBC"
.LASF46:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF192:
	.string	"mbedtls_mpi_size"
.LASF230:
	.string	"pk_use_ecparams"
.LASF130:
	.string	"MBEDTLS_CIPHER_AES_128_OFB"
.LASF77:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_ECB"
.LASF28:
	.string	"mbedtls_md_type_t"
.LASF150:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF164:
	.string	"calloc"
.LASF188:
	.string	"mbedtls_ecp_group_load"
.LASF99:
	.string	"MBEDTLS_CIPHER_AES_256_CCM"
.LASF243:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF11:
	.string	"long double"
.LASF177:
	.string	"mbedtls_oid_get_pk_alg"
.LASF245:
	.string	"mbedtls_pk_rsa"
.LASF70:
	.string	"MBEDTLS_CIPHER_AES_128_CTR"
.LASF90:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_GCM"
.LASF148:
	.string	"MBEDTLS_PK_RSA"
.LASF9:
	.string	"long long unsigned int"
.LASF216:
	.string	"params"
.LASF161:
	.string	"mbedtls_pk_init"
.LASF50:
	.string	"mbedtls_ecp_point"
.LASF39:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF31:
	.string	"mbedtls_mpi"
.LASF120:
	.string	"MBEDTLS_CIPHER_ARIA_256_CTR"
.LASF225:
	.string	"pk_get_pk_alg"
.LASF76:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_ECB"
.LASF179:
	.string	"memset"
.LASF215:
	.string	"version"
.LASF52:
	.string	"pbits"
.LASF20:
	.string	"MBEDTLS_MD_SHA224"
.LASF175:
	.string	"mbedtls_asn1_get_bitstring_null"
.LASF116:
	.string	"MBEDTLS_CIPHER_ARIA_192_CFB128"
.LASF38:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF40:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF93:
	.string	"MBEDTLS_CIPHER_DES_EDE_ECB"
.LASF24:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF86:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CTR"
.LASF84:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CFB128"
.LASF206:
	.string	"key_copy"
.LASF56:
	.string	"t_post"
.LASF74:
	.string	"MBEDTLS_CIPHER_AES_192_GCM"
.LASF107:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CCM_STAR_NO_TAG"
.LASF166:
	.string	"mbedtls_pkcs12_pbe_ext"
.LASF4:
	.string	"short int"
.LASF35:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF238:
	.string	"pk_ecc_tag_is_specified_ec_domain"
.LASF54:
	.string	"modp"
.LASF81:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CBC"
.LASF37:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF205:
	.string	"p_rng"
.LASF117:
	.string	"MBEDTLS_CIPHER_ARIA_256_CFB128"
.LASF21:
	.string	"MBEDTLS_MD_SHA256"
.LASF16:
	.string	"MBEDTLS_MD_NONE"
.LASF165:
	.string	"mbedtls_pkcs5_pbes2_ext"
.LASF170:
	.string	"mbedtls_pk_free"
.LASF178:
	.string	"mbedtls_asn1_get_alg"
.LASF105:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CCM"
.LASF190:
	.string	"mbedtls_ecp_group_init"
.LASF163:
	.string	"memcpy"
.LASF25:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF218:
	.string	"ec_grp_id"
.LASF224:
	.string	"alg_params"
.LASF33:
	.string	"padding"
.LASF45:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF85:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CTR"
.LASF133:
	.string	"MBEDTLS_CIPHER_AES_128_XTS"
.LASF14:
	.string	"uint32_t"
.LASF82:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CFB128"
.LASF142:
	.string	"MBEDTLS_CIPHER_AES_256_KWP"
.LASF73:
	.string	"MBEDTLS_CIPHER_AES_128_GCM"
.LASF110:
	.string	"MBEDTLS_CIPHER_ARIA_192_ECB"
.LASF5:
	.string	"short unsigned int"
.LASF57:
	.string	"t_data"
.LASF226:
	.string	"alg_oid"
.LASF65:
	.string	"MBEDTLS_CIPHER_AES_192_CBC"
.LASF144:
	.string	"MBEDTLS_OPERATION_NONE"
.LASF123:
	.string	"MBEDTLS_CIPHER_ARIA_256_GCM"
.LASF95:
	.string	"MBEDTLS_CIPHER_DES_EDE3_ECB"
.LASF237:
	.string	"end_curve"
.LASF229:
	.string	"grp_id"
.LASF98:
	.string	"MBEDTLS_CIPHER_AES_192_CCM"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pkparse.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
