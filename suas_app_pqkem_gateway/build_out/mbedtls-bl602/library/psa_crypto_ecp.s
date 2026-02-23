	.file	"psa_crypto_ecp.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_ecp.c"
	.section	.text.mbedtls_md_type_from_psa_alg,"ax",@progbits
	.align	1
	.type	mbedtls_md_type_from_psa_alg, @function
mbedtls_md_type_from_psa_alg:
.LFB68:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/psa_util.h"
	.loc 1 139 1
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
	.loc 1 140 12
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	.loc 1 141 1
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
	.size	mbedtls_md_type_from_psa_alg, .-mbedtls_md_type_from_psa_alg
	.section	.text.check_ecc_parameters,"ax",@progbits
	.align	1
	.type	check_ecc_parameters, @function
check_ecc_parameters:
.LFB76:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_ecp.c"
	.loc 2 41 1
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
	sw	a1,-24(s0)
	sb	a5,-17(s0)
	.loc 2 42 5
	lbu	a5,-17(s0)
	li	a4,65
	beq	a5,a4,.L4
	li	a4,65
	bgt	a5,a4,.L5
	li	a4,48
	beq	a5,a4,.L6
	li	a4,48
	bgt	a5,a4,.L5
	li	a4,18
	beq	a5,a4,.L7
	li	a4,23
	beq	a5,a4,.L8
	j	.L5
.L7:
	.loc 2 44 21
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 44 13
	li	a4,528
	beq	a5,a4,.L9
	li	a4,528
	bgtu	a5,a4,.L20
	li	a4,521
	beq	a5,a4,.L11
	li	a4,521
	bgtu	a5,a4,.L20
	li	a4,384
	beq	a5,a4,.L11
	li	a4,384
	bgtu	a5,a4,.L20
	li	a4,256
	beq	a5,a4,.L11
	li	a4,256
	bgtu	a5,a4,.L20
	li	a4,192
	beq	a5,a4,.L11
	li	a4,224
	bne	a5,a4,.L20
.L11:
	.loc 2 50 28
	li	a5,0
	j	.L12
.L9:
	.loc 2 52 27
	lw	a5,-24(s0)
	li	a4,521
	sw	a4,0(a5)
	.loc 2 53 28
	li	a5,0
	j	.L12
.L6:
	.loc 2 58 21
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 58 13
	li	a4,512
	beq	a5,a4,.L13
	li	a4,512
	bgtu	a5,a4,.L21
	li	a4,256
	beq	a5,a4,.L13
	li	a4,384
	bne	a5,a4,.L21
.L13:
	.loc 2 62 28
	li	a5,0
	j	.L12
.L4:
	.loc 2 67 21
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 67 13
	li	a4,448
	beq	a5,a4,.L15
	li	a4,448
	bgtu	a5,a4,.L22
	li	a4,255
	beq	a5,a4,.L15
	li	a4,256
	beq	a5,a4,.L17
	.loc 2 75 13
	j	.L22
.L15:
	.loc 2 70 28
	li	a5,0
	j	.L12
.L17:
	.loc 2 72 27
	lw	a5,-24(s0)
	li	a4,255
	sw	a4,0(a5)
	.loc 2 73 28
	li	a5,0
	j	.L12
.L8:
	.loc 2 78 21
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 78 13
	li	a4,192
	beq	a5,a4,.L18
	li	a4,256
	bne	a5,a4,.L23
.L18:
	.loc 2 82 28
	li	a5,0
	j	.L12
.L20:
	.loc 2 55 13
	nop
	j	.L5
.L21:
	.loc 2 64 13
	nop
	j	.L5
.L22:
	.loc 2 75 13
	nop
	j	.L5
.L23:
	.loc 2 84 13
	nop
.L5:
	.loc 2 87 12
	li	a5,-135
.L12:
	.loc 2 88 1
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
	.size	check_ecc_parameters, .-check_ecc_parameters
	.section	.text.mbedtls_psa_ecp_load_representation,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_ecp_load_representation
	.type	mbedtls_psa_ecp_load_representation, @function
mbedtls_psa_ecp_load_representation:
.LFB77:
	.loc 2 94 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sh	a5,-50(s0)
	.loc 2 95 26
	sb	zero,-25(s0)
	.loc 2 97 26
	sw	zero,-32(s0)
	.loc 2 98 12
	lw	a5,-64(s0)
	sw	a5,-24(s0)
	.loc 2 99 37
	lw	a5,-56(s0)
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 2 99 9
	sw	a5,-36(s0)
	.loc 2 101 18
	lhu	a4,-50(s0)
	li	a5,28672
	and	a4,a4,a5
	.loc 2 101 8
	li	a5,16384
	bne	a4,a5,.L25
	.loc 2 102 70
	lhu	a4,-50(s0)
	li	a5,-12288
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 101 77 discriminator 1
	li	a5,16384
	addi	a5,a5,256
	bne	a4,a5,.L26
	.loc 2 102 175
	lhu	a5,-50(s0)
	andi	a4,a5,0xff
	li	a5,65
	beq	a4,a5,.L25
.L26:
	.loc 2 109 26
	lw	a5,-64(s0)
	andi	a5,a5,1
	.loc 2 109 12
	bne	a5,zero,.L27
	.loc 2 110 20
	li	a5,-135
	j	.L28
.L27:
	.loc 2 112 21
	lw	a5,-64(s0)
	srli	a5,a5,1
	sw	a5,-24(s0)
.L25:
	.loc 2 121 8
	lw	a5,-36(s0)
	beq	a5,zero,.L29
	.loc 2 123 43
	lw	a5,-56(s0)
	addi	a5,a5,7
	.loc 2 123 49
	srli	a5,a5,3
	.loc 2 123 12
	lw	a4,-24(s0)
	beq	a4,a5,.L30
	.loc 2 124 20
	li	a5,-135
	j	.L28
.L29:
	.loc 2 130 37
	lw	a5,-24(s0)
	slli	a5,a5,3
	.loc 2 130 20
	sw	a5,-56(s0)
.L30:
	.loc 2 134 11
	li	a1,128
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-32(s0)
	.loc 2 135 8
	lw	a5,-32(s0)
	bne	a5,zero,.L31
	.loc 2 136 16
	li	a5,-141
	j	.L28
.L31:
	.loc 2 138 5
	lw	a0,-32(s0)
	call	mbedtls_ecp_keypair_init
	.loc 2 140 96
	lhu	a4,-50(s0)
	li	a5,-12288
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 140 14
	li	a5,16384
	addi	a5,a5,256
	bne	a4,a5,.L32
	.loc 2 140 14 is_stmt 0 discriminator 1
	lhu	a5,-50(s0)
	andi	a5,a5,0xff
	j	.L33
.L32:
	.loc 2 140 14 discriminator 2
	li	a5,0
.L33:
	.loc 2 140 14 discriminator 4
	addi	a4,s0,-56
	mv	a1,a4
	mv	a0,a5
	call	check_ecc_parameters
	sw	a0,-20(s0)
	.loc 2 141 8 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L44
	.loc 2 146 102
	lhu	a4,-50(s0)
	li	a5,-12288
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 146 14
	li	a5,16384
	addi	a5,a5,256
	bne	a4,a5,.L36
	.loc 2 146 14 is_stmt 0 discriminator 1
	lhu	a5,-50(s0)
	andi	a5,a5,0xff
	j	.L37
.L36:
	.loc 2 146 14 discriminator 2
	li	a5,0
