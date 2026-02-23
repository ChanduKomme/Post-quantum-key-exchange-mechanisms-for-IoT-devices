	.file	"bl602_aon.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c"
	.section	.sclock_rlt_code,"ax",@progbits
	.align	1
	.weak	AON_Power_On_MBG
	.type	AON_Power_On_MBG, @function
AON_Power_On_MBG:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c"
	.loc 1 99 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 100 14
	sw	zero,-20(s0)
	.loc 1 103 13
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 103 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 104 11
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 105 7
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 105 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 107 5
	li	a0,55
	call	BL602_Delay_US
	.loc 1 109 12
	li	a5,0
	.loc 1 110 1
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
	.size	AON_Power_On_MBG, .-AON_Power_On_MBG
	.align	1
	.weak	AON_Power_Off_MBG
	.type	AON_Power_Off_MBG, @function
AON_Power_Off_MBG:
.LFB9:
	.loc 1 124 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 125 14
	sw	zero,-20(s0)
	.loc 1 128 13
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 128 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 129 11
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 1 130 7
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 130 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 132 12
	li	a5,0
	.loc 1 133 1
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
	.size	AON_Power_Off_MBG, .-AON_Power_Off_MBG
	.align	1
	.weak	AON_Power_On_XTAL
	.type	AON_Power_On_XTAL, @function
AON_Power_On_XTAL:
.LFB10:
	.loc 1 147 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 148 14
	sw	zero,-24(s0)
	.loc 1 149 14
	sw	zero,-20(s0)
	.loc 1 151 13
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 151 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 152 11
	lw	a5,-24(s0)
	ori	a5,a5,32
	sw	a5,-24(s0)
	.loc 1 153 11
	lw	a5,-24(s0)
	ori	a5,a5,16
	sw	a5,-24(s0)
	.loc 1 154 7
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 154 61
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L7:
	.loc 1 158 9
	li	a0,10
	call	BL602_Delay_US
	.loc 1 159 16
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 160 17
	li	a5,1073807360
	addi	a5,a5,-1912
	.loc 1 160 15
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 161 24 discriminator 2
	lw	a4,-24(s0)
	li	a5,268435456
	and	a5,a4,a5
	.loc 1 161 45 discriminator 2
	bne	a5,zero,.L6
	.loc 1 161 45 is_stmt 0 discriminator 1
	lw	a4,-20(s0)
	li	a5,119
	bleu	a4,a5,.L7
.L6:
	.loc 1 163 7 is_stmt 1
	lw	a4,-20(s0)
	li	a5,119
	bleu	a4,a5,.L8
	.loc 1 164 16
	li	a5,2
	j	.L9
.L8:
	.loc 1 167 12
	li	a5,0
.L9:
	.loc 1 168 1
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
	.size	AON_Power_On_XTAL, .-AON_Power_On_XTAL
	.align	1
	.weak	AON_Set_Xtal_CapCode
	.type	AON_Set_Xtal_CapCode, @function
AON_Set_Xtal_CapCode:
.LFB11:
	.loc 1 183 1
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
	.loc 1 184 14
	sw	zero,-20(s0)
	.loc 1 186 13
	li	a5,1073807360
	addi	a5,a5,-1916
	.loc 1 186 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 187 23
	lw	a4,-20(s0)
	li	a5,-264241152
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 187 55
	lbu	a5,-33(s0)
	.loc 1 187 72
	slli	a5,a5,22
	.loc 1 187 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 188 23
	lw	a4,-20(s0)
	li	a5,-4128768
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 188 55
	lbu	a5,-34(s0)
	.loc 1 188 73
	slli	a5,a5,16
	.loc 1 188 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 189 7
	li	a5,1073807360
	addi	a5,a5,-1916
	.loc 1 189 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 191 5
	li	a0,100
	call	BL602_Delay_US
	.loc 1 193 12
	li	a5,0
	.loc 1 194 1
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
	.size	AON_Set_Xtal_CapCode, .-AON_Set_Xtal_CapCode
	.align	1
	.weak	AON_Get_Xtal_CapCode
	.type	AON_Get_Xtal_CapCode, @function
