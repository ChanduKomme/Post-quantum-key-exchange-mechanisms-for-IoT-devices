	.file	"bl602_dac.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c"
	.section	.text.GLB_DAC_Init,"ax",@progbits
	.align	1
	.globl	GLB_DAC_Init
	.type	GLB_DAC_Init, @function
GLB_DAC_Init:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c"
	.loc 1 97 1
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
	.loc 1 104 13
	li	a5,1073741824
	addi	a5,a5,776
	.loc 1 104 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 105 23
	lw	a5,-20(s0)
	andi	a4,a5,-257
	.loc 1 105 68
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 105 77
	slli	a5,a5,8
	.loc 1 105 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 106 19
	lw	a5,-36(s0)
	lbu	a4,1(a5)
	.loc 1 106 7
	li	a5,1
	bne	a4,a5,.L2
	.loc 1 107 15
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 1 108 18
	li	a5,1073741824
	addi	a4,a5,776
	.loc 1 108 72
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 108 15
	sw	a5,-20(s0)
	.loc 1 109 9
 #APP
# 109 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 110 9
# 110 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 111 9
# 111 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 112 9
# 112 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
 #NO_APP
.L2:
	.loc 1 114 19
	lw	a5,-36(s0)
	lbu	a4,2(a5)
	.loc 1 114 7
	li	a5,1
	bne	a4,a5,.L3
	.loc 1 115 15
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
	.loc 1 116 18
	li	a5,1073741824
	addi	a4,a5,776
	.loc 1 116 72
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 116 15
	sw	a5,-20(s0)
	.loc 1 117 9
 #APP
# 117 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 118 9
# 118 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 119 9
# 119 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 120 9
# 120 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
 #NO_APP
.L3:
	.loc 1 124 11
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 125 11
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 126 14
	li	a5,1073741824
	addi	a4,a5,776
	.loc 1 126 68
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 126 11
	sw	a5,-20(s0)
	.loc 1 127 1
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
	.size	GLB_DAC_Init, .-GLB_DAC_Init
	.section	.text.GLB_DAC_Set_ChanA_Config,"ax",@progbits
	.align	1
	.globl	GLB_DAC_Set_ChanA_Config
	.type	GLB_DAC_Set_ChanA_Config, @function
GLB_DAC_Set_ChanA_Config:
.LFB9:
	.loc 1 138 1
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
	.loc 1 145 13
	li	a5,1073741824
	addi	a5,a5,780
	.loc 1 145 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 146 23
	lw	a4,-20(s0)
	li	a5,-7340032
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 146 69
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	.loc 1 146 78
	slli	a5,a5,20
	.loc 1 146 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 147 23
	lw	a5,-20(s0)
	andi	a4,a5,-3
	.loc 1 147 68
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	.loc 1 147 79
	slli	a5,a5,1
	.loc 1 147 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 148 23
	lw	a5,-20(s0)
	andi	a5,a5,-2
	.loc 1 148 68
	lw	a4,-36(s0)
	lbu	a4,0(a4)
	.loc 1 148 11
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 150 14
	li	a5,1073741824
	addi	a4,a5,780
	.loc 1 150 68
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 150 11
	sw	a5,-20(s0)
	.loc 1 151 1
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
	.size	GLB_DAC_Set_ChanA_Config, .-GLB_DAC_Set_ChanA_Config
	.section	.text.GLB_DAC_Set_ChanB_Config,"ax",@progbits
	.align	1
	.globl	GLB_DAC_Set_ChanB_Config
	.type	GLB_DAC_Set_ChanB_Config, @function
GLB_DAC_Set_ChanB_Config:
.LFB10:
	.loc 1 162 1
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
	.loc 1 169 13
	li	a5,1073741824
	addi	a5,a5,784
	.loc 1 169 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 170 23
	lw	a4,-20(s0)
	li	a5,-7340032
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 170 69
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	.loc 1 170 78
	slli	a5,a5,20
	.loc 1 170 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 171 23
	lw	a5,-20(s0)
	andi	a4,a5,-3
	.loc 1 171 68
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	.loc 1 171 79
	slli	a5,a5,1
	.loc 1 171 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 172 23
	lw	a5,-20(s0)
	andi	a5,a5,-2
	.loc 1 172 68
	lw	a4,-36(s0)
	lbu	a4,0(a4)
	.loc 1 172 11
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 174 14
	li	a5,1073741824
	addi	a4,a5,784
	.loc 1 174 68
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 174 11
	sw	a5,-20(s0)
	.loc 1 175 1
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
	.size	GLB_DAC_Set_ChanB_Config, .-GLB_DAC_Set_ChanB_Config
	.section	.text.GPIP_Set_DAC_ChanB_SRC_SEL,"ax",@progbits
	.align	1
	.globl	GPIP_Set_DAC_ChanB_SRC_SEL
	.type	GPIP_Set_DAC_ChanB_SRC_SEL, @function
