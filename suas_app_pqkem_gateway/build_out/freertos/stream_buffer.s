	.file	"stream_buffer.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos" "/home/chandu/sdk/bl602_iot_sdk/components/freertos/stream_buffer.c"
	.section	.text.xStreamBufferGenericCreate,"ax",@progbits
	.align	1
	.globl	xStreamBufferGenericCreate
	.type	xStreamBufferGenericCreate, @function
xStreamBufferGenericCreate:
.LFB2:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/stream_buffer.c"
	.loc 1 220 2
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
	.loc 1 228 5
	lw	a4,-44(s0)
	li	a5,1
	bne	a4,a5,.L2
	.loc 1 231 12
	li	a5,1
	sb	a5,-21(s0)
	.loc 1 232 6
	lw	a4,-36(s0)
	li	a5,4
	bgtu	a4,a5,.L3
	.loc 1 232 59 discriminator 1
	call	vAssertCalled
	j	.L3
.L2:
	.loc 1 237 12
	sb	zero,-21(s0)
	.loc 1 238 6
	lw	a5,-36(s0)
	bne	a5,zero,.L3
	.loc 1 238 40 discriminator 1
	call	vAssertCalled
.L3:
	.loc 1 240 5
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	bleu	a4,a5,.L4
	.loc 1 240 57 discriminator 1
	call	vAssertCalled
.L4:
	.loc 1 244 5
	lw	a5,-40(s0)
	bne	a5,zero,.L5
	.loc 1 246 23
	li	a5,1
	sw	a5,-40(s0)
.L5:
	.loc 1 257 11
	lw	a4,-36(s0)
	li	a5,-38
	bgtu	a4,a5,.L6
	.loc 1 259 29
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
	.loc 1 260 48
	lw	a5,-36(s0)
	addi	a5,a5,36
	mv	a0,a5
	call	pvPortMalloc
	sw	a0,-20(s0)
	j	.L7
.L6:
	.loc 1 264 32
	sw	zero,-20(s0)
