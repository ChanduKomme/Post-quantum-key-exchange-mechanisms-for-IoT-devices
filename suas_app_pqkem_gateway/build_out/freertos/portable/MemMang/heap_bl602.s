	.file	"heap_bl602.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos" "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/MemMang/heap_bl602.c"
	.section	.srodata.xHeapStructSize,"a"
	.align	2
	.type	xHeapStructSize, @object
	.size	xHeapStructSize, 4
xHeapStructSize:
	.word	16
	.section	.sbss.xStart,"aw",@nobits
	.align	2
	.type	xStart, @object
	.size	xStart, 8
xStart:
	.zero	8
	.section	.sbss.pxEnd,"aw",@nobits
	.align	2
	.type	pxEnd, @object
	.size	pxEnd, 4
pxEnd:
	.zero	4
	.section	.sbss.xFreeBytesRemaining,"aw",@nobits
	.align	2
	.type	xFreeBytesRemaining, @object
	.size	xFreeBytesRemaining, 4
xFreeBytesRemaining:
	.zero	4
	.section	.sbss.xMinimumEverFreeBytesRemaining,"aw",@nobits
	.align	2
	.type	xMinimumEverFreeBytesRemaining, @object
	.size	xMinimumEverFreeBytesRemaining, 4
xMinimumEverFreeBytesRemaining:
	.zero	4
	.section	.sbss.xNumberOfSuccessfulAllocations,"aw",@nobits
	.align	2
	.type	xNumberOfSuccessfulAllocations, @object
	.size	xNumberOfSuccessfulAllocations, 4
xNumberOfSuccessfulAllocations:
	.zero	4
	.section	.sbss.xNumberOfSuccessfulFrees,"aw",@nobits
	.align	2
	.type	xNumberOfSuccessfulFrees, @object
	.size	xNumberOfSuccessfulFrees, 4
xNumberOfSuccessfulFrees:
	.zero	4
	.section	.sbss.xBlockAllocatedBit,"aw",@nobits
	.align	2
	.type	xBlockAllocatedBit, @object
	.size	xBlockAllocatedBit, 4
xBlockAllocatedBit:
	.zero	4
	.section	.text.pvPortMalloc,"ax",@progbits
	.align	1
	.globl	pvPortMalloc
	.type	pvPortMalloc, @function
pvPortMalloc:
.LFB2:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/MemMang/heap_bl602.c"
	.loc 1 135 1
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
	.loc 1 137 7
	sw	zero,-28(s0)
	.loc 1 141 16
	lui	a5,%hi(pxEnd)
	lw	a5,%lo(pxEnd)(a5)
	.loc 1 141 4
	bne	a5,zero,.L2
	.loc 1 141 23 discriminator 1
	call	vAssertCalled