GPIP_Set_DAC_ChanB_SRC_SEL:
.LFB11:
	.loc 1 186 1
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
	.loc 1 191 13
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 191 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 192 23
	lw	a4,-20(s0)
	li	a5,-15728640
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 192 55
	lbu	a5,-33(s0)
	.loc 1 192 70
	slli	a5,a5,20
	.loc 1 192 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 193 7
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 193 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 194 1
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
	.size	GPIP_Set_DAC_ChanB_SRC_SEL, .-GPIP_Set_DAC_ChanB_SRC_SEL
	.section	.text.GPIP_Set_DAC_ChanA_SRC_SEL,"ax",@progbits
	.align	1
	.globl	GPIP_Set_DAC_ChanA_SRC_SEL
	.type	GPIP_Set_DAC_ChanA_SRC_SEL, @function
GPIP_Set_DAC_ChanA_SRC_SEL:
.LFB12:
	.loc 1 205 1
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
	.loc 1 210 13
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 210 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 211 23
	lw	a4,-20(s0)
	li	a5,-983040
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 211 55
	lbu	a5,-33(s0)
	.loc 1 211 70
	slli	a5,a5,16
	.loc 1 211 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 212 7
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 212 60
	lw	a4,-20(s0)
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
.LFE12:
	.size	GPIP_Set_DAC_ChanA_SRC_SEL, .-GPIP_Set_DAC_ChanA_SRC_SEL
	.section	.text.GPIP_Set_DAC_Mod_SEL,"ax",@progbits
	.align	1
	.globl	GPIP_Set_DAC_Mod_SEL
	.type	GPIP_Set_DAC_Mod_SEL, @function
GPIP_Set_DAC_Mod_SEL:
.LFB13:
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
	.loc 1 229 13
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 229 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 230 23
	lw	a5,-20(s0)
	andi	a4,a5,-1793
	.loc 1 230 54
	lbu	a5,-33(s0)
	.loc 1 230 69
	slli	a5,a5,8
	.loc 1 230 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 231 7
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 231 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 232 1
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
	.size	GPIP_Set_DAC_Mod_SEL, .-GPIP_Set_DAC_Mod_SEL
	.section	.text.GPIP_DAC_ChanB_Enable,"ax",@progbits
	.align	1
	.globl	GPIP_DAC_ChanB_Enable
	.type	GPIP_DAC_ChanB_Enable, @function
GPIP_DAC_ChanB_Enable:
.LFB14:
	.loc 1 243 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 246 13
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 246 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 247 11
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 248 7
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 248 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 249 1
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
	.size	GPIP_DAC_ChanB_Enable, .-GPIP_DAC_ChanB_Enable
	.section	.text.GPIP_DAC_ChanB_Disable,"ax",@progbits
	.align	1
	.globl	GPIP_DAC_ChanB_Disable
	.type	GPIP_DAC_ChanB_Disable, @function
GPIP_DAC_ChanB_Disable:
.LFB15:
	.loc 1 260 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 263 13
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 263 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 264 11
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
	.loc 1 265 7
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 265 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 266 1
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
	.size	GPIP_DAC_ChanB_Disable, .-GPIP_DAC_ChanB_Disable
	.section	.text.GPIP_DAC_ChanA_Enable,"ax",@progbits
	.align	1
	.globl	GPIP_DAC_ChanA_Enable
	.type	GPIP_DAC_ChanA_Enable, @function
GPIP_DAC_ChanA_Enable:
.LFB16:
	.loc 1 277 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 280 13
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 280 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 281 11
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 282 7
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 282 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 283 1
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
.LFE16:
	.size	GPIP_DAC_ChanA_Enable, .-GPIP_DAC_ChanA_Enable
	.section	.text.GPIP_DAC_ChanA_Disable,"ax",@progbits
	.align	1
	.globl	GPIP_DAC_ChanA_Disable
	.type	GPIP_DAC_ChanA_Disable, @function