.L7:
	.loc 1 267 5
	lw	a5,-20(s0)
	beq	a5,zero,.L8
	.loc 1 270 33
	lw	a5,-20(s0)
	addi	a5,a5,36
	.loc 1 269 4
	lbu	a4,-21(s0)
	lw	a3,-40(s0)
	lw	a2,-36(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	prvInitialiseNewStreamBuffer
.L8:
	.loc 1 282 10
	lw	a5,-20(s0)
	.loc 1 283 2
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
	.size	xStreamBufferGenericCreate, .-xStreamBufferGenericCreate
	.section	.text.xStreamBufferGenericCreateStatic,"ax",@progbits
	.align	1
	.globl	xStreamBufferGenericCreateStatic
	.type	xStreamBufferGenericCreateStatic, @function
xStreamBufferGenericCreateStatic:
.LFB3:
	.loc 1 295 2
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
	.loc 1 296 25
	lw	a5,-52(s0)
	sw	a5,-28(s0)
	.loc 1 300 5
	lw	a5,-48(s0)
	bne	a5,zero,.L11
	.loc 1 300 45 discriminator 1
	call	vAssertCalled
.L11:
	.loc 1 301 5
	lw	a5,-52(s0)
	bne	a5,zero,.L12
	.loc 1 301 39 discriminator 1
	call	vAssertCalled
.L12:
	.loc 1 302 5
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	bleu	a4,a5,.L13
	.loc 1 302 57 discriminator 1
	call	vAssertCalled
.L13:
	.loc 1 306 5
	lw	a5,-40(s0)
	bne	a5,zero,.L14
	.loc 1 308 23
	li	a5,1
	sw	a5,-40(s0)
.L14:
	.loc 1 311 5
	lw	a5,-44(s0)
	beq	a5,zero,.L15
	.loc 1 314 12
	li	a5,3
	sb	a5,-21(s0)
	j	.L16
.L15:
	.loc 1 319 12
	li	a5,2
	sb	a5,-21(s0)
.L16:
	.loc 1 326 5
	lw	a4,-36(s0)
	li	a5,4
	bgtu	a4,a5,.L17
	.loc 1 326 58 discriminator 1
	call	vAssertCalled
.L17:
.LBB2:
	.loc 1 333 20
	li	a5,36
	sw	a5,-32(s0)
	.loc 1 334 46
	lw	a4,-32(s0)
	.loc 1 334 6
	li	a5,36
	beq	a4,a5,.L18
	.loc 1 334 53 discriminator 1
	call	vAssertCalled
.L18:
.LBE2:
	.loc 1 338 5
	lw	a5,-48(s0)
	beq	a5,zero,.L19
	.loc 1 338 45 discriminator 1
	lw	a5,-52(s0)
	beq	a5,zero,.L19
	.loc 1 340 4
	lbu	a5,-21(s0)
	mv	a4,a5
	lw	a3,-40(s0)
	lw	a2,-36(s0)
	lw	a1,-48(s0)
	lw	a0,-28(s0)
	call	prvInitialiseNewStreamBuffer
	.loc 1 348 18
	lw	a5,-28(s0)
	lbu	a5,28(a5)
	.loc 1 348 28
	ori	a5,a5,2
	andi	a4,a5,0xff
	lw	a5,-28(s0)
	sb	a4,28(a5)
	.loc 1 352 12
	lw	a5,-52(s0)
	sw	a5,-20(s0)
	j	.L20
.L19:
	.loc 1 356 12
	sw	zero,-20(s0)
.L20:
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
	.size	xStreamBufferGenericCreateStatic, .-xStreamBufferGenericCreateStatic
	.section	.text.vStreamBufferDelete,"ax",@progbits
	.align	1
	.globl	vStreamBufferDelete
	.type	vStreamBufferDelete, @function
vStreamBufferDelete:
.LFB4:
	.loc 1 367 1
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
	.loc 1 368 18
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 370 4
	lw	a5,-20(s0)
	bne	a5,zero,.L23
	.loc 1 370 32 discriminator 1
	call	vAssertCalled
.L23:
	.loc 1 374 22
	lw	a5,-20(s0)
	lbu	a5,28(a5)
	.loc 1 374 32
	andi	a5,a5,2
	.loc 1 374 4
	bne	a5,zero,.L24
	.loc 1 380 4
	lw	a0,-20(s0)
	call	vPortFree
	.loc 1 396 1
	j	.L26
.L24:
	.loc 1 394 12
	li	a2,36
	li	a1,0
	lw	a0,-20(s0)
	call	memset
.L26:
	.loc 1 396 1
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
.LFE4:
	.size	vStreamBufferDelete, .-vStreamBufferDelete
	.section	.text.xStreamBufferReset,"ax",@progbits
	.align	1
	.globl	xStreamBufferReset
	.type	xStreamBufferReset, @function
xStreamBufferReset:
.LFB5:
	.loc 1 400 1
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
	.loc 1 401 24
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 402 12
	sw	zero,-20(s0)
	.loc 1 408 4
	lw	a5,-24(s0)
	bne	a5,zero,.L28
	.loc 1 408 32 discriminator 1
	call	vAssertCalled
.L28:
	.loc 1 414 24
	lw	a5,-24(s0)
	lw	a5,32(a5)
	sw	a5,-28(s0)
	.loc 1 419 2
	call	vTaskEnterCritical
	.loc 1 421 21
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 421 5
	bne	a5,zero,.L29
	.loc 1 423 22
	lw	a5,-24(s0)
	lw	a5,20(a5)
	.loc 1 423 6
	bne	a5,zero,.L29
	.loc 1 426 28
	lw	a5,-24(s0)
	lw	a1,24(a5)
	.loc 1 425 5
	lw	a5,-24(s0)
	lw	a2,8(a5)
	lw	a5,-24(s0)
	lw	a3,12(a5)
	lw	a5,-24(s0)
	lbu	a5,28(a5)
	mv	a4,a5
	lw	a0,-24(s0)
	call	prvInitialiseNewStreamBuffer
	.loc 1 430 13
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 434 43
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	sw	a4,32(a5)
.L29:
	.loc 1 442 2
	call	vTaskExitCritical
	.loc 1 444 9
	lw	a5,-20(s0)
	.loc 1 445 1
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
.LFE5:
	.size	xStreamBufferReset, .-xStreamBufferReset
	.section	.text.xStreamBufferSetTriggerLevel,"ax",@progbits
	.align	1
	.globl	xStreamBufferSetTriggerLevel
	.type	xStreamBufferSetTriggerLevel, @function
xStreamBufferSetTriggerLevel:
.LFB6:
	.loc 1 449 1
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
	.loc 1 450 24
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 453 4
	lw	a5,-24(s0)
	bne	a5,zero,.L32
	.loc 1 453 32 discriminator 1
	call	vAssertCalled
.L32:
	.loc 1 456 4
	lw	a5,-40(s0)
	bne	a5,zero,.L33
	.loc 1 458 17
	li	a5,1
	sw	a5,-40(s0)
.L33:
	.loc 1 463 37
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 463 4
	lw	a4,-40(s0)
	bgtu	a4,a5,.L34
	.loc 1 465 38
	lw	a5,-24(s0)
	lw	a4,-40(s0)
	sw	a4,12(a5)
	.loc 1 466 11
	li	a5,1
	sw	a5,-20(s0)
	j	.L35
.L34:
	.loc 1 470 11
	sw	zero,-20(s0)
.L35:
	.loc 1 473 9
	lw	a5,-20(s0)
	.loc 1 474 1
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
.LFE6:
	.size	xStreamBufferSetTriggerLevel, .-xStreamBufferSetTriggerLevel
	.section	.text.xStreamBufferSpacesAvailable,"ax",@progbits
	.align	1
	.globl	xStreamBufferSpacesAvailable
	.type	xStreamBufferSpacesAvailable, @function
xStreamBufferSpacesAvailable:
.LFB7:
	.loc 1 478 1
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
	.loc 1 479 30
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 482 4
	lw	a5,-24(s0)
	bne	a5,zero,.L38
	.loc 1 482 32 discriminator 1
	call	vAssertCalled
.L38:
	.loc 1 484 25
	lw	a5,-24(s0)
	lw	a4,8(a5)
	.loc 1 484 51
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 484 9
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 485 26
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 485 9
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 486 9
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 488 30
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 488 4
	lw	a4,-20(s0)
	bltu	a4,a5,.L39
	.loc 1 490 27
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 490 10
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
.L39:
	.loc 1 497 9
	lw	a5,-20(s0)
	.loc 1 498 1
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
	.size	xStreamBufferSpacesAvailable, .-xStreamBufferSpacesAvailable
	.section	.text.xStreamBufferBytesAvailable,"ax",@progbits
	.align	1
	.globl	xStreamBufferBytesAvailable
	.type	xStreamBufferBytesAvailable, @function
xStreamBufferBytesAvailable:
.LFB8:
	.loc 1 502 1
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
	.loc 1 503 30
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 506 4
	lw	a5,-20(s0)
	bne	a5,zero,.L42
	.loc 1 506 32 discriminator 1
	call	vAssertCalled
.L42:
	.loc 1 508 12
	lw	a0,-20(s0)
	call	prvBytesInBuffer
	sw	a0,-24(s0)
	.loc 1 509 9
	lw	a5,-24(s0)
	.loc 1 510 1
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
	.size	xStreamBufferBytesAvailable, .-xStreamBufferBytesAvailable
	.section	.text.xStreamBufferSend,"ax",@progbits
	.align	1
	.globl	xStreamBufferSend
	.type	xStreamBufferSend, @function
xStreamBufferSend:
.LFB9:
	.loc 1 517 1
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
	.loc 1 518 24
	lw	a5,-52(s0)
	sw	a5,-28(s0)
	.loc 1 519 17
	sw	zero,-20(s0)
	.loc 1 520 8
	lw	a5,-60(s0)
	sw	a5,-24(s0)
	.loc 1 523 4
	lw	a5,-56(s0)
	bne	a5,zero,.L45
	.loc 1 523 26 discriminator 1
	call	vAssertCalled
.L45:
	.loc 1 524 4
	lw	a5,-28(s0)
	bne	a5,zero,.L46
	.loc 1 524 32 discriminator 1
	call	vAssertCalled
.L46:
	.loc 1 530 22
	lw	a5,-28(s0)
	lbu	a5,28(a5)
	.loc 1 530 32
	andi	a5,a5,1
	.loc 1 530 4
	beq	a5,zero,.L47
	.loc 1 532 18
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 1 535 5
	lw	a4,-24(s0)
	lw	a5,-60(s0)
	bgtu	a4,a5,.L47
	.loc 1 535 52 discriminator 1
	call	vAssertCalled
.L47:
	.loc 1 542 19
	lw	a5,-64(s0)
	.loc 1 542 4
	beq	a5,zero,.L48
	.loc 1 544 3
	addi	a5,s0,-40
	mv	a0,a5
	call	vTaskSetTimeOutState
.L53:
	.loc 1 550 4
	call	vTaskEnterCritical
	.loc 1 552 14
	lw	a0,-28(s0)
	call	xStreamBufferSpacesAvailable
	sw	a0,-20(s0)
	.loc 1 554 7
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bgeu	a4,a5,.L49
	.loc 1 557 15
	li	a0,0
	call	xTaskNotifyStateClear
	.loc 1 560 26
	lw	a5,-28(s0)
	lw	a5,20(a5)
	.loc 1 560 8
	beq	a5,zero,.L50
	.loc 1 560 14 discriminator 1
	call	vAssertCalled
.L50:
	.loc 1 561 43
	call	xTaskGetCurrentTaskHandle
	mv	a4,a0
	.loc 1 561 41 discriminator 1
	lw	a5,-28(s0)
	sw	a4,20(a5)
	j	.L58
.L49:
	.loc 1 565 6
	call	vTaskExitCritical
	.loc 1 566 6
	j	.L48
.L58:
	.loc 1 569 4
	call	vTaskExitCritical
	.loc 1 572 4
	lw	a5,-64(s0)
	.loc 1 572 13
	mv	a3,a5
	li	a2,0
	li	a1,0
	li	a0,0
	call	xTaskNotifyWait
	.loc 1 573 39
	lw	a5,-28(s0)
	sw	zero,20(a5)
	.loc 1 575 12
	addi	a4,s0,-64
	addi	a5,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	xTaskCheckForTimeOut
	mv	a5,a0
	.loc 1 575 61 discriminator 1
	beq	a5,zero,.L53
.L48:
	.loc 1 582 4
	lw	a5,-20(s0)
	bne	a5,zero,.L54
	.loc 1 584 12
	lw	a0,-28(s0)
	call	xStreamBufferSpacesAvailable
	sw	a0,-20(s0)
.L54:
	.loc 1 591 12
	lw	a4,-24(s0)
	lw	a3,-20(s0)
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-28(s0)
	call	prvWriteMessageToBuffer
	sw	a0,-32(s0)
	.loc 1 593 4
	lw	a5,-32(s0)
	beq	a5,zero,.L55
	.loc 1 598 7
	lw	a0,-28(s0)
	call	prvBytesInBuffer
	mv	a4,a0
	.loc 1 598 59 discriminator 1
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 598 5 discriminator 1
	bltu	a4,a5,.L55
	.loc 1 600 4
	call	vTaskSuspendAll
	.loc 1 600 47 discriminator 1
	lw	a5,-28(s0)
	lw	a5,16(a5)
	.loc 1 600 27 discriminator 1
	beq	a5,zero,.L56
	.loc 1 600 56 discriminator 2
	lw	a5,-28(s0)
	lw	a5,16(a5)
	.loc 1 600 16 discriminator 2
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xTaskGenericNotify
	.loc 1 600 48 discriminator 4
	lw	a5,-28(s0)
	sw	zero,16(a5)
.L56:
	.loc 1 600 18 discriminator 5
	call	xTaskResumeAll
.L55:
	.loc 1 613 9
	lw	a5,-32(s0)
	.loc 1 614 1
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
.LFE9:
	.size	xStreamBufferSend, .-xStreamBufferSend
	.section	.text.xStreamBufferSendFromISR,"ax",@progbits
	.align	1
	.globl	xStreamBufferSendFromISR
	.type	xStreamBufferSendFromISR, @function
xStreamBufferSendFromISR:
.LFB10:
	.loc 1 621 1
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
	.loc 1 622 24
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	.loc 1 624 8
	lw	a5,-60(s0)
	sw	a5,-20(s0)
	.loc 1 626 4
	lw	a5,-56(s0)
	bne	a5,zero,.L60
	.loc 1 626 26 discriminator 1
	call	vAssertCalled
.L60:
	.loc 1 627 4
	lw	a5,-24(s0)
	bne	a5,zero,.L61
	.loc 1 627 32 discriminator 1
	call	vAssertCalled
.L61:
	.loc 1 633 22
	lw	a5,-24(s0)
	lbu	a5,28(a5)
	.loc 1 633 32
	andi	a5,a5,1
	.loc 1 633 4
	beq	a5,zero,.L62
	.loc 1 635 18
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
.L62:
	.loc 1 642 11
	lw	a0,-24(s0)
	call	xStreamBufferSpacesAvailable
	sw	a0,-28(s0)
	.loc 1 643 12
	lw	a4,-20(s0)
	lw	a3,-28(s0)
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-24(s0)
	call	prvWriteMessageToBuffer
	sw	a0,-32(s0)
	.loc 1 645 4
	lw	a5,-32(s0)
	beq	a5,zero,.L63
	.loc 1 648 7
	lw	a0,-24(s0)
	call	prvBytesInBuffer
	mv	a4,a0
	.loc 1 648 59 discriminator 1
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 1 648 5 discriminator 1
	bltu	a4,a5,.L63
.LBB3:
	.loc 1 650 65
	sw	zero,-36(s0)
	.loc 1 650 110
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 650 90
	beq	a5,zero,.L63
	.loc 1 650 63 discriminator 1
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 650 16 discriminator 1
	lw	a4,-64(s0)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xTaskGenericNotifyFromISR
	.loc 1 650 80 discriminator 2
	lw	a5,-24(s0)
	sw	zero,16(a5)
.L63:
.LBE3:
	.loc 1 664 9
	lw	a5,-32(s0)
	.loc 1 665 1
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
	.size	xStreamBufferSendFromISR, .-xStreamBufferSendFromISR
	.section	.text.prvWriteMessageToBuffer,"ax",@progbits
	.align	1
	.type	prvWriteMessageToBuffer, @function
prvWriteMessageToBuffer:
.LFB11:
	.loc 1 673 1
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
	.loc 1 677 4
	lw	a5,-48(s0)
	bne	a5,zero,.L66
	.loc 1 681 16
	sw	zero,-20(s0)
	j	.L67
.L66:
	.loc 1 683 27
	lw	a5,-36(s0)
	lbu	a5,28(a5)
	.loc 1 683 37
	andi	a5,a5,1
	.loc 1 683 9
	bne	a5,zero,.L68
	.loc 1 688 16
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 689 85
	lw	a4,-44(s0)
	lw	a5,-48(s0)
	bleu	a5,a4,.L69
	mv	a5,a4
.L69:
	.loc 1 689 20
	sw	a5,-44(s0)
	j	.L67
.L68:
	.loc 1 691 9
	lw	a4,-48(s0)
	lw	a5,-52(s0)
	bltu	a4,a5,.L70
	.loc 1 697 16
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 698 12
	addi	a5,s0,-44
	li	a2,4
	mv	a1,a5
	lw	a0,-36(s0)
	call	prvWriteBytesToBuffer
	j	.L67
.L70:
	.loc 1 703 16
	sw	zero,-20(s0)
.L67:
	.loc 1 706 4
	lw	a5,-20(s0)
	beq	a5,zero,.L71
	.loc 1 709 13
	lw	a5,-44(s0)
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	prvWriteBytesToBuffer
	sw	a0,-24(s0)
	j	.L72
.L71:
	.loc 1 713 11
	sw	zero,-24(s0)
.L72:
	.loc 1 716 9
	lw	a5,-24(s0)
	.loc 1 717 1
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
	.size	prvWriteMessageToBuffer, .-prvWriteMessageToBuffer
	.section	.text.xStreamBufferReceive,"ax",@progbits
	.align	1
	.globl	xStreamBufferReceive
	.type	xStreamBufferReceive, @function
xStreamBufferReceive:
.LFB12:
	.loc 1 724 1
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
	.loc 1 725 24
	lw	a5,-36(s0)
	sw	a5,-32(s0)
	.loc 1 726 8
	sw	zero,-20(s0)
	.loc 1 728 4
	lw	a5,-40(s0)
	bne	a5,zero,.L75
	.loc 1 728 26 discriminator 1
	call	vAssertCalled
.L75:
	.loc 1 729 4
	lw	a5,-32(s0)
	bne	a5,zero,.L76
	.loc 1 729 32 discriminator 1
	call	vAssertCalled
.L76:
	.loc 1 736 22
	lw	a5,-32(s0)
	lbu	a5,28(a5)
	.loc 1 736 32
	andi	a5,a5,1
	.loc 1 736 4
	beq	a5,zero,.L77
	.loc 1 738 30
	li	a5,4
	sw	a5,-28(s0)
	j	.L78
.L77:
	.loc 1 742 30
	sw	zero,-28(s0)
.L78:
	.loc 1 745 4
	lw	a5,-48(s0)
	beq	a5,zero,.L79
	.loc 1 749 3
	call	vTaskEnterCritical
	.loc 1 751 22
	lw	a0,-32(s0)
	call	prvBytesInBuffer
	sw	a0,-24(s0)
	.loc 1 758 6
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	bgtu	a4,a5,.L80
	.loc 1 761 14
	li	a0,0
	call	xTaskNotifyStateClear
	.loc 1 764 25
	lw	a5,-32(s0)
	lw	a5,16(a5)
	.loc 1 764 7
	beq	a5,zero,.L81
	.loc 1 764 13 discriminator 1
	call	vAssertCalled
.L81:
	.loc 1 765 45
	call	xTaskGetCurrentTaskHandle
	mv	a4,a0
	.loc 1 765 43 discriminator 1
	lw	a5,-32(s0)
	sw	a4,16(a5)
.L80:
	.loc 1 772 3
	call	vTaskExitCritical
	.loc 1 774 5
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	bgtu	a4,a5,.L82
	.loc 1 778 13
	lw	a3,-48(s0)
	li	a2,0
	li	a1,0
	li	a0,0
	call	xTaskNotifyWait
	.loc 1 779 42
	lw	a5,-32(s0)
	sw	zero,16(a5)
	.loc 1 782 22
	lw	a0,-32(s0)
	call	prvBytesInBuffer
	sw	a0,-24(s0)
	j	.L82
.L79:
	.loc 1 791 21
	lw	a0,-32(s0)
	call	prvBytesInBuffer
	sw	a0,-24(s0)
.L82:
	.loc 1 799 4
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	bleu	a4,a5,.L83
	.loc 1 801 21
	lw	a4,-28(s0)
	lw	a3,-24(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-32(s0)
	call	prvReadMessageFromBuffer
	sw	a0,-20(s0)
	.loc 1 804 5
	lw	a5,-20(s0)
	beq	a5,zero,.L83
	.loc 1 807 4
	call	vTaskSuspendAll
	.loc 1 807 47 discriminator 1
	lw	a5,-32(s0)
	lw	a5,20(a5)
	.loc 1 807 27 discriminator 1
	beq	a5,zero,.L84
	.loc 1 807 56 discriminator 2
	lw	a5,-32(s0)
	lw	a5,20(a5)
	.loc 1 807 16 discriminator 2
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xTaskGenericNotify
	.loc 1 807 45 discriminator 4
	lw	a5,-32(s0)
	sw	zero,20(a5)
.L84:
	.loc 1 807 18 discriminator 5
	call	xTaskResumeAll
.L83:
	.loc 1 820 9
	lw	a5,-20(s0)
	.loc 1 821 1
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
	.size	xStreamBufferReceive, .-xStreamBufferReceive
	.section	.text.xStreamBufferNextMessageLengthBytes,"ax",@progbits
	.align	1
	.globl	xStreamBufferNextMessageLengthBytes
	.type	xStreamBufferNextMessageLengthBytes, @function
xStreamBufferNextMessageLengthBytes:
.LFB13:
	.loc 1 825 1
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
	.loc 1 826 24
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	.loc 1 830 4
	lw	a5,-24(s0)
	bne	a5,zero,.L87
	.loc 1 830 32 discriminator 1
	call	vAssertCalled
.L87:
	.loc 1 833 22
	lw	a5,-24(s0)
	lbu	a5,28(a5)
	.loc 1 833 32
	andi	a5,a5,1
	.loc 1 833 4
	beq	a5,zero,.L88
	.loc 1 835 21
	lw	a0,-24(s0)
	call	prvBytesInBuffer
	sw	a0,-28(s0)
	.loc 1 836 5
	lw	a4,-28(s0)
	li	a5,4
	bleu	a4,a5,.L89
	.loc 1 844 18
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 845 13
	addi	a5,s0,-36
	lw	a3,-28(s0)
	li	a2,4
	mv	a1,a5
	lw	a0,-24(s0)
	call	prvReadBytesFromBuffer
	.loc 1 846 12
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 847 26
	lw	a5,-24(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
	j	.L90
.L89:
	.loc 1 855 6
	lw	a5,-28(s0)
	beq	a5,zero,.L91
	.loc 1 855 40 discriminator 1
	call	vAssertCalled
.L91:
	.loc 1 856 12
	sw	zero,-20(s0)
	j	.L90
.L88:
	.loc 1 861 11
	sw	zero,-20(s0)
.L90:
	.loc 1 864 9
	lw	a5,-20(s0)
	.loc 1 865 1
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
	.size	xStreamBufferNextMessageLengthBytes, .-xStreamBufferNextMessageLengthBytes
	.section	.text.xStreamBufferReceiveFromISR,"ax",@progbits
	.align	1
	.globl	xStreamBufferReceiveFromISR
	.type	xStreamBufferReceiveFromISR, @function
xStreamBufferReceiveFromISR:
.LFB14:
	.loc 1 872 1
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
	.loc 1 873 24
	lw	a5,-52(s0)
	sw	a5,-28(s0)
	.loc 1 874 8
	sw	zero,-20(s0)
	.loc 1 876 4
	lw	a5,-56(s0)
	bne	a5,zero,.L94
	.loc 1 876 26 discriminator 1
	call	vAssertCalled
.L94:
	.loc 1 877 4
	lw	a5,-28(s0)
	bne	a5,zero,.L95
	.loc 1 877 32 discriminator 1
	call	vAssertCalled
.L95:
	.loc 1 884 22
	lw	a5,-28(s0)
	lbu	a5,28(a5)
	.loc 1 884 32
	andi	a5,a5,1
	.loc 1 884 4
	beq	a5,zero,.L96
	.loc 1 886 30
	li	a5,4
	sw	a5,-24(s0)
	j	.L97
.L96:
	.loc 1 890 30
	sw	zero,-24(s0)
.L97:
	.loc 1 893 20
	lw	a0,-28(s0)
	call	prvBytesInBuffer
	sw	a0,-32(s0)
	.loc 1 900 4
	lw	a4,-32(s0)
	lw	a5,-24(s0)
	bleu	a4,a5,.L98
	.loc 1 902 21
	lw	a4,-24(s0)
	lw	a3,-32(s0)
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-28(s0)
	call	prvReadMessageFromBuffer
	sw	a0,-20(s0)
	.loc 1 905 5
	lw	a5,-20(s0)
	beq	a5,zero,.L98
.LBB4:
	.loc 1 907 65
	sw	zero,-36(s0)
	.loc 1 907 110
	lw	a5,-28(s0)
	lw	a5,20(a5)
	.loc 1 907 90
	beq	a5,zero,.L98
	.loc 1 907 63 discriminator 1
	lw	a5,-28(s0)
	lw	a5,20(a5)
	.loc 1 907 16 discriminator 1
	lw	a4,-64(s0)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xTaskGenericNotifyFromISR
	.loc 1 907 77 discriminator 2
	lw	a5,-28(s0)
	sw	zero,20(a5)
.L98:
.LBE4:
	.loc 1 921 9
	lw	a5,-20(s0)
	.loc 1 922 1
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
	.size	xStreamBufferReceiveFromISR, .-xStreamBufferReceiveFromISR
	.section	.text.prvReadMessageFromBuffer,"ax",@progbits
	.align	1
	.type	prvReadMessageFromBuffer, @function
prvReadMessageFromBuffer:
.LFB15:
	.loc 1 930 1
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
	.loc 1 934 4
	lw	a5,-52(s0)
	beq	a5,zero,.L101
	.loc 1 940 17
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 941 12
	addi	a5,s0,-32
	lw	a3,-48(s0)
	lw	a2,-52(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	prvReadBytesFromBuffer
	.loc 1 942 22
	lw	a5,-32(s0)
	sw	a5,-20(s0)
	.loc 1 946 19
	lw	a4,-48(s0)
	lw	a5,-52(s0)
	sub	a5,a4,a5
	sw	a5,-48(s0)
	.loc 1 950 5
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bleu	a4,a5,.L102
	.loc 1 955 26
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 956 23
	sw	zero,-20(s0)
	j	.L102
.L101:
	.loc 1 967 22
	lw	a5,-44(s0)
	sw	a5,-20(s0)
.L102:
	.loc 1 971 20
	lw	a3,-48(s0)
	lw	a2,-20(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	prvReadBytesFromBuffer
	sw	a0,-28(s0)
	.loc 1 973 9
	lw	a5,-28(s0)
	.loc 1 974 1
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
	.size	prvReadMessageFromBuffer, .-prvReadMessageFromBuffer
	.section	.text.xStreamBufferIsEmpty,"ax",@progbits
	.align	1
	.globl	xStreamBufferIsEmpty
	.type	xStreamBufferIsEmpty, @function
xStreamBufferIsEmpty:
.LFB16:
	.loc 1 978 1
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
	.loc 1 979 30
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 983 4
	lw	a5,-24(s0)
	bne	a5,zero,.L105
	.loc 1 983 32 discriminator 1
	call	vAssertCalled
.L105:
	.loc 1 986 8
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 987 20
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 987 4
	lw	a4,-28(s0)
	bne	a4,a5,.L106
	.loc 1 989 11
	li	a5,1
	sw	a5,-20(s0)
	j	.L107
.L106:
	.loc 1 993 11
	sw	zero,-20(s0)
.L107:
	.loc 1 996 9
	lw	a5,-20(s0)
	.loc 1 997 1
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
	.size	xStreamBufferIsEmpty, .-xStreamBufferIsEmpty
	.section	.text.xStreamBufferIsFull,"ax",@progbits
	.align	1
	.globl	xStreamBufferIsFull
	.type	xStreamBufferIsFull, @function
xStreamBufferIsFull:
.LFB17:
	.loc 1 1001 1
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
	.loc 1 1004 30
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	.loc 1 1006 4
	lw	a5,-28(s0)
	bne	a5,zero,.L110
	.loc 1 1006 32 discriminator 1
	call	vAssertCalled
.L110:
	.loc 1 1012 22
	lw	a5,-28(s0)
	lbu	a5,28(a5)
	.loc 1 1012 32
	andi	a5,a5,1
	.loc 1 1012 4
	beq	a5,zero,.L111
	.loc 1 1014 30
	li	a5,4
	sw	a5,-24(s0)
	j	.L112
.L111:
	.loc 1 1018 30
	sw	zero,-24(s0)
.L112:
	.loc 1 1022 6
	lw	a0,-36(s0)
	call	xStreamBufferSpacesAvailable
	mv	a4,a0
	.loc 1 1022 4 discriminator 1
	lw	a5,-24(s0)
	bltu	a5,a4,.L113
	.loc 1 1024 11
	li	a5,1
	sw	a5,-20(s0)
	j	.L114
.L113:
	.loc 1 1028 11
	sw	zero,-20(s0)
.L114:
	.loc 1 1031 9
	lw	a5,-20(s0)
	.loc 1 1032 1
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
	.size	xStreamBufferIsFull, .-xStreamBufferIsFull
	.section	.text.xStreamBufferSendCompletedFromISR,"ax",@progbits
	.align	1
	.globl	xStreamBufferSendCompletedFromISR
	.type	xStreamBufferSendCompletedFromISR, @function
xStreamBufferSendCompletedFromISR:
.LFB18:
	.loc 1 1036 1
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
	.loc 1 1037 24
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 1041 4
	lw	a5,-24(s0)
	bne	a5,zero,.L117
	.loc 1 1041 32 discriminator 1
	call	vAssertCalled
.L117:
	.loc 1 1043 25
	sw	zero,-28(s0)
	.loc 1 1045 25
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 1045 5
	beq	a5,zero,.L118
	.loc 1 1047 60
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 1047 13
	lw	a4,-40(s0)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xTaskGenericNotifyFromISR
	.loc 1 1051 46
	lw	a5,-24(s0)
	sw	zero,16(a5)
	.loc 1 1052 12
	li	a5,1
	sw	a5,-20(s0)
	j	.L119
.L118:
	.loc 1 1056 12
	sw	zero,-20(s0)
.L119:
	.loc 1 1061 9
	lw	a5,-20(s0)
	.loc 1 1062 1
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
	.size	xStreamBufferSendCompletedFromISR, .-xStreamBufferSendCompletedFromISR
	.section	.text.xStreamBufferReceiveCompletedFromISR,"ax",@progbits
	.align	1
	.globl	xStreamBufferReceiveCompletedFromISR
	.type	xStreamBufferReceiveCompletedFromISR, @function
xStreamBufferReceiveCompletedFromISR:
.LFB19:
	.loc 1 1066 1
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
	.loc 1 1067 24
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 1071 4
	lw	a5,-24(s0)
	bne	a5,zero,.L122
	.loc 1 1071 32 discriminator 1
	call	vAssertCalled
.L122:
	.loc 1 1073 25
	sw	zero,-28(s0)
	.loc 1 1075 25
	lw	a5,-24(s0)
	lw	a5,20(a5)
	.loc 1 1075 5
	beq	a5,zero,.L123
	.loc 1 1077 60
	lw	a5,-24(s0)
	lw	a5,20(a5)
	.loc 1 1077 13
	lw	a4,-40(s0)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xTaskGenericNotifyFromISR
	.loc 1 1081 43
	lw	a5,-24(s0)
	sw	zero,20(a5)
	.loc 1 1082 12
	li	a5,1
	sw	a5,-20(s0)
	j	.L124
.L123:
	.loc 1 1086 12
	sw	zero,-20(s0)
.L124:
	.loc 1 1091 9
	lw	a5,-20(s0)
	.loc 1 1092 1
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
	.size	xStreamBufferReceiveCompletedFromISR, .-xStreamBufferReceiveCompletedFromISR
	.section	.text.prvWriteBytesToBuffer,"ax",@progbits
	.align	1
	.type	prvWriteBytesToBuffer, @function
prvWriteBytesToBuffer:
.LFB20:
	.loc 1 1096 1
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
	.loc 1 1099 4
	lw	a5,-44(s0)
	bne	a5,zero,.L127
	.loc 1 1099 39 discriminator 1
	call	vAssertCalled
.L127:
	.loc 1 1101 12
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 1106 37
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 1 1106 47
	lw	a5,-20(s0)
	sub	a4,a4,a5
	.loc 1 1106 15
	lw	a5,-44(s0)
	bleu	a5,a4,.L128
	mv	a5,a4
.L128:
	sw	a5,-24(s0)
	.loc 1 1109 20
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 1 1109 54
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 1109 4
	bleu	a4,a5,.L129
	.loc 1 1109 73 discriminator 1
	call	vAssertCalled
.L129:
	.loc 1 1110 48
	lw	a5,-36(s0)
	lw	a4,24(a5)
	.loc 1 1110 31
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 1110 11
	lw	a2,-24(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 1114 4
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	bleu	a4,a5,.L130
	.loc 1 1117 18
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	sub	a4,a4,a5
	.loc 1 1117 52
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 1117 5
	bleu	a4,a5,.L131
	.loc 1 1117 71 discriminator 1
	call	vAssertCalled
.L131:
	.loc 1 1118 45
	lw	a5,-36(s0)
	lw	a3,24(a5)
	.loc 1 1118 75
	lw	a4,-40(s0)
	lw	a5,-24(s0)
	add	a1,a4,a5
	.loc 1 1118 12
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	mv	a2,a5
	mv	a0,a3
	call	memcpy
.L130:
	.loc 1 1125 12
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1126 33
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 1126 4
	lw	a4,-20(s0)
	bltu	a4,a5,.L132
	.loc 1 1128 30
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 1128 13
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
.L132:
	.loc 1 1135 24
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,4(a5)
	.loc 1 1137 9
	lw	a5,-44(s0)
	.loc 1 1138 1
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
	.size	prvWriteBytesToBuffer, .-prvWriteBytesToBuffer
	.section	.text.prvReadBytesFromBuffer,"ax",@progbits
	.align	1
	.type	prvReadBytesFromBuffer, @function
prvReadBytesFromBuffer:
.LFB21:
	.loc 1 1142 1
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
	.loc 1 1146 9
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	bleu	a5,a4,.L135
	mv	a5,a4
.L135:
	sw	a5,-24(s0)
	.loc 1 1148 4
	lw	a5,-24(s0)
	beq	a5,zero,.L136
	.loc 1 1150 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1155 38
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 1 1155 48
	lw	a5,-20(s0)
	sub	a4,a4,a5
	.loc 1 1155 16
	lw	a5,-24(s0)
	bleu	a5,a4,.L137
	mv	a5,a4
.L137:
	sw	a5,-28(s0)
	.loc 1 1159 5
	lw	a4,-28(s0)
	lw	a5,-44(s0)
	bleu	a4,a5,.L138
	.loc 1 1159 44 discriminator 1
	call	vAssertCalled
.L138:
	.loc 1 1160 21
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	add	a4,a4,a5
	.loc 1 1160 55
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 1160 5
	bleu	a4,a5,.L139
	.loc 1 1160 74 discriminator 1
	call	vAssertCalled
.L139:
	.loc 1 1161 74
	lw	a5,-36(s0)
	lw	a4,24(a5)
	.loc 1 1161 57
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 1161 12
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 1165 5
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	bleu	a4,a5,.L140
	.loc 1 1168 6
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	bleu	a4,a5,.L141
	.loc 1 1168 39 discriminator 1
	call	vAssertCalled
.L141:
	.loc 1 1169 32
	lw	a4,-40(s0)
	lw	a5,-28(s0)
	add	a3,a4,a5
	.loc 1 1169 89
	lw	a5,-36(s0)
	lw	a1,24(a5)
	.loc 1 1169 13
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	mv	a2,a5
	mv	a0,a3
	call	memcpy
.L140:
	.loc 1 1178 13
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1180 34
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 1180 5
	lw	a4,-20(s0)
	bltu	a4,a5,.L142
	.loc 1 1182 31
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 1182 14
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
.L142:
	.loc 1 1185 25
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L136:
	.loc 1 1192 9
	lw	a5,-24(s0)
	.loc 1 1193 1
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
	.size	prvReadBytesFromBuffer, .-prvReadBytesFromBuffer
	.section	.text.prvBytesInBuffer,"ax",@progbits
	.align	1
	.type	prvBytesInBuffer, @function
prvBytesInBuffer:
.LFB22:
	.loc 1 1197 1
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
	.loc 1 1201 25
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 1 1201 51
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1201 9
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1202 26
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1202 9
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1203 31
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 1203 5
	lw	a4,-20(s0)
	bltu	a4,a5,.L145
	.loc 1 1205 27
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 1205 10
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
.L145:
	.loc 1 1212 9
	lw	a5,-20(s0)
	.loc 1 1213 1
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
	.size	prvBytesInBuffer, .-prvBytesInBuffer
	.section	.text.prvInitialiseNewStreamBuffer,"ax",@progbits
	.align	1
	.type	prvInitialiseNewStreamBuffer, @function
prvInitialiseNewStreamBuffer:
.LFB23:
	.loc 1 1221 1
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
.LBB5:
	.loc 1 1230 20
	li	a5,85
	sw	a5,-20(s0)
	.loc 1 1231 9
	lw	a2,-44(s0)
	lw	a1,-20(s0)
	lw	a0,-40(s0)
	call	memset
	mv	a4,a0
	.loc 1 1231 5 discriminator 1
	lw	a5,-40(s0)
	beq	a5,a4,.L148
	.loc 1 1231 90 discriminator 2
	call	vAssertCalled
.L148:
.LBE5:
	.loc 1 1235 11
	li	a2,36
	li	a1,0
	lw	a0,-36(s0)
	call	memset
	.loc 1 1236 28
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,24(a5)
	.loc 1 1237 26
	lw	a5,-36(s0)
	lw	a4,-44(s0)
	sw	a4,8(a5)
	.loc 1 1238 37
	lw	a5,-36(s0)
	lw	a4,-48(s0)
	sw	a4,12(a5)
	.loc 1 1239 26
	lw	a5,-36(s0)
	lbu	a4,-49(s0)
	sb	a4,28(a5)
	.loc 1 1240 1
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
.LFE23:
	.size	prvInitialiseNewStreamBuffer, .-prvInitialiseNewStreamBuffer
	.section	.text.uxStreamBufferGetStreamBufferNumber,"ax",@progbits
	.align	1
	.globl	uxStreamBufferGetStreamBufferNumber
	.type	uxStreamBufferGetStreamBufferNumber, @function
uxStreamBufferGetStreamBufferNumber:
.LFB24:
	.loc 1 1245 2
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
	.loc 1 1246 23
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 1247 2
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
	.size	uxStreamBufferGetStreamBufferNumber, .-uxStreamBufferGetStreamBufferNumber
	.section	.text.vStreamBufferSetStreamBufferNumber,"ax",@progbits
	.align	1
	.globl	vStreamBufferSetStreamBufferNumber
	.type	vStreamBufferSetStreamBufferNumber, @function
vStreamBufferSetStreamBufferNumber:
.LFB25:
	.loc 1 1255 2
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
	.loc 1 1256 39
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,32(a5)
	.loc 1 1257 2
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
.LFE25:
	.size	vStreamBufferSetStreamBufferNumber, .-vStreamBufferSetStreamBufferNumber
	.section	.text.ucStreamBufferGetStreamBufferType,"ax",@progbits
	.align	1
	.globl	ucStreamBufferGetStreamBufferType
	.type	ucStreamBufferGetStreamBufferType, @function
ucStreamBufferGetStreamBufferType:
.LFB26:
	.loc 1 1265 2
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
	.loc 1 1266 25
	lw	a5,-20(s0)
	lbu	a5,28(a5)
	.loc 1 1266 35
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1267 2
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
	.size	ucStreamBufferGetStreamBufferType, .-ucStreamBufferGetStreamBufferType
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/stream_buffer.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOSConfig.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe72
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1a
	.4byte	.LASF124
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x45
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x64
	.uleb128 0x9
	.4byte	0x53
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x7e
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x93
	.uleb128 0x12
	.4byte	0x9a
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x1c
	.byte	0x4
	.uleb128 0x13
	.4byte	0xb2
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3f
	.byte	0x11
	.4byte	0x39
	.uleb128 0x9
	.4byte	0xc0
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x4
	.byte	0x40
	.byte	0x12
	.4byte	0x72
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0x72
	.uleb128 0x6
	.4byte	0x53
	.uleb128 0x9
	.4byte	0xe9
	.uleb128 0x14
	.4byte	0xb2
	.4byte	0x103
	.uleb128 0x15
	.4byte	0x93
	.byte	0x2
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF32
	.byte	0x24
	.byte	0x5
	.2byte	0x4fd
	.byte	0x10
	.4byte	0x146
	.uleb128 0xc
	.4byte	.LASF20
	.2byte	0x4ff
	.byte	0x9
	.4byte	0x146
	.byte	0
	.uleb128 0xc
	.4byte	.LASF21
	.2byte	0x500
	.byte	0x9
	.4byte	0xf3
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF22
	.2byte	0x501
	.byte	0xa
	.4byte	0x53
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF23
	.2byte	0x503
	.byte	0xf
	.4byte	0xd1
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.4byte	0x9a
	.4byte	0x156
	.uleb128 0x15
	.4byte	0x93
	.byte	0x3
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x505
	.byte	0x3
	.4byte	0x103
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x6
	.byte	0x46
	.byte	0x25
	.4byte	0x174
	.uleb128 0x12
	.4byte	0x163
	.uleb128 0x6
	.4byte	0x179
	.uleb128 0x1f
	.4byte	.LASF125
	.uleb128 0x20
	.byte	0x7
	.byte	0x1
	.4byte	0x64
	.byte	0x6
	.byte	0x5b
	.byte	0x1
	.4byte	0x1ab
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x6
	.byte	0x61
	.byte	0x3
	.4byte	0x17e
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x8
	.byte	0x6
	.byte	0x66
	.4byte	0x1de
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x6
	.byte	0x68
	.byte	0xd
	.4byte	0xc0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x6
	.byte	0x69
	.byte	0xd
	.4byte	0xdd
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF36
	.byte	0x6
	.byte	0x6a
	.byte	0x3
	.4byte	0x1b7
	.uleb128 0x5
	.4byte	.LASF37
	.byte	0x7
	.byte	0x45
	.byte	0x24
	.4byte	0x1f6
	.uleb128 0x6
	.4byte	0x1fb
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x24
	.byte	0x1
	.byte	0x8d
	.4byte	0x27d
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x1
	.byte	0x8f
	.byte	0x12
	.4byte	0xa6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x1
	.byte	0x90
	.byte	0x12
	.4byte	0xa6
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x1
	.byte	0x91
	.byte	0x9
	.4byte	0x9a
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x1
	.byte	0x92
	.byte	0x9
	.4byte	0x9a
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x1
	.byte	0x93
	.byte	0x18
	.4byte	0x16f
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x1
	.byte	0x94
	.byte	0x18
	.4byte	0x16f
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x1
	.byte	0x95
	.byte	0xb
	.4byte	0xe9
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x1
	.byte	0x96
	.byte	0xa
	.4byte	0x53
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x1
	.byte	0x99
	.byte	0xf
	.4byte	0xd1
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF48
	.byte	0x1
	.byte	0x9b
	.byte	0x3
	.4byte	0x1fb
	.uleb128 0x9
	.4byte	0x27d
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x8
	.byte	0x1f
	.byte	0x8
	.4byte	0xb2
	.4byte	0x2ae
	.uleb128 0x3
	.4byte	0xb4
	.uleb128 0x3
	.4byte	0x2b3
	.uleb128 0x3
	.4byte	0x9a
	.byte	0
	.uleb128 0x6
	.4byte	0x2b8
	.uleb128 0x13
	.4byte	0x2ae
	.uleb128 0x21
	.uleb128 0xb
	.4byte	.LASF50
	.2byte	0x799
	.4byte	0xc0
	.4byte	0x2e2
	.uleb128 0x3
	.4byte	0x163
	.uleb128 0x3
	.4byte	0x72
	.uleb128 0x3
	.4byte	0x1ab
	.uleb128 0x3
	.4byte	0x2e2
	.uleb128 0x3
	.4byte	0x2e7
	.byte	0
	.uleb128 0x6
	.4byte	0x72
	.uleb128 0x6
	.4byte	0xc0
	.uleb128 0x9
	.4byte	0x2e7
	.uleb128 0x17
	.4byte	.LASF54
	.2byte	0x53d
	.byte	0xc
	.4byte	0xc0
	.uleb128 0xb
	.4byte	.LASF51
	.2byte	0x73e
	.4byte	0xc0
	.4byte	0x321
	.uleb128 0x3
	.4byte	0x163
	.uleb128 0x3
	.4byte	0x72
	.uleb128 0x3
	.4byte	0x1ab
	.uleb128 0x3
	.4byte	0x2e2
	.byte	0
	.uleb128 0x22
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x507
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF52
	.2byte	0x913
	.4byte	0xc0
	.4byte	0x344
	.uleb128 0x3
	.4byte	0x349
	.uleb128 0x3
	.4byte	0x353
	.byte	0
	.uleb128 0x6
	.4byte	0x1de
	.uleb128 0x9
	.4byte	0x344
	.uleb128 0x6
	.4byte	0xdd
	.uleb128 0x9
	.4byte	0x34e
	.uleb128 0xb
	.4byte	.LASF53
	.2byte	0x7e6
	.4byte	0xc0
	.4byte	0x37c
	.uleb128 0x3
	.4byte	0x72
	.uleb128 0x3
	.4byte	0x72
	.uleb128 0x3
	.4byte	0x2e2
	.uleb128 0x3
	.4byte	0xdd
	.byte	0
	.uleb128 0x17
	.4byte	.LASF55
	.2byte	0x987
	.byte	0xe
	.4byte	0x163
	.uleb128 0xb
	.4byte	.LASF56
	.2byte	0x8a0
	.4byte	0xc0
	.4byte	0x39d
	.uleb128 0x3
	.4byte	0x163
	.byte	0
	.uleb128 0x23
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x8c0
	.byte	0x6
	.4byte	0x3b0
	.uleb128 0x3
	.4byte	0x349
	.byte	0
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x4
	.byte	0x67
	.byte	0xd
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x4
	.byte	0x66
	.byte	0xd
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x8
	.byte	0x21
	.byte	0x8
	.4byte	0xb2
	.4byte	0x3e0
	.uleb128 0x3
	.4byte	0xb2
	.uleb128 0x3
	.4byte	0x8c
	.uleb128 0x3
	.4byte	0x9a
	.byte	0
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x9
	.byte	0xa4
	.byte	0x6
	.4byte	0x3f2
	.uleb128 0x3
	.4byte	0xb2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x9
	.byte	0xa3
	.byte	0x7
	.4byte	0xb2
	.4byte	0x408
	.uleb128 0x3
	.4byte	0x9a
	.byte	0
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0xa
	.byte	0x97
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF66
	.2byte	0x4f0
	.byte	0xa
	.4byte	0x53
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43a
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x4f0
	.byte	0x42
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x4e6
	.byte	0x7
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x470
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x4e6
	.byte	0x40
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF47
	.2byte	0x4e6
	.byte	0x5b
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.4byte	.LASF67
	.2byte	0x4dc
	.byte	0xe
	.4byte	0xd1
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49a
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x4dc
	.byte	0x48
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x4c0
	.byte	0xd
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x516
	.uleb128 0x2
	.4byte	.LASF68
	.2byte	0x4c0
	.byte	0x42
	.4byte	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF45
	.2byte	0x4c1
	.byte	0x1d
	.4byte	0xee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF69
	.2byte	0x4c2
	.byte	0x14
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF42
	.2byte	0x4c3
	.byte	0x14
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF46
	.2byte	0x4c4
	.byte	0x15
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0xd
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1
	.4byte	.LASF70
	.2byte	0x4ce
	.byte	0x14
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x27d
	.uleb128 0x9
	.4byte	0x516
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x4ac
	.byte	0xf
	.4byte	0x9a
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55a
	.uleb128 0x2
	.4byte	.LASF68
	.2byte	0x4ac
	.byte	0x3e
	.4byte	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF71
	.2byte	0x4af
	.byte	0x8
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x289
	.uleb128 0x9
	.4byte	0x55a
	.uleb128 0xe
	.4byte	.LASF73
	.2byte	0x475
	.4byte	0x9a
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e7
	.uleb128 0x2
	.4byte	.LASF68
	.2byte	0x475
	.byte	0x37
	.4byte	0x516
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF74
	.2byte	0x475
	.byte	0x50
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF75
	.2byte	0x475
	.byte	0x60
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF76
	.2byte	0x475
	.byte	0x72
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF71
	.2byte	0x477
	.byte	0x8
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF77
	.2byte	0x477
	.byte	0x10
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF78
	.2byte	0x477
	.byte	0x1e
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF79
	.2byte	0x447
	.4byte	0x9a
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64c
	.uleb128 0x2
	.4byte	.LASF68
	.2byte	0x447
	.byte	0x3d
	.4byte	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF74
	.2byte	0x447
	.byte	0x5c
	.4byte	0x64c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF71
	.2byte	0x447
	.byte	0x6c
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF80
	.2byte	0x449
	.byte	0x8
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF77
	.2byte	0x449
	.byte	0x13
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	0x5f
	.uleb128 0x4
	.4byte	.LASF81
	.2byte	0x429
	.byte	0xc
	.4byte	0xc0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b7
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x429
	.byte	0x47
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF82
	.2byte	0x429
	.byte	0x62
	.4byte	0x2e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x42b
	.byte	0x18
	.4byte	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x42c
	.byte	0xc
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF84
	.2byte	0x42d
	.byte	0xd
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF85
	.2byte	0x40b
	.byte	0xc
	.4byte	0xc0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71d
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x40b
	.byte	0x44
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF82
	.2byte	0x40b
	.byte	0x5f
	.4byte	0x2e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x40d
	.byte	0x18
	.4byte	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x40e
	.byte	0xc
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF84
	.2byte	0x40f
	.byte	0xd
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF86
	.2byte	0x3e8
	.byte	0xc
	.4byte	0xc0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x774
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x3e8
	.byte	0x36
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x3ea
	.byte	0xc
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF87
	.2byte	0x3eb
	.byte	0x8
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x3ec
	.byte	0x1e
	.4byte	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF88
	.2byte	0x3d1
	.byte	0xc
	.4byte	0xc0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7cb
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x3d1
	.byte	0x37
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x3d3
	.byte	0x1e
	.4byte	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x3d4
	.byte	0xc
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF39
	.2byte	0x3d5
	.byte	0x8
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xe
	.4byte	.LASF89
	.2byte	0x39d
	.4byte	0x9a
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x86c
	.uleb128 0x2
	.4byte	.LASF68
	.2byte	0x39d
	.byte	0x39
	.4byte	0x516
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF90
	.2byte	0x39e
	.byte	0x11
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF91
	.2byte	0x39f
	.byte	0x12
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF76
	.2byte	0x3a0
	.byte	0x12
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF87
	.2byte	0x3a1
	.byte	0x12
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF92
	.2byte	0x3a3
	.byte	0x8
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF93
	.2byte	0x3a3
	.byte	0x17
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF94
	.2byte	0x3a3
	.byte	0x28
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF95
	.2byte	0x3a4
	.byte	0x8
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x4
	.4byte	.LASF96
	.2byte	0x364
	.byte	0x8
	.4byte	0x9a
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x918
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x364
	.byte	0x3a
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF90
	.2byte	0x365
	.byte	0x10
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF91
	.2byte	0x366
	.byte	0x11
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF82
	.2byte	0x367
	.byte	0x1d
	.4byte	0x2ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x369
	.byte	0x18
	.4byte	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF93
	.2byte	0x36a
	.byte	0x8
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x36a
	.byte	0x1d
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF87
	.2byte	0x36a
	.byte	0x2e
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1
	.4byte	.LASF84
	.2byte	0x38b
	.byte	0x12
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF97
	.2byte	0x338
	.byte	0x8
	.4byte	0x9a
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98d
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x338
	.byte	0x42
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x33a
	.byte	0x18
	.4byte	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x33b
	.byte	0x8
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x33b
	.byte	0x11
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF92
	.2byte	0x33b
	.byte	0x22
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF98
	.2byte	0x33c
	.byte	0x8
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x4
	.4byte	.LASF99
	.2byte	0x2d0
	.byte	0x8
	.4byte	0x9a
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa20
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x2d0
	.byte	0x33
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF90
	.2byte	0x2d1
	.byte	0xf
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF91
	.2byte	0x2d2
	.byte	0x10
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF100
	.2byte	0x2d3
	.byte	0x14
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x2d5
	.byte	0x18
	.4byte	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF93
	.2byte	0x2d6
	.byte	0x8
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x2d6
	.byte	0x1d
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF87
	.2byte	0x2d6
	.byte	0x2e
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xe
	.4byte	.LASF101
	.2byte	0x29c
	.4byte	0x9a
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa3
	.uleb128 0x2
	.4byte	.LASF68
	.2byte	0x29c
	.byte	0x3f
	.4byte	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF102
	.2byte	0x29d
	.byte	0x1a
	.4byte	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF103
	.2byte	0x29e
	.byte	0x14
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF104
	.2byte	0x29f
	.byte	0x14
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF105
	.2byte	0x2a0
	.byte	0x14
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF106
	.2byte	0x2a2
	.byte	0xd
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x2a3
	.byte	0x9
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF107
	.2byte	0x269
	.byte	0x8
	.4byte	0x9a
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb4f
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x269
	.byte	0x37
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF102
	.2byte	0x26a
	.byte	0x16
	.4byte	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF103
	.2byte	0x26b
	.byte	0x11
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF82
	.2byte	0x26c
	.byte	0x1d
	.4byte	0x2ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x26e
	.byte	0x18
	.4byte	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x26f
	.byte	0x8
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF104
	.2byte	0x26f
	.byte	0x11
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF105
	.2byte	0x270
	.byte	0x8
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1
	.4byte	.LASF84
	.2byte	0x28a
	.byte	0x12
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF108
	.2byte	0x201
	.byte	0x8
	.4byte	0x9a
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf1
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x201
	.byte	0x30
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF102
	.2byte	0x202
	.byte	0x15
	.4byte	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF103
	.2byte	0x203
	.byte	0x10
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF100
	.2byte	0x204
	.byte	0x14
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x206
	.byte	0x18
	.4byte	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x207
	.byte	0x8
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF104
	.2byte	0x207
	.byte	0x11
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF105
	.2byte	0x208
	.byte	0x8
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF109
	.2byte	0x209
	.byte	0xb
	.4byte	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x4
	.4byte	.LASF110
	.2byte	0x1f5
	.byte	0x8
	.4byte	0x9a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc39
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x1f5
	.byte	0x3a
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x1f7
	.byte	0x1e
	.4byte	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x1f8
	.byte	0x8
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF111
	.2byte	0x1dd
	.byte	0x8
	.4byte	0x9a
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc81
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x1dd
	.byte	0x3b
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x1df
	.byte	0x1e
	.4byte	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF104
	.2byte	0x1e0
	.byte	0x8
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF112
	.2byte	0x1c0
	.byte	0xc
	.4byte	0xc0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd8
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x1c0
	.byte	0x3f
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF113
	.2byte	0x1c0
	.byte	0x55
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x1c2
	.byte	0x18
	.4byte	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x1c3
	.byte	0xc
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF114
	.2byte	0x18f
	.byte	0xc
	.4byte	0xc0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd2f
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x18f
	.byte	0x35
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x191
	.byte	0x18
	.4byte	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x192
	.byte	0xc
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x195
	.byte	0xe
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x28
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x16e
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd65
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x16e
	.byte	0x30
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x170
	.byte	0x12
	.4byte	0x516
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF117
	.2byte	0x122
	.byte	0x17
	.4byte	0x1ea
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe11
	.uleb128 0x2
	.4byte	.LASF69
	.2byte	0x122
	.byte	0x40
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF42
	.2byte	0x123
	.byte	0x19
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF118
	.2byte	0x124
	.byte	0x1d
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x125
	.byte	0x22
	.4byte	0xee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x126
	.byte	0x2f
	.4byte	0xe16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x128
	.byte	0x19
	.4byte	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x129
	.byte	0x17
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x12a
	.byte	0xa
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0xd
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1
	.4byte	.LASF121
	.2byte	0x14d
	.byte	0x14
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x156
	.uleb128 0x9
	.4byte	0xe11
	.uleb128 0x29
	.4byte	.LASF122
	.byte	0x1
	.byte	0xdb
	.byte	0x17
	.4byte	0x1ea
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x3a
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x53
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0x72
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.4byte	.LASF123
	.byte	0xdd
	.byte	0xb
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.4byte	.LASF46
	.byte	0xde
	.byte	0xa
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.sleb128 6
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.sleb128 15
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 219
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x24
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.4byte	0xdc
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"pucBuffer"
.LASF83:
	.string	"xReturn"
.LASF94:
	.string	"xNextMessageLength"
.LASF89:
	.string	"prvReadMessageFromBuffer"
.LASF14:
	.string	"size_t"
.LASF36:
	.string	"TimeOut_t"
.LASF42:
	.string	"xTriggerLevelBytes"
.LASF82:
	.string	"pxHigherPriorityTaskWoken"
.LASF117:
	.string	"xStreamBufferGenericCreateStatic"
.LASF50:
	.string	"xTaskGenericNotifyFromISR"
.LASF105:
	.string	"xRequiredSpace"
.LASF56:
	.string	"xTaskNotifyStateClear"
.LASF122:
	.string	"xStreamBufferGenericCreate"
.LASF97:
	.string	"xStreamBufferNextMessageLengthBytes"
.LASF12:
	.string	"long long unsigned int"
.LASF65:
	.string	"xStreamBuffer"
.LASF24:
	.string	"StaticStreamBuffer_t"
.LASF43:
	.string	"xTaskWaitingToReceive"
.LASF33:
	.string	"xTIME_OUT"
.LASF107:
	.string	"xStreamBufferSendFromISR"
.LASF120:
	.string	"pxStaticStreamBuffer"
.LASF5:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF100:
	.string	"xTicksToWait"
.LASF66:
	.string	"ucStreamBufferGetStreamBufferType"
.LASF22:
	.string	"ucDummy3"
.LASF103:
	.string	"xDataLengthBytes"
.LASF59:
	.string	"vTaskEnterCritical"
.LASF118:
	.string	"xIsMessageBuffer"
.LASF58:
	.string	"vTaskExitCritical"
.LASF4:
	.string	"long int"
.LASF125:
	.string	"tskTaskControlBlock"
.LASF27:
	.string	"eSetBits"
.LASF115:
	.string	"vStreamBufferSetStreamBufferNumber"
.LASF25:
	.string	"TaskHandle_t"
.LASF49:
	.string	"memcpy"
.LASF102:
	.string	"pvTxData"
.LASF17:
	.string	"BaseType_t"
.LASF116:
	.string	"vStreamBufferDelete"
.LASF92:
	.string	"xOriginalTail"
.LASF68:
	.string	"pxStreamBuffer"
.LASF109:
	.string	"xTimeOut"
.LASF76:
	.string	"xBytesAvailable"
.LASF34:
	.string	"xOverflowCount"
.LASF44:
	.string	"xTaskWaitingToSend"
.LASF23:
	.string	"uxDummy4"
.LASF63:
	.string	"pvPortMalloc"
.LASF95:
	.string	"xTempNextMessageLength"
.LASF78:
	.string	"xNextTail"
.LASF13:
	.string	"unsigned int"
.LASF64:
	.string	"vAssertCalled"
.LASF35:
	.string	"xTimeOnEntering"
.LASF38:
	.string	"StreamBufferDef_t"
.LASF71:
	.string	"xCount"
.LASF29:
	.string	"eSetValueWithOverwrite"
.LASF11:
	.string	"long unsigned int"
.LASF112:
	.string	"xStreamBufferSetTriggerLevel"
.LASF126:
	.string	"prvInitialiseNewStreamBuffer"
.LASF37:
	.string	"StreamBufferHandle_t"
.LASF9:
	.string	"short unsigned int"
.LASF110:
	.string	"xStreamBufferBytesAvailable"
.LASF67:
	.string	"uxStreamBufferGetStreamBufferNumber"
.LASF41:
	.string	"xLength"
.LASF62:
	.string	"vPortFree"
.LASF91:
	.string	"xBufferLengthBytes"
.LASF73:
	.string	"prvReadBytesFromBuffer"
.LASF28:
	.string	"eIncrement"
.LASF55:
	.string	"xTaskGetCurrentTaskHandle"
.LASF19:
	.string	"TickType_t"
.LASF75:
	.string	"xMaxCount"
.LASF106:
	.string	"xShouldWrite"
.LASF119:
	.string	"pucStreamBufferStorageArea"
.LASF31:
	.string	"eNotifyAction"
.LASF87:
	.string	"xBytesToStoreMessageLength"
.LASF70:
	.string	"xWriteValue"
.LASF32:
	.string	"xSTATIC_STREAM_BUFFER"
.LASF69:
	.string	"xBufferSizeBytes"
.LASF72:
	.string	"prvBytesInBuffer"
.LASF108:
	.string	"xStreamBufferSend"
.LASF6:
	.string	"int32_t"
.LASF96:
	.string	"xStreamBufferReceiveFromISR"
.LASF3:
	.string	"short int"
.LASF74:
	.string	"pucData"
.LASF90:
	.string	"pvRxData"
.LASF54:
	.string	"xTaskResumeAll"
.LASF86:
	.string	"xStreamBufferIsFull"
.LASF113:
	.string	"xTriggerLevel"
.LASF84:
	.string	"uxSavedInterruptStatus"
.LASF104:
	.string	"xSpace"
.LASF10:
	.string	"uint32_t"
.LASF15:
	.string	"long double"
.LASF81:
	.string	"xStreamBufferReceiveCompletedFromISR"
.LASF47:
	.string	"uxStreamBufferNumber"
.LASF16:
	.string	"char"
.LASF21:
	.string	"pvDummy2"
.LASF20:
	.string	"uxDummy1"
.LASF79:
	.string	"prvWriteBytesToBuffer"
.LASF101:
	.string	"prvWriteMessageToBuffer"
.LASF52:
	.string	"xTaskCheckForTimeOut"
.LASF123:
	.string	"pucAllocatedMemory"
.LASF124:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF8:
	.string	"unsigned char"
.LASF80:
	.string	"xNextHead"
.LASF51:
	.string	"xTaskGenericNotify"
.LASF57:
	.string	"vTaskSuspendAll"
.LASF93:
	.string	"xReceivedLength"
.LASF98:
	.string	"xTempReturn"
.LASF60:
	.string	"memset"
.LASF30:
	.string	"eSetValueWithoutOverwrite"
.LASF39:
	.string	"xTail"
.LASF7:
	.string	"uint8_t"
.LASF114:
	.string	"xStreamBufferReset"
.LASF99:
	.string	"xStreamBufferReceive"
.LASF26:
	.string	"eNoAction"
.LASF111:
	.string	"xStreamBufferSpacesAvailable"
.LASF121:
	.string	"xSize"
.LASF46:
	.string	"ucFlags"
.LASF53:
	.string	"xTaskNotifyWait"
.LASF40:
	.string	"xHead"
.LASF77:
	.string	"xFirstLength"
.LASF48:
	.string	"StreamBuffer_t"
.LASF18:
	.string	"UBaseType_t"
.LASF88:
	.string	"xStreamBufferIsEmpty"
.LASF61:
	.string	"vTaskSetTimeOutState"
.LASF85:
	.string	"xStreamBufferSendCompletedFromISR"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/stream_buffer.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
