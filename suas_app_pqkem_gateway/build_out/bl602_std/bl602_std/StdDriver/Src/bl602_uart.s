	.file	"bl602_uart.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_uart.c"
	.section	.srodata.uartAddr,"a"
	.align	2
	.type	uartAddr, @object
	.size	uartAddr, 8
uartAddr:
	.word	1073782784
	.word	1073783040
	.section	.bss.uartIntCbfArra,"aw",@nobits
	.align	2
	.type	uartIntCbfArra, @object
	.size	uartIntCbfArra, 64
uartIntCbfArra:
	.zero	64
	.section	.text.UART_Init,"ax",@progbits
	.align	1
	.globl	UART_Init
	.type	UART_Init, @function
UART_Init:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_uart.c"
	.loc 1 188 1
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
	sw	a1,-56(s0)
	sb	a5,-49(s0)
	.loc 1 189 14
	sw	zero,-20(s0)
	.loc 1 190 14
	sw	zero,-24(s0)
	.loc 1 191 14
	sw	zero,-32(s0)
	.loc 1 192 14
	sw	zero,-28(s0)
	.loc 1 193 30
	lbu	a5,-49(s0)
	.loc 1 193 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 203 23
	lw	a5,-56(s0)
	lw	a4,0(a5)
	.loc 1 203 33
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	.loc 1 203 47
	lw	a5,-56(s0)
	lw	a5,4(a5)
	.loc 1 203 38
	divu	a4,a4,a5
	.loc 1 203 14
	li	a5,-858992640
	addi	a5,a5,-819
	mulhu	a5,a4,a5
	srli	a3,a5,3
	mv	a5,a3
	slli	a5,a5,2
	add	a5,a5,a3
	slli	a5,a5,1
	sub	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 204 30
	lw	a5,-56(s0)
	lw	a4,0(a5)
	.loc 1 204 49
	lw	a5,-56(s0)
	lw	a5,4(a5)
	.loc 1 204 21
	divu	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 205 7
	lw	a4,-32(s0)
	li	a5,4
	bleu	a4,a5,.L2
	.loc 1 206 9
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L2:
	.loc 1 210 61
	lw	a5,-28(s0)
	addi	a5,a5,-1
	.loc 1 210 64
	slli	a4,a5,16
	.loc 1 210 89
	lw	a5,-28(s0)
	addi	a5,a5,-1
	.loc 1 210 92
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 210 34
	lw	a3,-36(s0)
	addi	a3,a3,8
	.loc 1 210 71
	or	a5,a4,a5
	.loc 1 210 42
	sw	a5,0(a3)
	.loc 1 213 22
	lw	a5,-36(s0)
	.loc 1 213 17
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 214 48
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 214 17
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 215 19
	lw	a5,-56(s0)
	lbu	a5,10(a5)
	.loc 1 215 5
	li	a4,2
	beq	a5,a4,.L3
	li	a4,2
	bgt	a5,a4,.L17
	beq	a5,zero,.L5
	li	a4,1
	beq	a5,a4,.L6
	.loc 1 234 13
	j	.L17
.L5:
	.loc 1 218 25
	lw	a5,-20(s0)
	andi	a5,a5,-17
	sw	a5,-20(s0)
	.loc 1 219 25
	lw	a5,-24(s0)
	andi	a5,a5,-17
	sw	a5,-24(s0)
	.loc 1 220 13
	j	.L7
.L6:
	.loc 1 222 25
	lw	a5,-20(s0)
	ori	a5,a5,16
	sw	a5,-20(s0)
	.loc 1 223 25
	lw	a5,-20(s0)
	ori	a5,a5,32
	sw	a5,-20(s0)
	.loc 1 224 25
	lw	a5,-24(s0)
	ori	a5,a5,16
	sw	a5,-24(s0)
	.loc 1 225 25
	lw	a5,-24(s0)
	ori	a5,a5,32
	sw	a5,-24(s0)
	.loc 1 226 13
	j	.L7
.L3:
	.loc 1 228 25
	lw	a5,-20(s0)
	ori	a5,a5,16
	sw	a5,-20(s0)
	.loc 1 229 25
	lw	a5,-20(s0)
	andi	a5,a5,-33
	sw	a5,-20(s0)
	.loc 1 230 25
	lw	a5,-24(s0)
	ori	a5,a5,16
	sw	a5,-24(s0)
	.loc 1 231 25
	lw	a5,-24(s0)
	andi	a5,a5,-33
	sw	a5,-24(s0)
	.loc 1 232 13
	j	.L7
.L17:
	.loc 1 234 13
	nop
.L7:
	.loc 1 238 35
	lw	a5,-20(s0)
	andi	a4,a5,-1793
	.loc 1 238 85
	lw	a5,-56(s0)
	lbu	a5,8(a5)
	.loc 1 238 95
	addi	a5,a5,4
	.loc 1 238 99
	slli	a5,a5,8
	.loc 1 238 17
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 239 35
	lw	a5,-24(s0)
	andi	a4,a5,-1793
	.loc 1 239 85
	lw	a5,-56(s0)
	lbu	a5,8(a5)
	.loc 1 239 95
	addi	a5,a5,4
	.loc 1 239 99
	slli	a5,a5,8
	.loc 1 239 17
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 242 35
	lw	a4,-20(s0)
	li	a5,-12288
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 242 86
	lw	a5,-56(s0)
	lbu	a5,9(a5)
	.loc 1 242 96
	addi	a5,a5,1
	.loc 1 242 100
	slli	a5,a5,12
	.loc 1 242 17
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 245 25
	lw	a5,-56(s0)
	lbu	a4,11(a5)
	.loc 1 245 7
	li	a5,1
	bne	a4,a5,.L8
	.loc 1 246 21
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	j	.L9
.L8:
	.loc 1 248 21
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
.L9:
	.loc 1 252 25
	lw	a5,-56(s0)
	lbu	a4,12(a5)
	.loc 1 252 7
	li	a5,1
	bne	a4,a5,.L10
	.loc 1 253 21
	lw	a4,-24(s0)
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-24(s0)
	j	.L11
.L10:
	.loc 1 255 21
	lw	a4,-24(s0)
	li	a5,-4096
	addi	a5,a5,2047
	and	a5,a4,a5
	sw	a5,-24(s0)
.L11:
	.loc 1 259 25
	lw	a5,-56(s0)
	lbu	a4,13(a5)
	.loc 1 259 7
	li	a5,1
	bne	a4,a5,.L12
	.loc 1 260 21
	lw	a5,-24(s0)
	ori	a5,a5,2
	sw	a5,-24(s0)
	j	.L13
.L12:
	.loc 1 262 21
	lw	a5,-24(s0)
	andi	a5,a5,-3
	sw	a5,-24(s0)
.L13:
	.loc 1 266 8
	lw	a5,-36(s0)
	.loc 1 266 42
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 267 34
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 267 8
	mv	a4,a5
	.loc 1 267 42
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 270 48
	lw	a5,-36(s0)
	addi	a5,a5,12
	.loc 1 270 17
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 271 33
	lw	a5,-56(s0)
	lbu	a4,14(a5)
	.loc 1 271 7
	li	a5,1
	bne	a4,a5,.L14
	.loc 1 272 21
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	j	.L15
.L14:
	.loc 1 274 21
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
.L15:
	.loc 1 276 34
	lw	a5,-36(s0)
	addi	a5,a5,12
	.loc 1 276 8
	mv	a4,a5
	.loc 1 276 42
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 278 12
	li	a5,0
	.loc 1 279 1
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
.LFE8:
	.size	UART_Init, .-UART_Init
	.section	.text.UART_DeInit,"ax",@progbits
	.align	1
	.globl	UART_DeInit
	.type	UART_DeInit, @function
UART_DeInit:
.LFB9:
	.loc 1 290 1
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
	.loc 1 291 7
	lbu	a5,-17(s0)
	bne	a5,zero,.L19
	.loc 1 292 9
	li	a0,16
	call	GLB_AHB_Slave1_Reset
	j	.L20