AON_Get_Xtal_CapCode:
.LFB12:
	.loc 1 208 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 209 14
	sw	zero,-20(s0)
	.loc 1 211 13
	li	a5,1073807360
	addi	a5,a5,-1916
	.loc 1 211 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 213 51
	lw	a5,-20(s0)
	srli	a5,a5,22
	andi	a5,a5,0xff
	andi	a5,a5,63
	andi	a5,a5,0xff
	.loc 1 214 1
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
	.size	AON_Get_Xtal_CapCode, .-AON_Get_Xtal_CapCode
	.align	1
	.weak	AON_Power_Off_XTAL
	.type	AON_Power_Off_XTAL, @function
AON_Power_Off_XTAL:
.LFB13:
	.loc 1 228 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 229 14
	sw	zero,-20(s0)
	.loc 1 231 13
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 231 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 232 11
	lw	a5,-20(s0)
	andi	a5,a5,-33
	sw	a5,-20(s0)
	.loc 1 233 11
	lw	a5,-20(s0)
	andi	a5,a5,-17
	sw	a5,-20(s0)
	.loc 1 234 7
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 234 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 236 12
	li	a5,0
	.loc 1 237 1
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
	.size	AON_Power_Off_XTAL, .-AON_Power_Off_XTAL
	.section	.tcm_code,"ax",@progbits
	.align	1
	.weak	AON_Power_On_BG
	.type	AON_Power_On_BG, @function
AON_Power_On_BG:
.LFB14:
	.loc 1 251 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 252 14
	sw	zero,-20(s0)
	.loc 1 255 13
	li	a5,1073807360
	addi	a5,a5,-2032
	.loc 1 255 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 256 11
	lw	a5,-20(s0)
	ori	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 257 7
	li	a5,1073807360
	addi	a5,a5,-2032
	.loc 1 257 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 259 5
	li	a0,55
	call	BL602_Delay_US
	.loc 1 261 12
	li	a5,0
	.loc 1 262 1
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
	.size	AON_Power_On_BG, .-AON_Power_On_BG
	.align	1
	.weak	AON_Power_Off_BG
	.type	AON_Power_Off_BG, @function
AON_Power_Off_BG:
.LFB15:
	.loc 1 276 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 277 14
	sw	zero,-20(s0)
	.loc 1 280 13
	li	a5,1073807360
	addi	a5,a5,-2032
	.loc 1 280 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 281 11
	lw	a5,-20(s0)
	andi	a5,a5,-257
	sw	a5,-20(s0)
	.loc 1 282 7
	li	a5,1073807360
	addi	a5,a5,-2032
	.loc 1 282 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 284 5
	li	a0,55
	call	BL602_Delay_US
	.loc 1 286 12
	li	a5,0
	.loc 1 287 1
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
	.size	AON_Power_Off_BG, .-AON_Power_Off_BG
	.align	1
	.weak	AON_Power_On_LDO11_SOC
	.type	AON_Power_On_LDO11_SOC, @function
AON_Power_On_LDO11_SOC:
.LFB16:
	.loc 1 301 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 302 14
	sw	zero,-20(s0)
	.loc 1 304 13
	li	a5,1073807360
	addi	a5,a5,-2020
	.loc 1 304 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 305 11
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 306 7
	li	a5,1073807360
	addi	a5,a5,-2020
	.loc 1 306 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 308 5
	li	a0,55
	call	BL602_Delay_US
	.loc 1 310 12
	li	a5,0
	.loc 1 311 1
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
	.size	AON_Power_On_LDO11_SOC, .-AON_Power_On_LDO11_SOC
	.align	1
	.weak	AON_Power_Off_LDO11_SOC
	.type	AON_Power_Off_LDO11_SOC, @function
