	.file	"x509_crl.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509_crl.c"
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
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509_crl.c"
	.section	.text.x509_crl_get_version,"ax",@progbits
	.align	1
	.type	x509_crl_get_version, @function
x509_crl_get_version:
.LFB80:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509_crl.c"
	.loc 2 54 1
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
	.loc 2 55 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 57 16
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_int
	sw	a0,-20(s0)
	.loc 2 57 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L4
	.loc 2 58 12
	lw	a4,-20(s0)
	li	a5,-98
	bne	a4,a5,.L5
	.loc 2 59 18
	lw	a5,-44(s0)
	sw	zero,0(a5)
	.loc 2 60 20
	li	a5,0
	j	.L6
.L5:
	.loc 2 63 16
	li	a3,63
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-512
	call	mbedtls_error_add
	mv	a5,a0
	j	.L6
.L4:
	.loc 2 66 12
	li	a5,0
.L6:
	.loc 2 67 1
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
	.size	x509_crl_get_version, .-x509_crl_get_version
	.section	.text.x509_get_crl_ext,"ax",@progbits
	.align	1
	.type	x509_get_crl_ext, @function
x509_get_crl_ext:
.LFB81:
	.loc 2 79 1
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
	.loc 2 80 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 82 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 82 8
	lw	a4,-40(s0)
	bne	a4,a5,.L8
	.loc 2 83 16
	li	a5,0
	j	.L9
.L8:
	.loc 2 90 16
	li	a3,0
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_x509_get_ext
	sw	a0,-20(s0)
	.loc 2 90 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L10
	.loc 2 91 16
	lw	a5,-20(s0)
	j	.L9
.L10:
	.loc 2 94 14
	lw	a5,-44(s0)
	lw	a4,8(a5)
	.loc 2 94 23
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 2 94 9
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 2 96 11
	j	.L11