.L19:
	.loc 1 293 13
	lbu	a4,-17(s0)
	li	a5,1
	bne	a4,a5,.L20
	.loc 1 294 9
	li	a0,17
	call	GLB_AHB_Slave1_Reset
.L20:
	.loc 1 297 12
	li	a5,0
	.loc 1 298 1
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
	.size	UART_DeInit, .-UART_DeInit
	.section	.text.UART_FifoConfig,"ax",@progbits
	.align	1
	.globl	UART_FifoConfig
	.type	UART_FifoConfig, @function
UART_FifoConfig:
.LFB10:
	.loc 1 310 1
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
	.loc 1 311 14
	sw	zero,-20(s0)
	.loc 1 312 30
	lbu	a5,-33(s0)
	.loc 1 312 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 318 43
	lw	a5,-24(s0)
	addi	a5,a5,132
	.loc 1 318 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 320 25
	lw	a4,-20(s0)
	li	a5,-2031616
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 320 75
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 320 95
	addi	a5,a5,-1
	.loc 1 320 98
	slli	a5,a5,16
	.loc 1 320 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 322 25
	lw	a4,-20(s0)
	li	a5,-520093696
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 322 75
	lw	a5,-40(s0)
	lbu	a5,1(a5)
	.loc 1 322 95
	addi	a5,a5,-1
	.loc 1 322 98
	slli	a5,a5,24
	.loc 1 322 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 324 34
	lw	a5,-24(s0)
	addi	a5,a5,132
	.loc 1 324 8
	mv	a4,a5
	.loc 1 324 43
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 327 43
	lw	a5,-24(s0)
	addi	a5,a5,128
	.loc 1 327 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 328 25
	lw	a5,-40(s0)
	lbu	a4,2(a5)
	.loc 1 328 7
	li	a5,1
	bne	a4,a5,.L23
	.loc 1 329 16
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	j	.L24
.L23:
	.loc 1 331 16
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
.L24:
	.loc 1 333 25
	lw	a5,-40(s0)
	lbu	a4,3(a5)
	.loc 1 333 7
	li	a5,1
	bne	a4,a5,.L25
	.loc 1 334 16
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	j	.L26
.L25:
	.loc 1 336 16
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
.L26:
	.loc 1 338 34
	lw	a5,-24(s0)
	addi	a5,a5,128
	.loc 1 338 8
	mv	a4,a5
	.loc 1 338 43
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 340 12
	li	a5,0
	.loc 1 341 1
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
	.size	UART_FifoConfig, .-UART_FifoConfig
	.section	.text.UART_IrConfig,"ax",@progbits
	.align	1
	.globl	UART_IrConfig
	.type	UART_IrConfig, @function
UART_IrConfig:
.LFB11:
	.loc 1 353 1
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
	.loc 1 354 14
	sw	zero,-20(s0)
	.loc 1 355 30
	lbu	a5,-33(s0)
	.loc 1 355 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 361 17
	lw	a5,-24(s0)
	.loc 1 361 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 362 23
	lw	a5,-40(s0)
	lbu	a4,0(a5)
	.loc 1 362 7
	li	a5,1
	bne	a4,a5,.L29
	.loc 1 363 16
	lw	a5,-20(s0)
	ori	a5,a5,64
	sw	a5,-20(s0)
	j	.L30
.L29:
	.loc 1 365 16
	lw	a5,-20(s0)
	andi	a5,a5,-65
	sw	a5,-20(s0)
.L30:
	.loc 1 367 23
	lw	a5,-40(s0)
	lbu	a4,2(a5)
	.loc 1 367 7
	li	a5,1
	bne	a4,a5,.L31
	.loc 1 368 16
	lw	a5,-20(s0)
	ori	a5,a5,128
	sw	a5,-20(s0)
	j	.L32
.L31:
	.loc 1 370 16
	lw	a5,-20(s0)
	andi	a5,a5,-129
	sw	a5,-20(s0)
.L32:
	.loc 1 372 8
	lw	a5,-24(s0)
	.loc 1 372 42
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 375 43
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 375 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 376 23
	lw	a5,-40(s0)
	lbu	a4,1(a5)
	.loc 1 376 7
	li	a5,1
	bne	a4,a5,.L33
	.loc 1 377 16
	lw	a5,-20(s0)
	ori	a5,a5,64
	sw	a5,-20(s0)
	j	.L34
.L33:
	.loc 1 379 16
	lw	a5,-20(s0)
	andi	a5,a5,-65
	sw	a5,-20(s0)
.L34:
	.loc 1 381 23
	lw	a5,-40(s0)
	lbu	a4,3(a5)
	.loc 1 381 7
	li	a5,1
	bne	a4,a5,.L35
	.loc 1 382 16
	lw	a5,-20(s0)
	ori	a5,a5,128
	sw	a5,-20(s0)
	j	.L36
.L35:
	.loc 1 384 16
	lw	a5,-20(s0)
	andi	a5,a5,-129
	sw	a5,-20(s0)
.L36:
	.loc 1 386 34
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 386 8
	mv	a4,a5
	.loc 1 386 42
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 389 50
	lw	a5,-40(s0)
	lhu	a5,6(a5)
	.loc 1 389 65
	slli	a5,a5,16
	.loc 1 389 77
	lw	a4,-40(s0)
	lhu	a4,4(a4)
	.loc 1 389 71
	or	a4,a5,a4
	.loc 1 389 34
	lw	a5,-24(s0)
	addi	a5,a5,16
	.loc 1 389 43
	sw	a4,0(a5)
	.loc 1 392 50
	lw	a5,-40(s0)
	lhu	a4,8(a5)
	.loc 1 392 34
	lw	a5,-24(s0)
	addi	a5,a5,20
	.loc 1 392 43
	sw	a4,0(a5)
	.loc 1 394 12
	li	a5,0
	.loc 1 395 1
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
	.size	UART_IrConfig, .-UART_IrConfig
	.section	.text.UART_Enable,"ax",@progbits
	.align	1
	.globl	UART_Enable
	.type	UART_Enable, @function
UART_Enable:
.LFB12:
	.loc 1 407 1
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
	.loc 1 408 14
	sw	zero,-20(s0)
	.loc 1 409 30
	lbu	a5,-33(s0)
	.loc 1 409 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 415 7
	lbu	a5,-34(s0)
	beq	a5,zero,.L39
	.loc 1 415 26 discriminator 1
	lbu	a4,-34(s0)
	li	a5,2
	bne	a4,a5,.L40
.L39:
	.loc 1 417 21
	lw	a5,-24(s0)
	.loc 1 417 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 418 12
	lw	a5,-24(s0)
	.loc 1 418 59
	lw	a4,-20(s0)
	ori	a4,a4,1
	.loc 1 418 46
	sw	a4,0(a5)
.L40:
	.loc 1 421 7
	lbu	a4,-34(s0)
	li	a5,1
	beq	a4,a5,.L41
	.loc 1 421 26 discriminator 1
	lbu	a4,-34(s0)
	li	a5,2
	bne	a4,a5,.L42
.L41:
	.loc 1 423 47
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 423 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 424 38
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 424 12
	mv	a4,a5
	.loc 1 424 59
	lw	a5,-20(s0)
	ori	a5,a5,1
	.loc 1 424 46
	sw	a5,0(a4)
.L42:
	.loc 1 427 12
	li	a5,0
	.loc 1 428 1
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
	.size	UART_Enable, .-UART_Enable
	.section	.text.UART_Disable,"ax",@progbits
	.align	1
	.globl	UART_Disable
	.type	UART_Disable, @function
UART_Disable:
.LFB13:
	.loc 1 440 1
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
	.loc 1 441 14
	sw	zero,-20(s0)
	.loc 1 442 30
	lbu	a5,-33(s0)
	.loc 1 442 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 448 7
	lbu	a5,-34(s0)
	beq	a5,zero,.L45
	.loc 1 448 26 discriminator 1
	lbu	a4,-34(s0)
	li	a5,2
	bne	a4,a5,.L46
.L45:
	.loc 1 450 21
	lw	a5,-24(s0)
	.loc 1 450 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 451 12
	lw	a5,-24(s0)
	.loc 1 451 59
	lw	a4,-20(s0)
	andi	a4,a4,-2
	.loc 1 451 46
	sw	a4,0(a5)
