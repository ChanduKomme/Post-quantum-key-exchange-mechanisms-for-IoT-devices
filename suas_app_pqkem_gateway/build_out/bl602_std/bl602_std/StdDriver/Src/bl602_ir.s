	.file	"bl602_ir.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_ir.c"
	.section	.sbss.irIntCbfArra,"aw",@nobits
	.align	2
	.type	irIntCbfArra, @object
	.size	irIntCbfArra, 8
irIntCbfArra:
	.zero	8
	.section	.text.IR_TxInit,"ax",@progbits
	.align	1
	.globl	IR_TxInit
	.type	IR_TxInit, @function
IR_TxInit:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_ir.c"
	.loc 1 157 1
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
	.loc 1 160 15
	li	a5,1073782784
	addi	a5,a5,1536
	.loc 1 160 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 162 25
	lw	a4,-20(s0)
	li	a5,-258048
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 162 75
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 162 85
	addi	a5,a5,-1
	.loc 1 162 88
	slli	a5,a5,12
	.loc 1 162 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 164 22
	lw	a5,-36(s0)
	lbu	a4,1(a5)
	.loc 1 164 76
	li	a5,1
	bne	a4,a5,.L2
	.loc 1 164 50 discriminator 1
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L3
.L2:
	.loc 1 164 84 discriminator 2
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,2047
	and	a5,a4,a5
	sw	a5,-20(s0)
.L3:
	.loc 1 165 22
	lw	a5,-36(s0)
	lbu	a4,2(a5)
	.loc 1 165 69
	li	a5,1
	bne	a4,a5,.L4
	.loc 1 165 43 discriminator 1
	lw	a5,-20(s0)
	ori	a5,a5,1024
	sw	a5,-20(s0)
	j	.L5
.L4:
	.loc 1 165 77 discriminator 2
	lw	a5,-20(s0)
	andi	a5,a5,-1025
	sw	a5,-20(s0)
.L5:
	.loc 1 167 22
	lw	a5,-36(s0)
	lbu	a4,3(a5)
	.loc 1 167 75
	li	a5,1
	bne	a4,a5,.L6
	.loc 1 167 50 discriminator 1
	lw	a5,-20(s0)
	ori	a5,a5,512
	sw	a5,-20(s0)
	j	.L7
.L6:
	.loc 1 167 83 discriminator 2
	lw	a5,-20(s0)
	andi	a5,a5,-513
	sw	a5,-20(s0)
.L7:
	.loc 1 168 22
	lw	a5,-36(s0)
	lbu	a4,4(a5)
	.loc 1 168 68
	li	a5,1
	bne	a4,a5,.L8
	.loc 1 168 43 discriminator 1
	lw	a5,-20(s0)
	ori	a5,a5,256
	sw	a5,-20(s0)
	j	.L9
.L8:
	.loc 1 168 76 discriminator 2
	lw	a5,-20(s0)
	andi	a5,a5,-257
	sw	a5,-20(s0)
.L9:
	.loc 1 170 22
	lw	a5,-36(s0)
	lbu	a4,5(a5)
	.loc 1 170 77
	li	a5,1
	bne	a4,a5,.L10
	.loc 1 170 52 discriminator 1
	lw	a5,-20(s0)
	ori	a5,a5,64
	sw	a5,-20(s0)
	j	.L11
.L10:
	.loc 1 170 85 discriminator 2
	lw	a5,-20(s0)
	andi	a5,a5,-65
	sw	a5,-20(s0)
.L11:
	.loc 1 171 22
	lw	a5,-36(s0)
	lbu	a4,6(a5)
	.loc 1 171 77
	li	a5,1
	bne	a4,a5,.L12
	.loc 1 171 52 discriminator 1
	lw	a5,-20(s0)
	ori	a5,a5,32
	sw	a5,-20(s0)
	j	.L13
.L12:
	.loc 1 171 85 discriminator 2
	lw	a5,-20(s0)
	andi	a5,a5,-33
	sw	a5,-20(s0)
.L13:
	.loc 1 173 22
	lw	a5,-36(s0)
	lbu	a4,7(a5)
	.loc 1 173 68
	li	a5,1
	bne	a4,a5,.L14
	.loc 1 173 43 discriminator 1
	lw	a5,-20(s0)
	ori	a5,a5,16
	sw	a5,-20(s0)
	j	.L15
.L14:
	.loc 1 173 76 discriminator 2
	lw	a5,-20(s0)
	andi	a5,a5,-17
	sw	a5,-20(s0)
.L15:
	.loc 1 175 22
	lw	a5,-36(s0)
	lbu	a4,8(a5)
	.loc 1 175 75
	li	a5,1
	bne	a4,a5,.L16
	.loc 1 175 50 discriminator 1
	lw	a5,-20(s0)
	ori	a5,a5,4
	sw	a5,-20(s0)
	j	.L17
.L16:
	.loc 1 175 83 discriminator 2
	lw	a5,-20(s0)
	andi	a5,a5,-5
	sw	a5,-20(s0)
.L17:
	.loc 1 177 22
	lw	a5,-36(s0)
	lbu	a4,9(a5)
	.loc 1 177 72
	li	a5,1
	bne	a4,a5,.L18
	.loc 1 177 47 discriminator 1
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	j	.L19
.L18:
	.loc 1 177 80 discriminator 2
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
.L19:
	.loc 1 180 7
	li	a5,1073782784
	addi	a5,a5,1536
	.loc 1 180 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 182 12
	li	a5,0
	.loc 1 183 1
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
	.size	IR_TxInit, .-IR_TxInit
	.section	.text.IR_TxPulseWidthConfig,"ax",@progbits
	.align	1
	.globl	IR_TxPulseWidthConfig
	.type	IR_TxPulseWidthConfig, @function
IR_TxPulseWidthConfig:
.LFB9:
	.loc 1 194 1
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
	.loc 1 197 15
	li	a5,1073782784
	addi	a5,a5,1556
	.loc 1 197 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 199 25
	lw	a5,-20(s0)
	andi	a5,a5,-16
	.loc 1 199 84
	lw	a4,-36(s0)
	lbu	a4,1(a4)
	.loc 1 199 104
	addi	a4,a4,-1
	.loc 1 199 12
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 201 25
	lw	a5,-20(s0)
	andi	a4,a5,-241
	.loc 1 201 84
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 201 104
	addi	a5,a5,-1
	.loc 1 201 107
	slli	a5,a5,4
	.loc 1 201 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 203 25
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,255
	and	a4,a4,a5
	.loc 1 203 84
	lw	a5,-36(s0)
	lbu	a5,3(a5)
	.loc 1 203 104
	addi	a5,a5,-1
	.loc 1 203 107
	slli	a5,a5,8
	.loc 1 203 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 205 25
	lw	a4,-20(s0)
	li	a5,-61440
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 205 85
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	.loc 1 205 105
	addi	a5,a5,-1
	.loc 1 205 108
	slli	a5,a5,12
	.loc 1 205 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 207 25
	lw	a4,-20(s0)
	li	a5,-983040
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 207 85
	lw	a5,-36(s0)
	lbu	a5,5(a5)
	.loc 1 207 103
	addi	a5,a5,-1
	.loc 1 207 106
	slli	a5,a5,16
	.loc 1 207 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 209 25
	lw	a4,-20(s0)
	li	a5,-15728640
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 209 85
	lw	a5,-36(s0)
	lbu	a5,4(a5)
	.loc 1 209 103
	addi	a5,a5,-1
	.loc 1 209 106
	slli	a5,a5,20
	.loc 1 209 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 211 25
	lw	a4,-20(s0)
	li	a5,-251658240
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 211 85
	lw	a5,-36(s0)
	lbu	a5,7(a5)
	.loc 1 211 103
	addi	a5,a5,-1
	.loc 1 211 106
	slli	a5,a5,24
	.loc 1 211 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 213 25
	lw	a4,-20(s0)
	li	a5,268435456
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 213 85
	lw	a5,-36(s0)
	lbu	a5,6(a5)
	.loc 1 213 103
	addi	a5,a5,-1
	.loc 1 213 106
	slli	a5,a5,28
	.loc 1 213 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 214 7
	li	a5,1073782784
	addi	a5,a5,1556
	.loc 1 214 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 216 15
	li	a5,1073782784
	addi	a5,a5,1552
	.loc 1 216 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 218 25
	lw	a4,-20(s0)
	li	a5,-16711680
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 218 85
	lw	a5,-36(s0)
	lbu	a5,9(a5)
	.loc 1 218 98
	addi	a5,a5,-1
	.loc 1 218 101
	slli	a5,a5,16
	.loc 1 218 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 220 25
	lw	a4,-20(s0)
	li	a5,16777216
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 220 85
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	.loc 1 220 98
	addi	a5,a5,-1
	.loc 1 220 101
	slli	a5,a5,24
	.loc 1 220 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 222 25
	lw	a4,-20(s0)
	li	a5,-4096
	and	a5,a4,a5
	.loc 1 222 85
	lw	a4,-36(s0)
	lhu	a4,10(a4)
	.loc 1 222 101
	addi	a4,a4,-1
	.loc 1 222 12
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 223 7
	li	a5,1073782784
	addi	a5,a5,1552
	.loc 1 223 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 225 12
	li	a5,0
	.loc 1 226 1
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
	.size	IR_TxPulseWidthConfig, .-IR_TxPulseWidthConfig
	.section	.text.IR_TxSWMPulseWidthConfig,"ax",@progbits
	.align	1
	.globl	IR_TxSWMPulseWidthConfig
	.type	IR_TxSWMPulseWidthConfig, @function
