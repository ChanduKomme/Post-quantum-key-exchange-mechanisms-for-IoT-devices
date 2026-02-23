	.file	"rsa.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/rsa.c"
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
	.section	.text.mbedtls_ct_compiler_opaque,"ax",@progbits
	.align	1
	.type	mbedtls_ct_compiler_opaque, @function
mbedtls_ct_compiler_opaque:
.LFB12:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/constant_time_impl.h"
	.loc 2 86 1
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
	.loc 2 88 5
	lw	a5,-20(s0)
	sw	a5,-20(s0)
	.loc 2 89 12
	lw	a5,-20(s0)
	.loc 2 93 1
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
.LFE12:
	.size	mbedtls_ct_compiler_opaque, .-mbedtls_ct_compiler_opaque
	.section	.text.mbedtls_ct_bool,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool, @function
mbedtls_ct_bool:
.LFB13:
	.loc 2 121 1
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
	.loc 2 184 34
	lw	a0,-36(s0)
	call	mbedtls_ct_compiler_opaque
	sw	a0,-20(s0)
	.loc 2 192 27
	lw	a5,-20(s0)
	neg	a4,a5
	.loc 2 192 39
	lw	a5,-20(s0)
	srli	a5,a5,1
	.loc 2 192 34
	neg	a5,a5
	.loc 2 192 32
	or	a5,a4,a5
	.loc 2 192 22
	sw	a5,-24(s0)
	.loc 2 195 11
	lw	a5,-24(s0)
	.loc 2 195 34
	srli	a5,a5,31
	.loc 2 195 7
	sw	a5,-24(s0)
	.loc 2 198 38
	lw	a5,-24(s0)
	neg	a5,a5
	.loc 2 203 1
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
	.size	mbedtls_ct_bool, .-mbedtls_ct_bool
	.section	.text.mbedtls_ct_if,"ax",@progbits
	.align	1
	.type	mbedtls_ct_if, @function
mbedtls_ct_if:
.LFB14:
	.loc 2 208 1
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
	.loc 2 266 36
	lw	a0,-36(s0)
	call	mbedtls_ct_compiler_opaque
	mv	a5,a0
	.loc 2 265 28
	not	a5,a5
	sw	a5,-20(s0)
	.loc 2 267 44
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	and	a4,a4,a5
	.loc 2 267 63
	lw	a3,-20(s0)
	lw	a5,-44(s0)
	and	a5,a3,a5
	.loc 2 267 12
	or	a5,a4,a5
	.loc 2 269 1
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
	.size	mbedtls_ct_if, .-mbedtls_ct_if
	.section	.text.mbedtls_ct_uint_lt,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_lt, @function
mbedtls_ct_uint_lt:
.LFB15:
	.loc 2 272 1
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
	.loc 2 354 34
	lw	a0,-36(s0)
	call	mbedtls_ct_compiler_opaque
	sw	a0,-20(s0)
	.loc 2 355 34
	lw	a0,-40(s0)
	call	mbedtls_ct_compiler_opaque
	sw	a0,-24(s0)
	.loc 2 360 55
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	xor	a5,a4,a5
	.loc 2 360 35
	srli	a5,a5,31
	mv	a0,a5
	call	mbedtls_ct_bool
	sw	a0,-28(s0)
	.loc 2 372 29
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	mbedtls_ct_if
	sw	a0,-32(s0)
	.loc 2 375 9
	lw	a5,-32(s0)
	srli	a5,a5,31
	sw	a5,-32(s0)
	.loc 2 378 12
	lw	a0,-32(s0)
	call	mbedtls_ct_bool
	mv	a5,a0
	.loc 2 380 1
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
.LFE15:
	.size	mbedtls_ct_uint_lt, .-mbedtls_ct_uint_lt
	.section	.text.mbedtls_ct_uint_ne,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_ne, @function
mbedtls_ct_uint_ne:
.LFB16:
	.loc 2 383 1
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
	.loc 2 385 36
	lw	a0,-36(s0)
	call	mbedtls_ct_compiler_opaque
	mv	s1,a0
	.loc 2 385 68 discriminator 1
	lw	a0,-40(s0)
	call	mbedtls_ct_compiler_opaque
	mv	a5,a0
	.loc 2 385 29 discriminator 2
	xor	a5,s1,a5
	sw	a5,-20(s0)
	.loc 2 388 12
	lw	a0,-20(s0)
	call	mbedtls_ct_bool
	mv	a5,a0
	.loc 2 389 1
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
.LFE16:
	.size	mbedtls_ct_uint_ne, .-mbedtls_ct_uint_ne
	.section	.text.mbedtls_ct_uint_if,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_if, @function
mbedtls_ct_uint_if:
.LFB19:
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
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	.loc 2 422 23
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ct_if
	mv	a5,a0
	.loc 2 423 1
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
.LFE19:
	.size	mbedtls_ct_uint_if, .-mbedtls_ct_uint_if
	.section	.text.mbedtls_ct_uint_if_else_0,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_if_else_0, @function
mbedtls_ct_uint_if_else_0:
.LFB23:
	.loc 2 452 1
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
	.loc 2 453 12
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 2 454 1
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
.LFE23:
	.size	mbedtls_ct_uint_if_else_0, .-mbedtls_ct_uint_if_else_0
	.section	.text.mbedtls_ct_error_if,"ax",@progbits
	.align	1
	.type	mbedtls_ct_error_if, @function
mbedtls_ct_error_if:
.LFB26:
	.loc 2 473 1
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
	.loc 2 480 66
	lw	a5,-24(s0)
	neg	a5,a5
	.loc 2 480 20
	mv	a4,a5
	.loc 2 481 55
	lw	a5,-28(s0)
	neg	a5,a5
	.loc 2 480 20
	mv	a2,a5
	mv	a1,a4
	lw	a0,-20(s0)
	call	mbedtls_ct_if
	mv	a5,a0
	.loc 2 480 12 discriminator 1
	neg	a5,a5
	.loc 2 482 1
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
.LFE26:
	.size	mbedtls_ct_error_if, .-mbedtls_ct_error_if
	.section	.text.mbedtls_ct_error_if_else_0,"ax",@progbits
	.align	1
	.type	mbedtls_ct_error_if_else_0, @function
mbedtls_ct_error_if_else_0:
.LFB27:
	.loc 2 485 1
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
	.loc 2 486 34
	lw	a5,-24(s0)
	neg	a5,a5
	mv	a4,a5
	.loc 2 486 31
	lw	a5,-20(s0)
	and	a5,a4,a5
	.loc 2 486 12
	neg	a5,a5
	.loc 2 487 1
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
	.size	mbedtls_ct_error_if_else_0, .-mbedtls_ct_error_if_else_0
	.section	.text.mbedtls_ct_uint_eq,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_eq, @function
mbedtls_ct_uint_eq:
.LFB28:
	.loc 2 491 1
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
	.loc 2 492 13
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ct_uint_ne
	mv	a5,a0
	.loc 2 492 12 discriminator 1
	not	a5,a5
	.loc 2 493 1
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
	.size	mbedtls_ct_uint_eq, .-mbedtls_ct_uint_eq
	.section	.text.mbedtls_ct_uint_gt,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_gt, @function
mbedtls_ct_uint_gt:
.LFB29:
	.loc 2 497 1
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
	.loc 2 498 12
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	mbedtls_ct_uint_lt
	mv	a5,a0
	.loc 2 499 1
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
	.size	mbedtls_ct_uint_gt, .-mbedtls_ct_uint_gt
	.section	.text.mbedtls_ct_bool_and,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool_and, @function
mbedtls_ct_bool_and:
.LFB33:
	.loc 2 521 1
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
	.loc 2 522 12
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 2 523 1
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
.LFE33:
	.size	mbedtls_ct_bool_and, .-mbedtls_ct_bool_and
	.section	.text.mbedtls_ct_bool_or,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool_or, @function
mbedtls_ct_bool_or:
.LFB34:
	.loc 2 527 1
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
	.loc 2 528 12
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	or	a5,a4,a5
	.loc 2 529 1
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
.LFE34:
	.size	mbedtls_ct_bool_or, .-mbedtls_ct_bool_or
	.section	.text.mbedtls_ct_bool_not,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool_not, @function
mbedtls_ct_bool_not:
.LFB35:
	.loc 2 532 1
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
	.loc 2 533 12
	lw	a5,-20(s0)
	not	a5,a5
	.loc 2 534 1
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
.LFE35:
	.size	mbedtls_ct_bool_not, .-mbedtls_ct_bool_not
	.section	.text.mbedtls_mpi_core_montmul_working_limbs,"ax",@progbits
	.align	1
	.type	mbedtls_mpi_core_montmul_working_limbs, @function
mbedtls_mpi_core_montmul_working_limbs:
.LFB36:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/bignum_core.h"
	.loc 3 746 1
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
	.loc 3 747 14
	lw	a5,-20(s0)
	slli	a5,a5,1
	.loc 3 747 25
	addi	a5,a5,1
	.loc 3 748 1
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
.LFE36:
	.size	mbedtls_mpi_core_montmul_working_limbs, .-mbedtls_mpi_core_montmul_working_limbs
	.section	.text.mbedtls_error_add,"ax",@progbits
	.align	1
	.type	mbedtls_error_add, @function
mbedtls_error_add:
.LFB94:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/error.h"
	.loc 4 144 1
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
	.loc 4 153 17
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 4 154 1
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
.LFE94:
	.size	mbedtls_error_add, .-mbedtls_error_add
	.section	.text.asn1_get_nonzero_mpi,"ax",@progbits
	.align	1
	.type	asn1_get_nonzero_mpi, @function
asn1_get_nonzero_mpi:
.LFB98:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/rsa.c"
	.loc 5 64 1
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
	.loc 5 67 11
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_asn1_get_mpi
	sw	a0,-20(s0)
	.loc 5 68 8
	lw	a5,-20(s0)
	beq	a5,zero,.L36
	.loc 5 69 16
	lw	a5,-20(s0)
	j	.L37
