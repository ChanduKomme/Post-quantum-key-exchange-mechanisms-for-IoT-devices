	.file	"bignum.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/bignum.c"
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
	.section	.text.mbedtls_ct_size_if_else_0,"ax",@progbits
	.align	1
	.type	mbedtls_ct_size_if_else_0, @function
mbedtls_ct_size_if_else_0:
.LFB21:
	.loc 1 447 1
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
	.loc 1 448 12
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 1 449 1
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
.LFE21:
	.size	mbedtls_ct_size_if_else_0, .-mbedtls_ct_size_if_else_0
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
	.section	.text.mbedtls_ct_mpi_uint_if_else_0,"ax",@progbits
	.align	1
	.type	mbedtls_ct_mpi_uint_if_else_0, @function
mbedtls_ct_mpi_uint_if_else_0:
.LFB24:
	.loc 1 466 1
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
	.loc 1 467 12
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 1 468 1
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
.LFE24:
	.size	mbedtls_ct_mpi_uint_if_else_0, .-mbedtls_ct_mpi_uint_if_else_0
	.section	.text.mbedtls_ct_bool_ne,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool_ne, @function
mbedtls_ct_bool_ne:
.LFB31:
	.loc 1 515 1
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
	.loc 1 516 12
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	xor	a5,a4,a5
	.loc 1 517 1
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
.LFE31:
	.size	mbedtls_ct_bool_ne, .-mbedtls_ct_bool_ne
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
	.section	.text.mbedtls_ct_bool_or,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool_or, @function
mbedtls_ct_bool_or:
.LFB33:
	.loc 1 527 1
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
	.loc 1 528 12
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	or	a5,a4,a5
	.loc 1 529 1
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
	.size	mbedtls_ct_bool_or, .-mbedtls_ct_bool_or
	.section	.text.mbedtls_ct_bool_not,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool_not, @function
mbedtls_ct_bool_not:
.LFB34:
	.loc 1 532 1
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
	.loc 1 533 12
	lw	a5,-20(s0)
	not	a5,a5
	.loc 1 534 1
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
	.size	mbedtls_ct_bool_not, .-mbedtls_ct_bool_not
	.section	.text.mbedtls_ct_mpi_sign_if,"ax",@progbits
	.align	1
	.type	mbedtls_ct_mpi_sign_if, @function
mbedtls_ct_mpi_sign_if:
.LFB40:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/bignum.c"
	.loc 2 50 1
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
	mv	a4,a2
	sh	a5,-22(s0)
	mv	a5,a4
	sh	a5,-24(s0)
	.loc 2 51 58
	lh	a5,-22(s0)
	addi	a5,a5,1
	.loc 2 51 27
	mv	a4,a5
	.loc 2 51 69
	lh	a5,-24(s0)
	addi	a5,a5,1
	.loc 2 51 27
	mv	a2,a5
	mv	a1,a4
	lw	a0,-20(s0)
	call	mbedtls_ct_uint_if
	mv	a5,a0
	.loc 2 51 12 discriminator 1
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 2 51 74 discriminator 1
	addi	a5,a5,-1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 2 52 1
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
.LFE40:
	.size	mbedtls_ct_mpi_sign_if, .-mbedtls_ct_mpi_sign_if
	.section	.text.mbedtls_mpi_lt_mpi_ct,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_lt_mpi_ct
	.type	mbedtls_mpi_lt_mpi_ct, @function
mbedtls_mpi_lt_mpi_ct:
.LFB41:
	.loc 2 60 1
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
	.loc 2 63 10
	lw	a5,-52(s0)
	lhu	a4,6(a5)
	.loc 2 63 18
	lw	a5,-56(s0)
	lhu	a5,6(a5)
	.loc 2 63 8
	beq	a4,a5,.L26
	.loc 2 64 16
	li	a5,-4
	j	.L28
.L26:
	.loc 2 71 39
	lw	a5,-52(s0)
	lh	a5,4(a5)
	.loc 2 71 48
	slli	a5,a5,16
	srli	a5,a5,16
	srai	a5,a5,1
	.loc 2 71 21
	andi	a5,a5,1
	mv	a0,a5
	call	mbedtls_ct_bool
	sw	a0,-20(s0)
	.loc 2 72 39
	lw	a5,-56(s0)
	lh	a5,4(a5)
	.loc 2 72 48
	slli	a5,a5,16
	srli	a5,a5,16
	srai	a5,a5,1
	.loc 2 72 21
	andi	a5,a5,1
	mv	a0,a5
	call	mbedtls_ct_bool
	sw	a0,-24(s0)
	.loc 2 79 22
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ct_bool_ne
	sw	a0,-28(s0)
	.loc 2 80 14
	lw	a1,-20(s0)
	lw	a0,-28(s0)
	call	mbedtls_ct_bool_and
	sw	a0,-32(s0)
	.loc 2 89 28
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 89 18
	sw	a5,-48(s0)
	.loc 2 89 34
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 2 89 18
	sw	a5,-44(s0)
	.loc 2 90 16
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_ct_size_if_else_0
	sw	a0,-36(s0)
	.loc 2 91 57
	lw	a4,-36(s0)
	addi	a5,s0,-48
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 2 91 66
	lw	a5,-36(s0)
	xori	a4,a5,1
	.loc 2 91 63
	addi	a5,s0,-48
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 91 73
	lw	a5,-52(s0)
	lhu	a5,6(a5)
	.loc 2 91 33
	mv	a2,a5
	mv	a1,a4
	mv	a0,a3
	call	mbedtls_mpi_core_lt_ct
	sw	a0,-40(s0)
	.loc 2 97 14
	lw	a0,-28(s0)
	call	mbedtls_ct_bool_not
	mv	a5,a0
	.loc 2 97 14 is_stmt 0 discriminator 1
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_ct_bool_and
	mv	a5,a0
	.loc 2 97 14 discriminator 2
	mv	a1,a5
	lw	a0,-32(s0)
	call	mbedtls_ct_bool_or
	sw	a0,-32(s0)
	.loc 2 100 12 is_stmt 1
	li	a1,1
	lw	a0,-32(s0)
	call	mbedtls_ct_uint_if_else_0
	mv	a4,a0
	.loc 2 100 10 discriminator 1
	lw	a5,-60(s0)
	sw	a4,0(a5)
	.loc 2 102 12
	li	a5,0
.L28:
	.loc 2 103 1
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
.LFE41:
	.size	mbedtls_mpi_lt_mpi_ct, .-mbedtls_mpi_lt_mpi_ct
	.section	.text.mbedtls_mpi_safe_cond_assign,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_safe_cond_assign
	.type	mbedtls_mpi_safe_cond_assign, @function
mbedtls_mpi_safe_cond_assign:
.LFB42:
	.loc 2 121 1
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
	mv	a5,a2
	sb	a5,-41(s0)
	.loc 2 122 9
	sw	zero,-24(s0)
	.loc 2 124 43
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	.loc 2 124 22
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_grow
	sw	a0,-24(s0)
	.loc 2 124 13 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L35
.LBB2:
	.loc 2 127 44
	lbu	a5,-41(s0)
	mv	a0,a5
	call	mbedtls_ct_bool
	sw	a0,-28(s0)
	.loc 2 129 51
	lw	a5,-40(s0)
	lh	a4,4(a5)
	.loc 2 129 16
	lw	a5,-36(s0)
	lh	a5,4(a5)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-28(s0)
	call	mbedtls_ct_mpi_sign_if
	mv	a5,a0
	mv	a4,a5
	.loc 2 129 14 discriminator 1
	lw	a5,-36(s0)
	sh	a4,4(a5)
	.loc 2 131 9
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 131 45
	lw	a5,-40(s0)
	lw	a1,0(a5)
	.loc 2 131 51
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	.loc 2 131 9
	lw	a3,-28(s0)
	mv	a2,a5
	mv	a0,a4
	call	mbedtls_mpi_core_cond_assign
	.loc 2 133 48
	lw	a0,-28(s0)
	call	mbedtls_ct_bool_not
	sw	a0,-32(s0)
.LBB3:
	.loc 2 134 26
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	.loc 2 134 21
	sw	a5,-20(s0)
	.loc 2 134 9
	j	.L32
.L33:
	.loc 2 135 69
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 135 72
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 2 135 23
	lw	a3,0(a5)
	.loc 2 135 14
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 135 17
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	s1,a4,a5
	.loc 2 135 23
	mv	a1,a3
	lw	a0,-32(s0)
	call	mbedtls_ct_mpi_uint_if_else_0
	mv	a5,a0
	.loc 2 135 21 discriminator 1
	sw	a5,0(s1)
	.loc 2 134 42 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L32:
	.loc 2 134 36 discriminator 1
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 2 134 33 discriminator 1
	lw	a5,-20(s0)
	bltu	a5,a4,.L33
.LBE3:
.LBE2:
	.loc 2 139 1
	j	.L31
.L35:
	.loc 2 124 56
	nop
.L31:
	.loc 2 140 12
	lw	a5,-24(s0)
	.loc 2 141 1
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
.LFE42:
	.size	mbedtls_mpi_safe_cond_assign, .-mbedtls_mpi_safe_cond_assign
	.section	.text.mbedtls_mpi_safe_cond_swap,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_safe_cond_swap
	.type	mbedtls_mpi_safe_cond_swap, @function
mbedtls_mpi_safe_cond_swap:
.LFB43:
	.loc 2 152 1
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
	mv	a5,a2
	sb	a5,-41(s0)
	.loc 2 153 9
	sw	zero,-20(s0)
	.loc 2 156 8
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L37
	.loc 2 157 16
	li	a5,0
	j	.L38
