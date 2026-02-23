	.file	"bl602_i2c.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_i2c.c"
	.globl	i2cIntCbfArra
	.section	.bss.i2cIntCbfArra,"aw",@nobits
	.align	2
	.type	i2cIntCbfArra, @object
	.size	i2cIntCbfArra, 24
i2cIntCbfArra:
	.zero	24
	.section	.text.I2C_SendWord,"ax",@progbits
	.align	1
	.globl	I2C_SendWord
	.type	I2C_SendWord, @function
I2C_SendWord:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_i2c.c"
	.loc 1 164 1
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
	.loc 1 165 14
	li	a5,1073782784
	addi	a5,a5,768
	sw	a5,-20(s0)
	.loc 1 169 33
	lw	a5,-20(s0)
	addi	a5,a5,136
	.loc 1 169 8
	mv	a4,a5
	.loc 1 169 42
	lw	a5,-40(s0)
	sw	a5,0(a4)
	.loc 1 170 1
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
	.size	I2C_SendWord, .-I2C_SendWord
	.section	.text.I2C_RecieveWord,"ax",@progbits
	.align	1
	.globl	I2C_RecieveWord
	.type	I2C_RecieveWord, @function
I2C_RecieveWord:
.LFB9:
	.loc 1 181 1
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
	.loc 1 182 14
	li	a5,1073782784
	addi	a5,a5,768
	sw	a5,-20(s0)
	.loc 1 186 40
	lw	a5,-20(s0)
	addi	a5,a5,140
	.loc 1 186 13
	lw	a5,0(a5)
	.loc 1 187 1
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
	.size	I2C_RecieveWord, .-I2C_RecieveWord
	.section	.text.I2C_Enable,"ax",@progbits
	.align	1
	.globl	I2C_Enable
	.type	I2C_Enable, @function
I2C_Enable:
.LFB10:
	.loc 1 198 1
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
	.loc 1 200 14
	li	a5,1073782784
	addi	a5,a5,768
	sw	a5,-20(s0)
	.loc 1 205 42
	lw	a5,-20(s0)
	addi	a5,a5,128
	.loc 1 205 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 206 12
	lw	a5,-24(s0)
	ori	a5,a5,4
	sw	a5,-24(s0)
	.loc 1 207 12
	lw	a5,-24(s0)
	ori	a5,a5,8
	sw	a5,-24(s0)
	.loc 1 208 33
	lw	a5,-20(s0)
	addi	a5,a5,128
	.loc 1 208 8
	mv	a4,a5
	.loc 1 208 42
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 210 17
	lw	a5,-20(s0)
	.loc 1 210 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 211 12
	lw	a5,-24(s0)
	ori	a5,a5,1
	sw	a5,-24(s0)
	.loc 1 212 8
	lw	a5,-20(s0)
	.loc 1 212 41
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 213 1
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
	.size	I2C_Enable, .-I2C_Enable
	.section	.text.I2C_Disable,"ax",@progbits
	.align	1
	.globl	I2C_Disable
	.type	I2C_Disable, @function
I2C_Disable:
.LFB11:
	.loc 1 224 1
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
	.loc 1 226 14
	li	a5,1073782784
	addi	a5,a5,768
	sw	a5,-20(s0)
	.loc 1 231 17
	lw	a5,-20(s0)
	.loc 1 231 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 232 12
	lw	a5,-24(s0)
	andi	a5,a5,-2
	sw	a5,-24(s0)
	.loc 1 233 8
	lw	a5,-20(s0)
	.loc 1 233 41
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 236 42
	lw	a5,-20(s0)
	addi	a5,a5,128
	.loc 1 236 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 237 12
	lw	a5,-24(s0)
	ori	a5,a5,4
	sw	a5,-24(s0)
	.loc 1 238 12
	lw	a5,-24(s0)
	ori	a5,a5,8
	sw	a5,-24(s0)
	.loc 1 239 33
	lw	a5,-20(s0)
	addi	a5,a5,128
	.loc 1 239 8
	mv	a4,a5
	.loc 1 239 42
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 242 42
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 242 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 243 12
	lw	a4,-24(s0)
	li	a5,65536
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 244 12
	lw	a4,-24(s0)
	li	a5,524288
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 245 12
	lw	a4,-24(s0)
	li	a5,1048576
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 246 33
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 246 8
	mv	a4,a5
	.loc 1 246 41
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 247 1
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
.LFE11:
	.size	I2C_Disable, .-I2C_Disable
	.section	.text.I2C_Reset,"ax",@progbits
	.align	1
	.globl	I2C_Reset
	.type	I2C_Reset, @function
I2C_Reset:
.LFB12:
	.loc 1 258 1
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
	.loc 1 262 5
	li	a0,19
	call	GLB_AHB_Slave1_Reset
	.loc 1 263 12
	li	a5,0
	.loc 1 264 1
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
	.size	I2C_Reset, .-I2C_Reset
	.section	.text.I2C_Init,"ax",@progbits
	.align	1
	.globl	I2C_Init
	.type	I2C_Init, @function
I2C_Init:
.LFB13:
	.loc 1 277 1
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
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 279 14
	li	a5,1073782784
	addi	a5,a5,768
	sw	a5,-24(s0)
	.loc 1 285 17
	lw	a5,-24(s0)
	.loc 1 285 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 286 7
	lbu	a5,-34(s0)
	bne	a5,zero,.L9
	.loc 1 287 16
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
	j	.L10
.L9:
	.loc 1 289 16
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
.L10:
	.loc 1 291 25
	lw	a4,-20(s0)
	li	a5,-32768
	addi	a5,a5,255
	and	a4,a4,a5
	.loc 1 291 70
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 291 82
	slli	a5,a5,8
	.loc 1 291 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 292 11
	lw	a5,-40(s0)
	lbu	a5,2(a5)
	.loc 1 292 7
	beq	a5,zero,.L11
	.loc 1 293 16
	lw	a5,-20(s0)
	ori	a5,a5,16
	sw	a5,-20(s0)
	.loc 1 294 29
	lw	a5,-20(s0)
	andi	a4,a5,-97
	.loc 1 294 74
	lw	a5,-40(s0)
	lbu	a5,2(a5)
	.loc 1 294 87
	addi	a5,a5,-1
	.loc 1 294 90
	slli	a5,a5,5
	.loc 1 294 16
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L12
.L11:
	.loc 1 296 16
	lw	a5,-20(s0)
	andi	a5,a5,-17
	sw	a5,-20(s0)