AON_Power_Off_LDO11_SOC:
.LFB17:
	.loc 1 325 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 326 14
	sw	zero,-20(s0)
	.loc 1 328 13
	li	a5,1073807360
	addi	a5,a5,-2020
	.loc 1 328 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 329 11
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 1 330 7
	li	a5,1073807360
	addi	a5,a5,-2020
	.loc 1 330 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 332 5
	li	a0,55
	call	BL602_Delay_US
	.loc 1 334 12
	li	a5,0
	.loc 1 335 1
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
	.size	AON_Power_Off_LDO11_SOC, .-AON_Power_Off_LDO11_SOC
	.align	1
	.weak	AON_Power_On_LDO15_RF
	.type	AON_Power_On_LDO15_RF, @function
AON_Power_On_LDO15_RF:
.LFB18:
	.loc 1 349 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 350 14
	sw	zero,-20(s0)
	.loc 1 353 13
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 353 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 354 11
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 355 7
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 355 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 357 5
	li	a0,90
	call	BL602_Delay_US
	.loc 1 359 12
	li	a5,0
	.loc 1 360 1
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
.LFE18:
	.size	AON_Power_On_LDO15_RF, .-AON_Power_On_LDO15_RF
	.align	1
	.weak	AON_Power_Off_LDO15_RF
	.type	AON_Power_Off_LDO15_RF, @function
AON_Power_Off_LDO15_RF:
.LFB19:
	.loc 1 374 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 375 14
	sw	zero,-20(s0)
	.loc 1 378 13
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 378 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 379 11
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
	.loc 1 380 7
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 380 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 382 12
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
.LFE19:
	.size	AON_Power_Off_LDO15_RF, .-AON_Power_Off_LDO15_RF
	.align	1
	.weak	AON_Power_On_SFReg
	.type	AON_Power_On_SFReg, @function
AON_Power_On_SFReg:
.LFB20:
	.loc 1 397 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 398 14
	sw	zero,-20(s0)
	.loc 1 401 13
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 401 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 402 11
	lw	a5,-20(s0)
	ori	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 403 7
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 403 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 405 5
	li	a0,10
	call	BL602_Delay_US
	.loc 1 407 12
	li	a5,0
	.loc 1 408 1
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
	.size	AON_Power_On_SFReg, .-AON_Power_On_SFReg
	.align	1
	.weak	AON_Power_Off_SFReg
	.type	AON_Power_Off_SFReg, @function
AON_Power_Off_SFReg:
.LFB21:
	.loc 1 422 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 423 14
	sw	zero,-20(s0)
	.loc 1 426 13
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 426 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 427 11
	lw	a5,-20(s0)
	andi	a5,a5,-5
	sw	a5,-20(s0)
	.loc 1 428 7
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 428 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 430 12
	li	a5,0
	.loc 1 431 1
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
.LFE21:
	.size	AON_Power_Off_SFReg, .-AON_Power_Off_SFReg
	.align	1
	.weak	AON_LowPower_Enter_PDS0
	.type	AON_LowPower_Enter_PDS0, @function
AON_LowPower_Enter_PDS0:
.LFB22:
	.loc 1 445 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 446 14
	sw	zero,-20(s0)
	.loc 1 449 13
	li	a5,1073807360
	addi	a5,a5,-2040
	.loc 1 449 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 450 11
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
	.loc 1 451 7
	li	a5,1073807360
	addi	a5,a5,-2040
	.loc 1 451 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 453 13
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 453 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 454 11
	lw	a5,-20(s0)
	andi	a5,a5,-5
	sw	a5,-20(s0)
	.loc 1 455 11
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
	.loc 1 456 11
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 1 457 7
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 457 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 460 13
	li	a5,1073741824
	addi	a5,a5,32
	.loc 1 460 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 461 11
	lw	a5,-20(s0)
	andi	a5,a5,-65
	sw	a5,-20(s0)
	.loc 1 462 11
	lw	a5,-20(s0)
	andi	a5,a5,-129
	sw	a5,-20(s0)
	.loc 1 463 7
	li	a5,1073741824
	addi	a5,a5,32
	.loc 1 463 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 465 12
	li	a5,0
	.loc 1 466 1
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
	.size	AON_LowPower_Enter_PDS0, .-AON_LowPower_Enter_PDS0
	.align	1
	.weak	AON_LowPower_Exit_PDS0
	.type	AON_LowPower_Exit_PDS0, @function