GPIP_DAC_ChanA_Disable:
.LFB17:
	.loc 1 294 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 297 13
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 297 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 298 11
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 1 299 7
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 299 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 300 1
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
.LFE17:
	.size	GPIP_DAC_ChanA_Disable, .-GPIP_DAC_ChanA_Disable
	.section	.text.GPIP_Set_DAC_DMA_TX_FORMAT_SEL,"ax",@progbits
	.align	1
	.globl	GPIP_Set_DAC_DMA_TX_FORMAT_SEL
	.type	GPIP_Set_DAC_DMA_TX_FORMAT_SEL, @function
GPIP_Set_DAC_DMA_TX_FORMAT_SEL:
.LFB18:
	.loc 1 311 1
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
	.loc 1 316 13
	li	a5,1073750016
	addi	a5,a5,68
	.loc 1 316 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 317 23
	lw	a5,-20(s0)
	andi	a4,a5,-49
	.loc 1 317 54
	lbu	a5,-33(s0)
	.loc 1 317 69
	slli	a5,a5,4
	.loc 1 317 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 318 7
	li	a5,1073750016
	addi	a5,a5,68
	.loc 1 318 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 319 1
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
	.size	GPIP_Set_DAC_DMA_TX_FORMAT_SEL, .-GPIP_Set_DAC_DMA_TX_FORMAT_SEL
	.section	.text.GPIP_Set_DAC_DMA_TX_Enable,"ax",@progbits
	.align	1
	.globl	GPIP_Set_DAC_DMA_TX_Enable
	.type	GPIP_Set_DAC_DMA_TX_Enable, @function
GPIP_Set_DAC_DMA_TX_Enable:
.LFB19:
	.loc 1 330 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 333 13
	li	a5,1073750016
	addi	a5,a5,68
	.loc 1 333 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 334 11
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 335 7
	li	a5,1073750016
	addi	a5,a5,68
	.loc 1 335 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 336 1
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
.LFE19:
	.size	GPIP_Set_DAC_DMA_TX_Enable, .-GPIP_Set_DAC_DMA_TX_Enable
	.section	.text.GPIP_Set_DAC_DMA_TX_Disable,"ax",@progbits
	.align	1
	.globl	GPIP_Set_DAC_DMA_TX_Disable
	.type	GPIP_Set_DAC_DMA_TX_Disable, @function
GPIP_Set_DAC_DMA_TX_Disable:
.LFB20:
	.loc 1 347 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 350 13
	li	a5,1073750016
	addi	a5,a5,68
	.loc 1 350 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 351 11
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 1 352 7
	li	a5,1073750016
	addi	a5,a5,68
	.loc 1 352 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 353 1
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
	.size	GPIP_Set_DAC_DMA_TX_Disable, .-GPIP_Set_DAC_DMA_TX_Disable
	.section	.text.GPIP_DAC_DMA_WriteData,"ax",@progbits
	.align	1
	.globl	GPIP_DAC_DMA_WriteData
	.type	GPIP_DAC_DMA_WriteData, @function
GPIP_DAC_DMA_WriteData:
.LFB21:
	.loc 1 364 1
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
	.loc 1 365 7
	li	a5,1073750016
	addi	a5,a5,72
	.loc 1 365 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 366 1
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
	.size	GPIP_DAC_DMA_WriteData, .-GPIP_DAC_DMA_WriteData
	.section	.text.GLB_GPIP_DAC_Init,"ax",@progbits
	.align	1
	.globl	GLB_GPIP_DAC_Init
	.type	GLB_GPIP_DAC_Init, @function
GLB_GPIP_DAC_Init:
.LFB22:
	.loc 1 377 1
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
	.loc 1 385 13
	li	a5,1073741824
	addi	a5,a5,776
	.loc 1 385 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 386 23
	lw	a5,-20(s0)
	andi	a4,a5,-257
	.loc 1 386 68
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 386 77
	slli	a5,a5,8
	.loc 1 386 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 387 19
	lw	a5,-36(s0)
	lbu	a4,1(a5)
	.loc 1 387 7
	li	a5,1
	bne	a4,a5,.L18
	.loc 1 388 15
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 1 389 18
	li	a5,1073741824
	addi	a4,a5,776
	.loc 1 389 72
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 389 15
	sw	a5,-20(s0)
	.loc 1 390 9
 #APP
# 390 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 391 9
# 391 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 392 9
# 392 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 393 9
# 393 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
 #NO_APP
