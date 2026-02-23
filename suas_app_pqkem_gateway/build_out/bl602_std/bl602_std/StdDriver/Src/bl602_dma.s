	.file	"bl602_dma.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dma.c"
	.section	.bss.dmaIntCbfArra,"aw",@nobits
	.align	2
	.type	dmaIntCbfArra, @object
	.size	dmaIntCbfArra, 32
dmaIntCbfArra:
	.zero	32
	.section	.bss.PingPongListArra,"aw",@nobits
	.align	2
	.type	PingPongListArra, @object
	.size	PingPongListArra, 128
PingPongListArra:
	.zero	128
	.section	.text.DMA_Enable,"ax",@progbits
	.align	1
	.globl	DMA_Enable
	.type	DMA_Enable, @function
DMA_Enable:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dma.c"
	.loc 1 160 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 163 14
	li	a5,1073790976
	sw	a5,-20(s0)
	.loc 1 165 44
	lw	a5,-20(s0)
	addi	a5,a5,48
	.loc 1 165 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 166 12
	lw	a5,-24(s0)
	ori	a5,a5,1
	sw	a5,-24(s0)
	.loc 1 167 35
	lw	a5,-20(s0)
	addi	a5,a5,48
	.loc 1 167 8
	mv	a4,a5
	.loc 1 167 44
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 168 1
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
.LFE8:
	.size	DMA_Enable, .-DMA_Enable
	.section	.text.DMA_Disable,"ax",@progbits
	.align	1
	.globl	DMA_Disable
	.type	DMA_Disable, @function
DMA_Disable:
.LFB9:
	.loc 1 179 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 182 14
	li	a5,1073790976
	sw	a5,-20(s0)
	.loc 1 184 44
	lw	a5,-20(s0)
	addi	a5,a5,48
	.loc 1 184 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 185 12
	lw	a5,-24(s0)
	andi	a5,a5,-2
	sw	a5,-24(s0)
	.loc 1 186 35
	lw	a5,-20(s0)
	addi	a5,a5,48
	.loc 1 186 8
	mv	a4,a5
	.loc 1 186 44
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 187 1
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
	.size	DMA_Disable, .-DMA_Disable
	.section	.text.DMA_Channel_Init,"ax",@progbits
	.align	1
	.globl	DMA_Channel_Init
	.type	DMA_Channel_Init, @function
DMA_Channel_Init:
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
	sw	a0,-36(s0)
	.loc 1 201 60
	lw	a5,-36(s0)
	lbu	a5,13(a5)
	.loc 1 201 65
	slli	a5,a5,8
	mv	a4,a5
	.loc 1 201 14
	li	a5,1073790976
	addi	a5,a5,256
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 214 8
	lw	a5,-20(s0)
	.loc 1 214 50
	lw	a4,-36(s0)
	lw	a4,0(a4)
	.loc 1 214 43
	sw	a4,0(a5)
	.loc 1 215 35
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 215 8
	mv	a4,a5
	.loc 1 215 50
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 215 43
	sw	a5,0(a4)
	.loc 1 217 44
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 217 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 218 25
	lw	a4,-24(s0)
	li	a5,-4096
	and	a4,a4,a5
	.loc 1 218 73
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 218 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 219 25
	lw	a4,-24(s0)
	li	a5,-1835008
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 219 73
	lw	a5,-36(s0)
	lbu	a5,14(a5)
	.loc 1 219 90
	slli	a5,a5,18
	.loc 1 219 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 220 25
	lw	a4,-24(s0)
	li	a5,-14680064
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 220 73
	lw	a5,-36(s0)
	lbu	a5,15(a5)
	.loc 1 220 90
	slli	a5,a5,21
	.loc 1 220 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 221 25
	lw	a4,-24(s0)
	li	a5,-28672
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 221 73
	lw	a5,-36(s0)
	lbu	a5,16(a5)
	.loc 1 221 88
	slli	a5,a5,12
	.loc 1 221 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 222 25
	lw	a4,-24(s0)
	li	a5,-229376
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 222 73
	lw	a5,-36(s0)
	lbu	a5,17(a5)
	.loc 1 222 88
	slli	a5,a5,15
	.loc 1 222 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 224 12
	lw	a4,-24(s0)
	li	a5,-16777216
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 225 25
	lw	a4,-24(s0)
	li	a5,-67108864
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 225 73
	lw	a5,-36(s0)
	lbu	a5,18(a5)
	.loc 1 225 86
	slli	a5,a5,26
	.loc 1 225 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 226 25
	lw	a4,-24(s0)
	li	a5,-134217728
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 226 73
	lw	a5,-36(s0)
	lbu	a5,19(a5)
	.loc 1 226 87
	slli	a5,a5,27
	.loc 1 226 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 227 35
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 227 8
	mv	a4,a5
	.loc 1 227 43
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 229 44
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 229 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 230 25
	lw	a4,-24(s0)
	li	a5,-16384
	addi	a5,a5,2047
	and	a4,a4,a5
	.loc 1 230 73
	lw	a5,-36(s0)
	lbu	a5,12(a5)
	.loc 1 230 79
	slli	a5,a5,11
	.loc 1 230 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 231 25
	lw	a5,-24(s0)
	andi	a4,a5,-1985
	.loc 1 231 72
	lw	a5,-36(s0)
	lbu	a5,21(a5)
	.loc 1 231 84
	slli	a5,a5,6
	.loc 1 231 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 232 25
	lw	a5,-24(s0)
	andi	a4,a5,-63
	.loc 1 232 72
	lw	a5,-36(s0)
	lbu	a5,20(a5)
	.loc 1 232 84
	slli	a5,a5,1
	.loc 1 232 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 233 35
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 233 8
	mv	a4,a5
	.loc 1 233 44
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 234 1
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
	.size	DMA_Channel_Init, .-DMA_Channel_Init
	.section	.text.DMA_Channel_Update_SrcMemcfg,"ax",@progbits
	.align	1
	.globl	DMA_Channel_Update_SrcMemcfg
	.type	DMA_Channel_Update_SrcMemcfg, @function
