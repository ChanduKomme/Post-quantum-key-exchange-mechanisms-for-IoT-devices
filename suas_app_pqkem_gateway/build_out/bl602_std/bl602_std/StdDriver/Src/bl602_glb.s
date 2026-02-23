	.file	"bl602_glb.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c"
	.section	.sbss.glbBmxErrIntCbfArra,"aw",@nobits
	.align	2
	.type	glbBmxErrIntCbfArra, @object
	.size	glbBmxErrIntCbfArra, 4
glbBmxErrIntCbfArra:
	.zero	4
	.section	.sbss.glbBmxToIntCbfArra,"aw",@nobits
	.align	2
	.type	glbBmxToIntCbfArra, @object
	.size	glbBmxToIntCbfArra, 4
glbBmxToIntCbfArra:
	.zero	4
	.section	.bss.glbGpioInt0CbfArra,"aw",@nobits
	.align	2
	.type	glbGpioInt0CbfArra, @object
	.size	glbGpioInt0CbfArra, 92
glbGpioInt0CbfArra:
	.zero	92
	.section	.sclock_rlt_code,"ax",@progbits
	.align	1
	.weak	GLB_Get_Root_CLK_Sel
	.type	GLB_Get_Root_CLK_Sel, @function
GLB_Get_Root_CLK_Sel:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c"
	.loc 1 110 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 111 14
	sw	zero,-20(s0)
	.loc 1 113 15
	li	a5,1073741824
	.loc 1 113 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 115 50
	lw	a5,-20(s0)
	srli	a5,a5,6
	andi	a5,a5,3
	.loc 1 115 5
	li	a4,3
	bgtu	a5,a4,.L2
	li	a4,2
	bgeu	a5,a4,.L3
	beq	a5,zero,.L4
	li	a4,1
	beq	a5,a4,.L5
	j	.L2
.L4:
	.loc 1 117 20
	li	a5,0
	j	.L6
.L5:
	.loc 1 119 20
	li	a5,1
	j	.L6
.L3:
	.loc 1 122 20
	li	a5,2
	j	.L6
.L2:
	.loc 1 124 20
	li	a5,0
.L6:
	.loc 1 126 1
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
.LFE8:
	.size	GLB_Get_Root_CLK_Sel, .-GLB_Get_Root_CLK_Sel
	.align	1
	.weak	GLB_Set_System_CLK_Div
	.type	GLB_Set_System_CLK_Div, @function
GLB_Set_System_CLK_Div:
.LFB9:
	.loc 1 141 1
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
	.loc 1 145 13
	li	a5,1073741824
	.loc 1 145 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 146 23
	lw	a4,-20(s0)
	li	a5,-65536
	addi	a5,a5,255
	and	a4,a4,a5
	.loc 1 146 54
	lbu	a5,-33(s0)
	.loc 1 146 73
	slli	a5,a5,8
	.loc 1 146 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 147 23
	lw	a4,-20(s0)
	li	a5,-16711680
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 147 55
	lbu	a5,-34(s0)
	.loc 1 147 74
	slli	a5,a5,16
	.loc 1 147 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 148 7
	li	a5,1073741824
	.loc 1 148 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 149 6
	li	a5,1073745920
	addi	a5,a5,-4
	.loc 1 149 40
	li	a4,1
	sw	a4,0(a5)
	.loc 1 150 6
	li	a5,1073745920
	addi	a5,a5,-4
	.loc 1 150 40
	sw	zero,0(a5)
	.loc 1 151 44
	li	a5,1073803264
	addi	a5,a5,264
	lw	a4,0(a5)
	.loc 1 151 82
	lbu	a5,-33(s0)
	.loc 1 151 99
	addi	a5,a5,1
	mv	a3,a5
	.loc 1 151 7
	li	a5,1073803264
	addi	a5,a5,264
	.loc 1 151 80
	divu	a4,a4,a3
	.loc 1 151 41
	sw	a4,0(a5)
	.loc 1 152 6
 #APP
# 152 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 152 29
# 152 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 152 52
# 152 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 152 75
# 152 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 152 98
# 152 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 152 121
# 152 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 152 144
# 152 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 152 167
# 152 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 154 13
 #NO_APP
	li	a5,1073741824
	.loc 1 154 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 155 11
	lw	a5,-20(s0)
	ori	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 156 11
	lw	a5,-20(s0)
	ori	a5,a5,8
	sw	a5,-20(s0)
	.loc 1 157 7
	li	a5,1073741824
	.loc 1 157 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 158 6
 #APP
# 158 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 158 29
# 158 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 158 52
# 158 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 158 75
# 158 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 158 98
# 158 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 158 121
# 158 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 158 144
# 158 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 158 167
# 158 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 160 12
 #NO_APP
	li	a5,0
	.loc 1 161 1
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
	.size	GLB_Set_System_CLK_Div, .-GLB_Set_System_CLK_Div
	.align	1
	.weak	GLB_Get_BCLK_Div
	.type	GLB_Get_BCLK_Div, @function
GLB_Get_BCLK_Div:
.LFB10:
	.loc 1 175 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 178 13
	li	a5,1073741824
	.loc 1 178 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 180 51
	lw	a5,-20(s0)
	srli	a5,a5,16
	andi	a5,a5,0xff
	.loc 1 181 1
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
	.size	GLB_Get_BCLK_Div, .-GLB_Get_BCLK_Div
	.align	1
	.weak	GLB_Get_HCLK_Div
	.type	GLB_Get_HCLK_Div, @function
GLB_Get_HCLK_Div:
.LFB11:
	.loc 1 195 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 198 13
	li	a5,1073741824
	.loc 1 198 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 200 50
	lw	a5,-20(s0)
	srli	a5,a5,8
	andi	a5,a5,0xff
	.loc 1 201 1
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
.LFE11:
	.size	GLB_Get_HCLK_Div, .-GLB_Get_HCLK_Div
	.align	1
	.weak	Update_SystemCoreClockWith_XTAL
	.type	Update_SystemCoreClockWith_XTAL, @function
Update_SystemCoreClockWith_XTAL:
.LFB12:
	.loc 1 215 1
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
	.loc 1 218 5
	lbu	a5,-17(s0)
	li	a4,6
	beq	a5,a4,.L14
	li	a4,6
	bgt	a5,a4,.L24
	li	a4,5
	beq	a5,a4,.L16
	li	a4,5
	bgt	a5,a4,.L24
	li	a4,4
	beq	a5,a4,.L17
	li	a4,4
	bgt	a5,a4,.L24
	li	a4,3
	beq	a5,a4,.L18
	li	a4,3
	bgt	a5,a4,.L24
	li	a4,2
	beq	a5,a4,.L19
	li	a4,2
	bgt	a5,a4,.L24
	beq	a5,zero,.L25
	li	a4,1
	beq	a5,a4,.L21
	.loc 1 240 13
	j	.L24
.L21:
	.loc 1 222 15
	li	a5,1073803264
	addi	a5,a5,264
	.loc 1 222 49
	li	a4,23998464
	addi	a4,a4,1536
	sw	a4,0(a5)
	.loc 1 223 13
	j	.L22
.L19:
	.loc 1 225 15
	li	a5,1073803264
	addi	a5,a5,264
	.loc 1 225 49
	li	a4,32002048
	addi	a4,a4,-2048
	sw	a4,0(a5)
	.loc 1 226 13
	j	.L22
.L18:
	.loc 1 228 15
	li	a5,1073803264
	addi	a5,a5,264
	.loc 1 228 49
	li	a4,38400000
	sw	a4,0(a5)
	.loc 1 229 13
	j	.L22
.L17:
	.loc 1 231 15
	li	a5,1073803264
	addi	a5,a5,264
	.loc 1 231 49
	li	a4,40001536
	addi	a4,a4,-1536
	sw	a4,0(a5)
	.loc 1 232 13
	j	.L22
.L16:
	.loc 1 234 15
	li	a5,1073803264
	addi	a5,a5,264
	.loc 1 234 49
	li	a4,26001408
	addi	a4,a4,-1408
	sw	a4,0(a5)
	.loc 1 235 13
	j	.L22
.L14:
	.loc 1 237 15
	li	a5,1073803264
	addi	a5,a5,264
	.loc 1 237 49
	li	a4,32002048
	addi	a4,a4,-2048
	sw	a4,0(a5)
	.loc 1 238 13
	j	.L22
.L24:
	.loc 1 240 13
	nop
	j	.L22
.L25:
	.loc 1 220 13
	nop
.L22:
	.loc 1 243 12
	li	a5,0
	.loc 1 244 1
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
	.size	Update_SystemCoreClockWith_XTAL, .-Update_SystemCoreClockWith_XTAL
	.align	1
	.weak	GLB_Set_System_CLK
	.type	GLB_Set_System_CLK, @function
GLB_Set_System_CLK:
.LFB13:
	.loc 1 259 1
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
	.loc 1 266 15
	li	a5,1073741824
	.loc 1 266 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 267 12
	lw	a5,-20(s0)
	ori	a5,a5,8
	sw	a5,-20(s0)
	.loc 1 268 12
	lw	a5,-20(s0)
	ori	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 269 12
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 270 7
	li	a5,1073741824
	.loc 1 270 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 273 5
	li	a0,0
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 274 5
	li	a1,0
	li	a0,0
	call	GLB_Set_System_CLK_Div
	.loc 1 275 7
	li	a5,1073803264
	addi	a5,a5,264
	.loc 1 275 41
	li	a4,32002048
	addi	a4,a4,-2048
	sw	a4,0(a5)
	.loc 1 278 5
	li	a0,0
	call	GLB_Set_PKA_CLK_Sel
	.loc 1 280 7
	lbu	a5,-33(s0)
	bne	a5,zero,.L27
	.loc 1 281 11
	lbu	a5,-34(s0)
	bne	a5,zero,.L28
	.loc 1 282 20
	li	a5,0
	j	.L29
.L28:
	.loc 1 284 20
	li	a5,1
	j	.L29
.L27:
	.loc 1 288 7
	lbu	a4,-33(s0)
	li	a5,6
	beq	a4,a5,.L30
	.loc 1 290 9
	call	AON_Power_On_XTAL
.L30:
	.loc 1 294 5
	lbu	a5,-33(s0)
	mv	a0,a5
	call	PDS_Power_On_PLL
	.loc 1 295 5
	li	a0,55
	call	BL602_Delay_US
	.loc 1 296 5
	call	PDS_Enable_PLL_All_Clks
	.loc 1 299 15
	li	a5,1073741824
	.loc 1 299 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 300 12
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 301 7
	li	a5,1073741824
	.loc 1 301 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 304 7
	lbu	a4,-34(s0)
	li	a5,1
	bleu	a4,a5,.L31
	.loc 1 305 19
	li	a5,1073741824
	.loc 1 305 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 306 29
	lw	a5,-20(s0)
	andi	a4,a5,-49
	.loc 1 306 78
	lbu	a5,-34(s0)
	addi	a5,a5,-2
	.loc 1 306 98
	slli	a5,a5,4
	.loc 1 306 16
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 307 11
	li	a5,1073741824
	.loc 1 307 63
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L31:
	.loc 1 310 5
	lbu	a5,-34(s0)
	li	a4,5
	beq	a5,a4,.L32
	li	a4,5
	bgt	a5,a4,.L40
	li	a4,4
	beq	a5,a4,.L34
	li	a4,4
	bgt	a5,a4,.L40
	li	a4,3
	beq	a5,a4,.L35
	li	a4,3
	bgt	a5,a4,.L40
	li	a4,2
	beq	a5,a4,.L36
	li	a4,2
	bgt	a5,a4,.L40
	beq	a5,zero,.L41
	li	a4,1
	beq	a5,a4,.L38
	.loc 1 339 13
	j	.L40
.L38:
	.loc 1 314 13
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 315 13
	lbu	a5,-33(s0)
	mv	a0,a5
	call	Update_SystemCoreClockWith_XTAL
	.loc 1 316 13
	j	.L39
.L36:
	.loc 1 318 13
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 319 15
	li	a5,1073803264
	addi	a5,a5,264
	.loc 1 319 49
	li	a4,48001024
	addi	a4,a4,-1024
	sw	a4,0(a5)
	.loc 1 320 13
	j	.L39
.L35:
	.loc 1 322 13
	li	a1,1
	li	a0,0
	call	GLB_Set_System_CLK_Div
	.loc 1 323 13
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 324 15
	li	a5,1073803264
	addi	a5,a5,264
	.loc 1 324 49
	li	a4,120000512
	addi	a4,a4,-512
	sw	a4,0(a5)
	.loc 1 325 13
	j	.L39
.L34:
	.loc 1 327 13
	li	a0,1
	call	L1C_IROM_2T_Access_Set
	.loc 1 328 13
	li	a1,1
	li	a0,0
	call	GLB_Set_System_CLK_Div
	.loc 1 329 13
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 330 15
	li	a5,1073803264
	addi	a5,a5,264
	.loc 1 330 49
	li	a4,160002048
	addi	a4,a4,-2048
	sw	a4,0(a5)
	.loc 1 331 13
	j	.L39
.L32:
	.loc 1 333 13
	li	a0,1
	call	L1C_IROM_2T_Access_Set
	.loc 1 334 13
	li	a1,1
	li	a0,0
	call	GLB_Set_System_CLK_Div
	.loc 1 335 13
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 336 15
	li	a5,1073803264
	addi	a5,a5,264
	.loc 1 336 49
	li	a4,192000000
	sw	a4,0(a5)
	.loc 1 337 13
	j	.L39
.L40:
	.loc 1 339 13
	nop
	j	.L39
.L41:
	.loc 1 312 13
	nop
.L39:
	.loc 1 342 6
 #APP
# 342 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 342 29
# 342 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 342 52
# 342 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 342 75
# 342 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 342 98
# 342 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 342 121
# 342 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 342 144
# 342 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 342 167
# 342 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 345 5
 #NO_APP
	li	a0,1
	call	GLB_Set_PKA_CLK_Sel
	.loc 1 347 12
	li	a5,0
.L29:
	.loc 1 348 1
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
	.size	GLB_Set_System_CLK, .-GLB_Set_System_CLK
	.align	1
	.weak	System_Core_Clock_Update_From_RC32M
	.type	System_Core_Clock_Update_From_RC32M, @function
System_Core_Clock_Update_From_RC32M:
.LFB14:
	.loc 1 363 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 364 22
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	sb	zero,-20(s0)
	li	a5,1
	sb	a5,-28(s0)
	li	a5,1
	sb	a5,-25(s0)
	li	a5,1
	sb	a5,-24(s0)
	li	a5,1
	sb	a5,-23(s0)
	.loc 1 374 5
	li	a1,4
	li	a0,6
	call	GLB_Set_System_CLK
	.loc 1 376 5
	addi	a5,s0,-28
	mv	a0,a5
	call	SF_Ctrl_Enable
	.loc 1 377 5
 #APP
# 377 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 378 5
# 378 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 379 5
# 379 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 380 5
# 380 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 382 12
 #NO_APP
	li	a5,0
	.loc 1 383 1
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
.LFE14:
	.size	System_Core_Clock_Update_From_RC32M, .-System_Core_Clock_Update_From_RC32M
	.section	.text.GLB_Set_BLE_CLK,"ax",@progbits
	.align	1
	.globl	GLB_Set_BLE_CLK
	.type	GLB_Set_BLE_CLK, @function
GLB_Set_BLE_CLK:
.LFB15:
	.loc 1 395 1
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
	.loc 1 396 14
	sw	zero,-20(s0)
	.loc 1 398 15
	li	a5,1073741824
	addi	a5,a5,4
	.loc 1 398 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 399 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L45
	.loc 1 400 16
	lw	a4,-20(s0)
	li	a5,16777216
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L46
.L45:
	.loc 1 402 16
	lw	a4,-20(s0)
	li	a5,-16777216
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
.L46:
	.loc 1 404 7
	li	a5,1073741824
	addi	a5,a5,4
	.loc 1 404 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 406 12
	li	a5,0
	.loc 1 407 1
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
	.size	GLB_Set_BLE_CLK, .-GLB_Set_BLE_CLK
	.section	.text.GLB_Set_WiFi_Core_CLK,"ax",@progbits
	.align	1
	.globl	GLB_Set_WiFi_Core_CLK
	.type	GLB_Set_WiFi_Core_CLK, @function
GLB_Set_WiFi_Core_CLK:
.LFB16:
	.loc 1 418 1
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
	.loc 1 419 14
	sw	zero,-20(s0)
	.loc 1 423 15
	li	a5,1073741824
	addi	a5,a5,4
	.loc 1 423 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 424 25
	lw	a5,-20(s0)
	andi	a4,a5,-16
	.loc 1 424 74
	lbu	a5,-33(s0)
	.loc 1 424 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 425 7
	li	a5,1073741824
	addi	a5,a5,4
	.loc 1 425 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
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
.LFE16:
	.size	GLB_Set_WiFi_Core_CLK, .-GLB_Set_WiFi_Core_CLK
	.section	.text.GLB_Set_WiFi_Encrypt_CLK,"ax",@progbits
	.align	1
	.globl	GLB_Set_WiFi_Encrypt_CLK
	.type	GLB_Set_WiFi_Encrypt_CLK, @function
GLB_Set_WiFi_Encrypt_CLK:
.LFB17:
	.loc 1 439 1
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
	.loc 1 440 14
	sw	zero,-20(s0)
	.loc 1 444 15
	li	a5,1073741824
	addi	a5,a5,4
	.loc 1 444 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 445 25
	lw	a5,-20(s0)
	andi	a4,a5,-241
	.loc 1 445 56
	lbu	a5,-33(s0)
	.loc 1 445 74
	slli	a5,a5,4
	.loc 1 445 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 446 7
	li	a5,1073741824
	addi	a5,a5,4
	.loc 1 446 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 448 12
	li	a5,0
	.loc 1 449 1
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
	.size	GLB_Set_WiFi_Encrypt_CLK, .-GLB_Set_WiFi_Encrypt_CLK
	.section	.text.GLB_Set_DMA_CLK,"ax",@progbits
	.align	1
	.globl	GLB_Set_DMA_CLK
	.type	GLB_Set_DMA_CLK, @function