.L2:
	.loc 1 143 2
	call	vTaskSuspendAll
	.loc 1 149 21
	lui	a5,%hi(xBlockAllocatedBit)
	lw	a4,%lo(xBlockAllocatedBit)(a5)
	lw	a5,-36(s0)
	and	a5,a4,a5
	.loc 1 149 5
	bne	a5,zero,.L3
	.loc 1 153 15
	lw	a5,-36(s0)
	beq	a5,zero,.L4
	.loc 1 154 33
	li	a4,16
	lw	a5,-36(s0)
	add	a5,a4,a5
	.loc 1 153 37 discriminator 1
	lw	a4,-36(s0)
	bgeu	a4,a5,.L4
	.loc 1 156 17
	li	a5,16
	lw	a4,-36(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 1 159 23
	lw	a5,-36(s0)
	andi	a5,a5,15
	.loc 1 159 7
	beq	a5,zero,.L7
	.loc 1 162 39
	lw	a5,-36(s0)
	andi	a5,a5,-16
	addi	a5,a5,16
	.loc 1 162 23
	lw	a4,-36(s0)
	bgeu	a4,a5,.L6
	.loc 1 165 37
	lw	a5,-36(s0)
	andi	a5,a5,-16
	addi	a5,a5,16
	sw	a5,-36(s0)
	.loc 1 159 7
	j	.L7
.L6:
	.loc 1 169 37
	sw	zero,-36(s0)
	.loc 1 159 7
	j	.L7
.L4:
	.loc 1 179 17
	sw	zero,-36(s0)
.L7:
	.loc 1 182 6
	lw	a5,-36(s0)
	beq	a5,zero,.L3
	.loc 1 182 45 discriminator 1
	lui	a5,%hi(xFreeBytesRemaining)
	lw	a5,%lo(xFreeBytesRemaining)(a5)
	.loc 1 182 28 discriminator 1
	lw	a4,-36(s0)
	bgtu	a4,a5,.L3
	.loc 1 186 21
	lui	a5,%hi(xStart)
	addi	a5,a5,%lo(xStart)
	sw	a5,-24(s0)
	.loc 1 187 13
	lui	a5,%hi(xStart)
	addi	a5,a5,%lo(xStart)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 188 10
	j	.L8
.L10:
	.loc 1 190 22
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 191 14
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L8:
	.loc 1 188 21
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 188 50
	lw	a4,-36(s0)
	bleu	a4,a5,.L9
	.loc 1 188 62 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 188 50 discriminator 1
	bne	a5,zero,.L10
.L9:
	.loc 1 196 17
	lui	a5,%hi(pxEnd)
	lw	a5,%lo(pxEnd)(a5)
	.loc 1 196 7
	lw	a4,-20(s0)
	beq	a4,a5,.L3
	.loc 1 200 61
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 1 200 17
	li	a5,16
	.loc 1 200 15
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 204 48
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 204 39
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 208 19
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 208 32
	lw	a5,-36(s0)
	sub	a4,a4,a5
	.loc 1 208 52
	li	a5,16
	slli	a5,a5,1
	.loc 1 208 8
	bleu	a4,a5,.L11
	.loc 1 214 22
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 218 43
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 218 56
	lw	a5,-36(s0)
	sub	a4,a4,a5
	.loc 1 218 34
	lw	a5,-32(s0)
	sw	a4,4(a5)
	.loc 1 219 27
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,4(a5)
	.loc 1 222 7
	lw	a0,-32(s0)
	call	prvInsertBlockIntoFreeList
.L11:
	.loc 1 229 26
	lui	a5,%hi(xFreeBytesRemaining)
	lw	a4,%lo(xFreeBytesRemaining)(a5)
	.loc 1 229 36
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 229 26
	sub	a4,a4,a5
	lui	a5,%hi(xFreeBytesRemaining)
	sw	a4,%lo(xFreeBytesRemaining)(a5)
	.loc 1 231 30
	lui	a5,%hi(xFreeBytesRemaining)
	lw	a4,%lo(xFreeBytesRemaining)(a5)
	lui	a5,%hi(xMinimumEverFreeBytesRemaining)
	lw	a5,%lo(xMinimumEverFreeBytesRemaining)(a5)
	.loc 1 231 8
	bgeu	a4,a5,.L12
	.loc 1 233 38
	lui	a5,%hi(xFreeBytesRemaining)
	lw	a4,%lo(xFreeBytesRemaining)(a5)
	lui	a5,%hi(xMinimumEverFreeBytesRemaining)
	sw	a4,%lo(xMinimumEverFreeBytesRemaining)(a5)
.L12:
	.loc 1 242 13
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 242 26
	lui	a5,%hi(xBlockAllocatedBit)
	lw	a5,%lo(xBlockAllocatedBit)(a5)
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 243 31
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 1 244 36
	lui	a5,%hi(xNumberOfSuccessfulAllocations)
	lw	a5,%lo(xNumberOfSuccessfulAllocations)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xNumberOfSuccessfulAllocations)
	sw	a4,%lo(xNumberOfSuccessfulAllocations)(a5)
.L3:
	.loc 1 263 11
	call	xTaskResumeAll
	.loc 1 267 5
	lw	a5,-28(s0)
	bne	a5,zero,.L13
.LBB2:
	.loc 1 270 4
	call	vApplicationMallocFailedHook
.L13:
.LBE2:
	.loc 1 279 9
	lw	a5,-28(s0)
	.loc 1 280 1
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
	.size	pvPortMalloc, .-pvPortMalloc
	.section	.text.pvPortCalloc,"ax",@progbits
	.align	1
	.globl	pvPortCalloc
	.type	pvPortCalloc, @function
pvPortCalloc:
.LFB3:
	.loc 1 284 1
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
	.loc 1 285 11
	sw	zero,-20(s0)
	.loc 1 287 10
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	mul	a5,a4,a5
	mv	a0,a5
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 1 288 7
	lw	a5,-20(s0)
	beq	a5,zero,.L16
	.loc 1 289 9
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	mul	a5,a4,a5
	mv	a2,a5
	li	a1,0
	lw	a0,-20(s0)
	call	memset
.L16:
	.loc 1 291 12
	lw	a5,-20(s0)
	.loc 1 292 1
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
.LFE3:
	.size	pvPortCalloc, .-pvPortCalloc
	.section	.text.vPortFree,"ax",@progbits
	.align	1
	.globl	vPortFree
	.type	vPortFree, @function
