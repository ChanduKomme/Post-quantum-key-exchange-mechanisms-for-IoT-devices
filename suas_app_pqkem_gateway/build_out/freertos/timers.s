	.file	"timers.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos" "/home/chandu/sdk/bl602_iot_sdk/components/freertos/timers.c"
	.section	.bss.xActiveTimerList1,"aw",@nobits
	.align	2
	.type	xActiveTimerList1, @object
	.size	xActiveTimerList1, 20
xActiveTimerList1:
	.zero	20
	.section	.bss.xActiveTimerList2,"aw",@nobits
	.align	2
	.type	xActiveTimerList2, @object
	.size	xActiveTimerList2, 20
xActiveTimerList2:
	.zero	20
	.section	.sbss.pxCurrentTimerList,"aw",@nobits
	.align	2
	.type	pxCurrentTimerList, @object
	.size	pxCurrentTimerList, 4
pxCurrentTimerList:
	.zero	4
	.section	.sbss.pxOverflowTimerList,"aw",@nobits
	.align	2
	.type	pxOverflowTimerList, @object
	.size	pxOverflowTimerList, 4
pxOverflowTimerList:
	.zero	4
	.section	.sbss.xTimerQueue,"aw",@nobits
	.align	2
	.type	xTimerQueue, @object
	.size	xTimerQueue, 4
xTimerQueue:
	.zero	4
	.section	.sbss.xTimerTaskHandle,"aw",@nobits
	.align	2
	.type	xTimerTaskHandle, @object
	.size	xTimerTaskHandle, 4
xTimerTaskHandle:
	.zero	4
	.section	.rodata
	.align	2
.LC0:
	.string	"Tmr Svc"
	.section	.text.xTimerCreateTimerTask,"ax",@progbits
	.align	1
	.globl	xTimerCreateTimerTask
	.type	xTimerCreateTimerTask, @function
xTimerCreateTimerTask:
.LFB1:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/timers.c"
	.loc 1 228 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 229 12
	sw	zero,-20(s0)
	.loc 1 235 2
	call	prvCheckForValidListAndQueue
	.loc 1 237 18
	lui	a5,%hi(xTimerQueue)
	lw	a5,%lo(xTimerQueue)(a5)
	.loc 1 237 4
	beq	a5,zero,.L2
.LBB2:
	.loc 1 241 18
	sw	zero,-24(s0)
	.loc 1 242 17
	sw	zero,-28(s0)
	.loc 1 245 4
	addi	a3,s0,-32
	addi	a4,s0,-28
	addi	a5,s0,-24
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	vApplicationGetTimerTaskMemory
	.loc 1 246 23
	lw	a2,-32(s0)
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	mv	a6,a4
	li	a4,31
	li	a3,0
	lui	a1,%hi(.LC0)
	addi	a1,a1,%lo(.LC0)
	lui	a0,%hi(prvTimerTask)
	addi	a0,a0,%lo(prvTimerTask)
	call	xTaskCreateStatic
	mv	a4,a0
	.loc 1 246 21 discriminator 1
	lui	a5,%hi(xTimerTaskHandle)
	sw	a4,%lo(xTimerTaskHandle)(a5)
	.loc 1 254 25
	lui	a5,%hi(xTimerTaskHandle)
	lw	a5,%lo(xTimerTaskHandle)(a5)
	.loc 1 254 6
	beq	a5,zero,.L2
	.loc 1 256 13
	li	a5,1
	sw	a5,-20(s0)
.L2:
.LBE2:
	.loc 1 275 4
	lw	a5,-20(s0)
	bne	a5,zero,.L4
	.loc 1 275 25 discriminator 1
	call	vAssertCalled
.L4:
	.loc 1 276 9
	lw	a5,-20(s0)
	.loc 1 277 1
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
.LFE1:
	.size	xTimerCreateTimerTask, .-xTimerCreateTimerTask
	.section	.text.xTimerCreate,"ax",@progbits
	.align	1
	.globl	xTimerCreate
	.type	xTimerCreate, @function
