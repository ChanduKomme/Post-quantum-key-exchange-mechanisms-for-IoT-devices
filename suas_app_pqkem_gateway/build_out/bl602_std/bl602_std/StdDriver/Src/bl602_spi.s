	.file	"bl602_spi.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_spi.c"
	.section	.srodata.spiAddr,"a"
	.align	2
	.type	spiAddr, @object
	.size	spiAddr, 4
spiAddr:
	.word	1073783296
	.section	.bss.spiIntCbfArra,"aw",@nobits
	.align	2
	.type	spiIntCbfArra, @object
	.size	spiIntCbfArra, 24
spiIntCbfArra:
	.zero	24
	.section	.text.SPI_Init,"ax",@progbits
	.align	1
	.globl	SPI_Init
	.type	SPI_Init, @function
SPI_Init:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_spi.c"
	.loc 1 169 1
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
	.loc 1 171 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 181 17
	lw	a5,-20(s0)
	.loc 1 181 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 182 25
	lw	a4,-24(s0)
	li	a5,-4096
	addi	a5,a5,2047
	and	a4,a4,a5
	.loc 1 182 74
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 182 91
	slli	a5,a5,11
	.loc 1 182 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 183 25
	lw	a5,-24(s0)
	andi	a4,a5,-513
	.loc 1 183 73
	lw	a5,-40(s0)
	lbu	a5,1(a5)
	.loc 1 183 92
	slli	a5,a5,9
	.loc 1 183 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 184 25
	lw	a5,-24(s0)
	andi	a4,a5,-129
	.loc 1 184 73
	lw	a5,-40(s0)
	lbu	a5,2(a5)
	.loc 1 184 88
	slli	a5,a5,7
	.loc 1 184 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 185 25
	lw	a5,-24(s0)
	andi	a4,a5,-65
	.loc 1 185 73
	lw	a5,-40(s0)
	lbu	a5,3(a5)
	.loc 1 185 87
	slli	a5,a5,6
	.loc 1 185 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 186 25
	lw	a5,-24(s0)
	andi	a4,a5,-33
	.loc 1 186 73
	lw	a5,-40(s0)
	lbu	a5,4(a5)
	.loc 1 186 87
	slli	a5,a5,5
	.loc 1 186 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 187 25
	lw	a5,-24(s0)
	andi	a4,a5,-17
	.loc 1 187 73
	lw	a5,-40(s0)
	lbu	a5,5(a5)
	.loc 1 187 87
	slli	a5,a5,4
	.loc 1 187 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 188 25
	lw	a5,-24(s0)
	andi	a4,a5,-13
	.loc 1 188 73
	lw	a5,-40(s0)
	lbu	a5,6(a5)
	.loc 1 188 85
	slli	a5,a5,2
	.loc 1 188 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 189 8
	lw	a5,-20(s0)
	.loc 1 189 41
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 191 12
	li	a5,0
	.loc 1 192 1
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
	.size	SPI_Init, .-SPI_Init
	.section	.text.SPI_DeInit,"ax",@progbits
	.align	1
	.globl	SPI_DeInit
	.type	SPI_DeInit, @function
SPI_DeInit:
.LFB9:
	.loc 1 203 1
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
	.loc 1 207 7
	lbu	a5,-17(s0)
	bne	a5,zero,.L4
	.loc 1 208 9
	li	a0,18
	call	GLB_AHB_Slave1_Reset
.L4:
	.loc 1 211 12
	li	a5,0
	.loc 1 212 1
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
	.size	SPI_DeInit, .-SPI_DeInit
	.section	.text.SPI_ClockConfig,"ax",@progbits
	.align	1
	.globl	SPI_ClockConfig
	.type	SPI_ClockConfig, @function
SPI_ClockConfig:
.LFB10:
	.loc 1 225 1
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
	.loc 1 227 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 233 42
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 233 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 234 25
	lw	a5,-24(s0)
	andi	a5,a5,-256
	.loc 1 234 75
	lw	a4,-40(s0)
	lbu	a4,0(a4)
	.loc 1 234 85
	addi	a4,a4,-1
	.loc 1 234 12
	or	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 235 25
	lw	a4,-24(s0)
	li	a5,-65536
	addi	a5,a5,255
	and	a4,a4,a5
	.loc 1 235 75
	lw	a5,-40(s0)
	lbu	a5,1(a5)
	.loc 1 235 84
	addi	a5,a5,-1
	.loc 1 235 87
	slli	a5,a5,8
	.loc 1 235 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 236 25
	lw	a4,-24(s0)
	li	a5,-16711680
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 236 76
	lw	a5,-40(s0)
	lbu	a5,2(a5)
	.loc 1 236 91
	addi	a5,a5,-1
	.loc 1 236 94
	slli	a5,a5,16
	.loc 1 236 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 237 25
	lw	a4,-24(s0)
	li	a5,16777216
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 237 76
	lw	a5,-40(s0)
	lbu	a5,3(a5)
	.loc 1 237 91
	addi	a5,a5,-1
	.loc 1 237 94
	slli	a5,a5,24
	.loc 1 237 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 238 33
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 238 8
	mv	a4,a5
	.loc 1 238 42
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 241 42
	lw	a5,-20(s0)
	addi	a5,a5,20
	.loc 1 241 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 242 55
	lw	a5,-24(s0)
	andi	a5,a5,-256
	.loc 1 242 105
	lw	a4,-40(s0)
	lbu	a4,4(a4)
	.loc 1 242 118
	addi	a4,a4,-1
	.loc 1 242 121
	mv	a3,a4
	.loc 1 242 33
	lw	a4,-20(s0)
	addi	a4,a4,20
	.loc 1 242 83
	or	a5,a5,a3
	.loc 1 242 42
	sw	a5,0(a4)
	.loc 1 244 12
	li	a5,0
	.loc 1 245 1
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
	.size	SPI_ClockConfig, .-SPI_ClockConfig
	.section	.text.SPI_FifoConfig,"ax",@progbits
	.align	1
	.globl	SPI_FifoConfig
	.type	SPI_FifoConfig, @function
SPI_FifoConfig:
.LFB11:
	.loc 1 257 1
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
	.loc 1 259 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 265 42
	lw	a5,-20(s0)
	addi	a5,a5,132
	.loc 1 265 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 266 25
	lw	a4,-24(s0)
	li	a5,-196608
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 266 75
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 266 92
	addi	a5,a5,-1
	.loc 1 266 95
	slli	a5,a5,16
	.loc 1 266 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 267 25
	lw	a4,-24(s0)
	li	a5,-50331648
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 267 75
	lw	a5,-40(s0)
	lbu	a5,1(a5)
	.loc 1 267 92
	addi	a5,a5,-1
	.loc 1 267 95
	slli	a5,a5,24
	.loc 1 267 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 268 33
	lw	a5,-20(s0)
	addi	a5,a5,132
	.loc 1 268 8
	mv	a4,a5
	.loc 1 268 42
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 271 42
	lw	a5,-20(s0)
	addi	a5,a5,128
	.loc 1 271 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 272 25
	lw	a5,-24(s0)
	andi	a5,a5,-2
	.loc 1 272 74
	lw	a4,-40(s0)
	lbu	a4,2(a4)
	.loc 1 272 12
	or	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 273 25
	lw	a5,-24(s0)
	andi	a4,a5,-3
	.loc 1 273 74
	lw	a5,-40(s0)
	lbu	a5,3(a5)
	.loc 1 273 92
	slli	a5,a5,1
	.loc 1 273 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 274 33
	lw	a5,-20(s0)
	addi	a5,a5,128
	.loc 1 274 8
	mv	a4,a5
	.loc 1 274 42
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 276 12
	li	a5,0
	.loc 1 277 1
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
	.size	SPI_FifoConfig, .-SPI_FifoConfig
	.section	.text.SPI_Enable,"ax",@progbits
	.align	1
	.globl	SPI_Enable
	.type	SPI_Enable, @function
SPI_Enable:
.LFB12:
	.loc 1 289 1
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
	.loc 1 291 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-24(s0)
	.loc 1 296 17
	lw	a5,-24(s0)
	.loc 1 296 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 297 7
	lbu	a5,-34(s0)
	beq	a5,zero,.L11
	.loc 1 299 16
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
	.loc 1 300 16
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	j	.L12
.L11:
	.loc 1 303 16
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 1 304 16
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
.L12:
	.loc 1 306 8
	lw	a5,-24(s0)
	.loc 1 306 41
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 308 12
	li	a5,0
	.loc 1 309 1
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
	.size	SPI_Enable, .-SPI_Enable
	.section	.text.SPI_Disable,"ax",@progbits
	.align	1
	.globl	SPI_Disable
	.type	SPI_Disable, @function
SPI_Disable:
.LFB13:
	.loc 1 321 1
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
	.loc 1 323 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 329 17
	lw	a5,-20(s0)
	.loc 1 329 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 330 12
	lw	a5,-24(s0)
	andi	a5,a5,-2
	sw	a5,-24(s0)
	.loc 1 331 12
	lw	a5,-24(s0)
	andi	a5,a5,-3
	sw	a5,-24(s0)
	.loc 1 332 8
	lw	a5,-20(s0)
	.loc 1 332 41
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 334 12
	li	a5,0
	.loc 1 335 1
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
	.size	SPI_Disable, .-SPI_Disable
	.section	.text.SPI_SetTimeOutValue,"ax",@progbits
	.align	1
	.globl	SPI_SetTimeOutValue
	.type	SPI_SetTimeOutValue, @function
SPI_SetTimeOutValue:
.LFB14:
	.loc 1 347 1
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
	.loc 1 349 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 354 42
	lw	a5,-20(s0)
	addi	a5,a5,28
	.loc 1 354 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 355 55
	lw	a4,-24(s0)
	li	a5,-4096
	and	a5,a4,a5
	.loc 1 355 103
	lhu	a4,-36(s0)
	addi	a4,a4,-1
	.loc 1 355 106
	mv	a3,a4
	.loc 1 355 33
	lw	a4,-20(s0)
	addi	a4,a4,28
	.loc 1 355 84
	or	a5,a5,a3
	.loc 1 355 42
	sw	a5,0(a4)
	.loc 1 357 12
	li	a5,0
	.loc 1 358 1
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
	.size	SPI_SetTimeOutValue, .-SPI_SetTimeOutValue
	.section	.text.SPI_SetDeglitchCount,"ax",@progbits
	.align	1
	.globl	SPI_SetDeglitchCount
	.type	SPI_SetDeglitchCount, @function
