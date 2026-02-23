	.file	"pk.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk.c"
	.section	.text.mbedtls_md_get_size_from_type,"ax",@progbits
	.align	1
	.type	mbedtls_md_get_size_from_type, @function
mbedtls_md_get_size_from_type:
.LFB11:
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
.LFE11:
	.size	mbedtls_md_get_size_from_type, .-mbedtls_md_get_size_from_type
	.section	.text.psa_extend_key_usage_flags,"ax",@progbits
	.align	1
	.type	psa_extend_key_usage_flags, @function
psa_extend_key_usage_flags:
.LFB42:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_struct.h"
	.loc 2 384 1
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
	.loc 2 385 9
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 385 22
	li	a5,4096
	and	a5,a4,a5
	.loc 2 385 8
	beq	a5,zero,.L4
	.loc 2 386 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 386 22
	ori	a4,a5,1024
	lw	a5,-20(s0)
	sw	a4,0(a5)
.L4:
	.loc 2 389 9
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 389 22
	li	a5,8192
	and	a5,a4,a5
	.loc 2 389 8
	beq	a5,zero,.L6
	.loc 2 390 9
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 390 22
	li	a5,4096
	addi	a5,a5,-2048
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
.L6:
	.loc 2 392 1
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
.LFE42:
	.size	psa_extend_key_usage_flags, .-psa_extend_key_usage_flags
	.section	.text.psa_set_key_usage_flags,"ax",@progbits
	.align	1
	.type	psa_set_key_usage_flags, @function
psa_set_key_usage_flags:
.LFB43:
	.loc 2 396 1
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
	.loc 2 397 5
	addi	a5,s0,-24
	mv	a0,a5
	call	psa_extend_key_usage_flags
	.loc 2 398 30
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sw	a4,8(a5)
	.loc 2 399 1
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
.LFE43:
	.size	psa_set_key_usage_flags, .-psa_set_key_usage_flags
	.section	.text.psa_set_key_algorithm,"ax",@progbits
	.align	1
	.type	psa_set_key_algorithm, @function
psa_set_key_algorithm:
.LFB45:
	.loc 2 409 1
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
	.loc 2 410 28
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,12(a5)
	.loc 2 411 1
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
.LFE45:
	.size	psa_set_key_algorithm, .-psa_set_key_algorithm
	.section	.text.psa_get_key_algorithm,"ax",@progbits
	.align	1
	.type	psa_get_key_algorithm, @function
psa_get_key_algorithm:
.LFB46:
	.loc 2 415 1
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
	.loc 2 416 30
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 2 417 1
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
.LFE46:
	.size	psa_get_key_algorithm, .-psa_get_key_algorithm
	.section	.text.psa_set_key_type,"ax",@progbits
	.align	1
	.type	psa_set_key_type, @function
psa_set_key_type:
.LFB47:
	.loc 2 421 1
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
	sh	a5,-22(s0)
	.loc 2 422 22
	lw	a5,-20(s0)
	lhu	a4,-22(s0)
	sh	a4,0(a5)
	.loc 2 423 1
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
.LFE47:
	.size	psa_set_key_type, .-psa_set_key_type
	.section	.text.psa_get_key_type,"ax",@progbits
	.align	1
	.type	psa_get_key_type, @function
psa_get_key_type:
.LFB48:
	.loc 2 427 1
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
	.loc 2 428 22
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	.loc 2 429 1
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
.LFE48:
	.size	psa_get_key_type, .-psa_get_key_type
	.section	.text.psa_set_key_bits,"ax",@progbits
	.align	1
	.type	psa_set_key_bits, @function
psa_set_key_bits:
.LFB49:
	.loc 2 433 1
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
	.loc 2 434 8
	lw	a4,-24(s0)
	li	a5,65536
	addi	a5,a5,-8
	bleu	a4,a5,.L15
	.loc 2 435 26
	lw	a5,-20(s0)
	li	a4,-1
	sh	a4,2(a5)
	.loc 2 439 1
	j	.L17
