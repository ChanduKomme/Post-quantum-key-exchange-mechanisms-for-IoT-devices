	.file	"bignum_core.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/bignum_core.c"
	.section	.text.mbedtls_ct_compiler_opaque,"ax",@progbits
	.align	1
	.type	mbedtls_ct_compiler_opaque, @function
mbedtls_ct_compiler_opaque:
.LFB12:
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
.LFE12:
	.size	mbedtls_ct_compiler_opaque, .-mbedtls_ct_compiler_opaque
	.section	.text.mbedtls_ct_bool,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool, @function
mbedtls_ct_bool:
.LFB13:
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
.LFE13:
	.size	mbedtls_ct_bool, .-mbedtls_ct_bool
	.section	.text.mbedtls_ct_if,"ax",@progbits
	.align	1
	.type	mbedtls_ct_if, @function
mbedtls_ct_if:
.LFB14:
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
.LFE14:
	.size	mbedtls_ct_if, .-mbedtls_ct_if
	.section	.text.mbedtls_ct_uint_lt,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_lt, @function
mbedtls_ct_uint_lt:
.LFB15:
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
.LFE15:
	.size	mbedtls_ct_uint_lt, .-mbedtls_ct_uint_lt
	.section	.text.mbedtls_ct_uint_ne,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_ne, @function
mbedtls_ct_uint_ne:
.LFB16:
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
.LFE16:
	.size	mbedtls_ct_uint_ne, .-mbedtls_ct_uint_ne
	.section	.text.mbedtls_ct_mpi_uint_if,"ax",@progbits
	.align	1
	.type	mbedtls_ct_mpi_uint_if, @function
mbedtls_ct_mpi_uint_if:
.LFB21:
	.loc 1 438 1
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
	.loc 1 439 31
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ct_if
	mv	a5,a0
	.loc 1 442 1
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
	.size	mbedtls_ct_mpi_uint_if, .-mbedtls_ct_mpi_uint_if
	.section	.text.mbedtls_ct_mpi_uint_if_else_0,"ax",@progbits
	.align	1
	.type	mbedtls_ct_mpi_uint_if_else_0, @function
mbedtls_ct_mpi_uint_if_else_0:
.LFB25:
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
.LFE25:
	.size	mbedtls_ct_mpi_uint_if_else_0, .-mbedtls_ct_mpi_uint_if_else_0
	.section	.text.mbedtls_ct_uint_eq,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_eq, @function
mbedtls_ct_uint_eq:
.LFB28:
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
.LFE28:
	.size	mbedtls_ct_uint_eq, .-mbedtls_ct_uint_eq
	.section	.text.mbedtls_ct_uint_ge,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_ge, @function
mbedtls_ct_uint_ge:
.LFB30:
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
.LFE30:
	.size	mbedtls_ct_uint_ge, .-mbedtls_ct_uint_ge
	.section	.text.mbedtls_ct_bool_and,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool_and, @function
mbedtls_ct_bool_and:
.LFB33:
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
.LFE33:
	.size	mbedtls_ct_bool_and, .-mbedtls_ct_bool_and
	.section	.text.mbedtls_ct_bool_or,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool_or, @function
mbedtls_ct_bool_or:
.LFB34:
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
.LFE34:
	.size	mbedtls_ct_bool_or, .-mbedtls_ct_bool_or
	.section	.text.mbedtls_ct_bool_not,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool_not, @function
mbedtls_ct_bool_not:
.LFB35:
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
.LFE35:
	.size	mbedtls_ct_bool_not, .-mbedtls_ct_bool_not
	.section	.text.mbedtls_mpi_core_clz,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_clz
	.type	mbedtls_mpi_core_clz, @function
mbedtls_mpi_core_clz:
.LFB40:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/bignum_core.c"
	.loc 2 26 1
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
	.loc 2 37 21
	lw	a0,-20(s0)
	call	__clzsi2
	mv	a5,a0
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
	.size	mbedtls_mpi_core_clz, .-mbedtls_mpi_core_clz
	.section	.text.mbedtls_mpi_core_bitlen,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_bitlen
	.type	mbedtls_mpi_core_bitlen, @function
mbedtls_mpi_core_bitlen:
.LFB41:
	.loc 2 55 1
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
	.loc 2 59 15
	lw	a5,-40(s0)
	.loc 2 59 12
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 2 59 5
	j	.L28
.L31:
	.loc 2 60 14
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 60 12
	beq	a5,zero,.L29
	.loc 2 61 75
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 2 61 53
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_mpi_core_clz
	mv	a4,a0
	.loc 2 61 15 discriminator 1
	li	a5,32
	sub	a5,a5,a4
	sw	a5,-24(s0)
	.loc 2 62 23
	lw	a5,-20(s0)
	slli	a4,a5,5
	.loc 2 62 60
	lw	a5,-24(s0)
	add	a5,a4,a5
	j	.L30
.L29:
	.loc 2 59 44 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L28:
	.loc 2 59 37 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L31
	.loc 2 66 12
	li	a5,0
.L30:
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
.LFE41:
	.size	mbedtls_mpi_core_bitlen, .-mbedtls_mpi_core_bitlen
	.section	.text.mpi_bigendian_to_host,"ax",@progbits
	.align	1
	.type	mpi_bigendian_to_host, @function
mpi_bigendian_to_host:
.LFB42:
	.loc 2 70 1
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
	.loc 2 76 16
	lw	a0,-20(s0)
	call	__bswapsi2
	mv	a5,a0
	.loc 2 81 1
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
.LFE42:
	.size	mpi_bigendian_to_host, .-mpi_bigendian_to_host
	.section	.text.mbedtls_mpi_core_bigendian_to_host,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_bigendian_to_host
	.type	mbedtls_mpi_core_bigendian_to_host, @function