SPI_SetDeglitchCount:
.LFB15:
	.loc 1 370 1
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
	.loc 1 372 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 378 17
	lw	a5,-20(s0)
	.loc 1 378 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 379 25
	lw	a4,-24(s0)
	li	a5,-61440
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 379 71
	lbu	a5,-34(s0)
	addi	a5,a5,-1
	.loc 1 379 74
	slli	a5,a5,12
	.loc 1 379 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 380 8
	lw	a5,-20(s0)
	.loc 1 380 41
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 382 12
	li	a5,0
	.loc 1 383 1
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
	.size	SPI_SetDeglitchCount, .-SPI_SetDeglitchCount
	.section	.text.SPI_RxIgnoreEnable,"ax",@progbits
	.align	1
	.globl	SPI_RxIgnoreEnable
	.type	SPI_RxIgnoreEnable, @function
SPI_RxIgnoreEnable:
.LFB16:
	.loc 1 396 1
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
	.loc 1 398 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 404 17
	lw	a5,-20(s0)
	.loc 1 404 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 405 8
	lw	a5,-20(s0)
	.loc 1 405 54
	lw	a4,-24(s0)
	ori	a4,a4,256
	.loc 1 405 41
	sw	a4,0(a5)
	.loc 1 408 24
	lbu	a5,-34(s0)
	slli	a4,a5,16
	.loc 1 408 32
	lbu	a5,-35(s0)
	or	a5,a4,a5
	.loc 1 408 12
	sw	a5,-24(s0)
	.loc 1 409 33
	lw	a5,-20(s0)
	addi	a5,a5,24
	.loc 1 409 8
	mv	a4,a5
	.loc 1 409 42
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 411 12
	li	a5,0
	.loc 1 412 1
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
	.size	SPI_RxIgnoreEnable, .-SPI_RxIgnoreEnable
	.section	.text.SPI_RxIgnoreDisable,"ax",@progbits
	.align	1
	.globl	SPI_RxIgnoreDisable
	.type	SPI_RxIgnoreDisable, @function
SPI_RxIgnoreDisable:
.LFB17:
	.loc 1 423 1
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
	.loc 1 425 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 431 17
	lw	a5,-20(s0)
	.loc 1 431 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 432 8
	lw	a5,-20(s0)
	.loc 1 432 54
	lw	a4,-24(s0)
	andi	a4,a4,-257
	.loc 1 432 41
	sw	a4,0(a5)
	.loc 1 434 12
	li	a5,0
	.loc 1 435 1
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
	.size	SPI_RxIgnoreDisable, .-SPI_RxIgnoreDisable
	.section	.text.SPI_ClrTxFifo,"ax",@progbits
	.align	1
	.globl	SPI_ClrTxFifo
	.type	SPI_ClrTxFifo, @function
SPI_ClrTxFifo:
.LFB18:
	.loc 1 446 1
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
	.loc 1 448 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 454 42
	lw	a5,-20(s0)
	addi	a5,a5,128
	.loc 1 454 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 455 33
	lw	a5,-20(s0)
	addi	a5,a5,128
	.loc 1 455 8
	mv	a4,a5
	.loc 1 455 55
	lw	a5,-24(s0)
	ori	a5,a5,4
	.loc 1 455 42
	sw	a5,0(a4)
	.loc 1 457 12
	li	a5,0
	.loc 1 458 1
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
	.size	SPI_ClrTxFifo, .-SPI_ClrTxFifo
	.section	.text.SPI_ClrRxFifo,"ax",@progbits
	.align	1
	.globl	SPI_ClrRxFifo
	.type	SPI_ClrRxFifo, @function
SPI_ClrRxFifo:
.LFB19:
	.loc 1 469 1
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
	.loc 1 471 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 477 42
	lw	a5,-20(s0)
	addi	a5,a5,128
	.loc 1 477 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 478 33
	lw	a5,-20(s0)
	addi	a5,a5,128
	.loc 1 478 8
	mv	a4,a5
	.loc 1 478 55
	lw	a5,-24(s0)
	ori	a5,a5,8
	.loc 1 478 42
	sw	a5,0(a4)
	.loc 1 480 12
	li	a5,0
	.loc 1 481 1
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
	.size	SPI_ClrRxFifo, .-SPI_ClrRxFifo
	.section	.text.SPI_ClrIntStatus,"ax",@progbits
	.align	1
	.globl	SPI_ClrIntStatus
	.type	SPI_ClrIntStatus, @function
SPI_ClrIntStatus:
.LFB20:
	.loc 1 493 1
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
	.loc 1 495 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-24(s0)
	.loc 1 501 42
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 501 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 502 7
	lbu	a4,-34(s0)
	li	a5,6
	bne	a4,a5,.L29
	.loc 1 503 16
	lw	a4,-20(s0)
	li	a5,2031616
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L30
.L29:
	.loc 1 505 30
	lbu	a5,-34(s0)
	addi	a5,a5,16
	.loc 1 505 20
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 505 16
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
.L30:
	.loc 1 507 33
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 507 8
	mv	a4,a5
	.loc 1 507 41
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 509 12
	li	a5,0
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
.LFE20:
	.size	SPI_ClrIntStatus, .-SPI_ClrIntStatus
	.section	.text.SPI_IntMask,"ax",@progbits
	.align	1
	.globl	SPI_IntMask
	.type	SPI_IntMask, @function
SPI_IntMask:
.LFB21:
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
	mv	a3,a1
	mv	a4,a2
	sb	a5,-33(s0)
	mv	a5,a3
	sb	a5,-34(s0)
	mv	a5,a4
	sb	a5,-35(s0)
	.loc 1 525 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-24(s0)
	.loc 1 532 42
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 532 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 535 7
	lbu	a4,-34(s0)
	li	a5,6
	bne	a4,a5,.L33
	.loc 1 536 11
	lbu	a4,-35(s0)
	li	a5,1
	bne	a4,a5,.L34
	.loc 1 537 20
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-256
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L35
.L34:
	.loc 1 539 20
	lw	a4,-20(s0)
	li	a5,-16384
	addi	a5,a5,255
	and	a5,a4,a5
	sw	a5,-20(s0)
	j	.L35
.L33:
	.loc 1 542 11
	lbu	a4,-35(s0)
	li	a5,1
	bne	a4,a5,.L36
	.loc 1 543 34
	lbu	a5,-34(s0)
	addi	a5,a5,8
	.loc 1 543 24
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 543 20
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	j	.L35
.L36:
	.loc 1 545 36
	lbu	a5,-34(s0)
	addi	a5,a5,8
	.loc 1 545 26
	li	a4,1
	sll	a5,a4,a5
	.loc 1 545 23
	not	a5,a5
	mv	a4,a5
	.loc 1 545 20
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
.L35:
	.loc 1 550 33
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 550 8
	mv	a4,a5
	.loc 1 550 41
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 552 12
	li	a5,0
	.loc 1 553 1
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
	.size	SPI_IntMask, .-SPI_IntMask
	.section	.text.SPI_Int_Callback_Install,"ax",@progbits
	.align	1
	.globl	SPI_Int_Callback_Install
	.type	SPI_Int_Callback_Install, @function
SPI_Int_Callback_Install:
.LFB22:
	.loc 1 566 1
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
	.loc 1 571 25
	lbu	a4,-17(s0)
	lbu	a2,-18(s0)
	.loc 1 571 35
	lui	a5,%hi(spiIntCbfArra)
	addi	a3,a5,%lo(spiIntCbfArra)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a5,a2
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 573 12
	li	a5,0
	.loc 1 574 1
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
	.size	SPI_Int_Callback_Install, .-SPI_Int_Callback_Install
	.section	.text.SPI_SendData,"ax",@progbits
	.align	1
	.globl	SPI_SendData
	.type	SPI_SendData, @function
SPI_SendData:
.LFB23:
	.loc 1 586 1
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
	.loc 1 587 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 593 33
	lw	a5,-20(s0)
	addi	a5,a5,136
	.loc 1 593 8
	mv	a4,a5
	.loc 1 593 42
	lw	a5,-40(s0)
	sw	a5,0(a4)
	.loc 1 595 12
	li	a5,0
	.loc 1 596 1
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
	.size	SPI_SendData, .-SPI_SendData
	.section	.text.SPI_Send_8bits,"ax",@progbits
	.align	1
	.globl	SPI_Send_8bits
	.type	SPI_Send_8bits, @function
SPI_Send_8bits:
.LFB24:
	.loc 1 610 1
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
	mv	a4,a3
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 612 14
	sw	zero,-20(s0)
	.loc 1 613 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-28(s0)
	.loc 1 614 14
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 621 17
	lw	a5,-28(s0)
	.loc 1 621 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 622 8
	lw	a5,-28(s0)
	.loc 1 622 82
	lw	a4,-32(s0)
	andi	a4,a4,-13
	.loc 1 622 41
	sw	a4,0(a5)
	.loc 1 625 17
	lw	a5,-28(s0)
	.loc 1 625 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 626 8
	lw	a5,-28(s0)
	.loc 1 626 54
	lw	a4,-32(s0)
	andi	a4,a4,-257
	.loc 1 626 41
	sw	a4,0(a5)
	.loc 1 629 42
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 629 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 630 12
	lw	a5,-32(s0)
	ori	a5,a5,4
	sw	a5,-32(s0)
	.loc 1 631 12
	lw	a5,-32(s0)
	ori	a5,a5,8
	sw	a5,-32(s0)
	.loc 1 632 33
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 632 8
	mv	a4,a5
	.loc 1 632 42
	lw	a5,-32(s0)
	sw	a5,0(a4)
	.loc 1 635 14
	sw	zero,-20(s0)
	.loc 1 635 5
	j	.L43
.L48:
	.loc 1 636 62
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 636 37
	lw	a5,-28(s0)
	addi	a5,a5,136
	.loc 1 636 46
	sw	a4,0(a5)
	.loc 1 638 20
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 639 14
	j	.L44
.L47:
	.loc 1 640 15
	lbu	a5,-34(s0)
	beq	a5,zero,.L44
	.loc 1 641 27
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 642 19
	lw	a5,-24(s0)
	bne	a5,zero,.L44
	.loc 1 643 28
	li	a5,2
	j	.L46