.L18:
	.loc 1 395 19
	lw	a5,-36(s0)
	lbu	a4,2(a5)
	.loc 1 395 7
	li	a5,1
	bne	a4,a5,.L19
	.loc 1 396 15
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
	.loc 1 397 18
	li	a5,1073741824
	addi	a4,a5,776
	.loc 1 397 72
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 397 15
	sw	a5,-20(s0)
	.loc 1 398 9
 #APP
# 398 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 399 9
# 399 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 400 9
# 400 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 401 9
# 401 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
 #NO_APP
.L19:
	.loc 1 405 11
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 406 11
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 407 14
	li	a5,1073741824
	addi	a4,a5,776
	.loc 1 407 68
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 407 11
	sw	a5,-20(s0)
	.loc 1 409 11
	lw	a5,-36(s0)
	lbu	a5,4(a5)
	.loc 1 409 7
	bne	a5,zero,.L20
	.loc 1 409 36 discriminator 1
	lw	a5,-36(s0)
	lbu	a4,3(a5)
	.loc 1 409 30 discriminator 1
	li	a5,4
	bne	a4,a5,.L20
	.loc 1 410 16
	li	a5,1
	j	.L21
.L20:
	.loc 1 414 13
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 414 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 415 23
	lw	a5,-20(s0)
	andi	a4,a5,-1793
	.loc 1 415 68
	lw	a5,-36(s0)
	lbu	a5,3(a5)
	.loc 1 415 74
	slli	a5,a5,8
	.loc 1 415 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 416 7
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 416 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 419 13
	li	a5,1073750016
	addi	a5,a5,68
	.loc 1 419 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 420 23
	lw	a5,-20(s0)
	andi	a5,a5,-2
	.loc 1 420 68
	lw	a4,-36(s0)
	lbu	a4,4(a4)
	.loc 1 420 11
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 421 23
	lw	a5,-20(s0)
	andi	a4,a5,-49
	.loc 1 421 68
	lw	a5,-36(s0)
	lbu	a5,5(a5)
	.loc 1 421 77
	slli	a5,a5,4
	.loc 1 421 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 422 7
	li	a5,1073750016
	addi	a5,a5,68
	.loc 1 422 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 424 12
	li	a5,0
.L21:
	.loc 1 425 1
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
	.size	GLB_GPIP_DAC_Init, .-GLB_GPIP_DAC_Init
	.section	.text.GLB_GPIP_DAC_Set_ChanA_Config,"ax",@progbits
	.align	1
	.globl	GLB_GPIP_DAC_Set_ChanA_Config
	.type	GLB_GPIP_DAC_Set_ChanA_Config, @function
GLB_GPIP_DAC_Set_ChanA_Config:
.LFB23:
	.loc 1 436 1
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
	.loc 1 442 13
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 442 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 443 23
	lw	a4,-20(s0)
	li	a5,-983040
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 443 69
	lw	a5,-36(s0)
	lbu	a5,3(a5)
	.loc 1 443 75
	slli	a5,a5,16
	.loc 1 443 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 444 7
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 444 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 447 13
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 447 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 448 23
	lw	a5,-20(s0)
	andi	a5,a5,-2
	.loc 1 448 68
	lw	a4,-36(s0)
	lbu	a4,2(a4)
	.loc 1 448 11
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 449 7
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 449 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 452 13
	li	a5,1073741824
	addi	a5,a5,780
	.loc 1 452 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 453 23
	lw	a5,-20(s0)
	andi	a4,a5,-3
	.loc 1 453 68
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	.loc 1 453 79
	slli	a5,a5,1
	.loc 1 453 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 454 23
	lw	a5,-20(s0)
	andi	a5,a5,-2
	.loc 1 454 68
	lw	a4,-36(s0)
	lbu	a4,0(a4)
	.loc 1 454 11
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 455 14
	li	a5,1073741824
	addi	a4,a5,780
	.loc 1 455 68
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 455 11
	sw	a5,-20(s0)
	.loc 1 456 1
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
	.size	GLB_GPIP_DAC_Set_ChanA_Config, .-GLB_GPIP_DAC_Set_ChanA_Config
	.section	.text.GLB_GPIP_DAC_Set_ChanB_Config,"ax",@progbits
	.align	1
	.globl	GLB_GPIP_DAC_Set_ChanB_Config
	.type	GLB_GPIP_DAC_Set_ChanB_Config, @function
