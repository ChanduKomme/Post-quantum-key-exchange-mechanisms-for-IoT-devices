	.file	"x509_crt.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509_crt.c"
	.section	.text.mbedtls_pk_ec_ro,"ax",@progbits
	.align	1
	.type	mbedtls_pk_ec_ro, @function
mbedtls_pk_ec_ro:
.LFB73:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk_internal.h"
	.loc 1 61 1
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
	.loc 1 62 13
	addi	a5,s0,-24
	mv	a0,a5
	call	mbedtls_pk_get_type
	mv	a5,a0
	addi	a4,a5,-2
	.loc 1 62 5 discriminator 1
	li	a5,2
	bgtu	a4,a5,.L2
	.loc 1 66 20
	lw	a5,-20(s0)
	j	.L3
.L2:
	.loc 1 68 19
	li	a5,0
.L3:
	.loc 1 70 1
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
	.size	mbedtls_pk_ec_ro, .-mbedtls_pk_ec_ro
	.section	.text.mbedtls_pk_get_ec_group_id,"ax",@progbits
	.align	1
	.type	mbedtls_pk_get_ec_group_id, @function
mbedtls_pk_get_ec_group_id:
.LFB75:
	.loc 1 87 1
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
	.loc 1 109 14
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_ec_ro
	mv	a5,a0
	.loc 1 109 12 discriminator 1
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	.loc 1 113 12
	lbu	a5,-17(s0)
	.loc 1 114 1
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
	.size	mbedtls_pk_get_ec_group_id, .-mbedtls_pk_get_ec_group_id
	.section	.text.mbedtls_error_add,"ax",@progbits
	.align	1
	.type	mbedtls_error_add, @function
mbedtls_error_add:
.LFB77:
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
.LFE77:
	.size	mbedtls_error_add, .-mbedtls_error_add
	.globl	mbedtls_x509_crt_profile_default
	.section	.rodata.mbedtls_x509_crt_profile_default,"a"
	.align	2
	.type	mbedtls_x509_crt_profile_default, @object
	.size	mbedtls_x509_crt_profile_default, 16
mbedtls_x509_crt_profile_default:
	.word	1792
	.word	268435455
	.word	252
	.word	2048
	.globl	mbedtls_x509_crt_profile_next
	.section	.rodata.mbedtls_x509_crt_profile_next,"a"
	.align	2
	.type	mbedtls_x509_crt_profile_next, @object
	.size	mbedtls_x509_crt_profile_next, 16
mbedtls_x509_crt_profile_next:
	.word	1792
	.word	268435455
	.word	2300
	.word	2048
	.globl	mbedtls_x509_crt_profile_suiteb
	.section	.rodata.mbedtls_x509_crt_profile_suiteb,"a"
	.align	2
	.type	mbedtls_x509_crt_profile_suiteb, @object
	.size	mbedtls_x509_crt_profile_suiteb, 16
mbedtls_x509_crt_profile_suiteb:
	.word	768
	.word	10
	.word	12
	.word	0
	.globl	mbedtls_x509_crt_profile_none
	.section	.rodata.mbedtls_x509_crt_profile_none,"a"
	.align	2
	.type	mbedtls_x509_crt_profile_none, @object
	.size	mbedtls_x509_crt_profile_none, 16
mbedtls_x509_crt_profile_none:
	.word	0
	.word	0
	.word	0
	.word	-1
	.section	.text.x509_profile_check_md_alg,"ax",@progbits
	.align	1
	.type	x509_profile_check_md_alg, @function
x509_profile_check_md_alg:
.LFB81:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509_crt.c"
	.loc 3 175 1
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
	sb	a5,-21(s0)
	.loc 3 176 8
	lbu	a5,-21(s0)
	bne	a5,zero,.L9
	.loc 3 177 16
	li	a5,-1
	j	.L10
.L9:
	.loc 3 180 17
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 180 49
	lbu	a4,-21(s0)
	addi	a4,a4,-1
	.loc 3 180 36
	li	a3,1
	sll	a4,a3,a4
	.loc 3 180 31
	and	a5,a5,a4
	.loc 3 180 8
	beq	a5,zero,.L11
	.loc 3 181 16
	li	a5,0
	j	.L10
.L11:
	.loc 3 184 12
	li	a5,-1
.L10:
	.loc 3 185 1
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
.LFE81:
	.size	x509_profile_check_md_alg, .-x509_profile_check_md_alg
	.section	.text.x509_profile_check_pk_alg,"ax",@progbits
	.align	1
	.type	x509_profile_check_pk_alg, @function
x509_profile_check_pk_alg:
.LFB82:
	.loc 3 193 1
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
	sb	a5,-21(s0)
	.loc 3 194 8
	lbu	a5,-21(s0)
	bne	a5,zero,.L13
	.loc 3 195 16
	li	a5,-1
	j	.L14
.L13:
	.loc 3 198 17
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 3 198 49
	lbu	a4,-21(s0)
	addi	a4,a4,-1
	.loc 3 198 36
	li	a3,1
	sll	a4,a3,a4
	.loc 3 198 31
	and	a5,a5,a4
	.loc 3 198 8
	beq	a5,zero,.L15
	.loc 3 199 16
	li	a5,0
	j	.L14
.L15:
	.loc 3 202 12
	li	a5,-1
.L14:
	.loc 3 203 1
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
.LFE82:
	.size	x509_profile_check_pk_alg, .-x509_profile_check_pk_alg
	.section	.text.x509_profile_check_key,"ax",@progbits
	.align	1
	.type	x509_profile_check_key, @function
x509_profile_check_key:
.LFB83:
	.loc 3 211 1
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
	.loc 3 212 38
	lw	a0,-40(s0)
	call	mbedtls_pk_get_type
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 3 215 8
	lbu	a4,-17(s0)
	li	a5,1
	beq	a4,a5,.L17
	.loc 3 215 34 discriminator 1
	lbu	a4,-17(s0)
	li	a5,6
	bne	a4,a5,.L18
.L17:
	.loc 3 216 13
	lw	a0,-40(s0)
	call	mbedtls_pk_get_bitlen
	mv	a4,a0
	.loc 3 216 49 discriminator 1
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 3 216 12 discriminator 1
	bltu	a4,a5,.L19
	.loc 3 217 20
	li	a5,0
	j	.L20
.L19:
	.loc 3 220 16
	li	a5,-1
	j	.L20
.L18:
	.loc 3 225 8
	lbu	a4,-17(s0)
	li	a5,4
	beq	a4,a5,.L21
	.loc 3 225 36 discriminator 1
	lbu	a4,-17(s0)
	li	a5,2
	beq	a4,a5,.L21
	.loc 3 226 36
	lbu	a4,-17(s0)
	li	a5,3
	bne	a4,a5,.L22
.L21:
.LBB8:
	.loc 3 228 42
	lw	a0,-40(s0)
	call	mbedtls_pk_get_ec_group_id
	mv	a5,a0
	sb	a5,-18(s0)
	.loc 3 230 12
	lbu	a5,-18(s0)
	bne	a5,zero,.L23
	.loc 3 231 20
	li	a5,-1
	j	.L20
.L23:
	.loc 3 234 21
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 3 234 53
	lbu	a4,-18(s0)
	addi	a4,a4,-1
	.loc 3 234 43
	li	a3,1
	sll	a4,a3,a4
	.loc 3 234 38
	and	a5,a5,a4
	.loc 3 234 12
	beq	a5,zero,.L24
	.loc 3 235 20
	li	a5,0
	j	.L20
.L24:
	.loc 3 238 16
	li	a5,-1
	j	.L20
.L22:
.LBE8:
	.loc 3 242 12
	li	a5,-1
.L20:
	.loc 3 243 1
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
	.size	x509_profile_check_key, .-x509_profile_check_key
	.section	.text.x509_memcasecmp,"ax",@progbits
	.align	1
	.type	x509_memcasecmp, @function
x509_memcasecmp:
.LFB84:
	.loc 3 249 1
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
	.loc 3 252 26
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 3 252 36
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	.loc 3 254 12
	sw	zero,-20(s0)
	.loc 3 254 5
	j	.L26