.L15:
	.loc 2 437 28
	lw	a5,-24(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 2 437 26
	lw	a5,-20(s0)
	sh	a4,2(a5)
.L17:
	.loc 2 439 1
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
.LFE49:
	.size	psa_set_key_bits, .-psa_set_key_bits
	.section	.text.psa_get_key_bits,"ax",@progbits
	.align	1
	.type	psa_get_key_bits, @function
psa_get_key_bits:
.LFB50:
	.loc 2 443 1
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
	.loc 2 444 22
	lw	a5,-20(s0)
	lhu	a5,2(a5)
	.loc 2 445 1
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
.LFE50:
	.size	psa_get_key_bits, .-psa_get_key_bits
	.section	.text.psa_set_key_enrollment_algorithm,"ax",@progbits
	.align	1
	.type	psa_set_key_enrollment_algorithm, @function
psa_set_key_enrollment_algorithm:
.LFB54:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_extra.h"
	.loc 3 71 1
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
	.loc 3 72 29
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,16(a5)
	.loc 3 73 1
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
.LFE54:
	.size	psa_set_key_enrollment_algorithm, .-psa_set_key_enrollment_algorithm
	.section	.text.mbedtls_pk_get_len,"ax",@progbits
	.align	1
	.type	mbedtls_pk_get_len, @function
mbedtls_pk_get_len:
.LFB66:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/pk.h"
	.loc 4 440 1
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
	.loc 4 441 13
	lw	a0,-20(s0)
	call	mbedtls_pk_get_bitlen
	mv	a5,a0
	.loc 4 441 40 discriminator 1
	addi	a5,a5,7
	.loc 4 441 45 discriminator 1
	srli	a5,a5,3
	.loc 4 442 1
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
.LFE66:
	.size	mbedtls_pk_get_len, .-mbedtls_pk_get_len
	.section	.text.mbedtls_pk_rsa,"ax",@progbits
	.align	1
	.type	mbedtls_pk_rsa, @function
mbedtls_pk_rsa:
.LFB67:
	.loc 4 1038 1
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
	.loc 4 1039 13
	addi	a5,s0,-24
	mv	a0,a5
	call	mbedtls_pk_get_type
	mv	a5,a0
	.loc 4 1039 13 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 4 1039 5 is_stmt 1 discriminator 1
	li	a5,1
	bne	a4,a5,.L24
	.loc 4 1041 20
	lw	a5,-20(s0)
	j	.L25
.L24:
	.loc 4 1043 19
	li	a5,0
.L25:
	.loc 4 1045 1
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
	.section	.text.mbedtls_md_psa_alg_from_type,"ax",@progbits
	.align	1
	.type	mbedtls_md_psa_alg_from_type, @function
mbedtls_md_psa_alg_from_type:
.LFB69:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/psa_util.h"
	.loc 5 122 1
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
	.loc 5 123 45
	lbu	a4,-17(s0)
	.loc 5 123 43
	li	a5,33554432
	or	a5,a4,a5
	.loc 5 124 1
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
.LFE69:
	.size	mbedtls_md_psa_alg_from_type, .-mbedtls_md_psa_alg_from_type
	.section	.text.mbedtls_md_type_from_psa_alg,"ax",@progbits
	.align	1
	.type	mbedtls_md_type_from_psa_alg, @function
mbedtls_md_type_from_psa_alg:
.LFB70:
	.loc 5 139 1
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
	.loc 5 140 12
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	.loc 5 141 1
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
.LFE70:
	.size	mbedtls_md_type_from_psa_alg, .-mbedtls_md_type_from_psa_alg
	.section	.text.mbedtls_pk_ec_ro,"ax",@progbits
	.align	1
	.type	mbedtls_pk_ec_ro, @function
mbedtls_pk_ec_ro:
.LFB71:
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk_internal.h"
	.loc 6 61 1
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
	.loc 6 62 13
	addi	a5,s0,-24
	mv	a0,a5
	call	mbedtls_pk_get_type
	mv	a5,a0
	addi	a4,a5,-2
	.loc 6 62 5 discriminator 1
	li	a5,2
	bgtu	a4,a5,.L31
	.loc 6 66 20
	lw	a5,-20(s0)
	j	.L32
.L31:
	.loc 6 68 19
	li	a5,0
.L32:
	.loc 6 70 1
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
.LFE71:
	.size	mbedtls_pk_ec_ro, .-mbedtls_pk_ec_ro
	.section	.text.mbedtls_pk_init,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_init
	.type	mbedtls_pk_init, @function
mbedtls_pk_init:
.LFB76:
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk.c"
	.loc 7 42 1
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
	.loc 7 43 18
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 7 44 17
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 7 54 1
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
.LFE76:
	.size	mbedtls_pk_init, .-mbedtls_pk_init
	.section	.text.mbedtls_pk_free,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_free
	.type	mbedtls_pk_free, @function
mbedtls_pk_free:
.LFB77:
	.loc 7 60 1
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
	.loc 7 61 8
	lw	a5,-20(s0)
	beq	a5,zero,.L38
	.loc 7 65 13
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 65 8
	beq	a5,zero,.L37
	.loc 7 65 38 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 65 47 discriminator 1
	lw	a5,48(a5)
	.loc 7 65 31 discriminator 1
	beq	a5,zero,.L37
	.loc 7 66 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 66 21
	lw	a5,48(a5)
	.loc 7 66 9
	lw	a4,-20(s0)
	lw	a4,4(a4)
	mv	a0,a4
	jalr	a5
.LVL0:
.L37:
	.loc 7 77 5
	li	a1,8
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
	j	.L34
.L38:
	.loc 7 62 9
	nop
.L34:
	.loc 7 78 1
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
	.size	mbedtls_pk_free, .-mbedtls_pk_free
	.section	.text.mbedtls_pk_restart_init,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_restart_init
	.type	mbedtls_pk_restart_init, @function
mbedtls_pk_restart_init:
.LFB78:
	.loc 7 85 1
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
	.loc 7 86 18
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 7 87 17
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 7 88 1
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
.LFE78:
	.size	mbedtls_pk_restart_init, .-mbedtls_pk_restart_init
	.section	.text.mbedtls_pk_restart_free,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_restart_free
	.type	mbedtls_pk_restart_free, @function
mbedtls_pk_restart_free:
.LFB79:
	.loc 7 94 1
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
	.loc 7 95 8
	lw	a5,-20(s0)
	beq	a5,zero,.L44
	.loc 7 95 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 95 20 discriminator 1
	beq	a5,zero,.L44
	.loc 7 96 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 96 21
	lw	a5,56(a5)
	.loc 7 95 44 discriminator 2
	beq	a5,zero,.L44
	.loc 7 100 8
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 100 17
	lw	a5,56(a5)
	.loc 7 100 5
	lw	a4,-20(s0)
	lw	a4,4(a4)
	mv	a0,a4
	jalr	a5
.LVL1:
	.loc 7 102 18
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 7 103 17
	lw	a5,-20(s0)
	sw	zero,4(a5)
	j	.L40
.L44:
	.loc 7 97 9
	nop
.L40:
	.loc 7 104 1
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
	.size	mbedtls_pk_restart_free, .-mbedtls_pk_restart_free
	.section	.text.mbedtls_pk_info_from_type,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_info_from_type
	.type	mbedtls_pk_info_from_type, @function
mbedtls_pk_info_from_type:
.LFB80:
	.loc 7 111 1
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
	.loc 7 112 5
	lbu	a5,-17(s0)
	li	a4,4
	beq	a5,a4,.L46
	li	a4,4
	bgt	a5,a4,.L47
	li	a4,3
	beq	a5,a4,.L48
	li	a4,3
	bgt	a5,a4,.L47
	li	a4,1
	beq	a5,a4,.L49
	li	a4,2
	beq	a5,a4,.L50
	j	.L47
.L49:
	.loc 7 115 20
	lui	a5,%hi(mbedtls_rsa_info)
	addi	a5,a5,%lo(mbedtls_rsa_info)
	j	.L51
.L50:
	.loc 7 119 20
	lui	a5,%hi(mbedtls_eckey_info)
	addi	a5,a5,%lo(mbedtls_eckey_info)
	j	.L51
.L48:
	.loc 7 121 20
	lui	a5,%hi(mbedtls_eckeydh_info)
	addi	a5,a5,%lo(mbedtls_eckeydh_info)
	j	.L51
.L46:
	.loc 7 125 20
	lui	a5,%hi(mbedtls_ecdsa_info)
	addi	a5,a5,%lo(mbedtls_ecdsa_info)
	j	.L51
.L47:
	.loc 7 129 19
	li	a5,0
.L51:
	.loc 7 131 1
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
.LFE80:
	.size	mbedtls_pk_info_from_type, .-mbedtls_pk_info_from_type
	.section	.text.mbedtls_pk_setup,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_setup
	.type	mbedtls_pk_setup, @function
mbedtls_pk_setup:
.LFB81:
	.loc 7 137 1
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
	.loc 7 138 8
	lw	a5,-24(s0)
	beq	a5,zero,.L53
	.loc 7 138 27 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 138 21 discriminator 1
	beq	a5,zero,.L54
.L53:
	.loc 7 139 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L55
.L54:
	.loc 7 142 14
	lw	a5,-24(s0)
	lw	a5,44(a5)
	.loc 7 142 8
	beq	a5,zero,.L56
	.loc 7 143 29
	lw	a5,-24(s0)
	lw	a5,44(a5)
	.loc 7 143 25
	jalr	a5
.LVL2:
	mv	a4,a0
	.loc 7 143 23 discriminator 1
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 7 143 14 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 7 142 39 discriminator 1
	bne	a5,zero,.L56
	.loc 7 144 16
	li	a5,-16384
	addi	a5,a5,128
	j	.L55
.L56:
	.loc 7 147 18
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 7 149 12
	li	a5,0
.L55:
	.loc 7 150 1
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
	.size	mbedtls_pk_setup, .-mbedtls_pk_setup
	.section	.text.mbedtls_pk_can_do,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_can_do
	.type	mbedtls_pk_can_do, @function
mbedtls_pk_can_do:
.LFB82:
	.loc 7 228 1
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
	.loc 7 232 8
	lw	a5,-20(s0)
	beq	a5,zero,.L58
	.loc 7 232 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 232 20 discriminator 1
	bne	a5,zero,.L59
.L58:
	.loc 7 233 16
	li	a5,0
	j	.L60
.L59:
	.loc 7 236 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 236 24
	lw	a5,12(a5)
	.loc 7 236 12
	lbu	a4,-21(s0)
	mv	a0,a4
	jalr	a5
.LVL3:
	mv	a5,a0
.L60:
	.loc 7 237 1
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
	.size	mbedtls_pk_can_do, .-mbedtls_pk_can_do
	.section	.text.psa_algorithm_for_rsa,"ax",@progbits
	.align	1
	.type	psa_algorithm_for_rsa, @function
psa_algorithm_for_rsa:
.LFB83:
	.loc 7 382 1
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
	.loc 7 383 9
	lw	a0,-36(s0)
	call	mbedtls_rsa_get_padding_mode
	mv	a4,a0
	.loc 7 383 8 discriminator 1
	li	a5,1
	bne	a4,a5,.L62
	.loc 7 384 12
	lw	a5,-40(s0)
	beq	a5,zero,.L63
.LBB2:
	.loc 7 385 61
	lw	a0,-36(s0)
	call	mbedtls_rsa_get_md_alg
	mv	a5,a0
	.loc 7 385 31 discriminator 1
	sb	a5,-17(s0)
	.loc 7 386 56
	lbu	a5,-17(s0)
	mv	a0,a5
	call	mbedtls_md_psa_alg_from_type
	mv	a5,a0
	.loc 7 386 95 discriminator 1
	andi	a4,a5,255
	.loc 7 386 52 discriminator 1
	li	a5,117440512
	addi	a5,a5,768
	or	a5,a4,a5
	.loc 7 386 52 is_stmt 0
	j	.L64
.L63:
.LBE2:
	.loc 7 388 20 is_stmt 1
	li	a5,100667392
	addi	a5,a5,1023
	j	.L64
.L62:
	.loc 7 391 12
	lw	a5,-40(s0)
	beq	a5,zero,.L65
	.loc 7 392 20
	li	a5,117440512
	addi	a5,a5,512
	j	.L64
.L65:
	.loc 7 394 20
	li	a5,100663296
	addi	a5,a5,767
.L64:
	.loc 7 397 1
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
	.size	psa_algorithm_for_rsa, .-psa_algorithm_for_rsa
	.section	.text.mbedtls_pk_get_psa_attributes,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_get_psa_attributes
	.type	mbedtls_pk_get_psa_attributes, @function
mbedtls_pk_get_psa_attributes:
.LFB84:
	.loc 7 403 1
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
	.loc 7 404 33
	lw	a0,-84(s0)
	call	mbedtls_pk_get_type
	mv	a5,a0
	sb	a5,-29(s0)
	.loc 7 406 21
	lw	a5,-88(s0)
	sw	a5,-20(s0)
	.loc 7 407 8
	lw	a4,-88(s0)
	li	a5,1024
	bne	a4,a5,.L67
	.loc 7 408 20
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L68
.L67:
	.loc 7 409 15
	lw	a4,-88(s0)
	li	a5,4096
	bne	a4,a5,.L69
	.loc 7 410 20
	lw	a4,-20(s0)
	li	a5,8192
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L68
.L69:
	.loc 7 411 15
	lw	a4,-88(s0)
	li	a5,512
	bne	a4,a5,.L68
	.loc 7 412 20
	lw	a5,-20(s0)
	ori	a5,a5,256
	sw	a5,-20(s0)
.L68:
	.loc 7 414 16
	lw	a5,-20(s0)
	ori	a5,a5,3
	sw	a5,-20(s0)
	.loc 7 416 24
	lw	a5,-88(s0)
	addi	a5,a5,-2048
	beq	a5,zero,.L70
	.loc 7 416 66 discriminator 1
	lw	a4,-88(s0)
	li	a5,8192
	beq	a4,a5,.L70
	.loc 7 416 24 discriminator 3
	lw	a4,-88(s0)
	li	a5,256
	beq	a4,a5,.L70
	.loc 7 416 24 is_stmt 0 discriminator 5
	li	a5,1
	.loc 7 416 24
	j	.L71
.L70:
	.loc 7 416 24 discriminator 6
	li	a5,0
.L71:
	.loc 7 416 9 is_stmt 1 discriminator 8
	sw	a5,-36(s0)
	.loc 7 420 5
	lbu	a5,-29(s0)
	li	a4,1
	beq	a5,a4,.L72
	ble	a5,zero,.L73
	addi	a4,a5,-2
	li	a5,2
	bgtu	a4,a5,.L73
	j	.L94
.L72:
.LBB3:
	.loc 7 424 17
	sw	zero,-24(s0)
	.loc 7 425 13
	lw	a4,-88(s0)
	li	a5,8192
	beq	a4,a5,.L95
	lw	a4,-88(s0)
	li	a5,8192
	bgtu	a4,a5,.L76
	lw	a4,-88(s0)
	li	a5,4096
	beq	a4,a5,.L95
	lw	a4,-88(s0)
	li	a5,4096
	bgtu	a4,a5,.L76
	lw	a5,-88(s0)
	addi	a5,a5,-2048
	beq	a5,zero,.L95
	lw	a4,-88(s0)
	li	a5,4096
	addi	a5,a5,-2048
	bgtu	a4,a5,.L76
	lw	a4,-88(s0)
	li	a5,1024
	beq	a4,a5,.L95
	lw	a4,-88(s0)
	li	a5,1024
	bgtu	a4,a5,.L76
	lw	a4,-88(s0)
	li	a5,256
	beq	a4,a5,.L77
	lw	a4,-88(s0)
	li	a5,512
	bne	a4,a5,.L76
.L77:
	.loc 7 434 32
	li	a5,1
	sw	a5,-24(s0)
	.loc 7 435 21
	j	.L78
.L76:
	.loc 7 437 28
	li	a5,-16384
	addi	a5,a5,256
	j	.L79
.L95:
	.loc 7 431 21
	nop
.L78:
	.loc 7 441 40
	lw	a5,-84(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_rsa
	sw	a0,-60(s0)
	.loc 7 442 32
	lw	a0,-60(s0)
	call	mbedtls_rsa_check_privkey
	mv	a5,a0
	.loc 7 442 63 discriminator 1
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 7 442 17 discriminator 1
	sw	a5,-64(s0)
	.loc 7 443 16
	lw	a5,-36(s0)
	beq	a5,zero,.L80
	.loc 7 443 30 discriminator 1
	lw	a5,-64(s0)
	bne	a5,zero,.L80
	.loc 7 444 24
	li	a5,-16384
	addi	a5,a5,256
	j	.L79
.L80:
	.loc 7 446 13
	lw	a5,-36(s0)
	beq	a5,zero,.L81
	.loc 7 446 13 is_stmt 0 discriminator 1
	li	a5,28672
	addi	a5,a5,1
	j	.L82
.L81:
	.loc 7 446 13 discriminator 2
	li	a5,16384
	addi	a5,a5,1
.L82:
	.loc 7 446 13 discriminator 4
	mv	a1,a5
	lw	a0,-92(s0)
	call	psa_set_key_type
	.loc 7 449 13 is_stmt 1
	lw	a0,-84(s0)
	call	mbedtls_pk_get_bitlen
	mv	a5,a0
	.loc 7 449 13 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-92(s0)
	call	psa_set_key_bits
	.loc 7 450 13 is_stmt 1
	lw	a1,-24(s0)
	lw	a0,-60(s0)
	call	psa_algorithm_for_rsa
	mv	a5,a0
	.loc 7 450 13 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-92(s0)
	call	psa_set_key_algorithm
	.loc 7 452 13 is_stmt 1
	j	.L83
.L94:
.LBE3:
.LBB4:
	.loc 7 461 36
	lbu	a5,-29(s0)
	addi	a5,a5,-3
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 7 461 17
	sw	a5,-40(s0)
	.loc 7 462 38
	lbu	a5,-29(s0)
	addi	a5,a5,-4
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 7 462 17
	sw	a5,-44(s0)
	.loc 7 471 45
	lw	a5,-84(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_ec_ro
	sw	a0,-48(s0)
	.loc 7 472 37
	lw	a5,-48(s0)
	lhu	a5,102(a5)
	.loc 7 472 40
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 7 472 17
	sw	a5,-52(s0)
	.loc 7 473 20
	sw	zero,-68(s0)
	.loc 7 475 49
	lw	a5,-48(s0)
	lbu	a5,0(a5)
	.loc 7 475 17
	addi	a4,s0,-68
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecc_group_to_psa
	mv	a5,a0
	sb	a5,-53(s0)
	.loc 7 477 29
	sw	zero,-28(s0)
	.loc 7 478 13
	lw	a4,-88(s0)
	li	a5,16384
	beq	a4,a5,.L84
	lw	a4,-88(s0)
	li	a5,16384
	bgtu	a4,a5,.L85
	lw	a4,-88(s0)
	li	a5,8192
	beq	a4,a5,.L86
	lw	a4,-88(s0)
	li	a5,8192
	bgtu	a4,a5,.L85
	lw	a4,-88(s0)
	li	a5,4096
	beq	a4,a5,.L86
	lw	a4,-88(s0)
	li	a5,4096
	bgtu	a4,a5,.L85
	lw	a4,-88(s0)
	li	a5,1024
	beq	a4,a5,.L86
	lw	a5,-88(s0)
	addi	a5,a5,-2048
	bne	a5,zero,.L85
.L86:
	.loc 7 483 24
	lw	a5,-40(s0)
	bne	a5,zero,.L87
	.loc 7 484 32
	li	a5,-16384
	addi	a5,a5,256
	j	.L79
.L87:
	.loc 7 487 25
	li	a5,100663296
	addi	a5,a5,2047
	sw	a5,-28(s0)
	.loc 7 491 21
	j	.L89
.L84:
	.loc 7 493 25
	li	a5,151126016
	sw	a5,-28(s0)
	.loc 7 494 24
	lw	a5,-44(s0)
	bne	a5,zero,.L96
	.loc 7 495 32
	li	a5,-16384
	addi	a5,a5,256
	j	.L79
.L85:
	.loc 7 499 28
	li	a5,-16384
	addi	a5,a5,256
	j	.L79
.L96:
	.loc 7 497 21
	nop
.L89:
	.loc 7 501 16
	lw	a5,-36(s0)
	beq	a5,zero,.L91
	.loc 7 501 30 discriminator 1
	lw	a5,-52(s0)
	bne	a5,zero,.L91
	.loc 7 502 24
	li	a5,-16384
	addi	a5,a5,256
	j	.L79
.L91:
	.loc 7 504 13
	lw	a5,-36(s0)
	beq	a5,zero,.L92
	.loc 7 505 70
	lbu	a5,-53(s0)
	slli	a4,a5,16
	srai	a4,a4,16
	li	a5,28672
	addi	a5,a5,256
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 7 504 13 discriminator 1
	slli	a5,a5,16
	srli	a5,a5,16
	j	.L93
.L92:
	.loc 7 506 70
	lbu	a5,-53(s0)
	slli	a4,a5,16
	srai	a4,a4,16
	li	a5,16384
	addi	a5,a5,256
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 7 504 13 discriminator 2
	slli	a5,a5,16
	srli	a5,a5,16
.L93:
	.loc 7 504 13 is_stmt 0 discriminator 4
	mv	a1,a5
	lw	a0,-92(s0)
	call	psa_set_key_type
	.loc 7 507 13 is_stmt 1
	lw	a5,-68(s0)
	mv	a1,a5
	lw	a0,-92(s0)
	call	psa_set_key_bits
	.loc 7 508 13
	lw	a1,-28(s0)
	lw	a0,-92(s0)
	call	psa_set_key_algorithm
	j	.L83
.L73:
.LBE4:
	.loc 7 571 20
	li	a5,-16384
	addi	a5,a5,384
	j	.L79
.L83:
	.loc 7 574 5
	lw	a1,-20(s0)
	lw	a0,-92(s0)
	call	psa_set_key_usage_flags
	.loc 7 581 5
	li	a1,0
	lw	a0,-92(s0)
	call	psa_set_key_enrollment_algorithm
	.loc 7 584 12
	li	a5,0
.L79:
	.loc 7 585 1
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
	.size	mbedtls_pk_get_psa_attributes, .-mbedtls_pk_get_psa_attributes
	.section	.text.import_pair_into_psa,"ax",@progbits
	.align	1
	.type	import_pair_into_psa, @function
import_pair_into_psa:
.LFB85:
	.loc 7 644 1
	.cfi_startproc
	addi	sp,sp,-2032
	.cfi_def_cfa_offset 2032
	sw	ra,2028(sp)
	sw	s0,2024(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,2032
	.cfi_def_cfa 8, 0
	addi	sp,sp,-416
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a0,1676(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a1,1672(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a2,1668(a5)
	.loc 7 645 13
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a0,1676(a5)
	call	mbedtls_pk_get_type
	mv	a5,a0
	.loc 7 645 5 discriminator 1
	li	a4,1
	beq	a5,a4,.L98
	ble	a5,zero,.L99
	addi	a4,a5,-2
	li	a5,2
	bgtu	a4,a5,.L99
	j	.L109
.L98:
.LBB5:
	.loc 7 649 17
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a0,1672(a5)
	call	psa_get_key_type
	mv	a5,a0
	mv	a4,a5
	.loc 7 649 16 discriminator 1
	li	a5,28672
	addi	a5,a5,1
	beq	a4,a5,.L101
	.loc 7 650 24
	li	a5,-16384
	addi	a5,a5,256
	j	.L104
.L101:
	.loc 7 654 34
	li	a5,-4096
	addi	a5,a5,1692
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,4096
	addi	a5,a5,-1733
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 7 655 28
	lw	a5,-36(s0)
	sw	a5,-48(s0)
	.loc 7 656 45
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,1676(a5)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_rsa
	mv	a3,a0
	.loc 7 656 23 discriminator 1
	addi	a4,s0,-48
	li	a5,-4096
	addi	a5,a5,1692
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	mbedtls_rsa_write_key
	sw	a0,-40(s0)
	.loc 7 658 16
	lw	a5,-40(s0)
	bge	a5,zero,.L103
	.loc 7 659 24
	lw	a5,-40(s0)
	j	.L104
.L103:
	.loc 7 661 41
	lw	a5,-48(s0)
	lw	a4,-36(s0)
	sub	a5,a4,a5
	.loc 7 661 20
	sw	a5,-44(s0)
	.loc 7 662 19
	lw	a1,-48(s0)
	li	a5,-4096
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a3,1668(a4)
	lw	a2,-44(s0)
	lw	a0,1672(a5)
	call	psa_import_key
	mv	a5,a0
	.loc 7 662 19 is_stmt 0 discriminator 1
	mv	a0,a5
	call	psa_pk_status_to_mbedtls
	sw	a0,-40(s0)
	.loc 7 665 13 is_stmt 1
	lw	a5,-48(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 7 666 20
	lw	a5,-40(s0)
	j	.L104
.L109:
.LBE5:
.LBB6:
	.loc 7 680 38
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a0,1672(a5)
	call	psa_get_key_type
	mv	a5,a0
	sh	a5,-18(s0)
	.loc 7 684 45
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,1676(a5)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_ec_ro
	sw	a0,-24(s0)
	.loc 7 685 20
	sw	zero,-52(s0)
	.loc 7 686 76
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 7 686 44
	addi	a4,s0,-52
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecc_group_to_psa
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 7 689 25
	lhu	a4,-18(s0)
	.loc 7 689 55
	lbu	a3,-25(s0)
	li	a5,28672
	addi	a5,a5,256
	or	a5,a3,a5
	.loc 7 689 16
	beq	a4,a5,.L105
	.loc 7 690 24
	li	a5,-16384
	addi	a5,a5,256
	j	.L104
.L105:
	.loc 7 700 22
	lw	a5,-24(s0)
	lhu	a5,102(a5)
	.loc 7 700 16
	bne	a5,zero,.L107
	.loc 7 707 24
	li	a5,-16384
	addi	a5,a5,256
	j	.L104
.L107:
	.loc 7 710 20
	sw	zero,-56(s0)
	.loc 7 711 23
	li	a5,-4096
	addi	a5,a5,1692
	addi	a5,a5,-16
	add	a4,a5,s0
	addi	a5,s0,-56
	li	a3,66
	mv	a2,a4
	mv	a1,a5
	lw	a0,-24(s0)
	call	mbedtls_ecp_write_key_ext
	sw	a0,-32(s0)
	.loc 7 713 16
	lw	a5,-32(s0)
	bge	a5,zero,.L108
	.loc 7 714 24
	lw	a5,-32(s0)
	j	.L104
.L108:
	.loc 7 716 19
	lw	a2,-56(s0)
	li	a5,-4096
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,1692
	addi	a5,a5,-16
	add	a1,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a3,1668(a4)
	lw	a0,1672(a5)
	call	psa_import_key
	mv	a5,a0
	.loc 7 716 19 is_stmt 0 discriminator 1
	mv	a0,a5
	call	psa_pk_status_to_mbedtls
	sw	a0,-32(s0)
	.loc 7 719 13 is_stmt 1
	lw	a4,-56(s0)
	li	a5,-4096
	addi	a5,a5,1692
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 7 720 20
	lw	a5,-32(s0)
	j	.L104
.L99:
.LBE6:
	.loc 7 731 20
	li	a5,-16384
	addi	a5,a5,384
.L104:
	.loc 7 733 1
	mv	a0,a5
	addi	sp,sp,416
	.cfi_def_cfa 2, 2032
	lw	ra,2028(sp)
	.cfi_restore 1
	lw	s0,2024(sp)
	.cfi_restore 8
	addi	sp,sp,2032
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE85:
	.size	import_pair_into_psa, .-import_pair_into_psa
	.section	.text.import_public_into_psa,"ax",@progbits
	.align	1
	.type	import_public_into_psa, @function
import_public_into_psa:
.LFB86:
	.loc 7 738 1
	.cfi_startproc
	addi	sp,sp,-1104
	.cfi_def_cfa_offset 1104
	sw	ra,1100(sp)
	sw	s0,1096(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,1104
	.cfi_def_cfa 8, 0
	sw	a0,-1092(s0)
	sw	a1,-1096(s0)
	sw	a2,-1100(s0)
	.loc 7 739 31
	lw	a0,-1096(s0)
	call	psa_get_key_type
	mv	a5,a0
	sh	a5,-18(s0)
	.loc 7 746 20
	sw	zero,-1068(s0)
	.loc 7 747 12
	sw	zero,-1072(s0)
	.loc 7 749 13
	lw	a0,-1092(s0)
	call	mbedtls_pk_get_type
	mv	a5,a0
	.loc 7 749 5 discriminator 1
	li	a4,1
	beq	a5,a4,.L111
	ble	a5,zero,.L112
	addi	a4,a5,-2
	li	a5,2
	bgtu	a4,a5,.L112
	j	.L122
.L111:
.LBB7:
	.loc 7 753 16
	lhu	a4,-18(s0)
	li	a5,16384
	addi	a5,a5,1
	beq	a4,a5,.L114
	.loc 7 754 24
	li	a5,-16384
	addi	a5,a5,256
	j	.L121
.L114:
	.loc 7 756 34
	addi	a5,s0,-1064
	addi	a5,a5,1024
	sw	a5,-36(s0)
	.loc 7 757 22
	lw	a5,-36(s0)
	sw	a5,-1068(s0)
	.loc 7 758 48
	lw	a5,-1092(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_rsa
	mv	a3,a0
	.loc 7 758 23 discriminator 1
	addi	a4,s0,-1068
	addi	a5,s0,-1064
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	mbedtls_rsa_write_pubkey
	sw	a0,-40(s0)
	.loc 7 760 16
	lw	a5,-40(s0)
	bge	a5,zero,.L116
	.loc 7 761 24
	lw	a5,-40(s0)
	j	.L121
.L116:
	.loc 7 763 26
	lw	a5,-40(s0)
	.loc 7 763 24
	sw	a5,-1072(s0)
	.loc 7 764 13
	j	.L117
.L122:
.LBE7:
.LBB8:
	.loc 7 785 45
	lw	a5,-1092(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_ec_ro
	sw	a0,-24(s0)
	.loc 7 786 20
	sw	zero,-1076(s0)
	.loc 7 787 76
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 7 787 44
	addi	a4,s0,-1076
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecc_group_to_psa
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 7 789 26
	lhu	a4,-18(s0)
	.loc 7 789 56
	lbu	a3,-25(s0)
	li	a5,16384
	addi	a5,a5,256
	or	a5,a3,a5
	.loc 7 789 16
	beq	a4,a5,.L118
	.loc 7 790 24
	li	a5,-16384
	addi	a5,a5,256
	j	.L121
.L118:
	.loc 7 792 23
	addi	a3,s0,-1064
	addi	a5,s0,-1072
	li	a4,1024
	mv	a2,a5
	li	a1,0
	lw	a0,-24(s0)
	call	mbedtls_ecp_write_public_key
	sw	a0,-32(s0)
	.loc 7 795 16
	lw	a5,-32(s0)
	bge	a5,zero,.L120
	.loc 7 796 24
	lw	a5,-32(s0)
	j	.L121
.L120:
	.loc 7 798 22
	addi	a5,s0,-1064
	sw	a5,-1068(s0)
	j	.L117
.L112:
.LBE8:
	.loc 7 830 20
	li	a5,-16384
	addi	a5,a5,384
	j	.L121
.L117:
	.loc 7 833 12
	lw	a5,-1068(s0)
	lw	a4,-1072(s0)
	lw	a3,-1100(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-1096(s0)
	call	psa_import_key
	mv	a5,a0
	.loc 7 833 12 is_stmt 0 discriminator 1
	mv	a0,a5
	call	psa_pk_status_to_mbedtls
	mv	a5,a0
.L121:
	.loc 7 836 1 is_stmt 1
	mv	a0,a5
	lw	ra,1100(sp)
	.cfi_restore 1
	lw	s0,1096(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 1104
	addi	sp,sp,1104
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE86:
	.size	import_public_into_psa, .-import_public_into_psa
	.section	.text.mbedtls_pk_import_into_psa,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_import_into_psa
	.type	mbedtls_pk_import_into_psa, @function
mbedtls_pk_import_into_psa:
.LFB87:
	.loc 7 841 1
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
	.loc 7 844 13
	lw	a5,-44(s0)
	sw	zero,0(a5)
	.loc 7 852 26
	lw	a0,-40(s0)
	call	psa_get_key_type
	mv	a5,a0
	.loc 7 852 56 discriminator 1
	mv	a4,a5
	li	a5,28672
	and	a4,a4,a5
	.loc 7 852 85 discriminator 1
	li	a5,-16384
	add	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 7 852 9 discriminator 1
	sw	a5,-20(s0)
	.loc 7 853 8
	lw	a5,-20(s0)
	beq	a5,zero,.L124
	.loc 7 854 16
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	import_public_into_psa
	mv	a5,a0
	j	.L125
.L124:
	.loc 7 856 16
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	import_pair_into_psa
	mv	a5,a0
.L125:
	.loc 7 858 1
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
	.size	mbedtls_pk_import_into_psa, .-mbedtls_pk_import_into_psa
	.section	.text.copy_from_psa,"ax",@progbits
	.align	1
	.type	copy_from_psa, @function
copy_from_psa:
.LFB88:
	.loc 7 863 1
	.cfi_startproc
	addi	sp,sp,-2032
	.cfi_def_cfa_offset 2032
	sw	ra,2028(sp)
	sw	s0,2024(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,2032
	.cfi_def_cfa 8, 0
	addi	sp,sp,-432
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a0,1660(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a1,1656(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a2,1652(a5)
	.loc 7 865 26
	sh	zero,-68(s0)
	sh	zero,-66(s0)
	sw	zero,-64(s0)
	sw	zero,-60(s0)
	sw	zero,-56(s0)
	sw	zero,-52(s0)
	sw	zero,-48(s0)
	.loc 7 871 9
	li	a5,-16384
	addi	a5,a5,384
	sw	a5,-28(s0)
	.loc 7 873 8
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,1656(a5)
	bne	a5,zero,.L127
	.loc 7 874 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L158
.L127:
	.loc 7 877 14
	addi	a4,s0,-68
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a1,a4
	lw	a0,1660(a5)
	call	psa_get_key_attributes
	sw	a0,-20(s0)
	.loc 7 878 8
	lw	a5,-20(s0)
	beq	a5,zero,.L129
	.loc 7 879 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L158
.L129:
	.loc 7 882 8
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,1652(a5)
	beq	a5,zero,.L130
	.loc 7 883 18
	li	a5,-4096
	addi	a5,a5,1676
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,1680
	addi	a5,a5,-16
	add	a1,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a3,a4
	li	a4,4096
	addi	a2,a4,-1733
	lw	a0,1660(a5)
	call	psa_export_public_key
	sw	a0,-20(s0)
	j	.L131
.L130:
	.loc 7 885 18
	li	a5,-4096
	addi	a5,a5,1676
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,1680
	addi	a5,a5,-16
	add	a1,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a3,a4
	li	a4,4096
	addi	a2,a4,-1733
	lw	a0,1660(a5)
	call	psa_export_key
	sw	a0,-20(s0)
.L131:
	.loc 7 887 8
	lw	a5,-20(s0)
	beq	a5,zero,.L132
	.loc 7 888 15
	lw	a0,-20(s0)
	call	psa_pk_status_to_mbedtls
	sw	a0,-28(s0)
	.loc 7 889 9
	j	.L133
.L132:
	.loc 7 892 16
	addi	a5,s0,-68
	mv	a0,a5
	call	psa_get_key_type
	mv	a5,a0
	sh	a5,-22(s0)
	.loc 7 893 8
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,1652(a5)
	beq	a5,zero,.L134
	.loc 7 894 18
	lhu	a5,-22(s0)
	mv	a4,a5
	li	a5,-12288
	addi	a5,a5,-1
	and	a5,a4,a5
	sh	a5,-22(s0)
.L134:
	.loc 7 896 16
	addi	a5,s0,-68
	mv	a0,a5
	call	psa_get_key_bits
	sw	a0,-36(s0)
	.loc 7 899 8
	lhu	a4,-22(s0)
	li	a5,28672
	addi	a5,a5,1
	beq	a4,a5,.L135
	.loc 7 899 49 discriminator 1
	lhu	a4,-22(s0)
	li	a5,16384
	addi	a5,a5,1
	bne	a4,a5,.L136
.L135:
.LBB9:
	.loc 7 902 15
	li	a0,1
	call	mbedtls_pk_info_from_type
	mv	a4,a0
	.loc 7 902 15 is_stmt 0 discriminator 1
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a1,a4
	lw	a0,1656(a5)
	call	mbedtls_pk_setup
	sw	a0,-28(s0)
	.loc 7 903 12 is_stmt 1
	lw	a5,-28(s0)
	bne	a5,zero,.L159
	.loc 7 907 12
	lhu	a4,-22(s0)
	li	a5,28672
	addi	a5,a5,1
	bne	a4,a5,.L138
	.loc 7 908 19
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,1656(a5)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_rsa
	mv	a3,a0
	.loc 7 908 19 is_stmt 0 discriminator 1
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,1676(a5)
	li	a5,-4096
	addi	a5,a5,1680
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	mbedtls_rsa_parse_key
	sw	a0,-28(s0)
	j	.L139
.L138:
	.loc 7 910 19 is_stmt 1
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,1656(a5)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_rsa
	mv	a3,a0
	.loc 7 910 19 is_stmt 0 discriminator 1
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,1676(a5)
	li	a5,-4096
	addi	a5,a5,1680
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	mbedtls_rsa_parse_pubkey
	sw	a0,-28(s0)
.L139:
	.loc 7 912 12 is_stmt 1
	lw	a5,-28(s0)
	bne	a5,zero,.L160
	.loc 7 916 36
	addi	a5,s0,-68
	mv	a0,a5
	call	psa_get_key_algorithm
	sw	a0,-44(s0)
	.loc 7 917 27
	sb	zero,-29(s0)
	.loc 7 918 26
	lw	a5,-44(s0)
	andi	a5,a5,255
	.loc 7 918 12
	beq	a5,zero,.L141
	.loc 7 918 96 discriminator 1
	lw	a5,-44(s0)
	andi	a4,a5,255
	.loc 7 918 82 discriminator 1
	li	a5,33554432
	or	a4,a4,a5
	.loc 7 918 111 discriminator 1
	li	a5,33554432
	addi	a5,a5,255
	beq	a4,a5,.L142
.L141:
	.loc 7 919 23
	lw	a0,-44(s0)
	call	mbedtls_md_type_from_psa_alg
	mv	a5,a0
	sb	a5,-29(s0)
.L142:
	.loc 7 922 26
	lw	a5,-44(s0)
	andi	a4,a5,-256
	.loc 7 922 12
	li	a5,117440512
	addi	a5,a5,768
	beq	a4,a5,.L143
	.loc 7 922 113 discriminator 1
	lw	a5,-44(s0)
	andi	a4,a5,-256
	.loc 7 922 96 discriminator 1
	li	a5,100663296
	addi	a5,a5,768
	beq	a4,a5,.L143
	.loc 7 922 199 discriminator 2
	lw	a5,-44(s0)
	andi	a4,a5,-256
	.loc 7 922 183 discriminator 2
	li	a5,100667392
	addi	a5,a5,768
	bne	a4,a5,.L144
.L143:
	.loc 7 923 19
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,1656(a5)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_rsa
	mv	a4,a0
	.loc 7 923 19 is_stmt 0 discriminator 1
	lbu	a5,-29(s0)
	mv	a2,a5
	li	a1,1
	mv	a0,a4
	call	mbedtls_rsa_set_padding
	sw	a0,-28(s0)
	.loc 7 923 17 is_stmt 1
	nop
.LBE9:
	.loc 7 900 50
	j	.L161
.L144:
.LBB10:
	.loc 7 924 33
	lw	a5,-44(s0)
	andi	a4,a5,-256
	.loc 7 924 19
	li	a5,100663296
	addi	a5,a5,512
	beq	a4,a5,.L146
	.loc 7 924 103 discriminator 1
	lw	a4,-44(s0)
	li	a5,117440512
	addi	a5,a5,512
	bne	a4,a5,.L161
.L146:
	.loc 7 926 19
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,1656(a5)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_rsa
	mv	a4,a0
	.loc 7 926 19 is_stmt 0 discriminator 1
	lbu	a5,-29(s0)
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	mbedtls_rsa_set_padding
	sw	a0,-28(s0)
.LBE10:
	.loc 7 900 50 is_stmt 1
	j	.L161
.L136:
	.loc 7 934 22
	lhu	a5,-22(s0)
	andi	a4,a5,-256
	.loc 7 934 8
	li	a5,28672
	addi	a5,a5,256
	beq	a4,a5,.L148
	.loc 7 935 22
	lhu	a5,-22(s0)
	andi	a4,a5,-256
	.loc 7 934 82 discriminator 1
	li	a5,16384
	addi	a5,a5,256
	bne	a4,a5,.L149
.L148:
.LBB11:
	.loc 7 938 15
	li	a0,2
	call	mbedtls_pk_info_from_type
	mv	a4,a0
	.loc 7 938 15 is_stmt 0 discriminator 1
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a1,a4
	lw	a0,1656(a5)
	call	mbedtls_pk_setup
	sw	a0,-28(s0)
	.loc 7 939 12 is_stmt 1
	lw	a5,-28(s0)
	bne	a5,zero,.L162
	.loc 7 943 110
	lhu	a4,-22(s0)
	li	a5,-12288
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 7 943 18
	li	a5,16384
	addi	a5,a5,256
	bne	a4,a5,.L151
	.loc 7 943 18 is_stmt 0 discriminator 1
	lhu	a5,-22(s0)
	andi	a5,a5,0xff
	j	.L152
.L151:
	.loc 7 943 18 discriminator 2
	li	a5,0
.L152:
	.loc 7 943 18 discriminator 4
	lw	a1,-36(s0)
	mv	a0,a5
	call	mbedtls_ecc_group_from_psa
	mv	a5,a0
	sb	a5,-37(s0)
	.loc 7 944 15 is_stmt 1
	lbu	a4,-37(s0)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a1,a4
	lw	a0,1656(a5)
	call	mbedtls_pk_ecc_set_group
	sw	a0,-28(s0)
	.loc 7 945 12
	lw	a5,-28(s0)
	bne	a5,zero,.L163
	.loc 7 949 26
	lhu	a5,-22(s0)
	andi	a4,a5,-256
	.loc 7 949 12
	li	a5,28672
	addi	a5,a5,256
	bne	a4,a5,.L154
	.loc 7 950 19
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a3,1676(a5)
	li	a5,-4096
	addi	a5,a5,1680
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a3
	mv	a1,a4
	lw	a0,1656(a5)
	call	mbedtls_pk_ecc_set_key
	sw	a0,-28(s0)
	.loc 7 951 16
	lw	a5,-28(s0)
	bne	a5,zero,.L164
	.loc 7 954 19
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a2,1676(a5)
	li	a5,-4096
	addi	a5,a5,1680
	addi	a5,a5,-16
	add	a1,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,0
	lui	a3,%hi(mbedtls_psa_get_random)
	addi	a3,a3,%lo(mbedtls_psa_get_random)
	lw	a0,1656(a5)
	call	mbedtls_pk_ecc_set_pubkey_from_prv
	sw	a0,-28(s0)
.LBE11:
	.loc 7 935 83
	j	.L133
.L154:
.LBB12:
	.loc 7 958 19
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a3,1676(a5)
	li	a5,-4096
	addi	a5,a5,1680
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a3
	mv	a1,a4
	lw	a0,1656(a5)
	call	mbedtls_pk_ecc_set_pubkey
	sw	a0,-28(s0)
.LBE12:
	.loc 7 935 83
	j	.L133
.L149:
	.loc 7 967 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L158
.L159:
.LBB13:
	.loc 7 904 13
	nop
	j	.L133
.L160:
	.loc 7 913 13
	nop
	j	.L133
.L161:
.LBE13:
	.loc 7 900 50
	nop
	j	.L133
.L162:
.LBB14:
	.loc 7 940 13
	nop
	j	.L133
.L163:
	.loc 7 946 13
	nop
	j	.L133
.L164:
	.loc 7 952 17
	nop
.L133:
.LBE14:
	.loc 7 971 5
	addi	a5,s0,-68
	mv	a0,a5
	call	psa_reset_key_attributes
	.loc 7 972 5
	li	a5,-4096
	addi	a5,a5,1680
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,4096
	addi	a1,a5,-1733
	mv	a0,a4
	call	mbedtls_platform_zeroize
	.loc 7 974 12
	lw	a5,-28(s0)
.L158:
	.loc 7 975 1
	mv	a0,a5
	addi	sp,sp,432
	.cfi_def_cfa 2, 2032
	lw	ra,2028(sp)
	.cfi_restore 1
	lw	s0,2024(sp)
	.cfi_restore 8
	addi	sp,sp,2032
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE88:
	.size	copy_from_psa, .-copy_from_psa
	.section	.text.mbedtls_pk_copy_from_psa,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_copy_from_psa
	.type	mbedtls_pk_copy_from_psa, @function
mbedtls_pk_copy_from_psa:
.LFB89:
	.loc 7 979 1
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
	.loc 7 980 12
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	copy_from_psa
	mv	a5,a0
	.loc 7 981 1
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
.LFE89:
	.size	mbedtls_pk_copy_from_psa, .-mbedtls_pk_copy_from_psa
	.section	.text.mbedtls_pk_copy_public_from_psa,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_copy_public_from_psa
	.type	mbedtls_pk_copy_public_from_psa, @function
mbedtls_pk_copy_public_from_psa:
.LFB90:
	.loc 7 985 1
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
	.loc 7 986 12
	li	a2,1
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	copy_from_psa
	mv	a5,a0
	.loc 7 987 1
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
.LFE90:
	.size	mbedtls_pk_copy_public_from_psa, .-mbedtls_pk_copy_public_from_psa
	.section	.text.pk_hashlen_helper,"ax",@progbits
	.align	1
	.type	pk_hashlen_helper, @function
pk_hashlen_helper:
.LFB91:
	.loc 7 994 1
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
	.loc 7 995 9
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 7 995 8
	beq	a5,zero,.L170
	.loc 7 996 16
	li	a5,0
	j	.L171
.L170:
	.loc 7 999 17
	lbu	a5,-17(s0)
	mv	a0,a5
	call	mbedtls_md_get_size_from_type
	mv	a5,a0
	.loc 7 999 17 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 7 999 15 is_stmt 1 discriminator 1
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 7 1001 9
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 7 1001 8
	bne	a5,zero,.L172
	.loc 7 1002 16
	li	a5,-1
	j	.L171
.L172:
	.loc 7 1005 12
	li	a5,0
.L171:
	.loc 7 1006 1
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
.LFE91:
	.size	pk_hashlen_helper, .-pk_hashlen_helper
	.section	.text.pk_restart_setup,"ax",@progbits
	.align	1
	.type	pk_restart_setup, @function
pk_restart_setup:
.LFB92:
	.loc 7 1014 1
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
	.loc 7 1016 8
	lw	a5,-20(s0)
	beq	a5,zero,.L174
	.loc 7 1016 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 1016 20 discriminator 1
	beq	a5,zero,.L175
.L174:
	.loc 7 1017 16
	li	a5,0
	j	.L176
.L175:
	.loc 7 1021 13
	lw	a5,-24(s0)
	lw	a5,52(a5)
	.loc 7 1021 8
	beq	a5,zero,.L177
	.loc 7 1021 43 discriminator 1
	lw	a5,-24(s0)
	lw	a5,56(a5)
	.loc 7 1021 36 discriminator 1
	bne	a5,zero,.L178
.L177:
	.loc 7 1022 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L176
.L178:
	.loc 7 1025 28
	lw	a5,-24(s0)
	lw	a5,52(a5)
	.loc 7 1025 24
	jalr	a5
.LVL4:
	mv	a4,a0
	.loc 7 1025 22 discriminator 1
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 7 1025 13 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 7 1025 8 discriminator 1
	bne	a5,zero,.L179
	.loc 7 1026 16
	li	a5,-16384
	addi	a5,a5,128
	j	.L176
.L179:
	.loc 7 1029 18
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 7 1031 12
	li	a5,0
.L176:
	.loc 7 1032 1
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
.LFE92:
	.size	pk_restart_setup, .-pk_restart_setup
	.section	.text.mbedtls_pk_verify_restartable,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_verify_restartable
	.type	mbedtls_pk_verify_restartable, @function
mbedtls_pk_verify_restartable:
.LFB93:
	.loc 7 1043 1
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
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 7 1044 8
	lbu	a5,-37(s0)
	bne	a5,zero,.L181
	.loc 7 1044 48 discriminator 2
	lw	a5,-48(s0)
	.loc 7 1044 36 discriminator 2
	beq	a5,zero,.L182
.L181:
	.loc 7 1044 54 discriminator 3
	lw	a5,-44(s0)
	bne	a5,zero,.L182
	.loc 7 1045 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L183
.L182:
	.loc 7 1048 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 7 1048 8
	beq	a5,zero,.L184
	.loc 7 1049 9
	addi	a4,s0,-48
	lbu	a5,-37(s0)
	mv	a1,a4
	mv	a0,a5
	call	pk_hashlen_helper
	mv	a5,a0
	.loc 7 1048 29 discriminator 1
	beq	a5,zero,.L185
.L184:
	.loc 7 1050 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L183
.L185:
	.loc 7 1055 8
	lw	a5,-60(s0)
	beq	a5,zero,.L186
	.loc 7 1056 9
	call	mbedtls_ecp_restart_is_enabled
	mv	a5,a0
	.loc 7 1055 23 discriminator 1
	beq	a5,zero,.L186
	.loc 7 1057 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 7 1057 21
	lw	a5,24(a5)
	.loc 7 1056 42
	beq	a5,zero,.L186
.LBB15:
	.loc 7 1058 13
	li	a5,-110
	sw	a5,-20(s0)
	.loc 7 1060 20
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-60(s0)
	call	pk_restart_setup
	sw	a0,-20(s0)
	.loc 7 1060 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L187
	.loc 7 1061 20
	lw	a5,-20(s0)
	j	.L183
.L187:
	.loc 7 1064 18
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 7 1064 27
	lw	a7,24(a5)
	.loc 7 1064 15
	lw	a3,-48(s0)
	lw	a5,-60(s0)
	lw	a5,4(a5)
	lbu	a1,-37(s0)
	mv	a6,a5
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a2,-44(s0)
	lw	a0,-36(s0)
	jalr	a7
.LVL5:
	sw	a0,-20(s0)
	.loc 7 1067 12
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1280
	beq	a4,a5,.L188
	.loc 7 1068 13
	lw	a0,-60(s0)
	call	mbedtls_pk_restart_free
.L188:
	.loc 7 1071 16
	lw	a5,-20(s0)
	j	.L183
.L186:
.LBE15:
	.loc 7 1077 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 7 1077 21
	lw	a5,16(a5)
	.loc 7 1077 8
	bne	a5,zero,.L189
	.loc 7 1078 16
	li	a5,-16384
	addi	a5,a5,256
	j	.L183
.L189:
	.loc 7 1081 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 7 1081 24
	lw	a6,16(a5)
	.loc 7 1081 12
	lw	a3,-48(s0)
	lbu	a1,-37(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a2,-44(s0)
	lw	a0,-36(s0)
	jalr	a6
.LVL6:
	mv	a5,a0
.L183:
	.loc 7 1083 1
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
.LFE93:
	.size	mbedtls_pk_verify_restartable, .-mbedtls_pk_verify_restartable
	.section	.text.mbedtls_pk_verify,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_verify
	.type	mbedtls_pk_verify, @function
mbedtls_pk_verify:
.LFB94:
	.loc 7 1091 1
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
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 7 1092 12
	lbu	a1,-21(s0)
	li	a6,0
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a0,-20(s0)
	call	mbedtls_pk_verify_restartable
	mv	a5,a0
	.loc 7 1094 1
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
	.size	mbedtls_pk_verify, .-mbedtls_pk_verify
	.section	.text.mbedtls_pk_verify_ext,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_verify_ext
	.type	mbedtls_pk_verify_ext, @function
mbedtls_pk_verify_ext:
.LFB95:
	.loc 7 1103 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a4,-48(s0)
	sw	a5,-52(s0)
	sw	a6,-56(s0)
	sw	a7,-60(s0)
	mv	a5,a0
	sb	a5,-33(s0)
	mv	a5,a3
	sb	a5,-34(s0)
	.loc 7 1104 8
	lbu	a5,-34(s0)
	bne	a5,zero,.L193
	.loc 7 1104 36 discriminator 2
	lw	a5,-52(s0)
	beq	a5,zero,.L194
.L193:
	.loc 7 1104 54 discriminator 3
	lw	a5,-48(s0)
	bne	a5,zero,.L194
	.loc 7 1105 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L195
.L194:
	.loc 7 1108 12
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 7 1108 8
	bne	a5,zero,.L196
	.loc 7 1109 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L195
.L196:
	.loc 7 1112 10
	lbu	a5,-33(s0)
	mv	a1,a5
	lw	a0,-44(s0)
	call	mbedtls_pk_can_do
	mv	a5,a0
	.loc 7 1112 8 discriminator 1
	bne	a5,zero,.L197
	.loc 7 1113 16
	li	a5,-16384
	addi	a5,a5,256
	j	.L195
.L197:
	.loc 7 1116 8
	lbu	a4,-33(s0)
	li	a5,6
	beq	a4,a5,.L198
	.loc 7 1118 12
	lw	a5,-40(s0)
	beq	a5,zero,.L199
	.loc 7 1119 20
	li	a5,-16384
	addi	a5,a5,384
	j	.L195
.L199:
	.loc 7 1122 16
	lbu	a1,-34(s0)
	lw	a5,-60(s0)
	lw	a4,-56(s0)
	lw	a3,-52(s0)
	lw	a2,-48(s0)
	lw	a0,-44(s0)
	call	mbedtls_pk_verify
	mv	a5,a0
	j	.L195
.L198:
	.loc 7 1127 9
	lw	a0,-44(s0)
	call	mbedtls_pk_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 7 1127 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L200
	.loc 7 1128 16
	li	a5,-16384
	addi	a5,a5,1664
	j	.L195
.L200:
	.loc 7 1132 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 7 1141 8
	lw	a5,-40(s0)
	bne	a5,zero,.L201
	.loc 7 1142 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L195
.L201:
	.loc 7 1145 14
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 7 1202 23
	lw	a0,-44(s0)
	call	mbedtls_pk_get_len
	mv	a4,a0
	.loc 7 1202 12 discriminator 1
	lw	a5,-60(s0)
	bgeu	a5,a4,.L202
	.loc 7 1203 20
	li	a5,-16384
	addi	a5,a5,-896
	j	.L195
.L202:
	.loc 7 1206 15
	lw	a5,-44(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_rsa
	.loc 7 1208 57
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	.loc 7 1209 57
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 7 1206 15
	lbu	a1,-34(s0)
	lw	a6,-56(s0)
	lw	a3,-48(s0)
	lw	a2,-52(s0)
	call	mbedtls_rsa_rsassa_pss_verify_ext
	sw	a0,-20(s0)
	.loc 7 1211 12
	lw	a5,-20(s0)
	beq	a5,zero,.L203
	.loc 7 1212 20
	lw	a5,-20(s0)
	j	.L195
.L203:
	.loc 7 1215 23
	lw	a0,-44(s0)
	call	mbedtls_pk_get_len
	mv	a4,a0
	.loc 7 1215 12 discriminator 1
	lw	a5,-60(s0)
	bleu	a5,a4,.L204
	.loc 7 1216 20
	li	a5,-16384
	addi	a5,a5,1792
	j	.L195
.L204:
	.loc 7 1219 16
	li	a5,0
.L195:
	.loc 7 1224 1
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
.LFE95:
	.size	mbedtls_pk_verify_ext, .-mbedtls_pk_verify_ext
	.section	.text.mbedtls_pk_sign_restartable,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_sign_restartable
	.type	mbedtls_pk_sign_restartable, @function
mbedtls_pk_sign_restartable:
.LFB96:
	.loc 7 1235 1
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
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	a7,-64(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 7 1236 8
	lbu	a5,-37(s0)
	bne	a5,zero,.L206
	.loc 7 1236 48 discriminator 2
	lw	a5,-48(s0)
	.loc 7 1236 36 discriminator 2
	beq	a5,zero,.L207
.L206:
	.loc 7 1236 54 discriminator 3
	lw	a5,-44(s0)
	bne	a5,zero,.L207
	.loc 7 1237 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L208
.L207:
	.loc 7 1240 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 7 1240 8
	beq	a5,zero,.L209
	.loc 7 1240 32 discriminator 1
	addi	a4,s0,-48
	lbu	a5,-37(s0)
	mv	a1,a4
	mv	a0,a5
	call	pk_hashlen_helper
	mv	a5,a0
	.loc 7 1240 29 discriminator 2
	beq	a5,zero,.L210
.L209:
	.loc 7 1241 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L208
.L210:
	.loc 7 1246 8
	lw	a5,4(s0)
	beq	a5,zero,.L211
	.loc 7 1247 9
	call	mbedtls_ecp_restart_is_enabled
	mv	a5,a0
	.loc 7 1246 23 discriminator 1
	beq	a5,zero,.L211
	.loc 7 1248 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 7 1248 21
	lw	a5,28(a5)
	.loc 7 1247 42
	beq	a5,zero,.L211
.LBB16:
	.loc 7 1249 13
	li	a5,-110
	sw	a5,-20(s0)
	.loc 7 1251 20
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,4(s0)
	call	pk_restart_setup
	sw	a0,-20(s0)
	.loc 7 1251 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L212
	.loc 7 1252 20
	lw	a5,-20(s0)
	j	.L208
.L212:
	.loc 7 1255 18
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 7 1255 27
	lw	t1,28(a5)
	.loc 7 1255 15
	lw	a3,-48(s0)
	lw	a5,4(s0)
	lw	a5,4(a5)
	lbu	a1,-37(s0)
	sw	a5,4(sp)
	lw	a5,0(s0)
	sw	a5,0(sp)
	lw	a7,-64(s0)
	lw	a6,-60(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a2,-44(s0)
	lw	a0,-36(s0)
	jalr	t1
.LVL7:
	sw	a0,-20(s0)
	.loc 7 1260 12
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1280
	beq	a4,a5,.L213
	.loc 7 1261 13
	lw	a0,4(s0)
	call	mbedtls_pk_restart_free
.L213:
	.loc 7 1264 16
	lw	a5,-20(s0)
	j	.L208
.L211:
.LBE16:
	.loc 7 1270 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 7 1270 21
	lw	a5,20(a5)
	.loc 7 1270 8
	bne	a5,zero,.L214
	.loc 7 1271 16
	li	a5,-16384
	addi	a5,a5,256
	j	.L208
.L214:
	.loc 7 1274 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 7 1274 24
	lw	t1,20(a5)
	.loc 7 1274 12
	lw	a3,-48(s0)
	lbu	a1,-37(s0)
	lw	a5,0(s0)
	sw	a5,0(sp)
	lw	a7,-64(s0)
	lw	a6,-60(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a2,-44(s0)
	lw	a0,-36(s0)
	jalr	t1
.LVL8:
	mv	a5,a0
.L208:
	.loc 7 1278 1
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
	.size	mbedtls_pk_sign_restartable, .-mbedtls_pk_sign_restartable
	.section	.text.mbedtls_pk_sign,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_sign
	.type	mbedtls_pk_sign, @function
mbedtls_pk_sign:
.LFB97:
	.loc 7 1287 1
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
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	sw	a7,-48(s0)
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 7 1288 12
	lbu	a1,-21(s0)
	sw	zero,4(sp)
	lw	a5,0(s0)
	sw	a5,0(sp)
	lw	a7,-48(s0)
	lw	a6,-44(s0)
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a0,-20(s0)
	call	mbedtls_pk_sign_restartable
	mv	a5,a0
	.loc 7 1291 1
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
.LFE97:
	.size	mbedtls_pk_sign, .-mbedtls_pk_sign
	.section	.text.mbedtls_pk_sign_ext,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_sign_ext
	.type	mbedtls_pk_sign_ext, @function
mbedtls_pk_sign_ext:
.LFB98:
	.loc 7 1303 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a1,-40(s0)
	sw	a3,-44(s0)
	sw	a4,-48(s0)
	sw	a5,-52(s0)
	sw	a6,-56(s0)
	sw	a7,-60(s0)
	mv	a5,a0
	sb	a5,-33(s0)
	mv	a5,a2
	sb	a5,-34(s0)
	.loc 7 1304 12
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 7 1304 8
	bne	a5,zero,.L218
	.loc 7 1305 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L219
.L218:
	.loc 7 1308 10
	lbu	a5,-33(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	mbedtls_pk_can_do
	mv	a5,a0
	.loc 7 1308 8 discriminator 1
	bne	a5,zero,.L220
	.loc 7 1309 16
	li	a5,-16384
	addi	a5,a5,256
	j	.L219
.L220:
	.loc 7 1312 8
	lbu	a4,-33(s0)
	li	a5,6
	beq	a4,a5,.L221
	.loc 7 1313 16
	lw	a3,-48(s0)
	lbu	a1,-34(s0)
	lw	a5,4(s0)
	sw	a5,0(sp)
	lw	a7,0(s0)
	lw	a6,-60(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a2,-44(s0)
	lw	a0,-40(s0)
	call	mbedtls_pk_sign
	mv	a5,a0
	j	.L219
.L221:
	.loc 7 1347 20
	lw	a0,-40(s0)
	call	mbedtls_pk_get_len
	mv	a4,a0
	.loc 7 1347 8 discriminator 1
	lw	a5,-56(s0)
	bgeu	a5,a4,.L222
	.loc 7 1348 16
	li	a5,-16384
	addi	a5,a5,1920
	j	.L219
.L222:
	.loc 7 1351 9
	addi	a4,s0,-48
	lbu	a5,-34(s0)
	mv	a1,a4
	mv	a0,a5
	call	pk_hashlen_helper
	mv	a5,a0
	.loc 7 1351 8 discriminator 1
	beq	a5,zero,.L223
	.loc 7 1352 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L219
.L223:
	.loc 7 1355 42
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_rsa
	sw	a0,-20(s0)
	.loc 7 1357 21
	lw	a4,-48(s0)
	lbu	a3,-34(s0)
	lw	a6,-52(s0)
	lw	a5,-44(s0)
	lw	a2,4(s0)
	lw	a1,0(s0)
	lw	a0,-20(s0)
	call	mbedtls_rsa_rsassa_pss_sign_no_mode_check
	sw	a0,-24(s0)
	.loc 7 1359 8
	lw	a5,-24(s0)
	bne	a5,zero,.L224
	.loc 7 1360 27
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 7 1360 18
	lw	a5,-60(s0)
	sw	a4,0(a5)
.L224:
	.loc 7 1362 12
	lw	a5,-24(s0)
.L219:
	.loc 7 1369 1
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
.LFE98:
	.size	mbedtls_pk_sign_ext, .-mbedtls_pk_sign_ext
	.section	.text.mbedtls_pk_decrypt,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_decrypt
	.type	mbedtls_pk_decrypt, @function
mbedtls_pk_decrypt:
.LFB99:
	.loc 7 1378 1
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
	sw	a6,-44(s0)
	sw	a7,-48(s0)
	.loc 7 1379 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 1379 8
	bne	a5,zero,.L226
	.loc 7 1380 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L227
.L226:
	.loc 7 1383 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 1383 21
	lw	a5,32(a5)
	.loc 7 1383 8
	bne	a5,zero,.L228
	.loc 7 1384 16
	li	a5,-16384
	addi	a5,a5,256
	j	.L227
.L228:
	.loc 7 1387 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 1387 24
	lw	t1,32(a5)
	.loc 7 1387 12
	lw	a7,-48(s0)
	lw	a6,-44(s0)
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	jalr	t1
.LVL9:
	mv	a5,a0
.L227:
	.loc 7 1389 1
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
.LFE99:
	.size	mbedtls_pk_decrypt, .-mbedtls_pk_decrypt
	.section	.text.mbedtls_pk_encrypt,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_encrypt
	.type	mbedtls_pk_encrypt, @function
mbedtls_pk_encrypt:
.LFB100:
	.loc 7 1398 1
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
	sw	a6,-44(s0)
	sw	a7,-48(s0)
	.loc 7 1399 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 1399 8
	bne	a5,zero,.L230
	.loc 7 1400 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L231
.L230:
	.loc 7 1403 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 1403 21
	lw	a5,36(a5)
	.loc 7 1403 8
	bne	a5,zero,.L232
	.loc 7 1404 16
	li	a5,-16384
	addi	a5,a5,256
	j	.L231
.L232:
	.loc 7 1407 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 1407 24
	lw	t1,36(a5)
	.loc 7 1407 12
	lw	a7,-48(s0)
	lw	a6,-44(s0)
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	jalr	t1
.LVL10:
	mv	a5,a0
.L231:
	.loc 7 1409 1
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
.LFE100:
	.size	mbedtls_pk_encrypt, .-mbedtls_pk_encrypt
	.section	.text.mbedtls_pk_check_pair,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_check_pair
	.type	mbedtls_pk_check_pair, @function
mbedtls_pk_check_pair:
.LFB101:
	.loc 7 1418 1
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
	.loc 7 1419 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 1419 8
	beq	a5,zero,.L234
	.loc 7 1420 12
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 7 1419 29 discriminator 1
	bne	a5,zero,.L235
.L234:
	.loc 7 1421 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L236
.L235:
	.loc 7 1424 8
	lw	a5,-28(s0)
	bne	a5,zero,.L237
	.loc 7 1425 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L236
.L237:
	.loc 7 1428 12
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 7 1428 21
	lw	a5,40(a5)
	.loc 7 1428 8
	bne	a5,zero,.L238
	.loc 7 1429 16
	li	a5,-16384
	addi	a5,a5,1664
	j	.L236
.L238:
	.loc 7 1432 12
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 7 1432 21
	lbu	a4,0(a5)
	.loc 7 1432 8
	li	a5,5
	bne	a4,a5,.L239
	.loc 7 1433 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 1433 25
	lbu	a4,0(a5)
	.loc 7 1433 12
	li	a5,1
	beq	a4,a5,.L240
	.loc 7 1434 20
	li	a5,-16384
	addi	a5,a5,256
	j	.L236
.L239:
	.loc 7 1437 17
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 7 1437 26
	lbu	a4,0(a5)
	.loc 7 1437 12
	li	a5,7
	beq	a4,a5,.L240
	.loc 7 1438 17
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 7 1438 33
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 7 1437 55 discriminator 1
	beq	a4,a5,.L240
	.loc 7 1439 20
	li	a5,-16384
	addi	a5,a5,256
	j	.L236
.L240:
	.loc 7 1443 15
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 7 1443 24
	lw	a5,40(a5)
	.loc 7 1443 12
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	jalr	a5
.LVL11:
	mv	a5,a0
.L236:
	.loc 7 1446 1
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
.LFE101:
	.size	mbedtls_pk_check_pair, .-mbedtls_pk_check_pair
	.section	.text.mbedtls_pk_get_bitlen,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_get_bitlen
	.type	mbedtls_pk_get_bitlen, @function
mbedtls_pk_get_bitlen:
.LFB102:
	.loc 7 1452 1
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
	.loc 7 1455 8
	lw	a5,-20(s0)
	beq	a5,zero,.L242
	.loc 7 1455 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 1455 20 discriminator 1
	bne	a5,zero,.L243
.L242:
	.loc 7 1456 16
	li	a5,0
	j	.L244
.L243:
	.loc 7 1459 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 1459 24
	lw	a5,8(a5)
	.loc 7 1459 12
	lw	a0,-20(s0)
	jalr	a5
.LVL12:
	mv	a5,a0
.L244:
	.loc 7 1460 1
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
	.size	mbedtls_pk_get_bitlen, .-mbedtls_pk_get_bitlen
	.section	.text.mbedtls_pk_debug,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_debug
	.type	mbedtls_pk_debug, @function
mbedtls_pk_debug:
.LFB103:
	.loc 7 1466 1
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
	.loc 7 1467 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 1467 8
	bne	a5,zero,.L246
	.loc 7 1468 16
	li	a5,-16384
	addi	a5,a5,384
	j	.L247
.L246:
	.loc 7 1471 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 1471 21
	lw	a5,60(a5)
	.loc 7 1471 8
	bne	a5,zero,.L248
	.loc 7 1472 16
	li	a5,-16384
	addi	a5,a5,256
	j	.L247
.L248:
	.loc 7 1475 8
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 1475 17
	lw	a5,60(a5)
	.loc 7 1475 5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	jalr	a5
.LVL13:
	.loc 7 1476 12
	li	a5,0
.L247:
	.loc 7 1477 1
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
	.size	mbedtls_pk_debug, .-mbedtls_pk_debug
	.section	.rodata
	.align	2
.LC0:
	.string	"invalid PK"
	.section	.text.mbedtls_pk_get_name,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_get_name
	.type	mbedtls_pk_get_name, @function
mbedtls_pk_get_name:
.LFB104:
	.loc 7 1483 1
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
	.loc 7 1484 8
	lw	a5,-20(s0)
	beq	a5,zero,.L250
	.loc 7 1484 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 1484 20 discriminator 1
	bne	a5,zero,.L251
.L250:
	.loc 7 1485 16
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	j	.L252
.L251:
	.loc 7 1488 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 1488 24
	lw	a5,4(a5)
.L252:
	.loc 7 1489 1
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
.LFE104:
	.size	mbedtls_pk_get_name, .-mbedtls_pk_get_name
	.section	.text.mbedtls_pk_get_type,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_get_type
	.type	mbedtls_pk_get_type, @function
mbedtls_pk_get_type:
.LFB105:
	.loc 7 1495 1
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
	.loc 7 1496 8
	lw	a5,-20(s0)
	beq	a5,zero,.L254
	.loc 7 1496 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 1496 20 discriminator 1
	bne	a5,zero,.L255
.L254:
	.loc 7 1497 16
	li	a5,0
	j	.L256
.L255:
	.loc 7 1500 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 7 1500 24
	lbu	a5,0(a5)
.L256:
	.loc 7 1501 1
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
.LFE105:
	.size	mbedtls_pk_get_type, .-mbedtls_pk_get_type
	.text
.Letext0:
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/rsa.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecp.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_types.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk_wrap.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/rsa_internal.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_util_internal.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1e0c
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x27
	.4byte	.LASF246
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL2
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xd
	.4byte	0x32
	.uleb128 0xe
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x28
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xd
	.4byte	0x68
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x8
	.byte	0xe5
	.byte	0x16
	.4byte	0x74
	.uleb128 0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x9
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x9
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0xd
	.4byte	0x9a
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x9
	.byte	0x31
	.byte	0x1c
	.4byte	0x45
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x9
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x29
	.byte	0x4
	.uleb128 0x3
	.4byte	0x32
	.uleb128 0xd
	.4byte	0xc5
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0xd
	.4byte	0xcf
	.uleb128 0x3
	.4byte	0xd6
	.uleb128 0x3
	.4byte	0xe5
	.uleb128 0x2a
	.uleb128 0xf
	.4byte	0x68
	.4byte	0xff
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x19
	.4byte	0x32
	.byte	0x1
	.byte	0x2f
	.4byte	0x153
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0xa
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0xb
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x11
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x12
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x1
	.byte	0x3c
	.byte	0x3
	.4byte	0xff
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x1
	.byte	0x6b
	.byte	0x22
	.4byte	0x170
	.uleb128 0xd
	.4byte	0x15f
	.uleb128 0x2b
	.4byte	.LASF31
	.uleb128 0x3
	.4byte	0x16b
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0xa
	.byte	0xaa
	.byte	0x12
	.4byte	0xb7
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x8
	.byte	0xa
	.byte	0xd0
	.byte	0x10
	.4byte	0x1b5
	.uleb128 0x8
	.string	"p"
	.byte	0xa
	.byte	0xd5
	.byte	0x17
	.4byte	0x1b5
	.byte	0
	.uleb128 0x8
	.string	"s"
	.byte	0xa
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x8
	.string	"n"
	.byte	0xa
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	0x17a
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0xa
	.byte	0xf0
	.byte	0x1
	.4byte	0x186
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x78
	.byte	0xb
	.byte	0x55
	.byte	0x10
	.4byte	0x29f
	.uleb128 0x8
	.string	"ver"
	.byte	0xb
	.byte	0x56
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x8
	.string	"len"
	.byte	0xb
	.byte	0x5a
	.byte	0xc
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x8
	.string	"N"
	.byte	0xb
	.byte	0x5c
	.byte	0x11
	.4byte	0x1ba
	.byte	0x8
	.uleb128 0x8
	.string	"E"
	.byte	0xb
	.byte	0x5d
	.byte	0x11
	.4byte	0x1ba
	.byte	0x10
	.uleb128 0x8
	.string	"D"
	.byte	0xb
	.byte	0x5f
	.byte	0x11
	.4byte	0x1ba
	.byte	0x18
	.uleb128 0x8
	.string	"P"
	.byte	0xb
	.byte	0x60
	.byte	0x11
	.4byte	0x1ba
	.byte	0x20
	.uleb128 0x8
	.string	"Q"
	.byte	0xb
	.byte	0x61
	.byte	0x11
	.4byte	0x1ba
	.byte	0x28
	.uleb128 0x8
	.string	"DP"
	.byte	0xb
	.byte	0x63
	.byte	0x11
	.4byte	0x1ba
	.byte	0x30
	.uleb128 0x8
	.string	"DQ"
	.byte	0xb
	.byte	0x64
	.byte	0x11
	.4byte	0x1ba
	.byte	0x38
	.uleb128 0x8
	.string	"QP"
	.byte	0xb
	.byte	0x65
	.byte	0x11
	.4byte	0x1ba
	.byte	0x40
	.uleb128 0x8
	.string	"RN"
	.byte	0xb
	.byte	0x67
	.byte	0x11
	.4byte	0x1ba
	.byte	0x48
	.uleb128 0x8
	.string	"RP"
	.byte	0xb
	.byte	0x69
	.byte	0x11
	.4byte	0x1ba
	.byte	0x50
	.uleb128 0x8
	.string	"RQ"
	.byte	0xb
	.byte	0x6a
	.byte	0x11
	.4byte	0x1ba
	.byte	0x58
	.uleb128 0x8
	.string	"Vi"
	.byte	0xb
	.byte	0x6c
	.byte	0x11
	.4byte	0x1ba
	.byte	0x60
	.uleb128 0x8
	.string	"Vf"
	.byte	0xb
	.byte	0x6d
	.byte	0x11
	.4byte	0x1ba
	.byte	0x68
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0xb
	.byte	0x6f
	.byte	0x9
	.4byte	0x68
	.byte	0x70
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0xb
	.byte	0x72
	.byte	0x9
	.4byte	0x68
	.byte	0x74
	.byte	0
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0xb
	.byte	0x7b
	.byte	0x1
	.4byte	0x1c6
	.uleb128 0xd
	.4byte	0x29f
	.uleb128 0x19
	.4byte	0x32
	.byte	0xc
	.byte	0x66
	.4byte	0x310
	.uleb128 0x5
	.4byte	.LASF37
	.byte	0
	.uleb128 0x5
	.4byte	.LASF38
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF39
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF40
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF41
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF43
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF45
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF46
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF47
	.byte	0xa
	.uleb128 0x5
	.4byte	.LASF48
	.byte	0xb
	.uleb128 0x5
	.4byte	.LASF49
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF50
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0xc
	.byte	0x75
	.byte	0x3
	.4byte	0x2b0
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x18
	.byte	0xc
	.byte	0x9e
	.byte	0x10
	.4byte	0x34b
	.uleb128 0x8
	.string	"X"
	.byte	0xc
	.byte	0x9f
	.byte	0x11
	.4byte	0x1ba
	.byte	0
	.uleb128 0x8
	.string	"Y"
	.byte	0xc
	.byte	0xa0
	.byte	0x11
	.4byte	0x1ba
	.byte	0x8
	.uleb128 0x8
	.string	"Z"
	.byte	0xc
	.byte	0xa1
	.byte	0x11
	.4byte	0x1ba
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0xc
	.byte	0xa3
	.byte	0x1
	.4byte	0x31c
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x60
	.byte	0xc
	.byte	0xe9
	.byte	0x10
	.4byte	0x41c
	.uleb128 0x8
	.string	"id"
	.byte	0xc
	.byte	0xea
	.byte	0x1a
	.4byte	0x310
	.byte	0
	.uleb128 0x8
	.string	"P"
	.byte	0xc
	.byte	0xeb
	.byte	0x11
	.4byte	0x1ba
	.byte	0x4
	.uleb128 0x8
	.string	"A"
	.byte	0xc
	.byte	0xec
	.byte	0x11
	.4byte	0x1ba
	.byte	0xc
	.uleb128 0x8
	.string	"B"
	.byte	0xc
	.byte	0xf1
	.byte	0x11
	.4byte	0x1ba
	.byte	0x14
	.uleb128 0x8
	.string	"G"
	.byte	0xc
	.byte	0xf3
	.byte	0x17
	.4byte	0x34b
	.byte	0x1c
	.uleb128 0x8
	.string	"N"
	.byte	0xc
	.byte	0xf4
	.byte	0x11
	.4byte	0x1ba
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0xc
	.byte	0xf5
	.byte	0xc
	.4byte	0x7b
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0xc
	.byte	0xf6
	.byte	0xc
	.4byte	0x7b
	.byte	0x40
	.uleb128 0x8
	.string	"h"
	.byte	0xc
	.byte	0xfb
	.byte	0x12
	.4byte	0x74
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0xc
	.byte	0xfc
	.byte	0xa
	.4byte	0x430
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0xc
	.byte	0xfe
	.byte	0xa
	.4byte	0x44e
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0xc
	.byte	0xff
	.byte	0xa
	.4byte	0x44e
	.byte	0x50
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0xc
	.2byte	0x100
	.byte	0xb
	.4byte	0xc3
	.byte	0x54
	.uleb128 0x17
	.string	"T"
	.byte	0xc
	.2byte	0x101
	.byte	0x18
	.4byte	0x449
	.byte	0x58
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0xc
	.2byte	0x102
	.byte	0xc
	.4byte	0x7b
	.byte	0x5c
	.byte	0
	.uleb128 0xf
	.4byte	0x68
	.4byte	0x42b
	.uleb128 0x1
	.4byte	0x42b
	.byte	0
	.uleb128 0x3
	.4byte	0x1ba
	.uleb128 0x3
	.4byte	0x41c
	.uleb128 0xf
	.4byte	0x68
	.4byte	0x449
	.uleb128 0x1
	.4byte	0x449
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x3
	.4byte	0x34b
	.uleb128 0x3
	.4byte	0x435
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0xc
	.2byte	0x104
	.byte	0x1
	.4byte	0x357
	.uleb128 0x1c
	.4byte	.LASF61
	.byte	0x80
	.byte	0xc
	.2byte	0x1ac
	.byte	0x10
	.4byte	0x495
	.uleb128 0x17
	.string	"grp"
	.byte	0xc
	.2byte	0x1ad
	.byte	0x17
	.4byte	0x453
	.byte	0
	.uleb128 0x17
	.string	"d"
	.byte	0xc
	.2byte	0x1ae
	.byte	0x11
	.4byte	0x1ba
	.byte	0x60
	.uleb128 0x17
	.string	"Q"
	.byte	0xc
	.2byte	0x1af
	.byte	0x17
	.4byte	0x34b
	.byte	0x68
	.byte	0
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0xc
	.2byte	0x1b1
	.byte	0x1
	.4byte	0x460
	.uleb128 0xd
	.4byte	0x495
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0xd
	.byte	0x3b
	.byte	0x11
	.4byte	0x8e
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0xd
	.byte	0x4e
	.byte	0x12
	.4byte	0xab
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0xd
	.byte	0x61
	.byte	0x11
	.4byte	0x9a
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0xd
	.byte	0x86
	.byte	0x12
	.4byte	0xb7
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0xd
	.byte	0xb7
	.byte	0x12
	.4byte	0xb7
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0xd
	.2byte	0x113
	.byte	0x12
	.4byte	0xb7
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0xd
	.2byte	0x124
	.byte	0x16
	.4byte	0x4e3
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0xd
	.2byte	0x143
	.byte	0x12
	.4byte	0xb7
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0xd
	.2byte	0x1b0
	.byte	0x25
	.4byte	0x51c
	.uleb128 0xd
	.4byte	0x50a
	.uleb128 0x1c
	.4byte	.LASF71
	.byte	0x18
	.byte	0x2
	.2byte	0x127
	.byte	0x8
	.4byte	0x570
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x2
	.2byte	0x12c
	.byte	0x14
	.4byte	0x4b3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x2
	.2byte	0x12d
	.byte	0x14
	.4byte	0x5c0
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x12e
	.byte	0x18
	.4byte	0x4d7
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x12f
	.byte	0x16
	.4byte	0x5b3
	.byte	0x8
	.uleb128 0x17
	.string	"id"
	.byte	0x2
	.2byte	0x13b
	.byte	0x1a
	.4byte	0x4f0
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x9a
	.uleb128 0x1c
	.4byte	.LASF76
	.byte	0xc
	.byte	0x2
	.2byte	0x10c
	.byte	0x8
	.4byte	0x5b3
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x10d
	.byte	0x15
	.4byte	0x4fd
	.byte	0
	.uleb128 0x17
	.string	"alg"
	.byte	0x2
	.2byte	0x10e
	.byte	0x15
	.4byte	0x4cb
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x10f
	.byte	0x15
	.4byte	0x4cb
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x111
	.byte	0x21
	.4byte	0x57a
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x11c
	.byte	0x12
	.4byte	0xab
	.uleb128 0x19
	.4byte	0x32
	.byte	0x4
	.byte	0x49
	.4byte	0x609
	.uleb128 0x5
	.4byte	.LASF81
	.byte	0
	.uleb128 0x5
	.4byte	.LASF82
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF83
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF84
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF85
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF87
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF88
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x4
	.byte	0x52
	.byte	0x3
	.4byte	0x5cd
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0x8
	.byte	0x4
	.byte	0x58
	.byte	0x10
	.4byte	0x63d
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x4
	.byte	0x61
	.byte	0x17
	.4byte	0x153
	.byte	0
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x4
	.byte	0x6a
	.byte	0x9
	.4byte	0x68
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x4
	.byte	0x6c
	.byte	0x3
	.4byte	0x615
	.uleb128 0xd
	.4byte	0x63d
	.uleb128 0x19
	.4byte	0x32
	.byte	0x4
	.byte	0xbb
	.4byte	0x672
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0
	.uleb128 0x5
	.4byte	.LASF94
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF95
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF96
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x4
	.byte	0xc0
	.byte	0x3
	.4byte	0x64e
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0xc
	.byte	0x4
	.byte	0xc5
	.byte	0x10
	.4byte	0x6b3
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x4
	.byte	0xc6
	.byte	0x1b
	.4byte	0x672
	.byte	0
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0x4
	.byte	0xc7
	.byte	0x11
	.4byte	0xdb
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0x4
	.byte	0xc8
	.byte	0xb
	.4byte	0xc3
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x4
	.byte	0xc9
	.byte	0x3
	.4byte	0x67e
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x4
	.byte	0xd5
	.byte	0x22
	.4byte	0x6d0
	.uleb128 0xd
	.4byte	0x6bf
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0x40
	.byte	0xe
	.byte	0x16
	.byte	0x8
	.4byte	0x7ae
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0xe
	.byte	0x18
	.byte	0x17
	.4byte	0x609
	.byte	0
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0xe
	.byte	0x1b
	.byte	0x11
	.4byte	0xdb
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF102
	.byte	0xe
	.byte	0x1e
	.byte	0xe
	.4byte	0x835
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF103
	.byte	0xe
	.byte	0x21
	.byte	0xb
	.4byte	0x849
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF104
	.byte	0xe
	.byte	0x24
	.byte	0xb
	.4byte	0x87b
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0xe
	.byte	0x29
	.byte	0xb
	.4byte	0x8bc
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF106
	.byte	0xe
	.byte	0x31
	.byte	0xb
	.4byte	0x8ee
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF107
	.byte	0xe
	.byte	0x37
	.byte	0xb
	.4byte	0x92f
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF108
	.byte	0xe
	.byte	0x3f
	.byte	0xb
	.4byte	0x966
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF109
	.byte	0xe
	.byte	0x45
	.byte	0xb
	.4byte	0x966
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF110
	.byte	0xe
	.byte	0x4b
	.byte	0xb
	.4byte	0x989
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF111
	.byte	0xe
	.byte	0x50
	.byte	0xe
	.4byte	0x993
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF112
	.byte	0xe
	.byte	0x53
	.byte	0xc
	.4byte	0x9a3
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF113
	.byte	0xe
	.byte	0x57
	.byte	0xd
	.4byte	0x993
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF114
	.byte	0xe
	.byte	0x5a
	.byte	0xc
	.4byte	0x9a3
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF115
	.byte	0xe
	.byte	0x5e
	.byte	0xc
	.4byte	0x9bd
	.byte	0x3c
	.byte	0
	.uleb128 0x12
	.4byte	.LASF116
	.byte	0x8
	.byte	0x4
	.byte	0xdc
	.byte	0x10
	.4byte	0x7d6
	.uleb128 0x7
	.4byte	.LASF117
	.byte	0x4
	.byte	0xdd
	.byte	0x1e
	.4byte	0x7d6
	.byte	0
	.uleb128 0x7
	.4byte	.LASF118
	.byte	0x4
	.byte	0xde
	.byte	0xb
	.4byte	0xc3
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	0x6cb
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0x4
	.2byte	0x109
	.byte	0x3
	.4byte	0x7ae
	.uleb128 0xd
	.4byte	0x7db
	.uleb128 0x2c
	.byte	0x8
	.byte	0x4
	.2byte	0x10f
	.byte	0x9
	.4byte	0x814
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0x4
	.2byte	0x110
	.byte	0x1e
	.4byte	0x7d6
	.byte	0
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0x4
	.2byte	0x111
	.byte	0xb
	.4byte	0xc3
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0x4
	.2byte	0x112
	.byte	0x3
	.4byte	0x7ed
	.uleb128 0xf
	.4byte	0x7b
	.4byte	0x830
	.uleb128 0x1
	.4byte	0x830
	.byte	0
	.uleb128 0x3
	.4byte	0x7db
	.uleb128 0x3
	.4byte	0x821
	.uleb128 0xf
	.4byte	0x68
	.4byte	0x849
	.uleb128 0x1
	.4byte	0x609
	.byte	0
	.uleb128 0x3
	.4byte	0x83a
	.uleb128 0xf
	.4byte	0x68
	.4byte	0x876
	.uleb128 0x1
	.4byte	0x830
	.uleb128 0x1
	.4byte	0x153
	.uleb128 0x1
	.4byte	0x876
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x876
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x3
	.4byte	0x39
	.uleb128 0x3
	.4byte	0x84e
	.uleb128 0xf
	.4byte	0x68
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0x830
	.uleb128 0x1
	.4byte	0x153
	.uleb128 0x1
	.4byte	0x876
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x570
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x3
	.4byte	0xe6
	.uleb128 0x3
	.4byte	0x880
	.uleb128 0xf
	.4byte	0x68
	.4byte	0x8ee
	.uleb128 0x1
	.4byte	0x830
	.uleb128 0x1
	.4byte	0x153
	.uleb128 0x1
	.4byte	0x876
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x876
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x3
	.4byte	0x8c1
	.uleb128 0xf
	.4byte	0x68
	.4byte	0x92f
	.uleb128 0x1
	.4byte	0x830
	.uleb128 0x1
	.4byte	0x153
	.uleb128 0x1
	.4byte	0x876
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x570
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x3
	.4byte	0x8f3
	.uleb128 0xf
	.4byte	0x68
	.4byte	0x966
	.uleb128 0x1
	.4byte	0x830
	.uleb128 0x1
	.4byte	0x876
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0x570
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x3
	.4byte	0x934
	.uleb128 0xf
	.4byte	0x68
	.4byte	0x989
	.uleb128 0x1
	.4byte	0x830
	.uleb128 0x1
	.4byte	0x830
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x3
	.4byte	0x96b
	.uleb128 0x2d
	.4byte	0xc3
	.uleb128 0x3
	.4byte	0x98e
	.uleb128 0x20
	.4byte	0x9a3
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x3
	.4byte	0x998
	.uleb128 0x20
	.4byte	0x9b8
	.uleb128 0x1
	.4byte	0x830
	.uleb128 0x1
	.4byte	0x9b8
	.byte	0
	.uleb128 0x3
	.4byte	0x6b3
	.uleb128 0x3
	.4byte	0x9a8
	.uleb128 0x1a
	.4byte	.LASF121
	.byte	0x6c
	.4byte	0x6cb
	.uleb128 0x1a
	.4byte	.LASF122
	.byte	0x70
	.4byte	0x6cb
	.uleb128 0x1a
	.4byte	.LASF123
	.byte	0x71
	.4byte	0x6cb
	.uleb128 0x1a
	.4byte	.LASF124
	.byte	0x75
	.4byte	0x6cb
	.uleb128 0xa
	.4byte	.LASF125
	.byte	0xf
	.byte	0x70
	.byte	0x5
	.4byte	0x68
	.4byte	0xa1e
	.uleb128 0x1
	.4byte	0xa1e
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0x153
	.uleb128 0x1
	.4byte	0x74
	.uleb128 0x1
	.4byte	0x876
	.uleb128 0x1
	.4byte	0xc5
	.byte	0
	.uleb128 0x3
	.4byte	0x29f
	.uleb128 0xd
	.4byte	0xa1e
	.uleb128 0x13
	.4byte	.LASF126
	.byte	0xb
	.2byte	0x460
	.byte	0x5
	.4byte	0x68
	.4byte	0xa5d
	.uleb128 0x1
	.4byte	0xa1e
	.uleb128 0x1
	.4byte	0x153
	.uleb128 0x1
	.4byte	0x74
	.uleb128 0x1
	.4byte	0x876
	.uleb128 0x1
	.4byte	0x153
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x876
	.byte	0
	.uleb128 0xa
	.4byte	.LASF127
	.byte	0x1
	.byte	0xeb
	.byte	0xf
	.4byte	0x32
	.4byte	0xa73
	.uleb128 0x1
	.4byte	0x175
	.byte	0
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0x1
	.byte	0x95
	.byte	0x1a
	.4byte	0x175
	.4byte	0xa89
	.uleb128 0x1
	.4byte	0x153
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF247
	.byte	0xc
	.2byte	0x211
	.byte	0x5
	.4byte	0x68
	.uleb128 0x2f
	.4byte	.LASF151
	.byte	0x10
	.2byte	0x198
	.byte	0x6
	.4byte	0xaa9
	.uleb128 0x1
	.4byte	0xaa9
	.byte	0
	.uleb128 0x3
	.4byte	0x50a
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0x6
	.byte	0xa2
	.byte	0x5
	.4byte	0x68
	.4byte	0xace
	.uleb128 0x1
	.4byte	0x830
	.uleb128 0x1
	.4byte	0x876
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF130
	.byte	0x5
	.byte	0x39
	.byte	0x5
	.4byte	0x68
	.4byte	0xaee
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF131
	.byte	0x6
	.byte	0xb7
	.byte	0x5
	.4byte	0x68
	.4byte	0xb18
	.uleb128 0x1
	.4byte	0x830
	.uleb128 0x1
	.4byte	0x876
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF132
	.byte	0x6
	.byte	0x93
	.byte	0x5
	.4byte	0x68
	.4byte	0xb38
	.uleb128 0x1
	.4byte	0x830
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF133
	.byte	0x6
	.byte	0x8a
	.byte	0x5
	.4byte	0x68
	.4byte	0xb53
	.uleb128 0x1
	.4byte	0x830
	.uleb128 0x1
	.4byte	0x310
	.byte	0
	.uleb128 0xa
	.4byte	.LASF134
	.byte	0x5
	.byte	0x66
	.byte	0x16
	.4byte	0x310
	.4byte	0xb6e
	.uleb128 0x1
	.4byte	0x4bf
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF135
	.byte	0xb
	.byte	0xaf
	.byte	0x5
	.4byte	0x68
	.4byte	0xb8e
	.uleb128 0x1
	.4byte	0xa1e
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x153
	.byte	0
	.uleb128 0xa
	.4byte	.LASF136
	.byte	0xf
	.byte	0x32
	.byte	0x5
	.4byte	0x68
	.4byte	0xbae
	.uleb128 0x1
	.4byte	0xa1e
	.uleb128 0x1
	.4byte	0x876
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF137
	.byte	0xf
	.byte	0x22
	.byte	0x5
	.4byte	0x68
	.4byte	0xbce
	.uleb128 0x1
	.4byte	0xa1e
	.uleb128 0x1
	.4byte	0x876
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x13
	.4byte	.LASF138
	.byte	0x10
	.2byte	0x2f4
	.byte	0xe
	.4byte	0x4a7
	.4byte	0xbf4
	.uleb128 0x1
	.4byte	0x4f0
	.uleb128 0x1
	.4byte	0x575
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x570
	.byte	0
	.uleb128 0x13
	.4byte	.LASF139
	.byte	0x10
	.2byte	0x33f
	.byte	0xe
	.4byte	0x4a7
	.4byte	0xc1a
	.uleb128 0x1
	.4byte	0x4f0
	.uleb128 0x1
	.4byte	0x575
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x570
	.byte	0
	.uleb128 0x13
	.4byte	.LASF140
	.byte	0x10
	.2byte	0x189
	.byte	0xe
	.4byte	0x4a7
	.4byte	0xc36
	.uleb128 0x1
	.4byte	0x4f0
	.uleb128 0x1
	.4byte	0xaa9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF141
	.byte	0xc
	.2byte	0x594
	.byte	0x5
	.4byte	0x68
	.4byte	0xc61
	.uleb128 0x1
	.4byte	0xc61
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x570
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x3
	.4byte	0x4a2
	.uleb128 0xa
	.4byte	.LASF142
	.byte	0xf
	.byte	0x5f
	.byte	0x5
	.4byte	0x68
	.4byte	0xc86
	.uleb128 0x1
	.4byte	0xc86
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0xc8b
	.byte	0
	.uleb128 0x3
	.4byte	0x2ab
	.uleb128 0x3
	.4byte	0xc5
	.uleb128 0x13
	.4byte	.LASF143
	.byte	0xc
	.2byte	0x577
	.byte	0x5
	.4byte	0x68
	.4byte	0xcb6
	.uleb128 0x1
	.4byte	0xc61
	.uleb128 0x1
	.4byte	0x570
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF144
	.byte	0x11
	.byte	0x5b
	.byte	0x5
	.4byte	0x68
	.4byte	0xccc
	.uleb128 0x1
	.4byte	0x4a7
	.byte	0
	.uleb128 0x13
	.4byte	.LASF145
	.byte	0x10
	.2byte	0x295
	.byte	0xe
	.4byte	0x4a7
	.4byte	0xcf2
	.uleb128 0x1
	.4byte	0xcf2
	.uleb128 0x1
	.4byte	0xcf7
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xcfc
	.byte	0
	.uleb128 0x3
	.4byte	0x517
	.uleb128 0x3
	.4byte	0xa6
	.uleb128 0x3
	.4byte	0x4f0
	.uleb128 0xa
	.4byte	.LASF146
	.byte	0xf
	.byte	0x48
	.byte	0x5
	.4byte	0x68
	.4byte	0xd21
	.uleb128 0x1
	.4byte	0xc86
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0xc8b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF147
	.byte	0x5
	.byte	0x57
	.byte	0x12
	.4byte	0x4bf
	.4byte	0xd3c
	.uleb128 0x1
	.4byte	0x310
	.uleb128 0x1
	.4byte	0x570
	.byte	0
	.uleb128 0x13
	.4byte	.LASF148
	.byte	0xb
	.2byte	0x20c
	.byte	0x5
	.4byte	0x68
	.4byte	0xd53
	.uleb128 0x1
	.4byte	0xc86
	.byte	0
	.uleb128 0xa
	.4byte	.LASF149
	.byte	0xb
	.byte	0xc6
	.byte	0x5
	.4byte	0x68
	.4byte	0xd69
	.uleb128 0x1
	.4byte	0xc86
	.byte	0
	.uleb128 0xa
	.4byte	.LASF150
	.byte	0xb
	.byte	0xbb
	.byte	0x5
	.4byte	0x68
	.4byte	0xd7f
	.uleb128 0x1
	.4byte	0xc86
	.byte	0
	.uleb128 0x30
	.4byte	.LASF152
	.byte	0x12
	.byte	0x9f
	.byte	0x6
	.4byte	0xd96
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x21
	.4byte	.LASF153
	.2byte	0x5d6
	.byte	0x13
	.4byte	0x609
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdc1
	.uleb128 0x6
	.string	"ctx"
	.byte	0x7
	.2byte	0x5d6
	.byte	0x41
	.4byte	0xdc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	0x7e8
	.uleb128 0x21
	.4byte	.LASF154
	.2byte	0x5ca
	.byte	0xd
	.4byte	0xdb
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf1
	.uleb128 0x6
	.string	"ctx"
	.byte	0x7
	.2byte	0x5ca
	.byte	0x3b
	.4byte	0xdc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF155
	.2byte	0x5b9
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe2c
	.uleb128 0x6
	.string	"ctx"
	.byte	0x7
	.2byte	0x5b9
	.byte	0x30
	.4byte	0xdc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF156
	.byte	0x7
	.2byte	0x5b9
	.byte	0x4c
	.4byte	0x9b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF157
	.2byte	0x5ab
	.byte	0x8
	.4byte	0x7b
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe57
	.uleb128 0x6
	.string	"ctx"
	.byte	0x7
	.2byte	0x5ab
	.byte	0x38
	.4byte	0xdc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF158
	.2byte	0x586
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb2
	.uleb128 0x6
	.string	"pub"
	.byte	0x7
	.2byte	0x586
	.byte	0x35
	.4byte	0xdc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"prv"
	.byte	0x7
	.2byte	0x587
	.byte	0x35
	.4byte	0xdc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0x7
	.2byte	0x588
	.byte	0x21
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x7
	.2byte	0x589
	.byte	0x21
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.4byte	.LASF161
	.2byte	0x572
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf4d
	.uleb128 0x6
	.string	"ctx"
	.byte	0x7
	.2byte	0x572
	.byte	0x2c
	.4byte	0x830
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0x7
	.2byte	0x573
	.byte	0x2d
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x7
	.2byte	0x573
	.byte	0x3b
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF164
	.byte	0x7
	.2byte	0x574
	.byte	0x27
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF165
	.byte	0x7
	.2byte	0x574
	.byte	0x37
	.4byte	0x570
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF166
	.byte	0x7
	.2byte	0x574
	.byte	0x44
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0x7
	.2byte	0x575
	.byte	0x1e
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x7
	.2byte	0x575
	.byte	0x4d
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xb
	.4byte	.LASF167
	.2byte	0x55e
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe8
	.uleb128 0x6
	.string	"ctx"
	.byte	0x7
	.2byte	0x55e
	.byte	0x2c
	.4byte	0x830
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0x7
	.2byte	0x55f
	.byte	0x2d
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x7
	.2byte	0x55f
	.byte	0x3b
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF164
	.byte	0x7
	.2byte	0x560
	.byte	0x27
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF165
	.byte	0x7
	.2byte	0x560
	.byte	0x37
	.4byte	0x570
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF166
	.byte	0x7
	.2byte	0x560
	.byte	0x44
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0x7
	.2byte	0x561
	.byte	0x1e
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x7
	.2byte	0x561
	.byte	0x4d
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xb
	.4byte	.LASF168
	.2byte	0x510
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10c1
	.uleb128 0x2
	.4byte	.LASF169
	.byte	0x7
	.2byte	0x510
	.byte	0x2b
	.4byte	0x609
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x6
	.string	"ctx"
	.byte	0x7
	.2byte	0x511
	.byte	0x2d
	.4byte	0x830
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF170
	.byte	0x7
	.2byte	0x512
	.byte	0x2b
	.4byte	0x153
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF171
	.byte	0x7
	.2byte	0x513
	.byte	0x2e
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF172
	.byte	0x7
	.2byte	0x513
	.byte	0x3b
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"sig"
	.byte	0x7
	.2byte	0x514
	.byte	0x28
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF173
	.byte	0x7
	.2byte	0x514
	.byte	0x34
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF174
	.byte	0x7
	.2byte	0x514
	.byte	0x46
	.4byte	0x570
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0x7
	.2byte	0x515
	.byte	0x1f
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x7
	.2byte	0x516
	.byte	0x1f
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x4
	.4byte	.LASF175
	.2byte	0x54b
	.byte	0x20
	.4byte	0xa23
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"ret"
	.2byte	0x54d
	.byte	0xf
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF176
	.2byte	0x503
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x116c
	.uleb128 0x6
	.string	"ctx"
	.byte	0x7
	.2byte	0x503
	.byte	0x29
	.4byte	0x830
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF170
	.byte	0x7
	.2byte	0x503
	.byte	0x40
	.4byte	0x153
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x2
	.4byte	.LASF171
	.byte	0x7
	.2byte	0x504
	.byte	0x2a
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF172
	.byte	0x7
	.2byte	0x504
	.byte	0x37
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"sig"
	.byte	0x7
	.2byte	0x505
	.byte	0x24
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF173
	.byte	0x7
	.2byte	0x505
	.byte	0x30
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF174
	.byte	0x7
	.2byte	0x505
	.byte	0x42
	.4byte	0x570
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0x7
	.2byte	0x506
	.byte	0x1b
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x7
	.2byte	0x506
	.byte	0x4a
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF177
	.2byte	0x4cd
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1240
	.uleb128 0x6
	.string	"ctx"
	.byte	0x7
	.2byte	0x4cd
	.byte	0x35
	.4byte	0x830
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF170
	.byte	0x7
	.2byte	0x4ce
	.byte	0x33
	.4byte	0x153
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.4byte	.LASF171
	.byte	0x7
	.2byte	0x4cf
	.byte	0x36
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF172
	.byte	0x7
	.2byte	0x4cf
	.byte	0x43
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"sig"
	.byte	0x7
	.2byte	0x4d0
	.byte	0x30
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF173
	.byte	0x7
	.2byte	0x4d0
	.byte	0x3c
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF174
	.byte	0x7
	.2byte	0x4d0
	.byte	0x4e
	.4byte	0x570
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0x7
	.2byte	0x4d1
	.byte	0x27
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x7
	.2byte	0x4d1
	.byte	0x56
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x4d2
	.byte	0x39
	.4byte	0x1240
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0xc
	.string	"ret"
	.2byte	0x4e1
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	0x814
	.uleb128 0xb
	.4byte	.LASF178
	.2byte	0x44b
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12fe
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x44b
	.byte	0x2d
	.4byte	0x609
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF179
	.byte	0x7
	.2byte	0x44b
	.byte	0x3f
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"ctx"
	.byte	0x7
	.2byte	0x44c
	.byte	0x2f
	.4byte	0x830
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF170
	.byte	0x7
	.2byte	0x44c
	.byte	0x46
	.4byte	0x153
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF171
	.byte	0x7
	.2byte	0x44d
	.byte	0x30
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF172
	.byte	0x7
	.2byte	0x44d
	.byte	0x3d
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"sig"
	.byte	0x7
	.2byte	0x44e
	.byte	0x30
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF174
	.byte	0x7
	.2byte	0x44e
	.byte	0x3c
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.string	"ret"
	.2byte	0x46c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF180
	.2byte	0x46d
	.byte	0x2a
	.4byte	0x12fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.4byte	0x649
	.uleb128 0xb
	.4byte	.LASF181
	.2byte	0x440
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x137e
	.uleb128 0x6
	.string	"ctx"
	.byte	0x7
	.2byte	0x440
	.byte	0x2b
	.4byte	0x830
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF170
	.byte	0x7
	.2byte	0x440
	.byte	0x42
	.4byte	0x153
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x2
	.4byte	.LASF171
	.byte	0x7
	.2byte	0x441
	.byte	0x2c
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF172
	.byte	0x7
	.2byte	0x441
	.byte	0x39
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"sig"
	.byte	0x7
	.2byte	0x442
	.byte	0x2c
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF174
	.byte	0x7
	.2byte	0x442
	.byte	0x38
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xb
	.4byte	.LASF182
	.2byte	0x40e
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1422
	.uleb128 0x6
	.string	"ctx"
	.byte	0x7
	.2byte	0x40e
	.byte	0x37
	.4byte	0x830
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF170
	.byte	0x7
	.2byte	0x40f
	.byte	0x35
	.4byte	0x153
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.4byte	.LASF171
	.byte	0x7
	.2byte	0x410
	.byte	0x38
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF172
	.byte	0x7
	.2byte	0x410
	.byte	0x45
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"sig"
	.byte	0x7
	.2byte	0x411
	.byte	0x38
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF174
	.byte	0x7
	.2byte	0x411
	.byte	0x44
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x412
	.byte	0x3b
	.4byte	0x1240
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0xc
	.string	"ret"
	.2byte	0x422
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF184
	.byte	0x7
	.2byte	0x3f4
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x145e
	.uleb128 0x6
	.string	"ctx"
	.byte	0x7
	.2byte	0x3f4
	.byte	0x35
	.4byte	0x1240
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF183
	.byte	0x7
	.2byte	0x3f5
	.byte	0x36
	.4byte	0x7d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF185
	.byte	0x7
	.2byte	0x3e1
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x149a
	.uleb128 0x2
	.4byte	.LASF170
	.byte	0x7
	.2byte	0x3e1
	.byte	0x37
	.4byte	0x153
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF172
	.byte	0x7
	.2byte	0x3e1
	.byte	0x47
	.4byte	0x570
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF186
	.2byte	0x3d7
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14d4
	.uleb128 0x2
	.4byte	.LASF187
	.byte	0x7
	.2byte	0x3d7
	.byte	0x3a
	.4byte	0x4f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"pk"
	.byte	0x7
	.2byte	0x3d8
	.byte	0x39
	.4byte	0x830
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF188
	.2byte	0x3d1
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x150e
	.uleb128 0x2
	.4byte	.LASF187
	.byte	0x7
	.2byte	0x3d1
	.byte	0x33
	.4byte	0x4f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"pk"
	.byte	0x7
	.2byte	0x3d2
	.byte	0x32
	.4byte	0x830
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF189
	.byte	0x7
	.2byte	0x35c
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1612
	.uleb128 0x2
	.4byte	.LASF187
	.byte	0x7
	.2byte	0x35c
	.byte	0x2f
	.4byte	0x4f0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2452
	.uleb128 0x6
	.string	"pk"
	.byte	0x7
	.2byte	0x35d
	.byte	0x2e
	.4byte	0x830
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2456
	.uleb128 0x2
	.4byte	.LASF190
	.byte	0x7
	.2byte	0x35e
	.byte	0x1e
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2460
	.uleb128 0x4
	.4byte	.LASF191
	.2byte	0x360
	.byte	0x12
	.4byte	0x4a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF192
	.2byte	0x361
	.byte	0x1a
	.4byte	0x50a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF193
	.2byte	0x362
	.byte	0x14
	.4byte	0x4b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x4
	.4byte	.LASF194
	.2byte	0x363
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF195
	.2byte	0x365
	.byte	0x13
	.4byte	0x1612
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2432
	.uleb128 0x4
	.4byte	.LASF196
	.2byte	0x366
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2436
	.uleb128 0xc
	.string	"ret"
	.2byte	0x367
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.4byte	.LASF248
	.byte	0x7
	.2byte	0x3ca
	.byte	0x1
	.4byte	.L133
	.uleb128 0x32
	.4byte	.LLRL0
	.4byte	0x15fc
	.uleb128 0x4
	.4byte	.LASF197
	.2byte	0x394
	.byte	0x19
	.4byte	0x4cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF198
	.2byte	0x395
	.byte	0x1b
	.4byte	0x153
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.uleb128 0x33
	.4byte	.LLRL1
	.uleb128 0x4
	.4byte	.LASF199
	.2byte	0x3a8
	.byte	0x1e
	.4byte	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x32
	.4byte	0x1623
	.uleb128 0x22
	.4byte	0x74
	.2byte	0x93a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF200
	.2byte	0x346
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x167c
	.uleb128 0x6
	.string	"pk"
	.byte	0x7
	.2byte	0x346
	.byte	0x3a
	.4byte	0xdc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x7
	.2byte	0x347
	.byte	0x3c
	.4byte	0xcf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF187
	.byte	0x7
	.2byte	0x348
	.byte	0x36
	.4byte	0xcfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF202
	.2byte	0x354
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF203
	.byte	0x7
	.2byte	0x2df
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x177b
	.uleb128 0x6
	.string	"pk"
	.byte	0x7
	.2byte	0x2df
	.byte	0x3d
	.4byte	0xdc1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1092
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x7
	.2byte	0x2e0
	.byte	0x3f
	.4byte	0xcf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x2
	.4byte	.LASF187
	.byte	0x7
	.2byte	0x2e1
	.byte	0x39
	.4byte	0xcfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1100
	.uleb128 0x4
	.4byte	.LASF204
	.2byte	0x2e3
	.byte	0x14
	.4byte	0x4b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x4
	.4byte	.LASF205
	.2byte	0x2e8
	.byte	0x13
	.4byte	0x177b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x4
	.4byte	.LASF206
	.2byte	0x2ea
	.byte	0x14
	.4byte	0xc5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1068
	.uleb128 0x4
	.4byte	.LASF207
	.2byte	0x2eb
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x1e
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x1734
	.uleb128 0x4
	.4byte	.LASF208
	.2byte	0x2f4
	.byte	0x22
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"ret"
	.2byte	0x2f6
	.byte	0x11
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x18
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0xc
	.string	"ec"
	.2byte	0x311
	.byte	0x28
	.4byte	0xc61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF209
	.2byte	0x312
	.byte	0x14
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1076
	.uleb128 0x4
	.4byte	.LASF210
	.2byte	0x313
	.byte	0x1e
	.4byte	0x4bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xc
	.string	"ret"
	.2byte	0x318
	.byte	0x11
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x32
	.4byte	0x178c
	.uleb128 0x22
	.4byte	0x74
	.2byte	0x3ff
	.byte	0
	.uleb128 0x14
	.4byte	.LASF211
	.byte	0x7
	.2byte	0x281
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18a7
	.uleb128 0x6
	.string	"pk"
	.byte	0x7
	.2byte	0x281
	.byte	0x3b
	.4byte	0xdc1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2436
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x7
	.2byte	0x282
	.byte	0x3d
	.4byte	0xcf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2440
	.uleb128 0x2
	.4byte	.LASF187
	.byte	0x7
	.2byte	0x283
	.byte	0x37
	.4byte	0xcfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2444
	.uleb128 0x1e
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x1833
	.uleb128 0x4
	.4byte	.LASF205
	.2byte	0x28c
	.byte	0x1b
	.4byte	0x1612
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2420
	.uleb128 0x4
	.4byte	.LASF208
	.2byte	0x28e
	.byte	0x22
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF206
	.2byte	0x28f
	.byte	0x1c
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"ret"
	.2byte	0x290
	.byte	0x11
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF207
	.2byte	0x295
	.byte	0x14
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x18
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x4
	.4byte	.LASF212
	.2byte	0x2a8
	.byte	0x1c
	.4byte	0x4b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xc
	.string	"ec"
	.2byte	0x2ac
	.byte	0x28
	.4byte	0xc61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF209
	.2byte	0x2ad
	.byte	0x14
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF210
	.2byte	0x2ae
	.byte	0x1e
	.4byte	0x4bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x4
	.4byte	.LASF205
	.2byte	0x2c5
	.byte	0x1b
	.4byte	0x18a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2420
	.uleb128 0x4
	.4byte	.LASF207
	.2byte	0x2c6
	.byte	0x14
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"ret"
	.2byte	0x2c7
	.byte	0x11
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x32
	.4byte	0x18b7
	.uleb128 0x34
	.4byte	0x74
	.byte	0x41
	.byte	0
	.uleb128 0xb
	.4byte	.LASF213
	.2byte	0x190
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19df
	.uleb128 0x6
	.string	"pk"
	.byte	0x7
	.2byte	0x190
	.byte	0x3d
	.4byte	0xdc1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x191
	.byte	0x33
	.4byte	0x4fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x7
	.2byte	0x192
	.byte	0x39
	.4byte	0xaa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x4
	.4byte	.LASF169
	.2byte	0x194
	.byte	0x17
	.4byte	0x609
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x4
	.4byte	.LASF214
	.2byte	0x196
	.byte	0x15
	.4byte	0x4fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF215
	.2byte	0x1a0
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x196b
	.uleb128 0x4
	.4byte	.LASF216
	.2byte	0x1a8
	.byte	0x11
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"rsa"
	.2byte	0x1b9
	.byte	0x22
	.4byte	0xa1e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF217
	.2byte	0x1ba
	.byte	0x11
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x18
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x4
	.4byte	.LASF218
	.2byte	0x1cd
	.byte	0x11
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF219
	.2byte	0x1ce
	.byte	0x11
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"ec"
	.2byte	0x1d7
	.byte	0x28
	.4byte	0xc61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF217
	.2byte	0x1d8
	.byte	0x11
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF73
	.2byte	0x1d9
	.byte	0x14
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF220
	.2byte	0x1da
	.byte	0x1e
	.4byte	0x4bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0xc
	.string	"alg"
	.2byte	0x1dd
	.byte	0x1d
	.4byte	0x4cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF221
	.byte	0x7
	.2byte	0x17c
	.byte	0x18
	.4byte	0x4cb
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a34
	.uleb128 0x6
	.string	"rsa"
	.byte	0x7
	.2byte	0x17c
	.byte	0x49
	.4byte	0xc86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF216
	.byte	0x7
	.2byte	0x17d
	.byte	0x32
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x4
	.4byte	.LASF198
	.2byte	0x181
	.byte	0x1f
	.4byte	0x153
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF222
	.byte	0xe3
	.4byte	0x68
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a6b
	.uleb128 0x16
	.string	"ctx"
	.byte	0x7
	.byte	0xe3
	.byte	0x31
	.4byte	0xdc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x7
	.byte	0xe3
	.byte	0x48
	.4byte	0x609
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x23
	.4byte	.LASF223
	.byte	0x88
	.4byte	0x68
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1aa2
	.uleb128 0x16
	.string	"ctx"
	.byte	0x7
	.byte	0x88
	.byte	0x2a
	.4byte	0x830
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF183
	.byte	0x7
	.byte	0x88
	.byte	0x48
	.4byte	0x7d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.4byte	.LASF224
	.byte	0x7
	.byte	0x6e
	.byte	0x1a
	.4byte	0x7d6
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1acc
	.uleb128 0x15
	.4byte	.LASF169
	.byte	0x7
	.byte	0x6e
	.byte	0x46
	.4byte	0x609
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x24
	.4byte	.LASF225
	.byte	0x5d
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1af0
	.uleb128 0x16
	.string	"ctx"
	.byte	0x7
	.byte	0x5d
	.byte	0x36
	.4byte	0x1240
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.4byte	.LASF226
	.byte	0x54
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b14
	.uleb128 0x16
	.string	"ctx"
	.byte	0x7
	.byte	0x54
	.byte	0x36
	.4byte	0x1240
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.4byte	.LASF227
	.byte	0x3b
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b38
	.uleb128 0x16
	.string	"ctx"
	.byte	0x7
	.byte	0x3b
	.byte	0x2a
	.4byte	0x830
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.4byte	.LASF228
	.byte	0x29
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b5c
	.uleb128 0x16
	.string	"ctx"
	.byte	0x7
	.byte	0x29
	.byte	0x2a
	.4byte	0x830
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x36
	.4byte	.LASF229
	.byte	0x6
	.byte	0x3c
	.byte	0x2a
	.4byte	0xc61
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b85
	.uleb128 0x16
	.string	"pk"
	.byte	0x6
	.byte	0x3c
	.byte	0x54
	.4byte	0x7e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.4byte	.LASF230
	.byte	0x8a
	.byte	0x21
	.4byte	0x153
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bae
	.uleb128 0x15
	.4byte	.LASF231
	.byte	0x5
	.byte	0x8a
	.byte	0x4e
	.4byte	0x4cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.4byte	.LASF232
	.byte	0x79
	.byte	0x1f
	.4byte	0x4cb
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bd7
	.uleb128 0x15
	.4byte	.LASF198
	.byte	0x5
	.byte	0x79
	.byte	0x4e
	.4byte	0x153
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x14
	.4byte	.LASF233
	.byte	0x4
	.2byte	0x40d
	.byte	0x24
	.4byte	0xa1e
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c02
	.uleb128 0x6
	.string	"pk"
	.byte	0x4
	.2byte	0x40d
	.byte	0x4c
	.4byte	0x7e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF234
	.byte	0x4
	.2byte	0x1b7
	.byte	0x16
	.4byte	0x7b
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c2e
	.uleb128 0x6
	.string	"ctx"
	.byte	0x4
	.2byte	0x1b7
	.byte	0x43
	.4byte	0xdc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.4byte	.LASF236
	.byte	0x3
	.byte	0x44
	.byte	0x14
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c63
	.uleb128 0x15
	.4byte	.LASF201
	.byte	0x3
	.byte	0x45
	.byte	0x1b
	.4byte	0xaa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x3
	.byte	0x46
	.byte	0x15
	.4byte	0x4cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF235
	.2byte	0x1b9
	.byte	0x16
	.4byte	0x7b
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c8e
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x2
	.2byte	0x1ba
	.byte	0x21
	.4byte	0xcf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF237
	.2byte	0x1af
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cc4
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x2
	.2byte	0x1af
	.byte	0x3b
	.4byte	0xaa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x2
	.2byte	0x1b0
	.byte	0x2c
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF238
	.2byte	0x1a9
	.byte	0x1e
	.4byte	0x4b3
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cef
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x2
	.2byte	0x1aa
	.byte	0x21
	.4byte	0xcf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF239
	.2byte	0x1a3
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d25
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x2
	.2byte	0x1a3
	.byte	0x3b
	.4byte	0xaa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x2
	.2byte	0x1a4
	.byte	0x34
	.4byte	0x4b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF240
	.2byte	0x19d
	.byte	0x1f
	.4byte	0x4cb
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d50
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x2
	.2byte	0x19e
	.byte	0x21
	.4byte	0xcf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF241
	.2byte	0x197
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d86
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x2
	.2byte	0x197
	.byte	0x40
	.4byte	0xaa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"alg"
	.byte	0x2
	.2byte	0x198
	.byte	0x3a
	.4byte	0x4cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.4byte	.LASF242
	.byte	0x2
	.2byte	0x18a
	.byte	0x14
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dbe
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x2
	.2byte	0x18a
	.byte	0x42
	.4byte	0xaa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF243
	.byte	0x2
	.2byte	0x18b
	.byte	0x3c
	.4byte	0x4fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF244
	.2byte	0x17f
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1de4
	.uleb128 0x2
	.4byte	.LASF243
	.byte	0x2
	.2byte	0x17f
	.byte	0x40
	.4byte	0x1de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	0x4fd
	.uleb128 0x39
	.4byte	.LASF245
	.byte	0x1
	.byte	0xf6
	.byte	0x1d
	.4byte	0x32
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF198
	.byte	0x1
	.byte	0xf6
	.byte	0x4d
	.4byte	0x153
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
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0xc
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 32
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.sleb128 20
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1f
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.sleb128 7
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
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.4byte	0x17c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
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
	.4byte	.LBB9
	.byte	0x4
	.uleb128 .LBB9-.LBB9
	.uleb128 .LBE9-.LBB9
	.byte	0x4
	.uleb128 .LBB10-.LBB9
	.uleb128 .LBE10-.LBB9
	.byte	0x4
	.uleb128 .LBB13-.LBB9
	.uleb128 .LBE13-.LBB9
	.byte	0
.LLRL1:
	.byte	0x5
	.4byte	.LBB11
	.byte	0x4
	.uleb128 .LBB11-.LBB11
	.uleb128 .LBE11-.LBB11
	.byte	0x4
	.uleb128 .LBB12-.LBB11
	.uleb128 .LBE12-.LBB11
	.byte	0x4
	.uleb128 .LBB14-.LBB11
	.uleb128 .LBE14-.LBB11
	.byte	0
.LLRL2:
	.byte	0x7
	.4byte	.LFB11
	.uleb128 .LFE11-.LFB11
	.byte	0x7
	.4byte	.LFB42
	.uleb128 .LFE42-.LFB42
	.byte	0x7
	.4byte	.LFB43
	.uleb128 .LFE43-.LFB43
	.byte	0x7
	.4byte	.LFB45
	.uleb128 .LFE45-.LFB45
	.byte	0x7
	.4byte	.LFB46
	.uleb128 .LFE46-.LFB46
	.byte	0x7
	.4byte	.LFB47
	.uleb128 .LFE47-.LFB47
	.byte	0x7
	.4byte	.LFB48
	.uleb128 .LFE48-.LFB48
	.byte	0x7
	.4byte	.LFB49
	.uleb128 .LFE49-.LFB49
	.byte	0x7
	.4byte	.LFB50
	.uleb128 .LFE50-.LFB50
	.byte	0x7
	.4byte	.LFB54
	.uleb128 .LFE54-.LFB54
	.byte	0x7
	.4byte	.LFB66
	.uleb128 .LFE66-.LFB66
	.byte	0x7
	.4byte	.LFB67
	.uleb128 .LFE67-.LFB67
	.byte	0x7
	.4byte	.LFB69
	.uleb128 .LFE69-.LFB69
	.byte	0x7
	.4byte	.LFB70
	.uleb128 .LFE70-.LFB70
	.byte	0x7
	.4byte	.LFB71
	.uleb128 .LFE71-.LFB71
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"hash_id"
.LASF12:
	.string	"size_t"
.LASF242:
	.string	"psa_set_key_usage_flags"
.LASF68:
	.string	"mbedtls_svc_key_id_t"
.LASF140:
	.string	"psa_get_key_attributes"
.LASF223:
	.string	"mbedtls_pk_setup"
.LASF185:
	.string	"pk_hashlen_helper"
.LASF13:
	.string	"int32_t"
.LASF168:
	.string	"mbedtls_pk_sign_ext"
.LASF106:
	.string	"verify_rs_func"
.LASF116:
	.string	"mbedtls_pk_context"
.LASF86:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF55:
	.string	"nbits"
.LASF149:
	.string	"mbedtls_rsa_get_md_alg"
.LASF53:
	.string	"mbedtls_ecp_group"
.LASF96:
	.string	"MBEDTLS_PK_DEBUG_PSA_EC"
.LASF89:
	.string	"mbedtls_pk_type_t"
.LASF122:
	.string	"mbedtls_eckey_info"
.LASF184:
	.string	"pk_restart_setup"
.LASF72:
	.string	"type"
.LASF203:
	.string	"import_public_into_psa"
.LASF19:
	.string	"MBEDTLS_MD_MD5"
.LASF76:
	.string	"psa_key_policy_s"
.LASF79:
	.string	"psa_key_policy_t"
.LASF142:
	.string	"mbedtls_rsa_write_pubkey"
.LASF214:
	.string	"more_usage"
.LASF38:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF51:
	.string	"mbedtls_ecp_group_id"
.LASF24:
	.string	"MBEDTLS_MD_SHA384"
.LASF6:
	.string	"long int"
.LASF211:
	.string	"import_pair_into_psa"
.LASF137:
	.string	"mbedtls_rsa_parse_key"
.LASF210:
	.string	"from_family"
.LASF44:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF169:
	.string	"pk_type"
.LASF114:
	.string	"rs_free_func"
.LASF231:
	.string	"psa_alg"
.LASF28:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF226:
	.string	"mbedtls_pk_restart_init"
.LASF132:
	.string	"mbedtls_pk_ecc_set_key"
.LASF221:
	.string	"psa_algorithm_for_rsa"
.LASF2:
	.string	"signed char"
.LASF43:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF14:
	.string	"uint8_t"
.LASF194:
	.string	"key_bits"
.LASF204:
	.string	"psa_type"
.LASF113:
	.string	"rs_alloc_func"
.LASF3:
	.string	"unsigned char"
.LASF224:
	.string	"mbedtls_pk_info_from_type"
.LASF78:
	.string	"alg2"
.LASF163:
	.string	"ilen"
.LASF45:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF32:
	.string	"mbedtls_mpi_uint"
.LASF61:
	.string	"mbedtls_ecp_keypair"
.LASF92:
	.string	"expected_salt_len"
.LASF174:
	.string	"sig_len"
.LASF167:
	.string	"mbedtls_pk_decrypt"
.LASF100:
	.string	"value"
.LASF165:
	.string	"olen"
.LASF17:
	.string	"char"
.LASF57:
	.string	"t_pre"
.LASF157:
	.string	"mbedtls_pk_get_bitlen"
.LASF164:
	.string	"output"
.LASF71:
	.string	"psa_key_attributes_s"
.LASF70:
	.string	"psa_key_attributes_t"
.LASF81:
	.string	"MBEDTLS_PK_NONE"
.LASF215:
	.string	"want_private"
.LASF247:
	.string	"mbedtls_ecp_restart_is_enabled"
.LASF236:
	.string	"psa_set_key_enrollment_algorithm"
.LASF244:
	.string	"psa_extend_key_usage_flags"
.LASF136:
	.string	"mbedtls_rsa_parse_pubkey"
.LASF240:
	.string	"psa_get_key_algorithm"
.LASF152:
	.string	"mbedtls_platform_zeroize"
.LASF25:
	.string	"MBEDTLS_MD_SHA512"
.LASF207:
	.string	"key_length"
.LASF196:
	.string	"exp_key_len"
.LASF143:
	.string	"mbedtls_ecp_write_key_ext"
.LASF146:
	.string	"mbedtls_rsa_write_key"
.LASF162:
	.string	"input"
.LASF243:
	.string	"usage_flags"
.LASF144:
	.string	"psa_pk_status_to_mbedtls"
.LASF233:
	.string	"mbedtls_pk_rsa"
.LASF131:
	.string	"mbedtls_pk_ecc_set_pubkey_from_prv"
.LASF141:
	.string	"mbedtls_ecp_write_public_key"
.LASF125:
	.string	"mbedtls_rsa_rsassa_pss_sign_no_mode_check"
.LASF197:
	.string	"alg_type"
.LASF29:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF213:
	.string	"mbedtls_pk_get_psa_attributes"
.LASF148:
	.string	"mbedtls_rsa_check_privkey"
.LASF234:
	.string	"mbedtls_pk_get_len"
.LASF90:
	.string	"mbedtls_pk_rsassa_pss_options"
.LASF120:
	.string	"mbedtls_pk_restart_ctx"
.LASF180:
	.string	"pss_opts"
.LASF189:
	.string	"copy_from_psa"
.LASF87:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF97:
	.string	"mbedtls_pk_debug_type"
.LASF60:
	.string	"T_size"
.LASF159:
	.string	"f_rng"
.LASF193:
	.string	"key_type"
.LASF235:
	.string	"psa_get_key_bits"
.LASF62:
	.string	"psa_status_t"
.LASF69:
	.string	"psa_key_usage_t"
.LASF7:
	.string	"long unsigned int"
.LASF241:
	.string	"psa_set_key_algorithm"
.LASF126:
	.string	"mbedtls_rsa_rsassa_pss_verify_ext"
.LASF170:
	.string	"md_alg"
.LASF191:
	.string	"status"
.LASF186:
	.string	"mbedtls_pk_copy_public_from_psa"
.LASF232:
	.string	"mbedtls_md_psa_alg_from_type"
.LASF20:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF115:
	.string	"debug_func"
.LASF112:
	.string	"ctx_free_func"
.LASF225:
	.string	"mbedtls_pk_restart_free"
.LASF147:
	.string	"mbedtls_ecc_group_to_psa"
.LASF67:
	.string	"psa_key_id_t"
.LASF46:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF135:
	.string	"mbedtls_rsa_set_padding"
.LASF237:
	.string	"psa_set_key_bits"
.LASF98:
	.string	"mbedtls_pk_debug_item"
.LASF127:
	.string	"mbedtls_md_get_size"
.LASF145:
	.string	"psa_import_key"
.LASF212:
	.string	"to_type"
.LASF104:
	.string	"verify_func"
.LASF129:
	.string	"mbedtls_pk_ecc_set_pubkey"
.LASF119:
	.string	"rs_ctx"
.LASF8:
	.string	"long long int"
.LASF195:
	.string	"exp_key"
.LASF34:
	.string	"mbedtls_rsa_context"
.LASF133:
	.string	"mbedtls_pk_ecc_set_group"
.LASF83:
	.string	"MBEDTLS_PK_ECKEY"
.LASF108:
	.string	"decrypt_func"
.LASF49:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF118:
	.string	"pk_ctx"
.LASF21:
	.string	"MBEDTLS_MD_SHA1"
.LASF80:
	.string	"psa_key_bits_t"
.LASF216:
	.string	"want_crypt"
.LASF190:
	.string	"public_only"
.LASF218:
	.string	"sign_ok"
.LASF153:
	.string	"mbedtls_pk_get_type"
.LASF31:
	.string	"mbedtls_md_info_t"
.LASF85:
	.string	"MBEDTLS_PK_ECDSA"
.LASF10:
	.string	"unsigned int"
.LASF88:
	.string	"MBEDTLS_PK_OPAQUE"
.LASF50:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF93:
	.string	"MBEDTLS_PK_DEBUG_NONE"
.LASF128:
	.string	"mbedtls_md_info_from_type"
.LASF154:
	.string	"mbedtls_pk_get_name"
.LASF150:
	.string	"mbedtls_rsa_get_padding_mode"
.LASF73:
	.string	"bits"
.LASF206:
	.string	"key_data"
.LASF48:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF139:
	.string	"psa_export_public_key"
.LASF102:
	.string	"get_bitlen"
.LASF64:
	.string	"psa_ecc_family_t"
.LASF220:
	.string	"family"
.LASF111:
	.string	"ctx_alloc_func"
.LASF138:
	.string	"psa_export_key"
.LASF30:
	.string	"mbedtls_md_type_t"
.LASF84:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF107:
	.string	"sign_rs_func"
.LASF95:
	.string	"MBEDTLS_PK_DEBUG_ECP"
.LASF246:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF11:
	.string	"long double"
.LASF222:
	.string	"mbedtls_pk_can_do"
.LASF74:
	.string	"lifetime"
.LASF187:
	.string	"key_id"
.LASF183:
	.string	"info"
.LASF103:
	.string	"can_do"
.LASF121:
	.string	"mbedtls_rsa_info"
.LASF166:
	.string	"osize"
.LASF176:
	.string	"mbedtls_pk_sign"
.LASF134:
	.string	"mbedtls_ecc_group_from_psa"
.LASF82:
	.string	"MBEDTLS_PK_RSA"
.LASF9:
	.string	"long long unsigned int"
.LASF209:
	.string	"from_bits"
.LASF15:
	.string	"uint16_t"
.LASF178:
	.string	"mbedtls_pk_verify_ext"
.LASF228:
	.string	"mbedtls_pk_init"
.LASF52:
	.string	"mbedtls_ecp_point"
.LASF41:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF33:
	.string	"mbedtls_mpi"
.LASF155:
	.string	"mbedtls_pk_debug"
.LASF109:
	.string	"encrypt_func"
.LASF200:
	.string	"mbedtls_pk_import_into_psa"
.LASF54:
	.string	"pbits"
.LASF22:
	.string	"MBEDTLS_MD_SHA224"
.LASF40:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF248:
	.string	"exit"
.LASF42:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF188:
	.string	"mbedtls_pk_copy_from_psa"
.LASF181:
	.string	"mbedtls_pk_verify"
.LASF75:
	.string	"policy"
.LASF198:
	.string	"md_type"
.LASF26:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF219:
	.string	"derive_ok"
.LASF65:
	.string	"psa_algorithm_t"
.LASF94:
	.string	"MBEDTLS_PK_DEBUG_MPI"
.LASF239:
	.string	"psa_set_key_type"
.LASF58:
	.string	"t_post"
.LASF99:
	.string	"name"
.LASF201:
	.string	"attributes"
.LASF4:
	.string	"short int"
.LASF37:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF177:
	.string	"mbedtls_pk_sign_restartable"
.LASF238:
	.string	"psa_get_key_type"
.LASF56:
	.string	"modp"
.LASF77:
	.string	"usage"
.LASF66:
	.string	"psa_key_lifetime_t"
.LASF39:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF160:
	.string	"p_rng"
.LASF208:
	.string	"key_end"
.LASF23:
	.string	"MBEDTLS_MD_SHA256"
.LASF18:
	.string	"MBEDTLS_MD_NONE"
.LASF229:
	.string	"mbedtls_pk_ec_ro"
.LASF245:
	.string	"mbedtls_md_get_size_from_type"
.LASF227:
	.string	"mbedtls_pk_free"
.LASF117:
	.string	"pk_info"
.LASF110:
	.string	"check_pair_func"
.LASF27:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF91:
	.string	"mgf1_hash_id"
.LASF156:
	.string	"items"
.LASF35:
	.string	"padding"
.LASF47:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF173:
	.string	"sig_size"
.LASF16:
	.string	"uint32_t"
.LASF63:
	.string	"psa_key_type_t"
.LASF192:
	.string	"key_attr"
.LASF5:
	.string	"short unsigned int"
.LASF230:
	.string	"mbedtls_md_type_from_psa_alg"
.LASF59:
	.string	"t_data"
.LASF182:
	.string	"mbedtls_pk_verify_restartable"
.LASF158:
	.string	"mbedtls_pk_check_pair"
.LASF123:
	.string	"mbedtls_eckeydh_info"
.LASF175:
	.string	"rsa_ctx"
.LASF202:
	.string	"want_public"
.LASF179:
	.string	"options"
.LASF124:
	.string	"mbedtls_ecdsa_info"
.LASF172:
	.string	"hash_len"
.LASF217:
	.string	"has_private"
.LASF171:
	.string	"hash"
.LASF105:
	.string	"sign_func"
.LASF205:
	.string	"key_buffer"
.LASF151:
	.string	"psa_reset_key_attributes"
.LASF130:
	.string	"mbedtls_psa_get_random"
.LASF161:
	.string	"mbedtls_pk_encrypt"
.LASF199:
	.string	"grp_id"
.LASF101:
	.string	"mbedtls_pk_info_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