GLB_GPIP_DAC_Set_ChanB_Config:
.LFB24:
	.loc 1 467 1
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
	.loc 1 473 13
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 473 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 474 23
	lw	a4,-20(s0)
	li	a5,-15728640
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 474 69
	lw	a5,-36(s0)
	lbu	a5,3(a5)
	.loc 1 474 75
	slli	a5,a5,20
	.loc 1 474 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 475 7
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 475 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 478 13
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 478 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 479 23
	lw	a5,-20(s0)
	andi	a4,a5,-3
	.loc 1 479 68
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	.loc 1 479 77
	slli	a5,a5,1
	.loc 1 479 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 480 7
	li	a5,1073750016
	addi	a5,a5,64
	.loc 1 480 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 483 13
	li	a5,1073741824
	addi	a5,a5,784
	.loc 1 483 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 484 23
	lw	a5,-20(s0)
	andi	a4,a5,-3
	.loc 1 484 68
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	.loc 1 484 79
	slli	a5,a5,1
	.loc 1 484 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 485 23
	lw	a5,-20(s0)
	andi	a5,a5,-2
	.loc 1 485 68
	lw	a4,-36(s0)
	lbu	a4,0(a4)
	.loc 1 485 11
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 486 14
	li	a5,1073741824
	addi	a4,a5,784
	.loc 1 486 68
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 486 11
	sw	a5,-20(s0)
	.loc 1 487 1
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
.LFE24:
	.size	GLB_GPIP_DAC_Set_ChanB_Config, .-GLB_GPIP_DAC_Set_ChanB_Config
	.section	.text.GLB_DAC_Set_ChanA_Value,"ax",@progbits
	.align	1
	.globl	GLB_DAC_Set_ChanA_Value
	.type	GLB_DAC_Set_ChanA_Value, @function
GLB_DAC_Set_ChanA_Value:
.LFB25:
	.loc 1 498 1
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
	sh	a5,-34(s0)
	.loc 1 501 13
	li	a5,1073741824
	addi	a5,a5,788
	.loc 1 501 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 502 23
	lw	a4,-20(s0)
	li	a5,-67043328
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 502 56
	lhu	a5,-34(s0)
	.loc 1 502 71
	slli	a5,a5,16
	.loc 1 502 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 503 14
	li	a5,1073741824
	addi	a4,a5,788
	.loc 1 503 68
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 503 11
	sw	a5,-20(s0)
	.loc 1 504 1
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
	.size	GLB_DAC_Set_ChanA_Value, .-GLB_DAC_Set_ChanA_Value
	.section	.text.GLB_DAC_Set_ChanB_Value,"ax",@progbits
	.align	1
	.globl	GLB_DAC_Set_ChanB_Value
	.type	GLB_DAC_Set_ChanB_Value, @function