AON_LowPower_Exit_PDS0:
.LFB23:
	.loc 1 480 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 481 14
	sw	zero,-20(s0)
	.loc 1 483 13
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 483 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 485 11
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 486 7
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 486 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 488 5
	li	a0,20
	call	BL602_Delay_US
	.loc 1 490 11
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 491 7
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 491 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 493 5
	li	a0,60
	call	BL602_Delay_US
	.loc 1 495 11
	lw	a5,-20(s0)
	ori	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 496 7
	li	a5,1073807360
	addi	a5,a5,-1920
	.loc 1 496 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 498 5
	li	a0,20
	call	BL602_Delay_US
	.loc 1 501 13
	li	a5,1073807360
	addi	a5,a5,-2040
	.loc 1 501 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 502 11
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 503 7
	li	a5,1073807360
	addi	a5,a5,-2040
	.loc 1 503 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 506 13
	li	a5,1073741824
	addi	a5,a5,32
	.loc 1 506 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 507 11
	lw	a5,-20(s0)
	ori	a5,a5,64
	sw	a5,-20(s0)
	.loc 1 508 11
	lw	a5,-20(s0)
	ori	a5,a5,128
	sw	a5,-20(s0)
	.loc 1 509 7
	li	a5,1073741824
	addi	a5,a5,32
	.loc 1 509 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 511 12
	li	a5,0
	.loc 1 512 1
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
.LFE23:
	.size	AON_LowPower_Exit_PDS0, .-AON_LowPower_Exit_PDS0
	.align	1
	.globl	AON_Set_LDO11_SOC_Sstart_Delay
	.type	AON_Set_LDO11_SOC_Sstart_Delay, @function
AON_Set_LDO11_SOC_Sstart_Delay:
.LFB24:
	.loc 1 524 1
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
	.loc 1 525 14
	sw	zero,-20(s0)
	.loc 1 530 13
	li	a5,1073807360
	addi	a5,a5,-2020
	.loc 1 530 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 531 23
	lw	a5,-20(s0)
	andi	a4,a5,-769
	.loc 1 531 54
	lbu	a5,-33(s0)
	.loc 1 531 71
	slli	a5,a5,8
	.loc 1 531 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 532 7
	li	a5,1073807360
	addi	a5,a5,-2020
	.loc 1 532 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 534 12
	li	a5,0
	.loc 1 535 1
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
	.size	AON_Set_LDO11_SOC_Sstart_Delay, .-AON_Set_LDO11_SOC_Sstart_Delay
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3aa
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x6
	.4byte	.LASF8
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x6d
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x2b
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xb8
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0x97
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x3
	.byte	0x88
	.byte	0x6
	.4byte	0xd6
	.uleb128 0xf
	.4byte	0x61
	.byte	0
	.uleb128 0x5
	.4byte	.LASF19
	.2byte	0x20b
	.4byte	0xb8
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10e
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x20b
	.byte	0x5a
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF21
	.2byte	0x20d
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.2byte	0x1df
	.4byte	0xb8
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x136
	.uleb128 0x2
	.4byte	.LASF21
	.2byte	0x1e1
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF22
	.2byte	0x1bc
	.4byte	0xb8
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15e
	.uleb128 0x2
	.4byte	.LASF21
	.2byte	0x1be
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF23
	.2byte	0x1a5
	.4byte	0xb8
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x186
	.uleb128 0x2
	.4byte	.LASF21
	.2byte	0x1a7
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.2byte	0x18c
	.4byte	0xb8
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ae
	.uleb128 0x2
	.4byte	.LASF21
	.2byte	0x18e
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF25
	.2byte	0x175
	.4byte	0xb8
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d6
	.uleb128 0x2
	.4byte	.LASF21
	.2byte	0x177
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.2byte	0x15c
	.4byte	0xb8
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fe
	.uleb128 0x2
	.4byte	.LASF21
	.2byte	0x15e
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.2byte	0x144
	.4byte	0xb8
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x226
	.uleb128 0x2
	.4byte	.LASF21
	.2byte	0x146
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.2byte	0x12c
	.4byte	0xb8
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24e
	.uleb128 0x2
	.4byte	.LASF21
	.2byte	0x12e
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.2byte	0x113
	.4byte	0xb8
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x276
	.uleb128 0x2
	.4byte	.LASF21
	.2byte	0x115
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0xfa
	.byte	0x33
	.4byte	0xb8
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29d
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0xfc
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0xe3
	.byte	0x3a
	.4byte	0xb8
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c4
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0xe5
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0xcf
	.byte	0x36
	.4byte	0x4e
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2eb
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0xd1
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0xb6
	.byte	0x3a
	.4byte	0xb8
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32e
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0xb6
	.byte	0x57
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0xb6
	.byte	0x65
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0xb8
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x92
	.byte	0x3a
	.4byte	0xb8
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x362
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x94
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x95
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x7b
	.byte	0x3a
	.4byte	0xb8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x389
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7d
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x1
	.byte	0x62
	.byte	0x3a
	.4byte	0xb8
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x64
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.sleb128 51
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
	.sleb128 51
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x9c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF26:
	.string	"AON_Power_On_LDO15_RF"