.L12:
	.loc 1 298 25
	lw	a4,-20(s0)
	li	a5,-16711680
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 298 71
	lw	a5,-40(s0)
	lhu	a5,8(a5)
	.loc 1 298 81
	addi	a5,a5,-1
	.loc 1 298 84
	slli	a5,a5,16
	.loc 1 298 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 299 8
	lw	a5,-24(s0)
	.loc 1 299 41
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 302 33
	lw	a5,-24(s0)
	addi	a5,a5,8
	.loc 1 302 8
	mv	a4,a5
	.loc 1 302 46
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 1 302 41
	sw	a5,0(a4)
	.loc 1 307 1
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
	.size	I2C_Init, .-I2C_Init
	.section	.text.I2C_SetPrd,"ax",@progbits
	.align	1
	.globl	I2C_SetPrd
	.type	I2C_SetPrd, @function
I2C_SetPrd:
.LFB14:
	.loc 1 319 1
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
	.loc 1 321 14
	li	a5,1073782784
	addi	a5,a5,768
	sw	a5,-20(s0)
	.loc 1 327 42
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 327 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 328 25
	lw	a5,-24(s0)
	andi	a4,a5,-256
	.loc 1 328 73
	lbu	a5,-34(s0)
	.loc 1 328 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 329 25
	lw	a4,-24(s0)
	li	a5,-65536
	addi	a5,a5,255
	and	a4,a4,a5
	.loc 1 329 56
	lbu	a5,-34(s0)
	.loc 1 329 73
	slli	a5,a5,8
	.loc 1 329 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 330 25
	lw	a4,-24(s0)
	li	a5,-16711680
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 330 57
	lbu	a5,-34(s0)
	.loc 1 330 74
	slli	a5,a5,16
	.loc 1 330 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 331 25
	lw	a4,-24(s0)
	li	a5,16777216
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 331 57
	lbu	a5,-34(s0)
	.loc 1 331 74
	slli	a5,a5,24
	.loc 1 331 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 332 33
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 332 8
	mv	a4,a5
	.loc 1 332 42
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 333 42
	lw	a5,-20(s0)
	addi	a5,a5,20
	.loc 1 333 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 334 25
	lw	a5,-24(s0)
	andi	a4,a5,-256
	.loc 1 334 73
	lbu	a5,-34(s0)
	.loc 1 334 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 335 25
	lw	a4,-24(s0)
	li	a5,-65536
	addi	a5,a5,255
	and	a4,a4,a5
	.loc 1 335 56
	lbu	a5,-34(s0)
	.loc 1 335 73
	slli	a5,a5,8
	.loc 1 335 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 336 25
	lw	a4,-24(s0)
	li	a5,-16711680
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 336 57
	lbu	a5,-34(s0)
	.loc 1 336 74
	slli	a5,a5,16
	.loc 1 336 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 337 25
	lw	a4,-24(s0)
	li	a5,16777216
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 337 57
	lbu	a5,-34(s0)
	.loc 1 337 74
	slli	a5,a5,24
	.loc 1 337 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 338 33
	lw	a5,-20(s0)
	addi	a5,a5,20
	.loc 1 338 8
	mv	a4,a5
	.loc 1 338 42
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 339 42
	lw	a5,-20(s0)
	addi	a5,a5,24
	.loc 1 339 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 340 25
	lw	a5,-24(s0)
	andi	a4,a5,-256
	.loc 1 340 73
	lbu	a5,-34(s0)
	.loc 1 340 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 341 25
	lw	a4,-24(s0)
	li	a5,-65536
	addi	a5,a5,255
	and	a4,a4,a5
	.loc 1 341 56
	lbu	a5,-34(s0)
	.loc 1 341 73
	slli	a5,a5,8
	.loc 1 341 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 342 25
	lw	a4,-24(s0)
	li	a5,-16711680
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 342 57
	lbu	a5,-34(s0)
	.loc 1 342 74
	slli	a5,a5,16
	.loc 1 342 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 343 25
	lw	a4,-24(s0)
	li	a5,16777216
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 343 57
	lbu	a5,-34(s0)
	.loc 1 343 74
	slli	a5,a5,24
	.loc 1 343 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 344 33
	lw	a5,-20(s0)
	addi	a5,a5,24
	.loc 1 344 8
	mv	a4,a5
	.loc 1 344 42
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 345 1
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
	.size	I2C_SetPrd, .-I2C_SetPrd
	.section	.text.I2C_ClockSet,"ax",@progbits
	.align	1
	.globl	I2C_ClockSet
	.type	I2C_ClockSet, @function
I2C_ClockSet:
.LFB15:
	.loc 1 357 1
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
	.loc 1 358 13
	sb	zero,-17(s0)
	.loc 1 363 15
	call	GLB_Get_BCLK_Div
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 364 7
	lw	a4,-40(s0)
	li	a5,98304
	addi	a5,a5,1695
	bleu	a4,a5,.L15
	.loc 1 365 9
	li	a1,0
	li	a0,1
	call	GLB_Set_I2C_CLK
	.loc 1 366 29
	li	a5,1073803264
	addi	a5,a5,264
	lw	a5,0(a5)
	.loc 1 366 74
	lbu	a4,-17(s0)
	addi	a4,a4,1
	.loc 1 366 65
	divu	a4,a5,a4
	.loc 1 366 85
	lw	a5,-40(s0)
	slli	a5,a5,2
	.loc 1 366 79
	divu	a5,a4,a5
	.loc 1 366 9
	andi	a5,a5,0xff
	addi	a5,a5,-1
	andi	a4,a5,0xff
	lbu	a5,-33(s0)
	mv	a1,a4
	mv	a0,a5
	call	I2C_SetPrd
	.loc 1 377 1
	j	.L19
