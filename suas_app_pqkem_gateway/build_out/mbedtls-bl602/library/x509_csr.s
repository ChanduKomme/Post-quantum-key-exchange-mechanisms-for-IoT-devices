	.file	"x509_csr.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509_csr.c"
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
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509_csr.c"
	.section	.text.x509_csr_get_version,"ax",@progbits
	.align	1
	.type	x509_csr_get_version, @function
x509_csr_get_version:
.LFB80:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509_csr.c"
	.loc 2 46 1
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
	.loc 2 47 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 49 16
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_int
	sw	a0,-20(s0)
	.loc 2 49 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L4
	.loc 2 50 12
	lw	a4,-20(s0)
	li	a5,-98
	bne	a4,a5,.L5
	.loc 2 51 18
	lw	a5,-44(s0)
	sw	zero,0(a5)
	.loc 2 52 20
	li	a5,0
	j	.L6
.L5:
	.loc 2 55 16
	li	a3,55
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-512
	call	mbedtls_error_add
	mv	a5,a0
	j	.L6
.L4:
	.loc 2 58 12
	li	a5,0
.L6:
	.loc 2 59 1
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
	.size	x509_csr_get_version, .-x509_csr_get_version
	.section	.text.x509_csr_parse_extensions,"ax",@progbits
	.align	1
	.type	x509_csr_parse_extensions, @function
x509_csr_parse_extensions:
.LFB81:
	.loc 2 68 1
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
	.loc 2 69 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 73 11
	j	.L8
