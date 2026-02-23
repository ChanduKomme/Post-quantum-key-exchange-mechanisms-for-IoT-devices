	.file	"bflb_crypt.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/cipher_suite/src/bflb_crypt.c"
	.section	.sbss.aesCtx,"aw",@nobits
	.align	2
	.type	aesCtx, @object
	.size	aesCtx, 2
aesCtx:
	.zero	2
	.section	.text.bflb_crypt_init_do,"ax",@progbits
	.align	1
	.globl	bflb_crypt_init_do
	.type	bflb_crypt_init_do, @function
bflb_crypt_init_do:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/cipher_suite/src/bflb_crypt.c"
	.loc 1 301 1
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
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 302 13
	sw	zero,-20(s0)
	.loc 1 304 12
	lw	a5,-20(s0)
	.loc 1 305 1
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
.LFE8:
	.size	bflb_crypt_init_do, .-bflb_crypt_init_do
	.section	.rodata
	.align	2
.LC0:
	.string	"unsupported type\r\n"
	.section	.text.bflb_crypt_setkey_do,"ax",@progbits
	.align	1
	.globl	bflb_crypt_setkey_do
	.type	bflb_crypt_setkey_do, @function
bflb_crypt_setkey_do:
.LFB9:
	.loc 1 309 1
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
	mv	a1,a2
	mv	a2,a3
	sw	a4,-48(s0)
	mv	a3,a5
	mv	a4,a6
	mv	a5,a1
	sb	a5,-41(s0)
	mv	a5,a2
	sb	a5,-42(s0)
	mv	a5,a3
	sb	a5,-43(s0)
	mv	a5,a4
	sb	a5,-44(s0)
	.loc 1 310 13
	sw	zero,-20(s0)
	.loc 1 312 35
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 312 5
	li	a4,5
	beq	a5,a4,.L14
	li	a4,5
	bgt	a5,a4,.L5
	li	a4,4
	beq	a5,a4,.L15
	li	a4,4
	bgt	a5,a4,.L5
	li	a4,3
	beq	a5,a4,.L16
	li	a4,3
	bgt	a5,a4,.L5
	li	a4,2
	beq	a5,a4,.L14
	li	a4,2
	bgt	a5,a4,.L5
	beq	a5,zero,.L8
	li	a4,1
	beq	a5,a4,.L9
	j	.L5
.L8:
	.loc 1 315 13
	li	a0,0
	call	Sec_Eng_AES_Enable_BE
	.loc 1 316 13
	lbu	a5,-44(s0)
	addi	a5,a5,-1
	snez	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	lbu	a5,-41(s0)
	mv	a3,a5
	li	a2,2
	li	a1,0
	lui	a5,%hi(aesCtx)
	addi	a0,a5,%lo(aesCtx)
	call	Sec_Eng_AES_Init
	.loc 1 318 13
	j	.L10
.L9:
	.loc 1 320 13
	li	a0,0
	call	Sec_Eng_AES_Enable_BE
	.loc 1 321 13
	lbu	a5,-44(s0)
	addi	a5,a5,-1
	snez	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	lbu	a5,-41(s0)
	mv	a3,a5
	li	a2,1
	li	a1,0
	lui	a5,%hi(aesCtx)
	addi	a0,a5,%lo(aesCtx)
	call	Sec_Eng_AES_Init
	.loc 1 323 13
	j	.L10
.L5:
	.loc 1 332 13
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	bflb_platform_printf
	.loc 1 333 20
	li	a5,-1
	j	.L11
.L14:
	.loc 1 330 13
	nop
	j	.L10
.L15:
	.loc 1 327 13
	nop
	j	.L10
.L16:
	.loc 1 325 13
	nop
.L10:
	.loc 1 337 7
	lbu	a5,-42(s0)
	bne	a5,zero,.L12
	.loc 1 338 9
	lw	a3,-48(s0)
	lw	a2,-40(s0)
	li	a1,1
	li	a0,0
	call	Sec_Eng_AES_Set_Key_IV_BE
	j	.L13
.L12:
	.loc 1 340 9
	lw	a3,-48(s0)
	lw	a2,-40(s0)
	li	a1,0
	li	a0,0
	call	Sec_Eng_AES_Set_Key_IV_BE
.L13:
	.loc 1 343 12
	lw	a5,-20(s0)
.L11:
	.loc 1 344 1
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
.LFE9:
	.size	bflb_crypt_setkey_do, .-bflb_crypt_setkey_do
	.section	.text.bflb_crypt_setadd_do,"ax",@progbits
	.align	1
	.globl	bflb_crypt_setadd_do
	.type	bflb_crypt_setadd_do, @function
