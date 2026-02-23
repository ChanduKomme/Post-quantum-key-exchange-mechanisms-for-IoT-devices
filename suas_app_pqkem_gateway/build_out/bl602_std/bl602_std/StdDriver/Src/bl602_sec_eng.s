	.file	"bl602_sec_eng.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sec_eng.c"
	.section	.bss.secEngIntCbfArra,"aw",@nobits
	.align	2
	.type	secEngIntCbfArra, @object
	.size	secEngIntCbfArra, 24
secEngIntCbfArra:
	.zero	24
	.section	.text.Sec_Eng_SHA256_Init,"ax",@progbits
	.align	1
	.globl	Sec_Eng_SHA256_Init
	.type	Sec_Eng_SHA256_Init, @function
Sec_Eng_SHA256_Init:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sec_eng.c"
	.loc 1 206 1
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
	sw	a3,-44(s0)
	sw	a4,-48(s0)
	sb	a5,-37(s0)
	mv	a5,a2
	sb	a5,-38(s0)
	.loc 1 207 14
	li	a5,1073758208
	sw	a5,-20(s0)
	.loc 1 215 15
	lw	a5,-20(s0)
	.loc 1 215 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 216 23
	lw	a5,-24(s0)
	andi	a4,a5,-29
	.loc 1 216 54
	lbu	a5,-38(s0)
	.loc 1 216 73
	slli	a5,a5,2
	.loc 1 216 11
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 217 8
	lw	a5,-20(s0)
	.loc 1 217 41
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 220 5
	li	a2,20
	li	a1,0
	lw	a0,-36(s0)
	call	memset
	.loc 1 223 19
	lw	a5,-36(s0)
	lw	a4,-44(s0)
	sw	a4,8(a5)
	.loc 1 224 23
	lw	a5,-36(s0)
	lw	a4,-48(s0)
	sw	a4,12(a5)
	.loc 1 225 24
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 225 5
	li	a2,64
	li	a1,0
	mv	a0,a5
	call	BL602_MemSet
	.loc 1 226 24
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 226 5
	li	a2,1
	li	a1,128
	mv	a0,a5
	call	BL602_MemSet
	.loc 1 227 1
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
.LFE8:
	.size	Sec_Eng_SHA256_Init, .-Sec_Eng_SHA256_Init
	.section	.text.Sec_Eng_SHA_Start,"ax",@progbits
	.align	1
	.globl	Sec_Eng_SHA_Start
	.type	Sec_Eng_SHA_Start, @function
Sec_Eng_SHA_Start:
.LFB9:
	.loc 1 238 1
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
	.loc 1 239 14
	li	a5,1073758208
	sw	a5,-20(s0)
	.loc 1 246 15
	lw	a5,-20(s0)
	.loc 1 246 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 248 11
	lw	a5,-24(s0)
	ori	a5,a5,32
	sw	a5,-24(s0)
	.loc 1 250 11
	lw	a5,-24(s0)
	andi	a5,a5,-65
	sw	a5,-24(s0)
	.loc 1 252 8
	lw	a5,-20(s0)
	.loc 1 252 41
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 253 1
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
.LFE9:
	.size	Sec_Eng_SHA_Start, .-Sec_Eng_SHA_Start
	.section	.text.Sec_Eng_SHA256_Update,"ax",@progbits
	.align	1
	.globl	Sec_Eng_SHA256_Update
	.type	Sec_Eng_SHA256_Update, @function
Sec_Eng_SHA256_Update:
.LFB10:
	.loc 1 268 1
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
	mv	a5,a1
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sb	a5,-53(s0)
	.loc 1 269 14
	li	a5,1073758208
	sw	a5,-28(s0)
	.loc 1 273 14
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-24(s0)
	.loc 1 275 7
	lw	a5,-64(s0)
	bne	a5,zero,.L4
	.loc 1 276 16
	li	a5,0
	j	.L5
.L4:
	.loc 1 280 19
	lw	a5,-28(s0)
	.loc 1 280 15
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 281 19
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 282 11
	lw	a5,-24(s0)
	bne	a5,zero,.L6
	.loc 1 283 20
	li	a5,2
	j	.L5
.L6:
	.loc 1 285 23
	lw	a5,-32(s0)
	andi	a5,a5,1
	.loc 1 285 38
	bne	a5,zero,.L4
	.loc 1 288 23
	lw	a5,-32(s0)
	andi	a4,a5,-65
	.loc 1 288 71
	lw	a5,-52(s0)
	lbu	a5,16(a5)
	.loc 1 288 81
	slli	a5,a5,6
	.loc 1 288 11
	or	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 290 25
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 290 10
	andi	a5,a5,63
	sw	a5,-20(s0)
	.loc 1 291 10
	li	a4,64
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-36(s0)
	.loc 1 293 18
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 293 22
	lw	a5,-64(s0)
	add	a4,a4,a5
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 1 294 18
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 294 22
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 1 296 22
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 296 7
	lw	a4,-64(s0)
	bleu	a4,a5,.L7
	.loc 1 297 22
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 297 25
	addi	a4,a5,1
	lw	a5,-52(s0)
	sw	a4,4(a5)