xTimerCreate:
.LFB2:
	.loc 1 287 2
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
	.loc 1 290 30
	li	a0,44
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 1 292 5
	lw	a5,-20(s0)
	beq	a5,zero,.L7
	.loc 1 297 25
	lw	a5,-20(s0)
	sb	zero,40(a5)
	.loc 1 298 4
	lw	a5,-20(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	prvInitialiseNewTimer
.L7:
	.loc 1 301 10
	lw	a5,-20(s0)
	.loc 1 302 2
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
.LFE2:
	.size	xTimerCreate, .-xTimerCreate
	.section	.text.xTimerCreateStatic,"ax",@progbits
	.align	1
	.globl	xTimerCreateStatic
	.type	xTimerCreateStatic, @function
xTimerCreateStatic:
.LFB3:
	.loc 1 315 2
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
.LBB3:
	.loc 1 323 20
	li	a5,44
	sw	a5,-24(s0)
	.loc 1 324 39
	lw	a4,-24(s0)
	.loc 1 324 6
	li	a5,44
	beq	a4,a5,.L10
	.loc 1 324 46 discriminator 1
	call	vAssertCalled
.L10:
	.loc 1 325 4
	lw	a5,-24(s0)
.LBE3:
	.loc 1 330 5
	lw	a5,-56(s0)
	bne	a5,zero,.L11
	.loc 1 330 32 discriminator 1
	call	vAssertCalled
.L11:
	.loc 1 331 14
	lw	a5,-56(s0)
	sw	a5,-20(s0)
	.loc 1 333 5
	lw	a5,-20(s0)
	beq	a5,zero,.L12
	.loc 1 338 25
	lw	a5,-20(s0)
	li	a4,2
	sb	a4,40(a5)
	.loc 1 340 4
	lw	a5,-20(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	prvInitialiseNewTimer
.L12:
	.loc 1 343 10
	lw	a5,-20(s0)
	.loc 1 344 2
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
	.size	xTimerCreateStatic, .-xTimerCreateStatic
	.section	.text.prvInitialiseNewTimer,"ax",@progbits
	.align	1
	.type	prvInitialiseNewTimer, @function
prvInitialiseNewTimer:
.LFB4:
	.loc 1 355 1
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
	.loc 1 357 4
	lw	a5,-24(s0)
	bne	a5,zero,.L15
	.loc 1 357 45 discriminator 1
	call	vAssertCalled
.L15:
	.loc 1 359 4
	lw	a5,-40(s0)
	beq	a5,zero,.L17
	.loc 1 363 3
	call	prvCheckForValidListAndQueue
	.loc 1 367 27
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 368 35
	lw	a5,-40(s0)
	lw	a4,-24(s0)
	sw	a4,24(a5)
	.loc 1 369 25
	lw	a5,-40(s0)
	lw	a4,-32(s0)
	sw	a4,28(a5)
	.loc 1 370 34
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	sw	a4,32(a5)
	.loc 1 371 24
	lw	a5,-40(s0)
	addi	a5,a5,4
	.loc 1 371 3
	mv	a0,a5
	call	vListInitialiseItem
	.loc 1 372 5
	lw	a5,-28(s0)
	beq	a5,zero,.L17
	.loc 1 374 14
	lw	a5,-40(s0)
	lbu	a5,40(a5)
	.loc 1 374 25
	ori	a5,a5,4
	andi	a4,a5,0xff
	lw	a5,-40(s0)
	sb	a4,40(a5)
.L17:
	.loc 1 378 1
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
	.size	prvInitialiseNewTimer, .-prvInitialiseNewTimer
	.section	.text.xTimerGenericCommand,"ax",@progbits
	.align	1
	.globl	xTimerGenericCommand
	.type	xTimerGenericCommand, @function
xTimerGenericCommand:
.LFB5:
	.loc 1 382 1
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
	.loc 1 383 12
	sw	zero,-20(s0)
	.loc 1 386 4
	lw	a5,-52(s0)
	bne	a5,zero,.L19
	.loc 1 386 24 discriminator 1
	call	vAssertCalled
.L19:
	.loc 1 390 18
	lui	a5,%hi(xTimerQueue)
	lw	a5,%lo(xTimerQueue)(a5)
	.loc 1 390 4
	beq	a5,zero,.L20
	.loc 1 393 23
	lw	a5,-56(s0)
	sw	a5,-36(s0)
	.loc 1 394 45
	lw	a5,-60(s0)
	sw	a5,-32(s0)
	.loc 1 395 39
	lw	a5,-52(s0)
	sw	a5,-28(s0)
	.loc 1 397 5
	lw	a4,-56(s0)
	li	a5,5
	bgt	a4,a5,.L21
	.loc 1 399 8
	call	xTaskGetSchedulerState
	mv	a4,a0
	.loc 1 399 6 discriminator 1
	li	a5,2
	bne	a4,a5,.L22
	.loc 1 401 15
	lui	a5,%hi(xTimerQueue)
	lw	a5,%lo(xTimerQueue)(a5)
	addi	a4,s0,-36
	li	a3,0
	lw	a2,-68(s0)
	mv	a1,a4
	mv	a0,a5
	call	xQueueGenericSend
	sw	a0,-20(s0)
	j	.L20
.L22:
	.loc 1 405 15
	lui	a5,%hi(xTimerQueue)
	lw	a5,%lo(xTimerQueue)(a5)
	addi	a4,s0,-36
	li	a3,0
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	xQueueGenericSend
	sw	a0,-20(s0)
	j	.L20
.L21:
	.loc 1 410 14
	lui	a5,%hi(xTimerQueue)
	lw	a5,%lo(xTimerQueue)(a5)
	addi	a4,s0,-36
	li	a3,0
	lw	a2,-64(s0)
	mv	a1,a4
	mv	a0,a5
	call	xQueueGenericSendFromISR
	sw	a0,-20(s0)
.L20:
	.loc 1 420 9
	lw	a5,-20(s0)
	.loc 1 421 1
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
.LFE5:
	.size	xTimerGenericCommand, .-xTimerGenericCommand
	.section	.text.xTimerGetTimerDaemonTaskHandle,"ax",@progbits
	.align	1
	.globl	xTimerGetTimerDaemonTaskHandle
	.type	xTimerGetTimerDaemonTaskHandle, @function
xTimerGetTimerDaemonTaskHandle:
.LFB6:
	.loc 1 425 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 428 5
	lui	a5,%hi(xTimerTaskHandle)
	lw	a5,%lo(xTimerTaskHandle)(a5)
	.loc 1 428 4
	bne	a5,zero,.L25
	.loc 1 428 12 discriminator 1
	call	vAssertCalled
.L25:
	.loc 1 429 9
	lui	a5,%hi(xTimerTaskHandle)
	lw	a5,%lo(xTimerTaskHandle)(a5)
	.loc 1 430 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	xTimerGetTimerDaemonTaskHandle, .-xTimerGetTimerDaemonTaskHandle
	.section	.text.xTimerGetPeriod,"ax",@progbits
	.align	1
	.globl	xTimerGetPeriod
	.type	xTimerGetPeriod, @function
xTimerGetPeriod:
.LFB7:
	.loc 1 434 1
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
	.loc 1 435 10
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 437 4
	lw	a5,-36(s0)
	bne	a5,zero,.L28
	.loc 1 437 24 discriminator 1
	call	vAssertCalled
.L28:
	.loc 1 438 16
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 1 439 1
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
	.size	xTimerGetPeriod, .-xTimerGetPeriod
	.section	.text.vTimerSetReloadMode,"ax",@progbits
	.align	1
	.globl	vTimerSetReloadMode
	.type	vTimerSetReloadMode, @function
vTimerSetReloadMode:
.LFB8:
	.loc 1 443 1
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
	.loc 1 444 11
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 446 4
	lw	a5,-36(s0)
	bne	a5,zero,.L31
	.loc 1 446 24 discriminator 1
	call	vAssertCalled
.L31:
	.loc 1 447 2
	call	vTaskEnterCritical
	.loc 1 449 5
	lw	a5,-40(s0)
	beq	a5,zero,.L32
	.loc 1 451 11
	lw	a5,-20(s0)
	lbu	a5,40(a5)
	.loc 1 451 22
	ori	a5,a5,4
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,40(a5)
	j	.L33
.L32:
	.loc 1 455 11
	lw	a5,-20(s0)
	lbu	a5,40(a5)
	.loc 1 455 22
	andi	a5,a5,-5
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,40(a5)
.L33:
	.loc 1 458 2
	call	vTaskExitCritical
	.loc 1 459 1
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
	.size	vTimerSetReloadMode, .-vTimerSetReloadMode
	.section	.text.uxTimerGetReloadMode,"ax",@progbits
	.align	1
	.globl	uxTimerGetReloadMode
	.type	uxTimerGetReloadMode, @function
uxTimerGetReloadMode:
.LFB9:
	.loc 1 463 1
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
	.loc 1 464 11
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 467 4
	lw	a5,-36(s0)
	bne	a5,zero,.L35
	.loc 1 467 24 discriminator 1
	call	vAssertCalled
.L35:
	.loc 1 468 2
	call	vTaskEnterCritical
	.loc 1 470 16
	lw	a5,-24(s0)
	lbu	a5,40(a5)
	.loc 1 470 27
	andi	a5,a5,4
	.loc 1 470 5
	bne	a5,zero,.L36
	.loc 1 473 13
	sw	zero,-20(s0)
	j	.L37
.L36:
	.loc 1 478 13
	li	a5,1
	sw	a5,-20(s0)
.L37:
	.loc 1 481 2
	call	vTaskExitCritical
	.loc 1 483 9
	lw	a5,-20(s0)
	.loc 1 484 1
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
	.size	uxTimerGetReloadMode, .-uxTimerGetReloadMode
	.section	.text.xTimerGetExpiryTime,"ax",@progbits
	.align	1
	.globl	xTimerGetExpiryTime
	.type	xTimerGetExpiryTime, @function
xTimerGetExpiryTime:
.LFB10:
	.loc 1 488 1
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
	.loc 1 489 11
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 492 4
	lw	a5,-36(s0)
	bne	a5,zero,.L40
	.loc 1 492 24 discriminator 1
	call	vAssertCalled
.L40:
	.loc 1 493 10
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 494 9
	lw	a5,-24(s0)
	.loc 1 495 1
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
	.size	xTimerGetExpiryTime, .-xTimerGetExpiryTime
	.section	.text.pcTimerGetName,"ax",@progbits
	.align	1
	.globl	pcTimerGetName
	.type	pcTimerGetName, @function
pcTimerGetName:
.LFB11:
	.loc 1 499 1
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
	.loc 1 500 10
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 502 4
	lw	a5,-36(s0)
	bne	a5,zero,.L43
	.loc 1 502 24 discriminator 1
	call	vAssertCalled
.L43:
	.loc 1 503 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 504 1
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
	.size	pcTimerGetName, .-pcTimerGetName
	.section	.text.prvProcessExpiredTimer,"ax",@progbits
	.align	1
	.type	prvProcessExpiredTimer, @function
prvProcessExpiredTimer:
.LFB12:
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
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 510 69
	lui	a5,%hi(pxCurrentTimerList)
	lw	a5,%lo(pxCurrentTimerList)(a5)
	.loc 1 510 82
	lw	a5,12(a5)
	.loc 1 510 17
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 514 25
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 514 11
	mv	a0,a5
	call	uxListRemove
	.loc 1 519 15
	lw	a5,-20(s0)
	lbu	a5,40(a5)
	.loc 1 519 26
	andi	a5,a5,4
	.loc 1 519 4
	beq	a5,zero,.L46
	.loc 1 524 71
	lw	a5,-20(s0)
	lw	a4,24(a5)
	.loc 1 524 62
	lw	a5,-36(s0)
	add	a5,a4,a5
	.loc 1 524 7
	lw	a3,-36(s0)
	lw	a2,-40(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	prvInsertTimerInActiveList
	mv	a5,a0
	.loc 1 524 5 discriminator 1
	beq	a5,zero,.L47
	.loc 1 528 14
	li	a4,0
	li	a3,0
	lw	a2,-36(s0)
	li	a1,0
	lw	a0,-20(s0)
	call	xTimerGenericCommand
	sw	a0,-24(s0)
	.loc 1 529 6
	lw	a5,-24(s0)
	bne	a5,zero,.L47
	.loc 1 529 27 discriminator 1
	call	vAssertCalled
	j	.L47
.L46:
	.loc 1 539 10
	lw	a5,-20(s0)
	lbu	a5,40(a5)
	.loc 1 539 21
	andi	a5,a5,-2
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,40(a5)
.L47:
	.loc 1 544 9
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 544 2
	lw	a0,-20(s0)
	jalr	a5
.LVL0:
	.loc 1 545 1
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
	.size	prvProcessExpiredTimer, .-prvProcessExpiredTimer
	.section	.text.prvTimerTask,"ax",@progbits
	.align	1
	.type	prvTimerTask, @function
prvTimerTask:
.LFB13:
	.loc 1 549 1
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
.L49:
	.loc 1 572 21
	addi	a5,s0,-24
	mv	a0,a5
	call	prvGetNextExpireTime
	sw	a0,-20(s0)
	.loc 1 576 3
	lw	a5,-24(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	prvProcessTimerOrBlockTask
	.loc 1 579 3 discriminator 2
	call	prvProcessReceivedCommands
	.loc 1 572 19
	nop
	j	.L49
	.cfi_endproc
.LFE13:
	.size	prvTimerTask, .-prvTimerTask
	.section	.text.prvProcessTimerOrBlockTask,"ax",@progbits
	.align	1
	.type	prvProcessTimerOrBlockTask, @function
prvProcessTimerOrBlockTask:
.LFB14:
	.loc 1 585 1
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
	.loc 1 589 2
	call	vTaskSuspendAll
	.loc 1 596 14
	addi	a5,s0,-24
	mv	a0,a5
	call	prvSampleTimeNow
	sw	a0,-20(s0)
	.loc 1 597 31
	lw	a5,-24(s0)
	.loc 1 597 5
	bne	a5,zero,.L51
	.loc 1 600 6
	lw	a5,-40(s0)
	bne	a5,zero,.L52
	.loc 1 600 50 discriminator 1
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	bgtu	a4,a5,.L52
	.loc 1 602 14
	call	xTaskResumeAll
	.loc 1 603 5
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	prvProcessExpiredTimer
	.loc 1 641 1
	j	.L57
.L52:
	.loc 1 613 7
	lw	a5,-40(s0)
	beq	a5,zero,.L54
	.loc 1 617 49
	lui	a5,%hi(pxOverflowTimerList)
	lw	a5,%lo(pxOverflowTimerList)(a5)
	lw	a5,0(a5)
	.loc 1 617 113
	bne	a5,zero,.L55
	.loc 1 617 20 discriminator 1
	li	a5,1
	sw	a5,-40(s0)
	j	.L54
.L55:
	.loc 1 617 20 is_stmt 0 discriminator 2
	sw	zero,-40(s0)
.L54:
	.loc 1 620 5 is_stmt 1
	lui	a5,%hi(xTimerQueue)
	lw	a3,%lo(xTimerQueue)(a5)
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	lw	a2,-40(s0)
	mv	a1,a5
	mv	a0,a3
	call	vQueueWaitForMessageRestricted
	.loc 1 622 9
	call	xTaskResumeAll
	mv	a5,a0
	.loc 1 622 7 discriminator 1
	bne	a5,zero,.L57
	.loc 1 628 6
 #APP
# 628 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/timers.c" 1
	ecall
# 0 "" 2
	.loc 1 641 1
 #NO_APP
	j	.L57
.L51:
	.loc 1 638 13
	call	xTaskResumeAll
.L57:
	.loc 1 641 1
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
	.size	prvProcessTimerOrBlockTask, .-prvProcessTimerOrBlockTask
	.section	.text.prvGetNextExpireTime,"ax",@progbits
	.align	1
	.type	prvGetNextExpireTime, @function
prvGetNextExpireTime:
.LFB15:
	.loc 1 645 1
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
	.loc 1 655 46
	lui	a5,%hi(pxCurrentTimerList)
	lw	a5,%lo(pxCurrentTimerList)(a5)
	lw	a5,0(a5)
	.loc 1 655 110
	bne	a5,zero,.L59
	.loc 1 655 110 is_stmt 0 discriminator 1
	li	a5,1
	j	.L60
.L59:
	.loc 1 655 110 discriminator 2
	li	a5,0
.L60:
	.loc 1 655 18 is_stmt 1 discriminator 4
	lw	a4,-36(s0)
	sw	a5,0(a4)
	.loc 1 656 6
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 656 4
	bne	a5,zero,.L61
	.loc 1 658 47
	lui	a5,%hi(pxCurrentTimerList)
	lw	a5,%lo(pxCurrentTimerList)(a5)
	.loc 1 658 59
	lw	a5,12(a5)
	.loc 1 658 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	j	.L62
.L61:
	.loc 1 663 19
	sw	zero,-20(s0)
.L62:
	.loc 1 666 9
	lw	a5,-20(s0)
	.loc 1 667 1
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
	.size	prvGetNextExpireTime, .-prvGetNextExpireTime
	.section	.text.prvSampleTimeNow,"ax",@progbits
	.align	1
	.type	prvSampleTimeNow, @function
prvSampleTimeNow:
.LFB16:
	.loc 1 671 1
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
	.loc 1 675 13
	call	xTaskGetTickCount
	sw	a0,-20(s0)
	.loc 1 677 15
	lui	a5,%hi(xLastTime.2)
	lw	a5,%lo(xLastTime.2)(a5)
	.loc 1 677 4
	lw	a4,-20(s0)
	bgeu	a4,a5,.L65
	.loc 1 679 3
	call	prvSwitchTimerLists
	.loc 1 680 29
	lw	a5,-36(s0)
	li	a4,1
	sw	a4,0(a5)
	j	.L66
.L65:
	.loc 1 684 29
	lw	a5,-36(s0)
	sw	zero,0(a5)
.L66:
	.loc 1 687 12
	lui	a5,%hi(xLastTime.2)
	lw	a4,-20(s0)
	sw	a4,%lo(xLastTime.2)(a5)
	.loc 1 689 9
	lw	a5,-20(s0)
	.loc 1 690 1
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
	.size	prvSampleTimeNow, .-prvSampleTimeNow
	.section	.text.prvInsertTimerInActiveList,"ax",@progbits
	.align	1
	.type	prvInsertTimerInActiveList, @function
prvInsertTimerInActiveList:
.LFB17:
	.loc 1 694 1
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
	.loc 1 695 12
	sw	zero,-20(s0)
	.loc 1 697 49
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,4(a5)
	.loc 1 698 46
	lw	a5,-36(s0)
	lw	a4,-36(s0)
	sw	a4,16(a5)
	.loc 1 700 4
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	bgtu	a4,a5,.L69
	.loc 1 704 35
	lw	a4,-44(s0)
	lw	a5,-48(s0)
	sub	a4,a4,a5
	.loc 1 704 64
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 704 5
	bltu	a4,a5,.L70
	.loc 1 708 21
	li	a5,1
	sw	a5,-20(s0)
	j	.L71
.L70:
	.loc 1 712 4
	lui	a5,%hi(pxOverflowTimerList)
	lw	a4,%lo(pxOverflowTimerList)(a5)
	.loc 1 712 38
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 712 4
	mv	a1,a5
	mv	a0,a4
	call	vListInsert
	j	.L71
.L69:
	.loc 1 717 5
	lw	a4,-44(s0)
	lw	a5,-48(s0)
	bgeu	a4,a5,.L72
	.loc 1 717 35 discriminator 1
	lw	a4,-40(s0)
	lw	a5,-48(s0)
	bltu	a4,a5,.L72
	.loc 1 722 21
	li	a5,1
	sw	a5,-20(s0)
	j	.L71
.L72:
	.loc 1 726 4
	lui	a5,%hi(pxCurrentTimerList)
	lw	a4,%lo(pxCurrentTimerList)(a5)
	.loc 1 726 37
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 726 4
	mv	a1,a5
	mv	a0,a4
	call	vListInsert
.L71:
	.loc 1 730 9
	lw	a5,-20(s0)
	.loc 1 731 1
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
	.size	prvInsertTimerInActiveList, .-prvInsertTimerInActiveList
	.section	.text.prvProcessReceivedCommands,"ax",@progbits
	.align	1
	.type	prvProcessReceivedCommands, @function
prvProcessReceivedCommands:
.LFB18:
	.loc 1 735 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 1 741 7
	j	.L78
.L91:
	.loc 1 747 16
	lw	a5,-48(s0)
	.loc 1 747 6
	bge	a5,zero,.L76
.LBB4:
	.loc 1 749 40
	addi	a5,s0,-48
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 753 7
	lw	a5,-20(s0)
	bne	a5,zero,.L77
	.loc 1 753 31 discriminator 1
	call	vAssertCalled
.L77:
	.loc 1 756 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 756 47
	lw	a4,-20(s0)
	lw	a3,4(a4)
	.loc 1 756 73
	lw	a4,-20(s0)
	lw	a4,8(a4)
	.loc 1 756 5
	mv	a1,a4
	mv	a0,a3
	jalr	a5
.LVL1:
.L76:
.LBE4:
	.loc 1 767 15
	lw	a5,-48(s0)
	.loc 1 767 5
	blt	a5,zero,.L78
	.loc 1 771 12
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 1 773 44
	lw	a5,-24(s0)
	lw	a5,20(a5)
	.loc 1 773 6
	beq	a5,zero,.L79
	.loc 1 776 28
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 776 14
	mv	a0,a5
	call	uxListRemove
.L79:
	.loc 1 791 15
	addi	a5,s0,-52
	mv	a0,a5
	call	prvSampleTimeNow
	sw	a0,-28(s0)
	.loc 1 793 20
	lw	a5,-48(s0)
	.loc 1 793 4
	li	a4,9
	beq	a5,a4,.L80
	li	a4,9
	bgt	a5,a4,.L92
	li	a4,8
	beq	a5,a4,.L82
	li	a4,8
	bgt	a5,a4,.L92
	li	a4,7
	bgt	a5,a4,.L92
	li	a4,6
	bge	a5,a4,.L83
	li	a4,5
	beq	a5,a4,.L84
	li	a4,5
	bgt	a5,a4,.L92
	li	a4,4
	beq	a5,a4,.L80
	li	a4,4
	bgt	a5,a4,.L92
	li	a4,2
	bgt	a5,a4,.L85
	bge	a5,zero,.L83
	.loc 1 875 6
	j	.L92
.L85:
	.loc 1 793 4
	li	a4,3
	beq	a5,a4,.L82
	.loc 1 875 6
	j	.L92
.L83:
	.loc 1 801 13
	lw	a5,-24(s0)
	lbu	a5,40(a5)
	.loc 1 801 24
	ori	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,40(a5)
	.loc 1 802 74
	lw	a4,-44(s0)
	.loc 1 802 98
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 1 802 89
	add	a5,a4,a5
	.loc 1 802 158
	lw	a4,-44(s0)
	.loc 1 802 10
	mv	a3,a4
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-24(s0)
	call	prvInsertTimerInActiveList
	mv	a5,a0
	.loc 1 802 8 discriminator 1
	beq	a5,zero,.L93
	.loc 1 806 14
	lw	a5,-24(s0)
	lw	a5,32(a5)
	.loc 1 806 7
	lw	a0,-24(s0)
	jalr	a5
.LVL2:
	.loc 1 809 20
	lw	a5,-24(s0)
	lbu	a5,40(a5)
	.loc 1 809 31
	andi	a5,a5,4
	.loc 1 809 9
	beq	a5,zero,.L93
	.loc 1 811 98
	lw	a4,-44(s0)
	.loc 1 811 122
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 1 811 113
	add	a5,a4,a5
	.loc 1 811 18
	li	a4,0
	li	a3,0
	mv	a2,a5
	li	a1,0
	lw	a0,-24(s0)
	call	xTimerGenericCommand
	sw	a0,-32(s0)
	.loc 1 812 10
	lw	a5,-32(s0)
	bne	a5,zero,.L93
	.loc 1 812 31 discriminator 1
	call	vAssertCalled
	.loc 1 824 6
	j	.L93
.L82:
	.loc 1 829 13
	lw	a5,-24(s0)
	lbu	a5,40(a5)
	.loc 1 829 24
	andi	a5,a5,-2
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,40(a5)
	.loc 1 830 6
	j	.L78
.L80:
	.loc 1 834 13
	lw	a5,-24(s0)
	lbu	a5,40(a5)
	.loc 1 834 24
	ori	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,40(a5)
	.loc 1 835 64
	lw	a4,-44(s0)
	.loc 1 835 35
	lw	a5,-24(s0)
	sw	a4,24(a5)
	.loc 1 836 21
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 1 836 8
	bne	a5,zero,.L88
	.loc 1 836 58 discriminator 1
	call	vAssertCalled
.L88:
	.loc 1 844 72
	lw	a5,-24(s0)
	lw	a4,24(a5)
	.loc 1 844 63
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 844 15
	lw	a3,-28(s0)
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-24(s0)
	call	prvInsertTimerInActiveList
	.loc 1 845 6
	j	.L78
.L84:
	.loc 1 853 20
	lw	a5,-24(s0)
	lbu	a5,40(a5)
	.loc 1 853 31
	andi	a5,a5,2
	.loc 1 853 9
	bne	a5,zero,.L89
	.loc 1 855 8
	lw	a0,-24(s0)
	call	vPortFree
	.loc 1 871 6
	j	.L78
.L89:
	.loc 1 859 15
	lw	a5,-24(s0)
	lbu	a5,40(a5)
	.loc 1 859 26
	andi	a5,a5,-2
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,40(a5)
	.loc 1 871 6
	j	.L78
.L92:
	.loc 1 875 6
	nop
	j	.L78
.L93:
	.loc 1 824 6
	nop
.L78:
	.loc 1 741 9
	lui	a5,%hi(xTimerQueue)
	lw	a5,%lo(xTimerQueue)(a5)
	addi	a4,s0,-48
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	xQueueReceive
	mv	a5,a0
	.loc 1 741 68 discriminator 1
	bne	a5,zero,.L91
	.loc 1 879 1
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
.LFE18:
	.size	prvProcessReceivedCommands, .-prvProcessReceivedCommands
	.section	.text.prvSwitchTimerLists,"ax",@progbits
	.align	1
	.type	prvSwitchTimerLists, @function
prvSwitchTimerLists:
.LFB19:
	.loc 1 883 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 893 7
	j	.L96
.L99:
	.loc 1 895 47
	lui	a5,%hi(pxCurrentTimerList)
	lw	a5,%lo(pxCurrentTimerList)(a5)
	.loc 1 895 59
	lw	a5,12(a5)
	.loc 1 895 19
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 898 55
	lui	a5,%hi(pxCurrentTimerList)
	lw	a5,%lo(pxCurrentTimerList)(a5)
	.loc 1 898 68
	lw	a5,12(a5)
	.loc 1 898 11
	lw	a5,12(a5)
	sw	a5,-28(s0)
	.loc 1 899 26
	lw	a5,-28(s0)
	addi	a5,a5,4
	.loc 1 899 12
	mv	a0,a5
	call	uxListRemove
	.loc 1 905 10
	lw	a5,-28(s0)
	lw	a5,32(a5)
	.loc 1 905 3
	lw	a0,-28(s0)
	jalr	a5
.LVL3:
	.loc 1 907 16
	lw	a5,-28(s0)
	lbu	a5,40(a5)
	.loc 1 907 27
	andi	a5,a5,4
	.loc 1 907 5
	beq	a5,zero,.L96
	.loc 1 915 45
	lw	a5,-28(s0)
	lw	a5,24(a5)
	.loc 1 915 16
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 916 6
	lw	a4,-32(s0)
	lw	a5,-24(s0)
	bleu	a4,a5,.L97
	.loc 1 918 52
	lw	a5,-28(s0)
	lw	a4,-32(s0)
	sw	a4,4(a5)
	.loc 1 919 49
	lw	a5,-28(s0)
	lw	a4,-28(s0)
	sw	a4,16(a5)
	.loc 1 920 5
	lui	a5,%hi(pxCurrentTimerList)
	lw	a4,%lo(pxCurrentTimerList)(a5)
	.loc 1 920 38
	lw	a5,-28(s0)
	addi	a5,a5,4
	.loc 1 920 5
	mv	a1,a5
	mv	a0,a4
	call	vListInsert
	j	.L96
.L97:
	.loc 1 924 15
	li	a4,0
	li	a3,0
	lw	a2,-24(s0)
	li	a1,0
	lw	a0,-28(s0)
	call	xTimerGenericCommand
	sw	a0,-36(s0)
	.loc 1 925 7
	lw	a5,-36(s0)
	bne	a5,zero,.L96
	.loc 1 925 28 discriminator 1
	call	vAssertCalled
.L96:
	.loc 1 893 35
	lui	a5,%hi(pxCurrentTimerList)
	lw	a5,%lo(pxCurrentTimerList)(a5)
	lw	a5,0(a5)
	.loc 1 893 124
	bne	a5,zero,.L99
	.loc 1 935 9
	lui	a5,%hi(pxCurrentTimerList)
	lw	a5,%lo(pxCurrentTimerList)(a5)
	sw	a5,-20(s0)
	.loc 1 936 21
	lui	a5,%hi(pxOverflowTimerList)
	lw	a4,%lo(pxOverflowTimerList)(a5)
	lui	a5,%hi(pxCurrentTimerList)
	sw	a4,%lo(pxCurrentTimerList)(a5)
	.loc 1 937 22
	lui	a5,%hi(pxOverflowTimerList)
	lw	a4,-20(s0)
	sw	a4,%lo(pxOverflowTimerList)(a5)
	.loc 1 938 1
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
	.size	prvSwitchTimerLists, .-prvSwitchTimerLists
	.section	.rodata
	.align	2
.LC1:
	.string	"TmrQ"
	.section	.text.prvCheckForValidListAndQueue,"ax",@progbits
	.align	1
	.type	prvCheckForValidListAndQueue, @function
prvCheckForValidListAndQueue:
.LFB20:
	.loc 1 942 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 946 2
	call	vTaskEnterCritical
	.loc 1 948 19
	lui	a5,%hi(xTimerQueue)
	lw	a5,%lo(xTimerQueue)(a5)
	.loc 1 948 5
	bne	a5,zero,.L101
	.loc 1 950 4
	lui	a5,%hi(xActiveTimerList1)
	addi	a0,a5,%lo(xActiveTimerList1)
	call	vListInitialise
	.loc 1 951 4
	lui	a5,%hi(xActiveTimerList2)
	addi	a0,a5,%lo(xActiveTimerList2)
	call	vListInitialise
	.loc 1 952 23
	lui	a5,%hi(pxCurrentTimerList)
	lui	a4,%hi(xActiveTimerList1)
	addi	a4,a4,%lo(xActiveTimerList1)
	sw	a4,%lo(pxCurrentTimerList)(a5)
	.loc 1 953 24
	lui	a5,%hi(pxOverflowTimerList)
	lui	a4,%hi(xActiveTimerList2)
	addi	a4,a4,%lo(xActiveTimerList2)
	sw	a4,%lo(pxOverflowTimerList)(a5)
.LBB5:
	.loc 1 962 19
	li	a4,0
	lui	a5,%hi(xStaticTimerQueue.0)
	addi	a3,a5,%lo(xStaticTimerQueue.0)
	lui	a5,%hi(ucStaticTimerQueueStorage.1)
	addi	a2,a5,%lo(ucStaticTimerQueueStorage.1)
	li	a1,16
	li	a0,4
	call	xQueueGenericCreateStatic
	mv	a4,a0
	.loc 1 962 17 discriminator 1
	lui	a5,%hi(xTimerQueue)
	sw	a4,%lo(xTimerQueue)(a5)
.LBE5:
	.loc 1 972 21
	lui	a5,%hi(xTimerQueue)
	lw	a5,%lo(xTimerQueue)(a5)
	.loc 1 972 7
	beq	a5,zero,.L101
	.loc 1 974 6
	lui	a5,%hi(xTimerQueue)
	lw	a4,%lo(xTimerQueue)(a5)
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	mv	a0,a4
	call	vQueueAddToRegistry
.L101:
	.loc 1 988 2
	call	vTaskExitCritical
	.loc 1 989 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	prvCheckForValidListAndQueue, .-prvCheckForValidListAndQueue
	.section	.text.xTimerIsTimerActive,"ax",@progbits
	.align	1
	.globl	xTimerIsTimerActive
	.type	xTimerIsTimerActive, @function
xTimerIsTimerActive:
.LFB21:
	.loc 1 993 1
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
	.loc 1 995 10
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 997 4
	lw	a5,-36(s0)
	bne	a5,zero,.L103
	.loc 1 997 24 discriminator 1
	call	vAssertCalled
.L103:
	.loc 1 1000 2
	call	vTaskEnterCritical
	.loc 1 1002 16
	lw	a5,-24(s0)
	lbu	a5,40(a5)
	.loc 1 1002 27
	andi	a5,a5,1
	.loc 1 1002 5
	bne	a5,zero,.L104
	.loc 1 1004 12
	sw	zero,-20(s0)
	j	.L105
.L104:
	.loc 1 1008 12
	li	a5,1
	sw	a5,-20(s0)
.L105:
	.loc 1 1011 2
	call	vTaskExitCritical
	.loc 1 1013 9
	lw	a5,-20(s0)
	.loc 1 1014 1
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
	.size	xTimerIsTimerActive, .-xTimerIsTimerActive
	.section	.text.pvTimerGetTimerID,"ax",@progbits
	.align	1
	.globl	pvTimerGetTimerID
	.type	pvTimerGetTimerID, @function
pvTimerGetTimerID:
.LFB22:
	.loc 1 1018 1
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
	.loc 1 1019 17
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1022 4
	lw	a5,-36(s0)
	bne	a5,zero,.L108
	.loc 1 1022 24 discriminator 1
	call	vAssertCalled
.L108:
	.loc 1 1024 2
	call	vTaskEnterCritical
	.loc 1 1026 12
	lw	a5,-20(s0)
	lw	a5,28(a5)
	sw	a5,-24(s0)
	.loc 1 1028 2
	call	vTaskExitCritical
	.loc 1 1030 9
	lw	a5,-24(s0)
	.loc 1 1031 1
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
	.size	pvTimerGetTimerID, .-pvTimerGetTimerID
	.section	.text.vTimerSetTimerID,"ax",@progbits
	.align	1
	.globl	vTimerSetTimerID
	.type	vTimerSetTimerID, @function
vTimerSetTimerID:
.LFB23:
	.loc 1 1035 1
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
	.loc 1 1036 17
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1038 4
	lw	a5,-36(s0)
	bne	a5,zero,.L111
	.loc 1 1038 24 discriminator 1
	call	vAssertCalled
.L111:
	.loc 1 1040 2
	call	vTaskEnterCritical
	.loc 1 1042 22
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,28(a5)
	.loc 1 1044 2
	call	vTaskExitCritical
	.loc 1 1045 1
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
	.size	vTimerSetTimerID, .-vTimerSetTimerID
	.section	.text.xTimerPendFunctionCallFromISR,"ax",@progbits
	.align	1
	.globl	xTimerPendFunctionCallFromISR
	.type	xTimerPendFunctionCallFromISR, @function
xTimerPendFunctionCallFromISR:
.LFB24:
	.loc 1 1051 2
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
	.loc 1 1057 23
	li	a5,-2
	sw	a5,-36(s0)
	.loc 1 1058 53
	lw	a5,-52(s0)
	sw	a5,-32(s0)
	.loc 1 1059 47
	lw	a5,-56(s0)
	sw	a5,-28(s0)
	.loc 1 1060 47
	lw	a5,-60(s0)
	sw	a5,-24(s0)
	.loc 1 1062 13
	lui	a5,%hi(xTimerQueue)
	lw	a5,%lo(xTimerQueue)(a5)
	addi	a4,s0,-36
	li	a3,0
	lw	a2,-64(s0)
	mv	a1,a4
	mv	a0,a5
	call	xQueueGenericSendFromISR
	sw	a0,-20(s0)
	.loc 1 1066 10
	lw	a5,-20(s0)
	.loc 1 1067 2
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
	.size	xTimerPendFunctionCallFromISR, .-xTimerPendFunctionCallFromISR
	.section	.text.xTimerPendFunctionCall,"ax",@progbits
	.align	1
	.globl	xTimerPendFunctionCall
	.type	xTimerPendFunctionCall, @function
xTimerPendFunctionCall:
.LFB25:
	.loc 1 1075 2
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
	.loc 1 1082 23
	lui	a5,%hi(xTimerQueue)
	lw	a5,%lo(xTimerQueue)(a5)
	.loc 1 1082 5
	bne	a5,zero,.L115
	.loc 1 1082 30 discriminator 1
	call	vAssertCalled
.L115:
	.loc 1 1086 23
	li	a5,-1
	sw	a5,-36(s0)
	.loc 1 1087 53
	lw	a5,-52(s0)
	sw	a5,-32(s0)
	.loc 1 1088 47
	lw	a5,-56(s0)
	sw	a5,-28(s0)
	.loc 1 1089 47
	lw	a5,-60(s0)
	sw	a5,-24(s0)
	.loc 1 1091 13
	lui	a5,%hi(xTimerQueue)
	lw	a5,%lo(xTimerQueue)(a5)
	addi	a4,s0,-36
	li	a3,0
	lw	a2,-64(s0)
	mv	a1,a4
	mv	a0,a5
	call	xQueueGenericSend
	sw	a0,-20(s0)
	.loc 1 1095 10
	lw	a5,-20(s0)
	.loc 1 1096 2
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
.LFE25:
	.size	xTimerPendFunctionCall, .-xTimerPendFunctionCall
	.section	.text.uxTimerGetTimerNumber,"ax",@progbits
	.align	1
	.globl	uxTimerGetTimerNumber
	.type	uxTimerGetTimerNumber, @function
uxTimerGetTimerNumber:
.LFB26:
	.loc 1 1104 2
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
	.loc 1 1105 34
	lw	a5,-20(s0)
	lw	a5,36(a5)
	.loc 1 1106 2
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
	.size	uxTimerGetTimerNumber, .-uxTimerGetTimerNumber
	.section	.text.vTimerSetTimerNumber,"ax",@progbits
	.align	1
	.globl	vTimerSetTimerNumber
	.type	vTimerSetTimerNumber, @function
vTimerSetTimerNumber:
.LFB27:
	.loc 1 1114 2
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
	.loc 1 1115 43
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,36(a5)
	.loc 1 1116 2
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
.LFE27:
	.size	vTimerSetTimerNumber, .-vTimerSetTimerNumber
	.section	.sbss.xLastTime.2,"aw",@nobits
	.align	2
	.type	xLastTime.2, @object
	.size	xLastTime.2, 4
xLastTime.2:
	.zero	4
	.section	.bss.ucStaticTimerQueueStorage.1,"aw",@nobits
	.align	2
	.type	ucStaticTimerQueueStorage.1, @object
	.size	ucStaticTimerQueueStorage.1, 64
ucStaticTimerQueueStorage.1:
	.zero	64
	.section	.bss.xStaticTimerQueue.0,"aw",@nobits
	.align	2
	.type	xStaticTimerQueue.0, @object
	.size	xStaticTimerQueue.0, 80
xStaticTimerQueue.0:
	.zero	80
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/projdefs.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/list.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/queue.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/timers.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOSConfig.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1287
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1f
	.4byte	.LASF193
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x3c
	.uleb128 0x18
	.4byte	0x2b
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x20
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x21
	.byte	0x4
	.uleb128 0x8
	.4byte	0x89
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x8
	.4byte	0x90
	.uleb128 0x6
	.4byte	0x97
	.uleb128 0x8
	.4byte	0x9c
	.uleb128 0x6
	.4byte	0xb0
	.uleb128 0x8
	.4byte	0xa6
	.uleb128 0x22
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x74
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x5f
	.uleb128 0x8
	.4byte	0xbd
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x7b
	.uleb128 0x8
	.4byte	0xce
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x23
	.byte	0x10
	.4byte	0xeb
	.uleb128 0x6
	.4byte	0xf0
	.uleb128 0x15
	.4byte	0xfb
	.uleb128 0x3
	.4byte	0x89
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x3e
	.byte	0x12
	.4byte	0xce
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x3f
	.byte	0x11
	.4byte	0xb1
	.uleb128 0x8
	.4byte	0x107
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x40
	.byte	0x12
	.4byte	0xce
	.uleb128 0x18
	.4byte	0x118
	.uleb128 0x8
	.4byte	0x118
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.byte	0x41
	.byte	0x12
	.4byte	0xce
	.uleb128 0x8
	.4byte	0x12e
	.uleb128 0x6
	.4byte	0xbd
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x14
	.2byte	0x425
	.byte	0x8
	.4byte	0x16c
	.uleb128 0x4
	.4byte	.LASF22
	.2byte	0x42a
	.byte	0xd
	.4byte	0x12e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.2byte	0x42b
	.byte	0x8
	.4byte	0x16c
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	0x89
	.4byte	0x17c
	.uleb128 0xb
	.4byte	0x3c
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF24
	.2byte	0x430
	.byte	0x22
	.4byte	0x144
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0xc
	.2byte	0x433
	.byte	0x8
	.4byte	0x1b0
	.uleb128 0x4
	.4byte	.LASF22
	.2byte	0x438
	.byte	0xd
	.4byte	0x12e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.2byte	0x439
	.byte	0x8
	.4byte	0x1b0
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	0x89
	.4byte	0x1c0
	.uleb128 0xb
	.4byte	0x3c
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF27
	.2byte	0x43b
	.byte	0x27
	.4byte	0x188
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x14
	.2byte	0x43e
	.byte	0x10
	.4byte	0x201
	.uleb128 0x4
	.4byte	.LASF29
	.2byte	0x443
	.byte	0xe
	.4byte	0x118
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.2byte	0x444
	.byte	0x8
	.4byte	0x89
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF30
	.2byte	0x445
	.byte	0x17
	.4byte	0x1c0
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF31
	.2byte	0x449
	.byte	0x3
	.4byte	0x1cc
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x64
	.2byte	0x458
	.byte	0x10
	.4byte	0x2b7
	.uleb128 0x4
	.4byte	.LASF33
	.2byte	0x45a
	.byte	0x8
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.2byte	0x45e
	.byte	0x13
	.4byte	0x2b7
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF35
	.2byte	0x45f
	.byte	0xe
	.4byte	0x118
	.byte	0x2c
	.uleb128 0x4
	.4byte	.LASF36
	.2byte	0x460
	.byte	0x8
	.4byte	0x89
	.byte	0x30
	.uleb128 0x4
	.4byte	.LASF37
	.2byte	0x461
	.byte	0xa
	.4byte	0x2c7
	.byte	0x34
	.uleb128 0x4
	.4byte	.LASF38
	.2byte	0x466
	.byte	0xf
	.4byte	0x118
	.byte	0x44
	.uleb128 0x4
	.4byte	.LASF39
	.2byte	0x469
	.byte	0xf
	.4byte	0x2d7
	.byte	0x48
	.uleb128 0x4
	.4byte	.LASF40
	.2byte	0x46c
	.byte	0xf
	.4byte	0x2d7
	.byte	0x50
	.uleb128 0x4
	.4byte	.LASF41
	.2byte	0x472
	.byte	0x9
	.4byte	0x2e7
	.byte	0x58
	.uleb128 0x4
	.4byte	.LASF42
	.2byte	0x47b
	.byte	0xc
	.4byte	0xce
	.byte	0x5c
	.uleb128 0x4
	.4byte	.LASF43
	.2byte	0x47c
	.byte	0xb
	.4byte	0xbd
	.byte	0x60
	.uleb128 0x4
	.4byte	.LASF44
	.2byte	0x47f
	.byte	0xb
	.4byte	0xbd
	.byte	0x61
	.byte	0
	.uleb128 0xa
	.4byte	0x17c
	.4byte	0x2c7
	.uleb128 0xb
	.4byte	0x3c
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0xbd
	.4byte	0x2d7
	.uleb128 0xb
	.4byte	0x3c
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0x118
	.4byte	0x2e7
	.uleb128 0xb
	.4byte	0x3c
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x89
	.4byte	0x2f7
	.uleb128 0xb
	.4byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF45
	.2byte	0x488
	.byte	0x3
	.4byte	0x20d
	.uleb128 0x23
	.byte	0x4
	.byte	0x6
	.2byte	0x49c
	.byte	0x2
	.4byte	0x326
	.uleb128 0x19
	.4byte	.LASF46
	.2byte	0x49e
	.byte	0x9
	.4byte	0x89
	.uleb128 0x19
	.4byte	.LASF29
	.2byte	0x49f
	.byte	0xf
	.4byte	0x118
	.byte	0
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x50
	.2byte	0x498
	.byte	0x10
	.4byte	0x39b
	.uleb128 0x4
	.4byte	.LASF48
	.2byte	0x49a
	.byte	0x8
	.4byte	0x39b
	.byte	0
	.uleb128 0x24
	.string	"u"
	.byte	0x6
	.2byte	0x4a0
	.byte	0x4
	.4byte	0x303
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF34
	.2byte	0x4a2
	.byte	0xf
	.4byte	0x3ab
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF49
	.2byte	0x4a3
	.byte	0xe
	.4byte	0x3bb
	.byte	0x38
	.uleb128 0x4
	.4byte	.LASF50
	.2byte	0x4a4
	.byte	0xa
	.4byte	0x3cb
	.byte	0x44
	.uleb128 0x4
	.4byte	.LASF51
	.2byte	0x4a7
	.byte	0xb
	.4byte	0xbd
	.byte	0x46
	.uleb128 0x4
	.4byte	.LASF52
	.2byte	0x4af
	.byte	0xf
	.4byte	0x118
	.byte	0x48
	.uleb128 0x4
	.4byte	.LASF53
	.2byte	0x4b0
	.byte	0xb
	.4byte	0xbd
	.byte	0x4c
	.byte	0
	.uleb128 0xa
	.4byte	0x89
	.4byte	0x3ab
	.uleb128 0xb
	.4byte	0x3c
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x201
	.4byte	0x3bb
	.uleb128 0xb
	.4byte	0x3c
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x118
	.4byte	0x3cb
	.uleb128 0xb
	.4byte	0x3c
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0xbd
	.4byte	0x3db
	.uleb128 0xb
	.4byte	0x3c
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF54
	.2byte	0x4b3
	.byte	0x3
	.4byte	0x326
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x2c
	.2byte	0x4e1
	.byte	0x10
	.4byte	0x450
	.uleb128 0x4
	.4byte	.LASF48
	.2byte	0x4e3
	.byte	0x8
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.2byte	0x4e4
	.byte	0x13
	.4byte	0x17c
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF34
	.2byte	0x4e5
	.byte	0xd
	.4byte	0x12e
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF56
	.2byte	0x4e6
	.byte	0x8
	.4byte	0x89
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF57
	.2byte	0x4e7
	.byte	0x11
	.4byte	0xdf
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF58
	.2byte	0x4e9
	.byte	0xf
	.4byte	0x118
	.byte	0x24
	.uleb128 0x4
	.4byte	.LASF59
	.2byte	0x4eb
	.byte	0xa
	.4byte	0xbd
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF60
	.2byte	0x4ed
	.byte	0x3
	.4byte	0x3e7
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x14
	.byte	0x7
	.byte	0x8c
	.byte	0x8
	.4byte	0x4ab
	.uleb128 0x5
	.4byte	.LASF62
	.byte	0x7
	.byte	0x8f
	.byte	0xd
	.4byte	0x12e
	.byte	0
	.uleb128 0x5
	.4byte	.LASF63
	.byte	0x7
	.byte	0x90
	.byte	0x16
	.4byte	0x4ab
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF64
	.byte	0x7
	.byte	0x91
	.byte	0x16
	.4byte	0x4ab
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF65
	.byte	0x7
	.byte	0x92
	.byte	0x9
	.4byte	0x89
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF66
	.byte	0x7
	.byte	0x93
	.byte	0x11
	.4byte	0x4e5
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	0x45c
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x14
	.byte	0x7
	.byte	0xa4
	.byte	0x10
	.4byte	0x4e5
	.uleb128 0x5
	.4byte	.LASF68
	.byte	0x7
	.byte	0xa7
	.byte	0x17
	.4byte	0x124
	.byte	0
	.uleb128 0x5
	.4byte	.LASF69
	.byte	0x7
	.byte	0xa8
	.byte	0xf
	.4byte	0x537
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF70
	.byte	0x7
	.byte	0xa9
	.byte	0x11
	.4byte	0x52b
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	0x4b0
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x7
	.byte	0x96
	.byte	0x1b
	.4byte	0x45c
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0xc
	.byte	0x7
	.byte	0x98
	.byte	0x8
	.4byte	0x52b
	.uleb128 0x5
	.4byte	.LASF62
	.byte	0x7
	.byte	0x9b
	.byte	0xd
	.4byte	0x12e
	.byte	0
	.uleb128 0x5
	.4byte	.LASF63
	.byte	0x7
	.byte	0x9c
	.byte	0x16
	.4byte	0x4ab
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF64
	.byte	0x7
	.byte	0x9d
	.byte	0x16
	.4byte	0x4ab
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x7
	.byte	0x9f
	.byte	0x20
	.4byte	0x4f6
	.uleb128 0x6
	.4byte	0x4ea
	.uleb128 0x8
	.4byte	0x537
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x7
	.byte	0xab
	.byte	0x3
	.4byte	0x4b0
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x8
	.byte	0x46
	.byte	0x25
	.4byte	0x559
	.uleb128 0x6
	.4byte	0x55e
	.uleb128 0x1a
	.4byte	.LASF77
	.uleb128 0x6
	.4byte	0xfb
	.uleb128 0x8
	.4byte	0x563
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x9
	.byte	0x30
	.byte	0x22
	.4byte	0x579
	.uleb128 0x6
	.4byte	0x57e
	.uleb128 0x1a
	.4byte	.LASF78
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0xa
	.byte	0x4d
	.byte	0x22
	.4byte	0x594
	.uleb128 0x8
	.4byte	0x583
	.uleb128 0x6
	.4byte	0x599
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x2c
	.byte	0x1
	.byte	0x49
	.byte	0x10
	.4byte	0x602
	.uleb128 0x5
	.4byte	.LASF81
	.byte	0x1
	.byte	0x4b
	.byte	0xe
	.4byte	0x9c
	.byte	0
	.uleb128 0x5
	.4byte	.LASF82
	.byte	0x1
	.byte	0x4c
	.byte	0xd
	.4byte	0x4ea
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF83
	.byte	0x1
	.byte	0x4d
	.byte	0xd
	.4byte	0x12e
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF84
	.byte	0x1
	.byte	0x4e
	.byte	0x8
	.4byte	0x89
	.byte	0x1c
	.uleb128 0x5
	.4byte	.LASF85
	.byte	0x1
	.byte	0x4f
	.byte	0x1a
	.4byte	0x602
	.byte	0x20
	.uleb128 0x5
	.4byte	.LASF86
	.byte	0x1
	.byte	0x51
	.byte	0xf
	.4byte	0x118
	.byte	0x24
	.uleb128 0x5
	.4byte	.LASF87
	.byte	0x1
	.byte	0x53
	.byte	0xa
	.4byte	0xbd
	.byte	0x28
	.byte	0
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0xa
	.byte	0x52
	.byte	0x10
	.4byte	0x60e
	.uleb128 0x6
	.4byte	0x613
	.uleb128 0x15
	.4byte	0x61e
	.uleb128 0x3
	.4byte	0x583
	.byte	0
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0xa
	.byte	0x58
	.byte	0x10
	.4byte	0x62a
	.uleb128 0x6
	.4byte	0x62f
	.uleb128 0x15
	.4byte	0x63f
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0xce
	.byte	0
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.4byte	0x599
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x1
	.byte	0x58
	.byte	0x10
	.4byte	0x63f
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0x8
	.byte	0x1
	.byte	0x5f
	.byte	0x10
	.4byte	0x67f
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0x1
	.byte	0x61
	.byte	0xd
	.4byte	0x12e
	.byte	0
	.uleb128 0x5
	.4byte	.LASF94
	.byte	0x1
	.byte	0x62
	.byte	0xc
	.4byte	0x67f
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0x64b
	.uleb128 0x8
	.4byte	0x67f
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x1
	.byte	0x63
	.byte	0x3
	.4byte	0x657
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0xc
	.byte	0x1
	.byte	0x66
	.byte	0x10
	.4byte	0x6ca
	.uleb128 0x5
	.4byte	.LASF85
	.byte	0x1
	.byte	0x68
	.byte	0x13
	.4byte	0x61e
	.byte	0
	.uleb128 0x5
	.4byte	.LASF97
	.byte	0x1
	.byte	0x69
	.byte	0x8
	.4byte	0x89
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF98
	.byte	0x1
	.byte	0x6a
	.byte	0xb
	.4byte	0xce
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0x1
	.byte	0x6b
	.byte	0x3
	.4byte	0x695
	.uleb128 0x8
	.4byte	0x6ca
	.uleb128 0x25
	.byte	0xc
	.byte	0x1
	.byte	0x72
	.byte	0x2
	.4byte	0x6fb
	.uleb128 0x1b
	.4byte	.LASF100
	.byte	0x74
	.byte	0x14
	.4byte	0x689
	.uleb128 0x1b
	.4byte	.LASF101
	.byte	0x79
	.byte	0x19
	.4byte	0x6ca
	.byte	0
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x10
	.byte	0x1
	.byte	0x6f
	.byte	0x10
	.4byte	0x721
	.uleb128 0x5
	.4byte	.LASF103
	.byte	0x1
	.byte	0x71
	.byte	0xd
	.4byte	0x107
	.byte	0
	.uleb128 0x26
	.string	"u"
	.byte	0x1
	.byte	0x7b
	.byte	0x4
	.4byte	0x6db
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF104
	.byte	0x1
	.byte	0x7c
	.byte	0x3
	.4byte	0x6fb
	.uleb128 0xd
	.4byte	.LASF105
	.byte	0x87
	.byte	0x10
	.4byte	0x541
	.uleb128 0x5
	.byte	0x3
	.4byte	xActiveTimerList1
	.uleb128 0xd
	.4byte	.LASF106
	.byte	0x88
	.byte	0x10
	.4byte	0x541
	.uleb128 0x5
	.byte	0x3
	.4byte	xActiveTimerList2
	.uleb128 0xd
	.4byte	.LASF107
	.byte	0x89
	.byte	0x11
	.4byte	0x760
	.uleb128 0x5
	.byte	0x3
	.4byte	pxCurrentTimerList
	.uleb128 0x6
	.4byte	0x541
	.uleb128 0x8
	.4byte	0x760
	.uleb128 0xd
	.4byte	.LASF108
	.byte	0x8a
	.byte	0x11
	.4byte	0x760
	.uleb128 0x5
	.byte	0x3
	.4byte	pxOverflowTimerList
	.uleb128 0xd
	.4byte	.LASF109
	.byte	0x8d
	.byte	0x17
	.4byte	0x56d
	.uleb128 0x5
	.byte	0x3
	.4byte	xTimerQueue
	.uleb128 0xd
	.4byte	.LASF110
	.byte	0x8e
	.byte	0x16
	.4byte	0x54d
	.uleb128 0x5
	.byte	0x3
	.4byte	xTimerTaskHandle
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0x9
	.2byte	0x5b2
	.byte	0x7
	.4byte	0x7b5
	.uleb128 0x3
	.4byte	0x56d
	.uleb128 0x3
	.4byte	0x9c
	.byte	0
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0x9
	.2byte	0x5e1
	.byte	0x10
	.4byte	0x56d
	.4byte	0x7e0
	.uleb128 0x3
	.4byte	0x129
	.uleb128 0x3
	.4byte	0x129
	.uleb128 0x3
	.4byte	0x13f
	.uleb128 0x3
	.4byte	0x7e0
	.uleb128 0x3
	.4byte	0xc9
	.byte	0
	.uleb128 0x6
	.4byte	0x3db
	.uleb128 0x13
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x159
	.byte	0x6
	.4byte	0x7f8
	.uleb128 0x3
	.4byte	0x765
	.byte	0
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x364
	.byte	0xc
	.4byte	0x107
	.4byte	0x819
	.uleb128 0x3
	.4byte	0x56d
	.uleb128 0x3
	.4byte	0x8b
	.uleb128 0x3
	.4byte	0x12e
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF115
	.byte	0xb
	.byte	0xa4
	.byte	0x6
	.4byte	0x82b
	.uleb128 0x3
	.4byte	0x89
	.byte	0
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x171
	.byte	0x6
	.4byte	0x843
	.uleb128 0x3
	.4byte	0x765
	.uleb128 0x3
	.4byte	0x53c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF118
	.2byte	0x54c
	.4byte	0x12e
	.uleb128 0x13
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x66b
	.byte	0x6
	.4byte	0x86b
	.uleb128 0x3
	.4byte	0x56d
	.uleb128 0x3
	.4byte	0x12e
	.uleb128 0x3
	.4byte	0x113
	.byte	0
	.uleb128 0x16
	.4byte	.LASF119
	.2byte	0x53d
	.4byte	0x107
	.uleb128 0x27
	.4byte	.LASF121
	.byte	0x8
	.2byte	0x507
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x195
	.byte	0xd
	.4byte	0x118
	.4byte	0x896
	.uleb128 0x3
	.4byte	0x53c
	.byte	0
	.uleb128 0x17
	.4byte	.LASF122
	.byte	0x5
	.byte	0x67
	.byte	0xd
	.uleb128 0x17
	.4byte	.LASF123
	.byte	0x5
	.byte	0x66
	.byte	0xd
	.uleb128 0x12
	.4byte	.LASF124
	.byte	0x9
	.2byte	0x50f
	.byte	0xc
	.4byte	0x107
	.4byte	0x8cc
	.uleb128 0x3
	.4byte	0x56d
	.uleb128 0x3
	.4byte	0xab
	.uleb128 0x3
	.4byte	0x8d1
	.uleb128 0x3
	.4byte	0x113
	.byte	0
	.uleb128 0x6
	.4byte	0x107
	.uleb128 0x8
	.4byte	0x8cc
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0x9
	.2byte	0x28a
	.byte	0xc
	.4byte	0x107
	.4byte	0x8fc
	.uleb128 0x3
	.4byte	0x56d
	.uleb128 0x3
	.4byte	0xab
	.uleb128 0x3
	.4byte	0x12e
	.uleb128 0x3
	.4byte	0x113
	.byte	0
	.uleb128 0x16
	.4byte	.LASF126
	.2byte	0x993
	.4byte	0x107
	.uleb128 0x13
	.4byte	.LASF127
	.byte	0x7
	.2byte	0x164
	.byte	0x6
	.4byte	0x91a
	.uleb128 0x3
	.4byte	0x53c
	.byte	0
	.uleb128 0x28
	.4byte	.LASF128
	.byte	0xb
	.byte	0xa3
	.byte	0x7
	.4byte	0x89
	.4byte	0x930
	.uleb128 0x3
	.4byte	0x2b
	.byte	0
	.uleb128 0x17
	.4byte	.LASF129
	.byte	0xc
	.byte	0x97
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF130
	.byte	0x8
	.2byte	0x1be
	.byte	0xf
	.4byte	0x54d
	.4byte	0x96d
	.uleb128 0x3
	.4byte	0xdf
	.uleb128 0x3
	.4byte	0xa1
	.uleb128 0x3
	.4byte	0xda
	.uleb128 0x3
	.4byte	0x8b
	.uleb128 0x3
	.4byte	0x118
	.uleb128 0x3
	.4byte	0x568
	.uleb128 0x3
	.4byte	0x972
	.byte	0
	.uleb128 0x6
	.4byte	0x2f7
	.uleb128 0x8
	.4byte	0x96d
	.uleb128 0x1c
	.4byte	.LASF131
	.byte	0x1
	.byte	0x9a
	.byte	0xe
	.4byte	0x993
	.uleb128 0x3
	.4byte	0x993
	.uleb128 0x3
	.4byte	0x998
	.uleb128 0x3
	.4byte	0x99d
	.byte	0
	.uleb128 0x6
	.4byte	0x96d
	.uleb128 0x6
	.4byte	0x563
	.uleb128 0x6
	.4byte	0xce
	.uleb128 0x29
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x459
	.byte	0x7
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d8
	.uleb128 0x1
	.4byte	.LASF132
	.2byte	0x459
	.byte	0x2b
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF86
	.2byte	0x459
	.byte	0x3f
	.4byte	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x44f
	.byte	0xe
	.4byte	0x118
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa03
	.uleb128 0x1
	.4byte	.LASF132
	.2byte	0x44f
	.byte	0x33
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF134
	.2byte	0x432
	.byte	0xd
	.4byte	0x107
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa78
	.uleb128 0x1
	.4byte	.LASF135
	.2byte	0x432
	.byte	0x36
	.4byte	0x61e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF97
	.2byte	0x432
	.byte	0x4d
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF98
	.2byte	0x432
	.byte	0x64
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF136
	.2byte	0x432
	.byte	0x7d
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF137
	.2byte	0x434
	.byte	0x16
	.4byte	0x721
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF138
	.2byte	0x435
	.byte	0xd
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF139
	.2byte	0x41a
	.byte	0xd
	.4byte	0x107
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaed
	.uleb128 0x1
	.4byte	.LASF135
	.2byte	0x41a
	.byte	0x3d
	.4byte	0x61e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF97
	.2byte	0x41a
	.byte	0x54
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF98
	.2byte	0x41a
	.byte	0x6b
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF140
	.2byte	0x41a
	.byte	0x85
	.4byte	0x8cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF137
	.2byte	0x41c
	.byte	0x16
	.4byte	0x721
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF138
	.2byte	0x41d
	.byte	0xd
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF142
	.2byte	0x40a
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb30
	.uleb128 0x1
	.4byte	.LASF132
	.2byte	0x40a
	.byte	0x26
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF143
	.2byte	0x40a
	.byte	0x34
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF94
	.2byte	0x40c
	.byte	0x11
	.4byte	0x684
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF144
	.2byte	0x3f9
	.byte	0x7
	.4byte	0x89
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb78
	.uleb128 0x1
	.4byte	.LASF132
	.2byte	0x3f9
	.byte	0x2e
	.4byte	0x58f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF94
	.2byte	0x3fb
	.byte	0x11
	.4byte	0x684
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF145
	.2byte	0x3fc
	.byte	0x7
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF146
	.2byte	0x3e0
	.byte	0xc
	.4byte	0x107
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc0
	.uleb128 0x1
	.4byte	.LASF132
	.2byte	0x3e0
	.byte	0x2f
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF138
	.2byte	0x3e2
	.byte	0xc
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF94
	.2byte	0x3e3
	.byte	0xa
	.4byte	0x67f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF149
	.2byte	0x3ad
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc04
	.uleb128 0x14
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x2
	.4byte	.LASF147
	.2byte	0x3bf
	.byte	0x1a
	.4byte	0x3db
	.uleb128 0x5
	.byte	0x3
	.4byte	xStaticTimerQueue.0
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0x3c0
	.byte	0x14
	.4byte	0xc04
	.uleb128 0x5
	.byte	0x3
	.4byte	ucStaticTimerQueueStorage.1
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xbd
	.4byte	0xc14
	.uleb128 0xb
	.4byte	0x3c
	.byte	0x3f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF150
	.2byte	0x372
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc75
	.uleb128 0x2
	.4byte	.LASF151
	.2byte	0x374
	.byte	0xc
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF152
	.2byte	0x374
	.byte	0x1d
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF153
	.2byte	0x375
	.byte	0x9
	.4byte	0x760
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF94
	.2byte	0x376
	.byte	0xa
	.4byte	0x67f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF154
	.2byte	0x377
	.byte	0xc
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xf
	.4byte	.LASF155
	.2byte	0x2de
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcef
	.uleb128 0x2
	.4byte	.LASF137
	.2byte	0x2e0
	.byte	0x15
	.4byte	0x721
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF94
	.2byte	0x2e1
	.byte	0xa
	.4byte	0x67f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF156
	.2byte	0x2e2
	.byte	0xc
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF154
	.2byte	0x2e2
	.byte	0x25
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF157
	.2byte	0x2e3
	.byte	0xc
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x2
	.4byte	.LASF158
	.2byte	0x2ed
	.byte	0x28
	.4byte	0xcf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x6d6
	.uleb128 0x8
	.4byte	0xcef
	.uleb128 0x1e
	.4byte	.LASF162
	.2byte	0x2b5
	.4byte	0x107
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd5e
	.uleb128 0x1
	.4byte	.LASF94
	.2byte	0x2b5
	.byte	0x3f
	.4byte	0x684
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF159
	.2byte	0x2b5
	.byte	0x59
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF157
	.2byte	0x2b5
	.byte	0x7b
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF160
	.2byte	0x2b5
	.byte	0x96
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x2b7
	.byte	0xc
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF163
	.2byte	0x29e
	.4byte	0x12e
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xda8
	.uleb128 0x1
	.4byte	.LASF164
	.2byte	0x29e
	.byte	0x38
	.4byte	0x8d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF157
	.2byte	0x2a0
	.byte	0xc
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF165
	.2byte	0x2a1
	.byte	0x14
	.4byte	0x12e
	.uleb128 0x5
	.byte	0x3
	.4byte	xLastTime.2
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x284
	.byte	0x13
	.4byte	0x12e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde2
	.uleb128 0x1
	.4byte	.LASF167
	.2byte	0x284
	.byte	0x3c
	.4byte	0x8d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF151
	.2byte	0x286
	.byte	0xc
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF168
	.2byte	0x248
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe34
	.uleb128 0x1
	.4byte	.LASF151
	.2byte	0x248
	.byte	0x3a
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF169
	.2byte	0x248
	.byte	0x56
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF157
	.2byte	0x24a
	.byte	0xc
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF156
	.2byte	0x24b
	.byte	0xc
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF170
	.2byte	0x224
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe77
	.uleb128 0x1
	.4byte	.LASF171
	.2byte	0x224
	.byte	0x21
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF151
	.2byte	0x226
	.byte	0xc
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF169
	.2byte	0x227
	.byte	0xc
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF172
	.2byte	0x1fb
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec9
	.uleb128 0x1
	.4byte	.LASF151
	.2byte	0x1fb
	.byte	0x36
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF157
	.2byte	0x1fb
	.byte	0x58
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF154
	.2byte	0x1fd
	.byte	0xc
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF94
	.2byte	0x1fe
	.byte	0x11
	.4byte	0x684
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF173
	.2byte	0x1f2
	.byte	0xe
	.4byte	0x9c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf02
	.uleb128 0x1
	.4byte	.LASF132
	.2byte	0x1f2
	.byte	0x2c
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF94
	.2byte	0x1f4
	.byte	0xa
	.4byte	0x67f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF174
	.2byte	0x1e7
	.byte	0xc
	.4byte	0x12e
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf4a
	.uleb128 0x1
	.4byte	.LASF132
	.2byte	0x1e7
	.byte	0x2f
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF94
	.2byte	0x1e9
	.byte	0xb
	.4byte	0x67f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF138
	.2byte	0x1ea
	.byte	0xc
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF175
	.2byte	0x1ce
	.byte	0xd
	.4byte	0x118
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf92
	.uleb128 0x1
	.4byte	.LASF132
	.2byte	0x1ce
	.byte	0x31
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF94
	.2byte	0x1d0
	.byte	0xb
	.4byte	0x67f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF176
	.2byte	0x1d1
	.byte	0xd
	.4byte	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF177
	.2byte	0x1ba
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfd5
	.uleb128 0x1
	.4byte	.LASF132
	.2byte	0x1ba
	.byte	0x29
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF178
	.2byte	0x1ba
	.byte	0x43
	.4byte	0x129
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF94
	.2byte	0x1bc
	.byte	0xb
	.4byte	0x67f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF179
	.2byte	0x1b1
	.byte	0xc
	.4byte	0x12e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x100e
	.uleb128 0x1
	.4byte	.LASF132
	.2byte	0x1b1
	.byte	0x2b
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF94
	.2byte	0x1b3
	.byte	0xa
	.4byte	0x67f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x1a8
	.byte	0xe
	.4byte	0x54d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF180
	.2byte	0x17d
	.byte	0xc
	.4byte	0x107
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10aa
	.uleb128 0x1
	.4byte	.LASF132
	.2byte	0x17d
	.byte	0x30
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF181
	.2byte	0x17d
	.byte	0x49
	.4byte	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF182
	.2byte	0x17d
	.byte	0x66
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF140
	.2byte	0x17d
	.byte	0x89
	.4byte	0x8d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF136
	.2byte	0x17d
	.byte	0xb5
	.4byte	0x13a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF138
	.2byte	0x17f
	.byte	0xc
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF137
	.2byte	0x180
	.byte	0x15
	.4byte	0x721
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xf
	.4byte	.LASF183
	.2byte	0x15d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x111a
	.uleb128 0x1
	.4byte	.LASF81
	.2byte	0x15d
	.byte	0x37
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x15e
	.byte	0x1b
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF178
	.2byte	0x15f
	.byte	0x1c
	.4byte	0x129
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF84
	.2byte	0x160
	.byte	0x17
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF85
	.2byte	0x161
	.byte	0x22
	.4byte	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF184
	.2byte	0x162
	.byte	0x13
	.4byte	0x67f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xc
	.4byte	.LASF185
	.2byte	0x135
	.byte	0x10
	.4byte	0x583
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11b7
	.uleb128 0x1
	.4byte	.LASF81
	.2byte	0x135
	.byte	0x37
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x136
	.byte	0x1c
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF178
	.2byte	0x137
	.byte	0x1d
	.4byte	0x129
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF84
	.2byte	0x138
	.byte	0x18
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF85
	.2byte	0x139
	.byte	0x23
	.4byte	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF186
	.2byte	0x13a
	.byte	0x1a
	.4byte	0x11b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x13c
	.byte	0xb
	.4byte	0x67f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x2
	.4byte	.LASF187
	.2byte	0x143
	.byte	0x14
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x450
	.uleb128 0xc
	.4byte	.LASF188
	.2byte	0x11a
	.byte	0x10
	.4byte	0x583
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1231
	.uleb128 0x1
	.4byte	.LASF81
	.2byte	0x11a
	.byte	0x31
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x11b
	.byte	0x1a
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF178
	.2byte	0x11c
	.byte	0x1b
	.4byte	0x129
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF84
	.2byte	0x11d
	.byte	0x16
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF85
	.2byte	0x11e
	.byte	0x21
	.4byte	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x120
	.byte	0xb
	.4byte	0x67f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF189
	.byte	0x1
	.byte	0xe3
	.byte	0xc
	.4byte	0x107
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF138
	.byte	0xe5
	.byte	0xc
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xd
	.4byte	.LASF190
	.byte	0xf1
	.byte	0x12
	.4byte	0x96d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF191
	.byte	0xf2
	.byte	0x11
	.4byte	0x563
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LASF192
	.byte	0xf3
	.byte	0xd
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x5
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x18
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2c
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
	.4byte	0xec
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
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
	.4byte	.LFB1
	.uleb128 .LFE1-.LFB1
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF116:
	.string	"vListInsert"
.LASF45:
	.string	"StaticTask_t"
.LASF160:
	.string	"xCommandTime"
.LASF68:
	.string	"uxNumberOfItems"
.LASF83:
	.string	"xTimerPeriodInTicks"
.LASF85:
	.string	"pxCallbackFunction"
.LASF167:
	.string	"pxListWasEmpty"
.LASF86:
	.string	"uxTimerNumber"
.LASF157:
	.string	"xTimeNow"
.LASF39:
	.string	"uxDummy10"
.LASF40:
	.string	"uxDummy12"
.LASF147:
	.string	"xStaticTimerQueue"
.LASF77:
	.string	"tskTaskControlBlock"
.LASF100:
	.string	"xTimerParameters"
.LASF182:
	.string	"xOptionalValue"
.LASF114:
	.string	"xQueueReceive"
.LASF126:
	.string	"xTaskGetSchedulerState"
.LASF140:
	.string	"pxHigherPriorityTaskWoken"
.LASF2:
	.string	"unsigned int"
.LASF69:
	.string	"pxIndex"
.LASF18:
	.string	"StackType_t"
.LASF81:
	.string	"pcTimerName"
.LASF98:
	.string	"ulParameter2"
.LASF61:
	.string	"xLIST_ITEM"
.LASF134:
	.string	"xTimerPendFunctionCall"
.LASF44:
	.string	"uxDummy20"
.LASF171:
	.string	"pvParameters"
.LASF27:
	.string	"StaticMiniListItem_t"
.LASF95:
	.string	"TimerParameter_t"
.LASF109:
	.string	"xTimerQueue"
.LASF60:
	.string	"StaticTimer_t"
.LASF55:
	.string	"xSTATIC_TIMER"
.LASF88:
	.string	"TimerCallbackFunction_t"
.LASF181:
	.string	"xCommandID"
.LASF176:
	.string	"uxReturn"
.LASF189:
	.string	"xTimerCreateTimerTask"
.LASF161:
	.string	"xProcessTimerNow"
.LASF149:
	.string	"prvCheckForValidListAndQueue"
.LASF16:
	.string	"uint32_t"
.LASF175:
	.string	"uxTimerGetReloadMode"
.LASF120:
	.string	"uxListRemove"
.LASF79:
	.string	"TimerHandle_t"
.LASF185:
	.string	"xTimerCreateStatic"
.LASF172:
	.string	"prvProcessExpiredTimer"
.LASF131:
	.string	"vApplicationGetTimerTaskMemory"
.LASF78:
	.string	"QueueDefinition"
.LASF11:
	.string	"long long unsigned int"
.LASF99:
	.string	"CallbackParameters_t"
.LASF133:
	.string	"uxTimerGetTimerNumber"
.LASF57:
	.string	"pvDummy6"
.LASF184:
	.string	"pxNewTimer"
.LASF64:
	.string	"pxPrevious"
.LASF145:
	.string	"pvReturn"
.LASF153:
	.string	"pxTemp"
.LASF128:
	.string	"pvPortMalloc"
.LASF121:
	.string	"vTaskSuspendAll"
.LASF146:
	.string	"xTimerIsTimerActive"
.LASF102:
	.string	"tmrTimerQueueMessage"
.LASF122:
	.string	"vTaskExitCritical"
.LASF144:
	.string	"pvTimerGetTimerID"
.LASF13:
	.string	"size_t"
.LASF72:
	.string	"xMINI_LIST_ITEM"
.LASF24:
	.string	"StaticListItem_t"
.LASF108:
	.string	"pxOverflowTimerList"
.LASF67:
	.string	"xLIST"
.LASF191:
	.string	"pxTimerTaskStackBuffer"
.LASF124:
	.string	"xQueueGenericSendFromISR"
.LASF183:
	.string	"prvInitialiseNewTimer"
.LASF48:
	.string	"pvDummy1"
.LASF46:
	.string	"pvDummy2"
.LASF23:
	.string	"pvDummy3"
.LASF56:
	.string	"pvDummy5"
.LASF29:
	.string	"uxDummy2"
.LASF49:
	.string	"uxDummy4"
.LASF35:
	.string	"uxDummy5"
.LASF58:
	.string	"uxDummy7"
.LASF52:
	.string	"uxDummy8"
.LASF38:
	.string	"uxDummy9"
.LASF125:
	.string	"xQueueGenericSend"
.LASF132:
	.string	"xTimer"
.LASF90:
	.string	"xTIMER"
.LASF105:
	.string	"xActiveTimerList1"
.LASF106:
	.string	"xActiveTimerList2"
.LASF162:
	.string	"prvInsertTimerInActiveList"
.LASF12:
	.string	"char"
.LASF71:
	.string	"ListItem_t"
.LASF20:
	.string	"UBaseType_t"
.LASF174:
	.string	"xTimerGetExpiryTime"
.LASF76:
	.string	"QueueHandle_t"
.LASF188:
	.string	"xTimerCreate"
.LASF163:
	.string	"prvSampleTimeNow"
.LASF70:
	.string	"xListEnd"
.LASF73:
	.string	"MiniListItem_t"
.LASF101:
	.string	"xCallbackParameters"
.LASF15:
	.string	"uint8_t"
.LASF142:
	.string	"vTimerSetTimerID"
.LASF156:
	.string	"xTimerListsWereSwitched"
.LASF118:
	.string	"xTaskGetTickCount"
.LASF28:
	.string	"xSTATIC_LIST"
.LASF33:
	.string	"pxDummy1"
.LASF43:
	.string	"ucDummy19"
.LASF3:
	.string	"long long int"
.LASF36:
	.string	"pxDummy6"
.LASF129:
	.string	"vAssertCalled"
.LASF143:
	.string	"pvNewID"
.LASF19:
	.string	"BaseType_t"
.LASF150:
	.string	"prvSwitchTimerLists"
.LASF111:
	.string	"vQueueAddToRegistry"
.LASF17:
	.string	"TaskFunction_t"
.LASF63:
	.string	"pxNext"
.LASF54:
	.string	"StaticQueue_t"
.LASF75:
	.string	"TaskHandle_t"
.LASF178:
	.string	"uxAutoReload"
.LASF74:
	.string	"List_t"
.LASF21:
	.string	"TickType_t"
.LASF130:
	.string	"xTaskCreateStatic"
.LASF148:
	.string	"ucStaticTimerQueueStorage"
.LASF82:
	.string	"xTimerListItem"
.LASF97:
	.string	"pvParameter1"
.LASF4:
	.string	"long double"
.LASF186:
	.string	"pxTimerBuffer"
.LASF50:
	.string	"ucDummy5"
.LASF51:
	.string	"ucDummy6"
.LASF37:
	.string	"ucDummy7"
.LASF59:
	.string	"ucDummy8"
.LASF53:
	.string	"ucDummy9"
.LASF180:
	.string	"xTimerGenericCommand"
.LASF66:
	.string	"pvContainer"
.LASF110:
	.string	"xTimerTaskHandle"
.LASF170:
	.string	"prvTimerTask"
.LASF151:
	.string	"xNextExpireTime"
.LASF187:
	.string	"xSize"
.LASF117:
	.string	"vQueueWaitForMessageRestricted"
.LASF7:
	.string	"short int"
.LASF127:
	.string	"vListInitialiseItem"
.LASF87:
	.string	"ucStatus"
.LASF62:
	.string	"xItemValue"
.LASF155:
	.string	"prvProcessReceivedCommands"
.LASF9:
	.string	"long int"
.LASF165:
	.string	"xLastTime"
.LASF119:
	.string	"xTaskResumeAll"
.LASF89:
	.string	"PendedFunction_t"
.LASF107:
	.string	"pxCurrentTimerList"
.LASF137:
	.string	"xMessage"
.LASF115:
	.string	"vPortFree"
.LASF194:
	.string	"xTimerGetTimerDaemonTaskHandle"
.LASF169:
	.string	"xListWasEmpty"
.LASF84:
	.string	"pvTimerID"
.LASF32:
	.string	"xSTATIC_TCB"
.LASF91:
	.string	"Timer_t"
.LASF113:
	.string	"xQueueGenericCreateStatic"
.LASF103:
	.string	"xMessageID"
.LASF104:
	.string	"DaemonTaskMessage_t"
.LASF42:
	.string	"ulDummy18"
.LASF152:
	.string	"xReloadTime"
.LASF25:
	.string	"xSTATIC_LIST_ITEM"
.LASF138:
	.string	"xReturn"
.LASF141:
	.string	"vTimerSetTimerNumber"
.LASF10:
	.string	"long unsigned int"
.LASF14:
	.string	"int32_t"
.LASF154:
	.string	"xResult"
.LASF179:
	.string	"xTimerGetPeriod"
.LASF94:
	.string	"pxTimer"
.LASF6:
	.string	"unsigned char"
.LASF93:
	.string	"xMessageValue"
.LASF96:
	.string	"tmrCallbackParameters"
.LASF135:
	.string	"xFunctionToPend"
.LASF112:
	.string	"vListInitialise"
.LASF80:
	.string	"tmrTimerControl"
.LASF190:
	.string	"pxTimerTaskTCBBuffer"
.LASF173:
	.string	"pcTimerGetName"
.LASF136:
	.string	"xTicksToWait"
.LASF65:
	.string	"pvOwner"
.LASF41:
	.string	"pvDummy15"
.LASF22:
	.string	"xDummy2"
.LASF34:
	.string	"xDummy3"
.LASF30:
	.string	"xDummy4"
.LASF123:
	.string	"vTaskEnterCritical"
.LASF139:
	.string	"xTimerPendFunctionCallFromISR"
.LASF168:
	.string	"prvProcessTimerOrBlockTask"
.LASF26:
	.string	"xSTATIC_MINI_LIST_ITEM"
.LASF177:
	.string	"vTimerSetReloadMode"
.LASF192:
	.string	"ulTimerTaskStackSize"
.LASF5:
	.string	"signed char"
.LASF159:
	.string	"xNextExpiryTime"
.LASF8:
	.string	"short unsigned int"
.LASF92:
	.string	"tmrTimerParameters"
.LASF193:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF158:
	.string	"pxCallback"
.LASF47:
	.string	"xSTATIC_QUEUE"
.LASF31:
	.string	"StaticList_t"
.LASF166:
	.string	"prvGetNextExpireTime"
.LASF164:
	.string	"pxTimerListsWereSwitched"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/timers.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