GLB_DAC_Set_ChanB_Value:
.LFB26:
	.loc 1 515 1
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
	sh	a5,-34(s0)
	.loc 1 518 13
	li	a5,1073741824
	addi	a5,a5,788
	.loc 1 518 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 519 23
	lw	a5,-20(s0)
	andi	a4,a5,-1024
	.loc 1 519 70
	lhu	a5,-34(s0)
	.loc 1 519 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 520 14
	li	a5,1073741824
	addi	a4,a5,788
	.loc 1 520 68
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 520 11
	sw	a5,-20(s0)
	.loc 1 521 1
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
.LFE26:
	.size	GLB_DAC_Set_ChanB_Value, .-GLB_DAC_Set_ChanB_Value
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dac.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x723
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xf
	.4byte	.LASF97
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x5a
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x6d
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xb6
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0x97
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x3
	.byte	0x21
	.byte	0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x3
	.byte	0x24
	.byte	0x2
	.4byte	0xc2
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x3b
	.byte	0xe
	.4byte	0x100
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x3e
	.byte	0x2
	.4byte	0xe7
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x43
	.byte	0xe
	.4byte	0x131
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0x48
	.byte	0x2
	.4byte	0x10c
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x4d
	.byte	0xe
	.4byte	0x180
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
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x4
	.byte	0x57
	.byte	0x2
	.4byte	0x13d
	.uleb128 0xc
	.byte	0x4
	.byte	0x5c
	.4byte	0x1c4
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x5d
	.byte	0x11
	.4byte	0xdb
	.byte	0
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x5e
	.byte	0x11
	.4byte	0xdb
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x5f
	.byte	0x17
	.4byte	0x180
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x60
	.byte	0x24
	.4byte	0x131
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x4
	.byte	0x61
	.byte	0x2
	.4byte	0x18c
	.uleb128 0xc
	.byte	0x3
	.byte	0x66
	.4byte	0x1fc
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x67
	.byte	0x1a
	.4byte	0x100
	.byte	0
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x68
	.byte	0x11
	.4byte	0xdb
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x69
	.byte	0x11
	.4byte	0xdb
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x4
	.byte	0x6a
	.byte	0x2
	.4byte	0x1d0
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x6f
	.byte	0xe
	.4byte	0x239
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x4
	.byte	0x76
	.byte	0x2
	.4byte	0x208
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x7b
	.byte	0xe
	.4byte	0x26a
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x4
	.byte	0x80
	.byte	0x2
	.4byte	0x245
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x85
	.byte	0xe
	.4byte	0x2a1
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x4
	.byte	0x8b
	.byte	0x2
	.4byte	0x276
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x90
	.byte	0xe
	.4byte	0x2cc
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x4
	.byte	0x94
	.byte	0x2
	.4byte	0x2ad
	.uleb128 0xc
	.byte	0x6
	.byte	0x99
	.4byte	0x327
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x9a
	.byte	0x1a
	.4byte	0x100
	.byte	0
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x9b
	.byte	0x11
	.4byte	0xdb
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x9c
	.byte	0x11
	.4byte	0xdb
	.byte	0x2
	.uleb128 0xe
	.string	"mod"
	.byte	0x9d
	.byte	0x17
	.4byte	0x2a1
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0x9e
	.byte	0x11
	.4byte	0xdb
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x9f
	.byte	0x21
	.4byte	0x2cc
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x4
	.byte	0xa0
	.byte	0x2
	.4byte	0x2d8
	.uleb128 0xc
	.byte	0x4
	.byte	0xa5
	.4byte	0x36a
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0xa6
	.byte	0x11
	.4byte	0xdb
	.byte	0
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0xa7
	.byte	0x11
	.4byte	0xdb
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0xa8
	.byte	0x11
	.4byte	0xdb
	.byte	0x2
	.uleb128 0xe
	.string	"src"
	.byte	0xa9
	.byte	0x1d
	.4byte	0x26a
	.byte	0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x4
	.byte	0xaa
	.byte	0x2
	.4byte	0x333
	.uleb128 0xc
	.byte	0x4
	.byte	0xaf
	.4byte	0x3ad
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0xb0
	.byte	0x11
	.4byte	0xdb
	.byte	0
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0xb1
	.byte	0x11
	.4byte	0xdb
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0xb2
	.byte	0x11
	.4byte	0xdb
	.byte	0x2
	.uleb128 0xe
	.string	"src"
	.byte	0xb3
	.byte	0x1d
	.4byte	0x239
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x4
	.byte	0xb4
	.byte	0x2
	.4byte	0x376
	.uleb128 0x5
	.4byte	.LASF77
	.2byte	0x202
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ec
	.uleb128 0xa
	.string	"val"
	.2byte	0x202
	.byte	0x27
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x6
	.4byte	.LASF79
	.2byte	0x204
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF78
	.2byte	0x1f1
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41f
	.uleb128 0xa
	.string	"val"
	.2byte	0x1f1
	.byte	0x27
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x6
	.4byte	.LASF79
	.2byte	0x1f3
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF80
	.2byte	0x1d2
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x452
	.uleb128 0xa
	.string	"cfg"
	.2byte	0x1d2
	.byte	0x41
	.4byte	0x452
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF79
	.2byte	0x1d4
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	0x3ad
	.uleb128 0x5
	.4byte	.LASF81
	.2byte	0x1b3
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48a
	.uleb128 0xa
	.string	"cfg"
	.2byte	0x1b3
	.byte	0x41
	.4byte	0x48a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF79
	.2byte	0x1b5
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	0x36a
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x178
	.byte	0xd
	.4byte	0xb6
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c8
	.uleb128 0xa
	.string	"cfg"
	.2byte	0x178
	.byte	0x36
	.4byte	0x4c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF79
	.2byte	0x17a
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	0x327
	.uleb128 0x5
	.4byte	.LASF82
	.2byte	0x16b
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f3
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x16b
	.byte	0x26
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF84
	.2byte	0x15a
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x517
	.uleb128 0x6
	.4byte	.LASF79
	.2byte	0x15c
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF85
	.2byte	0x149
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53b
	.uleb128 0x6
	.4byte	.LASF79
	.2byte	0x14b
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF86
	.2byte	0x136
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56e
	.uleb128 0xa
	.string	"fmt"
	.2byte	0x136
	.byte	0x41
	.4byte	0x2cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x6
	.4byte	.LASF79
	.2byte	0x138
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF87
	.2byte	0x125
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x592
	.uleb128 0x6
	.4byte	.LASF79
	.2byte	0x127
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF88
	.2byte	0x114
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b6
	.uleb128 0x6
	.4byte	.LASF79
	.2byte	0x116
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x103
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5da
	.uleb128 0x6
	.4byte	.LASF79
	.2byte	0x105
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0xf2
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5fc
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0xf4
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0xdf
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x62c
	.uleb128 0xb
	.string	"mod"
	.byte	0xdf
	.byte	0x2d
	.4byte	0x2a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0xe1
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF92
	.byte	0xcc
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65c
	.uleb128 0xb
	.string	"src"
	.byte	0xcc
	.byte	0x39
	.4byte	0x26a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0xce
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF93
	.byte	0xb9
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x68c
	.uleb128 0xb
	.string	"src"
	.byte	0xb9
	.byte	0x39
	.4byte	0x239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0xbb
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF94
	.byte	0xa1
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6bc
	.uleb128 0xb
	.string	"cfg"
	.byte	0xa1
	.byte	0x36
	.4byte	0x6bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0xa3
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	0x1c4
	.uleb128 0x8
	.4byte	.LASF95
	.byte	0x89
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f1
	.uleb128 0xb
	.string	"cfg"
	.byte	0x89
	.byte	0x36
	.4byte	0x6bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x8b
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF96
	.byte	0x60
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x721
	.uleb128 0xb
	.string	"cfg"
	.byte	0x60
	.byte	0x25
	.4byte	0x721
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x62
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	0x1fc
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
	.uleb128 0x6
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x21
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xac
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF86:
	.string	"GPIP_Set_DAC_DMA_TX_FORMAT_SEL"