.L44:
	.loc 1 639 15
	lbu	a5,-33(s0)
	mv	a0,a5
	call	SPI_GetRxFifoCount
	mv	a5,a0
	.loc 1 639 41 discriminator 1
	beq	a5,zero,.L47
	.loc 1 647 46
	lw	a5,-28(s0)
	addi	a5,a5,140
	.loc 1 647 16
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 635 35 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L43:
	.loc 1 635 22 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L48
	.loc 1 650 12
	li	a5,0
.L46:
	.loc 1 651 1
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
	.size	SPI_Send_8bits, .-SPI_Send_8bits
	.section	.text.SPI_Send_16bits,"ax",@progbits
	.align	1
	.globl	SPI_Send_16bits
	.type	SPI_Send_16bits, @function
SPI_Send_16bits:
.LFB25:
	.loc 1 665 1
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
	mv	a4,a3
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 667 14
	sw	zero,-20(s0)
	.loc 1 668 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-28(s0)
	.loc 1 669 14
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 676 17
	lw	a5,-28(s0)
	.loc 1 676 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 677 54
	lw	a5,-32(s0)
	andi	a4,a5,-13
	.loc 1 677 8
	lw	a5,-28(s0)
	.loc 1 677 82
	ori	a4,a4,4
	.loc 1 677 41
	sw	a4,0(a5)
	.loc 1 680 17
	lw	a5,-28(s0)
	.loc 1 680 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 681 8
	lw	a5,-28(s0)
	.loc 1 681 54
	lw	a4,-32(s0)
	andi	a4,a4,-257
	.loc 1 681 41
	sw	a4,0(a5)
	.loc 1 684 42
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 684 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 685 12
	lw	a5,-32(s0)
	ori	a5,a5,4
	sw	a5,-32(s0)
	.loc 1 686 12
	lw	a5,-32(s0)
	ori	a5,a5,8
	sw	a5,-32(s0)
	.loc 1 687 33
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 687 8
	mv	a4,a5
	.loc 1 687 42
	lw	a5,-32(s0)
	sw	a5,0(a4)
	.loc 1 690 14
	sw	zero,-20(s0)
	.loc 1 690 5
	j	.L50
.L55:
	.loc 1 691 62
	lw	a5,-20(s0)
	slli	a5,a5,1
	lw	a4,-40(s0)
	add	a5,a4,a5
	lhu	a4,0(a5)
	.loc 1 691 37
	lw	a5,-28(s0)
	addi	a5,a5,136
	.loc 1 691 46
	sw	a4,0(a5)
	.loc 1 693 20
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 694 14
	j	.L51
.L54:
	.loc 1 695 15
	lbu	a5,-34(s0)
	beq	a5,zero,.L51
	.loc 1 696 27
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 697 19
	lw	a5,-24(s0)
	bne	a5,zero,.L51
	.loc 1 698 28
	li	a5,2
	j	.L53
.L51:
	.loc 1 694 15
	lbu	a5,-33(s0)
	mv	a0,a5
	call	SPI_GetRxFifoCount
	mv	a5,a0
	.loc 1 694 41 discriminator 1
	beq	a5,zero,.L54
	.loc 1 702 46
	lw	a5,-28(s0)
	addi	a5,a5,140
	.loc 1 702 16
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 690 35 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L50:
	.loc 1 690 22 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L55
	.loc 1 705 12
	li	a5,0
.L53:
	.loc 1 706 1
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
	.size	SPI_Send_16bits, .-SPI_Send_16bits
	.section	.text.SPI_Send_24bits,"ax",@progbits
	.align	1
	.globl	SPI_Send_24bits
	.type	SPI_Send_24bits, @function
SPI_Send_24bits:
.LFB26:
	.loc 1 720 1
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
	mv	a4,a3
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 722 14
	sw	zero,-20(s0)
	.loc 1 723 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-28(s0)
	.loc 1 724 14
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 731 17
	lw	a5,-28(s0)
	.loc 1 731 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 732 54
	lw	a5,-32(s0)
	andi	a4,a5,-13
	.loc 1 732 8
	lw	a5,-28(s0)
	.loc 1 732 82
	ori	a4,a4,8
	.loc 1 732 41
	sw	a4,0(a5)
	.loc 1 735 17
	lw	a5,-28(s0)
	.loc 1 735 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 736 8
	lw	a5,-28(s0)
	.loc 1 736 54
	lw	a4,-32(s0)
	andi	a4,a4,-257
	.loc 1 736 41
	sw	a4,0(a5)
	.loc 1 739 42
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 739 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 740 12
	lw	a5,-32(s0)
	ori	a5,a5,4
	sw	a5,-32(s0)
	.loc 1 741 12
	lw	a5,-32(s0)
	ori	a5,a5,8
	sw	a5,-32(s0)
	.loc 1 742 33
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 742 8
	mv	a4,a5
	.loc 1 742 42
	lw	a5,-32(s0)
	sw	a5,0(a4)
	.loc 1 745 14
	sw	zero,-20(s0)
	.loc 1 745 5
	j	.L57
.L62:
	.loc 1 746 52
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 746 37
	lw	a4,-28(s0)
	addi	a4,a4,136
	.loc 1 746 52
	lw	a5,0(a5)
	.loc 1 746 46
	sw	a5,0(a4)
	.loc 1 748 20
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 749 14
	j	.L58
.L61:
	.loc 1 750 15
	lbu	a5,-34(s0)
	beq	a5,zero,.L58
	.loc 1 751 27
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 752 19
	lw	a5,-24(s0)
	bne	a5,zero,.L58
	.loc 1 753 28
	li	a5,2
	j	.L60
.L58:
	.loc 1 749 15
	lbu	a5,-33(s0)
	mv	a0,a5
	call	SPI_GetRxFifoCount
	mv	a5,a0
	.loc 1 749 41 discriminator 1
	beq	a5,zero,.L61
	.loc 1 757 46
	lw	a5,-28(s0)
	addi	a5,a5,140
	.loc 1 757 16
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 745 35 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L57:
	.loc 1 745 22 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L62
	.loc 1 760 12
	li	a5,0
.L60:
	.loc 1 761 1
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
	.size	SPI_Send_24bits, .-SPI_Send_24bits
	.section	.text.SPI_Send_32bits,"ax",@progbits
	.align	1
	.globl	SPI_Send_32bits
	.type	SPI_Send_32bits, @function
SPI_Send_32bits:
.LFB27:
	.loc 1 775 1
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
	mv	a4,a3
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 777 14
	sw	zero,-20(s0)
	.loc 1 778 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-28(s0)
	.loc 1 779 14
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 786 17
	lw	a5,-28(s0)
	.loc 1 786 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 787 8
	lw	a5,-28(s0)
	.loc 1 787 82
	lw	a4,-32(s0)
	ori	a4,a4,12
	.loc 1 787 41
	sw	a4,0(a5)
	.loc 1 790 17
	lw	a5,-28(s0)
	.loc 1 790 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 791 8
	lw	a5,-28(s0)
	.loc 1 791 54
	lw	a4,-32(s0)
	andi	a4,a4,-257
	.loc 1 791 41
	sw	a4,0(a5)
	.loc 1 794 42
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 794 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 795 12
	lw	a5,-32(s0)
	ori	a5,a5,4
	sw	a5,-32(s0)
	.loc 1 796 12
	lw	a5,-32(s0)
	ori	a5,a5,8
	sw	a5,-32(s0)
	.loc 1 797 33
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 797 8
	mv	a4,a5
	.loc 1 797 42
	lw	a5,-32(s0)
	sw	a5,0(a4)
	.loc 1 800 14
	sw	zero,-20(s0)
	.loc 1 800 5
	j	.L64
.L69:
	.loc 1 801 52
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 801 37
	lw	a4,-28(s0)
	addi	a4,a4,136
	.loc 1 801 52
	lw	a5,0(a5)
	.loc 1 801 46
	sw	a5,0(a4)
	.loc 1 803 20
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 804 14
	j	.L65
.L68:
	.loc 1 805 15
	lbu	a5,-34(s0)
	beq	a5,zero,.L65
	.loc 1 806 27
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 807 19
	lw	a5,-24(s0)
	bne	a5,zero,.L65
	.loc 1 808 28
	li	a5,2
	j	.L67
.L65:
	.loc 1 804 15
	lbu	a5,-33(s0)
	mv	a0,a5
	call	SPI_GetRxFifoCount
	mv	a5,a0
	.loc 1 804 41 discriminator 1
	beq	a5,zero,.L68
	.loc 1 812 46
	lw	a5,-28(s0)
	addi	a5,a5,140
	.loc 1 812 16
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 800 35 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L64:
	.loc 1 800 22 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L69
	.loc 1 815 12
	li	a5,0
.L67:
	.loc 1 816 1
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
.LFE27:
	.size	SPI_Send_32bits, .-SPI_Send_32bits
	.section	.text.SPI_Recv_8bits,"ax",@progbits
	.align	1
	.globl	SPI_Recv_8bits
	.type	SPI_Recv_8bits, @function
SPI_Recv_8bits:
.LFB28:
	.loc 1 830 1
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
	mv	a4,a3
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 832 14
	sw	zero,-20(s0)
	.loc 1 833 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-28(s0)
	.loc 1 834 14
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 841 17
	lw	a5,-28(s0)
	.loc 1 841 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 842 8
	lw	a5,-28(s0)
	.loc 1 842 82
	lw	a4,-32(s0)
	andi	a4,a4,-13
	.loc 1 842 41
	sw	a4,0(a5)
	.loc 1 845 17
	lw	a5,-28(s0)
	.loc 1 845 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 846 8
	lw	a5,-28(s0)
	.loc 1 846 54
	lw	a4,-32(s0)
	andi	a4,a4,-257
	.loc 1 846 41
	sw	a4,0(a5)
	.loc 1 849 42
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 849 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 850 12
	lw	a5,-32(s0)
	ori	a5,a5,4
	sw	a5,-32(s0)
	.loc 1 851 12
	lw	a5,-32(s0)
	ori	a5,a5,8
	sw	a5,-32(s0)
	.loc 1 852 33
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 852 8
	mv	a4,a5
	.loc 1 852 42
	lw	a5,-32(s0)
	sw	a5,0(a4)
	.loc 1 855 10
	j	.L71