.L37:
	.loc 2 160 38
	lbu	a5,-41(s0)
	mv	a0,a5
	call	mbedtls_ct_bool
	sw	a0,-24(s0)
	.loc 2 162 43
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	.loc 2 162 22
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 162 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L42
	.loc 2 163 43
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 163 22
	mv	a1,a5
	lw	a0,-40(s0)
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 163 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L43
	.loc 2 165 10
	lw	a5,-36(s0)
	lh	a5,4(a5)
	.loc 2 165 7
	sw	a5,-28(s0)
	.loc 2 166 12
	lw	a5,-40(s0)
	lh	a4,4(a5)
	lw	a5,-36(s0)
	lh	a5,4(a5)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-24(s0)
	call	mbedtls_ct_mpi_sign_if
	mv	a5,a0
	mv	a4,a5
	.loc 2 166 10 discriminator 1
	lw	a5,-36(s0)
	sh	a4,4(a5)
	.loc 2 167 12
	lw	a5,-28(s0)
	slli	a4,a5,16
	srai	a4,a4,16
	lw	a5,-40(s0)
	lh	a5,4(a5)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-24(s0)
	call	mbedtls_ct_mpi_sign_if
	mv	a5,a0
	mv	a4,a5
	.loc 2 167 10 discriminator 1
	lw	a5,-40(s0)
	sh	a4,4(a5)
	.loc 2 169 5
	lw	a5,-36(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	lw	a1,0(a5)
	.loc 2 169 45
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 169 5
	lw	a3,-24(s0)
	mv	a2,a5
	mv	a0,a4
	call	mbedtls_mpi_core_cond_swap
	j	.L40
.L42:
	.loc 2 162 56
	nop
	j	.L40
.L43:
	.loc 2 163 56
	nop
.L40:
	.loc 2 172 12
	lw	a5,-20(s0)
.L38:
	.loc 2 173 1
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
.LFE43:
	.size	mbedtls_mpi_safe_cond_swap, .-mbedtls_mpi_safe_cond_swap
	.section	.text.mbedtls_mpi_init,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_init
	.type	mbedtls_mpi_init, @function
mbedtls_mpi_init:
.LFB44:
	.loc 2 182 1
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
	.loc 2 183 10
	lw	a5,-20(s0)
	li	a4,1
	sh	a4,4(a5)
	.loc 2 184 10
	lw	a5,-20(s0)
	sh	zero,6(a5)
	.loc 2 185 10
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 2 186 1
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
.LFE44:
	.size	mbedtls_mpi_init, .-mbedtls_mpi_init
	.section	.text.mbedtls_mpi_free,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_free
	.type	mbedtls_mpi_free, @function
mbedtls_mpi_free:
.LFB45:
	.loc 2 192 1
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
	.loc 2 193 8
	lw	a5,-20(s0)
	beq	a5,zero,.L49
	.loc 2 197 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 197 8
	beq	a5,zero,.L48
	.loc 2 198 35
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 198 71
	lw	a5,-20(s0)
	lhu	a5,6(a5)
	.loc 2 198 67
	slli	a5,a5,2
	.loc 2 198 9
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_zeroize_and_free
.L48:
	.loc 2 201 10
	lw	a5,-20(s0)
	li	a4,1
	sh	a4,4(a5)
	.loc 2 202 10
	lw	a5,-20(s0)
	sh	zero,6(a5)
	.loc 2 203 10
	lw	a5,-20(s0)
	sw	zero,0(a5)
	j	.L45
.L49:
	.loc 2 194 9
	nop
.L45:
	.loc 2 204 1
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
	.size	mbedtls_mpi_free, .-mbedtls_mpi_free
	.section	.text.mbedtls_mpi_grow,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_grow
	.type	mbedtls_mpi_grow, @function
mbedtls_mpi_grow:
.LFB46:
	.loc 2 210 1
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
	.loc 2 213 8
	lw	a4,-40(s0)
	li	a5,8192
	addi	a5,a5,1808
	bleu	a4,a5,.L51
	.loc 2 214 16
	li	a5,-16
	j	.L52
.L51:
	.loc 2 217 10
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 2 217 8
	lw	a5,-40(s0)
	bleu	a5,a4,.L53
	.loc 2 218 39
	li	a1,4
	lw	a0,-40(s0)
	call	calloc
	mv	a5,a0
	sw	a5,-20(s0)
	.loc 2 218 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L54
	.loc 2 219 20
	li	a5,-16
	j	.L52
.L54:
	.loc 2 222 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 222 12
	beq	a5,zero,.L55
	.loc 2 223 24
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 223 30
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 223 34
	slli	a5,a5,2
	.loc 2 223 13
	mv	a2,a5
	mv	a1,a4
	lw	a0,-20(s0)
	call	memcpy
	.loc 2 224 39
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 224 75
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 224 71
	slli	a5,a5,2
	.loc 2 224 13
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_zeroize_and_free
.L55:
	.loc 2 229 16
	lw	a5,-40(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 2 229 14
	lw	a5,-36(s0)
	sh	a4,6(a5)
	.loc 2 230 14
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L53:
	.loc 2 233 12
	li	a5,0
.L52:
	.loc 2 234 1
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
.LFE46:
	.size	mbedtls_mpi_grow, .-mbedtls_mpi_grow
	.section	.text.mbedtls_mpi_shrink,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_shrink
	.type	mbedtls_mpi_shrink, @function
mbedtls_mpi_shrink:
.LFB47:
	.loc 2 241 1
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
	.loc 2 245 8
	lw	a4,-40(s0)
	li	a5,8192
	addi	a5,a5,1808
	bleu	a4,a5,.L57
	.loc 2 246 16
	li	a5,-16
	j	.L58
.L57:
	.loc 2 250 10
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 2 250 8
	lw	a5,-40(s0)
	bltu	a5,a4,.L59
	.loc 2 251 16
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_grow
	mv	a5,a0
	j	.L58
.L59:
	.loc 2 255 15
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 255 19
	addi	a5,a5,-1
	.loc 2 255 12
	sw	a5,-20(s0)
	.loc 2 255 5
	j	.L60
.L63:
	.loc 2 256 14
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 256 17
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 256 12
	bne	a5,zero,.L67
	.loc 2 255 32 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L60:
	.loc 2 255 26 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L63
	j	.L62
.L67:
	.loc 2 257 13
	nop
.L62:
	.loc 2 260 6
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 2 262 8
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bgeu	a4,a5,.L64
	.loc 2 263 11
	lw	a5,-40(s0)
	sw	a5,-20(s0)
.L64:
	.loc 2 266 35
	li	a1,4
	lw	a0,-20(s0)
	call	calloc
	mv	a5,a0
	sw	a5,-24(s0)
	.loc 2 266 8 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L65
	.loc 2 267 16
	li	a5,-16
	j	.L58
.L65:
	.loc 2 270 10
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 270 8
	beq	a5,zero,.L66
	.loc 2 271 20
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 271 9
	lw	a5,-20(s0)
	slli	a5,a5,2
	mv	a2,a5
	mv	a1,a4
	lw	a0,-24(s0)
	call	memcpy
	.loc 2 272 35
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 272 71
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 272 67
	slli	a5,a5,2
	.loc 2 272 9
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_zeroize_and_free
.L66:
	.loc 2 277 12
	lw	a5,-20(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 2 277 10
	lw	a5,-36(s0)
	sh	a4,6(a5)
	.loc 2 278 10
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 2 280 12
	li	a5,0
.L58:
	.loc 2 281 1
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
.LFE47:
	.size	mbedtls_mpi_shrink, .-mbedtls_mpi_shrink
	.section	.text.mbedtls_mpi_resize_clear,"ax",@progbits
	.align	1
	.type	mbedtls_mpi_resize_clear, @function
mbedtls_mpi_resize_clear:
.LFB48:
	.loc 2 285 1
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
	.loc 2 286 8
	lw	a5,-24(s0)
	bne	a5,zero,.L69
	.loc 2 287 9
	lw	a0,-20(s0)
	call	mbedtls_mpi_free
	.loc 2 288 16
	li	a5,0
	j	.L70
.L69:
	.loc 2 289 17
	lw	a5,-20(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 2 289 15
	lw	a5,-24(s0)
	bne	a5,a4,.L71
	.loc 2 290 17
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 290 9
	lw	a5,-24(s0)
	slli	a5,a5,2
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	memset
	.loc 2 291 14
	lw	a5,-20(s0)
	li	a4,1
	sh	a4,4(a5)
	.loc 2 292 16
	li	a5,0
	j	.L70
.L71:
	.loc 2 294 9
	lw	a0,-20(s0)
	call	mbedtls_mpi_free
	.loc 2 295 16
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_mpi_grow
	mv	a5,a0
.L70:
	.loc 2 297 1
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
	.size	mbedtls_mpi_resize_clear, .-mbedtls_mpi_resize_clear
	.section	.text.mbedtls_mpi_copy,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_copy
	.type	mbedtls_mpi_copy, @function
mbedtls_mpi_copy:
.LFB49:
	.loc 2 308 1
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
	.loc 2 309 9
	sw	zero,-20(s0)
	.loc 2 312 8
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L73
	.loc 2 313 16
	li	a5,0
	j	.L74
.L73:
	.loc 2 316 10
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	.loc 2 316 8
	bne	a5,zero,.L75
	.loc 2 317 14
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 317 12
	beq	a5,zero,.L76
	.loc 2 318 18
	lw	a5,-36(s0)
	li	a4,1
	sh	a4,4(a5)
	.loc 2 319 21
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 319 30
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 319 34
	slli	a5,a5,2
	.loc 2 319 13
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	memset
.L76:
	.loc 2 321 16
	li	a5,0
	j	.L74
.L75:
	.loc 2 324 15
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	.loc 2 324 19
	addi	a5,a5,-1
	.loc 2 324 12
	sw	a5,-24(s0)
	.loc 2 324 5
	j	.L77
.L80:
	.loc 2 325 14
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 325 17
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 325 12
	bne	a5,zero,.L84
	.loc 2 324 32 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L77:
	.loc 2 324 26 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L80
	j	.L79
.L84:
	.loc 2 326 13
	nop
.L79:
	.loc 2 329 6
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 2 331 13
	lw	a5,-40(s0)
	lh	a4,4(a5)
	.loc 2 331 10
	lw	a5,-36(s0)
	sh	a4,4(a5)
	.loc 2 333 10
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 2 333 8
	lw	a5,-24(s0)
	bleu	a5,a4,.L81
	.loc 2 334 26
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 334 17 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L82
	.loc 2 334 57
	j	.L83
.L81:
	.loc 2 336 17
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 336 21
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a4,a4,a5
	.loc 2 336 31
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	mv	a3,a5
	.loc 2 336 35
	lw	a5,-24(s0)
	sub	a5,a3,a5
	.loc 2 336 9
	slli	a5,a5,2
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	memset
.L82:
	.loc 2 339 13
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 339 19
	lw	a5,-40(s0)
	lw	a3,0(a5)
	.loc 2 339 5
	lw	a5,-24(s0)
	slli	a5,a5,2
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
.L83:
	.loc 2 343 12
	lw	a5,-20(s0)
.L74:
	.loc 2 344 1
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
.LFE49:
	.size	mbedtls_mpi_copy, .-mbedtls_mpi_copy
	.section	.text.mbedtls_mpi_swap,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_swap
	.type	mbedtls_mpi_swap, @function
mbedtls_mpi_swap:
.LFB50:
	.loc 2 350 1
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
	.loc 2 353 5
	addi	a5,s0,-24
	li	a2,8
	lw	a1,-36(s0)
	mv	a0,a5
	call	memcpy
	.loc 2 354 5
	li	a2,8
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	memcpy
	.loc 2 355 5
	addi	a5,s0,-24
	li	a2,8
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 2 356 1
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
.LFE50:
	.size	mbedtls_mpi_swap, .-mbedtls_mpi_swap
	.section	.text.mpi_sint_abs,"ax",@progbits
	.align	1
	.type	mpi_sint_abs, @function
mpi_sint_abs:
.LFB51:
	.loc 2 359 1
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
	.loc 2 360 8
	lw	a5,-20(s0)
	blt	a5,zero,.L87
	.loc 2 361 16
	lw	a5,-20(s0)
	j	.L88
.L87:
	.loc 2 367 35
	lw	a5,-20(s0)
	.loc 2 367 33
	neg	a5,a5
.L88:
	.loc 2 368 1
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
.LFE51:
	.size	mpi_sint_abs, .-mpi_sint_abs
	.section	.text.mbedtls_mpi_lset,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_lset
	.type	mbedtls_mpi_lset, @function
mbedtls_mpi_lset:
.LFB52:
	.loc 2 378 1
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
	.loc 2 379 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 381 22
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 381 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L93
	.loc 2 382 13
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 382 22
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 382 26
	slli	a5,a5,2
	.loc 2 382 5
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	memset
	.loc 2 384 6
	lw	a5,-36(s0)
	lw	s1,0(a5)
	.loc 2 384 15
	lw	a0,-40(s0)
	call	mpi_sint_abs
	mv	a5,a0
	.loc 2 384 13 discriminator 1
	sw	a5,0(s1)
	.loc 2 385 34
	lw	a5,-40(s0)
	.loc 2 385 56
	srli	a5,a5,31
	.loc 2 385 105
	slli	a5,a5,16
	srli	a5,a5,16
	li	a4,0
	sub	a5,a4,a5
	slli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 2 385 10
	lw	a5,-36(s0)
	sh	a4,4(a5)
	j	.L91
.L93:
	.loc 2 381 53
	nop
.L91:
	.loc 2 389 12
	lw	a5,-20(s0)
	.loc 2 390 1
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
.LFE52:
	.size	mbedtls_mpi_lset, .-mbedtls_mpi_lset
	.section	.text.mbedtls_mpi_get_bit,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_get_bit
	.type	mbedtls_mpi_get_bit, @function
mbedtls_mpi_get_bit:
.LFB53:
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
	.loc 2 397 10
	lw	a5,-20(s0)
	lhu	a5,6(a5)
	.loc 2 397 14
	slli	a5,a5,5
	.loc 2 397 8
	lw	a4,-24(s0)
	bltu	a4,a5,.L95
	.loc 2 398 16
	li	a5,0
	j	.L96
.L95:
	.loc 2 401 14
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 401 22
	lw	a5,-24(s0)
	srli	a5,a5,5
	.loc 2 401 17
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 401 67
	lw	a5,-24(s0)
	andi	a5,a5,31
	.loc 2 401 59
	srl	a5,a4,a5
	.loc 2 401 105
	andi	a5,a5,1
.L96:
	.loc 2 402 1
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
.LFE53:
	.size	mbedtls_mpi_get_bit, .-mbedtls_mpi_get_bit
	.section	.text.mbedtls_mpi_set_bit,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_set_bit
	.type	mbedtls_mpi_set_bit, @function
mbedtls_mpi_set_bit:
.LFB54:
	.loc 2 408 1
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
	mv	a5,a2
	sb	a5,-41(s0)
	.loc 2 409 9
	sw	zero,-20(s0)
	.loc 2 410 12
	lw	a5,-40(s0)
	srli	a5,a5,5
	sw	a5,-24(s0)
	.loc 2 411 12
	lw	a5,-40(s0)
	andi	a5,a5,31
	sw	a5,-28(s0)
	.loc 2 413 8
	lbu	a5,-41(s0)
	beq	a5,zero,.L98
	.loc 2 413 18 discriminator 1
	lbu	a4,-41(s0)
	li	a5,1
	beq	a4,a5,.L98
	.loc 2 414 16
	li	a5,-4
	j	.L99
.L98:
	.loc 2 417 10
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 417 14
	slli	a5,a5,5
	.loc 2 417 8
	lw	a4,-40(s0)
	bltu	a4,a5,.L100
	.loc 2 418 12
	lbu	a5,-41(s0)
	bne	a5,zero,.L101
	.loc 2 419 20
	li	a5,0
	j	.L99
.L101:
	.loc 2 422 26
	lw	a5,-24(s0)
	addi	a5,a5,1
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 422 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L103
.L100:
	.loc 2 425 6
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 425 9
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 2 425 44
	lw	a5,-28(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 2 425 18
	not	a4,a5
	.loc 2 425 6
	lw	a5,-36(s0)
	lw	a2,0(a5)
	.loc 2 425 9
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a2,a5
	.loc 2 425 15
	and	a4,a3,a4
	sw	a4,0(a5)
	.loc 2 426 6
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 426 9
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 2 426 18
	lbu	a4,-41(s0)
	.loc 2 426 41
	lw	a5,-28(s0)
	sll	a4,a4,a5
	.loc 2 426 6
	lw	a5,-36(s0)
	lw	a2,0(a5)
	.loc 2 426 9
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a2,a5
	.loc 2 426 15
	or	a4,a3,a4
	sw	a4,0(a5)
	j	.L102
.L103:
	.loc 2 422 63
	nop
.L102:
	.loc 2 430 12
	lw	a5,-20(s0)
.L99:
	.loc 2 431 1
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
.LFE54:
	.size	mbedtls_mpi_set_bit, .-mbedtls_mpi_set_bit
	.section	.text.mbedtls_mpi_lsb,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_lsb
	.type	mbedtls_mpi_lsb, @function
mbedtls_mpi_lsb:
.LFB55:
	.loc 2 463 1
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
	.loc 2 466 12
	sw	zero,-20(s0)
	.loc 2 466 5
	j	.L105
.L108:
	.loc 2 467 14
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 467 17
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 467 12
	beq	a5,zero,.L106
	.loc 2 468 22
	lw	a5,-20(s0)
	slli	s1,a5,5
	.loc 2 468 75
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 468 78
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 2 468 60
	lw	a5,0(a5)
	mv	a0,a5
	call	__ctzsi2
	mv	a5,a0
	.loc 2 468 58 discriminator 1
	add	a5,s1,a5
	.loc 2 468 58 is_stmt 0
	j	.L107
.L106:
	.loc 2 466 28 is_stmt 1 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L105:
	.loc 2 466 22 discriminator 1
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 2 466 19 discriminator 1
	lw	a5,-20(s0)
	bltu	a5,a4,.L108
	.loc 2 472 12
	li	a5,0
.L107:
	.loc 2 473 1
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
.LFE55:
	.size	mbedtls_mpi_lsb, .-mbedtls_mpi_lsb
	.section	.text.mbedtls_mpi_bitlen,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_bitlen
	.type	mbedtls_mpi_bitlen, @function
mbedtls_mpi_bitlen:
.LFB56:
	.loc 2 479 1
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
	.loc 2 480 37
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 480 43
	lw	a5,-20(s0)
	lhu	a5,6(a5)
	.loc 2 480 12
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_core_bitlen
	mv	a5,a0
	.loc 2 481 1
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
.LFE56:
	.size	mbedtls_mpi_bitlen, .-mbedtls_mpi_bitlen
	.section	.text.mbedtls_mpi_size,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_size
	.type	mbedtls_mpi_size, @function
mbedtls_mpi_size:
.LFB57:
	.loc 2 487 1
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
	.loc 2 488 13
	lw	a0,-20(s0)
	call	mbedtls_mpi_bitlen
	mv	a5,a0
	.loc 2 488 35 discriminator 1
	addi	a5,a5,7
	.loc 2 488 40 discriminator 1
	srli	a5,a5,3
	.loc 2 489 1
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
.LFE57:
	.size	mbedtls_mpi_size, .-mbedtls_mpi_size
	.section	.text.mpi_get_digit,"ax",@progbits
	.align	1
	.type	mpi_get_digit, @function
mpi_get_digit:
.LFB58:
	.loc 2 495 1
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
	.loc 2 496 8
	lw	a5,-20(s0)
	li	a4,255
	sw	a4,0(a5)
	.loc 2 498 8
	lbu	a4,-25(s0)
	li	a5,47
	bleu	a4,a5,.L114
	.loc 2 498 19 discriminator 1
	lbu	a4,-25(s0)
	li	a5,57
	bgtu	a4,a5,.L114
	.loc 2 499 16
	lbu	a5,-25(s0)
	addi	a5,a5,-48
	mv	a4,a5
	.loc 2 499 12
	lw	a5,-20(s0)
	sw	a4,0(a5)
.L114:
	.loc 2 501 8
	lbu	a4,-25(s0)
	li	a5,64
	bleu	a4,a5,.L115
	.loc 2 501 19 discriminator 1
	lbu	a4,-25(s0)
	li	a5,70
	bgtu	a4,a5,.L115
	.loc 2 502 16
	lbu	a5,-25(s0)
	addi	a5,a5,-55
	mv	a4,a5
	.loc 2 502 12
	lw	a5,-20(s0)
	sw	a4,0(a5)
.L115:
	.loc 2 504 8
	lbu	a4,-25(s0)
	li	a5,96
	bleu	a4,a5,.L116
	.loc 2 504 19 discriminator 1
	lbu	a4,-25(s0)
	li	a5,102
	bgtu	a4,a5,.L116
	.loc 2 505 16
	lbu	a5,-25(s0)
	addi	a5,a5,-87
	mv	a4,a5
	.loc 2 505 12
	lw	a5,-20(s0)
	sw	a4,0(a5)
.L116:
	.loc 2 508 9
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 508 12
	lw	a5,-24(s0)
	.loc 2 508 8
	bltu	a4,a5,.L117
	.loc 2 509 16
	li	a5,-6
	j	.L118
.L117:
	.loc 2 512 12
	li	a5,0
.L118:
	.loc 2 513 1
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
.LFE58:
	.size	mpi_get_digit, .-mpi_get_digit
	.section	.text.mbedtls_mpi_read_string,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_read_string
	.type	mbedtls_mpi_read_string, @function
mbedtls_mpi_read_string:
.LFB59:
	.loc 2 519 1
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
	.loc 2 520 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 522 9
	li	a5,1
	sw	a5,-32(s0)
	.loc 2 526 8
	lw	a4,-72(s0)
	li	a5,1
	ble	a4,a5,.L120
	.loc 2 526 19 discriminator 1
	lw	a4,-72(s0)
	li	a5,16
	ble	a4,a5,.L121
.L120:
	.loc 2 527 16
	li	a5,-4
	j	.L140
.L121:
	.loc 2 530 5
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 532 10
	lw	a5,-76(s0)
	lbu	a5,0(a5)
	.loc 2 532 8
	bne	a5,zero,.L123
	.loc 2 533 9
	lw	a0,-68(s0)
	call	mbedtls_mpi_free
	.loc 2 534 16
	li	a5,0
	j	.L140
.L123:
	.loc 2 537 10
	lw	a5,-76(s0)
	lbu	a4,0(a5)
	.loc 2 537 8
	li	a5,45
	bne	a4,a5,.L124
	.loc 2 538 9
	lw	a5,-76(s0)
	addi	a5,a5,1
	sw	a5,-76(s0)
	.loc 2 539 14
	li	a5,-1
	sw	a5,-32(s0)
.L124:
	.loc 2 542 12
	lw	a0,-76(s0)
	call	strlen
	sw	a0,-36(s0)
	.loc 2 544 8
	lw	a4,-72(s0)
	li	a5,16
	bne	a4,a5,.L125
	.loc 2 545 12
	lw	a4,-36(s0)
	li	a5,1073741824
	bltu	a4,a5,.L126
	.loc 2 546 20
	li	a5,-4
	j	.L140
.L126:
	.loc 2 549 20
	lw	a5,-36(s0)
	slli	a5,a5,2
	.loc 2 549 26
	srli	a5,a5,5
	.loc 2 549 113
	lw	a4,-36(s0)
	andi	a4,a4,7
	snez	a4,a4
	andi	a4,a4,0xff
	.loc 2 549 11
	add	a5,a5,a4
	sw	a5,-40(s0)
	.loc 2 551 26
	lw	a1,-40(s0)
	lw	a0,-68(s0)
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 551 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L141
	.loc 2 552 26
	li	a1,0
	lw	a0,-68(s0)
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 552 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L142
	.loc 2 554 16
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 2 554 26
	sw	zero,-28(s0)
	.loc 2 554 9
	j	.L130
.L132:
	.loc 2 555 56
	lw	a5,-24(s0)
	addi	a5,a5,-1
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 2 555 30
	lbu	a4,0(a5)
	addi	a5,s0,-44
	mv	a2,a4
	lw	a1,-72(s0)
	mv	a0,a5
	call	mpi_get_digit
	sw	a0,-20(s0)
	.loc 2 555 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L143
	.loc 2 556 14
	lw	a5,-68(s0)
	lw	a3,0(a5)
	.loc 2 556 20
	lw	a5,-28(s0)
	srli	a5,a5,3
	.loc 2 556 17
	slli	a4,a5,2
	add	a4,a3,a4
	lw	a3,0(a4)
	.loc 2 556 61
	lw	a2,-44(s0)
	.loc 2 556 104
	lw	a4,-28(s0)
	slli	a4,a4,2
	andi	a4,a4,28
	.loc 2 556 61
	sll	a4,a2,a4
	.loc 2 556 14
	lw	a2,-68(s0)
	lw	a2,0(a2)
	.loc 2 556 17
	slli	a5,a5,2
	add	a5,a2,a5
	.loc 2 556 56
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 2 554 39 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 2 554 44 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L130:
	.loc 2 554 33 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L132
	j	.L133
.L125:
	.loc 2 559 26
	li	a1,0
	lw	a0,-68(s0)
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 559 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L144
	.loc 2 561 16
	sw	zero,-24(s0)
	.loc 2 561 9
	j	.L135
.L139:
	.loc 2 562 56
	lw	a4,-76(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 562 30
	lbu	a4,0(a5)
	addi	a5,s0,-44
	mv	a2,a4
	lw	a1,-72(s0)
	mv	a0,a5
	call	mpi_get_digit
	sw	a0,-20(s0)
	.loc 2 562 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L145
	.loc 2 563 30
	lw	a4,-72(s0)
	addi	a5,s0,-52
	mv	a2,a4
	lw	a1,-68(s0)
	mv	a0,a5
	call	mbedtls_mpi_mul_int
	sw	a0,-20(s0)
	.loc 2 563 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L146
	.loc 2 564 30
	lw	a5,-44(s0)
	mv	a4,a5
	addi	a5,s0,-52
	mv	a2,a4
	mv	a1,a5
	lw	a0,-68(s0)
	call	mbedtls_mpi_add_int
	sw	a0,-20(s0)
	.loc 2 564 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L147
	.loc 2 561 32 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L135:
	.loc 2 561 23 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	bltu	a4,a5,.L139
.L133:
	.loc 2 568 8
	lw	a5,-32(s0)
	bge	a5,zero,.L148
	.loc 2 568 21 discriminator 1
	lw	a0,-68(s0)
	call	mbedtls_mpi_bitlen
	mv	a5,a0
	.loc 2 568 18 discriminator 2
	beq	a5,zero,.L148
	.loc 2 569 14
	lw	a5,-68(s0)
	li	a4,-1
	sh	a4,4(a5)
	j	.L128
.L141:
	.loc 2 551 57
	nop
	j	.L128
.L142:
	.loc 2 552 57
	nop
	j	.L128
.L143:
	.loc 2 555 73
	nop
	j	.L128
.L144:
	.loc 2 559 57
	nop
	j	.L128
.L145:
	.loc 2 562 69
	nop
	j	.L128
.L146:
	.loc 2 563 72
	nop
	j	.L128
.L147:
	.loc 2 564 68
	nop
	j	.L128
.L148:
	.loc 2 572 1
	nop
.L128:
	.loc 2 574 5
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 576 12
	lw	a5,-20(s0)
.L140:
	.loc 2 577 1
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
.LFE59:
	.size	mbedtls_mpi_read_string, .-mbedtls_mpi_read_string
	.section	.text.mpi_write_hlp,"ax",@progbits
	.align	1
	.type	mpi_write_hlp, @function
mpi_write_hlp:
.LFB60:
	.loc 2 584 1
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
	.loc 2 585 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 587 12
	sw	zero,-24(s0)
	.loc 2 588 19
	lw	a5,-44(s0)
	lw	a4,0(a5)
	.loc 2 588 11
	lw	a5,-48(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
.L157:
	.loc 2 591 12
	lw	a4,-24(s0)
	lw	a5,-48(s0)
	bltu	a4,a5,.L150
	.loc 2 592 20
	li	a5,-8
	j	.L158
.L150:
	.loc 2 595 26
	addi	a5,s0,-32
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	mv	a0,a5
	call	mbedtls_mpi_mod_int
	sw	a0,-20(s0)
	.loc 2 595 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L159
	.loc 2 596 26
	lw	a3,-40(s0)
	lw	a2,-36(s0)
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_mpi_div_int
	sw	a0,-20(s0)
	.loc 2 596 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L160
	.loc 2 600 15
	lw	a4,-32(s0)
	.loc 2 600 12
	li	a5,9
	bgtu	a4,a5,.L155
	.loc 2 601 26
	lw	a5,-32(s0)
	andi	a5,a5,0xff
	.loc 2 601 24
	lw	a4,-28(s0)
	addi	a4,a4,-1
	sw	a4,-28(s0)
	.loc 2 601 26
	addi	a5,a5,48
	andi	a4,a5,0xff
	.loc 2 601 24
	lw	a5,-28(s0)
	sb	a4,0(a5)
	j	.L156
.L155:
	.loc 2 603 26
	lw	a5,-32(s0)
	andi	a5,a5,0xff
	.loc 2 603 24
	lw	a4,-28(s0)
	addi	a4,a4,-1
	sw	a4,-28(s0)
	.loc 2 603 26
	addi	a5,a5,55
	andi	a4,a5,0xff
	.loc 2 603 24
	lw	a5,-28(s0)
	sb	a4,0(a5)
.L156:
	.loc 2 606 15
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 2 607 14
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 607 40 discriminator 1
	bne	a5,zero,.L157
	.loc 2 609 5
	lw	a5,-44(s0)
	lw	a5,0(a5)
	lw	a2,-24(s0)
	lw	a1,-28(s0)
	mv	a0,a5
	call	memmove
	.loc 2 610 5
	lw	a5,-44(s0)
	lw	a4,0(a5)
	.loc 2 610 8
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a5,-44(s0)
	sw	a4,0(a5)
	j	.L153
.L159:
	.loc 2 595 68
	nop
	j	.L153
.L160:
	.loc 2 596 28
	nop
.L153:
	.loc 2 614 12
	lw	a5,-20(s0)
.L158:
	.loc 2 615 1
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
.LFE60:
	.size	mpi_write_hlp, .-mpi_write_hlp
	.section	.rodata
	.align	2
.LC0:
	.string	"0123456789ABCDEF"
	.section	.text.mbedtls_mpi_write_string,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_write_string
	.type	mbedtls_mpi_write_string, @function
mbedtls_mpi_write_string:
.LFB61:
	.loc 2 622 1
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
	.loc 2 623 9
	sw	zero,-20(s0)
	.loc 2 628 8
	lw	a4,-72(s0)
	li	a5,1
	ble	a4,a5,.L162
	.loc 2 628 19 discriminator 1
	lw	a4,-72(s0)
	li	a5,16
	ble	a4,a5,.L163
.L162:
	.loc 2 629 16
	li	a5,-4
	j	.L180
.L163:
	.loc 2 632 9
	lw	a0,-68(s0)
	call	mbedtls_mpi_bitlen
	sw	a0,-24(s0)
	.loc 2 633 8
	lw	a4,-72(s0)
	li	a5,3
	ble	a4,a5,.L165
	.loc 2 634 11
	lw	a5,-24(s0)
	srli	a5,a5,1
	sw	a5,-24(s0)
.L165:
	.loc 2 639 8
	lw	a4,-72(s0)
	li	a5,15
	ble	a4,a5,.L166
	.loc 2 640 11
	lw	a5,-24(s0)
	srli	a5,a5,1
	sw	a5,-24(s0)
.L166:
	.loc 2 644 7
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 2 645 7
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 2 647 7
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 2 648 7
	lw	a5,-24(s0)
	addi	a5,a5,1
	andi	a5,a5,-2
	sw	a5,-24(s0)
	.loc 2 651 8
	lw	a4,-80(s0)
	lw	a5,-24(s0)
	bgeu	a4,a5,.L167
	.loc 2 652 15
	lw	a5,-84(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 2 653 16
	li	a5,-8
	j	.L180
.L167:
	.loc 2 656 7
	lw	a5,-76(s0)
	sw	a5,-44(s0)
	.loc 2 657 5
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 659 10
	lw	a5,-68(s0)
	lh	a4,4(a5)
	.loc 2 659 8
	li	a5,-1
	bne	a4,a5,.L168
	.loc 2 660 11
	lw	a5,-44(s0)
	addi	a4,a5,1
	sw	a4,-44(s0)
	.loc 2 660 14
	li	a4,45
	sb	a4,0(a5)
	.loc 2 661 15
	lw	a5,-80(s0)
	addi	a5,a5,-1
	sw	a5,-80(s0)
.L168:
	.loc 2 664 8
	lw	a4,-72(s0)
	li	a5,16
	bne	a4,a5,.L169
.LBB4:
	.loc 2 668 19
	lw	a5,-68(s0)
	lhu	a5,6(a5)
	.loc 2 668 16
	sw	a5,-28(s0)
	.loc 2 668 26
	sw	zero,-36(s0)
	.loc 2 668 9
	j	.L170
.L175:
	.loc 2 669 20
	li	a5,4
	sw	a5,-32(s0)
	.loc 2 669 13
	j	.L171
.L174:
	.loc 2 670 23
	lw	a5,-68(s0)
	lw	a4,0(a5)
	.loc 2 670 26
	lw	a3,-28(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 670 41
	lw	a5,-32(s0)
	addi	a5,a5,-1
	.loc 2 670 46
	slli	a5,a5,3
	.loc 2 670 34
	srl	a5,a4,a5
	.loc 2 670 19
	andi	a5,a5,255
	sw	a5,-40(s0)
	.loc 2 672 20
	lw	a5,-40(s0)
	bne	a5,zero,.L172
	.loc 2 672 28 discriminator 1
	lw	a5,-36(s0)
	bne	a5,zero,.L172
	.loc 2 672 44 discriminator 2
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a4,a4,a5
	.loc 2 672 38 discriminator 2
	li	a5,2
	bne	a4,a5,.L181
.L172:
	.loc 2 676 48
	lw	a5,-40(s0)
	srai	a4,a5,31
	andi	a4,a4,15
	add	a5,a4,a5
	srai	a5,a5,4
	mv	a3,a5
	.loc 2 676 20
	lw	a5,-44(s0)
	addi	a4,a5,1
	sw	a4,-44(s0)
	.loc 2 676 45
	lui	a4,%hi(.LC0)
	addi	a4,a4,%lo(.LC0)
	add	a4,a4,a3
	lbu	a4,0(a4)
	.loc 2 676 24
	sb	a4,0(a5)
	.loc 2 677 48
	lw	a4,-40(s0)
	srai	a5,a4,31
	srli	a5,a5,28
	add	a4,a4,a5
	andi	a4,a4,15
	sub	a5,a4,a5
	mv	a3,a5
	.loc 2 677 20
	lw	a5,-44(s0)
	addi	a4,a5,1
	sw	a4,-44(s0)
	.loc 2 677 45
	lui	a4,%hi(.LC0)
	addi	a4,a4,%lo(.LC0)
	add	a4,a4,a3
	lbu	a4,0(a4)
	.loc 2 677 24
	sb	a4,0(a5)
	.loc 2 678 19
	li	a5,1
	sw	a5,-36(s0)
	j	.L173
.L181:
	.loc 2 673 21
	nop
.L173:
	.loc 2 669 58 discriminator 2
	lw	a5,-32(s0)
	addi	a5,a5,-1
	sw	a5,-32(s0)
.L171:
	.loc 2 669 52 discriminator 1
	lw	a5,-32(s0)
	bne	a5,zero,.L174
	.loc 2 668 39 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
.L170:
	.loc 2 668 33 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L175
	j	.L176
.L169:
.LBE4:
	.loc 2 682 26
	addi	a5,s0,-52
	lw	a1,-68(s0)
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 682 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L182
	.loc 2 684 14
	lh	a4,-48(s0)
	.loc 2 684 12
	li	a5,-1
	bne	a4,a5,.L179
	.loc 2 685 17
	li	a5,1
	sh	a5,-48(s0)
.L179:
	.loc 2 688 26
	addi	a4,s0,-44
	addi	a5,s0,-52
	lw	a3,-80(s0)
	mv	a2,a4
	lw	a1,-72(s0)
	mv	a0,a5
	call	mpi_write_hlp
	sw	a0,-20(s0)
	.loc 2 688 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L183
.L176:
	.loc 2 691 7
	lw	a5,-44(s0)
	addi	a4,a5,1
	sw	a4,-44(s0)
	.loc 2 691 10
	sb	zero,0(a5)
	.loc 2 692 25
	lw	a4,-44(s0)
	lw	a5,-76(s0)
	sub	a5,a4,a5
	.loc 2 692 13
	mv	a4,a5
	.loc 2 692 11
	lw	a5,-84(s0)
	sw	a4,0(a5)
	j	.L178
.L182:
	.loc 2 682 58
	nop
	j	.L178
.L183:
	.loc 2 688 71
	nop
.L178:
	.loc 2 696 5
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 698 12
	lw	a5,-20(s0)
.L180:
	.loc 2 699 1
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
.LFE61:
	.size	mbedtls_mpi_write_string, .-mbedtls_mpi_write_string
	.section	.text.mbedtls_mpi_read_binary_le,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_read_binary_le
	.type	mbedtls_mpi_read_binary_le, @function
mbedtls_mpi_read_binary_le:
.LFB62:
	.loc 2 800 1
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
	.loc 2 801 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 802 36
	lw	a5,-44(s0)
	srli	a5,a5,2
	.loc 2 802 77
	lw	a4,-44(s0)
	andi	a4,a4,3
	.loc 2 802 106
	snez	a4,a4
	andi	a4,a4,0xff
	.loc 2 802 18
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 2 805 22
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_resize_clear
	sw	a0,-20(s0)
	.loc 2 805 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L188
	.loc 2 807 22
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 807 54
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 807 22
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_core_read_le
	sw	a0,-20(s0)
	.loc 2 809 1
	j	.L186
.L188:
	.loc 2 805 65
	nop
.L186:
	.loc 2 816 12
	lw	a5,-20(s0)
	.loc 2 817 1
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
.LFE62:
	.size	mbedtls_mpi_read_binary_le, .-mbedtls_mpi_read_binary_le
	.section	.text.mbedtls_mpi_read_binary,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_read_binary
	.type	mbedtls_mpi_read_binary, @function
mbedtls_mpi_read_binary:
.LFB63:
	.loc 2 826 1
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
	.loc 2 827 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 828 36
	lw	a5,-44(s0)
	srli	a5,a5,2
	.loc 2 828 77
	lw	a4,-44(s0)
	andi	a4,a4,3
	.loc 2 828 106
	snez	a4,a4
	andi	a4,a4,0xff
	.loc 2 828 18
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 2 831 22
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_resize_clear
	sw	a0,-20(s0)
	.loc 2 831 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L193
	.loc 2 833 22
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 833 54
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 833 22
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_core_read_be
	sw	a0,-20(s0)
	.loc 2 835 1
	j	.L191
.L193:
	.loc 2 831 65
	nop
.L191:
	.loc 2 842 12
	lw	a5,-20(s0)
	.loc 2 843 1
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
.LFE63:
	.size	mbedtls_mpi_read_binary, .-mbedtls_mpi_read_binary
	.section	.text.mbedtls_mpi_write_binary_le,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_write_binary_le
	.type	mbedtls_mpi_write_binary_le, @function
mbedtls_mpi_write_binary_le:
.LFB64:
	.loc 2 850 1
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
	.loc 2 851 39
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 851 45
	lw	a5,-20(s0)
	lhu	a5,6(a5)
	.loc 2 851 12
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_core_write_le
	mv	a5,a0
	.loc 2 852 1
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
.LFE64:
	.size	mbedtls_mpi_write_binary_le, .-mbedtls_mpi_write_binary_le
	.section	.text.mbedtls_mpi_write_binary,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_write_binary
	.type	mbedtls_mpi_write_binary, @function
mbedtls_mpi_write_binary:
.LFB65:
	.loc 2 859 1
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
	.loc 2 860 39
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 860 45
	lw	a5,-20(s0)
	lhu	a5,6(a5)
	.loc 2 860 12
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_core_write_be
	mv	a5,a0
	.loc 2 861 1
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
.LFE65:
	.size	mbedtls_mpi_write_binary, .-mbedtls_mpi_write_binary
	.section	.text.mbedtls_mpi_shift_l,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_shift_l
	.type	mbedtls_mpi_shift_l, @function
mbedtls_mpi_shift_l:
.LFB66:
	.loc 2 867 1
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
	.loc 2 868 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 871 9
	lw	a0,-36(s0)
	call	mbedtls_mpi_bitlen
	mv	a4,a0
	.loc 2 871 7 discriminator 1
	lw	a5,-40(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 2 873 10
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 873 14
	slli	a5,a5,5
	.loc 2 873 8
	lw	a4,-24(s0)
	bleu	a4,a5,.L199
	.loc 2 874 51
	lw	a5,-24(s0)
	srli	a5,a5,5
	.loc 2 874 94
	lw	a4,-24(s0)
	andi	a4,a4,31
	.loc 2 874 130
	snez	a4,a4
	andi	a4,a4,0xff
	.loc 2 874 26
	add	a5,a5,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 874 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L202
.L199:
	.loc 2 877 9
	sw	zero,-20(s0)
	.loc 2 879 5
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 879 37
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 879 5
	lw	a2,-40(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_core_shift_l
	j	.L200
.L202:
	.loc 2 874 146
	nop
.L200:
	.loc 2 882 12
	lw	a5,-20(s0)
	.loc 2 883 1
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
.LFE66:
	.size	mbedtls_mpi_shift_l, .-mbedtls_mpi_shift_l
	.section	.text.mbedtls_mpi_shift_r,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_shift_r
	.type	mbedtls_mpi_shift_r, @function
mbedtls_mpi_shift_r:
.LFB67:
	.loc 2 889 1
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
	.loc 2 890 10
	lw	a5,-20(s0)
	lhu	a5,6(a5)
	.loc 2 890 8
	beq	a5,zero,.L204
	.loc 2 891 9
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 891 41
	lw	a5,-20(s0)
	lhu	a5,6(a5)
	.loc 2 891 9
	lw	a2,-24(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_core_shift_r
.L204:
	.loc 2 893 12
	li	a5,0
	.loc 2 894 1
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
	.size	mbedtls_mpi_shift_r, .-mbedtls_mpi_shift_r
	.section	.text.mbedtls_mpi_cmp_abs,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_cmp_abs
	.type	mbedtls_mpi_cmp_abs, @function
mbedtls_mpi_cmp_abs:
.LFB68:
	.loc 2 900 1
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
	.loc 2 903 15
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 903 12
	sw	a5,-20(s0)
	.loc 2 903 5
	j	.L207
.L210:
	.loc 2 904 14
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 904 17
	lw	a3,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 904 12
	bne	a5,zero,.L222
	.loc 2 903 28 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L207:
	.loc 2 903 22 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L210
	j	.L209
.L222:
	.loc 2 905 13
	nop
.L209:
	.loc 2 909 15
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	.loc 2 909 12
	sw	a5,-24(s0)
	.loc 2 909 5
	j	.L211
.L214:
	.loc 2 910 14
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 910 17
	lw	a3,-24(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 910 12
	bne	a5,zero,.L223
	.loc 2 909 28 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L211:
	.loc 2 909 22 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L214
	j	.L213
.L223:
	.loc 2 911 13
	nop
.L213:
	.loc 2 918 8
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bleu	a4,a5,.L215
	.loc 2 919 16
	li	a5,1
	j	.L216
.L215:
	.loc 2 921 8
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bleu	a4,a5,.L218
	.loc 2 922 16
	li	a5,-1
	j	.L216
.L221:
	.loc 2 926 14
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 926 17
	lw	a3,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 926 28
	lw	a5,-40(s0)
	lw	a3,0(a5)
	.loc 2 926 31
	lw	a2,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a2,a5
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 2 926 12
	bleu	a4,a5,.L219
	.loc 2 927 20
	li	a5,1
	j	.L216
.L219:
	.loc 2 929 14
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 929 17
	lw	a3,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 929 28
	lw	a5,-40(s0)
	lw	a3,0(a5)
	.loc 2 929 31
	lw	a2,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a2,a5
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 2 929 12
	bgeu	a4,a5,.L220
	.loc 2 930 20
	li	a5,-1
	j	.L216
.L220:
	.loc 2 925 20
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L218:
	.loc 2 925 14 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L221
	.loc 2 934 12
	li	a5,0
.L216:
	.loc 2 935 1
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
.LFE68:
	.size	mbedtls_mpi_cmp_abs, .-mbedtls_mpi_cmp_abs
	.section	.text.mbedtls_mpi_cmp_mpi,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_cmp_mpi
	.type	mbedtls_mpi_cmp_mpi, @function
mbedtls_mpi_cmp_mpi:
.LFB69:
	.loc 2 941 1
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
	.loc 2 944 15
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 944 12
	sw	a5,-20(s0)
	.loc 2 944 5
	j	.L225
.L228:
	.loc 2 945 14
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 945 17
	lw	a3,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 945 12
	bne	a5,zero,.L243
	.loc 2 944 28 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L225:
	.loc 2 944 22 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L228
	j	.L227
.L243:
	.loc 2 946 13
	nop
.L227:
	.loc 2 950 15
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	.loc 2 950 12
	sw	a5,-24(s0)
	.loc 2 950 5
	j	.L229
.L232:
	.loc 2 951 14
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 951 17
	lw	a3,-24(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 951 12
	bne	a5,zero,.L244
	.loc 2 950 28 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L229:
	.loc 2 950 22 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L232
	j	.L231
.L244:
	.loc 2 952 13
	nop
.L231:
	.loc 2 956 8
	lw	a5,-20(s0)
	bne	a5,zero,.L233
	.loc 2 956 16 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L233
	.loc 2 957 16
	li	a5,0
	j	.L234
.L233:
	.loc 2 960 8
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bleu	a4,a5,.L235
	.loc 2 961 17
	lw	a5,-36(s0)
	lh	a5,4(a5)
	j	.L234
.L235:
	.loc 2 963 8
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bleu	a4,a5,.L236
	.loc 2 964 18
	lw	a5,-40(s0)
	lh	a5,4(a5)
	.loc 2 964 16
	neg	a5,a5
	j	.L234
.L236:
	.loc 2 967 10
	lw	a5,-36(s0)
	lh	a5,4(a5)
	.loc 2 967 8
	ble	a5,zero,.L237
	.loc 2 967 22 discriminator 1
	lw	a5,-40(s0)
	lh	a5,4(a5)
	.loc 2 967 18 discriminator 1
	bge	a5,zero,.L237
	.loc 2 968 16
	li	a5,1
	j	.L234
.L237:
	.loc 2 970 10
	lw	a5,-40(s0)
	lh	a5,4(a5)
	.loc 2 970 8
	ble	a5,zero,.L239
	.loc 2 970 22 discriminator 1
	lw	a5,-36(s0)
	lh	a5,4(a5)
	.loc 2 970 18 discriminator 1
	bge	a5,zero,.L239
	.loc 2 971 16
	li	a5,-1
	j	.L234
.L242:
	.loc 2 975 14
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 975 17
	lw	a3,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 975 28
	lw	a5,-40(s0)
	lw	a3,0(a5)
	.loc 2 975 31
	lw	a2,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a2,a5
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 2 975 12
	bleu	a4,a5,.L240
	.loc 2 976 21
	lw	a5,-36(s0)
	lh	a5,4(a5)
	j	.L234
.L240:
	.loc 2 978 14
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 978 17
	lw	a3,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 978 28
	lw	a5,-40(s0)
	lw	a3,0(a5)
	.loc 2 978 31
	lw	a2,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a2,a5
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 2 978 12
	bgeu	a4,a5,.L241
	.loc 2 979 22
	lw	a5,-36(s0)
	lh	a5,4(a5)
	.loc 2 979 20
	neg	a5,a5
	j	.L234
.L241:
	.loc 2 974 20
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L239:
	.loc 2 974 14 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L242
	.loc 2 983 12
	li	a5,0
.L234:
	.loc 2 984 1
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
.LFE69:
	.size	mbedtls_mpi_cmp_mpi, .-mbedtls_mpi_cmp_mpi
	.section	.text.mbedtls_mpi_cmp_int,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_cmp_int
	.type	mbedtls_mpi_cmp_int, @function
mbedtls_mpi_cmp_int:
.LFB70:
	.loc 2 990 1
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
	.loc 2 994 10
	lw	a0,-40(s0)
	call	mpi_sint_abs
	mv	a5,a0
	.loc 2 994 8 discriminator 1
	sw	a5,-28(s0)
	.loc 2 995 33
	lw	a5,-40(s0)
	.loc 2 995 55
	srli	a5,a5,31
	.loc 2 995 104
	slli	a5,a5,16
	srli	a5,a5,16
	li	a4,0
	sub	a5,a4,a5
	slli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 2 995 9
	sh	a5,-20(s0)
	.loc 2 996 9
	li	a5,1
	sh	a5,-18(s0)
	.loc 2 997 9
	addi	a5,s0,-28
	sw	a5,-24(s0)
	.loc 2 999 12
	addi	a5,s0,-24
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 1000 1
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
.LFE70:
	.size	mbedtls_mpi_cmp_int, .-mbedtls_mpi_cmp_int
	.section	.text.mbedtls_mpi_add_abs,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_add_abs
	.type	mbedtls_mpi_add_abs, @function
mbedtls_mpi_add_abs:
.LFB71:
	.loc 2 1006 1
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
	.loc 2 1007 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1012 8
	lw	a4,-52(s0)
	lw	a5,-60(s0)
	bne	a4,a5,.L248
.LBB5:
	.loc 2 1013 28
	lw	a5,-56(s0)
	sw	a5,-36(s0)
	.loc 2 1013 37
	lw	a5,-52(s0)
	sw	a5,-56(s0)
	.loc 2 1013 44
	lw	a5,-36(s0)
	sw	a5,-60(s0)
.L248:
.LBE5:
	.loc 2 1016 8
	lw	a4,-52(s0)
	lw	a5,-56(s0)
	beq	a4,a5,.L249
	.loc 2 1017 26
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1017 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L262
.L249:
	.loc 2 1023 10
	lw	a5,-52(s0)
	li	a4,1
	sh	a4,4(a5)
	.loc 2 1025 15
	lw	a5,-60(s0)
	lhu	a5,6(a5)
	.loc 2 1025 12
	sw	a5,-24(s0)
	.loc 2 1025 5
	j	.L251
.L254:
	.loc 2 1026 14
	lw	a5,-60(s0)
	lw	a4,0(a5)
	.loc 2 1026 17
	lw	a3,-24(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1026 12
	bne	a5,zero,.L263
	.loc 2 1025 28 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L251:
	.loc 2 1025 22 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L254
	j	.L253
.L263:
	.loc 2 1027 13
	nop
.L253:
	.loc 2 1033 8
	lw	a5,-24(s0)
	bne	a5,zero,.L255
	.loc 2 1034 16
	li	a5,0
	j	.L256
.L255:
	.loc 2 1037 22
	lw	a1,-24(s0)
	lw	a0,-52(s0)
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 1037 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L264
	.loc 2 1041 7
	lw	a5,-52(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 2 1043 37
	lw	a5,-60(s0)
	lw	a5,0(a5)
	.loc 2 1043 9
	lw	a3,-24(s0)
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-28(s0)
	call	mbedtls_mpi_core_add
	sw	a0,-32(s0)
	.loc 2 1045 7
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1049 11
	j	.L258
.L261:
	.loc 2 1050 19
	lw	a5,-52(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 2 1050 12
	lw	a5,-24(s0)
	bltu	a5,a4,.L259
	.loc 2 1051 30
	lw	a5,-24(s0)
	addi	a5,a5,1
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 1051 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L265
	.loc 2 1052 18
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 1052 22
	lw	a5,-24(s0)
	slli	a5,a5,2
	.loc 2 1052 15
	add	a5,a4,a5
	sw	a5,-28(s0)
.L259:
	.loc 2 1055 9
	lw	a5,-28(s0)
	lw	a4,0(a5)
	.loc 2 1055 12
	lw	a5,-32(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	sw	a4,0(a5)
	.loc 2 1055 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 2 1055 26
	lw	a4,-32(s0)
	sgtu	a5,a4,a5
	andi	a5,a5,0xff
	.loc 2 1055 20
	sw	a5,-32(s0)
	.loc 2 1055 33
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 2 1055 38
	lw	a5,-28(s0)
	addi	a5,a5,4
	sw	a5,-28(s0)
.L258:
	.loc 2 1049 14
	lw	a5,-32(s0)
	bne	a5,zero,.L261
	.loc 2 1058 1
	j	.L250
.L262:
	.loc 2 1017 57
	nop
	j	.L250
.L264:
	.loc 2 1037 53
	nop
	j	.L250
.L265:
	.loc 2 1051 65
	nop
.L250:
	.loc 2 1060 12
	lw	a5,-20(s0)
.L256:
	.loc 2 1061 1
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
.LFE71:
	.size	mbedtls_mpi_add_abs, .-mbedtls_mpi_add_abs
	.section	.text.mbedtls_mpi_sub_abs,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_sub_abs
	.type	mbedtls_mpi_sub_abs, @function
mbedtls_mpi_sub_abs:
.LFB72:
	.loc 2 1067 1
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
	.loc 2 1068 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1072 15
	lw	a5,-44(s0)
	lhu	a5,6(a5)
	.loc 2 1072 12
	sw	a5,-24(s0)
	.loc 2 1072 5
	j	.L267
.L270:
	.loc 2 1073 14
	lw	a5,-44(s0)
	lw	a4,0(a5)
	.loc 2 1073 17
	lw	a3,-24(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1073 12
	bne	a5,zero,.L278
	.loc 2 1072 28 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L267:
	.loc 2 1072 22 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L270
	j	.L269
.L278:
	.loc 2 1074 13
	nop
.L269:
	.loc 2 1077 14
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 2 1077 8
	lw	a5,-24(s0)
	bleu	a5,a4,.L271
	.loc 2 1079 13
	li	a5,-10
	sw	a5,-20(s0)
	.loc 2 1080 9
	j	.L272
.L271:
	.loc 2 1083 43
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	.loc 2 1083 22
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 1083 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L279
	.loc 2 1088 10
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 2 1088 8
	lw	a5,-24(s0)
	bgeu	a5,a4,.L274
	.loc 2 1088 18 discriminator 1
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	beq	a4,a5,.L274
	.loc 2 1089 17
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 1089 21
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a3,a4,a5
	.loc 2 1089 27
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 1089 31
	lw	a5,-24(s0)
	slli	a5,a5,2
	.loc 2 1089 9
	add	a4,a4,a5
	.loc 2 1089 38
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	mv	a2,a5
	.loc 2 1089 42
	lw	a5,-24(s0)
	sub	a5,a2,a5
	.loc 2 1089 9
	slli	a5,a5,2
	mv	a2,a5
	mv	a1,a4
	mv	a0,a3
	call	memcpy
.L274:
	.loc 2 1091 10
	lw	a5,-36(s0)
	lhu	a4,6(a5)
	.loc 2 1091 17
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	.loc 2 1091 8
	bleu	a4,a5,.L275
	.loc 2 1092 17
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 1092 24
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	.loc 2 1092 21
	slli	a5,a5,2
	add	a4,a4,a5
	.loc 2 1092 34
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	mv	a3,a5
	.loc 2 1092 41
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	.loc 2 1092 38
	sub	a5,a3,a5
	.loc 2 1092 46
	slli	a5,a5,2
	.loc 2 1092 9
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	memset
.L275:
	.loc 2 1095 13
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 1095 41
	lw	a5,-40(s0)
	lw	a1,0(a5)
	.loc 2 1095 47
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 2 1095 13
	lw	a3,-24(s0)
	mv	a2,a5
	mv	a0,a4
	call	mbedtls_mpi_core_sub
	sw	a0,-28(s0)
	.loc 2 1096 8
	lw	a5,-28(s0)
	beq	a5,zero,.L276
	.loc 2 1098 43
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 1098 47
	lw	a5,-24(s0)
	slli	a5,a5,2
	.loc 2 1098 17
	add	a0,a4,a5
	.loc 2 1098 53
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 1098 57
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a4,a4,a5
	.loc 2 1098 70
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	mv	a3,a5
	.loc 2 1098 17
	lw	a5,-24(s0)
	sub	a5,a3,a5
	mv	a3,a5
	lw	a2,-28(s0)
	mv	a1,a4
	call	mbedtls_mpi_core_sub_int
	sw	a0,-28(s0)
	.loc 2 1101 12
	lw	a5,-28(s0)
	beq	a5,zero,.L276
	.loc 2 1102 17
	li	a5,-10
	sw	a5,-20(s0)
	.loc 2 1103 13
	j	.L272
.L276:
	.loc 2 1108 10
	lw	a5,-36(s0)
	li	a4,1
	sh	a4,4(a5)
	j	.L272
.L279:
	.loc 2 1083 56
	nop
.L272:
	.loc 2 1111 12
	lw	a5,-20(s0)
	.loc 2 1112 1
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
.LFE72:
	.size	mbedtls_mpi_sub_abs, .-mbedtls_mpi_sub_abs
	.section	.text.add_sub_mpi,"ax",@progbits
	.align	1
	.type	add_sub_mpi, @function
add_sub_mpi:
.LFB73:
	.loc 2 1120 1
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
	.loc 2 1123 10
	lw	a5,-40(s0)
	lh	a5,4(a5)
	.loc 2 1123 7
	sw	a5,-24(s0)
	.loc 2 1124 10
	lw	a5,-40(s0)
	lh	a5,4(a5)
	mv	a4,a5
	.loc 2 1124 17
	lw	a5,-44(s0)
	lh	a5,4(a5)
	.loc 2 1124 14
	mul	a4,a4,a5
	.loc 2 1124 21
	lw	a5,-48(s0)
	mul	a5,a4,a5
	.loc 2 1124 8
	bge	a5,zero,.L281
.LBB6:
	.loc 2 1125 19
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	mbedtls_mpi_cmp_abs
	sw	a0,-28(s0)
	.loc 2 1126 12
	lw	a5,-28(s0)
	blt	a5,zero,.L282
	.loc 2 1127 30
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_abs
	sw	a0,-20(s0)
	.loc 2 1127 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L290
	.loc 2 1131 18
	lw	a5,-28(s0)
	beq	a5,zero,.L285
	.loc 2 1131 18 is_stmt 0 discriminator 1
	lw	a5,-24(s0)
	slli	a5,a5,16
	srai	a5,a5,16
	j	.L286
.L285:
	.loc 2 1131 18 discriminator 2
	li	a5,1
.L286:
	.loc 2 1131 18 discriminator 4
	lw	a4,-36(s0)
	sh	a5,4(a4)
	j	.L284
.L282:
	.loc 2 1133 30 is_stmt 1
	lw	a2,-40(s0)
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_abs
	sw	a0,-20(s0)
	.loc 2 1133 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L291
	.loc 2 1135 18
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	neg	a5,a5
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	lw	a5,-36(s0)
	sh	a4,4(a5)
	j	.L284
.L281:
.LBE6:
	.loc 2 1138 26
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_add_abs
	sw	a0,-20(s0)
	.loc 2 1138 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L292
	.loc 2 1139 14
	lw	a5,-24(s0)
	slli	a4,a5,16
	srai	a4,a4,16
	lw	a5,-36(s0)
	sh	a4,4(a5)
	j	.L284
.L290:
.LBB7:
	.loc 2 1127 67
	nop
	j	.L284
.L291:
	.loc 2 1133 67
	nop
	j	.L284
.L292:
.LBE7:
	.loc 2 1138 63
	nop
.L284:
	.loc 2 1144 12
	lw	a5,-20(s0)
	.loc 2 1145 1
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
.LFE73:
	.size	add_sub_mpi, .-add_sub_mpi
	.section	.text.mbedtls_mpi_add_mpi,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_add_mpi
	.type	mbedtls_mpi_add_mpi, @function
mbedtls_mpi_add_mpi:
.LFB74:
	.loc 2 1151 1
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
	.loc 2 1152 12
	li	a3,1
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	add_sub_mpi
	mv	a5,a0
	.loc 2 1153 1
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
.LFE74:
	.size	mbedtls_mpi_add_mpi, .-mbedtls_mpi_add_mpi
	.section	.text.mbedtls_mpi_sub_mpi,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_sub_mpi
	.type	mbedtls_mpi_sub_mpi, @function
mbedtls_mpi_sub_mpi:
.LFB75:
	.loc 2 1159 1
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
	.loc 2 1160 12
	li	a3,-1
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	add_sub_mpi
	mv	a5,a0
	.loc 2 1161 1
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
.LFE75:
	.size	mbedtls_mpi_sub_mpi, .-mbedtls_mpi_sub_mpi
	.section	.text.mbedtls_mpi_add_int,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_add_int
	.type	mbedtls_mpi_add_int, @function
mbedtls_mpi_add_int:
.LFB76:
	.loc 2 1167 1
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
	.loc 2 1171 12
	lw	a0,-44(s0)
	call	mpi_sint_abs
	mv	a5,a0
	.loc 2 1171 10 discriminator 1
	sw	a5,-28(s0)
	.loc 2 1172 33
	lw	a5,-44(s0)
	.loc 2 1172 55
	srli	a5,a5,31
	.loc 2 1172 104
	slli	a5,a5,16
	srli	a5,a5,16
	li	a4,0
	sub	a5,a4,a5
	slli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 2 1172 9
	sh	a5,-20(s0)
	.loc 2 1173 9
	li	a5,1
	sh	a5,-18(s0)
	.loc 2 1174 9
	addi	a5,s0,-28
	sw	a5,-24(s0)
	.loc 2 1176 12
	addi	a5,s0,-24
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_add_mpi
	mv	a5,a0
	.loc 2 1177 1
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
	.size	mbedtls_mpi_add_int, .-mbedtls_mpi_add_int
	.section	.text.mbedtls_mpi_sub_int,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_sub_int
	.type	mbedtls_mpi_sub_int, @function
mbedtls_mpi_sub_int:
.LFB77:
	.loc 2 1183 1
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
	.loc 2 1187 12
	lw	a0,-44(s0)
	call	mpi_sint_abs
	mv	a5,a0
	.loc 2 1187 10 discriminator 1
	sw	a5,-28(s0)
	.loc 2 1188 33
	lw	a5,-44(s0)
	.loc 2 1188 55
	srli	a5,a5,31
	.loc 2 1188 104
	slli	a5,a5,16
	srli	a5,a5,16
	li	a4,0
	sub	a5,a4,a5
	slli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 2 1188 9
	sh	a5,-20(s0)
	.loc 2 1189 9
	li	a5,1
	sh	a5,-18(s0)
	.loc 2 1190 9
	addi	a5,s0,-28
	sw	a5,-24(s0)
	.loc 2 1192 12
	addi	a5,s0,-24
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_mpi
	mv	a5,a0
	.loc 2 1193 1
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
	.size	mbedtls_mpi_sub_int, .-mbedtls_mpi_sub_int
	.section	.text.mbedtls_mpi_mul_mpi,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_mul_mpi
	.type	mbedtls_mpi_mul_mpi, @function
mbedtls_mpi_mul_mpi:
.LFB78:
	.loc 2 1199 1
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
	.loc 2 1200 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1203 9
	sw	zero,-32(s0)
	.loc 2 1205 5
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 1206 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 1208 8
	lw	a4,-52(s0)
	lw	a5,-56(s0)
	bne	a4,a5,.L302
	.loc 2 1209 26
	addi	a5,s0,-40
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1209 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L321
	.loc 2 1209 88 discriminator 3
	addi	a5,s0,-40
	sw	a5,-56(s0)
.L302:
	.loc 2 1211 8
	lw	a4,-52(s0)
	lw	a5,-60(s0)
	bne	a4,a5,.L305
	.loc 2 1212 26
	addi	a5,s0,-48
	lw	a1,-60(s0)
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1212 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L322
	.loc 2 1212 88 discriminator 3
	addi	a5,s0,-48
	sw	a5,-60(s0)
.L305:
	.loc 2 1215 15
	lw	a5,-56(s0)
	lhu	a5,6(a5)
	.loc 2 1215 12
	sw	a5,-24(s0)
	.loc 2 1215 5
	j	.L307
.L310:
	.loc 2 1216 14
	lw	a5,-56(s0)
	lw	a4,0(a5)
	.loc 2 1216 17
	lw	a3,-24(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1216 12
	bne	a5,zero,.L323
	.loc 2 1215 28 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L307:
	.loc 2 1215 22 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L310
	j	.L309
.L323:
	.loc 2 1217 13
	nop
.L309:
	.loc 2 1220 8
	lw	a5,-24(s0)
	bne	a5,zero,.L311
	.loc 2 1221 24
	li	a5,1
	sw	a5,-32(s0)
.L311:
	.loc 2 1224 15
	lw	a5,-60(s0)
	lhu	a5,6(a5)
	.loc 2 1224 12
	sw	a5,-28(s0)
	.loc 2 1224 5
	j	.L312
.L315:
	.loc 2 1225 14
	lw	a5,-60(s0)
	lw	a4,0(a5)
	.loc 2 1225 17
	lw	a3,-28(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1225 12
	bne	a5,zero,.L324
	.loc 2 1224 28 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
.L312:
	.loc 2 1224 22 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L315
	j	.L314
.L324:
	.loc 2 1226 13
	nop
.L314:
	.loc 2 1229 8
	lw	a5,-28(s0)
	bne	a5,zero,.L316
	.loc 2 1230 24
	li	a5,1
	sw	a5,-32(s0)
.L316:
	.loc 2 1233 22
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 1233 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L325
	.loc 2 1234 22
	li	a1,0
	lw	a0,-52(s0)
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 1234 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L326
	.loc 2 1236 5
	lw	a5,-52(s0)
	lw	a0,0(a5)
	.loc 2 1236 33
	lw	a5,-56(s0)
	lw	a1,0(a5)
	.loc 2 1236 42
	lw	a5,-60(s0)
	lw	a5,0(a5)
	.loc 2 1236 5
	lw	a4,-28(s0)
	mv	a3,a5
	lw	a2,-24(s0)
	call	mbedtls_mpi_core_mul
	.loc 2 1242 8
	lw	a5,-32(s0)
	beq	a5,zero,.L319
	.loc 2 1243 14
	lw	a5,-52(s0)
	li	a4,1
	sh	a4,4(a5)
	j	.L304
.L319:
	.loc 2 1245 17
	lw	a5,-56(s0)
	lh	a5,4(a5)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 2 1245 24
	lw	a5,-60(s0)
	lh	a5,4(a5)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 2 1245 21
	mul	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 2 1245 14
	lw	a5,-52(s0)
	sh	a4,4(a5)
	j	.L304
.L321:
	.loc 2 1209 59
	nop
	j	.L304
.L322:
	.loc 2 1212 59
	nop
	j	.L304
.L325:
	.loc 2 1233 57
	nop
	j	.L304
.L326:
	.loc 2 1234 53
	nop
.L304:
	.loc 2 1250 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1250 28 discriminator 1
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1252 12
	lw	a5,-20(s0)
	.loc 2 1253 1
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
	.size	mbedtls_mpi_mul_mpi, .-mbedtls_mpi_mul_mpi
	.section	.text.mbedtls_mpi_mul_int,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_mul_int
	.type	mbedtls_mpi_mul_int, @function
mbedtls_mpi_mul_int:
.LFB79:
	.loc 2 1259 1
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
	.loc 2 1260 17
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	.loc 2 1260 12
	sw	a5,-20(s0)
	.loc 2 1261 11
	j	.L328
.L330:
	.loc 2 1262 9
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L328:
	.loc 2 1261 18
	lw	a5,-20(s0)
	beq	a5,zero,.L329
	.loc 2 1261 22 discriminator 1
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 1261 25 discriminator 1
	lw	a3,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1261 18 discriminator 1
	beq	a5,zero,.L330
.L329:
	.loc 2 1266 8
	lw	a5,-44(s0)
	beq	a5,zero,.L331
	.loc 2 1266 16 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L332
.L331:
	.loc 2 1267 16
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_mpi_lset
	mv	a5,a0
	j	.L333
.L332:
	.loc 2 1271 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 2 1283 22
	lw	a5,-20(s0)
	addi	a5,a5,1
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_grow
	sw	a0,-24(s0)
	.loc 2 1283 13 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L337
	.loc 2 1284 22
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_copy
	sw	a0,-24(s0)
	.loc 2 1284 13 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L338
	.loc 2 1285 5
	lw	a5,-36(s0)
	lw	a0,0(a5)
	.loc 2 1285 33
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 1285 5
	mv	a1,a5
	.loc 2 1285 39
	lw	a5,-40(s0)
	lw	a2,0(a5)
	.loc 2 1285 49
	lw	a5,-44(s0)
	addi	a5,a5,-1
	.loc 2 1285 5
	mv	a4,a5
	lw	a3,-20(s0)
	call	mbedtls_mpi_core_mla
	j	.L335
.L337:
	.loc 2 1283 57
	nop
	j	.L335
.L338:
	.loc 2 1284 53
	nop
.L335:
	.loc 2 1288 12
	lw	a5,-24(s0)
.L333:
	.loc 2 1289 1
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
.LFE79:
	.size	mbedtls_mpi_mul_int, .-mbedtls_mpi_mul_int
	.section	.text.mbedtls_int_div_int,"ax",@progbits
	.align	1
	.type	mbedtls_int_div_int, @function
mbedtls_int_div_int:
.LFB80:
	.loc 2 1299 1
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
	sw	a3,-80(s0)
	.loc 2 1303 28
	li	a5,65536
	sw	a5,-32(s0)
	.loc 2 1304 28
	li	a5,65536
	addi	a5,a5,-1
	sw	a5,-36(s0)
	.loc 2 1313 8
	lw	a5,-76(s0)
	beq	a5,zero,.L340
	.loc 2 1313 16 discriminator 1
	lw	a4,-68(s0)
	lw	a5,-76(s0)
	bltu	a4,a5,.L341
.L340:
	.loc 2 1314 12
	lw	a5,-80(s0)
	beq	a5,zero,.L342
	.loc 2 1315 16
	lw	a5,-80(s0)
	li	a4,-1
	sw	a4,0(a5)
.L342:
	.loc 2 1318 16
	li	a5,-1
	j	.L343
.L341:
	.loc 2 1344 9
	lw	a0,-76(s0)
	call	mbedtls_mpi_core_clz
	sw	a0,-40(s0)
	.loc 2 1345 7
	lw	a5,-40(s0)
	lw	a4,-76(s0)
	sll	a5,a4,a5
	sw	a5,-76(s0)
	.loc 2 1347 8
	lw	a5,-40(s0)
	lw	a4,-68(s0)
	sll	a5,a4,a5
	sw	a5,-68(s0)
	.loc 2 1348 53
	li	a4,32
	lw	a5,-40(s0)
	sub	a5,a4,a5
	.loc 2 1348 15
	lw	a4,-72(s0)
	srl	a5,a4,a5
	.loc 2 1348 63
	lw	a4,-40(s0)
	.loc 2 1348 62
	neg	a4,a4
	.loc 2 1348 84
	srai	a4,a4,31
	.loc 2 1348 59
	and	a5,a5,a4
	.loc 2 1348 8
	lw	a4,-68(s0)
	or	a5,a4,a5
	sw	a5,-68(s0)
	.loc 2 1349 8
	lw	a5,-40(s0)
	lw	a4,-72(s0)
	sll	a5,a4,a5
	sw	a5,-72(s0)
	.loc 2 1351 8
	lw	a5,-76(s0)
	srli	a5,a5,16
	sw	a5,-44(s0)
	.loc 2 1352 8
	lw	a4,-76(s0)
	lw	a5,-36(s0)
	and	a5,a4,a5
	sw	a5,-48(s0)
	.loc 2 1354 12
	lw	a5,-72(s0)
	srli	a5,a5,16
	sw	a5,-52(s0)
	.loc 2 1355 12
	lw	a4,-72(s0)
	lw	a5,-36(s0)
	and	a5,a4,a5
	sw	a5,-56(s0)
	.loc 2 1360 8
	lw	a4,-68(s0)
	lw	a5,-44(s0)
	divu	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1361 18
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	mul	a5,a4,a5
	.loc 2 1361 8
	lw	a4,-68(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1363 11
	j	.L344
.L346:
	.loc 2 1364 12
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 2 1365 12
	lw	a4,-28(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1367 12
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	bgeu	a4,a5,.L351
.L344:
	.loc 2 1363 24
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	bgeu	a4,a5,.L346
	.loc 2 1363 31 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-48(s0)
	mul	a4,a4,a5
	.loc 2 1363 44 discriminator 1
	lw	a3,-32(s0)
	lw	a5,-28(s0)
	mul	a3,a3,a5
	.loc 2 1363 49 discriminator 1
	lw	a5,-52(s0)
	add	a5,a3,a5
	.loc 2 1363 24 discriminator 1
	bgtu	a4,a5,.L346
	j	.L345
.L351:
	.loc 2 1368 13
	nop
.L345:
	.loc 2 1372 15
	lw	a4,-68(s0)
	lw	a5,-32(s0)
	mul	a4,a4,a5
	.loc 2 1372 39
	lw	a3,-24(s0)
	lw	a5,-76(s0)
	mul	a5,a3,a5
	.loc 2 1372 24
	sub	a5,a4,a5
	.loc 2 1372 9
	lw	a4,-52(s0)
	add	a5,a4,a5
	sw	a5,-60(s0)
	.loc 2 1373 8
	lw	a4,-60(s0)
	lw	a5,-44(s0)
	divu	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 1374 19
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	mul	a5,a4,a5
	.loc 2 1374 8
	lw	a4,-60(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1376 11
	j	.L347
.L349:
	.loc 2 1377 12
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 2 1378 12
	lw	a4,-28(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1380 12
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	bgeu	a4,a5,.L352
.L347:
	.loc 2 1376 24
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	bgeu	a4,a5,.L349
	.loc 2 1376 31 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	mul	a4,a4,a5
	.loc 2 1376 44 discriminator 1
	lw	a3,-32(s0)
	lw	a5,-28(s0)
	mul	a3,a3,a5
	.loc 2 1376 49 discriminator 1
	lw	a5,-56(s0)
	add	a5,a3,a5
	.loc 2 1376 24 discriminator 1
	bgtu	a4,a5,.L349
	j	.L348
.L352:
	.loc 2 1381 13
	nop
.L348:
	.loc 2 1385 8
	lw	a5,-80(s0)
	beq	a5,zero,.L350
	.loc 2 1386 19
	lw	a4,-60(s0)
	lw	a5,-32(s0)
	mul	a4,a4,a5
	.loc 2 1386 27
	lw	a5,-56(s0)
	add	a4,a4,a5
	.loc 2 1386 41
	lw	a3,-20(s0)
	lw	a5,-76(s0)
	mul	a5,a3,a5
	.loc 2 1386 36
	sub	a4,a4,a5
	.loc 2 1386 46
	lw	a5,-40(s0)
	srl	a4,a4,a5
	.loc 2 1386 12
	lw	a5,-80(s0)
	sw	a4,0(a5)
.L350:
	.loc 2 1389 19
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	mul	a5,a4,a5
	.loc 2 1389 14
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-64(s0)
	.loc 2 1391 12
	lw	a5,-64(s0)
.L343:
	.loc 2 1393 1
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
.LFE80:
	.size	mbedtls_int_div_int, .-mbedtls_int_div_int
	.section	.text.mbedtls_mpi_div_mpi,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_div_mpi
	.type	mbedtls_mpi_div_mpi, @function
mbedtls_mpi_div_mpi:
.LFB81:
	.loc 2 1400 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	sw	a2,-108(s0)
	sw	a3,-112(s0)
	.loc 2 1401 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1406 9
	li	a1,0
	lw	a0,-112(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1406 8 discriminator 1
	bne	a5,zero,.L354
	.loc 2 1407 16
	li	a5,-12
	j	.L396
.L354:
	.loc 2 1410 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 1410 27 discriminator 1
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 1410 49 discriminator 2
	addi	a5,s0,-60
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 1411 5
	addi	a5,s0,-68
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 1419 10
	li	a5,1
	sh	a5,-72(s0)
	.loc 2 1420 10
	li	a5,3
	sh	a5,-70(s0)
	.loc 2 1421 10
	addi	a5,s0,-88
	sw	a5,-76(s0)
	.loc 2 1423 9
	lw	a1,-112(s0)
	lw	a0,-108(s0)
	call	mbedtls_mpi_cmp_abs
	mv	a5,a0
	.loc 2 1423 8 discriminator 1
	bge	a5,zero,.L356
	.loc 2 1424 12
	lw	a5,-100(s0)
	beq	a5,zero,.L357
	.loc 2 1425 30
	li	a1,0
	lw	a0,-100(s0)
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 1425 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L397
.L357:
	.loc 2 1427 12
	lw	a5,-104(s0)
	beq	a5,zero,.L359
	.loc 2 1428 30
	lw	a1,-108(s0)
	lw	a0,-104(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1428 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L398
.L359:
	.loc 2 1430 16
	li	a5,0
	j	.L396
.L356:
	.loc 2 1433 22
	addi	a5,s0,-44
	lw	a1,-108(s0)
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1433 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L399
	.loc 2 1434 22
	addi	a5,s0,-52
	lw	a1,-112(s0)
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1434 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L400
	.loc 2 1435 15
	li	a5,1
	sh	a5,-48(s0)
	.loc 2 1435 12
	lh	a5,-48(s0)
	.loc 2 1435 9
	sh	a5,-40(s0)
	.loc 2 1437 44
	lw	a5,-108(s0)
	lhu	a5,6(a5)
	.loc 2 1437 48
	addi	a5,a5,2
	.loc 2 1437 22
	mv	a4,a5
	addi	a5,s0,-60
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 1437 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L401
	.loc 2 1438 22
	addi	a5,s0,-60
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 1438 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L402
	.loc 2 1439 45
	lw	a5,-108(s0)
	lhu	a5,6(a5)
	.loc 2 1439 49
	addi	a5,a5,2
	.loc 2 1439 22
	mv	a4,a5
	addi	a5,s0,-68
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 1439 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L403
	.loc 2 1441 9
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	mv	a5,a0
	.loc 2 1441 7 discriminator 1
	andi	a5,a5,31
	sw	a5,-28(s0)
	.loc 2 1442 8
	lw	a4,-28(s0)
	li	a5,30
	bgtu	a4,a5,.L365
	.loc 2 1443 11
	li	a4,31
	lw	a5,-28(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 1444 26
	addi	a5,s0,-44
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_mpi_shift_l
	sw	a0,-20(s0)
	.loc 2 1444 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L404
	.loc 2 1445 26
	addi	a5,s0,-52
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_mpi_shift_l
	sw	a0,-20(s0)
	.loc 2 1445 17 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L367
	.loc 2 1445 61
	j	.L358
.L365:
	.loc 2 1447 11
	sw	zero,-28(s0)
.L367:
	.loc 2 1450 10
	lhu	a5,-38(s0)
	.loc 2 1450 13
	addi	a5,a5,-1
	.loc 2 1450 7
	sw	a5,-32(s0)
	.loc 2 1451 10
	lhu	a5,-46(s0)
	.loc 2 1451 13
	addi	a5,a5,-1
	.loc 2 1451 7
	sw	a5,-36(s0)
	.loc 2 1452 85
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	.loc 2 1452 80
	slli	a4,a5,5
	.loc 2 1452 22
	addi	a5,s0,-52
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_shift_l
	sw	a0,-20(s0)
	.loc 2 1452 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L405
	.loc 2 1454 11
	j	.L369
.L370:
	.loc 2 1455 10
	lw	a4,-60(s0)
	.loc 2 1455 15
	lw	a3,-32(s0)
	lw	a5,-36(s0)
	sub	a5,a3,a5
	.loc 2 1455 12
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 1455 19
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 2 1456 26
	addi	a3,s0,-52
	addi	a4,s0,-44
	addi	a5,s0,-44
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_mpi
	sw	a0,-20(s0)
	.loc 2 1456 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L406
.L369:
	.loc 2 1454 12
	addi	a4,s0,-52
	addi	a5,s0,-44
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 1454 40 discriminator 1
	bge	a5,zero,.L370
	.loc 2 1458 85
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	.loc 2 1458 80
	slli	a4,a5,5
	.loc 2 1458 22
	addi	a5,s0,-52
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_shift_r
	sw	a0,-20(s0)
	.loc 2 1458 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L407
	.loc 2 1460 12
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	.loc 2 1460 5
	j	.L372
.L391:
	.loc 2 1461 14
	lw	a4,-44(s0)
	.loc 2 1461 16
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 1461 24
	lw	a3,-52(s0)
	.loc 2 1461 26
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 2 1461 12
	bltu	a4,a5,.L373
	.loc 2 1462 14
	lw	a4,-60(s0)
	.loc 2 1462 19
	lw	a3,-24(s0)
	lw	a5,-36(s0)
	sub	a3,a3,a5
	.loc 2 1462 16
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 2 1462 28
	li	a4,-1
	sw	a4,0(a5)
	j	.L374
.L373:
	.loc 2 1464 51
	lw	a4,-44(s0)
	.loc 2 1464 53
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 2 1464 30
	lw	a0,0(a5)
	.loc 2 1464 59
	lw	a4,-44(s0)
	.loc 2 1464 61
	lw	a3,-24(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 2 1464 30
	lw	a1,0(a5)
	.loc 2 1465 51
	lw	a4,-52(s0)
	.loc 2 1465 53
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 2 1464 30
	lw	a2,0(a5)
	.loc 2 1464 14
	lw	a4,-60(s0)
	.loc 2 1464 19
	lw	a3,-24(s0)
	lw	a5,-36(s0)
	sub	a3,a3,a5
	.loc 2 1464 16
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	s1,a4,a5
	.loc 2 1464 30
	li	a3,0
	call	mbedtls_int_div_int
	mv	a5,a0
	.loc 2 1464 28 discriminator 1
	sw	a5,0(s1)
.L374:
	.loc 2 1468 31
	lw	a4,-24(s0)
	li	a5,1
	bleu	a4,a5,.L375
	.loc 2 1468 34 discriminator 1
	lw	a4,-44(s0)
	.loc 2 1468 36 discriminator 1
	lw	a3,-24(s0)
	li	a5,1073741824
	addi	a5,a5,-2
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 2 1468 31 discriminator 1
	lw	a5,0(a5)
	j	.L376
.L375:
	.loc 2 1468 31 is_stmt 0 discriminator 2
	li	a5,0
.L376:
	.loc 2 1468 11 is_stmt 1 discriminator 4
	lw	a4,-76(s0)
	.loc 2 1468 17 discriminator 4
	sw	a5,0(a4)
	.loc 2 1469 31
	lw	a5,-24(s0)
	beq	a5,zero,.L377
	.loc 2 1469 34 discriminator 1
	lw	a4,-44(s0)
	.loc 2 1469 36 discriminator 1
	lw	a3,-24(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 2 1469 31 discriminator 1
	lw	a5,0(a5)
	j	.L378
.L377:
	.loc 2 1469 31 is_stmt 0 discriminator 2
	li	a5,0
.L378:
	.loc 2 1469 11 is_stmt 1 discriminator 4
	lw	a4,-76(s0)
	.loc 2 1469 13 discriminator 4
	addi	a4,a4,4
	.loc 2 1469 17 discriminator 4
	sw	a5,0(a4)
	.loc 2 1470 20
	lw	a4,-44(s0)
	.loc 2 1470 22
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a4,a4,a5
	.loc 2 1470 11
	lw	a5,-76(s0)
	.loc 2 1470 13
	addi	a5,a5,8
	.loc 2 1470 22
	lw	a4,0(a4)
	.loc 2 1470 17
	sw	a4,0(a5)
	.loc 2 1472 10
	lw	a4,-60(s0)
	.loc 2 1472 15
	lw	a3,-24(s0)
	lw	a5,-36(s0)
	sub	a3,a3,a5
	.loc 2 1472 12
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 1472 23
	addi	a4,a4,1
	sw	a4,0(a5)
.L383:
	.loc 2 1474 14
	lw	a4,-60(s0)
	.loc 2 1474 19
	lw	a3,-24(s0)
	lw	a5,-36(s0)
	sub	a3,a3,a5
	.loc 2 1474 16
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 1474 27
	addi	a4,a4,-1
	sw	a4,0(a5)
	.loc 2 1476 30
	addi	a5,s0,-68
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 1476 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L408
	.loc 2 1477 35
	lw	a5,-36(s0)
	beq	a5,zero,.L380
	.loc 2 1477 38 discriminator 1
	lw	a4,-52(s0)
	.loc 2 1477 40 discriminator 1
	lw	a3,-36(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 2 1477 35 discriminator 1
	lw	a5,0(a5)
	j	.L381
.L380:
	.loc 2 1477 35 is_stmt 0 discriminator 2
	li	a5,0
.L381:
	.loc 2 1477 15 is_stmt 1 discriminator 4
	lw	a4,-68(s0)
	.loc 2 1477 21 discriminator 4
	sw	a5,0(a4)
	.loc 2 1478 24
	lw	a4,-52(s0)
	.loc 2 1478 26
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a4,a4,a5
	.loc 2 1478 15
	lw	a5,-68(s0)
	.loc 2 1478 17
	addi	a5,a5,4
	.loc 2 1478 26
	lw	a4,0(a4)
	.loc 2 1478 21
	sw	a4,0(a5)
	.loc 2 1479 61
	lw	a4,-60(s0)
	.loc 2 1479 66
	lw	a3,-24(s0)
	lw	a5,-36(s0)
	sub	a3,a3,a5
	.loc 2 1479 63
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 2 1479 30
	lw	a3,0(a5)
	addi	a4,s0,-68
	addi	a5,s0,-68
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mul_int
	sw	a0,-20(s0)
	.loc 2 1479 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L409
	.loc 2 1480 18
	addi	a4,s0,-76
	addi	a5,s0,-68
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 1480 48 discriminator 1
	bgt	a5,zero,.L383
	.loc 2 1482 56
	lw	a4,-60(s0)
	.loc 2 1482 61
	lw	a3,-24(s0)
	lw	a5,-36(s0)
	sub	a3,a3,a5
	.loc 2 1482 58
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 2 1482 26
	lw	a3,0(a5)
	addi	a4,s0,-52
	addi	a5,s0,-68
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mul_int
	sw	a0,-20(s0)
	.loc 2 1482 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L410
	.loc 2 1483 90
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	.loc 2 1483 94
	addi	a5,a5,-1
	.loc 2 1483 85
	slli	a4,a5,5
	.loc 2 1483 26
	addi	a5,s0,-68
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_shift_l
	sw	a0,-20(s0)
	.loc 2 1483 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L411
	.loc 2 1484 26
	addi	a3,s0,-68
	addi	a4,s0,-44
	addi	a5,s0,-44
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_mpi
	sw	a0,-20(s0)
	.loc 2 1484 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L412
	.loc 2 1486 13
	addi	a5,s0,-44
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1486 12 discriminator 1
	bge	a5,zero,.L387
	.loc 2 1487 30
	addi	a4,s0,-52
	addi	a5,s0,-68
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1487 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L413
	.loc 2 1488 94
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	.loc 2 1488 98
	addi	a5,a5,-1
	.loc 2 1488 89
	slli	a4,a5,5
	.loc 2 1488 30
	addi	a5,s0,-68
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_shift_l
	sw	a0,-20(s0)
	.loc 2 1488 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L414
	.loc 2 1489 30
	addi	a3,s0,-68
	addi	a4,s0,-44
	addi	a5,s0,-44
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_add_mpi
	sw	a0,-20(s0)
	.loc 2 1489 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L415
	.loc 2 1490 14
	lw	a4,-60(s0)
	.loc 2 1490 19
	lw	a3,-24(s0)
	lw	a5,-36(s0)
	sub	a3,a3,a5
	.loc 2 1490 16
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 1490 27
	addi	a4,a4,-1
	sw	a4,0(a5)
.L387:
	.loc 2 1460 25 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L372:
	.loc 2 1460 19 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	bgtu	a4,a5,.L391
	.loc 2 1494 8
	lw	a5,-100(s0)
	beq	a5,zero,.L392
	.loc 2 1495 26
	addi	a5,s0,-60
	mv	a1,a5
	lw	a0,-100(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1495 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L416
	.loc 2 1496 17
	lw	a5,-108(s0)
	lh	a5,4(a5)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 2 1496 24
	lw	a5,-112(s0)
	lh	a5,4(a5)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 2 1496 21
	mul	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 2 1496 14
	lw	a5,-100(s0)
	sh	a4,4(a5)
.L392:
	.loc 2 1499 8
	lw	a5,-104(s0)
	beq	a5,zero,.L417
	.loc 2 1500 26
	addi	a5,s0,-44
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_mpi_shift_r
	sw	a0,-20(s0)
	.loc 2 1500 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L418
	.loc 2 1501 16
	lw	a5,-108(s0)
	lh	a5,4(a5)
	.loc 2 1501 13
	sh	a5,-40(s0)
	.loc 2 1502 26
	addi	a5,s0,-44
	mv	a1,a5
	lw	a0,-104(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1502 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L419
	.loc 2 1504 13
	li	a1,0
	lw	a0,-104(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1504 12 discriminator 1
	bne	a5,zero,.L417
	.loc 2 1505 18
	lw	a5,-104(s0)
	li	a4,1
	sh	a4,4(a5)
	j	.L358
.L397:
	.loc 2 1425 61
	nop
	j	.L358
.L398:
	.loc 2 1428 61
	nop
	j	.L358
.L399:
	.loc 2 1433 54
	nop
	j	.L358
.L400:
	.loc 2 1434 54
	nop
	j	.L358
.L401:
	.loc 2 1437 61
	nop
	j	.L358
.L402:
	.loc 2 1438 54
	nop
	j	.L358
.L403:
	.loc 2 1439 62
	nop
	j	.L358
.L404:
	.loc 2 1444 61
	nop
	j	.L358
.L405:
	.loc 2 1452 99
	nop
	j	.L358
.L406:
	.loc 2 1456 66
	nop
	j	.L358
.L407:
	.loc 2 1458 99
	nop
	j	.L358
.L408:
	.loc 2 1476 63
	nop
	j	.L358
.L409:
	.loc 2 1479 84
	nop
	j	.L358
.L410:
	.loc 2 1482 79
	nop
	j	.L358
.L411:
	.loc 2 1483 108
	nop
	j	.L358
.L412:
	.loc 2 1484 67
	nop
	j	.L358
.L413:
	.loc 2 1487 64
	nop
	j	.L358
.L414:
	.loc 2 1488 112
	nop
	j	.L358
.L415:
	.loc 2 1489 71
	nop
	j	.L358
.L416:
	.loc 2 1495 58
	nop
	j	.L358
.L417:
	.loc 2 1509 1
	nop
	j	.L358
.L418:
	.loc 2 1500 61
	nop
	j	.L358
.L419:
	.loc 2 1502 58
	nop
.L358:
	.loc 2 1511 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1511 27 discriminator 1
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1511 49 discriminator 2
	addi	a5,s0,-60
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1512 5
	addi	a5,s0,-68
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1513 5
	addi	a5,s0,-88
	li	a1,12
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 2 1515 12
	lw	a5,-20(s0)
.L396:
	.loc 2 1516 1
	mv	a0,a5
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	lw	s1,100(sp)
	.cfi_restore 9
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE81:
	.size	mbedtls_mpi_div_mpi, .-mbedtls_mpi_div_mpi
	.section	.text.mbedtls_mpi_div_int,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_div_int
	.type	mbedtls_mpi_div_int, @function
mbedtls_mpi_div_int:
.LFB82:
	.loc 2 1524 1
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
	.loc 2 1528 12
	lw	a0,-48(s0)
	call	mpi_sint_abs
	mv	a5,a0
	.loc 2 1528 10 discriminator 1
	sw	a5,-28(s0)
	.loc 2 1529 33
	lw	a5,-48(s0)
	.loc 2 1529 55
	srli	a5,a5,31
	.loc 2 1529 104
	slli	a5,a5,16
	srli	a5,a5,16
	li	a4,0
	sub	a5,a4,a5
	slli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 2 1529 9
	sh	a5,-20(s0)
	.loc 2 1530 9
	li	a5,1
	sh	a5,-18(s0)
	.loc 2 1531 9
	addi	a5,s0,-28
	sw	a5,-24(s0)
	.loc 2 1533 12
	addi	a5,s0,-24
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_div_mpi
	mv	a5,a0
	.loc 2 1534 1
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
	.size	mbedtls_mpi_div_int, .-mbedtls_mpi_div_int
	.section	.text.mbedtls_mpi_mod_mpi,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_mod_mpi
	.type	mbedtls_mpi_mod_mpi, @function
mbedtls_mpi_mod_mpi:
.LFB83:
	.loc 2 1540 1
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
	.loc 2 1541 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1543 9
	li	a1,0
	lw	a0,-44(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1543 8 discriminator 1
	bge	a5,zero,.L423
	.loc 2 1544 16
	li	a5,-10
	j	.L424
.L423:
	.loc 2 1547 22
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	li	a0,0
	call	mbedtls_mpi_div_mpi
	sw	a0,-20(s0)
	.loc 2 1547 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L431
	.loc 2 1549 11
	j	.L427
.L428:
	.loc 2 1550 26
	lw	a2,-44(s0)
	lw	a1,-36(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_add_mpi
	sw	a0,-20(s0)
	.loc 2 1550 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L432
.L427:
	.loc 2 1549 12
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1549 38 discriminator 1
	blt	a5,zero,.L428
	.loc 2 1553 11
	j	.L429
.L430:
	.loc 2 1554 26
	lw	a2,-44(s0)
	lw	a1,-36(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_mpi
	sw	a0,-20(s0)
	.loc 2 1554 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L433
.L429:
	.loc 2 1553 12
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 1553 38 discriminator 1
	bge	a5,zero,.L430
	.loc 2 1557 1
	j	.L426
.L431:
	.loc 2 1547 23
	nop
	j	.L426
.L432:
	.loc 2 1550 63
	nop
	j	.L426
.L433:
	.loc 2 1554 63
	nop
.L426:
	.loc 2 1559 12
	lw	a5,-20(s0)
.L424:
	.loc 2 1560 1
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
	.size	mbedtls_mpi_mod_mpi, .-mbedtls_mpi_mod_mpi
	.section	.text.mbedtls_mpi_mod_int,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_mod_int
	.type	mbedtls_mpi_mod_int, @function
mbedtls_mpi_mod_int:
.LFB84:
	.loc 2 1566 1
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
	.loc 2 1570 8
	lw	a5,-44(s0)
	bne	a5,zero,.L435
	.loc 2 1571 16
	li	a5,-12
	j	.L436
.L435:
	.loc 2 1574 8
	lw	a5,-44(s0)
	bge	a5,zero,.L437
	.loc 2 1575 16
	li	a5,-10
	j	.L436
.L437:
	.loc 2 1581 8
	lw	a4,-44(s0)
	li	a5,1
	beq	a4,a5,.L438
	.loc 2 1581 20 discriminator 1
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	.loc 2 1581 16 discriminator 1
	bne	a5,zero,.L439
.L438:
	.loc 2 1582 12
	lw	a5,-36(s0)
	sw	zero,0(a5)
	.loc 2 1583 16
	li	a5,0
	j	.L436
.L439:
	.loc 2 1586 8
	lw	a4,-44(s0)
	li	a5,2
	bne	a4,a5,.L440
	.loc 2 1587 15
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 2 1587 18
	lw	a5,0(a5)
	.loc 2 1587 22
	andi	a4,a5,1
	.loc 2 1587 12
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 2 1588 16
	li	a5,0
	j	.L436
.L440:
	.loc 2 1594 15
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	.loc 2 1594 12
	sw	a5,-20(s0)
	.loc 2 1594 22
	sw	zero,-24(s0)
	.loc 2 1594 5
	j	.L441
.L442:
	.loc 2 1595 14
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 1595 17
	lw	a3,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 2 1595 11
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 2 1596 16
	lw	a5,-24(s0)
	slli	a4,a5,16
	.loc 2 1596 59
	lw	a5,-28(s0)
	srli	a5,a5,16
	.loc 2 1596 11
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1597 15
	lw	a5,-44(s0)
	.loc 2 1597 11
	lw	a4,-24(s0)
	divu	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 1598 16
	lw	a4,-44(s0)
	lw	a5,-32(s0)
	mul	a5,a4,a5
	.loc 2 1598 11
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1600 11
	lw	a5,-28(s0)
	slli	a5,a5,16
	sw	a5,-28(s0)
	.loc 2 1601 16
	lw	a5,-24(s0)
	slli	a4,a5,16
	.loc 2 1601 59
	lw	a5,-28(s0)
	srli	a5,a5,16
	.loc 2 1601 11
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1602 15
	lw	a5,-44(s0)
	.loc 2 1602 11
	lw	a4,-24(s0)
	divu	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 1603 16
	lw	a4,-44(s0)
	lw	a5,-32(s0)
	mul	a5,a4,a5
	.loc 2 1603 11
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 1594 35 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L441:
	.loc 2 1594 29 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L442
	.loc 2 1610 10
	lw	a5,-40(s0)
	lh	a5,4(a5)
	.loc 2 1610 8
	bge	a5,zero,.L443
	.loc 2 1610 18 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L443
	.loc 2 1611 15
	lw	a4,-44(s0)
	.loc 2 1611 11
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
.L443:
	.loc 2 1614 8
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 2 1616 12
	li	a5,0
.L436:
	.loc 2 1617 1
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
	.size	mbedtls_mpi_mod_int, .-mbedtls_mpi_mod_int
	.section	.text.mbedtls_mpi_exp_mod_optionally_safe,"ax",@progbits
	.align	1
	.type	mbedtls_mpi_exp_mod_optionally_safe, @function
mbedtls_mpi_exp_mod_optionally_safe:
.LFB85:
	.loc 2 1626 1
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
	.loc 2 1627 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1629 9
	li	a1,0
	lw	a0,-68(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1629 8 discriminator 1
	ble	a5,zero,.L445
	.loc 2 1629 45 discriminator 2
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 2 1629 48 discriminator 2
	lw	a5,0(a5)
	.loc 2 1629 52 discriminator 2
	andi	a5,a5,1
	.loc 2 1629 40 discriminator 2
	bne	a5,zero,.L446
.L445:
	.loc 2 1630 16
	li	a5,-4
	j	.L467
.L446:
	.loc 2 1633 9
	li	a1,0
	lw	a0,-60(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1633 8 discriminator 1
	bge	a5,zero,.L448
	.loc 2 1634 16
	li	a5,-4
	j	.L467
.L448:
	.loc 2 1637 9
	lw	a0,-60(s0)
	call	mbedtls_mpi_bitlen
	mv	a4,a0
	.loc 2 1637 8 discriminator 1
	li	a5,8192
	bgtu	a4,a5,.L449
	.loc 2 1638 9
	lw	a0,-68(s0)
	call	mbedtls_mpi_bitlen
	mv	a4,a0
	.loc 2 1637 44 discriminator 2
	li	a5,8192
	bleu	a4,a5,.L450
.L449:
	.loc 2 1639 16
	li	a5,-4
	j	.L467
.L450:
	.loc 2 1645 10
	lw	a5,-60(s0)
	lhu	a5,6(a5)
	.loc 2 1645 8
	bne	a5,zero,.L451
	.loc 2 1646 15
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 1647 16
	lw	a5,-20(s0)
	j	.L467
.L451:
	.loc 2 1653 62
	lw	a5,-68(s0)
	lhu	a5,6(a5)
	.loc 2 1653 22
	mv	a4,a5
	.loc 2 1653 68
	lw	a5,-60(s0)
	lhu	a5,6(a5)
	.loc 2 1653 22
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_core_exp_mod_working_limbs
	sw	a0,-24(s0)
	.loc 2 1654 48
	li	a1,4
	lw	a0,-24(s0)
	call	calloc
	mv	a5,a0
	sw	a5,-28(s0)
	.loc 2 1655 8
	lw	a5,-28(s0)
	bne	a5,zero,.L452
	.loc 2 1656 16
	li	a5,-16
	j	.L467
.L452:
	.loc 2 1660 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 1665 8
	lw	a5,-72(s0)
	beq	a5,zero,.L453
	.loc 2 1665 34 discriminator 1
	lw	a5,-72(s0)
	lw	a5,0(a5)
	.loc 2 1665 24 discriminator 1
	bne	a5,zero,.L454
.L453:
	.loc 2 1666 26
	addi	a5,s0,-44
	lw	a1,-68(s0)
	mv	a0,a5
	call	mbedtls_mpi_core_get_mont_r2_unsafe
	sw	a0,-20(s0)
	.loc 2 1666 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L468
	.loc 2 1668 12
	lw	a5,-72(s0)
	beq	a5,zero,.L458
	.loc 2 1669 22
	lw	a5,-72(s0)
	lw	a4,-44(s0)
	sw	a4,0(a5)
	lw	a4,-40(s0)
	sw	a4,4(a5)
	.loc 2 1668 12
	j	.L458
.L454:
	.loc 2 1672 53
	lw	a5,-68(s0)
	lhu	a5,6(a5)
	.loc 2 1672 26
	mv	a1,a5
	lw	a0,-72(s0)
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 1672 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L469
	.loc 2 1673 12
	lw	a5,-72(s0)
	lw	a4,0(a5)
	sw	a4,-44(s0)
	lw	a5,4(a5)
	sw	a5,-40(s0)
.L458:
	.loc 2 1680 22
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1680 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L470
	.loc 2 1685 10
	lw	a5,-52(s0)
	li	a4,1
	sh	a4,4(a5)
	.loc 2 1697 9
	lw	a1,-68(s0)
	lw	a0,-52(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 1697 8 discriminator 1
	blt	a5,zero,.L461
	.loc 2 1698 26
	lw	a2,-68(s0)
	lw	a1,-52(s0)
	lw	a0,-52(s0)
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 2 1698 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L471
.L461:
	.loc 2 1700 43
	lw	a5,-68(s0)
	lhu	a5,6(a5)
	.loc 2 1700 22
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 1700 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L472
.LBB8:
	.loc 2 1706 62
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 2 1706 31
	mv	a0,a5
	call	mbedtls_mpi_core_montmul_init
	sw	a0,-32(s0)
	.loc 2 1707 9
	lw	a5,-52(s0)
	lw	a0,0(a5)
	.loc 2 1707 45
	lw	a5,-52(s0)
	lw	a1,0(a5)
	.loc 2 1707 51
	lw	a5,-68(s0)
	lw	a2,0(a5)
	.loc 2 1707 57
	lw	a5,-68(s0)
	lhu	a5,6(a5)
	.loc 2 1707 9
	mv	a3,a5
	.loc 2 1707 68
	lw	a5,-44(s0)
	.loc 2 1707 9
	lw	a6,-28(s0)
	lw	a4,-32(s0)
	call	mbedtls_mpi_core_to_mont_rep
	.loc 2 1708 12
	lw	a4,-64(s0)
	li	a5,707407872
	addi	a5,a5,-1494
	bne	a4,a5,.L463
	.loc 2 1709 13
	lw	a5,-52(s0)
	lw	a0,0(a5)
	.loc 2 1709 52
	lw	a5,-52(s0)
	lw	a1,0(a5)
	.loc 2 1709 58
	lw	a5,-68(s0)
	lw	a2,0(a5)
	.loc 2 1709 64
	lw	a5,-68(s0)
	lhu	a5,6(a5)
	.loc 2 1709 13
	mv	a3,a5
	.loc 2 1709 70
	lw	a5,-60(s0)
	lw	a4,0(a5)
	.loc 2 1709 76
	lw	a5,-60(s0)
	lhu	a5,6(a5)
	.loc 2 1709 13
	mv	t1,a5
	.loc 2 1709 83
	lw	a5,-44(s0)
	.loc 2 1709 13
	lw	a7,-28(s0)
	mv	a6,a5
	mv	a5,t1
	call	mbedtls_mpi_core_exp_mod_unsafe
	j	.L464
.L463:
	.loc 2 1711 13
	lw	a5,-52(s0)
	lw	a0,0(a5)
	.loc 2 1711 45
	lw	a5,-52(s0)
	lw	a1,0(a5)
	.loc 2 1711 51
	lw	a5,-68(s0)
	lw	a2,0(a5)
	.loc 2 1711 57
	lw	a5,-68(s0)
	lhu	a5,6(a5)
	.loc 2 1711 13
	mv	a3,a5
	.loc 2 1711 63
	lw	a5,-60(s0)
	lw	a4,0(a5)
	.loc 2 1711 69
	lw	a5,-60(s0)
	lhu	a5,6(a5)
	.loc 2 1711 13
	mv	t1,a5
	.loc 2 1711 76
	lw	a5,-44(s0)
	.loc 2 1711 13
	lw	a7,-28(s0)
	mv	a6,a5
	mv	a5,t1
	call	mbedtls_mpi_core_exp_mod
.L464:
	.loc 2 1713 9
	lw	a5,-52(s0)
	lw	a0,0(a5)
	.loc 2 1713 47
	lw	a5,-52(s0)
	lw	a1,0(a5)
	.loc 2 1713 53
	lw	a5,-68(s0)
	lw	a2,0(a5)
	.loc 2 1713 59
	lw	a5,-68(s0)
	lhu	a5,6(a5)
	.loc 2 1713 9
	mv	a3,a5
	lw	a5,-28(s0)
	lw	a4,-32(s0)
	call	mbedtls_mpi_core_from_mont_rep
.LBE8:
	.loc 2 1719 10
	lw	a5,-56(s0)
	lh	a4,4(a5)
	.loc 2 1719 8
	li	a5,-1
	bne	a4,a5,.L473
	.loc 2 1719 25 discriminator 1
	lw	a5,-60(s0)
	lw	a5,0(a5)
	.loc 2 1719 28 discriminator 1
	lw	a5,0(a5)
	.loc 2 1719 32 discriminator 1
	andi	a5,a5,1
	.loc 2 1719 20 discriminator 1
	beq	a5,zero,.L473
.LBB9:
	.loc 2 1720 80
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 1720 86
	lw	a5,-52(s0)
	lhu	a5,6(a5)
	.loc 2 1720 48
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_core_check_zero_ct
	sw	a0,-36(s0)
	.loc 2 1721 16
	li	a2,1
	li	a1,-1
	lw	a0,-36(s0)
	call	mbedtls_ct_mpi_sign_if
	mv	a5,a0
	mv	a4,a5
	.loc 2 1721 14 discriminator 1
	lw	a5,-52(s0)
	sh	a4,4(a5)
	.loc 2 1723 26
	lw	a2,-52(s0)
	lw	a1,-68(s0)
	lw	a0,-52(s0)
	call	mbedtls_mpi_add_mpi
	sw	a0,-20(s0)
.LBE9:
	.loc 2 1726 1
	j	.L473
.L468:
	.loc 2 1666 78
	nop
	j	.L456
.L469:
	.loc 2 1672 66
	nop
	j	.L456
.L470:
	.loc 2 1680 53
	nop
	j	.L456
.L471:
	.loc 2 1698 63
	nop
	j	.L456
.L472:
	.loc 2 1700 56
	nop
	j	.L456
.L473:
	.loc 2 1726 1
	nop
.L456:
	.loc 2 1728 60
	lw	a5,-24(s0)
	slli	a5,a5,2
	.loc 2 1728 5
	mv	a1,a5
	lw	a0,-28(s0)
	call	mbedtls_zeroize_and_free
	.loc 2 1730 8
	lw	a5,-72(s0)
	beq	a5,zero,.L465
	.loc 2 1730 34 discriminator 1
	lw	a5,-72(s0)
	lw	a5,0(a5)
	.loc 2 1730 24 discriminator 1
	bne	a5,zero,.L466
.L465:
	.loc 2 1731 9
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_mpi_free
.L466:
	.loc 2 1734 12
	lw	a5,-20(s0)
.L467:
	.loc 2 1735 1
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
.LFE85:
	.size	mbedtls_mpi_exp_mod_optionally_safe, .-mbedtls_mpi_exp_mod_optionally_safe
	.section	.text.mbedtls_mpi_exp_mod,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_exp_mod
	.type	mbedtls_mpi_exp_mod, @function
mbedtls_mpi_exp_mod:
.LFB86:
	.loc 2 1740 1
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
	.loc 2 1741 12
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	li	a3,0
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_mpi_exp_mod_optionally_safe
	mv	a5,a0
	.loc 2 1742 1
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
	.size	mbedtls_mpi_exp_mod, .-mbedtls_mpi_exp_mod
	.section	.text.mbedtls_mpi_exp_mod_unsafe,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_exp_mod_unsafe
	.type	mbedtls_mpi_exp_mod_unsafe, @function
mbedtls_mpi_exp_mod_unsafe:
.LFB87:
	.loc 2 1747 1
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
	.loc 2 1748 12
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	li	a3,707407872
	addi	a3,a3,-1494
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_mpi_exp_mod_optionally_safe
	mv	a5,a0
	.loc 2 1749 1
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
	.size	mbedtls_mpi_exp_mod_unsafe, .-mbedtls_mpi_exp_mod_unsafe
	.section	.text.mbedtls_mpi_gcd_modinv_odd,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_gcd_modinv_odd
	.type	mbedtls_mpi_gcd_modinv_odd, @function
mbedtls_mpi_gcd_modinv_odd:
.LFB88:
	.loc 2 1756 1
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
	sw	a3,-80(s0)
	.loc 2 1757 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1759 23
	sw	zero,-24(s0)
	.loc 2 1760 42
	lw	a5,-72(s0)
	beq	a5,zero,.L479
	.loc 2 1760 18 discriminator 1
	li	a5,5
	sw	a5,-28(s0)
	j	.L480
.L479:
	.loc 2 1760 18 is_stmt 0 discriminator 2
	li	a5,4
	sw	a5,-28(s0)
.L480:
	.loc 2 1761 28 is_stmt 1
	sw	zero,-52(s0)
	.loc 2 1764 9
	li	a1,0
	lw	a0,-76(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1764 8 discriminator 1
	blt	a5,zero,.L481
	.loc 2 1765 9
	lw	a1,-80(s0)
	lw	a0,-76(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 1764 39 discriminator 2
	bgt	a5,zero,.L481
	.loc 2 1766 9
	li	a1,0
	lw	a0,-80(s0)
	call	mbedtls_mpi_get_bit
	mv	a4,a0
	.loc 2 1765 39
	li	a5,1
	bne	a4,a5,.L481
	.loc 2 1766 40
	lw	a5,-72(s0)
	beq	a5,zero,.L482
	.loc 2 1767 22
	li	a1,1
	lw	a0,-80(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1767 19 discriminator 1
	bne	a5,zero,.L482
.L481:
	.loc 2 1768 16
	li	a5,-4
	j	.L500
.L482:
	.loc 2 1772 8
	lw	a4,-76(s0)
	lw	a5,-80(s0)
	beq	a4,a5,.L484
	.loc 2 1772 16 discriminator 1
	lw	a5,-72(s0)
	beq	a5,zero,.L485
	.loc 2 1772 29 discriminator 2
	lw	a4,-72(s0)
	lw	a5,-80(s0)
	beq	a4,a5,.L484
	.loc 2 1772 40 discriminator 3
	lw	a4,-68(s0)
	lw	a5,-80(s0)
	bne	a4,a5,.L485
.L484:
	.loc 2 1773 16
	li	a5,-4
	j	.L500
.L485:
	.loc 2 1776 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 1778 8
	lw	a5,-68(s0)
	bne	a5,zero,.L486
	.loc 2 1779 11
	addi	a5,s0,-48
	sw	a5,-68(s0)
.L486:
	.loc 2 1784 43
	lw	a5,-80(s0)
	lhu	a5,6(a5)
	.loc 2 1784 22
	mv	a1,a5
	lw	a0,-68(s0)
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 1784 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L501
	.loc 2 1785 8
	lw	a5,-72(s0)
	beq	a5,zero,.L489
	.loc 2 1786 47
	lw	a5,-80(s0)
	lhu	a5,6(a5)
	.loc 2 1786 26
	mv	a1,a5
	lw	a0,-72(s0)
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 1786 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L502
.L489:
	.loc 2 1789 44
	lw	a5,-80(s0)
	lhu	a5,6(a5)
	.loc 2 1789 41
	slli	a5,a5,2
	.loc 2 1789 9
	lw	a1,-28(s0)
	mv	a0,a5
	call	calloc
	mv	a5,a0
	sw	a5,-24(s0)
	.loc 2 1790 8
	lw	a5,-24(s0)
	bne	a5,zero,.L490
	.loc 2 1791 13
	li	a5,-16
	sw	a5,-20(s0)
	.loc 2 1792 9
	j	.L488
.L490:
	.loc 2 1795 44
	lw	a5,-72(s0)
	beq	a5,zero,.L491
	.loc 2 1795 23 discriminator 1
	lw	a5,-72(s0)
	lw	a5,0(a5)
	sw	a5,-32(s0)
	j	.L492
.L491:
	.loc 2 1795 23 is_stmt 0 discriminator 2
	sw	zero,-32(s0)
.L492:
	.loc 2 1799 35 is_stmt 1
	lw	a5,-76(s0)
	lw	a5,0(a5)
	.loc 2 1799 53
	beq	a5,zero,.L493
	.loc 2 1799 29 discriminator 1
	lw	a5,-76(s0)
	lw	a5,0(a5)
	sw	a5,-36(s0)
	j	.L494
.L493:
	.loc 2 1799 29 is_stmt 0 discriminator 2
	addi	a5,s0,-52
	sw	a5,-36(s0)
.L494:
	.loc 2 1800 18 is_stmt 1
	lw	a5,-76(s0)
	lhu	a4,6(a5)
	.loc 2 1800 26
	lw	a5,-80(s0)
	lhu	a5,6(a5)
	.loc 2 1800 37
	bltu	a4,a5,.L495
	.loc 2 1800 33 discriminator 1
	lw	a5,-80(s0)
	lhu	a5,6(a5)
	.loc 2 1800 12 discriminator 1
	sw	a5,-40(s0)
	j	.L496
.L495:
	.loc 2 1800 40 discriminator 2
	lw	a5,-76(s0)
	lw	a5,0(a5)
	.loc 2 1800 37 discriminator 2
	beq	a5,zero,.L497
	.loc 2 1800 54 discriminator 3
	lw	a5,-76(s0)
	lhu	a5,6(a5)
	.loc 2 1800 12 discriminator 3
	sw	a5,-40(s0)
	j	.L496
.L497:
	.loc 2 1800 12 is_stmt 0 discriminator 4
	li	a5,1
	sw	a5,-40(s0)
.L496:
	.loc 2 1801 5 is_stmt 1
	lw	a5,-68(s0)
	lw	a0,0(a5)
	.loc 2 1801 56
	lw	a5,-80(s0)
	lw	a4,0(a5)
	.loc 2 1801 62
	lw	a5,-80(s0)
	lhu	a5,6(a5)
	.loc 2 1801 5
	lw	a6,-24(s0)
	lw	a3,-40(s0)
	lw	a2,-36(s0)
	lw	a1,-32(s0)
	call	mbedtls_mpi_core_gcd_modinv_odd
	.loc 2 1803 10
	lw	a5,-68(s0)
	li	a4,1
	sh	a4,4(a5)
	.loc 2 1804 8
	lw	a5,-72(s0)
	beq	a5,zero,.L498
	.loc 2 1805 14
	lw	a5,-72(s0)
	li	a4,1
	sh	a4,4(a5)
.L498:
	.loc 2 1808 10
	lw	a5,-68(s0)
	lhu	a4,6(a5)
	.loc 2 1808 17
	lw	a5,-80(s0)
	lhu	a5,6(a5)
	.loc 2 1808 8
	bleu	a4,a5,.L499
	.loc 2 1809 17
	lw	a5,-68(s0)
	lw	a4,0(a5)
	.loc 2 1809 24
	lw	a5,-80(s0)
	lhu	a5,6(a5)
	.loc 2 1809 21
	slli	a5,a5,2
	add	a4,a4,a5
	.loc 2 1809 63
	lw	a5,-68(s0)
	lhu	a5,6(a5)
	mv	a3,a5
	.loc 2 1809 70
	lw	a5,-80(s0)
	lhu	a5,6(a5)
	.loc 2 1809 67
	sub	a5,a3,a5
	.loc 2 1809 59
	slli	a5,a5,2
	.loc 2 1809 9
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	memset
.L499:
	.loc 2 1811 8
	lw	a5,-72(s0)
	beq	a5,zero,.L503
	.loc 2 1811 22 discriminator 1
	lw	a5,-72(s0)
	lhu	a4,6(a5)
	.loc 2 1811 29 discriminator 1
	lw	a5,-80(s0)
	lhu	a5,6(a5)
	.loc 2 1811 18 discriminator 1
	bleu	a4,a5,.L503
	.loc 2 1812 17
	lw	a5,-72(s0)
	lw	a4,0(a5)
	.loc 2 1812 24
	lw	a5,-80(s0)
	lhu	a5,6(a5)
	.loc 2 1812 21
	slli	a5,a5,2
	add	a4,a4,a5
	.loc 2 1812 63
	lw	a5,-72(s0)
	lhu	a5,6(a5)
	mv	a3,a5
	.loc 2 1812 70
	lw	a5,-80(s0)
	lhu	a5,6(a5)
	.loc 2 1812 67
	sub	a5,a3,a5
	.loc 2 1812 59
	slli	a5,a5,2
	.loc 2 1812 9
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	memset
	j	.L488
.L501:
	.loc 2 1784 56
	nop
	j	.L488
.L502:
	.loc 2 1786 60
	nop
	j	.L488
.L503:
	.loc 2 1815 1
	nop
.L488:
	.loc 2 1816 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1817 5
	lw	a0,-24(s0)
	call	free
	.loc 2 1818 12
	lw	a5,-20(s0)
.L500:
	.loc 2 1819 1
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
.LFE88:
	.size	mbedtls_mpi_gcd_modinv_odd, .-mbedtls_mpi_gcd_modinv_odd
	.section	.text.mbedtls_mpi_gcd,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_gcd
	.type	mbedtls_mpi_gcd, @function
mbedtls_mpi_gcd:
.LFB89:
	.loc 2 1826 1
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
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	.loc 2 1827 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1830 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 1830 28 discriminator 1
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 1833 22
	addi	a5,s0,-44
	lw	a1,-72(s0)
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1833 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L521
	.loc 2 1834 22
	addi	a5,s0,-52
	lw	a1,-76(s0)
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1834 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L522
	.loc 2 1835 17
	li	a5,1
	sh	a5,-48(s0)
	.loc 2 1835 14
	lh	a5,-48(s0)
	.loc 2 1835 10
	sh	a5,-40(s0)
	.loc 2 1839 46
	lhu	a5,-46(s0)
	.loc 2 1839 22
	beq	a5,zero,.L508
	.loc 2 1839 58 discriminator 1
	lhu	a5,-46(s0)
	j	.L509
.L508:
	.loc 2 1839 22 discriminator 2
	li	a5,1
.L509:
	.loc 2 1839 22 is_stmt 0 discriminator 4
	addi	a4,s0,-44
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 1839 13 is_stmt 1 discriminator 5
	lw	a5,-20(s0)
	bne	a5,zero,.L523
	.loc 2 1840 46
	lhu	a5,-38(s0)
	.loc 2 1840 22
	mv	a4,a5
	addi	a5,s0,-52
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_grow
	sw	a0,-20(s0)
	.loc 2 1840 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L524
	.loc 2 1843 42
	lw	a5,-44(s0)
	.loc 2 1843 48
	lhu	a4,-38(s0)
	.loc 2 1843 9
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_core_check_zero_ct
	mv	s1,a0
	.loc 2 1843 81 discriminator 1
	li	a0,0
	call	mbedtls_ct_compiler_opaque
	mv	a5,a0
	.loc 2 1843 8 discriminator 2
	bne	s1,a5,.L512
	.loc 2 1844 26
	addi	a5,s0,-52
	mv	a1,a5
	lw	a0,-68(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1845 9
	j	.L506
.L512:
	.loc 2 1847 42
	lw	a5,-52(s0)
	.loc 2 1847 48
	lhu	a4,-46(s0)
	.loc 2 1847 9
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_core_check_zero_ct
	mv	s1,a0
	.loc 2 1847 81 discriminator 1
	li	a0,0
	call	mbedtls_ct_compiler_opaque
	mv	a5,a0
	.loc 2 1847 8 discriminator 2
	bne	s1,a5,.L514
	.loc 2 1848 26
	addi	a5,s0,-44
	mv	a1,a5
	lw	a0,-68(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1849 9
	j	.L506
.L514:
	.loc 2 1853 23
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_mpi_lsb
	sw	a0,-24(s0)
	.loc 2 1854 23
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_mpi_lsb
	sw	a0,-28(s0)
	.loc 2 1855 22
	addi	a5,s0,-44
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_mpi_shift_r
	sw	a0,-20(s0)
	.loc 2 1855 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L525
	.loc 2 1856 22
	addi	a5,s0,-52
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_mpi_shift_r
	sw	a0,-20(s0)
	.loc 2 1856 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L526
	.loc 2 1859 60
	lw	a5,-52(s0)
	.loc 2 1859 66
	lw	a4,-44(s0)
	.loc 2 1859 72
	lhu	a3,-38(s0)
	.loc 2 1859 35
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_core_lt_ct
	sw	a0,-32(s0)
	.loc 2 1860 5
	lw	a5,-44(s0)
	lw	a4,-52(s0)
	.loc 2 1860 46
	lhu	a3,-38(s0)
	.loc 2 1860 5
	mv	a2,a3
	lw	a3,-32(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_core_cond_swap
	.loc 2 1862 22
	addi	a4,s0,-52
	addi	a5,s0,-44
	mv	a3,a4
	mv	a2,a5
	li	a1,0
	lw	a0,-68(s0)
	call	mbedtls_mpi_gcd_modinv_odd
	sw	a0,-20(s0)
	.loc 2 1862 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L527
	.loc 2 1865 12
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	bleu	a5,a4,.L519
	mv	a5,a4
.L519:
	sw	a5,-36(s0)
	.loc 2 1866 22
	lw	a1,-36(s0)
	lw	a0,-68(s0)
	call	mbedtls_mpi_shift_l
	sw	a0,-20(s0)
	.loc 2 1868 1
	j	.L506
.L521:
	.loc 2 1833 55
	nop
	j	.L506
.L522:
	.loc 2 1834 55
	nop
	j	.L506
.L523:
	.loc 2 1839 74
	nop
	j	.L506
.L524:
	.loc 2 1840 58
	nop
	j	.L506
.L525:
	.loc 2 1855 59
	nop
	j	.L506
.L526:
	.loc 2 1856 59
	nop
	j	.L506
.L527:
	.loc 2 1862 24
	nop
.L506:
	.loc 2 1870 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1870 28 discriminator 1
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1872 12
	lw	a5,-20(s0)
	.loc 2 1873 1
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
.LFE89:
	.size	mbedtls_mpi_gcd, .-mbedtls_mpi_gcd
	.section	.text.mbedtls_mpi_fill_random,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_fill_random
	.type	mbedtls_mpi_fill_random, @function
mbedtls_mpi_fill_random:
.LFB90:
	.loc 2 1884 1
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
	.loc 2 1885 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1886 34
	lw	a5,-40(s0)
	srli	a5,a5,2
	.loc 2 1886 73
	lw	a4,-40(s0)
	andi	a4,a4,3
	.loc 2 1886 102
	snez	a4,a4
	andi	a4,a4,0xff
	.loc 2 1886 18
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 2 1889 22
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_resize_clear
	sw	a0,-20(s0)
	.loc 2 1889 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L533
	.loc 2 1890 8
	lw	a5,-40(s0)
	bne	a5,zero,.L531
	.loc 2 1891 16
	li	a5,0
	j	.L532
.L531:
	.loc 2 1894 11
	lw	a5,-36(s0)
	lw	a0,0(a5)
	.loc 2 1894 47
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 1894 11
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	mv	a1,a5
	call	mbedtls_mpi_core_fill_random
	sw	a0,-20(s0)
	j	.L530
.L533:
	.loc 2 1889 65
	nop
.L530:
	.loc 2 1897 12
	lw	a5,-20(s0)
.L532:
	.loc 2 1898 1
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
	.size	mbedtls_mpi_fill_random, .-mbedtls_mpi_fill_random
	.section	.text.mbedtls_mpi_random,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_random
	.type	mbedtls_mpi_random, @function
mbedtls_mpi_random:
.LFB91:
	.loc 2 1905 1
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
	.loc 2 1906 8
	lw	a5,-40(s0)
	bge	a5,zero,.L535
	.loc 2 1907 16
	li	a5,-4
	j	.L536
.L535:
	.loc 2 1909 9
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1909 8 discriminator 1
	bgt	a5,zero,.L537
	.loc 2 1910 16
	li	a5,-4
	j	.L536
.L537:
	.loc 2 1916 44
	lw	a5,-44(s0)
	lhu	a5,6(a5)
	.loc 2 1916 15
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_resize_clear
	sw	a0,-20(s0)
	.loc 2 1917 8
	lw	a5,-20(s0)
	beq	a5,zero,.L538
	.loc 2 1918 16
	lw	a5,-20(s0)
	j	.L536
.L538:
	.loc 2 1921 12
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,-40(s0)
	.loc 2 1921 48
	lw	a5,-44(s0)
	lw	a2,0(a5)
	.loc 2 1921 54
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 1921 12
	mv	a3,a5
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	call	mbedtls_mpi_core_random
	mv	a5,a0
.L536:
	.loc 2 1922 1
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
	.size	mbedtls_mpi_random, .-mbedtls_mpi_random
	.section	.text.mbedtls_mpi_inv_mod_odd,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_inv_mod_odd
	.type	mbedtls_mpi_inv_mod_odd, @function
mbedtls_mpi_inv_mod_odd:
.LFB92:
	.loc 2 1930 1
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
	.loc 2 1931 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1934 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 1935 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 1937 22
	addi	a5,s0,-28
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 2 1937 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L545
	.loc 2 1938 22
	addi	a2,s0,-28
	addi	a4,s0,-28
	addi	a5,s0,-36
	lw	a3,-60(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_gcd_modinv_odd
	sw	a0,-20(s0)
	.loc 2 1938 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L546
	.loc 2 1939 9
	addi	a5,s0,-36
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1939 8 discriminator 1
	beq	a5,zero,.L543
	.loc 2 1940 13
	li	a5,-14
	sw	a5,-20(s0)
	.loc 2 1941 9
	j	.L541
.L543:
	.loc 2 1944 22
	addi	a5,s0,-28
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1946 1
	j	.L541
.L545:
	.loc 2 1937 60
	nop
	j	.L541
.L546:
	.loc 2 1938 72
	nop
.L541:
	.loc 2 1947 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1948 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1950 12
	lw	a5,-20(s0)
	.loc 2 1951 1
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
.LFE92:
	.size	mbedtls_mpi_inv_mod_odd, .-mbedtls_mpi_inv_mod_odd
	.section	.text.mbedtls_mpi_inv_mod_even_in_range,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_inv_mod_even_in_range
	.type	mbedtls_mpi_inv_mod_even_in_range, @function
mbedtls_mpi_inv_mod_even_in_range:
.LFB93:
	.loc 2 1969 1
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
	.loc 2 1970 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1973 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 1974 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 1977 22
	addi	a5,s0,-28
	lw	a2,-56(s0)
	lw	a1,-60(s0)
	mv	a0,a5
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 2 1977 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L556
	.loc 2 1978 22
	addi	a2,s0,-28
	addi	a4,s0,-28
	addi	a5,s0,-36
	lw	a3,-56(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_gcd_modinv_odd
	sw	a0,-20(s0)
	.loc 2 1978 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L557
	.loc 2 1979 9
	addi	a5,s0,-36
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1979 8 discriminator 1
	beq	a5,zero,.L551
	.loc 2 1980 13
	li	a5,-14
	sw	a5,-20(s0)
	.loc 2 1981 9
	j	.L549
.L551:
	.loc 2 1986 22
	addi	a4,s0,-28
	addi	a5,s0,-28
	lw	a2,-60(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 2 1986 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L558
	.loc 2 1987 22
	addi	a4,s0,-28
	addi	a5,s0,-28
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 2 1987 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L559
	.loc 2 1988 22
	addi	a4,s0,-28
	addi	a5,s0,-36
	lw	a3,-56(s0)
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_div_mpi
	sw	a0,-20(s0)
	.loc 2 1988 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L560
	.loc 2 1993 22
	addi	a5,s0,-36
	mv	a2,a5
	lw	a1,-60(s0)
	lw	a0,-52(s0)
	call	mbedtls_mpi_sub_mpi
	sw	a0,-20(s0)
	.loc 2 1995 1
	j	.L549
.L556:
	.loc 2 1977 60
	nop
	j	.L549
.L557:
	.loc 2 1978 72
	nop
	j	.L549
.L558:
	.loc 2 1986 61
	nop
	j	.L549
.L559:
	.loc 2 1987 61
	nop
	j	.L549
.L560:
	.loc 2 1988 21
	nop
.L549:
	.loc 2 1996 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1997 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1998 12
	lw	a5,-20(s0)
	.loc 2 1999 1
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
	.size	mbedtls_mpi_inv_mod_even_in_range, .-mbedtls_mpi_inv_mod_even_in_range
	.section	.text.mbedtls_mpi_inv_mod_even,"ax",@progbits
	.align	1
	.type	mbedtls_mpi_inv_mod_even, @function
mbedtls_mpi_inv_mod_even:
.LFB94:
	.loc 2 2009 1
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
	.loc 2 2010 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 2013 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2016 22
	addi	a5,s0,-32
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 2 2016 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L568
	.loc 2 2019 15
	addi	a5,s0,-32
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	sw	a0,-24(s0)
	.loc 2 2020 8
	lw	a5,-24(s0)
	bge	a5,zero,.L564
	.loc 2 2021 13
	li	a5,-14
	sw	a5,-20(s0)
	.loc 2 2022 9
	j	.L563
.L564:
	.loc 2 2024 8
	lw	a5,-24(s0)
	bne	a5,zero,.L565
	.loc 2 2025 26
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 2026 9
	j	.L563
.L565:
	.loc 2 2030 22
	addi	a5,s0,-32
	lw	a2,-44(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_inv_mod_even_in_range
	sw	a0,-20(s0)
	.loc 2 2032 1
	j	.L563
.L568:
	.loc 2 2016 61
	nop
.L563:
	.loc 2 2033 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2034 12
	lw	a5,-20(s0)
	.loc 2 2035 1
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
	.size	mbedtls_mpi_inv_mod_even, .-mbedtls_mpi_inv_mod_even
	.section	.text.mbedtls_mpi_inv_mod,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_inv_mod
	.type	mbedtls_mpi_inv_mod, @function
mbedtls_mpi_inv_mod:
.LFB95:
	.loc 2 2043 1
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
	.loc 2 2044 9
	li	a1,1
	lw	a0,-28(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 2044 8 discriminator 1
	bgt	a5,zero,.L570
	.loc 2 2045 16
	li	a5,-4
	j	.L571
.L570:
	.loc 2 2048 9
	li	a1,0
	lw	a0,-28(s0)
	call	mbedtls_mpi_get_bit
	mv	a4,a0
	.loc 2 2048 8 discriminator 1
	li	a5,1
	bne	a4,a5,.L572
	.loc 2 2049 16
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_mpi_inv_mod_odd
	mv	a5,a0
	j	.L571
.L572:
	.loc 2 2052 9
	li	a1,0
	lw	a0,-24(s0)
	call	mbedtls_mpi_get_bit
	mv	a4,a0
	.loc 2 2052 8 discriminator 1
	li	a5,1
	bne	a4,a5,.L573
	.loc 2 2053 16
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_mpi_inv_mod_even
	mv	a5,a0
	j	.L571
.L573:
	.loc 2 2057 12
	li	a5,-14
.L571:
	.loc 2 2058 1
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
	.size	mbedtls_mpi_inv_mod, .-mbedtls_mpi_inv_mod
	.section	.rodata.small_prime_gaps,"a"
	.align	2
	.type	small_prime_gaps, @object
	.size	small_prime_gaps, 167
small_prime_gaps:
	.base64	"AgIEAgQCBAYCBgQCBAYGAgYEAgYEBggEAgQCBA4EBgIKAgYGBAYGAgoCBAIMDAQCBAYCCgYGBgIGBAIKDgQCBA4GCgIEBggGBgQGCAQICgIKAgYEBggEAgQMCAQIBAYMAhIGCgYGAgYKBgYCBgYEAgwKAgQGBgIMBAYICggKCAYGBAgGBAgEDgoMAgoCBAIKDgQCBA4EAgQUBAgKCAQGBg4EBgYIBgA="
	.section	.text.mpi_check_small_factors,"ax",@progbits
	.align	1
	.type	mpi_check_small_factors, @function
mpi_check_small_factors:
.LFB96:
	.loc 2 2098 1
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
	.loc 2 2099 9
	sw	zero,-20(s0)
	.loc 2 2102 14
	li	a5,3
	sw	a5,-28(s0)
	.loc 2 2104 11
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 2104 14
	lw	a5,0(a5)
	.loc 2 2104 18
	andi	a5,a5,1
	.loc 2 2104 8
	bne	a5,zero,.L575
	.loc 2 2105 16
	li	a5,-14
	j	.L583
.L575:
	.loc 2 2108 12
	sw	zero,-24(s0)
	.loc 2 2108 5
	j	.L577
.L582:
	.loc 2 2109 26
	lw	a4,-28(s0)
	addi	a5,s0,-32
	mv	a2,a4
	lw	a1,-36(s0)
	mv	a0,a5
	call	mbedtls_mpi_mod_int
	sw	a0,-20(s0)
	.loc 2 2109 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L584
	.loc 2 2110 15
	lw	a5,-32(s0)
	.loc 2 2110 12
	bne	a5,zero,.L580
	.loc 2 2111 17
	lw	a5,-28(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 2111 16 discriminator 1
	bne	a5,zero,.L581
	.loc 2 2112 24
	li	a5,1
	j	.L583
.L581:
	.loc 2 2114 24
	li	a5,-14
	j	.L583
.L580:
	.loc 2 2108 68 discriminator 2
	lui	a5,%hi(small_prime_gaps)
	addi	a4,a5,%lo(small_prime_gaps)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 2 2108 49 discriminator 2
	lw	a5,-28(s0)
	add	a5,a5,a4
	sw	a5,-28(s0)
	.loc 2 2108 74 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L577:
	.loc 2 2108 19 discriminator 1
	lw	a4,-24(s0)
	li	a5,166
	bleu	a4,a5,.L582
	.loc 2 2119 1
	j	.L579
.L584:
	.loc 2 2109 64
	nop
.L579:
	.loc 2 2120 12
	lw	a5,-20(s0)
.L583:
	.loc 2 2121 1
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
.LFE96:
	.size	mpi_check_small_factors, .-mpi_check_small_factors
	.section	.text.mpi_miller_rabin,"ax",@progbits
	.align	1
	.type	mpi_miller_rabin, @function
mpi_miller_rabin:
.LFB97:
	.loc 2 2129 1
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
	sw	a3,-96(s0)
	.loc 2 2134 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2134 27 discriminator 1
	addi	a5,s0,-56
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2135 5
	addi	a5,s0,-64
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2135 27 discriminator 1
	addi	a5,s0,-72
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2136 5
	addi	a5,s0,-80
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2142 22
	addi	a5,s0,-48
	li	a2,1
	lw	a1,-84(s0)
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 2 2142 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L609
	.loc 2 2143 9
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_lsb
	sw	a0,-36(s0)
	.loc 2 2144 22
	addi	a4,s0,-48
	addi	a5,s0,-56
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 2144 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L610
	.loc 2 2145 22
	addi	a5,s0,-56
	lw	a1,-36(s0)
	mv	a0,a5
	call	mbedtls_mpi_shift_r
	sw	a0,-20(s0)
	.loc 2 2145 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L611
	.loc 2 2147 12
	sw	zero,-28(s0)
	.loc 2 2147 5
	j	.L590
.L607:
	.loc 2 2151 15
	sw	zero,-24(s0)
.L591:
	.loc 2 2153 59
	lw	a5,-84(s0)
	lhu	a5,6(a5)
	.loc 2 2153 30
	slli	a4,a5,2
	addi	a5,s0,-72
	lw	a3,-96(s0)
	lw	a2,-92(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_fill_random
	sw	a0,-20(s0)
	.loc 2 2153 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L612
	.loc 2 2155 17
	addi	a5,s0,-72
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	sw	a0,-32(s0)
	.loc 2 2156 17
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	sw	a0,-40(s0)
	.loc 2 2157 16
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	bleu	a4,a5,.L593
	.loc 2 2158 18
	lw	a4,-72(s0)
	.loc 2 2158 22
	lhu	a5,-66(s0)
	.loc 2 2158 20
	mv	a3,a5
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 2 2158 65
	lhu	a5,-66(s0)
	.loc 2 2158 68
	addi	a5,a5,-1
	.loc 2 2158 73
	slli	a5,a5,5
	.loc 2 2158 61
	lw	a4,-40(s0)
	sub	a5,a4,a5
	.loc 2 2158 109
	addi	a5,a5,-1
	.loc 2 2158 30
	li	a4,-1
	sll	a5,a4,a5
	not	a4,a5
	.loc 2 2158 18
	lw	a2,-72(s0)
	.loc 2 2158 22
	lhu	a5,-66(s0)
	.loc 2 2158 20
	mv	a1,a5
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a1,a5
	slli	a5,a5,2
	add	a5,a2,a5
	.loc 2 2158 30
	and	a4,a3,a4
	sw	a4,0(a5)
.L593:
	.loc 2 2161 22
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 2 2161 16
	li	a4,30
	ble	a5,a4,.L594
	.loc 2 2162 21
	li	a5,-14
	sw	a5,-20(s0)
	.loc 2 2163 17
	j	.L587
.L594:
	.loc 2 2166 18
	addi	a4,s0,-48
	addi	a5,s0,-72
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2166 51 discriminator 1
	bge	a5,zero,.L591
	.loc 2 2167 18
	addi	a5,s0,-72
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 2166 51 discriminator 2
	ble	a5,zero,.L591
	.loc 2 2172 26
	addi	a4,s0,-80
	addi	a2,s0,-56
	addi	a1,s0,-72
	addi	a5,s0,-72
	lw	a3,-84(s0)
	mv	a0,a5
	call	mbedtls_mpi_exp_mod
	sw	a0,-20(s0)
	.loc 2 2172 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L613
	.loc 2 2174 13
	addi	a4,s0,-48
	addi	a5,s0,-72
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2174 12 discriminator 1
	beq	a5,zero,.L614
	.loc 2 2175 13
	addi	a5,s0,-72
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 2174 46 discriminator 3
	beq	a5,zero,.L614
	.loc 2 2179 11
	li	a5,1
	sw	a5,-32(s0)
	.loc 2 2180 15
	j	.L600
.L605:
	.loc 2 2184 30
	addi	a3,s0,-72
	addi	a4,s0,-72
	addi	a5,s0,-64
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 2 2184 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L615
	.loc 2 2185 30
	addi	a4,s0,-64
	addi	a5,s0,-72
	lw	a2,-84(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 2 2185 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L616
	.loc 2 2187 17
	addi	a5,s0,-72
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 2187 16 discriminator 1
	beq	a5,zero,.L617
	.loc 2 2191 14
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L600:
	.loc 2 2180 22
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	bgeu	a4,a5,.L604
	.loc 2 2180 25 discriminator 1
	addi	a4,s0,-48
	addi	a5,s0,-72
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2180 22 discriminator 2
	bne	a5,zero,.L605
	j	.L604
.L617:
	.loc 2 2188 17
	nop
.L604:
	.loc 2 2197 13
	addi	a4,s0,-48
	addi	a5,s0,-72
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2197 12 discriminator 1
	bne	a5,zero,.L606
	.loc 2 2198 13
	addi	a5,s0,-72
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 2197 46 discriminator 2
	bne	a5,zero,.L599
.L606:
	.loc 2 2199 17
	li	a5,-14
	sw	a5,-20(s0)
	.loc 2 2200 13
	j	.L587
.L614:
	.loc 2 2176 13
	nop
.L599:
	.loc 2 2147 30 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L590:
	.loc 2 2147 19 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-88(s0)
	bltu	a4,a5,.L607
	.loc 2 2204 1
	j	.L587
.L609:
	.loc 2 2142 60
	nop
	j	.L587
.L610:
	.loc 2 2144 55
	nop
	j	.L587
.L611:
	.loc 2 2145 57
	nop
	j	.L587
.L612:
	.loc 2 2153 115
	nop
	j	.L587
.L613:
	.loc 2 2172 74
	nop
	j	.L587
.L615:
	.loc 2 2184 70
	nop
	j	.L587
.L616:
	.loc 2 2185 69
	nop
.L587:
	.loc 2 2205 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2205 27 discriminator 1
	addi	a5,s0,-56
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2206 5
	addi	a5,s0,-64
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2206 27 discriminator 1
	addi	a5,s0,-72
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2207 5
	addi	a5,s0,-80
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2209 12
	lw	a5,-20(s0)
	.loc 2 2210 1
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
	.size	mpi_miller_rabin, .-mpi_miller_rabin
	.section	.text.mbedtls_mpi_is_prime_ext,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_is_prime_ext
	.type	mbedtls_mpi_is_prime_ext, @function
mbedtls_mpi_is_prime_ext:
.LFB98:
	.loc 2 2218 1
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
	.loc 2 2219 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 2222 10
	li	a5,1
	sh	a5,-24(s0)
	.loc 2 2223 13
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 2 2223 10
	sh	a5,-22(s0)
	.loc 2 2224 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 2224 10
	sw	a5,-28(s0)
	.loc 2 2226 9
	addi	a5,s0,-28
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 2226 8 discriminator 1
	beq	a5,zero,.L619
	.loc 2 2227 9
	addi	a5,s0,-28
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 2226 42 discriminator 2
	bne	a5,zero,.L620
.L619:
	.loc 2 2228 16
	li	a5,-14
	j	.L625
.L620:
	.loc 2 2231 9
	addi	a5,s0,-28
	li	a1,2
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 2231 8 discriminator 1
	bne	a5,zero,.L622
	.loc 2 2232 16
	li	a5,0
	j	.L625
.L622:
	.loc 2 2235 16
	addi	a5,s0,-28
	mv	a0,a5
	call	mpi_check_small_factors
	sw	a0,-20(s0)
	.loc 2 2235 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L623
	.loc 2 2236 12
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L624
	.loc 2 2237 20
	li	a5,0
	j	.L625
.L624:
	.loc 2 2240 16
	lw	a5,-20(s0)
	j	.L625
.L623:
	.loc 2 2243 12
	lw	a4,-40(s0)
	addi	a5,s0,-28
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	mv	a1,a4
	mv	a0,a5
	call	mpi_miller_rabin
	mv	a5,a0
.L625:
	.loc 2 2244 1
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
	.size	mbedtls_mpi_is_prime_ext, .-mbedtls_mpi_is_prime_ext
	.section	.text.mbedtls_mpi_gen_prime,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_gen_prime
	.type	mbedtls_mpi_gen_prime, @function
mbedtls_mpi_gen_prime:
.LFB99:
	.loc 2 2256 1
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
	.loc 2 2264 9
	li	a5,-14
	sw	a5,-20(s0)
	.loc 2 2270 8
	lw	a4,-56(s0)
	li	a5,2
	bleu	a4,a5,.L627
	.loc 2 2270 19 discriminator 1
	lw	a4,-56(s0)
	li	a5,8192
	bleu	a4,a5,.L628
.L627:
	.loc 2 2271 16
	li	a5,-4
	j	.L662
.L628:
	.loc 2 2274 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2276 18
	lw	a5,-56(s0)
	srli	a5,a5,5
	.loc 2 2276 65
	lw	a4,-56(s0)
	andi	a4,a4,31
	.loc 2 2276 101
	snez	a4,a4
	andi	a4,a4,0xff
	.loc 2 2276 7
	add	a5,a5,a4
	sw	a5,-28(s0)
	.loc 2 2278 16
	lw	a5,-60(s0)
	andi	a5,a5,2
	.loc 2 2278 8
	bne	a5,zero,.L630
	.loc 2 2282 39
	lw	a4,-56(s0)
	li	a5,1299
	bgtu	a4,a5,.L631
	.loc 2 2282 60 discriminator 1
	lw	a4,-56(s0)
	li	a5,849
	bgtu	a4,a5,.L632
	.loc 2 2283 38
	lw	a4,-56(s0)
	li	a5,649
	bgtu	a4,a5,.L633
	.loc 2 2283 59 discriminator 1
	lw	a4,-56(s0)
	li	a5,349
	bgtu	a4,a5,.L634
	.loc 2 2284 39
	lw	a4,-56(s0)
	li	a5,249
	bgtu	a4,a5,.L635
	.loc 2 2284 61 discriminator 1
	lw	a4,-56(s0)
	li	a5,149
	bleu	a4,a5,.L636
	.loc 2 2282 16
	li	a5,18
	sw	a5,-24(s0)
	j	.L646
.L636:
	li	a5,27
	sw	a5,-24(s0)
	j	.L646
.L635:
	li	a5,12
	sw	a5,-24(s0)
	j	.L646
.L634:
	li	a5,8
	sw	a5,-24(s0)
	j	.L646
.L633:
	li	a5,4
	sw	a5,-24(s0)
	j	.L646
.L632:
	.loc 2 2282 16 is_stmt 0 discriminator 3
	li	a5,3
	sw	a5,-24(s0)
	j	.L646
.L631:
	.loc 2 2282 16 discriminator 2
	li	a5,2
	sw	a5,-24(s0)
	j	.L646
.L630:
	.loc 2 2290 39 is_stmt 1
	lw	a4,-56(s0)
	li	a5,1449
	bgtu	a4,a5,.L638
	.loc 2 2290 61 discriminator 1
	lw	a4,-56(s0)
	li	a5,1149
	bgtu	a4,a5,.L639
	.loc 2 2291 39
	lw	a4,-56(s0)
	li	a5,999
	bgtu	a4,a5,.L640
	.loc 2 2291 60 discriminator 1
	lw	a4,-56(s0)
	li	a5,849
	bgtu	a4,a5,.L641
	.loc 2 2292 38
	lw	a4,-56(s0)
	li	a5,749
	bgtu	a4,a5,.L642
	.loc 2 2292 60 discriminator 1
	lw	a4,-56(s0)
	li	a5,499
	bgtu	a4,a5,.L643
	.loc 2 2293 39
	lw	a4,-56(s0)
	li	a5,249
	bgtu	a4,a5,.L644
	.loc 2 2293 61 discriminator 1
	lw	a4,-56(s0)
	li	a5,149
	bleu	a4,a5,.L645
	.loc 2 2290 16
	li	a5,40
	sw	a5,-24(s0)
	j	.L646
.L645:
	li	a5,51
	sw	a5,-24(s0)
	j	.L646
.L644:
	li	a5,28
	sw	a5,-24(s0)
	j	.L646
.L643:
	li	a5,13
	sw	a5,-24(s0)
	j	.L646
.L642:
	li	a5,8
	sw	a5,-24(s0)
	j	.L646
.L641:
	li	a5,7
	sw	a5,-24(s0)
	j	.L646
.L640:
	li	a5,6
	sw	a5,-24(s0)
	j	.L646
.L639:
	.loc 2 2290 16 is_stmt 0 discriminator 3
	li	a5,5
	sw	a5,-24(s0)
	j	.L646
.L638:
	.loc 2 2290 16 discriminator 2
	li	a5,4
	sw	a5,-24(s0)
.L646:
	.loc 2 2297 55 is_stmt 1
	lw	a5,-28(s0)
	slli	a5,a5,2
	.loc 2 2297 26
	lw	a3,-68(s0)
	lw	a2,-64(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_mpi_fill_random
	sw	a0,-20(s0)
	.loc 2 2297 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L663
	.loc 2 2299 14
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 2299 17
	lw	a3,-28(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 2299 12
	li	a5,-1257967616
	addi	a5,a5,819
	bleu	a4,a5,.L664
	.loc 2 2303 11
	lw	a5,-28(s0)
	slli	a5,a5,5
	sw	a5,-32(s0)
	.loc 2 2304 12
	lw	a4,-32(s0)
	lw	a5,-56(s0)
	bleu	a4,a5,.L651
	.loc 2 2305 30
	lw	a4,-32(s0)
	lw	a5,-56(s0)
	sub	a5,a4,a5
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_mpi_shift_r
	sw	a0,-20(s0)
	.loc 2 2305 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L665
.L651:
	.loc 2 2307 10
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 2307 13
	lw	a4,0(a5)
	.loc 2 2307 10
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 2307 17
	ori	a4,a4,1
	sw	a4,0(a5)
	.loc 2 2309 20
	lw	a5,-60(s0)
	andi	a5,a5,1
	.loc 2 2309 12
	bne	a5,zero,.L652
	.loc 2 2310 19
	lw	a3,-68(s0)
	lw	a2,-64(s0)
	lw	a1,-24(s0)
	lw	a0,-52(s0)
	call	mbedtls_mpi_is_prime_ext
	sw	a0,-20(s0)
	.loc 2 2312 16
	lw	a4,-20(s0)
	li	a5,-14
	beq	a4,a5,.L646
	.loc 2 2313 17
	j	.L648
.L652:
	.loc 2 2322 14
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 2322 17
	lw	a4,0(a5)
	.loc 2 2322 14
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 2322 21
	ori	a4,a4,2
	sw	a4,0(a5)
	.loc 2 2324 30
	addi	a5,s0,-36
	li	a2,3
	lw	a1,-52(s0)
	mv	a0,a5
	call	mbedtls_mpi_mod_int
	sw	a0,-20(s0)
	.loc 2 2324 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L666
	.loc 2 2325 19
	lw	a5,-36(s0)
	.loc 2 2325 16
	bne	a5,zero,.L654
	.loc 2 2326 34
	li	a2,8
	lw	a1,-52(s0)
	lw	a0,-52(s0)
	call	mbedtls_mpi_add_int
	sw	a0,-20(s0)
	.loc 2 2326 25 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L655
	.loc 2 2326 71
	j	.L648
.L654:
	.loc 2 2327 26
	lw	a4,-36(s0)
	.loc 2 2327 23
	li	a5,1
	bne	a4,a5,.L655
	.loc 2 2328 34
	li	a2,4
	lw	a1,-52(s0)
	lw	a0,-52(s0)
	call	mbedtls_mpi_add_int
	sw	a0,-20(s0)
	.loc 2 2328 25 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L667
.L655:
	.loc 2 2332 30
	addi	a5,s0,-44
	lw	a1,-52(s0)
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 2332 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L668
	.loc 2 2333 30
	addi	a5,s0,-44
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_shift_r
	sw	a0,-20(s0)
	.loc 2 2333 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L669
.L657:
	.loc 2 2340 28
	lw	a0,-52(s0)
	call	mpi_check_small_factors
	sw	a0,-20(s0)
	.loc 2 2340 20 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L658
	.loc 2 2341 28
	addi	a5,s0,-44
	mv	a0,a5
	call	mpi_check_small_factors
	sw	a0,-20(s0)
	.loc 2 2340 61 discriminator 2
	lw	a5,-20(s0)
	bne	a5,zero,.L658
	.loc 2 2342 28
	lw	a5,-24(s0)
	lw	a3,-68(s0)
	lw	a2,-64(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	mpi_miller_rabin
	sw	a0,-20(s0)
	.loc 2 2341 62
	lw	a5,-20(s0)
	bne	a5,zero,.L658
	.loc 2 2344 28
	lw	a4,-24(s0)
	addi	a5,s0,-44
	lw	a3,-68(s0)
	lw	a2,-64(s0)
	mv	a1,a4
	mv	a0,a5
	call	mpi_miller_rabin
	sw	a0,-20(s0)
	.loc 2 2343 26
	lw	a5,-20(s0)
	beq	a5,zero,.L670
.L658:
	.loc 2 2349 20
	lw	a4,-20(s0)
	li	a5,-14
	bne	a4,a5,.L671
	.loc 2 2358 34
	li	a2,12
	lw	a1,-52(s0)
	lw	a0,-52(s0)
	call	mbedtls_mpi_add_int
	sw	a0,-20(s0)
	.loc 2 2358 25 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L672
	.loc 2 2359 34
	addi	a4,s0,-44
	addi	a5,s0,-44
	li	a2,6
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_add_int
	sw	a0,-20(s0)
	.loc 2 2359 25 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L673
	.loc 2 2340 20
	j	.L657
.L664:
	.loc 2 2300 13
	nop
	.loc 2 2297 17
	j	.L646
.L663:
	.loc 2 2297 107
	nop
	j	.L648
.L665:
	.loc 2 2305 72
	nop
	j	.L648
.L666:
	.loc 2 2324 68
	nop
	j	.L648
.L667:
	.loc 2 2328 71
	nop
	j	.L648
.L668:
	.loc 2 2332 62
	nop
	j	.L648
.L669:
	.loc 2 2333 65
	nop
	j	.L648
.L670:
	.loc 2 2346 21
	nop
	j	.L648
.L671:
	.loc 2 2350 21
	nop
	j	.L648
.L672:
	.loc 2 2358 72
	nop
	j	.L648
.L673:
	.loc 2 2359 73
	nop
.L648:
	.loc 2 2366 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2368 12
	lw	a5,-20(s0)
.L662:
	.loc 2 2369 1
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
.LFE99:
	.size	mbedtls_mpi_gen_prime, .-mbedtls_mpi_gen_prime
	.section	.rodata.gcd_pairs,"a"
	.align	2
	.type	gcd_pairs, @object
	.size	gcd_pairs, 36
gcd_pairs:
	.word	693
	.word	609
	.word	21
	.word	1764
	.word	868
	.word	28
	.word	768454923
	.word	542167814
	.word	1
	.section	.rodata
	.align	2
.LC1:
	.string	"EFE021C2645FD1DC586E69184AF4A31ED5F53E93B5F123FA41680867BA110131944FE7952E2517337780CB0DB80E61AAE7C8DDC6C5C6AADEB34EB38A2F40D5E6"
	.align	2
.LC2:
	.string	"B2E7EFD37075B9F03FF989C7C5051C2034D2A323810251127E7BF8625A4F49A5F3E27F4DA8BD59C47D6DAABA4C8127BD5B5C25763222FEFCCFC38B832366C29E"
	.align	2
.LC3:
	.string	"0066A198186C18C10B2F5ED9B522752A9830B69916E535C8F047518A889A43A594B6BED27A168D31D4A52F88925AA8F5"
	.align	2
.LC4:
	.string	"602AB7ECA597A3D6B56FF9829A5E8B859E857EA95A03512E2BAE7391688D264AA5663B0341DB9CCFD2C4C5F421FEC8148001B72E848A38CAE1C65F78E56ABDEFE12D3C039B8A02D6BE593F0BBBDA56F1ECF677152EF804370C1A305CAF3B5BF130879B56C61DE584A0F53A2447A51E"
	.align	2
.LC5:
	.string	"  MPI test #1 (mul_mpi): "
	.align	2
.LC6:
	.string	"failed\n"
	.align	2
.LC7:
	.string	"passed\n"
	.align	2
.LC8:
	.string	"256567336059E52CAE22925474705F39A94"
	.align	2
.LC9:
	.string	"6613F26162223DF488E9CD48CC132C7A0AC93C701B001B092E4E5B9F73BCD27B9EE50D0657C77F374E903CDFA4C642"
	.align	2
.LC10:
	.string	"  MPI test #2 (div_mpi): "
	.align	2
.LC11:
	.string	"36E139AEA55215609D2816998ED020BBBD96C37890F65171D948E9BC7CBAA4D9325D24D6A3C12710F10A09FA08AB87"
	.align	2
.LC12:
	.string	"  MPI test #3 (exp_mod): "
	.align	2
.LC13:
	.string	"003A0AAEDD7E784FC07D8F9EC6E3BFD5C3DBA76456363A10869622EAC2DD84ECC5B8A74DAC4D09E03B5E0BE779F2DF61"
	.align	2
.LC14:
	.string	"  MPI test #4 (inv_mod): "
	.align	2
.LC15:
	.string	"  MPI test #5 (simple gcd): "
	.align	2
.LC16:
	.string	"failed at %d\n"
	.align	2
.LC17:
	.string	"Unexpected error, return code = %08X\n"
	.align	2
.LC18:
	.string	"\n"
	.section	.text.mbedtls_mpi_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_self_test
	.type	mbedtls_mpi_self_test, @function
mbedtls_mpi_self_test:
.LFB100:
	.loc 2 2388 1
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
	.loc 2 2392 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2392 27 discriminator 1
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2392 49 discriminator 2
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2392 71 discriminator 3
	addi	a5,s0,-56
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2393 5
	addi	a5,s0,-64
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2393 27 discriminator 1
	addi	a5,s0,-72
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2393 49 discriminator 2
	addi	a5,s0,-80
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2395 22
	addi	a4,s0,-32
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	li	a1,16
	mv	a0,a4
	call	mbedtls_mpi_read_string
	sw	a0,-20(s0)
	.loc 2 2395 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L716
	.loc 2 2401 22
	addi	a4,s0,-40
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	li	a1,16
	mv	a0,a4
	call	mbedtls_mpi_read_string
	sw	a0,-20(s0)
	.loc 2 2401 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L717
	.loc 2 2407 22
	addi	a4,s0,-48
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,16
	mv	a0,a4
	call	mbedtls_mpi_read_string
	sw	a0,-20(s0)
	.loc 2 2407 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L718
	.loc 2 2412 22
	addi	a3,s0,-48
	addi	a4,s0,-32
	addi	a5,s0,-56
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 2 2412 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L719
	.loc 2 2414 22
	addi	a4,s0,-72
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,16
	mv	a0,a4
	call	mbedtls_mpi_read_string
	sw	a0,-20(s0)
	.loc 2 2414 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L720
	.loc 2 2423 8
	lw	a5,-84(s0)
	beq	a5,zero,.L681
	.loc 2 2424 9
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	printf
.L681:
	.loc 2 2427 9
	addi	a4,s0,-72
	addi	a5,s0,-56
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2427 8 discriminator 1
	beq	a5,zero,.L682
	.loc 2 2428 12
	lw	a5,-84(s0)
	beq	a5,zero,.L683
	.loc 2 2429 13
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
.L683:
	.loc 2 2432 13
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 2433 9
	j	.L676
.L682:
	.loc 2 2436 8
	lw	a5,-84(s0)
	beq	a5,zero,.L684
	.loc 2 2437 9
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
.L684:
	.loc 2 2440 22
	addi	a3,s0,-48
	addi	a2,s0,-32
	addi	a4,s0,-64
	addi	a5,s0,-56
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_div_mpi
	sw	a0,-20(s0)
	.loc 2 2440 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L721
	.loc 2 2442 22
	addi	a4,s0,-72
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,16
	mv	a0,a4
	call	mbedtls_mpi_read_string
	sw	a0,-20(s0)
	.loc 2 2442 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L722
	.loc 2 2445 22
	addi	a4,s0,-80
	lui	a5,%hi(.LC9)
	addi	a2,a5,%lo(.LC9)
	li	a1,16
	mv	a0,a4
	call	mbedtls_mpi_read_string
	sw	a0,-20(s0)
	.loc 2 2445 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L723
	.loc 2 2450 8
	lw	a5,-84(s0)
	beq	a5,zero,.L688
	.loc 2 2451 9
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	printf
.L688:
	.loc 2 2454 9
	addi	a4,s0,-72
	addi	a5,s0,-56
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2454 8 discriminator 1
	bne	a5,zero,.L689
	.loc 2 2455 9
	addi	a4,s0,-80
	addi	a5,s0,-64
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2454 42 discriminator 2
	beq	a5,zero,.L690
.L689:
	.loc 2 2456 12
	lw	a5,-84(s0)
	beq	a5,zero,.L691
	.loc 2 2457 13
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
.L691:
	.loc 2 2460 13
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 2461 9
	j	.L676
.L690:
	.loc 2 2464 8
	lw	a5,-84(s0)
	beq	a5,zero,.L692
	.loc 2 2465 9
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
.L692:
	.loc 2 2468 22
	addi	a3,s0,-48
	addi	a2,s0,-40
	addi	a1,s0,-32
	addi	a5,s0,-56
	li	a4,0
	mv	a0,a5
	call	mbedtls_mpi_exp_mod
	sw	a0,-20(s0)
	.loc 2 2468 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L724
	.loc 2 2470 22
	addi	a4,s0,-72
	lui	a5,%hi(.LC11)
	addi	a2,a5,%lo(.LC11)
	li	a1,16
	mv	a0,a4
	call	mbedtls_mpi_read_string
	sw	a0,-20(s0)
	.loc 2 2470 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L725
	.loc 2 2475 8
	lw	a5,-84(s0)
	beq	a5,zero,.L695
	.loc 2 2476 9
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	printf
.L695:
	.loc 2 2479 9
	addi	a4,s0,-72
	addi	a5,s0,-56
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2479 8 discriminator 1
	beq	a5,zero,.L696
	.loc 2 2480 12
	lw	a5,-84(s0)
	beq	a5,zero,.L697
	.loc 2 2481 13
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
.L697:
	.loc 2 2484 13
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 2485 9
	j	.L676
.L696:
	.loc 2 2488 8
	lw	a5,-84(s0)
	beq	a5,zero,.L698
	.loc 2 2489 9
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
.L698:
	.loc 2 2492 22
	addi	a3,s0,-48
	addi	a4,s0,-32
	addi	a5,s0,-56
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_inv_mod
	sw	a0,-20(s0)
	.loc 2 2492 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L726
	.loc 2 2494 22
	addi	a4,s0,-72
	lui	a5,%hi(.LC13)
	addi	a2,a5,%lo(.LC13)
	li	a1,16
	mv	a0,a4
	call	mbedtls_mpi_read_string
	sw	a0,-20(s0)
	.loc 2 2494 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L727
	.loc 2 2499 8
	lw	a5,-84(s0)
	beq	a5,zero,.L701
	.loc 2 2500 9
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	call	printf
.L701:
	.loc 2 2503 9
	addi	a4,s0,-72
	addi	a5,s0,-56
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2503 8 discriminator 1
	beq	a5,zero,.L702
	.loc 2 2504 12
	lw	a5,-84(s0)
	beq	a5,zero,.L703
	.loc 2 2505 13
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
.L703:
	.loc 2 2508 13
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 2509 9
	j	.L676
.L702:
	.loc 2 2512 8
	lw	a5,-84(s0)
	beq	a5,zero,.L704
	.loc 2 2513 9
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
.L704:
	.loc 2 2516 8
	lw	a5,-84(s0)
	beq	a5,zero,.L705
	.loc 2 2517 9
	lui	a5,%hi(.LC15)
	addi	a0,a5,%lo(.LC15)
	call	printf
.L705:
	.loc 2 2520 12
	sw	zero,-24(s0)
	.loc 2 2520 5
	j	.L706
.L712:
	.loc 2 2521 59
	lui	a5,%hi(gcd_pairs)
	addi	a3,a5,%lo(gcd_pairs)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,0(a5)
	.loc 2 2521 26
	addi	a5,s0,-56
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 2521 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L728
	.loc 2 2522 59
	lui	a5,%hi(gcd_pairs)
	addi	a3,a5,%lo(gcd_pairs)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,4(a5)
	.loc 2 2522 26
	addi	a5,s0,-64
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 2522 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L729
	.loc 2 2524 26
	addi	a3,s0,-64
	addi	a4,s0,-56
	addi	a5,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_gcd
	sw	a0,-20(s0)
	.loc 2 2524 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L730
	.loc 2 2526 49
	lui	a5,%hi(gcd_pairs)
	addi	a3,a5,%lo(gcd_pairs)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,8(a5)
	.loc 2 2526 13
	addi	a5,s0,-32
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 2526 12 discriminator 1
	beq	a5,zero,.L710
	.loc 2 2527 16
	lw	a5,-84(s0)
	beq	a5,zero,.L711
	.loc 2 2528 17
	lw	a1,-24(s0)
	lui	a5,%hi(.LC16)
	addi	a0,a5,%lo(.LC16)
	call	printf
.L711:
	.loc 2 2531 17
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 2532 13
	j	.L676
.L710:
	.loc 2 2520 25 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L706:
	.loc 2 2520 19 discriminator 1
	lw	a4,-24(s0)
	li	a5,2
	ble	a4,a5,.L712
	.loc 2 2536 8
	lw	a5,-84(s0)
	beq	a5,zero,.L731
	.loc 2 2537 9
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
	j	.L676
.L716:
	.loc 2 2395 203
	nop
	j	.L676
.L717:
	.loc 2 2401 203
	nop
	j	.L676
.L718:
	.loc 2 2407 168
	nop
	j	.L676
.L719:
	.loc 2 2412 62
	nop
	j	.L676
.L720:
	.loc 2 2414 306
	nop
	j	.L676
.L721:
	.loc 2 2440 66
	nop
	j	.L676
.L722:
	.loc 2 2442 101
	nop
	j	.L676
.L723:
	.loc 2 2445 166
	nop
	j	.L676
.L724:
	.loc 2 2468 14
	nop
	j	.L676
.L725:
	.loc 2 2470 166
	nop
	j	.L676
.L726:
	.loc 2 2492 62
	nop
	j	.L676
.L727:
	.loc 2 2494 168
	nop
	j	.L676
.L728:
	.loc 2 2521 72
	nop
	j	.L676
.L729:
	.loc 2 2522 72
	nop
	j	.L676
.L730:
	.loc 2 2524 62
	nop
	j	.L676
.L731:
	.loc 2 2540 1
	nop
.L676:
	.loc 2 2542 8
	lw	a5,-20(s0)
	beq	a5,zero,.L713
	.loc 2 2542 18 discriminator 1
	lw	a5,-84(s0)
	beq	a5,zero,.L713
	.loc 2 2543 9
	lw	a5,-20(s0)
	mv	a1,a5
	lui	a5,%hi(.LC17)
	addi	a0,a5,%lo(.LC17)
	call	printf
.L713:
	.loc 2 2546 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2546 27 discriminator 1
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2546 49 discriminator 2
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2546 71 discriminator 3
	addi	a5,s0,-56
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2547 5
	addi	a5,s0,-64
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2547 27 discriminator 1
	addi	a5,s0,-72
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2547 49 discriminator 2
	addi	a5,s0,-80
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2549 8
	lw	a5,-84(s0)
	beq	a5,zero,.L714
	.loc 2 2550 9
	lui	a5,%hi(.LC18)
	addi	a0,a5,%lo(.LC18)
	call	printf
.L714:
	.loc 2 2553 12
	lw	a5,-20(s0)
	.loc 2 2554 1
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
.LFE100:
	.size	mbedtls_mpi_self_test, .-mbedtls_mpi_self_test
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/constant_time_internal.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/bignum_core.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2525
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x20
	.4byte	.LASF179
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
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
	.uleb128 0xd
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
	.uleb128 0x21
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xd
	.4byte	0x68
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xf
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x74
	.uleb128 0xd
	.4byte	0x7b
	.uleb128 0xc
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xf
	.4byte	.LASF13
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0xf
	.4byte	.LASF14
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x22
	.byte	0x4
	.uleb128 0x1b
	.4byte	0xab
	.uleb128 0xd
	.4byte	0xab
	.uleb128 0x9
	.4byte	0x32
	.uleb128 0x9
	.4byte	0xc1
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0xd
	.4byte	0xc1
	.uleb128 0x9
	.4byte	0xc8
	.uleb128 0x1b
	.4byte	0xcd
	.uleb128 0x9
	.4byte	0xe1
	.uleb128 0x1b
	.4byte	0xd7
	.uleb128 0x23
	.uleb128 0x24
	.4byte	0x68
	.4byte	0xfb
	.uleb128 0x3
	.4byte	0xab
	.uleb128 0x3
	.4byte	0xb7
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x5
	.byte	0xa9
	.byte	0x11
	.4byte	0x93
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x5
	.byte	0xaa
	.byte	0x12
	.4byte	0x9f
	.uleb128 0xd
	.4byte	0x107
	.uleb128 0x25
	.4byte	.LASF18
	.byte	0x8
	.byte	0x5
	.byte	0xd0
	.byte	0x10
	.4byte	0x144
	.uleb128 0x1c
	.string	"p"
	.byte	0xd5
	.byte	0x17
	.4byte	0x144
	.byte	0
	.uleb128 0x1c
	.string	"s"
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x1c
	.string	"n"
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.4byte	0x107
	.uleb128 0xf
	.4byte	.LASF18
	.byte	0x5
	.byte	0xf0
	.byte	0x1
	.4byte	0x118
	.uleb128 0xd
	.4byte	0x149
	.uleb128 0x26
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x5
	.2byte	0x415
	.byte	0xe
	.4byte	0x176
	.uleb128 0x1e
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF20
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x6
	.byte	0x50
	.byte	0x12
	.4byte	0x9f
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x6
	.byte	0x51
	.byte	0x12
	.4byte	0x9f
	.uleb128 0xd
	.4byte	0x182
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x6
	.byte	0x52
	.byte	0x11
	.4byte	0x93
	.uleb128 0x16
	.4byte	0x39
	.4byte	0x1af
	.uleb128 0x15
	.4byte	0x74
	.byte	0xa6
	.byte	0
	.uleb128 0xd
	.4byte	0x19f
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x2
	.2byte	0x80f
	.byte	0x1c
	.4byte	0x1af
	.uleb128 0x5
	.byte	0x3
	.4byte	small_prime_gaps
	.uleb128 0x16
	.4byte	0x6f
	.4byte	0x1dd
	.uleb128 0x15
	.4byte	0x74
	.byte	0x2
	.uleb128 0x15
	.4byte	0x74
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	0x1c7
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x2
	.2byte	0x949
	.byte	0x12
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	gcd_pairs
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x7
	.byte	0xce
	.byte	0x5
	.4byte	0x68
	.4byte	0x20c
	.uleb128 0x3
	.4byte	0xd2
	.uleb128 0x27
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.2byte	0x25f
	.byte	0x5
	.4byte	0x68
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x107
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x240
	.uleb128 0x3
	.4byte	0xab
	.byte	0
	.uleb128 0x9
	.4byte	0x113
	.uleb128 0x9
	.4byte	0xe2
	.uleb128 0xa
	.4byte	.LASF28
	.2byte	0x23c
	.byte	0x5
	.4byte	0x68
	.4byte	0x26f
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x240
	.uleb128 0x3
	.4byte	0xab
	.byte	0
	.uleb128 0x17
	.4byte	.LASF29
	.byte	0x9
	.byte	0x5e
	.4byte	0x280
	.uleb128 0x3
	.4byte	0xab
	.byte	0
	.uleb128 0x12
	.4byte	.LASF30
	.2byte	0x35a
	.4byte	0x2af
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x144
	.byte	0
	.uleb128 0xa
	.4byte	.LASF31
	.2byte	0x2da
	.byte	0x18
	.4byte	0x176
	.4byte	0x2ca
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF32
	.2byte	0x332
	.4byte	0x2f4
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x107
	.uleb128 0x3
	.4byte	0x144
	.byte	0
	.uleb128 0x12
	.4byte	.LASF33
	.2byte	0x2b8
	.4byte	0x328
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x144
	.byte	0
	.uleb128 0x12
	.4byte	.LASF34
	.2byte	0x296
	.4byte	0x35c
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x144
	.byte	0
	.uleb128 0x12
	.4byte	.LASF35
	.2byte	0x30d
	.4byte	0x38b
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x107
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x144
	.byte	0
	.uleb128 0xa
	.4byte	.LASF36
	.2byte	0x1d8
	.byte	0x12
	.4byte	0x107
	.4byte	0x3a1
	.uleb128 0x3
	.4byte	0x23b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF37
	.2byte	0x212
	.byte	0x5
	.4byte	0x68
	.4byte	0x3bc
	.uleb128 0x3
	.4byte	0x3bc
	.uleb128 0x3
	.4byte	0x3c1
	.byte	0
	.uleb128 0x9
	.4byte	0x149
	.uleb128 0x9
	.4byte	0x155
	.uleb128 0xa
	.4byte	.LASF38
	.2byte	0x277
	.byte	0x8
	.4byte	0x7b
	.4byte	0x3e1
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x17
	.4byte	.LASF39
	.byte	0xa
	.byte	0x9f
	.4byte	0x3f7
	.uleb128 0x3
	.4byte	0xab
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x8
	.byte	0x80
	.byte	0x8
	.4byte	0x7b
	.4byte	0x40d
	.uleb128 0x3
	.4byte	0x107
	.byte	0
	.uleb128 0xa
	.4byte	.LASF41
	.2byte	0x1b7
	.byte	0x12
	.4byte	0x107
	.4byte	0x437
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x107
	.byte	0
	.uleb128 0x12
	.4byte	.LASF42
	.2byte	0x1cb
	.4byte	0x45c
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF43
	.2byte	0x2cb
	.byte	0x12
	.4byte	0x107
	.4byte	0x481
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x107
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF44
	.2byte	0x19d
	.byte	0x12
	.4byte	0x107
	.4byte	0x4a6
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF45
	.2byte	0x163
	.byte	0x12
	.4byte	0x107
	.4byte	0x4cb
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF46
	.2byte	0x140
	.4byte	0x4e6
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF47
	.2byte	0x14f
	.4byte	0x501
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF48
	.2byte	0x12f
	.byte	0x5
	.4byte	0x68
	.4byte	0x526
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0xb7
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF49
	.2byte	0x11b
	.byte	0x5
	.4byte	0x68
	.4byte	0x54b
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0xb7
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF50
	.2byte	0x107
	.byte	0x5
	.4byte	0x68
	.4byte	0x570
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x570
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x9
	.4byte	0x39
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x8
	.byte	0xf1
	.byte	0x5
	.4byte	0x68
	.4byte	0x59a
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x570
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0xb
	.byte	0x20
	.byte	0x8
	.4byte	0xab
	.4byte	0x5ba
	.uleb128 0x3
	.4byte	0xab
	.uleb128 0x3
	.4byte	0xd7
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0xb
	.byte	0x29
	.byte	0x8
	.4byte	0x7b
	.4byte	0x5d0
	.uleb128 0x3
	.4byte	0xcd
	.byte	0
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x8
	.byte	0x8c
	.byte	0x8
	.4byte	0x7b
	.4byte	0x5eb
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.4byte	0xab
	.4byte	0x60b
	.uleb128 0x3
	.4byte	0xab
	.uleb128 0x3
	.4byte	0x68
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0xb
	.byte	0x1f
	.byte	0x8
	.4byte	0xab
	.4byte	0x62b
	.uleb128 0x3
	.4byte	0xad
	.uleb128 0x3
	.4byte	0xdc
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x9
	.byte	0x5a
	.byte	0x7
	.4byte	0xab
	.4byte	0x646
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x17
	.4byte	.LASF58
	.byte	0xc
	.byte	0x79
	.4byte	0x65c
	.uleb128 0x3
	.4byte	0xab
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x17
	.4byte	.LASF59
	.byte	0x8
	.byte	0xde
	.4byte	0x67c
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x176
	.byte	0
	.uleb128 0x17
	.4byte	.LASF60
	.byte	0x8
	.byte	0xca
	.4byte	0x69c
	.uleb128 0x3
	.4byte	0x144
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x176
	.byte	0
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x8
	.byte	0xb5
	.byte	0x18
	.4byte	0x176
	.4byte	0x6bc
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x23b
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x5
	.4byte	.LASF62
	.2byte	0x953
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x76c
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x2
	.2byte	0x953
	.byte	0x1f
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.string	"ret"
	.2byte	0x955
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"i"
	.2byte	0x955
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"A"
	.2byte	0x956
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"E"
	.2byte	0x956
	.byte	0x14
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"N"
	.2byte	0x956
	.byte	0x17
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"X"
	.2byte	0x956
	.byte	0x1a
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"Y"
	.2byte	0x956
	.byte	0x1d
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"U"
	.2byte	0x956
	.byte	0x20
	.4byte	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.string	"V"
	.2byte	0x956
	.byte	0x23
	.4byte	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x9ec
	.4byte	.L676
	.byte	0
	.uleb128 0x5
	.4byte	.LASF63
	.2byte	0x8cd
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x834
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x8cd
	.byte	0x28
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x2
	.2byte	0x8cd
	.byte	0x32
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x2
	.2byte	0x8cd
	.byte	0x3d
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x2
	.2byte	0x8ce
	.byte	0x21
	.4byte	0x240
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x2
	.2byte	0x8cf
	.byte	0x21
	.4byte	0xab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"ret"
	.2byte	0x8d8
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"k"
	.2byte	0x8d9
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"n"
	.2byte	0x8d9
	.byte	0xf
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x2
	.2byte	0x8da
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"r"
	.2byte	0x8db
	.byte	0x16
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"Y"
	.2byte	0x8dc
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x93c
	.4byte	.L648
	.byte	0
	.uleb128 0x5
	.4byte	.LASF71
	.2byte	0x8a7
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8aa
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x8a7
	.byte	0x31
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x2
	.2byte	0x8a7
	.byte	0x38
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x2
	.2byte	0x8a8
	.byte	0x24
	.4byte	0x240
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x2
	.2byte	0x8a9
	.byte	0x24
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"ret"
	.2byte	0x8ab
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"XX"
	.2byte	0x8ac
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x2
	.2byte	0x84e
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9aa
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x84e
	.byte	0x30
	.4byte	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x2
	.2byte	0x84e
	.byte	0x3a
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x2
	.2byte	0x84f
	.byte	0x23
	.4byte	0x240
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x2
	.2byte	0x850
	.byte	0x23
	.4byte	0xab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.string	"ret"
	.2byte	0x852
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x2
	.2byte	0x852
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"i"
	.2byte	0x853
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"j"
	.2byte	0x853
	.byte	0xf
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"k"
	.2byte	0x853
	.byte	0x12
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"s"
	.2byte	0x853
	.byte	0x15
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"W"
	.2byte	0x854
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"R"
	.2byte	0x854
	.byte	0x14
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"T"
	.2byte	0x854
	.byte	0x17
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"A"
	.2byte	0x854
	.byte	0x1a
	.4byte	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.string	"RR"
	.2byte	0x854
	.byte	0x1d
	.4byte	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x89c
	.4byte	.L587
	.byte	0
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x831
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa15
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x831
	.byte	0x37
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"ret"
	.2byte	0x833
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"i"
	.2byte	0x834
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"r"
	.2byte	0x835
	.byte	0x16
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"p"
	.2byte	0x836
	.byte	0xe
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x847
	.4byte	.L579
	.byte	0
	.uleb128 0x5
	.4byte	.LASF75
	.2byte	0x7fa
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5a
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x7fa
	.byte	0x26
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x7fa
	.byte	0x3c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"N"
	.byte	0x2
	.2byte	0x7fa
	.byte	0x52
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x7d6
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad7
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x7d6
	.byte	0x32
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x7d7
	.byte	0x38
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"N"
	.byte	0x2
	.2byte	0x7d8
	.byte	0x38
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"ret"
	.2byte	0x7da
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"AA"
	.2byte	0x7db
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x7f0
	.4byte	.L563
	.uleb128 0x1
	.string	"cmp"
	.2byte	0x7e3
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF77
	.2byte	0x7ae
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb50
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x7ae
	.byte	0x34
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x7af
	.byte	0x3a
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"N"
	.byte	0x2
	.2byte	0x7b0
	.byte	0x3a
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"ret"
	.2byte	0x7b2
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"I"
	.2byte	0x7b3
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"G"
	.2byte	0x7b3
	.byte	0x14
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x7cb
	.4byte	.L549
	.byte	0
	.uleb128 0x5
	.4byte	.LASF78
	.2byte	0x787
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc9
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x787
	.byte	0x2a
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x788
	.byte	0x30
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"N"
	.byte	0x2
	.2byte	0x789
	.byte	0x30
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"ret"
	.2byte	0x78b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"T"
	.2byte	0x78c
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"G"
	.2byte	0x78c
	.byte	0x14
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x79a
	.4byte	.L541
	.byte	0
	.uleb128 0x5
	.4byte	.LASF79
	.2byte	0x76c
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3f
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x76c
	.byte	0x25
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"min"
	.byte	0x2
	.2byte	0x76d
	.byte	0x29
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"N"
	.byte	0x2
	.2byte	0x76e
	.byte	0x2b
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x2
	.2byte	0x76f
	.byte	0x1e
	.4byte	0x240
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x2
	.2byte	0x770
	.byte	0x1e
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"ret"
	.2byte	0x77c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF80
	.2byte	0x759
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc2
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x759
	.byte	0x2a
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x759
	.byte	0x34
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x2
	.2byte	0x75a
	.byte	0x23
	.4byte	0x240
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x2
	.2byte	0x75b
	.byte	0x23
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"ret"
	.2byte	0x75d
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x75e
	.byte	0x12
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x768
	.4byte	.L530
	.byte	0
	.uleb128 0x5
	.4byte	.LASF83
	.2byte	0x721
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd7a
	.uleb128 0x2
	.string	"G"
	.byte	0x2
	.2byte	0x721
	.byte	0x22
	.4byte	0x3bc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x721
	.byte	0x38
	.4byte	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.string	"B"
	.byte	0x2
	.2byte	0x721
	.byte	0x4e
	.4byte	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.string	"ret"
	.2byte	0x723
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"TA"
	.2byte	0x724
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"TB"
	.2byte	0x724
	.byte	0x15
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x74c
	.4byte	.L506
	.uleb128 0x1
	.string	"za"
	.2byte	0x73d
	.byte	0x12
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"zb"
	.2byte	0x73e
	.byte	0x12
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x743
	.byte	0x1c
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"zg"
	.2byte	0x749
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x5
	.4byte	.LASF85
	.2byte	0x6d8
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe52
	.uleb128 0x2
	.string	"G"
	.byte	0x2
	.2byte	0x6d8
	.byte	0x2d
	.4byte	0x3bc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.string	"I"
	.byte	0x2
	.2byte	0x6d9
	.byte	0x2d
	.4byte	0x3bc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x6da
	.byte	0x33
	.4byte	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.string	"N"
	.byte	0x2
	.2byte	0x6db
	.byte	0x33
	.4byte	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"ret"
	.2byte	0x6dd
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x6de
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"T"
	.2byte	0x6df
	.byte	0x17
	.4byte	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x6e0
	.byte	0x12
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x6e1
	.byte	0x1c
	.4byte	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x717
	.4byte	.L488
	.uleb128 0x1
	.string	"Ip"
	.2byte	0x703
	.byte	0x17
	.4byte	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"Ap"
	.2byte	0x707
	.byte	0x1d
	.4byte	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"An"
	.2byte	0x708
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x6d0
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb5
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x6d0
	.byte	0x2d
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x6d0
	.byte	0x43
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"E"
	.byte	0x2
	.2byte	0x6d1
	.byte	0x33
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"N"
	.byte	0x2
	.2byte	0x6d1
	.byte	0x49
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x6d2
	.byte	0x2d
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x5
	.4byte	.LASF91
	.2byte	0x6c9
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf18
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x6c9
	.byte	0x26
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x6c9
	.byte	0x3c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"E"
	.byte	0x2
	.2byte	0x6ca
	.byte	0x2c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"N"
	.byte	0x2
	.2byte	0x6ca
	.byte	0x42
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x6cb
	.byte	0x26
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x657
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1009
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x657
	.byte	0x3d
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x657
	.byte	0x53
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"E"
	.byte	0x2
	.2byte	0x658
	.byte	0x43
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x658
	.byte	0x4a
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.string	"N"
	.byte	0x2
	.2byte	0x659
	.byte	0x43
	.4byte	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x659
	.byte	0x53
	.4byte	0x3bc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.string	"ret"
	.2byte	0x65b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x675
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"T"
	.2byte	0x676
	.byte	0x17
	.4byte	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"RR"
	.2byte	0x67b
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x6be
	.4byte	.L456
	.uleb128 0x28
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0xfee
	.uleb128 0x1
	.string	"mm"
	.2byte	0x6aa
	.byte	0x1a
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x18
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x6b8
	.byte	0x20
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF96
	.2byte	0x61d
	.4byte	0x68
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1081
	.uleb128 0x2
	.string	"r"
	.byte	0x2
	.2byte	0x61d
	.byte	0x2b
	.4byte	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x61d
	.byte	0x41
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"b"
	.byte	0x2
	.2byte	0x61d
	.byte	0x55
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"i"
	.2byte	0x61f
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"x"
	.2byte	0x620
	.byte	0x16
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"y"
	.2byte	0x620
	.byte	0x19
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"z"
	.2byte	0x620
	.byte	0x1c
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.4byte	.LASF97
	.2byte	0x603
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10e0
	.uleb128 0x2
	.string	"R"
	.byte	0x2
	.2byte	0x603
	.byte	0x26
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x603
	.byte	0x3c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"B"
	.byte	0x2
	.2byte	0x603
	.byte	0x52
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"ret"
	.2byte	0x605
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x615
	.4byte	.L426
	.byte	0
	.uleb128 0x5
	.4byte	.LASF98
	.2byte	0x5f1
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x114d
	.uleb128 0x2
	.string	"Q"
	.byte	0x2
	.2byte	0x5f1
	.byte	0x26
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"R"
	.byte	0x2
	.2byte	0x5f1
	.byte	0x36
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x5f2
	.byte	0x2c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"b"
	.byte	0x2
	.2byte	0x5f3
	.byte	0x2a
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"B"
	.2byte	0x5f5
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"p"
	.2byte	0x5f6
	.byte	0x16
	.4byte	0x114d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x16
	.4byte	0x107
	.4byte	0x115d
	.uleb128 0x15
	.4byte	0x74
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF99
	.2byte	0x576
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1257
	.uleb128 0x2
	.string	"Q"
	.byte	0x2
	.2byte	0x576
	.byte	0x26
	.4byte	0x3bc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.string	"R"
	.byte	0x2
	.2byte	0x576
	.byte	0x36
	.4byte	0x3bc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x576
	.byte	0x4c
	.4byte	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2
	.string	"B"
	.byte	0x2
	.2byte	0x577
	.byte	0x2c
	.4byte	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1
	.string	"ret"
	.2byte	0x579
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"i"
	.2byte	0x57a
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"n"
	.2byte	0x57a
	.byte	0xf
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"t"
	.2byte	0x57a
	.byte	0x12
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"k"
	.2byte	0x57a
	.byte	0x15
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"X"
	.2byte	0x57b
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"Y"
	.2byte	0x57b
	.byte	0x14
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"Z"
	.2byte	0x57b
	.byte	0x17
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"T1"
	.2byte	0x57b
	.byte	0x1a
	.4byte	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"T2"
	.2byte	0x57b
	.byte	0x1e
	.4byte	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.string	"TP2"
	.2byte	0x57c
	.byte	0x16
	.4byte	0x1257
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x5e5
	.4byte	.L358
	.byte	0
	.uleb128 0x16
	.4byte	0x107
	.4byte	0x1267
	.uleb128 0x15
	.4byte	0x74
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x2
	.2byte	0x50f
	.byte	0x19
	.4byte	0x107
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1373
	.uleb128 0x2
	.string	"u1"
	.byte	0x2
	.2byte	0x50f
	.byte	0x3e
	.4byte	0x107
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.string	"u0"
	.byte	0x2
	.2byte	0x510
	.byte	0x3e
	.4byte	0x107
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.string	"d"
	.byte	0x2
	.2byte	0x511
	.byte	0x3e
	.4byte	0x107
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.string	"r"
	.byte	0x2
	.2byte	0x512
	.byte	0x3f
	.4byte	0x144
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0x2
	.2byte	0x517
	.byte	0x1c
	.4byte	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.4byte	.LASF102
	.byte	0x2
	.2byte	0x518
	.byte	0x1c
	.4byte	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"d0"
	.2byte	0x519
	.byte	0x16
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"d1"
	.2byte	0x519
	.byte	0x1a
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"q0"
	.2byte	0x519
	.byte	0x1e
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"q1"
	.2byte	0x519
	.byte	0x22
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"rAX"
	.2byte	0x519
	.byte	0x26
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"r0"
	.2byte	0x519
	.byte	0x2b
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF103
	.byte	0x2
	.2byte	0x519
	.byte	0x2f
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.4byte	.LASF104
	.byte	0x2
	.2byte	0x51a
	.byte	0x16
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0x2
	.2byte	0x51a
	.byte	0x1e
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"s"
	.2byte	0x51b
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x5
	.4byte	.LASF106
	.2byte	0x4ea
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13df
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x4ea
	.byte	0x26
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x4ea
	.byte	0x3c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"b"
	.byte	0x2
	.2byte	0x4ea
	.byte	0x50
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"n"
	.2byte	0x4ec
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"ret"
	.2byte	0x4f7
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x507
	.4byte	.L335
	.byte	0
	.uleb128 0x5
	.4byte	.LASF107
	.2byte	0x4ae
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1484
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x4ae
	.byte	0x26
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x4ae
	.byte	0x3c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"B"
	.byte	0x2
	.2byte	0x4ae
	.byte	0x52
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"ret"
	.2byte	0x4b0
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"i"
	.2byte	0x4b1
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"j"
	.2byte	0x4b1
	.byte	0xf
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"TA"
	.2byte	0x4b2
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"TB"
	.2byte	0x4b2
	.byte	0x15
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x4b3
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x4e0
	.4byte	.L304
	.byte	0
	.uleb128 0x5
	.4byte	.LASF109
	.2byte	0x49e
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14e3
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x49e
	.byte	0x26
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x49e
	.byte	0x3c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"b"
	.byte	0x2
	.2byte	0x49e
	.byte	0x50
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"B"
	.2byte	0x4a0
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"p"
	.2byte	0x4a1
	.byte	0x16
	.4byte	0x114d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5
	.4byte	.LASF110
	.2byte	0x48e
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1542
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x48e
	.byte	0x26
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x48e
	.byte	0x3c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"b"
	.byte	0x2
	.2byte	0x48e
	.byte	0x50
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"B"
	.2byte	0x490
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"p"
	.2byte	0x491
	.byte	0x16
	.4byte	0x114d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5
	.4byte	.LASF111
	.2byte	0x486
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1587
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x486
	.byte	0x26
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x486
	.byte	0x3c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"B"
	.byte	0x2
	.2byte	0x486
	.byte	0x52
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5
	.4byte	.LASF112
	.2byte	0x47e
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15cc
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x47e
	.byte	0x26
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x47e
	.byte	0x3c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"B"
	.byte	0x2
	.2byte	0x47e
	.byte	0x52
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x45d
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x165e
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x45d
	.byte	0x25
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x45e
	.byte	0x2b
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"B"
	.byte	0x2
	.2byte	0x45e
	.byte	0x41
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF114
	.byte	0x2
	.2byte	0x45f
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"ret"
	.2byte	0x461
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"s"
	.2byte	0x461
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x476
	.4byte	.L284
	.uleb128 0x29
	.4byte	.LLRL0
	.uleb128 0x1
	.string	"cmp"
	.2byte	0x465
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF115
	.2byte	0x42a
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16da
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x42a
	.byte	0x26
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x42a
	.byte	0x3c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"B"
	.byte	0x2
	.2byte	0x42a
	.byte	0x52
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"ret"
	.2byte	0x42c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"n"
	.2byte	0x42d
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF116
	.byte	0x2
	.2byte	0x42e
	.byte	0x16
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x456
	.4byte	.L272
	.byte	0
	.uleb128 0x5
	.4byte	.LASF117
	.2byte	0x3ed
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1777
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x3ed
	.byte	0x26
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.2byte	0x3ed
	.byte	0x3c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"B"
	.byte	0x2
	.2byte	0x3ed
	.byte	0x52
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"ret"
	.2byte	0x3ef
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"j"
	.2byte	0x3f0
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"p"
	.2byte	0x3f1
	.byte	0x17
	.4byte	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"c"
	.2byte	0x3f2
	.byte	0x16
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x422
	.4byte	.L250
	.uleb128 0x18
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1
	.string	"T"
	.2byte	0x3f5
	.byte	0x1c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF118
	.2byte	0x3dd
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17c8
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x3dd
	.byte	0x2c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"z"
	.byte	0x2
	.2byte	0x3dd
	.byte	0x40
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"Y"
	.2byte	0x3df
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"p"
	.2byte	0x3e0
	.byte	0x16
	.4byte	0x114d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF119
	.2byte	0x3ac
	.4byte	0x68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1818
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x3ac
	.byte	0x2c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"Y"
	.byte	0x2
	.2byte	0x3ac
	.byte	0x42
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"i"
	.2byte	0x3ae
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"j"
	.2byte	0x3ae
	.byte	0xf
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF120
	.2byte	0x383
	.4byte	0x68
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1868
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x383
	.byte	0x2c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"Y"
	.byte	0x2
	.2byte	0x383
	.byte	0x42
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"i"
	.2byte	0x385
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"j"
	.2byte	0x385
	.byte	0xf
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF121
	.2byte	0x378
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18a1
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x378
	.byte	0x26
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x2
	.2byte	0x378
	.byte	0x30
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF122
	.2byte	0x362
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1901
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x362
	.byte	0x26
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x2
	.2byte	0x362
	.byte	0x30
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"ret"
	.2byte	0x364
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"i"
	.2byte	0x365
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x370
	.4byte	.L200
	.byte	0
	.uleb128 0x5
	.4byte	.LASF123
	.2byte	0x359
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x194a
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x359
	.byte	0x31
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"buf"
	.byte	0x2
	.2byte	0x35a
	.byte	0x2d
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x35a
	.byte	0x39
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5
	.4byte	.LASF125
	.2byte	0x350
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1993
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x350
	.byte	0x34
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"buf"
	.byte	0x2
	.2byte	0x351
	.byte	0x30
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x351
	.byte	0x3c
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5
	.4byte	.LASF126
	.2byte	0x339
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a06
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x339
	.byte	0x2a
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"buf"
	.byte	0x2
	.2byte	0x339
	.byte	0x42
	.4byte	0x570
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x339
	.byte	0x4e
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"ret"
	.2byte	0x33b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x33c
	.byte	0x12
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x343
	.4byte	.L191
	.byte	0
	.uleb128 0x5
	.4byte	.LASF127
	.2byte	0x31e
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a79
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x31e
	.byte	0x2d
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"buf"
	.byte	0x2
	.2byte	0x31f
	.byte	0x35
	.4byte	0x570
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x31f
	.byte	0x41
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"ret"
	.2byte	0x321
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x322
	.byte	0x12
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x329
	.4byte	.L186
	.byte	0
	.uleb128 0x5
	.4byte	.LASF128
	.2byte	0x26c
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b66
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x26c
	.byte	0x31
	.4byte	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0x2
	.2byte	0x26c
	.byte	0x38
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.string	"buf"
	.byte	0x2
	.2byte	0x26d
	.byte	0x24
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x26d
	.byte	0x30
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4
	.4byte	.LASF129
	.byte	0x2
	.2byte	0x26d
	.byte	0x40
	.4byte	0x1b66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.string	"ret"
	.2byte	0x26f
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"n"
	.2byte	0x270
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"p"
	.2byte	0x271
	.byte	0xb
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"T"
	.2byte	0x272
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x2b6
	.4byte	.L178
	.uleb128 0x18
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1
	.string	"c"
	.2byte	0x299
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"i"
	.2byte	0x29a
	.byte	0x10
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"j"
	.2byte	0x29a
	.byte	0x13
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"k"
	.2byte	0x29a
	.byte	0x16
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x7b
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0x2
	.2byte	0x246
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c0a
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x246
	.byte	0x27
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0x2
	.2byte	0x246
	.byte	0x2e
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"p"
	.byte	0x2
	.2byte	0x247
	.byte	0x21
	.4byte	0x1c0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x247
	.byte	0x31
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"ret"
	.2byte	0x249
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"r"
	.2byte	0x24a
	.byte	0x16
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.4byte	.LASF131
	.byte	0x2
	.2byte	0x24b
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF132
	.byte	0x2
	.2byte	0x24c
	.byte	0xb
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x264
	.4byte	.L153
	.byte	0
	.uleb128 0x9
	.4byte	0xbc
	.uleb128 0x5
	.4byte	.LASF133
	.2byte	0x206
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cd4
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x206
	.byte	0x2a
	.4byte	0x3bc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0x2
	.2byte	0x206
	.byte	0x31
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.string	"s"
	.byte	0x2
	.2byte	0x206
	.byte	0x44
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.string	"ret"
	.2byte	0x208
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"i"
	.2byte	0x209
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"j"
	.2byte	0x209
	.byte	0xf
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0x2
	.2byte	0x209
	.byte	0x12
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"n"
	.2byte	0x209
	.byte	0x18
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF135
	.byte	0x2
	.2byte	0x20a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"d"
	.2byte	0x20b
	.byte	0x16
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"T"
	.2byte	0x20c
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x23c
	.4byte	.L128
	.byte	0
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0x2
	.2byte	0x1ee
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d1c
	.uleb128 0x2
	.string	"d"
	.byte	0x2
	.2byte	0x1ee
	.byte	0x2c
	.4byte	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0x2
	.2byte	0x1ee
	.byte	0x33
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"c"
	.byte	0x2
	.2byte	0x1ee
	.byte	0x3f
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x5
	.4byte	.LASF137
	.2byte	0x1e6
	.byte	0x8
	.4byte	0x7b
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d45
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x1e6
	.byte	0x2c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF138
	.2byte	0x1de
	.byte	0x8
	.4byte	0x7b
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d6e
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x1de
	.byte	0x2e
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF139
	.2byte	0x1ce
	.byte	0x8
	.4byte	0x7b
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1da4
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x1ce
	.byte	0x2b
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"i"
	.2byte	0x1d0
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF140
	.2byte	0x197
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e25
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x197
	.byte	0x26
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"pos"
	.byte	0x2
	.2byte	0x197
	.byte	0x30
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"val"
	.byte	0x2
	.2byte	0x197
	.byte	0x43
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1
	.string	"ret"
	.2byte	0x199
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"off"
	.2byte	0x19a
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"idx"
	.2byte	0x19b
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x1ac
	.4byte	.L102
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF141
	.2byte	0x18b
	.4byte	0x68
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e5d
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x18b
	.byte	0x2c
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"pos"
	.byte	0x2
	.2byte	0x18b
	.byte	0x36
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF142
	.2byte	0x179
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1eae
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x179
	.byte	0x23
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"z"
	.byte	0x2
	.2byte	0x179
	.byte	0x37
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"ret"
	.2byte	0x17b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x183
	.4byte	.L91
	.byte	0
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0x2
	.2byte	0x166
	.byte	0x20
	.4byte	0x107
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ed8
	.uleb128 0x2
	.string	"z"
	.byte	0x2
	.2byte	0x166
	.byte	0x3e
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF149
	.byte	0x2
	.2byte	0x15d
	.byte	0x6
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f19
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x15d
	.byte	0x24
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"Y"
	.byte	0x2
	.2byte	0x15d
	.byte	0x34
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"T"
	.2byte	0x15f
	.byte	0x11
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF144
	.2byte	0x133
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f77
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x133
	.byte	0x23
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"Y"
	.byte	0x2
	.2byte	0x133
	.byte	0x39
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"ret"
	.2byte	0x135
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"i"
	.2byte	0x136
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF70
	.2byte	0x155
	.4byte	.L83
	.byte	0
	.uleb128 0x10
	.4byte	.LASF145
	.byte	0x2
	.2byte	0x11c
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fb1
	.uleb128 0x2
	.string	"X"
	.byte	0x2
	.2byte	0x11c
	.byte	0x32
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x11c
	.byte	0x3c
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.4byte	.LASF146
	.byte	0xf0
	.4byte	0x68
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2000
	.uleb128 0x8
	.string	"X"
	.byte	0x2
	.byte	0xf0
	.byte	0x25
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF147
	.byte	0x2
	.byte	0xf0
	.byte	0x2f
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"p"
	.byte	0x2
	.byte	0xf2
	.byte	0x17
	.4byte	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"i"
	.byte	0x2
	.byte	0xf3
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF148
	.byte	0xd1
	.4byte	0x68
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2042
	.uleb128 0x8
	.string	"X"
	.byte	0x2
	.byte	0xd1
	.byte	0x23
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF147
	.byte	0x2
	.byte	0xd1
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"p"
	.byte	0x2
	.byte	0xd3
	.byte	0x17
	.4byte	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF150
	.byte	0x2
	.byte	0xbf
	.byte	0x6
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2066
	.uleb128 0x8
	.string	"X"
	.byte	0x2
	.byte	0xbf
	.byte	0x24
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF151
	.byte	0x2
	.byte	0xb5
	.byte	0x6
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x208a
	.uleb128 0x8
	.string	"X"
	.byte	0x2
	.byte	0xb5
	.byte	0x24
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF152
	.byte	0x95
	.4byte	0x68
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2100
	.uleb128 0x8
	.string	"X"
	.byte	0x2
	.byte	0x95
	.byte	0x2d
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"Y"
	.byte	0x2
	.byte	0x96
	.byte	0x2d
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x2
	.byte	0x97
	.byte	0x2e
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0xb
	.string	"ret"
	.byte	0x2
	.byte	0x99
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"s"
	.byte	0x2
	.byte	0x9a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LASF153
	.byte	0xa0
	.byte	0x1c
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LASF70
	.byte	0xab
	.4byte	.L40
	.byte	0
	.uleb128 0x19
	.4byte	.LASF154
	.byte	0x76
	.4byte	0x68
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2198
	.uleb128 0x8
	.string	"X"
	.byte	0x2
	.byte	0x76
	.byte	0x2f
	.4byte	0x3bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"Y"
	.byte	0x2
	.byte	0x77
	.byte	0x35
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF155
	.byte	0x2
	.byte	0x78
	.byte	0x30
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0xb
	.string	"ret"
	.byte	0x2
	.byte	0x7a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LASF70
	.byte	0x8b
	.4byte	.L31
	.uleb128 0x18
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x14
	.4byte	.LASF156
	.byte	0x7f
	.byte	0x20
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LASF157
	.byte	0x85
	.byte	0x20
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xb
	.string	"i"
	.byte	0x2
	.byte	0x86
	.byte	0x15
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF158
	.byte	0x39
	.4byte	0x68
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x223a
	.uleb128 0x8
	.string	"X"
	.byte	0x2
	.byte	0x39
	.byte	0x2e
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.string	"Y"
	.byte	0x2
	.byte	0x3a
	.byte	0x2e
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.string	"ret"
	.byte	0x2
	.byte	0x3b
	.byte	0x25
	.4byte	0x223a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.4byte	.LASF159
	.byte	0x3d
	.byte	0x1c
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LASF160
	.byte	0x3d
	.byte	0x2c
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF161
	.byte	0x3d
	.byte	0x3b
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF162
	.byte	0x3d
	.byte	0x4a
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"p"
	.byte	0x2
	.byte	0x59
	.byte	0x12
	.4byte	0x223f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"i"
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"lt"
	.byte	0x2
	.byte	0x5b
	.byte	0x1c
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x9
	.4byte	0x74
	.uleb128 0x16
	.4byte	0xb2
	.4byte	0x224f
	.uleb128 0x15
	.4byte	0x74
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x2
	.byte	0x30
	.byte	0x1c
	.4byte	0x3e
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2297
	.uleb128 0x13
	.4byte	.LASF164
	.byte	0x2
	.byte	0x30
	.byte	0x4a
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF165
	.byte	0x2
	.byte	0x31
	.byte	0x40
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x13
	.4byte	.LASF166
	.byte	0x2
	.byte	0x31
	.byte	0x54
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x213
	.byte	0x26
	.4byte	0x176
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22c1
	.uleb128 0x2
	.string	"x"
	.byte	0x1
	.2byte	0x213
	.byte	0x51
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x20d
	.byte	0x26
	.4byte	0x176
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22f9
	.uleb128 0x2
	.string	"x"
	.byte	0x1
	.2byte	0x20d
	.byte	0x50
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"y"
	.byte	0x1
	.2byte	0x20e
	.byte	0x50
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x207
	.byte	0x26
	.4byte	0x176
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2331
	.uleb128 0x2
	.string	"x"
	.byte	0x1
	.2byte	0x207
	.byte	0x51
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"y"
	.byte	0x1
	.2byte	0x208
	.byte	0x51
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x201
	.byte	0x26
	.4byte	0x176
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2369
	.uleb128 0x2
	.string	"x"
	.byte	0x1
	.2byte	0x201
	.byte	0x50
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"y"
	.byte	0x1
	.2byte	0x202
	.byte	0x50
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x1d0
	.byte	0x20
	.4byte	0x107
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23a5
	.uleb128 0x4
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x1d0
	.byte	0x55
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"if1"
	.byte	0x1
	.2byte	0x1d1
	.byte	0x4f
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x1c3
	.byte	0x18
	.4byte	0x74
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23e1
	.uleb128 0x4
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x1c3
	.byte	0x49
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"if1"
	.byte	0x1
	.2byte	0x1c3
	.byte	0x5d
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x1be
	.byte	0x16
	.4byte	0x7b
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x241d
	.uleb128 0x4
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x1be
	.byte	0x47
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"if1"
	.byte	0x1
	.2byte	0x1be
	.byte	0x59
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x1a2
	.byte	0x18
	.4byte	0x74
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2469
	.uleb128 0x4
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x1a2
	.byte	0x42
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"if1"
	.byte	0x1
	.2byte	0x1a3
	.byte	0x34
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"if0"
	.byte	0x1
	.2byte	0x1a4
	.byte	0x34
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF176
	.byte	0x1
	.byte	0xcd
	.byte	0x21
	.4byte	0x182
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24c1
	.uleb128 0x13
	.4byte	.LASF172
	.byte	0x1
	.byte	0xcd
	.byte	0x46
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"if1"
	.byte	0x1
	.byte	0xce
	.byte	0x41
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"if0"
	.byte	0x1
	.byte	0xcf
	.byte	0x41
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x109
	.byte	0x1c
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF178
	.byte	0x1
	.byte	0x78
	.byte	0x26
	.4byte	0x176
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2504
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0x78
	.byte	0x48
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"xo"
	.byte	0x1
	.byte	0xb8
	.byte	0x1d
	.4byte	0x18e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"y"
	.byte	0x1
	.byte	0xc0
	.byte	0x16
	.4byte	0x193
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF180
	.byte	0x1
	.byte	0x55
	.byte	0x21
	.4byte	0x182
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0x55
	.byte	0x4e
	.4byte	0x182
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
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.4byte	0x254
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
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
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
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
	.4byte	.LBB6
	.byte	0x4
	.uleb128 .LBB6-.LBB6
	.uleb128 .LBE6-.LBB6
	.byte	0x4
	.uleb128 .LBB7-.LBB6
	.uleb128 .LBE7-.LBB6
	.byte	0
.LLRL1:
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
	.4byte	.LFB18
	.uleb128 .LFE18-.LFB18
	.byte	0x7
	.4byte	.LFB21
	.uleb128 .LFE21-.LFB21
	.byte	0x7
	.4byte	.LFB22
	.uleb128 .LFE22-.LFB22
	.byte	0x7
	.4byte	.LFB24
	.uleb128 .LFE24-.LFB24
	.byte	0x7
	.4byte	.LFB31
	.uleb128 .LFE31-.LFB31
	.byte	0x7
	.4byte	.LFB32
	.uleb128 .LFE32-.LFB32
	.byte	0x7
	.4byte	.LFB33
	.uleb128 .LFE33-.LFB33
	.byte	0x7
	.4byte	.LFB34
	.uleb128 .LFE34-.LFB34
	.byte	0x7
	.4byte	.LFB40
	.uleb128 .LFE40-.LFB40
	.byte	0x7
	.4byte	.LFB41
	.uleb128 .LFE41-.LFB41
	.byte	0x7
	.4byte	.LFB42
	.uleb128 .LFE42-.LFB42
	.byte	0x7
	.4byte	.LFB43
	.uleb128 .LFE43-.LFB43
	.byte	0x7
	.4byte	.LFB44
	.uleb128 .LFE44-.LFB44
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
	.4byte	.LFB51
	.uleb128 .LFE51-.LFB51
	.byte	0x7
	.4byte	.LFB52
	.uleb128 .LFE52-.LFB52
	.byte	0x7
	.4byte	.LFB53
	.uleb128 .LFE53-.LFB53
	.byte	0x7
	.4byte	.LFB54
	.uleb128 .LFE54-.LFB54
	.byte	0x7
	.4byte	.LFB55
	.uleb128 .LFE55-.LFB55
	.byte	0x7
	.4byte	.LFB56
	.uleb128 .LFE56-.LFB56
	.byte	0x7
	.4byte	.LFB57
	.uleb128 .LFE57-.LFB57
	.byte	0x7
	.4byte	.LFB58
	.uleb128 .LFE58-.LFB58
	.byte	0x7
	.4byte	.LFB59
	.uleb128 .LFE59-.LFB59
	.byte	0x7
	.4byte	.LFB60
	.uleb128 .LFE60-.LFB60
	.byte	0x7
	.4byte	.LFB61
	.uleb128 .LFE61-.LFB61
	.byte	0x7
	.4byte	.LFB62
	.uleb128 .LFE62-.LFB62
	.byte	0x7
	.4byte	.LFB63
	.uleb128 .LFE63-.LFB63
	.byte	0x7
	.4byte	.LFB64
	.uleb128 .LFE64-.LFB64
	.byte	0x7
	.4byte	.LFB65
	.uleb128 .LFE65-.LFB65
	.byte	0x7
	.4byte	.LFB66
	.uleb128 .LFE66-.LFB66
	.byte	0x7
	.4byte	.LFB67
	.uleb128 .LFE67-.LFB67
	.byte	0x7
	.4byte	.LFB68
	.uleb128 .LFE68-.LFB68
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
	.4byte	.LFB72
	.uleb128 .LFE72-.LFB72
	.byte	0x7
	.4byte	.LFB73
	.uleb128 .LFE73-.LFB73
	.byte	0x7
	.4byte	.LFB74
	.uleb128 .LFE74-.LFB74
	.byte	0x7
	.4byte	.LFB75
	.uleb128 .LFE75-.LFB75
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF152:
	.string	"mbedtls_mpi_safe_cond_swap"
.LASF25:
	.string	"gcd_pairs"
.LASF120:
	.string	"mbedtls_mpi_cmp_abs"
.LASF169:
	.string	"mbedtls_ct_bool_and"
.LASF173:
	.string	"mbedtls_ct_uint_if_else_0"
.LASF44:
	.string	"mbedtls_mpi_core_sub"
.LASF123:
	.string	"mbedtls_mpi_write_binary"
.LASF21:
	.string	"mbedtls_ct_condition_t"
.LASF53:
	.string	"strlen"
.LASF151:
	.string	"mbedtls_mpi_init"
.LASF41:
	.string	"mbedtls_mpi_core_mla"
.LASF73:
	.string	"mpi_miller_rabin"
.LASF66:
	.string	"flags"
.LASF163:
	.string	"mbedtls_ct_mpi_sign_if"
.LASF10:
	.string	"unsigned int"
.LASF176:
	.string	"mbedtls_ct_if"
.LASF62:
	.string	"mbedtls_mpi_self_test"
.LASF139:
	.string	"mbedtls_mpi_lsb"
.LASF132:
	.string	"p_end"
.LASF40:
	.string	"mbedtls_mpi_core_clz"
.LASF111:
	.string	"mbedtls_mpi_sub_mpi"
.LASF58:
	.string	"mbedtls_zeroize_and_free"
.LASF19:
	.string	"MBEDTLS_MPI_GEN_PRIME_FLAG_DH"
.LASF16:
	.string	"mbedtls_mpi_sint"
.LASF37:
	.string	"mbedtls_mpi_core_get_mont_r2_unsafe"
.LASF57:
	.string	"calloc"
.LASF178:
	.string	"mbedtls_ct_bool"
.LASF89:
	.string	"mbedtls_mpi_exp_mod_unsafe"
.LASF71:
	.string	"mbedtls_mpi_is_prime_ext"
.LASF129:
	.string	"olen"
.LASF117:
	.string	"mbedtls_mpi_add_abs"
.LASF31:
	.string	"mbedtls_mpi_core_check_zero_ct"
.LASF85:
	.string	"mbedtls_mpi_gcd_modinv_odd"
.LASF14:
	.string	"uint32_t"
.LASF130:
	.string	"mpi_write_hlp"
.LASF113:
	.string	"add_sub_mpi"
.LASF52:
	.string	"memmove"
.LASF72:
	.string	"count"
.LASF116:
	.string	"carry"
.LASF43:
	.string	"mbedtls_mpi_core_sub_int"
.LASF162:
	.string	"result"
.LASF127:
	.string	"mbedtls_mpi_read_binary_le"
.LASF9:
	.string	"long long unsigned int"
.LASF95:
	.string	"is_x_non_zero"
.LASF70:
	.string	"cleanup"
.LASF167:
	.string	"mbedtls_ct_bool_not"
.LASF168:
	.string	"mbedtls_ct_bool_or"
.LASF68:
	.string	"p_rng"
.LASF79:
	.string	"mbedtls_mpi_random"
.LASF154:
	.string	"mbedtls_mpi_safe_cond_assign"
.LASF92:
	.string	"mbedtls_mpi_exp_mod_optionally_safe"
.LASF33:
	.string	"mbedtls_mpi_core_exp_mod"
.LASF145:
	.string	"mbedtls_mpi_resize_clear"
.LASF161:
	.string	"Y_is_negative"
.LASF17:
	.string	"mbedtls_mpi_uint"
.LASF112:
	.string	"mbedtls_mpi_add_mpi"
.LASF12:
	.string	"size_t"
.LASF135:
	.string	"sign"
.LASF164:
	.string	"cond"
.LASF102:
	.string	"uint_halfword_mask"
.LASF98:
	.string	"mbedtls_mpi_div_int"
.LASF29:
	.string	"free"
.LASF153:
	.string	"do_swap"
.LASF100:
	.string	"mbedtls_int_div_int"
.LASF80:
	.string	"mbedtls_mpi_fill_random"
.LASF51:
	.string	"mbedtls_mpi_core_read_le"
.LASF134:
	.string	"slen"
.LASF104:
	.string	"u0_msw"
.LASF143:
	.string	"mpi_sint_abs"
.LASF15:
	.string	"char"
.LASF159:
	.string	"different_sign"
.LASF133:
	.string	"mbedtls_mpi_read_string"
.LASF136:
	.string	"mpi_get_digit"
.LASF144:
	.string	"mbedtls_mpi_copy"
.LASF124:
	.string	"buflen"
.LASF59:
	.string	"mbedtls_mpi_core_cond_swap"
.LASF91:
	.string	"mbedtls_mpi_exp_mod"
.LASF87:
	.string	"T_factor"
.LASF165:
	.string	"sign1"
.LASF166:
	.string	"sign2"
.LASF49:
	.string	"mbedtls_mpi_core_write_le"
.LASF103:
	.string	"quotient"
.LASF83:
	.string	"mbedtls_mpi_gcd"
.LASF27:
	.string	"mbedtls_mpi_core_random"
.LASF84:
	.string	"swap"
.LASF32:
	.string	"mbedtls_mpi_core_from_mont_rep"
.LASF8:
	.string	"long long int"
.LASF88:
	.string	"zero"
.LASF26:
	.string	"printf"
.LASF20:
	.string	"MBEDTLS_MPI_GEN_PRIME_FLAG_LOW_ERR"
.LASF107:
	.string	"mbedtls_mpi_mul_mpi"
.LASF65:
	.string	"nbits"
.LASF30:
	.string	"mbedtls_mpi_core_gcd_modinv_odd"
.LASF55:
	.string	"memset"
.LASF94:
	.string	"T_limbs"
.LASF81:
	.string	"size"
.LASF155:
	.string	"assign"
.LASF146:
	.string	"mbedtls_mpi_shrink"
.LASF86:
	.string	"local_g"
.LASF47:
	.string	"mbedtls_mpi_core_shift_l"
.LASF69:
	.string	"rounds"
.LASF110:
	.string	"mbedtls_mpi_add_int"
.LASF46:
	.string	"mbedtls_mpi_core_shift_r"
.LASF140:
	.string	"mbedtls_mpi_set_bit"
.LASF150:
	.string	"mbedtls_mpi_free"
.LASF38:
	.string	"mbedtls_mpi_core_exp_mod_working_limbs"
.LASF11:
	.string	"long double"
.LASF77:
	.string	"mbedtls_mpi_inv_mod_even_in_range"
.LASF75:
	.string	"mbedtls_mpi_inv_mod"
.LASF42:
	.string	"mbedtls_mpi_core_mul"
.LASF76:
	.string	"mbedtls_mpi_inv_mod_even"
.LASF24:
	.string	"small_prime_gaps"
.LASF157:
	.string	"do_not_assign"
.LASF82:
	.string	"limbs"
.LASF63:
	.string	"mbedtls_mpi_gen_prime"
.LASF4:
	.string	"short int"
.LASF142:
	.string	"mbedtls_mpi_lset"
.LASF156:
	.string	"do_assign"
.LASF109:
	.string	"mbedtls_mpi_sub_int"
.LASF97:
	.string	"mbedtls_mpi_mod_mpi"
.LASF6:
	.string	"long int"
.LASF34:
	.string	"mbedtls_mpi_core_exp_mod_unsafe"
.LASF119:
	.string	"mbedtls_mpi_cmp_mpi"
.LASF131:
	.string	"length"
.LASF171:
	.string	"mbedtls_ct_mpi_uint_if_else_0"
.LASF35:
	.string	"mbedtls_mpi_core_to_mont_rep"
.LASF23:
	.string	"mbedtls_ct_int_t"
.LASF175:
	.string	"mbedtls_ct_uint_if"
.LASF99:
	.string	"mbedtls_mpi_div_mpi"
.LASF128:
	.string	"mbedtls_mpi_write_string"
.LASF115:
	.string	"mbedtls_mpi_sub_abs"
.LASF50:
	.string	"mbedtls_mpi_core_read_be"
.LASF74:
	.string	"mpi_check_small_factors"
.LASF101:
	.string	"radix"
.LASF67:
	.string	"f_rng"
.LASF125:
	.string	"mbedtls_mpi_write_binary_le"
.LASF138:
	.string	"mbedtls_mpi_bitlen"
.LASF45:
	.string	"mbedtls_mpi_core_add"
.LASF122:
	.string	"mbedtls_mpi_shift_l"
.LASF121:
	.string	"mbedtls_mpi_shift_r"
.LASF7:
	.string	"long unsigned int"
.LASF180:
	.string	"mbedtls_ct_compiler_opaque"
.LASF174:
	.string	"mbedtls_ct_size_if_else_0"
.LASF160:
	.string	"X_is_negative"
.LASF13:
	.string	"int32_t"
.LASF106:
	.string	"mbedtls_mpi_mul_int"
.LASF48:
	.string	"mbedtls_mpi_core_write_be"
.LASF147:
	.string	"nblimbs"
.LASF3:
	.string	"unsigned char"
.LASF141:
	.string	"mbedtls_mpi_get_bit"
.LASF108:
	.string	"result_is_zero"
.LASF126:
	.string	"mbedtls_mpi_read_binary"
.LASF149:
	.string	"mbedtls_mpi_swap"
.LASF61:
	.string	"mbedtls_mpi_core_lt_ct"
.LASF177:
	.string	"not_cond"
.LASF148:
	.string	"mbedtls_mpi_grow"
.LASF93:
	.string	"E_public"
.LASF170:
	.string	"mbedtls_ct_bool_ne"
.LASF158:
	.string	"mbedtls_mpi_lt_mpi_ct"
.LASF36:
	.string	"mbedtls_mpi_core_montmul_init"
.LASF22:
	.string	"mbedtls_ct_uint_t"
.LASF114:
	.string	"flip_B"
.LASF64:
	.string	"verbose"
.LASF2:
	.string	"signed char"
.LASF18:
	.string	"mbedtls_mpi"
.LASF5:
	.string	"short unsigned int"
.LASF137:
	.string	"mbedtls_mpi_size"
.LASF56:
	.string	"memcpy"
.LASF78:
	.string	"mbedtls_mpi_inv_mod_odd"
.LASF60:
	.string	"mbedtls_mpi_core_cond_assign"
.LASF179:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF54:
	.string	"mbedtls_mpi_core_bitlen"
.LASF96:
	.string	"mbedtls_mpi_mod_int"
.LASF90:
	.string	"prec_RR"
.LASF118:
	.string	"mbedtls_mpi_cmp_int"
.LASF172:
	.string	"condition"
.LASF39:
	.string	"mbedtls_platform_zeroize"
.LASF105:
	.string	"u0_lsw"
.LASF28:
	.string	"mbedtls_mpi_core_fill_random"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/bignum.c"
	.globl	__ctzsi2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