bflb_crypt_setadd_do:
.LFB10:
	.loc 1 348 1
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
	mv	a4,a3
	sb	a5,-41(s0)
	mv	a5,a4
	sb	a5,-42(s0)
	.loc 1 349 13
	sw	zero,-20(s0)
	.loc 1 350 12
	lw	a5,-20(s0)
	.loc 1 351 1
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
.LFE10:
	.size	bflb_crypt_setadd_do, .-bflb_crypt_setadd_do
	.section	.text.bflb_crypt_encrypt_do,"ax",@progbits
	.align	1
	.globl	bflb_crypt_encrypt_do
	.type	bflb_crypt_encrypt_do, @function
bflb_crypt_encrypt_do:
.LFB11:
	.loc 1 355 1
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
	.loc 1 356 9
	sw	zero,-20(s0)
	.loc 1 358 5
	lw	a4,-52(s0)
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	li	a1,0
	lui	a5,%hi(aesCtx)
	addi	a0,a5,%lo(aesCtx)
	call	Sec_Eng_AES_Crypt
	.loc 1 360 12
	lw	a5,-20(s0)
	.loc 1 361 1
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
.LFE11:
	.size	bflb_crypt_encrypt_do, .-bflb_crypt_encrypt_do
	.section	.text.bflb_crypt_encrypt_tag_do,"ax",@progbits
	.align	1
	.globl	bflb_crypt_encrypt_tag_do
	.type	bflb_crypt_encrypt_tag_do, @function
bflb_crypt_encrypt_tag_do:
.LFB12:
	.loc 1 367 1
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
	.loc 1 368 9
	sw	zero,-20(s0)
	.loc 1 369 12
	lw	a5,-20(s0)
	.loc 1 370 1
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
.LFE12:
	.size	bflb_crypt_encrypt_tag_do, .-bflb_crypt_encrypt_tag_do
	.section	.text.bflb_crypt_update_do,"ax",@progbits
	.align	1
	.globl	bflb_crypt_update_do
	.type	bflb_crypt_update_do, @function
bflb_crypt_update_do:
.LFB13:
	.loc 1 374 1
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
	.loc 1 375 9
	sw	zero,-20(s0)
	.loc 1 377 5
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	li	a1,0
	lui	a5,%hi(aesCtx)
	addi	a0,a5,%lo(aesCtx)
	call	Sec_Eng_AES_Crypt
	.loc 1 379 12
	lw	a5,-20(s0)
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
.LFE13:
	.size	bflb_crypt_update_do, .-bflb_crypt_update_do
	.section	.text.bflb_crypt_decrypt_do,"ax",@progbits
	.align	1
	.globl	bflb_crypt_decrypt_do
	.type	bflb_crypt_decrypt_do, @function
bflb_crypt_decrypt_do:
.LFB14:
	.loc 1 385 1
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
	.loc 1 386 9
	sw	zero,-20(s0)
	.loc 1 388 5
	lw	a4,-52(s0)
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	li	a1,0
	lui	a5,%hi(aesCtx)
	addi	a0,a5,%lo(aesCtx)
	call	Sec_Eng_AES_Crypt
	.loc 1 390 12
	lw	a5,-20(s0)
	.loc 1 391 1
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
	.size	bflb_crypt_decrypt_do, .-bflb_crypt_decrypt_do
	.section	.text.bflb_crypt_auth_decrypt_do,"ax",@progbits
	.align	1
	.globl	bflb_crypt_auth_decrypt_do
	.type	bflb_crypt_auth_decrypt_do, @function
bflb_crypt_auth_decrypt_do:
.LFB15:
	.loc 1 397 1
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
	.loc 1 398 9
	sw	zero,-20(s0)
	.loc 1 399 12
	lw	a5,-20(s0)
	.loc 1 400 1
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
.LFE15:
	.size	bflb_crypt_auth_decrypt_do, .-bflb_crypt_auth_decrypt_do
	.section	.text.bflb_crypt_finish_do,"ax",@progbits
	.align	1
	.globl	bflb_crypt_finish_do
	.type	bflb_crypt_finish_do, @function
bflb_crypt_finish_do:
.LFB16:
	.loc 1 403 1
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
	.loc 1 404 9
	sw	zero,-20(s0)
	.loc 1 406 5
	li	a0,0
	call	Sec_Eng_AES_Finish
	.loc 1 408 12
	lw	a5,-20(s0)
	.loc 1 409 1
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
	.size	bflb_crypt_finish_do, .-bflb_crypt_finish_do
	.section	.text.bflb_crypt_deinit_do,"ax",@progbits
	.align	1
	.globl	bflb_crypt_deinit_do
	.type	bflb_crypt_deinit_do, @function
