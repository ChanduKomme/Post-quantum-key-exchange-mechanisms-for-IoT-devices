	.file	"bl602_hbn.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c"
	.section	.bss.hbnInt0CbfArra,"aw",@nobits
	.align	2
	.type	hbnInt0CbfArra, @object
	.size	hbnInt0CbfArra, 12
hbnInt0CbfArra:
	.zero	12
	.section	.bss.hbnInt1CbfArra,"aw",@nobits
	.align	2
	.type	hbnInt1CbfArra, @object
	.size	hbnInt1CbfArra, 16
hbnInt1CbfArra:
	.zero	16
	.section	.tcm_code,"ax",@progbits
	.align	1
	.weak	HBN_Mode_Enter
	.type	HBN_Mode_Enter, @function
HBN_Mode_Enter:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c"
	.loc 1 104 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s2,68(sp)
	sw	s3,64(sp)
	sw	s4,60(sp)
	sw	s5,56(sp)
	sw	s6,52(sp)
	sw	s7,48(sp)
	sw	s8,44(sp)
	sw	s9,40(sp)
	sw	s10,36(sp)
	sw	s11,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	.cfi_offset 22, -28
	.cfi_offset 23, -32
	.cfi_offset 24, -36
	.cfi_offset 25, -40
	.cfi_offset 26, -44
	.cfi_offset 27, -48
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	.loc 1 105 14
	sw	zero,-60(s0)
	.loc 1 105 23
	sw	zero,-64(s0)
	.loc 1 108 11
	lw	a5,-68(s0)
	lbu	a5,0(a5)
	.loc 1 108 7
	beq	a5,zero,.L2
	.loc 1 109 9
	li	a0,1
	call	HBN_32K_Sel
	j	.L3
.L2:
	.loc 1 111 9
	li	a0,0
	call	HBN_32K_Sel
	.loc 1 112 9
	call	HBN_Power_Off_Xtal_32K
.L3:
	.loc 1 116 5
	li	a0,0
	call	HBN_Hw_Pu_Pd_Cfg
	.loc 1 118 30
	lw	a5,-68(s0)
	lbu	a5,8(a5)
	.loc 1 118 5
	not	a5,a5
	andi	a5,a5,0xff
	mv	a0,a5
	call	HBN_Pin_WakeUp_Mask
	.loc 1 119 11
	lw	a5,-68(s0)
	lbu	a5,8(a5)
	.loc 1 119 7
	beq	a5,zero,.L4
	.loc 1 120 9
	li	a0,1
	call	HBN_Aon_Pad_IeSmt_Cfg
	.loc 1 121 9
	lw	a5,-68(s0)
	lbu	a5,9(a5)
	mv	a0,a5
	call	HBN_GPIO_INT_Enable
	j	.L5
.L4:
	.loc 1 123 9
	li	a0,0
	call	HBN_Aon_Pad_IeSmt_Cfg
.L5:
	.loc 1 127 5
	call	HBN_Clear_RTC_Counter
	.loc 1 128 11
	lw	a5,-68(s0)
	lw	a5,4(a5)
	.loc 1 128 7
	beq	a5,zero,.L6
	.loc 1 129 9
	addi	a4,s0,-64
	addi	a5,s0,-60
	mv	a1,a4
	mv	a0,a5
	call	HBN_Get_RTC_Timer_Val
	.loc 1 130 19
	lw	a5,-60(s0)
	mv	s2,a5
	li	s3,0
	.loc 1 130 21
	lw	a5,-64(s0)
	mv	s10,a5
	li	s11,0
	.loc 1 130 38
	slli	s5,s10,0
	li	s4,0
	.loc 1 130 12
	add	a4,s2,s4
	mv	a3,a4
	sltu	a3,a3,s2
	add	a5,s3,s5
	add	a3,a3,a5
	mv	a5,a3
	sw	a4,-56(s0)
	sw	a5,-52(s0)
	.loc 1 131 17
	lw	a5,-68(s0)
	lw	a5,4(a5)
	.loc 1 131 28
	slli	a5,a5,15
	mv	s6,a5
	li	s7,0
	.loc 1 131 12
	lw	a2,-56(s0)
	lw	a3,-52(s0)
	add	a4,a2,s6
	mv	a1,a4
	sltu	a1,a1,a2
	add	a5,a3,s7
	add	a3,a1,a5
	mv	a5,a3
	sw	a4,-56(s0)
	sw	a5,-52(s0)
	.loc 1 132 9
	lw	a4,-56(s0)
	.loc 1 132 66
	lw	a5,-52(s0)
	srli	s8,a5,0
	li	s9,0
	.loc 1 132 9
	mv	a5,s8
	li	a3,1
	mv	a2,a5
	mv	a1,a4
	li	a0,1
	call	HBN_Set_RTC_Timer
	.loc 1 133 9
	call	HBN_Enable_RTC_Counter