DMA_Channel_Update_SrcMemcfg:
.LFB11:
	.loc 1 247 1
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
	.loc 1 250 58
	lbu	a5,-33(s0)
	slli	a5,a5,8
	mv	a4,a5
	.loc 1 250 14
	li	a5,1073790976
	addi	a5,a5,256
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 256 8
	lw	a5,-20(s0)
	.loc 1 256 43
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 1 257 44
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 257 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 258 25
	lw	a4,-24(s0)
	li	a5,-4096
	and	a5,a4,a5
	.loc 1 258 12
	lw	a4,-44(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 259 35
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 259 8
	mv	a4,a5
	.loc 1 259 43
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 260 1
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
	.size	DMA_Channel_Update_SrcMemcfg, .-DMA_Channel_Update_SrcMemcfg
	.section	.text.DMA_Channel_Update_DstMemcfg,"ax",@progbits
	.align	1
	.globl	DMA_Channel_Update_DstMemcfg
	.type	DMA_Channel_Update_DstMemcfg, @function
DMA_Channel_Update_DstMemcfg:
.LFB12:
	.loc 1 273 1
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
	.loc 1 276 58
	lbu	a5,-33(s0)
	slli	a5,a5,8
	mv	a4,a5
	.loc 1 276 14
	li	a5,1073790976
	addi	a5,a5,256
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 282 35
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 282 8
	mv	a4,a5
	.loc 1 282 43
	lw	a5,-40(s0)
	sw	a5,0(a4)
	.loc 1 283 44
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 283 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 284 25
	lw	a4,-24(s0)
	li	a5,-4096
	and	a5,a4,a5
	.loc 1 284 12
	lw	a4,-44(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 285 35
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 285 8
	mv	a4,a5
	.loc 1 285 43
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 286 1
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
	.size	DMA_Channel_Update_DstMemcfg, .-DMA_Channel_Update_DstMemcfg
	.section	.text.DMA_Channel_TranferSize,"ax",@progbits
	.align	1
	.globl	DMA_Channel_TranferSize
	.type	DMA_Channel_TranferSize, @function
DMA_Channel_TranferSize:
.LFB13:
	.loc 1 297 1
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
	.loc 1 299 58
	lbu	a5,-33(s0)
	slli	a5,a5,8
	mv	a4,a5
	.loc 1 299 14
	li	a5,1073790976
	addi	a5,a5,256
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 304 46
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 304 84
	lw	a4,0(a5)
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
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
.LFE13:
	.size	DMA_Channel_TranferSize, .-DMA_Channel_TranferSize
	.section	.text.DMA_Channel_Is_Busy,"ax",@progbits
	.align	1
	.globl	DMA_Channel_Is_Busy
	.type	DMA_Channel_Is_Busy, @function
DMA_Channel_Is_Busy:
.LFB14:
	.loc 1 316 1
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
	.loc 1 318 58
	lbu	a5,-33(s0)
	slli	a5,a5,8
	mv	a4,a5
	.loc 1 318 14
	li	a5,1073790976
	addi	a5,a5,256
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 323 46
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 323 17
	lw	a5,0(a5)
	.loc 1 323 57
	andi	a5,a5,1
	.loc 1 323 88
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 324 1
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
	.size	DMA_Channel_Is_Busy, .-DMA_Channel_Is_Busy
	.section	.text.DMA_Channel_Enable,"ax",@progbits
	.align	1
	.globl	DMA_Channel_Enable
	.type	DMA_Channel_Enable, @function
DMA_Channel_Enable:
.LFB15:
	.loc 1 336 1
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
	.loc 1 339 58
	lbu	a5,-33(s0)
	slli	a5,a5,8
	mv	a4,a5
	.loc 1 339 14
	li	a5,1073790976
	addi	a5,a5,256
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 344 44
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 344 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 345 12
	lw	a5,-24(s0)
	ori	a5,a5,1
	sw	a5,-24(s0)
	.loc 1 346 35
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 346 8
	mv	a4,a5
	.loc 1 346 44
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 347 1
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
	.size	DMA_Channel_Enable, .-DMA_Channel_Enable
	.section	.text.DMA_Channel_Disable,"ax",@progbits
	.align	1
	.globl	DMA_Channel_Disable
	.type	DMA_Channel_Disable, @function
DMA_Channel_Disable:
.LFB16:
	.loc 1 358 1
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
	.loc 1 361 58
	lbu	a5,-33(s0)
	slli	a5,a5,8
	mv	a4,a5
	.loc 1 361 14
	li	a5,1073790976
	addi	a5,a5,256
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 366 44
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 366 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 367 12
	lw	a5,-24(s0)
	andi	a5,a5,-2
	sw	a5,-24(s0)
	.loc 1 368 35
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 368 8
	mv	a4,a5
	.loc 1 368 44
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 369 1
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
	.size	DMA_Channel_Disable, .-DMA_Channel_Disable
	.section	.text.DMA_LLI_Init,"ax",@progbits
	.align	1
	.globl	DMA_LLI_Init
	.type	DMA_LLI_Init, @function
DMA_LLI_Init:
.LFB17:
	.loc 1 381 1
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
	.loc 1 384 58
	lbu	a5,-33(s0)
	slli	a5,a5,8
	mv	a4,a5
	.loc 1 384 14
	li	a5,1073790976
	addi	a5,a5,256
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 392 44
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 392 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 393 25
	lw	a4,-24(s0)
	li	a5,-16384
	addi	a5,a5,2047
	and	a4,a4,a5
	.loc 1 393 74
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 393 80
	slli	a5,a5,11
	.loc 1 393 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 394 25
	lw	a5,-24(s0)
	andi	a4,a5,-1985
	.loc 1 394 73
	lw	a5,-40(s0)
	lbu	a5,2(a5)
	.loc 1 394 85
	slli	a5,a5,6
	.loc 1 394 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 395 25
	lw	a5,-24(s0)
	andi	a4,a5,-63
	.loc 1 395 73
	lw	a5,-40(s0)
	lbu	a5,1(a5)
	.loc 1 395 85
	slli	a5,a5,1
	.loc 1 395 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 396 35
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 396 8
	mv	a4,a5
	.loc 1 396 44
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 397 1
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
.LFE17:
	.size	DMA_LLI_Init, .-DMA_LLI_Init
	.section	.text.DMA_LLI_Update,"ax",@progbits
	.align	1
	.globl	DMA_LLI_Update
	.type	DMA_LLI_Update, @function
DMA_LLI_Update:
.LFB18:
	.loc 1 409 1
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
	.loc 1 411 58
	lbu	a5,-33(s0)
	slli	a5,a5,8
	mv	a4,a5
	.loc 1 411 14
	li	a5,1073790976
	addi	a5,a5,256
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 418 5
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	BL602_MemCpy4
	.loc 1 419 1
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
	.size	DMA_LLI_Update, .-DMA_LLI_Update
	.section	.text.DMA_LLI_PpStruct_Init,"ax",@progbits
	.align	1
	.globl	DMA_LLI_PpStruct_Init
	.type	DMA_LLI_PpStruct_Init, @function
DMA_LLI_PpStruct_Init:
.LFB19:
	.loc 1 430 1
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
	.loc 1 432 33
	lw	a5,-20(s0)
	lw	a3,4(a5)
	li	a4,-2147483648
	or	a4,a3,a4
	sw	a4,4(a5)
	.loc 1 433 30
	lw	a5,-20(s0)
	sb	zero,0(a5)
	.loc 1 435 19
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 435 32
	lbu	a4,0(a5)
	.loc 1 435 7
	li	a5,1
	bne	a4,a5,.L15
	.loc 1 436 37
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	mv	a2,a5
	.loc 1 436 101
	lw	a5,-20(s0)
	lw	a4,16(a5)
	.loc 1 436 71
	lui	a5,%hi(PingPongListArra)
	addi	a3,a5,%lo(PingPongListArra)
	slli	a5,a2,5
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 1 437 37
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	mv	a2,a5
	.loc 1 437 84
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 437 71
	lui	a5,%hi(PingPongListArra)
	addi	a3,a5,%lo(PingPongListArra)
	slli	a5,a2,5
	add	a5,a3,a5
	sw	a4,4(a5)
	.loc 1 439 37
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	mv	a2,a5
	.loc 1 439 101
	lw	a5,-20(s0)
	lw	a4,20(a5)
	.loc 1 439 71
	lui	a5,%hi(PingPongListArra)
	addi	a3,a5,%lo(PingPongListArra)
	slli	a5,a2,5
	add	a5,a3,a5
	sw	a4,16(a5)
	.loc 1 440 37
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	mv	a2,a5
	.loc 1 440 84
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 440 71
	lui	a5,%hi(PingPongListArra)
	addi	a3,a5,%lo(PingPongListArra)
	slli	a5,a2,5
	add	a5,a3,a5
	sw	a4,20(a5)
	j	.L16
.L15:
	.loc 1 442 24
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 442 37
	lbu	a4,0(a5)
	.loc 1 442 12
	li	a5,2
	bne	a4,a5,.L17
	.loc 1 443 37
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	mv	a2,a5
	.loc 1 443 84
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 443 71
	lui	a5,%hi(PingPongListArra)
	addi	a3,a5,%lo(PingPongListArra)
	slli	a5,a2,5
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 1 444 37
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	mv	a2,a5
	.loc 1 444 101
	lw	a5,-20(s0)
	lw	a4,16(a5)
	.loc 1 444 71
	lui	a5,%hi(PingPongListArra)
	addi	a3,a5,%lo(PingPongListArra)
	slli	a5,a2,5
	add	a5,a3,a5
	sw	a4,4(a5)
	.loc 1 446 37
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	mv	a2,a5
	.loc 1 446 84
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 446 71
	lui	a5,%hi(PingPongListArra)
	addi	a3,a5,%lo(PingPongListArra)
	slli	a5,a2,5
	add	a5,a3,a5
	sw	a4,16(a5)
	.loc 1 447 37
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	mv	a2,a5
	.loc 1 447 102
	lw	a5,-20(s0)
	lw	a4,20(a5)
	.loc 1 447 72
	lui	a5,%hi(PingPongListArra)
	addi	a3,a5,%lo(PingPongListArra)
	slli	a5,a2,5
	add	a5,a3,a5
	sw	a4,20(a5)
	j	.L16
.L17:
	.loc 1 449 16
	li	a5,1
	j	.L18
.L16:
	.loc 1 453 105
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	.loc 1 453 76
	slli	a5,a5,5
	addi	a4,a5,16
	lui	a5,%hi(PingPongListArra)
	addi	a5,a5,%lo(PingPongListArra)
	add	a4,a4,a5
	.loc 1 453 33
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	mv	a2,a5
	.loc 1 453 66
	mv	a3,a4
	.loc 1 453 64
	lui	a5,%hi(PingPongListArra)
	addi	a4,a5,%lo(PingPongListArra)
	slli	a5,a2,5
	add	a5,a4,a5
	sw	a3,8(a5)
	.loc 1 454 33
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	mv	a3,a5
	.loc 1 454 64
	lui	a5,%hi(PingPongListArra)
	addi	a4,a5,%lo(PingPongListArra)
	slli	a5,a3,5
	add	a5,a4,a5
	lw	a4,-20(s0)
	lw	a4,4(a4)
	sw	a4,12(a5)
	.loc 1 456 19
	lw	a5,-20(s0)
	lbu	a4,24(a5)
	.loc 1 456 7
	li	a5,1
	bne	a4,a5,.L19
	.loc 1 461 37
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	mv	a3,a5
	.loc 1 461 68
	lui	a5,%hi(PingPongListArra)
	addi	a4,a5,%lo(PingPongListArra)
	slli	a5,a3,5
	add	a5,a4,a5
	sw	zero,24(a5)
	j	.L20
.L19:
	.loc 1 463 109
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	.loc 1 463 80
	slli	a4,a5,5
	lui	a5,%hi(PingPongListArra)
	addi	a5,a5,%lo(PingPongListArra)
	add	a4,a4,a5
	.loc 1 463 37
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	mv	a2,a5
	.loc 1 463 70
	mv	a3,a4
	.loc 1 463 68
	lui	a5,%hi(PingPongListArra)
	addi	a4,a5,%lo(PingPongListArra)
	slli	a5,a2,5
	add	a5,a4,a5
	sw	a3,24(a5)
.L20:
	.loc 1 466 33
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	mv	a3,a5
	.loc 1 466 64
	lui	a5,%hi(PingPongListArra)
	addi	a4,a5,%lo(PingPongListArra)
	slli	a5,a3,5
	add	a5,a4,a5
	lw	a4,-20(s0)
	lw	a4,4(a4)
	sw	a4,28(a5)
	.loc 1 468 5
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	mv	a1,a5
	mv	a0,a4
	call	DMA_LLI_Init
	.loc 1 470 5
	lw	a5,-20(s0)
	lbu	a3,1(a5)
	.loc 1 470 81
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	.loc 1 470 52
	slli	a4,a5,5
	lui	a5,%hi(PingPongListArra)
	addi	a5,a5,%lo(PingPongListArra)
	add	a5,a4,a5
	.loc 1 470 5
	mv	a1,a5
	mv	a0,a3
	call	DMA_LLI_Update
	.loc 1 472 12
	li	a5,0
.L18:
	.loc 1 473 1
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
.LFE19:
	.size	DMA_LLI_PpStruct_Init, .-DMA_LLI_PpStruct_Init
	.section	.text.DMA_LLI_PpStruct_Start,"ax",@progbits
	.align	1
	.globl	DMA_LLI_PpStruct_Start
	.type	DMA_LLI_PpStruct_Start, @function
DMA_LLI_PpStruct_Start:
.LFB20:
	.loc 1 484 60
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
	.loc 1 485 19
	lw	a5,-20(s0)
	lbu	a4,24(a5)
	.loc 1 485 7
	li	a5,1
	bne	a4,a5,.L22
	.loc 1 486 9
	lw	a5,-20(s0)
	lbu	a3,1(a5)
	.loc 1 486 85
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	.loc 1 486 56
	slli	a4,a5,5
	lui	a5,%hi(PingPongListArra)
	addi	a5,a5,%lo(PingPongListArra)
	add	a5,a4,a5
	.loc 1 486 9
	mv	a1,a5
	mv	a0,a3
	call	DMA_LLI_Update
.L22:
	.loc 1 489 5
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	mv	a0,a5
	call	DMA_Channel_Enable
	.loc 1 490 1
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
.LFE20:
	.size	DMA_LLI_PpStruct_Start, .-DMA_LLI_PpStruct_Start
	.section	.text.DMA_LLI_PpStruct_Stop,"ax",@progbits
	.align	1
	.globl	DMA_LLI_PpStruct_Stop
	.type	DMA_LLI_PpStruct_Stop, @function
DMA_LLI_PpStruct_Stop:
.LFB21:
	.loc 1 502 59
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
	.loc 1 503 5
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	mv	a0,a5
	call	DMA_Channel_Disable
	.loc 1 504 1
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
.LFE21:
	.size	DMA_LLI_PpStruct_Stop, .-DMA_LLI_PpStruct_Stop
	.section	.text.DMA_LLI_PpStruct_Set_Transfer_Len,"ax",@progbits
	.align	1
	.globl	DMA_LLI_PpStruct_Set_Transfer_Len
	.type	DMA_LLI_PpStruct_Set_Transfer_Len, @function
DMA_LLI_PpStruct_Set_Transfer_Len:
.LFB22:
	.loc 1 516 132
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
	sh	a5,-38(s0)
	mv	a5,a4
	sh	a5,-40(s0)
	.loc 1 519 7
	lhu	a4,-38(s0)
	li	a5,4096
	bgtu	a4,a5,.L25
	.loc 1 519 33 discriminator 1
	lhu	a4,-40(s0)
	li	a5,4096
	bleu	a4,a5,.L26
.L25:
	.loc 1 520 16
	li	a5,1
	j	.L28
.L26:
	.loc 1 523 54
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	mv	a3,a5
	.loc 1 523 24
	lui	a5,%hi(PingPongListArra)
	addi	a4,a5,%lo(PingPongListArra)
	slli	a5,a3,5
	add	a5,a4,a5
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 524 37
	lhu	a5,-38(s0)
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
	.loc 1 525 33
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	mv	a3,a5
	.loc 1 525 64
	lui	a5,%hi(PingPongListArra)
	addi	a4,a5,%lo(PingPongListArra)
	slli	a5,a3,5
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,12(a5)
	.loc 1 527 54
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	mv	a3,a5
	.loc 1 527 24
	lui	a5,%hi(PingPongListArra)
	addi	a4,a5,%lo(PingPongListArra)
	slli	a5,a3,5
	add	a5,a4,a5
	lw	a5,28(a5)
	sw	a5,-20(s0)
	.loc 1 528 37
	lhu	a5,-40(s0)
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
	.loc 1 529 33
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	mv	a3,a5
	.loc 1 529 64
	lui	a5,%hi(PingPongListArra)
	addi	a4,a5,%lo(PingPongListArra)
	slli	a5,a3,5
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,28(a5)
	.loc 1 531 5
	lw	a5,-36(s0)
	lbu	a4,1(a5)
	lw	a5,-36(s0)
	lw	a5,8(a5)
	mv	a1,a5
	mv	a0,a4
	call	DMA_LLI_Init
	.loc 1 532 5
	lw	a5,-36(s0)
	lbu	a3,1(a5)
	.loc 1 532 81
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	.loc 1 532 52
	slli	a4,a5,5
	lui	a5,%hi(PingPongListArra)
	addi	a5,a5,%lo(PingPongListArra)
	add	a5,a4,a5
	.loc 1 532 5
	mv	a1,a5
	mv	a0,a3
	call	DMA_LLI_Update
	.loc 1 534 12
	li	a5,0
.L28:
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
.LFE22:
	.size	DMA_LLI_PpStruct_Set_Transfer_Len, .-DMA_LLI_PpStruct_Set_Transfer_Len
	.section	.text.DMA_LLI_PpBuf_Start_New_Transmit,"ax",@progbits
	.align	1
	.globl	DMA_LLI_PpBuf_Start_New_Transmit
	.type	DMA_LLI_PpBuf_Start_New_Transmit, @function
DMA_LLI_PpBuf_Start_New_Transmit:
.LFB23:
	.loc 1 550 1
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
	.loc 1 551 5
	li	a0,31
	call	clic_disable_interrupt
	.loc 1 552 40
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 552 31
	lw	a4,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 552 7
	beq	a5,zero,.L30
	.loc 1 553 9
	lw	a5,-20(s0)
	lbu	a3,1(a5)
	.loc 1 553 85
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 553 76
	lw	a4,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 553 9
	mv	a1,a5
	mv	a0,a3
	call	DMA_LLI_Update
	.loc 1 554 9
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	mv	a0,a5
	call	DMA_Channel_Enable
	.loc 1 555 40
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 555 57
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 1 555 29
	lw	a5,-20(s0)
	sb	a4,0(a5)
.L30:
	.loc 1 557 5
	li	a0,31
	call	clic_enable_interrupt
	.loc 1 558 1
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
	.size	DMA_LLI_PpBuf_Start_New_Transmit, .-DMA_LLI_PpBuf_Start_New_Transmit
	.section	.text.DMA_LLI_PpBuf_Remove_Completed_List,"ax",@progbits
	.align	1
	.globl	DMA_LLI_PpBuf_Remove_Completed_List
	.type	DMA_LLI_PpBuf_Remove_Completed_List, @function
DMA_LLI_PpBuf_Remove_Completed_List:
.LFB24:
	.loc 1 569 1
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
	.loc 1 570 5
	li	a0,31
	call	clic_disable_interrupt
	.loc 1 572 38
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 572 29
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 572 51
	lw	a4,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,4(a5)
	.loc 1 573 5
	li	a0,31
	call	clic_enable_interrupt
	.loc 1 574 45
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 574 36
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 574 35
	lw	a4,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 575 1
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
	.size	DMA_LLI_PpBuf_Remove_Completed_List, .-DMA_LLI_PpBuf_Remove_Completed_List
	.section	.text.DMA_LLI_PpBuf_Append,"ax",@progbits
	.align	1
	.globl	DMA_LLI_PpBuf_Append
	.type	DMA_LLI_PpBuf_Append, @function
DMA_LLI_PpBuf_Append:
.LFB25:
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
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 588 24
	sw	zero,-20(s0)
	.loc 1 589 5
	li	a0,31
	call	clic_disable_interrupt
	.loc 1 591 48
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 591 14
	lw	a4,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 592 7
	lw	a5,-20(s0)
	bne	a5,zero,.L36
	.loc 1 593 29
	lw	a5,-40(s0)
	sw	zero,8(a5)
	.loc 1 594 31
	lw	a5,-40(s0)
	lw	a3,12(a5)
	li	a4,-2147483648
	or	a4,a3,a4
	sw	a4,12(a5)
	.loc 1 595 41
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 595 54
	lw	a4,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-40(s0)
	sw	a4,4(a5)
	j	.L35
.L37:
	.loc 1 599 52
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 599 22
	sw	a5,-20(s0)
.L36:
	.loc 1 598 23
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 598 33
	bne	a5,zero,.L37
	.loc 1 601 29
	lw	a4,-40(s0)
	.loc 1 601 27
	lw	a5,-20(s0)
	sw	a4,8(a5)
	.loc 1 602 29
	lw	a5,-20(s0)
	lw	a3,12(a5)
	li	a4,-2147483648
	addi	a4,a4,-1
	and	a4,a3,a4
	sw	a4,12(a5)
	.loc 1 603 29
	lw	a5,-40(s0)
	sw	zero,8(a5)
	.loc 1 604 31
	lw	a5,-40(s0)
	lw	a3,12(a5)
	li	a4,-2147483648
	or	a4,a3,a4
	sw	a4,12(a5)
.L35:
	.loc 1 607 8
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	mv	a0,a5
	call	DMA_Channel_Is_Busy
	mv	a5,a0
	.loc 1 607 7 discriminator 1
	bne	a5,zero,.L38
	.loc 1 610 45
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 610 36
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 610 35
	lw	a4,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 610 11
	bne	a5,zero,.L38
	.loc 1 612 13
	lw	a0,-36(s0)
	call	DMA_LLI_PpBuf_Start_New_Transmit
.L38:
	.loc 1 615 5
	li	a0,31
	call	clic_enable_interrupt
	.loc 1 616 1
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
.LFE25:
	.size	DMA_LLI_PpBuf_Append, .-DMA_LLI_PpBuf_Append
	.section	.text.DMA_LLI_PpBuf_Destroy,"ax",@progbits
	.align	1
	.globl	DMA_LLI_PpBuf_Destroy
	.type	DMA_LLI_PpBuf_Destroy, @function
DMA_LLI_PpBuf_Destroy:
.LFB26:
	.loc 1 627 1
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
	.loc 1 629 5
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	mv	a0,a5
	call	DMA_Channel_Disable
	.loc 1 630 31
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 630 7
	beq	a5,zero,.L40
	.loc 1 630 53 discriminator 1
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 630 42 discriminator 1
	beq	a5,zero,.L40
	.loc 1 631 17
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 631 9
	lw	a4,-20(s0)
	lw	a4,4(a4)
	mv	a0,a4
	jalr	a5
.LVL0:
.L40:
	.loc 1 633 32
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 1 634 31
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 634 7
	beq	a5,zero,.L41
	.loc 1 634 53 discriminator 1
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 634 42 discriminator 1
	beq	a5,zero,.L41
	.loc 1 635 17
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 635 9
	lw	a4,-20(s0)
	lw	a4,8(a4)
	mv	a0,a4
	jalr	a5
.LVL1:
.L41:
	.loc 1 637 32
	lw	a5,-20(s0)
	sw	zero,8(a5)
	.loc 1 638 25
	lw	a5,-20(s0)
	sb	zero,0(a5)
	.loc 1 639 1
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
	.size	DMA_LLI_PpBuf_Destroy, .-DMA_LLI_PpBuf_Destroy
	.section	.text.DMA_IntMask,"ax",@progbits
	.align	1
	.globl	DMA_IntMask
	.type	DMA_IntMask, @function
DMA_IntMask:
.LFB27:
	.loc 1 653 1
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
	.loc 1 656 58
	lbu	a5,-33(s0)
	slli	a5,a5,8
	mv	a4,a5
	.loc 1 656 14
	li	a5,1073790976
	addi	a5,a5,256
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 662 5
	lbu	a5,-34(s0)
	li	a4,2
	beq	a5,a4,.L43
	li	a4,2
	bgt	a5,a4,.L54
	beq	a5,zero,.L45
	li	a4,1
	beq	a5,a4,.L46
	.loc 1 722 13
	j	.L54
.L45:
	.loc 1 665 15
	lbu	a5,-35(s0)
	bne	a5,zero,.L47
	.loc 1 668 59
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 668 71
	lw	a4,0(a5)
	.loc 1 668 24
	li	a5,-32768
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 669 47
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 669 20
	mv	a4,a5
	.loc 1 669 56
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 670 59
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 670 30
	lw	a4,0(a5)
	.loc 1 670 24
	li	a5,-2147483648
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 671 47
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 671 20
	mv	a4,a5
	.loc 1 671 55
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 681 13
	j	.L49
.L47:
	.loc 1 676 59
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 676 30
	lw	a4,0(a5)
	.loc 1 676 24
	li	a5,32768
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 677 47
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 677 20
	mv	a4,a5
	.loc 1 677 56
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 678 59
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 678 70
	lw	a4,0(a5)
	.loc 1 678 24
	li	a5,-2147483648
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 679 47
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 679 20
	mv	a4,a5
	.loc 1 679 55
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 681 13
	j	.L49
.L46:
	.loc 1 683 15
	lbu	a5,-35(s0)
	bne	a5,zero,.L50
	.loc 1 686 59
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 686 71
	lw	a4,0(a5)
	.loc 1 686 24
	li	a5,-16384
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 687 47
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 687 20
	mv	a4,a5
	.loc 1 687 56
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 695 13
	j	.L49
.L50:
	.loc 1 692 59
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 692 30
	lw	a4,0(a5)
	.loc 1 692 24
	li	a5,16384
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 693 47
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 693 20
	mv	a4,a5
	.loc 1 693 56
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 695 13
	j	.L49
.L43:
	.loc 1 697 15
	lbu	a5,-35(s0)
	bne	a5,zero,.L52
	.loc 1 700 56
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 700 24
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 701 24
	lw	a4,-24(s0)
	li	a5,-32768
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 702 24
	lw	a4,-24(s0)
	li	a5,-16384
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 703 47
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 703 20
	mv	a4,a5
	.loc 1 703 56
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 704 56
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 704 24
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 705 24
	lw	a4,-24(s0)
	li	a5,-2147483648
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 706 47
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 706 20
	mv	a4,a5
	.loc 1 706 55
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 719 13
	j	.L49
.L52:
	.loc 1 711 56
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 711 24
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 712 24
	lw	a4,-24(s0)
	li	a5,32768
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 713 24
	lw	a4,-24(s0)
	li	a5,16384
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 714 47
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 714 20
	mv	a4,a5
	.loc 1 714 56
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 715 56
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 715 24
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 716 24
	lw	a4,-24(s0)
	li	a5,-2147483648
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 717 47
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 717 20
	mv	a4,a5
	.loc 1 717 55
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 719 13
	j	.L49
.L54:
	.loc 1 722 13
	nop
.L49:
	.loc 1 724 1
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
.LFE27:
	.size	DMA_IntMask, .-DMA_IntMask
	.section	.text.DMA_Int_Callback_Install,"ax",@progbits
	.align	1
	.globl	DMA_Int_Callback_Install
	.type	DMA_Int_Callback_Install, @function
DMA_Int_Callback_Install:
.LFB28:
	.loc 1 737 1
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
	.loc 1 742 27
	lbu	a3,-17(s0)
	lbu	a5,-18(s0)
	.loc 1 742 37
	lui	a4,%hi(dmaIntCbfArra)
	addi	a4,a4,%lo(dmaIntCbfArra)
	slli	a3,a3,1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 743 1
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
	.size	DMA_Int_Callback_Install, .-DMA_Int_Callback_Install
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/dma_reg.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dma.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcb3
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1a
	.4byte	.LASF211
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x4
	.byte	0x41
	.byte	0x1
	.4byte	0x1d6
	.uleb128 0x1
	.4byte	.LASF2
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF3
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF4
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF5
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF6
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF7
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF8
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF9
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF10
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF11
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF12
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF13
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x35
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x36
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x37
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x39
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x3b
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x49
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x4b
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x4d
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x4f
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF71
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF72
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF73
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF74
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF75
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x1d6
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x211
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF78
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x229
	.uleb128 0x1b
	.4byte	0x218
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF80
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF81
	.uleb128 0x1c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF82
	.uleb128 0x1d
	.4byte	.LASF212
	.byte	0x4
	.byte	0x3
	.2byte	0x4a0
	.byte	0x10
	.4byte	0x2dc
	.uleb128 0xb
	.4byte	.LASF83
	.2byte	0x4a1
	.4byte	0x218
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF84
	.2byte	0x4a2
	.4byte	0x218
	.byte	0x3
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF85
	.2byte	0x4a3
	.4byte	0x218
	.byte	0x3
	.byte	0xf
	.uleb128 0xb
	.4byte	.LASF86
	.2byte	0x4a4
	.4byte	0x218
	.byte	0x3
	.byte	0x12
	.uleb128 0xb
	.4byte	.LASF87
	.2byte	0x4a5
	.4byte	0x218
	.byte	0x3
	.byte	0x15
	.uleb128 0xb
	.4byte	.LASF88
	.2byte	0x4a6
	.4byte	0x218
	.byte	0x1
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF89
	.2byte	0x4a7
	.4byte	0x218
	.byte	0x1
	.byte	0x19
	.uleb128 0x12
	.string	"SI"
	.2byte	0x4a8
	.4byte	0x218
	.byte	0x1a
	.uleb128 0x12
	.string	"DI"
	.2byte	0x4a9
	.4byte	0x218
	.byte	0x1b
	.uleb128 0xb
	.4byte	.LASF90
	.2byte	0x4aa
	.4byte	0x218
	.byte	0x3
	.byte	0x1c
	.uleb128 0x12
	.string	"I"
	.2byte	0x4ab
	.4byte	0x218
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.4byte	.LASF91
	.uleb128 0x1e
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF92
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x5
	.byte	0x17
	.byte	0x1
	.4byte	0x30a
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.4byte	0x2eb
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x5
	.byte	0x21
	.byte	0x1
	.4byte	0x32f
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x5
	.byte	0x24
	.byte	0x2
	.4byte	0x316
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x5
	.byte	0x2a
	.byte	0x1
	.4byte	0x354
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0
	.uleb128 0x1f
	.string	"SET"
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0x5
	.byte	0x2d
	.byte	0x2
	.4byte	0x33b
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x5
	.byte	0x33
	.byte	0x1
	.4byte	0x379
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0x5
	.byte	0x36
	.byte	0x2
	.4byte	0x360
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0x5
	.byte	0x7c
	.byte	0xf
	.4byte	0x2e3
	.uleb128 0xa
	.4byte	0x385
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x6
	.byte	0x49
	.byte	0xe
	.4byte	0x3b5
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0x6
	.byte	0x4d
	.byte	0x2
	.4byte	0x396
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x6
	.byte	0x52
	.byte	0xe
	.4byte	0x3e6
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0x6
	.byte	0x57
	.byte	0x2
	.4byte	0x3c1
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x6
	.byte	0x5c
	.byte	0xe
	.4byte	0x417
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0x6
	.byte	0x61
	.byte	0x2
	.4byte	0x3f2
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x6
	.byte	0x66
	.byte	0xe
	.4byte	0x472
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0x6
	.byte	0x72
	.byte	0x2
	.4byte	0x423
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x6
	.byte	0x77
	.byte	0xe
	.4byte	0x4a9
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF137
	.byte	0x6
	.byte	0x7d
	.byte	0x2
	.4byte	0x47e
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x6
	.byte	0x82
	.byte	0xe
	.4byte	0x4d4
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF141
	.byte	0x6
	.byte	0x86
	.byte	0x2
	.4byte	0x4b5
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.4byte	0x4f9
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.byte	0x18
	.byte	0x9b
	.4byte	0x59c
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0x9c
	.byte	0xe
	.4byte	0x218
	.byte	0
	.uleb128 0x2
	.4byte	.LASF145
	.byte	0x9d
	.byte	0xe
	.4byte	0x218
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF146
	.byte	0x9e
	.byte	0xe
	.4byte	0x218
	.byte	0x8
	.uleb128 0x13
	.string	"dir"
	.byte	0x9f
	.byte	0x18
	.4byte	0x3e6
	.byte	0xc
	.uleb128 0x13
	.string	"ch"
	.byte	0xa0
	.byte	0x13
	.4byte	0x4a9
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF147
	.byte	0xa1
	.byte	0x1a
	.4byte	0x3b5
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF148
	.byte	0xa2
	.byte	0x1a
	.4byte	0x3b5
	.byte	0xf
	.uleb128 0x2
	.4byte	.LASF149
	.byte	0xa3
	.byte	0x19
	.4byte	0x417
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0xa5
	.byte	0x19
	.4byte	0x417
	.byte	0x11
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0xa7
	.byte	0xd
	.4byte	0x1f9
	.byte	0x12
	.uleb128 0x2
	.4byte	.LASF152
	.byte	0xa8
	.byte	0xd
	.4byte	0x1f9
	.byte	0x13
	.uleb128 0x2
	.4byte	.LASF153
	.byte	0xa9
	.byte	0x19
	.4byte	0x472
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF154
	.byte	0xaa
	.byte	0x19
	.4byte	0x472
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.4byte	.LASF155
	.byte	0x6
	.byte	0xab
	.byte	0x2
	.4byte	0x4f9
	.uleb128 0x10
	.byte	0x10
	.byte	0xb0
	.4byte	0x5e0
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0xb1
	.byte	0xe
	.4byte	0x218
	.byte	0
	.uleb128 0x2
	.4byte	.LASF145
	.byte	0xb2
	.byte	0xe
	.4byte	0x218
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF156
	.byte	0xb3
	.byte	0xe
	.4byte	0x218
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF157
	.byte	0xb4
	.byte	0x1c
	.4byte	0x245
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF158
	.byte	0x6
	.byte	0xb5
	.byte	0x2
	.4byte	0x5a8
	.uleb128 0x10
	.byte	0x3
	.byte	0xba
	.4byte	0x618
	.uleb128 0x13
	.string	"dir"
	.byte	0xbb
	.byte	0x18
	.4byte	0x3e6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF153
	.byte	0xbc
	.byte	0x19
	.4byte	0x472
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF154
	.byte	0xbd
	.byte	0x19
	.4byte	0x472
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0x6
	.byte	0xbe
	.byte	0x2
	.4byte	0x5ec
	.uleb128 0x10
	.byte	0x10
	.byte	0xc3
	.4byte	0x65c
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0xc4
	.byte	0xd
	.4byte	0x1f9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0xc5
	.byte	0xd
	.4byte	0x1f9
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0xc6
	.byte	0x18
	.4byte	0x65c
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0xc7
	.byte	0xd
	.4byte	0x67c
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.4byte	0x66c
	.4byte	0x66c
	.uleb128 0xc
	.4byte	0x23e
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x5e0
	.uleb128 0x20
	.4byte	0x67c
	.uleb128 0xd
	.4byte	0x66c
	.byte	0
	.uleb128 0xa
	.4byte	0x671
	.uleb128 0x3
	.4byte	.LASF164
	.byte	0x6
	.byte	0xc8
	.byte	0x2
	.4byte	0x624
	.uleb128 0x10
	.byte	0x1c
	.byte	0xcd
	.4byte	0x6e9
	.uleb128 0x2
	.4byte	.LASF165
	.byte	0xce
	.byte	0xd
	.4byte	0x1f9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0xcf
	.byte	0xd
	.4byte	0x1f9
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF166
	.byte	0xd0
	.byte	0x1c
	.4byte	0x245
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF167
	.byte	0xd1
	.byte	0x17
	.4byte	0x6e9
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF168
	.byte	0xd2
	.byte	0xe
	.4byte	0x218
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF169
	.byte	0xd3
	.byte	0xe
	.4byte	0x6ee
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF170
	.byte	0xd4
	.byte	0x11
	.4byte	0x32f
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	0x618
	.uleb128 0x11
	.4byte	0x218
	.4byte	0x6fe
	.uleb128 0xc
	.4byte	0x23e
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0x6
	.byte	0xd6
	.byte	0x2
	.4byte	0x68d
	.uleb128 0x11
	.4byte	0x391
	.4byte	0x720
	.uleb128 0xc
	.4byte	0x23e
	.byte	0x3
	.uleb128 0xc
	.4byte	0x23e
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF172
	.byte	0x36
	.byte	0x1b
	.4byte	0x70a
	.uleb128 0x5
	.byte	0x3
	.4byte	dmaIntCbfArra
	.uleb128 0x11
	.4byte	0x5e0
	.4byte	0x747
	.uleb128 0xc
	.4byte	0x23e
	.byte	0x3
	.uleb128 0xc
	.4byte	0x23e
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF173
	.byte	0x3c
	.byte	0x1a
	.4byte	0x731
	.uleb128 0x5
	.byte	0x3
	.4byte	PingPongListArra
	.uleb128 0x16
	.4byte	.LASF174
	.byte	0x72
	.4byte	0x768
	.uleb128 0xd
	.4byte	0x218
	.byte	0
	.uleb128 0x16
	.4byte	.LASF175
	.byte	0x73
	.4byte	0x778
	.uleb128 0xd
	.4byte	0x218
	.byte	0
	.uleb128 0x21
	.4byte	.LASF213
	.byte	0x5
	.byte	0x8b
	.byte	0xb
	.4byte	0x798
	.4byte	0x798
	.uleb128 0xd
	.4byte	0x798
	.uleb128 0xd
	.4byte	0x79d
	.uleb128 0xd
	.4byte	0x218
	.byte	0
	.uleb128 0xa
	.4byte	0x218
	.uleb128 0xa
	.4byte	0x224
	.uleb128 0xe
	.4byte	.LASF178
	.2byte	0x2e0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e5
	.uleb128 0x4
	.4byte	.LASF161
	.2byte	0x2e0
	.byte	0x2d
	.4byte	0x4a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x4
	.4byte	.LASF176
	.2byte	0x2e0
	.byte	0x42
	.4byte	0x4d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x4
	.4byte	.LASF177
	.2byte	0x2e0
	.byte	0x5c
	.4byte	0x391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF179
	.2byte	0x28c
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x845
	.uleb128 0x9
	.string	"ch"
	.2byte	0x28c
	.byte	0x1a
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x4
	.4byte	.LASF176
	.2byte	0x28c
	.byte	0x2a
	.4byte	0x4d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x4
	.4byte	.LASF180
	.2byte	0x28c
	.byte	0x40
	.4byte	0x379
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x5
	.4byte	.LASF181
	.2byte	0x28e
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF182
	.2byte	0x290
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF183
	.2byte	0x272
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x86a
	.uleb128 0x4
	.4byte	.LASF184
	.2byte	0x272
	.byte	0x2c
	.4byte	0x86a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	0x681
	.uleb128 0xf
	.4byte	.LASF185
	.2byte	0x24a
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b2
	.uleb128 0x4
	.4byte	.LASF184
	.2byte	0x24a
	.byte	0x2b
	.4byte	0x86a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF186
	.2byte	0x24a
	.byte	0x48
	.4byte	0x66c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF187
	.2byte	0x24c
	.byte	0x18
	.4byte	0x66c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF189
	.2byte	0x238
	.byte	0x15
	.4byte	0x66c
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8dc
	.uleb128 0x4
	.4byte	.LASF184
	.2byte	0x238
	.byte	0x49
	.4byte	0x86a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF188
	.2byte	0x225
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x901
	.uleb128 0x4
	.4byte	.LASF184
	.2byte	0x225
	.byte	0x37
	.4byte	0x86a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF190
	.2byte	0x204
	.byte	0xd
	.4byte	0x30a
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x958
	.uleb128 0x4
	.4byte	.LASF191
	.2byte	0x204
	.byte	0x42
	.4byte	0x958
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF192
	.2byte	0x204
	.byte	0x57
	.4byte	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x4
	.4byte	.LASF193
	.2byte	0x204
	.byte	0x72
	.4byte	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF194
	.2byte	0x205
	.byte	0x1c
	.4byte	0x245
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	0x6fe
	.uleb128 0xf
	.4byte	.LASF195
	.2byte	0x1f6
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x982
	.uleb128 0x4
	.4byte	.LASF191
	.2byte	0x1f6
	.byte	0x2f
	.4byte	0x958
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF196
	.2byte	0x1e4
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a7
	.uleb128 0x4
	.4byte	.LASF191
	.2byte	0x1e4
	.byte	0x30
	.4byte	0x958
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF197
	.2byte	0x1ad
	.byte	0xd
	.4byte	0x30a
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d1
	.uleb128 0x4
	.4byte	.LASF191
	.2byte	0x1ad
	.byte	0x36
	.4byte	0x958
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF198
	.2byte	0x198
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa13
	.uleb128 0x9
	.string	"ch"
	.2byte	0x198
	.byte	0x1d
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x9
	.string	"LLI"
	.2byte	0x198
	.byte	0x2a
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF182
	.2byte	0x19b
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF199
	.2byte	0x17c
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa64
	.uleb128 0x9
	.string	"ch"
	.2byte	0x17c
	.byte	0x1b
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x4
	.4byte	.LASF200
	.2byte	0x17c
	.byte	0x30
	.4byte	0x6e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF181
	.2byte	0x17e
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF182
	.2byte	0x180
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF201
	.2byte	0x165
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa6
	.uleb128 0x9
	.string	"ch"
	.2byte	0x165
	.byte	0x22
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x5
	.4byte	.LASF181
	.2byte	0x167
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF182
	.2byte	0x169
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF202
	.2byte	0x14f
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae8
	.uleb128 0x9
	.string	"ch"
	.2byte	0x14f
	.byte	0x21
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x5
	.4byte	.LASF181
	.2byte	0x151
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF182
	.2byte	0x153
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF203
	.2byte	0x13b
	.byte	0xd
	.4byte	0x354
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb20
	.uleb128 0x9
	.string	"ch"
	.2byte	0x13b
	.byte	0x29
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x5
	.4byte	.LASF182
	.2byte	0x13e
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF204
	.2byte	0x128
	.byte	0xa
	.4byte	0x218
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb58
	.uleb128 0x9
	.string	"ch"
	.2byte	0x128
	.byte	0x2a
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x5
	.4byte	.LASF182
	.2byte	0x12b
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF205
	.2byte	0x110
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb8
	.uleb128 0x9
	.string	"ch"
	.2byte	0x110
	.byte	0x2b
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x4
	.4byte	.LASF206
	.2byte	0x110
	.byte	0x38
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"len"
	.2byte	0x110
	.byte	0x4a
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF181
	.2byte	0x112
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF182
	.2byte	0x114
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF207
	.byte	0xf6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc12
	.uleb128 0x18
	.string	"ch"
	.byte	0xf6
	.byte	0x2b
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x19
	.4byte	.LASF206
	.byte	0xf6
	.byte	0x38
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"len"
	.byte	0xf6
	.byte	0x4a
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF181
	.byte	0xf8
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF182
	.byte	0xfa
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF208
	.byte	0xc5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc51
	.uleb128 0x19
	.4byte	.LASF209
	.byte	0xc5
	.byte	0x2d
	.4byte	0xc51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF181
	.byte	0xc7
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF182
	.byte	0xc9
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	0x59c
	.uleb128 0x15
	.4byte	.LASF210
	.byte	0xb2
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc87
	.uleb128 0x8
	.4byte	.LASF181
	.byte	0xb4
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF182
	.byte	0xb6
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.4byte	.LASF214
	.byte	0x1
	.byte	0x9f
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF181
	.byte	0xa1
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF182
	.byte	0xa3
	.byte	0xe
	.4byte	0x218
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x9
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 22
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.4byte	0xbc
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF101:
	.string	"BL_Sts_Type"
.LASF94:
	.string	"ERROR"
.LASF175:
	.string	"clic_disable_interrupt"
.LASF8:
	.string	"L1C_BMX_ERR_IRQn"
.LASF4:
	.string	"MEXT_IRQn"
.LASF13:
	.string	"SDIO_IRQn"
.LASF56:
	.string	"PDS_WAKEUP_IRQn"
.LASF137:
	.string	"DMA_Chan_Type"
.LASF61:
	.string	"BZ_PHY_IRQn"
.LASF144:
	.string	"srcDmaAddr"
.LASF82:
	.string	"unsigned int"
.LASF204:
	.string	"DMA_Channel_TranferSize"
.LASF79:
	.string	"uint32_t"
.LASF68:
	.string	"MAC_PORT_TRG_IRQn"
.LASF151:
	.string	"srcAddrInc"
.LASF59:
	.string	"BOR_IRQn"
.LASF176:
	.string	"intType"
.LASF7:
	.string	"BMX_TO_IRQn"
.LASF171:
	.string	"DMA_LLI_PP_Struct"
.LASF73:
	.string	"short int"
.LASF20:
	.string	"SEC_SHA_IRQn"
.LASF198:
	.string	"DMA_LLI_Update"
.LASF83:
	.string	"TransferSize"
.LASF155:
	.string	"DMA_Channel_Cfg_Type"
.LASF44:
	.string	"TIMER_WDT_IRQn"
.LASF29:
	.string	"SF_CTRL_IRQn"
.LASF130:
	.string	"DMA_REQ_NONE"
.LASF141:
	.string	"DMA_INT_Type"
.LASF200:
	.string	"lliCfg"
.LASF164:
	.string	"DMA_LLI_PP_Buf"
.LASF96:
	.string	"BL_Err_Type"
.LASF58:
	.string	"HBN_OUT1_IRQn"
.LASF147:
	.string	"srcTransfWidth"
.LASF89:
	.string	"reserved_25"
.LASF154:
	.string	"dstPeriph"
.LASF146:
	.string	"transfLength"
.LASF156:
	.string	"nextLLI"
.LASF50:
	.string	"GPIO_INT0_IRQn"
.LASF150:
	.string	"dstBurstSzie"
.LASF179:
	.string	"DMA_IntMask"
.LASF127:
	.string	"DMA_REQ_SPI_TX"
.LASF81:
	.string	"long long unsigned int"
.LASF178:
	.string	"DMA_Int_Callback_Install"
.LASF9:
	.string	"L1C_BMX_TO_IRQn"
.LASF160:
	.string	"idleIndex"
.LASF12:
	.string	"RF_TOP_INT1_IRQn"
.LASF138:
	.string	"DMA_INT_TCOMPLETED"
.LASF47:
	.string	"RESERVED12"
.LASF128:
	.string	"DMA_REQ_GPADC0"
.LASF106:
	.string	"DMA_TRNS_WIDTH_8BITS"
.LASF136:
	.string	"DMA_CH_MAX"
.LASF107:
	.string	"DMA_TRNS_WIDTH_16BITS"
.LASF42:
	.string	"TIMER_CH0_IRQn"
.LASF103:
	.string	"MASK"
.LASF116:
	.string	"DMA_BURST_SIZE_4"
.LASF190:
	.string	"DMA_LLI_PpStruct_Set_Transfer_Len"
.LASF206:
	.string	"memAddr"
.LASF87:
	.string	"DWidth"
.LASF85:
	.string	"DBSize"
.LASF191:
	.string	"dmaPpStruct"
.LASF36:
	.string	"UART1_IRQn"
.LASF181:
	.string	"tmpVal"
.LASF86:
	.string	"SWidth"
.LASF84:
	.string	"SBSize"
.LASF69:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF21:
	.string	"DMA_ALL_IRQn"
.LASF33:
	.string	"SPI_IRQn"
.LASF205:
	.string	"DMA_Channel_Update_DstMemcfg"
.LASF122:
	.string	"DMA_REQ_UART1_RX"
.LASF93:
	.string	"SUCCESS"
.LASF92:
	.string	"char"
.LASF97:
	.string	"DISABLE"
.LASF38:
	.string	"I2C_IRQn"
.LASF199:
	.string	"DMA_LLI_Init"
.LASF197:
	.string	"DMA_LLI_PpStruct_Init"
.LASF170:
	.string	"is_single_mode"
.LASF119:
	.string	"DMA_Burst_Size_Type"
.LASF185:
	.string	"DMA_LLI_PpBuf_Append"
.LASF76:
	.string	"uint8_t"
.LASF166:
	.string	"dmaCtrlRegVal"
.LASF66:
	.string	"MAC_TX_TRG_IRQn"
.LASF102:
	.string	"UNMASK"
.LASF163:
	.string	"onTransCompleted"
.LASF192:
	.string	"Ping_Transfer_len"
.LASF165:
	.string	"trans_index"
.LASF143:
	.string	"PONG_INDEX"
.LASF145:
	.string	"destDmaAddr"
.LASF196:
	.string	"DMA_LLI_PpStruct_Start"
.LASF187:
	.string	"pLliList"
.LASF75:
	.string	"long long int"
.LASF95:
	.string	"TIMEOUT"
.LASF202:
	.string	"DMA_Channel_Enable"
.LASF208:
	.string	"DMA_Channel_Init"
.LASF214:
	.string	"DMA_Enable"
.LASF131:
	.string	"DMA_Periph_Req_Type"
.LASF203:
	.string	"DMA_Channel_Is_Busy"
.LASF152:
	.string	"destAddrInc"
.LASF201:
	.string	"DMA_Channel_Disable"
.LASF62:
	.string	"BLE_IRQn"
.LASF118:
	.string	"DMA_BURST_SIZE_16"
.LASF212:
	.string	"DMA_Control_Reg"
.LASF109:
	.string	"DMA_Trans_Width_Type"
.LASF123:
	.string	"DMA_REQ_UART1_TX"
.LASF177:
	.string	"cbFun"
.LASF57:
	.string	"HBN_OUT0_IRQn"
.LASF70:
	.string	"IRQn_LAST"
.LASF132:
	.string	"DMA_CH0"
.LASF40:
	.string	"PWM_IRQn"
.LASF134:
	.string	"DMA_CH2"
.LASF135:
	.string	"DMA_CH3"
.LASF6:
	.string	"BMX_ERR_IRQn"
.LASF14:
	.string	"DMA_BMX_ERR_IRQn"
.LASF193:
	.string	"Pong_Transfer_len"
.LASF183:
	.string	"DMA_LLI_PpBuf_Destroy"
.LASF67:
	.string	"MAC_GEN_IRQn"
.LASF174:
	.string	"clic_enable_interrupt"
.LASF11:
	.string	"RF_TOP_INT0_IRQn"
.LASF91:
	.string	"long double"
.LASF77:
	.string	"uint16_t"
.LASF32:
	.string	"EFUSE_IRQn"
.LASF158:
	.string	"DMA_LLI_Ctrl_Type"
.LASF159:
	.string	"DMA_LLI_Cfg_Type"
.LASF10:
	.string	"SEC_BMX_ERR_IRQn"
.LASF64:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF149:
	.string	"srcBurstSzie"
.LASF45:
	.string	"RESERVED10"
.LASF172:
	.string	"dmaIntCbfArra"
.LASF22:
	.string	"RESERVED0"
.LASF23:
	.string	"RESERVED1"
.LASF24:
	.string	"RESERVED2"
.LASF27:
	.string	"RESERVED3"
.LASF28:
	.string	"RESERVED4"
.LASF30:
	.string	"RESERVED5"
.LASF34:
	.string	"RESERVED6"
.LASF37:
	.string	"RESERVED7"
.LASF39:
	.string	"RESERVED8"
.LASF41:
	.string	"RESERVED9"
.LASF74:
	.string	"long int"
.LASF167:
	.string	"DMA_LLI_Cfg"
.LASF110:
	.string	"DMA_TRNS_M2M"
.LASF111:
	.string	"DMA_TRNS_M2P"
.LASF129:
	.string	"DMA_REQ_GPADC1"
.LASF168:
	.string	"operatePeriphAddr"
.LASF35:
	.string	"UART0_IRQn"
.LASF100:
	.string	"RESET"
.LASF26:
	.string	"IRRX_IRQn"
.LASF157:
	.string	"dmaCtrl"
.LASF15:
	.string	"SEC_GMAC_IRQn"
.LASF65:
	.string	"MAC_RX_TRG_IRQn"
.LASF194:
	.string	"dmaCtrlRegVal_temp"
.LASF180:
	.string	"intMask"
.LASF60:
	.string	"WIFI_IRQn"
.LASF142:
	.string	"PING_INDEX"
.LASF153:
	.string	"srcPeriph"
.LASF186:
	.string	"dmaLliList"
.LASF188:
	.string	"DMA_LLI_PpBuf_Start_New_Transmit"
.LASF162:
	.string	"lliListHeader"
.LASF105:
	.string	"intCallback_Type"
.LASF98:
	.string	"ENABLE"
.LASF16:
	.string	"SEC_CDET_IRQn"
.LASF124:
	.string	"DMA_REQ_I2C_RX"
.LASF80:
	.string	"long unsigned int"
.LASF139:
	.string	"DMA_INT_ERR"
.LASF3:
	.string	"MTIME_IRQn"
.LASF117:
	.string	"DMA_BURST_SIZE_8"
.LASF104:
	.string	"BL_Mask_Type"
.LASF17:
	.string	"SEC_PKA_IRQn"
.LASF115:
	.string	"DMA_BURST_SIZE_1"
.LASF140:
	.string	"DMA_INT_ALL"
.LASF189:
	.string	"DMA_LLI_PpBuf_Remove_Completed_List"
.LASF99:
	.string	"BL_Fun_Type"
.LASF209:
	.string	"chCfg"
.LASF31:
	.string	"GPADC_DMA_IRQn"
.LASF120:
	.string	"DMA_REQ_UART0_RX"
.LASF71:
	.string	"unsigned char"
.LASF5:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF207:
	.string	"DMA_Channel_Update_SrcMemcfg"
.LASF161:
	.string	"dmaChan"
.LASF25:
	.string	"IRTX_IRQn"
.LASF2:
	.string	"MSOFT_IRQn"
.LASF46:
	.string	"RESERVED11"
.LASF19:
	.string	"SEC_AES_IRQn"
.LASF48:
	.string	"RESERVED13"
.LASF49:
	.string	"RESERVED14"
.LASF51:
	.string	"RESERVED16"
.LASF52:
	.string	"RESERVED17"
.LASF53:
	.string	"RESERVED18"
.LASF54:
	.string	"RESERVED19"
.LASF213:
	.string	"BL602_MemCpy4"
.LASF182:
	.string	"DMAChs"
.LASF148:
	.string	"dstTransfWidth"
.LASF112:
	.string	"DMA_TRNS_P2M"
.LASF113:
	.string	"DMA_TRNS_P2P"
.LASF114:
	.string	"DMA_Trans_Dir_Type"
.LASF173:
	.string	"PingPongListArra"
.LASF18:
	.string	"SEC_TRNG_IRQn"
.LASF72:
	.string	"signed char"
.LASF43:
	.string	"TIMER_CH1_IRQn"
.LASF78:
	.string	"short unsigned int"
.LASF125:
	.string	"DMA_REQ_I2C_TX"
.LASF55:
	.string	"RESERVED20"
.LASF184:
	.string	"dmaPpBuf"
.LASF169:
	.string	"chache_buf_addr"
.LASF210:
	.string	"DMA_Disable"
.LASF108:
	.string	"DMA_TRNS_WIDTH_32BITS"
.LASF121:
	.string	"DMA_REQ_UART0_TX"
.LASF88:
	.string	"SLargerD"
.LASF211:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF195:
	.string	"DMA_LLI_PpStruct_Stop"
.LASF63:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF126:
	.string	"DMA_REQ_SPI_RX"
.LASF90:
	.string	"Prot"
.LASF133:
	.string	"DMA_CH1"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dma.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
