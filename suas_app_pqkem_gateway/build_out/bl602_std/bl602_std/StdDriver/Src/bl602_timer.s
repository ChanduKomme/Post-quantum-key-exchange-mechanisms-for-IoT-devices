	.file	"bl602_timer.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_timer.c"
	.globl	timerIntCbfArra
	.section	.bss.timerIntCbfArra,"aw",@nobits
	.align	2
	.type	timerIntCbfArra, @object
	.size	timerIntCbfArra, 36
timerIntCbfArra:
	.zero	36
	.section	.text.TIMER_GetCompValue,"ax",@progbits
	.align	1
	.globl	TIMER_GetCompValue
	.type	TIMER_GetCompValue, @function
TIMER_GetCompValue:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_timer.c"
	.loc 1 149 1
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
	.loc 1 156 70
	lbu	a4,-33(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a4,a5,a4
	.loc 1 156 78
	lbu	a5,-34(s0)
	add	a5,a4,a5
	.loc 1 156 67
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 156 65
	li	a5,1073782784
	addi	a5,a5,1296
	add	a5,a4,a5
	.loc 1 156 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 157 12
	lw	a5,-20(s0)
	.loc 1 158 1
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
	.size	TIMER_GetCompValue, .-TIMER_GetCompValue
	.section	.text.TIMER_SetCompValue,"ax",@progbits
	.align	1
	.globl	TIMER_SetCompValue
	.type	TIMER_SetCompValue, @function
TIMER_SetCompValue:
.LFB9:
	.loc 1 171 1
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
	mv	a4,a1
	sw	a2,-24(s0)
	sb	a5,-17(s0)
	mv	a5,a4
	sb	a5,-18(s0)
	.loc 1 176 63
	lbu	a4,-17(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a4,a5,a4
	.loc 1 176 71
	lbu	a5,-18(s0)
	add	a5,a4,a5
	.loc 1 176 60
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 176 58
	li	a5,1073782784
	addi	a5,a5,1296
	add	a5,a4,a5
	.loc 1 176 8
	mv	a4,a5
	.loc 1 176 80
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 177 1
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
.LFE9:
	.size	TIMER_SetCompValue, .-TIMER_SetCompValue
	.section	.text.TIMER_GetCounterValue,"ax",@progbits
	.align	1
	.globl	TIMER_GetCounterValue
	.type	TIMER_GetCounterValue, @function
TIMER_GetCounterValue:
.LFB10:
	.loc 1 188 1
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
	.loc 1 197 44
	lbu	a5,-33(s0)
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 197 12
	li	a5,1073782784
	addi	a5,a5,1448
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 198 8
	lw	a5,-20(s0)
	.loc 1 198 38
	li	a4,1
	sw	a4,0(a5)
	.loc 1 201 15
	lw	a5,-20(s0)
	.loc 1 201 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 202 15
	lw	a5,-20(s0)
	.loc 1 202 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 203 15
	lw	a5,-20(s0)
	.loc 1 203 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 205 12
	lw	a5,-24(s0)
	.loc 1 206 1
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
	.size	TIMER_GetCounterValue, .-TIMER_GetCounterValue
	.section	.text.TIMER_GetMatchStatus,"ax",@progbits
	.align	1
	.globl	TIMER_GetMatchStatus
	.type	TIMER_GetMatchStatus, @function
TIMER_GetMatchStatus:
.LFB11:
	.loc 1 218 1
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
	.loc 1 220 17
	sb	zero,-17(s0)
	.loc 1 226 67
	lbu	a5,-33(s0)
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 226 65
	li	a5,1073782784
	addi	a5,a5,1336
	add	a5,a4,a5
	.loc 1 226 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 227 5
	lbu	a5,-34(s0)
	li	a4,2
	beq	a5,a4,.L7
	li	a4,2
	bgt	a5,a4,.L13
	beq	a5,zero,.L9
	li	a4,1
	beq	a5,a4,.L10
	.loc 1 239 13
	j	.L13
.L9:
	.loc 1 230 63
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	.loc 1 230 23
	andi	a5,a5,1
	sb	a5,-17(s0)
	.loc 1 231 13
	j	.L11
.L10:
	.loc 1 233 63
	lw	a5,-24(s0)
	srli	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 233 23
	andi	a5,a5,1
	sb	a5,-17(s0)
	.loc 1 234 13
	j	.L11
.L7:
	.loc 1 236 63
	lw	a5,-24(s0)
	srli	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 236 23
	andi	a5,a5,1
	sb	a5,-17(s0)
	.loc 1 237 13
	j	.L11
.L13:
	.loc 1 239 13
	nop
.L11:
	.loc 1 241 12
	lbu	a5,-17(s0)
	.loc 1 242 1
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
	.size	TIMER_GetMatchStatus, .-TIMER_GetMatchStatus
	.section	.text.TIMER_GetPreloadValue,"ax",@progbits
	.align	1
	.globl	TIMER_GetPreloadValue
	.type	TIMER_GetPreloadValue, @function
TIMER_GetPreloadValue:
.LFB12:
	.loc 1 253 1
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
	.loc 1 257 67
	lbu	a5,-17(s0)
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 257 65
	li	a5,1073782784
	addi	a5,a5,1360
	add	a5,a4,a5
	.loc 1 257 13
	lw	a5,0(a5)
	.loc 1 258 1
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
	.size	TIMER_GetPreloadValue, .-TIMER_GetPreloadValue
	.section	.text.TIMER_SetPreloadValue,"ax",@progbits
	.align	1
	.globl	TIMER_SetPreloadValue
	.type	TIMER_SetPreloadValue, @function
TIMER_SetPreloadValue:
.LFB13:
	.loc 1 270 1
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
	.loc 1 274 60
	lbu	a5,-17(s0)
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 274 58
	li	a5,1073782784
	addi	a5,a5,1360
	add	a5,a4,a5
	.loc 1 274 8
	mv	a4,a5
	.loc 1 274 70
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 275 1
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
.LFE13:
	.size	TIMER_SetPreloadValue, .-TIMER_SetPreloadValue
	.section	.text.TIMER_SetPreloadTrigSrc,"ax",@progbits
	.align	1
	.globl	TIMER_SetPreloadTrigSrc
	.type	TIMER_SetPreloadTrigSrc, @function
TIMER_SetPreloadTrigSrc:
.LFB14:
	.loc 1 287 1
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
	mv	a4,a1
	sb	a5,-17(s0)
	mv	a5,a4
	sb	a5,-18(s0)
	.loc 1 292 60
	lbu	a5,-17(s0)
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 292 58
	li	a5,1073782784
	addi	a5,a5,1372
	add	a5,a4,a5
	.loc 1 292 8
	mv	a4,a5
	.loc 1 292 70
	lbu	a5,-18(s0)
	sw	a5,0(a4)
	.loc 1 293 1
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
.LFE14:
	.size	TIMER_SetPreloadTrigSrc, .-TIMER_SetPreloadTrigSrc
	.section	.text.TIMER_SetCountMode,"ax",@progbits
	.align	1
	.globl	TIMER_SetCountMode
	.type	TIMER_SetCountMode, @function
TIMER_SetCountMode:
.LFB15:
	.loc 1 305 1
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
	.loc 1 312 13
	li	a5,1073782784
	addi	a5,a5,1416
	.loc 1 312 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 313 29
	lbu	a5,-33(s0)
	addi	a5,a5,1
	.loc 1 313 19
	li	a4,1
	sll	a5,a4,a5
	.loc 1 313 16
	not	a5,a5
	mv	a4,a5
	.loc 1 313 12
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 314 25
	lbu	a4,-34(s0)
	.loc 1 314 35
	lbu	a5,-33(s0)
	addi	a5,a5,1
	.loc 1 314 25
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 314 12
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 316 7
	li	a5,1073782784
	addi	a5,a5,1416
	.loc 1 316 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 317 1
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
.LFE15:
	.size	TIMER_SetCountMode, .-TIMER_SetCountMode
	.section	.text.TIMER_ClearIntStatus,"ax",@progbits
	.align	1
	.globl	TIMER_ClearIntStatus
	.type	TIMER_ClearIntStatus, @function
TIMER_ClearIntStatus:
.LFB16:
	.loc 1 329 1
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
	.loc 1 337 44
	lbu	a5,-33(s0)
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 337 12
	li	a5,1073782784
	addi	a5,a5,1400
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 339 15
	lw	a5,-20(s0)
	.loc 1 339 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 340 16
	lbu	a5,-34(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 340 12
	lw	a5,-24(s0)
	or	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 342 8
	lw	a5,-20(s0)
	.loc 1 342 38
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 343 1
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
.LFE16:
	.size	TIMER_ClearIntStatus, .-TIMER_ClearIntStatus
	.section	.text.TIMER_Init,"ax",@progbits
	.align	1
	.globl	TIMER_Init
	.type	TIMER_Init, @function
TIMER_Init:
.LFB17:
	.loc 1 354 1
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
	.loc 1 355 21
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	sb	a5,-21(s0)
	.loc 1 365 13
	li	a5,1073782784
	addi	a5,a5,1280
	.loc 1 365 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 366 7
	lbu	a5,-21(s0)
	bne	a5,zero,.L21
	.loc 1 367 27
	lw	a5,-20(s0)
	andi	a4,a5,-13
	.loc 1 367 77
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	.loc 1 367 86
	slli	a5,a5,2
	.loc 1 367 15
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L22
.L21:
	.loc 1 369 27
	lw	a5,-20(s0)
	andi	a4,a5,-97
	.loc 1 369 77
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	.loc 1 369 86
	slli	a5,a5,5
	.loc 1 369 15
	or	a5,a4,a5
	sw	a5,-20(s0)
.L22:
	.loc 1 371 7
	li	a5,1073782784
	addi	a5,a5,1280
	.loc 1 371 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 374 13
	li	a5,1073782784
	addi	a5,a5,1468
	.loc 1 374 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 375 7
	lbu	a5,-21(s0)
	bne	a5,zero,.L23
	.loc 1 376 27
	lw	a4,-20(s0)
	li	a5,-65536
	addi	a5,a5,255
	and	a4,a4,a5
	.loc 1 376 77
	lw	a5,-36(s0)
	lbu	a5,4(a5)
	.loc 1 376 93
	slli	a5,a5,8
	.loc 1 376 15
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L24
.L23:
	.loc 1 378 27
	lw	a4,-20(s0)
	li	a5,-16711680
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 378 78
	lw	a5,-36(s0)
	lbu	a5,4(a5)
	.loc 1 378 94
	slli	a5,a5,16
	.loc 1 378 15
	or	a5,a4,a5
	sw	a5,-20(s0)
.L24:
	.loc 1 380 7
	li	a5,1073782784
	addi	a5,a5,1468
	.loc 1 380 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 383 5
	lw	a5,-36(s0)
	lbu	a4,3(a5)
	lbu	a5,-21(s0)
	mv	a1,a4
	mv	a0,a5
	call	TIMER_SetCountMode
	.loc 1 386 5
	lw	a5,-36(s0)
	lbu	a4,2(a5)
	lbu	a5,-21(s0)
	mv	a1,a4
	mv	a0,a5
	call	TIMER_SetPreloadTrigSrc
	.loc 1 388 16
	lw	a5,-36(s0)
	lbu	a5,3(a5)
	.loc 1 388 7
	bne	a5,zero,.L25
	.loc 1 390 9
	lw	a5,-36(s0)
	lw	a4,20(a5)
	lbu	a5,-21(s0)
	mv	a1,a4
	mv	a0,a5
	call	TIMER_SetPreloadValue
.L25:
	.loc 1 394 5
	lw	a5,-36(s0)
	lw	a4,8(a5)
	lbu	a5,-21(s0)
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	TIMER_SetCompValue
	.loc 1 395 5
	lw	a5,-36(s0)
	lw	a4,12(a5)
	lbu	a5,-21(s0)
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	TIMER_SetCompValue
	.loc 1 396 5
	lw	a5,-36(s0)
	lw	a4,16(a5)
	lbu	a5,-21(s0)
	mv	a2,a4
	li	a1,2
	mv	a0,a5
	call	TIMER_SetCompValue
	.loc 1 398 12
	li	a5,0
	.loc 1 399 1
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
	.size	TIMER_Init, .-TIMER_Init
	.section	.text.TIMER_Enable,"ax",@progbits
	.align	1
	.globl	TIMER_Enable
	.type	TIMER_Enable, @function
TIMER_Enable:
.LFB18:
	.loc 1 410 1
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
	.loc 1 416 13
	li	a5,1073782784
	addi	a5,a5,1412
	.loc 1 416 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 417 26
	lbu	a5,-33(s0)
	addi	a5,a5,1
	.loc 1 417 16
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 417 12
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 419 7
	li	a5,1073782784
	addi	a5,a5,1412
	.loc 1 419 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 420 1
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
	.size	TIMER_Enable, .-TIMER_Enable
	.section	.text.TIMER_Disable,"ax",@progbits
	.align	1
	.globl	TIMER_Disable
	.type	TIMER_Disable, @function
TIMER_Disable:
.LFB19:
	.loc 1 431 1
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
	.loc 1 437 13
	li	a5,1073782784
	addi	a5,a5,1412
	.loc 1 437 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 438 29
	lbu	a5,-33(s0)
	addi	a5,a5,1
	.loc 1 438 19
	li	a4,1
	sll	a5,a4,a5
	.loc 1 438 16
	not	a5,a5
	mv	a4,a5
	.loc 1 438 12
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 440 7
	li	a5,1073782784
	addi	a5,a5,1412
	.loc 1 440 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 441 1
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
	.size	TIMER_Disable, .-TIMER_Disable
	.section	.text.TIMER_IntMask,"ax",@progbits
	.align	1
	.globl	TIMER_IntMask
	.type	TIMER_IntMask, @function
TIMER_IntMask:
.LFB20:
	.loc 1 454 1
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
	mv	a3,a1
	mv	a4,a2
	sb	a5,-33(s0)
	mv	a5,a3
	sb	a5,-34(s0)
	mv	a5,a4
	sb	a5,-35(s0)
	.loc 1 463 44
	lbu	a5,-33(s0)
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 463 12
	li	a5,1073782784
	addi	a5,a5,1348
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 464 15
	lw	a5,-20(s0)
	.loc 1 464 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 466 5
	lbu	a5,-34(s0)
	li	a4,3
	beq	a5,a4,.L30
	li	a4,3
	bgt	a5,a4,.L44
	li	a4,2
	beq	a5,a4,.L32
	li	a4,2
	bgt	a5,a4,.L44
	beq	a5,zero,.L33
	li	a4,1
	beq	a5,a4,.L34
	.loc 1 513 13
	j	.L44
.L33:
	.loc 1 469 15
	lbu	a5,-35(s0)
	bne	a5,zero,.L35
	.loc 1 471 20
	lw	a5,-20(s0)
	.loc 1 471 63
	lw	a4,-24(s0)
	ori	a4,a4,1
	.loc 1 471 50
	sw	a4,0(a5)
	.loc 1 476 13
	j	.L37
.L35:
	.loc 1 474 20
	lw	a5,-20(s0)
	.loc 1 474 63
	lw	a4,-24(s0)
	andi	a4,a4,-2
	.loc 1 474 50
	sw	a4,0(a5)
	.loc 1 476 13
	j	.L37
.L34:
	.loc 1 479 15
	lbu	a5,-35(s0)
	bne	a5,zero,.L38
	.loc 1 481 20
	lw	a5,-20(s0)
	.loc 1 481 63
	lw	a4,-24(s0)
	ori	a4,a4,2
	.loc 1 481 50
	sw	a4,0(a5)
	.loc 1 486 13
	j	.L37
.L38:
	.loc 1 484 20
	lw	a5,-20(s0)
	.loc 1 484 63
	lw	a4,-24(s0)
	andi	a4,a4,-3
	.loc 1 484 50
	sw	a4,0(a5)
	.loc 1 486 13
	j	.L37
.L32:
	.loc 1 489 15
	lbu	a5,-35(s0)
	bne	a5,zero,.L40
	.loc 1 491 20
	lw	a5,-20(s0)
	.loc 1 491 63
	lw	a4,-24(s0)
	ori	a4,a4,4
	.loc 1 491 50
	sw	a4,0(a5)
	.loc 1 496 13
	j	.L37
.L40:
	.loc 1 494 20
	lw	a5,-20(s0)
	.loc 1 494 63
	lw	a4,-24(s0)
	andi	a4,a4,-5
	.loc 1 494 50
	sw	a4,0(a5)
	.loc 1 496 13
	j	.L37
.L30:
	.loc 1 499 15
	lbu	a5,-35(s0)
	bne	a5,zero,.L42
	.loc 1 501 20
	lw	a5,-20(s0)
	.loc 1 501 63
	lw	a4,-24(s0)
	ori	a4,a4,1
	.loc 1 501 50
	sw	a4,0(a5)
	.loc 1 502 20
	lw	a5,-20(s0)
	.loc 1 502 63
	lw	a4,-24(s0)
	ori	a4,a4,2
	.loc 1 502 50
	sw	a4,0(a5)
	.loc 1 503 20
	lw	a5,-20(s0)
	.loc 1 503 63
	lw	a4,-24(s0)
	ori	a4,a4,4
	.loc 1 503 50
	sw	a4,0(a5)
	.loc 1 510 13
	j	.L37
.L42:
	.loc 1 506 20
	lw	a5,-20(s0)
	.loc 1 506 63
	lw	a4,-24(s0)
	andi	a4,a4,-2
	.loc 1 506 50
	sw	a4,0(a5)
	.loc 1 507 20
	lw	a5,-20(s0)
	.loc 1 507 63
	lw	a4,-24(s0)
	andi	a4,a4,-3
	.loc 1 507 50
	sw	a4,0(a5)
	.loc 1 508 20
	lw	a5,-20(s0)
	.loc 1 508 63
	lw	a4,-24(s0)
	andi	a4,a4,-5
	.loc 1 508 50
	sw	a4,0(a5)
	.loc 1 510 13
	j	.L37
.L44:
	.loc 1 513 13
	nop
.L37:
	.loc 1 515 1
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
	.size	TIMER_IntMask, .-TIMER_IntMask
	.section	.text.WDT_Set_Clock,"ax",@progbits
	.align	1
	.globl	WDT_Set_Clock
	.type	WDT_Set_Clock, @function
WDT_Set_Clock:
.LFB21:
	.loc 1 527 1
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
	.loc 1 534 13
	li	a5,1073782784
	addi	a5,a5,1280
	.loc 1 534 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 535 23
	lw	a5,-20(s0)
	andi	a4,a5,-769
	.loc 1 535 54
	lbu	a5,-33(s0)
	.loc 1 535 72
	slli	a5,a5,8
	.loc 1 535 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 536 7
	li	a5,1073782784
	addi	a5,a5,1280
	.loc 1 536 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 539 13
	li	a5,1073782784
	addi	a5,a5,1468
	.loc 1 539 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 540 23
	lw	a4,-20(s0)
	li	a5,16777216
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 540 55
	lbu	a5,-34(s0)
	.loc 1 540 70
	slli	a5,a5,24
	.loc 1 540 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 541 7
	li	a5,1073782784
	addi	a5,a5,1468
	.loc 1 541 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 542 1
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
	.size	WDT_Set_Clock, .-WDT_Set_Clock
	.section	.text.WDT_GetMatchValue,"ax",@progbits
	.align	1
	.globl	WDT_GetMatchValue
	.type	WDT_GetMatchValue, @function
WDT_GetMatchValue:
.LFB22:
	.loc 1 553 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 556 68
	li	a5,1073782784
	addi	a5,a5,1436
	lw	a4,0(a5)
	.loc 1 556 124
	li	a5,-65536
	and	a3,a4,a5
	.loc 1 556 8
	li	a5,1073782784
	addi	a5,a5,1436
	.loc 1 556 153
	li	a4,49152
	addi	a4,a4,-1350
	or	a4,a3,a4
	.loc 1 556 61
	sw	a4,0(a5)
	.loc 1 556 249
	li	a5,1073782784
	addi	a5,a5,1440
	lw	a4,0(a5)
	.loc 1 556 305
	li	a5,-65536
	and	a3,a4,a5
	.loc 1 556 189
	li	a5,1073782784
	addi	a5,a5,1440
	.loc 1 556 334
	li	a4,61440
	addi	a4,a4,-1264
	or	a4,a3,a4
	.loc 1 556 242
	sw	a4,0(a5)
	.loc 1 559 13
	li	a5,1073782784
	addi	a5,a5,1384
	.loc 1 559 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 561 12
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 562 1
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
	.size	WDT_GetMatchValue, .-WDT_GetMatchValue
	.section	.text.WDT_SetCompValue,"ax",@progbits
	.align	1
	.globl	WDT_SetCompValue
	.type	WDT_SetCompValue, @function
WDT_SetCompValue:
.LFB23:
	.loc 1 573 1
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
	sh	a5,-18(s0)
	.loc 1 574 68
	li	a5,1073782784
	addi	a5,a5,1436
	lw	a4,0(a5)
	.loc 1 574 124
	li	a5,-65536
	and	a3,a4,a5
	.loc 1 574 8
	li	a5,1073782784
	addi	a5,a5,1436
	.loc 1 574 153
	li	a4,49152
	addi	a4,a4,-1350
	or	a4,a3,a4
	.loc 1 574 61
	sw	a4,0(a5)
	.loc 1 574 249
	li	a5,1073782784
	addi	a5,a5,1440
	lw	a4,0(a5)
	.loc 1 574 305
	li	a5,-65536
	and	a3,a4,a5
	.loc 1 574 189
	li	a5,1073782784
	addi	a5,a5,1440
	.loc 1 574 334
	li	a4,61440
	addi	a4,a4,-1264
	or	a4,a3,a4
	.loc 1 574 242
	sw	a4,0(a5)
	.loc 1 577 7
	li	a5,1073782784
	addi	a5,a5,1384
	.loc 1 577 60
	lhu	a4,-18(s0)
	sw	a4,0(a5)
	.loc 1 578 1
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
.LFE23:
	.size	WDT_SetCompValue, .-WDT_SetCompValue
	.section	.text.WDT_GetCounterValue,"ax",@progbits
	.align	1
	.globl	WDT_GetCounterValue
	.type	WDT_GetCounterValue, @function
WDT_GetCounterValue:
.LFB24:
	.loc 1 589 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 592 68
	li	a5,1073782784
	addi	a5,a5,1436
	lw	a4,0(a5)
	.loc 1 592 124
	li	a5,-65536
	and	a3,a4,a5
	.loc 1 592 8
	li	a5,1073782784
	addi	a5,a5,1436
	.loc 1 592 153
	li	a4,49152
	addi	a4,a4,-1350
	or	a4,a3,a4
	.loc 1 592 61
	sw	a4,0(a5)
	.loc 1 592 249
	li	a5,1073782784
	addi	a5,a5,1440
	lw	a4,0(a5)
	.loc 1 592 305
	li	a5,-65536
	and	a3,a4,a5
	.loc 1 592 189
	li	a5,1073782784
	addi	a5,a5,1440
	.loc 1 592 334
	li	a4,61440
	addi	a4,a4,-1264
	or	a4,a3,a4
	.loc 1 592 242
	sw	a4,0(a5)
	.loc 1 595 13
	li	a5,1073782784
	addi	a5,a5,1388
	.loc 1 595 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 597 12
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 598 1
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
	.size	WDT_GetCounterValue, .-WDT_GetCounterValue
	.section	.text.WDT_ResetCounterValue,"ax",@progbits
	.align	1
	.globl	WDT_ResetCounterValue
	.type	WDT_ResetCounterValue, @function
WDT_ResetCounterValue:
.LFB25:
	.loc 1 609 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 613 68
	li	a5,1073782784
	addi	a5,a5,1436
	lw	a4,0(a5)
	.loc 1 613 124
	li	a5,-65536
	and	a3,a4,a5
	.loc 1 613 8
	li	a5,1073782784
	addi	a5,a5,1436
	.loc 1 613 153
	li	a4,49152
	addi	a4,a4,-1350
	or	a4,a3,a4
	.loc 1 613 61
	sw	a4,0(a5)
	.loc 1 613 249
	li	a5,1073782784
	addi	a5,a5,1440
	lw	a4,0(a5)
	.loc 1 613 305
	li	a5,-65536
	and	a3,a4,a5
	.loc 1 613 189
	li	a5,1073782784
	addi	a5,a5,1440
	.loc 1 613 334
	li	a4,61440
	addi	a4,a4,-1264
	or	a4,a3,a4
	.loc 1 613 242
	sw	a4,0(a5)
	.loc 1 615 13
	li	a5,1073782784
	addi	a5,a5,1432
	.loc 1 615 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 618 7
	li	a5,1073782784
	addi	a5,a5,1432
	.loc 1 618 73
	lw	a4,-20(s0)
	ori	a4,a4,1
	.loc 1 618 60
	sw	a4,0(a5)
	.loc 1 619 1
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
	.size	WDT_ResetCounterValue, .-WDT_ResetCounterValue
	.section	.text.WDT_GetResetStatus,"ax",@progbits
	.align	1
	.globl	WDT_GetResetStatus
	.type	WDT_GetResetStatus, @function
WDT_GetResetStatus:
.LFB26:
	.loc 1 630 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 633 68
	li	a5,1073782784
	addi	a5,a5,1436
	lw	a4,0(a5)
	.loc 1 633 124
	li	a5,-65536
	and	a3,a4,a5
	.loc 1 633 8
	li	a5,1073782784
	addi	a5,a5,1436
	.loc 1 633 153
	li	a4,49152
	addi	a4,a4,-1350
	or	a4,a3,a4
	.loc 1 633 61
	sw	a4,0(a5)
	.loc 1 633 249
	li	a5,1073782784
	addi	a5,a5,1440
	lw	a4,0(a5)
	.loc 1 633 305
	li	a5,-65536
	and	a3,a4,a5
	.loc 1 633 189
	li	a5,1073782784
	addi	a5,a5,1440
	.loc 1 633 334
	li	a4,61440
	addi	a4,a4,-1264
	or	a4,a3,a4
	.loc 1 633 242
	sw	a4,0(a5)
	.loc 1 636 13
	li	a5,1073782784
	addi	a5,a5,1392
	.loc 1 636 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 638 52
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 639 1
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
	.size	WDT_GetResetStatus, .-WDT_GetResetStatus
	.section	.text.WDT_ClearResetStatus,"ax",@progbits
	.align	1
	.globl	WDT_ClearResetStatus
	.type	WDT_ClearResetStatus, @function
WDT_ClearResetStatus:
.LFB27:
	.loc 1 650 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 653 68
	li	a5,1073782784
	addi	a5,a5,1436
	lw	a4,0(a5)
	.loc 1 653 124
	li	a5,-65536
	and	a3,a4,a5
	.loc 1 653 8
	li	a5,1073782784
	addi	a5,a5,1436
	.loc 1 653 153
	li	a4,49152
	addi	a4,a4,-1350
	or	a4,a3,a4
	.loc 1 653 61
	sw	a4,0(a5)
	.loc 1 653 249
	li	a5,1073782784
	addi	a5,a5,1440
	lw	a4,0(a5)
	.loc 1 653 305
	li	a5,-65536
	and	a3,a4,a5
	.loc 1 653 189
	li	a5,1073782784
	addi	a5,a5,1440
	.loc 1 653 334
	li	a4,61440
	addi	a4,a4,-1264
	or	a4,a3,a4
	.loc 1 653 242
	sw	a4,0(a5)
	.loc 1 655 13
	li	a5,1073782784
	addi	a5,a5,1392
	.loc 1 655 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 658 7
	li	a5,1073782784
	addi	a5,a5,1392
	.loc 1 658 73
	lw	a4,-20(s0)
	andi	a4,a4,-2
	.loc 1 658 60
	sw	a4,0(a5)
	.loc 1 659 1
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
	.size	WDT_ClearResetStatus, .-WDT_ClearResetStatus
	.section	.text.WDT_Enable,"ax",@progbits
	.align	1
	.globl	WDT_Enable
	.type	WDT_Enable, @function
WDT_Enable:
.LFB28:
	.loc 1 670 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 673 68
	li	a5,1073782784
	addi	a5,a5,1436
	lw	a4,0(a5)
	.loc 1 673 124
	li	a5,-65536
	and	a3,a4,a5
	.loc 1 673 8
	li	a5,1073782784
	addi	a5,a5,1436
	.loc 1 673 153
	li	a4,49152
	addi	a4,a4,-1350
	or	a4,a3,a4
	.loc 1 673 61
	sw	a4,0(a5)
	.loc 1 673 249
	li	a5,1073782784
	addi	a5,a5,1440
	lw	a4,0(a5)
	.loc 1 673 305
	li	a5,-65536
	and	a3,a4,a5
	.loc 1 673 189
	li	a5,1073782784
	addi	a5,a5,1440
	.loc 1 673 334
	li	a4,61440
	addi	a4,a4,-1264
	or	a4,a3,a4
	.loc 1 673 242
	sw	a4,0(a5)
	.loc 1 675 13
	li	a5,1073782784
	addi	a5,a5,1380
	.loc 1 675 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 677 7
	li	a5,1073782784
	addi	a5,a5,1380
	.loc 1 677 73
	lw	a4,-20(s0)
	ori	a4,a4,1
	.loc 1 677 60
	sw	a4,0(a5)
	.loc 1 678 1
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
.LFE28:
	.size	WDT_Enable, .-WDT_Enable
	.section	.text.WDT_Disable,"ax",@progbits
	.align	1
	.globl	WDT_Disable
	.type	WDT_Disable, @function
WDT_Disable:
.LFB29:
	.loc 1 689 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 692 68
	li	a5,1073782784
	addi	a5,a5,1436
	lw	a4,0(a5)
	.loc 1 692 124
	li	a5,-65536
	and	a3,a4,a5
	.loc 1 692 8
	li	a5,1073782784
	addi	a5,a5,1436
	.loc 1 692 153
	li	a4,49152
	addi	a4,a4,-1350
	or	a4,a3,a4
	.loc 1 692 61
	sw	a4,0(a5)
	.loc 1 692 249
	li	a5,1073782784
	addi	a5,a5,1440
	lw	a4,0(a5)
	.loc 1 692 305
	li	a5,-65536
	and	a3,a4,a5
	.loc 1 692 189
	li	a5,1073782784
	addi	a5,a5,1440
	.loc 1 692 334
	li	a4,61440
	addi	a4,a4,-1264
	or	a4,a3,a4
	.loc 1 692 242
	sw	a4,0(a5)
	.loc 1 694 13
	li	a5,1073782784
	addi	a5,a5,1380
	.loc 1 694 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 696 7
	li	a5,1073782784
	addi	a5,a5,1380
	.loc 1 696 73
	lw	a4,-20(s0)
	andi	a4,a4,-2
	.loc 1 696 60
	sw	a4,0(a5)
	.loc 1 697 1
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
.LFE29:
	.size	WDT_Disable, .-WDT_Disable
	.section	.text.WDT_IntMask,"ax",@progbits
	.align	1
	.globl	WDT_IntMask
	.type	WDT_IntMask, @function
WDT_IntMask:
.LFB30:
	.loc 1 709 1
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
	.loc 1 716 68
	li	a5,1073782784
	addi	a5,a5,1436
	lw	a4,0(a5)
	.loc 1 716 124
	li	a5,-65536
	and	a3,a4,a5
	.loc 1 716 8
	li	a5,1073782784
	addi	a5,a5,1436
	.loc 1 716 153
	li	a4,49152
	addi	a4,a4,-1350
	or	a4,a3,a4
	.loc 1 716 61
	sw	a4,0(a5)
	.loc 1 716 249
	li	a5,1073782784
	addi	a5,a5,1440
	lw	a4,0(a5)
	.loc 1 716 305
	li	a5,-65536
	and	a3,a4,a5
	.loc 1 716 189
	li	a5,1073782784
	addi	a5,a5,1440
	.loc 1 716 334
	li	a4,61440
	addi	a4,a4,-1264
	or	a4,a3,a4
	.loc 1 716 242
	sw	a4,0(a5)
	.loc 1 720 13
	li	a5,1073782784
	addi	a5,a5,1380
	.loc 1 720 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 722 5
	lbu	a5,-33(s0)
	bne	a5,zero,.L62
	.loc 1 725 15
	lbu	a5,-34(s0)
	bne	a5,zero,.L59
	.loc 1 729 19
	li	a5,1073782784
	addi	a5,a5,1380
	.loc 1 729 85
	lw	a4,-20(s0)
	andi	a4,a4,-3
	.loc 1 729 72
	sw	a4,0(a5)
	.loc 1 736 13
	j	.L61
.L59:
	.loc 1 734 19
	li	a5,1073782784
	addi	a5,a5,1380
	.loc 1 734 85
	lw	a4,-20(s0)
	ori	a4,a4,2
	.loc 1 734 72
	sw	a4,0(a5)
	.loc 1 736 13
	j	.L61
.L62:
	.loc 1 738 13
	nop
.L61:
	.loc 1 740 1
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
.LFE30:
	.size	WDT_IntMask, .-WDT_IntMask
	.section	.text.Timer_Int_Callback_Install,"ax",@progbits
	.align	1
	.globl	Timer_Int_Callback_Install
	.type	Timer_Int_Callback_Install, @function
Timer_Int_Callback_Install:
.LFB31:
	.loc 1 808 1
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
	mv	a4,a1
	sw	a2,-24(s0)
	sb	a5,-17(s0)
	mv	a5,a4
	sb	a5,-18(s0)
	.loc 1 813 31
	lbu	a4,-17(s0)
	lbu	a2,-18(s0)
	.loc 1 813 41
	lui	a5,%hi(timerIntCbfArra)
	addi	a3,a5,%lo(timerIntCbfArra)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	add	a5,a5,a2
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 814 1
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
	.size	Timer_Int_Callback_Install, .-Timer_Int_Callback_Install
	.section	.text.WDT_Int_Callback_Install,"ax",@progbits
	.align	1
	.globl	WDT_Int_Callback_Install
	.type	WDT_Int_Callback_Install, @function
WDT_Int_Callback_Install:
.LFB32:
	.loc 1 826 1
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
	.loc 1 830 23
	lbu	a5,-17(s0)
	.loc 1 830 32
	lui	a4,%hi(timerIntCbfArra)
	addi	a4,a4,%lo(timerIntCbfArra)
	addi	a5,a5,6
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 831 1
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
.LFE32:
	.size	WDT_Int_Callback_Install, .-WDT_Int_Callback_Install
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_timer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x88b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x66
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x12
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xa4
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x3
	.byte	0x2a
	.byte	0x1
	.4byte	0xe8
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0
	.uleb128 0x13
	.string	"SET"
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x3
	.byte	0x2d
	.byte	0x2
	.4byte	0xcf
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x3
	.byte	0x33
	.byte	0x1
	.4byte	0x10d
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x3
	.byte	0x36
	.byte	0x2
	.4byte	0xf4
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x3
	.byte	0x7c
	.byte	0xf
	.4byte	0x9c
	.uleb128 0xe
	.4byte	0x119
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x39
	.byte	0xe
	.4byte	0x149
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x4
	.byte	0x3d
	.byte	0x2
	.4byte	0x12a
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x42
	.byte	0xe
	.4byte	0x17a
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x4
	.byte	0x47
	.byte	0x2
	.4byte	0x155
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x4c
	.byte	0xe
	.4byte	0x1a5
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF38
	.byte	0x4
	.byte	0x50
	.byte	0x2
	.4byte	0x186
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x55
	.byte	0xe
	.4byte	0x1d6
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF43
	.byte	0x4
	.byte	0x5a
	.byte	0x2
	.4byte	0x1b1
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x5f
	.byte	0xe
	.4byte	0x1fb
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF46
	.byte	0x4
	.byte	0x62
	.byte	0x2
	.4byte	0x1e2
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x67
	.byte	0xe
	.4byte	0x22c
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF51
	.byte	0x4
	.byte	0x6c
	.byte	0x2
	.4byte	0x207
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x71
	.byte	0xe
	.4byte	0x251
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF54
	.byte	0x4
	.byte	0x74
	.byte	0x2
	.4byte	0x238
	.uleb128 0x14
	.byte	0x18
	.byte	0x4
	.byte	0x79
	.byte	0x9
	.4byte	0x2d3
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x7a
	.byte	0x15
	.4byte	0x149
	.byte	0
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x7b
	.byte	0x17
	.4byte	0x17a
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x7c
	.byte	0x1d
	.4byte	0x1d6
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x7d
	.byte	0x1a
	.4byte	0x1fb
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x7e
	.byte	0xd
	.4byte	0x4e
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x7f
	.byte	0xe
	.4byte	0x6d
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x80
	.byte	0xe
	.4byte	0x6d
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x81
	.byte	0xe
	.4byte	0x6d
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x82
	.byte	0xe
	.4byte	0x6d
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	.LASF64
	.byte	0x4
	.byte	0x83
	.byte	0x2
	.4byte	0x25d
	.uleb128 0x15
	.4byte	0x125
	.4byte	0x2f3
	.uleb128 0xf
	.4byte	0x8e
	.uleb128 0xf
	.4byte	0x8e
	.byte	0
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x1
	.byte	0x3f
	.byte	0x14
	.4byte	0x2df
	.uleb128 0x5
	.byte	0x3
	.4byte	timerIntCbfArra
	.uleb128 0x4
	.4byte	.LASF67
	.2byte	0x339
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x339
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x339
	.byte	0x2c
	.4byte	0x251
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF66
	.2byte	0x339
	.byte	0x45
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF68
	.2byte	0x327
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37c
	.uleb128 0x2
	.4byte	.LASF69
	.2byte	0x327
	.byte	0x31
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF70
	.2byte	0x327
	.byte	0x4a
	.4byte	0x22c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2
	.4byte	.LASF66
	.2byte	0x327
	.byte	0x64
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF71
	.2byte	0x2c4
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3bf
	.uleb128 0x2
	.4byte	.LASF70
	.2byte	0x2c4
	.byte	0x1f
	.4byte	0x251
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF72
	.2byte	0x2c4
	.byte	0x35
	.4byte	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x3
	.4byte	.LASF74
	.2byte	0x2c6
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF73
	.2byte	0x2b0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e4
	.uleb128 0x3
	.4byte	.LASF74
	.2byte	0x2b2
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF75
	.2byte	0x29d
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x409
	.uleb128 0x3
	.4byte	.LASF74
	.2byte	0x29f
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF76
	.2byte	0x289
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42e
	.uleb128 0x3
	.4byte	.LASF74
	.2byte	0x28b
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF78
	.2byte	0x275
	.byte	0xd
	.4byte	0xe8
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x458
	.uleb128 0x3
	.4byte	.LASF74
	.2byte	0x277
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF77
	.2byte	0x260
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x47d
	.uleb128 0x3
	.4byte	.LASF74
	.2byte	0x262
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF79
	.2byte	0x24c
	.byte	0xa
	.4byte	0x5a
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a7
	.uleb128 0x3
	.4byte	.LASF74
	.2byte	0x24e
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF80
	.2byte	0x23c
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4cc
	.uleb128 0xc
	.string	"val"
	.2byte	0x23c
	.byte	0x20
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF81
	.2byte	0x228
	.byte	0xa
	.4byte	0x5a
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f6
	.uleb128 0x3
	.4byte	.LASF74
	.2byte	0x22a
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF82
	.2byte	0x20e
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x539
	.uleb128 0x2
	.4byte	.LASF56
	.2byte	0x20e
	.byte	0x26
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xc
	.string	"div"
	.2byte	0x20e
	.byte	0x35
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x3
	.4byte	.LASF74
	.2byte	0x210
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF83
	.2byte	0x1c5
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59a
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x1c5
	.byte	0x24
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF70
	.2byte	0x1c5
	.byte	0x3b
	.4byte	0x22c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF72
	.2byte	0x1c5
	.byte	0x51
	.4byte	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x3
	.4byte	.LASF84
	.2byte	0x1c7
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF74
	.2byte	0x1c8
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF85
	.2byte	0x1ae
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ce
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x1ae
	.byte	0x24
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF74
	.2byte	0x1b0
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF86
	.2byte	0x199
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x602
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x199
	.byte	0x23
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF74
	.2byte	0x19b
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x161
	.byte	0xd
	.4byte	0xc3
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64b
	.uleb128 0x2
	.4byte	.LASF88
	.2byte	0x161
	.byte	0x28
	.4byte	0x64b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF55
	.2byte	0x163
	.byte	0x15
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x3
	.4byte	.LASF74
	.2byte	0x164
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	0x2d3
	.uleb128 0x4
	.4byte	.LASF89
	.2byte	0x148
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a2
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x148
	.byte	0x2b
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF90
	.2byte	0x148
	.byte	0x47
	.4byte	0x1a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x3
	.4byte	.LASF84
	.2byte	0x14a
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF74
	.2byte	0x14b
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF91
	.2byte	0x130
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e5
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x130
	.byte	0x29
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF58
	.2byte	0x130
	.byte	0x47
	.4byte	0x1fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x3
	.4byte	.LASF92
	.2byte	0x132
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF93
	.2byte	0x11e
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x719
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x11e
	.byte	0x2e
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF94
	.2byte	0x11e
	.byte	0x4f
	.4byte	0x1d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF95
	.2byte	0x10d
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x74d
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x10d
	.byte	0x2c
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xc
	.string	"val"
	.2byte	0x10d
	.byte	0x3e
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF96
	.byte	0xfc
	.byte	0xa
	.4byte	0x6d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x775
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0xfc
	.byte	0x30
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xd
	.4byte	.LASF97
	.byte	0xd9
	.byte	0xd
	.4byte	0xe8
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c7
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0xd9
	.byte	0x32
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0xd9
	.byte	0x4e
	.4byte	0x1a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0xdb
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0xdc
	.byte	0x11
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xd
	.4byte	.LASF99
	.byte	0xbb
	.byte	0xa
	.4byte	0x6d
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x80b
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0xbb
	.byte	0x30
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0xbd
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0xbe
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x1
	.byte	0xaa
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84d
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0xaa
	.byte	0x29
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0xaa
	.byte	0x45
	.4byte	0x1a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x19
	.string	"val"
	.byte	0x1
	.byte	0xaa
	.byte	0x55
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF101
	.byte	0x1
	.byte	0x94
	.byte	0xa
	.4byte	0x6d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x94
	.byte	0x2d
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x94
	.byte	0x49
	.4byte	0x1a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x96
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x7a
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xc
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 2
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x7a
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"TIMER_COUNT_FREERUN"
.LASF85:
	.string	"TIMER_Disable"
.LASF46:
	.string	"TIMER_CountMode_Type"
.LASF52:
	.string	"WDT_INT"
.LASF97:
	.string	"TIMER_GetMatchStatus"
.LASF27:
	.string	"TIMER_CH1"
.LASF3:
	.string	"signed char"
.LASF81:
	.string	"WDT_GetMatchValue"
.LASF87:
	.string	"TIMER_Init"
.LASF88:
	.string	"timerCfg"
.LASF71:
	.string	"WDT_IntMask"
.LASF65:
	.string	"wdtInt"
.LASF89:
	.string	"TIMER_ClearIntStatus"
.LASF47:
	.string	"TIMER_INT_COMP_0"
.LASF48:
	.string	"TIMER_INT_COMP_1"
.LASF49:
	.string	"TIMER_INT_COMP_2"
.LASF75:
	.string	"WDT_Enable"
.LASF76:
	.string	"WDT_ClearResetStatus"
.LASF4:
	.string	"short int"
.LASF59:
	.string	"clockDivision"
.LASF82:
	.string	"WDT_Set_Clock"
.LASF91:
	.string	"TIMER_SetCountMode"
.LASF7:
	.string	"uint8_t"
.LASF101:
	.string	"TIMER_GetCompValue"
.LASF72:
	.string	"intMask"
.LASF100:
	.string	"TIMER_SetCompValue"
.LASF38:
	.string	"TIMER_Comp_ID_Type"
.LASF90:
	.string	"cmpNo"
.LASF29:
	.string	"TIMER_Chan_Type"
.LASF83:
	.string	"TIMER_IntMask"
.LASF16:
	.string	"SUCCESS"
.LASF15:
	.string	"char"
.LASF18:
	.string	"TIMEOUT"
.LASF43:
	.string	"TIMER_PreLoad_Trig_Type"
.LASF5:
	.string	"long int"
.LASF86:
	.string	"TIMER_Enable"
.LASF19:
	.string	"BL_Err_Type"
.LASF32:
	.string	"TIMER_CLKSRC_1K"
.LASF50:
	.string	"TIMER_INT_ALL"
.LASF95:
	.string	"TIMER_SetPreloadValue"
.LASF17:
	.string	"ERROR"
.LASF34:
	.string	"TIMER_ClkSrc_Type"
.LASF58:
	.string	"countMode"
.LASF28:
	.string	"TIMER_CH_MAX"
.LASF77:
	.string	"WDT_ResetCounterValue"
.LASF14:
	.string	"long double"
.LASF70:
	.string	"intType"
.LASF22:
	.string	"UNMASK"
.LASF2:
	.string	"unsigned char"
.LASF99:
	.string	"TIMER_GetCounterValue"
.LASF24:
	.string	"BL_Mask_Type"
.LASF94:
	.string	"plSrc"
.LASF12:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF13:
	.string	"unsigned int"
.LASF23:
	.string	"MASK"
.LASF8:
	.string	"uint16_t"
.LASF55:
	.string	"timerCh"
.LASF54:
	.string	"WDT_INT_Type"
.LASF64:
	.string	"TIMER_CFG_Type"
.LASF25:
	.string	"intCallback_Type"
.LASF33:
	.string	"TIMER_CLKSRC_XTAL"
.LASF74:
	.string	"tmpVal"
.LASF67:
	.string	"WDT_Int_Callback_Install"
.LASF103:
	.string	"timerIntCbfArra"
.LASF98:
	.string	"bitStatus"
.LASF60:
	.string	"matchVal0"
.LASF61:
	.string	"matchVal1"
.LASF62:
	.string	"matchVal2"
.LASF93:
	.string	"TIMER_SetPreloadTrigSrc"
.LASF30:
	.string	"TIMER_CLKSRC_FCLK"
.LASF44:
	.string	"TIMER_COUNT_PRELOAD"
.LASF66:
	.string	"cbFun"
.LASF78:
	.string	"WDT_GetResetStatus"
.LASF9:
	.string	"short unsigned int"
.LASF68:
	.string	"Timer_Int_Callback_Install"
.LASF26:
	.string	"TIMER_CH0"
.LASF37:
	.string	"TIMER_COMP_ID_2"
.LASF39:
	.string	"TIMER_PRELOAD_TRIG_NONE"
.LASF11:
	.string	"long unsigned int"
.LASF73:
	.string	"WDT_Disable"
.LASF21:
	.string	"BL_Sts_Type"
.LASF57:
	.string	"plTrigSrc"
.LASF63:
	.string	"preLoadVal"
.LASF102:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF20:
	.string	"RESET"
.LASF96:
	.string	"TIMER_GetPreloadValue"
.LASF31:
	.string	"TIMER_CLKSRC_32K"
.LASF51:
	.string	"TIMER_INT_Type"
.LASF84:
	.string	"tmpAddr"
.LASF40:
	.string	"TIMER_PRELOAD_TRIG_COMP0"
.LASF41:
	.string	"TIMER_PRELOAD_TRIG_COMP1"
.LASF42:
	.string	"TIMER_PRELOAD_TRIG_COMP2"
.LASF35:
	.string	"TIMER_COMP_ID_0"
.LASF36:
	.string	"TIMER_COMP_ID_1"
.LASF80:
	.string	"WDT_SetCompValue"
.LASF92:
	.string	"tmpval"
.LASF53:
	.string	"WDT_INT_ALL"
.LASF79:
	.string	"WDT_GetCounterValue"
.LASF56:
	.string	"clkSrc"
.LASF69:
	.string	"timerChan"
.LASF6:
	.string	"long long int"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_timer.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
