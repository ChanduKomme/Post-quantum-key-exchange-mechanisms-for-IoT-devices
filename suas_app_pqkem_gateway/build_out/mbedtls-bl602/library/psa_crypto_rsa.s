	.file	"psa_crypto_rsa.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_rsa.c"
	.section	.text.mbedtls_md_get_size_from_type,"ax",@progbits
	.align	1
	.type	mbedtls_md_get_size_from_type, @function
mbedtls_md_get_size_from_type:
.LFB32:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.loc 1 247 1
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
	.loc 1 248 12
	lbu	a5,-17(s0)
	mv	a0,a5
	call	mbedtls_md_info_from_type
	mv	a5,a0
	.loc 1 248 12 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 1 249 1 is_stmt 1
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
	.size	mbedtls_md_get_size_from_type, .-mbedtls_md_get_size_from_type
	.section	.text.mbedtls_md_type_from_psa_alg,"ax",@progbits
	.align	1
	.type	mbedtls_md_type_from_psa_alg, @function
mbedtls_md_type_from_psa_alg:
.LFB68:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/psa_util.h"
	.loc 2 139 1
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
	.loc 2 140 12
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	.loc 2 141 1
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
	.section	.text.psa_check_rsa_key_byte_aligned,"ax",@progbits
	.align	1
	.type	psa_check_rsa_key_byte_aligned, @function
psa_check_rsa_key_byte_aligned:
.LFB76:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_rsa.c"
	.loc 3 44 1
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
	.loc 3 47 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 3 48 14
	addi	a1,s0,-28
	li	a5,0
	li	a4,0
	li	a3,0
	li	a2,0
	lw	a0,-36(s0)
	call	mbedtls_rsa_export
	mv	a5,a0
	.loc 3 48 14 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	.loc 3 50 8 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L6
	.loc 3 51 13
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	mv	a5,a0
	.loc 3 51 36 discriminator 1
	andi	a5,a5,7
	.loc 3 51 12 discriminator 1
	beq	a5,zero,.L6
	.loc 3 52 20
	li	a5,-134
	sw	a5,-20(s0)
.L6:
	.loc 3 55 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 3 56 12
	lw	a5,-20(s0)
	.loc 3 57 1
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
.LFE76:
	.size	psa_check_rsa_key_byte_aligned, .-psa_check_rsa_key_byte_aligned
	.section	.text.mbedtls_psa_rsa_load_representation,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_rsa_load_representation
	.type	mbedtls_psa_rsa_load_representation, @function
mbedtls_psa_rsa_load_representation:
.LFB77:
	.loc 3 62 1
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
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sh	a5,-34(s0)
	.loc 3 66 14
	li	a1,120
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 3 66 12 discriminator 1
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 3 67 9
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 3 67 8
	bne	a5,zero,.L9
	.loc 3 68 16
	li	a5,-141
	j	.L10
.L9:
	.loc 3 70 5
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_rsa_init
	.loc 3 73 18
	lhu	a4,-34(s0)
	li	a5,28672
	and	a4,a4,a5
	.loc 3 73 8
	li	a5,28672
	bne	a4,a5,.L11
	.loc 3 74 18
	lw	a5,-48(s0)
	lw	a5,0(a5)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_rsa_parse_key
	mv	a5,a0
	.loc 3 74 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L12
.L11:
	.loc 3 76 18 is_stmt 1
	lw	a5,-48(s0)
	lw	a5,0(a5)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_rsa_parse_pubkey
	mv	a5,a0
	.loc 3 76 18 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
.L12:
	.loc 3 78 8 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L16
	.loc 3 85 14
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_rsa_get_len
	mv	a5,a0
	.loc 3 85 10 discriminator 1
	slli	a5,a5,3
	sw	a5,-24(s0)
	.loc 3 86 8
	lw	a4,-24(s0)
	li	a5,4096
	bleu	a4,a5,.L15
	.loc 3 87 16
	li	a5,-134
	sw	a5,-20(s0)
	.loc 3 88 9
	j	.L14
.L15:
	.loc 3 90 14
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	psa_check_rsa_key_byte_aligned
	sw	a0,-20(s0)
	.loc 3 95 1
	j	.L14
.L16:
	.loc 3 79 9
	nop
.L14:
	.loc 3 96 12
	lw	a5,-20(s0)
.L10:
	.loc 3 97 1
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
.LFE77:
	.size	mbedtls_psa_rsa_load_representation, .-mbedtls_psa_rsa_load_representation
	.section	.text.mbedtls_psa_rsa_import_key,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_rsa_import_key
	.type	mbedtls_psa_rsa_import_key, @function
mbedtls_psa_rsa_import_key:
.LFB78:
	.loc 3 114 1
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
	.loc 3 116 26
	sw	zero,-24(s0)
	.loc 3 119 60
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	.loc 3 119 14
	addi	a4,s0,-24
	mv	a3,a4
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_psa_rsa_load_representation
	sw	a0,-20(s0)
	.loc 3 123 8
	lw	a5,-20(s0)
	bne	a5,zero,.L21
	.loc 3 127 32
	lw	a5,-24(s0)
	mv	a0,a5
	call	mbedtls_rsa_get_len
	mv	a5,a0
	.loc 3 127 13 discriminator 1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a5,a5,3
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a4,a5
	.loc 3 127 11 discriminator 1
	lw	a5,-60(s0)
	sw	a4,0(a5)
	.loc 3 133 51
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	.loc 3 133 14
	lw	a1,-24(s0)
	lw	a4,-56(s0)
	lw	a3,-52(s0)
	lw	a2,-48(s0)
	mv	a0,a5
	call	mbedtls_psa_rsa_export_key
	sw	a0,-20(s0)
	j	.L19
.L21:
	.loc 3 124 9
	nop
.L19:
	.loc 3 140 5
	lw	a5,-24(s0)
	mv	a0,a5
	call	mbedtls_rsa_free
	.loc 3 141 5
	lw	a5,-24(s0)
	mv	a0,a5
	call	free
	.loc 3 143 12
	lw	a5,-20(s0)
	.loc 3 144 1
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
	.size	mbedtls_psa_rsa_import_key, .-mbedtls_psa_rsa_import_key
	.section	.text.mbedtls_psa_rsa_export_key,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_rsa_export_key
	.type	mbedtls_psa_rsa_export_key, @function