.L76:
	.loc 1 856 37
	lw	a5,-28(s0)
	addi	a5,a5,136
	.loc 1 856 46
	sw	zero,0(a5)
	.loc 1 858 20
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 859 14
	j	.L72
.L75:
	.loc 1 860 15
	lbu	a5,-34(s0)
	beq	a5,zero,.L72
	.loc 1 861 27
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 862 19
	lw	a5,-24(s0)
	bne	a5,zero,.L72
	.loc 1 863 28
	li	a5,2
	j	.L74
.L72:
	.loc 1 859 15
	lbu	a5,-33(s0)
	mv	a0,a5
	call	SPI_GetRxFifoCount
	mv	a5,a0
	.loc 1 859 41 discriminator 1
	beq	a5,zero,.L75
	.loc 1 867 63
	lw	a5,-28(s0)
	addi	a5,a5,140
	.loc 1 867 36
	lw	a3,0(a5)
	.loc 1 867 19
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 867 13
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 867 25
	andi	a4,a3,0xff
	.loc 1 867 23
	sb	a4,0(a5)
.L71:
	.loc 1 855 16
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L76
	.loc 1 870 12
	li	a5,0
.L74:
	.loc 1 871 1
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
	.size	SPI_Recv_8bits, .-SPI_Recv_8bits
	.section	.text.SPI_Recv_16bits,"ax",@progbits
	.align	1
	.globl	SPI_Recv_16bits
	.type	SPI_Recv_16bits, @function
SPI_Recv_16bits:
.LFB29:
	.loc 1 885 1
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
	mv	a4,a3
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 887 14
	sw	zero,-20(s0)
	.loc 1 888 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-28(s0)
	.loc 1 889 14
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 896 17
	lw	a5,-28(s0)
	.loc 1 896 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 897 54
	lw	a5,-32(s0)
	andi	a4,a5,-13
	.loc 1 897 8
	lw	a5,-28(s0)
	.loc 1 897 82
	ori	a4,a4,4
	.loc 1 897 41
	sw	a4,0(a5)
	.loc 1 900 17
	lw	a5,-28(s0)
	.loc 1 900 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 901 8
	lw	a5,-28(s0)
	.loc 1 901 54
	lw	a4,-32(s0)
	andi	a4,a4,-257
	.loc 1 901 41
	sw	a4,0(a5)
	.loc 1 904 42
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 904 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 905 12
	lw	a5,-32(s0)
	ori	a5,a5,4
	sw	a5,-32(s0)
	.loc 1 906 12
	lw	a5,-32(s0)
	ori	a5,a5,8
	sw	a5,-32(s0)
	.loc 1 907 33
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 907 8
	mv	a4,a5
	.loc 1 907 42
	lw	a5,-32(s0)
	sw	a5,0(a4)
	.loc 1 910 10
	j	.L78
.L83:
	.loc 1 911 37
	lw	a5,-28(s0)
	addi	a5,a5,136
	.loc 1 911 46
	sw	zero,0(a5)
	.loc 1 913 20
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 914 14
	j	.L79
.L82:
	.loc 1 915 15
	lbu	a5,-34(s0)
	beq	a5,zero,.L79
	.loc 1 916 27
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 917 19
	lw	a5,-24(s0)
	bne	a5,zero,.L79
	.loc 1 918 28
	li	a5,2
	j	.L81
.L79:
	.loc 1 914 15
	lbu	a5,-33(s0)
	mv	a0,a5
	call	SPI_GetRxFifoCount
	mv	a5,a0
	.loc 1 914 41 discriminator 1
	beq	a5,zero,.L82
	.loc 1 922 64
	lw	a5,-28(s0)
	addi	a5,a5,140
	.loc 1 922 37
	lw	a3,0(a5)
	.loc 1 922 19
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 922 13
	slli	a5,a5,1
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 922 25
	slli	a4,a3,16
	srli	a4,a4,16
	.loc 1 922 23
	sh	a4,0(a5)
.L78:
	.loc 1 910 16
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L83
	.loc 1 925 12
	li	a5,0
.L81:
	.loc 1 926 1
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
	.size	SPI_Recv_16bits, .-SPI_Recv_16bits
	.section	.text.SPI_Recv_24bits,"ax",@progbits
	.align	1
	.globl	SPI_Recv_24bits
	.type	SPI_Recv_24bits, @function
SPI_Recv_24bits:
.LFB30:
	.loc 1 940 1
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
	mv	a4,a3
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 942 14
	sw	zero,-20(s0)
	.loc 1 943 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-28(s0)
	.loc 1 944 14
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 951 17
	lw	a5,-28(s0)
	.loc 1 951 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 952 54
	lw	a5,-32(s0)
	andi	a4,a5,-13
	.loc 1 952 8
	lw	a5,-28(s0)
	.loc 1 952 82
	ori	a4,a4,8
	.loc 1 952 41
	sw	a4,0(a5)
	.loc 1 955 17
	lw	a5,-28(s0)
	.loc 1 955 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 956 8
	lw	a5,-28(s0)
	.loc 1 956 54
	lw	a4,-32(s0)
	andi	a4,a4,-257
	.loc 1 956 41
	sw	a4,0(a5)
	.loc 1 959 42
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 959 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 960 12
	lw	a5,-32(s0)
	ori	a5,a5,4
	sw	a5,-32(s0)
	.loc 1 961 12
	lw	a5,-32(s0)
	ori	a5,a5,8
	sw	a5,-32(s0)
	.loc 1 962 33
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 962 8
	mv	a4,a5
	.loc 1 962 42
	lw	a5,-32(s0)
	sw	a5,0(a4)
	.loc 1 965 10
	j	.L85
.L90:
	.loc 1 966 37
	lw	a5,-28(s0)
	addi	a5,a5,136
	.loc 1 966 46
	sw	zero,0(a5)
	.loc 1 968 20
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 969 14
	j	.L86
.L89:
	.loc 1 970 15
	lbu	a5,-34(s0)
	beq	a5,zero,.L86
	.loc 1 971 27
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 972 19
	lw	a5,-24(s0)
	bne	a5,zero,.L86
	.loc 1 973 28
	li	a5,2
	j	.L88
.L86:
	.loc 1 969 15
	lbu	a5,-33(s0)
	mv	a0,a5
	call	SPI_GetRxFifoCount
	mv	a5,a0
	.loc 1 969 41 discriminator 1
	beq	a5,zero,.L89
	.loc 1 977 53
	lw	a5,-28(s0)
	addi	a5,a5,140
	.loc 1 977 63
	lw	a3,0(a5)
	.loc 1 977 19
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 977 13
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 977 63
	li	a4,16777216
	addi	a4,a4,-1
	and	a4,a3,a4
	.loc 1 977 23
	sw	a4,0(a5)
.L85:
	.loc 1 965 16
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L90
	.loc 1 980 12
	li	a5,0
.L88:
	.loc 1 981 1
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
	.size	SPI_Recv_24bits, .-SPI_Recv_24bits
	.section	.text.SPI_Recv_32bits,"ax",@progbits
	.align	1
	.globl	SPI_Recv_32bits
	.type	SPI_Recv_32bits, @function
SPI_Recv_32bits:
.LFB31:
	.loc 1 995 1
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
	mv	a4,a3
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 997 14
	sw	zero,-20(s0)
	.loc 1 998 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-28(s0)
	.loc 1 999 14
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 1006 17
	lw	a5,-28(s0)
	.loc 1 1006 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1007 8
	lw	a5,-28(s0)
	.loc 1 1007 82
	lw	a4,-32(s0)
	ori	a4,a4,12
	.loc 1 1007 41
	sw	a4,0(a5)
	.loc 1 1010 17
	lw	a5,-28(s0)
	.loc 1 1010 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1011 8
	lw	a5,-28(s0)
	.loc 1 1011 54
	lw	a4,-32(s0)
	andi	a4,a4,-257
	.loc 1 1011 41
	sw	a4,0(a5)
	.loc 1 1014 42
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 1014 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1015 12
	lw	a5,-32(s0)
	ori	a5,a5,4
	sw	a5,-32(s0)
	.loc 1 1016 12
	lw	a5,-32(s0)
	ori	a5,a5,8
	sw	a5,-32(s0)
	.loc 1 1017 33
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 1017 8
	mv	a4,a5
	.loc 1 1017 42
	lw	a5,-32(s0)
	sw	a5,0(a4)
	.loc 1 1020 10
	j	.L92
.L97:
	.loc 1 1021 37
	lw	a5,-28(s0)
	addi	a5,a5,136
	.loc 1 1021 46
	sw	zero,0(a5)
	.loc 1 1023 20
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 1024 14
	j	.L93
.L96:
	.loc 1 1025 15
	lbu	a5,-34(s0)
	beq	a5,zero,.L93
	.loc 1 1026 27
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 1027 19
	lw	a5,-24(s0)
	bne	a5,zero,.L93
	.loc 1 1028 28
	li	a5,2
	j	.L95
.L93:
	.loc 1 1024 15
	lbu	a5,-33(s0)
	mv	a0,a5
	call	SPI_GetRxFifoCount
	mv	a5,a0
	.loc 1 1024 41 discriminator 1
	beq	a5,zero,.L96
	.loc 1 1032 53
	lw	a5,-28(s0)
	addi	a5,a5,140
	.loc 1 1032 28
	mv	a3,a5
	.loc 1 1032 19
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 1032 13
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 1032 26
	lw	a4,0(a3)
	.loc 1 1032 23
	sw	a4,0(a5)
.L92:
	.loc 1 1020 16
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L97
	.loc 1 1035 12
	li	a5,0
.L95:
	.loc 1 1036 1
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
	.size	SPI_Recv_32bits, .-SPI_Recv_32bits
	.section	.text.SPI_SendRecv_8bits,"ax",@progbits
	.align	1
	.globl	SPI_SendRecv_8bits
	.type	SPI_SendRecv_8bits, @function
