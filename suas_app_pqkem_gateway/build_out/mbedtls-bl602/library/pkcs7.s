	.file	"pkcs7.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pkcs7.c"
	.section	.text.mbedtls_error_add,"ax",@progbits
	.align	1
	.type	mbedtls_error_add, @function
mbedtls_error_add:
.LFB77:
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
.LFE77:
	.size	mbedtls_error_add, .-mbedtls_error_add
	.section	.text.mbedtls_pkcs7_init,"ax",@progbits
	.align	1
	.globl	mbedtls_pkcs7_init
	.type	mbedtls_pkcs7_init, @function
mbedtls_pkcs7_init:
.LFB81:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pkcs7.c"
	.loc 2 36 1
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
	.loc 2 37 5
	li	a2,788
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 2 38 1
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
.LFE81:
	.size	mbedtls_pkcs7_init, .-mbedtls_pkcs7_init
	.section	.rodata
	.align	2
.LC0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pkcs7.c"
	.section	.text.pkcs7_get_next_content_len,"ax",@progbits
	.align	1
	.type	pkcs7_get_next_content_len, @function
pkcs7_get_next_content_len:
.LFB82:
	.loc 2 42 1
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
	.loc 2 43 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 45 11
	li	a3,160
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 47 8
	lw	a5,-20(s0)
	beq	a5,zero,.L5
	.loc 2 48 15
	li	a3,48
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-20480
	addi	a0,a5,-1152
	call	mbedtls_error_add
	sw	a0,-20(s0)
	j	.L6
.L5:
	.loc 2 49 32
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 49 30
	lw	a4,-40(s0)
	sub	a5,a4,a5
	.loc 2 49 39
	lw	a4,-44(s0)
	lw	a4,0(a4)
	.loc 2 49 15
	beq	a5,a4,.L6
	.loc 2 50 15
	li	a3,50
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-20480
	addi	a0,a5,-1152
	call	mbedtls_error_add
	sw	a0,-20(s0)
.L6:
	.loc 2 54 12
	lw	a5,-20(s0)
	.loc 2 55 1
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
	.size	pkcs7_get_next_content_len, .-pkcs7_get_next_content_len
	.section	.text.pkcs7_get_version,"ax",@progbits
	.align	1
	.type	pkcs7_get_version, @function
pkcs7_get_version:
.LFB83:
	.loc 2 62 1
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
	.loc 2 63 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 65 11
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_int
	sw	a0,-20(s0)
	.loc 2 66 8
	lw	a5,-20(s0)
	beq	a5,zero,.L9
	.loc 2 67 15
	li	a3,67
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-20480
	addi	a0,a5,-1024
	call	mbedtls_error_add
	sw	a0,-20(s0)
.L9:
	.loc 2 71 9
	lw	a5,-44(s0)
	lw	a4,0(a5)
	.loc 2 71 8
	li	a5,1
	beq	a4,a5,.L10
	.loc 2 72 13
	li	a5,-20480
	addi	a5,a5,-1024
	sw	a5,-20(s0)
.L10:
	.loc 2 75 12
	lw	a5,-20(s0)
	.loc 2 76 1
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
	.size	pkcs7_get_version, .-pkcs7_get_version
	.section	.text.pkcs7_get_content_info_type,"ax",@progbits
	.align	1
	.type	pkcs7_get_content_info_type, @function
pkcs7_get_content_info_type:
.LFB84:
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
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	.loc 2 88 12
	sw	zero,-28(s0)
	.loc 2 89 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 90 20
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 92 11
	addi	a5,s0,-28
	li	a3,48
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 94 8
	lw	a5,-20(s0)
	beq	a5,zero,.L13
	.loc 2 95 12
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 2 96 16
	li	a3,96
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-20480
	addi	a0,a5,-1152
	call	mbedtls_error_add
	mv	a5,a0
	j	.L16
.L13:
	.loc 2 98 16
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 98 19
	lw	a5,-28(s0)
	add	a4,a4,a5
	.loc 2 98 14
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 2 99 11
	lw	a5,-44(s0)
	lw	a5,0(a5)
	addi	a4,s0,-28
	li	a3,6
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 100 8
	lw	a5,-20(s0)
	beq	a5,zero,.L15
	.loc 2 101 12
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 2 102 16
	li	a3,102
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-20480
	addi	a0,a5,-1152
	call	mbedtls_error_add
	mv	a5,a0
	j	.L16