bflb_crypt_deinit_do:
.LFB17:
	.loc 1 413 1
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
	.loc 1 414 35
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 414 5
	li	a5,1
	bleu	a4,a5,.L36
	.loc 1 420 13
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	bflb_platform_printf
	.loc 1 421 20
	li	a5,-1
	j	.L34
.L36:
	.loc 1 418 13
	nop
	.loc 1 424 12
	li	a5,0
.L34:
	.loc 1 425 1
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
.LFE17:
	.size	bflb_crypt_deinit_do, .-bflb_crypt_deinit_do
	.section	.text.bflb_crypt_init,"ax",@progbits
	.align	1
	.globl	bflb_crypt_init
	.type	bflb_crypt_init, @function
bflb_crypt_init:
.LFB18:
	.loc 1 429 1
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
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 430 22
	lbu	a5,-37(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	bflb_crypt_init_do
	sw	a0,-20(s0)
	.loc 1 432 7
	lw	a5,-20(s0)
	bne	a5,zero,.L38
	.loc 1 433 37
	lw	a5,-36(s0)
	lbu	a4,-37(s0)
	sb	a4,0(a5)
.L38:
	.loc 1 436 12
	lw	a5,-20(s0)
	.loc 1 437 1
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
	.size	bflb_crypt_init, .-bflb_crypt_init
	.section	.rodata
	.align	2
.LC1:
	.string	"crypt set key fail\r\n"
	.section	.text.bflb_crypt_setkey,"ax",@progbits
	.align	1
	.globl	bflb_crypt_setkey
	.type	bflb_crypt_setkey, @function
bflb_crypt_setkey:
.LFB19:
	.loc 1 441 1
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
	mv	a1,a2
	mv	a2,a3
	sw	a4,-48(s0)
	mv	a3,a5
	mv	a4,a6
	mv	a5,a1
	sb	a5,-41(s0)
	mv	a5,a2
	sb	a5,-42(s0)
	mv	a5,a3
	sb	a5,-43(s0)
	mv	a5,a4
	sb	a5,-44(s0)
	.loc 1 442 13
	sw	zero,-20(s0)
	.loc 1 444 12
	lbu	a4,-44(s0)
	lbu	a5,-43(s0)
	lbu	a3,-42(s0)
	lbu	a2,-41(s0)
	mv	a6,a4
	lw	a4,-48(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	bflb_crypt_setkey_do
	sw	a0,-20(s0)
	.loc 1 446 7
	lw	a5,-20(s0)
	beq	a5,zero,.L41
	.loc 1 447 9
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	bflb_platform_printf
	.loc 1 448 15
	li	a5,-1
	sw	a5,-20(s0)
.L41:
	.loc 1 451 12
	lw	a5,-20(s0)
	.loc 1 452 1
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
.LFE19:
	.size	bflb_crypt_setkey, .-bflb_crypt_setkey
	.section	.rodata
	.align	2
.LC2:
	.string	"crypt set add fail\r\n"
	.section	.text.bflb_crypt_setadd,"ax",@progbits
	.align	1
	.globl	bflb_crypt_setadd
	.type	bflb_crypt_setadd, @function
bflb_crypt_setadd:
.LFB20:
	.loc 1 456 1
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
	mv	a4,a3
	sb	a5,-41(s0)
	mv	a5,a4
	sb	a5,-42(s0)
	.loc 1 459 14
	lbu	a4,-42(s0)
	lbu	a5,-41(s0)
	mv	a3,a4
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	bflb_crypt_setadd_do
	sw	a0,-20(s0)
	.loc 1 461 7
	lw	a5,-20(s0)
	beq	a5,zero,.L44
	.loc 1 462 9
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	bflb_platform_printf
	.loc 1 463 15
	li	a5,-1
	sw	a5,-20(s0)
.L44:
	.loc 1 466 12
	lw	a5,-20(s0)
	.loc 1 467 1
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
.LFE20:
	.size	bflb_crypt_setadd, .-bflb_crypt_setadd
	.section	.rodata
	.align	2
.LC3:
	.string	"crypt encrypt fail\r\n"
	.section	.text.bflb_crypt_encrypt,"ax",@progbits
	.align	1
	.globl	bflb_crypt_encrypt
	.type	bflb_crypt_encrypt, @function
bflb_crypt_encrypt:
.LFB21:
	.loc 1 471 1
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
	.loc 1 474 12
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	bflb_crypt_encrypt_do
	sw	a0,-20(s0)
	.loc 1 476 7
	lw	a5,-20(s0)
	beq	a5,zero,.L47
	.loc 1 478 9
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	bflb_platform_printf
	.loc 1 479 16
	li	a5,-1
	j	.L48
.L47:
	.loc 1 482 12
	li	a5,0
.L48:
	.loc 1 483 1
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
.LFE21:
	.size	bflb_crypt_encrypt, .-bflb_crypt_encrypt
	.section	.rodata
	.align	2
.LC4:
	.string	"crypt encrypt and tag fail\r\n"
	.section	.text.bflb_crypt_encrypt_tag,"ax",@progbits
	.align	1
	.globl	bflb_crypt_encrypt_tag
	.type	bflb_crypt_encrypt_tag, @function
bflb_crypt_encrypt_tag:
.LFB22:
	.loc 1 488 1
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
	.loc 1 491 13
	lbu	a5,0(s0)
	sw	a5,0(sp)
	lw	a7,-64(s0)
	lw	a6,-60(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	bflb_crypt_encrypt_tag_do
	sw	a0,-20(s0)
	.loc 1 493 7
	lw	a5,-20(s0)
	beq	a5,zero,.L50
	.loc 1 495 9
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	bflb_platform_printf
	.loc 1 496 16
	li	a5,-1
	j	.L51
.L50:
	.loc 1 499 12
	li	a5,0
.L51:
	.loc 1 500 1
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
.LFE22:
	.size	bflb_crypt_encrypt_tag, .-bflb_crypt_encrypt_tag
	.section	.rodata
	.align	2
.LC5:
	.string	"crypt update fail\r\n"
	.section	.text.bflb_crypt_update,"ax",@progbits
	.align	1
	.globl	bflb_crypt_update
	.type	bflb_crypt_update, @function
bflb_crypt_update:
.LFB23:
	.loc 1 504 1
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
	.loc 1 507 12
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	bflb_crypt_update_do
	sw	a0,-20(s0)
	.loc 1 509 7
	lw	a5,-20(s0)
	beq	a5,zero,.L53
	.loc 1 511 9
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	bflb_platform_printf
	.loc 1 512 16
	li	a5,-1
	j	.L54
.L53:
	.loc 1 515 12
	li	a5,0
.L54:
	.loc 1 516 1
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
.LFE23:
	.size	bflb_crypt_update, .-bflb_crypt_update
	.section	.rodata
	.align	2
.LC6:
	.string	"crypt decrypt fail\r\n"
	.section	.text.bflb_crypt_decrypt,"ax",@progbits
	.align	1
	.globl	bflb_crypt_decrypt
	.type	bflb_crypt_decrypt, @function
bflb_crypt_decrypt:
.LFB24:
	.loc 1 521 1
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
	.loc 1 524 12
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	bflb_crypt_decrypt_do
	sw	a0,-20(s0)
	.loc 1 526 7
	lw	a5,-20(s0)
	beq	a5,zero,.L56
	.loc 1 528 9
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	bflb_platform_printf
	.loc 1 529 16
	li	a5,-1
	j	.L57
.L56:
	.loc 1 532 12
	li	a5,0
.L57:
	.loc 1 533 1
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
.LFE24:
	.size	bflb_crypt_decrypt, .-bflb_crypt_decrypt
	.section	.rodata
	.align	2
.LC7:
	.string	"crypt auth and decrypt fail\r\n"
	.section	.text.bflb_crypt_auth_decrypt,"ax",@progbits
	.align	1
	.globl	bflb_crypt_auth_decrypt
	.type	bflb_crypt_auth_decrypt, @function
bflb_crypt_auth_decrypt:
.LFB25:
	.loc 1 538 1
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
	.loc 1 541 13
	lbu	a5,0(s0)
	sw	a5,0(sp)
	lw	a7,-64(s0)
	lw	a6,-60(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	bflb_crypt_auth_decrypt_do
	sw	a0,-20(s0)
	.loc 1 543 7
	lw	a5,-20(s0)
	beq	a5,zero,.L59
	.loc 1 545 9
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	bflb_platform_printf
	.loc 1 546 16
	li	a5,-1
	j	.L60
.L59:
	.loc 1 549 12
	li	a5,0
.L60:
	.loc 1 550 1
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
.LFE25:
	.size	bflb_crypt_auth_decrypt, .-bflb_crypt_auth_decrypt
	.section	.rodata
	.align	2
.LC8:
	.string	"crypt finish fail\r\n"
	.section	.text.bflb_crypt_finish,"ax",@progbits
	.align	1
	.globl	bflb_crypt_finish
	.type	bflb_crypt_finish, @function
bflb_crypt_finish:
.LFB26:
	.loc 1 553 1
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
	.loc 1 556 12
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	bflb_crypt_finish_do
	sw	a0,-20(s0)
	.loc 1 558 7
	lw	a5,-20(s0)
	beq	a5,zero,.L62
	.loc 1 560 9
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	bflb_platform_printf
	.loc 1 561 16
	li	a5,-1
	j	.L63
.L62:
	.loc 1 564 12
	li	a5,0
.L63:
	.loc 1 565 1
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
.LFE26:
	.size	bflb_crypt_finish, .-bflb_crypt_finish
	.section	.text.bflb_crypt_deinit,"ax",@progbits
	.align	1
	.globl	bflb_crypt_deinit
	.type	bflb_crypt_deinit, @function
bflb_crypt_deinit:
.LFB27:
	.loc 1 569 1
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
	.loc 1 571 5
	lw	a0,-20(s0)
	call	bflb_crypt_deinit_do
	.loc 1 572 5
	li	a2,1
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 574 12
	li	a5,0
	.loc 1 575 1
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
	.size	bflb_crypt_deinit, .-bflb_crypt_deinit
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sec_eng.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/cipher_suite/inc/bflb_crypt_port.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/cipher_suite/inc/bflb_crypt.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbd8
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x11
	.4byte	.LASF84
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
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x13
	.byte	0x4
	.uleb128 0xa
	.4byte	0x8b
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x47
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x14
	.4byte	0x9e
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0x9
	.4byte	0x32
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0xda
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0xbb
	.uleb128 0x9
	.4byte	0x32
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0xf9
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x5
	.byte	0x3b
	.byte	0x2
	.4byte	0xe6
	.uleb128 0x9
	.4byte	0x32
	.byte	0x5
	.byte	0x51
	.byte	0xe
	.4byte	0x124
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x5
	.byte	0x55
	.byte	0x2
	.4byte	0x105
	.uleb128 0x9
	.4byte	0x32
	.byte	0x5
	.byte	0x5a
	.byte	0xe
	.4byte	0x155
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x5
	.byte	0x5f
	.byte	0x2
	.4byte	0x130
	.uleb128 0x9
	.4byte	0x32
	.byte	0x5
	.byte	0x76
	.byte	0xe
	.4byte	0x17a
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x5
	.byte	0x79
	.byte	0x2
	.4byte	0x161
	.uleb128 0x9
	.4byte	0x32
	.byte	0x5
	.byte	0x7e
	.byte	0xe
	.4byte	0x19f
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x5
	.byte	0x81
	.byte	0x2
	.4byte	0x186
	.uleb128 0x15
	.byte	0x2
	.byte	0x5
	.byte	0xd8
	.byte	0x9
	.4byte	0x1cf
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0xd9
	.byte	0xd
	.4byte	0x9e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x5
	.byte	0xda
	.byte	0x16
	.4byte	0x124
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x5
	.byte	0xdb
	.byte	0x2
	.4byte	0x1ab
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x6
	.byte	0x21
	.4byte	0x1f4
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x2d
	.byte	0xd
	.4byte	0x9e
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x6
	.byte	0x2e
	.byte	0x2
	.4byte	0x1db
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x7
	.byte	0x1b
	.4byte	0x219
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x7
	.byte	0x20
	.byte	0x16
	.4byte	0x1f4
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x7
	.byte	0x21
	.byte	0x2
	.4byte	0x200
	.uleb128 0x4
	.4byte	.LASF57
	.2byte	0x12b
	.byte	0x18
	.4byte	0x1cf
	.uleb128 0x5
	.byte	0x3
	.4byte	aesCtx
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x8
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x257
	.uleb128 0x3
	.4byte	0x84
	.uleb128 0x3
	.4byte	0x63
	.uleb128 0x3
	.4byte	0x71
	.byte	0
	.uleb128 0xc
	.4byte	.LASF48
	.2byte	0x1cd
	.4byte	0xda
	.4byte	0x26c
	.uleb128 0x3
	.4byte	0xf9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.2byte	0x1cb
	.4byte	0xda
	.4byte	0x295
	.uleb128 0x3
	.4byte	0x295
	.uleb128 0x3
	.4byte	0xf9
	.uleb128 0x3
	.4byte	0x29a
	.uleb128 0x3
	.4byte	0xaf
	.uleb128 0x3
	.4byte	0x29f
	.byte	0
	.uleb128 0xa
	.4byte	0x1cf
	.uleb128 0xa
	.4byte	0xaa
	.uleb128 0xa
	.4byte	0x9e
	.uleb128 0x10
	.4byte	.LASF50
	.2byte	0x1c8
	.4byte	0x2c4
	.uleb128 0x3
	.4byte	0xf9
	.uleb128 0x3
	.4byte	0x17a
	.uleb128 0x3
	.4byte	0x29a
	.uleb128 0x3
	.4byte	0x29a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x9
	.byte	0x18
	.byte	0x6
	.4byte	0x2d7
	.uleb128 0x3
	.4byte	0x86
	.uleb128 0x18
	.byte	0
	.uleb128 0xc
	.4byte	.LASF52
	.2byte	0x1bd
	.4byte	0xda
	.4byte	0x300
	.uleb128 0x3
	.4byte	0x295
	.uleb128 0x3
	.4byte	0xf9
	.uleb128 0x3
	.4byte	0x124
	.uleb128 0x3
	.4byte	0x155
	.uleb128 0x3
	.4byte	0x19f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF53
	.2byte	0x1c0
	.4byte	0x311
	.uleb128 0x3
	.4byte	0xf9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF54
	.2byte	0x238
	.4byte	0x92
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33a
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x238
	.byte	0x30
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	0x219
	.uleb128 0x5
	.4byte	.LASF55
	.2byte	0x228
	.4byte	0x92
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x395
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x228
	.byte	0x30
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"tag"
	.2byte	0x228
	.byte	0x46
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.2byte	0x228
	.byte	0x53
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF58
	.2byte	0x22a
	.byte	0xd
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF59
	.2byte	0x217
	.4byte	0x92
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x444
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x217
	.byte	0x36
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"in"
	.2byte	0x217
	.byte	0x52
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF60
	.2byte	0x217
	.byte	0x5e
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"add"
	.2byte	0x218
	.byte	0x28
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF61
	.2byte	0x218
	.byte	0x35
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF62
	.2byte	0x218
	.byte	0x44
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"out"
	.2byte	0x218
	.byte	0x54
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.string	"tag"
	.2byte	0x219
	.byte	0x28
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x219
	.byte	0x34
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF58
	.2byte	0x21b
	.byte	0xd
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF64
	.2byte	0x207
	.4byte	0x92
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b7
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x207
	.byte	0x31
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"in"
	.2byte	0x207
	.byte	0x4d
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.2byte	0x207
	.byte	0x59
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF62
	.2byte	0x208
	.byte	0x20
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"out"
	.2byte	0x208
	.byte	0x30
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF58
	.2byte	0x20a
	.byte	0xd
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF65
	.2byte	0x1f6
	.4byte	0x92
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51b
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x1f6
	.byte	0x30
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"in"
	.2byte	0x1f6
	.byte	0x4c
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.2byte	0x1f6
	.byte	0x58
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"out"
	.2byte	0x1f7
	.byte	0x22
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF58
	.2byte	0x1f9
	.byte	0xd
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF66
	.2byte	0x1e5
	.4byte	0x92
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ca
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x1e5
	.byte	0x35
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"in"
	.2byte	0x1e5
	.byte	0x51
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF60
	.2byte	0x1e5
	.byte	0x5d
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"add"
	.2byte	0x1e6
	.byte	0x28
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF61
	.2byte	0x1e6
	.byte	0x35
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF62
	.2byte	0x1e6
	.byte	0x44
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"out"
	.2byte	0x1e6
	.byte	0x54
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.string	"tag"
	.2byte	0x1e7
	.byte	0x22
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x1e7
	.byte	0x2e
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF58
	.2byte	0x1e9
	.byte	0xd
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF67
	.2byte	0x1d5
	.4byte	0x92
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63d
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x1d5
	.byte	0x31
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"in"
	.2byte	0x1d5
	.byte	0x4d
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.2byte	0x1d5
	.byte	0x59
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF62
	.2byte	0x1d6
	.byte	0x20
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"out"
	.2byte	0x1d6
	.byte	0x30
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF58
	.2byte	0x1d8
	.byte	0xd
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF68
	.2byte	0x1c6
	.4byte	0x92
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a2
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x1c6
	.byte	0x30
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"add"
	.2byte	0x1c6
	.byte	0x4c
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.2byte	0x1c6
	.byte	0x58
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x2
	.string	"dir"
	.2byte	0x1c7
	.byte	0x25
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x4
	.4byte	.LASF58
	.2byte	0x1c9
	.byte	0xd
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF69
	.2byte	0x1b7
	.4byte	0x92
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x734
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x1b7
	.byte	0x30
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"key"
	.2byte	0x1b7
	.byte	0x4c
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF70
	.2byte	0x1b7
	.byte	0x58
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1
	.4byte	.LASF71
	.2byte	0x1b7
	.byte	0x68
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x1
	.4byte	.LASF72
	.2byte	0x1b8
	.byte	0x28
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF73
	.2byte	0x1b8
	.byte	0x36
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -43
	.uleb128 0x2
	.string	"dir"
	.2byte	0x1b8
	.byte	0x48
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF58
	.2byte	0x1ba
	.byte	0xd
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF74
	.2byte	0x1ac
	.4byte	0x92
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x77b
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x1ac
	.byte	0x2e
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x1ac
	.byte	0x43
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x4
	.4byte	.LASF58
	.2byte	0x1ae
	.byte	0xd
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF75
	.2byte	0x19c
	.4byte	0x92
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a4
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x19c
	.byte	0x33
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF76
	.2byte	0x192
	.4byte	0x92
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7fa
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x192
	.byte	0x43
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"tag"
	.2byte	0x192
	.byte	0x6a
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.2byte	0x192
	.byte	0x88
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF58
	.2byte	0x194
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF77
	.2byte	0x189
	.4byte	0x92
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a9
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x189
	.byte	0x49
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"in"
	.2byte	0x189
	.byte	0x76
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF60
	.2byte	0x18a
	.byte	0x32
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"add"
	.2byte	0x18a
	.byte	0x59
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF61
	.2byte	0x18a
	.byte	0x77
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF62
	.2byte	0x18b
	.byte	0x30
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"out"
	.2byte	0x18b
	.byte	0x51
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.string	"tag"
	.2byte	0x18b
	.byte	0x75
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x18c
	.byte	0x31
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF58
	.2byte	0x18e
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF78
	.2byte	0x17f
	.4byte	0x92
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x91c
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x17f
	.byte	0x44
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"in"
	.2byte	0x17f
	.byte	0x71
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.2byte	0x180
	.byte	0x32
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF62
	.2byte	0x180
	.byte	0x4e
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"out"
	.2byte	0x180
	.byte	0x6f
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF58
	.2byte	0x182
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF79
	.2byte	0x174
	.4byte	0x92
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x980
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x174
	.byte	0x43
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"in"
	.2byte	0x175
	.byte	0x28
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.2byte	0x175
	.byte	0x35
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"out"
	.2byte	0x175
	.byte	0x43
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF58
	.2byte	0x177
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF80
	.2byte	0x16b
	.4byte	0x92
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2f
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x16b
	.byte	0x48
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"in"
	.2byte	0x16b
	.byte	0x75
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF60
	.2byte	0x16c
	.byte	0x32
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"add"
	.2byte	0x16c
	.byte	0x59
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF61
	.2byte	0x16d
	.byte	0x32
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF62
	.2byte	0x16d
	.byte	0x52
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"out"
	.2byte	0x16d
	.byte	0x73
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.string	"tag"
	.2byte	0x16e
	.byte	0x32
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x16e
	.byte	0x4f
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF58
	.2byte	0x170
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF81
	.2byte	0x161
	.4byte	0x92
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa2
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x161
	.byte	0x44
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"in"
	.2byte	0x161
	.byte	0x61
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.2byte	0x161
	.byte	0x6d
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF62
	.2byte	0x162
	.byte	0x30
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"out"
	.2byte	0x162
	.byte	0x41
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF58
	.2byte	0x164
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF82
	.2byte	0x15a
	.4byte	0x92
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb06
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x15a
	.byte	0x43
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"add"
	.2byte	0x15a
	.byte	0x70
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.2byte	0x15b
	.byte	0x35
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x2
	.string	"dir"
	.2byte	0x15b
	.byte	0x52
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0xe
	.string	"ret"
	.2byte	0x15d
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF83
	.2byte	0x133
	.4byte	0x92
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb97
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x133
	.byte	0x33
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"key"
	.2byte	0x133
	.byte	0x50
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF70
	.2byte	0x133
	.byte	0x5d
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1
	.4byte	.LASF71
	.2byte	0x133
	.byte	0x6e
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x1
	.4byte	.LASF72
	.2byte	0x134
	.byte	0x28
	.4byte	0x29a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF73
	.2byte	0x134
	.byte	0x47
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -43
	.uleb128 0x2
	.string	"dir"
	.2byte	0x134
	.byte	0x5a
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"ret"
	.2byte	0x136
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x12c
	.byte	0x9
	.4byte	0x92
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x12c
	.byte	0x41
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x12c
	.byte	0x67
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xe
	.string	"ret"
	.2byte	0x12e
	.4byte	0x92
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
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
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
	.sleb128 9
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.sleb128 13
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
	.sleb128 9
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
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x10
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
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
	.4byte	0xb4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
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
	.4byte	.LFB23
	.uleb128 .LFE23-.LFB23
	.byte	0x7
	.4byte	.LFB24
	.uleb128 .LFE24-.LFB24
	.byte	0x7
	.4byte	.LFB25
	.uleb128 .LFE25-.LFB25
	.byte	0x7
	.4byte	.LFB26
	.uleb128 .LFE26-.LFB26
	.byte	0x7
	.4byte	.LFB27
	.uleb128 .LFE27-.LFB27
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"bflb_crypt_cfg_t"
.LASF58:
	.string	"result"
.LASF59:
	.string	"bflb_crypt_auth_decrypt"
.LASF80:
	.string	"bflb_crypt_encrypt_tag_do"
.LASF29:
	.string	"SEC_ENG_AES_KEY_192BITS"
.LASF25:
	.string	"SEC_ENG_AES_CBC"
.LASF22:
	.string	"SEC_ENG_AES_ID_Type"
.LASF23:
	.string	"SEC_ENG_AES_ECB"
.LASF40:
	.string	"SEC_Eng_AES_Ctx"
.LASF13:
	.string	"size_t"
.LASF26:
	.string	"SEC_ENG_AES_Type"
.LASF53:
	.string	"Sec_Eng_AES_Enable_BE"
.LASF79:
	.string	"bflb_crypt_update_do"
.LASF56:
	.string	"crypt_handle"
.LASF39:
	.string	"mode"
.LASF36:
	.string	"SEC_ENG_AES_DECRYPTION"
.LASF4:
	.string	"short int"
.LASF60:
	.string	"in_len"
.LASF68:
	.string	"bflb_crypt_setadd"
.LASF43:
	.string	"tag_bflb_crypt_cfg_t"
.LASF51:
	.string	"bflb_platform_printf"
.LASF15:
	.string	"uint8_t"
.LASF37:
	.string	"SEC_ENG_AES_EnDec_Type"
.LASF50:
	.string	"Sec_Eng_AES_Set_Key_IV_BE"
.LASF16:
	.string	"uint32_t"
.LASF83:
	.string	"bflb_crypt_setkey_do"
.LASF8:
	.string	"long long int"
.LASF48:
	.string	"Sec_Eng_AES_Finish"
.LASF54:
	.string	"bflb_crypt_deinit"
.LASF19:
	.string	"TIMEOUT"
.LASF64:
	.string	"bflb_crypt_decrypt"
.LASF6:
	.string	"long int"
.LASF20:
	.string	"BL_Err_Type"
.LASF32:
	.string	"SEC_ENG_AES_KEY_SW"
.LASF62:
	.string	"offset"
.LASF35:
	.string	"SEC_ENG_AES_ENCRYPTION"
.LASF75:
	.string	"bflb_crypt_deinit_do"
.LASF69:
	.string	"bflb_crypt_setkey"
.LASF85:
	.string	"bflb_crypt_init_do"
.LASF18:
	.string	"ERROR"
.LASF63:
	.string	"tag_len"
.LASF33:
	.string	"SEC_ENG_AES_KEY_HW"
.LASF46:
	.string	"bflb_crypt_handle_t"
.LASF77:
	.string	"bflb_crypt_auth_decrypt_do"
.LASF11:
	.string	"long double"
.LASF72:
	.string	"nonce"
.LASF3:
	.string	"unsigned char"
.LASF30:
	.string	"SEC_ENG_AES_DOUBLE_KEY_128BITS"
.LASF49:
	.string	"Sec_Eng_AES_Crypt"
.LASF28:
	.string	"SEC_ENG_AES_KEY_256BITS"
.LASF61:
	.string	"add_len"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF41:
	.string	"type"
.LASF10:
	.string	"unsigned int"
.LASF57:
	.string	"aesCtx"
.LASF81:
	.string	"bflb_crypt_encrypt_do"
.LASF31:
	.string	"SEC_ENG_AES_Key_Type"
.LASF38:
	.string	"aesFeed"
.LASF74:
	.string	"bflb_crypt_init"
.LASF5:
	.string	"short unsigned int"
.LASF12:
	.string	"char"
.LASF14:
	.string	"int32_t"
.LASF70:
	.string	"keytype"
.LASF73:
	.string	"nonce_len"
.LASF84:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF65:
	.string	"bflb_crypt_update"
.LASF27:
	.string	"SEC_ENG_AES_KEY_128BITS"
.LASF45:
	.string	"crypt_cfg"
.LASF66:
	.string	"bflb_crypt_encrypt_tag"
.LASF55:
	.string	"bflb_crypt_finish"
.LASF7:
	.string	"long unsigned int"
.LASF71:
	.string	"key_len"
.LASF21:
	.string	"SEC_ENG_AES_ID0"
.LASF82:
	.string	"bflb_crypt_setadd_do"
.LASF47:
	.string	"memset"
.LASF78:
	.string	"bflb_crypt_decrypt_do"
.LASF67:
	.string	"bflb_crypt_encrypt"
.LASF44:
	.string	"tag_bflb_crypt_handle_t"
.LASF17:
	.string	"SUCCESS"
.LASF24:
	.string	"SEC_ENG_AES_CTR"
.LASF76:
	.string	"bflb_crypt_finish_do"
.LASF34:
	.string	"SEC_ENG_AES_Key_Src_Type"
.LASF52:
	.string	"Sec_Eng_AES_Init"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/cipher_suite/src/bflb_crypt.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