.L37:
	.loc 2 146 14 discriminator 4
	lw	a4,-56(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecc_group_from_psa
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 2 148 8 is_stmt 1
	lbu	a5,-25(s0)
	bne	a5,zero,.L38
	.loc 2 149 16
	li	a5,-134
	sw	a5,-20(s0)
	.loc 2 150 9
	j	.L35
.L38:
	.loc 2 153 14
	lw	a5,-32(s0)
	lbu	a4,-25(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecp_group_load
	mv	a5,a0
	.loc 2 153 14 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	.loc 2 155 8 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L45
	.loc 2 160 18
	lhu	a4,-50(s0)
	li	a5,28672
	and	a4,a4,a5
	.loc 2 160 8
	li	a5,16384
	bne	a4,a5,.L40
	.loc 2 163 43
	lw	a4,-32(s0)
	.loc 2 162 18
	lw	a5,-32(s0)
	addi	a5,a5,104
	lw	a3,-64(s0)
	lw	a2,-60(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ecp_point_read_binary
	mv	a5,a0
	.loc 2 162 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	.loc 2 166 12 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L46
	.loc 2 172 38
	lw	a4,-32(s0)
	.loc 2 172 49
	lw	a5,-32(s0)
	addi	a5,a5,104
	.loc 2 171 18
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ecp_check_pubkey
	mv	a5,a0
	.loc 2 171 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	.loc 2 173 12 is_stmt 1
	lw	a5,-20(s0)
	beq	a5,zero,.L42
	.loc 2 174 13
	j	.L35
.L40:
	.loc 2 178 18
	lw	a5,-32(s0)
	lbu	a5,0(a5)
	lw	a3,-64(s0)
	lw	a2,-60(s0)
	lw	a1,-32(s0)
	mv	a0,a5
	call	mbedtls_ecp_read_key
	mv	a5,a0
	.loc 2 178 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	.loc 2 183 12 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L47
.L42:
	.loc 2 188 12
	lw	a5,-68(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
	j	.L35
.L44:
	.loc 2 142 9
	nop
	j	.L35
.L45:
	.loc 2 156 9
	nop
	j	.L35
.L46:
	.loc 2 167 13
	nop
	j	.L35
.L47:
	.loc 2 184 13
	nop
.L35:
	.loc 2 190 8
	lw	a5,-20(s0)
	beq	a5,zero,.L43
	.loc 2 191 9
	lw	a0,-32(s0)
	call	mbedtls_ecp_keypair_free
	.loc 2 192 9
	lw	a0,-32(s0)
	call	free
.L43:
	.loc 2 195 12
	lw	a5,-20(s0)
.L28:
	.loc 2 196 1
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
.LFE77:
	.size	mbedtls_psa_ecp_load_representation, .-mbedtls_psa_ecp_load_representation
	.section	.text.mbedtls_psa_ecp_import_key,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_ecp_import_key
	.type	mbedtls_psa_ecp_import_key, @function
mbedtls_psa_ecp_import_key:
.LFB78:
	.loc 2 214 1
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
	.loc 2 216 26
	sw	zero,-24(s0)
	.loc 2 219 60
	lw	a5,-36(s0)
	lhu	a0,0(a5)
	.loc 2 220 60
	lw	a5,-36(s0)
	lhu	a5,2(a5)
	.loc 2 219 14
	mv	a1,a5
	addi	a5,s0,-24
	mv	a4,a5
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	call	mbedtls_psa_ecp_load_representation
	sw	a0,-20(s0)
	.loc 2 224 8
	lw	a5,-20(s0)
	bne	a5,zero,.L54
	.loc 2 228 44
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	mv	a4,a5
	.loc 2 228 82
	li	a5,-12288
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 228 8
	li	a5,16384
	addi	a5,a5,256
	bne	a4,a5,.L51
	.loc 2 228 156 discriminator 1
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	.loc 2 228 199 discriminator 1
	andi	a4,a5,0xff
	li	a5,65
	bne	a4,a5,.L51
	.loc 2 230 20
	lw	a5,-24(s0)
	.loc 2 230 25
	lw	a5,64(a5)
	.loc 2 230 32
	addi	a4,a5,1
	.loc 2 230 15
	lw	a5,-60(s0)
	sw	a4,0(a5)
	j	.L52
.L51:
	.loc 2 232 20
	lw	a5,-24(s0)
	.loc 2 232 25
	lw	a4,64(a5)
	.loc 2 232 15
	lw	a5,-60(s0)
	sw	a4,0(a5)
.L52:
	.loc 2 238 51
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	.loc 2 238 14
	lw	a1,-24(s0)
	lw	a4,-56(s0)
	lw	a3,-52(s0)
	lw	a2,-48(s0)
	mv	a0,a5
	call	mbedtls_psa_ecp_export_key
	sw	a0,-20(s0)
	j	.L50
.L54:
	.loc 2 225 9
	nop
.L50:
	.loc 2 245 5
	lw	a5,-24(s0)
	mv	a0,a5
	call	mbedtls_ecp_keypair_free
	.loc 2 246 5
	lw	a5,-24(s0)
	mv	a0,a5
	call	free
	.loc 2 248 12
	lw	a5,-20(s0)
	.loc 2 249 1
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
.LFE78:
	.size	mbedtls_psa_ecp_import_key, .-mbedtls_psa_ecp_import_key
	.section	.text.mbedtls_psa_ecp_export_key,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_ecp_export_key
	.type	mbedtls_psa_ecp_export_key, @function
mbedtls_psa_ecp_export_key:
.LFB79:
	.loc 2 256 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sh	a5,-34(s0)
	.loc 2 259 18
	lhu	a4,-34(s0)
	li	a5,28672
	and	a4,a4,a5
	.loc 2 259 8
	li	a5,16384
	bne	a4,a5,.L56
	.loc 2 261 13
	lw	a5,-40(s0)
	addi	a5,a5,104
	mv	a0,a5
	call	mbedtls_ecp_is_zero
	mv	a5,a0
	.loc 2 261 12 discriminator 1
	beq	a5,zero,.L57
	.loc 2 263 22
	lw	a0,-40(s0)
	lw	a5,-40(s0)
	addi	a1,a5,104
	.loc 2 264 53
	lw	a5,-40(s0)
	addi	a2,a5,96
	.loc 2 264 62
	lw	a5,-40(s0)
	addi	a3,a5,28
	.loc 2 263 22
	li	a5,0
	lui	a4,%hi(mbedtls_psa_get_random)
	addi	a4,a4,%lo(mbedtls_psa_get_random)
	call	mbedtls_ecp_mul
	mv	a5,a0
	.loc 2 263 22 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	.loc 2 267 16 is_stmt 1
	lw	a5,-20(s0)
	beq	a5,zero,.L57
	.loc 2 268 24
	lw	a5,-20(s0)
	j	.L58
.L57:
	.loc 2 273 44
	lw	a0,-40(s0)
	.loc 2 273 55
	lw	a5,-40(s0)
	addi	a1,a5,104
	.loc 2 272 18
	lw	a5,-48(s0)
	lw	a4,-44(s0)
	lw	a3,-52(s0)
	li	a2,0
	call	mbedtls_ecp_point_write_binary
	mv	a5,a0
	.loc 2 272 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	.loc 2 278 12 is_stmt 1
	lw	a5,-20(s0)
	beq	a5,zero,.L59
	.loc 2 279 13
	lw	a2,-48(s0)
	li	a1,0
	lw	a0,-44(s0)
	call	memset
.L59:
	.loc 2 282 16
	lw	a5,-20(s0)
	j	.L58
.L56:
	.loc 2 284 18
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-52(s0)
	lw	a0,-40(s0)
	call	mbedtls_ecp_write_key_ext
	mv	a5,a0
	.loc 2 284 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	.loc 2 286 16 is_stmt 1
	lw	a5,-20(s0)
.L58:
	.loc 2 288 1
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
	.size	mbedtls_psa_ecp_export_key, .-mbedtls_psa_ecp_export_key
	.section	.text.mbedtls_psa_ecp_export_public_key,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_ecp_export_public_key
	.type	mbedtls_psa_ecp_export_public_key, @function
mbedtls_psa_ecp_export_public_key:
.LFB80:
	.loc 2 294 1
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
	.loc 2 295 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 2 296 26
	sw	zero,-24(s0)
	.loc 2 299 19
	lw	a5,-36(s0)
	lhu	a0,0(a5)
	.loc 2 299 37
	lw	a5,-36(s0)
	lhu	a5,2(a5)
	.loc 2 298 14
	mv	a1,a5
	addi	a5,s0,-24
	mv	a4,a5
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	call	mbedtls_psa_ecp_load_representation
	sw	a0,-20(s0)
	.loc 2 301 8
	lw	a5,-20(s0)
	beq	a5,zero,.L61
	.loc 2 302 16
	lw	a5,-20(s0)
	j	.L65
.L61:
	.loc 2 306 74
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	mv	a4,a5
	.loc 2 306 112
	li	a5,-12288
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 305 14
	li	a5,16384
	addi	a5,a5,256
	bne	a4,a5,.L63
	.loc 2 306 186
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	.loc 2 306 36
	andi	a5,a5,0xff
	slli	a4,a5,16
	srai	a4,a4,16
	li	a5,16384
	addi	a5,a5,256
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 2 305 14 discriminator 1
	slli	a5,a5,16
	srli	a5,a5,16
	j	.L64
.L63:
	.loc 2 305 14 is_stmt 0 discriminator 2
	li	a5,16384
	addi	a5,a5,256
.L64:
	.loc 2 305 14 discriminator 4
	lw	a1,-24(s0)
	lw	a4,-56(s0)
	lw	a3,-52(s0)
	lw	a2,-48(s0)
	mv	a0,a5
	call	mbedtls_psa_ecp_export_key
	sw	a0,-20(s0)
	.loc 2 310 5 is_stmt 1
	lw	a5,-24(s0)
	mv	a0,a5
	call	mbedtls_ecp_keypair_free
	.loc 2 311 5
	lw	a5,-24(s0)
	mv	a0,a5
	call	free
	.loc 2 313 12
	lw	a5,-20(s0)
.L65:
	.loc 2 314 1
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
	.size	mbedtls_psa_ecp_export_public_key, .-mbedtls_psa_ecp_export_public_key
	.section	.text.mbedtls_psa_ecp_generate_key,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_ecp_generate_key
	.type	mbedtls_psa_ecp_generate_key, @function
mbedtls_psa_ecp_generate_key:
.LFB81:
	.loc 2 323 1
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
	sw	a1,-168(s0)
	sw	a2,-172(s0)
	sw	a3,-176(s0)
	.loc 2 324 65
	lw	a5,-164(s0)
	lhu	a5,0(a5)
	mv	a4,a5
	.loc 2 324 103
	li	a5,-12288
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 324 31
	li	a5,16384
	addi	a5,a5,256
	bne	a4,a5,.L67
	.loc 2 324 177 discriminator 1
	lw	a5,-164(s0)
	lhu	a5,0(a5)
	.loc 2 324 22 discriminator 1
	sb	a5,-17(s0)
	j	.L68
.L67:
	.loc 2 324 22 is_stmt 0 discriminator 2
	sb	zero,-17(s0)
.L68:
	.loc 2 327 53 is_stmt 1
	lw	a5,-164(s0)
	lhu	a5,2(a5)
	.loc 2 327 9
	mv	a4,a5
	lbu	a5,-17(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecc_group_from_psa
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 2 328 8
	lbu	a5,-25(s0)
	bne	a5,zero,.L69
	.loc 2 329 16
	li	a5,-134
	j	.L74
.L69:
	.loc 2 333 5
	addi	a5,s0,-156
	mv	a0,a5
	call	mbedtls_ecp_keypair_init
	.loc 2 334 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 2 336 11
	lbu	a4,-25(s0)
	addi	a5,s0,-156
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecp_group_load
	sw	a0,-24(s0)
	.loc 2 337 8
	lw	a5,-24(s0)
	bne	a5,zero,.L75
	.loc 2 341 11
	addi	a5,s0,-156
	addi	a1,a5,96
	addi	a4,s0,-156
	li	a3,0
	lui	a5,%hi(mbedtls_psa_get_random)
	addi	a2,a5,%lo(mbedtls_psa_get_random)
	mv	a0,a4
	call	mbedtls_ecp_gen_privkey
	sw	a0,-24(s0)
	.loc 2 344 8
	lw	a5,-24(s0)
	bne	a5,zero,.L76
	.loc 2 348 11
	addi	a5,s0,-156
	lw	a3,-172(s0)
	lw	a2,-168(s0)
	lw	a1,-176(s0)
	mv	a0,a5
	call	mbedtls_ecp_write_key_ext
	sw	a0,-24(s0)
	j	.L72
.L75:
	.loc 2 338 9
	nop
	j	.L72
.L76:
	.loc 2 345 9
	nop
.L72:
	.loc 2 352 5
	addi	a5,s0,-156
	mv	a0,a5
	call	mbedtls_ecp_keypair_free
	.loc 2 353 12
	lw	a0,-24(s0)
	call	mbedtls_to_psa_error
	mv	a5,a0
.L74:
	.loc 2 354 1
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
.LFE81:
	.size	mbedtls_psa_ecp_generate_key, .-mbedtls_psa_ecp_generate_key
	.section	.text.mbedtls_psa_ecdsa_sign_hash,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_ecdsa_sign_hash
	.type	mbedtls_psa_ecdsa_sign_hash, @function
mbedtls_psa_ecdsa_sign_hash:
.LFB82:
	.loc 2 368 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	sw	a4,-84(s0)
	sw	a5,-88(s0)
	sw	a6,-92(s0)
	sw	a7,-96(s0)
	.loc 2 369 18
	li	a5,-151
	sw	a5,-28(s0)
	.loc 2 370 26
	sw	zero,-40(s0)
	.loc 2 371 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 375 60
	lw	a5,-68(s0)
	lhu	a0,0(a5)
	.loc 2 376 60
	lw	a5,-68(s0)
	lhu	a5,2(a5)
	.loc 2 375 14
	mv	a1,a5
	addi	a5,s0,-40
	mv	a4,a5
	lw	a3,-76(s0)
	lw	a2,-72(s0)
	call	mbedtls_psa_ecp_load_representation
	sw	a0,-28(s0)
	.loc 2 380 8
	lw	a5,-28(s0)
	beq	a5,zero,.L78
	.loc 2 381 16
	lw	a5,-28(s0)
	j	.L89
.L78:
	.loc 2 384 25
	lw	a5,-40(s0)
	.loc 2 384 30
	lw	a5,60(a5)
	.loc 2 384 38
	addi	a5,a5,7
	.loc 2 384 17
	srli	a5,a5,3
	sw	a5,-32(s0)
	.loc 2 385 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 386 5
	addi	a5,s0,-56
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 388 28
	lw	a5,-32(s0)
	slli	a5,a5,1
	.loc 2 388 8
	lw	a4,-96(s0)
	bgeu	a4,a5,.L80
	.loc 2 389 13
	li	a5,-20480
	addi	a5,a5,256
	sw	a5,-20(s0)
	.loc 2 390 9
	j	.L81
.L80:
	.loc 2 393 17
	lw	a5,-80(s0)
	andi	a5,a5,256
	.loc 2 393 8
	beq	a5,zero,.L82
.LBB2:
	.loc 2 395 48
	lw	a5,-80(s0)
	andi	a4,a5,-256
	.loc 2 395 719
	li	a5,100663296
	addi	a5,a5,768
	beq	a4,a5,.L83
	.loc 2 395 129 discriminator 2
	lw	a5,-80(s0)
	andi	a4,a5,-256
	.loc 2 395 118 discriminator 2
	li	a5,100667392
	addi	a5,a5,768
	beq	a4,a5,.L83
	.loc 2 395 211 discriminator 4
	lw	a5,-80(s0)
	andi	a4,a5,-256
	.loc 2 395 200 discriminator 4
	li	a5,100663296
	addi	a5,a5,512
	beq	a4,a5,.L83
	.loc 2 395 326 discriminator 6
	lw	a5,-80(s0)
	andi	a4,a5,-512
	.loc 2 395 281 discriminator 6
	li	a5,100663296
	addi	a5,a5,1536
	beq	a4,a5,.L83
	.loc 2 395 407 discriminator 8
	lw	a5,-80(s0)
	andi	a4,a5,-256
	.loc 2 395 396 discriminator 8
	li	a5,100667392
	addi	a5,a5,-1792
	beq	a4,a5,.L83
	.loc 2 395 522 discriminator 10
	lw	a5,-80(s0)
	andi	a4,a5,-512
	.loc 2 395 477 discriminator 10
	li	a5,100663296
	addi	a5,a5,1024
	bne	a4,a5,.L84
.L83:
	.loc 2 395 603 discriminator 11
	lw	a5,-80(s0)
	andi	a5,a5,255
	.loc 2 395 593 discriminator 11
	beq	a5,zero,.L84
	.loc 2 395 652 discriminator 13
	lw	a5,-80(s0)
	andi	a4,a5,255
	.loc 2 395 25 discriminator 13
	li	a5,33554432
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 395 25 is_stmt 0
	j	.L85
.L84:
	.loc 2 395 25 discriminator 14
	sw	zero,-24(s0)
.L85:
	.loc 2 396 36 is_stmt 1
	lw	a0,-24(s0)
	call	mbedtls_md_type_from_psa_alg
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 2 397 58
	lw	a5,-40(s0)
	.loc 2 397 26
	mv	a0,a5
	.loc 2 397 77
	lw	a5,-40(s0)
	.loc 2 397 73
	addi	a3,a5,96
	.loc 2 397 26
	lbu	a4,-33(s0)
	addi	a2,s0,-56
	addi	a1,s0,-48
	sw	zero,0(sp)
	lui	a5,%hi(mbedtls_psa_get_random)
	addi	a7,a5,%lo(mbedtls_psa_get_random)
	mv	a6,a4
	lw	a5,-88(s0)
	lw	a4,-84(s0)
	call	mbedtls_ecdsa_sign_det_ext
	sw	a0,-20(s0)
	.loc 2 397 17 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L86
	.loc 2 397 18
	j	.L81
.L82:
.LBE2:
	.loc 2 409 49
	lw	a5,-40(s0)
	.loc 2 409 26
	mv	a0,a5
	.loc 2 409 68
	lw	a5,-40(s0)
	.loc 2 409 64
	addi	a3,a5,96
	.loc 2 409 26
	addi	a2,s0,-56
	addi	a1,s0,-48
	li	a7,0
	lui	a5,%hi(mbedtls_psa_get_random)
	addi	a6,a5,%lo(mbedtls_psa_get_random)
	lw	a5,-88(s0)
	lw	a4,-84(s0)
	call	mbedtls_ecdsa_sign
	sw	a0,-20(s0)
	.loc 2 409 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L90
.L86:
	.loc 2 415 22
	addi	a5,s0,-48
	lw	a2,-32(s0)
	lw	a1,-92(s0)
	mv	a0,a5
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 2 415 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L91
	.loc 2 418 61
	lw	a4,-92(s0)
	lw	a5,-32(s0)
	add	a4,a4,a5
	.loc 2 418 22
	addi	a5,s0,-56
	lw	a2,-32(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 2 421 1
	j	.L81
.L90:
	.loc 2 409 18
	nop
	j	.L81
.L91:
	.loc 2 415 83
	nop
.L81:
	.loc 2 422 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 423 5
	addi	a5,s0,-56
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 424 8
	lw	a5,-20(s0)
	bne	a5,zero,.L88
	.loc 2 425 31
	lw	a5,-32(s0)
	slli	a4,a5,1
	.loc 2 425 27
	lw	a5,0(s0)
	sw	a4,0(a5)
.L88:
	.loc 2 428 5
	lw	a5,-40(s0)
	mv	a0,a5
	call	mbedtls_ecp_keypair_free
	.loc 2 429 5
	lw	a5,-40(s0)
	mv	a0,a5
	call	free
	.loc 2 431 12
	lw	a0,-20(s0)
	call	mbedtls_to_psa_error
	mv	a5,a0
.L89:
	.loc 2 432 1
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
.LFE82:
	.size	mbedtls_psa_ecdsa_sign_hash, .-mbedtls_psa_ecdsa_sign_hash
	.section	.text.mbedtls_psa_ecp_load_public_part,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_ecp_load_public_part
	.type	mbedtls_psa_ecp_load_public_part, @function
mbedtls_psa_ecp_load_public_part:
.LFB83:
	.loc 2 435 1
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
	.loc 2 436 9
	sw	zero,-20(s0)
	.loc 2 439 9
	lw	a5,-36(s0)
	addi	a5,a5,104
	mv	a0,a5
	call	mbedtls_ecp_is_zero
	mv	a5,a0
	.loc 2 439 8 discriminator 1
	beq	a5,zero,.L93
	.loc 2 440 15
	lw	a0,-36(s0)
	lw	a5,-36(s0)
	addi	a1,a5,104
	.loc 2 441 31
	lw	a5,-36(s0)
	addi	a2,a5,96
	.loc 2 441 40
	lw	a5,-36(s0)
	addi	a3,a5,28
	.loc 2 440 15
	li	a5,0
	lui	a4,%hi(mbedtls_psa_get_random)
	addi	a4,a4,%lo(mbedtls_psa_get_random)
	call	mbedtls_ecp_mul
	sw	a0,-20(s0)
.L93:
	.loc 2 446 12
	lw	a0,-20(s0)
	call	mbedtls_to_psa_error
	mv	a5,a0
	.loc 2 447 1
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
	.size	mbedtls_psa_ecp_load_public_part, .-mbedtls_psa_ecp_load_public_part
	.section	.text.mbedtls_psa_ecdsa_verify_hash,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_ecdsa_verify_hash
	.type	mbedtls_psa_ecdsa_verify_hash, @function
mbedtls_psa_ecdsa_verify_hash:
.LFB84:
	.loc 2 454 1
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
	sw	a5,-72(s0)
	sw	a6,-76(s0)
	sw	a7,-80(s0)
	.loc 2 455 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 2 456 26
	sw	zero,-28(s0)
	.loc 2 462 60
	lw	a5,-52(s0)
	lhu	a0,0(a5)
	.loc 2 463 60
	lw	a5,-52(s0)
	lhu	a5,2(a5)
	.loc 2 462 14
	mv	a1,a5
	addi	a5,s0,-28
	mv	a4,a5
	lw	a3,-60(s0)
	lw	a2,-56(s0)
	call	mbedtls_psa_ecp_load_representation
	sw	a0,-20(s0)
	.loc 2 467 8
	lw	a5,-20(s0)
	beq	a5,zero,.L96
	.loc 2 468 16
	lw	a5,-20(s0)
	j	.L103
.L96:
	.loc 2 471 25
	lw	a5,-28(s0)
	.loc 2 471 30
	lw	a5,60(a5)
	.loc 2 471 38
	addi	a5,a5,7
	.loc 2 471 17
	srli	a5,a5,3
	sw	a5,-24(s0)
	.loc 2 472 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 473 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 475 31
	lw	a5,-24(s0)
	slli	a5,a5,1
	.loc 2 475 8
	lw	a4,-80(s0)
	beq	a4,a5,.L98
	.loc 2 476 16
	li	a5,-149
	sw	a5,-20(s0)
	.loc 2 477 9
	j	.L99
.L98:
	.loc 2 480 14
	addi	a5,s0,-36
	lw	a2,-24(s0)
	lw	a1,-76(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	mv	a5,a0
	.loc 2 480 14 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	.loc 2 483 8 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L104
	.loc 2 488 69
	lw	a4,-76(s0)
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 2 487 14
	addi	a5,s0,-44
	lw	a2,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	mv	a5,a0
	.loc 2 487 14 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	.loc 2 490 8 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L105
	.loc 2 494 14
	lw	a5,-28(s0)
	mv	a0,a5
	call	mbedtls_psa_ecp_load_public_part
	sw	a0,-20(s0)
	.loc 2 495 8
	lw	a5,-20(s0)
	bne	a5,zero,.L106
	.loc 2 499 60
	lw	a5,-28(s0)
	.loc 2 499 14
	mv	a0,a5
	.loc 2 500 73
	lw	a5,-28(s0)
	.loc 2 500 69
	addi	a3,a5,104
	.loc 2 499 14
	addi	a5,s0,-44
	addi	a4,s0,-36
	lw	a2,-72(s0)
	lw	a1,-68(s0)
	call	mbedtls_ecdsa_verify
	mv	a5,a0
	.loc 2 499 14 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L99
.L104:
	.loc 2 484 9 is_stmt 1
	nop
	j	.L99
.L105:
	.loc 2 491 9
	nop
	j	.L99
.L106:
	.loc 2 496 9
	nop
.L99:
	.loc 2 503 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 504 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 505 5
	lw	a5,-28(s0)
	mv	a0,a5
	call	mbedtls_ecp_keypair_free
	.loc 2 506 5
	lw	a5,-28(s0)
	mv	a0,a5
	call	free
	.loc 2 508 12
	lw	a5,-20(s0)
.L103:
	.loc 2 509 1
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
.LFE84:
	.size	mbedtls_psa_ecdsa_verify_hash, .-mbedtls_psa_ecdsa_verify_hash
	.section	.text.mbedtls_psa_key_agreement_ecdh,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_key_agreement_ecdh
	.type	mbedtls_psa_key_agreement_ecdh, @function
mbedtls_psa_key_agreement_ecdh:
.LFB85:
	.loc 2 525 1
	.cfi_startproc
	addi	sp,sp,-320
	.cfi_def_cfa_offset 320
	sw	ra,316(sp)
	sw	s0,312(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,320
	.cfi_def_cfa 8, 0
	sw	a0,-292(s0)
	sw	a1,-296(s0)
	sw	a2,-300(s0)
	sw	a3,-304(s0)
	sw	a4,-308(s0)
	sw	a5,-312(s0)
	sw	a6,-316(s0)
	sw	a7,-320(s0)
	.loc 2 527 23
	lw	a5,-292(s0)
	lhu	a5,0(a5)
	.loc 2 527 31
	andi	a4,a5,-256
	.loc 2 527 8
	li	a5,28672
	addi	a5,a5,256
	bne	a4,a5,.L108
	.loc 2 528 53
	lw	a4,-304(s0)
	li	a5,-151060480
	and	a4,a4,a5
	li	a5,150994944
	or	a4,a4,a5
	.loc 2 527 91 discriminator 1
	li	a5,151126016
	beq	a4,a5,.L109
.L108:
	.loc 2 529 16
	li	a5,-135
	j	.L118
.L109:
	.loc 2 531 26
	sw	zero,-28(s0)
	.loc 2 533 19
	lw	a5,-292(s0)
	lhu	a0,0(a5)
	.loc 2 534 19
	lw	a5,-292(s0)
	lhu	a5,2(a5)
	.loc 2 532 14
	mv	a1,a5
	addi	a5,s0,-28
	mv	a4,a5
	lw	a3,-300(s0)
	lw	a2,-296(s0)
	call	mbedtls_psa_ecp_load_representation
	sw	a0,-20(s0)
	.loc 2 538 8
	lw	a5,-20(s0)
	beq	a5,zero,.L111
	.loc 2 539 16
	lw	a5,-20(s0)
	j	.L118
.L111:
	.loc 2 541 26
	sw	zero,-32(s0)
	.loc 2 543 12
	sw	zero,-276(s0)
	.loc 2 544 58
	lw	a5,-28(s0)
	.loc 2 544 30
	lbu	a5,0(a5)
	addi	a4,s0,-276
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecc_group_to_psa
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 2 545 5
	addi	a5,s0,-272
	mv	a0,a5
	call	mbedtls_ecdh_init
	.loc 2 548 36
	lbu	a5,-21(s0)
	slli	a4,a5,16
	srai	a4,a4,16
	li	a5,16384
	addi	a5,a5,256
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 2 547 14
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a1,-276(s0)
	addi	a4,s0,-32
	lw	a3,-312(s0)
	lw	a2,-308(s0)
	mv	a0,a5
	call	mbedtls_psa_ecp_load_representation
	sw	a0,-20(s0)
	.loc 2 553 8
	lw	a5,-20(s0)
	bne	a5,zero,.L119
	.loc 2 557 14
	lw	a4,-32(s0)
	addi	a5,s0,-272
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecdh_get_params
	mv	a5,a0
	.loc 2 557 14 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	.loc 2 559 8 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L120
	.loc 2 562 14
	lw	a4,-28(s0)
	addi	a5,s0,-272
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecdh_get_params
	mv	a5,a0
	.loc 2 562 14 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	.loc 2 564 8 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L121
	.loc 2 568 14
	addi	a0,s0,-272
	li	a5,0
	lui	a4,%hi(mbedtls_psa_get_random)
	addi	a4,a4,%lo(mbedtls_psa_get_random)
	lw	a3,-320(s0)
	lw	a2,-316(s0)
	lw	a1,0(s0)
	call	mbedtls_ecdh_calc_secret
	mv	a5,a0
	.loc 2 568 14 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	.loc 2 574 8 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L122
	.loc 2 577 18
	lw	a5,-276(s0)
	addi	a5,a5,7
	.loc 2 577 24
	srli	a4,a5,3
	.loc 2 577 33
	lw	a5,0(s0)
	lw	a5,0(a5)
	.loc 2 577 8
	beq	a4,a5,.L123
	.loc 2 578 16
	li	a5,-151
	sw	a5,-20(s0)
	j	.L113
.L119:
	.loc 2 554 9
	nop
	j	.L113
.L120:
	.loc 2 560 9
	nop
	j	.L113
.L121:
	.loc 2 565 9
	nop
	j	.L113
.L122:
	.loc 2 575 9
	nop
	j	.L113
.L123:
	.loc 2 580 1
	nop
.L113:
	.loc 2 581 8
	lw	a5,-20(s0)
	beq	a5,zero,.L117
	.loc 2 582 9
	lw	a1,-320(s0)
	lw	a0,-316(s0)
	call	mbedtls_platform_zeroize
.L117:
	.loc 2 584 5
	addi	a5,s0,-272
	mv	a0,a5
	call	mbedtls_ecdh_free
	.loc 2 585 5
	lw	a5,-32(s0)
	mv	a0,a5
	call	mbedtls_ecp_keypair_free
	.loc 2 586 5
	lw	a5,-32(s0)
	mv	a0,a5
	call	free
	.loc 2 587 5
	lw	a5,-28(s0)
	mv	a0,a5
	call	mbedtls_ecp_keypair_free
	.loc 2 588 5
	lw	a5,-28(s0)
	mv	a0,a5
	call	free
	.loc 2 589 12
	lw	a5,-20(s0)
.L118:
	.loc 2 590 1
	mv	a0,a5
	lw	ra,316(sp)
	.cfi_restore 1
	lw	s0,312(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 320
	addi	sp,sp,320
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE85:
	.size	mbedtls_psa_key_agreement_ecdh, .-mbedtls_psa_key_agreement_ecdh
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_types.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_struct.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecp.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecdh.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecdsa.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_core.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x10ba
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x20
	.4byte	.LASF162
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
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
	.uleb128 0x21
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0xb
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0xf
	.4byte	0x95
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x45
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x22
	.byte	0x4
	.uleb128 0x4
	.4byte	0x32
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x3b
	.byte	0x11
	.4byte	0x89
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x4e
	.byte	0x12
	.4byte	0xa6
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x61
	.byte	0x11
	.4byte	0x95
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.byte	0x86
	.byte	0x12
	.4byte	0xb2
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x5
	.byte	0xb7
	.byte	0x12
	.4byte	0xb2
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x113
	.byte	0x12
	.4byte	0xb2
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x124
	.byte	0x16
	.4byte	0x108
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x143
	.byte	0x12
	.4byte	0xb2
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x1b0
	.byte	0x25
	.4byte	0x141
	.uleb128 0xf
	.4byte	0x12f
	.uleb128 0x19
	.4byte	.LASF33
	.byte	0x18
	.byte	0x6
	.2byte	0x127
	.byte	0x8
	.4byte	0x195
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x12c
	.byte	0x14
	.4byte	0xd8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x12d
	.byte	0x14
	.4byte	0x536
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x12e
	.byte	0x18
	.4byte	0xfc
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x12f
	.byte	0x16
	.4byte	0x529
	.byte	0x8
	.uleb128 0xe
	.string	"id"
	.byte	0x6
	.2byte	0x13b
	.byte	0x1a
	.4byte	0x115
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x7
	.byte	0xd1
	.byte	0xd
	.4byte	0x1a1
	.uleb128 0x1a
	.4byte	0x68
	.4byte	0x1ba
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0xc0
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.4byte	0x76
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x8
	.byte	0xaa
	.byte	0x12
	.4byte	0xb2
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x8
	.byte	0x8
	.byte	0xd0
	.4byte	0x1f9
	.uleb128 0x5
	.string	"p"
	.byte	0x8
	.byte	0xd5
	.byte	0x17
	.4byte	0x1f9
	.byte	0
	.uleb128 0x5
	.string	"s"
	.byte	0x8
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x5
	.string	"n"
	.byte	0x8
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	0x1bf
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x8
	.byte	0xf0
	.byte	0x1
	.4byte	0x1cb
	.uleb128 0xf
	.4byte	0x1fe
	.uleb128 0x1b
	.4byte	0x32
	.byte	0x9
	.byte	0x66
	.4byte	0x26f
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x9
	.byte	0x75
	.byte	0x3
	.4byte	0x20f
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0x18
	.byte	0x9
	.byte	0x9e
	.4byte	0x2a9
	.uleb128 0x5
	.string	"X"
	.byte	0x9
	.byte	0x9f
	.byte	0x11
	.4byte	0x1fe
	.byte	0
	.uleb128 0x5
	.string	"Y"
	.byte	0x9
	.byte	0xa0
	.byte	0x11
	.4byte	0x1fe
	.byte	0x8
	.uleb128 0x5
	.string	"Z"
	.byte	0x9
	.byte	0xa1
	.byte	0x11
	.4byte	0x1fe
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x9
	.byte	0xa3
	.byte	0x1
	.4byte	0x27b
	.uleb128 0xf
	.4byte	0x2a9
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x60
	.byte	0x9
	.byte	0xe9
	.4byte	0x37e
	.uleb128 0x5
	.string	"id"
	.byte	0x9
	.byte	0xea
	.byte	0x1a
	.4byte	0x26f
	.byte	0
	.uleb128 0x5
	.string	"P"
	.byte	0x9
	.byte	0xeb
	.byte	0x11
	.4byte	0x1fe
	.byte	0x4
	.uleb128 0x5
	.string	"A"
	.byte	0x9
	.byte	0xec
	.byte	0x11
	.4byte	0x1fe
	.byte	0xc
	.uleb128 0x5
	.string	"B"
	.byte	0x9
	.byte	0xf1
	.byte	0x11
	.4byte	0x1fe
	.byte	0x14
	.uleb128 0x5
	.string	"G"
	.byte	0x9
	.byte	0xf3
	.byte	0x17
	.4byte	0x2a9
	.byte	0x1c
	.uleb128 0x5
	.string	"N"
	.byte	0x9
	.byte	0xf4
	.byte	0x11
	.4byte	0x1fe
	.byte	0x34
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x9
	.byte	0xf5
	.byte	0xc
	.4byte	0x76
	.byte	0x3c
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x9
	.byte	0xf6
	.byte	0xc
	.4byte	0x76
	.byte	0x40
	.uleb128 0x5
	.string	"h"
	.byte	0x9
	.byte	0xfb
	.byte	0x12
	.4byte	0x6f
	.byte	0x44
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x9
	.byte	0xfc
	.byte	0xa
	.4byte	0x392
	.byte	0x48
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x9
	.byte	0xfe
	.byte	0xa
	.4byte	0x3b0
	.byte	0x4c
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x9
	.byte	0xff
	.byte	0xa
	.4byte	0x3b0
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x9
	.2byte	0x100
	.byte	0xb
	.4byte	0xbe
	.byte	0x54
	.uleb128 0xe
	.string	"T"
	.byte	0x9
	.2byte	0x101
	.byte	0x18
	.4byte	0x3ab
	.byte	0x58
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x9
	.2byte	0x102
	.byte	0xc
	.4byte	0x76
	.byte	0x5c
	.byte	0
	.uleb128 0x1a
	.4byte	0x68
	.4byte	0x38d
	.uleb128 0x1
	.4byte	0x38d
	.byte	0
	.uleb128 0x4
	.4byte	0x1fe
	.uleb128 0x4
	.4byte	0x37e
	.uleb128 0x1a
	.4byte	0x68
	.4byte	0x3ab
	.uleb128 0x1
	.4byte	0x3ab
	.uleb128 0x1
	.4byte	0xbe
	.byte	0
	.uleb128 0x4
	.4byte	0x2a9
	.uleb128 0x4
	.4byte	0x397
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x9
	.2byte	0x104
	.byte	0x1
	.4byte	0x2ba
	.uleb128 0xf
	.4byte	0x3b5
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x9
	.2byte	0x16c
	.byte	0x28
	.4byte	0x3d4
	.uleb128 0x1d
	.4byte	.LASF61
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x9
	.2byte	0x173
	.byte	0x2b
	.4byte	0x3e6
	.uleb128 0x1d
	.4byte	.LASF62
	.uleb128 0x23
	.byte	0x10
	.byte	0x9
	.2byte	0x178
	.byte	0x9
	.4byte	0x42d
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x9
	.2byte	0x179
	.byte	0xe
	.4byte	0x6f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x9
	.2byte	0x17a
	.byte	0xe
	.4byte	0x6f
	.byte	0x4
	.uleb128 0xe
	.string	"rsm"
	.byte	0x9
	.2byte	0x17b
	.byte	0x22
	.4byte	0x42d
	.byte	0x8
	.uleb128 0xe
	.string	"ma"
	.byte	0x9
	.2byte	0x17c
	.byte	0x25
	.4byte	0x432
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	0x3c7
	.uleb128 0x4
	.4byte	0x3d9
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x9
	.2byte	0x17d
	.byte	0x3
	.4byte	0x3eb
	.uleb128 0x19
	.4byte	.LASF66
	.byte	0x80
	.byte	0x9
	.2byte	0x1ac
	.byte	0x10
	.4byte	0x479
	.uleb128 0xe
	.string	"grp"
	.byte	0x9
	.2byte	0x1ad
	.byte	0x17
	.4byte	0x3b5
	.byte	0
	.uleb128 0xe
	.string	"d"
	.byte	0x9
	.2byte	0x1ae
	.byte	0x11
	.4byte	0x1fe
	.byte	0x60
	.uleb128 0xe
	.string	"Q"
	.byte	0x9
	.2byte	0x1af
	.byte	0x17
	.4byte	0x2a9
	.byte	0x68
	.byte	0
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x9
	.2byte	0x1b1
	.byte	0x1
	.4byte	0x444
	.uleb128 0xf
	.4byte	0x479
	.uleb128 0x1b
	.4byte	0x32
	.byte	0xa
	.byte	0x2f
	.4byte	0x4df
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x11
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x12
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0xa
	.byte	0x3c
	.byte	0x3
	.4byte	0x48b
	.uleb128 0x4
	.4byte	0x95
	.uleb128 0x19
	.4byte	.LASF80
	.byte	0xc
	.byte	0x6
	.2byte	0x10c
	.byte	0x8
	.4byte	0x529
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x10d
	.byte	0x15
	.4byte	0x122
	.byte	0
	.uleb128 0xe
	.string	"alg"
	.byte	0x6
	.2byte	0x10e
	.byte	0x15
	.4byte	0xf0
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x10f
	.byte	0x15
	.4byte	0xf0
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x111
	.byte	0x21
	.4byte	0x4f0
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x11c
	.byte	0x12
	.4byte	0xa6
	.uleb128 0x4
	.4byte	0xa1
	.uleb128 0x4
	.4byte	0x13c
	.uleb128 0x1b
	.4byte	0x32
	.byte	0xb
	.byte	0x3b
	.4byte	0x565
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0xb
	.byte	0x3e
	.byte	0x3
	.4byte	0x54d
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0xf0
	.byte	0xb
	.byte	0x69
	.4byte	0x602
	.uleb128 0x5
	.string	"grp"
	.byte	0xb
	.byte	0x6b
	.byte	0x17
	.4byte	0x3b5
	.byte	0
	.uleb128 0x5
	.string	"d"
	.byte	0xb
	.byte	0x6c
	.byte	0x11
	.4byte	0x1fe
	.byte	0x60
	.uleb128 0x5
	.string	"Q"
	.byte	0xb
	.byte	0x6d
	.byte	0x17
	.4byte	0x2a9
	.byte	0x68
	.uleb128 0x5
	.string	"Qp"
	.byte	0xb
	.byte	0x6e
	.byte	0x17
	.4byte	0x2a9
	.byte	0x80
	.uleb128 0x5
	.string	"z"
	.byte	0xb
	.byte	0x6f
	.byte	0x11
	.4byte	0x1fe
	.byte	0x98
	.uleb128 0x10
	.4byte	.LASF89
	.byte	0xb
	.byte	0x70
	.byte	0x9
	.4byte	0x68
	.byte	0xa0
	.uleb128 0x5
	.string	"Vi"
	.byte	0xb
	.byte	0x71
	.byte	0x17
	.4byte	0x2a9
	.byte	0xa4
	.uleb128 0x5
	.string	"Vf"
	.byte	0xb
	.byte	0x72
	.byte	0x17
	.4byte	0x2a9
	.byte	0xbc
	.uleb128 0x5
	.string	"_d"
	.byte	0xb
	.byte	0x73
	.byte	0x11
	.4byte	0x1fe
	.byte	0xd4
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0xb
	.byte	0x75
	.byte	0x9
	.4byte	0x68
	.byte	0xdc
	.uleb128 0x5
	.string	"rs"
	.byte	0xb
	.byte	0x76
	.byte	0x1d
	.4byte	0x437
	.byte	0xe0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0xb
	.byte	0x8e
	.byte	0x1
	.4byte	0x571
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0xb
	.2byte	0x108
	.4byte	0x620
	.uleb128 0x1
	.4byte	0x620
	.byte	0
	.uleb128 0x4
	.4byte	0x602
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x7
	.byte	0x9f
	.4byte	0x63b
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.4byte	.LASF93
	.byte	0xb
	.2byte	0x1ad
	.byte	0x5
	.4byte	0x68
	.4byte	0x66b
	.uleb128 0x1
	.4byte	0x620
	.uleb128 0x1
	.4byte	0x1ba
	.uleb128 0x1
	.4byte	0xc0
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x66b
	.uleb128 0x1
	.4byte	0xbe
	.byte	0
	.uleb128 0x4
	.4byte	0x195
	.uleb128 0x8
	.4byte	.LASF94
	.byte	0xb
	.2byte	0x157
	.byte	0x5
	.4byte	0x68
	.4byte	0x691
	.uleb128 0x1
	.4byte	0x620
	.uleb128 0x1
	.4byte	0x691
	.uleb128 0x1
	.4byte	0x565
	.byte	0
	.uleb128 0x4
	.4byte	0x486
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0xb
	.byte	0xec
	.4byte	0x6a7
	.uleb128 0x1
	.4byte	0x620
	.byte	0
	.uleb128 0x11
	.4byte	.LASF96
	.byte	0x1
	.byte	0x57
	.byte	0x12
	.4byte	0xe4
	.4byte	0x6c2
	.uleb128 0x1
	.4byte	0x26f
	.uleb128 0x1
	.4byte	0x1ba
	.byte	0
	.uleb128 0x8
	.4byte	.LASF97
	.byte	0xc
	.2byte	0x177
	.byte	0x5
	.4byte	0x68
	.4byte	0x6f2
	.uleb128 0x1
	.4byte	0x6f2
	.uleb128 0x1
	.4byte	0x6f7
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x6fc
	.uleb128 0x1
	.4byte	0x701
	.uleb128 0x1
	.4byte	0x701
	.byte	0
	.uleb128 0x4
	.4byte	0x3b5
	.uleb128 0x4
	.4byte	0x39
	.uleb128 0x4
	.4byte	0x2b5
	.uleb128 0x4
	.4byte	0x20a
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x227
	.byte	0x5
	.4byte	0x68
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x38d
	.uleb128 0x1
	.4byte	0x6f7
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x103
	.4byte	0x739
	.uleb128 0x1
	.4byte	0x38d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x248
	.byte	0x5
	.4byte	0x68
	.4byte	0x75a
	.uleb128 0x1
	.4byte	0x701
	.uleb128 0x1
	.4byte	0xc0
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0xc
	.byte	0xa2
	.byte	0x5
	.4byte	0x68
	.4byte	0x793
	.uleb128 0x1
	.4byte	0x6f2
	.uleb128 0x1
	.4byte	0x38d
	.uleb128 0x1
	.4byte	0x38d
	.uleb128 0x1
	.4byte	0x701
	.uleb128 0x1
	.4byte	0x6f7
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x66b
	.uleb128 0x1
	.4byte	0xbe
	.byte	0
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0xc
	.byte	0xcf
	.byte	0x5
	.4byte	0x68
	.4byte	0x7d1
	.uleb128 0x1
	.4byte	0x6f2
	.uleb128 0x1
	.4byte	0x38d
	.uleb128 0x1
	.4byte	0x38d
	.uleb128 0x1
	.4byte	0x701
	.uleb128 0x1
	.4byte	0x6f7
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x4df
	.uleb128 0x1
	.4byte	0x66b
	.uleb128 0x1
	.4byte	0xbe
	.byte	0
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x8
	.byte	0xfa
	.4byte	0x7e2
	.uleb128 0x1
	.4byte	0x38d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x49c
	.byte	0x5
	.4byte	0x68
	.4byte	0x808
	.uleb128 0x1
	.4byte	0x808
	.uleb128 0x1
	.4byte	0x38d
	.uleb128 0x1
	.4byte	0x66b
	.uleb128 0x1
	.4byte	0xbe
	.byte	0
	.uleb128 0x4
	.4byte	0x3c2
	.uleb128 0x8
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x577
	.byte	0x5
	.4byte	0x68
	.4byte	0x833
	.uleb128 0x1
	.4byte	0x691
	.uleb128 0x1
	.4byte	0x1ba
	.uleb128 0x1
	.4byte	0xc0
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x11
	.4byte	.LASF106
	.byte	0xd
	.byte	0x21
	.byte	0x8
	.4byte	0xbe
	.4byte	0x853
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x305
	.byte	0x5
	.4byte	0x68
	.4byte	0x883
	.uleb128 0x1
	.4byte	0x808
	.uleb128 0x1
	.4byte	0x6fc
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x1ba
	.uleb128 0x1
	.4byte	0xc0
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0x1
	.byte	0x39
	.byte	0x5
	.4byte	0x68
	.4byte	0x8a3
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0xc0
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x9
	.2byte	0x3c7
	.byte	0x5
	.4byte	0x68
	.4byte	0x8d3
	.uleb128 0x1
	.4byte	0x6f2
	.uleb128 0x1
	.4byte	0x3ab
	.uleb128 0x1
	.4byte	0x701
	.uleb128 0x1
	.4byte	0x6fc
	.uleb128 0x1
	.4byte	0x66b
	.uleb128 0x1
	.4byte	0xbe
	.byte	0
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x2cc
	.byte	0x5
	.4byte	0x68
	.4byte	0x8ea
	.uleb128 0x1
	.4byte	0x3ab
	.byte	0
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0xe
	.byte	0x5e
	.4byte	0x8fb
	.uleb128 0x1
	.4byte	0xbe
	.byte	0
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x288
	.4byte	0x90d
	.uleb128 0x1
	.4byte	0x90d
	.byte	0
	.uleb128 0x4
	.4byte	0x479
	.uleb128 0x8
	.4byte	.LASF113
	.byte	0x9
	.2byte	0x530
	.byte	0x5
	.4byte	0x68
	.4byte	0x938
	.uleb128 0x1
	.4byte	0x26f
	.uleb128 0x1
	.4byte	0x90d
	.uleb128 0x1
	.4byte	0x6f7
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x474
	.byte	0x5
	.4byte	0x68
	.4byte	0x954
	.uleb128 0x1
	.4byte	0x808
	.uleb128 0x1
	.4byte	0x6fc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x323
	.byte	0x5
	.4byte	0x68
	.4byte	0x97a
	.uleb128 0x1
	.4byte	0x808
	.uleb128 0x1
	.4byte	0x3ab
	.uleb128 0x1
	.4byte	0x6f7
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.4byte	.LASF116
	.byte	0xf
	.2byte	0x119
	.byte	0xe
	.4byte	0xcc
	.4byte	0x991
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x8
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x369
	.byte	0x5
	.4byte	0x68
	.4byte	0x9ad
	.uleb128 0x1
	.4byte	0x6f2
	.uleb128 0x1
	.4byte	0x26f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0x1
	.byte	0x66
	.byte	0x16
	.4byte	0x26f
	.4byte	0x9c8
	.uleb128 0x1
	.4byte	0xe4
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x9
	.2byte	0x26f
	.4byte	0x9da
	.uleb128 0x1
	.4byte	0x90d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0xe
	.byte	0x5a
	.byte	0x7
	.4byte	0xbe
	.4byte	0x9f5
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x12
	.4byte	.LASF133
	.2byte	0x207
	.4byte	0xcc
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb05
	.uleb128 0x2
	.4byte	.LASF121
	.2byte	0x208
	.byte	0x21
	.4byte	0x548
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x2
	.4byte	.LASF122
	.2byte	0x209
	.byte	0x14
	.4byte	0x543
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x209
	.byte	0x27
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x17
	.string	"alg"
	.2byte	0x20a
	.byte	0x15
	.4byte	0xf0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x20a
	.byte	0x29
	.4byte	0x543
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x2
	.4byte	.LASF125
	.2byte	0x20a
	.byte	0x3a
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2
	.4byte	.LASF126
	.2byte	0x20b
	.byte	0xe
	.4byte	0x4eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x2
	.4byte	.LASF127
	.2byte	0x20b
	.byte	0x24
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2
	.4byte	.LASF128
	.2byte	0x20c
	.byte	0xd
	.4byte	0x1ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF129
	.2byte	0x20e
	.byte	0x12
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"ecp"
	.2byte	0x213
	.byte	0x1a
	.4byte	0x90d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF130
	.2byte	0x21d
	.byte	0x1a
	.4byte	0x90d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF131
	.2byte	0x21e
	.byte	0x1a
	.4byte	0x602
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x9
	.4byte	.LASF28
	.2byte	0x21f
	.byte	0xc
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x9
	.4byte	.LASF132
	.2byte	0x220
	.byte	0x16
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x18
	.4byte	.LASF140
	.2byte	0x244
	.4byte	.L113
	.byte	0
	.uleb128 0x12
	.4byte	.LASF134
	.2byte	0x1c1
	.4byte	0xcc
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbed
	.uleb128 0x2
	.4byte	.LASF121
	.2byte	0x1c2
	.byte	0x21
	.4byte	0x548
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF122
	.2byte	0x1c3
	.byte	0x14
	.4byte	0x543
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x1c3
	.byte	0x27
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.string	"alg"
	.2byte	0x1c4
	.byte	0x15
	.4byte	0xf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF135
	.2byte	0x1c4
	.byte	0x29
	.4byte	0x543
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF136
	.2byte	0x1c4
	.byte	0x36
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF137
	.2byte	0x1c5
	.byte	0x14
	.4byte	0x543
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.4byte	.LASF138
	.2byte	0x1c5
	.byte	0x26
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x9
	.4byte	.LASF129
	.2byte	0x1c7
	.byte	0x12
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"ecp"
	.2byte	0x1c8
	.byte	0x1a
	.4byte	0x90d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF139
	.2byte	0x1c9
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"r"
	.2byte	0x1ca
	.byte	0x11
	.4byte	0x1fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"s"
	.2byte	0x1ca
	.byte	0x14
	.4byte	0x1fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.4byte	.LASF141
	.2byte	0x1f6
	.4byte	.L99
	.byte	0
	.uleb128 0x12
	.4byte	.LASF142
	.2byte	0x1b2
	.4byte	0xcc
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc25
	.uleb128 0x17
	.string	"ecp"
	.2byte	0x1b2
	.byte	0x44
	.4byte	0x90d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"ret"
	.2byte	0x1b4
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF143
	.2byte	0x16b
	.4byte	0xcc
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd57
	.uleb128 0x2
	.4byte	.LASF121
	.2byte	0x16c
	.byte	0x21
	.4byte	0x548
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF122
	.2byte	0x16d
	.byte	0x14
	.4byte	0x543
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x16d
	.byte	0x27
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x17
	.string	"alg"
	.2byte	0x16e
	.byte	0x15
	.4byte	0xf0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.4byte	.LASF135
	.2byte	0x16e
	.byte	0x29
	.4byte	0x543
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.4byte	.LASF136
	.2byte	0x16e
	.byte	0x36
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.4byte	.LASF137
	.2byte	0x16f
	.byte	0xe
	.4byte	0x4eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2
	.4byte	.LASF144
	.2byte	0x16f
	.byte	0x20
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2
	.4byte	.LASF138
	.2byte	0x16f
	.byte	0x38
	.4byte	0x1ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF129
	.2byte	0x171
	.byte	0x12
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.string	"ecp"
	.2byte	0x172
	.byte	0x1a
	.4byte	0x90d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"ret"
	.2byte	0x173
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF139
	.2byte	0x174
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.string	"r"
	.2byte	0x175
	.byte	0x11
	.4byte	0x1fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"s"
	.2byte	0x175
	.byte	0x14
	.4byte	0x1fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.4byte	.LASF141
	.2byte	0x1a5
	.4byte	.L81
	.uleb128 0x24
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x9
	.4byte	.LASF145
	.2byte	0x18b
	.byte	0x19
	.4byte	0xf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF146
	.2byte	0x18c
	.byte	0x1b
	.4byte	0x4df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF147
	.2byte	0x140
	.4byte	0xcc
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf9
	.uleb128 0x2
	.4byte	.LASF121
	.2byte	0x141
	.byte	0x21
	.4byte	0x548
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2
	.4byte	.LASF122
	.2byte	0x142
	.byte	0xe
	.4byte	0x4eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x142
	.byte	0x21
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0x142
	.byte	0x3a
	.4byte	0x1ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x9
	.4byte	.LASF132
	.2byte	0x144
	.byte	0x16
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x9
	.4byte	.LASF149
	.2byte	0x146
	.byte	0x1a
	.4byte	0x26f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xa
	.string	"ecp"
	.2byte	0x14c
	.byte	0x19
	.4byte	0x479
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0xa
	.string	"ret"
	.2byte	0x14e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.4byte	.LASF140
	.2byte	0x15f
	.4byte	.L72
	.byte	0
	.uleb128 0x12
	.4byte	.LASF150
	.2byte	0x122
	.4byte	0xcc
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe8b
	.uleb128 0x2
	.4byte	.LASF121
	.2byte	0x123
	.byte	0x21
	.4byte	0x548
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF122
	.2byte	0x124
	.byte	0x14
	.4byte	0x543
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x124
	.byte	0x27
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF151
	.2byte	0x125
	.byte	0xe
	.4byte	0x4eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF152
	.2byte	0x125
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF153
	.2byte	0x125
	.byte	0x2e
	.4byte	0x1ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.4byte	.LASF129
	.2byte	0x127
	.byte	0x12
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"ecp"
	.2byte	0x128
	.byte	0x1a
	.4byte	0x90d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF154
	.byte	0xfb
	.4byte	0xcc
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xefe
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x2
	.byte	0xfb
	.byte	0x38
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x25
	.string	"ecp"
	.byte	0x2
	.byte	0xfc
	.byte	0x3e
	.4byte	0x90d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF151
	.byte	0x2
	.byte	0xfd
	.byte	0x32
	.4byte	0x4eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF152
	.byte	0x2
	.byte	0xfe
	.byte	0x30
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.4byte	.LASF153
	.byte	0x2
	.byte	0xff
	.byte	0x31
	.4byte	0x1ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.4byte	.LASF129
	.2byte	0x101
	.byte	0x12
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0xd1
	.4byte	0xcc
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa5
	.uleb128 0x6
	.4byte	.LASF121
	.byte	0x2
	.byte	0xd2
	.byte	0x21
	.4byte	0x548
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF151
	.byte	0x2
	.byte	0xd3
	.byte	0x14
	.4byte	0x543
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF153
	.byte	0x2
	.byte	0xd3
	.byte	0x21
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF122
	.byte	0x2
	.byte	0xd4
	.byte	0xe
	.4byte	0x4eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.4byte	.LASF123
	.byte	0x2
	.byte	0xd4
	.byte	0x21
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.4byte	.LASF148
	.byte	0x2
	.byte	0xd5
	.byte	0xd
	.4byte	0x1ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x2
	.byte	0xd5
	.byte	0x28
	.4byte	0x1ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.4byte	.LASF129
	.byte	0xd7
	.byte	0x12
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.string	"ecp"
	.byte	0xd8
	.4byte	0x90d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0xf3
	.4byte	.L50
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF156
	.byte	0x5a
	.4byte	0xcc
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1059
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x2
	.byte	0x5b
	.byte	0x14
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x6
	.4byte	.LASF157
	.byte	0x2
	.byte	0x5b
	.byte	0x21
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.4byte	.LASF151
	.byte	0x2
	.byte	0x5c
	.byte	0x14
	.4byte	0x543
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.4byte	.LASF153
	.byte	0x2
	.byte	0x5c
	.byte	0x21
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.4byte	.LASF158
	.byte	0x2
	.byte	0x5d
	.byte	0x1b
	.4byte	0x1059
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x13
	.4byte	.LASF149
	.byte	0x5f
	.byte	0x1a
	.4byte	0x26f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x13
	.4byte	.LASF129
	.byte	0x60
	.byte	0x12
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.string	"ecp"
	.byte	0x61
	.4byte	0x90d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF139
	.byte	0x62
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF159
	.byte	0x63
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0xbd
	.4byte	.L35
	.byte	0
	.uleb128 0x4
	.4byte	0x90d
	.uleb128 0x26
	.4byte	.LASF163
	.byte	0x2
	.byte	0x28
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1097
	.uleb128 0x6
	.4byte	.LASF160
	.byte	0x2
	.byte	0x28
	.byte	0x32
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x2
	.byte	0x28
	.byte	0x42
	.4byte	0x1ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.4byte	.LASF164
	.byte	0x1
	.byte	0x8a
	.byte	0x21
	.4byte	0x4df
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF161
	.byte	0x1
	.byte	0x8a
	.byte	0x4e
	.4byte	0xf0
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.sleb128 26
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
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
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
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
	.4byte	.LFB68
	.uleb128 .LFE68-.LFB68
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
	.byte	0x7
	.4byte	.LFB83
	.uleb128 .LFE83-.LFB83
	.byte	0x7
	.4byte	.LFB84
	.uleb128 .LFE84-.LFB84
	.byte	0x7
	.4byte	.LFB85
	.uleb128 .LFE85-.LFB85
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"psa_ecc_family_t"
.LASF12:
	.string	"size_t"
.LASF21:
	.string	"psa_algorithm_t"
.LASF114:
	.string	"mbedtls_ecp_check_pubkey"
.LASF115:
	.string	"mbedtls_ecp_point_read_binary"
.LASF47:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF27:
	.string	"type"
.LASF94:
	.string	"mbedtls_ecdh_get_params"
.LASF153:
	.string	"data_length"
.LASF9:
	.string	"long long unsigned int"
.LASF151:
	.string	"data"
.LASF57:
	.string	"t_data"
.LASF48:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF111:
	.string	"free"
.LASF34:
	.string	"mbedtls_mpi"
.LASF37:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF55:
	.string	"t_pre"
.LASF98:
	.string	"mbedtls_mpi_read_binary"
.LASF65:
	.string	"mbedtls_ecp_restart_ctx"
.LASF35:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF104:
	.string	"mbedtls_ecp_gen_privkey"
.LASF28:
	.string	"bits"
.LASF6:
	.string	"long int"
.LASF107:
	.string	"mbedtls_ecp_point_write_binary"
.LASF71:
	.string	"MBEDTLS_MD_SHA224"
.LASF136:
	.string	"hash_length"
.LASF163:
	.string	"check_ecc_parameters"
.LASF119:
	.string	"mbedtls_ecp_keypair_init"
.LASF122:
	.string	"key_buffer"
.LASF15:
	.string	"uint16_t"
.LASF113:
	.string	"mbedtls_ecp_read_key"
.LASF80:
	.string	"psa_key_policy_s"
.LASF83:
	.string	"psa_key_policy_t"
.LASF40:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF109:
	.string	"mbedtls_ecp_mul"
.LASF154:
	.string	"mbedtls_psa_ecp_export_key"
.LASF139:
	.string	"curve_bytes"
.LASF78:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF19:
	.string	"psa_key_type_t"
.LASF50:
	.string	"mbedtls_ecp_point"
.LASF112:
	.string	"mbedtls_ecp_keypair_free"
.LASF72:
	.string	"MBEDTLS_MD_SHA256"
.LASF124:
	.string	"peer_key"
.LASF36:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF130:
	.string	"their_key"
.LASF127:
	.string	"shared_secret_size"
.LASF164:
	.string	"mbedtls_md_type_from_psa_alg"
.LASF53:
	.string	"nbits"
.LASF156:
	.string	"mbedtls_psa_ecp_load_representation"
.LASF10:
	.string	"unsigned int"
.LASF39:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF97:
	.string	"mbedtls_ecdsa_verify"
.LASF67:
	.string	"MBEDTLS_MD_NONE"
.LASF76:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF134:
	.string	"mbedtls_psa_ecdsa_verify_hash"
.LASF7:
	.string	"long unsigned int"
.LASF54:
	.string	"modp"
.LASF45:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF150:
	.string	"mbedtls_psa_ecp_export_public_key"
.LASF69:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF79:
	.string	"mbedtls_md_type_t"
.LASF137:
	.string	"signature"
.LASF158:
	.string	"p_ecp"
.LASF5:
	.string	"short unsigned int"
.LASF63:
	.string	"ops_done"
.LASF103:
	.string	"mbedtls_mpi_init"
.LASF133:
	.string	"mbedtls_psa_key_agreement_ecdh"
.LASF24:
	.string	"mbedtls_svc_key_id_t"
.LASF46:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF61:
	.string	"mbedtls_ecp_restart_mul"
.LASF88:
	.string	"mbedtls_ecdh_context"
.LASF42:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF85:
	.string	"MBEDTLS_ECDH_OURS"
.LASF59:
	.string	"mbedtls_ecp_restart_mul_ctx"
.LASF99:
	.string	"mbedtls_mpi_free"
.LASF152:
	.string	"data_size"
.LASF22:
	.string	"psa_key_lifetime_t"
.LASF49:
	.string	"mbedtls_ecp_group_id"
.LASF33:
	.string	"psa_key_attributes_s"
.LASF101:
	.string	"mbedtls_ecdsa_sign"
.LASF159:
	.string	"explicit_bits"
.LASF41:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF149:
	.string	"grp_id"
.LASF30:
	.string	"policy"
.LASF96:
	.string	"mbedtls_ecc_group_to_psa"
.LASF144:
	.string	"signature_size"
.LASF125:
	.string	"peer_key_length"
.LASF84:
	.string	"psa_key_bits_t"
.LASF58:
	.string	"T_size"
.LASF74:
	.string	"MBEDTLS_MD_SHA512"
.LASF138:
	.string	"signature_length"
.LASF70:
	.string	"MBEDTLS_MD_SHA1"
.LASF77:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF141:
	.string	"cleanup"
.LASF102:
	.string	"mbedtls_ecdsa_sign_det_ext"
.LASF29:
	.string	"lifetime"
.LASF18:
	.string	"psa_status_t"
.LASF93:
	.string	"mbedtls_ecdh_calc_secret"
.LASF148:
	.string	"key_buffer_length"
.LASF157:
	.string	"curve_bits"
.LASF155:
	.string	"mbedtls_psa_ecp_import_key"
.LASF160:
	.string	"family"
.LASF32:
	.string	"mbedtls_mpi_uint"
.LASF13:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF145:
	.string	"hash_alg"
.LASF4:
	.string	"short int"
.LASF100:
	.string	"mbedtls_mpi_write_binary"
.LASF66:
	.string	"mbedtls_ecp_keypair"
.LASF105:
	.string	"mbedtls_ecp_write_key_ext"
.LASF60:
	.string	"mbedtls_ecp_restart_muladd_ctx"
.LASF142:
	.string	"mbedtls_psa_ecp_load_public_part"
.LASF140:
	.string	"exit"
.LASF51:
	.string	"mbedtls_ecp_group"
.LASF143:
	.string	"mbedtls_psa_ecdsa_sign_hash"
.LASF121:
	.string	"attributes"
.LASF16:
	.string	"uint32_t"
.LASF11:
	.string	"long double"
.LASF64:
	.string	"depth"
.LASF17:
	.string	"char"
.LASF108:
	.string	"mbedtls_psa_get_random"
.LASF92:
	.string	"mbedtls_platform_zeroize"
.LASF31:
	.string	"mbedtls_f_rng_t"
.LASF56:
	.string	"t_post"
.LASF89:
	.string	"point_format"
.LASF87:
	.string	"mbedtls_ecdh_side"
.LASF95:
	.string	"mbedtls_ecdh_init"
.LASF73:
	.string	"MBEDTLS_MD_SHA384"
.LASF68:
	.string	"MBEDTLS_MD_MD5"
.LASF26:
	.string	"psa_key_attributes_t"
.LASF131:
	.string	"ecdh"
.LASF162:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF135:
	.string	"hash"
.LASF43:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF116:
	.string	"mbedtls_to_psa_error"
.LASF118:
	.string	"mbedtls_ecc_group_from_psa"
.LASF81:
	.string	"usage"
.LASF23:
	.string	"psa_key_id_t"
.LASF91:
	.string	"mbedtls_ecdh_free"
.LASF161:
	.string	"psa_alg"
.LASF106:
	.string	"memset"
.LASF110:
	.string	"mbedtls_ecp_is_zero"
.LASF129:
	.string	"status"
.LASF120:
	.string	"calloc"
.LASF90:
	.string	"restart_enabled"
.LASF86:
	.string	"MBEDTLS_ECDH_THEIRS"
.LASF126:
	.string	"shared_secret"
.LASF25:
	.string	"psa_key_usage_t"
.LASF14:
	.string	"uint8_t"
.LASF52:
	.string	"pbits"
.LASF132:
	.string	"curve"
.LASF38:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF82:
	.string	"alg2"
.LASF147:
	.string	"mbedtls_psa_ecp_generate_key"
.LASF146:
	.string	"md_alg"
.LASF44:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF75:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF62:
	.string	"mbedtls_ecp_restart_muladd"
.LASF123:
	.string	"key_buffer_size"
.LASF128:
	.string	"shared_secret_length"
.LASF117:
	.string	"mbedtls_ecp_group_load"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_ecp.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
