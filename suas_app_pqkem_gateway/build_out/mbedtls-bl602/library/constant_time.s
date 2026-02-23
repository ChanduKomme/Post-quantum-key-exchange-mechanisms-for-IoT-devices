	.file	"constant_time.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/constant_time.c"
	.section	.text.mbedtls_ct_compiler_opaque,"ax",@progbits
	.align	1
	.type	mbedtls_ct_compiler_opaque, @function
mbedtls_ct_compiler_opaque:
.LFB11:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/constant_time_impl.h"
	.loc 1 86 1
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
	.loc 1 88 5
	lw	a5,-20(s0)
	sw	a5,-20(s0)
	.loc 1 89 12
	lw	a5,-20(s0)
	.loc 1 93 1
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
	.size	mbedtls_ct_compiler_opaque, .-mbedtls_ct_compiler_opaque
	.section	.text.mbedtls_ct_bool,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool, @function
mbedtls_ct_bool:
.LFB12:
	.loc 1 121 1
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
	.loc 1 184 34
	lw	a0,-36(s0)
	call	mbedtls_ct_compiler_opaque
	sw	a0,-20(s0)
	.loc 1 192 27
	lw	a5,-20(s0)
	neg	a4,a5
	.loc 1 192 39
	lw	a5,-20(s0)
	srli	a5,a5,1
	.loc 1 192 34
	neg	a5,a5
	.loc 1 192 32
	or	a5,a4,a5
	.loc 1 192 22
	sw	a5,-24(s0)
	.loc 1 195 11
	lw	a5,-24(s0)
	.loc 1 195 34
	srli	a5,a5,31
	.loc 1 195 7
	sw	a5,-24(s0)
	.loc 1 198 38
	lw	a5,-24(s0)
	neg	a5,a5
	.loc 1 203 1
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
.LFE12:
	.size	mbedtls_ct_bool, .-mbedtls_ct_bool
	.section	.text.mbedtls_ct_if,"ax",@progbits
	.align	1
	.type	mbedtls_ct_if, @function
mbedtls_ct_if:
.LFB13:
	.loc 1 208 1
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
	.loc 1 266 36
	lw	a0,-36(s0)
	call	mbedtls_ct_compiler_opaque
	mv	a5,a0
	.loc 1 265 28
	not	a5,a5
	sw	a5,-20(s0)
	.loc 1 267 44
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	and	a4,a4,a5
	.loc 1 267 63
	lw	a3,-20(s0)
	lw	a5,-44(s0)
	and	a5,a3,a5
	.loc 1 267 12
	or	a5,a4,a5
	.loc 1 269 1
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
.LFE13:
	.size	mbedtls_ct_if, .-mbedtls_ct_if
	.section	.text.mbedtls_ct_uint_lt,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_lt, @function
mbedtls_ct_uint_lt:
.LFB14:
	.loc 1 272 1
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
	.loc 1 354 34
	lw	a0,-36(s0)
	call	mbedtls_ct_compiler_opaque
	sw	a0,-20(s0)
	.loc 1 355 34
	lw	a0,-40(s0)
	call	mbedtls_ct_compiler_opaque
	sw	a0,-24(s0)
	.loc 1 360 55
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	xor	a5,a4,a5
	.loc 1 360 35
	srli	a5,a5,31
	mv	a0,a5
	call	mbedtls_ct_bool
	sw	a0,-28(s0)
	.loc 1 372 29
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	mbedtls_ct_if
	sw	a0,-32(s0)
	.loc 1 375 9
	lw	a5,-32(s0)
	srli	a5,a5,31
	sw	a5,-32(s0)
	.loc 1 378 12
	lw	a0,-32(s0)
	call	mbedtls_ct_bool
	mv	a5,a0
	.loc 1 380 1
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
.LFE14:
	.size	mbedtls_ct_uint_lt, .-mbedtls_ct_uint_lt
	.section	.text.mbedtls_ct_uint_ne,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_ne, @function
mbedtls_ct_uint_ne:
.LFB15:
	.loc 1 383 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 385 36
	lw	a0,-36(s0)
	call	mbedtls_ct_compiler_opaque
	mv	s1,a0
	.loc 1 385 68 discriminator 1
	lw	a0,-40(s0)
	call	mbedtls_ct_compiler_opaque
	mv	a5,a0
	.loc 1 385 29 discriminator 2
	xor	a5,s1,a5
	sw	a5,-20(s0)
	.loc 1 388 12
	lw	a0,-20(s0)
	call	mbedtls_ct_bool
	mv	a5,a0
	.loc 1 389 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	mbedtls_ct_uint_ne, .-mbedtls_ct_uint_ne
	.section	.text.mbedtls_ct_uint_if,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_if, @function