vPortFree:
.LFB4:
	.loc 1 295 1
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
	.loc 1 296 10
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 299 4
	lw	a5,-36(s0)
	beq	a5,zero,.L22
	.loc 1 303 7
	li	a5,16
	neg	a5,a5
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 306 10
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 309 17
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 1 309 30
	lui	a5,%hi(xBlockAllocatedBit)
	lw	a5,%lo(xBlockAllocatedBit)(a5)
	and	a5,a4,a5
	.loc 1 309 5
	bne	a5,zero,.L20
	.loc 1 309 67 discriminator 1
	call	vAssertCalled
.L20:
	.loc 1 310 15
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 310 5
	beq	a5,zero,.L21
	.loc 1 310 11 discriminator 1
	call	vAssertCalled
.L21:
	.loc 1 312 15
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 1 312 28
	lui	a5,%hi(xBlockAllocatedBit)
	lw	a5,%lo(xBlockAllocatedBit)(a5)
	and	a5,a4,a5
	.loc 1 312 5
	beq	a5,zero,.L22
	.loc 1 314 14
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 314 6
	bne	a5,zero,.L22
	.loc 1 318 11
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 1 318 27
	lui	a5,%hi(xBlockAllocatedBit)
	lw	a5,%lo(xBlockAllocatedBit)(a5)
	not	a5,a5
	.loc 1 318 24
	and	a4,a4,a5
	lw	a5,-24(s0)
	sw	a4,4(a5)
	.loc 1 320 5
	call	vTaskSuspendAll
	.loc 1 323 35
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 1 323 26
	lui	a5,%hi(xFreeBytesRemaining)
	lw	a5,%lo(xFreeBytesRemaining)(a5)
	add	a4,a4,a5
	lui	a5,%hi(xFreeBytesRemaining)
	sw	a4,%lo(xFreeBytesRemaining)(a5)
	.loc 1 325 6
	lw	a0,-24(s0)
	call	prvInsertBlockIntoFreeList
	.loc 1 326 30
	lui	a5,%hi(xNumberOfSuccessfulFrees)
	lw	a5,%lo(xNumberOfSuccessfulFrees)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xNumberOfSuccessfulFrees)
	sw	a4,%lo(xNumberOfSuccessfulFrees)(a5)
	.loc 1 328 14
	call	xTaskResumeAll
.L22:
	.loc 1 340 1
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
	.size	vPortFree, .-vPortFree
	.section	.text.pvPortRealloc,"ax",@progbits
	.align	1
	.globl	pvPortRealloc
	.type	pvPortRealloc, @function
pvPortRealloc:
.LFB5:
	.loc 1 343 1
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
	.loc 1 345 5
	lw	a5,-52(s0)
	beq	a5,zero,.L24
	.loc 1 348 6
	lw	a5,-56(s0)
	bne	a5,zero,.L25
	.loc 1 349 4
	lw	a0,-52(s0)
	call	vPortFree
	.loc 1 350 10
	li	a5,0
	j	.L26