.L15:
	.loc 1 367 13
	lw	a4,-40(s0)
	li	a5,8192
	addi	a5,a5,-193
	bleu	a4,a5,.L17
	.loc 1 368 9
	li	a1,9
	li	a0,1
	call	GLB_Set_I2C_CLK
	.loc 1 369 30
	li	a5,1073803264
	addi	a5,a5,264
	lw	a5,0(a5)
	.loc 1 369 75
	lbu	a4,-17(s0)
	addi	a4,a4,1
	.loc 1 369 66
	divu	a4,a5,a4
	.loc 1 369 79
	li	a5,-858992640
	addi	a5,a5,-819
	mulhu	a5,a4,a5
	srli	a4,a5,3
	.loc 1 369 90
	lw	a5,-40(s0)
	slli	a5,a5,2
	.loc 1 369 84
	divu	a5,a4,a5
	.loc 1 369 9
	andi	a5,a5,0xff
	addi	a5,a5,-1
	andi	a4,a5,0xff
	lbu	a5,-33(s0)
	mv	a1,a4
	mv	a0,a5
	call	I2C_SetPrd
	.loc 1 377 1
	j	.L19
.L17:
	.loc 1 370 13
	lw	a4,-40(s0)
	li	a5,799
	bleu	a4,a5,.L18
	.loc 1 371 9
	li	a1,99
	li	a0,1
	call	GLB_Set_I2C_CLK
	.loc 1 372 30
	li	a5,1073803264
	addi	a5,a5,264
	lw	a5,0(a5)
	.loc 1 372 75
	lbu	a4,-17(s0)
	addi	a4,a4,1
	.loc 1 372 66
	divu	a4,a5,a4
	.loc 1 372 79
	li	a5,1374388224
	addi	a5,a5,1311
	mulhu	a5,a4,a5
	srli	a4,a5,5
	.loc 1 372 91
	lw	a5,-40(s0)
	slli	a5,a5,2
	.loc 1 372 85
	divu	a5,a4,a5
	.loc 1 372 9
	andi	a5,a5,0xff
	addi	a5,a5,-1
	andi	a4,a5,0xff
	lbu	a5,-33(s0)
	mv	a1,a4
	mv	a0,a5
	call	I2C_SetPrd
	.loc 1 377 1
	j	.L19
.L18:
	.loc 1 374 9
	li	a1,255
	li	a0,1
	call	GLB_Set_I2C_CLK
	.loc 1 375 30
	li	a5,1073803264
	addi	a5,a5,264
	lw	a5,0(a5)
	.loc 1 375 75
	lbu	a4,-17(s0)
	addi	a4,a4,1
	.loc 1 375 66
	divu	a5,a5,a4
	.loc 1 375 79
	srli	a4,a5,8
	.loc 1 375 91
	lw	a5,-40(s0)
	slli	a5,a5,2
	.loc 1 375 85
	divu	a5,a4,a5
	.loc 1 375 9
	andi	a5,a5,0xff
	addi	a5,a5,-1
	andi	a4,a5,0xff
	lbu	a5,-33(s0)
	mv	a1,a4
	mv	a0,a5
	call	I2C_SetPrd
.L19:
	.loc 1 377 1
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
	.size	I2C_ClockSet, .-I2C_ClockSet
	.section	.text.I2C_SetSclSync,"ax",@progbits
	.align	1
	.globl	I2C_SetSclSync
	.type	I2C_SetSclSync, @function
I2C_SetSclSync:
.LFB16:
	.loc 1 389 1
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
	.loc 1 391 14
	li	a5,1073782784
	addi	a5,a5,768
	sw	a5,-24(s0)
	.loc 1 396 17
	lw	a5,-24(s0)
	.loc 1 396 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 397 7
	lbu	a5,-34(s0)
	beq	a5,zero,.L21
	.loc 1 398 16
	lw	a5,-20(s0)
	ori	a5,a5,8
	sw	a5,-20(s0)
	j	.L22
.L21:
	.loc 1 400 16
	lw	a5,-20(s0)
	andi	a5,a5,-9
	sw	a5,-20(s0)
.L22:
	.loc 1 402 8
	lw	a5,-24(s0)
	.loc 1 402 41
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 403 1
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
	.size	I2C_SetSclSync, .-I2C_SetSclSync
	.section	.text.I2C_IsBusy,"ax",@progbits
	.align	1
	.globl	I2C_IsBusy
	.type	I2C_IsBusy, @function
I2C_IsBusy:
.LFB17:
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
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 1 416 14
	li	a5,1073782784
	addi	a5,a5,768
	sw	a5,-20(s0)
	.loc 1 421 42
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 421 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 422 52
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 423 1
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
	.size	I2C_IsBusy, .-I2C_IsBusy
	.section	.text.I2C_TransferEndStatus,"ax",@progbits
	.align	1
	.globl	I2C_TransferEndStatus
	.type	I2C_TransferEndStatus, @function
I2C_TransferEndStatus:
.LFB18:
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
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 1 436 14
	li	a5,1073782784
	addi	a5,a5,768
	sw	a5,-20(s0)
	.loc 1 441 42
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 441 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 442 52
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 443 1
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
	.size	I2C_TransferEndStatus, .-I2C_TransferEndStatus
	.section	.text.I2C_MasterSendBlocking,"ax",@progbits
	.align	1
	.globl	I2C_MasterSendBlocking
	.type	I2C_MasterSendBlocking, @function
I2C_MasterSendBlocking:
.LFB19:
	.loc 1 455 1
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
	.loc 1 457 14
	sw	zero,-24(s0)
	.loc 1 458 14
	sw	zero,-28(s0)
	.loc 1 459 14
	li	a5,1073782784
	addi	a5,a5,768
	sw	a5,-32(s0)
	.loc 1 464 5
	lbu	a5,-33(s0)
	mv	a0,a5
	call	I2C_Disable
	.loc 1 465 5
	lbu	a5,-33(s0)
	lw	a2,-40(s0)
	li	a1,0
	mv	a0,a5
	call	I2C_Init
	.loc 1 466 5
	lbu	a5,-33(s0)
	mv	a0,a5
	call	I2C_Enable
	.loc 1 469 10
	sb	zero,-17(s0)
	.loc 1 469 5
	j	.L28