.L32:
.LBB2:
	.loc 2 74 26
	sw	zero,-44(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	.loc 2 75 13
	sw	zero,-48(s0)
	.loc 2 76 13
	sw	zero,-52(s0)
	.loc 2 79 20
	addi	a5,s0,-32
	li	a3,48
	mv	a2,a5
	lw	a1,-76(s0)
	lw	a0,-72(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 79 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L9
	.loc 2 81 20
	li	a3,81
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L34
.L9:
	.loc 2 84 24
	lw	a5,-72(s0)
	lw	a4,0(a5)
	.loc 2 84 27
	lw	a5,-32(s0)
	.loc 2 84 22
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 87 20
	addi	a5,s0,-44
	addi	a5,a5,4
	li	a3,6
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-72(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 87 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L11
	.loc 2 89 20
	li	a3,89
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L34
.L11:
	.loc 2 92 22
	li	a5,6
	sw	a5,-44(s0)
	.loc 2 93 22
	lw	a5,-72(s0)
	lw	a5,0(a5)
	.loc 2 93 20
	sw	a5,-36(s0)
	.loc 2 94 9
	lw	a5,-72(s0)
	lw	a4,0(a5)
	.loc 2 94 23
	lw	a5,-40(s0)
	.loc 2 94 12
	add	a4,a4,a5
	lw	a5,-72(s0)
	sw	a4,0(a5)
	.loc 2 97 20
	addi	a5,s0,-48
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-72(s0)
	call	mbedtls_asn1_get_bool
	sw	a0,-20(s0)
	.loc 2 97 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L12
	.loc 2 97 79 discriminator 2
	lw	a4,-20(s0)
	li	a5,-98
	beq	a4,a5,.L12
	.loc 2 99 20
	li	a3,99
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L34
.L12:
	.loc 2 103 20
	addi	a5,s0,-32
	li	a3,4
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-72(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 103 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L13
	.loc 2 105 20
	li	a3,105
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L34
.L13:
	.loc 2 108 25
	lw	a5,-72(s0)
	lw	a4,0(a5)
	.loc 2 108 28
	lw	a5,-32(s0)
	.loc 2 108 23
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 110 12
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	beq	a4,a5,.L14
	.loc 2 111 20
	li	a3,111
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L34
.L14:
	.loc 2 118 15
	addi	a4,s0,-52
	addi	a5,s0,-44
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_oid_get_x509_ext_type
	sw	a0,-20(s0)
	.loc 2 120 12
	lw	a5,-20(s0)
	beq	a5,zero,.L15
	.loc 2 122 16
	lw	a5,-80(s0)
	beq	a5,zero,.L16
	.loc 2 123 23
	lw	a3,-48(s0)
	lw	a5,-72(s0)
	lw	a4,0(a5)
	addi	a2,s0,-44
	lw	a6,-80(s0)
	lw	a5,-28(s0)
	lw	a1,-68(s0)
	lw	a0,-84(s0)
	jalr	a6
.LVL0:
	sw	a0,-20(s0)
	.loc 2 124 20
	lw	a5,-20(s0)
	beq	a5,zero,.L17
	.loc 2 124 30 discriminator 1
	lw	a5,-48(s0)
	beq	a5,zero,.L17
	.loc 2 125 28
	lw	a5,-20(s0)
	j	.L34
.L17:
	.loc 2 127 20
	lw	a5,-72(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 2 128 17
	j	.L8
.L16:
	.loc 2 132 16
	lw	a5,-72(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 2 134 17
	lw	a5,-48(s0)
	.loc 2 134 16
	beq	a5,zero,.L35
	.loc 2 136 24
	li	a3,136
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-98
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L34
.L15:
	.loc 2 143 17
	lw	a5,-68(s0)
	lw	a4,104(a5)
	.loc 2 143 29
	lw	a5,-52(s0)
	and	a5,a4,a5
	.loc 2 143 12
	beq	a5,zero,.L20
	.loc 2 144 20
	li	a3,144
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-104
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L34
.L20:
	.loc 2 148 12
	lw	a5,-68(s0)
	lw	a4,104(a5)
	.loc 2 148 24
	lw	a5,-52(s0)
	or	a4,a4,a5
	lw	a5,-68(s0)
	sw	a4,104(a5)
	.loc 2 150 9
	lw	a5,-52(s0)
	li	a4,65536
	beq	a5,a4,.L21
	li	a4,65536
	bgt	a5,a4,.L22
	li	a4,4
	beq	a5,a4,.L23
	li	a4,32
	beq	a5,a4,.L24
	j	.L22
.L23:
	.loc 2 153 28
	lw	a5,-68(s0)
	addi	a5,a5,80
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-72(s0)
	call	mbedtls_x509_get_key_usage
	sw	a0,-20(s0)
	.loc 2 153 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L36
	.loc 2 155 28
	lw	a5,-20(s0)
	j	.L34
.L24:
	.loc 2 161 28
	lw	a5,-68(s0)
	addi	a5,a5,88
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-72(s0)
	call	mbedtls_x509_get_subject_alt_name
	sw	a0,-20(s0)
	.loc 2 161 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L37
	.loc 2 163 28
	lw	a5,-20(s0)
	j	.L34
.L21:
	.loc 2 169 28
	lw	a5,-68(s0)
	addi	a5,a5,84
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-72(s0)
	call	mbedtls_x509_get_ns_cert_type
	sw	a0,-20(s0)
	.loc 2 169 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L38
	.loc 2 171 28
	lw	a5,-20(s0)
	j	.L34
.L22:
	.loc 2 180 21
	lw	a5,-48(s0)
	.loc 2 180 20
	beq	a5,zero,.L29
	.loc 2 181 28
	li	a5,-8192
	addi	a5,a5,-128
	j	.L34
.L29:
	.loc 2 183 24
	lw	a5,-72(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	j	.L8
.L35:
	.loc 2 139 13
	nop
	j	.L8
.L36:
	.loc 2 157 17
	nop
	j	.L8
.L37:
	.loc 2 165 17
	nop
	j	.L8
.L38:
	.loc 2 173 17
	nop
.L8:
.LBE2:
	.loc 2 73 12
	lw	a5,-72(s0)
	lw	a5,0(a5)
	.loc 2 73 15
	lw	a4,-76(s0)
	bgtu	a4,a5,.L32
	.loc 2 188 9
	lw	a5,-72(s0)
	lw	a5,0(a5)
	.loc 2 188 8
	lw	a4,-76(s0)
	beq	a4,a5,.L33
	.loc 2 189 16
	li	a3,189
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L34
.L33:
	.loc 2 193 12
	li	a5,0
.L34:
	.loc 2 194 1
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
.LFE81:
	.size	x509_csr_parse_extensions, .-x509_csr_parse_extensions
	.section	.rodata
	.align	2
.LC1:
	.base64	"KoZIhvcNAQkOAA=="
	.section	.text.x509_csr_parse_attributes,"ax",@progbits
	.align	1
	.type	x509_csr_parse_attributes, @function
x509_csr_parse_attributes:
.LFB82:
	.loc 2 203 1
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
	.loc 2 207 21
	addi	a5,s0,-56
	sw	a5,-20(s0)
	.loc 2 209 11
	j	.L40
.L52:
.LBB3:
	.loc 2 210 26
	sw	zero,-44(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	.loc 2 212 20
	addi	a5,s0,-32
	li	a3,48
	mv	a2,a5
	lw	a1,-60(s0)
	lw	a0,-20(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-24(s0)
	.loc 2 212 12 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L41
	.loc 2 214 20
	li	a3,214
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-24(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L54
.L41:
	.loc 2 216 25
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 216 28
	lw	a5,-32(s0)
	.loc 2 216 23
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 219 20
	addi	a5,s0,-44
	addi	a5,a5,4
	li	a3,6
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-20(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-24(s0)
	.loc 2 219 12 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L43
	.loc 2 221 20
	li	a3,221
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-24(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L54
.L43:
	.loc 2 224 22
	li	a5,6
	sw	a5,-44(s0)
	.loc 2 225 22
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 225 20
	sw	a5,-36(s0)
	.loc 2 226 9
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 226 23
	lw	a5,-40(s0)
	.loc 2 226 12
	add	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 2 229 97
	lw	a4,-40(s0)
	.loc 2 229 104
	li	a5,9
	bne	a4,a5,.L44
	.loc 2 229 182 discriminator 2
	lw	a5,-36(s0)
	.loc 2 229 107 discriminator 2
	lw	a4,-40(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	memcmp
	mv	a5,a0
	.loc 2 229 104 discriminator 3
	beq	a5,zero,.L45
.L44:
	.loc 2 229 104 is_stmt 0 discriminator 4
	li	a5,1
	.loc 2 229 104
	j	.L46
.L45:
	.loc 2 229 104 discriminator 5
	li	a5,0
.L46:
	.loc 2 229 12 is_stmt 1 discriminator 7
	bne	a5,zero,.L47
	.loc 2 230 24
	addi	a5,s0,-32
	li	a3,49
	mv	a2,a5
	lw	a1,-60(s0)
	lw	a0,-20(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-24(s0)
	.loc 2 230 16 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L48
	.loc 2 232 24
	li	a3,232
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-24(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L54
.L48:
	.loc 2 235 24
	addi	a5,s0,-32
	li	a3,48
	mv	a2,a5
	lw	a1,-60(s0)
	lw	a0,-20(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-24(s0)
	.loc 2 235 16 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L49
	.loc 2 238 24
	li	a3,238
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-24(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L54
.L49:
	.loc 2 241 58
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 241 24
	lw	a5,-32(s0)
	.loc 2 241 61
	add	a5,a4,a5
	.loc 2 241 24
	lw	a4,-68(s0)
	lw	a3,-64(s0)
	mv	a2,a5
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	x509_csr_parse_extensions
	sw	a0,-24(s0)
	.loc 2 241 16 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L50
	.loc 2 242 24
	lw	a5,-24(s0)
	j	.L54
.L50:
	.loc 2 245 17
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 245 16
	lw	a4,-28(s0)
	beq	a4,a5,.L47
	.loc 2 246 24
	li	a3,246
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L54
.L47:
	.loc 2 251 12
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
.L40:
.LBE3:
	.loc 2 209 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 209 15
	lw	a4,-60(s0)
	bgtu	a4,a5,.L52
	.loc 2 254 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 254 8
	lw	a4,-60(s0)
	beq	a4,a5,.L53
	.loc 2 255 16
	li	a3,255
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L54
.L53:
	.loc 2 259 12
	li	a5,0
.L54:
	.loc 2 260 1
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
.LFE82:
	.size	x509_csr_parse_attributes, .-x509_csr_parse_attributes
	.section	.text.mbedtls_x509_csr_parse_der_internal,"ax",@progbits
	.align	1
	.type	mbedtls_x509_csr_parse_der_internal, @function
mbedtls_x509_csr_parse_der_internal:
.LFB83:
	.loc 2 269 1
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
	.loc 2 270 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 275 5
	addi	a5,s0,-44
	li	a2,12
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 280 8
	lw	a5,-52(s0)
	beq	a5,zero,.L56
	.loc 2 280 20 discriminator 1
	lw	a5,-56(s0)
	beq	a5,zero,.L56
	.loc 2 280 35 discriminator 2
	lw	a5,-60(s0)
	bne	a5,zero,.L57
.L56:
	.loc 2 281 16
	li	a5,-8192
	addi	a5,a5,-2048
	j	.L74
.L57:
	.loc 2 284 5
	lw	a0,-52(s0)
	call	mbedtls_x509_csr_init
	.loc 2 289 9
	lw	a5,-60(s0)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	mv	a1,a5
	li	a0,1
	call	calloc
	mv	a5,a0
	.loc 2 289 7 discriminator 1
	sw	a5,-32(s0)
	.loc 2 291 11
	lw	a5,-32(s0)
	.loc 2 291 8
	bne	a5,zero,.L59
	.loc 2 292 16
	li	a5,-12288
	addi	a5,a5,1920
	j	.L74
.L59:
	.loc 2 295 5
	lw	a5,-32(s0)
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	mv	a0,a5
	call	memcpy
	.loc 2 297 16
	lw	a4,-32(s0)
	lw	a5,-52(s0)
	sw	a4,8(a5)
	.loc 2 298 18
	lw	a4,-28(s0)
	lw	a5,-52(s0)
	sw	a4,4(a5)
	.loc 2 299 13
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	.loc 2 299 9
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 308 16
	addi	a4,s0,-28
	addi	a5,s0,-32
	li	a3,48
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 308 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L60
	.loc 2 310 9
	lw	a0,-52(s0)
	call	mbedtls_x509_csr_free
	.loc 2 311 16
	li	a5,-8192
	addi	a5,a5,-384
	j	.L74
.L60:
	.loc 2 314 30
	lw	a5,-32(s0)
	lw	a4,-24(s0)
	sub	a5,a4,a5
	.loc 2 314 16
	mv	a4,a5
	.loc 2 314 13
	lw	a5,-28(s0)
	.loc 2 314 8
	beq	a4,a5,.L61
	.loc 2 315 9
	lw	a0,-52(s0)
	call	mbedtls_x509_csr_free
	.loc 2 316 16
	li	a3,316
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-384
	call	mbedtls_error_add
	mv	a5,a0
	j	.L74
.L61:
	.loc 2 323 16
	lw	a4,-32(s0)
	lw	a5,-52(s0)
	sw	a4,20(a5)
	.loc 2 325 16
	addi	a4,s0,-28
	addi	a5,s0,-32
	li	a3,48
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 325 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L62
	.loc 2 327 9
	lw	a0,-52(s0)
	call	mbedtls_x509_csr_free
	.loc 2 328 16
	li	a3,328
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-384
	call	mbedtls_error_add
	mv	a5,a0
	j	.L74
.L62:
	.loc 2 331 13
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	.loc 2 331 9
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 332 44
	lw	a5,-52(s0)
	lw	a5,20(a5)
	.loc 2 332 34
	lw	a4,-24(s0)
	sub	a5,a4,a5
	.loc 2 332 20
	mv	a4,a5
	.loc 2 332 18
	lw	a5,-52(s0)
	sw	a4,16(a5)
	.loc 2 337 16
	lw	a5,-52(s0)
	addi	a4,a5,24
	addi	a5,s0,-32
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	x509_csr_get_version
	sw	a0,-20(s0)
	.loc 2 337 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L63
	.loc 2 338 9
	lw	a0,-52(s0)
	call	mbedtls_x509_csr_free
	.loc 2 339 16
	lw	a5,-20(s0)
	j	.L74
.L63:
	.loc 2 342 12
	lw	a5,-52(s0)
	lw	a5,24(a5)
	.loc 2 342 8
	beq	a5,zero,.L64
	.loc 2 343 9
	lw	a0,-52(s0)
	call	mbedtls_x509_csr_free
	.loc 2 344 16
	li	a5,-8192
	addi	a5,a5,-1408
	j	.L74
.L64:
	.loc 2 347 8
	lw	a5,-52(s0)
	lw	a5,24(a5)
	.loc 2 347 17
	addi	a4,a5,1
	lw	a5,-52(s0)
	sw	a4,24(a5)
	.loc 2 352 24
	lw	a4,-32(s0)
	lw	a5,-52(s0)
	sw	a4,36(a5)
	.loc 2 354 16
	addi	a4,s0,-28
	addi	a5,s0,-32
	li	a3,48
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 354 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L65
	.loc 2 356 9
	lw	a0,-52(s0)
	call	mbedtls_x509_csr_free
	.loc 2 357 16
	li	a3,357
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-384
	call	mbedtls_error_add
	mv	a5,a0
	j	.L74
.L65:
	.loc 2 360 16
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	.loc 2 360 44
	add	a4,a4,a5
	.loc 2 360 16
	lw	a5,-52(s0)
	addi	a3,a5,40
	addi	a5,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_x509_get_name
	sw	a0,-20(s0)
	.loc 2 360 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L66
	.loc 2 361 9
	lw	a0,-52(s0)
	call	mbedtls_x509_csr_free
	.loc 2 362 16
	lw	a5,-20(s0)
	j	.L74
.L66:
	.loc 2 365 40
	lw	a4,-32(s0)
	.loc 2 365 58
	lw	a5,-52(s0)
	lw	a5,36(a5)
	.loc 2 365 40
	sub	a5,a4,a5
	.loc 2 365 28
	mv	a4,a5
	.loc 2 365 26
	lw	a5,-52(s0)
	sw	a4,32(a5)
	.loc 2 370 16
	lw	a5,-52(s0)
	addi	a4,a5,72
	addi	a5,s0,-32
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_pk_parse_subpubkey
	sw	a0,-20(s0)
	.loc 2 370 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L67
	.loc 2 371 9
	lw	a0,-52(s0)
	call	mbedtls_x509_csr_free
	.loc 2 372 16
	lw	a5,-20(s0)
	j	.L74
.L67:
	.loc 2 385 16
	addi	a4,s0,-28
	addi	a5,s0,-32
	li	a3,160
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 385 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L68
	.loc 2 388 9
	lw	a0,-52(s0)
	call	mbedtls_x509_csr_free
	.loc 2 389 16
	li	a3,389
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-384
	call	mbedtls_error_add
	mv	a5,a0
	j	.L74
.L68:
	.loc 2 392 16
	lw	a1,-32(s0)
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	.loc 2 392 52
	add	a5,a4,a5
	.loc 2 392 16
	lw	a4,-68(s0)
	lw	a3,-64(s0)
	mv	a2,a5
	lw	a0,-52(s0)
	call	x509_csr_parse_attributes
	sw	a0,-20(s0)
	.loc 2 392 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L69
	.loc 2 393 9
	lw	a0,-52(s0)
	call	mbedtls_x509_csr_free
	.loc 2 394 16
	lw	a5,-20(s0)
	j	.L74
.L69:
	.loc 2 397 7
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 399 19
	lw	a5,-52(s0)
	lw	a4,8(a5)
	.loc 2 399 32
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 2 399 9
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 405 16
	lw	a5,-52(s0)
	addi	a4,a5,108
	addi	a3,s0,-44
	addi	a5,s0,-32
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_x509_get_alg
	sw	a0,-20(s0)
	.loc 2 405 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L70
	.loc 2 406 9
	lw	a0,-52(s0)
	call	mbedtls_x509_csr_free
	.loc 2 407 16
	lw	a5,-20(s0)
	j	.L74
.L70:
	.loc 2 410 41
	lw	a5,-52(s0)
	addi	a0,a5,108
	.loc 2 410 16
	lw	a5,-52(s0)
	addi	a2,a5,132
	lw	a5,-52(s0)
	addi	a3,a5,133
	lw	a5,-52(s0)
	addi	a4,a5,136
	addi	a5,s0,-44
	mv	a1,a5
	call	mbedtls_x509_get_sig_alg
	sw	a0,-20(s0)
	.loc 2 410 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L71
	.loc 2 413 9
	lw	a0,-52(s0)
	call	mbedtls_x509_csr_free
	.loc 2 414 16
	li	a5,-8192
	addi	a5,a5,-1536
	j	.L74
.L71:
	.loc 2 417 16
	lw	a5,-52(s0)
	addi	a4,a5,120
	addi	a5,s0,-32
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_x509_get_sig
	sw	a0,-20(s0)
	.loc 2 417 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L72
	.loc 2 418 9
	lw	a0,-52(s0)
	call	mbedtls_x509_csr_free
	.loc 2 419 16
	lw	a5,-20(s0)
	j	.L74
.L72:
	.loc 2 422 11
	lw	a5,-32(s0)
	.loc 2 422 8
	lw	a4,-24(s0)
	beq	a4,a5,.L73
	.loc 2 423 9
	lw	a0,-52(s0)
	call	mbedtls_x509_csr_free
	.loc 2 424 16
	li	a3,424
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-384
	call	mbedtls_error_add
	mv	a5,a0
	j	.L74
.L73:
	.loc 2 428 12
	li	a5,0
.L74:
	.loc 2 429 1
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
.LFE83:
	.size	mbedtls_x509_csr_parse_der_internal, .-mbedtls_x509_csr_parse_der_internal
	.section	.text.mbedtls_x509_csr_parse_der,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_csr_parse_der
	.type	mbedtls_x509_csr_parse_der, @function
mbedtls_x509_csr_parse_der:
.LFB84:
	.loc 2 436 1
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
	.loc 2 437 12
	li	a4,0
	li	a3,0
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_x509_csr_parse_der_internal
	mv	a5,a0
	.loc 2 438 1
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
.LFE84:
	.size	mbedtls_x509_csr_parse_der, .-mbedtls_x509_csr_parse_der
	.section	.text.mbedtls_x509_csr_parse_der_with_ext_cb,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_csr_parse_der_with_ext_cb
	.type	mbedtls_x509_csr_parse_der_with_ext_cb, @function
mbedtls_x509_csr_parse_der_with_ext_cb:
.LFB85:
	.loc 2 447 1
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
	.loc 2 448 12
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_x509_csr_parse_der_internal
	mv	a5,a0
	.loc 2 449 1
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
	.size	mbedtls_x509_csr_parse_der_with_ext_cb, .-mbedtls_x509_csr_parse_der_with_ext_cb
	.section	.text.mbedtls_x509_csr_parse,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_csr_parse
	.type	mbedtls_x509_csr_parse, @function
mbedtls_x509_csr_parse:
.LFB86:
	.loc 2 455 1
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
	.loc 2 465 8
	lw	a5,-20(s0)
	beq	a5,zero,.L80
	.loc 2 465 20 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L80
	.loc 2 465 35 discriminator 2
	lw	a5,-28(s0)
	bne	a5,zero,.L81
.L80:
	.loc 2 466 16
	li	a5,-8192
	addi	a5,a5,-2048
	j	.L82
.L81:
	.loc 2 497 12
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_x509_csr_parse_der
	mv	a5,a0
.L82:
	.loc 2 498 1
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
.LFE86:
	.size	mbedtls_x509_csr_parse, .-mbedtls_x509_csr_parse
	.section	.rodata
	.align	2
.LC2:
	.string	"%sCSR version   : %d"
	.align	2
.LC3:
	.string	"\n%ssubject name  : "
	.align	2
.LC4:
	.string	"\n%ssigned using  : "
	.align	2
.LC5:
	.string	"\n%s%-14s: %d bits\n"
	.align	2
.LC6:
	.string	"\n%ssubject alt name  :"
	.align	2
.LC7:
	.string	"\n%scert. type        : "
	.align	2
.LC8:
	.string	"\n%skey usage         : "
	.align	2
.LC9:
	.string	"\n"
	.section	.text.mbedtls_x509_csr_info,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_csr_info
	.type	mbedtls_x509_csr_info, @function
mbedtls_x509_csr_info:
.LFB87:
	.loc 2 530 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	.loc 2 531 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 536 7
	lw	a5,-52(s0)
	sw	a5,-28(s0)
	.loc 2 537 7
	lw	a5,-56(s0)
	sw	a5,-24(s0)
	.loc 2 539 11
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	.loc 2 540 39
	lw	a5,-64(s0)
	lw	a5,24(a5)
	.loc 2 539 11
	mv	a4,a5
	lw	a3,-60(s0)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	call	snprintf
	sw	a0,-20(s0)
	.loc 2 541 13
	lw	a5,-20(s0)
	blt	a5,zero,.L84
	.loc 2 541 25 discriminator 2
	lw	a4,-20(s0)
	.loc 2 541 38 discriminator 2
	lw	a5,-24(s0)
	.loc 2 541 22 discriminator 2
	bltu	a4,a5,.L85
.L84:
	.loc 2 541 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 541 51 is_stmt 0
	j	.L110
.L85:
	.loc 2 541 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 2 541 65 discriminator 4
	lw	a5,-20(s0)
	.loc 2 541 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 541 81 discriminator 4
	lw	a4,-28(s0)
	.loc 2 541 84 discriminator 4
	lw	a5,-20(s0)
	.loc 2 541 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 543 11
	lw	a4,-28(s0)
	lw	a1,-24(s0)
	lw	a3,-60(s0)
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	mv	a0,a4
	call	snprintf
	sw	a0,-20(s0)
	.loc 2 544 13
	lw	a5,-20(s0)
	blt	a5,zero,.L87
	.loc 2 544 25 discriminator 2
	lw	a4,-20(s0)
	.loc 2 544 38 discriminator 2
	lw	a5,-24(s0)
	.loc 2 544 22 discriminator 2
	bltu	a4,a5,.L88
.L87:
	.loc 2 544 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 544 51 is_stmt 0
	j	.L110
.L88:
	.loc 2 544 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 2 544 65 discriminator 4
	lw	a5,-20(s0)
	.loc 2 544 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 544 81 discriminator 4
	lw	a4,-28(s0)
	.loc 2 544 84 discriminator 4
	lw	a5,-20(s0)
	.loc 2 544 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 545 11
	lw	a4,-28(s0)
	lw	a3,-24(s0)
	lw	a5,-64(s0)
	addi	a5,a5,40
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_x509_dn_gets
	sw	a0,-20(s0)
	.loc 2 546 13
	lw	a5,-20(s0)
	blt	a5,zero,.L89
	.loc 2 546 25 discriminator 2
	lw	a4,-20(s0)
	.loc 2 546 38 discriminator 2
	lw	a5,-24(s0)
	.loc 2 546 22 discriminator 2
	bltu	a4,a5,.L90
.L89:
	.loc 2 546 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 546 51 is_stmt 0
	j	.L110
.L90:
	.loc 2 546 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 2 546 65 discriminator 4
	lw	a5,-20(s0)
	.loc 2 546 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 546 81 discriminator 4
	lw	a4,-28(s0)
	.loc 2 546 84 discriminator 4
	lw	a5,-20(s0)
	.loc 2 546 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 548 11
	lw	a4,-28(s0)
	lw	a1,-24(s0)
	lw	a3,-60(s0)
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	mv	a0,a4
	call	snprintf
	sw	a0,-20(s0)
	.loc 2 549 13
	lw	a5,-20(s0)
	blt	a5,zero,.L91
	.loc 2 549 25 discriminator 2
	lw	a4,-20(s0)
	.loc 2 549 38 discriminator 2
	lw	a5,-24(s0)
	.loc 2 549 22 discriminator 2
	bltu	a4,a5,.L92
.L91:
	.loc 2 549 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 549 51 is_stmt 0
	j	.L110
.L92:
	.loc 2 549 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 2 549 65 discriminator 4
	lw	a5,-20(s0)
	.loc 2 549 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 549 81 discriminator 4
	lw	a4,-28(s0)
	.loc 2 549 84 discriminator 4
	lw	a5,-20(s0)
	.loc 2 549 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 551 11
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	lw	a5,-64(s0)
	addi	a2,a5,108
	.loc 2 551 61
	lw	a5,-64(s0)
	lbu	a3,133(a5)
	.loc 2 551 74
	lw	a5,-64(s0)
	lbu	a4,132(a5)
	.loc 2 552 40
	lw	a5,-64(s0)
	lw	a5,136(a5)
	.loc 2 551 11
	call	mbedtls_x509_sig_alg_gets
	sw	a0,-20(s0)
	.loc 2 553 13
	lw	a5,-20(s0)
	blt	a5,zero,.L93
	.loc 2 553 25 discriminator 2
	lw	a4,-20(s0)
	.loc 2 553 38 discriminator 2
	lw	a5,-24(s0)
	.loc 2 553 22 discriminator 2
	bltu	a4,a5,.L94
.L93:
	.loc 2 553 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 553 51 is_stmt 0
	j	.L110
.L94:
	.loc 2 553 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 2 553 65 discriminator 4
	lw	a5,-20(s0)
	.loc 2 553 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 553 81 discriminator 4
	lw	a4,-28(s0)
	.loc 2 553 84 discriminator 4
	lw	a5,-20(s0)
	.loc 2 553 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 555 16
	lw	a5,-64(s0)
	addi	a5,a5,72
	mv	a0,a5
	call	mbedtls_pk_get_name
	mv	a4,a0
	.loc 2 555 16 is_stmt 0 discriminator 1
	addi	a5,s0,-44
	mv	a2,a4
	li	a1,14
	mv	a0,a5
	call	mbedtls_x509_key_size_helper
	sw	a0,-20(s0)
	.loc 2 555 8 is_stmt 1 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L95
	.loc 2 557 16
	lw	a5,-20(s0)
	j	.L110
.L95:
	.loc 2 560 11
	lw	s1,-28(s0)
	lw	s2,-24(s0)
	.loc 2 561 34
	lw	a5,-64(s0)
	addi	a5,a5,72
	mv	a0,a5
	call	mbedtls_pk_get_bitlen
	mv	a5,a0
	.loc 2 560 11
	addi	a4,s0,-44
	lw	a3,-60(s0)
	lui	a2,%hi(.LC5)
	addi	a2,a2,%lo(.LC5)
	mv	a1,s2
	mv	a0,s1
	call	snprintf
	sw	a0,-20(s0)
	.loc 2 562 13
	lw	a5,-20(s0)
	blt	a5,zero,.L96
	.loc 2 562 25 discriminator 2
	lw	a4,-20(s0)
	.loc 2 562 38 discriminator 2
	lw	a5,-24(s0)
	.loc 2 562 22 discriminator 2
	bltu	a4,a5,.L97
.L96:
	.loc 2 562 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 562 51 is_stmt 0
	j	.L110
.L97:
	.loc 2 562 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 2 562 65 discriminator 4
	lw	a5,-20(s0)
	.loc 2 562 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 562 81 discriminator 4
	lw	a4,-28(s0)
	.loc 2 562 84 discriminator 4
	lw	a5,-20(s0)
	.loc 2 562 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 568 12
	lw	a5,-64(s0)
	lw	a5,104(a5)
	.loc 2 568 24
	andi	a5,a5,32
	.loc 2 568 8
	beq	a5,zero,.L98
	.loc 2 569 15
	lw	a4,-28(s0)
	lw	a1,-24(s0)
	lw	a3,-60(s0)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	mv	a0,a4
	call	snprintf
	sw	a0,-20(s0)
	.loc 2 570 17
	lw	a5,-20(s0)
	blt	a5,zero,.L99
	.loc 2 570 29 discriminator 2
	lw	a4,-20(s0)
	.loc 2 570 42 discriminator 2
	lw	a5,-24(s0)
	.loc 2 570 26 discriminator 2
	bltu	a4,a5,.L100
.L99:
	.loc 2 570 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 570 55 is_stmt 0
	j	.L110
.L100:
	.loc 2 570 66 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 2 570 69 discriminator 4
	lw	a5,-20(s0)
	.loc 2 570 66 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 570 85 discriminator 4
	lw	a4,-28(s0)
	.loc 2 570 88 discriminator 4
	lw	a5,-20(s0)
	.loc 2 570 85 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 572 20
	lw	a5,-64(s0)
	addi	a2,a5,88
	addi	a4,s0,-24
	addi	a5,s0,-28
	lw	a3,-60(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_x509_info_subject_alt_name
	sw	a0,-20(s0)
	.loc 2 572 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L98
	.loc 2 575 20
	lw	a5,-20(s0)
	j	.L110
.L98:
	.loc 2 579 12
	lw	a5,-64(s0)
	lw	a4,104(a5)
	.loc 2 579 24
	li	a5,65536
	and	a5,a4,a5
	.loc 2 579 8
	beq	a5,zero,.L101
	.loc 2 580 15
	lw	a4,-28(s0)
	lw	a1,-24(s0)
	lw	a3,-60(s0)
	lui	a5,%hi(.LC7)
	addi	a2,a5,%lo(.LC7)
	mv	a0,a4
	call	snprintf
	sw	a0,-20(s0)
	.loc 2 581 17
	lw	a5,-20(s0)
	blt	a5,zero,.L102
	.loc 2 581 29 discriminator 2
	lw	a4,-20(s0)
	.loc 2 581 42 discriminator 2
	lw	a5,-24(s0)
	.loc 2 581 26 discriminator 2
	bltu	a4,a5,.L103
.L102:
	.loc 2 581 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 581 55 is_stmt 0
	j	.L110
.L103:
	.loc 2 581 66 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 2 581 69 discriminator 4
	lw	a5,-20(s0)
	.loc 2 581 66 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 581 85 discriminator 4
	lw	a4,-28(s0)
	.loc 2 581 88 discriminator 4
	lw	a5,-20(s0)
	.loc 2 581 85 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 583 59
	lw	a5,-64(s0)
	lbu	a3,84(a5)
	.loc 2 583 20
	addi	a4,s0,-24
	addi	a5,s0,-28
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_x509_info_cert_type
	sw	a0,-20(s0)
	.loc 2 583 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L101
	.loc 2 584 20
	lw	a5,-20(s0)
	j	.L110
.L101:
	.loc 2 588 12
	lw	a5,-64(s0)
	lw	a5,104(a5)
	.loc 2 588 24
	andi	a5,a5,4
	.loc 2 588 8
	beq	a5,zero,.L104
	.loc 2 589 15
	lw	a4,-28(s0)
	lw	a1,-24(s0)
	lw	a3,-60(s0)
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	mv	a0,a4
	call	snprintf
	sw	a0,-20(s0)
	.loc 2 590 17
	lw	a5,-20(s0)
	blt	a5,zero,.L105
	.loc 2 590 29 discriminator 2
	lw	a4,-20(s0)
	.loc 2 590 42 discriminator 2
	lw	a5,-24(s0)
	.loc 2 590 26 discriminator 2
	bltu	a4,a5,.L106
.L105:
	.loc 2 590 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 590 55 is_stmt 0
	j	.L110
.L106:
	.loc 2 590 66 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 2 590 69 discriminator 4
	lw	a5,-20(s0)
	.loc 2 590 66 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 590 85 discriminator 4
	lw	a4,-28(s0)
	.loc 2 590 88 discriminator 4
	lw	a5,-20(s0)
	.loc 2 590 85 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 592 59
	lw	a5,-64(s0)
	lw	a3,80(a5)
	.loc 2 592 20
	addi	a4,s0,-24
	addi	a5,s0,-28
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_x509_info_key_usage
	sw	a0,-20(s0)
	.loc 2 592 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L104
	.loc 2 593 20
	lw	a5,-20(s0)
	j	.L110
.L104:
	.loc 2 597 12
	lw	a5,-64(s0)
	lw	a5,104(a5)
	.loc 2 597 8
	beq	a5,zero,.L107
	.loc 2 598 15
	lw	a4,-28(s0)
	lw	a3,-24(s0)
	lui	a5,%hi(.LC9)
	addi	a2,a5,%lo(.LC9)
	mv	a1,a3
	mv	a0,a4
	call	snprintf
	sw	a0,-20(s0)
	.loc 2 599 17
	lw	a5,-20(s0)
	blt	a5,zero,.L108
	.loc 2 599 29 discriminator 2
	lw	a4,-20(s0)
	.loc 2 599 42 discriminator 2
	lw	a5,-24(s0)
	.loc 2 599 26 discriminator 2
	bltu	a4,a5,.L109
.L108:
	.loc 2 599 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 599 55 is_stmt 0
	j	.L110
.L109:
	.loc 2 599 66 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 2 599 69 discriminator 4
	lw	a5,-20(s0)
	.loc 2 599 66 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 599 85 discriminator 4
	lw	a4,-28(s0)
	.loc 2 599 88 discriminator 4
	lw	a5,-20(s0)
	.loc 2 599 85 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
.L107:
	.loc 2 602 24
	lw	a5,-24(s0)
	lw	a4,-56(s0)
	sub	a5,a4,a5
.L110:
	.loc 2 603 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE87:
	.size	mbedtls_x509_csr_info, .-mbedtls_x509_csr_info
	.section	.text.mbedtls_x509_csr_init,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_csr_init
	.type	mbedtls_x509_csr_init, @function
mbedtls_x509_csr_init:
.LFB88:
	.loc 2 610 1
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
	.loc 2 611 5
	li	a2,140
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 2 612 1
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
.LFE88:
	.size	mbedtls_x509_csr_init, .-mbedtls_x509_csr_init
	.section	.text.mbedtls_x509_csr_free,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_csr_free
	.type	mbedtls_x509_csr_free, @function
mbedtls_x509_csr_free:
.LFB89:
	.loc 2 618 1
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
	.loc 2 619 8
	lw	a5,-20(s0)
	beq	a5,zero,.L116
	.loc 2 623 5
	lw	a5,-20(s0)
	addi	a5,a5,72
	mv	a0,a5
	call	mbedtls_pk_free
	.loc 2 629 59
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 2 629 5
	mv	a0,a5
	call	mbedtls_asn1_free_named_data_list_shallow
	.loc 2 630 54
	lw	a5,-20(s0)
	lw	a5,100(a5)
	.loc 2 630 5
	mv	a0,a5
	call	mbedtls_asn1_sequence_free
	.loc 2 632 17
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 632 8
	beq	a5,zero,.L115
	.loc 2 633 42
	lw	a5,-20(s0)
	lw	a4,8(a5)
	.loc 2 633 9
	lw	a5,-20(s0)
	lw	a5,4(a5)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_zeroize_and_free
.L115:
	.loc 2 636 5
	li	a1,140
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
	j	.L112
.L116:
	.loc 2 620 9
	nop
.L112:
	.loc 2 637 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE89:
	.size	mbedtls_x509_csr_free, .-mbedtls_x509_csr_free
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/pk.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509_csr.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/common.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509_internal.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/oid.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc88
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1c
	.4byte	.LASF118
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xb
	.4byte	0x32
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x1e
	.byte	0x4
	.uleb128 0x13
	.4byte	0x89
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0x9f
	.uleb128 0x13
	.4byte	0x95
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xb
	.4byte	0x9f
	.uleb128 0x2
	.4byte	0xa6
	.uleb128 0x13
	.4byte	0xab
	.uleb128 0x2
	.4byte	0xbf
	.uleb128 0x13
	.4byte	0xb5
	.uleb128 0x1f
	.uleb128 0x12
	.4byte	.LASF14
	.byte	0xc
	.byte	0x3
	.byte	0x8d
	.4byte	0xf2
	.uleb128 0xa
	.string	"tag"
	.byte	0x3
	.byte	0x8e
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0xa
	.string	"len"
	.byte	0x3
	.byte	0x8f
	.byte	0xc
	.4byte	0x76
	.byte	0x4
	.uleb128 0xa
	.string	"p"
	.byte	0x3
	.byte	0x90
	.byte	0x14
	.4byte	0x90
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0x92
	.byte	0x1
	.4byte	0xc0
	.uleb128 0xb
	.4byte	0xf2
	.uleb128 0x12
	.4byte	.LASF15
	.byte	0x10
	.byte	0x3
	.byte	0xa1
	.4byte	0x12a
	.uleb128 0xa
	.string	"buf"
	.byte	0x3
	.byte	0xa2
	.byte	0x16
	.4byte	0xf2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x3
	.byte	0xab
	.byte	0x23
	.4byte	0x12a
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	0x103
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0xad
	.byte	0x1
	.4byte	0x103
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0x20
	.byte	0x3
	.byte	0xb2
	.4byte	0x17c
	.uleb128 0xa
	.string	"oid"
	.byte	0x3
	.byte	0xb3
	.byte	0x16
	.4byte	0xf2
	.byte	0
	.uleb128 0xa
	.string	"val"
	.byte	0x3
	.byte	0xb4
	.byte	0x16
	.4byte	0xf2
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x3
	.byte	0xbd
	.byte	0x25
	.4byte	0x17c
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x3
	.byte	0xc4
	.byte	0x13
	.4byte	0x32
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.4byte	0x13b
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x3
	.byte	0xc6
	.byte	0x1
	.4byte	0x13b
	.uleb128 0x17
	.4byte	0x32
	.byte	0x5
	.byte	0x2f
	.4byte	0x1e1
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x11
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x12
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3c
	.byte	0x3
	.4byte	0x18d
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x17
	.4byte	0x32
	.byte	0x6
	.byte	0x49
	.4byte	0x22e
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x6
	.byte	0x52
	.byte	0x3
	.4byte	0x1f2
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x6
	.byte	0xd5
	.byte	0x22
	.4byte	0x24b
	.uleb128 0xb
	.4byte	0x23a
	.uleb128 0x20
	.4byte	.LASF41
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x8
	.byte	0x6
	.byte	0xdc
	.4byte	0x277
	.uleb128 0x5
	.4byte	.LASF43
	.byte	0x6
	.byte	0xdd
	.byte	0x1e
	.4byte	0x277
	.byte	0
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0x6
	.byte	0xde
	.byte	0xb
	.4byte	0x89
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	0x246
	.uleb128 0x21
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x109
	.byte	0x3
	.4byte	0x250
	.uleb128 0xb
	.4byte	0x27c
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x7
	.byte	0xd8
	.byte	0x1a
	.4byte	0xf2
	.uleb128 0xb
	.4byte	0x28e
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x7
	.byte	0xe3
	.byte	0x21
	.4byte	0x181
	.uleb128 0xb
	.4byte	0x29f
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x7
	.byte	0xe8
	.byte	0x1f
	.4byte	0x12f
	.uleb128 0xb
	.4byte	0x2b0
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x8c
	.byte	0x8
	.byte	0x26
	.4byte	0x390
	.uleb128 0xa
	.string	"raw"
	.byte	0x8
	.byte	0x27
	.byte	0x16
	.4byte	0x28e
	.byte	0
	.uleb128 0xa
	.string	"cri"
	.byte	0x8
	.byte	0x28
	.byte	0x16
	.4byte	0x28e
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF49
	.byte	0x8
	.byte	0x2a
	.byte	0x9
	.4byte	0x68
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF50
	.byte	0x8
	.byte	0x2c
	.byte	0x16
	.4byte	0x28e
	.byte	0x1c
	.uleb128 0x5
	.4byte	.LASF51
	.byte	0x8
	.byte	0x2d
	.byte	0x17
	.4byte	0x29f
	.byte	0x28
	.uleb128 0xa
	.string	"pk"
	.byte	0x8
	.byte	0x2f
	.byte	0x18
	.4byte	0x27c
	.byte	0x48
	.uleb128 0x5
	.4byte	.LASF52
	.byte	0x8
	.byte	0x31
	.byte	0x12
	.4byte	0x6f
	.byte	0x50
	.uleb128 0x5
	.4byte	.LASF53
	.byte	0x8
	.byte	0x32
	.byte	0x13
	.4byte	0x32
	.byte	0x54
	.uleb128 0x5
	.4byte	.LASF54
	.byte	0x8
	.byte	0x33
	.byte	0x1b
	.4byte	0x2b0
	.byte	0x58
	.uleb128 0x5
	.4byte	.LASF55
	.byte	0x8
	.byte	0x35
	.byte	0x9
	.4byte	0x68
	.byte	0x68
	.uleb128 0x5
	.4byte	.LASF56
	.byte	0x8
	.byte	0x37
	.byte	0x16
	.4byte	0x28e
	.byte	0x6c
	.uleb128 0xa
	.string	"sig"
	.byte	0x8
	.byte	0x38
	.byte	0x16
	.4byte	0x28e
	.byte	0x78
	.uleb128 0x5
	.4byte	.LASF57
	.byte	0x8
	.byte	0x39
	.byte	0x17
	.4byte	0x1e1
	.byte	0x84
	.uleb128 0x5
	.4byte	.LASF58
	.byte	0x8
	.byte	0x3a
	.byte	0x17
	.4byte	0x22e
	.byte	0x85
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0x8
	.byte	0x3b
	.byte	0xb
	.4byte	0x89
	.byte	0x88
	.byte	0
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x8
	.byte	0x3d
	.byte	0x1
	.4byte	0x2c1
	.uleb128 0xb
	.4byte	0x390
	.uleb128 0x2
	.4byte	0x27c
	.uleb128 0x2
	.4byte	0x181
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x8
	.byte	0x7b
	.byte	0xf
	.4byte	0x3b7
	.uleb128 0x2
	.4byte	0x3bc
	.uleb128 0x22
	.4byte	0x68
	.4byte	0x3e4
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x3e4
	.uleb128 0x1
	.4byte	0x3e9
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x3ee
	.uleb128 0x1
	.4byte	0x3ee
	.byte	0
	.uleb128 0x2
	.4byte	0x39c
	.uleb128 0x2
	.4byte	0x29a
	.uleb128 0x2
	.4byte	0x39
	.uleb128 0x18
	.4byte	.LASF61
	.byte	0x9
	.byte	0x9f
	.4byte	0x409
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x18
	.4byte	.LASF62
	.byte	0xa
	.byte	0x79
	.4byte	0x41f
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x3
	.2byte	0x1aa
	.4byte	0x431
	.uleb128 0x1
	.4byte	0x431
	.byte	0
	.uleb128 0x2
	.4byte	0x12f
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x3
	.2byte	0x277
	.4byte	0x448
	.uleb128 0x1
	.4byte	0x3a6
	.byte	0
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x143
	.4byte	0x45a
	.uleb128 0x1
	.4byte	0x3a1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0xb
	.byte	0x50
	.byte	0x5
	.4byte	0x68
	.4byte	0x47a
	.uleb128 0x1
	.4byte	0x47a
	.uleb128 0x1
	.4byte	0x1ed
	.uleb128 0x1
	.4byte	0x6f
	.byte	0
	.uleb128 0x2
	.4byte	0x95
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0xb
	.byte	0x4e
	.byte	0x5
	.4byte	0x68
	.4byte	0x49f
	.uleb128 0x1
	.4byte	0x47a
	.uleb128 0x1
	.4byte	0x1ed
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0xb
	.byte	0x4a
	.byte	0x5
	.4byte	0x68
	.4byte	0x4c4
	.uleb128 0x1
	.4byte	0x47a
	.uleb128 0x1
	.4byte	0x1ed
	.uleb128 0x1
	.4byte	0x4c4
	.uleb128 0x1
	.4byte	0xab
	.byte	0
	.uleb128 0x2
	.4byte	0x2bc
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x1ae
	.byte	0x8
	.4byte	0x76
	.4byte	0x4e0
	.uleb128 0x1
	.4byte	0x4e0
	.byte	0
	.uleb128 0x2
	.4byte	0x289
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0xb
	.byte	0x32
	.byte	0x5
	.4byte	0x68
	.4byte	0x505
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0xab
	.byte	0
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x3f6
	.byte	0xd
	.4byte	0xab
	.4byte	0x51c
	.uleb128 0x1
	.4byte	0x4e0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0xb
	.byte	0x2e
	.byte	0x5
	.4byte	0x68
	.4byte	0x54b
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x3e9
	.uleb128 0x1
	.4byte	0x22e
	.uleb128 0x1
	.4byte	0x1e1
	.uleb128 0x1
	.4byte	0xb5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x143
	.byte	0x5
	.4byte	0x68
	.4byte	0x56c
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x56c
	.byte	0
	.uleb128 0x2
	.4byte	0x2ab
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0xc
	.2byte	0x110
	.byte	0x5
	.4byte	0x68
	.4byte	0x593
	.uleb128 0x1
	.4byte	0x9a
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0xb0
	.uleb128 0x23
	.byte	0
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0xb
	.byte	0x23
	.byte	0x5
	.4byte	0x68
	.4byte	0x5b3
	.uleb128 0x1
	.4byte	0x5b3
	.uleb128 0x1
	.4byte	0x3ee
	.uleb128 0x1
	.4byte	0x5b8
	.byte	0
	.uleb128 0x2
	.4byte	0x90
	.uleb128 0x2
	.4byte	0x28e
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0xb
	.byte	0x24
	.byte	0x5
	.4byte	0x68
	.4byte	0x5e7
	.uleb128 0x1
	.4byte	0x3e9
	.uleb128 0x1
	.4byte	0x3e9
	.uleb128 0x1
	.4byte	0x5e7
	.uleb128 0x1
	.4byte	0x5ec
	.uleb128 0x1
	.4byte	0x5f1
	.byte	0
	.uleb128 0x2
	.4byte	0x1e1
	.uleb128 0x2
	.4byte	0x22e
	.uleb128 0x2
	.4byte	0x89
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0xb
	.byte	0x1c
	.byte	0x5
	.4byte	0x68
	.4byte	0x61b
	.uleb128 0x1
	.4byte	0x5b3
	.uleb128 0x1
	.4byte	0x3ee
	.uleb128 0x1
	.4byte	0x5b8
	.uleb128 0x1
	.4byte	0x5b8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x4f9
	.byte	0x5
	.4byte	0x68
	.4byte	0x63c
	.uleb128 0x1
	.4byte	0x5b3
	.uleb128 0x1
	.4byte	0x3ee
	.uleb128 0x1
	.4byte	0x3a1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0xb
	.byte	0x18
	.byte	0x5
	.4byte	0x68
	.4byte	0x65c
	.uleb128 0x1
	.4byte	0x5b3
	.uleb128 0x1
	.4byte	0x3ee
	.uleb128 0x1
	.4byte	0x65c
	.byte	0
	.uleb128 0x2
	.4byte	0x29f
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0xd
	.byte	0x1f
	.byte	0x8
	.4byte	0x89
	.4byte	0x681
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0xba
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0xe
	.byte	0x5a
	.byte	0x7
	.4byte	0x89
	.4byte	0x69c
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0xd
	.byte	0x21
	.byte	0x8
	.4byte	0x89
	.4byte	0x6bc
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0xd
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x6dc
	.uleb128 0x1
	.4byte	0xb5
	.uleb128 0x1
	.4byte	0xb5
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.4byte	.LASF84
	.byte	0xb
	.byte	0x3e
	.byte	0x5
	.4byte	0x68
	.4byte	0x6fc
	.uleb128 0x1
	.4byte	0x5b3
	.uleb128 0x1
	.4byte	0x3ee
	.uleb128 0x1
	.4byte	0x90
	.byte	0
	.uleb128 0x4
	.4byte	.LASF85
	.byte	0xb
	.byte	0x44
	.byte	0x5
	.4byte	0x68
	.4byte	0x71c
	.uleb128 0x1
	.4byte	0x5b3
	.uleb128 0x1
	.4byte	0x3ee
	.uleb128 0x1
	.4byte	0x71c
	.byte	0
	.uleb128 0x2
	.4byte	0x2b0
	.uleb128 0x4
	.4byte	.LASF86
	.byte	0xb
	.byte	0x41
	.byte	0x5
	.4byte	0x68
	.4byte	0x741
	.uleb128 0x1
	.4byte	0x5b3
	.uleb128 0x1
	.4byte	0x3ee
	.uleb128 0x1
	.4byte	0x741
	.byte	0
	.uleb128 0x2
	.4byte	0x6f
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0xf
	.2byte	0x20d
	.byte	0x5
	.4byte	0x68
	.4byte	0x762
	.uleb128 0x1
	.4byte	0x762
	.uleb128 0x1
	.4byte	0x767
	.byte	0
	.uleb128 0x2
	.4byte	0xfe
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x3
	.2byte	0x10a
	.byte	0x5
	.4byte	0x68
	.4byte	0x78d
	.uleb128 0x1
	.4byte	0x5b3
	.uleb128 0x1
	.4byte	0x3ee
	.uleb128 0x1
	.4byte	0x767
	.byte	0
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0x3
	.byte	0xf5
	.byte	0x5
	.4byte	0x68
	.4byte	0x7b2
	.uleb128 0x1
	.4byte	0x5b3
	.uleb128 0x1
	.4byte	0x3ee
	.uleb128 0x1
	.4byte	0x1ed
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x3
	.2byte	0x11f
	.byte	0x5
	.4byte	0x68
	.4byte	0x7d3
	.uleb128 0x1
	.4byte	0x5b3
	.uleb128 0x1
	.4byte	0x3ee
	.uleb128 0x1
	.4byte	0x767
	.byte	0
	.uleb128 0x19
	.4byte	.LASF91
	.2byte	0x269
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f8
	.uleb128 0x6
	.string	"csr"
	.2byte	0x269
	.byte	0x2e
	.4byte	0x7f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2
	.4byte	0x390
	.uleb128 0x19
	.4byte	.LASF92
	.2byte	0x261
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x822
	.uleb128 0x6
	.string	"csr"
	.2byte	0x261
	.byte	0x2e
	.4byte	0x7f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF96
	.2byte	0x210
	.4byte	0x68
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b0
	.uleb128 0x6
	.string	"buf"
	.2byte	0x210
	.byte	0x21
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xd
	.4byte	.LASF93
	.2byte	0x210
	.byte	0x2d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.4byte	.LASF94
	.2byte	0x210
	.byte	0x3f
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.string	"csr"
	.2byte	0x211
	.byte	0x33
	.4byte	0x3e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.string	"ret"
	.2byte	0x213
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"n"
	.2byte	0x214
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"p"
	.2byte	0x215
	.byte	0xb
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.4byte	.LASF95
	.2byte	0x216
	.byte	0xa
	.4byte	0x8b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x24
	.4byte	0x9f
	.4byte	0x8c0
	.uleb128 0x25
	.4byte	0x6f
	.byte	0xd
	.byte	0
	.uleb128 0x14
	.4byte	.LASF97
	.2byte	0x1c6
	.4byte	0x68
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x907
	.uleb128 0x6
	.string	"csr"
	.2byte	0x1c6
	.byte	0x2e
	.4byte	0x7f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"buf"
	.2byte	0x1c6
	.byte	0x48
	.4byte	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF98
	.2byte	0x1c6
	.byte	0x54
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x14
	.4byte	.LASF99
	.2byte	0x1bb
	.4byte	0x68
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96b
	.uleb128 0x6
	.string	"csr"
	.2byte	0x1bb
	.byte	0x3e
	.4byte	0x7f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"buf"
	.2byte	0x1bc
	.byte	0x41
	.4byte	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF98
	.2byte	0x1bc
	.byte	0x4d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"cb"
	.2byte	0x1bd
	.byte	0x46
	.4byte	0x3ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.4byte	.LASF100
	.2byte	0x1be
	.byte	0x32
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x14
	.4byte	.LASF101
	.2byte	0x1b2
	.4byte	0x68
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b2
	.uleb128 0x6
	.string	"csr"
	.2byte	0x1b2
	.byte	0x32
	.4byte	0x7f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"buf"
	.2byte	0x1b3
	.byte	0x35
	.4byte	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF98
	.2byte	0x1b3
	.byte	0x41
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x26
	.4byte	.LASF103
	.byte	0x2
	.2byte	0x109
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa62
	.uleb128 0x6
	.string	"csr"
	.2byte	0x109
	.byte	0x42
	.4byte	0x7f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"buf"
	.2byte	0x10a
	.byte	0x45
	.4byte	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.4byte	.LASF98
	.2byte	0x10a
	.byte	0x51
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.string	"cb"
	.2byte	0x10b
	.byte	0x4a
	.4byte	0x3ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.4byte	.LASF100
	.2byte	0x10c
	.byte	0x36
	.4byte	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xe
	.string	"ret"
	.2byte	0x10e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"len"
	.2byte	0x10f
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.string	"p"
	.2byte	0x110
	.byte	0x14
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.string	"end"
	.2byte	0x110
	.byte	0x18
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.4byte	.LASF102
	.2byte	0x111
	.byte	0x16
	.4byte	0x28e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0xc7
	.4byte	0x68
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb14
	.uleb128 0x9
	.string	"csr"
	.byte	0x2
	.byte	0xc7
	.byte	0x38
	.4byte	0x7f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.4byte	.LASF105
	.byte	0x2
	.byte	0xc8
	.byte	0x3b
	.4byte	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.string	"end"
	.byte	0x2
	.byte	0xc8
	.byte	0x57
	.4byte	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.string	"cb"
	.byte	0x2
	.byte	0xc9
	.byte	0x40
	.4byte	0x3ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x2
	.byte	0xca
	.byte	0x2c
	.4byte	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x11
	.string	"ret"
	.byte	0xcc
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"len"
	.byte	0xcd
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.4byte	.LASF106
	.byte	0xce
	.byte	0x14
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.string	"p"
	.byte	0xcf
	.byte	0x15
	.4byte	0x5b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xf
	.4byte	.LASF107
	.byte	0xd2
	.byte	0x1a
	.4byte	0x28e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x40
	.4byte	0x68
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe6
	.uleb128 0x9
	.string	"csr"
	.byte	0x2
	.byte	0x40
	.byte	0x38
	.4byte	0x7f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x9
	.string	"p"
	.byte	0x2
	.byte	0x41
	.byte	0x36
	.4byte	0x5b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x9
	.string	"end"
	.byte	0x2
	.byte	0x41
	.byte	0x4e
	.4byte	0x3ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x9
	.string	"cb"
	.byte	0x2
	.byte	0x42
	.byte	0x40
	.4byte	0x3ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x2
	.byte	0x43
	.byte	0x2c
	.4byte	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x11
	.string	"ret"
	.byte	0x45
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"len"
	.byte	0x46
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.4byte	.LASF109
	.byte	0x47
	.byte	0x14
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.4byte	.LASF110
	.byte	0x47
	.byte	0x23
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xf
	.4byte	.LASF111
	.byte	0x4a
	.byte	0x1a
	.4byte	0x28e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.4byte	.LASF112
	.byte	0x4b
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.4byte	.LASF113
	.byte	0x4c
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x2b
	.4byte	0x68
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc38
	.uleb128 0x9
	.string	"p"
	.byte	0x2
	.byte	0x2b
	.byte	0x31
	.4byte	0x5b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"end"
	.byte	0x2
	.byte	0x2c
	.byte	0x36
	.4byte	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"ver"
	.byte	0x2
	.byte	0x2d
	.byte	0x26
	.4byte	0x767
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.string	"ret"
	.byte	0x2f
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.4byte	.LASF119
	.byte	0x1
	.byte	0x8e
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0x1
	.byte	0x8e
	.byte	0x29
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"low"
	.byte	0x1
	.byte	0x8e
	.byte	0x33
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0x1
	.byte	0x8f
	.byte	0x31
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	.LASF117
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x9
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF108:
	.string	"x509_csr_parse_extensions"
.LASF40:
	.string	"mbedtls_pk_type_t"
.LASF78:
	.string	"mbedtls_pk_parse_subpubkey"
.LASF13:
	.string	"size_t"
.LASF16:
	.string	"next"
.LASF113:
	.string	"ext_type"
.LASF104:
	.string	"x509_csr_parse_attributes"
.LASF14:
	.string	"mbedtls_asn1_buf"
.LASF75:
	.string	"mbedtls_x509_get_sig"
.LASF9:
	.string	"long long unsigned int"
.LASF46:
	.string	"mbedtls_x509_name"
.LASF109:
	.string	"end_ext_data"
.LASF39:
	.string	"MBEDTLS_PK_OPAQUE"
.LASF56:
	.string	"sig_oid"
.LASF41:
	.string	"mbedtls_pk_info_t"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF73:
	.string	"mbedtls_x509_dn_gets"
.LASF6:
	.string	"long int"
.LASF23:
	.string	"MBEDTLS_MD_SHA224"
.LASF71:
	.string	"mbedtls_pk_get_name"
.LASF88:
	.string	"mbedtls_asn1_get_bool"
.LASF96:
	.string	"mbedtls_x509_csr_info"
.LASF45:
	.string	"mbedtls_x509_buf"
.LASF5:
	.string	"short unsigned int"
.LASF30:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF117:
	.string	"line"
.LASF70:
	.string	"mbedtls_x509_key_size_helper"
.LASF60:
	.string	"mbedtls_x509_csr_ext_cb_t"
.LASF57:
	.string	"sig_md"
.LASF65:
	.string	"mbedtls_pk_free"
.LASF95:
	.string	"key_size_str"
.LASF110:
	.string	"end_ext_octet"
.LASF10:
	.string	"unsigned int"
.LASF107:
	.string	"attr_oid"
.LASF7:
	.string	"long unsigned int"
.LASF21:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF31:
	.string	"mbedtls_md_type_t"
.LASF93:
	.string	"size"
.LASF28:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF34:
	.string	"MBEDTLS_PK_ECKEY"
.LASF54:
	.string	"subject_alt_names"
.LASF58:
	.string	"sig_pk"
.LASF99:
	.string	"mbedtls_x509_csr_parse_der_with_ext_cb"
.LASF87:
	.string	"mbedtls_oid_get_x509_ext_type"
.LASF90:
	.string	"mbedtls_asn1_get_int"
.LASF36:
	.string	"MBEDTLS_PK_ECDSA"
.LASF94:
	.string	"prefix"
.LASF101:
	.string	"mbedtls_x509_csr_parse_der"
.LASF49:
	.string	"version"
.LASF51:
	.string	"subject"
.LASF66:
	.string	"mbedtls_x509_info_key_usage"
.LASF43:
	.string	"pk_info"
.LASF53:
	.string	"ns_cert_type"
.LASF26:
	.string	"MBEDTLS_MD_SHA512"
.LASF76:
	.string	"mbedtls_x509_get_sig_alg"
.LASF55:
	.string	"ext_types"
.LASF119:
	.string	"mbedtls_error_add"
.LASF22:
	.string	"MBEDTLS_MD_SHA1"
.LASF29:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF112:
	.string	"is_critical"
.LASF42:
	.string	"mbedtls_pk_context"
.LASF19:
	.string	"MBEDTLS_MD_NONE"
.LASF69:
	.string	"mbedtls_pk_get_bitlen"
.LASF24:
	.string	"MBEDTLS_MD_SHA256"
.LASF15:
	.string	"mbedtls_asn1_sequence"
.LASF64:
	.string	"mbedtls_asn1_free_named_data_list_shallow"
.LASF92:
	.string	"mbedtls_x509_csr_init"
.LASF84:
	.string	"mbedtls_x509_get_ns_cert_type"
.LASF59:
	.string	"sig_opts"
.LASF3:
	.string	"unsigned char"
.LASF85:
	.string	"mbedtls_x509_get_subject_alt_name"
.LASF4:
	.string	"short int"
.LASF116:
	.string	"file"
.LASF111:
	.string	"extn_oid"
.LASF91:
	.string	"mbedtls_x509_csr_free"
.LASF50:
	.string	"subject_raw"
.LASF114:
	.string	"x509_csr_get_version"
.LASF98:
	.string	"buflen"
.LASF89:
	.string	"mbedtls_asn1_get_tag"
.LASF44:
	.string	"pk_ctx"
.LASF77:
	.string	"mbedtls_x509_get_alg"
.LASF102:
	.string	"sig_params"
.LASF35:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF79:
	.string	"mbedtls_x509_get_name"
.LASF11:
	.string	"long double"
.LASF12:
	.string	"char"
.LASF52:
	.string	"key_usage"
.LASF103:
	.string	"mbedtls_x509_csr_parse_der_internal"
.LASF38:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF61:
	.string	"mbedtls_platform_zeroize"
.LASF33:
	.string	"MBEDTLS_PK_RSA"
.LASF115:
	.string	"high"
.LASF86:
	.string	"mbedtls_x509_get_key_usage"
.LASF62:
	.string	"mbedtls_zeroize_and_free"
.LASF83:
	.string	"memcmp"
.LASF25:
	.string	"MBEDTLS_MD_SHA384"
.LASF20:
	.string	"MBEDTLS_MD_MD5"
.LASF80:
	.string	"memcpy"
.LASF118:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF37:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF74:
	.string	"snprintf"
.LASF82:
	.string	"memset"
.LASF17:
	.string	"mbedtls_asn1_named_data"
.LASF81:
	.string	"calloc"
.LASF32:
	.string	"MBEDTLS_PK_NONE"
.LASF47:
	.string	"mbedtls_x509_sequence"
.LASF48:
	.string	"mbedtls_x509_csr"
.LASF63:
	.string	"mbedtls_asn1_sequence_free"
.LASF18:
	.string	"next_merged"
.LASF27:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF97:
	.string	"mbedtls_x509_csr_parse"
.LASF68:
	.string	"mbedtls_x509_info_subject_alt_name"
.LASF105:
	.string	"start"
.LASF106:
	.string	"end_attr_data"
.LASF67:
	.string	"mbedtls_x509_info_cert_type"
.LASF72:
	.string	"mbedtls_x509_sig_alg_gets"
.LASF100:
	.string	"p_ctx"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509_csr.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
