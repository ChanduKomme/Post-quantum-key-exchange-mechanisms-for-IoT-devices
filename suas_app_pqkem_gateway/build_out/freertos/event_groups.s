	.file	"event_groups.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos" "/home/chandu/sdk/bl602_iot_sdk/components/freertos/event_groups.c"
	.section	.text.xEventGroupCreateStatic,"ax",@progbits
	.align	1
	.globl	xEventGroupCreateStatic
	.type	xEventGroupCreateStatic, @function
xEventGroupCreateStatic:
.LFB1:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/event_groups.c"
	.loc 1 94 2
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
	.loc 1 98 5
	lw	a5,-36(s0)
	bne	a5,zero,.L2
	.loc 1 98 37 discriminator 1
	call	vAssertCalled
.L2:
.LBB2:
	.loc 1 105 20
	li	a5,32
	sw	a5,-24(s0)
	.loc 1 106 44
	lw	a4,-24(s0)
	.loc 1 106 6
	li	a5,32
	beq	a4,a5,.L3
	.loc 1 106 51 discriminator 1
	call	vAssertCalled
.L3:
.LBE2:
	.loc 1 111 15
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 113 5
	lw	a5,-20(s0)
	beq	a5,zero,.L4
	.loc 1 115 29
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 1 116 21
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 116 4
	mv	a0,a5
	call	vListInitialise
	.loc 1 123 40
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,28(a5)
.L4:
	.loc 1 137 10
	lw	a5,-20(s0)
	.loc 1 138 2
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
.LFE1:
	.size	xEventGroupCreateStatic, .-xEventGroupCreateStatic
	.section	.text.xEventGroupCreate,"ax",@progbits
	.align	1
	.globl	xEventGroupCreate
	.type	xEventGroupCreate, @function
xEventGroupCreate:
.LFB2:
	.loc 1 146 2
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 162 36
	li	a0,32
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 1 164 5
	lw	a5,-20(s0)
	beq	a5,zero,.L7
	.loc 1 166 29
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 1 167 21
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 167 4
	mv	a0,a5
	call	vListInitialise
	.loc 1 174 40
	lw	a5,-20(s0)
	sb	zero,28(a5)
.L7:
	.loc 1 185 10
	lw	a5,-20(s0)
	.loc 1 186 2
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
.LFE2:
	.size	xEventGroupCreate, .-xEventGroupCreate
	.section	.text.xEventGroupSync,"ax",@progbits
	.align	1
	.globl	xEventGroupSync
	.type	xEventGroupSync, @function
xEventGroupSync:
.LFB3:
	.loc 1 192 1
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
	.loc 1 194 15
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	.loc 1 196 12
	sw	zero,-28(s0)
	.loc 1 198 4
	lw	a4,-60(s0)
	li	a5,16777216
	bltu	a4,a5,.L10
	.loc 1 198 57 discriminator 1
	call	vAssertCalled
.L10:
	.loc 1 199 4
	lw	a5,-60(s0)
	bne	a5,zero,.L11
	.loc 1 199 38 discriminator 1
	call	vAssertCalled
.L11:
	.loc 1 202 14
	call	xTaskGetSchedulerState
	mv	a5,a0
	.loc 1 202 9 discriminator 1
	bne	a5,zero,.L12
	.loc 1 202 9 is_stmt 0 discriminator 3
	lw	a5,-64(s0)
	bne	a5,zero,.L13
.L12:
	.loc 1 202 9 discriminator 4
	li	a5,1
	.loc 1 202 9
	j	.L14
.L13:
	.loc 1 202 9 discriminator 5
	li	a5,0
.L14:
	.loc 1 202 5 is_stmt 1 discriminator 7
	bne	a5,zero,.L15
	.loc 1 202 101 discriminator 8
	call	vAssertCalled