.L25:
.LBB3:
	.loc 1 355 48
	li	a5,16
	neg	a5,a5
	.loc 1 355 13
	lw	a4,-52(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 356 17
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 357 32
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 1 357 45
	li	a5,16
	.loc 1 357 11
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 360 7
	lw	a4,-56(s0)
	lw	a5,-28(s0)
	bne	a4,a5,.L27
	.loc 1 361 12
	lw	a5,-52(s0)
	j	.L26
.L27:
	.loc 1 364 21
	lui	a5,%hi(xBlockAllocatedBit)
	lw	a4,%lo(xBlockAllocatedBit)(a5)
	lw	a5,-28(s0)
	and	a5,a4,a5
	.loc 1 364 8
	beq	a5,zero,.L28
.LBB4:
	.loc 1 366 20
	lw	a1,-56(s0)
	li	a0,1
	call	pvPortCalloc
	sw	a0,-32(s0)
	.loc 1 369 9
	lw	a5,-32(s0)
	beq	a5,zero,.L29
.LBB5:
	.loc 1 373 14
	lw	a4,-28(s0)
	lw	a5,-56(s0)
	bleu	a5,a4,.L30
	mv	a5,a4
.L30:
	sw	a5,-36(s0)
	.loc 1 376 7
	lw	a2,-36(s0)
	lw	a1,-52(s0)
	lw	a0,-32(s0)
	call	memcpy
	.loc 1 379 7
	lw	a0,-52(s0)
	call	vPortFree
	.loc 1 382 14
	lw	a5,-32(s0)
	j	.L26
.L29:
.LBE5:
	.loc 1 386 13
	li	a5,0
	j	.L26
.L28:
.LBE4:
	.loc 1 390 13
	lw	a1,-56(s0)
	li	a0,1
	call	pvPortCalloc
	mv	a5,a0
	j	.L26
.L24:
.LBE3:
	.loc 1 396 10
	lw	a1,-56(s0)
	li	a0,1
	call	pvPortCalloc
	mv	a5,a0
.L26:
	.loc 1 398 1
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
.LFE5:
	.size	pvPortRealloc, .-pvPortRealloc
	.section	.text.xPortGetFreeHeapSize,"ax",@progbits
	.align	1
	.globl	xPortGetFreeHeapSize
	.type	xPortGetFreeHeapSize, @function
xPortGetFreeHeapSize:
.LFB6:
	.loc 1 402 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 403 9
	lui	a5,%hi(xFreeBytesRemaining)
	lw	a5,%lo(xFreeBytesRemaining)(a5)
	.loc 1 404 1
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
	.size	xPortGetFreeHeapSize, .-xPortGetFreeHeapSize
	.section	.text.xPortGetMinimumEverFreeHeapSize,"ax",@progbits
	.align	1
	.globl	xPortGetMinimumEverFreeHeapSize
	.type	xPortGetMinimumEverFreeHeapSize, @function
xPortGetMinimumEverFreeHeapSize:
.LFB7:
	.loc 1 408 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 409 9
	lui	a5,%hi(xMinimumEverFreeBytesRemaining)
	lw	a5,%lo(xMinimumEverFreeBytesRemaining)(a5)
	.loc 1 410 1
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
.LFE7:
	.size	xPortGetMinimumEverFreeHeapSize, .-xPortGetMinimumEverFreeHeapSize
	.section	.text.prvInsertBlockIntoFreeList,"ax",@progbits
	.align	1
	.type	prvInsertBlockIntoFreeList, @function
prvInsertBlockIntoFreeList:
.LFB8:
	.loc 1 414 1
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
	.loc 1 420 18
	lui	a5,%hi(xStart)
	addi	a5,a5,%lo(xStart)
	sw	a5,-20(s0)
	.loc 1 420 2
	j	.L36
.L37:
	.loc 1 420 87 discriminator 3
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L36:
	.loc 1 420 39 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 420 57 discriminator 1
	lw	a4,-36(s0)
	bgtu	a4,a5,.L37
	.loc 1 427 6
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 428 24
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 428 12
	lw	a4,-24(s0)
	add	a5,a4,a5
	.loc 1 428 4
	lw	a4,-36(s0)
	bne	a4,a5,.L38
	.loc 1 430 13
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 430 44
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 430 26
	add	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 431 19
	lw	a5,-20(s0)
	sw	a5,-36(s0)
.L38:
	.loc 1 440 6
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 441 29
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 441 12
	lw	a4,-24(s0)
	add	a4,a4,a5
	.loc 1 441 71
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 441 4
	bne	a4,a5,.L39
	.loc 1 443 17
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 443 35
	lui	a5,%hi(pxEnd)
	lw	a5,%lo(pxEnd)(a5)
	.loc 1 443 5
	beq	a4,a5,.L40
	.loc 1 446 19
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 446 45
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 446 62
	lw	a5,4(a5)
	.loc 1 446 32
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 1 447 49
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 447 66
	lw	a4,0(a5)
	.loc 1 447 37
	lw	a5,-36(s0)
	sw	a4,0(a5)
	j	.L41
.L40:
	.loc 1 451 37
	lui	a5,%hi(pxEnd)
	lw	a4,%lo(pxEnd)(a5)
	lw	a5,-36(s0)
	sw	a4,0(a5)
	j	.L41
.L39:
	.loc 1 456 48
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 456 36
	lw	a5,-36(s0)
	sw	a4,0(a5)
.L41:
	.loc 1 463 4
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	beq	a4,a5,.L43
	.loc 1 465 31
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
.L43:
	.loc 1 471 1
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
	.size	prvInsertBlockIntoFreeList, .-prvInsertBlockIntoFreeList
	.section	.text.vPortDefineHeapRegions,"ax",@progbits
	.align	1
	.globl	vPortDefineHeapRegions
	.type	vPortDefineHeapRegions, @function
vPortDefineHeapRegions:
.LFB9:
	.loc 1 475 1
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
	.loc 1 476 14
	sw	zero,-40(s0)
	.loc 1 478 26
	sw	zero,-24(s0)
	.loc 1 479 12
	sw	zero,-28(s0)
	.loc 1 484 3
	lui	a5,%hi(pxEnd)
	lw	a5,%lo(pxEnd)(a5)
	.loc 1 484 4
	beq	a5,zero,.L45
	.loc 1 484 10 discriminator 1
	call	vAssertCalled
.L45:
	.loc 1 486 33
	lw	a5,-28(s0)
	slli	a5,a5,3
	.loc 1 486 15
	lw	a4,-52(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 1 488 7
	j	.L46
.L52:
	.loc 1 490 20
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 493 37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 493 12
	sw	a5,-32(s0)
	.loc 1 494 18
	lw	a5,-32(s0)
	andi	a5,a5,15
	.loc 1 494 5
	beq	a5,zero,.L47
	.loc 1 496 13
	lw	a5,-32(s0)
	addi	a5,a5,15
	sw	a5,-32(s0)
	.loc 1 497 13
	lw	a5,-32(s0)
	andi	a5,a5,-16
	sw	a5,-32(s0)
	.loc 1 500 58
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 500 35
	mv	a4,a5
	.loc 1 500 21
	lw	a5,-32(s0)
	sub	a5,a4,a5
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L47:
	.loc 1 503 16
	lw	a5,-32(s0)
	sw	a5,-44(s0)
	.loc 1 506 5
	lw	a5,-28(s0)
	bne	a5,zero,.L48
	.loc 1 510 29
	lw	a4,-44(s0)
	.loc 1 510 27
	lui	a5,%hi(xStart)
	addi	a5,a5,%lo(xStart)
	sw	a4,0(a5)
	.loc 1 511 22
	lui	a5,%hi(xStart)
	addi	a5,a5,%lo(xStart)
	sw	zero,4(a5)
	j	.L49
.L48:
	.loc 1 517 5
	lui	a5,%hi(pxEnd)
	lw	a5,%lo(pxEnd)(a5)
	.loc 1 517 6
	bne	a5,zero,.L50
	.loc 1 517 12 discriminator 1
	call	vAssertCalled
.L50:
	.loc 1 520 21
	lui	a5,%hi(pxEnd)
	lw	a5,%lo(pxEnd)(a5)
	mv	a4,a5
	.loc 1 520 6
	lw	a5,-32(s0)
	bgtu	a5,a4,.L49
	.loc 1 520 47 discriminator 1
	call	vAssertCalled
.L49:
	.loc 1 525 23
	lui	a5,%hi(pxEnd)
	lw	a5,%lo(pxEnd)(a5)
	sw	a5,-48(s0)
	.loc 1 529 12
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 530 12
	li	a5,16
	lw	a4,-32(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 531 12
	lw	a5,-32(s0)
	andi	a5,a5,-16
	sw	a5,-32(s0)
	.loc 1 532 11
	lw	a4,-32(s0)
	.loc 1 532 9
	lui	a5,%hi(pxEnd)
	sw	a4,%lo(pxEnd)(a5)
	.loc 1 533 8
	lui	a5,%hi(pxEnd)
	lw	a5,%lo(pxEnd)(a5)
	.loc 1 533 21
	sw	zero,4(a5)
	.loc 1 534 8
	lui	a5,%hi(pxEnd)
	lw	a5,%lo(pxEnd)(a5)
	.loc 1 534 26
	sw	zero,0(a5)
	.loc 1 539 28
	lw	a5,-44(s0)
	sw	a5,-40(s0)
	.loc 1 540 53
	lw	a5,-40(s0)
	.loc 1 540 51
	lw	a4,-32(s0)
	sub	a4,a4,a5
	.loc 1 540 40
	lw	a5,-40(s0)
	sw	a4,4(a5)
	.loc 1 541 45
	lui	a5,%hi(pxEnd)
	lw	a4,%lo(pxEnd)(a5)
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 545 5
	lw	a5,-48(s0)
	beq	a5,zero,.L51
	.loc 1 547 41
	lw	a5,-48(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
.L51:
	.loc 1 550 45
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 1 550 18
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 553 18
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
	.loc 1 554 34
	lw	a5,-28(s0)
	slli	a5,a5,3
	.loc 1 554 16
	lw	a4,-52(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
.L46:
	.loc 1 488 21
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 488 36
	bne	a5,zero,.L52
	.loc 1 557 33
	lui	a5,%hi(xMinimumEverFreeBytesRemaining)
	lw	a4,-24(s0)
	sw	a4,%lo(xMinimumEverFreeBytesRemaining)(a5)
	.loc 1 558 22
	lui	a5,%hi(xFreeBytesRemaining)
	lw	a4,-24(s0)
	sw	a4,%lo(xFreeBytesRemaining)(a5)
	.loc 1 561 4
	lw	a5,-24(s0)
	bne	a5,zero,.L53
	.loc 1 561 32 discriminator 1
	call	vAssertCalled
.L53:
	.loc 1 564 21
	lui	a5,%hi(xBlockAllocatedBit)
	li	a4,-2147483648
	sw	a4,%lo(xBlockAllocatedBit)(a5)
	.loc 1 565 1
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
.LFE9:
	.size	vPortDefineHeapRegions, .-vPortDefineHeapRegions
	.section	.text.vPortGetHeapStats,"ax",@progbits
	.align	1
	.globl	vPortGetHeapStats
	.type	vPortGetHeapStats, @function
vPortGetHeapStats:
.LFB10:
	.loc 1 569 1
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
	.loc 1 571 8
	sw	zero,-24(s0)
	.loc 1 571 21
	sw	zero,-28(s0)
	.loc 1 571 35
	li	a5,-1
	sw	a5,-32(s0)
	.loc 1 573 2
	call	vTaskSuspendAll
	.loc 1 575 11
	lui	a5,%hi(xStart)
	addi	a5,a5,%lo(xStart)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 579 5
	lw	a5,-20(s0)
	beq	a5,zero,.L55
.L58:
	.loc 1 585 12
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 1 587 16
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 587 7
	lw	a4,-28(s0)
	bgeu	a4,a5,.L56
	.loc 1 589 15
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
.L56:
	.loc 1 595 16
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 595 7
	beq	a5,zero,.L57
	.loc 1 597 17
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 597 8
	lw	a4,-32(s0)
	bleu	a4,a5,.L57
	.loc 1 599 16
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
.L57:
	.loc 1 605 13
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 606 21
	lui	a5,%hi(pxEnd)
	lw	a5,%lo(pxEnd)(a5)
	lw	a4,-20(s0)
	bne	a4,a5,.L58
.L55:
	.loc 1 609 2
	call	xTaskResumeAll
	.loc 1 611 46
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,4(a5)
	.loc 1 612 47
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	sw	a4,8(a5)
	.loc 1 613 35
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,12(a5)
	.loc 1 615 2
	call	vTaskEnterCritical
	.loc 1 617 43
	lui	a5,%hi(xFreeBytesRemaining)
	lw	a4,%lo(xFreeBytesRemaining)(a5)
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 618 47
	lui	a5,%hi(xNumberOfSuccessfulAllocations)
	lw	a4,%lo(xNumberOfSuccessfulAllocations)(a5)
	lw	a5,-36(s0)
	sw	a4,20(a5)
	.loc 1 619 41
	lui	a5,%hi(xNumberOfSuccessfulFrees)
	lw	a4,%lo(xNumberOfSuccessfulFrees)(a5)
	lw	a5,-36(s0)
	sw	a4,24(a5)
	.loc 1 620 47
	lui	a5,%hi(xMinimumEverFreeBytesRemaining)
	lw	a4,%lo(xMinimumEverFreeBytesRemaining)(a5)
	lw	a5,-36(s0)
	sw	a4,16(a5)
	.loc 1 622 2
	call	vTaskExitCritical
	.loc 1 623 1
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
.LFE10:
	.size	vPortGetHeapStats, .-vPortGetHeapStats
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOSConfig.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5d9
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x15
	.4byte	.LASF84
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
	.uleb128 0xa
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x17
	.byte	0x4
	.uleb128 0x10
	.4byte	0x89
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	0xa1
	.uleb128 0x10
	.4byte	0x97
	.uleb128 0x18
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x74
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x5f
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x7b
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3f
	.byte	0x11
	.4byte	0xa2
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0xba
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x8
	.byte	0x5
	.byte	0x7b
	.4byte	0x105
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x7d
	.byte	0xb
	.4byte	0x105
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x7e
	.byte	0x9
	.4byte	0x2b
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0xae
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x5
	.byte	0x7f
	.byte	0x3
	.4byte	0xde
	.uleb128 0xa
	.4byte	0x10a
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1c
	.byte	0x5
	.byte	0x82
	.4byte	0x183
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x84
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5
	.byte	0x85
	.byte	0x9
	.4byte	0x2b
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x5
	.byte	0x86
	.byte	0x9
	.4byte	0x2b
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x5
	.byte	0x87
	.byte	0x9
	.4byte	0x2b
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x5
	.byte	0x88
	.byte	0x9
	.4byte	0x2b
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x5
	.byte	0x89
	.byte	0x9
	.4byte	0x2b
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x5
	.byte	0x8a
	.byte	0x9
	.4byte	0x2b
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x5
	.byte	0x8b
	.byte	0x3
	.4byte	0x11b
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x8
	.byte	0x1
	.byte	0x5e
	.4byte	0x1b6
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x1
	.byte	0x60
	.byte	0x17
	.4byte	0x1b6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x1
	.byte	0x61
	.byte	0x9
	.4byte	0x2b
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0x18f
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x1
	.byte	0x62
	.byte	0x3
	.4byte	0x18f
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x72
	.byte	0x15
	.4byte	0x37
	.uleb128 0x5
	.byte	0x3
	.4byte	xHeapStructSize
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x75
	.byte	0x14
	.4byte	0x1bb
	.uleb128 0x5
	.byte	0x3
	.4byte	xStart
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x75
	.byte	0x1d
	.4byte	0x1fa
	.uleb128 0x5
	.byte	0x3
	.4byte	pxEnd
	.uleb128 0x6
	.4byte	0x1bb
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x79
	.byte	0xf
	.4byte	0x2b
	.uleb128 0x5
	.byte	0x3
	.4byte	xFreeBytesRemaining
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x7a
	.byte	0xf
	.4byte	0x2b
	.uleb128 0x5
	.byte	0x3
	.4byte	xMinimumEverFreeBytesRemaining
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x7b
	.byte	0xf
	.4byte	0x2b
	.uleb128 0x5
	.byte	0x3
	.4byte	xNumberOfSuccessfulAllocations
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x7c
	.byte	0xf
	.4byte	0x2b
	.uleb128 0x5
	.byte	0x3
	.4byte	xNumberOfSuccessfulFrees
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x82
	.byte	0xf
	.4byte	0x2b
	.uleb128 0x5
	.byte	0x3
	.4byte	xBlockAllocatedBit
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x4
	.byte	0x67
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x4
	.byte	0x66
	.byte	0xd
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x1f
	.4byte	0x89
	.4byte	0x282
	.uleb128 0x7
	.4byte	0x8b
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x7
	.4byte	0x2b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x21
	.4byte	0x89
	.4byte	0x2a0
	.uleb128 0x7
	.4byte	0x89
	.uleb128 0x7
	.4byte	0x43
	.uleb128 0x7
	.4byte	0x2b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x10d
	.byte	0x10
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x53d
	.byte	0xc
	.4byte	0xc6
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x7
	.2byte	0x507
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x8
	.byte	0x97
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF52
	.2byte	0x238
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x328
	.uleb128 0x8
	.4byte	.LASF54
	.2byte	0x238
	.byte	0x26
	.4byte	0x328
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF48
	.2byte	0x23a
	.byte	0xe
	.4byte	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF49
	.2byte	0x23b
	.byte	0x8
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF50
	.2byte	0x23b
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF51
	.2byte	0x23b
	.byte	0x23
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.4byte	0x183
	.uleb128 0xe
	.4byte	.LASF53
	.2byte	0x1da
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ca
	.uleb128 0x8
	.4byte	.LASF55
	.2byte	0x1da
	.byte	0x39
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x1dc
	.byte	0xe
	.4byte	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF57
	.2byte	0x1dc
	.byte	0x2f
	.4byte	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF58
	.2byte	0x1dd
	.byte	0x8
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF59
	.2byte	0x1de
	.byte	0x8
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF60
	.2byte	0x1de
	.byte	0x1a
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF61
	.2byte	0x1df
	.byte	0xc
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF62
	.2byte	0x1e0
	.byte	0x8
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x1e1
	.byte	0x15
	.4byte	0x3ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.4byte	0x116
	.uleb128 0xa
	.4byte	0x3ca
	.uleb128 0x1a
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x19d
	.byte	0xd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x419
	.uleb128 0x8
	.4byte	.LASF64
	.2byte	0x19d
	.byte	0x36
	.4byte	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF65
	.2byte	0x19f
	.byte	0xe
	.4byte	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"puc"
	.2byte	0x1a0
	.byte	0xa
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF66
	.2byte	0x197
	.4byte	0x2b
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.4byte	.LASF67
	.2byte	0x191
	.4byte	0x2b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF76
	.2byte	0x156
	.4byte	0x89
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e3
	.uleb128 0x14
	.string	"pv"
	.2byte	0x156
	.byte	0x1c
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF68
	.2byte	0x156
	.byte	0x27
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1
	.4byte	.LASF69
	.2byte	0x163
	.byte	0xd
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF70
	.2byte	0x164
	.byte	0x11
	.4byte	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF71
	.2byte	0x165
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1
	.4byte	.LASF72
	.2byte	0x16e
	.byte	0xc
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1
	.4byte	.LASF73
	.2byte	0x175
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF74
	.2byte	0x126
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x525
	.uleb128 0x14
	.string	"pv"
	.2byte	0x126
	.byte	0x17
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"puc"
	.2byte	0x128
	.byte	0xa
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF75
	.2byte	0x129
	.byte	0xe
	.4byte	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF77
	.2byte	0x11b
	.4byte	0x89
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56b
	.uleb128 0x8
	.4byte	.LASF78
	.2byte	0x11b
	.byte	0x1b
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF79
	.2byte	0x11b
	.byte	0x2f
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"pv"
	.2byte	0x11d
	.byte	0xb
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF80
	.byte	0x1
	.byte	0x86
	.byte	0x7
	.4byte	0x89
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF68
	.byte	0x1
	.byte	0x86
	.byte	0x1c
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x88
	.byte	0xe
	.4byte	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0x88
	.byte	0x18
	.4byte	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0x88
	.byte	0x2a
	.4byte	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0x89
	.byte	0x7
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x10d
	.byte	0x10
	.byte	0
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
	.uleb128 0x3
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
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
	.sleb128 8
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
	.sleb128 7
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF81:
	.string	"pxPreviousBlock"
.LASF45:
	.string	"vApplicationMallocFailedHook"
.LASF54:
	.string	"pxHeapStats"
.LASF73:
	.string	"xMoveSize"
.LASF40:
	.string	"xBlockAllocatedBit"
.LASF31:
	.string	"HeapStats_t"
.LASF62:
	.string	"xAddress"
.LASF47:
	.string	"vAssertCalled"
.LASF33:
	.string	"pxNextFreeBlock"
.LASF48:
	.string	"pxBlock"
.LASF13:
	.string	"size_t"
.LASF78:
	.string	"numElements"
.LASF27:
	.string	"xNumberOfFreeBlocks"
.LASF57:
	.string	"pxPreviousFreeBlock"
.LASF34:
	.string	"xBlockSize"
.LASF38:
	.string	"pxEnd"
.LASF61:
	.string	"xDefinedRegions"
.LASF7:
	.string	"short int"
.LASF76:
	.string	"pvPortRealloc"
.LASF86:
	.string	"prvInsertBlockIntoFreeList"
.LASF43:
	.string	"memcpy"
.LASF15:
	.string	"uint8_t"
.LASF32:
	.string	"A_BLOCK_LINK"
.LASF42:
	.string	"vTaskEnterCritical"
.LASF72:
	.string	"pvNew"
.LASF55:
	.string	"pxHeapRegions"
.LASF26:
	.string	"xSizeOfSmallestFreeBlockInBytes"
.LASF3:
	.string	"long long int"
.LASF18:
	.string	"TickType_t"
.LASF44:
	.string	"memset"
.LASF9:
	.string	"long int"
.LASF51:
	.string	"xMinSize"
.LASF82:
	.string	"pxNewBlockLink"
.LASF67:
	.string	"xPortGetFreeHeapSize"
.LASF83:
	.string	"pvReturn"
.LASF28:
	.string	"xMinimumEverFreeBytesRemaining"
.LASF50:
	.string	"xMaxSize"
.LASF66:
	.string	"xPortGetMinimumEverFreeHeapSize"
.LASF35:
	.string	"BlockLink_t"
.LASF4:
	.string	"long double"
.LASF70:
	.string	"xpMetadata"
.LASF6:
	.string	"unsigned char"
.LASF53:
	.string	"vPortDefineHeapRegions"
.LASF24:
	.string	"xAvailableHeapSpaceInBytes"
.LASF36:
	.string	"xHeapStructSize"
.LASF58:
	.string	"xAlignedHeap"
.LASF69:
	.string	"ucpMetadataPos"
.LASF77:
	.string	"pvPortCalloc"
.LASF11:
	.string	"long long unsigned int"
.LASF16:
	.string	"uint32_t"
.LASF21:
	.string	"HeapRegion_t"
.LASF2:
	.string	"unsigned int"
.LASF17:
	.string	"BaseType_t"
.LASF59:
	.string	"xTotalRegionSize"
.LASF39:
	.string	"xFreeBytesRemaining"
.LASF79:
	.string	"sizeOfElement"
.LASF25:
	.string	"xSizeOfLargestFreeBlockInBytes"
.LASF85:
	.string	"xTaskResumeAll"
.LASF8:
	.string	"short unsigned int"
.LASF74:
	.string	"vPortFree"
.LASF65:
	.string	"pxIterator"
.LASF12:
	.string	"char"
.LASF63:
	.string	"pxHeapRegion"
.LASF14:
	.string	"int32_t"
.LASF84:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF64:
	.string	"pxBlockToInsert"
.LASF10:
	.string	"long unsigned int"
.LASF60:
	.string	"xTotalHeapSize"
.LASF56:
	.string	"pxFirstFreeBlockInRegion"
.LASF30:
	.string	"xNumberOfSuccessfulFrees"
.LASF19:
	.string	"pucStartAddress"
.LASF37:
	.string	"xStart"
.LASF5:
	.string	"signed char"
.LASF22:
	.string	"HeapRegion"
.LASF49:
	.string	"xBlocks"
.LASF41:
	.string	"vTaskExitCritical"
.LASF68:
	.string	"xWantedSize"
.LASF71:
	.string	"xOldSize"
.LASF23:
	.string	"xHeapStats"
.LASF80:
	.string	"pvPortMalloc"
.LASF46:
	.string	"vTaskSuspendAll"
.LASF52:
	.string	"vPortGetHeapStats"
.LASF75:
	.string	"pxLink"
.LASF29:
	.string	"xNumberOfSuccessfulAllocations"
.LASF20:
	.string	"xSizeInBytes"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/MemMang/heap_bl602.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