.L33:
	.loc 1 470 21
	lw	a5,-40(s0)
	lw	a4,12(a5)
	.loc 1 470 27
	lbu	a5,-17(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 470 38
	lbu	a5,-17(s0)
	andi	a5,a5,3
	.loc 1 470 43
	slli	a5,a5,3
	.loc 1 470 31
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 470 14
	lw	a5,-28(s0)
	add	a5,a5,a4
	sw	a5,-28(s0)
	.loc 1 471 15
	lbu	a5,-17(s0)
	addi	a5,a5,1
	.loc 1 471 24
	andi	a5,a5,3
	.loc 1 471 11
	bne	a5,zero,.L29
	.loc 1 472 21
	li	a5,319488
	addi	a5,a5,512
	sw	a5,-24(s0)
	.loc 1 473 18
	j	.L30
.L32:
	.loc 1 474 24
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 475 19
	lw	a5,-24(s0)
	bne	a5,zero,.L30
	.loc 1 476 21
	lbu	a5,-33(s0)
	mv	a0,a5
	call	I2C_Disable
	.loc 1 477 28
	li	a5,2
	j	.L31
.L30:
	.loc 1 473 51
	lw	a5,-32(s0)
	addi	a5,a5,132
	.loc 1 473 24
	lw	a5,0(a5)
	.loc 1 473 89
	andi	a5,a5,3
	.loc 1 473 99
	beq	a5,zero,.L32
	.loc 1 480 41
	lw	a5,-32(s0)
	addi	a5,a5,136
	.loc 1 480 16
	mv	a4,a5
	.loc 1 480 50
	lw	a5,-28(s0)
	sw	a5,0(a4)
	.loc 1 481 18
	sw	zero,-28(s0)
.L29:
	.loc 1 469 32 discriminator 2
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L28:
	.loc 1 469 15 discriminator 1
	lbu	a5,-17(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 469 19 discriminator 1
	lw	a5,-40(s0)
	lhu	a5,8(a5)
	.loc 1 469 15 discriminator 1
	bltu	a4,a5,.L33
	.loc 1 484 12
	lw	a5,-40(s0)
	lhu	a5,8(a5)
	.loc 1 484 26
	andi	a5,a5,3
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 484 7
	beq	a5,zero,.L34
	.loc 1 485 17
	li	a5,319488
	addi	a5,a5,512
	sw	a5,-24(s0)
	.loc 1 486 14
	j	.L35
.L36:
	.loc 1 487 20
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 488 15
	lw	a5,-24(s0)
	bne	a5,zero,.L35
	.loc 1 489 17
	lbu	a5,-33(s0)
	mv	a0,a5
	call	I2C_Disable
	.loc 1 490 24
	li	a5,2
	j	.L31
.L35:
	.loc 1 486 47
	lw	a5,-32(s0)
	addi	a5,a5,132
	.loc 1 486 20
	lw	a5,0(a5)
	.loc 1 486 85
	andi	a5,a5,3
	.loc 1 486 95
	beq	a5,zero,.L36
	.loc 1 493 37
	lw	a5,-32(s0)
	addi	a5,a5,136
	.loc 1 493 12
	mv	a4,a5
	.loc 1 493 46
	lw	a5,-28(s0)
	sw	a5,0(a4)
.L34:
	.loc 1 496 13
	li	a5,319488
	addi	a5,a5,512
	sw	a5,-24(s0)
	.loc 1 497 10
	j	.L37
.L38:
	.loc 1 498 16
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 499 11
	lw	a5,-24(s0)
	bne	a5,zero,.L37
	.loc 1 500 13
	lbu	a5,-33(s0)
	mv	a0,a5
	call	I2C_Disable
	.loc 1 501 20
	li	a5,2
	j	.L31
.L37:
	.loc 1 497 11
	lbu	a5,-33(s0)
	mv	a0,a5
	call	I2C_IsBusy
	mv	a5,a0
	.loc 1 497 29 discriminator 1
	bne	a5,zero,.L38
	.loc 1 497 33 discriminator 2
	lbu	a5,-33(s0)
	mv	a0,a5
	call	I2C_TransferEndStatus
	mv	a5,a0
	.loc 1 497 29 discriminator 3
	beq	a5,zero,.L38
	.loc 1 505 5
	lbu	a5,-33(s0)
	mv	a0,a5
	call	I2C_Disable
	.loc 1 506 12
	li	a5,0
.L31:
	.loc 1 507 1
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
	.size	I2C_MasterSendBlocking, .-I2C_MasterSendBlocking
	.section	.text.I2C_MasterReceiveBlocking,"ax",@progbits
	.align	1
	.globl	I2C_MasterReceiveBlocking
	.type	I2C_MasterReceiveBlocking, @function
I2C_MasterReceiveBlocking:
.LFB20:
	.loc 1 519 1
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
	.loc 1 520 13
	sb	zero,-17(s0)
	.loc 1 521 14
	sw	zero,-24(s0)
	.loc 1 522 14
	sw	zero,-28(s0)
	.loc 1 523 14
	li	a5,1073782784
	addi	a5,a5,768
	sw	a5,-32(s0)
	.loc 1 528 5
	lbu	a5,-33(s0)
	mv	a0,a5
	call	I2C_Disable
	.loc 1 529 5
	lbu	a5,-33(s0)
	lw	a2,-40(s0)
	li	a1,1
	mv	a0,a5
	call	I2C_Init
	.loc 1 530 5
	lbu	a5,-33(s0)
	mv	a0,a5
	call	I2C_Enable
	.loc 1 533 10
	j	.L40
.L44:
	.loc 1 534 17
	li	a5,319488
	addi	a5,a5,512
	sw	a5,-24(s0)
	.loc 1 535 14
	j	.L41
.L43:
	.loc 1 536 20
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 537 15
	lw	a5,-24(s0)
	bne	a5,zero,.L41
	.loc 1 538 17
	lbu	a5,-33(s0)
	mv	a0,a5
	call	I2C_Disable
	.loc 1 539 24
	li	a5,2
	j	.L42
.L41:
	.loc 1 535 47
	lw	a5,-32(s0)
	addi	a5,a5,132
	.loc 1 535 20
	lw	a5,0(a5)
	.loc 1 535 95
	andi	a5,a5,768
	beq	a5,zero,.L43
	.loc 1 542 44
	lw	a5,-32(s0)
	addi	a5,a5,140
	.loc 1 542 14
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 543 15
	lw	a5,-40(s0)
	lw	a4,12(a5)
	.loc 1 543 22
	lbu	a5,-17(s0)
	add	a5,a4,a5
	.loc 1 543 31
	lw	a4,-28(s0)
	andi	a4,a4,0xff
	.loc 1 543 29
	sb	a4,0(a5)
	.loc 1 543 95
	lw	a5,-28(s0)
	srli	a3,a5,8
	.loc 1 543 57
	lw	a5,-40(s0)
	lw	a4,12(a5)
	.loc 1 543 64
	lbu	a5,-17(s0)
	addi	a5,a5,1
	add	a5,a4,a5
	.loc 1 543 76
	andi	a4,a3,0xff
	.loc 1 543 74
	sb	a4,0(a5)
	.loc 1 543 145
	lw	a5,-28(s0)
	srli	a3,a5,16
	.loc 1 543 107
	lw	a5,-40(s0)
	lw	a4,12(a5)
	.loc 1 543 114
	lbu	a5,-17(s0)
	addi	a5,a5,2
	add	a5,a4,a5
	.loc 1 543 126
	andi	a4,a3,0xff
	.loc 1 543 124
	sb	a4,0(a5)
	.loc 1 543 196
	lw	a5,-28(s0)
	srli	a3,a5,24
	.loc 1 543 158
	lw	a5,-40(s0)
	lw	a4,12(a5)
	.loc 1 543 165
	lbu	a5,-17(s0)
	addi	a5,a5,3
	add	a5,a4,a5
	.loc 1 543 177
	andi	a4,a3,0xff
	.loc 1 543 175
	sb	a4,0(a5)
	.loc 1 544 11
	lbu	a5,-17(s0)
	addi	a5,a5,4
	sb	a5,-17(s0)
.L40:
	.loc 1 533 14
	lw	a5,-40(s0)
	lhu	a5,8(a5)
	mv	a4,a5
	.loc 1 533 25
	lbu	a5,-17(s0)
	sub	a4,a4,a5
	.loc 1 533 29
	li	a5,3
	bgt	a4,a5,.L44
	.loc 1 546 10
	lbu	a5,-17(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 546 15
	lw	a5,-40(s0)
	lhu	a5,8(a5)
	.loc 1 546 7
	bgeu	a4,a5,.L45
	.loc 1 547 17
	li	a5,319488
	addi	a5,a5,512
	sw	a5,-24(s0)
	.loc 1 548 14
	j	.L46
.L47:
	.loc 1 549 20
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 550 15
	lw	a5,-24(s0)
	bne	a5,zero,.L46
	.loc 1 551 17
	lbu	a5,-33(s0)
	mv	a0,a5
	call	I2C_Disable
	.loc 1 552 24
	li	a5,2
	j	.L42
.L46:
	.loc 1 548 47
	lw	a5,-32(s0)
	addi	a5,a5,132
	.loc 1 548 20
	lw	a5,0(a5)
	.loc 1 548 95
	andi	a5,a5,768
	beq	a5,zero,.L47
	.loc 1 555 44
	lw	a5,-32(s0)
	addi	a5,a5,140
	.loc 1 555 14
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 556 14
	j	.L48
.L49:
	.loc 1 557 16
	lw	a5,-40(s0)
	lw	a4,12(a5)
	.loc 1 557 22
	lbu	a5,-17(s0)
	add	a5,a4,a5
	.loc 1 557 26
	lw	a4,-28(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 558 18
	lw	a5,-28(s0)
	srli	a5,a5,8
	sw	a5,-28(s0)
	.loc 1 559 15
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L48:
	.loc 1 556 17
	lbu	a5,-17(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 556 22
	lw	a5,-40(s0)
	lhu	a5,8(a5)
	.loc 1 556 17
	bltu	a4,a5,.L49
.L45:
	.loc 1 563 13
	li	a5,319488
	addi	a5,a5,512
	sw	a5,-24(s0)
	.loc 1 564 10
	j	.L50
.L51:
	.loc 1 565 16
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 566 11
	lw	a5,-24(s0)
	bne	a5,zero,.L50
	.loc 1 567 13
	lbu	a5,-33(s0)
	mv	a0,a5
	call	I2C_Disable
	.loc 1 568 20
	li	a5,2
	j	.L42
.L50:
	.loc 1 564 11
	lbu	a5,-33(s0)
	mv	a0,a5
	call	I2C_IsBusy
	mv	a5,a0
	.loc 1 564 29 discriminator 1
	bne	a5,zero,.L51
	.loc 1 564 33 discriminator 2
	lbu	a5,-33(s0)
	mv	a0,a5
	call	I2C_TransferEndStatus
	mv	a5,a0
	.loc 1 564 29 discriminator 3
	beq	a5,zero,.L51
	.loc 1 572 5
	lbu	a5,-33(s0)
	mv	a0,a5
	call	I2C_Disable
	.loc 1 573 12
	li	a5,0
.L42:
	.loc 1 574 1
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
	.size	I2C_MasterReceiveBlocking, .-I2C_MasterReceiveBlocking
	.section	.text.I2C_IntMask,"ax",@progbits
	.align	1
	.globl	I2C_IntMask
	.type	I2C_IntMask, @function
I2C_IntMask:
.LFB21:
	.loc 1 587 1
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
	.loc 1 589 14
	li	a5,1073782784
	addi	a5,a5,768
	sw	a5,-24(s0)
	.loc 1 596 42
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 596 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 597 5
	lbu	a5,-34(s0)
	li	a4,6
	beq	a5,a4,.L53
	li	a4,6
	bgt	a5,a4,.L76
	li	a4,5
	beq	a5,a4,.L55
	li	a4,5
	bgt	a5,a4,.L76
	li	a4,4
	beq	a5,a4,.L56
	li	a4,4
	bgt	a5,a4,.L76
	li	a4,3
	beq	a5,a4,.L57
	li	a4,3
	bgt	a5,a4,.L76
	li	a4,2
	beq	a5,a4,.L58
	li	a4,2
	bgt	a5,a4,.L76
	beq	a5,zero,.L59
	li	a4,1
	beq	a5,a4,.L60
	.loc 1 719 13
	j	.L76
.L59:
	.loc 1 600 15
	lbu	a5,-35(s0)
	bne	a5,zero,.L61
	.loc 1 603 24
	lw	a4,-20(s0)
	li	a5,16777216
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 604 24
	lw	a5,-20(s0)
	andi	a5,a5,-257
	sw	a5,-20(s0)
	.loc 1 612 13
	j	.L63
.L61:
	.loc 1 609 24
	lw	a4,-20(s0)
	li	a5,-16777216
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 610 24
	lw	a5,-20(s0)
	ori	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 612 13
	j	.L63
.L60:
	.loc 1 614 15
	lbu	a5,-35(s0)
	bne	a5,zero,.L64
	.loc 1 617 24
	lw	a4,-20(s0)
	li	a5,33554432
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 618 24
	lw	a5,-20(s0)
	andi	a5,a5,-513
	sw	a5,-20(s0)
	.loc 1 626 13
	j	.L63
.L64:
	.loc 1 623 24
	lw	a4,-20(s0)
	li	a5,-33554432
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 624 24
	lw	a5,-20(s0)
	ori	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 626 13
	j	.L63
.L58:
	.loc 1 628 15
	lbu	a5,-35(s0)
	bne	a5,zero,.L66
	.loc 1 631 24
	lw	a4,-20(s0)
	li	a5,67108864
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 632 24
	lw	a5,-20(s0)
	andi	a5,a5,-1025
	sw	a5,-20(s0)
	.loc 1 640 13
	j	.L63
.L66:
	.loc 1 637 24
	lw	a4,-20(s0)
	li	a5,-67108864
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 638 24
	lw	a5,-20(s0)
	ori	a5,a5,1024
	sw	a5,-20(s0)
	.loc 1 640 13
	j	.L63
.L57:
	.loc 1 642 15
	lbu	a5,-35(s0)
	bne	a5,zero,.L68
	.loc 1 645 24
	lw	a4,-20(s0)
	li	a5,134217728
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 646 24
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,2047
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 654 13
	j	.L63
.L68:
	.loc 1 651 24
	lw	a4,-20(s0)
	li	a5,-134217728
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 652 24
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 654 13
	j	.L63
.L56:
	.loc 1 656 15
	lbu	a5,-35(s0)
	bne	a5,zero,.L70
	.loc 1 659 24
	lw	a4,-20(s0)
	li	a5,268435456
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 660 24
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 668 13
	j	.L63
.L70:
	.loc 1 665 24
	lw	a4,-20(s0)
	li	a5,-268435456
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 666 24
	lw	a4,-20(s0)
	li	a5,4096
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 668 13
	j	.L63
.L55:
	.loc 1 670 15
	lbu	a5,-35(s0)
	bne	a5,zero,.L72
	.loc 1 673 24
	lw	a4,-20(s0)
	li	a5,536870912
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 674 24
	lw	a4,-20(s0)
	li	a5,-8192
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 682 13
	j	.L63
.L72:
	.loc 1 679 24
	lw	a4,-20(s0)
	li	a5,-536870912
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 680 24
	lw	a4,-20(s0)
	li	a5,8192
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 682 13
	j	.L63
.L53:
	.loc 1 684 15
	lbu	a5,-35(s0)
	bne	a5,zero,.L74
	.loc 1 687 24
	lw	a4,-20(s0)
	li	a5,16777216
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 688 24
	lw	a4,-20(s0)
	li	a5,33554432
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 689 24
	lw	a4,-20(s0)
	li	a5,67108864
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 690 24
	lw	a4,-20(s0)
	li	a5,134217728
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 691 24
	lw	a4,-20(s0)
	li	a5,268435456
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 692 24
	lw	a4,-20(s0)
	li	a5,536870912
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 693 24
	lw	a5,-20(s0)
	andi	a5,a5,-257
	sw	a5,-20(s0)
	.loc 1 694 24
	lw	a5,-20(s0)
	andi	a5,a5,-513
	sw	a5,-20(s0)
	.loc 1 695 24
	lw	a5,-20(s0)
	andi	a5,a5,-1025
	sw	a5,-20(s0)
	.loc 1 696 24
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,2047
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 697 24
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 698 24
	lw	a4,-20(s0)
	li	a5,-8192
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 716 13
	j	.L63
.L74:
	.loc 1 703 24
	lw	a4,-20(s0)
	li	a5,-16777216
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 704 24
	lw	a4,-20(s0)
	li	a5,-33554432
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 705 24
	lw	a4,-20(s0)
	li	a5,-67108864
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 706 24
	lw	a4,-20(s0)
	li	a5,-134217728
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 707 24
	lw	a4,-20(s0)
	li	a5,-268435456
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 708 24
	lw	a4,-20(s0)
	li	a5,-536870912
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 709 24
	lw	a5,-20(s0)
	ori	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 710 24
	lw	a5,-20(s0)
	ori	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 711 24
	lw	a5,-20(s0)
	ori	a5,a5,1024
	sw	a5,-20(s0)
	.loc 1 712 24
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 713 24
	lw	a4,-20(s0)
	li	a5,4096
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 714 24
	lw	a4,-20(s0)
	li	a5,8192
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 716 13
	j	.L63
.L76:
	.loc 1 719 13
	nop
.L63:
	.loc 1 721 33
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 721 8
	mv	a4,a5
	.loc 1 721 41
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 722 1
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
	.size	I2C_IntMask, .-I2C_IntMask
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x77f
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0x6
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
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x104
	.byte	0x2
	.4byte	0x32
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF27
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF28
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF29
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF34
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x123
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF36
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF37
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF38
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF39
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF40
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0x16d
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
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0x14e
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x4
	.byte	0x21
	.byte	0x1
	.4byte	0x192
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x4
	.byte	0x24
	.byte	0x2
	.4byte	0x179
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x4
	.byte	0x2a
	.byte	0x1
	.4byte	0x1b7
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0
	.uleb128 0x18
	.string	"SET"
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x4
	.byte	0x2d
	.byte	0x2
	.4byte	0x19e
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x1dc
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x4
	.byte	0x36
	.byte	0x2
	.4byte	0x1c3
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x4
	.byte	0x7c
	.byte	0xf
	.4byte	0x146
	.uleb128 0xc
	.4byte	0x1e8
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0x212
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x5
	.byte	0x3c
	.byte	0x2
	.4byte	0x1f9
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x5
	.byte	0x41
	.byte	0xe
	.4byte	0x237
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x5
	.byte	0x44
	.byte	0x2
	.4byte	0x21e
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x5
	.byte	0x49
	.byte	0xe
	.4byte	0x27a
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x5
	.byte	0x51
	.byte	0x2
	.4byte	0x243
	.uleb128 0x19
	.byte	0x10
	.byte	0x5
	.byte	0x74
	.byte	0x9
	.4byte	0x2d8
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x75
	.byte	0xd
	.4byte	0xf8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x76
	.byte	0x11
	.4byte	0x192
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x77
	.byte	0xd
	.4byte	0xf8
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x78
	.byte	0xe
	.4byte	0x117
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x79
	.byte	0xe
	.4byte	0x104
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x7a
	.byte	0xe
	.4byte	0x2d8
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	0xf8
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0x5
	.byte	0x7b
	.byte	0x2
	.4byte	0x286
	.uleb128 0x1a
	.4byte	0x1f4
	.4byte	0x2ff
	.uleb128 0xf
	.4byte	0x138
	.byte	0
	.uleb128 0xf
	.4byte	0x138
	.byte	0x5
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF102
	.byte	0x1
	.byte	0x47
	.byte	0x14
	.4byte	0x2e9
	.uleb128 0x5
	.byte	0x3
	.4byte	i2cIntCbfArra
	.uleb128 0x10
	.4byte	.LASF75
	.2byte	0x239
	.4byte	0x16d
	.4byte	0x32b
	.uleb128 0xd
	.4byte	0xf8
	.uleb128 0xd
	.4byte	0xf8
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x22c
	.byte	0x9
	.4byte	0xf8
	.uleb128 0x10
	.4byte	.LASF76
	.2byte	0x240
	.4byte	0x16d
	.4byte	0x34d
	.uleb128 0xd
	.4byte	0xcf
	.byte	0
	.uleb128 0xa
	.4byte	.LASF88
	.2byte	0x24a
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ae
	.uleb128 0x3
	.4byte	.LASF77
	.2byte	0x24a
	.byte	0x2e
	.4byte	0x212
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF78
	.2byte	0x24a
	.byte	0x42
	.4byte	0x27a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x3
	.4byte	.LASF79
	.2byte	0x24a
	.byte	0x58
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x24c
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF81
	.2byte	0x24d
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF84
	.2byte	0x206
	.4byte	0x16d
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41f
	.uleb128 0x3
	.4byte	.LASF77
	.2byte	0x206
	.byte	0x33
	.4byte	0x212
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xb
	.string	"cfg"
	.2byte	0x206
	.byte	0x4c
	.4byte	0x41f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"i"
	.2byte	0x208
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF82
	.2byte	0x209
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF83
	.2byte	0x20a
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF81
	.2byte	0x20b
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xc
	.4byte	0x2dd
	.uleb128 0xe
	.4byte	.LASF85
	.2byte	0x1c6
	.4byte	0x16d
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x495
	.uleb128 0x3
	.4byte	.LASF77
	.2byte	0x1c6
	.byte	0x30
	.4byte	0x212
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xb
	.string	"cfg"
	.2byte	0x1c6
	.byte	0x49
	.4byte	0x41f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"i"
	.2byte	0x1c8
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF82
	.2byte	0x1c9
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF83
	.2byte	0x1ca
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF81
	.2byte	0x1cb
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x12
	.4byte	.LASF86
	.2byte	0x1b1
	.4byte	0x1b7
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4dc
	.uleb128 0x3
	.4byte	.LASF77
	.2byte	0x1b1
	.byte	0x3f
	.4byte	0x212
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x1b3
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF81
	.2byte	0x1b4
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF87
	.2byte	0x19d
	.4byte	0x1b7
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x523
	.uleb128 0x3
	.4byte	.LASF77
	.2byte	0x19d
	.byte	0x34
	.4byte	0x212
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x19f
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF81
	.2byte	0x1a0
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF89
	.2byte	0x184
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x575
	.uleb128 0x3
	.4byte	.LASF77
	.2byte	0x184
	.byte	0x31
	.4byte	0x212
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF90
	.2byte	0x184
	.byte	0x40
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x186
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF81
	.2byte	0x187
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x164
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ba
	.uleb128 0x3
	.4byte	.LASF77
	.2byte	0x164
	.byte	0x1f
	.4byte	0x212
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xb
	.string	"clk"
	.2byte	0x164
	.byte	0x2f
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF92
	.2byte	0x166
	.byte	0xd
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF93
	.2byte	0x13e
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60c
	.uleb128 0x3
	.4byte	.LASF77
	.2byte	0x13e
	.byte	0x2d
	.4byte	0x212
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF94
	.2byte	0x13e
	.byte	0x3c
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x140
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF81
	.2byte	0x141
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF95
	.2byte	0x114
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x66d
	.uleb128 0x3
	.4byte	.LASF77
	.2byte	0x114
	.byte	0x2b
	.4byte	0x212
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF96
	.2byte	0x114
	.byte	0x45
	.4byte	0x237
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xb
	.string	"cfg"
	.2byte	0x114
	.byte	0x5f
	.4byte	0x41f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x116
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF81
	.2byte	0x117
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF97
	.2byte	0x101
	.4byte	0x16d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x696
	.uleb128 0x3
	.4byte	.LASF77
	.2byte	0x101
	.byte	0x33
	.4byte	0x212
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0xdf
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d3
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0xdf
	.byte	0x2e
	.4byte	0x212
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0xe1
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0xe2
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0xc5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x710
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0xc5
	.byte	0x2d
	.4byte	0x212
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0xc7
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0xc8
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0xb4
	.byte	0xa
	.4byte	0x117
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x746
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0xb4
	.byte	0x36
	.4byte	0x212
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0xb6
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF104
	.byte	0x1
	.byte	0xa3
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0xa3
	.byte	0x2f
	.4byte	0x212
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0xa3
	.byte	0x3f
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0xa5
	.4byte	0x117
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.sleb128 6
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0xb
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.4byte	0x84
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF87:
	.string	"I2C_IsBusy"
.LASF68:
	.string	"slaveAddr"
.LASF99:
	.string	"I2C_Enable"
.LASF58:
	.string	"I2C_READ"
.LASF5:
	.string	"BL_AHB_SLAVE1_DBG"
.LASF15:
	.string	"BL_AHB_SLAVE1_PDSHBN"
.LASF23:
	.string	"BL_AHB_SLAVE1_IRR"
.LASF31:
	.string	"BL_AHB_Slave1_Type"
.LASF86:
	.string	"I2C_TransferEndStatus"
.LASF84:
	.string	"I2C_MasterReceiveBlocking"
.LASF25:
	.string	"BL_AHB_SLAVE1_MAX"
.LASF4:
	.string	"BL_AHB_SLAVE1_GPIP"
.LASF57:
	.string	"I2C_WRITE"
.LASF94:
	.string	"phase"
.LASF30:
	.string	"long long int"
.LASF81:
	.string	"I2Cx"
.LASF97:
	.string	"I2C_Reset"
.LASF55:
	.string	"I2C_ID_MAX"
.LASF96:
	.string	"direct"
.LASF8:
	.string	"BL_AHB_SLAVE1_TZ2"
.LASF14:
	.string	"BL_AHB_SLAVE1_SDU"
.LASF59:
	.string	"I2C_Direction_Type"
.LASF72:
	.string	"dataSize"
.LASF90:
	.string	"enable"
.LASF75:
	.string	"GLB_Set_I2C_CLK"
.LASF89:
	.string	"I2C_SetSclSync"
.LASF70:
	.string	"subAddrSize"
.LASF13:
	.string	"BL_AHB_SLAVE1_DMA"
.LASF79:
	.string	"intMask"
.LASF45:
	.string	"DISABLE"
.LASF28:
	.string	"short int"
.LASF39:
	.string	"long double"
.LASF38:
	.string	"unsigned int"
.LASF83:
	.string	"temp"
.LASF41:
	.string	"SUCCESS"
.LASF63:
	.string	"I2C_NACK_RECV_INT"
.LASF103:
	.string	"GLB_Get_BCLK_Div"
.LASF40:
	.string	"char"
.LASF43:
	.string	"TIMEOUT"
.LASF29:
	.string	"long int"
.LASF19:
	.string	"BL_AHB_SLAVE1_SPI"
.LASF44:
	.string	"BL_Err_Type"
.LASF93:
	.string	"I2C_SetPrd"
.LASF6:
	.string	"BL_AHB_SLAVE1_SEC"
.LASF42:
	.string	"ERROR"
.LASF65:
	.string	"I2C_FIFO_ERR_INT"
.LASF64:
	.string	"I2C_ARB_LOST_INT"
.LASF74:
	.string	"I2C_Transfer_Cfg"
.LASF61:
	.string	"I2C_TX_FIFO_READY_INT"
.LASF100:
	.string	"I2C_RecieveWord"
.LASF78:
	.string	"intType"
.LASF50:
	.string	"UNMASK"
.LASF26:
	.string	"unsigned char"
.LASF22:
	.string	"BL_AHB_SLAVE1_TMR"
.LASF20:
	.string	"BL_AHB_SLAVE1_I2C"
.LASF69:
	.string	"stopEveryByte"
.LASF7:
	.string	"BL_AHB_SLAVE1_TZ1"
.LASF52:
	.string	"BL_Mask_Type"
.LASF27:
	.string	"signed char"
.LASF37:
	.string	"long long unsigned int"
.LASF35:
	.string	"uint32_t"
.LASF17:
	.string	"BL_AHB_SLAVE1_UART0"
.LASF3:
	.string	"BL_AHB_SLAVE1_RF"
.LASF51:
	.string	"MASK"
.LASF33:
	.string	"uint16_t"
.LASF60:
	.string	"I2C_TRANS_END_INT"
.LASF53:
	.string	"intCallback_Type"
.LASF21:
	.string	"BL_AHB_SLAVE1_PWM"
.LASF34:
	.string	"short unsigned int"
.LASF80:
	.string	"tmpVal"
.LASF88:
	.string	"I2C_IntMask"
.LASF2:
	.string	"BL_AHB_SLAVE1_GLB"
.LASF82:
	.string	"timeOut"
.LASF12:
	.string	"BL_AHB_SLAVE1_SFC"
.LASF101:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"BL_AHB_SLAVE1_EFUSE"
.LASF73:
	.string	"data"
.LASF67:
	.string	"I2C_INT_Type"
.LASF92:
	.string	"bclkDiv"
.LASF36:
	.string	"long unsigned int"
.LASF49:
	.string	"BL_Sts_Type"
.LASF56:
	.string	"I2C_ID_Type"
.LASF18:
	.string	"BL_AHB_SLAVE1_UART1"
.LASF77:
	.string	"i2cNo"
.LASF98:
	.string	"I2C_Disable"
.LASF48:
	.string	"RESET"
.LASF32:
	.string	"uint8_t"
.LASF10:
	.string	"BL_AHB_SLAVE1_CCI"
.LASF47:
	.string	"BL_Fun_Type"
.LASF62:
	.string	"I2C_RX_FIFO_READY_INT"
.LASF11:
	.string	"BL_AHB_SLAVE1_L1C"
.LASF16:
	.string	"BL_AHB_SLAVE1_WRAM"
.LASF102:
	.string	"i2cIntCbfArra"
.LASF71:
	.string	"subAddr"
.LASF91:
	.string	"I2C_ClockSet"
.LASF24:
	.string	"BL_AHB_SLAVE1_CKS"
.LASF95:
	.string	"I2C_Init"
.LASF85:
	.string	"I2C_MasterSendBlocking"
.LASF66:
	.string	"I2C_INT_ALL"
.LASF104:
	.string	"I2C_SendWord"
.LASF46:
	.string	"ENABLE"
.LASF54:
	.string	"I2C0_ID"
.LASF76:
	.string	"GLB_AHB_Slave1_Reset"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_i2c.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