.LASF58:
	.string	"GPIP_DAC_ChanA_SRC_DMA_WITH_FILTER"
.LASF52:
	.string	"GPIP_DAC_ChanB_SRC_SIN_GEN"
.LASF74:
	.string	"chanCovtEn"
.LASF65:
	.string	"GPIP_DAC_MOD_512K"
.LASF64:
	.string	"GPIP_DAC_MOD_8K"
.LASF39:
	.string	"GLB_DAC_Chan_Type"
.LASF27:
	.string	"GLB_DAC_Output_Volt_RESEVED"
.LASF47:
	.string	"resetChanB"
.LASF80:
	.string	"GLB_GPIP_DAC_Set_ChanB_Config"
.LASF38:
	.string	"GLB_DAC_CHAN_ALL"
.LASF63:
	.string	"GPIP_DAC_MOD_RESERVE"
.LASF84:
	.string	"GPIP_Set_DAC_DMA_TX_Disable"
.LASF62:
	.string	"GPIP_DAC_MOD_16K"
.LASF20:
	.string	"ENABLE"
.LASF92:
	.string	"GPIP_Set_DAC_ChanA_SRC_SEL"
.LASF87:
	.string	"GPIP_DAC_ChanA_Disable"
.LASF79:
	.string	"tmpVal"
.LASF59:
	.string	"GPIP_DAC_ChanA_SRC_SIN_GEN"
.LASF93:
	.string	"GPIP_Set_DAC_ChanB_SRC_SEL"
.LASF89:
	.string	"GPIP_DAC_ChanB_Disable"
.LASF55:
	.string	"GPIP_DAC_ChanB_SRC_Type"
.LASF94:
	.string	"GLB_DAC_Set_ChanB_Config"
.LASF4:
	.string	"short int"
.LASF81:
	.string	"GLB_GPIP_DAC_Set_ChanA_Config"
.LASF13:
	.string	"long double"
.LASF60:
	.string	"GPIP_DAC_ChanA_SRC_Type"
.LASF6:
	.string	"long long int"
.LASF75:
	.string	"GLB_GPIP_DAC_ChanA_Cfg_Type"
.LASF14:
	.string	"char"
.LASF17:
	.string	"TIMEOUT"
.LASF77:
	.string	"GLB_DAC_Set_ChanB_Value"