IR_TxSWMPulseWidthConfig:
.LFB10:
	.loc 1 237 1
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
	.loc 1 239 7
	li	a5,1073782784
	addi	a5,a5,1600
	.loc 1 239 82
	lw	a4,-20(s0)
	lw	a4,0(a4)
	.loc 1 239 60
	sw	a4,0(a5)
	.loc 1 240 7
	li	a5,1073782784
	addi	a5,a5,1604
	.loc 1 240 82
	lw	a4,-20(s0)
	lw	a4,4(a4)
	.loc 1 240 60
	sw	a4,0(a5)
	.loc 1 241 7
	li	a5,1073782784
	addi	a5,a5,1608
	.loc 1 241 82
	lw	a4,-20(s0)
	lw	a4,8(a4)
	.loc 1 241 60
	sw	a4,0(a5)
	.loc 1 242 7
	li	a5,1073782784
	addi	a5,a5,1612
	.loc 1 242 82
	lw	a4,-20(s0)
	lw	a4,12(a4)
	.loc 1 242 60
	sw	a4,0(a5)
	.loc 1 243 7
	li	a5,1073782784
	addi	a5,a5,1616
	.loc 1 243 82
	lw	a4,-20(s0)
	lw	a4,16(a4)
	.loc 1 243 60
	sw	a4,0(a5)
	.loc 1 244 7
	li	a5,1073782784
	addi	a5,a5,1620
	.loc 1 244 82
	lw	a4,-20(s0)
	lw	a4,20(a4)
	.loc 1 244 60
	sw	a4,0(a5)
	.loc 1 245 7
	li	a5,1073782784
	addi	a5,a5,1624
	.loc 1 245 82
	lw	a4,-20(s0)
	lw	a4,24(a4)
	.loc 1 245 60
	sw	a4,0(a5)
	.loc 1 246 7
	li	a5,1073782784
	addi	a5,a5,1628
	.loc 1 246 82
	lw	a4,-20(s0)
	lw	a4,28(a4)
	.loc 1 246 60
	sw	a4,0(a5)
	.loc 1 248 12
	li	a5,0
	.loc 1 249 1
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
.LFE10:
	.size	IR_TxSWMPulseWidthConfig, .-IR_TxSWMPulseWidthConfig
	.section	.text.IR_RxInit,"ax",@progbits
	.align	1
	.globl	IR_RxInit
	.type	IR_RxInit, @function
IR_RxInit:
.LFB11:
	.loc 1 260 1
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
	.loc 1 266 15
	li	a5,1073782784
	addi	a5,a5,1664
	.loc 1 266 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 268 19
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 268 5
	li	a4,2
	beq	a5,a4,.L26
	li	a4,2
	bgt	a5,a4,.L36
	beq	a5,zero,.L28
	li	a4,1
	beq	a5,a4,.L29
	.loc 1 280 13
	j	.L36
.L28:
	.loc 1 271 20
	lw	a5,-20(s0)
	andi	a5,a5,-13
	sw	a5,-20(s0)
	.loc 1 272 13
	j	.L30
.L29:
	.loc 1 274 33
	lw	a5,-20(s0)
	andi	a5,a5,-13
	.loc 1 274 20
	ori	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 275 13
	j	.L30
.L26:
	.loc 1 277 33
	lw	a5,-20(s0)
	andi	a5,a5,-13
	.loc 1 277 20
	ori	a5,a5,8
	sw	a5,-20(s0)
	.loc 1 278 13
	j	.L30
.L36:
	.loc 1 280 13
	nop
.L30:
	.loc 1 283 22
	lw	a5,-36(s0)
	lbu	a4,1(a5)
	.loc 1 283 71
	li	a5,1
	bne	a4,a5,.L31
	.loc 1 283 46 discriminator 1
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	j	.L32
.L31:
	.loc 1 283 79 discriminator 2
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
.L32:
	.loc 1 285 22
	lw	a5,-36(s0)
	lbu	a4,6(a5)
	.loc 1 285 69
	li	a5,1
	bne	a4,a5,.L33
	.loc 1 285 44 discriminator 1
	lw	a5,-20(s0)
	ori	a5,a5,16
	sw	a5,-20(s0)
	j	.L34
.L33:
	.loc 1 285 77 discriminator 2
	lw	a5,-20(s0)
	andi	a5,a5,-17
	sw	a5,-20(s0)
