	.file	"queue.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos" "/home/chandu/sdk/bl602_iot_sdk/components/freertos/queue.c"
	.globl	xQueueRegistry
	.section	.bss.xQueueRegistry,"aw",@nobits
	.align	2
	.type	xQueueRegistry, @object
	.size	xQueueRegistry, 64
xQueueRegistry:
	.zero	64
	.section	.text.xQueueGenericReset,"ax",@progbits
	.align	1
	.globl	xQueueGenericReset
	.type	xQueueGenericReset, @function
xQueueGenericReset:
.LFB2:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/queue.c"
	.loc 1 256 1
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
	.loc 1 257 17
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 259 4
	lw	a5,-20(s0)
	bne	a5,zero,.L2
	.loc 1 259 25 discriminator 1
	call	vAssertCalled
.L2:
	.loc 1 261 2
	call	vTaskEnterCritical
	.loc 1 263 37
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 263 57
	lw	a5,-20(s0)
	lw	a3,60(a5)
	.loc 1 263 77
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 1 263 68
	mul	a5,a3,a5
	.loc 1 263 46
	add	a4,a4,a5
	.loc 1 263 28
	lw	a5,-20(s0)
	sw	a4,8(a5)
	.loc 1 264 30
	lw	a5,-20(s0)
	sw	zero,56(a5)
	.loc 1 265 31
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 265 22
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 266 41
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 266 63
	lw	a5,-20(s0)
	lw	a5,60(a5)
	.loc 1 266 74
	addi	a3,a5,-1
	.loc 1 266 90
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 1 266 81
	mul	a5,a3,a5
	.loc 1 266 50
	add	a4,a4,a5
	.loc 1 266 32
	lw	a5,-20(s0)
	sw	a4,12(a5)
	.loc 1 267 20
	lw	a5,-20(s0)
	li	a4,-1
	sb	a4,68(a5)
	.loc 1 268 20
	lw	a5,-20(s0)
	li	a4,-1
	sb	a4,69(a5)
	.loc 1 270 5
	lw	a5,-40(s0)
	bne	a5,zero,.L3
	.loc 1 277 49
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 277 6
	beq	a5,zero,.L4
	.loc 1 279 35
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 279 9
	mv	a0,a5
	call	xTaskRemoveFromEventList
	mv	a5,a0
	.loc 1 279 7 discriminator 1
	beq	a5,zero,.L4
	.loc 1 281 6
 #APP
# 281 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/queue.c" 1
	ecall
# 0 "" 2
 #NO_APP
	j	.L4
.L3:
	.loc 1 296 21
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 296 4
	mv	a0,a5
	call	vListInitialise
	.loc 1 297 21
	lw	a5,-20(s0)
	addi	a5,a5,36
	.loc 1 297 4
	mv	a0,a5
	call	vListInitialise
.L4:
	.loc 1 300 2
	call	vTaskExitCritical
	.loc 1 304 9
	li	a5,1
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
.LFE2:
	.size	xQueueGenericReset, .-xQueueGenericReset
	.section	.text.xQueueGenericCreateStatic,"ax",@progbits
	.align	1
	.globl	xQueueGenericCreateStatic
	.type	xQueueGenericCreateStatic, @function
xQueueGenericCreateStatic:
.LFB3:
	.loc 1 311 2
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
	mv	a5,a4
	sb	a5,-49(s0)
	.loc 1 314 5
	lw	a5,-36(s0)
	bne	a5,zero,.L7
	.loc 1 314 52 discriminator 1
	call	vAssertCalled
.L7:
	.loc 1 318 5
	lw	a5,-48(s0)
	bne	a5,zero,.L8
	.loc 1 318 11 discriminator 1
	call	vAssertCalled
.L8:
	.loc 1 322 9
	lw	a5,-44(s0)
	beq	a5,zero,.L9
	.loc 1 322 9 is_stmt 0 discriminator 2
	lw	a5,-40(s0)
	beq	a5,zero,.L10
.L9:
	.loc 1 322 9 discriminator 3
	li	a5,1
	.loc 1 322 9
	j	.L11
.L10:
	.loc 1 322 9 discriminator 4
	li	a5,0
.L11:
	.loc 1 322 5 is_stmt 1 discriminator 6
	bne	a5,zero,.L12
	.loc 1 322 38 discriminator 7
	call	vAssertCalled
.L12:
	.loc 1 323 9
	lw	a5,-44(s0)
	bne	a5,zero,.L13
	.loc 1 323 9 is_stmt 0 discriminator 2
	lw	a5,-40(s0)
	bne	a5,zero,.L14
.L13:
	.loc 1 323 9 discriminator 3
	li	a5,1
	.loc 1 323 9
	j	.L15
.L14:
	.loc 1 323 9 discriminator 4
	li	a5,0
.L15:
	.loc 1 323 5 is_stmt 1 discriminator 6
	bne	a5,zero,.L16
	.loc 1 323 38 discriminator 7
	call	vAssertCalled
.L16:
.LBB2:
	.loc 1 330 20
	li	a5,80
	sw	a5,-24(s0)
	.loc 1 331 39
	lw	a4,-24(s0)
	.loc 1 331 6
	li	a5,80
	beq	a4,a5,.L17
	.loc 1 331 46 discriminator 1
	call	vAssertCalled
.L17:
	.loc 1 332 4
	lw	a5,-24(s0)
.LBE2:
	.loc 1 339 14
	lw	a5,-48(s0)
	sw	a5,-20(s0)
	.loc 1 341 5
	lw	a5,-20(s0)
	beq	a5,zero,.L18
	.loc 1 348 39
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,70(a5)
	.loc 1 352 4
	lbu	a5,-49(s0)
	lw	a4,-20(s0)
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	prvInitialiseNewQueue
.L18:
	.loc 1 360 10
	lw	a5,-20(s0)
	.loc 1 361 2
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
.LFE3:
	.size	xQueueGenericCreateStatic, .-xQueueGenericCreateStatic
	.section	.text.xQueueGenericCreate,"ax",@progbits
	.align	1
	.globl	xQueueGenericCreate
	.type	xQueueGenericCreate, @function
xQueueGenericCreate:
.LFB4:
	.loc 1 369 2
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
	.loc 1 374 5
	lw	a5,-36(s0)
	bne	a5,zero,.L21
	.loc 1 374 52 discriminator 1
	call	vAssertCalled
.L21:
	.loc 1 379 21
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	mul	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 382 35
	lw	a5,-40(s0)
	beq	a5,zero,.L22
	.loc 1 382 77 discriminator 2
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	divu	a5,a4,a5
	.loc 1 382 35 discriminator 2
	lw	a4,-36(s0)
	bne	a4,a5,.L23
.L22:
	.loc 1 382 35 is_stmt 0 discriminator 3
	li	a5,1
	.loc 1 382 35
	j	.L24
.L23:
	.loc 1 382 35 discriminator 4
	li	a5,0
.L24:
	.loc 1 382 11 is_stmt 1 discriminator 6
	bne	a5,zero,.L25
	.loc 1 382 103 discriminator 7
	call	vAssertCalled
.L25:
	.loc 1 385 11
	lw	a4,-20(s0)
	li	a5,-81
	bleu	a4,a5,.L26
	.loc 1 385 86 discriminator 1
	call	vAssertCalled
