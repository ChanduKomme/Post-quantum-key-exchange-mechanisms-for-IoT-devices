	.file	"rsa_alt_helpers.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/rsa_alt_helpers.c"
	.section	.rodata
	.align	2
.LC0:
	.base64	"AgMFBwsNERMXHR8lKSsvNTs9Q0dJT1NZYWVna21xf4OJi5WXnaOnrbO1v8HFx9Pf4+Xp7/H7"
	.section	.text.mbedtls_rsa_deduce_primes,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_deduce_primes
	.type	mbedtls_rsa_deduce_primes, @function
mbedtls_rsa_deduce_primes:
.LFB12:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/rsa_alt_helpers.c"
	.loc 1 54 1
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	ra,140(sp)
	sw	s0,136(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sw	a0,-116(s0)
	sw	a1,-120(s0)
	sw	a2,-124(s0)
	sw	a3,-128(s0)
	sw	a4,-132(s0)
	.loc 1 55 9
	sw	zero,-20(s0)
	.loc 1 65 25
	lui	a5,%hi(.LC0)
	addi	a4,a5,%lo(.LC0)
	addi	a5,s0,-104
	mv	a3,a4
	li	a4,54
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcpy
	.loc 1 74 18
	li	a5,54
	sw	a5,-28(s0)
	.loc 1 76 8
	lw	a5,-128(s0)
	beq	a5,zero,.L2
	.loc 1 76 18 discriminator 1
	lw	a5,-132(s0)
	beq	a5,zero,.L2
	.loc 1 76 35 discriminator 2
	lw	a5,-128(s0)
	lw	a5,0(a5)
	.loc 1 76 31 discriminator 2
	bne	a5,zero,.L2
	.loc 1 76 51 discriminator 3
	lw	a5,-132(s0)
	lw	a5,0(a5)
	.loc 1 76 47 discriminator 3
	beq	a5,zero,.L3
.L2:
	.loc 1 77 16
	li	a5,-4
	j	.L32
.L3:
	.loc 1 80 9
	li	a1,0
	lw	a0,-116(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 80 8 discriminator 1
	ble	a5,zero,.L5
	.loc 1 81 9
	li	a1,1
	lw	a0,-124(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 80 40 discriminator 2
	ble	a5,zero,.L5
	.loc 1 82 9
	lw	a1,-116(s0)
	lw	a0,-124(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 1 81 40
	bge	a5,zero,.L5
	.loc 1 83 9
	li	a1,1
	lw	a0,-120(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 82 40
	ble	a5,zero,.L5
	.loc 1 84 9
	lw	a1,-116(s0)
	lw	a0,-120(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 1 83 40
	blt	a5,zero,.L6
.L5:
	.loc 1 85 16
	li	a5,-4
	j	.L32
.L6:
	.loc 1 92 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 1 93 5
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 1 96 22
	addi	a5,s0,-40
	lw	a2,-120(s0)
	lw	a1,-124(s0)
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 1 96 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L33
	.loc 1 97 22
	addi	a4,s0,-40
	addi	a5,s0,-40
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 1 97 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L34
	.loc 1 99 29
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_lsb
	mv	a5,a0
	.loc 1 99 16 discriminator 1
	sh	a5,-30(s0)
	.loc 1 99 8 discriminator 1
	lhu	a5,-30(s0)
	bne	a5,zero,.L10
	.loc 1 100 13
	li	a5,-4
	sw	a5,-20(s0)
	.loc 1 101 9
	j	.L8
.L10:
	.loc 1 105 22
	lhu	a4,-30(s0)
	addi	a5,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_shift_r
	sw	a0,-20(s0)
	.loc 1 105 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L35
	.loc 1 112 13
	sh	zero,-22(s0)
	.loc 1 113 10
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 1 113 13
	lw	a5,0(a5)
	.loc 1 113 17
	andi	a4,a5,7
	.loc 1 113 8
	li	a5,1
	bne	a4,a5,.L13
	.loc 1 114 17
	li	a5,1
	sh	a5,-22(s0)
	.loc 1 117 5
	j	.L13
.L31:
	.loc 1 118 53
	lhu	a5,-22(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-88(a5)
	.loc 1 118 26
	mv	a4,a5
	addi	a5,s0,-48
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 1 118 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L36
	.loc 1 121 26
	addi	a5,s0,-48
	lw	a3,-116(s0)
	mv	a2,a5
	li	a1,0
	lw	a0,-128(s0)
	call	mbedtls_mpi_gcd_modinv_odd
	sw	a0,-20(s0)
	.loc 1 121 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L37
	.loc 1 122 13
	li	a1,1
	lw	a0,-128(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 122 12 discriminator 1
	bne	a5,zero,.L38
	.loc 1 128 26
	addi	a2,s0,-40
	addi	a1,s0,-48
	addi	a5,s0,-48
	lw	a4,-132(s0)
	lw	a3,-116(s0)
	mv	a0,a5
	call	mbedtls_mpi_exp_mod
	sw	a0,-20(s0)
	.loc 1 128 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L39
	.loc 1 132 19
	li	a5,1
	sh	a5,-24(s0)
	.loc 1 132 9
	j	.L19
.L29:
	.loc 1 135 17
	addi	a5,s0,-48
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 135 16 discriminator 1
	beq	a5,zero,.L40
	.loc 1 139 30
	addi	a4,s0,-48
	addi	a5,s0,-48
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_add_int
	sw	a0,-20(s0)
	.loc 1 139 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L41
	.loc 1 140 30
	addi	a5,s0,-48
	lw	a3,-116(s0)
	mv	a2,a5
	li	a1,0
	lw	a0,-128(s0)
	call	mbedtls_mpi_gcd_modinv_odd
	sw	a0,-20(s0)
	.loc 1 140 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L42
	.loc 1 142 17
	li	a1,1
	lw	a0,-128(s0)
	call	mbedtls_mpi_cmp_int
	mv	a4,a0
	.loc 1 142 16 discriminator 1
	li	a5,1
	bne	a4,a5,.L24
	.loc 1 143 17
	lw	a1,-116(s0)
	lw	a0,-128(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a4,a0
	.loc 1 142 48 discriminator 2
	li	a5,-1
	bne	a4,a5,.L24
	.loc 1 149 34
	lw	a3,-128(s0)
	lw	a2,-116(s0)
	li	a1,0
	lw	a0,-132(s0)
	call	mbedtls_mpi_div_mpi
	sw	a0,-20(s0)
	.loc 1 150 17
	j	.L8
.L24:
	.loc 1 153 30
	addi	a4,s0,-48
	addi	a5,s0,-48
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 1 153 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L43
	.loc 1 154 30
	addi	a3,s0,-48
	addi	a4,s0,-48
	addi	a5,s0,-48
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 1 154 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L44
	.loc 1 155 30
	addi	a4,s0,-48
	addi	a5,s0,-48
	lw	a2,-116(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 1 155 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L45
	.loc 1 132 39 discriminator 2
	lhu	a5,-24(s0)
	addi	a5,a5,1
	sh	a5,-24(s0)
.L19:
	.loc 1 132 29 discriminator 1
	lhu	a4,-24(s0)
	lhu	a5,-30(s0)
	bleu	a4,a5,.L29
	j	.L21
.L40:
	.loc 1 136 17
	nop
.L21:
	.loc 1 165 13
	addi	a5,s0,-48
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 165 12 discriminator 1
	bne	a5,zero,.L46
	j	.L17
.L38:
	.loc 1 123 13
	nop
.L17:
	.loc 1 117 34
	lhu	a5,-22(s0)
	addi	a5,a5,1
	sh	a5,-22(s0)
.L13:
	.loc 1 117 20 discriminator 1
	lhu	a5,-22(s0)
	lw	a4,-28(s0)
	bgtu	a4,a5,.L31
	j	.L30
.L46:
	.loc 1 166 13
	nop
.L30:
	.loc 1 170 9
	li	a5,-4
	sw	a5,-20(s0)
	j	.L8
.L33:
	.loc 1 96 60
	nop
	j	.L8
.L34:
	.loc 1 97 61
	nop
	j	.L8
.L35:
	.loc 1 105 61
	nop
	j	.L8
.L36:
	.loc 1 118 72
	nop
	j	.L8
.L37:
	.loc 1 121 25
	nop
	j	.L8
.L39:
	.loc 1 128 73
	nop
	j	.L8
.L41:
	.loc 1 139 69
	nop
	j	.L8
.L42:
	.loc 1 140 29
	nop
	j	.L8
.L43:
	.loc 1 153 69
	nop
	j	.L8
.L44:
	.loc 1 154 70
	nop
	j	.L8
.L45:
	.loc 1 155 69
	nop
.L8:
	.loc 1 174 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 1 175 5
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 1 176 12
	lw	a5,-20(s0)
.L32:
	.loc 1 177 1
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
.LFE12:
	.size	mbedtls_rsa_deduce_primes, .-mbedtls_rsa_deduce_primes
	.section	.text.mbedtls_rsa_deduce_private_exponent,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_deduce_private_exponent
	.type	mbedtls_rsa_deduce_private_exponent, @function
mbedtls_rsa_deduce_private_exponent:
.LFB13:
	.loc 1 187 1
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
	.loc 1 188 9
	sw	zero,-20(s0)
	.loc 1 191 8
	lw	a5,-64(s0)
	beq	a5,zero,.L48
	.loc 1 191 21 discriminator 1
	li	a1,0
	lw	a0,-64(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 191 18 discriminator 2
	beq	a5,zero,.L49
.L48:
	.loc 1 192 16
	li	a5,-4
	j	.L60
.L49:
	.loc 1 195 9
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 195 8 discriminator 1
	ble	a5,zero,.L51
	.loc 1 196 9
	li	a1,1
	lw	a0,-56(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 195 40 discriminator 2
	ble	a5,zero,.L51
	.loc 1 197 9
	li	a1,0
	lw	a0,-60(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 196 40
	bne	a5,zero,.L52
.L51:
	.loc 1 198 16
	li	a5,-4
	j	.L60
.L52:
	.loc 1 201 9
	li	a1,0
	lw	a0,-60(s0)
	call	mbedtls_mpi_get_bit
	mv	a4,a0
	.loc 1 201 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L53
	.loc 1 202 16
	li	a5,-14
	j	.L60
.L53:
	.loc 1 205 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 1 206 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 1 209 22
	addi	a5,s0,-28
	li	a2,1
	lw	a1,-52(s0)
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 1 209 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L61
	.loc 1 210 22
	addi	a5,s0,-36
	li	a2,1
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 1 210 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L62
	.loc 1 213 22
	addi	a4,s0,-36
	addi	a5,s0,-28
	mv	a2,a4
	mv	a1,a5
	lw	a0,-64(s0)
	call	mbedtls_mpi_gcd
	sw	a0,-20(s0)
	.loc 1 213 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L63
	.loc 1 216 22
	addi	a3,s0,-36
	addi	a4,s0,-28
	addi	a5,s0,-28
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 1 216 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L64
	.loc 1 217 22
	addi	a4,s0,-28
	addi	a5,s0,-28
	lw	a3,-64(s0)
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_div_mpi
	sw	a0,-20(s0)
	.loc 1 217 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L65
	.loc 1 223 22
	addi	a5,s0,-28
	mv	a2,a5
	lw	a1,-60(s0)
	lw	a0,-64(s0)
	call	mbedtls_mpi_inv_mod_even_in_range
	sw	a0,-20(s0)
	.loc 1 225 1
	j	.L55
.L61:
	.loc 1 209 60
	nop
	j	.L55
.L62:
	.loc 1 210 60
	nop
	j	.L55
.L63:
	.loc 1 213 57
	nop
	j	.L55
.L64:
	.loc 1 216 62
	nop
	j	.L55
.L65:
	.loc 1 217 21
	nop
.L55:
	.loc 1 227 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 1 228 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 1 230 12
	lw	a5,-20(s0)
.L60:
	.loc 1 231 1
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
.LFE13:
	.size	mbedtls_rsa_deduce_private_exponent, .-mbedtls_rsa_deduce_private_exponent
	.section	.text.mbedtls_rsa_deduce_crt,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_deduce_crt
	.type	mbedtls_rsa_deduce_crt, @function
mbedtls_rsa_deduce_crt:
.LFB14:
	.loc 1 236 1
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
	.loc 1 237 9
	sw	zero,-20(s0)
	.loc 1 239 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 1 242 8
	lw	a5,-48(s0)
	beq	a5,zero,.L67
	.loc 1 243 26
	addi	a5,s0,-28
	li	a2,1
	lw	a1,-36(s0)
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 1 243 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L73
	.loc 1 244 26
	addi	a5,s0,-28
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-48(s0)
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 1 244 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L74
.L67:
	.loc 1 248 8
	lw	a5,-52(s0)
	beq	a5,zero,.L70
	.loc 1 249 26
	addi	a5,s0,-28
	li	a2,1
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 1 249 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L75
	.loc 1 250 26
	addi	a5,s0,-28
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-52(s0)
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 1 250 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L76
.L70:
	.loc 1 254 8
	lw	a5,-56(s0)
	beq	a5,zero,.L77
	.loc 1 255 26
	lw	a2,-36(s0)
	lw	a1,-40(s0)
	lw	a0,-56(s0)
	call	mbedtls_mpi_inv_mod_odd
	sw	a0,-20(s0)
	.loc 1 258 1
	j	.L77
.L73:
	.loc 1 243 64
	nop
	j	.L69
.L74:
	.loc 1 244 65
	nop
	j	.L69
.L75:
	.loc 1 249 64
	nop
	j	.L69
.L76:
	.loc 1 250 65
	nop
	j	.L69
.L77:
	.loc 1 258 1
	nop
.L69:
	.loc 1 259 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 1 261 12
	lw	a5,-20(s0)
	.loc 1 262 1
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
.LFE14:
	.size	mbedtls_rsa_deduce_crt, .-mbedtls_rsa_deduce_crt
	.section	.text.mbedtls_rsa_validate_params,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_validate_params
	.type	mbedtls_rsa_validate_params, @function
mbedtls_rsa_validate_params:
.LFB15:
	.loc 1 272 1
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
	.loc 1 273 9
	sw	zero,-20(s0)
	.loc 1 276 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 1 277 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 1 289 8
	lw	a5,-72(s0)
	beq	a5,zero,.L79
	.loc 1 289 22 discriminator 1
	lw	a5,-56(s0)
	beq	a5,zero,.L79
	.loc 1 290 16
	lw	a3,-76(s0)
	lw	a2,-72(s0)
	li	a1,50
	lw	a0,-56(s0)
	call	mbedtls_mpi_is_prime_ext
	sw	a0,-20(s0)
	.loc 1 289 35 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L79
	.loc 1 291 13
	li	a5,-16384
	addi	a5,a5,-512
	sw	a5,-20(s0)
	.loc 1 292 9
	j	.L80
.L79:
	.loc 1 295 8
	lw	a5,-72(s0)
	beq	a5,zero,.L81
	.loc 1 295 22 discriminator 1
	lw	a5,-60(s0)
	beq	a5,zero,.L81
	.loc 1 296 16
	lw	a3,-76(s0)
	lw	a2,-72(s0)
	li	a1,50
	lw	a0,-60(s0)
	call	mbedtls_mpi_is_prime_ext
	sw	a0,-20(s0)
	.loc 1 295 35 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L81
	.loc 1 297 13
	li	a5,-16384
	addi	a5,a5,-512
	sw	a5,-20(s0)
	.loc 1 298 9
	j	.L80
.L81:
	.loc 1 309 8
	lw	a5,-56(s0)
	beq	a5,zero,.L82
	.loc 1 309 18 discriminator 1
	lw	a5,-60(s0)
	beq	a5,zero,.L82
	.loc 1 309 31 discriminator 2
	lw	a5,-52(s0)
	beq	a5,zero,.L82
	.loc 1 310 26
	addi	a5,s0,-28
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 1 310 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L100
	.loc 1 311 13
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 311 12 discriminator 1
	ble	a5,zero,.L84
	.loc 1 312 13
	addi	a5,s0,-28
	lw	a1,-52(s0)
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 1 311 44 discriminator 2
	beq	a5,zero,.L82
.L84:
	.loc 1 313 17
	li	a5,-16384
	addi	a5,a5,-512
	sw	a5,-20(s0)
	.loc 1 314 13
	j	.L80
.L82:
	.loc 1 322 8
	lw	a5,-52(s0)
	beq	a5,zero,.L85
	.loc 1 322 18 discriminator 1
	lw	a5,-64(s0)
	beq	a5,zero,.L85
	.loc 1 322 31 discriminator 2
	lw	a5,-68(s0)
	beq	a5,zero,.L85
	.loc 1 323 13
	li	a1,1
	lw	a0,-64(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 323 12 discriminator 1
	ble	a5,zero,.L86
	.loc 1 324 13
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 323 44 discriminator 2
	ble	a5,zero,.L86
	.loc 1 325 13
	lw	a1,-52(s0)
	lw	a0,-64(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 1 324 44
	bge	a5,zero,.L86
	.loc 1 326 13
	lw	a1,-52(s0)
	lw	a0,-68(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 1 325 44
	blt	a5,zero,.L85
.L86:
	.loc 1 327 17
	li	a5,-16384
	addi	a5,a5,-512
	sw	a5,-20(s0)
	.loc 1 328 13
	j	.L80
.L85:
	.loc 1 336 8
	lw	a5,-56(s0)
	beq	a5,zero,.L101
	.loc 1 336 18 discriminator 1
	lw	a5,-60(s0)
	beq	a5,zero,.L101
	.loc 1 336 31 discriminator 2
	lw	a5,-64(s0)
	beq	a5,zero,.L101
	.loc 1 336 44 discriminator 3
	lw	a5,-68(s0)
	beq	a5,zero,.L101
	.loc 1 337 13
	li	a1,1
	lw	a0,-56(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 337 12 discriminator 1
	ble	a5,zero,.L87
	.loc 1 338 13
	li	a1,1
	lw	a0,-60(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 337 44 discriminator 2
	bgt	a5,zero,.L88
.L87:
	.loc 1 339 17
	li	a5,-16384
	addi	a5,a5,-512
	sw	a5,-20(s0)
	.loc 1 340 13
	j	.L80
.L88:
	.loc 1 344 26
	addi	a5,s0,-28
	lw	a2,-68(s0)
	lw	a1,-64(s0)
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 1 344 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L102
	.loc 1 345 26
	addi	a4,s0,-28
	addi	a5,s0,-28
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 1 345 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L103
	.loc 1 346 26
	addi	a5,s0,-36
	li	a2,1
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 1 346 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L104
	.loc 1 347 26
	addi	a3,s0,-36
	addi	a4,s0,-28
	addi	a5,s0,-28
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 1 347 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L105
	.loc 1 348 13
	addi	a5,s0,-28
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 348 12 discriminator 1
	beq	a5,zero,.L93
	.loc 1 349 17
	li	a5,-16384
	addi	a5,a5,-512
	sw	a5,-20(s0)
	.loc 1 350 13
	j	.L80
.L93:
	.loc 1 354 26
	addi	a5,s0,-28
	lw	a2,-68(s0)
	lw	a1,-64(s0)
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 1 354 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L106
	.loc 1 355 26
	addi	a4,s0,-28
	addi	a5,s0,-28
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 1 355 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L107
	.loc 1 356 26
	addi	a5,s0,-36
	li	a2,1
	lw	a1,-60(s0)
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 1 356 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L108
	.loc 1 357 26
	addi	a3,s0,-36
	addi	a4,s0,-28
	addi	a5,s0,-28
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 1 357 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L109
	.loc 1 358 13
	addi	a5,s0,-28
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 358 12 discriminator 1
	beq	a5,zero,.L101
	.loc 1 359 17
	li	a5,-16384
	addi	a5,a5,-512
	sw	a5,-20(s0)
	.loc 1 360 13
	j	.L80
.L100:
	.loc 1 310 64
	nop
	j	.L80
.L101:
	.loc 1 364 1
	nop
	j	.L80
.L102:
	.loc 1 344 64
	nop
	j	.L80
.L103:
	.loc 1 345 65
	nop
	j	.L80
.L104:
	.loc 1 346 64
	nop
	j	.L80
.L105:
	.loc 1 347 66
	nop
	j	.L80
.L106:
	.loc 1 354 64
	nop
	j	.L80
.L107:
	.loc 1 355 65
	nop
	j	.L80
.L108:
	.loc 1 356 64
	nop
	j	.L80
.L109:
	.loc 1 357 66
	nop
.L80:
	.loc 1 366 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 1 367 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 1 370 8
	lw	a5,-20(s0)
	beq	a5,zero,.L98
	.loc 1 370 18 discriminator 1
	lw	a4,-20(s0)
	li	a5,-16384
	addi	a5,a5,-512
	beq	a4,a5,.L98
	.loc 1 371 13
	lw	a4,-20(s0)
	li	a5,-16384
	addi	a5,a5,-512
	add	a5,a4,a5
	sw	a5,-20(s0)
.L98:
	.loc 1 374 12
	lw	a5,-20(s0)
	.loc 1 375 1
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
.LFE15:
	.size	mbedtls_rsa_validate_params, .-mbedtls_rsa_validate_params
	.section	.text.mbedtls_rsa_validate_crt,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_validate_crt
	.type	mbedtls_rsa_validate_crt, @function
mbedtls_rsa_validate_crt:
.LFB16:
	.loc 1 383 1
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
	.loc 1 384 9
	sw	zero,-20(s0)
	.loc 1 387 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 1 388 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 1 391 8
	lw	a5,-64(s0)
	beq	a5,zero,.L111
	.loc 1 392 12
	lw	a5,-52(s0)
	bne	a5,zero,.L112
	.loc 1 393 17
	li	a5,-16384
	addi	a5,a5,-128
	sw	a5,-20(s0)
	.loc 1 394 13
	j	.L113
.L112:
	.loc 1 397 26
	addi	a5,s0,-28
	li	a2,1
	lw	a1,-52(s0)
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 1 397 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L129
	.loc 1 398 26
	addi	a5,s0,-36
	lw	a2,-60(s0)
	lw	a1,-64(s0)
	mv	a0,a5
	call	mbedtls_mpi_sub_mpi
	sw	a0,-20(s0)
	.loc 1 398 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L130
	.loc 1 399 26
	addi	a3,s0,-28
	addi	a4,s0,-36
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 1 399 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L131
	.loc 1 401 13
	addi	a5,s0,-36
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 401 12 discriminator 1
	beq	a5,zero,.L111
	.loc 1 402 17
	li	a5,-16384
	addi	a5,a5,-512
	sw	a5,-20(s0)
	.loc 1 403 13
	j	.L113
.L111:
	.loc 1 408 8
	lw	a5,-68(s0)
	beq	a5,zero,.L117
	.loc 1 409 12
	lw	a5,-56(s0)
	bne	a5,zero,.L118
	.loc 1 410 17
	li	a5,-16384
	addi	a5,a5,-128
	sw	a5,-20(s0)
	.loc 1 411 13
	j	.L113
.L118:
	.loc 1 414 26
	addi	a5,s0,-28
	li	a2,1
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 1 414 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L132
	.loc 1 415 26
	addi	a5,s0,-36
	lw	a2,-60(s0)
	lw	a1,-68(s0)
	mv	a0,a5
	call	mbedtls_mpi_sub_mpi
	sw	a0,-20(s0)
	.loc 1 415 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L133
	.loc 1 416 26
	addi	a3,s0,-28
	addi	a4,s0,-36
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 1 416 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L134
	.loc 1 418 13
	addi	a5,s0,-36
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 418 12 discriminator 1
	beq	a5,zero,.L117
	.loc 1 419 17
	li	a5,-16384
	addi	a5,a5,-512
	sw	a5,-20(s0)
	.loc 1 420 13
	j	.L113
.L117:
	.loc 1 425 8
	lw	a5,-72(s0)
	beq	a5,zero,.L135
	.loc 1 426 12
	lw	a5,-52(s0)
	beq	a5,zero,.L122
	.loc 1 426 22 discriminator 1
	lw	a5,-56(s0)
	bne	a5,zero,.L123
.L122:
	.loc 1 427 17
	li	a5,-16384
	addi	a5,a5,-128
	sw	a5,-20(s0)
	.loc 1 428 13
	j	.L113
.L123:
	.loc 1 431 26
	addi	a5,s0,-28
	lw	a2,-56(s0)
	lw	a1,-72(s0)
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 1 431 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L136
	.loc 1 432 26
	addi	a4,s0,-28
	addi	a5,s0,-28
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 1 432 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L137
	.loc 1 433 26
	addi	a4,s0,-28
	addi	a5,s0,-28
	lw	a2,-52(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 1 433 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L138
	.loc 1 434 13
	addi	a5,s0,-28
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 1 434 12 discriminator 1
	beq	a5,zero,.L135
	.loc 1 435 17
	li	a5,-16384
	addi	a5,a5,-512
	sw	a5,-20(s0)
	.loc 1 436 13
	j	.L113
.L129:
	.loc 1 397 64
	nop
	j	.L113
.L130:
	.loc 1 398 65
	nop
	j	.L113
.L131:
	.loc 1 399 66
	nop
	j	.L113
.L132:
	.loc 1 414 64
	nop
	j	.L113
.L133:
	.loc 1 415 65
	nop
	j	.L113
.L134:
	.loc 1 416 66
	nop
	j	.L113
.L135:
	.loc 1 440 1
	nop
	j	.L113
.L136:
	.loc 1 431 65
	nop
	j	.L113
.L137:
	.loc 1 432 65
	nop
	j	.L113
.L138:
	.loc 1 433 65
	nop
.L113:
	.loc 1 443 8
	lw	a5,-20(s0)
	beq	a5,zero,.L127
	.loc 1 443 18 discriminator 1
	lw	a4,-20(s0)
	li	a5,-16384
	addi	a5,a5,-512
	beq	a4,a5,.L127
	.loc 1 444 24
	lw	a4,-20(s0)
	li	a5,-16384
	addi	a5,a5,-128
	beq	a4,a5,.L127
	.loc 1 446 13
	lw	a4,-20(s0)
	li	a5,-16384
	addi	a5,a5,-512
	add	a5,a4,a5
	sw	a5,-20(s0)
.L127:
	.loc 1 449 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 1 450 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 1 452 12
	lw	a5,-20(s0)
	.loc 1 453 1
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
.LFE16:
	.size	mbedtls_rsa_validate_crt, .-mbedtls_rsa_validate_crt
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/bignum_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6d3
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xb
	.4byte	0x32
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0xb
	.4byte	0x76
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x45
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x15
	.byte	0x4
	.uleb128 0x8
	.4byte	0x32
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0xd1
	.byte	0xd
	.4byte	0xcc
	.uleb128 0x16
	.4byte	0x68
	.4byte	0xe5
	.uleb128 0x1
	.4byte	0xb2
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa9
	.byte	0x11
	.4byte	0x8e
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x5
	.byte	0xaa
	.byte	0x12
	.4byte	0xa6
	.uleb128 0x17
	.4byte	.LASF20
	.byte	0x8
	.byte	0x5
	.byte	0xd0
	.byte	0x10
	.4byte	0x129
	.uleb128 0xc
	.string	"p"
	.byte	0xd5
	.byte	0x17
	.4byte	0x129
	.byte	0
	.uleb128 0xc
	.string	"s"
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xc
	.string	"n"
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	0xf1
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x5
	.byte	0xf0
	.byte	0x1
	.4byte	0xfd
	.uleb128 0xb
	.4byte	0x12e
	.uleb128 0x2
	.4byte	.LASF21
	.2byte	0x2e3
	.byte	0x5
	.4byte	0x68
	.4byte	0x15f
	.uleb128 0x1
	.4byte	0x15f
	.uleb128 0x1
	.4byte	0x164
	.uleb128 0x1
	.4byte	0x164
	.byte	0
	.uleb128 0x8
	.4byte	0x12e
	.uleb128 0x8
	.4byte	0x13a
	.uleb128 0x2
	.4byte	.LASF22
	.2byte	0x40c
	.byte	0x5
	.4byte	0x68
	.4byte	0x18e
	.uleb128 0x1
	.4byte	0x164
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x18e
	.uleb128 0x1
	.4byte	0xb2
	.byte	0
	.uleb128 0x8
	.4byte	0xc0
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x62
	.4byte	0x68
	.4byte	0x1b1
	.uleb128 0x1
	.4byte	0x15f
	.uleb128 0x1
	.4byte	0x164
	.uleb128 0x1
	.4byte	0x164
	.byte	0
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x76
	.4byte	0x68
	.4byte	0x1cf
	.uleb128 0x1
	.4byte	0x15f
	.uleb128 0x1
	.4byte	0x164
	.uleb128 0x1
	.4byte	0x164
	.byte	0
	.uleb128 0x2
	.4byte	.LASF25
	.2byte	0x3d9
	.byte	0x5
	.4byte	0x68
	.4byte	0x1ef
	.uleb128 0x1
	.4byte	0x15f
	.uleb128 0x1
	.4byte	0x164
	.uleb128 0x1
	.4byte	0x164
	.byte	0
	.uleb128 0x2
	.4byte	.LASF26
	.2byte	0x18d
	.byte	0x5
	.4byte	0x68
	.4byte	0x20a
	.uleb128 0x1
	.4byte	0x164
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x18
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x103
	.byte	0x6
	.4byte	0x21d
	.uleb128 0x1
	.4byte	0x15f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF27
	.2byte	0x35d
	.byte	0x5
	.4byte	0x68
	.4byte	0x23d
	.uleb128 0x1
	.4byte	0x15f
	.uleb128 0x1
	.4byte	0x164
	.uleb128 0x1
	.4byte	0x164
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.2byte	0x334
	.byte	0x5
	.4byte	0x68
	.4byte	0x262
	.uleb128 0x1
	.4byte	0x15f
	.uleb128 0x1
	.4byte	0x15f
	.uleb128 0x1
	.4byte	0x164
	.uleb128 0x1
	.4byte	0x164
	.byte	0
	.uleb128 0x2
	.4byte	.LASF29
	.2byte	0x2f1
	.byte	0x5
	.4byte	0x68
	.4byte	0x282
	.uleb128 0x1
	.4byte	0x15f
	.uleb128 0x1
	.4byte	0x164
	.uleb128 0x1
	.4byte	0xe5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF30
	.2byte	0x38e
	.byte	0x5
	.4byte	0x68
	.4byte	0x2ac
	.uleb128 0x1
	.4byte	0x15f
	.uleb128 0x1
	.4byte	0x164
	.uleb128 0x1
	.4byte	0x164
	.uleb128 0x1
	.4byte	0x164
	.uleb128 0x1
	.4byte	0x15f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x4f
	.4byte	0x68
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0x15f
	.uleb128 0x1
	.4byte	0x15f
	.uleb128 0x1
	.4byte	0x164
	.uleb128 0x1
	.4byte	0x164
	.byte	0
	.uleb128 0x2
	.4byte	.LASF32
	.2byte	0x181
	.byte	0x5
	.4byte	0x68
	.4byte	0x2ea
	.uleb128 0x1
	.4byte	0x15f
	.uleb128 0x1
	.4byte	0xe5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF33
	.2byte	0x275
	.byte	0x5
	.4byte	0x68
	.4byte	0x305
	.uleb128 0x1
	.4byte	0x15f
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.2byte	0x1ac
	.byte	0x8
	.4byte	0x76
	.4byte	0x31b
	.uleb128 0x1
	.4byte	0x164
	.byte	0
	.uleb128 0x2
	.4byte	.LASF35
	.2byte	0x300
	.byte	0x5
	.4byte	0x68
	.4byte	0x33b
	.uleb128 0x1
	.4byte	0x15f
	.uleb128 0x1
	.4byte	0x164
	.uleb128 0x1
	.4byte	0xe5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF36
	.2byte	0x30f
	.byte	0x5
	.4byte	0x68
	.4byte	0x35b
	.uleb128 0x1
	.4byte	0x15f
	.uleb128 0x1
	.4byte	0x164
	.uleb128 0x1
	.4byte	0x164
	.byte	0
	.uleb128 0x19
	.4byte	.LASF38
	.byte	0x5
	.byte	0xfa
	.byte	0x6
	.4byte	0x36d
	.uleb128 0x1
	.4byte	0x15f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF39
	.2byte	0x28d
	.byte	0x5
	.4byte	0x68
	.4byte	0x388
	.uleb128 0x1
	.4byte	0x164
	.uleb128 0x1
	.4byte	0x164
	.byte	0
	.uleb128 0x2
	.4byte	.LASF40
	.2byte	0x2ab
	.byte	0x5
	.4byte	0x68
	.4byte	0x3a3
	.uleb128 0x1
	.4byte	0x164
	.uleb128 0x1
	.4byte	0xe5
	.byte	0
	.uleb128 0x10
	.4byte	.LASF41
	.2byte	0x17c
	.4byte	0x68
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x444
	.uleb128 0x5
	.string	"P"
	.2byte	0x17c
	.byte	0x31
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"Q"
	.2byte	0x17c
	.byte	0x47
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"D"
	.2byte	0x17d
	.byte	0x31
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.string	"DP"
	.2byte	0x17d
	.byte	0x47
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.string	"DQ"
	.2byte	0x17e
	.byte	0x31
	.4byte	0x164
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.string	"QP"
	.2byte	0x17e
	.byte	0x48
	.4byte	0x164
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x9
	.string	"ret"
	.2byte	0x180
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"K"
	.2byte	0x182
	.byte	0x11
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.string	"L"
	.2byte	0x182
	.byte	0x14
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF45
	.2byte	0x1b8
	.4byte	.L113
	.byte	0
	.uleb128 0x10
	.4byte	.LASF42
	.2byte	0x10b
	.4byte	0x68
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f2
	.uleb128 0x5
	.string	"N"
	.2byte	0x10b
	.byte	0x34
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"P"
	.2byte	0x10b
	.byte	0x4a
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"Q"
	.2byte	0x10c
	.byte	0x34
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.string	"D"
	.2byte	0x10c
	.byte	0x4a
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.string	"E"
	.2byte	0x10d
	.byte	0x34
	.4byte	0x164
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x11
	.4byte	.LASF43
	.2byte	0x10e
	.4byte	0x4f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x11
	.4byte	.LASF44
	.2byte	0x10f
	.4byte	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x9
	.string	"ret"
	.2byte	0x111
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"K"
	.2byte	0x112
	.byte	0x11
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.string	"L"
	.2byte	0x112
	.byte	0x14
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF45
	.2byte	0x16c
	.4byte	.L80
	.byte	0
	.uleb128 0x8
	.4byte	0xcc
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0xe9
	.4byte	0x68
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x580
	.uleb128 0x3
	.string	"P"
	.byte	0xe9
	.byte	0x2f
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"Q"
	.byte	0xe9
	.byte	0x45
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"D"
	.byte	0xea
	.byte	0x2f
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"DP"
	.byte	0xea
	.byte	0x3f
	.4byte	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"DQ"
	.byte	0xeb
	.byte	0x29
	.4byte	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"QP"
	.byte	0xeb
	.byte	0x3a
	.4byte	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"ret"
	.byte	0xed
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"K"
	.byte	0xee
	.byte	0x11
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.4byte	.LASF45
	.2byte	0x102
	.4byte	.L69
	.byte	0
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0xb7
	.4byte	0x68
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f9
	.uleb128 0x3
	.string	"P"
	.byte	0xb7
	.byte	0x3c
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"Q"
	.byte	0xb8
	.byte	0x3c
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.string	"E"
	.byte	0xb9
	.byte	0x3c
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.string	"D"
	.byte	0xba
	.byte	0x36
	.4byte	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"ret"
	.byte	0xbc
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"K"
	.byte	0xbd
	.byte	0x11
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"L"
	.byte	0xbd
	.byte	0x14
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0xe1
	.4byte	.L55
	.byte	0
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x33
	.4byte	0x68
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ca
	.uleb128 0x3
	.string	"N"
	.byte	0x33
	.byte	0x32
	.4byte	0x164
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x3
	.string	"E"
	.byte	0x34
	.byte	0x32
	.4byte	0x164
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x3
	.string	"D"
	.byte	0x34
	.byte	0x48
	.4byte	0x164
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x3
	.string	"P"
	.byte	0x35
	.byte	0x2c
	.4byte	0x15f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x3
	.string	"Q"
	.byte	0x35
	.byte	0x3c
	.4byte	0x15f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x7
	.string	"ret"
	.byte	0x37
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x39
	.byte	0xe
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x3a
	.byte	0xe
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x3c
	.byte	0xe
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x7
	.string	"T"
	.byte	0x3e
	.byte	0x11
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"K"
	.byte	0x3f
	.byte	0x11
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x41
	.byte	0x19
	.4byte	0x6ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x4a
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0xac
	.4byte	.L8
	.byte	0
	.uleb128 0x1a
	.4byte	0x39
	.uleb128 0x1b
	.4byte	0x6f
	.byte	0x35
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x11
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
	.uleb128 0x21
	.sleb128 39
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0xb
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
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
	.4byte	.LFB12
	.uleb128 .LFE12-.LFB12
	.byte	0x7
	.4byte	.LFB13
	.uleb128 .LFE13-.LFB13
	.byte	0x7
	.4byte	.LFB14
	.uleb128 .LFE14-.LFB14
	.byte	0x7
	.4byte	.LFB15
	.uleb128 .LFE15-.LFB15
	.byte	0x7
	.4byte	.LFB16
	.uleb128 .LFE16-.LFB16
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"size_t"
.LASF35:
	.string	"mbedtls_mpi_sub_int"
.LASF9:
	.string	"long long unsigned int"
.LASF51:
	.string	"order"
.LASF20:
	.string	"mbedtls_mpi"
.LASF53:
	.string	"num_primes"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF43:
	.string	"f_rng"
.LASF29:
	.string	"mbedtls_mpi_add_int"
.LASF6:
	.string	"long int"
.LASF46:
	.string	"mbedtls_rsa_deduce_crt"
.LASF14:
	.string	"uint16_t"
.LASF23:
	.string	"mbedtls_mpi_inv_mod_odd"
.LASF39:
	.string	"mbedtls_mpi_cmp_mpi"
.LASF10:
	.string	"unsigned int"
.LASF7:
	.string	"long unsigned int"
.LASF26:
	.string	"mbedtls_mpi_get_bit"
.LASF5:
	.string	"short unsigned int"
.LASF38:
	.string	"mbedtls_mpi_init"
.LASF30:
	.string	"mbedtls_mpi_exp_mod"
.LASF27:
	.string	"mbedtls_mpi_mod_mpi"
.LASF37:
	.string	"mbedtls_mpi_free"
.LASF44:
	.string	"p_rng"
.LASF42:
	.string	"mbedtls_rsa_validate_params"
.LASF48:
	.string	"mbedtls_rsa_deduce_primes"
.LASF52:
	.string	"primes"
.LASF11:
	.string	"long double"
.LASF45:
	.string	"cleanup"
.LASF21:
	.string	"mbedtls_mpi_sub_mpi"
.LASF49:
	.string	"attempt"
.LASF32:
	.string	"mbedtls_mpi_lset"
.LASF19:
	.string	"mbedtls_mpi_uint"
.LASF13:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF31:
	.string	"mbedtls_mpi_gcd_modinv_odd"
.LASF50:
	.string	"iter"
.LASF4:
	.string	"short int"
.LASF47:
	.string	"mbedtls_rsa_deduce_private_exponent"
.LASF15:
	.string	"uint32_t"
.LASF40:
	.string	"mbedtls_mpi_cmp_int"
.LASF16:
	.string	"char"
.LASF25:
	.string	"mbedtls_mpi_gcd"
.LASF28:
	.string	"mbedtls_mpi_div_mpi"
.LASF17:
	.string	"mbedtls_f_rng_t"
.LASF36:
	.string	"mbedtls_mpi_mul_mpi"
.LASF24:
	.string	"mbedtls_mpi_inv_mod_even_in_range"
.LASF54:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF22:
	.string	"mbedtls_mpi_is_prime_ext"
.LASF18:
	.string	"mbedtls_mpi_sint"
.LASF41:
	.string	"mbedtls_rsa_validate_crt"
.LASF33:
	.string	"mbedtls_mpi_shift_r"
.LASF34:
	.string	"mbedtls_mpi_lsb"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/rsa_alt_helpers.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