.L34:
	.loc 1 287 25
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,255
	and	a4,a4,a5
	.loc 1 287 74
	lw	a5,-36(s0)
	lbu	a5,7(a5)
	.loc 1 287 88
	slli	a5,a5,8
	.loc 1 287 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 289 7
	li	a5,1073782784
	addi	a5,a5,1664
	.loc 1 289 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 291 15
	li	a5,1073782784
	addi	a5,a5,1672
	.loc 1 291 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 293 25
	lw	a5,-20(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 293 76
	lw	a5,-36(s0)
	lhu	a5,2(a5)
	.loc 1 293 90
	addi	a5,a5,-1
	.loc 1 293 93
	slli	a5,a5,16
	.loc 1 293 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 295 25
	lw	a4,-20(s0)
	li	a5,-65536
	and	a5,a4,a5
	.loc 1 295 75
	lw	a4,-36(s0)
	lhu	a4,4(a4)
	.loc 1 295 90
	addi	a4,a4,-1
	.loc 1 295 12
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 297 7
	li	a5,1073782784
	addi	a5,a5,1672
	.loc 1 297 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 299 12
	li	a5,0
	.loc 1 300 1
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
	.size	IR_RxInit, .-IR_RxInit
	.section	.text.IR_DeInit,"ax",@progbits
	.align	1
	.globl	IR_DeInit
	.type	IR_DeInit, @function
IR_DeInit:
.LFB12:
	.loc 1 311 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 312 5
	li	a0,22
	call	GLB_AHB_Slave1_Reset
	.loc 1 314 12
	li	a5,0
	.loc 1 315 1
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
.LFE12:
	.size	IR_DeInit, .-IR_DeInit
	.section	.text.IR_Enable,"ax",@progbits
	.align	1
	.globl	IR_Enable
	.type	IR_Enable, @function
IR_Enable:
.LFB13:
	.loc 1 326 1
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
	.loc 1 332 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L40
	.loc 1 332 24 discriminator 1
	lbu	a4,-33(s0)
	li	a5,2
	bne	a4,a5,.L41
.L40:
	.loc 1 334 19
	li	a5,1073782784
	addi	a5,a5,1536
	.loc 1 334 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 335 11
	li	a5,1073782784
	addi	a5,a5,1536
	.loc 1 335 76
	lw	a4,-20(s0)
	ori	a4,a4,1
	.loc 1 335 63
	sw	a4,0(a5)
.L41:
	.loc 1 338 7
	lbu	a4,-33(s0)
	li	a5,1
	beq	a4,a5,.L42
	.loc 1 338 24 discriminator 1
	lbu	a4,-33(s0)
	li	a5,2
	bne	a4,a5,.L43
.L42:
	.loc 1 340 19
	li	a5,1073782784
	addi	a5,a5,1664
	.loc 1 340 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 341 11
	li	a5,1073782784
	addi	a5,a5,1664
	.loc 1 341 77
	lw	a4,-20(s0)
	ori	a4,a4,1
	.loc 1 341 64
	sw	a4,0(a5)
.L43:
	.loc 1 344 12
	li	a5,0
	.loc 1 345 1
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
	.size	IR_Enable, .-IR_Enable
	.section	.text.IR_Disable,"ax",@progbits
	.align	1
	.globl	IR_Disable
	.type	IR_Disable, @function
IR_Disable:
.LFB14:
	.loc 1 356 1
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
	.loc 1 362 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L46
	.loc 1 362 24 discriminator 1
	lbu	a4,-33(s0)
	li	a5,2
	bne	a4,a5,.L47
.L46:
	.loc 1 364 19
	li	a5,1073782784
	addi	a5,a5,1536
	.loc 1 364 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 365 11
	li	a5,1073782784
	addi	a5,a5,1536
	.loc 1 365 76
	lw	a4,-20(s0)
	andi	a4,a4,-2
	.loc 1 365 63
	sw	a4,0(a5)
.L47:
	.loc 1 368 7
	lbu	a4,-33(s0)
	li	a5,1
	beq	a4,a5,.L48
	.loc 1 368 24 discriminator 1
	lbu	a4,-33(s0)
	li	a5,2
	bne	a4,a5,.L49
.L48:
	.loc 1 370 19
	li	a5,1073782784
	addi	a5,a5,1664
	.loc 1 370 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 371 11
	li	a5,1073782784
	addi	a5,a5,1664
	.loc 1 371 77
	lw	a4,-20(s0)
	andi	a4,a4,-2
	.loc 1 371 64
	sw	a4,0(a5)
.L49:
	.loc 1 374 12
	li	a5,0
	.loc 1 375 1
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
	.size	IR_Disable, .-IR_Disable
	.section	.text.IR_TxSWM,"ax",@progbits
	.align	1
	.globl	IR_TxSWM
	.type	IR_TxSWM, @function
IR_TxSWM:
.LFB15:
	.loc 1 386 1
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
	.loc 1 390 15
	li	a5,1073782784
	addi	a5,a5,1536
	.loc 1 390 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 391 7
	lbu	a4,-33(s0)
	li	a5,1
	bne	a4,a5,.L52
	.loc 1 392 11
	li	a5,1073782784
	addi	a5,a5,1536
	.loc 1 392 76
	lw	a4,-20(s0)
	ori	a4,a4,8
	.loc 1 392 63
	sw	a4,0(a5)
	j	.L53
.L52:
	.loc 1 394 11
	li	a5,1073782784
	addi	a5,a5,1536
	.loc 1 394 76
	lw	a4,-20(s0)
	andi	a4,a4,-9
	.loc 1 394 63
	sw	a4,0(a5)
.L53:
	.loc 1 397 12
	li	a5,0
	.loc 1 398 1
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
	.size	IR_TxSWM, .-IR_TxSWM
	.section	.text.IR_RxFIFOClear,"ax",@progbits
	.align	1
	.globl	IR_RxFIFOClear
	.type	IR_RxFIFOClear, @function
IR_RxFIFOClear:
.LFB16:
	.loc 1 409 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 413 15
	li	a5,1073782784
	addi	a5,a5,1728
	.loc 1 413 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 414 7
	li	a5,1073782784
	addi	a5,a5,1728
	.loc 1 414 73
	lw	a4,-20(s0)
	ori	a4,a4,1
	.loc 1 414 60
	sw	a4,0(a5)
	.loc 1 416 12
	li	a5,0
	.loc 1 417 1
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
.LFE16:
	.size	IR_RxFIFOClear, .-IR_RxFIFOClear
	.section	.text.IR_SendData,"ax",@progbits
	.align	1
	.globl	IR_SendData
	.type	IR_SendData, @function
IR_SendData:
.LFB17:
	.loc 1 429 1
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
	.loc 1 434 7
	lbu	a5,-17(s0)
	bne	a5,zero,.L58
	.loc 1 435 11
	li	a5,1073782784
	addi	a5,a5,1544
	.loc 1 435 63
	lw	a4,-24(s0)
	sw	a4,0(a5)
	j	.L59
.L58:
	.loc 1 438 11
	li	a5,1073782784
	addi	a5,a5,1548
	.loc 1 438 63
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L59:
	.loc 1 441 12
	li	a5,0
	.loc 1 442 1
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
.LFE17:
	.size	IR_SendData, .-IR_SendData
	.section	.text.IR_SWMSendData,"ax",@progbits
	.align	1
	.globl	IR_SWMSendData
	.type	IR_SWMSendData, @function
IR_SWMSendData:
.LFB18:
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
	sw	a0,-36(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 455 13
	sb	zero,-17(s0)
	.loc 1 455 19
	sb	zero,-18(s0)
	.loc 1 456 14
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	sh	a5,-20(s0)
	.loc 1 458 14
	sw	zero,-24(s0)
	.loc 1 459 29
	lbu	a5,-37(s0)
	addi	a5,a5,7
	.loc 1 459 32
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	.loc 1 459 14
	sw	a5,-28(s0)
	.loc 1 462 10
	li	a5,1
	sb	a5,-17(s0)
	.loc 1 462 5
	j	.L62
.L64:
	.loc 1 463 24
	lbu	a5,-17(s0)
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lhu	a5,0(a5)
	.loc 1 463 11
	lhu	a4,-20(s0)
	bleu	a4,a5,.L63
	.loc 1 463 35 discriminator 1
	lbu	a5,-17(s0)
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lhu	a5,0(a5)
	.loc 1 463 28 discriminator 1
	beq	a5,zero,.L63
	.loc 1 464 27
	lbu	a5,-17(s0)
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 464 21
	lhu	a5,0(a5)
	sh	a5,-20(s0)
.L63:
	.loc 1 462 23 discriminator 2
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L62:
	.loc 1 462 14 discriminator 1
	lbu	a4,-17(s0)
	lbu	a5,-37(s0)
	bltu	a4,a5,.L64
	.loc 1 469 15
	li	a5,1073782784
	addi	a5,a5,1552
	.loc 1 469 12
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 470 73
	lw	a4,-32(s0)
	li	a5,-4096
	and	a3,a4,a5
	.loc 1 470 124
	lhu	a4,-20(s0)
	.loc 1 470 7
	li	a5,1073782784
	addi	a5,a5,1552
	.loc 1 470 102
	or	a4,a3,a4
	.loc 1 470 60
	sw	a4,0(a5)
	.loc 1 473 10
	sb	zero,-17(s0)
	.loc 1 473 5
	j	.L65
.L72:
	.loc 1 474 15
	sw	zero,-24(s0)
	.loc 1 475 13
	lbu	a4,-17(s0)
	.loc 1 475 19
	lw	a5,-28(s0)
	addi	a5,a5,-1
	.loc 1 475 11
	bgeu	a4,a5,.L66
	.loc 1 476 18
	sb	zero,-18(s0)
	.loc 1 476 13
	j	.L67
.L68:
	.loc 1 477 36
	lbu	a4,-18(s0)
	.loc 1 477 38
	lbu	a5,-17(s0)
	slli	a5,a5,3
	.loc 1 477 36
	add	a5,a4,a5
	.loc 1 477 34
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lhu	a5,0(a5)
	.loc 1 477 29
	slli	a4,a5,1
	.loc 1 477 41
	lhu	a5,-20(s0)
	add	a4,a4,a5
	.loc 1 477 53
	lhu	a5,-20(s0)
	slli	a5,a5,1
	.loc 1 477 50
	div	a5,a4,a5
	.loc 1 477 62
	addi	a5,a5,-1
	.loc 1 477 24
	andi	a5,a5,15
	sw	a5,-32(s0)
	.loc 1 478 36
	lbu	a5,-18(s0)
	slli	a5,a5,2
	.loc 1 478 32
	lw	a4,-32(s0)
	sll	a5,a4,a5
	.loc 1 478 23
	lw	a4,-24(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 476 26 discriminator 3
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L67:
	.loc 1 476 22 discriminator 1
	lbu	a4,-18(s0)
	li	a5,7
	bleu	a4,a5,.L68
	.loc 1 480 66
	lbu	a5,-17(s0)
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 480 64
	li	a5,1073782784
	addi	a5,a5,1600
	add	a5,a4,a5
	.loc 1 480 14
	mv	a4,a5
	.loc 1 480 70
	lw	a5,-24(s0)
	sw	a5,0(a4)
	j	.L69
.L66:
	.loc 1 482 18
	sb	zero,-18(s0)
	.loc 1 482 13
	j	.L70
.L71:
	.loc 1 483 36
	lbu	a4,-18(s0)
	.loc 1 483 38
	lbu	a5,-17(s0)
	slli	a5,a5,3
	.loc 1 483 36
	add	a5,a4,a5
	.loc 1 483 34
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lhu	a5,0(a5)
	.loc 1 483 29
	slli	a4,a5,1
	.loc 1 483 41
	lhu	a5,-20(s0)
	add	a4,a4,a5
	.loc 1 483 53
	lhu	a5,-20(s0)
	slli	a5,a5,1
	.loc 1 483 50
	div	a5,a4,a5
	.loc 1 483 62
	addi	a5,a5,-1
	.loc 1 483 24
	andi	a5,a5,15
	sw	a5,-32(s0)
	.loc 1 484 36
	lbu	a5,-18(s0)
	slli	a5,a5,2
	.loc 1 484 32
	lw	a4,-32(s0)
	sll	a5,a4,a5
	.loc 1 484 23
	lw	a4,-24(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 482 33 discriminator 3
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L70:
	.loc 1 482 22 discriminator 1
	lbu	a5,-37(s0)
	andi	a5,a5,7
	andi	a5,a5,0xff
	lbu	a4,-18(s0)
	bltu	a4,a5,.L71
	.loc 1 486 66
	lbu	a5,-17(s0)
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 486 64
	li	a5,1073782784
	addi	a5,a5,1600
	add	a5,a4,a5
	.loc 1 486 14
	mv	a4,a5
	.loc 1 486 70
	lw	a5,-24(s0)
	sw	a5,0(a4)
.L69:
	.loc 1 473 22 discriminator 2
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L65:
	.loc 1 473 14 discriminator 1
	lbu	a5,-17(s0)
	lw	a4,-28(s0)
	bgtu	a4,a5,.L72
	.loc 1 490 12
	li	a5,0
	.loc 1 491 1
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
	.size	IR_SWMSendData, .-IR_SWMSendData
	.section	.text.IR_SendCommand,"ax",@progbits
	.align	1
	.globl	IR_SendCommand
	.type	IR_SendCommand, @function
IR_SendCommand:
.LFB19:
	.loc 1 503 1
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
	.loc 1 504 14
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-20(s0)
	.loc 1 507 5
	lw	a1,-36(s0)
	li	a0,1
	call	IR_SendData
	.loc 1 508 5
	lw	a1,-40(s0)
	li	a0,0
	call	IR_SendData
	.loc 1 511 5
	li	a1,1
	li	a0,0
	call	IR_IntMask
	.loc 1 514 5
	li	a0,0
	call	IR_ClrIntStatus
	.loc 1 517 5
	li	a0,0
	call	IR_Enable
	.loc 1 520 10
	j	.L75
.L77:
	.loc 1 521 19
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 522 11
	lw	a5,-20(s0)
	bne	a5,zero,.L75
	.loc 1 523 13
	li	a0,0
	call	IR_Disable
	.loc 1 525 20
	li	a5,2
	j	.L76
.L75:
	.loc 1 520 18
	li	a0,0
	call	IR_GetIntStatus
	mv	a5,a0
	mv	a4,a5
	.loc 1 520 15 discriminator 1
	li	a5,1
	bne	a4,a5,.L77
	.loc 1 530 5
	li	a0,0
	call	IR_Disable
	.loc 1 533 5
	li	a0,0
	call	IR_ClrIntStatus
	.loc 1 535 12
	li	a5,0
.L76:
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
.LFE19:
	.size	IR_SendCommand, .-IR_SendCommand
	.section	.text.IR_SWMSendCommand,"ax",@progbits
	.align	1
	.globl	IR_SWMSendCommand
	.type	IR_SWMSendCommand, @function
IR_SWMSendCommand:
.LFB20:
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
	sw	a0,-36(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 549 14
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-20(s0)
	.loc 1 552 5
	lbu	a5,-37(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	IR_SWMSendData
	.loc 1 555 5
	li	a1,1
	li	a0,0
	call	IR_IntMask
	.loc 1 558 5
	li	a0,0
	call	IR_ClrIntStatus
	.loc 1 561 5
	li	a0,0
	call	IR_Enable
	.loc 1 564 10
	j	.L79
.L81:
	.loc 1 565 19
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 566 11
	lw	a5,-20(s0)
	bne	a5,zero,.L79
	.loc 1 567 13
	li	a0,0
	call	IR_Disable
	.loc 1 569 20
	li	a5,2
	j	.L80
.L79:
	.loc 1 564 18
	li	a0,0
	call	IR_GetIntStatus
	mv	a5,a0
	mv	a4,a5
	.loc 1 564 15 discriminator 1
	li	a5,1
	bne	a4,a5,.L81
	.loc 1 574 5
	li	a0,0
	call	IR_Disable
	.loc 1 577 5
	li	a0,0
	call	IR_ClrIntStatus
	.loc 1 579 12
	li	a5,0
.L80:
	.loc 1 580 1
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
	.size	IR_SWMSendCommand, .-IR_SWMSendCommand
	.section	.text.IR_SendNEC,"ax",@progbits
	.align	1
	.globl	IR_SendNEC
	.type	IR_SendNEC, @function
IR_SendNEC:
.LFB21:
	.loc 1 592 1
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
	.loc 1 593 25
	lbu	a5,-34(s0)
	not	a5,a5
	.loc 1 593 39
	slli	a4,a5,24
	.loc 1 593 53
	lbu	a5,-34(s0)
	slli	a5,a5,16
	.loc 1 593 44
	add	a4,a4,a5
	.loc 1 593 61
	lbu	a5,-33(s0)
	not	a5,a5
	.loc 1 593 75
	slli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 593 58
	add	a4,a4,a5
	.loc 1 593 79
	lbu	a5,-33(s0)
	add	a5,a4,a5
	.loc 1 593 14
	sw	a5,-20(s0)
	.loc 1 595 5
	lw	a1,-20(s0)
	li	a0,0
	call	IR_SendCommand
	.loc 1 597 12
	li	a5,0
	.loc 1 598 1
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
	.size	IR_SendNEC, .-IR_SendNEC
	.section	.text.IR_IntMask,"ax",@progbits
	.align	1
	.globl	IR_IntMask
	.type	IR_IntMask, @function
IR_IntMask:
.LFB22:
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
	mv	a4,a1
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 616 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L85
	.loc 1 616 29 discriminator 1
	lbu	a4,-33(s0)
	li	a5,2
	bne	a4,a5,.L86
.L85:
	.loc 1 618 19
	li	a5,1073782784
	addi	a5,a5,1540
	.loc 1 618 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 619 76
	lw	a5,-20(s0)
	andi	a3,a5,-257
	.loc 1 619 107
	lbu	a5,-34(s0)
	.loc 1 619 126
	slli	a4,a5,8
	.loc 1 619 11
	li	a5,1073782784
	addi	a5,a5,1540
	.loc 1 619 104
	or	a4,a3,a4
	.loc 1 619 63
	sw	a4,0(a5)
.L86:
	.loc 1 622 7
	lbu	a4,-33(s0)
	li	a5,1
	beq	a4,a5,.L87
	.loc 1 622 29 discriminator 1
	lbu	a4,-33(s0)
	li	a5,2
	bne	a4,a5,.L88
.L87:
	.loc 1 624 19
	li	a5,1073782784
	addi	a5,a5,1668
	.loc 1 624 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 625 77
	lw	a5,-20(s0)
	andi	a3,a5,-257
	.loc 1 625 108
	lbu	a5,-34(s0)
	.loc 1 625 127
	slli	a4,a5,8
	.loc 1 625 11
	li	a5,1073782784
	addi	a5,a5,1668
	.loc 1 625 105
	or	a4,a3,a4
	.loc 1 625 64
	sw	a4,0(a5)
.L88:
	.loc 1 628 12
	li	a5,0
	.loc 1 629 1
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
	.size	IR_IntMask, .-IR_IntMask
	.section	.text.IR_ClrIntStatus,"ax",@progbits
	.align	1
	.globl	IR_ClrIntStatus
	.type	IR_ClrIntStatus, @function
IR_ClrIntStatus:
.LFB23:
	.loc 1 640 1
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
	.loc 1 646 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L91
	.loc 1 646 29 discriminator 1
	lbu	a4,-33(s0)
	li	a5,2
	bne	a4,a5,.L92
.L91:
	.loc 1 648 19
	li	a5,1073782784
	addi	a5,a5,1540
	.loc 1 648 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 649 11
	li	a5,1073782784
	addi	a5,a5,1540
	.loc 1 649 76
	lw	a3,-20(s0)
	li	a4,65536
	or	a4,a3,a4
	.loc 1 649 63
	sw	a4,0(a5)
.L92:
	.loc 1 652 7
	lbu	a4,-33(s0)
	li	a5,1
	beq	a4,a5,.L93
	.loc 1 652 29 discriminator 1
	lbu	a4,-33(s0)
	li	a5,2
	bne	a4,a5,.L94
.L93:
	.loc 1 654 19
	li	a5,1073782784
	addi	a5,a5,1668
	.loc 1 654 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 655 11
	li	a5,1073782784
	addi	a5,a5,1668
	.loc 1 655 77
	lw	a3,-20(s0)
	li	a4,65536
	or	a4,a3,a4
	.loc 1 655 64
	sw	a4,0(a5)
.L94:
	.loc 1 658 12
	li	a5,0
	.loc 1 659 1
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
	.size	IR_ClrIntStatus, .-IR_ClrIntStatus
	.section	.text.IR_Int_Callback_Install,"ax",@progbits
	.align	1
	.globl	IR_Int_Callback_Install
	.type	IR_Int_Callback_Install, @function
IR_Int_Callback_Install:
.LFB24:
	.loc 1 671 1
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
	.loc 1 675 17
	lbu	a5,-17(s0)
	.loc 1 675 27
	lui	a4,%hi(irIntCbfArra)
	addi	a4,a4,%lo(irIntCbfArra)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 677 12
	li	a5,0
	.loc 1 678 1
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
	.size	IR_Int_Callback_Install, .-IR_Int_Callback_Install
	.section	.text.IR_GetIntStatus,"ax",@progbits
	.align	1
	.globl	IR_GetIntStatus
	.type	IR_GetIntStatus, @function
IR_GetIntStatus:
.LFB25:
	.loc 1 689 1
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
	.loc 1 690 14
	sw	zero,-20(s0)
	.loc 1 696 7
	lbu	a5,-33(s0)
	bne	a5,zero,.L99
	.loc 1 697 19
	li	a5,1073782784
	addi	a5,a5,1540
	.loc 1 697 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 698 16
	lw	a5,-20(s0)
	andi	a5,a5,1
	sw	a5,-20(s0)
	j	.L100
.L99:
	.loc 1 700 12
	lbu	a4,-33(s0)
	li	a5,1
	bne	a4,a5,.L100
	.loc 1 701 19
	li	a5,1073782784
	addi	a5,a5,1668
	.loc 1 701 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 702 16
	lw	a5,-20(s0)
	andi	a5,a5,1
	sw	a5,-20(s0)
.L100:
	.loc 1 705 7
	lw	a5,-20(s0)
	beq	a5,zero,.L101
	.loc 1 707 16
	li	a5,1
	j	.L102
.L101:
	.loc 1 709 16
	li	a5,0
.L102:
	.loc 1 711 1
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
	.size	IR_GetIntStatus, .-IR_GetIntStatus
	.section	.text.IR_GetRxFIFOStatus,"ax",@progbits
	.align	1
	.globl	IR_GetRxFIFOStatus
	.type	IR_GetRxFIFOStatus, @function
IR_GetRxFIFOStatus:
.LFB26:
	.loc 1 722 1
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
	.loc 1 729 15
	li	a5,1073782784
	addi	a5,a5,1728
	.loc 1 729 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 730 7
	lbu	a5,-33(s0)
	bne	a5,zero,.L104
	.loc 1 731 56
	lw	a5,-20(s0)
	srli	a5,a5,3
	.loc 1 731 16
	andi	a5,a5,1
	sw	a5,-20(s0)
	j	.L105
.L104:
	.loc 1 733 56
	lw	a5,-20(s0)
	srli	a5,a5,2
	.loc 1 733 16
	andi	a5,a5,1
	sw	a5,-20(s0)
.L105:
	.loc 1 736 7
	lw	a5,-20(s0)
	beq	a5,zero,.L106
	.loc 1 737 16
	li	a5,1
	j	.L107
.L106:
	.loc 1 739 16
	li	a5,0
.L107:
	.loc 1 741 1
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
	.size	IR_GetRxFIFOStatus, .-IR_GetRxFIFOStatus
	.section	.text.IR_ReceiveData,"ax",@progbits
	.align	1
	.globl	IR_ReceiveData
	.type	IR_ReceiveData, @function
IR_ReceiveData:
.LFB27:
	.loc 1 752 1
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
	.loc 1 759 7
	lbu	a5,-33(s0)
	bne	a5,zero,.L109
	.loc 1 760 19
	li	a5,1073782784
	addi	a5,a5,1684
	.loc 1 760 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	j	.L110
.L109:
	.loc 1 763 19
	li	a5,1073782784
	addi	a5,a5,1688
	.loc 1 763 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L110:
	.loc 1 765 12
	lw	a5,-20(s0)
	.loc 1 766 1
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
	.size	IR_ReceiveData, .-IR_ReceiveData
	.section	.text.IR_SWMReceiveData,"ax",@progbits
	.align	1
	.globl	IR_SWMReceiveData
	.type	IR_SWMReceiveData, @function
IR_SWMReceiveData:
.LFB28:
	.loc 1 778 1
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
	sb	a5,-37(s0)
	.loc 1 779 13
	sb	zero,-17(s0)
	.loc 1 781 10
	j	.L113
.L115:
	.loc 1 783 26
	li	a5,1073782784
	addi	a5,a5,1732
	lw	a3,0(a5)
	.loc 1 783 19
	lbu	a5,-17(s0)
	addi	a4,a5,1
	sb	a4,-17(s0)
	.loc 1 783 13
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 783 23
	slli	a4,a3,16
	srli	a4,a4,16
	sh	a4,0(a5)
.L113:
	.loc 1 781 24
	lbu	a4,-17(s0)
	lbu	a5,-37(s0)
	bgeu	a4,a5,.L114
	.loc 1 781 27 discriminator 1
	call	IR_GetRxFIFOCount
	mv	a5,a0
	.loc 1 781 24 discriminator 2
	bne	a5,zero,.L115
.L114:
	.loc 1 785 12
	lbu	a5,-17(s0)
	.loc 1 786 1
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
	.size	IR_SWMReceiveData, .-IR_SWMReceiveData
	.section	.text.IR_ReceiveNEC,"ax",@progbits
	.align	1
	.globl	IR_ReceiveNEC
	.type	IR_ReceiveNEC, @function
IR_ReceiveNEC:
.LFB29:
	.loc 1 798 1
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
	.loc 1 799 23
	li	a0,0
	call	IR_ReceiveData
	sw	a0,-20(s0)
	.loc 1 801 14
	lw	a5,-20(s0)
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	sb	a4,0(a5)
	.loc 1 802 23
	lw	a5,-20(s0)
	srli	a5,a5,16
	.loc 1 802 14
	andi	a4,a5,0xff
	lw	a5,-40(s0)
	sb	a4,0(a5)
	.loc 1 804 11
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 804 27
	mv	a4,a5
	.loc 1 804 38
	lw	a5,-20(s0)
	srli	a5,a5,8
	.loc 1 804 27
	xor	a5,a4,a5
	not	a5,a5
	andi	a5,a5,255
	.loc 1 804 7
	bne	a5,zero,.L118
	.loc 1 804 55 discriminator 1
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 804 53 discriminator 1
	not	a5,a5
	.loc 1 804 64 discriminator 1
	andi	a4,a5,255
	.loc 1 804 82 discriminator 1
	lw	a5,-20(s0)
	srli	a5,a5,24
	.loc 1 804 49 discriminator 1
	beq	a4,a5,.L119
.L118:
	.loc 1 805 16
	li	a5,1
	j	.L120
.L119:
	.loc 1 808 12
	li	a5,0
.L120:
	.loc 1 809 1
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
	.size	IR_ReceiveNEC, .-IR_ReceiveNEC
	.section	.text.IR_GetRxDataBitCount,"ax",@progbits
	.align	1
	.globl	IR_GetRxDataBitCount
	.type	IR_GetRxDataBitCount, @function
IR_GetRxDataBitCount:
.LFB30:
	.loc 1 820 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 824 15
	li	a5,1073782784
	addi	a5,a5,1680
	.loc 1 824 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 825 12
	lw	a5,-20(s0)
	andi	a5,a5,127
	sw	a5,-20(s0)
	.loc 1 827 12
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	.loc 1 828 1
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
.LFE30:
	.size	IR_GetRxDataBitCount, .-IR_GetRxDataBitCount
	.section	.text.IR_GetRxFIFOCount,"ax",@progbits
	.align	1
	.globl	IR_GetRxFIFOCount
	.type	IR_GetRxFIFOCount, @function
IR_GetRxFIFOCount:
.LFB31:
	.loc 1 839 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 843 15
	li	a5,1073782784
	addi	a5,a5,1728
	.loc 1 843 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 844 52
	lw	a5,-20(s0)
	srli	a5,a5,4
	.loc 1 844 12
	andi	a5,a5,127
	sw	a5,-20(s0)
	.loc 1 846 12
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	.loc 1 847 1
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
.LFE31:
	.size	IR_GetRxFIFOCount, .-IR_GetRxFIFOCount
	.section	.text.IR_LearnToInit,"ax",@progbits
	.align	1
	.globl	IR_LearnToInit
	.type	IR_LearnToInit, @function
IR_LearnToInit:
.LFB32:
	.loc 1 859 1
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
	.loc 1 861 14
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-20(s0)
	.loc 1 864 15
	li	a5,1073782784
	addi	a5,a5,1664
	.loc 1 864 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 865 12
	lw	a5,-24(s0)
	andi	a5,a5,-2
	sw	a5,-24(s0)
	.loc 1 866 25
	lw	a5,-24(s0)
	andi	a5,a5,-13
	.loc 1 866 12
	ori	a5,a5,8
	sw	a5,-24(s0)
	.loc 1 867 12
	lw	a5,-24(s0)
	ori	a5,a5,2
	sw	a5,-24(s0)
	.loc 1 868 7
	li	a5,1073782784
	addi	a5,a5,1664
	.loc 1 868 60
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 870 15
	li	a5,1073782784
	addi	a5,a5,1672
	.loc 1 870 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 871 73
	lw	a5,-24(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 1 871 7
	li	a5,1073782784
	addi	a5,a5,1672
	.loc 1 871 103
	li	a4,1310654464
	or	a4,a3,a4
	.loc 1 871 60
	sw	a4,0(a5)
	.loc 1 874 15
	li	a5,1073782784
	addi	a5,a5,1668
	.loc 1 874 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 875 12
	lw	a5,-24(s0)
	ori	a5,a5,256
	sw	a5,-24(s0)
	.loc 1 876 7
	li	a5,1073782784
	addi	a5,a5,1668
	.loc 1 876 73
	lw	a3,-24(s0)
	li	a4,65536
	or	a4,a3,a4
	.loc 1 876 60
	sw	a4,0(a5)
	.loc 1 879 15
	li	a5,1073782784
	addi	a5,a5,1664
	.loc 1 879 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 880 7
	li	a5,1073782784
	addi	a5,a5,1664
	.loc 1 880 73
	lw	a4,-24(s0)
	ori	a4,a4,1
	.loc 1 880 60
	sw	a4,0(a5)
	.loc 1 883 10
	j	.L126
.L128:
	.loc 1 884 19
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 885 11
	lw	a5,-20(s0)
	bne	a5,zero,.L126
	.loc 1 886 13
	li	a0,1
	call	IR_Disable
	.loc 1 888 20
	li	a5,2
	j	.L127
.L126:
	.loc 1 883 18
	li	a0,1
	call	IR_GetIntStatus
	mv	a5,a0
	mv	a4,a5
	.loc 1 883 15 discriminator 1
	li	a5,1
	bne	a4,a5,.L128
	.loc 1 893 15
	li	a5,1073782784
	addi	a5,a5,1664
	.loc 1 893 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 894 7
	li	a5,1073782784
	addi	a5,a5,1664
	.loc 1 894 73
	lw	a4,-24(s0)
	andi	a4,a4,-2
	.loc 1 894 60
	sw	a4,0(a5)
	.loc 1 897 15
	li	a5,1073782784
	addi	a5,a5,1668
	.loc 1 897 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 898 7
	li	a5,1073782784
	addi	a5,a5,1668
	.loc 1 898 73
	lw	a3,-24(s0)
	li	a4,65536
	or	a4,a3,a4
	.loc 1 898 60
	sw	a4,0(a5)
	.loc 1 901 15
	call	IR_GetRxFIFOCount
	mv	a5,a0
	mv	a4,a5
	.loc 1 901 13 discriminator 1
	lw	a5,-40(s0)
	sb	a4,0(a5)
	.loc 1 902 15
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	mv	a1,a5
	lw	a0,-36(s0)
	call	IR_SWMReceiveData
	mv	a5,a0
	mv	a4,a5
	.loc 1 902 13 discriminator 1
	lw	a5,-40(s0)
	sb	a4,0(a5)
	.loc 1 905 19
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 905 22
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 905 7
	li	a5,16384
	addi	a5,a5,616
	bleu	a4,a5,.L129
	.loc 1 905 37 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 905 40 discriminator 1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 905 30 discriminator 1
	li	a5,20480
	addi	a5,a5,-1481
	bgtu	a4,a5,.L129
	.loc 1 905 66 discriminator 2
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 905 69 discriminator 2
	srli	a4,a5,16
	.loc 1 905 54 discriminator 2
	li	a5,8192
	addi	a5,a5,208
	bleu	a4,a5,.L129
	.loc 1 905 81 discriminator 3
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 905 84 discriminator 3
	srli	a4,a5,16
	.loc 1 905 74 discriminator 3
	li	a5,8192
	addi	a5,a5,1407
	bgtu	a4,a5,.L129
	.loc 1 905 105 discriminator 4
	lw	a5,-36(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	.loc 1 905 108 discriminator 4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 905 94 discriminator 4
	li	a5,525
	bleu	a4,a5,.L129
	.loc 1 905 123 discriminator 5
	lw	a5,-36(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	.loc 1 905 126 discriminator 5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 905 116 discriminator 5
	li	a5,1724
	bgtu	a4,a5,.L129
	.loc 1 907 19
	li	a5,1073782784
	addi	a5,a5,1664
	.loc 1 907 16
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 908 11
	li	a5,1073782784
	addi	a5,a5,1664
	.loc 1 908 105
	lw	a4,-24(s0)
	andi	a4,a4,-13
	.loc 1 908 64
	sw	a4,0(a5)
	.loc 1 910 11
	li	a5,1073782784
	addi	a5,a5,1672
	.loc 1 910 64
	li	a4,589762560
	addi	a4,a4,-697
	sw	a4,0(a5)
	.loc 1 913 11
	li	a5,1073782784
	addi	a5,a5,1536
	.loc 1 913 63
	li	a4,126976
	addi	a4,a4,1300
	sw	a4,0(a5)
	.loc 1 915 11
	li	a5,1073782784
	addi	a5,a5,1556
	.loc 1 915 64
	li	a4,8331264
	sw	a4,0(a5)
	.loc 1 917 11
	li	a5,1073782784
	addi	a5,a5,1552
	.loc 1 917 64
	li	a4,571539456
	addi	a4,a4,1124
	sw	a4,0(a5)
	.loc 1 919 16
	li	a5,0
	j	.L127
.L129:
	.loc 1 921 23
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 921 26
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 921 12
	li	a5,1175
	bleu	a4,a5,.L130
	.loc 1 921 41 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 921 44 discriminator 1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 921 34 discriminator 1
	li	a5,4096
	addi	a5,a5,-1722
	bgtu	a4,a5,.L130
	.loc 1 921 71 discriminator 2
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 921 74 discriminator 2
	srli	a4,a5,16
	.loc 1 921 57 discriminator 2
	li	a5,1175
	bleu	a4,a5,.L131
	.loc 1 921 86 discriminator 3
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 921 89 discriminator 3
	srli	a4,a5,16
	.loc 1 921 79 discriminator 3
	li	a5,4096
	addi	a5,a5,-1722
	bleu	a4,a5,.L132
.L131:
	.loc 1 921 113 discriminator 6
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 921 116 discriminator 6
	srli	a4,a5,16
	.loc 1 921 100 discriminator 6
	li	a5,4096
	addi	a5,a5,-1141
	bleu	a4,a5,.L130
	.loc 1 921 128 discriminator 7
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 921 131 discriminator 7
	srli	a4,a5,16
	.loc 1 921 121 discriminator 7
	li	a5,4096
	addi	a5,a5,58
	bgtu	a4,a5,.L130
.L132:
	.loc 1 922 25
	lw	a5,-36(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	.loc 1 922 28
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 921 143 discriminator 8
	li	a5,1175
	bleu	a4,a5,.L133
	.loc 1 922 43
	lw	a5,-36(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	.loc 1 922 46
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 922 36
	li	a5,4096
	addi	a5,a5,-1722
	bleu	a4,a5,.L134
.L133:
	.loc 1 922 73 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	.loc 1 922 76 discriminator 1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 922 60 discriminator 1
	li	a5,4096
	addi	a5,a5,-1141
	bleu	a4,a5,.L130
	.loc 1 922 91 discriminator 2
	lw	a5,-36(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	.loc 1 922 94 discriminator 2
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 922 84 discriminator 2
	li	a5,4096
	addi	a5,a5,58
	bgtu	a4,a5,.L130
.L134:
	.loc 1 924 19
	li	a5,1073782784
	addi	a5,a5,1664
	.loc 1 924 16
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 925 77
	lw	a5,-24(s0)
	andi	a4,a5,-13
	.loc 1 925 11
	li	a5,1073782784
	addi	a5,a5,1664
	.loc 1 925 105
	ori	a4,a4,4
	.loc 1 925 64
	sw	a4,0(a5)
	.loc 1 927 11
	li	a5,1073782784
	addi	a5,a5,1672
	.loc 1 927 64
	li	a4,327618560
	addi	a4,a4,-1430
	sw	a4,0(a5)
	.loc 1 930 11
	li	a5,1073782784
	addi	a5,a5,1536
	.loc 1 930 63
	li	a4,49152
	addi	a4,a4,308
	sw	a4,0(a5)
	.loc 1 932 11
	li	a5,1073782784
	addi	a5,a5,1556
	.loc 1 932 64
	sw	zero,0(a5)
	.loc 1 934 11
	li	a5,1073782784
	addi	a5,a5,1552
	.loc 1 934 64
	li	a4,571539456
	addi	a4,a4,1777
	sw	a4,0(a5)
	.loc 1 936 16
	li	a5,1
	j	.L127
.L130:
	.loc 1 937 19
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 937 22
	srli	a5,a5,16
	.loc 1 937 13
	beq	a5,zero,.L135
	.loc 1 940 65
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 940 72
	slli	a5,a5,12
	.loc 1 940 77
	ori	a4,a5,12
	.loc 1 940 11
	li	a5,1073782784
	addi	a5,a5,1536
	.loc 1 940 63
	sw	a4,0(a5)
	.loc 1 942 11
	li	a5,1073782784
	addi	a5,a5,1552
	.loc 1 942 64
	li	a4,571539456
	sw	a4,0(a5)
	.loc 1 944 16
	li	a5,2
	j	.L127
.L135:
	.loc 1 946 19
	li	a5,1073782784
	addi	a5,a5,1664
	.loc 1 946 16
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 947 56
	lw	a5,-24(s0)
	srli	a5,a5,2
	.loc 1 947 16
	andi	a5,a5,3
	sw	a5,-24(s0)
	.loc 1 948 11
	lw	a5,-24(s0)
	bne	a5,zero,.L136
	.loc 1 949 20
	li	a5,0
	j	.L127
.L136:
	.loc 1 950 17
	lw	a4,-24(s0)
	li	a5,1
	bne	a4,a5,.L137
	.loc 1 951 20
	li	a5,1
	j	.L127
.L137:
	.loc 1 953 20
	li	a5,2
.L127:
	.loc 1 956 1
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
	.size	IR_LearnToInit, .-IR_LearnToInit
	.section	.text.IR_LearnToReceive,"ax",@progbits
	.align	1
	.globl	IR_LearnToReceive
	.type	IR_LearnToReceive, @function
IR_LearnToReceive:
.LFB33:
	.loc 1 968 1
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
	.loc 1 969 13
	sb	zero,-17(s0)
	.loc 1 970 14
	li	a5,15998976
	addi	a5,a5,1024
	sw	a5,-24(s0)
	.loc 1 976 5
	li	a0,1
	call	IR_Disable
	.loc 1 979 5
	li	a0,1
	call	IR_ClrIntStatus
	.loc 1 980 5
	li	a1,1
	li	a0,1
	call	IR_IntMask
	.loc 1 983 5
	li	a0,1
	call	IR_Enable
	.loc 1 986 10
	j	.L139
.L141:
	.loc 1 987 19
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 988 11
	lw	a5,-24(s0)
	bne	a5,zero,.L139
	.loc 1 989 13
	li	a0,1
	call	IR_Disable
	.loc 1 991 20
	li	a5,2
	j	.L140
.L139:
	.loc 1 986 18
	li	a0,1
	call	IR_GetIntStatus
	mv	a5,a0
	mv	a4,a5
	.loc 1 986 15 discriminator 1
	li	a5,1
	bne	a4,a5,.L141
	.loc 1 996 5
	li	a0,1
	call	IR_Disable
	.loc 1 999 5
	li	a0,1
	call	IR_ClrIntStatus
	.loc 1 1002 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L142
	.loc 1 1002 26 discriminator 1
	lbu	a4,-33(s0)
	li	a5,1
	bne	a4,a5,.L143
.L142:
	.loc 1 1004 18
	call	IR_GetRxDataBitCount
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1005 19
	li	a0,0
	call	IR_ReceiveData
	mv	a4,a0
	.loc 1 1005 17 discriminator 1
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 1005 17 is_stmt 0
	j	.L144
.L143:
	.loc 1 1008 18 is_stmt 1
	call	IR_GetRxFIFOCount
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1009 18
	lbu	a5,-17(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	IR_SWMReceiveData
	mv	a5,a0
	sb	a5,-17(s0)
.L144:
	.loc 1 1012 12
	lbu	a5,-17(s0)
.L140:
	.loc 1 1013 1
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
	.size	IR_LearnToReceive, .-IR_LearnToReceive
	.section	.text.IR_LearnToSend,"ax",@progbits
	.align	1
	.globl	IR_LearnToSend
	.type	IR_LearnToSend, @function
IR_LearnToSend:
.LFB34:
	.loc 1 1027 1
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
	mv	a4,a2
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 1034 15
	li	a5,1073782784
	addi	a5,a5,1536
	.loc 1 1034 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1035 25
	lw	a4,-20(s0)
	li	a5,-258048
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1035 74
	lbu	a5,-34(s0)
	addi	a5,a5,-1
	.loc 1 1035 77
	slli	a5,a5,12
	.loc 1 1035 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1036 7
	li	a5,1073782784
	addi	a5,a5,1536
	.loc 1 1036 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1038 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L146
	.loc 1 1038 26 discriminator 1
	lbu	a4,-33(s0)
	li	a5,1
	bne	a4,a5,.L147
.L146:
	.loc 1 1039 9
	lw	a5,-40(s0)
	lw	a5,0(a5)
	mv	a1,a5
	li	a0,0
	call	IR_SendCommand
	j	.L148
.L147:
	.loc 1 1041 9
	lbu	a5,-34(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	IR_SWMSendCommand
.L148:
	.loc 1 1044 12
	li	a5,0
	.loc 1 1045 1
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
	.size	IR_LearnToSend, .-IR_LearnToSend
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ir.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbb0
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x10
	.4byte	.LASF162
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
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0x8
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
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x104
	.byte	0x2
	.4byte	0x32
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF27
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF28
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF29
	.uleb128 0x7
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
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF34
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x123
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF36
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF37
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF38
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.4byte	.LASF39
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF40
	.uleb128 0x8
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
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0x14e
	.uleb128 0x8
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
	.uleb128 0x5
	.4byte	.LASF47
	.byte	0x4
	.byte	0x24
	.byte	0x2
	.4byte	0x179
	.uleb128 0x8
	.4byte	0x2b
	.byte	0x4
	.byte	0x2a
	.byte	0x1
	.4byte	0x1b7
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0
	.uleb128 0x14
	.string	"SET"
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF49
	.byte	0x4
	.byte	0x2d
	.byte	0x2
	.4byte	0x19e
	.uleb128 0x8
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
	.uleb128 0x5
	.4byte	.LASF52
	.byte	0x4
	.byte	0x36
	.byte	0x2
	.4byte	0x1c3
	.uleb128 0x5
	.4byte	.LASF53
	.byte	0x4
	.byte	0x7c
	.byte	0xf
	.4byte	0x146
	.uleb128 0x9
	.4byte	0x1e8
	.uleb128 0x8
	.4byte	0x2b
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0x218
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
	.4byte	0x1f9
	.uleb128 0x8
	.4byte	0x2b
	.byte	0x5
	.byte	0x42
	.byte	0xe
	.4byte	0x23d
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF60
	.byte	0x5
	.byte	0x45
	.byte	0x2
	.4byte	0x224
	.uleb128 0x8
	.4byte	0x2b
	.byte	0x5
	.byte	0x4a
	.byte	0xe
	.4byte	0x268
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF64
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.4byte	0x249
	.uleb128 0x8
	.4byte	0x2b
	.byte	0x5
	.byte	0x53
	.byte	0xe
	.4byte	0x293
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF68
	.byte	0x5
	.byte	0x57
	.byte	0x2
	.4byte	0x274
	.uleb128 0x8
	.4byte	0x2b
	.byte	0x5
	.byte	0x5c
	.byte	0xe
	.4byte	0x2b8
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF71
	.byte	0x5
	.byte	0x5f
	.byte	0x2
	.4byte	0x29f
	.uleb128 0xb
	.byte	0xa
	.byte	0x64
	.4byte	0x344
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x65
	.byte	0xd
	.4byte	0xf8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x66
	.byte	0x11
	.4byte	0x192
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x67
	.byte	0x11
	.4byte	0x192
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0x68
	.byte	0x11
	.4byte	0x192
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0x69
	.byte	0x11
	.4byte	0x192
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0x6a
	.byte	0x11
	.4byte	0x192
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF78
	.byte	0x6b
	.byte	0x11
	.4byte	0x192
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x6c
	.byte	0x11
	.4byte	0x192
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0x6d
	.byte	0x11
	.4byte	0x192
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0x6e
	.byte	0x11
	.4byte	0x192
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF82
	.byte	0x5
	.byte	0x6f
	.byte	0x2
	.4byte	0x2c4
	.uleb128 0xb
	.byte	0xc
	.byte	0x74
	.4byte	0x3dc
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0x75
	.byte	0xd
	.4byte	0xf8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0x76
	.byte	0xd
	.4byte	0xf8
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0x77
	.byte	0xd
	.4byte	0xf8
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0x78
	.byte	0xd
	.4byte	0xf8
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x79
	.byte	0xd
	.4byte	0xf8
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0x7a
	.byte	0xd
	.4byte	0xf8
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0x7b
	.byte	0xd
	.4byte	0xf8
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0x7c
	.byte	0xd
	.4byte	0xf8
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0x7d
	.byte	0xd
	.4byte	0xf8
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0x7e
	.byte	0xd
	.4byte	0xf8
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0x7f
	.byte	0xe
	.4byte	0x104
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.4byte	.LASF94
	.byte	0x5
	.byte	0x80
	.byte	0x2
	.4byte	0x350
	.uleb128 0xb
	.byte	0x20
	.byte	0x85
	.4byte	0x450
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0x86
	.byte	0xe
	.4byte	0x117
	.byte	0
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0x87
	.byte	0xe
	.4byte	0x117
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0x88
	.byte	0xe
	.4byte	0x117
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0x89
	.byte	0xe
	.4byte	0x117
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0x8a
	.byte	0xe
	.4byte	0x117
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0x8b
	.byte	0xe
	.4byte	0x117
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0x8c
	.byte	0xe
	.4byte	0x117
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0x8d
	.byte	0xe
	.4byte	0x117
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	.LASF103
	.byte	0x5
	.byte	0x8e
	.byte	0x2
	.4byte	0x3e8
	.uleb128 0xb
	.byte	0x8
	.byte	0x93
	.4byte	0x4ac
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0x94
	.byte	0x14
	.4byte	0x268
	.byte	0
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0x95
	.byte	0x11
	.4byte	0x192
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0x96
	.byte	0xe
	.4byte	0x104
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0x97
	.byte	0xe
	.4byte	0x104
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0x98
	.byte	0x11
	.4byte	0x192
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0x99
	.byte	0xd
	.4byte	0xf8
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF110
	.byte	0x5
	.byte	0x9a
	.byte	0x2
	.4byte	0x45c
	.uleb128 0x15
	.4byte	0x1f4
	.4byte	0x4c8
	.uleb128 0x16
	.4byte	0x138
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0x4b
	.byte	0x1b
	.4byte	0x4b8
	.uleb128 0x5
	.byte	0x3
	.4byte	irIntCbfArra
	.uleb128 0x17
	.4byte	.LASF163
	.byte	0x6
	.2byte	0x240
	.byte	0xd
	.4byte	0x16d
	.4byte	0x4f0
	.uleb128 0x18
	.4byte	0xcf
	.byte	0
	.uleb128 0xa
	.4byte	.LASF116
	.2byte	0x402
	.byte	0xd
	.4byte	0x16d
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x547
	.uleb128 0x3
	.4byte	.LASF111
	.2byte	0x402
	.byte	0x2b
	.4byte	0x268
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF112
	.2byte	0x402
	.byte	0x3a
	.4byte	0x547
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF113
	.2byte	0x402
	.byte	0x47
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x4
	.4byte	.LASF115
	.2byte	0x404
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x117
	.uleb128 0xa
	.4byte	.LASF117
	.2byte	0x3c7
	.byte	0x9
	.4byte	0xf8
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a3
	.uleb128 0x3
	.4byte	.LASF111
	.2byte	0x3c7
	.byte	0x2a
	.4byte	0x268
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF112
	.2byte	0x3c7
	.byte	0x39
	.4byte	0x547
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF113
	.2byte	0x3c9
	.byte	0xd
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x4
	.4byte	.LASF118
	.2byte	0x3ca
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF119
	.2byte	0x35a
	.byte	0x10
	.4byte	0x268
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5fa
	.uleb128 0x3
	.4byte	.LASF112
	.2byte	0x35a
	.byte	0x29
	.4byte	0x547
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF113
	.2byte	0x35a
	.byte	0x37
	.4byte	0x5fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF115
	.2byte	0x35c
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF118
	.2byte	0x35d
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0xf8
	.uleb128 0x6
	.4byte	.LASF120
	.2byte	0x346
	.byte	0x9
	.4byte	0xf8
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x629
	.uleb128 0x4
	.4byte	.LASF115
	.2byte	0x348
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF121
	.2byte	0x333
	.byte	0x9
	.4byte	0xf8
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x653
	.uleb128 0x4
	.4byte	.LASF115
	.2byte	0x335
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF122
	.2byte	0x31d
	.byte	0xd
	.4byte	0x16d
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69b
	.uleb128 0x3
	.4byte	.LASF123
	.2byte	0x31d
	.byte	0x24
	.4byte	0x5fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF124
	.2byte	0x31d
	.byte	0x35
	.4byte	0x5fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF115
	.2byte	0x31f
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF125
	.2byte	0x309
	.byte	0x9
	.4byte	0xf8
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e3
	.uleb128 0x3
	.4byte	.LASF112
	.2byte	0x309
	.byte	0x25
	.4byte	0x6e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF113
	.2byte	0x309
	.byte	0x32
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x4
	.4byte	.LASF126
	.2byte	0x30b
	.byte	0xd
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x9
	.4byte	0x104
	.uleb128 0x6
	.4byte	.LASF127
	.2byte	0x2ef
	.byte	0xa
	.4byte	0x117
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x721
	.uleb128 0x3
	.4byte	.LASF128
	.2byte	0x2ef
	.byte	0x26
	.4byte	0x23d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x4
	.4byte	.LASF115
	.2byte	0x2f1
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF129
	.2byte	0x2d1
	.byte	0xd
	.4byte	0x1b7
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x75a
	.uleb128 0x3
	.4byte	.LASF130
	.2byte	0x2d1
	.byte	0x33
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x4
	.4byte	.LASF115
	.2byte	0x2d3
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF131
	.2byte	0x2b0
	.byte	0xd
	.4byte	0x1b7
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x793
	.uleb128 0x3
	.4byte	.LASF132
	.2byte	0x2b0
	.byte	0x29
	.4byte	0x293
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x4
	.4byte	.LASF115
	.2byte	0x2b2
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF133
	.2byte	0x29e
	.byte	0xd
	.4byte	0x16d
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7cc
	.uleb128 0x3
	.4byte	.LASF132
	.2byte	0x29e
	.byte	0x31
	.4byte	0x293
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3
	.4byte	.LASF134
	.2byte	0x29e
	.byte	0x4b
	.4byte	0x1f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF135
	.2byte	0x27f
	.byte	0xd
	.4byte	0x16d
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x805
	.uleb128 0x3
	.4byte	.LASF132
	.2byte	0x27f
	.byte	0x29
	.4byte	0x293
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x4
	.4byte	.LASF115
	.2byte	0x281
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF136
	.2byte	0x261
	.byte	0xd
	.4byte	0x16d
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84d
	.uleb128 0x3
	.4byte	.LASF132
	.2byte	0x261
	.byte	0x24
	.4byte	0x293
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF137
	.2byte	0x261
	.byte	0x39
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x4
	.4byte	.LASF115
	.2byte	0x263
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF138
	.2byte	0x24f
	.byte	0xd
	.4byte	0x16d
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x895
	.uleb128 0x3
	.4byte	.LASF123
	.2byte	0x24f
	.byte	0x20
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF124
	.2byte	0x24f
	.byte	0x30
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x4
	.4byte	.LASF115
	.2byte	0x251
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF139
	.2byte	0x223
	.byte	0xd
	.4byte	0x16d
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8dd
	.uleb128 0x3
	.4byte	.LASF112
	.2byte	0x223
	.byte	0x29
	.4byte	0x6e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF113
	.2byte	0x223
	.byte	0x36
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x4
	.4byte	.LASF118
	.2byte	0x225
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF140
	.2byte	0x1f6
	.byte	0xd
	.4byte	0x16d
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x925
	.uleb128 0x3
	.4byte	.LASF141
	.2byte	0x1f6
	.byte	0x25
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF142
	.2byte	0x1f6
	.byte	0x34
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF118
	.2byte	0x1f8
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF143
	.2byte	0x1c5
	.byte	0xd
	.4byte	0x16d
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b0
	.uleb128 0x3
	.4byte	.LASF112
	.2byte	0x1c5
	.byte	0x26
	.4byte	0x6e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF113
	.2byte	0x1c5
	.byte	0x33
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xf
	.string	"i"
	.byte	0xd
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xf
	.string	"j"
	.byte	0x13
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x4
	.4byte	.LASF144
	.2byte	0x1c8
	.byte	0xe
	.4byte	0x104
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF115
	.2byte	0x1c9
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF145
	.2byte	0x1ca
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF146
	.2byte	0x1cb
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF147
	.2byte	0x1ac
	.byte	0xd
	.4byte	0x16d
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e9
	.uleb128 0x3
	.4byte	.LASF128
	.2byte	0x1ac
	.byte	0x26
	.4byte	0x23d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3
	.4byte	.LASF112
	.2byte	0x1ac
	.byte	0x36
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF148
	.2byte	0x198
	.byte	0xd
	.4byte	0x16d
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa13
	.uleb128 0x4
	.4byte	.LASF115
	.2byte	0x19a
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF149
	.2byte	0x181
	.byte	0xd
	.4byte	0x16d
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4c
	.uleb128 0x3
	.4byte	.LASF150
	.2byte	0x181
	.byte	0x22
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x4
	.4byte	.LASF115
	.2byte	0x183
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF151
	.2byte	0x163
	.byte	0xd
	.4byte	0x16d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa85
	.uleb128 0x3
	.4byte	.LASF152
	.2byte	0x163
	.byte	0x2a
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x4
	.4byte	.LASF115
	.2byte	0x165
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF153
	.2byte	0x145
	.byte	0xd
	.4byte	0x16d
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xabe
	.uleb128 0x3
	.4byte	.LASF152
	.2byte	0x145
	.byte	0x29
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x4
	.4byte	.LASF115
	.2byte	0x147
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x136
	.byte	0xd
	.4byte	0x16d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF154
	.2byte	0x103
	.byte	0xd
	.4byte	0x16d
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb0e
	.uleb128 0x3
	.4byte	.LASF155
	.2byte	0x103
	.byte	0x26
	.4byte	0xb0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF115
	.2byte	0x105
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x4ac
	.uleb128 0xd
	.4byte	.LASF156
	.byte	0xec
	.4byte	0x16d
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb3a
	.uleb128 0xe
	.4byte	.LASF157
	.byte	0xec
	.byte	0x42
	.4byte	0xb3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x450
	.uleb128 0xd
	.4byte	.LASF158
	.byte	0xc1
	.4byte	0x16d
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb74
	.uleb128 0xe
	.4byte	.LASF159
	.byte	0xc1
	.byte	0x3c
	.4byte	0xb74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0xc3
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x3dc
	.uleb128 0xd
	.4byte	.LASF160
	.byte	0x9c
	.4byte	0x16d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbae
	.uleb128 0xe
	.4byte	.LASF161
	.byte	0x9c
	.byte	0x26
	.4byte	0xbae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0x9e
	.byte	0xe
	.4byte	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x344
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 455
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xec
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF147:
	.string	"IR_SendData"
.LASF146:
	.string	"count"
.LASF20:
	.string	"BL_AHB_SLAVE1_I2C"
.LASF86:
	.string	"logic1PulseWidth_0"
.LASF63:
	.string	"IR_RX_SWM"
.LASF5:
	.string	"BL_AHB_SLAVE1_DBG"
.LASF24:
	.string	"BL_AHB_SLAVE1_CKS"
.LASF129:
	.string	"IR_GetRxFIFOStatus"
.LASF69:
	.string	"IR_RX_FIFO_UNDERFLOW"
.LASF150:
	.string	"txSWM"
.LASF73:
	.string	"tailPulseInverse"
.LASF84:
	.string	"logic0PulseWidth_0"
.LASF83:
	.string	"logic0PulseWidth_1"
.LASF10:
	.string	"BL_AHB_SLAVE1_CCI"
.LASF128:
	.string	"irWord"
.LASF105:
	.string	"inputInverse"
.LASF45:
	.string	"DISABLE"
.LASF55:
	.string	"IR_RX"
.LASF37:
	.string	"long long unsigned int"
.LASF47:
	.string	"BL_Fun_Type"
.LASF152:
	.string	"direct"
.LASF104:
	.string	"rxMode"
.LASF75:
	.string	"headPulseInverse"
.LASF154:
	.string	"IR_RxInit"
.LASF94:
	.string	"IR_TxPulseWidthCfg_Type"
.LASF66:
	.string	"IR_INT_RX"
.LASF71:
	.string	"IR_FifoStatus_Type"
.LASF30:
	.string	"long long int"
.LASF27:
	.string	"signed char"
.LASF121:
	.string	"IR_GetRxDataBitCount"
.LASF53:
	.string	"intCallback_Type"
.LASF19:
	.string	"BL_AHB_SLAVE1_SPI"
.LASF16:
	.string	"BL_AHB_SLAVE1_WRAM"
.LASF145:
	.string	"pwVal"
.LASF114:
	.string	"irIntCbfArra"
.LASF138:
	.string	"IR_SendNEC"
.LASF31:
	.string	"BL_AHB_Slave1_Type"
.LASF44:
	.string	"BL_Err_Type"
.LASF29:
	.string	"long int"
.LASF93:
	.string	"pulseWidthUnit"
.LASF46:
	.string	"ENABLE"
.LASF33:
	.string	"uint16_t"
.LASF68:
	.string	"IR_INT_Type"
.LASF23:
	.string	"BL_AHB_SLAVE1_IRR"
.LASF8:
	.string	"BL_AHB_SLAVE1_TZ2"
.LASF4:
	.string	"BL_AHB_SLAVE1_GPIP"
.LASF164:
	.string	"IR_DeInit"
.LASF43:
	.string	"TIMEOUT"
.LASF130:
	.string	"fifoSts"
.LASF155:
	.string	"irRxCfg"
.LASF143:
	.string	"IR_SWMSendData"
.LASF25:
	.string	"BL_AHB_SLAVE1_MAX"
.LASF76:
	.string	"headPulse"
.LASF51:
	.string	"MASK"
.LASF38:
	.string	"unsigned int"
.LASF11:
	.string	"BL_AHB_SLAVE1_L1C"
.LASF79:
	.string	"dataPulse"
.LASF136:
	.string	"IR_IntMask"
.LASF124:
	.string	"command"
.LASF54:
	.string	"IR_TX"
.LASF120:
	.string	"IR_GetRxFIFOCount"
.LASF81:
	.string	"outputInverse"
.LASF67:
	.string	"IR_INT_ALL"
.LASF151:
	.string	"IR_Disable"
.LASF107:
	.string	"dataThreshold"
.LASF119:
	.string	"IR_LearnToInit"
.LASF65:
	.string	"IR_INT_TX"
.LASF112:
	.string	"data"
.LASF95:
	.string	"swmData0"
.LASF96:
	.string	"swmData1"
.LASF97:
	.string	"swmData2"
.LASF98:
	.string	"swmData3"
.LASF99:
	.string	"swmData4"
.LASF100:
	.string	"swmData5"
.LASF101:
	.string	"swmData6"
.LASF102:
	.string	"swmData7"
.LASF132:
	.string	"intType"
.LASF58:
	.string	"IR_WORD_0"
.LASF59:
	.string	"IR_WORD_1"
.LASF72:
	.string	"dataBits"
.LASF90:
	.string	"tailPulseWidth_0"
.LASF89:
	.string	"tailPulseWidth_1"
.LASF13:
	.string	"BL_AHB_SLAVE1_DMA"
.LASF127:
	.string	"IR_ReceiveData"
.LASF50:
	.string	"UNMASK"
.LASF15:
	.string	"BL_AHB_SLAVE1_PDSHBN"
.LASF7:
	.string	"BL_AHB_SLAVE1_TZ1"
.LASF144:
	.string	"minData"
.LASF131:
	.string	"IR_GetIntStatus"
.LASF103:
	.string	"IR_TxSWMPulseWidthCfg_Type"
.LASF42:
	.string	"ERROR"
.LASF88:
	.string	"headPulseWidth_0"
.LASF123:
	.string	"address"
.LASF87:
	.string	"headPulseWidth_1"
.LASF116:
	.string	"IR_LearnToSend"
.LASF61:
	.string	"IR_RX_NEC"
.LASF117:
	.string	"IR_LearnToReceive"
.LASF161:
	.string	"irTxCfg"
.LASF36:
	.string	"long unsigned int"
.LASF80:
	.string	"outputModulation"
.LASF108:
	.string	"rxDeglitch"
.LASF110:
	.string	"IR_RxCfg_Type"
.LASF82:
	.string	"IR_TxCfg_Type"
.LASF22:
	.string	"BL_AHB_SLAVE1_TMR"
.LASF14:
	.string	"BL_AHB_SLAVE1_SDU"
.LASF140:
	.string	"IR_SendCommand"
.LASF12:
	.string	"BL_AHB_SLAVE1_SFC"
.LASF9:
	.string	"BL_AHB_SLAVE1_EFUSE"
.LASF85:
	.string	"logic1PulseWidth_1"
.LASF48:
	.string	"RESET"
.LASF21:
	.string	"BL_AHB_SLAVE1_PWM"
.LASF57:
	.string	"IR_Direction_Type"
.LASF26:
	.string	"unsigned char"
.LASF148:
	.string	"IR_RxFIFOClear"
.LASF156:
	.string	"IR_TxSWMPulseWidthConfig"
.LASF28:
	.string	"short int"
.LASF78:
	.string	"logic0PulseInverse"
.LASF160:
	.string	"IR_TxInit"
.LASF135:
	.string	"IR_ClrIntStatus"
.LASF70:
	.string	"IR_RX_FIFO_OVERFLOW"
.LASF159:
	.string	"irTxPulseWidthCfg"
.LASF6:
	.string	"BL_AHB_SLAVE1_SEC"
.LASF52:
	.string	"BL_Mask_Type"
.LASF49:
	.string	"BL_Sts_Type"
.LASF106:
	.string	"endThreshold"
.LASF115:
	.string	"tmpVal"
.LASF35:
	.string	"uint32_t"
.LASF62:
	.string	"IR_RX_RC5"
.LASF125:
	.string	"IR_SWMReceiveData"
.LASF39:
	.string	"long double"
.LASF113:
	.string	"length"
.LASF40:
	.string	"char"
.LASF111:
	.string	"mode"
.LASF74:
	.string	"tailPulse"
.LASF2:
	.string	"BL_AHB_SLAVE1_GLB"
.LASF158:
	.string	"IR_TxPulseWidthConfig"
.LASF157:
	.string	"irTxSWMPulseWidthCfg"
.LASF92:
	.string	"moduWidth_0"
.LASF91:
	.string	"moduWidth_1"
.LASF118:
	.string	"timeoutCnt"
.LASF162:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF34:
	.string	"short unsigned int"
.LASF64:
	.string	"IR_RxMode_Type"
.LASF134:
	.string	"cbFun"
.LASF60:
	.string	"IR_Word_Type"
.LASF17:
	.string	"BL_AHB_SLAVE1_UART0"
.LASF18:
	.string	"BL_AHB_SLAVE1_UART1"
.LASF133:
	.string	"IR_Int_Callback_Install"
.LASF139:
	.string	"IR_SWMSendCommand"
.LASF32:
	.string	"uint8_t"
.LASF137:
	.string	"intMask"
.LASF41:
	.string	"SUCCESS"
.LASF77:
	.string	"logic1PulseInverse"
.LASF3:
	.string	"BL_AHB_SLAVE1_RF"
.LASF153:
	.string	"IR_Enable"
.LASF109:
	.string	"DeglitchCnt"
.LASF122:
	.string	"IR_ReceiveNEC"
.LASF149:
	.string	"IR_TxSWM"
.LASF126:
	.string	"rxLen"
.LASF56:
	.string	"IR_TXRX"
.LASF142:
	.string	"word0"
.LASF141:
	.string	"word1"
.LASF163:
	.string	"GLB_AHB_Slave1_Reset"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_ir.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