.L36:
	.loc 5 72 9
	li	a1,0
	lw	a0,-44(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 72 8 discriminator 1
	bne	a5,zero,.L38
	.loc 5 73 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L37
.L38:
	.loc 5 76 12
	li	a5,0
.L37:
	.loc 5 77 1
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
.LFE98:
	.size	asn1_get_nonzero_mpi, .-asn1_get_nonzero_mpi
	.section	.text.mbedtls_rsa_parse_key,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_parse_key
	.type	mbedtls_rsa_parse_key, @function
mbedtls_rsa_parse_key:
.LFB99:
	.loc 5 80 1
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
	.loc 5 86 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 88 7
	lw	a5,-56(s0)
	sw	a5,-36(s0)
	.loc 5 89 13
	lw	a4,-36(s0)
	.loc 5 89 9
	lw	a5,-60(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 107 16
	addi	a4,s0,-32
	addi	a5,s0,-36
	li	a3,48
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 5 107 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L40
	.loc 5 109 16
	lw	a5,-20(s0)
	j	.L65
.L40:
	.loc 5 112 18
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	.loc 5 112 8
	lw	a4,-24(s0)
	beq	a4,a5,.L42
	.loc 5 113 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L65
.L42:
	.loc 5 116 16
	addi	a4,s0,-28
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_int
	sw	a0,-20(s0)
	.loc 5 116 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L43
	.loc 5 117 16
	lw	a5,-20(s0)
	j	.L65
.L43:
	.loc 5 120 17
	lw	a5,-28(s0)
	.loc 5 120 8
	beq	a5,zero,.L44
	.loc 5 121 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L65
.L44:
	.loc 5 125 16
	addi	a4,s0,-44
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	asn1_get_nonzero_mpi
	sw	a0,-20(s0)
	.loc 5 125 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L66
	.loc 5 126 16
	addi	a1,s0,-44
	li	a5,0
	li	a4,0
	li	a3,0
	li	a2,0
	lw	a0,-52(s0)
	call	mbedtls_rsa_import
	sw	a0,-20(s0)
	.loc 5 125 56 discriminator 2
	lw	a5,-20(s0)
	bne	a5,zero,.L66
	.loc 5 132 16
	addi	a4,s0,-44
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	asn1_get_nonzero_mpi
	sw	a0,-20(s0)
	.loc 5 132 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L67
	.loc 5 133 16
	addi	a5,s0,-44
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,0
	lw	a0,-52(s0)
	call	mbedtls_rsa_import
	sw	a0,-20(s0)
	.loc 5 132 56 discriminator 2
	lw	a5,-20(s0)
	bne	a5,zero,.L67
	.loc 5 139 16
	addi	a4,s0,-44
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	asn1_get_nonzero_mpi
	sw	a0,-20(s0)
	.loc 5 139 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L68
	.loc 5 140 16
	addi	a4,s0,-44
	li	a5,0
	li	a3,0
	li	a2,0
	li	a1,0
	lw	a0,-52(s0)
	call	mbedtls_rsa_import
	sw	a0,-20(s0)
	.loc 5 139 56 discriminator 2
	lw	a5,-20(s0)
	bne	a5,zero,.L68
	.loc 5 146 16
	addi	a4,s0,-44
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	asn1_get_nonzero_mpi
	sw	a0,-20(s0)
	.loc 5 146 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L69
	.loc 5 147 16
	addi	a2,s0,-44
	li	a5,0
	li	a4,0
	li	a3,0
	li	a1,0
	lw	a0,-52(s0)
	call	mbedtls_rsa_import
	sw	a0,-20(s0)
	.loc 5 146 56 discriminator 2
	lw	a5,-20(s0)
	bne	a5,zero,.L69
	.loc 5 153 16
	addi	a4,s0,-44
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	asn1_get_nonzero_mpi
	sw	a0,-20(s0)
	.loc 5 153 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L70
	.loc 5 154 16
	addi	a3,s0,-44
	li	a5,0
	li	a4,0
	li	a2,0
	li	a1,0
	lw	a0,-52(s0)
	call	mbedtls_rsa_import
	sw	a0,-20(s0)
	.loc 5 153 56 discriminator 2
	lw	a5,-20(s0)
	bne	a5,zero,.L70
	.loc 5 172 16
	addi	a4,s0,-44
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	asn1_get_nonzero_mpi
	sw	a0,-20(s0)
	.loc 5 172 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L71
	.loc 5 173 16
	lw	a5,-52(s0)
	addi	a5,a5,48
	addi	a4,s0,-44
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 172 56 discriminator 2
	lw	a5,-20(s0)
	bne	a5,zero,.L71
	.loc 5 178 16
	addi	a4,s0,-44
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	asn1_get_nonzero_mpi
	sw	a0,-20(s0)
	.loc 5 178 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L72
	.loc 5 179 16
	lw	a5,-52(s0)
	addi	a5,a5,56
	addi	a4,s0,-44
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 178 56 discriminator 2
	lw	a5,-20(s0)
	bne	a5,zero,.L72
	.loc 5 184 16
	addi	a4,s0,-44
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	asn1_get_nonzero_mpi
	sw	a0,-20(s0)
	.loc 5 184 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L73
	.loc 5 185 16
	lw	a5,-52(s0)
	addi	a5,a5,64
	addi	a4,s0,-44
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 184 56 discriminator 2
	lw	a5,-20(s0)
	bne	a5,zero,.L73
	.loc 5 207 16
	lw	a0,-52(s0)
	call	mbedtls_rsa_complete
	sw	a0,-20(s0)
	.loc 5 207 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L74
	.loc 5 208 16
	lw	a0,-52(s0)
	call	mbedtls_rsa_check_pubkey
	sw	a0,-20(s0)
	.loc 5 207 48 discriminator 2
	lw	a5,-20(s0)
	bne	a5,zero,.L74
	.loc 5 212 11
	lw	a5,-36(s0)
	.loc 5 212 8
	lw	a4,-24(s0)
	beq	a4,a5,.L75
	.loc 5 213 13
	li	a5,-102
	sw	a5,-20(s0)
	j	.L47
.L66:
	.loc 5 128 9
	nop
	j	.L47
.L67:
	.loc 5 135 9
	nop
	j	.L47
.L68:
	.loc 5 142 9
	nop
	j	.L47
.L69:
	.loc 5 149 9
	nop
	j	.L47
.L70:
	.loc 5 156 9
	nop
	j	.L47
.L71:
	.loc 5 174 9
	nop
	j	.L47
.L72:
	.loc 5 180 9
	nop
	j	.L47
.L73:
	.loc 5 186 9
	nop
	j	.L47
.L74:
	.loc 5 209 9
	nop
	j	.L47
.L75:
	.loc 5 216 1
	nop
.L47:
	.loc 5 218 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 220 8
	lw	a5,-20(s0)
	beq	a5,zero,.L64
	.loc 5 221 9
	lw	a0,-52(s0)
	call	mbedtls_rsa_free
.L64:
	.loc 5 224 12
	lw	a5,-20(s0)
.L65:
	.loc 5 225 1
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
	.size	mbedtls_rsa_parse_key, .-mbedtls_rsa_parse_key
	.section	.text.mbedtls_rsa_parse_pubkey,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_parse_pubkey
	.type	mbedtls_rsa_parse_pubkey, @function
mbedtls_rsa_parse_pubkey:
.LFB100:
	.loc 5 228 1
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
	.loc 5 229 20
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	.loc 5 230 20
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 231 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 5 241 16
	addi	a4,s0,-32
	addi	a5,s0,-28
	li	a3,48
	mv	a2,a4
	lw	a1,-20(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-24(s0)
	.loc 5 241 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L77
	.loc 5 243 16
	lw	a5,-24(s0)
	j	.L87
.L77:
	.loc 5 246 18
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	.loc 5 246 8
	lw	a4,-20(s0)
	beq	a4,a5,.L79
	.loc 5 247 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L87
.L79:
	.loc 5 251 16
	addi	a4,s0,-32
	addi	a5,s0,-28
	li	a3,2
	mv	a2,a4
	lw	a1,-20(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-24(s0)
	.loc 5 251 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L80
	.loc 5 252 16
	lw	a5,-24(s0)
	j	.L87
.L80:
	.loc 5 255 16
	lw	a1,-28(s0)
	lw	a2,-32(s0)
	sw	zero,8(sp)
	sw	zero,4(sp)
	sw	zero,0(sp)
	li	a7,0
	li	a6,0
	li	a5,0
	li	a4,0
	li	a3,0
	lw	a0,-36(s0)
	call	mbedtls_rsa_import_raw
	sw	a0,-24(s0)
	.loc 5 255 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L81
	.loc 5 257 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L87
.L81:
	.loc 5 260 7
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 5 263 16
	addi	a4,s0,-32
	addi	a5,s0,-28
	li	a3,2
	mv	a2,a4
	lw	a1,-20(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-24(s0)
	.loc 5 263 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L82
	.loc 5 264 16
	lw	a5,-24(s0)
	j	.L87
.L82:
	.loc 5 267 16
	lw	a5,-28(s0)
	lw	a4,-32(s0)
	sw	a4,8(sp)
	sw	a5,4(sp)
	sw	zero,0(sp)
	li	a7,0
	li	a6,0
	li	a5,0
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_rsa_import_raw
	sw	a0,-24(s0)
	.loc 5 267 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L83
	.loc 5 269 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L87
.L83:
	.loc 5 272 7
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 5 274 9
	lw	a0,-36(s0)
	call	mbedtls_rsa_complete
	mv	a5,a0
	.loc 5 274 8 discriminator 1
	bne	a5,zero,.L84
	.loc 5 275 9
	lw	a0,-36(s0)
	call	mbedtls_rsa_check_pubkey
	mv	a5,a0
	.loc 5 274 40 discriminator 2
	beq	a5,zero,.L85
.L84:
	.loc 5 276 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L87
.L85:
	.loc 5 279 11
	lw	a5,-28(s0)
	.loc 5 279 8
	lw	a4,-20(s0)
	beq	a4,a5,.L86
	.loc 5 280 16
	li	a5,-102
	j	.L87
.L86:
	.loc 5 283 12
	li	a5,0
.L87:
	.loc 5 284 1
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
.LFE100:
	.size	mbedtls_rsa_parse_pubkey, .-mbedtls_rsa_parse_pubkey
	.section	.text.mbedtls_rsa_write_key,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_write_key
	.type	mbedtls_rsa_write_key, @function
mbedtls_rsa_write_key:
.LFB101:
	.loc 5 288 1
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
	.loc 5 289 12
	sw	zero,-20(s0)
	.loc 5 298 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 301 16
	addi	a5,s0,-32
	mv	a3,a5
	li	a2,0
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_rsa_export_crt
	sw	a0,-24(s0)
	.loc 5 301 8 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L112
	.loc 5 302 16
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	mbedtls_asn1_write_mpi
	sw	a0,-24(s0)
	.loc 5 301 65 discriminator 2
	lw	a5,-24(s0)
	blt	a5,zero,.L112
	.loc 5 305 9
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 308 16
	addi	a5,s0,-32
	li	a3,0
	mv	a2,a5
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_rsa_export_crt
	sw	a0,-24(s0)
	.loc 5 308 8 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L113
	.loc 5 309 16
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	mbedtls_asn1_write_mpi
	sw	a0,-24(s0)
	.loc 5 308 65 discriminator 2
	lw	a5,-24(s0)
	blt	a5,zero,.L113
	.loc 5 312 9
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 315 16
	addi	a5,s0,-32
	li	a3,0
	li	a2,0
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_rsa_export_crt
	sw	a0,-24(s0)
	.loc 5 315 8 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L114
	.loc 5 316 16
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	mbedtls_asn1_write_mpi
	sw	a0,-24(s0)
	.loc 5 315 65 discriminator 2
	lw	a5,-24(s0)
	blt	a5,zero,.L114
	.loc 5 319 9
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 322 16
	addi	a3,s0,-32
	li	a5,0
	li	a4,0
	li	a2,0
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_rsa_export
	sw	a0,-24(s0)
	.loc 5 322 8 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L115
	.loc 5 323 16
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	mbedtls_asn1_write_mpi
	sw	a0,-24(s0)
	.loc 5 322 73 discriminator 2
	lw	a5,-24(s0)
	blt	a5,zero,.L115
	.loc 5 326 9
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 329 16
	addi	a2,s0,-32
	li	a5,0
	li	a4,0
	li	a3,0
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_rsa_export
	sw	a0,-24(s0)
	.loc 5 329 8 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L116
	.loc 5 330 16
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	mbedtls_asn1_write_mpi
	sw	a0,-24(s0)
	.loc 5 329 73 discriminator 2
	lw	a5,-24(s0)
	blt	a5,zero,.L116
	.loc 5 333 9
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 336 16
	addi	a4,s0,-32
	li	a5,0
	li	a3,0
	li	a2,0
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_rsa_export
	sw	a0,-24(s0)
	.loc 5 336 8 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L117
	.loc 5 337 16
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	mbedtls_asn1_write_mpi
	sw	a0,-24(s0)
	.loc 5 336 73 discriminator 2
	lw	a5,-24(s0)
	blt	a5,zero,.L117
	.loc 5 340 9
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 343 16
	addi	a5,s0,-32
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_rsa_export
	sw	a0,-24(s0)
	.loc 5 343 8 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L118
	.loc 5 344 16
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	mbedtls_asn1_write_mpi
	sw	a0,-24(s0)
	.loc 5 343 73 discriminator 2
	lw	a5,-24(s0)
	blt	a5,zero,.L118
	.loc 5 347 9
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 350 16
	addi	a1,s0,-32
	li	a5,0
	li	a4,0
	li	a3,0
	li	a2,0
	lw	a0,-36(s0)
	call	mbedtls_rsa_export
	sw	a0,-24(s0)
	.loc 5 350 8 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L119
	.loc 5 351 16
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	mbedtls_asn1_write_mpi
	sw	a0,-24(s0)
	.loc 5 350 73 discriminator 2
	lw	a5,-24(s0)
	blt	a5,zero,.L119
	.loc 5 354 9
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	j	.L91
.L112:
	.loc 5 303 9
	nop
	j	.L91
.L113:
	.loc 5 310 9
	nop
	j	.L91
.L114:
	.loc 5 317 9
	nop
	j	.L91
.L115:
	.loc 5 324 9
	nop
	j	.L91
.L116:
	.loc 5 331 9
	nop
	j	.L91
.L117:
	.loc 5 338 9
	nop
	j	.L91
.L118:
	.loc 5 345 9
	nop
	j	.L91
.L119:
	.loc 5 352 9
	nop
.L91:
	.loc 5 358 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 359 8
	lw	a5,-24(s0)
	bge	a5,zero,.L106
	.loc 5 360 16
	lw	a5,-24(s0)
	j	.L111
.L106:
	.loc 5 363 22
	li	a2,0
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	mbedtls_asn1_write_int
	sw	a0,-24(s0)
	.loc 5 363 13 discriminator 1
	lw	a5,-24(s0)
	bge	a5,zero,.L108
	.loc 5 363 72 discriminator 2
	lw	a5,-24(s0)
	.loc 5 363 72 is_stmt 0
	j	.L111
.L108:
	.loc 5 363 88 is_stmt 1 discriminator 3
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 364 22
	lw	a2,-20(s0)
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	mbedtls_asn1_write_len
	sw	a0,-24(s0)
	.loc 5 364 13 discriminator 1
	lw	a5,-24(s0)
	bge	a5,zero,.L109
	.loc 5 364 74 discriminator 2
	lw	a5,-24(s0)
	.loc 5 364 74 is_stmt 0
	j	.L111
.L109:
	.loc 5 364 90 is_stmt 1 discriminator 3
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 365 22
	li	a2,48
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	mbedtls_asn1_write_tag
	sw	a0,-24(s0)
	.loc 5 365 13 discriminator 1
	lw	a5,-24(s0)
	bge	a5,zero,.L110
	.loc 5 365 82 discriminator 2
	lw	a5,-24(s0)
	.loc 5 365 82 is_stmt 0
	j	.L111
.L110:
	.loc 5 365 98 is_stmt 1 discriminator 3
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 369 12
	lw	a5,-20(s0)
.L111:
	.loc 5 370 1
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
	.size	mbedtls_rsa_write_key, .-mbedtls_rsa_write_key
	.section	.text.mbedtls_rsa_write_pubkey,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_write_pubkey
	.type	mbedtls_rsa_write_pubkey, @function
mbedtls_rsa_write_pubkey:
.LFB102:
	.loc 5 380 1
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
	.loc 5 381 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 382 12
	sw	zero,-24(s0)
	.loc 5 385 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 388 16
	addi	a5,s0,-32
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_rsa_export
	sw	a0,-20(s0)
	.loc 5 388 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L131
	.loc 5 389 16
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	mbedtls_asn1_write_mpi
	sw	a0,-20(s0)
	.loc 5 388 73 discriminator 2
	lw	a5,-20(s0)
	blt	a5,zero,.L131
	.loc 5 392 9
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 395 16
	addi	a1,s0,-32
	li	a5,0
	li	a4,0
	li	a3,0
	li	a2,0
	lw	a0,-36(s0)
	call	mbedtls_rsa_export
	sw	a0,-20(s0)
	.loc 5 395 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L132
	.loc 5 396 16
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	mbedtls_asn1_write_mpi
	sw	a0,-20(s0)
	.loc 5 395 73 discriminator 2
	lw	a5,-20(s0)
	blt	a5,zero,.L132
	.loc 5 399 9
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	j	.L123
.L131:
	.loc 5 390 9
	nop
	j	.L123
.L132:
	.loc 5 397 9
	nop
.L123:
	.loc 5 403 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 404 8
	lw	a5,-20(s0)
	bge	a5,zero,.L126
	.loc 5 405 16
	lw	a5,-20(s0)
	j	.L130
.L126:
	.loc 5 408 22
	lw	a2,-24(s0)
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	mbedtls_asn1_write_len
	sw	a0,-20(s0)
	.loc 5 408 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L128
	.loc 5 408 74 discriminator 2
	lw	a5,-20(s0)
	.loc 5 408 74 is_stmt 0
	j	.L130
.L128:
	.loc 5 408 90 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 409 22
	li	a2,48
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	mbedtls_asn1_write_tag
	sw	a0,-20(s0)
	.loc 5 409 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L129
	.loc 5 409 82 discriminator 2
	lw	a5,-20(s0)
	.loc 5 409 82 is_stmt 0
	j	.L130
.L129:
	.loc 5 409 98 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 412 12
	lw	a5,-24(s0)
.L130:
	.loc 5 413 1
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
.LFE102:
	.size	mbedtls_rsa_write_pubkey, .-mbedtls_rsa_write_pubkey
	.section	.text.mbedtls_ct_rsaes_pkcs1_v15_unpadding,"ax",@progbits
	.align	1
	.type	mbedtls_ct_rsaes_pkcs1_v15_unpadding, @function
mbedtls_ct_rsaes_pkcs1_v15_unpadding:
.LFB103:
	.loc 5 448 1
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
	.loc 5 449 9
	li	a5,-110
	sw	a5,-32(s0)
	.loc 5 462 12
	sw	zero,-24(s0)
	.loc 5 465 12
	sw	zero,-36(s0)
	.loc 5 468 49
	lw	a5,-72(s0)
	addi	a4,a5,-11
	.loc 5 468 24
	lw	a5,-80(s0)
	bleu	a5,a4,.L134
	mv	a5,a4
.L134:
	sw	a5,-40(s0)
	.loc 5 473 32
	lw	a5,-68(s0)
	lbu	a5,0(a5)
	.loc 5 473 11
	mv	a0,a5
	call	mbedtls_ct_bool
	sw	a0,-44(s0)
	.loc 5 478 59
	lw	a5,-68(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 5 478 11
	li	a1,2
	mv	a0,a5
	call	mbedtls_ct_uint_ne
	mv	a5,a0
	.loc 5 478 11 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-44(s0)
	call	mbedtls_ct_bool_or
	sw	a0,-44(s0)
	.loc 5 482 42 is_stmt 1
	li	a0,0
	call	mbedtls_ct_compiler_opaque
	sw	a0,-28(s0)
	.loc 5 483 12
	li	a5,2
	sw	a5,-20(s0)
	.loc 5 483 5
	j	.L135
.L136:
.LBB2:
	.loc 5 484 64
	lw	a4,-68(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 5 484 40
	li	a1,0
	mv	a0,a5
	call	mbedtls_ct_uint_eq
	sw	a0,-52(s0)
	.loc 5 485 20
	lw	a1,-52(s0)
	lw	a0,-28(s0)
	call	mbedtls_ct_bool_or
	sw	a0,-28(s0)
	.loc 5 486 22
	lw	a0,-28(s0)
	call	mbedtls_ct_bool_not
	mv	a5,a0
	.loc 5 486 22 is_stmt 0 discriminator 1
	li	a1,1
	mv	a0,a5
	call	mbedtls_ct_uint_if_else_0
	mv	a4,a0
	.loc 5 486 19 is_stmt 1 discriminator 2
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
.LBE2:
	.loc 5 483 28 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L135:
	.loc 5 483 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-72(s0)
	bltu	a4,a5,.L136
	.loc 5 490 11
	lw	a0,-28(s0)
	call	mbedtls_ct_bool_not
	mv	a5,a0
	.loc 5 490 11 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-44(s0)
	call	mbedtls_ct_bool_or
	sw	a0,-44(s0)
	.loc 5 493 11 is_stmt 1
	lw	a1,-24(s0)
	li	a0,8
	call	mbedtls_ct_uint_gt
	mv	a5,a0
	.loc 5 493 11 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-44(s0)
	call	mbedtls_ct_bool_or
	sw	a0,-44(s0)
	.loc 5 504 26 is_stmt 1
	lw	a4,-72(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 5 504 38
	addi	a5,a5,-3
	.loc 5 502 22
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	mbedtls_ct_uint_if
	sw	a0,-36(s0)
	.loc 5 508 24
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_ct_uint_gt
	sw	a0,-48(s0)
	.loc 5 516 11
	li	a5,-16384
	addi	a1,a5,-1024
	lw	a0,-48(s0)
	call	mbedtls_ct_error_if_else_0
	mv	a5,a0
	.loc 5 516 11 is_stmt 0 discriminator 1
	mv	a2,a5
	li	a5,-16384
	addi	a1,a5,-256
	lw	a0,-44(s0)
	call	mbedtls_ct_error_if
	sw	a0,-32(s0)
	.loc 5 528 5 is_stmt 1
	lw	a1,-48(s0)
	lw	a0,-44(s0)
	call	mbedtls_ct_bool_or
	mv	a3,a0
	.loc 5 528 76 discriminator 1
	lw	a5,-68(s0)
	addi	a4,a5,11
	.loc 5 528 5 discriminator 1
	lw	a5,-72(s0)
	addi	a5,a5,-11
	mv	a2,a5
	mv	a1,a4
	mv	a0,a3
	call	mbedtls_ct_zeroize_if
	.loc 5 534 22
	lw	a2,-36(s0)
	lw	a1,-40(s0)
	lw	a0,-48(s0)
	call	mbedtls_ct_uint_if
	sw	a0,-36(s0)
	.loc 5 544 42
	lw	a4,-72(s0)
	lw	a5,-40(s0)
	sub	a5,a4,a5
	lw	a4,-68(s0)
	add	a3,a4,a5
	.loc 5 544 5
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	mv	a2,a5
	lw	a1,-40(s0)
	mv	a0,a3
	call	mbedtls_ct_memmove_left
	.loc 5 555 8
	lw	a5,-80(s0)
	beq	a5,zero,.L137
	.loc 5 556 37
	lw	a4,-72(s0)
	lw	a5,-40(s0)
	sub	a5,a4,a5
	lw	a4,-68(s0)
	add	a5,a4,a5
	.loc 5 556 9
	lw	a2,-40(s0)
	mv	a1,a5
	lw	a0,-76(s0)
	call	memcpy
.L137:
	.loc 5 563 11
	lw	a5,-84(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 5 565 12
	lw	a5,-32(s0)
	.loc 5 566 1
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
.LFE103:
	.size	mbedtls_ct_rsaes_pkcs1_v15_unpadding, .-mbedtls_ct_rsaes_pkcs1_v15_unpadding
	.section	.rodata
	.align	2
.LC0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/rsa.c"
	.section	.text.mbedtls_rsa_import,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_import
	.type	mbedtls_rsa_import, @function
mbedtls_rsa_import:
.LFB104:
	.loc 5 576 1
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
	.loc 5 577 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 579 8
	lw	a5,-40(s0)
	beq	a5,zero,.L140
	.loc 5 579 29 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,8
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 579 19 discriminator 3
	lw	a5,-20(s0)
	bne	a5,zero,.L141
.L140:
	.loc 5 579 65 discriminator 4
	lw	a5,-44(s0)
	beq	a5,zero,.L142
	.loc 5 580 29
	lw	a5,-36(s0)
	addi	a5,a5,32
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 580 19 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L141
.L142:
	.loc 5 580 65 discriminator 2
	lw	a5,-48(s0)
	beq	a5,zero,.L143
	.loc 5 581 29
	lw	a5,-36(s0)
	addi	a5,a5,40
	lw	a1,-48(s0)
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 581 19 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L141
.L143:
	.loc 5 581 65 discriminator 2
	lw	a5,-52(s0)
	beq	a5,zero,.L144
	.loc 5 582 29
	lw	a5,-36(s0)
	addi	a5,a5,24
	lw	a1,-52(s0)
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 582 19 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L141
.L144:
	.loc 5 582 65 discriminator 2
	lw	a5,-56(s0)
	beq	a5,zero,.L145
	.loc 5 583 29
	lw	a5,-36(s0)
	addi	a5,a5,16
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 583 19 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L145
.L141:
	.loc 5 584 16
	li	a3,584
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,-128
	call	mbedtls_error_add
	mv	a5,a0
	j	.L146
.L145:
	.loc 5 587 8
	lw	a5,-40(s0)
	beq	a5,zero,.L147
	.loc 5 588 37
	lw	a5,-36(s0)
	addi	a5,a5,8
	.loc 5 588 20
	mv	a0,a5
	call	mbedtls_mpi_size
	mv	a4,a0
	.loc 5 588 18 discriminator 1
	lw	a5,-36(s0)
	sw	a4,4(a5)
.L147:
	.loc 5 591 12
	li	a5,0
.L146:
	.loc 5 592 1
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
	.size	mbedtls_rsa_import, .-mbedtls_rsa_import
	.section	.text.mbedtls_rsa_import_raw,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_import_raw
	.type	mbedtls_rsa_import_raw, @function
mbedtls_rsa_import_raw:
.LFB105:
	.loc 5 600 1
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
	.loc 5 601 9
	sw	zero,-20(s0)
	.loc 5 603 8
	lw	a5,-40(s0)
	beq	a5,zero,.L149
	.loc 5 604 26
	lw	a5,-36(s0)
	addi	a5,a5,8
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 5 604 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L157
	.loc 5 605 37
	lw	a5,-36(s0)
	addi	a5,a5,8
	.loc 5 605 20
	mv	a0,a5
	call	mbedtls_mpi_size
	mv	a4,a0
	.loc 5 605 18 discriminator 1
	lw	a5,-36(s0)
	sw	a4,4(a5)
.L149:
	.loc 5 608 8
	lw	a5,-48(s0)
	beq	a5,zero,.L152
	.loc 5 609 26
	lw	a5,-36(s0)
	addi	a5,a5,32
	lw	a2,-52(s0)
	lw	a1,-48(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 5 609 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L158
.L152:
	.loc 5 612 8
	lw	a5,-56(s0)
	beq	a5,zero,.L153
	.loc 5 613 26
	lw	a5,-36(s0)
	addi	a5,a5,40
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 5 613 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L159
.L153:
	.loc 5 616 8
	lw	a5,-64(s0)
	beq	a5,zero,.L154
	.loc 5 617 26
	lw	a5,-36(s0)
	addi	a5,a5,24
	lw	a2,0(s0)
	lw	a1,-64(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 5 617 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L160
.L154:
	.loc 5 620 8
	lw	a5,4(s0)
	beq	a5,zero,.L161
	.loc 5 621 26
	lw	a5,-36(s0)
	addi	a5,a5,16
	lw	a2,8(s0)
	lw	a1,4(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 5 624 1
	j	.L161
.L157:
	.loc 5 604 77
	nop
	j	.L151
.L158:
	.loc 5 609 77
	nop
	j	.L151
.L159:
	.loc 5 613 77
	nop
	j	.L151
.L160:
	.loc 5 617 77
	nop
	j	.L151
.L161:
	.loc 5 624 1
	nop
.L151:
	.loc 5 626 8
	lw	a5,-20(s0)
	beq	a5,zero,.L155
	.loc 5 627 16
	li	a3,627
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,-128
	call	mbedtls_error_add
	mv	a5,a0
	j	.L156
.L155:
	.loc 5 630 12
	li	a5,0
.L156:
	.loc 5 631 1
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
	.size	mbedtls_rsa_import_raw, .-mbedtls_rsa_import_raw
	.section	.text.rsa_check_context,"ax",@progbits
	.align	1
	.type	rsa_check_context, @function
rsa_check_context:
.LFB106:
	.loc 5 640 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	.loc 5 647 12
	lw	a5,-20(s0)
	lw	s1,4(a5)
	.loc 5 647 21
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_mpi_size
	mv	a5,a0
	.loc 5 647 8 discriminator 1
	bne	s1,a5,.L163
	.loc 5 648 12
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 5 647 47 discriminator 2
	li	a5,1024
	bleu	a4,a5,.L164
.L163:
	.loc 5 649 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L165
.L164:
	.loc 5 658 9
	lw	a5,-20(s0)
	addi	a5,a5,8
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 658 8 discriminator 1
	ble	a5,zero,.L166
	.loc 5 659 9
	lw	a5,-20(s0)
	addi	a5,a5,8
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_get_bit
	mv	a5,a0
	.loc 5 658 46 discriminator 2
	bne	a5,zero,.L167
.L166:
	.loc 5 660 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L165
.L167:
	.loc 5 667 8
	lw	a5,-24(s0)
	beq	a5,zero,.L168
	.loc 5 668 10
	lw	a5,-20(s0)
	addi	a5,a5,32
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 667 17 discriminator 1
	ble	a5,zero,.L169
	.loc 5 669 10
	lw	a5,-20(s0)
	addi	a5,a5,32
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_get_bit
	mv	a5,a0
	.loc 5 668 47
	beq	a5,zero,.L169
	.loc 5 670 10
	lw	a5,-20(s0)
	addi	a5,a5,40
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 669 47
	ble	a5,zero,.L169
	.loc 5 671 10
	lw	a5,-20(s0)
	addi	a5,a5,40
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_get_bit
	mv	a5,a0
	.loc 5 670 47
	bne	a5,zero,.L168
.L169:
	.loc 5 672 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L165
.L168:
	.loc 5 681 9
	lw	a5,-20(s0)
	addi	a5,a5,16
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 681 8 discriminator 1
	bgt	a5,zero,.L170
	.loc 5 682 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L165
.L170:
	.loc 5 692 8
	lw	a5,-24(s0)
	beq	a5,zero,.L171
	.loc 5 693 10
	lw	a5,-20(s0)
	addi	a5,a5,48
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 692 17 discriminator 1
	ble	a5,zero,.L172
	.loc 5 694 10
	lw	a5,-20(s0)
	addi	a5,a5,56
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 693 48
	bgt	a5,zero,.L171
.L172:
	.loc 5 695 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L165
.L171:
	.loc 5 713 8
	lw	a5,-24(s0)
	beq	a5,zero,.L173
	.loc 5 714 9
	lw	a5,-20(s0)
	addi	a5,a5,64
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 713 17 discriminator 1
	bgt	a5,zero,.L173
	.loc 5 715 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L165
.L173:
	.loc 5 719 12
	li	a5,0
.L165:
	.loc 5 720 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE106:
	.size	rsa_check_context, .-rsa_check_context
	.section	.text.mbedtls_rsa_complete,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_complete
	.type	mbedtls_rsa_complete, @function
mbedtls_rsa_complete:
.LFB107:
	.loc 5 723 1
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
	.loc 5 724 9
	sw	zero,-20(s0)
	.loc 5 731 35
	lw	a5,-84(s0)
	addi	a5,a5,8
	.loc 5 731 15
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 731 47 discriminator 1
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 5 731 12 discriminator 1
	sw	a5,-24(s0)
	.loc 5 732 35
	lw	a5,-84(s0)
	addi	a5,a5,32
	.loc 5 732 15
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 732 47 discriminator 1
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 5 732 12 discriminator 1
	sw	a5,-28(s0)
	.loc 5 733 35
	lw	a5,-84(s0)
	addi	a5,a5,40
	.loc 5 733 15
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 733 47 discriminator 1
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 5 733 12 discriminator 1
	sw	a5,-32(s0)
	.loc 5 734 35
	lw	a5,-84(s0)
	addi	a5,a5,24
	.loc 5 734 15
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 734 47 discriminator 1
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 5 734 12 discriminator 1
	sw	a5,-36(s0)
	.loc 5 735 35
	lw	a5,-84(s0)
	addi	a5,a5,16
	.loc 5 735 15
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 735 47 discriminator 1
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 5 735 12 discriminator 1
	sw	a5,-40(s0)
	.loc 5 738 36
	lw	a5,-84(s0)
	addi	a5,a5,48
	.loc 5 738 16
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 738 49 discriminator 1
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 5 738 13 discriminator 1
	sw	a5,-44(s0)
	.loc 5 739 36
	lw	a5,-84(s0)
	addi	a5,a5,56
	.loc 5 739 16
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 739 49 discriminator 1
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 5 739 13 discriminator 1
	sw	a5,-48(s0)
	.loc 5 740 36
	lw	a5,-84(s0)
	addi	a5,a5,64
	.loc 5 740 16
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 740 49 discriminator 1
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 5 740 13 discriminator 1
	sw	a5,-52(s0)
	.loc 5 753 44
	lw	a5,-28(s0)
	beq	a5,zero,.L175
	.loc 5 753 24 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L175
	.loc 5 753 34 discriminator 3
	lw	a5,-36(s0)
	beq	a5,zero,.L175
	.loc 5 753 44 discriminator 5
	lw	a5,-40(s0)
	beq	a5,zero,.L175
	.loc 5 753 44 is_stmt 0 discriminator 7
	li	a5,1
	.loc 5 753 44
	j	.L176
.L175:
	.loc 5 753 44 discriminator 8
	li	a5,0
.L176:
	.loc 5 753 15 is_stmt 1 discriminator 10
	sw	a5,-56(s0)
	.loc 5 754 57
	lw	a5,-24(s0)
	beq	a5,zero,.L177
	.loc 5 754 25 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L177
	.loc 5 754 36 discriminator 3
	lw	a5,-32(s0)
	bne	a5,zero,.L177
	.loc 5 754 47 discriminator 5
	lw	a5,-36(s0)
	beq	a5,zero,.L177
	.loc 5 754 57 discriminator 7
	lw	a5,-40(s0)
	beq	a5,zero,.L177
	.loc 5 754 57 is_stmt 0 discriminator 9
	li	a5,1
	.loc 5 754 57
	j	.L178
.L177:
	.loc 5 754 57 discriminator 10
	li	a5,0
.L178:
	.loc 5 754 16 is_stmt 1 discriminator 12
	sw	a5,-60(s0)
	.loc 5 755 45
	lw	a5,-28(s0)
	beq	a5,zero,.L179
	.loc 5 755 24 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L179
	.loc 5 755 34 discriminator 3
	lw	a5,-36(s0)
	bne	a5,zero,.L179
	.loc 5 755 45 discriminator 5
	lw	a5,-40(s0)
	beq	a5,zero,.L179
	.loc 5 755 45 is_stmt 0 discriminator 7
	li	a5,1
	.loc 5 755 45
	j	.L180
.L179:
	.loc 5 755 45 discriminator 8
	li	a5,0
.L180:
	.loc 5 755 15 is_stmt 1 discriminator 10
	sw	a5,-64(s0)
	.loc 5 756 54
	lw	a5,-24(s0)
	beq	a5,zero,.L181
	.loc 5 756 21 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L181
	.loc 5 756 32 discriminator 3
	lw	a5,-32(s0)
	bne	a5,zero,.L181
	.loc 5 756 43 discriminator 5
	lw	a5,-36(s0)
	bne	a5,zero,.L181
	.loc 5 756 54 discriminator 7
	lw	a5,-40(s0)
	beq	a5,zero,.L181
	.loc 5 756 54 is_stmt 0 discriminator 9
	li	a5,1
	.loc 5 756 54
	j	.L182
.L181:
	.loc 5 756 54 discriminator 10
	li	a5,0
.L182:
	.loc 5 756 12 is_stmt 1 discriminator 12
	sw	a5,-68(s0)
	.loc 5 759 39
	lw	a5,-56(s0)
	bne	a5,zero,.L183
	.loc 5 759 25 discriminator 2
	lw	a5,-60(s0)
	bne	a5,zero,.L183
	.loc 5 759 39 discriminator 4
	lw	a5,-64(s0)
	beq	a5,zero,.L184
.L183:
	.loc 5 759 39 is_stmt 0 discriminator 5
	li	a5,1
	.loc 5 759 39
	j	.L185
.L184:
	.loc 5 759 39 discriminator 6
	li	a5,0
.L185:
	.loc 5 759 13 is_stmt 1 discriminator 8
	sw	a5,-72(s0)
	.loc 5 761 8
	lw	a5,-72(s0)
	bne	a5,zero,.L186
	.loc 5 761 18 discriminator 1
	lw	a5,-68(s0)
	bne	a5,zero,.L186
	.loc 5 762 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L187
.L186:
	.loc 5 769 8
	lw	a5,-24(s0)
	bne	a5,zero,.L188
	.loc 5 769 17 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L188
	.loc 5 769 27 discriminator 2
	lw	a5,-32(s0)
	beq	a5,zero,.L188
	.loc 5 770 20
	lw	a5,-84(s0)
	addi	a4,a5,8
	.loc 5 770 49
	lw	a5,-84(s0)
	addi	a3,a5,32
	.loc 5 771 40
	lw	a5,-84(s0)
	addi	a5,a5,40
	.loc 5 770 20
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 5 770 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L189
	.loc 5 772 20
	li	a3,772
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,-128
	call	mbedtls_error_add
	mv	a5,a0
	j	.L187
.L189:
	.loc 5 775 37
	lw	a5,-84(s0)
	addi	a5,a5,8
	.loc 5 775 20
	mv	a0,a5
	call	mbedtls_mpi_size
	mv	a4,a0
	.loc 5 775 18 discriminator 1
	lw	a5,-84(s0)
	sw	a4,4(a5)
.L188:
	.loc 5 782 8
	lw	a5,-60(s0)
	beq	a5,zero,.L190
	.loc 5 783 41
	lw	a5,-84(s0)
	addi	a0,a5,8
	.loc 5 783 50
	lw	a5,-84(s0)
	addi	a1,a5,16
	.loc 5 783 59
	lw	a5,-84(s0)
	addi	a2,a5,24
	.loc 5 783 15
	lw	a5,-84(s0)
	addi	a3,a5,32
	lw	a5,-84(s0)
	addi	a5,a5,40
	mv	a4,a5
	call	mbedtls_rsa_deduce_primes
	sw	a0,-20(s0)
	.loc 5 785 12
	lw	a5,-20(s0)
	beq	a5,zero,.L191
	.loc 5 786 20
	li	a3,786
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,-128
	call	mbedtls_error_add
	mv	a5,a0
	j	.L187
.L190:
	.loc 5 789 15
	lw	a5,-64(s0)
	beq	a5,zero,.L191
	.loc 5 790 56
	lw	a5,-84(s0)
	addi	a4,a5,32
	.loc 5 791 56
	lw	a5,-84(s0)
	addi	a1,a5,40
	.loc 5 792 56
	lw	a5,-84(s0)
	addi	a2,a5,16
	.loc 5 790 20
	lw	a5,-84(s0)
	addi	a5,a5,24
	mv	a3,a5
	mv	a0,a4
	call	mbedtls_rsa_deduce_private_exponent
	sw	a0,-20(s0)
	.loc 5 790 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L191
	.loc 5 794 20
	li	a3,794
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,-128
	call	mbedtls_error_add
	mv	a5,a0
	j	.L187
.L191:
	.loc 5 804 8
	lw	a5,-72(s0)
	beq	a5,zero,.L192
	.loc 5 804 17 discriminator 1
	lw	a5,-44(s0)
	beq	a5,zero,.L193
	.loc 5 804 30 discriminator 2
	lw	a5,-48(s0)
	beq	a5,zero,.L193
	.loc 5 804 20 discriminator 3
	lw	a5,-52(s0)
	bne	a5,zero,.L192
.L193:
	.loc 5 805 38
	lw	a5,-84(s0)
	addi	a0,a5,32
	.loc 5 805 47
	lw	a5,-84(s0)
	addi	a1,a5,40
	.loc 5 805 56
	lw	a5,-84(s0)
	addi	a2,a5,24
	.loc 5 805 15
	lw	a5,-84(s0)
	addi	a3,a5,48
	lw	a5,-84(s0)
	addi	a4,a5,56
	lw	a5,-84(s0)
	addi	a5,a5,64
	call	mbedtls_rsa_deduce_crt
	sw	a0,-20(s0)
	.loc 5 807 12
	lw	a5,-20(s0)
	beq	a5,zero,.L192
	.loc 5 808 20
	li	a3,808
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,-128
	call	mbedtls_error_add
	mv	a5,a0
	j	.L187
.L192:
	.loc 5 817 12
	li	a2,1
	lw	a1,-72(s0)
	lw	a0,-84(s0)
	call	rsa_check_context
	mv	a5,a0
.L187:
	.loc 5 818 1
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
.LFE107:
	.size	mbedtls_rsa_complete, .-mbedtls_rsa_complete
	.section	.text.mbedtls_rsa_export_raw,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_export_raw
	.type	mbedtls_rsa_export_raw, @function
mbedtls_rsa_export_raw:
.LFB108:
	.loc 5 826 1
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
	.loc 5 827 9
	sw	zero,-20(s0)
	.loc 5 832 9
	lw	a5,-36(s0)
	addi	a5,a5,8
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 835 46
	beq	a5,zero,.L195
	.loc 5 833 9
	lw	a5,-36(s0)
	addi	a5,a5,32
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 832 46
	beq	a5,zero,.L195
	.loc 5 834 9
	lw	a5,-36(s0)
	addi	a5,a5,40
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 833 46
	beq	a5,zero,.L195
	.loc 5 835 9
	lw	a5,-36(s0)
	addi	a5,a5,24
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 834 46
	beq	a5,zero,.L195
	.loc 5 836 9
	lw	a5,-36(s0)
	addi	a5,a5,16
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 835 46 discriminator 4
	beq	a5,zero,.L195
	.loc 5 835 46 is_stmt 0 discriminator 3
	li	a5,1
	.loc 5 835 46
	j	.L196
.L195:
	.loc 5 835 46 discriminator 1
	li	a5,0
.L196:
	.loc 5 831 13 is_stmt 1
	sw	a5,-24(s0)
	.loc 5 838 8
	lw	a5,-24(s0)
	bne	a5,zero,.L197
	.loc 5 841 12
	lw	a5,-48(s0)
	bne	a5,zero,.L198
	.loc 5 841 22 discriminator 1
	lw	a5,-56(s0)
	bne	a5,zero,.L198
	.loc 5 841 35 discriminator 2
	lw	a5,-64(s0)
	beq	a5,zero,.L197
.L198:
	.loc 5 842 20
	li	a5,-16384
	addi	a5,a5,-128
	j	.L199
.L197:
	.loc 5 847 8
	lw	a5,-40(s0)
	beq	a5,zero,.L200
	.loc 5 848 26
	lw	a5,-36(s0)
	addi	a5,a5,8
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 5 848 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L205
.L200:
	.loc 5 851 8
	lw	a5,-48(s0)
	beq	a5,zero,.L202
	.loc 5 852 26
	lw	a5,-36(s0)
	addi	a5,a5,32
	lw	a2,-52(s0)
	lw	a1,-48(s0)
	mv	a0,a5
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 5 852 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L206
.L202:
	.loc 5 855 8
	lw	a5,-56(s0)
	beq	a5,zero,.L203
	.loc 5 856 26
	lw	a5,-36(s0)
	addi	a5,a5,40
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 5 856 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L207
.L203:
	.loc 5 859 8
	lw	a5,-64(s0)
	beq	a5,zero,.L204
	.loc 5 860 26
	lw	a5,-36(s0)
	addi	a5,a5,24
	lw	a2,0(s0)
	lw	a1,-64(s0)
	mv	a0,a5
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 5 860 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L208
.L204:
	.loc 5 863 8
	lw	a5,4(s0)
	beq	a5,zero,.L209
	.loc 5 864 26
	lw	a5,-36(s0)
	addi	a5,a5,16
	lw	a2,8(s0)
	lw	a1,4(s0)
	mv	a0,a5
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 5 867 1
	j	.L209
.L205:
	.loc 5 848 78
	nop
	j	.L201
.L206:
	.loc 5 852 78
	nop
	j	.L201
.L207:
	.loc 5 856 78
	nop
	j	.L201
.L208:
	.loc 5 860 78
	nop
	j	.L201
.L209:
	.loc 5 867 1
	nop
.L201:
	.loc 5 869 12
	lw	a5,-20(s0)
.L199:
	.loc 5 870 1
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
.LFE108:
	.size	mbedtls_rsa_export_raw, .-mbedtls_rsa_export_raw
	.section	.text.mbedtls_rsa_export,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_export
	.type	mbedtls_rsa_export, @function
mbedtls_rsa_export:
.LFB109:
	.loc 5 875 1
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
	.loc 5 876 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 881 9
	lw	a5,-36(s0)
	addi	a5,a5,8
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 884 46
	beq	a5,zero,.L211
	.loc 5 882 9
	lw	a5,-36(s0)
	addi	a5,a5,32
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 881 46
	beq	a5,zero,.L211
	.loc 5 883 9
	lw	a5,-36(s0)
	addi	a5,a5,40
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 882 46
	beq	a5,zero,.L211
	.loc 5 884 9
	lw	a5,-36(s0)
	addi	a5,a5,24
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 883 46
	beq	a5,zero,.L211
	.loc 5 885 9
	lw	a5,-36(s0)
	addi	a5,a5,16
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 884 46 discriminator 4
	beq	a5,zero,.L211
	.loc 5 884 46 is_stmt 0 discriminator 3
	li	a5,1
	.loc 5 884 46
	j	.L212
.L211:
	.loc 5 884 46 discriminator 1
	li	a5,0
.L212:
	.loc 5 880 13 is_stmt 1
	sw	a5,-24(s0)
	.loc 5 887 8
	lw	a5,-24(s0)
	bne	a5,zero,.L213
	.loc 5 890 12
	lw	a5,-44(s0)
	bne	a5,zero,.L214
	.loc 5 890 22 discriminator 1
	lw	a5,-48(s0)
	bne	a5,zero,.L214
	.loc 5 890 35 discriminator 2
	lw	a5,-52(s0)
	beq	a5,zero,.L213
.L214:
	.loc 5 891 20
	li	a5,-16384
	addi	a5,a5,-128
	j	.L215
.L213:
	.loc 5 898 8
	lw	a5,-40(s0)
	beq	a5,zero,.L216
	.loc 5 898 29 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,8
	mv	a1,a5
	lw	a0,-40(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 898 19 discriminator 3
	lw	a5,-20(s0)
	bne	a5,zero,.L217
.L216:
	.loc 5 898 65 discriminator 4
	lw	a5,-44(s0)
	beq	a5,zero,.L218
	.loc 5 899 29
	lw	a5,-36(s0)
	addi	a5,a5,32
	mv	a1,a5
	lw	a0,-44(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 899 19 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L217
.L218:
	.loc 5 899 65 discriminator 2
	lw	a5,-48(s0)
	beq	a5,zero,.L219
	.loc 5 900 29
	lw	a5,-36(s0)
	addi	a5,a5,40
	mv	a1,a5
	lw	a0,-48(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 900 19 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L217
.L219:
	.loc 5 900 65 discriminator 2
	lw	a5,-52(s0)
	beq	a5,zero,.L220
	.loc 5 901 29
	lw	a5,-36(s0)
	addi	a5,a5,24
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 901 19 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L217
.L220:
	.loc 5 901 65 discriminator 2
	lw	a5,-56(s0)
	beq	a5,zero,.L221
	.loc 5 902 29
	lw	a5,-36(s0)
	addi	a5,a5,16
	mv	a1,a5
	lw	a0,-56(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 902 19 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L221
.L217:
	.loc 5 903 16
	lw	a5,-20(s0)
	j	.L215
.L221:
	.loc 5 906 12
	li	a5,0
.L215:
	.loc 5 907 1
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
.LFE109:
	.size	mbedtls_rsa_export, .-mbedtls_rsa_export
	.section	.text.mbedtls_rsa_export_crt,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_export_crt
	.type	mbedtls_rsa_export_crt, @function
mbedtls_rsa_export_crt:
.LFB110:
	.loc 5 917 1
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
	.loc 5 918 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 923 9
	lw	a5,-36(s0)
	addi	a5,a5,8
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 926 46
	beq	a5,zero,.L223
	.loc 5 924 9
	lw	a5,-36(s0)
	addi	a5,a5,32
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 923 46
	beq	a5,zero,.L223
	.loc 5 925 9
	lw	a5,-36(s0)
	addi	a5,a5,40
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 924 46
	beq	a5,zero,.L223
	.loc 5 926 9
	lw	a5,-36(s0)
	addi	a5,a5,24
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 925 46
	beq	a5,zero,.L223
	.loc 5 927 9
	lw	a5,-36(s0)
	addi	a5,a5,16
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 926 46 discriminator 4
	beq	a5,zero,.L223
	.loc 5 926 46 is_stmt 0 discriminator 3
	li	a5,1
	.loc 5 926 46
	j	.L224
.L223:
	.loc 5 926 46 discriminator 1
	li	a5,0
.L224:
	.loc 5 922 13 is_stmt 1
	sw	a5,-24(s0)
	.loc 5 929 8
	lw	a5,-24(s0)
	bne	a5,zero,.L225
	.loc 5 930 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L226
.L225:
	.loc 5 935 8
	lw	a5,-40(s0)
	beq	a5,zero,.L227
	.loc 5 935 30 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,48
	mv	a1,a5
	lw	a0,-40(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 935 20 discriminator 3
	lw	a5,-20(s0)
	bne	a5,zero,.L228
.L227:
	.loc 5 935 68 discriminator 4
	lw	a5,-44(s0)
	beq	a5,zero,.L229
	.loc 5 936 30
	lw	a5,-36(s0)
	addi	a5,a5,56
	mv	a1,a5
	lw	a0,-44(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 936 20 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L228
.L229:
	.loc 5 936 68 discriminator 2
	lw	a5,-48(s0)
	beq	a5,zero,.L230
	.loc 5 937 30
	lw	a5,-36(s0)
	addi	a5,a5,64
	mv	a1,a5
	lw	a0,-48(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 937 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L230
.L228:
	.loc 5 938 16
	li	a3,938
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,-128
	call	mbedtls_error_add
	mv	a5,a0
	j	.L226
.L230:
	.loc 5 947 12
	li	a5,0
.L226:
	.loc 5 948 1
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
	.size	mbedtls_rsa_export_crt, .-mbedtls_rsa_export_crt
	.section	.text.mbedtls_rsa_init,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_init
	.type	mbedtls_rsa_init, @function
mbedtls_rsa_init:
.LFB111:
	.loc 5 954 1
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
	.loc 5 955 5
	li	a2,120
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 5 957 18
	lw	a5,-20(s0)
	sw	zero,112(a5)
	.loc 5 958 18
	lw	a5,-20(s0)
	sw	zero,116(a5)
	.loc 5 966 1
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
.LFE111:
	.size	mbedtls_rsa_init, .-mbedtls_rsa_init
	.section	.text.mbedtls_rsa_set_padding,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_set_padding
	.type	mbedtls_rsa_set_padding, @function
mbedtls_rsa_set_padding:
.LFB112:
	.loc 5 973 1
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
	mv	a5,a2
	sb	a5,-25(s0)
	.loc 5 974 5
	lw	a5,-24(s0)
	beq	a5,zero,.L239
	lw	a4,-24(s0)
	li	a5,1
	beq	a4,a5,.L240
	.loc 5 985 20
	li	a5,-16384
	addi	a5,a5,-256
	j	.L237
.L239:
	.loc 5 977 13
	nop
	j	.L236
.L240:
	.loc 5 982 13
	nop
.L236:
	.loc 5 989 8
	lw	a4,-24(s0)
	li	a5,1
	bne	a4,a5,.L238
	.loc 5 989 24 discriminator 1
	lbu	a5,-25(s0)
	beq	a5,zero,.L238
	.loc 5 992 13
	lbu	a5,-25(s0)
	mv	a0,a5
	call	mbedtls_md_info_from_type
	mv	a5,a0
	.loc 5 992 12 discriminator 1
	bne	a5,zero,.L238
	.loc 5 993 20
	li	a5,-16384
	addi	a5,a5,-256
	j	.L237
.L238:
	.loc 5 998 18
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,112(a5)
	.loc 5 999 18
	lbu	a4,-25(s0)
	lw	a5,-20(s0)
	sw	a4,116(a5)
	.loc 5 1001 12
	li	a5,0
.L237:
	.loc 5 1002 1
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
.LFE112:
	.size	mbedtls_rsa_set_padding, .-mbedtls_rsa_set_padding
	.section	.text.mbedtls_rsa_get_padding_mode,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_get_padding_mode
	.type	mbedtls_rsa_get_padding_mode, @function
mbedtls_rsa_get_padding_mode:
.LFB113:
	.loc 5 1008 1
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
	.loc 5 1009 15
	lw	a5,-20(s0)
	lw	a5,112(a5)
	.loc 5 1010 1
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
.LFE113:
	.size	mbedtls_rsa_get_padding_mode, .-mbedtls_rsa_get_padding_mode
	.section	.text.mbedtls_rsa_get_md_alg,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_get_md_alg
	.type	mbedtls_rsa_get_md_alg, @function
mbedtls_rsa_get_md_alg:
.LFB114:
	.loc 5 1016 1
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
	.loc 5 1017 15
	lw	a5,-20(s0)
	lw	a5,116(a5)
	.loc 5 1018 1
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
.LFE114:
	.size	mbedtls_rsa_get_md_alg, .-mbedtls_rsa_get_md_alg
	.section	.text.mbedtls_rsa_get_bitlen,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_get_bitlen
	.type	mbedtls_rsa_get_bitlen, @function
mbedtls_rsa_get_bitlen:
.LFB115:
	.loc 5 1024 1
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
	.loc 5 1025 12
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	mv	a5,a0
	.loc 5 1026 1
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
.LFE115:
	.size	mbedtls_rsa_get_bitlen, .-mbedtls_rsa_get_bitlen
	.section	.text.mbedtls_rsa_get_len,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_get_len
	.type	mbedtls_rsa_get_len, @function
mbedtls_rsa_get_len:
.LFB116:
	.loc 5 1032 1
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
	.loc 5 1033 15
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 5 1034 1
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
.LFE116:
	.size	mbedtls_rsa_get_len, .-mbedtls_rsa_get_len
	.section	.text.mbedtls_rsa_gen_key,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_gen_key
	.type	mbedtls_rsa_gen_key, @function
mbedtls_rsa_gen_key:
.LFB117:
	.loc 5 1048 1
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
	.loc 5 1049 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 1051 9
	sw	zero,-24(s0)
	.loc 5 1058 8
	lw	a4,-48(s0)
	li	a5,1024
	bleu	a4,a5,.L250
	.loc 5 1059 23
	li	a5,2
	sw	a5,-24(s0)
.L250:
	.loc 5 1062 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 1064 8
	lw	a4,-52(s0)
	li	a5,2
	ble	a4,a5,.L251
	.loc 5 1064 31 discriminator 1
	lw	a5,-48(s0)
	andi	a5,a5,1
	.loc 5 1064 22 discriminator 1
	beq	a5,zero,.L252
.L251:
	.loc 5 1065 13
	li	a5,-16384
	addi	a5,a5,-128
	sw	a5,-20(s0)
	.loc 5 1066 9
	j	.L253
.L252:
	.loc 5 1069 8
	lw	a4,-48(s0)
	li	a5,1023
	bgtu	a4,a5,.L254
	.loc 5 1070 13
	li	a5,-16384
	addi	a5,a5,-128
	sw	a5,-20(s0)
	.loc 5 1071 9
	j	.L253
.L254:
	.loc 5 1080 22
	lw	a5,-36(s0)
	addi	a5,a5,16
	lw	a1,-52(s0)
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 5 1080 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L274
.L255:
	.loc 5 1083 26
	lw	a5,-36(s0)
	addi	a0,a5,32
	.loc 5 1083 63
	lw	a5,-48(s0)
	srli	a5,a5,1
	.loc 5 1083 26
	lw	a4,-44(s0)
	lw	a3,-40(s0)
	lw	a2,-24(s0)
	mv	a1,a5
	call	mbedtls_mpi_gen_prime
	sw	a0,-20(s0)
	.loc 5 1083 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L275
	.loc 5 1086 26
	lw	a5,-36(s0)
	addi	a0,a5,40
	.loc 5 1086 63
	lw	a5,-48(s0)
	srli	a5,a5,1
	.loc 5 1086 26
	lw	a4,-44(s0)
	lw	a3,-40(s0)
	lw	a2,-24(s0)
	mv	a1,a5
	call	mbedtls_mpi_gen_prime
	sw	a0,-20(s0)
	.loc 5 1086 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L276
	.loc 5 1090 50
	lw	a5,-36(s0)
	addi	a4,a5,32
	.loc 5 1090 59
	lw	a5,-36(s0)
	addi	a3,a5,40
	.loc 5 1090 26
	addi	a5,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_mpi
	sw	a0,-20(s0)
	.loc 5 1090 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L277
	.loc 5 1091 13
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	mv	a3,a0
	.loc 5 1091 77 discriminator 1
	lw	a4,-48(s0)
	li	a5,199
	bleu	a4,a5,.L259
	.loc 5 1091 65 discriminator 2
	lw	a5,-48(s0)
	srli	a5,a5,1
	.loc 5 1091 77 discriminator 2
	addi	a5,a5,-99
	j	.L260
.L259:
	.loc 5 1091 77 is_stmt 0 discriminator 3
	li	a5,0
.L260:
	.loc 5 1091 12 is_stmt 1 discriminator 5
	bgeu	a5,a3,.L278
	.loc 5 1096 14
	lh	a5,-28(s0)
	.loc 5 1096 12
	bge	a5,zero,.L263
	.loc 5 1097 13
	lw	a5,-36(s0)
	addi	a4,a5,32
	lw	a5,-36(s0)
	addi	a5,a5,40
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_swap
.L263:
	.loc 5 1102 51
	lw	a5,-36(s0)
	addi	a4,a5,32
	.loc 5 1102 60
	lw	a5,-36(s0)
	addi	a1,a5,40
	.loc 5 1102 69
	lw	a5,-36(s0)
	addi	a2,a5,16
	.loc 5 1102 15
	lw	a5,-36(s0)
	addi	a5,a5,24
	mv	a3,a5
	mv	a0,a4
	call	mbedtls_rsa_deduce_private_exponent
	sw	a0,-20(s0)
	.loc 5 1103 12
	lw	a4,-20(s0)
	li	a5,-14
	bne	a4,a5,.L264
	.loc 5 1104 13
	lw	a5,-36(s0)
	addi	a5,a5,24
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_lset
	.loc 5 1105 13
	j	.L262
.L264:
	.loc 5 1107 12
	lw	a5,-20(s0)
	bne	a5,zero,.L279
	.loc 5 1112 32
	lw	a5,-36(s0)
	addi	a5,a5,24
	.loc 5 1112 13
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	mv	a4,a0
	.loc 5 1112 52 discriminator 1
	lw	a5,-48(s0)
	addi	a5,a5,1
	.loc 5 1112 57 discriminator 1
	srli	a5,a5,1
	.loc 5 1112 12 discriminator 1
	bgtu	a4,a5,.L280
	.loc 5 1113 13
	j	.L262
.L278:
	.loc 5 1092 13
	nop
.L262:
	.loc 5 1083 17
	j	.L255
.L280:
	.loc 5 1116 9
	nop
	.loc 5 1121 22
	lw	a5,-36(s0)
	addi	a4,a5,8
	.loc 5 1121 51
	lw	a5,-36(s0)
	addi	a3,a5,32
	.loc 5 1121 60
	lw	a5,-36(s0)
	addi	a5,a5,40
	.loc 5 1121 22
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 5 1121 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L281
	.loc 5 1122 33
	lw	a5,-36(s0)
	addi	a5,a5,8
	.loc 5 1122 16
	mv	a0,a5
	call	mbedtls_mpi_size
	mv	a4,a0
	.loc 5 1122 14 discriminator 1
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 5 1130 45
	lw	a5,-36(s0)
	addi	a0,a5,32
	.loc 5 1130 54
	lw	a5,-36(s0)
	addi	a1,a5,40
	.loc 5 1130 63
	lw	a5,-36(s0)
	addi	a2,a5,24
	.loc 5 1130 22
	lw	a5,-36(s0)
	addi	a3,a5,48
	lw	a5,-36(s0)
	addi	a4,a5,56
	lw	a5,-36(s0)
	addi	a5,a5,64
	call	mbedtls_rsa_deduce_crt
	sw	a0,-20(s0)
	.loc 5 1130 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L282
	.loc 5 1135 22
	lw	a0,-36(s0)
	call	mbedtls_rsa_check_privkey
	sw	a0,-20(s0)
	.loc 5 1137 1
	j	.L253
.L274:
	.loc 5 1080 66
	nop
	j	.L253
.L275:
	.loc 5 1083 106
	nop
	j	.L253
.L276:
	.loc 5 1086 106
	nop
	j	.L253
.L277:
	.loc 5 1090 76
	nop
	j	.L253
.L279:
	.loc 5 1108 13
	nop
	j	.L253
.L281:
	.loc 5 1121 77
	nop
	j	.L253
.L282:
	.loc 5 1130 110
	nop
.L253:
	.loc 5 1139 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 1141 8
	lw	a5,-20(s0)
	beq	a5,zero,.L270
	.loc 5 1142 9
	lw	a0,-36(s0)
	call	mbedtls_rsa_free
	.loc 5 1144 14
	lw	a5,-20(s0)
	neg	a5,a5
	.loc 5 1144 28
	mv	a4,a5
	.loc 5 1144 12
	li	a5,127
	bgtu	a4,a5,.L271
	.loc 5 1145 19
	li	a3,1145
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,-384
	call	mbedtls_error_add
	sw	a0,-20(s0)
.L271:
	.loc 5 1147 16
	lw	a5,-20(s0)
	j	.L273
.L270:
	.loc 5 1150 12
	li	a5,0
.L273:
	.loc 5 1151 1
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
.LFE117:
	.size	mbedtls_rsa_gen_key, .-mbedtls_rsa_gen_key
	.section	.text.mbedtls_rsa_check_pubkey,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_check_pubkey
	.type	mbedtls_rsa_check_pubkey, @function
mbedtls_rsa_check_pubkey:
.LFB118:
	.loc 5 1159 1
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
	.loc 5 1160 9
	li	a2,0
	li	a1,0
	lw	a0,-20(s0)
	call	rsa_check_context
	mv	a5,a0
	.loc 5 1160 8 discriminator 1
	beq	a5,zero,.L284
	.loc 5 1161 16
	li	a5,-16384
	addi	a5,a5,-512
	j	.L285
.L284:
	.loc 5 1164 9
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	mv	a4,a0
	.loc 5 1164 8 discriminator 1
	li	a5,127
	bgtu	a4,a5,.L286
	.loc 5 1165 16
	li	a5,-16384
	addi	a5,a5,-512
	j	.L285
.L286:
	.loc 5 1168 9
	lw	a5,-20(s0)
	addi	a5,a5,16
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_get_bit
	mv	a5,a0
	.loc 5 1168 8 discriminator 1
	beq	a5,zero,.L287
	.loc 5 1169 9
	lw	a5,-20(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	mv	a4,a0
	.loc 5 1168 46 discriminator 2
	li	a5,1
	bleu	a4,a5,.L287
	.loc 5 1170 9
	lw	a5,-20(s0)
	addi	a4,a5,16
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 5 1169 41
	blt	a5,zero,.L288
.L287:
	.loc 5 1171 16
	li	a5,-16384
	addi	a5,a5,-512
	j	.L285
.L288:
	.loc 5 1174 12
	li	a5,0
.L285:
	.loc 5 1175 1
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
.LFE118:
	.size	mbedtls_rsa_check_pubkey, .-mbedtls_rsa_check_pubkey
	.section	.text.mbedtls_rsa_check_privkey,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_check_privkey
	.type	mbedtls_rsa_check_privkey, @function
mbedtls_rsa_check_privkey:
.LFB119:
	.loc 5 1181 1
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
	.loc 5 1182 9
	lw	a0,-20(s0)
	call	mbedtls_rsa_check_pubkey
	mv	a5,a0
	.loc 5 1182 8 discriminator 1
	bne	a5,zero,.L290
	.loc 5 1183 9
	li	a2,1
	li	a1,1
	lw	a0,-20(s0)
	call	rsa_check_context
	mv	a5,a0
	.loc 5 1182 44 discriminator 2
	beq	a5,zero,.L291
.L290:
	.loc 5 1184 16
	li	a5,-16384
	addi	a5,a5,-512
	j	.L292
.L291:
	.loc 5 1187 9
	lw	a5,-20(s0)
	addi	a0,a5,8
	lw	a5,-20(s0)
	addi	a1,a5,32
	lw	a5,-20(s0)
	addi	a2,a5,40
	lw	a5,-20(s0)
	addi	a3,a5,24
	lw	a5,-20(s0)
	addi	a4,a5,16
	li	a6,0
	li	a5,0
	call	mbedtls_rsa_validate_params
	mv	a5,a0
	.loc 5 1187 8 discriminator 1
	beq	a5,zero,.L293
	.loc 5 1189 16
	li	a5,-16384
	addi	a5,a5,-512
	j	.L292
.L293:
	.loc 5 1193 14
	lw	a5,-20(s0)
	addi	a0,a5,32
	lw	a5,-20(s0)
	addi	a1,a5,40
	lw	a5,-20(s0)
	addi	a2,a5,24
	lw	a5,-20(s0)
	addi	a3,a5,48
	lw	a5,-20(s0)
	addi	a4,a5,56
	lw	a5,-20(s0)
	addi	a5,a5,64
	call	mbedtls_rsa_validate_crt
	mv	a5,a0
	.loc 5 1193 13 discriminator 1
	beq	a5,zero,.L294
	.loc 5 1195 16
	li	a5,-16384
	addi	a5,a5,-512
	j	.L292
.L294:
	.loc 5 1199 12
	li	a5,0
.L292:
	.loc 5 1200 1
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
.LFE119:
	.size	mbedtls_rsa_check_privkey, .-mbedtls_rsa_check_privkey
	.section	.text.mbedtls_rsa_check_pub_priv,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_check_pub_priv
	.type	mbedtls_rsa_check_pub_priv, @function
mbedtls_rsa_check_pub_priv:
.LFB120:
	.loc 5 1207 1
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
	.loc 5 1208 9
	lw	a0,-20(s0)
	call	mbedtls_rsa_check_pubkey
	mv	a5,a0
	.loc 5 1208 8 discriminator 1
	bne	a5,zero,.L296
	.loc 5 1209 9
	lw	a0,-24(s0)
	call	mbedtls_rsa_check_privkey
	mv	a5,a0
	.loc 5 1208 44 discriminator 2
	beq	a5,zero,.L297
.L296:
	.loc 5 1210 16
	li	a5,-16384
	addi	a5,a5,-512
	j	.L298
.L297:
	.loc 5 1213 9
	lw	a5,-20(s0)
	addi	a4,a5,8
	lw	a5,-24(s0)
	addi	a5,a5,8
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 5 1213 8 discriminator 1
	bne	a5,zero,.L299
	.loc 5 1214 9
	lw	a5,-20(s0)
	addi	a4,a5,16
	lw	a5,-24(s0)
	addi	a5,a5,16
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 5 1213 52 discriminator 2
	beq	a5,zero,.L300
.L299:
	.loc 5 1215 16
	li	a5,-16384
	addi	a5,a5,-512
	j	.L298
.L300:
	.loc 5 1218 12
	li	a5,0
.L298:
	.loc 5 1219 1
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
	.size	mbedtls_rsa_check_pub_priv, .-mbedtls_rsa_check_pub_priv
	.section	.text.mbedtls_rsa_public,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_public
	.type	mbedtls_rsa_public, @function
mbedtls_rsa_public:
.LFB121:
	.loc 5 1227 1
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
	.loc 5 1228 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 1232 9
	li	a2,0
	li	a1,0
	lw	a0,-36(s0)
	call	rsa_check_context
	mv	a5,a0
	.loc 5 1232 8 discriminator 1
	beq	a5,zero,.L302
	.loc 5 1233 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L309
.L302:
	.loc 5 1236 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 1244 22
	lw	a5,-36(s0)
	lw	a4,4(a5)
	addi	a5,s0,-32
	mv	a2,a4
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 5 1244 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L310
	.loc 5 1246 33
	lw	a5,-36(s0)
	addi	a4,a5,8
	.loc 5 1246 9
	addi	a5,s0,-32
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 5 1246 8 discriminator 1
	blt	a5,zero,.L306
	.loc 5 1247 13
	li	a5,-4
	sw	a5,-20(s0)
	.loc 5 1248 9
	j	.L305
.L306:
	.loc 5 1251 10
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 5 1252 57
	lw	a5,-36(s0)
	addi	a2,a5,16
	.loc 5 1252 66
	lw	a5,-36(s0)
	addi	a3,a5,8
	.loc 5 1252 22
	lw	a5,-36(s0)
	addi	a4,a5,72
	addi	a1,s0,-32
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_exp_mod_unsafe
	sw	a0,-20(s0)
	.loc 5 1252 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L311
	.loc 5 1253 22
	addi	a5,s0,-32
	lw	a2,-24(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 5 1255 1
	j	.L305
.L310:
	.loc 5 1244 75
	nop
	j	.L305
.L311:
	.loc 5 1252 93
	nop
.L305:
	.loc 5 1262 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 1264 8
	lw	a5,-20(s0)
	beq	a5,zero,.L308
	.loc 5 1265 16
	li	a3,1265
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,-640
	call	mbedtls_error_add
	mv	a5,a0
	j	.L309
.L308:
	.loc 5 1268 12
	li	a5,0
.L309:
	.loc 5 1269 1
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
.LFE121:
	.size	mbedtls_rsa_public, .-mbedtls_rsa_public
	.section	.text.rsa_prepare_blinding,"ax",@progbits
	.align	1
	.type	rsa_prepare_blinding, @function
rsa_prepare_blinding:
.LFB122:
	.loc 5 1279 1
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
	.loc 5 1280 14
	sw	zero,-24(s0)
	.loc 5 1283 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 1285 16
	lw	a5,-36(s0)
	lw	a5,104(a5)
	.loc 5 1285 8
	beq	a5,zero,.L313
	.loc 5 1287 26
	lw	a5,-36(s0)
	addi	a4,a5,96
	.loc 5 1287 56
	lw	a5,-36(s0)
	addi	a3,a5,96
	.loc 5 1287 66
	lw	a5,-36(s0)
	addi	a5,a5,96
	.loc 5 1287 26
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 5 1287 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L324
	.loc 5 1288 26
	lw	a5,-36(s0)
	addi	a4,a5,96
	.loc 5 1288 56
	lw	a5,-36(s0)
	addi	a3,a5,96
	.loc 5 1288 66
	lw	a5,-36(s0)
	addi	a5,a5,8
	.loc 5 1288 26
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 5 1288 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L325
	.loc 5 1289 26
	lw	a5,-36(s0)
	addi	a4,a5,104
	.loc 5 1289 56
	lw	a5,-36(s0)
	addi	a3,a5,104
	.loc 5 1289 66
	lw	a5,-36(s0)
	addi	a5,a5,104
	.loc 5 1289 26
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 5 1289 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L326
	.loc 5 1290 26
	lw	a5,-36(s0)
	addi	a4,a5,104
	.loc 5 1290 56
	lw	a5,-36(s0)
	addi	a3,a5,104
	.loc 5 1290 66
	lw	a5,-36(s0)
	addi	a5,a5,8
	.loc 5 1290 26
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 5 1292 9
	j	.L315
.L313:
	.loc 5 1296 5
	addi	a5,s0,-32
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_lset
.L322:
	.loc 5 1298 18
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 1298 12
	li	a4,10
	ble	a5,a4,.L319
	.loc 5 1299 17
	li	a5,-16384
	addi	a5,a5,-1152
	sw	a5,-20(s0)
	.loc 5 1300 13
	j	.L315
.L319:
	.loc 5 1303 26
	lw	a5,-36(s0)
	addi	a0,a5,104
	.loc 5 1303 58
	lw	a5,-36(s0)
	addi	a5,a5,8
	.loc 5 1303 26
	lw	a4,-44(s0)
	lw	a3,-40(s0)
	mv	a2,a5
	li	a1,1
	call	mbedtls_mpi_random
	sw	a0,-20(s0)
	.loc 5 1303 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L327
	.loc 5 1304 26
	lw	a5,-36(s0)
	addi	a4,a5,96
	.loc 5 1304 67
	lw	a5,-36(s0)
	addi	a2,a5,104
	.loc 5 1304 77
	lw	a5,-36(s0)
	addi	a3,a5,8
	.loc 5 1304 26
	addi	a5,s0,-32
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_gcd_modinv_odd
	sw	a0,-20(s0)
	.loc 5 1304 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L328
	.loc 5 1305 14
	addi	a5,s0,-32
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 5 1305 41 discriminator 1
	bne	a5,zero,.L322
	.loc 5 1309 22
	lw	a5,-36(s0)
	addi	a0,a5,96
	.loc 5 1309 52
	lw	a5,-36(s0)
	addi	a1,a5,96
	.loc 5 1309 62
	lw	a5,-36(s0)
	addi	a2,a5,16
	.loc 5 1309 71
	lw	a5,-36(s0)
	addi	a3,a5,8
	.loc 5 1309 22
	lw	a5,-36(s0)
	addi	a5,a5,72
	mv	a4,a5
	call	mbedtls_mpi_exp_mod
	sw	a0,-20(s0)
	.loc 5 1312 1
	j	.L315
.L324:
	.loc 5 1287 84
	nop
	j	.L315
.L325:
	.loc 5 1288 83
	nop
	j	.L315
.L326:
	.loc 5 1289 84
	nop
	j	.L315
.L327:
	.loc 5 1303 89
	nop
	j	.L315
.L328:
	.loc 5 1304 94
	nop
.L315:
	.loc 5 1313 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 1315 12
	lw	a5,-20(s0)
	.loc 5 1316 1
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
.LFE122:
	.size	rsa_prepare_blinding, .-rsa_prepare_blinding
	.section	.text.rsa_unblind,"ax",@progbits
	.align	1
	.type	rsa_unblind, @function
rsa_unblind:
.LFB123:
	.loc 5 1323 1
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
	.loc 5 1324 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 1325 64
	lw	a5,-60(s0)
	lw	a5,0(a5)
	.loc 5 1325 33
	mv	a0,a5
	call	mbedtls_mpi_core_montmul_init
	sw	a0,-24(s0)
	.loc 5 1326 28
	lw	a5,-60(s0)
	lhu	a5,6(a5)
	.loc 5 1326 18
	sw	a5,-28(s0)
	.loc 5 1327 27
	lw	a0,-28(s0)
	call	mbedtls_mpi_core_montmul_working_limbs
	sw	a0,-32(s0)
	.loc 5 1330 5
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 1331 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 1333 22
	addi	a5,s0,-40
	lw	a1,-60(s0)
	mv	a0,a5
	call	mbedtls_mpi_core_get_mont_r2_unsafe
	sw	a0,-20(s0)
	.loc 5 1333 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L336
	.loc 5 1334 22
	addi	a5,s0,-48
	lw	a1,-32(s0)
	mv	a0,a5
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 5 1334 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L337
	.loc 5 1336 22
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 5 1336 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L338
	.loc 5 1337 22
	lw	a1,-28(s0)
	lw	a0,-56(s0)
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 5 1337 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L339
	.loc 5 1346 5
	lw	a5,-52(s0)
	lw	a0,0(a5)
	.loc 5 1346 41
	lw	a5,-52(s0)
	lw	a1,0(a5)
	.loc 5 1346 47
	lw	a5,-60(s0)
	lw	a2,0(a5)
	.loc 5 1346 66
	lw	a5,-40(s0)
	.loc 5 1346 5
	lw	a4,-48(s0)
	mv	a6,a4
	lw	a4,-24(s0)
	lw	a3,-28(s0)
	call	mbedtls_mpi_core_to_mont_rep
	.loc 5 1347 5
	lw	a5,-52(s0)
	lw	a0,0(a5)
	.loc 5 1347 37
	lw	a5,-52(s0)
	lw	a1,0(a5)
	.loc 5 1347 44
	lw	a5,-56(s0)
	lw	a2,0(a5)
	.loc 5 1347 58
	lw	a5,-60(s0)
	lw	a4,0(a5)
	.loc 5 1347 5
	lw	a5,-48(s0)
	mv	a7,a5
	lw	a6,-24(s0)
	lw	a5,-28(s0)
	lw	a3,-28(s0)
	call	mbedtls_mpi_core_montmul
	j	.L331
.L336:
	.loc 5 1333 74
	nop
	j	.L331
.L337:
	.loc 5 1334 61
	nop
	j	.L331
.L338:
	.loc 5 1336 58
	nop
	j	.L331
.L339:
	.loc 5 1337 59
	nop
.L331:
	.loc 5 1351 5
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 1352 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 1354 12
	lw	a5,-20(s0)
	.loc 5 1355 1
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
.LFE123:
	.size	rsa_unblind, .-rsa_unblind
	.section	.text.mbedtls_rsa_private,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_private
	.type	mbedtls_rsa_private, @function
mbedtls_rsa_private:
.LFB124:
	.loc 5 1386 1
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
	.loc 5 1387 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 1413 8
	lw	a5,-120(s0)
	bne	a5,zero,.L341
	.loc 5 1414 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L370
.L341:
	.loc 5 1417 9
	li	a2,1
	li	a1,1
	lw	a0,-116(s0)
	call	rsa_check_context
	mv	a5,a0
	.loc 5 1417 8 discriminator 1
	beq	a5,zero,.L343
	.loc 5 1419 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L370
.L343:
	.loc 5 1429 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 1431 5
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 1432 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 1433 5
	addi	a5,s0,-56
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 1438 5
	addi	a5,s0,-80
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 1439 5
	addi	a5,s0,-88
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 1443 5
	addi	a5,s0,-64
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 1443 28 discriminator 1
	addi	a5,s0,-72
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 1446 5
	addi	a5,s0,-96
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 1447 5
	addi	a5,s0,-104
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 1451 22
	lw	a5,-116(s0)
	lw	a4,4(a5)
	addi	a5,s0,-32
	mv	a2,a4
	lw	a1,-128(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 5 1451 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L371
	.loc 5 1452 33
	lw	a5,-116(s0)
	addi	a4,a5,8
	.loc 5 1452 9
	addi	a5,s0,-32
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 5 1452 8 discriminator 1
	blt	a5,zero,.L346
	.loc 5 1453 13
	li	a5,-4
	sw	a5,-20(s0)
	.loc 5 1454 9
	j	.L345
.L346:
	.loc 5 1461 22
	lw	a2,-124(s0)
	lw	a1,-120(s0)
	lw	a0,-116(s0)
	call	rsa_prepare_blinding
	sw	a0,-20(s0)
	.loc 5 1461 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L372
	.loc 5 1462 50
	lw	a5,-116(s0)
	addi	a3,a5,96
	.loc 5 1462 22
	addi	a4,s0,-32
	addi	a5,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 5 1462 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L373
	.loc 5 1463 50
	lw	a5,-116(s0)
	addi	a3,a5,8
	.loc 5 1463 22
	addi	a4,s0,-32
	addi	a5,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 5 1463 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L374
	.loc 5 1465 22
	addi	a4,s0,-32
	addi	a5,s0,-96
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 1465 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L375
	.loc 5 1470 47
	lw	a5,-116(s0)
	addi	a4,a5,32
	.loc 5 1470 22
	addi	a5,s0,-40
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 5 1470 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L376
	.loc 5 1471 47
	lw	a5,-116(s0)
	addi	a4,a5,40
	.loc 5 1471 22
	addi	a5,s0,-48
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 5 1471 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L377
	.loc 5 1486 22
	addi	a5,s0,-56
	lw	a3,-124(s0)
	lw	a2,-120(s0)
	li	a1,28
	mv	a0,a5
	call	mbedtls_mpi_fill_random
	sw	a0,-20(s0)
	.loc 5 1486 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L378
	.loc 5 1488 22
	addi	a3,s0,-56
	addi	a4,s0,-40
	addi	a5,s0,-80
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 5 1488 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L379
	.loc 5 1489 64
	lw	a5,-116(s0)
	addi	a3,a5,48
	.loc 5 1489 22
	addi	a4,s0,-80
	addi	a5,s0,-80
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_add_mpi
	sw	a0,-20(s0)
	.loc 5 1489 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L380
	.loc 5 1495 22
	addi	a5,s0,-56
	lw	a3,-124(s0)
	lw	a2,-120(s0)
	li	a1,28
	mv	a0,a5
	call	mbedtls_mpi_fill_random
	sw	a0,-20(s0)
	.loc 5 1495 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L381
	.loc 5 1497 22
	addi	a3,s0,-56
	addi	a4,s0,-48
	addi	a5,s0,-88
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 5 1497 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L382
	.loc 5 1498 64
	lw	a5,-116(s0)
	addi	a3,a5,56
	.loc 5 1498 22
	addi	a4,s0,-88
	addi	a5,s0,-88
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_add_mpi
	sw	a0,-20(s0)
	.loc 5 1498 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L383
	.loc 5 1512 62
	lw	a5,-116(s0)
	addi	a3,a5,32
	.loc 5 1512 22
	lw	a5,-116(s0)
	addi	a4,a5,80
	addi	a2,s0,-80
	addi	a1,s0,-32
	addi	a5,s0,-64
	mv	a0,a5
	call	mbedtls_mpi_exp_mod
	sw	a0,-20(s0)
	.loc 5 1512 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L384
	.loc 5 1513 62
	lw	a5,-116(s0)
	addi	a3,a5,40
	.loc 5 1513 22
	lw	a5,-116(s0)
	addi	a4,a5,88
	addi	a2,s0,-88
	addi	a1,s0,-32
	addi	a5,s0,-72
	mv	a0,a5
	call	mbedtls_mpi_exp_mod
	sw	a0,-20(s0)
	.loc 5 1513 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L385
	.loc 5 1518 22
	addi	a3,s0,-72
	addi	a4,s0,-64
	addi	a5,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_mpi
	sw	a0,-20(s0)
	.loc 5 1518 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L386
	.loc 5 1519 51
	lw	a5,-116(s0)
	addi	a3,a5,64
	.loc 5 1519 22
	addi	a4,s0,-32
	addi	a5,s0,-64
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 5 1519 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L387
	.loc 5 1520 51
	lw	a5,-116(s0)
	addi	a3,a5,32
	.loc 5 1520 22
	addi	a4,s0,-64
	addi	a5,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 5 1520 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L388
	.loc 5 1525 51
	lw	a5,-116(s0)
	addi	a3,a5,40
	.loc 5 1525 22
	addi	a4,s0,-32
	addi	a5,s0,-64
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 5 1525 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L389
	.loc 5 1526 22
	addi	a3,s0,-64
	addi	a4,s0,-72
	addi	a5,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_add_mpi
	sw	a0,-20(s0)
	.loc 5 1526 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L390
	.loc 5 1530 69
	lw	a5,-116(s0)
	addi	a2,a5,16
	.loc 5 1530 78
	lw	a5,-116(s0)
	addi	a3,a5,8
	.loc 5 1530 22
	lw	a5,-116(s0)
	addi	a4,a5,72
	addi	a1,s0,-32
	addi	a5,s0,-104
	mv	a0,a5
	call	mbedtls_mpi_exp_mod
	sw	a0,-20(s0)
	.loc 5 1530 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L391
	.loc 5 1532 9
	addi	a4,s0,-96
	addi	a5,s0,-104
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 5 1532 8 discriminator 1
	beq	a5,zero,.L367
	.loc 5 1533 13
	li	a5,-16384
	addi	a5,a5,-896
	sw	a5,-20(s0)
	.loc 5 1534 9
	j	.L345
.L367:
	.loc 5 1541 22
	lw	a5,-116(s0)
	addi	a4,a5,104
	.loc 5 1541 48
	lw	a5,-116(s0)
	addi	a3,a5,8
	.loc 5 1541 22
	addi	a5,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	rsa_unblind
	sw	a0,-20(s0)
	.loc 5 1541 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L392
	.loc 5 1543 10
	lw	a5,-116(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 5 1544 22
	addi	a5,s0,-32
	lw	a2,-24(s0)
	lw	a1,-132(s0)
	mv	a0,a5
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 5 1546 1
	j	.L345
.L371:
	.loc 5 1451 75
	nop
	j	.L345
.L372:
	.loc 5 1461 70
	nop
	j	.L345
.L373:
	.loc 5 1462 68
	nop
	j	.L345
.L374:
	.loc 5 1463 67
	nop
	j	.L345
.L375:
	.loc 5 1465 67
	nop
	j	.L345
.L376:
	.loc 5 1470 67
	nop
	j	.L345
.L377:
	.loc 5 1471 67
	nop
	j	.L345
.L378:
	.loc 5 1486 76
	nop
	j	.L345
.L379:
	.loc 5 1488 70
	nop
	j	.L345
.L380:
	.loc 5 1489 82
	nop
	j	.L345
.L381:
	.loc 5 1495 76
	nop
	j	.L345
.L382:
	.loc 5 1497 70
	nop
	j	.L345
.L383:
	.loc 5 1498 82
	nop
	j	.L345
.L384:
	.loc 5 1512 89
	nop
	j	.L345
.L385:
	.loc 5 1513 89
	nop
	j	.L345
.L386:
	.loc 5 1518 64
	nop
	j	.L345
.L387:
	.loc 5 1519 69
	nop
	j	.L345
.L388:
	.loc 5 1520 68
	nop
	j	.L345
.L389:
	.loc 5 1525 68
	nop
	j	.L345
.L390:
	.loc 5 1526 64
	nop
	j	.L345
.L391:
	.loc 5 1530 105
	nop
	j	.L345
.L392:
	.loc 5 1541 65
	nop
.L345:
	.loc 5 1553 5
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 1554 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 1555 5
	addi	a5,s0,-56
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 1560 5
	addi	a5,s0,-80
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 1561 5
	addi	a5,s0,-88
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 1564 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 1567 5
	addi	a5,s0,-64
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 1567 28 discriminator 1
	addi	a5,s0,-72
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 1570 5
	addi	a5,s0,-104
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 1571 5
	addi	a5,s0,-96
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 1573 8
	lw	a5,-20(s0)
	beq	a5,zero,.L369
	.loc 5 1573 18 discriminator 1
	lw	a4,-20(s0)
	li	a5,-127
	blt	a4,a5,.L369
	.loc 5 1574 16
	li	a3,1574
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,-768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L370
.L369:
	.loc 5 1577 12
	lw	a5,-20(s0)
.L370:
	.loc 5 1578 1
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
.LFE124:
	.size	mbedtls_rsa_private, .-mbedtls_rsa_private
	.section	.text.mgf_mask,"ax",@progbits
	.align	1
	.type	mgf_mask, @function
mgf_mask:
.LFB125:
	.loc 5 1592 1
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
	mv	a5,a4
	sb	a5,-145(s0)
	.loc 5 1598 9
	sw	zero,-32(s0)
	.loc 5 1602 5
	addi	a5,s0,-120
	mv	a0,a5
	call	mbedtls_md_init
	.loc 5 1603 15
	lbu	a5,-145(s0)
	mv	a0,a5
	call	mbedtls_md_info_from_type
	sw	a0,-36(s0)
	.loc 5 1604 8
	lw	a5,-36(s0)
	bne	a5,zero,.L394
	.loc 5 1605 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L407
.L394:
	.loc 5 1608 5
	addi	a5,s0,-120
	mv	a0,a5
	call	mbedtls_md_init
	.loc 5 1609 16
	addi	a5,s0,-120
	li	a2,0
	lw	a1,-36(s0)
	mv	a0,a5
	call	mbedtls_md_setup
	sw	a0,-32(s0)
	.loc 5 1609 8 discriminator 1
	lw	a5,-32(s0)
	bne	a5,zero,.L408
	.loc 5 1613 12
	lw	a0,-36(s0)
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 5 1613 10 discriminator 1
	sw	a5,-40(s0)
	.loc 5 1615 5
	addi	a5,s0,-108
	li	a2,64
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 5 1616 5
	addi	a5,s0,-44
	li	a2,4
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 5 1619 7
	lw	a5,-132(s0)
	sw	a5,-20(s0)
	.loc 5 1621 11
	j	.L398
.L406:
	.loc 5 1622 17
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	.loc 5 1623 12
	lw	a4,-136(s0)
	lw	a5,-40(s0)
	bgeu	a4,a5,.L399
	.loc 5 1624 21
	lw	a5,-136(s0)
	sw	a5,-28(s0)
.L399:
	.loc 5 1627 20
	addi	a5,s0,-120
	mv	a0,a5
	call	mbedtls_md_starts
	sw	a0,-32(s0)
	.loc 5 1627 12 discriminator 1
	lw	a5,-32(s0)
	bne	a5,zero,.L409
	.loc 5 1630 20
	addi	a5,s0,-120
	lw	a2,-144(s0)
	lw	a1,-140(s0)
	mv	a0,a5
	call	mbedtls_md_update
	sw	a0,-32(s0)
	.loc 5 1630 12 discriminator 1
	lw	a5,-32(s0)
	bne	a5,zero,.L410
	.loc 5 1633 20
	addi	a4,s0,-44
	addi	a5,s0,-120
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_update
	sw	a0,-32(s0)
	.loc 5 1633 12 discriminator 1
	lw	a5,-32(s0)
	bne	a5,zero,.L411
	.loc 5 1636 20
	addi	a4,s0,-108
	addi	a5,s0,-120
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_finish
	sw	a0,-32(s0)
	.loc 5 1636 12 discriminator 1
	lw	a5,-32(s0)
	bne	a5,zero,.L412
	.loc 5 1640 16
	sw	zero,-24(s0)
	.loc 5 1640 9
	j	.L404
.L405:
	.loc 5 1641 15
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 1641 13
	lbu	a3,0(a5)
	.loc 5 1641 25
	lw	a4,-24(s0)
	addi	a4,a4,-16
	add	a4,a4,s0
	lbu	a4,-92(a4)
	.loc 5 1641 18
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 5 1640 34 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L404:
	.loc 5 1640 23 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	bltu	a4,a5,.L405
	.loc 5 1644 16
	lbu	a5,-41(s0)
	.loc 5 1644 19
	addi	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,-41(s0)
	.loc 5 1646 14
	lw	a4,-136(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	sw	a5,-136(s0)
.L398:
	.loc 5 1621 17
	lw	a5,-136(s0)
	bne	a5,zero,.L406
	.loc 5 1649 1
	j	.L397
.L408:
	.loc 5 1610 9
	nop
	j	.L397
.L409:
	.loc 5 1628 13
	nop
	j	.L397
.L410:
	.loc 5 1631 13
	nop
	j	.L397
.L411:
	.loc 5 1634 13
	nop
	j	.L397
.L412:
	.loc 5 1637 13
	nop
.L397:
	.loc 5 1650 5
	addi	a5,s0,-108
	li	a1,64
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 5 1651 5
	addi	a5,s0,-120
	mv	a0,a5
	call	mbedtls_md_free
	.loc 5 1653 12
	lw	a5,-32(s0)
.L407:
	.loc 5 1654 1
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
.LFE125:
	.size	mgf_mask, .-mgf_mask
	.section	.text.hash_mprime,"ax",@progbits
	.align	1
	.type	hash_mprime, @function
hash_mprime:
.LFB126:
	.loc 5 1669 1
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
	sb	a5,-69(s0)
	.loc 5 1670 25
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	.loc 5 1673 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 1675 40
	lbu	a5,-69(s0)
	mv	a0,a5
	call	mbedtls_md_info_from_type
	sw	a0,-24(s0)
	.loc 5 1676 8
	lw	a5,-24(s0)
	bne	a5,zero,.L414
	.loc 5 1677 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L422
.L414:
	.loc 5 1680 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_md_init
	.loc 5 1681 16
	addi	a5,s0,-44
	li	a2,0
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_md_setup
	sw	a0,-20(s0)
	.loc 5 1681 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L423
	.loc 5 1684 16
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_md_starts
	sw	a0,-20(s0)
	.loc 5 1684 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L424
	.loc 5 1687 16
	addi	a4,s0,-32
	addi	a5,s0,-44
	li	a2,8
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_update
	sw	a0,-20(s0)
	.loc 5 1687 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L425
	.loc 5 1690 16
	addi	a5,s0,-44
	lw	a2,-56(s0)
	lw	a1,-52(s0)
	mv	a0,a5
	call	mbedtls_md_update
	sw	a0,-20(s0)
	.loc 5 1690 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L426
	.loc 5 1693 16
	addi	a5,s0,-44
	lw	a2,-64(s0)
	lw	a1,-60(s0)
	mv	a0,a5
	call	mbedtls_md_update
	sw	a0,-20(s0)
	.loc 5 1693 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L427
	.loc 5 1696 16
	addi	a5,s0,-44
	lw	a1,-68(s0)
	mv	a0,a5
	call	mbedtls_md_finish
	sw	a0,-20(s0)
	.loc 5 1700 1
	j	.L417
.L423:
	.loc 5 1682 9
	nop
	j	.L417
.L424:
	.loc 5 1685 9
	nop
	j	.L417
.L425:
	.loc 5 1688 9
	nop
	j	.L417
.L426:
	.loc 5 1691 9
	nop
	j	.L417
.L427:
	.loc 5 1694 9
	nop
.L417:
	.loc 5 1701 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_md_free
	.loc 5 1703 12
	lw	a5,-20(s0)
.L422:
	.loc 5 1704 1
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
.LFE126:
	.size	hash_mprime, .-hash_mprime
	.section	.text.compute_hash,"ax",@progbits
	.align	1
	.type	compute_hash, @function
compute_hash:
.LFB127:
	.loc 5 1717 1
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
	sb	a5,-33(s0)
	.loc 5 1720 15
	lbu	a5,-33(s0)
	mv	a0,a5
	call	mbedtls_md_info_from_type
	sw	a0,-20(s0)
	.loc 5 1721 8
	lw	a5,-20(s0)
	bne	a5,zero,.L429
	.loc 5 1722 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L430
.L429:
	.loc 5 1725 12
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	call	mbedtls_md
	mv	a5,a0
.L430:
	.loc 5 1726 1
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
.LFE127:
	.size	compute_hash, .-compute_hash
	.section	.text.mbedtls_rsa_rsaes_oaep_encrypt,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_rsaes_oaep_encrypt
	.type	mbedtls_rsa_rsaes_oaep_encrypt, @function
mbedtls_rsa_rsaes_oaep_encrypt:
.LFB128:
	.loc 5 1740 1
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
	.loc 5 1742 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 1743 20
	lw	a5,-64(s0)
	sw	a5,-24(s0)
	.loc 5 1746 8
	lw	a5,-40(s0)
	bne	a5,zero,.L432
	.loc 5 1747 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L433
.L432:
	.loc 5 1750 65
	lw	a5,-36(s0)
	lw	a5,116(a5)
	.loc 5 1750 12
	andi	a5,a5,0xff
	mv	a0,a5
	call	mbedtls_md_get_size_from_type
	mv	a5,a0
	.loc 5 1750 10 discriminator 1
	sw	a5,-28(s0)
	.loc 5 1751 8
	lw	a5,-28(s0)
	bne	a5,zero,.L434
	.loc 5 1752 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L433
.L434:
	.loc 5 1755 10
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	.loc 5 1758 18
	lw	a5,-28(s0)
	slli	a4,a5,1
	.loc 5 1758 14
	lw	a5,-56(s0)
	add	a5,a4,a5
	.loc 5 1758 25
	addi	a5,a5,2
	.loc 5 1758 8
	lw	a4,-56(s0)
	bgtu	a4,a5,.L435
	.loc 5 1758 55 discriminator 1
	lw	a5,-28(s0)
	slli	a4,a5,1
	.loc 5 1758 51 discriminator 1
	lw	a5,-56(s0)
	add	a5,a4,a5
	.loc 5 1758 62 discriminator 1
	addi	a5,a5,2
	.loc 5 1758 36 discriminator 1
	lw	a4,-32(s0)
	bgeu	a4,a5,.L436
.L435:
	.loc 5 1759 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L433
.L436:
	.loc 5 1762 5
	lw	a2,-32(s0)
	li	a1,0
	lw	a0,-64(s0)
	call	memset
	.loc 5 1764 7
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 1764 10
	sb	zero,0(a5)
	.loc 5 1767 16
	lw	a5,-40(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-44(s0)
	jalr	a5
.LVL0:
	sw	a0,-20(s0)
	.loc 5 1767 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L437
	.loc 5 1768 16
	li	a3,1768
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-16384
	addi	a0,a5,-1152
	call	mbedtls_error_add
	mv	a5,a0
	j	.L433
.L437:
	.loc 5 1771 7
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 1774 47
	lw	a5,-36(s0)
	lw	a5,116(a5)
	.loc 5 1774 11
	andi	a5,a5,0xff
	lw	a3,-24(s0)
	lw	a2,-52(s0)
	lw	a1,-48(s0)
	mv	a0,a5
	call	compute_hash
	sw	a0,-20(s0)
	.loc 5 1775 8
	lw	a5,-20(s0)
	beq	a5,zero,.L438
	.loc 5 1776 16
	lw	a5,-20(s0)
	j	.L433
.L438:
	.loc 5 1778 7
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 1779 19
	lw	a5,-28(s0)
	slli	a5,a5,1
	.loc 5 1779 15
	lw	a4,-32(s0)
	sub	a4,a4,a5
	.loc 5 1779 30
	lw	a5,-56(s0)
	sub	a5,a4,a5
	addi	a5,a5,-2
	.loc 5 1779 7
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 1780 7
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 1780 10
	li	a4,1
	sb	a4,0(a5)
	.loc 5 1781 8
	lw	a5,-56(s0)
	beq	a5,zero,.L439
	.loc 5 1782 9
	lw	a2,-56(s0)
	lw	a1,-60(s0)
	lw	a0,-24(s0)
	call	memcpy
.L439:
	.loc 5 1786 39
	lw	a5,-28(s0)
	addi	a5,a5,1
	.loc 5 1786 16
	lw	a4,-64(s0)
	add	a0,a4,a5
	.loc 5 1786 49
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	.loc 5 1786 16
	addi	a1,a5,-1
	lw	a5,-64(s0)
	addi	a2,a5,1
	.loc 5 1787 48
	lw	a5,-36(s0)
	lw	a5,116(a5)
	.loc 5 1786 16
	andi	a5,a5,0xff
	mv	a4,a5
	lw	a3,-28(s0)
	call	mgf_mask
	sw	a0,-20(s0)
	.loc 5 1786 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L440
	.loc 5 1788 16
	lw	a5,-20(s0)
	j	.L433
.L440:
	.loc 5 1792 16
	lw	a5,-64(s0)
	addi	a0,a5,1
	.loc 5 1792 57
	lw	a5,-28(s0)
	addi	a5,a5,1
	.loc 5 1792 16
	lw	a4,-64(s0)
	add	a2,a4,a5
	.loc 5 1792 67
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	.loc 5 1792 16
	addi	a3,a5,-1
	.loc 5 1793 48
	lw	a5,-36(s0)
	lw	a5,116(a5)
	.loc 5 1792 16
	andi	a5,a5,0xff
	mv	a4,a5
	lw	a1,-28(s0)
	call	mgf_mask
	sw	a0,-20(s0)
	.loc 5 1792 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L441
	.loc 5 1794 16
	lw	a5,-20(s0)
	j	.L433
.L441:
	.loc 5 1797 12
	lw	a2,-64(s0)
	lw	a1,-64(s0)
	lw	a0,-36(s0)
	call	mbedtls_rsa_public
	mv	a5,a0
.L433:
	.loc 5 1798 1
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
	.size	mbedtls_rsa_rsaes_oaep_encrypt, .-mbedtls_rsa_rsaes_oaep_encrypt
	.section	.text.mbedtls_rsa_rsaes_pkcs1_v15_encrypt,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_rsaes_pkcs1_v15_encrypt
	.type	mbedtls_rsa_rsaes_pkcs1_v15_encrypt, @function
mbedtls_rsa_rsaes_pkcs1_v15_encrypt:
.LFB129:
	.loc 5 1810 1
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
	.loc 5 1812 9
	li	a5,-110
	sw	a5,-32(s0)
	.loc 5 1813 20
	lw	a5,-72(s0)
	sw	a5,-24(s0)
	.loc 5 1815 10
	lw	a5,-52(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	.loc 5 1818 8
	lw	a4,-64(s0)
	li	a5,-12
	bgtu	a4,a5,.L443
	.loc 5 1818 41 discriminator 1
	lw	a5,-64(s0)
	addi	a5,a5,11
	.loc 5 1818 26 discriminator 1
	lw	a4,-36(s0)
	bgeu	a4,a5,.L444
.L443:
	.loc 5 1819 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L445
.L444:
	.loc 5 1822 23
	lw	a4,-36(s0)
	lw	a5,-64(s0)
	sub	a5,a4,a5
	.loc 5 1822 12
	addi	a5,a5,-3
	sw	a5,-20(s0)
	.loc 5 1824 7
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 1824 10
	sb	zero,0(a5)
	.loc 5 1826 8
	lw	a5,-56(s0)
	bne	a5,zero,.L446
	.loc 5 1827 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L445
.L446:
	.loc 5 1830 7
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 1830 10
	li	a4,2
	sb	a4,0(a5)
	.loc 5 1832 11
	j	.L447
.L452:
.LBB3:
	.loc 5 1833 13
	li	a5,100
	sw	a5,-28(s0)
.L449:
	.loc 5 1836 19
	lw	a5,-56(s0)
	li	a2,1
	lw	a1,-24(s0)
	lw	a0,-60(s0)
	jalr	a5
.LVL1:
	sw	a0,-32(s0)
	.loc 5 1837 18 discriminator 3
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 5 1837 38 discriminator 3
	bne	a5,zero,.L448
	.loc 5 1837 26 discriminator 1
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	beq	a5,zero,.L448
	.loc 5 1837 38 discriminator 2
	lw	a5,-32(s0)
	beq	a5,zero,.L449
.L448:
	.loc 5 1840 12
	lw	a5,-28(s0)
	beq	a5,zero,.L450
	.loc 5 1840 25 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L451
.L450:
	.loc 5 1841 20
	li	a3,1841
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-32(s0)
	li	a5,-16384
	addi	a0,a5,-1152
	call	mbedtls_error_add
	mv	a5,a0
	j	.L445
.L451:
	.loc 5 1844 10
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L447:
.LBE3:
	.loc 5 1832 18
	lw	a5,-20(s0)
	addi	a4,a5,-1
	sw	a4,-20(s0)
	.loc 5 1832 21
	bne	a5,zero,.L452
	.loc 5 1847 7
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 1847 10
	sb	zero,0(a5)
	.loc 5 1848 8
	lw	a5,-64(s0)
	beq	a5,zero,.L453
	.loc 5 1849 9
	lw	a2,-64(s0)
	lw	a1,-68(s0)
	lw	a0,-24(s0)
	call	memcpy
.L453:
	.loc 5 1852 12
	lw	a2,-72(s0)
	lw	a1,-72(s0)
	lw	a0,-52(s0)
	call	mbedtls_rsa_public
	mv	a5,a0
.L445:
	.loc 5 1853 1
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
.LFE129:
	.size	mbedtls_rsa_rsaes_pkcs1_v15_encrypt, .-mbedtls_rsa_rsaes_pkcs1_v15_encrypt
	.section	.text.mbedtls_rsa_pkcs1_encrypt,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_pkcs1_encrypt
	.type	mbedtls_rsa_pkcs1_encrypt, @function
mbedtls_rsa_pkcs1_encrypt:
.LFB130:
	.loc 5 1865 1
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
	.loc 5 1866 16
	lw	a5,-20(s0)
	lw	a5,112(a5)
	.loc 5 1866 5
	beq	a5,zero,.L455
	li	a4,1
	beq	a5,a4,.L456
	j	.L459
.L455:
	.loc 5 1869 20
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_rsa_rsaes_pkcs1_v15_encrypt
	mv	a5,a0
	j	.L458
.L456:
	.loc 5 1875 20
	lw	a7,-40(s0)
	lw	a6,-36(s0)
	lw	a5,-32(s0)
	li	a4,0
	li	a3,0
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_rsa_rsaes_oaep_encrypt
	mv	a5,a0
	j	.L458
.L459:
	.loc 5 1880 20
	li	a5,-16384
	addi	a5,a5,-256
.L458:
	.loc 5 1882 1
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
.LFE130:
	.size	mbedtls_rsa_pkcs1_encrypt, .-mbedtls_rsa_pkcs1_encrypt
	.section	.text.mbedtls_rsa_rsaes_oaep_decrypt,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_rsaes_oaep_decrypt
	.type	mbedtls_rsa_rsaes_oaep_decrypt, @function
mbedtls_rsa_rsaes_oaep_decrypt:
.LFB131:
	.loc 5 1896 1
	.cfi_startproc
	addi	sp,sp,-1168
	.cfi_def_cfa_offset 1168
	sw	ra,1164(sp)
	sw	s0,1160(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,1168
	.cfi_def_cfa 8, 0
	sw	a0,-1140(s0)
	sw	a1,-1144(s0)
	sw	a2,-1148(s0)
	sw	a3,-1152(s0)
	sw	a4,-1156(s0)
	sw	a5,-1160(s0)
	sw	a6,-1164(s0)
	sw	a7,-1168(s0)
	.loc 5 1897 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 1908 12
	lw	a5,-1140(s0)
	lw	a4,112(a5)
	.loc 5 1908 8
	li	a5,1
	beq	a4,a5,.L461
	.loc 5 1909 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L477
.L461:
	.loc 5 1912 10
	lw	a5,-1140(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	.loc 5 1914 8
	lw	a4,-36(s0)
	li	a5,15
	bleu	a4,a5,.L463
	.loc 5 1914 19 discriminator 1
	lw	a4,-36(s0)
	li	a5,1024
	bleu	a4,a5,.L464
.L463:
	.loc 5 1915 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L477
.L464:
	.loc 5 1918 65
	lw	a5,-1140(s0)
	lw	a5,116(a5)
	.loc 5 1918 12
	andi	a5,a5,0xff
	mv	a0,a5
	call	mbedtls_md_get_size_from_type
	mv	a5,a0
	.loc 5 1918 10 discriminator 1
	sw	a5,-40(s0)
	.loc 5 1919 8
	lw	a5,-40(s0)
	bne	a5,zero,.L465
	.loc 5 1920 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L477
.L465:
	.loc 5 1924 18
	lw	a5,-40(s0)
	addi	a5,a5,1
	slli	a5,a5,1
	.loc 5 1924 8
	lw	a4,-36(s0)
	bgeu	a4,a5,.L466
	.loc 5 1925 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L477
.L466:
	.loc 5 1931 11
	addi	a5,s0,-1072
	mv	a4,a5
	lw	a3,-1164(s0)
	lw	a2,-1148(s0)
	lw	a1,-1144(s0)
	lw	a0,-1140(s0)
	call	mbedtls_rsa_private
	sw	a0,-20(s0)
	.loc 5 1933 8
	lw	a5,-20(s0)
	bne	a5,zero,.L478
	.loc 5 1941 16
	addi	a5,s0,-1072
	addi	a5,a5,1
	.loc 5 1941 51
	lw	a4,-40(s0)
	addi	a4,a4,1
	.loc 5 1941 16
	addi	a3,s0,-1072
	add	a2,a3,a4
	.loc 5 1941 61
	lw	a3,-36(s0)
	lw	a4,-40(s0)
	sub	a4,a3,a4
	.loc 5 1941 16
	addi	a3,a4,-1
	.loc 5 1942 48
	lw	a4,-1140(s0)
	lw	a4,116(a4)
	.loc 5 1941 16
	andi	a4,a4,0xff
	lw	a1,-40(s0)
	mv	a0,a5
	call	mgf_mask
	sw	a0,-20(s0)
	.loc 5 1941 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L479
	.loc 5 1944 36
	lw	a5,-40(s0)
	addi	a5,a5,1
	.loc 5 1944 16
	addi	a4,s0,-1072
	add	a0,a4,a5
	.loc 5 1944 46
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	sub	a5,a4,a5
	.loc 5 1944 16
	addi	a1,a5,-1
	addi	a5,s0,-1072
	addi	a5,a5,1
	.loc 5 1945 48
	lw	a4,-1140(s0)
	lw	a4,116(a4)
	.loc 5 1944 16
	andi	a4,a4,0xff
	lw	a3,-40(s0)
	mv	a2,a5
	call	mgf_mask
	sw	a0,-20(s0)
	.loc 5 1942 65
	lw	a5,-20(s0)
	bne	a5,zero,.L479
	.loc 5 1950 47
	lw	a5,-1140(s0)
	lw	a5,116(a5)
	.loc 5 1950 11
	andi	a5,a5,0xff
	addi	a4,s0,-1136
	mv	a3,a4
	lw	a2,-1156(s0)
	lw	a1,-1152(s0)
	mv	a0,a5
	call	compute_hash
	sw	a0,-20(s0)
	.loc 5 1952 8
	lw	a5,-20(s0)
	bne	a5,zero,.L480
	.loc 5 1959 7
	addi	a5,s0,-1072
	sw	a5,-44(s0)
	.loc 5 1961 29
	lw	a5,-44(s0)
	addi	a4,a5,1
	sw	a4,-44(s0)
	.loc 5 1961 27
	lbu	a5,0(a5)
	.loc 5 1961 11
	mv	a0,a5
	call	mbedtls_ct_bool
	sw	a0,-48(s0)
	.loc 5 1963 7
	lw	a4,-44(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 5 1966 51
	addi	a5,s0,-1136
	lw	a2,-40(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_ct_memcmp
	mv	a5,a0
	.loc 5 1966 11 discriminator 1
	mv	a0,a5
	call	mbedtls_ct_bool
	mv	a5,a0
	.loc 5 1966 11 is_stmt 0 discriminator 2
	mv	a1,a5
	lw	a0,-48(s0)
	call	mbedtls_ct_bool_or
	sw	a0,-48(s0)
	.loc 5 1967 7 is_stmt 1
	lw	a4,-44(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 5 1971 13
	sw	zero,-28(s0)
	.loc 5 1972 44
	li	a0,-1
	call	mbedtls_ct_compiler_opaque
	sw	a0,-32(s0)
	.loc 5 1973 12
	sw	zero,-24(s0)
	.loc 5 1973 5
	j	.L472
.L473:
	.loc 5 1974 74
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 5 1974 22
	li	a1,0
	mv	a0,a5
	call	mbedtls_ct_uint_eq
	mv	a5,a0
	.loc 5 1974 22 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-32(s0)
	call	mbedtls_ct_bool_and
	sw	a0,-32(s0)
	.loc 5 1975 20 is_stmt 1
	li	a1,1
	lw	a0,-32(s0)
	call	mbedtls_ct_uint_if_else_0
	mv	a4,a0
	.loc 5 1975 17 discriminator 1
	lw	a5,-28(s0)
	add	a5,a5,a4
	sw	a5,-28(s0)
	.loc 5 1973 43 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L472:
	.loc 5 1973 30 discriminator 1
	lw	a5,-40(s0)
	slli	a5,a5,1
	.loc 5 1973 26 discriminator 1
	lw	a4,-36(s0)
	sub	a5,a4,a5
	.loc 5 1973 37 discriminator 1
	addi	a5,a5,-2
	.loc 5 1973 19 discriminator 1
	lw	a4,-24(s0)
	bltu	a4,a5,.L473
	.loc 5 1978 7
	lw	a4,-44(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 5 1979 56
	lw	a5,-44(s0)
	addi	a4,a5,1
	sw	a4,-44(s0)
	.loc 5 1979 54
	lbu	a5,0(a5)
	.loc 5 1979 11
	li	a1,1
	mv	a0,a5
	call	mbedtls_ct_uint_ne
	mv	a5,a0
	.loc 5 1979 11 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-48(s0)
	call	mbedtls_ct_bool_or
	sw	a0,-48(s0)
	.loc 5 1987 42 is_stmt 1
	li	a0,0
	call	mbedtls_ct_compiler_opaque
	mv	a4,a0
	.loc 5 1987 8 discriminator 1
	lw	a5,-48(s0)
	beq	a5,a4,.L474
	.loc 5 1988 13
	li	a5,-16384
	addi	a5,a5,-256
	sw	a5,-20(s0)
	.loc 5 1989 9
	j	.L468
.L474:
	.loc 5 1992 29
	addi	a5,s0,-1072
	lw	a4,-44(s0)
	sub	a5,a4,a5
	.loc 5 1992 17
	mv	a4,a5
	.loc 5 1992 14
	lw	a5,-36(s0)
	sub	a5,a5,a4
	.loc 5 1992 8
	lw	a4,0(s0)
	bgeu	a4,a5,.L475
	.loc 5 1993 13
	li	a5,-16384
	addi	a5,a5,-1024
	sw	a5,-20(s0)
	.loc 5 1994 9
	j	.L468
.L475:
	.loc 5 1997 33
	addi	a5,s0,-1072
	lw	a4,-44(s0)
	sub	a5,a4,a5
	.loc 5 1997 21
	mv	a4,a5
	.loc 5 1997 18
	lw	a5,-36(s0)
	sub	a4,a5,a4
	.loc 5 1997 11
	lw	a5,-1160(s0)
	sw	a4,0(a5)
	.loc 5 1998 9
	lw	a5,-1160(s0)
	lw	a5,0(a5)
	.loc 5 1998 8
	beq	a5,zero,.L476
	.loc 5 1999 9
	lw	a5,-1160(s0)
	lw	a5,0(a5)
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-1168(s0)
	call	memcpy
.L476:
	.loc 5 2001 9
	sw	zero,-20(s0)
	j	.L468
.L478:
	.loc 5 1934 9
	nop
	j	.L468
.L479:
	.loc 5 1946 9
	nop
	j	.L468
.L480:
	.loc 5 1953 9
	nop
.L468:
	.loc 5 2004 5
	addi	a5,s0,-1072
	li	a1,1024
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 5 2005 5
	addi	a5,s0,-1136
	li	a1,64
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 5 2007 12
	lw	a5,-20(s0)
.L477:
	.loc 5 2008 1
	mv	a0,a5
	lw	ra,1164(sp)
	.cfi_restore 1
	lw	s0,1160(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 1168
	addi	sp,sp,1168
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE131:
	.size	mbedtls_rsa_rsaes_oaep_decrypt, .-mbedtls_rsa_rsaes_oaep_decrypt
	.section	.text.mbedtls_rsa_rsaes_pkcs1_v15_decrypt,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_rsaes_pkcs1_v15_decrypt
	.type	mbedtls_rsa_rsaes_pkcs1_v15_decrypt, @function
mbedtls_rsa_rsaes_pkcs1_v15_decrypt:
.LFB132:
	.loc 5 2022 1
	.cfi_startproc
	addi	sp,sp,-1088
	.cfi_def_cfa_offset 1088
	sw	ra,1084(sp)
	sw	s0,1080(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,1088
	.cfi_def_cfa 8, 0
	sw	a0,-1060(s0)
	sw	a1,-1064(s0)
	sw	a2,-1068(s0)
	sw	a3,-1072(s0)
	sw	a4,-1076(s0)
	sw	a5,-1080(s0)
	sw	a6,-1084(s0)
	.loc 5 2023 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 2027 10
	lw	a5,-1060(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 5 2029 12
	lw	a5,-1060(s0)
	lw	a5,112(a5)
	.loc 5 2029 8
	beq	a5,zero,.L482
	.loc 5 2030 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L488
.L482:
	.loc 5 2033 8
	lw	a4,-24(s0)
	li	a5,15
	bleu	a4,a5,.L484
	.loc 5 2033 19 discriminator 1
	lw	a4,-24(s0)
	li	a5,1024
	bleu	a4,a5,.L485
.L484:
	.loc 5 2034 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L488
.L485:
	.loc 5 2037 11
	addi	a5,s0,-1048
	mv	a4,a5
	lw	a3,-1076(s0)
	lw	a2,-1068(s0)
	lw	a1,-1064(s0)
	lw	a0,-1060(s0)
	call	mbedtls_rsa_private
	sw	a0,-20(s0)
	.loc 5 2039 8
	lw	a5,-20(s0)
	bne	a5,zero,.L489
	.loc 5 2043 11
	addi	a5,s0,-1048
	lw	a4,-1072(s0)
	lw	a3,-1084(s0)
	lw	a2,-1080(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_ct_rsaes_pkcs1_v15_unpadding
	sw	a0,-20(s0)
	j	.L487
.L489:
	.loc 5 2040 9
	nop
.L487:
	.loc 5 2047 5
	addi	a5,s0,-1048
	li	a1,1024
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 5 2049 12
	lw	a5,-20(s0)
.L488:
	.loc 5 2050 1
	mv	a0,a5
	lw	ra,1084(sp)
	.cfi_restore 1
	lw	s0,1080(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 1088
	addi	sp,sp,1088
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE132:
	.size	mbedtls_rsa_rsaes_pkcs1_v15_decrypt, .-mbedtls_rsa_rsaes_pkcs1_v15_decrypt
	.section	.text.mbedtls_rsa_pkcs1_decrypt,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_pkcs1_decrypt
	.type	mbedtls_rsa_pkcs1_decrypt, @function
mbedtls_rsa_pkcs1_decrypt:
.LFB133:
	.loc 5 2063 1
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
	.loc 5 2064 16
	lw	a5,-20(s0)
	lw	a5,112(a5)
	.loc 5 2064 5
	beq	a5,zero,.L491
	li	a4,1
	beq	a5,a4,.L492
	j	.L495
.L491:
	.loc 5 2067 20
	lw	a6,-44(s0)
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_rsa_rsaes_pkcs1_v15_decrypt
	mv	a5,a0
	j	.L494
.L492:
	.loc 5 2073 20
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
	call	mbedtls_rsa_rsaes_oaep_decrypt
	mv	a5,a0
	j	.L494
.L495:
	.loc 5 2079 20
	li	a5,-16384
	addi	a5,a5,-256
.L494:
	.loc 5 2081 1
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
.LFE133:
	.size	mbedtls_rsa_pkcs1_decrypt, .-mbedtls_rsa_pkcs1_decrypt
	.section	.text.rsa_rsassa_pss_sign_no_mode_check,"ax",@progbits
	.align	1
	.type	rsa_rsassa_pss_sign_no_mode_check, @function
rsa_rsassa_pss_sign_no_mode_check:
.LFB134:
	.loc 5 2092 1
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
	sw	a4,-84(s0)
	sw	a5,-88(s0)
	sw	a6,-92(s0)
	sw	a7,-96(s0)
	mv	a5,a3
	sb	a5,-77(s0)
	.loc 5 2094 20
	lw	a5,-96(s0)
	sw	a5,-32(s0)
	.loc 5 2095 20
	sw	zero,-36(s0)
	.loc 5 2096 34
	sw	zero,-24(s0)
	.loc 5 2097 9
	li	a5,-110
	sw	a5,-40(s0)
	.loc 5 2101 8
	lbu	a5,-77(s0)
	bne	a5,zero,.L497
	.loc 5 2101 36 discriminator 2
	lw	a5,-84(s0)
	beq	a5,zero,.L498
.L497:
	.loc 5 2101 53 discriminator 3
	lw	a5,-88(s0)
	bne	a5,zero,.L498
	.loc 5 2102 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L499
.L498:
	.loc 5 2105 8
	lw	a5,-72(s0)
	bne	a5,zero,.L500
	.loc 5 2106 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L499
.L500:
	.loc 5 2109 10
	lw	a5,-68(s0)
	lw	a5,4(a5)
	sw	a5,-44(s0)
	.loc 5 2111 8
	lbu	a5,-77(s0)
	beq	a5,zero,.L501
.LBB4:
	.loc 5 2113 30
	lbu	a5,-77(s0)
	mv	a0,a5
	call	mbedtls_md_get_size_from_type
	mv	a5,a0
	.loc 5 2113 16 discriminator 1
	sw	a5,-48(s0)
	.loc 5 2114 12
	lw	a5,-48(s0)
	bne	a5,zero,.L502
	.loc 5 2115 20
	li	a5,-16384
	addi	a5,a5,-128
	j	.L499
.L502:
	.loc 5 2118 12
	lw	a4,-84(s0)
	lw	a5,-48(s0)
	beq	a4,a5,.L501
	.loc 5 2119 20
	li	a5,-16384
	addi	a5,a5,-128
	j	.L499
.L501:
.LBE4:
	.loc 5 2123 38
	lw	a5,-68(s0)
	lw	a5,116(a5)
	.loc 5 2123 13
	sb	a5,-25(s0)
	.loc 5 2124 8
	lbu	a5,-25(s0)
	bne	a5,zero,.L503
	.loc 5 2125 17
	lbu	a5,-77(s0)
	sb	a5,-25(s0)
.L503:
	.loc 5 2127 12
	lbu	a5,-25(s0)
	mv	a0,a5
	call	mbedtls_md_get_size_from_type
	mv	a5,a0
	.loc 5 2127 10 discriminator 1
	sw	a5,-52(s0)
	.loc 5 2128 8
	lw	a5,-52(s0)
	bne	a5,zero,.L504
	.loc 5 2129 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L499
.L504:
	.loc 5 2132 8
	lw	a4,-92(s0)
	li	a5,-1
	bne	a4,a5,.L505
	.loc 5 2140 18
	lw	a5,-52(s0)
	addi	a5,a5,-2
	sw	a5,-56(s0)
	.loc 5 2141 25
	lw	a4,-52(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	.loc 5 2141 36
	addi	a5,a5,2
	.loc 5 2141 12
	lw	a4,-44(s0)
	bgeu	a4,a5,.L506
	.loc 5 2142 20
	li	a5,-16384
	addi	a5,a5,-128
	j	.L499
.L506:
	.loc 5 2143 40
	lw	a5,-52(s0)
	addi	a5,a5,1
	slli	a5,a5,1
	.loc 5 2143 19
	lw	a4,-44(s0)
	bltu	a4,a5,.L507
	.loc 5 2144 18
	lw	a5,-52(s0)
	sw	a5,-20(s0)
	j	.L508
.L507:
	.loc 5 2146 25
	lw	a4,-44(s0)
	lw	a5,-52(s0)
	sub	a5,a4,a5
	.loc 5 2146 18
	addi	a5,a5,-2
	sw	a5,-20(s0)
	j	.L508
.L505:
	.loc 5 2148 15
	lw	a5,-92(s0)
	blt	a5,zero,.L509
	.loc 5 2148 42 discriminator 1
	lw	a4,-92(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	.loc 5 2148 49 discriminator 1
	addi	a5,a5,2
	.loc 5 2148 30 discriminator 1
	lw	a4,-44(s0)
	bgeu	a4,a5,.L510
.L509:
	.loc 5 2149 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L499
.L510:
	.loc 5 2151 14
	lw	a5,-92(s0)
	sw	a5,-20(s0)
.L508:
	.loc 5 2154 5
	lw	a2,-44(s0)
	li	a1,0
	lw	a0,-96(s0)
	call	memset
	.loc 5 2157 30
	lw	a5,-68(s0)
	addi	a5,a5,8
	.loc 5 2157 11
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	mv	a5,a0
	.loc 5 2157 9 discriminator 1
	addi	a5,a5,-1
	sw	a5,-60(s0)
	.loc 5 2158 15
	lw	a4,-44(s0)
	lw	a5,-52(s0)
	sub	a4,a4,a5
	.loc 5 2158 22
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 5 2158 7
	addi	a5,a5,-2
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 5 2159 7
	lw	a5,-32(s0)
	addi	a4,a5,1
	sw	a4,-32(s0)
	.loc 5 2159 10
	li	a4,1
	sb	a4,0(a5)
	.loc 5 2162 10
	lw	a5,-32(s0)
	sw	a5,-36(s0)
	.loc 5 2163 16
	lw	a5,-72(s0)
	lw	a2,-20(s0)
	lw	a1,-36(s0)
	lw	a0,-76(s0)
	jalr	a5
.LVL2:
	sw	a0,-40(s0)
	.loc 5 2163 8 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L511
	.loc 5 2164 16
	li	a5,4096
	addi	a3,a5,-1932
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-40(s0)
	li	a5,-16384
	addi	a0,a5,-1152
	call	mbedtls_error_add
	mv	a5,a0
	j	.L499
.L511:
	.loc 5 2167 7
	lw	a4,-32(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 5 2170 11
	lbu	a5,-25(s0)
	lw	a4,-32(s0)
	lw	a3,-20(s0)
	lw	a2,-36(s0)
	lw	a1,-84(s0)
	lw	a0,-88(s0)
	call	hash_mprime
	sw	a0,-40(s0)
	.loc 5 2171 8
	lw	a5,-40(s0)
	beq	a5,zero,.L512
	.loc 5 2172 16
	lw	a5,-40(s0)
	j	.L499
.L512:
	.loc 5 2176 13
	lw	a5,-60(s0)
	andi	a5,a5,7
	.loc 5 2176 8
	bne	a5,zero,.L513
	.loc 5 2177 16
	li	a5,1
	sw	a5,-24(s0)
.L513:
	.loc 5 2181 11
	lw	a4,-96(s0)
	lw	a5,-24(s0)
	add	a0,a4,a5
	.loc 5 2181 39
	lw	a4,-44(s0)
	lw	a5,-52(s0)
	sub	a4,a4,a5
	.loc 5 2181 50
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 5 2181 11
	addi	a5,a5,-1
	lbu	a4,-25(s0)
	lw	a3,-52(s0)
	lw	a2,-32(s0)
	mv	a1,a5
	call	mgf_mask
	sw	a0,-40(s0)
	.loc 5 2182 8
	lw	a5,-40(s0)
	beq	a5,zero,.L514
	.loc 5 2183 16
	lw	a5,-40(s0)
	j	.L499
.L514:
	.loc 5 2186 30
	lw	a5,-68(s0)
	addi	a5,a5,8
	.loc 5 2186 11
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	mv	a5,a0
	.loc 5 2186 9 discriminator 1
	addi	a5,a5,-1
	sw	a5,-60(s0)
	.loc 5 2187 8
	lw	a5,-96(s0)
	lbu	a5,0(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 5 2187 29
	lw	a5,-44(s0)
	slli	a3,a5,3
	.loc 5 2187 33
	lw	a5,-60(s0)
	sub	a5,a3,a5
	.loc 5 2187 20
	li	a3,255
	sra	a5,a3,a5
	.loc 5 2187 12
	slli	a5,a5,24
	srai	a5,a5,24
	and	a5,a4,a5
	slli	a5,a5,24
	srai	a5,a5,24
	andi	a4,a5,0xff
	lw	a5,-96(s0)
	sb	a4,0(a5)
	.loc 5 2189 7
	lw	a4,-32(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 5 2190 7
	lw	a5,-32(s0)
	addi	a4,a5,1
	sw	a4,-32(s0)
	.loc 5 2190 10
	li	a4,-68
	sb	a4,0(a5)
	.loc 5 2192 12
	lw	a4,-96(s0)
	lw	a3,-96(s0)
	lw	a2,-76(s0)
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	mbedtls_rsa_private
	mv	a5,a0
.L499:
	.loc 5 2193 1
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
.LFE134:
	.size	rsa_rsassa_pss_sign_no_mode_check, .-rsa_rsassa_pss_sign_no_mode_check
	.section	.text.rsa_rsassa_pss_sign,"ax",@progbits
	.align	1
	.type	rsa_rsassa_pss_sign, @function
rsa_rsassa_pss_sign:
.LFB135:
	.loc 5 2203 1
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
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	sw	a7,-48(s0)
	mv	a5,a3
	sb	a5,-29(s0)
	.loc 5 2204 12
	lw	a5,-20(s0)
	lw	a4,112(a5)
	.loc 5 2204 8
	li	a5,1
	beq	a4,a5,.L516
	.loc 5 2205 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L517
.L516:
	.loc 5 2207 13
	lw	a5,-20(s0)
	lw	a5,116(a5)
	.loc 5 2207 8
	bne	a5,zero,.L518
	.loc 5 2207 43 discriminator 1
	lbu	a5,-29(s0)
	bne	a5,zero,.L518
	.loc 5 2208 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L517
.L518:
	.loc 5 2210 12
	lbu	a3,-29(s0)
	lw	a7,-48(s0)
	lw	a6,-44(s0)
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	rsa_rsassa_pss_sign_no_mode_check
	mv	a5,a0
.L517:
	.loc 5 2212 1
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
.LFE135:
	.size	rsa_rsassa_pss_sign, .-rsa_rsassa_pss_sign
	.section	.text.mbedtls_rsa_rsassa_pss_sign_no_mode_check,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_rsassa_pss_sign_no_mode_check
	.type	mbedtls_rsa_rsassa_pss_sign_no_mode_check, @function
mbedtls_rsa_rsassa_pss_sign_no_mode_check:
.LFB136:
	.loc 5 2221 1
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
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	mv	a5,a3
	sb	a5,-29(s0)
	.loc 5 2222 12
	lbu	a3,-29(s0)
	lw	a7,-44(s0)
	li	a6,-1
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	rsa_rsassa_pss_sign_no_mode_check
	mv	a5,a0
	.loc 5 2224 1
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
.LFE136:
	.size	mbedtls_rsa_rsassa_pss_sign_no_mode_check, .-mbedtls_rsa_rsassa_pss_sign_no_mode_check
	.section	.text.mbedtls_rsa_rsassa_pss_sign_ext,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_rsassa_pss_sign_ext
	.type	mbedtls_rsa_rsassa_pss_sign_ext, @function
mbedtls_rsa_rsassa_pss_sign_ext:
.LFB137:
	.loc 5 2238 1
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
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	sw	a7,-48(s0)
	mv	a5,a3
	sb	a5,-29(s0)
	.loc 5 2239 12
	lbu	a3,-29(s0)
	lw	a7,-48(s0)
	lw	a6,-44(s0)
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	rsa_rsassa_pss_sign
	mv	a5,a0
	.loc 5 2241 1
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
.LFE137:
	.size	mbedtls_rsa_rsassa_pss_sign_ext, .-mbedtls_rsa_rsassa_pss_sign_ext
	.section	.text.mbedtls_rsa_rsassa_pss_sign,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_rsassa_pss_sign
	.type	mbedtls_rsa_rsassa_pss_sign, @function
mbedtls_rsa_rsassa_pss_sign:
.LFB138:
	.loc 5 2253 1
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
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	mv	a5,a3
	sb	a5,-29(s0)
	.loc 5 2254 12
	lbu	a3,-29(s0)
	lw	a7,-44(s0)
	li	a6,-1
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	rsa_rsassa_pss_sign
	mv	a5,a0
	.loc 5 2256 1
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
.LFE138:
	.size	mbedtls_rsa_rsassa_pss_sign, .-mbedtls_rsa_rsassa_pss_sign
	.section	.text.rsa_rsassa_pkcs1_v15_encode,"ax",@progbits
	.align	1
	.type	rsa_rsassa_pkcs1_v15_encode, @function
rsa_rsassa_pkcs1_v15_encode:
.LFB139:
	.loc 5 2286 1
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
	sb	a5,-49(s0)
	.loc 5 2287 12
	sw	zero,-32(s0)
	.loc 5 2288 12
	lw	a5,-64(s0)
	sw	a5,-20(s0)
	.loc 5 2289 20
	lw	a5,-68(s0)
	sw	a5,-24(s0)
	.loc 5 2290 17
	sw	zero,-36(s0)
	.loc 5 2293 8
	lbu	a5,-49(s0)
	beq	a5,zero,.L526
.LBB5:
	.loc 5 2294 33
	lbu	a5,-49(s0)
	mv	a0,a5
	call	mbedtls_md_get_size_from_type
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 5 2295 12
	lbu	a5,-25(s0)
	bne	a5,zero,.L527
	.loc 5 2296 20
	li	a5,-16384
	addi	a5,a5,-128
	j	.L539
.L527:
	.loc 5 2299 13
	addi	a3,s0,-32
	addi	a4,s0,-36
	lbu	a5,-49(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_oid_get_oid_by_md
	mv	a5,a0
	.loc 5 2299 12 discriminator 1
	beq	a5,zero,.L529
	.loc 5 2300 20
	li	a5,-16384
	addi	a5,a5,-128
	j	.L539
.L529:
	.loc 5 2303 21
	lbu	a5,-25(s0)
	.loc 5 2303 12
	lw	a4,-56(s0)
	beq	a4,a5,.L530
	.loc 5 2304 20
	li	a5,-16384
	addi	a5,a5,-128
	j	.L539
.L530:
	.loc 5 2309 25
	lw	a4,-32(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	addi	a4,a5,8
	.loc 5 2309 12
	li	a5,127
	bgtu	a4,a5,.L531
	.loc 5 2309 44 discriminator 1
	lw	a4,-56(s0)
	li	a5,-11
	bgtu	a4,a5,.L531
	.loc 5 2311 26
	lw	a4,-32(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	addi	a4,a5,10
	.loc 5 2311 42
	lw	a5,-56(s0)
	addi	a5,a5,10
	.loc 5 2310 36
	bgeu	a4,a5,.L532
.L531:
	.loc 5 2312 20
	li	a5,-16384
	addi	a5,a5,-128
	j	.L539
.L532:
	.loc 5 2323 35
	lw	a4,-32(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	addi	a5,a5,10
	.loc 5 2323 12
	lw	a4,-20(s0)
	bgeu	a4,a5,.L533
	.loc 5 2324 20
	li	a5,-16384
	addi	a5,a5,-128
	j	.L539
.L533:
	.loc 5 2326 32
	lw	a4,-32(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	.loc 5 2326 16
	lw	a4,-20(s0)
	sub	a5,a4,a5
	addi	a5,a5,-10
	sw	a5,-20(s0)
.LBE5:
	j	.L534
.L526:
	.loc 5 2328 12
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	bgeu	a4,a5,.L535
	.loc 5 2329 20
	li	a5,-16384
	addi	a5,a5,-128
	j	.L539
.L535:
	.loc 5 2332 16
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
.L534:
	.loc 5 2337 8
	lw	a4,-20(s0)
	li	a5,10
	bgtu	a4,a5,.L536
	.loc 5 2338 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L539
.L536:
	.loc 5 2340 12
	lw	a5,-20(s0)
	addi	a5,a5,-3
	sw	a5,-20(s0)
	.loc 5 2346 7
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 2346 10
	sb	zero,0(a5)
	.loc 5 2347 7
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 2347 10
	li	a4,1
	sb	a4,0(a5)
	.loc 5 2348 5
	lw	a2,-20(s0)
	li	a1,255
	lw	a0,-24(s0)
	call	memset
	.loc 5 2349 7
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 2350 7
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 2350 10
	sb	zero,0(a5)
	.loc 5 2353 8
	lbu	a5,-49(s0)
	bne	a5,zero,.L537
	.loc 5 2354 9
	lw	a2,-56(s0)
	lw	a1,-60(s0)
	lw	a0,-24(s0)
	call	memcpy
	.loc 5 2355 16
	li	a5,0
	j	.L539
.L537:
	.loc 5 2371 7
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 2371 10
	li	a4,48
	sb	a4,0(a5)
	.loc 5 2372 45
	lw	a5,-32(s0)
	andi	a4,a5,0xff
	lw	a5,-56(s0)
	andi	a5,a5,0xff
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 5 2372 7
	lw	a5,-24(s0)
	addi	a3,a5,1
	sw	a3,-24(s0)
	.loc 5 2372 12
	addi	a4,a4,8
	andi	a4,a4,0xff
	.loc 5 2372 10
	sb	a4,0(a5)
	.loc 5 2373 7
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 2373 10
	li	a4,48
	sb	a4,0(a5)
	.loc 5 2374 12
	lw	a5,-32(s0)
	andi	a4,a5,0xff
	.loc 5 2374 7
	lw	a5,-24(s0)
	addi	a3,a5,1
	sw	a3,-24(s0)
	.loc 5 2374 12
	addi	a4,a4,4
	andi	a4,a4,0xff
	.loc 5 2374 10
	sb	a4,0(a5)
	.loc 5 2375 7
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 2375 10
	li	a4,6
	sb	a4,0(a5)
	.loc 5 2376 12
	lw	a3,-32(s0)
	.loc 5 2376 7
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 2376 12
	andi	a4,a3,0xff
	.loc 5 2376 10
	sb	a4,0(a5)
	.loc 5 2377 5
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-24(s0)
	call	memcpy
	.loc 5 2378 7
	lw	a5,-32(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 2379 7
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 2379 10
	li	a4,5
	sb	a4,0(a5)
	.loc 5 2380 7
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 2380 10
	sb	zero,0(a5)
	.loc 5 2381 7
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 2381 10
	li	a4,4
	sb	a4,0(a5)
	.loc 5 2382 7
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 2382 12
	lw	a4,-56(s0)
	andi	a4,a4,0xff
	.loc 5 2382 10
	sb	a4,0(a5)
	.loc 5 2383 5
	lw	a2,-56(s0)
	lw	a1,-60(s0)
	lw	a0,-24(s0)
	call	memcpy
	.loc 5 2384 7
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 2388 18
	lw	a4,-68(s0)
	lw	a5,-64(s0)
	add	a5,a4,a5
	.loc 5 2388 8
	lw	a4,-24(s0)
	beq	a4,a5,.L538
	.loc 5 2389 9
	lw	a1,-64(s0)
	lw	a0,-68(s0)
	call	mbedtls_platform_zeroize
	.loc 5 2390 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L539
.L538:
	.loc 5 2393 12
	li	a5,0
.L539:
	.loc 5 2394 1
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
.LFE139:
	.size	rsa_rsassa_pkcs1_v15_encode, .-rsa_rsassa_pkcs1_v15_encode
	.section	.text.mbedtls_rsa_rsassa_pkcs1_v15_sign,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_rsassa_pkcs1_v15_sign
	.type	mbedtls_rsa_rsassa_pkcs1_v15_sign, @function
mbedtls_rsa_rsassa_pkcs1_v15_sign:
.LFB140:
	.loc 5 2406 1
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
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	mv	a5,a3
	sb	a5,-45(s0)
	.loc 5 2407 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 2408 20
	sw	zero,-24(s0)
	.loc 5 2408 36
	sw	zero,-28(s0)
	.loc 5 2410 8
	lbu	a5,-45(s0)
	bne	a5,zero,.L541
	.loc 5 2410 36 discriminator 2
	lw	a5,-52(s0)
	beq	a5,zero,.L542
.L541:
	.loc 5 2410 53 discriminator 3
	lw	a5,-56(s0)
	bne	a5,zero,.L542
	.loc 5 2411 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L543
.L542:
	.loc 5 2414 12
	lw	a5,-36(s0)
	lw	a5,112(a5)
	.loc 5 2414 8
	beq	a5,zero,.L544
	.loc 5 2415 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L543
.L544:
	.loc 5 2422 16
	lw	a5,-36(s0)
	lw	a3,4(a5)
	lbu	a5,-45(s0)
	lw	a4,-60(s0)
	lw	a2,-56(s0)
	lw	a1,-52(s0)
	mv	a0,a5
	call	rsa_rsassa_pkcs1_v15_encode
	sw	a0,-20(s0)
	.loc 5 2422 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L545
	.loc 5 2424 16
	lw	a5,-20(s0)
	j	.L543
.L545:
	.loc 5 2433 15
	lw	a5,-36(s0)
	lw	a5,4(a5)
	mv	a1,a5
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-24(s0)
	.loc 5 2434 8
	lw	a5,-24(s0)
	bne	a5,zero,.L546
	.loc 5 2435 16
	li	a5,-16
	j	.L543
.L546:
	.loc 5 2438 13
	lw	a5,-36(s0)
	lw	a5,4(a5)
	mv	a1,a5
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-28(s0)
	.loc 5 2439 8
	lw	a5,-28(s0)
	bne	a5,zero,.L547
	.loc 5 2440 9
	lw	a0,-24(s0)
	call	free
	.loc 5 2441 16
	li	a5,-16
	j	.L543
.L547:
	.loc 5 2444 22
	lw	a4,-24(s0)
	lw	a3,-60(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_rsa_private
	sw	a0,-20(s0)
	.loc 5 2444 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L553
	.loc 5 2445 22
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	mbedtls_rsa_public
	sw	a0,-20(s0)
	.loc 5 2445 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L554
	.loc 5 2447 9
	lw	a5,-36(s0)
	lw	a5,4(a5)
	mv	a2,a5
	lw	a1,-60(s0)
	lw	a0,-28(s0)
	call	mbedtls_ct_memcmp
	mv	a5,a0
	.loc 5 2447 8 discriminator 1
	beq	a5,zero,.L551
	.loc 5 2448 13
	li	a5,-16384
	addi	a5,a5,-768
	sw	a5,-20(s0)
	.loc 5 2449 9
	j	.L549
.L551:
	.loc 5 2452 5
	lw	a5,-36(s0)
	lw	a5,4(a5)
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-60(s0)
	call	memcpy
	j	.L549
.L553:
	.loc 5 2444 83
	nop
	j	.L549
.L554:
	.loc 5 2445 70
	nop
.L549:
	.loc 5 2455 5
	lw	a5,-36(s0)
	lw	a5,4(a5)
	mv	a1,a5
	lw	a0,-24(s0)
	call	mbedtls_zeroize_and_free
	.loc 5 2456 5
	lw	a5,-36(s0)
	lw	a5,4(a5)
	mv	a1,a5
	lw	a0,-28(s0)
	call	mbedtls_zeroize_and_free
	.loc 5 2458 8
	lw	a5,-20(s0)
	beq	a5,zero,.L552
	.loc 5 2459 9
	lw	a5,-36(s0)
	lw	a5,4(a5)
	mv	a2,a5
	li	a1,33
	lw	a0,-60(s0)
	call	memset
.L552:
	.loc 5 2461 12
	lw	a5,-20(s0)
.L543:
	.loc 5 2462 1
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
.LFE140:
	.size	mbedtls_rsa_rsassa_pkcs1_v15_sign, .-mbedtls_rsa_rsassa_pkcs1_v15_sign
	.section	.text.mbedtls_rsa_pkcs1_sign,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_pkcs1_sign
	.type	mbedtls_rsa_pkcs1_sign, @function
mbedtls_rsa_pkcs1_sign:
.LFB141:
	.loc 5 2475 1
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
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	mv	a5,a3
	sb	a5,-29(s0)
	.loc 5 2476 8
	lbu	a5,-29(s0)
	bne	a5,zero,.L556
	.loc 5 2476 36 discriminator 2
	lw	a5,-36(s0)
	beq	a5,zero,.L557
.L556:
	.loc 5 2476 53 discriminator 3
	lw	a5,-40(s0)
	bne	a5,zero,.L557
	.loc 5 2477 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L558
.L557:
	.loc 5 2480 16
	lw	a5,-20(s0)
	lw	a5,112(a5)
	.loc 5 2480 5
	beq	a5,zero,.L559
	li	a4,1
	beq	a5,a4,.L560
	j	.L562
.L559:
	.loc 5 2483 20
	lbu	a3,-29(s0)
	lw	a6,-44(s0)
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_rsa_rsassa_pkcs1_v15_sign
	mv	a5,a0
	j	.L558
.L560:
	.loc 5 2489 20
	lbu	a3,-29(s0)
	lw	a6,-44(s0)
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_rsa_rsassa_pss_sign
	mv	a5,a0
	j	.L558
.L562:
	.loc 5 2494 20
	li	a5,-16384
	addi	a5,a5,-256
.L558:
	.loc 5 2496 1
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
.LFE141:
	.size	mbedtls_rsa_pkcs1_sign, .-mbedtls_rsa_pkcs1_sign
	.section	.text.mbedtls_rsa_rsassa_pss_verify_ext,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_rsassa_pss_verify_ext
	.type	mbedtls_rsa_rsassa_pss_verify_ext, @function
mbedtls_rsa_rsassa_pss_verify_ext:
.LFB142:
	.loc 5 2509 1
	.cfi_startproc
	addi	sp,sp,-1168
	.cfi_def_cfa_offset 1168
	sw	ra,1164(sp)
	sw	s0,1160(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,1168
	.cfi_def_cfa 8, 0
	sw	a0,-1140(s0)
	sw	a2,-1148(s0)
	sw	a3,-1152(s0)
	sw	a5,-1156(s0)
	sw	a6,-1160(s0)
	mv	a5,a1
	sb	a5,-1141(s0)
	mv	a5,a4
	sb	a5,-1142(s0)
	.loc 5 2510 9
	li	a5,-110
	sw	a5,-28(s0)
	.loc 5 2517 19
	addi	a5,s0,-1136
	li	a4,1024
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 5 2519 8
	lbu	a5,-1141(s0)
	bne	a5,zero,.L564
	.loc 5 2519 36 discriminator 2
	lw	a5,-1148(s0)
	beq	a5,zero,.L565
.L564:
	.loc 5 2519 53 discriminator 3
	lw	a5,-1152(s0)
	bne	a5,zero,.L565
	.loc 5 2520 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L585
.L565:
	.loc 5 2523 12
	lw	a5,-1140(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 5 2525 8
	lw	a4,-20(s0)
	li	a5,15
	bleu	a4,a5,.L567
	.loc 5 2525 21 discriminator 1
	lw	a4,-20(s0)
	li	a5,1024
	bleu	a4,a5,.L568
.L567:
	.loc 5 2526 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L585
.L568:
	.loc 5 2529 11
	addi	a5,s0,-1136
	mv	a2,a5
	lw	a1,-1160(s0)
	lw	a0,-1140(s0)
	call	mbedtls_rsa_public
	sw	a0,-28(s0)
	.loc 5 2531 8
	lw	a5,-28(s0)
	beq	a5,zero,.L569
	.loc 5 2532 16
	lw	a5,-28(s0)
	j	.L585
.L569:
	.loc 5 2535 7
	addi	a5,s0,-1136
	sw	a5,-24(s0)
	.loc 5 2537 20
	lw	a5,-20(s0)
	addi	a5,a5,-1
	.loc 5 2537 12
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-1120(a5)
	.loc 5 2537 8
	li	a5,188
	beq	a4,a5,.L570
	.loc 5 2538 16
	li	a5,-16384
	addi	a5,a5,-256
	j	.L585
.L570:
	.loc 5 2541 8
	lbu	a5,-1141(s0)
	beq	a5,zero,.L571
.LBB6:
	.loc 5 2543 30
	lbu	a5,-1141(s0)
	mv	a0,a5
	call	mbedtls_md_get_size_from_type
	mv	a5,a0
	.loc 5 2543 16 discriminator 1
	sw	a5,-32(s0)
	.loc 5 2544 12
	lw	a5,-32(s0)
	bne	a5,zero,.L572
	.loc 5 2545 20
	li	a5,-16384
	addi	a5,a5,-128
	j	.L585
.L572:
	.loc 5 2548 12
	lw	a4,-1148(s0)
	lw	a5,-32(s0)
	beq	a4,a5,.L571
	.loc 5 2549 20
	li	a5,-16384
	addi	a5,a5,-128
	j	.L585
.L571:
.LBE6:
	.loc 5 2553 12
	lbu	a5,-1142(s0)
	mv	a0,a5
	call	mbedtls_md_get_size_from_type
	mv	a5,a0
	.loc 5 2553 10 discriminator 1
	sw	a5,-36(s0)
	.loc 5 2554 8
	lw	a5,-36(s0)
	bne	a5,zero,.L573
	.loc 5 2555 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L585
.L573:
	.loc 5 2561 30
	lw	a5,-1140(s0)
	addi	a5,a5,8
	.loc 5 2561 11
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	mv	a5,a0
	.loc 5 2561 9 discriminator 1
	addi	a5,a5,-1
	sw	a5,-40(s0)
	.loc 5 2563 12
	lbu	a5,-1136(s0)
	mv	a3,a5
	.loc 5 2563 22
	li	a4,1
	lw	a5,-20(s0)
	sub	a5,a4,a5
	slli	a4,a5,3
	.loc 5 2563 35
	lw	a5,-40(s0)
	add	a5,a4,a5
	.loc 5 2563 16
	sra	a5,a3,a5
	.loc 5 2563 8
	beq	a5,zero,.L574
	.loc 5 2564 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L585
.L574:
	.loc 5 2568 13
	lw	a5,-40(s0)
	andi	a5,a5,7
	.loc 5 2568 8
	bne	a5,zero,.L575
	.loc 5 2569 10
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 5 2570 16
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L575:
	.loc 5 2573 23
	lw	a5,-36(s0)
	addi	a5,a5,2
	.loc 5 2573 8
	lw	a4,-20(s0)
	bgeu	a4,a5,.L576
	.loc 5 2574 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L585
.L576:
	.loc 5 2576 29
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	.loc 5 2576 36
	addi	a5,a5,-1
	.loc 5 2576 16
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 5 2578 30
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	.loc 5 2578 11
	addi	a5,a5,-1
	lbu	a4,-1142(s0)
	lw	a3,-36(s0)
	lw	a2,-44(s0)
	mv	a1,a5
	lw	a0,-24(s0)
	call	mgf_mask
	sw	a0,-28(s0)
	.loc 5 2579 8
	lw	a5,-28(s0)
	beq	a5,zero,.L577
	.loc 5 2580 16
	lw	a5,-28(s0)
	j	.L585
.L577:
	.loc 5 2583 8
	lbu	a5,-1136(s0)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 5 2583 31
	lw	a5,-20(s0)
	slli	a3,a5,3
	.loc 5 2583 35
	lw	a5,-40(s0)
	sub	a5,a3,a5
	.loc 5 2583 20
	li	a3,255
	sra	a5,a3,a5
	.loc 5 2583 12
	slli	a5,a5,24
	srai	a5,a5,24
	and	a5,a4,a5
	slli	a5,a5,24
	srai	a5,a5,24
	andi	a5,a5,0xff
	sb	a5,-1136(s0)
	.loc 5 2585 11
	j	.L578
.L580:
	.loc 5 2586 10
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L578:
	.loc 5 2585 27
	lw	a5,-44(s0)
	addi	a5,a5,-1
	.loc 5 2585 31
	lw	a4,-24(s0)
	bgeu	a4,a5,.L579
	.loc 5 2585 34 discriminator 1
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 5 2585 31 discriminator 1
	beq	a5,zero,.L580
.L579:
	.loc 5 2589 11
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 2589 9
	lbu	a4,0(a5)
	.loc 5 2589 8
	li	a5,1
	beq	a4,a5,.L581
	.loc 5 2590 16
	li	a5,-16384
	addi	a5,a5,-256
	j	.L585
.L581:
	.loc 5 2593 46
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 5 2593 23
	sw	a5,-48(s0)
	.loc 5 2595 8
	lw	a4,-1156(s0)
	li	a5,-1
	beq	a4,a5,.L582
	.loc 5 2596 30
	lw	a5,-1156(s0)
	.loc 5 2595 33 discriminator 1
	lw	a4,-48(s0)
	beq	a4,a5,.L582
	.loc 5 2597 16
	li	a5,-16384
	addi	a5,a5,-256
	j	.L585
.L582:
	.loc 5 2603 11
	lbu	a5,-1142(s0)
	addi	a4,s0,-112
	lw	a3,-48(s0)
	lw	a2,-24(s0)
	lw	a1,-1148(s0)
	lw	a0,-1152(s0)
	call	hash_mprime
	sw	a0,-28(s0)
	.loc 5 2605 8
	lw	a5,-28(s0)
	beq	a5,zero,.L583
	.loc 5 2606 16
	lw	a5,-28(s0)
	j	.L585
.L583:
	.loc 5 2609 9
	addi	a5,s0,-112
	lw	a2,-36(s0)
	mv	a1,a5
	lw	a0,-44(s0)
	call	memcmp
	mv	a5,a0
	.loc 5 2609 8 discriminator 1
	beq	a5,zero,.L584
	.loc 5 2610 16
	li	a5,-16384
	addi	a5,a5,-896
	j	.L585
.L584:
	.loc 5 2613 12
	li	a5,0
.L585:
	.loc 5 2614 1
	mv	a0,a5
	lw	ra,1164(sp)
	.cfi_restore 1
	lw	s0,1160(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 1168
	addi	sp,sp,1168
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE142:
	.size	mbedtls_rsa_rsassa_pss_verify_ext, .-mbedtls_rsa_rsassa_pss_verify_ext
	.section	.text.mbedtls_rsa_rsassa_pss_verify,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_rsassa_pss_verify
	.type	mbedtls_rsa_rsassa_pss_verify, @function
mbedtls_rsa_rsassa_pss_verify:
.LFB143:
	.loc 5 2624 1
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
	mv	a5,a1
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sb	a5,-37(s0)
	.loc 5 2626 8
	lbu	a5,-37(s0)
	bne	a5,zero,.L587
	.loc 5 2626 36 discriminator 2
	lw	a5,-44(s0)
	beq	a5,zero,.L588
.L587:
	.loc 5 2626 53 discriminator 3
	lw	a5,-48(s0)
	bne	a5,zero,.L588
	.loc 5 2627 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L589
.L588:
	.loc 5 2630 24
	lw	a5,-36(s0)
	lw	a5,116(a5)
	.loc 5 2632 30
	beq	a5,zero,.L590
	.loc 5 2631 55
	lw	a5,-36(s0)
	lw	a5,116(a5)
	.loc 5 2630 18
	sb	a5,-17(s0)
	j	.L591
.L590:
	lbu	a5,-37(s0)
	sb	a5,-17(s0)
.L591:
	.loc 5 2634 12
	lbu	a4,-17(s0)
	lbu	a1,-37(s0)
	lw	a6,-52(s0)
	li	a5,-1
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a0,-36(s0)
	call	mbedtls_rsa_rsassa_pss_verify_ext
	mv	a5,a0
.L589:
	.loc 5 2640 1
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
.LFE143:
	.size	mbedtls_rsa_rsassa_pss_verify, .-mbedtls_rsa_rsassa_pss_verify
	.section	.text.mbedtls_rsa_rsassa_pkcs1_v15_verify,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_rsassa_pkcs1_v15_verify
	.type	mbedtls_rsa_rsassa_pkcs1_v15_verify, @function
mbedtls_rsa_rsassa_pkcs1_v15_verify:
.LFB144:
	.loc 5 2652 1
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
	mv	a5,a1
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sb	a5,-37(s0)
	.loc 5 2653 9
	sw	zero,-20(s0)
	.loc 5 2655 20
	sw	zero,-28(s0)
	.loc 5 2655 36
	sw	zero,-24(s0)
	.loc 5 2657 8
	lbu	a5,-37(s0)
	bne	a5,zero,.L593
	.loc 5 2657 36 discriminator 2
	lw	a5,-44(s0)
	beq	a5,zero,.L594
.L593:
	.loc 5 2657 53 discriminator 3
	lw	a5,-48(s0)
	bne	a5,zero,.L594
	.loc 5 2658 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L595
.L594:
	.loc 5 2661 13
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	.loc 5 2667 20
	lw	a1,-32(s0)
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-28(s0)
	.loc 5 2667 8 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L596
	.loc 5 2668 29
	lw	a1,-32(s0)
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-24(s0)
	.loc 5 2667 64 discriminator 2
	lw	a5,-24(s0)
	bne	a5,zero,.L597
.L596:
	.loc 5 2669 13
	li	a5,-16
	sw	a5,-20(s0)
	.loc 5 2670 9
	j	.L598
.L597:
	.loc 5 2673 16
	lbu	a5,-37(s0)
	lw	a4,-24(s0)
	lw	a3,-32(s0)
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	rsa_rsassa_pkcs1_v15_encode
	sw	a0,-20(s0)
	.loc 5 2673 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L603
	.loc 5 2682 11
	lw	a2,-28(s0)
	lw	a1,-52(s0)
	lw	a0,-36(s0)
	call	mbedtls_rsa_public
	sw	a0,-20(s0)
	.loc 5 2683 8
	lw	a5,-20(s0)
	bne	a5,zero,.L604
	.loc 5 2691 16
	lw	a2,-32(s0)
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	mbedtls_ct_memcmp
	sw	a0,-20(s0)
	.loc 5 2691 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L605
	.loc 5 2693 13
	li	a5,-16384
	addi	a5,a5,-896
	sw	a5,-20(s0)
	.loc 5 2694 9
	j	.L598
.L603:
	.loc 5 2675 9
	nop
	j	.L598
.L604:
	.loc 5 2684 9
	nop
	j	.L598
.L605:
	.loc 5 2697 1
	nop
.L598:
	.loc 5 2699 8
	lw	a5,-28(s0)
	beq	a5,zero,.L601
	.loc 5 2700 9
	lw	a1,-32(s0)
	lw	a0,-28(s0)
	call	mbedtls_zeroize_and_free
.L601:
	.loc 5 2703 8
	lw	a5,-24(s0)
	beq	a5,zero,.L602
	.loc 5 2704 9
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	mbedtls_zeroize_and_free
.L602:
	.loc 5 2707 12
	lw	a5,-20(s0)
.L595:
	.loc 5 2708 1
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
.LFE144:
	.size	mbedtls_rsa_rsassa_pkcs1_v15_verify, .-mbedtls_rsa_rsassa_pkcs1_v15_verify
	.section	.text.mbedtls_rsa_pkcs1_verify,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_pkcs1_verify
	.type	mbedtls_rsa_pkcs1_verify, @function
mbedtls_rsa_pkcs1_verify:
.LFB145:
	.loc 5 2719 1
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
	mv	a5,a1
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sb	a5,-21(s0)
	.loc 5 2720 8
	lbu	a5,-21(s0)
	bne	a5,zero,.L607
	.loc 5 2720 36 discriminator 2
	lw	a5,-28(s0)
	beq	a5,zero,.L608
.L607:
	.loc 5 2720 53 discriminator 3
	lw	a5,-32(s0)
	bne	a5,zero,.L608
	.loc 5 2721 16
	li	a5,-16384
	addi	a5,a5,-128
	j	.L609
.L608:
	.loc 5 2724 16
	lw	a5,-20(s0)
	lw	a5,112(a5)
	.loc 5 2724 5
	beq	a5,zero,.L610
	li	a4,1
	beq	a5,a4,.L611
	j	.L613
.L610:
	.loc 5 2727 20
	lbu	a5,-21(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	mbedtls_rsa_rsassa_pkcs1_v15_verify
	mv	a5,a0
	j	.L609
.L611:
	.loc 5 2733 20
	lbu	a5,-21(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	mbedtls_rsa_rsassa_pss_verify
	mv	a5,a0
	j	.L609
.L613:
	.loc 5 2738 20
	li	a5,-16384
	addi	a5,a5,-256
.L609:
	.loc 5 2740 1
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
.LFE145:
	.size	mbedtls_rsa_pkcs1_verify, .-mbedtls_rsa_pkcs1_verify
	.section	.text.mbedtls_rsa_copy,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_copy
	.type	mbedtls_rsa_copy, @function
mbedtls_rsa_copy:
.LFB146:
	.loc 5 2746 1
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
	.loc 5 2747 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 2749 19
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 5 2749 14
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 5 2751 22
	lw	a5,-36(s0)
	addi	a4,a5,8
	lw	a5,-40(s0)
	addi	a5,a5,8
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 2751 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L631
	.loc 5 2752 22
	lw	a5,-36(s0)
	addi	a4,a5,16
	lw	a5,-40(s0)
	addi	a5,a5,16
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 2752 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L632
	.loc 5 2754 22
	lw	a5,-36(s0)
	addi	a4,a5,24
	lw	a5,-40(s0)
	addi	a5,a5,24
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 2754 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L633
	.loc 5 2755 22
	lw	a5,-36(s0)
	addi	a4,a5,32
	lw	a5,-40(s0)
	addi	a5,a5,32
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 2755 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L634
	.loc 5 2756 22
	lw	a5,-36(s0)
	addi	a4,a5,40
	lw	a5,-40(s0)
	addi	a5,a5,40
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 2756 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L635
	.loc 5 2759 22
	lw	a5,-36(s0)
	addi	a4,a5,48
	lw	a5,-40(s0)
	addi	a5,a5,48
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 2759 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L636
	.loc 5 2760 22
	lw	a5,-36(s0)
	addi	a4,a5,56
	lw	a5,-40(s0)
	addi	a5,a5,56
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 2760 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L637
	.loc 5 2761 22
	lw	a5,-36(s0)
	addi	a4,a5,64
	lw	a5,-40(s0)
	addi	a5,a5,64
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 2761 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L638
	.loc 5 2762 22
	lw	a5,-36(s0)
	addi	a4,a5,80
	lw	a5,-40(s0)
	addi	a5,a5,80
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 2762 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L639
	.loc 5 2763 22
	lw	a5,-36(s0)
	addi	a4,a5,88
	lw	a5,-40(s0)
	addi	a5,a5,88
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 2763 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L640
	.loc 5 2766 22
	lw	a5,-36(s0)
	addi	a4,a5,72
	lw	a5,-40(s0)
	addi	a5,a5,72
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 2766 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L641
	.loc 5 2768 22
	lw	a5,-36(s0)
	addi	a4,a5,96
	lw	a5,-40(s0)
	addi	a5,a5,96
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 2768 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L642
	.loc 5 2769 22
	lw	a5,-36(s0)
	addi	a4,a5,104
	lw	a5,-40(s0)
	addi	a5,a5,104
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 5 2769 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L643
	.loc 5 2771 23
	lw	a5,-40(s0)
	lw	a4,112(a5)
	.loc 5 2771 18
	lw	a5,-36(s0)
	sw	a4,112(a5)
	.loc 5 2772 23
	lw	a5,-40(s0)
	lw	a4,116(a5)
	.loc 5 2772 18
	lw	a5,-36(s0)
	sw	a4,116(a5)
	j	.L616
.L631:
	.loc 5 2751 65
	nop
	j	.L616
.L632:
	.loc 5 2752 65
	nop
	j	.L616
.L633:
	.loc 5 2754 65
	nop
	j	.L616
.L634:
	.loc 5 2755 65
	nop
	j	.L616
.L635:
	.loc 5 2756 65
	nop
	j	.L616
.L636:
	.loc 5 2759 67
	nop
	j	.L616
.L637:
	.loc 5 2760 67
	nop
	j	.L616
.L638:
	.loc 5 2761 67
	nop
	j	.L616
.L639:
	.loc 5 2762 67
	nop
	j	.L616
.L640:
	.loc 5 2763 67
	nop
	j	.L616
.L641:
	.loc 5 2766 67
	nop
	j	.L616
.L642:
	.loc 5 2768 67
	nop
	j	.L616
.L643:
	.loc 5 2769 67
	nop
.L616:
	.loc 5 2775 8
	lw	a5,-20(s0)
	beq	a5,zero,.L629
	.loc 5 2776 9
	lw	a0,-36(s0)
	call	mbedtls_rsa_free
.L629:
	.loc 5 2779 12
	lw	a5,-20(s0)
	.loc 5 2780 1
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
.LFE146:
	.size	mbedtls_rsa_copy, .-mbedtls_rsa_copy
	.section	.text.mbedtls_rsa_free,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_free
	.type	mbedtls_rsa_free, @function
mbedtls_rsa_free:
.LFB147:
	.loc 5 2786 1
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
	.loc 5 2787 8
	lw	a5,-20(s0)
	beq	a5,zero,.L647
	.loc 5 2791 5
	lw	a5,-20(s0)
	addi	a5,a5,96
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 2792 5
	lw	a5,-20(s0)
	addi	a5,a5,104
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 2793 5
	lw	a5,-20(s0)
	addi	a5,a5,72
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 2794 5
	lw	a5,-20(s0)
	addi	a5,a5,24
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 2795 5
	lw	a5,-20(s0)
	addi	a5,a5,40
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 2796 5
	lw	a5,-20(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 2797 5
	lw	a5,-20(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 2798 5
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 2801 5
	lw	a5,-20(s0)
	addi	a5,a5,88
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 2802 5
	lw	a5,-20(s0)
	addi	a5,a5,80
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 2803 5
	lw	a5,-20(s0)
	addi	a5,a5,64
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 2804 5
	lw	a5,-20(s0)
	addi	a5,a5,56
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 2805 5
	lw	a5,-20(s0)
	addi	a5,a5,48
	mv	a0,a5
	call	mbedtls_mpi_free
	j	.L644
.L647:
	.loc 5 2788 9
	nop
.L644:
	.loc 5 2815 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE147:
	.size	mbedtls_rsa_free, .-mbedtls_rsa_free
	.section	.text.myrand,"ax",@progbits
	.align	1
	.type	myrand, @function
myrand:
.LFB148:
	.loc 5 2863 1
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
	.loc 5 2867 8
	lw	a5,-36(s0)
	beq	a5,zero,.L649
	.loc 5 2868 19
	sw	zero,-36(s0)
.L649:
	.loc 5 2871 12
	sw	zero,-20(s0)
	.loc 5 2871 5
	j	.L650
.L651:
	.loc 5 2872 21
	call	rand
	mv	a3,a0
	.loc 5 2872 15 discriminator 1
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 5 2872 19 discriminator 1
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 5 2871 26 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L650:
	.loc 5 2871 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L651
	.loc 5 2882 12
	li	a5,0
	.loc 5 2883 1
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
.LFE148:
	.size	myrand, .-myrand
	.section	.rodata
	.align	2
.LC1:
	.string	"9292758453063D803DD603D5E777D7888ED1D5BF35786190FA2F23EBC0848AEADDA92CA6C3D80B32C4D109BE0F36D6AE7130B9CED7ACDF54CFC7555AC14EEBAB93A89813FBF3C4F8066D2D800F7C38A81AE31942917403FF4946B0A83D3D3E05EE57C6F5F5606FB5D4BC6CD34EE0801A5E94BB77B07507233A0BC7BAC8F90F79"
	.align	2
.LC2:
	.string	"C36D0EB7FCD285223CFB5AABA5BDA3D82C01CAD19EA484A87EA4377637E75500FCB2005C5C7DD6EC4AC023CDA285D796C3D9E75E1EFC42488BB4F1D13AC30A57"
	.align	2
.LC3:
	.string	"C000DF51A7C77AE8D7C7370C1FF55B69E211C2B9E5DB1ED0BF61D0D9899620F4910E4168387E3C30AA1E00C339A795088452DD96A9A5EA5D9DCA68DA636032AF"
	.align	2
.LC4:
	.string	"24BF6185468786FDD303083D25E64EFC66CA472BC44D253102F8B4A9D3BFA75091386C0077937FE33FA3252D28855837AE1B484A8A9A45F7EE8C0C634F99E8CDDF79C5CE07EE72C7F123142198164234CABB724CF78B8173B9F880FC86322407AF1FEDFDDE2BEB674CA15F3E81A1521E071513A1E85B5DFA031F21ECAE91A34D"
	.align	2
.LC5:
	.string	"10001"
	.align	2
.LC6:
	.string	"  RSA key validation: "
	.align	2
.LC7:
	.string	"failed\n"
	.align	2
.LC8:
	.string	"passed\n  PKCS#1 encryption : "
	.align	2
.LC9:
	.base64	"qrvMAwIBAP//////ESIzCgsMzN3d3d3dAA=="
	.align	2
.LC10:
	.string	"passed\n  PKCS#1 decryption : "
	.align	2
.LC11:
	.string	"passed\n"
	.align	2
.LC12:
	.string	"  PKCS#1 data sign  : "
	.align	2
.LC13:
	.string	"passed\n  PKCS#1 sig. verify: "
	.align	2
.LC14:
	.string	"\n"
	.section	.text.mbedtls_rsa_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_rsa_self_test
	.type	mbedtls_rsa_self_test, @function
mbedtls_rsa_self_test:
.LFB149:
	.loc 5 2890 1
	.cfi_startproc
	addi	sp,sp,-368
	.cfi_def_cfa_offset 368
	sw	ra,364(sp)
	sw	s0,360(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,368
	.cfi_def_cfa 8, 0
	sw	a0,-356(s0)
	.loc 5 2891 9
	sw	zero,-20(s0)
	.loc 5 2904 5
	addi	a5,s0,-348
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 5 2905 5
	addi	a5,s0,-144
	mv	a0,a5
	call	mbedtls_rsa_init
	.loc 5 2907 22
	addi	a4,s0,-348
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	li	a1,16
	mv	a0,a4
	call	mbedtls_mpi_read_string
	sw	a0,-20(s0)
	.loc 5 2907 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L690
	.loc 5 2908 22
	addi	a1,s0,-348
	addi	a0,s0,-144
	li	a5,0
	li	a4,0
	li	a3,0
	li	a2,0
	call	mbedtls_rsa_import
	sw	a0,-20(s0)
	.loc 5 2908 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L691
	.loc 5 2909 22
	addi	a4,s0,-348
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	li	a1,16
	mv	a0,a4
	call	mbedtls_mpi_read_string
	sw	a0,-20(s0)
	.loc 5 2909 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L692
	.loc 5 2910 22
	addi	a2,s0,-348
	addi	a0,s0,-144
	li	a5,0
	li	a4,0
	li	a3,0
	li	a1,0
	call	mbedtls_rsa_import
	sw	a0,-20(s0)
	.loc 5 2910 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L693
	.loc 5 2911 22
	addi	a4,s0,-348
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,16
	mv	a0,a4
	call	mbedtls_mpi_read_string
	sw	a0,-20(s0)
	.loc 5 2911 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L694
	.loc 5 2912 22
	addi	a3,s0,-348
	addi	a0,s0,-144
	li	a5,0
	li	a4,0
	li	a2,0
	li	a1,0
	call	mbedtls_rsa_import
	sw	a0,-20(s0)
	.loc 5 2912 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L695
	.loc 5 2913 22
	addi	a4,s0,-348
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,16
	mv	a0,a4
	call	mbedtls_mpi_read_string
	sw	a0,-20(s0)
	.loc 5 2913 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L696
	.loc 5 2914 22
	addi	a4,s0,-348
	addi	a0,s0,-144
	li	a5,0
	li	a3,0
	li	a2,0
	li	a1,0
	call	mbedtls_rsa_import
	sw	a0,-20(s0)
	.loc 5 2914 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L697
	.loc 5 2915 22
	addi	a4,s0,-348
	lui	a5,%hi(.LC5)
	addi	a2,a5,%lo(.LC5)
	li	a1,16
	mv	a0,a4
	call	mbedtls_mpi_read_string
	sw	a0,-20(s0)
	.loc 5 2915 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L698
	.loc 5 2916 22
	addi	a5,s0,-348
	addi	a0,s0,-144
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,0
	call	mbedtls_rsa_import
	sw	a0,-20(s0)
	.loc 5 2916 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L699
	.loc 5 2918 22
	addi	a5,s0,-144
	mv	a0,a5
	call	mbedtls_rsa_complete
	sw	a0,-20(s0)
	.loc 5 2918 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L700
	.loc 5 2920 8
	lw	a5,-356(s0)
	beq	a5,zero,.L666
	.loc 5 2921 9
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
.L666:
	.loc 5 2924 9
	addi	a5,s0,-144
	mv	a0,a5
	call	mbedtls_rsa_check_pubkey
	mv	a5,a0
	.loc 5 2924 8 discriminator 1
	bne	a5,zero,.L667
	.loc 5 2925 9
	addi	a5,s0,-144
	mv	a0,a5
	call	mbedtls_rsa_check_privkey
	mv	a5,a0
	.loc 5 2924 45 discriminator 2
	beq	a5,zero,.L668
.L667:
	.loc 5 2926 12
	lw	a5,-356(s0)
	beq	a5,zero,.L669
	.loc 5 2927 13
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
.L669:
	.loc 5 2930 13
	li	a5,1
	sw	a5,-20(s0)
	.loc 5 2931 9
	j	.L655
.L668:
	.loc 5 2934 8
	lw	a5,-356(s0)
	beq	a5,zero,.L670
	.loc 5 2935 9
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
.L670:
	.loc 5 2938 5
	addi	a4,s0,-168
	li	a2,24
	lui	a5,%hi(.LC9)
	addi	a1,a5,%lo(.LC9)
	mv	a0,a4
	call	memcpy
	.loc 5 2940 9
	addi	a5,s0,-320
	addi	a4,s0,-168
	addi	a0,s0,-144
	li	a3,24
	li	a2,0
	lui	a1,%hi(myrand)
	addi	a1,a1,%lo(myrand)
	call	mbedtls_rsa_pkcs1_encrypt
	mv	a5,a0
	.loc 5 2940 8 discriminator 1
	beq	a5,zero,.L671
	.loc 5 2943 12
	lw	a5,-356(s0)
	beq	a5,zero,.L672
	.loc 5 2944 13
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
.L672:
	.loc 5 2947 13
	li	a5,1
	sw	a5,-20(s0)
	.loc 5 2948 9
	j	.L655
.L671:
	.loc 5 2951 8
	lw	a5,-356(s0)
	beq	a5,zero,.L673
	.loc 5 2952 9
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	printf
.L673:
	.loc 5 2955 9
	addi	a5,s0,-192
	addi	a4,s0,-320
	addi	a3,s0,-24
	addi	a0,s0,-144
	li	a6,24
	li	a2,0
	lui	a1,%hi(myrand)
	addi	a1,a1,%lo(myrand)
	call	mbedtls_rsa_pkcs1_decrypt
	mv	a5,a0
	.loc 5 2955 8 discriminator 1
	beq	a5,zero,.L674
	.loc 5 2958 12
	lw	a5,-356(s0)
	beq	a5,zero,.L675
	.loc 5 2959 13
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
.L675:
	.loc 5 2962 13
	li	a5,1
	sw	a5,-20(s0)
	.loc 5 2963 9
	j	.L655
.L674:
	.loc 5 2966 9
	lw	a3,-24(s0)
	addi	a4,s0,-168
	addi	a5,s0,-192
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 5 2966 8 discriminator 1
	beq	a5,zero,.L676
	.loc 5 2967 12
	lw	a5,-356(s0)
	beq	a5,zero,.L677
	.loc 5 2968 13
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
.L677:
	.loc 5 2971 13
	li	a5,1
	sw	a5,-20(s0)
	.loc 5 2972 9
	j	.L655
.L676:
	.loc 5 2975 8
	lw	a5,-356(s0)
	beq	a5,zero,.L678
	.loc 5 2976 9
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	printf
.L678:
	.loc 5 2980 8
	lw	a5,-356(s0)
	beq	a5,zero,.L679
	.loc 5 2981 9
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	printf
.L679:
	.loc 5 2984 9
	li	a0,5
	call	mbedtls_md_info_from_type
	.loc 5 2984 9 is_stmt 0 discriminator 1
	addi	a4,s0,-340
	addi	a5,s0,-168
	mv	a3,a4
	li	a2,24
	mv	a1,a5
	call	mbedtls_md
	mv	a5,a0
	.loc 5 2984 8 is_stmt 1 discriminator 2
	beq	a5,zero,.L680
	.loc 5 2986 12
	lw	a5,-356(s0)
	beq	a5,zero,.L681
	.loc 5 2987 13
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
.L681:
	.loc 5 2990 16
	li	a5,1
	j	.L689
.L680:
	.loc 5 2993 9
	addi	a4,s0,-320
	addi	a5,s0,-340
	addi	a0,s0,-144
	mv	a6,a4
	li	a4,20
	li	a3,5
	li	a2,0
	lui	a1,%hi(myrand)
	addi	a1,a1,%lo(myrand)
	call	mbedtls_rsa_pkcs1_sign
	mv	a5,a0
	.loc 5 2993 8 discriminator 1
	beq	a5,zero,.L683
	.loc 5 2996 12
	lw	a5,-356(s0)
	beq	a5,zero,.L684
	.loc 5 2997 13
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
.L684:
	.loc 5 3000 13
	li	a5,1
	sw	a5,-20(s0)
	.loc 5 3001 9
	j	.L655
.L683:
	.loc 5 3004 8
	lw	a5,-356(s0)
	beq	a5,zero,.L685
	.loc 5 3005 9
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
.L685:
	.loc 5 3008 9
	addi	a4,s0,-320
	addi	a3,s0,-340
	addi	a5,s0,-144
	li	a2,20
	li	a1,5
	mv	a0,a5
	call	mbedtls_rsa_pkcs1_verify
	mv	a5,a0
	.loc 5 3008 8 discriminator 1
	beq	a5,zero,.L686
	.loc 5 3010 12
	lw	a5,-356(s0)
	beq	a5,zero,.L687
	.loc 5 3011 13
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
.L687:
	.loc 5 3014 13
	li	a5,1
	sw	a5,-20(s0)
	.loc 5 3015 9
	j	.L655
.L686:
	.loc 5 3018 8
	lw	a5,-356(s0)
	beq	a5,zero,.L688
	.loc 5 3019 9
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	printf
.L688:
	.loc 5 3023 8
	lw	a5,-356(s0)
	beq	a5,zero,.L701
	.loc 5 3024 9
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	call	printf
	j	.L655
.L690:
	.loc 5 2907 343
	nop
	j	.L655
.L691:
	.loc 5 2908 14
	nop
	j	.L655
.L692:
	.loc 5 2909 203
	nop
	j	.L655
.L693:
	.loc 5 2910 14
	nop
	j	.L655
.L694:
	.loc 5 2911 203
	nop
	j	.L655
.L695:
	.loc 5 2912 14
	nop
	j	.L655
.L696:
	.loc 5 2913 343
	nop
	j	.L655
.L697:
	.loc 5 2914 14
	nop
	j	.L655
.L698:
	.loc 5 2915 71
	nop
	j	.L655
.L699:
	.loc 5 2916 18
	nop
	j	.L655
.L700:
	.loc 5 2918 57
	nop
	j	.L655
.L701:
	.loc 5 3027 1
	nop
.L655:
	.loc 5 3028 5
	addi	a5,s0,-348
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 5 3029 5
	addi	a5,s0,-144
	mv	a0,a5
	call	mbedtls_rsa_free
	.loc 5 3033 12
	lw	a5,-20(s0)
.L689:
	.loc 5 3034 1
	mv	a0,a5
	lw	ra,364(sp)
	.cfi_restore 1
	lw	s0,360(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 368
	addi	sp,sp,368
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE149:
	.size	mbedtls_rsa_self_test, .-mbedtls_rsa_self_test
	.text
.Letext0:
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/rsa.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/constant_time_internal.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/common.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/oid.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/constant_time.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/bignum_internal.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/rsa_alt_helpers.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1write.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2e9e
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x22
	.4byte	.LASF275
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x11
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x11
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x12
	.4byte	0x32
	.uleb128 0x11
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x11
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x11
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x11
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x23
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xd
	.4byte	.LASF12
	.byte	0x6
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x12
	.4byte	0x76
	.uleb128 0x11
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xd
	.4byte	.LASF13
	.byte	0x7
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0xd
	.4byte	.LASF14
	.byte	0x7
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x13
	.4byte	0x32
	.4byte	0xb6
	.uleb128 0x15
	.4byte	0x6f
	.byte	0x3
	.byte	0
	.uleb128 0x24
	.byte	0x4
	.uleb128 0x1b
	.4byte	0xb6
	.uleb128 0x9
	.4byte	0x32
	.uleb128 0x11
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x12
	.4byte	0xc2
	.uleb128 0x9
	.4byte	0xc9
	.uleb128 0x1b
	.4byte	0xce
	.uleb128 0x9
	.4byte	0xe2
	.uleb128 0x1b
	.4byte	0xd8
	.uleb128 0x25
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x8
	.byte	0xd1
	.byte	0xd
	.4byte	0xef
	.uleb128 0x26
	.4byte	0x68
	.4byte	0x108
	.uleb128 0x1
	.4byte	0xb6
	.uleb128 0x1
	.4byte	0xbd
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x9
	.byte	0xa9
	.byte	0x11
	.4byte	0x8e
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x9
	.byte	0xaa
	.byte	0x12
	.4byte	0x9a
	.uleb128 0x12
	.4byte	0x114
	.uleb128 0x1c
	.4byte	.LASF19
	.byte	0x8
	.byte	0x9
	.byte	0xd0
	.4byte	0x153
	.uleb128 0xa
	.string	"p"
	.byte	0x9
	.byte	0xd5
	.byte	0x17
	.4byte	0x153
	.byte	0
	.uleb128 0xa
	.string	"s"
	.byte	0x9
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xa
	.string	"n"
	.byte	0x9
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.4byte	0x114
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x9
	.byte	0xf0
	.byte	0x1
	.4byte	0x125
	.uleb128 0x12
	.4byte	0x158
	.uleb128 0x27
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x9
	.2byte	0x415
	.byte	0xe
	.4byte	0x185
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x2
	.byte	0
	.uleb128 0x28
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x1
	.byte	0x2f
	.byte	0xe
	.4byte	0x1dc
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x12
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x3c
	.byte	0x3
	.4byte	0x185
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x6b
	.byte	0x22
	.4byte	0x1f9
	.uleb128 0x12
	.4byte	0x1e8
	.uleb128 0x29
	.4byte	.LASF35
	.uleb128 0x1c
	.4byte	.LASF36
	.byte	0xc
	.byte	0x1
	.byte	0x7a
	.4byte	0x232
	.uleb128 0x19
	.4byte	.LASF37
	.byte	0x1
	.byte	0x7c
	.byte	0x1e
	.4byte	0x232
	.byte	0
	.uleb128 0x19
	.4byte	.LASF38
	.byte	0x1
	.byte	0x84
	.byte	0xb
	.4byte	0xb6
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF39
	.byte	0x1
	.byte	0x88
	.byte	0xb
	.4byte	0xb6
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x1f4
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0x8a
	.byte	0x3
	.4byte	0x1fe
	.uleb128 0x1c
	.4byte	.LASF40
	.byte	0x78
	.byte	0xa
	.byte	0x55
	.4byte	0x31b
	.uleb128 0xa
	.string	"ver"
	.byte	0xa
	.byte	0x56
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0xa
	.string	"len"
	.byte	0xa
	.byte	0x5a
	.byte	0xc
	.4byte	0x76
	.byte	0x4
	.uleb128 0xa
	.string	"N"
	.byte	0xa
	.byte	0x5c
	.byte	0x11
	.4byte	0x158
	.byte	0x8
	.uleb128 0xa
	.string	"E"
	.byte	0xa
	.byte	0x5d
	.byte	0x11
	.4byte	0x158
	.byte	0x10
	.uleb128 0xa
	.string	"D"
	.byte	0xa
	.byte	0x5f
	.byte	0x11
	.4byte	0x158
	.byte	0x18
	.uleb128 0xa
	.string	"P"
	.byte	0xa
	.byte	0x60
	.byte	0x11
	.4byte	0x158
	.byte	0x20
	.uleb128 0xa
	.string	"Q"
	.byte	0xa
	.byte	0x61
	.byte	0x11
	.4byte	0x158
	.byte	0x28
	.uleb128 0xa
	.string	"DP"
	.byte	0xa
	.byte	0x63
	.byte	0x11
	.4byte	0x158
	.byte	0x30
	.uleb128 0xa
	.string	"DQ"
	.byte	0xa
	.byte	0x64
	.byte	0x11
	.4byte	0x158
	.byte	0x38
	.uleb128 0xa
	.string	"QP"
	.byte	0xa
	.byte	0x65
	.byte	0x11
	.4byte	0x158
	.byte	0x40
	.uleb128 0xa
	.string	"RN"
	.byte	0xa
	.byte	0x67
	.byte	0x11
	.4byte	0x158
	.byte	0x48
	.uleb128 0xa
	.string	"RP"
	.byte	0xa
	.byte	0x69
	.byte	0x11
	.4byte	0x158
	.byte	0x50
	.uleb128 0xa
	.string	"RQ"
	.byte	0xa
	.byte	0x6a
	.byte	0x11
	.4byte	0x158
	.byte	0x58
	.uleb128 0xa
	.string	"Vi"
	.byte	0xa
	.byte	0x6c
	.byte	0x11
	.4byte	0x158
	.byte	0x60
	.uleb128 0xa
	.string	"Vf"
	.byte	0xa
	.byte	0x6d
	.byte	0x11
	.4byte	0x158
	.byte	0x68
	.uleb128 0x19
	.4byte	.LASF41
	.byte	0xa
	.byte	0x6f
	.byte	0x9
	.4byte	0x68
	.byte	0x70
	.uleb128 0x19
	.4byte	.LASF42
	.byte	0xa
	.byte	0x72
	.byte	0x9
	.4byte	0x68
	.byte	0x74
	.byte	0
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0xa
	.byte	0x7b
	.byte	0x1
	.4byte	0x243
	.uleb128 0x12
	.4byte	0x31b
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0xb
	.byte	0x50
	.byte	0x12
	.4byte	0x9a
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0xb
	.byte	0x51
	.byte	0x12
	.4byte	0x9a
	.uleb128 0x12
	.4byte	0x338
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0xb
	.byte	0x52
	.byte	0x11
	.4byte	0x8e
	.uleb128 0x9
	.4byte	0x158
	.uleb128 0x13
	.4byte	0x32
	.4byte	0x36a
	.uleb128 0x15
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x13
	.4byte	0x32
	.4byte	0x37a
	.uleb128 0x15
	.4byte	0x6f
	.byte	0x7f
	.byte	0
	.uleb128 0x9
	.4byte	0x76
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0xc
	.byte	0xce
	.byte	0x5
	.4byte	0x68
	.4byte	0x396
	.uleb128 0x1
	.4byte	0xd3
	.uleb128 0x2a
	.byte	0
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x9
	.2byte	0x1d5
	.byte	0x5
	.4byte	0x68
	.4byte	0x3b7
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xce
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF276
	.byte	0xf
	.byte	0x90
	.byte	0x5
	.4byte	0x68
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0xd
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x3e3
	.uleb128 0x1
	.4byte	0xd8
	.uleb128 0x1
	.4byte	0xd8
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0xe
	.byte	0x79
	.4byte	0x3f9
	.uleb128 0x1
	.4byte	0xb6
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0xf
	.byte	0x5e
	.4byte	0x40a
	.uleb128 0x1
	.4byte	0xb6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0xf
	.byte	0x5a
	.byte	0x7
	.4byte	0xb6
	.4byte	0x425
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x10
	.2byte	0x2b6
	.byte	0x5
	.4byte	0x68
	.4byte	0x446
	.uleb128 0x1
	.4byte	0x1dc
	.uleb128 0x1
	.4byte	0x446
	.uleb128 0x1
	.4byte	0x37a
	.byte	0
	.uleb128 0x9
	.4byte	0xce
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x11
	.byte	0x20
	.byte	0x5
	.4byte	0x68
	.4byte	0x46b
	.uleb128 0x1
	.4byte	0xd8
	.uleb128 0x1
	.4byte	0xd8
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x151
	.byte	0x5
	.4byte	0x68
	.4byte	0x491
	.uleb128 0x1
	.4byte	0x232
	.uleb128 0x1
	.4byte	0x491
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0xbd
	.byte	0
	.uleb128 0x9
	.4byte	0x39
	.uleb128 0x16
	.4byte	.LASF55
	.byte	0x1
	.byte	0xae
	.4byte	0x4a7
	.uleb128 0x1
	.4byte	0x4a7
	.byte	0
	.uleb128 0x9
	.4byte	0x237
	.uleb128 0x16
	.4byte	.LASF56
	.byte	0x8
	.byte	0x9f
	.4byte	0x4c2
	.uleb128 0x1
	.4byte	0xb6
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x13c
	.byte	0x5
	.4byte	0x68
	.4byte	0x4de
	.uleb128 0x1
	.4byte	0x4a7
	.uleb128 0x1
	.4byte	0xbd
	.byte	0
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x127
	.byte	0x5
	.4byte	0x68
	.4byte	0x4ff
	.uleb128 0x1
	.4byte	0x4a7
	.uleb128 0x1
	.4byte	0x491
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x114
	.byte	0x5
	.4byte	0x68
	.4byte	0x516
	.uleb128 0x1
	.4byte	0x4a7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x1
	.byte	0xeb
	.byte	0xf
	.4byte	0x32
	.4byte	0x52c
	.uleb128 0x1
	.4byte	0x232
	.byte	0
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x1
	.byte	0xc5
	.byte	0x5
	.4byte	0x68
	.4byte	0x54c
	.uleb128 0x1
	.4byte	0x4a7
	.uleb128 0x1
	.4byte	0x232
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x16
	.4byte	.LASF62
	.byte	0x1
	.byte	0x9f
	.4byte	0x55d
	.uleb128 0x1
	.4byte	0x4a7
	.byte	0
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x9
	.2byte	0x2d5
	.byte	0x5
	.4byte	0x68
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.byte	0
	.uleb128 0x9
	.4byte	0x164
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x9
	.2byte	0x3a3
	.byte	0x5
	.4byte	0x68
	.4byte	0x5a9
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x5a9
	.uleb128 0x1
	.4byte	0xb6
	.byte	0
	.uleb128 0x9
	.4byte	0xe3
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x9
	.2byte	0x300
	.byte	0x5
	.4byte	0x68
	.4byte	0x5cf
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x108
	.byte	0
	.uleb128 0x17
	.4byte	.LASF66
	.byte	0x3
	.2byte	0x1fd
	.4byte	0x604
	.uleb128 0x1
	.4byte	0x153
	.uleb128 0x1
	.4byte	0x604
	.uleb128 0x1
	.4byte	0x604
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x604
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0x153
	.byte	0
	.uleb128 0x9
	.4byte	0x120
	.uleb128 0x17
	.4byte	.LASF67
	.byte	0x3
	.2byte	0x30d
	.4byte	0x639
	.uleb128 0x1
	.4byte	0x153
	.uleb128 0x1
	.4byte	0x604
	.uleb128 0x1
	.4byte	0x604
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0x604
	.uleb128 0x1
	.4byte	0x153
	.byte	0
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x9
	.2byte	0x112
	.byte	0x5
	.4byte	0x68
	.4byte	0x655
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x3
	.2byte	0x212
	.byte	0x5
	.4byte	0x68
	.4byte	0x671
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x57e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x3
	.2byte	0x1d8
	.byte	0x12
	.4byte	0x114
	.4byte	0x688
	.uleb128 0x1
	.4byte	0x604
	.byte	0
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x9
	.2byte	0x38e
	.byte	0x5
	.4byte	0x68
	.4byte	0x6b3
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x355
	.byte	0
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x12
	.byte	0x4f
	.byte	0x5
	.4byte	0x68
	.4byte	0x6d8
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x9
	.2byte	0x3c7
	.byte	0x5
	.4byte	0x68
	.4byte	0x703
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x108
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x5a9
	.uleb128 0x1
	.4byte	0xb6
	.byte	0
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x9
	.2byte	0x35d
	.byte	0x5
	.4byte	0x68
	.4byte	0x724
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x12
	.byte	0x2e
	.byte	0x5
	.4byte	0x68
	.4byte	0x74e
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x355
	.byte	0
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x13
	.byte	0xc9
	.byte	0x5
	.4byte	0x68
	.4byte	0x77d
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0x13
	.byte	0xa6
	.byte	0x5
	.4byte	0x68
	.4byte	0x7b1
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x7b1
	.uleb128 0x1
	.4byte	0xb6
	.byte	0
	.uleb128 0x9
	.4byte	0xef
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x9
	.2byte	0x28d
	.byte	0x5
	.4byte	0x68
	.4byte	0x7d2
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.byte	0
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x9
	.2byte	0x13a
	.4byte	0x7e9
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x355
	.byte	0
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x9
	.2byte	0x2e3
	.byte	0x5
	.4byte	0x68
	.4byte	0x80a
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x9
	.2byte	0x42d
	.byte	0x5
	.4byte	0x68
	.4byte	0x835
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x5a9
	.uleb128 0x1
	.4byte	0xb6
	.byte	0
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x9
	.2byte	0x181
	.byte	0x5
	.4byte	0x68
	.4byte	0x851
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x108
	.byte	0
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x9
	.2byte	0x1ba
	.byte	0x8
	.4byte	0x76
	.4byte	0x868
	.uleb128 0x1
	.4byte	0x57e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x1
	.byte	0x95
	.byte	0x1a
	.4byte	0x232
	.4byte	0x87e
	.uleb128 0x1
	.4byte	0x1dc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0xd
	.byte	0x21
	.byte	0x8
	.4byte	0xb6
	.4byte	0x89e
	.uleb128 0x1
	.4byte	0xb6
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x9
	.2byte	0x248
	.byte	0x5
	.4byte	0x68
	.4byte	0x8bf
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0xbd
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x13
	.byte	0x83
	.byte	0x5
	.4byte	0x68
	.4byte	0x8ee
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x355
	.byte	0
	.uleb128 0x8
	.4byte	.LASF88
	.byte	0x13
	.byte	0x69
	.byte	0x5
	.4byte	0x68
	.4byte	0x913
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x355
	.byte	0
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0x13
	.byte	0x4d
	.byte	0x5
	.4byte	0x68
	.4byte	0x93d
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x355
	.byte	0
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x9
	.2byte	0x30f
	.byte	0x5
	.4byte	0x68
	.4byte	0x95e
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x57e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x9
	.2byte	0x18d
	.byte	0x5
	.4byte	0x68
	.4byte	0x97a
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x9
	.2byte	0x227
	.byte	0x5
	.4byte	0x68
	.4byte	0x99b
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x491
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0x9
	.2byte	0x1c9
	.byte	0x8
	.4byte	0x76
	.4byte	0x9b2
	.uleb128 0x1
	.4byte	0x57e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF94
	.byte	0xd
	.byte	0x1f
	.byte	0x8
	.4byte	0xb6
	.4byte	0x9d2
	.uleb128 0x1
	.4byte	0xb8
	.uleb128 0x1
	.4byte	0xdd
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0xb
	.2byte	0x1d1
	.4byte	0x9ee
	.uleb128 0x1
	.4byte	0xb6
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0xb
	.2byte	0x1c2
	.4byte	0xa0a
	.uleb128 0x1
	.4byte	0x32c
	.uleb128 0x1
	.4byte	0xb6
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.4byte	.LASF97
	.byte	0x14
	.byte	0x43
	.byte	0x5
	.4byte	0x68
	.4byte	0xa2a
	.uleb128 0x1
	.4byte	0xa2a
	.uleb128 0x1
	.4byte	0x491
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	0xbd
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0x14
	.byte	0x35
	.byte	0x5
	.4byte	0x68
	.4byte	0xa4f
	.uleb128 0x1
	.4byte	0xa2a
	.uleb128 0x1
	.4byte	0x491
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.4byte	.LASF99
	.byte	0x14
	.byte	0xd1
	.byte	0x5
	.4byte	0x68
	.4byte	0xa6f
	.uleb128 0x1
	.4byte	0xa2a
	.uleb128 0x1
	.4byte	0x491
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0x14
	.byte	0x67
	.byte	0x5
	.4byte	0x68
	.4byte	0xa8f
	.uleb128 0x1
	.4byte	0xa2a
	.uleb128 0x1
	.4byte	0x491
	.uleb128 0x1
	.4byte	0x57e
	.byte	0
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x103
	.4byte	0xaa1
	.uleb128 0x1
	.4byte	0x355
	.byte	0
	.uleb128 0x7
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x132
	.byte	0x5
	.4byte	0x68
	.4byte	0xabd
	.uleb128 0x1
	.4byte	0x355
	.uleb128 0x1
	.4byte	0x57e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF103
	.byte	0x15
	.2byte	0x11f
	.byte	0x5
	.4byte	0x68
	.4byte	0xade
	.uleb128 0x1
	.4byte	0xa2a
	.uleb128 0x1
	.4byte	0x491
	.uleb128 0x1
	.4byte	0xade
	.byte	0
	.uleb128 0x9
	.4byte	0x68
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x15
	.byte	0xf5
	.byte	0x5
	.4byte	0x68
	.4byte	0xb08
	.uleb128 0x1
	.4byte	0xa2a
	.uleb128 0x1
	.4byte	0x491
	.uleb128 0x1
	.4byte	0x37a
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x9
	.byte	0xfa
	.4byte	0xb19
	.uleb128 0x1
	.4byte	0x355
	.byte	0
	.uleb128 0x7
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x2ab
	.byte	0x5
	.4byte	0x68
	.4byte	0xb35
	.uleb128 0x1
	.4byte	0x57e
	.uleb128 0x1
	.4byte	0x108
	.byte	0
	.uleb128 0x7
	.4byte	.LASF107
	.byte	0x15
	.2byte	0x21d
	.byte	0x5
	.4byte	0x68
	.4byte	0xb56
	.uleb128 0x1
	.4byte	0xa2a
	.uleb128 0x1
	.4byte	0x491
	.uleb128 0x1
	.4byte	0x355
	.byte	0
	.uleb128 0x6
	.4byte	.LASF115
	.2byte	0xb49
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc11
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0x5
	.2byte	0xb49
	.byte	0x1f
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0xb4b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"len"
	.byte	0x5
	.2byte	0xb4d
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"rsa"
	.byte	0x5
	.2byte	0xb4e
	.byte	0x19
	.4byte	0x31b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0x5
	.2byte	0xb4f
	.byte	0x13
	.4byte	0xc11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0x5
	.2byte	0xb50
	.byte	0x13
	.4byte	0xc11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0x5
	.2byte	0xb51
	.byte	0x13
	.4byte	0x36a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x4
	.4byte	.LASF111
	.byte	0x5
	.2byte	0xb53
	.byte	0x13
	.4byte	0xc21
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x5
	.string	"K"
	.byte	0x5
	.2byte	0xb56
	.byte	0x11
	.4byte	0x158
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0xb
	.4byte	.LASF117
	.2byte	0xbd3
	.4byte	.L655
	.byte	0
	.uleb128 0x13
	.4byte	0x32
	.4byte	0xc21
	.uleb128 0x15
	.4byte	0x6f
	.byte	0x17
	.byte	0
	.uleb128 0x13
	.4byte	0x32
	.4byte	0xc31
	.uleb128 0x15
	.4byte	0x6f
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0x5
	.2byte	0xb2e
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8b
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0x5
	.2byte	0xb2e
	.byte	0x19
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x5
	.2byte	0xb2e
	.byte	0x33
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"len"
	.byte	0x5
	.2byte	0xb2e
	.byte	0x42
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"i"
	.byte	0x5
	.2byte	0xb31
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF206
	.2byte	0xae1
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb1
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0xae1
	.byte	0x2c
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x31b
	.uleb128 0x6
	.4byte	.LASF116
	.2byte	0xab9
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd0c
	.uleb128 0x3
	.string	"dst"
	.byte	0x5
	.2byte	0xab9
	.byte	0x2b
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"src"
	.byte	0x5
	.2byte	0xab9
	.byte	0x4b
	.4byte	0xd0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0xabb
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF117
	.2byte	0xad6
	.4byte	.L616
	.byte	0
	.uleb128 0x9
	.4byte	0x327
	.uleb128 0x6
	.4byte	.LASF118
	.2byte	0xa9a
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd7c
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0xa9a
	.byte	0x33
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x5
	.2byte	0xa9b
	.byte	0x30
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x5
	.2byte	0xa9c
	.byte	0x2b
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x5
	.2byte	0xa9d
	.byte	0x33
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"sig"
	.byte	0x5
	.2byte	0xa9e
	.byte	0x33
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.4byte	.LASF122
	.2byte	0xa57
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe32
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0xa57
	.byte	0x3e
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x5
	.2byte	0xa58
	.byte	0x3b
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x5
	.2byte	0xa59
	.byte	0x36
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x5
	.2byte	0xa5a
	.byte	0x3e
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"sig"
	.byte	0x5
	.2byte	0xa5b
	.byte	0x3e
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0xa5d
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0x5
	.2byte	0xa5e
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x5
	.2byte	0xa5f
	.byte	0x14
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0x5
	.2byte	0xa5f
	.byte	0x24
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF117
	.2byte	0xa89
	.4byte	.L598
	.byte	0
	.uleb128 0x6
	.4byte	.LASF126
	.2byte	0xa3b
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xead
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0xa3b
	.byte	0x38
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x5
	.2byte	0xa3c
	.byte	0x35
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x5
	.2byte	0xa3d
	.byte	0x30
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x5
	.2byte	0xa3e
	.byte	0x38
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"sig"
	.byte	0x5
	.2byte	0xa3f
	.byte	0x38
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF127
	.byte	0x5
	.2byte	0xa41
	.byte	0x17
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF128
	.2byte	0x9c6
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe9
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x9c6
	.byte	0x3c
	.4byte	0xcb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1140
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x9c7
	.byte	0x39
	.4byte	0x1dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1141
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x9c8
	.byte	0x34
	.4byte	0x6f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1148
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x9c9
	.byte	0x3c
	.4byte	0x491
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1152
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x5
	.2byte	0x9ca
	.byte	0x39
	.4byte	0x1dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1142
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x5
	.2byte	0x9cb
	.byte	0x2b
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1156
	.uleb128 0x3
	.string	"sig"
	.byte	0x5
	.2byte	0x9cc
	.byte	0x3c
	.4byte	0x491
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1160
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x9ce
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF130
	.byte	0x5
	.2byte	0x9cf
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"p"
	.byte	0x5
	.2byte	0x9d0
	.byte	0x14
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF131
	.byte	0x5
	.2byte	0x9d1
	.byte	0x14
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF132
	.byte	0x5
	.2byte	0x9d2
	.byte	0x13
	.4byte	0x35a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x4
	.4byte	.LASF133
	.byte	0x5
	.2byte	0x9d3
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF134
	.byte	0x5
	.2byte	0x9d4
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"msb"
	.byte	0x5
	.2byte	0x9d4
	.byte	0x1f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"buf"
	.byte	0x5
	.2byte	0x9d5
	.byte	0x13
	.4byte	0xfe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.uleb128 0x1a
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x4
	.4byte	.LASF135
	.byte	0x5
	.2byte	0x9ef
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x32
	.4byte	0xffa
	.uleb128 0x2c
	.4byte	0x6f
	.2byte	0x3ff
	.byte	0
	.uleb128 0x6
	.4byte	.LASF136
	.2byte	0x9a4
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1085
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x9a4
	.byte	0x31
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x9a5
	.byte	0x22
	.4byte	0x7b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x9a6
	.byte	0x22
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x9a7
	.byte	0x2e
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x9a8
	.byte	0x29
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x9a9
	.byte	0x31
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"sig"
	.byte	0x5
	.2byte	0x9aa
	.byte	0x2b
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x6
	.4byte	.LASF139
	.2byte	0x95f
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x114b
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x95f
	.byte	0x3c
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x960
	.byte	0x2d
	.4byte	0x7b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x961
	.byte	0x2d
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x962
	.byte	0x39
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x963
	.byte	0x34
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x964
	.byte	0x3c
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.string	"sig"
	.byte	0x5
	.2byte	0x965
	.byte	0x36
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x967
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF140
	.byte	0x5
	.2byte	0x968
	.byte	0x14
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF141
	.byte	0x5
	.2byte	0x968
	.byte	0x24
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.4byte	.LASF117
	.2byte	0x996
	.4byte	.L549
	.byte	0
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0x5
	.2byte	0x8e9
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1210
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x8e9
	.byte	0x3a
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x8ea
	.byte	0x35
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x8eb
	.byte	0x3d
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0x5
	.2byte	0x8ec
	.byte	0x2f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.string	"dst"
	.byte	0x5
	.2byte	0x8ed
	.byte	0x37
	.4byte	0xbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x5
	.2byte	0x8ef
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF146
	.byte	0x5
	.2byte	0x8f0
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"p"
	.byte	0x5
	.2byte	0x8f1
	.byte	0x14
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"oid"
	.byte	0x5
	.2byte	0x8f2
	.byte	0x11
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x4
	.4byte	.LASF147
	.byte	0x5
	.2byte	0x8f6
	.byte	0x17
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF148
	.2byte	0x8c6
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x129b
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x8c6
	.byte	0x36
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x8c7
	.byte	0x27
	.4byte	0x7b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x8c8
	.byte	0x27
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x8c9
	.byte	0x33
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x8ca
	.byte	0x2e
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x8cb
	.byte	0x36
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"sig"
	.byte	0x5
	.2byte	0x8cc
	.byte	0x30
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x6
	.4byte	.LASF149
	.2byte	0x8b6
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1336
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x8b6
	.byte	0x3a
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x8b7
	.byte	0x2b
	.4byte	0x7b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x8b8
	.byte	0x2b
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x8b9
	.byte	0x37
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x8ba
	.byte	0x32
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x8bb
	.byte	0x3a
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0x5
	.2byte	0x8bc
	.byte	0x29
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"sig"
	.byte	0x5
	.2byte	0x8bd
	.byte	0x34
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x6
	.4byte	.LASF151
	.2byte	0x8a6
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13c1
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x8a6
	.byte	0x44
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x8a7
	.byte	0x35
	.4byte	0x7b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x8a8
	.byte	0x35
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x8a9
	.byte	0x41
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x8aa
	.byte	0x3c
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x8ab
	.byte	0x44
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"sig"
	.byte	0x5
	.2byte	0x8ac
	.byte	0x3e
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0xc
	.4byte	.LASF152
	.byte	0x5
	.2byte	0x893
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x145d
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x893
	.byte	0x35
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x894
	.byte	0x26
	.4byte	0x7b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x895
	.byte	0x26
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x896
	.byte	0x32
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x897
	.byte	0x2d
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x898
	.byte	0x35
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0x5
	.2byte	0x899
	.byte	0x24
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"sig"
	.byte	0x5
	.2byte	0x89a
	.byte	0x2f
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xc
	.4byte	.LASF153
	.byte	0x5
	.2byte	0x824
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15b9
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x824
	.byte	0x43
	.4byte	0xcb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x825
	.byte	0x34
	.4byte	0x7b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x826
	.byte	0x34
	.4byte	0xb6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x827
	.byte	0x40
	.4byte	0x1dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x828
	.byte	0x3b
	.4byte	0x6f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x829
	.byte	0x43
	.4byte	0x491
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0x5
	.2byte	0x82a
	.byte	0x32
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x3
	.string	"sig"
	.byte	0x5
	.2byte	0x82b
	.byte	0x3d
	.4byte	0xbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x4
	.4byte	.LASF154
	.byte	0x5
	.2byte	0x82d
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"p"
	.byte	0x5
	.2byte	0x82e
	.byte	0x14
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF155
	.byte	0x5
	.2byte	0x82f
	.byte	0x14
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF156
	.byte	0x5
	.2byte	0x830
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF157
	.byte	0x5
	.2byte	0x830
	.byte	0x12
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF133
	.byte	0x5
	.2byte	0x830
	.byte	0x1c
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF158
	.byte	0x5
	.2byte	0x830
	.byte	0x22
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x831
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"msb"
	.byte	0x5
	.2byte	0x832
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x833
	.byte	0x17
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1a
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x4
	.4byte	.LASF135
	.byte	0x5
	.2byte	0x841
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF159
	.2byte	0x808
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1644
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x808
	.byte	0x34
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x809
	.byte	0x25
	.4byte	0x7b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x80a
	.byte	0x25
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF154
	.byte	0x5
	.2byte	0x80b
	.byte	0x27
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x5
	.2byte	0x80c
	.byte	0x34
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x80d
	.byte	0x2e
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0x5
	.2byte	0x80e
	.byte	0x26
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x6
	.4byte	.LASF162
	.2byte	0x7df
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1712
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x7df
	.byte	0x3e
	.4byte	0xcb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1060
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x7e0
	.byte	0x2f
	.4byte	0x7b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x7e1
	.byte	0x2f
	.4byte	0xb6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1068
	.uleb128 0x2
	.4byte	.LASF154
	.byte	0x5
	.2byte	0x7e2
	.byte	0x31
	.4byte	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x5
	.2byte	0x7e3
	.byte	0x3e
	.4byte	0x491
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1076
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x7e4
	.byte	0x38
	.4byte	0xbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0x5
	.2byte	0x7e5
	.byte	0x30
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1084
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x7e7
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF163
	.byte	0x5
	.2byte	0x7e8
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"buf"
	.byte	0x5
	.2byte	0x7e9
	.byte	0x13
	.4byte	0xfe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0xb
	.4byte	.LASF117
	.2byte	0x7fe
	.4byte	.L487
	.byte	0
	.uleb128 0x6
	.4byte	.LASF164
	.2byte	0x760
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x186e
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x760
	.byte	0x39
	.4byte	0xcb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1140
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x761
	.byte	0x2a
	.4byte	0x7b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1144
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x762
	.byte	0x2a
	.4byte	0xb6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1148
	.uleb128 0x2
	.4byte	.LASF165
	.byte	0x5
	.2byte	0x763
	.byte	0x39
	.4byte	0x491
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1152
	.uleb128 0x2
	.4byte	.LASF166
	.byte	0x5
	.2byte	0x763
	.byte	0x47
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1156
	.uleb128 0x2
	.4byte	.LASF154
	.byte	0x5
	.2byte	0x764
	.byte	0x2c
	.4byte	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1160
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x5
	.2byte	0x765
	.byte	0x39
	.4byte	0x491
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1164
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x766
	.byte	0x33
	.4byte	0xbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1168
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0x5
	.2byte	0x767
	.byte	0x2b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x769
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF163
	.byte	0x5
	.2byte	0x76a
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"i"
	.byte	0x5
	.2byte	0x76a
	.byte	0x12
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF167
	.byte	0x5
	.2byte	0x76a
	.byte	0x15
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"p"
	.byte	0x5
	.2byte	0x76b
	.byte	0x14
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"bad"
	.byte	0x5
	.2byte	0x76c
	.byte	0x1c
	.4byte	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF168
	.byte	0x5
	.2byte	0x76c
	.byte	0x21
	.4byte	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"buf"
	.byte	0x5
	.2byte	0x76d
	.byte	0x13
	.4byte	0xfe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x4
	.4byte	.LASF169
	.byte	0x5
	.2byte	0x76e
	.byte	0x13
	.4byte	0x35a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.uleb128 0x4
	.4byte	.LASF133
	.byte	0x5
	.2byte	0x76f
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LASF117
	.2byte	0x7d3
	.4byte	.L468
	.byte	0
	.uleb128 0x6
	.4byte	.LASF170
	.2byte	0x743
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18e9
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x743
	.byte	0x34
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x744
	.byte	0x25
	.4byte	0x7b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x745
	.byte	0x25
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x5
	.2byte	0x746
	.byte	0x26
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x5
	.2byte	0x747
	.byte	0x34
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x748
	.byte	0x2e
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.4byte	.LASF171
	.2byte	0x70d
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19be
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x70d
	.byte	0x3e
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x70e
	.byte	0x2f
	.4byte	0x7b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x70f
	.byte	0x2f
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x5
	.2byte	0x70f
	.byte	0x3d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x5
	.2byte	0x710
	.byte	0x3e
	.4byte	0x491
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x711
	.byte	0x38
	.4byte	0xbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.4byte	.LASF146
	.byte	0x5
	.2byte	0x713
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF154
	.byte	0x5
	.2byte	0x713
	.byte	0x14
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x714
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"p"
	.byte	0x5
	.2byte	0x715
	.byte	0x14
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x4
	.4byte	.LASF172
	.byte	0x5
	.2byte	0x729
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF173
	.2byte	0x6c5
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a97
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x6c5
	.byte	0x39
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x6c6
	.byte	0x2a
	.4byte	0x7b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x6c7
	.byte	0x2a
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF165
	.byte	0x5
	.2byte	0x6c8
	.byte	0x39
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF166
	.byte	0x5
	.2byte	0x6c8
	.byte	0x47
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x5
	.2byte	0x6c9
	.byte	0x2b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x5
	.2byte	0x6ca
	.byte	0x39
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x6cb
	.byte	0x33
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.4byte	.LASF154
	.byte	0x5
	.2byte	0x6cd
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x6ce
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"p"
	.byte	0x5
	.2byte	0x6cf
	.byte	0x14
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF133
	.byte	0x5
	.2byte	0x6d0
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xc
	.4byte	.LASF174
	.byte	0x5
	.2byte	0x6b2
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b03
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x6b2
	.byte	0x2b
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x5
	.2byte	0x6b3
	.byte	0x2e
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x5
	.2byte	0x6b3
	.byte	0x3c
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x6b4
	.byte	0x28
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x6b6
	.byte	0x1e
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF175
	.byte	0x5
	.2byte	0x682
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bcc
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x682
	.byte	0x2d
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0x5
	.2byte	0x682
	.byte	0x3a
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF155
	.byte	0x5
	.2byte	0x683
	.byte	0x2d
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF156
	.byte	0x5
	.2byte	0x683
	.byte	0x3a
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.string	"out"
	.byte	0x5
	.2byte	0x684
	.byte	0x27
	.4byte	0xbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x684
	.byte	0x3e
	.4byte	0x1dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x4
	.4byte	.LASF176
	.byte	0x5
	.2byte	0x686
	.byte	0x19
	.4byte	0x1bcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x5
	.2byte	0x688
	.byte	0x1a
	.4byte	0x237
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x689
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x68b
	.byte	0x1e
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF177
	.2byte	0x6a4
	.4byte	.L417
	.byte	0
	.uleb128 0x13
	.4byte	0x39
	.4byte	0x1bdc
	.uleb128 0x15
	.4byte	0x6f
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF178
	.byte	0x5
	.2byte	0x636
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ce6
	.uleb128 0x3
	.string	"dst"
	.byte	0x5
	.2byte	0x636
	.byte	0x24
	.4byte	0xbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2
	.4byte	.LASF179
	.byte	0x5
	.2byte	0x636
	.byte	0x30
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3
	.string	"src"
	.byte	0x5
	.2byte	0x636
	.byte	0x45
	.4byte	0xbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2
	.4byte	.LASF156
	.byte	0x5
	.2byte	0x637
	.byte	0x1c
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x637
	.byte	0x34
	.4byte	0x1dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -145
	.uleb128 0x4
	.4byte	.LASF180
	.byte	0x5
	.2byte	0x639
	.byte	0x13
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"p"
	.byte	0x5
	.2byte	0x63a
	.byte	0x14
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF133
	.byte	0x5
	.2byte	0x63b
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"i"
	.byte	0x5
	.2byte	0x63c
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF181
	.byte	0x5
	.2byte	0x63c
	.byte	0xf
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF182
	.byte	0x5
	.2byte	0x63d
	.byte	0x13
	.4byte	0x35a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x63e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x63f
	.byte	0x1e
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x5
	.2byte	0x640
	.byte	0x1a
	.4byte	0x237
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xb
	.4byte	.LASF177
	.2byte	0x671
	.4byte	.L397
	.byte	0
	.uleb128 0x6
	.4byte	.LASF183
	.2byte	0x565
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e1e
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x565
	.byte	0x2e
	.4byte	0xcb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x566
	.byte	0x1f
	.4byte	0x7b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x567
	.byte	0x1f
	.4byte	0xb6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x5
	.2byte	0x568
	.byte	0x2e
	.4byte	0x491
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x569
	.byte	0x28
	.4byte	0xbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x56b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF154
	.byte	0x5
	.2byte	0x56c
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"T"
	.byte	0x5
	.2byte	0x56f
	.byte	0x11
	.4byte	0x158
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"P1"
	.byte	0x5
	.2byte	0x573
	.byte	0x11
	.4byte	0x158
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"Q1"
	.byte	0x5
	.2byte	0x573
	.byte	0x15
	.4byte	0x158
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"R"
	.byte	0x5
	.2byte	0x573
	.byte	0x19
	.4byte	0x158
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"TP"
	.byte	0x5
	.2byte	0x577
	.byte	0x11
	.4byte	0x158
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.string	"TQ"
	.byte	0x5
	.2byte	0x577
	.byte	0x15
	.4byte	0x158
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.4byte	.LASF184
	.byte	0x5
	.2byte	0x57b
	.byte	0x11
	.4byte	0x158
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4
	.4byte	.LASF185
	.byte	0x5
	.2byte	0x57b
	.byte	0x1b
	.4byte	0x158
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4
	.4byte	.LASF186
	.byte	0x5
	.2byte	0x583
	.byte	0x11
	.4byte	0x158
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x4
	.4byte	.LASF187
	.byte	0x5
	.2byte	0x583
	.byte	0x20
	.4byte	0x158
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xb
	.4byte	.LASF117
	.2byte	0x60a
	.4byte	.L345
	.byte	0
	.uleb128 0xc
	.4byte	.LASF188
	.byte	0x5
	.2byte	0x52a
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ece
	.uleb128 0x3
	.string	"T"
	.byte	0x5
	.2byte	0x52a
	.byte	0x25
	.4byte	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"Vf"
	.byte	0x5
	.2byte	0x52a
	.byte	0x35
	.4byte	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.string	"N"
	.byte	0x5
	.2byte	0x52a
	.byte	0x4c
	.4byte	0x57e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x52c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"mm"
	.byte	0x5
	.2byte	0x52d
	.byte	0x1c
	.4byte	0x120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF189
	.byte	0x5
	.2byte	0x52e
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF190
	.byte	0x5
	.2byte	0x52f
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"RR"
	.byte	0x5
	.2byte	0x530
	.byte	0x11
	.4byte	0x158
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"M_T"
	.byte	0x5
	.2byte	0x530
	.byte	0x15
	.4byte	0x158
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.4byte	.LASF117
	.2byte	0x545
	.4byte	.L331
	.byte	0
	.uleb128 0xc
	.4byte	.LASF191
	.byte	0x5
	.2byte	0x4fd
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f53
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x4fd
	.byte	0x36
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x4fe
	.byte	0x27
	.4byte	0x7b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x4fe
	.byte	0x56
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x500
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF192
	.byte	0x5
	.2byte	0x500
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"R"
	.byte	0x5
	.2byte	0x501
	.byte	0x11
	.4byte	0x158
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.4byte	.LASF117
	.2byte	0x520
	.4byte	.L315
	.byte	0
	.uleb128 0x6
	.4byte	.LASF193
	.2byte	0x4c8
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fd7
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x4c8
	.byte	0x2d
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x5
	.2byte	0x4c9
	.byte	0x2d
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x4ca
	.byte	0x27
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x4cc
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF154
	.byte	0x5
	.2byte	0x4cd
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"T"
	.byte	0x5
	.2byte	0x4ce
	.byte	0x11
	.4byte	0x158
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.4byte	.LASF117
	.2byte	0x4e7
	.4byte	.L305
	.byte	0
	.uleb128 0x6
	.4byte	.LASF194
	.2byte	0x4b5
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2012
	.uleb128 0x3
	.string	"pub"
	.byte	0x5
	.2byte	0x4b5
	.byte	0x3b
	.4byte	0xd0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"prv"
	.byte	0x5
	.2byte	0x4b6
	.byte	0x3b
	.4byte	0xd0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF195
	.2byte	0x49c
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x203d
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x49c
	.byte	0x3a
	.4byte	0xd0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF196
	.2byte	0x486
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2068
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x486
	.byte	0x39
	.4byte	0xd0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF197
	.2byte	0x414
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x210c
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x414
	.byte	0x2e
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x415
	.byte	0x1f
	.4byte	0x7b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x416
	.byte	0x1f
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF198
	.byte	0x5
	.2byte	0x417
	.byte	0x26
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF199
	.byte	0x5
	.2byte	0x417
	.byte	0x31
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x419
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"H"
	.byte	0x5
	.2byte	0x41a
	.byte	0x11
	.4byte	0x158
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF200
	.byte	0x5
	.2byte	0x41b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF117
	.2byte	0x471
	.4byte	.L253
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF201
	.2byte	0x407
	.byte	0x8
	.4byte	0x76
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2137
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x407
	.byte	0x37
	.4byte	0xd0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF202
	.2byte	0x3ff
	.byte	0x8
	.4byte	0x76
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2162
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x3ff
	.byte	0x3a
	.4byte	0xd0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF203
	.2byte	0x3f7
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x218d
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x3f7
	.byte	0x37
	.4byte	0xd0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF204
	.2byte	0x3ef
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21b8
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x3ef
	.byte	0x3d
	.4byte	0xd0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF205
	.2byte	0x3cb
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2203
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x3cb
	.byte	0x32
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x3cb
	.byte	0x3b
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x3cc
	.byte	0x2f
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF207
	.2byte	0x3b9
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2229
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x3b9
	.byte	0x2c
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF208
	.2byte	0x393
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22a1
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x393
	.byte	0x37
	.4byte	0xd0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"DP"
	.byte	0x5
	.2byte	0x394
	.byte	0x29
	.4byte	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"DQ"
	.byte	0x5
	.2byte	0x394
	.byte	0x3a
	.4byte	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"QP"
	.byte	0x5
	.2byte	0x394
	.byte	0x4b
	.4byte	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x396
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF209
	.byte	0x5
	.2byte	0x397
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF210
	.2byte	0x368
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2332
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x368
	.byte	0x33
	.4byte	0xd0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"N"
	.byte	0x5
	.2byte	0x369
	.byte	0x25
	.4byte	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"P"
	.byte	0x5
	.2byte	0x369
	.byte	0x35
	.4byte	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"Q"
	.byte	0x5
	.2byte	0x369
	.byte	0x45
	.4byte	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"D"
	.byte	0x5
	.2byte	0x36a
	.byte	0x25
	.4byte	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"E"
	.byte	0x5
	.2byte	0x36a
	.byte	0x35
	.4byte	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x36c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF209
	.byte	0x5
	.2byte	0x36d
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF211
	.2byte	0x334
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x241e
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x334
	.byte	0x37
	.4byte	0xd0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"N"
	.byte	0x5
	.2byte	0x335
	.byte	0x2b
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF212
	.byte	0x5
	.2byte	0x335
	.byte	0x35
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"P"
	.byte	0x5
	.2byte	0x336
	.byte	0x2b
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF213
	.byte	0x5
	.2byte	0x336
	.byte	0x35
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"Q"
	.byte	0x5
	.2byte	0x337
	.byte	0x2b
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF214
	.byte	0x5
	.2byte	0x337
	.byte	0x35
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.string	"D"
	.byte	0x5
	.2byte	0x338
	.byte	0x2b
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF215
	.byte	0x5
	.2byte	0x338
	.byte	0x35
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.string	"E"
	.byte	0x5
	.2byte	0x339
	.byte	0x2b
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2
	.4byte	.LASF216
	.byte	0x5
	.2byte	0x339
	.byte	0x35
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x33b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF209
	.byte	0x5
	.2byte	0x33c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF117
	.2byte	0x363
	.4byte	.L201
	.byte	0
	.uleb128 0x6
	.4byte	.LASF217
	.2byte	0x2d2
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x252c
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x2d2
	.byte	0x2f
	.4byte	0xcb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x2d4
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF218
	.byte	0x5
	.2byte	0x2d5
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF219
	.byte	0x5
	.2byte	0x2d5
	.byte	0x11
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF220
	.byte	0x5
	.2byte	0x2d5
	.byte	0x19
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF221
	.byte	0x5
	.2byte	0x2d5
	.byte	0x21
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF222
	.byte	0x5
	.2byte	0x2d5
	.byte	0x29
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF223
	.byte	0x5
	.2byte	0x2d7
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF224
	.byte	0x5
	.2byte	0x2d7
	.byte	0x12
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF225
	.byte	0x5
	.2byte	0x2d7
	.byte	0x1b
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF226
	.byte	0x5
	.2byte	0x2d9
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF227
	.byte	0x5
	.2byte	0x2d9
	.byte	0x14
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF228
	.byte	0x5
	.2byte	0x2d9
	.byte	0x20
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.4byte	.LASF229
	.byte	0x5
	.2byte	0x2d9
	.byte	0x2b
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF209
	.byte	0x5
	.2byte	0x2d9
	.byte	0x33
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xc
	.4byte	.LASF230
	.byte	0x5
	.2byte	0x27e
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2578
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x27e
	.byte	0x39
	.4byte	0xd0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF209
	.byte	0x5
	.2byte	0x27e
	.byte	0x42
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF231
	.byte	0x5
	.2byte	0x27f
	.byte	0x22
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF232
	.2byte	0x252
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2654
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x252
	.byte	0x31
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"N"
	.byte	0x5
	.2byte	0x253
	.byte	0x31
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF212
	.byte	0x5
	.2byte	0x253
	.byte	0x3b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"P"
	.byte	0x5
	.2byte	0x254
	.byte	0x31
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF213
	.byte	0x5
	.2byte	0x254
	.byte	0x3b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"Q"
	.byte	0x5
	.2byte	0x255
	.byte	0x31
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF214
	.byte	0x5
	.2byte	0x255
	.byte	0x3b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.string	"D"
	.byte	0x5
	.2byte	0x256
	.byte	0x31
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF215
	.byte	0x5
	.2byte	0x256
	.byte	0x3b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.string	"E"
	.byte	0x5
	.2byte	0x257
	.byte	0x31
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2
	.4byte	.LASF216
	.byte	0x5
	.2byte	0x257
	.byte	0x3b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x259
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF117
	.2byte	0x270
	.4byte	.L151
	.byte	0
	.uleb128 0x6
	.4byte	.LASF233
	.2byte	0x23c
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26d5
	.uleb128 0x3
	.string	"ctx"
	.byte	0x5
	.2byte	0x23c
	.byte	0x2d
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"N"
	.byte	0x5
	.2byte	0x23d
	.byte	0x2b
	.4byte	0x57e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"P"
	.byte	0x5
	.2byte	0x23e
	.byte	0x2b
	.4byte	0x57e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"Q"
	.byte	0x5
	.2byte	0x23e
	.byte	0x41
	.4byte	0x57e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"D"
	.byte	0x5
	.2byte	0x23f
	.byte	0x2b
	.4byte	0x57e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"E"
	.byte	0x5
	.2byte	0x23f
	.byte	0x41
	.4byte	0x57e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x241
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF234
	.byte	0x5
	.2byte	0x1bb
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27de
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x5
	.2byte	0x1bb
	.byte	0x40
	.4byte	0xbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x5
	.2byte	0x1bc
	.byte	0x38
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x1bd
	.byte	0x40
	.4byte	0xbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0x5
	.2byte	0x1be
	.byte	0x38
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.4byte	.LASF154
	.byte	0x5
	.2byte	0x1bf
	.byte	0x39
	.4byte	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x1c1
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"i"
	.byte	0x5
	.2byte	0x1c2
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF235
	.byte	0x5
	.2byte	0x1c2
	.byte	0xf
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF236
	.byte	0x5
	.2byte	0x1ce
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"bad"
	.byte	0x5
	.2byte	0x1cf
	.byte	0x1c
	.4byte	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF237
	.byte	0x5
	.2byte	0x1d0
	.byte	0x1c
	.4byte	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF238
	.byte	0x5
	.2byte	0x1d1
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF239
	.byte	0x5
	.2byte	0x1d2
	.byte	0x1c
	.4byte	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x4
	.4byte	.LASF240
	.byte	0x5
	.2byte	0x1e4
	.byte	0x20
	.4byte	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF241
	.2byte	0x17a
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2860
	.uleb128 0x3
	.string	"rsa"
	.byte	0x5
	.2byte	0x17a
	.byte	0x39
	.4byte	0xd0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF242
	.byte	0x5
	.2byte	0x17a
	.byte	0x4d
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"p"
	.byte	0x5
	.2byte	0x17b
	.byte	0x2e
	.4byte	0xa2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x17d
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"len"
	.byte	0x5
	.2byte	0x17e
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"T"
	.byte	0x5
	.2byte	0x17f
	.byte	0x11
	.4byte	0x158
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.4byte	.LASF243
	.2byte	0x191
	.4byte	.L123
	.byte	0
	.uleb128 0x6
	.4byte	.LASF244
	.2byte	0x11e
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28e2
	.uleb128 0x3
	.string	"rsa"
	.byte	0x5
	.2byte	0x11e
	.byte	0x36
	.4byte	0xd0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF242
	.byte	0x5
	.2byte	0x11e
	.byte	0x4a
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"p"
	.byte	0x5
	.2byte	0x11f
	.byte	0x2b
	.4byte	0xa2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"len"
	.byte	0x5
	.2byte	0x121
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"ret"
	.byte	0x5
	.2byte	0x122
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"T"
	.byte	0x5
	.2byte	0x124
	.byte	0x11
	.4byte	0x158
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.4byte	.LASF243
	.2byte	0x164
	.4byte	.L91
	.byte	0
	.uleb128 0x20
	.4byte	.LASF245
	.byte	0xe3
	.4byte	0x68
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2962
	.uleb128 0xf
	.string	"rsa"
	.byte	0x5
	.byte	0xe3
	.byte	0x33
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"key"
	.byte	0x5
	.byte	0xe3
	.byte	0x4d
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.4byte	.LASF246
	.byte	0x5
	.byte	0xe3
	.byte	0x59
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.string	"p"
	.byte	0x5
	.byte	0xe5
	.byte	0x14
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.string	"end"
	.byte	0x5
	.byte	0xe6
	.byte	0x14
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.string	"ret"
	.byte	0x5
	.byte	0xe7
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"len"
	.byte	0x5
	.byte	0xe8
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x20
	.4byte	.LASF247
	.byte	0x4f
	.4byte	0x68
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a0a
	.uleb128 0xf
	.string	"rsa"
	.byte	0x5
	.byte	0x4f
	.byte	0x30
	.4byte	0xcb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xf
	.string	"key"
	.byte	0x5
	.byte	0x4f
	.byte	0x4a
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.4byte	.LASF246
	.byte	0x5
	.byte	0x4f
	.byte	0x56
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x10
	.string	"ret"
	.byte	0x5
	.byte	0x51
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.4byte	.LASF248
	.byte	0x5
	.byte	0x51
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.string	"len"
	.byte	0x5
	.byte	0x52
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"p"
	.byte	0x5
	.byte	0x53
	.byte	0x14
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"end"
	.byte	0x5
	.byte	0x53
	.byte	0x18
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"T"
	.byte	0x5
	.byte	0x55
	.byte	0x11
	.4byte	0x158
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.4byte	.LASF117
	.byte	0x5
	.byte	0xd8
	.byte	0x1
	.4byte	.L47
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF249
	.byte	0x5
	.byte	0x3d
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a5d
	.uleb128 0xf
	.string	"p"
	.byte	0x5
	.byte	0x3d
	.byte	0x31
	.4byte	0xa2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"end"
	.byte	0x5
	.byte	0x3e
	.byte	0x36
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"X"
	.byte	0x5
	.byte	0x3f
	.byte	0x2e
	.4byte	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.string	"ret"
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF250
	.byte	0x4
	.byte	0x8e
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ab4
	.uleb128 0x14
	.4byte	.LASF251
	.byte	0x4
	.byte	0x8e
	.byte	0x29
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"low"
	.byte	0x4
	.byte	0x8e
	.byte	0x33
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF252
	.byte	0x4
	.byte	0x8f
	.byte	0x31
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LASF253
	.byte	0x4
	.byte	0x8f
	.byte	0x3b
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x18
	.4byte	.LASF254
	.byte	0x3
	.2byte	0x2e9
	.byte	0x16
	.4byte	0x76
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ae0
	.uleb128 0x2
	.4byte	.LASF255
	.byte	0x3
	.2byte	0x2e9
	.byte	0x44
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF256
	.byte	0x2
	.2byte	0x213
	.byte	0x26
	.4byte	0x32c
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b0a
	.uleb128 0x3
	.string	"x"
	.byte	0x2
	.2byte	0x213
	.byte	0x51
	.4byte	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF257
	.byte	0x2
	.2byte	0x20d
	.byte	0x26
	.4byte	0x32c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b42
	.uleb128 0x3
	.string	"x"
	.byte	0x2
	.2byte	0x20d
	.byte	0x50
	.4byte	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"y"
	.byte	0x2
	.2byte	0x20e
	.byte	0x50
	.4byte	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.4byte	.LASF258
	.byte	0x2
	.2byte	0x207
	.byte	0x26
	.4byte	0x32c
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b7a
	.uleb128 0x3
	.string	"x"
	.byte	0x2
	.2byte	0x207
	.byte	0x51
	.4byte	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"y"
	.byte	0x2
	.2byte	0x208
	.byte	0x51
	.4byte	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF259
	.byte	0x2
	.2byte	0x1ef
	.byte	0x26
	.4byte	0x32c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2bb2
	.uleb128 0x3
	.string	"x"
	.byte	0x2
	.2byte	0x1ef
	.byte	0x4b
	.4byte	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"y"
	.byte	0x2
	.2byte	0x1f0
	.byte	0x4b
	.4byte	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF260
	.byte	0x2
	.2byte	0x1e9
	.byte	0x26
	.4byte	0x32c
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2bea
	.uleb128 0x3
	.string	"x"
	.byte	0x2
	.2byte	0x1e9
	.byte	0x4b
	.4byte	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"y"
	.byte	0x2
	.2byte	0x1ea
	.byte	0x4b
	.4byte	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.4byte	.LASF261
	.byte	0x2
	.2byte	0x1e4
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c26
	.uleb128 0x2
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x1e4
	.byte	0x45
	.4byte	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"if1"
	.byte	0x2
	.2byte	0x1e4
	.byte	0x54
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF263
	.byte	0x2
	.2byte	0x1d8
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c72
	.uleb128 0x2
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x1d8
	.byte	0x3e
	.4byte	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"if1"
	.byte	0x2
	.2byte	0x1d8
	.byte	0x4d
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"if0"
	.byte	0x2
	.2byte	0x1d8
	.byte	0x56
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x18
	.4byte	.LASF264
	.byte	0x2
	.2byte	0x1c3
	.byte	0x18
	.4byte	0x6f
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2cae
	.uleb128 0x2
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x1c3
	.byte	0x49
	.4byte	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"if1"
	.byte	0x2
	.2byte	0x1c3
	.byte	0x5d
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF265
	.byte	0x2
	.2byte	0x1a2
	.byte	0x18
	.4byte	0x6f
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2cfa
	.uleb128 0x2
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x1a2
	.byte	0x42
	.4byte	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"if1"
	.byte	0x2
	.2byte	0x1a3
	.byte	0x34
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"if0"
	.byte	0x2
	.2byte	0x1a4
	.byte	0x34
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xc
	.4byte	.LASF266
	.byte	0x2
	.2byte	0x17e
	.byte	0x26
	.4byte	0x32c
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d42
	.uleb128 0x3
	.string	"x"
	.byte	0x2
	.2byte	0x17e
	.byte	0x4b
	.4byte	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"y"
	.byte	0x2
	.2byte	0x17e
	.byte	0x60
	.4byte	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF267
	.byte	0x2
	.2byte	0x181
	.byte	0x1d
	.4byte	0x344
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF268
	.byte	0x2
	.2byte	0x10f
	.byte	0x26
	.4byte	0x32c
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2db8
	.uleb128 0x3
	.string	"x"
	.byte	0x2
	.2byte	0x10f
	.byte	0x4b
	.4byte	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"y"
	.byte	0x2
	.2byte	0x10f
	.byte	0x60
	.4byte	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"xo"
	.byte	0x2
	.2byte	0x162
	.byte	0x1d
	.4byte	0x344
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"yo"
	.byte	0x2
	.2byte	0x163
	.byte	0x1d
	.4byte	0x344
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF269
	.byte	0x2
	.2byte	0x168
	.byte	0x1c
	.4byte	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"ret"
	.byte	0x2
	.2byte	0x174
	.byte	0x17
	.4byte	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF270
	.byte	0x2
	.byte	0xcd
	.byte	0x21
	.4byte	0x338
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e10
	.uleb128 0x14
	.4byte	.LASF262
	.byte	0x2
	.byte	0xcd
	.byte	0x46
	.4byte	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"if1"
	.byte	0x2
	.byte	0xce
	.byte	0x41
	.4byte	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"if0"
	.byte	0x2
	.byte	0xcf
	.byte	0x41
	.4byte	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF271
	.byte	0x2
	.2byte	0x109
	.byte	0x1c
	.4byte	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF272
	.byte	0x2
	.byte	0x78
	.byte	0x26
	.4byte	0x32c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e53
	.uleb128 0xf
	.string	"x"
	.byte	0x2
	.byte	0x78
	.byte	0x48
	.4byte	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"xo"
	.byte	0x2
	.byte	0xb8
	.byte	0x1d
	.4byte	0x344
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.string	"y"
	.byte	0x2
	.byte	0xc0
	.byte	0x16
	.4byte	0x349
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.4byte	.LASF273
	.byte	0x2
	.byte	0x55
	.byte	0x21
	.4byte	0x338
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e7b
	.uleb128 0xf
	.string	"x"
	.byte	0x2
	.byte	0x55
	.byte	0x4e
	.4byte	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF277
	.byte	0x1
	.byte	0xf6
	.byte	0x1d
	.4byte	0x32
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF274
	.byte	0x1
	.byte	0xf6
	.byte	0x4d
	.4byte	0x1dc
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
	.uleb128 0x4
	.uleb128 0x34
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
	.uleb128 0x5
	.uleb128 0x34
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
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
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
	.uleb128 0x2e
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.4byte	0x23c
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
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
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
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
	.4byte	.LFB16
	.uleb128 .LFE16-.LFB16
	.byte	0x7
	.4byte	.LFB19
	.uleb128 .LFE19-.LFB19
	.byte	0x7
	.4byte	.LFB23
	.uleb128 .LFE23-.LFB23
	.byte	0x7
	.4byte	.LFB26
	.uleb128 .LFE26-.LFB26
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
	.4byte	.LFB33
	.uleb128 .LFE33-.LFB33
	.byte	0x7
	.4byte	.LFB34
	.uleb128 .LFE34-.LFB34
	.byte	0x7
	.4byte	.LFB35
	.uleb128 .LFE35-.LFB35
	.byte	0x7
	.4byte	.LFB36
	.uleb128 .LFE36-.LFB36
	.byte	0x7
	.4byte	.LFB94
	.uleb128 .LFE94-.LFB94
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
	.byte	0x7
	.4byte	.LFB137
	.uleb128 .LFE137-.LFB137
	.byte	0x7
	.4byte	.LFB138
	.uleb128 .LFE138-.LFB138
	.byte	0x7
	.4byte	.LFB139
	.uleb128 .LFE139-.LFB139
	.byte	0x7
	.4byte	.LFB140
	.uleb128 .LFE140-.LFB140
	.byte	0x7
	.4byte	.LFB141
	.uleb128 .LFE141-.LFB141
	.byte	0x7
	.4byte	.LFB142
	.uleb128 .LFE142-.LFB142
	.byte	0x7
	.4byte	.LFB143
	.uleb128 .LFE143-.LFB143
	.byte	0x7
	.4byte	.LFB144
	.uleb128 .LFE144-.LFB144
	.byte	0x7
	.4byte	.LFB145
	.uleb128 .LFE145-.LFB145
	.byte	0x7
	.4byte	.LFB146
	.uleb128 .LFE146-.LFB146
	.byte	0x7
	.4byte	.LFB147
	.uleb128 .LFE147-.LFB147
	.byte	0x7
	.4byte	.LFB148
	.uleb128 .LFE148-.LFB148
	.byte	0x7
	.4byte	.LFB149
	.uleb128 .LFE149-.LFB149
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"hash_id"
.LASF146:
	.string	"nb_pad"
.LASF12:
	.string	"size_t"
.LASF68:
	.string	"mbedtls_mpi_grow"
.LASF242:
	.string	"start"
.LASF105:
	.string	"mbedtls_mpi_init"
.LASF130:
	.string	"siglen"
.LASF89:
	.string	"mbedtls_rsa_deduce_primes"
.LASF167:
	.string	"pad_len"
.LASF95:
	.string	"mbedtls_ct_memmove_left"
.LASF91:
	.string	"mbedtls_mpi_get_bit"
.LASF13:
	.string	"int32_t"
.LASF161:
	.string	"output_max_len"
.LASF126:
	.string	"mbedtls_rsa_rsassa_pss_verify"
.LASF124:
	.string	"encoded"
.LASF271:
	.string	"not_cond"
.LASF198:
	.string	"nbits"
.LASF203:
	.string	"mbedtls_rsa_get_md_alg"
.LASF209:
	.string	"is_priv"
.LASF260:
	.string	"mbedtls_ct_uint_eq"
.LASF86:
	.string	"mbedtls_mpi_write_binary"
.LASF240:
	.string	"found"
.LASF263:
	.string	"mbedtls_ct_error_if"
.LASF268:
	.string	"mbedtls_ct_uint_lt"
.LASF188:
	.string	"rsa_unblind"
.LASF38:
	.string	"md_ctx"
.LASF23:
	.string	"MBEDTLS_MD_MD5"
.LASF141:
	.string	"verif"
.LASF269:
	.string	"cond"
.LASF234:
	.string	"mbedtls_ct_rsaes_pkcs1_v15_unpadding"
.LASF272:
	.string	"mbedtls_ct_bool"
.LASF196:
	.string	"mbedtls_rsa_check_pubkey"
.LASF270:
	.string	"mbedtls_ct_if"
.LASF241:
	.string	"mbedtls_rsa_write_pubkey"
.LASF226:
	.string	"n_missing"
.LASF212:
	.string	"N_len"
.LASF132:
	.string	"result"
.LASF250:
	.string	"mbedtls_error_add"
.LASF267:
	.string	"diff"
.LASF49:
	.string	"mbedtls_zeroize_and_free"
.LASF259:
	.string	"mbedtls_ct_uint_gt"
.LASF233:
	.string	"mbedtls_rsa_import"
.LASF214:
	.string	"Q_len"
.LASF122:
	.string	"mbedtls_rsa_rsassa_pkcs1_v15_verify"
.LASF28:
	.string	"MBEDTLS_MD_SHA384"
.LASF6:
	.string	"long int"
.LASF273:
	.string	"mbedtls_ct_compiler_opaque"
.LASF247:
	.string	"mbedtls_rsa_parse_key"
.LASF246:
	.string	"keylen"
.LASF186:
	.string	"input_blinded"
.LASF183:
	.string	"mbedtls_rsa_private"
.LASF101:
	.string	"mbedtls_mpi_free"
.LASF178:
	.string	"mgf_mask"
.LASF276:
	.string	"rand"
.LASF217:
	.string	"mbedtls_rsa_complete"
.LASF116:
	.string	"mbedtls_rsa_copy"
.LASF32:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF145:
	.string	"oid_size"
.LASF251:
	.string	"high"
.LASF184:
	.string	"DP_blind"
.LASF211:
	.string	"mbedtls_rsa_export_raw"
.LASF215:
	.string	"D_len"
.LASF265:
	.string	"mbedtls_ct_uint_if"
.LASF190:
	.string	"tlimbs"
.LASF193:
	.string	"mbedtls_rsa_public"
.LASF97:
	.string	"mbedtls_asn1_write_tag"
.LASF2:
	.string	"signed char"
.LASF17:
	.string	"mbedtls_mpi_sint"
.LASF225:
	.string	"have_QP"
.LASF3:
	.string	"unsigned char"
.LASF163:
	.string	"ilen"
.LASF18:
	.string	"mbedtls_mpi_uint"
.LASF185:
	.string	"DQ_blind"
.LASF164:
	.string	"mbedtls_rsa_rsaes_oaep_decrypt"
.LASF72:
	.string	"mbedtls_mpi_gcd_modinv_odd"
.LASF244:
	.string	"mbedtls_rsa_write_key"
.LASF43:
	.string	"mbedtls_ct_condition_t"
.LASF129:
	.string	"expected_salt_len"
.LASF123:
	.string	"sig_len"
.LASF45:
	.string	"mbedtls_ct_int_t"
.LASF154:
	.string	"olen"
.LASF15:
	.string	"char"
.LASF111:
	.string	"sha1sum"
.LASF114:
	.string	"output"
.LASF143:
	.string	"rsa_rsassa_pkcs1_v15_encode"
.LASF235:
	.string	"plaintext_max_size"
.LASF71:
	.string	"mbedtls_mpi_exp_mod"
.LASF100:
	.string	"mbedtls_asn1_write_mpi"
.LASF264:
	.string	"mbedtls_ct_uint_if_else_0"
.LASF213:
	.string	"P_len"
.LASF144:
	.string	"dst_len"
.LASF245:
	.string	"mbedtls_rsa_parse_pubkey"
.LASF58:
	.string	"mbedtls_md_update"
.LASF243:
	.string	"end_of_export"
.LASF232:
	.string	"mbedtls_rsa_import_raw"
.LASF238:
	.string	"plaintext_size"
.LASF56:
	.string	"mbedtls_platform_zeroize"
.LASF39:
	.string	"hmac_ctx"
.LASF29:
	.string	"MBEDTLS_MD_SHA512"
.LASF75:
	.string	"mbedtls_mpi_exp_mod_unsafe"
.LASF80:
	.string	"mbedtls_mpi_sub_mpi"
.LASF104:
	.string	"mbedtls_asn1_get_tag"
.LASF191:
	.string	"rsa_prepare_blinding"
.LASF160:
	.string	"input"
.LASF237:
	.string	"pad_done"
.LASF252:
	.string	"file"
.LASF151:
	.string	"mbedtls_rsa_rsassa_pss_sign_no_mode_check"
.LASF33:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF46:
	.string	"printf"
.LASF248:
	.string	"version"
.LASF266:
	.string	"mbedtls_ct_uint_ne"
.LASF195:
	.string	"mbedtls_rsa_check_privkey"
.LASF16:
	.string	"mbedtls_f_rng_t"
.LASF74:
	.string	"mbedtls_mpi_mod_mpi"
.LASF137:
	.string	"f_rng"
.LASF200:
	.string	"prime_quality"
.LASF82:
	.string	"mbedtls_mpi_lset"
.LASF7:
	.string	"long unsigned int"
.LASF107:
	.string	"mbedtls_asn1_get_mpi"
.LASF21:
	.string	"MBEDTLS_MPI_GEN_PRIME_FLAG_LOW_ERR"
.LASF99:
	.string	"mbedtls_asn1_write_int"
.LASF119:
	.string	"md_alg"
.LASF102:
	.string	"mbedtls_mpi_copy"
.LASF24:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF92:
	.string	"mbedtls_mpi_read_binary"
.LASF230:
	.string	"rsa_check_context"
.LASF70:
	.string	"mbedtls_mpi_core_montmul_init"
.LASF147:
	.string	"md_size"
.LASF253:
	.string	"line"
.LASF83:
	.string	"mbedtls_mpi_bitlen"
.LASF61:
	.string	"mbedtls_md_setup"
.LASF205:
	.string	"mbedtls_rsa_set_padding"
.LASF128:
	.string	"mbedtls_rsa_rsassa_pss_verify_ext"
.LASF221:
	.string	"have_D"
.LASF222:
	.string	"have_E"
.LASF65:
	.string	"mbedtls_mpi_sub_int"
.LASF78:
	.string	"mbedtls_mpi_cmp_mpi"
.LASF220:
	.string	"have_Q"
.LASF76:
	.string	"mbedtls_rsa_validate_crt"
.LASF60:
	.string	"mbedtls_md_get_size"
.LASF171:
	.string	"mbedtls_rsa_rsaes_pkcs1_v15_encrypt"
.LASF187:
	.string	"check_result_blinded"
.LASF90:
	.string	"mbedtls_mpi_mul_mpi"
.LASF112:
	.string	"verbose"
.LASF66:
	.string	"mbedtls_mpi_core_montmul"
.LASF69:
	.string	"mbedtls_mpi_core_get_mont_r2_unsafe"
.LASF8:
	.string	"long long int"
.LASF170:
	.string	"mbedtls_rsa_pkcs1_encrypt"
.LASF120:
	.string	"hashlen"
.LASF180:
	.string	"counter"
.LASF40:
	.string	"mbedtls_rsa_context"
.LASF87:
	.string	"mbedtls_rsa_deduce_crt"
.LASF150:
	.string	"saltlen"
.LASF59:
	.string	"mbedtls_md_starts"
.LASF182:
	.string	"mask"
.LASF25:
	.string	"MBEDTLS_MD_SHA1"
.LASF109:
	.string	"rsa_decrypted"
.LASF136:
	.string	"mbedtls_rsa_pkcs1_sign"
.LASF255:
	.string	"AN_limbs"
.LASF88:
	.string	"mbedtls_rsa_deduce_private_exponent"
.LASF113:
	.string	"rng_state"
.LASF135:
	.string	"exp_hashlen"
.LASF192:
	.string	"count"
.LASF103:
	.string	"mbedtls_asn1_get_int"
.LASF20:
	.string	"MBEDTLS_MPI_GEN_PRIME_FLAG_DH"
.LASF35:
	.string	"mbedtls_md_info_t"
.LASF174:
	.string	"compute_hash"
.LASF117:
	.string	"cleanup"
.LASF197:
	.string	"mbedtls_rsa_gen_key"
.LASF10:
	.string	"unsigned int"
.LASF36:
	.string	"mbedtls_md_context_t"
.LASF110:
	.string	"rsa_ciphertext"
.LASF216:
	.string	"E_len"
.LASF204:
	.string	"mbedtls_rsa_get_padding_mode"
.LASF166:
	.string	"label_len"
.LASF62:
	.string	"mbedtls_md_init"
.LASF106:
	.string	"mbedtls_mpi_cmp_int"
.LASF118:
	.string	"mbedtls_rsa_pkcs1_verify"
.LASF158:
	.string	"offset"
.LASF156:
	.string	"slen"
.LASF254:
	.string	"mbedtls_mpi_core_montmul_working_limbs"
.LASF93:
	.string	"mbedtls_mpi_size"
.LASF79:
	.string	"mbedtls_mpi_swap"
.LASF155:
	.string	"salt"
.LASF189:
	.string	"nlimbs"
.LASF256:
	.string	"mbedtls_ct_bool_not"
.LASF229:
	.string	"is_pub"
.LASF261:
	.string	"mbedtls_ct_error_if_else_0"
.LASF47:
	.string	"mbedtls_mpi_read_string"
.LASF34:
	.string	"mbedtls_md_type_t"
.LASF51:
	.string	"calloc"
.LASF275:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF57:
	.string	"mbedtls_md_finish"
.LASF11:
	.string	"long double"
.LASF54:
	.string	"mbedtls_md"
.LASF44:
	.string	"mbedtls_ct_uint_t"
.LASF176:
	.string	"zeros"
.LASF9:
	.string	"long long unsigned int"
.LASF194:
	.string	"mbedtls_rsa_check_pub_priv"
.LASF179:
	.string	"dlen"
.LASF219:
	.string	"have_P"
.LASF52:
	.string	"mbedtls_oid_get_oid_by_md"
.LASF19:
	.string	"mbedtls_mpi"
.LASF63:
	.string	"mbedtls_mpi_add_mpi"
.LASF175:
	.string	"hash_mprime"
.LASF64:
	.string	"mbedtls_mpi_fill_random"
.LASF98:
	.string	"mbedtls_asn1_write_len"
.LASF208:
	.string	"mbedtls_rsa_export_crt"
.LASF249:
	.string	"asn1_get_nonzero_mpi"
.LASF133:
	.string	"hlen"
.LASF199:
	.string	"exponent"
.LASF85:
	.string	"memset"
.LASF140:
	.string	"sig_try"
.LASF152:
	.string	"rsa_rsassa_pss_sign"
.LASF26:
	.string	"MBEDTLS_MD_SHA224"
.LASF55:
	.string	"mbedtls_md_free"
.LASF67:
	.string	"mbedtls_mpi_core_to_mont_rep"
.LASF177:
	.string	"exit"
.LASF81:
	.string	"mbedtls_mpi_gen_prime"
.LASF207:
	.string	"mbedtls_rsa_init"
.LASF48:
	.string	"memcmp"
.LASF84:
	.string	"mbedtls_md_info_from_type"
.LASF274:
	.string	"md_type"
.LASF30:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF181:
	.string	"use_len"
.LASF223:
	.string	"have_DP"
.LASF224:
	.string	"have_DQ"
.LASF173:
	.string	"mbedtls_rsa_rsaes_oaep_encrypt"
.LASF96:
	.string	"mbedtls_ct_zeroize_if"
.LASF202:
	.string	"mbedtls_rsa_get_bitlen"
.LASF4:
	.string	"short int"
.LASF169:
	.string	"lhash"
.LASF236:
	.string	"pad_count"
.LASF201:
	.string	"mbedtls_rsa_get_len"
.LASF142:
	.string	"myrand"
.LASF149:
	.string	"mbedtls_rsa_rsassa_pss_sign_ext"
.LASF73:
	.string	"mbedtls_mpi_random"
.LASF138:
	.string	"p_rng"
.LASF77:
	.string	"mbedtls_rsa_validate_params"
.LASF27:
	.string	"MBEDTLS_MD_SHA256"
.LASF22:
	.string	"MBEDTLS_MD_NONE"
.LASF148:
	.string	"mbedtls_rsa_rsassa_pss_sign"
.LASF153:
	.string	"rsa_rsassa_pss_sign_no_mode_check"
.LASF277:
	.string	"mbedtls_md_get_size_from_type"
.LASF125:
	.string	"encoded_expected"
.LASF239:
	.string	"output_too_large"
.LASF94:
	.string	"memcpy"
.LASF31:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF127:
	.string	"mgf1_hash_id"
.LASF139:
	.string	"mbedtls_rsa_rsassa_pkcs1_v15_sign"
.LASF41:
	.string	"padding"
.LASF168:
	.string	"in_padding"
.LASF131:
	.string	"hash_start"
.LASF14:
	.string	"uint32_t"
.LASF228:
	.string	"d_missing"
.LASF162:
	.string	"mbedtls_rsa_rsaes_pkcs1_v15_decrypt"
.LASF231:
	.string	"blinding_needed"
.LASF115:
	.string	"mbedtls_rsa_self_test"
.LASF50:
	.string	"free"
.LASF53:
	.string	"mbedtls_ct_memcmp"
.LASF206:
	.string	"mbedtls_rsa_free"
.LASF5:
	.string	"short unsigned int"
.LASF134:
	.string	"observed_salt_len"
.LASF108:
	.string	"rsa_plaintext"
.LASF159:
	.string	"mbedtls_rsa_pkcs1_decrypt"
.LASF262:
	.string	"condition"
.LASF257:
	.string	"mbedtls_ct_bool_or"
.LASF165:
	.string	"label"
.LASF210:
	.string	"mbedtls_rsa_export"
.LASF218:
	.string	"have_N"
.LASF157:
	.string	"min_slen"
.LASF37:
	.string	"md_info"
.LASF258:
	.string	"mbedtls_ct_bool_and"
.LASF227:
	.string	"pq_missing"
.LASF121:
	.string	"hash"
.LASF172:
	.string	"rng_dl"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/rsa.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