.L15:
	.loc 2 105 16
	lw	a5,-48(s0)
	li	a4,6
	sw	a4,0(a5)
	.loc 2 106 16
	lw	a4,-28(s0)
	lw	a5,-48(s0)
	sw	a4,4(a5)
	.loc 2 107 16
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 107 14
	lw	a5,-48(s0)
	sw	a4,8(a5)
	.loc 2 108 5
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 108 8
	lw	a5,-28(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 2 110 12
	lw	a5,-20(s0)
.L16:
	.loc 2 111 1
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
	.size	pkcs7_get_content_info_type, .-pkcs7_get_content_info_type
	.section	.text.pkcs7_get_digest_algorithm,"ax",@progbits
	.align	1
	.type	pkcs7_get_digest_algorithm, @function
pkcs7_get_digest_algorithm:
.LFB85:
	.loc 2 120 1
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
	.loc 2 121 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 123 16
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_alg_null
	sw	a0,-20(s0)
	.loc 2 123 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L18
	.loc 2 124 15
	li	a3,124
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-20480
	addi	a0,a5,-1280
	call	mbedtls_error_add
	sw	a0,-20(s0)
.L18:
	.loc 2 127 12
	lw	a5,-20(s0)
	.loc 2 128 1
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
	.size	pkcs7_get_digest_algorithm, .-pkcs7_get_digest_algorithm
	.section	.text.pkcs7_get_digest_algorithm_set,"ax",@progbits
	.align	1
	.type	pkcs7_get_digest_algorithm_set, @function
pkcs7_get_digest_algorithm_set:
.LFB86:
	.loc 2 136 1
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
	.loc 2 137 12
	sw	zero,-24(s0)
	.loc 2 138 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 140 11
	addi	a5,s0,-24
	li	a3,49
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 142 8
	lw	a5,-20(s0)
	beq	a5,zero,.L21
	.loc 2 143 16
	li	a3,143
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-20480
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L25
.L21:
	.loc 2 146 11
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 146 14
	lw	a5,-24(s0)
	.loc 2 146 9
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 2 148 11
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_alg_null
	sw	a0,-20(s0)
	.loc 2 149 8
	lw	a5,-20(s0)
	beq	a5,zero,.L23
	.loc 2 150 16
	li	a3,150
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-20480
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L25
.L23:
	.loc 2 154 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 154 8
	lw	a4,-40(s0)
	beq	a4,a5,.L24
	.loc 2 155 16
	li	a5,-20480
	addi	a5,a5,-896
	j	.L25
.L24:
	.loc 2 158 12
	li	a5,0
.L25:
	.loc 2 159 1
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
	.size	pkcs7_get_digest_algorithm_set, .-pkcs7_get_digest_algorithm_set
	.section	.text.pkcs7_get_certificates,"ax",@progbits
	.align	1
	.type	pkcs7_get_certificates, @function
pkcs7_get_certificates:
.LFB87:
	.loc 2 172 1
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
	.loc 2 173 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 174 12
	sw	zero,-36(s0)
	.loc 2 175 12
	sw	zero,-40(s0)
	.loc 2 178 11
	addi	a5,s0,-36
	li	a3,160
	mv	a2,a5
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 180 8
	lw	a4,-20(s0)
	li	a5,-98
	bne	a4,a5,.L27
	.loc 2 181 16
	li	a5,0
	j	.L33
.L27:
	.loc 2 183 8
	lw	a5,-20(s0)
	beq	a5,zero,.L29
	.loc 2 184 16
	li	a3,184
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-20480
	addi	a0,a5,-768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L33
.L29:
	.loc 2 186 11
	lw	a5,-52(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 187 15
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 187 18
	lw	a5,-36(s0)
	.loc 2 187 13
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 189 11
	addi	a5,s0,-40
	li	a3,48
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 191 8
	lw	a5,-20(s0)
	beq	a5,zero,.L30
	.loc 2 192 16
	li	a3,192
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-20480
	addi	a0,a5,-1408
	call	mbedtls_error_add
	mv	a5,a0
	j	.L33
.L30:
	.loc 2 195 16
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 195 19
	lw	a5,-40(s0)
	.loc 2 195 14
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 203 8
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	beq	a4,a5,.L31
	.loc 2 204 16
	li	a5,-20480
	addi	a5,a5,-896
	j	.L33
.L31:
	.loc 2 207 16
	lw	a5,-36(s0)
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-60(s0)
	call	mbedtls_x509_crt_parse_der
	sw	a0,-20(s0)
	.loc 2 207 8 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L32
	.loc 2 208 16
	li	a5,-20480
	addi	a5,a5,-1408
	j	.L33
.L32:
	.loc 2 211 8
	lw	a5,-52(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 2 217 12
	li	a5,1
.L33:
	.loc 2 218 1
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
	.size	pkcs7_get_certificates, .-pkcs7_get_certificates
	.section	.text.pkcs7_get_signature,"ax",@progbits
	.align	1
	.type	pkcs7_get_signature, @function
pkcs7_get_signature:
.LFB88:
	.loc 2 225 1
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
	.loc 2 226 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 227 12
	sw	zero,-24(s0)
	.loc 2 229 11
	addi	a5,s0,-24
	li	a3,4
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 230 8
	lw	a5,-20(s0)
	beq	a5,zero,.L35
	.loc 2 231 16
	lw	a5,-20(s0)
	j	.L37
.L35:
	.loc 2 234 20
	lw	a5,-44(s0)
	li	a4,4
	sw	a4,0(a5)
	.loc 2 235 20
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	sw	a4,4(a5)
	.loc 2 236 20
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 236 18
	lw	a5,-44(s0)
	sw	a4,8(a5)
	.loc 2 238 10
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 238 13
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 2 238 8
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 2 240 12
	li	a5,0
.L37:
	.loc 2 241 1
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
	.size	pkcs7_get_signature, .-pkcs7_get_signature
	.section	.text.pkcs7_free_signer_info,"ax",@progbits
	.align	1
	.type	pkcs7_free_signer_info, @function
pkcs7_free_signer_info:
.LFB89:
	.loc 2 244 1
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
	.loc 2 248 8
	lw	a5,-36(s0)
	beq	a5,zero,.L43
	.loc 2 252 14
	lw	a5,-36(s0)
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 2 253 11
	j	.L41
.L42:
	.loc 2 254 18
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 2 255 18
	lw	a5,-20(s0)
	lw	a5,24(a5)
	sw	a5,-20(s0)
	.loc 2 256 9
	lw	a0,-24(s0)
	call	free
.L41:
	.loc 2 253 21
	lw	a5,-20(s0)
	bne	a5,zero,.L42
	.loc 2 258 25
	lw	a5,-36(s0)
	sw	zero,40(a5)
	j	.L38
.L43:
	.loc 2 249 9
	nop
.L38:
	.loc 2 259 1
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
	.size	pkcs7_free_signer_info, .-pkcs7_free_signer_info
	.section	.text.pkcs7_get_signer_info,"ax",@progbits
	.align	1
	.type	pkcs7_get_signer_info, @function
pkcs7_get_signer_info:
.LFB90:
	.loc 2 280 1
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
	.loc 2 282 9
	sw	zero,-20(s0)
	.loc 2 282 23
	li	a5,-110
	sw	a5,-24(s0)
	.loc 2 283 12
	sw	zero,-36(s0)
	.loc 2 285 16
	addi	a5,s0,-36
	li	a3,48
	mv	a2,a5
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 287 8
	lw	a5,-20(s0)
	bne	a5,zero,.L61
	.loc 2 291 18
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 291 21
	lw	a5,-36(s0)
	.loc 2 291 16
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 293 11
	lw	a5,-60(s0)
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	pkcs7_get_version
	sw	a0,-24(s0)
	.loc 2 294 8
	lw	a5,-24(s0)
	bne	a5,zero,.L62
	.loc 2 298 16
	addi	a5,s0,-36
	li	a3,48
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 300 8
	lw	a5,-20(s0)
	bne	a5,zero,.L63
	.loc 2 304 25
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 304 28
	lw	a5,-36(s0)
	.loc 2 304 23
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 306 28
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 306 26
	lw	a5,-60(s0)
	sw	a4,56(a5)
	.loc 2 308 16
	addi	a5,s0,-36
	li	a3,48
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 310 8
	lw	a5,-20(s0)
	bne	a5,zero,.L64
	.loc 2 314 36
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 314 11
	lw	a5,-36(s0)
	.loc 2 314 39
	add	a4,a4,a5
	.loc 2 314 11
	lw	a5,-60(s0)
	addi	a5,a5,16
	mv	a2,a5
	mv	a1,a4
	lw	a0,-52(s0)
	call	mbedtls_x509_get_name
	sw	a0,-24(s0)
	.loc 2 315 8
	lw	a5,-24(s0)
	bne	a5,zero,.L65
	.loc 2 319 40
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 319 63
	lw	a5,-60(s0)
	lw	a5,56(a5)
	.loc 2 319 43
	sub	a5,a4,a5
	.loc 2 319 30
	mv	a4,a5
	.loc 2 319 28
	lw	a5,-60(s0)
	sw	a4,52(a5)
	.loc 2 321 11
	lw	a5,-60(s0)
	addi	a5,a5,4
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-52(s0)
	call	mbedtls_x509_get_serial
	sw	a0,-24(s0)
	.loc 2 322 8
	lw	a5,-24(s0)
	bne	a5,zero,.L66
	.loc 2 327 9
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 327 8
	lw	a4,-32(s0)
	beq	a4,a5,.L52
	.loc 2 328 13
	li	a5,-20480
	addi	a5,a5,-1664
	sw	a5,-24(s0)
	.loc 2 329 9
	j	.L46
.L52:
	.loc 2 332 11
	lw	a5,-60(s0)
	addi	a5,a5,60
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	pkcs7_get_digest_algorithm
	sw	a0,-24(s0)
	.loc 2 333 8
	lw	a5,-24(s0)
	bne	a5,zero,.L67
	.loc 2 338 31
	lw	a5,-60(s0)
	lw	a4,60(a5)
	.loc 2 338 42
	lw	a5,-64(s0)
	lw	a5,0(a5)
	.loc 2 338 8
	bne	a4,a5,.L54
	.loc 2 339 31
	lw	a5,-60(s0)
	lw	a4,64(a5)
	.loc 2 339 42
	lw	a5,-64(s0)
	lw	a5,4(a5)
	.loc 2 338 48 discriminator 1
	bne	a4,a5,.L54
	.loc 2 340 38
	lw	a5,-60(s0)
	lw	a4,68(a5)
	.loc 2 340 45
	lw	a5,-64(s0)
	lw	a3,8(a5)
	.loc 2 340 9
	lw	a5,-64(s0)
	lw	a5,4(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 2 339 48
	beq	a5,zero,.L55
.L54:
	.loc 2 341 13
	li	a5,-20480
	addi	a5,a5,-1664
	sw	a5,-24(s0)
	.loc 2 342 9
	j	.L46
.L55:
	.loc 2 346 11
	lw	a5,-60(s0)
	addi	a5,a5,72
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	pkcs7_get_digest_algorithm
	sw	a0,-24(s0)
	.loc 2 347 8
	lw	a5,-24(s0)
	bne	a5,zero,.L68
	.loc 2 351 46
	lw	a5,-60(s0)
	addi	a5,a5,84
	.loc 2 351 11
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	pkcs7_get_signature
	sw	a0,-24(s0)
	.loc 2 352 8
	lw	a5,-24(s0)
	bne	a5,zero,.L69
	.loc 2 357 9
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 357 8
	lw	a4,-28(s0)
	beq	a4,a5,.L70
	.loc 2 358 13
	li	a5,-20480
	addi	a5,a5,-1664
	sw	a5,-24(s0)
	j	.L46
.L61:
	.loc 2 288 9
	nop
	j	.L46
.L62:
	.loc 2 295 9
	nop
	j	.L46
.L63:
	.loc 2 301 9
	nop
	j	.L46
.L64:
	.loc 2 311 9
	nop
	j	.L46
.L65:
	.loc 2 316 9
	nop
	j	.L46
.L66:
	.loc 2 323 9
	nop
	j	.L46
.L67:
	.loc 2 334 9
	nop
	j	.L46
.L68:
	.loc 2 348 9
	nop
	j	.L46
.L69:
	.loc 2 353 9
	nop
	j	.L46
.L70:
	.loc 2 361 1
	nop
.L46:
	.loc 2 362 8
	lw	a5,-20(s0)
	bne	a5,zero,.L58
	.loc 2 362 23 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L59
.L58:
	.loc 2 363 9
	lw	a0,-60(s0)
	call	pkcs7_free_signer_info
	.loc 2 364 15
	li	a3,364
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-20480
	addi	a0,a5,-1664
	call	mbedtls_error_add
	sw	a0,-24(s0)
.L59:
	.loc 2 368 12
	lw	a5,-24(s0)
	.loc 2 369 1
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
	.size	pkcs7_get_signer_info, .-pkcs7_get_signer_info
	.section	.text.pkcs7_get_signers_info_set,"ax",@progbits
	.align	1
	.type	pkcs7_get_signers_info_set, @function
pkcs7_get_signers_info_set:
.LFB91:
	.loc 2 380 1
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
	.loc 2 382 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 383 9
	sw	zero,-24(s0)
	.loc 2 384 12
	sw	zero,-44(s0)
	.loc 2 386 11
	addi	a5,s0,-44
	li	a3,49
	mv	a2,a5
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 388 8
	lw	a5,-20(s0)
	beq	a5,zero,.L72
	.loc 2 389 16
	li	a3,389
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-20480
	addi	a0,a5,-1664
	call	mbedtls_error_add
	mv	a5,a0
	j	.L83
.L72:
	.loc 2 393 13
	lw	a5,-44(s0)
	.loc 2 393 8
	bne	a5,zero,.L74
	.loc 2 394 16
	li	a5,0
	j	.L83
.L74:
	.loc 2 397 15
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 397 18
	lw	a5,-44(s0)
	.loc 2 397 13
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 2 399 11
	lw	a3,-64(s0)
	lw	a2,-60(s0)
	lw	a1,-36(s0)
	lw	a0,-52(s0)
	call	pkcs7_get_signer_info
	sw	a0,-20(s0)
	.loc 2 400 8
	lw	a5,-20(s0)
	beq	a5,zero,.L75
	.loc 2 401 16
	lw	a5,-20(s0)
	j	.L83
.L75:
	.loc 2 403 10
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 2 405 32
	lw	a5,-60(s0)
	sw	a5,-28(s0)
	.loc 2 406 11
	j	.L76
.L80:
.LBB2:
	.loc 2 408 13
	li	a1,100
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-40(s0)
	.loc 2 409 12
	lw	a5,-40(s0)
	bne	a5,zero,.L77
	.loc 2 410 17
	li	a5,-20480
	addi	a5,a5,-1920
	sw	a5,-20(s0)
	.loc 2 411 13
	j	.L78
.L77:
	.loc 2 414 15
	lw	a3,-64(s0)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-52(s0)
	call	pkcs7_get_signer_info
	sw	a0,-20(s0)
	.loc 2 415 12
	lw	a5,-20(s0)
	beq	a5,zero,.L79
	.loc 2 416 13
	lw	a0,-40(s0)
	call	free
	.loc 2 417 13
	j	.L78
.L79:
	.loc 2 419 20
	lw	a5,-28(s0)
	lw	a4,-40(s0)
	sw	a4,96(a5)
	.loc 2 420 14
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	.loc 2 421 14
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L76:
.LBE2:
	.loc 2 406 12
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 406 15
	lw	a4,-36(s0)
	bne	a4,a5,.L80
	.loc 2 424 12
	lw	a5,-24(s0)
	j	.L83
.L78:
	.loc 2 427 5
	lw	a0,-60(s0)
	call	pkcs7_free_signer_info
	.loc 2 428 32
	lw	a5,-60(s0)
	lw	a5,96(a5)
	sw	a5,-32(s0)
	.loc 2 429 11
	j	.L81
.L82:
	.loc 2 430 14
	lw	a5,-32(s0)
	sw	a5,-28(s0)
	.loc 2 431 16
	lw	a5,-32(s0)
	lw	a5,96(a5)
	sw	a5,-32(s0)
	.loc 2 432 9
	lw	a0,-28(s0)
	call	pkcs7_free_signer_info
	.loc 2 433 9
	lw	a0,-28(s0)
	call	free
.L81:
	.loc 2 429 19
	lw	a5,-32(s0)
	bne	a5,zero,.L82
	.loc 2 435 23
	lw	a5,-60(s0)
	sw	zero,96(a5)
	.loc 2 436 12
	lw	a5,-20(s0)
.L83:
	.loc 2 437 1
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
.LFE91:
	.size	pkcs7_get_signers_info_set, .-pkcs7_get_signers_info_set
	.section	.rodata
	.align	2
.LC1:
	.base64	"KoZIhvcNAQcBAA=="
	.section	.text.pkcs7_get_signed_data,"ax",@progbits
	.align	1
	.type	pkcs7_get_signed_data, @function
pkcs7_get_signed_data:
.LFB92:
	.loc 2 453 1
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
	sw	a2,-76(s0)
	.loc 2 454 20
	lw	a5,-68(s0)
	sw	a5,-28(s0)
	.loc 2 455 20
	lw	a4,-68(s0)
	lw	a5,-72(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 456 20
	sw	zero,-32(s0)
	.loc 2 457 12
	sw	zero,-36(s0)
	.loc 2 458 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 2 461 11
	addi	a4,s0,-36
	addi	a5,s0,-28
	li	a3,48
	mv	a2,a4
	lw	a1,-20(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-24(s0)
	.loc 2 463 8
	lw	a5,-24(s0)
	beq	a5,zero,.L85
	.loc 2 464 16
	li	a3,464
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-24(s0)
	li	a5,-20480
	addi	a0,a5,-768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L100
.L85:
	.loc 2 467 11
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	.loc 2 467 8
	lw	a4,-20(s0)
	beq	a4,a5,.L87
	.loc 2 468 16
	li	a3,468
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-20480
	addi	a0,a5,-768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L100
.L87:
	.loc 2 473 11
	lw	a4,-76(s0)
	addi	a5,s0,-28
	mv	a2,a4
	lw	a1,-20(s0)
	mv	a0,a5
	call	pkcs7_get_version
	sw	a0,-24(s0)
	.loc 2 474 8
	lw	a5,-24(s0)
	beq	a5,zero,.L88
	.loc 2 475 16
	lw	a5,-24(s0)
	j	.L100
.L88:
	.loc 2 480 42
	lw	a5,-76(s0)
	addi	a4,a5,4
	.loc 2 479 11
	addi	a5,s0,-28
	mv	a2,a4
	lw	a1,-20(s0)
	mv	a0,a5
	call	pkcs7_get_digest_algorithm_set
	sw	a0,-24(s0)
	.loc 2 481 8
	lw	a5,-24(s0)
	beq	a5,zero,.L89
	.loc 2 482 16
	lw	a5,-24(s0)
	j	.L100
.L89:
	.loc 2 485 34
	lw	a5,-76(s0)
	addi	a5,a5,4
	.loc 2 485 11
	addi	a4,s0,-37
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_oid_get_md_alg
	sw	a0,-24(s0)
	.loc 2 486 8
	lw	a5,-24(s0)
	beq	a5,zero,.L90
	.loc 2 487 16
	li	a5,-20480
	addi	a5,a5,-1280
	j	.L100
.L90:
	.loc 2 491 5
	addi	a5,s0,-52
	li	a2,12
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 492 11
	addi	a3,s0,-52
	addi	a4,s0,-32
	addi	a5,s0,-28
	mv	a2,a4
	lw	a1,-20(s0)
	mv	a0,a5
	call	pkcs7_get_content_info_type
	sw	a0,-24(s0)
	.loc 2 493 8
	lw	a5,-24(s0)
	beq	a5,zero,.L91
	.loc 2 494 16
	lw	a5,-24(s0)
	j	.L100
.L91:
	.loc 2 496 97
	lw	a4,-48(s0)
	.loc 2 496 8
	li	a5,9
	bne	a4,a5,.L92
	.loc 2 496 186 discriminator 1
	lw	a5,-44(s0)
	.loc 2 496 107 discriminator 1
	lw	a4,-48(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	memcmp
	mv	a5,a0
	.loc 2 496 104 discriminator 2
	beq	a5,zero,.L93
.L92:
	.loc 2 497 16
	li	a5,-20480
	addi	a5,a5,-1152
	j	.L100
.L93:
	.loc 2 500 11
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	.loc 2 500 8
	beq	a4,a5,.L94
	.loc 2 502 15
	lw	a4,-32(s0)
	addi	a2,s0,-36
	addi	a5,s0,-28
	li	a3,160
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-24(s0)
	.loc 2 506 12
	lw	a5,-24(s0)
	beq	a5,zero,.L95
	.loc 2 507 20
	li	a3,507
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-24(s0)
	li	a5,-20480
	addi	a0,a5,-1152
	call	mbedtls_error_add
	mv	a5,a0
	j	.L100
.L95:
	.loc 2 509 11
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 510 15
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	.loc 2 510 12
	beq	a4,a5,.L96
	.loc 2 511 20
	li	a3,511
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-24(s0)
	li	a5,-20480
	addi	a0,a5,-1152
	call	mbedtls_error_add
	mv	a5,a0
	j	.L100
.L96:
	.loc 2 514 16
	li	a5,-20480
	addi	a5,a5,-896
	j	.L100
.L94:
	.loc 2 518 5
	lw	a5,-76(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	mbedtls_x509_crt_init
	.loc 2 519 11
	lw	a5,-76(s0)
	addi	a4,a5,20
	addi	a5,s0,-28
	mv	a2,a4
	lw	a1,-20(s0)
	mv	a0,a5
	call	pkcs7_get_certificates
	sw	a0,-24(s0)
	.loc 2 520 8
	lw	a5,-24(s0)
	bge	a5,zero,.L97
	.loc 2 521 16
	lw	a5,-24(s0)
	j	.L100
.L97:
	.loc 2 524 30
	lw	a5,-76(s0)
	lw	a4,-24(s0)
	sw	a4,16(a5)
	.loc 2 532 29
	lw	a5,-76(s0)
	sw	zero,424(a5)
	.loc 2 535 11
	lw	a5,-76(s0)
	addi	a4,a5,676
	.loc 2 538 38
	lw	a5,-76(s0)
	addi	a3,a5,4
	.loc 2 535 11
	addi	a5,s0,-28
	mv	a2,a4
	lw	a1,-20(s0)
	mv	a0,a5
	call	pkcs7_get_signers_info_set
	sw	a0,-24(s0)
	.loc 2 539 8
	lw	a5,-24(s0)
	bge	a5,zero,.L98
	.loc 2 540 16
	lw	a5,-24(s0)
	j	.L100
.L98:
	.loc 2 543 32
	lw	a5,-76(s0)
	lw	a4,-24(s0)
	sw	a4,672(a5)
	.loc 2 546 11
	lw	a5,-28(s0)
	.loc 2 546 8
	lw	a4,-20(s0)
	beq	a4,a5,.L99
	.loc 2 547 16
	li	a5,-20480
	addi	a5,a5,-768
	j	.L100
.L99:
	.loc 2 550 12
	li	a5,0
.L100:
	.loc 2 551 1
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
.LFE92:
	.size	pkcs7_get_signed_data, .-pkcs7_get_signed_data
	.section	.rodata
	.align	2
.LC2:
	.base64	"KoZIhvcNAQcCAA=="
	.align	2
.LC3:
	.base64	"KoZIhvcNAQcGAA=="
	.align	2
.LC4:
	.base64	"KoZIhvcNAQcDAA=="
	.align	2
.LC5:
	.base64	"KoZIhvcNAQcEAA=="
	.align	2
.LC6:
	.base64	"KoZIhvcNAQcFAA=="
	.section	.text.mbedtls_pkcs7_parse_der,"ax",@progbits
	.align	1
	.globl	mbedtls_pkcs7_parse_der
	.type	mbedtls_pkcs7_parse_der, @function
mbedtls_pkcs7_parse_der:
.LFB93:
	.loc 2 555 1
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
	.loc 2 558 12
	sw	zero,-32(s0)
	.loc 2 559 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 561 8
	lw	a5,-36(s0)
	bne	a5,zero,.L102
	.loc 2 562 16
	li	a5,-20480
	addi	a5,a5,-1792
	j	.L123
.L102:
	.loc 2 566 24
	lw	a1,-44(s0)
	li	a0,1
	call	calloc
	mv	a5,a0
	.loc 2 566 22 discriminator 1
	sw	a5,-28(s0)
	.loc 2 566 18 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	sw	a4,8(a5)
	.loc 2 567 19
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 567 8
	bne	a5,zero,.L104
	.loc 2 568 13
	li	a5,-20480
	addi	a5,a5,-1920
	sw	a5,-20(s0)
	.loc 2 569 9
	j	.L105
.L104:
	.loc 2 571 5
	lw	a5,-28(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 2 572 20
	lw	a5,-36(s0)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	.loc 2 573 13
	lw	a4,-28(s0)
	.loc 2 573 9
	lw	a5,-44(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 575 11
	addi	a4,s0,-32
	addi	a5,s0,-28
	li	a3,48
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 577 8
	lw	a5,-20(s0)
	beq	a5,zero,.L106
	.loc 2 578 15
	li	a3,578
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-20480
	addi	a0,a5,-768
	call	mbedtls_error_add
	sw	a0,-20(s0)
	.loc 2 579 9
	j	.L105
.L106:
	.loc 2 582 23
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	sub	a5,a4,a5
	.loc 2 582 28
	lw	a4,-32(s0)
	.loc 2 582 8
	beq	a5,a4,.L107
	.loc 2 583 15
	li	a3,583
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-20480
	addi	a0,a5,-768
	call	mbedtls_error_add
	sw	a0,-20(s0)
	.loc 2 585 9
	j	.L105
.L107:
	.loc 2 588 16
	addi	a4,s0,-32
	addi	a5,s0,-28
	li	a3,6
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 588 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L108
	.loc 2 589 12
	lw	a4,-20(s0)
	li	a5,-98
	bne	a4,a5,.L124
	.loc 2 592 23
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 592 11
	sw	a5,-28(s0)
	.loc 2 593 13
	lw	a5,-44(s0)
	sw	a5,-32(s0)
	.loc 2 594 9
	j	.L110
.L108:
	.loc 2 597 79
	lw	a4,-32(s0)
	.loc 2 597 8
	li	a5,9
	bne	a4,a5,.L111
	.loc 2 597 92 discriminator 1
	lw	a5,-28(s0)
	lw	a4,-32(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	memcmp
	mv	a5,a0
	.loc 2 597 89 discriminator 2
	beq	a5,zero,.L112
.L111:
	.loc 2 599 84
	lw	a4,-32(s0)
	.loc 2 599 12
	li	a5,9
	bne	a4,a5,.L113
	.loc 2 599 97 discriminator 1
	lw	a5,-28(s0)
	lw	a4,-32(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	memcmp
	mv	a5,a0
	.loc 2 599 13 discriminator 2
	beq	a5,zero,.L114
.L113:
	.loc 2 600 87
	lw	a4,-32(s0)
	.loc 2 600 13
	li	a5,9
	bne	a4,a5,.L115
	.loc 2 600 100 discriminator 1
	lw	a5,-28(s0)
	lw	a4,-32(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	memcmp
	mv	a5,a0
	.loc 2 600 16 discriminator 2
	beq	a5,zero,.L114
.L115:
	.loc 2 601 87
	lw	a4,-32(s0)
	.loc 2 601 13
	li	a5,9
	bne	a4,a5,.L116
	.loc 2 601 100 discriminator 1
	lw	a5,-28(s0)
	lw	a4,-32(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	memcmp
	mv	a5,a0
	.loc 2 601 16 discriminator 2
	beq	a5,zero,.L114
.L116:
	.loc 2 602 87
	lw	a4,-32(s0)
	.loc 2 602 13
	li	a5,9
	bne	a4,a5,.L117
	.loc 2 602 100 discriminator 1
	lw	a5,-28(s0)
	lw	a4,-32(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	memcmp
	mv	a5,a0
	.loc 2 602 16 discriminator 2
	beq	a5,zero,.L114
.L117:
	.loc 2 603 87
	lw	a4,-32(s0)
	.loc 2 603 13
	li	a5,9
	bne	a4,a5,.L118
	.loc 2 603 100 discriminator 1
	lw	a5,-28(s0)
	lw	a4,-32(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	memcmp
	mv	a5,a0
	.loc 2 603 16 discriminator 2
	bne	a5,zero,.L118
.L114:
	.loc 2 605 17
	li	a5,-20480
	addi	a5,a5,-896
	sw	a5,-20(s0)
	.loc 2 610 9
	j	.L105
.L118:
	.loc 2 608 17
	li	a5,-20480
	addi	a5,a5,-1792
	sw	a5,-20(s0)
	.loc 2 610 9
	j	.L105
.L112:
	.loc 2 613 7
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 615 11
	addi	a4,s0,-32
	addi	a5,s0,-28
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	pkcs7_get_next_content_len
	sw	a0,-20(s0)
	.loc 2 616 8
	lw	a5,-20(s0)
	bne	a5,zero,.L125
	.loc 2 621 11
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	.loc 2 621 8
	lw	a4,-24(s0)
	beq	a4,a5,.L126
	.loc 2 622 13
	li	a5,-20480
	addi	a5,a5,-1792
	sw	a5,-20(s0)
	.loc 2 623 9
	j	.L105
.L126:
	.loc 2 626 1
	nop
.L110:
	.loc 2 627 11
	lw	a4,-28(s0)
	lw	a3,-32(s0)
	lw	a5,-36(s0)
	addi	a5,a5,12
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	pkcs7_get_signed_data
	sw	a0,-20(s0)
	.loc 2 628 8
	lw	a5,-20(s0)
	bne	a5,zero,.L127
	.loc 2 632 9
	li	a5,2
	sw	a5,-20(s0)
	j	.L105
.L124:
	.loc 2 590 13
	nop
	j	.L105
.L125:
	.loc 2 617 9
	nop
	j	.L105
.L127:
	.loc 2 629 9
	nop
.L105:
	.loc 2 635 8
	lw	a5,-20(s0)
	bge	a5,zero,.L122
	.loc 2 636 9
	lw	a0,-36(s0)
	call	mbedtls_pkcs7_free
.L122:
	.loc 2 639 12
	lw	a5,-20(s0)
.L123:
	.loc 2 640 1
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
	.size	mbedtls_pkcs7_parse_der, .-mbedtls_pkcs7_parse_der
	.section	.text.mbedtls_pkcs7_data_or_hash_verify,"ax",@progbits
	.align	1
	.type	mbedtls_pkcs7_data_or_hash_verify, @function
mbedtls_pkcs7_data_or_hash_verify:
.LFB94:
	.loc 2 647 1
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
	.loc 2 648 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 650 24
	lw	a5,-56(s0)
	lw	a4,204(a5)
	sw	a4,-40(s0)
	lw	a5,208(a5)
	sw	a5,-36(s0)
	.loc 2 655 27
	lw	a5,-52(s0)
	lw	a5,684(a5)
	.loc 2 655 8
	bne	a5,zero,.L129
	.loc 2 656 16
	li	a5,-20480
	addi	a5,a5,-1408
	j	.L144
.L129:
	.loc 2 659 9
	lw	a5,-56(s0)
	addi	a5,a5,168
	mv	a0,a5
	call	mbedtls_x509_time_is_past
	mv	a5,a0
	.loc 2 659 8 discriminator 1
	bne	a5,zero,.L131
	.loc 2 660 9
	lw	a5,-56(s0)
	addi	a5,a5,144
	mv	a0,a5
	call	mbedtls_x509_time_is_future
	mv	a5,a0
	.loc 2 659 52 discriminator 2
	beq	a5,zero,.L132
.L131:
	.loc 2 661 16
	li	a5,-24576
	addi	a5,a5,1920
	j	.L144
.L132:
	.loc 2 664 34
	lw	a5,-52(s0)
	addi	a5,a5,16
	.loc 2 664 11
	addi	a4,s0,-41
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_oid_get_md_alg
	sw	a0,-20(s0)
	.loc 2 665 8
	lw	a5,-20(s0)
	beq	a5,zero,.L133
	.loc 2 666 16
	lw	a5,-20(s0)
	j	.L144
.L133:
	.loc 2 669 15
	lbu	a5,-41(s0)
	mv	a0,a5
	call	mbedtls_md_info_from_type
	sw	a0,-28(s0)
	.loc 2 670 8
	lw	a5,-28(s0)
	bne	a5,zero,.L134
	.loc 2 671 16
	li	a5,-20480
	addi	a5,a5,-2048
	j	.L144
.L134:
	.loc 2 674 19
	lw	a0,-28(s0)
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 2 674 12 discriminator 1
	li	a1,1
	mv	a0,a5
	call	calloc
	mv	a5,a0
	sw	a5,-32(s0)
	.loc 2 675 8
	lw	a5,-32(s0)
	bne	a5,zero,.L135
	.loc 2 676 16
	li	a5,-20480
	addi	a5,a5,-1920
	j	.L144
.L135:
	.loc 2 680 8
	lw	a5,-68(s0)
	beq	a5,zero,.L136
	.loc 2 681 24
	lw	a0,-28(s0)
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 2 681 24 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 2 681 12 is_stmt 1 discriminator 1
	lw	a5,-64(s0)
	beq	a5,a4,.L137
	.loc 2 682 17
	li	a5,-20480
	addi	a5,a5,-2048
	sw	a5,-20(s0)
	j	.L138
.L137:
	.loc 2 684 13
	lw	a2,-64(s0)
	lw	a1,-60(s0)
	lw	a0,-32(s0)
	call	memcpy
	j	.L138
.L136:
	.loc 2 687 15
	lw	a3,-32(s0)
	lw	a2,-64(s0)
	lw	a1,-60(s0)
	lw	a0,-28(s0)
	call	mbedtls_md
	sw	a0,-20(s0)
.L138:
	.loc 2 689 8
	lw	a5,-20(s0)
	beq	a5,zero,.L139
	.loc 2 690 9
	lw	a0,-32(s0)
	call	free
	.loc 2 691 16
	li	a5,-20480
	addi	a5,a5,-2048
	j	.L144
.L139:
	.loc 2 695 9
	li	a5,-20480
	addi	a5,a5,-2048
	sw	a5,-20(s0)
	.loc 2 707 17
	lw	a5,-52(s0)
	addi	a5,a5,688
	sw	a5,-24(s0)
	.loc 2 707 5
	j	.L140
.L143:
	.loc 2 708 15
	lbu	s1,-41(s0)
	.loc 2 709 33
	lw	a0,-28(s0)
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 2 708 15
	mv	a3,a5
	.loc 2 710 44
	lw	a5,-24(s0)
	lw	a4,92(a5)
	.loc 2 708 15
	lw	a5,-24(s0)
	lw	a5,88(a5)
	addi	a0,s0,-40
	lw	a2,-32(s0)
	mv	a1,s1
	call	mbedtls_pk_verify
	sw	a0,-20(s0)
	.loc 2 712 12
	lw	a5,-20(s0)
	beq	a5,zero,.L145
	.loc 2 707 63 discriminator 2
	lw	a5,-24(s0)
	lw	a5,96(a5)
	sw	a5,-24(s0)
.L140:
	.loc 2 707 48 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L143
	j	.L142
.L145:
	.loc 2 713 13
	nop
.L142:
	.loc 2 717 5
	lw	a0,-32(s0)
	call	free
	.loc 2 719 12
	lw	a5,-20(s0)
.L144:
	.loc 2 720 1
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
.LFE94:
	.size	mbedtls_pkcs7_data_or_hash_verify, .-mbedtls_pkcs7_data_or_hash_verify
	.section	.text.mbedtls_pkcs7_signed_data_verify,"ax",@progbits
	.align	1
	.globl	mbedtls_pkcs7_signed_data_verify
	.type	mbedtls_pkcs7_signed_data_verify, @function
mbedtls_pkcs7_signed_data_verify:
.LFB95:
	.loc 2 726 1
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
	.loc 2 727 8
	lw	a5,-28(s0)
	bne	a5,zero,.L147
	.loc 2 728 16
	li	a5,-20480
	addi	a5,a5,-1792
	j	.L148
.L147:
	.loc 2 730 12
	li	a4,0
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_pkcs7_data_or_hash_verify
	mv	a5,a0
.L148:
	.loc 2 731 1
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
.LFE95:
	.size	mbedtls_pkcs7_signed_data_verify, .-mbedtls_pkcs7_signed_data_verify
	.section	.text.mbedtls_pkcs7_signed_hash_verify,"ax",@progbits
	.align	1
	.globl	mbedtls_pkcs7_signed_hash_verify
	.type	mbedtls_pkcs7_signed_hash_verify, @function
mbedtls_pkcs7_signed_hash_verify:
.LFB96:
	.loc 2 737 1
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
	.loc 2 738 8
	lw	a5,-28(s0)
	bne	a5,zero,.L150
	.loc 2 739 16
	li	a5,-20480
	addi	a5,a5,-1792
	j	.L151
.L150:
	.loc 2 741 12
	li	a4,1
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_pkcs7_data_or_hash_verify
	mv	a5,a0
.L151:
	.loc 2 742 1
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
.LFE96:
	.size	mbedtls_pkcs7_signed_hash_verify, .-mbedtls_pkcs7_signed_hash_verify
	.section	.text.mbedtls_pkcs7_free,"ax",@progbits
	.align	1
	.globl	mbedtls_pkcs7_free
	.type	mbedtls_pkcs7_free, @function
mbedtls_pkcs7_free:
.LFB97:
	.loc 2 748 1
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
	.loc 2 752 8
	lw	a5,-36(s0)
	beq	a5,zero,.L158
	.loc 2 752 35 discriminator 1
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 752 22 discriminator 1
	beq	a5,zero,.L158
	.loc 2 756 20
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 756 5
	mv	a0,a5
	call	free
	.loc 2 758 5
	lw	a5,-36(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	mbedtls_x509_crt_free
	.loc 2 759 5
	lw	a5,-36(s0)
	addi	a5,a5,440
	mv	a0,a5
	call	mbedtls_x509_crl_free
	.loc 2 761 16
	lw	a5,-36(s0)
	lw	a5,784(a5)
	sw	a5,-20(s0)
	.loc 2 762 5
	lw	a5,-36(s0)
	addi	a5,a5,688
	mv	a0,a5
	call	pkcs7_free_signer_info
	.loc 2 763 11
	j	.L156
.L157:
	.loc 2 764 21
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 2 765 20
	lw	a5,-24(s0)
	lw	a5,96(a5)
	sw	a5,-20(s0)
	.loc 2 766 9
	lw	a0,-24(s0)
	call	pkcs7_free_signer_info
	.loc 2 767 9
	lw	a0,-24(s0)
	call	free
.L156:
	.loc 2 763 23
	lw	a5,-20(s0)
	bne	a5,zero,.L157
	.loc 2 770 18
	lw	a5,-36(s0)
	sw	zero,8(a5)
	j	.L152
.L158:
	.loc 2 753 9
	nop
.L152:
	.loc 2 771 1
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
	.size	mbedtls_pkcs7_free, .-mbedtls_pkcs7_free
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/pk.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509_crl.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509_crt.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/pkcs7.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/oid.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x12b2
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x21
	.4byte	.LASF189
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
	.uleb128 0x22
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xe
	.4byte	0x68
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x74
	.uleb128 0xe
	.4byte	0x7b
	.uleb128 0xc
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x23
	.byte	0x4
	.uleb128 0x1a
	.4byte	0x93
	.uleb128 0x3
	.4byte	0x32
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xe
	.4byte	0x9f
	.uleb128 0x3
	.4byte	0xa6
	.uleb128 0x3
	.4byte	0xba
	.uleb128 0x1a
	.4byte	0xb0
	.uleb128 0x24
	.uleb128 0xf
	.4byte	.LASF14
	.byte	0xc
	.byte	0x3
	.byte	0x8d
	.4byte	0xed
	.uleb128 0x7
	.string	"tag"
	.byte	0x3
	.byte	0x8e
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x7
	.string	"len"
	.byte	0x3
	.byte	0x8f
	.byte	0xc
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x7
	.string	"p"
	.byte	0x3
	.byte	0x90
	.byte	0x14
	.4byte	0x9a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0x92
	.byte	0x1
	.4byte	0xbb
	.uleb128 0xe
	.4byte	0xed
	.uleb128 0xf
	.4byte	.LASF15
	.byte	0x10
	.byte	0x3
	.byte	0xa1
	.4byte	0x125
	.uleb128 0x7
	.string	"buf"
	.byte	0x3
	.byte	0xa2
	.byte	0x16
	.4byte	0xed
	.byte	0
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x3
	.byte	0xab
	.byte	0x23
	.4byte	0x125
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	0xfe
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x3
	.byte	0xad
	.byte	0x1
	.4byte	0xfe
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x20
	.byte	0x3
	.byte	0xb2
	.4byte	0x177
	.uleb128 0x7
	.string	"oid"
	.byte	0x3
	.byte	0xb3
	.byte	0x16
	.4byte	0xed
	.byte	0
	.uleb128 0x7
	.string	"val"
	.byte	0x3
	.byte	0xb4
	.byte	0x16
	.4byte	0xed
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x3
	.byte	0xbd
	.byte	0x25
	.4byte	0x177
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x3
	.byte	0xc4
	.byte	0x13
	.4byte	0x32
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	0x136
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x3
	.byte	0xc6
	.byte	0x1
	.4byte	0x136
	.uleb128 0x17
	.4byte	0x32
	.byte	0x5
	.byte	0x2f
	.4byte	0x1dc
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x11
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x12
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3c
	.byte	0x3
	.4byte	0x188
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x5
	.byte	0x6b
	.byte	0x22
	.4byte	0x1f9
	.uleb128 0xe
	.4byte	0x1e8
	.uleb128 0x1b
	.4byte	.LASF32
	.uleb128 0x3
	.4byte	0x1f4
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x17
	.4byte	0x32
	.byte	0x6
	.byte	0x49
	.4byte	0x244
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x6
	.byte	0x52
	.byte	0x3
	.4byte	0x208
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x6
	.byte	0xd5
	.byte	0x22
	.4byte	0x261
	.uleb128 0xe
	.4byte	0x250
	.uleb128 0x1b
	.4byte	.LASF42
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x8
	.byte	0x6
	.byte	0xdc
	.4byte	0x28d
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x6
	.byte	0xdd
	.byte	0x1e
	.4byte	0x28d
	.byte	0
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x6
	.byte	0xde
	.byte	0xb
	.4byte	0x93
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	0x25c
	.uleb128 0x25
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x109
	.byte	0x3
	.4byte	0x266
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x7
	.byte	0xd8
	.byte	0x1a
	.4byte	0xed
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x7
	.byte	0xe3
	.byte	0x21
	.4byte	0x17c
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x7
	.byte	0xe8
	.byte	0x1f
	.4byte	0x12a
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x34
	.byte	0x7
	.byte	0xed
	.4byte	0x304
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x7
	.byte	0xee
	.byte	0x16
	.4byte	0x29f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x7
	.byte	0xef
	.byte	0x1b
	.4byte	0x2b7
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x7
	.byte	0xf0
	.byte	0x16
	.4byte	0x29f
	.byte	0x1c
	.uleb128 0x7
	.string	"raw"
	.byte	0x7
	.byte	0xf1
	.byte	0x16
	.4byte	0x29f
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x7
	.byte	0xf3
	.byte	0x1
	.4byte	0x2c3
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x18
	.byte	0x7
	.byte	0xf6
	.4byte	0x36b
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x7
	.byte	0xf7
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x7
	.string	"mon"
	.byte	0x7
	.byte	0xf7
	.byte	0xf
	.4byte	0x68
	.byte	0x4
	.uleb128 0x7
	.string	"day"
	.byte	0x7
	.byte	0xf7
	.byte	0x14
	.4byte	0x68
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x7
	.byte	0xf8
	.byte	0x9
	.4byte	0x68
	.byte	0xc
	.uleb128 0x7
	.string	"min"
	.byte	0x7
	.byte	0xf8
	.byte	0xf
	.4byte	0x68
	.byte	0x10
	.uleb128 0x7
	.string	"sec"
	.byte	0x7
	.byte	0xf8
	.byte	0x14
	.4byte	0x68
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x7
	.byte	0xfa
	.byte	0x1
	.4byte	0x310
	.uleb128 0xe
	.4byte	0x36b
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x40
	.byte	0x8
	.byte	0x27
	.4byte	0x3ca
	.uleb128 0x7
	.string	"raw"
	.byte	0x8
	.byte	0x29
	.byte	0x16
	.4byte	0x29f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x8
	.byte	0x2b
	.byte	0x16
	.4byte	0x29f
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x8
	.byte	0x2d
	.byte	0x17
	.4byte	0x36b
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x8
	.byte	0x33
	.byte	0x16
	.4byte	0x29f
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.4byte	0x3ca
	.byte	0x3c
	.byte	0
	.uleb128 0x3
	.4byte	0x37c
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x8
	.byte	0x3a
	.byte	0x1
	.4byte	0x37c
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0xf4
	.byte	0x8
	.byte	0x40
	.4byte	0x4b8
	.uleb128 0x7
	.string	"raw"
	.byte	0x8
	.byte	0x41
	.byte	0x16
	.4byte	0x29f
	.byte	0
	.uleb128 0x7
	.string	"tbs"
	.byte	0x8
	.byte	0x42
	.byte	0x16
	.4byte	0x29f
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x8
	.byte	0x44
	.byte	0x9
	.4byte	0x68
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x8
	.byte	0x45
	.byte	0x16
	.4byte	0x29f
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x8
	.byte	0x47
	.byte	0x16
	.4byte	0x29f
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x8
	.byte	0x49
	.byte	0x17
	.4byte	0x2ab
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x8
	.byte	0x4b
	.byte	0x17
	.4byte	0x36b
	.byte	0x54
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x8
	.byte	0x4c
	.byte	0x17
	.4byte	0x36b
	.byte	0x6c
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x8
	.byte	0x4e
	.byte	0x1c
	.4byte	0x3cf
	.byte	0x84
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x8
	.byte	0x50
	.byte	0x16
	.4byte	0x29f
	.byte	0xc4
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x8
	.byte	0x52
	.byte	0x16
	.4byte	0x29f
	.byte	0xd0
	.uleb128 0x7
	.string	"sig"
	.byte	0x8
	.byte	0x53
	.byte	0x16
	.4byte	0x29f
	.byte	0xdc
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x8
	.byte	0x54
	.byte	0x17
	.4byte	0x1dc
	.byte	0xe8
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x8
	.byte	0x55
	.byte	0x17
	.4byte	0x244
	.byte	0xe9
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x8
	.byte	0x56
	.byte	0xb
	.4byte	0x93
	.byte	0xec
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x8
	.byte	0x5b
	.byte	0x1e
	.4byte	0x4b8
	.byte	0xf0
	.byte	0
	.uleb128 0x3
	.4byte	0x3db
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x8
	.byte	0x5d
	.byte	0x1
	.4byte	0x3db
	.uleb128 0x18
	.4byte	.LASF73
	.2byte	0x194
	.byte	0x9
	.byte	0x29
	.4byte	0x683
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x9
	.byte	0x2a
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x7
	.string	"raw"
	.byte	0x9
	.byte	0x2c
	.byte	0x16
	.4byte	0x29f
	.byte	0x4
	.uleb128 0x7
	.string	"tbs"
	.byte	0x9
	.byte	0x2d
	.byte	0x16
	.4byte	0x29f
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x9
	.byte	0x2f
	.byte	0x9
	.4byte	0x68
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x9
	.byte	0x30
	.byte	0x16
	.4byte	0x29f
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x9
	.byte	0x31
	.byte	0x16
	.4byte	0x29f
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x9
	.byte	0x33
	.byte	0x16
	.4byte	0x29f
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x9
	.byte	0x34
	.byte	0x16
	.4byte	0x29f
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x9
	.byte	0x36
	.byte	0x17
	.4byte	0x2ab
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x9
	.byte	0x37
	.byte	0x17
	.4byte	0x2ab
	.byte	0x70
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x9
	.byte	0x39
	.byte	0x17
	.4byte	0x36b
	.byte	0x90
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x9
	.byte	0x3a
	.byte	0x17
	.4byte	0x36b
	.byte	0xa8
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x9
	.byte	0x3c
	.byte	0x16
	.4byte	0x29f
	.byte	0xc0
	.uleb128 0x7
	.string	"pk"
	.byte	0x9
	.byte	0x3d
	.byte	0x18
	.4byte	0x292
	.byte	0xcc
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x9
	.byte	0x3f
	.byte	0x16
	.4byte	0x29f
	.byte	0xd4
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x9
	.byte	0x40
	.byte	0x16
	.4byte	0x29f
	.byte	0xe0
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x9
	.byte	0x41
	.byte	0x16
	.4byte	0x29f
	.byte	0xec
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x9
	.byte	0x42
	.byte	0x1b
	.4byte	0x2b7
	.byte	0xf8
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x9
	.byte	0x43
	.byte	0x16
	.4byte	0x29f
	.2byte	0x108
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x9
	.byte	0x44
	.byte	0x1c
	.4byte	0x304
	.2byte	0x114
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x9
	.byte	0x46
	.byte	0x1b
	.4byte	0x2b7
	.2byte	0x148
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x9
	.byte	0x48
	.byte	0x9
	.4byte	0x68
	.2byte	0x158
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x9
	.byte	0x49
	.byte	0x9
	.4byte	0x68
	.2byte	0x15c
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x9
	.byte	0x4a
	.byte	0x9
	.4byte	0x68
	.2byte	0x160
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x9
	.byte	0x4c
	.byte	0x12
	.4byte	0x74
	.2byte	0x164
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x9
	.byte	0x4e
	.byte	0x1b
	.4byte	0x2b7
	.2byte	0x168
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0x9
	.byte	0x50
	.byte	0x13
	.4byte	0x32
	.2byte	0x178
	.uleb128 0x1c
	.string	"sig"
	.byte	0x9
	.byte	0x52
	.4byte	0x29f
	.2byte	0x17c
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x9
	.byte	0x53
	.byte	0x17
	.4byte	0x1dc
	.2byte	0x188
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x9
	.byte	0x54
	.byte	0x17
	.4byte	0x244
	.2byte	0x189
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x9
	.byte	0x55
	.byte	0xb
	.4byte	0x93
	.2byte	0x18c
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x9
	.byte	0x5a
	.byte	0x1e
	.4byte	0x683
	.2byte	0x190
	.byte	0
	.uleb128 0x3
	.4byte	0x4c9
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0x9
	.byte	0x5c
	.byte	0x1
	.4byte	0x4c9
	.uleb128 0xe
	.4byte	0x688
	.uleb128 0x3
	.4byte	0x292
	.uleb128 0x3
	.4byte	0x688
	.uleb128 0x3
	.4byte	0x694
	.uleb128 0x3
	.4byte	0x39
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0xa
	.byte	0x4e
	.byte	0x1a
	.4byte	0xed
	.uleb128 0x17
	.4byte	0x32
	.byte	0xa
	.byte	0x5e
	.4byte	0x6ef
	.uleb128 0x4
	.4byte	.LASF94
	.byte	0
	.uleb128 0x4
	.4byte	.LASF95
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF96
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF98
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF101
	.byte	0x64
	.byte	0xa
	.byte	0x6c
	.4byte	0x764
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xa
	.byte	0x6d
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xa
	.byte	0x6e
	.byte	0x16
	.4byte	0x29f
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0xa
	.byte	0x6f
	.byte	0x17
	.4byte	0x2ab
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0xa
	.byte	0x70
	.byte	0x16
	.4byte	0x29f
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0xa
	.byte	0x71
	.byte	0x16
	.4byte	0x29f
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0xa
	.byte	0x72
	.byte	0x16
	.4byte	0x29f
	.byte	0x48
	.uleb128 0x7
	.string	"sig"
	.byte	0xa
	.byte	0x73
	.byte	0x16
	.4byte	0x29f
	.byte	0x54
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0xa
	.byte	0x74
	.byte	0x27
	.4byte	0x764
	.byte	0x60
	.byte	0
	.uleb128 0x3
	.4byte	0x6ef
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0xa
	.byte	0x76
	.byte	0x1
	.4byte	0x6ef
	.uleb128 0x18
	.4byte	.LASF104
	.2byte	0x308
	.byte	0xa
	.byte	0x7b
	.4byte	0x7ee
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xa
	.byte	0x7c
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0xa
	.byte	0x7d
	.byte	0x17
	.4byte	0x6ad
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xa
	.byte	0x7e
	.byte	0x9
	.4byte	0x68
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0xa
	.byte	0x7f
	.byte	0x16
	.4byte	0x688
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0xa
	.byte	0x80
	.byte	0x9
	.4byte	0x68
	.2byte	0x1a8
	.uleb128 0x1c
	.string	"crl"
	.byte	0xa
	.byte	0x81
	.4byte	0x4bd
	.2byte	0x1ac
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0xa
	.byte	0x82
	.byte	0x9
	.4byte	0x68
	.2byte	0x2a0
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0xa
	.byte	0x83
	.byte	0x1f
	.4byte	0x769
	.2byte	0x2a4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF104
	.byte	0xa
	.byte	0x85
	.byte	0x1
	.4byte	0x775
	.uleb128 0x18
	.4byte	.LASF111
	.2byte	0x314
	.byte	0xa
	.byte	0x8a
	.4byte	0x822
	.uleb128 0x7
	.string	"raw"
	.byte	0xa
	.byte	0x8b
	.byte	0x17
	.4byte	0x6ad
	.byte	0
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0xa
	.byte	0x8c
	.byte	0x1f
	.4byte	0x7ee
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF111
	.byte	0xa
	.byte	0x8e
	.byte	0x1
	.4byte	0x7fa
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x8
	.byte	0xaf
	.4byte	0x83f
	.uleb128 0x2
	.4byte	0x83f
	.byte	0
	.uleb128 0x3
	.4byte	0x4bd
	.uleb128 0x1e
	.4byte	.LASF114
	.2byte	0x377
	.4byte	0x855
	.uleb128 0x2
	.4byte	0x69e
	.byte	0
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x2ef
	.4byte	0x68
	.4byte	0x884
	.uleb128 0x2
	.4byte	0x699
	.uleb128 0x2
	.4byte	0x1dc
	.uleb128 0x2
	.4byte	0x6a8
	.uleb128 0x2
	.4byte	0x7b
	.uleb128 0x2
	.4byte	0x6a8
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x151
	.4byte	0x68
	.4byte	0x8a9
	.uleb128 0x2
	.4byte	0x1fe
	.uleb128 0x2
	.4byte	0x6a8
	.uleb128 0x2
	.4byte	0x7b
	.uleb128 0x2
	.4byte	0x9a
	.byte	0
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0x5
	.byte	0xeb
	.byte	0xf
	.4byte	0x32
	.4byte	0x8bf
	.uleb128 0x2
	.4byte	0x1fe
	.byte	0
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0x5
	.byte	0x95
	.byte	0x1a
	.4byte	0x1fe
	.4byte	0x8d5
	.uleb128 0x2
	.4byte	0x1dc
	.byte	0
	.uleb128 0x12
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x1ab
	.4byte	0x68
	.4byte	0x8eb
	.uleb128 0x2
	.4byte	0x8eb
	.byte	0
	.uleb128 0x3
	.4byte	0x377
	.uleb128 0x12
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x19d
	.4byte	0x68
	.4byte	0x906
	.uleb128 0x2
	.4byte	0x8eb
	.byte	0
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0xb
	.byte	0x1f
	.byte	0x8
	.4byte	0x93
	.4byte	0x926
	.uleb128 0x2
	.4byte	0x95
	.uleb128 0x2
	.4byte	0xb5
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF122
	.2byte	0x370
	.4byte	0x937
	.uleb128 0x2
	.4byte	0x69e
	.byte	0
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0xc
	.2byte	0x295
	.4byte	0x68
	.4byte	0x952
	.uleb128 0x2
	.4byte	0x952
	.uleb128 0x2
	.4byte	0x957
	.byte	0
	.uleb128 0x3
	.4byte	0xf9
	.uleb128 0x3
	.4byte	0x1dc
	.uleb128 0x10
	.4byte	.LASF124
	.byte	0xd
	.byte	0x5a
	.byte	0x7
	.4byte	0x93
	.4byte	0x977
	.uleb128 0x2
	.4byte	0x7b
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0xb
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x997
	.uleb128 0x2
	.4byte	0xb0
	.uleb128 0x2
	.4byte	0xb0
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0xe
	.byte	0x29
	.byte	0x5
	.4byte	0x68
	.4byte	0x9b7
	.uleb128 0x2
	.4byte	0x9b7
	.uleb128 0x2
	.4byte	0x6a8
	.uleb128 0x2
	.4byte	0x9bc
	.byte	0
	.uleb128 0x3
	.4byte	0x9a
	.uleb128 0x3
	.4byte	0x29f
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0xe
	.byte	0x18
	.byte	0x5
	.4byte	0x68
	.4byte	0x9e1
	.uleb128 0x2
	.4byte	0x9b7
	.uleb128 0x2
	.4byte	0x6a8
	.uleb128 0x2
	.4byte	0x9e1
	.byte	0
	.uleb128 0x3
	.4byte	0x2ab
	.uleb128 0x1d
	.4byte	.LASF128
	.byte	0xd
	.byte	0x5e
	.4byte	0x9f7
	.uleb128 0x2
	.4byte	0x93
	.byte	0
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x170
	.4byte	0x68
	.4byte	0xa17
	.uleb128 0x2
	.4byte	0x69e
	.uleb128 0x2
	.4byte	0x6a8
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF130
	.byte	0x3
	.2byte	0x245
	.4byte	0x68
	.4byte	0xa37
	.uleb128 0x2
	.4byte	0x9b7
	.uleb128 0x2
	.4byte	0x6a8
	.uleb128 0x2
	.4byte	0xa37
	.byte	0
	.uleb128 0x3
	.4byte	0xed
	.uleb128 0x12
	.4byte	.LASF131
	.byte	0x3
	.2byte	0x11f
	.4byte	0x68
	.4byte	0xa5c
	.uleb128 0x2
	.4byte	0x9b7
	.uleb128 0x2
	.4byte	0x6a8
	.uleb128 0x2
	.4byte	0xa5c
	.byte	0
	.uleb128 0x3
	.4byte	0x68
	.uleb128 0x10
	.4byte	.LASF132
	.byte	0x3
	.byte	0xf5
	.byte	0x5
	.4byte	0x68
	.4byte	0xa86
	.uleb128 0x2
	.4byte	0x9b7
	.uleb128 0x2
	.4byte	0x6a8
	.uleb128 0x2
	.4byte	0x203
	.uleb128 0x2
	.4byte	0x68
	.byte	0
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.4byte	0x93
	.4byte	0xaa6
	.uleb128 0x2
	.4byte	0x93
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0x26
	.4byte	.LASF182
	.byte	0x2
	.2byte	0x2eb
	.byte	0x6
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaeb
	.uleb128 0x5
	.4byte	.LASF136
	.2byte	0x2eb
	.byte	0x28
	.4byte	0xaeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF134
	.2byte	0x2ed
	.byte	0x20
	.4byte	0xaf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF135
	.2byte	0x2ee
	.byte	0x20
	.4byte	0xaf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.4byte	0x822
	.uleb128 0x3
	.4byte	0x769
	.uleb128 0x19
	.4byte	.LASF140
	.2byte	0x2dd
	.4byte	0x68
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb4b
	.uleb128 0x5
	.4byte	.LASF136
	.2byte	0x2dd
	.byte	0x35
	.4byte	0xaeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF137
	.2byte	0x2de
	.byte	0x3e
	.4byte	0x6a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF138
	.2byte	0x2df
	.byte	0x3b
	.4byte	0x6a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF139
	.2byte	0x2e0
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x19
	.4byte	.LASF141
	.2byte	0x2d2
	.4byte	0x68
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba1
	.uleb128 0x5
	.4byte	.LASF136
	.2byte	0x2d2
	.byte	0x35
	.4byte	0xaeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF137
	.2byte	0x2d3
	.byte	0x3e
	.4byte	0x6a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF142
	.2byte	0x2d4
	.byte	0x3b
	.4byte	0x6a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF143
	.2byte	0x2d5
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x16
	.4byte	.LASF152
	.2byte	0x282
	.4byte	0x68
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc61
	.uleb128 0x5
	.4byte	.LASF136
	.2byte	0x282
	.byte	0x3d
	.4byte	0xaeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LASF137
	.2byte	0x283
	.byte	0x46
	.4byte	0x6a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.4byte	.LASF142
	.2byte	0x284
	.byte	0x43
	.4byte	0x6a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.4byte	.LASF143
	.2byte	0x285
	.byte	0x35
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.4byte	.LASF144
	.2byte	0x286
	.byte	0x38
	.4byte	0x6f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xb
	.string	"ret"
	.2byte	0x288
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF138
	.2byte	0x289
	.byte	0x14
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF145
	.2byte	0x28a
	.byte	0x18
	.4byte	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF146
	.2byte	0x28b
	.byte	0x1e
	.4byte	0x1fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF147
	.2byte	0x28c
	.byte	0x17
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x9
	.4byte	.LASF148
	.2byte	0x28d
	.byte	0x20
	.4byte	0xaf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.4byte	.LASF149
	.2byte	0x229
	.4byte	0x68
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf8
	.uleb128 0x5
	.4byte	.LASF136
	.2byte	0x229
	.byte	0x2c
	.4byte	0xaeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"buf"
	.2byte	0x229
	.byte	0x48
	.4byte	0x6a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF150
	.2byte	0x22a
	.byte	0x2a
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.string	"p"
	.2byte	0x22c
	.byte	0x14
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.string	"end"
	.2byte	0x22d
	.byte	0x14
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"len"
	.2byte	0x22e
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"ret"
	.2byte	0x22f
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.string	"out"
	.2byte	0x27a
	.4byte	.L105
	.uleb128 0x20
	.4byte	.LASF151
	.2byte	0x272
	.4byte	.L110
	.byte	0
	.uleb128 0x16
	.4byte	.LASF153
	.2byte	0x1c3
	.4byte	0x68
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xda9
	.uleb128 0x14
	.string	"buf"
	.2byte	0x1c3
	.byte	0x31
	.4byte	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.4byte	.LASF150
	.2byte	0x1c3
	.byte	0x3d
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.4byte	.LASF112
	.2byte	0x1c4
	.byte	0x3d
	.4byte	0xda9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xb
	.string	"p"
	.2byte	0x1c6
	.byte	0x14
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.string	"end"
	.2byte	0x1c7
	.byte	0x14
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF154
	.2byte	0x1c8
	.byte	0x14
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"len"
	.2byte	0x1c9
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"ret"
	.2byte	0x1ca
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF147
	.2byte	0x1cb
	.byte	0x17
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x9
	.4byte	.LASF155
	.2byte	0x1ea
	.byte	0x17
	.4byte	0x6ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x3
	.4byte	0x7ee
	.uleb128 0x16
	.4byte	.LASF156
	.2byte	0x179
	.4byte	0x68
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe80
	.uleb128 0x14
	.string	"p"
	.2byte	0x179
	.byte	0x37
	.4byte	0x9b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.string	"end"
	.2byte	0x179
	.byte	0x49
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.4byte	.LASF157
	.2byte	0x17a
	.byte	0x42
	.4byte	0xaf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.4byte	.LASF158
	.2byte	0x17b
	.byte	0x39
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.4byte	.LASF159
	.2byte	0x17d
	.byte	0x14
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"ret"
	.2byte	0x17e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF160
	.2byte	0x17f
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"len"
	.2byte	0x180
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.4byte	.LASF161
	.2byte	0x195
	.byte	0x20
	.4byte	0xaf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.4byte	.LASF162
	.2byte	0x1aa
	.4byte	.L78
	.uleb128 0x9
	.4byte	.LASF148
	.2byte	0x1ac
	.byte	0x20
	.4byte	0xaf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x9
	.4byte	.LASF148
	.2byte	0x197
	.byte	0x24
	.4byte	0xaf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF163
	.2byte	0x115
	.4byte	0x68
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf2a
	.uleb128 0x14
	.string	"p"
	.2byte	0x115
	.byte	0x32
	.4byte	0x9b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.string	"end"
	.2byte	0x115
	.byte	0x44
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.4byte	.LASF148
	.2byte	0x116
	.byte	0x3d
	.4byte	0xaf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.string	"alg"
	.2byte	0x117
	.byte	0x34
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.4byte	.LASF164
	.2byte	0x119
	.byte	0x14
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF165
	.2byte	0x119
	.byte	0x21
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF166
	.2byte	0x11a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"ret"
	.2byte	0x11a
	.byte	0x17
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"len"
	.2byte	0x11b
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.string	"out"
	.2byte	0x169
	.4byte	.L46
	.byte	0
	.uleb128 0x28
	.4byte	.LASF184
	.byte	0x2
	.byte	0xf3
	.byte	0xd
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf6c
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0x2
	.byte	0xf3
	.byte	0x3f
	.4byte	0xaf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF167
	.byte	0xf5
	.byte	0x18
	.4byte	0x9e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF168
	.byte	0xf6
	.byte	0x18
	.4byte	0x9e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.4byte	.LASF169
	.byte	0xdf
	.4byte	0x68
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfcc
	.uleb128 0x8
	.string	"p"
	.byte	0x2
	.byte	0xdf
	.byte	0x30
	.4byte	0x9b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"end"
	.byte	0x2
	.byte	0xdf
	.byte	0x42
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.4byte	.LASF170
	.byte	0x2
	.byte	0xe0
	.byte	0x33
	.4byte	0xfcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"ret"
	.byte	0xe2
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"len"
	.byte	0xe3
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.4byte	0x6ad
	.uleb128 0x15
	.4byte	.LASF171
	.byte	0xaa
	.4byte	0x68
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1069
	.uleb128 0x8
	.string	"p"
	.byte	0x2
	.byte	0xaa
	.byte	0x33
	.4byte	0x9b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.string	"end"
	.byte	0x2
	.byte	0xaa
	.byte	0x45
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0x2
	.byte	0xab
	.byte	0x35
	.4byte	0x69e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xd
	.string	"ret"
	.byte	0xad
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF172
	.byte	0xae
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF173
	.byte	0xaf
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF159
	.byte	0xb0
	.byte	0x14
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF174
	.byte	0xb0
	.byte	0x1e
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF175
	.byte	0xb0
	.byte	0x29
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.4byte	.LASF176
	.byte	0x85
	.4byte	0x68
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10c9
	.uleb128 0x8
	.string	"p"
	.byte	0x2
	.byte	0x85
	.byte	0x3b
	.4byte	0x9b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"end"
	.byte	0x2
	.byte	0x86
	.byte	0x3a
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"alg"
	.byte	0x2
	.byte	0x87
	.byte	0x3d
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"len"
	.byte	0x89
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.string	"ret"
	.byte	0x8a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF177
	.byte	0x76
	.4byte	0x68
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x111b
	.uleb128 0x8
	.string	"p"
	.byte	0x2
	.byte	0x76
	.byte	0x37
	.4byte	0x9b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"end"
	.byte	0x2
	.byte	0x76
	.byte	0x49
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"alg"
	.byte	0x2
	.byte	0x77
	.byte	0x39
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"ret"
	.byte	0x79
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF178
	.byte	0x54
	.4byte	0x68
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1198
	.uleb128 0x8
	.string	"p"
	.byte	0x2
	.byte	0x54
	.byte	0x38
	.4byte	0x9b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"end"
	.byte	0x2
	.byte	0x54
	.byte	0x4a
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.4byte	.LASF179
	.byte	0x2
	.byte	0x55
	.byte	0x38
	.4byte	0x9b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0x2
	.byte	0x56
	.byte	0x3b
	.4byte	0xfcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.string	"len"
	.byte	0x58
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.string	"ret"
	.byte	0x59
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF175
	.byte	0x5a
	.byte	0x14
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.4byte	.LASF180
	.byte	0x3d
	.4byte	0x68
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ea
	.uleb128 0x8
	.string	"p"
	.byte	0x2
	.byte	0x3d
	.byte	0x2e
	.4byte	0x9b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"end"
	.byte	0x2
	.byte	0x3d
	.byte	0x40
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"ver"
	.byte	0x2
	.byte	0x3d
	.byte	0x4a
	.4byte	0xa5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"ret"
	.byte	0x3f
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF181
	.byte	0x28
	.4byte	0x68
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x123c
	.uleb128 0x8
	.string	"p"
	.byte	0x2
	.byte	0x28
	.byte	0x37
	.4byte	0x9b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"end"
	.byte	0x2
	.byte	0x28
	.byte	0x49
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"len"
	.byte	0x2
	.byte	0x29
	.byte	0x2f
	.4byte	0x203
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"ret"
	.byte	0x2b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.4byte	.LASF183
	.byte	0x2
	.byte	0x23
	.byte	0x6
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1262
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0x2
	.byte	0x23
	.byte	0x28
	.4byte	0xaeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF185
	.byte	0x1
	.byte	0x8e
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF186
	.byte	0x1
	.byte	0x8e
	.byte	0x29
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"low"
	.byte	0x1
	.byte	0x8e
	.byte	0x33
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.4byte	.LASF187
	.byte	0x1
	.byte	0x8f
	.byte	0x31
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.4byte	.LASF188
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
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 22
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
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
	.4byte	.LFB77
	.uleb128 .LFE77-.LFB77
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF161:
	.string	"prev"
.LASF160:
	.string	"count"
.LASF82:
	.string	"v3_ext"
.LASF41:
	.string	"mbedtls_pk_type_t"
.LASF129:
	.string	"mbedtls_x509_crt_parse_der"
.LASF178:
	.string	"pkcs7_get_content_info_type"
.LASF74:
	.string	"own_buffer"
.LASF106:
	.string	"no_of_certs"
.LASF13:
	.string	"size_t"
.LASF51:
	.string	"authorityCertIssuer"
.LASF168:
	.string	"name_prv"
.LASF52:
	.string	"authorityCertSerialNumber"
.LASF85:
	.string	"authority_key_id"
.LASF58:
	.string	"revocation_date"
.LASF56:
	.string	"mbedtls_x509_crl_entry"
.LASF77:
	.string	"valid_from"
.LASF14:
	.string	"mbedtls_asn1_buf"
.LASF78:
	.string	"valid_to"
.LASF116:
	.string	"mbedtls_md"
.LASF179:
	.string	"seq_end"
.LASF67:
	.string	"entry"
.LASF9:
	.string	"long long unsigned int"
.LASF169:
	.string	"pkcs7_get_signature"
.LASF15:
	.string	"mbedtls_asn1_sequence"
.LASF47:
	.string	"mbedtls_x509_name"
.LASF40:
	.string	"MBEDTLS_PK_OPAQUE"
.LASF102:
	.string	"alg_identifier"
.LASF184:
	.string	"pkcs7_free_signer_info"
.LASF62:
	.string	"sig_oid"
.LASF176:
	.string	"pkcs7_get_digest_algorithm_set"
.LASF42:
	.string	"mbedtls_pk_info_t"
.LASF152:
	.string	"mbedtls_pkcs7_data_or_hash_verify"
.LASF2:
	.string	"signed char"
.LASF46:
	.string	"mbedtls_x509_buf"
.LASF139:
	.string	"hashlen"
.LASF182:
	.string	"mbedtls_pkcs7_free"
.LASF54:
	.string	"year"
.LASF111:
	.string	"mbedtls_pkcs7"
.LASF119:
	.string	"mbedtls_x509_time_is_future"
.LASF6:
	.string	"long int"
.LASF156:
	.string	"pkcs7_get_signers_info_set"
.LASF105:
	.string	"digest_alg_identifiers"
.LASF174:
	.string	"end_cert"
.LASF123:
	.string	"mbedtls_oid_get_md_alg"
.LASF100:
	.string	"MBEDTLS_PKCS7_ENCRYPTED_DATA"
.LASF137:
	.string	"cert"
.LASF140:
	.string	"mbedtls_pkcs7_signed_hash_verify"
.LASF97:
	.string	"MBEDTLS_PKCS7_ENVELOPED_DATA"
.LASF145:
	.string	"pk_cxt"
.LASF163:
	.string	"pkcs7_get_signer_info"
.LASF30:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF165:
	.string	"end_issuer_and_sn"
.LASF135:
	.string	"signer_prev"
.LASF188:
	.string	"line"
.LASF148:
	.string	"signer"
.LASF177:
	.string	"pkcs7_get_digest_algorithm"
.LASF166:
	.string	"asn1_ret"
.LASF170:
	.string	"signature"
.LASF120:
	.string	"mbedtls_x509_time_is_past"
.LASF8:
	.string	"long long int"
.LASF101:
	.string	"mbedtls_pkcs7_signer_info"
.LASF10:
	.string	"unsigned int"
.LASF109:
	.string	"no_of_signers"
.LASF108:
	.string	"no_of_crls"
.LASF91:
	.string	"ext_key_usage"
.LASF128:
	.string	"free"
.LASF7:
	.string	"long unsigned int"
.LASF122:
	.string	"mbedtls_x509_crt_init"
.LASF149:
	.string	"mbedtls_pkcs7_parse_der"
.LASF69:
	.string	"sig_oid2"
.LASF21:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF49:
	.string	"mbedtls_x509_authority"
.LASF31:
	.string	"mbedtls_md_type_t"
.LASF142:
	.string	"data"
.LASF28:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF65:
	.string	"this_update"
.LASF35:
	.string	"MBEDTLS_PK_ECKEY"
.LASF83:
	.string	"subject_alt_names"
.LASF114:
	.string	"mbedtls_x509_crt_free"
.LASF136:
	.string	"pkcs7"
.LASF134:
	.string	"signer_cur"
.LASF71:
	.string	"sig_pk"
.LASF175:
	.string	"start"
.LASF107:
	.string	"certs"
.LASF131:
	.string	"mbedtls_asn1_get_int"
.LASF81:
	.string	"subject_id"
.LASF99:
	.string	"MBEDTLS_PKCS7_DIGESTED_DATA"
.LASF95:
	.string	"MBEDTLS_PKCS7_DATA"
.LASF37:
	.string	"MBEDTLS_PK_ECDSA"
.LASF144:
	.string	"is_data_hash"
.LASF23:
	.string	"MBEDTLS_MD_SHA224"
.LASF76:
	.string	"subject"
.LASF110:
	.string	"signers"
.LASF146:
	.string	"md_info"
.LASF44:
	.string	"pk_info"
.LASF92:
	.string	"ns_cert_type"
.LASF32:
	.string	"mbedtls_md_info_t"
.LASF94:
	.string	"MBEDTLS_PKCS7_NONE"
.LASF26:
	.string	"MBEDTLS_MD_SHA512"
.LASF154:
	.string	"end_content_info"
.LASF87:
	.string	"ext_types"
.LASF185:
	.string	"mbedtls_error_add"
.LASF68:
	.string	"crl_ext"
.LASF22:
	.string	"MBEDTLS_MD_SHA1"
.LASF117:
	.string	"mbedtls_md_get_size"
.LASF159:
	.string	"end_set"
.LASF151:
	.string	"try_data"
.LASF162:
	.string	"cleanup"
.LASF55:
	.string	"hour"
.LASF43:
	.string	"mbedtls_pk_context"
.LASF19:
	.string	"MBEDTLS_MD_NONE"
.LASF183:
	.string	"mbedtls_pkcs7_init"
.LASF24:
	.string	"MBEDTLS_MD_SHA256"
.LASF143:
	.string	"datalen"
.LASF158:
	.string	"digest_alg"
.LASF50:
	.string	"keyIdentifier"
.LASF157:
	.string	"signers_set"
.LASF72:
	.string	"sig_opts"
.LASF3:
	.string	"unsigned char"
.LASF61:
	.string	"version"
.LASF4:
	.string	"short int"
.LASF187:
	.string	"file"
.LASF112:
	.string	"signed_data"
.LASF75:
	.string	"subject_raw"
.LASF63:
	.string	"issuer_raw"
.LASF59:
	.string	"entry_ext"
.LASF150:
	.string	"buflen"
.LASF132:
	.string	"mbedtls_asn1_get_tag"
.LASF141:
	.string	"mbedtls_pkcs7_signed_data_verify"
.LASF79:
	.string	"pk_raw"
.LASF45:
	.string	"pk_ctx"
.LASF93:
	.string	"mbedtls_pkcs7_buf"
.LASF153:
	.string	"pkcs7_get_signed_data"
.LASF36:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF127:
	.string	"mbedtls_x509_get_name"
.LASF130:
	.string	"mbedtls_asn1_get_alg_null"
.LASF11:
	.string	"long double"
.LASF180:
	.string	"pkcs7_get_version"
.LASF12:
	.string	"char"
.LASF90:
	.string	"key_usage"
.LASF60:
	.string	"mbedtls_x509_crl"
.LASF39:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF167:
	.string	"name_cur"
.LASF84:
	.string	"subject_key_id"
.LASF70:
	.string	"sig_md"
.LASF73:
	.string	"mbedtls_x509_crt"
.LASF138:
	.string	"hash"
.LASF171:
	.string	"pkcs7_get_certificates"
.LASF186:
	.string	"high"
.LASF118:
	.string	"mbedtls_md_info_from_type"
.LASF125:
	.string	"memcmp"
.LASF104:
	.string	"mbedtls_pkcs7_signed_data"
.LASF25:
	.string	"MBEDTLS_MD_SHA384"
.LASF20:
	.string	"MBEDTLS_MD_MD5"
.LASF121:
	.string	"memcpy"
.LASF96:
	.string	"MBEDTLS_PKCS7_SIGNED_DATA"
.LASF5:
	.string	"short unsigned int"
.LASF113:
	.string	"mbedtls_x509_crl_free"
.LASF38:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF29:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF164:
	.string	"end_signer"
.LASF126:
	.string	"mbedtls_x509_get_serial"
.LASF64:
	.string	"issuer"
.LASF66:
	.string	"next_update"
.LASF133:
	.string	"memset"
.LASF17:
	.string	"mbedtls_asn1_named_data"
.LASF124:
	.string	"calloc"
.LASF33:
	.string	"MBEDTLS_PK_NONE"
.LASF103:
	.string	"sig_alg_identifier"
.LASF172:
	.string	"len1"
.LASF173:
	.string	"len2"
.LASF48:
	.string	"mbedtls_x509_sequence"
.LASF57:
	.string	"serial"
.LASF147:
	.string	"md_alg"
.LASF155:
	.string	"content_type"
.LASF80:
	.string	"issuer_id"
.LASF18:
	.string	"next_merged"
.LASF16:
	.string	"next"
.LASF27:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF181:
	.string	"pkcs7_get_next_content_len"
.LASF88:
	.string	"ca_istrue"
.LASF89:
	.string	"max_pathlen"
.LASF86:
	.string	"certificate_policies"
.LASF189:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF98:
	.string	"MBEDTLS_PKCS7_SIGNED_AND_ENVELOPED_DATA"
.LASF115:
	.string	"mbedtls_pk_verify"
.LASF34:
	.string	"MBEDTLS_PK_RSA"
.LASF53:
	.string	"mbedtls_x509_time"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pkcs7.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
