	.file	"xz_dec_lzma2.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz/xz_dec_lzma2.c"
	.section	.text.lzma_state_literal,"ax",@progbits
	.align	1
	.type	lzma_state_literal, @function
lzma_state_literal:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz/xz_lzma2.h"
	.loc 1 65 1
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
	.loc 1 66 9
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 66 8
	li	a5,3
	bgtu	a4,a5,.L2
	.loc 1 67 16
	lw	a5,-20(s0)
	sb	zero,0(a5)
	.loc 1 72 1
	j	.L5
.L2:
	.loc 1 68 14
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 68 13
	li	a5,9
	bgtu	a4,a5,.L4
	.loc 1 69 9
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 69 16
	addi	a5,a5,-3
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,0(a5)
	.loc 1 72 1
	j	.L5
.L4:
	.loc 1 71 9
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 71 16
	addi	a5,a5,-6
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,0(a5)
.L5:
	.loc 1 72 1
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
.LFE5:
	.size	lzma_state_literal, .-lzma_state_literal
	.section	.text.lzma_state_match,"ax",@progbits
	.align	1
	.type	lzma_state_match, @function
lzma_state_match:
.LFB6:
	.loc 1 76 1
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
	.loc 1 77 14
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 77 43
	li	a5,6
	bgtu	a4,a5,.L7
	.loc 1 77 43 is_stmt 0 discriminator 1
	li	a5,7
	j	.L8
.L7:
	.loc 1 77 43 discriminator 2
	li	a5,10
.L8:
	.loc 1 77 12 is_stmt 1 discriminator 4
	lw	a4,-20(s0)
	sb	a5,0(a4)
	.loc 1 78 1
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
.LFE6:
	.size	lzma_state_match, .-lzma_state_match
	.section	.text.lzma_state_long_rep,"ax",@progbits
	.align	1
	.type	lzma_state_long_rep, @function
lzma_state_long_rep:
.LFB7:
	.loc 1 82 1
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
	.loc 1 83 14
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 83 45
	li	a5,6
	bgtu	a4,a5,.L10
	.loc 1 83 45 is_stmt 0 discriminator 1
	li	a5,8
	j	.L11
.L10:
	.loc 1 83 45 discriminator 2
	li	a5,11
.L11:
	.loc 1 83 12 is_stmt 1 discriminator 4
	lw	a4,-20(s0)
	sb	a5,0(a4)
	.loc 1 84 1
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
.LFE7:
	.size	lzma_state_long_rep, .-lzma_state_long_rep
	.section	.text.lzma_state_short_rep,"ax",@progbits
	.align	1
	.type	lzma_state_short_rep, @function
lzma_state_short_rep:
.LFB8:
	.loc 1 88 1
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
	.loc 1 89 14
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 89 46
	li	a5,6
	bgtu	a4,a5,.L13
	.loc 1 89 46 is_stmt 0 discriminator 1
	li	a5,9
	j	.L14
.L13:
	.loc 1 89 46 discriminator 2
	li	a5,11
.L14:
	.loc 1 89 12 is_stmt 1 discriminator 4
	lw	a4,-20(s0)
	sb	a5,0(a4)
	.loc 1 90 1
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
.LFE8:
	.size	lzma_state_short_rep, .-lzma_state_short_rep
	.section	.text.lzma_state_is_literal,"ax",@progbits
	.align	1
	.type	lzma_state_is_literal, @function
lzma_state_is_literal:
.LFB9:
	.loc 1 94 1
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
	.loc 1 95 18
	lbu	a5,-17(s0)
	sltiu	a5,a5,7
	andi	a5,a5,0xff
	.loc 1 96 1
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
.LFE9:
	.size	lzma_state_is_literal, .-lzma_state_is_literal
	.section	.text.lzma_get_dist_state,"ax",@progbits
	.align	1
	.type	lzma_get_dist_state, @function
lzma_get_dist_state:
.LFB10:
	.loc 1 148 1
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
	.loc 1 150 23
	lw	a5,-20(s0)
	li	a4,5
	bleu	a5,a4,.L18
	li	a5,5
.L18:
	addi	a5,a5,-2
	.loc 1 151 1
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
.LFE10:
	.size	lzma_get_dist_state, .-lzma_get_dist_state
	.section	.text.dict_reset,"ax",@progbits
	.align	1
	.type	dict_reset, @function
dict_reset:
.LFB11:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz/xz_dec_lzma2.c"
	.loc 2 287 1
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
	.loc 2 288 15
	lw	a5,-20(s0)
	lbu	a5,36(a5)
	.loc 2 288 8
	bne	a5,zero,.L21
	.loc 2 289 22
	lw	a5,-24(s0)
	lw	a4,12(a5)
	.loc 2 289 31
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 2 289 28
	add	a4,a4,a5
	.loc 2 289 19
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 2 290 22
	lw	a5,-24(s0)
	lw	a4,20(a5)
	.loc 2 290 36
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 2 290 33
	sub	a4,a4,a5
	.loc 2 290 19
	lw	a5,-20(s0)
	sw	a4,20(a5)
.L21:
	.loc 2 293 17
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 2 294 15
	lw	a5,-20(s0)
	sw	zero,8(a5)
	.loc 2 295 17
	lw	a5,-20(s0)
	sw	zero,16(a5)
	.loc 2 296 16
	lw	a5,-20(s0)
	sw	zero,12(a5)
	.loc 2 297 1
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
.LFE11:
	.size	dict_reset, .-dict_reset
	.section	.text.dict_limit,"ax",@progbits
	.align	1
	.type	dict_limit, @function
dict_limit:
.LFB12:
	.loc 2 301 1
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
	.loc 2 302 13
	lw	a5,-20(s0)
	lw	a4,20(a5)
	.loc 2 302 25
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 302 19
	sub	a5,a4,a5
	.loc 2 302 8
	lw	a4,-24(s0)
	bltu	a4,a5,.L23
	.loc 2 303 27
	lw	a5,-20(s0)
	lw	a4,20(a5)
	.loc 2 303 21
	lw	a5,-20(s0)
	sw	a4,16(a5)
	.loc 2 306 1
	j	.L25
.L23:
	.loc 2 305 27
	lw	a5,-20(s0)
	lw	a4,8(a5)
	.loc 2 305 33
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 2 305 21
	lw	a5,-20(s0)
	sw	a4,16(a5)
.L25:
	.loc 2 306 1
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
.LFE12:
	.size	dict_limit, .-dict_limit
	.section	.text.dict_has_space,"ax",@progbits
	.align	1
	.type	dict_has_space, @function
dict_has_space:
.LFB13:
	.loc 2 310 1
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
	.loc 2 311 16
	lw	a5,-20(s0)
	lw	a4,8(a5)
	.loc 2 311 28
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 2 311 22
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	.loc 2 312 1
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
	.size	dict_has_space, .-dict_has_space
	.section	.text.dict_get,"ax",@progbits
	.align	1
	.type	dict_get, @function
dict_get:
.LFB14:
	.loc 2 321 1
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
	.loc 2 322 25
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 2 322 31
	lw	a5,-40(s0)
	sub	a5,a4,a5
	.loc 2 322 12
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 2 324 21
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 324 8
	lw	a4,-40(s0)
	bltu	a4,a5,.L29
	.loc 2 325 23
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 2 325 16
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L29:
	.loc 2 327 16
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 2 327 47
	beq	a5,zero,.L30
	.loc 2 327 33 discriminator 1
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 327 38 discriminator 1
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 2 327 47
	j	.L32
.L30:
	.loc 2 327 47 is_stmt 0 discriminator 2
	li	a5,0
.L32:
	.loc 2 328 1 is_stmt 1
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
	.size	dict_get, .-dict_get
	.section	.text.dict_put,"ax",@progbits
	.align	1
	.type	dict_put, @function
dict_put:
.LFB15:
	.loc 2 334 1
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
	.loc 2 335 9
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 335 19
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 335 24
	addi	a2,a5,1
	lw	a3,-20(s0)
	sw	a2,8(a3)
	.loc 2 335 14
	add	a5,a4,a5
	.loc 2 335 28
	lbu	a4,-21(s0)
	sb	a4,0(a5)
	.loc 2 337 13
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 2 337 26
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 337 8
	bgeu	a4,a5,.L35
	.loc 2 338 26
	lw	a5,-20(s0)
	lw	a4,8(a5)
	.loc 2 338 20
	lw	a5,-20(s0)
	sw	a4,12(a5)
.L35:
	.loc 2 339 1
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
.LFE15:
	.size	dict_put, .-dict_put
	.section	.text.dict_repeat,"ax",@progbits
	.align	1
	.type	dict_repeat, @function
dict_repeat:
.LFB16:
	.loc 2 347 1
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
	.loc 2 351 21
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 2 351 8
	lw	a4,-44(s0)
	bgeu	a4,a5,.L37
	.loc 2 351 43 discriminator 1
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 2 351 28 discriminator 1
	lw	a4,-44(s0)
	bltu	a4,a5,.L38
.L37:
	.loc 2 352 16
	li	a5,0
	j	.L39
.L38:
	.loc 2 354 39
	lw	a5,-40(s0)
	lw	a3,0(a5)
	.loc 2 354 18
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 2 354 32
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 354 26
	sub	a4,a4,a5
	.loc 2 354 10
	mv	a5,a3
	bleu	a5,a4,.L40
	mv	a5,a4
.L40:
	sw	a5,-24(s0)
	.loc 2 355 5
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 355 10
	lw	a5,-24(s0)
	sub	a4,a4,a5
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 2 357 16
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 2 357 22
	lw	a5,-44(s0)
	sub	a5,a4,a5
	.loc 2 357 10
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 2 358 21
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 358 8
	lw	a4,-44(s0)
	bltu	a4,a5,.L43
	.loc 2 359 21
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 2 359 14
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L43:
	.loc 2 362 38
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 362 48
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	.loc 2 362 43
	add	a4,a4,a5
	.loc 2 362 13
	lw	a5,-36(s0)
	lw	a3,0(a5)
	.loc 2 362 23
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 362 28
	addi	a1,a5,1
	lw	a2,-36(s0)
	sw	a1,8(a2)
	.loc 2 362 18
	add	a5,a3,a5
	.loc 2 362 43
	lbu	a4,0(a4)
	.loc 2 362 32
	sb	a4,0(a5)
	.loc 2 363 25
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 2 363 12
	lw	a4,-20(s0)
	bne	a4,a5,.L42
	.loc 2 364 18
	sw	zero,-20(s0)
.L42:
	.loc 2 365 21
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	bne	a5,zero,.L43
	.loc 2 367 13
	lw	a5,-36(s0)
	lw	a4,12(a5)
	.loc 2 367 26
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 367 8
	bgeu	a4,a5,.L44
	.loc 2 368 26
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 2 368 20
	lw	a5,-36(s0)
	sw	a4,12(a5)
.L44:
	.loc 2 370 12
	li	a5,1
.L39:
	.loc 2 371 1
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
.LFE16:
	.size	dict_repeat, .-dict_repeat
	.section	.text.dict_uncompressed,"ax",@progbits
	.align	1
	.type	dict_uncompressed, @function
dict_uncompressed:
.LFB17:
	.loc 2 376 1
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
	.loc 2 379 11
	j	.L46
.L54:
	.loc 2 381 51
	lw	a5,-40(s0)
	lw	a4,20(a5)
	.loc 2 381 65
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 2 381 62
	sub	a3,a4,a5
	.loc 2 381 24
	lw	a5,-40(s0)
	lw	a4,8(a5)
	.loc 2 381 37
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 381 34
	sub	a4,a4,a5
	.loc 2 381 19
	mv	a5,a3
	bleu	a5,a4,.L47
	mv	a5,a4
.L47:
	sw	a5,-20(s0)
	.loc 2 383 29
	lw	a5,-36(s0)
	lw	a4,20(a5)
	.loc 2 383 41
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 383 35
	sub	a5,a4,a5
	.loc 2 383 12
	lw	a4,-20(s0)
	bleu	a4,a5,.L48
	.loc 2 384 29
	lw	a5,-36(s0)
	lw	a4,20(a5)
	.loc 2 384 41
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 384 23
	sub	a5,a4,a5
	sw	a5,-20(s0)