.LASF17:
	.string	"TIMEOUT"
.LASF24:
	.string	"AON_Power_On_SFReg"
.LASF5:
	.string	"long int"
.LASF11:
	.string	"long long unsigned int"
.LASF34:
	.string	"delay"
.LASF2:
	.string	"unsigned char"
.LASF15:
	.string	"SUCCESS"
.LASF39:
	.string	"AON_Power_Off_MBG"
.LASF20:
	.string	"AON_LowPower_Exit_PDS0"
.LASF7:
	.string	"short unsigned int"
.LASF22:
	.string	"AON_LowPower_Enter_PDS0"
.LASF21:
	.string	"tmpVal"
.LASF29:
	.string	"AON_Power_Off_BG"
.LASF10:
	.string	"long unsigned int"
.LASF4:
	.string	"short int"
.LASF27:
	.string	"AON_Power_Off_LDO11_SOC"
.LASF37:
	.string	"AON_Power_On_XTAL"
.LASF12:
	.string	"unsigned int"
.LASF14:
	.string	"char"
.LASF8:
	.string	"uint8_t"
.LASF19:
	.string	"AON_Set_LDO11_SOC_Sstart_Delay"
.LASF42:
	.string	"AON_Power_On_MBG"
.LASF38:
	.string	"timeOut"
.LASF25:
	.string	"AON_Power_Off_LDO15_RF"
.LASF33:
	.string	"AON_Set_Xtal_CapCode"
.LASF23:
	.string	"AON_Power_Off_SFReg"
.LASF41:
	.string	"BL602_Delay_US"
.LASF31:
	.string	"AON_Power_Off_XTAL"
.LASF40:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF35:
	.string	"capIn"
.LASF32:
	.string	"AON_Get_Xtal_CapCode"
.LASF9:
	.string	"uint32_t"
.LASF16:
	.string	"ERROR"
.LASF13:
	.string	"long double"
.LASF36:
	.string	"capOut"
.LASF3:
	.string	"signed char"
.LASF30:
	.string	"AON_Power_On_BG"
.LASF18:
	.string	"BL_Err_Type"
.LASF28:
	.string	"AON_Power_On_LDO11_SOC"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