mbedtls_ct_uint_if:
.LFB18:
	.loc 1 421 1
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
	.loc 1 422 23
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ct_if
	mv	a5,a0
	.loc 1 423 1
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
.LFE18:
	.size	mbedtls_ct_uint_if, .-mbedtls_ct_uint_if
	.section	.text.mbedtls_ct_uint_if_else_0,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_if_else_0, @function
mbedtls_ct_uint_if_else_0:
.LFB22:
	.loc 1 452 1
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
	.loc 1 453 12
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 1 454 1
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
.LFE22:
	.size	mbedtls_ct_uint_if_else_0, .-mbedtls_ct_uint_if_else_0
	.section	.text.mbedtls_ct_uint_eq,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_eq, @function
mbedtls_ct_uint_eq:
.LFB27:
	.loc 1 491 1
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
	.loc 1 492 13
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ct_uint_ne
	mv	a5,a0
	.loc 1 492 12 discriminator 1
	not	a5,a5
	.loc 1 493 1
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
.LFE27:
	.size	mbedtls_ct_uint_eq, .-mbedtls_ct_uint_eq
	.section	.text.mbedtls_ct_uint_gt,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_gt, @function
mbedtls_ct_uint_gt:
.LFB28:
	.loc 1 497 1
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
	.loc 1 498 12
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	mbedtls_ct_uint_lt
	mv	a5,a0
	.loc 1 499 1
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
.LFE28:
	.size	mbedtls_ct_uint_gt, .-mbedtls_ct_uint_gt
	.section	.text.mbedtls_ct_uint_ge,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_ge, @function
mbedtls_ct_uint_ge:
.LFB29:
	.loc 1 503 1
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
	.loc 1 504 13
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ct_uint_lt
	mv	a5,a0
	.loc 1 504 12 discriminator 1
	not	a5,a5
	.loc 1 505 1
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
.LFE29:
	.size	mbedtls_ct_uint_ge, .-mbedtls_ct_uint_ge
	.section	.text.mbedtls_ct_bool_and,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool_and, @function
mbedtls_ct_bool_and:
.LFB32:
	.loc 1 521 1
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
	.loc 1 522 12
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 1 523 1
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
	.size	mbedtls_ct_bool_and, .-mbedtls_ct_bool_and
	.section	.text.mbedtls_ct_memcmp,"ax",@progbits
	.align	1
	.globl	mbedtls_ct_memcmp
	.type	mbedtls_ct_memcmp, @function
mbedtls_ct_memcmp:
.LFB36:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/constant_time.c"
	.loc 2 71 1
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
	.loc 2 72 12
	sw	zero,-20(s0)
	.loc 2 79 35
	lw	a5,-52(s0)
	sw	a5,-28(s0)
	.loc 2 80 35
	lw	a5,-56(s0)
	sw	a5,-32(s0)
	.loc 2 81 14
	sw	zero,-24(s0)
	.loc 2 91 5
	j	.L24