SPI_SendRecv_8bits:
.LFB32:
	.loc 1 1051 1
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
	sw	a3,-48(s0)
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 1053 14
	sw	zero,-20(s0)
	.loc 1 1054 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-28(s0)
	.loc 1 1055 14
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 1062 17
	lw	a5,-28(s0)
	.loc 1 1062 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1063 8
	lw	a5,-28(s0)
	.loc 1 1063 82
	lw	a4,-32(s0)
	andi	a4,a4,-13
	.loc 1 1063 41
	sw	a4,0(a5)
	.loc 1 1066 17
	lw	a5,-28(s0)
	.loc 1 1066 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1067 8
	lw	a5,-28(s0)
	.loc 1 1067 54
	lw	a4,-32(s0)
	andi	a4,a4,-257
	.loc 1 1067 41
	sw	a4,0(a5)
	.loc 1 1070 42
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 1070 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1071 12
	lw	a5,-32(s0)
	ori	a5,a5,4
	sw	a5,-32(s0)
	.loc 1 1072 12
	lw	a5,-32(s0)
	ori	a5,a5,8
	sw	a5,-32(s0)
	.loc 1 1073 33
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 1073 8
	mv	a4,a5
	.loc 1 1073 42
	lw	a5,-32(s0)
	sw	a5,0(a4)
	.loc 1 1076 14
	sw	zero,-20(s0)
	.loc 1 1076 5
	j	.L99
.L104:
	.loc 1 1077 66
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 1077 37
	lw	a5,-28(s0)
	addi	a5,a5,136
	.loc 1 1077 46
	sw	a4,0(a5)
	.loc 1 1079 20
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 1080 14
	j	.L100
.L103:
	.loc 1 1081 15
	lbu	a5,-34(s0)
	beq	a5,zero,.L100
	.loc 1 1082 27
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 1083 19
	lw	a5,-24(s0)
	bne	a5,zero,.L100
	.loc 1 1084 28
	li	a5,2
	j	.L102
.L100:
	.loc 1 1080 15
	lbu	a5,-33(s0)
	mv	a0,a5
	call	SPI_GetRxFifoCount
	mv	a5,a0
	.loc 1 1080 41 discriminator 1
	beq	a5,zero,.L103
	.loc 1 1088 65
	lw	a5,-28(s0)
	addi	a5,a5,140
	.loc 1 1088 38
	lw	a3,0(a5)
	.loc 1 1088 17
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 1088 27
	andi	a4,a3,0xff
	.loc 1 1088 25
	sb	a4,0(a5)
	.loc 1 1076 35 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L99:
	.loc 1 1076 22 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	bltu	a4,a5,.L104
	.loc 1 1091 12
	li	a5,0
.L102:
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
.LFE32:
	.size	SPI_SendRecv_8bits, .-SPI_SendRecv_8bits
	.section	.text.SPI_SendRecv_16bits,"ax",@progbits
	.align	1
	.globl	SPI_SendRecv_16bits
	.type	SPI_SendRecv_16bits, @function
SPI_SendRecv_16bits:
.LFB33:
	.loc 1 1107 1
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
	sw	a3,-48(s0)
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 1109 14
	sw	zero,-20(s0)
	.loc 1 1110 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-28(s0)
	.loc 1 1111 14
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 1118 17
	lw	a5,-28(s0)
	.loc 1 1118 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1119 54
	lw	a5,-32(s0)
	andi	a4,a5,-13
	.loc 1 1119 8
	lw	a5,-28(s0)
	.loc 1 1119 82
	ori	a4,a4,4
	.loc 1 1119 41
	sw	a4,0(a5)
	.loc 1 1122 17
	lw	a5,-28(s0)
	.loc 1 1122 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1123 8
	lw	a5,-28(s0)
	.loc 1 1123 54
	lw	a4,-32(s0)
	andi	a4,a4,-257
	.loc 1 1123 41
	sw	a4,0(a5)
	.loc 1 1126 42
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 1126 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1127 12
	lw	a5,-32(s0)
	ori	a5,a5,4
	sw	a5,-32(s0)
	.loc 1 1128 12
	lw	a5,-32(s0)
	ori	a5,a5,8
	sw	a5,-32(s0)
	.loc 1 1129 33
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 1129 8
	mv	a4,a5
	.loc 1 1129 42
	lw	a5,-32(s0)
	sw	a5,0(a4)
	.loc 1 1132 14
	sw	zero,-20(s0)
	.loc 1 1132 5
	j	.L106
.L111:
	.loc 1 1133 66
	lw	a5,-20(s0)
	slli	a5,a5,1
	lw	a4,-40(s0)
	add	a5,a4,a5
	lhu	a4,0(a5)
	.loc 1 1133 37
	lw	a5,-28(s0)
	addi	a5,a5,136
	.loc 1 1133 46
	sw	a4,0(a5)
	.loc 1 1135 20
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 1136 14
	j	.L107
.L110:
	.loc 1 1137 15
	lbu	a5,-34(s0)
	beq	a5,zero,.L107
	.loc 1 1138 27
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 1139 19
	lw	a5,-24(s0)
	bne	a5,zero,.L107
	.loc 1 1140 28
	li	a5,2
	j	.L109
.L107:
	.loc 1 1136 15
	lbu	a5,-33(s0)
	mv	a0,a5
	call	SPI_GetRxFifoCount
	mv	a5,a0
	.loc 1 1136 41 discriminator 1
	beq	a5,zero,.L110
	.loc 1 1144 66
	lw	a5,-28(s0)
	addi	a5,a5,140
	.loc 1 1144 39
	lw	a3,0(a5)
	.loc 1 1144 17
	lw	a5,-20(s0)
	slli	a5,a5,1
	lw	a4,-44(s0)
	add	a5,a4,a5
	.loc 1 1144 27
	slli	a4,a3,16
	srli	a4,a4,16
	.loc 1 1144 25
	sh	a4,0(a5)
	.loc 1 1132 35 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L106:
	.loc 1 1132 22 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	bltu	a4,a5,.L111
	.loc 1 1147 12
	li	a5,0
.L109:
	.loc 1 1148 1
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
	.size	SPI_SendRecv_16bits, .-SPI_SendRecv_16bits
	.section	.text.SPI_SendRecv_24bits,"ax",@progbits
	.align	1
	.globl	SPI_SendRecv_24bits
	.type	SPI_SendRecv_24bits, @function
SPI_SendRecv_24bits:
.LFB34:
	.loc 1 1163 1
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
	sw	a3,-48(s0)
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 1165 14
	sw	zero,-20(s0)
	.loc 1 1166 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-28(s0)
	.loc 1 1167 14
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 1174 17
	lw	a5,-28(s0)
	.loc 1 1174 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1175 54
	lw	a5,-32(s0)
	andi	a4,a5,-13
	.loc 1 1175 8
	lw	a5,-28(s0)
	.loc 1 1175 82
	ori	a4,a4,8
	.loc 1 1175 41
	sw	a4,0(a5)
	.loc 1 1178 17
	lw	a5,-28(s0)
	.loc 1 1178 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1179 8
	lw	a5,-28(s0)
	.loc 1 1179 54
	lw	a4,-32(s0)
	andi	a4,a4,-257
	.loc 1 1179 41
	sw	a4,0(a5)
	.loc 1 1182 42
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 1182 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1183 12
	lw	a5,-32(s0)
	ori	a5,a5,4
	sw	a5,-32(s0)
	.loc 1 1184 12
	lw	a5,-32(s0)
	ori	a5,a5,8
	sw	a5,-32(s0)
	.loc 1 1185 33
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 1185 8
	mv	a4,a5
	.loc 1 1185 42
	lw	a5,-32(s0)
	sw	a5,0(a4)
	.loc 1 1188 14
	sw	zero,-20(s0)
	.loc 1 1188 5
	j	.L113
.L118:
	.loc 1 1189 56
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 1189 37
	lw	a4,-28(s0)
	addi	a4,a4,136
	.loc 1 1189 56
	lw	a5,0(a5)
	.loc 1 1189 46
	sw	a5,0(a4)
	.loc 1 1191 20
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 1192 14
	j	.L114
.L117:
	.loc 1 1193 15
	lbu	a5,-34(s0)
	beq	a5,zero,.L114
	.loc 1 1194 27
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 1195 19
	lw	a5,-24(s0)
	bne	a5,zero,.L114
	.loc 1 1196 28
	li	a5,2
	j	.L116
.L114:
	.loc 1 1192 15
	lbu	a5,-33(s0)
	mv	a0,a5
	call	SPI_GetRxFifoCount
	mv	a5,a0
	.loc 1 1192 41 discriminator 1
	beq	a5,zero,.L117
	.loc 1 1200 55
	lw	a5,-28(s0)
	addi	a5,a5,140
	.loc 1 1200 65
	lw	a3,0(a5)
	.loc 1 1200 17
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	.loc 1 1200 65
	li	a4,16777216
	addi	a4,a4,-1
	and	a4,a3,a4
	.loc 1 1200 25
	sw	a4,0(a5)
	.loc 1 1188 35 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L113:
	.loc 1 1188 22 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	bltu	a4,a5,.L118
	.loc 1 1203 12
	li	a5,0
.L116:
	.loc 1 1204 1
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
	.size	SPI_SendRecv_24bits, .-SPI_SendRecv_24bits
	.section	.text.SPI_SendRecv_32bits,"ax",@progbits
	.align	1
	.globl	SPI_SendRecv_32bits
	.type	SPI_SendRecv_32bits, @function
SPI_SendRecv_32bits:
.LFB35:
	.loc 1 1219 1
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
	sw	a3,-48(s0)
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 1221 14
	sw	zero,-20(s0)
	.loc 1 1222 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-28(s0)
	.loc 1 1223 14
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 1230 17
	lw	a5,-28(s0)
	.loc 1 1230 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1231 8
	lw	a5,-28(s0)
	.loc 1 1231 82
	lw	a4,-32(s0)
	ori	a4,a4,12
	.loc 1 1231 41
	sw	a4,0(a5)
	.loc 1 1234 17
	lw	a5,-28(s0)
	.loc 1 1234 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1235 8
	lw	a5,-28(s0)
	.loc 1 1235 54
	lw	a4,-32(s0)
	andi	a4,a4,-257
	.loc 1 1235 41
	sw	a4,0(a5)
	.loc 1 1238 42
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 1238 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1239 12
	lw	a5,-32(s0)
	ori	a5,a5,4
	sw	a5,-32(s0)
	.loc 1 1240 12
	lw	a5,-32(s0)
	ori	a5,a5,8
	sw	a5,-32(s0)
	.loc 1 1241 33
	lw	a5,-28(s0)
	addi	a5,a5,128
	.loc 1 1241 8
	mv	a4,a5
	.loc 1 1241 42
	lw	a5,-32(s0)
	sw	a5,0(a4)
	.loc 1 1244 14
	sw	zero,-20(s0)
	.loc 1 1244 5
	j	.L120