.L33:
	.loc 3 255 18
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 3 255 26
	lw	a3,-28(s0)
	lw	a5,-20(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 3 255 14
	xor	a5,a4,a5
	sb	a5,-29(s0)
	.loc 3 257 12
	lbu	a5,-29(s0)
	beq	a5,zero,.L34
	.loc 3 261 12
	lbu	a4,-29(s0)
	li	a5,32
	bne	a4,a5,.L29
	.loc 3 262 17
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 3 261 24 discriminator 1
	li	a5,96
	bleu	a4,a5,.L30
	.loc 3 262 33
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 3 262 28
	li	a5,122
	bleu	a4,a5,.L35
.L30:
	.loc 3 263 17
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 3 262 45 discriminator 1
	li	a5,64
	bleu	a4,a5,.L29
	.loc 3 263 33
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 3 263 28
	li	a5,90
	bleu	a4,a5,.L35
.L29:
	.loc 3 267 16
	li	a5,-1
	j	.L32
.L34:
	.loc 3 258 13
	nop
	j	.L28
.L35:
	.loc 3 264 13
	nop
.L28:
	.loc 3 254 27 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L26:
	.loc 3 254 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L33
	.loc 3 270 12
	li	a5,0
.L32:
	.loc 3 271 1
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
	.size	x509_memcasecmp, .-x509_memcasecmp
	.section	.text.x509_check_wildcard,"ax",@progbits
	.align	1
	.type	x509_check_wildcard, @function
x509_check_wildcard:
.LFB85:
	.loc 3 277 1
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
	.loc 3 279 12
	sw	zero,-24(s0)
	.loc 3 279 33
	lw	a0,-36(s0)
	call	strlen
	sw	a0,-28(s0)
	.loc 3 282 13
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 3 282 8
	li	a5,2
	bleu	a4,a5,.L37
	.loc 3 282 30 discriminator 1
	lw	a5,-40(s0)
	lw	a5,8(a5)
	.loc 3 282 33 discriminator 1
	lbu	a4,0(a5)
	.loc 3 282 23 discriminator 1
	li	a5,42
	bne	a4,a5,.L37
	.loc 3 282 51 discriminator 2
	lw	a5,-40(s0)
	lw	a5,8(a5)
	.loc 3 282 54 discriminator 2
	addi	a5,a5,1
	lbu	a4,0(a5)
	.loc 3 282 44 discriminator 2
	li	a5,46
	beq	a4,a5,.L38
.L37:
	.loc 3 283 16
	li	a5,-1
	j	.L39
.L38:
	.loc 3 286 12
	sw	zero,-20(s0)
	.loc 3 286 5
	j	.L40
.L43:
	.loc 3 287 15
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 3 287 12
	li	a5,46
	bne	a4,a5,.L41
	.loc 3 288 20
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 3 289 13
	j	.L42
.L41:
	.loc 3 286 29 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L40:
	.loc 3 286 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	bltu	a4,a5,.L43
.L42:
	.loc 3 293 8
	lw	a5,-24(s0)
	bne	a5,zero,.L44
	.loc 3 294 16
	li	a5,-1
	j	.L39
.L44:
	.loc 3 297 16
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	sub	a4,a4,a5
	.loc 3 297 32
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 3 297 38
	addi	a5,a5,-1
	.loc 3 297 8
	bne	a4,a5,.L45
	.loc 3 298 29
	lw	a5,-40(s0)
	lw	a5,8(a5)
	.loc 3 298 9
	addi	a3,a5,1
	.loc 3 298 41
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 3 298 55
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 3 298 9
	addi	a5,a5,-1
	mv	a2,a5
	mv	a1,a4
	mv	a0,a3
	call	x509_memcasecmp
	mv	a5,a0
	.loc 3 297 42 discriminator 1
	bne	a5,zero,.L45
	.loc 3 299 16
	li	a5,0
	j	.L39
.L45:
	.loc 3 302 12
	li	a5,-1
.L39:
	.loc 3 303 1
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
	.size	x509_check_wildcard, .-x509_check_wildcard
	.section	.text.x509_string_cmp,"ax",@progbits
	.align	1
	.type	x509_string_cmp, @function
x509_string_cmp:
.LFB86:
	.loc 3 312 1
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
	.loc 3 313 10
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 3 313 20
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 3 313 8
	bne	a4,a5,.L47
	.loc 3 314 10
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 3 314 20
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 3 313 26 discriminator 1
	bne	a4,a5,.L47
	.loc 3 315 17
	lw	a5,-20(s0)
	lw	a4,8(a5)
	.loc 3 315 23
	lw	a5,-24(s0)
	lw	a3,8(a5)
	.loc 3 315 29
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 3 315 9
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 3 314 26
	bne	a5,zero,.L47
	.loc 3 316 16
	li	a5,0
	j	.L48
.L47:
	.loc 3 319 11
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 3 319 8
	li	a5,12
	beq	a4,a5,.L49
	.loc 3 319 29 discriminator 2
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 3 319 25 discriminator 2
	li	a5,19
	bne	a4,a5,.L50
.L49:
	.loc 3 320 11
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 3 319 44 discriminator 3
	li	a5,12
	beq	a4,a5,.L51
	.loc 3 320 29
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 3 320 25
	li	a5,19
	bne	a4,a5,.L50
.L51:
	.loc 3 321 10
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 3 321 20
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 3 320 44 discriminator 1
	bne	a4,a5,.L50
	.loc 3 322 26
	lw	a5,-20(s0)
	lw	a4,8(a5)
	.loc 3 322 32
	lw	a5,-24(s0)
	lw	a3,8(a5)
	.loc 3 322 38
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 3 322 9
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	x509_memcasecmp
	mv	a5,a0
	.loc 3 321 26
	bne	a5,zero,.L50
	.loc 3 323 16
	li	a5,0
	j	.L48
.L50:
	.loc 3 326 12
	li	a5,-1
.L48:
	.loc 3 327 1
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
	.size	x509_string_cmp, .-x509_string_cmp
	.section	.text.x509_name_cmp,"ax",@progbits
	.align	1
	.type	x509_name_cmp, @function
x509_name_cmp:
.LFB87:
	.loc 3 340 1
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
	.loc 3 342 11
	j	.L53
.L61:
	.loc 3 343 12
	lw	a5,-20(s0)
	beq	a5,zero,.L54
	.loc 3 343 22 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L55
.L54:
	.loc 3 344 20
	li	a5,-1
	j	.L56
.L55:
	.loc 3 348 19
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 3 348 33
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 3 348 12
	bne	a4,a5,.L57
	.loc 3 349 19
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 3 349 33
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 3 348 38 discriminator 1
	bne	a4,a5,.L57
	.loc 3 350 26
	lw	a5,-20(s0)
	lw	a4,8(a5)
	.loc 3 350 36
	lw	a5,-24(s0)
	lw	a3,8(a5)
	.loc 3 350 46
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 3 350 13
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 3 349 38
	beq	a5,zero,.L58
.L57:
	.loc 3 351 20
	li	a5,-1
	j	.L56
.L58:
	.loc 3 355 29
	lw	a5,-20(s0)
	addi	a4,a5,12
	.loc 3 355 38
	lw	a5,-24(s0)
	addi	a5,a5,12
	.loc 3 355 13
	mv	a1,a5
	mv	a0,a4
	call	x509_string_cmp
	mv	a5,a0
	.loc 3 355 12 discriminator 1
	beq	a5,zero,.L59
	.loc 3 356 20
	li	a5,-1
	j	.L56
.L59:
	.loc 3 360 14
	lw	a5,-20(s0)
	lbu	a4,28(a5)
	.loc 3 360 32
	lw	a5,-24(s0)
	lbu	a5,28(a5)
	.loc 3 360 12
	beq	a4,a5,.L60
	.loc 3 361 20
	li	a5,-1
	j	.L56
.L60:
	.loc 3 364 11
	lw	a5,-20(s0)
	lw	a5,24(a5)
	sw	a5,-20(s0)
	.loc 3 365 11
	lw	a5,-24(s0)
	lw	a5,24(a5)
	sw	a5,-24(s0)
.L53:
	.loc 3 342 21
	lw	a5,-20(s0)
	bne	a5,zero,.L61
	.loc 3 342 21 is_stmt 0 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L61
	.loc 3 369 12 is_stmt 1
	li	a5,0
.L56:
	.loc 3 370 1
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
.LFE87:
	.size	x509_name_cmp, .-x509_name_cmp
	.section	.text.x509_crt_verify_chain_reset,"ax",@progbits
	.align	1
	.type	x509_crt_verify_chain_reset, @function
x509_crt_verify_chain_reset:
.LFB88:
	.loc 3 377 1
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
	.loc 3 380 12
	sw	zero,-20(s0)
	.loc 3 380 5
	j	.L63
.L64:
	.loc 3 381 33
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	sw	zero,0(a5)
	.loc 3 382 35
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	li	a4,-1
	sw	a4,4(a5)
	.loc 3 380 31 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L63:
	.loc 3 380 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,9
	bleu	a4,a5,.L64
	.loc 3 385 20
	lw	a5,-36(s0)
	sw	zero,80(a5)
	.loc 3 388 35
	lw	a5,-36(s0)
	sw	zero,84(a5)
	.loc 3 390 1
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
	.size	x509_crt_verify_chain_reset, .-x509_crt_verify_chain_reset
	.section	.rodata
	.align	2
.LC0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509_crt.c"
	.section	.text.x509_get_version,"ax",@progbits
	.align	1
	.type	x509_get_version, @function
x509_get_version:
.LFB89:
	.loc 3 398 1
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
	.loc 3 399 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 402 16
	addi	a5,s0,-24
	li	a3,160
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 402 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L66
	.loc 3 405 12
	lw	a4,-20(s0)
	li	a5,-98
	bne	a4,a5,.L67
	.loc 3 406 18
	lw	a5,-44(s0)
	sw	zero,0(a5)
	.loc 3 407 20
	li	a5,0
	j	.L71
.L67:
	.loc 3 410 16
	li	a3,410
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-384
	call	mbedtls_error_add
	mv	a5,a0
	j	.L71
.L66:
	.loc 3 413 11
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 3 413 14
	lw	a5,-24(s0)
	.loc 3 413 9
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 3 415 16
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_int
	sw	a0,-20(s0)
	.loc 3 415 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L69
	.loc 3 416 16
	li	a3,416
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-512
	call	mbedtls_error_add
	mv	a5,a0
	j	.L71
.L69:
	.loc 3 419 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 419 8
	lw	a4,-40(s0)
	beq	a4,a5,.L70
	.loc 3 420 16
	li	a3,420
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-512
	call	mbedtls_error_add
	mv	a5,a0
	j	.L71
.L70:
	.loc 3 424 12
	li	a5,0
.L71:
	.loc 3 425 1
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
.LFE89:
	.size	x509_get_version, .-x509_get_version
	.section	.text.x509_get_dates,"ax",@progbits
	.align	1
	.type	x509_get_dates, @function
x509_get_dates:
.LFB90:
	.loc 3 436 1
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
	.loc 3 437 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 440 16
	addi	a5,s0,-24
	li	a3,48
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 440 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L73
	.loc 3 442 16
	li	a3,442
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1024
	call	mbedtls_error_add
	mv	a5,a0
	j	.L78
.L73:
	.loc 3 445 11
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 3 445 14
	lw	a5,-24(s0)
	.loc 3 445 9
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 3 447 16
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_x509_get_time
	sw	a0,-20(s0)
	.loc 3 447 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L75
	.loc 3 448 16
	lw	a5,-20(s0)
	j	.L78
.L75:
	.loc 3 451 16
	lw	a2,-48(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_x509_get_time
	sw	a0,-20(s0)
	.loc 3 451 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L76
	.loc 3 452 16
	lw	a5,-20(s0)
	j	.L78
.L76:
	.loc 3 455 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 455 8
	lw	a4,-40(s0)
	beq	a4,a5,.L77
	.loc 3 456 16
	li	a3,456
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1024
	call	mbedtls_error_add
	mv	a5,a0
	j	.L78
.L77:
	.loc 3 460 12
	li	a5,0
.L78:
	.loc 3 461 1
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
.LFE90:
	.size	x509_get_dates, .-x509_get_dates
	.section	.text.x509_get_uid,"ax",@progbits
	.align	1
	.type	x509_get_uid, @function
x509_get_uid:
.LFB91:
	.loc 3 469 1
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
	.loc 3 470 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 472 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 472 8
	lw	a4,-40(s0)
	bne	a4,a5,.L80
	.loc 3 473 16
	li	a5,0
	j	.L81
.L80:
	.loc 3 476 17
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 476 16
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 3 476 14
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 3 478 16
	lw	a5,-44(s0)
	addi	a4,a5,4
	lw	a5,-48(s0)
	ori	a5,a5,160
	mv	a3,a5
	mv	a2,a4
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 478 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L82
	.loc 3 481 12
	lw	a4,-20(s0)
	li	a5,-98
	bne	a4,a5,.L83
	.loc 3 482 20
	li	a5,0
	j	.L81
.L83:
	.loc 3 485 16
	li	a3,485
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-384
	call	mbedtls_error_add
	mv	a5,a0
	j	.L81
.L82:
	.loc 3 488 14
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 3 488 12
	lw	a5,-44(s0)
	sw	a4,8(a5)
	.loc 3 489 5
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 3 489 14
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 3 489 8
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 3 491 12
	li	a5,0
.L81:
	.loc 3 492 1
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
.LFE91:
	.size	x509_get_uid, .-x509_get_uid
	.section	.text.x509_get_basic_constraints,"ax",@progbits
	.align	1
	.type	x509_get_basic_constraints, @function
x509_get_basic_constraints:
.LFB92:
	.loc 3 498 1
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
	.loc 3 499 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 507 16
	lw	a5,-44(s0)
	sw	zero,0(a5)
	.loc 3 508 18
	lw	a5,-48(s0)
	sw	zero,0(a5)
	.loc 3 510 16
	addi	a5,s0,-24
	li	a3,48
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 510 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L85
	.loc 3 512 16
	li	a3,512
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L95
.L85:
	.loc 3 515 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 515 8
	lw	a4,-40(s0)
	bne	a4,a5,.L87
	.loc 3 516 16
	li	a5,0
	j	.L95
.L87:
	.loc 3 519 16
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_bool
	sw	a0,-20(s0)
	.loc 3 519 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L88
	.loc 3 520 12
	lw	a4,-20(s0)
	li	a5,-98
	bne	a4,a5,.L89
	.loc 3 521 19
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_int
	sw	a0,-20(s0)
.L89:
	.loc 3 524 12
	lw	a5,-20(s0)
	beq	a5,zero,.L90
	.loc 3 525 20
	li	a3,525
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L95
.L90:
	.loc 3 528 13
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 3 528 12
	beq	a5,zero,.L88
	.loc 3 529 24
	lw	a5,-44(s0)
	li	a4,1
	sw	a4,0(a5)
.L88:
	.loc 3 533 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 533 8
	lw	a4,-40(s0)
	bne	a4,a5,.L91
	.loc 3 534 16
	li	a5,0
	j	.L95
.L91:
	.loc 3 537 16
	lw	a2,-48(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_int
	sw	a0,-20(s0)
	.loc 3 537 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L92
	.loc 3 538 16
	li	a3,538
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L95
.L92:
	.loc 3 541 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 541 8
	lw	a4,-40(s0)
	beq	a4,a5,.L93
	.loc 3 542 16
	li	a3,542
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L95
.L93:
	.loc 3 548 9
	lw	a5,-48(s0)
	lw	a4,0(a5)
	.loc 3 548 8
	li	a5,-2147483648
	addi	a5,a5,-1
	bne	a4,a5,.L94
	.loc 3 549 16
	li	a3,549
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-100
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L95
.L94:
	.loc 3 553 6
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 3 553 19
	addi	a4,a5,1
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 3 555 12
	li	a5,0
.L95:
	.loc 3 556 1
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
.LFE92:
	.size	x509_get_basic_constraints, .-x509_get_basic_constraints
	.section	.text.x509_get_ext_key_usage,"ax",@progbits
	.align	1
	.type	x509_get_ext_key_usage, @function
x509_get_ext_key_usage:
.LFB93:
	.loc 3 566 1
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
	.loc 3 567 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 569 16
	li	a3,6
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_sequence_of
	sw	a0,-20(s0)
	.loc 3 569 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L97
	.loc 3 570 16
	li	a3,570
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L98
.L97:
	.loc 3 574 27
	lw	a5,-44(s0)
	lw	a5,8(a5)
	.loc 3 574 8
	bne	a5,zero,.L99
	.loc 3 575 16
	li	a3,575
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-100
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L98
.L99:
	.loc 3 579 12
	li	a5,0
.L98:
	.loc 3 580 1
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
	.size	x509_get_ext_key_usage, .-x509_get_ext_key_usage
	.section	.text.x509_get_subject_key_id,"ax",@progbits
	.align	1
	.type	x509_get_subject_key_id, @function
x509_get_subject_key_id:
.LFB94:
	.loc 3 590 1
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
	.loc 3 591 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 592 12
	sw	zero,-24(s0)
	.loc 3 594 16
	addi	a5,s0,-24
	li	a3,4
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 594 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L101
	.loc 3 596 16
	li	a3,596
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L104
.L101:
	.loc 3 599 25
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	sw	a4,4(a5)
	.loc 3 600 25
	lw	a5,-44(s0)
	li	a4,4
	sw	a4,0(a5)
	.loc 3 601 25
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 3 601 23
	lw	a5,-44(s0)
	sw	a4,8(a5)
	.loc 3 602 5
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 3 602 8
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 3 604 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 604 8
	lw	a4,-40(s0)
	beq	a4,a5,.L103
	.loc 3 605 16
	li	a3,605
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L104
.L103:
	.loc 3 609 12
	li	a5,0
.L104:
	.loc 3 610 1
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
.LFE94:
	.size	x509_get_subject_key_id, .-x509_get_subject_key_id
	.section	.text.x509_get_authority_key_id,"ax",@progbits
	.align	1
	.type	x509_get_authority_key_id, @function
x509_get_authority_key_id:
.LFB95:
	.loc 3 623 1
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
	.loc 3 624 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 625 12
	sw	zero,-24(s0)
	.loc 3 627 16
	addi	a5,s0,-24
	li	a3,48
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 627 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L106
	.loc 3 629 16
	li	a3,629
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L116
.L106:
	.loc 3 632 9
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 3 632 12
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 3 632 8
	lw	a4,-40(s0)
	beq	a4,a5,.L108
	.loc 3 633 16
	li	a3,633
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L116
.L108:
	.loc 3 637 11
	addi	a5,s0,-24
	li	a3,128
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 641 8
	lw	a5,-20(s0)
	bne	a5,zero,.L109
	.loc 3 642 45
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	sw	a4,4(a5)
	.loc 3 643 45
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 3 643 43
	lw	a5,-44(s0)
	sw	a4,8(a5)
	.loc 3 647 45
	lw	a5,-44(s0)
	li	a4,4
	sw	a4,0(a5)
	.loc 3 649 9
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 3 649 12
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	j	.L110
.L109:
	.loc 3 650 15
	lw	a4,-20(s0)
	li	a5,-98
	beq	a4,a5,.L110
	.loc 3 651 16
	li	a3,651
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L116
.L110:
	.loc 3 654 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 654 8
	lw	a4,-40(s0)
	bleu	a4,a5,.L111
	.loc 3 656 20
	addi	a5,s0,-24
	li	a3,161
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 656 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L112
	.loc 3 661 20
	li	a3,661
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L116
.L112:
	.loc 3 665 54
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 3 664 15
	lw	a5,-24(s0)
	.loc 3 665 56
	add	a4,a4,a5
	.loc 3 664 15
	lw	a5,-44(s0)
	addi	a5,a5,12
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_x509_get_subject_alt_name_ext
	sw	a0,-20(s0)
	.loc 3 667 12
	lw	a5,-20(s0)
	beq	a5,zero,.L113
	.loc 3 668 20
	lw	a5,-20(s0)
	j	.L116
.L113:
	.loc 3 672 20
	addi	a5,s0,-24
	li	a3,130
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 672 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L114
	.loc 3 674 20
	li	a3,674
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L116
.L114:
	.loc 3 676 57
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	sw	a4,32(a5)
	.loc 3 677 57
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 3 677 55
	lw	a5,-44(s0)
	sw	a4,36(a5)
	.loc 3 678 57
	lw	a5,-44(s0)
	li	a4,2
	sw	a4,28(a5)
	.loc 3 679 9
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 3 679 12
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
.L111:
	.loc 3 682 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 682 8
	lw	a4,-40(s0)
	beq	a4,a5,.L115
	.loc 3 683 16
	li	a5,-8192
	addi	a5,a5,-1382
	j	.L116
.L115:
	.loc 3 687 12
	li	a5,0
.L116:
	.loc 3 688 1
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
.LFE95:
	.size	x509_get_authority_key_id, .-x509_get_authority_key_id
	.section	.rodata
	.align	2
.LC1:
	.string	"U\035 "
	.string	""
	.section	.text.x509_get_certificate_policies,"ax",@progbits
	.align	1
	.type	x509_get_certificate_policies, @function
x509_get_certificate_policies:
.LFB96:
	.loc 3 742 1
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
	.loc 3 743 14
	sw	zero,-20(s0)
	.loc 3 746 28
	lw	a5,-76(s0)
	sw	a5,-24(s0)
	.loc 3 749 11
	addi	a5,s0,-40
	li	a3,48
	mv	a2,a5
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-28(s0)
	.loc 3 751 8
	lw	a5,-28(s0)
	beq	a5,zero,.L118
	.loc 3 752 16
	li	a3,752
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-28(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L138
.L118:
	.loc 3 755 9
	lw	a5,-68(s0)
	lw	a4,0(a5)
	.loc 3 755 12
	lw	a5,-40(s0)
	add	a5,a4,a5
	.loc 3 755 8
	lw	a4,-72(s0)
	beq	a4,a5,.L120
	.loc 3 756 16
	li	a3,756
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L138
.L120:
	.loc 3 763 13
	lw	a5,-40(s0)
	.loc 3 763 8
	bne	a5,zero,.L122
	.loc 3 764 16
	li	a3,764
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L138
.L136:
.LBB9:
	.loc 3 775 20
	addi	a5,s0,-40
	li	a3,48
	mv	a2,a5
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-28(s0)
	.loc 3 775 12 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L123
	.loc 3 777 20
	li	a3,777
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-28(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L138
.L123:
	.loc 3 780 22
	lw	a5,-68(s0)
	lw	a4,0(a5)
	.loc 3 780 25
	lw	a5,-40(s0)
	.loc 3 780 20
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 3 782 20
	addi	a5,s0,-40
	li	a3,6
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-68(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-28(s0)
	.loc 3 782 12 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L125
	.loc 3 784 20
	li	a3,784
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-28(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L138
.L125:
	.loc 3 787 24
	li	a5,6
	sw	a5,-52(s0)
	.loc 3 788 24
	lw	a5,-40(s0)
	sw	a5,-48(s0)
	.loc 3 789 24
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 3 789 22
	sw	a5,-44(s0)
	.loc 3 794 73
	lw	a4,-48(s0)
	.loc 3 794 80
	li	a5,4
	bne	a4,a5,.L126
	.loc 3 794 134 discriminator 2
	lw	a5,-44(s0)
	.loc 3 794 83 discriminator 2
	lw	a4,-48(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	memcmp
	mv	a5,a0
	.loc 3 794 80 discriminator 3
	beq	a5,zero,.L127
.L126:
	.loc 3 794 80 is_stmt 0 discriminator 4
	li	a5,1
	.loc 3 794 80
	j	.L128
.L127:
	.loc 3 794 80 discriminator 5
	li	a5,0
.L128:
	.loc 3 794 12 is_stmt 1 discriminator 7
	beq	a5,zero,.L129
	.loc 3 799 23
	li	a5,-8192
	addi	a5,a5,-128
	sw	a5,-20(s0)
.L129:
	.loc 3 803 21
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 3 803 12
	beq	a5,zero,.L130
	.loc 3 804 20
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 3 804 16
	beq	a5,zero,.L131
	.loc 3 805 24
	li	a5,-8192
	addi	a5,a5,-1280
	j	.L138
.L131:
	.loc 3 808 25
	li	a1,16
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 3 808 23 discriminator 1
	lw	a5,-24(s0)
	sw	a4,12(a5)
	.loc 3 810 20
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 3 810 16
	bne	a5,zero,.L132
	.loc 3 811 24
	li	a3,811
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-106
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L138
.L132:
	.loc 3 815 17
	lw	a5,-24(s0)
	lw	a5,12(a5)
	sw	a5,-24(s0)
.L130:
	.loc 3 818 13
	lw	a5,-24(s0)
	sw	a5,-36(s0)
	.loc 3 819 30
	lw	a4,-52(s0)
	.loc 3 819 18
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 3 820 28
	lw	a4,-44(s0)
	.loc 3 820 16
	lw	a5,-36(s0)
	sw	a4,8(a5)
	.loc 3 821 30
	lw	a4,-48(s0)
	.loc 3 821 18
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 3 823 9
	lw	a5,-68(s0)
	lw	a4,0(a5)
	.loc 3 823 12
	lw	a5,-40(s0)
	add	a4,a4,a5
	lw	a5,-68(s0)
	sw	a4,0(a5)
	.loc 3 829 13
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 3 829 12
	lw	a4,-32(s0)
	bleu	a4,a5,.L133
	.loc 3 830 24
	addi	a5,s0,-40
	li	a3,48
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-68(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-28(s0)
	.loc 3 830 16 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L134
	.loc 3 833 24
	li	a3,833
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-28(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L138
.L134:
	.loc 3 838 13
	lw	a5,-68(s0)
	lw	a4,0(a5)
	.loc 3 838 16
	lw	a5,-40(s0)
	add	a4,a4,a5
	lw	a5,-68(s0)
	sw	a4,0(a5)
.L133:
	.loc 3 841 13
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 3 841 12
	lw	a4,-32(s0)
	beq	a4,a5,.L122
	.loc 3 842 20
	li	a3,842
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L138
.L122:
.LBE9:
	.loc 3 768 12
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 3 768 15
	lw	a4,-72(s0)
	bgtu	a4,a5,.L136
	.loc 3 848 15
	lw	a5,-24(s0)
	sw	zero,12(a5)
	.loc 3 850 9
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 3 850 8
	lw	a4,-72(s0)
	beq	a4,a5,.L137
	.loc 3 851 16
	li	a3,851
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L138
.L137:
	.loc 3 855 12
	lw	a5,-20(s0)
.L138:
	.loc 3 856 1
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
.LFE96:
	.size	x509_get_certificate_policies, .-x509_get_certificate_policies
	.section	.text.x509_get_crt_ext,"ax",@progbits
	.align	1
	.type	x509_get_crt_ext, @function
x509_get_crt_ext:
.LFB97:
	.loc 3 867 1
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
	.loc 3 868 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 872 9
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 3 872 8
	lw	a4,-72(s0)
	bne	a4,a5,.L140
	.loc 3 873 16
	li	a5,0
	j	.L180
.L140:
	.loc 3 876 16
	lw	a5,-76(s0)
	addi	a5,a5,236
	li	a3,3
	mv	a2,a5
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	mbedtls_x509_get_ext
	sw	a0,-20(s0)
	.loc 3 876 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L142
	.loc 3 877 16
	lw	a5,-20(s0)
	j	.L180
.L142:
	.loc 3 880 22
	lw	a5,-76(s0)
	lw	a4,244(a5)
	.loc 3 880 38
	lw	a5,-76(s0)
	lw	a5,240(a5)
	.loc 3 880 9
	add	a5,a4,a5
	sw	a5,-72(s0)
	.loc 3 881 11
	j	.L143
.L178:
.LBB10:
	.loc 3 888 26
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	sw	zero,-40(s0)
	.loc 3 889 13
	sw	zero,-52(s0)
	.loc 3 890 13
	sw	zero,-56(s0)
	.loc 3 892 20
	addi	a5,s0,-36
	li	a3,48
	mv	a2,a5
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 892 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L144
	.loc 3 894 20
	li	a3,894
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L180
.L144:
	.loc 3 897 24
	lw	a5,-68(s0)
	lw	a4,0(a5)
	.loc 3 897 27
	lw	a5,-36(s0)
	.loc 3 897 22
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 900 20
	addi	a5,s0,-48
	addi	a5,a5,4
	li	a3,6
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-68(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 900 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L146
	.loc 3 902 20
	li	a3,902
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L180
.L146:
	.loc 3 905 22
	li	a5,6
	sw	a5,-48(s0)
	.loc 3 906 22
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 3 906 20
	sw	a5,-40(s0)
	.loc 3 907 9
	lw	a5,-68(s0)
	lw	a4,0(a5)
	.loc 3 907 23
	lw	a5,-44(s0)
	.loc 3 907 12
	add	a4,a4,a5
	lw	a5,-68(s0)
	sw	a4,0(a5)
	.loc 3 910 20
	addi	a5,s0,-52
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-68(s0)
	call	mbedtls_asn1_get_bool
	sw	a0,-20(s0)
	.loc 3 910 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L147
	.loc 3 910 79 discriminator 2
	lw	a4,-20(s0)
	li	a5,-98
	beq	a4,a5,.L147
	.loc 3 912 20
	li	a3,912
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L180
.L147:
	.loc 3 916 20
	addi	a5,s0,-36
	li	a3,4
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-68(s0)
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 916 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L148
	.loc 3 918 20
	li	a3,918
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L180
.L148:
	.loc 3 921 25
	lw	a5,-68(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 3 922 25
	lw	a5,-68(s0)
	lw	a4,0(a5)
	.loc 3 922 28
	lw	a5,-36(s0)
	.loc 3 922 23
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 3 924 12
	lw	a4,-32(s0)
	lw	a5,-24(s0)
	beq	a4,a5,.L149
	.loc 3 925 20
	li	a3,925
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L180
.L149:
	.loc 3 932 15
	addi	a4,s0,-56
	addi	a5,s0,-48
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_oid_get_x509_ext_type
	sw	a0,-20(s0)
	.loc 3 934 12
	lw	a5,-20(s0)
	beq	a5,zero,.L150
	.loc 3 936 16
	lw	a5,-80(s0)
	beq	a5,zero,.L151
	.loc 3 937 23
	lw	a3,-52(s0)
	lw	a5,-68(s0)
	lw	a4,0(a5)
	addi	a2,s0,-48
	lw	a6,-80(s0)
	lw	a5,-32(s0)
	lw	a1,-76(s0)
	lw	a0,-84(s0)
	jalr	a6
.LVL0:
	sw	a0,-20(s0)
	.loc 3 938 20
	lw	a5,-20(s0)
	beq	a5,zero,.L152
	.loc 3 938 30 discriminator 1
	lw	a5,-52(s0)
	beq	a5,zero,.L152
	.loc 3 939 28
	lw	a5,-20(s0)
	j	.L180
.L152:
	.loc 3 941 20
	lw	a5,-68(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 3 942 17
	j	.L143
.L151:
	.loc 3 946 16
	lw	a5,-68(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 3 948 17
	lw	a5,-52(s0)
	.loc 3 948 16
	beq	a5,zero,.L181
	.loc 3 950 24
	li	a3,950
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-98
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L180
.L150:
	.loc 3 957 17
	lw	a5,-76(s0)
	lw	a4,344(a5)
	.loc 3 957 29
	lw	a5,-56(s0)
	and	a5,a4,a5
	.loc 3 957 12
	beq	a5,zero,.L155
	.loc 3 958 20
	li	a5,-8192
	addi	a5,a5,-1280
	j	.L180
.L155:
	.loc 3 961 12
	lw	a5,-76(s0)
	lw	a4,344(a5)
	.loc 3 961 24
	lw	a5,-56(s0)
	or	a4,a4,a5
	lw	a5,-76(s0)
	sw	a4,344(a5)
	.loc 3 963 9
	lw	a5,-56(s0)
	li	a4,65536
	beq	a5,a4,.L156
	li	a4,65536
	bgt	a5,a4,.L157
	addi	a4,a5,-2048
	beq	a4,zero,.L158
	li	a4,4096
	addi	a4,a4,-2048
	bgt	a5,a4,.L157
	li	a4,256
	beq	a5,a4,.L159
	li	a4,256
	bgt	a5,a4,.L157
	li	a4,32
	beq	a5,a4,.L160
	li	a4,32
	bgt	a5,a4,.L157
	li	a4,8
	beq	a5,a4,.L161
	li	a4,8
	bgt	a5,a4,.L157
	li	a4,4
	beq	a5,a4,.L162
	li	a4,4
	bgt	a5,a4,.L157
	li	a4,1
	beq	a5,a4,.L163
	li	a4,2
	beq	a5,a4,.L164
	j	.L157
.L159:
	.loc 3 966 28
	lw	a5,-76(s0)
	addi	a4,a5,348
	lw	a5,-76(s0)
	addi	a5,a5,352
	mv	a3,a5
	mv	a2,a4
	lw	a1,-32(s0)
	lw	a0,-68(s0)
	call	x509_get_basic_constraints
	sw	a0,-20(s0)
	.loc 3 966 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L182
	.loc 3 968 28
	lw	a5,-20(s0)
	j	.L180
.L162:
	.loc 3 974 28
	lw	a5,-76(s0)
	addi	a5,a5,356
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-68(s0)
	call	mbedtls_x509_get_key_usage
	sw	a0,-20(s0)
	.loc 3 974 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L183
	.loc 3 976 28
	lw	a5,-20(s0)
	j	.L180
.L158:
	.loc 3 982 28
	lw	a5,-76(s0)
	addi	a5,a5,360
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-68(s0)
	call	x509_get_ext_key_usage
	sw	a0,-20(s0)
	.loc 3 982 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L184
	.loc 3 984 28
	lw	a5,-20(s0)
	j	.L180
.L164:
	.loc 3 990 28
	lw	a5,-76(s0)
	addi	a5,a5,264
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-68(s0)
	call	x509_get_subject_key_id
	sw	a0,-20(s0)
	.loc 3 990 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L185
	.loc 3 992 28
	lw	a5,-20(s0)
	j	.L180
.L163:
	.loc 3 998 28
	lw	a5,-76(s0)
	addi	a5,a5,276
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-68(s0)
	call	x509_get_authority_key_id
	sw	a0,-20(s0)
	.loc 3 998 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L186
	.loc 3 1000 28
	lw	a5,-20(s0)
	j	.L180
.L160:
	.loc 3 1007 28
	lw	a5,-76(s0)
	addi	a5,a5,248
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-68(s0)
	call	mbedtls_x509_get_subject_alt_name
	sw	a0,-20(s0)
	.loc 3 1007 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L187
	.loc 3 1009 28
	lw	a5,-20(s0)
	j	.L180
.L156:
	.loc 3 1015 28
	lw	a5,-76(s0)
	addi	a5,a5,376
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-68(s0)
	call	mbedtls_x509_get_ns_cert_type
	sw	a0,-20(s0)
	.loc 3 1015 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L188
	.loc 3 1017 28
	lw	a5,-20(s0)
	j	.L180
.L161:
	.loc 3 1023 28
	lw	a5,-76(s0)
	addi	a5,a5,328
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-68(s0)
	call	x509_get_certificate_policies
	sw	a0,-20(s0)
	.loc 3 1023 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L189
	.loc 3 1027 24
	lw	a4,-20(s0)
	li	a5,-8192
	addi	a5,a5,-128
	bne	a4,a5,.L174
	.loc 3 1027 40 discriminator 1
	lw	a5,-80(s0)
	beq	a5,zero,.L174
	.loc 3 1028 25
	lw	a3,-52(s0)
	addi	a2,s0,-48
	lw	a6,-80(s0)
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	lw	a1,-76(s0)
	lw	a0,-84(s0)
	jalr	a6
.LVL1:
	mv	a5,a0
	.loc 3 1027 82 discriminator 2
	beq	a5,zero,.L190
.L174:
	.loc 3 1033 25
	lw	a5,-52(s0)
	.loc 3 1033 24
	beq	a5,zero,.L175
	.loc 3 1034 32
	lw	a5,-20(s0)
	j	.L180
.L175:
	.loc 3 1042 24
	lw	a4,-20(s0)
	li	a5,-8192
	addi	a5,a5,-128
	beq	a4,a5,.L189
	.loc 3 1043 32
	lw	a5,-20(s0)
	j	.L180
.L157:
	.loc 3 1054 21
	lw	a5,-52(s0)
	.loc 3 1054 20
	beq	a5,zero,.L176
	.loc 3 1055 28
	li	a5,-8192
	addi	a5,a5,-128
	j	.L180
.L176:
	.loc 3 1057 24
	lw	a5,-68(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
	j	.L143
.L181:
	.loc 3 953 13
	nop
	j	.L143
.L182:
	.loc 3 970 17
	nop
	j	.L143
.L183:
	.loc 3 978 17
	nop
	j	.L143
.L184:
	.loc 3 986 17
	nop
	j	.L143
.L185:
	.loc 3 994 17
	nop
	j	.L143
.L186:
	.loc 3 1002 17
	nop
	j	.L143
.L187:
	.loc 3 1011 17
	nop
	j	.L143
.L188:
	.loc 3 1019 17
	nop
	j	.L143
.L189:
	.loc 3 1046 17
	nop
	j	.L143
.L190:
	.loc 3 1030 25
	nop
.L143:
.LBE10:
	.loc 3 881 12
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 3 881 15
	lw	a4,-72(s0)
	bgtu	a4,a5,.L178
	.loc 3 1062 9
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 3 1062 8
	lw	a4,-72(s0)
	beq	a4,a5,.L179
	.loc 3 1063 16
	li	a3,1063
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-1280
	call	mbedtls_error_add
	mv	a5,a0
	j	.L180
.L179:
	.loc 3 1067 12
	li	a5,0
.L180:
	.loc 3 1068 1
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
.LFE97:
	.size	x509_get_crt_ext, .-x509_get_crt_ext
	.section	.text.x509_crt_parse_der_core,"ax",@progbits
	.align	1
	.type	x509_crt_parse_der_core, @function
x509_crt_parse_der_core:
.LFB98:
	.loc 3 1079 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	sw	a4,-100(s0)
	sw	a5,-104(s0)
	.loc 3 1080 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 1085 5
	addi	a5,s0,-48
	li	a2,12
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 3 1086 5
	addi	a5,s0,-60
	li	a2,12
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 3 1087 5
	addi	a5,s0,-72
	li	a2,12
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 3 1092 8
	lw	a5,-84(s0)
	beq	a5,zero,.L192
	.loc 3 1092 20 discriminator 1
	lw	a5,-88(s0)
	bne	a5,zero,.L193
.L192:
	.loc 3 1093 16
	li	a5,-8192
	addi	a5,a5,-2048
	j	.L222
.L193:
	.loc 3 1097 7
	lw	a5,-88(s0)
	sw	a5,-36(s0)
	.loc 3 1098 9
	lw	a5,-92(s0)
	sw	a5,-32(s0)
	.loc 3 1099 13
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	.loc 3 1099 9
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1107 16
	addi	a4,s0,-32
	addi	a5,s0,-36
	li	a3,48
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 1107 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L195
	.loc 3 1109 9
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1110 16
	li	a5,-8192
	addi	a5,a5,-384
	j	.L222
.L195:
	.loc 3 1113 23
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	.loc 3 1113 19
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1113 9
	lw	a5,-28(s0)
	sw	a5,-24(s0)
	.loc 3 1114 38
	lw	a4,-28(s0)
	lw	a5,-88(s0)
	sub	a5,a4,a5
	.loc 3 1114 20
	mv	a4,a5
	.loc 3 1114 18
	lw	a5,-84(s0)
	sw	a4,8(a5)
	.loc 3 1115 8
	lw	a5,-96(s0)
	beq	a5,zero,.L196
	.loc 3 1117 26
	lw	a5,-84(s0)
	lw	a5,8(a5)
	mv	a1,a5
	li	a0,1
	call	calloc
	mv	a5,a0
	.loc 3 1117 24 discriminator 1
	sw	a5,-36(s0)
	.loc 3 1117 20 discriminator 1
	lw	a4,-36(s0)
	lw	a5,-84(s0)
	sw	a4,12(a5)
	.loc 3 1118 21
	lw	a5,-84(s0)
	lw	a5,12(a5)
	.loc 3 1118 12
	bne	a5,zero,.L197
	.loc 3 1119 20
	li	a5,-12288
	addi	a5,a5,1920
	j	.L222
.L197:
	.loc 3 1122 24
	lw	a5,-84(s0)
	lw	a4,12(a5)
	.loc 3 1122 9
	lw	a5,-84(s0)
	lw	a5,8(a5)
	mv	a2,a5
	lw	a1,-88(s0)
	mv	a0,a4
	call	memcpy
	.loc 3 1123 25
	lw	a5,-84(s0)
	li	a4,1
	sw	a4,0(a5)
	.loc 3 1125 11
	lw	a4,-36(s0)
	.loc 3 1125 22
	lw	a5,-84(s0)
	lw	a3,8(a5)
	.loc 3 1125 27
	lw	a5,-32(s0)
	sub	a5,a3,a5
	.loc 3 1125 11
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 3 1126 27
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	.loc 3 1126 23
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1126 13
	lw	a5,-28(s0)
	sw	a5,-24(s0)
	j	.L198
.L196:
	.loc 3 1128 20
	lw	a5,-84(s0)
	lw	a4,-88(s0)
	sw	a4,12(a5)
	.loc 3 1129 25
	lw	a5,-84(s0)
	sw	zero,0(a5)
.L198:
	.loc 3 1135 16
	lw	a4,-36(s0)
	lw	a5,-84(s0)
	sw	a4,24(a5)
	.loc 3 1137 16
	addi	a4,s0,-32
	addi	a5,s0,-36
	li	a3,48
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 1137 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L199
	.loc 3 1139 9
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1140 16
	li	a3,1140
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-384
	call	mbedtls_error_add
	mv	a5,a0
	j	.L222
.L199:
	.loc 3 1143 13
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	.loc 3 1143 9
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1144 44
	lw	a5,-84(s0)
	lw	a5,24(a5)
	.loc 3 1144 34
	lw	a4,-24(s0)
	sub	a5,a4,a5
	.loc 3 1144 20
	mv	a4,a5
	.loc 3 1144 18
	lw	a5,-84(s0)
	sw	a4,20(a5)
	.loc 3 1153 16
	lw	a5,-84(s0)
	addi	a4,a5,28
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	x509_get_version
	sw	a0,-20(s0)
	.loc 3 1153 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L200
	.loc 3 1154 16
	lw	a5,-84(s0)
	addi	a4,a5,32
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_x509_get_serial
	sw	a0,-20(s0)
	.loc 3 1153 63 discriminator 2
	lw	a5,-20(s0)
	bne	a5,zero,.L200
	.loc 3 1155 16
	lw	a5,-84(s0)
	addi	a4,a5,44
	addi	a3,s0,-48
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_x509_get_alg
	sw	a0,-20(s0)
	.loc 3 1154 69
	lw	a5,-20(s0)
	beq	a5,zero,.L201
.L200:
	.loc 3 1157 9
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1158 16
	lw	a5,-20(s0)
	j	.L222
.L201:
	.loc 3 1161 12
	lw	a5,-84(s0)
	lw	a5,28(a5)
	.loc 3 1161 8
	blt	a5,zero,.L202
	.loc 3 1161 32 discriminator 1
	lw	a5,-84(s0)
	lw	a4,28(a5)
	.loc 3 1161 26 discriminator 1
	li	a5,2
	ble	a4,a5,.L203
.L202:
	.loc 3 1162 9
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1163 16
	li	a5,-8192
	addi	a5,a5,-1408
	j	.L222
.L203:
	.loc 3 1166 8
	lw	a5,-84(s0)
	lw	a5,28(a5)
	.loc 3 1166 17
	addi	a4,a5,1
	lw	a5,-84(s0)
	sw	a4,28(a5)
	.loc 3 1168 41
	lw	a5,-84(s0)
	addi	a0,a5,44
	.loc 3 1168 16
	lw	a5,-84(s0)
	addi	a2,a5,392
	lw	a5,-84(s0)
	addi	a3,a5,393
	lw	a5,-84(s0)
	addi	a4,a5,396
	addi	a5,s0,-48
	mv	a1,a5
	call	mbedtls_x509_get_sig_alg
	sw	a0,-20(s0)
	.loc 3 1168 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L204
	.loc 3 1171 9
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1172 16
	lw	a5,-20(s0)
	j	.L222
.L204:
	.loc 3 1178 23
	lw	a4,-36(s0)
	lw	a5,-84(s0)
	sw	a4,64(a5)
	.loc 3 1180 16
	addi	a4,s0,-32
	addi	a5,s0,-36
	li	a3,48
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 1180 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L205
	.loc 3 1182 9
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1183 16
	li	a3,1183
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-384
	call	mbedtls_error_add
	mv	a5,a0
	j	.L222
.L205:
	.loc 3 1186 16
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	.loc 3 1186 44
	add	a4,a4,a5
	.loc 3 1186 16
	lw	a5,-84(s0)
	addi	a3,a5,80
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_x509_get_name
	sw	a0,-20(s0)
	.loc 3 1186 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L206
	.loc 3 1187 9
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1188 16
	lw	a5,-20(s0)
	j	.L222
.L206:
	.loc 3 1191 39
	lw	a4,-36(s0)
	.loc 3 1191 56
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 3 1191 39
	sub	a5,a4,a5
	.loc 3 1191 27
	mv	a4,a5
	.loc 3 1191 25
	lw	a5,-84(s0)
	sw	a4,60(a5)
	.loc 3 1199 16
	lw	a5,-84(s0)
	addi	a4,a5,144
	lw	a5,-84(s0)
	addi	a3,a5,168
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	x509_get_dates
	sw	a0,-20(s0)
	.loc 3 1199 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L207
	.loc 3 1201 9
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1202 16
	lw	a5,-20(s0)
	j	.L222
.L207:
	.loc 3 1208 24
	lw	a4,-36(s0)
	lw	a5,-84(s0)
	sw	a4,76(a5)
	.loc 3 1210 16
	addi	a4,s0,-32
	addi	a5,s0,-36
	li	a3,48
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 3 1210 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L208
	.loc 3 1212 9
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1213 16
	li	a3,1213
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-8192
	addi	a0,a5,-384
	call	mbedtls_error_add
	mv	a5,a0
	j	.L222
.L208:
	.loc 3 1216 9
	lw	a5,-32(s0)
	.loc 3 1216 8
	beq	a5,zero,.L209
	.loc 3 1216 23 discriminator 1
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	.loc 3 1216 51 discriminator 1
	add	a4,a4,a5
	.loc 3 1216 23 discriminator 1
	lw	a5,-84(s0)
	addi	a3,a5,112
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_x509_get_name
	sw	a0,-20(s0)
	.loc 3 1216 13 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L209
	.loc 3 1217 9
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1218 16
	lw	a5,-20(s0)
	j	.L222
.L209:
	.loc 3 1221 40
	lw	a4,-36(s0)
	.loc 3 1221 58
	lw	a5,-84(s0)
	lw	a5,76(a5)
	.loc 3 1221 40
	sub	a5,a4,a5
	.loc 3 1221 28
	mv	a4,a5
	.loc 3 1221 26
	lw	a5,-84(s0)
	sw	a4,72(a5)
	.loc 3 1226 19
	lw	a4,-36(s0)
	lw	a5,-84(s0)
	sw	a4,200(a5)
	.loc 3 1227 16
	lw	a5,-84(s0)
	addi	a4,a5,204
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_pk_parse_subpubkey
	sw	a0,-20(s0)
	.loc 3 1227 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L210
	.loc 3 1228 9
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1229 16
	lw	a5,-20(s0)
	j	.L222
.L210:
	.loc 3 1231 35
	lw	a4,-36(s0)
	.loc 3 1231 48
	lw	a5,-84(s0)
	lw	a5,200(a5)
	.loc 3 1231 35
	sub	a5,a4,a5
	.loc 3 1231 23
	mv	a4,a5
	.loc 3 1231 21
	lw	a5,-84(s0)
	sw	a4,196(a5)
	.loc 3 1241 12
	lw	a5,-84(s0)
	lw	a4,28(a5)
	.loc 3 1241 8
	li	a5,2
	beq	a4,a5,.L211
	.loc 3 1241 33 discriminator 1
	lw	a5,-84(s0)
	lw	a4,28(a5)
	.loc 3 1241 27 discriminator 1
	li	a5,3
	bne	a4,a5,.L212
.L211:
	.loc 3 1242 15
	lw	a5,-84(s0)
	addi	a4,a5,212
	addi	a5,s0,-36
	li	a3,1
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	x509_get_uid
	sw	a0,-20(s0)
	.loc 3 1243 12
	lw	a5,-20(s0)
	beq	a5,zero,.L212
	.loc 3 1244 13
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1245 20
	lw	a5,-20(s0)
	j	.L222
.L212:
	.loc 3 1249 12
	lw	a5,-84(s0)
	lw	a4,28(a5)
	.loc 3 1249 8
	li	a5,2
	beq	a4,a5,.L213
	.loc 3 1249 33 discriminator 1
	lw	a5,-84(s0)
	lw	a4,28(a5)
	.loc 3 1249 27 discriminator 1
	li	a5,3
	bne	a4,a5,.L214
.L213:
	.loc 3 1250 15
	lw	a5,-84(s0)
	addi	a4,a5,224
	addi	a5,s0,-36
	li	a3,2
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	x509_get_uid
	sw	a0,-20(s0)
	.loc 3 1251 12
	lw	a5,-20(s0)
	beq	a5,zero,.L214
	.loc 3 1252 13
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1253 20
	lw	a5,-20(s0)
	j	.L222
.L214:
	.loc 3 1257 12
	lw	a5,-84(s0)
	lw	a4,28(a5)
	.loc 3 1257 8
	li	a5,3
	bne	a4,a5,.L215
	.loc 3 1258 15
	addi	a5,s0,-36
	lw	a4,-104(s0)
	lw	a3,-100(s0)
	lw	a2,-84(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	x509_get_crt_ext
	sw	a0,-20(s0)
	.loc 3 1259 12
	lw	a5,-20(s0)
	beq	a5,zero,.L215
	.loc 3 1260 13
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1261 20
	lw	a5,-20(s0)
	j	.L222
.L215:
	.loc 3 1265 11
	lw	a5,-36(s0)
	.loc 3 1265 8
	lw	a4,-24(s0)
	beq	a4,a5,.L216
	.loc 3 1266 9
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1267 16
	li	a3,1267
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-384
	call	mbedtls_error_add
	mv	a5,a0
	j	.L222
.L216:
	.loc 3 1271 9
	lw	a5,-28(s0)
	sw	a5,-24(s0)
	.loc 3 1280 16
	addi	a3,s0,-60
	addi	a4,s0,-72
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_x509_get_alg
	sw	a0,-20(s0)
	.loc 3 1280 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L217
	.loc 3 1281 9
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1282 16
	lw	a5,-20(s0)
	j	.L222
.L217:
	.loc 3 1285 21
	lw	a5,-84(s0)
	lw	a4,48(a5)
	.loc 3 1285 37
	lw	a5,-68(s0)
	.loc 3 1285 8
	bne	a4,a5,.L218
	.loc 3 1286 28
	lw	a5,-84(s0)
	lw	a4,52(a5)
	.loc 3 1286 40
	lw	a3,-64(s0)
	.loc 3 1286 9
	lw	a5,-84(s0)
	lw	a5,48(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 3 1285 42 discriminator 1
	bne	a5,zero,.L218
	.loc 3 1287 20
	lw	a4,-48(s0)
	.loc 3 1287 39
	lw	a5,-60(s0)
	.loc 3 1286 67
	bne	a4,a5,.L218
	.loc 3 1288 20
	lw	a4,-44(s0)
	.loc 3 1288 39
	lw	a5,-56(s0)
	.loc 3 1287 44
	bne	a4,a5,.L218
	.loc 3 1289 21
	lw	a5,-44(s0)
	.loc 3 1288 44
	beq	a5,zero,.L219
	.loc 3 1290 28
	lw	a5,-40(s0)
	.loc 3 1290 43
	lw	a4,-52(s0)
	.loc 3 1290 10
	lw	a3,-44(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 3 1289 31
	beq	a5,zero,.L219
.L218:
	.loc 3 1291 9
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1292 16
	li	a5,-8192
	addi	a5,a5,-1664
	j	.L222
.L219:
	.loc 3 1295 16
	lw	a5,-84(s0)
	addi	a4,a5,380
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_x509_get_sig
	sw	a0,-20(s0)
	.loc 3 1295 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L220
	.loc 3 1296 9
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1297 16
	lw	a5,-20(s0)
	j	.L222
.L220:
	.loc 3 1300 11
	lw	a5,-36(s0)
	.loc 3 1300 8
	lw	a4,-24(s0)
	beq	a4,a5,.L221
	.loc 3 1301 9
	lw	a0,-84(s0)
	call	mbedtls_x509_crt_free
	.loc 3 1302 16
	li	a3,1302
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-8192
	addi	a0,a5,-384
	call	mbedtls_error_add
	mv	a5,a0
	j	.L222
.L221:
	.loc 3 1306 12
	li	a5,0
.L222:
	.loc 3 1307 1
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
.LFE98:
	.size	x509_crt_parse_der_core, .-x509_crt_parse_der_core
	.section	.text.mbedtls_x509_crt_parse_der_internal,"ax",@progbits
	.align	1
	.type	mbedtls_x509_crt_parse_der_internal, @function
mbedtls_x509_crt_parse_der_internal:
.LFB99:
	.loc 3 1319 1
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
	.loc 3 1320 9
	li	a5,-110
	sw	a5,-28(s0)
	.loc 3 1321 23
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 3 1321 37
	sw	zero,-24(s0)
	.loc 3 1326 8
	lw	a5,-20(s0)
	beq	a5,zero,.L224
	.loc 3 1326 20 discriminator 1
	lw	a5,-40(s0)
	bne	a5,zero,.L227
.L224:
	.loc 3 1327 16
	li	a5,-8192
	addi	a5,a5,-2048
	j	.L226
.L229:
	.loc 3 1331 14
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 3 1332 13
	lw	a5,-20(s0)
	lw	a5,400(a5)
	sw	a5,-20(s0)
.L227:
	.loc 3 1330 15
	lw	a5,-20(s0)
	lw	a5,28(a5)
	.loc 3 1330 30
	beq	a5,zero,.L228
	.loc 3 1330 36 discriminator 1
	lw	a5,-20(s0)
	lw	a5,400(a5)
	.loc 3 1330 30 discriminator 1
	bne	a5,zero,.L229
.L228:
	.loc 3 1338 12
	lw	a5,-20(s0)
	lw	a5,28(a5)
	.loc 3 1338 8
	beq	a5,zero,.L230
	.loc 3 1338 33 discriminator 1
	lw	a5,-20(s0)
	lw	a5,400(a5)
	.loc 3 1338 27 discriminator 1
	bne	a5,zero,.L230
	.loc 3 1339 21
	li	a1,404
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 3 1339 19 discriminator 1
	lw	a5,-20(s0)
	sw	a4,400(a5)
	.loc 3 1341 16
	lw	a5,-20(s0)
	lw	a5,400(a5)
	.loc 3 1341 12
	bne	a5,zero,.L231
	.loc 3 1342 20
	li	a5,-12288
	addi	a5,a5,1920
	j	.L226
.L231:
	.loc 3 1345 14
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 3 1346 34
	lw	a5,-20(s0)
	lw	a5,400(a5)
	.loc 3 1346 9
	mv	a0,a5
	call	mbedtls_x509_crt_init
	.loc 3 1347 13
	lw	a5,-20(s0)
	lw	a5,400(a5)
	sw	a5,-20(s0)
.L230:
	.loc 3 1350 11
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	call	x509_crt_parse_der_core
	sw	a0,-28(s0)
	.loc 3 1351 8
	lw	a5,-28(s0)
	beq	a5,zero,.L232
	.loc 3 1352 12
	lw	a5,-24(s0)
	beq	a5,zero,.L233
	.loc 3 1353 24
	lw	a5,-24(s0)
	sw	zero,400(a5)
.L233:
	.loc 3 1356 12
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	beq	a4,a5,.L234
	.loc 3 1357 13
	lw	a0,-20(s0)
	call	free
.L234:
	.loc 3 1360 16
	lw	a5,-28(s0)
	j	.L226
.L232:
	.loc 3 1363 12
	li	a5,0
.L226:
	.loc 3 1364 1
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
.LFE99:
	.size	mbedtls_x509_crt_parse_der_internal, .-mbedtls_x509_crt_parse_der_internal
	.section	.text.mbedtls_x509_crt_parse_der_nocopy,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_parse_der_nocopy
	.type	mbedtls_x509_crt_parse_der_nocopy, @function
mbedtls_x509_crt_parse_der_nocopy:
.LFB100:
	.loc 3 1369 1
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
	.loc 3 1370 12
	li	a5,0
	li	a4,0
	li	a3,0
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_x509_crt_parse_der_internal
	mv	a5,a0
	.loc 3 1371 1
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
.LFE100:
	.size	mbedtls_x509_crt_parse_der_nocopy, .-mbedtls_x509_crt_parse_der_nocopy
	.section	.text.mbedtls_x509_crt_parse_der_with_ext_cb,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_parse_der_with_ext_cb
	.type	mbedtls_x509_crt_parse_der_with_ext_cb, @function
mbedtls_x509_crt_parse_der_with_ext_cb:
.LFB101:
	.loc 3 1379 1
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
	sw	a5,-40(s0)
	.loc 3 1380 12
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_x509_crt_parse_der_internal
	mv	a5,a0
	.loc 3 1381 1
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
.LFE101:
	.size	mbedtls_x509_crt_parse_der_with_ext_cb, .-mbedtls_x509_crt_parse_der_with_ext_cb
	.section	.text.mbedtls_x509_crt_parse_der,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_parse_der
	.type	mbedtls_x509_crt_parse_der, @function
mbedtls_x509_crt_parse_der:
.LFB102:
	.loc 3 1386 1
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
	.loc 3 1387 12
	li	a5,0
	li	a4,0
	li	a3,1
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_x509_crt_parse_der_internal
	mv	a5,a0
	.loc 3 1388 1
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
.LFE102:
	.size	mbedtls_x509_crt_parse_der, .-mbedtls_x509_crt_parse_der
	.section	.text.mbedtls_x509_crt_parse,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_parse
	.type	mbedtls_x509_crt_parse, @function
mbedtls_x509_crt_parse:
.LFB103:
	.loc 3 1397 1
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
	.loc 3 1406 8
	lw	a5,-20(s0)
	beq	a5,zero,.L242
	.loc 3 1406 22 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L243
.L242:
	.loc 3 1407 16
	li	a5,-8192
	addi	a5,a5,-2048
	j	.L244
.L243:
	.loc 3 1424 12
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_x509_crt_parse_der
	mv	a5,a0
.L244:
	.loc 3 1502 1
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
.LFE103:
	.size	mbedtls_x509_crt_parse, .-mbedtls_x509_crt_parse
	.section	.rodata
	.align	2
.LC2:
	.string	""
	.align	2
.LC3:
	.string	"???"
	.align	2
.LC4:
	.string	"%s%s"
	.align	2
.LC5:
	.string	", "
	.section	.text.x509_info_ext_key_usage,"ax",@progbits
	.align	1
	.type	x509_info_ext_key_usage, @function
x509_info_ext_key_usage:
.LFB104:
	.loc 3 1690 1
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
	.loc 3 1691 9
	li	a5,-110
	sw	a5,-36(s0)
	.loc 3 1693 12
	lw	a5,-56(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 3 1694 11
	lw	a5,-52(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 3 1695 34
	lw	a5,-60(s0)
	sw	a5,-28(s0)
	.loc 3 1696 17
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-32(s0)
	.loc 3 1698 11
	j	.L246
.L251:
	.loc 3 1699 13
	lw	a5,-28(s0)
	addi	a4,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_oid_get_extended_key_usage
	mv	a5,a0
	.loc 3 1699 12 discriminator 1
	beq	a5,zero,.L247
	.loc 3 1700 18
	lui	a5,%hi(.LC3)
	addi	a5,a5,%lo(.LC3)
	sw	a5,-40(s0)
.L247:
	.loc 3 1703 15
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a3,-32(s0)
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-36(s0)
	.loc 3 1704 17
	lw	a5,-36(s0)
	blt	a5,zero,.L248
	.loc 3 1704 29 discriminator 2
	lw	a5,-36(s0)
	.loc 3 1704 26 discriminator 2
	lw	a4,-20(s0)
	bgtu	a4,a5,.L249
.L248:
	.loc 3 1704 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1704 55 is_stmt 0
	j	.L252
.L249:
	.loc 3 1704 69 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 3 1704 66 discriminator 4
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 3 1704 88 discriminator 4
	lw	a5,-36(s0)
	.loc 3 1704 85 discriminator 4
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1706 13
	lui	a5,%hi(.LC5)
	addi	a5,a5,%lo(.LC5)
	sw	a5,-32(s0)
	.loc 3 1708 13
	lw	a5,-28(s0)
	lw	a5,12(a5)
	sw	a5,-28(s0)
.L246:
	.loc 3 1698 16
	lw	a5,-28(s0)
	bne	a5,zero,.L251
	.loc 3 1711 11
	lw	a5,-56(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 3 1712 10
	lw	a5,-52(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 3 1714 12
	li	a5,0
.L252:
	.loc 3 1715 1
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
.LFE104:
	.size	x509_info_ext_key_usage, .-x509_info_ext_key_usage
	.section	.text.x509_info_cert_policies,"ax",@progbits
	.align	1
	.type	x509_info_cert_policies, @function
x509_info_cert_policies:
.LFB105:
	.loc 3 1719 1
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
	.loc 3 1720 9
	li	a5,-110
	sw	a5,-36(s0)
	.loc 3 1722 12
	lw	a5,-56(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 3 1723 11
	lw	a5,-52(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 3 1724 34
	lw	a5,-60(s0)
	sw	a5,-28(s0)
	.loc 3 1725 17
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-32(s0)
	.loc 3 1727 11
	j	.L254
.L259:
	.loc 3 1728 13
	lw	a5,-28(s0)
	addi	a4,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_oid_get_certificate_policies
	mv	a5,a0
	.loc 3 1728 12 discriminator 1
	beq	a5,zero,.L255
	.loc 3 1729 18
	lui	a5,%hi(.LC3)
	addi	a5,a5,%lo(.LC3)
	sw	a5,-40(s0)
.L255:
	.loc 3 1732 15
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a3,-32(s0)
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-36(s0)
	.loc 3 1733 17
	lw	a5,-36(s0)
	blt	a5,zero,.L256
	.loc 3 1733 29 discriminator 2
	lw	a5,-36(s0)
	.loc 3 1733 26 discriminator 2
	lw	a4,-20(s0)
	bgtu	a4,a5,.L257
.L256:
	.loc 3 1733 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1733 55 is_stmt 0
	j	.L260
.L257:
	.loc 3 1733 69 is_stmt 1 discriminator 4
	lw	a5,-36(s0)
	.loc 3 1733 66 discriminator 4
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 3 1733 88 discriminator 4
	lw	a5,-36(s0)
	.loc 3 1733 85 discriminator 4
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1735 13
	lui	a5,%hi(.LC5)
	addi	a5,a5,%lo(.LC5)
	sw	a5,-32(s0)
	.loc 3 1737 13
	lw	a5,-28(s0)
	lw	a5,12(a5)
	sw	a5,-28(s0)
.L254:
	.loc 3 1727 16
	lw	a5,-28(s0)
	bne	a5,zero,.L259
	.loc 3 1740 11
	lw	a5,-56(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 3 1741 10
	lw	a5,-52(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 3 1743 12
	li	a5,0
.L260:
	.loc 3 1744 1
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
.LFE105:
	.size	x509_info_cert_policies, .-x509_info_cert_policies
	.section	.rodata
	.align	2
.LC6:
	.string	"\nCertificate is uninitialised!\n"
	.align	2
.LC7:
	.string	"%scert. version     : %d\n"
	.align	2
.LC8:
	.string	"%sserial number     : "
	.align	2
.LC9:
	.string	"\n%sissuer name       : "
	.align	2
.LC10:
	.string	"\n%ssubject name      : "
	.align	2
.LC11:
	.string	"\n%sissued  on        : %04d-%02d-%02d %02d:%02d:%02d"
	.align	2
.LC12:
	.string	"\n%sexpires on        : %04d-%02d-%02d %02d:%02d:%02d"
	.align	2
.LC13:
	.string	"\n%ssigned using      : "
	.align	2
.LC14:
	.string	"\n%s%-18s: %d bits"
	.align	2
.LC15:
	.string	"true"
	.align	2
.LC16:
	.string	"false"
	.align	2
.LC17:
	.string	"\n%sbasic constraints : CA=%s"
	.align	2
.LC18:
	.string	", max_pathlen=%d"
	.align	2
.LC19:
	.string	"\n%ssubject alt name  :"
	.align	2
.LC20:
	.string	"\n%scert. type        : "
	.align	2
.LC21:
	.string	"\n%skey usage         : "
	.align	2
.LC22:
	.string	"\n%sext key usage     : "
	.align	2
.LC23:
	.string	"\n%scertificate policies : "
	.align	2
.LC24:
	.string	"\n"
	.section	.text.mbedtls_x509_crt_info,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_info
	.type	mbedtls_x509_crt_info, @function
mbedtls_x509_crt_info:
.LFB106:
	.loc 3 1753 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	.loc 3 1754 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 1759 7
	lw	a5,-52(s0)
	sw	a5,-28(s0)
	.loc 3 1760 7
	lw	a5,-56(s0)
	sw	a5,-24(s0)
	.loc 3 1762 8
	lw	a5,-64(s0)
	bne	a5,zero,.L262
	.loc 3 1763 15
	lw	a4,-28(s0)
	lw	a3,-24(s0)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	mv	a1,a3
	mv	a0,a4
	call	snprintf
	sw	a0,-20(s0)
	.loc 3 1764 17
	lw	a5,-20(s0)
	blt	a5,zero,.L263
	.loc 3 1764 29 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1764 42 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1764 26 discriminator 2
	bltu	a4,a5,.L264
.L263:
	.loc 3 1764 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1764 55 is_stmt 0
	j	.L315
.L264:
	.loc 3 1764 66 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1764 69 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1764 66 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1764 85 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1764 88 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1764 85 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1766 28
	lw	a5,-24(s0)
	lw	a4,-56(s0)
	sub	a5,a4,a5
	.loc 3 1766 16
	j	.L315
.L262:
	.loc 3 1769 11
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	.loc 3 1770 39
	lw	a5,-64(s0)
	lw	a5,28(a5)
	.loc 3 1769 11
	mv	a4,a5
	lw	a3,-60(s0)
	lui	a5,%hi(.LC7)
	addi	a2,a5,%lo(.LC7)
	call	snprintf
	sw	a0,-20(s0)
	.loc 3 1771 13
	lw	a5,-20(s0)
	blt	a5,zero,.L266
	.loc 3 1771 25 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1771 38 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1771 22 discriminator 2
	bltu	a4,a5,.L267
.L266:
	.loc 3 1771 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1771 51 is_stmt 0
	j	.L315
.L267:
	.loc 3 1771 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1771 65 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1771 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1771 81 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1771 84 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1771 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1772 11
	lw	a4,-28(s0)
	lw	a1,-24(s0)
	lw	a3,-60(s0)
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	mv	a0,a4
	call	snprintf
	sw	a0,-20(s0)
	.loc 3 1774 13
	lw	a5,-20(s0)
	blt	a5,zero,.L268
	.loc 3 1774 25 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1774 38 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1774 22 discriminator 2
	bltu	a4,a5,.L269
.L268:
	.loc 3 1774 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1774 51 is_stmt 0
	j	.L315
.L269:
	.loc 3 1774 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1774 65 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1774 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1774 81 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1774 84 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1774 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1776 11
	lw	a4,-28(s0)
	lw	a3,-24(s0)
	lw	a5,-64(s0)
	addi	a5,a5,32
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_x509_serial_gets
	sw	a0,-20(s0)
	.loc 3 1777 13
	lw	a5,-20(s0)
	blt	a5,zero,.L270
	.loc 3 1777 25 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1777 38 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1777 22 discriminator 2
	bltu	a4,a5,.L271
.L270:
	.loc 3 1777 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1777 51 is_stmt 0
	j	.L315
.L271:
	.loc 3 1777 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1777 65 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1777 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1777 81 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1777 84 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1777 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1779 11
	lw	a4,-28(s0)
	lw	a1,-24(s0)
	lw	a3,-60(s0)
	lui	a5,%hi(.LC9)
	addi	a2,a5,%lo(.LC9)
	mv	a0,a4
	call	snprintf
	sw	a0,-20(s0)
	.loc 3 1780 13
	lw	a5,-20(s0)
	blt	a5,zero,.L272
	.loc 3 1780 25 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1780 38 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1780 22 discriminator 2
	bltu	a4,a5,.L273
.L272:
	.loc 3 1780 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1780 51 is_stmt 0
	j	.L315
.L273:
	.loc 3 1780 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1780 65 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1780 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1780 81 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1780 84 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1780 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1781 11
	lw	a4,-28(s0)
	lw	a3,-24(s0)
	lw	a5,-64(s0)
	addi	a5,a5,80
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_x509_dn_gets
	sw	a0,-20(s0)
	.loc 3 1782 13
	lw	a5,-20(s0)
	blt	a5,zero,.L274
	.loc 3 1782 25 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1782 38 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1782 22 discriminator 2
	bltu	a4,a5,.L275
.L274:
	.loc 3 1782 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1782 51 is_stmt 0
	j	.L315
.L275:
	.loc 3 1782 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1782 65 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1782 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1782 81 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1782 84 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1782 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1784 11
	lw	a4,-28(s0)
	lw	a1,-24(s0)
	lw	a3,-60(s0)
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	mv	a0,a4
	call	snprintf
	sw	a0,-20(s0)
	.loc 3 1785 13
	lw	a5,-20(s0)
	blt	a5,zero,.L276
	.loc 3 1785 25 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1785 38 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1785 22 discriminator 2
	bltu	a4,a5,.L277
.L276:
	.loc 3 1785 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1785 51 is_stmt 0
	j	.L315
.L277:
	.loc 3 1785 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1785 65 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1785 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1785 81 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1785 84 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1785 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1786 11
	lw	a4,-28(s0)
	lw	a3,-24(s0)
	lw	a5,-64(s0)
	addi	a5,a5,112
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_x509_dn_gets
	sw	a0,-20(s0)
	.loc 3 1787 13
	lw	a5,-20(s0)
	blt	a5,zero,.L278
	.loc 3 1787 25 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1787 38 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1787 22 discriminator 2
	bltu	a4,a5,.L279
.L278:
	.loc 3 1787 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1787 51 is_stmt 0
	j	.L315
.L279:
	.loc 3 1787 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1787 65 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1787 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1787 81 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1787 84 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1787 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1789 11
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	.loc 3 1791 43
	lw	a5,-64(s0)
	lw	a3,144(a5)
	.loc 3 1791 65
	lw	a5,-64(s0)
	lw	a2,148(a5)
	.loc 3 1792 43
	lw	a5,-64(s0)
	lw	a6,152(a5)
	.loc 3 1792 64
	lw	a5,-64(s0)
	lw	a7,156(a5)
	.loc 3 1793 43
	lw	a5,-64(s0)
	lw	a5,160(a5)
	.loc 3 1793 64
	lw	a4,-64(s0)
	lw	a4,164(a4)
	.loc 3 1789 11
	sw	a4,4(sp)
	sw	a5,0(sp)
	mv	a5,a2
	mv	a4,a3
	lw	a3,-60(s0)
	lui	a2,%hi(.LC11)
	addi	a2,a2,%lo(.LC11)
	call	snprintf
	sw	a0,-20(s0)
	.loc 3 1794 13
	lw	a5,-20(s0)
	blt	a5,zero,.L280
	.loc 3 1794 25 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1794 38 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1794 22 discriminator 2
	bltu	a4,a5,.L281
.L280:
	.loc 3 1794 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1794 51 is_stmt 0
	j	.L315
.L281:
	.loc 3 1794 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1794 65 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1794 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1794 81 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1794 84 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1794 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1796 11
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	.loc 3 1798 41
	lw	a5,-64(s0)
	lw	a3,168(a5)
	.loc 3 1798 61
	lw	a5,-64(s0)
	lw	a2,172(a5)
	.loc 3 1799 41
	lw	a5,-64(s0)
	lw	a6,176(a5)
	.loc 3 1799 60
	lw	a5,-64(s0)
	lw	a7,180(a5)
	.loc 3 1800 41
	lw	a5,-64(s0)
	lw	a5,184(a5)
	.loc 3 1800 60
	lw	a4,-64(s0)
	lw	a4,188(a4)
	.loc 3 1796 11
	sw	a4,4(sp)
	sw	a5,0(sp)
	mv	a5,a2
	mv	a4,a3
	lw	a3,-60(s0)
	lui	a2,%hi(.LC12)
	addi	a2,a2,%lo(.LC12)
	call	snprintf
	sw	a0,-20(s0)
	.loc 3 1801 13
	lw	a5,-20(s0)
	blt	a5,zero,.L282
	.loc 3 1801 25 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1801 38 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1801 22 discriminator 2
	bltu	a4,a5,.L283
.L282:
	.loc 3 1801 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1801 51 is_stmt 0
	j	.L315
.L283:
	.loc 3 1801 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1801 65 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1801 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1801 81 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1801 84 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1801 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1803 11
	lw	a4,-28(s0)
	lw	a1,-24(s0)
	lw	a3,-60(s0)
	lui	a5,%hi(.LC13)
	addi	a2,a5,%lo(.LC13)
	mv	a0,a4
	call	snprintf
	sw	a0,-20(s0)
	.loc 3 1804 13
	lw	a5,-20(s0)
	blt	a5,zero,.L284
	.loc 3 1804 25 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1804 38 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1804 22 discriminator 2
	bltu	a4,a5,.L285
.L284:
	.loc 3 1804 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1804 51 is_stmt 0
	j	.L315
.L285:
	.loc 3 1804 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1804 65 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1804 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1804 81 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1804 84 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1804 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1806 11
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	lw	a5,-64(s0)
	addi	a2,a5,44
	.loc 3 1806 61
	lw	a5,-64(s0)
	lbu	a3,393(a5)
	.loc 3 1807 40
	lw	a5,-64(s0)
	lbu	a4,392(a5)
	.loc 3 1807 53
	lw	a5,-64(s0)
	lw	a5,396(a5)
	.loc 3 1806 11
	call	mbedtls_x509_sig_alg_gets
	sw	a0,-20(s0)
	.loc 3 1808 13
	lw	a5,-20(s0)
	blt	a5,zero,.L286
	.loc 3 1808 25 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1808 38 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1808 22 discriminator 2
	bltu	a4,a5,.L287
.L286:
	.loc 3 1808 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1808 51 is_stmt 0
	j	.L315
.L287:
	.loc 3 1808 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1808 65 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1808 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1808 81 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1808 84 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1808 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1811 16
	lw	a5,-64(s0)
	addi	a5,a5,204
	mv	a0,a5
	call	mbedtls_pk_get_name
	mv	a4,a0
	.loc 3 1811 16 is_stmt 0 discriminator 1
	addi	a5,s0,-48
	mv	a2,a4
	li	a1,18
	mv	a0,a5
	call	mbedtls_x509_key_size_helper
	sw	a0,-20(s0)
	.loc 3 1811 8 is_stmt 1 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L288
	.loc 3 1813 16
	lw	a5,-20(s0)
	j	.L315
.L288:
	.loc 3 1816 11
	lw	s1,-28(s0)
	lw	s2,-24(s0)
	.loc 3 1817 34
	lw	a5,-64(s0)
	addi	a5,a5,204
	mv	a0,a5
	call	mbedtls_pk_get_bitlen
	mv	a5,a0
	.loc 3 1816 11
	addi	a4,s0,-48
	lw	a3,-60(s0)
	lui	a2,%hi(.LC14)
	addi	a2,a2,%lo(.LC14)
	mv	a1,s2
	mv	a0,s1
	call	snprintf
	sw	a0,-20(s0)
	.loc 3 1818 13
	lw	a5,-20(s0)
	blt	a5,zero,.L289
	.loc 3 1818 25 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1818 38 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1818 22 discriminator 2
	bltu	a4,a5,.L290
.L289:
	.loc 3 1818 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1818 51 is_stmt 0
	j	.L315
.L290:
	.loc 3 1818 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1818 65 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1818 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1818 81 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1818 84 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1818 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1824 12
	lw	a5,-64(s0)
	lw	a5,344(a5)
	.loc 3 1824 24
	andi	a5,a5,256
	.loc 3 1824 8
	beq	a5,zero,.L291
	.loc 3 1825 15
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	.loc 3 1826 35
	lw	a5,-64(s0)
	lw	a5,348(a5)
	.loc 3 1825 15
	beq	a5,zero,.L292
	.loc 3 1825 15 is_stmt 0 discriminator 1
	lui	a5,%hi(.LC15)
	addi	a5,a5,%lo(.LC15)
	j	.L293
.L292:
	.loc 3 1825 15 discriminator 2
	lui	a5,%hi(.LC16)
	addi	a5,a5,%lo(.LC16)
.L293:
	.loc 3 1825 15 discriminator 4
	mv	a4,a5
	lw	a3,-60(s0)
	lui	a5,%hi(.LC17)
	addi	a2,a5,%lo(.LC17)
	call	snprintf
	sw	a0,-20(s0)
	.loc 3 1827 17 is_stmt 1
	lw	a5,-20(s0)
	blt	a5,zero,.L294
	.loc 3 1827 29 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1827 42 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1827 26 discriminator 2
	bltu	a4,a5,.L295
.L294:
	.loc 3 1827 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1827 55 is_stmt 0
	j	.L315
.L295:
	.loc 3 1827 66 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1827 69 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1827 66 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1827 85 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1827 88 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1827 85 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1829 16
	lw	a5,-64(s0)
	lw	a5,352(a5)
	.loc 3 1829 12
	ble	a5,zero,.L291
	.loc 3 1830 19
	lw	a4,-28(s0)
	lw	a1,-24(s0)
	.loc 3 1830 57
	lw	a5,-64(s0)
	lw	a5,352(a5)
	.loc 3 1830 19
	addi	a5,a5,-1
	mv	a3,a5
	lui	a5,%hi(.LC18)
	addi	a2,a5,%lo(.LC18)
	mv	a0,a4
	call	snprintf
	sw	a0,-20(s0)
	.loc 3 1831 21
	lw	a5,-20(s0)
	blt	a5,zero,.L296
	.loc 3 1831 33 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1831 46 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1831 30 discriminator 2
	bltu	a4,a5,.L297
.L296:
	.loc 3 1831 59 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1831 59 is_stmt 0
	j	.L315
.L297:
	.loc 3 1831 70 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1831 73 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1831 70 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1831 89 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1831 92 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1831 89 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
.L291:
	.loc 3 1835 12
	lw	a5,-64(s0)
	lw	a5,344(a5)
	.loc 3 1835 24
	andi	a5,a5,32
	.loc 3 1835 8
	beq	a5,zero,.L298
	.loc 3 1836 15
	lw	a4,-28(s0)
	lw	a1,-24(s0)
	lw	a3,-60(s0)
	lui	a5,%hi(.LC19)
	addi	a2,a5,%lo(.LC19)
	mv	a0,a4
	call	snprintf
	sw	a0,-20(s0)
	.loc 3 1837 17
	lw	a5,-20(s0)
	blt	a5,zero,.L299
	.loc 3 1837 29 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1837 42 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1837 26 discriminator 2
	bltu	a4,a5,.L300
.L299:
	.loc 3 1837 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1837 55 is_stmt 0
	j	.L315
.L300:
	.loc 3 1837 66 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1837 69 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1837 66 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1837 85 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1837 88 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1837 85 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1839 20
	lw	a5,-64(s0)
	addi	a2,a5,248
	addi	a4,s0,-24
	addi	a5,s0,-28
	lw	a3,-60(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_x509_info_subject_alt_name
	sw	a0,-20(s0)
	.loc 3 1839 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L298
	.loc 3 1842 20
	lw	a5,-20(s0)
	j	.L315
.L298:
	.loc 3 1846 12
	lw	a5,-64(s0)
	lw	a4,344(a5)
	.loc 3 1846 24
	li	a5,65536
	and	a5,a4,a5
	.loc 3 1846 8
	beq	a5,zero,.L301
	.loc 3 1847 15
	lw	a4,-28(s0)
	lw	a1,-24(s0)
	lw	a3,-60(s0)
	lui	a5,%hi(.LC20)
	addi	a2,a5,%lo(.LC20)
	mv	a0,a4
	call	snprintf
	sw	a0,-20(s0)
	.loc 3 1848 17
	lw	a5,-20(s0)
	blt	a5,zero,.L302
	.loc 3 1848 29 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1848 42 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1848 26 discriminator 2
	bltu	a4,a5,.L303
.L302:
	.loc 3 1848 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1848 55 is_stmt 0
	j	.L315
.L303:
	.loc 3 1848 66 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1848 69 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1848 66 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1848 85 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1848 88 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1848 85 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1850 59
	lw	a5,-64(s0)
	lbu	a3,376(a5)
	.loc 3 1850 20
	addi	a4,s0,-24
	addi	a5,s0,-28
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_x509_info_cert_type
	sw	a0,-20(s0)
	.loc 3 1850 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L301
	.loc 3 1851 20
	lw	a5,-20(s0)
	j	.L315
.L301:
	.loc 3 1855 12
	lw	a5,-64(s0)
	lw	a5,344(a5)
	.loc 3 1855 24
	andi	a5,a5,4
	.loc 3 1855 8
	beq	a5,zero,.L304
	.loc 3 1856 15
	lw	a4,-28(s0)
	lw	a1,-24(s0)
	lw	a3,-60(s0)
	lui	a5,%hi(.LC21)
	addi	a2,a5,%lo(.LC21)
	mv	a0,a4
	call	snprintf
	sw	a0,-20(s0)
	.loc 3 1857 17
	lw	a5,-20(s0)
	blt	a5,zero,.L305
	.loc 3 1857 29 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1857 42 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1857 26 discriminator 2
	bltu	a4,a5,.L306
.L305:
	.loc 3 1857 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1857 55 is_stmt 0
	j	.L315
.L306:
	.loc 3 1857 66 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1857 69 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1857 66 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1857 85 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1857 88 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1857 85 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1859 59
	lw	a5,-64(s0)
	lw	a3,356(a5)
	.loc 3 1859 20
	addi	a4,s0,-24
	addi	a5,s0,-28
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_x509_info_key_usage
	sw	a0,-20(s0)
	.loc 3 1859 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L304
	.loc 3 1860 20
	lw	a5,-20(s0)
	j	.L315
.L304:
	.loc 3 1864 12
	lw	a5,-64(s0)
	lw	a4,344(a5)
	.loc 3 1864 24
	li	a5,4096
	addi	a5,a5,-2048
	and	a5,a4,a5
	.loc 3 1864 8
	beq	a5,zero,.L307
	.loc 3 1865 15
	lw	a4,-28(s0)
	lw	a1,-24(s0)
	lw	a3,-60(s0)
	lui	a5,%hi(.LC22)
	addi	a2,a5,%lo(.LC22)
	mv	a0,a4
	call	snprintf
	sw	a0,-20(s0)
	.loc 3 1866 17
	lw	a5,-20(s0)
	blt	a5,zero,.L308
	.loc 3 1866 29 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1866 42 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1866 26 discriminator 2
	bltu	a4,a5,.L309
.L308:
	.loc 3 1866 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1866 55 is_stmt 0
	j	.L315
.L309:
	.loc 3 1866 66 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1866 69 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1866 66 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1866 85 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1866 88 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1866 85 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1868 20
	lw	a5,-64(s0)
	addi	a3,a5,360
	addi	a4,s0,-24
	addi	a5,s0,-28
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	x509_info_ext_key_usage
	sw	a0,-20(s0)
	.loc 3 1868 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L307
	.loc 3 1870 20
	lw	a5,-20(s0)
	j	.L315
.L307:
	.loc 3 1874 12
	lw	a5,-64(s0)
	lw	a5,344(a5)
	.loc 3 1874 24
	andi	a5,a5,8
	.loc 3 1874 8
	beq	a5,zero,.L310
	.loc 3 1875 15
	lw	a4,-28(s0)
	lw	a1,-24(s0)
	lw	a3,-60(s0)
	lui	a5,%hi(.LC23)
	addi	a2,a5,%lo(.LC23)
	mv	a0,a4
	call	snprintf
	sw	a0,-20(s0)
	.loc 3 1876 17
	lw	a5,-20(s0)
	blt	a5,zero,.L311
	.loc 3 1876 29 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1876 42 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1876 26 discriminator 2
	bltu	a4,a5,.L312
.L311:
	.loc 3 1876 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1876 55 is_stmt 0
	j	.L315
.L312:
	.loc 3 1876 66 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1876 69 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1876 66 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1876 85 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1876 88 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1876 85 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1878 20
	lw	a5,-64(s0)
	addi	a3,a5,328
	addi	a4,s0,-24
	addi	a5,s0,-28
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	x509_info_cert_policies
	sw	a0,-20(s0)
	.loc 3 1878 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L310
	.loc 3 1880 20
	lw	a5,-20(s0)
	j	.L315
.L310:
	.loc 3 1884 11
	lw	a4,-28(s0)
	lw	a3,-24(s0)
	lui	a5,%hi(.LC24)
	addi	a2,a5,%lo(.LC24)
	mv	a1,a3
	mv	a0,a4
	call	snprintf
	sw	a0,-20(s0)
	.loc 3 1885 13
	lw	a5,-20(s0)
	blt	a5,zero,.L313
	.loc 3 1885 25 discriminator 2
	lw	a4,-20(s0)
	.loc 3 1885 38 discriminator 2
	lw	a5,-24(s0)
	.loc 3 1885 22 discriminator 2
	bltu	a4,a5,.L314
.L313:
	.loc 3 1885 51 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1885 51 is_stmt 0
	j	.L315
.L314:
	.loc 3 1885 62 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	.loc 3 1885 65 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1885 62 discriminator 4
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1885 81 discriminator 4
	lw	a4,-28(s0)
	.loc 3 1885 84 discriminator 4
	lw	a5,-20(s0)
	.loc 3 1885 81 discriminator 4
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1887 24
	lw	a5,-24(s0)
	lw	a4,-56(s0)
	sub	a5,a4,a5
.L315:
	.loc 3 1888 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE106:
	.size	mbedtls_x509_crt_info, .-mbedtls_x509_crt_info
	.section	.rodata
	.align	2
.LC25:
	.string	"The certificate validity has expired"
	.align	2
.LC26:
	.string	"The certificate has been revoked (is on a CRL)"
	.align	2
.LC27:
	.string	"The certificate Common Name (CN) does not match with the expected CN"
	.align	2
.LC28:
	.string	"The certificate is not correctly signed by the trusted CA"
	.align	2
.LC29:
	.string	"The CRL is not correctly signed by the trusted CA"
	.align	2
.LC30:
	.string	"The CRL is expired"
	.align	2
.LC31:
	.string	"Certificate was missing"
	.align	2
.LC32:
	.string	"Certificate verification was skipped"
	.align	2
.LC33:
	.string	"Other reason (can be used by verify callback)"
	.align	2
.LC34:
	.string	"The certificate validity starts in the future"
	.align	2
.LC35:
	.string	"The CRL is from the future"
	.align	2
.LC36:
	.string	"Usage does not match the keyUsage extension"
	.align	2
.LC37:
	.string	"Usage does not match the extendedKeyUsage extension"
	.align	2
.LC38:
	.string	"Usage does not match the nsCertType extension"
	.align	2
.LC39:
	.string	"The certificate is signed with an unacceptable hash."
	.align	2
.LC40:
	.string	"The certificate is signed with an unacceptable PK alg (eg RSA vs ECDSA)."
	.align	2
.LC41:
	.string	"The certificate is signed with an unacceptable key (eg bad curve, RSA too short)."
	.align	2
.LC42:
	.string	"The CRL is signed with an unacceptable hash."
	.align	2
.LC43:
	.string	"The CRL is signed with an unacceptable PK alg (eg RSA vs ECDSA)."
	.align	2
.LC44:
	.string	"The CRL is signed with an unacceptable key (eg bad curve, RSA too short)."
	.section	.rodata.x509_crt_verify_strings,"a"
	.align	2
	.type	x509_crt_verify_strings, @object
	.size	x509_crt_verify_strings, 168
x509_crt_verify_strings:
	.word	1
	.word	.LC25
	.word	2
	.word	.LC26
	.word	4
	.word	.LC27
	.word	8
	.word	.LC28
	.word	16
	.word	.LC29
	.word	32
	.word	.LC30
	.word	64
	.word	.LC31
	.word	128
	.word	.LC32
	.word	256
	.word	.LC33
	.word	512
	.word	.LC34
	.word	1024
	.word	.LC35
	.word	2048
	.word	.LC36
	.word	4096
	.word	.LC37
	.word	8192
	.word	.LC38
	.word	16384
	.word	.LC39
	.word	32768
	.word	.LC40
	.word	65536
	.word	.LC41
	.word	131072
	.word	.LC42
	.word	262144
	.word	.LC43
	.word	524288
	.word	.LC44
	.word	0
	.word	0
	.section	.rodata
	.align	2
.LC45:
	.string	"%s%s\n"
	.align	2
.LC46:
	.string	"%sUnknown reason (this should not happen)\n"
	.section	.text.mbedtls_x509_crt_verify_info,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_verify_info
	.type	mbedtls_x509_crt_verify_info, @function
mbedtls_x509_crt_verify_info:
.LFB107:
	.loc 3 1904 1
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
	.loc 3 1905 9
	li	a5,-110
	sw	a5,-32(s0)
	.loc 3 1907 11
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 3 1908 12
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	.loc 3 1910 14
	lui	a5,%hi(x509_crt_verify_strings)
	addi	a5,a5,%lo(x509_crt_verify_strings)
	sw	a5,-20(s0)
	.loc 3 1910 5
	j	.L317
.L323:
	.loc 3 1911 25
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a4,a5
	.loc 3 1911 20
	lw	a5,-48(s0)
	and	a5,a4,a5
	.loc 3 1911 12
	beq	a5,zero,.L327
	.loc 3 1915 51
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 3 1915 15
	mv	a4,a5
	lw	a3,-44(s0)
	lui	a5,%hi(.LC45)
	addi	a2,a5,%lo(.LC45)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 3 1916 17
	lw	a5,-32(s0)
	blt	a5,zero,.L320
	.loc 3 1916 29 discriminator 2
	lw	a5,-32(s0)
	.loc 3 1916 26 discriminator 2
	lw	a4,-28(s0)
	bgtu	a4,a5,.L321
.L320:
	.loc 3 1916 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1916 55 is_stmt 0
	j	.L322
.L321:
	.loc 3 1916 69 is_stmt 1 discriminator 4
	lw	a5,-32(s0)
	.loc 3 1916 66 discriminator 4
	lw	a4,-28(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1916 88 discriminator 4
	lw	a5,-32(s0)
	.loc 3 1916 85 discriminator 4
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1917 21
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a4,a5
	.loc 3 1917 15
	lw	a5,-48(s0)
	xor	a5,a5,a4
	sw	a5,-48(s0)
	j	.L319
.L327:
	.loc 3 1912 13
	nop
.L319:
	.loc 3 1910 64 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.L317:
	.loc 3 1910 44 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 3 1910 53 discriminator 1
	bne	a5,zero,.L323
	.loc 3 1920 8
	lw	a5,-48(s0)
	beq	a5,zero,.L324
	.loc 3 1921 15
	lw	a3,-44(s0)
	lui	a5,%hi(.LC46)
	addi	a2,a5,%lo(.LC46)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	snprintf
	sw	a0,-32(s0)
	.loc 3 1923 17
	lw	a5,-32(s0)
	blt	a5,zero,.L325
	.loc 3 1923 29 discriminator 2
	lw	a5,-32(s0)
	.loc 3 1923 26 discriminator 2
	lw	a4,-28(s0)
	bgtu	a4,a5,.L326
.L325:
	.loc 3 1923 55 discriminator 3
	li	a5,-12288
	addi	a5,a5,1664
	.loc 3 1923 55 is_stmt 0
	j	.L322
.L326:
	.loc 3 1923 69 is_stmt 1 discriminator 4
	lw	a5,-32(s0)
	.loc 3 1923 66 discriminator 4
	lw	a4,-28(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1923 88 discriminator 4
	lw	a5,-32(s0)
	.loc 3 1923 85 discriminator 4
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
.L324:
	.loc 3 1926 24
	lw	a4,-40(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
.L322:
	.loc 3 1927 1
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
.LFE107:
	.size	mbedtls_x509_crt_verify_info, .-mbedtls_x509_crt_verify_info
	.section	.text.mbedtls_x509_crt_check_key_usage,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_check_key_usage
	.type	mbedtls_x509_crt_check_key_usage, @function
mbedtls_x509_crt_check_key_usage:
.LFB108:
	.loc 3 1932 1
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
	.loc 3 1934 18
	li	a5,32768
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 3 1937 13
	lw	a5,-36(s0)
	lw	a5,344(a5)
	.loc 3 1937 25
	andi	a5,a5,4
	.loc 3 1937 8
	bne	a5,zero,.L329
	.loc 3 1938 16
	li	a5,0
	j	.L330
.L329:
	.loc 3 1941 26
	lw	a5,-20(s0)
	not	a5,a5
	.loc 3 1941 16
	lw	a4,-40(s0)
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 1943 14
	lw	a5,-36(s0)
	lw	a4,356(a5)
	.loc 3 1943 28
	lw	a5,-20(s0)
	not	a5,a5
	.loc 3 1943 26
	and	a4,a4,a5
	.loc 3 1943 39
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 3 1943 8
	lw	a4,-24(s0)
	beq	a4,a5,.L331
	.loc 3 1944 16
	li	a5,-8192
	addi	a5,a5,-2048
	j	.L330
.L331:
	.loc 3 1947 15
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	and	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 1949 14
	lw	a5,-36(s0)
	lw	a4,356(a5)
	.loc 3 1949 26
	lw	a5,-20(s0)
	and	a4,a4,a5
	.loc 3 1949 38
	lw	a5,-28(s0)
	or	a5,a4,a5
	.loc 3 1949 8
	lw	a4,-28(s0)
	beq	a4,a5,.L332
	.loc 3 1950 16
	li	a5,-8192
	addi	a5,a5,-2048
	j	.L330
.L332:
	.loc 3 1953 12
	li	a5,0
.L330:
	.loc 3 1954 1
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
.LFE108:
	.size	mbedtls_x509_crt_check_key_usage, .-mbedtls_x509_crt_check_key_usage
	.section	.rodata
	.align	2
.LC47:
	.string	"U\035%"
	.string	""
	.section	.text.mbedtls_x509_crt_check_extended_key_usage,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_check_extended_key_usage
	.type	mbedtls_x509_crt_check_extended_key_usage, @function
mbedtls_x509_crt_check_extended_key_usage:
.LFB109:
	.loc 3 1959 1
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
	.loc 3 1963 13
	lw	a5,-36(s0)
	lw	a4,344(a5)
	.loc 3 1963 25
	li	a5,4096
	addi	a5,a5,-2048
	and	a5,a4,a5
	.loc 3 1963 8
	bne	a5,zero,.L334
	.loc 3 1964 16
	li	a5,0
	j	.L335
.L334:
	.loc 3 1970 14
	lw	a5,-36(s0)
	addi	a5,a5,360
	sw	a5,-20(s0)
	.loc 3 1970 5
	j	.L336
.L342:
.LBB11:
	.loc 3 1971 33
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 3 1973 20
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 3 1973 12
	lw	a4,-44(s0)
	bne	a4,a5,.L337
	.loc 3 1974 27
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 3 1974 13
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 3 1973 39 discriminator 1
	bne	a5,zero,.L337
	.loc 3 1975 20
	li	a5,0
	j	.L335
.L337:
	.loc 3 1978 69
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 3 1978 76
	li	a5,4
	bne	a4,a5,.L338
	.loc 3 1978 126 discriminator 2
	lw	a5,-24(s0)
	lw	a4,8(a5)
	.loc 3 1978 140 discriminator 2
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 3 1978 79 discriminator 2
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC47)
	addi	a0,a5,%lo(.LC47)
	call	memcmp
	mv	a5,a0
	.loc 3 1978 76 discriminator 3
	beq	a5,zero,.L339
.L338:
	.loc 3 1978 76 is_stmt 0 discriminator 4
	li	a5,1
	.loc 3 1978 76
	j	.L340
.L339:
	.loc 3 1978 76 discriminator 5
	li	a5,0
.L340:
	.loc 3 1978 12 is_stmt 1 discriminator 7
	bne	a5,zero,.L341
	.loc 3 1979 20
	li	a5,0
	j	.L335
.L341:
.LBE11:
	.loc 3 1970 53 discriminator 2
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L336:
	.loc 3 1970 41 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L342
	.loc 3 1983 12
	li	a5,-8192
	addi	a5,a5,-2048
.L335:
	.loc 3 1984 1
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
.LFE109:
	.size	mbedtls_x509_crt_check_extended_key_usage, .-mbedtls_x509_crt_check_extended_key_usage
	.section	.text.mbedtls_x509_crt_is_revoked,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_is_revoked
	.type	mbedtls_x509_crt_is_revoked, @function
mbedtls_x509_crt_is_revoked:
.LFB110:
	.loc 3 1991 1
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
	.loc 3 1992 35
	lw	a5,-40(s0)
	addi	a5,a5,132
	sw	a5,-20(s0)
	.loc 3 1994 11
	j	.L344
.L348:
	.loc 3 1995 24
	lw	a5,-36(s0)
	lw	a4,36(a5)
	.loc 3 1995 43
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 3 1995 12
	bne	a4,a5,.L345
	.loc 3 1996 31
	lw	a5,-36(s0)
	lw	a4,40(a5)
	.loc 3 1996 46
	lw	a5,-20(s0)
	lw	a3,20(a5)
	.loc 3 1996 61
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 3 1996 13
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 3 1995 48 discriminator 1
	bne	a5,zero,.L345
	.loc 3 1997 20
	li	a5,1
	j	.L346
.L345:
	.loc 3 2000 13
	lw	a5,-20(s0)
	lw	a5,60(a5)
	sw	a5,-20(s0)
.L344:
	.loc 3 1994 23
	lw	a5,-20(s0)
	beq	a5,zero,.L347
	.loc 3 1994 37 discriminator 1
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 3 1994 23 discriminator 1
	bne	a5,zero,.L348
.L347:
	.loc 3 2003 12
	li	a5,0
.L346:
	.loc 3 2004 1
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
.LFE110:
	.size	mbedtls_x509_crt_is_revoked, .-mbedtls_x509_crt_is_revoked
	.section	.text.x509_crt_verifycrl,"ax",@progbits
	.align	1
	.type	x509_crt_verifycrl, @function
x509_crt_verifycrl:
.LFB111:
	.loc 3 2014 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	sw	a2,-108(s0)
	sw	a3,-112(s0)
	sw	a4,-116(s0)
	.loc 3 2015 9
	sw	zero,-20(s0)
	.loc 3 2024 8
	lw	a5,-104(s0)
	bne	a5,zero,.L352
	.loc 3 2025 16
	lw	a5,-20(s0)
	j	.L365
.L364:
	.loc 3 2029 21
	lw	a5,-108(s0)
	lw	a5,24(a5)
	.loc 3 2029 12
	beq	a5,zero,.L353
	.loc 3 2030 27
	lw	a5,-108(s0)
	addi	a4,a5,52
	.loc 3 2030 46
	lw	a5,-104(s0)
	addi	a5,a5,112
	.loc 3 2030 13
	mv	a1,a5
	mv	a0,a4
	call	x509_name_cmp
	mv	a5,a0
	.loc 3 2029 36 discriminator 2
	beq	a5,zero,.L354
.L353:
	.loc 3 2031 22
	lw	a5,-108(s0)
	lw	a5,240(a5)
	sw	a5,-108(s0)
	.loc 3 2032 13
	j	.L352
.L354:
	.loc 3 2038 13
	li	a1,2
	lw	a0,-104(s0)
	call	mbedtls_x509_crt_check_key_usage
	mv	a5,a0
	.loc 3 2038 12 discriminator 1
	beq	a5,zero,.L356
	.loc 3 2040 19
	lw	a5,-20(s0)
	ori	a5,a5,16
	sw	a5,-20(s0)
	.loc 3 2041 13
	j	.L357
.L356:
	.loc 3 2047 13
	lw	a5,-108(s0)
	lbu	a5,232(a5)
	mv	a1,a5
	lw	a0,-112(s0)
	call	x509_profile_check_md_alg
	mv	a5,a0
	.loc 3 2047 12 discriminator 1
	beq	a5,zero,.L358
	.loc 3 2048 19
	lw	a4,-20(s0)
	li	a5,131072
	or	a5,a4,a5
	sw	a5,-20(s0)
.L358:
	.loc 3 2051 13
	lw	a5,-108(s0)
	lbu	a5,233(a5)
	mv	a1,a5
	lw	a0,-112(s0)
	call	x509_profile_check_pk_alg
	mv	a5,a0
	.loc 3 2051 12 discriminator 1
	beq	a5,zero,.L359
	.loc 3 2052 19
	lw	a4,-20(s0)
	li	a5,262144
	or	a5,a4,a5
	sw	a5,-20(s0)
.L359:
	.loc 3 2068 19
	lw	a5,-108(s0)
	lbu	a5,232(a5)
	mv	a0,a5
	call	mbedtls_md_info_from_type
	sw	a0,-24(s0)
	.loc 3 2069 23
	lw	a0,-24(s0)
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 3 2069 21 discriminator 1
	sw	a5,-28(s0)
	.loc 3 2071 37
	lw	a5,-108(s0)
	lw	a4,20(a5)
	.loc 3 2070 13
	lw	a5,-108(s0)
	lw	a5,16(a5)
	addi	a3,s0,-92
	mv	a2,a5
	mv	a1,a4
	lw	a0,-24(s0)
	call	mbedtls_md
	mv	a5,a0
	.loc 3 2070 12 discriminator 1
	beq	a5,zero,.L360
	.loc 3 2075 19
	lw	a5,-20(s0)
	ori	a5,a5,16
	sw	a5,-20(s0)
	.loc 3 2076 13
	j	.L357
.L360:
	.loc 3 2080 45
	lw	a5,-104(s0)
	addi	a5,a5,204
	.loc 3 2080 13
	mv	a1,a5
	lw	a0,-112(s0)
	call	x509_profile_check_key
	mv	a5,a0
	.loc 3 2080 12 discriminator 1
	beq	a5,zero,.L361
	.loc 3 2081 19
	lw	a4,-20(s0)
	li	a5,65536
	or	a5,a4,a5
	sw	a5,-20(s0)
.L361:
	.loc 3 2084 13
	lw	a5,-108(s0)
	lbu	a0,233(a5)
	.loc 3 2084 61
	lw	a5,-108(s0)
	lw	a1,236(a5)
	.loc 3 2084 13
	lw	a5,-104(s0)
	addi	a2,a5,204
	lw	a5,-108(s0)
	lbu	a3,232(a5)
	.loc 3 2086 48
	lw	a5,-108(s0)
	lw	a6,228(a5)
	.loc 3 2084 13
	lw	a5,-108(s0)
	lw	a5,224(a5)
	addi	a4,s0,-92
	mv	a7,a5
	lw	a5,-28(s0)
	call	mbedtls_pk_verify_ext
	mv	a5,a0
	.loc 3 2084 12 discriminator 1
	beq	a5,zero,.L362
	.loc 3 2087 19
	lw	a5,-20(s0)
	ori	a5,a5,16
	sw	a5,-20(s0)
	.loc 3 2088 13
	j	.L357
.L362:
	.loc 3 2109 13
	lw	a1,-108(s0)
	lw	a0,-100(s0)
	call	mbedtls_x509_crt_is_revoked
	mv	a5,a0
	.loc 3 2109 12 discriminator 1
	beq	a5,zero,.L363
	.loc 3 2110 19
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 3 2111 13
	j	.L357
.L363:
	.loc 3 2114 18
	lw	a5,-108(s0)
	lw	a5,240(a5)
	sw	a5,-108(s0)
.L352:
	.loc 3 2028 21
	lw	a5,-108(s0)
	bne	a5,zero,.L364
.L357:
	.loc 3 2117 12
	lw	a5,-20(s0)
.L365:
	.loc 3 2118 1
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
.LFE111:
	.size	x509_crt_verifycrl, .-x509_crt_verifycrl
	.section	.text.x509_crt_check_signature,"ax",@progbits
	.align	1
	.type	x509_crt_check_signature, @function
x509_crt_check_signature:
.LFB112:
	.loc 3 2127 1
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
	.loc 3 2132 46
	lw	a5,-100(s0)
	lbu	a5,392(a5)
	.loc 3 2132 15
	mv	a0,a5
	call	mbedtls_md_info_from_type
	sw	a0,-20(s0)
	.loc 3 2133 16
	lw	a0,-20(s0)
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 3 2133 14 discriminator 1
	sw	a5,-24(s0)
	.loc 3 2136 39
	lw	a5,-100(s0)
	lw	a4,24(a5)
	.loc 3 2136 53
	lw	a5,-100(s0)
	lw	a5,20(a5)
	.loc 3 2136 9
	addi	a3,s0,-88
	mv	a2,a5
	mv	a1,a4
	lw	a0,-20(s0)
	call	mbedtls_md
	mv	a5,a0
	.loc 3 2136 8 discriminator 1
	beq	a5,zero,.L367
	.loc 3 2137 16
	li	a5,-1
	j	.L371
.L367:
	.loc 3 2155 28
	lw	a5,-104(s0)
	addi	a4,a5,204
	.loc 3 2155 46
	lw	a5,-100(s0)
	lbu	a5,393(a5)
	.loc 3 2155 10
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_pk_can_do
	mv	a5,a0
	.loc 3 2155 8 discriminator 1
	bne	a5,zero,.L369
	.loc 3 2156 16
	li	a5,-1
	j	.L371
.L369:
	.loc 3 2160 8
	lw	a5,-108(s0)
	beq	a5,zero,.L370
	.loc 3 2160 31 discriminator 1
	lw	a5,-100(s0)
	lbu	a4,393(a5)
	.loc 3 2160 23 discriminator 1
	li	a5,4
	bne	a4,a5,.L370
	.loc 3 2161 16
	lw	a5,-104(s0)
	addi	a0,a5,204
	.loc 3 2162 51
	lw	a5,-100(s0)
	lbu	a1,392(a5)
	.loc 3 2163 56
	lw	a5,-100(s0)
	lw	a4,388(a5)
	.loc 3 2163 70
	lw	a5,-100(s0)
	lw	a5,384(a5)
	.loc 3 2161 16
	lw	a3,-108(s0)
	addi	a2,s0,-88
	mv	a6,a3
	lw	a3,-24(s0)
	call	mbedtls_pk_verify_restartable
	mv	a5,a0
	j	.L371
.L370:
	.loc 3 2169 39
	lw	a5,-100(s0)
	lbu	a0,393(a5)
	.loc 3 2169 54
	lw	a5,-100(s0)
	lw	a1,396(a5)
	.loc 3 2169 12
	lw	a5,-104(s0)
	addi	a2,a5,204
	.loc 3 2170 39
	lw	a5,-100(s0)
	lbu	a3,392(a5)
	.loc 3 2171 44
	lw	a5,-100(s0)
	lw	a6,388(a5)
	.loc 3 2171 58
	lw	a5,-100(s0)
	lw	a5,384(a5)
	.loc 3 2169 12
	addi	a4,s0,-88
	mv	a7,a5
	lw	a5,-24(s0)
	call	mbedtls_pk_verify_ext
	mv	a5,a0
.L371:
	.loc 3 2172 1
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
.LFE112:
	.size	x509_crt_check_signature, .-x509_crt_check_signature
	.section	.text.x509_crt_check_parent,"ax",@progbits
	.align	1
	.type	x509_crt_check_parent, @function
x509_crt_check_parent:
.LFB113:
	.loc 3 2183 1
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
	.loc 3 2187 9
	lw	a5,-36(s0)
	addi	a4,a5,80
	lw	a5,-40(s0)
	addi	a5,a5,112
	mv	a1,a5
	mv	a0,a4
	call	x509_name_cmp
	mv	a5,a0
	.loc 3 2187 8 discriminator 1
	beq	a5,zero,.L373
	.loc 3 2188 16
	li	a5,-1
	j	.L374
.L373:
	.loc 3 2192 17
	li	a5,1
	sw	a5,-20(s0)
	.loc 3 2195 8
	lw	a5,-44(s0)
	beq	a5,zero,.L375
	.loc 3 2195 22 discriminator 1
	lw	a5,-40(s0)
	lw	a4,28(a5)
	.loc 3 2195 13 discriminator 1
	li	a5,2
	bgt	a4,a5,.L375
	.loc 3 2196 21
	sw	zero,-20(s0)
.L375:
	.loc 3 2199 8
	lw	a5,-20(s0)
	beq	a5,zero,.L376
	.loc 3 2199 31 discriminator 1
	lw	a5,-40(s0)
	lw	a5,348(a5)
	.loc 3 2199 21 discriminator 1
	bne	a5,zero,.L376
	.loc 3 2200 16
	li	a5,-1
	j	.L374
.L376:
	.loc 3 2203 8
	lw	a5,-20(s0)
	beq	a5,zero,.L377
	.loc 3 2204 9
	li	a1,4
	lw	a0,-40(s0)
	call	mbedtls_x509_crt_check_key_usage
	mv	a5,a0
	.loc 3 2203 21 discriminator 1
	beq	a5,zero,.L377
	.loc 3 2205 16
	li	a5,-1
	j	.L374
.L377:
	.loc 3 2208 12
	li	a5,0
.L374:
	.loc 3 2209 1
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
.LFE113:
	.size	x509_crt_check_parent, .-x509_crt_check_parent
	.section	.text.x509_crt_find_parent_in,"ax",@progbits
	.align	1
	.type	x509_crt_find_parent_in, @function
x509_crt_find_parent_in:
.LFB114:
	.loc 3 2264 1
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
	.loc 3 2265 9
	li	a5,-110
	sw	a5,-32(s0)
	.loc 3 2267 9
	sw	zero,-36(s0)
	.loc 3 2271 8
	lw	a5,-80(s0)
	beq	a5,zero,.L379
	.loc 3 2271 32 discriminator 1
	lw	a5,-80(s0)
	lw	a5,8(a5)
	.loc 3 2271 23 discriminator 1
	beq	a5,zero,.L379
	.loc 3 2273 16
	lw	a5,-80(s0)
	lw	a5,8(a5)
	sw	a5,-20(s0)
	.loc 3 2274 25
	lw	a5,-80(s0)
	lw	a5,12(a5)
	sw	a5,-24(s0)
	.loc 3 2275 36
	lw	a5,-80(s0)
	lw	a5,16(a5)
	sw	a5,-28(s0)
	.loc 3 2278 24
	lw	a5,-80(s0)
	sw	zero,8(a5)
	.loc 3 2279 33
	lw	a5,-80(s0)
	sw	zero,12(a5)
	.loc 3 2280 44
	lw	a5,-80(s0)
	sw	zero,16(a5)
	.loc 3 2283 9
	j	.L380
.L379:
	.loc 3 2287 21
	sw	zero,-24(s0)
	.loc 3 2288 32
	sw	zero,-28(s0)
	.loc 3 2290 17
	lw	a5,-56(s0)
	sw	a5,-20(s0)
	.loc 3 2290 5
	j	.L381
.L388:
	.loc 3 2292 13
	lw	a2,-68(s0)
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	x509_crt_check_parent
	mv	a5,a0
	.loc 3 2292 12 discriminator 1
	bne	a5,zero,.L390
	.loc 3 2297 19
	lw	a5,-20(s0)
	lw	a5,352(a5)
	.loc 3 2297 12
	ble	a5,zero,.L391
	.loc 3 2298 28
	lw	a5,-20(s0)
	lw	a5,352(a5)
	.loc 3 2298 13
	mv	a3,a5
	.loc 3 2298 57
	lw	a4,-72(s0)
	lw	a5,-76(s0)
	sub	a5,a4,a5
	addi	a5,a5,1
	.loc 3 2297 37 discriminator 1
	bltu	a3,a5,.L392
.L391:
	.loc 3 2304 1
	nop
.L380:
	.loc 3 2306 15
	lw	a2,-80(s0)
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	x509_crt_check_signature
	sw	a0,-32(s0)
	.loc 3 2309 12
	lw	a5,-80(s0)
	beq	a5,zero,.L384
	.loc 3 2309 27 discriminator 1
	lw	a4,-32(s0)
	li	a5,-20480
	addi	a5,a5,1280
	bne	a4,a5,.L384
	.loc 3 2311 28
	lw	a5,-80(s0)
	lw	a4,-20(s0)
	sw	a4,8(a5)
	.loc 3 2312 37
	lw	a5,-80(s0)
	lw	a4,-24(s0)
	sw	a4,12(a5)
	.loc 3 2313 48
	lw	a5,-80(s0)
	lw	a4,-28(s0)
	sw	a4,16(a5)
	.loc 3 2315 20
	lw	a5,-32(s0)
	j	.L385
.L384:
	.loc 3 2321 33
	lw	a5,-32(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 3 2321 27
	sw	a5,-36(s0)
	.loc 3 2322 12
	lw	a5,-68(s0)
	beq	a5,zero,.L386
	.loc 3 2322 17 discriminator 1
	lw	a5,-36(s0)
	beq	a5,zero,.L393
.L386:
	.loc 3 2341 19
	lw	a5,-60(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 3 2342 30
	lw	a5,-64(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 3 2344 9
	j	.L387
.L390:
	.loc 3 2293 13
	nop
	j	.L383
.L392:
	.loc 3 2299 13
	nop
	j	.L383
.L393:
	.loc 3 2323 13
	nop
.L383:
	.loc 3 2290 53 discriminator 2
	lw	a5,-20(s0)
	lw	a5,400(a5)
	sw	a5,-20(s0)
.L381:
	.loc 3 2290 38 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L388
.L387:
	.loc 3 2347 8
	lw	a5,-20(s0)
	bne	a5,zero,.L389
	.loc 3 2348 19
	lw	a5,-60(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 3 2349 30
	lw	a5,-64(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
.L389:
	.loc 3 2352 12
	li	a5,0
.L385:
	.loc 3 2353 1
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
.LFE114:
	.size	x509_crt_find_parent_in, .-x509_crt_find_parent_in
	.section	.text.x509_crt_find_parent,"ax",@progbits
	.align	1
	.type	x509_crt_find_parent, @function
x509_crt_find_parent:
.LFB115:
	.loc 3 2387 1
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
	.loc 3 2388 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 3 2391 24
	lw	a5,-48(s0)
	li	a4,1
	sw	a4,0(a5)
	.loc 3 2395 8
	lw	a5,-64(s0)
	beq	a5,zero,.L401
	.loc 3 2395 32 discriminator 1
	lw	a5,-64(s0)
	lw	a4,20(a5)
	.loc 3 2395 23 discriminator 1
	li	a5,-1
	beq	a4,a5,.L401
	.loc 3 2396 36
	lw	a5,-64(s0)
	lw	a4,20(a5)
	.loc 3 2396 28
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 3 2397 35
	lw	a5,-64(s0)
	li	a4,-1
	sw	a4,20(a5)
.L401:
	.loc 3 2402 23
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 3 2402 53
	bne	a5,zero,.L396
	.loc 3 2402 21 discriminator 1
	lw	a5,-36(s0)
	lw	a5,400(a5)
	sw	a5,-20(s0)
	j	.L397
.L396:
	.loc 3 2402 21 is_stmt 0 discriminator 2
	lw	a5,-40(s0)
	sw	a5,-20(s0)
.L397:
	.loc 3 2404 15 is_stmt 1
	lw	a5,-48(s0)
	lw	a4,0(a5)
	lw	a5,0(s0)
	sw	a5,0(sp)
	lw	a7,-64(s0)
	lw	a6,-60(s0)
	lw	a5,-56(s0)
	lw	a3,-52(s0)
	lw	a2,-44(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	x509_crt_find_parent_in
	sw	a0,-24(s0)
	.loc 3 2410 12
	lw	a5,-64(s0)
	beq	a5,zero,.L398
	.loc 3 2410 27 discriminator 1
	lw	a4,-24(s0)
	li	a5,-20480
	addi	a5,a5,1280
	bne	a4,a5,.L398
	.loc 3 2412 41
	lw	a5,-48(s0)
	lw	a4,0(a5)
	.loc 3 2412 39
	lw	a5,-64(s0)
	sw	a4,20(a5)
	.loc 3 2413 20
	lw	a5,-24(s0)
	j	.L399
.L398:
	.loc 3 2420 13
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 3 2420 12
	bne	a5,zero,.L400
	.loc 3 2420 31 discriminator 1
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 3 2420 28 discriminator 1
	beq	a5,zero,.L400
	.loc 3 2425 28
	lw	a5,-48(s0)
	sw	zero,0(a5)
	.loc 3 2402 21
	j	.L401
.L400:
	.loc 3 2429 9
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 3 2429 8
	bne	a5,zero,.L402
	.loc 3 2430 28
	lw	a5,-48(s0)
	sw	zero,0(a5)
	.loc 3 2431 28
	lw	a5,-52(s0)
	sw	zero,0(a5)
.L402:
	.loc 3 2434 12
	li	a5,0
.L399:
	.loc 3 2435 1
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
.LFE115:
	.size	x509_crt_find_parent, .-x509_crt_find_parent
	.section	.text.x509_crt_check_ee_locally_trusted,"ax",@progbits
	.align	1
	.type	x509_crt_check_ee_locally_trusted, @function
x509_crt_check_ee_locally_trusted:
.LFB116:
	.loc 3 2446 1
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
	.loc 3 2450 23
	lw	a5,-36(s0)
	addi	a4,a5,80
	.loc 3 2450 37
	lw	a5,-36(s0)
	addi	a5,a5,112
	.loc 3 2450 9
	mv	a1,a5
	mv	a0,a4
	call	x509_name_cmp
	mv	a5,a0
	.loc 3 2450 8 discriminator 1
	beq	a5,zero,.L404
	.loc 3 2451 16
	li	a5,-1
	j	.L405
.L404:
	.loc 3 2455 14
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 3 2455 5
	j	.L406
.L408:
	.loc 3 2456 21
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 3 2456 37
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 3 2456 12
	bne	a4,a5,.L407
	.loc 3 2457 28
	lw	a5,-36(s0)
	lw	a4,12(a5)
	.loc 3 2457 40
	lw	a5,-20(s0)
	lw	a3,12(a5)
	.loc 3 2457 13
	lw	a5,-36(s0)
	lw	a5,8(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 3 2456 42 discriminator 1
	bne	a5,zero,.L407
	.loc 3 2458 20
	li	a5,0
	j	.L405
.L407:
	.loc 3 2455 42 discriminator 2
	lw	a5,-20(s0)
	lw	a5,400(a5)
	sw	a5,-20(s0)
.L406:
	.loc 3 2455 30 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L408
	.loc 3 2463 12
	li	a5,-1
.L405:
	.loc 3 2464 1
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
.LFE116:
	.size	x509_crt_check_ee_locally_trusted, .-x509_crt_check_ee_locally_trusted
	.section	.text.x509_crt_verify_chain,"ax",@progbits
	.align	1
	.type	x509_crt_verify_chain, @function
x509_crt_verify_chain:
.LFB117:
	.loc 3 2515 1
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
	sw	a7,-112(s0)
	.loc 3 2518 9
	li	a5,-110
	sw	a5,-40(s0)
	.loc 3 2527 23
	sw	zero,-36(s0)
	.loc 3 2538 8
	lw	a5,-112(s0)
	beq	a5,zero,.L410
	.loc 3 2538 32 discriminator 1
	lw	a5,-112(s0)
	lbu	a4,24(a5)
	.loc 3 2538 23 discriminator 1
	li	a5,1
	bne	a4,a5,.L410
	.loc 3 2540 20
	lw	a4,-108(s0)
	lw	a5,-112(s0)
	mv	a3,a4
	addi	a5,a5,32
	li	a4,88
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	memcpy
	.loc 3 2541 26
	lw	a5,-112(s0)
	lw	a5,28(a5)
	.loc 3 2541 18
	sw	a5,-32(s0)
	.loc 3 2544 42
	lw	a5,-108(s0)
	lw	a5,80(a5)
	.loc 3 2544 48
	addi	a5,a5,-1
	.loc 3 2544 13
	slli	a5,a5,3
	lw	a4,-108(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 3 2545 15
	lw	a5,-44(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 3 2546 15
	lw	a5,-44(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 3 2548 9
	j	.L411
.L410:
	.loc 3 2552 11
	lw	a5,-84(s0)
	sw	a5,-24(s0)
	.loc 3 2553 14
	sw	zero,-32(s0)
	.loc 3 2554 23
	sw	zero,-52(s0)
	.loc 3 2555 22
	sw	zero,-28(s0)
.L425:
	.loc 3 2559 42
	lw	a5,-108(s0)
	lw	a5,80(a5)
	.loc 3 2559 13
	slli	a5,a5,3
	lw	a4,-108(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 3 2560 18
	lw	a5,-44(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 3 2561 20
	lw	a5,-44(s0)
	sw	zero,4(a5)
	.loc 3 2562 18
	lw	a5,-108(s0)
	lw	a5,80(a5)
	.loc 3 2562 23
	addi	a4,a5,1
	lw	a5,-108(s0)
	sw	a4,80(a5)
	.loc 3 2563 15
	lw	a5,-44(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 3 2577 12
	lw	a5,-28(s0)
	beq	a5,zero,.L412
	.loc 3 2578 20
	li	a5,0
	j	.L426
.L412:
	.loc 3 2582 13
	lw	a5,-24(s0)
	lbu	a5,392(a5)
	mv	a1,a5
	lw	a0,-104(s0)
	call	x509_profile_check_md_alg
	mv	a5,a0
	.loc 3 2582 12 discriminator 1
	beq	a5,zero,.L414
	.loc 3 2583 13
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 3 2583 20
	li	a5,16384
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
.L414:
	.loc 3 2586 13
	lw	a5,-24(s0)
	lbu	a5,393(a5)
	mv	a1,a5
	lw	a0,-104(s0)
	call	x509_profile_check_pk_alg
	mv	a5,a0
	.loc 3 2586 12 discriminator 1
	beq	a5,zero,.L415
	.loc 3 2587 13
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 3 2587 20
	li	a5,32768
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
.L415:
	.loc 3 2591 22
	lw	a5,-108(s0)
	lw	a4,80(a5)
	.loc 3 2591 12
	li	a5,1
	bne	a4,a5,.L427
	.loc 3 2592 13
	lw	a1,-88(s0)
	lw	a0,-24(s0)
	call	x509_crt_check_ee_locally_trusted
	mv	a5,a0
	.loc 3 2591 33 discriminator 1
	bne	a5,zero,.L427
	.loc 3 2593 20
	li	a5,0
	j	.L426
.L427:
	.loc 3 2597 1
	nop
.L411:
	.loc 3 2603 12
	lw	a5,-96(s0)
	beq	a5,zero,.L416
	.loc 3 2604 13
	lw	a5,-108(s0)
	lw	a5,84(a5)
	mv	a0,a5
	call	mbedtls_x509_crt_free
	.loc 3 2605 27
	lw	a5,-108(s0)
	lw	a5,84(a5)
	.loc 3 2605 13
	mv	a0,a5
	call	free
	.loc 3 2606 43
	lw	a5,-108(s0)
	sw	zero,84(a5)
	.loc 3 2608 19
	lw	a5,-108(s0)
	addi	a4,a5,84
	lw	a5,-96(s0)
	mv	a2,a4
	lw	a1,-24(s0)
	lw	a0,-100(s0)
	jalr	a5
.LVL2:
	sw	a0,-40(s0)
	.loc 3 2609 16
	lw	a5,-40(s0)
	beq	a5,zero,.L417
	.loc 3 2610 24
	li	a5,-12288
	j	.L426
.L417:
	.loc 3 2613 26
	lw	a5,-108(s0)
	lw	a5,84(a5)
	sw	a5,-36(s0)
	j	.L418
.L416:
	.loc 3 2619 26
	lw	a5,-88(s0)
	sw	a5,-36(s0)
.L418:
	.loc 3 2625 45
	lw	a5,-108(s0)
	lw	a5,80(a5)
	.loc 3 2623 15
	addi	a1,a5,-1
	addi	a4,s0,-56
	addi	a3,s0,-52
	addi	a2,s0,-48
	addi	a5,s0,-80
	sw	a5,0(sp)
	lw	a7,-112(s0)
	lw	a6,-32(s0)
	mv	a5,a1
	lw	a1,-36(s0)
	lw	a0,-24(s0)
	call	x509_crt_find_parent
	sw	a0,-40(s0)
	.loc 3 2629 12
	lw	a5,-112(s0)
	beq	a5,zero,.L419
	.loc 3 2629 27 discriminator 1
	lw	a4,-40(s0)
	li	a5,-20480
	addi	a5,a5,1280
	bne	a4,a5,.L419
	.loc 3 2631 33
	lw	a5,-112(s0)
	li	a4,1
	sb	a4,24(a5)
	.loc 3 2632 30
	lw	a4,-32(s0)
	lw	a5,-112(s0)
	sw	a4,28(a5)
	.loc 3 2633 31
	lw	a5,-112(s0)
	lw	a4,-108(s0)
	addi	a5,a5,32
	mv	a3,a4
	li	a4,88
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcpy
	.loc 3 2635 20
	lw	a5,-40(s0)
	j	.L426
.L419:
	.loc 3 2642 20
	lw	a5,-48(s0)
	.loc 3 2642 12
	bne	a5,zero,.L420
	.loc 3 2643 13
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 2643 20
	ori	a4,a5,8
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 3 2644 20
	li	a5,0
	j	.L426
.L420:
	.loc 3 2650 22
	lw	a5,-108(s0)
	lw	a4,80(a5)
	.loc 3 2650 12
	li	a5,1
	beq	a4,a5,.L421
	.loc 3 2651 27
	lw	a5,-24(s0)
	addi	a4,a5,80
	.loc 3 2651 43
	lw	a5,-24(s0)
	addi	a5,a5,112
	.loc 3 2651 13
	mv	a1,a5
	mv	a0,a4
	call	x509_name_cmp
	mv	a5,a0
	.loc 3 2650 33 discriminator 1
	bne	a5,zero,.L421
	.loc 3 2652 21
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L421:
	.loc 3 2657 13
	lw	a5,-52(s0)
	.loc 3 2657 12
	bne	a5,zero,.L422
	.loc 3 2658 22
	lw	a5,-108(s0)
	lw	a4,80(a5)
	.loc 3 2657 32 discriminator 1
	li	a5,8
	bleu	a4,a5,.L422
	.loc 3 2660 20
	li	a5,-12288
	j	.L426
.L422:
	.loc 3 2664 13
	lw	a5,-56(s0)
	.loc 3 2664 12
	bne	a5,zero,.L423
	.loc 3 2665 13
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 2665 20
	ori	a4,a5,8
	lw	a5,-20(s0)
	sw	a4,0(a5)
.L423:
	.loc 3 2669 52
	lw	a5,-48(s0)
	.loc 3 2669 45
	addi	a5,a5,204
	.loc 3 2669 13
	mv	a1,a5
	lw	a0,-104(s0)
	call	x509_profile_check_key
	mv	a5,a0
	.loc 3 2669 12 discriminator 1
	beq	a5,zero,.L424
	.loc 3 2670 13
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 3 2670 20
	li	a5,65536
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
.L424:
	.loc 3 2675 19
	lw	a5,-48(s0)
	addi	a4,s0,-80
	lw	a3,-104(s0)
	lw	a2,-92(s0)
	mv	a1,a5
	lw	a0,-24(s0)
	call	x509_crt_verifycrl
	mv	a4,a0
	.loc 3 2675 9 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 2675 16 discriminator 1
	or	a4,a5,a4
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 3 2681 15
	lw	a5,-48(s0)
	sw	a5,-24(s0)
	.loc 3 2682 16
	sw	zero,-48(s0)
	.loc 3 2683 26
	lw	a5,-52(s0)
	sw	a5,-28(s0)
	.loc 3 2684 27
	sw	zero,-56(s0)
	.loc 3 2559 13
	j	.L425
.L426:
	.loc 3 2686 1
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
.LFE117:
	.size	x509_crt_verify_chain, .-x509_crt_verify_chain
	.section	.text.x509_inet_pton_ipv6,"ax",@progbits
	.align	1
	.type	x509_inet_pton_ipv6, @function
x509_inet_pton_ipv6:
.LFB118:
	.loc 3 2731 1
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
	.loc 3 2732 26
	lw	a5,-84(s0)
	sw	a5,-20(s0)
	.loc 3 2733 9
	sw	zero,-24(s0)
	.loc 3 2733 41
	li	a5,-1
	sw	a5,-32(s0)
.L450:
.LBB12:
	.loc 3 2737 37
	sw	zero,-28(s0)
	.loc 3 2737 18
	sh	zero,-34(s0)
.LBB13:
	.loc 3 2738 9
	j	.L429
.L435:
	.loc 3 2739 30
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 3 2739 27
	addi	a5,a5,-48
	sb	a5,-35(s0)
	.loc 3 2739 46
	lbu	a4,-35(s0)
	li	a5,9
	bleu	a4,a5,.L430
	.loc 3 2739 66 discriminator 2
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	andi	a5,a5,-33
	andi	a5,a5,0xff
	.loc 3 2739 59 discriminator 2
	addi	a5,a5,-65
	sb	a5,-35(s0)
	.loc 3 2739 46 discriminator 2
	lbu	a4,-35(s0)
	li	a5,5
	bgtu	a4,a5,.L431
	.loc 3 2739 96 discriminator 3
	lbu	a5,-35(s0)
	addi	a5,a5,10
	sb	a5,-35(s0)
	.loc 3 2739 46 discriminator 3
	lbu	a5,-35(s0)
	beq	a5,zero,.L431
.L430:
	.loc 3 2739 46 is_stmt 0 discriminator 5
	li	a5,1
	.loc 3 2739 46
	j	.L432
.L431:
	.loc 3 2739 46 discriminator 6
	li	a5,0
.L432:
	.loc 3 2739 16 is_stmt 1 discriminator 8
	beq	a5,zero,.L457
	.loc 3 2742 34
	lh	a5,-34(s0)
	slli	a5,a5,4
	slli	a4,a5,16
	srai	a4,a4,16
	lbu	a5,-35(s0)
	slli	a5,a5,16
	srai	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 3 2742 19
	sh	a5,-34(s0)
	.loc 3 2743 14
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 3 2738 55
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L429:
	.loc 3 2738 40 discriminator 1
	lw	a4,-28(s0)
	li	a5,3
	ble	a4,a5,.L435
	j	.L434
.L457:
	.loc 3 2740 17
	nop
.L434:
.LBE13:
	.loc 3 2745 12
	lw	a5,-28(s0)
	beq	a5,zero,.L436
	.loc 3 2746 146 discriminator 2
	lw	a5,-24(s0)
	slli	a5,a5,1
	.loc 3 2746 110 discriminator 2
	addi	a4,s0,-76
	add	a4,a4,a5
	.loc 3 2746 166 discriminator 2
	lhu	a5,-34(s0)
	slli	a3,a5,8
	lhu	a5,-34(s0)
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-52(s0)
	sh	a5,-54(s0)
.LBB14:
.LBB15:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/alignment.h"
	.loc 4 148 33
	lw	a5,-52(s0)
	sw	a5,-60(s0)
	.loc 4 149 12
	lw	a5,-60(s0)
	lhu	a4,-54(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-54(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 4 153 1
	nop
.LBE15:
.LBE14:
	.loc 3 2747 27
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 3 2748 17
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 3 2748 16
	beq	a5,zero,.L458
	.loc 3 2750 24
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 3 2750 23
	li	a5,46
	bne	a4,a5,.L439
.LBB16:
	.loc 3 2752 20
	lw	a5,-24(s0)
	bne	a5,zero,.L440
	.loc 3 2752 42 discriminator 1
	lw	a4,-32(s0)
	li	a5,-1
	beq	a4,a5,.L438
.L440:
	.loc 3 2752 69 discriminator 3
	lw	a4,-24(s0)
	li	a5,6
	bgt	a4,a5,.L438
	.loc 3 2758 21
	li	a5,4
	sw	a5,-40(s0)
.L442:
	.loc 3 2760 22
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 3 2761 26
	lw	a5,-40(s0)
	addi	a5,a5,-1
	sw	a5,-40(s0)
	.loc 3 2762 26 discriminator 2
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 3 2762 36 discriminator 2
	li	a5,58
	beq	a4,a5,.L441
	.loc 3 2762 36 is_stmt 0 discriminator 1
	lw	a5,-40(s0)
	bgt	a5,zero,.L442
.L441:
	.loc 3 2764 21 is_stmt 1
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 3 2764 20
	li	a5,58
	bne	a4,a5,.L459
	.loc 3 2767 18
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 3 2768 31
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 3 2770 46
	lw	a5,-24(s0)
	slli	a5,a5,1
	.loc 3 2769 21
	addi	a4,s0,-76
	add	a5,a4,a5
	mv	a1,a5
	lw	a0,-20(s0)
	call	x509_inet_pton_ipv4
	mv	a5,a0
	.loc 3 2769 20 discriminator 1
	bne	a5,zero,.L460
	.loc 3 2774 32
	lw	a5,-24(s0)
	addi	a5,a5,2
	sw	a5,-24(s0)
	.loc 3 2775 19
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-20(s0)
	.loc 3 2776 17
	j	.L438
.L439:
.LBE16:
	.loc 3 2777 24
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 3 2777 23
	li	a5,58
	beq	a4,a5,.L445
	.loc 3 2778 24
	li	a5,-1
	j	.L456
.L436:
	.loc 3 2782 16
	lw	a4,-32(s0)
	li	a5,-1
	bne	a4,a5,.L447
	.loc 3 2782 43 discriminator 1
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 3 2782 40 discriminator 1
	li	a5,58
	beq	a4,a5,.L448
.L447:
	.loc 3 2783 24
	li	a5,-1
	j	.L456
.L448:
	.loc 3 2785 30
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	.loc 3 2788 16
	lw	a5,-32(s0)
	bne	a5,zero,.L449
	.loc 3 2788 39 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 3 2788 42 discriminator 1
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 3 2788 39 discriminator 1
	li	a5,58
	beq	a4,a5,.L449
	.loc 3 2789 24
	li	a5,-1
	j	.L456
.L449:
	.loc 3 2792 18
	lw	a5,-20(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 3 2792 16
	bne	a5,zero,.L445
	.loc 3 2793 17
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 3 2794 17
	j	.L438
.L445:
	.loc 3 2797 9
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.LBE12:
	.loc 3 2798 29
	lw	a4,-24(s0)
	li	a5,7
	ble	a4,a5,.L450
	j	.L438
.L458:
.LBB18:
	.loc 3 2749 17
	nop
	j	.L438
.L459:
.LBB17:
	.loc 3 2765 21
	nop
	j	.L438
.L460:
	.loc 3 2771 21
	nop
.L438:
.LBE17:
.LBE18:
	.loc 3 2800 9
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 3 2800 8
	beq	a5,zero,.L451
	.loc 3 2801 16
	li	a5,-1
	j	.L456
.L451:
	.loc 3 2804 8
	lw	a4,-32(s0)
	li	a5,-1
	beq	a4,a5,.L452
.LBB19:
	.loc 3 2805 12
	lw	a4,-24(s0)
	li	a5,6
	ble	a4,a5,.L453
	.loc 3 2806 20
	li	a5,-1
	j	.L456
.L453:
	.loc 3 2808 13
	li	a4,8
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-44(s0)
	.loc 3 2809 13
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	sub	a5,a4,a5
	sw	a5,-48(s0)
	.loc 3 2812 12
	lw	a5,-48(s0)
	beq	a5,zero,.L454
	.loc 3 2813 45
	lw	a4,-32(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	slli	a5,a5,1
	.loc 3 2813 13
	addi	a4,s0,-76
	add	a3,a4,a5
	.loc 3 2814 26
	lw	a5,-32(s0)
	slli	a5,a5,1
	.loc 3 2813 13
	addi	a4,s0,-76
	add	a4,a4,a5
	lw	a5,-48(s0)
	.loc 3 2815 39
	slli	a5,a5,1
	.loc 3 2813 13
	mv	a2,a5
	mv	a1,a4
	mv	a0,a3
	call	memmove
.L454:
	.loc 3 2817 21
	lw	a5,-32(s0)
	slli	a5,a5,1
	.loc 3 2817 9
	addi	a4,s0,-76
	add	a4,a4,a5
	lw	a5,-44(s0)
	.loc 3 2817 56
	slli	a5,a5,1
	.loc 3 2817 9
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	memset
.LBE19:
	j	.L455
.L452:
	.loc 3 2819 12
	lw	a4,-24(s0)
	li	a5,8
	beq	a4,a5,.L455
	.loc 3 2820 20
	li	a5,-1
	j	.L456
.L455:
	.loc 3 2823 5
	addi	a5,s0,-76
	li	a2,16
	mv	a1,a5
	lw	a0,-88(s0)
	call	memcpy
	.loc 3 2824 12
	li	a5,0
.L456:
	.loc 3 2825 1
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
.LFE118:
	.size	x509_inet_pton_ipv6, .-x509_inet_pton_ipv6
	.section	.text.x509_inet_pton_ipv4,"ax",@progbits
	.align	1
	.type	x509_inet_pton_ipv4, @function
x509_inet_pton_ipv4:
.LFB119:
	.loc 3 2828 1
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
	.loc 3 2829 26
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 3 2830 14
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 3 2831 20
	sb	zero,-25(s0)
	.loc 3 2832 13
	sb	zero,-26(s0)
.L470:
	.loc 3 2836 28
	sb	zero,-25(s0)
	.loc 3 2836 15
	sh	zero,-28(s0)
.L466:
	.loc 3 2838 21
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 3 2838 19
	addi	a5,a5,-48
	sb	a5,-29(s0)
	.loc 3 2839 16
	lbu	a4,-29(s0)
	li	a5,9
	bgtu	a4,a5,.L473
	.loc 3 2845 16
	lhu	a5,-28(s0)
	bne	a5,zero,.L464
	.loc 3 2845 28 discriminator 1
	lbu	a5,-25(s0)
	beq	a5,zero,.L464
	.loc 3 2846 24
	li	a5,-1
	j	.L465
.L464:
	.loc 3 2849 32
	lhu	a5,-28(s0)
	mv	a4,a5
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lbu	a5,-29(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 3 2849 19
	add	a5,a4,a5
	sh	a5,-28(s0)
	.loc 3 2850 23
	lbu	a5,-25(s0)
	addi	a5,a5,1
	sb	a5,-25(s0)
	.loc 3 2851 14
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 3 2852 29
	lbu	a4,-25(s0)
	li	a5,2
	bleu	a4,a5,.L466
	j	.L463
.L473:
	.loc 3 2840 17
	nop
.L463:
	.loc 3 2854 12
	lhu	a4,-28(s0)
	li	a5,255
	bgtu	a4,a5,.L467
	.loc 3 2854 26 discriminator 1
	lbu	a4,-25(s0)
	li	a5,3
	bgtu	a4,a5,.L467
	.loc 3 2854 44 discriminator 2
	lbu	a5,-25(s0)
	bne	a5,zero,.L468
.L467:
	.loc 3 2855 20
	li	a5,-1
	j	.L465
.L468:
	.loc 3 2857 13
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 3 2857 18
	lhu	a4,-28(s0)
	andi	a4,a4,0xff
	.loc 3 2857 16
	sb	a4,0(a5)
	.loc 3 2858 19
	lbu	a5,-26(s0)
	addi	a5,a5,1
	sb	a5,-26(s0)
	.loc 3 2859 29
	lbu	a4,-26(s0)
	li	a5,3
	bgtu	a4,a5,.L469
	.loc 3 2859 34 discriminator 1
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 3 2859 32 discriminator 1
	lbu	a4,0(a5)
	.loc 3 2859 29 discriminator 1
	li	a5,46
	beq	a4,a5,.L470
.L469:
	.loc 3 2860 46
	lbu	a4,-26(s0)
	li	a5,4
	bne	a4,a5,.L471
	.loc 3 2860 31 discriminator 1
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 3 2860 28 discriminator 1
	bne	a5,zero,.L471
	.loc 3 2860 46 discriminator 3
	li	a5,0
	.loc 3 2860 46 is_stmt 0
	j	.L465
.L471:
	.loc 3 2860 46 discriminator 4
	li	a5,-1
.L465:
	.loc 3 2861 1 is_stmt 1
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
.LFE119:
	.size	x509_inet_pton_ipv4, .-x509_inet_pton_ipv4
	.section	.text.mbedtls_x509_crt_parse_cn_inet_pton,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_parse_cn_inet_pton
	.type	mbedtls_x509_crt_parse_cn_inet_pton, @function
mbedtls_x509_crt_parse_cn_inet_pton:
.LFB120:
	.loc 3 2878 1
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
	.loc 3 2879 12
	li	a1,58
	lw	a0,-20(s0)
	call	strchr
	mv	a5,a0
	.loc 3 2881 13
	bne	a5,zero,.L475
	.loc 3 2880 14
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	x509_inet_pton_ipv4
	mv	a5,a0
	.loc 3 2881 13 discriminator 1
	bne	a5,zero,.L476
	.loc 3 2881 13 is_stmt 0 discriminator 3
	li	a5,4
	.loc 3 2881 13
	j	.L479
.L476:
	.loc 3 2881 13 discriminator 4
	li	a5,0
	.loc 3 2881 13
	j	.L479
.L475:
	.loc 3 2881 15 is_stmt 1 discriminator 2
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	x509_inet_pton_ipv6
	mv	a5,a0
	.loc 3 2881 13 discriminator 5
	bne	a5,zero,.L478
	.loc 3 2881 13 is_stmt 0 discriminator 6
	li	a5,16
	.loc 3 2881 13
	j	.L479
.L478:
	.loc 3 2881 13 discriminator 7
	li	a5,0
.L479:
	.loc 3 2882 1 is_stmt 1
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
.LFE120:
	.size	mbedtls_x509_crt_parse_cn_inet_pton, .-mbedtls_x509_crt_parse_cn_inet_pton
	.section	.text.x509_crt_check_cn,"ax",@progbits
	.align	1
	.type	x509_crt_check_cn, @function
x509_crt_check_cn:
.LFB121:
	.loc 3 2889 1
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
	.loc 3 2891 13
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 3 2891 8
	lw	a4,-28(s0)
	bne	a4,a5,.L481
	.loc 3 2892 33
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 3 2892 9
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-24(s0)
	call	x509_memcasecmp
	mv	a5,a0
	.loc 3 2891 29 discriminator 1
	bne	a5,zero,.L481
	.loc 3 2893 16
	li	a5,0
	j	.L482
.L481:
	.loc 3 2897 9
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	x509_check_wildcard
	mv	a5,a0
	.loc 3 2897 8 discriminator 1
	bne	a5,zero,.L483
	.loc 3 2898 16
	li	a5,0
	j	.L482
.L483:
	.loc 3 2901 12
	li	a5,-1
.L482:
	.loc 3 2902 1
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
.LFE121:
	.size	x509_crt_check_cn, .-x509_crt_check_cn
	.section	.text.x509_crt_check_san_ip,"ax",@progbits
	.align	1
	.type	x509_crt_check_san_ip, @function
x509_crt_check_san_ip:
.LFB122:
	.loc 3 2906 1
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
	.loc 3 2908 14
	addi	a5,s0,-40
	mv	a1,a5
	lw	a0,-56(s0)
	call	mbedtls_x509_crt_parse_cn_inet_pton
	sw	a0,-60(s0)
	.loc 3 2909 8
	lw	a5,-60(s0)
	bne	a5,zero,.L485
	.loc 3 2910 16
	li	a5,-1
	j	.L490
.L485:
.LBB20:
	.loc 3 2913 39
	lw	a5,-52(s0)
	sw	a5,-20(s0)
	.loc 3 2913 5
	j	.L487
.L489:
.LBB21:
	.loc 3 2914 64
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 2914 69
	andi	a5,a5,0xff
	.loc 3 2914 29
	andi	a5,a5,31
	sb	a5,-21(s0)
	.loc 3 2916 12
	lbu	a4,-21(s0)
	li	a5,7
	bne	a4,a5,.L488
	.loc 3 2917 21
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 3 2916 27 discriminator 1
	lw	a4,-60(s0)
	bne	a4,a5,.L488
	.loc 3 2917 54
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 3 2917 39
	addi	a4,s0,-40
	lw	a2,-60(s0)
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 3 2917 36 discriminator 1
	bne	a5,zero,.L488
	.loc 3 2918 20
	li	a5,0
	j	.L490
.L488:
.LBE21:
	.loc 3 2913 66 discriminator 2
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L487:
	.loc 3 2913 54 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L489
.LBE20:
	.loc 3 2922 12
	li	a5,-1
.L490:
	.loc 3 2923 1
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
.LFE122:
	.size	x509_crt_check_san_ip, .-x509_crt_check_san_ip
	.section	.text.x509_crt_check_san_uri,"ax",@progbits
	.align	1
	.type	x509_crt_check_san_uri, @function
x509_crt_check_san_uri:
.LFB123:
	.loc 3 2927 1
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
.LBB22:
	.loc 3 2928 39
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 3 2928 5
	j	.L492
.L495:
.LBB23:
	.loc 3 2929 64
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 2929 69
	andi	a5,a5,0xff
	.loc 3 2929 29
	andi	a5,a5,31
	sb	a5,-21(s0)
	.loc 3 2931 12
	lbu	a4,-21(s0)
	li	a5,6
	bne	a4,a5,.L493
	.loc 3 2932 21
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 3 2931 27 discriminator 1
	lw	a4,-44(s0)
	bne	a4,a5,.L493
	.loc 3 2932 54
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 3 2932 39
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 3 2932 36 discriminator 1
	bne	a5,zero,.L493
	.loc 3 2933 20
	li	a5,0
	j	.L494
.L493:
.LBE23:
	.loc 3 2928 66 discriminator 2
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L492:
	.loc 3 2928 54 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L495
.LBE22:
	.loc 3 2937 12
	li	a5,-1
.L494:
	.loc 3 2938 1
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
.LFE123:
	.size	x509_crt_check_san_uri, .-x509_crt_check_san_uri
	.section	.text.x509_crt_check_san,"ax",@progbits
	.align	1
	.type	x509_crt_check_san, @function
x509_crt_check_san:
.LFB124:
	.loc 3 2945 1
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
	.loc 3 2946 9
	sw	zero,-20(s0)
	.loc 3 2947 9
	sw	zero,-24(s0)
.LBB24:
	.loc 3 2949 39
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	.loc 3 2949 5
	j	.L497
.L505:
	.loc 3 2950 41
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 3 2950 17
	andi	a5,a5,0xff
	.loc 3 2950 46
	andi	a5,a5,31
	.loc 3 2950 9
	li	a4,7
	beq	a5,a4,.L498
	li	a4,7
	bgt	a5,a4,.L508
	li	a4,2
	beq	a5,a4,.L500
	li	a4,6
	beq	a5,a4,.L501
	.loc 3 2964 17
	j	.L508
.L500:
	.loc 3 2952 39
	lw	a5,-28(s0)
	.loc 3 2952 21
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	x509_crt_check_cn
	mv	a5,a0
	.loc 3 2952 20 discriminator 1
	bne	a5,zero,.L509
	.loc 3 2953 28
	li	a5,0
	j	.L503
.L498:
	.loc 3 2957 24
	li	a5,1
	sw	a5,-20(s0)
	.loc 3 2958 17
	j	.L504
.L501:
	.loc 3 2960 25
	li	a5,1
	sw	a5,-24(s0)
	.loc 3 2961 17
	j	.L504
.L508:
	.loc 3 2964 17
	nop
	j	.L504
.L509:
	.loc 3 2955 17
	nop
.L504:
	.loc 3 2949 66 discriminator 2
	lw	a5,-28(s0)
	lw	a5,12(a5)
	sw	a5,-28(s0)
.L497:
	.loc 3 2949 54 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L505
.LBE24:
	.loc 3 2967 8
	lw	a5,-20(s0)
	beq	a5,zero,.L506
	.loc 3 2968 13
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	x509_crt_check_san_ip
	mv	a5,a0
	.loc 3 2968 12 discriminator 1
	bne	a5,zero,.L506
	.loc 3 2969 20
	li	a5,0
	j	.L503
.L506:
	.loc 3 2972 8
	lw	a5,-24(s0)
	beq	a5,zero,.L507
	.loc 3 2973 13
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	x509_crt_check_san_uri
	mv	a5,a0
	.loc 3 2973 12 discriminator 1
	bne	a5,zero,.L507
	.loc 3 2974 20
	li	a5,0
	j	.L503
.L507:
	.loc 3 2978 12
	li	a5,-1
.L503:
	.loc 3 2979 1
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
.LFE124:
	.size	x509_crt_check_san, .-x509_crt_check_san
	.section	.rodata
	.align	2
.LC48:
	.base64	"VQQDAA=="
	.section	.text.x509_crt_verify_name,"ax",@progbits
	.align	1
	.type	x509_crt_verify_name, @function
x509_crt_verify_name:
.LFB125:
	.loc 3 2987 1
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
	.loc 3 2989 21
	lw	a0,-40(s0)
	call	strlen
	sw	a0,-24(s0)
	.loc 3 2991 12
	lw	a5,-36(s0)
	lw	a5,344(a5)
	.loc 3 2991 24
	andi	a5,a5,32
	.loc 3 2991 8
	beq	a5,zero,.L511
	.loc 3 2992 13
	lw	a5,-36(s0)
	addi	a5,a5,248
	lw	a2,-24(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	x509_crt_check_san
	mv	a5,a0
	.loc 3 2992 12 discriminator 1
	bne	a5,zero,.L512
	.loc 3 2993 13
	j	.L510
.L511:
	.loc 3 2996 19
	lw	a5,-36(s0)
	addi	a5,a5,112
	sw	a5,-20(s0)
	.loc 3 2996 9
	j	.L514
.L519:
	.loc 3 2997 69
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 3 2997 76
	li	a5,3
	bne	a4,a5,.L515
	.loc 3 2997 122 discriminator 2
	lw	a5,-20(s0)
	lw	a4,8(a5)
	.loc 3 2997 139 discriminator 2
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 3 2997 79 discriminator 2
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC48)
	addi	a0,a5,%lo(.LC48)
	call	memcmp
	mv	a5,a0
	.loc 3 2997 76 discriminator 3
	beq	a5,zero,.L516
.L515:
	.loc 3 2997 76 is_stmt 0 discriminator 4
	li	a5,1
	.loc 3 2997 76
	j	.L517
.L516:
	.loc 3 2997 76 discriminator 5
	li	a5,0
.L517:
	.loc 3 2997 16 is_stmt 1 discriminator 7
	bne	a5,zero,.L518
	.loc 3 2998 35
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 3 2998 17
	lw	a2,-24(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	x509_crt_check_cn
	mv	a5,a0
	.loc 3 2997 157 discriminator 8
	beq	a5,zero,.L520
.L518:
	.loc 3 2996 54 discriminator 2
	lw	a5,-20(s0)
	lw	a5,24(a5)
	sw	a5,-20(s0)
.L514:
	.loc 3 2996 41 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L519
.L512:
	.loc 3 3005 5
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 3 3005 12
	ori	a4,a5,4
	lw	a5,-44(s0)
	sw	a4,0(a5)
	j	.L510
.L520:
	.loc 3 2999 17
	nop
.L510:
	.loc 3 3006 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE125:
	.size	x509_crt_verify_name, .-x509_crt_verify_name
	.section	.text.x509_crt_merge_flags_with_cb,"ax",@progbits
	.align	1
	.type	x509_crt_merge_flags_with_cb, @function
x509_crt_merge_flags_with_cb:
.LFB126:
	.loc 3 3016 1
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
	.loc 3 3017 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 3 3022 12
	lw	a5,-40(s0)
	lw	a5,80(a5)
	sw	a5,-20(s0)
	.loc 3 3022 5
	j	.L522
.L525:
	.loc 3 3023 34
	lw	a5,-20(s0)
	addi	a5,a5,-1
	.loc 3 3023 13
	slli	a5,a5,3
	lw	a4,-40(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 3024 24
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 3 3024 19
	sw	a5,-32(s0)
	.loc 3 3026 12
	lw	a5,-44(s0)
	beq	a5,zero,.L523
	.loc 3 3027 42
	lw	a5,-28(s0)
	lw	a4,0(a5)
	.loc 3 3027 49
	lw	a5,-20(s0)
	.loc 3 3027 24
	addi	a2,a5,-1
	addi	a3,s0,-32
	lw	a5,-44(s0)
	mv	a1,a4
	lw	a0,-48(s0)
	jalr	a5
.LVL3:
	sw	a0,-24(s0)
	.loc 3 3027 16 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L523
	.loc 3 3028 24
	lw	a5,-24(s0)
	j	.L526
.L523:
	.loc 3 3032 9
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 3 3032 16
	lw	a5,-32(s0)
	or	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 3 3022 38 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L522:
	.loc 3 3022 32 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L525
	.loc 3 3035 12
	li	a5,0
.L526:
	.loc 3 3036 1
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
.LFE126:
	.size	x509_crt_merge_flags_with_cb, .-x509_crt_merge_flags_with_cb
	.section	.text.x509_crt_verify_restartable_ca_cb,"ax",@progbits
	.align	1
	.type	x509_crt_verify_restartable_ca_cb, @function
x509_crt_verify_restartable_ca_cb:
.LFB127:
	.loc 3 3068 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	a0,-132(s0)
	sw	a1,-136(s0)
	sw	a2,-140(s0)
	sw	a3,-144(s0)
	sw	a4,-148(s0)
	sw	a5,-152(s0)
	sw	a6,-156(s0)
	sw	a7,-160(s0)
	.loc 3 3069 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 3074 12
	lw	a5,-160(s0)
	sw	zero,0(a5)
	.loc 3 3075 14
	sw	zero,-116(s0)
	.loc 3 3076 5
	addi	a5,s0,-112
	mv	a0,a5
	call	x509_crt_verify_chain_reset
	.loc 3 3078 8
	lw	a5,-152(s0)
	bne	a5,zero,.L528
	.loc 3 3079 13
	li	a5,-8192
	addi	a5,a5,-2048
	sw	a5,-20(s0)
	.loc 3 3080 9
	j	.L529
.L528:
	.loc 3 3084 8
	lw	a5,-156(s0)
	beq	a5,zero,.L530
	.loc 3 3085 9
	addi	a5,s0,-116
	mv	a2,a5
	lw	a1,-156(s0)
	lw	a0,-132(s0)
	call	x509_crt_verify_name
.L530:
	.loc 3 3089 35
	lw	a5,-132(s0)
	addi	a5,a5,204
	.loc 3 3089 15
	mv	a0,a5
	call	mbedtls_pk_get_type
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 3 3091 9
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-152(s0)
	call	x509_profile_check_pk_alg
	mv	a5,a0
	.loc 3 3091 8 discriminator 1
	beq	a5,zero,.L531
	.loc 3 3092 18
	lw	a4,-116(s0)
	li	a5,32768
	or	a5,a4,a5
	sw	a5,-116(s0)
.L531:
	.loc 3 3095 41
	lw	a5,-132(s0)
	addi	a5,a5,204
	.loc 3 3095 9
	mv	a1,a5
	lw	a0,-152(s0)
	call	x509_profile_check_key
	mv	a5,a0
	.loc 3 3095 8 discriminator 1
	beq	a5,zero,.L532
	.loc 3 3096 18
	lw	a4,-116(s0)
	li	a5,65536
	or	a5,a4,a5
	sw	a5,-116(s0)
.L532:
	.loc 3 3100 11
	addi	a5,s0,-112
	lw	a7,8(s0)
	mv	a6,a5
	lw	a5,-152(s0)
	lw	a4,-148(s0)
	lw	a3,-144(s0)
	lw	a2,-140(s0)
	lw	a1,-136(s0)
	lw	a0,-132(s0)
	call	x509_crt_verify_chain
	sw	a0,-20(s0)
	.loc 3 3104 8
	lw	a5,-20(s0)
	bne	a5,zero,.L540
	.loc 3 3109 23
	lw	a4,-108(s0)
	.loc 3 3109 30
	lw	a5,-116(s0)
	or	a5,a4,a5
	sw	a5,-108(s0)
	.loc 3 3112 11
	addi	a5,s0,-112
	lw	a3,4(s0)
	lw	a2,0(s0)
	mv	a1,a5
	lw	a0,-160(s0)
	call	x509_crt_merge_flags_with_cb
	sw	a0,-20(s0)
	j	.L529
.L540:
	.loc 3 3105 9
	nop
.L529:
	.loc 3 3117 5
	lw	a5,-28(s0)
	mv	a0,a5
	call	mbedtls_x509_crt_free
	.loc 3 3118 19
	lw	a5,-28(s0)
	.loc 3 3118 5
	mv	a0,a5
	call	free
	.loc 3 3119 34
	sw	zero,-28(s0)
	.loc 3 3123 8
	lw	a5,8(s0)
	beq	a5,zero,.L534
	.loc 3 3123 23 discriminator 1
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1280
	beq	a4,a5,.L534
	.loc 3 3124 9
	lw	a0,8(s0)
	call	mbedtls_x509_crt_restart_free
.L534:
	.loc 3 3131 8
	lw	a4,-20(s0)
	li	a5,-8192
	addi	a5,a5,-1792
	bne	a4,a5,.L535
	.loc 3 3132 13
	li	a5,-12288
	sw	a5,-20(s0)
.L535:
	.loc 3 3135 8
	lw	a5,-20(s0)
	beq	a5,zero,.L536
	.loc 3 3136 16
	lw	a5,-160(s0)
	li	a4,-1
	sw	a4,0(a5)
	.loc 3 3137 16
	lw	a5,-20(s0)
	j	.L539
.L536:
	.loc 3 3140 9
	lw	a5,-160(s0)
	lw	a5,0(a5)
	.loc 3 3140 8
	beq	a5,zero,.L538
	.loc 3 3141 16
	li	a5,-8192
	addi	a5,a5,-1792
	j	.L539
.L538:
	.loc 3 3144 12
	li	a5,0
.L539:
	.loc 3 3145 1
	mv	a0,a5
	lw	ra,156(sp)
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE127:
	.size	x509_crt_verify_restartable_ca_cb, .-x509_crt_verify_restartable_ca_cb
	.section	.text.mbedtls_x509_crt_verify,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_verify
	.type	mbedtls_x509_crt_verify, @function
mbedtls_x509_crt_verify:
.LFB128:
	.loc 3 3157 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	.loc 3 3158 12
	sw	zero,8(sp)
	lw	a5,-44(s0)
	sw	a5,4(sp)
	lw	a5,-40(s0)
	sw	a5,0(sp)
	lw	a7,-36(s0)
	lw	a6,-32(s0)
	lui	a5,%hi(mbedtls_x509_crt_profile_default)
	addi	a5,a5,%lo(mbedtls_x509_crt_profile_default)
	li	a4,0
	li	a3,0
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	x509_crt_verify_restartable_ca_cb
	mv	a5,a0
	.loc 3 3163 1
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
.LFE128:
	.size	mbedtls_x509_crt_verify, .-mbedtls_x509_crt_verify
	.section	.text.mbedtls_x509_crt_verify_with_profile,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_verify_with_profile
	.type	mbedtls_x509_crt_verify_with_profile, @function
mbedtls_x509_crt_verify_with_profile:
.LFB129:
	.loc 3 3175 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	sw	a7,-48(s0)
	.loc 3 3176 12
	sw	zero,8(sp)
	lw	a5,-48(s0)
	sw	a5,4(sp)
	lw	a5,-44(s0)
	sw	a5,0(sp)
	lw	a7,-40(s0)
	lw	a6,-36(s0)
	lw	a5,-32(s0)
	li	a4,0
	li	a3,0
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	x509_crt_verify_restartable_ca_cb
	mv	a5,a0
	.loc 3 3180 1
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
.LFE129:
	.size	mbedtls_x509_crt_verify_with_profile, .-mbedtls_x509_crt_verify_with_profile
	.section	.text.mbedtls_x509_crt_verify_with_ca_cb,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_verify_with_ca_cb
	.type	mbedtls_x509_crt_verify_with_ca_cb, @function
mbedtls_x509_crt_verify_with_ca_cb:
.LFB130:
	.loc 3 3194 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	sw	a7,-48(s0)
	.loc 3 3195 12
	sw	zero,8(sp)
	lw	a5,-48(s0)
	sw	a5,4(sp)
	lw	a5,-44(s0)
	sw	a5,0(sp)
	lw	a7,-40(s0)
	lw	a6,-36(s0)
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	lw	a3,-24(s0)
	li	a2,0
	li	a1,0
	lw	a0,-20(s0)
	call	x509_crt_verify_restartable_ca_cb
	mv	a5,a0
	.loc 3 3199 1
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
.LFE130:
	.size	mbedtls_x509_crt_verify_with_ca_cb, .-mbedtls_x509_crt_verify_with_ca_cb
	.section	.text.mbedtls_x509_crt_verify_restartable,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_verify_restartable
	.type	mbedtls_x509_crt_verify_restartable, @function
mbedtls_x509_crt_verify_restartable:
.LFB131:
	.loc 3 3210 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	sw	a7,-48(s0)
	.loc 3 3211 12
	lw	a5,0(s0)
	sw	a5,8(sp)
	lw	a5,-48(s0)
	sw	a5,4(sp)
	lw	a5,-44(s0)
	sw	a5,0(sp)
	lw	a7,-40(s0)
	lw	a6,-36(s0)
	lw	a5,-32(s0)
	li	a4,0
	li	a3,0
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	x509_crt_verify_restartable_ca_cb
	mv	a5,a0
	.loc 3 3215 1
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
.LFE131:
	.size	mbedtls_x509_crt_verify_restartable, .-mbedtls_x509_crt_verify_restartable
	.section	.text.mbedtls_x509_crt_init,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_init
	.type	mbedtls_x509_crt_init, @function
mbedtls_x509_crt_init:
.LFB132:
	.loc 3 3222 1
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
	.loc 3 3223 5
	li	a2,404
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 3 3224 1
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
.LFE132:
	.size	mbedtls_x509_crt_init, .-mbedtls_x509_crt_init
	.section	.text.mbedtls_x509_crt_free,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_free
	.type	mbedtls_x509_crt_free, @function
mbedtls_x509_crt_free:
.LFB133:
	.loc 3 3230 1
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
	.loc 3 3231 23
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 3 3234 11
	j	.L551
.L554:
	.loc 3 3235 9
	lw	a5,-20(s0)
	addi	a5,a5,204
	mv	a0,a5
	call	mbedtls_pk_free
	.loc 3 3241 67
	lw	a5,-20(s0)
	lw	a5,104(a5)
	.loc 3 3241 9
	mv	a0,a5
	call	mbedtls_asn1_free_named_data_list_shallow
	.loc 3 3242 68
	lw	a5,-20(s0)
	lw	a5,136(a5)
	.loc 3 3242 9
	mv	a0,a5
	call	mbedtls_asn1_free_named_data_list_shallow
	.loc 3 3243 59
	lw	a5,-20(s0)
	lw	a5,372(a5)
	.loc 3 3243 9
	mv	a0,a5
	call	mbedtls_asn1_sequence_free
	.loc 3 3244 63
	lw	a5,-20(s0)
	lw	a5,260(a5)
	.loc 3 3244 9
	mv	a0,a5
	call	mbedtls_asn1_sequence_free
	.loc 3 3245 66
	lw	a5,-20(s0)
	lw	a5,340(a5)
	.loc 3 3245 9
	mv	a0,a5
	call	mbedtls_asn1_sequence_free
	.loc 3 3246 82
	lw	a5,-20(s0)
	lw	a5,300(a5)
	.loc 3 3246 9
	mv	a0,a5
	call	mbedtls_asn1_sequence_free
	.loc 3 3248 26
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 3 3248 12
	beq	a5,zero,.L552
	.loc 3 3248 47 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 3248 36 discriminator 1
	beq	a5,zero,.L552
	.loc 3 3249 51
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 3 3249 13
	lw	a5,-20(s0)
	lw	a5,8(a5)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_zeroize_and_free
.L552:
	.loc 3 3252 18
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 3 3253 18
	lw	a5,-20(s0)
	lw	a5,400(a5)
	sw	a5,-20(s0)
	.loc 3 3255 9
	li	a1,404
	lw	a0,-24(s0)
	call	mbedtls_platform_zeroize
	.loc 3 3256 12
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	beq	a4,a5,.L551
	.loc 3 3257 13
	lw	a0,-24(s0)
	call	free
.L551:
	.loc 3 3234 21
	lw	a5,-20(s0)
	bne	a5,zero,.L554
	.loc 3 3260 1
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
.LFE133:
	.size	mbedtls_x509_crt_free, .-mbedtls_x509_crt_free
	.section	.text.mbedtls_x509_crt_restart_init,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_restart_init
	.type	mbedtls_x509_crt_restart_init, @function
mbedtls_x509_crt_restart_init:
.LFB134:
	.loc 3 3267 1
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
	.loc 3 3268 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_pk_restart_init
	.loc 3 3270 17
	lw	a5,-20(s0)
	sw	zero,8(a5)
	.loc 3 3271 26
	lw	a5,-20(s0)
	sw	zero,12(a5)
	.loc 3 3272 37
	lw	a5,-20(s0)
	sw	zero,16(a5)
	.loc 3 3274 28
	lw	a5,-20(s0)
	li	a4,-1
	sw	a4,20(a5)
	.loc 3 3276 22
	lw	a5,-20(s0)
	sb	zero,24(a5)
	.loc 3 3277 19
	lw	a5,-20(s0)
	sw	zero,28(a5)
	.loc 3 3278 5
	lw	a5,-20(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	x509_crt_verify_chain_reset
	.loc 3 3279 1
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
.LFE134:
	.size	mbedtls_x509_crt_restart_init, .-mbedtls_x509_crt_restart_init
	.section	.text.mbedtls_x509_crt_restart_free,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_restart_free
	.type	mbedtls_x509_crt_restart_free, @function
mbedtls_x509_crt_restart_free:
.LFB135:
	.loc 3 3285 1
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
	.loc 3 3286 8
	lw	a5,-20(s0)
	beq	a5,zero,.L559
	.loc 3 3290 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_pk_restart_free
	.loc 3 3291 5
	lw	a0,-20(s0)
	call	mbedtls_x509_crt_restart_init
	j	.L556
.L559:
	.loc 3 3287 9
	nop
.L556:
	.loc 3 3292 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE135:
	.size	mbedtls_x509_crt_restart_free, .-mbedtls_x509_crt_restart_free
	.section	.text.mbedtls_x509_crt_get_ca_istrue,"ax",@progbits
	.align	1
	.globl	mbedtls_x509_crt_get_ca_istrue
	.type	mbedtls_x509_crt_get_ca_istrue, @function
mbedtls_x509_crt_get_ca_istrue:
.LFB136:
	.loc 3 3296 1
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
	.loc 3 3297 13
	lw	a5,-20(s0)
	lw	a5,344(a5)
	.loc 3 3297 25
	andi	a5,a5,256
	.loc 3 3297 8
	beq	a5,zero,.L561
	.loc 3 3298 19
	lw	a5,-20(s0)
	lw	a5,348(a5)
	j	.L562
.L561:
	.loc 3 3300 12
	li	a5,-8192
	addi	a5,a5,-1280
.L562:
	.loc 3 3301 1
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
.LFE136:
	.size	mbedtls_x509_crt_get_ca_istrue, .-mbedtls_x509_crt_get_ca_istrue
	.text
.Letext0:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecp.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/pk.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509_crl.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509_crt.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/common.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509_internal.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/oid.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2ec6
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x30
	.4byte	.LASF349
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL2
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x13
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x13
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xd
	.4byte	0x32
	.uleb128 0x13
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x13
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x13
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x13
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x31
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x5
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x13
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.4byte	0x45
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x6
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x32
	.byte	0x4
	.uleb128 0x1e
	.4byte	0xad
	.uleb128 0x5
	.4byte	0x32
	.uleb128 0x5
	.4byte	0xc3
	.uleb128 0x1e
	.4byte	0xb9
	.uleb128 0x13
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0x5
	.4byte	0xca
	.uleb128 0x1e
	.4byte	0xcf
	.uleb128 0x5
	.4byte	0xe3
	.uleb128 0x1e
	.4byte	0xd9
	.uleb128 0x33
	.uleb128 0x28
	.byte	0x2
	.byte	0x4
	.byte	0x56
	.4byte	0xf8
	.uleb128 0x9
	.string	"x"
	.byte	0x4
	.byte	0x57
	.byte	0xe
	.4byte	0x95
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x4
	.byte	0x58
	.byte	0x1b
	.4byte	0xe4
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x7
	.byte	0xaa
	.byte	0x12
	.4byte	0xa1
	.uleb128 0x12
	.4byte	.LASF19
	.byte	0x8
	.byte	0x7
	.byte	0xd0
	.4byte	0x13e
	.uleb128 0x9
	.string	"p"
	.byte	0x7
	.byte	0xd5
	.byte	0x17
	.4byte	0x13e
	.byte	0
	.uleb128 0x9
	.string	"s"
	.byte	0x7
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x9
	.string	"n"
	.byte	0x7
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	0x104
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x7
	.byte	0xf0
	.byte	0x1
	.4byte	0x110
	.uleb128 0x12
	.4byte	.LASF20
	.byte	0xc
	.byte	0x8
	.byte	0x8d
	.4byte	0x181
	.uleb128 0x9
	.string	"tag"
	.byte	0x8
	.byte	0x8e
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x9
	.string	"len"
	.byte	0x8
	.byte	0x8f
	.byte	0xc
	.4byte	0x76
	.byte	0x4
	.uleb128 0x9
	.string	"p"
	.byte	0x8
	.byte	0x90
	.byte	0x14
	.4byte	0xb4
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x8
	.byte	0x92
	.byte	0x1
	.4byte	0x14f
	.uleb128 0xd
	.4byte	0x181
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x10
	.byte	0x8
	.byte	0xa1
	.4byte	0x1b9
	.uleb128 0x9
	.string	"buf"
	.byte	0x8
	.byte	0xa2
	.byte	0x16
	.4byte	0x181
	.byte	0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x8
	.byte	0xab
	.byte	0x23
	.4byte	0x1b9
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	0x192
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x8
	.byte	0xad
	.byte	0x1
	.4byte	0x192
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x20
	.byte	0x8
	.byte	0xb2
	.4byte	0x20b
	.uleb128 0x9
	.string	"oid"
	.byte	0x8
	.byte	0xb3
	.byte	0x16
	.4byte	0x181
	.byte	0
	.uleb128 0x9
	.string	"val"
	.byte	0x8
	.byte	0xb4
	.byte	0x16
	.4byte	0x181
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x8
	.byte	0xbd
	.byte	0x25
	.4byte	0x20b
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x8
	.byte	0xc4
	.byte	0x13
	.4byte	0x32
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x1ca
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x8
	.byte	0xc6
	.byte	0x1
	.4byte	0x1ca
	.uleb128 0x23
	.4byte	0x32
	.byte	0x9
	.byte	0x2f
	.4byte	0x270
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0xb
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x11
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x9
	.byte	0x3c
	.byte	0x3
	.4byte	0x21c
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x9
	.byte	0x6b
	.byte	0x22
	.4byte	0x28d
	.uleb128 0xd
	.4byte	0x27c
	.uleb128 0x29
	.4byte	.LASF38
	.uleb128 0x5
	.4byte	0x288
	.uleb128 0x23
	.4byte	0x32
	.byte	0xa
	.byte	0x66
	.4byte	0x2f7
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0xb
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0xa
	.byte	0x75
	.byte	0x3
	.4byte	0x297
	.uleb128 0xd
	.4byte	0x2f7
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x18
	.byte	0xa
	.byte	0x9e
	.4byte	0x336
	.uleb128 0x9
	.string	"X"
	.byte	0xa
	.byte	0x9f
	.byte	0x11
	.4byte	0x143
	.byte	0
	.uleb128 0x9
	.string	"Y"
	.byte	0xa
	.byte	0xa0
	.byte	0x11
	.4byte	0x143
	.byte	0x8
	.uleb128 0x9
	.string	"Z"
	.byte	0xa
	.byte	0xa1
	.byte	0x11
	.4byte	0x143
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0xa
	.byte	0xa3
	.byte	0x1
	.4byte	0x308
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0x60
	.byte	0xa
	.byte	0xe9
	.4byte	0x406
	.uleb128 0x9
	.string	"id"
	.byte	0xa
	.byte	0xea
	.byte	0x1a
	.4byte	0x2f7
	.byte	0
	.uleb128 0x9
	.string	"P"
	.byte	0xa
	.byte	0xeb
	.byte	0x11
	.4byte	0x143
	.byte	0x4
	.uleb128 0x9
	.string	"A"
	.byte	0xa
	.byte	0xec
	.byte	0x11
	.4byte	0x143
	.byte	0xc
	.uleb128 0x9
	.string	"B"
	.byte	0xa
	.byte	0xf1
	.byte	0x11
	.4byte	0x143
	.byte	0x14
	.uleb128 0x9
	.string	"G"
	.byte	0xa
	.byte	0xf3
	.byte	0x17
	.4byte	0x336
	.byte	0x1c
	.uleb128 0x9
	.string	"N"
	.byte	0xa
	.byte	0xf4
	.byte	0x11
	.4byte	0x143
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0xa
	.byte	0xf5
	.byte	0xc
	.4byte	0x76
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0xa
	.byte	0xf6
	.byte	0xc
	.4byte	0x76
	.byte	0x40
	.uleb128 0x9
	.string	"h"
	.byte	0xa
	.byte	0xfb
	.byte	0x12
	.4byte	0x6f
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0xa
	.byte	0xfc
	.byte	0xa
	.4byte	0x41a
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0xa
	.byte	0xfe
	.byte	0xa
	.4byte	0x438
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0xa
	.byte	0xff
	.byte	0xa
	.4byte	0x438
	.byte	0x50
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0xa
	.2byte	0x100
	.byte	0xb
	.4byte	0xad
	.byte	0x54
	.uleb128 0x18
	.string	"T"
	.byte	0xa
	.2byte	0x101
	.byte	0x18
	.4byte	0x433
	.byte	0x58
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0xa
	.2byte	0x102
	.byte	0xc
	.4byte	0x76
	.byte	0x5c
	.byte	0
	.uleb128 0x1b
	.4byte	0x68
	.4byte	0x415
	.uleb128 0x1
	.4byte	0x415
	.byte	0
	.uleb128 0x5
	.4byte	0x143
	.uleb128 0x5
	.4byte	0x406
	.uleb128 0x1b
	.4byte	0x68
	.4byte	0x433
	.uleb128 0x1
	.4byte	0x433
	.uleb128 0x1
	.4byte	0xad
	.byte	0
	.uleb128 0x5
	.4byte	0x336
	.uleb128 0x5
	.4byte	0x41f
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0xa
	.2byte	0x104
	.byte	0x1
	.4byte	0x342
	.uleb128 0x2a
	.4byte	.LASF63
	.byte	0x80
	.byte	0xa
	.2byte	0x1ac
	.byte	0x10
	.4byte	0x47f
	.uleb128 0x18
	.string	"grp"
	.byte	0xa
	.2byte	0x1ad
	.byte	0x17
	.4byte	0x43d
	.byte	0
	.uleb128 0x18
	.string	"d"
	.byte	0xa
	.2byte	0x1ae
	.byte	0x11
	.4byte	0x143
	.byte	0x60
	.uleb128 0x18
	.string	"Q"
	.byte	0xa
	.2byte	0x1af
	.byte	0x17
	.4byte	0x336
	.byte	0x68
	.byte	0
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0xa
	.2byte	0x1b1
	.byte	0x1
	.4byte	0x44a
	.uleb128 0xd
	.4byte	0x47f
	.uleb128 0x19
	.4byte	0xa1
	.4byte	0x4a1
	.uleb128 0x1a
	.4byte	0x6f
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x4b1
	.uleb128 0x1a
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.4byte	0x76
	.uleb128 0x5
	.4byte	0x89
	.uleb128 0x23
	.4byte	0x32
	.byte	0xb
	.byte	0x49
	.4byte	0x4f7
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF70
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0xb
	.byte	0x52
	.byte	0x3
	.4byte	0x4bb
	.uleb128 0xd
	.4byte	0x4f7
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0xb
	.byte	0xd5
	.byte	0x22
	.4byte	0x519
	.uleb128 0xd
	.4byte	0x508
	.uleb128 0x29
	.4byte	.LASF73
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0x8
	.byte	0xb
	.byte	0xdc
	.4byte	0x545
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0xb
	.byte	0xdd
	.byte	0x1e
	.4byte	0x545
	.byte	0
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0xb
	.byte	0xde
	.byte	0xb
	.4byte	0xad
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0x514
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0xb
	.2byte	0x109
	.byte	0x3
	.4byte	0x51e
	.uleb128 0xd
	.4byte	0x54a
	.uleb128 0x24
	.byte	0x8
	.byte	0xb
	.2byte	0x10f
	.4byte	0x582
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0xb
	.2byte	0x110
	.byte	0x1e
	.4byte	0x545
	.byte	0
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0xb
	.2byte	0x111
	.byte	0xb
	.4byte	0xad
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0xb
	.2byte	0x112
	.byte	0x3
	.4byte	0x55c
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0xc
	.byte	0xd8
	.byte	0x1a
	.4byte	0x181
	.uleb128 0xd
	.4byte	0x58f
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0xc
	.byte	0xe3
	.byte	0x21
	.4byte	0x210
	.uleb128 0xd
	.4byte	0x5a0
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0xc
	.byte	0xe8
	.byte	0x1f
	.4byte	0x1be
	.uleb128 0xd
	.4byte	0x5b1
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x34
	.byte	0xc
	.byte	0xed
	.4byte	0x603
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0xc
	.byte	0xee
	.byte	0x16
	.4byte	0x58f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0xc
	.byte	0xef
	.byte	0x1b
	.4byte	0x5b1
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0xc
	.byte	0xf0
	.byte	0x16
	.4byte	0x58f
	.byte	0x1c
	.uleb128 0x9
	.string	"raw"
	.byte	0xc
	.byte	0xf1
	.byte	0x16
	.4byte	0x58f
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0xc
	.byte	0xf3
	.byte	0x1
	.4byte	0x5c2
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x18
	.byte	0xc
	.byte	0xf6
	.4byte	0x66a
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0xc
	.byte	0xf7
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x9
	.string	"mon"
	.byte	0xc
	.byte	0xf7
	.byte	0xf
	.4byte	0x68
	.byte	0x4
	.uleb128 0x9
	.string	"day"
	.byte	0xc
	.byte	0xf7
	.byte	0x14
	.4byte	0x68
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0xc
	.byte	0xf8
	.byte	0x9
	.4byte	0x68
	.byte	0xc
	.uleb128 0x9
	.string	"min"
	.byte	0xc
	.byte	0xf8
	.byte	0xf
	.4byte	0x68
	.byte	0x10
	.uleb128 0x9
	.string	"sec"
	.byte	0xc
	.byte	0xf8
	.byte	0x14
	.4byte	0x68
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0xc
	.byte	0xfa
	.byte	0x1
	.4byte	0x60f
	.uleb128 0xd
	.4byte	0x66a
	.uleb128 0x12
	.4byte	.LASF89
	.byte	0x40
	.byte	0xd
	.byte	0x27
	.4byte	0x6c9
	.uleb128 0x9
	.string	"raw"
	.byte	0xd
	.byte	0x29
	.byte	0x16
	.4byte	0x58f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0xd
	.byte	0x2b
	.byte	0x16
	.4byte	0x58f
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0xd
	.byte	0x2d
	.byte	0x17
	.4byte	0x66a
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0xd
	.byte	0x33
	.byte	0x16
	.4byte	0x58f
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0xd
	.byte	0x38
	.byte	0x24
	.4byte	0x6c9
	.byte	0x3c
	.byte	0
	.uleb128 0x5
	.4byte	0x67b
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0xd
	.byte	0x3a
	.byte	0x1
	.4byte	0x67b
	.uleb128 0xd
	.4byte	0x6ce
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0xf4
	.byte	0xd
	.byte	0x40
	.4byte	0x7bc
	.uleb128 0x9
	.string	"raw"
	.byte	0xd
	.byte	0x41
	.byte	0x16
	.4byte	0x58f
	.byte	0
	.uleb128 0x9
	.string	"tbs"
	.byte	0xd
	.byte	0x42
	.byte	0x16
	.4byte	0x58f
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0xd
	.byte	0x44
	.byte	0x9
	.4byte	0x68
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0xd
	.byte	0x45
	.byte	0x16
	.4byte	0x58f
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0xd
	.byte	0x47
	.byte	0x16
	.4byte	0x58f
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0xd
	.byte	0x49
	.byte	0x17
	.4byte	0x5a0
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0xd
	.byte	0x4b
	.byte	0x17
	.4byte	0x66a
	.byte	0x54
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0xd
	.byte	0x4c
	.byte	0x17
	.4byte	0x66a
	.byte	0x6c
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0xd
	.byte	0x4e
	.byte	0x1c
	.4byte	0x6ce
	.byte	0x84
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0xd
	.byte	0x50
	.byte	0x16
	.4byte	0x58f
	.byte	0xc4
	.uleb128 0x7
	.4byte	.LASF102
	.byte	0xd
	.byte	0x52
	.byte	0x16
	.4byte	0x58f
	.byte	0xd0
	.uleb128 0x9
	.string	"sig"
	.byte	0xd
	.byte	0x53
	.byte	0x16
	.4byte	0x58f
	.byte	0xdc
	.uleb128 0x7
	.4byte	.LASF103
	.byte	0xd
	.byte	0x54
	.byte	0x17
	.4byte	0x270
	.byte	0xe8
	.uleb128 0x7
	.4byte	.LASF104
	.byte	0xd
	.byte	0x55
	.byte	0x17
	.4byte	0x4f7
	.byte	0xe9
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0xd
	.byte	0x56
	.byte	0xb
	.4byte	0xad
	.byte	0xec
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0xd
	.byte	0x5b
	.byte	0x1e
	.4byte	0x7bc
	.byte	0xf0
	.byte	0
	.uleb128 0x5
	.4byte	0x6df
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0xd
	.byte	0x5d
	.byte	0x1
	.4byte	0x6df
	.uleb128 0xd
	.4byte	0x7c1
	.uleb128 0x34
	.4byte	.LASF106
	.2byte	0x194
	.byte	0xe
	.byte	0x29
	.byte	0x10
	.4byte	0x981
	.uleb128 0x7
	.4byte	.LASF107
	.byte	0xe
	.byte	0x2a
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x9
	.string	"raw"
	.byte	0xe
	.byte	0x2c
	.byte	0x16
	.4byte	0x58f
	.byte	0x4
	.uleb128 0x9
	.string	"tbs"
	.byte	0xe
	.byte	0x2d
	.byte	0x16
	.4byte	0x58f
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0xe
	.byte	0x2f
	.byte	0x9
	.4byte	0x68
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0xe
	.byte	0x30
	.byte	0x16
	.4byte	0x58f
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0xe
	.byte	0x31
	.byte	0x16
	.4byte	0x58f
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0xe
	.byte	0x33
	.byte	0x16
	.4byte	0x58f
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF108
	.byte	0xe
	.byte	0x34
	.byte	0x16
	.4byte	0x58f
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0xe
	.byte	0x36
	.byte	0x17
	.4byte	0x5a0
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF109
	.byte	0xe
	.byte	0x37
	.byte	0x17
	.4byte	0x5a0
	.byte	0x70
	.uleb128 0x7
	.4byte	.LASF110
	.byte	0xe
	.byte	0x39
	.byte	0x17
	.4byte	0x66a
	.byte	0x90
	.uleb128 0x7
	.4byte	.LASF111
	.byte	0xe
	.byte	0x3a
	.byte	0x17
	.4byte	0x66a
	.byte	0xa8
	.uleb128 0x7
	.4byte	.LASF112
	.byte	0xe
	.byte	0x3c
	.byte	0x16
	.4byte	0x58f
	.byte	0xc0
	.uleb128 0x9
	.string	"pk"
	.byte	0xe
	.byte	0x3d
	.byte	0x18
	.4byte	0x54a
	.byte	0xcc
	.uleb128 0x7
	.4byte	.LASF113
	.byte	0xe
	.byte	0x3f
	.byte	0x16
	.4byte	0x58f
	.byte	0xd4
	.uleb128 0x7
	.4byte	.LASF114
	.byte	0xe
	.byte	0x40
	.byte	0x16
	.4byte	0x58f
	.byte	0xe0
	.uleb128 0x7
	.4byte	.LASF115
	.byte	0xe
	.byte	0x41
	.byte	0x16
	.4byte	0x58f
	.byte	0xec
	.uleb128 0x7
	.4byte	.LASF116
	.byte	0xe
	.byte	0x42
	.byte	0x1b
	.4byte	0x5b1
	.byte	0xf8
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0x43
	.byte	0x16
	.4byte	0x58f
	.2byte	0x108
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0x44
	.byte	0x1c
	.4byte	0x603
	.2byte	0x114
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0x46
	.byte	0x1b
	.4byte	0x5b1
	.2byte	0x148
	.uleb128 0x10
	.4byte	.LASF120
	.byte	0x48
	.byte	0x9
	.4byte	0x68
	.2byte	0x158
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0x49
	.byte	0x9
	.4byte	0x68
	.2byte	0x15c
	.uleb128 0x10
	.4byte	.LASF122
	.byte	0x4a
	.byte	0x9
	.4byte	0x68
	.2byte	0x160
	.uleb128 0x10
	.4byte	.LASF123
	.byte	0x4c
	.byte	0x12
	.4byte	0x6f
	.2byte	0x164
	.uleb128 0x10
	.4byte	.LASF124
	.byte	0x4e
	.byte	0x1b
	.4byte	0x5b1
	.2byte	0x168
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0x50
	.byte	0x13
	.4byte	0x32
	.2byte	0x178
	.uleb128 0x35
	.string	"sig"
	.byte	0xe
	.byte	0x52
	.byte	0x16
	.4byte	0x58f
	.2byte	0x17c
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0x53
	.byte	0x17
	.4byte	0x270
	.2byte	0x188
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0x54
	.byte	0x17
	.4byte	0x4f7
	.2byte	0x189
	.uleb128 0x10
	.4byte	.LASF105
	.byte	0x55
	.byte	0xb
	.4byte	0xad
	.2byte	0x18c
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x5a
	.byte	0x1e
	.4byte	0x981
	.2byte	0x190
	.byte	0
	.uleb128 0x5
	.4byte	0x7d2
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0xe
	.byte	0x5c
	.byte	0x1
	.4byte	0x7d2
	.uleb128 0xd
	.4byte	0x986
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0x10
	.byte	0xe
	.byte	0x7d
	.4byte	0x9d8
	.uleb128 0x7
	.4byte	.LASF127
	.byte	0xe
	.byte	0x7e
	.byte	0xe
	.4byte	0xa1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF128
	.byte	0xe
	.byte	0x7f
	.byte	0xe
	.4byte	0xa1
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF129
	.byte	0xe
	.byte	0x82
	.byte	0xe
	.4byte	0xa1
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF130
	.byte	0xe
	.byte	0x83
	.byte	0xe
	.4byte	0xa1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0xe
	.byte	0x85
	.byte	0x1
	.4byte	0x997
	.uleb128 0xd
	.4byte	0x9d8
	.uleb128 0x5
	.4byte	0x54a
	.uleb128 0x5
	.4byte	0x210
	.uleb128 0x28
	.byte	0x8
	.byte	0xe
	.byte	0xfa
	.4byte	0xa16
	.uleb128 0x9
	.string	"crt"
	.byte	0xe
	.byte	0xfb
	.byte	0x17
	.4byte	0xa16
	.byte	0
	.uleb128 0x7
	.4byte	.LASF131
	.byte	0xe
	.byte	0xfc
	.byte	0xe
	.4byte	0xa1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0x986
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0xe
	.byte	0xfd
	.byte	0x3
	.4byte	0x9f3
	.uleb128 0xd
	.4byte	0xa1b
	.uleb128 0x24
	.byte	0x58
	.byte	0xe
	.2byte	0x107
	.4byte	0xa60
	.uleb128 0xf
	.4byte	.LASF133
	.byte	0xe
	.2byte	0x108
	.byte	0x28
	.4byte	0xa60
	.byte	0
	.uleb128 0x18
	.string	"len"
	.byte	0xe
	.2byte	0x109
	.byte	0xe
	.4byte	0x6f
	.byte	0x50
	.uleb128 0xf
	.4byte	.LASF134
	.byte	0xe
	.2byte	0x110
	.byte	0x17
	.4byte	0xa16
	.byte	0x54
	.byte	0
	.uleb128 0x19
	.4byte	0xa1b
	.4byte	0xa70
	.uleb128 0x1a
	.4byte	0x6f
	.byte	0x9
	.byte	0
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0xe
	.2byte	0x112
	.byte	0x3
	.4byte	0xa2c
	.uleb128 0xd
	.4byte	0xa70
	.uleb128 0x36
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0xe
	.2byte	0x126
	.byte	0xa
	.4byte	0xa9e
	.uleb128 0x8
	.4byte	.LASF136
	.byte	0
	.uleb128 0x8
	.4byte	.LASF137
	.byte	0x1
	.byte	0
	.uleb128 0x24
	.byte	0x78
	.byte	0xe
	.2byte	0x119
	.4byte	0xb17
	.uleb128 0x18
	.string	"pk"
	.byte	0xe
	.2byte	0x11b
	.byte	0x1c
	.4byte	0x582
	.byte	0
	.uleb128 0xf
	.4byte	.LASF138
	.byte	0xe
	.2byte	0x11e
	.byte	0x17
	.4byte	0xa16
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF139
	.byte	0xe
	.2byte	0x11f
	.byte	0x17
	.4byte	0xa16
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF140
	.byte	0xe
	.2byte	0x120
	.byte	0x9
	.4byte	0x68
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF141
	.byte	0xe
	.2byte	0x123
	.byte	0x9
	.4byte	0x68
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF142
	.byte	0xe
	.2byte	0x129
	.byte	0x7
	.4byte	0xa82
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF143
	.byte	0xe
	.2byte	0x12a
	.byte	0x9
	.4byte	0x68
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF144
	.byte	0xe
	.2byte	0x12b
	.byte	0x23
	.4byte	0xa70
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF145
	.byte	0xe
	.2byte	0x12d
	.byte	0x3
	.4byte	0xa9e
	.uleb128 0x1f
	.4byte	.LASF146
	.2byte	0x144
	.4byte	0x9e4
	.uleb128 0x1f
	.4byte	.LASF147
	.2byte	0x14b
	.4byte	0x9e4
	.uleb128 0x1f
	.4byte	.LASF148
	.2byte	0x150
	.4byte	0x9e4
	.uleb128 0x1f
	.4byte	.LASF149
	.2byte	0x156
	.4byte	0x9e4
	.uleb128 0x15
	.4byte	.LASF150
	.byte	0xe
	.2byte	0x192
	.byte	0xf
	.4byte	0xb5d
	.uleb128 0x5
	.4byte	0xb62
	.uleb128 0x1b
	.4byte	0x68
	.4byte	0xb8a
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0xb8a
	.uleb128 0x1
	.4byte	0xb8f
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0xb94
	.byte	0
	.uleb128 0x5
	.4byte	0x992
	.uleb128 0x5
	.4byte	0x59b
	.uleb128 0x5
	.4byte	0x39
	.uleb128 0x15
	.4byte	.LASF151
	.byte	0xe
	.2byte	0x310
	.byte	0xf
	.4byte	0xba6
	.uleb128 0x5
	.4byte	0xbab
	.uleb128 0x1b
	.4byte	0x68
	.4byte	0xbc4
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0xb8a
	.uleb128 0x1
	.4byte	0xbc4
	.byte	0
	.uleb128 0x5
	.4byte	0xa16
	.uleb128 0x20
	.4byte	0xb24
	.byte	0x59
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_x509_crt_profile_default
	.uleb128 0x20
	.4byte	0xb2f
	.byte	0x73
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_x509_crt_profile_next
	.uleb128 0x20
	.4byte	0xb3a
	.byte	0x8c
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_x509_crt_profile_suiteb
	.uleb128 0x20
	.4byte	0xb45
	.byte	0xa1
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_x509_crt_profile_none
	.uleb128 0x2a
	.4byte	.LASF152
	.byte	0x8
	.byte	0x3
	.2byte	0x762
	.byte	0x8
	.4byte	0xc24
	.uleb128 0xf
	.4byte	.LASF153
	.byte	0x3
	.2byte	0x763
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0xf
	.4byte	.LASF154
	.byte	0x3
	.2byte	0x764
	.byte	0x11
	.4byte	0xcf
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	0xbf9
	.uleb128 0x19
	.4byte	0xc24
	.4byte	0xc39
	.uleb128 0x1a
	.4byte	0x6f
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.4byte	0xc29
	.uleb128 0x4
	.4byte	.LASF209
	.2byte	0x768
	.byte	0x2c
	.4byte	0xc39
	.uleb128 0x5
	.byte	0x3
	.4byte	x509_crt_verify_strings
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0xb
	.2byte	0x154
	.4byte	0xc62
	.uleb128 0x1
	.4byte	0xc62
	.byte	0
	.uleb128 0x5
	.4byte	0x582
	.uleb128 0x1c
	.4byte	.LASF156
	.byte	0xb
	.2byte	0x14c
	.4byte	0xc79
	.uleb128 0x1
	.4byte	0xc62
	.byte	0
	.uleb128 0x25
	.4byte	.LASF157
	.byte	0xf
	.byte	0x9f
	.4byte	0xc8f
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x25
	.4byte	.LASF158
	.byte	0x10
	.byte	0x79
	.4byte	0xca5
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF159
	.byte	0x8
	.2byte	0x1aa
	.4byte	0xcb7
	.uleb128 0x1
	.4byte	0xcb7
	.byte	0
	.uleb128 0x5
	.4byte	0x1be
	.uleb128 0x1c
	.4byte	.LASF160
	.byte	0x8
	.2byte	0x277
	.4byte	0xcce
	.uleb128 0x1
	.4byte	0x9ee
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF161
	.byte	0xb
	.2byte	0x143
	.4byte	0xce0
	.uleb128 0x1
	.4byte	0x9e9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF162
	.byte	0x11
	.byte	0x23
	.byte	0x7
	.4byte	0xb9
	.4byte	0xcfb
	.uleb128 0x1
	.4byte	0xcf
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0xc
	.4byte	.LASF163
	.byte	0x11
	.byte	0x20
	.byte	0x8
	.4byte	0xad
	.4byte	0xd1b
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0xd9
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xe
	.4byte	.LASF164
	.byte	0xb
	.2byte	0x307
	.byte	0x5
	.4byte	0x68
	.4byte	0xd50
	.uleb128 0x1
	.4byte	0x9e9
	.uleb128 0x1
	.4byte	0x270
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0xc62
	.byte	0
	.uleb128 0xe
	.4byte	.LASF165
	.byte	0xb
	.2byte	0x1c8
	.byte	0x5
	.4byte	0x68
	.4byte	0xd6c
	.uleb128 0x1
	.4byte	0xd6c
	.uleb128 0x1
	.4byte	0x4f7
	.byte	0
	.uleb128 0x5
	.4byte	0x557
	.uleb128 0xe
	.4byte	.LASF166
	.byte	0xb
	.2byte	0x32c
	.byte	0x5
	.4byte	0x68
	.4byte	0xdab
	.uleb128 0x1
	.4byte	0x4f7
	.uleb128 0x1
	.4byte	0xd9
	.uleb128 0x1
	.4byte	0x9e9
	.uleb128 0x1
	.4byte	0x270
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xe
	.4byte	.LASF167
	.byte	0x9
	.2byte	0x151
	.byte	0x5
	.4byte	0x68
	.4byte	0xdd1
	.uleb128 0x1
	.4byte	0x292
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0xb4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF168
	.byte	0x9
	.byte	0xeb
	.byte	0xf
	.4byte	0x32
	.4byte	0xde7
	.uleb128 0x1
	.4byte	0x292
	.byte	0
	.uleb128 0xc
	.4byte	.LASF169
	.byte	0x9
	.byte	0x95
	.byte	0x1a
	.4byte	0x292
	.4byte	0xdfd
	.uleb128 0x1
	.4byte	0x270
	.byte	0
	.uleb128 0xc
	.4byte	.LASF170
	.byte	0x12
	.byte	0x50
	.byte	0x5
	.4byte	0x68
	.4byte	0xe1d
	.uleb128 0x1
	.4byte	0xe1d
	.uleb128 0x1
	.4byte	0x4b1
	.uleb128 0x1
	.4byte	0x6f
	.byte	0
	.uleb128 0x5
	.4byte	0xb9
	.uleb128 0xc
	.4byte	.LASF171
	.byte	0x12
	.byte	0x4e
	.byte	0x5
	.4byte	0x68
	.4byte	0xe42
	.uleb128 0x1
	.4byte	0xe1d
	.uleb128 0x1
	.4byte	0x4b1
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xc
	.4byte	.LASF172
	.byte	0x12
	.byte	0x4a
	.byte	0x5
	.4byte	0x68
	.4byte	0xe67
	.uleb128 0x1
	.4byte	0xe1d
	.uleb128 0x1
	.4byte	0x4b1
	.uleb128 0x1
	.4byte	0xe67
	.uleb128 0x1
	.4byte	0xcf
	.byte	0
	.uleb128 0x5
	.4byte	0x5bd
	.uleb128 0xc
	.4byte	.LASF173
	.byte	0x12
	.byte	0x32
	.byte	0x5
	.4byte	0x68
	.4byte	0xe8c
	.uleb128 0x1
	.4byte	0xb9
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0xcf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF174
	.byte	0xb
	.2byte	0x3f6
	.byte	0xd
	.4byte	0xcf
	.4byte	0xea3
	.uleb128 0x1
	.4byte	0xd6c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF175
	.byte	0x12
	.byte	0x2e
	.byte	0x5
	.4byte	0x68
	.4byte	0xed2
	.uleb128 0x1
	.4byte	0xb9
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0xb8f
	.uleb128 0x1
	.4byte	0x4f7
	.uleb128 0x1
	.4byte	0x270
	.uleb128 0x1
	.4byte	0xd9
	.byte	0
	.uleb128 0xe
	.4byte	.LASF176
	.byte	0xc
	.2byte	0x143
	.byte	0x5
	.4byte	0x68
	.4byte	0xef3
	.uleb128 0x1
	.4byte	0xb9
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0xef3
	.byte	0
	.uleb128 0x5
	.4byte	0x5ac
	.uleb128 0xe
	.4byte	.LASF177
	.byte	0xc
	.2byte	0x176
	.byte	0x5
	.4byte	0x68
	.4byte	0xf19
	.uleb128 0x1
	.4byte	0xb9
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0xb8f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF178
	.byte	0x13
	.2byte	0x2ab
	.byte	0x5
	.4byte	0x68
	.4byte	0xf35
	.uleb128 0x1
	.4byte	0xf35
	.uleb128 0x1
	.4byte	0xf3a
	.byte	0
	.uleb128 0x5
	.4byte	0x18d
	.uleb128 0x5
	.4byte	0xcf
	.uleb128 0xe
	.4byte	.LASF179
	.byte	0x14
	.2byte	0x110
	.byte	0x5
	.4byte	0x68
	.4byte	0xf61
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x37
	.byte	0
	.uleb128 0xe
	.4byte	.LASF180
	.byte	0x13
	.2byte	0x2a0
	.byte	0x5
	.4byte	0x68
	.4byte	0xf7d
	.uleb128 0x1
	.4byte	0xf35
	.uleb128 0x1
	.4byte	0xf3a
	.byte	0
	.uleb128 0x25
	.4byte	.LASF181
	.byte	0x15
	.byte	0x5e
	.4byte	0xf8e
	.uleb128 0x1
	.4byte	0xad
	.byte	0
	.uleb128 0xc
	.4byte	.LASF182
	.byte	0x12
	.byte	0x23
	.byte	0x5
	.4byte	0x68
	.4byte	0xfae
	.uleb128 0x1
	.4byte	0xfae
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0xfb3
	.byte	0
	.uleb128 0x5
	.4byte	0xb4
	.uleb128 0x5
	.4byte	0x58f
	.uleb128 0xe
	.4byte	.LASF183
	.byte	0xb
	.2byte	0x4f9
	.byte	0x5
	.4byte	0x68
	.4byte	0xfd9
	.uleb128 0x1
	.4byte	0xfae
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0x9e9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF184
	.byte	0x12
	.byte	0x18
	.byte	0x5
	.4byte	0x68
	.4byte	0xff9
	.uleb128 0x1
	.4byte	0xfae
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0xff9
	.byte	0
	.uleb128 0x5
	.4byte	0x5a0
	.uleb128 0xc
	.4byte	.LASF185
	.byte	0x12
	.byte	0x24
	.byte	0x5
	.4byte	0x68
	.4byte	0x1028
	.uleb128 0x1
	.4byte	0xb8f
	.uleb128 0x1
	.4byte	0xb8f
	.uleb128 0x1
	.4byte	0x1028
	.uleb128 0x1
	.4byte	0x102d
	.uleb128 0x1
	.4byte	0x1032
	.byte	0
	.uleb128 0x5
	.4byte	0x270
	.uleb128 0x5
	.4byte	0x4f7
	.uleb128 0x5
	.4byte	0xad
	.uleb128 0xc
	.4byte	.LASF186
	.byte	0x12
	.byte	0x1c
	.byte	0x5
	.4byte	0x68
	.4byte	0x105c
	.uleb128 0x1
	.4byte	0xfae
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0xfb3
	.uleb128 0x1
	.4byte	0xfb3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF187
	.byte	0x12
	.byte	0x29
	.byte	0x5
	.4byte	0x68
	.4byte	0x107c
	.uleb128 0x1
	.4byte	0xfae
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0xfb3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF188
	.byte	0x11
	.byte	0x1f
	.byte	0x8
	.4byte	0xad
	.4byte	0x109c
	.uleb128 0x1
	.4byte	0xaf
	.uleb128 0x1
	.4byte	0xde
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xc
	.4byte	.LASF189
	.byte	0x11
	.byte	0x21
	.byte	0x8
	.4byte	0xad
	.4byte	0x10bc
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xc
	.4byte	.LASF190
	.byte	0x12
	.byte	0x3e
	.byte	0x5
	.4byte	0x68
	.4byte	0x10dc
	.uleb128 0x1
	.4byte	0xfae
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0xb4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF191
	.byte	0x12
	.byte	0x44
	.byte	0x5
	.4byte	0x68
	.4byte	0x10fc
	.uleb128 0x1
	.4byte	0xfae
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0x10fc
	.byte	0
	.uleb128 0x5
	.4byte	0x5b1
	.uleb128 0xc
	.4byte	.LASF192
	.byte	0x12
	.byte	0x41
	.byte	0x5
	.4byte	0x68
	.4byte	0x1121
	.uleb128 0x1
	.4byte	0xfae
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0x1121
	.byte	0
	.uleb128 0x5
	.4byte	0x6f
	.uleb128 0xe
	.4byte	.LASF193
	.byte	0x13
	.2byte	0x20d
	.byte	0x5
	.4byte	0x68
	.4byte	0x1142
	.uleb128 0x1
	.4byte	0xf35
	.uleb128 0x1
	.4byte	0x1142
	.byte	0
	.uleb128 0x5
	.4byte	0x68
	.uleb128 0xc
	.4byte	.LASF194
	.byte	0x12
	.byte	0x2b
	.byte	0x5
	.4byte	0x68
	.4byte	0x116c
	.uleb128 0x1
	.4byte	0xfae
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0xfb3
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0xc
	.4byte	.LASF195
	.byte	0x15
	.byte	0x5a
	.byte	0x7
	.4byte	0xad
	.4byte	0x1187
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xc
	.4byte	.LASF196
	.byte	0x12
	.byte	0x47
	.byte	0x5
	.4byte	0x68
	.4byte	0x11a7
	.uleb128 0x1
	.4byte	0xfae
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0x10fc
	.byte	0
	.uleb128 0xe
	.4byte	.LASF197
	.byte	0x8
	.2byte	0x191
	.byte	0x5
	.4byte	0x68
	.4byte	0x11cd
	.uleb128 0x1
	.4byte	0xfae
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0xcb7
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0xe
	.4byte	.LASF198
	.byte	0x8
	.2byte	0x10a
	.byte	0x5
	.4byte	0x68
	.4byte	0x11ee
	.uleb128 0x1
	.4byte	0xfae
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0x1142
	.byte	0
	.uleb128 0xc
	.4byte	.LASF199
	.byte	0x12
	.byte	0x27
	.byte	0x5
	.4byte	0x68
	.4byte	0x120e
	.uleb128 0x1
	.4byte	0xfae
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0x120e
	.byte	0
	.uleb128 0x5
	.4byte	0x66a
	.uleb128 0xe
	.4byte	.LASF200
	.byte	0x8
	.2byte	0x11f
	.byte	0x5
	.4byte	0x68
	.4byte	0x1234
	.uleb128 0x1
	.4byte	0xfae
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0x1142
	.byte	0
	.uleb128 0xc
	.4byte	.LASF201
	.byte	0x8
	.byte	0xf5
	.byte	0x5
	.4byte	0x68
	.4byte	0x1259
	.uleb128 0x1
	.4byte	0xfae
	.uleb128 0x1
	.4byte	0xb94
	.uleb128 0x1
	.4byte	0x4b1
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0xc
	.4byte	.LASF202
	.byte	0x11
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x1279
	.uleb128 0x1
	.4byte	0xd9
	.uleb128 0x1
	.4byte	0xd9
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xc
	.4byte	.LASF203
	.byte	0x11
	.byte	0x29
	.byte	0x8
	.4byte	0x76
	.4byte	0x128f
	.uleb128 0x1
	.4byte	0xcf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF204
	.byte	0xb
	.2byte	0x1ae
	.byte	0x8
	.4byte	0x76
	.4byte	0x12a6
	.uleb128 0x1
	.4byte	0xd6c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF205
	.byte	0xb
	.2byte	0x400
	.byte	0x13
	.4byte	0x4f7
	.4byte	0x12bd
	.uleb128 0x1
	.4byte	0xd6c
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF213
	.2byte	0xcdf
	.4byte	0x68
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12e6
	.uleb128 0x3
	.string	"crt"
	.2byte	0xcdf
	.byte	0x3c
	.4byte	0xb8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF206
	.2byte	0xcd4
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x130b
	.uleb128 0x3
	.string	"ctx"
	.2byte	0xcd4
	.byte	0x42
	.4byte	0x130b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0xb17
	.uleb128 0x21
	.4byte	.LASF207
	.2byte	0xcc2
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1335
	.uleb128 0x3
	.string	"ctx"
	.2byte	0xcc2
	.byte	0x42
	.4byte	0x130b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF208
	.2byte	0xc9d
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1378
	.uleb128 0x3
	.string	"crt"
	.2byte	0xc9d
	.byte	0x2e
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF210
	.2byte	0xc9f
	.byte	0x17
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF211
	.2byte	0xca0
	.byte	0x17
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.4byte	.LASF212
	.2byte	0xc95
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x139d
	.uleb128 0x3
	.string	"crt"
	.2byte	0xc95
	.byte	0x2e
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF214
	.2byte	0xc82
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x143e
	.uleb128 0x3
	.string	"crt"
	.2byte	0xc82
	.byte	0x3b
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF215
	.2byte	0xc83
	.byte	0x3b
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF216
	.2byte	0xc84
	.byte	0x3b
	.4byte	0x143e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF217
	.2byte	0xc85
	.byte	0x49
	.4byte	0x1443
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"cn"
	.2byte	0xc86
	.byte	0x35
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0xc86
	.byte	0x43
	.4byte	0x1448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF218
	.2byte	0xc87
	.byte	0x2f
	.4byte	0x146b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF219
	.2byte	0xc88
	.byte	0x2f
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF77
	.2byte	0xc89
	.byte	0x47
	.4byte	0x130b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	0x7c1
	.uleb128 0x5
	.4byte	0x9e4
	.uleb128 0x5
	.4byte	0xa1
	.uleb128 0x1b
	.4byte	0x68
	.4byte	0x146b
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0xa16
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x1448
	.byte	0
	.uleb128 0x5
	.4byte	0x144d
	.uleb128 0x11
	.4byte	.LASF220
	.2byte	0xc73
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1502
	.uleb128 0x3
	.string	"crt"
	.2byte	0xc73
	.byte	0x3a
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF221
	.2byte	0xc74
	.byte	0x41
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF222
	.2byte	0xc75
	.byte	0x2e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF217
	.2byte	0xc76
	.byte	0x48
	.4byte	0x1443
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"cn"
	.2byte	0xc77
	.byte	0x34
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0xc77
	.byte	0x42
	.4byte	0x1448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF218
	.2byte	0xc78
	.byte	0x2e
	.4byte	0x146b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF219
	.2byte	0xc79
	.byte	0x2e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x11
	.4byte	.LASF223
	.2byte	0xc60
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1594
	.uleb128 0x3
	.string	"crt"
	.2byte	0xc60
	.byte	0x3c
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF215
	.2byte	0xc61
	.byte	0x3c
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF216
	.2byte	0xc62
	.byte	0x3c
	.4byte	0x143e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF217
	.2byte	0xc63
	.byte	0x4a
	.4byte	0x1443
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"cn"
	.2byte	0xc64
	.byte	0x36
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0xc64
	.byte	0x44
	.4byte	0x1448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF218
	.2byte	0xc65
	.byte	0x30
	.4byte	0x146b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF219
	.2byte	0xc66
	.byte	0x30
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x11
	.4byte	.LASF224
	.2byte	0xc4f
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1617
	.uleb128 0x3
	.string	"crt"
	.2byte	0xc4f
	.byte	0x2f
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF215
	.2byte	0xc50
	.byte	0x2f
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF216
	.2byte	0xc51
	.byte	0x2f
	.4byte	0x143e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.string	"cn"
	.2byte	0xc52
	.byte	0x29
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0xc52
	.byte	0x37
	.4byte	0x1448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF218
	.2byte	0xc53
	.byte	0x23
	.4byte	0x146b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF219
	.2byte	0xc54
	.byte	0x23
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0xa
	.4byte	.LASF227
	.2byte	0xbef
	.4byte	0x68
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1726
	.uleb128 0x3
	.string	"crt"
	.2byte	0xbef
	.byte	0x40
	.4byte	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2
	.4byte	.LASF215
	.2byte	0xbf0
	.byte	0x40
	.4byte	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2
	.4byte	.LASF216
	.2byte	0xbf1
	.byte	0x40
	.4byte	0x143e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2
	.4byte	.LASF221
	.2byte	0xbf2
	.byte	0x47
	.4byte	0xb99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2
	.4byte	.LASF222
	.2byte	0xbf3
	.byte	0x34
	.4byte	0xad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2
	.4byte	.LASF217
	.2byte	0xbf4
	.byte	0x4e
	.4byte	0x1443
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x3
	.string	"cn"
	.2byte	0xbf5
	.byte	0x3a
	.4byte	0xcf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0xbf5
	.byte	0x48
	.4byte	0x1448
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2
	.4byte	.LASF218
	.2byte	0xbf6
	.byte	0x34
	.4byte	0x146b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.4byte	.LASF219
	.2byte	0xbfa
	.byte	0x34
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2
	.4byte	.LASF77
	.2byte	0xbfb
	.byte	0x4c
	.4byte	0x130b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x6
	.string	"ret"
	.2byte	0xbfd
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF225
	.2byte	0xbfe
	.byte	0x17
	.4byte	0x4f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x4
	.4byte	.LASF144
	.2byte	0xbff
	.byte	0x23
	.4byte	0xa70
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x4
	.4byte	.LASF226
	.2byte	0xc00
	.byte	0xe
	.4byte	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x26
	.4byte	.LASF258
	.2byte	0xc2a
	.4byte	.L529
	.byte	0
	.uleb128 0xa
	.4byte	.LASF228
	.2byte	0xbc3
	.4byte	0x68
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17b6
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0xbc4
	.byte	0xf
	.4byte	0x1448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF144
	.2byte	0xbc5
	.byte	0x2a
	.4byte	0x17b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF218
	.2byte	0xbc6
	.byte	0xb
	.4byte	0x146b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF219
	.2byte	0xbc7
	.byte	0xb
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ret"
	.2byte	0xbc9
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"i"
	.2byte	0xbca
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF229
	.2byte	0xbcb
	.byte	0xe
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"cur"
	.2byte	0xbcc
	.byte	0x2f
	.4byte	0x17bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5
	.4byte	0xa7d
	.uleb128 0x5
	.4byte	0xa27
	.uleb128 0x38
	.4byte	.LASF330
	.byte	0x3
	.2byte	0xba8
	.byte	0xd
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1822
	.uleb128 0x3
	.string	"crt"
	.2byte	0xba8
	.byte	0x3a
	.4byte	0xb8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"cn"
	.2byte	0xba9
	.byte	0x2e
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0xbaa
	.byte	0x2c
	.4byte	0x1448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF230
	.2byte	0xbac
	.byte	0x1e
	.4byte	0xef3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF231
	.2byte	0xbad
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF232
	.2byte	0xb7f
	.4byte	0x68
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x189f
	.uleb128 0x3
	.string	"san"
	.2byte	0xb7f
	.byte	0x3c
	.4byte	0xe67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"cn"
	.2byte	0xb80
	.byte	0x2b
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF231
	.2byte	0xb80
	.byte	0x36
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF233
	.2byte	0xb82
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF234
	.2byte	0xb83
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x6
	.string	"cur"
	.2byte	0xb85
	.byte	0x27
	.4byte	0xe67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF235
	.2byte	0xb6d
	.4byte	0x68
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1917
	.uleb128 0x3
	.string	"san"
	.2byte	0xb6d
	.byte	0x40
	.4byte	0xe67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"cn"
	.2byte	0xb6e
	.byte	0x2f
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF231
	.2byte	0xb6e
	.byte	0x3a
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x6
	.string	"cur"
	.2byte	0xb70
	.byte	0x27
	.4byte	0xe67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x4
	.4byte	.LASF236
	.2byte	0xb71
	.byte	0x1d
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF237
	.2byte	0xb58
	.4byte	0x68
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x199d
	.uleb128 0x3
	.string	"san"
	.2byte	0xb58
	.byte	0x3f
	.4byte	0xe67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"cn"
	.2byte	0xb59
	.byte	0x2e
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF231
	.2byte	0xb59
	.byte	0x39
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.string	"ip"
	.2byte	0xb5b
	.byte	0xe
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x6
	.string	"cur"
	.2byte	0xb61
	.byte	0x27
	.4byte	0xe67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x4
	.4byte	.LASF236
	.2byte	0xb62
	.byte	0x1d
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF238
	.2byte	0xb47
	.4byte	0x68
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19e3
	.uleb128 0x2
	.4byte	.LASF230
	.2byte	0xb47
	.byte	0x36
	.4byte	0xb8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"cn"
	.2byte	0xb48
	.byte	0x2a
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF231
	.2byte	0xb48
	.byte	0x35
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF239
	.2byte	0xb3d
	.byte	0x8
	.4byte	0x76
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a1b
	.uleb128 0x3
	.string	"cn"
	.2byte	0xb3d
	.byte	0x38
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"dst"
	.2byte	0xb3d
	.byte	0x42
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.4byte	.LASF240
	.byte	0x3
	.2byte	0xb0b
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1aad
	.uleb128 0x3
	.string	"src"
	.2byte	0xb0b
	.byte	0x2c
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"dst"
	.2byte	0xb0b
	.byte	0x37
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"p"
	.2byte	0xb0d
	.byte	0x1a
	.4byte	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"res"
	.2byte	0xb0e
	.byte	0xe
	.4byte	0x4b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF241
	.2byte	0xb0f
	.byte	0xd
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x4
	.4byte	.LASF242
	.2byte	0xb0f
	.byte	0x14
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x4
	.4byte	.LASF243
	.2byte	0xb10
	.byte	0xd
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x4
	.4byte	.LASF244
	.2byte	0xb11
	.byte	0xe
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF245
	.2byte	0xaaa
	.4byte	0x68
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bd2
	.uleb128 0x3
	.string	"src"
	.2byte	0xaaa
	.byte	0x2c
	.4byte	0xcf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3
	.string	"dst"
	.2byte	0xaaa
	.byte	0x37
	.4byte	0xad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x6
	.string	"p"
	.2byte	0xaac
	.byte	0x1a
	.4byte	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF246
	.2byte	0xaad
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF242
	.2byte	0xaad
	.byte	0x1d
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF247
	.2byte	0xaad
	.byte	0x29
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF248
	.2byte	0xaae
	.byte	0xe
	.4byte	0x1bd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.4byte	.LLRL0
	.4byte	0x1ba9
	.uleb128 0x4
	.4byte	.LASF249
	.2byte	0xab1
	.byte	0x12
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x3a
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x1b65
	.uleb128 0x4
	.4byte	.LASF241
	.2byte	0xab2
	.byte	0x16
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.byte	0
	.uleb128 0x2c
	.4byte	.LLRL1
	.4byte	0x1b7e
	.uleb128 0x4
	.4byte	.LASF250
	.2byte	0xac6
	.byte	0x15
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3b
	.4byte	0x2e98
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x3
	.2byte	0xaba
	.byte	0x6e
	.uleb128 0x2d
	.4byte	0x2ea5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.4byte	0x2eae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x3c
	.4byte	0x2eb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x4
	.4byte	.LASF251
	.2byte	0xaf8
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF252
	.2byte	0xaf9
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x95
	.4byte	0x1be2
	.uleb128 0x1a
	.4byte	0x6f
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF253
	.2byte	0x9ca
	.4byte	0x68
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d2d
	.uleb128 0x3
	.string	"crt"
	.2byte	0x9cb
	.byte	0x17
	.4byte	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.4byte	.LASF215
	.2byte	0x9cc
	.byte	0x17
	.4byte	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.4byte	.LASF216
	.2byte	0x9cd
	.byte	0x17
	.4byte	0x143e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2
	.4byte	.LASF221
	.2byte	0x9ce
	.byte	0x1e
	.4byte	0xb99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2
	.4byte	.LASF222
	.2byte	0x9cf
	.byte	0xb
	.4byte	0xad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.4byte	.LASF217
	.2byte	0x9d0
	.byte	0x25
	.4byte	0x1443
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.4byte	.LASF144
	.2byte	0x9d1
	.byte	0x24
	.4byte	0x1d2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2
	.4byte	.LASF77
	.2byte	0x9d2
	.byte	0x23
	.4byte	0x130b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x6
	.string	"ret"
	.2byte	0x9d6
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF131
	.2byte	0x9d7
	.byte	0xf
	.4byte	0x1448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"cur"
	.2byte	0x9d8
	.byte	0x29
	.4byte	0x1d32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF254
	.2byte	0x9d9
	.byte	0x17
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF138
	.2byte	0x9da
	.byte	0x17
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0x9db
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF255
	.2byte	0x9dc
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF256
	.2byte	0x9dd
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF143
	.2byte	0x9de
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF257
	.2byte	0x9df
	.byte	0x17
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"now"
	.2byte	0x9e0
	.byte	0x17
	.4byte	0x66a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.4byte	.LASF259
	.2byte	0xa25
	.4byte	.L411
	.byte	0
	.uleb128 0x5
	.4byte	0xa70
	.uleb128 0x5
	.4byte	0xa1b
	.uleb128 0xa
	.4byte	.LASF260
	.2byte	0x98b
	.4byte	0x68
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d7e
	.uleb128 0x3
	.string	"crt"
	.2byte	0x98c
	.byte	0x17
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF215
	.2byte	0x98d
	.byte	0x17
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"cur"
	.2byte	0x98f
	.byte	0x17
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF261
	.2byte	0x949
	.4byte	0x68
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e3d
	.uleb128 0x2
	.4byte	.LASF254
	.2byte	0x94a
	.byte	0x17
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF215
	.2byte	0x94b
	.byte	0x17
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF138
	.2byte	0x94c
	.byte	0x18
	.4byte	0xbc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF141
	.2byte	0x94d
	.byte	0xa
	.4byte	0x1142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF256
	.2byte	0x94e
	.byte	0xa
	.4byte	0x1142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF262
	.2byte	0x94f
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF143
	.2byte	0x950
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF77
	.2byte	0x951
	.byte	0x23
	.4byte	0x130b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.string	"now"
	.2byte	0x952
	.byte	0x1e
	.4byte	0x1e3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.string	"ret"
	.2byte	0x954
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x955
	.byte	0x17
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x676
	.uleb128 0xa
	.4byte	.LASF264
	.2byte	0x8ce
	.4byte	0x68
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f3d
	.uleb128 0x2
	.4byte	.LASF254
	.2byte	0x8cf
	.byte	0x17
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF265
	.2byte	0x8d0
	.byte	0x17
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF266
	.2byte	0x8d1
	.byte	0x18
	.4byte	0xbc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF267
	.2byte	0x8d2
	.byte	0xa
	.4byte	0x1142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.string	"top"
	.2byte	0x8d3
	.byte	0x9
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF262
	.2byte	0x8d4
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF143
	.2byte	0x8d5
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.4byte	.LASF77
	.2byte	0x8d6
	.byte	0x23
	.4byte	0x130b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.string	"now"
	.2byte	0x8d7
	.byte	0x1e
	.4byte	0x1e3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.string	"ret"
	.2byte	0x8d9
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF138
	.2byte	0x8da
	.byte	0x17
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF139
	.2byte	0x8da
	.byte	0x20
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF256
	.2byte	0x8db
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0x8db
	.byte	0x20
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.4byte	.LASF268
	.2byte	0x900
	.4byte	.L380
	.byte	0
	.uleb128 0xa
	.4byte	.LASF269
	.2byte	0x884
	.4byte	0x68
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f93
	.uleb128 0x2
	.4byte	.LASF254
	.2byte	0x884
	.byte	0x3a
	.4byte	0xb8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF138
	.2byte	0x885
	.byte	0x3a
	.4byte	0xb8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"top"
	.2byte	0x886
	.byte	0x26
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF270
	.2byte	0x888
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF271
	.2byte	0x84c
	.4byte	0x68
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x200b
	.uleb128 0x2
	.4byte	.LASF254
	.2byte	0x84c
	.byte	0x3d
	.4byte	0xb8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.4byte	.LASF138
	.2byte	0x84d
	.byte	0x37
	.4byte	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.4byte	.LASF77
	.2byte	0x84e
	.byte	0x43
	.4byte	0x130b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x4
	.4byte	.LASF272
	.2byte	0x850
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF273
	.2byte	0x851
	.byte	0x13
	.4byte	0x4a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4
	.4byte	.LASF274
	.2byte	0x853
	.byte	0x1e
	.4byte	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF275
	.2byte	0x7da
	.4byte	0x68
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20b1
	.uleb128 0x3
	.string	"crt"
	.2byte	0x7da
	.byte	0x31
	.4byte	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x3
	.string	"ca"
	.2byte	0x7da
	.byte	0x48
	.4byte	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.4byte	.LASF276
	.2byte	0x7db
	.byte	0x31
	.4byte	0x143e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2
	.4byte	.LASF217
	.2byte	0x7dc
	.byte	0x3f
	.4byte	0x1443
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x3
	.string	"now"
	.2byte	0x7dd
	.byte	0x38
	.4byte	0x1e3d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x4
	.4byte	.LASF131
	.2byte	0x7df
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF273
	.2byte	0x7e0
	.byte	0x13
	.4byte	0x4a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x4
	.4byte	.LASF274
	.2byte	0x7e4
	.byte	0x1e
	.4byte	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF277
	.2byte	0x7e6
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF278
	.2byte	0x7c6
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20f9
	.uleb128 0x3
	.string	"crt"
	.2byte	0x7c6
	.byte	0x39
	.4byte	0xb8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"crl"
	.2byte	0x7c6
	.byte	0x56
	.4byte	0x20f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"cur"
	.2byte	0x7c8
	.byte	0x23
	.4byte	0x20fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x7cd
	.uleb128 0x5
	.4byte	0x6da
	.uleb128 0x11
	.4byte	.LASF279
	.2byte	0x7a4
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2173
	.uleb128 0x3
	.string	"crt"
	.2byte	0x7a4
	.byte	0x47
	.4byte	0xb8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF280
	.2byte	0x7a5
	.byte	0x3b
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF281
	.2byte	0x7a6
	.byte	0x36
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"cur"
	.2byte	0x7a8
	.byte	0x22
	.4byte	0xe67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x4
	.4byte	.LASF282
	.2byte	0x7b3
	.byte	0x21
	.4byte	0xb8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF283
	.2byte	0x78a
	.4byte	0x68
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21d8
	.uleb128 0x3
	.string	"crt"
	.2byte	0x78a
	.byte	0x3e
	.4byte	0xb8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF284
	.2byte	0x78b
	.byte	0x33
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF285
	.2byte	0x78d
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF286
	.2byte	0x78d
	.byte	0x1e
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF287
	.2byte	0x78e
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF288
	.2byte	0x76e
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2267
	.uleb128 0x3
	.string	"buf"
	.2byte	0x76e
	.byte	0x28
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF289
	.2byte	0x76e
	.byte	0x34
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF290
	.2byte	0x76e
	.byte	0x46
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0x76f
	.byte	0x2b
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ret"
	.2byte	0x771
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"cur"
	.2byte	0x772
	.byte	0x2a
	.4byte	0x2267
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"p"
	.2byte	0x773
	.byte	0xb
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"n"
	.2byte	0x774
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5
	.4byte	0xc24
	.uleb128 0x11
	.4byte	.LASF291
	.2byte	0x6d7
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22fb
	.uleb128 0x3
	.string	"buf"
	.2byte	0x6d7
	.byte	0x21
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF289
	.2byte	0x6d7
	.byte	0x2d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF290
	.2byte	0x6d7
	.byte	0x3f
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.string	"crt"
	.2byte	0x6d8
	.byte	0x33
	.4byte	0xb8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"ret"
	.2byte	0x6da
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"n"
	.2byte	0x6db
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"p"
	.2byte	0x6dc
	.byte	0xb
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF292
	.2byte	0x6dd
	.byte	0xa
	.4byte	0x22fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x19
	.4byte	0xc3
	.4byte	0x230b
	.uleb128 0x1a
	.4byte	0x6f
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.4byte	.LASF293
	.2byte	0x6b5
	.4byte	0x68
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23a8
	.uleb128 0x3
	.string	"buf"
	.2byte	0x6b5
	.byte	0x2b
	.4byte	0xe1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF289
	.2byte	0x6b5
	.byte	0x38
	.4byte	0x4b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x6b6
	.byte	0x41
	.4byte	0xe67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.string	"ret"
	.2byte	0x6b8
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF294
	.2byte	0x6b9
	.byte	0x11
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"n"
	.2byte	0x6ba
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"p"
	.2byte	0x6bb
	.byte	0xb
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"cur"
	.2byte	0x6bc
	.byte	0x22
	.4byte	0xe67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"sep"
	.2byte	0x6bd
	.byte	0x11
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF295
	.2byte	0x698
	.4byte	0x68
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2445
	.uleb128 0x3
	.string	"buf"
	.2byte	0x698
	.byte	0x2b
	.4byte	0xe1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF289
	.2byte	0x698
	.byte	0x38
	.4byte	0x4b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF296
	.2byte	0x699
	.byte	0x41
	.4byte	0xe67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.string	"ret"
	.2byte	0x69b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF294
	.2byte	0x69c
	.byte	0x11
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"n"
	.2byte	0x69d
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"p"
	.2byte	0x69e
	.byte	0xb
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"cur"
	.2byte	0x69f
	.byte	0x22
	.4byte	0xe67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"sep"
	.2byte	0x6a0
	.byte	0x11
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x11
	.4byte	.LASF297
	.2byte	0x572
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x248d
	.uleb128 0x2
	.4byte	.LASF298
	.2byte	0x572
	.byte	0x2e
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"buf"
	.2byte	0x573
	.byte	0x31
	.4byte	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF299
	.2byte	0x574
	.byte	0x23
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF300
	.2byte	0x567
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24d5
	.uleb128 0x2
	.4byte	.LASF298
	.2byte	0x567
	.byte	0x32
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"buf"
	.2byte	0x568
	.byte	0x35
	.4byte	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF299
	.2byte	0x569
	.byte	0x27
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF301
	.2byte	0x55d
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2549
	.uleb128 0x2
	.4byte	.LASF298
	.2byte	0x55d
	.byte	0x3e
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"buf"
	.2byte	0x55e
	.byte	0x41
	.4byte	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF299
	.2byte	0x55f
	.byte	0x33
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x560
	.byte	0x30
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"cb"
	.2byte	0x561
	.byte	0x46
	.4byte	0xb50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF303
	.2byte	0x562
	.byte	0x32
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x11
	.4byte	.LASF304
	.2byte	0x556
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2591
	.uleb128 0x2
	.4byte	.LASF298
	.2byte	0x556
	.byte	0x39
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"buf"
	.2byte	0x557
	.byte	0x3c
	.4byte	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF299
	.2byte	0x558
	.byte	0x2e
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF305
	.2byte	0x521
	.4byte	0x68
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2631
	.uleb128 0x2
	.4byte	.LASF298
	.2byte	0x521
	.byte	0x42
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"buf"
	.2byte	0x522
	.byte	0x45
	.4byte	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF299
	.2byte	0x523
	.byte	0x37
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x524
	.byte	0x34
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"cb"
	.2byte	0x525
	.byte	0x4a
	.4byte	0xb50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF303
	.2byte	0x526
	.byte	0x36
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"ret"
	.2byte	0x528
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"crt"
	.2byte	0x529
	.byte	0x17
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF306
	.2byte	0x529
	.byte	0x25
	.4byte	0xa16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF307
	.2byte	0x431
	.4byte	0x68
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2721
	.uleb128 0x3
	.string	"crt"
	.2byte	0x431
	.byte	0x36
	.4byte	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3
	.string	"buf"
	.2byte	0x432
	.byte	0x39
	.4byte	0xb94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.4byte	.LASF299
	.2byte	0x433
	.byte	0x2b
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x434
	.byte	0x28
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3
	.string	"cb"
	.2byte	0x435
	.byte	0x3e
	.4byte	0xb50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.4byte	.LASF303
	.2byte	0x436
	.byte	0x2a
	.4byte	0xad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x6
	.string	"ret"
	.2byte	0x438
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"len"
	.2byte	0x439
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"p"
	.2byte	0x43a
	.byte	0x14
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"end"
	.2byte	0x43a
	.byte	0x18
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF308
	.2byte	0x43a
	.byte	0x1e
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF309
	.2byte	0x43b
	.byte	0x16
	.4byte	0x58f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF310
	.2byte	0x43b
	.byte	0x23
	.4byte	0x58f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF102
	.2byte	0x43b
	.byte	0x30
	.4byte	0x58f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xa
	.4byte	.LASF311
	.2byte	0x35e
	.4byte	0x68
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x280a
	.uleb128 0x3
	.string	"p"
	.2byte	0x35e
	.byte	0x2d
	.4byte	0xfae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.string	"end"
	.2byte	0x35f
	.byte	0x32
	.4byte	0xb94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.string	"crt"
	.2byte	0x360
	.byte	0x2f
	.4byte	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.string	"cb"
	.2byte	0x361
	.byte	0x37
	.4byte	0xb50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.4byte	.LASF303
	.2byte	0x362
	.byte	0x23
	.4byte	0xad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x6
	.string	"ret"
	.2byte	0x364
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"len"
	.2byte	0x365
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF312
	.2byte	0x366
	.byte	0x14
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF313
	.2byte	0x366
	.byte	0x23
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF314
	.2byte	0x366
	.byte	0x35
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x4
	.4byte	.LASF315
	.2byte	0x378
	.byte	0x1a
	.4byte	0x58f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF316
	.2byte	0x379
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF317
	.2byte	0x37a
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF318
	.2byte	0x2e3
	.4byte	0x68
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28c5
	.uleb128 0x3
	.string	"p"
	.2byte	0x2e3
	.byte	0x3a
	.4byte	0xfae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.string	"end"
	.2byte	0x2e4
	.byte	0x3f
	.4byte	0xb94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x2e5
	.byte	0x41
	.4byte	0x10fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x6
	.string	"ret"
	.2byte	0x2e7
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF319
	.2byte	0x2e7
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"len"
	.2byte	0x2e8
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"buf"
	.2byte	0x2e9
	.byte	0x17
	.4byte	0x28c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"cur"
	.2byte	0x2ea
	.byte	0x1c
	.4byte	0xcb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x4
	.4byte	.LASF320
	.2byte	0x301
	.byte	0x1a
	.4byte	0x58f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF321
	.2byte	0x302
	.byte	0x1e
	.4byte	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x181
	.uleb128 0xa
	.4byte	.LASF322
	.2byte	0x26c
	.4byte	0x68
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x292d
	.uleb128 0x3
	.string	"p"
	.2byte	0x26c
	.byte	0x36
	.4byte	0xfae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"end"
	.2byte	0x26d
	.byte	0x35
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF118
	.2byte	0x26e
	.byte	0x3e
	.4byte	0x292d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"ret"
	.2byte	0x270
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"len"
	.2byte	0x271
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	0x603
	.uleb128 0xa
	.4byte	.LASF323
	.2byte	0x24b
	.4byte	0x68
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2995
	.uleb128 0x3
	.string	"p"
	.2byte	0x24b
	.byte	0x34
	.4byte	0xfae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"end"
	.2byte	0x24c
	.byte	0x39
	.4byte	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x24d
	.byte	0x36
	.4byte	0xfb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"ret"
	.2byte	0x24f
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"len"
	.2byte	0x250
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF324
	.2byte	0x233
	.4byte	0x68
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29e9
	.uleb128 0x3
	.string	"p"
	.2byte	0x233
	.byte	0x33
	.4byte	0xfae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"end"
	.2byte	0x234
	.byte	0x38
	.4byte	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x235
	.byte	0x3a
	.4byte	0x10fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"ret"
	.2byte	0x237
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF325
	.2byte	0x1ee
	.4byte	0x68
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a5b
	.uleb128 0x3
	.string	"p"
	.2byte	0x1ee
	.byte	0x37
	.4byte	0xfae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"end"
	.2byte	0x1ef
	.byte	0x3c
	.4byte	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF121
	.2byte	0x1f0
	.byte	0x2c
	.4byte	0x1142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF122
	.2byte	0x1f1
	.byte	0x2c
	.4byte	0x1142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ret"
	.2byte	0x1f3
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"len"
	.2byte	0x1f4
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF326
	.2byte	0x1d2
	.4byte	0x68
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2abc
	.uleb128 0x3
	.string	"p"
	.2byte	0x1d2
	.byte	0x29
	.4byte	0xfae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"end"
	.2byte	0x1d3
	.byte	0x2e
	.4byte	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"uid"
	.2byte	0x1d4
	.byte	0x2b
	.4byte	0xfb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"n"
	.2byte	0x1d4
	.byte	0x34
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ret"
	.2byte	0x1d6
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF327
	.2byte	0x1b0
	.4byte	0x68
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b2d
	.uleb128 0x3
	.string	"p"
	.2byte	0x1b0
	.byte	0x2b
	.4byte	0xfae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"end"
	.2byte	0x1b1
	.byte	0x30
	.4byte	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF328
	.2byte	0x1b2
	.byte	0x2e
	.4byte	0x120e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"to"
	.2byte	0x1b3
	.byte	0x2e
	.4byte	0x120e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ret"
	.2byte	0x1b5
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"len"
	.2byte	0x1b6
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF329
	.2byte	0x18b
	.4byte	0x68
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b90
	.uleb128 0x3
	.string	"p"
	.2byte	0x18b
	.byte	0x2d
	.4byte	0xfae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"end"
	.2byte	0x18c
	.byte	0x32
	.4byte	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"ver"
	.2byte	0x18d
	.byte	0x22
	.4byte	0x1142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"ret"
	.2byte	0x18f
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"len"
	.2byte	0x190
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF331
	.byte	0x3
	.2byte	0x177
	.byte	0xd
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2bc4
	.uleb128 0x2
	.4byte	.LASF144
	.2byte	0x178
	.byte	0x24
	.4byte	0x1d2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"i"
	.2byte	0x17a
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF332
	.2byte	0x153
	.4byte	0x68
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2bf8
	.uleb128 0x3
	.string	"a"
	.2byte	0x153
	.byte	0x33
	.4byte	0xef3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"b"
	.2byte	0x153
	.byte	0x4f
	.4byte	0xef3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF333
	.2byte	0x137
	.4byte	0x68
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c2c
	.uleb128 0x3
	.string	"a"
	.2byte	0x137
	.byte	0x34
	.4byte	0xb8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"b"
	.2byte	0x137
	.byte	0x4f
	.4byte	0xb8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF334
	.2byte	0x114
	.4byte	0x68
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c8e
	.uleb128 0x3
	.string	"cn"
	.2byte	0x114
	.byte	0x2c
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF230
	.2byte	0x114
	.byte	0x48
	.4byte	0xb8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"i"
	.2byte	0x116
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF335
	.2byte	0x117
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF231
	.2byte	0x117
	.byte	0x18
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x22
	.4byte	.LASF336
	.byte	0x3
	.byte	0xf8
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d0b
	.uleb128 0x17
	.string	"s1"
	.byte	0x3
	.byte	0xf8
	.byte	0x28
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.string	"s2"
	.byte	0x3
	.byte	0xf8
	.byte	0x38
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"len"
	.byte	0x3
	.byte	0xf8
	.byte	0x43
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.string	"i"
	.byte	0x3
	.byte	0xfa
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.4byte	.LASF337
	.byte	0xfb
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x1d
	.string	"n1"
	.byte	0x3
	.byte	0xfc
	.byte	0x1a
	.4byte	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"n2"
	.byte	0x3
	.byte	0xfc
	.byte	0x24
	.4byte	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x27
	.4byte	.LASF338
	.byte	0x3
	.byte	0xd1
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d6a
	.uleb128 0x16
	.4byte	.LASF217
	.byte	0x3
	.byte	0xd1
	.byte	0x43
	.4byte	0x1443
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.string	"pk"
	.byte	0x3
	.byte	0xd2
	.byte	0x3d
	.4byte	0xd6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.4byte	.LASF339
	.byte	0xd4
	.byte	0x1d
	.4byte	0x503
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x1d
	.string	"gid"
	.byte	0x3
	.byte	0xe4
	.byte	0x24
	.4byte	0x303
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF340
	.byte	0x3
	.byte	0xbf
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2da3
	.uleb128 0x16
	.4byte	.LASF217
	.byte	0x3
	.byte	0xbf
	.byte	0x46
	.4byte	0x1443
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	.LASF339
	.byte	0x3
	.byte	0xc0
	.byte	0x38
	.4byte	0x4f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x22
	.4byte	.LASF341
	.byte	0x3
	.byte	0xad
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ddc
	.uleb128 0x16
	.4byte	.LASF217
	.byte	0x3
	.byte	0xad
	.byte	0x46
	.4byte	0x1443
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	.LASF342
	.byte	0x3
	.byte	0xae
	.byte	0x38
	.4byte	0x270
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x22
	.4byte	.LASF343
	.byte	0x2
	.byte	0x8e
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e33
	.uleb128 0x16
	.4byte	.LASF344
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
	.uleb128 0x16
	.4byte	.LASF345
	.byte	0x2
	.byte	0x8f
	.byte	0x31
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.4byte	.LASF346
	.byte	0x2
	.byte	0x8f
	.byte	0x3b
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.4byte	.LASF347
	.byte	0x1
	.byte	0x56
	.byte	0x24
	.4byte	0x2f7
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e6a
	.uleb128 0x17
	.string	"pk"
	.byte	0x1
	.byte	0x56
	.byte	0x59
	.4byte	0xd6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.string	"id"
	.byte	0x1
	.byte	0x58
	.byte	0x1a
	.4byte	0x2f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x27
	.4byte	.LASF348
	.byte	0x1
	.byte	0x3c
	.byte	0x2a
	.4byte	0x2e93
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e93
	.uleb128 0x17
	.string	"pk"
	.byte	0x1
	.byte	0x3c
	.byte	0x54
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	0x48c
	.uleb128 0x3e
	.4byte	.LASF350
	.byte	0x4
	.byte	0x8e
	.byte	0x14
	.byte	0x3
	.4byte	0x2ec4
	.uleb128 0x2f
	.string	"p"
	.byte	0x8e
	.byte	0x37
	.4byte	0xad
	.uleb128 0x2f
	.string	"x"
	.byte	0x8e
	.byte	0x43
	.4byte	0x95
	.uleb128 0x3f
	.string	"p16"
	.byte	0x4
	.byte	0x94
	.byte	0x21
	.4byte	0x2ec4
	.byte	0
	.uleb128 0x5
	.4byte	0xf8
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x11
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 39
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 32
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x26
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1ec
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
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
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
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
	.4byte	.LBB12
	.byte	0x4
	.uleb128 .LBB12-.LBB12
	.uleb128 .LBE12-.LBB12
	.byte	0x4
	.uleb128 .LBB18-.LBB12
	.uleb128 .LBE18-.LBB12
	.byte	0
.LLRL1:
	.byte	0x5
	.4byte	.LBB16
	.byte	0x4
	.uleb128 .LBB16-.LBB16
	.uleb128 .LBE16-.LBB16
	.byte	0x4
	.uleb128 .LBB17-.LBB16
	.uleb128 .LBE17-.LBB16
	.byte	0
.LLRL2:
	.byte	0x7
	.4byte	.LFB73
	.uleb128 .LFE73-.LFB73
	.byte	0x7
	.4byte	.LFB75
	.uleb128 .LFE75-.LFB75
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
	.byte	0x7
	.4byte	.LFB98
	.uleb128 .LFE98-.LFB98
	.byte	0x7
	.4byte	.LFB99
	.uleb128 .LFE99-.LFB99
	.byte	0x7
	.4byte	.LFB100
	.uleb128 .LFE100-.LFB100
	.byte	0x7
	.4byte	.LFB101
	.uleb128 .LFE101-.LFB101
	.byte	0x7
	.4byte	.LFB102
	.uleb128 .LFE102-.LFB102
	.byte	0x7
	.4byte	.LFB103
	.uleb128 .LFE103-.LFB103
	.byte	0x7
	.4byte	.LFB104
	.uleb128 .LFE104-.LFB104
	.byte	0x7
	.4byte	.LFB105
	.uleb128 .LFE105-.LFB105
	.byte	0x7
	.4byte	.LFB106
	.uleb128 .LFE106-.LFB106
	.byte	0x7
	.4byte	.LFB107
	.uleb128 .LFE107-.LFB107
	.byte	0x7
	.4byte	.LFB108
	.uleb128 .LFE108-.LFB108
	.byte	0x7
	.4byte	.LFB109
	.uleb128 .LFE109-.LFB109
	.byte	0x7
	.4byte	.LFB110
	.uleb128 .LFE110-.LFB110
	.byte	0x7
	.4byte	.LFB111
	.uleb128 .LFE111-.LFB111
	.byte	0x7
	.4byte	.LFB112
	.uleb128 .LFE112-.LFB112
	.byte	0x7
	.4byte	.LFB113
	.uleb128 .LFE113-.LFB113
	.byte	0x7
	.4byte	.LFB114
	.uleb128 .LFE114-.LFB114
	.byte	0x7
	.4byte	.LFB115
	.uleb128 .LFE115-.LFB115
	.byte	0x7
	.4byte	.LFB116
	.uleb128 .LFE116-.LFB116
	.byte	0x7
	.4byte	.LFB117
	.uleb128 .LFE117-.LFB117
	.byte	0x7
	.4byte	.LFB118
	.uleb128 .LFE118-.LFB118
	.byte	0x7
	.4byte	.LFB119
	.uleb128 .LFE119-.LFB119
	.byte	0x7
	.4byte	.LFB120
	.uleb128 .LFE120-.LFB120
	.byte	0x7
	.4byte	.LFB121
	.uleb128 .LFE121-.LFB121
	.byte	0x7
	.4byte	.LFB122
	.uleb128 .LFE122-.LFB122
	.byte	0x7
	.4byte	.LFB123
	.uleb128 .LFE123-.LFB123
	.byte	0x7
	.4byte	.LFB124
	.uleb128 .LFE124-.LFB124
	.byte	0x7
	.4byte	.LFB125
	.uleb128 .LFE125-.LFB125
	.byte	0x7
	.4byte	.LFB126
	.uleb128 .LFE126-.LFB126
	.byte	0x7
	.4byte	.LFB127
	.uleb128 .LFE127-.LFB127
	.byte	0x7
	.4byte	.LFB128
	.uleb128 .LFE128-.LFB128
	.byte	0x7
	.4byte	.LFB129
	.uleb128 .LFE129-.LFB129
	.byte	0x7
	.4byte	.LFB130
	.uleb128 .LFE130-.LFB130
	.byte	0x7
	.4byte	.LFB131
	.uleb128 .LFE131-.LFB131
	.byte	0x7
	.4byte	.LFB132
	.uleb128 .LFE132-.LFB132
	.byte	0x7
	.4byte	.LFB133
	.uleb128 .LFE133-.LFB133
	.byte	0x7
	.4byte	.LFB134
	.uleb128 .LFE134-.LFB134
	.byte	0x7
	.4byte	.LFB135
	.uleb128 .LFE135-.LFB135
	.byte	0x7
	.4byte	.LFB136
	.uleb128 .LFE136-.LFB136
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF264:
	.string	"x509_crt_find_parent_in"
.LASF12:
	.string	"size_t"
.LASF266:
	.string	"r_parent"
.LASF304:
	.string	"mbedtls_x509_crt_parse_der_nocopy"
.LASF303:
	.string	"p_ctx"
.LASF217:
	.string	"profile"
.LASF132:
	.string	"mbedtls_x509_crt_verify_chain_item"
.LASF235:
	.string	"x509_crt_check_san_uri"
.LASF285:
	.string	"usage_must"
.LASF119:
	.string	"certificate_policies"
.LASF74:
	.string	"mbedtls_pk_context"
.LASF263:
	.string	"search_list"
.LASF69:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF57:
	.string	"nbits"
.LASF86:
	.string	"mbedtls_x509_time"
.LASF278:
	.string	"mbedtls_x509_crt_is_revoked"
.LASF55:
	.string	"mbedtls_ecp_group"
.LASF173:
	.string	"mbedtls_x509_key_size_helper"
.LASF75:
	.string	"pk_info"
.LASF72:
	.string	"mbedtls_pk_type_t"
.LASF84:
	.string	"authorityCertIssuer"
.LASF193:
	.string	"mbedtls_oid_get_x509_ext_type"
.LASF172:
	.string	"mbedtls_x509_info_subject_alt_name"
.LASF101:
	.string	"crl_ext"
.LASF93:
	.string	"mbedtls_x509_crl"
.LASF218:
	.string	"f_vrfy"
.LASF185:
	.string	"mbedtls_x509_get_sig_alg"
.LASF331:
	.string	"x509_crt_verify_chain_reset"
.LASF26:
	.string	"MBEDTLS_MD_MD5"
.LASF221:
	.string	"f_ca_cb"
.LASF87:
	.string	"year"
.LASF106:
	.string	"mbedtls_x509_crt"
.LASF105:
	.string	"sig_opts"
.LASF229:
	.string	"cur_flags"
.LASF95:
	.string	"sig_oid"
.LASF199:
	.string	"mbedtls_x509_get_time"
.LASF135:
	.string	"mbedtls_x509_crt_verify_chain"
.LASF271:
	.string	"x509_crt_check_signature"
.LASF171:
	.string	"mbedtls_x509_info_cert_type"
.LASF317:
	.string	"ext_type"
.LASF40:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF244:
	.string	"octet"
.LASF343:
	.string	"mbedtls_error_add"
.LASF102:
	.string	"sig_oid2"
.LASF337:
	.string	"diff"
.LASF158:
	.string	"mbedtls_zeroize_and_free"
.LASF53:
	.string	"mbedtls_ecp_group_id"
.LASF124:
	.string	"ext_key_usage"
.LASF256:
	.string	"signature_is_good"
.LASF31:
	.string	"MBEDTLS_MD_SHA384"
.LASF6:
	.string	"long int"
.LASF243:
	.string	"num_octets"
.LASF163:
	.string	"memmove"
.LASF162:
	.string	"strchr"
.LASF122:
	.string	"max_pathlen"
.LASF251:
	.string	"zero_groups"
.LASF46:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF283:
	.string	"mbedtls_x509_crt_check_key_usage"
.LASF253:
	.string	"x509_crt_verify_chain"
.LASF225:
	.string	"pk_type"
.LASF329:
	.string	"x509_get_version"
.LASF191:
	.string	"mbedtls_x509_get_subject_alt_name"
.LASF240:
	.string	"x509_inet_pton_ipv4"
.LASF245:
	.string	"x509_inet_pton_ipv6"
.LASF35:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF220:
	.string	"mbedtls_x509_crt_verify_with_ca_cb"
.LASF186:
	.string	"mbedtls_x509_get_alg"
.LASF344:
	.string	"high"
.LASF214:
	.string	"mbedtls_x509_crt_verify_restartable"
.LASF287:
	.string	"may_mask"
.LASF183:
	.string	"mbedtls_pk_parse_subpubkey"
.LASF151:
	.string	"mbedtls_x509_crt_ca_cb_t"
.LASF2:
	.string	"signed char"
.LASF45:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF13:
	.string	"uint8_t"
.LASF140:
	.string	"fallback_signature_is_good"
.LASF97:
	.string	"issuer"
.LASF219:
	.string	"p_vrfy"
.LASF307:
	.string	"x509_crt_parse_der_core"
.LASF82:
	.string	"mbedtls_x509_authority"
.LASF3:
	.string	"unsigned char"
.LASF120:
	.string	"ext_types"
.LASF47:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF18:
	.string	"mbedtls_mpi_uint"
.LASF318:
	.string	"x509_get_certificate_policies"
.LASF148:
	.string	"mbedtls_x509_crt_profile_suiteb"
.LASF311:
	.string	"x509_get_crt_ext"
.LASF63:
	.string	"mbedtls_ecp_keypair"
.LASF146:
	.string	"mbedtls_x509_crt_profile_default"
.LASF280:
	.string	"usage_oid"
.LASF328:
	.string	"from"
.LASF150:
	.string	"mbedtls_x509_crt_ext_cb_t"
.LASF224:
	.string	"mbedtls_x509_crt_verify"
.LASF117:
	.string	"subject_key_id"
.LASF300:
	.string	"mbedtls_x509_crt_parse_der"
.LASF16:
	.string	"char"
.LASF59:
	.string	"t_pre"
.LASF302:
	.string	"make_copy"
.LASF204:
	.string	"mbedtls_pk_get_bitlen"
.LASF267:
	.string	"r_signature_is_good"
.LASF346:
	.string	"line"
.LASF64:
	.string	"MBEDTLS_PK_NONE"
.LASF156:
	.string	"mbedtls_pk_restart_init"
.LASF277:
	.string	"hash_length"
.LASF347:
	.string	"mbedtls_pk_get_ec_group_id"
.LASF305:
	.string	"mbedtls_x509_crt_parse_der_internal"
.LASF270:
	.string	"need_ca_bit"
.LASF195:
	.string	"calloc"
.LASF147:
	.string	"mbedtls_x509_crt_profile_next"
.LASF131:
	.string	"flags"
.LASF233:
	.string	"san_ip"
.LASF261:
	.string	"x509_crt_find_parent"
.LASF175:
	.string	"mbedtls_x509_sig_alg_gets"
.LASF157:
	.string	"mbedtls_platform_zeroize"
.LASF327:
	.string	"x509_get_dates"
.LASF334:
	.string	"x509_check_wildcard"
.LASF170:
	.string	"mbedtls_x509_info_key_usage"
.LASF32:
	.string	"MBEDTLS_MD_SHA512"
.LASF143:
	.string	"self_cnt"
.LASF198:
	.string	"mbedtls_asn1_get_bool"
.LASF201:
	.string	"mbedtls_asn1_get_tag"
.LASF330:
	.string	"x509_crt_verify_name"
.LASF345:
	.string	"file"
.LASF286:
	.string	"usage_may"
.LASF313:
	.string	"start_ext_octet"
.LASF36:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF216:
	.string	"ca_crl"
.LASF78:
	.string	"mbedtls_pk_restart_ctx"
.LASF290:
	.string	"prefix"
.LASF128:
	.string	"allowed_pks"
.LASF241:
	.string	"digit"
.LASF70:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF62:
	.string	"T_size"
.LASF232:
	.string	"x509_crt_check_san"
.LASF252:
	.string	"groups_after_zero"
.LASF197:
	.string	"mbedtls_asn1_get_sequence_of"
.LASF194:
	.string	"mbedtls_x509_get_ext"
.LASF110:
	.string	"valid_from"
.LASF160:
	.string	"mbedtls_asn1_free_named_data_list_shallow"
.LASF246:
	.string	"nonzero_groups"
.LASF80:
	.string	"mbedtls_x509_name"
.LASF7:
	.string	"long unsigned int"
.LASF211:
	.string	"cert_prv"
.LASF342:
	.string	"md_alg"
.LASF326:
	.string	"x509_get_uid"
.LASF247:
	.string	"zero_group_start"
.LASF108:
	.string	"subject_raw"
.LASF27:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF96:
	.string	"issuer_raw"
.LASF279:
	.string	"mbedtls_x509_crt_check_extended_key_usage"
.LASF291:
	.string	"mbedtls_x509_crt_info"
.LASF155:
	.string	"mbedtls_pk_restart_free"
.LASF103:
	.string	"sig_md"
.LASF260:
	.string	"x509_crt_check_ee_locally_trusted"
.LASF48:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF323:
	.string	"x509_get_subject_key_id"
.LASF126:
	.string	"mbedtls_x509_crt_profile"
.LASF137:
	.string	"x509_crt_rs_find_parent"
.LASF90:
	.string	"serial"
.LASF249:
	.string	"group"
.LASF184:
	.string	"mbedtls_x509_get_name"
.LASF325:
	.string	"x509_get_basic_constraints"
.LASF213:
	.string	"mbedtls_x509_crt_get_ca_istrue"
.LASF168:
	.string	"mbedtls_md_get_size"
.LASF129:
	.string	"allowed_curves"
.LASF262:
	.string	"path_cnt"
.LASF335:
	.string	"cn_idx"
.LASF179:
	.string	"snprintf"
.LASF276:
	.string	"crl_list"
.LASF121:
	.string	"ca_istrue"
.LASF77:
	.string	"rs_ctx"
.LASF8:
	.string	"long long int"
.LASF339:
	.string	"pk_alg"
.LASF293:
	.string	"x509_info_cert_policies"
.LASF145:
	.string	"mbedtls_x509_crt_restart_ctx"
.LASF308:
	.string	"crt_end"
.LASF66:
	.string	"MBEDTLS_PK_ECKEY"
.LASF254:
	.string	"child"
.LASF180:
	.string	"mbedtls_oid_get_extended_key_usage"
.LASF316:
	.string	"is_critical"
.LASF51:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF76:
	.string	"pk_ctx"
.LASF28:
	.string	"MBEDTLS_MD_SHA1"
.LASF138:
	.string	"parent"
.LASF312:
	.string	"end_ext_data"
.LASF212:
	.string	"mbedtls_x509_crt_init"
.LASF127:
	.string	"allowed_mds"
.LASF238:
	.string	"x509_crt_check_cn"
.LASF196:
	.string	"mbedtls_x509_get_subject_alt_name_ext"
.LASF192:
	.string	"mbedtls_x509_get_key_usage"
.LASF248:
	.string	"addr"
.LASF200:
	.string	"mbedtls_asn1_get_int"
.LASF205:
	.string	"mbedtls_pk_get_type"
.LASF38:
	.string	"mbedtls_md_info_t"
.LASF68:
	.string	"MBEDTLS_PK_ECDSA"
.LASF255:
	.string	"child_is_trusted"
.LASF154:
	.string	"string"
.LASF10:
	.string	"unsigned int"
.LASF136:
	.string	"x509_crt_rs_none"
.LASF299:
	.string	"buflen"
.LASF71:
	.string	"MBEDTLS_PK_OPAQUE"
.LASF89:
	.string	"mbedtls_x509_crl_entry"
.LASF52:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF242:
	.string	"num_digits"
.LASF112:
	.string	"pk_raw"
.LASF310:
	.string	"sig_params2"
.LASF174:
	.string	"mbedtls_pk_get_name"
.LASF23:
	.string	"mbedtls_asn1_named_data"
.LASF81:
	.string	"mbedtls_x509_sequence"
.LASF292:
	.string	"key_size_str"
.LASF320:
	.string	"policy_oid"
.LASF176:
	.string	"mbedtls_x509_dn_gets"
.LASF85:
	.string	"authorityCertSerialNumber"
.LASF125:
	.string	"ns_cert_type"
.LASF50:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF100:
	.string	"entry"
.LASF237:
	.string	"x509_crt_check_san_ip"
.LASF190:
	.string	"mbedtls_x509_get_ns_cert_type"
.LASF24:
	.string	"next_merged"
.LASF268:
	.string	"check_signature"
.LASF37:
	.string	"mbedtls_md_type_t"
.LASF67:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF142:
	.string	"in_progress"
.LASF349:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF227:
	.string	"x509_crt_verify_restartable_ca_cb"
.LASF17:
	.string	"mbedtls_uint16_unaligned_t"
.LASF11:
	.string	"long double"
.LASF165:
	.string	"mbedtls_pk_can_do"
.LASF289:
	.string	"size"
.LASF295:
	.string	"x509_info_ext_key_usage"
.LASF20:
	.string	"mbedtls_asn1_buf"
.LASF281:
	.string	"usage_len"
.LASF167:
	.string	"mbedtls_md"
.LASF297:
	.string	"mbedtls_x509_crt_parse"
.LASF265:
	.string	"candidates"
.LASF92:
	.string	"entry_ext"
.LASF65:
	.string	"MBEDTLS_PK_RSA"
.LASF208:
	.string	"mbedtls_x509_crt_free"
.LASF9:
	.string	"long long unsigned int"
.LASF177:
	.string	"mbedtls_x509_serial_gets"
.LASF296:
	.string	"extended_key_usage"
.LASF14:
	.string	"uint16_t"
.LASF99:
	.string	"next_update"
.LASF166:
	.string	"mbedtls_pk_verify_ext"
.LASF54:
	.string	"mbedtls_ecp_point"
.LASF338:
	.string	"x509_profile_check_key"
.LASF43:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF19:
	.string	"mbedtls_mpi"
.LASF182:
	.string	"mbedtls_x509_get_sig"
.LASF91:
	.string	"revocation_date"
.LASF226:
	.string	"ee_flags"
.LASF207:
	.string	"mbedtls_x509_crt_restart_init"
.LASF118:
	.string	"authority_key_id"
.LASF231:
	.string	"cn_len"
.LASF115:
	.string	"v3_ext"
.LASF98:
	.string	"this_update"
.LASF130:
	.string	"rsa_min_bitlen"
.LASF324:
	.string	"x509_get_ext_key_usage"
.LASF321:
	.string	"policy_end"
.LASF189:
	.string	"memset"
.LASF94:
	.string	"version"
.LASF56:
	.string	"pbits"
.LASF259:
	.string	"find_parent"
.LASF336:
	.string	"x509_memcasecmp"
.LASF29:
	.string	"MBEDTLS_MD_SHA224"
.LASF116:
	.string	"subject_alt_names"
.LASF322:
	.string	"x509_get_authority_key_id"
.LASF294:
	.string	"desc"
.LASF250:
	.string	"steps"
.LASF42:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF104:
	.string	"sig_pk"
.LASF114:
	.string	"subject_id"
.LASF258:
	.string	"exit"
.LASF44:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF153:
	.string	"code"
.LASF202:
	.string	"memcmp"
.LASF169:
	.string	"mbedtls_md_info_from_type"
.LASF33:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF332:
	.string	"x509_name_cmp"
.LASF288:
	.string	"mbedtls_x509_crt_verify_info"
.LASF152:
	.string	"x509_crt_verify_string"
.LASF60:
	.string	"t_post"
.LASF109:
	.string	"subject"
.LASF111:
	.string	"valid_to"
.LASF230:
	.string	"name"
.LASF134:
	.string	"trust_ca_cb_result"
.LASF319:
	.string	"parse_ret"
.LASF298:
	.string	"chain"
.LASF178:
	.string	"mbedtls_oid_get_certificate_policies"
.LASF4:
	.string	"short int"
.LASF39:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF58:
	.string	"modp"
.LASF284:
	.string	"usage"
.LASF209:
	.string	"x509_crt_verify_strings"
.LASF269:
	.string	"x509_crt_check_parent"
.LASF41:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF234:
	.string	"san_uri"
.LASF83:
	.string	"keyIdentifier"
.LASF282:
	.string	"cur_oid"
.LASF30:
	.string	"MBEDTLS_MD_SHA256"
.LASF340:
	.string	"x509_profile_check_pk_alg"
.LASF25:
	.string	"MBEDTLS_MD_NONE"
.LASF215:
	.string	"trust_ca"
.LASF348:
	.string	"mbedtls_pk_ec_ro"
.LASF223:
	.string	"mbedtls_x509_crt_verify_with_profile"
.LASF113:
	.string	"issuer_id"
.LASF257:
	.string	"cur_trust_ca"
.LASF236:
	.string	"san_type"
.LASF88:
	.string	"hour"
.LASF203:
	.string	"strlen"
.LASF272:
	.string	"hash_len"
.LASF206:
	.string	"mbedtls_x509_crt_restart_free"
.LASF159:
	.string	"mbedtls_asn1_sequence_free"
.LASF188:
	.string	"memcpy"
.LASF34:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF309:
	.string	"sig_params1"
.LASF301:
	.string	"mbedtls_x509_crt_parse_der_with_ext_cb"
.LASF133:
	.string	"items"
.LASF141:
	.string	"parent_is_trusted"
.LASF210:
	.string	"cert_cur"
.LASF49:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF15:
	.string	"uint32_t"
.LASF187:
	.string	"mbedtls_x509_get_serial"
.LASF333:
	.string	"x509_string_cmp"
.LASF275:
	.string	"x509_crt_verifycrl"
.LASF341:
	.string	"x509_profile_check_md_alg"
.LASF107:
	.string	"own_buffer"
.LASF222:
	.string	"p_ca_cb"
.LASF350:
	.string	"mbedtls_put_unaligned_uint16"
.LASF123:
	.string	"key_usage"
.LASF181:
	.string	"free"
.LASF5:
	.string	"short unsigned int"
.LASF228:
	.string	"x509_crt_merge_flags_with_cb"
.LASF239:
	.string	"mbedtls_x509_crt_parse_cn_inet_pton"
.LASF61:
	.string	"t_data"
.LASF315:
	.string	"extn_oid"
.LASF164:
	.string	"mbedtls_pk_verify_restartable"
.LASF21:
	.string	"mbedtls_asn1_sequence"
.LASF161:
	.string	"mbedtls_pk_free"
.LASF314:
	.string	"end_ext_octet"
.LASF139:
	.string	"fallback_parent"
.LASF274:
	.string	"md_info"
.LASF273:
	.string	"hash"
.LASF22:
	.string	"next"
.LASF149:
	.string	"mbedtls_x509_crt_profile_none"
.LASF306:
	.string	"prev"
.LASF144:
	.string	"ver_chain"
.LASF79:
	.string	"mbedtls_x509_buf"
.LASF73:
	.string	"mbedtls_pk_info_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509_crt.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