.L7:
	.loc 1 300 7
	lw	a5,-20(s0)
	beq	a5,zero,.L8
	.loc 1 300 14 discriminator 1
	lw	a4,-64(s0)
	lw	a5,-36(s0)
	bltu	a4,a5,.L8
	.loc 1 301 55
	lw	a5,-52(s0)
	lw	a4,8(a5)
	.loc 1 301 9
	lw	a5,-20(s0)
	add	a5,a4,a5
	lw	a2,-36(s0)
	lw	a1,-60(s0)
	mv	a0,a5
	call	BL602_MemCpy_Fast
	.loc 1 303 64
	lw	a5,-52(s0)
	lw	a4,8(a5)
	.loc 1 303 37
	lw	a5,-28(s0)
	addi	a5,a5,4
	.loc 1 303 45
	sw	a4,0(a5)
	.loc 1 306 27
	lw	a5,-32(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 306 15
	li	a5,65536
	or	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 307 12
	lw	a5,-28(s0)
	.loc 1 307 45
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 1 309 15
	lw	a5,-32(s0)
	ori	a5,a5,2
	sw	a5,-32(s0)
	.loc 1 310 12
	lw	a5,-28(s0)
	.loc 1 310 45
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 1 312 24
	lw	a5,-52(s0)
	li	a4,1
	sb	a4,16(a5)
	.loc 1 313 15
	lw	a4,-60(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sw	a5,-60(s0)
	.loc 1 314 13
	lw	a4,-64(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	sw	a5,-64(s0)
	.loc 1 315 14
	sw	zero,-20(s0)
.L8:
	.loc 1 318 9
	lw	a5,-64(s0)
	srli	a5,a5,6
	sw	a5,-36(s0)
	.loc 1 319 8
	lw	a5,-64(s0)
	andi	a5,a5,63
	sw	a5,-64(s0)
	.loc 1 320 7
	lw	a5,-36(s0)
	beq	a5,zero,.L9
	.loc 1 322 20
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-24(s0)
.L11:
	.loc 1 324 23
	lw	a5,-28(s0)
	.loc 1 324 19
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 325 23
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 326 15
	lw	a5,-24(s0)
	bne	a5,zero,.L10
	.loc 1 327 24
	li	a5,2
	j	.L5
.L10:
	.loc 1 329 27
	lw	a5,-32(s0)
	andi	a5,a5,1
	.loc 1 329 42
	bne	a5,zero,.L11
	.loc 1 332 27
	lw	a5,-32(s0)
	andi	a4,a5,-65
	.loc 1 332 75
	lw	a5,-52(s0)
	lbu	a5,16(a5)
	.loc 1 332 85
	slli	a5,a5,6
	.loc 1 332 15
	or	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 335 37
	lw	a5,-28(s0)
	addi	a5,a5,4
	.loc 1 335 12
	mv	a4,a5
	.loc 1 335 47
	lw	a5,-60(s0)
	.loc 1 335 45
	sw	a5,0(a4)
	.loc 1 337 27
	lw	a5,-32(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 337 76
	lw	a5,-36(s0)
	slli	a5,a5,16
	.loc 1 337 15
	or	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 338 12
	lw	a5,-28(s0)
	.loc 1 338 45
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 1 340 15
	lw	a5,-32(s0)
	ori	a5,a5,2
	sw	a5,-32(s0)
	.loc 1 341 12
	lw	a5,-28(s0)
	.loc 1 341 45
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 1 343 21
	lw	a5,-36(s0)
	slli	a5,a5,6
	.loc 1 343 14
	lw	a4,-60(s0)
	add	a5,a4,a5
	sw	a5,-60(s0)
	.loc 1 344 24
	lw	a5,-52(s0)
	li	a4,1
	sb	a4,16(a5)
.L9:
	.loc 1 347 7
	lw	a5,-64(s0)
	beq	a5,zero,.L12
	.loc 1 349 20
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-24(s0)
.L14:
	.loc 1 351 23
	lw	a5,-28(s0)
	.loc 1 351 19
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 352 23
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 353 15
	lw	a5,-24(s0)
	bne	a5,zero,.L13
	.loc 1 354 24
	li	a5,2
	j	.L5
.L13:
	.loc 1 356 27
	lw	a5,-32(s0)
	andi	a5,a5,1
	.loc 1 356 42
	bne	a5,zero,.L14
	.loc 1 359 55
	lw	a5,-52(s0)
	lw	a4,8(a5)
	.loc 1 359 9
	lw	a5,-20(s0)
	add	a5,a4,a5
	lw	a2,-64(s0)
	lw	a1,-60(s0)
	mv	a0,a5
	call	BL602_MemCpy_Fast
.L12:
	.loc 1 363 16
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-24(s0)
.L16:
	.loc 1 365 19
	lw	a5,-28(s0)
	.loc 1 365 15
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 366 19
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 367 11
	lw	a5,-24(s0)
	bne	a5,zero,.L15
	.loc 1 368 20
	li	a5,2
	j	.L5
.L15:
	.loc 1 370 23
	lw	a5,-32(s0)
	andi	a5,a5,1
	.loc 1 370 38
	bne	a5,zero,.L16
	.loc 1 372 12
	li	a5,0
.L5:
	.loc 1 373 1
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
.LFE10:
	.size	Sec_Eng_SHA256_Update, .-Sec_Eng_SHA256_Update
	.section	.text.Sec_Eng_SHA256_Finish,"ax",@progbits
	.align	1
	.globl	Sec_Eng_SHA256_Finish
	.type	Sec_Eng_SHA256_Finish, @function
Sec_Eng_SHA256_Finish:
.LFB11:
	.loc 1 386 1
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
	mv	a5,a1
	sw	a2,-76(s0)
	sb	a5,-69(s0)
	.loc 1 391 14
	lw	a5,-76(s0)
	sw	a5,-28(s0)
	.loc 1 392 14
	li	a5,1073758208
	sw	a5,-32(s0)
	.loc 1 394 14
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-24(s0)
.L20:
	.loc 1 401 19
	lw	a5,-32(s0)
	.loc 1 401 15
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 402 19
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 403 11
	lw	a5,-24(s0)
	bne	a5,zero,.L18
	.loc 1 404 20
	li	a5,2
	j	.L29
.L18:
	.loc 1 406 23
	lw	a5,-36(s0)
	andi	a5,a5,1
	.loc 1 406 38
	bne	a5,zero,.L20
	.loc 1 408 27
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 1 408 31
	srli	a4,a5,29
	.loc 1 409 27
	lw	a5,-68(s0)
	lw	a5,4(a5)
	.loc 1 409 31
	slli	a5,a5,3
	.loc 1 408 10
	or	a5,a4,a5
	sw	a5,-40(s0)
	.loc 1 410 26
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 1 410 9
	slli	a5,a5,3
	sw	a5,-44(s0)
	.loc 1 412 43
	lw	a5,-40(s0)
	srli	a5,a5,24
	.loc 1 412 24
	andi	a5,a5,0xff
	.loc 1 412 22
	sb	a5,-60(s0)
	.loc 1 412 91
	lw	a5,-40(s0)
	srli	a5,a5,16
	.loc 1 412 72
	andi	a5,a5,0xff
	.loc 1 412 70
	sb	a5,-59(s0)
	.loc 1 412 139
	lw	a5,-40(s0)
	srli	a5,a5,8
	.loc 1 412 120
	andi	a5,a5,0xff
	.loc 1 412 118
	sb	a5,-58(s0)
	.loc 1 412 167
	lw	a5,-40(s0)
	andi	a5,a5,0xff
	.loc 1 412 165
	sb	a5,-57(s0)
	.loc 1 413 42
	lw	a5,-44(s0)
	srli	a5,a5,24
	.loc 1 413 24
	andi	a5,a5,0xff
	.loc 1 413 22
	sb	a5,-56(s0)
	.loc 1 413 89
	lw	a5,-44(s0)
	srli	a5,a5,16
	.loc 1 413 71
	andi	a5,a5,0xff
	.loc 1 413 69
	sb	a5,-55(s0)
	.loc 1 413 136
	lw	a5,-44(s0)
	srli	a5,a5,8
	.loc 1 413 118
	andi	a5,a5,0xff
	.loc 1 413 116
	sb	a5,-54(s0)
	.loc 1 413 164
	lw	a5,-44(s0)
	andi	a5,a5,0xff
	.loc 1 413 162
	sb	a5,-53(s0)
	.loc 1 415 25
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 1 415 10
	andi	a5,a5,63
	sw	a5,-48(s0)
	.loc 1 416 42
	lw	a4,-48(s0)
	li	a5,55
	bgtu	a4,a5,.L21
	.loc 1 416 10 discriminator 1
	li	a4,56
	lw	a5,-48(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	j	.L22
.L21:
	.loc 1 416 10 is_stmt 0 discriminator 2
	li	a4,120
	lw	a5,-48(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
.L22:
	.loc 1 418 58 is_stmt 1
	lw	a5,-68(s0)
	lw	a4,12(a5)
	.loc 1 418 5
	lbu	a5,-69(s0)
	lw	a3,-20(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-68(s0)
	call	Sec_Eng_SHA256_Update
	.loc 1 421 16
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-24(s0)
.L24:
	.loc 1 423 19
	lw	a5,-32(s0)
	.loc 1 423 15
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 424 19
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 425 11
	lw	a5,-24(s0)
	bne	a5,zero,.L23
	.loc 1 426 20
	li	a5,2
	j	.L29
.L23:
	.loc 1 428 23
	lw	a5,-36(s0)
	andi	a5,a5,1
	.loc 1 428 38
	bne	a5,zero,.L24
	.loc 1 430 29
	lw	a5,-68(s0)
	lw	a5,12(a5)
	.loc 1 430 5
	addi	a4,s0,-60
	li	a2,8
	mv	a1,a4
	mv	a0,a5
	call	BL602_MemCpy_Fast
	.loc 1 431 58
	lw	a5,-68(s0)
	lw	a4,12(a5)
	.loc 1 431 5
	lbu	a5,-69(s0)
	li	a3,8
	mv	a2,a4
	mv	a1,a5
	lw	a0,-68(s0)
	call	Sec_Eng_SHA256_Update
	.loc 1 434 16
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-24(s0)
.L26:
	.loc 1 436 19
	lw	a5,-32(s0)
	.loc 1 436 15
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 437 19
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 438 11
	lw	a5,-24(s0)
	bne	a5,zero,.L25
	.loc 1 439 20
	li	a5,2
	j	.L29
.L25:
	.loc 1 441 23
	lw	a5,-36(s0)
	andi	a5,a5,1
	.loc 1 441 38
	bne	a5,zero,.L26
	.loc 1 443 15
	lw	a5,-32(s0)
	.loc 1 443 11
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 444 69
	lw	a5,-36(s0)
	srli	a5,a5,2
	.loc 1 444 13
	andi	a5,a5,0xff
	.loc 1 444 12
	andi	a5,a5,7
	sb	a5,-49(s0)
	.loc 1 446 40
	lw	a5,-32(s0)
	addi	a5,a5,16
	.loc 1 446 11
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 447 7
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 447 9
	lw	a4,-36(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 447 37
	lw	a5,-36(s0)
	srli	a3,a5,8
	.loc 1 447 26
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 447 28
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 447 61
	lw	a5,-36(s0)
	srli	a3,a5,16
	.loc 1 447 50
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 447 52
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 447 86
	lw	a5,-36(s0)
	srli	a3,a5,24
	.loc 1 447 75
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 447 77
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 448 40
	lw	a5,-32(s0)
	addi	a5,a5,20
	.loc 1 448 11
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 449 7
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 449 9
	lw	a4,-36(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 449 37
	lw	a5,-36(s0)
	srli	a3,a5,8
	.loc 1 449 26
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 449 28
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 449 61
	lw	a5,-36(s0)
	srli	a3,a5,16
	.loc 1 449 50
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 449 52
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 449 86
	lw	a5,-36(s0)
	srli	a3,a5,24
	.loc 1 449 75
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 449 77
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 450 40
	lw	a5,-32(s0)
	addi	a5,a5,24
	.loc 1 450 11
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 451 7
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 451 9
	lw	a4,-36(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 451 37
	lw	a5,-36(s0)
	srli	a3,a5,8
	.loc 1 451 26
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 451 28
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 451 61
	lw	a5,-36(s0)
	srli	a3,a5,16
	.loc 1 451 50
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 451 52
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 451 86
	lw	a5,-36(s0)
	srli	a3,a5,24
	.loc 1 451 75
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 451 77
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 452 40
	lw	a5,-32(s0)
	addi	a5,a5,28
	.loc 1 452 11
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 453 7
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 453 9
	lw	a4,-36(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 453 37
	lw	a5,-36(s0)
	srli	a3,a5,8
	.loc 1 453 26
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 453 28
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 453 61
	lw	a5,-36(s0)
	srli	a3,a5,16
	.loc 1 453 50
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 453 52
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 453 86
	lw	a5,-36(s0)
	srli	a3,a5,24
	.loc 1 453 75
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 453 77
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 454 40
	lw	a5,-32(s0)
	addi	a5,a5,32
	.loc 1 454 11
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 455 7
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 455 9
	lw	a4,-36(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 455 37
	lw	a5,-36(s0)
	srli	a3,a5,8
	.loc 1 455 26
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 455 28
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 455 61
	lw	a5,-36(s0)
	srli	a3,a5,16
	.loc 1 455 50
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 455 52
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 455 86
	lw	a5,-36(s0)
	srli	a3,a5,24
	.loc 1 455 75
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 455 77
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 456 8
	lbu	a4,-49(s0)
	li	a5,1
	beq	a4,a5,.L27
	.loc 1 456 33 discriminator 1
	lbu	a5,-49(s0)
	bne	a5,zero,.L28
.L27:
	.loc 1 457 44
	lw	a5,-32(s0)
	addi	a5,a5,36
	.loc 1 457 15
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 458 11
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 458 13
	lw	a4,-36(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 458 41
	lw	a5,-36(s0)
	srli	a3,a5,8
	.loc 1 458 30
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 458 32
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 458 65
	lw	a5,-36(s0)
	srli	a3,a5,16
	.loc 1 458 54
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 458 56
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 458 90
	lw	a5,-36(s0)
	srli	a3,a5,24
	.loc 1 458 79
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 458 81
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 459 44
	lw	a5,-32(s0)
	addi	a5,a5,40
	.loc 1 459 15
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 460 11
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 460 13
	lw	a4,-36(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 460 41
	lw	a5,-36(s0)
	srli	a3,a5,8
	.loc 1 460 30
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 460 32
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 460 65
	lw	a5,-36(s0)
	srli	a3,a5,16
	.loc 1 460 54
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 460 56
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 460 90
	lw	a5,-36(s0)
	srli	a3,a5,24
	.loc 1 460 79
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 460 81
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 461 12
	lbu	a5,-49(s0)
	bne	a5,zero,.L28
	.loc 1 462 48
	lw	a5,-32(s0)
	addi	a5,a5,44
	.loc 1 462 19
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 463 15
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 463 17
	lw	a4,-36(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 463 45
	lw	a5,-36(s0)
	srli	a3,a5,8
	.loc 1 463 34
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 463 36
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 463 69
	lw	a5,-36(s0)
	srli	a3,a5,16
	.loc 1 463 58
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 463 60
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 463 94
	lw	a5,-36(s0)
	srli	a3,a5,24
	.loc 1 463 83
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 463 85
	andi	a4,a3,0xff
	sb	a4,0(a5)
.L28:
	.loc 1 468 15
	lw	a5,-32(s0)
	.loc 1 468 11
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 469 11
	lw	a5,-36(s0)
	andi	a5,a5,-65
	sw	a5,-36(s0)
	.loc 1 470 11
	lw	a5,-36(s0)
	andi	a5,a5,-33
	sw	a5,-36(s0)
	.loc 1 471 8
	lw	a5,-32(s0)
	.loc 1 471 41
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 473 12
	li	a5,0
.L29:
	.loc 1 474 1
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
.LFE11:
	.size	Sec_Eng_SHA256_Finish, .-Sec_Eng_SHA256_Finish
	.section	.text.Sec_Eng_SHA_Enable_Link,"ax",@progbits
	.align	1
	.globl	Sec_Eng_SHA_Enable_Link
	.type	Sec_Eng_SHA_Enable_Link, @function
Sec_Eng_SHA_Enable_Link:
.LFB12:
	.loc 1 485 1
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
	.loc 1 486 14
	li	a5,1073758208
	sw	a5,-20(s0)
	.loc 1 493 17
	lw	a5,-20(s0)
	.loc 1 493 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 494 12
	lw	a5,-24(s0)
	ori	a5,a5,32
	sw	a5,-24(s0)
	.loc 1 495 12
	lw	a4,-24(s0)
	li	a5,32768
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 496 8
	lw	a5,-20(s0)
	.loc 1 496 41
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 497 1
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
.LFE12:
	.size	Sec_Eng_SHA_Enable_Link, .-Sec_Eng_SHA_Enable_Link
	.section	.text.Sec_Eng_SHA_Disable_Link,"ax",@progbits
	.align	1
	.globl	Sec_Eng_SHA_Disable_Link
	.type	Sec_Eng_SHA_Disable_Link, @function
Sec_Eng_SHA_Disable_Link:
.LFB13:
	.loc 1 508 1
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
	.loc 1 509 14
	li	a5,1073758208
	sw	a5,-20(s0)
	.loc 1 516 17
	lw	a5,-20(s0)
	.loc 1 516 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 517 12
	lw	a4,-24(s0)
	li	a5,-32768
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 518 12
	lw	a5,-24(s0)
	andi	a5,a5,-33
	sw	a5,-24(s0)
	.loc 1 519 8
	lw	a5,-20(s0)
	.loc 1 519 41
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 520 1
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
.LFE13:
	.size	Sec_Eng_SHA_Disable_Link, .-Sec_Eng_SHA_Disable_Link
	.section	.text.Sec_Eng_SHA256_Link_Init,"ax",@progbits
	.align	1
	.globl	Sec_Eng_SHA256_Link_Init
	.type	Sec_Eng_SHA256_Link_Init, @function
Sec_Eng_SHA256_Link_Init:
.LFB14:
	.loc 1 537 1
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
	.loc 1 542 5
	li	a2,20
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 545 19
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	sw	a4,8(a5)
	.loc 1 546 23
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,12(a5)
	.loc 1 547 24
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 547 5
	li	a2,64
	li	a1,0
	mv	a0,a5
	call	BL602_MemSet
	.loc 1 548 24
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 548 5
	li	a2,1
	li	a1,128
	mv	a0,a5
	call	BL602_MemSet
	.loc 1 549 21
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,16(a5)
	.loc 1 550 1
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
.LFE14:
	.size	Sec_Eng_SHA256_Link_Init, .-Sec_Eng_SHA256_Link_Init
	.section	.text.Sec_Eng_SHA256_Link_Update,"ax",@progbits
	.align	1
	.globl	Sec_Eng_SHA256_Link_Update
	.type	Sec_Eng_SHA256_Link_Update, @function
Sec_Eng_SHA256_Link_Update:
.LFB15:
	.loc 1 565 1
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
	mv	a5,a1
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sb	a5,-53(s0)
	.loc 1 566 14
	li	a5,1073758208
	sw	a5,-28(s0)
	.loc 1 570 14
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-24(s0)
	.loc 1 572 7
	lw	a5,-64(s0)
	bne	a5,zero,.L34
	.loc 1 573 16
	li	a5,0
	j	.L35
.L34:
	.loc 1 577 19
	lw	a5,-28(s0)
	.loc 1 577 15
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 578 19
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 579 11
	lw	a5,-24(s0)
	bne	a5,zero,.L36
	.loc 1 580 20
	li	a5,2
	j	.L35
.L36:
	.loc 1 582 23
	lw	a5,-32(s0)
	andi	a5,a5,1
	.loc 1 582 38
	bne	a5,zero,.L34
	.loc 1 585 33
	lw	a5,-28(s0)
	addi	a5,a5,80
	.loc 1 585 8
	mv	a4,a5
	.loc 1 585 50
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 1 585 42
	sw	a5,0(a4)
	.loc 1 587 25
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 587 10
	andi	a5,a5,63
	sw	a5,-20(s0)
	.loc 1 588 10
	li	a4,64
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-36(s0)
	.loc 1 590 18
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 590 22
	lw	a5,-64(s0)
	add	a4,a4,a5
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 1 591 18
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 591 22
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 1 593 22
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 593 7
	lw	a4,-64(s0)
	bleu	a4,a5,.L37
	.loc 1 594 22
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 594 25
	addi	a4,a5,1
	lw	a5,-52(s0)
	sw	a4,4(a5)
.L37:
	.loc 1 597 7
	lw	a5,-20(s0)
	beq	a5,zero,.L38
	.loc 1 597 14 discriminator 1
	lw	a4,-64(s0)
	lw	a5,-36(s0)
	bltu	a4,a5,.L38
	.loc 1 598 55
	lw	a5,-52(s0)
	lw	a4,8(a5)
	.loc 1 598 9
	lw	a5,-20(s0)
	add	a5,a4,a5
	lw	a2,-36(s0)
	lw	a1,-60(s0)
	mv	a0,a5
	call	BL602_MemCpy_Fast
	.loc 1 600 61
	lw	a5,-52(s0)
	lw	a4,8(a5)
	.loc 1 600 29
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 1 600 39
	addi	a5,a5,4
	.loc 1 600 43
	sw	a4,0(a5)
	.loc 1 603 29
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 1 603 39
	addi	a5,a5,2
	mv	a4,a5
	.loc 1 603 43
	li	a5,1
	sh	a5,0(a4)
	.loc 1 605 21
	lw	a5,-28(s0)
	.loc 1 605 16
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 606 12
	lw	a5,-28(s0)
	.loc 1 606 58
	lw	a4,-32(s0)
	ori	a4,a4,2
	.loc 1 606 45
	sw	a4,0(a5)
	.loc 1 609 29
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 1 609 9
	lw	a5,0(a5)
	.loc 1 609 29
	lw	a4,-52(s0)
	lw	a4,16(a4)
	.loc 1 609 41
	ori	a5,a5,64
	sw	a5,0(a4)
	.loc 1 610 15
	lw	a4,-60(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sw	a5,-60(s0)
	.loc 1 611 13
	lw	a4,-64(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	sw	a5,-64(s0)
	.loc 1 612 14
	sw	zero,-20(s0)
.L38:
	.loc 1 615 9
	lw	a5,-64(s0)
	srli	a5,a5,6
	sw	a5,-36(s0)
	.loc 1 616 8
	lw	a5,-64(s0)
	andi	a5,a5,63
	sw	a5,-64(s0)
	.loc 1 617 7
	lw	a5,-36(s0)
	beq	a5,zero,.L39
	.loc 1 619 20
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-24(s0)
.L41:
	.loc 1 621 23
	lw	a5,-28(s0)
	.loc 1 621 19
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 622 23
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 623 15
	lw	a5,-24(s0)
	bne	a5,zero,.L40
	.loc 1 624 24
	li	a5,2
	j	.L35
.L40:
	.loc 1 626 27
	lw	a5,-32(s0)
	andi	a5,a5,1
	.loc 1 626 42
	bne	a5,zero,.L41
	.loc 1 629 29
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 1 629 39
	addi	a5,a5,4
	.loc 1 629 10
	mv	a4,a5
	.loc 1 629 45
	lw	a5,-60(s0)
	.loc 1 629 43
	sw	a5,0(a4)
	.loc 1 630 29
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 1 630 39
	addi	a5,a5,2
	mv	a4,a5
	.loc 1 630 43
	lw	a5,-36(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,0(a4)
	.loc 1 633 21
	lw	a5,-28(s0)
	.loc 1 633 16
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 634 12
	lw	a5,-28(s0)
	.loc 1 634 58
	lw	a4,-32(s0)
	ori	a4,a4,2
	.loc 1 634 45
	sw	a4,0(a5)
	.loc 1 636 21
	lw	a5,-36(s0)
	slli	a5,a5,6
	.loc 1 636 14
	lw	a4,-60(s0)
	add	a5,a4,a5
	sw	a5,-60(s0)
	.loc 1 638 29
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 1 638 9
	lw	a5,0(a5)
	.loc 1 638 29
	lw	a4,-52(s0)
	lw	a4,16(a4)
	.loc 1 638 41
	ori	a5,a5,64
	sw	a5,0(a4)
.L39:
	.loc 1 641 7
	lw	a5,-64(s0)
	beq	a5,zero,.L42
	.loc 1 643 20
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-24(s0)
.L44:
	.loc 1 645 23
	lw	a5,-28(s0)
	.loc 1 645 19
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 646 23
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 647 15
	lw	a5,-24(s0)
	bne	a5,zero,.L43
	.loc 1 648 24
	li	a5,2
	j	.L35
.L43:
	.loc 1 650 27
	lw	a5,-32(s0)
	andi	a5,a5,1
	.loc 1 650 42
	bne	a5,zero,.L44
	.loc 1 653 55
	lw	a5,-52(s0)
	lw	a4,8(a5)
	.loc 1 653 9
	lw	a5,-20(s0)
	add	a5,a4,a5
	lw	a2,-64(s0)
	lw	a1,-60(s0)
	mv	a0,a5
	call	BL602_MemCpy_Fast
.L42:
	.loc 1 657 16
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-24(s0)
.L46:
	.loc 1 659 19
	lw	a5,-28(s0)
	.loc 1 659 15
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 660 19
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 661 11
	lw	a5,-24(s0)
	bne	a5,zero,.L45
	.loc 1 662 20
	li	a5,2
	j	.L35
.L45:
	.loc 1 664 23
	lw	a5,-32(s0)
	andi	a5,a5,1
	.loc 1 664 38
	bne	a5,zero,.L46
	.loc 1 666 12
	li	a5,0
.L35:
	.loc 1 667 1
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
	.size	Sec_Eng_SHA256_Link_Update, .-Sec_Eng_SHA256_Link_Update
	.section	.text.Sec_Eng_SHA256_Link_Finish,"ax",@progbits
	.align	1
	.globl	Sec_Eng_SHA256_Link_Finish
	.type	Sec_Eng_SHA256_Link_Finish, @function
Sec_Eng_SHA256_Link_Finish:
.LFB16:
	.loc 1 680 1
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
	mv	a5,a1
	sw	a2,-76(s0)
	sb	a5,-69(s0)
	.loc 1 684 14
	li	a5,1073758208
	sw	a5,-28(s0)
	.loc 1 686 44
	lw	a5,-68(s0)
	lw	a5,16(a5)
	.loc 1 686 25
	lw	a5,0(a5)
	.loc 1 686 55
	srli	a5,a5,2
	.loc 1 686 14
	andi	a5,a5,7
	sw	a5,-32(s0)
	.loc 1 687 14
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-24(s0)
.L50:
	.loc 1 694 19
	lw	a5,-28(s0)
	.loc 1 694 15
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 695 19
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 696 11
	lw	a5,-24(s0)
	bne	a5,zero,.L48
	.loc 1 697 20
	li	a5,2
	j	.L63
.L48:
	.loc 1 699 23
	lw	a5,-36(s0)
	andi	a5,a5,1
	.loc 1 699 38
	bne	a5,zero,.L50
	.loc 1 702 33
	lw	a5,-28(s0)
	addi	a5,a5,80
	.loc 1 702 8
	mv	a4,a5
	.loc 1 702 50
	lw	a5,-68(s0)
	lw	a5,16(a5)
	.loc 1 702 42
	sw	a5,0(a4)
	.loc 1 704 27
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 1 704 31
	srli	a4,a5,29
	.loc 1 705 27
	lw	a5,-68(s0)
	lw	a5,4(a5)
	.loc 1 705 31
	slli	a5,a5,3
	.loc 1 704 10
	or	a5,a4,a5
	sw	a5,-40(s0)
	.loc 1 706 26
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 1 706 9
	slli	a5,a5,3
	sw	a5,-44(s0)
	.loc 1 708 43
	lw	a5,-40(s0)
	srli	a5,a5,24
	.loc 1 708 24
	andi	a5,a5,0xff
	.loc 1 708 22
	sb	a5,-56(s0)
	.loc 1 708 91
	lw	a5,-40(s0)
	srli	a5,a5,16
	.loc 1 708 72
	andi	a5,a5,0xff
	.loc 1 708 70
	sb	a5,-55(s0)
	.loc 1 708 139
	lw	a5,-40(s0)
	srli	a5,a5,8
	.loc 1 708 120
	andi	a5,a5,0xff
	.loc 1 708 118
	sb	a5,-54(s0)
	.loc 1 708 167
	lw	a5,-40(s0)
	andi	a5,a5,0xff
	.loc 1 708 165
	sb	a5,-53(s0)
	.loc 1 709 42
	lw	a5,-44(s0)
	srli	a5,a5,24
	.loc 1 709 24
	andi	a5,a5,0xff
	.loc 1 709 22
	sb	a5,-52(s0)
	.loc 1 709 89
	lw	a5,-44(s0)
	srli	a5,a5,16
	.loc 1 709 71
	andi	a5,a5,0xff
	.loc 1 709 69
	sb	a5,-51(s0)
	.loc 1 709 136
	lw	a5,-44(s0)
	srli	a5,a5,8
	.loc 1 709 118
	andi	a5,a5,0xff
	.loc 1 709 116
	sb	a5,-50(s0)
	.loc 1 709 164
	lw	a5,-44(s0)
	andi	a5,a5,0xff
	.loc 1 709 162
	sb	a5,-49(s0)
	.loc 1 711 25
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 1 711 10
	andi	a5,a5,63
	sw	a5,-48(s0)
	.loc 1 712 42
	lw	a4,-48(s0)
	li	a5,55
	bgtu	a4,a5,.L51
	.loc 1 712 10 discriminator 1
	li	a4,56
	lw	a5,-48(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	j	.L52
.L51:
	.loc 1 712 10 is_stmt 0 discriminator 2
	li	a4,120
	lw	a5,-48(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
.L52:
	.loc 1 714 63 is_stmt 1
	lw	a5,-68(s0)
	lw	a4,12(a5)
	.loc 1 714 5
	lbu	a5,-69(s0)
	lw	a3,-20(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-68(s0)
	call	Sec_Eng_SHA256_Link_Update
	.loc 1 717 16
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-24(s0)
.L54:
	.loc 1 719 19
	lw	a5,-28(s0)
	.loc 1 719 15
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 720 19
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 721 11
	lw	a5,-24(s0)
	bne	a5,zero,.L53
	.loc 1 722 20
	li	a5,2
	j	.L63
.L53:
	.loc 1 724 23
	lw	a5,-36(s0)
	andi	a5,a5,1
	.loc 1 724 38
	bne	a5,zero,.L54
	.loc 1 726 5
	addi	a4,s0,-56
	lbu	a5,-69(s0)
	li	a3,8
	mv	a2,a4
	mv	a1,a5
	lw	a0,-68(s0)
	call	Sec_Eng_SHA256_Link_Update
	.loc 1 729 16
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-24(s0)
.L56:
	.loc 1 731 19
	lw	a5,-28(s0)
	.loc 1 731 15
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 732 19
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 733 11
	lw	a5,-24(s0)
	bne	a5,zero,.L55
	.loc 1 734 20
	li	a5,2
	j	.L63
.L55:
	.loc 1 736 23
	lw	a5,-36(s0)
	andi	a5,a5,1
	.loc 1 736 38
	bne	a5,zero,.L56
	.loc 1 739 5
	lw	a4,-32(s0)
	li	a5,3
	beq	a4,a5,.L57
	lw	a4,-32(s0)
	li	a5,3
	bgtu	a4,a5,.L64
	lw	a4,-32(s0)
	li	a5,2
	beq	a4,a5,.L59
	lw	a4,-32(s0)
	li	a5,2
	bgtu	a4,a5,.L64
	lw	a5,-32(s0)
	beq	a5,zero,.L60
	lw	a4,-32(s0)
	li	a5,1
	beq	a4,a5,.L61
	.loc 1 753 13
	j	.L64
.L60:
	.loc 1 741 54
	lw	a5,-68(s0)
	lw	a5,16(a5)
	.loc 1 741 64
	addi	a5,a5,8
	.loc 1 741 13
	li	a2,32
	mv	a1,a5
	lw	a0,-76(s0)
	call	BL602_MemCpy_Fast
	.loc 1 742 13
	j	.L62
.L61:
	.loc 1 744 54
	lw	a5,-68(s0)
	lw	a5,16(a5)
	.loc 1 744 64
	addi	a5,a5,8
	.loc 1 744 13
	li	a2,28
	mv	a1,a5
	lw	a0,-76(s0)
	call	BL602_MemCpy_Fast
	.loc 1 745 13
	j	.L62
.L59:
	.loc 1 747 54
	lw	a5,-68(s0)
	lw	a5,16(a5)
	.loc 1 747 64
	addi	a5,a5,8
	.loc 1 747 13
	li	a2,20
	mv	a1,a5
	lw	a0,-76(s0)
	call	BL602_MemCpy_Fast
	.loc 1 748 13
	j	.L62
.L57:
	.loc 1 750 54
	lw	a5,-68(s0)
	lw	a5,16(a5)
	.loc 1 750 64
	addi	a5,a5,8
	.loc 1 750 13
	li	a2,20
	mv	a1,a5
	lw	a0,-76(s0)
	call	BL602_MemCpy_Fast
	.loc 1 751 13
	j	.L62
.L64:
	.loc 1 753 13
	nop
.L62:
	.loc 1 757 25
	lw	a5,-68(s0)
	lw	a5,16(a5)
	.loc 1 757 5
	lw	a5,0(a5)
	.loc 1 757 25
	lw	a4,-68(s0)
	lw	a4,16(a4)
	.loc 1 757 37
	andi	a5,a5,-65
	sw	a5,0(a4)
	.loc 1 759 12
	li	a5,0
.L63:
	.loc 1 760 1
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
	.size	Sec_Eng_SHA256_Link_Finish, .-Sec_Eng_SHA256_Link_Finish
	.section	.text.Sec_Eng_AES_Init,"ax",@progbits
	.align	1
	.globl	Sec_Eng_AES_Init
	.type	Sec_Eng_AES_Init, @function
Sec_Eng_AES_Init:
.LFB17:
	.loc 1 776 1
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
	mv	a5,a2
	sb	a5,-38(s0)
	mv	a5,a3
	sb	a5,-39(s0)
	mv	a5,a4
	sb	a5,-40(s0)
	.loc 1 777 14
	li	a5,1073758208
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 779 14
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-20(s0)
.L68:
	.loc 1 789 19
	lw	a5,-24(s0)
	.loc 1 789 15
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 790 19
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 791 11
	lw	a5,-20(s0)
	bne	a5,zero,.L66
	.loc 1 792 20
	li	a5,2
	j	.L67
.L66:
	.loc 1 794 23
	lw	a5,-28(s0)
	andi	a5,a5,1
	.loc 1 794 38
	bne	a5,zero,.L68
	.loc 1 797 23
	lw	a4,-28(s0)
	li	a5,-12288
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 797 55
	lbu	a5,-38(s0)
	.loc 1 797 74
	slli	a5,a5,12
	.loc 1 797 11
	or	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 800 23
	lw	a5,-28(s0)
	andi	a4,a5,-25
	.loc 1 800 54
	lbu	a5,-39(s0)
	.loc 1 800 73
	slli	a5,a5,3
	.loc 1 800 11
	or	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 803 23
	lw	a5,-28(s0)
	andi	a4,a5,-33
	.loc 1 803 54
	lbu	a5,-40(s0)
	.loc 1 803 75
	slli	a5,a5,5
	.loc 1 803 11
	or	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 806 11
	lw	a5,-28(s0)
	andi	a5,a5,-65
	sw	a5,-28(s0)
	.loc 1 809 11
	lw	a4,-28(s0)
	li	a5,-16384
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 812 11
	lw	a5,-28(s0)
	ori	a5,a5,512
	sw	a5,-28(s0)
	.loc 1 815 11
	lw	a5,-28(s0)
	ori	a5,a5,4
	sw	a5,-28(s0)
	.loc 1 817 8
	lw	a5,-24(s0)
	.loc 1 817 41
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 1 820 5
	li	a2,2
	li	a1,0
	lw	a0,-36(s0)
	call	memset
	.loc 1 822 12
	li	a5,0
.L67:
	.loc 1 823 1
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
.LFE17:
	.size	Sec_Eng_AES_Init, .-Sec_Eng_AES_Init
	.section	.text.Sec_Eng_AES_Enable_BE,"ax",@progbits
	.align	1
	.globl	Sec_Eng_AES_Enable_BE
	.type	Sec_Eng_AES_Enable_BE, @function
Sec_Eng_AES_Enable_BE:
.LFB18:
	.loc 1 834 1
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
	.loc 1 835 14
	li	a5,1073758208
	addi	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 840 33
	lw	a5,-20(s0)
	addi	a5,a5,72
	.loc 1 840 8
	mv	a4,a5
	.loc 1 840 42
	li	a5,15
	sw	a5,0(a4)
	.loc 1 841 1
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
.LFE18:
	.size	Sec_Eng_AES_Enable_BE, .-Sec_Eng_AES_Enable_BE
	.section	.text.Sec_Eng_AES_Enable_LE,"ax",@progbits
	.align	1
	.globl	Sec_Eng_AES_Enable_LE
	.type	Sec_Eng_AES_Enable_LE, @function
Sec_Eng_AES_Enable_LE:
.LFB19:
	.loc 1 852 1
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
	.loc 1 853 14
	li	a5,1073758208
	addi	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 858 33
	lw	a5,-20(s0)
	addi	a5,a5,72
	.loc 1 858 42
	sw	zero,0(a5)
	.loc 1 859 1
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
.LFE19:
	.size	Sec_Eng_AES_Enable_LE, .-Sec_Eng_AES_Enable_LE
	.section	.text.Sec_Eng_AES_Enable_Link,"ax",@progbits
	.align	1
	.globl	Sec_Eng_AES_Enable_Link
	.type	Sec_Eng_AES_Enable_Link, @function
Sec_Eng_AES_Enable_Link:
.LFB20:
	.loc 1 870 1
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
	.loc 1 871 14
	li	a5,1073758208
	sw	a5,-20(s0)
	.loc 1 878 42
	lw	a5,-20(s0)
	addi	a5,a5,256
	.loc 1 878 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 879 33
	lw	a5,-20(s0)
	addi	a5,a5,256
	.loc 1 879 8
	mv	a3,a5
	.loc 1 879 56
	lw	a4,-24(s0)
	li	a5,32768
	or	a5,a4,a5
	.loc 1 879 43
	sw	a5,0(a3)
	.loc 1 880 1
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
.LFE20:
	.size	Sec_Eng_AES_Enable_Link, .-Sec_Eng_AES_Enable_Link
	.section	.text.Sec_Eng_AES_Disable_Link,"ax",@progbits
	.align	1
	.globl	Sec_Eng_AES_Disable_Link
	.type	Sec_Eng_AES_Disable_Link, @function
Sec_Eng_AES_Disable_Link:
.LFB21:
	.loc 1 891 1
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
	.loc 1 892 14
	li	a5,1073758208
	sw	a5,-20(s0)
	.loc 1 899 42
	lw	a5,-20(s0)
	addi	a5,a5,256
	.loc 1 899 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 900 33
	lw	a5,-20(s0)
	addi	a5,a5,256
	.loc 1 900 8
	mv	a3,a5
	.loc 1 900 56
	lw	a4,-24(s0)
	li	a5,-32768
	addi	a5,a5,-1
	and	a5,a4,a5
	.loc 1 900 43
	sw	a5,0(a3)
	.loc 1 901 1
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
.LFE21:
	.size	Sec_Eng_AES_Disable_Link, .-Sec_Eng_AES_Disable_Link
	.section	.text.Sec_Eng_AES_Link_Work,"ax",@progbits
	.align	1
	.globl	Sec_Eng_AES_Link_Work
	.type	Sec_Eng_AES_Link_Work, @function
Sec_Eng_AES_Link_Work:
.LFB22:
	.loc 1 917 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sb	a5,-33(s0)
	.loc 1 918 14
	li	a5,1073758208
	sw	a5,-24(s0)
	.loc 1 920 14
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-20(s0)
	.loc 1 926 17
	lw	a5,-40(s0)
	andi	a5,a5,3
	.loc 1 926 7
	bne	a5,zero,.L74
	.loc 1 926 35 discriminator 1
	lw	a5,-48(s0)
	andi	a5,a5,15
	.loc 1 926 29 discriminator 1
	beq	a5,zero,.L75
.L74:
	.loc 1 927 16
	li	a5,1
	j	.L76
.L75:
	.loc 1 932 44
	lw	a5,-24(s0)
	addi	a5,a5,256
	.loc 1 932 15
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 933 19
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 934 11
	lw	a5,-20(s0)
	bne	a5,zero,.L77
	.loc 1 935 20
	li	a5,2
	j	.L76
.L77:
	.loc 1 937 23
	lw	a5,-28(s0)
	andi	a5,a5,1
	.loc 1 937 38
	bne	a5,zero,.L75
	.loc 1 940 33
	lw	a5,-24(s0)
	addi	a5,a5,336
	.loc 1 940 8
	mv	a4,a5
	.loc 1 940 43
	lw	a5,-40(s0)
	sw	a5,0(a4)
	.loc 1 943 27
	lw	a5,-40(s0)
	addi	a5,a5,4
	.loc 1 943 6
	mv	a4,a5
	.loc 1 943 33
	lw	a5,-44(s0)
	.loc 1 943 31
	sw	a5,0(a4)
	.loc 1 944 27
	lw	a5,-40(s0)
	addi	a5,a5,8
	.loc 1 944 6
	mv	a4,a5
	.loc 1 944 33
	lw	a5,-52(s0)
	.loc 1 944 31
	sw	a5,0(a4)
	.loc 1 947 36
	lw	a5,-48(s0)
	srli	a3,a5,4
	.loc 1 947 27
	lw	a5,-40(s0)
	addi	a5,a5,2
	mv	a4,a5
	.loc 1 947 31
	slli	a5,a3,16
	srli	a5,a5,16
	sh	a5,0(a4)
	.loc 1 950 42
	lw	a5,-24(s0)
	addi	a5,a5,256
	.loc 1 950 12
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 951 33
	lw	a5,-24(s0)
	addi	a5,a5,256
	.loc 1 951 8
	mv	a4,a5
	.loc 1 951 56
	lw	a5,-28(s0)
	ori	a5,a5,4
	.loc 1 951 43
	sw	a5,0(a4)
	.loc 1 954 42
	lw	a5,-24(s0)
	addi	a5,a5,256
	.loc 1 954 12
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 955 33
	lw	a5,-24(s0)
	addi	a5,a5,256
	.loc 1 955 8
	mv	a4,a5
	.loc 1 955 56
	lw	a5,-28(s0)
	ori	a5,a5,2
	.loc 1 955 43
	sw	a5,0(a4)
	.loc 1 956 5
 #APP
# 956 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sec_eng.c" 1
	nop
# 0 "" 2
	.loc 1 957 5
# 957 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sec_eng.c" 1
	nop
# 0 "" 2
	.loc 1 958 16
 #NO_APP
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-20(s0)
.L79:
	.loc 1 960 44
	lw	a5,-24(s0)
	addi	a5,a5,256
	.loc 1 960 15
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 961 19
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 962 11
	lw	a5,-20(s0)
	bne	a5,zero,.L78
	.loc 1 963 20
	li	a5,2
	j	.L76
.L78:
	.loc 1 965 23
	lw	a5,-28(s0)
	andi	a5,a5,1
	.loc 1 965 38
	bne	a5,zero,.L79
	.loc 1 968 33
	lw	a5,-24(s0)
	addi	a5,a5,256
	.loc 1 968 8
	mv	a4,a5
	.loc 1 968 56
	lw	a5,-28(s0)
	andi	a5,a5,-5
	.loc 1 968 43
	sw	a5,0(a4)
	.loc 1 970 12
	li	a5,0
.L76:
	.loc 1 971 1
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
.LFE22:
	.size	Sec_Eng_AES_Link_Work, .-Sec_Eng_AES_Link_Work
	.section	.text.Sec_Eng_AES_Set_Hw_Key_Src,"ax",@progbits
	.align	1
	.globl	Sec_Eng_AES_Set_Hw_Key_Src
	.type	Sec_Eng_AES_Set_Hw_Key_Src, @function
Sec_Eng_AES_Set_Hw_Key_Src:
.LFB23:
	.loc 1 983 1
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
	mv	a4,a1
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 984 14
	li	a5,1073758208
	addi	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 990 40
	lw	a5,-20(s0)
	addi	a5,a5,76
	.loc 1 990 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 991 23
	lw	a5,-24(s0)
	andi	a4,a5,-2
	.loc 1 991 69
	lbu	a5,-34(s0)
	.loc 1 991 11
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 993 33
	lw	a5,-20(s0)
	addi	a5,a5,76
	.loc 1 993 8
	mv	a4,a5
	.loc 1 993 42
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 994 1
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
.LFE23:
	.size	Sec_Eng_AES_Set_Hw_Key_Src, .-Sec_Eng_AES_Set_Hw_Key_Src
	.section	.text.Sec_Eng_AES_Set_Key_IV,"ax",@progbits
	.align	1
	.globl	Sec_Eng_AES_Set_Key_IV
	.type	Sec_Eng_AES_Set_Key_IV, @function
Sec_Eng_AES_Set_Key_IV:
.LFB24:
	.loc 1 1009 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a2,-152(s0)
	sw	a3,-156(s0)
	sb	a5,-145(s0)
	mv	a5,a4
	sb	a5,-146(s0)
	.loc 1 1010 14
	li	a5,1073758208
	addi	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 1019 54
	lw	a5,-156(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1019 57
	slli	a4,a5,24
	.loc 1 1019 66
	lw	a5,-156(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1019 69
	slli	a5,a5,16
	.loc 1 1019 62
	or	a4,a4,a5
	.loc 1 1019 78
	lw	a5,-156(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1019 81
	slli	a5,a5,8
	.loc 1 1019 74
	or	a5,a4,a5
	.loc 1 1019 89
	lw	a4,-156(s0)
	lbu	a4,0(a4)
	.loc 1 1019 85
	or	a5,a5,a4
	.loc 1 1019 44
	mv	a4,a5
	.loc 1 1019 33
	lw	a5,-20(s0)
	addi	a5,a5,28
	.loc 1 1019 8
	mv	a2,a5
	sw	a4,-56(s0)
.LBB30:
.LBB31:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"
	.loc 2 100 14
	sw	zero,-60(s0)
	.loc 2 102 18
	lw	a5,-56(s0)
	slli	a4,a5,24
	.loc 2 102 34
	lw	a5,-56(s0)
	srli	a5,a5,24
	.loc 2 102 9
	or	a5,a4,a5
	sw	a5,-60(s0)
	.loc 2 103 9
	lw	a4,-60(s0)
	li	a5,-16777216
	addi	a5,a5,255
	and	a5,a4,a5
	sw	a5,-60(s0)
	.loc 2 104 20
	lw	a5,-56(s0)
	srli	a4,a5,8
	.loc 2 104 26
	li	a5,65536
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 104 50
	lw	a5,-56(s0)
	slli	a3,a5,8
	.loc 2 104 56
	li	a5,16711680
	and	a5,a3,a5
	.loc 2 104 40
	or	a5,a4,a5
	.loc 2 104 9
	lw	a4,-60(s0)
	or	a5,a4,a5
	sw	a5,-60(s0)
	.loc 2 106 12
	lw	a5,-60(s0)
.LBE31:
.LBE30:
	.loc 1 1019 42 discriminator 1
	sw	a5,0(a2)
	.loc 1 1020 7
	lw	a5,-156(s0)
	addi	a5,a5,4
	sw	a5,-156(s0)
	.loc 1 1021 54
	lw	a5,-156(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1021 57
	slli	a4,a5,24
	.loc 1 1021 66
	lw	a5,-156(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1021 69
	slli	a5,a5,16
	.loc 1 1021 62
	or	a4,a4,a5
	.loc 1 1021 78
	lw	a5,-156(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1021 81
	slli	a5,a5,8
	.loc 1 1021 74
	or	a5,a4,a5
	.loc 1 1021 89
	lw	a4,-156(s0)
	lbu	a4,0(a4)
	.loc 1 1021 85
	or	a5,a5,a4
	.loc 1 1021 44
	mv	a4,a5
	.loc 1 1021 33
	lw	a5,-20(s0)
	addi	a5,a5,24
	.loc 1 1021 8
	mv	a2,a5
	sw	a4,-48(s0)
.LBB32:
.LBB33:
	.loc 2 100 14
	sw	zero,-52(s0)
	.loc 2 102 18
	lw	a5,-48(s0)
	slli	a4,a5,24
	.loc 2 102 34
	lw	a5,-48(s0)
	srli	a5,a5,24
	.loc 2 102 9
	or	a5,a4,a5
	sw	a5,-52(s0)
	.loc 2 103 9
	lw	a4,-52(s0)
	li	a5,-16777216
	addi	a5,a5,255
	and	a5,a4,a5
	sw	a5,-52(s0)
	.loc 2 104 20
	lw	a5,-48(s0)
	srli	a4,a5,8
	.loc 2 104 26
	li	a5,65536
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 104 50
	lw	a5,-48(s0)
	slli	a3,a5,8
	.loc 2 104 56
	li	a5,16711680
	and	a5,a3,a5
	.loc 2 104 40
	or	a5,a4,a5
	.loc 2 104 9
	lw	a4,-52(s0)
	or	a5,a4,a5
	sw	a5,-52(s0)
	.loc 2 106 12
	lw	a5,-52(s0)
.LBE33:
.LBE32:
	.loc 1 1021 42 discriminator 1
	sw	a5,0(a2)
	.loc 1 1022 7
	lw	a5,-156(s0)
	addi	a5,a5,4
	sw	a5,-156(s0)
	.loc 1 1023 54
	lw	a5,-156(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1023 57
	slli	a4,a5,24
	.loc 1 1023 66
	lw	a5,-156(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1023 69
	slli	a5,a5,16
	.loc 1 1023 62
	or	a4,a4,a5
	.loc 1 1023 78
	lw	a5,-156(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1023 81
	slli	a5,a5,8
	.loc 1 1023 74
	or	a5,a4,a5
	.loc 1 1023 89
	lw	a4,-156(s0)
	lbu	a4,0(a4)
	.loc 1 1023 85
	or	a5,a5,a4
	.loc 1 1023 44
	mv	a4,a5
	.loc 1 1023 33
	lw	a5,-20(s0)
	addi	a5,a5,20
	.loc 1 1023 8
	mv	a2,a5
	sw	a4,-40(s0)
.LBB34:
.LBB35:
	.loc 2 100 14
	sw	zero,-44(s0)
	.loc 2 102 18
	lw	a5,-40(s0)
	slli	a4,a5,24
	.loc 2 102 34
	lw	a5,-40(s0)
	srli	a5,a5,24
	.loc 2 102 9
	or	a5,a4,a5
	sw	a5,-44(s0)
	.loc 2 103 9
	lw	a4,-44(s0)
	li	a5,-16777216
	addi	a5,a5,255
	and	a5,a4,a5
	sw	a5,-44(s0)
	.loc 2 104 20
	lw	a5,-40(s0)
	srli	a4,a5,8
	.loc 2 104 26
	li	a5,65536
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 104 50
	lw	a5,-40(s0)
	slli	a3,a5,8
	.loc 2 104 56
	li	a5,16711680
	and	a5,a3,a5
	.loc 2 104 40
	or	a5,a4,a5
	.loc 2 104 9
	lw	a4,-44(s0)
	or	a5,a4,a5
	sw	a5,-44(s0)
	.loc 2 106 12
	lw	a5,-44(s0)
.LBE35:
.LBE34:
	.loc 1 1023 42 discriminator 1
	sw	a5,0(a2)
	.loc 1 1024 7
	lw	a5,-156(s0)
	addi	a5,a5,4
	sw	a5,-156(s0)
	.loc 1 1025 54
	lw	a5,-156(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1025 57
	slli	a4,a5,24
	.loc 1 1025 66
	lw	a5,-156(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1025 69
	slli	a5,a5,16
	.loc 1 1025 62
	or	a4,a4,a5
	.loc 1 1025 78
	lw	a5,-156(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1025 81
	slli	a5,a5,8
	.loc 1 1025 74
	or	a5,a4,a5
	.loc 1 1025 89
	lw	a4,-156(s0)
	lbu	a4,0(a4)
	.loc 1 1025 85
	or	a5,a5,a4
	.loc 1 1025 44
	mv	a4,a5
	.loc 1 1025 33
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 1025 8
	mv	a2,a5
	sw	a4,-32(s0)
.LBB36:
.LBB37:
	.loc 2 100 14
	sw	zero,-36(s0)
	.loc 2 102 18
	lw	a5,-32(s0)
	slli	a4,a5,24
	.loc 2 102 34
	lw	a5,-32(s0)
	srli	a5,a5,24
	.loc 2 102 9
	or	a5,a4,a5
	sw	a5,-36(s0)
	.loc 2 103 9
	lw	a4,-36(s0)
	li	a5,-16777216
	addi	a5,a5,255
	and	a5,a4,a5
	sw	a5,-36(s0)
	.loc 2 104 20
	lw	a5,-32(s0)
	srli	a4,a5,8
	.loc 2 104 26
	li	a5,65536
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 104 50
	lw	a5,-32(s0)
	slli	a3,a5,8
	.loc 2 104 56
	li	a5,16711680
	and	a5,a3,a5
	.loc 2 104 40
	or	a5,a4,a5
	.loc 2 104 9
	lw	a4,-36(s0)
	or	a5,a4,a5
	sw	a5,-36(s0)
	.loc 2 106 12
	lw	a5,-36(s0)
.LBE37:
.LBE36:
	.loc 1 1025 42 discriminator 1
	sw	a5,0(a2)
	.loc 1 1026 7
	lw	a5,-156(s0)
	addi	a5,a5,4
	sw	a5,-156(s0)
	.loc 1 1029 7
	lbu	a4,-146(s0)
	li	a5,1
	bne	a4,a5,.L86
	.loc 1 1030 19
	lw	a5,-20(s0)
	.loc 1 1030 15
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1031 15
	lw	a5,-24(s0)
	ori	a5,a5,128
	sw	a5,-24(s0)
	.loc 1 1032 12
	lw	a5,-20(s0)
	.loc 1 1032 45
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 1034 44
	lw	a5,-20(s0)
	addi	a5,a5,64
	.loc 1 1034 15
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1035 27
	lw	a5,-24(s0)
	andi	a5,a5,-4
	.loc 1 1035 69
	lw	a4,-152(s0)
	lbu	a4,0(a4)
	.loc 1 1035 15
	or	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 1036 37
	lw	a5,-20(s0)
	addi	a5,a5,64
	.loc 1 1036 12
	mv	a4,a5
	.loc 1 1036 46
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 1038 44
	lw	a5,-20(s0)
	addi	a5,a5,68
	.loc 1 1038 15
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1039 27
	lw	a5,-24(s0)
	andi	a5,a5,-4
	.loc 1 1039 69
	lw	a4,-152(s0)
	lbu	a4,0(a4)
	.loc 1 1039 15
	or	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 1040 37
	lw	a5,-20(s0)
	addi	a5,a5,68
	.loc 1 1040 12
	mv	a4,a5
	.loc 1 1040 46
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 1042 9
	j	.L81
.L86:
	.loc 1 1045 55
	lw	a5,-152(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1045 58
	slli	a4,a5,24
	.loc 1 1045 68
	lw	a5,-152(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1045 71
	slli	a5,a5,16
	.loc 1 1045 63
	or	a4,a4,a5
	.loc 1 1045 81
	lw	a5,-152(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1045 84
	slli	a5,a5,8
	.loc 1 1045 76
	or	a5,a4,a5
	.loc 1 1045 93
	lw	a4,-152(s0)
	lbu	a4,0(a4)
	.loc 1 1045 88
	or	a5,a5,a4
	.loc 1 1045 44
	mv	a4,a5
	.loc 1 1045 33
	lw	a5,-20(s0)
	addi	a5,a5,60
	.loc 1 1045 8
	mv	a2,a5
	sw	a4,-88(s0)
.LBB38:
.LBB39:
	.loc 2 100 14
	sw	zero,-92(s0)
	.loc 2 102 18
	lw	a5,-88(s0)
	slli	a4,a5,24
	.loc 2 102 34
	lw	a5,-88(s0)
	srli	a5,a5,24
	.loc 2 102 9
	or	a5,a4,a5
	sw	a5,-92(s0)
	.loc 2 103 9
	lw	a4,-92(s0)
	li	a5,-16777216
	addi	a5,a5,255
	and	a5,a4,a5
	sw	a5,-92(s0)
	.loc 2 104 20
	lw	a5,-88(s0)
	srli	a4,a5,8
	.loc 2 104 26
	li	a5,65536
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 104 50
	lw	a5,-88(s0)
	slli	a3,a5,8
	.loc 2 104 56
	li	a5,16711680
	and	a5,a3,a5
	.loc 2 104 40
	or	a5,a4,a5
	.loc 2 104 9
	lw	a4,-92(s0)
	or	a5,a4,a5
	sw	a5,-92(s0)
	.loc 2 106 12
	lw	a5,-92(s0)
.LBE39:
.LBE38:
	.loc 1 1045 42 discriminator 1
	sw	a5,0(a2)
	.loc 1 1046 8
	lw	a5,-152(s0)
	addi	a5,a5,4
	sw	a5,-152(s0)
	.loc 1 1047 55
	lw	a5,-152(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1047 58
	slli	a4,a5,24
	.loc 1 1047 68
	lw	a5,-152(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1047 71
	slli	a5,a5,16
	.loc 1 1047 63
	or	a4,a4,a5
	.loc 1 1047 81
	lw	a5,-152(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1047 84
	slli	a5,a5,8
	.loc 1 1047 76
	or	a5,a4,a5
	.loc 1 1047 93
	lw	a4,-152(s0)
	lbu	a4,0(a4)
	.loc 1 1047 88
	or	a5,a5,a4
	.loc 1 1047 44
	mv	a4,a5
	.loc 1 1047 33
	lw	a5,-20(s0)
	addi	a5,a5,56
	.loc 1 1047 8
	mv	a2,a5
	sw	a4,-80(s0)
.LBB40:
.LBB41:
	.loc 2 100 14
	sw	zero,-84(s0)
	.loc 2 102 18
	lw	a5,-80(s0)
	slli	a4,a5,24
	.loc 2 102 34
	lw	a5,-80(s0)
	srli	a5,a5,24
	.loc 2 102 9
	or	a5,a4,a5
	sw	a5,-84(s0)
	.loc 2 103 9
	lw	a4,-84(s0)
	li	a5,-16777216
	addi	a5,a5,255
	and	a5,a4,a5
	sw	a5,-84(s0)
	.loc 2 104 20
	lw	a5,-80(s0)
	srli	a4,a5,8
	.loc 2 104 26
	li	a5,65536
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 104 50
	lw	a5,-80(s0)
	slli	a3,a5,8
	.loc 2 104 56
	li	a5,16711680
	and	a5,a3,a5
	.loc 2 104 40
	or	a5,a4,a5
	.loc 2 104 9
	lw	a4,-84(s0)
	or	a5,a4,a5
	sw	a5,-84(s0)
	.loc 2 106 12
	lw	a5,-84(s0)
.LBE41:
.LBE40:
	.loc 1 1047 42 discriminator 1
	sw	a5,0(a2)
	.loc 1 1048 8
	lw	a5,-152(s0)
	addi	a5,a5,4
	sw	a5,-152(s0)
	.loc 1 1049 55
	lw	a5,-152(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1049 58
	slli	a4,a5,24
	.loc 1 1049 68
	lw	a5,-152(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1049 71
	slli	a5,a5,16
	.loc 1 1049 63
	or	a4,a4,a5
	.loc 1 1049 81
	lw	a5,-152(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1049 84
	slli	a5,a5,8
	.loc 1 1049 76
	or	a5,a4,a5
	.loc 1 1049 93
	lw	a4,-152(s0)
	lbu	a4,0(a4)
	.loc 1 1049 88
	or	a5,a5,a4
	.loc 1 1049 44
	mv	a4,a5
	.loc 1 1049 33
	lw	a5,-20(s0)
	addi	a5,a5,52
	.loc 1 1049 8
	mv	a2,a5
	sw	a4,-72(s0)
.LBB42:
.LBB43:
	.loc 2 100 14
	sw	zero,-76(s0)
	.loc 2 102 18
	lw	a5,-72(s0)
	slli	a4,a5,24
	.loc 2 102 34
	lw	a5,-72(s0)
	srli	a5,a5,24
	.loc 2 102 9
	or	a5,a4,a5
	sw	a5,-76(s0)
	.loc 2 103 9
	lw	a4,-76(s0)
	li	a5,-16777216
	addi	a5,a5,255
	and	a5,a4,a5
	sw	a5,-76(s0)
	.loc 2 104 20
	lw	a5,-72(s0)
	srli	a4,a5,8
	.loc 2 104 26
	li	a5,65536
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 104 50
	lw	a5,-72(s0)
	slli	a3,a5,8
	.loc 2 104 56
	li	a5,16711680
	and	a5,a3,a5
	.loc 2 104 40
	or	a5,a4,a5
	.loc 2 104 9
	lw	a4,-76(s0)
	or	a5,a4,a5
	sw	a5,-76(s0)
	.loc 2 106 12
	lw	a5,-76(s0)
.LBE43:
.LBE42:
	.loc 1 1049 42 discriminator 1
	sw	a5,0(a2)
	.loc 1 1050 8
	lw	a5,-152(s0)
	addi	a5,a5,4
	sw	a5,-152(s0)
	.loc 1 1051 55
	lw	a5,-152(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1051 58
	slli	a4,a5,24
	.loc 1 1051 68
	lw	a5,-152(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1051 71
	slli	a5,a5,16
	.loc 1 1051 63
	or	a4,a4,a5
	.loc 1 1051 81
	lw	a5,-152(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1051 84
	slli	a5,a5,8
	.loc 1 1051 76
	or	a5,a4,a5
	.loc 1 1051 93
	lw	a4,-152(s0)
	lbu	a4,0(a4)
	.loc 1 1051 88
	or	a5,a5,a4
	.loc 1 1051 44
	mv	a4,a5
	.loc 1 1051 33
	lw	a5,-20(s0)
	addi	a5,a5,48
	.loc 1 1051 8
	mv	a2,a5
	sw	a4,-64(s0)
.LBB44:
.LBB45:
	.loc 2 100 14
	sw	zero,-68(s0)
	.loc 2 102 18
	lw	a5,-64(s0)
	slli	a4,a5,24
	.loc 2 102 34
	lw	a5,-64(s0)
	srli	a5,a5,24
	.loc 2 102 9
	or	a5,a4,a5
	sw	a5,-68(s0)
	.loc 2 103 9
	lw	a4,-68(s0)
	li	a5,-16777216
	addi	a5,a5,255
	and	a5,a4,a5
	sw	a5,-68(s0)
	.loc 2 104 20
	lw	a5,-64(s0)
	srli	a4,a5,8
	.loc 2 104 26
	li	a5,65536
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 104 50
	lw	a5,-64(s0)
	slli	a3,a5,8
	.loc 2 104 56
	li	a5,16711680
	and	a5,a3,a5
	.loc 2 104 40
	or	a5,a4,a5
	.loc 2 104 9
	lw	a4,-68(s0)
	or	a5,a4,a5
	sw	a5,-68(s0)
	.loc 2 106 12
	lw	a5,-68(s0)
.LBE45:
.LBE44:
	.loc 1 1051 42 discriminator 1
	sw	a5,0(a2)
	.loc 1 1052 8
	lw	a5,-152(s0)
	addi	a5,a5,4
	sw	a5,-152(s0)
	.loc 1 1054 15
	lw	a5,-20(s0)
	.loc 1 1054 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1055 51
	lw	a5,-24(s0)
	srli	a5,a5,3
	.loc 1 1055 12
	andi	a5,a5,3
	sw	a5,-28(s0)
	.loc 1 1056 7
	lw	a4,-28(s0)
	li	a5,2
	bne	a4,a5,.L92
	.loc 1 1057 59
	lw	a5,-152(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1057 62
	slli	a4,a5,24
	.loc 1 1057 72
	lw	a5,-152(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1057 75
	slli	a5,a5,16
	.loc 1 1057 67
	or	a4,a4,a5
	.loc 1 1057 85
	lw	a5,-152(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1057 88
	slli	a5,a5,8
	.loc 1 1057 80
	or	a5,a4,a5
	.loc 1 1057 97
	lw	a4,-152(s0)
	lbu	a4,0(a4)
	.loc 1 1057 92
	or	a5,a5,a4
	.loc 1 1057 48
	mv	a4,a5
	.loc 1 1057 37
	lw	a5,-20(s0)
	addi	a5,a5,44
	.loc 1 1057 12
	mv	a2,a5
	sw	a4,-104(s0)
.LBB46:
.LBB47:
	.loc 2 100 14
	sw	zero,-108(s0)
	.loc 2 102 18
	lw	a5,-104(s0)
	slli	a4,a5,24
	.loc 2 102 34
	lw	a5,-104(s0)
	srli	a5,a5,24
	.loc 2 102 9
	or	a5,a4,a5
	sw	a5,-108(s0)
	.loc 2 103 9
	lw	a4,-108(s0)
	li	a5,-16777216
	addi	a5,a5,255
	and	a5,a4,a5
	sw	a5,-108(s0)
	.loc 2 104 20
	lw	a5,-104(s0)
	srli	a4,a5,8
	.loc 2 104 26
	li	a5,65536
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 104 50
	lw	a5,-104(s0)
	slli	a3,a5,8
	.loc 2 104 56
	li	a5,16711680
	and	a5,a3,a5
	.loc 2 104 40
	or	a5,a4,a5
	.loc 2 104 9
	lw	a4,-108(s0)
	or	a5,a4,a5
	sw	a5,-108(s0)
	.loc 2 106 12
	lw	a5,-108(s0)
.LBE47:
.LBE46:
	.loc 1 1057 46 discriminator 1
	sw	a5,0(a2)
	.loc 1 1058 12
	lw	a5,-152(s0)
	addi	a5,a5,4
	sw	a5,-152(s0)
	.loc 1 1059 59
	lw	a5,-152(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1059 62
	slli	a4,a5,24
	.loc 1 1059 72
	lw	a5,-152(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1059 75
	slli	a5,a5,16
	.loc 1 1059 67
	or	a4,a4,a5
	.loc 1 1059 85
	lw	a5,-152(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1059 88
	slli	a5,a5,8
	.loc 1 1059 80
	or	a5,a4,a5
	.loc 1 1059 97
	lw	a4,-152(s0)
	lbu	a4,0(a4)
	.loc 1 1059 92
	or	a5,a5,a4
	.loc 1 1059 48
	mv	a4,a5
	.loc 1 1059 37
	lw	a5,-20(s0)
	addi	a5,a5,40
	.loc 1 1059 12
	mv	a2,a5
	sw	a4,-96(s0)
.LBB48:
.LBB49:
	.loc 2 100 14
	sw	zero,-100(s0)
	.loc 2 102 18
	lw	a5,-96(s0)
	slli	a4,a5,24
	.loc 2 102 34
	lw	a5,-96(s0)
	srli	a5,a5,24
	.loc 2 102 9
	or	a5,a4,a5
	sw	a5,-100(s0)
	.loc 2 103 9
	lw	a4,-100(s0)
	li	a5,-16777216
	addi	a5,a5,255
	and	a5,a4,a5
	sw	a5,-100(s0)
	.loc 2 104 20
	lw	a5,-96(s0)
	srli	a4,a5,8
	.loc 2 104 26
	li	a5,65536
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 104 50
	lw	a5,-96(s0)
	slli	a3,a5,8
	.loc 2 104 56
	li	a5,16711680
	and	a5,a3,a5
	.loc 2 104 40
	or	a5,a4,a5
	.loc 2 104 9
	lw	a4,-100(s0)
	or	a5,a4,a5
	sw	a5,-100(s0)
	.loc 2 106 12
	lw	a5,-100(s0)
.LBE49:
.LBE48:
	.loc 1 1059 46 discriminator 1
	sw	a5,0(a2)
	.loc 1 1060 12
	lw	a5,-152(s0)
	addi	a5,a5,4
	sw	a5,-152(s0)
	j	.L95
.L92:
	.loc 1 1061 13
	lw	a4,-28(s0)
	li	a5,1
	beq	a4,a5,.L96
	.loc 1 1061 57 discriminator 1
	lw	a4,-28(s0)
	li	a5,3
	bne	a4,a5,.L95
.L96:
	.loc 1 1062 59
	lw	a5,-152(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1062 62
	slli	a4,a5,24
	.loc 1 1062 72
	lw	a5,-152(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1062 75
	slli	a5,a5,16
	.loc 1 1062 67
	or	a4,a4,a5
	.loc 1 1062 85
	lw	a5,-152(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1062 88
	slli	a5,a5,8
	.loc 1 1062 80
	or	a5,a4,a5
	.loc 1 1062 97
	lw	a4,-152(s0)
	lbu	a4,0(a4)
	.loc 1 1062 92
	or	a5,a5,a4
	.loc 1 1062 48
	mv	a4,a5
	.loc 1 1062 37
	lw	a5,-20(s0)
	addi	a5,a5,44
	.loc 1 1062 12
	mv	a2,a5
	sw	a4,-136(s0)
.LBB50:
.LBB51:
	.loc 2 100 14
	sw	zero,-140(s0)
	.loc 2 102 18
	lw	a5,-136(s0)
	slli	a4,a5,24
	.loc 2 102 34
	lw	a5,-136(s0)
	srli	a5,a5,24
	.loc 2 102 9
	or	a5,a4,a5
	sw	a5,-140(s0)
	.loc 2 103 9
	lw	a4,-140(s0)
	li	a5,-16777216
	addi	a5,a5,255
	and	a5,a4,a5
	sw	a5,-140(s0)
	.loc 2 104 20
	lw	a5,-136(s0)
	srli	a4,a5,8
	.loc 2 104 26
	li	a5,65536
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 104 50
	lw	a5,-136(s0)
	slli	a3,a5,8
	.loc 2 104 56
	li	a5,16711680
	and	a5,a3,a5
	.loc 2 104 40
	or	a5,a4,a5
	.loc 2 104 9
	lw	a4,-140(s0)
	or	a5,a4,a5
	sw	a5,-140(s0)
	.loc 2 106 12
	lw	a5,-140(s0)
.LBE51:
.LBE50:
	.loc 1 1062 46 discriminator 1
	sw	a5,0(a2)
	.loc 1 1063 12
	lw	a5,-152(s0)
	addi	a5,a5,4
	sw	a5,-152(s0)
	.loc 1 1064 59
	lw	a5,-152(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1064 62
	slli	a4,a5,24
	.loc 1 1064 72
	lw	a5,-152(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1064 75
	slli	a5,a5,16
	.loc 1 1064 67
	or	a4,a4,a5
	.loc 1 1064 85
	lw	a5,-152(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1064 88
	slli	a5,a5,8
	.loc 1 1064 80
	or	a5,a4,a5
	.loc 1 1064 97
	lw	a4,-152(s0)
	lbu	a4,0(a4)
	.loc 1 1064 92
	or	a5,a5,a4
	.loc 1 1064 48
	mv	a4,a5
	.loc 1 1064 37
	lw	a5,-20(s0)
	addi	a5,a5,40
	.loc 1 1064 12
	mv	a2,a5
	sw	a4,-128(s0)
.LBB52:
.LBB53:
	.loc 2 100 14
	sw	zero,-132(s0)
	.loc 2 102 18
	lw	a5,-128(s0)
	slli	a4,a5,24
	.loc 2 102 34
	lw	a5,-128(s0)
	srli	a5,a5,24
	.loc 2 102 9
	or	a5,a4,a5
	sw	a5,-132(s0)
	.loc 2 103 9
	lw	a4,-132(s0)
	li	a5,-16777216
	addi	a5,a5,255
	and	a5,a4,a5
	sw	a5,-132(s0)
	.loc 2 104 20
	lw	a5,-128(s0)
	srli	a4,a5,8
	.loc 2 104 26
	li	a5,65536
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 104 50
	lw	a5,-128(s0)
	slli	a3,a5,8
	.loc 2 104 56
	li	a5,16711680
	and	a5,a3,a5
	.loc 2 104 40
	or	a5,a4,a5
	.loc 2 104 9
	lw	a4,-132(s0)
	or	a5,a4,a5
	sw	a5,-132(s0)
	.loc 2 106 12
	lw	a5,-132(s0)
.LBE53:
.LBE52:
	.loc 1 1064 46 discriminator 1
	sw	a5,0(a2)
	.loc 1 1065 12
	lw	a5,-152(s0)
	addi	a5,a5,4
	sw	a5,-152(s0)
	.loc 1 1066 59
	lw	a5,-152(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1066 62
	slli	a4,a5,24
	.loc 1 1066 72
	lw	a5,-152(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1066 75
	slli	a5,a5,16
	.loc 1 1066 67
	or	a4,a4,a5
	.loc 1 1066 85
	lw	a5,-152(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1066 88
	slli	a5,a5,8
	.loc 1 1066 80
	or	a5,a4,a5
	.loc 1 1066 97
	lw	a4,-152(s0)
	lbu	a4,0(a4)
	.loc 1 1066 92
	or	a5,a5,a4
	.loc 1 1066 48
	mv	a4,a5
	.loc 1 1066 37
	lw	a5,-20(s0)
	addi	a5,a5,36
	.loc 1 1066 12
	mv	a2,a5
	sw	a4,-120(s0)
.LBB54:
.LBB55:
	.loc 2 100 14
	sw	zero,-124(s0)
	.loc 2 102 18
	lw	a5,-120(s0)
	slli	a4,a5,24
	.loc 2 102 34
	lw	a5,-120(s0)
	srli	a5,a5,24
	.loc 2 102 9
	or	a5,a4,a5
	sw	a5,-124(s0)
	.loc 2 103 9
	lw	a4,-124(s0)
	li	a5,-16777216
	addi	a5,a5,255
	and	a5,a4,a5
	sw	a5,-124(s0)
	.loc 2 104 20
	lw	a5,-120(s0)
	srli	a4,a5,8
	.loc 2 104 26
	li	a5,65536
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 104 50
	lw	a5,-120(s0)
	slli	a3,a5,8
	.loc 2 104 56
	li	a5,16711680
	and	a5,a3,a5
	.loc 2 104 40
	or	a5,a4,a5
	.loc 2 104 9
	lw	a4,-124(s0)
	or	a5,a4,a5
	sw	a5,-124(s0)
	.loc 2 106 12
	lw	a5,-124(s0)
.LBE55:
.LBE54:
	.loc 1 1066 46 discriminator 1
	sw	a5,0(a2)
	.loc 1 1067 12
	lw	a5,-152(s0)
	addi	a5,a5,4
	sw	a5,-152(s0)
	.loc 1 1068 59
	lw	a5,-152(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1068 62
	slli	a4,a5,24
	.loc 1 1068 72
	lw	a5,-152(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1068 75
	slli	a5,a5,16
	.loc 1 1068 67
	or	a4,a4,a5
	.loc 1 1068 85
	lw	a5,-152(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1068 88
	slli	a5,a5,8
	.loc 1 1068 80
	or	a5,a4,a5
	.loc 1 1068 97
	lw	a4,-152(s0)
	lbu	a4,0(a4)
	.loc 1 1068 92
	or	a5,a5,a4
	.loc 1 1068 48
	mv	a4,a5
	.loc 1 1068 37
	lw	a5,-20(s0)
	addi	a5,a5,32
	.loc 1 1068 12
	mv	a2,a5
	sw	a4,-112(s0)
.LBB56:
.LBB57:
	.loc 2 100 14
	sw	zero,-116(s0)
	.loc 2 102 18
	lw	a5,-112(s0)
	slli	a4,a5,24
	.loc 2 102 34
	lw	a5,-112(s0)
	srli	a5,a5,24
	.loc 2 102 9
	or	a5,a4,a5
	sw	a5,-116(s0)
	.loc 2 103 9
	lw	a4,-116(s0)
	li	a5,-16777216
	addi	a5,a5,255
	and	a5,a4,a5
	sw	a5,-116(s0)
	.loc 2 104 20
	lw	a5,-112(s0)
	srli	a4,a5,8
	.loc 2 104 26
	li	a5,65536
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 2 104 50
	lw	a5,-112(s0)
	slli	a3,a5,8
	.loc 2 104 56
	li	a5,16711680
	and	a5,a3,a5
	.loc 2 104 40
	or	a5,a4,a5
	.loc 2 104 9
	lw	a4,-116(s0)
	or	a5,a4,a5
	sw	a5,-116(s0)
	.loc 2 106 12
	lw	a5,-116(s0)
.LBE57:
.LBE56:
	.loc 1 1068 46 discriminator 1
	sw	a5,0(a2)
	.loc 1 1069 12
	lw	a5,-152(s0)
	addi	a5,a5,4
	sw	a5,-152(s0)
.L95:
	.loc 1 1073 11
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	.loc 1 1075 8
	lw	a5,-20(s0)
	.loc 1 1075 41
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L81:
	.loc 1 1076 1
	lw	ra,156(sp)
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	Sec_Eng_AES_Set_Key_IV, .-Sec_Eng_AES_Set_Key_IV
	.section	.text.Sec_Eng_AES_Set_Key_IV_BE,"ax",@progbits
	.align	1
	.globl	Sec_Eng_AES_Set_Key_IV_BE
	.type	Sec_Eng_AES_Set_Key_IV_BE, @function
Sec_Eng_AES_Set_Key_IV_BE:
.LFB25:
	.loc 1 1091 1
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
	mv	a4,a1
	sw	a2,-40(s0)
	sw	a3,-44(s0)
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 1092 14
	li	a5,1073758208
	addi	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 1101 48
	lw	a5,-44(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1101 51
	slli	a4,a5,24
	.loc 1 1101 60
	lw	a5,-44(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1101 63
	slli	a5,a5,16
	.loc 1 1101 56
	or	a4,a4,a5
	.loc 1 1101 72
	lw	a5,-44(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1101 75
	slli	a5,a5,8
	.loc 1 1101 68
	or	a5,a4,a5
	.loc 1 1101 83
	lw	a4,-44(s0)
	lbu	a4,0(a4)
	.loc 1 1101 79
	or	a4,a5,a4
	.loc 1 1101 33
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 1101 42
	sw	a4,0(a5)
	.loc 1 1102 7
	lw	a5,-44(s0)
	addi	a5,a5,4
	sw	a5,-44(s0)
	.loc 1 1103 48
	lw	a5,-44(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1103 51
	slli	a4,a5,24
	.loc 1 1103 60
	lw	a5,-44(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1103 63
	slli	a5,a5,16
	.loc 1 1103 56
	or	a4,a4,a5
	.loc 1 1103 72
	lw	a5,-44(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1103 75
	slli	a5,a5,8
	.loc 1 1103 68
	or	a5,a4,a5
	.loc 1 1103 83
	lw	a4,-44(s0)
	lbu	a4,0(a4)
	.loc 1 1103 79
	or	a4,a5,a4
	.loc 1 1103 33
	lw	a5,-20(s0)
	addi	a5,a5,20
	.loc 1 1103 42
	sw	a4,0(a5)
	.loc 1 1104 7
	lw	a5,-44(s0)
	addi	a5,a5,4
	sw	a5,-44(s0)
	.loc 1 1105 48
	lw	a5,-44(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1105 51
	slli	a4,a5,24
	.loc 1 1105 60
	lw	a5,-44(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1105 63
	slli	a5,a5,16
	.loc 1 1105 56
	or	a4,a4,a5
	.loc 1 1105 72
	lw	a5,-44(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1105 75
	slli	a5,a5,8
	.loc 1 1105 68
	or	a5,a4,a5
	.loc 1 1105 83
	lw	a4,-44(s0)
	lbu	a4,0(a4)
	.loc 1 1105 79
	or	a4,a5,a4
	.loc 1 1105 33
	lw	a5,-20(s0)
	addi	a5,a5,24
	.loc 1 1105 42
	sw	a4,0(a5)
	.loc 1 1106 7
	lw	a5,-44(s0)
	addi	a5,a5,4
	sw	a5,-44(s0)
	.loc 1 1107 48
	lw	a5,-44(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1107 51
	slli	a4,a5,24
	.loc 1 1107 60
	lw	a5,-44(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1107 63
	slli	a5,a5,16
	.loc 1 1107 56
	or	a4,a4,a5
	.loc 1 1107 72
	lw	a5,-44(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1107 75
	slli	a5,a5,8
	.loc 1 1107 68
	or	a5,a4,a5
	.loc 1 1107 83
	lw	a4,-44(s0)
	lbu	a4,0(a4)
	.loc 1 1107 79
	or	a4,a5,a4
	.loc 1 1107 33
	lw	a5,-20(s0)
	addi	a5,a5,28
	.loc 1 1107 42
	sw	a4,0(a5)
	.loc 1 1108 7
	lw	a5,-44(s0)
	addi	a5,a5,4
	sw	a5,-44(s0)
	.loc 1 1111 7
	lbu	a4,-34(s0)
	li	a5,1
	bne	a4,a5,.L102
	.loc 1 1112 19
	lw	a5,-20(s0)
	.loc 1 1112 15
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1113 15
	lw	a5,-24(s0)
	ori	a5,a5,128
	sw	a5,-24(s0)
	.loc 1 1114 12
	lw	a5,-20(s0)
	.loc 1 1114 45
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 1116 44
	lw	a5,-20(s0)
	addi	a5,a5,64
	.loc 1 1116 15
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1117 27
	lw	a5,-24(s0)
	andi	a5,a5,-4
	.loc 1 1117 69
	lw	a4,-40(s0)
	lbu	a4,0(a4)
	.loc 1 1117 15
	or	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 1118 37
	lw	a5,-20(s0)
	addi	a5,a5,64
	.loc 1 1118 12
	mv	a4,a5
	.loc 1 1118 46
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 1120 44
	lw	a5,-20(s0)
	addi	a5,a5,68
	.loc 1 1120 15
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1121 27
	lw	a5,-24(s0)
	andi	a5,a5,-4
	.loc 1 1121 69
	lw	a4,-40(s0)
	lbu	a4,0(a4)
	.loc 1 1121 15
	or	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 1122 37
	lw	a5,-20(s0)
	addi	a5,a5,68
	.loc 1 1122 12
	mv	a4,a5
	.loc 1 1122 46
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 1124 9
	j	.L101
.L102:
	.loc 1 1127 49
	lw	a5,-40(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1127 52
	slli	a4,a5,24
	.loc 1 1127 62
	lw	a5,-40(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1127 65
	slli	a5,a5,16
	.loc 1 1127 57
	or	a4,a4,a5
	.loc 1 1127 75
	lw	a5,-40(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1127 78
	slli	a5,a5,8
	.loc 1 1127 70
	or	a5,a4,a5
	.loc 1 1127 87
	lw	a4,-40(s0)
	lbu	a4,0(a4)
	.loc 1 1127 82
	or	a4,a5,a4
	.loc 1 1127 33
	lw	a5,-20(s0)
	addi	a5,a5,32
	.loc 1 1127 42
	sw	a4,0(a5)
	.loc 1 1128 8
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 1129 49
	lw	a5,-40(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1129 52
	slli	a4,a5,24
	.loc 1 1129 62
	lw	a5,-40(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1129 65
	slli	a5,a5,16
	.loc 1 1129 57
	or	a4,a4,a5
	.loc 1 1129 75
	lw	a5,-40(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1129 78
	slli	a5,a5,8
	.loc 1 1129 70
	or	a5,a4,a5
	.loc 1 1129 87
	lw	a4,-40(s0)
	lbu	a4,0(a4)
	.loc 1 1129 82
	or	a4,a5,a4
	.loc 1 1129 33
	lw	a5,-20(s0)
	addi	a5,a5,36
	.loc 1 1129 42
	sw	a4,0(a5)
	.loc 1 1130 8
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 1131 49
	lw	a5,-40(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1131 52
	slli	a4,a5,24
	.loc 1 1131 62
	lw	a5,-40(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1131 65
	slli	a5,a5,16
	.loc 1 1131 57
	or	a4,a4,a5
	.loc 1 1131 75
	lw	a5,-40(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1131 78
	slli	a5,a5,8
	.loc 1 1131 70
	or	a5,a4,a5
	.loc 1 1131 87
	lw	a4,-40(s0)
	lbu	a4,0(a4)
	.loc 1 1131 82
	or	a4,a5,a4
	.loc 1 1131 33
	lw	a5,-20(s0)
	addi	a5,a5,40
	.loc 1 1131 42
	sw	a4,0(a5)
	.loc 1 1132 8
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 1133 49
	lw	a5,-40(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1133 52
	slli	a4,a5,24
	.loc 1 1133 62
	lw	a5,-40(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1133 65
	slli	a5,a5,16
	.loc 1 1133 57
	or	a4,a4,a5
	.loc 1 1133 75
	lw	a5,-40(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1133 78
	slli	a5,a5,8
	.loc 1 1133 70
	or	a5,a4,a5
	.loc 1 1133 87
	lw	a4,-40(s0)
	lbu	a4,0(a4)
	.loc 1 1133 82
	or	a4,a5,a4
	.loc 1 1133 33
	lw	a5,-20(s0)
	addi	a5,a5,44
	.loc 1 1133 42
	sw	a4,0(a5)
	.loc 1 1134 8
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 1136 15
	lw	a5,-20(s0)
	.loc 1 1136 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1137 51
	lw	a5,-24(s0)
	srli	a5,a5,3
	.loc 1 1137 12
	andi	a5,a5,3
	sw	a5,-28(s0)
	.loc 1 1138 7
	lw	a4,-28(s0)
	li	a5,2
	bne	a4,a5,.L104
	.loc 1 1139 53
	lw	a5,-40(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1139 56
	slli	a4,a5,24
	.loc 1 1139 66
	lw	a5,-40(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1139 69
	slli	a5,a5,16
	.loc 1 1139 61
	or	a4,a4,a5
	.loc 1 1139 79
	lw	a5,-40(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1139 82
	slli	a5,a5,8
	.loc 1 1139 74
	or	a5,a4,a5
	.loc 1 1139 91
	lw	a4,-40(s0)
	lbu	a4,0(a4)
	.loc 1 1139 86
	or	a4,a5,a4
	.loc 1 1139 37
	lw	a5,-20(s0)
	addi	a5,a5,48
	.loc 1 1139 46
	sw	a4,0(a5)
	.loc 1 1140 12
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 1141 53
	lw	a5,-40(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1141 56
	slli	a4,a5,24
	.loc 1 1141 66
	lw	a5,-40(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1141 69
	slli	a5,a5,16
	.loc 1 1141 61
	or	a4,a4,a5
	.loc 1 1141 79
	lw	a5,-40(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1141 82
	slli	a5,a5,8
	.loc 1 1141 74
	or	a5,a4,a5
	.loc 1 1141 91
	lw	a4,-40(s0)
	lbu	a4,0(a4)
	.loc 1 1141 86
	or	a4,a5,a4
	.loc 1 1141 37
	lw	a5,-20(s0)
	addi	a5,a5,52
	.loc 1 1141 46
	sw	a4,0(a5)
	.loc 1 1142 12
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	j	.L105
.L104:
	.loc 1 1143 13
	lw	a4,-28(s0)
	li	a5,1
	beq	a4,a5,.L106
	.loc 1 1143 57 discriminator 1
	lw	a4,-28(s0)
	li	a5,3
	bne	a4,a5,.L105
.L106:
	.loc 1 1144 53
	lw	a5,-40(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1144 56
	slli	a4,a5,24
	.loc 1 1144 66
	lw	a5,-40(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1144 69
	slli	a5,a5,16
	.loc 1 1144 61
	or	a4,a4,a5
	.loc 1 1144 79
	lw	a5,-40(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1144 82
	slli	a5,a5,8
	.loc 1 1144 74
	or	a5,a4,a5
	.loc 1 1144 91
	lw	a4,-40(s0)
	lbu	a4,0(a4)
	.loc 1 1144 86
	or	a4,a5,a4
	.loc 1 1144 37
	lw	a5,-20(s0)
	addi	a5,a5,48
	.loc 1 1144 46
	sw	a4,0(a5)
	.loc 1 1145 12
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 1146 53
	lw	a5,-40(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1146 56
	slli	a4,a5,24
	.loc 1 1146 66
	lw	a5,-40(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1146 69
	slli	a5,a5,16
	.loc 1 1146 61
	or	a4,a4,a5
	.loc 1 1146 79
	lw	a5,-40(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1146 82
	slli	a5,a5,8
	.loc 1 1146 74
	or	a5,a4,a5
	.loc 1 1146 91
	lw	a4,-40(s0)
	lbu	a4,0(a4)
	.loc 1 1146 86
	or	a4,a5,a4
	.loc 1 1146 37
	lw	a5,-20(s0)
	addi	a5,a5,52
	.loc 1 1146 46
	sw	a4,0(a5)
	.loc 1 1147 12
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 1148 53
	lw	a5,-40(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1148 56
	slli	a4,a5,24
	.loc 1 1148 66
	lw	a5,-40(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1148 69
	slli	a5,a5,16
	.loc 1 1148 61
	or	a4,a4,a5
	.loc 1 1148 79
	lw	a5,-40(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1148 82
	slli	a5,a5,8
	.loc 1 1148 74
	or	a5,a4,a5
	.loc 1 1148 91
	lw	a4,-40(s0)
	lbu	a4,0(a4)
	.loc 1 1148 86
	or	a4,a5,a4
	.loc 1 1148 37
	lw	a5,-20(s0)
	addi	a5,a5,56
	.loc 1 1148 46
	sw	a4,0(a5)
	.loc 1 1149 12
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 1150 53
	lw	a5,-40(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1150 56
	slli	a4,a5,24
	.loc 1 1150 66
	lw	a5,-40(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1150 69
	slli	a5,a5,16
	.loc 1 1150 61
	or	a4,a4,a5
	.loc 1 1150 79
	lw	a5,-40(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1150 82
	slli	a5,a5,8
	.loc 1 1150 74
	or	a5,a4,a5
	.loc 1 1150 91
	lw	a4,-40(s0)
	lbu	a4,0(a4)
	.loc 1 1150 86
	or	a4,a5,a4
	.loc 1 1150 37
	lw	a5,-20(s0)
	addi	a5,a5,60
	.loc 1 1150 46
	sw	a4,0(a5)
	.loc 1 1151 12
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
.L105:
	.loc 1 1155 11
	lw	a5,-24(s0)
	andi	a5,a5,-129
	sw	a5,-24(s0)
	.loc 1 1157 8
	lw	a5,-20(s0)
	.loc 1 1157 41
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L101:
	.loc 1 1158 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	Sec_Eng_AES_Set_Key_IV_BE, .-Sec_Eng_AES_Set_Key_IV_BE
	.section	.text.Sec_Eng_AES_Set_Counter_Byte,"ax",@progbits
	.align	1
	.globl	Sec_Eng_AES_Set_Counter_Byte
	.type	Sec_Eng_AES_Set_Counter_Byte, @function
Sec_Eng_AES_Set_Counter_Byte:
.LFB26:
	.loc 1 1170 1
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
	mv	a4,a1
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 1171 14
	li	a5,1073758208
	sw	a5,-20(s0)
	.loc 1 1179 42
	lw	a5,-20(s0)
	addi	a5,a5,328
	.loc 1 1179 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1180 56
	lw	a4,-24(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1180 88
	lbu	a5,-34(s0)
	.loc 1 1180 111
	slli	a5,a5,30
	.loc 1 1180 33
	lw	a3,-20(s0)
	addi	a3,a3,328
	.loc 1 1180 85
	or	a5,a4,a5
	.loc 1 1180 43
	sw	a5,0(a3)
	.loc 1 1181 1
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
.LFE26:
	.size	Sec_Eng_AES_Set_Counter_Byte, .-Sec_Eng_AES_Set_Counter_Byte
	.section	.text.Sec_Eng_AES_Crypt,"ax",@progbits
	.align	1
	.globl	Sec_Eng_AES_Crypt
	.type	Sec_Eng_AES_Crypt, @function
Sec_Eng_AES_Crypt:
.LFB27:
	.loc 1 1197 1
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
	.loc 1 1198 14
	li	a5,1073758208
	addi	a5,a5,256
	sw	a5,-28(s0)
	.loc 1 1200 14
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-24(s0)
	.loc 1 1202 13
	lw	a5,-48(s0)
	andi	a5,a5,15
	.loc 1 1202 7
	beq	a5,zero,.L109
	.loc 1 1203 16
	li	a5,1
	j	.L110
.L109:
	.loc 1 1208 19
	lw	a5,-28(s0)
	.loc 1 1208 15
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1209 19
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 1210 11
	lw	a5,-24(s0)
	bne	a5,zero,.L111
	.loc 1 1211 20
	li	a5,2
	j	.L110
.L111:
	.loc 1 1213 23
	lw	a5,-20(s0)
	andi	a5,a5,1
	.loc 1 1213 38
	bne	a5,zero,.L109
	.loc 1 1216 11
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
	.loc 1 1217 8
	lw	a5,-28(s0)
	.loc 1 1217 41
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1220 33
	lw	a5,-28(s0)
	addi	a5,a5,4
	.loc 1 1220 8
	mv	a4,a5
	.loc 1 1220 43
	lw	a5,-44(s0)
	.loc 1 1220 41
	sw	a5,0(a4)
	.loc 1 1221 33
	lw	a5,-28(s0)
	addi	a5,a5,8
	.loc 1 1221 8
	mv	a4,a5
	.loc 1 1221 43
	lw	a5,-52(s0)
	.loc 1 1221 41
	sw	a5,0(a4)
	.loc 1 1224 23
	lw	a5,-20(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1224 56
	lw	a5,-48(s0)
	srli	a5,a5,4
	.loc 1 1224 74
	slli	a5,a5,16
	.loc 1 1224 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1226 14
	lw	a5,-36(s0)
	lbu	a4,1(a5)
	.loc 1 1226 7
	li	a5,1
	bne	a4,a5,.L112
	.loc 1 1227 15
	lw	a5,-20(s0)
	ori	a5,a5,64
	sw	a5,-20(s0)
	j	.L113
.L112:
	.loc 1 1229 15
	lw	a5,-20(s0)
	andi	a5,a5,-65
	sw	a5,-20(s0)
.L113:
	.loc 1 1233 23
	lw	a4,-20(s0)
	li	a5,-16384
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1233 72
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 1233 82
	slli	a5,a5,14
	.loc 1 1233 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1234 8
	lw	a5,-28(s0)
	.loc 1 1234 41
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1237 11
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 1238 8
	lw	a5,-28(s0)
	.loc 1 1238 41
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1241 16
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-24(s0)
.L115:
	.loc 1 1243 19
	lw	a5,-28(s0)
	.loc 1 1243 15
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1244 19
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 1245 11
	lw	a5,-24(s0)
	bne	a5,zero,.L114
	.loc 1 1246 20
	li	a5,2
	j	.L110
.L114:
	.loc 1 1248 23
	lw	a5,-20(s0)
	andi	a5,a5,1
	.loc 1 1248 38
	bne	a5,zero,.L115
	.loc 1 1250 20
	lw	a5,-36(s0)
	li	a4,1
	sb	a4,0(a5)
	.loc 1 1252 12
	li	a5,0
.L110:
	.loc 1 1253 1
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
.LFE27:
	.size	Sec_Eng_AES_Crypt, .-Sec_Eng_AES_Crypt
	.section	.text.Sec_Eng_AES_Finish,"ax",@progbits
	.align	1
	.globl	Sec_Eng_AES_Finish
	.type	Sec_Eng_AES_Finish, @function
Sec_Eng_AES_Finish:
.LFB28:
	.loc 1 1264 1
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
	.loc 1 1265 14
	li	a5,1073758208
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 1267 14
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-20(s0)
.L119:
	.loc 1 1271 19
	lw	a5,-24(s0)
	.loc 1 1271 15
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 1272 19
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 1273 11
	lw	a5,-20(s0)
	bne	a5,zero,.L117
	.loc 1 1274 20
	li	a5,2
	j	.L118
.L117:
	.loc 1 1276 23
	lw	a5,-28(s0)
	andi	a5,a5,1
	.loc 1 1276 38
	bne	a5,zero,.L119
	.loc 1 1278 11
	lw	a5,-28(s0)
	andi	a5,a5,-5
	sw	a5,-28(s0)
	.loc 1 1280 11
	lw	a5,-28(s0)
	andi	a5,a5,-65
	sw	a5,-28(s0)
	.loc 1 1282 11
	lw	a4,-28(s0)
	li	a5,-16384
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 1284 8
	lw	a5,-24(s0)
	.loc 1 1284 41
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 1 1286 12
	li	a5,0
.L118:
	.loc 1 1287 1
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
	.size	Sec_Eng_AES_Finish, .-Sec_Eng_AES_Finish
	.section	.text.Sec_Eng_Trng_Enable,"ax",@progbits
	.align	1
	.globl	Sec_Eng_Trng_Enable
	.type	Sec_Eng_Trng_Enable, @function
Sec_Eng_Trng_Enable:
.LFB29:
	.loc 1 1298 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1299 14
	li	a5,1073758208
	addi	a5,a5,512
	sw	a5,-24(s0)
	.loc 1 1301 14
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-20(s0)
	.loc 1 1303 15
	lw	a5,-24(s0)
	.loc 1 1303 11
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 1309 11
	lw	a5,-28(s0)
	ori	a5,a5,4
	sw	a5,-28(s0)
	.loc 1 1310 8
	lw	a5,-24(s0)
	.loc 1 1310 42
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 1 1311 11
	lw	a5,-28(s0)
	ori	a5,a5,512
	sw	a5,-28(s0)
	.loc 1 1312 8
	lw	a5,-24(s0)
	.loc 1 1312 42
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 1 1314 5
 #APP
# 1314 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sec_eng.c" 1
	nop
# 0 "" 2
	.loc 1 1315 5
# 1315 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sec_eng.c" 1
	nop
# 0 "" 2
	.loc 1 1316 5
# 1316 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sec_eng.c" 1
	nop
# 0 "" 2
	.loc 1 1317 5
# 1317 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sec_eng.c" 1
	nop
# 0 "" 2
 #NO_APP
.L123:
	.loc 1 1319 19
	lw	a5,-24(s0)
	.loc 1 1319 15
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 1320 19
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 1321 11
	lw	a5,-20(s0)
	bne	a5,zero,.L121
	.loc 1 1322 20
	li	a5,2
	j	.L122
.L121:
	.loc 1 1324 23
	lw	a5,-28(s0)
	andi	a5,a5,1
	.loc 1 1324 38
	bne	a5,zero,.L123
	.loc 1 1326 11
	lw	a5,-28(s0)
	ori	a5,a5,512
	sw	a5,-28(s0)
	.loc 1 1327 8
	lw	a5,-24(s0)
	.loc 1 1327 42
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 1 1329 12
	li	a5,0
.L122:
	.loc 1 1330 1
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
	.size	Sec_Eng_Trng_Enable, .-Sec_Eng_Trng_Enable
	.section	.text.Sec_Eng_Trng_Int_Enable,"ax",@progbits
	.align	1
	.globl	Sec_Eng_Trng_Int_Enable
	.type	Sec_Eng_Trng_Int_Enable, @function
Sec_Eng_Trng_Int_Enable:
.LFB30:
	.loc 1 1341 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1342 14
	li	a5,1073758208
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 1345 15
	lw	a5,-20(s0)
	.loc 1 1345 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1347 11
	lw	a4,-24(s0)
	li	a5,-4096
	addi	a5,a5,2047
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 1349 8
	lw	a5,-20(s0)
	.loc 1 1349 42
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 1350 1
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
.LFE30:
	.size	Sec_Eng_Trng_Int_Enable, .-Sec_Eng_Trng_Int_Enable
	.section	.text.Sec_Eng_Trng_Int_Disable,"ax",@progbits
	.align	1
	.globl	Sec_Eng_Trng_Int_Disable
	.type	Sec_Eng_Trng_Int_Disable, @function
Sec_Eng_Trng_Int_Disable:
.LFB31:
	.loc 1 1361 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1362 14
	li	a5,1073758208
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 1365 15
	lw	a5,-20(s0)
	.loc 1 1365 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1367 11
	lw	a4,-24(s0)
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 1369 8
	lw	a5,-20(s0)
	.loc 1 1369 42
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 1370 1
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
.LFE31:
	.size	Sec_Eng_Trng_Int_Disable, .-Sec_Eng_Trng_Int_Disable
	.section	.text.Sec_Eng_Trng_Read,"ax",@progbits
	.align	1
	.globl	Sec_Eng_Trng_Read
	.type	Sec_Eng_Trng_Read, @function
Sec_Eng_Trng_Read:
.LFB32:
	.loc 1 1381 1
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
	.loc 1 1382 14
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 1383 14
	li	a5,1073758208
	addi	a5,a5,512
	sw	a5,-28(s0)
	.loc 1 1385 14
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-20(s0)
	.loc 1 1387 15
	lw	a5,-28(s0)
	.loc 1 1387 11
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1390 11
	lw	a5,-32(s0)
	ori	a5,a5,2
	sw	a5,-32(s0)
	.loc 1 1391 8
	lw	a5,-28(s0)
	.loc 1 1391 42
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 1 1394 5
 #APP
# 1394 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sec_eng.c" 1
	nop
# 0 "" 2
	.loc 1 1395 5
# 1395 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sec_eng.c" 1
	nop
# 0 "" 2
	.loc 1 1396 5
# 1396 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sec_eng.c" 1
	nop
# 0 "" 2
	.loc 1 1397 5
# 1397 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sec_eng.c" 1
	nop
# 0 "" 2
 #NO_APP
.L129:
	.loc 1 1399 19
	lw	a5,-28(s0)
	.loc 1 1399 15
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1400 19
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 1401 11
	lw	a5,-20(s0)
	bne	a5,zero,.L127
	.loc 1 1402 20
	li	a5,2
	j	.L128
.L127:
	.loc 1 1404 23
	lw	a5,-32(s0)
	andi	a5,a5,1
	.loc 1 1404 38
	bne	a5,zero,.L129
	.loc 1 1407 40
	lw	a5,-28(s0)
	addi	a5,a5,8
	.loc 1 1407 12
	lw	a5,0(a5)
	.loc 1 1407 10
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,0(a5)
	.loc 1 1407 90
	lw	a5,-28(s0)
	addi	a5,a5,8
	.loc 1 1407 62
	lw	a5,0(a5)
	.loc 1 1407 99
	srli	a4,a5,8
	.loc 1 1407 56
	lw	a5,-24(s0)
	addi	a5,a5,1
	.loc 1 1407 59
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1407 144
	lw	a5,-28(s0)
	addi	a5,a5,8
	.loc 1 1407 116
	lw	a5,0(a5)
	.loc 1 1407 153
	srli	a4,a5,16
	.loc 1 1407 110
	lw	a5,-24(s0)
	addi	a5,a5,2
	.loc 1 1407 113
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1407 199
	lw	a5,-28(s0)
	addi	a5,a5,8
	.loc 1 1407 171
	lw	a5,0(a5)
	.loc 1 1407 208
	srli	a4,a5,24
	.loc 1 1407 165
	lw	a5,-24(s0)
	addi	a5,a5,3
	.loc 1 1407 168
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1408 6
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 1 1409 40
	lw	a5,-28(s0)
	addi	a5,a5,12
	.loc 1 1409 12
	lw	a5,0(a5)
	.loc 1 1409 10
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,0(a5)
	.loc 1 1409 90
	lw	a5,-28(s0)
	addi	a5,a5,12
	.loc 1 1409 62
	lw	a5,0(a5)
	.loc 1 1409 99
	srli	a4,a5,8
	.loc 1 1409 56
	lw	a5,-24(s0)
	addi	a5,a5,1
	.loc 1 1409 59
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1409 144
	lw	a5,-28(s0)
	addi	a5,a5,12
	.loc 1 1409 116
	lw	a5,0(a5)
	.loc 1 1409 153
	srli	a4,a5,16
	.loc 1 1409 110
	lw	a5,-24(s0)
	addi	a5,a5,2
	.loc 1 1409 113
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1409 199
	lw	a5,-28(s0)
	addi	a5,a5,12
	.loc 1 1409 171
	lw	a5,0(a5)
	.loc 1 1409 208
	srli	a4,a5,24
	.loc 1 1409 165
	lw	a5,-24(s0)
	addi	a5,a5,3
	.loc 1 1409 168
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1410 6
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 1 1411 40
	lw	a5,-28(s0)
	addi	a5,a5,16
	.loc 1 1411 12
	lw	a5,0(a5)
	.loc 1 1411 10
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,0(a5)
	.loc 1 1411 91
	lw	a5,-28(s0)
	addi	a5,a5,16
	.loc 1 1411 63
	lw	a5,0(a5)
	.loc 1 1411 101
	srli	a4,a5,8
	.loc 1 1411 57
	lw	a5,-24(s0)
	addi	a5,a5,1
	.loc 1 1411 60
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1411 146
	lw	a5,-28(s0)
	addi	a5,a5,16
	.loc 1 1411 118
	lw	a5,0(a5)
	.loc 1 1411 156
	srli	a4,a5,16
	.loc 1 1411 112
	lw	a5,-24(s0)
	addi	a5,a5,2
	.loc 1 1411 115
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1411 202
	lw	a5,-28(s0)
	addi	a5,a5,16
	.loc 1 1411 174
	lw	a5,0(a5)
	.loc 1 1411 212
	srli	a4,a5,24
	.loc 1 1411 168
	lw	a5,-24(s0)
	addi	a5,a5,3
	.loc 1 1411 171
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1412 6
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 1 1413 40
	lw	a5,-28(s0)
	addi	a5,a5,20
	.loc 1 1413 12
	lw	a5,0(a5)
	.loc 1 1413 10
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,0(a5)
	.loc 1 1413 91
	lw	a5,-28(s0)
	addi	a5,a5,20
	.loc 1 1413 63
	lw	a5,0(a5)
	.loc 1 1413 101
	srli	a4,a5,8
	.loc 1 1413 57
	lw	a5,-24(s0)
	addi	a5,a5,1
	.loc 1 1413 60
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1413 146
	lw	a5,-28(s0)
	addi	a5,a5,20
	.loc 1 1413 118
	lw	a5,0(a5)
	.loc 1 1413 156
	srli	a4,a5,16
	.loc 1 1413 112
	lw	a5,-24(s0)
	addi	a5,a5,2
	.loc 1 1413 115
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1413 202
	lw	a5,-28(s0)
	addi	a5,a5,20
	.loc 1 1413 174
	lw	a5,0(a5)
	.loc 1 1413 212
	srli	a4,a5,24
	.loc 1 1413 168
	lw	a5,-24(s0)
	addi	a5,a5,3
	.loc 1 1413 171
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1414 6
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 1 1415 40
	lw	a5,-28(s0)
	addi	a5,a5,24
	.loc 1 1415 12
	lw	a5,0(a5)
	.loc 1 1415 10
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,0(a5)
	.loc 1 1415 91
	lw	a5,-28(s0)
	addi	a5,a5,24
	.loc 1 1415 63
	lw	a5,0(a5)
	.loc 1 1415 101
	srli	a4,a5,8
	.loc 1 1415 57
	lw	a5,-24(s0)
	addi	a5,a5,1
	.loc 1 1415 60
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1415 146
	lw	a5,-28(s0)
	addi	a5,a5,24
	.loc 1 1415 118
	lw	a5,0(a5)
	.loc 1 1415 156
	srli	a4,a5,16
	.loc 1 1415 112
	lw	a5,-24(s0)
	addi	a5,a5,2
	.loc 1 1415 115
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1415 202
	lw	a5,-28(s0)
	addi	a5,a5,24
	.loc 1 1415 174
	lw	a5,0(a5)
	.loc 1 1415 212
	srli	a4,a5,24
	.loc 1 1415 168
	lw	a5,-24(s0)
	addi	a5,a5,3
	.loc 1 1415 171
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1416 6
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 1 1417 40
	lw	a5,-28(s0)
	addi	a5,a5,28
	.loc 1 1417 12
	lw	a5,0(a5)
	.loc 1 1417 10
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,0(a5)
	.loc 1 1417 91
	lw	a5,-28(s0)
	addi	a5,a5,28
	.loc 1 1417 63
	lw	a5,0(a5)
	.loc 1 1417 101
	srli	a4,a5,8
	.loc 1 1417 57
	lw	a5,-24(s0)
	addi	a5,a5,1
	.loc 1 1417 60
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1417 146
	lw	a5,-28(s0)
	addi	a5,a5,28
	.loc 1 1417 118
	lw	a5,0(a5)
	.loc 1 1417 156
	srli	a4,a5,16
	.loc 1 1417 112
	lw	a5,-24(s0)
	addi	a5,a5,2
	.loc 1 1417 115
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1417 202
	lw	a5,-28(s0)
	addi	a5,a5,28
	.loc 1 1417 174
	lw	a5,0(a5)
	.loc 1 1417 212
	srli	a4,a5,24
	.loc 1 1417 168
	lw	a5,-24(s0)
	addi	a5,a5,3
	.loc 1 1417 171
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1418 6
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 1 1419 40
	lw	a5,-28(s0)
	addi	a5,a5,32
	.loc 1 1419 12
	lw	a5,0(a5)
	.loc 1 1419 10
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,0(a5)
	.loc 1 1419 91
	lw	a5,-28(s0)
	addi	a5,a5,32
	.loc 1 1419 63
	lw	a5,0(a5)
	.loc 1 1419 101
	srli	a4,a5,8
	.loc 1 1419 57
	lw	a5,-24(s0)
	addi	a5,a5,1
	.loc 1 1419 60
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1419 146
	lw	a5,-28(s0)
	addi	a5,a5,32
	.loc 1 1419 118
	lw	a5,0(a5)
	.loc 1 1419 156
	srli	a4,a5,16
	.loc 1 1419 112
	lw	a5,-24(s0)
	addi	a5,a5,2
	.loc 1 1419 115
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1419 202
	lw	a5,-28(s0)
	addi	a5,a5,32
	.loc 1 1419 174
	lw	a5,0(a5)
	.loc 1 1419 212
	srli	a4,a5,24
	.loc 1 1419 168
	lw	a5,-24(s0)
	addi	a5,a5,3
	.loc 1 1419 171
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1420 6
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 1 1421 40
	lw	a5,-28(s0)
	addi	a5,a5,36
	.loc 1 1421 12
	lw	a5,0(a5)
	.loc 1 1421 10
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,0(a5)
	.loc 1 1421 91
	lw	a5,-28(s0)
	addi	a5,a5,36
	.loc 1 1421 63
	lw	a5,0(a5)
	.loc 1 1421 101
	srli	a4,a5,8
	.loc 1 1421 57
	lw	a5,-24(s0)
	addi	a5,a5,1
	.loc 1 1421 60
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1421 146
	lw	a5,-28(s0)
	addi	a5,a5,36
	.loc 1 1421 118
	lw	a5,0(a5)
	.loc 1 1421 156
	srli	a4,a5,16
	.loc 1 1421 112
	lw	a5,-24(s0)
	addi	a5,a5,2
	.loc 1 1421 115
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1421 202
	lw	a5,-28(s0)
	addi	a5,a5,36
	.loc 1 1421 174
	lw	a5,0(a5)
	.loc 1 1421 212
	srli	a4,a5,24
	.loc 1 1421 168
	lw	a5,-24(s0)
	addi	a5,a5,3
	.loc 1 1421 171
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1422 6
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 1 1424 11
	lw	a5,-32(s0)
	andi	a5,a5,-3
	sw	a5,-32(s0)
	.loc 1 1425 8
	lw	a5,-28(s0)
	.loc 1 1425 42
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 1 1428 11
	lw	a5,-32(s0)
	ori	a5,a5,8
	sw	a5,-32(s0)
	.loc 1 1429 8
	lw	a5,-28(s0)
	.loc 1 1429 42
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 1 1431 11
	lw	a5,-32(s0)
	andi	a5,a5,-9
	sw	a5,-32(s0)
	.loc 1 1432 8
	lw	a5,-28(s0)
	.loc 1 1432 42
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 1 1434 12
	li	a5,0
.L128:
	.loc 1 1435 1
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
.LFE32:
	.size	Sec_Eng_Trng_Read, .-Sec_Eng_Trng_Read
	.section	.text.Sec_Eng_Trng_Int_Read_Trigger,"ax",@progbits
	.align	1
	.globl	Sec_Eng_Trng_Int_Read_Trigger
	.type	Sec_Eng_Trng_Int_Read_Trigger, @function
Sec_Eng_Trng_Int_Read_Trigger:
.LFB33:
	.loc 1 1446 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1447 14
	li	a5,1073758208
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 1450 5
	call	Sec_Eng_Trng_Int_Enable
	.loc 1 1452 15
	lw	a5,-20(s0)
	.loc 1 1452 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1454 11
	lw	a5,-24(s0)
	ori	a5,a5,2
	sw	a5,-24(s0)
	.loc 1 1455 8
	lw	a5,-20(s0)
	.loc 1 1455 42
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 1456 1
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
.LFE33:
	.size	Sec_Eng_Trng_Int_Read_Trigger, .-Sec_Eng_Trng_Int_Read_Trigger
	.section	.text.Sec_Eng_Trng_Int_Read,"ax",@progbits
	.align	1
	.globl	Sec_Eng_Trng_Int_Read
	.type	Sec_Eng_Trng_Int_Read, @function
Sec_Eng_Trng_Int_Read:
.LFB34:
	.loc 1 1467 1
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
	.loc 1 1468 14
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1469 14
	li	a5,1073758208
	addi	a5,a5,512
	sw	a5,-24(s0)
	.loc 1 1472 15
	lw	a5,-24(s0)
	.loc 1 1472 11
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 1475 40
	lw	a5,-24(s0)
	addi	a5,a5,8
	.loc 1 1475 12
	lw	a5,0(a5)
	.loc 1 1475 10
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,0(a5)
	.loc 1 1475 90
	lw	a5,-24(s0)
	addi	a5,a5,8
	.loc 1 1475 62
	lw	a5,0(a5)
	.loc 1 1475 99
	srli	a4,a5,8
	.loc 1 1475 56
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 1 1475 59
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1475 144
	lw	a5,-24(s0)
	addi	a5,a5,8
	.loc 1 1475 116
	lw	a5,0(a5)
	.loc 1 1475 153
	srli	a4,a5,16
	.loc 1 1475 110
	lw	a5,-20(s0)
	addi	a5,a5,2
	.loc 1 1475 113
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1475 199
	lw	a5,-24(s0)
	addi	a5,a5,8
	.loc 1 1475 171
	lw	a5,0(a5)
	.loc 1 1475 208
	srli	a4,a5,24
	.loc 1 1475 165
	lw	a5,-20(s0)
	addi	a5,a5,3
	.loc 1 1475 168
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1476 6
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 1477 40
	lw	a5,-24(s0)
	addi	a5,a5,12
	.loc 1 1477 12
	lw	a5,0(a5)
	.loc 1 1477 10
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,0(a5)
	.loc 1 1477 90
	lw	a5,-24(s0)
	addi	a5,a5,12
	.loc 1 1477 62
	lw	a5,0(a5)
	.loc 1 1477 99
	srli	a4,a5,8
	.loc 1 1477 56
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 1 1477 59
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1477 144
	lw	a5,-24(s0)
	addi	a5,a5,12
	.loc 1 1477 116
	lw	a5,0(a5)
	.loc 1 1477 153
	srli	a4,a5,16
	.loc 1 1477 110
	lw	a5,-20(s0)
	addi	a5,a5,2
	.loc 1 1477 113
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1477 199
	lw	a5,-24(s0)
	addi	a5,a5,12
	.loc 1 1477 171
	lw	a5,0(a5)
	.loc 1 1477 208
	srli	a4,a5,24
	.loc 1 1477 165
	lw	a5,-20(s0)
	addi	a5,a5,3
	.loc 1 1477 168
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1478 6
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 1479 40
	lw	a5,-24(s0)
	addi	a5,a5,16
	.loc 1 1479 12
	lw	a5,0(a5)
	.loc 1 1479 10
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,0(a5)
	.loc 1 1479 91
	lw	a5,-24(s0)
	addi	a5,a5,16
	.loc 1 1479 63
	lw	a5,0(a5)
	.loc 1 1479 101
	srli	a4,a5,8
	.loc 1 1479 57
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 1 1479 60
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1479 146
	lw	a5,-24(s0)
	addi	a5,a5,16
	.loc 1 1479 118
	lw	a5,0(a5)
	.loc 1 1479 156
	srli	a4,a5,16
	.loc 1 1479 112
	lw	a5,-20(s0)
	addi	a5,a5,2
	.loc 1 1479 115
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1479 202
	lw	a5,-24(s0)
	addi	a5,a5,16
	.loc 1 1479 174
	lw	a5,0(a5)
	.loc 1 1479 212
	srli	a4,a5,24
	.loc 1 1479 168
	lw	a5,-20(s0)
	addi	a5,a5,3
	.loc 1 1479 171
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1480 6
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 1481 40
	lw	a5,-24(s0)
	addi	a5,a5,20
	.loc 1 1481 12
	lw	a5,0(a5)
	.loc 1 1481 10
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,0(a5)
	.loc 1 1481 91
	lw	a5,-24(s0)
	addi	a5,a5,20
	.loc 1 1481 63
	lw	a5,0(a5)
	.loc 1 1481 101
	srli	a4,a5,8
	.loc 1 1481 57
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 1 1481 60
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1481 146
	lw	a5,-24(s0)
	addi	a5,a5,20
	.loc 1 1481 118
	lw	a5,0(a5)
	.loc 1 1481 156
	srli	a4,a5,16
	.loc 1 1481 112
	lw	a5,-20(s0)
	addi	a5,a5,2
	.loc 1 1481 115
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1481 202
	lw	a5,-24(s0)
	addi	a5,a5,20
	.loc 1 1481 174
	lw	a5,0(a5)
	.loc 1 1481 212
	srli	a4,a5,24
	.loc 1 1481 168
	lw	a5,-20(s0)
	addi	a5,a5,3
	.loc 1 1481 171
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1482 6
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 1483 40
	lw	a5,-24(s0)
	addi	a5,a5,24
	.loc 1 1483 12
	lw	a5,0(a5)
	.loc 1 1483 10
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,0(a5)
	.loc 1 1483 91
	lw	a5,-24(s0)
	addi	a5,a5,24
	.loc 1 1483 63
	lw	a5,0(a5)
	.loc 1 1483 101
	srli	a4,a5,8
	.loc 1 1483 57
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 1 1483 60
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1483 146
	lw	a5,-24(s0)
	addi	a5,a5,24
	.loc 1 1483 118
	lw	a5,0(a5)
	.loc 1 1483 156
	srli	a4,a5,16
	.loc 1 1483 112
	lw	a5,-20(s0)
	addi	a5,a5,2
	.loc 1 1483 115
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1483 202
	lw	a5,-24(s0)
	addi	a5,a5,24
	.loc 1 1483 174
	lw	a5,0(a5)
	.loc 1 1483 212
	srli	a4,a5,24
	.loc 1 1483 168
	lw	a5,-20(s0)
	addi	a5,a5,3
	.loc 1 1483 171
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1484 6
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 1485 40
	lw	a5,-24(s0)
	addi	a5,a5,28
	.loc 1 1485 12
	lw	a5,0(a5)
	.loc 1 1485 10
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,0(a5)
	.loc 1 1485 91
	lw	a5,-24(s0)
	addi	a5,a5,28
	.loc 1 1485 63
	lw	a5,0(a5)
	.loc 1 1485 101
	srli	a4,a5,8
	.loc 1 1485 57
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 1 1485 60
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1485 146
	lw	a5,-24(s0)
	addi	a5,a5,28
	.loc 1 1485 118
	lw	a5,0(a5)
	.loc 1 1485 156
	srli	a4,a5,16
	.loc 1 1485 112
	lw	a5,-20(s0)
	addi	a5,a5,2
	.loc 1 1485 115
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1485 202
	lw	a5,-24(s0)
	addi	a5,a5,28
	.loc 1 1485 174
	lw	a5,0(a5)
	.loc 1 1485 212
	srli	a4,a5,24
	.loc 1 1485 168
	lw	a5,-20(s0)
	addi	a5,a5,3
	.loc 1 1485 171
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1486 6
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 1487 40
	lw	a5,-24(s0)
	addi	a5,a5,32
	.loc 1 1487 12
	lw	a5,0(a5)
	.loc 1 1487 10
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,0(a5)
	.loc 1 1487 91
	lw	a5,-24(s0)
	addi	a5,a5,32
	.loc 1 1487 63
	lw	a5,0(a5)
	.loc 1 1487 101
	srli	a4,a5,8
	.loc 1 1487 57
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 1 1487 60
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1487 146
	lw	a5,-24(s0)
	addi	a5,a5,32
	.loc 1 1487 118
	lw	a5,0(a5)
	.loc 1 1487 156
	srli	a4,a5,16
	.loc 1 1487 112
	lw	a5,-20(s0)
	addi	a5,a5,2
	.loc 1 1487 115
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1487 202
	lw	a5,-24(s0)
	addi	a5,a5,32
	.loc 1 1487 174
	lw	a5,0(a5)
	.loc 1 1487 212
	srli	a4,a5,24
	.loc 1 1487 168
	lw	a5,-20(s0)
	addi	a5,a5,3
	.loc 1 1487 171
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1488 6
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 1489 40
	lw	a5,-24(s0)
	addi	a5,a5,36
	.loc 1 1489 12
	lw	a5,0(a5)
	.loc 1 1489 10
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,0(a5)
	.loc 1 1489 91
	lw	a5,-24(s0)
	addi	a5,a5,36
	.loc 1 1489 63
	lw	a5,0(a5)
	.loc 1 1489 101
	srli	a4,a5,8
	.loc 1 1489 57
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 1 1489 60
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1489 146
	lw	a5,-24(s0)
	addi	a5,a5,36
	.loc 1 1489 118
	lw	a5,0(a5)
	.loc 1 1489 156
	srli	a4,a5,16
	.loc 1 1489 112
	lw	a5,-20(s0)
	addi	a5,a5,2
	.loc 1 1489 115
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1489 202
	lw	a5,-24(s0)
	addi	a5,a5,36
	.loc 1 1489 174
	lw	a5,0(a5)
	.loc 1 1489 212
	srli	a4,a5,24
	.loc 1 1489 168
	lw	a5,-20(s0)
	addi	a5,a5,3
	.loc 1 1489 171
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1490 6
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 1492 11
	lw	a5,-28(s0)
	andi	a5,a5,-3
	sw	a5,-28(s0)
	.loc 1 1493 8
	lw	a5,-24(s0)
	.loc 1 1493 42
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 1 1496 11
	lw	a5,-28(s0)
	ori	a5,a5,8
	sw	a5,-28(s0)
	.loc 1 1497 8
	lw	a5,-24(s0)
	.loc 1 1497 42
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 1 1499 11
	lw	a5,-28(s0)
	andi	a5,a5,-9
	sw	a5,-28(s0)
	.loc 1 1500 8
	lw	a5,-24(s0)
	.loc 1 1500 42
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 1 1501 1
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
	.size	Sec_Eng_Trng_Int_Read, .-Sec_Eng_Trng_Int_Read
	.section	.text.Sec_Eng_Trng_Disable,"ax",@progbits
	.align	1
	.globl	Sec_Eng_Trng_Disable
	.type	Sec_Eng_Trng_Disable, @function
Sec_Eng_Trng_Disable:
.LFB35:
	.loc 1 1512 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1513 14
	li	a5,1073758208
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 1516 15
	lw	a5,-20(s0)
	.loc 1 1516 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1518 11
	lw	a5,-24(s0)
	andi	a5,a5,-5
	sw	a5,-24(s0)
	.loc 1 1520 11
	lw	a5,-24(s0)
	ori	a5,a5,512
	sw	a5,-24(s0)
	.loc 1 1522 8
	lw	a5,-20(s0)
	.loc 1 1522 42
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 1523 1
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
.LFE35:
	.size	Sec_Eng_Trng_Disable, .-Sec_Eng_Trng_Disable
	.section	.text.Sec_Eng_PKA_Reset,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_Reset
	.type	Sec_Eng_PKA_Reset, @function
Sec_Eng_PKA_Reset:
.LFB36:
	.loc 1 1534 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1538 7
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 1538 61
	sw	zero,0(a5)
	.loc 1 1541 9
	li	a5,8
	sb	a5,-17(s0)
	.loc 1 1542 7
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 1542 61
	lbu	a4,-17(s0)
	sw	a4,0(a5)
	.loc 1 1543 1
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
.LFE36:
	.size	Sec_Eng_PKA_Reset, .-Sec_Eng_PKA_Reset
	.section	.text.Sec_Eng_PKA_BigEndian_Enable,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_BigEndian_Enable
	.type	Sec_Eng_PKA_BigEndian_Enable, @function
Sec_Eng_PKA_BigEndian_Enable:
.LFB37:
	.loc 1 1554 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1557 13
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 1557 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1558 11
	lw	a4,-20(s0)
	li	a5,4096
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1559 7
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 1559 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1560 1
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
.LFE37:
	.size	Sec_Eng_PKA_BigEndian_Enable, .-Sec_Eng_PKA_BigEndian_Enable
	.section	.text.Sec_Eng_PKA_LittleEndian_Enable,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_LittleEndian_Enable
	.type	Sec_Eng_PKA_LittleEndian_Enable, @function
Sec_Eng_PKA_LittleEndian_Enable:
.LFB38:
	.loc 1 1571 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1574 13
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 1574 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1575 11
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1576 7
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 1576 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1577 1
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
.LFE38:
	.size	Sec_Eng_PKA_LittleEndian_Enable, .-Sec_Eng_PKA_LittleEndian_Enable
	.section	.text.Sec_Eng_PKA_Clear_Int,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_Clear_Int
	.type	Sec_Eng_PKA_Clear_Int, @function
Sec_Eng_PKA_Clear_Int:
.LFB39:
	.loc 1 1588 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1591 13
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 1591 10
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1592 10
	lw	a5,-20(s0)
	ori	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 1594 7
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 1594 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1596 13
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 1596 10
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1597 10
	lw	a5,-20(s0)
	andi	a5,a5,-513
	sw	a5,-20(s0)
	.loc 1 1598 7
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 1598 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1599 1
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
.LFE39:
	.size	Sec_Eng_PKA_Clear_Int, .-Sec_Eng_PKA_Clear_Int
	.section	.text.Sec_Eng_PKA_Get_Reg_Size,"ax",@progbits
	.align	1
	.type	Sec_Eng_PKA_Get_Reg_Size, @function
Sec_Eng_PKA_Get_Reg_Size:
.LFB40:
	.loc 1 1610 1
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
	.loc 1 1611 5
	lbu	a5,-17(s0)
	li	a4,10
	beq	a5,a4,.L138
	li	a4,10
	bgt	a5,a4,.L139
	li	a4,9
	beq	a5,a4,.L140
	li	a4,9
	bgt	a5,a4,.L139
	li	a4,8
	beq	a5,a4,.L141
	li	a4,8
	bgt	a5,a4,.L139
	li	a4,7
	beq	a5,a4,.L142
	li	a4,7
	bgt	a5,a4,.L139
	li	a4,6
	beq	a5,a4,.L143
	li	a4,6
	bgt	a5,a4,.L139
	li	a4,5
	beq	a5,a4,.L144
	li	a4,5
	bgt	a5,a4,.L139
	li	a4,4
	beq	a5,a4,.L145
	li	a4,4
	bgt	a5,a4,.L139
	li	a4,3
	beq	a5,a4,.L146
	li	a4,3
	bgt	a5,a4,.L139
	li	a4,1
	beq	a5,a4,.L147
	li	a4,2
	beq	a5,a4,.L148
	j	.L139
.L147:
	.loc 1 1614 20
	li	a5,8
	j	.L149
.L148:
	.loc 1 1616 20
	li	a5,16
	j	.L149
.L146:
	.loc 1 1618 20
	li	a5,32
	j	.L149
.L145:
	.loc 1 1620 20
	li	a5,64
	j	.L149
.L144:
	.loc 1 1622 20
	li	a5,96
	j	.L149
.L143:
	.loc 1 1624 20
	li	a5,128
	j	.L149
.L142:
	.loc 1 1626 20
	li	a5,192
	j	.L149
.L141:
	.loc 1 1628 20
	li	a5,256
	j	.L149
.L140:
	.loc 1 1630 20
	li	a5,384
	j	.L149
.L138:
	.loc 1 1632 20
	li	a5,512
	j	.L149
.L139:
	.loc 1 1634 20
	li	a5,0
.L149:
	.loc 1 1636 1
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
	.size	Sec_Eng_PKA_Get_Reg_Size, .-Sec_Eng_PKA_Get_Reg_Size
	.section	.text.Sec_Eng_PKA_Write_Pld_Cfg,"ax",@progbits
	.align	1
	.type	Sec_Eng_PKA_Write_Pld_Cfg, @function
Sec_Eng_PKA_Write_Pld_Cfg:
.LFB41:
	.loc 1 1651 1
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
	sh	a5,-34(s0)
	mv	a5,a1
	sb	a5,-35(s0)
	mv	a5,a2
	sb	a5,-36(s0)
	mv	a5,a3
	sb	a5,-37(s0)
	mv	a5,a4
	sb	a5,-38(s0)
	.loc 1 1654 23
	lhu	a5,-34(s0)
	mv	a4,a5
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	lw	a3,-20(s0)
	li	a4,-4096
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1655 30
	lbu	a5,-35(s0)
	slli	a5,a5,12
	lw	a3,-20(s0)
	li	a4,-1044480
	addi	a4,a4,-1
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1656 29
	lbu	a5,-36(s0)
	andi	a5,a5,15
	andi	a5,a5,0xff
	andi	a5,a5,15
	slli	a5,a5,20
	lw	a3,-20(s0)
	li	a4,-15728640
	addi	a4,a4,-1
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1657 21
	lbu	a5,-37(s0)
	andi	a5,a5,127
	andi	a5,a5,0xff
	andi	a5,a5,127
	slli	a5,a5,24
	lw	a3,-20(s0)
	li	a4,-2130706432
	addi	a4,a4,-1
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1658 26
	lbu	a5,-38(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	slli	a5,a5,31
	lw	a3,-20(s0)
	li	a4,-2147483648
	addi	a4,a4,-1
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1660 7
	li	a5,1073758208
	addi	a5,a5,832
	.loc 1 1660 72
	lw	a4,-20(s0)
	.loc 1 1660 61
	sw	a4,0(a5)
	.loc 1 1661 1
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
	.size	Sec_Eng_PKA_Write_Pld_Cfg, .-Sec_Eng_PKA_Write_Pld_Cfg
	.section	.text.Sec_Eng_PKA_Write_Common_OP_First_Cfg,"ax",@progbits
	.align	1
	.type	Sec_Eng_PKA_Write_Common_OP_First_Cfg, @function
Sec_Eng_PKA_Write_Common_OP_First_Cfg:
.LFB42:
	.loc 1 1678 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a6,a0
	mv	a0,a1
	mv	a1,a2
	mv	a2,a3
	mv	a3,a4
	mv	a4,a5
	mv	a5,a6
	sb	a5,-33(s0)
	mv	a5,a0
	sb	a5,-34(s0)
	mv	a5,a1
	sb	a5,-35(s0)
	mv	a5,a2
	sb	a5,-36(s0)
	mv	a5,a3
	sb	a5,-37(s0)
	mv	a5,a4
	sb	a5,-38(s0)
	.loc 1 1681 29
	lbu	a5,-33(s0)
	sb	a5,-20(s0)
	.loc 1 1682 30
	lbu	a5,-34(s0)
	andi	a5,a5,15
	andi	a5,a5,0xff
	andi	a5,a5,15
	slli	a5,a5,8
	lw	a3,-20(s0)
	li	a4,-4096
	addi	a4,a4,255
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1683 7
	lbu	a4,-37(s0)
	li	a5,25
	beq	a4,a5,.L152
	.loc 1 1685 32
	lbu	a5,-35(s0)
	slli	a5,a5,12
	lw	a3,-20(s0)
	li	a4,-1044480
	addi	a4,a4,-1
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1686 33
	lbu	a5,-36(s0)
	andi	a5,a5,15
	andi	a5,a5,0xff
	andi	a5,a5,15
	slli	a5,a5,20
	lw	a3,-20(s0)
	li	a4,-15728640
	addi	a4,a4,-1
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
.L152:
	.loc 1 1688 21
	lbu	a5,-37(s0)
	andi	a5,a5,127
	andi	a5,a5,0xff
	andi	a5,a5,127
	slli	a5,a5,24
	lw	a3,-20(s0)
	li	a4,-2130706432
	addi	a4,a4,-1
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1689 26
	lbu	a5,-38(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	slli	a5,a5,31
	lw	a3,-20(s0)
	li	a4,-2147483648
	addi	a4,a4,-1
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1691 7
	li	a5,1073758208
	addi	a5,a5,832
	.loc 1 1691 72
	lw	a4,-20(s0)
	.loc 1 1691 61
	sw	a4,0(a5)
	.loc 1 1692 1
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
.LFE42:
	.size	Sec_Eng_PKA_Write_Common_OP_First_Cfg, .-Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.section	.text.Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1,"ax",@progbits
	.align	1
	.type	Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1, @function
Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1:
.LFB43:
	.loc 1 1704 1
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
	mv	a4,a1
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 1707 29
	lbu	a5,-33(s0)
	slli	a5,a5,12
	lw	a3,-20(s0)
	li	a4,-1044480
	addi	a4,a4,-1
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1708 30
	lbu	a5,-34(s0)
	andi	a5,a5,15
	andi	a5,a5,0xff
	andi	a5,a5,15
	slli	a5,a5,20
	lw	a3,-20(s0)
	li	a4,-15728640
	addi	a4,a4,-1
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1710 7
	li	a5,1073758208
	addi	a5,a5,832
	.loc 1 1710 72
	lw	a4,-20(s0)
	.loc 1 1710 61
	sw	a4,0(a5)
	.loc 1 1711 1
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
.LFE43:
	.size	Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1, .-Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1
	.section	.text.Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S2,"ax",@progbits
	.align	1
	.type	Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S2, @function
Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S2:
.LFB44:
	.loc 1 1723 1
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
	mv	a4,a1
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 1726 29
	lbu	a5,-33(s0)
	sb	a5,-20(s0)
	.loc 1 1727 30
	lbu	a5,-34(s0)
	andi	a5,a5,15
	andi	a5,a5,0xff
	andi	a5,a5,15
	slli	a5,a5,8
	lw	a3,-20(s0)
	li	a4,-4096
	addi	a4,a4,255
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1729 7
	li	a5,1073758208
	addi	a5,a5,832
	.loc 1 1729 72
	lw	a4,-20(s0)
	.loc 1 1729 61
	sw	a4,0(a5)
	.loc 1 1730 1
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
.LFE44:
	.size	Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S2, .-Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S2
	.section	.text.Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1_S2,"ax",@progbits
	.align	1
	.type	Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1_S2, @function
Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1_S2:
.LFB45:
	.loc 1 1744 1
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
	mv	a4,a3
	sb	a5,-33(s0)
	mv	a5,a1
	sb	a5,-34(s0)
	mv	a5,a2
	sb	a5,-35(s0)
	mv	a5,a4
	sb	a5,-36(s0)
	.loc 1 1747 29
	lbu	a5,-33(s0)
	slli	a5,a5,12
	lw	a3,-20(s0)
	li	a4,-1044480
	addi	a4,a4,-1
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1748 30
	lbu	a5,-34(s0)
	andi	a5,a5,15
	andi	a5,a5,0xff
	andi	a5,a5,15
	slli	a5,a5,20
	lw	a3,-20(s0)
	li	a4,-15728640
	addi	a4,a4,-1
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1749 29
	lbu	a5,-35(s0)
	sb	a5,-20(s0)
	.loc 1 1750 30
	lbu	a5,-36(s0)
	andi	a5,a5,15
	andi	a5,a5,0xff
	andi	a5,a5,15
	slli	a5,a5,8
	lw	a3,-20(s0)
	li	a4,-4096
	addi	a4,a4,255
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1752 7
	li	a5,1073758208
	addi	a5,a5,832
	.loc 1 1752 72
	lw	a4,-20(s0)
	.loc 1 1752 61
	sw	a4,0(a5)
	.loc 1 1753 1
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
.LFE45:
	.size	Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1_S2, .-Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1_S2
	.section	.text.Sec_Eng_PKA_Wait_ISR,"ax",@progbits
	.align	1
	.type	Sec_Eng_PKA_Wait_ISR, @function
Sec_Eng_PKA_Wait_ISR:
.LFB46:
	.loc 1 1764 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1766 14
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-20(s0)
.L159:
	.loc 1 1769 22
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 1769 19
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1770 19
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 1771 11
	lw	a5,-20(s0)
	bne	a5,zero,.L157
	.loc 1 1772 20
	li	a5,2
	j	.L158
.L157:
	.loc 1 1774 12
	lw	a5,-24(s0)
	andi	a5,a5,256
	beq	a5,zero,.L159
	.loc 1 1776 12
	li	a5,0
.L158:
	.loc 1 1777 1
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
	.size	Sec_Eng_PKA_Wait_ISR, .-Sec_Eng_PKA_Wait_ISR
	.section	.text.Sec_Eng_PKA_Read_Block,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_Read_Block
	.type	Sec_Eng_PKA_Read_Block, @function
Sec_Eng_PKA_Read_Block:
.LFB47:
	.loc 1 1829 1
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
	.loc 1 1830 14
	lw	a5,-44(s0)
	andi	a5,a5,-4
	sw	a5,-24(s0)
	.loc 1 1833 10
	sw	zero,-20(s0)
	.loc 1 1833 5
	j	.L161
.L162:
	.loc 1 1834 13
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 1834 17
	lw	a4,-40(s0)
	lw	a4,0(a4)
	.loc 1 1834 16
	sw	a4,0(a5)
	.loc 1 1833 22 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L161:
	.loc 1 1833 14 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L162
	.loc 1 1836 1
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
.LFE47:
	.size	Sec_Eng_PKA_Read_Block, .-Sec_Eng_PKA_Read_Block
	.section	.text.Sec_Eng_PKA_Write_Block,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_Write_Block
	.type	Sec_Eng_PKA_Write_Block, @function
Sec_Eng_PKA_Write_Block:
.LFB48:
	.loc 1 1889 1
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
	.loc 1 1890 14
	lw	a5,-44(s0)
	andi	a5,a5,-4
	sw	a5,-24(s0)
	.loc 1 1892 10
	sw	zero,-20(s0)
	.loc 1 1892 5
	j	.L164
.L165:
	.loc 1 1893 18
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 1893 14
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 1892 22 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L164:
	.loc 1 1892 14 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L165
	.loc 1 1895 1
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
.LFE48:
	.size	Sec_Eng_PKA_Write_Block, .-Sec_Eng_PKA_Write_Block
	.section	.text.Sec_Eng_PKA_Get_Result,"ax",@progbits
	.align	1
	.type	Sec_Eng_PKA_Get_Result, @function
Sec_Eng_PKA_Get_Result:
.LFB49:
	.loc 1 1909 1
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
	mv	a4,a2
	sb	a5,-37(s0)
	mv	a5,a4
	sh	a5,-40(s0)
	.loc 1 1910 14
	sw	zero,-24(s0)
	.loc 1 1911 9
	sw	zero,-20(s0)
	.loc 1 1914 5
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 1915 5
	call	Sec_Eng_PKA_Clear_Int
	.loc 1 1916 5
	lbu	a5,-37(s0)
	mv	a2,a5
	li	a5,1073758208
	addi	a1,a5,832
	lw	a0,-36(s0)
	call	Sec_Eng_PKA_Read_Block
	.loc 1 1917 27
	lbu	a5,-37(s0)
	.loc 1 1917 10
	andi	a5,a5,-4
	sw	a5,-20(s0)
	.loc 1 1918 10
	j	.L167
.L168:
	.loc 1 1920 21
	li	a5,1073758208
	addi	a5,a5,832
	.loc 1 1920 18
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1921 15
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 1921 22
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 1922 14
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L167:
	.loc 1 1918 17
	lbu	a5,-37(s0)
	lw	a4,-20(s0)
	blt	a4,a5,.L168
	.loc 1 1924 1
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
.LFE49:
	.size	Sec_Eng_PKA_Get_Result, .-Sec_Eng_PKA_Get_Result
	.section	.text.Sec_Eng_PKA_Write_Data,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_Write_Data
	.type	Sec_Eng_PKA_Write_Data, @function
Sec_Eng_PKA_Write_Data:
.LFB50:
	.loc 1 1939 1
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
	sw	a2,-40(s0)
	sb	a5,-33(s0)
	mv	a5,a1
	sb	a5,-34(s0)
	mv	a5,a3
	sh	a5,-36(s0)
	mv	a5,a4
	sb	a5,-41(s0)
	.loc 1 1940 9
	sw	zero,-20(s0)
	.loc 1 1941 21
	lbu	a5,-33(s0)
	mv	a0,a5
	call	Sec_Eng_PKA_Get_Reg_Size
	mv	a5,a0
	sh	a5,-22(s0)
	.loc 1 1943 5
	lbu	a4,-41(s0)
	lbu	a2,-33(s0)
	lbu	a1,-34(s0)
	lhu	a5,-36(s0)
	li	a3,57
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Pld_Cfg
	.loc 1 1945 12
	lhu	a5,-22(s0)
	srli	a5,a5,2
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1945 7
	lhu	a4,-36(s0)
	bleu	a4,a5,.L170
	.loc 1 1946 13
	lhu	a5,-22(s0)
	srli	a5,a5,2
	sh	a5,-36(s0)
.L170:
	.loc 1 1948 5
	lhu	a5,-36(s0)
	mv	a2,a5
	lw	a1,-40(s0)
	li	a5,1073758208
	addi	a0,a5,832
	call	Sec_Eng_PKA_Write_Block
	.loc 1 1949 21
	lhu	a5,-36(s0)
	.loc 1 1949 10
	andi	a5,a5,-4
	sw	a5,-20(s0)
	.loc 1 1950 10
	j	.L171
.L172:
	.loc 1 1952 71
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a4,a4,a5
	.loc 1 1952 11
	li	a5,1073758208
	addi	a5,a5,832
	.loc 1 1952 71
	lw	a4,0(a4)
	.loc 1 1952 65
	sw	a4,0(a5)
	.loc 1 1953 14
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L171:
	.loc 1 1950 17
	lhu	a5,-36(s0)
	lw	a4,-20(s0)
	blt	a4,a5,.L172
	.loc 1 1955 1
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
.LFE50:
	.size	Sec_Eng_PKA_Write_Data, .-Sec_Eng_PKA_Write_Data
	.section	.text.Sec_Eng_PKA_Read_Data,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_Read_Data
	.type	Sec_Eng_PKA_Read_Data, @function
Sec_Eng_PKA_Read_Data:
.LFB51:
	.loc 1 1969 1
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
	sw	a2,-40(s0)
	mv	a4,a3
	sb	a5,-33(s0)
	mv	a5,a1
	sb	a5,-34(s0)
	mv	a5,a4
	sb	a5,-35(s0)
	.loc 1 1971 14
	sw	zero,-20(s0)
	.loc 1 1973 15
	lbu	a5,-33(s0)
	mv	a0,a5
	call	Sec_Eng_PKA_Get_Reg_Size
	mv	a5,a0
	sh	a5,-22(s0)
	.loc 1 1974 16
	lbu	a5,-35(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	lhu	a5,-22(s0)
	srli	a5,a5,2
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1974 7
	bleu	a4,a5,.L174
	.loc 1 1975 16
	sw	zero,-40(s0)
	.loc 1 1976 9
	j	.L173
.L174:
	.loc 1 1979 5
	lbu	a5,-35(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lbu	a2,-33(s0)
	lbu	a1,-34(s0)
	li	a4,1
	li	a3,56
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Pld_Cfg
	.loc 1 1981 7
	li	a5,1073758208
	addi	a5,a5,832
	.loc 1 1981 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1983 5
	lhu	a4,-22(s0)
	lbu	a5,-35(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-40(s0)
	call	Sec_Eng_PKA_Get_Result
.L173:
	.loc 1 1984 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE51:
	.size	Sec_Eng_PKA_Read_Data, .-Sec_Eng_PKA_Read_Data
	.section	.text.Sec_Eng_PKA_CREG,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_CREG
	.type	Sec_Eng_PKA_CREG, @function
Sec_Eng_PKA_CREG:
.LFB52:
	.loc 1 1998 1
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
	mv	a4,a3
	sb	a5,-33(s0)
	mv	a5,a1
	sb	a5,-34(s0)
	mv	a5,a2
	sb	a5,-35(s0)
	mv	a5,a4
	sb	a5,-36(s0)
	.loc 1 1999 14
	sw	zero,-20(s0)
	.loc 1 2001 5
	lbu	a5,-35(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lbu	a4,-36(s0)
	lbu	a2,-33(s0)
	lbu	a1,-34(s0)
	li	a3,53
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Pld_Cfg
	.loc 1 2002 7
	li	a5,1073758208
	addi	a5,a5,832
	.loc 1 2002 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 2004 7
	lbu	a5,-36(s0)
	beq	a5,zero,.L178
	.loc 1 2005 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2006 9
	call	Sec_Eng_PKA_Clear_Int
.L178:
	.loc 1 2008 1
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
.LFE52:
	.size	Sec_Eng_PKA_CREG, .-Sec_Eng_PKA_CREG
	.section	.text.Sec_Eng_PKA_Write_Immediate,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_Write_Immediate
	.type	Sec_Eng_PKA_Write_Immediate, @function
Sec_Eng_PKA_Write_Immediate:
.LFB53:
	.loc 1 2022 1
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
	sw	a2,-40(s0)
	mv	a4,a3
	sb	a5,-33(s0)
	mv	a5,a1
	sb	a5,-34(s0)
	mv	a5,a4
	sb	a5,-35(s0)
	.loc 1 2025 22
	lw	a4,-20(s0)
	li	a5,-4096
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 2026 30
	lbu	a5,-34(s0)
	slli	a5,a5,12
	lw	a3,-20(s0)
	li	a4,-1044480
	addi	a4,a4,-1
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 2027 29
	lbu	a5,-33(s0)
	andi	a5,a5,15
	andi	a5,a5,0xff
	andi	a5,a5,15
	slli	a5,a5,20
	lw	a3,-20(s0)
	li	a4,-15728640
	addi	a4,a4,-1
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 2028 21
	lw	a4,-20(s0)
	li	a5,-2130706432
	addi	a5,a5,-1
	and	a4,a4,a5
	li	a5,872415232
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 2029 26
	lbu	a5,-35(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	slli	a5,a5,31
	lw	a3,-20(s0)
	li	a4,-2147483648
	addi	a4,a4,-1
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 2031 7
	li	a5,1073758208
	addi	a5,a5,832
	.loc 1 2031 72
	lw	a4,-20(s0)
	.loc 1 2031 61
	sw	a4,0(a5)
	.loc 1 2032 7
	li	a5,1073758208
	addi	a5,a5,832
	.loc 1 2032 61
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 1 2034 7
	lbu	a5,-35(s0)
	beq	a5,zero,.L181
	.loc 1 2035 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2036 9
	call	Sec_Eng_PKA_Clear_Int
.L181:
	.loc 1 2038 1
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
.LFE53:
	.size	Sec_Eng_PKA_Write_Immediate, .-Sec_Eng_PKA_Write_Immediate
	.section	.text.Sec_Eng_PKA_NREG,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_NREG
	.type	Sec_Eng_PKA_NREG, @function
Sec_Eng_PKA_NREG:
.LFB54:
	.loc 1 2053 1
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
	mv	a5,a1
	sb	a5,-34(s0)
	mv	a5,a2
	sb	a5,-35(s0)
	mv	a5,a3
	sb	a5,-36(s0)
	mv	a5,a4
	sb	a5,-37(s0)
	.loc 1 2054 14
	sw	zero,-20(s0)
	.loc 1 2056 5
	lbu	a5,-37(s0)
	lbu	a3,-33(s0)
	lbu	a2,-34(s0)
	lbu	a1,-35(s0)
	lbu	a0,-36(s0)
	li	a4,51
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2057 7
	li	a5,1073758208
	addi	a5,a5,832
	.loc 1 2057 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 2059 7
	lbu	a5,-37(s0)
	beq	a5,zero,.L184
	.loc 1 2060 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2061 9
	call	Sec_Eng_PKA_Clear_Int
.L184:
	.loc 1 2063 1
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
.LFE54:
	.size	Sec_Eng_PKA_NREG, .-Sec_Eng_PKA_NREG
	.section	.text.Sec_Eng_PKA_Move_Data,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_Move_Data
	.type	Sec_Eng_PKA_Move_Data, @function
Sec_Eng_PKA_Move_Data:
.LFB55:
	.loc 1 2078 1
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
	mv	a5,a1
	sb	a5,-34(s0)
	mv	a5,a2
	sb	a5,-35(s0)
	mv	a5,a3
	sb	a5,-36(s0)
	mv	a5,a4
	sb	a5,-37(s0)
	.loc 1 2079 14
	sw	zero,-20(s0)
	.loc 1 2081 5
	lbu	a5,-37(s0)
	lbu	a3,-33(s0)
	lbu	a2,-34(s0)
	lbu	a1,-35(s0)
	lbu	a0,-36(s0)
	li	a4,50
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2082 7
	li	a5,1073758208
	addi	a5,a5,832
	.loc 1 2082 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 2084 7
	lbu	a5,-37(s0)
	beq	a5,zero,.L187
	.loc 1 2085 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2086 9
	call	Sec_Eng_PKA_Clear_Int
.L187:
	.loc 1 2088 1
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
.LFE55:
	.size	Sec_Eng_PKA_Move_Data, .-Sec_Eng_PKA_Move_Data
	.section	.text.Sec_Eng_PKA_RESIZE,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_RESIZE
	.type	Sec_Eng_PKA_RESIZE, @function
Sec_Eng_PKA_RESIZE:
.LFB56:
	.loc 1 2103 1
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
	mv	a5,a1
	sb	a5,-34(s0)
	mv	a5,a2
	sb	a5,-35(s0)
	mv	a5,a3
	sb	a5,-36(s0)
	mv	a5,a4
	sb	a5,-37(s0)
	.loc 1 2104 14
	sw	zero,-20(s0)
	.loc 1 2106 5
	lbu	a5,-37(s0)
	lbu	a3,-33(s0)
	lbu	a2,-34(s0)
	lbu	a1,-35(s0)
	lbu	a0,-36(s0)
	li	a4,49
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2107 7
	li	a5,1073758208
	addi	a5,a5,832
	.loc 1 2107 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 2108 7
	lbu	a5,-37(s0)
	beq	a5,zero,.L190
	.loc 1 2109 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2110 9
	call	Sec_Eng_PKA_Clear_Int
.L190:
	.loc 1 2112 1
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
.LFE56:
	.size	Sec_Eng_PKA_RESIZE, .-Sec_Eng_PKA_RESIZE
	.section	.text.Sec_Eng_PKA_MADD,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_MADD
	.type	Sec_Eng_PKA_MADD, @function
Sec_Eng_PKA_MADD:
.LFB57:
	.loc 1 2132 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	t4,a0
	mv	t3,a1
	mv	t1,a2
	mv	a0,a3
	mv	a1,a4
	mv	a2,a5
	mv	a3,a6
	mv	a4,a7
	mv	a5,t4
	sb	a5,-17(s0)
	mv	a5,t3
	sb	a5,-18(s0)
	mv	a5,t1
	sb	a5,-19(s0)
	mv	a5,a0
	sb	a5,-20(s0)
	mv	a5,a1
	sb	a5,-21(s0)
	mv	a5,a2
	sb	a5,-22(s0)
	mv	a5,a3
	sb	a5,-23(s0)
	mv	a5,a4
	sb	a5,-24(s0)
	.loc 1 2133 5
	lbu	a5,0(s0)
	lbu	a3,-17(s0)
	lbu	a2,-18(s0)
	lbu	a1,-19(s0)
	lbu	a0,-20(s0)
	li	a4,40
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2134 5
	lbu	a3,-23(s0)
	lbu	a2,-24(s0)
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	mv	a1,a4
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1_S2
	.loc 1 2136 7
	lbu	a5,0(s0)
	beq	a5,zero,.L193
	.loc 1 2137 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2138 9
	call	Sec_Eng_PKA_Clear_Int
.L193:
	.loc 1 2140 1
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
.LFE57:
	.size	Sec_Eng_PKA_MADD, .-Sec_Eng_PKA_MADD
	.section	.text.Sec_Eng_PKA_MSUB,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_MSUB
	.type	Sec_Eng_PKA_MSUB, @function
Sec_Eng_PKA_MSUB:
.LFB58:
	.loc 1 2160 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	t4,a0
	mv	t3,a1
	mv	t1,a2
	mv	a0,a3
	mv	a1,a4
	mv	a2,a5
	mv	a3,a6
	mv	a4,a7
	mv	a5,t4
	sb	a5,-17(s0)
	mv	a5,t3
	sb	a5,-18(s0)
	mv	a5,t1
	sb	a5,-19(s0)
	mv	a5,a0
	sb	a5,-20(s0)
	mv	a5,a1
	sb	a5,-21(s0)
	mv	a5,a2
	sb	a5,-22(s0)
	mv	a5,a3
	sb	a5,-23(s0)
	mv	a5,a4
	sb	a5,-24(s0)
	.loc 1 2161 5
	lbu	a5,0(s0)
	lbu	a3,-17(s0)
	lbu	a2,-18(s0)
	lbu	a1,-19(s0)
	lbu	a0,-20(s0)
	li	a4,39
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2162 5
	lbu	a3,-23(s0)
	lbu	a2,-24(s0)
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	mv	a1,a4
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1_S2
	.loc 1 2164 7
	lbu	a5,0(s0)
	beq	a5,zero,.L196
	.loc 1 2165 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2166 9
	call	Sec_Eng_PKA_Clear_Int
.L196:
	.loc 1 2168 1
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
.LFE58:
	.size	Sec_Eng_PKA_MSUB, .-Sec_Eng_PKA_MSUB
	.section	.text.Sec_Eng_PKA_MREM,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_MREM
	.type	Sec_Eng_PKA_MREM, @function
Sec_Eng_PKA_MREM:
.LFB59:
	.loc 1 2186 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	t1,a0
	mv	a7,a1
	mv	a0,a2
	mv	a1,a3
	mv	a2,a4
	mv	a3,a5
	mv	a4,a6
	mv	a5,t1
	sb	a5,-17(s0)
	mv	a5,a7
	sb	a5,-18(s0)
	mv	a5,a0
	sb	a5,-19(s0)
	mv	a5,a1
	sb	a5,-20(s0)
	mv	a5,a2
	sb	a5,-21(s0)
	mv	a5,a3
	sb	a5,-22(s0)
	mv	a5,a4
	sb	a5,-23(s0)
	.loc 1 2187 5
	lbu	a5,-23(s0)
	lbu	a3,-17(s0)
	lbu	a2,-18(s0)
	lbu	a1,-19(s0)
	lbu	a0,-20(s0)
	li	a4,38
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2188 5
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	mv	a1,a4
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S2
	.loc 1 2190 7
	lbu	a5,-23(s0)
	beq	a5,zero,.L199
	.loc 1 2191 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2192 9
	call	Sec_Eng_PKA_Clear_Int
.L199:
	.loc 1 2194 1
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
	.size	Sec_Eng_PKA_MREM, .-Sec_Eng_PKA_MREM
	.section	.text.Sec_Eng_PKA_MMUL,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_MMUL
	.type	Sec_Eng_PKA_MMUL, @function
Sec_Eng_PKA_MMUL:
.LFB60:
	.loc 1 2214 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	t4,a0
	mv	t3,a1
	mv	t1,a2
	mv	a0,a3
	mv	a1,a4
	mv	a2,a5
	mv	a3,a6
	mv	a4,a7
	mv	a5,t4
	sb	a5,-17(s0)
	mv	a5,t3
	sb	a5,-18(s0)
	mv	a5,t1
	sb	a5,-19(s0)
	mv	a5,a0
	sb	a5,-20(s0)
	mv	a5,a1
	sb	a5,-21(s0)
	mv	a5,a2
	sb	a5,-22(s0)
	mv	a5,a3
	sb	a5,-23(s0)
	mv	a5,a4
	sb	a5,-24(s0)
	.loc 1 2215 5
	lbu	a5,0(s0)
	lbu	a3,-17(s0)
	lbu	a2,-18(s0)
	lbu	a1,-19(s0)
	lbu	a0,-20(s0)
	li	a4,37
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2216 5
	lbu	a3,-23(s0)
	lbu	a2,-24(s0)
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	mv	a1,a4
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1_S2
	.loc 1 2218 7
	lbu	a5,0(s0)
	beq	a5,zero,.L202
	.loc 1 2219 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2220 9
	call	Sec_Eng_PKA_Clear_Int
.L202:
	.loc 1 2222 1
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
.LFE60:
	.size	Sec_Eng_PKA_MMUL, .-Sec_Eng_PKA_MMUL
	.section	.text.Sec_Eng_PKA_MSQR,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_MSQR
	.type	Sec_Eng_PKA_MSQR, @function
Sec_Eng_PKA_MSQR:
.LFB61:
	.loc 1 2240 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	t1,a0
	mv	a7,a1
	mv	a0,a2
	mv	a1,a3
	mv	a2,a4
	mv	a3,a5
	mv	a4,a6
	mv	a5,t1
	sb	a5,-17(s0)
	mv	a5,a7
	sb	a5,-18(s0)
	mv	a5,a0
	sb	a5,-19(s0)
	mv	a5,a1
	sb	a5,-20(s0)
	mv	a5,a2
	sb	a5,-21(s0)
	mv	a5,a3
	sb	a5,-22(s0)
	mv	a5,a4
	sb	a5,-23(s0)
	.loc 1 2241 5
	lbu	a5,-23(s0)
	lbu	a3,-17(s0)
	lbu	a2,-18(s0)
	lbu	a1,-19(s0)
	lbu	a0,-20(s0)
	li	a4,36
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2242 5
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	mv	a1,a4
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S2
	.loc 1 2244 7
	lbu	a5,-23(s0)
	beq	a5,zero,.L205
	.loc 1 2245 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2246 9
	call	Sec_Eng_PKA_Clear_Int
.L205:
	.loc 1 2248 1
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
.LFE61:
	.size	Sec_Eng_PKA_MSQR, .-Sec_Eng_PKA_MSQR
	.section	.text.Sec_Eng_PKA_MEXP,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_MEXP
	.type	Sec_Eng_PKA_MEXP, @function
Sec_Eng_PKA_MEXP:
.LFB62:
	.loc 1 2268 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	t4,a0
	mv	t3,a1
	mv	t1,a2
	mv	a0,a3
	mv	a1,a4
	mv	a2,a5
	mv	a3,a6
	mv	a4,a7
	mv	a5,t4
	sb	a5,-17(s0)
	mv	a5,t3
	sb	a5,-18(s0)
	mv	a5,t1
	sb	a5,-19(s0)
	mv	a5,a0
	sb	a5,-20(s0)
	mv	a5,a1
	sb	a5,-21(s0)
	mv	a5,a2
	sb	a5,-22(s0)
	mv	a5,a3
	sb	a5,-23(s0)
	mv	a5,a4
	sb	a5,-24(s0)
	.loc 1 2269 5
	lbu	a5,0(s0)
	lbu	a3,-17(s0)
	lbu	a2,-18(s0)
	lbu	a1,-19(s0)
	lbu	a0,-20(s0)
	li	a4,35
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2270 5
	lbu	a3,-23(s0)
	lbu	a2,-24(s0)
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	mv	a1,a4
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1_S2
	.loc 1 2272 7
	lbu	a5,0(s0)
	beq	a5,zero,.L208
	.loc 1 2273 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2274 9
	call	Sec_Eng_PKA_Clear_Int
.L208:
	.loc 1 2276 1
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
.LFE62:
	.size	Sec_Eng_PKA_MEXP, .-Sec_Eng_PKA_MEXP
	.section	.text.Sec_Eng_PKA_MINV,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_MINV
	.type	Sec_Eng_PKA_MINV, @function
Sec_Eng_PKA_MINV:
.LFB63:
	.loc 1 2294 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	t1,a0
	mv	a7,a1
	mv	a0,a2
	mv	a1,a3
	mv	a2,a4
	mv	a3,a5
	mv	a4,a6
	mv	a5,t1
	sb	a5,-17(s0)
	mv	a5,a7
	sb	a5,-18(s0)
	mv	a5,a0
	sb	a5,-19(s0)
	mv	a5,a1
	sb	a5,-20(s0)
	mv	a5,a2
	sb	a5,-21(s0)
	mv	a5,a3
	sb	a5,-22(s0)
	mv	a5,a4
	sb	a5,-23(s0)
	.loc 1 2295 5
	lbu	a5,-23(s0)
	lbu	a3,-17(s0)
	lbu	a2,-18(s0)
	lbu	a1,-19(s0)
	lbu	a0,-20(s0)
	li	a4,34
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2296 5
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	mv	a1,a4
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S2
	.loc 1 2298 7
	lbu	a5,-23(s0)
	beq	a5,zero,.L211
	.loc 1 2299 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2300 9
	call	Sec_Eng_PKA_Clear_Int
.L211:
	.loc 1 2302 1
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
.LFE63:
	.size	Sec_Eng_PKA_MINV, .-Sec_Eng_PKA_MINV
	.section	.text.Sec_Eng_PKA_LCMP,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_LCMP
	.type	Sec_Eng_PKA_LCMP, @function
Sec_Eng_PKA_LCMP:
.LFB64:
	.loc 1 2317 1
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
	mv	a5,a2
	sb	a5,-38(s0)
	mv	a5,a3
	sb	a5,-39(s0)
	mv	a5,a4
	sb	a5,-40(s0)
	.loc 1 2318 14
	sw	zero,-20(s0)
	.loc 1 2320 5
	lbu	a1,-37(s0)
	lbu	a0,-38(s0)
	li	a5,1
	li	a4,25
	li	a3,0
	li	a2,0
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2321 5
	lbu	a4,-39(s0)
	lbu	a5,-40(s0)
	mv	a1,a4
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1
	.loc 1 2323 5
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2324 5
	call	Sec_Eng_PKA_Clear_Int
	.loc 1 2325 18
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 2325 15
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2327 35
	lw	a5,-20(s0)
	srli	a5,a5,24
	andi	a5,a5,0xff
	andi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 2327 11
	lw	a5,-36(s0)
	sb	a4,0(a5)
	.loc 1 2328 1
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
.LFE64:
	.size	Sec_Eng_PKA_LCMP, .-Sec_Eng_PKA_LCMP
	.section	.text.Sec_Eng_PKA_LADD,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_LADD
	.type	Sec_Eng_PKA_LADD, @function
Sec_Eng_PKA_LADD:
.LFB65:
	.loc 1 2346 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	t1,a0
	mv	a7,a1
	mv	a0,a2
	mv	a1,a3
	mv	a2,a4
	mv	a3,a5
	mv	a4,a6
	mv	a5,t1
	sb	a5,-17(s0)
	mv	a5,a7
	sb	a5,-18(s0)
	mv	a5,a0
	sb	a5,-19(s0)
	mv	a5,a1
	sb	a5,-20(s0)
	mv	a5,a2
	sb	a5,-21(s0)
	mv	a5,a3
	sb	a5,-22(s0)
	mv	a5,a4
	sb	a5,-23(s0)
	.loc 1 2347 5
	lbu	a5,-23(s0)
	lbu	a3,-17(s0)
	lbu	a2,-18(s0)
	lbu	a1,-19(s0)
	lbu	a0,-20(s0)
	li	a4,24
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2348 5
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	mv	a1,a4
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1
	.loc 1 2350 7
	lbu	a5,-23(s0)
	beq	a5,zero,.L215
	.loc 1 2351 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2352 9
	call	Sec_Eng_PKA_Clear_Int
.L215:
	.loc 1 2354 1
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
.LFE65:
	.size	Sec_Eng_PKA_LADD, .-Sec_Eng_PKA_LADD
	.section	.text.Sec_Eng_PKA_LSUB,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_LSUB
	.type	Sec_Eng_PKA_LSUB, @function
Sec_Eng_PKA_LSUB:
.LFB66:
	.loc 1 2372 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	t1,a0
	mv	a7,a1
	mv	a0,a2
	mv	a1,a3
	mv	a2,a4
	mv	a3,a5
	mv	a4,a6
	mv	a5,t1
	sb	a5,-17(s0)
	mv	a5,a7
	sb	a5,-18(s0)
	mv	a5,a0
	sb	a5,-19(s0)
	mv	a5,a1
	sb	a5,-20(s0)
	mv	a5,a2
	sb	a5,-21(s0)
	mv	a5,a3
	sb	a5,-22(s0)
	mv	a5,a4
	sb	a5,-23(s0)
	.loc 1 2373 5
	lbu	a5,-23(s0)
	lbu	a3,-17(s0)
	lbu	a2,-18(s0)
	lbu	a1,-19(s0)
	lbu	a0,-20(s0)
	li	a4,23
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2374 5
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	mv	a1,a4
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1
	.loc 1 2376 7
	lbu	a5,-23(s0)
	beq	a5,zero,.L218
	.loc 1 2377 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2378 9
	call	Sec_Eng_PKA_Clear_Int
.L218:
	.loc 1 2380 1
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
.LFE66:
	.size	Sec_Eng_PKA_LSUB, .-Sec_Eng_PKA_LSUB
	.section	.text.Sec_Eng_PKA_LMUL,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_LMUL
	.type	Sec_Eng_PKA_LMUL, @function
Sec_Eng_PKA_LMUL:
.LFB67:
	.loc 1 2398 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	t1,a0
	mv	a7,a1
	mv	a0,a2
	mv	a1,a3
	mv	a2,a4
	mv	a3,a5
	mv	a4,a6
	mv	a5,t1
	sb	a5,-17(s0)
	mv	a5,a7
	sb	a5,-18(s0)
	mv	a5,a0
	sb	a5,-19(s0)
	mv	a5,a1
	sb	a5,-20(s0)
	mv	a5,a2
	sb	a5,-21(s0)
	mv	a5,a3
	sb	a5,-22(s0)
	mv	a5,a4
	sb	a5,-23(s0)
	.loc 1 2400 5
	lbu	a5,-23(s0)
	lbu	a3,-17(s0)
	lbu	a2,-18(s0)
	lbu	a1,-19(s0)
	lbu	a0,-20(s0)
	li	a4,22
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2401 5
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	mv	a1,a4
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1
	.loc 1 2403 7
	lbu	a5,-23(s0)
	beq	a5,zero,.L221
	.loc 1 2404 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2405 9
	call	Sec_Eng_PKA_Clear_Int
.L221:
	.loc 1 2407 1
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
.LFE67:
	.size	Sec_Eng_PKA_LMUL, .-Sec_Eng_PKA_LMUL
	.section	.text.Sec_Eng_PKA_LSQR,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_LSQR
	.type	Sec_Eng_PKA_LSQR, @function
Sec_Eng_PKA_LSQR:
.LFB68:
	.loc 1 2422 1
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
	mv	a5,a1
	sb	a5,-34(s0)
	mv	a5,a2
	sb	a5,-35(s0)
	mv	a5,a3
	sb	a5,-36(s0)
	mv	a5,a4
	sb	a5,-37(s0)
	.loc 1 2423 14
	sw	zero,-20(s0)
	.loc 1 2425 5
	lbu	a5,-37(s0)
	lbu	a3,-33(s0)
	lbu	a2,-34(s0)
	lbu	a1,-35(s0)
	lbu	a0,-36(s0)
	li	a4,21
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2426 7
	li	a5,1073758208
	addi	a5,a5,832
	.loc 1 2426 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 2428 7
	lbu	a5,-37(s0)
	beq	a5,zero,.L224
	.loc 1 2429 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2430 9
	call	Sec_Eng_PKA_Clear_Int
.L224:
	.loc 1 2432 1
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
.LFE68:
	.size	Sec_Eng_PKA_LSQR, .-Sec_Eng_PKA_LSQR
	.section	.text.Sec_Eng_PKA_LDIV,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_LDIV
	.type	Sec_Eng_PKA_LDIV, @function
Sec_Eng_PKA_LDIV:
.LFB69:
	.loc 1 2450 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	t1,a0
	mv	a7,a1
	mv	a0,a2
	mv	a1,a3
	mv	a2,a4
	mv	a3,a5
	mv	a4,a6
	mv	a5,t1
	sb	a5,-17(s0)
	mv	a5,a7
	sb	a5,-18(s0)
	mv	a5,a0
	sb	a5,-19(s0)
	mv	a5,a1
	sb	a5,-20(s0)
	mv	a5,a2
	sb	a5,-21(s0)
	mv	a5,a3
	sb	a5,-22(s0)
	mv	a5,a4
	sb	a5,-23(s0)
	.loc 1 2451 5
	lbu	a5,-23(s0)
	lbu	a3,-17(s0)
	lbu	a2,-18(s0)
	lbu	a1,-19(s0)
	lbu	a0,-20(s0)
	li	a4,20
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2452 5
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	mv	a1,a4
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S2
	.loc 1 2454 7
	lbu	a5,-23(s0)
	beq	a5,zero,.L227
	.loc 1 2455 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2456 9
	call	Sec_Eng_PKA_Clear_Int
.L227:
	.loc 1 2458 1
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
.LFE69:
	.size	Sec_Eng_PKA_LDIV, .-Sec_Eng_PKA_LDIV
	.section	.text.Sec_Eng_PKA_LMUL2N,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_LMUL2N
	.type	Sec_Eng_PKA_LMUL2N, @function
Sec_Eng_PKA_LMUL2N:
.LFB70:
	.loc 1 2475 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a6,a0
	mv	a0,a1
	mv	a1,a2
	mv	a2,a3
	mv	a3,a4
	mv	a4,a5
	mv	a5,a6
	sb	a5,-33(s0)
	mv	a5,a0
	sb	a5,-34(s0)
	mv	a5,a1
	sb	a5,-35(s0)
	mv	a5,a2
	sb	a5,-36(s0)
	mv	a5,a3
	sh	a5,-38(s0)
	mv	a5,a4
	sb	a5,-39(s0)
	.loc 1 2478 5
	lbu	a3,-33(s0)
	lbu	a2,-34(s0)
	lbu	a1,-35(s0)
	lbu	a0,-36(s0)
	li	a5,0
	li	a4,19
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2480 28
	lhu	a5,-38(s0)
	mv	a4,a5
	li	a5,32768
	addi	a5,a5,-1
	and	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	li	a5,32768
	addi	a5,a5,-1
	and	a5,a4,a5
	lw	a3,-20(s0)
	li	a4,-32768
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 2481 7
	li	a5,1073758208
	addi	a5,a5,832
	.loc 1 2481 72
	lw	a4,-20(s0)
	.loc 1 2481 61
	sw	a4,0(a5)
	.loc 1 2483 7
	lbu	a5,-39(s0)
	beq	a5,zero,.L230
	.loc 1 2484 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2485 9
	call	Sec_Eng_PKA_Clear_Int
.L230:
	.loc 1 2487 1
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
.LFE70:
	.size	Sec_Eng_PKA_LMUL2N, .-Sec_Eng_PKA_LMUL2N
	.section	.text.Sec_Eng_PKA_LDIV2N,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_LDIV2N
	.type	Sec_Eng_PKA_LDIV2N, @function
Sec_Eng_PKA_LDIV2N:
.LFB71:
	.loc 1 2504 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a6,a0
	mv	a0,a1
	mv	a1,a2
	mv	a2,a3
	mv	a3,a4
	mv	a4,a5
	mv	a5,a6
	sb	a5,-33(s0)
	mv	a5,a0
	sb	a5,-34(s0)
	mv	a5,a1
	sb	a5,-35(s0)
	mv	a5,a2
	sb	a5,-36(s0)
	mv	a5,a3
	sh	a5,-38(s0)
	mv	a5,a4
	sb	a5,-39(s0)
	.loc 1 2507 5
	lbu	a3,-33(s0)
	lbu	a2,-34(s0)
	lbu	a1,-35(s0)
	lbu	a0,-36(s0)
	li	a5,0
	li	a4,18
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2509 28
	lhu	a5,-38(s0)
	mv	a4,a5
	li	a5,32768
	addi	a5,a5,-1
	and	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	li	a5,32768
	addi	a5,a5,-1
	and	a5,a4,a5
	lw	a3,-20(s0)
	li	a4,-32768
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 2510 7
	li	a5,1073758208
	addi	a5,a5,832
	.loc 1 2510 72
	lw	a4,-20(s0)
	.loc 1 2510 61
	sw	a4,0(a5)
	.loc 1 2512 7
	lbu	a5,-39(s0)
	beq	a5,zero,.L233
	.loc 1 2513 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2514 9
	call	Sec_Eng_PKA_Clear_Int
.L233:
	.loc 1 2516 1
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
	.size	Sec_Eng_PKA_LDIV2N, .-Sec_Eng_PKA_LDIV2N
	.section	.text.Sec_Eng_PKA_LMOD2N,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_LMOD2N
	.type	Sec_Eng_PKA_LMOD2N, @function
Sec_Eng_PKA_LMOD2N:
.LFB72:
	.loc 1 2533 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a6,a0
	mv	a0,a1
	mv	a1,a2
	mv	a2,a3
	mv	a3,a4
	mv	a4,a5
	mv	a5,a6
	sb	a5,-33(s0)
	mv	a5,a0
	sb	a5,-34(s0)
	mv	a5,a1
	sb	a5,-35(s0)
	mv	a5,a2
	sb	a5,-36(s0)
	mv	a5,a3
	sh	a5,-38(s0)
	mv	a5,a4
	sb	a5,-39(s0)
	.loc 1 2536 5
	lbu	a5,-39(s0)
	lbu	a3,-33(s0)
	lbu	a2,-34(s0)
	lbu	a1,-35(s0)
	lbu	a0,-36(s0)
	li	a4,17
	call	Sec_Eng_PKA_Write_Common_OP_First_Cfg
	.loc 1 2538 28
	lhu	a5,-38(s0)
	mv	a4,a5
	li	a5,32768
	addi	a5,a5,-1
	and	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	li	a5,32768
	addi	a5,a5,-1
	and	a5,a4,a5
	lw	a3,-20(s0)
	li	a4,-32768
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 2539 7
	li	a5,1073758208
	addi	a5,a5,832
	.loc 1 2539 72
	lw	a4,-20(s0)
	.loc 1 2539 61
	sw	a4,0(a5)
	.loc 1 2541 7
	lbu	a5,-39(s0)
	beq	a5,zero,.L236
	.loc 1 2542 9
	call	Sec_Eng_PKA_Wait_ISR
	.loc 1 2543 9
	call	Sec_Eng_PKA_Clear_Int
.L236:
	.loc 1 2545 1
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
.LFE72:
	.size	Sec_Eng_PKA_LMOD2N, .-Sec_Eng_PKA_LMOD2N
	.section	.text.Sec_Eng_PKA_GF2Mont,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_GF2Mont
	.type	Sec_Eng_PKA_GF2Mont, @function
Sec_Eng_PKA_GF2Mont:
.LFB73:
	.loc 1 2566 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	t3,a0
	mv	t1,a1
	mv	a0,a2
	mv	a1,a3
	sw	a4,-24(s0)
	mv	a2,a5
	mv	a3,a6
	mv	a4,a7
	mv	a5,t3
	sb	a5,-17(s0)
	mv	a5,t1
	sb	a5,-18(s0)
	mv	a5,a0
	sb	a5,-19(s0)
	mv	a5,a1
	sb	a5,-20(s0)
	mv	a5,a2
	sb	a5,-25(s0)
	mv	a5,a3
	sb	a5,-26(s0)
	mv	a5,a4
	sb	a5,-27(s0)
	.loc 1 2567 5
	lw	a5,-24(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	lbu	a3,-20(s0)
	lbu	a2,-19(s0)
	lbu	a1,-26(s0)
	lbu	a0,-25(s0)
	li	a5,0
	call	Sec_Eng_PKA_LMUL2N
	.loc 1 2568 5
	lbu	a5,0(s0)
	lbu	a4,-27(s0)
	lbu	a3,-26(s0)
	lbu	a2,-25(s0)
	lbu	a1,-18(s0)
	lbu	a0,-17(s0)
	li	a6,1
	call	Sec_Eng_PKA_MREM
	.loc 1 2569 1
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
	.size	Sec_Eng_PKA_GF2Mont, .-Sec_Eng_PKA_GF2Mont
	.section	.text.Sec_Eng_PKA_Mont2GF,"ax",@progbits
	.align	1
	.globl	Sec_Eng_PKA_Mont2GF
	.type	Sec_Eng_PKA_Mont2GF, @function
Sec_Eng_PKA_Mont2GF:
.LFB74:
	.loc 1 2591 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	t4,a0
	mv	t3,a1
	mv	t1,a2
	mv	a0,a3
	mv	a1,a4
	mv	a2,a5
	mv	a3,a6
	mv	a4,a7
	mv	a5,t4
	sb	a5,-17(s0)
	mv	a5,t3
	sb	a5,-18(s0)
	mv	a5,t1
	sb	a5,-19(s0)
	mv	a5,a0
	sb	a5,-20(s0)
	mv	a5,a1
	sb	a5,-21(s0)
	mv	a5,a2
	sb	a5,-22(s0)
	mv	a5,a3
	sb	a5,-23(s0)
	mv	a5,a4
	sb	a5,-24(s0)
	.loc 1 2592 5
	lbu	a5,-22(s0)
	lbu	a4,-21(s0)
	lbu	a3,-20(s0)
	lbu	a2,-19(s0)
	lbu	a1,-24(s0)
	lbu	a0,-23(s0)
	li	a6,0
	call	Sec_Eng_PKA_LMUL
	.loc 1 2593 5
	lbu	a5,4(s0)
	lbu	a4,0(s0)
	lbu	a3,-24(s0)
	lbu	a2,-23(s0)
	lbu	a1,-18(s0)
	lbu	a0,-17(s0)
	li	a6,1
	call	Sec_Eng_PKA_MREM
	.loc 1 2594 1
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
.LFE74:
	.size	Sec_Eng_PKA_Mont2GF, .-Sec_Eng_PKA_Mont2GF
	.section	.text.Sec_Eng_GMAC_Enable_LE,"ax",@progbits
	.align	1
	.globl	Sec_Eng_GMAC_Enable_LE
	.type	Sec_Eng_GMAC_Enable_LE, @function
Sec_Eng_GMAC_Enable_LE:
.LFB75:
	.loc 1 2606 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 2609 15
	li	a5,1073758208
	addi	a5,a5,1280
	.loc 1 2609 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2610 12
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 2611 12
	lw	a4,-20(s0)
	li	a5,-8192
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 2612 12
	lw	a4,-20(s0)
	li	a5,-16384
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 2613 7
	li	a5,1073758208
	addi	a5,a5,1280
	.loc 1 2613 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 2614 1
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
.LFE75:
	.size	Sec_Eng_GMAC_Enable_LE, .-Sec_Eng_GMAC_Enable_LE
	.section	.text.Sec_Eng_GMAC_Enable_BE,"ax",@progbits
	.align	1
	.globl	Sec_Eng_GMAC_Enable_BE
	.type	Sec_Eng_GMAC_Enable_BE, @function
Sec_Eng_GMAC_Enable_BE:
.LFB76:
	.loc 1 2625 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 2628 15
	li	a5,1073758208
	addi	a5,a5,1280
	.loc 1 2628 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2629 12
	lw	a4,-20(s0)
	li	a5,4096
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 2630 12
	lw	a4,-20(s0)
	li	a5,8192
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 2631 12
	lw	a4,-20(s0)
	li	a5,16384
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 2632 7
	li	a5,1073758208
	addi	a5,a5,1280
	.loc 1 2632 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 2633 1
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
	.size	Sec_Eng_GMAC_Enable_BE, .-Sec_Eng_GMAC_Enable_BE
	.section	.text.Sec_Eng_GMAC_Enable_Link,"ax",@progbits
	.align	1
	.globl	Sec_Eng_GMAC_Enable_Link
	.type	Sec_Eng_GMAC_Enable_Link, @function
Sec_Eng_GMAC_Enable_Link:
.LFB77:
	.loc 1 2644 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 2648 15
	li	a5,1073758208
	addi	a5,a5,1280
	.loc 1 2648 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2649 7
	li	a5,1073758208
	addi	a5,a5,1280
	.loc 1 2649 74
	lw	a4,-20(s0)
	ori	a4,a4,4
	.loc 1 2649 61
	sw	a4,0(a5)
	.loc 1 2650 1
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
.LFE77:
	.size	Sec_Eng_GMAC_Enable_Link, .-Sec_Eng_GMAC_Enable_Link
	.section	.text.Sec_Eng_GMAC_Disable_Link,"ax",@progbits
	.align	1
	.globl	Sec_Eng_GMAC_Disable_Link
	.type	Sec_Eng_GMAC_Disable_Link, @function
Sec_Eng_GMAC_Disable_Link:
.LFB78:
	.loc 1 2661 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 2665 15
	li	a5,1073758208
	addi	a5,a5,1280
	.loc 1 2665 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2666 7
	li	a5,1073758208
	addi	a5,a5,1280
	.loc 1 2666 74
	lw	a4,-20(s0)
	andi	a4,a4,-5
	.loc 1 2666 61
	sw	a4,0(a5)
	.loc 1 2667 1
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
	.size	Sec_Eng_GMAC_Disable_Link, .-Sec_Eng_GMAC_Disable_Link
	.section	.text.Sec_Eng_GMAC_Link_Work,"ax",@progbits
	.align	1
	.globl	Sec_Eng_GMAC_Link_Work
	.type	Sec_Eng_GMAC_Link_Work, @function
Sec_Eng_GMAC_Link_Work:
.LFB79:
	.loc 1 2681 1
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
	.loc 1 2682 14
	li	a5,1073758208
	sw	a5,-24(s0)
	.loc 1 2684 14
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-20(s0)
	.loc 1 2687 17
	lw	a5,-36(s0)
	andi	a5,a5,3
	.loc 1 2687 7
	bne	a5,zero,.L244
	.loc 1 2687 35 discriminator 1
	lw	a5,-44(s0)
	andi	a5,a5,15
	.loc 1 2687 29 discriminator 1
	beq	a5,zero,.L245
.L244:
	.loc 1 2688 16
	li	a5,1
	j	.L246
.L245:
	.loc 1 2693 45
	lw	a5,-24(s0)
	addi	a5,a5,1280
	.loc 1 2693 15
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 2694 19
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 2695 11
	lw	a5,-20(s0)
	bne	a5,zero,.L247
	.loc 1 2696 20
	li	a5,2
	j	.L246
.L247:
	.loc 1 2698 23
	lw	a5,-28(s0)
	andi	a5,a5,1
	.loc 1 2698 38
	bne	a5,zero,.L245
	.loc 1 2701 34
	lw	a5,-24(s0)
	addi	a5,a5,1284
	.loc 1 2701 8
	mv	a4,a5
	.loc 1 2701 44
	lw	a5,-36(s0)
	sw	a5,0(a4)
	.loc 1 2704 27
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 2704 6
	mv	a4,a5
	.loc 1 2704 33
	lw	a5,-40(s0)
	.loc 1 2704 31
	sw	a5,0(a4)
	.loc 1 2707 36
	lw	a5,-44(s0)
	srli	a3,a5,4
	.loc 1 2707 27
	lw	a5,-36(s0)
	addi	a5,a5,2
	mv	a4,a5
	.loc 1 2707 31
	slli	a5,a3,16
	srli	a5,a5,16
	sh	a5,0(a4)
	.loc 1 2710 43
	lw	a5,-24(s0)
	addi	a5,a5,1280
	.loc 1 2710 12
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 2711 34
	lw	a5,-24(s0)
	addi	a5,a5,1280
	.loc 1 2711 8
	mv	a4,a5
	.loc 1 2711 57
	lw	a5,-28(s0)
	ori	a5,a5,2
	.loc 1 2711 44
	sw	a5,0(a4)
	.loc 1 2712 16
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-20(s0)
.L249:
	.loc 1 2714 45
	lw	a5,-24(s0)
	addi	a5,a5,1280
	.loc 1 2714 15
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 2715 19
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 2716 11
	lw	a5,-20(s0)
	bne	a5,zero,.L248
	.loc 1 2717 20
	li	a5,2
	j	.L246
.L248:
	.loc 1 2719 23
	lw	a5,-28(s0)
	andi	a5,a5,1
	.loc 1 2719 38
	bne	a5,zero,.L249
	.loc 1 2722 47
	lw	a5,-36(s0)
	addi	a5,a5,24
	.loc 1 2722 5
	li	a2,16
	mv	a1,a5
	lw	a0,-48(s0)
	call	BL602_MemCpy_Fast
	.loc 1 2724 12
	li	a5,0
.L246:
	.loc 1 2725 1
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
	.size	Sec_Eng_GMAC_Link_Work, .-Sec_Eng_GMAC_Link_Work
	.section	.text.SEC_Eng_IntMask,"ax",@progbits
	.align	1
	.globl	SEC_Eng_IntMask
	.type	SEC_Eng_IntMask, @function
SEC_Eng_IntMask:
.LFB80:
	.loc 1 2822 1
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
	mv	a4,a1
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 2828 5
	lbu	a5,-33(s0)
	li	a4,6
	beq	a5,a4,.L251
	li	a4,6
	bgt	a5,a4,.L272
	li	a4,5
	beq	a5,a4,.L253
	li	a4,5
	bgt	a5,a4,.L272
	li	a4,4
	beq	a5,a4,.L273
	li	a4,4
	bgt	a5,a4,.L272
	li	a4,3
	beq	a5,a4,.L255
	li	a4,3
	bgt	a5,a4,.L272
	li	a4,2
	beq	a5,a4,.L256
	li	a4,2
	bgt	a5,a4,.L272
	beq	a5,zero,.L257
	li	a4,1
	beq	a5,a4,.L258
	.loc 1 2916 13
	j	.L272
.L257:
	.loc 1 2830 23
	li	a5,1073758208
	addi	a5,a5,512
	.loc 1 2830 20
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2831 15
	lbu	a5,-34(s0)
	bne	a5,zero,.L259
	.loc 1 2833 19
	li	a5,1073758208
	addi	a5,a5,512
	.loc 1 2833 86
	lw	a3,-20(s0)
	li	a4,-4096
	addi	a4,a4,2047
	and	a4,a3,a4
	.loc 1 2833 73
	sw	a4,0(a5)
	.loc 1 2839 13
	j	.L261
.L259:
	.loc 1 2837 19
	li	a5,1073758208
	addi	a5,a5,512
	.loc 1 2837 86
	lw	a3,-20(s0)
	li	a4,4096
	addi	a4,a4,-2048
	or	a4,a3,a4
	.loc 1 2837 73
	sw	a4,0(a5)
	.loc 1 2839 13
	j	.L261
.L258:
	.loc 1 2841 23
	li	a5,1073758208
	addi	a5,a5,256
	.loc 1 2841 20
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2842 15
	lbu	a5,-34(s0)
	bne	a5,zero,.L262
	.loc 1 2844 19
	li	a5,1073758208
	addi	a5,a5,256
	.loc 1 2844 86
	lw	a3,-20(s0)
	li	a4,-4096
	addi	a4,a4,2047
	and	a4,a3,a4
	.loc 1 2844 73
	sw	a4,0(a5)
	.loc 1 2850 13
	j	.L261
.L262:
	.loc 1 2848 19
	li	a5,1073758208
	addi	a5,a5,256
	.loc 1 2848 86
	lw	a3,-20(s0)
	li	a4,4096
	addi	a4,a4,-2048
	or	a4,a3,a4
	.loc 1 2848 73
	sw	a4,0(a5)
	.loc 1 2850 13
	j	.L261
.L256:
	.loc 1 2852 23
	li	a5,1073758208
	.loc 1 2852 20
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2853 15
	lbu	a5,-34(s0)
	bne	a5,zero,.L264
	.loc 1 2855 19
	li	a5,1073758208
	.loc 1 2855 84
	lw	a3,-20(s0)
	li	a4,-4096
	addi	a4,a4,2047
	and	a4,a3,a4
	.loc 1 2855 71
	sw	a4,0(a5)
	.loc 1 2861 13
	j	.L261
.L264:
	.loc 1 2859 19
	li	a5,1073758208
	.loc 1 2859 84
	lw	a3,-20(s0)
	li	a4,4096
	addi	a4,a4,-2048
	or	a4,a3,a4
	.loc 1 2859 71
	sw	a4,0(a5)
	.loc 1 2861 13
	j	.L261
.L255:
	.loc 1 2863 23
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 2863 20
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2864 15
	lbu	a5,-34(s0)
	bne	a5,zero,.L266
	.loc 1 2866 19
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 2866 86
	lw	a3,-20(s0)
	li	a4,-4096
	addi	a4,a4,2047
	and	a4,a3,a4
	.loc 1 2866 73
	sw	a4,0(a5)
	.loc 1 2872 13
	j	.L261
.L266:
	.loc 1 2870 19
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 2870 86
	lw	a3,-20(s0)
	li	a4,4096
	addi	a4,a4,-2048
	or	a4,a3,a4
	.loc 1 2870 73
	sw	a4,0(a5)
	.loc 1 2872 13
	j	.L261
.L253:
	.loc 1 2876 23
	li	a5,1073758208
	addi	a5,a5,1280
	.loc 1 2876 20
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2877 15
	lbu	a5,-34(s0)
	bne	a5,zero,.L268
	.loc 1 2879 19
	li	a5,1073758208
	addi	a5,a5,1280
	.loc 1 2879 86
	lw	a3,-20(s0)
	li	a4,-4096
	addi	a4,a4,2047
	and	a4,a3,a4
	.loc 1 2879 73
	sw	a4,0(a5)
	.loc 1 2885 13
	j	.L261
.L268:
	.loc 1 2883 19
	li	a5,1073758208
	addi	a5,a5,1280
	.loc 1 2883 86
	lw	a3,-20(s0)
	li	a4,4096
	addi	a4,a4,-2048
	or	a4,a3,a4
	.loc 1 2883 73
	sw	a4,0(a5)
	.loc 1 2885 13
	j	.L261
.L251:
	.loc 1 2887 15
	lbu	a5,-34(s0)
	bne	a5,zero,.L270
	.loc 1 2889 27
	li	a5,1073758208
	addi	a5,a5,512
	.loc 1 2889 24
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2890 19
	li	a5,1073758208
	addi	a5,a5,512
	.loc 1 2890 86
	lw	a3,-20(s0)
	li	a4,-4096
	addi	a4,a4,2047
	and	a4,a3,a4
	.loc 1 2890 73
	sw	a4,0(a5)
	.loc 1 2891 27
	li	a5,1073758208
	addi	a5,a5,256
	.loc 1 2891 24
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2892 19
	li	a5,1073758208
	addi	a5,a5,256
	.loc 1 2892 86
	lw	a3,-20(s0)
	li	a4,-4096
	addi	a4,a4,2047
	and	a4,a3,a4
	.loc 1 2892 73
	sw	a4,0(a5)
	.loc 1 2893 27
	li	a5,1073758208
	.loc 1 2893 24
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2894 19
	li	a5,1073758208
	.loc 1 2894 84
	lw	a3,-20(s0)
	li	a4,-4096
	addi	a4,a4,2047
	and	a4,a3,a4
	.loc 1 2894 71
	sw	a4,0(a5)
	.loc 1 2895 27
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 2895 24
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2896 19
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 2896 86
	lw	a3,-20(s0)
	li	a4,-4096
	addi	a4,a4,2047
	and	a4,a3,a4
	.loc 1 2896 73
	sw	a4,0(a5)
	.loc 1 2897 27
	li	a5,1073758208
	addi	a5,a5,1280
	.loc 1 2897 24
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2898 19
	li	a5,1073758208
	addi	a5,a5,1280
	.loc 1 2898 86
	lw	a3,-20(s0)
	li	a4,-4096
	addi	a4,a4,2047
	and	a4,a3,a4
	.loc 1 2898 73
	sw	a4,0(a5)
	.loc 1 2913 13
	j	.L261
.L270:
	.loc 1 2902 27
	li	a5,1073758208
	addi	a5,a5,512
	.loc 1 2902 24
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2903 19
	li	a5,1073758208
	addi	a5,a5,512
	.loc 1 2903 86
	lw	a3,-20(s0)
	li	a4,4096
	addi	a4,a4,-2048
	or	a4,a3,a4
	.loc 1 2903 73
	sw	a4,0(a5)
	.loc 1 2904 27
	li	a5,1073758208
	addi	a5,a5,256
	.loc 1 2904 24
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2905 19
	li	a5,1073758208
	addi	a5,a5,256
	.loc 1 2905 86
	lw	a3,-20(s0)
	li	a4,4096
	addi	a4,a4,-2048
	or	a4,a3,a4
	.loc 1 2905 73
	sw	a4,0(a5)
	.loc 1 2906 27
	li	a5,1073758208
	.loc 1 2906 24
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2907 19
	li	a5,1073758208
	.loc 1 2907 84
	lw	a3,-20(s0)
	li	a4,4096
	addi	a4,a4,-2048
	or	a4,a3,a4
	.loc 1 2907 71
	sw	a4,0(a5)
	.loc 1 2908 27
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 2908 24
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2909 19
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 2909 86
	lw	a3,-20(s0)
	li	a4,4096
	addi	a4,a4,-2048
	or	a4,a3,a4
	.loc 1 2909 73
	sw	a4,0(a5)
	.loc 1 2910 27
	li	a5,1073758208
	addi	a5,a5,1280
	.loc 1 2910 24
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2911 19
	li	a5,1073758208
	addi	a5,a5,1280
	.loc 1 2911 86
	lw	a3,-20(s0)
	li	a4,4096
	addi	a4,a4,-2048
	or	a4,a3,a4
	.loc 1 2911 73
	sw	a4,0(a5)
	.loc 1 2913 13
	j	.L261
.L272:
	.loc 1 2916 13
	nop
	j	.L274
.L273:
	.loc 1 2874 13
	nop
.L261:
.L274:
	.loc 1 2918 1
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
.LFE80:
	.size	SEC_Eng_IntMask, .-SEC_Eng_IntMask
	.section	.text.SEC_Eng_ClrIntStatus,"ax",@progbits
	.align	1
	.globl	SEC_Eng_ClrIntStatus
	.type	SEC_Eng_ClrIntStatus, @function
SEC_Eng_ClrIntStatus:
.LFB81:
	.loc 1 2929 1
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
	.loc 1 2935 5
	lbu	a5,-33(s0)
	li	a4,5
	beq	a5,a4,.L276
	li	a4,5
	bgt	a5,a4,.L283
	li	a4,4
	beq	a5,a4,.L284
	li	a4,4
	bgt	a5,a4,.L283
	li	a4,3
	beq	a5,a4,.L279
	li	a4,3
	bgt	a5,a4,.L283
	li	a4,2
	beq	a5,a4,.L280
	li	a4,2
	bgt	a5,a4,.L283
	beq	a5,zero,.L281
	li	a4,1
	bne	a5,a4,.L283
	.loc 1 2938 23
	li	a5,1073758208
	addi	a5,a5,256
	.loc 1 2938 20
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2939 15
	li	a5,1073758208
	addi	a5,a5,256
	.loc 1 2939 82
	lw	a4,-20(s0)
	ori	a4,a4,512
	.loc 1 2939 69
	sw	a4,0(a5)
	.loc 1 2940 13
	j	.L282
.L280:
	.loc 1 2942 23
	li	a5,1073758208
	.loc 1 2942 20
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2943 15
	li	a5,1073758208
	.loc 1 2943 80
	lw	a4,-20(s0)
	ori	a4,a4,512
	.loc 1 2943 67
	sw	a4,0(a5)
	.loc 1 2944 13
	j	.L282
.L281:
	.loc 1 2946 23
	li	a5,1073758208
	addi	a5,a5,512
	.loc 1 2946 20
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2947 15
	li	a5,1073758208
	addi	a5,a5,512
	.loc 1 2947 82
	lw	a4,-20(s0)
	ori	a4,a4,512
	.loc 1 2947 69
	sw	a4,0(a5)
	.loc 1 2948 13
	j	.L282
.L279:
	.loc 1 2950 23
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 2950 20
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2951 15
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 2951 82
	lw	a4,-20(s0)
	ori	a4,a4,512
	.loc 1 2951 69
	sw	a4,0(a5)
	.loc 1 2952 13
	j	.L282
.L276:
	.loc 1 2956 23
	li	a5,1073758208
	addi	a5,a5,1280
	.loc 1 2956 20
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2957 15
	li	a5,1073758208
	addi	a5,a5,1280
	.loc 1 2957 82
	lw	a4,-20(s0)
	ori	a4,a4,512
	.loc 1 2957 69
	sw	a4,0(a5)
	.loc 1 2958 13
	j	.L282
.L283:
	.loc 1 2960 13
	nop
	j	.L285
.L284:
	.loc 1 2954 13
	nop
.L282:
.L285:
	.loc 1 2962 1
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
.LFE81:
	.size	SEC_Eng_ClrIntStatus, .-SEC_Eng_ClrIntStatus
	.section	.text.SEC_Eng_Int_Callback_Install,"ax",@progbits
	.align	1
	.globl	SEC_Eng_Int_Callback_Install
	.type	SEC_Eng_Int_Callback_Install, @function
SEC_Eng_Int_Callback_Install:
.LFB82:
	.loc 1 2974 1
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
	.loc 1 2978 21
	lbu	a5,-17(s0)
	.loc 1 2978 31
	lui	a4,%hi(secEngIntCbfArra)
	addi	a4,a4,%lo(secEngIntCbfArra)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 2979 1
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
.LFE82:
	.size	SEC_Eng_Int_Callback_Install, .-SEC_Eng_Int_Callback_Install
	.section	.text.SEC_Eng_GetIntStatus,"ax",@progbits
	.align	1
	.globl	SEC_Eng_GetIntStatus
	.type	SEC_Eng_GetIntStatus, @function
SEC_Eng_GetIntStatus:
.LFB83:
	.loc 1 2990 1
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
	.loc 1 2992 17
	sb	zero,-17(s0)
	.loc 1 2997 5
	lbu	a5,-33(s0)
	li	a4,5
	beq	a5,a4,.L288
	li	a4,5
	bgt	a5,a4,.L301
	li	a4,4
	beq	a5,a4,.L302
	li	a4,4
	bgt	a5,a4,.L301
	li	a4,3
	beq	a5,a4,.L291
	li	a4,3
	bgt	a5,a4,.L301
	li	a4,2
	beq	a5,a4,.L292
	li	a4,2
	bgt	a5,a4,.L301
	beq	a5,zero,.L293
	li	a4,1
	bne	a5,a4,.L301
	.loc 1 3000 23
	li	a5,1073758208
	addi	a5,a5,256
	.loc 1 3000 20
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 3001 27
	lw	a5,-24(s0)
	andi	a5,a5,256
	.loc 1 3001 15
	beq	a5,zero,.L303
	.loc 1 3002 24
	li	a5,1
	sb	a5,-17(s0)
	.loc 1 3004 13
	j	.L303
.L292:
	.loc 1 3006 23
	li	a5,1073758208
	.loc 1 3006 20
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 3007 27
	lw	a5,-24(s0)
	andi	a5,a5,256
	.loc 1 3007 15
	beq	a5,zero,.L304
	.loc 1 3008 24
	li	a5,1
	sb	a5,-17(s0)
	.loc 1 3010 13
	j	.L304
.L293:
	.loc 1 3012 23
	li	a5,1073758208
	addi	a5,a5,512
	.loc 1 3012 20
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 3013 27
	lw	a5,-24(s0)
	andi	a5,a5,256
	.loc 1 3013 15
	beq	a5,zero,.L305
	.loc 1 3014 24
	li	a5,1
	sb	a5,-17(s0)
	.loc 1 3016 13
	j	.L305
.L291:
	.loc 1 3018 23
	li	a5,1073758208
	addi	a5,a5,768
	.loc 1 3018 20
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 3019 27
	lw	a5,-24(s0)
	andi	a5,a5,256
	.loc 1 3019 15
	beq	a5,zero,.L306
	.loc 1 3020 24
	li	a5,1
	sb	a5,-17(s0)
	.loc 1 3022 13
	j	.L306
.L288:
	.loc 1 3026 23
	li	a5,1073758208
	addi	a5,a5,1280
	.loc 1 3026 20
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 3027 27
	lw	a5,-24(s0)
	andi	a5,a5,256
	.loc 1 3027 15
	beq	a5,zero,.L307
	.loc 1 3028 24
	li	a5,1
	sb	a5,-17(s0)
	.loc 1 3030 13
	j	.L307
.L301:
	.loc 1 3032 13
	nop
	j	.L295
.L302:
	.loc 1 3024 13
	nop
	j	.L295
.L303:
	.loc 1 3004 13
	nop
	j	.L295
.L304:
	.loc 1 3010 13
	nop
	j	.L295
.L305:
	.loc 1 3016 13
	nop
	j	.L295
.L306:
	.loc 1 3022 13
	nop
	j	.L295
.L307:
	.loc 1 3030 13
	nop
.L295:
	.loc 1 3035 12
	lbu	a5,-17(s0)
	.loc 1 3036 1
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
	.size	SEC_Eng_GetIntStatus, .-SEC_Eng_GetIntStatus
	.section	.tcm_code,"ax",@progbits
	.align	1
	.weak	SEC_Eng_Turn_On_Sec_Ring
	.type	SEC_Eng_Turn_On_Sec_Ring, @function
SEC_Eng_Turn_On_Sec_Ring:
.LFB84:
	.loc 1 3129 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 3130 14
	sw	zero,-20(s0)
	.loc 1 3133 13
	li	a5,1073758208
	addi	a5,a5,564
	.loc 1 3133 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 3134 11
	lw	a4,-20(s0)
	li	a5,-2147483648
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 3135 7
	li	a5,1073758208
	addi	a5,a5,564
	.loc 1 3135 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 3136 1
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
.LFE84:
	.size	SEC_Eng_Turn_On_Sec_Ring, .-SEC_Eng_Turn_On_Sec_Ring
	.align	1
	.weak	SEC_Eng_Turn_Off_Sec_Ring
	.type	SEC_Eng_Turn_Off_Sec_Ring, @function
SEC_Eng_Turn_Off_Sec_Ring:
.LFB85:
	.loc 1 3150 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 3151 14
	sw	zero,-20(s0)
	.loc 1 3154 13
	li	a5,1073758208
	addi	a5,a5,564
	.loc 1 3154 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 3155 11
	lw	a4,-20(s0)
	li	a5,-2147483648
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 3156 7
	li	a5,1073758208
	addi	a5,a5,564
	.loc 1 3156 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 3157 1
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
.LFE85:
	.size	SEC_Eng_Turn_Off_Sec_Ring, .-SEC_Eng_Turn_Off_Sec_Ring
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sec_eng.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2889
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x22
	.4byte	.LASF291
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x23
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0xf
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0xf
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0xf
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xf
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x24
	.byte	0x4
	.uleb128 0x25
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x5a
	.uleb128 0x20
	.4byte	0x8e
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x20
	.4byte	0xab
	.uleb128 0x1c
	.4byte	0x8e
	.4byte	0xcc
	.uleb128 0x1d
	.4byte	0x3e
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	0x5a
	.byte	0x5
	.byte	0x17
	.byte	0x1
	.4byte	0xeb
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
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.4byte	0xcc
	.uleb128 0xb
	.4byte	0x5a
	.byte	0x5
	.byte	0x2a
	.byte	0x1
	.4byte	0x110
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0
	.uleb128 0x26
	.string	"SET"
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x5
	.byte	0x2d
	.byte	0x2
	.4byte	0xf7
	.uleb128 0xb
	.4byte	0x5a
	.byte	0x5
	.byte	0x33
	.byte	0x1
	.4byte	0x135
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x5
	.byte	0x36
	.byte	0x2
	.4byte	0x11c
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x5
	.byte	0x7c
	.byte	0xf
	.4byte	0x86
	.uleb128 0x11
	.4byte	0x141
	.uleb128 0xb
	.4byte	0x5a
	.byte	0x6
	.byte	0x39
	.byte	0xe
	.4byte	0x165
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x6
	.byte	0x3b
	.byte	0x2
	.4byte	0x152
	.uleb128 0xb
	.4byte	0x5a
	.byte	0x6
	.byte	0x40
	.byte	0xe
	.4byte	0x184
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x6
	.byte	0x42
	.byte	0x2
	.4byte	0x171
	.uleb128 0xb
	.4byte	0x5a
	.byte	0x6
	.byte	0x47
	.byte	0xe
	.4byte	0x1b5
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x6
	.byte	0x4c
	.byte	0x2
	.4byte	0x190
	.uleb128 0xb
	.4byte	0x5a
	.byte	0x6
	.byte	0x51
	.byte	0xe
	.4byte	0x1e0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x6
	.byte	0x55
	.byte	0x2
	.4byte	0x1c1
	.uleb128 0xb
	.4byte	0x5a
	.byte	0x6
	.byte	0x5a
	.byte	0xe
	.4byte	0x211
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x6
	.byte	0x5f
	.byte	0x2
	.4byte	0x1ec
	.uleb128 0xb
	.4byte	0x5a
	.byte	0x6
	.byte	0x64
	.byte	0xe
	.4byte	0x242
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x6
	.byte	0x69
	.byte	0x2
	.4byte	0x21d
	.uleb128 0xb
	.4byte	0x5a
	.byte	0x6
	.byte	0x76
	.byte	0xe
	.4byte	0x267
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x6
	.byte	0x79
	.byte	0x2
	.4byte	0x24e
	.uleb128 0xb
	.4byte	0x5a
	.byte	0x6
	.byte	0x7e
	.byte	0xe
	.4byte	0x28c
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x6
	.byte	0x81
	.byte	0x2
	.4byte	0x273
	.uleb128 0xb
	.4byte	0x5a
	.byte	0x6
	.byte	0x86
	.byte	0xe
	.4byte	0x2e1
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x6
	.byte	0x91
	.byte	0x2
	.4byte	0x298
	.uleb128 0xb
	.4byte	0x5a
	.byte	0x6
	.byte	0x96
	.byte	0xe
	.4byte	0x39c
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x11
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x12
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x13
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x15
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x16
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x17
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x19
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x21
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x22
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x23
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x25
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x26
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x27
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0x36
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x37
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x39
	.byte	0
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x6
	.byte	0xb2
	.byte	0x2
	.4byte	0x2ed
	.uleb128 0xb
	.4byte	0x5a
	.byte	0x6
	.byte	0xb7
	.byte	0xe
	.4byte	0x3df
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF98
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.4byte	.LASF102
	.byte	0x6
	.byte	0xbf
	.byte	0x2
	.4byte	0x3a8
	.uleb128 0x10
	.byte	0x14
	.byte	0x6
	.byte	0xc4
	.4byte	0x428
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x6
	.byte	0xc5
	.byte	0xe
	.4byte	0x428
	.byte	0
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x6
	.byte	0xc6
	.byte	0xf
	.4byte	0x438
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x6
	.byte	0xc7
	.byte	0xf
	.4byte	0x438
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x6
	.byte	0xc8
	.byte	0xd
	.4byte	0x8e
	.byte	0x10
	.byte	0
	.uleb128 0x1c
	.4byte	0xab
	.4byte	0x438
	.uleb128 0x1d
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	0xab
	.uleb128 0x7
	.4byte	.LASF107
	.byte	0x6
	.byte	0xc9
	.byte	0x2
	.4byte	0x3eb
	.uleb128 0x10
	.byte	0x14
	.byte	0x6
	.byte	0xce
	.4byte	0x486
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x6
	.byte	0xcf
	.byte	0xe
	.4byte	0x428
	.byte	0
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x6
	.byte	0xd0
	.byte	0xf
	.4byte	0x438
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x6
	.byte	0xd1
	.byte	0xf
	.4byte	0x438
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x6
	.byte	0xd2
	.byte	0xe
	.4byte	0xab
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	.LASF109
	.byte	0x6
	.byte	0xd3
	.byte	0x2
	.4byte	0x449
	.uleb128 0x10
	.byte	0x2
	.byte	0x6
	.byte	0xd8
	.4byte	0x4b5
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x6
	.byte	0xd9
	.byte	0xd
	.4byte	0x8e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x6
	.byte	0xda
	.byte	0x16
	.4byte	0x1e0
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF112
	.byte	0x6
	.byte	0xdb
	.byte	0x2
	.4byte	0x492
	.uleb128 0x10
	.byte	0x4
	.byte	0x1
	.byte	0x52
	.4byte	0x503
	.uleb128 0x5
	.4byte	.LASF113
	.byte	0x53
	.4byte	0xab
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	.LASF114
	.byte	0x54
	.4byte	0xab
	.byte	0x8
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF115
	.byte	0x55
	.4byte	0xab
	.byte	0x4
	.byte	0x14
	.uleb128 0x1e
	.string	"op"
	.byte	0x56
	.4byte	0xab
	.uleb128 0x5
	.4byte	.LASF116
	.byte	0x57
	.4byte	0xab
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.byte	0x51
	.byte	0x5
	.4byte	0x51e
	.uleb128 0x14
	.string	"BF"
	.byte	0x58
	.4byte	0x4c1
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x59
	.4byte	0xab
	.byte	0
	.uleb128 0x16
	.4byte	.LASF120
	.byte	0x50
	.4byte	0x536
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	0x503
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x1
	.byte	0x5f
	.4byte	0x578
	.uleb128 0x5
	.4byte	.LASF119
	.byte	0x60
	.4byte	0xab
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	.LASF114
	.byte	0x61
	.4byte	0xab
	.byte	0x8
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF115
	.byte	0x62
	.4byte	0xab
	.byte	0x4
	.byte	0x14
	.uleb128 0x1e
	.string	"op"
	.byte	0x63
	.4byte	0xab
	.uleb128 0x5
	.4byte	.LASF116
	.byte	0x64
	.4byte	0xab
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.byte	0x5e
	.byte	0x5
	.4byte	0x593
	.uleb128 0x14
	.string	"BF"
	.byte	0x65
	.4byte	0x536
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x66
	.4byte	0xab
	.byte	0
	.uleb128 0x16
	.4byte	.LASF121
	.byte	0x5d
	.4byte	0x5ab
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x1
	.byte	0x67
	.byte	0x7
	.4byte	0x578
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x1
	.byte	0x6c
	.4byte	0x5f9
	.uleb128 0x5
	.4byte	.LASF122
	.byte	0x6d
	.4byte	0xab
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF123
	.byte	0x6e
	.4byte	0xab
	.byte	0x4
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF124
	.byte	0x6f
	.4byte	0xab
	.byte	0x8
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF115
	.byte	0x70
	.4byte	0xab
	.byte	0x4
	.byte	0x14
	.uleb128 0x1e
	.string	"op"
	.byte	0x71
	.4byte	0xab
	.uleb128 0x5
	.4byte	.LASF116
	.byte	0x72
	.4byte	0xab
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.byte	0x6b
	.byte	0x5
	.4byte	0x614
	.uleb128 0x14
	.string	"BF"
	.byte	0x73
	.4byte	0x5ab
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x74
	.4byte	0xab
	.byte	0
	.uleb128 0x16
	.4byte	.LASF125
	.byte	0x6a
	.4byte	0x62c
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x1
	.byte	0x75
	.byte	0x7
	.4byte	0x5f9
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x1
	.byte	0x7a
	.4byte	0x665
	.uleb128 0x5
	.4byte	.LASF126
	.byte	0x7b
	.4byte	0xab
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	.LASF127
	.byte	0x7c
	.4byte	0xab
	.byte	0x8
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF128
	.byte	0x7d
	.4byte	0xab
	.byte	0x4
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF129
	.byte	0x7e
	.4byte	0xab
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.byte	0x79
	.byte	0x5
	.4byte	0x680
	.uleb128 0x14
	.string	"BF"
	.byte	0x7f
	.4byte	0x62c
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x80
	.4byte	0xab
	.byte	0
	.uleb128 0x16
	.4byte	.LASF130
	.byte	0x78
	.4byte	0x698
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x1
	.byte	0x81
	.byte	0x7
	.4byte	0x665
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x1
	.byte	0x86
	.4byte	0x6c5
	.uleb128 0x5
	.4byte	.LASF131
	.byte	0x87
	.4byte	0xab
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF132
	.byte	0x88
	.4byte	0xab
	.byte	0x4
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF133
	.byte	0x89
	.4byte	0xab
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.byte	0x85
	.byte	0x5
	.4byte	0x6e0
	.uleb128 0x14
	.string	"BF"
	.byte	0x8a
	.4byte	0x698
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x8b
	.4byte	0xab
	.byte	0
	.uleb128 0x16
	.4byte	.LASF134
	.byte	0x84
	.4byte	0x6f8
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x1
	.byte	0x8c
	.byte	0x7
	.4byte	0x6c5
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x1
	.byte	0x91
	.4byte	0x73d
	.uleb128 0x5
	.4byte	.LASF131
	.byte	0x92
	.4byte	0xab
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF132
	.byte	0x93
	.4byte	0xab
	.byte	0x4
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF127
	.byte	0x94
	.4byte	0xab
	.byte	0x8
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF128
	.byte	0x95
	.4byte	0xab
	.byte	0x4
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF129
	.byte	0x96
	.4byte	0xab
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.byte	0x90
	.byte	0x5
	.4byte	0x758
	.uleb128 0x14
	.string	"BF"
	.byte	0x97
	.4byte	0x6f8
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x98
	.4byte	0xab
	.byte	0
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0x8f
	.4byte	0x770
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x1
	.byte	0x99
	.byte	0x7
	.4byte	0x73d
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x1
	.byte	0x9e
	.4byte	0x791
	.uleb128 0x5
	.4byte	.LASF136
	.byte	0x9f
	.4byte	0xab
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF129
	.byte	0xa0
	.4byte	0xab
	.byte	0x11
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.byte	0x9d
	.byte	0x6
	.4byte	0x7ac
	.uleb128 0x14
	.string	"BF"
	.byte	0xa1
	.4byte	0x770
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0xa2
	.4byte	0xab
	.byte	0
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0x9c
	.4byte	0x7c4
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x1
	.byte	0xa3
	.byte	0x7
	.4byte	0x791
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x14d
	.4byte	0x7d4
	.uleb128 0x1d
	.4byte	0x3e
	.byte	0x5
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF141
	.byte	0xab
	.byte	0x1a
	.4byte	0x7c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secEngIntCbfArra
	.uleb128 0x1f
	.4byte	.LASF138
	.byte	0x5
	.byte	0x8c
	.byte	0x7
	.4byte	0x84
	.4byte	0x805
	.uleb128 0x12
	.4byte	0x84
	.uleb128 0x12
	.4byte	0x805
	.uleb128 0x12
	.4byte	0xab
	.byte	0
	.uleb128 0x11
	.4byte	0x80a
	.uleb128 0x27
	.uleb128 0x1f
	.4byte	.LASF139
	.byte	0x5
	.byte	0x8d
	.byte	0x7
	.4byte	0x84
	.4byte	0x82b
	.uleb128 0x12
	.4byte	0x84
	.uleb128 0x12
	.4byte	0x8e
	.uleb128 0x12
	.4byte	0xab
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0x7
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x84b
	.uleb128 0x12
	.4byte	0x84
	.uleb128 0x12
	.4byte	0x2b
	.uleb128 0x12
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	.LASF143
	.2byte	0xc4d
	.byte	0x2c
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x871
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0xc4f
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF144
	.2byte	0xc38
	.byte	0x2c
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x897
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0xc3a
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF152
	.2byte	0xbad
	.4byte	0x110
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8de
	.uleb128 0x1
	.4byte	.LASF147
	.2byte	0xbad
	.byte	0x33
	.4byte	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0xbaf
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF145
	.2byte	0xbb0
	.byte	0x11
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF146
	.2byte	0xb9d
	.byte	0x6
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x913
	.uleb128 0x1
	.4byte	.LASF147
	.2byte	0xb9d
	.byte	0x34
	.4byte	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF148
	.2byte	0xb9d
	.byte	0x4e
	.4byte	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF149
	.2byte	0xb70
	.byte	0x6
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x948
	.uleb128 0x1
	.4byte	.LASF147
	.2byte	0xb70
	.byte	0x2c
	.4byte	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0xb72
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF150
	.2byte	0xb05
	.byte	0x6
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98c
	.uleb128 0x1
	.4byte	.LASF147
	.2byte	0xb05
	.byte	0x27
	.4byte	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF151
	.2byte	0xb05
	.byte	0x3d
	.4byte	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0xb07
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF153
	.2byte	0xa78
	.4byte	0xeb
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa0e
	.uleb128 0x1
	.4byte	.LASF108
	.2byte	0xa78
	.byte	0x2d
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"in"
	.2byte	0xa78
	.byte	0x45
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"len"
	.2byte	0xa78
	.byte	0x51
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"out"
	.2byte	0xa78
	.byte	0x5e
	.4byte	0xa13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF154
	.2byte	0xa7a
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0xa7b
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF155
	.2byte	0xa7c
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	0x9a
	.uleb128 0x11
	.4byte	0x8e
	.uleb128 0x4
	.4byte	.LASF156
	.2byte	0xa64
	.byte	0x6
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa3e
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0xa66
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF157
	.2byte	0xa53
	.byte	0x6
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa64
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0xa55
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF158
	.2byte	0xa40
	.byte	0x6
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8a
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0xa42
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF159
	.2byte	0xa2d
	.byte	0x6
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab0
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0xa2f
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF160
	.2byte	0xa1d
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5c
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0xa1d
	.byte	0x22
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0xa1d
	.byte	0x34
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0xa1d
	.byte	0x45
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.4byte	.LASF164
	.2byte	0xa1d
	.byte	0x57
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF165
	.2byte	0xa1d
	.byte	0x68
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF166
	.2byte	0xa1d
	.byte	0x7d
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1
	.4byte	.LASF167
	.2byte	0xa1e
	.byte	0x1d
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x1
	.4byte	.LASF168
	.2byte	0xa1e
	.byte	0x2f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF169
	.2byte	0xa1e
	.byte	0x3f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.4byte	.LASF170
	.2byte	0xa1e
	.byte	0x51
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF171
	.2byte	0xa04
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf9
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0xa04
	.byte	0x22
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0xa04
	.byte	0x34
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF172
	.2byte	0xa04
	.byte	0x45
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.4byte	.LASF173
	.2byte	0xa04
	.byte	0x57
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF113
	.2byte	0xa04
	.byte	0x68
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF167
	.2byte	0xa05
	.byte	0x1d
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.4byte	.LASF168
	.2byte	0xa05
	.byte	0x2f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1
	.4byte	.LASF169
	.2byte	0xa05
	.byte	0x3f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x1
	.4byte	.LASF170
	.2byte	0xa05
	.byte	0x51
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF174
	.2byte	0x9e3
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc78
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x9e3
	.byte	0x21
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x9e3
	.byte	0x33
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x9e3
	.byte	0x44
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x9e3
	.byte	0x57
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF136
	.2byte	0x9e4
	.byte	0x22
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x9e4
	.byte	0x34
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0xa
	.string	"cfg"
	.2byte	0x9e6
	.byte	0x22
	.4byte	0x7ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF178
	.2byte	0x9c6
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf7
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x9c6
	.byte	0x21
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x9c6
	.byte	0x33
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x9c6
	.byte	0x44
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x9c6
	.byte	0x57
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF136
	.2byte	0x9c7
	.byte	0x22
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x9c7
	.byte	0x34
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0xa
	.string	"cfg"
	.2byte	0x9c9
	.byte	0x22
	.4byte	0x7ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF179
	.2byte	0x9a9
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd76
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x9a9
	.byte	0x21
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x9a9
	.byte	0x33
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x9a9
	.byte	0x44
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x9a9
	.byte	0x57
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF136
	.2byte	0x9aa
	.byte	0x1e
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x9aa
	.byte	0x30
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0xa
	.string	"cfg"
	.2byte	0x9ac
	.byte	0x22
	.4byte	0x7ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF180
	.2byte	0x990
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf5
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x990
	.byte	0x1f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x990
	.byte	0x31
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x990
	.byte	0x42
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x990
	.byte	0x55
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF181
	.2byte	0x991
	.byte	0x20
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF182
	.2byte	0x991
	.byte	0x33
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x991
	.byte	0x44
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.byte	0
	.uleb128 0x6
	.4byte	.LASF183
	.2byte	0x975
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe65
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x975
	.byte	0x1f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x975
	.byte	0x31
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x975
	.byte	0x42
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x975
	.byte	0x55
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x975
	.byte	0x66
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x977
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF185
	.2byte	0x95c
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee4
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x95c
	.byte	0x1f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x95c
	.byte	0x31
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x95c
	.byte	0x42
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x95c
	.byte	0x55
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF186
	.2byte	0x95d
	.byte	0x20
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF187
	.2byte	0x95d
	.byte	0x33
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x95d
	.byte	0x44
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.byte	0
	.uleb128 0x6
	.4byte	.LASF188
	.2byte	0x942
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf63
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x942
	.byte	0x1f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x942
	.byte	0x31
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x942
	.byte	0x42
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x942
	.byte	0x55
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF186
	.2byte	0x943
	.byte	0x20
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF187
	.2byte	0x943
	.byte	0x33
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x943
	.byte	0x44
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.byte	0
	.uleb128 0x6
	.4byte	.LASF189
	.2byte	0x928
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe2
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x928
	.byte	0x1f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x928
	.byte	0x31
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x928
	.byte	0x42
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x928
	.byte	0x55
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF186
	.2byte	0x929
	.byte	0x20
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF187
	.2byte	0x929
	.byte	0x33
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x929
	.byte	0x44
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.byte	0
	.uleb128 0x6
	.4byte	.LASF190
	.2byte	0x90c
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1052
	.uleb128 0x1
	.4byte	.LASF191
	.2byte	0x90c
	.byte	0x20
	.4byte	0xa13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x90c
	.byte	0x2e
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x90c
	.byte	0x41
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1
	.4byte	.LASF186
	.2byte	0x90c
	.byte	0x53
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0x1
	.4byte	.LASF187
	.2byte	0x90c
	.byte	0x66
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF192
	.2byte	0x90e
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF193
	.2byte	0x8f4
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10d1
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x8f4
	.byte	0x1f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x8f4
	.byte	0x31
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x8f4
	.byte	0x42
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x8f4
	.byte	0x55
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF181
	.2byte	0x8f5
	.byte	0x20
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF182
	.2byte	0x8f5
	.byte	0x33
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x8f5
	.byte	0x44
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.byte	0
	.uleb128 0x6
	.4byte	.LASF194
	.2byte	0x8da
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x116e
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x8da
	.byte	0x1f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x8da
	.byte	0x31
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x8da
	.byte	0x42
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x8da
	.byte	0x55
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF186
	.2byte	0x8db
	.byte	0x20
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF187
	.2byte	0x8db
	.byte	0x33
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1
	.4byte	.LASF181
	.2byte	0x8db
	.byte	0x45
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x1
	.4byte	.LASF182
	.2byte	0x8db
	.byte	0x58
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x8db
	.byte	0x69
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF195
	.2byte	0x8be
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ed
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x8be
	.byte	0x1f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x8be
	.byte	0x31
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x8be
	.byte	0x42
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x8be
	.byte	0x55
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF181
	.2byte	0x8bf
	.byte	0x20
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF182
	.2byte	0x8bf
	.byte	0x33
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x8bf
	.byte	0x44
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.byte	0
	.uleb128 0x6
	.4byte	.LASF196
	.2byte	0x8a4
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x128a
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x8a4
	.byte	0x1f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x8a4
	.byte	0x31
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x8a4
	.byte	0x42
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x8a4
	.byte	0x55
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF186
	.2byte	0x8a5
	.byte	0x20
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF187
	.2byte	0x8a5
	.byte	0x33
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1
	.4byte	.LASF181
	.2byte	0x8a5
	.byte	0x45
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x1
	.4byte	.LASF182
	.2byte	0x8a5
	.byte	0x58
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x8a5
	.byte	0x69
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF197
	.2byte	0x888
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1309
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x888
	.byte	0x1f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x888
	.byte	0x31
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x888
	.byte	0x42
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x888
	.byte	0x55
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF181
	.2byte	0x889
	.byte	0x20
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF182
	.2byte	0x889
	.byte	0x33
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x889
	.byte	0x44
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.byte	0
	.uleb128 0x6
	.4byte	.LASF198
	.2byte	0x86e
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13a6
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x86e
	.byte	0x1f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x86e
	.byte	0x31
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x86e
	.byte	0x42
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x86e
	.byte	0x55
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF186
	.2byte	0x86f
	.byte	0x20
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF187
	.2byte	0x86f
	.byte	0x33
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1
	.4byte	.LASF181
	.2byte	0x86f
	.byte	0x45
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x1
	.4byte	.LASF182
	.2byte	0x86f
	.byte	0x58
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x86f
	.byte	0x69
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF199
	.2byte	0x852
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1443
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x852
	.byte	0x1f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x852
	.byte	0x31
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x852
	.byte	0x42
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x852
	.byte	0x55
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF186
	.2byte	0x853
	.byte	0x20
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF187
	.2byte	0x853
	.byte	0x33
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1
	.4byte	.LASF181
	.2byte	0x853
	.byte	0x45
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x1
	.4byte	.LASF182
	.2byte	0x853
	.byte	0x58
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x853
	.byte	0x69
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF200
	.2byte	0x836
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14b3
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x836
	.byte	0x21
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x836
	.byte	0x33
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x836
	.byte	0x44
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x836
	.byte	0x57
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x836
	.byte	0x68
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x838
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF201
	.2byte	0x81d
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1523
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x81d
	.byte	0x24
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x81d
	.byte	0x36
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x81d
	.byte	0x47
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x81d
	.byte	0x5a
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x81d
	.byte	0x6b
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x81f
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF202
	.2byte	0x804
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1593
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x804
	.byte	0x1f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x804
	.byte	0x31
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x804
	.byte	0x42
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x804
	.byte	0x55
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x804
	.byte	0x66
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x806
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF203
	.2byte	0x7e5
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15f4
	.uleb128 0x1
	.4byte	.LASF204
	.2byte	0x7e5
	.byte	0x3d
	.4byte	0x2e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF205
	.2byte	0x7e5
	.byte	0x4d
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF206
	.2byte	0x7e5
	.byte	0x5f
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x7e5
	.byte	0x6c
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0xa
	.string	"cfg"
	.2byte	0x7e7
	.byte	0x1a
	.4byte	0x593
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF207
	.2byte	0x7cd
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1655
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x7cd
	.byte	0x31
	.4byte	0x2e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x7cd
	.byte	0x43
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF113
	.2byte	0x7cd
	.byte	0x54
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x7cd
	.byte	0x61
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x7cf
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF208
	.2byte	0x7b0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16c5
	.uleb128 0x1
	.4byte	.LASF204
	.2byte	0x7b0
	.byte	0x36
	.4byte	0x2e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF209
	.2byte	0x7b0
	.byte	0x47
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF210
	.2byte	0x7b0
	.byte	0x59
	.4byte	0x438
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF211
	.2byte	0x7b0
	.byte	0x69
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x2
	.4byte	.LASF212
	.2byte	0x7b2
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x7b3
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF213
	.2byte	0x792
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1744
	.uleb128 0x1
	.4byte	.LASF204
	.2byte	0x792
	.byte	0x38
	.4byte	0x2e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF205
	.2byte	0x792
	.byte	0x48
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF206
	.2byte	0x792
	.byte	0x61
	.4byte	0x1744
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF113
	.2byte	0x792
	.byte	0x6f
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x792
	.byte	0x7d
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x2
	.4byte	.LASF214
	.2byte	0x794
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF215
	.2byte	0x795
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x11
	.4byte	0xb7
	.uleb128 0x28
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x774
	.byte	0xd
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17ac
	.uleb128 0x1
	.4byte	.LASF210
	.2byte	0x774
	.byte	0x2e
	.4byte	0x438
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF211
	.2byte	0x774
	.byte	0x3e
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1
	.4byte	.LASF215
	.2byte	0x774
	.byte	0x60
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF216
	.2byte	0x776
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF214
	.2byte	0x777
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF217
	.2byte	0x760
	.byte	0x6
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x180c
	.uleb128 0x1
	.4byte	.LASF218
	.2byte	0x760
	.byte	0x28
	.4byte	0x438
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"src"
	.2byte	0x760
	.byte	0x3d
	.4byte	0x1744
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"len"
	.2byte	0x760
	.byte	0x4a
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF219
	.2byte	0x762
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"i"
	.2byte	0x763
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF220
	.2byte	0x724
	.byte	0x6
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x186c
	.uleb128 0x1
	.4byte	.LASF218
	.2byte	0x724
	.byte	0x27
	.4byte	0x438
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"src"
	.2byte	0x724
	.byte	0x3c
	.4byte	0x1744
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"len"
	.2byte	0x724
	.byte	0x49
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF219
	.2byte	0x726
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"i"
	.2byte	0x727
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF231
	.2byte	0x6e3
	.byte	0x14
	.4byte	0xeb
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18a5
	.uleb128 0x2
	.4byte	.LASF192
	.2byte	0x6e5
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF155
	.2byte	0x6e6
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF222
	.2byte	0x6cf
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1906
	.uleb128 0x1
	.4byte	.LASF223
	.2byte	0x6cf
	.byte	0x3f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF186
	.2byte	0x6cf
	.byte	0x53
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF224
	.2byte	0x6cf
	.byte	0x66
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x1
	.4byte	.LASF181
	.2byte	0x6cf
	.byte	0x7a
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"cfg"
	.2byte	0x6d1
	.byte	0x29
	.4byte	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF225
	.2byte	0x6ba
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1949
	.uleb128 0x1
	.4byte	.LASF224
	.2byte	0x6ba
	.byte	0x3c
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF181
	.2byte	0x6ba
	.byte	0x50
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xa
	.string	"cfg"
	.2byte	0x6bc
	.byte	0x2b
	.4byte	0x6e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF226
	.2byte	0x6a7
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x198c
	.uleb128 0x1
	.4byte	.LASF223
	.2byte	0x6a7
	.byte	0x3c
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF186
	.2byte	0x6a7
	.byte	0x50
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xa
	.string	"cfg"
	.2byte	0x6a9
	.byte	0x2b
	.4byte	0x680
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF227
	.2byte	0x68c
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a0a
	.uleb128 0x1
	.4byte	.LASF228
	.2byte	0x68c
	.byte	0x3b
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x68c
	.byte	0x4f
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF229
	.2byte	0x68c
	.byte	0x62
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x68c
	.byte	0x75
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"op"
	.2byte	0x68d
	.byte	0x2d
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x68d
	.byte	0x39
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0xa
	.string	"cfg"
	.2byte	0x68f
	.byte	0x25
	.4byte	0x614
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF230
	.2byte	0x672
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a79
	.uleb128 0x1
	.4byte	.LASF113
	.2byte	0x672
	.byte	0x30
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF205
	.2byte	0x672
	.byte	0x3e
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x1
	.4byte	.LASF204
	.2byte	0x672
	.byte	0x62
	.4byte	0x2e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"op"
	.2byte	0x672
	.byte	0x7f
	.4byte	0x39c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x672
	.byte	0x8b
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0xa
	.string	"cfg"
	.2byte	0x674
	.byte	0x19
	.4byte	0x51e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF232
	.2byte	0x649
	.byte	0x11
	.4byte	0x9f
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1aa3
	.uleb128 0x1
	.4byte	.LASF233
	.2byte	0x649
	.byte	0x44
	.4byte	0x2e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF234
	.2byte	0x633
	.byte	0x6
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ac9
	.uleb128 0x2
	.4byte	.LASF235
	.2byte	0x635
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF236
	.2byte	0x622
	.byte	0x6
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1aef
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x624
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF237
	.2byte	0x611
	.byte	0x6
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b15
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x613
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF238
	.2byte	0x5fd
	.byte	0x6
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b3b
	.uleb128 0xa
	.string	"val"
	.2byte	0x5ff
	.byte	0xd
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF239
	.2byte	0x5e7
	.byte	0x6
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b70
	.uleb128 0x2
	.4byte	.LASF240
	.2byte	0x5e9
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x5ea
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF241
	.2byte	0x5ba
	.byte	0x6
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bc1
	.uleb128 0x1
	.4byte	.LASF206
	.2byte	0x5ba
	.byte	0x24
	.4byte	0xa13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"p"
	.2byte	0x5bc
	.byte	0xe
	.4byte	0xa13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF240
	.2byte	0x5bd
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x5be
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF242
	.2byte	0x5a5
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bf5
	.uleb128 0x2
	.4byte	.LASF240
	.2byte	0x5a7
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x5a8
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF243
	.2byte	0x564
	.4byte	0xeb
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c58
	.uleb128 0x1
	.4byte	.LASF206
	.2byte	0x564
	.byte	0x27
	.4byte	0xa13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"p"
	.2byte	0x566
	.byte	0xe
	.4byte	0xa13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF240
	.2byte	0x567
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x568
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF155
	.2byte	0x569
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF244
	.2byte	0x550
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c8d
	.uleb128 0x2
	.4byte	.LASF240
	.2byte	0x552
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x553
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF245
	.2byte	0x53c
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cc2
	.uleb128 0x2
	.4byte	.LASF240
	.2byte	0x53e
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x53f
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF246
	.2byte	0x511
	.4byte	0xeb
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d09
	.uleb128 0x2
	.4byte	.LASF240
	.2byte	0x513
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x514
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF155
	.2byte	0x515
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF247
	.2byte	0x4ef
	.4byte	0xeb
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d5f
	.uleb128 0x1
	.4byte	.LASF248
	.2byte	0x4ef
	.byte	0x44
	.4byte	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF249
	.2byte	0x4f1
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x4f2
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF155
	.2byte	0x4f3
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF250
	.2byte	0x4ab
	.4byte	0xeb
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1df0
	.uleb128 0x1
	.4byte	.LASF251
	.2byte	0x4ab
	.byte	0x30
	.4byte	0x1df0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF248
	.2byte	0x4ac
	.byte	0x27
	.4byte	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x8
	.string	"in"
	.2byte	0x4ac
	.byte	0x3d
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"len"
	.2byte	0x4ac
	.byte	0x4a
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"out"
	.2byte	0x4ac
	.byte	0x57
	.4byte	0xa13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF249
	.2byte	0x4ae
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x4af
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF155
	.2byte	0x4b0
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	0x4b5
	.uleb128 0x4
	.4byte	.LASF252
	.2byte	0x491
	.byte	0x6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e48
	.uleb128 0x1
	.4byte	.LASF248
	.2byte	0x491
	.byte	0x47
	.4byte	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF253
	.2byte	0x491
	.byte	0x67
	.4byte	0x242
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF249
	.2byte	0x493
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x494
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF254
	.2byte	0x441
	.byte	0x6
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ec7
	.uleb128 0x1
	.4byte	.LASF248
	.2byte	0x441
	.byte	0x44
	.4byte	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF255
	.2byte	0x442
	.byte	0x1c
	.4byte	0x267
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x8
	.string	"key"
	.2byte	0x442
	.byte	0x33
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"iv"
	.2byte	0x442
	.byte	0x47
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF249
	.2byte	0x444
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x445
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF256
	.2byte	0x446
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF257
	.2byte	0x3ef
	.byte	0x6
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2160
	.uleb128 0x1
	.4byte	.LASF248
	.2byte	0x3ef
	.byte	0x41
	.4byte	0x165
	.uleb128 0x3
	.byte	0x91
	.sleb128 -145
	.uleb128 0x1
	.4byte	.LASF255
	.2byte	0x3f0
	.byte	0x1c
	.4byte	0x267
	.uleb128 0x3
	.byte	0x91
	.sleb128 -146
	.uleb128 0x8
	.string	"key"
	.2byte	0x3f0
	.byte	0x33
	.4byte	0xa0e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x8
	.string	"iv"
	.2byte	0x3f0
	.byte	0x47
	.4byte	0xa0e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2
	.4byte	.LASF249
	.2byte	0x3f2
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x3f3
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF256
	.2byte	0x3f4
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.4byte	0x2866
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.2byte	0x3fb
	.byte	0x2c
	.4byte	0x1f6e
	.uleb128 0xc
	.4byte	0x2873
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.4byte	0x287f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0xe
	.4byte	0x2866
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.2byte	0x3fd
	.byte	0x2c
	.4byte	0x1f93
	.uleb128 0xc
	.4byte	0x2873
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.4byte	0x287f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0xe
	.4byte	0x2866
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.2byte	0x3ff
	.byte	0x2c
	.4byte	0x1fb8
	.uleb128 0xc
	.4byte	0x2873
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	0x287f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0xe
	.4byte	0x2866
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.2byte	0x401
	.byte	0x2c
	.4byte	0x1fdd
	.uleb128 0xc
	.4byte	0x2873
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.4byte	0x287f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xe
	.4byte	0x2866
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.2byte	0x415
	.byte	0x2c
	.4byte	0x2004
	.uleb128 0xc
	.4byte	0x2873
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xd
	.4byte	0x287f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0xe
	.4byte	0x2866
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.2byte	0x417
	.byte	0x2c
	.4byte	0x202b
	.uleb128 0xc
	.4byte	0x2873
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.4byte	0x287f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0xe
	.4byte	0x2866
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.2byte	0x419
	.byte	0x2c
	.4byte	0x2052
	.uleb128 0xc
	.4byte	0x2873
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xd
	.4byte	0x287f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0xe
	.4byte	0x2866
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.2byte	0x41b
	.byte	0x2c
	.4byte	0x2078
	.uleb128 0xc
	.4byte	0x2873
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.4byte	0x287f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0xe
	.4byte	0x2866
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.2byte	0x421
	.byte	0x30
	.4byte	0x209f
	.uleb128 0xc
	.4byte	0x2873
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xd
	.4byte	0x287f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0xe
	.4byte	0x2866
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.2byte	0x423
	.byte	0x30
	.4byte	0x20c6
	.uleb128 0xc
	.4byte	0x2873
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xd
	.4byte	0x287f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0xe
	.4byte	0x2866
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.2byte	0x426
	.byte	0x30
	.4byte	0x20ed
	.uleb128 0xc
	.4byte	0x2873
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0xd
	.4byte	0x287f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.uleb128 0xe
	.4byte	0x2866
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.2byte	0x428
	.byte	0x30
	.4byte	0x2114
	.uleb128 0xc
	.4byte	0x2873
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xd
	.4byte	0x287f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0
	.uleb128 0xe
	.4byte	0x2866
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.2byte	0x42a
	.byte	0x30
	.4byte	0x213b
	.uleb128 0xc
	.4byte	0x2873
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xd
	.4byte	0x287f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x29
	.4byte	0x2866
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.2byte	0x42c
	.byte	0x30
	.uleb128 0xc
	.4byte	0x2873
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.4byte	0x287f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF258
	.2byte	0x3d6
	.byte	0x6
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21b3
	.uleb128 0x1
	.4byte	.LASF248
	.2byte	0x3d6
	.byte	0x45
	.4byte	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x8
	.string	"src"
	.2byte	0x3d6
	.byte	0x54
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF249
	.2byte	0x3d8
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x3d9
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF259
	.2byte	0x393
	.4byte	0xeb
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2244
	.uleb128 0x1
	.4byte	.LASF248
	.2byte	0x393
	.byte	0x47
	.4byte	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF108
	.2byte	0x394
	.byte	0xc
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"in"
	.2byte	0x394
	.byte	0x25
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"len"
	.2byte	0x394
	.byte	0x32
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"out"
	.2byte	0x394
	.byte	0x40
	.4byte	0xa13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF249
	.2byte	0x396
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x397
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF155
	.2byte	0x398
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF260
	.2byte	0x37a
	.byte	0x6
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2288
	.uleb128 0x1
	.4byte	.LASF248
	.2byte	0x37a
	.byte	0x43
	.4byte	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF249
	.2byte	0x37c
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x37d
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF261
	.2byte	0x365
	.byte	0x6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22cc
	.uleb128 0x1
	.4byte	.LASF248
	.2byte	0x365
	.byte	0x42
	.4byte	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF249
	.2byte	0x367
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x368
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF262
	.2byte	0x353
	.byte	0x6
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2301
	.uleb128 0x1
	.4byte	.LASF248
	.2byte	0x353
	.byte	0x40
	.4byte	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF249
	.2byte	0x355
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x341
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2336
	.uleb128 0x1
	.4byte	.LASF248
	.2byte	0x341
	.byte	0x40
	.4byte	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF249
	.2byte	0x343
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF264
	.2byte	0x306
	.4byte	0xeb
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23c8
	.uleb128 0x1
	.4byte	.LASF251
	.2byte	0x306
	.byte	0x2f
	.4byte	0x1df0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF248
	.2byte	0x306
	.byte	0x5b
	.4byte	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1
	.4byte	.LASF265
	.2byte	0x307
	.byte	0x14
	.4byte	0x1e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1
	.4byte	.LASF256
	.2byte	0x307
	.byte	0x32
	.4byte	0x211
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0x1
	.4byte	.LASF266
	.2byte	0x307
	.byte	0x52
	.4byte	0x28c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF249
	.2byte	0x309
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x30a
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF155
	.2byte	0x30b
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF267
	.2byte	0x2a7
	.4byte	0xeb
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2499
	.uleb128 0x1
	.4byte	.LASF268
	.2byte	0x2a7
	.byte	0x41
	.4byte	0x2499
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	.LASF269
	.2byte	0x2a7
	.byte	0x5c
	.4byte	0x184
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x1
	.4byte	.LASF270
	.2byte	0x2a7
	.byte	0x6b
	.4byte	0xa13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.4byte	.LASF271
	.2byte	0x2a9
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF272
	.2byte	0x2a9
	.byte	0x14
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x2aa
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"low"
	.2byte	0x2aa
	.byte	0x14
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF274
	.2byte	0x2ab
	.byte	0xd
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF275
	.2byte	0x2ac
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x2ad
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF276
	.2byte	0x2ae
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF155
	.2byte	0x2af
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	0x486
	.uleb128 0x18
	.4byte	.LASF277
	.2byte	0x233
	.4byte	0xeb
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x253f
	.uleb128 0x1
	.4byte	.LASF268
	.2byte	0x233
	.byte	0x41
	.4byte	0x2499
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF269
	.2byte	0x234
	.byte	0x27
	.4byte	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x1
	.4byte	.LASF278
	.2byte	0x234
	.byte	0x3d
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x8
	.string	"len"
	.2byte	0x234
	.byte	0x4d
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF275
	.2byte	0x236
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x237
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF279
	.2byte	0x238
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF280
	.2byte	0x239
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF155
	.2byte	0x23a
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF281
	.2byte	0x216
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25a0
	.uleb128 0x1
	.4byte	.LASF268
	.2byte	0x216
	.byte	0x38
	.4byte	0x2499
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF269
	.2byte	0x217
	.byte	0x27
	.4byte	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF108
	.2byte	0x217
	.byte	0x37
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF282
	.2byte	0x218
	.byte	0xc
	.4byte	0x438
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF283
	.2byte	0x218
	.byte	0x24
	.4byte	0x438
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x4
	.4byte	.LASF284
	.2byte	0x1fb
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25e4
	.uleb128 0x1
	.4byte	.LASF269
	.2byte	0x1fb
	.byte	0x43
	.4byte	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF275
	.2byte	0x1fd
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x1fe
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF285
	.2byte	0x1e4
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2628
	.uleb128 0x1
	.4byte	.LASF269
	.2byte	0x1e4
	.byte	0x42
	.4byte	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF275
	.2byte	0x1e6
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x1e7
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.4byte	.LASF286
	.2byte	0x181
	.4byte	0xeb
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2706
	.uleb128 0x1
	.4byte	.LASF268
	.2byte	0x181
	.byte	0x37
	.4byte	0x2706
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	.LASF269
	.2byte	0x181
	.byte	0x52
	.4byte	0x184
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x1
	.4byte	.LASF270
	.2byte	0x181
	.byte	0x61
	.4byte	0xa13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.4byte	.LASF271
	.2byte	0x183
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF272
	.2byte	0x183
	.byte	0x14
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x184
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"low"
	.2byte	0x184
	.byte	0x14
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF276
	.2byte	0x185
	.byte	0xd
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x2
	.4byte	.LASF274
	.2byte	0x186
	.byte	0xd
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.string	"p"
	.2byte	0x187
	.byte	0xe
	.4byte	0xa13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF275
	.2byte	0x188
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x189
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF155
	.2byte	0x18a
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	0x43d
	.uleb128 0x18
	.4byte	.LASF287
	.2byte	0x10a
	.4byte	0xeb
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27ac
	.uleb128 0x1
	.4byte	.LASF268
	.2byte	0x10a
	.byte	0x37
	.4byte	0x2706
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF269
	.2byte	0x10b
	.byte	0x27
	.4byte	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x1
	.4byte	.LASF278
	.2byte	0x10b
	.byte	0x3d
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x8
	.string	"len"
	.2byte	0x10b
	.byte	0x4d
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF275
	.2byte	0x10d
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x10e
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF279
	.2byte	0x10f
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF280
	.2byte	0x110
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF155
	.2byte	0x111
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF288
	.byte	0x1
	.byte	0xed
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27ed
	.uleb128 0x19
	.4byte	.LASF269
	.byte	0xed
	.byte	0x3c
	.4byte	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1a
	.4byte	.LASF275
	.byte	0xef
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.4byte	.LASF142
	.byte	0xf0
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF289
	.byte	0x1
	.byte	0xcc
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2866
	.uleb128 0x19
	.4byte	.LASF268
	.byte	0xcc
	.byte	0x2e
	.4byte	0x2706
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.4byte	.LASF269
	.byte	0xcc
	.byte	0x5a
	.4byte	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x19
	.4byte	.LASF290
	.byte	0xcd
	.byte	0x14
	.4byte	0x1b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x19
	.4byte	.LASF282
	.byte	0xcd
	.byte	0x26
	.4byte	0x438
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.4byte	.LASF283
	.byte	0xcd
	.byte	0x3e
	.4byte	0x438
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.4byte	.LASF275
	.byte	0xcf
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.4byte	.LASF142
	.byte	0xd0
	.byte	0xe
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF292
	.byte	0x2
	.byte	0x61
	.byte	0x37
	.4byte	0xab
	.byte	0x3
	.uleb128 0x2d
	.4byte	.LASF118
	.byte	0x2
	.byte	0x61
	.byte	0x46
	.4byte	0xab
	.uleb128 0x2e
	.string	"res"
	.byte	0x2
	.byte	0x64
	.byte	0xe
	.4byte	0xab
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
	.uleb128 0x5
	.uleb128 0xd
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
	.sleb128 22
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
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
	.sleb128 1
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.sleb128 1
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
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
	.sleb128 18
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0x18
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
	.sleb128 13
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 22
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x6b
	.uleb128 0x21
	.sleb128 24
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
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.4byte	0x284
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF78:
	.string	"SEC_ENG_PKA_OP_MINV"
.LASF99:
	.string	"SEC_ENG_INT_CDET"
.LASF13:
	.string	"size_t"
.LASF85:
	.string	"SEC_ENG_PKA_OP_RESIZE"
.LASF59:
	.string	"SEC_ENG_PKA_REG_SIZE_64"
.LASF162:
	.string	"dRegIdx"
.LASF81:
	.string	"SEC_ENG_PKA_OP_MMUL"
.LASF55:
	.string	"SEC_ENG_AES_EnDec_Type"
.LASF68:
	.string	"SEC_ENG_PKA_OP_MOD2N"
.LASF276:
	.string	"shaMode"
.LASF185:
	.string	"Sec_Eng_PKA_LMUL"
.LASF25:
	.string	"BL_Mask_Type"
.LASF84:
	.string	"SEC_ENG_PKA_OP_MADD"
.LASF119:
	.string	"rsvd"
.LASF240:
	.string	"TRNGx"
.LASF223:
	.string	"s1RegIndex"
.LASF175:
	.string	"s0RegType"
.LASF227:
	.string	"Sec_Eng_PKA_Write_Common_OP_First_Cfg"
.LASF69:
	.string	"SEC_ENG_PKA_OP_LDIV2N"
.LASF173:
	.string	"sRegIdx"
.LASF123:
	.string	"s0_reg_type"
.LASF51:
	.string	"SEC_ENG_AES_KEY_HW"
.LASF80:
	.string	"SEC_ENG_PKA_OP_MSQR"
.LASF60:
	.string	"SEC_ENG_PKA_REG_SIZE_96"
.LASF244:
	.string	"Sec_Eng_Trng_Int_Disable"
.LASF141:
	.string	"secEngIntCbfArra"
.LASF65:
	.string	"SEC_ENG_PKA_REG_SIZE_512"
.LASF210:
	.string	"result"
.LASF217:
	.string	"Sec_Eng_PKA_Write_Block"
.LASF150:
	.string	"SEC_Eng_IntMask"
.LASF257:
	.string	"Sec_Eng_AES_Set_Key_IV"
.LASF9:
	.string	"long int"
.LASF168:
	.string	"tRegIdx"
.LASF115:
	.string	"d_reg_type"
.LASF53:
	.string	"SEC_ENG_AES_ENCRYPTION"
.LASF289:
	.string	"Sec_Eng_SHA256_Init"
.LASF143:
	.string	"SEC_Eng_Turn_Off_Sec_Ring"
.LASF146:
	.string	"SEC_Eng_Int_Callback_Install"
.LASF179:
	.string	"Sec_Eng_PKA_LMUL2N"
.LASF49:
	.string	"SEC_ENG_AES_Counter_Type"
.LASF38:
	.string	"SEC_ENG_AES_CBC"
.LASF30:
	.string	"SEC_ENG_SHA_ID_Type"
.LASF112:
	.string	"SEC_Eng_AES_Ctx"
.LASF127:
	.string	"s1_reg_idx"
.LASF129:
	.string	"reserved_24_31"
.LASF273:
	.string	"high"
.LASF104:
	.string	"shaBuf"
.LASF213:
	.string	"Sec_Eng_PKA_Write_Data"
.LASF5:
	.string	"signed char"
.LASF14:
	.string	"uint8_t"
.LASF160:
	.string	"Sec_Eng_PKA_Mont2GF"
.LASF138:
	.string	"BL602_MemCpy_Fast"
.LASF236:
	.string	"Sec_Eng_PKA_LittleEndian_Enable"
.LASF46:
	.string	"SEC_ENG_AES_COUNTER_BYTE_1"
.LASF47:
	.string	"SEC_ENG_AES_COUNTER_BYTE_2"
.LASF48:
	.string	"SEC_ENG_AES_COUNTER_BYTE_3"
.LASF45:
	.string	"SEC_ENG_AES_COUNTER_BYTE_4"
.LASF193:
	.string	"Sec_Eng_PKA_MINV"
.LASF6:
	.string	"unsigned char"
.LASF243:
	.string	"Sec_Eng_Trng_Read"
.LASF83:
	.string	"SEC_ENG_PKA_OP_MSUB"
.LASF202:
	.string	"Sec_Eng_PKA_NREG"
.LASF108:
	.string	"linkAddr"
.LASF253:
	.string	"counterType"
.LASF235:
	.string	"ctrl"
.LASF92:
	.string	"SEC_ENG_PKA_OP_CFLIR_BUFFER"
.LASF250:
	.string	"Sec_Eng_AES_Crypt"
.LASF76:
	.string	"SEC_ENG_PKA_OP_LCMP"
.LASF177:
	.string	"lastOp"
.LASF196:
	.string	"Sec_Eng_PKA_MMUL"
.LASF152:
	.string	"SEC_Eng_GetIntStatus"
.LASF205:
	.string	"regIndex"
.LASF118:
	.string	"value"
.LASF34:
	.string	"SEC_ENG_SHA1_RSVD"
.LASF12:
	.string	"char"
.LASF199:
	.string	"Sec_Eng_PKA_MADD"
.LASF246:
	.string	"Sec_Eng_Trng_Enable"
.LASF284:
	.string	"Sec_Eng_SHA_Disable_Link"
.LASF261:
	.string	"Sec_Eng_AES_Enable_Link"
.LASF151:
	.string	"intMask"
.LASF224:
	.string	"s2RegIndex"
.LASF42:
	.string	"SEC_ENG_AES_KEY_192BITS"
.LASF33:
	.string	"SEC_ENG_SHA1"
.LASF242:
	.string	"Sec_Eng_Trng_Int_Read_Trigger"
.LASF133:
	.string	"reserved_12_31"
.LASF220:
	.string	"Sec_Eng_PKA_Read_Block"
.LASF71:
	.string	"SEC_ENG_PKA_OP_LDIV"
.LASF156:
	.string	"Sec_Eng_GMAC_Disable_Link"
.LASF44:
	.string	"SEC_ENG_AES_Key_Type"
.LASF166:
	.string	"invrRegIdx"
.LASF120:
	.string	"pka0_pld_cfg"
.LASF195:
	.string	"Sec_Eng_PKA_MSQR"
.LASF191:
	.string	"cout"
.LASF97:
	.string	"SEC_ENG_INT_SHA"
.LASF94:
	.string	"SEC_ENG_PKA_OP_Type"
.LASF279:
	.string	"fill"
.LASF110:
	.string	"aesFeed"
.LASF126:
	.string	"reserved_0_11"
.LASF248:
	.string	"aesNo"
.LASF230:
	.string	"Sec_Eng_PKA_Write_Pld_Cfg"
.LASF52:
	.string	"SEC_ENG_AES_Key_Src_Type"
.LASF203:
	.string	"Sec_Eng_PKA_Write_Immediate"
.LASF61:
	.string	"SEC_ENG_PKA_REG_SIZE_128"
.LASF181:
	.string	"s2RegType"
.LASF280:
	.string	"left"
.LASF268:
	.string	"shaCtx"
.LASF157:
	.string	"Sec_Eng_GMAC_Enable_Link"
.LASF256:
	.string	"keyType"
.LASF226:
	.string	"Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1"
.LASF225:
	.string	"Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S2"
.LASF89:
	.string	"SEC_ENG_PKA_OP_CLIR"
.LASF131:
	.string	"s2_reg_idx"
.LASF214:
	.string	"index"
.LASF125:
	.string	"pka0_common_op_first_cfg"
.LASF222:
	.string	"Sec_Eng_PKA_Write_Common_OP_Snd_Cfg_S1_S2"
.LASF165:
	.string	"invrRegType"
.LASF263:
	.string	"Sec_Eng_AES_Enable_BE"
.LASF23:
	.string	"UNMASK"
.LASF10:
	.string	"long unsigned int"
.LASF145:
	.string	"status"
.LASF27:
	.string	"SEC_ENG_AES_ID0"
.LASF158:
	.string	"Sec_Eng_GMAC_Enable_BE"
.LASF40:
	.string	"SEC_ENG_AES_KEY_128BITS"
.LASF28:
	.string	"SEC_ENG_AES_ID_Type"
.LASF200:
	.string	"Sec_Eng_PKA_RESIZE"
.LASF221:
	.string	"Sec_Eng_PKA_Get_Result"
.LASF212:
	.string	"regSize"
.LASF86:
	.string	"SEC_ENG_PKA_OP_MOVDAT"
.LASF231:
	.string	"Sec_Eng_PKA_Wait_ISR"
.LASF35:
	.string	"SEC_ENG_SHA_Type"
.LASF139:
	.string	"BL602_MemSet"
.LASF18:
	.string	"ERROR"
.LASF198:
	.string	"Sec_Eng_PKA_MSUB"
.LASF233:
	.string	"reg_type"
.LASF105:
	.string	"shaPadding"
.LASF116:
	.string	"last_op"
.LASF88:
	.string	"SEC_ENG_PKA_OP_SLIR"
.LASF190:
	.string	"Sec_Eng_PKA_LCMP"
.LASF50:
	.string	"SEC_ENG_AES_KEY_SW"
.LASF137:
	.string	"pka0_bit_shift_op_cfg"
.LASF3:
	.string	"long long int"
.LASF192:
	.string	"pka0_ctrl"
.LASF178:
	.string	"Sec_Eng_PKA_LDIV2N"
.LASF167:
	.string	"tRegType"
.LASF174:
	.string	"Sec_Eng_PKA_LMOD2N"
.LASF82:
	.string	"SEC_ENG_PKA_OP_MREM"
.LASF272:
	.string	"padn"
.LASF79:
	.string	"SEC_ENG_PKA_OP_MEXP"
.LASF32:
	.string	"SEC_ENG_SHA224"
.LASF245:
	.string	"Sec_Eng_Trng_Int_Enable"
.LASF106:
	.string	"shaFeed"
.LASF134:
	.string	"pka0_common_op_snd_cfg_S2_only"
.LASF20:
	.string	"BL_Err_Type"
.LASF234:
	.string	"Sec_Eng_PKA_Clear_Int"
.LASF255:
	.string	"keySrc"
.LASF135:
	.string	"pka0_common_op_snd_cfg_S1_S2"
.LASF75:
	.string	"SEC_ENG_PKA_OP_LADD"
.LASF2:
	.string	"unsigned int"
.LASF136:
	.string	"bit_shift"
.LASF147:
	.string	"intType"
.LASF215:
	.string	"regLen"
.LASF258:
	.string	"Sec_Eng_AES_Set_Hw_Key_Src"
.LASF184:
	.string	"dummyData"
.LASF249:
	.string	"AESx"
.LASF62:
	.string	"SEC_ENG_PKA_REG_SIZE_192"
.LASF130:
	.string	"pka0_common_op_snd_cfg_S1_only"
.LASF36:
	.string	"SEC_ENG_AES_ECB"
.LASF103:
	.string	"total"
.LASF269:
	.string	"shaNo"
.LASF29:
	.string	"SEC_ENG_SHA_ID0"
.LASF72:
	.string	"SEC_ENG_PKA_OP_LSQR"
.LASF254:
	.string	"Sec_Eng_AES_Set_Key_IV_BE"
.LASF96:
	.string	"SEC_ENG_INT_AES"
.LASF180:
	.string	"Sec_Eng_PKA_LDIV"
.LASF31:
	.string	"SEC_ENG_SHA256"
.LASF153:
	.string	"Sec_Eng_GMAC_Link_Work"
.LASF266:
	.string	"enDecType"
.LASF19:
	.string	"TIMEOUT"
.LASF291:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF4:
	.string	"long double"
.LASF117:
	.string	"WORD"
.LASF171:
	.string	"Sec_Eng_PKA_GF2Mont"
.LASF63:
	.string	"SEC_ENG_PKA_REG_SIZE_256"
.LASF201:
	.string	"Sec_Eng_PKA_Move_Data"
.LASF241:
	.string	"Sec_Eng_Trng_Int_Read"
.LASF54:
	.string	"SEC_ENG_AES_DECRYPTION"
.LASF77:
	.string	"SEC_ENG_PKA_OP_MDIV2"
.LASF159:
	.string	"Sec_Eng_GMAC_Enable_LE"
.LASF292:
	.string	"__REV"
.LASF114:
	.string	"d_reg_index"
.LASF288:
	.string	"Sec_Eng_SHA_Start"
.LASF274:
	.string	"msgLen"
.LASF161:
	.string	"dRegType"
.LASF207:
	.string	"Sec_Eng_PKA_CREG"
.LASF275:
	.string	"SHAx"
.LASF113:
	.string	"size"
.LASF11:
	.string	"long long unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF238:
	.string	"Sec_Eng_PKA_Reset"
.LASF102:
	.string	"SEC_ENG_INT_Type"
.LASF100:
	.string	"SEC_ENG_INT_GMAC"
.LASF95:
	.string	"SEC_ENG_INT_TRNG"
.LASF149:
	.string	"SEC_Eng_ClrIntStatus"
.LASF219:
	.string	"wrLen"
.LASF17:
	.string	"SUCCESS"
.LASF262:
	.string	"Sec_Eng_AES_Enable_LE"
.LASF229:
	.string	"dRegIndex"
.LASF186:
	.string	"s1RegType"
.LASF252:
	.string	"Sec_Eng_AES_Set_Counter_Byte"
.LASF67:
	.string	"SEC_ENG_PKA_OP_PPSEL"
.LASF74:
	.string	"SEC_ENG_PKA_OP_LSUB"
.LASF90:
	.string	"SEC_ENG_PKA_OP_CFLIRI_BUFFER"
.LASF148:
	.string	"cbFun"
.LASF176:
	.string	"s0RegIdx"
.LASF197:
	.string	"Sec_Eng_PKA_MREM"
.LASF259:
	.string	"Sec_Eng_AES_Link_Work"
.LASF140:
	.string	"memset"
.LASF194:
	.string	"Sec_Eng_PKA_MEXP"
.LASF132:
	.string	"s2_reg_type"
.LASF277:
	.string	"Sec_Eng_SHA256_Link_Update"
.LASF70:
	.string	"SEC_ENG_PKA_OP_LMUL2N"
.LASF66:
	.string	"SEC_ENG_PKA_REG_SIZE_Type"
.LASF21:
	.string	"RESET"
.LASF107:
	.string	"SEC_Eng_SHA256_Ctx"
.LASF278:
	.string	"input"
.LASF37:
	.string	"SEC_ENG_AES_CTR"
.LASF93:
	.string	"SEC_ENG_PKA_OP_CTLIR_PLD"
.LASF218:
	.string	"dest"
.LASF208:
	.string	"Sec_Eng_PKA_Read_Data"
.LASF189:
	.string	"Sec_Eng_PKA_LADD"
.LASF163:
	.string	"aRegType"
.LASF264:
	.string	"Sec_Eng_AES_Init"
.LASF56:
	.string	"SEC_ENG_PKA_REG_SIZE_8"
.LASF43:
	.string	"SEC_ENG_AES_DOUBLE_KEY_128BITS"
.LASF187:
	.string	"s1RegIdx"
.LASF109:
	.string	"SEC_Eng_SHA256_Link_Ctx"
.LASF22:
	.string	"BL_Sts_Type"
.LASF281:
	.string	"Sec_Eng_SHA256_Link_Init"
.LASF144:
	.string	"SEC_Eng_Turn_On_Sec_Ring"
.LASF260:
	.string	"Sec_Eng_AES_Disable_Link"
.LASF265:
	.string	"aesType"
.LASF124:
	.string	"d_reg_idx"
.LASF285:
	.string	"Sec_Eng_SHA_Enable_Link"
.LASF24:
	.string	"MASK"
.LASF7:
	.string	"short int"
.LASF154:
	.string	"GMACx"
.LASF111:
	.string	"mode"
.LASF121:
	.string	"pka0_pldi_cfg"
.LASF183:
	.string	"Sec_Eng_PKA_LSQR"
.LASF98:
	.string	"SEC_ENG_INT_PKA"
.LASF91:
	.string	"SEC_ENG_PKA_OP_CTLIRI_PLD"
.LASF182:
	.string	"s2RegIdx"
.LASF204:
	.string	"regType"
.LASF101:
	.string	"SEC_ENG_INT_ALL"
.LASF267:
	.string	"Sec_Eng_SHA256_Link_Finish"
.LASF73:
	.string	"SEC_ENG_PKA_OP_LMUL"
.LASF57:
	.string	"SEC_ENG_PKA_REG_SIZE_16"
.LASF247:
	.string	"Sec_Eng_AES_Finish"
.LASF228:
	.string	"s0RegIndex"
.LASF211:
	.string	"retSize"
.LASF172:
	.string	"sRegType"
.LASF155:
	.string	"timeoutCnt"
.LASF164:
	.string	"aRegIdx"
.LASF283:
	.string	"padding"
.LASF287:
	.string	"Sec_Eng_SHA256_Update"
.LASF39:
	.string	"SEC_ENG_AES_Type"
.LASF16:
	.string	"uint32_t"
.LASF251:
	.string	"aesCtx"
.LASF128:
	.string	"s1_reg_type"
.LASF58:
	.string	"SEC_ENG_PKA_REG_SIZE_32"
.LASF8:
	.string	"short unsigned int"
.LASF209:
	.string	"regIdx"
.LASF87:
	.string	"SEC_ENG_PKA_OP_NLIR"
.LASF282:
	.string	"shaTmpBuf"
.LASF170:
	.string	"pRegIdx"
.LASF122:
	.string	"s0_reg_idx"
.LASF237:
	.string	"Sec_Eng_PKA_BigEndian_Enable"
.LASF188:
	.string	"Sec_Eng_PKA_LSUB"
.LASF64:
	.string	"SEC_ENG_PKA_REG_SIZE_384"
.LASF41:
	.string	"SEC_ENG_AES_KEY_256BITS"
.LASF286:
	.string	"Sec_Eng_SHA256_Finish"
.LASF169:
	.string	"pRegType"
.LASF270:
	.string	"hash"
.LASF26:
	.string	"intCallback_Type"
.LASF216:
	.string	"ret_data"
.LASF206:
	.string	"data"
.LASF239:
	.string	"Sec_Eng_Trng_Disable"
.LASF290:
	.string	"shaType"
.LASF232:
	.string	"Sec_Eng_PKA_Get_Reg_Size"
.LASF142:
	.string	"tmpVal"
.LASF271:
	.string	"last"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sec_eng.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