.L125:
	.loc 1 1245 56
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 1245 37
	lw	a4,-28(s0)
	addi	a4,a4,136
	.loc 1 1245 56
	lw	a5,0(a5)
	.loc 1 1245 46
	sw	a5,0(a4)
	.loc 1 1247 20
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 1248 14
	j	.L121
.L124:
	.loc 1 1249 15
	lbu	a5,-34(s0)
	beq	a5,zero,.L121
	.loc 1 1250 27
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 1251 19
	lw	a5,-24(s0)
	bne	a5,zero,.L121
	.loc 1 1252 28
	li	a5,2
	j	.L123
.L121:
	.loc 1 1248 15
	lbu	a5,-33(s0)
	mv	a0,a5
	call	SPI_GetRxFifoCount
	mv	a5,a0
	.loc 1 1248 41 discriminator 1
	beq	a5,zero,.L124
	.loc 1 1256 55
	lw	a5,-28(s0)
	addi	a5,a5,140
	.loc 1 1256 30
	mv	a3,a5
	.loc 1 1256 17
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	.loc 1 1256 28
	lw	a4,0(a3)
	.loc 1 1256 25
	sw	a4,0(a5)
	.loc 1 1244 35 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L120:
	.loc 1 1244 22 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	bltu	a4,a5,.L125
	.loc 1 1259 12
	li	a5,0
.L123:
	.loc 1 1260 1
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
	.size	SPI_SendRecv_32bits, .-SPI_SendRecv_32bits
	.section	.text.SPI_ReceiveData,"ax",@progbits
	.align	1
	.globl	SPI_ReceiveData
	.type	SPI_ReceiveData, @function
SPI_ReceiveData:
.LFB36:
	.loc 1 1271 1
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
	.loc 1 1272 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 1277 40
	lw	a5,-20(s0)
	addi	a5,a5,140
	.loc 1 1277 13
	lw	a5,0(a5)
	.loc 1 1278 1
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
	.size	SPI_ReceiveData, .-SPI_ReceiveData
	.section	.text.SPI_GetTxFifoCount,"ax",@progbits
	.align	1
	.globl	SPI_GetTxFifoCount
	.type	SPI_GetTxFifoCount, @function
SPI_GetTxFifoCount:
.LFB37:
	.loc 1 1289 1
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
	.loc 1 1290 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 1296 44
	lw	a5,-20(s0)
	addi	a5,a5,132
	.loc 1 1296 17
	lw	a5,0(a5)
	.loc 1 1296 82
	andi	a5,a5,0xff
	andi	a5,a5,7
	andi	a5,a5,0xff
	.loc 1 1297 1
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
	.size	SPI_GetTxFifoCount, .-SPI_GetTxFifoCount
	.section	.text.SPI_GetRxFifoCount,"ax",@progbits
	.align	1
	.globl	SPI_GetRxFifoCount
	.type	SPI_GetRxFifoCount, @function
SPI_GetRxFifoCount:
.LFB38:
	.loc 1 1308 1
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
	.loc 1 1309 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 1315 44
	lw	a5,-20(s0)
	addi	a5,a5,132
	.loc 1 1315 17
	lw	a5,0(a5)
	.loc 1 1315 82
	srli	a5,a5,8
	andi	a5,a5,0xff
	andi	a5,a5,7
	andi	a5,a5,0xff
	.loc 1 1316 1
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
	.size	SPI_GetRxFifoCount, .-SPI_GetRxFifoCount
	.section	.text.SPI_GetIntStatus,"ax",@progbits
	.align	1
	.globl	SPI_GetIntStatus
	.type	SPI_GetIntStatus, @function
SPI_GetIntStatus:
.LFB39:
	.loc 1 1328 1
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
	.loc 1 1330 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 1337 42
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 1337 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1338 7
	lbu	a4,-34(s0)
	li	a5,6
	bne	a4,a5,.L133
	.loc 1 1339 19
	lw	a5,-24(s0)
	andi	a5,a5,63
	.loc 1 1339 11
	beq	a5,zero,.L134
	.loc 1 1341 20
	li	a5,1
	j	.L135
.L134:
	.loc 1 1343 20
	li	a5,0
	j	.L135
.L133:
	.loc 1 1346 23
	lbu	a5,-34(s0)
	li	a4,1
	sll	a4,a4,a5
	.loc 1 1346 19
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 1 1346 11
	beq	a5,zero,.L136
	.loc 1 1348 20
	li	a5,1
	j	.L135
.L136:
	.loc 1 1350 20
	li	a5,0
.L135:
	.loc 1 1353 1
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
.LFE39:
	.size	SPI_GetIntStatus, .-SPI_GetIntStatus
	.section	.text.SPI_GetBusyStatus,"ax",@progbits
	.align	1
	.globl	SPI_GetBusyStatus
	.type	SPI_GetBusyStatus, @function
SPI_GetBusyStatus:
.LFB40:
	.loc 1 1364 1
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
	.loc 1 1366 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 1372 42
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 1 1372 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1373 19
	lw	a5,-24(s0)
	andi	a5,a5,1
	.loc 1 1373 7
	beq	a5,zero,.L138
	.loc 1 1374 16
	li	a5,1
	j	.L139
.L138:
	.loc 1 1376 16
	li	a5,0
.L139:
	.loc 1 1378 1
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
.LFE40:
	.size	SPI_GetBusyStatus, .-SPI_GetBusyStatus
	.section	.text.SPI_GetFifoStatus,"ax",@progbits
	.align	1
	.globl	SPI_GetFifoStatus
	.type	SPI_GetFifoStatus, @function
SPI_GetFifoStatus:
.LFB41:
	.loc 1 1390 1
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
	.loc 1 1392 14
	li	a5,1073782784
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 1399 42
	lw	a5,-20(s0)
	addi	a5,a5,128
	.loc 1 1399 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1400 29
	lbu	a5,-34(s0)
	addi	a5,a5,4
	.loc 1 1400 19
	li	a4,1
	sll	a4,a4,a5
	.loc 1 1400 15
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 1 1400 7
	beq	a5,zero,.L141
	.loc 1 1401 16
	li	a5,1
	j	.L142
.L141:
	.loc 1 1403 16
	li	a5,0
