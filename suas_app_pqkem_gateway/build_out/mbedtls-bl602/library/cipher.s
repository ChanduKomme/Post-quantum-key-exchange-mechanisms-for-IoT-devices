	.file	"cipher.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/cipher.c"
	.section	.text.mbedtls_cipher_info_get_key_bitlen,"ax",@progbits
	.align	1
	.type	mbedtls_cipher_info_get_key_bitlen, @function
mbedtls_cipher_info_get_key_bitlen:
.LFB13:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/cipher.h"
	.loc 1 486 1
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
	.loc 1 487 8
	lw	a5,-20(s0)
	bne	a5,zero,.L2
	.loc 1 488 16
	li	a5,0
	j	.L3
.L2:
	.loc 1 490 30
	lw	a5,-20(s0)
	lw	a5,4(a5)
	srli	a5,a5,8
	andi	a5,a5,15
	andi	a5,a5,0xff
	.loc 1 490 44
	slli	a5,a5,6
.L3:
	.loc 1 492 1
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
.LFE13:
	.size	mbedtls_cipher_info_get_key_bitlen, .-mbedtls_cipher_info_get_key_bitlen
	.section	.text.mbedtls_cipher_info_get_iv_size,"ax",@progbits
	.align	1
	.type	mbedtls_cipher_info_get_iv_size, @function
mbedtls_cipher_info_get_iv_size:
.LFB15:
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
	.loc 1 528 8
	lw	a5,-20(s0)
	bne	a5,zero,.L5
	.loc 1 529 16
	li	a5,0
	j	.L6
.L5:
	.loc 1 532 26
	lw	a5,-20(s0)
	lw	a5,4(a5)
	srli	a5,a5,5
	andi	a5,a5,7
	andi	a5,a5,0xff
	.loc 1 532 37
	slli	a5,a5,2
.L6:
	.loc 1 533 1
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
.LFE15:
	.size	mbedtls_cipher_info_get_iv_size, .-mbedtls_cipher_info_get_iv_size
	.section	.text.mbedtls_cipher_get_block_size,"ax",@progbits
	.align	1
	.type	mbedtls_cipher_get_block_size, @function
mbedtls_cipher_get_block_size:
.LFB19:
	.loc 1 687 1
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
	.loc 1 688 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 688 8
	bne	a5,zero,.L8
	.loc 1 689 16
	li	a5,0
	j	.L9
.L8:
	.loc 1 692 30
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 692 43
	lw	a5,4(a5)
	andi	a5,a5,31
	andi	a5,a5,0xff
.L9:
	.loc 1 693 1
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
	.size	mbedtls_cipher_get_block_size, .-mbedtls_cipher_get_block_size
	.section	.text.mbedtls_cipher_get_iv_size,"ax",@progbits
	.align	1
	.type	mbedtls_cipher_get_iv_size, @function
mbedtls_cipher_get_iv_size:
.LFB21:
	.loc 1 726 1
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
	.loc 1 727 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 727 8
	bne	a5,zero,.L11
	.loc 1 728 16
	li	a5,0
	j	.L12
.L11:
	.loc 1 731 12
	lw	a5,-20(s0)
	lw	a5,56(a5)
	.loc 1 731 8
	beq	a5,zero,.L13
	.loc 1 732 25
	lw	a5,-20(s0)
	lw	a5,56(a5)
	.loc 1 732 16
	j	.L12
.L13:
	.loc 1 735 29
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 735 42
	lw	a5,4(a5)
	srli	a5,a5,5
	andi	a5,a5,7
	andi	a5,a5,0xff
	.loc 1 735 12
	slli	a5,a5,2
.L12:
	.loc 1 737 1
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
	.size	mbedtls_cipher_get_iv_size, .-mbedtls_cipher_get_iv_size
	.section	.text.mbedtls_ct_compiler_opaque,"ax",@progbits
	.align	1
	.type	mbedtls_ct_compiler_opaque, @function
mbedtls_ct_compiler_opaque:
.LFB27:
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
.LFE27:
	.size	mbedtls_ct_compiler_opaque, .-mbedtls_ct_compiler_opaque
	.section	.text.mbedtls_ct_bool,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool, @function
mbedtls_ct_bool:
.LFB28:
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
.LFE28:
	.size	mbedtls_ct_bool, .-mbedtls_ct_bool
	.section	.text.mbedtls_ct_if,"ax",@progbits
	.align	1
	.type	mbedtls_ct_if, @function
mbedtls_ct_if:
.LFB29:
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
.LFE29:
	.size	mbedtls_ct_if, .-mbedtls_ct_if
	.section	.text.mbedtls_ct_uint_lt,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_lt, @function
mbedtls_ct_uint_lt:
.LFB30:
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
.LFE30:
	.size	mbedtls_ct_uint_lt, .-mbedtls_ct_uint_lt
	.section	.text.mbedtls_ct_uint_ne,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_ne, @function
mbedtls_ct_uint_ne:
.LFB31:
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
.LFE31:
	.size	mbedtls_ct_uint_ne, .-mbedtls_ct_uint_ne
	.section	.text.mbedtls_ct_size_if,"ax",@progbits
	.align	1
	.type	mbedtls_ct_size_if, @function
mbedtls_ct_size_if:
.LFB33:
	.loc 2 414 1
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
	.loc 2 415 21
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ct_if
	mv	a5,a0
	.loc 2 416 1
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
	.size	mbedtls_ct_size_if, .-mbedtls_ct_size_if
	.section	.text.mbedtls_ct_bool_if,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool_if, @function
mbedtls_ct_bool_if:
.LFB35:
	.loc 2 428 1
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
	.loc 2 429 37
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ct_if
	mv	a5,a0
	.loc 2 431 1
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
	.size	mbedtls_ct_bool_if, .-mbedtls_ct_bool_if
	.section	.text.mbedtls_ct_size_if_else_0,"ax",@progbits
	.align	1
	.type	mbedtls_ct_size_if_else_0, @function
mbedtls_ct_size_if_else_0:
.LFB37:
	.loc 2 447 1
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
	.loc 2 448 12
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 2 449 1
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
.LFE37:
	.size	mbedtls_ct_size_if_else_0, .-mbedtls_ct_size_if_else_0
	.section	.text.mbedtls_ct_bool_if_else_0,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool_if_else_0, @function
mbedtls_ct_bool_if_else_0:
.LFB39:
	.loc 2 458 1
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
	.loc 2 459 12
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 2 460 1
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
.LFE39:
	.size	mbedtls_ct_bool_if_else_0, .-mbedtls_ct_bool_if_else_0
	.section	.text.mbedtls_ct_error_if_else_0,"ax",@progbits
	.align	1
	.type	mbedtls_ct_error_if_else_0, @function
mbedtls_ct_error_if_else_0:
.LFB42:
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
.LFE42:
	.size	mbedtls_ct_error_if_else_0, .-mbedtls_ct_error_if_else_0
	.section	.text.mbedtls_ct_uint_eq,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_eq, @function
mbedtls_ct_uint_eq:
.LFB43:
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
.LFE43:
	.size	mbedtls_ct_uint_eq, .-mbedtls_ct_uint_eq
	.section	.text.mbedtls_ct_uint_gt,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_gt, @function
mbedtls_ct_uint_gt:
.LFB44:
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
.LFE44:
	.size	mbedtls_ct_uint_gt, .-mbedtls_ct_uint_gt
	.section	.text.mbedtls_ct_uint_ge,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_ge, @function
mbedtls_ct_uint_ge:
.LFB45:
	.loc 2 503 1
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
	.loc 2 504 13
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ct_uint_lt
	mv	a5,a0
	.loc 2 504 12 discriminator 1
	not	a5,a5
	.loc 2 505 1
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
.LFE45:
	.size	mbedtls_ct_uint_ge, .-mbedtls_ct_uint_ge
	.section	.text.mbedtls_ct_bool_ne,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool_ne, @function
mbedtls_ct_bool_ne:
.LFB47:
	.loc 2 515 1
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
	.loc 2 516 12
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	xor	a5,a4,a5
	.loc 2 517 1
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
.LFE47:
	.size	mbedtls_ct_bool_ne, .-mbedtls_ct_bool_ne
	.section	.text.mbedtls_ct_bool_and,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool_and, @function
mbedtls_ct_bool_and:
.LFB48:
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
.LFE48:
	.size	mbedtls_ct_bool_and, .-mbedtls_ct_bool_and
	.section	.text.mbedtls_ct_bool_or,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool_or, @function
mbedtls_ct_bool_or:
.LFB49:
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
.LFE49:
	.size	mbedtls_ct_bool_or, .-mbedtls_ct_bool_or
	.section	.text.mbedtls_ct_bool_not,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool_not, @function
mbedtls_ct_bool_not:
.LFB50:
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
.LFE50:
	.size	mbedtls_ct_bool_not, .-mbedtls_ct_bool_not
	.section	.sbss.supported_init,"aw",@nobits
	.align	2
	.type	supported_init, @object
	.size	supported_init, 4
supported_init:
	.zero	4
	.section	.text.mbedtls_cipher_get_base,"ax",@progbits
	.align	1
	.type	mbedtls_cipher_get_base, @function
mbedtls_cipher_get_base:
.LFB54:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/cipher.c"
	.loc 3 61 1
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
	.loc 3 62 49
	lw	a5,-20(s0)
	lw	a5,4(a5)
	srli	a5,a5,26
	andi	a5,a5,31
	andi	a5,a5,0xff
	mv	a3,a5
	.loc 3 62 44
	lui	a5,%hi(mbedtls_cipher_base_lookup_table)
	addi	a4,a5,%lo(mbedtls_cipher_base_lookup_table)
	slli	a5,a3,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 3 63 1
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
.LFE54:
	.size	mbedtls_cipher_get_base, .-mbedtls_cipher_get_base
	.section	.text.mbedtls_cipher_list,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_list
	.type	mbedtls_cipher_list, @function
mbedtls_cipher_list:
.LFB55:
	.loc 3 66 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 3 70 9
	lui	a5,%hi(supported_init)
	lw	a5,%lo(supported_init)(a5)
	.loc 3 70 8
	bne	a5,zero,.L51
	.loc 3 71 13
	lui	a5,%hi(mbedtls_cipher_definitions)
	addi	a5,a5,%lo(mbedtls_cipher_definitions)
	sw	a5,-20(s0)
	.loc 3 72 14
	lui	a5,%hi(mbedtls_cipher_supported)
	addi	a5,a5,%lo(mbedtls_cipher_supported)
	sw	a5,-24(s0)
	.loc 3 74 15
	j	.L52
.L53:
	.loc 3 75 28
	lw	a5,-20(s0)
	addi	a4,a5,8
	sw	a4,-20(s0)
	.loc 3 75 31
	lbu	a3,0(a5)
	.loc 3 75 18
	lw	a5,-24(s0)
	addi	a4,a5,4
	sw	a4,-24(s0)
	.loc 3 75 31
	mv	a4,a3
	.loc 3 75 21
	sw	a4,0(a5)
.L52:
	.loc 3 74 19
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 3 74 26
	bne	a5,zero,.L53
	.loc 3 78 15
	lw	a5,-24(s0)
	sw	zero,0(a5)
	.loc 3 80 24
	lui	a5,%hi(supported_init)
	li	a4,1
	sw	a4,%lo(supported_init)(a5)
.L51:
	.loc 3 83 12
	lui	a5,%hi(mbedtls_cipher_supported)
	addi	a5,a5,%lo(mbedtls_cipher_supported)
	.loc 3 84 1
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
.LFE55:
	.size	mbedtls_cipher_list, .-mbedtls_cipher_list
	.section	.text.mbedtls_cipher_info_from_type,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_info_from_type
	.type	mbedtls_cipher_info_from_type, @function
mbedtls_cipher_info_from_type:
.LFB56:
	.loc 3 88 1
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
	sb	a5,-33(s0)
	.loc 3 91 14
	lui	a5,%hi(mbedtls_cipher_definitions)
	addi	a5,a5,%lo(mbedtls_cipher_definitions)
	sw	a5,-20(s0)
	.loc 3 91 5
	j	.L56
.L59:
	.loc 3 92 16
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 3 92 12
	lbu	a4,-33(s0)
	bne	a4,a5,.L57
	.loc 3 93 23
	lw	a5,-20(s0)
	lw	a5,4(a5)
	j	.L58
.L57:
	.loc 3 91 65 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.L56:
	.loc 3 91 47 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 3 91 54 discriminator 1
	bne	a5,zero,.L59
	.loc 3 97 11
	li	a5,0
.L58:
	.loc 3 98 1
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
	.size	mbedtls_cipher_info_from_type, .-mbedtls_cipher_info_from_type
	.section	.text.mbedtls_cipher_info_from_string,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_info_from_string
	.type	mbedtls_cipher_info_from_string, @function
mbedtls_cipher_info_from_string:
.LFB57:
	.loc 3 102 1
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
	.loc 3 105 8
	lw	a5,-36(s0)
	bne	a5,zero,.L61
	.loc 3 106 15
	li	a5,0
	j	.L62
.L61:
	.loc 3 109 14
	lui	a5,%hi(mbedtls_cipher_definitions)
	addi	a5,a5,%lo(mbedtls_cipher_definitions)
	sw	a5,-20(s0)
	.loc 3 109 5
	j	.L63
.L65:
	.loc 3 110 24
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 3 110 30
	lw	a5,0(a5)
	.loc 3 110 14
	lw	a1,-36(s0)
	mv	a0,a5
	call	strcmp
	mv	a5,a0
	.loc 3 110 12 discriminator 1
	bne	a5,zero,.L64
	.loc 3 111 23
	lw	a5,-20(s0)
	lw	a5,4(a5)
	j	.L62
.L64:
	.loc 3 109 65 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.L63:
	.loc 3 109 47 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 3 109 54 discriminator 1
	bne	a5,zero,.L65
	.loc 3 115 11
	li	a5,0
.L62:
	.loc 3 116 1
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
.LFE57:
	.size	mbedtls_cipher_info_from_string, .-mbedtls_cipher_info_from_string
	.section	.text.mbedtls_cipher_info_from_values,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_info_from_values
	.type	mbedtls_cipher_info_from_values, @function
mbedtls_cipher_info_from_values:
.LFB58:
	.loc 3 122 1
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
	mv	a4,a2
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 3 125 14
	lui	a5,%hi(mbedtls_cipher_definitions)
	addi	a5,a5,%lo(mbedtls_cipher_definitions)
	sw	a5,-20(s0)
	.loc 3 125 5
	j	.L67
.L70:
	.loc 3 126 40
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 3 126 13
	mv	a0,a5
	call	mbedtls_cipher_get_base
	mv	a5,a0
	.loc 3 126 47 discriminator 1
	lbu	a5,0(a5)
	.loc 3 126 12 discriminator 1
	lbu	a4,-33(s0)
	bne	a4,a5,.L68
	.loc 3 127 51
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 3 127 13
	mv	a0,a5
	call	mbedtls_cipher_info_get_key_bitlen
	mv	a4,a0
	.loc 3 127 62 discriminator 1
	lw	a5,-40(s0)
	.loc 3 126 69 discriminator 2
	bne	a4,a5,.L68
	.loc 3 128 16
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 3 128 22
	lw	a5,4(a5)
	srli	a5,a5,12
	andi	a5,a5,15
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 3 127 84
	lbu	a5,-34(s0)
	bne	a5,a4,.L68
	.loc 3 129 23
	lw	a5,-20(s0)
	lw	a5,4(a5)
	j	.L69
.L68:
	.loc 3 125 65 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.L67:
	.loc 3 125 47 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 3 125 54 discriminator 1
	bne	a5,zero,.L70
	.loc 3 133 11
	li	a5,0
.L69:
	.loc 3 134 1
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
.LFE58:
	.size	mbedtls_cipher_info_from_values, .-mbedtls_cipher_info_from_values
	.section	.text.mbedtls_cipher_init,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_init
	.type	mbedtls_cipher_init, @function
mbedtls_cipher_init:
.LFB59:
	.loc 3 203 1
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
	.loc 3 204 5
	li	a2,68
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 3 205 1
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
.LFE59:
	.size	mbedtls_cipher_init, .-mbedtls_cipher_init
	.section	.text.mbedtls_cipher_free,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_free
	.type	mbedtls_cipher_free, @function
mbedtls_cipher_free:
.LFB60:
	.loc 3 208 1
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
	.loc 3 209 8
	lw	a5,-20(s0)
	beq	a5,zero,.L77
	.loc 3 233 12
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 3 233 8
	beq	a5,zero,.L75
	.loc 3 234 37
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 3 234 9
	li	a1,36
	mv	a0,a5
	call	mbedtls_zeroize_and_free
.L75:
	.loc 3 239 12
	lw	a5,-20(s0)
	lw	a5,60(a5)
	.loc 3 239 8
	beq	a5,zero,.L76
	.loc 3 240 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_cipher_get_base
	mv	a5,a0
	.loc 3 240 50 discriminator 1
	lw	a5,40(a5)
	.loc 3 240 9 discriminator 1
	lw	a4,-20(s0)
	lw	a4,60(a4)
	mv	a0,a4
	jalr	a5
.LVL0:
.L76:
	.loc 3 243 5
	li	a1,68
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
	j	.L72
.L77:
	.loc 3 210 9
	nop
.L72:
	.loc 3 244 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE60:
	.size	mbedtls_cipher_free, .-mbedtls_cipher_free
	.section	.text.mbedtls_cipher_setup,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_setup
	.type	mbedtls_cipher_setup, @function
mbedtls_cipher_setup:
.LFB61:
	.loc 3 248 1
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
	.loc 3 249 8
	lw	a5,-24(s0)
	bne	a5,zero,.L79
	.loc 3 250 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L80
.L79:
	.loc 3 253 5
	li	a2,68
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 3 255 9
	lw	a0,-24(s0)
	call	mbedtls_cipher_get_base
	mv	a5,a0
	.loc 3 255 45 discriminator 1
	lw	a5,36(a5)
	.loc 3 255 8 discriminator 1
	beq	a5,zero,.L81
	.loc 3 256 27
	lw	a0,-24(s0)
	call	mbedtls_cipher_get_base
	mv	a5,a0
	.loc 3 256 63 discriminator 1
	lw	a5,36(a5)
	.loc 3 256 27 discriminator 1
	jalr	a5
.LVL1:
	mv	a4,a0
	.loc 3 256 25 discriminator 2
	lw	a5,-20(s0)
	sw	a4,60(a5)
	.loc 3 257 16
	lw	a5,-20(s0)
	lw	a5,60(a5)
	.loc 3 257 12
	bne	a5,zero,.L81
	.loc 3 258 20
	li	a5,-24576
	addi	a5,a5,-384
	j	.L80
.L81:
	.loc 3 262 22
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 3 264 12
	li	a5,0
.L80:
	.loc 3 265 1
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
.LFE61:
	.size	mbedtls_cipher_setup, .-mbedtls_cipher_setup
	.section	.text.mbedtls_cipher_setkey,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_setkey
	.type	mbedtls_cipher_setkey, @function