.L26:
	.loc 1 396 62
	lw	a5,-20(s0)
	addi	a5,a5,80
	.loc 1 396 30
	mv	a0,a5
	call	pvPortMalloc
	sw	a0,-24(s0)
	.loc 1 398 5
	lw	a5,-24(s0)
	beq	a5,zero,.L27
	.loc 1 402 20
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	.loc 1 403 20
	lw	a5,-28(s0)
	addi	a5,a5,80
	sw	a5,-28(s0)
	.loc 1 410 39
	lw	a5,-24(s0)
	sb	zero,70(a5)
	.loc 1 414 4
	lbu	a5,-41(s0)
	lw	a4,-24(s0)
	mv	a3,a5
	lw	a2,-28(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	prvInitialiseNewQueue
.L27:
	.loc 1 422 10
	lw	a5,-24(s0)
	.loc 1 423 2
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
.LFE4:
	.size	xQueueGenericCreate, .-xQueueGenericCreate
	.section	.text.prvInitialiseNewQueue,"ax",@progbits
	.align	1
	.type	prvInitialiseNewQueue, @function
prvInitialiseNewQueue:
.LFB5:
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
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	mv	a5,a3
	sw	a4,-36(s0)
	sb	a5,-29(s0)
	.loc 1 434 4
	lw	a5,-24(s0)
	bne	a5,zero,.L30
	.loc 1 440 22
	lw	a5,-36(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	j	.L31
.L30:
	.loc 1 445 22
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
.L31:
	.loc 1 450 23
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,60(a5)
	.loc 1 451 25
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,64(a5)
	.loc 1 452 11
	li	a1,1
	lw	a0,-36(s0)
	call	xQueueGenericReset
	.loc 1 456 27
	lw	a5,-36(s0)
	lbu	a4,-29(s0)
	sb	a4,76(a5)
	.loc 1 467 1
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
.LFE5:
	.size	prvInitialiseNewQueue, .-prvInitialiseNewQueue
	.section	.text.prvInitialiseMutex,"ax",@progbits
	.align	1
	.type	prvInitialiseMutex, @function
prvInitialiseMutex:
.LFB6:
	.loc 1 473 2
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
	.loc 1 474 5
	lw	a5,-20(s0)
	beq	a5,zero,.L34
	.loc 1 480 42
	lw	a5,-20(s0)
	sw	zero,8(a5)
	.loc 1 481 23
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 1 484 50
	lw	a5,-20(s0)
	sw	zero,12(a5)
	.loc 1 489 13
	li	a3,0
	li	a2,0
	li	a1,0
	lw	a0,-20(s0)
	call	xQueueGenericSend
.L34:
	.loc 1 495 2
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
	.size	prvInitialiseMutex, .-prvInitialiseMutex
	.section	.text.xQueueCreateMutex,"ax",@progbits
	.align	1
	.globl	xQueueCreateMutex
	.type	xQueueCreateMutex, @function
xQueueCreateMutex:
.LFB7:
	.loc 1 503 2
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
	.loc 1 505 20
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 505 55
	sw	zero,-24(s0)
	.loc 1 507 15
	lbu	a5,-33(s0)
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	xQueueGenericCreate
	sw	a0,-28(s0)
	.loc 1 508 3
	lw	a0,-28(s0)
	call	prvInitialiseMutex
	.loc 1 510 10
	lw	a5,-28(s0)
	.loc 1 511 2
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
.LFE7:
	.size	xQueueCreateMutex, .-xQueueCreateMutex
	.section	.text.xQueueCreateMutexStatic,"ax",@progbits
	.align	1
	.globl	xQueueCreateMutexStatic
	.type	xQueueCreateMutexStatic, @function
xQueueCreateMutexStatic:
.LFB8:
	.loc 1 519 2
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
	.loc 1 521 20
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 521 55
	sw	zero,-24(s0)
	.loc 1 527 15
	lbu	a5,-33(s0)
	mv	a4,a5
	lw	a3,-40(s0)
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	xQueueGenericCreateStatic
	sw	a0,-28(s0)
	.loc 1 528 3
	lw	a0,-28(s0)
	call	prvInitialiseMutex
	.loc 1 530 10
	lw	a5,-28(s0)
	.loc 1 531 2
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
	.size	xQueueCreateMutexStatic, .-xQueueCreateMutexStatic
	.section	.text.xQueueGiveMutexRecursive,"ax",@progbits
	.align	1
	.globl	xQueueGiveMutexRecursive
	.type	xQueueGiveMutexRecursive, @function
xQueueGiveMutexRecursive:
.LFB9:
	.loc 1 596 2
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
	.loc 1 598 18
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 600 5
	lw	a5,-24(s0)
	bne	a5,zero,.L40
	.loc 1 600 26 discriminator 1
	call	vAssertCalled
.L40:
	.loc 1 608 28
	lw	a5,-24(s0)
	lw	s1,8(a5)
	.loc 1 608 45
	call	xTaskGetCurrentTaskHandle
	mv	a5,a0
	.loc 1 608 5 discriminator 1
	bne	s1,a5,.L41
	.loc 1 617 27
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 1 617 50
	addi	a4,a5,-1
	lw	a5,-24(s0)
	sw	a4,12(a5)
	.loc 1 620 29
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 1 620 6
	bne	a5,zero,.L42
	.loc 1 624 14
	li	a3,0
	li	a2,0
	li	a1,0
	lw	a0,-24(s0)
	call	xQueueGenericSend
.L42:
	.loc 1 631 12
	li	a5,1
	sw	a5,-20(s0)
	j	.L43
.L41:
	.loc 1 637 12
	sw	zero,-20(s0)
.L43:
	.loc 1 642 10
	lw	a5,-20(s0)
	.loc 1 643 2
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
.LFE9:
	.size	xQueueGiveMutexRecursive, .-xQueueGiveMutexRecursive
	.section	.text.xQueueTakeMutexRecursive,"ax",@progbits
	.align	1
	.globl	xQueueTakeMutexRecursive
	.type	xQueueTakeMutexRecursive, @function
xQueueTakeMutexRecursive:
.LFB10:
	.loc 1 651 2
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
	.loc 1 653 18
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 655 5
	lw	a5,-24(s0)
	bne	a5,zero,.L46
	.loc 1 655 26 discriminator 1
	call	vAssertCalled
.L46:
	.loc 1 662 28
	lw	a5,-24(s0)
	lw	s1,8(a5)
	.loc 1 662 45
	call	xTaskGetCurrentTaskHandle
	mv	a5,a0
	.loc 1 662 5 discriminator 1
	bne	s1,a5,.L47
	.loc 1 664 27
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 1 664 50
	addi	a4,a5,1
	lw	a5,-24(s0)
	sw	a4,12(a5)
	.loc 1 665 12
	li	a5,1
	sw	a5,-20(s0)
	j	.L48
.L47:
	.loc 1 669 14
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	xQueueSemaphoreTake
	sw	a0,-20(s0)
	.loc 1 674 6
	lw	a5,-20(s0)
	beq	a5,zero,.L48
	.loc 1 676 28
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 1 676 51
	addi	a4,a5,1
	lw	a5,-24(s0)
	sw	a4,12(a5)
.L48:
	.loc 1 684 10
	lw	a5,-20(s0)
	.loc 1 685 2
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
.LFE10:
	.size	xQueueTakeMutexRecursive, .-xQueueTakeMutexRecursive
	.section	.text.xQueueCreateCountingSemaphoreStatic,"ax",@progbits
	.align	1
	.globl	xQueueCreateCountingSemaphoreStatic
	.type	xQueueCreateCountingSemaphoreStatic, @function
xQueueCreateCountingSemaphoreStatic:
.LFB11:
	.loc 1 693 2
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
	.loc 1 696 5
	lw	a5,-36(s0)
	bne	a5,zero,.L51
	.loc 1 696 34 discriminator 1
	call	vAssertCalled
.L51:
	.loc 1 697 5
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	bleu	a4,a5,.L52
	.loc 1 697 47 discriminator 1
	call	vAssertCalled
.L52:
	.loc 1 699 13
	li	a4,2
	lw	a3,-44(s0)
	li	a2,0
	li	a1,0
	lw	a0,-36(s0)
	call	xQueueGenericCreateStatic
	sw	a0,-20(s0)
	.loc 1 701 5
	lw	a5,-20(s0)
	beq	a5,zero,.L53
	.loc 1 703 49
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,56(a5)
.L53:
	.loc 1 712 10
	lw	a5,-20(s0)
	.loc 1 713 2
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
.LFE11:
	.size	xQueueCreateCountingSemaphoreStatic, .-xQueueCreateCountingSemaphoreStatic
	.section	.text.xQueueCreateCountingSemaphore,"ax",@progbits
	.align	1
	.globl	xQueueCreateCountingSemaphore
	.type	xQueueCreateCountingSemaphore, @function
xQueueCreateCountingSemaphore:
.LFB12:
	.loc 1 721 2
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
	.loc 1 724 5
	lw	a5,-36(s0)
	bne	a5,zero,.L56
	.loc 1 724 34 discriminator 1
	call	vAssertCalled
.L56:
	.loc 1 725 5
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	bleu	a4,a5,.L57
	.loc 1 725 47 discriminator 1
	call	vAssertCalled
.L57:
	.loc 1 727 13
	li	a2,2
	li	a1,0
	lw	a0,-36(s0)
	call	xQueueGenericCreate
	sw	a0,-20(s0)
	.loc 1 729 5
	lw	a5,-20(s0)
	beq	a5,zero,.L58
	.loc 1 731 49
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,56(a5)
.L58:
	.loc 1 740 10
	lw	a5,-20(s0)
	.loc 1 741 2
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
	.size	xQueueCreateCountingSemaphore, .-xQueueCreateCountingSemaphore
	.section	.text.xQueueGenericSend,"ax",@progbits
	.align	1
	.globl	xQueueGenericSend
	.type	xQueueGenericSend, @function
xQueueGenericSend:
.LFB13:
	.loc 1 747 1
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
	.loc 1 748 12
	sw	zero,-20(s0)
	.loc 1 750 17
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	.loc 1 752 4
	lw	a5,-24(s0)
	bne	a5,zero,.L61
	.loc 1 752 25 discriminator 1
	call	vAssertCalled
.L61:
	.loc 1 753 8
	lw	a5,-56(s0)
	bne	a5,zero,.L62
	.loc 1 753 15 discriminator 2
	lw	a5,-24(s0)
	lw	a5,64(a5)
	.loc 1 753 8 discriminator 2
	bne	a5,zero,.L63
.L62:
	.loc 1 753 8 is_stmt 0 discriminator 3
	li	a5,1
	.loc 1 753 8
	j	.L64
.L63:
	.loc 1 753 8 discriminator 4
	li	a5,0
.L64:
	.loc 1 753 4 is_stmt 1 discriminator 6
	bne	a5,zero,.L65
	.loc 1 753 63 discriminator 7
	call	vAssertCalled
.L65:
	.loc 1 754 8
	lw	a4,-64(s0)
	li	a5,2
	bne	a4,a5,.L66
	.loc 1 754 65 discriminator 2
	lw	a5,-24(s0)
	lw	a4,60(a5)
	.loc 1 754 8 discriminator 2
	li	a5,1
	bne	a4,a5,.L67
.L66:
	.loc 1 754 8 is_stmt 0 discriminator 3
	li	a5,1
	.loc 1 754 8
	j	.L68
.L67:
	.loc 1 754 8 discriminator 4
	li	a5,0
.L68:
	.loc 1 754 4 is_stmt 1 discriminator 6
	bne	a5,zero,.L69
	.loc 1 754 94 discriminator 7
	call	vAssertCalled
.L69:
	.loc 1 757 14
	call	xTaskGetSchedulerState
	mv	a5,a0
	.loc 1 757 9 discriminator 1
	bne	a5,zero,.L70
	.loc 1 757 83 discriminator 3
	lw	a5,-60(s0)
	.loc 1 757 9 discriminator 3
	bne	a5,zero,.L71
.L70:
	.loc 1 757 9 is_stmt 0 discriminator 4
	li	a5,1
	.loc 1 757 9
	j	.L72
.L71:
	.loc 1 757 9 discriminator 5
	li	a5,0
.L72:
	.loc 1 757 5 is_stmt 1 discriminator 7
	bne	a5,zero,.L86
	.loc 1 757 101 discriminator 8
	call	vAssertCalled
.L86:
	.loc 1 767 3
	call	vTaskEnterCritical
	.loc 1 773 17
	lw	a5,-24(s0)
	lw	a4,56(a5)
	.loc 1 773 46
	lw	a5,-24(s0)
	lw	a5,60(a5)
	.loc 1 773 6
	bltu	a4,a5,.L74
	.loc 1 773 59 discriminator 1
	lw	a4,-64(s0)
	li	a5,2
	bne	a4,a5,.L75
.L74:
	.loc 1 839 23
	lw	a2,-64(s0)
	lw	a1,-56(s0)
	lw	a0,-24(s0)
	call	prvCopyDataToQueue
	sw	a0,-28(s0)
	.loc 1 843 54
	lw	a5,-24(s0)
	lw	a5,36(a5)
	.loc 1 843 8
	beq	a5,zero,.L76
	.loc 1 845 37
	lw	a5,-24(s0)
	addi	a5,a5,36
	.loc 1 845 11
	mv	a0,a5
	call	xTaskRemoveFromEventList
	mv	a5,a0
	.loc 1 845 9 discriminator 1
	beq	a5,zero,.L77
	.loc 1 851 8
 #APP
# 851 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/queue.c" 1
	ecall
# 0 "" 2
 #NO_APP
	j	.L77
.L76:
	.loc 1 858 13
	lw	a5,-28(s0)
	beq	a5,zero,.L77
	.loc 1 864 7
 #APP
# 864 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/queue.c" 1
	ecall
# 0 "" 2
 #NO_APP
.L77:
	.loc 1 873 5
	call	vTaskExitCritical
	.loc 1 874 12
	li	a5,1
	j	.L87
.L75:
	.loc 1 878 22
	lw	a5,-60(s0)
	.loc 1 878 7
	bne	a5,zero,.L79
	.loc 1 882 6
	call	vTaskExitCritical
	.loc 1 887 13
	li	a5,0
	j	.L87
.L79:
	.loc 1 889 12
	lw	a5,-20(s0)
	bne	a5,zero,.L80
	.loc 1 893 6
	addi	a5,s0,-36
	mv	a0,a5
	call	vTaskInternalSetTimeOutState
	.loc 1 894 20
	li	a5,1
	sw	a5,-20(s0)
.L80:
	.loc 1 903 3
	call	vTaskExitCritical
	.loc 1 908 3
	call	vTaskSuspendAll
	.loc 1 909 3
	call	vTaskEnterCritical
	.loc 1 909 42 discriminator 1
	lw	a5,-24(s0)
	lbu	a5,68(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 909 29 discriminator 1
	li	a5,-1
	bne	a4,a5,.L81
	.loc 1 909 98 discriminator 2
	lw	a5,-24(s0)
	sb	zero,68(a5)
.L81:
	.loc 1 909 135 discriminator 4
	lw	a5,-24(s0)
	lbu	a5,69(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 909 122 discriminator 4
	li	a5,-1
	bne	a4,a5,.L82
	.loc 1 909 191 discriminator 5
	lw	a5,-24(s0)
	sb	zero,69(a5)
.L82:
	.loc 1 909 215 discriminator 7
	call	vTaskExitCritical
	.loc 1 912 7
	addi	a4,s0,-60
	addi	a5,s0,-36
	mv	a1,a4
	mv	a0,a5
	call	xTaskCheckForTimeOut
	mv	a5,a0
	.loc 1 912 5 discriminator 1
	bne	a5,zero,.L83
	.loc 1 914 8
	lw	a0,-24(s0)
	call	prvIsQueueFull
	mv	a5,a0
	.loc 1 914 6 discriminator 1
	beq	a5,zero,.L84
	.loc 1 917 28
	lw	a5,-24(s0)
	addi	a5,a5,16
	.loc 1 917 5
	lw	a4,-60(s0)
	mv	a1,a4
	mv	a0,a5
	call	vTaskPlaceOnEventList
	.loc 1 924 5
	lw	a0,-24(s0)
	call	prvUnlockQueue
	.loc 1 931 9
	call	xTaskResumeAll
	mv	a5,a0
	.loc 1 931 7 discriminator 1
	bne	a5,zero,.L86
	.loc 1 933 6
 #APP
# 933 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/queue.c" 1
	ecall
# 0 "" 2
 #NO_APP
	j	.L86
.L84:
	.loc 1 939 5
	lw	a0,-24(s0)
	call	prvUnlockQueue
	.loc 1 940 14
	call	xTaskResumeAll
	j	.L86
.L83:
	.loc 1 946 4
	lw	a0,-24(s0)
	call	prvUnlockQueue
	.loc 1 947 13
	call	xTaskResumeAll
	.loc 1 950 11
	li	a5,0
.L87:
	.loc 1 953 1
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
.LFE13:
	.size	xQueueGenericSend, .-xQueueGenericSend
	.section	.text.xQueueGenericSendFromISR,"ax",@progbits
	.align	1
	.globl	xQueueGenericSendFromISR
	.type	xQueueGenericSendFromISR, @function
xQueueGenericSendFromISR:
.LFB14:
	.loc 1 957 1
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
	.loc 1 960 17
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	.loc 1 962 4
	lw	a5,-24(s0)
	bne	a5,zero,.L89
	.loc 1 962 25 discriminator 1
	call	vAssertCalled
.L89:
	.loc 1 963 8
	lw	a5,-56(s0)
	bne	a5,zero,.L90
	.loc 1 963 15 discriminator 2
	lw	a5,-24(s0)
	lw	a5,64(a5)
	.loc 1 963 8 discriminator 2
	bne	a5,zero,.L91
.L90:
	.loc 1 963 8 is_stmt 0 discriminator 3
	li	a5,1
	.loc 1 963 8
	j	.L92
.L91:
	.loc 1 963 8 discriminator 4
	li	a5,0
.L92:
	.loc 1 963 4 is_stmt 1 discriminator 6
	bne	a5,zero,.L93
	.loc 1 963 63 discriminator 7
	call	vAssertCalled
.L93:
	.loc 1 964 8
	lw	a4,-64(s0)
	li	a5,2
	bne	a4,a5,.L94
	.loc 1 964 65 discriminator 2
	lw	a5,-24(s0)
	lw	a4,60(a5)
	.loc 1 964 8 discriminator 2
	li	a5,1
	bne	a4,a5,.L95
.L94:
	.loc 1 964 8 is_stmt 0 discriminator 3
	li	a5,1
	.loc 1 964 8
	j	.L96
.L95:
	.loc 1 964 8 discriminator 4
	li	a5,0
.L96:
	.loc 1 964 4 is_stmt 1 discriminator 6
	bne	a5,zero,.L97
	.loc 1 964 94 discriminator 7
	call	vAssertCalled
.L97:
	.loc 1 987 25
	sw	zero,-28(s0)
	.loc 1 989 16
	lw	a5,-24(s0)
	lw	a4,56(a5)
	.loc 1 989 45
	lw	a5,-24(s0)
	lw	a5,60(a5)
	.loc 1 989 5
	bltu	a4,a5,.L98
	.loc 1 989 58 discriminator 1
	lw	a4,-64(s0)
	li	a5,2
	bne	a4,a5,.L99
.L98:
.LBB3:
	.loc 1 991 17
	lw	a5,-24(s0)
	lbu	a5,69(a5)
	sb	a5,-29(s0)
	.loc 1 992 22
	lw	a5,-24(s0)
	lw	a5,56(a5)
	sw	a5,-36(s0)
	.loc 1 1001 13
	lw	a2,-64(s0)
	lw	a1,-56(s0)
	lw	a0,-24(s0)
	call	prvCopyDataToQueue
	.loc 1 1005 6
	lb	a4,-29(s0)
	li	a5,-1
	bne	a4,a5,.L100
	.loc 1 1067 54
	lw	a5,-24(s0)
	lw	a5,36(a5)
	.loc 1 1067 8
	beq	a5,zero,.L101
	.loc 1 1069 37
	lw	a5,-24(s0)
	addi	a5,a5,36
	.loc 1 1069 11
	mv	a0,a5
	call	xTaskRemoveFromEventList
	mv	a5,a0
	.loc 1 1069 9 discriminator 1
	beq	a5,zero,.L101
	.loc 1 1073 10
	lw	a5,-60(s0)
	beq	a5,zero,.L101
	.loc 1 1075 36
	lw	a5,-60(s0)
	li	a4,1
	sw	a4,0(a5)
	j	.L101
.L100:
	.loc 1 1101 45
	lbu	a5,-29(s0)
	addi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1101 24
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 1101 22
	lw	a5,-24(s0)
	sb	a4,69(a5)
.L101:
	.loc 1 1104 12
	li	a5,1
	sw	a5,-20(s0)
.LBE3:
	.loc 1 990 3
	j	.L102
.L99:
	.loc 1 1109 12
	sw	zero,-20(s0)
.L102:
	.loc 1 1114 9
	lw	a5,-20(s0)
	.loc 1 1115 1
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
	.size	xQueueGenericSendFromISR, .-xQueueGenericSendFromISR
	.section	.text.xQueueGiveFromISR,"ax",@progbits
	.align	1
	.globl	xQueueGiveFromISR
	.type	xQueueGiveFromISR, @function
xQueueGiveFromISR:
.LFB15:
	.loc 1 1119 1
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
	.loc 1 1122 17
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	.loc 1 1130 4
	lw	a5,-24(s0)
	bne	a5,zero,.L105
	.loc 1 1130 25 discriminator 1
	call	vAssertCalled
.L105:
	.loc 1 1134 15
	lw	a5,-24(s0)
	lw	a5,64(a5)
	.loc 1 1134 4
	beq	a5,zero,.L106
	.loc 1 1134 42 discriminator 1
	call	vAssertCalled
.L106:
	.loc 1 1139 20
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1139 8
	bne	a5,zero,.L107
	.loc 1 1139 29 discriminator 2
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 1139 8 discriminator 2
	bne	a5,zero,.L108
.L107:
	.loc 1 1139 8 is_stmt 0 discriminator 3
	li	a5,1
	.loc 1 1139 8
	j	.L109
.L108:
	.loc 1 1139 8 discriminator 4
	li	a5,0
.L109:
	.loc 1 1139 4 is_stmt 1 discriminator 6
	bne	a5,zero,.L110
	.loc 1 1139 14 discriminator 7
	call	vAssertCalled
.L110:
	.loc 1 1157 25
	sw	zero,-28(s0)
.LBB4:
	.loc 1 1159 21
	lw	a5,-24(s0)
	lw	a5,56(a5)
	sw	a5,-32(s0)
	.loc 1 1164 34
	lw	a5,-24(s0)
	lw	a5,60(a5)
	.loc 1 1164 5
	lw	a4,-32(s0)
	bgeu	a4,a5,.L111
.LBB5:
	.loc 1 1166 17
	lw	a5,-24(s0)
	lbu	a5,69(a5)
	sb	a5,-33(s0)
	.loc 1 1176 51
	lw	a5,-32(s0)
	addi	a4,a5,1
	.loc 1 1176 31
	lw	a5,-24(s0)
	sw	a4,56(a5)
	.loc 1 1180 6
	lb	a4,-33(s0)
	li	a5,-1
	bne	a4,a5,.L112
	.loc 1 1235 54
	lw	a5,-24(s0)
	lw	a5,36(a5)
	.loc 1 1235 8
	beq	a5,zero,.L113
	.loc 1 1237 37
	lw	a5,-24(s0)
	addi	a5,a5,36
	.loc 1 1237 11
	mv	a0,a5
	call	xTaskRemoveFromEventList
	mv	a5,a0
	.loc 1 1237 9 discriminator 1
	beq	a5,zero,.L113
	.loc 1 1241 10
	lw	a5,-56(s0)
	beq	a5,zero,.L113
	.loc 1 1243 36
	lw	a5,-56(s0)
	li	a4,1
	sw	a4,0(a5)
	j	.L113
.L112:
	.loc 1 1266 45
	lbu	a5,-33(s0)
	addi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1266 24
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 1266 22
	lw	a5,-24(s0)
	sb	a4,69(a5)
.L113:
	.loc 1 1269 12
	li	a5,1
	sw	a5,-20(s0)
.LBE5:
	j	.L114
.L111:
	.loc 1 1274 12
	sw	zero,-20(s0)
.L114:
.LBE4:
	.loc 1 1279 9
	lw	a5,-20(s0)
	.loc 1 1280 1
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
	.size	xQueueGiveFromISR, .-xQueueGiveFromISR
	.section	.text.xQueueReceive,"ax",@progbits
	.align	1
	.globl	xQueueReceive
	.type	xQueueReceive, @function
xQueueReceive:
.LFB16:
	.loc 1 1284 1
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
	.loc 1 1285 12
	sw	zero,-20(s0)
	.loc 1 1287 17
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	.loc 1 1290 4
	lw	a5,-24(s0)
	bne	a5,zero,.L117
	.loc 1 1290 29 discriminator 1
	call	vAssertCalled
.L117:
	.loc 1 1294 8
	lw	a5,-56(s0)
	bne	a5,zero,.L118
	.loc 1 1294 19 discriminator 2
	lw	a5,-24(s0)
	lw	a5,64(a5)
	.loc 1 1294 8 discriminator 2
	bne	a5,zero,.L119
.L118:
	.loc 1 1294 8 is_stmt 0 discriminator 3
	li	a5,1
	.loc 1 1294 8
	j	.L120
.L119:
	.loc 1 1294 8 discriminator 4
	li	a5,0
.L120:
	.loc 1 1294 4 is_stmt 1 discriminator 6
	bne	a5,zero,.L121
	.loc 1 1294 67 discriminator 7
	call	vAssertCalled
.L121:
	.loc 1 1299 14
	call	xTaskGetSchedulerState
	mv	a5,a0
	.loc 1 1299 9 discriminator 1
	bne	a5,zero,.L122
	.loc 1 1299 83 discriminator 3
	lw	a5,-60(s0)
	.loc 1 1299 9 discriminator 3
	bne	a5,zero,.L123
.L122:
	.loc 1 1299 9 is_stmt 0 discriminator 4
	li	a5,1
	.loc 1 1299 9
	j	.L124
.L123:
	.loc 1 1299 9 discriminator 5
	li	a5,0
.L124:
	.loc 1 1299 5 is_stmt 1 discriminator 7
	bne	a5,zero,.L136
	.loc 1 1299 101 discriminator 8
	call	vAssertCalled
.L136:
	.loc 1 1309 3
	call	vTaskEnterCritical
.LBB6:
	.loc 1 1311 22
	lw	a5,-24(s0)
	lw	a5,56(a5)
	sw	a5,-28(s0)
	.loc 1 1315 6
	lw	a5,-28(s0)
	beq	a5,zero,.L126
	.loc 1 1318 5
	lw	a1,-56(s0)
	lw	a0,-24(s0)
	call	prvCopyDataFromQueue
	.loc 1 1320 52
	lw	a5,-28(s0)
	addi	a4,a5,-1
	.loc 1 1320 32
	lw	a5,-24(s0)
	sw	a4,56(a5)
	.loc 1 1325 50
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 1325 7
	beq	a5,zero,.L127
	.loc 1 1327 36
	lw	a5,-24(s0)
	addi	a5,a5,16
	.loc 1 1327 10
	mv	a0,a5
	call	xTaskRemoveFromEventList
	mv	a5,a0
	.loc 1 1327 8 discriminator 1
	beq	a5,zero,.L127
	.loc 1 1329 7
 #APP
# 1329 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/queue.c" 1
	ecall
# 0 "" 2
 #NO_APP
.L127:
	.loc 1 1341 5
	call	vTaskExitCritical
	.loc 1 1342 12
	li	a5,1
	j	.L137
.L126:
	.loc 1 1346 22
	lw	a5,-60(s0)
	.loc 1 1346 7
	bne	a5,zero,.L129
	.loc 1 1350 6
	call	vTaskExitCritical
	.loc 1 1352 13
	li	a5,0
	j	.L137
.L129:
	.loc 1 1354 12
	lw	a5,-20(s0)
	bne	a5,zero,.L130
	.loc 1 1358 6
	addi	a5,s0,-36
	mv	a0,a5
	call	vTaskInternalSetTimeOutState
	.loc 1 1359 20
	li	a5,1
	sw	a5,-20(s0)
.L130:
.LBE6:
	.loc 1 1368 3
	call	vTaskExitCritical
	.loc 1 1373 3
	call	vTaskSuspendAll
	.loc 1 1374 3
	call	vTaskEnterCritical
	.loc 1 1374 42 discriminator 1
	lw	a5,-24(s0)
	lbu	a5,68(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 1374 29 discriminator 1
	li	a5,-1
	bne	a4,a5,.L131
	.loc 1 1374 98 discriminator 2
	lw	a5,-24(s0)
	sb	zero,68(a5)
.L131:
	.loc 1 1374 135 discriminator 4
	lw	a5,-24(s0)
	lbu	a5,69(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 1374 122 discriminator 4
	li	a5,-1
	bne	a4,a5,.L132
	.loc 1 1374 191 discriminator 5
	lw	a5,-24(s0)
	sb	zero,69(a5)
.L132:
	.loc 1 1374 215 discriminator 7
	call	vTaskExitCritical
	.loc 1 1377 7
	addi	a4,s0,-60
	addi	a5,s0,-36
	mv	a1,a4
	mv	a0,a5
	call	xTaskCheckForTimeOut
	mv	a5,a0
	.loc 1 1377 5 discriminator 1
	bne	a5,zero,.L133
	.loc 1 1381 8
	lw	a0,-24(s0)
	call	prvIsQueueEmpty
	mv	a5,a0
	.loc 1 1381 6 discriminator 1
	beq	a5,zero,.L134
	.loc 1 1384 28
	lw	a5,-24(s0)
	addi	a5,a5,36
	.loc 1 1384 5
	lw	a4,-60(s0)
	mv	a1,a4
	mv	a0,a5
	call	vTaskPlaceOnEventList
	.loc 1 1385 5
	lw	a0,-24(s0)
	call	prvUnlockQueue
	.loc 1 1386 9
	call	xTaskResumeAll
	mv	a5,a0
	.loc 1 1386 7 discriminator 1
	bne	a5,zero,.L136
	.loc 1 1388 6
 #APP
# 1388 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/queue.c" 1
	ecall
# 0 "" 2
 #NO_APP
	j	.L136
.L134:
	.loc 1 1399 5
	lw	a0,-24(s0)
	call	prvUnlockQueue
	.loc 1 1400 14
	call	xTaskResumeAll
	j	.L136
.L133:
	.loc 1 1407 4
	lw	a0,-24(s0)
	call	prvUnlockQueue
	.loc 1 1408 13
	call	xTaskResumeAll
	.loc 1 1410 8
	lw	a0,-24(s0)
	call	prvIsQueueEmpty
	mv	a5,a0
	.loc 1 1410 6 discriminator 1
	beq	a5,zero,.L136
	.loc 1 1413 12
	li	a5,0
.L137:
	.loc 1 1421 1
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
.LFE16:
	.size	xQueueReceive, .-xQueueReceive
	.section	.text.xQueueSemaphoreTake,"ax",@progbits
	.align	1
	.globl	xQueueSemaphoreTake
	.type	xQueueSemaphoreTake, @function
xQueueSemaphoreTake:
.LFB17:
	.loc 1 1425 1
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
	.loc 1 1426 12
	sw	zero,-20(s0)
	.loc 1 1428 17
	lw	a5,-52(s0)
	sw	a5,-28(s0)
	.loc 1 1431 13
	sw	zero,-24(s0)
	.loc 1 1435 4
	lw	a5,-28(s0)
	bne	a5,zero,.L139
	.loc 1 1435 29 discriminator 1
	call	vAssertCalled
.L139:
	.loc 1 1439 15
	lw	a5,-28(s0)
	lw	a5,64(a5)
	.loc 1 1439 4
	beq	a5,zero,.L140
	.loc 1 1439 42 discriminator 1
	call	vAssertCalled
.L140:
	.loc 1 1444 14
	call	xTaskGetSchedulerState
	mv	a5,a0
	.loc 1 1444 9 discriminator 1
	bne	a5,zero,.L141
	.loc 1 1444 83 discriminator 3
	lw	a5,-56(s0)
	.loc 1 1444 9 discriminator 3
	bne	a5,zero,.L142
.L141:
	.loc 1 1444 9 is_stmt 0 discriminator 4
	li	a5,1
	.loc 1 1444 9
	j	.L143
.L142:
	.loc 1 1444 9 discriminator 5
	li	a5,0
.L143:
	.loc 1 1444 5 is_stmt 1 discriminator 7
	bne	a5,zero,.L159
	.loc 1 1444 101 discriminator 8
	call	vAssertCalled
.L159:
	.loc 1 1454 3
	call	vTaskEnterCritical
.LBB7:
	.loc 1 1458 22
	lw	a5,-28(s0)
	lw	a5,56(a5)
	sw	a5,-32(s0)
	.loc 1 1462 6
	lw	a5,-32(s0)
	beq	a5,zero,.L145
	.loc 1 1468 51
	lw	a5,-32(s0)
	addi	a4,a5,-1
	.loc 1 1468 32
	lw	a5,-28(s0)
	sw	a4,56(a5)
	.loc 1 1472 17
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 1472 8
	bne	a5,zero,.L146
	.loc 1 1476 44
	call	pvTaskIncrementMutexHeldCount
	mv	a4,a0
	.loc 1 1476 42 discriminator 1
	lw	a5,-28(s0)
	sw	a4,8(a5)
.L146:
	.loc 1 1487 50
	lw	a5,-28(s0)
	lw	a5,16(a5)
	.loc 1 1487 7
	beq	a5,zero,.L147
	.loc 1 1489 36
	lw	a5,-28(s0)
	addi	a5,a5,16
	.loc 1 1489 10
	mv	a0,a5
	call	xTaskRemoveFromEventList
	mv	a5,a0
	.loc 1 1489 8 discriminator 1
	beq	a5,zero,.L147
	.loc 1 1491 7
 #APP
# 1491 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/queue.c" 1
	ecall
# 0 "" 2
 #NO_APP
.L147:
	.loc 1 1503 5
	call	vTaskExitCritical
	.loc 1 1504 12
	li	a5,1
	j	.L160
.L145:
	.loc 1 1508 22
	lw	a5,-56(s0)
	.loc 1 1508 7
	bne	a5,zero,.L149
	.loc 1 1515 9
	lw	a5,-24(s0)
	beq	a5,zero,.L150
	.loc 1 1515 67 discriminator 1
	call	vAssertCalled
.L150:
	.loc 1 1521 6
	call	vTaskExitCritical
	.loc 1 1523 13
	li	a5,0
	j	.L160
.L149:
	.loc 1 1525 12
	lw	a5,-20(s0)
	bne	a5,zero,.L151
	.loc 1 1529 6
	addi	a5,s0,-44
	mv	a0,a5
	call	vTaskInternalSetTimeOutState
	.loc 1 1530 20
	li	a5,1
	sw	a5,-20(s0)
.L151:
.LBE7:
	.loc 1 1539 3
	call	vTaskExitCritical
	.loc 1 1544 3
	call	vTaskSuspendAll
	.loc 1 1545 3
	call	vTaskEnterCritical
	.loc 1 1545 42 discriminator 1
	lw	a5,-28(s0)
	lbu	a5,68(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 1545 29 discriminator 1
	li	a5,-1
	bne	a4,a5,.L152
	.loc 1 1545 98 discriminator 2
	lw	a5,-28(s0)
	sb	zero,68(a5)
.L152:
	.loc 1 1545 135 discriminator 4
	lw	a5,-28(s0)
	lbu	a5,69(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 1545 122 discriminator 4
	li	a5,-1
	bne	a4,a5,.L153
	.loc 1 1545 191 discriminator 5
	lw	a5,-28(s0)
	sb	zero,69(a5)
.L153:
	.loc 1 1545 215 discriminator 7
	call	vTaskExitCritical
	.loc 1 1548 7
	addi	a4,s0,-56
	addi	a5,s0,-44
	mv	a1,a4
	mv	a0,a5
	call	xTaskCheckForTimeOut
	mv	a5,a0
	.loc 1 1548 5 discriminator 1
	bne	a5,zero,.L154
	.loc 1 1554 8
	lw	a0,-28(s0)
	call	prvIsQueueEmpty
	mv	a5,a0
	.loc 1 1554 6 discriminator 1
	beq	a5,zero,.L155
	.loc 1 1560 17
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 1560 8
	bne	a5,zero,.L156
	.loc 1 1562 7
	call	vTaskEnterCritical
	.loc 1 1564 74
	lw	a5,-28(s0)
	lw	a5,8(a5)
	.loc 1 1564 31
	mv	a0,a5
	call	xTaskPriorityInherit
	sw	a0,-24(s0)
	.loc 1 1566 7
	call	vTaskExitCritical
.L156:
	.loc 1 1575 28
	lw	a5,-28(s0)
	addi	a5,a5,36
	.loc 1 1575 5
	lw	a4,-56(s0)
	mv	a1,a4
	mv	a0,a5
	call	vTaskPlaceOnEventList
	.loc 1 1576 5
	lw	a0,-28(s0)
	call	prvUnlockQueue
	.loc 1 1577 9
	call	xTaskResumeAll
	mv	a5,a0
	.loc 1 1577 7 discriminator 1
	bne	a5,zero,.L159
	.loc 1 1579 6
 #APP
# 1579 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/queue.c" 1
	ecall
# 0 "" 2
 #NO_APP
	j	.L159
.L155:
	.loc 1 1590 5
	lw	a0,-28(s0)
	call	prvUnlockQueue
	.loc 1 1591 14
	call	xTaskResumeAll
	j	.L159
.L154:
	.loc 1 1597 4
	lw	a0,-28(s0)
	call	prvUnlockQueue
	.loc 1 1598 13
	call	xTaskResumeAll
	.loc 1 1604 8
	lw	a0,-28(s0)
	call	prvIsQueueEmpty
	mv	a5,a0
	.loc 1 1604 6 discriminator 1
	beq	a5,zero,.L159
	.loc 1 1611 8
	lw	a5,-24(s0)
	beq	a5,zero,.L158
	.loc 1 1613 7
	call	vTaskEnterCritical
.LBB8:
	.loc 1 1622 35
	lw	a0,-28(s0)
	call	prvGetDisinheritPriorityAfterTimeout
	sw	a0,-36(s0)
	.loc 1 1623 66
	lw	a5,-28(s0)
	lw	a5,8(a5)
	.loc 1 1623 8
	lw	a1,-36(s0)
	mv	a0,a5
	call	vTaskPriorityDisinheritAfterTimeout
.LBE8:
	.loc 1 1625 7
	call	vTaskExitCritical
.L158:
	.loc 1 1631 12
	li	a5,0
.L160:
	.loc 1 1639 1
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
.LFE17:
	.size	xQueueSemaphoreTake, .-xQueueSemaphoreTake
	.section	.text.xQueuePeek,"ax",@progbits
	.align	1
	.globl	xQueuePeek
	.type	xQueuePeek, @function
xQueuePeek:
.LFB18:
	.loc 1 1643 1
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
	.loc 1 1644 12
	sw	zero,-20(s0)
	.loc 1 1647 17
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	.loc 1 1650 4
	lw	a5,-24(s0)
	bne	a5,zero,.L162
	.loc 1 1650 29 discriminator 1
	call	vAssertCalled
.L162:
	.loc 1 1654 8
	lw	a5,-56(s0)
	bne	a5,zero,.L163
	.loc 1 1654 19 discriminator 2
	lw	a5,-24(s0)
	lw	a5,64(a5)
	.loc 1 1654 8 discriminator 2
	bne	a5,zero,.L164
.L163:
	.loc 1 1654 8 is_stmt 0 discriminator 3
	li	a5,1
	.loc 1 1654 8
	j	.L165
.L164:
	.loc 1 1654 8 discriminator 4
	li	a5,0
.L165:
	.loc 1 1654 4 is_stmt 1 discriminator 6
	bne	a5,zero,.L166
	.loc 1 1654 67 discriminator 7
	call	vAssertCalled
.L166:
	.loc 1 1659 14
	call	xTaskGetSchedulerState
	mv	a5,a0
	.loc 1 1659 9 discriminator 1
	bne	a5,zero,.L167
	.loc 1 1659 83 discriminator 3
	lw	a5,-60(s0)
	.loc 1 1659 9 discriminator 3
	bne	a5,zero,.L168
.L167:
	.loc 1 1659 9 is_stmt 0 discriminator 4
	li	a5,1
	.loc 1 1659 9
	j	.L169
.L168:
	.loc 1 1659 9 discriminator 5
	li	a5,0
.L169:
	.loc 1 1659 5 is_stmt 1 discriminator 7
	bne	a5,zero,.L181
	.loc 1 1659 101 discriminator 8
	call	vAssertCalled
.L181:
	.loc 1 1669 3
	call	vTaskEnterCritical
.LBB9:
	.loc 1 1671 22
	lw	a5,-24(s0)
	lw	a5,56(a5)
	sw	a5,-28(s0)
	.loc 1 1675 6
	lw	a5,-28(s0)
	beq	a5,zero,.L171
	.loc 1 1680 28
	lw	a5,-24(s0)
	lw	a5,12(a5)
	sw	a5,-32(s0)
	.loc 1 1682 5
	lw	a1,-56(s0)
	lw	a0,-24(s0)
	call	prvCopyDataFromQueue
	.loc 1 1686 34
	lw	a5,-24(s0)
	lw	a4,-32(s0)
	sw	a4,12(a5)
	.loc 1 1690 53
	lw	a5,-24(s0)
	lw	a5,36(a5)
	.loc 1 1690 7
	beq	a5,zero,.L172
	.loc 1 1692 36
	lw	a5,-24(s0)
	addi	a5,a5,36
	.loc 1 1692 10
	mv	a0,a5
	call	xTaskRemoveFromEventList
	mv	a5,a0
	.loc 1 1692 8 discriminator 1
	beq	a5,zero,.L172
	.loc 1 1695 7
 #APP
# 1695 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/queue.c" 1
	ecall
# 0 "" 2
 #NO_APP
.L172:
	.loc 1 1707 5
	call	vTaskExitCritical
	.loc 1 1708 12
	li	a5,1
	j	.L182
.L171:
	.loc 1 1712 22
	lw	a5,-60(s0)
	.loc 1 1712 7
	bne	a5,zero,.L174
	.loc 1 1716 6
	call	vTaskExitCritical
	.loc 1 1718 13
	li	a5,0
	j	.L182
.L174:
	.loc 1 1720 12
	lw	a5,-20(s0)
	bne	a5,zero,.L175
	.loc 1 1725 6
	addi	a5,s0,-40
	mv	a0,a5
	call	vTaskInternalSetTimeOutState
	.loc 1 1726 20
	li	a5,1
	sw	a5,-20(s0)
.L175:
.LBE9:
	.loc 1 1735 3
	call	vTaskExitCritical
	.loc 1 1740 3
	call	vTaskSuspendAll
	.loc 1 1741 3
	call	vTaskEnterCritical
	.loc 1 1741 42 discriminator 1
	lw	a5,-24(s0)
	lbu	a5,68(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 1741 29 discriminator 1
	li	a5,-1
	bne	a4,a5,.L176
	.loc 1 1741 98 discriminator 2
	lw	a5,-24(s0)
	sb	zero,68(a5)
.L176:
	.loc 1 1741 135 discriminator 4
	lw	a5,-24(s0)
	lbu	a5,69(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 1741 122 discriminator 4
	li	a5,-1
	bne	a4,a5,.L177
	.loc 1 1741 191 discriminator 5
	lw	a5,-24(s0)
	sb	zero,69(a5)
.L177:
	.loc 1 1741 215 discriminator 7
	call	vTaskExitCritical
	.loc 1 1744 7
	addi	a4,s0,-60
	addi	a5,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	xTaskCheckForTimeOut
	mv	a5,a0
	.loc 1 1744 5 discriminator 1
	bne	a5,zero,.L178
	.loc 1 1748 8
	lw	a0,-24(s0)
	call	prvIsQueueEmpty
	mv	a5,a0
	.loc 1 1748 6 discriminator 1
	beq	a5,zero,.L179
	.loc 1 1751 28
	lw	a5,-24(s0)
	addi	a5,a5,36
	.loc 1 1751 5
	lw	a4,-60(s0)
	mv	a1,a4
	mv	a0,a5
	call	vTaskPlaceOnEventList
	.loc 1 1752 5
	lw	a0,-24(s0)
	call	prvUnlockQueue
	.loc 1 1753 9
	call	xTaskResumeAll
	mv	a5,a0
	.loc 1 1753 7 discriminator 1
	bne	a5,zero,.L181
	.loc 1 1755 6
 #APP
# 1755 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/queue.c" 1
	ecall
# 0 "" 2
 #NO_APP
	j	.L181
.L179:
	.loc 1 1766 5
	lw	a0,-24(s0)
	call	prvUnlockQueue
	.loc 1 1767 14
	call	xTaskResumeAll
	j	.L181
.L178:
	.loc 1 1774 4
	lw	a0,-24(s0)
	call	prvUnlockQueue
	.loc 1 1775 13
	call	xTaskResumeAll
	.loc 1 1777 8
	lw	a0,-24(s0)
	call	prvIsQueueEmpty
	mv	a5,a0
	.loc 1 1777 6 discriminator 1
	beq	a5,zero,.L181
	.loc 1 1780 12
	li	a5,0
.L182:
	.loc 1 1788 1
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
.LFE18:
	.size	xQueuePeek, .-xQueuePeek
	.section	.text.xQueueReceiveFromISR,"ax",@progbits
	.align	1
	.globl	xQueueReceiveFromISR
	.type	xQueueReceiveFromISR, @function
xQueueReceiveFromISR:
.LFB19:
	.loc 1 1792 1
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
	.loc 1 1795 17
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	.loc 1 1797 4
	lw	a5,-24(s0)
	bne	a5,zero,.L184
	.loc 1 1797 25 discriminator 1
	call	vAssertCalled
.L184:
	.loc 1 1798 8
	lw	a5,-56(s0)
	bne	a5,zero,.L185
	.loc 1 1798 15 discriminator 2
	lw	a5,-24(s0)
	lw	a5,64(a5)
	.loc 1 1798 8 discriminator 2
	bne	a5,zero,.L186
.L185:
	.loc 1 1798 8 is_stmt 0 discriminator 3
	li	a5,1
	.loc 1 1798 8
	j	.L187
.L186:
	.loc 1 1798 8 discriminator 4
	li	a5,0
.L187:
	.loc 1 1798 4 is_stmt 1 discriminator 6
	bne	a5,zero,.L188
	.loc 1 1798 63 discriminator 7
	call	vAssertCalled
.L188:
	.loc 1 1816 25
	sw	zero,-28(s0)
.LBB10:
	.loc 1 1818 21
	lw	a5,-24(s0)
	lw	a5,56(a5)
	sw	a5,-32(s0)
	.loc 1 1821 5
	lw	a5,-32(s0)
	beq	a5,zero,.L189
.LBB11:
	.loc 1 1823 17
	lw	a5,-24(s0)
	lbu	a5,68(a5)
	sb	a5,-33(s0)
	.loc 1 1827 4
	lw	a1,-56(s0)
	lw	a0,-24(s0)
	call	prvCopyDataFromQueue
	.loc 1 1828 51
	lw	a5,-32(s0)
	addi	a4,a5,-1
	.loc 1 1828 31
	lw	a5,-24(s0)
	sw	a4,56(a5)
	.loc 1 1834 6
	lb	a4,-33(s0)
	li	a5,-1
	bne	a4,a5,.L190
	.loc 1 1836 50
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 1836 7
	beq	a5,zero,.L191
	.loc 1 1838 36
	lw	a5,-24(s0)
	addi	a5,a5,16
	.loc 1 1838 10
	mv	a0,a5
	call	xTaskRemoveFromEventList
	mv	a5,a0
	.loc 1 1838 8 discriminator 1
	beq	a5,zero,.L191
	.loc 1 1842 9
	lw	a5,-60(s0)
	beq	a5,zero,.L191
	.loc 1 1844 35
	lw	a5,-60(s0)
	li	a4,1
	sw	a4,0(a5)
	j	.L191
.L190:
	.loc 1 1865 45
	lbu	a5,-33(s0)
	addi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1865 24
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 1865 22
	lw	a5,-24(s0)
	sb	a4,68(a5)
.L191:
	.loc 1 1868 12
	li	a5,1
	sw	a5,-20(s0)
.LBE11:
	j	.L192
.L189:
	.loc 1 1872 12
	sw	zero,-20(s0)
.L192:
.LBE10:
	.loc 1 1878 9
	lw	a5,-20(s0)
	.loc 1 1879 1
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
.LFE19:
	.size	xQueueReceiveFromISR, .-xQueueReceiveFromISR
	.section	.text.xQueuePeekFromISR,"ax",@progbits
	.align	1
	.globl	xQueuePeekFromISR
	.type	xQueuePeekFromISR, @function
xQueuePeekFromISR:
.LFB20:
	.loc 1 1883 1
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
	.loc 1 1887 17
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 1889 4
	lw	a5,-24(s0)
	bne	a5,zero,.L195
	.loc 1 1889 25 discriminator 1
	call	vAssertCalled
.L195:
	.loc 1 1890 8
	lw	a5,-40(s0)
	bne	a5,zero,.L196
	.loc 1 1890 15 discriminator 2
	lw	a5,-24(s0)
	lw	a5,64(a5)
	.loc 1 1890 8 discriminator 2
	bne	a5,zero,.L197
.L196:
	.loc 1 1890 8 is_stmt 0 discriminator 3
	li	a5,1
	.loc 1 1890 8
	j	.L198
.L197:
	.loc 1 1890 8 discriminator 4
	li	a5,0
.L198:
	.loc 1 1890 4 is_stmt 1 discriminator 6
	bne	a5,zero,.L199
	.loc 1 1890 63 discriminator 7
	call	vAssertCalled
.L199:
	.loc 1 1891 15
	lw	a5,-24(s0)
	lw	a5,64(a5)
	.loc 1 1891 4
	bne	a5,zero,.L200
	.loc 1 1891 42 discriminator 1
	call	vAssertCalled
.L200:
	.loc 1 1909 25
	sw	zero,-28(s0)
	.loc 1 1912 14
	lw	a5,-24(s0)
	lw	a5,56(a5)
	.loc 1 1912 5
	beq	a5,zero,.L201
	.loc 1 1918 27
	lw	a5,-24(s0)
	lw	a5,12(a5)
	sw	a5,-32(s0)
	.loc 1 1919 4
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	prvCopyDataFromQueue
	.loc 1 1920 33
	lw	a5,-24(s0)
	lw	a4,-32(s0)
	sw	a4,12(a5)
	.loc 1 1922 12
	li	a5,1
	sw	a5,-20(s0)
	j	.L202
.L201:
	.loc 1 1926 12
	sw	zero,-20(s0)
.L202:
	.loc 1 1932 9
	lw	a5,-20(s0)
	.loc 1 1933 1
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
	.size	xQueuePeekFromISR, .-xQueuePeekFromISR
	.section	.text.uxQueueMessagesWaiting,"ax",@progbits
	.align	1
	.globl	uxQueueMessagesWaiting
	.type	uxQueueMessagesWaiting, @function
uxQueueMessagesWaiting:
.LFB21:
	.loc 1 1937 1
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
	.loc 1 1940 4
	lw	a5,-36(s0)
	bne	a5,zero,.L205
	.loc 1 1940 24 discriminator 1
	call	vAssertCalled
.L205:
	.loc 1 1942 2
	call	vTaskEnterCritical
	.loc 1 1944 12
	lw	a5,-36(s0)
	lw	a5,56(a5)
	sw	a5,-20(s0)
	.loc 1 1946 2
	call	vTaskExitCritical
	.loc 1 1948 9
	lw	a5,-20(s0)
	.loc 1 1949 1
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
.LFE21:
	.size	uxQueueMessagesWaiting, .-uxQueueMessagesWaiting
	.section	.text.uxQueueSpacesAvailable,"ax",@progbits
	.align	1
	.globl	uxQueueSpacesAvailable
	.type	uxQueueSpacesAvailable, @function
uxQueueSpacesAvailable:
.LFB22:
	.loc 1 1953 1
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
	.loc 1 1955 17
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1957 4
	lw	a5,-20(s0)
	bne	a5,zero,.L208
	.loc 1 1957 25 discriminator 1
	call	vAssertCalled
.L208:
	.loc 1 1959 2
	call	vTaskEnterCritical
	.loc 1 1961 21
	lw	a5,-20(s0)
	lw	a4,60(a5)
	.loc 1 1961 41
	lw	a5,-20(s0)
	lw	a5,56(a5)
	.loc 1 1961 12
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 1963 2
	call	vTaskExitCritical
	.loc 1 1965 9
	lw	a5,-24(s0)
	.loc 1 1966 1
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
.LFE22:
	.size	uxQueueSpacesAvailable, .-uxQueueSpacesAvailable
	.section	.text.uxQueueMessagesWaitingFromISR,"ax",@progbits
	.align	1
	.globl	uxQueueMessagesWaitingFromISR
	.type	uxQueueMessagesWaitingFromISR, @function
uxQueueMessagesWaitingFromISR:
.LFB23:
	.loc 1 1970 1
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
	.loc 1 1972 17
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1974 4
	lw	a5,-20(s0)
	bne	a5,zero,.L211
	.loc 1 1974 25 discriminator 1
	call	vAssertCalled
.L211:
	.loc 1 1975 11
	lw	a5,-20(s0)
	lw	a5,56(a5)
	sw	a5,-24(s0)
	.loc 1 1977 9
	lw	a5,-24(s0)
	.loc 1 1978 1
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
	.size	uxQueueMessagesWaitingFromISR, .-uxQueueMessagesWaitingFromISR
	.section	.text.vQueueDelete,"ax",@progbits
	.align	1
	.globl	vQueueDelete
	.type	vQueueDelete, @function
vQueueDelete:
.LFB24:
	.loc 1 1982 1
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
	.loc 1 1983 17
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1985 4
	lw	a5,-20(s0)
	bne	a5,zero,.L214
	.loc 1 1985 25 discriminator 1
	call	vAssertCalled
.L214:
	.loc 1 1990 3
	lw	a0,-20(s0)
	call	vQueueUnregisterQueue
	.loc 1 2004 14
	lw	a5,-20(s0)
	lbu	a5,70(a5)
	.loc 1 2004 5
	bne	a5,zero,.L216
	.loc 1 2006 4
	lw	a0,-20(s0)
	call	vPortFree
.L216:
	.loc 1 2020 1
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
.LFE24:
	.size	vQueueDelete, .-vQueueDelete
	.section	.text.uxQueueGetQueueNumber,"ax",@progbits
	.align	1
	.globl	uxQueueGetQueueNumber
	.type	uxQueueGetQueueNumber, @function
uxQueueGetQueueNumber:
.LFB25:
	.loc 1 2026 2
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
	.loc 1 2027 34
	lw	a5,-20(s0)
	lw	a5,72(a5)
	.loc 1 2028 2
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
	.size	uxQueueGetQueueNumber, .-uxQueueGetQueueNumber
	.section	.text.vQueueSetQueueNumber,"ax",@progbits
	.align	1
	.globl	vQueueSetQueueNumber
	.type	vQueueSetQueueNumber, @function
vQueueSetQueueNumber:
.LFB26:
	.loc 1 2036 2
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
	.loc 1 2037 43
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,72(a5)
	.loc 1 2038 2
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
.LFE26:
	.size	vQueueSetQueueNumber, .-vQueueSetQueueNumber
	.section	.text.ucQueueGetQueueType,"ax",@progbits
	.align	1
	.globl	ucQueueGetQueueType
	.type	ucQueueGetQueueType, @function
ucQueueGetQueueType:
.LFB27:
	.loc 1 2046 2
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
	.loc 1 2047 34
	lw	a5,-20(s0)
	lbu	a5,76(a5)
	.loc 1 2048 2
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
	.size	ucQueueGetQueueType, .-ucQueueGetQueueType
	.section	.text.prvGetDisinheritPriorityAfterTimeout,"ax",@progbits
	.align	1
	.type	prvGetDisinheritPriorityAfterTimeout, @function
prvGetDisinheritPriorityAfterTimeout:
.LFB28:
	.loc 1 2056 2
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
	.loc 1 2065 49
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 1 2065 5
	beq	a5,zero,.L223
	.loc 1 2067 135
	lw	a5,-36(s0)
	lw	a5,48(a5)
	.loc 1 2067 142
	lw	a5,0(a5)
	.loc 1 2067 36
	li	a4,32
	sub	a5,a4,a5
	sw	a5,-20(s0)
	j	.L224
.L223:
	.loc 1 2071 36
	sw	zero,-20(s0)
.L224:
	.loc 1 2074 10
	lw	a5,-20(s0)
	.loc 1 2075 2
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
	.size	prvGetDisinheritPriorityAfterTimeout, .-prvGetDisinheritPriorityAfterTimeout
	.section	.text.prvCopyDataToQueue,"ax",@progbits
	.align	1
	.type	prvCopyDataToQueue, @function
prvCopyDataToQueue:
.LFB29:
	.loc 1 2081 1
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
	.loc 1 2082 12
	sw	zero,-20(s0)
	.loc 1 2087 20
	lw	a5,-36(s0)
	lw	a5,56(a5)
	sw	a5,-24(s0)
	.loc 1 2089 13
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 1 2089 4
	bne	a5,zero,.L227
	.loc 1 2093 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 2093 6
	bne	a5,zero,.L228
	.loc 1 2096 61
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 2096 15
	mv	a0,a5
	call	xTaskPriorityDisinherit
	sw	a0,-20(s0)
	.loc 1 2097 40
	lw	a5,-36(s0)
	sw	zero,8(a5)
	j	.L228
.L227:
	.loc 1 2106 9
	lw	a5,-44(s0)
	bne	a5,zero,.L229
	.loc 1 2108 38
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 2108 84
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 1 2108 12
	mv	a2,a5
	lw	a1,-40(s0)
	mv	a0,a4
	call	memcpy
	.loc 1 2109 10
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 2109 32
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 1 2109 22
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 1 2110 14
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 2110 46
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 2110 5
	bltu	a4,a5,.L228
	.loc 1 2112 32
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 2112 23
	lw	a5,-36(s0)
	sw	a4,4(a5)
	j	.L228
.L229:
	.loc 1 2121 48
	lw	a5,-36(s0)
	lw	a4,12(a5)
	.loc 1 2121 94
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 1 2121 12
	mv	a2,a5
	lw	a1,-40(s0)
	mv	a0,a4
	call	memcpy
	.loc 1 2122 20
	lw	a5,-36(s0)
	lw	a4,12(a5)
	.loc 1 2122 42
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 1 2122 32
	neg	a5,a5
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,12(a5)
	.loc 1 2123 24
	lw	a5,-36(s0)
	lw	a4,12(a5)
	.loc 1 2123 45
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 2123 5
	bgeu	a4,a5,.L230
	.loc 1 2125 54
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 1 2125 71
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 1 2125 62
	neg	a5,a5
	add	a4,a4,a5
	.loc 1 2125 33
	lw	a5,-36(s0)
	sw	a4,12(a5)
.L230:
	.loc 1 2132 5
	lw	a4,-44(s0)
	li	a5,2
	bne	a4,a5,.L228
	.loc 1 2134 6
	lw	a5,-24(s0)
	beq	a5,zero,.L228
	.loc 1 2140 5
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L228:
	.loc 1 2153 49
	lw	a5,-24(s0)
	addi	a4,a5,1
	.loc 1 2153 29
	lw	a5,-36(s0)
	sw	a4,56(a5)
	.loc 1 2155 9
	lw	a5,-20(s0)
	.loc 1 2156 1
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
	.size	prvCopyDataToQueue, .-prvCopyDataToQueue
	.section	.text.prvCopyDataFromQueue,"ax",@progbits
	.align	1
	.type	prvCopyDataFromQueue, @function
prvCopyDataFromQueue:
.LFB30:
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
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 2161 13
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 1 2161 4
	beq	a5,zero,.L235
	.loc 1 2163 20
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 2163 42
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 1 2163 32
	add	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,12(a5)
	.loc 1 2164 24
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 2164 56
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 2164 5
	bltu	a4,a5,.L234
	.loc 1 2166 42
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 2166 33
	lw	a5,-20(s0)
	sw	a4,12(a5)
.L234:
	.loc 1 2172 69
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 2172 100
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 1 2172 12
	mv	a2,a5
	mv	a1,a4
	lw	a0,-24(s0)
	call	memcpy
.L235:
	.loc 1 2174 1
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
	.size	prvCopyDataFromQueue, .-prvCopyDataFromQueue
	.section	.text.prvUnlockQueue,"ax",@progbits
	.align	1
	.type	prvUnlockQueue, @function
prvUnlockQueue:
.LFB31:
	.loc 1 2178 1
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
	.loc 1 2185 2
	call	vTaskEnterCritical
.LBB12:
	.loc 1 2187 10
	lw	a5,-36(s0)
	lbu	a5,69(a5)
	sb	a5,-17(s0)
	.loc 1 2190 8
	j	.L237
.L241:
	.loc 1 2238 53
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 1 2238 7
	beq	a5,zero,.L247
	.loc 1 2240 36
	lw	a5,-36(s0)
	addi	a5,a5,36
	.loc 1 2240 10
	mv	a0,a5
	call	xTaskRemoveFromEventList
	mv	a5,a0
	.loc 1 2240 8 discriminator 1
	beq	a5,zero,.L239
	.loc 1 2244 7
	call	vTaskMissedYield
.L239:
	.loc 1 2258 4
	lbu	a5,-17(s0)
	addi	a5,a5,-1
	andi	a5,a5,0xff
	sb	a5,-17(s0)
.L237:
	.loc 1 2190 18
	lb	a5,-17(s0)
	bgt	a5,zero,.L241
	j	.L240
.L247:
	.loc 1 2253 6
	nop
.L240:
	.loc 1 2261 20
	lw	a5,-36(s0)
	li	a4,-1
	sb	a4,69(a5)
.LBE12:
	.loc 1 2263 2
	call	vTaskExitCritical
	.loc 1 2266 2
	call	vTaskEnterCritical
.LBB13:
	.loc 1 2268 10
	lw	a5,-36(s0)
	lbu	a5,68(a5)
	sb	a5,-18(s0)
	.loc 1 2270 8
	j	.L242
.L246:
	.loc 1 2272 49
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 2272 6
	beq	a5,zero,.L248
	.loc 1 2274 35
	lw	a5,-36(s0)
	addi	a5,a5,16
	.loc 1 2274 9
	mv	a0,a5
	call	xTaskRemoveFromEventList
	mv	a5,a0
	.loc 1 2274 7 discriminator 1
	beq	a5,zero,.L244
	.loc 1 2276 6
	call	vTaskMissedYield
.L244:
	.loc 1 2283 5
	lbu	a5,-18(s0)
	addi	a5,a5,-1
	andi	a5,a5,0xff
	sb	a5,-18(s0)
.L242:
	.loc 1 2270 18
	lb	a5,-18(s0)
	bgt	a5,zero,.L246
	j	.L245
.L248:
	.loc 1 2287 5
	nop
.L245:
	.loc 1 2291 20
	lw	a5,-36(s0)
	li	a4,-1
	sb	a4,68(a5)
.LBE13:
	.loc 1 2293 2
	call	vTaskExitCritical
	.loc 1 2294 1
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
.LFE31:
	.size	prvUnlockQueue, .-prvUnlockQueue
	.section	.text.prvIsQueueEmpty,"ax",@progbits
	.align	1
	.type	prvIsQueueEmpty, @function
prvIsQueueEmpty:
.LFB32:
	.loc 1 2298 1
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
	.loc 1 2301 2
	call	vTaskEnterCritical
	.loc 1 2303 14
	lw	a5,-36(s0)
	lw	a5,56(a5)
	.loc 1 2303 5
	bne	a5,zero,.L250
	.loc 1 2305 12
	li	a5,1
	sw	a5,-20(s0)
	j	.L251
.L250:
	.loc 1 2309 12
	sw	zero,-20(s0)
.L251:
	.loc 1 2312 2
	call	vTaskExitCritical
	.loc 1 2314 9
	lw	a5,-20(s0)
	.loc 1 2315 1
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
	.size	prvIsQueueEmpty, .-prvIsQueueEmpty
	.section	.text.xQueueIsQueueEmptyFromISR,"ax",@progbits
	.align	1
	.globl	xQueueIsQueueEmptyFromISR
	.type	xQueueIsQueueEmptyFromISR, @function
xQueueIsQueueEmptyFromISR:
.LFB33:
	.loc 1 2319 1
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
	.loc 1 2321 17
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 2323 4
	lw	a5,-24(s0)
	bne	a5,zero,.L254
	.loc 1 2323 25 discriminator 1
	call	vAssertCalled
.L254:
	.loc 1 2324 13
	lw	a5,-24(s0)
	lw	a5,56(a5)
	.loc 1 2324 4
	bne	a5,zero,.L255
	.loc 1 2326 11
	li	a5,1
	sw	a5,-20(s0)
	j	.L256
.L255:
	.loc 1 2330 11
	sw	zero,-20(s0)
.L256:
	.loc 1 2333 9
	lw	a5,-20(s0)
	.loc 1 2334 1
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
.LFE33:
	.size	xQueueIsQueueEmptyFromISR, .-xQueueIsQueueEmptyFromISR
	.section	.text.prvIsQueueFull,"ax",@progbits
	.align	1
	.type	prvIsQueueFull, @function
prvIsQueueFull:
.LFB34:
	.loc 1 2338 1
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
	.loc 1 2341 2
	call	vTaskEnterCritical
	.loc 1 2343 14
	lw	a5,-36(s0)
	lw	a4,56(a5)
	.loc 1 2343 44
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 1 2343 5
	bne	a4,a5,.L259
	.loc 1 2345 12
	li	a5,1
	sw	a5,-20(s0)
	j	.L260
.L259:
	.loc 1 2349 12
	sw	zero,-20(s0)
.L260:
	.loc 1 2352 2
	call	vTaskExitCritical
	.loc 1 2354 9
	lw	a5,-20(s0)
	.loc 1 2355 1
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
.LFE34:
	.size	prvIsQueueFull, .-prvIsQueueFull
	.section	.text.xQueueIsQueueFullFromISR,"ax",@progbits
	.align	1
	.globl	xQueueIsQueueFullFromISR
	.type	xQueueIsQueueFullFromISR, @function
xQueueIsQueueFullFromISR:
.LFB35:
	.loc 1 2359 1
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
	.loc 1 2361 17
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 2363 4
	lw	a5,-24(s0)
	bne	a5,zero,.L263
	.loc 1 2363 25 discriminator 1
	call	vAssertCalled
.L263:
	.loc 1 2364 13
	lw	a5,-24(s0)
	lw	a4,56(a5)
	.loc 1 2364 43
	lw	a5,-24(s0)
	lw	a5,60(a5)
	.loc 1 2364 4
	bne	a4,a5,.L264
	.loc 1 2366 11
	li	a5,1
	sw	a5,-20(s0)
	j	.L265
.L264:
	.loc 1 2370 11
	sw	zero,-20(s0)
.L265:
	.loc 1 2373 9
	lw	a5,-20(s0)
	.loc 1 2374 1
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
.LFE35:
	.size	xQueueIsQueueFullFromISR, .-xQueueIsQueueFullFromISR
	.section	.text.vQueueAddToRegistry,"ax",@progbits
	.align	1
	.globl	vQueueAddToRegistry
	.type	vQueueAddToRegistry, @function
vQueueAddToRegistry:
.LFB36:
	.loc 1 2655 2
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
	.loc 1 2660 11
	sw	zero,-20(s0)
	.loc 1 2660 3
	j	.L268
.L271:
	.loc 1 2662 28
	lui	a5,%hi(xQueueRegistry)
	addi	a4,a5,%lo(xQueueRegistry)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 2662 6
	bne	a5,zero,.L269
	.loc 1 2665 38
	lui	a5,%hi(xQueueRegistry)
	addi	a4,a5,%lo(xQueueRegistry)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 1 2666 34
	lui	a5,%hi(xQueueRegistry)
	addi	a4,a5,%lo(xQueueRegistry)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,4(a5)
	.loc 1 2669 5
	j	.L270
.L269:
	.loc 1 2660 59 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L268:
	.loc 1 2660 36 discriminator 1
	lw	a4,-20(s0)
	li	a5,7
	bleu	a4,a5,.L271
	.loc 1 2676 2
	nop
.L270:
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
.LFE36:
	.size	vQueueAddToRegistry, .-vQueueAddToRegistry
	.section	.text.pcQueueGetName,"ax",@progbits
	.align	1
	.globl	pcQueueGetName
	.type	pcQueueGetName, @function
pcQueueGetName:
.LFB37:
	.loc 1 2684 2
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
	.loc 1 2686 14
	sw	zero,-24(s0)
	.loc 1 2690 11
	sw	zero,-20(s0)
	.loc 1 2690 3
	j	.L273
.L276:
	.loc 1 2692 28
	lui	a5,%hi(xQueueRegistry)
	addi	a4,a5,%lo(xQueueRegistry)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 2692 6
	lw	a4,-36(s0)
	bne	a4,a5,.L274
	.loc 1 2694 14
	lui	a5,%hi(xQueueRegistry)
	addi	a4,a5,%lo(xQueueRegistry)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 2695 5
	j	.L275
.L274:
	.loc 1 2690 59 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L273:
	.loc 1 2690 36 discriminator 1
	lw	a4,-20(s0)
	li	a5,7
	bleu	a4,a5,.L276
.L275:
	.loc 1 2703 10
	lw	a5,-24(s0)
	.loc 1 2704 2
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
	.size	pcQueueGetName, .-pcQueueGetName
	.section	.text.vQueueUnregisterQueue,"ax",@progbits
	.align	1
	.globl	vQueueUnregisterQueue
	.type	vQueueUnregisterQueue, @function
vQueueUnregisterQueue:
.LFB38:
	.loc 1 2712 2
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
	.loc 1 2717 11
	sw	zero,-20(s0)
	.loc 1 2717 3
	j	.L279
.L282:
	.loc 1 2719 28
	lui	a5,%hi(xQueueRegistry)
	addi	a4,a5,%lo(xQueueRegistry)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 2719 6
	lw	a4,-36(s0)
	bne	a4,a5,.L280
	.loc 1 2722 38
	lui	a5,%hi(xQueueRegistry)
	addi	a4,a5,%lo(xQueueRegistry)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	sw	zero,0(a5)
	.loc 1 2727 34
	lui	a5,%hi(xQueueRegistry)
	addi	a4,a5,%lo(xQueueRegistry)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	sw	zero,4(a5)
	.loc 1 2728 5
	j	.L281
.L280:
	.loc 1 2717 59 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L279:
	.loc 1 2717 36 discriminator 1
	lw	a4,-20(s0)
	li	a5,7
	bleu	a4,a5,.L282
	.loc 1 2736 2
	nop
.L281:
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
.LFE38:
	.size	vQueueUnregisterQueue, .-vQueueUnregisterQueue
	.section	.text.vQueueWaitForMessageRestricted,"ax",@progbits
	.align	1
	.globl	vQueueWaitForMessageRestricted
	.type	vQueueWaitForMessageRestricted, @function
vQueueWaitForMessageRestricted:
.LFB39:
	.loc 1 2744 2
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
	.loc 1 2745 18
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 2761 3
	call	vTaskEnterCritical
	.loc 1 2761 42 discriminator 1
	lw	a5,-20(s0)
	lbu	a5,68(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 2761 29 discriminator 1
	li	a5,-1
	bne	a4,a5,.L284
	.loc 1 2761 98 discriminator 2
	lw	a5,-20(s0)
	sb	zero,68(a5)
.L284:
	.loc 1 2761 135 discriminator 4
	lw	a5,-20(s0)
	lbu	a5,69(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 2761 122 discriminator 4
	li	a5,-1
	bne	a4,a5,.L285
	.loc 1 2761 191 discriminator 5
	lw	a5,-20(s0)
	sb	zero,69(a5)
.L285:
	.loc 1 2761 215 discriminator 7
	call	vTaskExitCritical
	.loc 1 2762 14
	lw	a5,-20(s0)
	lw	a5,56(a5)
	.loc 1 2762 5
	bne	a5,zero,.L286
	.loc 1 2765 37
	lw	a5,-20(s0)
	addi	a5,a5,36
	.loc 1 2765 4
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	vTaskPlaceOnEventListRestricted
.L286:
	.loc 1 2771 3
	lw	a0,-20(s0)
	call	prvUnlockQueue
	.loc 1 2772 2
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
.LFE39:
	.size	vQueueWaitForMessageRestricted, .-vQueueWaitForMessageRestricted
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/list.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/queue.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOSConfig.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x14b0
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x23
	.4byte	.LASF182
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x3c
	.uleb128 0x13
	.4byte	0x2b
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x24
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
	.uleb128 0x25
	.byte	0x4
	.uleb128 0x1b
	.4byte	0x89
	.uleb128 0x6
	.4byte	0x89
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	0x95
	.uleb128 0x8
	.4byte	0x9c
	.uleb128 0x8
	.4byte	0xb5
	.uleb128 0x1b
	.4byte	0xa6
	.uleb128 0x6
	.4byte	0xa6
	.uleb128 0x26
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x58
	.uleb128 0x13
	.4byte	0xb6
	.uleb128 0x6
	.4byte	0xb6
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x74
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x5f
	.uleb128 0x6
	.4byte	0xd8
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x7b
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x4
	.byte	0x3f
	.byte	0x11
	.4byte	0xcc
	.uleb128 0x6
	.4byte	0xf5
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x4
	.byte	0x40
	.byte	0x12
	.4byte	0xe9
	.uleb128 0x13
	.4byte	0x106
	.uleb128 0x6
	.4byte	0x106
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0xe9
	.uleb128 0x6
	.4byte	0x11c
	.uleb128 0x8
	.4byte	0xd8
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0xc
	.2byte	0x433
	.byte	0x8
	.4byte	0x15a
	.uleb128 0x9
	.4byte	.LASF21
	.2byte	0x438
	.byte	0xd
	.4byte	0x11c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.2byte	0x439
	.byte	0x8
	.4byte	0x15a
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	0x89
	.4byte	0x16a
	.uleb128 0xe
	.4byte	0x3c
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.4byte	.LASF23
	.2byte	0x43b
	.byte	0x27
	.4byte	0x132
	.uleb128 0x14
	.4byte	.LASF25
	.byte	0x14
	.2byte	0x43e
	.byte	0x10
	.4byte	0x1ab
	.uleb128 0x9
	.4byte	.LASF26
	.2byte	0x443
	.byte	0xe
	.4byte	0x106
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.2byte	0x444
	.byte	0x8
	.4byte	0x89
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF27
	.2byte	0x445
	.byte	0x17
	.4byte	0x16a
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.4byte	.LASF28
	.2byte	0x449
	.byte	0x3
	.4byte	0x176
	.uleb128 0x27
	.byte	0x4
	.byte	0x5
	.2byte	0x49c
	.byte	0x2
	.4byte	0x1da
	.uleb128 0x1c
	.4byte	.LASF29
	.2byte	0x49e
	.byte	0x9
	.4byte	0x89
	.uleb128 0x1c
	.4byte	.LASF26
	.2byte	0x49f
	.byte	0xf
	.4byte	0x106
	.byte	0
	.uleb128 0x14
	.4byte	.LASF30
	.byte	0x50
	.2byte	0x498
	.byte	0x10
	.4byte	0x24f
	.uleb128 0x9
	.4byte	.LASF31
	.2byte	0x49a
	.byte	0x8
	.4byte	0x24f
	.byte	0
	.uleb128 0x28
	.string	"u"
	.byte	0x5
	.2byte	0x4a0
	.byte	0x4
	.4byte	0x1b7
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF32
	.2byte	0x4a2
	.byte	0xf
	.4byte	0x25f
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF33
	.2byte	0x4a3
	.byte	0xe
	.4byte	0x26f
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF34
	.2byte	0x4a4
	.byte	0xa
	.4byte	0x27f
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF35
	.2byte	0x4a7
	.byte	0xb
	.4byte	0xd8
	.byte	0x46
	.uleb128 0x9
	.4byte	.LASF36
	.2byte	0x4af
	.byte	0xf
	.4byte	0x106
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF37
	.2byte	0x4b0
	.byte	0xb
	.4byte	0xd8
	.byte	0x4c
	.byte	0
	.uleb128 0xd
	.4byte	0x89
	.4byte	0x25f
	.uleb128 0xe
	.4byte	0x3c
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	0x1ab
	.4byte	0x26f
	.uleb128 0xe
	.4byte	0x3c
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	0x106
	.4byte	0x27f
	.uleb128 0xe
	.4byte	0x3c
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	0xd8
	.4byte	0x28f
	.uleb128 0xe
	.4byte	0x3c
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.4byte	.LASF38
	.2byte	0x4b3
	.byte	0x3
	.4byte	0x1da
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x14
	.byte	0x6
	.byte	0x8c
	.byte	0x8
	.4byte	0x2ea
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x6
	.byte	0x8f
	.byte	0xd
	.4byte	0x11c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x6
	.byte	0x90
	.byte	0x16
	.4byte	0x2ea
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x6
	.byte	0x91
	.byte	0x16
	.4byte	0x2ea
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x6
	.byte	0x92
	.byte	0x9
	.4byte	0x89
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x6
	.byte	0x93
	.byte	0x11
	.4byte	0x324
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x29b
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x14
	.byte	0x6
	.byte	0xa4
	.byte	0x10
	.4byte	0x324
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x6
	.byte	0xa7
	.byte	0x17
	.4byte	0x112
	.byte	0
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x6
	.byte	0xa8
	.byte	0xf
	.4byte	0x376
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x6
	.byte	0xa9
	.byte	0x11
	.4byte	0x36a
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x2ef
	.uleb128 0x5
	.4byte	.LASF49
	.byte	0x6
	.byte	0x96
	.byte	0x1b
	.4byte	0x29b
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0xc
	.byte	0x6
	.byte	0x98
	.byte	0x8
	.4byte	0x36a
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x6
	.byte	0x9b
	.byte	0xd
	.4byte	0x11c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x6
	.byte	0x9c
	.byte	0x16
	.4byte	0x2ea
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x6
	.byte	0x9d
	.byte	0x16
	.4byte	0x2ea
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF51
	.byte	0x6
	.byte	0x9f
	.byte	0x20
	.4byte	0x335
	.uleb128 0x8
	.4byte	0x329
	.uleb128 0x5
	.4byte	.LASF52
	.byte	0x6
	.byte	0xab
	.byte	0x3
	.4byte	0x2ef
	.uleb128 0x6
	.4byte	0x37b
	.uleb128 0x5
	.4byte	.LASF53
	.byte	0x7
	.byte	0x46
	.byte	0x25
	.4byte	0x39d
	.uleb128 0x6
	.4byte	0x38c
	.uleb128 0x8
	.4byte	0x3a2
	.uleb128 0x29
	.4byte	.LASF183
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x8
	.byte	0x7
	.byte	0x66
	.byte	0x10
	.4byte	0x3cf
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x7
	.byte	0x68
	.byte	0xd
	.4byte	0xf5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x7
	.byte	0x69
	.byte	0xd
	.4byte	0x11c
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF57
	.byte	0x7
	.byte	0x6a
	.byte	0x3
	.4byte	0x3a7
	.uleb128 0x5
	.4byte	.LASF58
	.byte	0x8
	.byte	0x30
	.byte	0x22
	.4byte	0x3ec
	.uleb128 0x6
	.4byte	0x3db
	.uleb128 0x8
	.4byte	0x3f1
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x50
	.byte	0x1
	.byte	0x61
	.byte	0x10
	.4byte	0x4a6
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x1
	.byte	0x63
	.byte	0xa
	.4byte	0x4ce
	.byte	0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x1
	.byte	0x64
	.byte	0xa
	.4byte	0x4ce
	.byte	0x4
	.uleb128 0x2a
	.string	"u"
	.byte	0x1
	.byte	0x6a
	.byte	0x4
	.4byte	0x513
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x1
	.byte	0x6c
	.byte	0x9
	.4byte	0x37b
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x1
	.byte	0x6d
	.byte	0x9
	.4byte	0x37b
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x1
	.byte	0x6f
	.byte	0x17
	.4byte	0x112
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x1
	.byte	0x70
	.byte	0xe
	.4byte	0x106
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x1
	.byte	0x71
	.byte	0xe
	.4byte	0x106
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x1
	.byte	0x73
	.byte	0x12
	.4byte	0xc2
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x1
	.byte	0x74
	.byte	0x12
	.4byte	0xc2
	.byte	0x45
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x1
	.byte	0x77
	.byte	0xb
	.4byte	0xd8
	.byte	0x46
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x1
	.byte	0x7f
	.byte	0xf
	.4byte	0x106
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x1
	.byte	0x80
	.byte	0xb
	.4byte	0xd8
	.byte	0x4c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x8
	.byte	0x1
	.byte	0x43
	.byte	0x10
	.4byte	0x4ce
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x1
	.byte	0x45
	.byte	0xa
	.4byte	0x4ce
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x1
	.byte	0x46
	.byte	0xa
	.4byte	0x4ce
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	0xb6
	.uleb128 0x5
	.4byte	.LASF75
	.byte	0x1
	.byte	0x47
	.byte	0x3
	.4byte	0x4a6
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x8
	.byte	0x1
	.byte	0x49
	.byte	0x10
	.4byte	0x507
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x1
	.byte	0x4b
	.byte	0xf
	.4byte	0x38c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x1
	.byte	0x4c
	.byte	0xe
	.4byte	0x106
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF79
	.byte	0x1
	.byte	0x4d
	.byte	0x3
	.4byte	0x4df
	.uleb128 0x2b
	.byte	0x8
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.4byte	0x531
	.uleb128 0x1d
	.4byte	.LASF80
	.byte	0x68
	.4byte	0x4d3
	.uleb128 0x1d
	.4byte	.LASF81
	.byte	0x69
	.4byte	0x507
	.byte	0
	.uleb128 0x5
	.4byte	.LASF82
	.byte	0x1
	.byte	0x83
	.byte	0x3
	.4byte	0x3f1
	.uleb128 0x5
	.4byte	.LASF83
	.byte	0x1
	.byte	0x87
	.byte	0x10
	.4byte	0x531
	.uleb128 0x6
	.4byte	0x53d
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x8
	.byte	0x1
	.byte	0x94
	.byte	0x11
	.4byte	0x576
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x1
	.byte	0x96
	.byte	0xf
	.4byte	0xa1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x1
	.byte	0x97
	.byte	0x11
	.4byte	0x3db
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF87
	.byte	0x1
	.byte	0x98
	.byte	0x4
	.4byte	0x54e
	.uleb128 0x5
	.4byte	.LASF88
	.byte	0x1
	.byte	0x9d
	.byte	0x1d
	.4byte	0x576
	.uleb128 0xd
	.4byte	0x582
	.4byte	0x59e
	.uleb128 0xe
	.4byte	0x3c
	.byte	0x7
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF184
	.byte	0x1
	.byte	0xa2
	.byte	0x16
	.4byte	0x58e
	.uleb128 0x5
	.byte	0x3
	.4byte	xQueueRegistry
	.uleb128 0xf
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x957
	.4byte	0x5cc
	.uleb128 0x7
	.4byte	0x5d1
	.uleb128 0x7
	.4byte	0x11c
	.uleb128 0x7
	.4byte	0x101
	.byte	0
	.uleb128 0x8
	.4byte	0x37b
	.uleb128 0x6
	.4byte	0x5cc
	.uleb128 0x1e
	.4byte	.LASF99
	.2byte	0x98d
	.uleb128 0x1f
	.4byte	.LASF89
	.byte	0x9
	.byte	0x1f
	.byte	0x8
	.4byte	0x89
	.4byte	0x5fd
	.uleb128 0x7
	.4byte	0x8b
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x7
	.4byte	0x2b
	.byte	0
	.uleb128 0x10
	.4byte	.LASF90
	.2byte	0x99f
	.4byte	0xf5
	.4byte	0x612
	.uleb128 0x7
	.4byte	0x398
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF92
	.byte	0xa
	.byte	0xa4
	.byte	0x6
	.4byte	0x624
	.uleb128 0x7
	.4byte	0x89
	.byte	0
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x9a9
	.4byte	0x63b
	.uleb128 0x7
	.4byte	0x398
	.uleb128 0x7
	.4byte	0x106
	.byte	0
	.uleb128 0x10
	.4byte	.LASF94
	.2byte	0x999
	.4byte	0xf5
	.4byte	0x650
	.uleb128 0x7
	.4byte	0x398
	.byte	0
	.uleb128 0x11
	.4byte	.LASF95
	.2byte	0x9e2
	.byte	0xe
	.4byte	0x38c
	.uleb128 0x11
	.4byte	.LASF96
	.2byte	0x53d
	.byte	0xc
	.4byte	0xf5
	.uleb128 0xf
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x949
	.4byte	0x67f
	.uleb128 0x7
	.4byte	0x5d1
	.uleb128 0x7
	.4byte	0x128
	.byte	0
	.uleb128 0x10
	.4byte	.LASF98
	.2byte	0x913
	.4byte	0xf5
	.4byte	0x699
	.uleb128 0x7
	.4byte	0x69e
	.uleb128 0x7
	.4byte	0x6a8
	.byte	0
	.uleb128 0x8
	.4byte	0x3cf
	.uleb128 0x6
	.4byte	0x699
	.uleb128 0x8
	.4byte	0x11c
	.uleb128 0x6
	.4byte	0x6a3
	.uleb128 0x1e
	.4byte	.LASF100
	.2byte	0x507
	.uleb128 0xf
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x9e8
	.4byte	0x6c6
	.uleb128 0x7
	.4byte	0x69e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF102
	.2byte	0x993
	.byte	0xc
	.4byte	0xf5
	.uleb128 0x11
	.4byte	.LASF103
	.2byte	0x987
	.byte	0xe
	.4byte	0x38c
	.uleb128 0x1f
	.4byte	.LASF104
	.byte	0xa
	.byte	0xa3
	.byte	0x7
	.4byte	0x89
	.4byte	0x6f4
	.uleb128 0x7
	.4byte	0x2b
	.byte	0
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x4
	.byte	0x67
	.byte	0xd
	.uleb128 0xf
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x159
	.4byte	0x70e
	.uleb128 0x7
	.4byte	0x5d1
	.byte	0
	.uleb128 0x10
	.4byte	.LASF107
	.2byte	0x971
	.4byte	0xf5
	.4byte	0x723
	.uleb128 0x7
	.4byte	0x728
	.byte	0
	.uleb128 0x8
	.4byte	0x387
	.uleb128 0x6
	.4byte	0x723
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x4
	.byte	0x66
	.byte	0xd
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0xb
	.byte	0x97
	.byte	0x6
	.uleb128 0x20
	.4byte	.LASF112
	.2byte	0xab7
	.byte	0x7
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x790
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0xab7
	.byte	0x35
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF110
	.2byte	0xab7
	.byte	0x48
	.4byte	0x11c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF111
	.2byte	0xab7
	.byte	0x67
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0xab9
	.byte	0x12
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	0x53d
	.uleb128 0x6
	.4byte	0x790
	.uleb128 0x17
	.4byte	.LASF113
	.2byte	0xa97
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7cc
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0xa97
	.byte	0x2c
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"ux"
	.2byte	0xa99
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF117
	.2byte	0xa7b
	.byte	0xe
	.4byte	0xa1
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x812
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0xa7b
	.byte	0x2c
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"ux"
	.2byte	0xa7d
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF115
	.2byte	0xa7e
	.byte	0xe
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF116
	.2byte	0xa5e
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x853
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0xa5e
	.byte	0x2a
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0xa5e
	.byte	0x3e
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"ux"
	.2byte	0xa60
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF118
	.2byte	0x936
	.byte	0xc
	.4byte	0xf5
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89b
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x936
	.byte	0x3a
	.4byte	0x3e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF119
	.2byte	0x938
	.byte	0xc
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x939
	.byte	0x11
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF121
	.2byte	0x921
	.4byte	0xf5
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d3
	.uleb128 0x2
	.4byte	.LASF114
	.2byte	0x921
	.byte	0x32
	.4byte	0x8d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF119
	.2byte	0x923
	.byte	0xc
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	0x549
	.uleb128 0x6
	.4byte	0x8d3
	.uleb128 0x4
	.4byte	.LASF120
	.2byte	0x90e
	.byte	0xc
	.4byte	0xf5
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x925
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x90e
	.byte	0x3b
	.4byte	0x3e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF119
	.2byte	0x910
	.byte	0xc
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x911
	.byte	0x11
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF122
	.2byte	0x8f9
	.4byte	0xf5
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x95d
	.uleb128 0x2
	.4byte	.LASF114
	.2byte	0x8f9
	.byte	0x33
	.4byte	0x8d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF119
	.2byte	0x8fb
	.byte	0xc
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF123
	.2byte	0x881
	.byte	0xd
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b9
	.uleb128 0x2
	.4byte	.LASF114
	.2byte	0x881
	.byte	0x2d
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x99f
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x88b
	.byte	0xa
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xb
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x1
	.4byte	.LASF67
	.2byte	0x8dc
	.byte	0xa
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF124
	.2byte	0x86f
	.byte	0xd
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ee
	.uleb128 0x2
	.4byte	.LASF114
	.2byte	0x86f
	.byte	0x33
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF125
	.2byte	0x86f
	.byte	0x49
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF126
	.2byte	0x820
	.4byte	0xf5
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa53
	.uleb128 0x2
	.4byte	.LASF114
	.2byte	0x820
	.byte	0x37
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF127
	.2byte	0x820
	.byte	0x4c
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF128
	.2byte	0x820
	.byte	0x6c
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF119
	.2byte	0x822
	.byte	0xc
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF64
	.2byte	0x823
	.byte	0xd
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x807
	.byte	0x15
	.4byte	0x106
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8d
	.uleb128 0x2
	.4byte	.LASF114
	.2byte	0x807
	.byte	0x51
	.4byte	0x8d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF130
	.2byte	0x809
	.byte	0xe
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF131
	.2byte	0x7fd
	.byte	0xa
	.4byte	0xd8
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab7
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x7fd
	.byte	0x2d
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF132
	.2byte	0x7f3
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaeb
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x7f3
	.byte	0x2b
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF70
	.2byte	0x7f3
	.byte	0x3f
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.4byte	.LASF133
	.2byte	0x7e9
	.byte	0xe
	.4byte	0x106
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb15
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x7e9
	.byte	0x33
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF134
	.2byte	0x7bd
	.byte	0x6
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb4a
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x7bd
	.byte	0x22
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x7bf
	.byte	0x11
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF135
	.2byte	0x7b1
	.byte	0xd
	.4byte	0x106
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb92
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x7b1
	.byte	0x40
	.4byte	0x3e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF136
	.2byte	0x7b3
	.byte	0xd
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x7b4
	.byte	0x11
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF137
	.2byte	0x7a0
	.byte	0xd
	.4byte	0x106
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbda
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x7a0
	.byte	0x39
	.4byte	0x3e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF136
	.2byte	0x7a2
	.byte	0xd
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x7a3
	.byte	0x11
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF138
	.2byte	0x790
	.byte	0xd
	.4byte	0x106
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc13
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x790
	.byte	0x39
	.4byte	0x3e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF136
	.2byte	0x792
	.byte	0xd
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF139
	.2byte	0x75a
	.byte	0xc
	.4byte	0xf5
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc88
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x75a
	.byte	0x2d
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF125
	.2byte	0x75a
	.byte	0x42
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF119
	.2byte	0x75c
	.byte	0xc
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF140
	.2byte	0x75d
	.byte	0xd
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF141
	.2byte	0x75e
	.byte	0x9
	.4byte	0x4ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x75f
	.byte	0x11
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF142
	.2byte	0x6ff
	.byte	0xc
	.4byte	0xf5
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd2f
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x6ff
	.byte	0x30
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF125
	.2byte	0x6ff
	.byte	0x45
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF143
	.2byte	0x6ff
	.byte	0x62
	.4byte	0xd34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF119
	.2byte	0x701
	.byte	0xc
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF140
	.2byte	0x702
	.byte	0xd
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x703
	.byte	0x11
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x1
	.4byte	.LASF64
	.2byte	0x71a
	.byte	0x15
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x1
	.4byte	.LASF67
	.2byte	0x71f
	.byte	0x11
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xf5
	.uleb128 0x6
	.4byte	0xd2f
	.uleb128 0x4
	.4byte	.LASF144
	.2byte	0x66a
	.byte	0xc
	.4byte	0xf5
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd6
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x66a
	.byte	0x26
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF125
	.2byte	0x66a
	.byte	0x3b
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF110
	.2byte	0x66a
	.byte	0x50
	.4byte	0x11c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF145
	.2byte	0x66c
	.byte	0xc
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF146
	.2byte	0x66d
	.byte	0xb
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF141
	.2byte	0x66e
	.byte	0x9
	.4byte	0x4ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x66f
	.byte	0x11
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1
	.4byte	.LASF64
	.2byte	0x687
	.byte	0x16
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF147
	.2byte	0x590
	.byte	0xc
	.4byte	0xf5
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe81
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x590
	.byte	0x2f
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF110
	.2byte	0x590
	.byte	0x42
	.4byte	0x11c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF145
	.2byte	0x592
	.byte	0xc
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF146
	.2byte	0x593
	.byte	0xb
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x594
	.byte	0x11
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF148
	.2byte	0x597
	.byte	0xd
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0xe67
	.uleb128 0x1
	.4byte	.LASF149
	.2byte	0x5b2
	.byte	0x16
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x64f
	.byte	0x14
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF151
	.2byte	0x503
	.byte	0xc
	.4byte	0xf5
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf0f
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x503
	.byte	0x29
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF125
	.2byte	0x503
	.byte	0x3e
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF110
	.2byte	0x503
	.byte	0x53
	.4byte	0x11c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF145
	.2byte	0x505
	.byte	0xc
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF146
	.2byte	0x506
	.byte	0xb
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x507
	.byte	0x11
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x1
	.4byte	.LASF64
	.2byte	0x51f
	.byte	0x16
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF152
	.2byte	0x45e
	.byte	0xc
	.4byte	0xf5
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa7
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x45e
	.byte	0x2d
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF143
	.2byte	0x45e
	.byte	0x48
	.4byte	0xd34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF119
	.2byte	0x460
	.byte	0xc
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF140
	.2byte	0x461
	.byte	0xd
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x462
	.byte	0x11
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1
	.4byte	.LASF64
	.2byte	0x487
	.byte	0x15
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x48e
	.byte	0x11
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF153
	.2byte	0x3bc
	.byte	0xc
	.4byte	0xf5
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1053
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x3bc
	.byte	0x34
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF127
	.2byte	0x3bc
	.byte	0x4f
	.4byte	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF143
	.2byte	0x3bc
	.byte	0x71
	.4byte	0xd34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF154
	.2byte	0x3bc
	.byte	0x9d
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF119
	.2byte	0x3be
	.byte	0xc
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF140
	.2byte	0x3bf
	.byte	0xd
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x3c0
	.byte	0x11
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x3df
	.byte	0x11
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x1
	.4byte	.LASF155
	.2byte	0x3e0
	.byte	0x16
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF156
	.2byte	0x2ea
	.byte	0xc
	.4byte	0xf5
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10e6
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x2ea
	.byte	0x2d
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF127
	.2byte	0x2ea
	.byte	0x48
	.4byte	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF110
	.2byte	0x2ea
	.byte	0x62
	.4byte	0x11c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF154
	.2byte	0x2ea
	.byte	0x81
	.4byte	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF145
	.2byte	0x2ec
	.byte	0xc
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF157
	.2byte	0x2ec
	.byte	0x32
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF146
	.2byte	0x2ed
	.byte	0xb
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x2ee
	.byte	0x11
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF158
	.2byte	0x2d0
	.byte	0x10
	.4byte	0x3db
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x112e
	.uleb128 0x2
	.4byte	.LASF159
	.2byte	0x2d0
	.byte	0x41
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF160
	.2byte	0x2d0
	.byte	0x5f
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF86
	.2byte	0x2d2
	.byte	0x10
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF161
	.2byte	0x2b4
	.byte	0x10
	.4byte	0x3db
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1185
	.uleb128 0x2
	.4byte	.LASF159
	.2byte	0x2b4
	.byte	0x47
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF160
	.2byte	0x2b4
	.byte	0x65
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF162
	.2byte	0x2b4
	.byte	0x84
	.4byte	0x1185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF86
	.2byte	0x2b6
	.byte	0x10
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	0x28f
	.uleb128 0x4
	.4byte	.LASF163
	.2byte	0x28a
	.byte	0xd
	.4byte	0xf5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11e1
	.uleb128 0x2
	.4byte	.LASF164
	.2byte	0x28a
	.byte	0x35
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF110
	.2byte	0x28a
	.byte	0x48
	.4byte	0x11c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF119
	.2byte	0x28c
	.byte	0xd
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF165
	.2byte	0x28d
	.byte	0x12
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF166
	.2byte	0x253
	.byte	0xd
	.4byte	0xf5
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1229
	.uleb128 0x2
	.4byte	.LASF164
	.2byte	0x253
	.byte	0x35
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF119
	.2byte	0x255
	.byte	0xd
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF165
	.2byte	0x256
	.byte	0x12
	.4byte	0x795
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF167
	.2byte	0x206
	.byte	0x10
	.4byte	0x3db
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x128f
	.uleb128 0x2
	.4byte	.LASF71
	.2byte	0x206
	.byte	0x37
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF162
	.2byte	0x206
	.byte	0x53
	.4byte	0x1185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF168
	.2byte	0x208
	.byte	0x10
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF169
	.2byte	0x209
	.byte	0x14
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF170
	.2byte	0x209
	.byte	0x37
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF171
	.2byte	0x1f6
	.byte	0x10
	.4byte	0x3db
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12e6
	.uleb128 0x2
	.4byte	.LASF71
	.2byte	0x1f6
	.byte	0x31
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF168
	.2byte	0x1f8
	.byte	0x10
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF169
	.2byte	0x1f9
	.byte	0x14
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF170
	.2byte	0x1f9
	.byte	0x37
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF172
	.2byte	0x1d8
	.byte	0xe
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x130c
	.uleb128 0x2
	.4byte	.LASF173
	.2byte	0x1d8
	.byte	0x2b
	.4byte	0x790
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF174
	.2byte	0x1ac
	.byte	0xd
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x136e
	.uleb128 0x2
	.4byte	.LASF175
	.2byte	0x1ac
	.byte	0x36
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF66
	.2byte	0x1ac
	.byte	0x57
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF176
	.2byte	0x1ac
	.byte	0x6c
	.4byte	0x12d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF71
	.2byte	0x1ac
	.byte	0x8b
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x2
	.4byte	.LASF173
	.2byte	0x1ac
	.byte	0xa1
	.4byte	0x790
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x4
	.4byte	.LASF177
	.2byte	0x170
	.byte	0x10
	.4byte	0x3db
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13e3
	.uleb128 0x2
	.4byte	.LASF175
	.2byte	0x170
	.byte	0x37
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF66
	.2byte	0x170
	.byte	0x58
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF71
	.2byte	0x170
	.byte	0x72
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1
	.4byte	.LASF173
	.2byte	0x172
	.byte	0xb
	.4byte	0x790
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF178
	.2byte	0x173
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x174
	.byte	0xb
	.4byte	0x12d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF179
	.2byte	0x136
	.byte	0x10
	.4byte	0x3db
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1471
	.uleb128 0x2
	.4byte	.LASF175
	.2byte	0x136
	.byte	0x3d
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF66
	.2byte	0x136
	.byte	0x5e
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF176
	.2byte	0x136
	.byte	0x73
	.4byte	0x12d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF162
	.2byte	0x136
	.byte	0x93
	.4byte	0x1185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF71
	.2byte	0x136
	.byte	0xb0
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x1
	.4byte	.LASF173
	.2byte	0x138
	.byte	0xb
	.4byte	0x790
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1
	.4byte	.LASF180
	.2byte	0x14a
	.byte	0x14
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF181
	.byte	0x1
	.byte	0xff
	.byte	0xc
	.4byte	0xf5
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF80
	.byte	0xff
	.byte	0x2e
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.4byte	.LASF168
	.byte	0xff
	.byte	0x41
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x101
	.byte	0x11
	.4byte	0x795
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x10
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
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x13
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.sleb128 7
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
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x1a
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
	.sleb128 19
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.sleb128 19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x17
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
	.uleb128 0x28
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
	.uleb128 0x2b
	.uleb128 0x17
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
	.uleb128 0x2c
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.4byte	0x144
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
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
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0x7
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF46:
	.string	"uxNumberOfItems"
.LASF76:
	.string	"SemaphoreData"
.LASF183:
	.string	"tskTaskControlBlock"
.LASF79:
	.string	"SemaphoreData_t"
.LASF93:
	.string	"vTaskPriorityDisinheritAfterTimeout"
.LASF102:
	.string	"xTaskGetSchedulerState"
.LASF63:
	.string	"xTasksWaitingToReceive"
.LASF143:
	.string	"pxHigherPriorityTaskWoken"
.LASF165:
	.string	"pxMutex"
.LASF2:
	.string	"unsigned int"
.LASF47:
	.string	"pxIndex"
.LASF54:
	.string	"xTIME_OUT"
.LASF163:
	.string	"xQueueTakeMutexRecursive"
.LASF134:
	.string	"vQueueDelete"
.LASF39:
	.string	"xLIST_ITEM"
.LASF84:
	.string	"QUEUE_REGISTRY_ITEM"
.LASF153:
	.string	"xQueueGenericSendFromISR"
.LASF23:
	.string	"StaticMiniListItem_t"
.LASF132:
	.string	"vQueueSetQueueNumber"
.LASF111:
	.string	"xWaitIndefinitely"
.LASF62:
	.string	"xTasksWaitingToSend"
.LASF137:
	.string	"uxQueueSpacesAvailable"
.LASF68:
	.string	"cTxLock"
.LASF55:
	.string	"xOverflowCount"
.LASF78:
	.string	"uxRecursiveCallCount"
.LASF83:
	.string	"Queue_t"
.LASF169:
	.string	"uxMutexLength"
.LASF154:
	.string	"xCopyPosition"
.LASF136:
	.string	"uxReturn"
.LASF88:
	.string	"QueueRegistryItem_t"
.LASF74:
	.string	"pcReadFrom"
.LASF113:
	.string	"vQueueUnregisterQueue"
.LASF140:
	.string	"uxSavedInterruptStatus"
.LASF174:
	.string	"prvInitialiseNewQueue"
.LASF17:
	.string	"uint32_t"
.LASF14:
	.string	"int8_t"
.LASF170:
	.string	"uxMutexSize"
.LASF157:
	.string	"xYieldRequired"
.LASF80:
	.string	"xQueue"
.LASF173:
	.string	"pxNewQueue"
.LASF151:
	.string	"xQueueReceive"
.LASF59:
	.string	"QueueDefinition"
.LASF11:
	.string	"long long unsigned int"
.LASF122:
	.string	"prvIsQueueEmpty"
.LASF125:
	.string	"pvBuffer"
.LASF129:
	.string	"prvGetDisinheritPriorityAfterTimeout"
.LASF42:
	.string	"pxPrevious"
.LASF64:
	.string	"uxMessagesWaiting"
.LASF81:
	.string	"xSemaphore"
.LASF104:
	.string	"pvPortMalloc"
.LASF100:
	.string	"vTaskSuspendAll"
.LASF144:
	.string	"xQueuePeek"
.LASF105:
	.string	"vTaskExitCritical"
.LASF142:
	.string	"xQueueReceiveFromISR"
.LASF145:
	.string	"xEntryTimeSet"
.LASF13:
	.string	"size_t"
.LASF146:
	.string	"xTimeOut"
.LASF86:
	.string	"xHandle"
.LASF85:
	.string	"pcQueueName"
.LASF160:
	.string	"uxInitialCount"
.LASF50:
	.string	"xMINI_LIST_ITEM"
.LASF45:
	.string	"xLIST"
.LASF147:
	.string	"xQueueSemaphoreTake"
.LASF31:
	.string	"pvDummy1"
.LASF29:
	.string	"pvDummy2"
.LASF22:
	.string	"pvDummy3"
.LASF26:
	.string	"uxDummy2"
.LASF33:
	.string	"uxDummy4"
.LASF126:
	.string	"prvCopyDataToQueue"
.LASF36:
	.string	"uxDummy8"
.LASF156:
	.string	"xQueueGenericSend"
.LASF69:
	.string	"ucStaticallyAllocated"
.LASF97:
	.string	"vTaskPlaceOnEventList"
.LASF95:
	.string	"pvTaskIncrementMutexHeldCount"
.LASF66:
	.string	"uxItemSize"
.LASF176:
	.string	"pucQueueStorage"
.LASF155:
	.string	"uxPreviousMessagesWaiting"
.LASF90:
	.string	"xTaskPriorityDisinherit"
.LASF107:
	.string	"xTaskRemoveFromEventList"
.LASF12:
	.string	"char"
.LASF49:
	.string	"ListItem_t"
.LASF121:
	.string	"prvIsQueueFull"
.LASF72:
	.string	"QueuePointers"
.LASF19:
	.string	"UBaseType_t"
.LASF152:
	.string	"xQueueGiveFromISR"
.LASF184:
	.string	"xQueueRegistry"
.LASF58:
	.string	"QueueHandle_t"
.LASF48:
	.string	"xListEnd"
.LASF135:
	.string	"uxQueueMessagesWaitingFromISR"
.LASF51:
	.string	"MiniListItem_t"
.LASF91:
	.string	"vTaskPlaceOnEventListRestricted"
.LASF16:
	.string	"uint8_t"
.LASF87:
	.string	"xQueueRegistryItem"
.LASF167:
	.string	"xQueueCreateMutexStatic"
.LASF177:
	.string	"xQueueGenericCreate"
.LASF180:
	.string	"xSize"
.LASF171:
	.string	"xQueueCreateMutex"
.LASF25:
	.string	"xSTATIC_LIST"
.LASF3:
	.string	"long long int"
.LASF109:
	.string	"vAssertCalled"
.LASF172:
	.string	"prvInitialiseMutex"
.LASF18:
	.string	"BaseType_t"
.LASF162:
	.string	"pxStaticQueue"
.LASF164:
	.string	"xMutex"
.LASF56:
	.string	"xTimeOnEntering"
.LASF116:
	.string	"vQueueAddToRegistry"
.LASF131:
	.string	"ucQueueGetQueueType"
.LASF41:
	.string	"pxNext"
.LASF38:
	.string	"StaticQueue_t"
.LASF159:
	.string	"uxMaxCount"
.LASF57:
	.string	"TimeOut_t"
.LASF101:
	.string	"vTaskInternalSetTimeOutState"
.LASF141:
	.string	"pcOriginalReadPosition"
.LASF53:
	.string	"TaskHandle_t"
.LASF161:
	.string	"xQueueCreateCountingSemaphoreStatic"
.LASF130:
	.string	"uxHighestPriorityOfWaitingTasks"
.LASF71:
	.string	"ucQueueType"
.LASF52:
	.string	"List_t"
.LASF149:
	.string	"uxSemaphoreCount"
.LASF61:
	.string	"pcWriteTo"
.LASF20:
	.string	"TickType_t"
.LASF133:
	.string	"uxQueueGetQueueNumber"
.LASF175:
	.string	"uxQueueLength"
.LASF4:
	.string	"long double"
.LASF148:
	.string	"xInheritanceOccurred"
.LASF34:
	.string	"ucDummy5"
.LASF35:
	.string	"ucDummy6"
.LASF37:
	.string	"ucDummy9"
.LASF44:
	.string	"pvContainer"
.LASF117:
	.string	"pcQueueGetName"
.LASF75:
	.string	"QueuePointers_t"
.LASF115:
	.string	"pcReturn"
.LASF65:
	.string	"uxLength"
.LASF112:
	.string	"vQueueWaitForMessageRestricted"
.LASF70:
	.string	"uxQueueNumber"
.LASF7:
	.string	"short int"
.LASF40:
	.string	"xItemValue"
.LASF9:
	.string	"long int"
.LASF178:
	.string	"xQueueSizeInBytes"
.LASF96:
	.string	"xTaskResumeAll"
.LASF127:
	.string	"pvItemToQueue"
.LASF98:
	.string	"xTaskCheckForTimeOut"
.LASF92:
	.string	"vPortFree"
.LASF118:
	.string	"xQueueIsQueueFullFromISR"
.LASF138:
	.string	"uxQueueMessagesWaiting"
.LASF73:
	.string	"pcTail"
.LASF179:
	.string	"xQueueGenericCreateStatic"
.LASF114:
	.string	"pxQueue"
.LASF168:
	.string	"xNewQueue"
.LASF119:
	.string	"xReturn"
.LASF99:
	.string	"vTaskMissedYield"
.LASF10:
	.string	"long unsigned int"
.LASF94:
	.string	"xTaskPriorityInherit"
.LASF15:
	.string	"int32_t"
.LASF139:
	.string	"xQueuePeekFromISR"
.LASF150:
	.string	"uxHighestWaitingPriority"
.LASF6:
	.string	"unsigned char"
.LASF106:
	.string	"vListInitialise"
.LASF124:
	.string	"prvCopyDataFromQueue"
.LASF110:
	.string	"xTicksToWait"
.LASF43:
	.string	"pvOwner"
.LASF21:
	.string	"xDummy2"
.LASF32:
	.string	"xDummy3"
.LASF27:
	.string	"xDummy4"
.LASF103:
	.string	"xTaskGetCurrentTaskHandle"
.LASF108:
	.string	"vTaskEnterCritical"
.LASF60:
	.string	"pcHead"
.LASF166:
	.string	"xQueueGiveMutexRecursive"
.LASF24:
	.string	"xSTATIC_MINI_LIST_ITEM"
.LASF123:
	.string	"prvUnlockQueue"
.LASF181:
	.string	"xQueueGenericReset"
.LASF120:
	.string	"xQueueIsQueueEmptyFromISR"
.LASF5:
	.string	"signed char"
.LASF8:
	.string	"short unsigned int"
.LASF89:
	.string	"memcpy"
.LASF82:
	.string	"xQUEUE"
.LASF77:
	.string	"xMutexHolder"
.LASF128:
	.string	"xPosition"
.LASF67:
	.string	"cRxLock"
.LASF182:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF30:
	.string	"xSTATIC_QUEUE"
.LASF28:
	.string	"StaticList_t"
.LASF158:
	.string	"xQueueCreateCountingSemaphore"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/queue.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