GLB_Set_DMA_CLK:
.LFB18:
	.loc 1 461 1
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
	.loc 1 465 13
	li	a5,1073741824
	addi	a5,a5,8
	.loc 1 465 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 466 12
	lw	a5,-24(s0)
	srli	a5,a5,24
	sw	a5,-20(s0)
	.loc 1 467 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L53
	.loc 1 468 21
	lbu	a5,-34(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 468 17
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	j	.L54
.L53:
	.loc 1 470 24
	lbu	a5,-34(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 1 470 21
	not	a5,a5
	mv	a4,a5
	.loc 1 470 17
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
.L54:
	.loc 1 472 23
	lw	a4,-24(s0)
	li	a5,16777216
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 472 74
	lw	a5,-20(s0)
	slli	a5,a5,24
	.loc 1 472 11
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 473 7
	li	a5,1073741824
	addi	a5,a5,8
	.loc 1 473 59
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 475 12
	li	a5,0
	.loc 1 476 1
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
	.size	GLB_Set_DMA_CLK, .-GLB_Set_DMA_CLK
	.section	.text.GLB_Set_IR_CLK,"ax",@progbits
	.align	1
	.globl	GLB_Set_IR_CLK
	.type	GLB_Set_IR_CLK, @function
GLB_Set_IR_CLK:
.LFB19:
	.loc 1 489 1
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
	.loc 1 490 14
	sw	zero,-20(s0)
	.loc 1 495 15
	li	a5,1073741824
	addi	a5,a5,8
	.loc 1 495 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 496 25
	lw	a4,-20(s0)
	li	a5,-4128768
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 496 57
	lbu	a5,-35(s0)
	.loc 1 496 72
	slli	a5,a5,16
	.loc 1 496 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 497 7
	li	a5,1073741824
	addi	a5,a5,8
	.loc 1 497 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 499 15
	li	a5,1073741824
	addi	a5,a5,8
	.loc 1 499 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 500 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L57
	.loc 1 501 16
	lw	a4,-20(s0)
	li	a5,8388608
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L58
.L57:
	.loc 1 503 16
	lw	a4,-20(s0)
	li	a5,-8388608
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
.L58:
	.loc 1 505 7
	li	a5,1073741824
	addi	a5,a5,8
	.loc 1 505 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 507 12
	li	a5,0
	.loc 1 508 1
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
	.size	GLB_Set_IR_CLK, .-GLB_Set_IR_CLK
	.section	.sclock_rlt_code
	.align	1
	.weak	GLB_Set_SF_CLK
	.type	GLB_Set_SF_CLK, @function
GLB_Set_SF_CLK:
.LFB20:
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
	.loc 1 524 14
	sw	zero,-20(s0)
	.loc 1 531 13
	li	a5,1073741824
	addi	a5,a5,8
	.loc 1 531 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 532 11
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,2047
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 533 7
	li	a5,1073741824
	addi	a5,a5,8
	.loc 1 533 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 536 8
	sb	zero,-21(s0)
	.loc 1 537 5
	lbu	a5,-21(s0)
	mv	a0,a5
	call	PDS_Enable_PLL_Clk
	.loc 1 540 13
	li	a5,1073741824
	addi	a5,a5,8
	.loc 1 540 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 541 23
	lw	a5,-20(s0)
	andi	a4,a5,-1793
	.loc 1 541 54
	lbu	a5,-35(s0)
	.loc 1 541 69
	slli	a5,a5,8
	.loc 1 541 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 542 5
	lbu	a5,-34(s0)
	li	a4,5
	beq	a5,a4,.L61
	li	a4,5
	bgt	a5,a4,.L72
	li	a4,4
	beq	a5,a4,.L63
	li	a4,4
	bgt	a5,a4,.L72
	li	a4,3
	beq	a5,a4,.L64
	li	a4,3
	bgt	a5,a4,.L72
	li	a4,2
	beq	a5,a4,.L65
	li	a4,2
	bgt	a5,a4,.L72
	beq	a5,zero,.L66
	li	a4,1
	beq	a5,a4,.L67
	.loc 1 565 13
	j	.L72
.L66:
	.loc 1 544 19
	lw	a4,-20(s0)
	li	a5,-12288
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 545 19
	lw	a4,-20(s0)
	li	a5,-49152
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 546 13
	j	.L68
.L67:
	.loc 1 548 19
	lw	a4,-20(s0)
	li	a5,-12288
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 549 31
	lw	a4,-20(s0)
	li	a5,-49152
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 549 19
	li	a5,16384
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 550 13
	j	.L68
.L65:
	.loc 1 552 19
	lw	a4,-20(s0)
	li	a5,-12288
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 553 19
	lw	a4,-20(s0)
	li	a5,49152
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 554 13
	j	.L68
.L64:
	.loc 1 556 31
	lw	a4,-20(s0)
	li	a5,-12288
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 556 19
	li	a5,4096
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 557 13
	j	.L68
.L63:
	.loc 1 559 31
	lw	a4,-20(s0)
	li	a5,-12288
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 559 19
	li	a5,8192
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 560 13
	j	.L68
.L61:
	.loc 1 562 19
	lw	a4,-20(s0)
	li	a5,12288
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 563 13
	j	.L68
.L72:
	.loc 1 565 13
	nop
.L68:
	.loc 1 567 7
	li	a5,1073741824
	addi	a5,a5,8
	.loc 1 567 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 570 13
	li	a5,1073741824
	addi	a5,a5,8
	.loc 1 570 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 571 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L69
	.loc 1 572 15
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L70
.L69:
	.loc 1 574 15
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,2047
	and	a5,a4,a5
	sw	a5,-20(s0)
.L70:
	.loc 1 576 7
	li	a5,1073741824
	addi	a5,a5,8
	.loc 1 576 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 578 12
	li	a5,0
	.loc 1 579 1
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
	.size	GLB_Set_SF_CLK, .-GLB_Set_SF_CLK
	.section	.text.GLB_Set_UART_CLK,"ax",@progbits
	.align	1
	.globl	GLB_Set_UART_CLK
	.type	GLB_Set_UART_CLK, @function
GLB_Set_UART_CLK:
.LFB21:
	.loc 1 593 1
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
	.loc 1 594 14
	sw	zero,-20(s0)
	.loc 1 600 13
	li	a5,1073741824
	addi	a5,a5,8
	.loc 1 600 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 601 11
	lw	a5,-20(s0)
	andi	a5,a5,-17
	sw	a5,-20(s0)
	.loc 1 602 7
	li	a5,1073741824
	addi	a5,a5,8
	.loc 1 602 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 605 13
	li	a5,1073741824
	addi	a5,a5,8
	.loc 1 605 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 606 23
	lw	a5,-20(s0)
	andi	a4,a5,-8
	.loc 1 606 69
	lbu	a5,-35(s0)
	.loc 1 606 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 607 7
	li	a5,1073741824
	addi	a5,a5,8
	.loc 1 607 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 610 5
	lbu	a5,-34(s0)
	mv	a0,a5
	call	HBN_Set_UART_CLK_Sel
	.loc 1 613 13
	li	a5,1073741824
	addi	a5,a5,8
	.loc 1 613 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 614 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L74
	.loc 1 615 15
	lw	a5,-20(s0)
	ori	a5,a5,16
	sw	a5,-20(s0)
	j	.L75
.L74:
	.loc 1 617 15
	lw	a5,-20(s0)
	andi	a5,a5,-17
	sw	a5,-20(s0)
.L75:
	.loc 1 619 7
	li	a5,1073741824
	addi	a5,a5,8
	.loc 1 619 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 621 12
	li	a5,0
	.loc 1 622 1
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
	.size	GLB_Set_UART_CLK, .-GLB_Set_UART_CLK
	.section	.text.GLB_Set_I2C_CLK,"ax",@progbits
	.align	1
	.globl	GLB_Set_I2C_CLK
	.type	GLB_Set_I2C_CLK, @function
GLB_Set_I2C_CLK:
.LFB22:
	.loc 1 634 1
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
	.loc 1 635 14
	sw	zero,-20(s0)
	.loc 1 637 13
	li	a5,1073741824
	addi	a5,a5,12
	.loc 1 637 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 638 23
	lw	a4,-20(s0)
	li	a5,-16711680
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 638 55
	lbu	a5,-34(s0)
	.loc 1 638 70
	slli	a5,a5,16
	.loc 1 638 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 639 7
	li	a5,1073741824
	addi	a5,a5,12
	.loc 1 639 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 641 13
	li	a5,1073741824
	addi	a5,a5,12
	.loc 1 641 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 642 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L78
	.loc 1 643 15
	lw	a4,-20(s0)
	li	a5,16777216
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L79
.L78:
	.loc 1 645 15
	lw	a4,-20(s0)
	li	a5,-16777216
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
.L79:
	.loc 1 647 7
	li	a5,1073741824
	addi	a5,a5,12
	.loc 1 647 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 649 12
	li	a5,0
	.loc 1 650 1
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
	.size	GLB_Set_I2C_CLK, .-GLB_Set_I2C_CLK
	.section	.text.GLB_Set_SPI_CLK,"ax",@progbits
	.align	1
	.globl	GLB_Set_SPI_CLK
	.type	GLB_Set_SPI_CLK, @function
GLB_Set_SPI_CLK:
.LFB23:
	.loc 1 662 1
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
	.loc 1 663 14
	sw	zero,-20(s0)
	.loc 1 667 13
	li	a5,1073741824
	addi	a5,a5,12
	.loc 1 667 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 668 23
	lw	a5,-20(s0)
	andi	a4,a5,-32
	.loc 1 668 69
	lbu	a5,-34(s0)
	.loc 1 668 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 669 7
	li	a5,1073741824
	addi	a5,a5,12
	.loc 1 669 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 671 13
	li	a5,1073741824
	addi	a5,a5,12
	.loc 1 671 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 672 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L82
	.loc 1 673 15
	lw	a5,-20(s0)
	ori	a5,a5,256
	sw	a5,-20(s0)
	j	.L83
.L82:
	.loc 1 675 15
	lw	a5,-20(s0)
	andi	a5,a5,-257
	sw	a5,-20(s0)
.L83:
	.loc 1 677 7
	li	a5,1073741824
	addi	a5,a5,12
	.loc 1 677 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 679 12
	li	a5,0
	.loc 1 680 1
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
	.size	GLB_Set_SPI_CLK, .-GLB_Set_SPI_CLK
	.section	.sclock_rlt_code
	.align	1
	.weak	GLB_Set_PKA_CLK_Sel
	.type	GLB_Set_PKA_CLK_Sel, @function
GLB_Set_PKA_CLK_Sel:
.LFB24:
	.loc 1 693 1
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
	.loc 1 694 14
	sw	zero,-20(s0)
	.loc 1 698 13
	li	a5,1073741824
	addi	a5,a5,24
	.loc 1 698 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 699 23
	lw	a4,-20(s0)
	li	a5,-16777216
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 699 55
	lbu	a5,-33(s0)
	.loc 1 699 73
	slli	a5,a5,24
	.loc 1 699 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 700 7
	li	a5,1073741824
	addi	a5,a5,24
	.loc 1 700 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 702 12
	li	a5,0
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
.LFE24:
	.size	GLB_Set_PKA_CLK_Sel, .-GLB_Set_PKA_CLK_Sel
	.section	.tcm_code,"ax",@progbits
	.align	1
	.weak	GLB_SW_System_Reset
	.type	GLB_SW_System_Reset, @function
GLB_SW_System_Reset:
.LFB25:
	.loc 1 717 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 721 13
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 721 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 722 11
	lw	a5,-20(s0)
	andi	a5,a5,-4
	sw	a5,-20(s0)
	.loc 1 723 7
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 723 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 724 6
 #APP
# 724 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 724 29
# 724 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 724 52
# 724 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 724 75
# 724 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 724 98
# 724 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 724 121
# 724 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 724 144
# 724 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 724 167
# 724 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 727 13
 #NO_APP
	li	a5,1073741824
	.loc 1 727 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 728 11
	lw	a4,-20(s0)
	li	a5,-16711680
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 729 11
	lw	a4,-20(s0)
	li	a5,-65536
	addi	a5,a5,255
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 730 7
	li	a5,1073741824
	.loc 1 730 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 731 6
	li	a5,1073745920
	addi	a5,a5,-4
	.loc 1 731 40
	li	a4,1
	sw	a4,0(a5)
	.loc 1 732 6
	li	a5,1073745920
	addi	a5,a5,-4
	.loc 1 732 40
	sw	zero,0(a5)
	.loc 1 733 6
 #APP
# 733 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 733 29
# 733 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 733 52
# 733 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 733 75
# 733 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 733 98
# 733 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 733 121
# 733 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 733 144
# 733 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 733 167
# 733 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 736 13
 #NO_APP
	li	a5,1073741824
	addi	a5,a5,24
	.loc 1 736 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 737 11
	lw	a5,-20(s0)
	andi	a5,a5,-5
	sw	a5,-20(s0)
	.loc 1 738 11
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
	.loc 1 739 11
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 1 740 7
	li	a5,1073741824
	addi	a5,a5,24
	.loc 1 740 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 742 13
	li	a5,1073741824
	addi	a5,a5,24
	.loc 1 742 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 743 11
	lw	a5,-20(s0)
	ori	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 744 11
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 746 7
	li	a5,1073741824
	addi	a5,a5,24
	.loc 1 746 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L88:
	.loc 1 750 9 discriminator 2
	li	a0,10
	call	BL602_Delay_US
	j	.L88
	.cfi_endproc
.LFE25:
	.size	GLB_SW_System_Reset, .-GLB_SW_System_Reset
	.align	1
	.weak	GLB_SW_CPU_Reset
	.type	GLB_SW_CPU_Reset, @function
GLB_SW_CPU_Reset:
.LFB26:
	.loc 1 768 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 772 13
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 772 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 773 11
	lw	a5,-20(s0)
	andi	a5,a5,-4
	sw	a5,-20(s0)
	.loc 1 774 7
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 774 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 775 6
 #APP
# 775 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 775 29
# 775 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 775 52
# 775 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 775 75
# 775 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 775 98
# 775 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 775 121
# 775 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 775 144
# 775 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 775 167
# 775 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 778 13
 #NO_APP
	li	a5,1073741824
	.loc 1 778 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 779 11
	lw	a4,-20(s0)
	li	a5,-16711680
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 780 11
	lw	a4,-20(s0)
	li	a5,-65536
	addi	a5,a5,255
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 781 7
	li	a5,1073741824
	.loc 1 781 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 782 6
	li	a5,1073745920
	addi	a5,a5,-4
	.loc 1 782 40
	li	a4,1
	sw	a4,0(a5)
	.loc 1 783 6
	li	a5,1073745920
	addi	a5,a5,-4
	.loc 1 783 40
	sw	zero,0(a5)
	.loc 1 784 6
 #APP
# 784 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 784 29
# 784 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 784 52
# 784 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 784 75
# 784 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 784 98
# 784 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 784 121
# 784 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 784 144
# 784 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 784 167
# 784 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 787 13
 #NO_APP
	li	a5,1073741824
	addi	a5,a5,24
	.loc 1 787 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 788 11
	lw	a5,-20(s0)
	andi	a5,a5,-5
	sw	a5,-20(s0)
	.loc 1 789 11
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
	.loc 1 790 11
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 1 791 7
	li	a5,1073741824
	addi	a5,a5,24
	.loc 1 791 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 793 13
	li	a5,1073741824
	addi	a5,a5,24
	.loc 1 793 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 795 11
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 797 7
	li	a5,1073741824
	addi	a5,a5,24
	.loc 1 797 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L90:
	.loc 1 801 9 discriminator 2
	li	a0,10
	call	BL602_Delay_US
	j	.L90
	.cfi_endproc
.LFE26:
	.size	GLB_SW_CPU_Reset, .-GLB_SW_CPU_Reset
	.align	1
	.weak	GLB_SW_POR_Reset
	.type	GLB_SW_POR_Reset, @function
GLB_SW_POR_Reset:
.LFB27:
	.loc 1 819 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 823 13
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 823 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 824 11
	lw	a5,-20(s0)
	andi	a5,a5,-4
	sw	a5,-20(s0)
	.loc 1 825 7
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 825 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 826 6
 #APP
# 826 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 826 29
# 826 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 826 52
# 826 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 826 75
# 826 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 826 98
# 826 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 826 121
# 826 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 826 144
# 826 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 826 167
# 826 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 829 13
 #NO_APP
	li	a5,1073741824
	.loc 1 829 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 830 11
	lw	a4,-20(s0)
	li	a5,-16711680
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 831 11
	lw	a4,-20(s0)
	li	a5,-65536
	addi	a5,a5,255
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 832 7
	li	a5,1073741824
	.loc 1 832 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 833 6
	li	a5,1073745920
	addi	a5,a5,-4
	.loc 1 833 40
	li	a4,1
	sw	a4,0(a5)
	.loc 1 834 6
	li	a5,1073745920
	addi	a5,a5,-4
	.loc 1 834 40
	sw	zero,0(a5)
	.loc 1 835 6
 #APP
# 835 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 835 29
# 835 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 835 52
# 835 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 835 75
# 835 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 835 98
# 835 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 835 121
# 835 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 835 144
# 835 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 835 167
# 835 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 838 13
 #NO_APP
	li	a5,1073741824
	addi	a5,a5,24
	.loc 1 838 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 839 11
	lw	a5,-20(s0)
	andi	a5,a5,-5
	sw	a5,-20(s0)
	.loc 1 840 11
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
	.loc 1 841 11
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 1 842 7
	li	a5,1073741824
	addi	a5,a5,24
	.loc 1 842 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 844 13
	li	a5,1073741824
	addi	a5,a5,24
	.loc 1 844 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 845 11
	lw	a5,-20(s0)
	ori	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 846 11
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 847 11
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 848 7
	li	a5,1073741824
	addi	a5,a5,24
	.loc 1 848 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L92:
	.loc 1 852 9 discriminator 2
	li	a0,10
	call	BL602_Delay_US
	j	.L92
	.cfi_endproc
.LFE27:
	.size	GLB_SW_POR_Reset, .-GLB_SW_POR_Reset
	.section	.text.GLB_AHB_Slave1_Reset,"ax",@progbits
	.align	1
	.globl	GLB_AHB_Slave1_Reset
	.type	GLB_AHB_Slave1_Reset, @function
GLB_AHB_Slave1_Reset:
.LFB28:
	.loc 1 868 1
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
	.loc 1 869 14
	sw	zero,-20(s0)
	.loc 1 871 13
	li	a5,1073741824
	addi	a5,a5,20
	.loc 1 871 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 872 18
	lbu	a5,-33(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 1 872 15
	not	a5,a5
	mv	a4,a5
	.loc 1 872 12
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 873 7
	li	a5,1073741824
	addi	a5,a5,20
	.loc 1 873 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 874 6
 #APP
# 874 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 874 29
# 874 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 874 52
# 874 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 874 75
# 874 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 875 13
 #NO_APP
	li	a5,1073741824
	addi	a5,a5,20
	.loc 1 875 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 876 16
	lbu	a5,-33(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 876 12
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 877 7
	li	a5,1073741824
	addi	a5,a5,20
	.loc 1 877 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 878 6
 #APP
# 878 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 878 29
# 878 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 878 52
# 878 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 878 75
# 878 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c" 1
	nop
# 0 "" 2
	.loc 1 879 13
 #NO_APP
	li	a5,1073741824
	addi	a5,a5,20
	.loc 1 879 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 880 18
	lbu	a5,-33(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 1 880 15
	not	a5,a5
	mv	a4,a5
	.loc 1 880 12
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 881 7
	li	a5,1073741824
	addi	a5,a5,20
	.loc 1 881 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 883 12
	li	a5,0
	.loc 1 884 1
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
	.size	GLB_AHB_Slave1_Reset, .-GLB_AHB_Slave1_Reset
	.section	.text.GLB_AHB_Slave1_Clock_Gate,"ax",@progbits
	.align	1
	.globl	GLB_AHB_Slave1_Clock_Gate
	.type	GLB_AHB_Slave1_Clock_Gate, @function
GLB_AHB_Slave1_Clock_Gate:
.LFB29:
	.loc 1 896 1
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
	.loc 1 897 14
	sw	zero,-20(s0)
	.loc 1 899 13
	li	a5,1073741824
	addi	a5,a5,36
	.loc 1 899 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 900 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L96
	.loc 1 902 22
	lbu	a5,-34(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 1 902 19
	not	a5,a5
	mv	a4,a5
	.loc 1 902 16
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
	j	.L97
.L96:
	.loc 1 905 20
	lbu	a5,-34(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 905 16
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
.L97:
	.loc 1 907 7
	li	a5,1073741824
	addi	a5,a5,36
	.loc 1 907 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 909 12
	li	a5,0
	.loc 1 910 1
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
	.size	GLB_AHB_Slave1_Clock_Gate, .-GLB_AHB_Slave1_Clock_Gate
	.section	.text.GLB_BMX_Init,"ax",@progbits
	.align	1
	.globl	GLB_BMX_Init
	.type	GLB_BMX_Init, @function
GLB_BMX_Init:
.LFB30:
	.loc 1 921 1
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
	.loc 1 922 14
	sw	zero,-20(s0)
	.loc 1 926 13
	li	a5,1073741824
	addi	a5,a5,80
	.loc 1 926 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 927 23
	lw	a5,-20(s0)
	andi	a5,a5,-16
	.loc 1 927 71
	lw	a4,-36(s0)
	lbu	a4,0(a4)
	.loc 1 927 11
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 928 23
	lw	a5,-20(s0)
	andi	a4,a5,-257
	.loc 1 928 71
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	.loc 1 928 79
	slli	a5,a5,8
	.loc 1 928 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 929 23
	lw	a5,-20(s0)
	andi	a4,a5,-49
	.loc 1 929 71
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	.loc 1 929 80
	slli	a5,a5,4
	.loc 1 929 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 930 7
	li	a5,1073741824
	addi	a5,a5,80
	.loc 1 930 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 932 12
	li	a5,0
	.loc 1 933 1
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
	.size	GLB_BMX_Init, .-GLB_BMX_Init
	.section	.text.GLB_BMX_Addr_Monitor_Enable,"ax",@progbits
	.align	1
	.globl	GLB_BMX_Addr_Monitor_Enable
	.type	GLB_BMX_Addr_Monitor_Enable, @function
GLB_BMX_Addr_Monitor_Enable:
.LFB31:
	.loc 1 944 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 945 14
	sw	zero,-20(s0)
	.loc 1 947 13
	li	a5,1073741824
	addi	a5,a5,84
	.loc 1 947 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 948 11
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 1 949 7
	li	a5,1073741824
	addi	a5,a5,84
	.loc 1 949 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 951 12
	li	a5,0
	.loc 1 952 1
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
	.size	GLB_BMX_Addr_Monitor_Enable, .-GLB_BMX_Addr_Monitor_Enable
	.section	.text.GLB_BMX_Addr_Monitor_Disable,"ax",@progbits
	.align	1
	.globl	GLB_BMX_Addr_Monitor_Disable
	.type	GLB_BMX_Addr_Monitor_Disable, @function
GLB_BMX_Addr_Monitor_Disable:
.LFB32:
	.loc 1 963 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 964 14
	sw	zero,-20(s0)
	.loc 1 966 13
	li	a5,1073741824
	addi	a5,a5,84
	.loc 1 966 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 967 11
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 968 7
	li	a5,1073741824
	addi	a5,a5,84
	.loc 1 968 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 970 12
	li	a5,0
	.loc 1 971 1
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
.LFE32:
	.size	GLB_BMX_Addr_Monitor_Disable, .-GLB_BMX_Addr_Monitor_Disable
	.section	.text.GLB_BMX_BusErrResponse_Enable,"ax",@progbits
	.align	1
	.globl	GLB_BMX_BusErrResponse_Enable
	.type	GLB_BMX_BusErrResponse_Enable, @function
GLB_BMX_BusErrResponse_Enable:
.LFB33:
	.loc 1 982 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 983 14
	sw	zero,-20(s0)
	.loc 1 985 13
	li	a5,1073741824
	addi	a5,a5,80
	.loc 1 985 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 986 11
	lw	a5,-20(s0)
	ori	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 987 7
	li	a5,1073741824
	addi	a5,a5,80
	.loc 1 987 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 989 12
	li	a5,0
	.loc 1 990 1
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
.LFE33:
	.size	GLB_BMX_BusErrResponse_Enable, .-GLB_BMX_BusErrResponse_Enable
	.section	.text.GLB_BMX_BusErrResponse_Disable,"ax",@progbits
	.align	1
	.globl	GLB_BMX_BusErrResponse_Disable
	.type	GLB_BMX_BusErrResponse_Disable, @function
GLB_BMX_BusErrResponse_Disable:
.LFB34:
	.loc 1 1001 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1002 14
	sw	zero,-20(s0)
	.loc 1 1004 13
	li	a5,1073741824
	addi	a5,a5,80
	.loc 1 1004 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1005 11
	lw	a5,-20(s0)
	andi	a5,a5,-257
	sw	a5,-20(s0)
	.loc 1 1006 7
	li	a5,1073741824
	addi	a5,a5,80
	.loc 1 1006 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1008 12
	li	a5,0
	.loc 1 1009 1
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
.LFE34:
	.size	GLB_BMX_BusErrResponse_Disable, .-GLB_BMX_BusErrResponse_Disable
	.section	.text.GLB_BMX_Get_Status,"ax",@progbits
	.align	1
	.globl	GLB_BMX_Get_Status
	.type	GLB_BMX_Get_Status, @function
GLB_BMX_Get_Status:
.LFB35:
	.loc 1 1020 1
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
	.loc 1 1021 14
	sw	zero,-20(s0)
	.loc 1 1025 13
	li	a5,1073741824
	addi	a5,a5,84
	.loc 1 1025 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1026 7
	lbu	a5,-33(s0)
	bne	a5,zero,.L110
	.loc 1 1027 67
	lw	a5,-20(s0)
	srli	a5,a5,5
	andi	a5,a5,0xff
	andi	a5,a5,1
	andi	a5,a5,0xff
	j	.L111
.L110:
	.loc 1 1029 67
	lw	a5,-20(s0)
	srli	a5,a5,4
	andi	a5,a5,0xff
	andi	a5,a5,1
	andi	a5,a5,0xff
.L111:
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
.LFE35:
	.size	GLB_BMX_Get_Status, .-GLB_BMX_Get_Status
	.section	.text.GLB_BMX_Get_Err_Addr,"ax",@progbits
	.align	1
	.globl	GLB_BMX_Get_Err_Addr
	.type	GLB_BMX_Get_Err_Addr, @function
GLB_BMX_Get_Err_Addr:
.LFB36:
	.loc 1 1042 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1043 13
	li	a5,1073741824
	addi	a5,a5,88
	lw	a5,0(a5)
	.loc 1 1044 1
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
.LFE36:
	.size	GLB_BMX_Get_Err_Addr, .-GLB_BMX_Get_Err_Addr
	.section	.text.BMX_ERR_INT_Callback_Install,"ax",@progbits
	.align	1
	.globl	BMX_ERR_INT_Callback_Install
	.type	BMX_ERR_INT_Callback_Install, @function
BMX_ERR_INT_Callback_Install:
.LFB37:
	.loc 1 1056 1
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
	.loc 1 1059 24
	lbu	a4,-17(s0)
	.loc 1 1059 34
	lui	a5,%hi(glbBmxErrIntCbfArra)
	slli	a4,a4,2
	addi	a5,a5,%lo(glbBmxErrIntCbfArra)
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 1061 12
	li	a5,0
	.loc 1 1062 1
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
.LFE37:
	.size	BMX_ERR_INT_Callback_Install, .-BMX_ERR_INT_Callback_Install
	.section	.text.BMX_TIMEOUT_INT_Callback_Install,"ax",@progbits
	.align	1
	.globl	BMX_TIMEOUT_INT_Callback_Install
	.type	BMX_TIMEOUT_INT_Callback_Install, @function
BMX_TIMEOUT_INT_Callback_Install:
.LFB38:
	.loc 1 1100 1
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
	.loc 1 1103 23
	lbu	a4,-17(s0)
	.loc 1 1103 33
	lui	a5,%hi(glbBmxToIntCbfArra)
	slli	a4,a4,2
	addi	a5,a5,%lo(glbBmxToIntCbfArra)
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 1105 12
	li	a5,0
	.loc 1 1106 1
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
.LFE38:
	.size	BMX_TIMEOUT_INT_Callback_Install, .-BMX_TIMEOUT_INT_Callback_Install
	.section	.text.GLB_Set_SRAM_RET,"ax",@progbits
	.align	1
	.globl	GLB_Set_SRAM_RET
	.type	GLB_Set_SRAM_RET, @function
GLB_Set_SRAM_RET:
.LFB39:
	.loc 1 1143 1
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
	.loc 1 1144 7
	li	a5,1073741824
	addi	a5,a5,112
	.loc 1 1144 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1146 12
	li	a5,0
	.loc 1 1147 1
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
.LFE39:
	.size	GLB_Set_SRAM_RET, .-GLB_Set_SRAM_RET
	.section	.text.GLB_Get_SRAM_RET,"ax",@progbits
	.align	1
	.globl	GLB_Get_SRAM_RET
	.type	GLB_Get_SRAM_RET, @function
GLB_Get_SRAM_RET:
.LFB40:
	.loc 1 1158 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1159 13
	li	a5,1073741824
	addi	a5,a5,112
	lw	a5,0(a5)
	.loc 1 1160 1
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
.LFE40:
	.size	GLB_Get_SRAM_RET, .-GLB_Get_SRAM_RET
	.section	.text.GLB_Set_SRAM_SLP,"ax",@progbits
	.align	1
	.globl	GLB_Set_SRAM_SLP
	.type	GLB_Set_SRAM_SLP, @function
GLB_Set_SRAM_SLP:
.LFB41:
	.loc 1 1171 1
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
	.loc 1 1172 7
	li	a5,1073741824
	addi	a5,a5,116
	.loc 1 1172 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1174 12
	li	a5,0
	.loc 1 1175 1
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
.LFE41:
	.size	GLB_Set_SRAM_SLP, .-GLB_Set_SRAM_SLP
	.section	.text.GLB_Get_SRAM_SLP,"ax",@progbits
	.align	1
	.globl	GLB_Get_SRAM_SLP
	.type	GLB_Get_SRAM_SLP, @function
GLB_Get_SRAM_SLP:
.LFB42:
	.loc 1 1186 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1187 13
	li	a5,1073741824
	addi	a5,a5,116
	lw	a5,0(a5)
	.loc 1 1188 1
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
.LFE42:
	.size	GLB_Get_SRAM_SLP, .-GLB_Get_SRAM_SLP
	.section	.text.GLB_Set_SRAM_PARM,"ax",@progbits
	.align	1
	.globl	GLB_Set_SRAM_PARM
	.type	GLB_Set_SRAM_PARM, @function
GLB_Set_SRAM_PARM:
.LFB43:
	.loc 1 1199 1
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
	.loc 1 1200 7
	li	a5,1073741824
	addi	a5,a5,120
	.loc 1 1200 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1202 12
	li	a5,0
	.loc 1 1203 1
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
.LFE43:
	.size	GLB_Set_SRAM_PARM, .-GLB_Set_SRAM_PARM
	.section	.text.GLB_Get_SRAM_PARM,"ax",@progbits
	.align	1
	.globl	GLB_Get_SRAM_PARM
	.type	GLB_Get_SRAM_PARM, @function
GLB_Get_SRAM_PARM:
.LFB44:
	.loc 1 1214 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1215 13
	li	a5,1073741824
	addi	a5,a5,120
	lw	a5,0(a5)
	.loc 1 1216 1
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
.LFE44:
	.size	GLB_Get_SRAM_PARM, .-GLB_Get_SRAM_PARM
	.section	.text.GLB_Set_EM_Sel,"ax",@progbits
	.align	1
	.globl	GLB_Set_EM_Sel
	.type	GLB_Set_EM_Sel, @function
GLB_Set_EM_Sel:
.LFB45:
	.loc 1 1227 1
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
	.loc 1 1228 14
	sw	zero,-20(s0)
	.loc 1 1232 13
	li	a5,1073741824
	addi	a5,a5,124
	.loc 1 1232 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1233 23
	lw	a5,-20(s0)
	andi	a4,a5,-16
	.loc 1 1233 72
	lbu	a5,-33(s0)
	.loc 1 1233 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1234 7
	li	a5,1073741824
	addi	a5,a5,124
	.loc 1 1234 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1236 12
	li	a5,0
	.loc 1 1237 1
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
.LFE45:
	.size	GLB_Set_EM_Sel, .-GLB_Set_EM_Sel
	.section	.text.GLB_UART_Sig_Swap_Set,"ax",@progbits
	.align	1
	.globl	GLB_UART_Sig_Swap_Set
	.type	GLB_UART_Sig_Swap_Set, @function
GLB_UART_Sig_Swap_Set:
.LFB46:
	.loc 1 1248 1
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
	.loc 1 1249 14
	sw	zero,-20(s0)
	.loc 1 1253 13
	li	a5,1073741824
	addi	a5,a5,128
	.loc 1 1253 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1254 23
	lw	a4,-20(s0)
	li	a5,-117440512
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1254 55
	lbu	a5,-33(s0)
	.loc 1 1254 74
	slli	a5,a5,24
	.loc 1 1254 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1255 7
	li	a5,1073741824
	addi	a5,a5,128
	.loc 1 1255 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1257 12
	li	a5,0
	.loc 1 1258 1
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
.LFE46:
	.size	GLB_UART_Sig_Swap_Set, .-GLB_UART_Sig_Swap_Set
	.section	.text.GLB_JTAG_Sig_Swap_Set,"ax",@progbits
	.align	1
	.globl	GLB_JTAG_Sig_Swap_Set
	.type	GLB_JTAG_Sig_Swap_Set, @function
GLB_JTAG_Sig_Swap_Set:
.LFB47:
	.loc 1 1269 1
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
	.loc 1 1270 14
	sw	zero,-20(s0)
	.loc 1 1274 13
	li	a5,1073741824
	addi	a5,a5,128
	.loc 1 1274 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1275 23
	lw	a5,-20(s0)
	andi	a4,a5,-253
	.loc 1 1275 54
	lbu	a5,-33(s0)
	.loc 1 1275 73
	slli	a5,a5,2
	.loc 1 1275 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1276 7
	li	a5,1073741824
	addi	a5,a5,128
	.loc 1 1276 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1278 12
	li	a5,0
	.loc 1 1279 1
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
.LFE47:
	.size	GLB_JTAG_Sig_Swap_Set, .-GLB_JTAG_Sig_Swap_Set
	.section	.text.GLB_Swap_SPI_0_MOSI_With_MISO,"ax",@progbits
	.align	1
	.globl	GLB_Swap_SPI_0_MOSI_With_MISO
	.type	GLB_Swap_SPI_0_MOSI_With_MISO, @function
GLB_Swap_SPI_0_MOSI_With_MISO:
.LFB48:
	.loc 1 1290 1
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
	.loc 1 1291 14
	sw	zero,-20(s0)
	.loc 1 1293 13
	li	a5,1073741824
	addi	a5,a5,128
	.loc 1 1293 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1294 23
	lw	a4,-20(s0)
	li	a5,-8192
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1294 55
	lbu	a5,-33(s0)
	.loc 1 1294 75
	slli	a5,a5,13
	.loc 1 1294 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1295 7
	li	a5,1073741824
	addi	a5,a5,128
	.loc 1 1295 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1297 12
	li	a5,0
	.loc 1 1298 1
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
.LFE48:
	.size	GLB_Swap_SPI_0_MOSI_With_MISO, .-GLB_Swap_SPI_0_MOSI_With_MISO
	.section	.text.GLB_Set_SPI_0_ACT_MOD_Sel,"ax",@progbits
	.align	1
	.globl	GLB_Set_SPI_0_ACT_MOD_Sel
	.type	GLB_Set_SPI_0_ACT_MOD_Sel, @function
GLB_Set_SPI_0_ACT_MOD_Sel:
.LFB49:
	.loc 1 1309 1
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
	.loc 1 1314 13
	li	a5,1073741824
	addi	a5,a5,128
	.loc 1 1314 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1315 23
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1315 55
	lbu	a5,-33(s0)
	.loc 1 1315 70
	slli	a5,a5,12
	.loc 1 1315 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1316 7
	li	a5,1073741824
	addi	a5,a5,128
	.loc 1 1316 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1318 12
	li	a5,0
	.loc 1 1319 1
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
.LFE49:
	.size	GLB_Set_SPI_0_ACT_MOD_Sel, .-GLB_Set_SPI_0_ACT_MOD_Sel
	.section	.tcm_code
	.align	1
	.weak	GLB_Select_Internal_Flash
	.type	GLB_Select_Internal_Flash, @function
GLB_Select_Internal_Flash:
.LFB50:
	.loc 1 1332 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1335 13
	li	a5,1073741824
	addi	a5,a5,128
	.loc 1 1335 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1336 11
	lw	a5,-20(s0)
	ori	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 1337 7
	li	a5,1073741824
	addi	a5,a5,128
	.loc 1 1337 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1339 12
	li	a5,0
	.loc 1 1340 1
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
.LFE50:
	.size	GLB_Select_Internal_Flash, .-GLB_Select_Internal_Flash
	.align	1
	.weak	GLB_Select_External_Flash
	.type	GLB_Select_External_Flash, @function
GLB_Select_External_Flash:
.LFB51:
	.loc 1 1354 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1357 13
	li	a5,1073741824
	addi	a5,a5,128
	.loc 1 1357 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1358 11
	lw	a5,-20(s0)
	andi	a5,a5,-513
	sw	a5,-20(s0)
	.loc 1 1359 7
	li	a5,1073741824
	addi	a5,a5,128
	.loc 1 1359 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1361 12
	li	a5,0
	.loc 1 1362 1
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
.LFE51:
	.size	GLB_Select_External_Flash, .-GLB_Select_External_Flash
	.align	1
	.weak	GLB_Deswap_Flash_Pin
	.type	GLB_Deswap_Flash_Pin, @function
GLB_Deswap_Flash_Pin:
.LFB52:
	.loc 1 1376 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1379 13
	li	a5,1073741824
	addi	a5,a5,128
	.loc 1 1379 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1380 11
	lw	a5,-20(s0)
	andi	a5,a5,-257
	sw	a5,-20(s0)
	.loc 1 1381 7
	li	a5,1073741824
	addi	a5,a5,128
	.loc 1 1381 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1383 12
	li	a5,0
	.loc 1 1384 1
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
.LFE52:
	.size	GLB_Deswap_Flash_Pin, .-GLB_Deswap_Flash_Pin
	.align	1
	.weak	GLB_Swap_Flash_Pin
	.type	GLB_Swap_Flash_Pin, @function
GLB_Swap_Flash_Pin:
.LFB53:
	.loc 1 1398 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1401 13
	li	a5,1073741824
	addi	a5,a5,128
	.loc 1 1401 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1402 11
	lw	a5,-20(s0)
	ori	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 1403 7
	li	a5,1073741824
	addi	a5,a5,128
	.loc 1 1403 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1405 12
	li	a5,0
	.loc 1 1406 1
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
.LFE53:
	.size	GLB_Swap_Flash_Pin, .-GLB_Swap_Flash_Pin
	.section	.text.GLB_Set_MTimer_CLK,"ax",@progbits
	.align	1
	.globl	GLB_Set_MTimer_CLK
	.type	GLB_Set_MTimer_CLK, @function
GLB_Set_MTimer_CLK:
.LFB54:
	.loc 1 1420 1
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
	.loc 1 1427 13
	li	a5,1073741824
	addi	a5,a5,144
	.loc 1 1427 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1428 11
	lw	a4,-20(s0)
	li	a5,-262144
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1429 7
	li	a5,1073741824
	addi	a5,a5,144
	.loc 1 1429 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1431 13
	li	a5,1073741824
	addi	a5,a5,144
	.loc 1 1431 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1432 23
	lw	a4,-20(s0)
	li	a5,-524288
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1432 55
	lbu	a5,-34(s0)
	.loc 1 1432 73
	slli	a5,a5,19
	.loc 1 1432 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1433 23
	lw	a4,-20(s0)
	li	a5,-131072
	and	a5,a4,a5
	.loc 1 1433 11
	lw	a4,-40(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1434 7
	li	a5,1073741824
	addi	a5,a5,144
	.loc 1 1434 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1436 13
	li	a5,1073741824
	addi	a5,a5,144
	.loc 1 1436 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1437 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L149
	.loc 1 1438 15
	lw	a4,-20(s0)
	li	a5,262144
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L150
.L149:
	.loc 1 1440 15
	lw	a4,-20(s0)
	li	a5,-262144
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
.L150:
	.loc 1 1442 7
	li	a5,1073741824
	addi	a5,a5,144
	.loc 1 1442 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1444 12
	li	a5,0
	.loc 1 1445 1
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
.LFE54:
	.size	GLB_Set_MTimer_CLK, .-GLB_Set_MTimer_CLK
	.section	.text.GLB_Set_ADC_CLK,"ax",@progbits
	.align	1
	.globl	GLB_Set_ADC_CLK
	.type	GLB_Set_ADC_CLK, @function
GLB_Set_ADC_CLK:
.LFB55:
	.loc 1 1458 1
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
	.loc 1 1464 13
	li	a5,1073741824
	addi	a5,a5,164
	.loc 1 1464 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1465 11
	lw	a5,-20(s0)
	andi	a5,a5,-257
	sw	a5,-20(s0)
	.loc 1 1466 7
	li	a5,1073741824
	addi	a5,a5,164
	.loc 1 1466 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1468 13
	li	a5,1073741824
	addi	a5,a5,164
	.loc 1 1468 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1469 23
	lw	a5,-20(s0)
	andi	a4,a5,-64
	.loc 1 1469 69
	lbu	a5,-35(s0)
	.loc 1 1469 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1470 23
	lw	a5,-20(s0)
	andi	a4,a5,-129
	.loc 1 1470 54
	lbu	a5,-34(s0)
	.loc 1 1470 72
	slli	a5,a5,7
	.loc 1 1470 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1471 7
	li	a5,1073741824
	addi	a5,a5,164
	.loc 1 1471 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1473 13
	li	a5,1073741824
	addi	a5,a5,164
	.loc 1 1473 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1474 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L153
	.loc 1 1475 15
	lw	a5,-20(s0)
	ori	a5,a5,256
	sw	a5,-20(s0)
	j	.L154
.L153:
	.loc 1 1477 15
	lw	a5,-20(s0)
	andi	a5,a5,-257
	sw	a5,-20(s0)
.L154:
	.loc 1 1479 7
	li	a5,1073741824
	addi	a5,a5,164
	.loc 1 1479 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1481 12
	li	a5,0
	.loc 1 1482 1
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
.LFE55:
	.size	GLB_Set_ADC_CLK, .-GLB_Set_ADC_CLK
	.section	.text.GLB_Set_DAC_CLK,"ax",@progbits
	.align	1
	.globl	GLB_Set_DAC_CLK
	.type	GLB_Set_DAC_CLK, @function
GLB_Set_DAC_CLK:
.LFB56:
	.loc 1 1495 1
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
	.loc 1 1500 13
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1500 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1501 11
	lw	a4,-20(s0)
	li	a5,-16777216
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1502 7
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1502 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1504 11
	lw	a4,-20(s0)
	li	a5,-33554432
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1506 7
	lbu	a5,-34(s0)
	bne	a5,zero,.L157
	.loc 1 1507 15
	lw	a4,-20(s0)
	li	a5,-268435456
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	j	.L158
.L157:
	.loc 1 1509 15
	lw	a4,-20(s0)
	li	a5,268435456
	or	a5,a4,a5
	sw	a5,-20(s0)
.L158:
	.loc 1 1512 23
	lw	a4,-20(s0)
	li	a5,-8323072
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1512 55
	lbu	a5,-35(s0)
	.loc 1 1512 70
	slli	a5,a5,16
	.loc 1 1512 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1514 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L159
	.loc 1 1515 15
	lw	a4,-20(s0)
	li	a5,16777216
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L160
.L159:
	.loc 1 1517 15
	lw	a4,-20(s0)
	li	a5,-16777216
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
.L160:
	.loc 1 1520 7
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1520 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1522 12
	li	a5,0
	.loc 1 1523 1
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
.LFE56:
	.size	GLB_Set_DAC_CLK, .-GLB_Set_DAC_CLK
	.section	.text.GLB_Platform_Wakeup_Enable,"ax",@progbits
	.align	1
	.globl	GLB_Platform_Wakeup_Enable
	.type	GLB_Platform_Wakeup_Enable, @function
GLB_Platform_Wakeup_Enable:
.LFB57:
	.loc 1 1534 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1537 13
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1537 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1538 11
	lw	a4,-20(s0)
	li	a5,-2147483648
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1539 7
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1539 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1541 12
	li	a5,0
	.loc 1 1542 1
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
.LFE57:
	.size	GLB_Platform_Wakeup_Enable, .-GLB_Platform_Wakeup_Enable
	.section	.text.GLB_Platform_Wakeup_Disable,"ax",@progbits
	.align	1
	.globl	GLB_Platform_Wakeup_Disable
	.type	GLB_Platform_Wakeup_Disable, @function
GLB_Platform_Wakeup_Disable:
.LFB58:
	.loc 1 1553 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1556 13
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1556 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1557 11
	lw	a4,-20(s0)
	li	a5,-2147483648
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1558 7
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1558 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1560 12
	li	a5,0
	.loc 1 1561 1
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
.LFE58:
	.size	GLB_Platform_Wakeup_Disable, .-GLB_Platform_Wakeup_Disable
	.section	.text.GLB_Set_DIG_CLK_Sel,"ax",@progbits
	.align	1
	.globl	GLB_Set_DIG_CLK_Sel
	.type	GLB_Set_DIG_CLK_Sel, @function
GLB_Set_DIG_CLK_Sel:
.LFB59:
	.loc 1 1572 1
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
	.loc 1 1578 13
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1578 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1579 54
	lw	a5,-20(s0)
	srli	a5,a5,24
	.loc 1 1579 14
	andi	a5,a5,1
	sw	a5,-24(s0)
	.loc 1 1580 53
	lw	a5,-20(s0)
	srli	a5,a5,12
	.loc 1 1580 13
	andi	a5,a5,1
	sw	a5,-28(s0)
	.loc 1 1581 11
	lw	a4,-20(s0)
	li	a5,-16777216
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1582 11
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1583 7
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1583 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1585 13
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1585 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1586 23
	lw	a4,-20(s0)
	li	a5,-268435456
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1586 55
	lbu	a5,-33(s0)
	.loc 1 1586 73
	slli	a5,a5,28
	.loc 1 1586 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1587 7
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1587 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1590 13
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1590 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1591 23
	lw	a4,-20(s0)
	li	a5,-16777216
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1591 76
	lw	a5,-24(s0)
	slli	a5,a5,24
	.loc 1 1591 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1592 23
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1592 75
	lw	a5,-28(s0)
	slli	a5,a5,12
	.loc 1 1592 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1593 7
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1593 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1595 12
	li	a5,0
	.loc 1 1596 1
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
.LFE59:
	.size	GLB_Set_DIG_CLK_Sel, .-GLB_Set_DIG_CLK_Sel
	.section	.text.GLB_Set_DIG_512K_CLK,"ax",@progbits
	.align	1
	.globl	GLB_Set_DIG_512K_CLK
	.type	GLB_Set_DIG_512K_CLK, @function
GLB_Set_DIG_512K_CLK:
.LFB60:
	.loc 1 1609 1
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
	.loc 1 1612 13
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1612 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1613 7
	lbu	a5,-34(s0)
	beq	a5,zero,.L169
	.loc 1 1614 15
	lw	a4,-20(s0)
	li	a5,33554432
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L170
.L169:
	.loc 1 1616 15
	lw	a4,-20(s0)
	li	a5,-33554432
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
.L170:
	.loc 1 1618 23
	lw	a4,-20(s0)
	li	a5,-8323072
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1618 55
	lbu	a5,-35(s0)
	.loc 1 1618 70
	slli	a5,a5,16
	.loc 1 1618 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1619 7
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1619 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1621 13
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1621 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1622 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L171
	.loc 1 1623 15
	lw	a4,-20(s0)
	li	a5,16777216
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L172
.L171:
	.loc 1 1625 15
	lw	a4,-20(s0)
	li	a5,-16777216
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
.L172:
	.loc 1 1627 7
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1627 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1629 12
	li	a5,0
	.loc 1 1630 1
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
.LFE60:
	.size	GLB_Set_DIG_512K_CLK, .-GLB_Set_DIG_512K_CLK
	.section	.text.GLB_Set_DIG_32K_CLK,"ax",@progbits
	.align	1
	.globl	GLB_Set_DIG_32K_CLK
	.type	GLB_Set_DIG_32K_CLK, @function
GLB_Set_DIG_32K_CLK:
.LFB61:
	.loc 1 1643 1
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
	.loc 1 1646 13
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1646 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1647 7
	lbu	a5,-34(s0)
	beq	a5,zero,.L175
	.loc 1 1648 15
	lw	a4,-20(s0)
	li	a5,8192
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L176
.L175:
	.loc 1 1650 15
	lw	a4,-20(s0)
	li	a5,-8192
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
.L176:
	.loc 1 1652 23
	lw	a5,-20(s0)
	andi	a4,a5,-2048
	.loc 1 1652 70
	lbu	a5,-35(s0)
	.loc 1 1652 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1653 7
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1653 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1655 13
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1655 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1656 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L177
	.loc 1 1657 15
	lw	a4,-20(s0)
	li	a5,4096
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L178
.L177:
	.loc 1 1659 15
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
.L178:
	.loc 1 1661 7
	li	a5,1073741824
	addi	a5,a5,168
	.loc 1 1661 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1663 12
	li	a5,0
	.loc 1 1664 1
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
.LFE61:
	.size	GLB_Set_DIG_32K_CLK, .-GLB_Set_DIG_32K_CLK
	.section	.text.GLB_Set_BT_Coex_Signal,"ax",@progbits
	.align	1
	.globl	GLB_Set_BT_Coex_Signal
	.type	GLB_Set_BT_Coex_Signal, @function
GLB_Set_BT_Coex_Signal:
.LFB62:
	.loc 1 1678 1
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
	mv	a4,a3
	sb	a5,-33(s0)
	mv	a5,a1
	sb	a5,-34(s0)
	mv	a5,a2
	sb	a5,-35(s0)
	mv	a5,a4
	sb	a5,-36(s0)
	.loc 1 1679 14
	sw	zero,-20(s0)
	.loc 1 1685 13
	li	a5,1073741824
	addi	a5,a5,172
	.loc 1 1685 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1686 23
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,2047
	and	a4,a4,a5
	.loc 1 1686 55
	lbu	a5,-34(s0)
	.loc 1 1686 76
	slli	a5,a5,11
	.loc 1 1686 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1687 23
	lw	a5,-20(s0)
	andi	a4,a5,-1921
	.loc 1 1687 54
	lbu	a5,-35(s0)
	.loc 1 1687 69
	slli	a5,a5,7
	.loc 1 1687 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1688 23
	lw	a5,-20(s0)
	andi	a4,a5,-128
	.loc 1 1688 73
	lbu	a5,-36(s0)
	.loc 1 1688 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1689 7
	li	a5,1073741824
	addi	a5,a5,172
	.loc 1 1689 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1691 13
	li	a5,1073741824
	addi	a5,a5,172
	.loc 1 1691 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1692 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L181
	.loc 1 1693 15
	lw	a4,-20(s0)
	li	a5,4096
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L182
.L181:
	.loc 1 1695 15
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
.L182:
	.loc 1 1697 7
	li	a5,1073741824
	addi	a5,a5,172
	.loc 1 1697 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1699 12
	li	a5,0
	.loc 1 1700 1
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
.LFE62:
	.size	GLB_Set_BT_Coex_Signal, .-GLB_Set_BT_Coex_Signal
	.section	.text.GLB_UART_Fun_Sel,"ax",@progbits
	.align	1
	.globl	GLB_UART_Fun_Sel
	.type	GLB_UART_Fun_Sel, @function
GLB_UART_Fun_Sel:
.LFB63:
	.loc 1 1712 1
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
	.loc 1 1713 14
	sw	zero,-20(s0)
	.loc 1 1714 14
	sw	zero,-24(s0)
	.loc 1 1719 13
	li	a5,1073741824
	addi	a5,a5,192
	.loc 1 1719 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1720 17
	lbu	a5,-33(s0)
	slli	a5,a5,2
	.loc 1 1720 12
	sw	a5,-20(s0)
	.loc 1 1722 21
	lw	a5,-20(s0)
	li	a4,15
	sll	a5,a4,a5
	.loc 1 1722 16
	not	a5,a5
	mv	a4,a5
	.loc 1 1722 12
	lw	a5,-24(s0)
	and	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 1724 19
	lbu	a4,-34(s0)
	lw	a5,-20(s0)
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 1724 12
	lw	a5,-24(s0)
	or	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 1725 7
	li	a5,1073741824
	addi	a5,a5,192
	.loc 1 1725 60
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 1727 12
	li	a5,0
	.loc 1 1728 1
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
.LFE63:
	.size	GLB_UART_Fun_Sel, .-GLB_UART_Fun_Sel
	.section	.text.GLB_IR_RX_GPIO_Sel,"ax",@progbits
	.align	1
	.globl	GLB_IR_RX_GPIO_Sel
	.type	GLB_IR_RX_GPIO_Sel, @function
GLB_IR_RX_GPIO_Sel:
.LFB64:
	.loc 1 1739 1
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
	.loc 1 1740 14
	sw	zero,-20(s0)
	.loc 1 1743 7
	lbu	a4,-33(s0)
	li	a5,10
	bleu	a4,a5,.L187
	.loc 1 1743 16 discriminator 1
	lbu	a4,-33(s0)
	li	a5,13
	bgtu	a4,a5,.L187
	.loc 1 1744 17
	li	a5,1073741824
	addi	a5,a5,548
	.loc 1 1744 15
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1745 27
	lw	a5,-20(s0)
	andi	a4,a5,-769
	.loc 1 1745 73
	lbu	a5,-33(s0)
	addi	a5,a5,-10
	.loc 1 1745 77
	slli	a5,a5,8
	.loc 1 1745 15
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1746 11
	li	a5,1073741824
	addi	a5,a5,548
	.loc 1 1746 65
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L187:
	.loc 1 1750 7
	lbu	a5,-33(s0)
	bne	a5,zero,.L188
	.loc 1 1751 17
	li	a5,1073741824
	addi	a5,a5,548
	.loc 1 1751 15
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1752 15
	lw	a5,-20(s0)
	andi	a5,a5,-769
	sw	a5,-20(s0)
	.loc 1 1753 11
	li	a5,1073741824
	addi	a5,a5,548
	.loc 1 1753 65
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L188:
	.loc 1 1756 12
	li	a5,0
	.loc 1 1757 1
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
.LFE64:
	.size	GLB_IR_RX_GPIO_Sel, .-GLB_IR_RX_GPIO_Sel
	.section	.text.GLB_IR_LED_Driver_Enable,"ax",@progbits
	.align	1
	.globl	GLB_IR_LED_Driver_Enable
	.type	GLB_IR_LED_Driver_Enable, @function
GLB_IR_LED_Driver_Enable:
.LFB65:
	.loc 1 1768 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1769 14
	sw	zero,-20(s0)
	.loc 1 1772 13
	li	a5,1073741824
	addi	a5,a5,548
	.loc 1 1772 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1773 11
	lw	a4,-20(s0)
	li	a5,-2147483648
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1774 7
	li	a5,1073741824
	addi	a5,a5,548
	.loc 1 1774 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1776 12
	li	a5,0
	.loc 1 1777 1
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
.LFE65:
	.size	GLB_IR_LED_Driver_Enable, .-GLB_IR_LED_Driver_Enable
	.section	.text.GLB_IR_LED_Driver_Disable,"ax",@progbits
	.align	1
	.globl	GLB_IR_LED_Driver_Disable
	.type	GLB_IR_LED_Driver_Disable, @function
GLB_IR_LED_Driver_Disable:
.LFB66:
	.loc 1 1788 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1789 14
	sw	zero,-20(s0)
	.loc 1 1792 13
	li	a5,1073741824
	addi	a5,a5,548
	.loc 1 1792 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1793 11
	lw	a4,-20(s0)
	li	a5,-2147483648
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1794 7
	li	a5,1073741824
	addi	a5,a5,548
	.loc 1 1794 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1796 12
	li	a5,0
	.loc 1 1797 1
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
.LFE66:
	.size	GLB_IR_LED_Driver_Disable, .-GLB_IR_LED_Driver_Disable
	.section	.text.GLB_IR_LED_Driver_Ibias,"ax",@progbits
	.align	1
	.globl	GLB_IR_LED_Driver_Ibias
	.type	GLB_IR_LED_Driver_Ibias, @function
GLB_IR_LED_Driver_Ibias:
.LFB67:
	.loc 1 1808 1
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
	.loc 1 1809 14
	sw	zero,-20(s0)
	.loc 1 1812 13
	li	a5,1073741824
	addi	a5,a5,548
	.loc 1 1812 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1813 23
	lw	a5,-20(s0)
	andi	a4,a5,-241
	.loc 1 1813 70
	lbu	a5,-33(s0)
	.loc 1 1813 75
	slli	a5,a5,4
	andi	a5,a5,255
	.loc 1 1813 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1814 7
	li	a5,1073741824
	addi	a5,a5,548
	.loc 1 1814 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1816 12
	li	a5,0
	.loc 1 1817 1
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
.LFE67:
	.size	GLB_IR_LED_Driver_Ibias, .-GLB_IR_LED_Driver_Ibias
	.section	.tcm_code
	.align	1
	.weak	GLB_GPIO_Init
	.type	GLB_GPIO_Init, @function
GLB_GPIO_Init:
.LFB68:
	.loc 1 1830 1
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
	.loc 1 1831 13
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	.loc 1 1837 66
	lbu	a5,-25(s0)
	srli	a5,a5,5
	andi	a5,a5,0xff
	slli	a4,a5,2
	.loc 1 1837 52
	li	a5,1073741824
	addi	a5,a5,400
	add	a5,a4,a5
	.loc 1 1837 9
	sw	a5,-32(s0)
	.loc 1 1838 16
	lbu	a5,-25(s0)
	.loc 1 1838 8
	andi	a5,a5,31
	sw	a5,-36(s0)
	.loc 1 1839 11
	lw	a5,-32(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1841 19
	lw	a5,-36(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 1 1841 16
	not	a5,a5
	mv	a4,a5
	.loc 1 1841 12
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 1842 10
	lw	a5,-32(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1844 73
	lbu	a5,-25(s0)
	srli	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1844 75
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 1844 65
	li	a5,1073741824
	addi	a5,a5,256
	add	a5,a4,a5
	.loc 1 1844 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1846 17
	lbu	a5,-25(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1846 7
	bne	a5,zero,.L197
	.loc 1 1848 15
	lw	a5,-52(s0)
	lbu	a4,2(a5)
	.loc 1 1848 11
	li	a5,1
	bne	a4,a5,.L198
	.loc 1 1849 19
	lw	a5,-24(s0)
	andi	a5,a5,-2
	sw	a5,-24(s0)
	.loc 1 1850 25
	lw	a5,-36(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 1850 20
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	j	.L199
.L198:
	.loc 1 1852 19
	lw	a5,-24(s0)
	ori	a5,a5,1
	sw	a5,-24(s0)
.L199:
	.loc 1 1856 15
	lw	a5,-24(s0)
	andi	a5,a5,-17
	sw	a5,-24(s0)
	.loc 1 1857 15
	lw	a5,-24(s0)
	andi	a5,a5,-33
	sw	a5,-24(s0)
	.loc 1 1858 15
	lw	a5,-52(s0)
	lbu	a5,3(a5)
	.loc 1 1858 11
	bne	a5,zero,.L200
	.loc 1 1859 19
	lw	a5,-24(s0)
	ori	a5,a5,16
	sw	a5,-24(s0)
	j	.L201
.L200:
	.loc 1 1860 21
	lw	a5,-52(s0)
	lbu	a4,3(a5)
	.loc 1 1860 17
	li	a5,1
	bne	a4,a5,.L201
	.loc 1 1861 19
	lw	a5,-24(s0)
	ori	a5,a5,32
	sw	a5,-24(s0)
.L201:
	.loc 1 1864 27
	lw	a5,-24(s0)
	andi	a4,a5,-13
	.loc 1 1864 72
	lw	a5,-52(s0)
	lbu	a5,4(a5)
	.loc 1 1864 80
	slli	a5,a5,2
	.loc 1 1864 15
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 1865 27
	lw	a5,-24(s0)
	andi	a4,a5,-3
	.loc 1 1865 72
	lw	a5,-52(s0)
	lbu	a5,5(a5)
	.loc 1 1865 82
	slli	a5,a5,1
	.loc 1 1865 15
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 1866 27
	lw	a4,-24(s0)
	li	a5,-4096
	addi	a5,a5,255
	and	a4,a4,a5
	.loc 1 1866 72
	lw	a5,-52(s0)
	lbu	a5,1(a5)
	.loc 1 1866 82
	slli	a5,a5,8
	.loc 1 1866 15
	or	a5,a4,a5
	sw	a5,-24(s0)
	j	.L202
.L197:
	.loc 1 1869 15
	lw	a5,-52(s0)
	lbu	a4,2(a5)
	.loc 1 1869 11
	li	a5,1
	bne	a4,a5,.L203
	.loc 1 1870 19
	lw	a4,-24(s0)
	li	a5,-65536
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 1871 25
	lw	a5,-36(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 1871 20
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	j	.L204
.L203:
	.loc 1 1873 19
	lw	a4,-24(s0)
	li	a5,65536
	or	a5,a4,a5
	sw	a5,-24(s0)
.L204:
	.loc 1 1876 15
	lw	a4,-24(s0)
	li	a5,-1048576
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 1877 15
	lw	a4,-24(s0)
	li	a5,-2097152
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 1878 15
	lw	a5,-52(s0)
	lbu	a5,3(a5)
	.loc 1 1878 11
	bne	a5,zero,.L205
	.loc 1 1879 19
	lw	a4,-24(s0)
	li	a5,1048576
	or	a5,a4,a5
	sw	a5,-24(s0)
	j	.L206
.L205:
	.loc 1 1880 21
	lw	a5,-52(s0)
	lbu	a4,3(a5)
	.loc 1 1880 17
	li	a5,1
	bne	a4,a5,.L206
	.loc 1 1881 19
	lw	a4,-24(s0)
	li	a5,2097152
	or	a5,a4,a5
	sw	a5,-24(s0)
.L206:
	.loc 1 1884 27
	lw	a4,-24(s0)
	li	a5,-786432
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1884 73
	lw	a5,-52(s0)
	lbu	a5,4(a5)
	.loc 1 1884 81
	slli	a5,a5,18
	.loc 1 1884 15
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 1885 27
	lw	a4,-24(s0)
	li	a5,-131072
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1885 73
	lw	a5,-52(s0)
	lbu	a5,5(a5)
	.loc 1 1885 83
	slli	a5,a5,17
	.loc 1 1885 15
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 1886 27
	lw	a4,-24(s0)
	li	a5,-251658240
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1886 73
	lw	a5,-52(s0)
	lbu	a5,1(a5)
	.loc 1 1886 83
	slli	a5,a5,24
	.loc 1 1886 15
	or	a5,a4,a5
	sw	a5,-24(s0)
.L202:
	.loc 1 1889 66
	lbu	a5,-25(s0)
	srli	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1889 68
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 1889 58
	li	a5,1073741824
	addi	a5,a5,256
	add	a5,a4,a5
	.loc 1 1889 8
	mv	a4,a5
	.loc 1 1889 72
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 1891 10
	lw	a5,-32(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1893 12
	li	a5,0
	.loc 1 1894 1
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
.LFE68:
	.size	GLB_GPIO_Init, .-GLB_GPIO_Init
	.section	.text.GLB_GPIO_Func_Init,"ax",@progbits
	.align	1
	.globl	GLB_GPIO_Func_Init
	.type	GLB_GPIO_Func_Init, @function
GLB_GPIO_Func_Init:
.LFB69:
	.loc 1 1908 1
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
	.loc 1 1909 23
	sb	zero,-24(s0)
	lbu	a5,-33(s0)
	sb	a5,-23(s0)
	li	a5,2
	sb	a5,-22(s0)
	sb	zero,-21(s0)
	li	a5,1
	sb	a5,-20(s0)
	li	a5,1
	sb	a5,-19(s0)
	.loc 1 1918 7
	lbu	a4,-33(s0)
	li	a5,10
	bne	a4,a5,.L209
	.loc 1 1919 25
	li	a5,2
	sb	a5,-21(s0)
.L209:
.LBB2:
	.loc 1 1922 17
	sb	zero,-17(s0)
	.loc 1 1922 5
	j	.L210
.L211:
	.loc 1 1923 32
	lbu	a5,-17(s0)
	lw	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 1923 24
	sb	a5,-24(s0)
	.loc 1 1924 9
	addi	a5,s0,-24
	mv	a0,a5
	call	GLB_GPIO_Init
	.loc 1 1922 28 discriminator 3
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L210:
	.loc 1 1922 22 discriminator 1
	lbu	a4,-17(s0)
	lbu	a5,-34(s0)
	bltu	a4,a5,.L211
.LBE2:
	.loc 1 1927 12
	li	a5,0
	.loc 1 1928 1
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
.LFE69:
	.size	GLB_GPIO_Func_Init, .-GLB_GPIO_Func_Init
	.section	.tcm_code
	.align	1
	.weak	GLB_GPIO_INPUT_Enable
	.type	GLB_GPIO_INPUT_Enable, @function
GLB_GPIO_INPUT_Enable:
.LFB70:
	.loc 1 1941 1
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
	.loc 1 1945 27
	lbu	a5,-33(s0)
	srli	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1945 14
	slli	a5,a5,2
	sw	a5,-24(s0)
	.loc 1 1946 55
	lw	a4,-24(s0)
	li	a5,1073741824
	addi	a5,a5,256
	add	a5,a4,a5
	.loc 1 1946 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1947 17
	lbu	a5,-33(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1947 7
	bne	a5,zero,.L214
	.loc 1 1949 15
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	j	.L215
.L214:
	.loc 1 1952 15
	lw	a4,-20(s0)
	li	a5,65536
	or	a5,a4,a5
	sw	a5,-20(s0)
.L215:
	.loc 1 1954 48
	lw	a4,-24(s0)
	li	a5,1073741824
	addi	a5,a5,256
	add	a5,a4,a5
	.loc 1 1954 6
	mv	a4,a5
	.loc 1 1954 59
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 1956 12
	li	a5,0
	.loc 1 1957 1
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
.LFE70:
	.size	GLB_GPIO_INPUT_Enable, .-GLB_GPIO_INPUT_Enable
	.align	1
	.weak	GLB_GPIO_INPUT_Disable
	.type	GLB_GPIO_INPUT_Disable, @function
GLB_GPIO_INPUT_Disable:
.LFB71:
	.loc 1 1971 1
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
	.loc 1 1975 27
	lbu	a5,-33(s0)
	srli	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1975 14
	slli	a5,a5,2
	sw	a5,-24(s0)
	.loc 1 1976 55
	lw	a4,-24(s0)
	li	a5,1073741824
	addi	a5,a5,256
	add	a5,a4,a5
	.loc 1 1976 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1977 17
	lbu	a5,-33(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1977 7
	bne	a5,zero,.L218
	.loc 1 1979 15
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	j	.L219
.L218:
	.loc 1 1982 15
	lw	a4,-20(s0)
	li	a5,-65536
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
.L219:
	.loc 1 1984 48
	lw	a4,-24(s0)
	li	a5,1073741824
	addi	a5,a5,256
	add	a5,a4,a5
	.loc 1 1984 6
	mv	a4,a5
	.loc 1 1984 59
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 1986 12
	li	a5,0
	.loc 1 1987 1
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
.LFE71:
	.size	GLB_GPIO_INPUT_Disable, .-GLB_GPIO_INPUT_Disable
	.align	1
	.weak	GLB_GPIO_OUTPUT_Enable
	.type	GLB_GPIO_OUTPUT_Enable, @function
GLB_GPIO_OUTPUT_Enable:
.LFB72:
	.loc 1 2001 1
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
	.loc 1 2004 13
	li	a5,1073741824
	addi	a5,a5,400
	.loc 1 2004 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2005 21
	lbu	a5,-33(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 2005 11
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 2006 7
	li	a5,1073741824
	addi	a5,a5,400
	.loc 1 2006 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 2008 12
	li	a5,0
	.loc 1 2009 1
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
.LFE72:
	.size	GLB_GPIO_OUTPUT_Enable, .-GLB_GPIO_OUTPUT_Enable
	.align	1
	.weak	GLB_GPIO_OUTPUT_Disable
	.type	GLB_GPIO_OUTPUT_Disable, @function
GLB_GPIO_OUTPUT_Disable:
.LFB73:
	.loc 1 2023 1
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
	.loc 1 2026 13
	li	a5,1073741824
	addi	a5,a5,400
	.loc 1 2026 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2027 22
	lbu	a5,-33(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 1 2027 19
	not	a5,a5
	mv	a4,a5
	.loc 1 2027 11
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 2028 7
	li	a5,1073741824
	addi	a5,a5,400
	.loc 1 2028 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 2030 12
	li	a5,0
	.loc 1 2031 1
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
.LFE73:
	.size	GLB_GPIO_OUTPUT_Disable, .-GLB_GPIO_OUTPUT_Disable
	.align	1
	.weak	GLB_GPIO_Set_HZ
	.type	GLB_GPIO_Set_HZ, @function
GLB_GPIO_Set_HZ:
.LFB74:
	.loc 1 2045 1
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
	.loc 1 2051 66
	lbu	a5,-33(s0)
	srli	a5,a5,5
	andi	a5,a5,0xff
	slli	a4,a5,2
	.loc 1 2051 52
	li	a5,1073741824
	addi	a5,a5,400
	add	a5,a4,a5
	.loc 1 2051 9
	sw	a5,-24(s0)
	.loc 1 2052 16
	lbu	a5,-33(s0)
	.loc 1 2052 8
	andi	a5,a5,31
	sw	a5,-28(s0)
	.loc 1 2053 11
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 2056 19
	lw	a5,-28(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 1 2056 16
	not	a5,a5
	mv	a4,a5
	.loc 1 2056 12
	lw	a5,-32(s0)
	and	a5,a5,a4
	sw	a5,-32(s0)
	.loc 1 2057 10
	lw	a5,-24(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 1 2059 73
	lbu	a5,-33(s0)
	srli	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 2059 75
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 2059 65
	li	a5,1073741824
	addi	a5,a5,256
	add	a5,a4,a5
	.loc 1 2059 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2062 17
	lbu	a5,-33(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 2062 7
	bne	a5,zero,.L226
	.loc 1 2063 15
	lw	a4,-20(s0)
	li	a5,-65536
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 2064 15
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-1280
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L227
.L226:
	.loc 1 2066 15
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a5,-20(s0)
	.loc 1 2067 15
	lw	a4,-20(s0)
	li	a5,184549376
	or	a5,a4,a5
	sw	a5,-20(s0)
.L227:
	.loc 1 2070 66
	lbu	a5,-33(s0)
	srli	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 2070 68
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 2070 58
	li	a5,1073741824
	addi	a5,a5,256
	add	a5,a4,a5
	.loc 1 2070 8
	mv	a4,a5
	.loc 1 2070 72
	lw	a5,-20(s0)
	sw	a5,0(a4)
	.loc 1 2073 10
	lw	a5,-24(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 1 2075 12
	li	a5,0
	.loc 1 2076 1
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
.LFE74:
	.size	GLB_GPIO_Set_HZ, .-GLB_GPIO_Set_HZ
	.align	1
	.weak	GLB_GPIO_Get_Fun
	.type	GLB_GPIO_Get_Fun, @function
GLB_GPIO_Get_Fun:
.LFB75:
	.loc 1 2090 1
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
	.loc 1 2092 72
	lbu	a5,-33(s0)
	srli	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 2092 74
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 2092 64
	li	a5,1073741824
	addi	a5,a5,256
	add	a5,a4,a5
	.loc 1 2092 10
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2094 16
	lbu	a5,-33(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 2094 6
	bne	a5,zero,.L230
	.loc 1 2095 53
	lw	a5,-20(s0)
	srli	a5,a5,8
	andi	a5,a5,0xff
	andi	a5,a5,15
	andi	a5,a5,0xff
	j	.L231
.L230:
	.loc 1 2097 54
	lw	a5,-20(s0)
	srli	a5,a5,24
	andi	a5,a5,0xff
	andi	a5,a5,15
	andi	a5,a5,0xff
.L231:
	.loc 1 2099 1
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
.LFE75:
	.size	GLB_GPIO_Get_Fun, .-GLB_GPIO_Get_Fun
	.section	.text.GLB_GPIO_Get_Real_Fun,"ax",@progbits
	.align	1
	.globl	GLB_GPIO_Get_Real_Fun
	.type	GLB_GPIO_Get_Real_Fun, @function
GLB_GPIO_Get_Real_Fun:
.LFB76:
	.loc 1 2111 1
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
	.loc 1 2116 72
	lbu	a5,-33(s0)
	srli	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 2116 74
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 2116 64
	li	a5,1073741824
	addi	a5,a5,256
	add	a5,a4,a5
	.loc 1 2116 10
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2117 16
	lbu	a5,-33(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 2117 6
	bne	a5,zero,.L233
	.loc 1 2118 79
	lw	a5,-20(s0)
	srli	a5,a5,12
	andi	a5,a5,15
	.loc 1 2118 15
	andi	a5,a5,0xff
	j	.L234
.L233:
	.loc 1 2120 79
	lw	a5,-20(s0)
	srli	a5,a5,28
	.loc 1 2120 15
	andi	a5,a5,0xff
.L234:
	.loc 1 2122 1
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
.LFE76:
	.size	GLB_GPIO_Get_Real_Fun, .-GLB_GPIO_Get_Real_Fun
	.section	.text.GLB_GPIO_Write,"ax",@progbits
	.align	1
	.globl	GLB_GPIO_Write
	.type	GLB_GPIO_Write, @function
GLB_GPIO_Write:
.LFB77:
	.loc 1 2134 1
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
	.loc 1 2135 76
	lbu	a5,-33(s0)
	srli	a5,a5,5
	andi	a5,a5,0xff
	slli	a4,a5,2
	.loc 1 2135 62
	li	a5,1073741824
	addi	a5,a5,392
	add	a5,a4,a5
	.loc 1 2135 15
	sw	a5,-24(s0)
	.loc 1 2136 25
	lbu	a5,-33(s0)
	.loc 1 2136 14
	andi	a5,a5,31
	sw	a5,-28(s0)
	.loc 1 2139 11
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2140 7
	lw	a5,-40(s0)
	beq	a5,zero,.L236
	.loc 1 2141 21
	lw	a5,-28(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 2141 16
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	j	.L237
.L236:
	.loc 1 2143 23
	lw	a5,-28(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 1 2143 20
	not	a5,a5
	mv	a4,a5
	.loc 1 2143 16
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
.L237:
	.loc 1 2145 10
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 2147 12
	li	a5,0
	.loc 1 2148 1
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
.LFE77:
	.size	GLB_GPIO_Write, .-GLB_GPIO_Write
	.section	.text.GLB_GPIO_Read,"ax",@progbits
	.align	1
	.globl	GLB_GPIO_Read
	.type	GLB_GPIO_Read, @function
GLB_GPIO_Read:
.LFB78:
	.loc 1 2159 1
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
	.loc 1 2160 73
	lbu	a5,-33(s0)
	srli	a5,a5,5
	andi	a5,a5,0xff
	slli	a4,a5,2
	.loc 1 2160 59
	li	a5,1073741824
	addi	a5,a5,384
	add	a5,a4,a5
	.loc 1 2160 15
	sw	a5,-20(s0)
	.loc 1 2161 25
	lbu	a5,-33(s0)
	.loc 1 2161 14
	andi	a5,a5,31
	sw	a5,-24(s0)
	.loc 1 2163 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 2163 15
	lw	a4,-24(s0)
	li	a3,1
	sll	a4,a3,a4
	.loc 1 2163 12
	and	a5,a5,a4
	.loc 1 2163 7
	beq	a5,zero,.L240
	.loc 1 2164 16
	li	a5,1
	j	.L241
.L240:
	.loc 1 2166 16
	li	a5,0
.L241:
	.loc 1 2168 1
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
.LFE78:
	.size	GLB_GPIO_Read, .-GLB_GPIO_Read
	.section	.text.GLB_GPIO_IntMask,"ax",@progbits
	.align	1
	.globl	GLB_GPIO_IntMask
	.type	GLB_GPIO_IntMask, @function
GLB_GPIO_IntMask:
.LFB79:
	.loc 1 2180 1
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
	.loc 1 2183 7
	lbu	a4,-33(s0)
	li	a5,31
	bgtu	a4,a5,.L243
	.loc 1 2185 19
	li	a5,1073741824
	addi	a5,a5,416
	.loc 1 2185 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2186 11
	lbu	a4,-34(s0)
	li	a5,1
	bne	a4,a5,.L244
	.loc 1 2187 31
	lbu	a5,-33(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 2187 20
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	j	.L245
.L244:
	.loc 1 2189 32
	lbu	a5,-33(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 1 2189 29
	not	a5,a5
	mv	a4,a5
	.loc 1 2189 20
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
.L245:
	.loc 1 2191 11
	li	a5,1073741824
	addi	a5,a5,416
	.loc 1 2191 65
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L243:
	.loc 1 2194 12
	li	a5,0
	.loc 1 2195 1
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
.LFE79:
	.size	GLB_GPIO_IntMask, .-GLB_GPIO_IntMask
	.section	.text.GLB_GPIO_IntClear,"ax",@progbits
	.align	1
	.globl	GLB_GPIO_IntClear
	.type	GLB_GPIO_IntClear, @function
GLB_GPIO_IntClear:
.LFB80:
	.loc 1 2207 1
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
	.loc 1 2210 7
	lbu	a4,-33(s0)
	li	a5,31
	bgtu	a4,a5,.L248
	.loc 1 2212 19
	li	a5,1073741824
	addi	a5,a5,432
	.loc 1 2212 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2213 11
	lbu	a4,-34(s0)
	li	a5,1
	bne	a4,a5,.L249
	.loc 1 2214 31
	lbu	a5,-33(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 2214 20
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	j	.L250
.L249:
	.loc 1 2216 32
	lbu	a5,-33(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 1 2216 29
	not	a5,a5
	mv	a4,a5
	.loc 1 2216 20
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
.L250:
	.loc 1 2218 11
	li	a5,1073741824
	addi	a5,a5,432
	.loc 1 2218 65
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L248:
	.loc 1 2221 12
	li	a5,0
	.loc 1 2222 1
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
.LFE80:
	.size	GLB_GPIO_IntClear, .-GLB_GPIO_IntClear
	.section	.text.GLB_Get_GPIO_IntStatus,"ax",@progbits
	.align	1
	.globl	GLB_Get_GPIO_IntStatus
	.type	GLB_Get_GPIO_IntStatus, @function
GLB_Get_GPIO_IntStatus:
.LFB81:
	.loc 1 2233 1
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
	.loc 1 2234 14
	sw	zero,-20(s0)
	.loc 1 2236 7
	lbu	a4,-33(s0)
	li	a5,31
	bgtu	a4,a5,.L253
	.loc 1 2238 19
	li	a5,1073741824
	addi	a5,a5,424
	.loc 1 2238 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L253:
	.loc 1 2241 22
	lbu	a5,-33(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 2241 19
	lw	a5,-20(s0)
	and	a5,a4,a5
	.loc 1 2241 37
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 1 2242 1
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
.LFE81:
	.size	GLB_Get_GPIO_IntStatus, .-GLB_Get_GPIO_IntStatus
	.section	.text.GLB_Clr_GPIO_IntStatus,"ax",@progbits
	.align	1
	.globl	GLB_Clr_GPIO_IntStatus
	.type	GLB_Clr_GPIO_IntStatus, @function
GLB_Clr_GPIO_IntStatus:
.LFB82:
	.loc 1 2253 1
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
	.loc 1 2256 7
	lbu	a4,-33(s0)
	li	a5,31
	bgtu	a4,a5,.L256
	.loc 1 2258 19
	li	a5,1073741824
	addi	a5,a5,432
	.loc 1 2258 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2259 27
	lbu	a5,-33(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 2259 16
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 2260 11
	li	a5,1073741824
	addi	a5,a5,432
	.loc 1 2260 65
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L256:
	.loc 1 2263 12
	li	a5,0
	.loc 1 2264 1
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
.LFE82:
	.size	GLB_Clr_GPIO_IntStatus, .-GLB_Clr_GPIO_IntStatus
	.section	.text.GLB_Set_GPIO_IntMod,"ax",@progbits
	.align	1
	.globl	GLB_Set_GPIO_IntMod
	.type	GLB_Set_GPIO_IntMod, @function
GLB_Set_GPIO_IntMod:
.LFB83:
	.loc 1 2277 1
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
	.loc 1 2284 7
	lbu	a4,-33(s0)
	li	a5,9
	bgtu	a4,a5,.L259
	.loc 1 2286 19
	li	a5,1073741824
	addi	a5,a5,448
	.loc 1 2286 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2287 20
	lbu	a5,-33(s0)
	sw	a5,-24(s0)
	.loc 1 2288 35
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 1 2288 31
	li	a4,7
	sll	a5,a4,a5
	.loc 1 2288 26
	not	a5,a5
	mv	a4,a5
	.loc 1 2288 25
	lw	a5,-20(s0)
	and	a3,a4,a5
	.loc 1 2288 62
	lbu	a5,-34(s0)
	slli	a4,a5,2
	.loc 1 2288 66
	lbu	a5,-35(s0)
	or	a2,a4,a5
	.loc 1 2288 81
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 1 2288 77
	sll	a5,a2,a5
	.loc 1 2288 16
	or	a5,a3,a5
	sw	a5,-20(s0)
	.loc 1 2289 11
	li	a5,1073741824
	addi	a5,a5,448
	.loc 1 2289 65
	lw	a4,-20(s0)
	sw	a4,0(a5)
	j	.L260
.L259:
	.loc 1 2290 13
	lbu	a4,-33(s0)
	li	a5,19
	bgtu	a4,a5,.L261
	.loc 1 2292 19
	li	a5,1073741824
	addi	a5,a5,452
	.loc 1 2292 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2293 30
	lbu	a5,-33(s0)
	addi	a5,a5,-10
	.loc 1 2293 20
	sw	a5,-24(s0)
	.loc 1 2294 35
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 1 2294 31
	li	a4,7
	sll	a5,a4,a5
	.loc 1 2294 26
	not	a5,a5
	mv	a4,a5
	.loc 1 2294 25
	lw	a5,-20(s0)
	and	a3,a4,a5
	.loc 1 2294 62
	lbu	a5,-34(s0)
	slli	a4,a5,2
	.loc 1 2294 66
	lbu	a5,-35(s0)
	or	a2,a4,a5
	.loc 1 2294 81
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 1 2294 77
	sll	a5,a2,a5
	.loc 1 2294 16
	or	a5,a3,a5
	sw	a5,-20(s0)
	.loc 1 2295 11
	li	a5,1073741824
	addi	a5,a5,452
	.loc 1 2295 65
	lw	a4,-20(s0)
	sw	a4,0(a5)
	j	.L260
.L261:
	.loc 1 2298 19
	li	a5,1073741824
	addi	a5,a5,456
	.loc 1 2298 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2299 30
	lbu	a5,-33(s0)
	addi	a5,a5,-20
	.loc 1 2299 20
	sw	a5,-24(s0)
	.loc 1 2300 35
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 1 2300 31
	li	a4,7
	sll	a5,a4,a5
	.loc 1 2300 26
	not	a5,a5
	mv	a4,a5
	.loc 1 2300 25
	lw	a5,-20(s0)
	and	a3,a4,a5
	.loc 1 2300 62
	lbu	a5,-34(s0)
	slli	a4,a5,2
	.loc 1 2300 66
	lbu	a5,-35(s0)
	or	a2,a4,a5
	.loc 1 2300 81
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 1 2300 77
	sll	a5,a2,a5
	.loc 1 2300 16
	or	a5,a3,a5
	sw	a5,-20(s0)
	.loc 1 2301 11
	li	a5,1073741824
	addi	a5,a5,456
	.loc 1 2301 65
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L260:
	.loc 1 2304 12
	li	a5,0
	.loc 1 2305 1
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
.LFE83:
	.size	GLB_Set_GPIO_IntMod, .-GLB_Set_GPIO_IntMod
	.section	.text.GLB_Get_GPIO_IntCtlMod,"ax",@progbits
	.align	1
	.globl	GLB_Get_GPIO_IntCtlMod
	.type	GLB_Get_GPIO_IntCtlMod, @function
GLB_Get_GPIO_IntCtlMod:
.LFB84:
	.loc 1 2316 1
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
	.loc 1 2320 7
	lbu	a4,-33(s0)
	li	a5,9
	bgtu	a4,a5,.L264
	.loc 1 2322 15
	lbu	a5,-33(s0)
	sw	a5,-20(s0)
	.loc 1 2323 17
	li	a5,1073741824
	addi	a5,a5,448
	.loc 1 2323 15
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 2324 37
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 1 2324 28
	li	a4,7
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 2324 23
	lw	a5,-24(s0)
	and	a3,a4,a5
	.loc 1 2324 51
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 1 2324 15
	srl	a5,a3,a5
	sw	a5,-24(s0)
	.loc 1 2325 23
	lw	a5,-24(s0)
	srli	a5,a5,2
	.loc 1 2325 54
	snez	a5,a5
	andi	a5,a5,0xff
	j	.L265
.L264:
	.loc 1 2326 13
	lbu	a4,-33(s0)
	li	a5,9
	bleu	a4,a5,.L266
	.loc 1 2326 38 discriminator 1
	lbu	a4,-33(s0)
	li	a5,19
	bgtu	a4,a5,.L266
	.loc 1 2328 23
	lbu	a5,-33(s0)
	addi	a5,a5,-10
	.loc 1 2328 15
	sw	a5,-20(s0)
	.loc 1 2329 17
	li	a5,1073741824
	addi	a5,a5,452
	.loc 1 2329 15
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 2330 37
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 1 2330 28
	li	a4,7
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 2330 23
	lw	a5,-24(s0)
	and	a3,a4,a5
	.loc 1 2330 51
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 1 2330 15
	srl	a5,a3,a5
	sw	a5,-24(s0)
	.loc 1 2331 23
	lw	a5,-24(s0)
	srli	a5,a5,2
	.loc 1 2331 54
	snez	a5,a5
	andi	a5,a5,0xff
	j	.L265
.L266:
	.loc 1 2334 23
	lbu	a5,-33(s0)
	addi	a5,a5,-20
	.loc 1 2334 15
	sw	a5,-20(s0)
	.loc 1 2335 17
	li	a5,1073741824
	addi	a5,a5,456
	.loc 1 2335 15
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 2336 37
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 1 2336 28
	li	a4,7
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 2336 23
	lw	a5,-24(s0)
	and	a3,a4,a5
	.loc 1 2336 51
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 1 2336 15
	srl	a5,a3,a5
	sw	a5,-24(s0)
	.loc 1 2337 23
	lw	a5,-24(s0)
	srli	a5,a5,2
	.loc 1 2337 54
	snez	a5,a5
	andi	a5,a5,0xff
.L265:
	.loc 1 2339 1
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
.LFE84:
	.size	GLB_Get_GPIO_IntCtlMod, .-GLB_Get_GPIO_IntCtlMod
	.section	.text.GLB_GPIO_INT0_Callback_Install,"ax",@progbits
	.align	1
	.globl	GLB_GPIO_INT0_Callback_Install
	.type	GLB_GPIO_INT0_Callback_Install, @function
GLB_GPIO_INT0_Callback_Install:
.LFB85:
	.loc 1 2351 1
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
	.loc 1 2352 7
	lbu	a4,-17(s0)
	li	a5,22
	bgtu	a4,a5,.L268
	.loc 1 2353 27
	lbu	a5,-17(s0)
	.loc 1 2353 37
	lui	a4,%hi(glbGpioInt0CbfArra)
	addi	a4,a4,%lo(glbGpioInt0CbfArra)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L268:
	.loc 1 2356 12
	li	a5,0
	.loc 1 2357 1
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
.LFE85:
	.size	GLB_GPIO_INT0_Callback_Install, .-GLB_GPIO_INT0_Callback_Install
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_ctrl.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_pds.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_l1c.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_aon.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1d7f
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x18
	.4byte	.LASF385
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
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x104
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
	.4byte	0x10f
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.4byte	.LASF34
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x122
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF36
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.4byte	.LASF37
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF38
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x4
	.byte	0x29
	.byte	0x1
	.4byte	0x1db
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
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.4byte	.LASF63
	.byte	0x4
	.byte	0x42
	.byte	0x2
	.4byte	0x13e
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x4
	.byte	0x4c
	.byte	0x1
	.4byte	0x230
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.4byte	.LASF74
	.byte	0x4
	.byte	0x57
	.byte	0x2
	.4byte	0x1e7
	.uleb128 0x14
	.byte	0x6
	.byte	0x4
	.byte	0x59
	.4byte	0x293
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x4
	.byte	0x5b
	.byte	0xd
	.4byte	0xf7
	.byte	0
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x4
	.byte	0x5c
	.byte	0xd
	.4byte	0xf7
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x4
	.byte	0x5d
	.byte	0xd
	.4byte	0xf7
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x4
	.byte	0x5e
	.byte	0xd
	.4byte	0xf7
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x4
	.byte	0x5f
	.byte	0xd
	.4byte	0xf7
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x4
	.byte	0x60
	.byte	0xd
	.4byte	0xf7
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF81
	.byte	0x4
	.byte	0x61
	.byte	0x2
	.4byte	0x23c
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.4byte	.LASF82
	.uleb128 0x1a
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF83
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x5
	.byte	0x17
	.byte	0x1
	.4byte	0x2cd
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF87
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.4byte	0x2ae
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x5
	.byte	0x21
	.byte	0x1
	.4byte	0x2f2
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF90
	.byte	0x5
	.byte	0x24
	.byte	0x2
	.4byte	0x2d9
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x5
	.byte	0x2a
	.byte	0x1
	.4byte	0x317
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0
	.uleb128 0x1b
	.string	"SET"
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF92
	.byte	0x5
	.byte	0x2d
	.byte	0x2
	.4byte	0x2fe
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x5
	.byte	0x33
	.byte	0x1
	.4byte	0x33c
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF95
	.byte	0x5
	.byte	0x36
	.byte	0x2
	.4byte	0x323
	.uleb128 0x5
	.4byte	.LASF96
	.byte	0x5
	.byte	0x7c
	.byte	0xf
	.4byte	0x2a6
	.uleb128 0xf
	.4byte	0x348
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x6
	.byte	0x42
	.byte	0xe
	.4byte	0x372
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF99
	.byte	0x6
	.byte	0x45
	.byte	0x2
	.4byte	0x359
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x6
	.byte	0x4a
	.byte	0xe
	.4byte	0x397
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF102
	.byte	0x6
	.byte	0x4d
	.byte	0x2
	.4byte	0x37e
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x6
	.byte	0x52
	.byte	0xe
	.4byte	0x3bc
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF105
	.byte	0x6
	.byte	0x55
	.byte	0x2
	.4byte	0x3a3
	.uleb128 0x14
	.byte	0x9
	.byte	0x6
	.byte	0xa2
	.4byte	0x446
	.uleb128 0x7
	.4byte	.LASF106
	.byte	0x6
	.byte	0xa3
	.byte	0x18
	.4byte	0x372
	.byte	0
	.uleb128 0x7
	.4byte	.LASF107
	.byte	0x6
	.byte	0xa4
	.byte	0x17
	.4byte	0x397
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF108
	.byte	0x6
	.byte	0xa5
	.byte	0x1a
	.4byte	0x3bc
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF109
	.byte	0x6
	.byte	0xa6
	.byte	0xd
	.4byte	0xf7
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF110
	.byte	0x6
	.byte	0xa7
	.byte	0xd
	.4byte	0xf7
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF111
	.byte	0x6
	.byte	0xa8
	.byte	0xd
	.4byte	0xf7
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF112
	.byte	0x6
	.byte	0xa9
	.byte	0xd
	.4byte	0xf7
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF113
	.byte	0x6
	.byte	0xaa
	.byte	0xd
	.4byte	0xf7
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF114
	.byte	0x6
	.byte	0xab
	.byte	0xd
	.4byte	0xf7
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF115
	.byte	0x6
	.byte	0xac
	.byte	0x2
	.4byte	0x3c8
	.uleb128 0x1c
	.4byte	0x446
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x7
	.byte	0x75
	.byte	0xe
	.4byte	0x476
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF119
	.byte	0x7
	.byte	0x79
	.byte	0x2
	.4byte	0x457
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x7
	.byte	0x7e
	.byte	0xe
	.4byte	0x49b
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF122
	.byte	0x7
	.byte	0x81
	.byte	0x2
	.4byte	0x482
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x8
	.byte	0xff
	.byte	0xe
	.4byte	0x4de
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.4byte	.LASF130
	.byte	0x8
	.2byte	0x107
	.4byte	0x4a7
	.uleb128 0x10
	.4byte	0x2b
	.byte	0x8
	.2byte	0x10c
	.4byte	0x52d
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF137
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF140
	.byte	0x8
	.2byte	0x116
	.4byte	0x4ea
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0x42
	.byte	0xe
	.4byte	0x558
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF144
	.byte	0x9
	.byte	0x46
	.byte	0x2
	.4byte	0x539
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0x4b
	.byte	0xe
	.4byte	0x595
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF151
	.byte	0x9
	.byte	0x52
	.byte	0x2
	.4byte	0x564
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0x57
	.byte	0xe
	.4byte	0x5c6
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF156
	.byte	0x9
	.byte	0x5c
	.byte	0x2
	.4byte	0x5a1
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0x61
	.byte	0xe
	.4byte	0x5e5
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF158
	.byte	0x9
	.byte	0x63
	.byte	0x2
	.4byte	0x5d2
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0x68
	.byte	0xe
	.4byte	0x622
	.uleb128 0x1
	.4byte	.LASF159
	.byte	0
	.uleb128 0x1
	.4byte	.LASF160
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF161
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF162
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF163
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF164
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF165
	.byte	0x9
	.byte	0x6f
	.byte	0x2
	.4byte	0x5f1
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0x74
	.byte	0xe
	.4byte	0x647
	.uleb128 0x1
	.4byte	.LASF166
	.byte	0
	.uleb128 0x1
	.4byte	.LASF167
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF168
	.byte	0x9
	.byte	0x77
	.byte	0x2
	.4byte	0x62e
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0x7c
	.byte	0xe
	.4byte	0x66c
	.uleb128 0x1
	.4byte	.LASF169
	.byte	0
	.uleb128 0x1
	.4byte	.LASF170
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF171
	.byte	0x9
	.byte	0x7f
	.byte	0x2
	.4byte	0x653
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0x84
	.byte	0xe
	.4byte	0x697
	.uleb128 0x1
	.4byte	.LASF172
	.byte	0
	.uleb128 0x1
	.4byte	.LASF173
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF174
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF175
	.byte	0x9
	.byte	0x88
	.byte	0x2
	.4byte	0x678
	.uleb128 0x14
	.byte	0x3
	.byte	0x9
	.byte	0x8d
	.4byte	0x6d3
	.uleb128 0x7
	.4byte	.LASF176
	.byte	0x9
	.byte	0x8e
	.byte	0xd
	.4byte	0xf7
	.byte	0
	.uleb128 0x7
	.4byte	.LASF177
	.byte	0x9
	.byte	0x8f
	.byte	0x11
	.4byte	0x2f2
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF178
	.byte	0x9
	.byte	0x90
	.byte	0x12
	.4byte	0x697
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF179
	.byte	0x9
	.byte	0x91
	.byte	0x2
	.4byte	0x6a3
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0x96
	.byte	0xe
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	.LASF180
	.byte	0
	.uleb128 0x1
	.4byte	.LASF181
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF182
	.byte	0x9
	.byte	0x99
	.byte	0x2
	.4byte	0x6df
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0x9e
	.byte	0xe
	.4byte	0x71d
	.uleb128 0x1
	.4byte	.LASF183
	.byte	0
	.uleb128 0x1
	.4byte	.LASF184
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF185
	.byte	0x9
	.byte	0xa1
	.byte	0x2
	.4byte	0x704
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0xa6
	.byte	0xe
	.4byte	0x742
	.uleb128 0x1
	.4byte	.LASF186
	.byte	0
	.uleb128 0x1
	.4byte	.LASF187
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF188
	.byte	0x9
	.byte	0xa9
	.byte	0x2
	.4byte	0x729
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0xae
	.byte	0xe
	.4byte	0x76d
	.uleb128 0x1
	.4byte	.LASF189
	.byte	0
	.uleb128 0x1
	.4byte	.LASF190
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF191
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF192
	.byte	0x9
	.byte	0xb2
	.byte	0x2
	.4byte	0x74e
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0xb7
	.byte	0xe
	.4byte	0x792
	.uleb128 0x1
	.4byte	.LASF193
	.byte	0
	.uleb128 0x1
	.4byte	.LASF194
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF195
	.byte	0x9
	.byte	0xba
	.byte	0x2
	.4byte	0x779
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0xbf
	.byte	0xe
	.4byte	0x7b7
	.uleb128 0x1
	.4byte	.LASF196
	.byte	0
	.uleb128 0x1
	.4byte	.LASF197
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF198
	.byte	0x9
	.byte	0xc2
	.byte	0x2
	.4byte	0x79e
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0xc7
	.byte	0xe
	.4byte	0x7dc
	.uleb128 0x1
	.4byte	.LASF199
	.byte	0
	.uleb128 0x1
	.4byte	.LASF200
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF201
	.byte	0x9
	.byte	0xca
	.byte	0x2
	.4byte	0x7c3
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0xcf
	.byte	0xe
	.4byte	0x801
	.uleb128 0x1
	.4byte	.LASF202
	.byte	0
	.uleb128 0x1
	.4byte	.LASF203
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF204
	.byte	0x9
	.byte	0xd2
	.byte	0x2
	.4byte	0x7e8
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0xe0
	.byte	0xe
	.4byte	0x826
	.uleb128 0x1
	.4byte	.LASF205
	.byte	0
	.uleb128 0x1
	.4byte	.LASF206
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF207
	.byte	0x9
	.byte	0xe3
	.byte	0x2
	.4byte	0x80d
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0xe8
	.byte	0xe
	.4byte	0x86f
	.uleb128 0x1
	.4byte	.LASF208
	.byte	0
	.uleb128 0x1
	.4byte	.LASF209
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF210
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF211
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF212
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF214
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF215
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF216
	.byte	0x9
	.byte	0xf1
	.byte	0x2
	.4byte	0x832
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x9
	.byte	0xf6
	.byte	0xe
	.4byte	0x8b8
	.uleb128 0x1
	.4byte	.LASF217
	.byte	0
	.uleb128 0x1
	.4byte	.LASF218
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF219
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF220
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF221
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF223
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF224
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF225
	.byte	0x9
	.byte	0xff
	.byte	0x2
	.4byte	0x87b
	.uleb128 0x10
	.4byte	0x2b
	.byte	0x9
	.2byte	0x104
	.4byte	0x8ef
	.uleb128 0x1
	.4byte	.LASF226
	.byte	0
	.uleb128 0x1
	.4byte	.LASF227
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF228
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF229
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF230
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	.LASF231
	.byte	0x9
	.2byte	0x10a
	.4byte	0x8c4
	.uleb128 0x10
	.4byte	0x2b
	.byte	0x9
	.2byte	0x10f
	.4byte	0x920
	.uleb128 0x1
	.4byte	.LASF232
	.byte	0
	.uleb128 0x1
	.4byte	.LASF233
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF234
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF235
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF236
	.byte	0x9
	.2byte	0x114
	.4byte	0x8fb
	.uleb128 0x10
	.4byte	0x2b
	.byte	0x9
	.2byte	0x119
	.4byte	0x945
	.uleb128 0x1
	.4byte	.LASF237
	.byte	0
	.uleb128 0x1
	.4byte	.LASF238
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF239
	.byte	0x9
	.2byte	0x11c
	.4byte	0x92c
	.uleb128 0x10
	.4byte	0x2b
	.byte	0x9
	.2byte	0x121
	.4byte	0x988
	.uleb128 0x1
	.4byte	.LASF240
	.byte	0
	.uleb128 0x1
	.4byte	.LASF241
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF242
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF243
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF244
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF246
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.4byte	.LASF247
	.byte	0x9
	.2byte	0x129
	.4byte	0x951
	.uleb128 0x10
	.4byte	0x2b
	.byte	0x9
	.2byte	0x12e
	.4byte	0x9d7
	.uleb128 0x1
	.4byte	.LASF248
	.byte	0
	.uleb128 0x1
	.4byte	.LASF249
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF250
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF251
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF252
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF254
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF255
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF256
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF257
	.byte	0x9
	.2byte	0x138
	.4byte	0x994
	.uleb128 0x16
	.4byte	0x354
	.4byte	0x9f3
	.uleb128 0x17
	.4byte	0x137
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF258
	.byte	0x45
	.byte	0x1b
	.4byte	0x9e3
	.uleb128 0x5
	.byte	0x3
	.4byte	glbBmxErrIntCbfArra
	.uleb128 0xc
	.4byte	.LASF259
	.byte	0x46
	.byte	0x1b
	.4byte	0x9e3
	.uleb128 0x5
	.byte	0x3
	.4byte	glbBmxToIntCbfArra
	.uleb128 0x16
	.4byte	0x354
	.4byte	0xa25
	.uleb128 0x17
	.4byte	0x137
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.4byte	.LASF260
	.byte	0x47
	.byte	0x1b
	.4byte	0xa15
	.uleb128 0x5
	.byte	0x3
	.4byte	glbGpioInt0CbfArra
	.uleb128 0x11
	.4byte	.LASF261
	.byte	0x7
	.2byte	0x1a6
	.4byte	0x2cd
	.4byte	0xa4c
	.uleb128 0xd
	.4byte	0x49b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF262
	.byte	0x8
	.2byte	0x1cc
	.4byte	0x2cd
	.4byte	0xa62
	.uleb128 0xd
	.4byte	0x52d
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF264
	.byte	0x6
	.2byte	0x125
	.byte	0x6
	.4byte	0xa75
	.uleb128 0xd
	.4byte	0xa75
	.byte	0
	.uleb128 0xf
	.4byte	0x452
	.uleb128 0x1e
	.4byte	.LASF263
	.byte	0xa
	.byte	0xa2
	.byte	0xd
	.4byte	0x2cd
	.4byte	0xa90
	.uleb128 0xd
	.4byte	0xf7
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF267
	.byte	0x8
	.2byte	0x1cb
	.byte	0xd
	.4byte	0x2cd
	.uleb128 0x20
	.4byte	.LASF265
	.byte	0x5
	.byte	0x88
	.byte	0x6
	.4byte	0xaaf
	.uleb128 0xd
	.4byte	0x116
	.byte	0
	.uleb128 0x11
	.4byte	.LASF266
	.byte	0x8
	.2byte	0x1ca
	.4byte	0x2cd
	.4byte	0xac5
	.uleb128 0xd
	.4byte	0x4de
	.byte	0
	.uleb128 0x21
	.4byte	.LASF268
	.byte	0xb
	.byte	0x4f
	.byte	0xd
	.4byte	0x2cd
	.uleb128 0x11
	.4byte	.LASF269
	.byte	0x7
	.2byte	0x1a8
	.4byte	0x2cd
	.4byte	0xae7
	.uleb128 0xd
	.4byte	0x476
	.byte	0
	.uleb128 0x4
	.4byte	.LASF271
	.2byte	0x92e
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb20
	.uleb128 0x3
	.4byte	.LASF75
	.2byte	0x92e
	.byte	0x3a
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3
	.4byte	.LASF270
	.2byte	0x92e
	.byte	0x54
	.4byte	0x354
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF272
	.2byte	0x90b
	.byte	0x1b
	.4byte	0x945
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb68
	.uleb128 0x3
	.4byte	.LASF75
	.2byte	0x90b
	.byte	0x40
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x90d
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF274
	.2byte	0x90e
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF275
	.2byte	0x8e4
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbce
	.uleb128 0x3
	.4byte	.LASF75
	.2byte	0x8e4
	.byte	0x2f
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF276
	.2byte	0x8e4
	.byte	0x51
	.4byte	0x945
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x3
	.4byte	.LASF277
	.2byte	0x8e4
	.byte	0x72
	.4byte	0x920
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x8e6
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF278
	.2byte	0x8e7
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF279
	.2byte	0x8cc
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc07
	.uleb128 0x3
	.4byte	.LASF75
	.2byte	0x8cc
	.byte	0x32
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x8ce
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF280
	.2byte	0x8b8
	.byte	0xd
	.4byte	0x317
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc40
	.uleb128 0x3
	.4byte	.LASF75
	.2byte	0x8b8
	.byte	0x32
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x8ba
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF281
	.2byte	0x89e
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc88
	.uleb128 0x3
	.4byte	.LASF75
	.2byte	0x89e
	.byte	0x2d
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF282
	.2byte	0x89e
	.byte	0x41
	.4byte	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x8a0
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF283
	.2byte	0x883
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd0
	.uleb128 0x3
	.4byte	.LASF75
	.2byte	0x883
	.byte	0x2c
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF284
	.2byte	0x883
	.byte	0x41
	.4byte	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x885
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF285
	.2byte	0x86e
	.byte	0xa
	.4byte	0x116
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd16
	.uleb128 0x3
	.4byte	.LASF75
	.2byte	0x86e
	.byte	0x26
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xe
	.string	"p"
	.2byte	0x870
	.byte	0xf
	.4byte	0xd16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"pos"
	.2byte	0x871
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	0x116
	.uleb128 0x4
	.4byte	.LASF286
	.2byte	0x855
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd81
	.uleb128 0x3
	.4byte	.LASF75
	.2byte	0x855
	.byte	0x2a
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x8
	.string	"val"
	.2byte	0x855
	.byte	0x3b
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF287
	.2byte	0x857
	.byte	0xf
	.4byte	0xd16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"pos"
	.2byte	0x858
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF288
	.2byte	0x859
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF289
	.2byte	0x83e
	.byte	0x19
	.4byte	0x8ef
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdba
	.uleb128 0x3
	.4byte	.LASF75
	.2byte	0x83e
	.byte	0x3d
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x840
	.byte	0xd
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF290
	.2byte	0x829
	.byte	0x2f
	.4byte	0xf7
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf3
	.uleb128 0x3
	.4byte	.LASF75
	.2byte	0x829
	.byte	0x4e
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x82b
	.byte	0xd
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF291
	.2byte	0x7fc
	.byte	0x33
	.4byte	0x2cd
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe59
	.uleb128 0x3
	.4byte	.LASF75
	.2byte	0x7fc
	.byte	0x51
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF287
	.2byte	0x7fe
	.byte	0xf
	.4byte	0xd16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"pos"
	.2byte	0x7ff
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF288
	.2byte	0x800
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x801
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF292
	.2byte	0x7e6
	.byte	0x33
	.4byte	0x2cd
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe92
	.uleb128 0x3
	.4byte	.LASF75
	.2byte	0x7e6
	.byte	0x59
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x7e8
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF293
	.2byte	0x7d0
	.byte	0x33
	.4byte	0x2cd
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xecb
	.uleb128 0x3
	.4byte	.LASF75
	.2byte	0x7d0
	.byte	0x58
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x7d2
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF294
	.2byte	0x7b2
	.byte	0x33
	.4byte	0x2cd
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf13
	.uleb128 0x3
	.4byte	.LASF75
	.2byte	0x7b2
	.byte	0x58
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x7b4
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF295
	.2byte	0x7b5
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF296
	.2byte	0x794
	.byte	0x33
	.4byte	0x2cd
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf5b
	.uleb128 0x3
	.4byte	.LASF75
	.2byte	0x794
	.byte	0x57
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x796
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF295
	.2byte	0x797
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF297
	.2byte	0x773
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfc9
	.uleb128 0x3
	.4byte	.LASF76
	.2byte	0x773
	.byte	0x33
	.4byte	0x230
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF298
	.2byte	0x773
	.byte	0x4a
	.4byte	0xfc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"cnt"
	.2byte	0x773
	.byte	0x5a
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF299
	.2byte	0x775
	.byte	0x17
	.4byte	0x293
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xe
	.string	"i"
	.2byte	0x782
	.byte	0x11
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x1db
	.uleb128 0x4
	.4byte	.LASF300
	.2byte	0x725
	.byte	0x33
	.4byte	0x2cd
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1043
	.uleb128 0x8
	.string	"cfg"
	.2byte	0x725
	.byte	0x54
	.4byte	0x1043
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF75
	.2byte	0x727
	.byte	0xd
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2
	.4byte	.LASF287
	.2byte	0x728
	.byte	0xf
	.4byte	0xd16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.string	"pos"
	.2byte	0x729
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF288
	.2byte	0x72a
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x72b
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	0x293
	.uleb128 0x4
	.4byte	.LASF301
	.2byte	0x70f
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1081
	.uleb128 0x3
	.4byte	.LASF302
	.2byte	0x70f
	.byte	0x2d
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x711
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF303
	.2byte	0x6fb
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ab
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x6fd
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF304
	.2byte	0x6e7
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10d5
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x6e9
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF305
	.2byte	0x6ca
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x110e
	.uleb128 0x3
	.4byte	.LASF306
	.2byte	0x6ca
	.byte	0x2e
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x6cc
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF307
	.2byte	0x6af
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1165
	.uleb128 0x8
	.string	"sig"
	.2byte	0x6af
	.byte	0x30
	.4byte	0x86f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x8
	.string	"fun"
	.2byte	0x6af
	.byte	0x4a
	.4byte	0x8b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF308
	.2byte	0x6b1
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x6b2
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF309
	.2byte	0x68d
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11cb
	.uleb128 0x3
	.4byte	.LASF310
	.2byte	0x68d
	.byte	0x2c
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF311
	.2byte	0x68d
	.byte	0x49
	.4byte	0x826
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x8
	.string	"pti"
	.2byte	0x68d
	.byte	0x5b
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x3
	.4byte	.LASF312
	.2byte	0x68d
	.byte	0x67
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x68f
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF313
	.2byte	0x66a
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1222
	.uleb128 0x3
	.4byte	.LASF310
	.2byte	0x66a
	.byte	0x29
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF314
	.2byte	0x66a
	.byte	0x38
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x8
	.string	"div"
	.2byte	0x66a
	.byte	0x4d
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x66c
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF315
	.2byte	0x648
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1279
	.uleb128 0x3
	.4byte	.LASF310
	.2byte	0x648
	.byte	0x2a
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF314
	.2byte	0x648
	.byte	0x39
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x8
	.string	"div"
	.2byte	0x648
	.byte	0x4e
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x64a
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF316
	.2byte	0x623
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12d0
	.uleb128 0x3
	.4byte	.LASF317
	.2byte	0x623
	.byte	0x32
	.4byte	0x801
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x625
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF318
	.2byte	0x626
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF319
	.2byte	0x627
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF320
	.2byte	0x610
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12fa
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x612
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF321
	.2byte	0x5fd
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1324
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x5ff
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF322
	.2byte	0x5d6
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x137b
	.uleb128 0x3
	.4byte	.LASF310
	.2byte	0x5d6
	.byte	0x25
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF317
	.2byte	0x5d6
	.byte	0x3d
	.4byte	0x7dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x8
	.string	"div"
	.2byte	0x5d6
	.byte	0x4c
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x5d8
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF323
	.2byte	0x5b1
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13d2
	.uleb128 0x3
	.4byte	.LASF310
	.2byte	0x5b1
	.byte	0x25
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF317
	.2byte	0x5b1
	.byte	0x3d
	.4byte	0x7b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x8
	.string	"div"
	.2byte	0x5b1
	.byte	0x4c
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x5b3
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF324
	.2byte	0x58b
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1429
	.uleb128 0x3
	.4byte	.LASF310
	.2byte	0x58b
	.byte	0x28
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF317
	.2byte	0x58b
	.byte	0x43
	.4byte	0x792
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x8
	.string	"div"
	.2byte	0x58b
	.byte	0x53
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x58d
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF325
	.2byte	0x575
	.byte	0x33
	.4byte	0x2cd
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1453
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x577
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF326
	.2byte	0x55f
	.byte	0x33
	.4byte	0x2cd
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x147d
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x561
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF327
	.2byte	0x549
	.byte	0x33
	.4byte	0x2cd
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14a7
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x54b
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF328
	.2byte	0x533
	.byte	0x33
	.4byte	0x2cd
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14d1
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x535
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF329
	.2byte	0x51c
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x150a
	.uleb128 0x8
	.string	"mod"
	.2byte	0x51c
	.byte	0x3f
	.4byte	0x647
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x51e
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF330
	.2byte	0x509
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1543
	.uleb128 0x3
	.4byte	.LASF331
	.2byte	0x509
	.byte	0x37
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x50b
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF332
	.2byte	0x4f4
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x157c
	.uleb128 0x3
	.4byte	.LASF333
	.2byte	0x4f4
	.byte	0x2b
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x4f6
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF334
	.2byte	0x4df
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15b5
	.uleb128 0x3
	.4byte	.LASF333
	.2byte	0x4df
	.byte	0x2b
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x4e1
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF335
	.2byte	0x4ca
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15ee
	.uleb128 0x3
	.4byte	.LASF336
	.2byte	0x4ca
	.byte	0x28
	.4byte	0x76d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x4cc
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF339
	.2byte	0x4bd
	.4byte	0x116
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF337
	.2byte	0x4ae
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x162d
	.uleb128 0x3
	.4byte	.LASF338
	.2byte	0x4ae
	.byte	0x28
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF340
	.2byte	0x4a1
	.4byte	0x116
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF341
	.2byte	0x492
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x166c
	.uleb128 0x3
	.4byte	.LASF338
	.2byte	0x492
	.byte	0x27
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF342
	.2byte	0x485
	.4byte	0x116
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF343
	.2byte	0x476
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16ab
	.uleb128 0x3
	.4byte	.LASF338
	.2byte	0x476
	.byte	0x27
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF344
	.2byte	0x44b
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16e4
	.uleb128 0x3
	.4byte	.LASF345
	.2byte	0x44b
	.byte	0x3e
	.4byte	0x742
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3
	.4byte	.LASF270
	.2byte	0x44b
	.byte	0x58
	.4byte	0x354
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF346
	.2byte	0x41f
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x171d
	.uleb128 0x3
	.4byte	.LASF345
	.2byte	0x41f
	.byte	0x3b
	.4byte	0x71d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3
	.4byte	.LASF270
	.2byte	0x41f
	.byte	0x55
	.4byte	0x354
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF347
	.2byte	0x411
	.4byte	0x116
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF348
	.2byte	0x3fb
	.byte	0xd
	.4byte	0x317
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x176b
	.uleb128 0x3
	.4byte	.LASF349
	.2byte	0x3fb
	.byte	0x31
	.4byte	0x6f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x3fd
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF350
	.2byte	0x3e8
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1795
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x3ea
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF351
	.2byte	0x3d5
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17bf
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x3d7
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF352
	.2byte	0x3c2
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17e9
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x3c4
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF353
	.2byte	0x3af
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1813
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x3b1
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF354
	.2byte	0x398
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x184c
	.uleb128 0x3
	.4byte	.LASF355
	.2byte	0x398
	.byte	0x28
	.4byte	0x184c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x39a
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	0x6d3
	.uleb128 0x4
	.4byte	.LASF356
	.2byte	0x37f
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1899
	.uleb128 0x3
	.4byte	.LASF310
	.2byte	0x37f
	.byte	0x2f
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF357
	.2byte	0x37f
	.byte	0x49
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x381
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF358
	.2byte	0x363
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18d2
	.uleb128 0x3
	.4byte	.LASF357
	.2byte	0x363
	.byte	0x35
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x365
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF359
	.2byte	0x332
	.byte	0x33
	.4byte	0x2cd
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18fc
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x334
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF360
	.2byte	0x2ff
	.byte	0x33
	.4byte	0x2cd
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1926
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x301
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF361
	.2byte	0x2cc
	.byte	0x33
	.4byte	0x2cd
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1950
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x2ce
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF362
	.2byte	0x2b4
	.byte	0x3a
	.4byte	0x2cd
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1989
	.uleb128 0x3
	.4byte	.LASF317
	.2byte	0x2b4
	.byte	0x5f
	.4byte	0x66c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x2b6
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF363
	.2byte	0x295
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19d1
	.uleb128 0x3
	.4byte	.LASF310
	.2byte	0x295
	.byte	0x25
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x8
	.string	"div"
	.2byte	0x295
	.byte	0x34
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x297
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF364
	.2byte	0x279
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a19
	.uleb128 0x3
	.4byte	.LASF310
	.2byte	0x279
	.byte	0x25
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x8
	.string	"div"
	.2byte	0x279
	.byte	0x34
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x27b
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF365
	.2byte	0x250
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a70
	.uleb128 0x3
	.4byte	.LASF310
	.2byte	0x250
	.byte	0x26
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF317
	.2byte	0x250
	.byte	0x3f
	.4byte	0x49b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x8
	.string	"div"
	.2byte	0x250
	.byte	0x4e
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x252
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF366
	.2byte	0x20a
	.byte	0x3a
	.4byte	0x2cd
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ad6
	.uleb128 0x3
	.4byte	.LASF310
	.2byte	0x20a
	.byte	0x51
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF317
	.2byte	0x20a
	.byte	0x6c
	.4byte	0x622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x8
	.string	"div"
	.2byte	0x20a
	.byte	0x7b
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x20c
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"clk"
	.2byte	0x20d
	.byte	0x16
	.4byte	0x9d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x4
	.4byte	.LASF367
	.2byte	0x1e8
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b2d
	.uleb128 0x3
	.4byte	.LASF310
	.2byte	0x1e8
	.byte	0x24
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF317
	.2byte	0x1e8
	.byte	0x50
	.4byte	0x5e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x8
	.string	"div"
	.2byte	0x1e8
	.byte	0x60
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x1ea
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF368
	.2byte	0x1cc
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b84
	.uleb128 0x3
	.4byte	.LASF310
	.2byte	0x1cc
	.byte	0x25
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x8
	.string	"clk"
	.2byte	0x1cc
	.byte	0x40
	.4byte	0x5c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x1ce
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF369
	.2byte	0x1cf
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF370
	.2byte	0x1b6
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bbd
	.uleb128 0x3
	.4byte	.LASF371
	.2byte	0x1b6
	.byte	0x2e
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x1b8
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF372
	.2byte	0x1a1
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bf6
	.uleb128 0x3
	.4byte	.LASF371
	.2byte	0x1a1
	.byte	0x2b
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x1a3
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF373
	.2byte	0x18a
	.byte	0xd
	.4byte	0x2cd
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c2f
	.uleb128 0x3
	.4byte	.LASF310
	.2byte	0x18a
	.byte	0x25
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x18c
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF374
	.2byte	0x16a
	.byte	0x3a
	.4byte	0x2cd
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c59
	.uleb128 0x2
	.4byte	.LASF375
	.2byte	0x16c
	.byte	0x16
	.4byte	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF376
	.2byte	0x102
	.byte	0x3a
	.4byte	0x2cd
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ca1
	.uleb128 0x3
	.4byte	.LASF377
	.2byte	0x102
	.byte	0x5f
	.4byte	0x988
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF378
	.2byte	0x102
	.byte	0x79
	.4byte	0x595
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x104
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF379
	.byte	0xd6
	.byte	0x3a
	.4byte	0x2cd
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cc9
	.uleb128 0x15
	.4byte	.LASF377
	.byte	0xd6
	.byte	0x6c
	.4byte	0x988
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x13
	.4byte	.LASF380
	.byte	0xc2
	.byte	0x36
	.4byte	0xf7
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cf1
	.uleb128 0xc
	.4byte	.LASF273
	.byte	0xc4
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF381
	.byte	0xae
	.byte	0x36
	.4byte	0xf7
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d19
	.uleb128 0xc
	.4byte	.LASF273
	.byte	0xb0
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF382
	.byte	0x8c
	.byte	0x3a
	.4byte	0x2cd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d5d
	.uleb128 0x15
	.4byte	.LASF383
	.byte	0x8c
	.byte	0x59
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x15
	.4byte	.LASF384
	.byte	0x8c
	.byte	0x69
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xc
	.4byte	.LASF273
	.byte	0x8e
	.byte	0xe
	.4byte	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	.LASF386
	.byte	0x1
	.byte	0x6d
	.byte	0x40
	.4byte	0x558
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF273
	.byte	0x6f
	.byte	0xe
	.4byte	0x116
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
	.uleb128 0x8
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0xb
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
	.sleb128 10
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
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.4byte	0x284
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
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
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
	.byte	0x7
	.4byte	.LFB42
	.uleb128 .LFE42-.LFB42
	.byte	0x7
	.4byte	.LFB43
	.uleb128 .LFE43-.LFB43
	.byte	0x7
	.4byte	.LFB44
	.uleb128 .LFE44-.LFB44
	.byte	0x7
	.4byte	.LFB45
	.uleb128 .LFE45-.LFB45
	.byte	0x7
	.4byte	.LFB46
	.uleb128 .LFE46-.LFB46
	.byte	0x7
	.4byte	.LFB47
	.uleb128 .LFE47-.LFB47
	.byte	0x7
	.4byte	.LFB48
	.uleb128 .LFE48-.LFB48
	.byte	0x7
	.4byte	.LFB49
	.uleb128 .LFE49-.LFB49
	.byte	0x7
	.4byte	.LFB50
	.uleb128 .LFE50-.LFB50
	.byte	0x7
	.4byte	.LFB51
	.uleb128 .LFE51-.LFB51
	.byte	0x7
	.4byte	.LFB52
	.uleb128 .LFE52-.LFB52
	.byte	0x7
	.4byte	.LFB53
	.uleb128 .LFE53-.LFB53
	.byte	0x7
	.4byte	.LFB54
	.uleb128 .LFE54-.LFB54
	.byte	0x7
	.4byte	.LFB55
	.uleb128 .LFE55-.LFB55
	.byte	0x7
	.4byte	.LFB56
	.uleb128 .LFE56-.LFB56
	.byte	0x7
	.4byte	.LFB57
	.uleb128 .LFE57-.LFB57
	.byte	0x7
	.4byte	.LFB58
	.uleb128 .LFE58-.LFB58
	.byte	0x7
	.4byte	.LFB59
	.uleb128 .LFE59-.LFB59
	.byte	0x7
	.4byte	.LFB60
	.uleb128 .LFE60-.LFB60
	.byte	0x7
	.4byte	.LFB61
	.uleb128 .LFE61-.LFB61
	.byte	0x7
	.4byte	.LFB62
	.uleb128 .LFE62-.LFB62
	.byte	0x7
	.4byte	.LFB63
	.uleb128 .LFE63-.LFB63
	.byte	0x7
	.4byte	.LFB64
	.uleb128 .LFE64-.LFB64
	.byte	0x7
	.4byte	.LFB65
	.uleb128 .LFE65-.LFB65
	.byte	0x7
	.4byte	.LFB66
	.uleb128 .LFE66-.LFB66
	.byte	0x7
	.4byte	.LFB67
	.uleb128 .LFE67-.LFB67
	.byte	0x7
	.4byte	.LFB68
	.uleb128 .LFE68-.LFB68
	.byte	0x7
	.4byte	.LFB69
	.uleb128 .LFE69-.LFB69
	.byte	0x7
	.4byte	.LFB70
	.uleb128 .LFE70-.LFB70
	.byte	0x7
	.4byte	.LFB71
	.uleb128 .LFE71-.LFB71
	.byte	0x7
	.4byte	.LFB72
	.uleb128 .LFE72-.LFB72
	.byte	0x7
	.4byte	.LFB73
	.uleb128 .LFE73-.LFB73
	.byte	0x7
	.4byte	.LFB74
	.uleb128 .LFE74-.LFB74
	.byte	0x7
	.4byte	.LFB75
	.uleb128 .LFE75-.LFB75
	.byte	0x7
	.4byte	.LFB76
	.uleb128 .LFE76-.LFB76
	.byte	0x7
	.4byte	.LFB77
	.uleb128 .LFE77-.LFB77
	.byte	0x7
	.4byte	.LFB78
	.uleb128 .LFE78-.LFB78
	.byte	0x7
	.4byte	.LFB79
	.uleb128 .LFE79-.LFB79
	.byte	0x7
	.4byte	.LFB80
	.uleb128 .LFE80-.LFB80
	.byte	0x7
	.4byte	.LFB81
	.uleb128 .LFE81-.LFB81
	.byte	0x7
	.4byte	.LFB82
	.uleb128 .LFE82-.LFB82
	.byte	0x7
	.4byte	.LFB83
	.uleb128 .LFE83-.LFB83
	.byte	0x7
	.4byte	.LFB84
	.uleb128 .LFE84-.LFB84
	.byte	0x7
	.4byte	.LFB85
	.uleb128 .LFE85-.LFB85
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF147:
	.string	"GLB_SYS_CLK_PLL48M"
.LASF92:
	.string	"BL_Sts_Type"
.LASF85:
	.string	"ERROR"
.LASF167:
	.string	"GLB_SPI_PAD_ACT_AS_MASTER"
.LASF78:
	.string	"pullType"
.LASF31:
	.string	"BL_AHB_Slave1_Type"
.LASF294:
	.string	"GLB_GPIO_INPUT_Disable"
.LASF302:
	.string	"ibias"
.LASF97:
	.string	"SF_CTRL_OWNER_SAHB"
.LASF296:
	.string	"GLB_GPIO_INPUT_Enable"
.LASF355:
	.string	"BmxCfg"
.LASF182:
	.string	"BMX_BUS_ERR_Type"
.LASF275:
	.string	"GLB_Set_GPIO_IntMod"
.LASF243:
	.string	"GLB_PLL_XTAL_38P4M"
.LASF142:
	.string	"GLB_ROOT_CLK_XTAL"
.LASF368:
	.string	"GLB_Set_DMA_CLK"
.LASF131:
	.string	"PDS_PLL_CLK_480M"
.LASF229:
	.string	"GLB_GPIO_REAL_MODE_JTAG"
.LASF286:
	.string	"GLB_GPIO_Write"
.LASF100:
	.string	"SF_CTRL_SAHB_CLOCK"
.LASF121:
	.string	"HBN_UART_CLK_160M"
.LASF146:
	.string	"GLB_SYS_CLK_XTAL"
.LASF327:
	.string	"GLB_Select_External_Flash"
.LASF141:
	.string	"GLB_ROOT_CLK_RC32M"
.LASF63:
	.string	"GLB_GPIO_Type"
.LASF263:
	.string	"L1C_IROM_2T_Access_Set"
.LASF264:
	.string	"SF_Ctrl_Enable"
.LASF329:
	.string	"GLB_Set_SPI_0_ACT_MOD_Sel"
.LASF71:
	.string	"GPIO_FUN_ANALOG"
.LASF163:
	.string	"GLB_SFLASH_CLK_BCLK"
.LASF297:
	.string	"GLB_GPIO_Func_Init"
.LASF245:
	.string	"GLB_PLL_XTAL_26M"
.LASF236:
	.string	"GLB_GPIO_INT_TRIG_Type"
.LASF270:
	.string	"cbFun"
.LASF118:
	.string	"HBN_ROOT_CLK_PLL"
.LASF347:
	.string	"GLB_BMX_Get_Err_Addr"
.LASF322:
	.string	"GLB_Set_DAC_CLK"
.LASF345:
	.string	"intType"
.LASF257:
	.string	"GLB_PLL_CLK_Type"
.LASF381:
	.string	"GLB_Get_BCLK_Div"
.LASF251:
	.string	"GLB_PLL_CLK_160M"
.LASF332:
	.string	"GLB_JTAG_Sig_Swap_Set"
.LASF378:
	.string	"clkFreq"
.LASF28:
	.string	"short int"
.LASF340:
	.string	"GLB_Get_SRAM_SLP"
.LASF136:
	.string	"PDS_PLL_CLK_96M"
.LASF316:
	.string	"GLB_Set_DIG_CLK_Sel"
.LASF255:
	.string	"GLB_PLL_CLK_48M"
.LASF290:
	.string	"GLB_GPIO_Get_Fun"
.LASF328:
	.string	"GLB_Select_Internal_Flash"
.LASF174:
	.string	"BMX_ARB_RANDOM"
.LASF384:
	.string	"bclkDiv"
.LASF198:
	.string	"GLB_ADC_CLK_Type"
.LASF181:
	.string	"BMX_BUS_ERR_ADDR_DECODE"
.LASF334:
	.string	"GLB_UART_Sig_Swap_Set"
.LASF123:
	.string	"PDS_PLL_XTAL_NONE"
.LASF333:
	.string	"swapSel"
.LASF111:
	.string	"rxClkInvert"
.LASF115:
	.string	"SF_Ctrl_Cfg_Type"
.LASF317:
	.string	"clkSel"
.LASF17:
	.string	"BL_AHB_SLAVE1_UART0"
.LASF18:
	.string	"BL_AHB_SLAVE1_UART1"
.LASF66:
	.string	"GPIO_FUN_SPI"
.LASF68:
	.string	"GPIO_FUN_UART"
.LASF228:
	.string	"GLB_GPIO_REAL_MODE_RF"
.LASF39:
	.string	"GLB_GPIO_PIN_0"
.LASF359:
	.string	"GLB_SW_POR_Reset"
.LASF247:
	.string	"GLB_PLL_XTAL_Type"
.LASF87:
	.string	"BL_Err_Type"
.LASF35:
	.string	"uint32_t"
.LASF43:
	.string	"GLB_GPIO_PIN_4"
.LASF331:
	.string	"newState"
.LASF107:
	.string	"sahbClock"
.LASF202:
	.string	"GLB_DIG_CLK_PLL_32M"
.LASF48:
	.string	"GLB_GPIO_PIN_9"
.LASF101:
	.string	"SF_CTRL_FLASH_CLOCK"
.LASF262:
	.string	"PDS_Enable_PLL_Clk"
.LASF323:
	.string	"GLB_Set_ADC_CLK"
.LASF242:
	.string	"GLB_PLL_XTAL_32M"
.LASF180:
	.string	"BMX_BUS_ERR_TRUSTZONE_DECODE"
.LASF315:
	.string	"GLB_Set_DIG_512K_CLK"
.LASF183:
	.string	"BMX_ERR_INT_ERR"
.LASF37:
	.string	"long long unsigned int"
.LASF204:
	.string	"GLB_DIG_CLK_Type"
.LASF156:
	.string	"GLB_DMA_CLK_ID_Type"
.LASF318:
	.string	"dig512kEn"
.LASF196:
	.string	"GLB_ADC_CLK_96M"
.LASF266:
	.string	"PDS_Power_On_PLL"
.LASF128:
	.string	"PDS_PLL_XTAL_26M"
.LASF184:
	.string	"BMX_ERR_INT_ALL"
.LASF67:
	.string	"GPIO_FUN_I2C"
.LASF116:
	.string	"HBN_ROOT_CLK_RC32M"
.LASF373:
	.string	"GLB_Set_BLE_CLK"
.LASF205:
	.string	"GLB_BT_BANDWIDTH_1M"
.LASF73:
	.string	"GPIO_FUN_JTAG"
.LASF227:
	.string	"GLB_GPIO_REAL_MODE_SDIO"
.LASF225:
	.string	"GLB_UART_SIG_FUN_Type"
.LASF276:
	.string	"intCtlMod"
.LASF278:
	.string	"tmpGpioPin"
.LASF277:
	.string	"intTrgMod"
.LASF165:
	.string	"GLB_SFLASH_CLK_Type"
.LASF77:
	.string	"gpioMode"
.LASF224:
	.string	"GLB_UART_SIG_FUN_UART1_RXD"
.LASF138:
	.string	"PDS_PLL_CLK_48M"
.LASF221:
	.string	"GLB_UART_SIG_FUN_UART1_RTS"
.LASF143:
	.string	"GLB_ROOT_CLK_PLL"
.LASF152:
	.string	"GLB_DMA_CLK_DMA0_CH0"
.LASF153:
	.string	"GLB_DMA_CLK_DMA0_CH1"
.LASF154:
	.string	"GLB_DMA_CLK_DMA0_CH2"
.LASF155:
	.string	"GLB_DMA_CLK_DMA0_CH3"
.LASF108:
	.string	"ahb2sifMode"
.LASF94:
	.string	"MASK"
.LASF104:
	.string	"REMOVE_CLOCK_CONSTRAIN"
.LASF338:
	.string	"value"
.LASF208:
	.string	"GLB_UART_SIG_0"
.LASF386:
	.string	"GLB_Get_Root_CLK_Sel"
.LASF132:
	.string	"PDS_PLL_CLK_240M"
.LASF216:
	.string	"GLB_UART_SIG_Type"
.LASF260:
	.string	"glbGpioInt0CbfArra"
.LASF298:
	.string	"pinList"
.LASF261:
	.string	"HBN_Set_UART_CLK_Sel"
.LASF254:
	.string	"GLB_PLL_CLK_80M"
.LASF206:
	.string	"GLB_BT_BANDWIDTH_2M"
.LASF7:
	.string	"BL_AHB_SLAVE1_TZ1"
.LASF8:
	.string	"BL_AHB_SLAVE1_TZ2"
.LASF230:
	.string	"GLB_GPIO_REAL_MODE_CCI"
.LASF223:
	.string	"GLB_UART_SIG_FUN_UART1_TXD"
.LASF222:
	.string	"GLB_UART_SIG_FUN_UART1_CTS"
.LASF268:
	.string	"AON_Power_On_XTAL"
.LASF157:
	.string	"GLB_IR_CLK_SRC_XCLK"
.LASF137:
	.string	"PDS_PLL_CLK_80M"
.LASF50:
	.string	"GLB_GPIO_PIN_11"
.LASF52:
	.string	"GLB_GPIO_PIN_13"
.LASF112:
	.string	"doDelay"
.LASF265:
	.string	"BL602_Delay_US"
.LASF361:
	.string	"GLB_SW_System_Reset"
.LASF330:
	.string	"GLB_Swap_SPI_0_MOSI_With_MISO"
.LASF272:
	.string	"GLB_Get_GPIO_IntCtlMod"
.LASF79:
	.string	"drive"
.LASF124:
	.string	"PDS_PLL_XTAL_24M"
.LASF380:
	.string	"GLB_Get_HCLK_Div"
.LASF217:
	.string	"GLB_UART_SIG_FUN_UART0_RTS"
.LASF109:
	.string	"clkDelay"
.LASF273:
	.string	"tmpVal"
.LASF177:
	.string	"errEn"
.LASF194:
	.string	"GLB_MTIMER_CLK_32K"
.LASF159:
	.string	"GLB_SFLASH_CLK_120M"
.LASF199:
	.string	"GLB_DAC_CLK_32M"
.LASF175:
	.string	"BMX_ARB_Type"
.LASF369:
	.string	"tmpVal2"
.LASF346:
	.string	"BMX_ERR_INT_Callback_Install"
.LASF99:
	.string	"SF_Ctrl_Owner_Type"
.LASF62:
	.string	"GLB_GPIO_PIN_MAX"
.LASF102:
	.string	"SF_Ctrl_Sahb_Type"
.LASF309:
	.string	"GLB_Set_BT_Coex_Signal"
.LASF356:
	.string	"GLB_AHB_Slave1_Clock_Gate"
.LASF84:
	.string	"SUCCESS"
.LASF83:
	.string	"char"
.LASF170:
	.string	"GLB_PKA_CLK_PLL120M"
.LASF306:
	.string	"gpio"
.LASF10:
	.string	"BL_AHB_SLAVE1_CCI"
.LASF363:
	.string	"GLB_Set_SPI_CLK"
.LASF88:
	.string	"DISABLE"
.LASF383:
	.string	"hclkDiv"
.LASF372:
	.string	"GLB_Set_WiFi_Core_CLK"
.LASF320:
	.string	"GLB_Platform_Wakeup_Disable"
.LASF366:
	.string	"GLB_Set_SF_CLK"
.LASF250:
	.string	"GLB_PLL_CLK_192M"
.LASF231:
	.string	"GLB_GPIO_REAL_MODE_Type"
.LASF74:
	.string	"GLB_GPIO_FUNC_Type"
.LASF301:
	.string	"GLB_IR_LED_Driver_Ibias"
.LASF259:
	.string	"glbBmxToIntCbfArra"
.LASF367:
	.string	"GLB_Set_IR_CLK"
.LASF32:
	.string	"uint8_t"
.LASF256:
	.string	"GLB_PLL_CLK_32M"
.LASF69:
	.string	"GPIO_FUN_PWM"
.LASF13:
	.string	"BL_AHB_SLAVE1_DMA"
.LASF72:
	.string	"GPIO_FUN_SWGPIO"
.LASF93:
	.string	"UNMASK"
.LASF337:
	.string	"GLB_Set_SRAM_PARM"
.LASF61:
	.string	"GLB_GPIO_PIN_22"
.LASF4:
	.string	"BL_AHB_SLAVE1_GPIP"
.LASF326:
	.string	"GLB_Deswap_Flash_Pin"
.LASF233:
	.string	"GLB_GPIO_INT_TRIG_POS_PULSE"
.LASF299:
	.string	"gpioCfg"
.LASF139:
	.string	"PDS_PLL_CLK_32M"
.LASF244:
	.string	"GLB_PLL_XTAL_40M"
.LASF365:
	.string	"GLB_Set_UART_CLK"
.LASF173:
	.string	"BMX_ARB_ROUND_ROBIN"
.LASF70:
	.string	"GPIO_FUN_EXT_PA"
.LASF342:
	.string	"GLB_Get_SRAM_RET"
.LASF164:
	.string	"GLB_SFLASH_CLK_96M"
.LASF335:
	.string	"GLB_Set_EM_Sel"
.LASF30:
	.string	"long long int"
.LASF25:
	.string	"BL_AHB_SLAVE1_MAX"
.LASF86:
	.string	"TIMEOUT"
.LASF371:
	.string	"clkDiv"
.LASF341:
	.string	"GLB_Set_SRAM_SLP"
.LASF140:
	.string	"PDS_PLL_CLK_Type"
.LASF179:
	.string	"BMX_Cfg_Type"
.LASF288:
	.string	"tmpOut"
.LASF144:
	.string	"GLB_ROOT_CLK_Type"
.LASF134:
	.string	"PDS_PLL_CLK_160M"
.LASF336:
	.string	"emType"
.LASF252:
	.string	"GLB_PLL_CLK_120M"
.LASF339:
	.string	"GLB_Get_SRAM_PARM"
.LASF151:
	.string	"GLB_SYS_CLK_Type"
.LASF353:
	.string	"GLB_BMX_Addr_Monitor_Enable"
.LASF313:
	.string	"GLB_Set_DIG_32K_CLK"
.LASF130:
	.string	"PDS_PLL_XTAL_Type"
.LASF289:
	.string	"GLB_GPIO_Get_Real_Fun"
.LASF285:
	.string	"GLB_GPIO_Read"
.LASF149:
	.string	"GLB_SYS_CLK_PLL160M"
.LASF382:
	.string	"GLB_Set_System_CLK_Div"
.LASF82:
	.string	"long double"
.LASF279:
	.string	"GLB_Clr_GPIO_IntStatus"
.LASF188:
	.string	"BMX_TO_INT_Type"
.LASF207:
	.string	"GLB_BT_BANDWIDTH_Type"
.LASF280:
	.string	"GLB_Get_GPIO_IntStatus"
.LASF36:
	.string	"long unsigned int"
.LASF49:
	.string	"GLB_GPIO_PIN_10"
.LASF2:
	.string	"BL_AHB_SLAVE1_GLB"
.LASF51:
	.string	"GLB_GPIO_PIN_12"
.LASF325:
	.string	"GLB_Swap_Flash_Pin"
.LASF53:
	.string	"GLB_GPIO_PIN_14"
.LASF54:
	.string	"GLB_GPIO_PIN_15"
.LASF55:
	.string	"GLB_GPIO_PIN_16"
.LASF56:
	.string	"GLB_GPIO_PIN_17"
.LASF57:
	.string	"GLB_GPIO_PIN_18"
.LASF58:
	.string	"GLB_GPIO_PIN_19"
.LASF232:
	.string	"GLB_GPIO_INT_TRIG_NEG_PULSE"
.LASF352:
	.string	"GLB_BMX_Addr_Monitor_Disable"
.LASF226:
	.string	"GLB_GPIO_REAL_MODE_REG"
.LASF307:
	.string	"GLB_UART_Fun_Sel"
.LASF19:
	.string	"BL_AHB_SLAVE1_SPI"
.LASF375:
	.string	"sfCtrlCfg"
.LASF125:
	.string	"PDS_PLL_XTAL_32M"
.LASF64:
	.string	"GPIO_FUN_SDIO"
.LASF33:
	.string	"uint16_t"
.LASF258:
	.string	"glbBmxErrIntCbfArra"
.LASF15:
	.string	"BL_AHB_SLAVE1_PDSHBN"
.LASF248:
	.string	"GLB_PLL_CLK_480M"
.LASF171:
	.string	"GLB_PKA_CLK_Type"
.LASF312:
	.string	"channel"
.LASF374:
	.string	"System_Core_Clock_Update_From_RC32M"
.LASF59:
	.string	"GLB_GPIO_PIN_20"
.LASF60:
	.string	"GLB_GPIO_PIN_21"
.LASF343:
	.string	"GLB_Set_SRAM_RET"
.LASF324:
	.string	"GLB_Set_MTimer_CLK"
.LASF253:
	.string	"GLB_PLL_CLK_96M"
.LASF201:
	.string	"GLB_DAC_CLK_Type"
.LASF214:
	.string	"GLB_UART_SIG_6"
.LASF76:
	.string	"gpioFun"
.LASF119:
	.string	"HBN_ROOT_CLK_Type"
.LASF178:
	.string	"arbMod"
.LASF16:
	.string	"BL_AHB_SLAVE1_WRAM"
.LASF219:
	.string	"GLB_UART_SIG_FUN_UART0_TXD"
.LASF168:
	.string	"GLB_SPI_PAD_ACT_AS_Type"
.LASF20:
	.string	"BL_AHB_SLAVE1_I2C"
.LASF282:
	.string	"intClear"
.LASF200:
	.string	"GLB_DAC_CLK_XCLK"
.LASF292:
	.string	"GLB_GPIO_OUTPUT_Disable"
.LASF218:
	.string	"GLB_UART_SIG_FUN_UART0_CTS"
.LASF114:
	.string	"oeDelay"
.LASF29:
	.string	"long int"
.LASF98:
	.string	"SF_CTRL_OWNER_IAHB"
.LASF41:
	.string	"GLB_GPIO_PIN_2"
.LASF239:
	.string	"GLB_GPIO_INT_CONTROL_Type"
.LASF14:
	.string	"BL_AHB_SLAVE1_SDU"
.LASF122:
	.string	"HBN_UART_CLK_Type"
.LASF40:
	.string	"GLB_GPIO_PIN_1"
.LASF295:
	.string	"pinOffset"
.LASF42:
	.string	"GLB_GPIO_PIN_3"
.LASF235:
	.string	"GLB_GPIO_INT_TRIG_POS_LEVEL"
.LASF44:
	.string	"GLB_GPIO_PIN_5"
.LASF45:
	.string	"GLB_GPIO_PIN_6"
.LASF46:
	.string	"GLB_GPIO_PIN_7"
.LASF47:
	.string	"GLB_GPIO_PIN_8"
.LASF189:
	.string	"GLB_EM_0KB"
.LASF274:
	.string	"bitVal"
.LASF91:
	.string	"RESET"
.LASF238:
	.string	"GLB_GPIO_INT_CONTROL_ASYNC"
.LASF354:
	.string	"GLB_BMX_Init"
.LASF113:
	.string	"diDelay"
.LASF303:
	.string	"GLB_IR_LED_Driver_Disable"
.LASF271:
	.string	"GLB_GPIO_INT0_Callback_Install"
.LASF281:
	.string	"GLB_GPIO_IntClear"
.LASF203:
	.string	"GLB_DIG_CLK_XCLK"
.LASF191:
	.string	"GLB_EM_16KB"
.LASF310:
	.string	"enable"
.LASF185:
	.string	"BMX_ERR_INT_Type"
.LASF377:
	.string	"xtalType"
.LASF166:
	.string	"GLB_SPI_PAD_ACT_AS_SLAVE"
.LASF5:
	.string	"BL_AHB_SLAVE1_DBG"
.LASF161:
	.string	"GLB_SFLASH_CLK_48M"
.LASF81:
	.string	"GLB_GPIO_Cfg_Type"
.LASF284:
	.string	"intMask"
.LASF357:
	.string	"slave1"
.LASF348:
	.string	"GLB_BMX_Get_Status"
.LASF38:
	.string	"unsigned int"
.LASF304:
	.string	"GLB_IR_LED_Driver_Enable"
.LASF364:
	.string	"GLB_Set_I2C_CLK"
.LASF287:
	.string	"pOut"
.LASF358:
	.string	"GLB_AHB_Slave1_Reset"
.LASF176:
	.string	"timeoutEn"
.LASF197:
	.string	"GLB_ADC_CLK_XCLK"
.LASF24:
	.string	"BL_AHB_SLAVE1_CKS"
.LASF96:
	.string	"intCallback_Type"
.LASF89:
	.string	"ENABLE"
.LASF117:
	.string	"HBN_ROOT_CLK_XTAL"
.LASF23:
	.string	"BL_AHB_SLAVE1_IRR"
.LASF9:
	.string	"BL_AHB_SLAVE1_EFUSE"
.LASF160:
	.string	"GLB_SFLASH_CLK_XTAL"
.LASF95:
	.string	"BL_Mask_Type"
.LASF11:
	.string	"BL_AHB_SLAVE1_L1C"
.LASF172:
	.string	"BMX_ARB_FIX"
.LASF291:
	.string	"GLB_GPIO_Set_HZ"
.LASF246:
	.string	"GLB_PLL_XTAL_RC32M"
.LASF240:
	.string	"GLB_PLL_XTAL_NONE"
.LASF120:
	.string	"HBN_UART_CLK_FCLK"
.LASF90:
	.string	"BL_Fun_Type"
.LASF234:
	.string	"GLB_GPIO_INT_TRIG_NEG_LEVEL"
.LASF129:
	.string	"PDS_PLL_XTAL_RC32M"
.LASF22:
	.string	"BL_AHB_SLAVE1_TMR"
.LASF65:
	.string	"GPIO_FUN_FLASH"
.LASF26:
	.string	"unsigned char"
.LASF158:
	.string	"GLB_IR_CLK_SRC_Type"
.LASF133:
	.string	"PDS_PLL_CLK_192M"
.LASF220:
	.string	"GLB_UART_SIG_FUN_UART0_RXD"
.LASF75:
	.string	"gpioPin"
.LASF360:
	.string	"GLB_SW_CPU_Reset"
.LASF162:
	.string	"GLB_SFLASH_CLK_80M"
.LASF362:
	.string	"GLB_Set_PKA_CLK_Sel"
.LASF145:
	.string	"GLB_SYS_CLK_RC32M"
.LASF344:
	.string	"BMX_TIMEOUT_INT_Callback_Install"
.LASF267:
	.string	"PDS_Enable_PLL_All_Clks"
.LASF319:
	.string	"dig32kEn"
.LASF351:
	.string	"GLB_BMX_BusErrResponse_Enable"
.LASF370:
	.string	"GLB_Set_WiFi_Encrypt_CLK"
.LASF150:
	.string	"GLB_SYS_CLK_PLL192M"
.LASF190:
	.string	"GLB_EM_8KB"
.LASF6:
	.string	"BL_AHB_SLAVE1_SEC"
.LASF21:
	.string	"BL_AHB_SLAVE1_PWM"
.LASF127:
	.string	"PDS_PLL_XTAL_40M"
.LASF249:
	.string	"GLB_PLL_CLK_240M"
.LASF379:
	.string	"Update_SystemCoreClockWith_XTAL"
.LASF110:
	.string	"clkInvert"
.LASF293:
	.string	"GLB_GPIO_OUTPUT_Enable"
.LASF314:
	.string	"compensation"
.LASF300:
	.string	"GLB_GPIO_Init"
.LASF169:
	.string	"GLB_PKA_CLK_HCLK"
.LASF27:
	.string	"signed char"
.LASF195:
	.string	"GLB_MTIMER_CLK_Type"
.LASF186:
	.string	"BMX_TO_INT_TIMEOUT"
.LASF308:
	.string	"sig_pos"
.LASF126:
	.string	"PDS_PLL_XTAL_38P4M"
.LASF34:
	.string	"short unsigned int"
.LASF311:
	.string	"bandWidth"
.LASF269:
	.string	"HBN_Set_ROOT_CLK_Sel"
.LASF237:
	.string	"GLB_GPIO_INT_CONTROL_SYNC"
.LASF106:
	.string	"owner"
.LASF135:
	.string	"PDS_PLL_CLK_120M"
.LASF105:
	.string	"SF_Ctrl_Ahb2sif_Type"
.LASF209:
	.string	"GLB_UART_SIG_1"
.LASF210:
	.string	"GLB_UART_SIG_2"
.LASF211:
	.string	"GLB_UART_SIG_3"
.LASF212:
	.string	"GLB_UART_SIG_4"
.LASF213:
	.string	"GLB_UART_SIG_5"
.LASF12:
	.string	"BL_AHB_SLAVE1_SFC"
.LASF215:
	.string	"GLB_UART_SIG_7"
.LASF241:
	.string	"GLB_PLL_XTAL_24M"
.LASF192:
	.string	"GLB_EM_Type"
.LASF350:
	.string	"GLB_BMX_BusErrResponse_Disable"
.LASF148:
	.string	"GLB_SYS_CLK_PLL120M"
.LASF385:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF321:
	.string	"GLB_Platform_Wakeup_Enable"
.LASF376:
	.string	"GLB_Set_System_CLK"
.LASF80:
	.string	"smtCtrl"
.LASF3:
	.string	"BL_AHB_SLAVE1_RF"
.LASF305:
	.string	"GLB_IR_RX_GPIO_Sel"
.LASF283:
	.string	"GLB_GPIO_IntMask"
.LASF187:
	.string	"BMX_TO_INT_ALL"
.LASF349:
	.string	"errType"
.LASF103:
	.string	"HIGH_SPEED_MODE_CLOCK"
.LASF193:
	.string	"GLB_MTIMER_CLK_BCLK"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_glb.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