mbedtls_mpi_core_bigendian_to_host:
.LFB43:
	.loc 2 85 1
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
	.loc 2 88 8
	lw	a5,-40(s0)
	beq	a5,zero,.L39
	.loc 2 101 24
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 101 48
	lw	a4,-40(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	.loc 2 101 44
	lw	a4,-36(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 101 5
	j	.L37
.L38:
.LBB2:
	.loc 2 107 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mpi_bigendian_to_host
	sw	a0,-28(s0)
	.loc 2 108 26
	lw	a5,-24(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mpi_bigendian_to_host
	mv	a4,a0
	.loc 2 108 24 discriminator 1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 2 109 25
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
.LBE2:
	.loc 2 103 23
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 2 103 41
	lw	a5,-24(s0)
	addi	a5,a5,-4
	sw	a5,-24(s0)
.L37:
	.loc 2 102 24
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bleu	a4,a5,.L38
	j	.L34
.L39:
	.loc 2 89 9
	nop
.L34:
	.loc 2 111 1
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
	.size	mbedtls_mpi_core_bigendian_to_host, .-mbedtls_mpi_core_bigendian_to_host
	.section	.text.mbedtls_mpi_core_uint_le_mpi,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_uint_le_mpi
	.type	mbedtls_mpi_core_uint_le_mpi, @function
mbedtls_mpi_core_uint_le_mpi:
.LFB44:
	.loc 2 118 1
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
	.loc 2 120 41
	lw	a5,-40(s0)
	lw	a5,0(a5)
	lw	a1,-36(s0)
	mv	a0,a5
	call	mbedtls_ct_uint_ge
	sw	a0,-28(s0)
	.loc 2 123 66
	li	a0,0
	call	mbedtls_ct_compiler_opaque
	sw	a0,-20(s0)
.LBB3:
	.loc 2 124 17
	li	a5,1
	sw	a5,-24(s0)
	.loc 2 124 5
	j	.L41
.L42:
	.loc 2 125 68
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 2 125 21
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_ct_bool
	mv	a5,a0
	.loc 2 125 21 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-20(s0)
	call	mbedtls_ct_bool_or
	sw	a0,-20(s0)
	.loc 2 124 38 is_stmt 1 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L41:
	.loc 2 124 26 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L42
.LBE3:
	.loc 2 130 12
	lw	a1,-28(s0)
	lw	a0,-20(s0)
	call	mbedtls_ct_bool_or
	mv	a5,a0
	.loc 2 131 1
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
.LFE44:
	.size	mbedtls_mpi_core_uint_le_mpi, .-mbedtls_mpi_core_uint_le_mpi
	.section	.text.mbedtls_mpi_core_lt_ct,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_lt_ct
	.type	mbedtls_mpi_core_lt_ct, @function
mbedtls_mpi_core_lt_ct:
.LFB45:
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
	.loc 2 137 60
	li	a0,0
	call	mbedtls_ct_compiler_opaque
	sw	a0,-20(s0)
	.loc 2 137 125 discriminator 1
	li	a0,0
	call	mbedtls_ct_compiler_opaque
	sw	a0,-32(s0)
	.loc 2 137 190 discriminator 2
	li	a0,0
	call	mbedtls_ct_compiler_opaque
	sw	a0,-24(s0)
.LBB4:
	.loc 2 139 17
	lw	a5,-44(s0)
	sw	a5,-28(s0)
	.loc 2 139 5
	j	.L45
.L46:
	.loc 2 147 36
	lw	a4,-28(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 2 147 16
	lw	a3,0(a5)
	.loc 2 147 46
	lw	a4,-28(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 2 147 16
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	mbedtls_ct_uint_lt
	sw	a0,-32(s0)
	.loc 2 148 16
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	mbedtls_ct_bool_or
	sw	a0,-24(s0)
	.loc 2 156 36
	lw	a4,-28(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 2 156 16
	lw	a3,0(a5)
	.loc 2 156 46
	lw	a4,-28(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 2 156 16
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	mbedtls_ct_uint_lt
	sw	a0,-32(s0)
	.loc 2 157 15
	lw	a0,-24(s0)
	call	mbedtls_ct_bool_not
	mv	a5,a0
	.loc 2 157 15 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-32(s0)
	call	mbedtls_ct_bool_and
	mv	a5,a0
	.loc 2 157 15 discriminator 2
	mv	a1,a5
	lw	a0,-20(s0)
	call	mbedtls_ct_bool_or
	sw	a0,-20(s0)
	.loc 2 158 16 is_stmt 1
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	mbedtls_ct_bool_or
	sw	a0,-24(s0)
	.loc 2 139 36 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
.L45:
	.loc 2 139 30 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L46
.LBE4:
	.loc 2 166 12
	lw	a5,-20(s0)
	.loc 2 167 1
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
.LFE45:
	.size	mbedtls_mpi_core_lt_ct, .-mbedtls_mpi_core_lt_ct
	.section	.text.mbedtls_mpi_core_cond_assign,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_cond_assign
	.type	mbedtls_mpi_core_cond_assign, @function
mbedtls_mpi_core_cond_assign:
.LFB46:
	.loc 2 173 1
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
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	.loc 2 174 8
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	beq	a4,a5,.L53
.LBB5:
	.loc 2 183 17
	sw	zero,-20(s0)
	.loc 2 183 5
	j	.L51
.L52:
	.loc 2 184 48
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 2 184 16
	lw	a3,0(a5)
	.loc 2 184 54
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 2 184 16
	lw	a2,0(a5)
	.loc 2 184 10
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	s1,a4,a5
	.loc 2 184 16
	mv	a1,a3
	lw	a0,-48(s0)
	call	mbedtls_ct_mpi_uint_if
	mv	a5,a0
	.loc 2 184 14 discriminator 1
	sw	a5,0(s1)
	.loc 2 183 36 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L51:
	.loc 2 183 26 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L52
	j	.L48
.L53:
.LBE5:
	.loc 2 175 9
	nop
.L48:
	.loc 2 186 1
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
.LFE46:
	.size	mbedtls_mpi_core_cond_assign, .-mbedtls_mpi_core_cond_assign
	.section	.text.mbedtls_mpi_core_cond_swap,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_cond_swap
	.type	mbedtls_mpi_core_cond_swap, @function
mbedtls_mpi_core_cond_swap:
.LFB47:
	.loc 2 192 1
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
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	.loc 2 193 8
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	beq	a4,a5,.L59
.LBB6:
	.loc 2 197 17
	sw	zero,-20(s0)
	.loc 2 197 5
	j	.L57
.L58:
.LBB7:
	.loc 2 198 33
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 2 198 26
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 199 46
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 2 199 16
	lw	a3,0(a5)
	.loc 2 199 52
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 2 199 16
	lw	a2,0(a5)
	.loc 2 199 10
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	s1,a4,a5
	.loc 2 199 16
	mv	a1,a3
	lw	a0,-48(s0)
	call	mbedtls_ct_mpi_uint_if
	mv	a5,a0
	.loc 2 199 14 discriminator 1
	sw	a5,0(s1)
	.loc 2 200 51
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 2 200 16
	lw	a3,0(a5)
	.loc 2 200 10
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	s1,a4,a5
	.loc 2 200 16
	mv	a2,a3
	lw	a1,-24(s0)
	lw	a0,-48(s0)
	call	mbedtls_ct_mpi_uint_if
	mv	a5,a0
	.loc 2 200 14 discriminator 1
	sw	a5,0(s1)
.LBE7:
	.loc 2 197 36 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L57:
	.loc 2 197 26 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L58
	j	.L54
.L59:
.LBE6:
	.loc 2 194 9
	nop
.L54:
	.loc 2 202 1
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
.LFE47:
	.size	mbedtls_mpi_core_cond_swap, .-mbedtls_mpi_core_cond_swap
	.section	.text.mbedtls_mpi_core_read_le,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_read_le
	.type	mbedtls_mpi_core_read_le, @function
mbedtls_mpi_core_read_le:
.LFB48:
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
	sw	a3,-48(s0)
	.loc 2 209 42
	lw	a5,-48(s0)
	srli	a5,a5,2
	.loc 2 209 89
	lw	a4,-48(s0)
	andi	a4,a4,3
	.loc 2 209 118
	snez	a4,a4
	andi	a4,a4,0xff
	.loc 2 209 18
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 2 211 8
	lw	a4,-40(s0)
	lw	a5,-24(s0)
	bgeu	a4,a5,.L61
	.loc 2 212 16
	li	a5,-8
	j	.L62
.L61:
	.loc 2 215 8
	lw	a5,-36(s0)
	beq	a5,zero,.L63
	.loc 2 216 9
	lw	a5,-40(s0)
	slli	a5,a5,2
	mv	a2,a5
	li	a1,0
	lw	a0,-36(s0)
	call	memset
.LBB8:
	.loc 2 218 21
	sw	zero,-20(s0)
	.loc 2 218 9
	j	.L64
.L65:
.LBB9:
	.loc 2 219 63
	lw	a5,-20(s0)
	slli	a5,a5,3
	.loc 2 219 20
	andi	a5,a5,24
	sw	a5,-28(s0)
	.loc 2 220 14
	lw	a5,-20(s0)
	andi	a5,a5,-4
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 2 220 75
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 2 220 51
	mv	a4,a5
	.loc 2 220 80
	lw	a5,-28(s0)
	sll	a4,a4,a5
	.loc 2 220 14
	lw	a5,-20(s0)
	andi	a5,a5,-4
	lw	a2,-36(s0)
	add	a5,a2,a5
	.loc 2 220 47
	or	a4,a3,a4
	sw	a4,0(a5)
.LBE9:
	.loc 2 218 47 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L64:
	.loc 2 218 30 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	bltu	a4,a5,.L65
.L63:
.LBE8:
	.loc 2 224 12
	li	a5,0
.L62:
	.loc 2 225 1
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
.LFE48:
	.size	mbedtls_mpi_core_read_le, .-mbedtls_mpi_core_read_le
	.section	.text.mbedtls_mpi_core_read_be,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_read_be
	.type	mbedtls_mpi_core_read_be, @function
mbedtls_mpi_core_read_be:
.LFB49:
	.loc 2 231 1
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
	.loc 2 232 42
	lw	a5,-48(s0)
	srli	a5,a5,2
	.loc 2 232 89
	lw	a4,-48(s0)
	andi	a4,a4,3
	.loc 2 232 118
	snez	a4,a4
	andi	a4,a4,0xff
	.loc 2 232 18
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 2 234 8
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L67
	.loc 2 235 16
	li	a5,-8
	j	.L68
.L67:
	.loc 2 240 8
	lw	a5,-40(s0)
	bne	a5,zero,.L69
	.loc 2 241 16
	li	a5,0
	j	.L68
.L69:
	.loc 2 244 5
	lw	a5,-40(s0)
	slli	a5,a5,2
	mv	a2,a5
	li	a1,0
	lw	a0,-36(s0)
	call	memset
	.loc 2 247 8
	lw	a5,-48(s0)
	beq	a5,zero,.L70
.LBB10:
	.loc 2 248 36
	lw	a5,-40(s0)
	slli	a4,a5,2
	.loc 2 248 16
	lw	a5,-48(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 249 24
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	.loc 2 250 19
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 250 9
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	memcpy
.L70:
.LBE10:
	.loc 2 253 5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_core_bigendian_to_host
	.loc 2 255 12
	li	a5,0
.L68:
	.loc 2 256 1
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
	.size	mbedtls_mpi_core_read_be, .-mbedtls_mpi_core_read_be
	.section	.text.mbedtls_mpi_core_write_le,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_write_le
	.type	mbedtls_mpi_core_write_le, @function
mbedtls_mpi_core_write_le:
.LFB50:
	.loc 2 262 1
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
	.loc 2 263 12
	lw	a5,-40(s0)
	slli	a5,a5,2
	sw	a5,-32(s0)
	.loc 2 266 8
	lw	a4,-32(s0)
	lw	a5,-48(s0)
	bgeu	a4,a5,.L72
	.loc 2 267 23
	lw	a5,-32(s0)
	sw	a5,-20(s0)
	j	.L73
.L72:
	.loc 2 269 23
	lw	a5,-48(s0)
	sw	a5,-20(s0)
.LBB11:
	.loc 2 273 21
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 2 273 9
	j	.L74
.L77:
	.loc 2 274 22
	lw	a5,-24(s0)
	andi	a5,a5,-4
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 274 66
	lw	a5,-24(s0)
	andi	a5,a5,3
	.loc 2 274 96
	slli	a5,a5,3
	.loc 2 274 57
	srl	a5,a4,a5
	.loc 2 274 102
	andi	a5,a5,255
	.loc 2 274 16
	beq	a5,zero,.L75
	.loc 2 275 24
	li	a5,-8
	j	.L76
.L75:
	.loc 2 273 59 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L74:
	.loc 2 273 42 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	bltu	a4,a5,.L77
.L73:
.LBE11:
.LBB12:
	.loc 2 280 17
	sw	zero,-28(s0)
	.loc 2 280 5
	j	.L78
.L79:
	.loc 2 281 26
	lw	a5,-28(s0)
	andi	a5,a5,-4
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 281 70
	lw	a5,-28(s0)
	andi	a5,a5,3
	.loc 2 281 100
	slli	a5,a5,3
	.loc 2 281 61
	srl	a3,a4,a5
	.loc 2 281 15
	lw	a4,-44(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 2 281 19
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 2 280 44 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L78:
	.loc 2 280 26 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	bltu	a4,a5,.L79
.LBE12:
	.loc 2 284 8
	lw	a4,-32(s0)
	lw	a5,-48(s0)
	bgeu	a4,a5,.L80
	.loc 2 286 23
	lw	a4,-44(s0)
	lw	a5,-32(s0)
	add	a3,a4,a5
	.loc 2 286 9
	lw	a4,-48(s0)
	lw	a5,-32(s0)
	sub	a5,a4,a5
	mv	a2,a5
	li	a1,0
	mv	a0,a3
	call	memset
.L80:
	.loc 2 289 12
	li	a5,0
.L76:
	.loc 2 290 1
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
.LFE50:
	.size	mbedtls_mpi_core_write_le, .-mbedtls_mpi_core_write_le
	.section	.text.mbedtls_mpi_core_write_be,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_write_be
	.type	mbedtls_mpi_core_write_be, @function
mbedtls_mpi_core_write_be:
.LFB51:
	.loc 2 296 1
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
	.loc 2 301 18
	lw	a5,-56(s0)
	slli	a5,a5,2
	sw	a5,-36(s0)
	.loc 2 303 8
	lw	a4,-36(s0)
	lw	a5,-64(s0)
	bgeu	a4,a5,.L82
	.loc 2 309 23
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 310 36
	lw	a4,-64(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	.loc 2 310 11
	lw	a4,-60(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 311 9
	lw	a4,-64(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	mv	a2,a5
	li	a1,0
	lw	a0,-60(s0)
	call	memset
	j	.L83
.L82:
	.loc 2 315 23
	lw	a5,-64(s0)
	sw	a5,-20(s0)
	.loc 2 316 11
	lw	a5,-60(s0)
	sw	a5,-24(s0)
.LBB13:
	.loc 2 317 21
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	.loc 2 317 9
	j	.L84
.L87:
	.loc 2 318 22
	lw	a5,-28(s0)
	andi	a5,a5,-4
	lw	a4,-52(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 318 66
	lw	a5,-28(s0)
	andi	a5,a5,3
	.loc 2 318 96
	slli	a5,a5,3
	.loc 2 318 57
	srl	a5,a4,a5
	.loc 2 318 102
	andi	a5,a5,255
	.loc 2 318 16
	beq	a5,zero,.L85
	.loc 2 319 24
	li	a5,-8
	j	.L86
.L85:
	.loc 2 317 59 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L84:
	.loc 2 317 42 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bltu	a4,a5,.L87
.L83:
.LBE13:
.LBB14:
	.loc 2 324 17
	sw	zero,-32(s0)
	.loc 2 324 5
	j	.L88
.L89:
	.loc 2 325 41
	lw	a5,-32(s0)
	andi	a5,a5,-4
	lw	a4,-52(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 325 85
	lw	a5,-32(s0)
	andi	a5,a5,3
	.loc 2 325 115
	slli	a5,a5,3
	.loc 2 325 76
	srl	a3,a4,a5
	.loc 2 325 25
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	sub	a5,a4,a5
	.loc 2 325 10
	addi	a5,a5,-1
	lw	a4,-24(s0)
	add	a5,a4,a5
	.loc 2 325 34
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 2 324 44 discriminator 3
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L88:
	.loc 2 324 26 discriminator 1
	lw	a4,-32(s0)
	lw	a5,-20(s0)
	bltu	a4,a5,.L89
.LBE14:
	.loc 2 328 12
	li	a5,0
.L86:
	.loc 2 329 1
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
.LFE51:
	.size	mbedtls_mpi_core_write_be, .-mbedtls_mpi_core_write_be
	.section	.text.mbedtls_mpi_core_shift_r,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_shift_r
	.type	mbedtls_mpi_core_shift_r, @function
mbedtls_mpi_core_shift_r:
.LFB52:
	.loc 2 333 1
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
	.loc 2 335 22
	sw	zero,-24(s0)
	.loc 2 337 8
	lw	a5,-60(s0)
	srli	a5,a5,5
	sw	a5,-28(s0)
	.loc 2 338 8
	lw	a5,-60(s0)
	andi	a5,a5,31
	sw	a5,-32(s0)
	.loc 2 340 8
	lw	a4,-28(s0)
	lw	a5,-56(s0)
	bgtu	a4,a5,.L91
	.loc 2 340 20 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-56(s0)
	bne	a4,a5,.L92
	.loc 2 340 36 discriminator 2
	lw	a5,-32(s0)
	beq	a5,zero,.L92
.L91:
	.loc 2 341 9
	lw	a5,-56(s0)
	slli	a5,a5,2
	mv	a2,a5
	li	a1,0
	lw	a0,-52(s0)
	call	memset
	.loc 2 342 9
	j	.L90
.L92:
	.loc 2 348 8
	lw	a5,-28(s0)
	beq	a5,zero,.L94
	.loc 2 349 16
	sw	zero,-20(s0)
	.loc 2 349 9
	j	.L95
.L96:
	.loc 2 350 24
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 2 350 21
	slli	a5,a5,2
	lw	a4,-52(s0)
	add	a4,a4,a5
	.loc 2 350 14
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a3,-52(s0)
	add	a5,a3,a5
	.loc 2 350 21
	lw	a4,0(a4)
	.loc 2 350 18
	sw	a4,0(a5)
	.loc 2 349 38 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L95:
	.loc 2 349 31 discriminator 1
	lw	a4,-56(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	.loc 2 349 23 discriminator 1
	lw	a4,-20(s0)
	bltu	a4,a5,.L96
	.loc 2 353 9
	j	.L97
.L98:
	.loc 2 354 14
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 2 354 18
	sw	zero,0(a5)
	.loc 2 353 28 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L97:
	.loc 2 353 18 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	bltu	a4,a5,.L98
.L94:
	.loc 2 361 8
	lw	a5,-32(s0)
	beq	a5,zero,.L90
	.loc 2 362 16
	lw	a5,-56(s0)
	sw	a5,-20(s0)
	.loc 2 362 9
	j	.L99
.L100:
	.loc 2 363 19
	lw	a4,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-52(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 363 65
	li	a3,32
	lw	a5,-32(s0)
	sub	a5,a3,a5
	.loc 2 363 16
	sll	a5,a4,a5
	sw	a5,-36(s0)
	.loc 2 364 14
	lw	a4,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-52(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a4,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 2 364 22
	lw	a4,-32(s0)
	srl	a4,a3,a4
	sw	a4,0(a5)
	.loc 2 365 14
	lw	a4,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-52(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a4,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 2 365 22
	lw	a4,-24(s0)
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 2 366 16
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 2 362 33 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L99:
	.loc 2 362 27 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L100
.L90:
	.loc 2 369 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE52:
	.size	mbedtls_mpi_core_shift_r, .-mbedtls_mpi_core_shift_r
	.section	.text.mbedtls_mpi_core_shift_l,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_shift_l
	.type	mbedtls_mpi_core_shift_l, @function
mbedtls_mpi_core_shift_l:
.LFB53:
	.loc 2 373 1
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
	.loc 2 375 22
	sw	zero,-24(s0)
	.loc 2 377 8
	lw	a5,-60(s0)
	srli	a5,a5,5
	sw	a5,-28(s0)
	.loc 2 378 8
	lw	a5,-60(s0)
	andi	a5,a5,31
	sw	a5,-32(s0)
	.loc 2 383 8
	lw	a5,-28(s0)
	beq	a5,zero,.L102
	.loc 2 384 16
	lw	a5,-56(s0)
	sw	a5,-20(s0)
	.loc 2 384 9
	j	.L103
.L104:
	.loc 2 385 28
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	sub	a4,a4,a5
	.loc 2 385 25
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-52(s0)
	add	a4,a4,a5
	.loc 2 385 14
	lw	a3,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	lw	a3,-52(s0)
	add	a5,a3,a5
	.loc 2 385 25
	lw	a4,0(a4)
	.loc 2 385 22
	sw	a4,0(a5)
	.loc 2 384 34 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L103:
	.loc 2 384 27 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	bgtu	a4,a5,.L104
	.loc 2 388 9
	j	.L105
.L106:
	.loc 2 389 14
	lw	a4,-20(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 2 389 22
	sw	zero,0(a5)
	.loc 2 388 24 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L105:
	.loc 2 388 18 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L106
.L102:
	.loc 2 396 8
	lw	a5,-32(s0)
	beq	a5,zero,.L110
	.loc 2 397 16
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	.loc 2 397 9
	j	.L108
.L109:
	.loc 2 398 19
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-52(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 398 61
	li	a3,32
	lw	a5,-32(s0)
	sub	a5,a3,a5
	.loc 2 398 16
	srl	a5,a4,a5
	sw	a5,-36(s0)
	.loc 2 399 14
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-52(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 2 399 18
	lw	a4,-32(s0)
	sll	a4,a3,a4
	sw	a4,0(a5)
	.loc 2 400 14
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-52(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 2 400 18
	lw	a4,-24(s0)
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 2 401 16
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 2 397 34 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L108:
	.loc 2 397 24 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	bltu	a4,a5,.L109
.L110:
	.loc 2 404 1
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
.LFE53:
	.size	mbedtls_mpi_core_shift_l, .-mbedtls_mpi_core_shift_l
	.section	.text.mbedtls_mpi_core_add,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_add
	.type	mbedtls_mpi_core_add, @function
mbedtls_mpi_core_add:
.LFB54:
	.loc 2 410 1
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
	.loc 2 411 22
	sw	zero,-20(s0)
.LBB15:
	.loc 2 413 17
	sw	zero,-24(s0)
	.loc 2 413 5
	j	.L112
.L113:
.LBB16:
	.loc 2 414 35
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 414 26
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 415 19
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 415 16
	lw	a4,-28(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	.loc 2 415 11
	sw	a5,-20(s0)
	.loc 2 416 15
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 416 11
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 417 20
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 417 17
	lw	a4,-28(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 417 11
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 2 418 10
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 2 418 14
	lw	a4,-28(s0)
	sw	a4,0(a5)
.LBE16:
	.loc 2 413 36 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L112:
	.loc 2 413 26 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-48(s0)
	bltu	a4,a5,.L113
.LBE15:
	.loc 2 421 12
	lw	a5,-20(s0)
	.loc 2 422 1
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
	.size	mbedtls_mpi_core_add, .-mbedtls_mpi_core_add
	.section	.text.mbedtls_mpi_core_add_if,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_add_if
	.type	mbedtls_mpi_core_add_if, @function
mbedtls_mpi_core_add_if:
.LFB55:
	.loc 2 428 1
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
	.loc 2 429 22
	sw	zero,-20(s0)
	.loc 2 431 37
	lw	a0,-64(s0)
	call	mbedtls_ct_bool
	sw	a0,-28(s0)
.LBB17:
	.loc 2 433 17
	sw	zero,-24(s0)
	.loc 2 433 5
	j	.L116
.L117:
.LBB18:
	.loc 2 434 71
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-56(s0)
	add	a5,a4,a5
	.loc 2 434 32
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-28(s0)
	call	mbedtls_ct_mpi_uint_if_else_0
	sw	a0,-32(s0)
	.loc 2 435 35
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-52(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 435 26
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 2 436 19
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-52(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 436 16
	lw	a4,-36(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	.loc 2 436 11
	sw	a5,-20(s0)
	.loc 2 437 11
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 2 438 17
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 438 11
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 2 439 10
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 2 439 14
	lw	a4,-36(s0)
	sw	a4,0(a5)
.LBE18:
	.loc 2 433 36 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L116:
	.loc 2 433 26 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-60(s0)
	bltu	a4,a5,.L117
.LBE17:
	.loc 2 442 12
	lw	a5,-20(s0)
	.loc 2 443 1
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
.LFE55:
	.size	mbedtls_mpi_core_add_if, .-mbedtls_mpi_core_add_if
	.section	.text.mbedtls_mpi_core_sub,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_sub
	.type	mbedtls_mpi_core_sub, @function
mbedtls_mpi_core_sub:
.LFB56:
	.loc 2 449 1
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
	.loc 2 450 22
	sw	zero,-20(s0)
.LBB19:
	.loc 2 452 17
	sw	zero,-24(s0)
	.loc 2 452 5
	j	.L120
.L121:
.LBB20:
	.loc 2 453 32
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 453 36
	lw	a4,-20(s0)
	sgtu	a5,a4,a5
	andi	a5,a5,0xff
	.loc 2 453 26
	sw	a5,-28(s0)
	.loc 2 454 31
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 454 26
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 455 19
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 455 16
	lw	a4,-32(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 455 11
	lw	a5,-28(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 2 456 21
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 456 10
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a3,-36(s0)
	add	a5,a3,a5
	.loc 2 456 18
	lw	a3,-32(s0)
	sub	a4,a3,a4
	.loc 2 456 14
	sw	a4,0(a5)
.LBE20:
	.loc 2 452 36 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L120:
	.loc 2 452 26 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-48(s0)
	bltu	a4,a5,.L121
.LBE19:
	.loc 2 459 12
	lw	a5,-20(s0)
	.loc 2 460 1
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
.LFE56:
	.size	mbedtls_mpi_core_sub, .-mbedtls_mpi_core_sub
	.section	.text.mbedtls_mpi_core_mla,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_mla
	.type	mbedtls_mpi_core_mla, @function
mbedtls_mpi_core_mla:
.LFB57:
	.loc 2 465 1
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
	.loc 2 466 22
	sw	zero,-20(s0)
	.loc 2 472 8
	lw	a4,-104(s0)
	lw	a5,-112(s0)
	bgeu	a4,a5,.L124
	.loc 2 473 15
	lw	a5,-104(s0)
	sw	a5,-112(s0)
.L124:
	.loc 2 475 12
	lw	a4,-104(s0)
	lw	a5,-112(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 476 12
	lw	a5,-112(s0)
	srli	a5,a5,3
	sw	a5,-28(s0)
	.loc 2 477 12
	lw	a5,-112(s0)
	andi	a5,a5,7
	sw	a5,-32(s0)
	.loc 2 479 11
	j	.L125
.L126:
.LBB21:
	.loc 2 480 80
	lw	a5,-116(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a5,-68(s0)
	.loc 2 480 166
	lw	a5,-116(s0)
	srli	a5,a5,16
	sw	a5,-72(s0)
	.loc 2 481 16
	lw	a5,-108(s0)
	lw	a5,0(a5)
	.loc 2 481 12
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a5,-76(s0)
	.loc 2 481 103
	lw	a5,-108(s0)
	lw	a5,0(a5)
	.loc 2 481 99
	srli	a5,a5,16
	sw	a5,-80(s0)
	.loc 2 481 147
	lw	a5,-108(s0)
	addi	a5,a5,4
	sw	a5,-108(s0)
	.loc 2 481 154
	lw	a4,-76(s0)
	lw	a5,-72(s0)
	mul	a5,a4,a5
	sw	a5,-84(s0)
	.loc 2 481 168
	lw	a4,-76(s0)
	lw	a5,-68(s0)
	mul	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 182
	lw	a4,-80(s0)
	lw	a5,-68(s0)
	mul	a5,a4,a5
	sw	a5,-92(s0)
	.loc 2 481 196
	lw	a4,-80(s0)
	lw	a5,-72(s0)
	mul	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 218
	lw	a5,-84(s0)
	srli	a5,a5,16
	.loc 2 481 210
	lw	a4,-96(s0)
	add	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 269
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 2 481 261
	lw	a4,-96(s0)
	add	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 312
	lw	a5,-84(s0)
	slli	a5,a5,16
	sw	a5,-84(s0)
	.loc 2 481 354
	lw	a5,-92(s0)
	slli	a5,a5,16
	sw	a5,-92(s0)
	.loc 2 481 396
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 413
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 406
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 423
	lw	a4,-88(s0)
	lw	a5,-92(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 440
	lw	a4,-88(s0)
	lw	a5,-92(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 433
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 450
	lw	a4,-88(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 466
	lw	a4,-88(s0)
	lw	a5,-20(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 459
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 478
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 481 475
	lw	a4,-88(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 494
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 481 492
	lw	a4,-88(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 485
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 501
	lw	a5,-96(s0)
	sw	a5,-20(s0)
	.loc 2 481 510
	lw	a5,-100(s0)
	addi	a4,a5,4
	sw	a4,-100(s0)
	.loc 2 481 514
	lw	a4,-88(s0)
	sw	a4,0(a5)
	.loc 2 481 527
	lw	a5,-108(s0)
	lw	a5,0(a5)
	.loc 2 481 523
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a5,-76(s0)
	.loc 2 481 614
	lw	a5,-108(s0)
	lw	a5,0(a5)
	.loc 2 481 610
	srli	a5,a5,16
	sw	a5,-80(s0)
	.loc 2 481 658
	lw	a5,-108(s0)
	addi	a5,a5,4
	sw	a5,-108(s0)
	.loc 2 481 665
	lw	a4,-76(s0)
	lw	a5,-72(s0)
	mul	a5,a4,a5
	sw	a5,-84(s0)
	.loc 2 481 679
	lw	a4,-76(s0)
	lw	a5,-68(s0)
	mul	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 693
	lw	a4,-80(s0)
	lw	a5,-68(s0)
	mul	a5,a4,a5
	sw	a5,-92(s0)
	.loc 2 481 707
	lw	a4,-80(s0)
	lw	a5,-72(s0)
	mul	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 729
	lw	a5,-84(s0)
	srli	a5,a5,16
	.loc 2 481 721
	lw	a4,-96(s0)
	add	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 780
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 2 481 772
	lw	a4,-96(s0)
	add	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 823
	lw	a5,-84(s0)
	slli	a5,a5,16
	sw	a5,-84(s0)
	.loc 2 481 865
	lw	a5,-92(s0)
	slli	a5,a5,16
	sw	a5,-92(s0)
	.loc 2 481 907
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 924
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 917
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 934
	lw	a4,-88(s0)
	lw	a5,-92(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 951
	lw	a4,-88(s0)
	lw	a5,-92(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 944
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 961
	lw	a4,-88(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 977
	lw	a4,-88(s0)
	lw	a5,-20(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 970
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 989
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 481 986
	lw	a4,-88(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 1005
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 481 1003
	lw	a4,-88(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 996
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 1012
	lw	a5,-96(s0)
	sw	a5,-20(s0)
	.loc 2 481 1021
	lw	a5,-100(s0)
	addi	a4,a5,4
	sw	a4,-100(s0)
	.loc 2 481 1025
	lw	a4,-88(s0)
	sw	a4,0(a5)
	.loc 2 481 1038
	lw	a5,-108(s0)
	lw	a5,0(a5)
	.loc 2 481 1034
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a5,-76(s0)
	.loc 2 481 1125
	lw	a5,-108(s0)
	lw	a5,0(a5)
	.loc 2 481 1121
	srli	a5,a5,16
	sw	a5,-80(s0)
	.loc 2 481 1169
	lw	a5,-108(s0)
	addi	a5,a5,4
	sw	a5,-108(s0)
	.loc 2 481 1176
	lw	a4,-76(s0)
	lw	a5,-72(s0)
	mul	a5,a4,a5
	sw	a5,-84(s0)
	.loc 2 481 1190
	lw	a4,-76(s0)
	lw	a5,-68(s0)
	mul	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 1204
	lw	a4,-80(s0)
	lw	a5,-68(s0)
	mul	a5,a4,a5
	sw	a5,-92(s0)
	.loc 2 481 1218
	lw	a4,-80(s0)
	lw	a5,-72(s0)
	mul	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 1240
	lw	a5,-84(s0)
	srli	a5,a5,16
	.loc 2 481 1232
	lw	a4,-96(s0)
	add	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 1291
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 2 481 1283
	lw	a4,-96(s0)
	add	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 1334
	lw	a5,-84(s0)
	slli	a5,a5,16
	sw	a5,-84(s0)
	.loc 2 481 1376
	lw	a5,-92(s0)
	slli	a5,a5,16
	sw	a5,-92(s0)
	.loc 2 481 1418
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 1435
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 1428
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 1445
	lw	a4,-88(s0)
	lw	a5,-92(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 1462
	lw	a4,-88(s0)
	lw	a5,-92(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 1455
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 1472
	lw	a4,-88(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 1488
	lw	a4,-88(s0)
	lw	a5,-20(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 1481
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 1500
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 481 1497
	lw	a4,-88(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 1516
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 481 1514
	lw	a4,-88(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 1507
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 1523
	lw	a5,-96(s0)
	sw	a5,-20(s0)
	.loc 2 481 1532
	lw	a5,-100(s0)
	addi	a4,a5,4
	sw	a4,-100(s0)
	.loc 2 481 1536
	lw	a4,-88(s0)
	sw	a4,0(a5)
	.loc 2 481 1549
	lw	a5,-108(s0)
	lw	a5,0(a5)
	.loc 2 481 1545
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a5,-76(s0)
	.loc 2 481 1636
	lw	a5,-108(s0)
	lw	a5,0(a5)
	.loc 2 481 1632
	srli	a5,a5,16
	sw	a5,-80(s0)
	.loc 2 481 1680
	lw	a5,-108(s0)
	addi	a5,a5,4
	sw	a5,-108(s0)
	.loc 2 481 1687
	lw	a4,-76(s0)
	lw	a5,-72(s0)
	mul	a5,a4,a5
	sw	a5,-84(s0)
	.loc 2 481 1701
	lw	a4,-76(s0)
	lw	a5,-68(s0)
	mul	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 1715
	lw	a4,-80(s0)
	lw	a5,-68(s0)
	mul	a5,a4,a5
	sw	a5,-92(s0)
	.loc 2 481 1729
	lw	a4,-80(s0)
	lw	a5,-72(s0)
	mul	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 1751
	lw	a5,-84(s0)
	srli	a5,a5,16
	.loc 2 481 1743
	lw	a4,-96(s0)
	add	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 1802
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 2 481 1794
	lw	a4,-96(s0)
	add	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 1845
	lw	a5,-84(s0)
	slli	a5,a5,16
	sw	a5,-84(s0)
	.loc 2 481 1887
	lw	a5,-92(s0)
	slli	a5,a5,16
	sw	a5,-92(s0)
	.loc 2 481 1929
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 1946
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 1939
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 1956
	lw	a4,-88(s0)
	lw	a5,-92(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 1973
	lw	a4,-88(s0)
	lw	a5,-92(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 1966
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 1983
	lw	a4,-88(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 1999
	lw	a4,-88(s0)
	lw	a5,-20(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 1992
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 2011
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 481 2008
	lw	a4,-88(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 2027
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 481 2025
	lw	a4,-88(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 2018
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 2034
	lw	a5,-96(s0)
	sw	a5,-20(s0)
	.loc 2 481 2043
	lw	a5,-100(s0)
	addi	a4,a5,4
	sw	a4,-100(s0)
	.loc 2 481 2047
	lw	a4,-88(s0)
	sw	a4,0(a5)
	.loc 2 481 2060
	lw	a5,-108(s0)
	lw	a5,0(a5)
	.loc 2 481 2056
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a5,-76(s0)
	.loc 2 481 2147
	lw	a5,-108(s0)
	lw	a5,0(a5)
	.loc 2 481 2143
	srli	a5,a5,16
	sw	a5,-80(s0)
	.loc 2 481 2191
	lw	a5,-108(s0)
	addi	a5,a5,4
	sw	a5,-108(s0)
	.loc 2 481 2198
	lw	a4,-76(s0)
	lw	a5,-72(s0)
	mul	a5,a4,a5
	sw	a5,-84(s0)
	.loc 2 481 2212
	lw	a4,-76(s0)
	lw	a5,-68(s0)
	mul	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 2226
	lw	a4,-80(s0)
	lw	a5,-68(s0)
	mul	a5,a4,a5
	sw	a5,-92(s0)
	.loc 2 481 2240
	lw	a4,-80(s0)
	lw	a5,-72(s0)
	mul	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 2262
	lw	a5,-84(s0)
	srli	a5,a5,16
	.loc 2 481 2254
	lw	a4,-96(s0)
	add	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 2313
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 2 481 2305
	lw	a4,-96(s0)
	add	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 2356
	lw	a5,-84(s0)
	slli	a5,a5,16
	sw	a5,-84(s0)
	.loc 2 481 2398
	lw	a5,-92(s0)
	slli	a5,a5,16
	sw	a5,-92(s0)
	.loc 2 481 2440
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 2457
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 2450
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 2467
	lw	a4,-88(s0)
	lw	a5,-92(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 2484
	lw	a4,-88(s0)
	lw	a5,-92(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 2477
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 2494
	lw	a4,-88(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 2510
	lw	a4,-88(s0)
	lw	a5,-20(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 2503
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 2522
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 481 2519
	lw	a4,-88(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 2538
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 481 2536
	lw	a4,-88(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 2529
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 2545
	lw	a5,-96(s0)
	sw	a5,-20(s0)
	.loc 2 481 2554
	lw	a5,-100(s0)
	addi	a4,a5,4
	sw	a4,-100(s0)
	.loc 2 481 2558
	lw	a4,-88(s0)
	sw	a4,0(a5)
	.loc 2 481 2571
	lw	a5,-108(s0)
	lw	a5,0(a5)
	.loc 2 481 2567
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a5,-76(s0)
	.loc 2 481 2658
	lw	a5,-108(s0)
	lw	a5,0(a5)
	.loc 2 481 2654
	srli	a5,a5,16
	sw	a5,-80(s0)
	.loc 2 481 2702
	lw	a5,-108(s0)
	addi	a5,a5,4
	sw	a5,-108(s0)
	.loc 2 481 2709
	lw	a4,-76(s0)
	lw	a5,-72(s0)
	mul	a5,a4,a5
	sw	a5,-84(s0)
	.loc 2 481 2723
	lw	a4,-76(s0)
	lw	a5,-68(s0)
	mul	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 2737
	lw	a4,-80(s0)
	lw	a5,-68(s0)
	mul	a5,a4,a5
	sw	a5,-92(s0)
	.loc 2 481 2751
	lw	a4,-80(s0)
	lw	a5,-72(s0)
	mul	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 2773
	lw	a5,-84(s0)
	srli	a5,a5,16
	.loc 2 481 2765
	lw	a4,-96(s0)
	add	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 2824
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 2 481 2816
	lw	a4,-96(s0)
	add	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 2867
	lw	a5,-84(s0)
	slli	a5,a5,16
	sw	a5,-84(s0)
	.loc 2 481 2909
	lw	a5,-92(s0)
	slli	a5,a5,16
	sw	a5,-92(s0)
	.loc 2 481 2951
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 2968
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 2961
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 2978
	lw	a4,-88(s0)
	lw	a5,-92(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 2995
	lw	a4,-88(s0)
	lw	a5,-92(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 2988
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 3005
	lw	a4,-88(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 3021
	lw	a4,-88(s0)
	lw	a5,-20(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 3014
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 3033
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 481 3030
	lw	a4,-88(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 3049
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 481 3047
	lw	a4,-88(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 3040
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 3056
	lw	a5,-96(s0)
	sw	a5,-20(s0)
	.loc 2 481 3065
	lw	a5,-100(s0)
	addi	a4,a5,4
	sw	a4,-100(s0)
	.loc 2 481 3069
	lw	a4,-88(s0)
	sw	a4,0(a5)
	.loc 2 481 3082
	lw	a5,-108(s0)
	lw	a5,0(a5)
	.loc 2 481 3078
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a5,-76(s0)
	.loc 2 481 3169
	lw	a5,-108(s0)
	lw	a5,0(a5)
	.loc 2 481 3165
	srli	a5,a5,16
	sw	a5,-80(s0)
	.loc 2 481 3213
	lw	a5,-108(s0)
	addi	a5,a5,4
	sw	a5,-108(s0)
	.loc 2 481 3220
	lw	a4,-76(s0)
	lw	a5,-72(s0)
	mul	a5,a4,a5
	sw	a5,-84(s0)
	.loc 2 481 3234
	lw	a4,-76(s0)
	lw	a5,-68(s0)
	mul	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 3248
	lw	a4,-80(s0)
	lw	a5,-68(s0)
	mul	a5,a4,a5
	sw	a5,-92(s0)
	.loc 2 481 3262
	lw	a4,-80(s0)
	lw	a5,-72(s0)
	mul	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 3284
	lw	a5,-84(s0)
	srli	a5,a5,16
	.loc 2 481 3276
	lw	a4,-96(s0)
	add	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 3335
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 2 481 3327
	lw	a4,-96(s0)
	add	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 3378
	lw	a5,-84(s0)
	slli	a5,a5,16
	sw	a5,-84(s0)
	.loc 2 481 3420
	lw	a5,-92(s0)
	slli	a5,a5,16
	sw	a5,-92(s0)
	.loc 2 481 3462
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 3479
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 3472
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 3489
	lw	a4,-88(s0)
	lw	a5,-92(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 3506
	lw	a4,-88(s0)
	lw	a5,-92(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 3499
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 3516
	lw	a4,-88(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 3532
	lw	a4,-88(s0)
	lw	a5,-20(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 3525
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 3544
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 481 3541
	lw	a4,-88(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 3560
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 481 3558
	lw	a4,-88(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 3551
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 3567
	lw	a5,-96(s0)
	sw	a5,-20(s0)
	.loc 2 481 3576
	lw	a5,-100(s0)
	addi	a4,a5,4
	sw	a4,-100(s0)
	.loc 2 481 3580
	lw	a4,-88(s0)
	sw	a4,0(a5)
	.loc 2 481 3593
	lw	a5,-108(s0)
	lw	a5,0(a5)
	.loc 2 481 3589
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a5,-76(s0)
	.loc 2 481 3680
	lw	a5,-108(s0)
	lw	a5,0(a5)
	.loc 2 481 3676
	srli	a5,a5,16
	sw	a5,-80(s0)
	.loc 2 481 3724
	lw	a5,-108(s0)
	addi	a5,a5,4
	sw	a5,-108(s0)
	.loc 2 481 3731
	lw	a4,-76(s0)
	lw	a5,-72(s0)
	mul	a5,a4,a5
	sw	a5,-84(s0)
	.loc 2 481 3745
	lw	a4,-76(s0)
	lw	a5,-68(s0)
	mul	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 3759
	lw	a4,-80(s0)
	lw	a5,-68(s0)
	mul	a5,a4,a5
	sw	a5,-92(s0)
	.loc 2 481 3773
	lw	a4,-80(s0)
	lw	a5,-72(s0)
	mul	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 3795
	lw	a5,-84(s0)
	srli	a5,a5,16
	.loc 2 481 3787
	lw	a4,-96(s0)
	add	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 3846
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 2 481 3838
	lw	a4,-96(s0)
	add	a5,a4,a5
	sw	a5,-96(s0)
	.loc 2 481 3889
	lw	a5,-84(s0)
	slli	a5,a5,16
	sw	a5,-84(s0)
	.loc 2 481 3931
	lw	a5,-92(s0)
	slli	a5,a5,16
	sw	a5,-92(s0)
	.loc 2 481 3973
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 3990
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 3983
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 4000
	lw	a4,-88(s0)
	lw	a5,-92(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 4017
	lw	a4,-88(s0)
	lw	a5,-92(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 4010
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 4027
	lw	a4,-88(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 4043
	lw	a4,-88(s0)
	lw	a5,-20(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 4036
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 4055
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 481 4052
	lw	a4,-88(s0)
	add	a5,a4,a5
	sw	a5,-88(s0)
	.loc 2 481 4071
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 481 4069
	lw	a4,-88(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 481 4062
	lw	a5,-96(s0)
	add	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 481 4078
	lw	a5,-96(s0)
	sw	a5,-20(s0)
	.loc 2 481 4087
	lw	a5,-100(s0)
	addi	a4,a5,4
	sw	a4,-100(s0)
	.loc 2 481 4091
	lw	a4,-88(s0)
	sw	a4,0(a5)
.L125:
.LBE21:
	.loc 2 479 20
	lw	a5,-28(s0)
	addi	a4,a5,-1
	sw	a4,-28(s0)
	.loc 2 479 12
	bne	a5,zero,.L126
	.loc 2 485 11
	j	.L127
.L128:
.LBB22:
	.loc 2 486 80
	lw	a5,-116(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a5,-36(s0)
	.loc 2 486 166
	lw	a5,-116(s0)
	srli	a5,a5,16
	sw	a5,-40(s0)
	.loc 2 487 16
	lw	a5,-108(s0)
	lw	a5,0(a5)
	.loc 2 487 12
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a5,-44(s0)
	.loc 2 487 103
	lw	a5,-108(s0)
	lw	a5,0(a5)
	.loc 2 487 99
	srli	a5,a5,16
	sw	a5,-48(s0)
	.loc 2 487 147
	lw	a5,-108(s0)
	addi	a5,a5,4
	sw	a5,-108(s0)
	.loc 2 487 154
	lw	a4,-44(s0)
	lw	a5,-40(s0)
	mul	a5,a4,a5
	sw	a5,-52(s0)
	.loc 2 487 168
	lw	a4,-44(s0)
	lw	a5,-36(s0)
	mul	a5,a4,a5
	sw	a5,-56(s0)
	.loc 2 487 182
	lw	a4,-48(s0)
	lw	a5,-36(s0)
	mul	a5,a4,a5
	sw	a5,-60(s0)
	.loc 2 487 196
	lw	a4,-48(s0)
	lw	a5,-40(s0)
	mul	a5,a4,a5
	sw	a5,-64(s0)
	.loc 2 487 218
	lw	a5,-52(s0)
	srli	a5,a5,16
	.loc 2 487 210
	lw	a4,-64(s0)
	add	a5,a4,a5
	sw	a5,-64(s0)
	.loc 2 487 269
	lw	a5,-60(s0)
	srli	a5,a5,16
	.loc 2 487 261
	lw	a4,-64(s0)
	add	a5,a4,a5
	sw	a5,-64(s0)
	.loc 2 487 312
	lw	a5,-52(s0)
	slli	a5,a5,16
	sw	a5,-52(s0)
	.loc 2 487 354
	lw	a5,-60(s0)
	slli	a5,a5,16
	sw	a5,-60(s0)
	.loc 2 487 396
	lw	a4,-56(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	sw	a5,-56(s0)
	.loc 2 487 413
	lw	a4,-56(s0)
	lw	a5,-52(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 487 406
	lw	a5,-64(s0)
	add	a5,a5,a4
	sw	a5,-64(s0)
	.loc 2 487 423
	lw	a4,-56(s0)
	lw	a5,-60(s0)
	add	a5,a4,a5
	sw	a5,-56(s0)
	.loc 2 487 440
	lw	a4,-56(s0)
	lw	a5,-60(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 487 433
	lw	a5,-64(s0)
	add	a5,a5,a4
	sw	a5,-64(s0)
	.loc 2 487 450
	lw	a4,-56(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-56(s0)
	.loc 2 487 466
	lw	a4,-56(s0)
	lw	a5,-20(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 487 459
	lw	a5,-64(s0)
	add	a5,a5,a4
	sw	a5,-64(s0)
	.loc 2 487 478
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 487 475
	lw	a4,-56(s0)
	add	a5,a4,a5
	sw	a5,-56(s0)
	.loc 2 487 494
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 487 492
	lw	a4,-56(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 487 485
	lw	a5,-64(s0)
	add	a5,a5,a4
	sw	a5,-64(s0)
	.loc 2 487 501
	lw	a5,-64(s0)
	sw	a5,-20(s0)
	.loc 2 487 510
	lw	a5,-100(s0)
	addi	a4,a5,4
	sw	a4,-100(s0)
	.loc 2 487 514
	lw	a4,-56(s0)
	sw	a4,0(a5)
.L127:
.LBE22:
	.loc 2 485 20
	lw	a5,-32(s0)
	addi	a4,a5,-1
	sw	a4,-32(s0)
	.loc 2 485 12
	bne	a5,zero,.L128
	.loc 2 491 11
	j	.L129
.L130:
	.loc 2 492 9
	lw	a5,-100(s0)
	lw	a4,0(a5)
	.loc 2 492 12
	lw	a5,-20(s0)
	add	a4,a4,a5
	lw	a5,-100(s0)
	sw	a4,0(a5)
	.loc 2 493 14
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 493 17
	lw	a4,-20(s0)
	sgtu	a5,a4,a5
	andi	a5,a5,0xff
	.loc 2 493 11
	sw	a5,-20(s0)
	.loc 2 494 10
	lw	a5,-100(s0)
	addi	a5,a5,4
	sw	a5,-100(s0)
.L129:
	.loc 2 491 22
	lw	a5,-24(s0)
	addi	a4,a5,-1
	sw	a4,-24(s0)
	.loc 2 491 12
	bne	a5,zero,.L130
	.loc 2 497 12
	lw	a5,-20(s0)
	.loc 2 498 1
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
.LFE57:
	.size	mbedtls_mpi_core_mla, .-mbedtls_mpi_core_mla
	.section	.text.mbedtls_mpi_core_mul,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_mul
	.type	mbedtls_mpi_core_mul, @function
mbedtls_mpi_core_mul:
.LFB58:
	.loc 2 503 1
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
	.loc 2 504 27
	lw	a4,-44(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	.loc 2 504 5
	slli	a5,a5,2
	mv	a2,a5
	li	a1,0
	lw	a0,-36(s0)
	call	memset
.LBB23:
	.loc 2 506 17
	sw	zero,-20(s0)
	.loc 2 506 5
	j	.L133
.L134:
	.loc 2 507 39
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 2 507 16
	lw	a4,-36(s0)
	add	a0,a4,a5
	lw	a5,-44(s0)
	addi	a1,a5,1
	.loc 2 507 70
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-48(s0)
	add	a5,a4,a5
	.loc 2 507 16
	lw	a5,0(a5)
	mv	a4,a5
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	call	mbedtls_mpi_core_mla
	.loc 2 506 38 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L133:
	.loc 2 506 26 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	bltu	a4,a5,.L134
.LBE23:
	.loc 2 509 1
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
.LFE58:
	.size	mbedtls_mpi_core_mul, .-mbedtls_mpi_core_mul
	.section	.text.mbedtls_mpi_core_montmul_init,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_montmul_init
	.type	mbedtls_mpi_core_montmul_init, @function
mbedtls_mpi_core_montmul_init:
.LFB59:
	.loc 2 515 1
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
	.loc 2 516 22
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 2 518 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 518 17
	addi	a5,a5,2
	.loc 2 518 27
	slli	a5,a5,1
	andi	a5,a5,8
	.loc 2 518 7
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.LBB24:
	.loc 2 520 23
	li	a5,32
	sw	a5,-24(s0)
	.loc 2 520 5
	j	.L136
.L137:
	.loc 2 521 21
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 521 25
	lw	a5,-20(s0)
	mul	a5,a4,a5
	.loc 2 521 17
	li	a4,2
	sub	a5,a4,a5
	.loc 2 521 11
	lw	a4,-20(s0)
	mul	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 520 72 discriminator 3
	lw	a5,-24(s0)
	srli	a5,a5,1
	sw	a5,-24(s0)
.L136:
	.loc 2 520 64 discriminator 1
	lw	a4,-24(s0)
	li	a5,7
	bgtu	a4,a5,.L137
.LBE24:
	.loc 2 524 15
	lw	a5,-20(s0)
	neg	a5,a5
	.loc 2 525 1
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
.LFE59:
	.size	mbedtls_mpi_core_montmul_init, .-mbedtls_mpi_core_montmul_init
	.section	.text.mbedtls_mpi_core_montmul,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_montmul
	.type	mbedtls_mpi_core_montmul, @function
mbedtls_mpi_core_montmul:
.LFB60:
	.loc 2 535 1
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
	.loc 2 536 37
	lw	a5,-72(s0)
	slli	a5,a5,3
	.loc 2 536 5
	addi	a5,a5,4
	mv	a2,a5
	li	a1,0
	lw	a0,-80(s0)
	call	memset
.LBB25:
	.loc 2 538 17
	sw	zero,-20(s0)
	.loc 2 538 5
	j	.L140
.L141:
.LBB26:
	.loc 2 540 32
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-56(s0)
	add	a5,a4,a5
	.loc 2 540 26
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 2 541 33
	lw	a5,-80(s0)
	lw	a4,0(a5)
	.loc 2 541 45
	lw	a5,-60(s0)
	lw	a3,0(a5)
	.loc 2 541 42
	lw	a5,-32(s0)
	mul	a5,a3,a5
	.loc 2 541 37
	add	a5,a4,a5
	.loc 2 541 26
	lw	a4,-76(s0)
	mul	a5,a4,a5
	sw	a5,-36(s0)
	.loc 2 543 16
	lw	a5,-72(s0)
	addi	a5,a5,2
	lw	a4,-32(s0)
	lw	a3,-64(s0)
	lw	a2,-60(s0)
	mv	a1,a5
	lw	a0,-80(s0)
	call	mbedtls_mpi_core_mla
	.loc 2 544 16
	lw	a5,-72(s0)
	addi	a5,a5,2
	lw	a4,-36(s0)
	lw	a3,-72(s0)
	lw	a2,-68(s0)
	mv	a1,a5
	lw	a0,-80(s0)
	call	mbedtls_mpi_core_mla
	.loc 2 546 10
	lw	a5,-80(s0)
	addi	a5,a5,4
	sw	a5,-80(s0)
.LBE26:
	.loc 2 538 39 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L140:
	.loc 2 538 26 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-72(s0)
	bltu	a4,a5,.L141
.LBE25:
	.loc 2 559 31
	lw	a5,-72(s0)
	slli	a5,a5,2
	lw	a4,-80(s0)
	add	a5,a4,a5
	.loc 2 559 22
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 560 31
	lw	a3,-72(s0)
	lw	a2,-68(s0)
	lw	a1,-80(s0)
	lw	a0,-52(s0)
	call	mbedtls_mpi_core_sub
	sw	a0,-28(s0)
	.loc 2 576 48
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	xor	a5,a4,a5
	.loc 2 576 5
	mv	a0,a5
	call	mbedtls_ct_bool
	.loc 2 576 5 is_stmt 0 discriminator 1
	lw	a5,-72(s0)
	slli	a5,a5,2
	mv	a4,a5
	li	a3,0
	lw	a2,-80(s0)
	lw	a1,-52(s0)
	call	mbedtls_ct_memcpy_if
	.loc 2 581 1 is_stmt 1
	nop
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE60:
	.size	mbedtls_mpi_core_montmul, .-mbedtls_mpi_core_montmul
	.section	.text.mbedtls_mpi_core_get_mont_r2_unsafe,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_get_mont_r2_unsafe
	.type	mbedtls_mpi_core_get_mont_r2_unsafe, @function
mbedtls_mpi_core_get_mont_r2_unsafe:
.LFB61:
	.loc 2 585 1
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
	.loc 2 586 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 588 22
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 588 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L148
	.loc 2 589 46
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	.loc 2 589 54
	slli	a5,a5,6
	.loc 2 589 22
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_shift_l
	sw	a0,-20(s0)
	.loc 2 589 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L149
	.loc 2 590 22
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 2 590 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L150
	.loc 2 591 45
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	.loc 2 591 22
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_shrink
	sw	a0,-20(s0)
	.loc 2 593 1
	j	.L144
.L148:
	.loc 2 588 53
	nop
	j	.L144
.L149:
	.loc 2 589 99
	nop
	j	.L144
.L150:
	.loc 2 590 59
	nop
.L144:
	.loc 2 594 12
	lw	a5,-20(s0)
	.loc 2 595 1
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
.LFE61:
	.size	mbedtls_mpi_core_get_mont_r2_unsafe, .-mbedtls_mpi_core_get_mont_r2_unsafe
	.section	.text.mbedtls_mpi_core_ct_uint_table_lookup,"ax",@progbits
	.align	1
	.type	mbedtls_mpi_core_ct_uint_table_lookup, @function
mbedtls_mpi_core_ct_uint_table_lookup:
.LFB62:
	.loc 2 603 1
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
.LBB27:
	.loc 2 604 17
	sw	zero,-20(s0)
	.loc 2 604 5
	j	.L152
.L153:
.LBB28:
	.loc 2 605 41
	lw	a1,-52(s0)
	lw	a0,-20(s0)
	call	mbedtls_ct_uint_eq
	sw	a0,-24(s0)
	.loc 2 606 9
	lw	a3,-24(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_core_cond_assign
.LBE28:
	.loc 2 604 36 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 2 604 46 discriminator 3
	lw	a5,-44(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
.L152:
	.loc 2 604 26 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	bltu	a4,a5,.L153
.LBE27:
	.loc 2 608 1
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
.LFE62:
	.size	mbedtls_mpi_core_ct_uint_table_lookup, .-mbedtls_mpi_core_ct_uint_table_lookup
	.section	.text.mbedtls_mpi_core_fill_random,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_fill_random
	.type	mbedtls_mpi_core_fill_random, @function
mbedtls_mpi_core_fill_random:
.LFB63:
	.loc 2 620 1
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
	.loc 2 621 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 622 37
	lw	a5,-44(s0)
	srli	a5,a5,2
	.loc 2 622 79
	lw	a4,-44(s0)
	andi	a4,a4,3
	.loc 2 622 108
	snez	a4,a4
	andi	a4,a4,0xff
	.loc 2 622 18
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 2 623 36
	lw	a5,-24(s0)
	slli	a4,a5,2
	.loc 2 623 18
	lw	a5,-44(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 625 8
	lw	a4,-40(s0)
	lw	a5,-24(s0)
	bgeu	a4,a5,.L155
	.loc 2 626 16
	li	a5,-4
	j	.L156
.L155:
	.loc 2 629 5
	lw	a2,-28(s0)
	li	a1,0
	lw	a0,-36(s0)
	call	memset
	.loc 2 630 40
	lw	a5,-24(s0)
	slli	a5,a5,2
	.loc 2 630 5
	lw	a4,-36(s0)
	add	a3,a4,a5
	.loc 2 630 82
	lw	a4,-40(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 2 630 5
	slli	a5,a5,2
	mv	a2,a5
	li	a1,0
	mv	a0,a3
	call	memset
	.loc 2 631 22
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	add	a4,a4,a5
	lw	a5,-48(s0)
	lw	a2,-44(s0)
	mv	a1,a4
	lw	a0,-52(s0)
	jalr	a5
.LVL0:
	sw	a0,-20(s0)
	.loc 2 631 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L159
	.loc 2 632 5
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_core_bigendian_to_host
	j	.L158
.L159:
	.loc 2 631 84
	nop
.L158:
	.loc 2 635 12
	lw	a5,-20(s0)
.L156:
	.loc 2 636 1
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
.LFE63:
	.size	mbedtls_mpi_core_fill_random, .-mbedtls_mpi_core_fill_random
	.section	.text.mbedtls_mpi_core_random,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_random
	.type	mbedtls_mpi_core_random, @function
mbedtls_mpi_core_random:
.LFB64:
	.loc 2 644 1
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
	sw	a5,-72(s0)
	.loc 2 645 65
	li	a0,-1
	call	mbedtls_ct_compiler_opaque
	sw	a0,-28(s0)
	.loc 2 645 79 discriminator 1
	li	a0,0
	call	mbedtls_ct_compiler_opaque
	sw	a0,-32(s0)
	.loc 2 646 21
	lw	a1,-64(s0)
	lw	a0,-60(s0)
	call	mbedtls_mpi_core_bitlen
	sw	a0,-36(s0)
	.loc 2 647 30
	lw	a5,-36(s0)
	addi	a5,a5,7
	.loc 2 647 12
	srli	a5,a5,3
	sw	a5,-40(s0)
	.loc 2 648 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 667 35
	lw	a4,-40(s0)
	li	a5,4
	bleu	a4,a5,.L161
	.loc 2 667 9 discriminator 1
	li	a5,30
	sw	a5,-24(s0)
	j	.L166
.L161:
	.loc 2 667 9 is_stmt 0 discriminator 2
	li	a5,250
	sw	a5,-24(s0)
.L166:
	.loc 2 678 26 is_stmt 1
	lw	a4,-72(s0)
	lw	a3,-68(s0)
	lw	a2,-40(s0)
	lw	a1,-64(s0)
	lw	a0,-52(s0)
	call	mbedtls_mpi_core_fill_random
	sw	a0,-20(s0)
	.loc 2 678 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L168
	.loc 2 681 46
	lw	a5,-40(s0)
	slli	a4,a5,3
	.loc 2 681 9
	lw	a5,-36(s0)
	sub	a5,a4,a5
	mv	a2,a5
	lw	a1,-64(s0)
	lw	a0,-52(s0)
	call	mbedtls_mpi_core_shift_r
	.loc 2 683 12
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	bne	a5,zero,.L165
	.loc 2 684 17
	li	a5,-14
	sw	a5,-20(s0)
	.loc 2 685 13
	j	.L164
.L165:
	.loc 2 688 20
	lw	a2,-64(s0)
	lw	a1,-52(s0)
	lw	a0,-56(s0)
	call	mbedtls_mpi_core_uint_le_mpi
	sw	a0,-28(s0)
	.loc 2 689 20
	lw	a2,-64(s0)
	lw	a1,-60(s0)
	lw	a0,-52(s0)
	call	mbedtls_mpi_core_lt_ct
	sw	a0,-32(s0)
	.loc 2 690 14
	lw	a1,-32(s0)
	lw	a0,-28(s0)
	call	mbedtls_ct_bool_and
	mv	s1,a0
	.loc 2 690 83 discriminator 1
	li	a0,0
	call	mbedtls_ct_compiler_opaque
	mv	a5,a0
	.loc 2 690 54 discriminator 2
	beq	s1,a5,.L166
	.loc 2 692 1
	j	.L164
.L168:
	.loc 2 678 96
	nop
.L164:
	.loc 2 693 12
	lw	a5,-20(s0)
	.loc 2 694 1
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
.LFE64:
	.size	mbedtls_mpi_core_random, .-mbedtls_mpi_core_random
	.section	.text.exp_mod_get_window_size,"ax",@progbits
	.align	1
	.type	exp_mod_get_window_size, @function
exp_mod_get_window_size:
.LFB65:
	.loc 2 697 1
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
	.loc 2 703 29
	lw	a4,-20(s0)
	li	a5,79
	bleu	a4,a5,.L170
	.loc 2 703 29 is_stmt 0 discriminator 1
	li	a5,3
	.loc 2 703 29
	j	.L172
.L170:
	.loc 2 703 29 discriminator 2
	li	a5,1
.L172:
	.loc 2 708 1 is_stmt 1
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
	.size	exp_mod_get_window_size, .-exp_mod_get_window_size
	.section	.text.mbedtls_mpi_core_exp_mod_working_limbs,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_exp_mod_working_limbs
	.type	mbedtls_mpi_core_exp_mod_working_limbs, @function
mbedtls_mpi_core_exp_mod_working_limbs:
.LFB66:
	.loc 2 711 1
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
	.loc 2 712 26
	lw	a5,-56(s0)
	slli	a5,a5,5
	mv	a0,a5
	call	exp_mod_get_window_size
	sw	a0,-20(s0)
	.loc 2 713 18
	lw	a5,-20(s0)
	li	a4,1
	sll	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 716 18
	lw	a4,-24(s0)
	lw	a5,-52(s0)
	mul	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 717 18
	lw	a5,-52(s0)
	sw	a5,-32(s0)
	.loc 2 718 33
	lw	a5,-52(s0)
	slli	a5,a5,1
	.loc 2 718 18
	addi	a5,a5,1
	sw	a5,-36(s0)
	.loc 2 720 24
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a4,a4,a5
	.loc 2 720 39
	lw	a5,-36(s0)
	add	a5,a4,a5
	.loc 2 721 1
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
.LFE66:
	.size	mbedtls_mpi_core_exp_mod_working_limbs, .-mbedtls_mpi_core_exp_mod_working_limbs
	.section	.text.exp_mod_precompute_window,"ax",@progbits
	.align	1
	.type	exp_mod_precompute_window, @function
exp_mod_precompute_window:
.LFB67:
	.loc 2 731 1
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
	.loc 2 733 5
	lw	a5,-44(s0)
	slli	a5,a5,2
	mv	a2,a5
	li	a1,0
	lw	a0,-60(s0)
	call	memset
	.loc 2 734 15
	lw	a5,-60(s0)
	li	a4,1
	sw	a4,0(a5)
	.loc 2 735 5
	lw	a7,-64(s0)
	lw	a6,-48(s0)
	lw	a5,-44(s0)
	lw	a4,-40(s0)
	lw	a3,-44(s0)
	lw	a2,-52(s0)
	lw	a1,-60(s0)
	lw	a0,-60(s0)
	call	mbedtls_mpi_core_montmul
	.loc 2 738 35
	lw	a5,-44(s0)
	slli	a5,a5,2
	.loc 2 738 23
	lw	a4,-60(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 739 5
	lw	a5,-44(s0)
	slli	a5,a5,2
	mv	a2,a5
	lw	a1,-36(s0)
	lw	a0,-28(s0)
	call	memcpy
	.loc 2 742 23
	lw	a5,-28(s0)
	sw	a5,-20(s0)
.LBB29:
	.loc 2 743 17
	li	a5,2
	sw	a5,-24(s0)
	.loc 2 743 5
	j	.L176
.L177:
.LBB30:
	.loc 2 744 40
	lw	a5,-44(s0)
	slli	a5,a5,2
	.loc 2 744 27
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 745 9
	lw	a7,-64(s0)
	lw	a6,-48(s0)
	lw	a5,-44(s0)
	lw	a4,-40(s0)
	lw	a3,-44(s0)
	lw	a2,-28(s0)
	lw	a1,-20(s0)
	lw	a0,-32(s0)
	call	mbedtls_mpi_core_montmul
	.loc 2 746 15
	lw	a5,-32(s0)
	sw	a5,-20(s0)
.LBE30:
	.loc 2 743 36 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L176:
	.loc 2 743 26 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	bltu	a4,a5,.L177
.LBE29:
	.loc 2 748 1
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
.LFE67:
	.size	exp_mod_precompute_window, .-exp_mod_precompute_window
	.section	.text.exp_mod_calc_first_bit_optionally_safe,"ax",@progbits
	.align	1
	.type	exp_mod_calc_first_bit_optionally_safe, @function
exp_mod_calc_first_bit_optionally_safe:
.LFB68:
	.loc 2 767 1
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
	.loc 2 768 8
	lw	a4,-44(s0)
	li	a5,707407872
	addi	a5,a5,-1494
	bne	a4,a5,.L179
.LBB31:
	.loc 2 772 25
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_core_bitlen
	sw	a0,-20(s0)
	.loc 2 773 12
	lw	a5,-20(s0)
	bne	a5,zero,.L180
	.loc 2 778 20
	li	a5,1
	sw	a5,-20(s0)
.L180:
	.loc 2 781 32
	lw	a5,-20(s0)
	srli	a4,a5,5
	.loc 2 781 23
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 2 782 31
	lw	a5,-20(s0)
	andi	a4,a5,31
	.loc 2 782 22
	lw	a5,-52(s0)
	sw	a4,0(a5)
.LBE31:
	.loc 2 802 1
	j	.L182
.L179:
	.loc 2 794 23
	lw	a5,-48(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 2 795 22
	lw	a5,-52(s0)
	sw	zero,0(a5)
.L182:
	.loc 2 802 1
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
.LFE68:
	.size	exp_mod_calc_first_bit_optionally_safe, .-exp_mod_calc_first_bit_optionally_safe
	.section	.text.exp_mod_table_lookup_optionally_safe,"ax",@progbits
	.align	1
	.type	exp_mod_table_lookup_optionally_safe, @function
exp_mod_table_lookup_optionally_safe:
.LFB69:
	.loc 2 814 1
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
	.loc 2 815 8
	lw	a4,-40(s0)
	li	a5,707407872
	addi	a5,a5,-1494
	bne	a4,a5,.L184
	.loc 2 816 41
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	mul	a5,a4,a5
	.loc 2 816 32
	slli	a5,a5,2
	lw	a4,-24(s0)
	add	a4,a4,a5
	.loc 2 816 9
	lw	a5,-28(s0)
	slli	a5,a5,2
	mv	a2,a5
	mv	a1,a4
	lw	a0,-20(s0)
	call	memcpy
	.loc 2 833 1
	j	.L186
.L184:
	.loc 2 825 9
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_mpi_core_ct_uint_table_lookup
.L186:
	.loc 2 833 1
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
.LFE69:
	.size	exp_mod_table_lookup_optionally_safe, .-exp_mod_table_lookup_optionally_safe
	.section	.text.mbedtls_mpi_core_exp_mod_optionally_safe,"ax",@progbits
	.align	1
	.type	mbedtls_mpi_core_exp_mod_optionally_safe, @function
mbedtls_mpi_core_exp_mod_optionally_safe:
.LFB70:
	.loc 2 859 1
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
	sw	a5,-88(s0)
	sw	a6,-92(s0)
	sw	a7,-96(s0)
	.loc 2 863 12
	lw	a5,-88(s0)
	sw	a5,-60(s0)
	.loc 2 864 12
	sw	zero,-64(s0)
	.loc 2 865 5
	addi	a4,s0,-64
	addi	a5,s0,-60
	mv	a3,a5
	lw	a2,-92(s0)
	lw	a1,-88(s0)
	lw	a0,-84(s0)
	call	exp_mod_calc_first_bit_optionally_safe
	.loc 2 868 26
	lw	a5,-60(s0)
	slli	a5,a5,5
	mv	a0,a5
	call	exp_mod_get_window_size
	sw	a0,-28(s0)
	.loc 2 869 18
	lw	a5,-28(s0)
	li	a4,1
	sll	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 873 18
	lw	a4,-32(s0)
	lw	a5,-80(s0)
	mul	a5,a4,a5
	sw	a5,-36(s0)
	.loc 2 874 18
	lw	a5,-80(s0)
	sw	a5,-40(s0)
	.loc 2 877 29
	lw	a5,0(s0)
	sw	a5,-44(s0)
	.loc 2 878 46
	lw	a5,-36(s0)
	slli	a5,a5,2
	.loc 2 878 29
	lw	a4,-44(s0)
	add	a5,a4,a5
	sw	a5,-48(s0)
	.loc 2 879 44
	lw	a5,-40(s0)
	slli	a5,a5,2
	.loc 2 879 29
	lw	a4,-48(s0)
	add	a5,a4,a5
	sw	a5,-52(s0)
	.loc 2 885 33
	lw	a0,-76(s0)
	call	mbedtls_mpi_core_montmul_init
	sw	a0,-56(s0)
	.loc 2 888 5
	lw	a7,-52(s0)
	lw	a6,-44(s0)
	lw	a5,-32(s0)
	lw	a4,-96(s0)
	lw	a3,-56(s0)
	lw	a2,-80(s0)
	lw	a1,-76(s0)
	lw	a0,-72(s0)
	call	exp_mod_precompute_window
	.loc 2 897 5
	lw	a5,-80(s0)
	slli	a5,a5,2
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-68(s0)
	call	memcpy
	.loc 2 901 12
	sw	zero,-20(s0)
	.loc 2 902 22
	sw	zero,-24(s0)
.L188:
	.loc 2 906 9
	lw	a7,-52(s0)
	lw	a6,-56(s0)
	lw	a5,-80(s0)
	lw	a4,-76(s0)
	lw	a3,-80(s0)
	lw	a2,-68(s0)
	lw	a1,-68(s0)
	lw	a0,-68(s0)
	call	mbedtls_mpi_core_montmul
	.loc 2 909 25
	lw	a5,-64(s0)
	.loc 2 909 12
	bne	a5,zero,.L189
	.loc 2 910 13
	lw	a5,-60(s0)
	addi	a5,a5,-1
	sw	a5,-60(s0)
	.loc 2 911 25
	li	a5,31
	sw	a5,-64(s0)
	j	.L190
.L189:
	.loc 2 913 13
	lw	a5,-64(s0)
	addi	a5,a5,-1
	sw	a5,-64(s0)
.L190:
	.loc 2 916 9
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 2 917 16
	lw	a5,-24(s0)
	slli	a5,a5,1
	sw	a5,-24(s0)
	.loc 2 918 21
	lw	a5,-60(s0)
	slli	a5,a5,2
	lw	a4,-84(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 918 36
	lw	a5,-64(s0)
	srl	a5,a4,a5
	.loc 2 918 52
	andi	a5,a5,1
	.loc 2 918 16
	lw	a4,-24(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 922 12
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	beq	a4,a5,.L191
	.loc 2 923 26
	lw	a5,-64(s0)
	.loc 2 922 34 discriminator 1
	bne	a5,zero,.L192
	.loc 2 923 47
	lw	a5,-60(s0)
	.loc 2 923 31
	bne	a5,zero,.L192
.L191:
	.loc 2 925 13
	lw	a5,-92(s0)
	lw	a4,-24(s0)
	lw	a3,-32(s0)
	lw	a2,-80(s0)
	lw	a1,-44(s0)
	lw	a0,-48(s0)
	call	exp_mod_table_lookup_optionally_safe
	.loc 2 928 13
	lw	a7,-52(s0)
	lw	a6,-56(s0)
	lw	a5,-80(s0)
	lw	a4,-76(s0)
	lw	a3,-80(s0)
	lw	a2,-48(s0)
	lw	a1,-68(s0)
	lw	a0,-68(s0)
	call	mbedtls_mpi_core_montmul
	.loc 2 930 20
	sw	zero,-24(s0)
	.loc 2 931 25
	sw	zero,-20(s0)
.L192:
	.loc 2 933 28
	lw	a5,-64(s0)
	.loc 2 933 14
	bne	a5,zero,.L188
	.loc 2 933 49 discriminator 1
	lw	a5,-60(s0)
	.loc 2 933 14 discriminator 1
	bne	a5,zero,.L188
	.loc 2 934 1
	nop
	nop
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE70:
	.size	mbedtls_mpi_core_exp_mod_optionally_safe, .-mbedtls_mpi_core_exp_mod_optionally_safe
	.section	.text.mbedtls_mpi_core_exp_mod,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_exp_mod
	.type	mbedtls_mpi_core_exp_mod, @function
mbedtls_mpi_core_exp_mod:
.LFB71:
	.loc 2 942 1
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
	.loc 2 943 5
	lw	a5,-48(s0)
	sw	a5,0(sp)
	lw	a7,-44(s0)
	li	a6,0
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_mpi_core_exp_mod_optionally_safe
	.loc 2 952 1
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
.LFE71:
	.size	mbedtls_mpi_core_exp_mod, .-mbedtls_mpi_core_exp_mod
	.section	.text.mbedtls_mpi_core_exp_mod_unsafe,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_exp_mod_unsafe
	.type	mbedtls_mpi_core_exp_mod_unsafe, @function
mbedtls_mpi_core_exp_mod_unsafe:
.LFB72:
	.loc 2 960 1
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
	.loc 2 961 5
	lw	a5,-48(s0)
	sw	a5,0(sp)
	lw	a7,-44(s0)
	li	a5,707407872
	addi	a6,a5,-1494
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_mpi_core_exp_mod_optionally_safe
	.loc 2 970 1
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
.LFE72:
	.size	mbedtls_mpi_core_exp_mod_unsafe, .-mbedtls_mpi_core_exp_mod_unsafe
	.section	.text.mbedtls_mpi_core_sub_int,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_sub_int
	.type	mbedtls_mpi_core_sub_int, @function
mbedtls_mpi_core_sub_int:
.LFB73:
	.loc 2 976 1
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
.LBB32:
	.loc 2 977 17
	sw	zero,-20(s0)
	.loc 2 977 5
	j	.L197
.L198:
.LBB33:
	.loc 2 978 31
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 2 978 26
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 979 26
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 980 16
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	sgtu	a5,a4,a5
	andi	a5,a5,0xff
	.loc 2 980 11
	sw	a5,-44(s0)
	.loc 2 981 10
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 2 981 14
	lw	a4,-28(s0)
	sw	a4,0(a5)
.LBE33:
	.loc 2 977 36 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L197:
	.loc 2 977 26 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	bltu	a4,a5,.L198
.LBE32:
	.loc 2 984 12
	lw	a5,-44(s0)
	.loc 2 985 1
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
	.size	mbedtls_mpi_core_sub_int, .-mbedtls_mpi_core_sub_int
	.section	.text.mbedtls_mpi_core_check_zero_ct,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_check_zero_ct
	.type	mbedtls_mpi_core_check_zero_ct, @function
mbedtls_mpi_core_check_zero_ct:
.LFB74:
	.loc 2 989 1
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
	.loc 2 990 38
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	.loc 2 991 22
	sw	zero,-20(s0)
.LBB34:
	.loc 2 993 17
	sw	zero,-24(s0)
	.loc 2 993 5
	j	.L201
.L202:
	.loc 2 994 29
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-28(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 994 14
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 993 36 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L201:
	.loc 2 993 26 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	bltu	a4,a5,.L202
.LBE34:
	.loc 2 997 12
	lw	a0,-20(s0)
	call	mbedtls_ct_bool
	mv	a5,a0
	.loc 2 998 1
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
.LFE74:
	.size	mbedtls_mpi_core_check_zero_ct, .-mbedtls_mpi_core_check_zero_ct
	.section	.text.mbedtls_mpi_core_to_mont_rep,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_to_mont_rep
	.type	mbedtls_mpi_core_to_mont_rep, @function
mbedtls_mpi_core_to_mont_rep:
.LFB75:
	.loc 2 1007 1
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
	.loc 2 1008 5
	lw	a7,-44(s0)
	lw	a6,-36(s0)
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	lw	a3,-32(s0)
	lw	a2,-40(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_mpi_core_montmul
	.loc 2 1009 1
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
.LFE75:
	.size	mbedtls_mpi_core_to_mont_rep, .-mbedtls_mpi_core_to_mont_rep
	.section	.text.mbedtls_mpi_core_from_mont_rep,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_from_mont_rep
	.type	mbedtls_mpi_core_from_mont_rep, @function
mbedtls_mpi_core_from_mont_rep:
.LFB76:
	.loc 2 1017 1
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
	.loc 2 1018 28
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1020 5
	addi	a2,s0,-20
	lw	a7,-56(s0)
	lw	a6,-52(s0)
	lw	a5,-48(s0)
	lw	a4,-44(s0)
	li	a3,1
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_core_montmul
	.loc 2 1021 1
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
.LFE76:
	.size	mbedtls_mpi_core_from_mont_rep, .-mbedtls_mpi_core_from_mont_rep
	.section	.text.mpi_core_sub_mod,"ax",@progbits
	.align	1
	.type	mpi_core_sub_mod, @function
mpi_core_sub_mod:
.LFB77:
	.loc 2 1032 1
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
	.loc 2 1033 26
	lw	a3,-52(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_core_sub
	sw	a0,-20(s0)
	.loc 2 1034 12
	lw	a3,-20(s0)
	lw	a2,-52(s0)
	lw	a1,-48(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_core_add_if
	.loc 2 1035 1
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
.LFE77:
	.size	mpi_core_sub_mod, .-mpi_core_sub_mod
	.section	.text.mbedtls_mpi_core_div2_mod_odd,"ax",@progbits
	.align	1
	.type	mbedtls_mpi_core_div2_mod_odd, @function
mbedtls_mpi_core_div2_mod_odd:
.LFB78:
	.loc 2 1045 1
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
	.loc 2 1047 20
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 1047 14
	andi	a5,a5,1
	sw	a5,-20(s0)
	.loc 2 1048 26
	lw	a3,-20(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_core_add_if
	sw	a0,-24(s0)
	.loc 2 1049 5
	li	a2,1
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_core_shift_r
	.loc 2 1050 6
	lw	a4,-44(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 2 1050 23
	lw	a5,-24(s0)
	slli	a4,a5,31
	.loc 2 1050 6
	lw	a2,-44(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a2,a5
	slli	a5,a5,2
	lw	a2,-36(s0)
	add	a5,a2,a5
	.loc 2 1050 18
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 2 1051 1
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
.LFE78:
	.size	mbedtls_mpi_core_div2_mod_odd, .-mbedtls_mpi_core_div2_mod_odd
	.section	.text.mbedtls_mpi_core_gcd_modinv_odd,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_core_gcd_modinv_odd
	.type	mbedtls_mpi_core_gcd_modinv_odd, @function
mbedtls_mpi_core_gcd_modinv_odd:
.LFB79:
	.loc 2 1099 1
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
	sw	a6,-108(s0)
	.loc 2 1101 23
	lw	a5,-108(s0)
	sw	a5,-28(s0)
	.loc 2 1102 23
	lw	a5,-84(s0)
	sw	a5,-32(s0)
	.loc 2 1105 29
	lw	a5,-104(s0)
	slli	a5,a5,2
	.loc 2 1105 23
	lw	a4,-108(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 2 1108 30
	lw	a5,-104(s0)
	slli	a5,a5,3
	.loc 2 1108 23
	lw	a4,-108(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 2 1109 30
	lw	a4,-104(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	.loc 2 1109 23
	lw	a5,-108(s0)
	add	a5,a5,a4
	sw	a5,-44(s0)
	.loc 2 1112 23
	lw	a5,-88(s0)
	sw	a5,-48(s0)
	.loc 2 1113 54
	lw	a5,-88(s0)
	beq	a5,zero,.L209
	.loc 2 1113 40 discriminator 1
	lw	a5,-104(s0)
	slli	a5,a5,4
	.loc 2 1113 23 discriminator 1
	lw	a4,-108(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	j	.L210
.L209:
	.loc 2 1113 23 is_stmt 0 discriminator 2
	sw	zero,-20(s0)
.L210:
	.loc 2 1124 8 is_stmt 1
	lw	a4,-96(s0)
	lw	a5,-104(s0)
	bleu	a4,a5,.L211
	.loc 2 1126 17
	lw	a5,-104(s0)
	sw	a5,-96(s0)
.L211:
	.loc 2 1128 5
	lw	a5,-96(s0)
	slli	a5,a5,2
	mv	a2,a5
	lw	a1,-92(s0)
	lw	a0,-28(s0)
	call	memcpy
	.loc 2 1129 33
	lw	a5,-96(s0)
	slli	a5,a5,2
	.loc 2 1129 5
	lw	a4,-28(s0)
	add	a3,a4,a5
	.loc 2 1129 75
	lw	a4,-104(s0)
	lw	a5,-96(s0)
	sub	a5,a4,a5
	.loc 2 1129 5
	slli	a5,a5,2
	mv	a2,a5
	li	a1,0
	mv	a0,a3
	call	memset
	.loc 2 1132 8
	lw	a4,-32(s0)
	lw	a5,-100(s0)
	beq	a4,a5,.L212
	.loc 2 1133 9
	lw	a5,-104(s0)
	slli	a5,a5,2
	mv	a2,a5
	lw	a1,-100(s0)
	lw	a0,-32(s0)
	call	memcpy
.L212:
	.loc 2 1136 8
	lw	a5,-88(s0)
	beq	a5,zero,.L213
	.loc 2 1137 9
	lw	a5,-104(s0)
	slli	a5,a5,2
	mv	a2,a5
	li	a1,0
	lw	a0,-48(s0)
	call	memset
	.loc 2 1139 9
	lw	a5,-104(s0)
	slli	a5,a5,2
	mv	a2,a5
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 2 1140 14
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,0(a5)
.L213:
.LBB35:
	.loc 2 1165 17
	sw	zero,-24(s0)
	.loc 2 1165 5
	j	.L214
.L216:
.LBB36:
	.loc 2 1167 61
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 2 1167 40
	andi	a5,a5,1
	mv	a0,a5
	call	mbedtls_ct_bool
	sw	a0,-52(s0)
	.loc 2 1168 61
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 2 1168 40
	andi	a5,a5,1
	mv	a0,a5
	call	mbedtls_ct_bool
	sw	a0,-56(s0)
	.loc 2 1171 46
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_ct_bool_and
	sw	a0,-60(s0)
	.loc 2 1172 41
	lw	a0,-56(s0)
	call	mbedtls_ct_bool_not
	sw	a0,-64(s0)
	.loc 2 1173 47
	lw	a1,-64(s0)
	lw	a0,-52(s0)
	call	mbedtls_ct_bool_and
	sw	a0,-68(s0)
	.loc 2 1177 16
	lw	a3,-104(s0)
	lw	a2,-28(s0)
	lw	a1,-32(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_core_sub
	.loc 2 1180 9
	lw	a5,-104(s0)
	slli	a5,a5,2
	mv	a2,a5
	lw	a1,-36(s0)
	lw	a0,-40(s0)
	call	memcpy
	.loc 2 1181 9
	lw	a3,-60(s0)
	lw	a2,-104(s0)
	lw	a1,-28(s0)
	lw	a0,-40(s0)
	call	mbedtls_mpi_core_cond_assign
	.loc 2 1185 9
	lw	a5,-104(s0)
	slli	a5,a5,2
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-44(s0)
	call	memcpy
	.loc 2 1186 9
	lw	a3,-68(s0)
	lw	a2,-104(s0)
	lw	a1,-32(s0)
	lw	a0,-44(s0)
	call	mbedtls_mpi_core_cond_assign
	.loc 2 1187 9
	lw	a3,-60(s0)
	lw	a2,-104(s0)
	lw	a1,-36(s0)
	lw	a0,-44(s0)
	call	mbedtls_mpi_core_cond_assign
	.loc 2 1189 9
	li	a2,1
	lw	a1,-104(s0)
	lw	a0,-44(s0)
	call	mbedtls_mpi_core_shift_r
	.loc 2 1192 9
	lw	a5,-104(s0)
	slli	a5,a5,2
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-28(s0)
	call	memcpy
	.loc 2 1193 9
	lw	a5,-104(s0)
	slli	a5,a5,2
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-32(s0)
	call	memcpy
	.loc 2 1194 39
	lw	a2,-104(s0)
	lw	a1,-28(s0)
	lw	a0,-32(s0)
	call	mbedtls_mpi_core_lt_ct
	sw	a0,-72(s0)
	.loc 2 1195 9
	lw	a3,-72(s0)
	lw	a2,-104(s0)
	lw	a1,-32(s0)
	lw	a0,-28(s0)
	call	mbedtls_mpi_core_cond_swap
	.loc 2 1215 12
	lw	a5,-88(s0)
	beq	a5,zero,.L215
	.loc 2 1217 13
	lw	a4,-104(s0)
	lw	a3,-100(s0)
	lw	a2,-20(s0)
	lw	a1,-48(s0)
	lw	a0,-36(s0)
	call	mpi_core_sub_mod
	.loc 2 1220 13
	lw	a5,-104(s0)
	slli	a5,a5,2
	mv	a2,a5
	lw	a1,-36(s0)
	lw	a0,-40(s0)
	call	memcpy
	.loc 2 1221 13
	lw	a3,-60(s0)
	lw	a2,-104(s0)
	lw	a1,-20(s0)
	lw	a0,-40(s0)
	call	mbedtls_mpi_core_cond_assign
	.loc 2 1224 13
	lw	a5,-104(s0)
	slli	a5,a5,2
	mv	a2,a5
	lw	a1,-20(s0)
	lw	a0,-44(s0)
	call	memcpy
	.loc 2 1225 13
	lw	a3,-68(s0)
	lw	a2,-104(s0)
	lw	a1,-48(s0)
	lw	a0,-44(s0)
	call	mbedtls_mpi_core_cond_assign
	.loc 2 1226 13
	lw	a3,-60(s0)
	lw	a2,-104(s0)
	lw	a1,-36(s0)
	lw	a0,-44(s0)
	call	mbedtls_mpi_core_cond_assign
	.loc 2 1228 13
	lw	a2,-104(s0)
	lw	a1,-100(s0)
	lw	a0,-44(s0)
	call	mbedtls_mpi_core_div2_mod_odd
	.loc 2 1231 13
	lw	a5,-104(s0)
	slli	a5,a5,2
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	call	memcpy
	.loc 2 1232 13
	lw	a5,-104(s0)
	slli	a5,a5,2
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-48(s0)
	call	memcpy
	.loc 2 1233 13
	lw	a3,-72(s0)
	lw	a2,-104(s0)
	lw	a1,-48(s0)
	lw	a0,-20(s0)
	call	mbedtls_mpi_core_cond_swap
.L215:
.LBE36:
	.loc 2 1165 86 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L214:
	.loc 2 1165 37 discriminator 1
	lw	a4,-96(s0)
	lw	a5,-104(s0)
	add	a5,a4,a5
	.loc 2 1165 48 discriminator 1
	slli	a5,a5,5
	.loc 2 1165 26 discriminator 1
	lw	a4,-24(s0)
	bltu	a4,a5,.L216
.LBE35:
	.loc 2 1238 1
	nop
	nop
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE79:
	.size	mbedtls_mpi_core_gcd_modinv_odd, .-mbedtls_mpi_core_gcd_modinv_odd
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/constant_time_internal.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1cee
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1e
	.4byte	.LASF151
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x11
	.4byte	0x32
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1f
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xd
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x11
	.4byte	0x76
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xd
	.4byte	.LASF13
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0xd
	.4byte	.LASF14
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x20
	.byte	0x4
	.uleb128 0x1c
	.4byte	0xa6
	.uleb128 0xb
	.4byte	0x32
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0xb
	.4byte	0xc3
	.uleb128 0x1c
	.4byte	0xb9
	.uleb128 0x21
	.uleb128 0x22
	.4byte	0x68
	.4byte	0xdd
	.uleb128 0x6
	.4byte	0xa6
	.uleb128 0x6
	.4byte	0xad
	.uleb128 0x6
	.4byte	0x76
	.byte	0
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x5
	.byte	0xa9
	.byte	0x11
	.4byte	0x8e
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x5
	.byte	0xaa
	.byte	0x12
	.4byte	0x9a
	.uleb128 0x11
	.4byte	0xe9
	.uleb128 0x23
	.4byte	0xf5
	.uleb128 0x24
	.4byte	.LASF18
	.byte	0x8
	.byte	0x5
	.byte	0xd0
	.byte	0x10
	.4byte	0x12b
	.uleb128 0x17
	.string	"p"
	.byte	0xd5
	.byte	0x17
	.4byte	0x12b
	.byte	0
	.uleb128 0x17
	.string	"s"
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x17
	.string	"n"
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.4byte	0xe9
	.uleb128 0x11
	.4byte	0x12b
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x5
	.byte	0xf0
	.byte	0x1
	.4byte	0xff
	.uleb128 0x11
	.4byte	0x135
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x6
	.byte	0x50
	.byte	0x12
	.4byte	0x9a
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x6
	.byte	0x51
	.byte	0x12
	.4byte	0x9a
	.uleb128 0x11
	.4byte	0x152
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x6
	.byte	0x52
	.byte	0x11
	.4byte	0x8e
	.uleb128 0x16
	.4byte	.LASF22
	.2byte	0x123
	.4byte	0x68
	.4byte	0x189
	.uleb128 0x6
	.4byte	0x189
	.uleb128 0x6
	.4byte	0x76
	.byte	0
	.uleb128 0xb
	.4byte	0x135
	.uleb128 0x16
	.4byte	.LASF23
	.2byte	0x35d
	.4byte	0x68
	.4byte	0x1ad
	.uleb128 0x6
	.4byte	0x189
	.uleb128 0x6
	.4byte	0x1ad
	.uleb128 0x6
	.4byte	0x1ad
	.byte	0
	.uleb128 0xb
	.4byte	0x141
	.uleb128 0x16
	.4byte	.LASF24
	.2byte	0x269
	.4byte	0x68
	.4byte	0x1cc
	.uleb128 0x6
	.4byte	0x189
	.uleb128 0x6
	.4byte	0x76
	.byte	0
	.uleb128 0x16
	.4byte	.LASF25
	.2byte	0x181
	.4byte	0x68
	.4byte	0x1e6
	.uleb128 0x6
	.4byte	0x189
	.uleb128 0x6
	.4byte	0xdd
	.byte	0
	.uleb128 0x25
	.4byte	.LASF152
	.byte	0x6
	.2byte	0x1ef
	.byte	0x6
	.4byte	0x20d
	.uleb128 0x6
	.4byte	0x146
	.uleb128 0x6
	.4byte	0xad
	.uleb128 0x6
	.4byte	0x20d
	.uleb128 0x6
	.4byte	0x20d
	.uleb128 0x6
	.4byte	0x76
	.byte	0
	.uleb128 0xb
	.4byte	0x39
	.uleb128 0x1d
	.4byte	.LASF26
	.byte	0x1f
	.4byte	0xa6
	.4byte	0x230
	.uleb128 0x6
	.4byte	0xa8
	.uleb128 0x6
	.4byte	0xbe
	.uleb128 0x6
	.4byte	0x76
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF27
	.byte	0x21
	.4byte	0xa6
	.4byte	0x24e
	.uleb128 0x6
	.4byte	0xa6
	.uleb128 0x6
	.4byte	0x68
	.uleb128 0x6
	.4byte	0x76
	.byte	0
	.uleb128 0xe
	.4byte	.LASF39
	.2byte	0x444
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b9
	.uleb128 0x1
	.string	"G"
	.byte	0x2
	.2byte	0x444
	.byte	0x38
	.4byte	0x12b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.string	"I"
	.byte	0x2
	.2byte	0x445
	.byte	0x38
	.4byte	0x12b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x446
	.byte	0x3e
	.4byte	0x3b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x2
	.2byte	0x447
	.byte	0x2d
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.string	"N"
	.byte	0x2
	.2byte	0x448
	.byte	0x3e
	.4byte	0x3b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x2
	.2byte	0x449
	.byte	0x2d
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1
	.string	"T"
	.byte	0x2
	.2byte	0x44a
	.byte	0x38
	.4byte	0x12b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2
	.string	"u"
	.byte	0x2
	.2byte	0x44d
	.byte	0x17
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"v"
	.byte	0x2
	.2byte	0x44e
	.byte	0x17
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.string	"d"
	.byte	0x2
	.2byte	0x451
	.byte	0x17
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"t1"
	.byte	0x2
	.2byte	0x454
	.byte	0x17
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"t2"
	.byte	0x2
	.2byte	0x455
	.byte	0x17
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"q"
	.byte	0x2
	.2byte	0x458
	.byte	0x17
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"r"
	.byte	0x2
	.2byte	0x459
	.byte	0x17
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x2
	.string	"i"
	.byte	0x2
	.2byte	0x48d
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x2
	.2byte	0x48f
	.byte	0x20
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x490
	.byte	0x20
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x2
	.2byte	0x493
	.byte	0x20
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x2
	.2byte	0x494
	.byte	0x20
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x2
	.2byte	0x495
	.byte	0x20
	.4byte	0x146
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x2
	.2byte	0x4aa
	.byte	0x20
	.4byte	0x146
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xf5
	.uleb128 0x10
	.4byte	.LASF37
	.2byte	0x412
	.byte	0x6
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41f
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x412
	.byte	0x36
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"N"
	.byte	0x2
	.2byte	0x413
	.byte	0x3c
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x414
	.byte	0x2b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"odd"
	.byte	0x2
	.2byte	0x417
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"c"
	.byte	0x2
	.2byte	0x418
	.byte	0x16
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF38
	.2byte	0x403
	.byte	0xd
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48c
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x403
	.byte	0x30
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x404
	.byte	0x36
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"B"
	.byte	0x2
	.2byte	0x405
	.byte	0x36
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"N"
	.byte	0x2
	.2byte	0x406
	.byte	0x36
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x407
	.byte	0x25
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"c"
	.byte	0x2
	.2byte	0x409
	.byte	0x16
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF40
	.2byte	0x3f3
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x509
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x3f3
	.byte	0x37
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x3f4
	.byte	0x3d
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"N"
	.byte	0x2
	.2byte	0x3f5
	.byte	0x3d
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x3f6
	.byte	0x2c
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"mm"
	.byte	0x2
	.2byte	0x3f7
	.byte	0x36
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"T"
	.byte	0x2
	.2byte	0x3f8
	.byte	0x37
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x3fa
	.byte	0x1c
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF43
	.2byte	0x3e8
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x585
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x3e8
	.byte	0x35
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x3e9
	.byte	0x3b
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"N"
	.byte	0x2
	.2byte	0x3ea
	.byte	0x3b
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x3eb
	.byte	0x2a
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"mm"
	.byte	0x2
	.2byte	0x3ec
	.byte	0x34
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"rr"
	.byte	0x2
	.2byte	0x3ed
	.byte	0x3b
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"T"
	.byte	0x2
	.2byte	0x3ee
	.byte	0x35
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0xf
	.4byte	.LASF46
	.2byte	0x3db
	.byte	0x18
	.4byte	0x146
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f6
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x3db
	.byte	0x4f
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x3dc
	.byte	0x3e
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x2
	.2byte	0x3de
	.byte	0x26
	.4byte	0x5f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x2
	.2byte	0x3df
	.byte	0x16
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0x2
	.string	"i"
	.byte	0x2
	.2byte	0x3e1
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xfa
	.uleb128 0x13
	.4byte	.LASF47
	.2byte	0x3cc
	.4byte	0xe9
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x68d
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x3cc
	.byte	0x3d
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x3cd
	.byte	0x43
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"c"
	.byte	0x2
	.2byte	0x3ce
	.byte	0x3c
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x3cf
	.byte	0x32
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.uleb128 0x2
	.string	"i"
	.byte	0x2
	.2byte	0x3d1
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x2
	.string	"s"
	.byte	0x2
	.2byte	0x3d2
	.byte	0x1a
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"t"
	.byte	0x2
	.2byte	0x3d3
	.byte	0x1a
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF48
	.2byte	0x3ba
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x718
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x3ba
	.byte	0x38
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x3bb
	.byte	0x3e
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"N"
	.byte	0x2
	.2byte	0x3bc
	.byte	0x3e
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x3bc
	.byte	0x48
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"E"
	.byte	0x2
	.2byte	0x3bd
	.byte	0x3e
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x2
	.2byte	0x3bd
	.byte	0x48
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"RR"
	.byte	0x2
	.2byte	0x3be
	.byte	0x3e
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"T"
	.byte	0x2
	.2byte	0x3bf
	.byte	0x38
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.4byte	.LASF50
	.2byte	0x3a8
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a3
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x3a8
	.byte	0x31
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x3a9
	.byte	0x37
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"N"
	.byte	0x2
	.2byte	0x3aa
	.byte	0x37
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x3aa
	.byte	0x41
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"E"
	.byte	0x2
	.2byte	0x3ab
	.byte	0x37
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x2
	.2byte	0x3ab
	.byte	0x41
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"RR"
	.byte	0x2
	.2byte	0x3ac
	.byte	0x37
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"T"
	.byte	0x2
	.2byte	0x3ad
	.byte	0x31
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x10
	.4byte	.LASF51
	.2byte	0x352
	.byte	0xd
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x906
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x352
	.byte	0x48
	.4byte	0x12b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x353
	.byte	0x4e
	.4byte	0x3b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.string	"N"
	.byte	0x2
	.2byte	0x354
	.byte	0x4e
	.4byte	0x3b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x355
	.byte	0x3d
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"E"
	.byte	0x2
	.2byte	0x356
	.byte	0x4e
	.4byte	0x3b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x2
	.2byte	0x357
	.byte	0x3d
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x2
	.2byte	0x358
	.byte	0x3a
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1
	.string	"RR"
	.byte	0x2
	.2byte	0x359
	.byte	0x4e
	.4byte	0x3b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.string	"T"
	.byte	0x2
	.2byte	0x35a
	.byte	0x48
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x2
	.2byte	0x35f
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x2
	.2byte	0x360
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x2
	.2byte	0x364
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x2
	.2byte	0x365
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x2
	.2byte	0x369
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x2
	.2byte	0x36a
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x2
	.2byte	0x36d
	.byte	0x1d
	.4byte	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x2
	.2byte	0x36e
	.byte	0x1d
	.4byte	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x2
	.2byte	0x36f
	.byte	0x1d
	.4byte	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"mm"
	.byte	0x2
	.2byte	0x375
	.byte	0x1c
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x2
	.2byte	0x385
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x2
	.2byte	0x386
	.byte	0x16
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF64
	.2byte	0x329
	.byte	0x14
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x97d
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x2
	.2byte	0x329
	.byte	0x4b
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x2
	.2byte	0x32a
	.byte	0x4b
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x32b
	.byte	0x40
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x2
	.2byte	0x32b
	.byte	0x51
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x2
	.2byte	0x32c
	.byte	0x4a
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x2
	.2byte	0x32d
	.byte	0x3d
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x10
	.4byte	.LASF66
	.2byte	0x2fa
	.byte	0x14
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9fc
	.uleb128 0x1
	.string	"E"
	.byte	0x2
	.2byte	0x2fa
	.byte	0x53
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x2
	.2byte	0x2fb
	.byte	0x42
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x2
	.2byte	0x2fc
	.byte	0x3f
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x2
	.2byte	0x2fd
	.byte	0x43
	.4byte	0x9fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x2
	.2byte	0x2fe
	.byte	0x43
	.4byte	0x9fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x2
	.2byte	0x304
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x76
	.uleb128 0x10
	.4byte	.LASF68
	.2byte	0x2d3
	.byte	0xd
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae3
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x2d3
	.byte	0x3f
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"N"
	.byte	0x2
	.2byte	0x2d4
	.byte	0x3f
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x2d5
	.byte	0x2e
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"mm"
	.byte	0x2
	.2byte	0x2d6
	.byte	0x38
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"RR"
	.byte	0x2
	.2byte	0x2d7
	.byte	0x3f
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x2
	.2byte	0x2d8
	.byte	0x2e
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x2
	.2byte	0x2d9
	.byte	0x39
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x2
	.2byte	0x2da
	.byte	0x39
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.string	"W1"
	.byte	0x2
	.2byte	0x2e2
	.byte	0x17
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x2
	.2byte	0x2e6
	.byte	0x17
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x2
	.string	"i"
	.byte	0x2
	.2byte	0x2e7
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x2
	.2byte	0x2e8
	.byte	0x1b
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF71
	.2byte	0x2c6
	.byte	0x8
	.4byte	0x76
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb6e
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x2c6
	.byte	0x36
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x2
	.2byte	0x2c6
	.byte	0x47
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x2
	.2byte	0x2c8
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x2
	.2byte	0x2c9
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x2
	.2byte	0x2cc
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x2
	.2byte	0x2cd
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x2
	.2byte	0x2ce
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x14
	.4byte	.LASF132
	.byte	0x2
	.2byte	0x2b8
	.byte	0xf
	.4byte	0x76
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb9a
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x2
	.2byte	0x2b8
	.byte	0x2e
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF74
	.2byte	0x27e
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc7e
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x27e
	.byte	0x2f
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"min"
	.byte	0x2
	.2byte	0x27f
	.byte	0x2e
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"N"
	.byte	0x2
	.2byte	0x280
	.byte	0x35
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x281
	.byte	0x24
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x282
	.byte	0x23
	.4byte	0xc7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x283
	.byte	0x23
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x285
	.byte	0x1c
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x285
	.byte	0x2a
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x286
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x287
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"ret"
	.byte	0x2
	.2byte	0x288
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x29b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.4byte	.LASF85
	.2byte	0x2b4
	.4byte	.L164
	.byte	0
	.uleb128 0xb
	.4byte	0xc4
	.uleb128 0xf
	.4byte	.LASF82
	.2byte	0x268
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd27
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x269
	.byte	0x17
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x269
	.byte	0x21
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x26a
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x26b
	.byte	0xb
	.4byte	0xc7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x26b
	.byte	0x3a
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"ret"
	.byte	0x2
	.2byte	0x26d
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x26e
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x26f
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LASF85
	.2byte	0x27a
	.4byte	.L158
	.byte	0
	.uleb128 0x10
	.4byte	.LASF86
	.2byte	0x256
	.byte	0x6
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdc0
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x256
	.byte	0x3e
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x257
	.byte	0x44
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x258
	.byte	0x33
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x259
	.byte	0x33
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x25a
	.byte	0x33
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x2
	.string	"i"
	.byte	0x2
	.2byte	0x25c
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x25d
	.byte	0x20
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF91
	.2byte	0x247
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe12
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x247
	.byte	0x36
	.4byte	0x189
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"N"
	.byte	0x2
	.2byte	0x248
	.byte	0x3c
	.4byte	0x1ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"ret"
	.byte	0x2
	.2byte	0x24a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF85
	.2byte	0x251
	.4byte	.L144
	.byte	0
	.uleb128 0xe
	.4byte	.LASF92
	.2byte	0x20f
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf01
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x20f
	.byte	0x31
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x210
	.byte	0x37
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"B"
	.byte	0x2
	.2byte	0x211
	.byte	0x37
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x212
	.byte	0x26
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"N"
	.byte	0x2
	.2byte	0x213
	.byte	0x37
	.4byte	0x3b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x214
	.byte	0x26
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.string	"mm"
	.byte	0x2
	.2byte	0x215
	.byte	0x30
	.4byte	0xe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.string	"T"
	.byte	0x2
	.2byte	0x216
	.byte	0x31
	.4byte	0x12b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x22f
	.byte	0x16
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x230
	.byte	0x16
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x2
	.string	"i"
	.byte	0x2
	.2byte	0x21a
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x2
	.string	"u0"
	.byte	0x2
	.2byte	0x21c
	.byte	0x1a
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.string	"u1"
	.byte	0x2
	.2byte	0x21d
	.byte	0x1a
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF96
	.2byte	0x202
	.4byte	0xe9
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf4f
	.uleb128 0x1
	.string	"N"
	.byte	0x2
	.2byte	0x202
	.byte	0x48
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"x"
	.byte	0x2
	.2byte	0x204
	.byte	0x16
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x2
	.string	"i"
	.byte	0x2
	.2byte	0x208
	.byte	0x17
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF97
	.2byte	0x1f4
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfc7
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x1f4
	.byte	0x2d
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x1f5
	.byte	0x33
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x2
	.2byte	0x1f5
	.byte	0x3d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"B"
	.byte	0x2
	.2byte	0x1f6
	.byte	0x33
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x1f6
	.byte	0x3d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x2
	.string	"i"
	.byte	0x2
	.2byte	0x1fa
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF98
	.2byte	0x1ce
	.4byte	0xe9
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x117e
	.uleb128 0x1
	.string	"d"
	.byte	0x2
	.2byte	0x1ce
	.byte	0x39
	.4byte	0x12b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x2
	.2byte	0x1ce
	.byte	0x43
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1
	.string	"s"
	.byte	0x2
	.2byte	0x1cf
	.byte	0x3f
	.4byte	0x3b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0x2
	.2byte	0x1cf
	.byte	0x49
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1
	.string	"b"
	.byte	0x2
	.2byte	0x1d0
	.byte	0x38
	.4byte	0xe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2
	.string	"c"
	.byte	0x2
	.2byte	0x1d2
	.byte	0x16
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0x2
	.2byte	0x1db
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF102
	.byte	0x2
	.2byte	0x1dc
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0x2
	.2byte	0x1dd
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x10fb
	.uleb128 0x2
	.string	"s0"
	.byte	0x2
	.2byte	0x1e0
	.byte	0x1c
	.4byte	0xe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.string	"s1"
	.byte	0x2
	.2byte	0x1e0
	.byte	0x20
	.4byte	0xe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.string	"b0"
	.byte	0x2
	.2byte	0x1e0
	.byte	0x24
	.4byte	0xe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.string	"b1"
	.byte	0x2
	.2byte	0x1e0
	.byte	0x28
	.4byte	0xe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.string	"r0"
	.byte	0x2
	.2byte	0x1e0
	.byte	0x3d
	.4byte	0xe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.string	"r1"
	.byte	0x2
	.2byte	0x1e0
	.byte	0x41
	.4byte	0xe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2
	.string	"rx"
	.byte	0x2
	.2byte	0x1e0
	.byte	0x45
	.4byte	0xe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.string	"ry"
	.byte	0x2
	.2byte	0x1e0
	.byte	0x49
	.4byte	0xe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x5
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x2
	.string	"s0"
	.byte	0x2
	.2byte	0x1e6
	.byte	0x1c
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"s1"
	.byte	0x2
	.2byte	0x1e6
	.byte	0x20
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"b0"
	.byte	0x2
	.2byte	0x1e6
	.byte	0x24
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"b1"
	.byte	0x2
	.2byte	0x1e6
	.byte	0x28
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"r0"
	.byte	0x2
	.2byte	0x1e6
	.byte	0x3d
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"r1"
	.byte	0x2
	.2byte	0x1e6
	.byte	0x41
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.string	"rx"
	.byte	0x2
	.2byte	0x1e6
	.byte	0x45
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"ry"
	.byte	0x2
	.2byte	0x1e6
	.byte	0x49
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF104
	.2byte	0x1bd
	.4byte	0xe9
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x121e
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x1bd
	.byte	0x39
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x1be
	.byte	0x3f
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"B"
	.byte	0x2
	.2byte	0x1bf
	.byte	0x3f
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x1c0
	.byte	0x2e
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"c"
	.byte	0x2
	.2byte	0x1c2
	.byte	0x16
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x2
	.string	"i"
	.byte	0x2
	.2byte	0x1c4
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x2
	.string	"z"
	.byte	0x2
	.2byte	0x1c5
	.byte	0x1a
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"t"
	.byte	0x2
	.2byte	0x1c6
	.byte	0x1a
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF105
	.2byte	0x1a8
	.byte	0x12
	.4byte	0xe9
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12d3
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x1a8
	.byte	0x3c
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x1a9
	.byte	0x42
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x1aa
	.byte	0x31
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0x2
	.2byte	0x1ab
	.byte	0x33
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.string	"c"
	.byte	0x2
	.2byte	0x1ad
	.byte	0x16
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0x2
	.2byte	0x1af
	.byte	0x1c
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x2
	.string	"i"
	.byte	0x2
	.2byte	0x1b1
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x2
	.string	"add"
	.byte	0x2
	.2byte	0x1b2
	.byte	0x1a
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.string	"t"
	.byte	0x2
	.2byte	0x1b3
	.byte	0x1a
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF108
	.2byte	0x196
	.4byte	0xe9
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1365
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x196
	.byte	0x39
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x197
	.byte	0x3f
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"B"
	.byte	0x2
	.2byte	0x198
	.byte	0x3f
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x199
	.byte	0x2e
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"c"
	.byte	0x2
	.2byte	0x19b
	.byte	0x16
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x2
	.string	"i"
	.byte	0x2
	.2byte	0x19d
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x2
	.string	"t"
	.byte	0x2
	.2byte	0x19e
	.byte	0x1a
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x173
	.byte	0x6
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13f5
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x173
	.byte	0x31
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x173
	.byte	0x3b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x174
	.byte	0x26
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.string	"i"
	.byte	0x2
	.2byte	0x176
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"v0"
	.byte	0x2
	.2byte	0x176
	.byte	0xf
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"v1"
	.byte	0x2
	.2byte	0x176
	.byte	0x13
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.string	"r0"
	.byte	0x2
	.2byte	0x177
	.byte	0x16
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"r1"
	.byte	0x2
	.2byte	0x177
	.byte	0x1e
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xe
	.4byte	.LASF110
	.2byte	0x14b
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1483
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x14b
	.byte	0x31
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x14b
	.byte	0x3b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x14c
	.byte	0x26
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.string	"i"
	.byte	0x2
	.2byte	0x14e
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"v0"
	.byte	0x2
	.2byte	0x14e
	.byte	0xf
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"v1"
	.byte	0x2
	.2byte	0x14e
	.byte	0x13
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.string	"r0"
	.byte	0x2
	.2byte	0x14f
	.byte	0x16
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"r1"
	.byte	0x2
	.2byte	0x14f
	.byte	0x1e
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xf
	.4byte	.LASF111
	.2byte	0x124
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x153e
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x124
	.byte	0x37
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x125
	.byte	0x26
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x126
	.byte	0x2e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x127
	.byte	0x26
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.4byte	.LASF114
	.byte	0x2
	.2byte	0x129
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x12a
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"p"
	.byte	0x2
	.2byte	0x12b
	.byte	0x14
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x1525
	.uleb128 0x2
	.string	"i"
	.byte	0x2
	.2byte	0x13d
	.byte	0x15
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x2
	.string	"i"
	.byte	0x2
	.2byte	0x144
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF116
	.2byte	0x102
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15eb
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x102
	.byte	0x37
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x2
	.2byte	0x103
	.byte	0x26
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x104
	.byte	0x2e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x105
	.byte	0x26
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF114
	.byte	0x2
	.2byte	0x107
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x108
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x15d2
	.uleb128 0x2
	.string	"i"
	.byte	0x2
	.2byte	0x111
	.byte	0x15
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x2
	.string	"i"
	.byte	0x2
	.2byte	0x118
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF117
	.byte	0xe3
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1673
	.uleb128 0x7
	.string	"X"
	.byte	0x2
	.byte	0xe3
	.byte	0x30
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0x2
	.byte	0xe4
	.byte	0x25
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF118
	.byte	0x2
	.byte	0xe5
	.byte	0x33
	.4byte	0x20d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF119
	.byte	0x2
	.byte	0xe6
	.byte	0x25
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0xe8
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0xf8
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"Xp"
	.byte	0x2
	.byte	0xf9
	.byte	0x18
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF120
	.byte	0xcc
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1704
	.uleb128 0x7
	.string	"X"
	.byte	0x2
	.byte	0xcc
	.byte	0x30
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0x2
	.byte	0xcd
	.byte	0x25
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF118
	.byte	0x2
	.byte	0xce
	.byte	0x33
	.4byte	0x20d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF119
	.byte	0x2
	.byte	0xcf
	.byte	0x25
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0xd1
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x9
	.string	"i"
	.byte	0x2
	.byte	0xda
	.byte	0x15
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0xdb
	.byte	0x14
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF122
	.byte	0xbc
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1781
	.uleb128 0x7
	.string	"X"
	.byte	0x2
	.byte	0xbc
	.byte	0x33
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"Y"
	.byte	0x2
	.byte	0xbd
	.byte	0x33
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x2
	.byte	0xbe
	.byte	0x28
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x2
	.byte	0xbf
	.byte	0x38
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x9
	.string	"i"
	.byte	0x2
	.byte	0xc5
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x9
	.string	"tmp"
	.byte	0x2
	.byte	0xc6
	.byte	0x1a
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF123
	.byte	0xa9
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17e5
	.uleb128 0x7
	.string	"X"
	.byte	0x2
	.byte	0xa9
	.byte	0x35
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"A"
	.byte	0x2
	.byte	0xaa
	.byte	0x3b
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x2
	.byte	0xab
	.byte	0x2a
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0x2
	.byte	0xac
	.byte	0x3a
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x9
	.string	"i"
	.byte	0x2
	.byte	0xb7
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF124
	.byte	0x85
	.byte	0x18
	.4byte	0x146
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x186a
	.uleb128 0x7
	.string	"A"
	.byte	0x2
	.byte	0x85
	.byte	0x47
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"B"
	.byte	0x2
	.byte	0x86
	.byte	0x47
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x2
	.byte	0x87
	.byte	0x36
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.string	"ret"
	.byte	0x2
	.byte	0x89
	.byte	0x1c
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF106
	.byte	0x89
	.byte	0x5c
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0x89
	.byte	0x9d
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x9
	.string	"i"
	.byte	0x2
	.byte	0x8b
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0x73
	.byte	0x18
	.4byte	0x146
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18e2
	.uleb128 0x7
	.string	"min"
	.byte	0x2
	.byte	0x73
	.byte	0x46
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"A"
	.byte	0x2
	.byte	0x74
	.byte	0x4d
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x2
	.byte	0x75
	.byte	0x3c
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0x78
	.byte	0x1c
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0x7b
	.byte	0x1c
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x9
	.string	"i"
	.byte	0x2
	.byte	0x7c
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF129
	.byte	0x53
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1948
	.uleb128 0x7
	.string	"A"
	.byte	0x2
	.byte	0x53
	.byte	0x3b
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x2
	.byte	0x54
	.byte	0x30
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0x56
	.byte	0x17
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0x57
	.byte	0x17
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x9
	.string	"tmp"
	.byte	0x2
	.byte	0x68
	.byte	0x1a
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF133
	.byte	0x2
	.byte	0x45
	.byte	0x19
	.4byte	0xe9
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1970
	.uleb128 0x7
	.string	"a"
	.byte	0x2
	.byte	0x45
	.byte	0x40
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF134
	.byte	0x36
	.byte	0x8
	.4byte	0x76
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19c0
	.uleb128 0x7
	.string	"A"
	.byte	0x2
	.byte	0x36
	.byte	0x38
	.4byte	0x3b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x2
	.byte	0x36
	.byte	0x42
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"i"
	.byte	0x2
	.byte	0x38
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"j"
	.byte	0x2
	.byte	0x39
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF135
	.byte	0x19
	.byte	0x8
	.4byte	0x76
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19e7
	.uleb128 0x7
	.string	"a"
	.byte	0x2
	.byte	0x19
	.byte	0x2e
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x213
	.byte	0x26
	.4byte	0x146
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a11
	.uleb128 0x1
	.string	"x"
	.byte	0x1
	.2byte	0x213
	.byte	0x51
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x20d
	.byte	0x26
	.4byte	0x146
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a49
	.uleb128 0x1
	.string	"x"
	.byte	0x1
	.2byte	0x20d
	.byte	0x50
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"y"
	.byte	0x1
	.2byte	0x20e
	.byte	0x50
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x207
	.byte	0x26
	.4byte	0x146
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a81
	.uleb128 0x1
	.string	"x"
	.byte	0x1
	.2byte	0x207
	.byte	0x51
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"y"
	.byte	0x1
	.2byte	0x208
	.byte	0x51
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.4byte	.LASF139
	.2byte	0x1f5
	.byte	0x26
	.4byte	0x146
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ab8
	.uleb128 0x1
	.string	"x"
	.byte	0x1
	.2byte	0x1f5
	.byte	0x4b
	.4byte	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"y"
	.byte	0x1
	.2byte	0x1f6
	.byte	0x4b
	.4byte	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.4byte	.LASF140
	.2byte	0x1e9
	.byte	0x26
	.4byte	0x146
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1aef
	.uleb128 0x1
	.string	"x"
	.byte	0x1
	.2byte	0x1e9
	.byte	0x4b
	.4byte	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"y"
	.byte	0x1
	.2byte	0x1ea
	.byte	0x4b
	.4byte	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x1d0
	.byte	0x20
	.4byte	0xe9
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b2b
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x1d0
	.byte	0x55
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"if1"
	.byte	0x1
	.2byte	0x1d1
	.byte	0x4f
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.4byte	.LASF143
	.2byte	0x1b3
	.byte	0x20
	.4byte	0xe9
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b76
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x1b3
	.byte	0x4e
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"if1"
	.byte	0x1
	.2byte	0x1b4
	.byte	0x48
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"if0"
	.byte	0x1
	.2byte	0x1b5
	.byte	0x48
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x15
	.4byte	.LASF144
	.2byte	0x17e
	.byte	0x26
	.4byte	0x146
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bbd
	.uleb128 0x1
	.string	"x"
	.byte	0x1
	.2byte	0x17e
	.byte	0x4b
	.4byte	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"y"
	.byte	0x1
	.2byte	0x17e
	.byte	0x60
	.4byte	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x181
	.byte	0x1d
	.4byte	0x15e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF146
	.2byte	0x10f
	.byte	0x26
	.4byte	0x146
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c32
	.uleb128 0x1
	.string	"x"
	.byte	0x1
	.2byte	0x10f
	.byte	0x4b
	.4byte	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"y"
	.byte	0x1
	.2byte	0x10f
	.byte	0x60
	.4byte	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"xo"
	.byte	0x1
	.2byte	0x162
	.byte	0x1d
	.4byte	0x15e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"yo"
	.byte	0x1
	.2byte	0x163
	.byte	0x1d
	.4byte	0x15e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x168
	.byte	0x1c
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"ret"
	.byte	0x1
	.2byte	0x174
	.byte	0x17
	.4byte	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF147
	.byte	0x1
	.byte	0xcd
	.byte	0x21
	.4byte	0x152
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c8a
	.uleb128 0x8
	.4byte	.LASF142
	.byte	0x1
	.byte	0xcd
	.byte	0x46
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"if1"
	.byte	0x1
	.byte	0xce
	.byte	0x41
	.4byte	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"if0"
	.byte	0x1
	.byte	0xcf
	.byte	0x41
	.4byte	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x109
	.byte	0x1c
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF149
	.byte	0x1
	.byte	0x78
	.byte	0x26
	.4byte	0x146
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ccd
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x78
	.byte	0x48
	.4byte	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"xo"
	.byte	0x1
	.byte	0xb8
	.byte	0x1d
	.4byte	0x15e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"y"
	.byte	0x1
	.byte	0xc0
	.byte	0x16
	.4byte	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.4byte	.LASF150
	.byte	0x1
	.byte	0x55
	.byte	0x21
	.4byte	0x152
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x55
	.byte	0x4e
	.4byte	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.sleb128 2
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
	.sleb128 18
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x7a
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
	.4byte	0x1b4
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
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
	.byte	0x7
	.4byte	.LFB21
	.uleb128 .LFE21-.LFB21
	.byte	0x7
	.4byte	.LFB25
	.uleb128 .LFE25-.LFB25
	.byte	0x7
	.4byte	.LFB28
	.uleb128 .LFE28-.LFB28
	.byte	0x7
	.4byte	.LFB30
	.uleb128 .LFE30-.LFB30
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF65:
	.string	"window_public"
.LASF77:
	.string	"ge_lower"
.LASF138:
	.string	"mbedtls_ct_bool_and"
.LASF104:
	.string	"mbedtls_mpi_core_sub"
.LASF19:
	.string	"mbedtls_ct_condition_t"
.LASF144:
	.string	"mbedtls_ct_uint_ne"
.LASF67:
	.string	"E_bits"
.LASF112:
	.string	"output"
.LASF98:
	.string	"mbedtls_mpi_core_mla"
.LASF68:
	.string	"exp_mod_precompute_window"
.LASF131:
	.string	"cur_limb_right"
.LASF10:
	.string	"unsigned int"
.LASF51:
	.string	"mbedtls_mpi_core_exp_mod_optionally_safe"
.LASF135:
	.string	"mbedtls_mpi_core_clz"
.LASF143:
	.string	"mbedtls_ct_mpi_uint_if"
.LASF54:
	.string	"E_bit_index"
.LASF100:
	.string	"s_len"
.LASF129:
	.string	"mbedtls_mpi_core_bigendian_to_host"
.LASF16:
	.string	"mbedtls_mpi_sint"
.LASF91:
	.string	"mbedtls_mpi_core_get_mont_r2_unsafe"
.LASF149:
	.string	"mbedtls_ct_bool"
.LASF29:
	.string	"N_limbs"
.LASF46:
	.string	"mbedtls_mpi_core_check_zero_ct"
.LASF49:
	.string	"E_limbs"
.LASF14:
	.string	"uint32_t"
.LASF69:
	.string	"Wprev"
.LASF102:
	.string	"steps_x8"
.LASF56:
	.string	"welem"
.LASF31:
	.string	"v_odd"
.LASF40:
	.string	"mbedtls_mpi_core_from_mont_rep"
.LASF34:
	.string	"u_odd_v_even"
.LASF81:
	.string	"count"
.LASF80:
	.string	"n_bytes"
.LASF9:
	.string	"long long unsigned int"
.LASF85:
	.string	"cleanup"
.LASF136:
	.string	"mbedtls_ct_bool_not"
.LASF137:
	.string	"mbedtls_ct_bool_or"
.LASF76:
	.string	"p_rng"
.LASF64:
	.string	"exp_mod_table_lookup_optionally_safe"
.LASF94:
	.string	"carry"
.LASF50:
	.string	"mbedtls_mpi_core_exp_mod"
.LASF17:
	.string	"mbedtls_mpi_uint"
.LASF12:
	.string	"size_t"
.LASF106:
	.string	"cond"
.LASF121:
	.string	"offset"
.LASF107:
	.string	"do_add"
.LASF130:
	.string	"cur_limb_left"
.LASF147:
	.string	"mbedtls_ct_if"
.LASF119:
	.string	"input_length"
.LASF120:
	.string	"mbedtls_mpi_core_read_le"
.LASF152:
	.string	"mbedtls_ct_memcpy_if"
.LASF15:
	.string	"char"
.LASF88:
	.string	"table"
.LASF58:
	.string	"select_limbs"
.LASF60:
	.string	"Wselect"
.LASF122:
	.string	"mbedtls_mpi_core_cond_swap"
.LASF140:
	.string	"mbedtls_ct_uint_eq"
.LASF37:
	.string	"mbedtls_mpi_core_div2_mod_odd"
.LASF116:
	.string	"mbedtls_mpi_core_write_le"
.LASF55:
	.string	"wsize"
.LASF74:
	.string	"mbedtls_mpi_core_random"
.LASF45:
	.string	"bits"
.LASF99:
	.string	"d_len"
.LASF35:
	.string	"swap"
.LASF25:
	.string	"mbedtls_mpi_lset"
.LASF8:
	.string	"long long int"
.LASF95:
	.string	"borrow"
.LASF93:
	.string	"B_limbs"
.LASF63:
	.string	"window"
.LASF47:
	.string	"mbedtls_mpi_core_sub_int"
.LASF113:
	.string	"output_length"
.LASF44:
	.string	"force_read_A"
.LASF39:
	.string	"mbedtls_mpi_core_gcd_modinv_odd"
.LASF27:
	.string	"memset"
.LASF128:
	.string	"msll_mask"
.LASF30:
	.string	"u_odd"
.LASF139:
	.string	"mbedtls_ct_uint_ge"
.LASF90:
	.string	"assign"
.LASF22:
	.string	"mbedtls_mpi_shrink"
.LASF92:
	.string	"mbedtls_mpi_core_montmul"
.LASF127:
	.string	"min_le_lsl"
.LASF57:
	.string	"table_limbs"
.LASF109:
	.string	"mbedtls_mpi_core_shift_l"
.LASF125:
	.string	"done"
.LASF110:
	.string	"mbedtls_mpi_core_shift_r"
.LASF71:
	.string	"mbedtls_mpi_core_exp_mod_working_limbs"
.LASF11:
	.string	"long double"
.LASF33:
	.string	"v_even"
.LASF97:
	.string	"mbedtls_mpi_core_mul"
.LASF36:
	.string	"limbs"
.LASF4:
	.string	"short int"
.LASF23:
	.string	"mbedtls_mpi_mod_mpi"
.LASF6:
	.string	"long int"
.LASF48:
	.string	"mbedtls_mpi_core_exp_mod_unsafe"
.LASF141:
	.string	"mbedtls_ct_mpi_uint_if_else_0"
.LASF43:
	.string	"mbedtls_mpi_core_to_mont_rep"
.LASF21:
	.string	"mbedtls_ct_int_t"
.LASF145:
	.string	"diff"
.LASF61:
	.string	"temp"
.LASF53:
	.string	"E_limb_index"
.LASF117:
	.string	"mbedtls_mpi_core_read_be"
.LASF75:
	.string	"f_rng"
.LASF38:
	.string	"mpi_core_sub_mod"
.LASF62:
	.string	"window_bits"
.LASF108:
	.string	"mbedtls_mpi_core_add"
.LASF24:
	.string	"mbedtls_mpi_shift_l"
.LASF126:
	.string	"mbedtls_mpi_core_uint_le_mpi"
.LASF59:
	.string	"Wtable"
.LASF7:
	.string	"long unsigned int"
.LASF101:
	.string	"excess_len"
.LASF150:
	.string	"mbedtls_ct_compiler_opaque"
.LASF41:
	.string	"AN_limbs"
.LASF13:
	.string	"int32_t"
.LASF83:
	.string	"X_limbs"
.LASF111:
	.string	"mbedtls_mpi_core_write_be"
.LASF118:
	.string	"input"
.LASF70:
	.string	"Wcur"
.LASF73:
	.string	"Ebits"
.LASF3:
	.string	"unsigned char"
.LASF114:
	.string	"stored_bytes"
.LASF124:
	.string	"mbedtls_mpi_core_lt_ct"
.LASF42:
	.string	"Rinv"
.LASF148:
	.string	"not_cond"
.LASF52:
	.string	"E_public"
.LASF96:
	.string	"mbedtls_mpi_core_montmul_init"
.LASF20:
	.string	"mbedtls_ct_uint_t"
.LASF84:
	.string	"overhead"
.LASF78:
	.string	"lt_upper"
.LASF2:
	.string	"signed char"
.LASF18:
	.string	"mbedtls_mpi"
.LASF66:
	.string	"exp_mod_calc_first_bit_optionally_safe"
.LASF146:
	.string	"mbedtls_ct_uint_lt"
.LASF32:
	.string	"u_odd_v_odd"
.LASF5:
	.string	"short unsigned int"
.LASF26:
	.string	"memcpy"
.LASF132:
	.string	"exp_mod_get_window_size"
.LASF28:
	.string	"A_limbs"
.LASF79:
	.string	"n_bits"
.LASF105:
	.string	"mbedtls_mpi_core_add_if"
.LASF89:
	.string	"index"
.LASF133:
	.string	"mpi_bigendian_to_host"
.LASF103:
	.string	"steps_x1"
.LASF123:
	.string	"mbedtls_mpi_core_cond_assign"
.LASF115:
	.string	"bytes_to_copy"
.LASF151:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF134:
	.string	"mbedtls_mpi_core_bitlen"
.LASF72:
	.string	"temp_limbs"
.LASF142:
	.string	"condition"
.LASF87:
	.string	"dest"
.LASF86:
	.string	"mbedtls_mpi_core_ct_uint_table_lookup"
.LASF82:
	.string	"mbedtls_mpi_core_fill_random"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/bignum_core.c"
	.globl	__bswapsi2
	.globl	__clzsi2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