.LASF5:
	.string	"long int"
.LASF68:
	.string	"GPIP_DAC_DMA_FORMAT_1"
.LASF18:
	.string	"BL_Err_Type"
.LASF66:
	.string	"GPIP_DAC_MOD_Type"
.LASF16:
	.string	"ERROR"
.LASF96:
	.string	"GLB_DAC_Init"
.LASF95:
	.string	"GLB_DAC_Set_ChanA_Config"
.LASF72:
	.string	"dmaFmt"
.LASF25:
	.string	"GLB_DAC_Output_Volt_0P2_1"
.LASF2:
	.string	"unsigned char"
.LASF51:
	.string	"GPIP_DAC_ChanB_SRC_DMA_WITH_FILTER"
.LASF73:
	.string	"GLB_GPIP_DAC_Cfg_Type"
.LASF3:
	.string	"signed char"
.LASF48:
	.string	"GLB_DAC_Cfg_Type"
.LASF11:
	.string	"long long unsigned int"
.LASF41:
	.string	"outputEn"
.LASF9:
	.string	"uint32_t"
.LASF12:
	.string	"unsigned int"
.LASF8:
	.string	"uint16_t"
.LASF43:
	.string	"outRange"
.LASF67:
	.string	"GPIP_DAC_DMA_FORMAT_0"
.LASF49:
	.string	"GPIP_DAC_ChanB_SRC_REG"
.LASF69:
	.string	"GPIP_DAC_DMA_FORMAT_2"
.LASF15:
	.string	"SUCCESS"
.LASF7:
	.string	"short unsigned int"
.LASF30:
	.string	"GLB_DAC_CHAN0"
.LASF31:
	.string	"GLB_DAC_CHAN1"
.LASF32:
	.string	"GLB_DAC_CHAN2"
.LASF33:
	.string	"GLB_DAC_CHAN3"
.LASF34:
	.string	"GLB_DAC_CHAN4"
.LASF35:
	.string	"GLB_DAC_CHAN5"
.LASF36:
	.string	"GLB_DAC_CHAN6"
.LASF37:
	.string	"GLB_DAC_CHAN7"
.LASF90:
	.string	"GPIP_DAC_ChanB_Enable"
.LASF19:
	.string	"DISABLE"
.LASF45:
	.string	"refSel"
.LASF97:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF53:
	.string	"GPIP_DAC_ChanB_SRC_A"
.LASF83:
	.string	"data"
.LASF46:
	.string	"resetChanA"
.LASF57:
	.string	"GPIP_DAC_ChanA_SRC_DMA"
.LASF44:
	.string	"GLB_DAC_Chan_Cfg_Type"
.LASF76:
	.string	"GLB_GPIP_DAC_ChanB_Cfg_Type"
.LASF22:
	.string	"GLB_DAC_REF_SEL_INTERNAL"
.LASF10:
	.string	"long unsigned int"
.LASF50:
	.string	"GPIP_DAC_ChanB_SRC_DMA"
.LASF82:
	.string	"GPIP_DAC_DMA_WriteData"
.LASF88:
	.string	"GPIP_DAC_ChanA_Enable"
.LASF23:
	.string	"GLB_DAC_REF_SEL_EXTERNAL"
.LASF91:
	.string	"GPIP_Set_DAC_Mod_SEL"
.LASF26:
	.string	"GLB_DAC_Output_Volt_0P225_1P425"
.LASF78:
	.string	"GLB_DAC_Set_ChanA_Value"
.LASF70:
	.string	"GPIP_DAC_DMA_TX_FORMAT_Type"
.LASF21:
	.string	"BL_Fun_Type"
.LASF40:
	.string	"chanEn"
.LASF61:
	.string	"GPIP_DAC_MOD_32K"
.LASF28:
	.string	"GLB_DAC_Output_Volt_0P2_1P8"
.LASF85:
	.string	"GPIP_Set_DAC_DMA_TX_Enable"
.LASF24:
	.string	"GLB_DAC_Ref_Sel_Type"
.LASF42:
	.string	"outMux"
.LASF98:
	.string	"GLB_GPIP_DAC_Init"
.LASF54:
	.string	"GPIP_DAC_ChanB_SRC_INVERSE_A"
.LASF29:
	.string	"GLB_DAC_Output_Volt_Range_Type"
.LASF71:
	.string	"dmaEn"
.LASF56:
	.string	"GPIP_DAC_ChanA_SRC_REG"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