mbedtls_psa_rsa_export_key:
.LFB79:
	.loc 3 156 1
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
	.loc 3 158 25
	lw	a4,-44(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	.loc 3 158 14
	sw	a5,-24(s0)
	.loc 3 163 18
	lhu	a4,-34(s0)
	li	a5,28672
	and	a4,a4,a5
	.loc 3 163 8
	li	a5,28672
	bne	a4,a5,.L23
	.loc 3 164 15
	addi	a5,s0,-24
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	mbedtls_rsa_write_key
	sw	a0,-20(s0)
	j	.L24
.L23:
	.loc 3 166 15
	addi	a5,s0,-24
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	mbedtls_rsa_write_pubkey
	sw	a0,-20(s0)
.L24:
	.loc 3 169 8
	lw	a5,-20(s0)
	bge	a5,zero,.L25
	.loc 3 171 9
	lw	a2,-48(s0)
	li	a1,0
	lw	a0,-44(s0)
	call	memset
	.loc 3 172 16
	lw	a0,-20(s0)
	call	mbedtls_to_psa_error
	mv	a5,a0
	j	.L29
.L25:
	.loc 3 178 13
	lw	a5,-20(s0)
	.loc 3 178 11
	slli	a5,a5,1
	.loc 3 178 8
	lw	a4,-48(s0)
	bltu	a4,a5,.L27
	.loc 3 179 39
	lw	a5,-20(s0)
	lw	a4,-48(s0)
	sub	a5,a4,a5
	lw	a4,-44(s0)
	add	a5,a4,a5
	.loc 3 179 9
	lw	a4,-20(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-44(s0)
	call	memcpy
	.loc 3 180 33
	lw	a5,-20(s0)
	lw	a4,-48(s0)
	sub	a5,a4,a5
	lw	a4,-44(s0)
	add	a5,a4,a5
	.loc 3 180 9
	lw	a4,-20(s0)
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset
	j	.L28
.L27:
	.loc 3 181 16
	lw	a5,-20(s0)
	.loc 3 181 15
	lw	a4,-48(s0)
	bleu	a4,a5,.L28
	.loc 3 182 40
	lw	a5,-20(s0)
	lw	a4,-48(s0)
	sub	a5,a4,a5
	lw	a4,-44(s0)
	add	a5,a4,a5
	.loc 3 182 9
	lw	a4,-20(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-44(s0)
	call	memmove
	.loc 3 183 9
	lw	a5,-20(s0)
	.loc 3 183 21
	lw	a4,-44(s0)
	add	a3,a4,a5
	.loc 3 183 9
	lw	a5,-20(s0)
	lw	a4,-48(s0)
	sub	a5,a4,a5
	mv	a2,a5
	li	a1,0
	mv	a0,a3
	call	memset
.L28:
	.loc 3 186 18
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 3 187 12
	li	a5,0
.L29:
	.loc 3 188 1
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
	.size	mbedtls_psa_rsa_export_key, .-mbedtls_psa_rsa_export_key
	.section	.text.mbedtls_psa_rsa_export_public_key,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_rsa_export_public_key
	.type	mbedtls_psa_rsa_export_public_key, @function
mbedtls_psa_rsa_export_public_key:
.LFB80:
	.loc 3 194 1
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
	.loc 3 195 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 3 196 26
	sw	zero,-24(s0)
	.loc 3 199 19
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	.loc 3 198 14
	addi	a4,s0,-24
	mv	a3,a4
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_psa_rsa_load_representation
	sw	a0,-20(s0)
	.loc 3 200 8
	lw	a5,-20(s0)
	bne	a5,zero,.L31
	.loc 3 201 18
	lw	a5,-24(s0)
	lw	a4,-56(s0)
	lw	a3,-52(s0)
	lw	a2,-48(s0)
	mv	a1,a5
	li	a5,16384
	addi	a0,a5,1
	call	mbedtls_psa_rsa_export_key
	sw	a0,-20(s0)
.L31:
	.loc 3 208 5
	lw	a5,-24(s0)
	mv	a0,a5
	call	mbedtls_rsa_free
	.loc 3 209 5
	lw	a5,-24(s0)
	mv	a0,a5
	call	free
	.loc 3 211 12
	lw	a5,-20(s0)
	.loc 3 212 1
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
	.size	mbedtls_psa_rsa_export_public_key, .-mbedtls_psa_rsa_export_public_key
	.section	.text.psa_rsa_read_exponent,"ax",@progbits
	.align	1
	.type	psa_rsa_read_exponent, @function
psa_rsa_read_exponent:
.LFB81:
	.loc 3 220 1
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
	.loc 3 222 14
	sw	zero,-24(s0)
	.loc 3 227 8
	lw	a4,-40(s0)
	li	a5,4
	bleu	a4,a5,.L34
	.loc 3 228 16
	li	a5,-134
	j	.L35
.L34:
	.loc 3 230 12
	sw	zero,-20(s0)
	.loc 3 230 5
	j	.L36
.L37:
	.loc 3 231 20
	lw	a5,-24(s0)
	slli	a5,a5,8
	.loc 3 231 35
	lw	a3,-36(s0)
	lw	a4,-20(s0)
	add	a4,a3,a4
	lbu	a4,0(a4)
	.loc 3 231 13
	or	a5,a5,a4
	sw	a5,-24(s0)
	.loc 3 230 32 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L36:
	.loc 3 230 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bltu	a4,a5,.L37
	.loc 3 233 13
	lw	a5,-24(s0)
	.loc 3 233 8
	bge	a5,zero,.L38
	.loc 3 234 16
	li	a5,-134
	j	.L35
.L38:
	.loc 3 236 15
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 3 237 12
	li	a5,0
.L35:
	.loc 3 238 1
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
	.size	psa_rsa_read_exponent, .-psa_rsa_read_exponent
	.section	.text.mbedtls_psa_rsa_generate_key,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_rsa_generate_key
	.type	mbedtls_psa_rsa_generate_key, @function
mbedtls_psa_rsa_generate_key:
.LFB82:
	.loc 3 244 1
	.cfi_startproc
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sw	ra,188(sp)
	sw	s0,184(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,192
	.cfi_def_cfa 8, 0
	sw	a0,-164(s0)
	sw	a1,-168(s0)
	sw	a2,-172(s0)
	sw	a3,-176(s0)
	sw	a4,-180(s0)
	sw	a5,-184(s0)
	.loc 3 247 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 248 9
	li	a5,65536
	addi	a5,a5,1
	sw	a5,-148(s0)
	.loc 3 250 8
	lw	a5,-172(s0)
	beq	a5,zero,.L40
	.loc 3 251 18
	addi	a5,s0,-148
	mv	a2,a5
	lw	a1,-172(s0)
	lw	a0,-168(s0)
	call	psa_rsa_read_exponent
	sw	a0,-24(s0)
	.loc 3 253 12
	lw	a5,-24(s0)
	beq	a5,zero,.L40
	.loc 3 254 20
	lw	a5,-24(s0)
	j	.L43
.L40:
	.loc 3 258 5
	addi	a5,s0,-144
	mv	a0,a5
	call	mbedtls_rsa_init
	.loc 3 262 56
	lw	a5,-164(s0)
	lhu	a5,2(a5)
	.loc 3 259 11
	mv	a3,a5
	lw	a5,-148(s0)
	addi	a0,s0,-144
	mv	a4,a5
	li	a2,0
	lui	a5,%hi(mbedtls_psa_get_random)
	addi	a1,a5,%lo(mbedtls_psa_get_random)
	call	mbedtls_rsa_gen_key
	sw	a0,-20(s0)
	.loc 3 264 8
	lw	a5,-20(s0)
	beq	a5,zero,.L42
	.loc 3 265 9
	addi	a5,s0,-144
	mv	a0,a5
	call	mbedtls_rsa_free
	.loc 3 266 16
	lw	a0,-20(s0)
	call	mbedtls_to_psa_error
	mv	a5,a0
	j	.L43
.L42:
	.loc 3 269 51
	lw	a5,-164(s0)
	lhu	a5,0(a5)
	.loc 3 269 14
	addi	a1,s0,-144
	lw	a4,-184(s0)
	lw	a3,-180(s0)
	lw	a2,-176(s0)
	mv	a0,a5
	call	mbedtls_psa_rsa_export_key
	sw	a0,-24(s0)
	.loc 3 272 5
	addi	a5,s0,-144
	mv	a0,a5
	call	mbedtls_rsa_free
	.loc 3 274 12
	lw	a5,-24(s0)
.L43:
	.loc 3 275 1
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
.LFE82:
	.size	mbedtls_psa_rsa_generate_key, .-mbedtls_psa_rsa_generate_key
	.section	.text.psa_rsa_decode_md_type,"ax",@progbits
	.align	1
	.type	psa_rsa_decode_md_type, @function
psa_rsa_decode_md_type:
.LFB83:
	.loc 3 290 1
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
	.loc 3 291 44
	lw	a5,-36(s0)
	andi	a4,a5,-256
	.loc 3 291 715
	li	a5,100663296
	addi	a5,a5,768
	beq	a4,a5,.L45
	.loc 3 291 125 discriminator 2
	lw	a5,-36(s0)
	andi	a4,a5,-256
	.loc 3 291 114 discriminator 2
	li	a5,100667392
	addi	a5,a5,768
	beq	a4,a5,.L45
	.loc 3 291 207 discriminator 4
	lw	a5,-36(s0)
	andi	a4,a5,-256
	.loc 3 291 196 discriminator 4
	li	a5,100663296
	addi	a5,a5,512
	beq	a4,a5,.L45
	.loc 3 291 322 discriminator 6
	lw	a5,-36(s0)
	andi	a4,a5,-512
	.loc 3 291 277 discriminator 6
	li	a5,100663296
	addi	a5,a5,1536
	beq	a4,a5,.L45
	.loc 3 291 403 discriminator 8
	lw	a5,-36(s0)
	andi	a4,a5,-256
	.loc 3 291 392 discriminator 8
	li	a5,100667392
	addi	a5,a5,-1792
	beq	a4,a5,.L45
	.loc 3 291 518 discriminator 10
	lw	a5,-36(s0)
	andi	a4,a5,-512
	.loc 3 291 473 discriminator 10
	li	a5,100663296
	addi	a5,a5,1024
	bne	a4,a5,.L46
.L45:
	.loc 3 291 599 discriminator 11
	lw	a5,-36(s0)
	andi	a5,a5,255
	.loc 3 291 589 discriminator 11
	beq	a5,zero,.L46
	.loc 3 291 648 discriminator 13
	lw	a5,-36(s0)
	andi	a4,a5,255
	.loc 3 291 21 discriminator 13
	li	a5,33554432
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 3 291 21 is_stmt 0
	j	.L47
.L46:
	.loc 3 291 21 discriminator 14
	sw	zero,-20(s0)
.L47:
	.loc 3 292 15 is_stmt 1
	lw	a0,-20(s0)
	call	mbedtls_md_type_from_psa_alg
	mv	a5,a0
	mv	a4,a5
	.loc 3 292 13 discriminator 1
	lw	a5,-44(s0)
	sb	a4,0(a5)
	.loc 3 304 8
	lw	a4,-36(s0)
	li	a5,100663296
	addi	a5,a5,512
	beq	a4,a5,.L48
	.loc 3 305 13
	lw	a5,-44(s0)
	lbu	a5,0(a5)
	.loc 3 305 12
	bne	a5,zero,.L49
	.loc 3 306 20
	li	a5,-134
	j	.L50
.L49:
	.loc 3 308 13
	lw	a5,-44(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	mbedtls_md_get_size_from_type
	mv	a5,a0
	.loc 3 308 13 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 3 308 12 is_stmt 1 discriminator 1
	lw	a5,-40(s0)
	beq	a5,a4,.L48
	.loc 3 309 20
	li	a5,-135
	j	.L50
.L48:
	.loc 3 313 12
	li	a5,0
.L50:
	.loc 3 314 1
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
	.size	psa_rsa_decode_md_type, .-psa_rsa_decode_md_type
	.section	.text.mbedtls_psa_rsa_sign_hash,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_rsa_sign_hash
	.type	mbedtls_psa_rsa_sign_hash, @function
mbedtls_psa_rsa_sign_hash:
.LFB84:
	.loc 3 321 1
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
	.loc 3 322 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 3 323 26
	sw	zero,-28(s0)
	.loc 3 324 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 3 327 60
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	.loc 3 327 14
	addi	a4,s0,-28
	mv	a3,a4
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_psa_rsa_load_representation
	sw	a0,-20(s0)
	.loc 3 331 8
	lw	a5,-20(s0)
	bne	a5,zero,.L63
	.loc 3 335 14
	addi	a5,s0,-29
	mv	a2,a5
	lw	a1,-56(s0)
	lw	a0,-48(s0)
	call	psa_rsa_decode_md_type
	sw	a0,-20(s0)
	.loc 3 336 8
	lw	a5,-20(s0)
	bne	a5,zero,.L64
	.loc 3 340 26
	lw	a5,-28(s0)
	mv	a0,a5
	call	mbedtls_rsa_get_len
	mv	a4,a0
	.loc 3 340 8 discriminator 1
	lw	a5,-64(s0)
	bgeu	a5,a4,.L55
	.loc 3 341 16
	li	a5,-138
	sw	a5,-20(s0)
	.loc 3 342 9
	j	.L53
.L55:
	.loc 3 346 17
	lw	a5,-48(s0)
	andi	a4,a5,-256
	.loc 3 346 8
	li	a5,100663296
	addi	a5,a5,512
	bne	a4,a5,.L56
	.loc 3 347 15
	lw	a5,-28(s0)
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	mbedtls_rsa_set_padding
	sw	a0,-24(s0)
	.loc 3 349 12
	lw	a5,-24(s0)
	bne	a5,zero,.L57
	.loc 3 350 19
	lw	a0,-28(s0)
	lbu	a3,-29(s0)
	lw	a6,-60(s0)
	lw	a5,-52(s0)
	lw	a4,-56(s0)
	li	a2,0
	lui	a1,%hi(mbedtls_psa_get_random)
	addi	a1,a1,%lo(mbedtls_psa_get_random)
	call	mbedtls_rsa_pkcs1_sign
	sw	a0,-24(s0)
	j	.L57
.L56:
	.loc 3 361 18
	lw	a5,-48(s0)
	andi	a4,a5,-256
	.loc 3 361 8
	li	a5,100663296
	addi	a5,a5,768
	beq	a4,a5,.L58
	.loc 3 361 99 discriminator 1
	lw	a5,-48(s0)
	andi	a4,a5,-256
	.loc 3 361 88 discriminator 1
	li	a5,100667392
	addi	a5,a5,768
	bne	a4,a5,.L59
.L58:
	.loc 3 362 15
	lw	a5,-28(s0)
	lbu	a4,-29(s0)
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	mbedtls_rsa_set_padding
	sw	a0,-24(s0)
	.loc 3 364 12
	lw	a5,-24(s0)
	bne	a5,zero,.L57
	.loc 3 365 19
	lw	a0,-28(s0)
	lw	a6,-60(s0)
	lw	a5,-52(s0)
	lw	a4,-56(s0)
	li	a3,0
	li	a2,0
	lui	a1,%hi(mbedtls_psa_get_random)
	addi	a1,a1,%lo(mbedtls_psa_get_random)
	call	mbedtls_rsa_rsassa_pss_sign
	sw	a0,-24(s0)
	.loc 3 364 12
	j	.L57
.L59:
	.loc 3 376 16
	li	a5,-135
	sw	a5,-20(s0)
	.loc 3 377 9
	j	.L53
.L57:
	.loc 3 380 8
	lw	a5,-24(s0)
	bne	a5,zero,.L61
	.loc 3 381 29
	lw	a5,-28(s0)
	mv	a0,a5
	call	mbedtls_rsa_get_len
	mv	a4,a0
	.loc 3 381 27 discriminator 1
	lw	a5,0(s0)
	sw	a4,0(a5)
.L61:
	.loc 3 383 14
	lw	a0,-24(s0)
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L53
.L63:
	.loc 3 332 9
	nop
	j	.L53
.L64:
	.loc 3 337 9
	nop
.L53:
	.loc 3 386 5
	lw	a5,-28(s0)
	mv	a0,a5
	call	mbedtls_rsa_free
	.loc 3 387 5
	lw	a5,-28(s0)
	mv	a0,a5
	call	free
	.loc 3 389 12
	lw	a5,-20(s0)
	.loc 3 390 1
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
	.size	mbedtls_psa_rsa_sign_hash, .-mbedtls_psa_rsa_sign_hash
	.section	.text.rsa_pss_expected_salt_len,"ax",@progbits
	.align	1
	.type	rsa_pss_expected_salt_len, @function
rsa_pss_expected_salt_len:
.LFB85:
	.loc 3 396 1
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
	.loc 3 397 17
	lw	a5,-36(s0)
	andi	a4,a5,-256
	.loc 3 397 8
	li	a5,100667392
	addi	a5,a5,768
	bne	a4,a5,.L66
	.loc 3 398 16
	li	a5,-1
	j	.L67
.L66:
	.loc 3 402 22
	lw	a0,-40(s0)
	call	mbedtls_rsa_get_len
	mv	a5,a0
	.loc 3 402 9 discriminator 1
	sw	a5,-20(s0)
	.loc 3 403 9
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	.loc 3 404 21
	lw	a5,-20(s0)
	addi	a4,a5,-2
	.loc 3 404 9
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 405 8
	lw	a5,-28(s0)
	bge	a5,zero,.L68
	.loc 3 406 16
	li	a5,0
	j	.L67
.L68:
	.loc 3 407 15
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	ble	a4,a5,.L69
	.loc 3 408 16
	lw	a5,-24(s0)
	j	.L67
.L69:
	.loc 3 410 16
	lw	a5,-28(s0)
.L67:
	.loc 3 412 1
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
	.size	rsa_pss_expected_salt_len, .-rsa_pss_expected_salt_len
	.section	.text.mbedtls_psa_rsa_verify_hash,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_rsa_verify_hash
	.type	mbedtls_psa_rsa_verify_hash, @function
mbedtls_psa_rsa_verify_hash:
.LFB86:
	.loc 3 420 1
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
	.loc 3 421 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 3 422 26
	sw	zero,-32(s0)
	.loc 3 423 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 3 426 60
	lw	a5,-52(s0)
	lhu	a5,0(a5)
	.loc 3 426 14
	addi	a4,s0,-32
	mv	a3,a4
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_psa_rsa_load_representation
	sw	a0,-20(s0)
	.loc 3 430 8
	lw	a5,-20(s0)
	bne	a5,zero,.L82
	.loc 3 434 14
	addi	a5,s0,-33
	mv	a2,a5
	lw	a1,-72(s0)
	lw	a0,-64(s0)
	call	psa_rsa_decode_md_type
	sw	a0,-20(s0)
	.loc 3 435 8
	lw	a5,-20(s0)
	bne	a5,zero,.L83
	.loc 3 439 29
	lw	a5,-32(s0)
	mv	a0,a5
	call	mbedtls_rsa_get_len
	mv	a4,a0
	.loc 3 439 8 discriminator 1
	lw	a5,-80(s0)
	beq	a5,a4,.L74
	.loc 3 440 16
	li	a5,-149
	sw	a5,-20(s0)
	.loc 3 441 9
	j	.L72
.L74:
	.loc 3 445 17
	lw	a5,-64(s0)
	andi	a4,a5,-256
	.loc 3 445 8
	li	a5,100663296
	addi	a5,a5,512
	bne	a4,a5,.L75
	.loc 3 446 15
	lw	a5,-32(s0)
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	mbedtls_rsa_set_padding
	sw	a0,-24(s0)
	.loc 3 448 12
	lw	a5,-24(s0)
	bne	a5,zero,.L76
	.loc 3 449 19
	lw	a5,-32(s0)
	lbu	a1,-33(s0)
	lw	a4,-76(s0)
	lw	a3,-68(s0)
	lw	a2,-72(s0)
	mv	a0,a5
	call	mbedtls_rsa_pkcs1_verify
	sw	a0,-24(s0)
	j	.L76
.L75:
	.loc 3 458 18
	lw	a5,-64(s0)
	andi	a4,a5,-256
	.loc 3 458 8
	li	a5,100663296
	addi	a5,a5,768
	beq	a4,a5,.L77
	.loc 3 458 99 discriminator 1
	lw	a5,-64(s0)
	andi	a4,a5,-256
	.loc 3 458 88 discriminator 1
	li	a5,100667392
	addi	a5,a5,768
	bne	a4,a5,.L78
.L77:
	.loc 3 459 15
	lw	a5,-32(s0)
	lbu	a4,-33(s0)
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	mbedtls_rsa_set_padding
	sw	a0,-24(s0)
	.loc 3 460 12
	lw	a5,-24(s0)
	bne	a5,zero,.L76
.LBB2:
	.loc 3 461 24
	lw	a5,-32(s0)
	lw	a2,-72(s0)
	mv	a1,a5
	lw	a0,-64(s0)
	call	rsa_pss_expected_salt_len
	sw	a0,-28(s0)
	.loc 3 462 19
	lw	a0,-32(s0)
	lbu	a1,-33(s0)
	lbu	a4,-33(s0)
	lw	a6,-76(s0)
	lw	a5,-28(s0)
	lw	a3,-68(s0)
	lw	a2,-72(s0)
	call	mbedtls_rsa_rsassa_pss_verify_ext
	sw	a0,-24(s0)
.LBE2:
	.loc 3 460 12
	j	.L76
.L78:
	.loc 3 473 16
	li	a5,-135
	sw	a5,-20(s0)
	.loc 3 474 9
	j	.L72
.L76:
	.loc 3 481 35
	lw	a4,-24(s0)
	li	a5,-16384
	addi	a5,a5,-256
	beq	a4,a5,.L80
	.loc 3 482 14
	lw	a0,-24(s0)
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L72
.L80:
	.loc 3 480 12
	li	a5,-149
	sw	a5,-20(s0)
	j	.L72
.L82:
	.loc 3 431 9
	nop
	j	.L72
.L83:
	.loc 3 436 9
	nop
.L72:
	.loc 3 485 5
	lw	a5,-32(s0)
	mv	a0,a5
	call	mbedtls_rsa_free
	.loc 3 486 5
	lw	a5,-32(s0)
	mv	a0,a5
	call	free
	.loc 3 488 12
	lw	a5,-20(s0)
	.loc 3 489 1
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
.LFE86:
	.size	mbedtls_psa_rsa_verify_hash, .-mbedtls_psa_rsa_verify_hash
	.section	.text.psa_rsa_oaep_set_padding_mode,"ax",@progbits
	.align	1
	.type	psa_rsa_oaep_set_padding_mode, @function
psa_rsa_oaep_set_padding_mode:
.LFB87:
	.loc 3 501 1
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
	.loc 3 502 41
	lw	a5,-36(s0)
	andi	a4,a5,-256
	.loc 3 502 187
	li	a5,117440512
	addi	a5,a5,768
	bne	a4,a5,.L85
	.loc 3 502 120 discriminator 1
	lw	a5,-36(s0)
	andi	a4,a5,255
	.loc 3 502 21 discriminator 1
	li	a5,33554432
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L86
.L85:
	.loc 3 502 21 is_stmt 0 discriminator 2
	sw	zero,-20(s0)
.L86:
	.loc 3 503 32 is_stmt 1
	lw	a0,-20(s0)
	call	mbedtls_md_type_from_psa_alg
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 3 507 9
	lbu	a5,-21(s0)
	mv	a0,a5
	call	mbedtls_md_info_from_type
	mv	a5,a0
	.loc 3 507 8 discriminator 1
	bne	a5,zero,.L87
	.loc 3 508 16
	li	a5,-134
	j	.L88
.L87:
	.loc 3 511 12
	lbu	a5,-21(s0)
	mv	a2,a5
	li	a1,1
	lw	a0,-40(s0)
	call	mbedtls_rsa_set_padding
	mv	a5,a0
.L88:
	.loc 3 512 1
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
	.size	psa_rsa_oaep_set_padding_mode, .-psa_rsa_oaep_set_padding_mode
	.section	.text.mbedtls_psa_asymmetric_encrypt,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_asymmetric_encrypt
	.type	mbedtls_psa_asymmetric_encrypt, @function
mbedtls_psa_asymmetric_encrypt:
.LFB88:
	.loc 3 526 1
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
	.loc 3 527 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 3 538 22
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	mv	a4,a5
	.loc 3 538 30
	li	a5,-12288
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 3 538 8
	li	a5,16384
	addi	a5,a5,1
	bne	a4,a5,.L90
.LBB3:
	.loc 3 541 30
	sw	zero,-24(s0)
	.loc 3 542 64
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	.loc 3 542 18
	addi	a4,s0,-24
	mv	a3,a4
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_psa_rsa_load_representation
	sw	a0,-20(s0)
	.loc 3 546 12
	lw	a5,-20(s0)
	bne	a5,zero,.L100
	.loc 3 550 27
	lw	a5,-24(s0)
	mv	a0,a5
	call	mbedtls_rsa_get_len
	mv	a4,a0
	.loc 3 550 12 discriminator 1
	lw	a5,4(s0)
	bgeu	a5,a4,.L93
	.loc 3 551 20
	li	a5,-138
	sw	a5,-20(s0)
	.loc 3 552 13
	j	.L92
.L93:
	.loc 3 556 12
	lw	a4,-48(s0)
	li	a5,117440512
	addi	a5,a5,512
	bne	a4,a5,.L94
	.loc 3 558 22
	lw	a0,-24(s0)
	lw	a5,0(s0)
	lw	a4,-52(s0)
	lw	a3,-56(s0)
	li	a2,0
	lui	a1,%hi(mbedtls_psa_get_random)
	addi	a1,a1,%lo(mbedtls_psa_get_random)
	call	mbedtls_rsa_pkcs1_encrypt
	mv	a5,a0
	.loc 3 558 22 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L92
.L94:
	.loc 3 569 21 is_stmt 1
	lw	a5,-48(s0)
	andi	a4,a5,-256
	.loc 3 569 12
	li	a5,117440512
	addi	a5,a5,768
	bne	a4,a5,.L95
	.loc 3 571 22
	lw	a5,-24(s0)
	mv	a1,a5
	lw	a0,-48(s0)
	call	psa_rsa_oaep_set_padding_mode
	mv	a5,a0
	.loc 3 571 22 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	.loc 3 573 16 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L101
	.loc 3 577 22
	lw	a0,-24(s0)
	lw	a7,0(s0)
	lw	a6,-52(s0)
	lw	a5,-56(s0)
	lw	a4,-64(s0)
	lw	a3,-60(s0)
	li	a2,0
	lui	a1,%hi(mbedtls_psa_get_random)
	addi	a1,a1,%lo(mbedtls_psa_get_random)
	call	mbedtls_rsa_rsaes_oaep_encrypt
	mv	a5,a0
	.loc 3 577 22 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L92
.L95:
	.loc 3 589 20 is_stmt 1
	li	a5,-135
	sw	a5,-20(s0)
	j	.L92
.L100:
	.loc 3 547 13
	nop
	j	.L92
.L101:
	.loc 3 574 17
	nop
.L92:
	.loc 3 594 12
	lw	a5,-20(s0)
	bne	a5,zero,.L97
	.loc 3 595 30
	lw	a5,-24(s0)
	mv	a0,a5
	call	mbedtls_rsa_get_len
	mv	a4,a0
	.loc 3 595 28 discriminator 1
	lw	a5,8(s0)
	sw	a4,0(a5)
.L97:
	.loc 3 598 9
	lw	a5,-24(s0)
	mv	a0,a5
	call	mbedtls_rsa_free
	.loc 3 599 9
	lw	a5,-24(s0)
	mv	a0,a5
	call	free
.LBE3:
	j	.L98
.L90:
	.loc 3 603 16
	li	a5,-134
	sw	a5,-20(s0)
.L98:
	.loc 3 606 12
	lw	a5,-20(s0)
	.loc 3 607 1
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
	.size	mbedtls_psa_asymmetric_encrypt, .-mbedtls_psa_asymmetric_encrypt
	.section	.text.mbedtls_psa_asymmetric_decrypt,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_asymmetric_decrypt
	.type	mbedtls_psa_asymmetric_decrypt, @function
mbedtls_psa_asymmetric_decrypt:
.LFB89:
	.loc 3 620 1
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
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	a7,-64(s0)
	.loc 3 621 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 3 632 20
	lw	a5,8(s0)
	sw	zero,0(a5)
	.loc 3 634 19
	lw	a5,-36(s0)
	lhu	a4,0(a5)
	.loc 3 634 8
	li	a5,28672
	addi	a5,a5,1
	bne	a4,a5,.L103
.LBB4:
	.loc 3 637 30
	sw	zero,-24(s0)
	.loc 3 638 64
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	.loc 3 638 18
	addi	a4,s0,-24
	mv	a3,a4
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_psa_rsa_load_representation
	sw	a0,-20(s0)
	.loc 3 642 12
	lw	a5,-20(s0)
	bne	a5,zero,.L112
	.loc 3 646 29
	lw	a5,-24(s0)
	mv	a0,a5
	call	mbedtls_rsa_get_len
	mv	a4,a0
	.loc 3 646 12 discriminator 1
	lw	a5,-56(s0)
	beq	a5,a4,.L106
	.loc 3 647 20
	li	a5,-135
	sw	a5,-20(s0)
	.loc 3 648 13
	j	.L105
.L106:
	.loc 3 653 12
	lw	a4,-48(s0)
	li	a5,117440512
	addi	a5,a5,512
	bne	a4,a5,.L107
	.loc 3 655 22
	lw	a0,-24(s0)
	lw	a6,4(s0)
	lw	a5,0(s0)
	lw	a4,-52(s0)
	lw	a3,8(s0)
	li	a2,0
	lui	a1,%hi(mbedtls_psa_get_random)
	addi	a1,a1,%lo(mbedtls_psa_get_random)
	call	mbedtls_rsa_pkcs1_decrypt
	mv	a5,a0
	.loc 3 655 22 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L105
.L107:
	.loc 3 667 21 is_stmt 1
	lw	a5,-48(s0)
	andi	a4,a5,-256
	.loc 3 667 12
	li	a5,117440512
	addi	a5,a5,768
	bne	a4,a5,.L108
	.loc 3 669 22
	lw	a5,-24(s0)
	mv	a1,a5
	lw	a0,-48(s0)
	call	psa_rsa_oaep_set_padding_mode
	mv	a5,a0
	.loc 3 669 22 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	.loc 3 671 16 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L113
	.loc 3 675 22
	lw	a0,-24(s0)
	lw	a5,4(s0)
	sw	a5,0(sp)
	lw	a7,0(s0)
	lw	a6,-52(s0)
	lw	a5,8(s0)
	lw	a4,-64(s0)
	lw	a3,-60(s0)
	li	a2,0
	lui	a1,%hi(mbedtls_psa_get_random)
	addi	a1,a1,%lo(mbedtls_psa_get_random)
	call	mbedtls_rsa_rsaes_oaep_decrypt
	mv	a5,a0
	.loc 3 675 22 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_to_psa_error
	sw	a0,-20(s0)
	j	.L105
.L108:
	.loc 3 688 20 is_stmt 1
	li	a5,-135
	sw	a5,-20(s0)
	j	.L105
.L112:
	.loc 3 643 13
	nop
	j	.L105
.L113:
	.loc 3 672 17
	nop
.L105:
	.loc 3 694 9
	lw	a5,-24(s0)
	mv	a0,a5
	call	mbedtls_rsa_free
	.loc 3 695 9
	lw	a5,-24(s0)
	mv	a0,a5
	call	free
.LBE4:
	j	.L110
.L103:
	.loc 3 699 16
	li	a5,-134
	sw	a5,-20(s0)
.L110:
	.loc 3 702 12
	lw	a5,-20(s0)
	.loc 3 703 1
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
.LFE89:
	.size	mbedtls_psa_asymmetric_decrypt, .-mbedtls_psa_asymmetric_decrypt
	.text
.Letext0:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_types.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_struct.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/rsa.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/rsa_internal.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_core.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x10bf
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x22
	.4byte	.LASF137
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
	.uleb128 0x23
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0xb
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0xf
	.4byte	0x95
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x5
	.byte	0x31
	.byte	0x1c
	.4byte	0x45
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x24
	.byte	0x4
	.uleb128 0x19
	.4byte	0xbe
	.uleb128 0x4
	.4byte	0x32
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x4
	.4byte	0xdb
	.uleb128 0x19
	.4byte	0xd1
	.uleb128 0x25
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x6
	.byte	0x3b
	.byte	0x11
	.4byte	0x89
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x6
	.byte	0x4e
	.byte	0x12
	.4byte	0xa6
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x6
	.byte	0x86
	.byte	0x12
	.4byte	0xb2
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x6
	.byte	0xb7
	.byte	0x12
	.4byte	0xb2
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x113
	.byte	0x12
	.4byte	0xb2
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x124
	.byte	0x16
	.4byte	0x10c
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x143
	.byte	0x12
	.4byte	0xb2
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x1b0
	.byte	0x25
	.4byte	0x145
	.uleb128 0xf
	.4byte	0x133
	.uleb128 0x1a
	.4byte	.LASF32
	.byte	0x18
	.2byte	0x127
	.4byte	0x192
	.uleb128 0x11
	.4byte	.LASF26
	.2byte	0x12c
	.byte	0x14
	.4byte	0xe8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF27
	.2byte	0x12d
	.byte	0x14
	.4byte	0x2d5
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF28
	.2byte	0x12e
	.byte	0x18
	.4byte	0x100
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF29
	.2byte	0x12f
	.byte	0x16
	.4byte	0x2c8
	.byte	0x8
	.uleb128 0x1b
	.string	"id"
	.2byte	0x13b
	.byte	0x1a
	.4byte	0x119
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x8
	.byte	0xd1
	.byte	0xd
	.4byte	0x19e
	.uleb128 0x26
	.4byte	0x68
	.4byte	0x1b7
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.4byte	0x76
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x9
	.byte	0xaa
	.byte	0x12
	.4byte	0xb2
	.uleb128 0x1c
	.4byte	.LASF33
	.byte	0x8
	.byte	0x9
	.byte	0xd0
	.4byte	0x1f6
	.uleb128 0x5
	.string	"p"
	.byte	0x9
	.byte	0xd5
	.byte	0x17
	.4byte	0x1f6
	.byte	0
	.uleb128 0x5
	.string	"s"
	.byte	0x9
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x5
	.string	"n"
	.byte	0x9
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	0x1bc
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x9
	.byte	0xf0
	.byte	0x1
	.4byte	0x1c8
	.uleb128 0xf
	.4byte	0x1fb
	.uleb128 0x4
	.4byte	0x1fb
	.uleb128 0x27
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x1
	.byte	0x2f
	.byte	0xe
	.4byte	0x268
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x1
	.byte	0x3c
	.byte	0x3
	.4byte	0x211
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x1
	.byte	0x6b
	.byte	0x22
	.4byte	0x285
	.uleb128 0xf
	.4byte	0x274
	.uleb128 0x28
	.4byte	.LASF47
	.uleb128 0x4
	.4byte	0x280
	.uleb128 0x4
	.4byte	0x95
	.uleb128 0x1a
	.4byte	.LASF48
	.byte	0xc
	.2byte	0x10c
	.4byte	0x2c8
	.uleb128 0x11
	.4byte	.LASF49
	.2byte	0x10d
	.byte	0x15
	.4byte	0x126
	.byte	0
	.uleb128 0x1b
	.string	"alg"
	.2byte	0x10e
	.byte	0x15
	.4byte	0xf4
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF50
	.2byte	0x10f
	.byte	0x15
	.4byte	0xf4
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x7
	.2byte	0x111
	.byte	0x21
	.4byte	0x294
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x7
	.2byte	0x11c
	.byte	0x12
	.4byte	0xa6
	.uleb128 0x4
	.4byte	0xa1
	.uleb128 0x4
	.4byte	0x140
	.uleb128 0x1c
	.4byte	.LASF53
	.byte	0x78
	.byte	0xa
	.byte	0x55
	.4byte	0x3c0
	.uleb128 0x5
	.string	"ver"
	.byte	0xa
	.byte	0x56
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x5
	.string	"len"
	.byte	0xa
	.byte	0x5a
	.byte	0xc
	.4byte	0x76
	.byte	0x4
	.uleb128 0x5
	.string	"N"
	.byte	0xa
	.byte	0x5c
	.byte	0x11
	.4byte	0x1fb
	.byte	0x8
	.uleb128 0x5
	.string	"E"
	.byte	0xa
	.byte	0x5d
	.byte	0x11
	.4byte	0x1fb
	.byte	0x10
	.uleb128 0x5
	.string	"D"
	.byte	0xa
	.byte	0x5f
	.byte	0x11
	.4byte	0x1fb
	.byte	0x18
	.uleb128 0x5
	.string	"P"
	.byte	0xa
	.byte	0x60
	.byte	0x11
	.4byte	0x1fb
	.byte	0x20
	.uleb128 0x5
	.string	"Q"
	.byte	0xa
	.byte	0x61
	.byte	0x11
	.4byte	0x1fb
	.byte	0x28
	.uleb128 0x5
	.string	"DP"
	.byte	0xa
	.byte	0x63
	.byte	0x11
	.4byte	0x1fb
	.byte	0x30
	.uleb128 0x5
	.string	"DQ"
	.byte	0xa
	.byte	0x64
	.byte	0x11
	.4byte	0x1fb
	.byte	0x38
	.uleb128 0x5
	.string	"QP"
	.byte	0xa
	.byte	0x65
	.byte	0x11
	.4byte	0x1fb
	.byte	0x40
	.uleb128 0x5
	.string	"RN"
	.byte	0xa
	.byte	0x67
	.byte	0x11
	.4byte	0x1fb
	.byte	0x48
	.uleb128 0x5
	.string	"RP"
	.byte	0xa
	.byte	0x69
	.byte	0x11
	.4byte	0x1fb
	.byte	0x50
	.uleb128 0x5
	.string	"RQ"
	.byte	0xa
	.byte	0x6a
	.byte	0x11
	.4byte	0x1fb
	.byte	0x58
	.uleb128 0x5
	.string	"Vi"
	.byte	0xa
	.byte	0x6c
	.byte	0x11
	.4byte	0x1fb
	.byte	0x60
	.uleb128 0x5
	.string	"Vf"
	.byte	0xa
	.byte	0x6d
	.byte	0x11
	.4byte	0x1fb
	.byte	0x68
	.uleb128 0x1d
	.4byte	.LASF54
	.byte	0x6f
	.4byte	0x68
	.byte	0x70
	.uleb128 0x1d
	.4byte	.LASF55
	.byte	0x72
	.4byte	0x68
	.byte	0x74
	.byte	0
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0xa
	.byte	0x7b
	.byte	0x1
	.4byte	0x2ec
	.uleb128 0xf
	.4byte	0x3c0
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0xa
	.2byte	0x328
	.byte	0x5
	.4byte	0x68
	.4byte	0x410
	.uleb128 0x1
	.4byte	0x410
	.uleb128 0x1
	.4byte	0x415
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x41a
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x1b7
	.uleb128 0x1
	.4byte	0x41a
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.4byte	0x3c0
	.uleb128 0x4
	.4byte	0x192
	.uleb128 0x4
	.4byte	0x39
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0xa
	.2byte	0x2d5
	.byte	0x5
	.4byte	0x68
	.4byte	0x454
	.uleb128 0x1
	.4byte	0x410
	.uleb128 0x1
	.4byte	0x415
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x1b7
	.uleb128 0x1
	.4byte	0x41a
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0xa
	.2byte	0x2aa
	.byte	0x5
	.4byte	0x68
	.4byte	0x48e
	.uleb128 0x1
	.4byte	0x410
	.uleb128 0x1
	.4byte	0x415
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x41a
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x41a
	.uleb128 0x1
	.4byte	0xc5
	.byte	0
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0xa
	.2byte	0x26d
	.byte	0x5
	.4byte	0x68
	.4byte	0x4be
	.uleb128 0x1
	.4byte	0x410
	.uleb128 0x1
	.4byte	0x415
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x41a
	.uleb128 0x1
	.4byte	0xc5
	.byte	0
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0xa
	.2byte	0x460
	.byte	0x5
	.4byte	0x68
	.4byte	0x4f3
	.uleb128 0x1
	.4byte	0x410
	.uleb128 0x1
	.4byte	0x268
	.uleb128 0x1
	.4byte	0x6f
	.uleb128 0x1
	.4byte	0x41a
	.uleb128 0x1
	.4byte	0x268
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x41a
	.byte	0
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0xa
	.2byte	0x3fc
	.byte	0x5
	.4byte	0x68
	.4byte	0x51e
	.uleb128 0x1
	.4byte	0x410
	.uleb128 0x1
	.4byte	0x268
	.uleb128 0x1
	.4byte	0x6f
	.uleb128 0x1
	.4byte	0x41a
	.uleb128 0x1
	.4byte	0x41a
	.byte	0
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0xa
	.2byte	0x3d9
	.byte	0x5
	.4byte	0x68
	.4byte	0x553
	.uleb128 0x1
	.4byte	0x410
	.uleb128 0x1
	.4byte	0x415
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x268
	.uleb128 0x1
	.4byte	0x6f
	.uleb128 0x1
	.4byte	0x41a
	.uleb128 0x1
	.4byte	0xc5
	.byte	0
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0xa
	.2byte	0x353
	.byte	0x5
	.4byte	0x68
	.4byte	0x588
	.uleb128 0x1
	.4byte	0x410
	.uleb128 0x1
	.4byte	0x415
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x268
	.uleb128 0x1
	.4byte	0x6f
	.uleb128 0x1
	.4byte	0x41a
	.uleb128 0x1
	.4byte	0xc5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0xa
	.byte	0xaf
	.byte	0x5
	.4byte	0x68
	.4byte	0x5a8
	.uleb128 0x1
	.4byte	0x410
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x268
	.byte	0
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x1
	.byte	0xeb
	.byte	0xf
	.4byte	0x32
	.4byte	0x5be
	.uleb128 0x1
	.4byte	0x28a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x1
	.byte	0x95
	.byte	0x1a
	.4byte	0x28a
	.4byte	0x5d4
	.uleb128 0x1
	.4byte	0x268
	.byte	0
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x2
	.byte	0x39
	.byte	0x5
	.4byte	0x68
	.4byte	0x5f4
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0xa
	.2byte	0x1d3
	.byte	0x5
	.4byte	0x68
	.4byte	0x61f
	.uleb128 0x1
	.4byte	0x410
	.uleb128 0x1
	.4byte	0x415
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x6f
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0xb
	.byte	0x20
	.byte	0x8
	.4byte	0xbe
	.4byte	0x63f
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0xb
	.byte	0x1f
	.byte	0x8
	.4byte	0xbe
	.4byte	0x65f
	.uleb128 0x1
	.4byte	0xc0
	.uleb128 0x1
	.4byte	0xd6
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.4byte	0xbe
	.4byte	0x67f
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0xc
	.byte	0x5f
	.byte	0x5
	.4byte	0x68
	.4byte	0x69f
	.uleb128 0x1
	.4byte	0x69f
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0x6a4
	.byte	0
	.uleb128 0x4
	.4byte	0x3cc
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0xc
	.byte	0x48
	.byte	0x5
	.4byte	0x68
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x69f
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0x6a4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0xd
	.byte	0x5e
	.4byte	0x6da
	.uleb128 0x1
	.4byte	0xbe
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF75
	.byte	0xa
	.2byte	0x47a
	.4byte	0x6ec
	.uleb128 0x1
	.4byte	0x410
	.byte	0
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0xa
	.2byte	0x1bf
	.byte	0x8
	.4byte	0x76
	.4byte	0x703
	.uleb128 0x1
	.4byte	0x69f
	.byte	0
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0xc
	.byte	0x32
	.byte	0x5
	.4byte	0x68
	.4byte	0x723
	.uleb128 0x1
	.4byte	0x410
	.uleb128 0x1
	.4byte	0x41a
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0xc
	.byte	0x22
	.byte	0x5
	.4byte	0x68
	.4byte	0x743
	.uleb128 0x1
	.4byte	0x410
	.uleb128 0x1
	.4byte	0x41a
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0xa
	.byte	0x8b
	.4byte	0x754
	.uleb128 0x1
	.4byte	0x410
	.byte	0
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0xd
	.byte	0x5a
	.byte	0x7
	.4byte	0xbe
	.4byte	0x76f
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF81
	.byte	0x9
	.2byte	0x103
	.4byte	0x781
	.uleb128 0x1
	.4byte	0x20c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x9
	.2byte	0x1ba
	.byte	0x8
	.4byte	0x76
	.4byte	0x798
	.uleb128 0x1
	.4byte	0x798
	.byte	0
	.uleb128 0x4
	.4byte	0x207
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0xe
	.2byte	0x119
	.byte	0xe
	.4byte	0xdc
	.4byte	0x7b4
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0xa
	.2byte	0x15d
	.byte	0x5
	.4byte	0x68
	.4byte	0x7e4
	.uleb128 0x1
	.4byte	0x69f
	.uleb128 0x1
	.4byte	0x20c
	.uleb128 0x1
	.4byte	0x20c
	.uleb128 0x1
	.4byte	0x20c
	.uleb128 0x1
	.4byte	0x20c
	.uleb128 0x1
	.4byte	0x20c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x9
	.byte	0xfa
	.4byte	0x7f5
	.uleb128 0x1
	.4byte	0x20c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF97
	.2byte	0x261
	.4byte	0xdc
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e7
	.uleb128 0x2
	.4byte	.LASF86
	.2byte	0x261
	.byte	0x49
	.4byte	0x2e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF87
	.2byte	0x262
	.byte	0x3c
	.4byte	0x2e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF88
	.2byte	0x263
	.byte	0x34
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"alg"
	.2byte	0x264
	.byte	0x3d
	.4byte	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF89
	.2byte	0x265
	.byte	0x3c
	.4byte	0x2e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF90
	.2byte	0x266
	.byte	0x34
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF91
	.2byte	0x267
	.byte	0x3c
	.4byte	0x2e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF92
	.2byte	0x268
	.byte	0x34
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF93
	.2byte	0x269
	.byte	0x36
	.4byte	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.4byte	.LASF94
	.2byte	0x26a
	.byte	0x34
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2
	.4byte	.LASF95
	.2byte	0x26b
	.byte	0x35
	.4byte	0x1b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF96
	.2byte	0x26d
	.byte	0x12
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF99
	.2byte	0x2b5
	.4byte	.L105
	.uleb128 0x17
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x12
	.string	"rsa"
	.2byte	0x27d
	.byte	0x1e
	.4byte	0x410
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF98
	.2byte	0x203
	.4byte	0xdc
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d9
	.uleb128 0x2
	.4byte	.LASF86
	.2byte	0x203
	.byte	0x49
	.4byte	0x2e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF87
	.2byte	0x204
	.byte	0x3c
	.4byte	0x2e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF88
	.2byte	0x205
	.byte	0x34
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"alg"
	.2byte	0x206
	.byte	0x3d
	.4byte	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF89
	.2byte	0x207
	.byte	0x3c
	.4byte	0x2e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF90
	.2byte	0x208
	.byte	0x34
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF91
	.2byte	0x209
	.byte	0x3c
	.4byte	0x2e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF92
	.2byte	0x20a
	.byte	0x34
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF93
	.2byte	0x20b
	.byte	0x36
	.4byte	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.4byte	.LASF94
	.2byte	0x20c
	.byte	0x34
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2
	.4byte	.LASF95
	.2byte	0x20d
	.byte	0x35
	.4byte	0x1b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF96
	.2byte	0x20f
	.byte	0x12
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF99
	.2byte	0x251
	.4byte	.L92
	.uleb128 0x17
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x12
	.string	"rsa"
	.2byte	0x21d
	.byte	0x1e
	.4byte	0x410
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF109
	.2byte	0x1f3
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa30
	.uleb128 0xc
	.string	"alg"
	.2byte	0x1f3
	.byte	0x3a
	.4byte	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"rsa"
	.2byte	0x1f4
	.byte	0x3f
	.4byte	0x410
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF100
	.2byte	0x1f6
	.byte	0x15
	.4byte	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF101
	.2byte	0x1f7
	.byte	0x17
	.4byte	0x268
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x14
	.4byte	.LASF102
	.2byte	0x19f
	.4byte	0xdc
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb26
	.uleb128 0x2
	.4byte	.LASF86
	.2byte	0x1a0
	.byte	0x21
	.4byte	0x2e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF87
	.2byte	0x1a1
	.byte	0x14
	.4byte	0x2e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF88
	.2byte	0x1a1
	.byte	0x27
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.string	"alg"
	.2byte	0x1a2
	.byte	0x15
	.4byte	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF103
	.2byte	0x1a2
	.byte	0x29
	.4byte	0x2e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF104
	.2byte	0x1a2
	.byte	0x36
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF105
	.2byte	0x1a3
	.byte	0x14
	.4byte	0x2e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.4byte	.LASF106
	.2byte	0x1a3
	.byte	0x26
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x8
	.4byte	.LASF96
	.2byte	0x1a5
	.byte	0x12
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"rsa"
	.2byte	0x1a6
	.byte	0x1a
	.4byte	0x410
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.string	"ret"
	.2byte	0x1a7
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF101
	.2byte	0x1a8
	.byte	0x17
	.4byte	0x268
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x15
	.4byte	.LASF107
	.2byte	0x1e4
	.4byte	.L72
	.uleb128 0x17
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x8
	.4byte	.LASF108
	.2byte	0x1cd
	.byte	0x11
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF110
	.2byte	0x189
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb9b
	.uleb128 0xc
	.string	"alg"
	.2byte	0x189
	.byte	0x36
	.4byte	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"rsa"
	.2byte	0x18a
	.byte	0x41
	.4byte	0x69f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF104
	.2byte	0x18b
	.byte	0x2d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF111
	.2byte	0x192
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF112
	.2byte	0x193
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF113
	.2byte	0x194
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x14
	.4byte	.LASF114
	.2byte	0x13c
	.4byte	0xdc
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc83
	.uleb128 0x2
	.4byte	.LASF86
	.2byte	0x13d
	.byte	0x21
	.4byte	0x2e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF87
	.2byte	0x13e
	.byte	0x14
	.4byte	0x2e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF88
	.2byte	0x13e
	.byte	0x27
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"alg"
	.2byte	0x13f
	.byte	0x15
	.4byte	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF103
	.2byte	0x13f
	.byte	0x29
	.4byte	0x2e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF104
	.2byte	0x13f
	.byte	0x36
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF105
	.2byte	0x140
	.byte	0xe
	.4byte	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF115
	.2byte	0x140
	.byte	0x20
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF106
	.2byte	0x140
	.byte	0x38
	.4byte	0x1b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF96
	.2byte	0x142
	.byte	0x12
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"rsa"
	.2byte	0x143
	.byte	0x1a
	.4byte	0x410
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"ret"
	.2byte	0x144
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF101
	.2byte	0x145
	.byte	0x17
	.4byte	0x268
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x15
	.4byte	.LASF107
	.2byte	0x181
	.4byte	.L53
	.byte	0
	.uleb128 0x18
	.4byte	.LASF116
	.2byte	0x11f
	.byte	0x15
	.4byte	0xdc
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcda
	.uleb128 0xc
	.string	"alg"
	.2byte	0x11f
	.byte	0x3c
	.4byte	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF104
	.2byte	0x120
	.byte	0x33
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF101
	.2byte	0x121
	.byte	0x3f
	.4byte	0xcda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF100
	.2byte	0x123
	.byte	0x15
	.4byte	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	0x268
	.uleb128 0x13
	.4byte	.LASF117
	.byte	0xf0
	.4byte	0xdc
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd92
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x3
	.byte	0xf1
	.byte	0x21
	.4byte	0x2e7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0x3
	.byte	0xf2
	.byte	0x14
	.4byte	0x2e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0x3
	.byte	0xf2
	.byte	0x28
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x3
	.byte	0xf3
	.byte	0xe
	.4byte	0x28f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x3
	.byte	0xf3
	.byte	0x21
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0x3
	.byte	0xf3
	.byte	0x3a
	.4byte	0x1b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0xf5
	.byte	0x12
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.string	"rsa"
	.byte	0xf6
	.byte	0x19
	.4byte	0x3c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xd
	.string	"ret"
	.byte	0xf7
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF121
	.byte	0xf8
	.byte	0x9
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF122
	.byte	0x3
	.byte	0xd9
	.byte	0x15
	.4byte	0xdc
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf4
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0x3
	.byte	0xd9
	.byte	0x3a
	.4byte	0x2e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0x3
	.byte	0xda
	.byte	0x32
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0x3
	.byte	0xdb
	.byte	0x30
	.4byte	0xdf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"i"
	.byte	0xdd
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"acc"
	.byte	0xde
	.byte	0xe
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	0x68
	.uleb128 0x13
	.4byte	.LASF125
	.byte	0xbe
	.4byte	0xdc
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe88
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x3
	.byte	0xbf
	.byte	0x21
	.4byte	0x2e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x3
	.byte	0xc0
	.byte	0x14
	.4byte	0x2e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x3
	.byte	0xc0
	.byte	0x27
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x3
	.byte	0xc1
	.byte	0xe
	.4byte	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0x3
	.byte	0xc1
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x3
	.byte	0xc1
	.byte	0x2e
	.4byte	0x1b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0xc3
	.byte	0x12
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"rsa"
	.byte	0xc4
	.byte	0x1a
	.4byte	0x410
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF129
	.byte	0x97
	.4byte	0xdc
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf07
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x3
	.byte	0x97
	.byte	0x38
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x20
	.string	"rsa"
	.byte	0x98
	.byte	0x3e
	.4byte	0x410
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x3
	.byte	0x99
	.byte	0x32
	.4byte	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0x3
	.byte	0x9a
	.byte	0x30
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x3
	.byte	0x9b
	.byte	0x31
	.4byte	0x1b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xd
	.string	"ret"
	.byte	0x9d
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"end"
	.byte	0x9e
	.byte	0xe
	.4byte	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF130
	.byte	0x6d
	.4byte	0xdc
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfaf
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x3
	.byte	0x6e
	.byte	0x21
	.4byte	0x2e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x3
	.byte	0x6f
	.byte	0x14
	.4byte	0x2e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x3
	.byte	0x6f
	.byte	0x21
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x3
	.byte	0x70
	.byte	0xe
	.4byte	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x3
	.byte	0x70
	.byte	0x21
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0x3
	.byte	0x71
	.byte	0xd
	.4byte	0x1b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x3
	.byte	0x71
	.byte	0x28
	.4byte	0x1b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x73
	.byte	0x12
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"rsa"
	.byte	0x74
	.byte	0x1a
	.4byte	0x410
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.4byte	.LASF107
	.byte	0x8a
	.4byte	.L19
	.byte	0
	.uleb128 0x13
	.4byte	.LASF131
	.byte	0x3b
	.4byte	0xdc
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x102a
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x3
	.byte	0x3c
	.byte	0x29
	.4byte	0x2e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x3
	.byte	0x3c
	.byte	0x36
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0x3
	.byte	0x3d
	.byte	0x1b
	.4byte	0x102a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x3f
	.byte	0x12
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x40
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.4byte	.LASF107
	.byte	0x5f
	.4byte	.L14
	.byte	0
	.uleb128 0x4
	.4byte	0x410
	.uleb128 0x29
	.4byte	.LASF133
	.byte	0x3
	.byte	0x2a
	.byte	0x15
	.4byte	0xdc
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1072
	.uleb128 0x20
	.string	"rsa"
	.byte	0x2b
	.byte	0x20
	.4byte	0x69f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"n"
	.byte	0x2d
	.byte	0x11
	.4byte	0x1fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x2e
	.byte	0x12
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0x2
	.byte	0x8a
	.byte	0x21
	.4byte	0x268
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x109c
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0x2
	.byte	0x8a
	.byte	0x4e
	.4byte	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF138
	.byte	0x1
	.byte	0xf6
	.byte	0x1d
	.4byte	0x32
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF136
	.byte	0x1
	.byte	0xf6
	.byte	0x4d
	.4byte	0x268
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
	.uleb128 0x3
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x5
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
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
	.uleb128 0x21
	.uleb128 0xa
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
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x28
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x2a
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
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
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
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
	.4byte	.LFB32
	.uleb128 .LFE32-.LFB32
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF112:
	.string	"hlen"
.LASF54:
	.string	"padding"
.LASF77:
	.string	"mbedtls_rsa_parse_pubkey"
.LASF34:
	.string	"MBEDTLS_MD_NONE"
.LASF55:
	.string	"hash_id"
.LASF12:
	.string	"size_t"
.LASF20:
	.string	"psa_algorithm_t"
.LASF62:
	.string	"mbedtls_rsa_rsassa_pss_sign"
.LASF58:
	.string	"mbedtls_rsa_rsaes_oaep_encrypt"
.LASF26:
	.string	"type"
.LASF122:
	.string	"psa_rsa_read_exponent"
.LASF128:
	.string	"data_length"
.LASF123:
	.string	"e_bytes"
.LASF9:
	.string	"long long unsigned int"
.LASF108:
	.string	"slen"
.LASF132:
	.string	"p_rsa"
.LASF81:
	.string	"mbedtls_mpi_free"
.LASF114:
	.string	"mbedtls_psa_rsa_sign_hash"
.LASF49:
	.string	"usage"
.LASF74:
	.string	"free"
.LASF33:
	.string	"mbedtls_mpi"
.LASF53:
	.string	"mbedtls_rsa_context"
.LASF31:
	.string	"mbedtls_mpi_uint"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF117:
	.string	"mbedtls_psa_rsa_generate_key"
.LASF138:
	.string	"mbedtls_md_get_size_from_type"
.LASF118:
	.string	"custom_data"
.LASF109:
	.string	"psa_rsa_oaep_set_padding_mode"
.LASF95:
	.string	"output_length"
.LASF27:
	.string	"bits"
.LASF6:
	.string	"long int"
.LASF104:
	.string	"hash_length"
.LASF65:
	.string	"mbedtls_md_get_size"
.LASF89:
	.string	"input"
.LASF124:
	.string	"e_length"
.LASF70:
	.string	"memcpy"
.LASF15:
	.string	"uint16_t"
.LASF48:
	.string	"psa_key_policy_s"
.LASF51:
	.string	"psa_key_policy_t"
.LASF19:
	.string	"psa_key_type_t"
.LASF66:
	.string	"mbedtls_md_info_from_type"
.LASF45:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF91:
	.string	"salt"
.LASF87:
	.string	"key_buffer"
.LASF105:
	.string	"signature"
.LASF134:
	.string	"mbedtls_md_type_from_psa_alg"
.LASF102:
	.string	"mbedtls_psa_rsa_verify_hash"
.LASF10:
	.string	"unsigned int"
.LASF57:
	.string	"mbedtls_rsa_pkcs1_decrypt"
.LASF43:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF93:
	.string	"output"
.LASF37:
	.string	"MBEDTLS_MD_SHA1"
.LASF121:
	.string	"exponent"
.LASF94:
	.string	"output_size"
.LASF76:
	.string	"mbedtls_rsa_get_len"
.LASF36:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF46:
	.string	"mbedtls_md_type_t"
.LASF126:
	.string	"data"
.LASF125:
	.string	"mbedtls_psa_rsa_export_public_key"
.LASF84:
	.string	"mbedtls_rsa_export"
.LASF85:
	.string	"mbedtls_mpi_init"
.LASF23:
	.string	"mbedtls_svc_key_id_t"
.LASF127:
	.string	"data_size"
.LASF21:
	.string	"psa_key_lifetime_t"
.LASF60:
	.string	"mbedtls_rsa_rsassa_pss_verify_ext"
.LASF32:
	.string	"psa_key_attributes_s"
.LASF25:
	.string	"psa_key_attributes_t"
.LASF38:
	.string	"MBEDTLS_MD_SHA224"
.LASF130:
	.string	"mbedtls_psa_rsa_import_key"
.LASF29:
	.string	"policy"
.LASF115:
	.string	"signature_size"
.LASF131:
	.string	"mbedtls_psa_rsa_load_representation"
.LASF47:
	.string	"mbedtls_md_info_t"
.LASF52:
	.string	"psa_key_bits_t"
.LASF11:
	.string	"long double"
.LASF72:
	.string	"mbedtls_rsa_write_pubkey"
.LASF64:
	.string	"mbedtls_rsa_set_padding"
.LASF41:
	.string	"MBEDTLS_MD_SHA512"
.LASF106:
	.string	"signature_length"
.LASF56:
	.string	"mbedtls_rsa_rsaes_oaep_decrypt"
.LASF44:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF129:
	.string	"mbedtls_psa_rsa_export_key"
.LASF28:
	.string	"lifetime"
.LASF61:
	.string	"mbedtls_rsa_pkcs1_verify"
.LASF18:
	.string	"psa_status_t"
.LASF133:
	.string	"psa_check_rsa_key_byte_aligned"
.LASF136:
	.string	"md_type"
.LASF39:
	.string	"MBEDTLS_MD_SHA256"
.LASF120:
	.string	"key_buffer_length"
.LASF97:
	.string	"mbedtls_psa_asymmetric_decrypt"
.LASF110:
	.string	"rsa_pss_expected_salt_len"
.LASF73:
	.string	"mbedtls_rsa_write_key"
.LASF78:
	.string	"mbedtls_rsa_parse_key"
.LASF13:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF100:
	.string	"hash_alg"
.LASF4:
	.string	"short int"
.LASF63:
	.string	"mbedtls_rsa_pkcs1_sign"
.LASF111:
	.string	"klen"
.LASF119:
	.string	"custom_data_length"
.LASF5:
	.string	"short unsigned int"
.LASF107:
	.string	"exit"
.LASF86:
	.string	"attributes"
.LASF16:
	.string	"uint32_t"
.LASF7:
	.string	"long unsigned int"
.LASF17:
	.string	"char"
.LASF67:
	.string	"mbedtls_psa_get_random"
.LASF30:
	.string	"mbedtls_f_rng_t"
.LASF68:
	.string	"mbedtls_rsa_gen_key"
.LASF40:
	.string	"MBEDTLS_MD_SHA384"
.LASF35:
	.string	"MBEDTLS_MD_MD5"
.LASF82:
	.string	"mbedtls_mpi_bitlen"
.LASF137:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF103:
	.string	"hash"
.LASF83:
	.string	"mbedtls_to_psa_error"
.LASF98:
	.string	"mbedtls_psa_asymmetric_encrypt"
.LASF79:
	.string	"mbedtls_rsa_init"
.LASF116:
	.string	"psa_rsa_decode_md_type"
.LASF22:
	.string	"psa_key_id_t"
.LASF59:
	.string	"mbedtls_rsa_pkcs1_encrypt"
.LASF135:
	.string	"psa_alg"
.LASF71:
	.string	"memset"
.LASF96:
	.string	"status"
.LASF80:
	.string	"calloc"
.LASF69:
	.string	"memmove"
.LASF24:
	.string	"psa_key_usage_t"
.LASF14:
	.string	"uint8_t"
.LASF90:
	.string	"input_length"
.LASF50:
	.string	"alg2"
.LASF101:
	.string	"md_alg"
.LASF42:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF88:
	.string	"key_buffer_size"
.LASF99:
	.string	"rsa_exit"
.LASF92:
	.string	"salt_length"
.LASF113:
	.string	"room"
.LASF75:
	.string	"mbedtls_rsa_free"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_rsa.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