mbedtls_cipher_setkey:
.LFB62:
	.loc 3 307 1
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
	mv	a5,a3
	sb	a5,-29(s0)
	.loc 3 308 8
	lb	a4,-29(s0)
	li	a5,1
	beq	a4,a5,.L83
	.loc 3 308 38 discriminator 1
	lb	a5,-29(s0)
	beq	a5,zero,.L83
	.loc 3 309 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L84
.L83:
	.loc 3 311 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 311 8
	bne	a5,zero,.L85
	.loc 3 312 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L84
.L85:
	.loc 3 379 13
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 379 26
	lw	a5,4(a5)
	srli	a5,a5,24
	andi	a5,a5,3
	andi	a5,a5,0xff
	.loc 3 379 34
	andi	a5,a5,2
	.loc 3 379 8
	bne	a5,zero,.L86
	.loc 3 380 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_cipher_info_get_key_bitlen
	mv	a5,a0
	.loc 3 380 9 discriminator 1
	mv	a4,a5
	.loc 3 379 47 discriminator 1
	lw	a5,-28(s0)
	beq	a5,a4,.L86
	.loc 3 381 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L84
.L86:
	.loc 3 384 21
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,4(a5)
	.loc 3 385 20
	lw	a5,-20(s0)
	lbu	a4,-29(s0)
	sb	a4,8(a5)
	.loc 3 391 8
	lb	a4,-29(s0)
	li	a5,1
	beq	a4,a5,.L87
	.loc 3 392 57
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 392 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 391 38 discriminator 1
	li	a5,12288
	beq	a4,a5,.L87
	.loc 3 393 57
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 393 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 392 78
	li	a5,16384
	beq	a4,a5,.L87
	.loc 3 394 57
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 394 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 393 78
	li	a5,20480
	bne	a4,a5,.L88
.L87:
	.loc 3 395 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_cipher_get_base
	mv	a5,a0
	.loc 3 395 57 discriminator 1
	lw	a5,28(a5)
	.loc 3 395 16 discriminator 1
	lw	a4,-20(s0)
	lw	a3,60(a4)
	.loc 3 396 78
	lw	a4,-20(s0)
	lw	a4,4(a4)
	.loc 3 395 16
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a3
	jalr	a5
.LVL2:
	mv	a5,a0
	j	.L84
.L88:
	.loc 3 399 8
	lb	a5,-29(s0)
	bne	a5,zero,.L89
	.loc 3 400 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_cipher_get_base
	mv	a5,a0
	.loc 3 400 57 discriminator 1
	lw	a5,32(a5)
	.loc 3 400 16 discriminator 1
	lw	a4,-20(s0)
	lw	a3,60(a4)
	.loc 3 401 78
	lw	a4,-20(s0)
	lw	a4,4(a4)
	.loc 3 400 16
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a3
	jalr	a5
.LVL3:
	mv	a5,a0
	j	.L84
.L89:
	.loc 3 410 12
	li	a5,-24576
	addi	a5,a5,-256
.L84:
	.loc 3 411 1
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
.LFE62:
	.size	mbedtls_cipher_setkey, .-mbedtls_cipher_setkey
	.section	.text.mbedtls_cipher_set_iv,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_set_iv
	.type	mbedtls_cipher_set_iv, @function
mbedtls_cipher_set_iv:
.LFB63:
	.loc 3 416 1
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
	.loc 3 419 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 419 8
	bne	a5,zero,.L91
	.loc 3 420 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L92
.L91:
	.loc 3 432 8
	lw	a4,-44(s0)
	li	a5,16
	bleu	a4,a5,.L93
	.loc 3 433 16
	li	a5,-24576
	addi	a5,a5,-128
	j	.L92
.L93:
	.loc 3 436 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 436 26
	lw	a5,4(a5)
	srli	a5,a5,24
	andi	a5,a5,3
	andi	a5,a5,0xff
	.loc 3 436 34
	andi	a5,a5,1
	.loc 3 436 8
	beq	a5,zero,.L94
	.loc 3 437 24
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	j	.L95
.L94:
	.loc 3 439 26
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_cipher_info_get_iv_size
	sw	a0,-20(s0)
	.loc 3 442 12
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bleu	a4,a5,.L95
	.loc 3 443 20
	li	a5,-24576
	addi	a5,a5,-256
	j	.L92
.L95:
	.loc 3 448 37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 448 50
	lbu	a4,6(a5)
	.loc 3 448 8
	li	a5,76
	bne	a4,a5,.L96
	.loc 3 452 12
	lw	a4,-44(s0)
	li	a5,12
	beq	a4,a5,.L97
	.loc 3 453 20
	li	a5,-24576
	addi	a5,a5,-256
	j	.L92
.L97:
	.loc 3 456 74
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 3 456 18
	li	a2,0
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_chacha20_starts
	mv	a5,a0
	.loc 3 456 12 discriminator 1
	beq	a5,zero,.L96
	.loc 3 459 20
	li	a5,-24576
	addi	a5,a5,-256
	j	.L92
.L96:
	.loc 3 471 57
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 471 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 471 8
	li	a5,24576
	bne	a4,a5,.L98
	.loc 3 472 62
	lw	a5,-36(s0)
	lw	a4,60(a5)
	.loc 3 473 38
	lw	a5,-36(s0)
	lb	a5,8(a5)
	.loc 3 472 16
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_gcm_starts
	mv	a5,a0
	j	.L92
.L98:
	.loc 3 479 69
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 479 38
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 479 8
	li	a5,36864
	bne	a4,a5,.L99
.LBB2:
	.loc 3 484 40
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 3 483 30
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	mbedtls_ccm_set_lengths
	sw	a0,-28(s0)
	.loc 3 486 12
	lw	a5,-28(s0)
	beq	a5,zero,.L100
	.loc 3 487 20
	lw	a5,-28(s0)
	j	.L92
.L100:
	.loc 3 490 16
	lw	a5,-36(s0)
	lb	a5,8(a5)
	.loc 3 490 12
	bne	a5,zero,.L101
	.loc 3 491 27
	li	a5,2
	sw	a5,-24(s0)
	j	.L102
.L101:
	.loc 3 492 23
	lw	a5,-36(s0)
	lb	a4,8(a5)
	.loc 3 492 19
	li	a5,1
	bne	a4,a5,.L103
	.loc 3 493 27
	li	a5,3
	sw	a5,-24(s0)
	j	.L102
.L103:
	.loc 3 495 20
	li	a5,-24576
	addi	a5,a5,-256
	j	.L92
.L102:
	.loc 3 498 62
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 3 498 16
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_ccm_starts
	mv	a5,a0
	j	.L92