.L6:
	.loc 1 136 5
	lw	a5,-68(s0)
	lw	a5,12(a5)
	mv	a0,a5
	call	HBN_Power_Down_Flash
	.loc 1 137 5
	li	a0,1
	call	HBN_Set_Embedded_Flash_Pullup
	.loc 1 139 5
	li	a1,0
	li	a0,0
	call	GLB_Set_System_CLK
	.loc 1 141 5
	lw	a5,-68(s0)
	lbu	a4,8(a5)
	lw	a5,-68(s0)
	lbu	a3,17(a5)
	lw	a5,-68(s0)
	lbu	a5,16(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	HBN_Enable
	.loc 1 142 1
	nop
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s2,68(sp)
	.cfi_restore 18
	lw	s3,64(sp)
	.cfi_restore 19
	lw	s4,60(sp)
	.cfi_restore 20
	lw	s5,56(sp)
	.cfi_restore 21
	lw	s6,52(sp)
	.cfi_restore 22
	lw	s7,48(sp)
	.cfi_restore 23
	lw	s8,44(sp)
	.cfi_restore 24
	lw	s9,40(sp)
	.cfi_restore 25
	lw	s10,36(sp)
	.cfi_restore 26
	lw	s11,32(sp)
	.cfi_restore 27
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	HBN_Mode_Enter, .-HBN_Mode_Enter
	.align	1
	.weak	HBN_Power_Down_Flash
	.type	HBN_Power_Down_Flash, @function
HBN_Power_Down_Flash:
.LFB9:
	.loc 1 156 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-116(s0)
	.loc 1 159 7
	lw	a5,-116(s0)
	bne	a5,zero,.L8
	.loc 1 160 9
	call	SFlash_Cache_Flush
	.loc 1 161 9
	addi	a5,s0,-100
	li	a2,84
	mv	a1,a5
	li	a5,587202560
	addi	a0,a5,12
	call	XIP_SFlash_Read_Via_Cache_Need_Lock
	.loc 1 162 9
	call	SFlash_Cache_Flush
	.loc 1 164 9
	li	a0,0
	call	SF_Ctrl_Set_Owner
	.loc 1 165 9
	addi	a5,s0,-100
	mv	a0,a5
	call	SFlash_Reset_Continue_Read
	j	.L9
.L8:
	.loc 1 167 9
	li	a0,0
	call	SF_Ctrl_Set_Owner
	.loc 1 168 9
	lw	a0,-116(s0)
	call	SFlash_Reset_Continue_Read
.L9:
	.loc 1 171 5
	call	SFlash_Powerdown
	.loc 1 172 1
	nop
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	HBN_Power_Down_Flash, .-HBN_Power_Down_Flash
	.align	1
	.weak	HBN_Enable
	.type	HBN_Enable, @function
HBN_Enable:
.LFB10:
	.loc 1 190 1
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
	.loc 1 198 7
	li	a5,1073803264
	addi	a5,a5,52
	.loc 1 198 60
	li	a4,36
	sw	a4,0(a5)
	.loc 1 200 13
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 200 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 201 23
	lw	a5,-20(s0)
	andi	a4,a5,-257
	.loc 1 201 54
	lbu	a5,-33(s0)
	.loc 1 201 76
	slli	a5,a5,8
	.loc 1 201 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 202 11
	lw	a4,-20(s0)
	li	a5,-65536
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 203 7
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 203 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 226 13
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 226 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 227 11
	lw	a5,-20(s0)
	andi	a5,a5,-4
	sw	a5,-20(s0)
	.loc 1 228 7
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 228 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 229 5
 #APP
# 229 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 229 28
# 229 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 229 51
# 229 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 229 74
# 229 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 232 7
 #NO_APP
	li	a5,1073803264
	addi	a5,a5,256
	.loc 1 232 61
	li	a4,1312968704
	addi	a4,a4,-1979
	sw	a4,0(a5)
	.loc 1 234 13
	li	a5,1073803264
	.loc 1 234 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 236 5
	lbu	a5,-35(s0)
	li	a4,3
	beq	a5,a4,.L11
	li	a4,3
	bgt	a5,a4,.L18
	li	a4,2
	beq	a5,a4,.L13
	li	a4,2
	bgt	a5,a4,.L18
	beq	a5,zero,.L14
	li	a4,1
	beq	a5,a4,.L15
	.loc 1 258 13
	j	.L18
.L14:
	.loc 1 238 19
	lw	a5,-20(s0)
	andi	a5,a5,-513
	sw	a5,-20(s0)
	.loc 1 239 19
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,2047
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 240 13
	j	.L16
.L15:
	.loc 1 243 19
	lw	a5,-20(s0)
	ori	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 244 19
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,2047
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 245 13
	j	.L16
.L13:
	.loc 1 248 19
	lw	a5,-20(s0)
	ori	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 249 19
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 250 13
	j	.L16
.L11:
	.loc 1 253 19
	lw	a5,-20(s0)
	ori	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 254 19
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 255 13
	j	.L16
.L18:
	.loc 1 258 13
	nop
.L16:
	.loc 1 261 11
	lw	a4,-20(s0)
	li	a5,-33554432
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 262 7
	li	a5,1073803264
	.loc 1 262 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 265 13
	li	a5,1073803264
	.loc 1 265 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 266 11
	lw	a5,-20(s0)
	ori	a5,a5,128
	sw	a5,-20(s0)
	.loc 1 267 7
	li	a5,1073803264
	.loc 1 267 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L17:
	.loc 1 270 9 discriminator 2
	li	a0,1000
	call	BL602_Delay_MS
	j	.L17
	.cfi_endproc
.LFE10:
	.size	HBN_Enable, .-HBN_Enable
	.align	1
	.weak	HBN_Reset
	.type	HBN_Reset, @function
HBN_Reset:
.LFB11:
	.loc 1 286 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 289 13
	li	a5,1073803264
	.loc 1 289 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 291 11
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 292 7
	li	a5,1073803264
	.loc 1 292 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 294 11
	lw	a4,-20(s0)
	li	a5,4096
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 295 7
	li	a5,1073803264
	.loc 1 295 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 297 11
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 298 7
	li	a5,1073803264
	.loc 1 298 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 300 12
	li	a5,0
	.loc 1 301 1
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
	.size	HBN_Reset, .-HBN_Reset
	.section	.text.HBN_App_Reset,"ax",@progbits
	.align	1
	.globl	HBN_App_Reset
	.type	HBN_App_Reset, @function
HBN_App_Reset:
.LFB12:
	.loc 1 317 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a3
	sb	a5,-65(s0)
	mv	a5,a1
	sb	a5,-66(s0)
	mv	a5,a2
	sb	a5,-67(s0)
	mv	a5,a4
	sb	a5,-68(s0)
	.loc 1 320 13
	li	a5,1073803264
	lw	a5,0(a5)
	.loc 1 320 11
	sw	a5,-64(s0)
	.loc 1 321 13
	li	a5,1073803264
	addi	a5,a5,4
	lw	a5,0(a5)
	.loc 1 321 11
	sw	a5,-60(s0)
	.loc 1 322 13
	li	a5,1073803264
	addi	a5,a5,8
	lw	a5,0(a5)
	.loc 1 322 11
	sw	a5,-56(s0)
	.loc 1 323 13
	li	a5,1073803264
	addi	a5,a5,20
	lw	a5,0(a5)
	.loc 1 323 11
	sw	a5,-52(s0)
	.loc 1 324 13
	li	a5,1073803264
	addi	a5,a5,28
	lw	a5,0(a5)
	.loc 1 324 11
	sw	a5,-48(s0)
	.loc 1 325 13
	li	a5,1073803264
	addi	a5,a5,32
	lw	a5,0(a5)
	.loc 1 325 11
	sw	a5,-44(s0)
	.loc 1 326 13
	li	a5,1073803264
	addi	a5,a5,36
	lw	a5,0(a5)
	.loc 1 326 11
	sw	a5,-40(s0)
	.loc 1 327 13
	li	a5,1073803264
	addi	a5,a5,40
	lw	a5,0(a5)
	.loc 1 327 11
	sw	a5,-36(s0)
	.loc 1 328 13
	li	a5,1073803264
	addi	a5,a5,52
	lw	a5,0(a5)
	.loc 1 328 11
	sw	a5,-32(s0)
	.loc 1 329 13
	li	a5,1073803264
	addi	a5,a5,256
	lw	a5,0(a5)
	.loc 1 329 11
	sw	a5,-28(s0)
	.loc 1 330 14
	li	a5,1073803264
	addi	a5,a5,260
	lw	a5,0(a5)
	.loc 1 330 12
	sw	a5,-24(s0)
	.loc 1 331 14
	li	a5,1073803264
	addi	a5,a5,264
	lw	a5,0(a5)
	.loc 1 331 12
	sw	a5,-20(s0)
	.loc 1 333 5
	call	HBN_Reset
	.loc 1 335 5
	li	a0,100
	call	BL602_Delay_US
	.loc 1 337 7
	li	a5,1073803264
	addi	a5,a5,4
	.loc 1 337 64
	lw	a4,-60(s0)
	.loc 1 337 59
	sw	a4,0(a5)
	.loc 1 338 7
	li	a5,1073803264
	addi	a5,a5,8
	.loc 1 338 64
	lw	a4,-56(s0)
	.loc 1 338 59
	sw	a4,0(a5)
	.loc 1 339 7
	li	a5,1073803264
	.loc 1 339 64
	lw	a4,-64(s0)
	.loc 1 339 59
	sw	a4,0(a5)
	.loc 1 341 7
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 341 65
	lw	a4,-52(s0)
	.loc 1 341 60
	sw	a4,0(a5)
	.loc 1 342 7
	li	a5,1073803264
	addi	a5,a5,28
	.loc 1 342 65
	lw	a4,-48(s0)
	.loc 1 342 60
	sw	a4,0(a5)
	.loc 1 343 7
	li	a5,1073803264
	addi	a5,a5,32
	.loc 1 343 65
	lw	a4,-44(s0)
	.loc 1 343 60
	sw	a4,0(a5)
	.loc 1 344 7
	li	a5,1073803264
	addi	a5,a5,36
	.loc 1 344 65
	lw	a4,-40(s0)
	.loc 1 344 60
	sw	a4,0(a5)
	.loc 1 345 7
	li	a5,1073803264
	addi	a5,a5,40
	.loc 1 345 65
	lw	a4,-36(s0)
	.loc 1 345 60
	sw	a4,0(a5)
	.loc 1 346 7
	li	a5,1073803264
	addi	a5,a5,52
	.loc 1 346 65
	lw	a4,-32(s0)
	.loc 1 346 60
	sw	a4,0(a5)
	.loc 1 347 7
	li	a5,1073803264
	addi	a5,a5,256
	.loc 1 347 66
	lw	a4,-28(s0)
	.loc 1 347 61
	sw	a4,0(a5)
	.loc 1 348 7
	li	a5,1073803264
	addi	a5,a5,260
	.loc 1 348 66
	lw	a4,-24(s0)
	.loc 1 348 61
	sw	a4,0(a5)
	.loc 1 349 7
	li	a5,1073803264
	addi	a5,a5,264
	.loc 1 349 66
	lw	a4,-20(s0)
	.loc 1 349 61
	sw	a4,0(a5)
	.loc 1 351 12
	li	a5,0
	.loc 1 352 1
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
.LFE12:
	.size	HBN_App_Reset, .-HBN_App_Reset
	.section	.text.HBN_Disable,"ax",@progbits
	.align	1
	.globl	HBN_Disable
	.type	HBN_Disable, @function
HBN_Disable:
.LFB13:
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
	.loc 1 366 13
	li	a5,1073803264
	.loc 1 366 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 368 11
	lw	a5,-20(s0)
	andi	a5,a5,-129
	sw	a5,-20(s0)
	.loc 1 369 7
	li	a5,1073803264
	.loc 1 369 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 371 12
	li	a5,0
	.loc 1 372 1
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
.LFE13:
	.size	HBN_Disable, .-HBN_Disable
	.section	.text.HBN_PIR_Enable,"ax",@progbits
	.align	1
	.globl	HBN_PIR_Enable
	.type	HBN_PIR_Enable, @function
HBN_PIR_Enable:
.LFB14:
	.loc 1 383 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 386 13
	li	a5,1073803264
	addi	a5,a5,32
	.loc 1 386 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 387 11
	lw	a5,-20(s0)
	ori	a5,a5,128
	sw	a5,-20(s0)
	.loc 1 388 7
	li	a5,1073803264
	addi	a5,a5,32
	.loc 1 388 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 390 12
	li	a5,0
	.loc 1 391 1
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
	.size	HBN_PIR_Enable, .-HBN_PIR_Enable
	.section	.text.HBN_PIR_Disable,"ax",@progbits
	.align	1
	.globl	HBN_PIR_Disable
	.type	HBN_PIR_Disable, @function
HBN_PIR_Disable:
.LFB15:
	.loc 1 402 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 405 13
	li	a5,1073803264
	addi	a5,a5,32
	.loc 1 405 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 406 11
	lw	a5,-20(s0)
	andi	a5,a5,-129
	sw	a5,-20(s0)
	.loc 1 407 7
	li	a5,1073803264
	addi	a5,a5,32
	.loc 1 407 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 409 12
	li	a5,0
	.loc 1 410 1
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
.LFE15:
	.size	HBN_PIR_Disable, .-HBN_PIR_Disable
	.section	.text.HBN_PIR_INT_Config,"ax",@progbits
	.align	1
	.globl	HBN_PIR_INT_Config
	.type	HBN_PIR_INT_Config, @function
HBN_PIR_INT_Config:
.LFB16:
	.loc 1 421 1
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
	.loc 1 423 14
	sw	zero,-20(s0)
	.loc 1 424 14
	sw	zero,-24(s0)
	.loc 1 425 14
	sw	zero,-28(s0)
	.loc 1 427 13
	li	a5,1073803264
	addi	a5,a5,32
	.loc 1 427 11
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 430 17
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 1 430 7
	li	a5,1
	bne	a4,a5,.L30
	.loc 1 431 14
	sw	zero,-24(s0)
	j	.L31
.L30:
	.loc 1 433 14
	li	a5,1
	sw	a5,-24(s0)
.L31:
	.loc 1 437 17
	lw	a5,-36(s0)
	lbu	a4,1(a5)
	.loc 1 437 7
	li	a5,1
	bne	a4,a5,.L32
	.loc 1 438 14
	sw	zero,-20(s0)
	j	.L33
.L32:
	.loc 1 440 14
	li	a5,1
	sw	a5,-20(s0)
.L33:
	.loc 1 443 24
	lw	a5,-24(s0)
	slli	a5,a5,1
	.loc 1 443 12
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 444 23
	lw	a5,-32(s0)
	andi	a4,a5,-49
	.loc 1 444 72
	lw	a5,-28(s0)
	slli	a5,a5,4
	.loc 1 444 11
	or	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 445 7
	li	a5,1073803264
	addi	a5,a5,32
	.loc 1 445 60
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 1 447 12
	li	a5,0
	.loc 1 448 1
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
	.size	HBN_PIR_INT_Config, .-HBN_PIR_INT_Config
	.section	.text.HBN_PIR_LPF_Sel,"ax",@progbits
	.align	1
	.globl	HBN_PIR_LPF_Sel
	.type	HBN_PIR_LPF_Sel, @function
HBN_PIR_LPF_Sel:
.LFB17:
	.loc 1 459 1
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
	.loc 1 464 13
	li	a5,1073803264
	addi	a5,a5,32
	.loc 1 464 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 465 23
	lw	a5,-20(s0)
	andi	a4,a5,-5
	.loc 1 465 54
	lbu	a5,-33(s0)
	.loc 1 465 69
	slli	a5,a5,2
	.loc 1 465 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 466 7
	li	a5,1073803264
	addi	a5,a5,32
	.loc 1 466 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 468 12
	li	a5,0
	.loc 1 469 1
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
	.size	HBN_PIR_LPF_Sel, .-HBN_PIR_LPF_Sel
	.section	.text.HBN_PIR_HPF_Sel,"ax",@progbits
	.align	1
	.globl	HBN_PIR_HPF_Sel
	.type	HBN_PIR_HPF_Sel, @function
HBN_PIR_HPF_Sel:
.LFB18:
	.loc 1 480 1
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
	.loc 1 485 13
	li	a5,1073803264
	addi	a5,a5,32
	.loc 1 485 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 486 23
	lw	a5,-20(s0)
	andi	a4,a5,-4
	.loc 1 486 69
	lbu	a5,-33(s0)
	.loc 1 486 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 487 7
	li	a5,1073803264
	addi	a5,a5,32
	.loc 1 487 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 489 12
	li	a5,0
	.loc 1 490 1
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
	.size	HBN_PIR_HPF_Sel, .-HBN_PIR_HPF_Sel
	.section	.text.HBN_Set_PIR_Threshold,"ax",@progbits
	.align	1
	.globl	HBN_Set_PIR_Threshold
	.type	HBN_Set_PIR_Threshold, @function
HBN_Set_PIR_Threshold:
.LFB19:
	.loc 1 501 1
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
	.loc 1 506 13
	li	a5,1073803264
	addi	a5,a5,36
	.loc 1 506 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 507 23
	lw	a4,-20(s0)
	li	a5,-16384
	and	a4,a4,a5
	.loc 1 507 76
	lhu	a5,-34(s0)
	.loc 1 507 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 508 7
	li	a5,1073803264
	addi	a5,a5,36
	.loc 1 508 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
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
.LFE19:
	.size	HBN_Set_PIR_Threshold, .-HBN_Set_PIR_Threshold
	.section	.text.HBN_Get_PIR_Threshold,"ax",@progbits
	.align	1
	.globl	HBN_Get_PIR_Threshold
	.type	HBN_Get_PIR_Threshold, @function
HBN_Get_PIR_Threshold:
.LFB20:
	.loc 1 522 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 525 13
	li	a5,1073803264
	addi	a5,a5,36
	.loc 1 525 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 527 51
	lw	a5,-20(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	li	a5,16384
	addi	a5,a5,-1
	and	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 528 1
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
.LFE20:
	.size	HBN_Get_PIR_Threshold, .-HBN_Get_PIR_Threshold
	.section	.text.HBN_Set_PIR_Interval,"ax",@progbits
	.align	1
	.globl	HBN_Set_PIR_Interval
	.type	HBN_Set_PIR_Interval, @function
HBN_Set_PIR_Interval:
.LFB21:
	.loc 1 539 1
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
	.loc 1 544 13
	li	a5,1073803264
	addi	a5,a5,40
	.loc 1 544 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 545 23
	lw	a4,-20(s0)
	li	a5,-4096
	and	a4,a4,a5
	.loc 1 545 75
	lhu	a5,-34(s0)
	.loc 1 545 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 546 7
	li	a5,1073803264
	addi	a5,a5,40
	.loc 1 546 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 548 12
	li	a5,0
	.loc 1 549 1
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
	.size	HBN_Set_PIR_Interval, .-HBN_Set_PIR_Interval
	.section	.text.HBN_Get_PIR_Interval,"ax",@progbits
	.align	1
	.globl	HBN_Get_PIR_Interval
	.type	HBN_Get_PIR_Interval, @function
HBN_Get_PIR_Interval:
.LFB22:
	.loc 1 560 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 563 13
	li	a5,1073803264
	addi	a5,a5,40
	.loc 1 563 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 565 51
	lw	a5,-20(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 566 1
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
	.size	HBN_Get_PIR_Interval, .-HBN_Get_PIR_Interval
	.section	.text.HBN_Get_BOR_OUT_State,"ax",@progbits
	.align	1
	.globl	HBN_Get_BOR_OUT_State
	.type	HBN_Get_BOR_OUT_State, @function
HBN_Get_BOR_OUT_State:
.LFB23:
	.loc 1 577 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 578 17
	li	a5,1073803264
	addi	a5,a5,44
	lw	a5,0(a5)
	.loc 1 578 109
	andi	a5,a5,8
	.loc 1 578 113
	srli	a5,a5,3
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 579 1
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
.LFE23:
	.size	HBN_Get_BOR_OUT_State, .-HBN_Get_BOR_OUT_State
	.section	.text.HBN_Set_BOR_Config,"ax",@progbits
	.align	1
	.globl	HBN_Set_BOR_Config
	.type	HBN_Set_BOR_Config, @function
HBN_Set_BOR_Config:
.LFB24:
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
	mv	a3,a1
	mv	a4,a2
	sb	a5,-33(s0)
	mv	a5,a3
	sb	a5,-34(s0)
	mv	a5,a4
	sb	a5,-35(s0)
	.loc 1 598 13
	li	a5,1073803264
	addi	a5,a5,44
	.loc 1 598 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 599 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L50
	.loc 1 600 15
	lw	a5,-20(s0)
	ori	a5,a5,4
	sw	a5,-20(s0)
	j	.L51
.L50:
	.loc 1 602 15
	lw	a5,-20(s0)
	andi	a5,a5,-5
	sw	a5,-20(s0)
.L51:
	.loc 1 604 23
	lw	a5,-20(s0)
	andi	a4,a5,-3
	.loc 1 604 54
	lbu	a5,-34(s0)
	.loc 1 604 75
	slli	a5,a5,1
	.loc 1 604 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 605 23
	lw	a5,-20(s0)
	andi	a4,a5,-2
	.loc 1 605 70
	lbu	a5,-35(s0)
	.loc 1 605 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 606 7
	li	a5,1073803264
	addi	a5,a5,44
	.loc 1 606 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 608 12
	li	a5,0
	.loc 1 609 1
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
	.size	HBN_Set_BOR_Config, .-HBN_Set_BOR_Config
	.section	.tcm_code
	.align	1
	.weak	HBN_Set_Ldo11_Aon_Vout
	.type	HBN_Set_Ldo11_Aon_Vout, @function
HBN_Set_Ldo11_Aon_Vout:
.LFB25:
	.loc 1 622 1
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
	.loc 1 627 13
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 627 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 628 23
	lw	a4,-20(s0)
	li	a5,268435456
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 628 55
	lbu	a5,-33(s0)
	.loc 1 628 75
	slli	a5,a5,28
	.loc 1 628 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 629 7
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 629 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 631 12
	li	a5,0
	.loc 1 632 1
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
	.size	HBN_Set_Ldo11_Aon_Vout, .-HBN_Set_Ldo11_Aon_Vout
	.align	1
	.weak	HBN_Set_Ldo11_Rt_Vout
	.type	HBN_Set_Ldo11_Rt_Vout, @function
HBN_Set_Ldo11_Rt_Vout:
.LFB26:
	.loc 1 646 1
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
	.loc 1 651 13
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 651 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 652 23
	lw	a4,-20(s0)
	li	a5,-251658240
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 652 55
	lbu	a5,-33(s0)
	.loc 1 652 75
	slli	a5,a5,24
	.loc 1 652 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 653 7
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 653 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 655 12
	li	a5,0
	.loc 1 656 1
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
	.size	HBN_Set_Ldo11_Rt_Vout, .-HBN_Set_Ldo11_Rt_Vout
	.align	1
	.weak	HBN_Set_Ldo11_Soc_Vout
	.type	HBN_Set_Ldo11_Soc_Vout, @function
HBN_Set_Ldo11_Soc_Vout:
.LFB27:
	.loc 1 670 1
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
	.loc 1 675 13
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 675 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 676 23
	lw	a4,-20(s0)
	li	a5,-983040
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 676 55
	lbu	a5,-33(s0)
	.loc 1 676 75
	slli	a5,a5,16
	.loc 1 676 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 677 7
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 677 60
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
.LFE27:
	.size	HBN_Set_Ldo11_Soc_Vout, .-HBN_Set_Ldo11_Soc_Vout
	.section	.text.HBN_Set_Ldo11_All_Vout,"ax",@progbits
	.align	1
	.globl	HBN_Set_Ldo11_All_Vout
	.type	HBN_Set_Ldo11_All_Vout, @function
HBN_Set_Ldo11_All_Vout:
.LFB28:
	.loc 1 692 1
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
	.loc 1 697 13
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 697 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 698 23
	lw	a4,-20(s0)
	li	a5,268435456
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 698 55
	lbu	a5,-33(s0)
	.loc 1 698 75
	slli	a5,a5,28
	.loc 1 698 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 699 23
	lw	a4,-20(s0)
	li	a5,-251658240
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 699 55
	lbu	a5,-33(s0)
	.loc 1 699 75
	slli	a5,a5,24
	.loc 1 699 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 700 23
	lw	a4,-20(s0)
	li	a5,-983040
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 700 55
	lbu	a5,-33(s0)
	.loc 1 700 75
	slli	a5,a5,16
	.loc 1 700 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 701 7
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 701 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 703 12
	li	a5,0
	.loc 1 704 1
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
	.size	HBN_Set_Ldo11_All_Vout, .-HBN_Set_Ldo11_All_Vout
	.section	.sclock_rlt_code,"ax",@progbits
	.align	1
	.weak	HBN_32K_Sel
	.type	HBN_32K_Sel, @function
HBN_32K_Sel:
.LFB29:
	.loc 1 717 1
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
	.loc 1 723 5
	call	HBN_Trim_RC32K
	.loc 1 725 13
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 725 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 726 23
	lw	a5,-20(s0)
	andi	a4,a5,-25
	.loc 1 726 54
	lbu	a5,-33(s0)
	.loc 1 726 73
	slli	a5,a5,3
	.loc 1 726 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 727 7
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 727 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 729 12
	li	a5,0
	.loc 1 730 1
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
	.size	HBN_32K_Sel, .-HBN_32K_Sel
	.section	.text.HBN_Set_UART_CLK_Sel,"ax",@progbits
	.align	1
	.globl	HBN_Set_UART_CLK_Sel
	.type	HBN_Set_UART_CLK_Sel, @function
HBN_Set_UART_CLK_Sel:
.LFB30:
	.loc 1 742 1
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
	.loc 1 747 13
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 747 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 748 23
	lw	a5,-20(s0)
	andi	a4,a5,-5
	.loc 1 748 54
	lbu	a5,-33(s0)
	.loc 1 748 72
	slli	a5,a5,2
	.loc 1 748 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 749 7
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 749 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 751 12
	li	a5,0
	.loc 1 752 1
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
	.size	HBN_Set_UART_CLK_Sel, .-HBN_Set_UART_CLK_Sel
	.section	.text.HBN_Set_XCLK_CLK_Sel,"ax",@progbits
	.align	1
	.globl	HBN_Set_XCLK_CLK_Sel
	.type	HBN_Set_XCLK_CLK_Sel, @function
HBN_Set_XCLK_CLK_Sel:
.LFB31:
	.loc 1 763 1
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
	.loc 1 769 13
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 769 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 770 12
	lw	a5,-24(s0)
	andi	a5,a5,3
	sw	a5,-20(s0)
	.loc 1 771 5
	lbu	a5,-33(s0)
	beq	a5,zero,.L66
	li	a4,1
	beq	a5,a4,.L67
	.loc 1 779 13
	j	.L69
.L66:
	.loc 1 773 20
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 1 774 13
	j	.L69
.L67:
	.loc 1 776 20
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 777 13
	nop
.L69:
	.loc 1 781 23
	lw	a5,-24(s0)
	andi	a5,a5,-4
	.loc 1 781 11
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 782 7
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 782 60
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 783 6
 #APP
# 783 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 783 29
# 783 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 783 52
# 783 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 783 75
# 783 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 783 98
# 783 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 783 121
# 783 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 783 144
# 783 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 783 167
# 783 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 785 12
 #NO_APP
	li	a5,0
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
.LFE31:
	.size	HBN_Set_XCLK_CLK_Sel, .-HBN_Set_XCLK_CLK_Sel
	.section	.sclock_rlt_code
	.align	1
	.weak	HBN_Set_ROOT_CLK_Sel
	.type	HBN_Set_ROOT_CLK_Sel, @function
HBN_Set_ROOT_CLK_Sel:
.LFB32:
	.loc 1 799 1
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
	.loc 1 805 13
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 805 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 806 12
	lw	a5,-24(s0)
	andi	a5,a5,3
	sw	a5,-20(s0)
	.loc 1 807 5
	lbu	a5,-33(s0)
	li	a4,2
	beq	a5,a4,.L72
	li	a4,2
	bgt	a5,a4,.L78
	beq	a5,zero,.L74
	li	a4,1
	beq	a5,a4,.L75
	.loc 1 818 13
	j	.L78
.L74:
	.loc 1 809 20
	sw	zero,-20(s0)
	.loc 1 810 13
	j	.L76
.L75:
	.loc 1 812 20
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 813 13
	j	.L76
.L72:
	.loc 1 815 20
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 816 13
	j	.L76
.L78:
	.loc 1 818 13
	nop
.L76:
	.loc 1 820 23
	lw	a5,-24(s0)
	andi	a5,a5,-4
	.loc 1 820 11
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 821 7
	li	a5,1073803264
	addi	a5,a5,48
	.loc 1 821 60
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 822 6
 #APP
# 822 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 822 29
# 822 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 822 52
# 822 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 822 75
# 822 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 822 98
# 822 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 822 121
# 822 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 822 144
# 822 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 822 167
# 822 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c" 1
	nop
# 0 "" 2
	.loc 1 824 12
 #NO_APP
	li	a5,0
	.loc 1 825 1
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
	.size	HBN_Set_ROOT_CLK_Sel, .-HBN_Set_ROOT_CLK_Sel
	.section	.text.HBN_Set_HRAM_slp,"ax",@progbits
	.align	1
	.globl	HBN_Set_HRAM_slp
	.type	HBN_Set_HRAM_slp, @function
HBN_Set_HRAM_slp:
.LFB33:
	.loc 1 837 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 838 14
	sw	zero,-20(s0)
	.loc 1 840 13
	li	a5,1073803264
	addi	a5,a5,52
	.loc 1 840 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 841 11
	lw	a5,-20(s0)
	ori	a5,a5,128
	sw	a5,-20(s0)
	.loc 1 842 11
	lw	a5,-20(s0)
	andi	a5,a5,-65
	sw	a5,-20(s0)
	.loc 1 843 7
	li	a5,1073803264
	addi	a5,a5,52
	.loc 1 843 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 845 12
	li	a5,0
	.loc 1 846 1
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
	.size	HBN_Set_HRAM_slp, .-HBN_Set_HRAM_slp
	.section	.text.HBN_Set_HRAM_Ret,"ax",@progbits
	.align	1
	.globl	HBN_Set_HRAM_Ret
	.type	HBN_Set_HRAM_Ret, @function
HBN_Set_HRAM_Ret:
.LFB34:
	.loc 1 857 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 858 14
	sw	zero,-20(s0)
	.loc 1 860 13
	li	a5,1073803264
	addi	a5,a5,52
	.loc 1 860 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 861 11
	lw	a5,-20(s0)
	andi	a5,a5,-129
	sw	a5,-20(s0)
	.loc 1 862 11
	lw	a5,-20(s0)
	ori	a5,a5,64
	sw	a5,-20(s0)
	.loc 1 863 7
	li	a5,1073803264
	addi	a5,a5,52
	.loc 1 863 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 865 12
	li	a5,0
	.loc 1 866 1
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
	.size	HBN_Set_HRAM_Ret, .-HBN_Set_HRAM_Ret
	.section	.sclock_rlt_code
	.align	1
	.weak	HBN_Power_On_Xtal_32K
	.type	HBN_Power_On_Xtal_32K, @function
HBN_Power_On_Xtal_32K:
.LFB35:
	.loc 1 879 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 880 14
	sw	zero,-20(s0)
	.loc 1 882 13
	li	a5,1073803264
	addi	a5,a5,516
	.loc 1 882 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 883 11
	lw	a4,-20(s0)
	li	a5,524288
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 884 11
	lw	a4,-20(s0)
	li	a5,262144
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 885 7
	li	a5,1073803264
	addi	a5,a5,516
	.loc 1 885 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 888 5
	li	a0,1100
	call	BL602_Delay_US
	.loc 1 890 12
	li	a5,0
	.loc 1 891 1
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
.LFE35:
	.size	HBN_Power_On_Xtal_32K, .-HBN_Power_On_Xtal_32K
	.align	1
	.weak	HBN_Power_Off_Xtal_32K
	.type	HBN_Power_Off_Xtal_32K, @function
HBN_Power_Off_Xtal_32K:
.LFB36:
	.loc 1 905 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 906 14
	sw	zero,-20(s0)
	.loc 1 908 13
	li	a5,1073803264
	addi	a5,a5,516
	.loc 1 908 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 909 11
	lw	a4,-20(s0)
	li	a5,-524288
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 910 11
	lw	a4,-20(s0)
	li	a5,-262144
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 911 7
	li	a5,1073803264
	addi	a5,a5,516
	.loc 1 911 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 913 12
	li	a5,0
	.loc 1 914 1
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
.LFE36:
	.size	HBN_Power_Off_Xtal_32K, .-HBN_Power_Off_Xtal_32K
	.align	1
	.weak	HBN_Power_On_RC32K
	.type	HBN_Power_On_RC32K, @function
HBN_Power_On_RC32K:
.LFB37:
	.loc 1 928 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 929 14
	sw	zero,-20(s0)
	.loc 1 931 13
	li	a5,1073803264
	addi	a5,a5,512
	.loc 1 931 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 932 11
	lw	a5,-20(s0)
	andi	a5,a5,-33
	sw	a5,-20(s0)
	.loc 1 933 7
	li	a5,1073803264
	addi	a5,a5,512
	.loc 1 933 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 936 5
	li	a0,880
	call	BL602_Delay_US
	.loc 1 938 12
	li	a5,0
	.loc 1 939 1
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
	.size	HBN_Power_On_RC32K, .-HBN_Power_On_RC32K
	.align	1
	.weak	HBN_Power_Off_RC32K
	.type	HBN_Power_Off_RC32K, @function
HBN_Power_Off_RC32K:
.LFB38:
	.loc 1 953 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 954 14
	sw	zero,-20(s0)
	.loc 1 956 13
	li	a5,1073803264
	addi	a5,a5,512
	.loc 1 956 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 957 11
	lw	a5,-20(s0)
	ori	a5,a5,32
	sw	a5,-20(s0)
	.loc 1 958 7
	li	a5,1073803264
	addi	a5,a5,512
	.loc 1 958 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 960 12
	li	a5,0
	.loc 1 961 1
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
	.size	HBN_Power_Off_RC32K, .-HBN_Power_Off_RC32K
	.align	1
	.weak	HBN_Trim_RC32K
	.type	HBN_Trim_RC32K, @function
HBN_Trim_RC32K:
.LFB39:
	.loc 1 975 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 977 13
	sw	zero,-20(s0)
	.loc 1 979 5
	addi	a5,s0,-24
	mv	a0,a5
	call	EF_Ctrl_Read_RC32K_Trim
	.loc 1 980 8
	lw	a4,-24(s0)
	li	a5,4096
	addi	a5,a5,-2048
	and	a5,a4,a5
	.loc 1 980 7
	beq	a5,zero,.L92
	.loc 1 981 16
	lw	a5,-24(s0)
	srli	a5,a5,10
	andi	a5,a5,1
	andi	a5,a5,0xff
	mv	s1,a5
	.loc 1 981 71
	lw	a5,-24(s0)
	andi	a5,a5,1023
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 981 43
	li	a1,10
	mv	a0,a5
	call	EF_Ctrl_Get_Trim_Parity
	mv	a5,a0
	.loc 1 981 11 discriminator 1
	bne	s1,a5,.L92
	.loc 1 982 21
	li	a5,1073803264
	addi	a5,a5,512
	lw	a5,0(a5)
	.loc 1 982 19
	sw	a5,-20(s0)
	.loc 1 983 31
	lw	a4,-20(s0)
	li	a5,4194304
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 983 79
	lw	a5,-24(s0)
	andi	a5,a5,1023
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 983 99
	slli	a5,a5,22
	.loc 1 983 61
	or	a5,a4,a5
	.loc 1 983 19
	sw	a5,-20(s0)
	.loc 1 984 31
	lw	a4,-20(s0)
	li	a5,524288
	or	a5,a4,a5
	.loc 1 984 19
	sw	a5,-20(s0)
	.loc 1 985 15
	li	a5,1073803264
	addi	a5,a5,512
	.loc 1 985 69
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 986 13
	li	a0,2
	call	BL602_Delay_US
	.loc 1 987 20
	li	a5,0
	j	.L94
.L92:
	.loc 1 991 12
	li	a5,1
.L94:
	.loc 1 992 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE39:
	.size	HBN_Trim_RC32K, .-HBN_Trim_RC32K
	.section	.text.HBN_Get_Status_Flag,"ax",@progbits
	.align	1
	.globl	HBN_Get_Status_Flag
	.type	HBN_Get_Status_Flag, @function
HBN_Get_Status_Flag:
.LFB40:
	.loc 1 1004 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1005 13
	li	a5,1073803264
	addi	a5,a5,256
	lw	a5,0(a5)
	.loc 1 1006 1
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
	.size	HBN_Get_Status_Flag, .-HBN_Get_Status_Flag
	.section	.text.HBN_Set_Status_Flag,"ax",@progbits
	.align	1
	.globl	HBN_Set_Status_Flag
	.type	HBN_Set_Status_Flag, @function
HBN_Set_Status_Flag:
.LFB41:
	.loc 1 1017 1
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
	.loc 1 1018 7
	li	a5,1073803264
	addi	a5,a5,256
	.loc 1 1018 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1020 12
	li	a5,0
	.loc 1 1021 1
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
	.size	HBN_Set_Status_Flag, .-HBN_Set_Status_Flag
	.section	.text.HBN_Get_Wakeup_Addr,"ax",@progbits
	.align	1
	.globl	HBN_Get_Wakeup_Addr
	.type	HBN_Get_Wakeup_Addr, @function
HBN_Get_Wakeup_Addr:
.LFB42:
	.loc 1 1032 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1033 13
	li	a5,1073803264
	addi	a5,a5,260
	lw	a5,0(a5)
	.loc 1 1034 1
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
	.size	HBN_Get_Wakeup_Addr, .-HBN_Get_Wakeup_Addr
	.section	.text.HBN_Set_Wakeup_Addr,"ax",@progbits
	.align	1
	.globl	HBN_Set_Wakeup_Addr
	.type	HBN_Set_Wakeup_Addr, @function
HBN_Set_Wakeup_Addr:
.LFB43:
	.loc 1 1045 1
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
	.loc 1 1046 7
	li	a5,1073803264
	addi	a5,a5,260
	.loc 1 1046 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1048 12
	li	a5,0
	.loc 1 1049 1
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
	.size	HBN_Set_Wakeup_Addr, .-HBN_Set_Wakeup_Addr
	.section	.text.HBN_Clear_RTC_Counter,"ax",@progbits
	.align	1
	.globl	HBN_Clear_RTC_Counter
	.type	HBN_Clear_RTC_Counter, @function
HBN_Clear_RTC_Counter:
.LFB44:
	.loc 1 1060 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1063 13
	li	a5,1073803264
	.loc 1 1063 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1065 7
	li	a5,1073803264
	.loc 1 1065 67
	lw	a4,-20(s0)
	andi	a4,a4,-2
	.loc 1 1065 59
	sw	a4,0(a5)
	.loc 1 1067 12
	li	a5,0
	.loc 1 1068 1
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
.LFE44:
	.size	HBN_Clear_RTC_Counter, .-HBN_Clear_RTC_Counter
	.section	.text.HBN_Enable_RTC_Counter,"ax",@progbits
	.align	1
	.globl	HBN_Enable_RTC_Counter
	.type	HBN_Enable_RTC_Counter, @function
HBN_Enable_RTC_Counter:
.LFB45:
	.loc 1 1079 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1082 13
	li	a5,1073803264
	.loc 1 1082 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1084 7
	li	a5,1073803264
	.loc 1 1084 67
	lw	a4,-20(s0)
	ori	a4,a4,1
	.loc 1 1084 59
	sw	a4,0(a5)
	.loc 1 1086 12
	li	a5,0
	.loc 1 1087 1
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
.LFE45:
	.size	HBN_Enable_RTC_Counter, .-HBN_Enable_RTC_Counter
	.section	.text.HBN_Set_RTC_Timer,"ax",@progbits
	.align	1
	.globl	HBN_Set_RTC_Timer
	.type	HBN_Set_RTC_Timer, @function
HBN_Set_RTC_Timer:
.LFB46:
	.loc 1 1102 1
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
	.loc 1 1108 7
	li	a5,1073803264
	addi	a5,a5,4
	.loc 1 1108 59
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 1 1109 7
	li	a5,1073803264
	addi	a5,a5,8
	.loc 1 1109 72
	lw	a4,-44(s0)
	andi	a4,a4,255
	.loc 1 1109 59
	sw	a4,0(a5)
	.loc 1 1111 13
	li	a5,1073803264
	.loc 1 1111 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1113 23
	lw	a4,-20(s0)
	li	a5,-16777216
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1113 55
	lbu	a5,-33(s0)
	.loc 1 1113 72
	slli	a5,a5,24
	.loc 1 1113 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1115 24
	lbu	a5,-34(s0)
	slli	a5,a5,1
	.loc 1 1115 12
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1116 7
	li	a5,1073803264
	.loc 1 1116 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1118 12
	li	a5,0
	.loc 1 1119 1
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
	.size	HBN_Set_RTC_Timer, .-HBN_Set_RTC_Timer
	.section	.text.HBN_Get_RTC_Timer_Val,"ax",@progbits
	.align	1
	.globl	HBN_Get_RTC_Timer_Val
	.type	HBN_Get_RTC_Timer_Val, @function
HBN_Get_RTC_Timer_Val:
.LFB47:
	.loc 1 1131 1
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
	.loc 1 1135 13
	li	a5,1073803264
	addi	a5,a5,16
	.loc 1 1135 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1136 11
	lw	a4,-20(s0)
	li	a5,-2147483648
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1137 7
	li	a5,1073803264
	addi	a5,a5,16
	.loc 1 1137 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1138 11
	lw	a4,-20(s0)
	li	a5,-2147483648
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1139 7
	li	a5,1073803264
	addi	a5,a5,16
	.loc 1 1139 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1142 14
	li	a5,1073803264
	addi	a5,a5,12
	lw	a4,0(a5)
	.loc 1 1142 12
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 1143 71
	li	a5,1073803264
	addi	a5,a5,16
	lw	a5,0(a5)
	andi	a4,a5,255
	.loc 1 1143 13
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 1145 12
	li	a5,0
	.loc 1 1146 1
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
	.size	HBN_Get_RTC_Timer_Val, .-HBN_Get_RTC_Timer_Val
	.section	.text.HBN_Clear_RTC_INT,"ax",@progbits
	.align	1
	.globl	HBN_Clear_RTC_INT
	.type	HBN_Clear_RTC_INT, @function
HBN_Clear_RTC_INT:
.LFB48:
	.loc 1 1157 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1160 13
	li	a5,1073803264
	.loc 1 1160 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1162 7
	li	a5,1073803264
	.loc 1 1162 67
	lw	a4,-20(s0)
	andi	a4,a4,-15
	.loc 1 1162 59
	sw	a4,0(a5)
	.loc 1 1164 12
	li	a5,0
	.loc 1 1165 1
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
.LFE48:
	.size	HBN_Clear_RTC_INT, .-HBN_Clear_RTC_INT
	.section	.text.HBN_GPIO_INT_Enable,"ax",@progbits
	.align	1
	.globl	HBN_GPIO_INT_Enable
	.type	HBN_GPIO_INT_Enable, @function
HBN_GPIO_INT_Enable:
.LFB49:
	.loc 1 1176 1
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
	.loc 1 1182 13
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1182 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1183 23
	lw	a5,-20(s0)
	andi	a4,a5,-8
	.loc 1 1183 81
	lbu	a5,-33(s0)
	.loc 1 1183 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1184 7
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1184 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1186 12
	li	a5,0
	.loc 1 1187 1
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
	.size	HBN_GPIO_INT_Enable, .-HBN_GPIO_INT_Enable
	.section	.text.HBN_GPIO_INT_Disable,"ax",@progbits
	.align	1
	.globl	HBN_GPIO_INT_Disable
	.type	HBN_GPIO_INT_Disable, @function
HBN_GPIO_INT_Disable:
.LFB50:
	.loc 1 1198 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1201 13
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1201 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1202 11
	lw	a5,-20(s0)
	andi	a5,a5,-25
	sw	a5,-20(s0)
	.loc 1 1203 7
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1203 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1205 12
	li	a5,0
	.loc 1 1206 1
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
	.size	HBN_GPIO_INT_Disable, .-HBN_GPIO_INT_Disable
	.section	.text.HBN_Get_INT_State,"ax",@progbits
	.align	1
	.globl	HBN_Get_INT_State
	.type	HBN_Get_INT_State, @function
HBN_Get_INT_State:
.LFB51:
	.loc 1 1217 1
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
	.loc 1 1222 13
	li	a5,1073803264
	addi	a5,a5,24
	.loc 1 1222 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1224 17
	lbu	a5,-33(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 1224 14
	lw	a5,-20(s0)
	and	a5,a4,a5
	.loc 1 1224 7
	beq	a5,zero,.L118
	.loc 1 1225 16
	li	a5,1
	j	.L119
.L118:
	.loc 1 1227 16
	li	a5,0
.L119:
	.loc 1 1229 1
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
.LFE51:
	.size	HBN_Get_INT_State, .-HBN_Get_INT_State
	.section	.text.HBN_Get_Pin_Wakeup_Mode,"ax",@progbits
	.align	1
	.globl	HBN_Get_Pin_Wakeup_Mode
	.type	HBN_Get_Pin_Wakeup_Mode, @function
HBN_Get_Pin_Wakeup_Mode:
.LFB52:
	.loc 1 1240 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1241 17
	li	a5,1073803264
	addi	a5,a5,20
	lw	a5,0(a5)
	.loc 1 1241 100
	andi	a5,a5,0xff
	andi	a5,a5,7
	andi	a5,a5,0xff
	.loc 1 1242 1
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
.LFE52:
	.size	HBN_Get_Pin_Wakeup_Mode, .-HBN_Get_Pin_Wakeup_Mode
	.section	.text.HBN_Clear_IRQ,"ax",@progbits
	.align	1
	.globl	HBN_Clear_IRQ
	.type	HBN_Clear_IRQ, @function
HBN_Clear_IRQ:
.LFB53:
	.loc 1 1253 1
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
	.loc 1 1259 13
	li	a5,1073803264
	addi	a5,a5,28
	.loc 1 1259 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1260 17
	lbu	a5,-33(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 1260 12
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 1261 7
	li	a5,1073803264
	addi	a5,a5,28
	.loc 1 1261 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1264 13
	li	a5,1073803264
	addi	a5,a5,28
	.loc 1 1264 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1265 19
	lbu	a5,-33(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 1 1265 16
	not	a5,a5
	mv	a4,a5
	.loc 1 1265 12
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 1266 7
	li	a5,1073803264
	addi	a5,a5,28
	.loc 1 1266 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1268 12
	li	a5,0
	.loc 1 1269 1
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
.LFE53:
	.size	HBN_Clear_IRQ, .-HBN_Clear_IRQ
	.section	.tcm_code
	.align	1
	.weak	HBN_Hw_Pu_Pd_Cfg
	.type	HBN_Hw_Pu_Pd_Cfg, @function
HBN_Hw_Pu_Pd_Cfg:
.LFB54:
	.loc 1 1282 1
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
	.loc 1 1285 13
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1285 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1286 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L125
	.loc 1 1287 15
	lw	a4,-20(s0)
	li	a5,65536
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L126
.L125:
	.loc 1 1289 15
	lw	a4,-20(s0)
	li	a5,-65536
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
.L126:
	.loc 1 1291 7
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1291 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1293 12
	li	a5,0
	.loc 1 1294 1
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
	.size	HBN_Hw_Pu_Pd_Cfg, .-HBN_Hw_Pu_Pd_Cfg
	.section	.text.HBN_Aon_Pad_IeSmt_Cfg,"ax",@progbits
	.align	1
	.globl	HBN_Aon_Pad_IeSmt_Cfg
	.type	HBN_Aon_Pad_IeSmt_Cfg, @function
HBN_Aon_Pad_IeSmt_Cfg:
.LFB55:
	.loc 1 1306 1
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
	.loc 1 1309 13
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1309 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1310 23
	lw	a5,-20(s0)
	andi	a4,a5,-257
	.loc 1 1310 54
	lbu	a5,-33(s0)
	.loc 1 1310 72
	slli	a5,a5,8
	.loc 1 1310 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1311 7
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1311 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1313 12
	li	a5,0
	.loc 1 1314 1
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
	.size	HBN_Aon_Pad_IeSmt_Cfg, .-HBN_Aon_Pad_IeSmt_Cfg
	.section	.tcm_code
	.align	1
	.weak	HBN_Pin_WakeUp_Mask
	.type	HBN_Pin_WakeUp_Mask, @function
HBN_Pin_WakeUp_Mask:
.LFB56:
	.loc 1 1327 1
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
	.loc 1 1330 13
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1330 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1331 23
	lw	a5,-20(s0)
	andi	a4,a5,-25
	.loc 1 1331 54
	lbu	a5,-33(s0)
	.loc 1 1331 73
	slli	a5,a5,3
	.loc 1 1331 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1332 7
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1332 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1334 12
	li	a5,0
	.loc 1 1335 1
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
	.size	HBN_Pin_WakeUp_Mask, .-HBN_Pin_WakeUp_Mask
	.section	.text.HBN_Enable_AComp0_IRQ,"ax",@progbits
	.align	1
	.globl	HBN_Enable_AComp0_IRQ
	.type	HBN_Enable_AComp0_IRQ, @function
HBN_Enable_AComp0_IRQ:
.LFB57:
	.loc 1 1347 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1350 13
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1350 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1351 11
	lw	a4,-20(s0)
	li	a5,1048576
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1352 7
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1352 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1354 12
	li	a5,0
	.loc 1 1355 1
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
	.size	HBN_Enable_AComp0_IRQ, .-HBN_Enable_AComp0_IRQ
	.section	.text.HBN_Disable_AComp0_IRQ,"ax",@progbits
	.align	1
	.globl	HBN_Disable_AComp0_IRQ
	.type	HBN_Disable_AComp0_IRQ, @function
HBN_Disable_AComp0_IRQ:
.LFB58:
	.loc 1 1366 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1369 13
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1369 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1370 11
	lw	a4,-20(s0)
	li	a5,-3145728
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1371 7
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1371 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1373 12
	li	a5,0
	.loc 1 1374 1
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
	.size	HBN_Disable_AComp0_IRQ, .-HBN_Disable_AComp0_IRQ
	.section	.text.HBN_Enable_AComp1_IRQ,"ax",@progbits
	.align	1
	.globl	HBN_Enable_AComp1_IRQ
	.type	HBN_Enable_AComp1_IRQ, @function
HBN_Enable_AComp1_IRQ:
.LFB59:
	.loc 1 1385 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1388 13
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1388 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1389 11
	lw	a4,-20(s0)
	li	a5,4194304
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1390 7
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1390 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1392 12
	li	a5,0
	.loc 1 1393 1
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
.LFE59:
	.size	HBN_Enable_AComp1_IRQ, .-HBN_Enable_AComp1_IRQ
	.section	.text.HBN_Disable_AComp1_IRQ,"ax",@progbits
	.align	1
	.globl	HBN_Disable_AComp1_IRQ
	.type	HBN_Disable_AComp1_IRQ, @function
HBN_Disable_AComp1_IRQ:
.LFB60:
	.loc 1 1404 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1407 13
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1407 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1408 11
	lw	a4,-20(s0)
	li	a5,-12582912
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1409 7
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1409 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1411 12
	li	a5,0
	.loc 1 1412 1
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
.LFE60:
	.size	HBN_Disable_AComp1_IRQ, .-HBN_Disable_AComp1_IRQ
	.section	.text.HBN_Enable_BOR_IRQ,"ax",@progbits
	.align	1
	.globl	HBN_Enable_BOR_IRQ
	.type	HBN_Enable_BOR_IRQ, @function
HBN_Enable_BOR_IRQ:
.LFB61:
	.loc 1 1423 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1426 13
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1426 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1427 11
	lw	a4,-20(s0)
	li	a5,262144
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1428 7
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1428 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1430 12
	li	a5,0
	.loc 1 1431 1
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
.LFE61:
	.size	HBN_Enable_BOR_IRQ, .-HBN_Enable_BOR_IRQ
	.section	.text.HBN_Disable_BOR_IRQ,"ax",@progbits
	.align	1
	.globl	HBN_Disable_BOR_IRQ
	.type	HBN_Disable_BOR_IRQ, @function
HBN_Disable_BOR_IRQ:
.LFB62:
	.loc 1 1442 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1445 13
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1445 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1446 11
	lw	a4,-20(s0)
	li	a5,-262144
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1447 7
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1447 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1449 12
	li	a5,0
	.loc 1 1450 1
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
.LFE62:
	.size	HBN_Disable_BOR_IRQ, .-HBN_Disable_BOR_IRQ
	.section	.text.HBN_Out0_Callback_Install,"ax",@progbits
	.align	1
	.globl	HBN_Out0_Callback_Install
	.type	HBN_Out0_Callback_Install, @function
HBN_Out0_Callback_Install:
.LFB63:
	.loc 1 1462 1
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
	.loc 1 1466 19
	lbu	a5,-17(s0)
	.loc 1 1466 29
	lui	a4,%hi(hbnInt0CbfArra)
	addi	a4,a4,%lo(hbnInt0CbfArra)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 1468 12
	li	a5,0
	.loc 1 1469 1
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
.LFE63:
	.size	HBN_Out0_Callback_Install, .-HBN_Out0_Callback_Install
	.section	.text.HBN_Out1_Callback_Install,"ax",@progbits
	.align	1
	.globl	HBN_Out1_Callback_Install
	.type	HBN_Out1_Callback_Install, @function
HBN_Out1_Callback_Install:
.LFB64:
	.loc 1 1481 1
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
	.loc 1 1485 19
	lbu	a5,-17(s0)
	.loc 1 1485 29
	lui	a4,%hi(hbnInt1CbfArra)
	addi	a4,a4,%lo(hbnInt1CbfArra)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 1487 12
	li	a5,0
	.loc 1 1488 1
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
.LFE64:
	.size	HBN_Out1_Callback_Install, .-HBN_Out1_Callback_Install
	.section	.tcm_code
	.align	1
	.weak	HBN_GPIO7_Dbg_Pull_Cfg
	.type	HBN_GPIO7_Dbg_Pull_Cfg, @function
HBN_GPIO7_Dbg_Pull_Cfg:
.LFB65:
	.loc 1 1504 1
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
	.loc 1 1509 13
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1509 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1510 23
	lw	a4,-20(s0)
	li	a5,-134217728
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1510 55
	lbu	a5,-35(s0)
	.loc 1 1510 72
	slli	a5,a5,27
	.loc 1 1510 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1511 23
	lw	a4,-20(s0)
	li	a5,-117440512
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1511 55
	lbu	a5,-36(s0)
	.loc 1 1511 73
	slli	a5,a5,24
	.loc 1 1511 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1512 23
	lw	a4,-20(s0)
	li	a5,-65536
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1512 55
	lbu	a5,-33(s0)
	.loc 1 1512 73
	slli	a5,a5,16
	.loc 1 1512 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1513 23
	lw	a5,-20(s0)
	andi	a4,a5,-257
	.loc 1 1513 54
	lbu	a5,-34(s0)
	.loc 1 1513 73
	slli	a5,a5,8
	.loc 1 1513 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1514 7
	li	a5,1073803264
	addi	a5,a5,20
	.loc 1 1514 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1516 12
	li	a5,0
	.loc 1 1517 1
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
.LFE65:
	.size	HBN_GPIO7_Dbg_Pull_Cfg, .-HBN_GPIO7_Dbg_Pull_Cfg
	.align	1
	.weak	HBN_Set_Embedded_Flash_Pullup
	.type	HBN_Set_Embedded_Flash_Pullup, @function
HBN_Set_Embedded_Flash_Pullup:
.LFB66:
	.loc 1 1531 1
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
	.loc 1 1532 14
	sw	zero,-20(s0)
	.loc 1 1534 13
	li	a5,1073803264
	addi	a5,a5,268
	.loc 1 1534 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1536 13
	lbu	a5,-33(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 1536 11
	sb	a5,-33(s0)
	.loc 1 1537 20
	lw	a5,-20(s0)
	andi	a4,a5,-2
	.loc 1 1537 40
	lbu	a5,-33(s0)
	andi	a5,a5,1
	.loc 1 1537 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1539 7
	li	a5,1073803264
	addi	a5,a5,268
	.loc 1 1539 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1541 12
	li	a5,0
	.loc 1 1542 1
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
.LFE66:
	.size	HBN_Set_Embedded_Flash_Pullup, .-HBN_Set_Embedded_Flash_Pullup
	.section	.text.HBN_Set_BOR_Cfg,"ax",@progbits
	.align	1
	.globl	HBN_Set_BOR_Cfg
	.type	HBN_Set_BOR_Cfg, @function
HBN_Set_BOR_Cfg:
.LFB67:
	.loc 1 1554 1
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
	.loc 1 1555 14
	sw	zero,-20(s0)
	.loc 1 1557 11
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	.loc 1 1557 7
	beq	a5,zero,.L153
	.loc 1 1558 9
	call	HBN_Enable_BOR_IRQ
	j	.L154
.L153:
	.loc 1 1560 9
	call	HBN_Disable_BOR_IRQ
.L154:
	.loc 1 1563 13
	li	a5,1073803264
	addi	a5,a5,44
	.loc 1 1563 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1565 23
	lw	a5,-20(s0)
	andi	a4,a5,-3
	.loc 1 1565 68
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	.loc 1 1565 83
	slli	a5,a5,1
	.loc 1 1565 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1566 11
	lw	a5,-36(s0)
	lbu	a5,3(a5)
	.loc 1 1566 7
	beq	a5,zero,.L155
	.loc 1 1567 15
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	j	.L156
.L155:
	.loc 1 1569 15
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
.L156:
	.loc 1 1572 11
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 1572 7
	beq	a5,zero,.L157
	.loc 1 1573 15
	lw	a5,-20(s0)
	ori	a5,a5,4
	sw	a5,-20(s0)
	j	.L158
.L157:
	.loc 1 1575 15
	lw	a5,-20(s0)
	andi	a5,a5,-5
	sw	a5,-20(s0)
.L158:
	.loc 1 1578 7
	li	a5,1073803264
	addi	a5,a5,44
	.loc 1 1578 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1580 12
	li	a5,0
	.loc 1 1581 1
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
	.size	HBN_Set_BOR_Cfg, .-HBN_Set_BOR_Cfg
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_ctrl.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_xip_sflash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x179c
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x18
	.4byte	.LASF326
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
	.4byte	.LASF2
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x6
	.4byte	.LASF8
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x72
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x85
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x98
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0xe
	.4byte	0x5a
	.4byte	0xbd
	.uleb128 0xf
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0x1a
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xeb
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xcc
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x3
	.byte	0x21
	.byte	0x1
	.4byte	0x110
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x3
	.byte	0x24
	.byte	0x2
	.4byte	0xf7
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x3
	.byte	0x2a
	.byte	0x1
	.4byte	0x135
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0
	.uleb128 0x1b
	.string	"SET"
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x3
	.byte	0x2d
	.byte	0x2
	.4byte	0x11c
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x3
	.byte	0x7c
	.byte	0xf
	.4byte	0xc4
	.uleb128 0xa
	.4byte	0x141
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.byte	0x8e
	.4byte	0x18b
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x8f
	.4byte	0x79
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x90
	.4byte	0x79
	.byte	0x1
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x91
	.4byte	0x79
	.byte	0x1
	.byte	0xb
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x92
	.4byte	0x79
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x4
	.byte	0x93
	.byte	0x2
	.4byte	0x152
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x42
	.byte	0xe
	.4byte	0x1b0
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x5
	.byte	0x45
	.byte	0x2
	.4byte	0x197
	.uleb128 0xd
	.byte	0x54
	.byte	0x6
	.byte	0x39
	.4byte	0x56d
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3a
	.byte	0xd
	.4byte	0x5a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3b
	.byte	0xd
	.4byte	0x5a
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x6
	.byte	0x3c
	.byte	0xd
	.4byte	0x5a
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x6
	.byte	0x3d
	.byte	0xd
	.4byte	0x5a
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x6
	.byte	0x3e
	.byte	0xd
	.4byte	0x5a
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x6
	.byte	0x3f
	.byte	0xd
	.4byte	0x5a
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x6
	.byte	0x40
	.byte	0xd
	.4byte	0x5a
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x6
	.byte	0x41
	.byte	0xd
	.4byte	0x5a
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x6
	.byte	0x42
	.byte	0xd
	.4byte	0x5a
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x6
	.byte	0x43
	.byte	0xd
	.4byte	0x5a
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x6
	.byte	0x44
	.byte	0xd
	.4byte	0x5a
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x6
	.byte	0x45
	.byte	0xd
	.4byte	0x5a
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x6
	.byte	0x46
	.byte	0xd
	.4byte	0x5a
	.byte	0xc
	.uleb128 0x1c
	.string	"mid"
	.byte	0x6
	.byte	0x47
	.byte	0xd
	.4byte	0x5a
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x6
	.byte	0x48
	.byte	0xe
	.4byte	0x66
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x6
	.byte	0x49
	.byte	0xd
	.4byte	0x5a
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x6
	.byte	0x4a
	.byte	0xd
	.4byte	0x5a
	.byte	0x11
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x6
	.byte	0x4b
	.byte	0xd
	.4byte	0x5a
	.byte	0x12
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x6
	.byte	0x4c
	.byte	0xd
	.4byte	0x5a
	.byte	0x13
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x6
	.byte	0x4d
	.byte	0xd
	.4byte	0x5a
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x6
	.byte	0x4e
	.byte	0xd
	.4byte	0x5a
	.byte	0x15
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x6
	.byte	0x4f
	.byte	0xd
	.4byte	0x5a
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x6
	.byte	0x50
	.byte	0xd
	.4byte	0x5a
	.byte	0x17
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x6
	.byte	0x51
	.byte	0xd
	.4byte	0x5a
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x6
	.byte	0x52
	.byte	0xd
	.4byte	0x5a
	.byte	0x19
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x6
	.byte	0x53
	.byte	0xd
	.4byte	0x5a
	.byte	0x1a
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x6
	.byte	0x54
	.byte	0xd
	.4byte	0x5a
	.byte	0x1b
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x6
	.byte	0x55
	.byte	0xd
	.4byte	0x5a
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x6
	.byte	0x56
	.byte	0xd
	.4byte	0x5a
	.byte	0x1d
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x6
	.byte	0x57
	.byte	0xd
	.4byte	0x5a
	.byte	0x1e
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x6
	.byte	0x58
	.byte	0xd
	.4byte	0x5a
	.byte	0x1f
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.4byte	0x5a
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x6
	.byte	0x5a
	.byte	0xd
	.4byte	0x5a
	.byte	0x21
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x6
	.byte	0x5b
	.byte	0xd
	.4byte	0x5a
	.byte	0x22
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x6
	.byte	0x5c
	.byte	0xd
	.4byte	0x5a
	.byte	0x23
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0x6
	.byte	0x5d
	.byte	0xd
	.4byte	0x5a
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0x6
	.byte	0x5e
	.byte	0xd
	.4byte	0x5a
	.byte	0x25
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x6
	.byte	0x5f
	.byte	0xd
	.4byte	0x5a
	.byte	0x26
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x6
	.byte	0x60
	.byte	0xd
	.4byte	0x5a
	.byte	0x27
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x6
	.byte	0x61
	.byte	0xd
	.4byte	0x5a
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0x6
	.byte	0x62
	.byte	0xd
	.4byte	0x5a
	.byte	0x29
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0x6
	.byte	0x63
	.byte	0xd
	.4byte	0x5a
	.byte	0x2a
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0x6
	.byte	0x64
	.byte	0xd
	.4byte	0x5a
	.byte	0x2b
	.uleb128 0x2
	.4byte	.LASF78
	.byte	0x6
	.byte	0x65
	.byte	0xd
	.4byte	0x5a
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x6
	.byte	0x66
	.byte	0xd
	.4byte	0x5a
	.byte	0x2d
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0x6
	.byte	0x67
	.byte	0xd
	.4byte	0x5a
	.byte	0x2e
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0x6
	.byte	0x68
	.byte	0xd
	.4byte	0x5a
	.byte	0x2f
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0x6
	.byte	0x69
	.byte	0xd
	.4byte	0x5a
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0x6
	.byte	0x6a
	.byte	0xd
	.4byte	0x5a
	.byte	0x31
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0x6
	.byte	0x6b
	.byte	0xd
	.4byte	0x5a
	.byte	0x32
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0x6
	.byte	0x6c
	.byte	0xd
	.4byte	0x5a
	.byte	0x33
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0x6
	.byte	0x6d
	.byte	0xd
	.4byte	0xad
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x6
	.byte	0x6e
	.byte	0xd
	.4byte	0xad
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0x6
	.byte	0x6f
	.byte	0xd
	.4byte	0x5a
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0x6
	.byte	0x70
	.byte	0xd
	.4byte	0x5a
	.byte	0x3d
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0x6
	.byte	0x71
	.byte	0xd
	.4byte	0x5a
	.byte	0x3e
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0x6
	.byte	0x72
	.byte	0xd
	.4byte	0x5a
	.byte	0x3f
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0x6
	.byte	0x73
	.byte	0xd
	.4byte	0x5a
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0x6
	.byte	0x74
	.byte	0xd
	.4byte	0x5a
	.byte	0x41
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0x6
	.byte	0x75
	.byte	0xd
	.4byte	0x5a
	.byte	0x42
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0x6
	.byte	0x76
	.byte	0xd
	.4byte	0x5a
	.byte	0x43
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0x6
	.byte	0x77
	.byte	0xd
	.4byte	0x5a
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0x6
	.byte	0x78
	.byte	0xd
	.4byte	0x5a
	.byte	0x45
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0x6
	.byte	0x79
	.byte	0xd
	.4byte	0x5a
	.byte	0x46
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0x6
	.byte	0x7a
	.byte	0xd
	.4byte	0x5a
	.byte	0x47
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0x6
	.byte	0x7b
	.byte	0xe
	.4byte	0x66
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0x6
	.byte	0x7c
	.byte	0xe
	.4byte	0x66
	.byte	0x4a
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0x6
	.byte	0x7d
	.byte	0xe
	.4byte	0x66
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0x6
	.byte	0x7e
	.byte	0xe
	.4byte	0x66
	.byte	0x4e
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0x6
	.byte	0x7f
	.byte	0xe
	.4byte	0x66
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0x6
	.byte	0x80
	.byte	0xd
	.4byte	0x5a
	.byte	0x52
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0x6
	.byte	0x81
	.byte	0xd
	.4byte	0x5a
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.4byte	.LASF107
	.byte	0x6
	.byte	0x82
	.byte	0x1b
	.4byte	0x1bc
	.uleb128 0xd
	.byte	0x2
	.byte	0x7
	.byte	0x3b
	.4byte	0x59c
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0x7
	.byte	0x3c
	.byte	0x11
	.4byte	0x110
	.byte	0
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0x7
	.byte	0x3d
	.byte	0x11
	.4byte	0x110
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF110
	.byte	0x7
	.byte	0x3e
	.byte	0x2
	.4byte	0x579
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x7
	.byte	0x43
	.byte	0xe
	.4byte	0x5c1
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF113
	.byte	0x7
	.byte	0x46
	.byte	0x2
	.4byte	0x5a8
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x7
	.byte	0x4b
	.byte	0xe
	.4byte	0x5ec
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF117
	.byte	0x7
	.byte	0x4f
	.byte	0x2
	.4byte	0x5cd
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x7
	.byte	0x54
	.byte	0xe
	.4byte	0x611
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF120
	.byte	0x7
	.byte	0x57
	.byte	0x2
	.4byte	0x5f8
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x7
	.byte	0x5c
	.byte	0xe
	.4byte	0x636
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF123
	.byte	0x7
	.byte	0x5f
	.byte	0x2
	.4byte	0x61d
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x7
	.byte	0x64
	.byte	0xe
	.4byte	0x661
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF127
	.byte	0x7
	.byte	0x68
	.byte	0x2
	.4byte	0x642
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x7
	.byte	0x6d
	.byte	0xe
	.4byte	0x686
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF130
	.byte	0x7
	.byte	0x70
	.byte	0x2
	.4byte	0x66d
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x7
	.byte	0x75
	.byte	0xe
	.4byte	0x6b1
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF134
	.byte	0x7
	.byte	0x79
	.byte	0x2
	.4byte	0x692
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x7
	.byte	0x7e
	.byte	0xe
	.4byte	0x6d6
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF137
	.byte	0x7
	.byte	0x81
	.byte	0x2
	.4byte	0x6bd
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x7
	.byte	0x86
	.byte	0xe
	.4byte	0x6fb
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF140
	.byte	0x7
	.byte	0x89
	.byte	0x2
	.4byte	0x6e2
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x7
	.byte	0x8e
	.byte	0xe
	.4byte	0x73e
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF144
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.4byte	.LASF148
	.byte	0x7
	.byte	0x96
	.byte	0x2
	.4byte	0x707
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x7
	.byte	0x9b
	.byte	0xe
	.4byte	0x787
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF157
	.byte	0x7
	.byte	0xa4
	.byte	0x2
	.4byte	0x74a
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x7
	.byte	0xa9
	.byte	0xe
	.4byte	0x7b2
	.uleb128 0x1
	.4byte	.LASF158
	.byte	0
	.uleb128 0x1
	.4byte	.LASF159
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF160
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF161
	.byte	0x7
	.byte	0xad
	.byte	0x2
	.4byte	0x793
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x7
	.byte	0xb2
	.byte	0xe
	.4byte	0x7e3
	.uleb128 0x1
	.4byte	.LASF162
	.byte	0
	.uleb128 0x1
	.4byte	.LASF163
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF164
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF165
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF166
	.byte	0x7
	.byte	0xb7
	.byte	0x2
	.4byte	0x7be
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x7
	.byte	0xbc
	.byte	0xe
	.4byte	0x85c
	.uleb128 0x1
	.4byte	.LASF167
	.byte	0
	.uleb128 0x1
	.4byte	.LASF168
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF169
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF170
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF171
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF173
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF174
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF175
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF176
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF177
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF178
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF179
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF180
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF181
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF182
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	.LASF183
	.byte	0x7
	.byte	0xcd
	.byte	0x2
	.4byte	0x7ef
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x7
	.byte	0xd2
	.byte	0xe
	.4byte	0x88d
	.uleb128 0x1
	.4byte	.LASF184
	.byte	0
	.uleb128 0x1
	.4byte	.LASF185
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF186
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF187
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF188
	.byte	0x7
	.byte	0xd7
	.byte	0x2
	.4byte	0x868
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.byte	0xdc
	.4byte	0x8d6
	.uleb128 0x2
	.4byte	.LASF189
	.byte	0x7
	.byte	0xdd
	.byte	0xd
	.4byte	0x5a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF190
	.byte	0x7
	.byte	0xde
	.byte	0xd
	.4byte	0x5a
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF191
	.byte	0x7
	.byte	0xdf
	.byte	0xd
	.4byte	0x5a
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF192
	.byte	0x7
	.byte	0xe0
	.byte	0xd
	.4byte	0x5a
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF193
	.byte	0x7
	.byte	0xe1
	.byte	0x2
	.4byte	0x899
	.uleb128 0xd
	.byte	0x14
	.byte	0x7
	.byte	0xe6
	.4byte	0x946
	.uleb128 0x2
	.4byte	.LASF194
	.byte	0x7
	.byte	0xe7
	.byte	0xd
	.4byte	0x5a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF195
	.byte	0x7
	.byte	0xe8
	.byte	0xe
	.4byte	0x79
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF196
	.byte	0x7
	.byte	0xe9
	.byte	0xd
	.4byte	0x5a
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF197
	.byte	0x7
	.byte	0xea
	.byte	0x1f
	.4byte	0x787
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF198
	.byte	0x7
	.byte	0xeb
	.byte	0x19
	.4byte	0x946
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF199
	.byte	0x7
	.byte	0xec
	.byte	0x14
	.4byte	0x88d
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF200
	.byte	0x7
	.byte	0xed
	.byte	0x18
	.4byte	0x85c
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.4byte	0x56d
	.uleb128 0x6
	.4byte	.LASF201
	.byte	0x7
	.byte	0xee
	.byte	0x2
	.4byte	0x8e2
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x8
	.byte	0x4b
	.byte	0xe
	.4byte	0x988
	.uleb128 0x1
	.4byte	.LASF202
	.byte	0
	.uleb128 0x1
	.4byte	.LASF203
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF204
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF205
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF206
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF207
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.4byte	.LASF208
	.byte	0x8
	.byte	0x52
	.byte	0x2
	.4byte	0x957
	.uleb128 0x1d
	.byte	0x7
	.byte	0x1
	.4byte	0x2b
	.byte	0x8
	.2byte	0x121
	.byte	0xe
	.4byte	0x9ce
	.uleb128 0x1
	.4byte	.LASF209
	.byte	0
	.uleb128 0x1
	.4byte	.LASF210
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF211
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF212
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF213
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF215
	.byte	0x6
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF216
	.byte	0x8
	.2byte	0x129
	.byte	0x2
	.4byte	0x994
	.uleb128 0xe
	.4byte	0x14d
	.4byte	0x9eb
	.uleb128 0xf
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF217
	.byte	0x41
	.byte	0x1b
	.4byte	0x9db
	.uleb128 0x5
	.byte	0x3
	.4byte	hbnInt0CbfArra
	.uleb128 0xe
	.4byte	0x14d
	.4byte	0xa0c
	.uleb128 0xf
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF218
	.byte	0x42
	.byte	0x1b
	.4byte	0x9fc
	.uleb128 0x5
	.byte	0x3
	.4byte	hbnInt1CbfArra
	.uleb128 0x16
	.4byte	.LASF224
	.byte	0x4
	.2byte	0x114
	.byte	0x9
	.4byte	0x5a
	.4byte	0xa39
	.uleb128 0x8
	.4byte	0x79
	.uleb128 0x8
	.4byte	0x5a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF219
	.byte	0x4
	.2byte	0x118
	.4byte	0xa4b
	.uleb128 0x8
	.4byte	0xa4b
	.byte	0
	.uleb128 0xa
	.4byte	0x18b
	.uleb128 0x13
	.4byte	.LASF220
	.byte	0x3
	.byte	0x88
	.4byte	0xa61
	.uleb128 0x8
	.4byte	0x79
	.byte	0
	.uleb128 0x13
	.4byte	.LASF221
	.byte	0x3
	.byte	0x89
	.4byte	0xa72
	.uleb128 0x8
	.4byte	0x79
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF327
	.byte	0x6
	.byte	0xa9
	.byte	0x6
	.uleb128 0x13
	.4byte	.LASF222
	.byte	0x6
	.byte	0xae
	.4byte	0xa8b
	.uleb128 0x8
	.4byte	0x946
	.byte	0
	.uleb128 0x17
	.4byte	.LASF223
	.byte	0x5
	.2byte	0x126
	.4byte	0xa9d
	.uleb128 0x8
	.4byte	0x1b0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF225
	.byte	0x9
	.byte	0x50
	.byte	0xd
	.4byte	0xeb
	.4byte	0xabd
	.uleb128 0x8
	.4byte	0x79
	.uleb128 0x8
	.4byte	0xabd
	.uleb128 0x8
	.4byte	0x79
	.byte	0
	.uleb128 0xa
	.4byte	0x5a
	.uleb128 0x21
	.4byte	.LASF328
	.byte	0x6
	.byte	0xb3
	.byte	0xd
	.4byte	0xeb
	.uleb128 0x16
	.4byte	.LASF226
	.byte	0x8
	.2byte	0x22f
	.byte	0xd
	.4byte	0xeb
	.4byte	0xaea
	.uleb128 0x8
	.4byte	0x9ce
	.uleb128 0x8
	.4byte	0x988
	.byte	0
	.uleb128 0xc
	.4byte	.LASF228
	.2byte	0x611
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb23
	.uleb128 0x14
	.string	"cfg"
	.2byte	0x611
	.byte	0x2f
	.4byte	0xb23
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x613
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	0x8d6
	.uleb128 0x4
	.4byte	.LASF229
	.2byte	0x5fa
	.byte	0x33
	.4byte	0xeb
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb61
	.uleb128 0x5
	.4byte	.LASF230
	.2byte	0x5fa
	.byte	0x59
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x5fc
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF231
	.2byte	0x5df
	.byte	0x33
	.4byte	0xeb
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc7
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x5df
	.byte	0x56
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x5
	.4byte	.LASF233
	.2byte	0x5df
	.byte	0x69
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x5
	.4byte	.LASF234
	.2byte	0x5df
	.byte	0x7d
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x5
	.4byte	.LASF235
	.2byte	0x5df
	.byte	0x8b
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x5e1
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF236
	.2byte	0x5c8
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc00
	.uleb128 0x5
	.4byte	.LASF237
	.2byte	0x5c8
	.byte	0x39
	.4byte	0x7e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x5
	.4byte	.LASF238
	.2byte	0x5c8
	.byte	0x53
	.4byte	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF239
	.2byte	0x5b5
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc39
	.uleb128 0x5
	.4byte	.LASF237
	.2byte	0x5b5
	.byte	0x39
	.4byte	0x7b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x5
	.4byte	.LASF238
	.2byte	0x5b5
	.byte	0x53
	.4byte	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF240
	.2byte	0x5a1
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc63
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x5a3
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF241
	.2byte	0x58e
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8d
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x590
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF242
	.2byte	0x57b
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb7
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x57d
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF243
	.2byte	0x568
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce1
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x56a
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF244
	.2byte	0x555
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd0b
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x557
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF245
	.2byte	0x542
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd35
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x544
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF246
	.2byte	0x52e
	.byte	0x33
	.4byte	0xeb
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd6e
	.uleb128 0x5
	.4byte	.LASF247
	.2byte	0x52e
	.byte	0x4f
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x530
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF248
	.2byte	0x519
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xda7
	.uleb128 0x5
	.4byte	.LASF249
	.2byte	0x519
	.byte	0x2b
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x51b
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF250
	.2byte	0x501
	.byte	0x33
	.4byte	0xeb
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde0
	.uleb128 0x5
	.4byte	.LASF230
	.2byte	0x501
	.byte	0x4c
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x503
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF251
	.2byte	0x4e4
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe19
	.uleb128 0x5
	.4byte	.LASF252
	.2byte	0x4e4
	.byte	0x28
	.4byte	0x73e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x4e6
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF270
	.2byte	0x4d7
	.byte	0x9
	.4byte	0x5a
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF253
	.2byte	0x4c0
	.byte	0xd
	.4byte	0x135
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe68
	.uleb128 0x5
	.4byte	.LASF252
	.2byte	0x4c0
	.byte	0x2c
	.4byte	0x73e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x4c2
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF254
	.2byte	0x4ad
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe92
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x4af
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF255
	.2byte	0x497
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xecb
	.uleb128 0x5
	.4byte	.LASF256
	.2byte	0x497
	.byte	0x3b
	.4byte	0x787
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x499
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF257
	.2byte	0x484
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef5
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x486
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF258
	.2byte	0x46a
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf3d
	.uleb128 0x5
	.4byte	.LASF259
	.2byte	0x46a
	.byte	0x2d
	.4byte	0xf3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF260
	.2byte	0x46a
	.byte	0x3e
	.4byte	0xf3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x46c
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	0x79
	.uleb128 0x4
	.4byte	.LASF261
	.2byte	0x44d
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa8
	.uleb128 0x5
	.4byte	.LASF262
	.2byte	0x44d
	.byte	0x36
	.4byte	0x6fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x5
	.4byte	.LASF263
	.2byte	0x44d
	.byte	0x45
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF264
	.2byte	0x44d
	.byte	0x59
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF265
	.2byte	0x44d
	.byte	0x6d
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x44f
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF266
	.2byte	0x436
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfd2
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x438
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF267
	.2byte	0x423
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xffc
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x425
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF268
	.2byte	0x414
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1026
	.uleb128 0x5
	.4byte	.LASF269
	.2byte	0x414
	.byte	0x2a
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF271
	.2byte	0x407
	.byte	0xa
	.4byte	0x79
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF272
	.2byte	0x3f8
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1066
	.uleb128 0x5
	.4byte	.LASF273
	.2byte	0x3f8
	.byte	0x2a
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF274
	.2byte	0x3eb
	.byte	0xa
	.4byte	0x79
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF275
	.2byte	0x3ce
	.byte	0x3a
	.4byte	0xeb
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10b5
	.uleb128 0x3
	.4byte	.LASF276
	.2byte	0x3d0
	.byte	0x1f
	.4byte	0x18b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x3d1
	.byte	0xd
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF277
	.2byte	0x3b8
	.byte	0x3a
	.4byte	0xeb
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10df
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x3ba
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF278
	.2byte	0x39f
	.byte	0x3a
	.4byte	0xeb
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1109
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x3a1
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF279
	.2byte	0x388
	.byte	0x3a
	.4byte	0xeb
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1133
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x38a
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF280
	.2byte	0x36e
	.byte	0x3a
	.4byte	0xeb
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x115d
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x370
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF281
	.2byte	0x358
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1187
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x35a
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF282
	.2byte	0x344
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11b1
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x346
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF283
	.2byte	0x31e
	.byte	0x3a
	.4byte	0xeb
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11f9
	.uleb128 0x5
	.4byte	.LASF284
	.2byte	0x31e
	.byte	0x61
	.4byte	0x6b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x320
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF285
	.2byte	0x321
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF286
	.2byte	0x2fa
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1241
	.uleb128 0x5
	.4byte	.LASF287
	.2byte	0x2fa
	.byte	0x34
	.4byte	0x686
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x2fc
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF285
	.2byte	0x2fd
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF288
	.2byte	0x2e5
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x127a
	.uleb128 0x5
	.4byte	.LASF289
	.2byte	0x2e5
	.byte	0x34
	.4byte	0x6d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x2e7
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF290
	.2byte	0x2cc
	.byte	0x3a
	.4byte	0xeb
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12b3
	.uleb128 0x5
	.4byte	.LASF291
	.2byte	0x2cc
	.byte	0x57
	.4byte	0x661
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x2ce
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF292
	.2byte	0x2b3
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12ec
	.uleb128 0x5
	.4byte	.LASF200
	.2byte	0x2b3
	.byte	0x37
	.4byte	0x85c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x2b5
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF293
	.2byte	0x29d
	.byte	0x33
	.4byte	0xeb
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1325
	.uleb128 0x5
	.4byte	.LASF200
	.2byte	0x29d
	.byte	0x5d
	.4byte	0x85c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x29f
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF294
	.2byte	0x285
	.byte	0x33
	.4byte	0xeb
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x135e
	.uleb128 0x5
	.4byte	.LASF200
	.2byte	0x285
	.byte	0x5c
	.4byte	0x85c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x287
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF295
	.2byte	0x26d
	.byte	0x33
	.4byte	0xeb
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1397
	.uleb128 0x5
	.4byte	.LASF200
	.2byte	0x26d
	.byte	0x5d
	.4byte	0x85c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x26f
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF296
	.2byte	0x24f
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13ee
	.uleb128 0x5
	.4byte	.LASF230
	.2byte	0x24f
	.byte	0x28
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x5
	.4byte	.LASF297
	.2byte	0x24f
	.byte	0x42
	.4byte	0x611
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x5
	.4byte	.LASF298
	.2byte	0x24f
	.byte	0x5e
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x251
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF299
	.2byte	0x240
	.byte	0xd
	.4byte	0x135
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF300
	.2byte	0x22f
	.byte	0xa
	.4byte	0x66
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x142e
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x231
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF301
	.2byte	0x21a
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1467
	.uleb128 0x5
	.4byte	.LASF302
	.2byte	0x21a
	.byte	0x2b
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x21c
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF303
	.2byte	0x209
	.byte	0xa
	.4byte	0x66
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1491
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x20b
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF304
	.2byte	0x1f4
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14ca
	.uleb128 0x5
	.4byte	.LASF297
	.2byte	0x1f4
	.byte	0x2c
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x1f6
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF305
	.2byte	0x1df
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1503
	.uleb128 0x14
	.string	"hpf"
	.2byte	0x1df
	.byte	0x2e
	.4byte	0x5ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x1e1
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF306
	.2byte	0x1ca
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x153c
	.uleb128 0x14
	.string	"lpf"
	.2byte	0x1ca
	.byte	0x2e
	.4byte	0x5c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x1cc
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF307
	.2byte	0x1a4
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15a2
	.uleb128 0x5
	.4byte	.LASF308
	.2byte	0x1a4
	.byte	0x36
	.4byte	0x15a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x1a6
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF309
	.2byte	0x1a7
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF310
	.2byte	0x1a8
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF311
	.2byte	0x1a9
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	0x59c
	.uleb128 0x4
	.4byte	.LASF312
	.2byte	0x191
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15d1
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x193
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF313
	.2byte	0x17e
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15fb
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x180
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF314
	.2byte	0x16a
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1625
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x16c
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF315
	.2byte	0x13b
	.byte	0xd
	.4byte	0xeb
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1690
	.uleb128 0x5
	.4byte	.LASF316
	.2byte	0x13b
	.byte	0x33
	.4byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x5
	.4byte	.LASF317
	.2byte	0x13b
	.byte	0x57
	.4byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0x5
	.4byte	.LASF318
	.2byte	0x13c
	.byte	0x1b
	.4byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -67
	.uleb128 0x5
	.4byte	.LASF319
	.2byte	0x13c
	.byte	0x3f
	.4byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x22
	.string	"tmp"
	.byte	0x1
	.2byte	0x13e
	.byte	0xe
	.4byte	0x1690
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xe
	.4byte	0x79
	.4byte	0x16a0
	.uleb128 0xf
	.4byte	0xa6
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.4byte	.LASF320
	.2byte	0x11d
	.byte	0x33
	.4byte	0xeb
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16ca
	.uleb128 0x3
	.4byte	.LASF227
	.2byte	0x11f
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF322
	.byte	0xbc
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1717
	.uleb128 0x12
	.4byte	.LASF321
	.byte	0xbc
	.byte	0x3f
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x12
	.4byte	.LASF200
	.byte	0xbd
	.byte	0x26
	.4byte	0x85c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x12
	.4byte	.LASF199
	.byte	0xbd
	.byte	0x4f
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0xb
	.4byte	.LASF227
	.byte	0xbf
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF323
	.byte	0x9b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x174a
	.uleb128 0x12
	.4byte	.LASF198
	.byte	0x9b
	.byte	0x55
	.4byte	0x946
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0xb
	.4byte	.LASF324
	.byte	0x9d
	.byte	0x18
	.4byte	0x56d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x15
	.4byte	.LASF325
	.byte	0x67
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x179a
	.uleb128 0x23
	.string	"cfg"
	.byte	0x1
	.byte	0x67
	.byte	0x4d
	.4byte	0x179a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xb
	.4byte	.LASF259
	.byte	0x69
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.4byte	.LASF260
	.byte	0x69
	.byte	0x17
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"val"
	.byte	0x1
	.byte	0x6a
	.byte	0xe
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xa
	.4byte	0x94b
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
	.uleb128 0x6
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.sleb128 44
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
	.uleb128 0x16
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
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x34
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x34
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1f4
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF200:
	.string	"ldoLevel"
.LASF26:
	.string	"BL_Sts_Type"
.LASF5:
	.string	"long int"
.LASF274:
	.string	"HBN_Get_Status_Flag"
.LASF19:
	.string	"ERROR"
.LASF159:
	.string	"HBN_OUT0_INT_GPIO8"
.LASF308:
	.string	"pirIntCfg"
.LASF267:
	.string	"HBN_Clear_RTC_Counter"
.LASF144:
	.string	"HBN_INT_PIR"
.LASF78:
	.string	"qeBit"
.LASF282:
	.string	"HBN_Set_HRAM_slp"
.LASF33:
	.string	"SF_CTRL_OWNER_SAHB"
.LASF318:
	.string	"apXtalType"
.LASF138:
	.string	"HBN_RTC_INT_DELAY_32T"
.LASF183:
	.string	"HBN_LDO_LEVEL_Type"
.LASF324:
	.string	"bhFlashCfg"
.LASF325:
	.string	"HBN_Mode_Enter"
.LASF322:
	.string	"HBN_Enable"
.LASF76:
	.string	"busyIndex"
.LASF234:
	.string	"dlyEn"
.LASF75:
	.string	"qeIndex"
.LASF44:
	.string	"jedecIdCmd"
.LASF181:
	.string	"HBN_LDO_LEVEL_1P30V"
.LASF319:
	.string	"fclkDiv"
.LASF202:
	.string	"GLB_SYS_CLK_RC32M"
.LASF52:
	.string	"blk32EraseCmd"
.LASF58:
	.string	"fastReadCmd"
.LASF327:
	.string	"SFlash_Powerdown"
.LASF72:
	.string	"qpiPageProgramCmd"
.LASF43:
	.string	"resetCreadCmdSize"
.LASF264:
	.string	"compValHigh"
.LASF194:
	.string	"useXtal32k"
.LASF109:
	.string	"highIntEn"
.LASF168:
	.string	"HBN_LDO_LEVEL_0P65V"
.LASF15:
	.string	"unsigned int"
.LASF99:
	.string	"deBurstWrapData"
.LASF316:
	.string	"npXtalType"
.LASF214:
	.string	"GLB_PLL_XTAL_26M"
.LASF56:
	.string	"qpageProgramCmd"
.LASF37:
	.string	"cReadSupport"
.LASF237:
	.string	"intType"
.LASF208:
	.string	"GLB_SYS_CLK_Type"
.LASF156:
	.string	"HBN_GPIO_INT_TRIGGER_ASYNC_HIGH_LEVEL"
.LASF174:
	.string	"HBN_LDO_LEVEL_0P95V"
.LASF307:
	.string	"HBN_PIR_INT_Config"
.LASF302:
	.string	"interval"
.LASF112:
	.string	"HBN_PIR_LPF_DIV2"
.LASF4:
	.string	"short int"
.LASF192:
	.string	"enablePorInBor"
.LASF203:
	.string	"GLB_SYS_CLK_XTAL"
.LASF118:
	.string	"HBN_BOR_THRES_2P0V"
.LASF110:
	.string	"HBN_PIR_INT_CFG_Type"
.LASF298:
	.string	"mode"
.LASF317:
	.string	"bclkDiv"
.LASF251:
	.string	"HBN_Clear_IRQ"
.LASF113:
	.string	"HBN_PIR_LPF_Type"
.LASF261:
	.string	"HBN_Set_RTC_Timer"
.LASF126:
	.string	"HBN_32K_DIG"
.LASF162:
	.string	"HBN_OUT1_INT_PIR"
.LASF244:
	.string	"HBN_Disable_AComp0_IRQ"
.LASF225:
	.string	"XIP_SFlash_Read_Via_Cache_Need_Lock"
.LASF69:
	.string	"frQioDmyClk"
.LASF60:
	.string	"qpiFastReadCmd"
.LASF258:
	.string	"HBN_Get_RTC_Timer_Val"
.LASF289:
	.string	"clkSel"
.LASF204:
	.string	"GLB_SYS_CLK_PLL48M"
.LASF132:
	.string	"HBN_ROOT_CLK_XTAL"
.LASF176:
	.string	"HBN_LDO_LEVEL_1P05V"
.LASF205:
	.string	"GLB_SYS_CLK_PLL120M"
.LASF216:
	.string	"GLB_PLL_XTAL_Type"
.LASF21:
	.string	"BL_Err_Type"
.LASF11:
	.string	"uint32_t"
.LASF195:
	.string	"sleepTime"
.LASF243:
	.string	"HBN_Enable_AComp1_IRQ"
.LASF278:
	.string	"HBN_Power_On_RC32K"
.LASF224:
	.string	"EF_Ctrl_Get_Trim_Parity"
.LASF77:
	.string	"wrEnableBit"
.LASF280:
	.string	"HBN_Power_On_Xtal_32K"
.LASF211:
	.string	"GLB_PLL_XTAL_32M"
.LASF81:
	.string	"wrEnableReadRegLen"
.LASF299:
	.string	"HBN_Get_BOR_OUT_State"
.LASF14:
	.string	"long long unsigned int"
.LASF120:
	.string	"HBN_BOR_THRES_Type"
.LASF70:
	.string	"qpiFastReadQioCmd"
.LASF51:
	.string	"sectorEraseCmd"
.LASF57:
	.string	"qppAddrMode"
.LASF247:
	.string	"maskVal"
.LASF328:
	.string	"SFlash_Cache_Flush"
.LASF252:
	.string	"irqType"
.LASF284:
	.string	"rootClk"
.LASF48:
	.string	"sectorSize"
.LASF255:
	.string	"HBN_GPIO_INT_Enable"
.LASF131:
	.string	"HBN_ROOT_CLK_RC32M"
.LASF240:
	.string	"HBN_Disable_BOR_IRQ"
.LASF29:
	.string	"trimRc32kCodeFrExtParity"
.LASF177:
	.string	"HBN_LDO_LEVEL_1P10V"
.LASF293:
	.string	"HBN_Set_Ldo11_Soc_Vout"
.LASF217:
	.string	"hbnInt0CbfArra"
.LASF121:
	.string	"HBN_BOR_MODE_POR_INDEPENDENT"
.LASF91:
	.string	"cRExit"
.LASF20:
	.string	"TIMEOUT"
.LASF17:
	.string	"char"
.LASF55:
	.string	"pageProgramCmd"
.LASF146:
	.string	"HBN_INT_ACOMP0"
.LASF147:
	.string	"HBN_INT_ACOMP1"
.LASF98:
	.string	"deBurstWrapDataMode"
.LASF312:
	.string	"HBN_PIR_Disable"
.LASF230:
	.string	"enable"
.LASF53:
	.string	"blk64EraseCmd"
.LASF197:
	.string	"gpioTrigType"
.LASF50:
	.string	"chipEraseCmd"
.LASF236:
	.string	"HBN_Out1_Callback_Install"
.LASF272:
	.string	"HBN_Set_Status_Flag"
.LASF187:
	.string	"HBN_LEVEL_3"
.LASF62:
	.string	"fastReadDoCmd"
.LASF101:
	.string	"timeE32k"
.LASF154:
	.string	"HBN_GPIO_INT_TRIGGER_ASYNC_RISING_EDGE"
.LASF108:
	.string	"lowIntEn"
.LASF220:
	.string	"BL602_Delay_US"
.LASF89:
	.string	"exitQpi"
.LASF30:
	.string	"trimRc32kExtCodeEn"
.LASF275:
	.string	"HBN_Trim_RC32K"
.LASF38:
	.string	"clkDelay"
.LASF140:
	.string	"HBN_RTC_INT_Delay_Type"
.LASF228:
	.string	"HBN_Set_BOR_Cfg"
.LASF227:
	.string	"tmpVal"
.LASF129:
	.string	"HBN_XCLK_CLK_XTAL"
.LASF160:
	.string	"HBN_OUT0_INT_RTC"
.LASF155:
	.string	"HBN_GPIO_INT_TRIGGER_ASYNC_LOW_LEVEL"
.LASF182:
	.string	"HBN_LDO_LEVEL_1P35V"
.LASF41:
	.string	"resetCmd"
.LASF171:
	.string	"HBN_LDO_LEVEL_0P80V"
.LASF294:
	.string	"HBN_Set_Ldo11_Rt_Vout"
.LASF285:
	.string	"tmpVal2"
.LASF314:
	.string	"HBN_Disable"
.LASF35:
	.string	"SF_Ctrl_Owner_Type"
.LASF119:
	.string	"HBN_BOR_THRES_2P4V"
.LASF105:
	.string	"pdDelay"
.LASF184:
	.string	"HBN_LEVEL_0"
.LASF185:
	.string	"HBN_LEVEL_1"
.LASF186:
	.string	"HBN_LEVEL_2"
.LASF18:
	.string	"SUCCESS"
.LASF249:
	.string	"padCfg"
.LASF265:
	.string	"compMode"
.LASF215:
	.string	"GLB_PLL_XTAL_RC32M"
.LASF309:
	.string	"bit4"
.LASF22:
	.string	"DISABLE"
.LASF295:
	.string	"HBN_Set_Ldo11_Aon_Vout"
.LASF222:
	.string	"SFlash_Reset_Continue_Read"
.LASF301:
	.string	"HBN_Set_PIR_Interval"
.LASF286:
	.string	"HBN_Set_XCLK_CLK_Sel"
.LASF170:
	.string	"HBN_LDO_LEVEL_0P75V"
.LASF65:
	.string	"frDioDmyClk"
.LASF232:
	.string	"pupdEn"
.LASF321:
	.string	"aGPIOIeCfg"
.LASF223:
	.string	"SF_Ctrl_Set_Owner"
.LASF8:
	.string	"uint8_t"
.LASF287:
	.string	"xClk"
.LASF46:
	.string	"qpiJedecIdCmd"
.LASF71:
	.string	"qpiFrQioDmyClk"
.LASF124:
	.string	"HBN_32K_RC"
.LASF281:
	.string	"HBN_Set_HRAM_Ret"
.LASF93:
	.string	"burstWrapCmdDmyClk"
.LASF310:
	.string	"bit5"
.LASF36:
	.string	"ioMode"
.LASF63:
	.string	"frDoDmyClk"
.LASF242:
	.string	"HBN_Disable_AComp1_IRQ"
.LASF122:
	.string	"HBN_BOR_MODE_POR_RELEVANT"
.LASF213:
	.string	"GLB_PLL_XTAL_40M"
.LASF291:
	.string	"clkType"
.LASF87:
	.string	"writeRegCmd"
.LASF6:
	.string	"long long int"
.LASF151:
	.string	"HBN_GPIO_INT_TRIGGER_SYNC_LOW_LEVEL"
.LASF141:
	.string	"HBN_INT_GPIO7"
.LASF142:
	.string	"HBN_INT_GPIO8"
.LASF83:
	.string	"qeReadRegLen"
.LASF68:
	.string	"fastReadQioCmd"
.LASF148:
	.string	"HBN_INT_Type"
.LASF212:
	.string	"GLB_PLL_XTAL_38P4M"
.LASF74:
	.string	"wrEnableIndex"
.LASF143:
	.string	"HBN_INT_RTC"
.LASF73:
	.string	"writeVregEnableCmd"
.LASF84:
	.string	"releasePowerDown"
.LASF90:
	.string	"cReadMode"
.LASF42:
	.string	"resetCreadCmd"
.LASF229:
	.string	"HBN_Set_Embedded_Flash_Pullup"
.LASF238:
	.string	"cbFun"
.LASF239:
	.string	"HBN_Out0_Callback_Install"
.LASF245:
	.string	"HBN_Enable_AComp0_IRQ"
.LASF218:
	.string	"hbnInt1CbfArra"
.LASF206:
	.string	"GLB_SYS_CLK_PLL160M"
.LASF305:
	.string	"HBN_PIR_HPF_Sel"
.LASF92:
	.string	"burstWrapCmd"
.LASF292:
	.string	"HBN_Set_Ldo11_All_Vout"
.LASF16:
	.string	"long double"
.LASF32:
	.string	"Efuse_Ana_RC32K_Trim_Type"
.LASF190:
	.string	"enableBorInt"
.LASF241:
	.string	"HBN_Enable_BOR_IRQ"
.LASF45:
	.string	"jedecIdCmdDmyClk"
.LASF28:
	.string	"trimRc32kCodeFrExt"
.LASF164:
	.string	"HBN_OUT1_INT_ACOMP0"
.LASF165:
	.string	"HBN_OUT1_INT_ACOMP1"
.LASF178:
	.string	"HBN_LDO_LEVEL_1P15V"
.LASF167:
	.string	"HBN_LDO_LEVEL_0P60V"
.LASF300:
	.string	"HBN_Get_PIR_Interval"
.LASF157:
	.string	"HBN_GPIO_INT_Trigger_Type"
.LASF276:
	.string	"trim"
.LASF271:
	.string	"HBN_Get_Wakeup_Addr"
.LASF153:
	.string	"HBN_GPIO_INT_TRIGGER_ASYNC_FALLING_EDGE"
.LASF104:
	.string	"timeCe"
.LASF111:
	.string	"HBN_PIR_LPF_DIV1"
.LASF323:
	.string	"HBN_Power_Down_Flash"
.LASF189:
	.string	"enableBor"
.LASF304:
	.string	"HBN_Set_PIR_Threshold"
.LASF266:
	.string	"HBN_Enable_RTC_Counter"
.LASF270:
	.string	"HBN_Get_Pin_Wakeup_Mode"
.LASF260:
	.string	"valHigh"
.LASF64:
	.string	"fastReadDioCmd"
.LASF96:
	.string	"deBurstWrapCmd"
.LASF9:
	.string	"uint16_t"
.LASF172:
	.string	"HBN_LDO_LEVEL_0P85V"
.LASF233:
	.string	"iesmtEn"
.LASF219:
	.string	"EF_Ctrl_Read_RC32K_Trim"
.LASF179:
	.string	"HBN_LDO_LEVEL_1P20V"
.LASF161:
	.string	"HBN_OUT0_INT_Type"
.LASF279:
	.string	"HBN_Power_Off_Xtal_32K"
.LASF296:
	.string	"HBN_Set_BOR_Config"
.LASF134:
	.string	"HBN_ROOT_CLK_Type"
.LASF303:
	.string	"HBN_Get_PIR_Threshold"
.LASF67:
	.string	"frQoDmyClk"
.LASF288:
	.string	"HBN_Set_UART_CLK_Sel"
.LASF263:
	.string	"compValLow"
.LASF114:
	.string	"HBN_PIR_HPF_METHOD0"
.LASF115:
	.string	"HBN_PIR_HPF_METHOD1"
.LASF116:
	.string	"HBN_PIR_HPF_METHOD2"
.LASF34:
	.string	"SF_CTRL_OWNER_IAHB"
.LASF102:
	.string	"timeE64k"
.LASF262:
	.string	"delay"
.LASF137:
	.string	"HBN_UART_CLK_Type"
.LASF158:
	.string	"HBN_OUT0_INT_GPIO7"
.LASF136:
	.string	"HBN_UART_CLK_160M"
.LASF311:
	.string	"bitVal"
.LASF198:
	.string	"flashCfg"
.LASF246:
	.string	"HBN_Pin_WakeUp_Mask"
.LASF106:
	.string	"qeData"
.LASF80:
	.string	"wrEnableWriteRegLen"
.LASF25:
	.string	"RESET"
.LASF273:
	.string	"flag"
.LASF61:
	.string	"qpiFrDmyClk"
.LASF107:
	.string	"SPI_Flash_Cfg_Type"
.LASF320:
	.string	"HBN_Reset"
.LASF313:
	.string	"HBN_PIR_Enable"
.LASF40:
	.string	"resetEnCmd"
.LASF27:
	.string	"intCallback_Type"
.LASF231:
	.string	"HBN_GPIO7_Dbg_Pull_Cfg"
.LASF23:
	.string	"ENABLE"
.LASF253:
	.string	"HBN_Get_INT_State"
.LASF152:
	.string	"HBN_GPIO_INT_TRIGGER_SYNC_HIGH_LEVEL"
.LASF12:
	.string	"long unsigned int"
.LASF128:
	.string	"HBN_XCLK_CLK_RC32M"
.LASF7:
	.string	"int32_t"
.LASF66:
	.string	"fastReadQoCmd"
.LASF209:
	.string	"GLB_PLL_XTAL_NONE"
.LASF290:
	.string	"HBN_32K_Sel"
.LASF135:
	.string	"HBN_UART_CLK_FCLK"
.LASF248:
	.string	"HBN_Aon_Pad_IeSmt_Cfg"
.LASF24:
	.string	"BL_Fun_Type"
.LASF127:
	.string	"HBN_32K_CLK_Type"
.LASF277:
	.string	"HBN_Power_Off_RC32K"
.LASF88:
	.string	"enterQpi"
.LASF59:
	.string	"frDmyClk"
.LASF173:
	.string	"HBN_LDO_LEVEL_0P90V"
.LASF103:
	.string	"timePagePgm"
.LASF2:
	.string	"unsigned char"
.LASF199:
	.string	"hbnLevel"
.LASF256:
	.string	"gpioIntTrigType"
.LASF79:
	.string	"busyBit"
.LASF191:
	.string	"borThreshold"
.LASF82:
	.string	"qeWriteRegLen"
.LASF130:
	.string	"HBN_XCLK_CLK_Type"
.LASF97:
	.string	"deBurstWrapCmdDmyClk"
.LASF145:
	.string	"HBN_INT_BOR"
.LASF175:
	.string	"HBN_LDO_LEVEL_1P00V"
.LASF117:
	.string	"HBN_PIR_HPF_Type"
.LASF269:
	.string	"addr"
.LASF149:
	.string	"HBN_GPIO_INT_TRIGGER_SYNC_FALLING_EDGE"
.LASF207:
	.string	"GLB_SYS_CLK_PLL192M"
.LASF13:
	.string	"uint64_t"
.LASF166:
	.string	"HBN_OUT1_INT_Type"
.LASF235:
	.string	"dlySec"
.LASF306:
	.string	"HBN_PIR_LPF_Sel"
.LASF133:
	.string	"HBN_ROOT_CLK_PLL"
.LASF54:
	.string	"writeEnableCmd"
.LASF297:
	.string	"threshold"
.LASF250:
	.string	"HBN_Hw_Pu_Pd_Cfg"
.LASF39:
	.string	"clkInvert"
.LASF49:
	.string	"pageSize"
.LASF139:
	.string	"HBN_RTC_INT_DELAY_0T"
.LASF150:
	.string	"HBN_GPIO_INT_TRIGGER_SYNC_RISING_EDGE"
.LASF3:
	.string	"signed char"
.LASF257:
	.string	"HBN_Clear_RTC_INT"
.LASF10:
	.string	"short unsigned int"
.LASF268:
	.string	"HBN_Set_Wakeup_Addr"
.LASF86:
	.string	"readRegCmd"
.LASF283:
	.string	"HBN_Set_ROOT_CLK_Sel"
.LASF31:
	.string	"reserved"
.LASF100:
	.string	"timeEsector"
.LASF95:
	.string	"burstWrapData"
.LASF210:
	.string	"GLB_PLL_XTAL_24M"
.LASF85:
	.string	"busyReadRegLen"
.LASF221:
	.string	"BL602_Delay_MS"
.LASF254:
	.string	"HBN_GPIO_INT_Disable"
.LASF201:
	.string	"HBN_APP_CFG_Type"
.LASF326:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF315:
	.string	"HBN_App_Reset"
.LASF163:
	.string	"HBN_OUT1_INT_BOR"
.LASF125:
	.string	"HBN_32K_XTAL"
.LASF226:
	.string	"GLB_Set_System_CLK"
.LASF259:
	.string	"valLow"
.LASF180:
	.string	"HBN_LDO_LEVEL_1P25V"
.LASF196:
	.string	"gpioWakeupSrc"
.LASF169:
	.string	"HBN_LDO_LEVEL_0P70V"
.LASF94:
	.string	"burstWrapDataMode"
.LASF47:
	.string	"qpiJedecIdCmdDmyClk"
.LASF123:
	.string	"HBN_BOR_MODE_Type"
.LASF193:
	.string	"HBN_BOR_CFG_Type"
.LASF188:
	.string	"HBN_LEVEL_Type"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_hbn.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