.L142:
	.loc 1 1405 1
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
.LFE41:
	.size	SPI_GetFifoStatus, .-SPI_GetFifoStatus
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_spi.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1290
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x12
	.4byte	.LASF171
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x2
	.byte	0xe7
	.byte	0x1
	.4byte	0xcf
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0xf
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x11
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x12
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x13
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x15
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x16
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x17
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x104
	.byte	0x2
	.4byte	0x32
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.4byte	.LASF27
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.4byte	.LASF28
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.4byte	.LASF29
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.4byte	.LASF30
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x110
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.4byte	.LASF34
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x128
	.uleb128 0xf
	.4byte	0x117
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF36
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.4byte	.LASF37
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF38
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.4byte	.LASF39
	.uleb128 0x15
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF40
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0x172
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x2
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x1
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0
	.uleb128 0x16
	.string	"SET"
	.byte	0x1
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x4
	.byte	0x36
	.byte	0x2
	.4byte	0x1c8
	.uleb128 0x4
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
	.4byte	0x217
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x5
	.byte	0x3c
	.byte	0x2
	.4byte	0x1fe
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x41
	.byte	0xe
	.4byte	0x23c
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x5
	.byte	0x44
	.byte	0x2
	.4byte	0x223
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x49
	.byte	0xe
	.4byte	0x261
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x5
	.byte	0x4c
	.byte	0x2
	.4byte	0x248
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x51
	.byte	0xe
	.4byte	0x286
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x5
	.byte	0x54
	.byte	0x2
	.4byte	0x26d
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x59
	.byte	0xe
	.4byte	0x2ab
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x5
	.byte	0x5c
	.byte	0x2
	.4byte	0x292
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x61
	.byte	0xe
	.4byte	0x2dc
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0x5
	.byte	0x66
	.byte	0x2
	.4byte	0x2b7
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x6b
	.byte	0xe
	.4byte	0x301
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x5
	.byte	0x6e
	.byte	0x2
	.4byte	0x2e8
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x73
	.byte	0xe
	.4byte	0x326
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x5
	.byte	0x76
	.byte	0x2
	.4byte	0x30d
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x7b
	.byte	0xe
	.4byte	0x357
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF84
	.byte	0x5
	.byte	0x80
	.byte	0x2
	.4byte	0x332
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x85
	.byte	0xe
	.4byte	0x39a
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF92
	.byte	0x5
	.byte	0x8d
	.byte	0x2
	.4byte	0x363
	.uleb128 0xd
	.byte	0x7
	.byte	0x92
	.4byte	0x402
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0x93
	.byte	0x11
	.4byte	0x197
	.byte	0
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0x94
	.byte	0x11
	.4byte	0x197
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF95
	.byte	0x95
	.byte	0x1b
	.4byte	0x23c
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF96
	.byte	0x96
	.byte	0x1a
	.4byte	0x261
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0x97
	.byte	0x20
	.4byte	0x286
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0x98
	.byte	0x1b
	.4byte	0x2ab
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0x99
	.byte	0x18
	.4byte	0x2dc
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0x5
	.byte	0x9a
	.byte	0x2
	.4byte	0x3a6
	.uleb128 0xd
	.byte	0x5
	.byte	0x9f
	.4byte	0x452
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0xa0
	.byte	0xd
	.4byte	0xf8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF102
	.byte	0xa1
	.byte	0xd
	.4byte	0xf8
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF103
	.byte	0xa2
	.byte	0xd
	.4byte	0xf8
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF104
	.byte	0xa3
	.byte	0xd
	.4byte	0xf8
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0xa4
	.byte	0xd
	.4byte	0xf8
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0x5
	.byte	0xa5
	.byte	0x2
	.4byte	0x40e
	.uleb128 0xd
	.byte	0x4
	.byte	0xaa
	.4byte	0x496
	.uleb128 0x6
	.4byte	.LASF107
	.byte	0xab
	.byte	0xd
	.4byte	0xf8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF108
	.byte	0xac
	.byte	0xd
	.4byte	0xf8
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF109
	.byte	0xad
	.byte	0x11
	.4byte	0x197
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF110
	.byte	0xae
	.byte	0x11
	.4byte	0x197
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF111
	.byte	0x5
	.byte	0xaf
	.byte	0x2
	.4byte	0x45e
	.uleb128 0x10
	.4byte	0x123
	.4byte	0x4b2
	.uleb128 0xe
	.4byte	0x13d
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x4a2
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0x41
	.byte	0x17
	.4byte	0x4b2
	.uleb128 0x5
	.byte	0x3
	.4byte	spiAddr
	.uleb128 0x10
	.4byte	0x1f9
	.4byte	0x4de
	.uleb128 0xe
	.4byte	0x13d
	.byte	0
	.uleb128 0xe
	.4byte	0x13d
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x42
	.byte	0x1b
	.4byte	0x4c8
	.uleb128 0x5
	.byte	0x3
	.4byte	spiIntCbfArra
	.uleb128 0x17
	.4byte	.LASF172
	.byte	0x6
	.2byte	0x240
	.byte	0xd
	.4byte	0x172
	.4byte	0x506
	.uleb128 0x18
	.4byte	0xcf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF118
	.2byte	0x56d
	.byte	0xd
	.4byte	0x1bc
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55b
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x56d
	.byte	0x2b
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF115
	.2byte	0x56d
	.byte	0x45
	.4byte	0x357
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x56f
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x570
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF119
	.2byte	0x553
	.byte	0xd
	.4byte	0x1bc
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a1
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x553
	.byte	0x2b
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x555
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x556
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF120
	.2byte	0x52f
	.byte	0xd
	.4byte	0x1bc
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f6
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x52f
	.byte	0x2a
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF121
	.2byte	0x52f
	.byte	0x3d
	.4byte	0x39a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x531
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x532
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF122
	.2byte	0x51b
	.byte	0x9
	.4byte	0xf8
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x62e
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x51b
	.byte	0x28
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x51d
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF123
	.2byte	0x508
	.byte	0x9
	.4byte	0xf8
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x666
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x508
	.byte	0x28
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x50a
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF124
	.2byte	0x4f6
	.byte	0xa
	.4byte	0x117
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69e
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x4f6
	.byte	0x26
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x4f8
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF125
	.2byte	0x4c2
	.4byte	0x172
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73b
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x4c2
	.byte	0x2d
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF126
	.2byte	0x4c2
	.byte	0x3d
	.4byte	0x73b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF127
	.2byte	0x4c2
	.byte	0x50
	.4byte	0x73b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF128
	.2byte	0x4c2
	.byte	0x62
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF129
	.2byte	0x4c2
	.byte	0x7a
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x4c4
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF130
	.2byte	0x4c5
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x4c6
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0x4c7
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	0x117
	.uleb128 0x8
	.4byte	.LASF132
	.2byte	0x48a
	.4byte	0x172
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7dd
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x48a
	.byte	0x2d
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF126
	.2byte	0x48a
	.byte	0x3d
	.4byte	0x73b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF127
	.2byte	0x48a
	.byte	0x50
	.4byte	0x73b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF128
	.2byte	0x48a
	.byte	0x62
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF129
	.2byte	0x48a
	.byte	0x7a
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x48c
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF130
	.2byte	0x48d
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x48e
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0x48f
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF133
	.2byte	0x452
	.4byte	0x172
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x87a
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x452
	.byte	0x2d
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF126
	.2byte	0x452
	.byte	0x3d
	.4byte	0x87a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF127
	.2byte	0x452
	.byte	0x50
	.4byte	0x87a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF128
	.2byte	0x452
	.byte	0x62
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF129
	.2byte	0x452
	.byte	0x7a
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x454
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF130
	.2byte	0x455
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x456
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0x457
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	0x104
	.uleb128 0x8
	.4byte	.LASF134
	.2byte	0x41a
	.4byte	0x172
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x91c
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x41a
	.byte	0x2c
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF126
	.2byte	0x41a
	.byte	0x3b
	.4byte	0x91c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF127
	.2byte	0x41a
	.byte	0x4d
	.4byte	0x91c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF128
	.2byte	0x41a
	.byte	0x5f
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF129
	.2byte	0x41a
	.byte	0x77
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x41c
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF130
	.2byte	0x41d
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x41e
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0x41f
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	0xf8
	.uleb128 0x8
	.4byte	.LASF135
	.2byte	0x3e2
	.4byte	0x172
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9af
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x3e2
	.byte	0x29
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF136
	.2byte	0x3e2
	.byte	0x39
	.4byte	0x73b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF128
	.2byte	0x3e2
	.byte	0x47
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF129
	.2byte	0x3e2
	.byte	0x5f
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x3e4
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF137
	.2byte	0x3e5
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x3e6
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0x3e7
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF138
	.2byte	0x3ab
	.4byte	0x172
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa3d
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x3ab
	.byte	0x29
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF136
	.2byte	0x3ab
	.byte	0x39
	.4byte	0x73b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF128
	.2byte	0x3ab
	.byte	0x47
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF129
	.2byte	0x3ab
	.byte	0x5f
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x3ad
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF137
	.2byte	0x3ae
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x3af
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0x3b0
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF139
	.2byte	0x374
	.4byte	0x172
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xacb
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x374
	.byte	0x29
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF136
	.2byte	0x374
	.byte	0x39
	.4byte	0x87a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF128
	.2byte	0x374
	.byte	0x47
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF129
	.2byte	0x374
	.byte	0x5f
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x376
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF137
	.2byte	0x377
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x378
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0x379
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF140
	.2byte	0x33d
	.4byte	0x172
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb59
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x33d
	.byte	0x28
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF136
	.2byte	0x33d
	.byte	0x37
	.4byte	0x91c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF128
	.2byte	0x33d
	.byte	0x45
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF129
	.2byte	0x33d
	.byte	0x5d
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x33f
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF137
	.2byte	0x340
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x341
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0x342
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF141
	.2byte	0x306
	.4byte	0x172
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe7
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x306
	.byte	0x29
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF136
	.2byte	0x306
	.byte	0x39
	.4byte	0x73b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF128
	.2byte	0x306
	.byte	0x47
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF129
	.2byte	0x306
	.byte	0x5f
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x308
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF130
	.2byte	0x309
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x30a
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0x30b
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF142
	.2byte	0x2cf
	.4byte	0x172
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc75
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x2cf
	.byte	0x29
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF136
	.2byte	0x2cf
	.byte	0x39
	.4byte	0x73b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF128
	.2byte	0x2cf
	.byte	0x47
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF129
	.2byte	0x2cf
	.byte	0x5f
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x2d1
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF130
	.2byte	0x2d2
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x2d3
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0x2d4
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF143
	.2byte	0x298
	.4byte	0x172
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd03
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x298
	.byte	0x29
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF136
	.2byte	0x298
	.byte	0x39
	.4byte	0x87a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF128
	.2byte	0x298
	.byte	0x47
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF129
	.2byte	0x298
	.byte	0x5f
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x29a
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF130
	.2byte	0x29b
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x29c
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0x29d
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF144
	.2byte	0x261
	.4byte	0x172
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd91
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x261
	.byte	0x28
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF136
	.2byte	0x261
	.byte	0x37
	.4byte	0x91c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF128
	.2byte	0x261
	.byte	0x45
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF129
	.2byte	0x261
	.byte	0x5d
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x263
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF130
	.2byte	0x264
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x265
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0x266
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF145
	.2byte	0x249
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd8
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x249
	.byte	0x26
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF146
	.2byte	0x249
	.byte	0x35
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x24b
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF147
	.2byte	0x235
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe20
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x235
	.byte	0x32
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF121
	.2byte	0x235
	.byte	0x45
	.4byte	0x39a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF148
	.2byte	0x235
	.byte	0x5f
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF149
	.2byte	0x20a
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe84
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x20a
	.byte	0x25
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF121
	.2byte	0x20a
	.byte	0x38
	.4byte	0x39a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x20a
	.byte	0x4d
	.4byte	0x1e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x20c
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x20d
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF151
	.2byte	0x1ec
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed9
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x1ec
	.byte	0x2a
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF121
	.2byte	0x1ec
	.byte	0x3d
	.4byte	0x39a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x1ee
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x1ef
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF152
	.2byte	0x1d4
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf1f
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x1d4
	.byte	0x27
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x1d6
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x1d7
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF153
	.2byte	0x1bd
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf65
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x1bd
	.byte	0x27
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x1bf
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x1c0
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF154
	.2byte	0x1a6
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfab
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x1a6
	.byte	0x2d
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x1a8
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x1a9
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF155
	.2byte	0x18b
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x100f
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x18b
	.byte	0x2c
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF156
	.2byte	0x18b
	.byte	0x3a
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF157
	.2byte	0x18b
	.byte	0x4d
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x18d
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x18e
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF158
	.2byte	0x171
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1065
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x171
	.byte	0x2e
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x19
	.string	"cnt"
	.byte	0x1
	.2byte	0x171
	.byte	0x3c
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x173
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x174
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF159
	.2byte	0x15a
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ba
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x15a
	.byte	0x2d
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF160
	.2byte	0x15a
	.byte	0x3c
	.4byte	0x104
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x15c
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x15d
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF161
	.2byte	0x140
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x110f
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x140
	.byte	0x25
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x140
	.byte	0x4f
	.4byte	0x301
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x142
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x143
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF163
	.2byte	0x120
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1164
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x120
	.byte	0x24
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x120
	.byte	0x3d
	.4byte	0x301
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x122
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x123
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF164
	.2byte	0x100
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11b9
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x100
	.byte	0x28
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF165
	.2byte	0x100
	.byte	0x40
	.4byte	0x11b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x102
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x103
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	0x496
	.uleb128 0x11
	.4byte	.LASF166
	.byte	0xe0
	.4byte	0x172
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x120f
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0xe0
	.byte	0x29
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xc
	.4byte	.LASF167
	.byte	0xe0
	.byte	0x42
	.4byte	0x120f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0xe2
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0xe3
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	0x452
	.uleb128 0x1a
	.4byte	.LASF168
	.byte	0x1
	.byte	0xca
	.byte	0xd
	.4byte	0x172
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x123d
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0xca
	.byte	0x24
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x11
	.4byte	.LASF169
	.byte	0xa8
	.4byte	0x172
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x128e
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0xa8
	.byte	0x22
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xc
	.4byte	.LASF170
	.byte	0xa8
	.byte	0x36
	.4byte	0x128e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0xaa
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0xab
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	0x402
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
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x124
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF148:
	.string	"cbFun"
.LASF20:
	.string	"BL_AHB_SLAVE1_I2C"