.L48:
	.loc 2 385 25
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 2 385 12
	lw	a4,-20(s0)
	bleu	a4,a5,.L49
	.loc 2 386 23
	lw	a5,-44(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L49:
	.loc 2 388 9
	lw	a5,-44(s0)
	lw	a4,0(a5)
	.loc 2 388 15
	lw	a5,-20(s0)
	sub	a4,a4,a5
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 2 390 20
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 390 32
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 390 26
	add	a3,a4,a5
	.loc 2 390 40
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 390 48
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 390 45
	add	a5,a4,a5
	.loc 2 390 9
	lw	a2,-20(s0)
	mv	a1,a5
	mv	a0,a3
	call	memcpy
	.loc 2 391 13
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 2 391 19
	lw	a5,-20(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,8(a5)
	.loc 2 393 17
	lw	a5,-36(s0)
	lw	a4,12(a5)
	.loc 2 393 30
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 393 12
	bgeu	a4,a5,.L50
	.loc 2 394 30
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 2 394 24
	lw	a5,-36(s0)
	sw	a4,12(a5)
.L50:
	.loc 2 396 19
	lw	a5,-36(s0)
	lbu	a5,36(a5)
	.loc 2 396 12
	beq	a5,zero,.L51
	.loc 2 397 21
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 2 397 34
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 2 397 16
	bne	a4,a5,.L52
	.loc 2 398 27
	lw	a5,-36(s0)
	sw	zero,8(a5)
.L52:
	.loc 2 400 21
	lw	a5,-40(s0)
	lw	a4,12(a5)
	.loc 2 400 30
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 2 400 27
	add	a3,a4,a5
	.loc 2 400 42
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 400 50
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 400 47
	add	a5,a4,a5
	.loc 2 400 13
	lw	a2,-20(s0)
	mv	a1,a5
	mv	a0,a3
	call	memcpy
.L51:
	.loc 2 404 27
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 2 404 21
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 2 406 10
	lw	a5,-40(s0)
	lw	a4,16(a5)
	.loc 2 406 20
	lw	a5,-20(s0)
	add	a4,a4,a5
	lw	a5,-40(s0)
	sw	a4,16(a5)
	.loc 2 407 10
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 2 407 19
	lw	a5,-20(s0)
	add	a4,a4,a5
	lw	a5,-40(s0)
	sw	a4,4(a5)
.L46:
	.loc 2 379 12
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 2 380 13
	beq	a5,zero,.L55
	.loc 2 379 26
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 2 379 38
	lw	a5,-40(s0)
	lw	a5,8(a5)
	.loc 2 379 22
	bgeu	a4,a5,.L55
	.loc 2 380 17
	lw	a5,-40(s0)
	lw	a4,16(a5)
	.loc 2 380 30
	lw	a5,-40(s0)
	lw	a5,20(a5)
	.loc 2 380 13
	bltu	a4,a5,.L54
.L55:
	.loc 2 409 1
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
.LFE17:
	.size	dict_uncompressed, .-dict_uncompressed
	.section	.text.dict_flush,"ax",@progbits
	.align	1
	.type	dict_flush, @function
dict_flush:
.LFB18:
	.loc 2 417 1
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
	.loc 2 418 28
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 2 418 40
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 2 418 12
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 420 15
	lw	a5,-36(s0)
	lbu	a5,36(a5)
	.loc 2 420 8
	beq	a5,zero,.L57
	.loc 2 421 17
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 2 421 30
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 2 421 12
	bne	a4,a5,.L58
	.loc 2 422 23
	lw	a5,-36(s0)
	sw	zero,8(a5)
.L58:
	.loc 2 424 17
	lw	a5,-40(s0)
	lw	a4,12(a5)
	.loc 2 424 26
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 2 424 23
	add	a3,a4,a5
	.loc 2 424 41
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 424 53
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 2 424 47
	add	a5,a4,a5
	.loc 2 424 9
	lw	a2,-20(s0)
	mv	a1,a5
	mv	a0,a3
	call	memcpy
.L57:
	.loc 2 428 23
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 2 428 17
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 2 429 6
	lw	a5,-40(s0)
	lw	a4,16(a5)
	.loc 2 429 16
	lw	a5,-20(s0)
	add	a4,a4,a5
	lw	a5,-40(s0)
	sw	a4,16(a5)
	.loc 2 430 12
	lw	a5,-20(s0)
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
.LFE18:
	.size	dict_flush, .-dict_flush
	.section	.text.rc_reset,"ax",@progbits
	.align	1
	.type	rc_reset, @function
rc_reset:
.LFB19:
	.loc 2 439 1
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
	.loc 2 440 15
	lw	a5,-20(s0)
	li	a4,-1
	sw	a4,0(a5)
	.loc 2 441 14
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 2 442 25
	lw	a5,-20(s0)
	li	a4,5
	sw	a4,8(a5)
	.loc 2 443 1
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
.LFE19:
	.size	rc_reset, .-rc_reset
	.section	.text.rc_read_init,"ax",@progbits
	.align	1
	.type	rc_read_init, @function
rc_read_init:
.LFB20:
	.loc 2 450 1
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
	.loc 2 451 11
	j	.L62
.L65:
	.loc 2 452 14
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 2 452 27
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 2 452 12
	bne	a4,a5,.L63
	.loc 2 453 20
	li	a5,0
	j	.L64
.L63:
	.loc 2 455 23
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 2 455 30
	slli	a4,a5,8
	.loc 2 455 39
	lw	a5,-24(s0)
	lw	a3,0(a5)
	.loc 2 455 45
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 2 455 53
	addi	a1,a5,1
	lw	a2,-24(s0)
	sw	a1,4(a2)
	.loc 2 455 43
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 455 36
	add	a4,a4,a5
	.loc 2 455 18
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 2 456 13
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 456 9
	addi	a4,a5,-1
	lw	a5,-20(s0)
	sw	a4,8(a5)
.L62:
	.loc 2 451 14
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 451 32
	bne	a5,zero,.L65
	.loc 2 459 12
	li	a5,1
.L64:
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
.LFE20:
	.size	rc_read_init, .-rc_read_init
	.section	.text.rc_limit_exceeded,"ax",@progbits
	.align	1
	.type	rc_limit_exceeded, @function
rc_limit_exceeded:
.LFB21:
	.loc 2 464 1
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
	.loc 2 465 14
	lw	a5,-20(s0)
	lw	a4,16(a5)
	.loc 2 465 27
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 2 465 23
	sgtu	a5,a4,a5
	andi	a5,a5,0xff
	.loc 2 466 1
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
	.size	rc_limit_exceeded, .-rc_limit_exceeded
	.section	.text.rc_is_finished,"ax",@progbits
	.align	1
	.type	rc_is_finished, @function
rc_is_finished:
.LFB22:
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
	.loc 2 474 14
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 2 474 21
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 2 475 1
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
	.size	rc_is_finished, .-rc_is_finished
	.section	.text.rc_direct,"ax",@progbits
	.align	1
	.type	rc_direct, @function
rc_direct:
.LFB27:
	.loc 2 554 1
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
.L72:
	lw	a5,-36(s0)
	sw	a5,-24(s0)
.LBB82:
.LBB83:
	.loc 2 480 11
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 2 480 8
	li	a5,16777216
	bgeu	a4,a5,.L74
	.loc 2 481 11
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 481 19
	slli	a4,a5,8
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 2 482 23
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 2 482 30
	slli	a4,a5,8
	.loc 2 482 40
	lw	a5,-24(s0)
	lw	a3,12(a5)
	.loc 2 482 47
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 2 482 55
	addi	a1,a5,1
	lw	a2,-24(s0)
	sw	a1,16(a2)
	.loc 2 482 44
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 482 36
	add	a4,a4,a5
	.loc 2 482 18
	lw	a5,-24(s0)
	sw	a4,4(a5)
.L74:
	.loc 2 484 1
	nop
.LBE83:
.LBE82:
	.loc 2 559 11
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 559 19
	srli	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 2 560 11
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 2 560 23
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 560 18
	sub	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 2 561 33
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 2 561 28
	srai	a5,a5,31
	.loc 2 561 14
	sw	a5,-20(s0)
	.loc 2 562 11
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 2 562 23
	lw	a5,-36(s0)
	lw	a3,0(a5)
	.loc 2 562 31
	lw	a5,-20(s0)
	and	a5,a3,a5
	.loc 2 562 18
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 2 563 24
	lw	a5,-40(s0)
	lw	a5,0(a5)
	slli	a4,a5,1
	.loc 2 563 30
	lw	a5,-20(s0)
	add	a5,a4,a5
	addi	a4,a5,1
	.loc 2 563 15
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 2 564 22 discriminator 1
	lw	a5,-44(s0)
	addi	a5,a5,-1
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	bne	a5,zero,.L72
	.loc 2 565 1
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
.LFE27:
	.size	rc_direct, .-rc_direct
	.section	.text.lzma_literal_probs,"ax",@progbits
	.align	1
	.type	lzma_literal_probs, @function
lzma_literal_probs:
.LFB28:
	.loc 2 573 1
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
	.loc 2 574 35
	lw	a5,-36(s0)
	addi	a5,a5,24
	.loc 2 574 26
	li	a1,0
	mv	a0,a5
	call	dict_get
	sw	a0,-20(s0)
	.loc 2 575 45
	lw	a5,-36(s0)
	lw	a5,104(a5)
	.loc 2 575 36
	li	a4,8
	sub	a5,a4,a5
	.loc 2 575 14
	lw	a4,-20(s0)
	srl	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 576 29
	lw	a5,-36(s0)
	lw	a4,32(a5)
	.loc 2 576 43
	lw	a5,-36(s0)
	lw	a5,108(a5)
	.loc 2 576 34
	and	a4,a4,a5
	.loc 2 576 72
	lw	a5,-36(s0)
	lw	a5,104(a5)
	.loc 2 576 14
	sll	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 577 32
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a4,a4,a5
	.loc 2 577 12
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,9
	li	a4,4096
	addi	a4,a4,-288
	add	a5,a5,a4
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 2 578 1
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
	.size	lzma_literal_probs, .-lzma_literal_probs
	.section	.text.lzma_literal,"ax",@progbits
	.align	1
	.type	lzma_literal, @function
lzma_literal:
.LFB29:
	.loc 2 582 1
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
	.loc 2 590 13
	lw	a0,-100(s0)
	call	lzma_literal_probs
	sw	a0,-32(s0)
	.loc 2 592 9
	lw	a5,-100(s0)
	lbu	a5,96(a5)
	mv	a0,a5
	call	lzma_state_is_literal
	mv	a5,a0
	.loc 2 592 8 discriminator 1
	beq	a5,zero,.L78
	.loc 2 593 18
	lw	a5,-100(s0)
	sw	a5,-52(s0)
	lw	a5,-32(s0)
	sw	a5,-48(s0)
	li	a5,256
	sw	a5,-44(s0)
.LBB84:
.LBB85:
	.loc 2 522 14
	li	a5,1
	sw	a5,-56(s0)
.L85:
	.loc 2 525 30
	lw	a5,-56(s0)
	slli	a5,a5,1
	.loc 2 525 13
	lw	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,-52(s0)
	sw	a4,-60(s0)
	sw	a5,-64(s0)
	lw	a5,-60(s0)
	sw	a5,-68(s0)
.LBB86:
.LBB87:
.LBB88:
.LBB89:
	.loc 2 480 11
	lw	a5,-68(s0)
	lw	a4,0(a5)
	.loc 2 480 8
	li	a5,16777216
	bgeu	a4,a5,.L97
	.loc 2 481 11
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 2 481 19
	slli	a4,a5,8
	lw	a5,-68(s0)
	sw	a4,0(a5)
	.loc 2 482 23
	lw	a5,-68(s0)
	lw	a5,4(a5)
	.loc 2 482 30
	slli	a4,a5,8
	.loc 2 482 40
	lw	a5,-68(s0)
	lw	a3,12(a5)
	.loc 2 482 47
	lw	a5,-68(s0)
	lw	a5,16(a5)
	.loc 2 482 55
	addi	a1,a5,1
	lw	a2,-68(s0)
	sw	a1,16(a2)
	.loc 2 482 44
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 482 36
	add	a4,a4,a5
	.loc 2 482 18
	lw	a5,-68(s0)
	sw	a4,4(a5)
.L97:
	.loc 2 484 1
	nop
.LBE89:
.LBE88:
	.loc 2 503 16
	lw	a5,-60(s0)
	lw	a5,0(a5)
	.loc 2 503 24
	srli	a5,a5,11
	.loc 2 503 33
	lw	a4,-64(s0)
	lhu	a4,0(a4)
	.loc 2 503 11
	mul	a5,a5,a4
	sw	a5,-72(s0)
	.loc 2 504 11
	lw	a5,-60(s0)
	lw	a5,4(a5)
	.loc 2 504 8
	lw	a4,-72(s0)
	bleu	a4,a5,.L80
	.loc 2 505 19
	lw	a5,-60(s0)
	lw	a4,-72(s0)
	sw	a4,0(a5)
	.loc 2 506 9
	lw	a5,-64(s0)
	lhu	a4,0(a5)
	.loc 2 506 31
	lw	a5,-64(s0)
	lhu	a5,0(a5)
	mv	a3,a5
	.loc 2 506 29
	li	a5,4096
	addi	a5,a5,-2048
	sub	a5,a5,a3
	.loc 2 506 38
	srai	a5,a5,5
	.loc 2 506 15
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-64(s0)
	sh	a4,0(a5)
	.loc 2 507 13
	sw	zero,-76(s0)
	j	.L81
.L80:
	.loc 2 509 11
	lw	a5,-60(s0)
	lw	a4,0(a5)
	.loc 2 509 19
	lw	a5,-72(s0)
	sub	a4,a4,a5
	lw	a5,-60(s0)
	sw	a4,0(a5)
	.loc 2 510 11
	lw	a5,-60(s0)
	lw	a4,4(a5)
	.loc 2 510 18
	lw	a5,-72(s0)
	sub	a4,a4,a5
	lw	a5,-60(s0)
	sw	a4,4(a5)
	.loc 2 511 9
	lw	a5,-64(s0)
	lhu	a4,0(a5)
	.loc 2 511 18
	lw	a5,-64(s0)
	lhu	a5,0(a5)
	.loc 2 511 15
	srli	a5,a5,5
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-64(s0)
	sh	a4,0(a5)
	.loc 2 512 13
	li	a5,1
	sw	a5,-76(s0)
.L81:
	.loc 2 515 12
	lw	a5,-76(s0)
.LBE87:
.LBE86:
	.loc 2 525 12 discriminator 1
	beq	a5,zero,.L83
	.loc 2 526 30
	lw	a5,-56(s0)
	slli	a5,a5,1
	.loc 2 526 20
	addi	a5,a5,1
	sw	a5,-56(s0)
	j	.L84
.L83:
	.loc 2 528 20
	lw	a5,-56(s0)
	slli	a5,a5,1
	sw	a5,-56(s0)
.L84:
	.loc 2 529 21
	lw	a4,-44(s0)
	lw	a5,-56(s0)
	bgtu	a4,a5,.L85
	.loc 2 531 12
	lw	a5,-56(s0)
.LBE85:
.LBE84:
	.loc 2 593 18
	sw	a5,-20(s0)
	j	.L87
.L78:
	.loc 2 595 16
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 596 31
	lw	a5,-100(s0)
	addi	a4,a5,24
	.loc 2 596 22
	lw	a5,-100(s0)
	lw	a5,80(a5)
	mv	a1,a5
	mv	a0,a4
	call	dict_get
	mv	a5,a0
	.loc 2 596 20 discriminator 1
	slli	a5,a5,1
	sw	a5,-24(s0)
	.loc 2 597 16
	li	a5,256
	sw	a5,-28(s0)
.L94:
	.loc 2 600 23
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	and	a5,a4,a5
	sw	a5,-36(s0)
	.loc 2 601 24
	lw	a5,-24(s0)
	slli	a5,a5,1
	sw	a5,-24(s0)
	.loc 2 602 24
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	.loc 2 602 15
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 2 604 17
	lw	a4,-100(s0)
	.loc 2 604 38
	lw	a5,-40(s0)
	slli	a5,a5,1
	.loc 2 604 17
	lw	a3,-32(s0)
	add	a5,a3,a5
	sw	a4,-80(s0)
	sw	a5,-84(s0)
	lw	a5,-80(s0)
	sw	a5,-88(s0)
.LBB90:
.LBB91:
.LBB92:
.LBB93:
	.loc 2 480 11
	lw	a5,-88(s0)
	lw	a4,0(a5)
	.loc 2 480 8
	li	a5,16777216
	bgeu	a4,a5,.L98
	.loc 2 481 11
	lw	a5,-88(s0)
	lw	a5,0(a5)
	.loc 2 481 19
	slli	a4,a5,8
	lw	a5,-88(s0)
	sw	a4,0(a5)
	.loc 2 482 23
	lw	a5,-88(s0)
	lw	a5,4(a5)
	.loc 2 482 30
	slli	a4,a5,8
	.loc 2 482 40
	lw	a5,-88(s0)
	lw	a3,12(a5)
	.loc 2 482 47
	lw	a5,-88(s0)
	lw	a5,16(a5)
	.loc 2 482 55
	addi	a1,a5,1
	lw	a2,-88(s0)
	sw	a1,16(a2)
	.loc 2 482 44
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 482 36
	add	a4,a4,a5
	.loc 2 482 18
	lw	a5,-88(s0)
	sw	a4,4(a5)
.L98:
	.loc 2 484 1
	nop
.LBE93:
.LBE92:
	.loc 2 503 16
	lw	a5,-80(s0)
	lw	a5,0(a5)
	.loc 2 503 24
	srli	a5,a5,11
	.loc 2 503 33
	lw	a4,-84(s0)
	lhu	a4,0(a4)
	.loc 2 503 11
	mul	a5,a5,a4
	sw	a5,-92(s0)
	.loc 2 504 11
	lw	a5,-80(s0)
	lw	a5,4(a5)
	.loc 2 504 8
	lw	a4,-92(s0)
	bleu	a4,a5,.L89
	.loc 2 505 19
	lw	a5,-80(s0)
	lw	a4,-92(s0)
	sw	a4,0(a5)
	.loc 2 506 9
	lw	a5,-84(s0)
	lhu	a4,0(a5)
	.loc 2 506 31
	lw	a5,-84(s0)
	lhu	a5,0(a5)
	mv	a3,a5
	.loc 2 506 29
	li	a5,4096
	addi	a5,a5,-2048
	sub	a5,a5,a3
	.loc 2 506 38
	srai	a5,a5,5
	.loc 2 506 15
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-84(s0)
	sh	a4,0(a5)
	.loc 2 507 13
	sw	zero,-96(s0)
	j	.L90
.L89:
	.loc 2 509 11
	lw	a5,-80(s0)
	lw	a4,0(a5)
	.loc 2 509 19
	lw	a5,-92(s0)
	sub	a4,a4,a5
	lw	a5,-80(s0)
	sw	a4,0(a5)
	.loc 2 510 11
	lw	a5,-80(s0)
	lw	a4,4(a5)
	.loc 2 510 18
	lw	a5,-92(s0)
	sub	a4,a4,a5
	lw	a5,-80(s0)
	sw	a4,4(a5)
	.loc 2 511 9
	lw	a5,-84(s0)
	lhu	a4,0(a5)
	.loc 2 511 18
	lw	a5,-84(s0)
	lhu	a5,0(a5)
	.loc 2 511 15
	srli	a5,a5,5
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-84(s0)
	sh	a4,0(a5)
	.loc 2 512 13
	li	a5,1
	sw	a5,-96(s0)
.L90:
	.loc 2 515 12
	lw	a5,-96(s0)
.LBE91:
.LBE90:
	.loc 2 604 16 discriminator 1
	beq	a5,zero,.L92
	.loc 2 605 34
	lw	a5,-20(s0)
	slli	a5,a5,1
	.loc 2 605 24
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 2 606 24
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	and	a5,a4,a5
	sw	a5,-28(s0)
	j	.L93
.L92:
	.loc 2 608 24
	lw	a5,-20(s0)
	slli	a5,a5,1
	sw	a5,-20(s0)
	.loc 2 609 27
	lw	a5,-36(s0)
	not	a5,a5
	.loc 2 609 24
	lw	a4,-28(s0)
	and	a5,a4,a5
	sw	a5,-28(s0)
.L93:
	.loc 2 611 25
	lw	a4,-20(s0)
	li	a5,255
	bleu	a4,a5,.L94
.L87:
	.loc 2 614 5
	lw	a5,-100(s0)
	addi	a5,a5,24
	lw	a4,-20(s0)
	andi	a4,a4,0xff
	mv	a1,a4
	mv	a0,a5
	call	dict_put
	.loc 2 615 5
	lw	a5,-100(s0)
	addi	a5,a5,96
	mv	a0,a5
	call	lzma_state_literal
	.loc 2 616 1
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
.LFE29:
	.size	lzma_literal, .-lzma_literal
	.section	.text.lzma_len,"ax",@progbits
	.align	1
	.type	lzma_len, @function
lzma_len:
.LFB30:
	.loc 2 621 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-116(s0)
	sw	a1,-120(s0)
	sw	a2,-124(s0)
	.loc 2 625 10
	lw	a4,-116(s0)
	lw	a5,-120(s0)
	sw	a4,-28(s0)
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	sw	a5,-36(s0)
.LBB94:
.LBB95:
.LBB96:
.LBB97:
	.loc 2 480 11
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 480 8
	li	a5,16777216
	bgeu	a4,a5,.L122
	.loc 2 481 11
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 481 19
	slli	a4,a5,8
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 2 482 23
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 2 482 30
	slli	a4,a5,8
	.loc 2 482 40
	lw	a5,-36(s0)
	lw	a3,12(a5)
	.loc 2 482 47
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 2 482 55
	addi	a1,a5,1
	lw	a2,-36(s0)
	sw	a1,16(a2)
	.loc 2 482 44
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 482 36
	add	a4,a4,a5
	.loc 2 482 18
	lw	a5,-36(s0)
	sw	a4,4(a5)
.L122:
	.loc 2 484 1
	nop
.LBE97:
.LBE96:
	.loc 2 503 16
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 2 503 24
	srli	a5,a5,11
	.loc 2 503 33
	lw	a4,-32(s0)
	lhu	a4,0(a4)
	.loc 2 503 11
	mul	a5,a5,a4
	sw	a5,-40(s0)
	.loc 2 504 11
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 2 504 8
	lw	a4,-40(s0)
	bleu	a4,a5,.L101
	.loc 2 505 19
	lw	a5,-28(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 2 506 9
	lw	a5,-32(s0)
	lhu	a4,0(a5)
	.loc 2 506 31
	lw	a5,-32(s0)
	lhu	a5,0(a5)
	mv	a3,a5
	.loc 2 506 29
	li	a5,4096
	addi	a5,a5,-2048
	sub	a5,a5,a3
	.loc 2 506 38
	srai	a5,a5,5
	.loc 2 506 15
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-32(s0)
	sh	a4,0(a5)
	.loc 2 507 13
	sw	zero,-44(s0)
	j	.L102
.L101:
	.loc 2 509 11
	lw	a5,-28(s0)
	lw	a4,0(a5)
	.loc 2 509 19
	lw	a5,-40(s0)
	sub	a4,a4,a5
	lw	a5,-28(s0)
	sw	a4,0(a5)
	.loc 2 510 11
	lw	a5,-28(s0)
	lw	a4,4(a5)
	.loc 2 510 18
	lw	a5,-40(s0)
	sub	a4,a4,a5
	lw	a5,-28(s0)
	sw	a4,4(a5)
	.loc 2 511 9
	lw	a5,-32(s0)
	lhu	a4,0(a5)
	.loc 2 511 18
	lw	a5,-32(s0)
	lhu	a5,0(a5)
	.loc 2 511 15
	srli	a5,a5,5
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-32(s0)
	sh	a4,0(a5)
	.loc 2 512 13
	li	a5,1
	sw	a5,-44(s0)
.L102:
	.loc 2 515 12
	lw	a5,-44(s0)
.LBE95:
.LBE94:
	.loc 2 625 8 discriminator 1
	bne	a5,zero,.L104
	.loc 2 626 15
	lw	a5,-124(s0)
	slli	a5,a5,4
	lw	a4,-120(s0)
	add	a5,a4,a5
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 2 627 15
	li	a5,8
	sw	a5,-24(s0)
	.loc 2 628 21
	lw	a5,-116(s0)
	li	a4,2
	sw	a4,100(a5)
	j	.L105
.L104:
	.loc 2 630 14
	lw	a4,-116(s0)
	lw	a5,-120(s0)
	addi	a5,a5,2
	sw	a4,-48(s0)
	sw	a5,-52(s0)
	lw	a5,-48(s0)
	sw	a5,-56(s0)
.LBB98:
.LBB99:
.LBB100:
.LBB101:
	.loc 2 480 11
	lw	a5,-56(s0)
	lw	a4,0(a5)
	.loc 2 480 8
	li	a5,16777216
	bgeu	a4,a5,.L123
	.loc 2 481 11
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 2 481 19
	slli	a4,a5,8
	lw	a5,-56(s0)
	sw	a4,0(a5)
	.loc 2 482 23
	lw	a5,-56(s0)
	lw	a5,4(a5)
	.loc 2 482 30
	slli	a4,a5,8
	.loc 2 482 40
	lw	a5,-56(s0)
	lw	a3,12(a5)
	.loc 2 482 47
	lw	a5,-56(s0)
	lw	a5,16(a5)
	.loc 2 482 55
	addi	a1,a5,1
	lw	a2,-56(s0)
	sw	a1,16(a2)
	.loc 2 482 44
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 482 36
	add	a4,a4,a5
	.loc 2 482 18
	lw	a5,-56(s0)
	sw	a4,4(a5)
.L123:
	.loc 2 484 1
	nop
.LBE101:
.LBE100:
	.loc 2 503 16
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 2 503 24
	srli	a5,a5,11
	.loc 2 503 33
	lw	a4,-52(s0)
	lhu	a4,0(a4)
	.loc 2 503 11
	mul	a5,a5,a4
	sw	a5,-60(s0)
	.loc 2 504 11
	lw	a5,-48(s0)
	lw	a5,4(a5)
	.loc 2 504 8
	lw	a4,-60(s0)
	bleu	a4,a5,.L107
	.loc 2 505 19
	lw	a5,-48(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	.loc 2 506 9
	lw	a5,-52(s0)
	lhu	a4,0(a5)
	.loc 2 506 31
	lw	a5,-52(s0)
	lhu	a5,0(a5)
	mv	a3,a5
	.loc 2 506 29
	li	a5,4096
	addi	a5,a5,-2048
	sub	a5,a5,a3
	.loc 2 506 38
	srai	a5,a5,5
	.loc 2 506 15
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-52(s0)
	sh	a4,0(a5)
	.loc 2 507 13
	sw	zero,-64(s0)
	j	.L108
.L107:
	.loc 2 509 11
	lw	a5,-48(s0)
	lw	a4,0(a5)
	.loc 2 509 19
	lw	a5,-60(s0)
	sub	a4,a4,a5
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 2 510 11
	lw	a5,-48(s0)
	lw	a4,4(a5)
	.loc 2 510 18
	lw	a5,-60(s0)
	sub	a4,a4,a5
	lw	a5,-48(s0)
	sw	a4,4(a5)
	.loc 2 511 9
	lw	a5,-52(s0)
	lhu	a4,0(a5)
	.loc 2 511 18
	lw	a5,-52(s0)
	lhu	a5,0(a5)
	.loc 2 511 15
	srli	a5,a5,5
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-52(s0)
	sh	a4,0(a5)
	.loc 2 512 13
	li	a5,1
	sw	a5,-64(s0)
.L108:
	.loc 2 515 12
	lw	a5,-64(s0)
.LBE99:
.LBE98:
	.loc 2 630 12 discriminator 1
	bne	a5,zero,.L110
	.loc 2 631 19
	lw	a5,-124(s0)
	addi	a5,a5,16
	slli	a5,a5,4
	lw	a4,-120(s0)
	add	a5,a4,a5
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 2 632 19
	li	a5,8
	sw	a5,-24(s0)
	.loc 2 633 25
	lw	a5,-116(s0)
	li	a4,10
	sw	a4,100(a5)
	j	.L105
.L110:
	.loc 2 635 19
	lw	a5,-120(s0)
	addi	a5,a5,516
	sw	a5,-20(s0)
	.loc 2 636 19
	li	a5,256
	sw	a5,-24(s0)
	.loc 2 637 25
	lw	a5,-116(s0)
	li	a4,18
	sw	a4,100(a5)
.L105:
	.loc 2 642 20
	lw	a5,-116(s0)
	sw	a5,-68(s0)
	lw	a5,-20(s0)
	sw	a5,-72(s0)
	lw	a5,-24(s0)
	sw	a5,-76(s0)
.LBB102:
.LBB103:
	.loc 2 522 14
	li	a5,1
	sw	a5,-80(s0)
.L117:
	.loc 2 525 30
	lw	a5,-80(s0)
	slli	a5,a5,1
	.loc 2 525 13
	lw	a4,-72(s0)
	add	a5,a4,a5
	lw	a4,-68(s0)
	sw	a4,-84(s0)
	sw	a5,-88(s0)
	lw	a5,-84(s0)
	sw	a5,-92(s0)
.LBB104:
.LBB105:
.LBB106:
.LBB107:
	.loc 2 480 11
	lw	a5,-92(s0)
	lw	a4,0(a5)
	.loc 2 480 8
	li	a5,16777216
	bgeu	a4,a5,.L124
	.loc 2 481 11
	lw	a5,-92(s0)
	lw	a5,0(a5)
	.loc 2 481 19
	slli	a4,a5,8
	lw	a5,-92(s0)
	sw	a4,0(a5)
	.loc 2 482 23
	lw	a5,-92(s0)
	lw	a5,4(a5)
	.loc 2 482 30
	slli	a4,a5,8
	.loc 2 482 40
	lw	a5,-92(s0)
	lw	a3,12(a5)
	.loc 2 482 47
	lw	a5,-92(s0)
	lw	a5,16(a5)
	.loc 2 482 55
	addi	a1,a5,1
	lw	a2,-92(s0)
	sw	a1,16(a2)
	.loc 2 482 44
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 482 36
	add	a4,a4,a5
	.loc 2 482 18
	lw	a5,-92(s0)
	sw	a4,4(a5)
.L124:
	.loc 2 484 1
	nop
.LBE107:
.LBE106:
	.loc 2 503 16
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 2 503 24
	srli	a5,a5,11
	.loc 2 503 33
	lw	a4,-88(s0)
	lhu	a4,0(a4)
	.loc 2 503 11
	mul	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 504 11
	lw	a5,-84(s0)
	lw	a5,4(a5)
	.loc 2 504 8
	lw	a4,-96(s0)
	bleu	a4,a5,.L112
	.loc 2 505 19
	lw	a5,-84(s0)
	lw	a4,-96(s0)
	sw	a4,0(a5)
	.loc 2 506 9
	lw	a5,-88(s0)
	lhu	a4,0(a5)
	.loc 2 506 31
	lw	a5,-88(s0)
	lhu	a5,0(a5)
	mv	a3,a5
	.loc 2 506 29
	li	a5,4096
	addi	a5,a5,-2048
	sub	a5,a5,a3
	.loc 2 506 38
	srai	a5,a5,5
	.loc 2 506 15
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-88(s0)
	sh	a4,0(a5)
	.loc 2 507 13
	sw	zero,-100(s0)
	j	.L113
.L112:
	.loc 2 509 11
	lw	a5,-84(s0)
	lw	a4,0(a5)
	.loc 2 509 19
	lw	a5,-96(s0)
	sub	a4,a4,a5
	lw	a5,-84(s0)
	sw	a4,0(a5)
	.loc 2 510 11
	lw	a5,-84(s0)
	lw	a4,4(a5)
	.loc 2 510 18
	lw	a5,-96(s0)
	sub	a4,a4,a5
	lw	a5,-84(s0)
	sw	a4,4(a5)
	.loc 2 511 9
	lw	a5,-88(s0)
	lhu	a4,0(a5)
	.loc 2 511 18
	lw	a5,-88(s0)
	lhu	a5,0(a5)
	.loc 2 511 15
	srli	a5,a5,5
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-88(s0)
	sh	a4,0(a5)
	.loc 2 512 13
	li	a5,1
	sw	a5,-100(s0)
.L113:
	.loc 2 515 12
	lw	a5,-100(s0)
.LBE105:
.LBE104:
	.loc 2 525 12 discriminator 1
	beq	a5,zero,.L115
	.loc 2 526 30
	lw	a5,-80(s0)
	slli	a5,a5,1
	.loc 2 526 20
	addi	a5,a5,1
	sw	a5,-80(s0)
	j	.L116
.L115:
	.loc 2 528 20
	lw	a5,-80(s0)
	slli	a5,a5,1
	sw	a5,-80(s0)
.L116:
	.loc 2 529 21
	lw	a4,-76(s0)
	lw	a5,-80(s0)
	bgtu	a4,a5,.L117
	.loc 2 531 12
	lw	a4,-80(s0)
.LBE103:
.LBE102:
	.loc 2 642 53 discriminator 1
	lw	a5,-24(s0)
	sub	a4,a4,a5
	.loc 2 642 12 discriminator 1
	lw	a5,-116(s0)
	lw	a5,100(a5)
	.loc 2 642 17 discriminator 1
	add	a4,a4,a5
	lw	a5,-116(s0)
	sw	a4,100(a5)
	.loc 2 643 1
	nop
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	lzma_len, .-lzma_len
	.section	.text.lzma_match,"ax",@progbits
	.align	1
	.type	lzma_match, @function
lzma_match:
.LFB31:
	.loc 2 647 1
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sw	ra,172(sp)
	sw	s0,168(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	sw	a0,-164(s0)
	sw	a1,-168(s0)
	.loc 2 652 5
	lw	a5,-164(s0)
	addi	a5,a5,96
	mv	a0,a5
	call	lzma_state_match
	.loc 2 654 27
	lw	a5,-164(s0)
	lw	a4,88(a5)
	.loc 2 654 18
	lw	a5,-164(s0)
	sw	a4,92(a5)
	.loc 2 655 27
	lw	a5,-164(s0)
	lw	a4,84(a5)
	.loc 2 655 18
	lw	a5,-164(s0)
	sw	a4,88(a5)
	.loc 2 656 27
	lw	a5,-164(s0)
	lw	a4,80(a5)
	.loc 2 656 18
	lw	a5,-164(s0)
	sw	a4,84(a5)
	.loc 2 658 5
	lw	a5,-164(s0)
	addi	a5,a5,1752
	lw	a2,-168(s0)
	mv	a1,a5
	lw	a0,-164(s0)
	call	lzma_len
	.loc 2 660 31
	lw	a5,-164(s0)
	lw	a5,100(a5)
	mv	a0,a5
	call	lzma_get_dist_state
	mv	a5,a0
	.loc 2 660 11 discriminator 1
	slli	a5,a5,7
	addi	a5,a5,976
	lw	a4,-164(s0)
	add	a5,a4,a5
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 2 661 17
	lw	a5,-164(s0)
	sw	a5,-32(s0)
	lw	a5,-20(s0)
	sw	a5,-36(s0)
	li	a5,64
	sw	a5,-40(s0)
.LBB108:
.LBB109:
	.loc 2 522 14
	li	a5,1
	sw	a5,-44(s0)
.L132:
	.loc 2 525 30
	lw	a5,-44(s0)
	slli	a5,a5,1
	.loc 2 525 13
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,-48(s0)
	sw	a5,-52(s0)
	lw	a5,-48(s0)
	sw	a5,-56(s0)
.LBB110:
.LBB111:
.LBB112:
.LBB113:
	.loc 2 480 11
	lw	a5,-56(s0)
	lw	a4,0(a5)
	.loc 2 480 8
	li	a5,16777216
	bgeu	a4,a5,.L154
	.loc 2 481 11
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 2 481 19
	slli	a4,a5,8
	lw	a5,-56(s0)
	sw	a4,0(a5)
	.loc 2 482 23
	lw	a5,-56(s0)
	lw	a5,4(a5)
	.loc 2 482 30
	slli	a4,a5,8
	.loc 2 482 40
	lw	a5,-56(s0)
	lw	a3,12(a5)
	.loc 2 482 47
	lw	a5,-56(s0)
	lw	a5,16(a5)
	.loc 2 482 55
	addi	a1,a5,1
	lw	a2,-56(s0)
	sw	a1,16(a2)
	.loc 2 482 44
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 482 36
	add	a4,a4,a5
	.loc 2 482 18
	lw	a5,-56(s0)
	sw	a4,4(a5)
.L154:
	.loc 2 484 1
	nop
.LBE113:
.LBE112:
	.loc 2 503 16
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 2 503 24
	srli	a5,a5,11
	.loc 2 503 33
	lw	a4,-52(s0)
	lhu	a4,0(a4)
	.loc 2 503 11
	mul	a5,a5,a4
	sw	a5,-60(s0)
	.loc 2 504 11
	lw	a5,-48(s0)
	lw	a5,4(a5)
	.loc 2 504 8
	lw	a4,-60(s0)
	bleu	a4,a5,.L127
	.loc 2 505 19
	lw	a5,-48(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	.loc 2 506 9
	lw	a5,-52(s0)
	lhu	a4,0(a5)
	.loc 2 506 31
	lw	a5,-52(s0)
	lhu	a5,0(a5)
	mv	a3,a5
	.loc 2 506 29
	li	a5,4096
	addi	a5,a5,-2048
	sub	a5,a5,a3
	.loc 2 506 38
	srai	a5,a5,5
	.loc 2 506 15
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-52(s0)
	sh	a4,0(a5)
	.loc 2 507 13
	sw	zero,-64(s0)
	j	.L128
.L127:
	.loc 2 509 11
	lw	a5,-48(s0)
	lw	a4,0(a5)
	.loc 2 509 19
	lw	a5,-60(s0)
	sub	a4,a4,a5
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 2 510 11
	lw	a5,-48(s0)
	lw	a4,4(a5)
	.loc 2 510 18
	lw	a5,-60(s0)
	sub	a4,a4,a5
	lw	a5,-48(s0)
	sw	a4,4(a5)
	.loc 2 511 9
	lw	a5,-52(s0)
	lhu	a4,0(a5)
	.loc 2 511 18
	lw	a5,-52(s0)
	lhu	a5,0(a5)
	.loc 2 511 15
	srli	a5,a5,5
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-52(s0)
	sh	a4,0(a5)
	.loc 2 512 13
	li	a5,1
	sw	a5,-64(s0)
.L128:
	.loc 2 515 12
	lw	a5,-64(s0)
.LBE111:
.LBE110:
	.loc 2 525 12 discriminator 1
	beq	a5,zero,.L130
	.loc 2 526 30
	lw	a5,-44(s0)
	slli	a5,a5,1
	.loc 2 526 20
	addi	a5,a5,1
	sw	a5,-44(s0)
	j	.L131
.L130:
	.loc 2 528 20
	lw	a5,-44(s0)
	slli	a5,a5,1
	sw	a5,-44(s0)
.L131:
	.loc 2 529 21
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	bgtu	a4,a5,.L132
	.loc 2 531 12
	lw	a5,-44(s0)
.LBE109:
.LBE108:
	.loc 2 661 15 discriminator 1
	addi	a5,a5,-64
	sw	a5,-24(s0)
	.loc 2 663 8
	lw	a4,-24(s0)
	li	a5,3
	bgtu	a4,a5,.L134
	.loc 2 664 22
	lw	a5,-164(s0)
	lw	a4,-24(s0)
	sw	a4,80(a5)
	.loc 2 682 1
	j	.L157
.L134:
	.loc 2 666 28
	lw	a5,-24(s0)
	srli	a5,a5,1
	.loc 2 666 15
	addi	a5,a5,-1
	sw	a5,-28(s0)
	.loc 2 667 39
	lw	a5,-24(s0)
	andi	a5,a5,1
	.loc 2 667 26
	addi	a4,a5,2
	.loc 2 667 22
	lw	a5,-164(s0)
	sw	a4,80(a5)
	.loc 2 669 12
	lw	a4,-24(s0)
	li	a5,13
	bgtu	a4,a5,.L136
	.loc 2 670 20
	lw	a5,-164(s0)
	lw	a4,80(a5)
	.loc 2 670 26
	lw	a5,-28(s0)
	sll	a4,a4,a5
	lw	a5,-164(s0)
	sw	a4,80(a5)
	.loc 2 671 21
	lw	a5,-164(s0)
	addi	a4,a5,1492
	.loc 2 671 51
	lw	a5,-164(s0)
	lw	a3,80(a5)
	.loc 2 672 21
	lw	a5,-24(s0)
	sub	a5,a3,a5
	.loc 2 672 33
	addi	a5,a5,-1
	slli	a5,a5,1
	.loc 2 671 19
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 673 13
	lw	a4,-164(s0)
	lw	a5,-164(s0)
	addi	a5,a5,80
	sw	a4,-68(s0)
	lw	a4,-20(s0)
	sw	a4,-72(s0)
	sw	a5,-76(s0)
	lw	a5,-28(s0)
	sw	a5,-80(s0)
.LBB114:
.LBB115:
	.loc 2 539 14
	li	a5,1
	sw	a5,-84(s0)
	.loc 2 540 14
	sw	zero,-88(s0)
.L143:
	.loc 2 543 30
	lw	a5,-84(s0)
	slli	a5,a5,1
	.loc 2 543 13
	lw	a4,-72(s0)
	add	a5,a4,a5
	lw	a4,-68(s0)
	sw	a4,-92(s0)
	sw	a5,-96(s0)
	lw	a5,-92(s0)
	sw	a5,-100(s0)
.LBB116:
.LBB117:
.LBB118:
.LBB119:
	.loc 2 480 11
	lw	a5,-100(s0)
	lw	a4,0(a5)
	.loc 2 480 8
	li	a5,16777216
	bgeu	a4,a5,.L155
	.loc 2 481 11
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 2 481 19
	slli	a4,a5,8
	lw	a5,-100(s0)
	sw	a4,0(a5)
	.loc 2 482 23
	lw	a5,-100(s0)
	lw	a5,4(a5)
	.loc 2 482 30
	slli	a4,a5,8
	.loc 2 482 40
	lw	a5,-100(s0)
	lw	a3,12(a5)
	.loc 2 482 47
	lw	a5,-100(s0)
	lw	a5,16(a5)
	.loc 2 482 55
	addi	a1,a5,1
	lw	a2,-100(s0)
	sw	a1,16(a2)
	.loc 2 482 44
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 482 36
	add	a4,a4,a5
	.loc 2 482 18
	lw	a5,-100(s0)
	sw	a4,4(a5)
.L155:
	.loc 2 484 1
	nop
.LBE119:
.LBE118:
	.loc 2 503 16
	lw	a5,-92(s0)
	lw	a5,0(a5)
	.loc 2 503 24
	srli	a5,a5,11
	.loc 2 503 33
	lw	a4,-96(s0)
	lhu	a4,0(a4)
	.loc 2 503 11
	mul	a5,a5,a4
	sw	a5,-104(s0)
	.loc 2 504 11
	lw	a5,-92(s0)
	lw	a5,4(a5)
	.loc 2 504 8
	lw	a4,-104(s0)
	bleu	a4,a5,.L138
	.loc 2 505 19
	lw	a5,-92(s0)
	lw	a4,-104(s0)
	sw	a4,0(a5)
	.loc 2 506 9
	lw	a5,-96(s0)
	lhu	a4,0(a5)
	.loc 2 506 31
	lw	a5,-96(s0)
	lhu	a5,0(a5)
	mv	a3,a5
	.loc 2 506 29
	li	a5,4096
	addi	a5,a5,-2048
	sub	a5,a5,a3
	.loc 2 506 38
	srai	a5,a5,5
	.loc 2 506 15
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-96(s0)
	sh	a4,0(a5)
	.loc 2 507 13
	sw	zero,-108(s0)
	j	.L139
.L138:
	.loc 2 509 11
	lw	a5,-92(s0)
	lw	a4,0(a5)
	.loc 2 509 19
	lw	a5,-104(s0)
	sub	a4,a4,a5
	lw	a5,-92(s0)
	sw	a4,0(a5)
	.loc 2 510 11
	lw	a5,-92(s0)
	lw	a4,4(a5)
	.loc 2 510 18
	lw	a5,-104(s0)
	sub	a4,a4,a5
	lw	a5,-92(s0)
	sw	a4,4(a5)
	.loc 2 511 9
	lw	a5,-96(s0)
	lhu	a4,0(a5)
	.loc 2 511 18
	lw	a5,-96(s0)
	lhu	a5,0(a5)
	.loc 2 511 15
	srli	a5,a5,5
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-96(s0)
	sh	a4,0(a5)
	.loc 2 512 13
	li	a5,1
	sw	a5,-108(s0)
.L139:
	.loc 2 515 12
	lw	a5,-108(s0)
.LBE117:
.LBE116:
	.loc 2 543 12 discriminator 1
	beq	a5,zero,.L141
	.loc 2 544 30
	lw	a5,-84(s0)
	slli	a5,a5,1
	.loc 2 544 20
	addi	a5,a5,1
	sw	a5,-84(s0)
	.loc 2 545 13
	lw	a5,-76(s0)
	lw	a5,0(a5)
	.loc 2 545 24
	lw	a4,-88(s0)
	li	a3,1
	sll	a4,a3,a4
	.loc 2 545 19
	add	a4,a5,a4
	lw	a5,-76(s0)
	sw	a4,0(a5)
	j	.L142
.L141:
	.loc 2 547 20
	lw	a5,-84(s0)
	slli	a5,a5,1
	sw	a5,-84(s0)
.L142:
	.loc 2 549 18
	lw	a5,-88(s0)
	addi	a5,a5,1
	sw	a5,-88(s0)
	lw	a4,-80(s0)
	lw	a5,-88(s0)
	bgtu	a4,a5,.L143
	.loc 2 550 1
	j	.L135
.L136:
.LBE115:
.LBE114:
	.loc 2 676 13
	lw	a4,-164(s0)
	lw	a5,-164(s0)
	addi	a3,a5,80
	.loc 2 676 52
	lw	a5,-28(s0)
	addi	a5,a5,-4
	.loc 2 676 13
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	rc_direct
	.loc 2 677 20
	lw	a5,-164(s0)
	lw	a5,80(a5)
	.loc 2 677 26
	slli	a4,a5,4
	lw	a5,-164(s0)
	sw	a4,80(a5)
	.loc 2 678 13
	lw	a3,-164(s0)
	.loc 2 678 47
	lw	a5,-164(s0)
	addi	a4,a5,1720
	.loc 2 678 13
	lw	a5,-164(s0)
	addi	a5,a5,80
	sw	a3,-112(s0)
	sw	a4,-116(s0)
	sw	a5,-120(s0)
	li	a5,4
	sw	a5,-124(s0)
.LBB120:
.LBB121:
	.loc 2 539 14
	li	a5,1
	sw	a5,-128(s0)
	.loc 2 540 14
	sw	zero,-132(s0)
.L150:
	.loc 2 543 30
	lw	a5,-128(s0)
	slli	a5,a5,1
	.loc 2 543 13
	lw	a4,-116(s0)
	add	a5,a4,a5
	lw	a4,-112(s0)
	sw	a4,-136(s0)
	sw	a5,-140(s0)
	lw	a5,-136(s0)
	sw	a5,-144(s0)
.LBB122:
.LBB123:
.LBB124:
.LBB125:
	.loc 2 480 11
	lw	a5,-144(s0)
	lw	a4,0(a5)
	.loc 2 480 8
	li	a5,16777216
	bgeu	a4,a5,.L156
	.loc 2 481 11
	lw	a5,-144(s0)
	lw	a5,0(a5)
	.loc 2 481 19
	slli	a4,a5,8
	lw	a5,-144(s0)
	sw	a4,0(a5)
	.loc 2 482 23
	lw	a5,-144(s0)
	lw	a5,4(a5)
	.loc 2 482 30
	slli	a4,a5,8
	.loc 2 482 40
	lw	a5,-144(s0)
	lw	a3,12(a5)
	.loc 2 482 47
	lw	a5,-144(s0)
	lw	a5,16(a5)
	.loc 2 482 55
	addi	a1,a5,1
	lw	a2,-144(s0)
	sw	a1,16(a2)
	.loc 2 482 44
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 482 36
	add	a4,a4,a5
	.loc 2 482 18
	lw	a5,-144(s0)
	sw	a4,4(a5)
.L156:
	.loc 2 484 1
	nop
.LBE125:
.LBE124:
	.loc 2 503 16
	lw	a5,-136(s0)
	lw	a5,0(a5)
	.loc 2 503 24
	srli	a5,a5,11
	.loc 2 503 33
	lw	a4,-140(s0)
	lhu	a4,0(a4)
	.loc 2 503 11
	mul	a5,a5,a4
	sw	a5,-148(s0)
	.loc 2 504 11
	lw	a5,-136(s0)
	lw	a5,4(a5)
	.loc 2 504 8
	lw	a4,-148(s0)
	bleu	a4,a5,.L145
	.loc 2 505 19
	lw	a5,-136(s0)
	lw	a4,-148(s0)
	sw	a4,0(a5)
	.loc 2 506 9
	lw	a5,-140(s0)
	lhu	a4,0(a5)
	.loc 2 506 31
	lw	a5,-140(s0)
	lhu	a5,0(a5)
	mv	a3,a5
	.loc 2 506 29
	li	a5,4096
	addi	a5,a5,-2048
	sub	a5,a5,a3
	.loc 2 506 38
	srai	a5,a5,5
	.loc 2 506 15
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-140(s0)
	sh	a4,0(a5)
	.loc 2 507 13
	sw	zero,-152(s0)
	j	.L146
.L145:
	.loc 2 509 11
	lw	a5,-136(s0)
	lw	a4,0(a5)
	.loc 2 509 19
	lw	a5,-148(s0)
	sub	a4,a4,a5
	lw	a5,-136(s0)
	sw	a4,0(a5)
	.loc 2 510 11
	lw	a5,-136(s0)
	lw	a4,4(a5)
	.loc 2 510 18
	lw	a5,-148(s0)
	sub	a4,a4,a5
	lw	a5,-136(s0)
	sw	a4,4(a5)
	.loc 2 511 9
	lw	a5,-140(s0)
	lhu	a4,0(a5)
	.loc 2 511 18
	lw	a5,-140(s0)
	lhu	a5,0(a5)
	.loc 2 511 15
	srli	a5,a5,5
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-140(s0)
	sh	a4,0(a5)
	.loc 2 512 13
	li	a5,1
	sw	a5,-152(s0)
.L146:
	.loc 2 515 12
	lw	a5,-152(s0)
.LBE123:
.LBE122:
	.loc 2 543 12 discriminator 1
	beq	a5,zero,.L148
	.loc 2 544 30
	lw	a5,-128(s0)
	slli	a5,a5,1
	.loc 2 544 20
	addi	a5,a5,1
	sw	a5,-128(s0)
	.loc 2 545 13
	lw	a5,-120(s0)
	lw	a5,0(a5)
	.loc 2 545 24
	lw	a4,-132(s0)
	li	a3,1
	sll	a4,a3,a4
	.loc 2 545 19
	add	a4,a5,a4
	lw	a5,-120(s0)
	sw	a4,0(a5)
	j	.L149
.L148:
	.loc 2 547 20
	lw	a5,-128(s0)
	slli	a5,a5,1
	sw	a5,-128(s0)
.L149:
	.loc 2 549 18
	lw	a5,-132(s0)
	addi	a5,a5,1
	sw	a5,-132(s0)
	lw	a4,-124(s0)
	lw	a5,-132(s0)
	bgtu	a4,a5,.L150
	.loc 2 550 1
	nop
.L135:
.L157:
.LBE121:
.LBE120:
	.loc 2 682 1
	nop
	lw	ra,172(sp)
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	lzma_match, .-lzma_match
	.section	.text.lzma_rep_match,"ax",@progbits
	.align	1
	.type	lzma_rep_match, @function
lzma_rep_match:
.LFB32:
	.loc 2 689 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-116(s0)
	sw	a1,-120(s0)
	.loc 2 692 10
	lw	a4,-116(s0)
	.loc 2 692 49
	lw	a5,-116(s0)
	lbu	a5,96(a5)
	.loc 2 692 10
	addi	a5,a5,256
	slli	a5,a5,1
	lw	a3,-116(s0)
	add	a5,a3,a5
	addi	a5,a5,12
	sw	a4,-24(s0)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	sw	a5,-32(s0)
.LBB126:
.LBB127:
.LBB128:
.LBB129:
	.loc 2 480 11
	lw	a5,-32(s0)
	lw	a4,0(a5)
	.loc 2 480 8
	li	a5,16777216
	bgeu	a4,a5,.L186
	.loc 2 481 11
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 2 481 19
	slli	a4,a5,8
	lw	a5,-32(s0)
	sw	a4,0(a5)
	.loc 2 482 23
	lw	a5,-32(s0)
	lw	a5,4(a5)
	.loc 2 482 30
	slli	a4,a5,8
	.loc 2 482 40
	lw	a5,-32(s0)
	lw	a3,12(a5)
	.loc 2 482 47
	lw	a5,-32(s0)
	lw	a5,16(a5)
	.loc 2 482 55
	addi	a1,a5,1
	lw	a2,-32(s0)
	sw	a1,16(a2)
	.loc 2 482 44
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 482 36
	add	a4,a4,a5
	.loc 2 482 18
	lw	a5,-32(s0)
	sw	a4,4(a5)
.L186:
	.loc 2 484 1
	nop
.LBE129:
.LBE128:
	.loc 2 503 16
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 503 24
	srli	a5,a5,11
	.loc 2 503 33
	lw	a4,-28(s0)
	lhu	a4,0(a4)
	.loc 2 503 11
	mul	a5,a5,a4
	sw	a5,-36(s0)
	.loc 2 504 11
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 2 504 8
	lw	a4,-36(s0)
	bleu	a4,a5,.L160
	.loc 2 505 19
	lw	a5,-24(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 2 506 9
	lw	a5,-28(s0)
	lhu	a4,0(a5)
	.loc 2 506 31
	lw	a5,-28(s0)
	lhu	a5,0(a5)
	mv	a3,a5
	.loc 2 506 29
	li	a5,4096
	addi	a5,a5,-2048
	sub	a5,a5,a3
	.loc 2 506 38
	srai	a5,a5,5
	.loc 2 506 15
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-28(s0)
	sh	a4,0(a5)
	.loc 2 507 13
	sw	zero,-40(s0)
	j	.L161
.L160:
	.loc 2 509 11
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 2 509 19
	lw	a5,-36(s0)
	sub	a4,a4,a5
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 2 510 11
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 2 510 18
	lw	a5,-36(s0)
	sub	a4,a4,a5
	lw	a5,-24(s0)
	sw	a4,4(a5)
	.loc 2 511 9
	lw	a5,-28(s0)
	lhu	a4,0(a5)
	.loc 2 511 18
	lw	a5,-28(s0)
	lhu	a5,0(a5)
	.loc 2 511 15
	srli	a5,a5,5
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-28(s0)
	sh	a4,0(a5)
	.loc 2 512 13
	li	a5,1
	sw	a5,-40(s0)
.L161:
	.loc 2 515 12
	lw	a5,-40(s0)
.LBE127:
.LBE126:
	.loc 2 692 8 discriminator 1
	bne	a5,zero,.L163
	.loc 2 693 14
	lw	a4,-116(s0)
	.loc 2 694 24
	lw	a5,-116(s0)
	lbu	a5,96(a5)
	.loc 2 693 14
	slli	a3,a5,4
	lw	a5,-120(s0)
	add	a5,a3,a5
	addi	a5,a5,296
	slli	a5,a5,1
	lw	a3,-116(s0)
	add	a5,a3,a5
	addi	a5,a5,4
	sw	a4,-44(s0)
	sw	a5,-48(s0)
	lw	a5,-44(s0)
	sw	a5,-52(s0)
.LBB130:
.LBB131:
.LBB132:
.LBB133:
	.loc 2 480 11
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 480 8
	li	a5,16777216
	bgeu	a4,a5,.L187
	.loc 2 481 11
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 481 19
	slli	a4,a5,8
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 2 482 23
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 2 482 30
	slli	a4,a5,8
	.loc 2 482 40
	lw	a5,-52(s0)
	lw	a3,12(a5)
	.loc 2 482 47
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 2 482 55
	addi	a1,a5,1
	lw	a2,-52(s0)
	sw	a1,16(a2)
	.loc 2 482 44
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 482 36
	add	a4,a4,a5
	.loc 2 482 18
	lw	a5,-52(s0)
	sw	a4,4(a5)
.L187:
	.loc 2 484 1
	nop
.LBE133:
.LBE132:
	.loc 2 503 16
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 2 503 24
	srli	a5,a5,11
	.loc 2 503 33
	lw	a4,-48(s0)
	lhu	a4,0(a4)
	.loc 2 503 11
	mul	a5,a5,a4
	sw	a5,-56(s0)
	.loc 2 504 11
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 2 504 8
	lw	a4,-56(s0)
	bleu	a4,a5,.L165
	.loc 2 505 19
	lw	a5,-44(s0)
	lw	a4,-56(s0)
	sw	a4,0(a5)
	.loc 2 506 9
	lw	a5,-48(s0)
	lhu	a4,0(a5)
	.loc 2 506 31
	lw	a5,-48(s0)
	lhu	a5,0(a5)
	mv	a3,a5
	.loc 2 506 29
	li	a5,4096
	addi	a5,a5,-2048
	sub	a5,a5,a3
	.loc 2 506 38
	srai	a5,a5,5
	.loc 2 506 15
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-48(s0)
	sh	a4,0(a5)
	.loc 2 507 13
	sw	zero,-60(s0)
	j	.L166
.L165:
	.loc 2 509 11
	lw	a5,-44(s0)
	lw	a4,0(a5)
	.loc 2 509 19
	lw	a5,-56(s0)
	sub	a4,a4,a5
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 2 510 11
	lw	a5,-44(s0)
	lw	a4,4(a5)
	.loc 2 510 18
	lw	a5,-56(s0)
	sub	a4,a4,a5
	lw	a5,-44(s0)
	sw	a4,4(a5)
	.loc 2 511 9
	lw	a5,-48(s0)
	lhu	a4,0(a5)
	.loc 2 511 18
	lw	a5,-48(s0)
	lhu	a5,0(a5)
	.loc 2 511 15
	srli	a5,a5,5
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-48(s0)
	sh	a4,0(a5)
	.loc 2 512 13
	li	a5,1
	sw	a5,-60(s0)
.L166:
	.loc 2 515 12
	lw	a5,-60(s0)
.LBE131:
.LBE130:
	.loc 2 693 12 discriminator 1
	bne	a5,zero,.L168
	.loc 2 695 13
	lw	a5,-116(s0)
	addi	a5,a5,96
	mv	a0,a5
	call	lzma_state_short_rep
	.loc 2 696 25
	lw	a5,-116(s0)
	li	a4,1
	sw	a4,100(a5)
	.loc 2 697 13
	j	.L158
.L163:
	.loc 2 700 14
	lw	a4,-116(s0)
	.loc 2 700 53
	lw	a5,-116(s0)
	lbu	a5,96(a5)
	.loc 2 700 14
	addi	a5,a5,272
	slli	a5,a5,1
	lw	a3,-116(s0)
	add	a5,a3,a5
	addi	a5,a5,4
	sw	a4,-64(s0)
	sw	a5,-68(s0)
	lw	a5,-64(s0)
	sw	a5,-72(s0)
.LBB134:
.LBB135:
.LBB136:
.LBB137:
	.loc 2 480 11
	lw	a5,-72(s0)
	lw	a4,0(a5)
	.loc 2 480 8
	li	a5,16777216
	bgeu	a4,a5,.L188
	.loc 2 481 11
	lw	a5,-72(s0)
	lw	a5,0(a5)
	.loc 2 481 19
	slli	a4,a5,8
	lw	a5,-72(s0)
	sw	a4,0(a5)
	.loc 2 482 23
	lw	a5,-72(s0)
	lw	a5,4(a5)
	.loc 2 482 30
	slli	a4,a5,8
	.loc 2 482 40
	lw	a5,-72(s0)
	lw	a3,12(a5)
	.loc 2 482 47
	lw	a5,-72(s0)
	lw	a5,16(a5)
	.loc 2 482 55
	addi	a1,a5,1
	lw	a2,-72(s0)
	sw	a1,16(a2)
	.loc 2 482 44
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 482 36
	add	a4,a4,a5
	.loc 2 482 18
	lw	a5,-72(s0)
	sw	a4,4(a5)
.L188:
	.loc 2 484 1
	nop
.LBE137:
.LBE136:
	.loc 2 503 16
	lw	a5,-64(s0)
	lw	a5,0(a5)
	.loc 2 503 24
	srli	a5,a5,11
	.loc 2 503 33
	lw	a4,-68(s0)
	lhu	a4,0(a4)
	.loc 2 503 11
	mul	a5,a5,a4
	sw	a5,-76(s0)
	.loc 2 504 11
	lw	a5,-64(s0)
	lw	a5,4(a5)
	.loc 2 504 8
	lw	a4,-76(s0)
	bleu	a4,a5,.L171
	.loc 2 505 19
	lw	a5,-64(s0)
	lw	a4,-76(s0)
	sw	a4,0(a5)
	.loc 2 506 9
	lw	a5,-68(s0)
	lhu	a4,0(a5)
	.loc 2 506 31
	lw	a5,-68(s0)
	lhu	a5,0(a5)
	mv	a3,a5
	.loc 2 506 29
	li	a5,4096
	addi	a5,a5,-2048
	sub	a5,a5,a3
	.loc 2 506 38
	srai	a5,a5,5
	.loc 2 506 15
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-68(s0)
	sh	a4,0(a5)
	.loc 2 507 13
	sw	zero,-80(s0)
	j	.L172
.L171:
	.loc 2 509 11
	lw	a5,-64(s0)
	lw	a4,0(a5)
	.loc 2 509 19
	lw	a5,-76(s0)
	sub	a4,a4,a5
	lw	a5,-64(s0)
	sw	a4,0(a5)
	.loc 2 510 11
	lw	a5,-64(s0)
	lw	a4,4(a5)
	.loc 2 510 18
	lw	a5,-76(s0)
	sub	a4,a4,a5
	lw	a5,-64(s0)
	sw	a4,4(a5)
	.loc 2 511 9
	lw	a5,-68(s0)
	lhu	a4,0(a5)
	.loc 2 511 18
	lw	a5,-68(s0)
	lhu	a5,0(a5)
	.loc 2 511 15
	srli	a5,a5,5
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-68(s0)
	sh	a4,0(a5)
	.loc 2 512 13
	li	a5,1
	sw	a5,-80(s0)
.L172:
	.loc 2 515 12
	lw	a5,-80(s0)
.LBE135:
.LBE134:
	.loc 2 700 12 discriminator 1
	bne	a5,zero,.L174
	.loc 2 701 17
	lw	a5,-116(s0)
	lw	a5,84(a5)
	sw	a5,-20(s0)
	j	.L175
.L174:
	.loc 2 703 18
	lw	a4,-116(s0)
	.loc 2 703 57
	lw	a5,-116(s0)
	lbu	a5,96(a5)
	.loc 2 703 18
	addi	a5,a5,280
	slli	a5,a5,1
	lw	a3,-116(s0)
	add	a5,a3,a5
	addi	a5,a5,12
	sw	a4,-84(s0)
	sw	a5,-88(s0)
	lw	a5,-84(s0)
	sw	a5,-92(s0)
.LBB138:
.LBB139:
.LBB140:
.LBB141:
	.loc 2 480 11
	lw	a5,-92(s0)
	lw	a4,0(a5)
	.loc 2 480 8
	li	a5,16777216
	bgeu	a4,a5,.L189
	.loc 2 481 11
	lw	a5,-92(s0)
	lw	a5,0(a5)
	.loc 2 481 19
	slli	a4,a5,8
	lw	a5,-92(s0)
	sw	a4,0(a5)
	.loc 2 482 23
	lw	a5,-92(s0)
	lw	a5,4(a5)
	.loc 2 482 30
	slli	a4,a5,8
	.loc 2 482 40
	lw	a5,-92(s0)
	lw	a3,12(a5)
	.loc 2 482 47
	lw	a5,-92(s0)
	lw	a5,16(a5)
	.loc 2 482 55
	addi	a1,a5,1
	lw	a2,-92(s0)
	sw	a1,16(a2)
	.loc 2 482 44
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 482 36
	add	a4,a4,a5
	.loc 2 482 18
	lw	a5,-92(s0)
	sw	a4,4(a5)
.L189:
	.loc 2 484 1
	nop
.LBE141:
.LBE140:
	.loc 2 503 16
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 2 503 24
	srli	a5,a5,11
	.loc 2 503 33
	lw	a4,-88(s0)
	lhu	a4,0(a4)
	.loc 2 503 11
	mul	a5,a5,a4
	sw	a5,-96(s0)
	.loc 2 504 11
	lw	a5,-84(s0)
	lw	a5,4(a5)
	.loc 2 504 8
	lw	a4,-96(s0)
	bleu	a4,a5,.L177
	.loc 2 505 19
	lw	a5,-84(s0)
	lw	a4,-96(s0)
	sw	a4,0(a5)
	.loc 2 506 9
	lw	a5,-88(s0)
	lhu	a4,0(a5)
	.loc 2 506 31
	lw	a5,-88(s0)
	lhu	a5,0(a5)
	mv	a3,a5
	.loc 2 506 29
	li	a5,4096
	addi	a5,a5,-2048
	sub	a5,a5,a3
	.loc 2 506 38
	srai	a5,a5,5
	.loc 2 506 15
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-88(s0)
	sh	a4,0(a5)
	.loc 2 507 13
	sw	zero,-100(s0)
	j	.L178
.L177:
	.loc 2 509 11
	lw	a5,-84(s0)
	lw	a4,0(a5)
	.loc 2 509 19
	lw	a5,-96(s0)
	sub	a4,a4,a5
	lw	a5,-84(s0)
	sw	a4,0(a5)
	.loc 2 510 11
	lw	a5,-84(s0)
	lw	a4,4(a5)
	.loc 2 510 18
	lw	a5,-96(s0)
	sub	a4,a4,a5
	lw	a5,-84(s0)
	sw	a4,4(a5)
	.loc 2 511 9
	lw	a5,-88(s0)
	lhu	a4,0(a5)
	.loc 2 511 18
	lw	a5,-88(s0)
	lhu	a5,0(a5)
	.loc 2 511 15
	srli	a5,a5,5
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-88(s0)
	sh	a4,0(a5)
	.loc 2 512 13
	li	a5,1
	sw	a5,-100(s0)
.L178:
	.loc 2 515 12
	lw	a5,-100(s0)
.LBE139:
.LBE138:
	.loc 2 703 16 discriminator 1
	bne	a5,zero,.L180
	.loc 2 704 21
	lw	a5,-116(s0)
	lw	a5,88(a5)
	sw	a5,-20(s0)
	j	.L181
.L180:
	.loc 2 706 21
	lw	a5,-116(s0)
	lw	a5,92(a5)
	sw	a5,-20(s0)
	.loc 2 707 39
	lw	a5,-116(s0)
	lw	a4,88(a5)
	.loc 2 707 30
	lw	a5,-116(s0)
	sw	a4,92(a5)
.L181:
	.loc 2 710 35
	lw	a5,-116(s0)
	lw	a4,84(a5)
	.loc 2 710 26
	lw	a5,-116(s0)
	sw	a4,88(a5)
.L175:
	.loc 2 713 31
	lw	a5,-116(s0)
	lw	a4,80(a5)
	.loc 2 713 22
	lw	a5,-116(s0)
	sw	a4,84(a5)
	.loc 2 714 22
	lw	a5,-116(s0)
	lw	a4,-20(s0)
	sw	a4,80(a5)
.L168:
	.loc 2 717 5
	lw	a5,-116(s0)
	addi	a5,a5,96
	mv	a0,a5
	call	lzma_state_long_rep
	.loc 2 718 5
	lw	a4,-116(s0)
	li	a5,4096
	addi	a5,a5,-1316
	add	a5,a4,a5
	lw	a2,-120(s0)
	mv	a1,a5
	lw	a0,-116(s0)
	call	lzma_len
.L158:
	.loc 2 719 1
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	lzma_rep_match, .-lzma_rep_match
	.section	.text.lzma_main,"ax",@progbits
	.align	1
	.type	lzma_main, @function
lzma_main:
.LFB33:
	.loc 2 723 1
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
	.loc 2 730 24
	lw	a5,-68(s0)
	addi	a5,a5,24
	.loc 2 730 9
	mv	a0,a5
	call	dict_has_space
	mv	a5,a0
	.loc 2 730 8 discriminator 1
	beq	a5,zero,.L192
	.loc 2 730 44 discriminator 2
	lw	a5,-68(s0)
	lw	a5,100(a5)
	.loc 2 730 34 discriminator 2
	beq	a5,zero,.L192
	.loc 2 731 9
	lw	a5,-68(s0)
	addi	a4,a5,24
	lw	a5,-68(s0)
	addi	a3,a5,100
	lw	a5,-68(s0)
	lw	a5,80(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	dict_repeat
	.loc 2 737 11
	j	.L192
.L207:
	.loc 2 738 28
	lw	a5,-68(s0)
	lw	a4,32(a5)
	.loc 2 738 42
	lw	a5,-68(s0)
	lw	a5,112(a5)
	.loc 2 738 19
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 740 14
	lw	a4,-68(s0)
	.loc 2 741 24
	lw	a5,-68(s0)
	lbu	a5,96(a5)
	.loc 2 740 14
	slli	a3,a5,4
	lw	a5,-20(s0)
	add	a5,a3,a5
	addi	a5,a5,56
	slli	a5,a5,1
	lw	a3,-68(s0)
	add	a5,a3,a5
	addi	a5,a5,4
	sw	a4,-24(s0)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	sw	a5,-32(s0)
.LBB142:
.LBB143:
.LBB144:
.LBB145:
	.loc 2 480 11
	lw	a5,-32(s0)
	lw	a4,0(a5)
	.loc 2 480 8
	li	a5,16777216
	bgeu	a4,a5,.L212
	.loc 2 481 11
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 2 481 19
	slli	a4,a5,8
	lw	a5,-32(s0)
	sw	a4,0(a5)
	.loc 2 482 23
	lw	a5,-32(s0)
	lw	a5,4(a5)
	.loc 2 482 30
	slli	a4,a5,8
	.loc 2 482 40
	lw	a5,-32(s0)
	lw	a3,12(a5)
	.loc 2 482 47
	lw	a5,-32(s0)
	lw	a5,16(a5)
	.loc 2 482 55
	addi	a1,a5,1
	lw	a2,-32(s0)
	sw	a1,16(a2)
	.loc 2 482 44
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 482 36
	add	a4,a4,a5
	.loc 2 482 18
	lw	a5,-32(s0)
	sw	a4,4(a5)
.L212:
	.loc 2 484 1
	nop
.LBE145:
.LBE144:
	.loc 2 503 16
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 503 24
	srli	a5,a5,11
	.loc 2 503 33
	lw	a4,-28(s0)
	lhu	a4,0(a4)
	.loc 2 503 11
	mul	a5,a5,a4
	sw	a5,-36(s0)
	.loc 2 504 11
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 2 504 8
	lw	a4,-36(s0)
	bleu	a4,a5,.L194
	.loc 2 505 19
	lw	a5,-24(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 2 506 9
	lw	a5,-28(s0)
	lhu	a4,0(a5)
	.loc 2 506 31
	lw	a5,-28(s0)
	lhu	a5,0(a5)
	mv	a3,a5
	.loc 2 506 29
	li	a5,4096
	addi	a5,a5,-2048
	sub	a5,a5,a3
	.loc 2 506 38
	srai	a5,a5,5
	.loc 2 506 15
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-28(s0)
	sh	a4,0(a5)
	.loc 2 507 13
	sw	zero,-40(s0)
	j	.L195
.L194:
	.loc 2 509 11
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 2 509 19
	lw	a5,-36(s0)
	sub	a4,a4,a5
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 2 510 11
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 2 510 18
	lw	a5,-36(s0)
	sub	a4,a4,a5
	lw	a5,-24(s0)
	sw	a4,4(a5)
	.loc 2 511 9
	lw	a5,-28(s0)
	lhu	a4,0(a5)
	.loc 2 511 18
	lw	a5,-28(s0)
	lhu	a5,0(a5)
	.loc 2 511 15
	srli	a5,a5,5
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-28(s0)
	sh	a4,0(a5)
	.loc 2 512 13
	li	a5,1
	sw	a5,-40(s0)
.L195:
	.loc 2 515 12
	lw	a5,-40(s0)
.LBE143:
.LBE142:
	.loc 2 740 12 discriminator 1
	bne	a5,zero,.L197
	.loc 2 742 13
	lw	a0,-68(s0)
	call	lzma_literal
	j	.L192
.L197:
	.loc 2 744 17
	lw	a4,-68(s0)
	.loc 2 744 55
	lw	a5,-68(s0)
	lbu	a5,96(a5)
	.loc 2 744 17
	addi	a5,a5,248
	slli	a5,a5,1
	lw	a3,-68(s0)
	add	a5,a3,a5
	addi	a5,a5,4
	sw	a4,-44(s0)
	sw	a5,-48(s0)
	lw	a5,-44(s0)
	sw	a5,-52(s0)
.LBB146:
.LBB147:
.LBB148:
.LBB149:
	.loc 2 480 11
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 480 8
	li	a5,16777216
	bgeu	a4,a5,.L213
	.loc 2 481 11
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 481 19
	slli	a4,a5,8
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 2 482 23
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 2 482 30
	slli	a4,a5,8
	.loc 2 482 40
	lw	a5,-52(s0)
	lw	a3,12(a5)
	.loc 2 482 47
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 2 482 55
	addi	a1,a5,1
	lw	a2,-52(s0)
	sw	a1,16(a2)
	.loc 2 482 44
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 482 36
	add	a4,a4,a5
	.loc 2 482 18
	lw	a5,-52(s0)
	sw	a4,4(a5)
.L213:
	.loc 2 484 1
	nop
.LBE149:
.LBE148:
	.loc 2 503 16
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 2 503 24
	srli	a5,a5,11
	.loc 2 503 33
	lw	a4,-48(s0)
	lhu	a4,0(a4)
	.loc 2 503 11
	mul	a5,a5,a4
	sw	a5,-56(s0)
	.loc 2 504 11
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 2 504 8
	lw	a4,-56(s0)
	bleu	a4,a5,.L200
	.loc 2 505 19
	lw	a5,-44(s0)
	lw	a4,-56(s0)
	sw	a4,0(a5)
	.loc 2 506 9
	lw	a5,-48(s0)
	lhu	a4,0(a5)
	.loc 2 506 31
	lw	a5,-48(s0)
	lhu	a5,0(a5)
	mv	a3,a5
	.loc 2 506 29
	li	a5,4096
	addi	a5,a5,-2048
	sub	a5,a5,a3
	.loc 2 506 38
	srai	a5,a5,5
	.loc 2 506 15
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-48(s0)
	sh	a4,0(a5)
	.loc 2 507 13
	sw	zero,-60(s0)
	j	.L201
.L200:
	.loc 2 509 11
	lw	a5,-44(s0)
	lw	a4,0(a5)
	.loc 2 509 19
	lw	a5,-56(s0)
	sub	a4,a4,a5
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 2 510 11
	lw	a5,-44(s0)
	lw	a4,4(a5)
	.loc 2 510 18
	lw	a5,-56(s0)
	sub	a4,a4,a5
	lw	a5,-44(s0)
	sw	a4,4(a5)
	.loc 2 511 9
	lw	a5,-48(s0)
	lhu	a4,0(a5)
	.loc 2 511 18
	lw	a5,-48(s0)
	lhu	a5,0(a5)
	.loc 2 511 15
	srli	a5,a5,5
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-48(s0)
	sh	a4,0(a5)
	.loc 2 512 13
	li	a5,1
	sw	a5,-60(s0)
.L201:
	.loc 2 515 12
	lw	a5,-60(s0)
.LBE147:
.LBE146:
	.loc 2 744 16 discriminator 1
	beq	a5,zero,.L203
	.loc 2 745 17
	lw	a1,-20(s0)
	lw	a0,-68(s0)
	call	lzma_rep_match
	j	.L204
.L203:
	.loc 2 747 17
	lw	a1,-20(s0)
	lw	a0,-68(s0)
	call	lzma_match
.L204:
	.loc 2 749 18
	lw	a5,-68(s0)
	addi	a4,a5,24
	lw	a5,-68(s0)
	addi	a3,a5,100
	lw	a5,-68(s0)
	lw	a5,80(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	dict_repeat
	mv	a5,a0
	.loc 2 749 17 discriminator 1
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 2 749 16 discriminator 1
	beq	a5,zero,.L192
	.loc 2 750 24
	li	a5,0
	j	.L205
.L192:
	.loc 2 737 27
	lw	a5,-68(s0)
	addi	a5,a5,24
	.loc 2 737 12
	mv	a0,a5
	call	dict_has_space
	mv	a5,a0
	.loc 2 737 37 discriminator 1
	beq	a5,zero,.L206
	.loc 2 737 59 discriminator 2
	lw	a5,-68(s0)
	.loc 2 737 41 discriminator 2
	mv	a0,a5
	call	rc_limit_exceeded
	mv	a5,a0
	.loc 2 737 40 discriminator 3
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 2 737 37 discriminator 3
	bne	a5,zero,.L207
.L206:
	.loc 2 758 5
	lw	a5,-68(s0)
	sw	a5,-64(s0)
.LBB150:
.LBB151:
	.loc 2 480 11
	lw	a5,-64(s0)
	lw	a4,0(a5)
	.loc 2 480 8
	li	a5,16777216
	bgeu	a4,a5,.L214
	.loc 2 481 11
	lw	a5,-64(s0)
	lw	a5,0(a5)
	.loc 2 481 19
	slli	a4,a5,8
	lw	a5,-64(s0)
	sw	a4,0(a5)
	.loc 2 482 23
	lw	a5,-64(s0)
	lw	a5,4(a5)
	.loc 2 482 30
	slli	a4,a5,8
	.loc 2 482 40
	lw	a5,-64(s0)
	lw	a3,12(a5)
	.loc 2 482 47
	lw	a5,-64(s0)
	lw	a5,16(a5)
	.loc 2 482 55
	addi	a1,a5,1
	lw	a2,-64(s0)
	sw	a1,16(a2)
	.loc 2 482 44
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 482 36
	add	a4,a4,a5
	.loc 2 482 18
	lw	a5,-64(s0)
	sw	a4,4(a5)
.L214:
	.loc 2 484 1
	nop
.LBE151:
.LBE150:
	.loc 2 760 12
	li	a5,1
.L205:
	.loc 2 761 1
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
.LFE33:
	.size	lzma_main, .-lzma_main
	.section	.text.lzma_reset,"ax",@progbits
	.align	1
	.type	lzma_reset, @function
lzma_reset:
.LFB34:
	.loc 2 768 1
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
	.loc 2 772 19
	lw	a5,-36(s0)
	sb	zero,96(a5)
	.loc 2 773 18
	lw	a5,-36(s0)
	sw	zero,80(a5)
	.loc 2 774 18
	lw	a5,-36(s0)
	sw	zero,84(a5)
	.loc 2 775 18
	lw	a5,-36(s0)
	sw	zero,88(a5)
	.loc 2 776 18
	lw	a5,-36(s0)
	sw	zero,92(a5)
	.loc 2 787 11
	lw	a5,-36(s0)
	addi	a5,a5,116
	sw	a5,-24(s0)
	.loc 2 788 12
	sw	zero,-20(s0)
	.loc 2 788 5
	j	.L216
.L217:
	.loc 2 789 14
	lw	a5,-20(s0)
	slli	a5,a5,1
	lw	a4,-24(s0)
	add	a5,a4,a5
	.loc 2 789 18
	li	a4,1024
	sh	a4,0(a5)
	.loc 2 788 48 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L216:
	.loc 2 788 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,1845
	bleu	a4,a5,.L217
	.loc 2 791 5
	lw	a5,-36(s0)
	mv	a0,a5
	call	rc_reset
	.loc 2 792 1
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
.LFE34:
	.size	lzma_reset, .-lzma_reset
	.section	.text.lzma_props,"ax",@progbits
	.align	1
	.type	lzma_props, @function
lzma_props:
.LFB35:
	.loc 2 800 1
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
	.loc 2 801 8
	lbu	a4,-21(s0)
	li	a5,224
	bleu	a4,a5,.L219
	.loc 2 802 16
	li	a5,0
	j	.L220
.L219:
	.loc 2 804 22
	lw	a5,-20(s0)
	sw	zero,112(a5)
	.loc 2 805 11
	j	.L221
.L222:
	.loc 2 806 15
	lbu	a5,-21(s0)
	addi	a5,a5,-45
	sb	a5,-21(s0)
	.loc 2 807 18
	lw	a5,-20(s0)
	lw	a5,112(a5)
	.loc 2 807 9
	addi	a4,a5,1
	lw	a5,-20(s0)
	sw	a4,112(a5)
.L221:
	.loc 2 805 18
	lbu	a4,-21(s0)
	li	a5,44
	bgtu	a4,a5,.L222
	.loc 2 810 37
	lw	a5,-20(s0)
	lw	a5,112(a5)
	.loc 2 810 27
	li	a4,1
	sll	a5,a4,a5
	.loc 2 810 48
	addi	a5,a5,-1
	mv	a4,a5
	.loc 2 810 22
	lw	a5,-20(s0)
	sw	a4,112(a5)
	.loc 2 812 30
	lw	a5,-20(s0)
	sw	zero,108(a5)
	.loc 2 813 11
	j	.L223
.L224:
	.loc 2 814 15
	lbu	a5,-21(s0)
	addi	a5,a5,-9
	sb	a5,-21(s0)
	.loc 2 815 18
	lw	a5,-20(s0)
	lw	a5,108(a5)
	.loc 2 815 9
	addi	a4,a5,1
	lw	a5,-20(s0)
	sw	a4,108(a5)
.L223:
	.loc 2 813 18
	lbu	a4,-21(s0)
	li	a5,8
	bgtu	a4,a5,.L224
	.loc 2 818 16
	lbu	a4,-21(s0)
	lw	a5,-20(s0)
	sw	a4,104(a5)
	.loc 2 820 16
	lw	a5,-20(s0)
	lw	a4,104(a5)
	.loc 2 820 29
	lw	a5,-20(s0)
	lw	a5,108(a5)
	.loc 2 820 20
	add	a4,a4,a5
	.loc 2 820 8
	li	a5,4
	bleu	a4,a5,.L225
	.loc 2 821 16
	li	a5,0
	j	.L220
.L225:
	.loc 2 823 45
	lw	a5,-20(s0)
	lw	a5,108(a5)
	.loc 2 823 35
	li	a4,1
	sll	a5,a4,a5
	.loc 2 823 64
	addi	a5,a5,-1
	mv	a4,a5
	.loc 2 823 30
	lw	a5,-20(s0)
	sw	a4,108(a5)
	.loc 2 825 5
	lw	a0,-20(s0)
	call	lzma_reset
	.loc 2 827 12
	li	a5,1
.L220:
	.loc 2 828 1
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
	.size	lzma_props, .-lzma_props
	.section	.text.lzma2_lzma,"ax",@progbits
	.align	1
	.type	lzma2_lzma, @function
lzma2_lzma:
.LFB36:
	.loc 2 847 1
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
	.loc 2 851 17
	lw	a5,-40(s0)
	lw	a4,8(a5)
	.loc 2 851 30
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 851 14
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 852 16
	lw	a4,-36(s0)
	li	a5,28672
	add	a5,a4,a5
	lw	a5,-288(a5)
	.loc 2 852 8
	bne	a5,zero,.L227
	.loc 2 852 37 discriminator 1
	lw	a5,-36(s0)
	lw	a5,72(a5)
	.loc 2 852 26 discriminator 1
	bne	a5,zero,.L228
.L227:
	.loc 2 853 31
	lw	a4,-36(s0)
	li	a5,28672
	add	a5,a4,a5
	lw	a5,-288(a5)
	.loc 2 853 13
	li	a4,42
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 854 27
	lw	a5,-36(s0)
	lw	a4,72(a5)
	.loc 2 854 48
	lw	a3,-36(s0)
	li	a5,28672
	add	a5,a3,a5
	lw	a5,-288(a5)
	.loc 2 854 39
	sub	a5,a4,a5
	.loc 2 854 12
	lw	a4,-24(s0)
	bleu	a4,a5,.L229
	.loc 2 855 27
	lw	a5,-36(s0)
	lw	a4,72(a5)
	.loc 2 855 48
	lw	a3,-36(s0)
	li	a5,28672
	add	a5,a3,a5
	lw	a5,-288(a5)
	.loc 2 855 17
	sub	a5,a4,a5
	sw	a5,-24(s0)
.L229:
	.loc 2 856 12
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bleu	a4,a5,.L230
	.loc 2 857 17
	lw	a5,-20(s0)
	sw	a5,-24(s0)
.L230:
	.loc 2 859 16
	lw	a4,-36(s0)
	li	a5,28672
	addi	a5,a5,-284
	add	a4,a4,a5
	.loc 2 859 37
	lw	a3,-36(s0)
	li	a5,28672
	add	a5,a3,a5
	lw	a5,-288(a5)
	.loc 2 859 9
	add	a3,a4,a5
	.loc 2 859 45
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 859 53
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 859 50
	add	a5,a4,a5
	.loc 2 859 9
	lw	a2,-24(s0)
	mv	a1,a5
	mv	a0,a3
	call	memcpy
	.loc 2 861 20
	lw	a4,-36(s0)
	li	a5,28672
	add	a5,a4,a5
	lw	a4,-288(a5)
	.loc 2 861 26
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 2 861 43
	lw	a5,-36(s0)
	lw	a5,72(a5)
	.loc 2 861 12
	bne	a4,a5,.L231
	.loc 2 862 20
	lw	a4,-36(s0)
	li	a5,28672
	addi	a5,a5,-284
	add	a4,a4,a5
	.loc 2 862 41
	lw	a3,-36(s0)
	li	a5,28672
	add	a5,a3,a5
	lw	a3,-288(a5)
	.loc 2 862 47
	lw	a5,-24(s0)
	add	a5,a3,a5
	.loc 2 862 13
	add	a3,a4,a5
	.loc 2 862 86
	lw	a4,-36(s0)
	li	a5,28672
	add	a5,a4,a5
	lw	a4,-288(a5)
	.loc 2 862 92
	lw	a5,-24(s0)
	add	a5,a4,a5
	li	a4,63
	sub	a5,a4,a5
	.loc 2 862 13
	mv	a2,a5
	li	a1,0
	mv	a0,a3
	call	memset
	.loc 2 865 37
	lw	a4,-36(s0)
	li	a5,28672
	add	a5,a4,a5
	lw	a4,-288(a5)
	.loc 2 865 43
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 2 865 28
	lw	a5,-36(s0)
	sw	a4,20(a5)
	j	.L232
.L231:
	.loc 2 866 27
	lw	a4,-36(s0)
	li	a5,28672
	add	a5,a4,a5
	lw	a4,-288(a5)
	.loc 2 866 33
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 2 866 19
	li	a5,20
	bgtu	a4,a5,.L233
	.loc 2 867 20
	lw	a4,-36(s0)
	li	a5,28672
	add	a5,a4,a5
	lw	a4,-288(a5)
	.loc 2 867 26
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a3,-36(s0)
	li	a5,28672
	add	a5,a3,a5
	sw	a4,-288(a5)
	.loc 2 868 14
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 2 868 23
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a5,-40(s0)
	sw	a4,4(a5)
	.loc 2 869 20
	li	a5,1
	j	.L234
.L233:
	.loc 2 871 37
	lw	a4,-36(s0)
	li	a5,28672
	add	a5,a4,a5
	lw	a4,-288(a5)
	.loc 2 871 43
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 871 49
	addi	a4,a5,-21
	.loc 2 871 28
	lw	a5,-36(s0)
	sw	a4,20(a5)
.L232:
	.loc 2 874 20
	lw	a4,-36(s0)
	li	a5,28672
	addi	a5,a5,-284
	add	a4,a4,a5
	.loc 2 874 18
	lw	a5,-36(s0)
	sw	a4,12(a5)
	.loc 2 875 22
	lw	a5,-36(s0)
	sw	zero,16(a5)
	.loc 2 877 14
	lw	a0,-36(s0)
	call	lzma_main
	mv	a5,a0
	.loc 2 877 13 discriminator 1
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 2 877 12 discriminator 1
	bne	a5,zero,.L235
	.loc 2 877 35 discriminator 2
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 2 877 52 discriminator 2
	lw	a3,-36(s0)
	li	a5,28672
	add	a5,a3,a5
	lw	a3,-288(a5)
	.loc 2 877 58 discriminator 2
	lw	a5,-24(s0)
	add	a5,a3,a5
	.loc 2 877 27 discriminator 2
	bleu	a4,a5,.L236
.L235:
	.loc 2 878 20
	li	a5,0
	j	.L234
.L236:
	.loc 2 880 17
	lw	a5,-36(s0)
	lw	a4,72(a5)
	.loc 2 880 37
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 2 880 29
	sub	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,72(a5)
	.loc 2 882 18
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 2 882 35
	lw	a3,-36(s0)
	li	a5,28672
	add	a5,a3,a5
	lw	a5,-288(a5)
	.loc 2 882 12
	bgeu	a4,a5,.L237
	.loc 2 883 20
	lw	a4,-36(s0)
	li	a5,28672
	add	a5,a4,a5
	lw	a4,-288(a5)
	.loc 2 883 34
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 2 883 26
	sub	a4,a4,a5
	lw	a3,-36(s0)
	li	a5,28672
	add	a5,a3,a5
	sw	a4,-288(a5)
	.loc 2 884 28
	lw	a4,-36(s0)
	li	a5,28672
	addi	a5,a5,-284
	add	a3,a4,a5
	.loc 2 884 34
	lw	a4,-36(s0)
	li	a5,28672
	addi	a5,a5,-284
	add	a4,a4,a5
	.loc 2 884 53
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 2 884 13
	add	a1,a4,a5
	.loc 2 885 28
	lw	a4,-36(s0)
	li	a5,28672
	add	a5,a4,a5
	lw	a5,-288(a5)
	.loc 2 884 13
	mv	a2,a5
	mv	a0,a3
	call	memmove
	.loc 2 886 20
	li	a5,1
	j	.L234
.L237:
	.loc 2 889 10
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 2 889 27
	lw	a5,-36(s0)
	lw	a3,16(a5)
	.loc 2 889 44
	lw	a2,-36(s0)
	li	a5,28672
	add	a5,a2,a5
	lw	a5,-288(a5)
	.loc 2 889 35
	sub	a5,a3,a5
	.loc 2 889 19
	add	a4,a4,a5
	lw	a5,-40(s0)
	sw	a4,4(a5)
	.loc 2 890 22
	lw	a4,-36(s0)
	li	a5,28672
	add	a5,a4,a5
	sw	zero,-288(a5)
.L228:
	.loc 2 893 17
	lw	a5,-40(s0)
	lw	a4,8(a5)
	.loc 2 893 30
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 893 14
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 894 8
	lw	a4,-20(s0)
	li	a5,20
	bleu	a4,a5,.L238
	.loc 2 895 21
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 895 18
	lw	a5,-36(s0)
	sw	a4,12(a5)
	.loc 2 896 25
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 2 896 22
	lw	a5,-36(s0)
	sw	a4,16(a5)
	.loc 2 898 33
	lw	a5,-36(s0)
	lw	a5,72(a5)
	.loc 2 898 45
	addi	a5,a5,21
	.loc 2 898 12
	lw	a4,-20(s0)
	bltu	a4,a5,.L239
	.loc 2 899 31
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 2 899 50
	lw	a5,-36(s0)
	lw	a5,72(a5)
	.loc 2 899 40
	add	a4,a4,a5
	.loc 2 899 28
	lw	a5,-36(s0)
	sw	a4,20(a5)
	j	.L240
.L239:
	.loc 2 901 31
	lw	a5,-40(s0)
	lw	a5,8(a5)
	.loc 2 901 41
	addi	a4,a5,-21
	.loc 2 901 28
	lw	a5,-36(s0)
	sw	a4,20(a5)
.L240:
	.loc 2 903 14
	lw	a0,-36(s0)
	call	lzma_main
	mv	a5,a0
	.loc 2 903 13 discriminator 1
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 2 903 12 discriminator 1
	beq	a5,zero,.L241
	.loc 2 904 20
	li	a5,0
	j	.L234
.L241:
	.loc 2 906 25
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 2 906 36
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 906 18
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 907 32
	lw	a5,-36(s0)
	lw	a5,72(a5)
	.loc 2 907 12
	lw	a4,-20(s0)
	bleu	a4,a5,.L242
	.loc 2 908 20
	li	a5,0
	j	.L234
.L242:
	.loc 2 910 17
	lw	a5,-36(s0)
	lw	a4,72(a5)
	.loc 2 910 29
	lw	a5,-20(s0)
	sub	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,72(a5)
	.loc 2 911 26
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 2 911 19
	lw	a5,-40(s0)
	sw	a4,4(a5)
.L238:
	.loc 2 914 17
	lw	a5,-40(s0)
	lw	a4,8(a5)
	.loc 2 914 30
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 914 14
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 915 8
	lw	a4,-20(s0)
	li	a5,20
	bgtu	a4,a5,.L243
	.loc 2 916 32
	lw	a5,-36(s0)
	lw	a5,72(a5)
	.loc 2 916 12
	lw	a4,-20(s0)
	bleu	a4,a5,.L244
	.loc 2 917 22
	lw	a5,-36(s0)
	lw	a5,72(a5)
	sw	a5,-20(s0)
.L244:
	.loc 2 919 23
	lw	a4,-36(s0)
	li	a5,28672
	addi	a5,a5,-284
	add	a3,a4,a5
	.loc 2 919 30
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 919 38
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 919 35
	add	a5,a4,a5
	.loc 2 919 9
	lw	a2,-20(s0)
	mv	a1,a5
	mv	a0,a3
	call	memcpy
	.loc 2 920 22
	lw	a4,-36(s0)
	li	a5,28672
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,-288(a5)
	.loc 2 921 10
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 2 921 19
	lw	a5,-20(s0)
	add	a4,a4,a5
	lw	a5,-40(s0)
	sw	a4,4(a5)
.L243:
	.loc 2 924 12
	li	a5,1
.L234:
	.loc 2 925 1
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
.LFE36:
	.size	lzma2_lzma, .-lzma2_lzma
	.section	.text.xz_dec_lzma2_run,"ax",@progbits
	.align	1
	.globl	xz_dec_lzma2_run
	.type	xz_dec_lzma2_run, @function
xz_dec_lzma2_run:
.LFB37:
	.loc 2 933 1
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
	.loc 2 936 11
	j	.L246
.L279:
	.loc 2 937 25
	lw	a5,-36(s0)
	lbu	a5,64(a5)
	.loc 2 937 9
	li	a4,8
	beq	a5,a4,.L247
	li	a4,8
	bgt	a5,a4,.L280
	li	a4,7
	beq	a5,a4,.L249
	li	a4,7
	bgt	a5,a4,.L280
	li	a4,6
	beq	a5,a4,.L250
	li	a4,6
	bgt	a5,a4,.L280
	li	a4,5
	beq	a5,a4,.L251
	li	a4,5
	bgt	a5,a4,.L280
	li	a4,4
	beq	a5,a4,.L252
	li	a4,4
	bgt	a5,a4,.L280
	li	a4,3
	beq	a5,a4,.L253
	li	a4,3
	bgt	a5,a4,.L280
	li	a4,2
	beq	a5,a4,.L254
	li	a4,2
	bgt	a5,a4,.L280
	beq	a5,zero,.L255
	li	a4,1
	beq	a5,a4,.L256
	.loc 2 1105 13
	j	.L280
.L255:
	.loc 2 970 20
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 970 26
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 970 34
	addi	a2,a5,1
	lw	a3,-40(s0)
	sw	a2,4(a3)
	.loc 2 970 24
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 2 970 17
	sw	a5,-20(s0)
	.loc 2 972 16
	lw	a5,-20(s0)
	bne	a5,zero,.L257
	.loc 2 973 24
	li	a5,1
	j	.L258
.L257:
	.loc 2 975 16
	lw	a4,-20(s0)
	li	a5,223
	bgtu	a4,a5,.L259
	.loc 2 975 29 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L260
.L259:
	.loc 2 976 37
	lw	a5,-36(s0)
	li	a4,1
	sb	a4,77(a5)
	.loc 2 977 42
	lw	a5,-36(s0)
	sb	zero,76(a5)
	.loc 2 978 17
	lw	a5,-36(s0)
	addi	a5,a5,24
	lw	a1,-40(s0)
	mv	a0,a5
	call	dict_reset
	j	.L261
.L260:
	.loc 2 979 32
	lw	a5,-36(s0)
	lbu	a5,76(a5)
	.loc 2 979 23
	beq	a5,zero,.L261
	.loc 2 980 24
	li	a5,7
	j	.L258
.L261:
	.loc 2 983 16
	lw	a4,-20(s0)
	li	a5,127
	bleu	a4,a5,.L262
	.loc 2 984 54
	lw	a5,-20(s0)
	slli	a4,a5,16
	li	a5,2031616
	and	a4,a4,a5
	.loc 2 984 39
	lw	a5,-36(s0)
	sw	a4,68(a5)
	.loc 2 985 35
	lw	a5,-36(s0)
	li	a4,1
	sb	a4,64(a5)
	.loc 2 987 20
	lw	a4,-20(s0)
	li	a5,191
	bleu	a4,a5,.L263
	.loc 2 993 41
	lw	a5,-36(s0)
	sb	zero,77(a5)
	.loc 2 995 29
	lw	a5,-36(s0)
	li	a4,5
	sb	a4,65(a5)
	.loc 2 1014 13
	j	.L281
.L263:
	.loc 2 997 36
	lw	a5,-36(s0)
	lbu	a5,77(a5)
	.loc 2 997 27
	beq	a5,zero,.L265
	.loc 2 998 28
	li	a5,7
	j	.L258
.L265:
	.loc 2 1002 29
	lw	a5,-36(s0)
	li	a4,6
	sb	a4,65(a5)
	.loc 2 1003 24
	lw	a4,-20(s0)
	li	a5,159
	bleu	a4,a5,.L281
	.loc 2 1004 25
	lw	a0,-36(s0)
	call	lzma_reset
	.loc 2 1014 13
	j	.L281
.L262:
	.loc 2 1007 20
	lw	a4,-20(s0)
	li	a5,2
	bleu	a4,a5,.L266
	.loc 2 1008 28
	li	a5,7
	j	.L258
.L266:
	.loc 2 1010 35
	lw	a5,-36(s0)
	li	a4,3
	sb	a4,64(a5)
	.loc 2 1011 40
	lw	a5,-36(s0)
	li	a4,8
	sb	a4,65(a5)
	.loc 2 1014 13
	j	.L281
.L256:
	.loc 2 1018 35
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 1018 41
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 1018 49
	addi	a2,a5,1
	lw	a3,-40(s0)
	sw	a2,4(a3)
	.loc 2 1018 39
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 2 1018 53
	slli	a4,a5,8
	.loc 2 1017 21
	lw	a5,-36(s0)
	lw	a5,68(a5)
	.loc 2 1018 21
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,68(a5)
	.loc 2 1019 31
	lw	a5,-36(s0)
	li	a4,2
	sb	a4,64(a5)
	.loc 2 1020 13
	j	.L246
.L254:
	.loc 2 1024 35
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 1024 41
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 1024 49
	addi	a2,a5,1
	lw	a3,-40(s0)
	sw	a2,4(a3)
	.loc 2 1024 39
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 2 1024 53
	addi	a4,a5,1
	.loc 2 1023 21
	lw	a5,-36(s0)
	lw	a5,68(a5)
	.loc 2 1024 21
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,68(a5)
	.loc 2 1025 31
	lw	a5,-36(s0)
	li	a4,3
	sb	a4,64(a5)
	.loc 2 1026 13
	j	.L246
.L253:
	.loc 2 1030 34
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 1030 40
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 1030 48
	addi	a2,a5,1
	lw	a3,-40(s0)
	sw	a2,4(a3)
	.loc 2 1030 38
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 2 1030 52
	slli	a4,a5,8
	.loc 2 1030 21
	lw	a5,-36(s0)
	sw	a4,72(a5)
	.loc 2 1031 31
	lw	a5,-36(s0)
	li	a4,4
	sb	a4,64(a5)
	.loc 2 1032 13
	j	.L246
.L252:
	.loc 2 1036 35
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 1036 41
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 1036 49
	addi	a2,a5,1
	lw	a3,-40(s0)
	sw	a2,4(a3)
	.loc 2 1036 39
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 2 1036 53
	addi	a4,a5,1
	.loc 2 1035 21
	lw	a5,-36(s0)
	lw	a5,72(a5)
	.loc 2 1036 21
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,72(a5)
	.loc 2 1037 41
	lw	a5,-36(s0)
	lbu	a4,65(a5)
	.loc 2 1037 31
	lw	a5,-36(s0)
	sb	a4,64(a5)
	.loc 2 1038 13
	j	.L246
.L251:
	.loc 2 1041 33
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 1041 39
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 1041 47
	addi	a2,a5,1
	lw	a3,-40(s0)
	sw	a2,4(a3)
	.loc 2 1041 37
	add	a5,a4,a5
	.loc 2 1041 18
	lbu	a5,0(a5)
	mv	a1,a5
	lw	a0,-36(s0)
	call	lzma_props
	mv	a5,a0
	.loc 2 1041 17 discriminator 1
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 2 1041 16 discriminator 1
	beq	a5,zero,.L268
	.loc 2 1042 24
	li	a5,7
	j	.L258
.L268:
	.loc 2 1044 31
	lw	a5,-36(s0)
	li	a4,6
	sb	a4,64(a5)
.L250:
	.loc 2 1050 25
	lw	a5,-36(s0)
	lw	a4,72(a5)
	.loc 2 1050 16
	li	a5,4
	bgtu	a4,a5,.L269
	.loc 2 1051 24
	li	a5,7
	j	.L258
.L269:
	.loc 2 1053 18
	lw	a5,-36(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	rc_read_init
	mv	a5,a0
	.loc 2 1053 17 discriminator 1
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 2 1053 16 discriminator 1
	beq	a5,zero,.L270
	.loc 2 1054 24
	li	a5,0
	j	.L258
.L270:
	.loc 2 1056 21
	lw	a5,-36(s0)
	lw	a5,72(a5)
	.loc 2 1056 33
	addi	a4,a5,-5
	lw	a5,-36(s0)
	sw	a4,72(a5)
	.loc 2 1057 31
	lw	a5,-36(s0)
	li	a4,7
	sb	a4,64(a5)
.L249:
	.loc 2 1072 13
	lw	a5,-36(s0)
	addi	a3,a5,24
	.loc 2 1072 73
	lw	a5,-36(s0)
	lw	a2,68(a5)
	.loc 2 1072 37
	lw	a5,-40(s0)
	lw	a4,20(a5)
	.loc 2 1072 51
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 2 1072 48
	sub	a4,a4,a5
	.loc 2 1072 13
	mv	a5,a2
	bleu	a5,a4,.L271
	mv	a5,a4
.L271:
	mv	a1,a5
	mv	a0,a3
	call	dict_limit
	.loc 2 1075 18
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	lzma2_lzma
	mv	a5,a0
	.loc 2 1075 17 discriminator 1
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 2 1075 16 discriminator 1
	beq	a5,zero,.L272
	.loc 2 1076 24
	li	a5,7
	j	.L258
.L272:
	.loc 2 1078 38
	lw	a5,-36(s0)
	addi	a5,a5,24
	lw	a1,-40(s0)
	mv	a0,a5
	call	dict_flush
	mv	a4,a0
	.loc 2 1078 21 discriminator 1
	lw	a5,-36(s0)
	lw	a5,68(a5)
	.loc 2 1078 35 discriminator 1
	sub	a4,a5,a4
	lw	a5,-36(s0)
	sw	a4,68(a5)
	.loc 2 1080 25
	lw	a5,-36(s0)
	lw	a5,68(a5)
	.loc 2 1080 16
	bne	a5,zero,.L273
	.loc 2 1081 29
	lw	a5,-36(s0)
	lw	a5,72(a5)
	.loc 2 1081 20
	bne	a5,zero,.L274
	.loc 2 1081 55 discriminator 1
	lw	a5,-36(s0)
	lw	a5,100(a5)
	.loc 2 1081 45 discriminator 1
	bne	a5,zero,.L274
	.loc 2 1082 44
	lw	a5,-36(s0)
	.loc 2 1082 29
	mv	a0,a5
	call	rc_is_finished
	mv	a5,a0
	.loc 2 1082 28 discriminator 1
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 2 1082 25 discriminator 1
	beq	a5,zero,.L275
.L274:
	.loc 2 1083 28
	li	a5,7
	j	.L258
.L275:
	.loc 2 1085 17
	lw	a5,-36(s0)
	mv	a0,a5
	call	rc_reset
	.loc 2 1086 35
	lw	a5,-36(s0)
	sb	zero,64(a5)
	.loc 2 1095 13
	j	.L282
.L273:
	.loc 2 1088 25
	lw	a5,-40(s0)
	lw	a4,16(a5)
	.loc 2 1088 39
	lw	a5,-40(s0)
	lw	a5,20(a5)
	.loc 2 1088 23
	beq	a4,a5,.L277
	.loc 2 1089 26
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 2 1089 39
	lw	a5,-40(s0)
	lw	a5,8(a5)
	.loc 2 1089 21
	bne	a4,a5,.L282
	.loc 2 1090 35
	lw	a4,-36(s0)
	li	a5,28672
	add	a5,a4,a5
	lw	a4,-288(a5)
	.loc 2 1091 35
	lw	a5,-36(s0)
	lw	a5,72(a5)
	.loc 2 1090 25
	bgeu	a4,a5,.L282
.L277:
	.loc 2 1092 24
	li	a5,0
	j	.L258
.L247:
	.loc 2 1098 13
	lw	a5,-36(s0)
	addi	a4,a5,24
	lw	a5,-36(s0)
	addi	a5,a5,72
	mv	a2,a5
	lw	a1,-40(s0)
	mv	a0,a4
	call	dict_uncompressed
	.loc 2 1099 25
	lw	a5,-36(s0)
	lw	a5,72(a5)
	.loc 2 1099 16
	beq	a5,zero,.L278
	.loc 2 1100 24
	li	a5,0
	j	.L258
.L278:
	.loc 2 1102 31
	lw	a5,-36(s0)
	sb	zero,64(a5)
	.loc 2 1103 13
	j	.L246
.L280:
	.loc 2 1105 13
	nop
	j	.L246
.L281:
	.loc 2 1014 13
	nop
	j	.L246
.L282:
	.loc 2 1095 13
	nop
.L246:
	.loc 2 936 13
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 2 936 25
	lw	a5,-40(s0)
	lw	a5,8(a5)
	.loc 2 936 35
	bltu	a4,a5,.L279
	.loc 2 936 46 discriminator 1
	lw	a5,-36(s0)
	lbu	a4,64(a5)
	.loc 2 936 35 discriminator 1
	li	a5,7
	beq	a4,a5,.L279
	.loc 2 1109 12
	li	a5,0
.L258:
	.loc 2 1110 1
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
.LFE37:
	.size	xz_dec_lzma2_run, .-xz_dec_lzma2_run
	.section	.text.xz_dec_lzma2_create,"ax",@progbits
	.align	1
	.globl	xz_dec_lzma2_create
	.type	xz_dec_lzma2_create, @function
xz_dec_lzma2_create:
.LFB38:
	.loc 2 1114 1
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
	sb	a5,-33(s0)
	.loc 2 1115 30
	li	a5,28672
	addi	a0,a5,-220
	call	simple_malloc
	sw	a0,-20(s0)
	.loc 2 1116 8
	lw	a5,-20(s0)
	bne	a5,zero,.L284
	.loc 2 1117 15
	li	a5,0
	j	.L285
.L284:
	.loc 2 1119 18
	lw	a5,-20(s0)
	lbu	a4,-33(s0)
	sb	a4,60(a5)
	.loc 2 1120 22
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,52(a5)
	.loc 2 1122 8
	lbu	a4,-33(s0)
	li	a5,1
	bne	a4,a5,.L286
	.loc 2 1123 23
	lw	a0,-40(s0)
	call	simple_malloc
	mv	a4,a0
	.loc 2 1123 21 discriminator 1
	lw	a5,-20(s0)
	sw	a4,24(a5)
	.loc 2 1124 20
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 2 1124 12
	bne	a5,zero,.L287
	.loc 2 1125 13
	lw	a0,-20(s0)
	call	simple_free
	.loc 2 1126 19
	li	a5,0
	j	.L285
.L286:
	.loc 2 1128 15
	lbu	a4,-33(s0)
	li	a5,2
	bne	a4,a5,.L287
	.loc 2 1129 21
	lw	a5,-20(s0)
	sw	zero,24(a5)
	.loc 2 1130 27
	lw	a5,-20(s0)
	sw	zero,56(a5)
.L287:
	.loc 2 1133 12
	lw	a5,-20(s0)
.L285:
	.loc 2 1134 1
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
.LFE38:
	.size	xz_dec_lzma2_create, .-xz_dec_lzma2_create
	.section	.text.xz_dec_lzma2_reset,"ax",@progbits
	.align	1
	.globl	xz_dec_lzma2_reset
	.type	xz_dec_lzma2_reset, @function
xz_dec_lzma2_reset:
.LFB39:
	.loc 2 1137 1
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
	.loc 2 1139 8
	lbu	a4,-21(s0)
	li	a5,39
	bleu	a4,a5,.L289
	.loc 2 1140 16
	li	a5,6
	j	.L290
.L289:
	.loc 2 1142 31
	lbu	a5,-21(s0)
	andi	a5,a5,1
	.loc 2 1142 22
	addi	a5,a5,2
	mv	a4,a5
	.loc 2 1142 18
	lw	a5,-20(s0)
	sw	a4,48(a5)
	.loc 2 1143 12
	lw	a5,-20(s0)
	lw	a4,48(a5)
	.loc 2 1143 29
	lbu	a5,-21(s0)
	srli	a5,a5,1
	andi	a5,a5,0xff
	.loc 2 1143 35
	addi	a5,a5,11
	.loc 2 1143 18
	sll	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,48(a5)
	.loc 2 1145 18
	lw	a5,-20(s0)
	lbu	a5,60(a5)
	.loc 2 1145 8
	beq	a5,zero,.L291
	.loc 2 1146 20
	lw	a5,-20(s0)
	lw	a4,48(a5)
	.loc 2 1146 35
	lw	a5,-20(s0)
	lw	a5,52(a5)
	.loc 2 1146 12
	bleu	a4,a5,.L292
	.loc 2 1147 20
	li	a5,4
	j	.L290
.L292:
	.loc 2 1149 30
	lw	a5,-20(s0)
	lw	a4,48(a5)
	.loc 2 1149 21
	lw	a5,-20(s0)
	sw	a4,44(a5)
	.loc 2 1151 22
	lw	a5,-20(s0)
	lbu	a4,60(a5)
	.loc 2 1151 12
	li	a5,2
	bne	a4,a5,.L291
	.loc 2 1152 24
	lw	a5,-20(s0)
	lw	a4,56(a5)
	.loc 2 1152 44
	lw	a5,-20(s0)
	lw	a5,48(a5)
	.loc 2 1152 16
	bgeu	a4,a5,.L291
	.loc 2 1153 36
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 2 1153 17
	mv	a0,a5
	call	simple_free
	.loc 2 1154 31
	lw	a5,-20(s0)
	lw	a5,48(a5)
	mv	a0,a5
	call	simple_malloc
	mv	a4,a0
	.loc 2 1154 29 discriminator 1
	lw	a5,-20(s0)
	sw	a4,24(a5)
	.loc 2 1155 28
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 2 1155 20
	bne	a5,zero,.L291
	.loc 2 1156 39
	lw	a5,-20(s0)
	sw	zero,56(a5)
	.loc 2 1157 28
	li	a5,3
	j	.L290
.L291:
	.loc 2 1163 17
	lw	a5,-20(s0)
	sw	zero,100(a5)
	.loc 2 1165 23
	lw	a5,-20(s0)
	sb	zero,64(a5)
	.loc 2 1166 30
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,76(a5)
	.loc 2 1168 18
	lw	a4,-20(s0)
	li	a5,28672
	add	a5,a4,a5
	sw	zero,-288(a5)
	.loc 2 1170 12
	li	a5,0
.L290:
	.loc 2 1171 1
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
	.size	xz_dec_lzma2_reset, .-xz_dec_lzma2_reset
	.section	.text.xz_dec_lzma2_end,"ax",@progbits
	.align	1
	.globl	xz_dec_lzma2_end
	.type	xz_dec_lzma2_end, @function
xz_dec_lzma2_end:
.LFB40:
	.loc 2 1174 1
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
	.loc 2 1175 18
	lw	a5,-20(s0)
	lbu	a5,60(a5)
	.loc 2 1175 8
	beq	a5,zero,.L294
	.loc 2 1176 28
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 2 1176 9
	mv	a0,a5
	call	simple_free
.L294:
	.loc 2 1178 5
	lw	a0,-20(s0)
	call	simple_free
	.loc 2 1179 1
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
.LFE40:
	.size	xz_dec_lzma2_end, .-xz_dec_lzma2_end
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz/xz.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz/xz_config.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x14fb
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x29
	.4byte	.LASF167
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x18
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x37
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2a
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2b
	.byte	0x4
	.uleb128 0x23
	.4byte	0x84
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x9
	.4byte	0x9c
	.uleb128 0x23
	.4byte	0x92
	.uleb128 0x2c
	.uleb128 0x18
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x5a
	.uleb128 0x1e
	.4byte	0x9d
	.uleb128 0x18
	.4byte	.LASF15
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x18
	.4byte	.LASF16
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x19
	.4byte	.LASF20
	.4byte	0x5a
	.byte	0x5
	.byte	0x38
	.byte	0x6
	.4byte	0xe9
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x2
	.byte	0
	.uleb128 0x19
	.4byte	.LASF21
	.4byte	0x5a
	.byte	0x5
	.byte	0x70
	.byte	0x6
	.4byte	0x130
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF48
	.byte	0x18
	.byte	0x5
	.byte	0x8c
	.4byte	0x18a
	.uleb128 0xf
	.string	"in"
	.byte	0x5
	.byte	0x8d
	.byte	0x14
	.4byte	0x18a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x5
	.byte	0x8e
	.byte	0xc
	.4byte	0x2b
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x5
	.byte	0x8f
	.byte	0xc
	.4byte	0x2b
	.byte	0x8
	.uleb128 0xf
	.string	"out"
	.byte	0x5
	.byte	0x91
	.byte	0xe
	.4byte	0x18f
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x5
	.byte	0x92
	.byte	0xc
	.4byte	0x2b
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x5
	.byte	0x93
	.byte	0xc
	.4byte	0x2b
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.4byte	0xa9
	.uleb128 0x9
	.4byte	0x9d
	.uleb128 0x19
	.4byte	.LASF35
	.4byte	0x5a
	.byte	0x1
	.byte	0x2a
	.byte	0x6
	.4byte	0x1ed
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0xb
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF49
	.byte	0x28
	.byte	0x2
	.byte	0x2c
	.4byte	0x27c
	.uleb128 0xf
	.string	"buf"
	.byte	0x2
	.byte	0x2e
	.byte	0xe
	.4byte	0x18f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x2
	.byte	0x31
	.byte	0xc
	.4byte	0x2b
	.byte	0x4
	.uleb128 0xf
	.string	"pos"
	.byte	0x2
	.byte	0x34
	.byte	0xc
	.4byte	0x2b
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x2
	.byte	0x3a
	.byte	0xc
	.4byte	0x2b
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x2
	.byte	0x3d
	.byte	0xc
	.4byte	0x2b
	.byte	0x10
	.uleb128 0xf
	.string	"end"
	.byte	0x2
	.byte	0x44
	.byte	0xc
	.4byte	0x2b
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x2
	.byte	0x4b
	.byte	0xe
	.4byte	0xba
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x2
	.byte	0x51
	.byte	0xe
	.4byte	0xba
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x2
	.byte	0x58
	.byte	0xe
	.4byte	0xba
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x2
	.byte	0x5b
	.byte	0x12
	.4byte	0xc6
	.byte	0x24
	.byte	0
	.uleb128 0x1e
	.4byte	0x1ed
	.uleb128 0x1a
	.4byte	.LASF57
	.byte	0x18
	.byte	0x2
	.byte	0x5f
	.4byte	0x2db
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x2
	.byte	0x60
	.byte	0xe
	.4byte	0xba
	.byte	0
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x2
	.byte	0x61
	.byte	0xe
	.4byte	0xba
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x2
	.byte	0x67
	.byte	0xe
	.4byte	0xba
	.byte	0x8
	.uleb128 0xf
	.string	"in"
	.byte	0x2
	.byte	0x6d
	.byte	0x14
	.4byte	0x18a
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x2
	.byte	0x6e
	.byte	0xc
	.4byte	0x2b
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x2
	.byte	0x6f
	.byte	0xc
	.4byte	0x2b
	.byte	0x14
	.byte	0
	.uleb128 0x1e
	.4byte	0x281
	.uleb128 0x1f
	.4byte	.LASF62
	.2byte	0x404
	.byte	0x73
	.4byte	0x32f
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x2
	.byte	0x75
	.byte	0xe
	.4byte	0xae
	.byte	0
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x2
	.byte	0x78
	.byte	0xe
	.4byte	0xae
	.byte	0x2
	.uleb128 0xf
	.string	"low"
	.byte	0x2
	.byte	0x7b
	.byte	0xe
	.4byte	0x32f
	.byte	0x4
	.uleb128 0x2d
	.string	"mid"
	.byte	0x2
	.byte	0x7e
	.byte	0xe
	.4byte	0x32f
	.2byte	0x104
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x81
	.byte	0xe
	.4byte	0x345
	.2byte	0x204
	.byte	0
	.uleb128 0x10
	.4byte	0xae
	.4byte	0x345
	.uleb128 0xc
	.4byte	0x37
	.byte	0xf
	.uleb128 0xc
	.4byte	0x37
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.4byte	0xae
	.4byte	0x355
	.uleb128 0xc
	.4byte	0x37
	.byte	0xff
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF66
	.2byte	0x6e90
	.byte	0x84
	.4byte	0x472
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x2
	.byte	0x86
	.byte	0xe
	.4byte	0xba
	.byte	0
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x2
	.byte	0x87
	.byte	0xe
	.4byte	0xba
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x2
	.byte	0x88
	.byte	0xe
	.4byte	0xba
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x2
	.byte	0x89
	.byte	0xe
	.4byte	0xba
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0x2
	.byte	0x8c
	.byte	0x15
	.4byte	0x194
	.byte	0x10
	.uleb128 0xf
	.string	"len"
	.byte	0x2
	.byte	0x92
	.byte	0xe
	.4byte	0xba
	.byte	0x14
	.uleb128 0xf
	.string	"lc"
	.byte	0x2
	.byte	0x9a
	.byte	0xe
	.4byte	0xba
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x2
	.byte	0x9b
	.byte	0xe
	.4byte	0xba
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0x2
	.byte	0x9c
	.byte	0xe
	.4byte	0xba
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0x2
	.byte	0x9f
	.byte	0xe
	.4byte	0x472
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0xa2
	.byte	0xe
	.4byte	0x488
	.2byte	0x1a4
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0xa8
	.byte	0xe
	.4byte	0x488
	.2byte	0x1bc
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0xae
	.byte	0xe
	.4byte	0x488
	.2byte	0x1d4
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0xb1
	.byte	0xe
	.4byte	0x488
	.2byte	0x1ec
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0xb7
	.byte	0xe
	.4byte	0x472
	.2byte	0x204
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0xbe
	.byte	0xe
	.4byte	0x498
	.2byte	0x384
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0xc4
	.byte	0xe
	.4byte	0x4ae
	.2byte	0x584
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0xca
	.byte	0xe
	.4byte	0x4be
	.2byte	0x668
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0xcd
	.byte	0x19
	.4byte	0x2e0
	.2byte	0x688
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0xd0
	.byte	0x19
	.4byte	0x2e0
	.2byte	0xa8c
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0xd3
	.byte	0xe
	.4byte	0x4ce
	.2byte	0xe90
	.byte	0
	.uleb128 0x10
	.4byte	0xae
	.4byte	0x488
	.uleb128 0xc
	.4byte	0x37
	.byte	0xb
	.uleb128 0xc
	.4byte	0x37
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.4byte	0xae
	.4byte	0x498
	.uleb128 0xc
	.4byte	0x37
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.4byte	0xae
	.4byte	0x4ae
	.uleb128 0xc
	.4byte	0x37
	.byte	0x3
	.uleb128 0xc
	.4byte	0x37
	.byte	0x3f
	.byte	0
	.uleb128 0x10
	.4byte	0xae
	.4byte	0x4be
	.uleb128 0xc
	.4byte	0x37
	.byte	0x71
	.byte	0
	.uleb128 0x10
	.4byte	0xae
	.4byte	0x4ce
	.uleb128 0xc
	.4byte	0x37
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.4byte	0xae
	.4byte	0x4e5
	.uleb128 0xc
	.4byte	0x37
	.byte	0xf
	.uleb128 0x2e
	.4byte	0x37
	.2byte	0x2ff
	.byte	0
	.uleb128 0x19
	.4byte	.LASF86
	.4byte	0x5a
	.byte	0x2
	.byte	0xd8
	.byte	0xa
	.4byte	0x52c
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF96
	.byte	0x10
	.byte	0x2
	.byte	0xd6
	.4byte	0x587
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0x2
	.byte	0xe2
	.byte	0x7
	.4byte	0x4e5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF98
	.byte	0x2
	.byte	0xe5
	.byte	0x14
	.4byte	0x4e5
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF99
	.byte	0x2
	.byte	0xe8
	.byte	0xe
	.4byte	0xba
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0x2
	.byte	0xee
	.byte	0xe
	.4byte	0xba
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0x2
	.byte	0xf4
	.byte	0xa
	.4byte	0x587
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF102
	.byte	0x2
	.byte	0xfa
	.byte	0xa
	.4byte	0x587
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.byte	0x2
	.4byte	.LASF103
	.uleb128 0x2f
	.byte	0x44
	.byte	0x2
	.2byte	0x110
	.byte	0x5
	.4byte	0x5b3
	.uleb128 0x1b
	.4byte	.LASF53
	.2byte	0x111
	.byte	0x12
	.4byte	0xba
	.byte	0
	.uleb128 0x24
	.string	"buf"
	.2byte	0x112
	.byte	0x11
	.4byte	0x5b3
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	0x9d
	.4byte	0x5c3
	.uleb128 0xc
	.4byte	0x37
	.byte	0x3e
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF104
	.2byte	0x6f24
	.byte	0xfd
	.4byte	0x612
	.uleb128 0x24
	.string	"rc"
	.2byte	0x107
	.byte	0x13
	.4byte	0x281
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF105
	.2byte	0x108
	.byte	0x17
	.4byte	0x1ed
	.byte	0x18
	.uleb128 0x1b
	.4byte	.LASF106
	.2byte	0x109
	.byte	0x16
	.4byte	0x52c
	.byte	0x40
	.uleb128 0x1b
	.4byte	.LASF107
	.2byte	0x10a
	.byte	0x15
	.4byte	0x355
	.byte	0x50
	.uleb128 0x30
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x113
	.byte	0x7
	.4byte	0x58e
	.2byte	0x6ee0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF168
	.byte	0x6
	.byte	0x1b
	.byte	0xd
	.4byte	0x624
	.uleb128 0xd
	.4byte	0x84
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF109
	.byte	0x6
	.byte	0x1a
	.byte	0xf
	.4byte	0x84
	.4byte	0x63a
	.uleb128 0xd
	.4byte	0xba
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF110
	.byte	0x7
	.byte	0x20
	.byte	0x8
	.4byte	0x84
	.4byte	0x65a
	.uleb128 0xd
	.4byte	0x84
	.uleb128 0xd
	.4byte	0x92
	.uleb128 0xd
	.4byte	0x2b
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF111
	.byte	0x7
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x67a
	.uleb128 0xd
	.4byte	0x84
	.uleb128 0xd
	.4byte	0x3e
	.uleb128 0xd
	.4byte	0x2b
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF112
	.byte	0x7
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0x69a
	.uleb128 0xd
	.4byte	0x86
	.uleb128 0xd
	.4byte	0x97
	.uleb128 0xd
	.4byte	0x2b
	.byte	0
	.uleb128 0x32
	.4byte	.LASF169
	.byte	0x2
	.2byte	0x495
	.byte	0xd
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6bf
	.uleb128 0x5
	.string	"s"
	.2byte	0x495
	.byte	0x33
	.4byte	0x6bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x5c3
	.uleb128 0x20
	.4byte	.LASF114
	.2byte	0x470
	.byte	0x14
	.4byte	0xe9
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fb
	.uleb128 0x5
	.string	"s"
	.2byte	0x470
	.byte	0x3c
	.4byte	0x6bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF113
	.2byte	0x470
	.byte	0x47
	.4byte	0x9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x20
	.4byte	.LASF115
	.2byte	0x458
	.byte	0x1d
	.4byte	0x6bf
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x741
	.uleb128 0x7
	.4byte	.LASF56
	.2byte	0x458
	.byte	0x3e
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x7
	.4byte	.LASF116
	.2byte	0x459
	.byte	0x25
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"s"
	.2byte	0x45b
	.byte	0x1a
	.4byte	0x6bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF117
	.2byte	0x3a3
	.byte	0x14
	.4byte	0xe9
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x785
	.uleb128 0x5
	.string	"s"
	.2byte	0x3a3
	.byte	0x3a
	.4byte	0x6bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"b"
	.2byte	0x3a4
	.byte	0x27
	.4byte	0x785
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"tmp"
	.2byte	0x3a6
	.byte	0xe
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x130
	.uleb128 0x15
	.4byte	.LASF119
	.2byte	0x34e
	.byte	0xd
	.4byte	0x587
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7dd
	.uleb128 0x5
	.string	"s"
	.2byte	0x34e
	.byte	0x2d
	.4byte	0x6bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"b"
	.2byte	0x34e
	.byte	0x3f
	.4byte	0x785
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF118
	.2byte	0x350
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"tmp"
	.2byte	0x351
	.byte	0xe
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.4byte	.LASF120
	.2byte	0x31f
	.byte	0xd
	.4byte	0x587
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x814
	.uleb128 0x5
	.string	"s"
	.2byte	0x31f
	.byte	0x2d
	.4byte	0x6bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF113
	.2byte	0x31f
	.byte	0x38
	.4byte	0x9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x16
	.4byte	.LASF124
	.2byte	0x2ff
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x853
	.uleb128 0x5
	.string	"s"
	.2byte	0x2ff
	.byte	0x2d
	.4byte	0x6bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF121
	.2byte	0x301
	.byte	0xf
	.4byte	0x853
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"i"
	.2byte	0x302
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0xae
	.uleb128 0x15
	.4byte	.LASF122
	.2byte	0x2d2
	.byte	0xd
	.4byte	0x587
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x945
	.uleb128 0x5
	.string	"s"
	.2byte	0x2d2
	.byte	0x2c
	.4byte	0x6bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x8
	.4byte	.LASF123
	.2byte	0x2d4
	.byte	0xe
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	0x1101
	.4byte	.LBB142
	.4byte	.LBE142-.LBB142
	.2byte	0x2e4
	.byte	0xe
	.4byte	0x8dd
	.uleb128 0x1
	.4byte	0x1111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	0x111c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	0x1128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	0x1133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	0x1140
	.4byte	.LBB144
	.4byte	.LBE144-.LBB144
	.2byte	0x1f6
	.byte	0x5
	.uleb128 0x1
	.4byte	0x114b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x1101
	.4byte	.LBB146
	.4byte	.LBE146-.LBB146
	.2byte	0x2e8
	.byte	0x11
	.4byte	0x92b
	.uleb128 0x1
	.4byte	0x1111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	0x111c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	0x1128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	0x1133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.4byte	0x1140
	.4byte	.LBB148
	.4byte	.LBE148-.LBB148
	.2byte	0x1f6
	.byte	0x5
	.uleb128 0x1
	.4byte	0x114b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x1140
	.4byte	.LBB150
	.4byte	.LBE150-.LBB150
	.2byte	0x2f6
	.byte	0x5
	.uleb128 0x1
	.4byte	0x114b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF125
	.2byte	0x2b0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac5
	.uleb128 0x5
	.string	"s"
	.2byte	0x2b0
	.byte	0x31
	.4byte	0x6bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x7
	.4byte	.LASF123
	.2byte	0x2b0
	.byte	0x3d
	.4byte	0xba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x11
	.string	"tmp"
	.2byte	0x2b2
	.byte	0xe
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	0x1101
	.4byte	.LBB126
	.4byte	.LBE126-.LBB126
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x9d5
	.uleb128 0x1
	.4byte	0x1111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	0x111c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	0x1128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	0x1133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	0x1140
	.4byte	.LBB128
	.4byte	.LBE128-.LBB128
	.2byte	0x1f6
	.byte	0x5
	.uleb128 0x1
	.4byte	0x114b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x1101
	.4byte	.LBB130
	.4byte	.LBE130-.LBB130
	.2byte	0x2b5
	.byte	0xe
	.4byte	0xa23
	.uleb128 0x1
	.4byte	0x1111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	0x111c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	0x1128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	0x1133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.4byte	0x1140
	.4byte	.LBB132
	.4byte	.LBE132-.LBB132
	.2byte	0x1f6
	.byte	0x5
	.uleb128 0x1
	.4byte	0x114b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x1101
	.4byte	.LBB134
	.4byte	.LBE134-.LBB134
	.2byte	0x2bc
	.byte	0xe
	.4byte	0xa75
	.uleb128 0x1
	.4byte	0x1111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	0x111c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	0x1128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.4byte	0x1133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.4byte	0x1140
	.4byte	.LBB136
	.4byte	.LBE136-.LBB136
	.2byte	0x1f6
	.byte	0x5
	.uleb128 0x1
	.4byte	0x114b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x1101
	.4byte	.LBB138
	.4byte	.LBE138-.LBB138
	.2byte	0x2bf
	.byte	0x12
	.uleb128 0x1
	.4byte	0x1111
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.4byte	0x111c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.4byte	0x1128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2
	.4byte	0x1133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x6
	.4byte	0x1140
	.4byte	.LBB140
	.4byte	.LBE140-.LBB140
	.2byte	0x1f6
	.byte	0x5
	.uleb128 0x1
	.4byte	0x114b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF126
	.2byte	0x286
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd5
	.uleb128 0x5
	.string	"s"
	.2byte	0x286
	.byte	0x2d
	.4byte	0x6bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x7
	.4byte	.LASF123
	.2byte	0x286
	.byte	0x39
	.4byte	0xba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x8
	.4byte	.LASF121
	.2byte	0x288
	.byte	0xf
	.4byte	0x853
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF80
	.2byte	0x289
	.byte	0xe
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF52
	.2byte	0x28a
	.byte	0xe
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.4byte	0x10c2
	.4byte	.LBB108
	.4byte	.LBE108-.LBB108
	.2byte	0x295
	.byte	0x11
	.4byte	0xba4
	.uleb128 0x1
	.4byte	0x10d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	0x10dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	0x10e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	0x10f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	0x1101
	.4byte	.LBB110
	.4byte	.LBE110-.LBB110
	.2byte	0x20d
	.byte	0xd
	.uleb128 0x1
	.4byte	0x1111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	0x111c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	0x1128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	0x1133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.4byte	0x1140
	.4byte	.LBB112
	.4byte	.LBE112-.LBB112
	.2byte	0x1f6
	.byte	0x5
	.uleb128 0x1
	.4byte	0x114b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x1072
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.2byte	0x2a1
	.byte	0xd
	.4byte	0xc3e
	.uleb128 0x1
	.4byte	0x107d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	0x1088
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.4byte	0x1094
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.4byte	0x10a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.4byte	0x10ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.4byte	0x10b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x6
	.4byte	0x1101
	.4byte	.LBB116
	.4byte	.LBE116-.LBB116
	.2byte	0x21f
	.byte	0xd
	.uleb128 0x1
	.4byte	0x1111
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1
	.4byte	0x111c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2
	.4byte	0x1128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.4byte	0x1133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x6
	.4byte	0x1140
	.4byte	.LBB118
	.4byte	.LBE118-.LBB118
	.2byte	0x1f6
	.byte	0x5
	.uleb128 0x1
	.4byte	0x114b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x1072
	.4byte	.LBB120
	.4byte	.LBE120-.LBB120
	.2byte	0x2a6
	.byte	0xd
	.uleb128 0x1
	.4byte	0x107d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1
	.4byte	0x1088
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1
	.4byte	0x1094
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1
	.4byte	0x10a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2
	.4byte	0x10ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2
	.4byte	0x10b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x6
	.4byte	0x1101
	.4byte	.LBB122
	.4byte	.LBE122-.LBB122
	.2byte	0x21f
	.byte	0xd
	.uleb128 0x1
	.4byte	0x1111
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1
	.4byte	0x111c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2
	.4byte	0x1128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2
	.4byte	0x1133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x6
	.4byte	0x1140
	.4byte	.LBB124
	.4byte	.LBE124-.LBB124
	.2byte	0x1f6
	.byte	0x5
	.uleb128 0x1
	.4byte	0x114b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF127
	.2byte	0x26b
	.byte	0xd
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe56
	.uleb128 0x5
	.string	"s"
	.2byte	0x26b
	.byte	0x2b
	.4byte	0x6bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x5
	.string	"l"
	.2byte	0x26b
	.byte	0x43
	.4byte	0xe56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x7
	.4byte	.LASF123
	.2byte	0x26c
	.byte	0x17
	.4byte	0xba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x8
	.4byte	.LASF121
	.2byte	0x26e
	.byte	0xf
	.4byte	0x853
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF52
	.2byte	0x26f
	.byte	0xe
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.4byte	0x1101
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.2byte	0x271
	.byte	0xa
	.4byte	0xd83
	.uleb128 0x1
	.4byte	0x1111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	0x111c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	0x1128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	0x1133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	0x1140
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.2byte	0x1f6
	.byte	0x5
	.uleb128 0x1
	.4byte	0x114b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x1101
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.2byte	0x276
	.byte	0xe
	.4byte	0xdd1
	.uleb128 0x1
	.4byte	0x1111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	0x111c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	0x1128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	0x1133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.4byte	0x1140
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.2byte	0x1f6
	.byte	0x5
	.uleb128 0x1
	.4byte	0x114b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x10c2
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.2byte	0x282
	.byte	0x14
	.uleb128 0x1
	.4byte	0x10d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	0x10dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.4byte	0x10e9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.4byte	0x10f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.4byte	0x1101
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.2byte	0x20d
	.byte	0xd
	.uleb128 0x1
	.4byte	0x1111
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.4byte	0x111c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.4byte	0x1128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2
	.4byte	0x1133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x6
	.4byte	0x1140
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.2byte	0x1f6
	.byte	0x5
	.uleb128 0x1
	.4byte	0x114b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x2e0
	.uleb128 0x16
	.4byte	.LASF128
	.2byte	0x245
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa8
	.uleb128 0x5
	.string	"s"
	.2byte	0x245
	.byte	0x2f
	.4byte	0x6bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x8
	.4byte	.LASF121
	.2byte	0x247
	.byte	0xf
	.4byte	0x853
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.4byte	.LASF129
	.2byte	0x248
	.byte	0xe
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF130
	.2byte	0x249
	.byte	0xe
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF131
	.2byte	0x24a
	.byte	0xe
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF132
	.2byte	0x24b
	.byte	0xe
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.string	"i"
	.2byte	0x24c
	.byte	0xe
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.4byte	0x10c2
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.2byte	0x251
	.byte	0x12
	.4byte	0xf58
	.uleb128 0x1
	.4byte	0x10d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	0x10dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	0x10e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	0x10f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.4byte	0x1101
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.2byte	0x20d
	.byte	0xd
	.uleb128 0x1
	.4byte	0x1111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	0x111c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	0x1128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	0x1133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x6
	.4byte	0x1140
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.2byte	0x1f6
	.byte	0x5
	.uleb128 0x1
	.4byte	0x114b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x1101
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.2byte	0x25c
	.byte	0x11
	.uleb128 0x1
	.4byte	0x1111
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.4byte	0x111c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.4byte	0x1128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2
	.4byte	0x1133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x6
	.4byte	0x1140
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.2byte	0x1f6
	.byte	0x5
	.uleb128 0x1
	.4byte	0x114b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF133
	.2byte	0x23c
	.byte	0x12
	.4byte	0x853
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xffd
	.uleb128 0x5
	.string	"s"
	.2byte	0x23c
	.byte	0x3a
	.4byte	0x6bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF134
	.2byte	0x23e
	.byte	0xe
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"low"
	.2byte	0x23f
	.byte	0xe
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF65
	.2byte	0x240
	.byte	0xe
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LASF135
	.2byte	0x229
	.byte	0x14
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1068
	.uleb128 0x5
	.string	"rc"
	.2byte	0x229
	.byte	0x2d
	.4byte	0x1068
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF136
	.2byte	0x229
	.byte	0x3b
	.4byte	0x106d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF52
	.2byte	0x229
	.byte	0x4a
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF137
	.2byte	0x22b
	.byte	0xe
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	0x1140
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.2byte	0x22e
	.byte	0x9
	.uleb128 0x1
	.4byte	0x114b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x281
	.uleb128 0x9
	.4byte	0xba
	.uleb128 0x25
	.4byte	.LASF142
	.2byte	0x217
	.4byte	0x10c2
	.uleb128 0x1d
	.string	"rc"
	.2byte	0x217
	.byte	0x59
	.4byte	0x1068
	.uleb128 0x13
	.4byte	.LASF121
	.2byte	0x218
	.byte	0x26
	.4byte	0x853
	.uleb128 0x13
	.4byte	.LASF136
	.2byte	0x219
	.byte	0x26
	.4byte	0x106d
	.uleb128 0x13
	.4byte	.LASF52
	.2byte	0x219
	.byte	0x35
	.4byte	0xba
	.uleb128 0x21
	.4byte	.LASF129
	.2byte	0x21b
	.4byte	0xba
	.uleb128 0x26
	.string	"i"
	.2byte	0x21c
	.byte	0xe
	.4byte	0xba
	.byte	0
	.uleb128 0x27
	.4byte	.LASF138
	.2byte	0x207
	.byte	0x3b
	.4byte	0xba
	.4byte	0x1101
	.uleb128 0x1d
	.string	"rc"
	.2byte	0x207
	.byte	0x55
	.4byte	0x1068
	.uleb128 0x13
	.4byte	.LASF121
	.2byte	0x208
	.byte	0x22
	.4byte	0x853
	.uleb128 0x13
	.4byte	.LASF52
	.2byte	0x208
	.byte	0x32
	.4byte	0xba
	.uleb128 0x21
	.4byte	.LASF129
	.2byte	0x20a
	.4byte	0xba
	.byte	0
	.uleb128 0x27
	.4byte	.LASF139
	.2byte	0x1f1
	.byte	0x36
	.4byte	0x3e
	.4byte	0x1140
	.uleb128 0x1d
	.string	"rc"
	.2byte	0x1f1
	.byte	0x4c
	.4byte	0x1068
	.uleb128 0x13
	.4byte	.LASF140
	.2byte	0x1f1
	.byte	0x5a
	.4byte	0x853
	.uleb128 0x21
	.4byte	.LASF141
	.2byte	0x1f3
	.4byte	0xba
	.uleb128 0x26
	.string	"bit"
	.2byte	0x1f4
	.byte	0x9
	.4byte	0x3e
	.byte	0
	.uleb128 0x25
	.4byte	.LASF143
	.2byte	0x1de
	.4byte	0x1157
	.uleb128 0x1d
	.string	"rc"
	.2byte	0x1de
	.byte	0x53
	.4byte	0x1068
	.byte	0
	.uleb128 0x14
	.4byte	.LASF144
	.2byte	0x1d8
	.byte	0x14
	.4byte	0x587
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1180
	.uleb128 0x5
	.string	"rc"
	.2byte	0x1d8
	.byte	0x38
	.4byte	0x1180
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x2db
	.uleb128 0x14
	.4byte	.LASF145
	.2byte	0x1cf
	.byte	0x14
	.4byte	0x587
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ae
	.uleb128 0x5
	.string	"rc"
	.2byte	0x1cf
	.byte	0x3b
	.4byte	0x1180
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF146
	.2byte	0x1c1
	.byte	0xd
	.4byte	0x587
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11e4
	.uleb128 0x5
	.string	"rc"
	.2byte	0x1c1
	.byte	0x29
	.4byte	0x1068
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"b"
	.2byte	0x1c1
	.byte	0x3c
	.4byte	0x785
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF147
	.2byte	0x1b6
	.byte	0xd
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1209
	.uleb128 0x5
	.string	"rc"
	.2byte	0x1b6
	.byte	0x25
	.4byte	0x1068
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF148
	.2byte	0x1a0
	.byte	0x11
	.4byte	0xba
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x124f
	.uleb128 0x7
	.4byte	.LASF105
	.2byte	0x1a0
	.byte	0x2f
	.4byte	0x124f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"b"
	.2byte	0x1a0
	.byte	0x44
	.4byte	0x785
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF149
	.2byte	0x1a2
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x1ed
	.uleb128 0x16
	.4byte	.LASF150
	.2byte	0x176
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12a4
	.uleb128 0x7
	.4byte	.LASF105
	.2byte	0x176
	.byte	0x32
	.4byte	0x124f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"b"
	.2byte	0x176
	.byte	0x47
	.4byte	0x785
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF151
	.2byte	0x177
	.byte	0x1d
	.4byte	0x106d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF149
	.2byte	0x179
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF152
	.2byte	0x15a
	.byte	0xd
	.4byte	0x587
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x130a
	.uleb128 0x7
	.4byte	.LASF105
	.2byte	0x15a
	.byte	0x2c
	.4byte	0x124f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"len"
	.2byte	0x15a
	.byte	0x3c
	.4byte	0x106d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF153
	.2byte	0x15a
	.byte	0x4a
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF154
	.2byte	0x15c
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF151
	.2byte	0x15d
	.byte	0xe
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF155
	.2byte	0x14d
	.byte	0x14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x133f
	.uleb128 0x7
	.4byte	.LASF105
	.2byte	0x14d
	.byte	0x30
	.4byte	0x124f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF156
	.2byte	0x14d
	.byte	0x3e
	.4byte	0x9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x14
	.4byte	.LASF157
	.2byte	0x140
	.byte	0x18
	.4byte	0xba
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1387
	.uleb128 0x7
	.4byte	.LASF105
	.2byte	0x140
	.byte	0x3a
	.4byte	0x1387
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF153
	.2byte	0x140
	.byte	0x49
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF132
	.2byte	0x142
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x27c
	.uleb128 0x14
	.4byte	.LASF158
	.2byte	0x135
	.byte	0x14
	.4byte	0x587
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13b6
	.uleb128 0x7
	.4byte	.LASF105
	.2byte	0x135
	.byte	0x3c
	.4byte	0x1387
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF159
	.2byte	0x12c
	.byte	0xd
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13eb
	.uleb128 0x7
	.4byte	.LASF105
	.2byte	0x12c
	.byte	0x2b
	.4byte	0x124f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF160
	.2byte	0x12c
	.byte	0x38
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF161
	.2byte	0x11e
	.byte	0xd
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x141e
	.uleb128 0x7
	.4byte	.LASF105
	.2byte	0x11e
	.byte	0x2b
	.4byte	0x124f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"b"
	.2byte	0x11e
	.byte	0x40
	.4byte	0x785
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.4byte	.LASF162
	.byte	0x93
	.byte	0x18
	.4byte	0xba
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1447
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.byte	0x93
	.byte	0x35
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.4byte	.LASF163
	.byte	0x5d
	.byte	0x14
	.4byte	0x587
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x146f
	.uleb128 0x17
	.4byte	.LASF71
	.byte	0x5d
	.byte	0x3a
	.4byte	0x194
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x22
	.4byte	.LASF164
	.byte	0x57
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1492
	.uleb128 0x17
	.4byte	.LASF71
	.byte	0x57
	.byte	0x3a
	.4byte	0x1492
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x194
	.uleb128 0x22
	.4byte	.LASF165
	.byte	0x51
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14ba
	.uleb128 0x17
	.4byte	.LASF71
	.byte	0x51
	.byte	0x39
	.4byte	0x1492
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.4byte	.LASF166
	.byte	0x4b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14dd
	.uleb128 0x17
	.4byte	.LASF71
	.byte	0x4b
	.byte	0x36
	.4byte	0x1492
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.4byte	.LASF170
	.byte	0x1
	.byte	0x40
	.byte	0x14
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF71
	.byte	0x40
	.byte	0x38
	.4byte	0x1492
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x7a
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
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x16
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
	.sleb128 13
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
	.uleb128 0x17
	.uleb128 0x5
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x21
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.sleb128 55
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x114
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
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
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0x7
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0x7
	.4byte	.LFB7
	.uleb128 .LFE7-.LFB7
	.byte	0x7
	.4byte	.LFB8
	.uleb128 .LFE8-.LFB8
	.byte	0x7
	.4byte	.LFB9
	.uleb128 .LFE9-.LFB9
	.byte	0x7
	.4byte	.LFB10
	.uleb128 .LFE10-.LFB10
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
	.4byte	.LFB17
	.uleb128 .LFE17-.LFB17
	.byte	0x7
	.4byte	.LFB18
	.uleb128 .LFE18-.LFB18
	.byte	0x7
	.4byte	.LFB19
	.uleb128 .LFE19-.LFB19
	.byte	0x7
	.4byte	.LFB20
	.uleb128 .LFE20-.LFB20
	.byte	0x7
	.4byte	.LFB21
	.uleb128 .LFE21-.LFB21
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
	.4byte	.LFB30
	.uleb128 .LFE30-.LFB30
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
	.4byte	.LFB35
	.uleb128 .LFE35-.LFB35
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF109:
	.string	"simple_malloc"
.LASF135:
	.string	"rc_direct"
.LASF51:
	.string	"full"
.LASF116:
	.string	"dict_max"
.LASF45:
	.string	"STATE_LIT_SHORTREP"
.LASF35:
	.string	"lzma_state"
.LASF48:
	.string	"xz_buf"
.LASF36:
	.string	"STATE_LIT_LIT"
.LASF131:
	.string	"match_bit"
.LASF2:
	.string	"unsigned int"
.LASF141:
	.string	"bound"
.LASF82:
	.string	"dist_align"
.LASF122:
	.string	"lzma_main"
.LASF24:
	.string	"XZ_UNSUPPORTED_CHECK"
.LASF49:
	.string	"dictionary"
.LASF129:
	.string	"symbol"
.LASF163:
	.string	"lzma_state_is_literal"
.LASF66:
	.string	"lzma_dec"
.LASF60:
	.string	"init_bytes_left"
.LASF81:
	.string	"dist_special"
.LASF123:
	.string	"pos_state"
.LASF79:
	.string	"is_rep0_long"
.LASF52:
	.string	"limit"
.LASF118:
	.string	"in_avail"
.LASF56:
	.string	"mode"
.LASF22:
	.string	"XZ_OK"
.LASF100:
	.string	"compressed"
.LASF115:
	.string	"xz_dec_lzma2_create"
.LASF93:
	.string	"SEQ_LZMA_PREPARE"
.LASF165:
	.string	"lzma_state_long_rep"
.LASF113:
	.string	"props"
.LASF57:
	.string	"rc_dec"
.LASF29:
	.string	"XZ_DATA_ERROR"
.LASF154:
	.string	"back"
.LASF104:
	.string	"xz_dec_lzma2"
.LASF16:
	.string	"uint32_t"
.LASF88:
	.string	"SEQ_UNCOMPRESSED_1"
.LASF89:
	.string	"SEQ_UNCOMPRESSED_2"
.LASF83:
	.string	"match_len_dec"
.LASF110:
	.string	"memmove"
.LASF38:
	.string	"STATE_REP_LIT_LIT"
.LASF157:
	.string	"dict_get"
.LASF120:
	.string	"lzma_props"
.LASF117:
	.string	"xz_dec_lzma2_run"
.LASF143:
	.string	"rc_normalize"
.LASF11:
	.string	"long long unsigned int"
.LASF164:
	.string	"lzma_state_short_rep"
.LASF121:
	.string	"probs"
.LASF34:
	.string	"out_size"
.LASF160:
	.string	"out_max"
.LASF65:
	.string	"high"
.LASF127:
	.string	"lzma_len"
.LASF87:
	.string	"SEQ_CONTROL"
.LASF13:
	.string	"size_t"
.LASF44:
	.string	"STATE_LIT_LONGREP"
.LASF132:
	.string	"offset"
.LASF103:
	.string	"_Bool"
.LASF19:
	.string	"XZ_DYNALLOC"
.LASF106:
	.string	"lzma2"
.LASF31:
	.string	"in_pos"
.LASF21:
	.string	"xz_ret"
.LASF95:
	.string	"SEQ_COPY"
.LASF18:
	.string	"XZ_PREALLOC"
.LASF33:
	.string	"out_pos"
.LASF62:
	.string	"lzma_len_dec"
.LASF59:
	.string	"code"
.LASF41:
	.string	"STATE_REP_LIT"
.LASF128:
	.string	"lzma_literal"
.LASF130:
	.string	"match_byte"
.LASF149:
	.string	"copy_size"
.LASF150:
	.string	"dict_uncompressed"
.LASF12:
	.string	"char"
.LASF161:
	.string	"dict_reset"
.LASF14:
	.string	"uint8_t"
.LASF159:
	.string	"dict_limit"
.LASF30:
	.string	"XZ_BUF_ERROR"
.LASF102:
	.string	"need_props"
.LASF147:
	.string	"rc_reset"
.LASF26:
	.string	"XZ_MEMLIMIT_ERROR"
.LASF63:
	.string	"choice"
.LASF144:
	.string	"rc_is_finished"
.LASF42:
	.string	"STATE_SHORTREP_LIT"
.LASF134:
	.string	"prev_byte"
.LASF3:
	.string	"long long int"
.LASF47:
	.string	"STATE_NONLIT_REP"
.LASF107:
	.string	"lzma"
.LASF105:
	.string	"dict"
.LASF73:
	.string	"pos_mask"
.LASF125:
	.string	"lzma_rep_match"
.LASF111:
	.string	"memset"
.LASF162:
	.string	"lzma_get_dist_state"
.LASF53:
	.string	"size"
.LASF58:
	.string	"range"
.LASF72:
	.string	"literal_pos_mask"
.LASF39:
	.string	"STATE_SHORTREP_LIT_LIT"
.LASF137:
	.string	"mask"
.LASF86:
	.string	"lzma2_seq"
.LASF27:
	.string	"XZ_FORMAT_ERROR"
.LASF142:
	.string	"rc_bittree_reverse"
.LASF126:
	.string	"lzma_match"
.LASF119:
	.string	"lzma2_lzma"
.LASF40:
	.string	"STATE_MATCH_LIT"
.LASF169:
	.string	"xz_dec_lzma2_end"
.LASF32:
	.string	"in_size"
.LASF96:
	.string	"lzma2_dec"
.LASF4:
	.string	"long double"
.LASF15:
	.string	"uint16_t"
.LASF80:
	.string	"dist_slot"
.LASF37:
	.string	"STATE_MATCH_LIT_LIT"
.LASF101:
	.string	"need_dict_reset"
.LASF97:
	.string	"sequence"
.LASF139:
	.string	"rc_bit"
.LASF25:
	.string	"XZ_MEM_ERROR"
.LASF94:
	.string	"SEQ_LZMA_RUN"
.LASF7:
	.string	"short int"
.LASF146:
	.string	"rc_read_init"
.LASF9:
	.string	"long int"
.LASF55:
	.string	"allocated"
.LASF68:
	.string	"rep1"
.LASF20:
	.string	"xz_mode"
.LASF70:
	.string	"rep3"
.LASF108:
	.string	"temp"
.LASF98:
	.string	"next_sequence"
.LASF168:
	.string	"simple_free"
.LASF76:
	.string	"is_rep0"
.LASF77:
	.string	"is_rep1"
.LASF78:
	.string	"is_rep2"
.LASF90:
	.string	"SEQ_COMPRESSED_0"
.LASF91:
	.string	"SEQ_COMPRESSED_1"
.LASF75:
	.string	"is_rep"
.LASF151:
	.string	"left"
.LASF28:
	.string	"XZ_OPTIONS_ERROR"
.LASF50:
	.string	"start"
.LASF85:
	.string	"literal"
.LASF170:
	.string	"lzma_state_literal"
.LASF140:
	.string	"prob"
.LASF10:
	.string	"long unsigned int"
.LASF133:
	.string	"lzma_literal_probs"
.LASF74:
	.string	"is_match"
.LASF138:
	.string	"rc_bittree"
.LASF156:
	.string	"byte"
.LASF64:
	.string	"choice2"
.LASF6:
	.string	"unsigned char"
.LASF84:
	.string	"rep_len_dec"
.LASF155:
	.string	"dict_put"
.LASF67:
	.string	"rep0"
.LASF69:
	.string	"rep2"
.LASF152:
	.string	"dict_repeat"
.LASF71:
	.string	"state"
.LASF148:
	.string	"dict_flush"
.LASF124:
	.string	"lzma_reset"
.LASF166:
	.string	"lzma_state_match"
.LASF5:
	.string	"signed char"
.LASF8:
	.string	"short unsigned int"
.LASF23:
	.string	"XZ_STREAM_END"
.LASF112:
	.string	"memcpy"
.LASF153:
	.string	"dist"
.LASF158:
	.string	"dict_has_space"
.LASF54:
	.string	"size_max"
.LASF46:
	.string	"STATE_NONLIT_MATCH"
.LASF167:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF43:
	.string	"STATE_LIT_MATCH"
.LASF61:
	.string	"in_limit"
.LASF136:
	.string	"dest"
.LASF17:
	.string	"XZ_SINGLE"
.LASF92:
	.string	"SEQ_PROPERTIES"
.LASF145:
	.string	"rc_limit_exceeded"
.LASF114:
	.string	"xz_dec_lzma2_reset"
.LASF99:
	.string	"uncompressed"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz/xz_dec_lzma2.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