.L99:
.LBE2:
	.loc 3 504 8
	lw	a5,-20(s0)
	beq	a5,zero,.L104
	.loc 3 505 19
	lw	a5,-36(s0)
	addi	a5,a5,40
	.loc 3 505 9
	lw	a2,-20(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 506 22
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,56(a5)
.L104:
	.loc 3 509 12
	li	a5,0
.L92:
	.loc 3 510 1
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
	.size	mbedtls_cipher_set_iv, .-mbedtls_cipher_set_iv
	.section	.text.mbedtls_cipher_reset,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_reset
	.type	mbedtls_cipher_reset, @function
mbedtls_cipher_reset:
.LFB64:
	.loc 3 513 1
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
	.loc 3 514 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 514 8
	bne	a5,zero,.L106
	.loc 3 515 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L107
.L106:
	.loc 3 526 26
	lw	a5,-20(s0)
	sw	zero,36(a5)
	.loc 3 528 12
	li	a5,0
.L107:
	.loc 3 529 1
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
	.size	mbedtls_cipher_reset, .-mbedtls_cipher_reset
	.section	.text.mbedtls_cipher_update_ad,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_update_ad
	.type	mbedtls_cipher_update_ad, @function
mbedtls_cipher_update_ad:
.LFB65:
	.loc 3 534 1
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
	.loc 3 535 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 535 8
	bne	a5,zero,.L109
	.loc 3 536 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L110
.L109:
	.loc 3 549 57
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 549 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 549 8
	li	a5,24576
	bne	a4,a5,.L111
	.loc 3 550 65
	lw	a5,-20(s0)
	lw	a5,60(a5)
	.loc 3 550 16
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_gcm_update_ad
	mv	a5,a0
	j	.L110
.L111:
	.loc 3 576 12
	li	a5,-24576
	addi	a5,a5,-128
.L110:
	.loc 3 577 1
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
	.size	mbedtls_cipher_update_ad, .-mbedtls_cipher_update_ad
	.section	.text.mbedtls_cipher_update,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_update
	.type	mbedtls_cipher_update, @function
mbedtls_cipher_update:
.LFB66:
	.loc 3 582 1
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
	.loc 3 583 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 3 586 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 586 8
	bne	a5,zero,.L113
	.loc 3 587 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L114
.L113:
	.loc 3 599 11
	lw	a5,-52(s0)
	sw	zero,0(a5)
	.loc 3 600 18
	lw	a0,-36(s0)
	call	mbedtls_cipher_get_block_size
	sw	a0,-28(s0)
	.loc 3 601 8
	lw	a5,-28(s0)
	bne	a5,zero,.L115
	.loc 3 602 16
	li	a5,-24576
	addi	a5,a5,-896
	j	.L114
.L115:
	.loc 3 605 37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 605 58
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 605 8
	li	a5,4096
	bne	a4,a5,.L116
	.loc 3 606 12
	lw	a4,-44(s0)
	lw	a5,-28(s0)
	beq	a4,a5,.L117
	.loc 3 607 20
	li	a5,-24576
	addi	a5,a5,-640
	j	.L114
.L117:
	.loc 3 610 15
	lw	a5,-52(s0)
	lw	a4,-44(s0)
	sw	a4,0(a5)
	.loc 3 612 25
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_cipher_get_base
	mv	a5,a0
	.loc 3 612 66 discriminator 1
	lw	a5,4(a5)
	.loc 3 612 25 discriminator 1
	lw	a4,-36(s0)
	lw	a0,60(a4)
	lw	a4,-36(s0)
	lb	a4,8(a4)
	lw	a3,-48(s0)
	lw	a2,-40(s0)
	mv	a1,a4
	jalr	a5
.LVL4:
	sw	a0,-24(s0)
	.loc 3 612 12 discriminator 2
	lw	a5,-24(s0)
	beq	a5,zero,.L118
	.loc 3 615 20
	lw	a5,-24(s0)
	j	.L114
.L118:
	.loc 3 618 16
	li	a5,0
	j	.L114
.L116:
	.loc 3 622 37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 622 58
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 622 8
	li	a5,24576
	bne	a4,a5,.L119
	.loc 3 623 62
	lw	a5,-36(s0)
	lw	a0,60(a5)
	.loc 3 623 16
	lw	a5,-52(s0)
	lw	a4,-44(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	call	mbedtls_gcm_update
	mv	a5,a0
	j	.L114
.L119:
	.loc 3 630 37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 630 58
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 630 8
	li	a5,36864
	bne	a4,a5,.L120
	.loc 3 631 62
	lw	a5,-36(s0)
	lw	a0,60(a5)
	.loc 3 631 16
	lw	a5,-52(s0)
	lw	a4,-44(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	call	mbedtls_ccm_update
	mv	a5,a0
	j	.L114
.L120:
	.loc 3 645 8
	lw	a4,-40(s0)
	lw	a5,-48(s0)
	bne	a4,a5,.L121
	.loc 3 646 13
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 3 645 25 discriminator 1
	bne	a5,zero,.L122
	.loc 3 646 44
	lw	a4,-44(s0)
	lw	a5,-28(s0)
	remu	a5,a4,a5
	.loc 3 646 36
	beq	a5,zero,.L121
.L122:
	.loc 3 647 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L114
.L121:
	.loc 3 651 37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 651 58
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 651 8
	li	a5,8192
	bne	a4,a5,.L123
.LBB3:
	.loc 3 652 16
	sw	zero,-20(s0)
	.loc 3 657 17
	lw	a5,-36(s0)
	lb	a5,8(a5)
	.loc 3 657 12
	bne	a5,zero,.L124
	.loc 3 657 61 discriminator 1
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 3 657 48 discriminator 1
	beq	a5,zero,.L124
	.loc 3 658 38
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 3 658 33
	lw	a4,-28(s0)
	sub	a5,a4,a5
	.loc 3 657 75 discriminator 2
	lw	a4,-44(s0)
	bleu	a4,a5,.L125
.L124:
	.loc 3 659 17
	lw	a5,-36(s0)
	lb	a5,8(a5)
	.loc 3 658 57
	bne	a5,zero,.L126
	.loc 3 659 61
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 3 659 48
	bne	a5,zero,.L126
	.loc 3 660 37
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 3 660 32
	lw	a4,-28(s0)
	sub	a5,a4,a5
	.loc 3 659 75 discriminator 1
	lw	a4,-44(s0)
	bltu	a4,a5,.L125
.L126:
	.loc 3 661 17
	lw	a5,-36(s0)
	lb	a4,8(a5)
	.loc 3 660 56
	li	a5,1
	bne	a4,a5,.L127
	.loc 3 662 37
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 3 662 32
	lw	a4,-28(s0)
	sub	a5,a4,a5
	.loc 3 661 48
	lw	a4,-44(s0)
	bgeu	a4,a5,.L127
.L125:
	.loc 3 663 47
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 3 663 20
	addi	a5,a5,16
	lw	a4,-36(s0)
	add	a5,a4,a5
	addi	a5,a5,4
	.loc 3 663 13
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 666 16
	lw	a5,-36(s0)
	lw	a4,36(a5)
	.loc 3 666 34
	lw	a5,-44(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,36(a5)
	.loc 3 667 20
	li	a5,0
	j	.L114
.L127:
	.loc 3 673 21
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 3 673 12
	beq	a5,zero,.L128
	.loc 3 674 40
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 3 674 22
	lw	a4,-28(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 3 676 47
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 3 676 20
	addi	a5,a5,16
	lw	a4,-36(s0)
	add	a5,a4,a5
	addi	a5,a5,4
	.loc 3 676 13
	lw	a2,-20(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 679 29
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_cipher_get_base
	mv	a5,a0
	.loc 3 679 70 discriminator 1
	lw	a6,8(a5)
	.loc 3 679 29 discriminator 1
	lw	a5,-36(s0)
	lw	a0,60(a5)
	lw	a5,-36(s0)
	lb	a1,8(a5)
	.loc 3 681 96
	lw	a5,-36(s0)
	addi	a3,a5,40
	.loc 3 682 84
	lw	a5,-36(s0)
	addi	a4,a5,20
	.loc 3 679 29
	lw	a5,-48(s0)
	lw	a2,-28(s0)
	jalr	a6
.LVL5:
	sw	a0,-24(s0)
	.loc 3 679 16 discriminator 2
	lw	a5,-24(s0)
	beq	a5,zero,.L129
	.loc 3 685 24
	lw	a5,-24(s0)
	j	.L114
.L129:
	.loc 3 688 13
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 3 688 19
	lw	a5,-28(s0)
	add	a4,a4,a5
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 3 689 20
	lw	a4,-48(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-48(s0)
	.loc 3 690 34
	lw	a5,-36(s0)
	sw	zero,36(a5)
	.loc 3 692 19
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 3 693 18
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-44(s0)
.L128:
	.loc 3 699 12
	lw	a5,-44(s0)
	beq	a5,zero,.L130
	.loc 3 704 22
	lw	a4,-44(s0)
	lw	a5,-28(s0)
	remu	a5,a4,a5
	sw	a5,-20(s0)
	.loc 3 705 16
	lw	a5,-20(s0)
	bne	a5,zero,.L131
	.loc 3 706 20
	lw	a5,-36(s0)
	lb	a5,8(a5)
	.loc 3 705 31 discriminator 1
	bne	a5,zero,.L131
	.loc 3 707 27
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 3 706 51
	beq	a5,zero,.L131
	.loc 3 708 26
	lw	a5,-28(s0)
	sw	a5,-20(s0)
.L131:
	.loc 3 711 23
	lw	a5,-36(s0)
	addi	a3,a5,20
	.loc 3 711 56
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 3 711 43
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 3 711 13
	lw	a2,-20(s0)
	mv	a1,a5
	mv	a0,a3
	call	memcpy
	.loc 3 714 16
	lw	a5,-36(s0)
	lw	a4,36(a5)
	.loc 3 714 34
	lw	a5,-20(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,36(a5)
	.loc 3 715 18
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-44(s0)
.L130:
	.loc 3 721 12
	lw	a5,-44(s0)
	beq	a5,zero,.L132
	.loc 3 722 29
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_cipher_get_base
	mv	a5,a0
	.loc 3 722 70 discriminator 1
	lw	a6,8(a5)
	.loc 3 722 29 discriminator 1
	lw	a5,-36(s0)
	lw	a0,60(a5)
	lw	a5,-36(s0)
	lb	a1,8(a5)
	.loc 3 724 90
	lw	a5,-36(s0)
	addi	a3,a5,40
	.loc 3 722 29
	lw	a5,-48(s0)
	lw	a4,-40(s0)
	lw	a2,-44(s0)
	jalr	a6
.LVL6:
	sw	a0,-24(s0)
	.loc 3 722 16 discriminator 2
	lw	a5,-24(s0)
	beq	a5,zero,.L133
	.loc 3 727 24
	lw	a5,-24(s0)
	j	.L114
.L133:
	.loc 3 730 13
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 3 730 19
	lw	a5,-44(s0)
	add	a4,a4,a5
	lw	a5,-52(s0)
	sw	a4,0(a5)
.L132:
	.loc 3 733 16
	li	a5,0
	j	.L114
.L123:
.LBE3:
	.loc 3 738 37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 738 58
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 738 8
	li	a5,12288
	bne	a4,a5,.L134
	.loc 3 739 25
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_cipher_get_base
	mv	a5,a0
	.loc 3 739 66 discriminator 1
	lw	a7,12(a5)
	.loc 3 739 25 discriminator 1
	lw	a5,-36(s0)
	lw	a0,60(a5)
	lw	a5,-36(s0)
	lb	a1,8(a5)
	lw	a5,-36(s0)
	addi	a3,a5,36
	.loc 3 742 80
	lw	a5,-36(s0)
	addi	a4,a5,40
	.loc 3 739 25
	lw	a6,-48(s0)
	lw	a5,-40(s0)
	lw	a2,-44(s0)
	jalr	a7
.LVL7:
	sw	a0,-24(s0)
	.loc 3 739 12 discriminator 2
	lw	a5,-24(s0)
	beq	a5,zero,.L135
	.loc 3 744 20
	lw	a5,-24(s0)
	j	.L114
.L135:
	.loc 3 747 15
	lw	a5,-52(s0)
	lw	a4,-44(s0)
	sw	a4,0(a5)
	.loc 3 749 16
	li	a5,0
	j	.L114
.L134:
	.loc 3 754 37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 754 58
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 754 8
	li	a5,16384
	bne	a4,a5,.L136
	.loc 3 755 25
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_cipher_get_base
	mv	a5,a0
	.loc 3 755 66 discriminator 1
	lw	a6,16(a5)
	.loc 3 755 25 discriminator 1
	lw	a5,-36(s0)
	lw	a0,60(a5)
	lw	a5,-36(s0)
	addi	a2,a5,36
	.loc 3 758 80
	lw	a5,-36(s0)
	addi	a3,a5,40
	.loc 3 755 25
	lw	a5,-48(s0)
	lw	a4,-40(s0)
	lw	a1,-44(s0)
	jalr	a6
.LVL8:
	sw	a0,-24(s0)
	.loc 3 755 12 discriminator 2
	lw	a5,-24(s0)
	beq	a5,zero,.L137
	.loc 3 760 20
	lw	a5,-24(s0)
	j	.L114
.L137:
	.loc 3 763 15
	lw	a5,-52(s0)
	lw	a4,-44(s0)
	sw	a4,0(a5)
	.loc 3 765 16
	li	a5,0
	j	.L114
.L136:
	.loc 3 770 37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 770 58
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 770 8
	li	a5,20480
	bne	a4,a5,.L138
	.loc 3 771 25
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_cipher_get_base
	mv	a5,a0
	.loc 3 771 66 discriminator 1
	lw	a7,20(a5)
	.loc 3 771 25 discriminator 1
	lw	a5,-36(s0)
	lw	a0,60(a5)
	lw	a5,-36(s0)
	addi	a2,a5,36
	.loc 3 774 80
	lw	a5,-36(s0)
	addi	a3,a5,40
	.loc 3 775 80
	lw	a5,-36(s0)
	addi	a4,a5,20
	.loc 3 771 25
	lw	a6,-48(s0)
	lw	a5,-40(s0)
	lw	a1,-44(s0)
	jalr	a7
.LVL9:
	sw	a0,-24(s0)
	.loc 3 771 12 discriminator 2
	lw	a5,-24(s0)
	beq	a5,zero,.L139
	.loc 3 777 20
	lw	a5,-24(s0)
	j	.L114
.L139:
	.loc 3 780 15
	lw	a5,-52(s0)
	lw	a4,-44(s0)
	sw	a4,0(a5)
	.loc 3 782 16
	li	a5,0
	j	.L114
.L138:
	.loc 3 810 37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 810 58
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 810 8
	li	a5,28672
	bne	a4,a5,.L140
	.loc 3 811 25
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_cipher_get_base
	mv	a5,a0
	.loc 3 811 66 discriminator 1
	lw	a5,24(a5)
	.loc 3 811 25 discriminator 1
	lw	a4,-36(s0)
	lw	a4,60(a4)
	lw	a3,-48(s0)
	lw	a2,-40(s0)
	lw	a1,-44(s0)
	mv	a0,a4
	jalr	a5
.LVL10:
	sw	a0,-24(s0)
	.loc 3 811 12 discriminator 2
	lw	a5,-24(s0)
	beq	a5,zero,.L141
	.loc 3 814 20
	lw	a5,-24(s0)
	j	.L114
.L141:
	.loc 3 817 15
	lw	a5,-52(s0)
	lw	a4,-44(s0)
	sw	a4,0(a5)
	.loc 3 819 16
	li	a5,0
	j	.L114
.L140:
	.loc 3 823 12
	li	a5,-24576
	addi	a5,a5,-128
.L114:
	.loc 3 824 1
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
	.size	mbedtls_cipher_update, .-mbedtls_cipher_update
	.section	.text.add_pkcs_padding,"ax",@progbits
	.align	1
	.type	add_pkcs_padding, @function
add_pkcs_padding:
.LFB67:
	.loc 3 833 1
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
	.loc 3 834 12
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 837 12
	sb	zero,-17(s0)
	.loc 3 837 5
	j	.L143
.L144:
	.loc 3 838 25
	lbu	a4,-17(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	.loc 3 838 15
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 3 838 32
	lw	a4,-24(s0)
	andi	a4,a4,0xff
	.loc 3 838 30
	sb	a4,0(a5)
	.loc 3 837 35 discriminator 3
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L143:
	.loc 3 837 19 discriminator 1
	lbu	a5,-17(s0)
	lw	a4,-24(s0)
	bgtu	a4,a5,.L144
	.loc 3 840 1
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
.LFE67:
	.size	add_pkcs_padding, .-add_pkcs_padding
	.section	.text.mbedtls_get_pkcs_padding,"ax",@progbits
	.align	1
	.type	mbedtls_get_pkcs_padding, @function
mbedtls_get_pkcs_padding:
.LFB68:
	.loc 3 851 1
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
	.loc 3 855 8
	lw	a5,-52(s0)
	beq	a5,zero,.L146
	.loc 3 855 22 discriminator 1
	lw	a5,-60(s0)
	bne	a5,zero,.L147
.L146:
	.loc 3 856 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L148
.L147:
	.loc 3 859 24
	lw	a5,-56(s0)
	addi	a5,a5,-1
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 3 859 17
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	.loc 3 861 34
	lbu	a5,-25(s0)
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_ct_uint_gt
	sw	a0,-24(s0)
	.loc 3 862 11
	lbu	a5,-25(s0)
	li	a1,0
	mv	a0,a5
	call	mbedtls_ct_uint_eq
	mv	a5,a0
	.loc 3 862 11 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-24(s0)
	call	mbedtls_ct_bool_or
	sw	a0,-24(s0)
	.loc 3 866 25 is_stmt 1
	lbu	a5,-25(s0)
	.loc 3 866 13
	lw	a4,-56(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
	.loc 3 867 12
	sw	zero,-20(s0)
	.loc 3 867 5
	j	.L149
.L150:
.LBB4:
	.loc 3 868 45
	lw	a1,-32(s0)
	lw	a0,-20(s0)
	call	mbedtls_ct_uint_ge
	sw	a0,-36(s0)
	.loc 3 869 68
	lw	a4,-52(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 3 869 44
	mv	a4,a5
	lbu	a5,-25(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ct_uint_ne
	sw	a0,-40(s0)
	.loc 3 870 15
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_ct_bool_and
	mv	a5,a0
	.loc 3 870 15 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-24(s0)
	call	mbedtls_ct_bool_or
	sw	a0,-24(s0)
.LBE4:
	.loc 3 867 33 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L149:
	.loc 3 867 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	bltu	a4,a5,.L150
	.loc 3 874 17
	lbu	a5,-25(s0)
	.loc 3 874 49
	lw	a4,-56(s0)
	sub	a5,a4,a5
	.loc 3 874 17
	mv	a2,a5
	li	a1,0
	lw	a0,-24(s0)
	call	mbedtls_ct_if
	mv	a4,a0
	.loc 3 874 15 discriminator 1
	lw	a5,-60(s0)
	sw	a4,0(a5)
	.loc 3 876 24
	li	a1,-1
	lw	a0,-24(s0)
	call	mbedtls_ct_size_if_else_0
	mv	a4,a0
	.loc 3 876 22 discriminator 1
	lw	a5,-64(s0)
	sw	a4,0(a5)
	.loc 3 877 12
	li	a5,0
.L148:
	.loc 3 878 1
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
.LFE68:
	.size	mbedtls_get_pkcs_padding, .-mbedtls_get_pkcs_padding
	.section	.text.add_one_and_zeros_padding,"ax",@progbits
	.align	1
	.type	add_one_and_zeros_padding, @function
add_one_and_zeros_padding:
.LFB69:
	.loc 3 887 1
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
	.loc 3 888 12
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 889 19
	sb	zero,-17(s0)
	.loc 3 891 11
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	.loc 3 891 22
	li	a4,-128
	sb	a4,0(a5)
	.loc 3 892 12
	li	a5,1
	sb	a5,-17(s0)
	.loc 3 892 5
	j	.L152
.L153:
	.loc 3 893 25
	lbu	a4,-17(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	.loc 3 893 15
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 3 893 30
	sb	zero,0(a5)
	.loc 3 892 35 discriminator 3
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L152:
	.loc 3 892 19 discriminator 1
	lbu	a5,-17(s0)
	lw	a4,-24(s0)
	bgtu	a4,a5,.L153
	.loc 3 895 1
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
.LFE69:
	.size	add_one_and_zeros_padding, .-add_one_and_zeros_padding
	.section	.text.get_one_and_zeros_padding,"ax",@progbits
	.align	1
	.type	get_one_and_zeros_padding, @function
get_one_and_zeros_padding:
.LFB70:
	.loc 3 899 1
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
	.loc 3 900 8
	lw	a5,-52(s0)
	beq	a5,zero,.L155
	.loc 3 900 22 discriminator 1
	lw	a5,-60(s0)
	bne	a5,zero,.L156
.L155:
	.loc 3 901 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L157
.L156:
	.loc 3 904 67
	li	a0,-1
	call	mbedtls_ct_compiler_opaque
	sw	a0,-20(s0)
	.loc 3 905 60
	li	a0,-1
	call	mbedtls_ct_compiler_opaque
	sw	a0,-24(s0)
	.loc 3 907 15
	lw	a5,-60(s0)
	sw	zero,0(a5)
.LBB5:
	.loc 3 909 24
	lw	a5,-56(s0)
	.loc 3 909 20
	addi	a5,a5,-1
	sw	a5,-28(s0)
	.loc 3 909 5
	j	.L158
.L159:
.LBB6:
	.loc 3 910 66
	lw	a5,-28(s0)
	lw	a4,-52(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 3 910 45
	mv	a0,a5
	call	mbedtls_ct_bool
	sw	a0,-32(s0)
	.loc 3 912 52
	lw	a1,-20(s0)
	lw	a0,-32(s0)
	call	mbedtls_ct_bool_and
	sw	a0,-36(s0)
	.loc 3 914 21
	lw	a4,-28(s0)
	lw	a5,-60(s0)
	lw	a5,0(a5)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_ct_size_if
	mv	a4,a0
	.loc 3 914 19 discriminator 1
	lw	a5,-60(s0)
	sw	a4,0(a5)
	.loc 3 916 77
	lw	a5,-28(s0)
	lw	a4,-52(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 3 916 15
	li	a1,128
	mv	a0,a5
	call	mbedtls_ct_uint_ne
	mv	a5,a0
	.loc 3 916 15 is_stmt 0 discriminator 1
	lw	a2,-24(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_ct_bool_if
	sw	a0,-24(s0)
	.loc 3 918 22 is_stmt 1
	lw	a0,-32(s0)
	call	mbedtls_ct_bool_not
	mv	a5,a0
	.loc 3 918 22 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-20(s0)
	call	mbedtls_ct_bool_and
	sw	a0,-20(s0)
.LBE6:
	.loc 3 909 62 is_stmt 1 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
.L158:
	.loc 3 909 55 discriminator 1
	lw	a5,-28(s0)
	bge	a5,zero,.L159
.LBE5:
	.loc 3 921 24
	li	a1,-1
	lw	a0,-24(s0)
	call	mbedtls_ct_size_if_else_0
	mv	a4,a0
	.loc 3 921 22 discriminator 1
	lw	a5,-64(s0)
	sw	a4,0(a5)
	.loc 3 922 12
	li	a5,0
.L157:
	.loc 3 923 1
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
.LFE70:
	.size	get_one_and_zeros_padding, .-get_one_and_zeros_padding
	.section	.text.add_zeros_and_len_padding,"ax",@progbits
	.align	1
	.type	add_zeros_and_len_padding, @function
add_zeros_and_len_padding:
.LFB71:
	.loc 3 932 1
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
	.loc 3 933 12
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 934 19
	sb	zero,-17(s0)
	.loc 3 936 12
	li	a5,1
	sb	a5,-17(s0)
	.loc 3 936 5
	j	.L161
.L162:
	.loc 3 937 25
	lbu	a4,-17(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	.loc 3 937 15
	addi	a5,a5,-1
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 3 937 34
	sb	zero,0(a5)
	.loc 3 936 35 discriminator 3
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L161:
	.loc 3 936 19 discriminator 1
	lbu	a5,-17(s0)
	lw	a4,-24(s0)
	bgtu	a4,a5,.L162
	.loc 3 939 11
	lw	a5,-40(s0)
	addi	a5,a5,-1
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 3 939 30
	lw	a4,-24(s0)
	andi	a4,a4,0xff
	.loc 3 939 28
	sb	a4,0(a5)
	.loc 3 940 1
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
.LFE71:
	.size	add_zeros_and_len_padding, .-add_zeros_and_len_padding
	.section	.text.get_zeros_and_len_padding,"ax",@progbits
	.align	1
	.type	get_zeros_and_len_padding, @function
get_zeros_and_len_padding:
.LFB72:
	.loc 3 944 1
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
	.loc 3 949 8
	lw	a5,-52(s0)
	beq	a5,zero,.L164
	.loc 3 949 22 discriminator 1
	lw	a5,-60(s0)
	bne	a5,zero,.L165
.L164:
	.loc 3 950 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L166
.L165:
	.loc 3 953 24
	lw	a5,-56(s0)
	addi	a5,a5,-1
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 3 953 17
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	.loc 3 954 27
	lbu	a5,-25(s0)
	lw	a4,-56(s0)
	sub	a4,a4,a5
	.loc 3 954 15
	lw	a5,-60(s0)
	sw	a4,0(a5)
	.loc 3 957 11
	lbu	a5,-25(s0)
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_ct_uint_gt
	sw	a0,-24(s0)
	.loc 3 958 11
	lbu	a5,-25(s0)
	li	a1,0
	mv	a0,a5
	call	mbedtls_ct_uint_eq
	mv	a5,a0
	.loc 3 958 11 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-24(s0)
	call	mbedtls_ct_bool_or
	sw	a0,-24(s0)
	.loc 3 961 25 is_stmt 1
	lbu	a5,-25(s0)
	.loc 3 961 13
	lw	a4,-56(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
	.loc 3 962 12
	sw	zero,-20(s0)
	.loc 3 962 5
	j	.L167
.L168:
.LBB7:
	.loc 3 963 45
	lw	a1,-32(s0)
	lw	a0,-20(s0)
	call	mbedtls_ct_uint_ge
	sw	a0,-36(s0)
	.loc 3 965 87
	lw	a4,-52(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 3 965 28
	mv	a0,a5
	call	mbedtls_ct_bool
	mv	a5,a0
	.loc 3 965 28 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_ct_bool_if_else_0
	sw	a0,-40(s0)
	.loc 3 966 15 is_stmt 1
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	mbedtls_ct_bool_or
	sw	a0,-24(s0)
.LBE7:
	.loc 3 962 37 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L167:
	.loc 3 962 31 discriminator 1
	lw	a5,-56(s0)
	addi	a5,a5,-1
	.loc 3 962 19 discriminator 1
	lw	a4,-20(s0)
	bltu	a4,a5,.L168
	.loc 3 969 24
	li	a1,-1
	lw	a0,-24(s0)
	call	mbedtls_ct_size_if_else_0
	mv	a4,a0
	.loc 3 969 22 discriminator 1
	lw	a5,-64(s0)
	sw	a4,0(a5)
	.loc 3 970 12
	li	a5,0
.L166:
	.loc 3 971 1
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
.LFE72:
	.size	get_zeros_and_len_padding, .-get_zeros_and_len_padding
	.section	.text.add_zeros_padding,"ax",@progbits
	.align	1
	.type	add_zeros_padding, @function
add_zeros_padding:
.LFB73:
	.loc 3 980 1
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
	.loc 3 981 19
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	add	a3,a4,a5
	.loc 3 981 5
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	mv	a2,a5
	li	a1,0
	mv	a0,a3
	call	memset
	.loc 3 982 1
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
.LFE73:
	.size	add_zeros_padding, .-add_zeros_padding
	.section	.text.get_zeros_padding,"ax",@progbits
	.align	1
	.type	get_zeros_padding, @function
get_zeros_padding:
.LFB74:
	.loc 3 986 1
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
	.loc 3 988 61
	li	a0,0
	call	mbedtls_ct_compiler_opaque
	sw	a0,-24(s0)
	.loc 3 990 8
	lw	a5,-36(s0)
	beq	a5,zero,.L171
	.loc 3 990 22 discriminator 1
	lw	a5,-44(s0)
	bne	a5,zero,.L172
.L171:
	.loc 3 991 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L173
.L172:
	.loc 3 994 15
	lw	a5,-44(s0)
	sw	zero,0(a5)
	.loc 3 995 12
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 3 995 5
	j	.L174
.L175:
	.loc 3 996 19
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	.loc 3 997 65
	lw	a5,-20(s0)
	addi	a5,a5,-1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 3 997 16
	li	a1,0
	mv	a0,a5
	call	mbedtls_ct_uint_ne
	mv	a5,a0
	.loc 3 997 16 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-24(s0)
	call	mbedtls_ct_bool_or
	sw	a0,-24(s0)
	.loc 3 998 21 is_stmt 1
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	mbedtls_ct_bool_ne
	mv	a4,a0
	.loc 3 998 21 is_stmt 0 discriminator 1
	lw	a5,-44(s0)
	lw	a5,0(a5)
	mv	a2,a5
	lw	a1,-20(s0)
	mv	a0,a4
	call	mbedtls_ct_size_if
	mv	a4,a0
	.loc 3 998 19 is_stmt 1 discriminator 2
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 3 995 33 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L174:
	.loc 3 995 27 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L175
	.loc 3 1001 22
	lw	a5,-48(s0)
	sw	zero,0(a5)
	.loc 3 1002 12
	li	a5,0
.L173:
	.loc 3 1003 1
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
	.size	get_zeros_padding, .-get_zeros_padding
	.section	.text.get_no_padding,"ax",@progbits
	.align	1
	.type	get_no_padding, @function
get_no_padding:
.LFB75:
	.loc 3 1014 1
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
	.loc 3 1015 8
	lw	a5,-20(s0)
	beq	a5,zero,.L177
	.loc 3 1015 22 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L178
.L177:
	.loc 3 1016 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L179
.L178:
	.loc 3 1019 15
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 3 1020 22
	lw	a5,-32(s0)
	sw	zero,0(a5)
	.loc 3 1021 12
	li	a5,0
.L179:
	.loc 3 1022 1
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
	.size	get_no_padding, .-get_no_padding
	.section	.text.mbedtls_cipher_finish_padded,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_finish_padded
	.type	mbedtls_cipher_finish_padded, @function
mbedtls_cipher_finish_padded:
.LFB76:
	.loc 3 1028 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	.loc 3 1029 12
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 1029 8
	bne	a5,zero,.L181
	.loc 3 1030 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L182
.L181:
	.loc 3 1042 11
	lw	a5,-60(s0)
	sw	zero,0(a5)
	.loc 3 1043 22
	lw	a5,-64(s0)
	sw	zero,0(a5)
	.loc 3 1048 57
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 1048 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1048 8
	li	a5,8192
	bne	a4,a5,.L183
	.loc 3 1049 16
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 3 1049 12
	bne	a5,zero,.L183
	.loc 3 1050 20
	li	a5,-24576
	addi	a5,a5,-256
	j	.L182
.L183:
	.loc 3 1055 57
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 1055 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1055 8
	li	a5,12288
	beq	a4,a5,.L184
	.loc 3 1056 57
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 1056 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1055 78 discriminator 1
	li	a5,16384
	beq	a4,a5,.L184
	.loc 3 1057 57
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 1057 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1056 78
	li	a5,20480
	beq	a4,a5,.L184
	.loc 3 1058 57
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 1058 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1057 78
	li	a5,24576
	beq	a4,a5,.L184
	.loc 3 1059 69
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 1059 38
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1058 78
	li	a5,36864
	beq	a4,a5,.L184
	.loc 3 1060 57
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 1060 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1059 90
	li	a5,40960
	beq	a4,a5,.L184
	.loc 3 1061 60
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 1061 29
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1060 78
	li	a5,28672
	bne	a4,a5,.L185
.L184:
	.loc 3 1062 16
	li	a5,0
	j	.L182
.L185:
	.loc 3 1065 65
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 1065 78
	lbu	a4,6(a5)
	.loc 3 1065 8
	li	a5,76
	beq	a4,a5,.L186
	.loc 3 1066 74
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 1066 87
	lbu	a4,6(a5)
	.loc 3 1065 87 discriminator 1
	li	a5,77
	bne	a4,a5,.L187
.L186:
	.loc 3 1067 16
	li	a5,0
	j	.L182
.L187:
	.loc 3 1070 57
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 1070 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1070 8
	li	a5,4096
	bne	a4,a5,.L188
	.loc 3 1071 16
	lw	a5,-52(s0)
	lw	a5,36(a5)
	.loc 3 1071 12
	beq	a5,zero,.L189
	.loc 3 1072 20
	li	a5,-24576
	addi	a5,a5,-640
	j	.L182
.L189:
	.loc 3 1075 16
	li	a5,0
	j	.L182
.L188:
	.loc 3 1079 57
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 1079 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1079 8
	li	a5,8192
	bne	a4,a5,.L190
.LBB8:
	.loc 3 1080 13
	sw	zero,-36(s0)
	.loc 3 1082 35
	lw	a5,-52(s0)
	lb	a4,8(a5)
	.loc 3 1082 12
	li	a5,1
	bne	a4,a5,.L191
	.loc 3 1084 27
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 3 1084 16
	bne	a5,zero,.L192
	.loc 3 1085 29
	lw	a5,-52(s0)
	lw	a5,36(a5)
	.loc 3 1085 20
	beq	a5,zero,.L193
	.loc 3 1086 28
	li	a5,-24576
	addi	a5,a5,-640
	j	.L182
.L193:
	.loc 3 1089 24
	li	a5,0
	j	.L182
.L192:
	.loc 3 1092 16
	lw	a5,-52(s0)
	lw	s1,12(a5)
	.loc 3 1092 33
	lw	a5,-52(s0)
	addi	s2,a5,20
	.loc 3 1092 53
	lw	a0,-52(s0)
	call	mbedtls_cipher_get_iv_size
	mv	a5,a0
	.loc 3 1092 13 discriminator 1
	mv	a4,a5
	lw	a5,-52(s0)
	lw	a5,36(a5)
	mv	a2,a5
	mv	a1,a4
	mv	a0,s2
	jalr	s1
.LVL11:
	j	.L194
.L191:
	.loc 3 1094 20
	lw	a0,-52(s0)
	call	mbedtls_cipher_get_block_size
	mv	a4,a0
	.loc 3 1094 61 discriminator 1
	lw	a5,-52(s0)
	lw	a5,36(a5)
	.loc 3 1094 19 discriminator 1
	beq	a4,a5,.L194
	.loc 3 1099 27
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 3 1099 16
	bne	a5,zero,.L195
	.loc 3 1099 52 discriminator 1
	lw	a5,-52(s0)
	lw	a5,36(a5)
	.loc 3 1099 41 discriminator 1
	bne	a5,zero,.L195
	.loc 3 1100 24
	li	a5,0
	j	.L182
.L195:
	.loc 3 1103 20
	li	a5,-24576
	addi	a5,a5,-640
	j	.L182
.L194:
	.loc 3 1107 25
	lw	a5,-52(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_cipher_get_base
	mv	a5,a0
	.loc 3 1107 66 discriminator 1
	lw	s1,8(a5)
	.loc 3 1107 25 discriminator 1
	lw	a5,-52(s0)
	lw	s2,60(a5)
	lw	a5,-52(s0)
	lb	s3,8(a5)
	.loc 3 1109 77
	lw	a0,-52(s0)
	call	mbedtls_cipher_get_block_size
	mv	a2,a0
	.loc 3 1111 80
	lw	a5,-52(s0)
	addi	a3,a5,40
	.loc 3 1112 80
	lw	a5,-52(s0)
	addi	a4,a5,20
	.loc 3 1107 25
	lw	a5,-56(s0)
	mv	a1,s3
	mv	a0,s2
	jalr	s1
.LVL12:
	sw	a0,-36(s0)
	.loc 3 1107 12 discriminator 2
	lw	a5,-36(s0)
	beq	a5,zero,.L196
	.loc 3 1114 20
	lw	a5,-36(s0)
	j	.L182
.L196:
	.loc 3 1118 35
	lw	a5,-52(s0)
	lb	a5,8(a5)
	.loc 3 1118 12
	bne	a5,zero,.L197
	.loc 3 1119 23
	lw	a5,-52(s0)
	lw	s1,16(a5)
	.loc 3 1119 45
	lw	a0,-52(s0)
	call	mbedtls_cipher_get_block_size
	mv	a5,a0
	.loc 3 1119 20 discriminator 1
	lw	a3,-64(s0)
	lw	a2,-60(s0)
	mv	a1,a5
	lw	a0,-56(s0)
	jalr	s1
.LVL13:
	mv	a5,a0
	.loc 3 1119 20 is_stmt 0
	j	.L182
.L197:
	.loc 3 1124 17 is_stmt 1
	lw	a0,-52(s0)
	call	mbedtls_cipher_get_block_size
	mv	a4,a0
	.loc 3 1124 15 discriminator 1
	lw	a5,-60(s0)
	sw	a4,0(a5)
	.loc 3 1125 16
	li	a5,0
	j	.L182
.L190:
.LBE8:
	.loc 3 1131 12
	li	a5,-24576
	addi	a5,a5,-128
.L182:
	.loc 3 1132 1
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
	lw	s3,44(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE76:
	.size	mbedtls_cipher_finish_padded, .-mbedtls_cipher_finish_padded
	.section	.text.mbedtls_cipher_finish,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_finish
	.type	mbedtls_cipher_finish, @function
mbedtls_cipher_finish:
.LFB77:
	.loc 3 1136 1
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
	.loc 3 1137 12
	sw	zero,-24(s0)
	.loc 3 1138 15
	addi	a5,s0,-24
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_cipher_finish_padded
	sw	a0,-20(s0)
	.loc 3 1140 8
	lw	a5,-20(s0)
	bne	a5,zero,.L199
	.loc 3 1141 15
	lw	a4,-24(s0)
	li	a5,-24576
	addi	a1,a5,-512
	mv	a0,a4
	call	mbedtls_ct_error_if_else_0
	sw	a0,-20(s0)
.L199:
	.loc 3 1144 12
	lw	a5,-20(s0)
	.loc 3 1145 1
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
	.size	mbedtls_cipher_finish, .-mbedtls_cipher_finish
	.section	.text.mbedtls_cipher_set_padding_mode,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_set_padding_mode
	.type	mbedtls_cipher_set_padding_mode, @function
mbedtls_cipher_set_padding_mode:
.LFB78:
	.loc 3 1150 1
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
	.loc 3 1151 19
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 1151 8
	beq	a5,zero,.L202
	.loc 3 1152 57
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 1152 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1151 33 discriminator 1
	li	a5,8192
	beq	a4,a5,.L203
.L202:
	.loc 3 1153 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L204
.L203:
	.loc 3 1169 5
	lbu	a5,-21(s0)
	li	a4,4
	beq	a5,a4,.L205
	li	a4,4
	bgt	a5,a4,.L206
	li	a4,3
	beq	a5,a4,.L207
	li	a4,3
	bgt	a5,a4,.L206
	li	a4,2
	beq	a5,a4,.L208
	li	a4,2
	bgt	a5,a4,.L206
	beq	a5,zero,.L209
	li	a4,1
	beq	a5,a4,.L210
	j	.L206
.L209:
	.loc 3 1172 30
	lw	a5,-20(s0)
	lui	a4,%hi(add_pkcs_padding)
	addi	a4,a4,%lo(add_pkcs_padding)
	sw	a4,12(a5)
	.loc 3 1173 30
	lw	a5,-20(s0)
	lui	a4,%hi(mbedtls_get_pkcs_padding)
	addi	a4,a4,%lo(mbedtls_get_pkcs_padding)
	sw	a4,16(a5)
	.loc 3 1174 13
	j	.L211
.L210:
	.loc 3 1178 30
	lw	a5,-20(s0)
	lui	a4,%hi(add_one_and_zeros_padding)
	addi	a4,a4,%lo(add_one_and_zeros_padding)
	sw	a4,12(a5)
	.loc 3 1179 30
	lw	a5,-20(s0)
	lui	a4,%hi(get_one_and_zeros_padding)
	addi	a4,a4,%lo(get_one_and_zeros_padding)
	sw	a4,16(a5)
	.loc 3 1180 13
	j	.L211
.L208:
	.loc 3 1184 30
	lw	a5,-20(s0)
	lui	a4,%hi(add_zeros_and_len_padding)
	addi	a4,a4,%lo(add_zeros_and_len_padding)
	sw	a4,12(a5)
	.loc 3 1185 30
	lw	a5,-20(s0)
	lui	a4,%hi(get_zeros_and_len_padding)
	addi	a4,a4,%lo(get_zeros_and_len_padding)
	sw	a4,16(a5)
	.loc 3 1186 13
	j	.L211
.L207:
	.loc 3 1190 30
	lw	a5,-20(s0)
	lui	a4,%hi(add_zeros_padding)
	addi	a4,a4,%lo(add_zeros_padding)
	sw	a4,12(a5)
	.loc 3 1191 30
	lw	a5,-20(s0)
	lui	a4,%hi(get_zeros_padding)
	addi	a4,a4,%lo(get_zeros_padding)
	sw	a4,16(a5)
	.loc 3 1192 13
	j	.L211
.L205:
	.loc 3 1195 30
	lw	a5,-20(s0)
	sw	zero,12(a5)
	.loc 3 1196 30
	lw	a5,-20(s0)
	lui	a4,%hi(get_no_padding)
	addi	a4,a4,%lo(get_no_padding)
	sw	a4,16(a5)
	.loc 3 1197 13
	j	.L211
.L206:
	.loc 3 1200 20
	li	a5,-24576
	addi	a5,a5,-128
	j	.L204
.L211:
	.loc 3 1203 12
	li	a5,0
.L204:
	.loc 3 1204 1
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
.LFE78:
	.size	mbedtls_cipher_set_padding_mode, .-mbedtls_cipher_set_padding_mode
	.section	.text.mbedtls_cipher_write_tag,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_write_tag
	.type	mbedtls_cipher_write_tag, @function
mbedtls_cipher_write_tag:
.LFB79:
	.loc 3 1210 1
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
	.loc 3 1211 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 1211 8
	bne	a5,zero,.L213
	.loc 3 1212 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L214
.L213:
	.loc 3 1215 31
	lw	a5,-36(s0)
	lb	a4,8(a5)
	.loc 3 1215 8
	li	a5,1
	beq	a4,a5,.L215
	.loc 3 1216 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L214
.L215:
	.loc 3 1229 57
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 1229 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1229 8
	li	a5,24576
	bne	a4,a5,.L216
.LBB9:
	.loc 3 1233 62
	lw	a5,-36(s0)
	lw	a0,60(a5)
	.loc 3 1233 16
	addi	a3,s0,-20
	lw	a5,-44(s0)
	lw	a4,-40(s0)
	li	a2,0
	li	a1,0
	call	mbedtls_gcm_finish
	mv	a5,a0
	j	.L214
.L216:
.LBE9:
	.loc 3 1251 12
	li	a5,-24576
	addi	a5,a5,-128
.L214:
	.loc 3 1252 1
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
	.size	mbedtls_cipher_write_tag, .-mbedtls_cipher_write_tag
	.section	.text.mbedtls_cipher_check_tag,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_check_tag
	.type	mbedtls_cipher_check_tag, @function
mbedtls_cipher_check_tag:
.LFB80:
	.loc 3 1256 1
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
	.loc 3 1258 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 1260 12
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 1260 8
	bne	a5,zero,.L218
	.loc 3 1261 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L226
.L218:
	.loc 3 1264 31
	lw	a5,-52(s0)
	lb	a5,8(a5)
	.loc 3 1264 8
	beq	a5,zero,.L220
	.loc 3 1265 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L226
.L220:
	.loc 3 1278 9
	li	a5,-24576
	addi	a5,a5,-128
	sw	a5,-20(s0)
	.loc 3 1281 57
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 3 1281 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1281 8
	li	a5,24576
	bne	a4,a5,.L227
.LBB10:
	.loc 3 1286 12
	lw	a4,-60(s0)
	li	a5,16
	bleu	a4,a5,.L222
	.loc 3 1287 20
	li	a5,-24576
	addi	a5,a5,-256
	j	.L226
.L222:
	.loc 3 1291 50
	lw	a5,-52(s0)
	lw	a0,60(a5)
	.loc 3 1290 25
	addi	a4,s0,-36
	addi	a3,s0,-40
	lw	a5,-60(s0)
	li	a2,0
	li	a1,0
	call	mbedtls_gcm_finish
	sw	a0,-20(s0)
	.loc 3 1290 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L224
	.loc 3 1294 20
	lw	a5,-20(s0)
	j	.L226
.L224:
	.loc 3 1298 13
	addi	a5,s0,-36
	lw	a2,-60(s0)
	mv	a1,a5
	lw	a0,-56(s0)
	call	mbedtls_ct_memcmp
	mv	a5,a0
	.loc 3 1298 12 discriminator 1
	beq	a5,zero,.L221
	.loc 3 1299 17
	li	a5,-24576
	addi	a5,a5,-768
	sw	a5,-20(s0)
	j	.L221
.L227:
.LBE10:
	.loc 3 1326 1
	nop
.L221:
	.loc 3 1327 5
	addi	a5,s0,-36
	lw	a1,-60(s0)
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 1328 12
	lw	a5,-20(s0)
.L226:
	.loc 3 1329 1
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
.LFE80:
	.size	mbedtls_cipher_check_tag, .-mbedtls_cipher_check_tag
	.section	.text.mbedtls_cipher_crypt,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_crypt
	.type	mbedtls_cipher_crypt, @function
mbedtls_cipher_crypt:
.LFB81:
	.loc 3 1339 1
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
	.loc 3 1340 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 1403 16
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_cipher_set_iv
	sw	a0,-20(s0)
	.loc 3 1403 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L229
	.loc 3 1404 16
	lw	a5,-20(s0)
	j	.L234
.L229:
	.loc 3 1407 16
	lw	a0,-36(s0)
	call	mbedtls_cipher_reset
	sw	a0,-20(s0)
	.loc 3 1407 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L231
	.loc 3 1408 16
	lw	a5,-20(s0)
	j	.L234
.L231:
	.loc 3 1411 16
	lw	a4,-60(s0)
	lw	a3,-56(s0)
	lw	a2,-52(s0)
	lw	a1,-48(s0)
	lw	a0,-36(s0)
	call	mbedtls_cipher_update
	sw	a0,-20(s0)
	.loc 3 1411 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L232
	.loc 3 1413 16
	lw	a5,-20(s0)
	j	.L234
.L232:
	.loc 3 1416 12
	sw	zero,-28(s0)
	.loc 3 1417 59
	lw	a5,-60(s0)
	lw	a5,0(a5)
	.loc 3 1417 16
	lw	a4,-56(s0)
	add	a5,a4,a5
	addi	a3,s0,-28
	addi	a4,s0,-24
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_cipher_finish_padded
	sw	a0,-20(s0)
	.loc 3 1417 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L233
	.loc 3 1420 16
	lw	a5,-20(s0)
	j	.L234
.L233:
	.loc 3 1422 5
	lw	a5,-60(s0)
	lw	a4,0(a5)
	.loc 3 1422 11
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a5,-60(s0)
	sw	a4,0(a5)
	.loc 3 1424 11
	lw	a4,-28(s0)
	li	a5,-24576
	addi	a1,a5,-512
	mv	a0,a4
	call	mbedtls_ct_error_if_else_0
	sw	a0,-20(s0)
	.loc 3 1426 12
	lw	a5,-20(s0)
.L234:
	.loc 3 1427 1
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
.LFE81:
	.size	mbedtls_cipher_crypt, .-mbedtls_cipher_crypt
	.section	.text.mbedtls_cipher_aead_encrypt,"ax",@progbits
	.align	1
	.type	mbedtls_cipher_aead_encrypt, @function
mbedtls_cipher_aead_encrypt:
.LFB82:
	.loc 3 1440 1
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
	.loc 3 1475 57
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 1475 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1475 8
	li	a5,24576
	bne	a4,a5,.L236
	.loc 3 1476 15
	lw	a5,0(s0)
	lw	a4,-44(s0)
	sw	a4,0(a5)
	.loc 3 1477 45
	lw	a5,-20(s0)
	lw	a0,60(a5)
	.loc 3 1477 16
	lw	a5,4(s0)
	sw	a5,8(sp)
	lw	a5,8(s0)
	sw	a5,4(sp)
	lw	a5,-48(s0)
	sw	a5,0(sp)
	lw	a7,-40(s0)
	lw	a6,-36(s0)
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	lw	a3,-24(s0)
	lw	a2,-44(s0)
	li	a1,1
	call	mbedtls_gcm_crypt_and_tag
	mv	a5,a0
	j	.L237
.L236:
	.loc 3 1483 57
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 1483 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1483 8
	li	a5,32768
	bne	a4,a5,.L238
	.loc 3 1484 15
	lw	a5,0(s0)
	lw	a4,-44(s0)
	sw	a4,0(a5)
	.loc 3 1485 47
	lw	a5,-20(s0)
	lw	a0,60(a5)
	.loc 3 1485 16
	lw	a5,8(s0)
	sw	a5,4(sp)
	lw	a5,4(s0)
	sw	a5,0(sp)
	lw	a7,-48(s0)
	lw	a6,-40(s0)
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a1,-44(s0)
	call	mbedtls_ccm_encrypt_and_tag
	mv	a5,a0
	j	.L237
.L238:
	.loc 3 1504 12
	li	a5,-24576
	addi	a5,a5,-128
.L237:
	.loc 3 1505 1
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
.LFE82:
	.size	mbedtls_cipher_aead_encrypt, .-mbedtls_cipher_aead_encrypt
	.section	.text.mbedtls_cipher_aead_decrypt,"ax",@progbits
	.align	1
	.type	mbedtls_cipher_aead_decrypt, @function
mbedtls_cipher_aead_decrypt:
.LFB83:
	.loc 3 1517 1
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
	.loc 3 1553 57
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 1553 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1553 8
	li	a5,24576
	bne	a4,a5,.L240
.LBB11:
	.loc 3 1554 13
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 1556 15
	lw	a5,0(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	.loc 3 1557 43
	lw	a5,-36(s0)
	lw	a0,60(a5)
	.loc 3 1557 15
	lw	a5,-64(s0)
	sw	a5,4(sp)
	lw	a5,-56(s0)
	sw	a5,0(sp)
	lw	a7,8(s0)
	lw	a6,4(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-60(s0)
	call	mbedtls_gcm_auth_decrypt
	sw	a0,-20(s0)
	.loc 3 1561 12
	lw	a4,-20(s0)
	li	a5,-18
	bne	a4,a5,.L241
	.loc 3 1562 17
	li	a5,-24576
	addi	a5,a5,-768
	sw	a5,-20(s0)
.L241:
	.loc 3 1565 16
	lw	a5,-20(s0)
	j	.L242
.L240:
.LBE11:
	.loc 3 1569 57
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 1569 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1569 8
	li	a5,32768
	bne	a4,a5,.L243
.LBB12:
	.loc 3 1570 13
	li	a5,-110
	sw	a5,-24(s0)
	.loc 3 1572 15
	lw	a5,0(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	.loc 3 1573 43
	lw	a5,-36(s0)
	lw	a0,60(a5)
	.loc 3 1573 15
	lw	a5,8(s0)
	sw	a5,4(sp)
	lw	a5,4(s0)
	sw	a5,0(sp)
	lw	a7,-64(s0)
	lw	a6,-56(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-60(s0)
	call	mbedtls_ccm_auth_decrypt
	sw	a0,-24(s0)
	.loc 3 1577 12
	lw	a4,-24(s0)
	li	a5,-15
	bne	a4,a5,.L244
	.loc 3 1578 17
	li	a5,-24576
	addi	a5,a5,-768
	sw	a5,-24(s0)
.L244:
	.loc 3 1581 16
	lw	a5,-24(s0)
	j	.L242
.L243:
.LBE12:
	.loc 3 1606 12
	li	a5,-24576
	addi	a5,a5,-128
.L242:
	.loc 3 1607 1
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
	.size	mbedtls_cipher_aead_decrypt, .-mbedtls_cipher_aead_decrypt
	.section	.text.mbedtls_cipher_auth_encrypt_ext,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_auth_encrypt_ext
	.type	mbedtls_cipher_auth_encrypt_ext, @function
mbedtls_cipher_auth_encrypt_ext:
.LFB84:
	.loc 3 1620 1
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
	.loc 3 1626 57
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 1626 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1622 8
	li	a5,49152
	beq	a4,a5,.L246
	.loc 3 1627 58
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 1627 27
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1626 78
	li	a5,53248
	bne	a4,a5,.L247
.L246:
.LBB13:
	.loc 3 1629 61
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 1629 30
	lw	a4,4(a5)
	.loc 3 1630 32
	li	a5,61440
	and	a4,a4,a5
	li	a5,-49152
	add	a5,a4,a5
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 3 1628 32
	sb	a5,-21(s0)
	.loc 3 1634 12
	lw	a5,-44(s0)
	bne	a5,zero,.L248
	.loc 3 1634 25 discriminator 1
	lw	a5,8(s0)
	bne	a5,zero,.L248
	.loc 3 1634 41 discriminator 2
	lw	a5,-52(s0)
	beq	a5,zero,.L249
.L248:
	.loc 3 1635 20
	li	a5,-24576
	addi	a5,a5,-256
	j	.L250
.L249:
	.loc 3 1641 40
	lw	a5,-36(s0)
	lw	a0,60(a5)
	.loc 3 1641 16
	lbu	a1,-21(s0)
	lw	a6,0(s0)
	lw	a5,4(s0)
	lw	a4,-64(s0)
	lw	a3,-60(s0)
	lw	a2,-56(s0)
	call	mbedtls_nist_kw_wrap
	mv	a5,a0
	j	.L250
.L247:
.LBE13:
	.loc 3 1648 27
	lw	a4,-60(s0)
	lw	a5,8(s0)
	add	a5,a4,a5
	.loc 3 1648 8
	lw	a4,0(s0)
	bgeu	a4,a5,.L251
	.loc 3 1649 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L250
.L251:
	.loc 3 1652 15
	lw	a4,-64(s0)
	lw	a5,-60(s0)
	add	a5,a4,a5
	lw	a4,8(s0)
	sw	a4,8(sp)
	sw	a5,4(sp)
	lw	a5,4(s0)
	sw	a5,0(sp)
	lw	a7,-64(s0)
	lw	a6,-60(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_cipher_aead_encrypt
	sw	a0,-20(s0)
	.loc 3 1655 5
	lw	a5,4(s0)
	lw	a4,0(a5)
	.loc 3 1655 11
	lw	a5,8(s0)
	add	a4,a4,a5
	lw	a5,4(s0)
	sw	a4,0(a5)
	.loc 3 1656 12
	lw	a5,-20(s0)
.L250:
	.loc 3 1660 1
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
.LFE84:
	.size	mbedtls_cipher_auth_encrypt_ext, .-mbedtls_cipher_auth_encrypt_ext
	.section	.text.mbedtls_cipher_auth_decrypt_ext,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_auth_decrypt_ext
	.type	mbedtls_cipher_auth_decrypt_ext, @function
mbedtls_cipher_auth_decrypt_ext:
.LFB85:
	.loc 3 1671 1
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
	.loc 3 1677 57
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 1677 26
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1673 8
	li	a5,49152
	beq	a4,a5,.L253
	.loc 3 1678 58
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 1678 27
	lw	a4,4(a5)
	li	a5,61440
	and	a4,a4,a5
	.loc 3 1677 78
	li	a5,53248
	bne	a4,a5,.L254
.L253:
.LBB14:
	.loc 3 1680 61
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 1680 30
	lw	a4,4(a5)
	.loc 3 1681 32
	li	a5,61440
	and	a4,a4,a5
	li	a5,-49152
	add	a5,a4,a5
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 3 1679 32
	sb	a5,-17(s0)
	.loc 3 1685 12
	lw	a5,-44(s0)
	bne	a5,zero,.L255
	.loc 3 1685 25 discriminator 1
	lw	a5,8(s0)
	bne	a5,zero,.L255
	.loc 3 1685 41 discriminator 2
	lw	a5,-52(s0)
	beq	a5,zero,.L256
.L255:
	.loc 3 1686 20
	li	a5,-24576
	addi	a5,a5,-256
	j	.L257
.L256:
	.loc 3 1692 42
	lw	a5,-36(s0)
	lw	a0,60(a5)
	.loc 3 1692 16
	lbu	a1,-17(s0)
	lw	a6,0(s0)
	lw	a5,4(s0)
	lw	a4,-64(s0)
	lw	a3,-60(s0)
	lw	a2,-56(s0)
	call	mbedtls_nist_kw_unwrap
	mv	a5,a0
	j	.L257
.L254:
.LBE14:
	.loc 3 1699 8
	lw	a4,-60(s0)
	lw	a5,8(s0)
	bltu	a4,a5,.L258
	.loc 3 1699 45 discriminator 1
	lw	a4,-60(s0)
	lw	a5,8(s0)
	sub	a5,a4,a5
	.loc 3 1699 24 discriminator 1
	lw	a4,0(s0)
	bgeu	a4,a5,.L259
.L258:
	.loc 3 1700 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L257
.L259:
	.loc 3 1703 12
	lw	a4,-60(s0)
	lw	a5,8(s0)
	sub	a3,a4,a5
	.loc 3 1705 53
	lw	a4,-60(s0)
	lw	a5,8(s0)
	sub	a5,a4,a5
	.loc 3 1703 12
	lw	a4,-56(s0)
	add	a5,a4,a5
	lw	a4,8(s0)
	sw	a4,8(sp)
	sw	a5,4(sp)
	lw	a5,4(s0)
	sw	a5,0(sp)
	lw	a7,-64(s0)
	mv	a6,a3
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_cipher_aead_decrypt
	mv	a5,a0
.L257:
	.loc 3 1709 1
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
	.size	mbedtls_cipher_auth_decrypt_ext, .-mbedtls_cipher_auth_decrypt_ext
	.text
.Letext0:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/cipher_wrap.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/cmac.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/constant_time_internal.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/gcm.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ccm.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/chacha20.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/nist_kw.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/constant_time.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x21aa
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x2f
	.4byte	.LASF302
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xa
	.4byte	0x32
	.uleb128 0xd
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xd
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x30
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.4byte	0x68
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x4
	.byte	0xa0
	.byte	0xd
	.4byte	0x68
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x74
	.uleb128 0xd
	.byte	0x10
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x37
	.byte	0x20
	.4byte	0x61
	.uleb128 0x31
	.byte	0x4
	.uleb128 0x23
	.4byte	0xca
	.uleb128 0x6
	.4byte	0x32
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0xa
	.4byte	0xd6
	.uleb128 0x6
	.4byte	0xdd
	.uleb128 0x6
	.4byte	0xf1
	.uleb128 0x23
	.4byte	0xe7
	.uleb128 0x32
	.uleb128 0x18
	.byte	0x7
	.4byte	0x32
	.byte	0x1
	.byte	0x42
	.4byte	0x12f
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4b
	.byte	0x3
	.4byte	0xf2
	.uleb128 0xa
	.4byte	0x12f
	.uleb128 0x18
	.byte	0x7
	.4byte	0x32
	.byte	0x1
	.byte	0x54
	.4byte	0x345
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0xf
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x11
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x12
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x13
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x15
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x17
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x19
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x1a
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x1b
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x1d
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x1e
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x1f
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x21
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x22
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x23
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x25
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x26
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x27
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x29
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0x2a
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0x2b
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x2d
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x2e
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0x2f
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0x31
	.uleb128 0x2
	.4byte	.LASF78
	.byte	0x32
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x33
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0x35
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0x36
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0x37
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0x39
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0x3a
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x3b
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0x3d
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0x3e
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0x3f
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0x41
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0x42
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0x43
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0x45
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0x46
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0x47
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0x49
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0x4a
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0x4b
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0x4d
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0x4e
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0x4f
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0x51
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0x52
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0x53
	.byte	0
	.uleb128 0x8
	.4byte	.LASF112
	.byte	0x1
	.byte	0xa9
	.byte	0x3
	.4byte	0x140
	.uleb128 0xa
	.4byte	0x345
	.uleb128 0x18
	.byte	0x7
	.4byte	0x32
	.byte	0x1
	.byte	0xac
	.4byte	0x3b7
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF127
	.byte	0x1
	.byte	0xbb
	.byte	0x3
	.4byte	0x356
	.uleb128 0xa
	.4byte	0x3b7
	.uleb128 0x18
	.byte	0x7
	.4byte	0x32
	.byte	0x1
	.byte	0xbe
	.4byte	0x3f3
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF132
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF133
	.byte	0x1
	.byte	0xc4
	.byte	0x3
	.4byte	0x3c8
	.uleb128 0x18
	.byte	0x5
	.4byte	0x2b
	.byte	0x1
	.byte	0xc7
	.4byte	0x41e
	.uleb128 0x33
	.4byte	.LASF134
	.sleb128 -1
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF137
	.byte	0x1
	.byte	0xcb
	.byte	0x3
	.4byte	0x3ff
	.uleb128 0xa
	.4byte	0x41e
	.uleb128 0x8
	.4byte	.LASF138
	.byte	0x1
	.byte	0xf4
	.byte	0x26
	.4byte	0x440
	.uleb128 0xa
	.4byte	0x42f
	.uleb128 0x1b
	.4byte	.LASF138
	.byte	0x2c
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x4dd
	.uleb128 0x7
	.4byte	.LASF139
	.byte	0x6
	.byte	0x4c
	.byte	0x19
	.4byte	0x12f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF140
	.byte	0x6
	.byte	0x4f
	.byte	0xb
	.4byte	0x6ce
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF141
	.byte	0x6
	.byte	0x54
	.byte	0xb
	.4byte	0x6fb
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF142
	.byte	0x6
	.byte	0x5b
	.byte	0xb
	.4byte	0x72d
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF143
	.byte	0x6
	.byte	0x62
	.byte	0xb
	.4byte	0x75a
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF144
	.byte	0x6
	.byte	0x6a
	.byte	0xb
	.4byte	0x78c
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF145
	.byte	0x6
	.byte	0x78
	.byte	0xb
	.4byte	0x7af
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF146
	.byte	0x6
	.byte	0x7d
	.byte	0xb
	.4byte	0x7cd
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF147
	.byte	0x6
	.byte	0x82
	.byte	0xb
	.4byte	0x7cd
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF148
	.byte	0x6
	.byte	0x87
	.byte	0xe
	.4byte	0x7d7
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF149
	.byte	0x6
	.byte	0x8a
	.byte	0xc
	.4byte	0x7e7
	.byte	0x28
	.byte	0
	.uleb128 0x8
	.4byte	.LASF150
	.byte	0x1
	.byte	0xf9
	.byte	0x27
	.4byte	0x4e9
	.uleb128 0x1b
	.4byte	.LASF150
	.byte	0x24
	.byte	0x7
	.byte	0x3b
	.byte	0x8
	.4byte	0x51e
	.uleb128 0x7
	.4byte	.LASF151
	.byte	0x7
	.byte	0x3d
	.byte	0x13
	.4byte	0x686
	.byte	0
	.uleb128 0x7
	.4byte	.LASF152
	.byte	0x7
	.byte	0x41
	.byte	0x13
	.4byte	0x686
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF153
	.byte	0x7
	.byte	0x44
	.byte	0xc
	.4byte	0x87
	.byte	0x20
	.byte	0
	.uleb128 0x24
	.4byte	.LASF154
	.byte	0x8
	.2byte	0x10a
	.4byte	0x593
	.uleb128 0xe
	.4byte	.LASF155
	.2byte	0x10c
	.byte	0x11
	.4byte	0xe2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF156
	.2byte	0x10f
	.4byte	0x74
	.byte	0x5
	.byte	0x20
	.uleb128 0x14
	.4byte	.LASF157
	.2byte	0x115
	.4byte	0x74
	.byte	0x3
	.byte	0x25
	.uleb128 0x14
	.4byte	.LASF158
	.2byte	0x11b
	.4byte	0x74
	.byte	0x4
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF159
	.2byte	0x120
	.4byte	0x74
	.byte	0x4
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF160
	.2byte	0x128
	.4byte	0x74
	.byte	0x8
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF161
	.2byte	0x12e
	.4byte	0x74
	.byte	0x2
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF162
	.2byte	0x131
	.4byte	0x74
	.byte	0x5
	.byte	0x3a
	.byte	0
	.uleb128 0x25
	.4byte	.LASF154
	.2byte	0x133
	.4byte	0x51e
	.uleb128 0xa
	.4byte	0x593
	.uleb128 0x24
	.4byte	.LASF163
	.byte	0x44
	.2byte	0x13c
	.4byte	0x63f
	.uleb128 0xe
	.4byte	.LASF164
	.2byte	0x13e
	.byte	0x22
	.4byte	0x63f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF158
	.2byte	0x141
	.byte	0x9
	.4byte	0x68
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF165
	.2byte	0x146
	.byte	0x19
	.4byte	0x41e
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF166
	.2byte	0x14c
	.byte	0xb
	.4byte	0x659
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF167
	.2byte	0x152
	.byte	0xa
	.4byte	0x681
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF168
	.2byte	0x158
	.byte	0x13
	.4byte	0x686
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF153
	.2byte	0x15b
	.byte	0xc
	.4byte	0x87
	.byte	0x24
	.uleb128 0x34
	.string	"iv"
	.byte	0x1
	.2byte	0x15f
	.byte	0x13
	.4byte	0x686
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF157
	.2byte	0x162
	.byte	0xc
	.4byte	0x87
	.byte	0x38
	.uleb128 0xe
	.4byte	.LASF169
	.2byte	0x165
	.byte	0xb
	.4byte	0xca
	.byte	0x3c
	.uleb128 0xe
	.4byte	.LASF170
	.2byte	0x169
	.byte	0x1d
	.4byte	0x696
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.4byte	0x59e
	.uleb128 0x26
	.4byte	0x659
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0x6
	.4byte	0x644
	.uleb128 0x12
	.4byte	0x68
	.4byte	0x67c
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x67c
	.uleb128 0x1
	.4byte	0x67c
	.byte	0
	.uleb128 0x6
	.4byte	0x87
	.uleb128 0x6
	.4byte	0x65e
	.uleb128 0x15
	.4byte	0x32
	.4byte	0x696
	.uleb128 0x1a
	.4byte	0x74
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x4dd
	.uleb128 0x25
	.4byte	.LASF163
	.2byte	0x177
	.4byte	0x5a3
	.uleb128 0xa
	.4byte	0x69b
	.uleb128 0x12
	.4byte	0x68
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x41e
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0xd1
	.byte	0
	.uleb128 0x6
	.4byte	0x39
	.uleb128 0x6
	.4byte	0x6ab
	.uleb128 0x12
	.4byte	0x68
	.4byte	0x6fb
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x41e
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0xd1
	.byte	0
	.uleb128 0x6
	.4byte	0x6d3
	.uleb128 0x12
	.4byte	0x68
	.4byte	0x72d
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x41e
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x67c
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0xd1
	.byte	0
	.uleb128 0x6
	.4byte	0x700
	.uleb128 0x12
	.4byte	0x68
	.4byte	0x75a
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x67c
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0xd1
	.byte	0
	.uleb128 0x6
	.4byte	0x732
	.uleb128 0x12
	.4byte	0x68
	.4byte	0x78c
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x67c
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0xd1
	.byte	0
	.uleb128 0x6
	.4byte	0x75f
	.uleb128 0x12
	.4byte	0x68
	.4byte	0x7af
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0xd1
	.byte	0
	.uleb128 0x6
	.4byte	0x791
	.uleb128 0x12
	.4byte	0x68
	.4byte	0x7cd
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x74
	.byte	0
	.uleb128 0x6
	.4byte	0x7b4
	.uleb128 0x35
	.4byte	0xca
	.uleb128 0x6
	.4byte	0x7d2
	.uleb128 0x26
	.4byte	0x7e7
	.uleb128 0x1
	.4byte	0xca
	.byte	0
	.uleb128 0x6
	.4byte	0x7dc
	.uleb128 0x27
	.byte	0x8
	.byte	0x6
	.byte	0x8e
	.4byte	0x80f
	.uleb128 0x7
	.4byte	.LASF160
	.byte	0x6
	.byte	0x8f
	.byte	0x1b
	.4byte	0x345
	.byte	0
	.uleb128 0x7
	.4byte	.LASF171
	.byte	0x6
	.byte	0x90
	.byte	0x22
	.4byte	0x63f
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF172
	.byte	0x6
	.byte	0x91
	.byte	0x3
	.4byte	0x7ec
	.uleb128 0xa
	.4byte	0x80f
	.uleb128 0x15
	.4byte	0x81b
	.4byte	0x82b
	.uleb128 0x1e
	.byte	0
	.uleb128 0xa
	.4byte	0x820
	.uleb128 0x1f
	.4byte	.LASF173
	.byte	0xa8
	.byte	0x2a
	.4byte	0x82b
	.uleb128 0x15
	.4byte	0x68
	.4byte	0x846
	.uleb128 0x1e
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF174
	.byte	0xaa
	.byte	0xc
	.4byte	0x83b
	.uleb128 0x15
	.4byte	0x866
	.4byte	0x85c
	.uleb128 0x1e
	.byte	0
	.uleb128 0xa
	.4byte	0x851
	.uleb128 0x6
	.4byte	0x43b
	.uleb128 0xa
	.4byte	0x861
	.uleb128 0x1f
	.4byte	.LASF175
	.byte	0xac
	.byte	0x2c
	.4byte	0x85c
	.uleb128 0x8
	.4byte	.LASF176
	.byte	0x8
	.byte	0x50
	.byte	0x12
	.4byte	0xb2
	.uleb128 0x8
	.4byte	.LASF177
	.byte	0x8
	.byte	0x51
	.byte	0x12
	.4byte	0xb2
	.uleb128 0xa
	.4byte	0x882
	.uleb128 0x8
	.4byte	.LASF178
	.byte	0x8
	.byte	0x52
	.byte	0x11
	.4byte	0x9a
	.uleb128 0x36
	.4byte	.LASF179
	.2byte	0x1090
	.byte	0x9
	.byte	0x3a
	.byte	0x10
	.4byte	0x91f
	.uleb128 0x7
	.4byte	.LASF169
	.byte	0x9
	.byte	0x3e
	.byte	0x1e
	.4byte	0x69b
	.byte	0
	.uleb128 0x1c
	.string	"H"
	.byte	0x9
	.byte	0x40
	.byte	0xe
	.4byte	0x91f
	.byte	0x48
	.uleb128 0x20
	.string	"len"
	.byte	0x41
	.byte	0xe
	.4byte	0xbe
	.2byte	0x1048
	.uleb128 0x1d
	.4byte	.LASF180
	.byte	0x42
	.byte	0xe
	.4byte	0xbe
	.2byte	0x1050
	.uleb128 0x1d
	.4byte	.LASF181
	.byte	0x43
	.byte	0x13
	.4byte	0x686
	.2byte	0x1058
	.uleb128 0x20
	.string	"y"
	.byte	0x44
	.byte	0x13
	.4byte	0x686
	.2byte	0x1068
	.uleb128 0x20
	.string	"buf"
	.byte	0x45
	.byte	0x13
	.4byte	0x686
	.2byte	0x1078
	.uleb128 0x1d
	.4byte	.LASF159
	.byte	0x46
	.byte	0x13
	.4byte	0x32
	.2byte	0x1088
	.uleb128 0x1d
	.4byte	.LASF182
	.byte	0x49
	.byte	0x13
	.4byte	0x32
	.2byte	0x1089
	.byte	0
	.uleb128 0x15
	.4byte	0xbe
	.4byte	0x935
	.uleb128 0x1a
	.4byte	0x74
	.byte	0xff
	.uleb128 0x1a
	.4byte	0x74
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF179
	.byte	0x9
	.byte	0x4b
	.byte	0x1
	.4byte	0x89f
	.uleb128 0x1b
	.4byte	.LASF183
	.byte	0x80
	.byte	0xa
	.byte	0x45
	.byte	0x10
	.4byte	0x9cd
	.uleb128 0x1c
	.string	"y"
	.byte	0xa
	.byte	0x46
	.byte	0x13
	.4byte	0x686
	.byte	0
	.uleb128 0x1c
	.string	"ctr"
	.byte	0xa
	.byte	0x47
	.byte	0x13
	.4byte	0x686
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF184
	.byte	0xa
	.byte	0x48
	.byte	0xc
	.4byte	0x87
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF180
	.byte	0xa
	.byte	0x49
	.byte	0xc
	.4byte	0x87
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF185
	.byte	0xa
	.byte	0x4a
	.byte	0xc
	.4byte	0x87
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF186
	.byte	0xa
	.byte	0x4b
	.byte	0xc
	.4byte	0x87
	.byte	0x2c
	.uleb128 0x1c
	.string	"q"
	.byte	0xa
	.byte	0x51
	.byte	0x12
	.4byte	0x74
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF159
	.byte	0xa
	.byte	0x52
	.byte	0x12
	.4byte	0x74
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF169
	.byte	0xa
	.byte	0x5a
	.byte	0x1e
	.4byte	0x69b
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF151
	.byte	0xa
	.byte	0x5c
	.byte	0x9
	.4byte	0x68
	.byte	0x7c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF183
	.byte	0xa
	.byte	0x5f
	.byte	0x1
	.4byte	0x941
	.uleb128 0x1b
	.4byte	.LASF187
	.byte	0x84
	.byte	0xb
	.byte	0x26
	.byte	0x10
	.4byte	0xa0e
	.uleb128 0x7
	.4byte	.LASF151
	.byte	0xb
	.byte	0x27
	.byte	0xe
	.4byte	0xa0e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF188
	.byte	0xb
	.byte	0x28
	.byte	0xd
	.4byte	0xa1e
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF189
	.byte	0xb
	.byte	0x29
	.byte	0xc
	.4byte	0x87
	.byte	0x80
	.byte	0
	.uleb128 0x15
	.4byte	0xb2
	.4byte	0xa1e
	.uleb128 0x1a
	.4byte	0x74
	.byte	0xf
	.byte	0
	.uleb128 0x15
	.4byte	0xa6
	.4byte	0xa2e
	.uleb128 0x1a
	.4byte	0x74
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF187
	.byte	0xb
	.byte	0x2b
	.byte	0x1
	.4byte	0x9d9
	.uleb128 0x18
	.byte	0x7
	.4byte	0x32
	.byte	0xc
	.byte	0x23
	.4byte	0xa53
	.uleb128 0x2
	.4byte	.LASF190
	.byte	0
	.uleb128 0x2
	.4byte	.LASF191
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF192
	.byte	0xc
	.byte	0x26
	.byte	0x3
	.4byte	0xa3a
	.uleb128 0x27
	.byte	0x44
	.byte	0xc
	.byte	0x33
	.4byte	0xa75
	.uleb128 0x7
	.4byte	.LASF169
	.byte	0xc
	.byte	0x34
	.byte	0x1e
	.4byte	0x69b
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF193
	.byte	0xc
	.byte	0x35
	.byte	0x3
	.4byte	0xa5f
	.uleb128 0x28
	.4byte	.LASF221
	.byte	0x39
	.byte	0xc
	.4byte	0x68
	.uleb128 0x5
	.byte	0x3
	.4byte	supported_init
	.uleb128 0xf
	.4byte	.LASF194
	.byte	0xc
	.byte	0x93
	.byte	0x5
	.4byte	0x68
	.4byte	0xac6
	.uleb128 0x1
	.4byte	0xac6
	.uleb128 0x1
	.4byte	0xa53
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x67c
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0x6
	.4byte	0xa75
	.uleb128 0xf
	.4byte	.LASF195
	.byte	0xc
	.byte	0x78
	.byte	0x5
	.4byte	0x68
	.4byte	0xaff
	.uleb128 0x1
	.4byte	0xac6
	.uleb128 0x1
	.4byte	0xa53
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x67c
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0x16
	.4byte	.LASF196
	.byte	0xa
	.2byte	0x103
	.4byte	0x68
	.4byte	0xb42
	.uleb128 0x1
	.4byte	0xb42
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0x6
	.4byte	0x9cd
	.uleb128 0xf
	.4byte	.LASF197
	.byte	0x9
	.byte	0xd4
	.byte	0x5
	.4byte	0x68
	.4byte	0xb8a
	.uleb128 0x1
	.4byte	0xb8a
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0xd1
	.byte	0
	.uleb128 0x6
	.4byte	0x935
	.uleb128 0xf
	.4byte	.LASF198
	.byte	0xa
	.byte	0xad
	.byte	0x5
	.4byte	0x68
	.4byte	0xbd2
	.uleb128 0x1
	.4byte	0xb42
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0xf
	.4byte	.LASF199
	.byte	0x9
	.byte	0xa5
	.byte	0x5
	.4byte	0x68
	.4byte	0xc1a
	.uleb128 0x1
	.4byte	0xb8a
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0xd1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF200
	.byte	0xd
	.byte	0x20
	.byte	0x5
	.4byte	0x68
	.4byte	0xc3a
	.uleb128 0x1
	.4byte	0xe7
	.uleb128 0x1
	.4byte	0xe7
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0x16
	.4byte	.LASF201
	.byte	0x9
	.2byte	0x164
	.4byte	0x68
	.4byte	0xc69
	.uleb128 0x1
	.4byte	0xb8a
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x67c
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0x16
	.4byte	.LASF202
	.byte	0xa
	.2byte	0x1d9
	.4byte	0x68
	.4byte	0xc98
	.uleb128 0x1
	.4byte	0xb42
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x67c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF203
	.byte	0x9
	.2byte	0x13e
	.4byte	0x68
	.4byte	0xcc7
	.uleb128 0x1
	.4byte	0xb8a
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x67c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF204
	.byte	0x9
	.2byte	0x105
	.4byte	0x68
	.4byte	0xce7
	.uleb128 0x1
	.4byte	0xb8a
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0xf
	.4byte	.LASF205
	.byte	0xe
	.byte	0x1f
	.byte	0x8
	.4byte	0xca
	.4byte	0xd07
	.uleb128 0x1
	.4byte	0xcc
	.uleb128 0x1
	.4byte	0xec
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0x16
	.4byte	.LASF206
	.byte	0xa
	.2byte	0x153
	.4byte	0x68
	.4byte	0xd2c
	.uleb128 0x1
	.4byte	0xb42
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0x16
	.4byte	.LASF207
	.byte	0xa
	.2byte	0x173
	.4byte	0x68
	.4byte	0xd51
	.uleb128 0x1
	.4byte	0xb42
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0xf
	.4byte	.LASF208
	.byte	0x9
	.byte	0xec
	.byte	0x5
	.4byte	0x68
	.4byte	0xd76
	.uleb128 0x1
	.4byte	0xb8a
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0xf
	.4byte	.LASF209
	.byte	0xb
	.byte	0x73
	.byte	0x5
	.4byte	0x68
	.4byte	0xd96
	.uleb128 0x1
	.4byte	0xd96
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0xb2
	.byte	0
	.uleb128 0x6
	.4byte	0xa2e
	.uleb128 0x29
	.4byte	.LASF210
	.byte	0xf
	.byte	0x9f
	.4byte	0xdb1
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0x29
	.4byte	.LASF211
	.byte	0x10
	.byte	0x79
	.4byte	0xdc7
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0xf
	.4byte	.LASF212
	.byte	0xe
	.byte	0x21
	.byte	0x8
	.4byte	0xca
	.4byte	0xde7
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0xf
	.4byte	.LASF213
	.byte	0xe
	.byte	0x24
	.byte	0x5
	.4byte	0x68
	.4byte	0xe02
	.uleb128 0x1
	.4byte	0xe2
	.uleb128 0x1
	.4byte	0xe2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF222
	.2byte	0x681
	.4byte	0x68
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee4
	.uleb128 0x4
	.string	"ctx"
	.byte	0x3
	.2byte	0x681
	.byte	0x3f
	.4byte	0xee4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"iv"
	.byte	0x3
	.2byte	0x682
	.byte	0x3a
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF214
	.byte	0x3
	.2byte	0x682
	.byte	0x45
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.string	"ad"
	.byte	0x3
	.2byte	0x683
	.byte	0x3a
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF215
	.byte	0x3
	.2byte	0x683
	.byte	0x45
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0x3
	.2byte	0x684
	.byte	0x3a
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF217
	.byte	0x3
	.2byte	0x684
	.byte	0x48
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0x3
	.2byte	0x685
	.byte	0x34
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.4byte	.LASF219
	.byte	0x3
	.2byte	0x685
	.byte	0x43
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.4byte	.LASF220
	.byte	0x3
	.2byte	0x686
	.byte	0x2d
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.4byte	.LASF185
	.byte	0x3
	.2byte	0x686
	.byte	0x3a
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x5
	.4byte	.LASF159
	.byte	0x3
	.2byte	0x68f
	.byte	0x20
	.4byte	0xa53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x69b
	.uleb128 0x10
	.4byte	.LASF223
	.2byte	0x64e
	.4byte	0x68
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfdb
	.uleb128 0x4
	.string	"ctx"
	.byte	0x3
	.2byte	0x64e
	.byte	0x3f
	.4byte	0xee4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"iv"
	.byte	0x3
	.2byte	0x64f
	.byte	0x3a
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF214
	.byte	0x3
	.2byte	0x64f
	.byte	0x45
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.string	"ad"
	.byte	0x3
	.2byte	0x650
	.byte	0x3a
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF215
	.byte	0x3
	.2byte	0x650
	.byte	0x45
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0x3
	.2byte	0x651
	.byte	0x3a
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF217
	.byte	0x3
	.2byte	0x651
	.byte	0x48
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0x3
	.2byte	0x652
	.byte	0x34
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.4byte	.LASF219
	.byte	0x3
	.2byte	0x652
	.byte	0x43
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.4byte	.LASF220
	.byte	0x3
	.2byte	0x653
	.byte	0x2d
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.4byte	.LASF185
	.byte	0x3
	.2byte	0x653
	.byte	0x3a
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.string	"ret"
	.byte	0x3
	.2byte	0x674
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x5
	.4byte	.LASF159
	.byte	0x3
	.2byte	0x65c
	.byte	0x20
	.4byte	0xa53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF224
	.byte	0x3
	.2byte	0x5e7
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10dd
	.uleb128 0x4
	.string	"ctx"
	.byte	0x3
	.2byte	0x5e7
	.byte	0x42
	.4byte	0xee4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"iv"
	.byte	0x3
	.2byte	0x5e8
	.byte	0x3d
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF214
	.byte	0x3
	.2byte	0x5e8
	.byte	0x48
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.string	"ad"
	.byte	0x3
	.2byte	0x5e9
	.byte	0x3d
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF215
	.byte	0x3
	.2byte	0x5e9
	.byte	0x48
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0x3
	.2byte	0x5ea
	.byte	0x3d
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF217
	.byte	0x3
	.2byte	0x5ea
	.byte	0x4b
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0x3
	.2byte	0x5eb
	.byte	0x37
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.4byte	.LASF220
	.byte	0x3
	.2byte	0x5eb
	.byte	0x47
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.string	"tag"
	.byte	0x3
	.2byte	0x5ec
	.byte	0x3d
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.4byte	.LASF185
	.byte	0x3
	.2byte	0x5ec
	.byte	0x49
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x10c2
	.uleb128 0x9
	.string	"ret"
	.byte	0x3
	.2byte	0x612
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x9
	.string	"ret"
	.byte	0x3
	.2byte	0x622
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF225
	.byte	0x3
	.2byte	0x59a
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11a7
	.uleb128 0x4
	.string	"ctx"
	.byte	0x3
	.2byte	0x59a
	.byte	0x42
	.4byte	0xee4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"iv"
	.byte	0x3
	.2byte	0x59b
	.byte	0x3d
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF214
	.byte	0x3
	.2byte	0x59b
	.byte	0x48
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.string	"ad"
	.byte	0x3
	.2byte	0x59c
	.byte	0x3d
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF215
	.byte	0x3
	.2byte	0x59c
	.byte	0x48
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0x3
	.2byte	0x59d
	.byte	0x3d
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF217
	.byte	0x3
	.2byte	0x59d
	.byte	0x4b
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0x3
	.2byte	0x59e
	.byte	0x37
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF220
	.byte	0x3
	.2byte	0x59e
	.byte	0x47
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.string	"tag"
	.byte	0x3
	.2byte	0x59f
	.byte	0x37
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.4byte	.LASF185
	.byte	0x3
	.2byte	0x59f
	.byte	0x43
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x10
	.4byte	.LASF226
	.2byte	0x537
	.4byte	0x68
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1260
	.uleb128 0x4
	.string	"ctx"
	.byte	0x3
	.2byte	0x537
	.byte	0x34
	.4byte	0xee4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"iv"
	.byte	0x3
	.2byte	0x538
	.byte	0x2f
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF214
	.byte	0x3
	.2byte	0x538
	.byte	0x3a
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0x3
	.2byte	0x539
	.byte	0x2f
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF217
	.byte	0x3
	.2byte	0x539
	.byte	0x3d
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0x3
	.2byte	0x53a
	.byte	0x29
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF220
	.byte	0x3
	.2byte	0x53a
	.byte	0x39
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.string	"ret"
	.byte	0x3
	.2byte	0x53c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF227
	.byte	0x3
	.2byte	0x53d
	.byte	0xc
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF228
	.byte	0x3
	.2byte	0x588
	.byte	0xc
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF229
	.2byte	0x4e6
	.4byte	0x68
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12f1
	.uleb128 0x4
	.string	"ctx"
	.byte	0x3
	.2byte	0x4e6
	.byte	0x38
	.4byte	0xee4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.string	"tag"
	.byte	0x3
	.2byte	0x4e7
	.byte	0x33
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF185
	.byte	0x3
	.2byte	0x4e7
	.byte	0x3f
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.4byte	.LASF230
	.byte	0x3
	.2byte	0x4e9
	.byte	0x13
	.4byte	0x686
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"ret"
	.byte	0x3
	.2byte	0x4ea
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.4byte	.LASF303
	.byte	0x3
	.2byte	0x52e
	.byte	0x1
	.4byte	.L221
	.uleb128 0xc
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x5
	.4byte	.LASF231
	.byte	0x3
	.2byte	0x502
	.byte	0x10
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF232
	.2byte	0x4b8
	.4byte	0x68
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1355
	.uleb128 0x4
	.string	"ctx"
	.byte	0x3
	.2byte	0x4b8
	.byte	0x38
	.4byte	0xee4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"tag"
	.byte	0x3
	.2byte	0x4b9
	.byte	0x2d
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF185
	.byte	0x3
	.2byte	0x4b9
	.byte	0x39
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x5
	.4byte	.LASF231
	.byte	0x3
	.2byte	0x4ce
	.byte	0x10
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF233
	.2byte	0x47c
	.4byte	0x68
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x138f
	.uleb128 0x4
	.string	"ctx"
	.byte	0x3
	.2byte	0x47c
	.byte	0x3f
	.4byte	0xee4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0x3
	.2byte	0x47d
	.byte	0x3e
	.4byte	0x3f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x10
	.4byte	.LASF234
	.2byte	0x46e
	.4byte	0x68
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13f9
	.uleb128 0x4
	.string	"ctx"
	.byte	0x3
	.2byte	0x46e
	.byte	0x35
	.4byte	0xee4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0x3
	.2byte	0x46f
	.byte	0x2a
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF220
	.byte	0x3
	.2byte	0x46f
	.byte	0x3a
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF228
	.byte	0x3
	.2byte	0x471
	.byte	0xc
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"ret"
	.byte	0x3
	.2byte	0x472
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF235
	.2byte	0x401
	.4byte	0x68
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x146d
	.uleb128 0x4
	.string	"ctx"
	.byte	0x3
	.2byte	0x401
	.byte	0x3c
	.4byte	0xee4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0x3
	.2byte	0x402
	.byte	0x31
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF220
	.byte	0x3
	.2byte	0x402
	.byte	0x41
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF228
	.byte	0x3
	.2byte	0x403
	.byte	0x2a
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x9
	.string	"ret"
	.byte	0x3
	.2byte	0x438
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF236
	.byte	0x3
	.2byte	0x3f4
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14c9
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0x3
	.2byte	0x3f4
	.byte	0x2a
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF237
	.byte	0x3
	.2byte	0x3f4
	.byte	0x38
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF238
	.byte	0x3
	.2byte	0x3f5
	.byte	0x23
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF228
	.byte	0x3
	.2byte	0x3f5
	.byte	0x35
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.4byte	.LASF239
	.byte	0x3
	.2byte	0x3d8
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1553
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0x3
	.2byte	0x3d8
	.byte	0x2d
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF237
	.byte	0x3
	.2byte	0x3d8
	.byte	0x3b
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF238
	.byte	0x3
	.2byte	0x3d9
	.byte	0x26
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF228
	.byte	0x3
	.2byte	0x3d9
	.byte	0x38
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.2byte	0x3db
	.byte	0xc
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF240
	.byte	0x3
	.2byte	0x3dc
	.byte	0x1c
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF241
	.byte	0x3
	.2byte	0x3dc
	.byte	0x5d
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x39
	.4byte	.LASF247
	.byte	0x3
	.2byte	0x3d2
	.byte	0xd
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x159b
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0x3
	.2byte	0x3d2
	.byte	0x2e
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF219
	.byte	0x3
	.2byte	0x3d3
	.byte	0x26
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF238
	.byte	0x3
	.2byte	0x3d3
	.byte	0x39
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF242
	.byte	0x3
	.2byte	0x3ae
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x165f
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0x3
	.2byte	0x3ae
	.byte	0x35
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF237
	.byte	0x3
	.2byte	0x3ae
	.byte	0x43
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF238
	.byte	0x3
	.2byte	0x3af
	.byte	0x2e
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF228
	.byte	0x3
	.2byte	0x3af
	.byte	0x40
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.2byte	0x3b1
	.byte	0xc
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF243
	.byte	0x3
	.2byte	0x3b1
	.byte	0xf
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF244
	.byte	0x3
	.2byte	0x3b2
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x9
	.string	"bad"
	.byte	0x3
	.2byte	0x3b3
	.byte	0x1c
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x5
	.4byte	.LASF245
	.byte	0x3
	.2byte	0x3c3
	.byte	0x20
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF246
	.byte	0x3
	.2byte	0x3c4
	.byte	0x20
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF248
	.2byte	0x3a2
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16c3
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0x3
	.2byte	0x3a2
	.byte	0x36
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF219
	.byte	0x3
	.2byte	0x3a3
	.byte	0x2e
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF238
	.byte	0x3
	.2byte	0x3a3
	.byte	0x41
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF244
	.byte	0x3
	.2byte	0x3a5
	.byte	0xc
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.2byte	0x3a6
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xb
	.4byte	.LASF249
	.byte	0x3
	.2byte	0x381
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1781
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0x3
	.2byte	0x381
	.byte	0x35
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF237
	.byte	0x3
	.2byte	0x381
	.byte	0x43
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF238
	.byte	0x3
	.2byte	0x382
	.byte	0x2e
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF228
	.byte	0x3
	.2byte	0x382
	.byte	0x40
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.4byte	.LASF250
	.byte	0x3
	.2byte	0x388
	.byte	0x1c
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"bad"
	.byte	0x3
	.2byte	0x389
	.byte	0x1c
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.2byte	0x38d
	.byte	0x14
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x5
	.4byte	.LASF251
	.byte	0x3
	.2byte	0x38e
	.byte	0x20
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF252
	.byte	0x3
	.2byte	0x390
	.byte	0x20
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF253
	.2byte	0x375
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17e5
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0x3
	.2byte	0x375
	.byte	0x36
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF219
	.byte	0x3
	.2byte	0x376
	.byte	0x2e
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF238
	.byte	0x3
	.2byte	0x376
	.byte	0x41
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF244
	.byte	0x3
	.2byte	0x378
	.byte	0xc
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.2byte	0x379
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xb
	.4byte	.LASF254
	.byte	0x3
	.2byte	0x34f
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18a9
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0x3
	.2byte	0x34f
	.byte	0x34
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF237
	.byte	0x3
	.2byte	0x350
	.byte	0x3d
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF238
	.byte	0x3
	.2byte	0x351
	.byte	0x3e
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF228
	.byte	0x3
	.2byte	0x352
	.byte	0x3e
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.2byte	0x354
	.byte	0xc
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF243
	.byte	0x3
	.2byte	0x354
	.byte	0xf
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF244
	.byte	0x3
	.2byte	0x355
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x9
	.string	"bad"
	.byte	0x3
	.2byte	0x35d
	.byte	0x1c
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x5
	.4byte	.LASF250
	.byte	0x3
	.2byte	0x364
	.byte	0x20
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF255
	.byte	0x3
	.2byte	0x365
	.byte	0x20
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF256
	.2byte	0x33f
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x190d
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0x3
	.2byte	0x33f
	.byte	0x2d
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF219
	.byte	0x3
	.2byte	0x33f
	.byte	0x3c
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF238
	.byte	0x3
	.2byte	0x340
	.byte	0x25
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF244
	.byte	0x3
	.2byte	0x342
	.byte	0xc
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.2byte	0x343
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x10
	.4byte	.LASF257
	.2byte	0x244
	.4byte	0x68
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19b1
	.uleb128 0x4
	.string	"ctx"
	.byte	0x3
	.2byte	0x244
	.byte	0x35
	.4byte	0xee4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0x3
	.2byte	0x244
	.byte	0x4f
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF217
	.byte	0x3
	.2byte	0x245
	.byte	0x22
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0x3
	.2byte	0x245
	.byte	0x37
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF220
	.byte	0x3
	.2byte	0x245
	.byte	0x47
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.string	"ret"
	.byte	0x3
	.2byte	0x247
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF156
	.byte	0x3
	.2byte	0x248
	.byte	0xc
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x5
	.4byte	.LASF258
	.byte	0x3
	.2byte	0x28c
	.byte	0x10
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF259
	.2byte	0x214
	.4byte	0x68
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19fa
	.uleb128 0x4
	.string	"ctx"
	.byte	0x3
	.2byte	0x214
	.byte	0x38
	.4byte	0xee4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"ad"
	.byte	0x3
	.2byte	0x215
	.byte	0x33
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF215
	.byte	0x3
	.2byte	0x215
	.byte	0x3e
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF260
	.2byte	0x200
	.4byte	0x68
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a24
	.uleb128 0x4
	.string	"ctx"
	.byte	0x3
	.2byte	0x200
	.byte	0x34
	.4byte	0xee4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF261
	.2byte	0x19d
	.4byte	0x68
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1aa7
	.uleb128 0x4
	.string	"ctx"
	.byte	0x3
	.2byte	0x19d
	.byte	0x35
	.4byte	0xee4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"iv"
	.byte	0x3
	.2byte	0x19e
	.byte	0x30
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF214
	.byte	0x3
	.2byte	0x19f
	.byte	0x22
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF262
	.byte	0x3
	.2byte	0x1a1
	.byte	0xc
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x5
	.4byte	.LASF263
	.byte	0x3
	.2byte	0x1e0
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF264
	.byte	0x3
	.2byte	0x1e1
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF265
	.2byte	0x12f
	.4byte	0x68
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b01
	.uleb128 0x4
	.string	"ctx"
	.byte	0x3
	.2byte	0x12f
	.byte	0x35
	.4byte	0xee4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"key"
	.byte	0x3
	.2byte	0x130
	.byte	0x30
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF158
	.byte	0x3
	.2byte	0x131
	.byte	0x1f
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF165
	.byte	0x3
	.2byte	0x132
	.byte	0x35
	.4byte	0x42a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.uleb128 0x22
	.4byte	.LASF266
	.byte	0xf6
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b39
	.uleb128 0x17
	.string	"ctx"
	.byte	0x3
	.byte	0xf6
	.byte	0x34
	.4byte	0xee4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF164
	.byte	0x3
	.byte	0xf7
	.byte	0x37
	.4byte	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF267
	.byte	0xcf
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b5d
	.uleb128 0x17
	.string	"ctx"
	.byte	0x3
	.byte	0xcf
	.byte	0x34
	.4byte	0xee4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF268
	.byte	0xca
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b81
	.uleb128 0x17
	.string	"ctx"
	.byte	0x3
	.byte	0xca
	.byte	0x34
	.4byte	0xee4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.4byte	.LASF269
	.byte	0x76
	.byte	0x1e
	.4byte	0x63f
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bd7
	.uleb128 0x13
	.4byte	.LASF270
	.byte	0x3
	.byte	0x77
	.byte	0x1f
	.4byte	0x13b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x13
	.4byte	.LASF158
	.byte	0x3
	.byte	0x78
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF159
	.byte	0x3
	.byte	0x79
	.byte	0x21
	.4byte	0x3c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x19
	.string	"def"
	.byte	0x3
	.byte	0x7b
	.byte	0x28
	.4byte	0x1bd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x81b
	.uleb128 0x22
	.4byte	.LASF271
	.byte	0x64
	.byte	0x1e
	.4byte	0x63f
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c14
	.uleb128 0x13
	.4byte	.LASF272
	.byte	0x3
	.byte	0x65
	.byte	0x11
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.string	"def"
	.byte	0x3
	.byte	0x67
	.byte	0x28
	.4byte	0x1bd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF273
	.byte	0x56
	.byte	0x1e
	.4byte	0x63f
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c4c
	.uleb128 0x13
	.4byte	.LASF274
	.byte	0x3
	.byte	0x57
	.byte	0x21
	.4byte	0x351
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x19
	.string	"def"
	.byte	0x3
	.byte	0x59
	.byte	0x28
	.4byte	0x1bd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF275
	.byte	0x41
	.byte	0xc
	.4byte	0x1c83
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c83
	.uleb128 0x19
	.string	"def"
	.byte	0x3
	.byte	0x43
	.byte	0x28
	.4byte	0x1bd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.4byte	.LASF160
	.byte	0x44
	.byte	0xa
	.4byte	0x1c88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	0x6f
	.uleb128 0x6
	.4byte	0x68
	.uleb128 0x2d
	.4byte	.LASF276
	.byte	0x3
	.byte	0x3b
	.byte	0x2c
	.4byte	0x861
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cb7
	.uleb128 0x13
	.4byte	.LASF171
	.byte	0x3
	.byte	0x3c
	.byte	0x22
	.4byte	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF277
	.byte	0x2
	.2byte	0x213
	.byte	0x26
	.4byte	0x876
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ce1
	.uleb128 0x4
	.string	"x"
	.byte	0x2
	.2byte	0x213
	.byte	0x51
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF278
	.byte	0x2
	.2byte	0x20d
	.byte	0x26
	.4byte	0x876
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d19
	.uleb128 0x4
	.string	"x"
	.byte	0x2
	.2byte	0x20d
	.byte	0x50
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"y"
	.byte	0x2
	.2byte	0x20e
	.byte	0x50
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF279
	.byte	0x2
	.2byte	0x207
	.byte	0x26
	.4byte	0x876
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d51
	.uleb128 0x4
	.string	"x"
	.byte	0x2
	.2byte	0x207
	.byte	0x51
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"y"
	.byte	0x2
	.2byte	0x208
	.byte	0x51
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF280
	.byte	0x2
	.2byte	0x201
	.byte	0x26
	.4byte	0x876
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d89
	.uleb128 0x4
	.string	"x"
	.byte	0x2
	.2byte	0x201
	.byte	0x50
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"y"
	.byte	0x2
	.2byte	0x202
	.byte	0x50
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF281
	.byte	0x2
	.2byte	0x1f5
	.byte	0x26
	.4byte	0x876
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dc1
	.uleb128 0x4
	.string	"x"
	.byte	0x2
	.2byte	0x1f5
	.byte	0x4b
	.4byte	0x882
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"y"
	.byte	0x2
	.2byte	0x1f6
	.byte	0x4b
	.4byte	0x882
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF282
	.byte	0x2
	.2byte	0x1ef
	.byte	0x26
	.4byte	0x876
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1df9
	.uleb128 0x4
	.string	"x"
	.byte	0x2
	.2byte	0x1ef
	.byte	0x4b
	.4byte	0x882
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"y"
	.byte	0x2
	.2byte	0x1f0
	.byte	0x4b
	.4byte	0x882
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF283
	.byte	0x2
	.2byte	0x1e9
	.byte	0x26
	.4byte	0x876
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e31
	.uleb128 0x4
	.string	"x"
	.byte	0x2
	.2byte	0x1e9
	.byte	0x4b
	.4byte	0x882
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"y"
	.byte	0x2
	.2byte	0x1ea
	.byte	0x4b
	.4byte	0x882
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF284
	.byte	0x2
	.2byte	0x1e4
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e6d
	.uleb128 0x3
	.4byte	.LASF285
	.byte	0x2
	.2byte	0x1e4
	.byte	0x45
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"if1"
	.byte	0x2
	.2byte	0x1e4
	.byte	0x54
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF286
	.byte	0x2
	.2byte	0x1c8
	.byte	0x26
	.4byte	0x876
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ea9
	.uleb128 0x3
	.4byte	.LASF285
	.byte	0x2
	.2byte	0x1c8
	.byte	0x57
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"if1"
	.byte	0x2
	.2byte	0x1c9
	.byte	0x57
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF287
	.byte	0x2
	.2byte	0x1be
	.byte	0x16
	.4byte	0x87
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ee5
	.uleb128 0x3
	.4byte	.LASF285
	.byte	0x2
	.2byte	0x1be
	.byte	0x47
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"if1"
	.byte	0x2
	.2byte	0x1be
	.byte	0x59
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF288
	.byte	0x2
	.2byte	0x1a9
	.byte	0x26
	.4byte	0x876
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f31
	.uleb128 0x3
	.4byte	.LASF285
	.byte	0x2
	.2byte	0x1a9
	.byte	0x50
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"if1"
	.byte	0x2
	.2byte	0x1aa
	.byte	0x50
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.string	"if0"
	.byte	0x2
	.2byte	0x1ab
	.byte	0x50
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF289
	.byte	0x2
	.2byte	0x19b
	.byte	0x16
	.4byte	0x87
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f7d
	.uleb128 0x3
	.4byte	.LASF285
	.byte	0x2
	.2byte	0x19b
	.byte	0x40
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"if1"
	.byte	0x2
	.2byte	0x19c
	.byte	0x30
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.string	"if0"
	.byte	0x2
	.2byte	0x19d
	.byte	0x30
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF290
	.byte	0x2
	.2byte	0x17e
	.byte	0x26
	.4byte	0x876
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fc5
	.uleb128 0x4
	.string	"x"
	.byte	0x2
	.2byte	0x17e
	.byte	0x4b
	.4byte	0x882
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"y"
	.byte	0x2
	.2byte	0x17e
	.byte	0x60
	.4byte	0x882
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF291
	.byte	0x2
	.2byte	0x181
	.byte	0x1d
	.4byte	0x88e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF292
	.byte	0x2
	.2byte	0x10f
	.byte	0x26
	.4byte	0x876
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x203b
	.uleb128 0x4
	.string	"x"
	.byte	0x2
	.2byte	0x10f
	.byte	0x4b
	.4byte	0x882
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"y"
	.byte	0x2
	.2byte	0x10f
	.byte	0x60
	.4byte	0x882
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"xo"
	.byte	0x2
	.2byte	0x162
	.byte	0x1d
	.4byte	0x88e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"yo"
	.byte	0x2
	.2byte	0x163
	.byte	0x1d
	.4byte	0x88e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF293
	.byte	0x2
	.2byte	0x168
	.byte	0x1c
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.string	"ret"
	.byte	0x2
	.2byte	0x174
	.byte	0x17
	.4byte	0x882
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF294
	.byte	0xcd
	.byte	0x21
	.4byte	0x882
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2092
	.uleb128 0x13
	.4byte	.LASF285
	.byte	0x2
	.byte	0xcd
	.byte	0x46
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.string	"if1"
	.byte	0x2
	.byte	0xce
	.byte	0x41
	.4byte	0x882
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"if0"
	.byte	0x2
	.byte	0xcf
	.byte	0x41
	.4byte	0x882
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF295
	.byte	0x2
	.2byte	0x109
	.byte	0x1c
	.4byte	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF296
	.byte	0x78
	.byte	0x26
	.4byte	0x876
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20d4
	.uleb128 0x17
	.string	"x"
	.byte	0x2
	.byte	0x78
	.byte	0x48
	.4byte	0x882
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.string	"xo"
	.byte	0x2
	.byte	0xb8
	.byte	0x1d
	.4byte	0x88e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.string	"y"
	.byte	0x2
	.byte	0xc0
	.byte	0x16
	.4byte	0x893
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF297
	.byte	0x2
	.byte	0x55
	.byte	0x21
	.4byte	0x882
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20fc
	.uleb128 0x17
	.string	"x"
	.byte	0x2
	.byte	0x55
	.byte	0x4e
	.4byte	0x882
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF298
	.byte	0x1
	.2byte	0x2d4
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2128
	.uleb128 0x4
	.string	"ctx"
	.byte	0x1
	.2byte	0x2d5
	.byte	0x25
	.4byte	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x6a6
	.uleb128 0x11
	.4byte	.LASF299
	.byte	0x1
	.2byte	0x2ad
	.byte	0x1c
	.4byte	0x74
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2159
	.uleb128 0x4
	.string	"ctx"
	.byte	0x1
	.2byte	0x2ae
	.byte	0x25
	.4byte	0x2128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF300
	.byte	0x1
	.2byte	0x20d
	.byte	0x16
	.4byte	0x87
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2185
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x20e
	.byte	0x22
	.4byte	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x1e4
	.byte	0x16
	.4byte	0x87
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x1e5
	.byte	0x22
	.4byte	0x63f
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x10
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
	.uleb128 0xd
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
	.sleb128 18
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x21
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
	.sleb128 13
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x37
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x16
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
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2a
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
	.uleb128 0x2c
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x3a
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1bc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
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
	.4byte	.LFB13
	.uleb128 .LFE13-.LFB13
	.byte	0x7
	.4byte	.LFB15
	.uleb128 .LFE15-.LFB15
	.byte	0x7
	.4byte	.LFB19
	.uleb128 .LFE19-.LFB19
	.byte	0x7
	.4byte	.LFB21
	.uleb128 .LFE21-.LFB21
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
	.4byte	.LFB30
	.uleb128 .LFE30-.LFB30
	.byte	0x7
	.4byte	.LFB31
	.uleb128 .LFE31-.LFB31
	.byte	0x7
	.4byte	.LFB33
	.uleb128 .LFE33-.LFB33
	.byte	0x7
	.4byte	.LFB35
	.uleb128 .LFE35-.LFB35
	.byte	0x7
	.4byte	.LFB37
	.uleb128 .LFE37-.LFB37
	.byte	0x7
	.4byte	.LFB39
	.uleb128 .LFE39-.LFB39
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF174:
	.string	"mbedtls_cipher_supported"
.LASF244:
	.string	"padding_len"
.LASF92:
	.string	"MBEDTLS_CIPHER_ARIA_256_GCM"
.LASF279:
	.string	"mbedtls_ct_bool_and"
.LASF176:
	.string	"mbedtls_ct_condition_t"
.LASF165:
	.string	"operation"
.LASF290:
	.string	"mbedtls_ct_uint_ne"
.LASF216:
	.string	"input"
.LASF59:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_GCM"
.LASF286:
	.string	"mbedtls_ct_bool_if_else_0"
.LASF252:
	.string	"hit_first_nonzero"
.LASF225:
	.string	"mbedtls_cipher_aead_encrypt"
.LASF173:
	.string	"mbedtls_cipher_definitions"
.LASF118:
	.string	"MBEDTLS_MODE_CTR"
.LASF161:
	.string	"flags"
.LASF224:
	.string	"mbedtls_cipher_aead_decrypt"
.LASF112:
	.string	"mbedtls_cipher_type_t"
.LASF10:
	.string	"unsigned int"
.LASF146:
	.string	"setkey_enc_func"
.LASF107:
	.string	"MBEDTLS_CIPHER_AES_192_KW"
.LASF294:
	.string	"mbedtls_ct_if"
.LASF108:
	.string	"MBEDTLS_CIPHER_AES_256_KW"
.LASF29:
	.string	"MBEDTLS_CIPHER_NULL"
.LASF138:
	.string	"mbedtls_cipher_base_t"
.LASF200:
	.string	"mbedtls_ct_memcmp"
.LASF150:
	.string	"mbedtls_cmac_context_t"
.LASF274:
	.string	"cipher_type"
.LASF96:
	.string	"MBEDTLS_CIPHER_ARIA_128_CCM_STAR_NO_TAG"
.LASF30:
	.string	"MBEDTLS_CIPHER_AES_128_ECB"
.LASF284:
	.string	"mbedtls_ct_error_if_else_0"
.LASF190:
	.string	"MBEDTLS_KW_MODE_KW"
.LASF221:
	.string	"supported_init"
.LASF142:
	.string	"cfb_func"
.LASF36:
	.string	"MBEDTLS_CIPHER_AES_128_CFB128"
.LASF116:
	.string	"MBEDTLS_MODE_CFB"
.LASF232:
	.string	"mbedtls_cipher_write_tag"
.LASF84:
	.string	"MBEDTLS_CIPHER_ARIA_128_CFB128"
.LASF211:
	.string	"mbedtls_zeroize_and_free"
.LASF256:
	.string	"add_pkcs_padding"
.LASF78:
	.string	"MBEDTLS_CIPHER_ARIA_128_ECB"
.LASF193:
	.string	"mbedtls_nist_kw_context"
.LASF159:
	.string	"mode"
.LASF53:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CFB128"
.LASF217:
	.string	"ilen"
.LASF259:
	.string	"mbedtls_cipher_update_ad"
.LASF296:
	.string	"mbedtls_ct_bool"
.LASF137:
	.string	"mbedtls_operation_t"
.LASF110:
	.string	"MBEDTLS_CIPHER_AES_192_KWP"
.LASF45:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_ECB"
.LASF140:
	.string	"ecb_func"
.LASF32:
	.string	"MBEDTLS_CIPHER_AES_256_ECB"
.LASF270:
	.string	"cipher_id"
.LASF179:
	.string	"mbedtls_gcm_context"
.LASF220:
	.string	"olen"
.LASF250:
	.string	"in_padding"
.LASF271:
	.string	"mbedtls_cipher_info_from_string"
.LASF62:
	.string	"MBEDTLS_CIPHER_DES_EDE_ECB"
.LASF175:
	.string	"mbedtls_cipher_base_lookup_table"
.LASF16:
	.string	"uint32_t"
.LASF133:
	.string	"mbedtls_cipher_padding_t"
.LASF132:
	.string	"MBEDTLS_PADDING_NONE"
.LASF134:
	.string	"MBEDTLS_OPERATION_NONE"
.LASF80:
	.string	"MBEDTLS_CIPHER_ARIA_256_ECB"
.LASF233:
	.string	"mbedtls_cipher_set_padding_mode"
.LASF263:
	.string	"set_lengths_result"
.LASF97:
	.string	"MBEDTLS_CIPHER_ARIA_192_CCM_STAR_NO_TAG"
.LASF104:
	.string	"MBEDTLS_CIPHER_CHACHA20"
.LASF300:
	.string	"mbedtls_cipher_info_get_iv_size"
.LASF189:
	.string	"keystream_bytes_used"
.LASF295:
	.string	"not_cond"
.LASF27:
	.string	"mbedtls_cipher_id_t"
.LASF184:
	.string	"plaintext_len"
.LASF249:
	.string	"get_one_and_zeros_padding"
.LASF47:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_ECB"
.LASF9:
	.string	"long long unsigned int"
.LASF33:
	.string	"MBEDTLS_CIPHER_AES_128_CBC"
.LASF277:
	.string	"mbedtls_ct_bool_not"
.LASF278:
	.string	"mbedtls_ct_bool_or"
.LASF43:
	.string	"MBEDTLS_CIPHER_AES_192_GCM"
.LASF275:
	.string	"mbedtls_cipher_list"
.LASF127:
	.string	"mbedtls_cipher_mode_t"
.LASF99:
	.string	"MBEDTLS_CIPHER_AES_128_OFB"
.LASF170:
	.string	"cmac_ctx"
.LASF136:
	.string	"MBEDTLS_ENCRYPT"
.LASF135:
	.string	"MBEDTLS_DECRYPT"
.LASF81:
	.string	"MBEDTLS_CIPHER_ARIA_128_CBC"
.LASF241:
	.string	"prev_done"
.LASF154:
	.string	"mbedtls_cipher_info_t"
.LASF91:
	.string	"MBEDTLS_CIPHER_ARIA_192_GCM"
.LASF234:
	.string	"mbedtls_cipher_finish"
.LASF242:
	.string	"get_zeros_and_len_padding"
.LASF71:
	.string	"MBEDTLS_CIPHER_AES_256_CCM_STAR_NO_TAG"
.LASF48:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CBC"
.LASF35:
	.string	"MBEDTLS_CIPHER_AES_256_CBC"
.LASF188:
	.string	"keystream8"
.LASF153:
	.string	"unprocessed_len"
.LASF12:
	.string	"size_t"
.LASF58:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_GCM"
.LASF149:
	.string	"ctx_free_func"
.LASF293:
	.string	"cond"
.LASF63:
	.string	"MBEDTLS_CIPHER_DES_EDE_CBC"
.LASF218:
	.string	"output"
.LASF185:
	.string	"tag_len"
.LASF145:
	.string	"stream_func"
.LASF269:
	.string	"mbedtls_cipher_info_from_values"
.LASF101:
	.string	"MBEDTLS_CIPHER_AES_256_OFB"
.LASF227:
	.string	"finish_olen"
.LASF113:
	.string	"MBEDTLS_MODE_NONE"
.LASF83:
	.string	"MBEDTLS_CIPHER_ARIA_256_CBC"
.LASF258:
	.string	"copy_len"
.LASF93:
	.string	"MBEDTLS_CIPHER_ARIA_128_CCM"
.LASF237:
	.string	"input_len"
.LASF261:
	.string	"mbedtls_cipher_set_iv"
.LASF299:
	.string	"mbedtls_cipher_get_block_size"
.LASF64:
	.string	"MBEDTLS_CIPHER_DES_EDE3_ECB"
.LASF197:
	.string	"mbedtls_gcm_auth_decrypt"
.LASF50:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CBC"
.LASF265:
	.string	"mbedtls_cipher_setkey"
.LASF72:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CCM"
.LASF123:
	.string	"MBEDTLS_MODE_XTS"
.LASF264:
	.string	"ccm_star_mode"
.LASF68:
	.string	"MBEDTLS_CIPHER_AES_256_CCM"
.LASF182:
	.string	"acceleration"
.LASF194:
	.string	"mbedtls_nist_kw_unwrap"
.LASF262:
	.string	"actual_iv_size"
.LASF143:
	.string	"ofb_func"
.LASF18:
	.string	"char"
.LASF126:
	.string	"MBEDTLS_MODE_KWP"
.LASF19:
	.string	"MBEDTLS_CIPHER_ID_NONE"
.LASF95:
	.string	"MBEDTLS_CIPHER_ARIA_256_CCM"
.LASF11:
	.string	"ptrdiff_t"
.LASF196:
	.string	"mbedtls_ccm_auth_decrypt"
.LASF120:
	.string	"MBEDTLS_MODE_STREAM"
.LASF267:
	.string	"mbedtls_cipher_free"
.LASF303:
	.string	"exit"
.LASF39:
	.string	"MBEDTLS_CIPHER_AES_128_CTR"
.LASF139:
	.string	"cipher"
.LASF273:
	.string	"mbedtls_cipher_info_from_type"
.LASF207:
	.string	"mbedtls_ccm_set_lengths"
.LASF283:
	.string	"mbedtls_ct_uint_eq"
.LASF15:
	.string	"uint8_t"
.LASF31:
	.string	"MBEDTLS_CIPHER_AES_192_ECB"
.LASF74:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CCM"
.LASF198:
	.string	"mbedtls_ccm_encrypt_and_tag"
.LASF204:
	.string	"mbedtls_gcm_update_ad"
.LASF86:
	.string	"MBEDTLS_CIPHER_ARIA_256_CFB128"
.LASF87:
	.string	"MBEDTLS_CIPHER_ARIA_128_CTR"
.LASF230:
	.string	"check_tag"
.LASF236:
	.string	"get_no_padding"
.LASF215:
	.string	"ad_len"
.LASF255:
	.string	"different"
.LASF257:
	.string	"mbedtls_cipher_update"
.LASF79:
	.string	"MBEDTLS_CIPHER_ARIA_192_ECB"
.LASF301:
	.string	"mbedtls_cipher_info_get_key_bitlen"
.LASF202:
	.string	"mbedtls_ccm_update"
.LASF66:
	.string	"MBEDTLS_CIPHER_AES_128_CCM"
.LASF8:
	.string	"long long int"
.LASF235:
	.string	"mbedtls_cipher_finish_padded"
.LASF141:
	.string	"cbc_func"
.LASF219:
	.string	"output_len"
.LASF54:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CTR"
.LASF203:
	.string	"mbedtls_gcm_update"
.LASF228:
	.string	"invalid_padding"
.LASF77:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CCM_STAR_NO_TAG"
.LASF41:
	.string	"MBEDTLS_CIPHER_AES_256_CTR"
.LASF69:
	.string	"MBEDTLS_CIPHER_AES_128_CCM_STAR_NO_TAG"
.LASF46:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_ECB"
.LASF122:
	.string	"MBEDTLS_MODE_CCM_STAR_NO_TAG"
.LASF119:
	.string	"MBEDTLS_MODE_GCM"
.LASF125:
	.string	"MBEDTLS_MODE_KW"
.LASF195:
	.string	"mbedtls_nist_kw_wrap"
.LASF60:
	.string	"MBEDTLS_CIPHER_DES_ECB"
.LASF212:
	.string	"memset"
.LASF89:
	.string	"MBEDTLS_CIPHER_ARIA_256_CTR"
.LASF253:
	.string	"add_one_and_zeros_padding"
.LASF148:
	.string	"ctx_alloc_func"
.LASF226:
	.string	"mbedtls_cipher_crypt"
.LASF38:
	.string	"MBEDTLS_CIPHER_AES_256_CFB128"
.LASF52:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CFB128"
.LASF124:
	.string	"MBEDTLS_MODE_CHACHAPOLY"
.LASF281:
	.string	"mbedtls_ct_uint_ge"
.LASF280:
	.string	"mbedtls_ct_bool_ne"
.LASF56:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CTR"
.LASF171:
	.string	"info"
.LASF282:
	.string	"mbedtls_ct_uint_gt"
.LASF222:
	.string	"mbedtls_cipher_auth_decrypt_ext"
.LASF34:
	.string	"MBEDTLS_CIPHER_AES_192_CBC"
.LASF144:
	.string	"ctr_func"
.LASF276:
	.string	"mbedtls_cipher_get_base"
.LASF223:
	.string	"mbedtls_cipher_auth_encrypt_ext"
.LASF240:
	.string	"done"
.LASF248:
	.string	"add_zeros_and_len_padding"
.LASF245:
	.string	"is_padding"
.LASF100:
	.string	"MBEDTLS_CIPHER_AES_192_OFB"
.LASF13:
	.string	"long double"
.LASF82:
	.string	"MBEDTLS_CIPHER_ARIA_192_CBC"
.LASF21:
	.string	"MBEDTLS_CIPHER_ID_AES"
.LASF129:
	.string	"MBEDTLS_PADDING_ONE_AND_ZEROS"
.LASF287:
	.string	"mbedtls_ct_size_if_else_0"
.LASF243:
	.string	"pad_idx"
.LASF199:
	.string	"mbedtls_gcm_crypt_and_tag"
.LASF238:
	.string	"data_len"
.LASF246:
	.string	"nonzero_pad_byte"
.LASF158:
	.string	"key_bitlen"
.LASF49:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CBC"
.LASF254:
	.string	"mbedtls_get_pkcs_padding"
.LASF201:
	.string	"mbedtls_gcm_finish"
.LASF67:
	.string	"MBEDTLS_CIPHER_AES_192_CCM"
.LASF4:
	.string	"short int"
.LASF20:
	.string	"MBEDTLS_CIPHER_ID_NULL"
.LASF180:
	.string	"add_len"
.LASF6:
	.string	"long int"
.LASF291:
	.string	"diff"
.LASF42:
	.string	"MBEDTLS_CIPHER_AES_128_GCM"
.LASF178:
	.string	"mbedtls_ct_int_t"
.LASF51:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CFB128"
.LASF94:
	.string	"MBEDTLS_CIPHER_ARIA_192_CCM"
.LASF172:
	.string	"mbedtls_cipher_definition_t"
.LASF131:
	.string	"MBEDTLS_PADDING_ZEROS"
.LASF114:
	.string	"MBEDTLS_MODE_ECB"
.LASF75:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CCM_STAR_NO_TAG"
.LASF285:
	.string	"condition"
.LASF17:
	.string	"uint64_t"
.LASF70:
	.string	"MBEDTLS_CIPHER_AES_192_CCM_STAR_NO_TAG"
.LASF156:
	.string	"block_size"
.LASF260:
	.string	"mbedtls_cipher_reset"
.LASF73:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CCM"
.LASF147:
	.string	"setkey_dec_func"
.LASF289:
	.string	"mbedtls_ct_size_if"
.LASF61:
	.string	"MBEDTLS_CIPHER_DES_CBC"
.LASF239:
	.string	"get_zeros_padding"
.LASF167:
	.string	"get_padding"
.LASF164:
	.string	"cipher_info"
.LASF169:
	.string	"cipher_ctx"
.LASF155:
	.string	"name"
.LASF105:
	.string	"MBEDTLS_CIPHER_CHACHA20_POLY1305"
.LASF102:
	.string	"MBEDTLS_CIPHER_AES_128_XTS"
.LASF162:
	.string	"base_idx"
.LASF152:
	.string	"unprocessed_block"
.LASF25:
	.string	"MBEDTLS_CIPHER_ID_ARIA"
.LASF24:
	.string	"MBEDTLS_CIPHER_ID_CAMELLIA"
.LASF7:
	.string	"long unsigned int"
.LASF297:
	.string	"mbedtls_ct_compiler_opaque"
.LASF181:
	.string	"base_ectr"
.LASF40:
	.string	"MBEDTLS_CIPHER_AES_192_CTR"
.LASF157:
	.string	"iv_size"
.LASF14:
	.string	"int32_t"
.LASF109:
	.string	"MBEDTLS_CIPHER_AES_128_KWP"
.LASF214:
	.string	"iv_len"
.LASF22:
	.string	"MBEDTLS_CIPHER_ID_DES"
.LASF266:
	.string	"mbedtls_cipher_setup"
.LASF88:
	.string	"MBEDTLS_CIPHER_ARIA_192_CTR"
.LASF160:
	.string	"type"
.LASF3:
	.string	"unsigned char"
.LASF76:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CCM_STAR_NO_TAG"
.LASF28:
	.string	"MBEDTLS_CIPHER_NONE"
.LASF229:
	.string	"mbedtls_cipher_check_tag"
.LASF103:
	.string	"MBEDTLS_CIPHER_AES_256_XTS"
.LASF288:
	.string	"mbedtls_ct_bool_if"
.LASF55:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CTR"
.LASF268:
	.string	"mbedtls_cipher_init"
.LASF115:
	.string	"MBEDTLS_MODE_CBC"
.LASF208:
	.string	"mbedtls_gcm_starts"
.LASF191:
	.string	"MBEDTLS_KW_MODE_KWP"
.LASF151:
	.string	"state"
.LASF231:
	.string	"output_length"
.LASF186:
	.string	"processed"
.LASF117:
	.string	"MBEDTLS_MODE_OFB"
.LASF111:
	.string	"MBEDTLS_CIPHER_AES_256_KWP"
.LASF163:
	.string	"mbedtls_cipher_context_t"
.LASF26:
	.string	"MBEDTLS_CIPHER_ID_CHACHA20"
.LASF251:
	.string	"is_nonzero"
.LASF98:
	.string	"MBEDTLS_CIPHER_ARIA_256_CCM_STAR_NO_TAG"
.LASF177:
	.string	"mbedtls_ct_uint_t"
.LASF209:
	.string	"mbedtls_chacha20_starts"
.LASF298:
	.string	"mbedtls_cipher_get_iv_size"
.LASF192:
	.string	"mbedtls_nist_kw_mode_t"
.LASF23:
	.string	"MBEDTLS_CIPHER_ID_3DES"
.LASF2:
	.string	"signed char"
.LASF292:
	.string	"mbedtls_ct_uint_lt"
.LASF130:
	.string	"MBEDTLS_PADDING_ZEROS_AND_LEN"
.LASF5:
	.string	"short unsigned int"
.LASF247:
	.string	"add_zeros_padding"
.LASF272:
	.string	"cipher_name"
.LASF205:
	.string	"memcpy"
.LASF65:
	.string	"MBEDTLS_CIPHER_DES_EDE3_CBC"
.LASF121:
	.string	"MBEDTLS_MODE_CCM"
.LASF90:
	.string	"MBEDTLS_CIPHER_ARIA_128_GCM"
.LASF128:
	.string	"MBEDTLS_PADDING_PKCS7"
.LASF206:
	.string	"mbedtls_ccm_starts"
.LASF183:
	.string	"mbedtls_ccm_context"
.LASF166:
	.string	"add_padding"
.LASF168:
	.string	"unprocessed_data"
.LASF302:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF57:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_GCM"
.LASF187:
	.string	"mbedtls_chacha20_context"
.LASF44:
	.string	"MBEDTLS_CIPHER_AES_256_GCM"
.LASF210:
	.string	"mbedtls_platform_zeroize"
.LASF37:
	.string	"MBEDTLS_CIPHER_AES_192_CFB128"
.LASF106:
	.string	"MBEDTLS_CIPHER_AES_128_KW"
.LASF85:
	.string	"MBEDTLS_CIPHER_ARIA_192_CFB128"
.LASF213:
	.string	"strcmp"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/cipher.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