.L19:
.LBB2:
	.loc 2 103 13
	sw	zero,-28(s0)
	.loc 2 108 20
	addi	a5,s0,-32
	li	a3,48
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 108 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L12
	.loc 2 110 20
	li	a3,110
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L9
.L12:
	.loc 2 113 24
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 113 27
	lw	a5,-32(s0)
	.loc 2 113 22
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 116 20
	addi	a5,s0,-32
	li	a3,6
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 116 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L14
	.loc 2 118 20
	li	a3,118
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L9
.L14:
	.loc 2 120 9
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 120 12
	lw	a5,-32(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 2 123 20
	addi	a5,s0,-28
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_bool
	sw	a0,-20(s0)
	.loc 2 123 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L15
	.loc 2 124 62
	lw	a4,-20(s0)
	li	a5,-98
	beq	a4,a5,.L15
	.loc 2 126 20
	li	a3,126
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L9
.L15:
	.loc 2 130 20
	addi	a5,s0,-32
	li	a3,4
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 130 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L16
	.loc 2 132 20
	li	a3,132
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L9
.L16:
	.loc 2 136 9
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 136 12
	lw	a5,-32(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 2 137 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 137 12
	lw	a4,-24(s0)
	beq	a4,a5,.L17
	.loc 2 138 20
	li	a3,138
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L9
.L17:
	.loc 2 143 13
	lw	a5,-28(s0)
	.loc 2 143 12
	beq	a5,zero,.L11
	.loc 2 144 20
	li	a3,144
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-98
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L9
.L11:
.LBE2:
	.loc 2 96 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 96 15
	lw	a4,-40(s0)
	bgtu	a4,a5,.L19
	.loc 2 149 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 149 8
	lw	a4,-40(s0)
	beq	a4,a5,.L20
	.loc 2 150 16
	li	a3,150
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L9
.L20:
	.loc 2 154 12
	li	a5,0
.L9:
	.loc 2 155 1
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
	.size	x509_get_crl_ext, .-x509_get_crl_ext
	.section	.text.x509_get_crl_entry_ext,"ax",@progbits
	.align	1
	.type	x509_get_crl_entry_ext, @function
x509_get_crl_entry_ext:
.LFB82:
	.loc 2 163 1
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
	.loc 2 164 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 165 12
	sw	zero,-24(s0)
	.loc 2 168 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 168 8
	lw	a4,-40(s0)
	bgtu	a4,a5,.L22
	.loc 2 169 16
	li	a5,0
	j	.L31
.L22:
	.loc 2 172 17
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 172 16
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 2 172 14
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 2 173 14
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 173 12
	lw	a5,-44(s0)
	sw	a4,8(a5)
	.loc 2 179 16
	lw	a5,-44(s0)
	addi	a5,a5,4
	li	a3,48
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 179 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L24
	.loc 2 181 12
	lw	a4,-20(s0)
	li	a5,-98
	bne	a4,a5,.L25
	.loc 2 182 20
	lw	a5,-44(s0)
	sw	zero,8(a5)
	.loc 2 183 20
	li	a5,0
	j	.L31
.L25:
	.loc 2 185 16
	li	a3,185
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L31
.L24:
	.loc 2 188 11
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 188 19
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 2 188 9
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 2 190 16
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 190 24
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 2 190 19
	add	a5,a4,a5
	.loc 2 190 8
	lw	a4,-40(s0)
	beq	a4,a5,.L27
	.loc 2 191 16
	li	a3,191
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L31
.L29:
	.loc 2 196 20
	addi	a5,s0,-24
	li	a3,48
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 196 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L28
	.loc 2 198 20
	li	a3,198
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L31
.L28:
	.loc 2 201 9
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 201 12
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
.L27:
	.loc 2 195 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 195 15
	lw	a4,-40(s0)
	bgtu	a4,a5,.L29
	.loc 2 204 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 204 8
	lw	a4,-40(s0)
	beq	a4,a5,.L30
	.loc 2 205 16
	li	a3,205
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L31
.L30:
	.loc 2 209 12
	li	a5,0
.L31:
	.loc 2 210 1
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
	.size	x509_get_crl_entry_ext, .-x509_get_crl_entry_ext
	.section	.text.x509_get_entries,"ax",@progbits
	.align	1
	.type	x509_get_entries, @function
x509_get_entries:
.LFB83:
	.loc 2 218 1
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
	.loc 2 219 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 2 221 29
	lw	a5,-60(s0)
	sw	a5,-20(s0)
	.loc 2 223 9
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 223 8
	lw	a4,-56(s0)
	bne	a4,a5,.L33
	.loc 2 224 16
	li	a5,0
	j	.L46
.L33:
	.loc 2 227 16
	addi	a5,s0,-32
	li	a3,48
	mv	a2,a5
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-24(s0)
	.loc 2 227 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L35
	.loc 2 229 12
	lw	a4,-24(s0)
	li	a5,-98
	bne	a4,a5,.L36
	.loc 2 230 20
	li	a5,0
	j	.L46
.L36:
	.loc 2 233 16
	lw	a5,-24(s0)
	j	.L46
.L35:
	.loc 2 236 11
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 236 14
	lw	a5,-32(s0)
	.loc 2 236 9
	add	a5,a4,a5
	sw	a5,-56(s0)
	.loc 2 238 11
	j	.L37
.L45:
.LBB3:
	.loc 2 242 31
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 242 30
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 2 242 28
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 2 243 20
	addi	a5,s0,-36
	li	a3,48
	mv	a2,a5
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-24(s0)
	.loc 2 243 12 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L38
	.loc 2 245 20
	lw	a5,-24(s0)
	j	.L46
.L38:
	.loc 2 248 28
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 248 26
	lw	a5,-20(s0)
	sw	a4,8(a5)
	.loc 2 249 28
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 2 250 16
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 250 19
	lw	a5,-36(s0)
	.loc 2 250 14
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 252 20
	lw	a5,-20(s0)
	addi	a5,a5,12
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	mbedtls_x509_get_serial
	sw	a0,-24(s0)
	.loc 2 252 12 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L40
	.loc 2 253 20
	lw	a5,-24(s0)
	j	.L46
.L40:
	.loc 2 256 20
	lw	a5,-20(s0)
	addi	a5,a5,24
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	mbedtls_x509_get_time
	sw	a0,-24(s0)
	.loc 2 256 12 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L41
	.loc 2 258 20
	lw	a5,-24(s0)
	j	.L46
.L41:
	.loc 2 261 20
	lw	a5,-20(s0)
	addi	a5,a5,48
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	x509_get_crl_entry_ext
	sw	a0,-24(s0)
	.loc 2 261 12 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L42
	.loc 2 263 20
	lw	a5,-24(s0)
	j	.L46
.L42:
	.loc 2 266 13
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 266 12
	lw	a4,-56(s0)
	bleu	a4,a5,.L37
	.loc 2 267 31
	li	a1,64
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 2 267 29 discriminator 1
	lw	a5,-20(s0)
	sw	a4,60(a5)
	.loc 2 269 26
	lw	a5,-20(s0)
	lw	a5,60(a5)
	.loc 2 269 16
	bne	a5,zero,.L44
	.loc 2 270 24
	li	a5,-12288
	addi	a5,a5,1920
	j	.L46
.L44:
	.loc 2 273 23
	lw	a5,-20(s0)
	lw	a5,60(a5)
	sw	a5,-20(s0)
.L37:
.LBE3:
	.loc 2 238 12
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 238 15
	lw	a4,-56(s0)
	bgtu	a4,a5,.L45
	.loc 2 277 12
	li	a5,0
.L46:
	.loc 2 278 1
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
	.size	x509_get_entries, .-x509_get_entries
	.section	.text.mbedtls_x509_crl_parse_der,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crl_parse_der
	.type	mbedtls_x509_crl_parse_der, @function
mbedtls_x509_crl_parse_der:
.LFB84:
	.loc 2 285 1
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
	.loc 2 286 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 288 20
	sw	zero,-36(s0)
	.loc 2 288 30
	sw	zero,-28(s0)
	.loc 2 290 23
	lw	a5,-84(s0)
	sw	a5,-24(s0)
	.loc 2 295 8
	lw	a5,-24(s0)
	beq	a5,zero,.L48
	.loc 2 295 20 discriminator 1
	lw	a5,-88(s0)
	bne	a5,zero,.L49
.L48:
	.loc 2 296 16
	li	a5,-8192
	addi	a5,a5,-2048
	j	.L78
.L49:
	.loc 2 299 5
	addi	a5,s0,-48
	li	a2,12
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 300 5
	addi	a5,s0,-60
	li	a2,12
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 301 5
	addi	a5,s0,-72
	li	a2,12
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 306 11
	j	.L51
.L53:
	.loc 2 307 13
	lw	a5,-24(s0)
	lw	a5,240(a5)
	sw	a5,-24(s0)
.L51:
	.loc 2 306 15
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 2 306 30
	beq	a5,zero,.L52
	.loc 2 306 36 discriminator 1
	lw	a5,-24(s0)
	lw	a5,240(a5)
	.loc 2 306 30 discriminator 1
	bne	a5,zero,.L53
.L52:
	.loc 2 310 12
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 2 310 8
	beq	a5,zero,.L54
	.loc 2 310 33 discriminator 1
	lw	a5,-24(s0)
	lw	a5,240(a5)
	.loc 2 310 27 discriminator 1
	bne	a5,zero,.L54
	.loc 2 311 21
	li	a1,244
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 2 311 19 discriminator 1
	lw	a5,-24(s0)
	sw	a4,240(a5)
	.loc 2 313 16
	lw	a5,-24(s0)
	lw	a5,240(a5)
	.loc 2 313 12
	bne	a5,zero,.L55
	.loc 2 314 13
	lw	a0,-24(s0)
	call	mbedtls_x509_crl_free
	.loc 2 315 20
	li	a5,-12288
	addi	a5,a5,1920
	j	.L78
.L55:
	.loc 2 318 34
	lw	a5,-24(s0)
	lw	a5,240(a5)
	.loc 2 318 9
	mv	a0,a5
	call	mbedtls_x509_crl_init
	.loc 2 319 13
	lw	a5,-24(s0)
	lw	a5,240(a5)
	sw	a5,-24(s0)
.L54:
	.loc 2 325 8
	lw	a5,-92(s0)
	bne	a5,zero,.L56
	.loc 2 326 16
	li	a5,-8192
	addi	a5,a5,-384
	j	.L78
.L56:
	.loc 2 329 9
	lw	a1,-92(s0)
	li	a0,1
	call	calloc
	mv	a5,a0
	.loc 2 329 7 discriminator 1
	sw	a5,-36(s0)
	.loc 2 330 11
	lw	a5,-36(s0)
	.loc 2 330 8
	bne	a5,zero,.L57
	.loc 2 331 16
	li	a5,-12288
	addi	a5,a5,1920
	j	.L78
.L57:
	.loc 2 334 5
	lw	a5,-36(s0)
	lw	a2,-92(s0)
	lw	a1,-88(s0)
	mv	a0,a5
	call	memcpy
	.loc 2 336 16
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	sw	a4,8(a5)
	.loc 2 337 18
	lw	a5,-24(s0)
	lw	a4,-92(s0)
	sw	a4,4(a5)
	.loc 2 339 13
	lw	a4,-36(s0)
	.loc 2 339 9
	lw	a5,-92(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 347 16
	addi	a4,s0,-32
	addi	a5,s0,-36
	li	a3,48
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 347 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L58
	.loc 2 349 9
	lw	a0,-24(s0)
	call	mbedtls_x509_crl_free
	.loc 2 350 16
	li	a5,-8192
	addi	a5,a5,-384
	j	.L78
.L58:
	.loc 2 353 30
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sub	a5,a4,a5
	.loc 2 353 16
	mv	a4,a5
	.loc 2 353 13
	lw	a5,-32(s0)
	.loc 2 353 8
	beq	a4,a5,.L59
	.loc 2 354 9
	lw	a0,-24(s0)
	call	mbedtls_x509_crl_free
	.loc 2 355 16
	li	a3,355
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-384
	call	mbedtls_error_add
	mv	a5,a0
	j	.L78
.L59:
	.loc 2 362 16
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	sw	a4,20(a5)
	.loc 2 364 16
	addi	a4,s0,-32
	addi	a5,s0,-36
	li	a3,48
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 364 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L60
	.loc 2 366 9
	lw	a0,-24(s0)
	call	mbedtls_x509_crl_free
	.loc 2 367 16
	li	a3,367
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-384
	call	mbedtls_error_add
	mv	a5,a0
	j	.L78
.L60:
	.loc 2 370 13
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	.loc 2 370 9
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 371 44
	lw	a5,-24(s0)
	lw	a5,20(a5)
	.loc 2 371 34
	lw	a4,-28(s0)
	sub	a5,a4,a5
	.loc 2 371 20
	mv	a4,a5
	.loc 2 371 18
	lw	a5,-24(s0)
	sw	a4,16(a5)
	.loc 2 379 16
	lw	a5,-24(s0)
	addi	a4,a5,24
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	x509_crl_get_version
	sw	a0,-20(s0)
	.loc 2 379 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L61
	.loc 2 380 16
	lw	a5,-24(s0)
	addi	a4,a5,28
	addi	a3,s0,-48
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_x509_get_alg
	sw	a0,-20(s0)
	.loc 2 379 67 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L62
.L61:
	.loc 2 381 9
	lw	a0,-24(s0)
	call	mbedtls_x509_crl_free
	.loc 2 382 16
	lw	a5,-20(s0)
	j	.L78
.L62:
	.loc 2 385 12
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 2 385 8
	blt	a5,zero,.L63
	.loc 2 385 32 discriminator 1
	lw	a5,-24(s0)
	lw	a4,24(a5)
	.loc 2 385 26 discriminator 1
	li	a5,1
	ble	a4,a5,.L64
.L63:
	.loc 2 386 9
	lw	a0,-24(s0)
	call	mbedtls_x509_crl_free
	.loc 2 387 16
	li	a5,-8192
	addi	a5,a5,-1408
	j	.L78
.L64:
	.loc 2 390 8
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 2 390 17
	addi	a4,a5,1
	lw	a5,-24(s0)
	sw	a4,24(a5)
	.loc 2 392 41
	lw	a5,-24(s0)
	addi	a0,a5,28
	.loc 2 392 16
	lw	a5,-24(s0)
	addi	a2,a5,232
	lw	a5,-24(s0)
	addi	a3,a5,233
	lw	a5,-24(s0)
	addi	a4,a5,236
	addi	a5,s0,-48
	mv	a1,a5
	call	mbedtls_x509_get_sig_alg
	sw	a0,-20(s0)
	.loc 2 392 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L65
	.loc 2 395 9
	lw	a0,-24(s0)
	call	mbedtls_x509_crl_free
	.loc 2 396 16
	li	a5,-8192
	addi	a5,a5,-1536
	j	.L78
.L65:
	.loc 2 402 23
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	sw	a4,48(a5)
	.loc 2 404 16
	addi	a4,s0,-32
	addi	a5,s0,-36
	li	a3,48
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 404 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L66
	.loc 2 406 9
	lw	a0,-24(s0)
	call	mbedtls_x509_crl_free
	.loc 2 407 16
	li	a3,407
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-384
	call	mbedtls_error_add
	mv	a5,a0
	j	.L78
.L66:
	.loc 2 410 16
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	.loc 2 410 44
	add	a4,a4,a5
	.loc 2 410 16
	lw	a5,-24(s0)
	addi	a3,a5,52
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_x509_get_name
	sw	a0,-20(s0)
	.loc 2 410 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L67
	.loc 2 411 9
	lw	a0,-24(s0)
	call	mbedtls_x509_crl_free
	.loc 2 412 16
	lw	a5,-20(s0)
	j	.L78
.L67:
	.loc 2 415 39
	lw	a4,-36(s0)
	.loc 2 415 56
	lw	a5,-24(s0)
	lw	a5,48(a5)
	.loc 2 415 39
	sub	a5,a4,a5
	.loc 2 415 27
	mv	a4,a5
	.loc 2 415 25
	lw	a5,-24(s0)
	sw	a4,44(a5)
	.loc 2 421 16
	lw	a5,-24(s0)
	addi	a4,a5,84
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_x509_get_time
	sw	a0,-20(s0)
	.loc 2 421 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L68
	.loc 2 422 9
	lw	a0,-24(s0)
	call	mbedtls_x509_crl_free
	.loc 2 423 16
	lw	a5,-20(s0)
	j	.L78
.L68:
	.loc 2 426 16
	lw	a5,-24(s0)
	addi	a4,a5,108
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_x509_get_time
	sw	a0,-20(s0)
	.loc 2 426 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L69
	.loc 2 427 21
	li	a3,427
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-98
	li	a5,-8192
	addi	a0,a5,-1024
	call	mbedtls_error_add
	mv	a4,a0
	.loc 2 427 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,a4,.L69
	.loc 2 429 21
	li	a3,429
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-96
	li	a5,-8192
	addi	a0,a5,-1024
	call	mbedtls_error_add
	mv	a4,a0
	.loc 2 428 73
	lw	a5,-20(s0)
	beq	a5,a4,.L69
	.loc 2 431 13
	lw	a0,-24(s0)
	call	mbedtls_x509_crl_free
	.loc 2 432 20
	lw	a5,-20(s0)
	j	.L78
.L69:
	.loc 2 444 16
	lw	a5,-24(s0)
	addi	a4,a5,132
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	x509_get_entries
	sw	a0,-20(s0)
	.loc 2 444 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L70
	.loc 2 445 9
	lw	a0,-24(s0)
	call	mbedtls_x509_crl_free
	.loc 2 446 16
	lw	a5,-20(s0)
	j	.L78
.L70:
	.loc 2 453 12
	lw	a5,-24(s0)
	lw	a4,24(a5)
	.loc 2 453 8
	li	a5,2
	bne	a4,a5,.L71
	.loc 2 454 15
	lw	a5,-24(s0)
	addi	a4,a5,196
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	x509_get_crl_ext
	sw	a0,-20(s0)
	.loc 2 456 12
	lw	a5,-20(s0)
	beq	a5,zero,.L71
	.loc 2 457 13
	lw	a0,-24(s0)
	call	mbedtls_x509_crl_free
	.loc 2 458 20
	lw	a5,-20(s0)
	j	.L78
.L71:
	.loc 2 462 11
	lw	a5,-36(s0)
	.loc 2 462 8
	lw	a4,-28(s0)
	beq	a4,a5,.L72
	.loc 2 463 9
	lw	a0,-24(s0)
	call	mbedtls_x509_crl_free
	.loc 2 464 16
	li	a3,464
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-384
	call	mbedtls_error_add
	mv	a5,a0
	j	.L78
.L72:
	.loc 2 468 19
	lw	a5,-24(s0)
	lw	a4,8(a5)
	.loc 2 468 32
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 2 468 9
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 474 16
	addi	a3,s0,-60
	addi	a4,s0,-72
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_x509_get_alg
	sw	a0,-20(s0)
	.loc 2 474 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L73
	.loc 2 475 9
	lw	a0,-24(s0)
	call	mbedtls_x509_crl_free
	.loc 2 476 16
	lw	a5,-20(s0)
	j	.L78
.L73:
	.loc 2 479 21
	lw	a5,-24(s0)
	lw	a4,32(a5)
	.loc 2 479 37
	lw	a5,-68(s0)
	.loc 2 479 8
	bne	a4,a5,.L74
	.loc 2 480 28
	lw	a5,-24(s0)
	lw	a4,36(a5)
	.loc 2 480 40
	lw	a3,-64(s0)
	.loc 2 480 9
	lw	a5,-24(s0)
	lw	a5,32(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 2 479 42 discriminator 1
	bne	a5,zero,.L74
	.loc 2 481 20
	lw	a4,-44(s0)
	.loc 2 481 39
	lw	a5,-56(s0)
	.loc 2 480 67
	bne	a4,a5,.L74
	.loc 2 482 21
	lw	a5,-44(s0)
	.loc 2 481 44
	beq	a5,zero,.L75
	.loc 2 483 28
	lw	a5,-40(s0)
	.loc 2 483 43
	lw	a4,-52(s0)
	.loc 2 483 10
	lw	a3,-44(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 2 482 31
	beq	a5,zero,.L75
.L74:
	.loc 2 484 9
	lw	a0,-24(s0)
	call	mbedtls_x509_crl_free
	.loc 2 485 16
	li	a5,-8192
	addi	a5,a5,-1664
	j	.L78
.L75:
	.loc 2 488 16
	lw	a5,-24(s0)
	addi	a4,a5,220
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_x509_get_sig
	sw	a0,-20(s0)
	.loc 2 488 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L76
	.loc 2 489 9
	lw	a0,-24(s0)
	call	mbedtls_x509_crl_free
	.loc 2 490 16
	lw	a5,-20(s0)
	j	.L78
.L76:
	.loc 2 493 11
	lw	a5,-36(s0)
	.loc 2 493 8
	lw	a4,-28(s0)
	beq	a4,a5,.L77
	.loc 2 494 9
	lw	a0,-24(s0)
	call	mbedtls_x509_crl_free
	.loc 2 495 16
	li	a3,495
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-384
	call	mbedtls_error_add
	mv	a5,a0
	j	.L78
.L77:
	.loc 2 499 12
	li	a5,0
.L78:
	.loc 2 500 1
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
.LFE84:
	.size	mbedtls_x509_crl_parse_der, .-mbedtls_x509_crl_parse_der
	.section	.text.mbedtls_x509_crl_parse,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crl_parse
	.type	mbedtls_x509_crl_parse, @function
mbedtls_x509_crl_parse:
.LFB85:
	.loc 2 506 1
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
	.loc 2 560 12
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_x509_crl_parse_der
	mv	a5,a0
	.loc 2 561 1
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
	.size	mbedtls_x509_crl_parse, .-mbedtls_x509_crl_parse
	.section	.rodata
	.align	2
.LC1:
	.string	"%sCRL version   : %d"
	.align	2
.LC2:
	.string	"\n%sissuer name   : "
	.align	2
.LC3:
	.string	"\n%sthis update   : %04d-%02d-%02d %02d:%02d:%02d"
	.align	2
.LC4:
	.string	"\n%snext update   : %04d-%02d-%02d %02d:%02d:%02d"
	.align	2
.LC5:
	.string	"\n%sRevoked certificates:"
	.align	2
.LC6:
	.string	"\n%sserial number: "
	.align	2
.LC7:
	.string	" revocation date: %04d-%02d-%02d %02d:%02d:%02d"
	.align	2
.LC8:
	.string	"\n%ssigned using  : "
	.align	2
.LC9:
	.string	"\n"
	.section	.text.mbedtls_x509_crl_info,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crl_info
	.type	mbedtls_x509_crl_info, @function
mbedtls_x509_crl_info:
.LFB86:
	.loc 2 596 1
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
	.loc 2 597 9
	li	a5,-110
	sw	a5,-32(s0)
	.loc 2 602 7
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 2 603 7
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 2 606 39
	lw	a5,-48(s0)
	lw	a5,24(a5)
	.loc 2 605 11
	mv	a4,a5
	lw	a3,-44(s0)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 607 13
	lw	a5,-32(s0)
	blt	a5,zero,.L82
	.loc 2 607 25 discriminator 2
	lw	a5,-32(s0)
	.loc 2 607 22 discriminator 2
	lw	a4,-20(s0)
	bgtu	a4,a5,.L83
.L82:
	.loc 2 607 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 607 51 is_stmt 0
	j	.L84
.L83:
	.loc 2 607 65 is_stmt 1 discriminator 4
	lw	a5,-32(s0)
	.loc 2 607 62 discriminator 4
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 607 84 discriminator 4
	lw	a5,-32(s0)
	.loc 2 607 81 discriminator 4
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 609 11
	lw	a3,-44(s0)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 610 13
	lw	a5,-32(s0)
	blt	a5,zero,.L85
	.loc 2 610 25 discriminator 2
	lw	a5,-32(s0)
	.loc 2 610 22 discriminator 2
	lw	a4,-20(s0)
	bgtu	a4,a5,.L86
.L85:
	.loc 2 610 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 610 51 is_stmt 0
	j	.L84
.L86:
	.loc 2 610 65 is_stmt 1 discriminator 4
	lw	a5,-32(s0)
	.loc 2 610 62 discriminator 4
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 610 84 discriminator 4
	lw	a5,-32(s0)
	.loc 2 610 81 discriminator 4
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 611 11
	lw	a5,-48(s0)
	addi	a5,a5,52
	mv	a2,a5
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	mbedtls_x509_dn_gets
	sw	a0,-32(s0)
	.loc 2 612 13
	lw	a5,-32(s0)
	blt	a5,zero,.L87
	.loc 2 612 25 discriminator 2
	lw	a5,-32(s0)
	.loc 2 612 22 discriminator 2
	lw	a4,-20(s0)
	bgtu	a4,a5,.L88
.L87:
	.loc 2 612 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 612 51 is_stmt 0
	j	.L84
.L88:
	.loc 2 612 65 is_stmt 1 discriminator 4
	lw	a5,-32(s0)
	.loc 2 612 62 discriminator 4
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 612 84 discriminator 4
	lw	a5,-32(s0)
	.loc 2 612 81 discriminator 4
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 616 44
	lw	a5,-48(s0)
	lw	a3,84(a5)
	.loc 2 616 67
	lw	a5,-48(s0)
	lw	a2,88(a5)
	.loc 2 617 44
	lw	a5,-48(s0)
	lw	a1,92(a5)
	.loc 2 617 66
	lw	a5,-48(s0)
	lw	a0,96(a5)
	.loc 2 618 44
	lw	a5,-48(s0)
	lw	a5,100(a5)
	.loc 2 618 66
	lw	a4,-48(s0)
	lw	a4,104(a4)
	.loc 2 614 11
	sw	a4,4(sp)
	sw	a5,0(sp)
	mv	a7,a0
	mv	a6,a1
	mv	a5,a2
	mv	a4,a3
	lw	a3,-44(s0)
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 619 13
	lw	a5,-32(s0)
	blt	a5,zero,.L89
	.loc 2 619 25 discriminator 2
	lw	a5,-32(s0)
	.loc 2 619 22 discriminator 2
	lw	a4,-20(s0)
	bgtu	a4,a5,.L90
.L89:
	.loc 2 619 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 619 51 is_stmt 0
	j	.L84
.L90:
	.loc 2 619 65 is_stmt 1 discriminator 4
	lw	a5,-32(s0)
	.loc 2 619 62 discriminator 4
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 619 84 discriminator 4
	lw	a5,-32(s0)
	.loc 2 619 81 discriminator 4
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 623 44
	lw	a5,-48(s0)
	lw	a3,108(a5)
	.loc 2 623 67
	lw	a5,-48(s0)
	lw	a2,112(a5)
	.loc 2 624 44
	lw	a5,-48(s0)
	lw	a1,116(a5)
	.loc 2 624 66
	lw	a5,-48(s0)
	lw	a0,120(a5)
	.loc 2 625 44
	lw	a5,-48(s0)
	lw	a5,124(a5)
	.loc 2 625 66
	lw	a4,-48(s0)
	lw	a4,128(a4)
	.loc 2 621 11
	sw	a4,4(sp)
	sw	a5,0(sp)
	mv	a7,a0
	mv	a6,a1
	mv	a5,a2
	mv	a4,a3
	lw	a3,-44(s0)
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 626 13
	lw	a5,-32(s0)
	blt	a5,zero,.L91
	.loc 2 626 25 discriminator 2
	lw	a5,-32(s0)
	.loc 2 626 22 discriminator 2
	lw	a4,-20(s0)
	bgtu	a4,a5,.L92
.L91:
	.loc 2 626 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 626 51 is_stmt 0
	j	.L84
.L92:
	.loc 2 626 65 is_stmt 1 discriminator 4
	lw	a5,-32(s0)
	.loc 2 626 62 discriminator 4
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 626 84 discriminator 4
	lw	a5,-32(s0)
	.loc 2 626 81 discriminator 4
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 628 11
	lw	a5,-48(s0)
	addi	a5,a5,132
	sw	a5,-28(s0)
	.loc 2 630 11
	lw	a3,-44(s0)
	lui	a5,%hi(.LC5)
	addi	a2,a5,%lo(.LC5)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 632 13
	lw	a5,-32(s0)
	blt	a5,zero,.L93
	.loc 2 632 25 discriminator 2
	lw	a5,-32(s0)
	.loc 2 632 22 discriminator 2
	lw	a4,-20(s0)
	bgtu	a4,a5,.L94
.L93:
	.loc 2 632 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 632 51 is_stmt 0
	j	.L84
.L94:
	.loc 2 632 65 is_stmt 1 discriminator 4
	lw	a5,-32(s0)
	.loc 2 632 62 discriminator 4
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 632 84 discriminator 4
	lw	a5,-32(s0)
	.loc 2 632 81 discriminator 4
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 634 11
	j	.L95
.L103:
	.loc 2 635 15
	lw	a3,-44(s0)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 637 17
	lw	a5,-32(s0)
	blt	a5,zero,.L96
	.loc 2 637 29 discriminator 2
	lw	a5,-32(s0)
	.loc 2 637 26 discriminator 2
	lw	a4,-20(s0)
	bgtu	a4,a5,.L97
.L96:
	.loc 2 637 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 637 55 is_stmt 0
	j	.L84
.L97:
	.loc 2 637 69 is_stmt 1 discriminator 4
	lw	a5,-32(s0)
	.loc 2 637 66 discriminator 4
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 637 88 discriminator 4
	lw	a5,-32(s0)
	.loc 2 637 85 discriminator 4
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 639 15
	lw	a5,-28(s0)
	addi	a5,a5,12
	mv	a2,a5
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	mbedtls_x509_serial_gets
	sw	a0,-32(s0)
	.loc 2 640 17
	lw	a5,-32(s0)
	blt	a5,zero,.L98
	.loc 2 640 29 discriminator 2
	lw	a5,-32(s0)
	.loc 2 640 26 discriminator 2
	lw	a4,-20(s0)
	bgtu	a4,a5,.L99
.L98:
	.loc 2 640 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 640 55 is_stmt 0
	j	.L84
.L99:
	.loc 2 640 69 is_stmt 1 discriminator 4
	lw	a5,-32(s0)
	.loc 2 640 66 discriminator 4
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 640 88 discriminator 4
	lw	a5,-32(s0)
	.loc 2 640 85 discriminator 4
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 644 54
	lw	a5,-28(s0)
	lw	a3,24(a5)
	.loc 2 644 83
	lw	a5,-28(s0)
	lw	a4,28(a5)
	.loc 2 645 54
	lw	a5,-28(s0)
	lw	a2,32(a5)
	.loc 2 645 82
	lw	a5,-28(s0)
	lw	a1,36(a5)
	.loc 2 646 54
	lw	a5,-28(s0)
	lw	a0,40(a5)
	.loc 2 646 82
	lw	a5,-28(s0)
	lw	a5,44(a5)
	.loc 2 642 15
	sw	a5,0(sp)
	mv	a7,a0
	mv	a6,a1
	mv	a5,a2
	lui	a2,%hi(.LC7)
	addi	a2,a2,%lo(.LC7)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 647 17
	lw	a5,-32(s0)
	blt	a5,zero,.L100
	.loc 2 647 29 discriminator 2
	lw	a5,-32(s0)
	.loc 2 647 26 discriminator 2
	lw	a4,-20(s0)
	bgtu	a4,a5,.L101
.L100:
	.loc 2 647 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 647 55 is_stmt 0
	j	.L84
.L101:
	.loc 2 647 69 is_stmt 1 discriminator 4
	lw	a5,-32(s0)
	.loc 2 647 66 discriminator 4
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 647 88 discriminator 4
	lw	a5,-32(s0)
	.loc 2 647 85 discriminator 4
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 649 15
	lw	a5,-28(s0)
	lw	a5,60(a5)
	sw	a5,-28(s0)
.L95:
	.loc 2 634 25
	lw	a5,-28(s0)
	beq	a5,zero,.L102
	.loc 2 634 38 discriminator 1
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 2 634 25 discriminator 1
	bne	a5,zero,.L103
.L102:
	.loc 2 652 11
	lw	a3,-44(s0)
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 653 13
	lw	a5,-32(s0)
	blt	a5,zero,.L104
	.loc 2 653 25 discriminator 2
	lw	a5,-32(s0)
	.loc 2 653 22 discriminator 2
	lw	a4,-20(s0)
	bgtu	a4,a5,.L105
.L104:
	.loc 2 653 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 653 51 is_stmt 0
	j	.L84
.L105:
	.loc 2 653 65 is_stmt 1 discriminator 4
	lw	a5,-32(s0)
	.loc 2 653 62 discriminator 4
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 653 84 discriminator 4
	lw	a5,-32(s0)
	.loc 2 653 81 discriminator 4
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 655 11
	lw	a5,-48(s0)
	addi	a2,a5,28
	.loc 2 655 61
	lw	a5,-48(s0)
	lbu	a3,233(a5)
	.loc 2 655 74
	lw	a5,-48(s0)
	lbu	a4,232(a5)
	.loc 2 656 40
	lw	a5,-48(s0)
	lw	a5,236(a5)
	.loc 2 655 11
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	mbedtls_x509_sig_alg_gets
	sw	a0,-32(s0)
	.loc 2 657 13
	lw	a5,-32(s0)
	blt	a5,zero,.L106
	.loc 2 657 25 discriminator 2
	lw	a5,-32(s0)
	.loc 2 657 22 discriminator 2
	lw	a4,-20(s0)
	bgtu	a4,a5,.L107
.L106:
	.loc 2 657 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 657 51 is_stmt 0
	j	.L84
.L107:
	.loc 2 657 65 is_stmt 1 discriminator 4
	lw	a5,-32(s0)
	.loc 2 657 62 discriminator 4
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 657 84 discriminator 4
	lw	a5,-32(s0)
	.loc 2 657 81 discriminator 4
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 659 11
	lui	a5,%hi(.LC9)
	addi	a2,a5,%lo(.LC9)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 2 660 13
	lw	a5,-32(s0)
	blt	a5,zero,.L108
	.loc 2 660 25 discriminator 2
	lw	a5,-32(s0)
	.loc 2 660 22 discriminator 2
	lw	a4,-20(s0)
	bgtu	a4,a5,.L109
.L108:
	.loc 2 660 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 2 660 51 is_stmt 0
	j	.L84
.L109:
	.loc 2 660 65 is_stmt 1 discriminator 4
	lw	a5,-32(s0)
	.loc 2 660 62 discriminator 4
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 660 84 discriminator 4
	lw	a5,-32(s0)
	.loc 2 660 81 discriminator 4
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 662 24
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
.L84:
	.loc 2 663 1
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
	.size	mbedtls_x509_crl_info, .-mbedtls_x509_crl_info
	.section	.text.mbedtls_x509_crl_init,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crl_init
	.type	mbedtls_x509_crl_init, @function
mbedtls_x509_crl_init:
.LFB87:
	.loc 2 670 1
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
	.loc 2 671 5
	li	a2,244
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 2 672 1
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
.LFE87:
	.size	mbedtls_x509_crl_init, .-mbedtls_x509_crl_init
	.section	.text.mbedtls_x509_crl_free,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crl_free
	.type	mbedtls_x509_crl_free, @function
mbedtls_x509_crl_free:
.LFB88:
	.loc 2 678 1
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
	.loc 2 679 23
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 684 11
	j	.L112
.L117:
	.loc 2 689 66
	lw	a5,-20(s0)
	lw	a5,76(a5)
	.loc 2 689 9
	mv	a0,a5
	call	mbedtls_asn1_free_named_data_list_shallow
	.loc 2 691 19
	lw	a5,-20(s0)
	lw	a5,192(a5)
	sw	a5,-24(s0)
	.loc 2 692 15
	j	.L113
.L114:
	.loc 2 693 23
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	.loc 2 694 23
	lw	a5,-24(s0)
	lw	a5,60(a5)
	sw	a5,-24(s0)
	.loc 2 695 13
	li	a1,64
	lw	a0,-32(s0)
	call	mbedtls_zeroize_and_free
.L113:
	.loc 2 692 26
	lw	a5,-24(s0)
	bne	a5,zero,.L114
	.loc 2 699 25
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 699 12
	beq	a5,zero,.L115
	.loc 2 700 50
	lw	a5,-20(s0)
	lw	a4,8(a5)
	.loc 2 700 13
	lw	a5,-20(s0)
	lw	a5,4(a5)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_zeroize_and_free
.L115:
	.loc 2 703 17
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	.loc 2 704 17
	lw	a5,-20(s0)
	lw	a5,240(a5)
	sw	a5,-20(s0)
	.loc 2 706 9
	li	a1,244
	lw	a0,-28(s0)
	call	mbedtls_platform_zeroize
	.loc 2 707 12
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	beq	a4,a5,.L112
	.loc 2 708 13
	lw	a0,-28(s0)
	call	free
.L112:
	.loc 2 684 20
	lw	a5,-20(s0)
	bne	a5,zero,.L117
	.loc 2 711 1
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
.LFE88:
	.size	mbedtls_x509_crl_free, .-mbedtls_x509_crl_free
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/pk.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509_crl.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/common.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509_internal.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb19
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1b
	.4byte	.LASF112
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
	.uleb128 0xc
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
	.uleb128 0x1c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x1d
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
	.uleb128 0xc
	.4byte	0x9f
	.uleb128 0x2
	.4byte	0xa6
	.uleb128 0x13
	.4byte	0xab
	.uleb128 0x2
	.4byte	0xbf
	.uleb128 0x13
	.4byte	0xb5
	.uleb128 0x1e
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0xc
	.byte	0x3
	.byte	0x8d
	.4byte	0xf2
	.uleb128 0x5
	.string	"tag"
	.byte	0x3
	.byte	0x8e
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x5
	.string	"len"
	.byte	0x3
	.byte	0x8f
	.byte	0xc
	.4byte	0x76
	.byte	0x4
	.uleb128 0x5
	.string	"p"
	.byte	0x3
	.byte	0x90
	.byte	0x14
	.4byte	0x90
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x3
	.byte	0x92
	.byte	0x1
	.4byte	0xc0
	.uleb128 0x11
	.4byte	.LASF15
	.byte	0x20
	.byte	0x3
	.byte	0xb2
	.4byte	0x13f
	.uleb128 0x5
	.string	"oid"
	.byte	0x3
	.byte	0xb3
	.byte	0x16
	.4byte	0xf2
	.byte	0
	.uleb128 0x5
	.string	"val"
	.byte	0x3
	.byte	0xb4
	.byte	0x16
	.4byte	0xf2
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0xbd
	.byte	0x25
	.4byte	0x13f
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0xc4
	.byte	0x13
	.4byte	0x32
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.4byte	0xfe
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x3
	.byte	0xc6
	.byte	0x1
	.4byte	0xfe
	.uleb128 0x18
	.4byte	0x32
	.byte	0x5
	.byte	0x2f
	.4byte	0x1a4
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x11
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x12
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3c
	.byte	0x3
	.4byte	0x150
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x18
	.4byte	0x32
	.byte	0x6
	.byte	0x49
	.4byte	0x1f1
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x6
	.byte	0x52
	.byte	0x3
	.4byte	0x1b5
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x7
	.byte	0xd8
	.byte	0x1a
	.4byte	0xf2
	.uleb128 0xc
	.4byte	0x1fd
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x7
	.byte	0xe3
	.byte	0x21
	.4byte	0x144
	.uleb128 0xc
	.4byte	0x20e
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x18
	.byte	0x7
	.byte	0xf6
	.4byte	0x27a
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x7
	.byte	0xf7
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x5
	.string	"mon"
	.byte	0x7
	.byte	0xf7
	.byte	0xf
	.4byte	0x68
	.byte	0x4
	.uleb128 0x5
	.string	"day"
	.byte	0x7
	.byte	0xf7
	.byte	0x14
	.4byte	0x68
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x7
	.byte	0xf8
	.byte	0x9
	.4byte	0x68
	.byte	0xc
	.uleb128 0x5
	.string	"min"
	.byte	0x7
	.byte	0xf8
	.byte	0xf
	.4byte	0x68
	.byte	0x10
	.uleb128 0x5
	.string	"sec"
	.byte	0x7
	.byte	0xf8
	.byte	0x14
	.4byte	0x68
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x7
	.byte	0xfa
	.byte	0x1
	.4byte	0x21f
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x40
	.byte	0x8
	.byte	0x27
	.4byte	0x2d4
	.uleb128 0x5
	.string	"raw"
	.byte	0x8
	.byte	0x29
	.byte	0x16
	.4byte	0x1fd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x8
	.byte	0x2b
	.byte	0x16
	.4byte	0x1fd
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x8
	.byte	0x2d
	.byte	0x17
	.4byte	0x27a
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x8
	.byte	0x33
	.byte	0x16
	.4byte	0x1fd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.4byte	0x2d4
	.byte	0x3c
	.byte	0
	.uleb128 0x2
	.4byte	0x286
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x8
	.byte	0x3a
	.byte	0x1
	.4byte	0x286
	.uleb128 0xc
	.4byte	0x2d9
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0xf4
	.byte	0x8
	.byte	0x40
	.4byte	0x3c7
	.uleb128 0x5
	.string	"raw"
	.byte	0x8
	.byte	0x41
	.byte	0x16
	.4byte	0x1fd
	.byte	0
	.uleb128 0x5
	.string	"tbs"
	.byte	0x8
	.byte	0x42
	.byte	0x16
	.4byte	0x1fd
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x8
	.byte	0x44
	.byte	0x9
	.4byte	0x68
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x8
	.byte	0x45
	.byte	0x16
	.4byte	0x1fd
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x8
	.byte	0x47
	.byte	0x16
	.4byte	0x1fd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x8
	.byte	0x49
	.byte	0x17
	.4byte	0x20e
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x8
	.byte	0x4b
	.byte	0x17
	.4byte	0x27a
	.byte	0x54
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x8
	.byte	0x4c
	.byte	0x17
	.4byte	0x27a
	.byte	0x6c
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x8
	.byte	0x4e
	.byte	0x1c
	.4byte	0x2d9
	.byte	0x84
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x8
	.byte	0x50
	.byte	0x16
	.4byte	0x1fd
	.byte	0xc4
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x8
	.byte	0x52
	.byte	0x16
	.4byte	0x1fd
	.byte	0xd0
	.uleb128 0x5
	.string	"sig"
	.byte	0x8
	.byte	0x53
	.byte	0x16
	.4byte	0x1fd
	.byte	0xdc
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x8
	.byte	0x54
	.byte	0x17
	.4byte	0x1a4
	.byte	0xe8
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x8
	.byte	0x55
	.byte	0x17
	.4byte	0x1f1
	.byte	0xe9
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x8
	.byte	0x56
	.byte	0xb
	.4byte	0x89
	.byte	0xec
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x8
	.byte	0x5b
	.byte	0x1e
	.4byte	0x3c7
	.byte	0xf0
	.byte	0
	.uleb128 0x2
	.4byte	0x2ea
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x8
	.byte	0x5d
	.byte	0x1
	.4byte	0x2ea
	.uleb128 0xc
	.4byte	0x3cc
	.uleb128 0x16
	.4byte	.LASF62
	.byte	0x9
	.byte	0x5e
	.4byte	0x3ee
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x16
	.4byte	.LASF63
	.byte	0xa
	.byte	0x9f
	.4byte	0x404
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x16
	.4byte	.LASF64
	.byte	0xb
	.byte	0x79
	.4byte	0x41a
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF65
	.byte	0x3
	.2byte	0x277
	.byte	0x6
	.4byte	0x42d
	.uleb128 0x1
	.4byte	0x42d
	.byte	0
	.uleb128 0x2
	.4byte	0x144
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0xc
	.byte	0x2e
	.byte	0x5
	.4byte	0x68
	.4byte	0x461
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x461
	.uleb128 0x1
	.4byte	0x1f1
	.uleb128 0x1
	.4byte	0x1a4
	.uleb128 0x1
	.4byte	0xb5
	.byte	0
	.uleb128 0x2
	.4byte	0x209
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x176
	.4byte	0x68
	.4byte	0x486
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x461
	.byte	0
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x143
	.4byte	0x68
	.4byte	0x4a6
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x4a6
	.byte	0
	.uleb128 0x2
	.4byte	0x21a
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0xd
	.2byte	0x110
	.4byte	0x68
	.4byte	0x4cc
	.uleb128 0x1
	.4byte	0x9a
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0xb0
	.uleb128 0x20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF70
	.byte	0xc
	.byte	0x23
	.byte	0x5
	.4byte	0x68
	.4byte	0x4ec
	.uleb128 0x1
	.4byte	0x4ec
	.uleb128 0x1
	.4byte	0x4f1
	.uleb128 0x1
	.4byte	0x4f6
	.byte	0
	.uleb128 0x2
	.4byte	0x90
	.uleb128 0x2
	.4byte	0x39
	.uleb128 0x2
	.4byte	0x1fd
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0xe
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x51b
	.uleb128 0x1
	.4byte	0xb5
	.uleb128 0x1
	.4byte	0xb5
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0xc
	.byte	0x18
	.byte	0x5
	.4byte	0x68
	.4byte	0x53b
	.uleb128 0x1
	.4byte	0x4ec
	.uleb128 0x1
	.4byte	0x4f1
	.uleb128 0x1
	.4byte	0x53b
	.byte	0
	.uleb128 0x2
	.4byte	0x20e
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0xc
	.byte	0x24
	.byte	0x5
	.4byte	0x68
	.4byte	0x56a
	.uleb128 0x1
	.4byte	0x461
	.uleb128 0x1
	.4byte	0x461
	.uleb128 0x1
	.4byte	0x56a
	.uleb128 0x1
	.4byte	0x56f
	.uleb128 0x1
	.4byte	0x574
	.byte	0
	.uleb128 0x2
	.4byte	0x1a4
	.uleb128 0x2
	.4byte	0x1f1
	.uleb128 0x2
	.4byte	0x89
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0xc
	.byte	0x1c
	.byte	0x5
	.4byte	0x68
	.4byte	0x59e
	.uleb128 0x1
	.4byte	0x4ec
	.uleb128 0x1
	.4byte	0x4f1
	.uleb128 0x1
	.4byte	0x4f6
	.uleb128 0x1
	.4byte	0x4f6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF75
	.byte	0xe
	.byte	0x1f
	.byte	0x8
	.4byte	0x89
	.4byte	0x5be
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0xba
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x6
	.4byte	.LASF76
	.byte	0xe
	.byte	0x21
	.byte	0x8
	.4byte	0x89
	.4byte	0x5de
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x6
	.4byte	.LASF77
	.byte	0x9
	.byte	0x5a
	.byte	0x7
	.4byte	0x89
	.4byte	0x5f9
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x6
	.4byte	.LASF78
	.byte	0xc
	.byte	0x27
	.byte	0x5
	.4byte	0x68
	.4byte	0x619
	.uleb128 0x1
	.4byte	0x4ec
	.uleb128 0x1
	.4byte	0x4f1
	.uleb128 0x1
	.4byte	0x619
	.byte	0
	.uleb128 0x2
	.4byte	0x27a
	.uleb128 0x6
	.4byte	.LASF79
	.byte	0xc
	.byte	0x29
	.byte	0x5
	.4byte	0x68
	.4byte	0x63e
	.uleb128 0x1
	.4byte	0x4ec
	.uleb128 0x1
	.4byte	0x4f1
	.uleb128 0x1
	.4byte	0x4f6
	.byte	0
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x3
	.2byte	0x10a
	.4byte	0x68
	.4byte	0x65e
	.uleb128 0x1
	.4byte	0x4ec
	.uleb128 0x1
	.4byte	0x4f1
	.uleb128 0x1
	.4byte	0x65e
	.byte	0
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x6
	.4byte	.LASF81
	.byte	0x3
	.byte	0xf5
	.byte	0x5
	.4byte	0x68
	.4byte	0x688
	.uleb128 0x1
	.4byte	0x4ec
	.uleb128 0x1
	.4byte	0x4f1
	.uleb128 0x1
	.4byte	0x1b0
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0xc
	.byte	0x2b
	.byte	0x5
	.4byte	0x68
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x4ec
	.uleb128 0x1
	.4byte	0x4f1
	.uleb128 0x1
	.4byte	0x4f6
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x3
	.2byte	0x11f
	.4byte	0x68
	.4byte	0x6cd
	.uleb128 0x1
	.4byte	0x4ec
	.uleb128 0x1
	.4byte	0x4f1
	.uleb128 0x1
	.4byte	0x65e
	.byte	0
	.uleb128 0x19
	.4byte	.LASF88
	.2byte	0x2a5
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72e
	.uleb128 0xd
	.string	"crl"
	.2byte	0x2a5
	.byte	0x2e
	.4byte	0x72e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF84
	.2byte	0x2a7
	.byte	0x17
	.4byte	0x72e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF85
	.2byte	0x2a8
	.byte	0x17
	.4byte	0x72e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.4byte	.LASF86
	.2byte	0x2a9
	.byte	0x1d
	.4byte	0x733
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF87
	.2byte	0x2aa
	.byte	0x1d
	.4byte	0x733
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2
	.4byte	0x3cc
	.uleb128 0x2
	.4byte	0x2d9
	.uleb128 0x19
	.4byte	.LASF89
	.2byte	0x29d
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x75d
	.uleb128 0xd
	.string	"crl"
	.2byte	0x29d
	.byte	0x2e
	.4byte	0x72e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF92
	.2byte	0x252
	.4byte	0x68
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7eb
	.uleb128 0xd
	.string	"buf"
	.2byte	0x252
	.byte	0x21
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF90
	.2byte	0x252
	.byte	0x2d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.4byte	.LASF91
	.2byte	0x252
	.byte	0x3f
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"crl"
	.2byte	0x253
	.byte	0x33
	.4byte	0x7eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"ret"
	.2byte	0x255
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"n"
	.2byte	0x256
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"p"
	.2byte	0x257
	.byte	0xb
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF56
	.2byte	0x258
	.byte	0x23
	.4byte	0x7f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2
	.4byte	0x3d8
	.uleb128 0x2
	.4byte	0x2e5
	.uleb128 0x17
	.4byte	.LASF93
	.2byte	0x1f9
	.4byte	0x68
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83c
	.uleb128 0xe
	.4byte	.LASF94
	.2byte	0x1f9
	.byte	0x2e
	.4byte	0x72e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"buf"
	.2byte	0x1f9
	.byte	0x4a
	.4byte	0x4f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.4byte	.LASF95
	.2byte	0x1f9
	.byte	0x56
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x17
	.4byte	.LASF96
	.2byte	0x11b
	.4byte	0x68
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8fd
	.uleb128 0xe
	.4byte	.LASF94
	.2byte	0x11b
	.byte	0x32
	.4byte	0x72e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xd
	.string	"buf"
	.2byte	0x11c
	.byte	0x35
	.4byte	0x4f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xe
	.4byte	.LASF95
	.2byte	0x11c
	.byte	0x41
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0xb
	.string	"ret"
	.2byte	0x11e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"len"
	.2byte	0x11f
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"p"
	.2byte	0x120
	.byte	0x14
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"end"
	.2byte	0x120
	.byte	0x1e
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.4byte	.LASF97
	.2byte	0x121
	.byte	0x16
	.4byte	0x1fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	.LASF98
	.2byte	0x121
	.byte	0x23
	.4byte	0x1fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.4byte	.LASF58
	.2byte	0x121
	.byte	0x30
	.4byte	0x1fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xb
	.string	"crl"
	.2byte	0x122
	.byte	0x17
	.4byte	0x72e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0xd7
	.4byte	0x68
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x991
	.uleb128 0x7
	.string	"p"
	.byte	0x2
	.byte	0xd7
	.byte	0x2d
	.4byte	0x4ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"end"
	.byte	0x2
	.byte	0xd8
	.byte	0x32
	.4byte	0x4f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x2
	.byte	0xd9
	.byte	0x35
	.4byte	0x733
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xf
	.string	"ret"
	.byte	0xdb
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0xdc
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0xdd
	.byte	0x1d
	.4byte	0x733
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0xef
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0xf0
	.byte	0x1e
	.4byte	0x4f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0xa0
	.4byte	0x68
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f1
	.uleb128 0x7
	.string	"p"
	.byte	0x2
	.byte	0xa0
	.byte	0x33
	.4byte	0x4ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"end"
	.byte	0x2
	.byte	0xa1
	.byte	0x38
	.4byte	0x4f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"ext"
	.byte	0x2
	.byte	0xa2
	.byte	0x35
	.4byte	0x4f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.string	"ret"
	.byte	0xa4
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"len"
	.byte	0xa5
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x4c
	.4byte	0x68
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa77
	.uleb128 0x7
	.string	"p"
	.byte	0x2
	.byte	0x4c
	.byte	0x2d
	.4byte	0x4ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"end"
	.byte	0x2
	.byte	0x4d
	.byte	0x32
	.4byte	0x4f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"ext"
	.byte	0x2
	.byte	0x4e
	.byte	0x2f
	.4byte	0x4f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.string	"ret"
	.byte	0x50
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x67
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0x68
	.byte	0x1e
	.4byte	0x4f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"len"
	.byte	0x69
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x33
	.4byte	0x68
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac9
	.uleb128 0x7
	.string	"p"
	.byte	0x2
	.byte	0x33
	.byte	0x31
	.4byte	0x4ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"end"
	.byte	0x2
	.byte	0x34
	.byte	0x36
	.4byte	0x4f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"ver"
	.byte	0x2
	.byte	0x35
	.byte	0x26
	.4byte	0x65e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.string	"ret"
	.byte	0x37
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF113
	.byte	0x1
	.byte	0x8e
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x1
	.byte	0x8e
	.byte	0x29
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"low"
	.byte	0x1
	.byte	0x8e
	.byte	0x33
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x1
	.byte	0x8f
	.byte	0x31
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.4byte	.LASF111
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.4byte	0x64
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"unsigned char"
.LASF39:
	.string	"mbedtls_pk_type_t"
.LASF13:
	.string	"size_t"
.LASF55:
	.string	"next_update"
.LASF47:
	.string	"revocation_date"
.LASF45:
	.string	"mbedtls_x509_crl_entry"
.LASF14:
	.string	"mbedtls_asn1_buf"
.LASF70:
	.string	"mbedtls_x509_get_sig"
.LASF56:
	.string	"entry"
.LASF103:
	.string	"x509_get_entries"
.LASF41:
	.string	"mbedtls_x509_name"
.LASF107:
	.string	"end_ext_data"
.LASF99:
	.string	"entry_len"
.LASF38:
	.string	"MBEDTLS_PK_OPAQUE"
.LASF51:
	.string	"sig_oid"
.LASF105:
	.string	"x509_get_crl_ext"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF68:
	.string	"mbedtls_x509_dn_gets"
.LASF9:
	.string	"long long unsigned int"
.LASF43:
	.string	"year"
.LASF6:
	.string	"long int"
.LASF22:
	.string	"MBEDTLS_MD_SHA224"
.LASF80:
	.string	"mbedtls_asn1_get_bool"
.LASF62:
	.string	"free"
.LASF40:
	.string	"mbedtls_x509_buf"
.LASF5:
	.string	"short unsigned int"
.LASF29:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF111:
	.string	"line"
.LASF96:
	.string	"mbedtls_x509_crl_parse_der"
.LASF10:
	.string	"unsigned int"
.LASF27:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF7:
	.string	"long unsigned int"
.LASF58:
	.string	"sig_oid2"
.LASF92:
	.string	"mbedtls_x509_crl_info"
.LASF20:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF30:
	.string	"mbedtls_md_type_t"
.LASF90:
	.string	"size"
.LASF79:
	.string	"mbedtls_x509_get_serial"
.LASF54:
	.string	"this_update"
.LASF33:
	.string	"MBEDTLS_PK_ECKEY"
.LASF60:
	.string	"sig_pk"
.LASF83:
	.string	"mbedtls_asn1_get_int"
.LASF35:
	.string	"MBEDTLS_PK_ECDSA"
.LASF91:
	.string	"prefix"
.LASF84:
	.string	"crl_cur"
.LASF25:
	.string	"MBEDTLS_MD_SHA512"
.LASF73:
	.string	"mbedtls_x509_get_sig_alg"
.LASF59:
	.string	"sig_md"
.LASF113:
	.string	"mbedtls_error_add"
.LASF57:
	.string	"crl_ext"
.LASF21:
	.string	"MBEDTLS_MD_SHA1"
.LASF28:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF106:
	.string	"is_critical"
.LASF44:
	.string	"hour"
.LASF18:
	.string	"MBEDTLS_MD_NONE"
.LASF100:
	.string	"cur_entry"
.LASF23:
	.string	"MBEDTLS_MD_SHA256"
.LASF82:
	.string	"mbedtls_x509_get_ext"
.LASF65:
	.string	"mbedtls_asn1_free_named_data_list_shallow"
.LASF67:
	.string	"mbedtls_x509_serial_gets"
.LASF61:
	.string	"sig_opts"
.LASF78:
	.string	"mbedtls_x509_get_time"
.LASF50:
	.string	"version"
.LASF4:
	.string	"short int"
.LASF110:
	.string	"file"
.LASF52:
	.string	"issuer_raw"
.LASF48:
	.string	"entry_ext"
.LASF95:
	.string	"buflen"
.LASF81:
	.string	"mbedtls_asn1_get_tag"
.LASF94:
	.string	"chain"
.LASF102:
	.string	"end2"
.LASF74:
	.string	"mbedtls_x509_get_alg"
.LASF34:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF108:
	.string	"x509_crl_get_version"
.LASF72:
	.string	"mbedtls_x509_get_name"
.LASF11:
	.string	"long double"
.LASF12:
	.string	"char"
.LASF49:
	.string	"mbedtls_x509_crl"
.LASF37:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF85:
	.string	"crl_prv"
.LASF89:
	.string	"mbedtls_x509_crl_init"
.LASF63:
	.string	"mbedtls_platform_zeroize"
.LASF97:
	.string	"sig_params1"
.LASF98:
	.string	"sig_params2"
.LASF109:
	.string	"high"
.LASF64:
	.string	"mbedtls_zeroize_and_free"
.LASF71:
	.string	"memcmp"
.LASF24:
	.string	"MBEDTLS_MD_SHA384"
.LASF19:
	.string	"MBEDTLS_MD_MD5"
.LASF75:
	.string	"memcpy"
.LASF112:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF69:
	.string	"snprintf"
.LASF88:
	.string	"mbedtls_x509_crl_free"
.LASF36:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF16:
	.string	"next"
.LASF86:
	.string	"entry_cur"
.LASF53:
	.string	"issuer"
.LASF93:
	.string	"mbedtls_x509_crl_parse"
.LASF76:
	.string	"memset"
.LASF15:
	.string	"mbedtls_asn1_named_data"
.LASF77:
	.string	"calloc"
.LASF31:
	.string	"MBEDTLS_PK_NONE"
.LASF101:
	.string	"len2"
.LASF46:
	.string	"serial"
.LASF17:
	.string	"next_merged"
.LASF87:
	.string	"entry_prv"
.LASF26:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF104:
	.string	"x509_get_crl_entry_ext"
.LASF32:
	.string	"MBEDTLS_PK_RSA"
.LASF66:
	.string	"mbedtls_x509_sig_alg_gets"
.LASF42:
	.string	"mbedtls_x509_time"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509_crl.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