.L46:
	.loc 1 454 7
	lbu	a4,-34(s0)
	li	a5,1
	beq	a4,a5,.L47
	.loc 1 454 26 discriminator 1
	lbu	a4,-34(s0)
	li	a5,2
	bne	a4,a5,.L48
.L47:
	.loc 1 456 47
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 456 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 457 38
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 457 12
	mv	a4,a5
	.loc 1 457 59
	lw	a5,-20(s0)
	andi	a5,a5,-2
	.loc 1 457 46
	sw	a5,0(a4)
.L48:
	.loc 1 460 12
	li	a5,0
	.loc 1 461 1
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
	.size	UART_Disable, .-UART_Disable
	.section	.text.UART_SetTxDataLength,"ax",@progbits
	.align	1
	.globl	UART_SetTxDataLength
	.type	UART_SetTxDataLength, @function
UART_SetTxDataLength:
.LFB14:
	.loc 1 474 1
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
	sh	a5,-36(s0)
	.loc 1 475 14
	sw	zero,-20(s0)
	.loc 1 476 30
	lbu	a5,-33(s0)
	.loc 1 476 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 482 17
	lw	a5,-24(s0)
	.loc 1 482 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 483 55
	lw	a5,-20(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 1 483 105
	lhu	a5,-36(s0)
	addi	a5,a5,-1
	.loc 1 483 108
	slli	a4,a5,16
	.loc 1 483 8
	lw	a5,-24(s0)
	.loc 1 483 85
	or	a4,a3,a4
	.loc 1 483 42
	sw	a4,0(a5)
	.loc 1 485 12
	li	a5,0
	.loc 1 486 1
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
	.size	UART_SetTxDataLength, .-UART_SetTxDataLength
	.section	.text.UART_SetRxDataLength,"ax",@progbits
	.align	1
	.globl	UART_SetRxDataLength
	.type	UART_SetRxDataLength, @function
UART_SetRxDataLength:
.LFB15:
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
	mv	a5,a0
	mv	a4,a1
	sb	a5,-33(s0)
	mv	a5,a4
	sh	a5,-36(s0)
	.loc 1 500 14
	sw	zero,-20(s0)
	.loc 1 501 30
	lbu	a5,-33(s0)
	.loc 1 501 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 507 43
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 507 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 508 55
	lw	a5,-20(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 508 105
	lhu	a5,-36(s0)
	addi	a5,a5,-1
	.loc 1 508 108
	slli	a5,a5,16
	.loc 1 508 34
	lw	a3,-24(s0)
	addi	a3,a3,4
	.loc 1 508 85
	or	a5,a4,a5
	.loc 1 508 42
	sw	a5,0(a3)
	.loc 1 510 12
	li	a5,0
	.loc 1 511 1
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
	.size	UART_SetRxDataLength, .-UART_SetRxDataLength
	.section	.text.UART_SetRxTimeoutValue,"ax",@progbits
	.align	1
	.globl	UART_SetRxTimeoutValue
	.type	UART_SetRxTimeoutValue, @function
UART_SetRxTimeoutValue:
.LFB16:
	.loc 1 523 1
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
	.loc 1 524 30
	lbu	a5,-33(s0)
	.loc 1 524 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 531 43
	lw	a5,-20(s0)
	addi	a5,a5,24
	.loc 1 531 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 532 25
	lw	a5,-24(s0)
	andi	a5,a5,-256
	.loc 1 532 71
	lbu	a4,-34(s0)
	addi	a4,a4,-1
	.loc 1 532 12
	or	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 533 34
	lw	a5,-20(s0)
	addi	a5,a5,24
	.loc 1 533 8
	mv	a4,a5
	.loc 1 533 43
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 535 12
	li	a5,0
	.loc 1 536 1
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
	.size	UART_SetRxTimeoutValue, .-UART_SetRxTimeoutValue
	.section	.text.UART_SetDeglitchCount,"ax",@progbits
	.align	1
	.globl	UART_SetDeglitchCount
	.type	UART_SetDeglitchCount, @function
UART_SetDeglitchCount:
.LFB17:
	.loc 1 548 1
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
	.loc 1 549 30
	lbu	a5,-33(s0)
	.loc 1 549 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 556 43
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 556 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 557 25
	lw	a4,-24(s0)
	li	a5,-61440
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 557 79
	lbu	a5,-34(s0)
	addi	a5,a5,-1
	.loc 1 557 82
	slli	a5,a5,12
	.loc 1 557 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 558 34
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 558 8
	mv	a4,a5
	.loc 1 558 42
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 560 12
	li	a5,0
	.loc 1 561 1
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
	.size	UART_SetDeglitchCount, .-UART_SetDeglitchCount
	.section	.text.UART_SetBaudrate,"ax",@progbits
	.align	1
	.globl	UART_SetBaudrate
	.type	UART_SetBaudrate, @function
UART_SetBaudrate:
.LFB18:
	.loc 1 573 1
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
	.loc 1 574 30
	lbu	a5,-33(s0)
	.loc 1 574 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 581 14
	lbu	a4,-34(s0)
	lbu	a5,-33(s0)
	mv	a1,a4
	mv	a0,a5
	call	UART_GetAutoBaudCount
	mv	a5,a0
	sh	a5,-22(s0)
	.loc 1 584 57
	lhu	a4,-22(s0)
	.loc 1 584 34
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 1 584 8
	mv	a3,a5
	.loc 1 584 57
	mv	a5,a4
	slli	a5,a5,16
	add	a5,a5,a4
	.loc 1 584 42
	sw	a5,0(a3)
	.loc 1 586 12
	li	a5,0
	.loc 1 587 1
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
	.size	UART_SetBaudrate, .-UART_SetBaudrate
	.section	.text.UART_SetRtsValue,"ax",@progbits
	.align	1
	.globl	UART_SetRtsValue
	.type	UART_SetRtsValue, @function
UART_SetRtsValue:
.LFB19:
	.loc 1 598 1
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
	.loc 1 599 30
	lbu	a5,-33(s0)
	.loc 1 599 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 606 43
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 606 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 607 34
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 607 8
	mv	a4,a5
	.loc 1 607 55
	lw	a5,-24(s0)
	ori	a5,a5,4
	.loc 1 607 42
	sw	a5,0(a4)
	.loc 1 609 12
	li	a5,0
	.loc 1 610 1
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
	.size	UART_SetRtsValue, .-UART_SetRtsValue
	.section	.text.UART_ClrRtsValue,"ax",@progbits
	.align	1
	.globl	UART_ClrRtsValue
	.type	UART_ClrRtsValue, @function
UART_ClrRtsValue:
.LFB20:
	.loc 1 621 1
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
	.loc 1 622 30
	lbu	a5,-33(s0)
	.loc 1 622 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 629 43
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 629 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 630 34
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 630 8
	mv	a4,a5
	.loc 1 630 55
	lw	a5,-24(s0)
	andi	a5,a5,-5
	.loc 1 630 42
	sw	a5,0(a4)
	.loc 1 632 12
	li	a5,0
	.loc 1 633 1
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
	.size	UART_ClrRtsValue, .-UART_ClrRtsValue
	.section	.text.UART_TxFreeRun,"ax",@progbits
	.align	1
	.globl	UART_TxFreeRun
	.type	UART_TxFreeRun, @function
UART_TxFreeRun:
.LFB21:
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
	mv	a5,a0
	mv	a4,a1
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 646 14
	sw	zero,-20(s0)
	.loc 1 647 30
	lbu	a5,-33(s0)
	.loc 1 647 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 653 17
	lw	a5,-24(s0)
	.loc 1 653 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 654 7
	lbu	a4,-34(s0)
	li	a5,1
	bne	a4,a5,.L65
	.loc 1 655 12
	lw	a5,-24(s0)
	.loc 1 655 59
	lw	a4,-20(s0)
	ori	a4,a4,4
	.loc 1 655 46
	sw	a4,0(a5)
	j	.L66
.L65:
	.loc 1 657 12
	lw	a5,-24(s0)
	.loc 1 657 59
	lw	a4,-20(s0)
	andi	a4,a4,-5
	.loc 1 657 46
	sw	a4,0(a5)
.L66:
	.loc 1 660 12
	li	a5,0
	.loc 1 661 1
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
	.size	UART_TxFreeRun, .-UART_TxFreeRun
	.section	.text.UART_AutoBaudDetection,"ax",@progbits
	.align	1
	.globl	UART_AutoBaudDetection
	.type	UART_AutoBaudDetection, @function
UART_AutoBaudDetection:
.LFB22:
	.loc 1 673 1
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
	.loc 1 674 14
	sw	zero,-20(s0)
	.loc 1 675 30
	lbu	a5,-33(s0)
	.loc 1 675 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 681 43
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 681 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 682 7
	lbu	a4,-34(s0)
	li	a5,1
	bne	a4,a5,.L69
	.loc 1 683 38
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 683 12
	mv	a4,a5
	.loc 1 683 59
	lw	a5,-20(s0)
	ori	a5,a5,8
	.loc 1 683 46
	sw	a5,0(a4)
	j	.L70
.L69:
	.loc 1 685 38
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 685 12
	mv	a4,a5
	.loc 1 685 59
	lw	a5,-20(s0)
	andi	a5,a5,-9
	.loc 1 685 46
	sw	a5,0(a4)
.L70:
	.loc 1 688 12
	li	a5,0
	.loc 1 689 1
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
	.size	UART_AutoBaudDetection, .-UART_AutoBaudDetection
	.section	.text.UART_TxFifoClear,"ax",@progbits
	.align	1
	.globl	UART_TxFifoClear
	.type	UART_TxFifoClear, @function
UART_TxFifoClear:
.LFB23:
	.loc 1 700 1
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
	.loc 1 701 14
	sw	zero,-20(s0)
	.loc 1 702 30
	lbu	a5,-33(s0)
	.loc 1 702 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 708 43
	lw	a5,-24(s0)
	addi	a5,a5,128
	.loc 1 708 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 709 34
	lw	a5,-24(s0)
	addi	a5,a5,128
	.loc 1 709 8
	mv	a4,a5
	.loc 1 709 56
	lw	a5,-20(s0)
	ori	a5,a5,4
	.loc 1 709 43
	sw	a5,0(a4)
	.loc 1 711 12
	li	a5,0
	.loc 1 712 1
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
	.size	UART_TxFifoClear, .-UART_TxFifoClear
	.section	.text.UART_RxFifoClear,"ax",@progbits
	.align	1
	.globl	UART_RxFifoClear
	.type	UART_RxFifoClear, @function
UART_RxFifoClear:
.LFB24:
	.loc 1 723 1
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
	.loc 1 724 14
	sw	zero,-20(s0)
	.loc 1 725 30
	lbu	a5,-33(s0)
	.loc 1 725 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 731 43
	lw	a5,-24(s0)
	addi	a5,a5,128
	.loc 1 731 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 732 34
	lw	a5,-24(s0)
	addi	a5,a5,128
	.loc 1 732 8
	mv	a4,a5
	.loc 1 732 56
	lw	a5,-20(s0)
	ori	a5,a5,8
	.loc 1 732 43
	sw	a5,0(a4)
	.loc 1 734 12
	li	a5,0
	.loc 1 735 1
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
.LFE24:
	.size	UART_RxFifoClear, .-UART_RxFifoClear
	.section	.text.UART_IntMask,"ax",@progbits
	.align	1
	.globl	UART_IntMask
	.type	UART_IntMask, @function
UART_IntMask:
.LFB25:
	.loc 1 748 1
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
	.loc 1 750 30
	lbu	a5,-33(s0)
	.loc 1 750 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 757 43
	lw	a5,-24(s0)
	addi	a5,a5,36
	.loc 1 757 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 760 7
	lbu	a4,-34(s0)
	li	a5,8
	bne	a4,a5,.L77
	.loc 1 761 11
	lbu	a4,-35(s0)
	li	a5,1
	bne	a4,a5,.L78
	.loc 1 762 20
	lw	a5,-20(s0)
	ori	a5,a5,255
	sw	a5,-20(s0)
	j	.L79
.L78:
	.loc 1 764 20
	sw	zero,-20(s0)
	j	.L79
.L77:
	.loc 1 767 11
	lbu	a4,-35(s0)
	li	a5,1
	bne	a4,a5,.L80
	.loc 1 768 24
	lbu	a5,-34(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 768 20
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	j	.L79
.L80:
	.loc 1 770 26
	lbu	a5,-34(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 1 770 23
	not	a5,a5
	mv	a4,a5
	.loc 1 770 20
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
.L79:
	.loc 1 775 34
	lw	a5,-24(s0)
	addi	a5,a5,36
	.loc 1 775 8
	mv	a4,a5
	.loc 1 775 43
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 777 12
	li	a5,0
	.loc 1 778 1
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
.LFE25:
	.size	UART_IntMask, .-UART_IntMask
	.section	.text.UART_IntClear,"ax",@progbits
	.align	1
	.globl	UART_IntClear
	.type	UART_IntClear, @function
UART_IntClear:
.LFB26:
	.loc 1 790 1
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
	.loc 1 792 30
	lbu	a5,-33(s0)
	.loc 1 792 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 798 43
	lw	a5,-24(s0)
	addi	a5,a5,40
	.loc 1 798 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 801 7
	lbu	a4,-34(s0)
	li	a5,8
	bne	a4,a5,.L83
	.loc 1 802 16
	lw	a5,-20(s0)
	ori	a5,a5,255
	sw	a5,-20(s0)
	j	.L84
.L83:
	.loc 1 804 20
	lbu	a5,-34(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 804 16
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
.L84:
	.loc 1 808 34
	lw	a5,-24(s0)
	addi	a5,a5,40
	.loc 1 808 8
	mv	a4,a5
	.loc 1 808 43
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 810 12
	li	a5,0
	.loc 1 811 1
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
	.size	UART_IntClear, .-UART_IntClear
	.section	.text.UART_Int_Callback_Install,"ax",@progbits
	.align	1
	.globl	UART_Int_Callback_Install
	.type	UART_Int_Callback_Install, @function
UART_Int_Callback_Install:
.LFB27:
	.loc 1 824 1
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
	.loc 1 829 27
	lbu	a3,-17(s0)
	lbu	a5,-18(s0)
	.loc 1 829 37
	lui	a4,%hi(uartIntCbfArra)
	addi	a4,a4,%lo(uartIntCbfArra)
	slli	a3,a3,3
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 831 12
	li	a5,0
	.loc 1 832 1
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
	.size	UART_Int_Callback_Install, .-UART_Int_Callback_Install
	.section	.text.UART_SendData,"ax",@progbits
	.align	1
	.globl	UART_SendData
	.type	UART_SendData, @function
UART_SendData:
.LFB28:
	.loc 1 845 1
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
	sw	a2,-44(s0)
	sb	a5,-33(s0)
	.loc 1 846 14
	sw	zero,-20(s0)
	.loc 1 847 30
	lbu	a5,-33(s0)
	.loc 1 847 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 848 14
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 854 10
	j	.L89
.L93:
	.loc 1 855 12
	lbu	a5,-33(s0)
	mv	a0,a5
	call	UART_GetTxFifoCount
	mv	a5,a0
	.loc 1 855 11 discriminator 1
	beq	a5,zero,.L90
	.loc 1 856 62
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 856 56
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 856 41
	lw	a4,-28(s0)
	addi	a4,a4,136
	.loc 1 856 56
	lbu	a5,0(a5)
	.loc 1 856 50
	sb	a5,0(a4)
	.loc 1 857 24
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	j	.L89
.L90:
	.loc 1 859 23
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 860 15
	lw	a5,-24(s0)
	bne	a5,zero,.L89
	.loc 1 861 24
	li	a5,2
	j	.L92
.L89:
	.loc 1 854 16
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L93
	.loc 1 866 12
	li	a5,0
.L92:
	.loc 1 867 1
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
	.size	UART_SendData, .-UART_SendData
	.section	.text.UART_SendDataBlock,"ax",@progbits
	.align	1
	.globl	UART_SendDataBlock
	.type	UART_SendDataBlock, @function
UART_SendDataBlock:
.LFB29:
	.loc 1 880 1
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
	sw	a2,-44(s0)
	sb	a5,-33(s0)
	.loc 1 881 14
	sw	zero,-20(s0)
	.loc 1 882 30
	lbu	a5,-33(s0)
	.loc 1 882 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 883 14
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 889 10
	j	.L95
.L99:
	.loc 1 890 12
	lbu	a5,-33(s0)
	mv	a0,a5
	call	UART_GetTxFifoCount
	mv	a5,a0
	.loc 1 890 11 discriminator 1
	beq	a5,zero,.L96
	.loc 1 891 62
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 891 56
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 891 41
	lw	a4,-28(s0)
	addi	a4,a4,136
	.loc 1 891 56
	lbu	a5,0(a5)
	.loc 1 891 50
	sb	a5,0(a4)
	.loc 1 892 24
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	j	.L95
.L96:
	.loc 1 894 23
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 895 15
	lw	a5,-24(s0)
	bne	a5,zero,.L95
	.loc 1 896 24
	li	a5,2
	j	.L98
.L95:
	.loc 1 889 16
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L99
	.loc 1 901 10
	nop
.L100:
	.loc 1 901 11 discriminator 2
	lbu	a5,-33(s0)
	mv	a0,a5
	call	UART_GetTxBusBusyStatus
	mv	a5,a0
	mv	a4,a5
	.loc 1 901 43 discriminator 2
	li	a5,1
	beq	a4,a5,.L100
	.loc 1 903 12
	li	a5,0
.L98:
	.loc 1 904 1
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
	.size	UART_SendDataBlock, .-UART_SendDataBlock
	.section	.text.UART_ReceiveData,"ax",@progbits
	.align	1
	.globl	UART_ReceiveData
	.type	UART_ReceiveData, @function
UART_ReceiveData:
.LFB30:
	.loc 1 917 1
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
	sw	a2,-44(s0)
	sb	a5,-33(s0)
	.loc 1 918 14
	sw	zero,-20(s0)
	.loc 1 919 30
	lbu	a5,-33(s0)
	.loc 1 919 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 925 10
	j	.L102
.L104:
	.loc 1 926 53
	lw	a5,-24(s0)
	addi	a5,a5,140
	.loc 1 926 28
	mv	a3,a5
	.loc 1 926 19
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 926 13
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 926 26
	lbu	a4,0(a3)
	andi	a4,a4,0xff
	.loc 1 926 23
	sb	a4,0(a5)
.L102:
	.loc 1 925 24
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bgeu	a4,a5,.L103
	.loc 1 925 27 discriminator 1
	lbu	a5,-33(s0)
	mv	a0,a5
	call	UART_GetRxFifoCount
	mv	a5,a0
	.loc 1 925 24 discriminator 2
	bne	a5,zero,.L104
.L103:
	.loc 1 929 12
	lw	a5,-20(s0)
	.loc 1 930 1
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
	.size	UART_ReceiveData, .-UART_ReceiveData
	.section	.text.UART_GetAutoBaudCount,"ax",@progbits
	.align	1
	.globl	UART_GetAutoBaudCount
	.type	UART_GetAutoBaudCount, @function
UART_GetAutoBaudCount:
.LFB31:
	.loc 1 942 1
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
	.loc 1 943 30
	lbu	a5,-33(s0)
	.loc 1 943 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 950 7
	lbu	a5,-34(s0)
	bne	a5,zero,.L107
	.loc 1 951 45
	lw	a5,-20(s0)
	addi	a5,a5,52
	.loc 1 951 17
	lw	a5,0(a5)
	.loc 1 951 55
	srli	a5,a5,16
	.loc 1 951 61
	slli	a5,a5,16
	srli	a5,a5,16
	j	.L108
.L107:
	.loc 1 953 45
	lw	a5,-20(s0)
	addi	a5,a5,52
	.loc 1 953 17
	lw	a5,0(a5)
	.loc 1 953 55
	slli	a5,a5,16
	srli	a5,a5,16
.L108:
	.loc 1 955 1
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
.LFE31:
	.size	UART_GetAutoBaudCount, .-UART_GetAutoBaudCount
	.section	.text.UART_GetTxFifoCount,"ax",@progbits
	.align	1
	.globl	UART_GetTxFifoCount
	.type	UART_GetTxFifoCount, @function
UART_GetTxFifoCount:
.LFB32:
	.loc 1 966 1
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
	.loc 1 967 30
	lbu	a5,-33(s0)
	.loc 1 967 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 972 45
	lw	a5,-20(s0)
	addi	a5,a5,132
	.loc 1 972 17
	lw	a5,0(a5)
	.loc 1 972 83
	andi	a5,a5,0xff
	andi	a5,a5,63
	andi	a5,a5,0xff
	.loc 1 973 1
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
	.size	UART_GetTxFifoCount, .-UART_GetTxFifoCount
	.section	.text.UART_GetRxFifoCount,"ax",@progbits
	.align	1
	.globl	UART_GetRxFifoCount
	.type	UART_GetRxFifoCount, @function
UART_GetRxFifoCount:
.LFB33:
	.loc 1 984 1
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
	.loc 1 985 30
	lbu	a5,-33(s0)
	.loc 1 985 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 990 45
	lw	a5,-20(s0)
	addi	a5,a5,132
	.loc 1 990 17
	lw	a5,0(a5)
	.loc 1 990 83
	srli	a5,a5,8
	andi	a5,a5,0xff
	andi	a5,a5,63
	andi	a5,a5,0xff
	.loc 1 991 1
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
	.size	UART_GetRxFifoCount, .-UART_GetRxFifoCount
	.section	.text.UART_GetIntStatus,"ax",@progbits
	.align	1
	.globl	UART_GetIntStatus
	.type	UART_GetIntStatus, @function
UART_GetIntStatus:
.LFB34:
	.loc 1 1003 1
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
	.loc 1 1005 30
	lbu	a5,-33(s0)
	.loc 1 1005 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1012 43
	lw	a5,-20(s0)
	addi	a5,a5,32
	.loc 1 1012 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1013 7
	lbu	a4,-34(s0)
	li	a5,8
	bne	a4,a5,.L114
	.loc 1 1014 19
	lw	a5,-24(s0)
	andi	a5,a5,255
	.loc 1 1014 11
	beq	a5,zero,.L115
	.loc 1 1016 20
	li	a5,1
	j	.L116
.L115:
	.loc 1 1018 20
	li	a5,0
	j	.L116
.L114:
	.loc 1 1021 23
	lbu	a5,-34(s0)
	li	a4,1
	sll	a4,a4,a5
	.loc 1 1021 19
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 1 1021 11
	beq	a5,zero,.L117
	.loc 1 1023 20
	li	a5,1
	j	.L116
.L117:
	.loc 1 1025 20
	li	a5,0
.L116:
	.loc 1 1028 1
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
	.size	UART_GetIntStatus, .-UART_GetIntStatus
	.section	.text.UART_GetTxBusBusyStatus,"ax",@progbits
	.align	1
	.globl	UART_GetTxBusBusyStatus
	.type	UART_GetTxBusBusyStatus, @function
UART_GetTxBusBusyStatus:
.LFB35:
	.loc 1 1039 1
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
	.loc 1 1041 30
	lbu	a5,-33(s0)
	.loc 1 1041 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1047 43
	lw	a5,-20(s0)
	addi	a5,a5,48
	.loc 1 1047 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1048 19
	lw	a5,-24(s0)
	andi	a5,a5,1
	.loc 1 1048 7
	beq	a5,zero,.L119
	.loc 1 1050 16
	li	a5,1
	j	.L120
.L119:
	.loc 1 1052 16
	li	a5,0
.L120:
	.loc 1 1054 1
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
	.size	UART_GetTxBusBusyStatus, .-UART_GetTxBusBusyStatus
	.section	.text.UART_GetRxBusBusyStatus,"ax",@progbits
	.align	1
	.globl	UART_GetRxBusBusyStatus
	.type	UART_GetRxBusBusyStatus, @function
UART_GetRxBusBusyStatus:
.LFB36:
	.loc 1 1065 1
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
	.loc 1 1067 30
	lbu	a5,-33(s0)
	.loc 1 1067 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1073 43
	lw	a5,-20(s0)
	addi	a5,a5,48
	.loc 1 1073 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1074 19
	lw	a5,-24(s0)
	andi	a5,a5,2
	.loc 1 1074 7
	beq	a5,zero,.L122
	.loc 1 1076 16
	li	a5,1
	j	.L123
.L122:
	.loc 1 1078 16
	li	a5,0
.L123:
	.loc 1 1080 1
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
	.size	UART_GetRxBusBusyStatus, .-UART_GetRxBusBusyStatus
	.section	.text.UART_GetOverflowStatus,"ax",@progbits
	.align	1
	.globl	UART_GetOverflowStatus
	.type	UART_GetOverflowStatus, @function
UART_GetOverflowStatus:
.LFB37:
	.loc 1 1092 1
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
	.loc 1 1094 30
	lbu	a5,-33(s0)
	.loc 1 1094 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1101 43
	lw	a5,-20(s0)
	addi	a5,a5,128
	.loc 1 1101 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1102 30
	lbu	a5,-34(s0)
	addi	a5,a5,4
	.loc 1 1102 19
	li	a4,1
	sll	a4,a4,a5
	.loc 1 1102 15
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 1 1102 7
	beq	a5,zero,.L125
	.loc 1 1104 16
	li	a5,1
	j	.L126
.L125:
	.loc 1 1106 16
	li	a5,0
.L126:
	.loc 1 1108 1
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
	.size	UART_GetOverflowStatus, .-UART_GetOverflowStatus
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_uart.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xee2
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x12
	.4byte	.LASF177
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
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x2
	.byte	0xe7
	.byte	0x1
	.4byte	0xcf
	.uleb128 0x1
	.4byte	.LASF2
	.byte	0
	.uleb128 0x1
	.4byte	.LASF3
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF4
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF5
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF6
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF8
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF9
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF10
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF11
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF12
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF13
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x104
	.byte	0x2
	.4byte	0x32
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF27
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF28
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF29
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF30
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x110
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF34
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x128
	.uleb128 0xe
	.4byte	0x117
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF36
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF37
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF38
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.4byte	.LASF39
	.uleb128 0x15
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF40
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0x172
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0x153
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x21
	.byte	0x1
	.4byte	0x197
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF47
	.byte	0x4
	.byte	0x24
	.byte	0x2
	.4byte	0x17e
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x2a
	.byte	0x1
	.4byte	0x1bc
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0
	.uleb128 0x16
	.string	"SET"
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF49
	.byte	0x4
	.byte	0x2d
	.byte	0x2
	.4byte	0x1a3
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x1e1
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF52
	.byte	0x4
	.byte	0x36
	.byte	0x2
	.4byte	0x1c8
	.uleb128 0x5
	.4byte	.LASF53
	.byte	0x4
	.byte	0x7c
	.byte	0xf
	.4byte	0x14b
	.uleb128 0xa
	.4byte	0x1ed
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0x21d
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF57
	.byte	0x5
	.byte	0x3d
	.byte	0x2
	.4byte	0x1fe
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x42
	.byte	0xe
	.4byte	0x248
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF61
	.byte	0x5
	.byte	0x46
	.byte	0x2
	.4byte	0x229
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x4b
	.byte	0xe
	.4byte	0x273
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF65
	.byte	0x5
	.byte	0x4f
	.byte	0x2
	.4byte	0x254
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x54
	.byte	0xe
	.4byte	0x2a4
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF70
	.byte	0x5
	.byte	0x59
	.byte	0x2
	.4byte	0x27f
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x5e
	.byte	0xe
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF74
	.byte	0x5
	.byte	0x62
	.byte	0x2
	.4byte	0x2b0
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x67
	.byte	0xe
	.4byte	0x2f4
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF77
	.byte	0x5
	.byte	0x6a
	.byte	0x2
	.4byte	0x2db
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x6f
	.byte	0xe
	.4byte	0x319
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF80
	.byte	0x5
	.byte	0x72
	.byte	0x2
	.4byte	0x300
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x77
	.byte	0xe
	.4byte	0x368
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF90
	.byte	0x5
	.byte	0x81
	.byte	0x2
	.4byte	0x325
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x86
	.byte	0xe
	.4byte	0x399
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF95
	.byte	0x5
	.byte	0x8b
	.byte	0x2
	.4byte	0x374
	.uleb128 0xc
	.byte	0x10
	.byte	0x90
	.4byte	0x419
	.uleb128 0x6
	.4byte	.LASF96
	.byte	0x91
	.byte	0xe
	.4byte	0x117
	.byte	0
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0x92
	.byte	0xe
	.4byte	0x117
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0x93
	.byte	0x18
	.4byte	0x2a4
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0x94
	.byte	0x18
	.4byte	0x2cf
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF100
	.byte	0x95
	.byte	0x16
	.4byte	0x273
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0x96
	.byte	0x11
	.4byte	0x197
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF102
	.byte	0x97
	.byte	0x11
	.4byte	0x197
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF103
	.byte	0x98
	.byte	0x11
	.4byte	0x197
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF104
	.byte	0x99
	.byte	0x1e
	.4byte	0x2f4
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.4byte	.LASF105
	.byte	0x5
	.byte	0x9a
	.byte	0x2
	.4byte	0x3a5
	.uleb128 0xc
	.byte	0x4
	.byte	0x9f
	.4byte	0x45d
	.uleb128 0x6
	.4byte	.LASF106
	.byte	0xa0
	.byte	0xd
	.4byte	0xf8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF107
	.byte	0xa1
	.byte	0xd
	.4byte	0xf8
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF108
	.byte	0xa2
	.byte	0x11
	.4byte	0x197
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF109
	.byte	0xa3
	.byte	0x11
	.4byte	0x197
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF110
	.byte	0x5
	.byte	0xa4
	.byte	0x2
	.4byte	0x425
	.uleb128 0xc
	.byte	0xa
	.byte	0xa9
	.4byte	0x4c5
	.uleb128 0x6
	.4byte	.LASF111
	.byte	0xaa
	.byte	0x11
	.4byte	0x197
	.byte	0
	.uleb128 0x6
	.4byte	.LASF112
	.byte	0xab
	.byte	0x11
	.4byte	0x197
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF113
	.byte	0xac
	.byte	0x11
	.4byte	0x197
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF114
	.byte	0xad
	.byte	0x11
	.4byte	0x197
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0xae
	.byte	0xe
	.4byte	0x104
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF116
	.byte	0xaf
	.byte	0xe
	.4byte	0x104
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF117
	.byte	0xb0
	.byte	0xe
	.4byte	0x104
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF118
	.byte	0x5
	.byte	0xb1
	.byte	0x2
	.4byte	0x469
	.uleb128 0xf
	.4byte	0x123
	.4byte	0x4e1
	.uleb128 0xd
	.4byte	0x13d
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	0x4d1
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x40
	.byte	0x17
	.4byte	0x4e1
	.uleb128 0x5
	.byte	0x3
	.4byte	uartAddr
	.uleb128 0xf
	.4byte	0x1f9
	.4byte	0x50d
	.uleb128 0xd
	.4byte	0x13d
	.byte	0x1
	.uleb128 0xd
	.4byte	0x13d
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x41
	.byte	0x1b
	.4byte	0x4f7
	.uleb128 0x5
	.byte	0x3
	.4byte	uartIntCbfArra
	.uleb128 0x17
	.4byte	.LASF178
	.byte	0x6
	.2byte	0x240
	.byte	0xd
	.4byte	0x172
	.4byte	0x535
	.uleb128 0x18
	.4byte	0xcf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF125
	.2byte	0x443
	.byte	0xd
	.4byte	0x1bc
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58a
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x443
	.byte	0x31
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF122
	.2byte	0x443
	.byte	0x4b
	.4byte	0x399
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x445
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x446
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF126
	.2byte	0x428
	.byte	0xd
	.4byte	0x1bc
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d0
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x428
	.byte	0x32
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x42a
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x42b
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF127
	.2byte	0x40e
	.byte	0xd
	.4byte	0x1bc
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x616
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x40e
	.byte	0x32
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x410
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x411
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF128
	.2byte	0x3ea
	.byte	0xd
	.4byte	0x1bc
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x66b
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x3ea
	.byte	0x2c
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF129
	.2byte	0x3ea
	.byte	0x41
	.4byte	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x3ec
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x3ed
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF130
	.2byte	0x3d7
	.byte	0x9
	.4byte	0xf8
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a3
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x3d7
	.byte	0x2a
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x3d9
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF131
	.2byte	0x3c5
	.byte	0x9
	.4byte	0xf8
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6db
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x3c5
	.byte	0x2a
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x3c7
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF132
	.2byte	0x3ad
	.byte	0xa
	.4byte	0x104
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x722
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x3ad
	.byte	0x2d
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF133
	.2byte	0x3ad
	.byte	0x50
	.4byte	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x3af
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF134
	.2byte	0x394
	.byte	0xa
	.4byte	0x117
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x786
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x394
	.byte	0x28
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF135
	.2byte	0x394
	.byte	0x38
	.4byte	0x786
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF136
	.2byte	0x394
	.byte	0x46
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF137
	.2byte	0x396
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x397
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	0xf8
	.uleb128 0xb
	.4byte	.LASF138
	.2byte	0x36f
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7fd
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x36f
	.byte	0x2d
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF135
	.2byte	0x36f
	.byte	0x3e
	.4byte	0x786
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"len"
	.2byte	0x36f
	.byte	0x4c
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF139
	.2byte	0x371
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x372
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF140
	.2byte	0x373
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF141
	.2byte	0x34c
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x86f
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x34c
	.byte	0x28
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF135
	.2byte	0x34c
	.byte	0x39
	.4byte	0x786
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"len"
	.2byte	0x34c
	.byte	0x47
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF139
	.2byte	0x34e
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x34f
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF140
	.2byte	0x350
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF142
	.2byte	0x337
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b7
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x337
	.byte	0x34
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3
	.4byte	.LASF129
	.2byte	0x337
	.byte	0x49
	.4byte	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x3
	.4byte	.LASF143
	.2byte	0x337
	.byte	0x63
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF144
	.2byte	0x315
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x90c
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x315
	.byte	0x28
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF129
	.2byte	0x315
	.byte	0x3d
	.4byte	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x317
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x318
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF145
	.2byte	0x2eb
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x970
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x2eb
	.byte	0x27
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF129
	.2byte	0x2eb
	.byte	0x3c
	.4byte	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x3
	.4byte	.LASF146
	.2byte	0x2eb
	.byte	0x51
	.4byte	0x1e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x2ed
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x2ee
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF147
	.2byte	0x2d2
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b6
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x2d2
	.byte	0x2b
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x2d4
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x2d5
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF148
	.2byte	0x2bb
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9fc
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x2bb
	.byte	0x2b
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x2bd
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x2be
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF149
	.2byte	0x2a0
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa51
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x2a0
	.byte	0x31
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF150
	.2byte	0x2a0
	.byte	0x44
	.4byte	0x197
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x2a2
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x2a3
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF151
	.2byte	0x284
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa6
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x284
	.byte	0x29
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF152
	.2byte	0x284
	.byte	0x3c
	.4byte	0x197
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x286
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x287
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF153
	.2byte	0x26c
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaec
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x26c
	.byte	0x2b
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x26e
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x26f
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF154
	.2byte	0x255
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb32
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x255
	.byte	0x2b
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x257
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x258
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF155
	.2byte	0x23c
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb87
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x23c
	.byte	0x2b
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF133
	.2byte	0x23c
	.byte	0x4e
	.4byte	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x23e
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x23f
	.4byte	0x104
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x4
	.4byte	.LASF156
	.2byte	0x223
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbdc
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x223
	.byte	0x30
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF157
	.2byte	0x223
	.byte	0x3f
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x225
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x226
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF158
	.2byte	0x20a
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc31
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x20a
	.byte	0x31
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF159
	.2byte	0x20a
	.byte	0x40
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x20c
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x20d
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF160
	.2byte	0x1f2
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc86
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x1f2
	.byte	0x2f
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF161
	.2byte	0x1f2
	.byte	0x3f
	.4byte	0x104
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x1f4
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x1f5
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF162
	.2byte	0x1d9
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcdb
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x1d9
	.byte	0x2f
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF161
	.2byte	0x1d9
	.byte	0x3f
	.4byte	0x104
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x1db
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x1dc
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF163
	.2byte	0x1b7
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd30
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x1b7
	.byte	0x27
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF164
	.2byte	0x1b7
	.byte	0x42
	.4byte	0x248
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x1b9
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x1ba
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF165
	.2byte	0x196
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd85
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x196
	.byte	0x26
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF164
	.2byte	0x196
	.byte	0x41
	.4byte	0x248
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x198
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x199
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF166
	.2byte	0x160
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdda
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x160
	.byte	0x28
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF167
	.2byte	0x160
	.byte	0x41
	.4byte	0xdda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x162
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x163
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	0x4c5
	.uleb128 0x4
	.4byte	.LASF168
	.2byte	0x135
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe34
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x135
	.byte	0x2a
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF169
	.2byte	0x135
	.byte	0x44
	.4byte	0xe34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x137
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x138
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	0x45d
	.uleb128 0xb
	.4byte	.LASF170
	.2byte	0x121
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe63
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x121
	.byte	0x26
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x19
	.4byte	.LASF171
	.byte	0x1
	.byte	0xbb
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee0
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0xbb
	.byte	0x24
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x11
	.4byte	.LASF172
	.byte	0xbb
	.byte	0x3a
	.4byte	0xee0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.4byte	.LASF173
	.byte	0xbd
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF174
	.byte	0xbe
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF175
	.byte	0xbf
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF176
	.byte	0xc0
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0xc1
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xa
	.4byte	0x419
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x104
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF66:
	.string	"UART_DATABITS_5"
.LASF20:
	.string	"BL_AHB_SLAVE1_I2C"
.LASF68:
	.string	"UART_DATABITS_7"
.LASF69:
	.string	"UART_DATABITS_8"
.LASF86:
	.string	"UART_INT_PCE"
.LASF5:
	.string	"BL_AHB_SLAVE1_DBG"
.LASF133:
	.string	"autoBaudDet"
.LASF65:
	.string	"UART_Parity_Type"
.LASF77:
	.string	"UART_ByteBitInverse_Type"
.LASF80:
	.string	"UART_AutoBaudDetection_Type"
.LASF29:
	.string	"long int"
.LASF45:
	.string	"DISABLE"
.LASF131:
	.string	"UART_GetTxFifoCount"
.LASF163:
	.string	"UART_Disable"
.LASF47:
	.string	"BL_Fun_Type"
.LASF164:
	.string	"direct"
.LASF35:
	.string	"uint32_t"
.LASF155:
	.string	"UART_SetBaudrate"
.LASF160:
	.string	"UART_SetRxDataLength"
.LASF71:
	.string	"UART_STOPBITS_1"
.LASF27:
	.string	"signed char"
.LASF103:
	.string	"rtsSoftwareControl"
.LASF53:
	.string	"intCallback_Type"
.LASF19:
	.string	"BL_AHB_SLAVE1_SPI"
.LASF37:
	.string	"long long unsigned int"
.LASF121:
	.string	"uartId"
.LASF124:
	.string	"UARTx"
.LASF119:
	.string	"uartAddr"
.LASF31:
	.string	"BL_AHB_Slave1_Type"
.LASF44:
	.string	"BL_Err_Type"
.LASF130:
	.string	"UART_GetRxFifoCount"
.LASF156:
	.string	"UART_SetDeglitchCount"
.LASF139:
	.string	"txLen"
.LASF46:
	.string	"ENABLE"
.LASF30:
	.string	"long long int"
.LASF165:
	.string	"UART_Enable"
.LASF33:
	.string	"uint16_t"
.LASF62:
	.string	"UART_PARITY_NONE"
.LASF87:
	.string	"UART_INT_TX_FER"
.LASF23:
	.string	"BL_AHB_SLAVE1_IRR"
.LASF148:
	.string	"UART_TxFifoClear"
.LASF97:
	.string	"baudRate"
.LASF4:
	.string	"BL_AHB_SLAVE1_GPIP"
.LASF81:
	.string	"UART_INT_TX_END"
.LASF100:
	.string	"parity"
.LASF150:
	.string	"autoBaud"
.LASF43:
	.string	"TIMEOUT"
.LASF110:
	.string	"UART_FifoCfg_Type"
.LASF92:
	.string	"UART_TX_UNDERFLOW"
.LASF171:
	.string	"UART_Init"
.LASF25:
	.string	"BL_AHB_SLAVE1_MAX"
.LASF157:
	.string	"deglitchCnt"
.LASF169:
	.string	"fifoCfg"
.LASF51:
	.string	"MASK"
.LASF38:
	.string	"unsigned int"
.LASF11:
	.string	"BL_AHB_SLAVE1_L1C"
.LASF143:
	.string	"cbFun"
.LASF10:
	.string	"BL_AHB_SLAVE1_CCI"
.LASF6:
	.string	"BL_AHB_SLAVE1_SEC"
.LASF72:
	.string	"UART_STOPBITS_1_5"
.LASF36:
	.string	"long unsigned int"
.LASF16:
	.string	"BL_AHB_SLAVE1_WRAM"
.LASF145:
	.string	"UART_IntMask"
.LASF70:
	.string	"UART_DataBits_Type"
.LASF88:
	.string	"UART_INT_RX_FER"
.LASF120:
	.string	"uartIntCbfArra"
.LASF135:
	.string	"data"
.LASF126:
	.string	"UART_GetRxBusBusyStatus"
.LASF129:
	.string	"intType"
.LASF34:
	.string	"short unsigned int"
.LASF176:
	.string	"baudRateDivisor"
.LASF167:
	.string	"irCfg"
.LASF90:
	.string	"UART_INT_Type"
.LASF158:
	.string	"UART_SetRxTimeoutValue"
.LASF24:
	.string	"BL_AHB_SLAVE1_CKS"
.LASF98:
	.string	"dataBits"
.LASF138:
	.string	"UART_SendDataBlock"
.LASF59:
	.string	"UART_RX"
.LASF127:
	.string	"UART_GetTxBusBusyStatus"
.LASF109:
	.string	"rxFifoDmaEnable"
.LASF91:
	.string	"UART_TX_OVERFLOW"
.LASF128:
	.string	"UART_GetIntStatus"
.LASF105:
	.string	"UART_CFG_Type"
.LASF56:
	.string	"UART_ID_MAX"
.LASF13:
	.string	"BL_AHB_SLAVE1_DMA"
.LASF112:
	.string	"rxIrEnable"
.LASF111:
	.string	"txIrEnable"
.LASF50:
	.string	"UNMASK"
.LASF15:
	.string	"BL_AHB_SLAVE1_PDSHBN"
.LASF7:
	.string	"BL_AHB_SLAVE1_TZ1"
.LASF8:
	.string	"BL_AHB_SLAVE1_TZ2"
.LASF93:
	.string	"UART_RX_OVERFLOW"
.LASF83:
	.string	"UART_INT_TX_FIFO_REQ"
.LASF42:
	.string	"ERROR"
.LASF117:
	.string	"rxIrPulseStart"
.LASF63:
	.string	"UART_PARITY_ODD"
.LASF96:
	.string	"uartClk"
.LASF94:
	.string	"UART_RX_UNDERFLOW"
.LASF55:
	.string	"UART1_ID"
.LASF114:
	.string	"rxIrInverse"
.LASF162:
	.string	"UART_SetTxDataLength"
.LASF102:
	.string	"rxDeglitch"
.LASF74:
	.string	"UART_StopBits_Type"
.LASF75:
	.string	"UART_LSB_FIRST"
.LASF174:
	.string	"tmpValRxCfg"
.LASF57:
	.string	"UART_ID_Type"
.LASF22:
	.string	"BL_AHB_SLAVE1_TMR"
.LASF14:
	.string	"BL_AHB_SLAVE1_SDU"
.LASF12:
	.string	"BL_AHB_SLAVE1_SFC"
.LASF152:
	.string	"txFreeRun"
.LASF9:
	.string	"BL_AHB_SLAVE1_EFUSE"
.LASF48:
	.string	"RESET"
.LASF125:
	.string	"UART_GetOverflowStatus"
.LASF21:
	.string	"BL_AHB_SLAVE1_PWM"
.LASF154:
	.string	"UART_SetRtsValue"
.LASF26:
	.string	"unsigned char"
.LASF168:
	.string	"UART_FifoConfig"
.LASF118:
	.string	"UART_IrCfg_Type"
.LASF54:
	.string	"UART0_ID"
.LASF28:
	.string	"short int"
.LASF149:
	.string	"UART_AutoBaudDetection"
.LASF166:
	.string	"UART_IrConfig"
.LASF58:
	.string	"UART_TX"
.LASF153:
	.string	"UART_ClrRtsValue"
.LASF178:
	.string	"GLB_AHB_Slave1_Reset"
.LASF101:
	.string	"ctsFlowControl"
.LASF142:
	.string	"UART_Int_Callback_Install"
.LASF52:
	.string	"BL_Mask_Type"
.LASF49:
	.string	"BL_Sts_Type"
.LASF123:
	.string	"tmpVal"
.LASF108:
	.string	"txFifoDmaEnable"
.LASF67:
	.string	"UART_DATABITS_6"
.LASF76:
	.string	"UART_MSB_FIRST"
.LASF172:
	.string	"uartCfg"
.LASF39:
	.string	"long double"
.LASF113:
	.string	"txIrInverse"
.LASF170:
	.string	"UART_DeInit"
.LASF40:
	.string	"char"
.LASF132:
	.string	"UART_GetAutoBaudCount"
.LASF99:
	.string	"stopBits"
.LASF2:
	.string	"BL_AHB_SLAVE1_GLB"
.LASF64:
	.string	"UART_PARITY_EVEN"
.LASF140:
	.string	"timeoutCnt"
.LASF141:
	.string	"UART_SendData"
.LASF175:
	.string	"fraction"
.LASF177:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF73:
	.string	"UART_STOPBITS_2"
.LASF144:
	.string	"UART_IntClear"
.LASF61:
	.string	"UART_Direction_Type"
.LASF173:
	.string	"tmpValTxCfg"
.LASF106:
	.string	"txFifoDmaThreshold"
.LASF161:
	.string	"length"
.LASF159:
	.string	"time"
.LASF79:
	.string	"UART_AUTOBAUD_STARTBIT"
.LASF78:
	.string	"UART_AUTOBAUD_0X55"
.LASF17:
	.string	"BL_AHB_SLAVE1_UART0"
.LASF18:
	.string	"BL_AHB_SLAVE1_UART1"
.LASF104:
	.string	"byteBitInverse"
.LASF136:
	.string	"maxLen"
.LASF84:
	.string	"UART_INT_RX_FIFO_REQ"
.LASF32:
	.string	"uint8_t"
.LASF146:
	.string	"intMask"
.LASF41:
	.string	"SUCCESS"
.LASF115:
	.string	"txIrPulseStart"
.LASF107:
	.string	"rxFifoDmaThreshold"
.LASF85:
	.string	"UART_INT_RTO"
.LASF151:
	.string	"UART_TxFreeRun"
.LASF3:
	.string	"BL_AHB_SLAVE1_RF"
.LASF82:
	.string	"UART_INT_RX_END"
.LASF89:
	.string	"UART_INT_ALL"
.LASF116:
	.string	"txIrPulseStop"
.LASF147:
	.string	"UART_RxFifoClear"
.LASF137:
	.string	"rxLen"
.LASF60:
	.string	"UART_TXRX"
.LASF95:
	.string	"UART_Overflow_Type"
.LASF134:
	.string	"UART_ReceiveData"
.LASF122:
	.string	"overflow"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_uart.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