.LASF144:
	.string	"SPI_Send_8bits"
.LASF160:
	.string	"value"
.LASF5:
	.string	"BL_AHB_SLAVE1_DBG"
.LASF149:
	.string	"SPI_IntMask"
.LASF71:
	.string	"SPI_FRAME_SIZE_24"
.LASF54:
	.string	"SPI_ID_0"
.LASF106:
	.string	"SPI_ClockCfg_Type"
.LASF169:
	.string	"SPI_Init"
.LASF126:
	.string	"sendBuff"
.LASF166:
	.string	"SPI_ClockConfig"
.LASF151:
	.string	"SPI_ClrIntStatus"
.LASF58:
	.string	"SPI_BYTE_INVERSE_BYTE3_FIRST"
.LASF16:
	.string	"BL_AHB_SLAVE1_WRAM"
.LASF45:
	.string	"DISABLE"
.LASF37:
	.string	"long long unsigned int"
.LASF92:
	.string	"SPI_INT_Type"
.LASF85:
	.string	"SPI_INT_END"
.LASF156:
	.string	"startPoint"
.LASF68:
	.string	"SPI_CLK_POLARITY_Type"
.LASF162:
	.string	"modeType"
.LASF30:
	.string	"long long int"
.LASF27:
	.string	"signed char"
.LASF59:
	.string	"SPI_BYTE_INVERSE_Type"
.LASF136:
	.string	"buff"
.LASF53:
	.string	"intCallback_Type"
.LASF19:
	.string	"BL_AHB_SLAVE1_SPI"
.LASF152:
	.string	"SPI_ClrRxFifo"
.LASF90:
	.string	"SPI_INT_FIFO_ERROR"
.LASF31:
	.string	"BL_AHB_Slave1_Type"
.LASF44:
	.string	"BL_Err_Type"
.LASF29:
	.string	"long int"
.LASF61:
	.string	"SPI_BIT_INVERSE_LSB_FIRST"
.LASF114:
	.string	"spiNo"
.LASF168:
	.string	"SPI_DeInit"
.LASF133:
	.string	"SPI_SendRecv_16bits"
.LASF46:
	.string	"ENABLE"
.LASF57:
	.string	"SPI_BYTE_INVERSE_BYTE0_FIRST"
.LASF164:
	.string	"SPI_FifoConfig"
.LASF33:
	.string	"uint16_t"
.LASF56:
	.string	"SPI_ID_Type"
.LASF153:
	.string	"SPI_ClrTxFifo"
.LASF158:
	.string	"SPI_SetDeglitchCount"
.LASF23:
	.string	"BL_AHB_SLAVE1_IRR"
.LASF8:
	.string	"BL_AHB_SLAVE1_TZ2"
.LASF4:
	.string	"BL_AHB_SLAVE1_GPIP"
.LASF43:
	.string	"TIMEOUT"
.LASF115:
	.string	"fifoSts"
.LASF72:
	.string	"SPI_FRAME_SIZE_32"
.LASF135:
	.string	"SPI_Recv_32bits"
.LASF105:
	.string	"intervalLen"
.LASF25:
	.string	"BL_AHB_SLAVE1_MAX"
.LASF165:
	.string	"fifoCfg"
.LASF51:
	.string	"MASK"
.LASF104:
	.string	"dataPhase1Len"
.LASF64:
	.string	"SPI_CLK_PHASE_INVERSE_1"
.LASF111:
	.string	"SPI_FifoCfg_Type"
.LASF11:
	.string	"BL_AHB_SLAVE1_L1C"
.LASF108:
	.string	"rxFifoThreshold"
.LASF159:
	.string	"SPI_SetTimeOutValue"
.LASF10:
	.string	"BL_AHB_SLAVE1_CCI"
.LASF170:
	.string	"spiCfg"
.LASF86:
	.string	"SPI_INT_TX_FIFO_REQ"
.LASF142:
	.string	"SPI_Send_24bits"
.LASF36:
	.string	"long unsigned int"
.LASF79:
	.string	"SPI_Timeout_Type"
.LASF146:
	.string	"data"
.LASF96:
	.string	"bitSequence"
.LASF121:
	.string	"intType"
.LASF34:
	.string	"short unsigned int"
.LASF100:
	.string	"SPI_CFG_Type"
.LASF97:
	.string	"clkPhaseInv"
.LASF69:
	.string	"SPI_FRAME_SIZE_8"
.LASF24:
	.string	"BL_AHB_SLAVE1_CKS"
.LASF138:
	.string	"SPI_Recv_24bits"
.LASF66:
	.string	"SPI_CLK_POLARITY_LOW"
.LASF127:
	.string	"recvBuff"
.LASF103:
	.string	"dataPhase0Len"
.LASF110:
	.string	"rxFifoDmaEnable"
.LASF167:
	.string	"clockCfg"
.LASF87:
	.string	"SPI_INT_RX_FIFO_REQ"
.LASF155:
	.string	"SPI_RxIgnoreEnable"
.LASF13:
	.string	"BL_AHB_SLAVE1_DMA"
.LASF157:
	.string	"stopPoint"
.LASF50:
	.string	"UNMASK"
.LASF143:
	.string	"SPI_Send_16bits"
.LASF15:
	.string	"BL_AHB_SLAVE1_PDSHBN"
.LASF154:
	.string	"SPI_RxIgnoreDisable"
.LASF7:
	.string	"BL_AHB_SLAVE1_TZ1"
.LASF120:
	.string	"SPI_GetIntStatus"
.LASF112:
	.string	"spiAddr"
.LASF65:
	.string	"SPI_CLK_PHASE_INVERSE_Type"
.LASF42:
	.string	"ERROR"
.LASF141:
	.string	"SPI_Send_32bits"
.LASF47:
	.string	"BL_Fun_Type"
.LASF93:
	.string	"deglitchEnable"
.LASF139:
	.string	"SPI_Recv_16bits"
.LASF124:
	.string	"SPI_ReceiveData"
.LASF78:
	.string	"SPI_TIMEOUT_ENABLE"
.LASF73:
	.string	"SPI_FrameSize_Type"
.LASF91:
	.string	"SPI_INT_ALL"
.LASF161:
	.string	"SPI_Disable"
.LASF129:
	.string	"timeoutType"
.LASF145:
	.string	"SPI_SendData"
.LASF132:
	.string	"SPI_SendRecv_24bits"
.LASF22:
	.string	"BL_AHB_SLAVE1_TMR"
.LASF14:
	.string	"BL_AHB_SLAVE1_SDU"
.LASF55:
	.string	"SPI_ID_MAX"
.LASF84:
	.string	"SPI_FifoStatus_Type"
.LASF77:
	.string	"SPI_TIMEOUT_DISABLE"
.LASF9:
	.string	"BL_AHB_SLAVE1_EFUSE"
.LASF147:
	.string	"SPI_Int_Callback_Install"
.LASF48:
	.string	"RESET"
.LASF21:
	.string	"BL_AHB_SLAVE1_PWM"
.LASF26:
	.string	"unsigned char"
.LASF67:
	.string	"SPI_CLK_POLARITY_HIGH"
.LASF102:
	.string	"stopLen"
.LASF83:
	.string	"SPI_FIFO_RX_UNDERFLOW"
.LASF28:
	.string	"short int"
.LASF94:
	.string	"continuousEnable"
.LASF74:
	.string	"SPI_WORK_MODE_SLAVE"
.LASF119:
	.string	"SPI_GetBusyStatus"
.LASF140:
	.string	"SPI_Recv_8bits"
.LASF172:
	.string	"GLB_AHB_Slave1_Reset"
.LASF6:
	.string	"BL_AHB_SLAVE1_SEC"
.LASF60:
	.string	"SPI_BIT_INVERSE_MSB_FIRST"
.LASF52:
	.string	"BL_Mask_Type"
.LASF117:
	.string	"SPIx"
.LASF49:
	.string	"BL_Sts_Type"
.LASF75:
	.string	"SPI_WORK_MODE_MASTER"
.LASF81:
	.string	"SPI_FIFO_TX_UNDERFLOW"
.LASF116:
	.string	"tmpVal"
.LASF88:
	.string	"SPI_INT_SLAVE_TIMEOUT"
.LASF95:
	.string	"byteSequence"
.LASF35:
	.string	"uint32_t"
.LASF76:
	.string	"SPI_WORK_MODE_Type"
.LASF39:
	.string	"long double"
.LASF128:
	.string	"length"
.LASF40:
	.string	"char"
.LASF38:
	.string	"unsigned int"
.LASF123:
	.string	"SPI_GetTxFifoCount"
.LASF118:
	.string	"SPI_GetFifoStatus"
.LASF2:
	.string	"BL_AHB_SLAVE1_GLB"
.LASF131:
	.string	"timeoutCnt"
.LASF63:
	.string	"SPI_CLK_PHASE_INVERSE_0"
.LASF98:
	.string	"clkPolarity"
.LASF171:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF107:
	.string	"txFifoThreshold"
.LASF62:
	.string	"SPI_BIT_INVERSE_Type"
.LASF12:
	.string	"BL_AHB_SLAVE1_SFC"
.LASF109:
	.string	"txFifoDmaEnable"
.LASF17:
	.string	"BL_AHB_SLAVE1_UART0"
.LASF18:
	.string	"BL_AHB_SLAVE1_UART1"
.LASF134:
	.string	"SPI_SendRecv_8bits"
.LASF101:
	.string	"startLen"
.LASF122:
	.string	"SPI_GetRxFifoCount"
.LASF80:
	.string	"SPI_FIFO_TX_OVERFLOW"
.LASF163:
	.string	"SPI_Enable"
.LASF32:
	.string	"uint8_t"
.LASF150:
	.string	"intMask"
.LASF70:
	.string	"SPI_FRAME_SIZE_16"
.LASF41:
	.string	"SUCCESS"
.LASF89:
	.string	"SPI_INT_SLAVE_UNDERRUN"
.LASF3:
	.string	"BL_AHB_SLAVE1_RF"
.LASF99:
	.string	"frameSize"
.LASF125:
	.string	"SPI_SendRecv_32bits"
.LASF137:
	.string	"rxLen"
.LASF130:
	.string	"txLen"
.LASF82:
	.string	"SPI_FIFO_RX_OVERFLOW"
.LASF113:
	.string	"spiIntCbfArra"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_spi.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