.L25:
.LBB2:
	.loc 2 95 28
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 2 95 23
	lbu	a5,0(a5)
	sb	a5,-33(s0)
	.loc 2 95 38
	lw	a4,-32(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 2 95 33
	lbu	a5,0(a5)
	sb	a5,-34(s0)
	.loc 2 96 19
	lbu	a5,-33(s0)
	mv	a4,a5
	lbu	a5,-34(s0)
	xor	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 96 14
	lw	a5,-24(s0)
	or	a5,a5,a4
	sw	a5,-24(s0)
.LBE2:
	.loc 2 91 20 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L24:
	.loc 2 91 14 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-60(s0)
	bltu	a4,a5,.L25
	.loc 2 115 25
	lw	a5,-24(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 2 115 43
	lw	a5,-24(s0)
	srli	a5,a5,16
	.loc 2 115 35
	or	a5,a4,a5
	.loc 2 117 1
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
.LFE36:
	.size	mbedtls_ct_memcmp, .-mbedtls_ct_memcmp
	.section	.text.mbedtls_ct_memcmp_partial,"ax",@progbits
	.align	1
	.globl	mbedtls_ct_memcmp_partial
	.type	mbedtls_ct_memcmp_partial, @function
mbedtls_ct_memcmp_partial:
.LFB37:
	.loc 2 126 1
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
	.loc 2 127 18
	sw	zero,-20(s0)
	.loc 2 129 35
	lw	a5,-52(s0)
	sw	a5,-28(s0)
	.loc 2 130 35
	lw	a5,-56(s0)
	sw	a5,-32(s0)
	.loc 2 132 12
	lw	a4,-60(s0)
	lw	a5,-68(s0)
	sub	a5,a4,a5
	sw	a5,-36(s0)
.LBB3:
	.loc 2 134 17
	sw	zero,-24(s0)
	.loc 2 134 5
	j	.L28
.L29:
.LBB4:
	.loc 2 135 28
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 135 23
	lbu	a5,0(a5)
	sb	a5,-37(s0)
	.loc 2 135 38
	lw	a4,-32(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 135 33
	lbu	a5,0(a5)
	sb	a5,-38(s0)
	.loc 2 136 28
	lbu	a5,-37(s0)
	mv	a4,a5
	lbu	a5,-38(s0)
	xor	a5,a4,a5
	andi	a5,a5,0xff
	.loc 2 136 22
	sw	a5,-44(s0)
	.loc 2 137 40
	lw	a1,-64(s0)
	lw	a0,-24(s0)
	call	mbedtls_ct_uint_ge
	mv	s1,a0
	.loc 2 137 40 is_stmt 0 discriminator 1
	lw	a1,-36(s0)
	lw	a0,-24(s0)
	call	mbedtls_ct_uint_lt
	mv	a5,a0
	.loc 2 137 40 discriminator 2
	mv	a1,a5
	mv	a0,s1
	call	mbedtls_ct_bool_and
	sw	a0,-48(s0)
	.loc 2 139 17 is_stmt 1
	lw	a1,-44(s0)
	lw	a0,-48(s0)
	call	mbedtls_ct_uint_if_else_0
	mv	a4,a0
	.loc 2 139 14 discriminator 1
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
.LBE4:
	.loc 2 134 32 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L28:
	.loc 2 134 26 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-60(s0)
	bltu	a4,a5,.L29
.LBE3:
	.loc 2 144 12
	lw	a5,-20(s0)
	.loc 2 145 1
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
.LFE37:
	.size	mbedtls_ct_memcmp_partial, .-mbedtls_ct_memcmp_partial
	.section	.text.mbedtls_ct_memmove_left,"ax",@progbits
	.align	1
	.globl	mbedtls_ct_memmove_left
	.type	mbedtls_ct_memmove_left, @function
mbedtls_ct_memmove_left:
.LFB38:
	.loc 2 152 1
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
	.loc 2 153 29
	lw	a5,-52(s0)
	sw	a5,-28(s0)
.LBB5:
	.loc 2 154 17
	sw	zero,-20(s0)
	.loc 2 154 5
	j	.L32
.L35:
.LBB6:
	.loc 2 155 65
	lw	a4,-56(s0)
	lw	a5,-60(s0)
	sub	a5,a4,a5
	.loc 2 155 40
	lw	a1,-20(s0)
	mv	a0,a5
	call	mbedtls_ct_uint_gt
	sw	a0,-32(s0)
.LBB7:
	.loc 2 159 21
	sw	zero,-24(s0)
	.loc 2 159 9
	j	.L33
.L34:
.LBB8:
	.loc 2 160 40
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 160 27
	lbu	a5,0(a5)
	sb	a5,-33(s0)
	.loc 2 161 37
	lw	a5,-24(s0)
	addi	a5,a5,1
	lw	a4,-28(s0)
	add	a5,a4,a5
	.loc 2 161 27
	lbu	a5,0(a5)
	sb	a5,-34(s0)
	.loc 2 162 22
	lbu	a5,-33(s0)
	lbu	a4,-34(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-32(s0)
	call	mbedtls_ct_uint_if
	mv	a3,a0
	.loc 2 162 16 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 162 20 discriminator 1
	andi	a4,a3,0xff
	sb	a4,0(a5)
.LBE8:
	.loc 2 159 44 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L33:
	.loc 2 159 38 discriminator 1
	lw	a5,-56(s0)
	addi	a5,a5,-1
	.loc 2 159 30 discriminator 1
	lw	a4,-24(s0)
	bltu	a4,a5,.L34
.LBE7:
	.loc 2 164 60
	lw	a5,-56(s0)
	addi	a5,a5,-1
	lw	a4,-28(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 2 164 24
	mv	a1,a5
	lw	a0,-32(s0)
	call	mbedtls_ct_uint_if_else_0
	mv	a3,a0
	.loc 2 164 12 discriminator 1
	lw	a5,-56(s0)
	addi	a5,a5,-1
	lw	a4,-28(s0)
	add	a5,a4,a5
	.loc 2 164 22 discriminator 1
	andi	a4,a3,0xff
	sb	a4,0(a5)
.LBE6:
	.loc 2 154 36 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L32:
	.loc 2 154 26 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	bltu	a4,a5,.L35
.LBE5:
	.loc 2 166 1
	nop
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	mbedtls_ct_memmove_left, .-mbedtls_ct_memmove_left
	.section	.text.mbedtls_ct_memcpy_if,"ax",@progbits
	.align	1
	.globl	mbedtls_ct_memcpy_if
	.type	mbedtls_ct_memcpy_if, @function
mbedtls_ct_memcpy_if:
.LFB39:
	.loc 2 175 1
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
	.loc 2 180 20
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 2 181 43
	lw	a0,-36(s0)
	call	mbedtls_ct_compiler_opaque
	mv	a5,a0
	.loc 2 181 20 discriminator 1
	not	a5,a5
	sw	a5,-28(s0)
	.loc 2 189 8
	lw	a5,-48(s0)
	bne	a5,zero,.L37
	.loc 2 190 14
	lw	a5,-40(s0)
	sw	a5,-48(s0)
.L37:
	.loc 2 194 12
	sw	zero,-20(s0)
	.loc 2 210 5
	j	.L38
.L39:
	.loc 2 211 24
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 2 211 28
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	and	a5,a4,a5
	andi	a3,a5,0xff
	.loc 2 211 43
	lw	a4,-48(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 2 211 47
	lw	a5,-28(s0)
	andi	a5,a5,0xff
	and	a5,a4,a5
	andi	a4,a5,0xff
	.loc 2 211 13
	lw	a2,-40(s0)
	lw	a5,-20(s0)
	add	a5,a2,a5
	.loc 2 211 36
	or	a4,a3,a4
	andi	a4,a4,0xff
	.loc 2 211 17
	sb	a4,0(a5)
	.loc 2 210 22 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L38:
	.loc 2 210 14 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	bltu	a4,a5,.L39
	.loc 2 213 1
	nop
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE39:
	.size	mbedtls_ct_memcpy_if, .-mbedtls_ct_memcpy_if
	.section	.text.mbedtls_ct_memcpy_offset,"ax",@progbits
	.align	1
	.globl	mbedtls_ct_memcpy_offset
	.type	mbedtls_ct_memcpy_offset, @function
mbedtls_ct_memcpy_offset:
.LFB40:
	.loc 2 221 1
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
	.loc 2 224 20
	lw	a5,-48(s0)
	sw	a5,-20(s0)
	.loc 2 224 5
	j	.L41
.L42:
	.loc 2 225 9
	lw	a1,-44(s0)
	lw	a0,-20(s0)
	call	mbedtls_ct_uint_eq
	.loc 2 225 9 is_stmt 0 discriminator 1
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lw	a4,-56(s0)
	li	a3,0
	mv	a2,a5
	lw	a1,-36(s0)
	call	mbedtls_ct_memcpy_if
	.loc 2 224 68 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L41:
	.loc 2 224 44 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	bleu	a4,a5,.L42
	.loc 2 228 1
	nop
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	mbedtls_ct_memcpy_offset, .-mbedtls_ct_memcpy_offset
	.section	.text.mbedtls_ct_zeroize_if,"ax",@progbits
	.align	1
	.globl	mbedtls_ct_zeroize_if
	.type	mbedtls_ct_zeroize_if, @function
mbedtls_ct_zeroize_if:
.LFB41:
	.loc 2 233 1
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
	.loc 2 234 14
	lw	a5,-36(s0)
	not	a5,a5
	sw	a5,-24(s0)
	.loc 2 235 14
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	.loc 2 236 12
	sw	zero,-20(s0)
	.loc 2 243 5
	j	.L44
.L45:
	.loc 2 244 17
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 2 244 21
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	.loc 2 244 10
	lw	a2,-28(s0)
	lw	a5,-20(s0)
	add	a5,a2,a5
	.loc 2 244 21
	and	a4,a3,a4
	andi	a4,a4,0xff
	.loc 2 244 14
	sb	a4,0(a5)
	.loc 2 243 22 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L44:
	.loc 2 243 14 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L45
	.loc 2 246 1
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
.LFE41:
	.size	mbedtls_ct_zeroize_if, .-mbedtls_ct_zeroize_if
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/constant_time_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x785
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x45
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x5f
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0xb
	.4byte	0x5f
	.uleb128 0xf
	.4byte	0x5f
	.uleb128 0xf
	.4byte	0x66
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x8d
	.uleb128 0xb
	.4byte	0x7c
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0xa2
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x15
	.byte	0x4
	.uleb128 0x9
	.4byte	0x5f
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x9
	.4byte	0xcf
	.uleb128 0x16
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0x50
	.byte	0x12
	.4byte	0x7c
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x51
	.byte	0x12
	.4byte	0x7c
	.uleb128 0xb
	.4byte	0xdc
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x52
	.byte	0x11
	.4byte	0x39
	.uleb128 0x17
	.4byte	.LASF22
	.byte	0x2
	.byte	0xe8
	.byte	0x6
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x165
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x2
	.byte	0xe8
	.byte	0x33
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"buf"
	.byte	0x2
	.byte	0xe8
	.byte	0x44
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"len"
	.byte	0x2
	.byte	0xe8
	.byte	0x50
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0xea
	.byte	0xe
	.4byte	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"p"
	.byte	0x2
	.byte	0xeb
	.byte	0xe
	.4byte	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"i"
	.byte	0x2
	.byte	0xec
	.byte	0xc
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x53
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0xd7
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e7
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x2
	.byte	0xd7
	.byte	0x2e
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"src"
	.byte	0x2
	.byte	0xd8
	.byte	0x34
	.4byte	0x1e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x2
	.byte	0xd9
	.byte	0x26
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x2
	.byte	0xda
	.byte	0x26
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x2
	.byte	0xdb
	.byte	0x26
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"len"
	.byte	0x2
	.byte	0xdc
	.byte	0x26
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0xde
	.byte	0xc
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x66
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0xaa
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x275
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x2
	.byte	0xaa
	.byte	0x32
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x2
	.byte	0xab
	.byte	0x2a
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x2
	.byte	0xac
	.byte	0x30
	.4byte	0x1e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x2
	.byte	0xad
	.byte	0x30
	.4byte	0x1e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"len"
	.byte	0x2
	.byte	0xae
	.byte	0x22
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0xb4
	.byte	0x14
	.4byte	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0xb5
	.byte	0x14
	.4byte	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"i"
	.byte	0x2
	.byte	0xc2
	.byte	0xc
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x97
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x332
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x2
	.byte	0x97
	.byte	0x24
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x2
	.byte	0x97
	.byte	0x32
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x2
	.byte	0x97
	.byte	0x40
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"buf"
	.byte	0x2
	.byte	0x99
	.byte	0x1d
	.4byte	0x332
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1
	.string	"i"
	.byte	0x2
	.byte	0x9a
	.byte	0x11
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x9b
	.byte	0x20
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1
	.string	"n"
	.byte	0x2
	.byte	0x9f
	.byte	0x15
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0xa0
	.byte	0x1b
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0xa1
	.byte	0x1b
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x6b
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0x2
	.byte	0x79
	.byte	0x5
	.4byte	0x9b
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x424
	.uleb128 0x3
	.string	"a"
	.byte	0x2
	.byte	0x79
	.byte	0x2b
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"b"
	.byte	0x2
	.byte	0x7a
	.byte	0x2b
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.string	"n"
	.byte	0x2
	.byte	0x7b
	.byte	0x26
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x2
	.byte	0x7c
	.byte	0x26
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x2
	.byte	0x7d
	.byte	0x26
	.4byte	0xa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x7f
	.byte	0x12
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.byte	0x81
	.byte	0x23
	.4byte	0x424
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"B"
	.byte	0x2
	.byte	0x82
	.byte	0x23
	.4byte	0x424
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x84
	.byte	0xc
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1
	.string	"i"
	.byte	0x2
	.byte	0x86
	.byte	0x11
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1
	.string	"x"
	.byte	0x2
	.byte	0x87
	.byte	0x17
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1
	.string	"y"
	.byte	0x2
	.byte	0x87
	.byte	0x21
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1
	.string	"d"
	.byte	0x2
	.byte	0x88
	.byte	0x16
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x89
	.byte	0x20
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x70
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x2
	.byte	0x44
	.byte	0x5
	.4byte	0x9b
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c4
	.uleb128 0x3
	.string	"a"
	.byte	0x2
	.byte	0x44
	.byte	0x23
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"b"
	.byte	0x2
	.byte	0x45
	.byte	0x23
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.string	"n"
	.byte	0x2
	.byte	0x46
	.byte	0x1e
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"i"
	.byte	0x2
	.byte	0x48
	.byte	0xc
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.byte	0x4f
	.byte	0x23
	.4byte	0x424
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"B"
	.byte	0x2
	.byte	0x50
	.byte	0x23
	.4byte	0x424
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x51
	.byte	0xe
	.4byte	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1
	.string	"x"
	.byte	0x2
	.byte	0x5f
	.byte	0x17
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.string	"y"
	.byte	0x2
	.byte	0x5f
	.byte	0x21
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF46
	.2byte	0x207
	.byte	0x26
	.4byte	0xd0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f9
	.uleb128 0x4
	.string	"x"
	.2byte	0x207
	.byte	0x51
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"y"
	.2byte	0x208
	.byte	0x51
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF47
	.2byte	0x1f5
	.byte	0x26
	.4byte	0xd0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52e
	.uleb128 0x4
	.string	"x"
	.2byte	0x1f5
	.byte	0x4b
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"y"
	.2byte	0x1f6
	.byte	0x4b
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF48
	.2byte	0x1ef
	.byte	0x26
	.4byte	0xd0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x563
	.uleb128 0x4
	.string	"x"
	.2byte	0x1ef
	.byte	0x4b
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"y"
	.2byte	0x1f0
	.byte	0x4b
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF49
	.2byte	0x1e9
	.byte	0x26
	.4byte	0xd0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x598
	.uleb128 0x4
	.string	"x"
	.2byte	0x1e9
	.byte	0x4b
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"y"
	.2byte	0x1ea
	.byte	0x4b
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF50
	.2byte	0x1c3
	.byte	0x18
	.4byte	0xa2
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d1
	.uleb128 0x11
	.4byte	.LASF20
	.2byte	0x1c3
	.byte	0x49
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"if1"
	.2byte	0x1c3
	.byte	0x5d
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF51
	.2byte	0x1a2
	.byte	0x18
	.4byte	0xa2
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x619
	.uleb128 0x11
	.4byte	.LASF20
	.2byte	0x1a2
	.byte	0x42
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"if1"
	.2byte	0x1a3
	.byte	0x34
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.string	"if0"
	.2byte	0x1a4
	.byte	0x34
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF52
	.2byte	0x17e
	.byte	0x26
	.4byte	0xd0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65d
	.uleb128 0x4
	.string	"x"
	.2byte	0x17e
	.byte	0x4b
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"y"
	.2byte	0x17e
	.byte	0x60
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	.LASF41
	.2byte	0x181
	.byte	0x1d
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF53
	.2byte	0x10f
	.byte	0x26
	.4byte	0xd0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6cc
	.uleb128 0x4
	.string	"x"
	.2byte	0x10f
	.byte	0x4b
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"y"
	.2byte	0x10f
	.byte	0x60
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"xo"
	.2byte	0x162
	.byte	0x1d
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"yo"
	.2byte	0x163
	.byte	0x1d
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF54
	.2byte	0x168
	.byte	0x1c
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.string	"ret"
	.2byte	0x174
	.byte	0x17
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0xcd
	.byte	0x21
	.4byte	0xdc
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x722
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x1
	.byte	0xcd
	.byte	0x46
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"if1"
	.byte	0x1
	.byte	0xce
	.byte	0x41
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"if0"
	.byte	0x1
	.byte	0xcf
	.byte	0x41
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.4byte	.LASF56
	.2byte	0x109
	.byte	0x1c
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x78
	.byte	0x26
	.4byte	0xd0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x764
	.uleb128 0x3
	.string	"x"
	.byte	0x1
	.byte	0x78
	.byte	0x48
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"xo"
	.byte	0x1
	.byte	0xb8
	.byte	0x1d
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"y"
	.byte	0x1
	.byte	0xc0
	.byte	0x16
	.4byte	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF59
	.byte	0x1
	.byte	0x55
	.byte	0x21
	.4byte	0xdc
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.string	"x"
	.byte	0x1
	.byte	0x55
	.byte	0x4e
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x1a
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
	.4byte	0x9c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
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
	.4byte	.LFB11
	.uleb128 .LFE11-.LFB11
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
	.4byte	.LFB18
	.uleb128 .LFE18-.LFB18
	.byte	0x7
	.4byte	.LFB22
	.uleb128 .LFE22-.LFB22
	.byte	0x7
	.4byte	.LFB27
	.uleb128 .LFE27-.LFB27
	.byte	0x7
	.4byte	.LFB28
	.uleb128 .LFE28-.LFB28
	.byte	0x7
	.4byte	.LFB29
	.uleb128 .LFE29-.LFB29
	.byte	0x7
	.4byte	.LFB32
	.uleb128 .LFE32-.LFB32
	.byte	0x7
	.4byte	.LFB36
	.uleb128 .LFE36-.LFB36
	.byte	0x7
	.4byte	.LFB37
	.uleb128 .LFE37-.LFB37
	.byte	0x7
	.4byte	.LFB38
	.uleb128 .LFE38-.LFB38
	.byte	0x7
	.4byte	.LFB39
	.uleb128 .LFE39-.LFB39
	.byte	0x7
	.4byte	.LFB40
	.uleb128 .LFE40-.LFB40
	.byte	0x7
	.4byte	.LFB41
	.uleb128 .LFE41-.LFB41
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"no_op"
.LASF14:
	.string	"size_t"
.LASF17:
	.string	"mbedtls_ct_condition_t"
.LASF42:
	.string	"valid_end"
.LASF12:
	.string	"long long unsigned int"
.LASF41:
	.string	"diff"
.LASF28:
	.string	"offsetval"
.LASF45:
	.string	"mbedtls_ct_memcmp"
.LASF38:
	.string	"next"
.LASF22:
	.string	"mbedtls_ct_zeroize_if"
.LASF5:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF59:
	.string	"mbedtls_ct_compiler_opaque"
.LASF54:
	.string	"cond"
.LASF4:
	.string	"long int"
.LASF53:
	.string	"mbedtls_ct_uint_lt"
.LASF27:
	.string	"offset_max"
.LASF26:
	.string	"offset_min"
.LASF21:
	.string	"mask"
.LASF49:
	.string	"mbedtls_ct_uint_eq"
.LASF33:
	.string	"mbedtls_ct_memmove_left"
.LASF13:
	.string	"unsigned int"
.LASF11:
	.string	"long unsigned int"
.LASF19:
	.string	"mbedtls_ct_int_t"
.LASF9:
	.string	"short unsigned int"
.LASF44:
	.string	"mbedtls_ct_memcmp_partial"
.LASF56:
	.string	"not_cond"
.LASF35:
	.string	"total"
.LASF52:
	.string	"mbedtls_ct_uint_ne"
.LASF40:
	.string	"skip_tail"
.LASF32:
	.string	"not_mask"
.LASF15:
	.string	"long double"
.LASF18:
	.string	"mbedtls_ct_uint_t"
.LASF55:
	.string	"mbedtls_ct_if"
.LASF47:
	.string	"mbedtls_ct_uint_ge"
.LASF48:
	.string	"mbedtls_ct_uint_gt"
.LASF24:
	.string	"dest"
.LASF37:
	.string	"current"
.LASF46:
	.string	"mbedtls_ct_bool_and"
.LASF30:
	.string	"src1"
.LASF31:
	.string	"src2"
.LASF57:
	.string	"mbedtls_ct_bool"
.LASF6:
	.string	"int32_t"
.LASF8:
	.string	"unsigned char"
.LASF3:
	.string	"short int"
.LASF20:
	.string	"condition"
.LASF43:
	.string	"valid"
.LASF10:
	.string	"uint32_t"
.LASF50:
	.string	"mbedtls_ct_uint_if_else_0"
.LASF16:
	.string	"char"
.LASF51:
	.string	"mbedtls_ct_uint_if"
.LASF25:
	.string	"offset"
.LASF58:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF29:
	.string	"mbedtls_ct_memcpy_if"
.LASF7:
	.string	"uint8_t"
.LASF34:
	.string	"start"
.LASF39:
	.string	"skip_head"
.LASF23:
	.string	"mbedtls_ct_memcpy_offset"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/constant_time.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