.L15:
	.loc 1 206 2
	call	vTaskSuspendAll
	.loc 1 208 22
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 210 12
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	xEventGroupSetBits
	.loc 1 212 30
	lw	a4,-32(s0)
	lw	a5,-56(s0)
	or	a4,a4,a5
	.loc 1 212 46
	lw	a5,-60(s0)
	and	a5,a4,a5
	.loc 1 212 5
	lw	a4,-60(s0)
	bne	a4,a5,.L16
	.loc 1 215 13
	lw	a4,-32(s0)
	lw	a5,-56(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 219 15
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 1 219 32
	lw	a5,-60(s0)
	not	a5,a5
	.loc 1 219 29
	and	a4,a4,a5
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 221 17
	sw	zero,-64(s0)
	j	.L17
.L16:
	.loc 1 225 6
	lw	a5,-64(s0)
	beq	a5,zero,.L18
	.loc 1 232 5
	lw	a5,-24(s0)
	addi	a3,a5,4
	.loc 1 232 110
	lw	a4,-60(s0)
	li	a5,83886080
	or	a5,a4,a5
	.loc 1 232 5
	lw	a2,-64(s0)
	mv	a1,a5
	mv	a0,a3
	call	vTaskPlaceOnUnorderedEventList
	.loc 1 238 14
	sw	zero,-20(s0)
	j	.L17
.L18:
	.loc 1 244 14
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 245 22
	li	a5,1
	sw	a5,-28(s0)
.L17:
	.loc 1 249 20
	call	xTaskResumeAll
	sw	a0,-36(s0)
	.loc 1 251 4
	lw	a5,-64(s0)
	beq	a5,zero,.L19
	.loc 1 253 5
	lw	a5,-36(s0)
	bne	a5,zero,.L20
	.loc 1 255 4
 #APP
# 255 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/event_groups.c" 1
	ecall
# 0 "" 2
 #NO_APP
.L20:
	.loc 1 266 14
	call	uxTaskResetEventItemValue
	sw	a0,-20(s0)
	.loc 1 268 18
	lw	a4,-20(s0)
	li	a5,33554432
	and	a5,a4,a5
	.loc 1 268 5
	bne	a5,zero,.L21
	.loc 1 271 4
	call	vTaskEnterCritical
	.loc 1 273 14
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 279 20
	lw	a4,-20(s0)
	lw	a5,-60(s0)
	and	a5,a4,a5
	.loc 1 279 7
	lw	a4,-60(s0)
	bne	a4,a5,.L22
	.loc 1 281 17
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 1 281 34
	lw	a5,-60(s0)
	not	a5,a5
	.loc 1 281 31
	and	a4,a4,a5
	lw	a5,-24(s0)
	sw	a4,0(a5)
.L22:
	.loc 1 288 4
	call	vTaskExitCritical
	.loc 1 290 21
	li	a5,1
	sw	a5,-28(s0)
.L21:
	.loc 1 299 12
	lw	a4,-20(s0)
	li	a5,16777216
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
.L19:
	.loc 1 307 9
	lw	a5,-20(s0)
	.loc 1 308 1
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
	.size	xEventGroupSync, .-xEventGroupSync
	.section	.text.xEventGroupWaitBits,"ax",@progbits
	.align	1
	.globl	xEventGroupWaitBits
	.type	xEventGroupWaitBits, @function
xEventGroupWaitBits:
.LFB4:
	.loc 1 312 1
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
	.loc 1 313 15
	lw	a5,-52(s0)
	sw	a5,-28(s0)
	.loc 1 314 23
	sw	zero,-24(s0)
	.loc 1 316 12
	sw	zero,-32(s0)
	.loc 1 320 4
	lw	a5,-52(s0)
	bne	a5,zero,.L25
	.loc 1 320 29 discriminator 1
	call	vAssertCalled
.L25:
	.loc 1 321 4
	lw	a4,-56(s0)
	li	a5,16777216
	bltu	a4,a5,.L26
	.loc 1 321 57 discriminator 1
	call	vAssertCalled
.L26:
	.loc 1 322 4
	lw	a5,-56(s0)
	bne	a5,zero,.L27
	.loc 1 322 38 discriminator 1
	call	vAssertCalled
.L27:
	.loc 1 325 14
	call	xTaskGetSchedulerState
	mv	a5,a0
	.loc 1 325 9 discriminator 1
	bne	a5,zero,.L28
	.loc 1 325 9 is_stmt 0 discriminator 3
	lw	a5,-68(s0)
	bne	a5,zero,.L29
.L28:
	.loc 1 325 9 discriminator 4
	li	a5,1
	.loc 1 325 9
	j	.L30
.L29:
	.loc 1 325 9 discriminator 5
	li	a5,0
.L30:
	.loc 1 325 5 is_stmt 1 discriminator 7
	bne	a5,zero,.L31
	.loc 1 325 101 discriminator 8
	call	vAssertCalled
.L31:
	.loc 1 329 2
	call	vTaskSuspendAll
.LBB3:
	.loc 1 331 21
	lw	a5,-28(s0)
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 334 23
	lw	a2,-64(s0)
	lw	a1,-56(s0)
	lw	a0,-36(s0)
	call	prvTestWaitCondition
	sw	a0,-40(s0)
	.loc 1 336 5
	lw	a5,-40(s0)
	beq	a5,zero,.L32
	.loc 1 340 13
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 341 17
	sw	zero,-68(s0)
	.loc 1 344 6
	lw	a5,-60(s0)
	beq	a5,zero,.L33
	.loc 1 346 16
	lw	a5,-28(s0)
	lw	a4,0(a5)
	.loc 1 346 33
	lw	a5,-56(s0)
	not	a5,a5
	.loc 1 346 30
	and	a4,a4,a5
	lw	a5,-28(s0)
	sw	a4,0(a5)
	j	.L33
.L32:
	.loc 1 353 10
	lw	a5,-68(s0)
	bne	a5,zero,.L34
	.loc 1 357 13
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 358 21
	li	a5,1
	sw	a5,-32(s0)
	j	.L33
.L34:
	.loc 1 366 6
	lw	a5,-60(s0)
	beq	a5,zero,.L35
	.loc 1 368 19
	lw	a4,-24(s0)
	li	a5,16777216
	or	a5,a4,a5
	sw	a5,-24(s0)
.L35:
	.loc 1 375 6
	lw	a5,-64(s0)
	beq	a5,zero,.L36
	.loc 1 377 19
	lw	a4,-24(s0)
	li	a5,67108864
	or	a5,a4,a5
	sw	a5,-24(s0)
.L36:
	.loc 1 387 4
	lw	a5,-28(s0)
	addi	a3,a5,4
	.loc 1 387 94
	lw	a4,-56(s0)
	lw	a5,-24(s0)
	or	a5,a4,a5
	.loc 1 387 4
	lw	a2,-68(s0)
	mv	a1,a5
	mv	a0,a3
	call	vTaskPlaceOnUnorderedEventList
	.loc 1 392 13
	sw	zero,-20(s0)
.L33:
.LBE3:
	.loc 1 397 20
	call	xTaskResumeAll
	sw	a0,-44(s0)
	.loc 1 399 4
	lw	a5,-68(s0)
	beq	a5,zero,.L37
	.loc 1 401 5
	lw	a5,-44(s0)
	bne	a5,zero,.L38
	.loc 1 403 4
 #APP
# 403 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/event_groups.c" 1
	ecall
# 0 "" 2
 #NO_APP
.L38:
	.loc 1 414 14
	call	uxTaskResetEventItemValue
	sw	a0,-20(s0)
	.loc 1 416 18
	lw	a4,-20(s0)
	li	a5,33554432
	and	a5,a4,a5
	.loc 1 416 5
	bne	a5,zero,.L39
	.loc 1 418 4
	call	vTaskEnterCritical
	.loc 1 421 14
	lw	a5,-28(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 425 9
	lw	a2,-64(s0)
	lw	a1,-56(s0)
	lw	a0,-20(s0)
	call	prvTestWaitCondition
	mv	a5,a0
	.loc 1 425 7 discriminator 1
	beq	a5,zero,.L40
	.loc 1 427 8
	lw	a5,-60(s0)
	beq	a5,zero,.L40
	.loc 1 429 18
	lw	a5,-28(s0)
	lw	a4,0(a5)
	.loc 1 429 35
	lw	a5,-56(s0)
	not	a5,a5
	.loc 1 429 32
	and	a4,a4,a5
	lw	a5,-28(s0)
	sw	a4,0(a5)
.L40:
	.loc 1 440 22
	li	a5,1
	sw	a5,-32(s0)
	.loc 1 442 4
	call	vTaskExitCritical
.L39:
	.loc 1 450 12
	lw	a4,-20(s0)
	li	a5,16777216
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
.L37:
	.loc 1 457 9
	lw	a5,-20(s0)
	.loc 1 458 1
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
.LFE4:
	.size	xEventGroupWaitBits, .-xEventGroupWaitBits
	.section	.text.xEventGroupClearBits,"ax",@progbits
	.align	1
	.globl	xEventGroupClearBits
	.type	xEventGroupClearBits, @function
xEventGroupClearBits:
.LFB5:
	.loc 1 462 1
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
	.loc 1 463 15
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 468 4
	lw	a5,-36(s0)
	bne	a5,zero,.L43
	.loc 1 468 29 discriminator 1
	call	vAssertCalled
.L43:
	.loc 1 469 4
	lw	a4,-40(s0)
	li	a5,16777216
	bltu	a4,a5,.L44
	.loc 1 469 55 discriminator 1
	call	vAssertCalled
.L44:
	.loc 1 471 2
	call	vTaskEnterCritical
	.loc 1 477 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 480 14
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 480 31
	lw	a5,-40(s0)
	not	a5,a5
	.loc 1 480 28
	and	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 482 2
	call	vTaskExitCritical
	.loc 1 484 9
	lw	a5,-24(s0)
	.loc 1 485 1
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
	.size	xEventGroupClearBits, .-xEventGroupClearBits
	.section	.text.xEventGroupClearBitsFromISR,"ax",@progbits
	.align	1
	.globl	xEventGroupClearBitsFromISR
	.type	xEventGroupClearBitsFromISR, @function
xEventGroupClearBitsFromISR:
.LFB6:
	.loc 1 491 2
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
	.loc 1 495 13
	li	a3,0
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lui	a5,%hi(vEventGroupClearBitsCallback)
	addi	a0,a5,%lo(vEventGroupClearBitsCallback)
	call	xTimerPendFunctionCallFromISR
	sw	a0,-20(s0)
	.loc 1 497 10
	lw	a5,-20(s0)
	.loc 1 498 2
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
	.size	xEventGroupClearBitsFromISR, .-xEventGroupClearBitsFromISR
	.section	.text.xEventGroupGetBitsFromISR,"ax",@progbits
	.align	1
	.globl	xEventGroupGetBitsFromISR
	.type	xEventGroupGetBitsFromISR, @function
xEventGroupGetBitsFromISR:
.LFB7:
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
	.loc 1 506 28
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 509 25
	sw	zero,-24(s0)
	.loc 1 511 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 515 9
	lw	a5,-28(s0)
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
.LFE7:
	.size	xEventGroupGetBitsFromISR, .-xEventGroupGetBitsFromISR
	.section	.text.xEventGroupSetBits,"ax",@progbits
	.align	1
	.globl	xEventGroupSetBits
	.type	xEventGroupSetBits, @function
xEventGroupSetBits:
.LFB8:
	.loc 1 520 1
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
	.loc 1 524 13
	sw	zero,-24(s0)
	.loc 1 525 15
	lw	a5,-68(s0)
	sw	a5,-32(s0)
	.loc 1 526 12
	sw	zero,-28(s0)
	.loc 1 530 4
	lw	a5,-68(s0)
	bne	a5,zero,.L51
	.loc 1 530 29 discriminator 1
	call	vAssertCalled
.L51:
	.loc 1 531 4
	lw	a4,-72(s0)
	li	a5,16777216
	bltu	a4,a5,.L52
	.loc 1 531 53 discriminator 1
	call	vAssertCalled
.L52:
	.loc 1 533 9
	lw	a5,-32(s0)
	addi	a5,a5,4
	sw	a5,-36(s0)
	.loc 1 534 12
	lw	a5,-36(s0)
	addi	a5,a5,8
	sw	a5,-40(s0)
	.loc 1 535 2
	call	vTaskSuspendAll
	.loc 1 539 14
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 542 14
	lw	a5,-32(s0)
	lw	a4,0(a5)
	.loc 1 542 28
	lw	a5,-72(s0)
	or	a4,a4,a5
	lw	a5,-32(s0)
	sw	a4,0(a5)
	.loc 1 545 8
	j	.L53
.L58:
	.loc 1 547 11
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-44(s0)
	.loc 1 548 20
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-48(s0)
	.loc 1 549 16
	sw	zero,-28(s0)
	.loc 1 552 18
	lw	a4,-48(s0)
	li	a5,-16777216
	and	a5,a4,a5
	sw	a5,-52(s0)
	.loc 1 553 20
	lw	a4,-48(s0)
	li	a5,16777216
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-48(s0)
	.loc 1 555 24
	lw	a4,-52(s0)
	li	a5,67108864
	and	a5,a4,a5
	.loc 1 555 6
	bne	a5,zero,.L54
	.loc 1 558 40
	lw	a5,-32(s0)
	lw	a4,0(a5)
	.loc 1 558 27
	lw	a5,-48(s0)
	and	a5,a4,a5
	.loc 1 558 7
	beq	a5,zero,.L55
	.loc 1 560 18
	li	a5,1
	sw	a5,-28(s0)
	j	.L55
.L54:
	.loc 1 567 44
	lw	a5,-32(s0)
	lw	a4,0(a5)
	.loc 1 567 31
	lw	a5,-48(s0)
	and	a5,a4,a5
	.loc 1 567 11
	lw	a4,-48(s0)
	bne	a4,a5,.L55
	.loc 1 570 17
	li	a5,1
	sw	a5,-28(s0)
.L55:
	.loc 1 577 6
	lw	a5,-28(s0)
	beq	a5,zero,.L56
	.loc 1 580 25
	lw	a4,-52(s0)
	li	a5,16777216
	and	a5,a4,a5
	.loc 1 580 7
	beq	a5,zero,.L57
	.loc 1 582 20
	lw	a4,-24(s0)
	lw	a5,-48(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
.L57:
	.loc 1 594 63
	lw	a5,-32(s0)
	lw	a4,0(a5)
	.loc 1 594 77
	li	a5,33554432
	or	a5,a4,a5
	.loc 1 594 5
	mv	a1,a5
	lw	a0,-20(s0)
	call	vTaskRemoveFromUnorderedEventList
.L56:
	.loc 1 600 15
	lw	a5,-44(s0)
	sw	a5,-20(s0)
.L53:
	.loc 1 545 21
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L58
	.loc 1 605 14
	lw	a5,-32(s0)
	lw	a4,0(a5)
	.loc 1 605 31
	lw	a5,-24(s0)
	not	a5,a5
	.loc 1 605 28
	and	a4,a4,a5
	lw	a5,-32(s0)
	sw	a4,0(a5)
	.loc 1 607 11
	call	xTaskResumeAll
	.loc 1 609 20
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 610 1
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
.LFE8:
	.size	xEventGroupSetBits, .-xEventGroupSetBits
	.section	.text.vEventGroupDelete,"ax",@progbits
	.align	1
	.globl	vEventGroupDelete
	.type	vEventGroupDelete, @function
vEventGroupDelete:
.LFB9:
	.loc 1 614 1
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
	.loc 1 615 15
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 616 15
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 1 618 2
	call	vTaskSuspendAll
	.loc 1 622 8
	j	.L61
.L63:
	.loc 1 626 41
	lw	a5,-24(s0)
	lw	a4,12(a5)
	.loc 1 626 75
	lw	a5,-24(s0)
	addi	a5,a5,8
	.loc 1 626 6
	bne	a4,a5,.L62
	.loc 1 626 121 discriminator 1
	call	vAssertCalled
.L62:
	.loc 1 627 70
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 1 627 4
	li	a1,33554432
	mv	a0,a5
	call	vTaskRemoveFromUnorderedEventList
.L61:
	.loc 1 622 37
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 622 57
	bne	a5,zero,.L63
	.loc 1 630 14
	call	xTaskResumeAll
	.loc 1 642 24
	lw	a5,-20(s0)
	lbu	a5,28(a5)
	.loc 1 642 11
	bne	a5,zero,.L65
	.loc 1 644 4
	lw	a0,-20(s0)
	call	vPortFree
.L65:
	.loc 1 652 1
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
	.size	vEventGroupDelete, .-vEventGroupDelete
	.section	.text.vEventGroupSetBitsCallback,"ax",@progbits
	.align	1
	.globl	vEventGroupSetBitsCallback
	.type	vEventGroupSetBitsCallback, @function
vEventGroupSetBitsCallback:
.LFB10:
	.loc 1 658 1
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
	.loc 1 659 11
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	xEventGroupSetBits
	.loc 1 660 1
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
.LFE10:
	.size	vEventGroupSetBitsCallback, .-vEventGroupSetBitsCallback
	.section	.text.vEventGroupClearBitsCallback,"ax",@progbits
	.align	1
	.globl	vEventGroupClearBitsCallback
	.type	vEventGroupClearBitsCallback, @function
vEventGroupClearBitsCallback:
.LFB11:
	.loc 1 666 1
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
	.loc 1 667 11
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	xEventGroupClearBits
	.loc 1 668 1
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
	.size	vEventGroupClearBitsCallback, .-vEventGroupClearBitsCallback
	.section	.text.prvTestWaitCondition,"ax",@progbits
	.align	1
	.type	prvTestWaitCondition, @function
prvTestWaitCondition:
.LFB12:
	.loc 1 672 1
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
	.loc 1 673 12
	sw	zero,-20(s0)
	.loc 1 675 4
	lw	a5,-44(s0)
	bne	a5,zero,.L69
	.loc 1 679 28
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	and	a5,a4,a5
	.loc 1 679 5
	beq	a5,zero,.L70
	.loc 1 681 22
	li	a5,1
	sw	a5,-20(s0)
	j	.L70
.L69:
	.loc 1 692 28
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	and	a5,a4,a5
	.loc 1 692 5
	lw	a4,-40(s0)
	bne	a4,a5,.L70
	.loc 1 694 22
	li	a5,1
	sw	a5,-20(s0)
.L70:
	.loc 1 702 9
	lw	a5,-20(s0)
	.loc 1 703 1
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
	.size	prvTestWaitCondition, .-prvTestWaitCondition
	.section	.text.xEventGroupSetBitsFromISR,"ax",@progbits
	.align	1
	.globl	xEventGroupSetBitsFromISR
	.type	xEventGroupSetBitsFromISR, @function
xEventGroupSetBitsFromISR:
.LFB13:
	.loc 1 709 2
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
	.loc 1 713 13
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lui	a5,%hi(vEventGroupSetBitsCallback)
	addi	a0,a5,%lo(vEventGroupSetBitsCallback)
	call	xTimerPendFunctionCallFromISR
	sw	a0,-20(s0)
	.loc 1 715 10
	lw	a5,-20(s0)
	.loc 1 716 2
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
	.size	xEventGroupSetBitsFromISR, .-xEventGroupSetBitsFromISR
	.section	.text.uxEventGroupGetNumber,"ax",@progbits
	.align	1
	.globl	uxEventGroupGetNumber
	.type	uxEventGroupGetNumber, @function
uxEventGroupGetNumber:
.LFB14:
	.loc 1 724 2
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
	.loc 1 726 22
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 728 5
	lw	a5,-36(s0)
	bne	a5,zero,.L75
	.loc 1 730 12
	sw	zero,-20(s0)
	j	.L76
.L75:
	.loc 1 734 12
	lw	a5,-24(s0)
	lw	a5,24(a5)
	sw	a5,-20(s0)
.L76:
	.loc 1 737 10
	lw	a5,-20(s0)
	.loc 1 738 2
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
	.size	uxEventGroupGetNumber, .-uxEventGroupGetNumber
	.section	.text.vEventGroupSetNumber,"ax",@progbits
	.align	1
	.globl	vEventGroupSetNumber
	.type	vEventGroupSetNumber, @function
vEventGroupSetNumber:
.LFB15:
	.loc 1 746 2
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
	.loc 1 747 58
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,24(a5)
	.loc 1 748 2
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
	.size	vEventGroupSetNumber, .-vEventGroupSetNumber
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/list.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/timers.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/event_groups.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOSConfig.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9bf
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x3c
	.uleb128 0x15
	.4byte	0x2b
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x1a
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x74
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x5f
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x7b
	.uleb128 0x8
	.4byte	0xaa
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3f
	.byte	0x11
	.4byte	0x92
	.uleb128 0x8
	.4byte	0xbb
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x40
	.byte	0x12
	.4byte	0xaa
	.uleb128 0x15
	.4byte	0xcc
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0xaa
	.uleb128 0x8
	.4byte	0xdd
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0xc
	.2byte	0x433
	.byte	0x8
	.4byte	0x116
	.uleb128 0x9
	.4byte	.LASF20
	.2byte	0x438
	.byte	0xd
	.4byte	0xdd
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.2byte	0x439
	.byte	0x8
	.4byte	0x116
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.4byte	0x89
	.4byte	0x126
	.uleb128 0x1c
	.4byte	0x3c
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF22
	.2byte	0x43b
	.byte	0x27
	.4byte	0xee
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x14
	.2byte	0x43e
	.byte	0x10
	.4byte	0x167
	.uleb128 0x9
	.4byte	.LASF25
	.2byte	0x443
	.byte	0xe
	.4byte	0xcc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.2byte	0x444
	.byte	0x8
	.4byte	0x89
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF26
	.2byte	0x445
	.byte	0x17
	.4byte	0x126
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	.LASF27
	.2byte	0x449
	.byte	0x3
	.4byte	0x132
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x20
	.2byte	0x4c4
	.byte	0x10
	.4byte	0x1b5
	.uleb128 0x9
	.4byte	.LASF29
	.2byte	0x4c6
	.byte	0xd
	.4byte	0xdd
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.2byte	0x4c7
	.byte	0xf
	.4byte	0x167
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF30
	.2byte	0x4ca
	.byte	0xf
	.4byte	0xcc
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF31
	.2byte	0x4ce
	.byte	0xc
	.4byte	0x9e
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF32
	.2byte	0x4d1
	.byte	0x3
	.4byte	0x173
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x14
	.byte	0x6
	.byte	0x8c
	.byte	0x8
	.4byte	0x210
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x6
	.byte	0x8f
	.byte	0xd
	.4byte	0xdd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x6
	.byte	0x90
	.byte	0x16
	.4byte	0x210
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x6
	.byte	0x91
	.byte	0x16
	.4byte	0x210
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x6
	.byte	0x92
	.byte	0x9
	.4byte	0x89
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x6
	.byte	0x93
	.byte	0x11
	.4byte	0x24a
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	0x1c1
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x14
	.byte	0x6
	.byte	0xa4
	.byte	0x10
	.4byte	0x24a
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x6
	.byte	0xa7
	.byte	0x17
	.4byte	0xd8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x6
	.byte	0xa8
	.byte	0xf
	.4byte	0x2a1
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x6
	.byte	0xa9
	.byte	0x11
	.4byte	0x295
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	0x215
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x6
	.byte	0x96
	.byte	0x1b
	.4byte	0x1c1
	.uleb128 0x8
	.4byte	0x24f
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0xc
	.byte	0x6
	.byte	0x98
	.byte	0x8
	.4byte	0x295
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x6
	.byte	0x9b
	.byte	0xd
	.4byte	0xdd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x6
	.byte	0x9c
	.byte	0x16
	.4byte	0x210
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x6
	.byte	0x9d
	.byte	0x16
	.4byte	0x210
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x6
	.byte	0x9f
	.byte	0x20
	.4byte	0x260
	.uleb128 0x6
	.4byte	0x24f
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x6
	.byte	0xab
	.byte	0x3
	.4byte	0x215
	.uleb128 0x8
	.4byte	0x2a6
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x7
	.byte	0x58
	.byte	0x10
	.4byte	0x2c3
	.uleb128 0x6
	.4byte	0x2c8
	.uleb128 0x1d
	.4byte	0x2d8
	.uleb128 0x5
	.4byte	0x89
	.uleb128 0x5
	.4byte	0xaa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x8
	.byte	0x52
	.byte	0x22
	.4byte	0x2e4
	.uleb128 0x6
	.4byte	0x2e9
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x20
	.byte	0x1
	.byte	0x3f
	.byte	0x10
	.4byte	0x32b
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x1
	.byte	0x41
	.byte	0xe
	.4byte	0x32b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x1
	.byte	0x42
	.byte	0x9
	.4byte	0x2a6
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x1
	.byte	0x45
	.byte	0xf
	.4byte	0xcc
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x1
	.byte	0x49
	.byte	0xb
	.4byte	0x9e
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x8
	.byte	0x5c
	.byte	0x14
	.4byte	0xdd
	.uleb128 0x8
	.4byte	0x32b
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x1
	.byte	0x4b
	.byte	0x3
	.4byte	0x2e9
	.uleb128 0x8
	.4byte	0x33c
	.uleb128 0x1e
	.4byte	.LASF56
	.byte	0x9
	.byte	0xa4
	.byte	0x6
	.4byte	0x35f
	.uleb128 0x5
	.4byte	0x89
	.byte	0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0xa
	.2byte	0x972
	.4byte	0x376
	.uleb128 0x5
	.4byte	0x2a1
	.uleb128 0x5
	.4byte	0xe9
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x4a3
	.byte	0xc
	.4byte	0xbb
	.4byte	0x39c
	.uleb128 0x5
	.4byte	0x2b7
	.uleb128 0x5
	.4byte	0x89
	.uleb128 0x5
	.4byte	0xaa
	.uleb128 0x5
	.4byte	0x39c
	.byte	0
	.uleb128 0x6
	.4byte	0xbb
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x4
	.byte	0x67
	.byte	0xd
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x4
	.byte	0x66
	.byte	0xd
	.uleb128 0x12
	.4byte	.LASF60
	.2byte	0x982
	.4byte	0xdd
	.uleb128 0x12
	.4byte	.LASF61
	.2byte	0x53d
	.4byte	0xbb
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0xa
	.2byte	0x94a
	.4byte	0x3e3
	.uleb128 0x5
	.4byte	0x3e3
	.uleb128 0x5
	.4byte	0xe9
	.uleb128 0x5
	.4byte	0xe9
	.byte	0
	.uleb128 0x6
	.4byte	0x2a6
	.uleb128 0x8
	.4byte	0x3e3
	.uleb128 0x20
	.4byte	.LASF63
	.byte	0xa
	.2byte	0x507
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF64
	.2byte	0x993
	.4byte	0xbb
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0x9
	.byte	0xa3
	.byte	0x7
	.4byte	0x89
	.4byte	0x417
	.uleb128 0x5
	.4byte	0x2b
	.byte	0
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x159
	.4byte	0x429
	.uleb128 0x5
	.4byte	0x3e8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0xb
	.byte	0x97
	.byte	0x6
	.uleb128 0x22
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x2e9
	.byte	0x7
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x467
	.uleb128 0x2
	.4byte	.LASF69
	.2byte	0x2e9
	.byte	0x24
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF52
	.2byte	0x2e9
	.byte	0x3d
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.4byte	.LASF72
	.2byte	0x2d3
	.byte	0xe
	.4byte	0xcc
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4af
	.uleb128 0x2
	.4byte	.LASF69
	.2byte	0x2d3
	.byte	0x2b
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF70
	.2byte	0x2d5
	.byte	0xe
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF71
	.2byte	0x2d6
	.byte	0x16
	.4byte	0x4af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	0x348
	.uleb128 0x8
	.4byte	0x4af
	.uleb128 0xb
	.4byte	.LASF73
	.2byte	0x2c4
	.4byte	0xbb
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50f
	.uleb128 0x2
	.4byte	.LASF69
	.2byte	0x2c4
	.byte	0x3b
	.4byte	0x2d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF74
	.2byte	0x2c4
	.byte	0x5a
	.4byte	0x337
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF75
	.2byte	0x2c4
	.byte	0x73
	.4byte	0x39c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF70
	.2byte	0x2c6
	.byte	0xd
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x29f
	.byte	0x13
	.4byte	0xbb
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x567
	.uleb128 0x2
	.4byte	.LASF76
	.2byte	0x29f
	.byte	0x3b
	.4byte	0x337
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF77
	.2byte	0x29f
	.byte	0x61
	.4byte	0x337
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x29f
	.byte	0x83
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF79
	.2byte	0x2a1
	.byte	0xc
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF81
	.2byte	0x299
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59b
	.uleb128 0x2
	.4byte	.LASF82
	.2byte	0x299
	.byte	0x2a
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF83
	.2byte	0x299
	.byte	0x47
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF84
	.2byte	0x291
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5cf
	.uleb128 0x2
	.4byte	.LASF82
	.2byte	0x291
	.byte	0x28
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x291
	.byte	0x45
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF86
	.2byte	0x265
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x612
	.uleb128 0x2
	.4byte	.LASF69
	.2byte	0x265
	.byte	0x2c
	.4byte	0x2d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF71
	.2byte	0x267
	.byte	0xf
	.4byte	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF87
	.2byte	0x268
	.byte	0xf
	.4byte	0x617
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	0x33c
	.uleb128 0x6
	.4byte	0x2b2
	.uleb128 0xb
	.4byte	.LASF88
	.2byte	0x207
	.4byte	0x32b
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6dd
	.uleb128 0x2
	.4byte	.LASF69
	.2byte	0x207
	.byte	0x34
	.4byte	0x2d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF74
	.2byte	0x207
	.byte	0x53
	.4byte	0x337
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.4byte	.LASF89
	.2byte	0x209
	.byte	0xd
	.4byte	0x2a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF35
	.2byte	0x209
	.byte	0x1a
	.4byte	0x2a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF90
	.2byte	0x20a
	.byte	0x13
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x20b
	.byte	0x10
	.4byte	0x617
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF92
	.2byte	0x20c
	.byte	0xd
	.4byte	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF93
	.2byte	0x20c
	.byte	0x20
	.4byte	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF94
	.2byte	0x20c
	.byte	0x31
	.4byte	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF71
	.2byte	0x20d
	.byte	0xf
	.4byte	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF95
	.2byte	0x20e
	.byte	0xc
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.4byte	0x25b
	.uleb128 0x16
	.4byte	.LASF96
	.2byte	0x1f7
	.byte	0xd
	.4byte	0x32b
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x739
	.uleb128 0x2
	.4byte	.LASF69
	.2byte	0x1f7
	.byte	0x3b
	.4byte	0x2d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF97
	.2byte	0x1f9
	.byte	0xd
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF71
	.2byte	0x1fa
	.byte	0x1c
	.4byte	0x4b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF98
	.2byte	0x1fb
	.byte	0xd
	.4byte	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF99
	.2byte	0x1ea
	.4byte	0xbb
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x780
	.uleb128 0x2
	.4byte	.LASF69
	.2byte	0x1ea
	.byte	0x3d
	.4byte	0x2d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF92
	.2byte	0x1ea
	.byte	0x5c
	.4byte	0x337
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF70
	.2byte	0x1ec
	.byte	0xe
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF100
	.2byte	0x1cd
	.4byte	0x32b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d6
	.uleb128 0x2
	.4byte	.LASF69
	.2byte	0x1cd
	.byte	0x36
	.4byte	0x2d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF92
	.2byte	0x1cd
	.byte	0x55
	.4byte	0x337
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF71
	.2byte	0x1cf
	.byte	0xf
	.4byte	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF98
	.2byte	0x1d0
	.byte	0xd
	.4byte	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF101
	.2byte	0x137
	.4byte	0x32b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8af
	.uleb128 0x2
	.4byte	.LASF69
	.2byte	0x137
	.byte	0x35
	.4byte	0x2d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF77
	.2byte	0x137
	.byte	0x54
	.4byte	0x337
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF102
	.2byte	0x137
	.byte	0x76
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x137
	.byte	0x95
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF103
	.2byte	0x137
	.byte	0xb1
	.4byte	0xdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	.LASF71
	.2byte	0x139
	.byte	0xf
	.4byte	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF98
	.2byte	0x13a
	.byte	0xd
	.4byte	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF94
	.2byte	0x13a
	.byte	0x17
	.4byte	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF79
	.2byte	0x13b
	.byte	0xc
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF104
	.2byte	0x13b
	.byte	0x1f
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF105
	.2byte	0x13c
	.byte	0xc
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x14b
	.byte	0x15
	.4byte	0x337
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0xbf
	.byte	0xd
	.4byte	0x32b
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x947
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0xbf
	.byte	0x31
	.4byte	0x2d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0xbf
	.byte	0x50
	.4byte	0x337
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0xbf
	.byte	0x6f
	.4byte	0x337
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.4byte	.LASF103
	.byte	0xbf
	.byte	0x8b
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0xc1
	.byte	0xd
	.4byte	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0xc1
	.byte	0x21
	.4byte	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0xc2
	.byte	0xf
	.4byte	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0xc3
	.byte	0xc
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0xc4
	.byte	0xc
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x91
	.byte	0x15
	.4byte	0x2d8
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96f
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x93
	.byte	0x10
	.4byte	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x5d
	.byte	0x15
	.4byte	0x2d8
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9bd
	.uleb128 0xc
	.4byte	.LASF110
	.byte	0x5d
	.byte	0x42
	.4byte	0x9bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x5f
	.byte	0x10
	.4byte	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xa
	.4byte	.LASF111
	.byte	0x69
	.byte	0x14
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x1b5
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x8c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"xDummy1"
.LASF57:
	.string	"vTaskRemoveFromUnorderedEventList"
.LASF23:
	.string	"xSTATIC_MINI_LIST_ITEM"
.LASF108:
	.string	"xEventGroupCreate"
.LASF62:
	.string	"vTaskPlaceOnUnorderedEventList"
.LASF78:
	.string	"xWaitForAllBits"
.LASF90:
	.string	"pxListEnd"
.LASF67:
	.string	"vListInitialise"
.LASF64:
	.string	"xTaskGetSchedulerState"
.LASF7:
	.string	"short int"
.LASF13:
	.string	"size_t"
.LASF36:
	.string	"pxPrevious"
.LASF20:
	.string	"xDummy2"
.LASF77:
	.string	"uxBitsToWaitFor"
.LASF102:
	.string	"xClearOnExit"
.LASF26:
	.string	"xDummy4"
.LASF54:
	.string	"EventBits_t"
.LASF79:
	.string	"xWaitConditionMet"
.LASF48:
	.string	"EventGroupHandle_t"
.LASF59:
	.string	"vTaskEnterCritical"
.LASF37:
	.string	"pvOwner"
.LASF69:
	.string	"xEventGroup"
.LASF103:
	.string	"xTicksToWait"
.LASF109:
	.string	"xEventGroupCreateStatic"
.LASF15:
	.string	"uint8_t"
.LASF28:
	.string	"xSTATIC_EVENT_GROUP"
.LASF65:
	.string	"xTimerPendFunctionCallFromISR"
.LASF93:
	.string	"uxBitsWaitedFor"
.LASF86:
	.string	"vEventGroupDelete"
.LASF52:
	.string	"uxEventGroupNumber"
.LASF31:
	.string	"ucDummy4"
.LASF46:
	.string	"List_t"
.LASF45:
	.string	"MiniListItem_t"
.LASF3:
	.string	"long long int"
.LASF81:
	.string	"vEventGroupClearBitsCallback"
.LASF91:
	.string	"pxList"
.LASF27:
	.string	"StaticList_t"
.LASF9:
	.string	"long int"
.LASF39:
	.string	"xLIST"
.LASF110:
	.string	"pxEventGroupBuffer"
.LASF89:
	.string	"pxListItem"
.LASF32:
	.string	"StaticEventGroup_t"
.LASF34:
	.string	"xItemValue"
.LASF21:
	.string	"pvDummy3"
.LASF51:
	.string	"xTasksWaitingForBits"
.LASF106:
	.string	"xEventGroupSync"
.LASF53:
	.string	"ucStaticallyAllocated"
.LASF33:
	.string	"xLIST_ITEM"
.LASF58:
	.string	"vTaskExitCritical"
.LASF100:
	.string	"xEventGroupClearBits"
.LASF19:
	.string	"TickType_t"
.LASF4:
	.string	"long double"
.LASF73:
	.string	"xEventGroupSetBitsFromISR"
.LASF6:
	.string	"unsigned char"
.LASF68:
	.string	"vAssertCalled"
.LASF24:
	.string	"xSTATIC_LIST"
.LASF5:
	.string	"signed char"
.LASF14:
	.string	"int32_t"
.LASF11:
	.string	"long long unsigned int"
.LASF16:
	.string	"uint32_t"
.LASF82:
	.string	"pvEventGroup"
.LASF2:
	.string	"unsigned int"
.LASF43:
	.string	"ListItem_t"
.LASF17:
	.string	"BaseType_t"
.LASF22:
	.string	"StaticMiniListItem_t"
.LASF38:
	.string	"pvContainer"
.LASF101:
	.string	"xEventGroupWaitBits"
.LASF61:
	.string	"xTaskResumeAll"
.LASF8:
	.string	"short unsigned int"
.LASF56:
	.string	"vPortFree"
.LASF113:
	.string	"prvTestWaitCondition"
.LASF12:
	.string	"char"
.LASF35:
	.string	"pxNext"
.LASF107:
	.string	"uxOriginalBitValue"
.LASF112:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF25:
	.string	"uxDummy2"
.LASF30:
	.string	"uxDummy3"
.LASF49:
	.string	"EventGroupDef_t"
.LASF80:
	.string	"vEventGroupSetNumber"
.LASF94:
	.string	"uxControlBits"
.LASF96:
	.string	"xEventGroupGetBitsFromISR"
.LASF88:
	.string	"xEventGroupSetBits"
.LASF47:
	.string	"PendedFunction_t"
.LASF98:
	.string	"uxReturn"
.LASF10:
	.string	"long unsigned int"
.LASF18:
	.string	"UBaseType_t"
.LASF72:
	.string	"uxEventGroupGetNumber"
.LASF40:
	.string	"uxNumberOfItems"
.LASF60:
	.string	"uxTaskResetEventItemValue"
.LASF42:
	.string	"xListEnd"
.LASF99:
	.string	"xEventGroupClearBitsFromISR"
.LASF97:
	.string	"uxSavedInterruptStatus"
.LASF70:
	.string	"xReturn"
.LASF85:
	.string	"ulBitsToSet"
.LASF95:
	.string	"xMatchFound"
.LASF75:
	.string	"pxHigherPriorityTaskWoken"
.LASF92:
	.string	"uxBitsToClear"
.LASF50:
	.string	"uxEventBits"
.LASF71:
	.string	"pxEventBits"
.LASF41:
	.string	"pxIndex"
.LASF105:
	.string	"xTimeoutOccurred"
.LASF84:
	.string	"vEventGroupSetBitsCallback"
.LASF44:
	.string	"xMINI_LIST_ITEM"
.LASF76:
	.string	"uxCurrentEventBits"
.LASF66:
	.string	"pvPortMalloc"
.LASF87:
	.string	"pxTasksWaitingForBits"
.LASF63:
	.string	"vTaskSuspendAll"
.LASF104:
	.string	"xAlreadyYielded"
.LASF74:
	.string	"uxBitsToSet"
.LASF111:
	.string	"xSize"
.LASF83:
	.string	"ulBitsToClear"
.LASF55:
	.string	"EventGroup_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/event_groups.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
