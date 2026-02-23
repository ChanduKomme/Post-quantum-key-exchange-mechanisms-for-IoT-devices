	.file	"bl602_ef_ctrl.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_ef_ctrl.c"
	.section	.tcm_code,"ax",@progbits
	.align	1
	.weak	EF_Ctrl_Sw_AHB_Clk_0
	.type	EF_Ctrl_Sw_AHB_Clk_0, @function
EF_Ctrl_Sw_AHB_Clk_0:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_ef_ctrl.c"
	.loc 1 103 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 105 14
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 107 10
	j	.L2
.L4:
	.loc 1 108 16
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 109 11
	lw	a5,-20(s0)
	beq	a5,zero,.L5
.L2:
	.loc 1 107 11
	call	EF_Ctrl_Busy
	mv	a5,a0
	mv	a4,a5
	.loc 1 107 25 discriminator 1
	li	a5,1
	beq	a4,a5,.L4
	j	.L3
.L5:
	.loc 1 110 13
	nop
.L3:
	.loc 1 114 11
	li	a5,2408448
	addi	a5,a5,-128
	sw	a5,-24(s0)
	.loc 1 124 7
	li	a5,1073774592
	addi	a5,a5,-2048
	.loc 1 124 61
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 125 1
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
	.size	EF_Ctrl_Sw_AHB_Clk_0, .-EF_Ctrl_Sw_AHB_Clk_0
	.align	1
	.weak	EF_Ctrl_Program_Efuse_0
	.type	EF_Ctrl_Program_Efuse_0, @function
EF_Ctrl_Program_Efuse_0:
.LFB9:
	.loc 1 139 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 143 11
	li	a5,2408448
	addi	a5,a5,-256
	sw	a5,-20(s0)
	.loc 1 152 7
	li	a5,1073774592
	addi	a5,a5,-2048
	.loc 1 152 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 155 11
	li	a5,2473984
	addi	a5,a5,-248
	sw	a5,-20(s0)
	.loc 1 164 7
	li	a5,1073774592
	addi	a5,a5,-2048
	.loc 1 164 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 167 5
	li	a0,4
	call	BL602_Delay_US
	.loc 1 170 11
	li	a5,2473984
	addi	a5,a5,-232
	sw	a5,-20(s0)
	.loc 1 179 7
	li	a5,1073774592
	addi	a5,a5,-2048
	.loc 1 179 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 180 1
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
	.size	EF_Ctrl_Program_Efuse_0, .-EF_Ctrl_Program_Efuse_0
	.align	1
	.weak	EF_Ctrl_Load_Efuse_R0
	.type	EF_Ctrl_Load_Efuse_R0, @function
EF_Ctrl_Load_Efuse_R0:
.LFB10:
	.loc 1 200 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 203 14
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 205 5
	li	a1,32
	li	a0,0
	call	EF_Ctrl_Clear
	.loc 1 208 11
	li	a5,2408448
	addi	a5,a5,-256
	sw	a5,-24(s0)
	.loc 1 217 7
	li	a5,1073774592
	addi	a5,a5,-2048
	.loc 1 217 61
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 219 11
	li	a5,2408448
	addi	a5,a5,-240
	sw	a5,-24(s0)
	.loc 1 228 7
	li	a5,1073774592
	addi	a5,a5,-2048
	.loc 1 228 61
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 230 5
	li	a0,10
	call	BL602_Delay_US
.L8:
	.loc 1 233 17
	li	a5,1073774592
	addi	a5,a5,-2048
	.loc 1 233 15
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 234 16
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 235 11
	lw	a5,-20(s0)
	beq	a5,zero,.L12
	.loc 1 238 23
	lw	a5,-24(s0)
	andi	a5,a5,4
	.loc 1 238 44
	bne	a5,zero,.L8
	.loc 1 239 25
	lw	a5,-24(s0)
	andi	a5,a5,2
	.loc 1 238 44 discriminator 1
	beq	a5,zero,.L8
	j	.L10
.L12:
	.loc 1 236 13
	nop
.L10:
	.loc 1 242 11
	li	a5,2408448
	addi	a5,a5,-128
	sw	a5,-24(s0)
	.loc 1 251 7
	li	a5,1073774592
	addi	a5,a5,-2048
	.loc 1 251 61
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 252 1
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
.LFE10:
	.size	EF_Ctrl_Load_Efuse_R0, .-EF_Ctrl_Load_Efuse_R0
	.align	1
	.weak	EF_Ctrl_Busy
	.type	EF_Ctrl_Busy, @function
EF_Ctrl_Busy:
.LFB11:
	.loc 1 266 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 269 13
	li	a5,1073774592
	addi	a5,a5,-2048
	.loc 1 269 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 270 19
	lw	a5,-20(s0)
	andi	a5,a5,4
	.loc 1 270 7
	beq	a5,zero,.L14
	.loc 1 271 16
	li	a5,1
	j	.L15
.L14:
	.loc 1 274 12
	li	a5,0
.L15:
	.loc 1 275 1
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
	.size	EF_Ctrl_Busy, .-EF_Ctrl_Busy
	.align	1
	.weak	EF_Ctrl_AutoLoad_Done
	.type	EF_Ctrl_AutoLoad_Done, @function
EF_Ctrl_AutoLoad_Done:
.LFB12:
	.loc 1 289 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 292 13
	li	a5,1073774592
	addi	a5,a5,-2048
	.loc 1 292 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 294 19
	lw	a5,-20(s0)
	andi	a5,a5,2
	.loc 1 294 7
	beq	a5,zero,.L17
	.loc 1 295 16
	li	a5,1
	j	.L18
.L17:
	.loc 1 297 16
	li	a5,0
.L18:
	.loc 1 299 1
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
	.size	EF_Ctrl_AutoLoad_Done, .-EF_Ctrl_AutoLoad_Done
	.section	.text.EF_Ctrl_Write_Dbg_Pwd,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Write_Dbg_Pwd
	.type	EF_Ctrl_Write_Dbg_Pwd, @function
EF_Ctrl_Write_Dbg_Pwd:
.LFB13:
	.loc 1 313 1
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
	sw	a1,-24(s0)
	mv	a5,a2
	sb	a5,-25(s0)
	.loc 1 315 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 317 7
	li	a5,1073770496
	addi	a5,a5,4
	.loc 1 317 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 318 7
	li	a5,1073770496
	addi	a5,a5,8
	.loc 1 318 59
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 320 7
	lbu	a5,-25(s0)
	beq	a5,zero,.L21
	.loc 1 321 9
	call	EF_Ctrl_Program_Efuse_0
.L21:
	.loc 1 323 1
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
	.size	EF_Ctrl_Write_Dbg_Pwd, .-EF_Ctrl_Write_Dbg_Pwd
	.section	.text.EF_Ctrl_Read_Dbg_Pwd,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Read_Dbg_Pwd
	.type	EF_Ctrl_Read_Dbg_Pwd, @function
EF_Ctrl_Read_Dbg_Pwd:
.LFB14:
	.loc 1 335 1
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
	sw	a1,-24(s0)
	.loc 1 337 5
	call	EF_Ctrl_Load_Efuse_R0
	.loc 1 339 17
	li	a5,1073770496
	addi	a5,a5,4
	lw	a4,0(a5)
	.loc 1 339 15
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 340 18
	li	a5,1073770496
	addi	a5,a5,8
	lw	a4,0(a5)
	.loc 1 340 16
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 341 1
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
	.size	EF_Ctrl_Read_Dbg_Pwd, .-EF_Ctrl_Read_Dbg_Pwd
	.section	.text.EF_Ctrl_Readlock_Dbg_Pwd,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Readlock_Dbg_Pwd
	.type	EF_Ctrl_Readlock_Dbg_Pwd, @function
EF_Ctrl_Readlock_Dbg_Pwd:
.LFB15:
	.loc 1 352 1
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
	.loc 1 356 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 358 13
	li	a5,1073770496
	addi	a5,a5,124
	.loc 1 358 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 359 11
	lw	a4,-20(s0)
	li	a5,33554432
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 360 7
	li	a5,1073770496
	addi	a5,a5,124
	.loc 1 360 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 362 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L25
	.loc 1 363 9
	call	EF_Ctrl_Program_Efuse_0
.L25:
	.loc 1 365 1
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
	.size	EF_Ctrl_Readlock_Dbg_Pwd, .-EF_Ctrl_Readlock_Dbg_Pwd
	.section	.text.EF_Ctrl_Writelock_Dbg_Pwd,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Writelock_Dbg_Pwd
	.type	EF_Ctrl_Writelock_Dbg_Pwd, @function
EF_Ctrl_Writelock_Dbg_Pwd:
.LFB16:
	.loc 1 376 1
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
	.loc 1 380 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 382 13
	li	a5,1073770496
	addi	a5,a5,124
	.loc 1 382 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 383 11
	lw	a4,-20(s0)
	li	a5,65536
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 384 7
	li	a5,1073770496
	addi	a5,a5,124
	.loc 1 384 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 386 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L28
	.loc 1 387 9
	call	EF_Ctrl_Program_Efuse_0
.L28:
	.loc 1 389 1
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
	.size	EF_Ctrl_Writelock_Dbg_Pwd, .-EF_Ctrl_Writelock_Dbg_Pwd
	.section	.text.EF_Ctrl_Write_Secure_Cfg,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Write_Secure_Cfg
	.type	EF_Ctrl_Write_Secure_Cfg, @function
EF_Ctrl_Write_Secure_Cfg:
.LFB17:
	.loc 1 401 1
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
	.loc 1 404 13
	li	a5,1073770496
	.loc 1 404 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 405 24
	lw	a4,-20(s0)
	li	a5,268435456
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 405 70
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 405 84
	slli	a5,a5,28
	.loc 1 405 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 406 24
	lw	a4,-20(s0)
	li	a5,-201326592
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 406 70
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	.loc 1 406 90
	slli	a5,a5,26
	.loc 1 406 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 407 24
	lw	a5,-20(s0)
	andi	a4,a5,-49
	.loc 1 407 69
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	.loc 1 407 83
	slli	a5,a5,4
	.loc 1 407 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 408 7
	li	a5,1073770496
	.loc 1 408 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 410 7
	lbu	a5,-37(s0)
	beq	a5,zero,.L31
	.loc 1 411 9
	call	EF_Ctrl_Program_Efuse_0
.L31:
	.loc 1 413 1
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
	.size	EF_Ctrl_Write_Secure_Cfg, .-EF_Ctrl_Write_Secure_Cfg
	.section	.text.EF_Ctrl_Read_Secure_Cfg,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Read_Secure_Cfg
	.type	EF_Ctrl_Read_Secure_Cfg, @function
EF_Ctrl_Read_Secure_Cfg:
.LFB18:
	.loc 1 424 1
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
	.loc 1 428 5
	call	EF_Ctrl_Load_Efuse_R0
	.loc 1 430 13
	li	a5,1073770496
	.loc 1 430 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 432 85
	lw	a5,-20(s0)
	srli	a5,a5,28
	.loc 1 432 23
	andi	a4,a5,0xff
	.loc 1 432 22
	lw	a5,-36(s0)
	sb	a4,0(a5)
	.loc 1 433 67
	lw	a5,-20(s0)
	srli	a5,a5,26
	andi	a5,a5,0xff
	andi	a5,a5,3
	andi	a4,a5,0xff
	.loc 1 433 27
	lw	a5,-36(s0)
	sb	a4,1(a5)
	.loc 1 434 61
	lw	a5,-20(s0)
	srli	a5,a5,4
	andi	a5,a5,0xff
	andi	a5,a5,3
	andi	a4,a5,0xff
	.loc 1 434 22
	lw	a5,-36(s0)
	sb	a4,2(a5)
	.loc 1 435 66
	lw	a5,-20(s0)
	srli	a5,a5,13
	andi	a5,a5,0xff
	andi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 435 26
	lw	a5,-36(s0)
	sb	a4,3(a5)
	.loc 1 436 1
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
	.size	EF_Ctrl_Read_Secure_Cfg, .-EF_Ctrl_Read_Secure_Cfg
	.section	.text.EF_Ctrl_Write_Secure_Boot,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Write_Secure_Boot
	.type	EF_Ctrl_Write_Secure_Boot, @function
EF_Ctrl_Write_Secure_Boot:
.LFB19:
	.loc 1 449 1
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
	mv	a5,a2
	sb	a5,-41(s0)
	.loc 1 453 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 455 13
	li	a5,1073770496
	.loc 1 455 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 457 24
	lw	a5,-20(s0)
	andi	a4,a5,-13
	.loc 1 457 70
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 457 74
	slli	a5,a5,2
	.loc 1 457 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 459 11
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 459 7
	beq	a5,zero,.L34
	.loc 1 460 28
	lw	a5,-20(s0)
	andi	a5,a5,-4
	.loc 1 460 73
	lw	a4,-40(s0)
	lbu	a4,0(a4)
	.loc 1 460 15
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 461 15
	lw	a5,-20(s0)
	ori	a5,a5,128
	sw	a5,-20(s0)
.L34:
	.loc 1 464 7
	li	a5,1073770496
	.loc 1 464 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 466 7
	lbu	a5,-41(s0)
	beq	a5,zero,.L36
	.loc 1 467 9
	call	EF_Ctrl_Program_Efuse_0
.L36:
	.loc 1 469 1
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
	.size	EF_Ctrl_Write_Secure_Boot, .-EF_Ctrl_Write_Secure_Boot
	.section	.text.EF_Ctrl_Read_Secure_Boot,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Read_Secure_Boot
	.type	EF_Ctrl_Read_Secure_Boot, @function
EF_Ctrl_Read_Secure_Boot:
.LFB20:
	.loc 1 481 1
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
	.loc 1 486 5
	call	EF_Ctrl_Load_Efuse_R0
	.loc 1 488 13
	li	a5,1073770496
	.loc 1 488 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 490 51
	lw	a5,-20(s0)
	srli	a5,a5,2
	.loc 1 490 12
	andi	a5,a5,3
	sw	a5,-24(s0)
	.loc 1 491 13
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	.loc 1 491 40
	andi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 491 12
	lw	a5,-36(s0)
	sb	a4,0(a5)
	.loc 1 493 51
	lw	a5,-20(s0)
	srli	a5,a5,7
	.loc 1 493 12
	andi	a5,a5,1
	sw	a5,-24(s0)
	.loc 1 494 7
	lw	a5,-24(s0)
	beq	a5,zero,.L38
	.loc 1 495 16
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	.loc 1 495 49
	andi	a5,a5,3
	andi	a4,a5,0xff
	.loc 1 495 15
	lw	a5,-40(s0)
	sb	a4,0(a5)
	.loc 1 499 1
	j	.L40
.L38:
	.loc 1 497 15
	lw	a5,-40(s0)
	sb	zero,0(a5)
.L40:
	.loc 1 499 1
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
	.size	EF_Ctrl_Read_Secure_Boot, .-EF_Ctrl_Read_Secure_Boot
	.section	.text.EF_Ctrl_Get_Trim_Enable,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Get_Trim_Enable
	.type	EF_Ctrl_Get_Trim_Enable, @function
EF_Ctrl_Get_Trim_Enable:
.LFB21:
	.loc 1 510 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 514 5
	call	EF_Ctrl_Load_Efuse_R0
	.loc 1 516 13
	li	a5,1073770496
	.loc 1 516 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 518 51
	lw	a5,-20(s0)
	srli	a5,a5,12
	andi	a5,a5,0xff
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 519 1
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
	.size	EF_Ctrl_Get_Trim_Enable, .-EF_Ctrl_Get_Trim_Enable
	.section	.sclock_rlt_code,"ax",@progbits
	.align	1
	.weak	EF_Ctrl_Get_Trim_Parity
	.type	EF_Ctrl_Get_Trim_Parity, @function
EF_Ctrl_Get_Trim_Parity:
.LFB22:
	.loc 1 533 1
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
	.loc 1 534 13
	sb	zero,-17(s0)
	.loc 1 535 13
	sb	zero,-18(s0)
	.loc 1 537 10
	sb	zero,-18(s0)
	.loc 1 537 5
	j	.L44
.L46:
	.loc 1 538 18
	lbu	a5,-18(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 538 15
	lw	a5,-36(s0)
	and	a5,a4,a5
	.loc 1 538 11
	beq	a5,zero,.L45
	.loc 1 539 16
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L45:
	.loc 1 537 20 discriminator 2
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L44:
	.loc 1 537 14 discriminator 1
	lbu	a4,-18(s0)
	lbu	a5,-37(s0)
	bltu	a4,a5,.L46
	.loc 1 543 15
	lbu	a5,-17(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 544 1
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
	.size	EF_Ctrl_Get_Trim_Parity, .-EF_Ctrl_Get_Trim_Parity
	.section	.text.EF_Ctrl_Write_Ana_Trim,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Write_Ana_Trim
	.type	EF_Ctrl_Write_Ana_Trim, @function
EF_Ctrl_Write_Ana_Trim:
.LFB23:
	.loc 1 558 1
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
	sw	a1,-24(s0)
	mv	a5,a2
	sb	a5,-25(s0)
	.loc 1 560 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 562 7
	lw	a5,-20(s0)
	bne	a5,zero,.L49
	.loc 1 563 11
	li	a5,1073770496
	addi	a5,a5,12
	.loc 1 563 63
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L49:
	.loc 1 566 7
	lbu	a5,-25(s0)
	beq	a5,zero,.L51
	.loc 1 567 9
	call	EF_Ctrl_Program_Efuse_0
.L51:
	.loc 1 569 1
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
	.size	EF_Ctrl_Write_Ana_Trim, .-EF_Ctrl_Write_Ana_Trim
	.section	.text.EF_Ctrl_Read_Ana_Trim,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Read_Ana_Trim
	.type	EF_Ctrl_Read_Ana_Trim, @function
EF_Ctrl_Read_Ana_Trim:
.LFB24:
	.loc 1 581 1
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
	sw	a1,-24(s0)
	.loc 1 583 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 585 5
	call	EF_Ctrl_Load_Efuse_R0
	.loc 1 587 7
	lw	a5,-20(s0)
	bne	a5,zero,.L54
	.loc 1 588 16
	li	a5,1073770496
	addi	a5,a5,12
	lw	a4,0(a5)
	.loc 1 588 14
	lw	a5,-24(s0)
	sw	a4,0(a5)
.L54:
	.loc 1 590 1
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
.LFE24:
	.size	EF_Ctrl_Read_Ana_Trim, .-EF_Ctrl_Read_Ana_Trim
	.section	.sclock_rlt_code
	.align	1
	.weak	EF_Ctrl_Read_RC32M_Trim
	.type	EF_Ctrl_Read_RC32M_Trim, @function
EF_Ctrl_Read_RC32M_Trim:
.LFB25:
	.loc 1 603 1
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
	.loc 1 604 14
	sw	zero,-20(s0)
	.loc 1 606 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 608 5
	call	EF_Ctrl_Load_Efuse_R0
	.loc 1 610 13
	li	a5,1073770496
	addi	a5,a5,12
	.loc 1 610 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 611 37
	lw	a5,-20(s0)
	srli	a5,a5,10
	.loc 1 611 29
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	sb	a4,0(a5)
	.loc 1 612 43
	lw	a5,-20(s0)
	srli	a5,a5,18
	.loc 1 612 48
	andi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 612 35
	lw	a5,-36(s0)
	andi	a4,a4,1
	slli	a4,a4,8
	lw	a3,0(a5)
	andi	a3,a3,-257
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 613 37
	lw	a5,-20(s0)
	srli	a5,a5,19
	.loc 1 613 42
	andi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 613 29
	lw	a5,-36(s0)
	andi	a4,a4,1
	slli	a4,a4,9
	lw	a3,0(a5)
	andi	a3,a3,-513
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 614 1
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
	.size	EF_Ctrl_Read_RC32M_Trim, .-EF_Ctrl_Read_RC32M_Trim
	.align	1
	.weak	EF_Ctrl_Read_RC32K_Trim
	.type	EF_Ctrl_Read_RC32K_Trim, @function
EF_Ctrl_Read_RC32K_Trim:
.LFB26:
	.loc 1 628 1
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
	.loc 1 629 14
	sw	zero,-20(s0)
	.loc 1 631 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 633 5
	call	EF_Ctrl_Load_Efuse_R0
	.loc 1 635 13
	li	a5,1073770496
	addi	a5,a5,12
	.loc 1 635 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 636 37
	lw	a5,-20(s0)
	srli	a5,a5,20
	.loc 1 636 42
	andi	a5,a5,1023
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 636 29
	lw	a5,-36(s0)
	andi	a4,a4,1023
	lw	a3,0(a5)
	andi	a3,a3,-1024
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 637 43
	lw	a5,-20(s0)
	srli	a5,a5,30
	.loc 1 637 48
	andi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 637 35
	lw	a5,-36(s0)
	andi	a4,a4,1
	slli	a4,a4,10
	lw	a3,0(a5)
	andi	a3,a3,-1025
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 638 37
	lw	a5,-20(s0)
	srli	a5,a5,31
	.loc 1 638 42
	andi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 638 29
	lw	a5,-36(s0)
	andi	a4,a4,1
	slli	a4,a4,11
	lw	a2,0(a5)
	li	a3,-4096
	addi	a3,a3,2047
	and	a3,a2,a3
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 639 1
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
	.size	EF_Ctrl_Read_RC32K_Trim, .-EF_Ctrl_Read_RC32K_Trim
	.align	1
	.globl	EF_Ctrl_Read_TSEN_Trim
	.type	EF_Ctrl_Read_TSEN_Trim, @function
EF_Ctrl_Read_TSEN_Trim:
.LFB27:
	.loc 1 651 1
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
	.loc 1 652 14
	sw	zero,-20(s0)
	.loc 1 654 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 656 5
	call	EF_Ctrl_Load_Efuse_R0
	.loc 1 658 13
	li	a5,1073770496
	addi	a5,a5,120
	.loc 1 658 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 659 37
	lw	a5,-20(s0)
	andi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 659 30
	lw	a5,-36(s0)
	andi	a4,a4,1
	slli	a4,a4,13
	lw	a2,0(a5)
	li	a3,-8192
	addi	a3,a3,-1
	and	a3,a2,a3
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 661 13
	li	a5,1073770496
	addi	a5,a5,124
	.loc 1 661 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 662 35
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 1 662 28
	lw	a5,-36(s0)
	li	a4,4096
	addi	a4,a4,-1
	and	a4,a3,a4
	lw	a2,0(a5)
	li	a3,-4096
	and	a3,a2,a3
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 663 43
	lw	a5,-20(s0)
	srli	a5,a5,12
	.loc 1 663 49
	andi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 663 34
	lw	a5,-36(s0)
	andi	a4,a4,1
	slli	a4,a4,12
	lw	a2,0(a5)
	li	a3,-4096
	addi	a3,a3,-1
	and	a3,a2,a3
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 665 13
	li	a5,1073770496
	addi	a5,a5,112
	.loc 1 665 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 666 44
	lw	a5,-20(s0)
	srli	a5,a5,30
	.loc 1 666 50
	andi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 666 35
	lw	a5,-36(s0)
	andi	a4,a4,1
	slli	a4,a4,14
	lw	a2,0(a5)
	li	a3,-16384
	addi	a3,a3,-1
	and	a3,a2,a3
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 668 1
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
	.size	EF_Ctrl_Read_TSEN_Trim, .-EF_Ctrl_Read_TSEN_Trim
	.align	1
	.globl	EF_Ctrl_Read_ADC_Gain_Trim
	.type	EF_Ctrl_Read_ADC_Gain_Trim, @function
EF_Ctrl_Read_ADC_Gain_Trim:
.LFB28:
	.loc 1 680 1
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
	.loc 1 681 14
	sw	zero,-20(s0)
	.loc 1 683 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 685 5
	call	EF_Ctrl_Load_Efuse_R0
	.loc 1 687 13
	li	a5,1073770496
	addi	a5,a5,120
	.loc 1 687 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 688 36
	lw	a5,-20(s0)
	srli	a5,a5,1
	.loc 1 688 42
	mv	a4,a5
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 1 688 26
	lw	a5,-36(s0)
	li	a4,4096
	addi	a4,a4,-1
	and	a4,a3,a4
	lw	a2,0(a5)
	li	a3,-4096
	and	a3,a2,a3
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 689 42
	lw	a5,-20(s0)
	srli	a5,a5,13
	.loc 1 689 49
	andi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 689 32
	lw	a5,-36(s0)
	andi	a4,a4,1
	slli	a4,a4,12
	lw	a2,0(a5)
	li	a3,-4096
	addi	a3,a3,-1
	and	a3,a2,a3
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 690 38
	lw	a5,-20(s0)
	srli	a5,a5,14
	.loc 1 690 45
	andi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 690 28
	lw	a5,-36(s0)
	andi	a4,a4,1
	slli	a4,a4,13
	lw	a2,0(a5)
	li	a3,-8192
	addi	a3,a3,-1
	and	a3,a2,a3
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 691 1
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
.LFE28:
	.size	EF_Ctrl_Read_ADC_Gain_Trim, .-EF_Ctrl_Read_ADC_Gain_Trim
	.section	.text.EF_Ctrl_Write_Sw_Usage,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Write_Sw_Usage
	.type	EF_Ctrl_Write_Sw_Usage, @function
EF_Ctrl_Write_Sw_Usage:
.LFB29:
	.loc 1 706 1
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
	sw	a1,-24(s0)
	mv	a5,a2
	sb	a5,-25(s0)
	.loc 1 708 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 710 7
	lw	a5,-20(s0)
	bne	a5,zero,.L60
	.loc 1 711 11
	li	a5,1073770496
	addi	a5,a5,16
	.loc 1 711 64
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L60:
	.loc 1 714 7
	lbu	a5,-25(s0)
	beq	a5,zero,.L62
	.loc 1 715 9
	call	EF_Ctrl_Program_Efuse_0
.L62:
	.loc 1 717 1
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
	.size	EF_Ctrl_Write_Sw_Usage, .-EF_Ctrl_Write_Sw_Usage
	.section	.text.EF_Ctrl_Read_Sw_Usage,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Read_Sw_Usage
	.type	EF_Ctrl_Read_Sw_Usage, @function
EF_Ctrl_Read_Sw_Usage:
.LFB30:
	.loc 1 729 1
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
	sw	a1,-24(s0)
	.loc 1 731 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 733 5
	call	EF_Ctrl_Load_Efuse_R0
	.loc 1 735 7
	lw	a5,-20(s0)
	bne	a5,zero,.L65
	.loc 1 736 17
	li	a5,1073770496
	addi	a5,a5,16
	lw	a4,0(a5)
	.loc 1 736 15
	lw	a5,-24(s0)
	sw	a4,0(a5)
.L65:
	.loc 1 738 1
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
.LFE30:
	.size	EF_Ctrl_Read_Sw_Usage, .-EF_Ctrl_Read_Sw_Usage
	.section	.text.EF_Ctrl_Writelock_Sw_Usage,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Writelock_Sw_Usage
	.type	EF_Ctrl_Writelock_Sw_Usage, @function
EF_Ctrl_Writelock_Sw_Usage:
.LFB31:
	.loc 1 750 1
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
	.loc 1 754 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 756 13
	li	a5,1073770496
	addi	a5,a5,124
	.loc 1 756 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 758 7
	lw	a5,-36(s0)
	bne	a5,zero,.L67
	.loc 1 759 15
	lw	a4,-20(s0)
	li	a5,131072
	or	a5,a4,a5
	sw	a5,-20(s0)
.L67:
	.loc 1 761 7
	li	a5,1073770496
	addi	a5,a5,124
	.loc 1 761 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 763 7
	lbu	a5,-37(s0)
	beq	a5,zero,.L69
	.loc 1 764 9
	call	EF_Ctrl_Program_Efuse_0
.L69:
	.loc 1 766 1
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
.LFE31:
	.size	EF_Ctrl_Writelock_Sw_Usage, .-EF_Ctrl_Writelock_Sw_Usage
	.section	.text.EF_Ctrl_Write_MAC_Address,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Write_MAC_Address
	.type	EF_Ctrl_Write_MAC_Address, @function
EF_Ctrl_Write_MAC_Address:
.LFB32:
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
	.loc 1 779 14
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 780 14
	lw	a5,-36(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 1 784 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 787 70
	lw	a5,-20(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 787 73
	slli	a4,a5,24
	.loc 1 787 86
	lw	a5,-20(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 787 89
	slli	a5,a5,16
	.loc 1 787 78
	or	a4,a4,a5
	.loc 1 787 102
	lw	a5,-20(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 787 105
	slli	a5,a5,8
	.loc 1 787 94
	or	a5,a4,a5
	.loc 1 787 117
	lw	a4,-20(s0)
	lbu	a4,0(a4)
	.loc 1 787 109
	or	a4,a5,a4
	.loc 1 787 7
	li	a5,1073770496
	addi	a5,a5,20
	.loc 1 787 60
	sw	a4,0(a5)
	.loc 1 789 19
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 789 31
	lw	a5,-24(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 789 34
	slli	a5,a5,8
	.loc 1 789 22
	add	a5,a4,a5
	.loc 1 789 11
	sw	a5,-28(s0)
	.loc 1 790 7
	li	a5,1073770496
	addi	a5,a5,24
	.loc 1 790 60
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 1 792 7
	lbu	a5,-37(s0)
	beq	a5,zero,.L72
	.loc 1 793 9
	call	EF_Ctrl_Program_Efuse_0
.L72:
	.loc 1 795 1
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
.LFE32:
	.size	EF_Ctrl_Write_MAC_Address, .-EF_Ctrl_Write_MAC_Address
	.section	.text.EF_Ctrl_Get_Byte_Zero_Cnt,"ax",@progbits
	.align	1
	.type	EF_Ctrl_Get_Byte_Zero_Cnt, @function
EF_Ctrl_Get_Byte_Zero_Cnt:
.LFB33:
	.loc 1 806 1
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
	.loc 1 807 14
	sw	zero,-20(s0)
	.loc 1 808 14
	sw	zero,-24(s0)
	.loc 1 809 10
	sw	zero,-24(s0)
	.loc 1 809 5
	j	.L74
.L76:
	.loc 1 810 24
	lbu	a4,-33(s0)
	lw	a5,-24(s0)
	sra	a5,a4,a5
	andi	a5,a5,1
	.loc 1 810 11
	bne	a5,zero,.L75
	.loc 1 811 16
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L75:
	.loc 1 809 18 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L74:
	.loc 1 809 14 discriminator 1
	lw	a4,-24(s0)
	li	a5,7
	bleu	a4,a5,.L76
	.loc 1 814 12
	lw	a5,-20(s0)
	.loc 1 815 1
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
	.size	EF_Ctrl_Get_Byte_Zero_Cnt, .-EF_Ctrl_Get_Byte_Zero_Cnt
	.section	.text.EF_Ctrl_Read_MAC_Address,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Read_MAC_Address
	.type	EF_Ctrl_Read_MAC_Address, @function
EF_Ctrl_Read_MAC_Address:
.LFB34:
	.loc 1 826 1
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
	.loc 1 827 14
	lw	a5,-52(s0)
	sw	a5,-28(s0)
	.loc 1 828 14
	lw	a5,-52(s0)
	addi	a5,a5,4
	sw	a5,-32(s0)
	.loc 1 830 14
	sw	zero,-20(s0)
	.loc 1 831 14
	sw	zero,-24(s0)
	.loc 1 834 5
	call	EF_Ctrl_Load_Efuse_R0
	.loc 1 836 13
	li	a5,1073770496
	addi	a5,a5,20
	.loc 1 836 11
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 837 15
	lw	a5,-36(s0)
	andi	a4,a5,0xff
	lw	a5,-28(s0)
	sb	a4,0(a5)
	.loc 1 837 45
	lw	a5,-36(s0)
	srli	a4,a5,8
	.loc 1 837 34
	lw	a5,-28(s0)
	addi	a5,a5,1
	.loc 1 837 37
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 837 72
	lw	a5,-36(s0)
	srli	a4,a5,16
	.loc 1 837 61
	lw	a5,-28(s0)
	addi	a5,a5,2
	.loc 1 837 64
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 837 100
	lw	a5,-36(s0)
	srli	a4,a5,24
	.loc 1 837 89
	lw	a5,-28(s0)
	addi	a5,a5,3
	.loc 1 837 92
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 839 13
	li	a5,1073770496
	addi	a5,a5,24
	.loc 1 839 11
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 840 15
	lw	a5,-36(s0)
	andi	a4,a5,0xff
	lw	a5,-32(s0)
	sb	a4,0(a5)
	.loc 1 841 23
	lw	a5,-36(s0)
	srli	a4,a5,8
	.loc 1 841 12
	lw	a5,-32(s0)
	addi	a5,a5,1
	.loc 1 841 15
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 844 10
	sw	zero,-20(s0)
	.loc 1 844 5
	j	.L79
.L80:
	.loc 1 845 43
	lw	a4,-52(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 845 14
	lbu	a5,0(a5)
	mv	a0,a5
	call	EF_Ctrl_Get_Byte_Zero_Cnt
	mv	a4,a0
	.loc 1 845 12 discriminator 1
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 844 18 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L79:
	.loc 1 844 14 discriminator 1
	lw	a4,-20(s0)
	li	a5,5
	bleu	a4,a5,.L80
	.loc 1 847 28
	lw	a5,-36(s0)
	srli	a4,a5,16
	.loc 1 847 18
	lw	a5,-24(s0)
	xor	a5,a4,a5
	andi	a5,a5,63
	.loc 1 847 7
	bne	a5,zero,.L81
	.loc 1 849 14
	sw	zero,-20(s0)
	.loc 1 849 9
	j	.L82
.L83:
	.loc 1 850 23
	lw	a4,-52(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 850 19
	sw	a5,-36(s0)
	.loc 1 851 25
	li	a4,5
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 1 851 23
	lw	a4,-52(s0)
	add	a4,a4,a5
	.loc 1 851 16
	lw	a3,-52(s0)
	lw	a5,-20(s0)
	add	a5,a3,a5
	.loc 1 851 23
	lbu	a4,0(a4)
	.loc 1 851 19
	sb	a4,0(a5)
	.loc 1 852 18
	li	a4,5
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 1 852 16
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 1 852 21
	lw	a4,-36(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 849 22 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L82:
	.loc 1 849 18 discriminator 1
	lw	a4,-20(s0)
	li	a5,2
	bleu	a4,a5,.L83
	.loc 1 854 16
	li	a5,0
	j	.L84
.L81:
	.loc 1 856 16
	li	a5,1
.L84:
	.loc 1 858 1
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
.LFE34:
	.size	EF_Ctrl_Read_MAC_Address, .-EF_Ctrl_Read_MAC_Address
	.section	.text.EF_Ctrl_Read_MAC_Address_Raw,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Read_MAC_Address_Raw
	.type	EF_Ctrl_Read_MAC_Address_Raw, @function
EF_Ctrl_Read_MAC_Address_Raw:
.LFB35:
	.loc 1 869 1
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
	.loc 1 870 14
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 871 14
	lw	a5,-36(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 1 875 5
	call	EF_Ctrl_Load_Efuse_R0
	.loc 1 877 13
	li	a5,1073770496
	addi	a5,a5,20
	.loc 1 877 11
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 878 15
	lw	a5,-28(s0)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,0(a5)
	.loc 1 878 45
	lw	a5,-28(s0)
	srli	a4,a5,8
	.loc 1 878 34
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 1 878 37
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 878 72
	lw	a5,-28(s0)
	srli	a4,a5,16
	.loc 1 878 61
	lw	a5,-20(s0)
	addi	a5,a5,2
	.loc 1 878 64
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 878 100
	lw	a5,-28(s0)
	srli	a4,a5,24
	.loc 1 878 89
	lw	a5,-20(s0)
	addi	a5,a5,3
	.loc 1 878 92
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 880 13
	li	a5,1073770496
	addi	a5,a5,24
	.loc 1 880 11
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 881 15
	lw	a5,-28(s0)
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,0(a5)
	.loc 1 882 23
	lw	a5,-28(s0)
	srli	a4,a5,8
	.loc 1 882 12
	lw	a5,-24(s0)
	addi	a5,a5,1
	.loc 1 882 15
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 883 23
	lw	a5,-28(s0)
	srli	a4,a5,16
	.loc 1 883 12
	lw	a5,-24(s0)
	addi	a5,a5,2
	.loc 1 883 15
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 885 12
	li	a5,0
	.loc 1 886 1
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
	.size	EF_Ctrl_Read_MAC_Address_Raw, .-EF_Ctrl_Read_MAC_Address_Raw
	.section	.text.EF_Ctrl_Writelock_MAC_Address,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Writelock_MAC_Address
	.type	EF_Ctrl_Writelock_MAC_Address, @function
EF_Ctrl_Writelock_MAC_Address:
.LFB36:
	.loc 1 897 1
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
	.loc 1 901 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 903 13
	li	a5,1073770496
	addi	a5,a5,124
	.loc 1 903 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 904 11
	lw	a4,-20(s0)
	li	a5,262144
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 905 7
	li	a5,1073770496
	addi	a5,a5,124
	.loc 1 905 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 907 7
	lbu	a5,-33(s0)
	beq	a5,zero,.L89
	.loc 1 908 9
	call	EF_Ctrl_Program_Efuse_0
.L89:
	.loc 1 910 1
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
.LFE36:
	.size	EF_Ctrl_Writelock_MAC_Address, .-EF_Ctrl_Writelock_MAC_Address
	.section	.text.EF_Ctrl_Is_All_Bits_Zero,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Is_All_Bits_Zero
	.type	EF_Ctrl_Is_All_Bits_Zero, @function
EF_Ctrl_Is_All_Bits_Zero:
.LFB37:
	.loc 1 923 1
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
	sb	a5,-37(s0)
	mv	a5,a4
	sb	a5,-38(s0)
	.loc 1 924 14
	sw	zero,-20(s0)
	.loc 1 926 13
	lbu	a5,-37(s0)
	.loc 1 926 8
	lw	a4,-36(s0)
	srl	a5,a4,a5
	sw	a5,-36(s0)
	.loc 1 927 7
	lbu	a4,-38(s0)
	li	a5,31
	bleu	a4,a5,.L91
	.loc 1 928 13
	li	a5,-1
	sw	a5,-20(s0)
	j	.L92
.L91:
	.loc 1 930 16
	lbu	a5,-38(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 1 930 22
	addi	a5,a5,-1
	.loc 1 930 13
	sw	a5,-20(s0)
.L92:
	.loc 1 933 12
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	and	a5,a4,a5
	.loc 1 933 7
	bne	a5,zero,.L93
	.loc 1 934 16
	li	a5,1
	j	.L94
.L93:
	.loc 1 936 16
	li	a5,0
.L94:
	.loc 1 938 1
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
	.size	EF_Ctrl_Is_All_Bits_Zero, .-EF_Ctrl_Is_All_Bits_Zero
	.section	.text.EF_Ctrl_Is_MAC_Address_Slot_Empty,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Is_MAC_Address_Slot_Empty
	.type	EF_Ctrl_Is_MAC_Address_Slot_Empty, @function
EF_Ctrl_Is_MAC_Address_Slot_Empty:
.LFB38:
	.loc 1 950 1
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
	.loc 1 951 14
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 951 30
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 952 14
	sw	zero,-28(s0)
	.loc 1 952 27
	sw	zero,-32(s0)
	.loc 1 954 7
	lbu	a5,-33(s0)
	bne	a5,zero,.L96
	.loc 1 956 9
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 958 11
	lbu	a5,-34(s0)
	beq	a5,zero,.L97
	.loc 1 959 13
	call	EF_Ctrl_Load_Efuse_R0
.L97:
	.loc 1 961 15
	li	a5,1073770496
	addi	a5,a5,20
	.loc 1 961 13
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 962 15
	li	a5,1073770496
	addi	a5,a5,24
	.loc 1 962 13
	lw	a5,0(a5)
	sw	a5,-24(s0)
	j	.L98
.L96:
	.loc 1 963 13
	lbu	a4,-33(s0)
	li	a5,1
	bne	a4,a5,.L99
	.loc 1 965 9
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 967 11
	lbu	a5,-34(s0)
	beq	a5,zero,.L100
	.loc 1 968 13
	call	EF_Ctrl_Load_Efuse_R0
.L100:
	.loc 1 970 15
	li	a5,1073770496
	addi	a5,a5,108
	.loc 1 970 13
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 971 15
	li	a5,1073770496
	addi	a5,a5,112
	.loc 1 971 13
	lw	a5,0(a5)
	sw	a5,-24(s0)
	j	.L98
.L99:
	.loc 1 972 13
	lbu	a4,-33(s0)
	li	a5,2
	bne	a4,a5,.L98
	.loc 1 974 9
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 976 11
	lbu	a5,-34(s0)
	beq	a5,zero,.L101
	.loc 1 977 13
	call	EF_Ctrl_Load_Efuse_R0
.L101:
	.loc 1 979 15
	li	a5,1073770496
	addi	a5,a5,4
	.loc 1 979 13
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 980 15
	li	a5,1073770496
	addi	a5,a5,8
	.loc 1 980 13
	lw	a5,0(a5)
	sw	a5,-24(s0)
.L98:
	.loc 1 983 17
	li	a2,32
	li	a1,0
	lw	a0,-20(s0)
	call	EF_Ctrl_Is_All_Bits_Zero
	mv	a5,a0
	.loc 1 983 15 discriminator 1
	sw	a5,-28(s0)
	.loc 1 984 17
	li	a2,22
	li	a1,0
	lw	a0,-24(s0)
	call	EF_Ctrl_Is_All_Bits_Zero
	mv	a5,a0
	.loc 1 984 15 discriminator 1
	sw	a5,-32(s0)
	.loc 1 986 23
	lw	a5,-28(s0)
	beq	a5,zero,.L102
	.loc 1 986 23 is_stmt 0 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L102
	.loc 1 986 23 discriminator 3
	li	a5,1
	.loc 1 986 23
	j	.L103
.L102:
	.loc 1 986 23 discriminator 4
	li	a5,0
.L103:
	.loc 1 986 23 discriminator 6
	andi	a5,a5,0xff
	.loc 1 987 1 is_stmt 1
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
	.size	EF_Ctrl_Is_MAC_Address_Slot_Empty, .-EF_Ctrl_Is_MAC_Address_Slot_Empty
	.section	.text.EF_Ctrl_Write_MAC_Address_Opt,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Write_MAC_Address_Opt
	.type	EF_Ctrl_Write_MAC_Address_Opt, @function
EF_Ctrl_Write_MAC_Address_Opt:
.LFB39:
	.loc 1 1000 1
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
	mv	a4,a2
	sb	a5,-49(s0)
	mv	a5,a4
	sb	a5,-50(s0)
	.loc 1 1001 14
	lw	a5,-56(s0)
	sw	a5,-28(s0)
	.loc 1 1002 14
	lw	a5,-56(s0)
	addi	a5,a5,4
	sw	a5,-32(s0)
	.loc 1 1004 14
	sw	zero,-20(s0)
	.loc 1 1006 7
	lbu	a4,-49(s0)
	li	a5,2
	bleu	a4,a5,.L106
	.loc 1 1007 16
	li	a5,1
	j	.L107
.L106:
	.loc 1 1011 10
	sw	zero,-20(s0)
	.loc 1 1011 5
	j	.L108
.L109:
	.loc 1 1012 19
	lw	a4,-56(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 1012 15
	sw	a5,-36(s0)
	.loc 1 1013 21
	li	a4,5
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 1 1013 19
	lw	a4,-56(s0)
	add	a4,a4,a5
	.loc 1 1013 12
	lw	a3,-56(s0)
	lw	a5,-20(s0)
	add	a5,a3,a5
	.loc 1 1013 19
	lbu	a4,0(a4)
	.loc 1 1013 15
	sb	a4,0(a5)
	.loc 1 1014 14
	li	a4,5
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 1 1014 12
	lw	a4,-56(s0)
	add	a5,a4,a5
	.loc 1 1014 17
	lw	a4,-36(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1011 18 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L108:
	.loc 1 1011 14 discriminator 1
	lw	a4,-20(s0)
	li	a5,2
	bleu	a4,a5,.L109
	.loc 1 1016 7
	lbu	a4,-49(s0)
	li	a5,2
	bne	a4,a5,.L110
	.loc 1 1018 9
	call	EF_Ctrl_Sw_AHB_Clk_0
	j	.L111
.L110:
	.loc 1 1021 9
	call	EF_Ctrl_Sw_AHB_Clk_0
.L111:
	.loc 1 1025 7
	lbu	a5,-49(s0)
	bne	a5,zero,.L112
	.loc 1 1026 74
	lw	a5,-28(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1026 77
	slli	a4,a5,24
	.loc 1 1026 90
	lw	a5,-28(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1026 93
	slli	a5,a5,16
	.loc 1 1026 82
	or	a4,a4,a5
	.loc 1 1026 106
	lw	a5,-28(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1026 109
	slli	a5,a5,8
	.loc 1 1026 98
	or	a5,a4,a5
	.loc 1 1026 121
	lw	a4,-28(s0)
	lbu	a4,0(a4)
	.loc 1 1026 113
	or	a4,a5,a4
	.loc 1 1026 11
	li	a5,1073770496
	addi	a5,a5,20
	.loc 1 1026 64
	sw	a4,0(a5)
	j	.L113
.L112:
	.loc 1 1027 13
	lbu	a4,-49(s0)
	li	a5,1
	bne	a4,a5,.L114
	.loc 1 1028 74
	lw	a5,-28(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1028 77
	slli	a4,a5,24
	.loc 1 1028 90
	lw	a5,-28(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1028 93
	slli	a5,a5,16
	.loc 1 1028 82
	or	a4,a4,a5
	.loc 1 1028 106
	lw	a5,-28(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1028 109
	slli	a5,a5,8
	.loc 1 1028 98
	or	a5,a4,a5
	.loc 1 1028 121
	lw	a4,-28(s0)
	lbu	a4,0(a4)
	.loc 1 1028 113
	or	a4,a5,a4
	.loc 1 1028 11
	li	a5,1073770496
	addi	a5,a5,108
	.loc 1 1028 64
	sw	a4,0(a5)
	j	.L113
.L114:
	.loc 1 1029 13
	lbu	a4,-49(s0)
	li	a5,2
	bne	a4,a5,.L113
	.loc 1 1030 73
	lw	a5,-28(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 1030 76
	slli	a4,a5,24
	.loc 1 1030 89
	lw	a5,-28(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 1030 92
	slli	a5,a5,16
	.loc 1 1030 81
	or	a4,a4,a5
	.loc 1 1030 105
	lw	a5,-28(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1030 108
	slli	a5,a5,8
	.loc 1 1030 97
	or	a5,a4,a5
	.loc 1 1030 120
	lw	a4,-28(s0)
	lbu	a4,0(a4)
	.loc 1 1030 112
	or	a4,a5,a4
	.loc 1 1030 11
	li	a5,1073770496
	addi	a5,a5,4
	.loc 1 1030 63
	sw	a4,0(a5)
.L113:
	.loc 1 1033 19
	lw	a5,-32(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 1033 31
	lw	a5,-32(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 1033 34
	slli	a5,a5,8
	.loc 1 1033 22
	add	a5,a4,a5
	.loc 1 1033 11
	sw	a5,-36(s0)
	.loc 1 1034 8
	sw	zero,-24(s0)
	.loc 1 1035 10
	sw	zero,-20(s0)
	.loc 1 1035 5
	j	.L115
.L116:
	.loc 1 1036 43
	lw	a4,-56(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 1036 14
	lbu	a5,0(a5)
	mv	a0,a5
	call	EF_Ctrl_Get_Byte_Zero_Cnt
	mv	a4,a0
	.loc 1 1036 12 discriminator 1
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 1035 18 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L115:
	.loc 1 1035 14 discriminator 1
	lw	a4,-20(s0)
	li	a5,5
	bleu	a4,a5,.L116
	.loc 1 1038 24
	lw	a5,-24(s0)
	slli	a4,a5,16
	li	a5,4128768
	and	a5,a4,a5
	.loc 1 1038 11
	lw	a4,-36(s0)
	or	a5,a4,a5
	sw	a5,-36(s0)
	.loc 1 1040 7
	lbu	a5,-49(s0)
	bne	a5,zero,.L117
	.loc 1 1041 11
	li	a5,1073770496
	addi	a5,a5,24
	.loc 1 1041 64
	lw	a4,-36(s0)
	sw	a4,0(a5)
	j	.L118
.L117:
	.loc 1 1042 13
	lbu	a4,-49(s0)
	li	a5,1
	bne	a4,a5,.L119
	.loc 1 1043 11
	li	a5,1073770496
	addi	a5,a5,112
	.loc 1 1043 64
	lw	a4,-36(s0)
	sw	a4,0(a5)
	j	.L118
.L119:
	.loc 1 1044 13
	lbu	a4,-49(s0)
	li	a5,2
	bne	a4,a5,.L118
	.loc 1 1045 11
	li	a5,1073770496
	addi	a5,a5,8
	.loc 1 1045 63
	lw	a4,-36(s0)
	sw	a4,0(a5)
.L118:
	.loc 1 1048 7
	lbu	a5,-50(s0)
	beq	a5,zero,.L120
	.loc 1 1049 11
	lbu	a4,-49(s0)
	li	a5,2
	bne	a4,a5,.L121
	.loc 1 1050 13
	call	EF_Ctrl_Program_Efuse_0
	j	.L120
.L121:
	.loc 1 1052 13
	call	EF_Ctrl_Program_Efuse_0
.L120:
	.loc 1 1055 12
	li	a5,0
.L107:
	.loc 1 1056 1
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
.LFE39:
	.size	EF_Ctrl_Write_MAC_Address_Opt, .-EF_Ctrl_Write_MAC_Address_Opt
	.section	.text.EF_Ctrl_Read_MAC_Address_Opt,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Read_MAC_Address_Opt
	.type	EF_Ctrl_Read_MAC_Address_Opt, @function
EF_Ctrl_Read_MAC_Address_Opt:
.LFB40:
	.loc 1 1069 1
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
	mv	a4,a2
	sb	a5,-49(s0)
	mv	a5,a4
	sb	a5,-50(s0)
	.loc 1 1070 14
	lw	a5,-56(s0)
	sw	a5,-32(s0)
	.loc 1 1071 14
	lw	a5,-56(s0)
	addi	a5,a5,4
	sw	a5,-36(s0)
	.loc 1 1072 14
	sw	zero,-20(s0)
	.loc 1 1073 14
	sw	zero,-24(s0)
	.loc 1 1074 14
	sw	zero,-28(s0)
	.loc 1 1076 7
	lbu	a4,-49(s0)
	li	a5,2
	bleu	a4,a5,.L123
	.loc 1 1077 16
	li	a5,1
	j	.L124
.L123:
	.loc 1 1081 7
	lbu	a5,-50(s0)
	beq	a5,zero,.L125
	.loc 1 1082 11
	lbu	a4,-49(s0)
	li	a5,2
	bne	a4,a5,.L126
	.loc 1 1083 13
	call	EF_Ctrl_Load_Efuse_R0
	j	.L125
.L126:
	.loc 1 1085 13
	call	EF_Ctrl_Load_Efuse_R0
.L125:
	.loc 1 1089 7
	lbu	a5,-49(s0)
	bne	a5,zero,.L127
	.loc 1 1090 17
	li	a5,1073770496
	addi	a5,a5,20
	.loc 1 1090 15
	lw	a5,0(a5)
	sw	a5,-20(s0)
	j	.L128
.L127:
	.loc 1 1091 13
	lbu	a4,-49(s0)
	li	a5,1
	bne	a4,a5,.L129
	.loc 1 1092 17
	li	a5,1073770496
	addi	a5,a5,108
	.loc 1 1092 15
	lw	a5,0(a5)
	sw	a5,-20(s0)
	j	.L128
.L129:
	.loc 1 1093 13
	lbu	a4,-49(s0)
	li	a5,2
	bne	a4,a5,.L128
	.loc 1 1094 17
	li	a5,1073770496
	addi	a5,a5,4
	.loc 1 1094 15
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L128:
	.loc 1 1096 15
	lw	a5,-20(s0)
	andi	a4,a5,0xff
	lw	a5,-32(s0)
	sb	a4,0(a5)
	.loc 1 1096 45
	lw	a5,-20(s0)
	srli	a4,a5,8
	.loc 1 1096 34
	lw	a5,-32(s0)
	addi	a5,a5,1
	.loc 1 1096 37
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1096 72
	lw	a5,-20(s0)
	srli	a4,a5,16
	.loc 1 1096 61
	lw	a5,-32(s0)
	addi	a5,a5,2
	.loc 1 1096 64
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1096 100
	lw	a5,-20(s0)
	srli	a4,a5,24
	.loc 1 1096 89
	lw	a5,-32(s0)
	addi	a5,a5,3
	.loc 1 1096 92
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1098 7
	lbu	a5,-49(s0)
	bne	a5,zero,.L130
	.loc 1 1099 17
	li	a5,1073770496
	addi	a5,a5,24
	.loc 1 1099 15
	lw	a5,0(a5)
	sw	a5,-20(s0)
	j	.L131
.L130:
	.loc 1 1100 13
	lbu	a4,-49(s0)
	li	a5,1
	bne	a4,a5,.L132
	.loc 1 1101 17
	li	a5,1073770496
	addi	a5,a5,112
	.loc 1 1101 15
	lw	a5,0(a5)
	sw	a5,-20(s0)
	j	.L131
.L132:
	.loc 1 1102 13
	lbu	a4,-49(s0)
	li	a5,2
	bne	a4,a5,.L131
	.loc 1 1103 17
	li	a5,1073770496
	addi	a5,a5,8
	.loc 1 1103 15
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L131:
	.loc 1 1105 15
	lw	a5,-20(s0)
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	sb	a4,0(a5)
	.loc 1 1106 23
	lw	a5,-20(s0)
	srli	a4,a5,8
	.loc 1 1106 12
	lw	a5,-36(s0)
	addi	a5,a5,1
	.loc 1 1106 15
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1109 10
	sw	zero,-24(s0)
	.loc 1 1109 5
	j	.L133
.L134:
	.loc 1 1110 43
	lw	a4,-56(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 1 1110 14
	lbu	a5,0(a5)
	mv	a0,a5
	call	EF_Ctrl_Get_Byte_Zero_Cnt
	mv	a4,a0
	.loc 1 1110 12 discriminator 1
	lw	a5,-28(s0)
	add	a5,a5,a4
	sw	a5,-28(s0)
	.loc 1 1109 18 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L133:
	.loc 1 1109 14 discriminator 1
	lw	a4,-24(s0)
	li	a5,5
	bleu	a4,a5,.L134
	.loc 1 1112 28
	lw	a5,-20(s0)
	srli	a4,a5,16
	.loc 1 1112 18
	lw	a5,-28(s0)
	xor	a5,a4,a5
	andi	a5,a5,63
	.loc 1 1112 7
	bne	a5,zero,.L135
	.loc 1 1114 14
	sw	zero,-24(s0)
	.loc 1 1114 9
	j	.L136
.L137:
	.loc 1 1115 23
	lw	a4,-56(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 1115 19
	sw	a5,-20(s0)
	.loc 1 1116 25
	li	a4,5
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 1 1116 23
	lw	a4,-56(s0)
	add	a4,a4,a5
	.loc 1 1116 16
	lw	a3,-56(s0)
	lw	a5,-24(s0)
	add	a5,a3,a5
	.loc 1 1116 23
	lbu	a4,0(a4)
	.loc 1 1116 19
	sb	a4,0(a5)
	.loc 1 1117 18
	li	a4,5
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 1 1117 16
	lw	a4,-56(s0)
	add	a5,a4,a5
	.loc 1 1117 21
	lw	a4,-20(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 1114 22 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L136:
	.loc 1 1114 18 discriminator 1
	lw	a4,-24(s0)
	li	a5,2
	bleu	a4,a5,.L137
	.loc 1 1119 16
	li	a5,0
	j	.L124
.L135:
	.loc 1 1121 16
	li	a5,1
.L124:
	.loc 1 1123 1
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
.LFE40:
	.size	EF_Ctrl_Read_MAC_Address_Opt, .-EF_Ctrl_Read_MAC_Address_Opt
	.section	.text.EF_Ctrl_Read_Chip_ID,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Read_Chip_ID
	.type	EF_Ctrl_Read_Chip_ID, @function
EF_Ctrl_Read_Chip_ID:
.LFB41:
	.loc 1 1134 1
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
	.loc 1 1135 11
	lw	a5,-20(s0)
	addi	a5,a5,6
	.loc 1 1135 14
	sb	zero,0(a5)
	.loc 1 1136 11
	lw	a5,-20(s0)
	addi	a5,a5,7
	.loc 1 1136 14
	sb	zero,0(a5)
	.loc 1 1137 12
	lw	a0,-20(s0)
	call	EF_Ctrl_Read_MAC_Address
	mv	a5,a0
	.loc 1 1138 1
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
	.size	EF_Ctrl_Read_Chip_ID, .-EF_Ctrl_Read_Chip_ID
	.section	.text.EF_Ctrl_Read_Device_Info,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Read_Device_Info
	.type	EF_Ctrl_Read_Device_Info, @function
EF_Ctrl_Read_Device_Info:
.LFB42:
	.loc 1 1149 1
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
	.loc 1 1151 15
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1154 5
	call	EF_Ctrl_Load_Efuse_R0
	.loc 1 1156 13
	li	a5,1073770496
	addi	a5,a5,24
	.loc 1 1156 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1157 7
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 1158 1
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
.LFE42:
	.size	EF_Ctrl_Read_Device_Info, .-EF_Ctrl_Read_Device_Info
	.section	.text.EF_Ctrl_Is_CapCode_Slot_Empty,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Is_CapCode_Slot_Empty
	.type	EF_Ctrl_Is_CapCode_Slot_Empty, @function
EF_Ctrl_Is_CapCode_Slot_Empty:
.LFB43:
	.loc 1 1170 1
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
	.loc 1 1171 14
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 1174 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 1176 7
	lbu	a5,-34(s0)
	beq	a5,zero,.L142
	.loc 1 1177 9
	call	EF_Ctrl_Load_Efuse_R0
.L142:
	.loc 1 1180 7
	lbu	a5,-33(s0)
	bne	a5,zero,.L143
	.loc 1 1181 14
	li	a5,1073770496
	addi	a5,a5,12
	.loc 1 1181 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1182 16
	li	a2,8
	li	a1,2
	lw	a0,-20(s0)
	call	EF_Ctrl_Is_All_Bits_Zero
	mv	a5,a0
	j	.L144
.L143:
	.loc 1 1183 13
	lbu	a4,-33(s0)
	li	a5,1
	bne	a4,a5,.L145
	.loc 1 1184 14
	li	a5,1073770496
	addi	a5,a5,112
	.loc 1 1184 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1185 16
	li	a2,8
	li	a1,22
	lw	a0,-20(s0)
	call	EF_Ctrl_Is_All_Bits_Zero
	mv	a5,a0
	j	.L144
.L145:
	.loc 1 1186 13
	lbu	a4,-33(s0)
	li	a5,2
	bne	a4,a5,.L146
	.loc 1 1187 14
	li	a5,1073770496
	addi	a5,a5,8
	.loc 1 1187 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1188 16
	li	a2,8
	li	a1,22
	lw	a0,-20(s0)
	call	EF_Ctrl_Is_All_Bits_Zero
	mv	a5,a0
	j	.L144
.L146:
	.loc 1 1191 12
	li	a5,0
.L144:
	.loc 1 1192 1
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
.LFE43:
	.size	EF_Ctrl_Is_CapCode_Slot_Empty, .-EF_Ctrl_Is_CapCode_Slot_Empty
	.section	.text.EF_Ctrl_Write_CapCode_Opt,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Write_CapCode_Opt
	.type	EF_Ctrl_Write_CapCode_Opt, @function
EF_Ctrl_Write_CapCode_Opt:
.LFB44:
	.loc 1 1205 1
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
	.loc 1 1209 7
	lbu	a4,-33(s0)
	li	a5,2
	bleu	a4,a5,.L148
	.loc 1 1210 16
	li	a5,1
	j	.L149
.L148:
	.loc 1 1214 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 1215 5
	call	EF_Ctrl_Load_Efuse_R0
	.loc 1 1217 7
	lbu	a5,-33(s0)
	bne	a5,zero,.L150
	.loc 1 1218 14
	li	a5,1073770496
	addi	a5,a5,12
	.loc 1 1218 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	j	.L151
.L150:
	.loc 1 1219 13
	lbu	a4,-33(s0)
	li	a5,1
	bne	a4,a5,.L152
	.loc 1 1220 14
	li	a5,1073770496
	addi	a5,a5,112
	.loc 1 1220 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	j	.L151
.L152:
	.loc 1 1221 13
	lbu	a4,-33(s0)
	li	a5,2
	bne	a4,a5,.L151
	.loc 1 1222 14
	li	a5,1073770496
	addi	a5,a5,8
	.loc 1 1222 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L151:
	.loc 1 1225 9
	lbu	a5,-34(s0)
	sb	a5,-21(s0)
	.loc 1 1226 13
	lbu	a5,-34(s0)
	li	a1,6
	mv	a0,a5
	call	EF_Ctrl_Get_Trim_Parity
	mv	a5,a0
	.loc 1 1226 45 discriminator 1
	slli	a5,a5,6
	.loc 1 1226 9 discriminator 1
	slli	a4,a5,24
	srai	a4,a4,24
	lb	a5,-21(s0)
	or	a5,a4,a5
	slli	a5,a5,24
	srai	a5,a5,24
	sb	a5,-21(s0)
	.loc 1 1227 9
	lbu	a5,-21(s0)
	ori	a5,a5,-128
	sb	a5,-21(s0)
	.loc 1 1229 7
	lbu	a5,-33(s0)
	bne	a5,zero,.L153
	.loc 1 1230 74
	lbu	a5,-21(s0)
	slli	a3,a5,2
	.loc 1 1230 11
	li	a5,1073770496
	addi	a5,a5,12
	.loc 1 1230 68
	lw	a4,-20(s0)
	or	a4,a3,a4
	.loc 1 1230 63
	sw	a4,0(a5)
	j	.L154
.L153:
	.loc 1 1231 13
	lbu	a4,-33(s0)
	li	a5,1
	bne	a4,a5,.L155
	.loc 1 1232 75
	lbu	a5,-21(s0)
	slli	a3,a5,22
	.loc 1 1232 11
	li	a5,1073770496
	addi	a5,a5,112
	.loc 1 1232 69
	lw	a4,-20(s0)
	or	a4,a3,a4
	.loc 1 1232 64
	sw	a4,0(a5)
	j	.L154
.L155:
	.loc 1 1233 13
	lbu	a4,-33(s0)
	li	a5,2
	bne	a4,a5,.L154
	.loc 1 1234 74
	lbu	a5,-21(s0)
	slli	a3,a5,22
	.loc 1 1234 11
	li	a5,1073770496
	addi	a5,a5,8
	.loc 1 1234 68
	lw	a4,-20(s0)
	or	a4,a3,a4
	.loc 1 1234 63
	sw	a4,0(a5)
.L154:
	.loc 1 1237 7
	lbu	a5,-35(s0)
	beq	a5,zero,.L158
	.loc 1 1238 9
	call	EF_Ctrl_Program_Efuse_0
.L158:
	.loc 1 1240 10
	nop
.L157:
	.loc 1 1240 16 discriminator 2
	call	EF_Ctrl_Busy
	mv	a5,a0
	mv	a4,a5
	.loc 1 1240 14 discriminator 2
	li	a5,1
	beq	a4,a5,.L157
	.loc 1 1242 12
	li	a5,0
.L149:
	.loc 1 1243 1
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
.LFE44:
	.size	EF_Ctrl_Write_CapCode_Opt, .-EF_Ctrl_Write_CapCode_Opt
	.section	.text.EF_Ctrl_Read_CapCode_Opt,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Read_CapCode_Opt
	.type	EF_Ctrl_Read_CapCode_Opt, @function
EF_Ctrl_Read_CapCode_Opt:
.LFB45:
	.loc 1 1256 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-40(s0)
	mv	a4,a2
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 1258 30
	addi	a5,s0,-24
	sw	a5,-20(s0)
	.loc 1 1260 7
	lbu	a4,-33(s0)
	li	a5,2
	bleu	a4,a5,.L160
	.loc 1 1261 16
	li	a5,1
	j	.L167
.L160:
	.loc 1 1265 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 1267 7
	lbu	a5,-34(s0)
	beq	a5,zero,.L162
	.loc 1 1268 9
	call	EF_Ctrl_Load_Efuse_R0
.L162:
	.loc 1 1271 7
	lbu	a5,-33(s0)
	bne	a5,zero,.L163
	.loc 1 1272 15
	li	a5,1073770496
	addi	a5,a5,12
	lw	a5,0(a5)
	.loc 1 1272 70
	srli	a5,a5,2
	.loc 1 1272 12
	sw	a5,-24(s0)
	j	.L164
.L163:
	.loc 1 1273 13
	lbu	a4,-33(s0)
	li	a5,1
	bne	a4,a5,.L165
	.loc 1 1274 15
	li	a5,1073770496
	addi	a5,a5,112
	lw	a5,0(a5)
	.loc 1 1274 71
	srli	a5,a5,22
	.loc 1 1274 12
	sw	a5,-24(s0)
	j	.L164
.L165:
	.loc 1 1275 13
	lbu	a4,-33(s0)
	li	a5,2
	bne	a4,a5,.L164
	.loc 1 1276 15
	li	a5,1073770496
	addi	a5,a5,8
	lw	a5,0(a5)
	.loc 1 1276 70
	srli	a5,a5,22
	.loc 1 1276 12
	sw	a5,-24(s0)
.L164:
	.loc 1 1279 8
	lw	a5,-20(s0)
	lw	a5,0(a5)
	andi	a5,a5,128
	.loc 1 1279 7
	beq	a5,zero,.L166
	.loc 1 1280 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	srli	a5,a5,6
	andi	a5,a5,1
	andi	a5,a5,0xff
	mv	s1,a5
	.loc 1 1280 54
	lw	a5,-20(s0)
	lw	a5,0(a5)
	andi	a5,a5,63
	andi	a5,a5,0xff
	.loc 1 1280 26
	li	a1,6
	mv	a0,a5
	call	EF_Ctrl_Get_Trim_Parity
	mv	a5,a0
	.loc 1 1280 11 discriminator 1
	bne	s1,a5,.L166
	.loc 1 1281 23
	lw	a5,-20(s0)
	lw	a5,0(a5)
	andi	a5,a5,63
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 1 1281 18
	lw	a5,-40(s0)
	sb	a4,0(a5)
	.loc 1 1282 20
	li	a5,0
	j	.L167
.L166:
	.loc 1 1285 12
	li	a5,1
.L167:
	.loc 1 1286 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE45:
	.size	EF_Ctrl_Read_CapCode_Opt, .-EF_Ctrl_Read_CapCode_Opt
	.section	.text.EF_Ctrl_Is_PowerOffset_Slot_Empty,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Is_PowerOffset_Slot_Empty
	.type	EF_Ctrl_Is_PowerOffset_Slot_Empty, @function
EF_Ctrl_Is_PowerOffset_Slot_Empty:
.LFB46:
	.loc 1 1298 1
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
	.loc 1 1299 14
	li	a5,-1
	sw	a5,-28(s0)
	.loc 1 1300 14
	sw	zero,-20(s0)
	.loc 1 1300 27
	sw	zero,-24(s0)
	.loc 1 1303 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 1305 7
	lbu	a5,-34(s0)
	beq	a5,zero,.L169
	.loc 1 1306 9
	call	EF_Ctrl_Load_Efuse_R0
.L169:
	.loc 1 1309 7
	lbu	a5,-33(s0)
	bne	a5,zero,.L170
	.loc 1 1310 15
	li	a5,1073770496
	addi	a5,a5,120
	.loc 1 1310 13
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 1311 21
	li	a2,17
	li	a1,15
	lw	a0,-28(s0)
	call	EF_Ctrl_Is_All_Bits_Zero
	mv	a5,a0
	.loc 1 1311 19 discriminator 1
	sw	a5,-20(s0)
	.loc 1 1312 19
	li	a5,1
	sw	a5,-24(s0)
	j	.L171
.L170:
	.loc 1 1313 13
	lbu	a4,-33(s0)
	li	a5,1
	bne	a4,a5,.L172
	.loc 1 1314 15
	li	a5,1073770496
	addi	a5,a5,116
	.loc 1 1314 13
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 1315 21
	li	a2,16
	li	a1,0
	lw	a0,-28(s0)
	call	EF_Ctrl_Is_All_Bits_Zero
	mv	a5,a0
	.loc 1 1315 19 discriminator 1
	sw	a5,-20(s0)
	.loc 1 1317 15
	li	a5,1073770496
	addi	a5,a5,12
	.loc 1 1317 13
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 1318 21
	li	a2,1
	li	a1,0
	lw	a0,-28(s0)
	call	EF_Ctrl_Is_All_Bits_Zero
	mv	a5,a0
	.loc 1 1318 19 discriminator 1
	sw	a5,-24(s0)
	j	.L171
.L172:
	.loc 1 1319 13
	lbu	a4,-33(s0)
	li	a5,2
	bne	a4,a5,.L171
	.loc 1 1320 15
	li	a5,1073770496
	addi	a5,a5,116
	.loc 1 1320 13
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 1321 21
	li	a2,16
	li	a1,16
	lw	a0,-28(s0)
	call	EF_Ctrl_Is_All_Bits_Zero
	mv	a5,a0
	.loc 1 1321 19 discriminator 1
	sw	a5,-20(s0)
	.loc 1 1323 15
	li	a5,1073770496
	addi	a5,a5,12
	.loc 1 1323 13
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 1324 21
	li	a2,1
	li	a1,1
	lw	a0,-28(s0)
	call	EF_Ctrl_Is_All_Bits_Zero
	mv	a5,a0
	.loc 1 1324 19 discriminator 1
	sw	a5,-24(s0)
.L171:
	.loc 1 1327 23
	lw	a5,-20(s0)
	beq	a5,zero,.L173
	.loc 1 1327 23 is_stmt 0 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L173
	.loc 1 1327 23 discriminator 3
	li	a5,1
	.loc 1 1327 23
	j	.L174
.L173:
	.loc 1 1327 23 discriminator 4
	li	a5,0
.L174:
	.loc 1 1327 23 discriminator 6
	andi	a5,a5,0xff
	.loc 1 1328 1 is_stmt 1
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
	.size	EF_Ctrl_Is_PowerOffset_Slot_Empty, .-EF_Ctrl_Is_PowerOffset_Slot_Empty
	.section	.text.EF_Ctrl_Write_PowerOffset_Opt,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Write_PowerOffset_Opt
	.type	EF_Ctrl_Write_PowerOffset_Opt, @function
EF_Ctrl_Write_PowerOffset_Opt:
.LFB47:
	.loc 1 1341 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	sw	s2,148(sp)
	sw	s3,144(sp)
	sw	s4,140(sp)
	sw	s5,136(sp)
	sw	s6,132(sp)
	sw	s7,128(sp)
	sw	s8,124(sp)
	sw	s9,120(sp)
	sw	s10,116(sp)
	sw	s11,112(sp)
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
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-88(s0)
	mv	a4,a2
	sb	a5,-81(s0)
	mv	a5,a4
	sb	a5,-82(s0)
	.loc 1 1342 14
	li	a5,0
	li	a6,0
	sw	a5,-72(s0)
	sw	a6,-68(s0)
	.loc 1 1343 14
	sw	zero,-52(s0)
	.loc 1 1344 14
	sw	a5,-64(s0)
	sw	a6,-60(s0)
	.loc 1 1347 7
	lbu	a4,-81(s0)
	li	a5,2
	bleu	a4,a5,.L177
	.loc 1 1348 16
	li	a5,1
	j	.L178
.L177:
	.loc 1 1351 10
	sw	zero,-52(s0)
	.loc 1 1351 5
	j	.L179
.L184:
	.loc 1 1353 21
	lw	a4,-88(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	lb	a4,0(a5)
	.loc 1 1353 11
	li	a5,15
	ble	a4,a5,.L180
	.loc 1 1354 22
	lw	a4,-88(s0)
	lw	a5,-52(s0)
	add	a4,a4,a5
	.loc 1 1354 25
	li	a5,15
	sb	a5,0(a4)
.L180:
	.loc 1 1356 21
	lw	a4,-88(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	lb	a4,0(a5)
	.loc 1 1356 11
	li	a5,-16
	bge	a4,a5,.L181
	.loc 1 1357 22
	lw	a4,-88(s0)
	lw	a5,-52(s0)
	add	a4,a4,a5
	.loc 1 1357 25
	li	a5,-16
	sb	a5,0(a4)
.L181:
	.loc 1 1359 35
	lw	a4,-88(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	lb	a5,0(a5)
	.loc 1 1359 39
	andi	a5,a5,0xff
	mv	t3,a5
	li	t4,0
	.loc 1 1359 14
	andi	t1,t3,31
	andi	t2,t4,0
	.loc 1 1359 50
	lw	a4,-52(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a3,a5,a4
	.loc 1 1359 12
	addi	a5,a3,-32
	blt	a5,zero,.L182
	sll	a5,t1,a5
	sw	a5,-68(s0)
	sw	zero,-72(s0)
	j	.L183
.L182:
	srli	a4,t1,1
	li	a5,31
	sub	a5,a5,a3
	srl	a4,a4,a5
	sll	a5,t2,a3
	add	a5,a5,a4
	sw	a5,-68(s0)
	sll	a5,t1,a3
	sw	a5,-72(s0)
.L183:
	.loc 1 1360 14
	lw	a4,-64(s0)
	lw	a5,-60(s0)
	lw	a2,-72(s0)
	lw	a3,-68(s0)
	add	a6,a4,a2
	mv	a1,a6
	sltu	a1,a1,a4
	add	a7,a5,a3
	add	a5,a1,a7
	mv	a7,a5
	sw	a6,-64(s0)
	sw	a7,-60(s0)
	.loc 1 1351 18 discriminator 2
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.L179:
	.loc 1 1351 14 discriminator 1
	lw	a4,-52(s0)
	li	a5,2
	bleu	a4,a5,.L184
	.loc 1 1362 12
	lw	a5,-64(s0)
	li	a1,15
	mv	a0,a5
	call	EF_Ctrl_Get_Trim_Parity
	mv	a5,a0
	sb	a5,-73(s0)
	.loc 1 1364 7
	lbu	a5,-81(s0)
	bne	a5,zero,.L185
	.loc 1 1365 14
	li	a5,1073770496
	addi	a5,a5,120
	lw	a5,0(a5)
	.loc 1 1365 12
	sw	a5,-72(s0)
	sw	zero,-68(s0)
	.loc 1 1366 20
	lw	a5,-64(s0)
	srli	a5,a5,16
	lw	a4,-60(s0)
	slli	s5,a4,16
	add	s5,a5,s5
	lw	a5,-64(s0)
	slli	s4,a5,16
	.loc 1 1366 12
	lw	a5,-72(s0)
	or	a5,a5,s4
	sw	a5,-96(s0)
	lw	a5,-68(s0)
	or	a5,a5,s5
	sw	a5,-92(s0)
	lw	a5,-96(s0)
	lw	a6,-92(s0)
	sw	a5,-72(s0)
	sw	a6,-68(s0)
	.loc 1 1367 12
	lw	a4,-72(s0)
	li	a5,32768
	or	a5,a4,a5
	sw	a5,-104(s0)
	lw	a5,-68(s0)
	ori	a5,a5,0
	sw	a5,-100(s0)
	lw	a5,-104(s0)
	lw	a6,-100(s0)
	sw	a5,-72(s0)
	sw	a6,-68(s0)
	.loc 1 1368 31
	lbu	a5,-73(s0)
	.loc 1 1368 14
	slli	a5,a5,31
	mv	s10,a5
	li	s11,0
	.loc 1 1368 12
	lw	a5,-72(s0)
	or	a5,a5,s10
	sw	a5,-112(s0)
	lw	a5,-68(s0)
	or	a5,a5,s11
	sw	a5,-108(s0)
	lw	a5,-112(s0)
	lw	a6,-108(s0)
	sw	a5,-72(s0)
	sw	a6,-68(s0)
	.loc 1 1369 11
	li	a5,1073770496
	addi	a5,a5,120
	.loc 1 1369 64
	lw	a4,-72(s0)
	sw	a4,0(a5)
	j	.L186
.L185:
	.loc 1 1370 13
	lbu	a4,-81(s0)
	li	a5,1
	bne	a4,a5,.L187
	.loc 1 1371 14
	li	a5,1073770496
	addi	a5,a5,116
	lw	a5,0(a5)
	.loc 1 1371 12
	sw	a5,-72(s0)
	sw	zero,-68(s0)
	.loc 1 1372 12
	lw	a4,-72(s0)
	lw	a5,-64(s0)
	or	a5,a4,a5
	sw	a5,-120(s0)
	lw	a4,-68(s0)
	lw	a5,-60(s0)
	or	a5,a4,a5
	sw	a5,-116(s0)
	lw	a5,-120(s0)
	lw	a6,-116(s0)
	sw	a5,-72(s0)
	sw	a6,-68(s0)
	.loc 1 1373 31
	lbu	a5,-73(s0)
	.loc 1 1373 14
	slli	a5,a5,15
	mv	s8,a5
	li	s9,0
	.loc 1 1373 12
	lw	a5,-72(s0)
	or	a5,a5,s8
	sw	a5,-128(s0)
	lw	a5,-68(s0)
	or	a5,a5,s9
	sw	a5,-124(s0)
	lw	a5,-128(s0)
	lw	a6,-124(s0)
	sw	a5,-72(s0)
	sw	a6,-68(s0)
	.loc 1 1374 11
	li	a5,1073770496
	addi	a5,a5,116
	.loc 1 1374 64
	lw	a4,-72(s0)
	sw	a4,0(a5)
	.loc 1 1376 14
	li	a5,1073770496
	addi	a5,a5,12
	lw	a5,0(a5)
	.loc 1 1376 12
	sw	a5,-72(s0)
	sw	zero,-68(s0)
	.loc 1 1377 12
	lw	a5,-72(s0)
	ori	a5,a5,1
	sw	a5,-136(s0)
	lw	a5,-68(s0)
	ori	a5,a5,0
	sw	a5,-132(s0)
	lw	a5,-136(s0)
	lw	a6,-132(s0)
	sw	a5,-72(s0)
	sw	a6,-68(s0)
	.loc 1 1378 11
	li	a5,1073770496
	addi	a5,a5,12
	.loc 1 1378 63
	lw	a4,-72(s0)
	sw	a4,0(a5)
	j	.L186
.L187:
	.loc 1 1379 13
	lbu	a4,-81(s0)
	li	a5,2
	bne	a4,a5,.L186
	.loc 1 1380 14
	li	a5,1073770496
	addi	a5,a5,116
	lw	a5,0(a5)
	.loc 1 1380 12
	sw	a5,-72(s0)
	sw	zero,-68(s0)
	.loc 1 1381 20
	lw	a5,-64(s0)
	srli	a5,a5,16
	lw	a4,-60(s0)
	slli	s3,a4,16
	add	s3,a5,s3
	lw	a5,-64(s0)
	slli	s2,a5,16
	.loc 1 1381 12
	lw	a5,-72(s0)
	or	a5,a5,s2
	sw	a5,-144(s0)
	lw	a5,-68(s0)
	or	a5,a5,s3
	sw	a5,-140(s0)
	lw	a5,-144(s0)
	lw	a6,-140(s0)
	sw	a5,-72(s0)
	sw	a6,-68(s0)
	.loc 1 1382 31
	lbu	a5,-73(s0)
	.loc 1 1382 14
	slli	a5,a5,31
	mv	s6,a5
	li	s7,0
	.loc 1 1382 12
	lw	a5,-72(s0)
	or	a5,a5,s6
	sw	a5,-152(s0)
	lw	a5,-68(s0)
	or	a5,a5,s7
	sw	a5,-148(s0)
	lw	a5,-152(s0)
	lw	a6,-148(s0)
	sw	a5,-72(s0)
	sw	a6,-68(s0)
	.loc 1 1383 11
	li	a5,1073770496
	addi	a5,a5,116
	.loc 1 1383 64
	lw	a4,-72(s0)
	sw	a4,0(a5)
	.loc 1 1385 14
	li	a5,1073770496
	addi	a5,a5,12
	lw	a5,0(a5)
	.loc 1 1385 12
	sw	a5,-72(s0)
	sw	zero,-68(s0)
	.loc 1 1386 12
	lw	a5,-72(s0)
	ori	a5,a5,2
	sw	a5,-160(s0)
	lw	a5,-68(s0)
	ori	a5,a5,0
	sw	a5,-156(s0)
	lw	a5,-160(s0)
	lw	a6,-156(s0)
	sw	a5,-72(s0)
	sw	a6,-68(s0)
	.loc 1 1387 11
	li	a5,1073770496
	addi	a5,a5,12
	.loc 1 1387 63
	lw	a4,-72(s0)
	sw	a4,0(a5)
.L186:
	.loc 1 1390 7
	lbu	a5,-82(s0)
	beq	a5,zero,.L190
	.loc 1 1391 9
	call	EF_Ctrl_Program_Efuse_0
.L190:
	.loc 1 1394 10
	nop
.L189:
	.loc 1 1394 16 discriminator 2
	call	EF_Ctrl_Busy
	mv	a5,a0
	mv	a4,a5
	.loc 1 1394 14 discriminator 2
	li	a5,1
	beq	a4,a5,.L189
	.loc 1 1396 12
	li	a5,0
.L178:
	.loc 1 1397 1
	mv	a0,a5
	lw	ra,156(sp)
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	lw	s2,148(sp)
	.cfi_restore 18
	lw	s3,144(sp)
	.cfi_restore 19
	lw	s4,140(sp)
	.cfi_restore 20
	lw	s5,136(sp)
	.cfi_restore 21
	lw	s6,132(sp)
	.cfi_restore 22
	lw	s7,128(sp)
	.cfi_restore 23
	lw	s8,124(sp)
	.cfi_restore 24
	lw	s9,120(sp)
	.cfi_restore 25
	lw	s10,116(sp)
	.cfi_restore 26
	lw	s11,112(sp)
	.cfi_restore 27
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE47:
	.size	EF_Ctrl_Write_PowerOffset_Opt, .-EF_Ctrl_Write_PowerOffset_Opt
	.section	.text.EF_Ctrl_Read_PowerOffset_Opt,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Read_PowerOffset_Opt
	.type	EF_Ctrl_Read_PowerOffset_Opt, @function
EF_Ctrl_Read_PowerOffset_Opt:
.LFB48:
	.loc 1 1410 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s2,84(sp)
	sw	s3,80(sp)
	sw	s4,76(sp)
	sw	s5,72(sp)
	sw	s6,68(sp)
	sw	s7,64(sp)
	sw	s8,60(sp)
	sw	s9,56(sp)
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
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-88(s0)
	mv	a4,a2
	sb	a5,-81(s0)
	mv	a5,a4
	sb	a5,-82(s0)
	.loc 1 1411 14
	li	a5,0
	li	a6,0
	sw	a5,-56(s0)
	sw	a6,-52(s0)
	.loc 1 1413 14
	sw	zero,-68(s0)
	.loc 1 1414 13
	sb	zero,-61(s0)
	.loc 1 1414 18
	sb	zero,-62(s0)
	.loc 1 1417 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 1419 7
	lbu	a5,-82(s0)
	beq	a5,zero,.L192
	.loc 1 1420 9
	call	EF_Ctrl_Load_Efuse_R0
.L192:
	.loc 1 1423 7
	lbu	a5,-81(s0)
	bne	a5,zero,.L193
	.loc 1 1424 14
	li	a5,1073770496
	addi	a5,a5,120
	.loc 1 1424 12
	lw	a5,0(a5)
	sw	a5,-68(s0)
	.loc 1 1425 16
	lw	a5,-68(s0)
	srli	a5,a5,15
	.loc 1 1425 21
	andi	a5,a5,0xff
	.loc 1 1425 11
	andi	a5,a5,1
	sb	a5,-61(s0)
	.loc 1 1426 28
	lw	a5,-68(s0)
	srli	a5,a5,16
	.loc 1 1426 33
	mv	s8,a5
	li	s9,0
	.loc 1 1426 23
	li	a5,32768
	addi	a5,a5,-1
	and	a5,s8,a5
	sw	a5,-56(s0)
	andi	a5,s9,0
	sw	a5,-52(s0)
	.loc 1 1427 20
	lw	a5,-68(s0)
	srli	a5,a5,31
	.loc 1 1427 15
	sb	a5,-62(s0)
	j	.L194
.L193:
	.loc 1 1428 13
	lbu	a4,-81(s0)
	li	a5,1
	bne	a4,a5,.L195
	.loc 1 1429 14
	li	a5,1073770496
	addi	a5,a5,116
	.loc 1 1429 12
	lw	a5,0(a5)
	sw	a5,-68(s0)
	.loc 1 1430 32
	lw	a5,-68(s0)
	mv	s6,a5
	li	s7,0
	.loc 1 1430 23
	li	a5,32768
	addi	a5,a5,-1
	and	a5,s6,a5
	sw	a5,-56(s0)
	andi	a5,s7,0
	sw	a5,-52(s0)
	.loc 1 1431 20
	lw	a5,-68(s0)
	srli	a5,a5,15
	.loc 1 1431 25
	andi	a5,a5,0xff
	.loc 1 1431 15
	andi	a5,a5,1
	sb	a5,-62(s0)
	.loc 1 1433 14
	li	a5,1073770496
	addi	a5,a5,12
	.loc 1 1433 12
	lw	a5,0(a5)
	sw	a5,-68(s0)
	.loc 1 1434 20
	lw	a5,-68(s0)
	andi	a5,a5,0xff
	.loc 1 1434 11
	andi	a5,a5,1
	sb	a5,-61(s0)
	j	.L194
.L195:
	.loc 1 1435 13
	lbu	a4,-81(s0)
	li	a5,2
	bne	a4,a5,.L194
	.loc 1 1436 14
	li	a5,1073770496
	addi	a5,a5,116
	.loc 1 1436 12
	lw	a5,0(a5)
	sw	a5,-68(s0)
	.loc 1 1437 28
	lw	a5,-68(s0)
	srli	a5,a5,16
	.loc 1 1437 33
	mv	s4,a5
	li	s5,0
	.loc 1 1437 23
	li	a5,32768
	addi	a5,a5,-1
	and	a5,s4,a5
	sw	a5,-56(s0)
	andi	a5,s5,0
	sw	a5,-52(s0)
	.loc 1 1438 20
	lw	a5,-68(s0)
	srli	a5,a5,31
	.loc 1 1438 15
	sb	a5,-62(s0)
	.loc 1 1440 14
	li	a5,1073770496
	addi	a5,a5,12
	.loc 1 1440 12
	lw	a5,0(a5)
	sw	a5,-68(s0)
	.loc 1 1441 16
	lw	a5,-68(s0)
	srli	a5,a5,1
	.loc 1 1441 20
	andi	a5,a5,0xff
	.loc 1 1441 11
	andi	a5,a5,1
	sb	a5,-61(s0)
.L194:
	.loc 1 1444 7
	lbu	a5,-61(s0)
	beq	a5,zero,.L196
	.loc 1 1445 20
	lw	a5,-56(s0)
	li	a1,15
	mv	a0,a5
	call	EF_Ctrl_Get_Trim_Parity
	mv	a5,a0
	mv	a4,a5
	.loc 1 1445 11 discriminator 1
	lbu	a5,-62(s0)
	bne	a5,a4,.L196
	.loc 1 1446 18
	sw	zero,-60(s0)
	.loc 1 1446 13
	j	.L197
.L202:
	.loc 1 1447 40
	lw	a4,-60(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	.loc 1 1447 36
	addi	a4,a5,-32
	blt	a4,zero,.L198
	lw	a5,-52(s0)
	srl	s2,a5,a4
	li	s3,0
	j	.L199
.L198:
	lw	a4,-52(s0)
	slli	a3,a4,1
	li	a4,31
	sub	a4,a4,a5
	sll	a4,a3,a4
	lw	a3,-56(s0)
	srl	s2,a3,a5
	add	s2,a4,s2
	lw	a4,-52(s0)
	srl	s3,a4,a5
.L199:
	.loc 1 1447 44
	mv	a5,s2
	.loc 1 1447 20
	andi	a5,a5,31
	sw	a5,-68(s0)
	.loc 1 1448 19
	lw	a4,-68(s0)
	li	a5,15
	bleu	a4,a5,.L200
	.loc 1 1449 37
	lw	a5,-68(s0)
	andi	a5,a5,0xff
	addi	a5,a5,-32
	andi	a3,a5,0xff
	.loc 1 1449 30
	lw	a4,-88(s0)
	lw	a5,-60(s0)
	add	a5,a4,a5
	.loc 1 1449 37
	slli	a4,a3,24
	srai	a4,a4,24
	.loc 1 1449 33
	sb	a4,0(a5)
	j	.L201
.L200:
	.loc 1 1451 30
	lw	a4,-88(s0)
	lw	a5,-60(s0)
	add	a5,a4,a5
	.loc 1 1451 33
	lw	a4,-68(s0)
	slli	a4,a4,24
	srai	a4,a4,24
	sb	a4,0(a5)
.L201:
	.loc 1 1446 26 discriminator 2
	lw	a5,-60(s0)
	addi	a5,a5,1
	sw	a5,-60(s0)
.L197:
	.loc 1 1446 22 discriminator 1
	lw	a4,-60(s0)
	li	a5,2
	bleu	a4,a5,.L202
	.loc 1 1454 20
	li	a5,0
	j	.L203
.L196:
	.loc 1 1457 12
	li	a5,1
.L203:
	.loc 1 1458 1
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	lw	s2,84(sp)
	.cfi_restore 18
	lw	s3,80(sp)
	.cfi_restore 19
	lw	s4,76(sp)
	.cfi_restore 20
	lw	s5,72(sp)
	.cfi_restore 21
	lw	s6,68(sp)
	.cfi_restore 22
	lw	s7,64(sp)
	.cfi_restore 23
	lw	s8,60(sp)
	.cfi_restore 24
	lw	s9,56(sp)
	.cfi_restore 25
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE48:
	.size	EF_Ctrl_Read_PowerOffset_Opt, .-EF_Ctrl_Read_PowerOffset_Opt
	.section	.text.EF_Ctrl_Write_AES_Key,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Write_AES_Key
	.type	EF_Ctrl_Write_AES_Key, @function
EF_Ctrl_Write_AES_Key:
.LFB49:
	.loc 1 1472 1
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
	.loc 1 1473 15
	li	a5,1073770496
	addi	a5,a5,28
	sw	a5,-20(s0)
	.loc 1 1475 7
	lbu	a4,-33(s0)
	li	a5,5
	bgtu	a4,a5,.L207
	.loc 1 1479 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 1482 32
	lbu	a5,-33(s0)
	slli	a5,a5,4
	.loc 1 1482 5
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	BL602_MemCpy4
	.loc 1 1484 7
	lbu	a5,-34(s0)
	beq	a5,zero,.L204
	.loc 1 1485 9
	call	EF_Ctrl_Program_Efuse_0
	j	.L204
.L207:
	.loc 1 1476 9
	nop
.L204:
	.loc 1 1487 1
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
	.size	EF_Ctrl_Write_AES_Key, .-EF_Ctrl_Write_AES_Key
	.section	.text.EF_Ctrl_Read_AES_Key,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Read_AES_Key
	.type	EF_Ctrl_Read_AES_Key, @function
EF_Ctrl_Read_AES_Key:
.LFB50:
	.loc 1 1500 1
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
	.loc 1 1501 15
	li	a5,1073770496
	addi	a5,a5,28
	sw	a5,-20(s0)
	.loc 1 1503 7
	lbu	a4,-33(s0)
	li	a5,5
	bgtu	a4,a5,.L211
	.loc 1 1507 5
	call	EF_Ctrl_Load_Efuse_R0
	.loc 1 1510 40
	lbu	a5,-33(s0)
	slli	a5,a5,4
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 1 1510 5
	lw	a2,-44(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	BL602_MemCpy4
	j	.L208
.L211:
	.loc 1 1504 9
	nop
.L208:
	.loc 1 1511 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE50:
	.size	EF_Ctrl_Read_AES_Key, .-EF_Ctrl_Read_AES_Key
	.section	.text.EF_Ctrl_Writelock_AES_Key,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Writelock_AES_Key
	.type	EF_Ctrl_Writelock_AES_Key, @function
EF_Ctrl_Writelock_AES_Key:
.LFB51:
	.loc 1 1523 1
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
	.loc 1 1526 7
	lbu	a4,-33(s0)
	li	a5,5
	bgtu	a4,a5,.L217
	.loc 1 1530 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 1532 13
	li	a5,1073770496
	addi	a5,a5,124
	.loc 1 1532 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1533 7
	lbu	a4,-33(s0)
	li	a5,3
	bgtu	a4,a5,.L215
	.loc 1 1534 27
	lbu	a5,-33(s0)
	addi	a5,a5,19
	.loc 1 1534 19
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 1534 15
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	j	.L216
.L215:
	.loc 1 1536 27
	lbu	a5,-33(s0)
	addi	a5,a5,19
	.loc 1 1536 19
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 1536 15
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 1537 29
	lbu	a5,-33(s0)
	addi	a5,a5,9
	.loc 1 1537 19
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 1537 15
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
.L216:
	.loc 1 1539 7
	li	a5,1073770496
	addi	a5,a5,124
	.loc 1 1539 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1541 7
	lbu	a5,-34(s0)
	beq	a5,zero,.L212
	.loc 1 1542 9
	call	EF_Ctrl_Program_Efuse_0
	j	.L212
.L217:
	.loc 1 1527 9
	nop
.L212:
	.loc 1 1544 1
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
	.size	EF_Ctrl_Writelock_AES_Key, .-EF_Ctrl_Writelock_AES_Key
	.section	.text.EF_Ctrl_Readlock_AES_Key,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Readlock_AES_Key
	.type	EF_Ctrl_Readlock_AES_Key, @function
EF_Ctrl_Readlock_AES_Key:
.LFB52:
	.loc 1 1556 1
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
	.loc 1 1559 7
	lbu	a4,-33(s0)
	li	a5,5
	bgtu	a4,a5,.L221
	.loc 1 1563 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 1565 13
	li	a5,1073770496
	addi	a5,a5,124
	.loc 1 1565 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1566 23
	lbu	a5,-33(s0)
	addi	a5,a5,26
	.loc 1 1566 15
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 1566 11
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 1567 7
	li	a5,1073770496
	addi	a5,a5,124
	.loc 1 1567 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1569 7
	lbu	a5,-34(s0)
	beq	a5,zero,.L218
	.loc 1 1570 9
	call	EF_Ctrl_Program_Efuse_0
	j	.L218
.L221:
	.loc 1 1560 9
	nop
.L218:
	.loc 1 1572 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE52:
	.size	EF_Ctrl_Readlock_AES_Key, .-EF_Ctrl_Readlock_AES_Key
	.section	.text.EF_Ctrl_Program_Direct_R0,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Program_Direct_R0
	.type	EF_Ctrl_Program_Direct_R0, @function
EF_Ctrl_Program_Direct_R0:
.LFB53:
	.loc 1 1585 1
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
	sw	a2,-44(s0)
	.loc 1 1586 15
	li	a5,1073770496
	sw	a5,-20(s0)
	.loc 1 1589 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 1592 5
	li	a0,4
	call	BL602_Delay_US
	.loc 1 1594 31
	lw	a5,-36(s0)
	slli	a5,a5,2
	.loc 1 1594 5
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	BL602_MemCpy4
	.loc 1 1596 5
	call	EF_Ctrl_Program_Efuse_0
	.loc 1 1597 1
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
.LFE53:
	.size	EF_Ctrl_Program_Direct_R0, .-EF_Ctrl_Program_Direct_R0
	.section	.text.EF_Ctrl_Read_Direct_R0,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Read_Direct_R0
	.type	EF_Ctrl_Read_Direct_R0, @function
EF_Ctrl_Read_Direct_R0:
.LFB54:
	.loc 1 1610 1
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
	sw	a2,-44(s0)
	.loc 1 1611 15
	li	a5,1073770496
	sw	a5,-20(s0)
	.loc 1 1613 5
	call	EF_Ctrl_Load_Efuse_R0
	.loc 1 1615 36
	lw	a5,-36(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 1 1615 5
	lw	a2,-44(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	BL602_MemCpy4
	.loc 1 1616 1
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
.LFE54:
	.size	EF_Ctrl_Read_Direct_R0, .-EF_Ctrl_Read_Direct_R0
	.section	.text.EF_Ctrl_Write_R0,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Write_R0
	.type	EF_Ctrl_Write_R0, @function
EF_Ctrl_Write_R0:
.LFB55:
	.loc 1 1629 1
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
	sw	a2,-44(s0)
	.loc 1 1630 15
	li	a5,1073770496
	sw	a5,-20(s0)
	.loc 1 1633 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 1636 5
	li	a0,4
	call	BL602_Delay_US
	.loc 1 1638 31
	lw	a5,-36(s0)
	slli	a5,a5,2
	.loc 1 1638 5
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	BL602_MemCpy4
	.loc 1 1639 1
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
.LFE55:
	.size	EF_Ctrl_Write_R0, .-EF_Ctrl_Write_R0
	.section	.text.EF_Ctrl_Read_R0,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Read_R0
	.type	EF_Ctrl_Read_R0, @function
EF_Ctrl_Read_R0:
.LFB56:
	.loc 1 1652 1
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
	sw	a2,-44(s0)
	.loc 1 1653 15
	li	a5,1073770496
	sw	a5,-20(s0)
	.loc 1 1655 36
	lw	a5,-36(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 1 1655 5
	lw	a2,-44(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	BL602_MemCpy4
	.loc 1 1656 1
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
.LFE56:
	.size	EF_Ctrl_Read_R0, .-EF_Ctrl_Read_R0
	.section	.tcm_code
	.align	1
	.weak	EF_Ctrl_Clear
	.type	EF_Ctrl_Clear, @function
EF_Ctrl_Clear:
.LFB57:
	.loc 1 1670 1
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
	.loc 1 1671 15
	li	a5,1073770496
	sw	a5,-24(s0)
	.loc 1 1672 14
	sw	zero,-20(s0)
	.loc 1 1675 5
	call	EF_Ctrl_Sw_AHB_Clk_0
	.loc 1 1678 10
	sw	zero,-20(s0)
	.loc 1 1678 5
	j	.L227
.L228:
	.loc 1 1679 27
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 1679 21
	slli	a5,a5,2
	lw	a4,-24(s0)
	add	a5,a4,a5
	.loc 1 1679 30
	sw	zero,0(a5)
	.loc 1 1678 20 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L227:
	.loc 1 1678 14 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bltu	a4,a5,.L228
	.loc 1 1681 1
	nop
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
.LFE57:
	.size	EF_Ctrl_Clear, .-EF_Ctrl_Clear
	.section	.text.EF_Ctrl_Crc_Enable,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Crc_Enable
	.type	EF_Ctrl_Crc_Enable, @function
EF_Ctrl_Crc_Enable:
.LFB58:
	.loc 1 1693 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1696 13
	li	a5,1073774592
	addi	a5,a5,-1536
	.loc 1 1696 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1697 11
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 1698 11
	lw	a5,-20(s0)
	andi	a5,a5,-9
	sw	a5,-20(s0)
	.loc 1 1699 11
	lw	a5,-20(s0)
	ori	a5,a5,32
	sw	a5,-20(s0)
	.loc 1 1700 11
	lw	a5,-20(s0)
	andi	a5,a5,-65
	sw	a5,-20(s0)
	.loc 1 1701 11
	lw	a5,-20(s0)
	andi	a5,a5,-129
	sw	a5,-20(s0)
	.loc 1 1702 11
	lw	a5,-20(s0)
	andi	a5,a5,-513
	sw	a5,-20(s0)
	.loc 1 1703 11
	lw	a5,-20(s0)
	andi	a5,a5,-1025
	sw	a5,-20(s0)
	.loc 1 1704 7
	li	a5,1073774592
	addi	a5,a5,-1536
	.loc 1 1704 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1706 13
	li	a5,1073774592
	addi	a5,a5,-1536
	.loc 1 1706 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1707 11
	lw	a5,-20(s0)
	ori	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 1708 7
	li	a5,1073774592
	addi	a5,a5,-1536
	.loc 1 1708 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1709 1
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
.LFE58:
	.size	EF_Ctrl_Crc_Enable, .-EF_Ctrl_Crc_Enable
	.section	.text.EF_Ctrl_Crc_Is_Busy,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Crc_Is_Busy
	.type	EF_Ctrl_Crc_Is_Busy, @function
EF_Ctrl_Crc_Is_Busy:
.LFB59:
	.loc 1 1720 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1723 13
	li	a5,1073774592
	addi	a5,a5,-1536
	.loc 1 1723 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1724 36
	lw	a5,-20(s0)
	andi	a5,a5,1
	.loc 1 1724 12
	andi	a5,a5,0xff
	.loc 1 1725 1
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
	.size	EF_Ctrl_Crc_Is_Busy, .-EF_Ctrl_Crc_Is_Busy
	.section	.text.EF_Ctrl_Crc_Set_Golden,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Crc_Set_Golden
	.type	EF_Ctrl_Crc_Set_Golden, @function
EF_Ctrl_Crc_Set_Golden:
.LFB60:
	.loc 1 1736 1
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
	.loc 1 1737 7
	li	a5,1073774592
	addi	a5,a5,-1520
	.loc 1 1737 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1738 1
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
.LFE60:
	.size	EF_Ctrl_Crc_Set_Golden, .-EF_Ctrl_Crc_Set_Golden
	.section	.text.EF_Ctrl_Crc_Result,"ax",@progbits
	.align	1
	.globl	EF_Ctrl_Crc_Result
	.type	EF_Ctrl_Crc_Result, @function
EF_Ctrl_Crc_Result:
.LFB61:
	.loc 1 1749 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1752 13
	li	a5,1073774592
	addi	a5,a5,-1536
	.loc 1 1752 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1753 36
	lw	a5,-20(s0)
	andi	a5,a5,16
	.loc 1 1753 12
	srli	a5,a5,4
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1754 1
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
	.size	EF_Ctrl_Crc_Result, .-EF_Ctrl_Crc_Result
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x13b8
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x14
	.4byte	.LASF159
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0xb
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x47
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x4e
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x16
	.4byte	0x97
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x71
	.uleb128 0xc
	.4byte	0x4e
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xd3
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xb4
	.uleb128 0xc
	.4byte	0x4e
	.byte	0x3
	.byte	0x2a
	.byte	0x1
	.4byte	0xf8
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0
	.uleb128 0x17
	.string	"SET"
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x3
	.byte	0x2d
	.byte	0x2
	.4byte	0xdf
	.uleb128 0xc
	.4byte	0x4e
	.byte	0x4
	.byte	0x46
	.byte	0xe
	.4byte	0x123
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.byte	0x4a
	.byte	0x2
	.4byte	0x104
	.uleb128 0xc
	.4byte	0x4e
	.byte	0x4
	.byte	0x4f
	.byte	0xe
	.4byte	0x154
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x4
	.byte	0x54
	.byte	0x2
	.4byte	0x12f
	.uleb128 0xc
	.4byte	0x4e
	.byte	0x4
	.byte	0x59
	.byte	0xe
	.4byte	0x17f
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x4
	.byte	0x5d
	.byte	0x2
	.4byte	0x160
	.uleb128 0xc
	.4byte	0x4e
	.byte	0x4
	.byte	0x62
	.byte	0xe
	.4byte	0x1a4
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	0x4e
	.byte	0x4
	.byte	0x6a
	.byte	0xe
	.4byte	0x1bd
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	0x4e
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0x1d6
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.byte	0x7a
	.4byte	0x20d
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x7b
	.byte	0x1b
	.4byte	0x17f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x7c
	.byte	0xd
	.4byte	0x8b
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x7d
	.byte	0xd
	.4byte	0x8b
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x7e
	.byte	0xd
	.4byte	0x8b
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x4
	.byte	0x7f
	.byte	0x2
	.4byte	0x1d6
	.uleb128 0xd
	.byte	0x84
	.4byte	0x250
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x85
	.4byte	0x97
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x86
	.4byte	0x97
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x87
	.4byte	0x97
	.byte	0x1
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x88
	.4byte	0x97
	.byte	0x16
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x4
	.byte	0x89
	.byte	0x2
	.4byte	0x219
	.uleb128 0xd
	.byte	0x8e
	.4byte	0x293
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x8f
	.4byte	0x97
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x90
	.4byte	0x97
	.byte	0x1
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x91
	.4byte	0x97
	.byte	0x1
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x92
	.4byte	0x97
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x4
	.byte	0x93
	.byte	0x2
	.4byte	0x25c
	.uleb128 0xd
	.byte	0x98
	.4byte	0x2e2
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x99
	.4byte	0x97
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x9a
	.4byte	0x97
	.byte	0x1
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x9b
	.4byte	0x97
	.byte	0x1
	.byte	0xd
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x9c
	.4byte	0x97
	.byte	0x1
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x9d
	.4byte	0x97
	.byte	0x11
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x4
	.byte	0x9e
	.byte	0x2
	.4byte	0x29f
	.uleb128 0xd
	.byte	0xa3
	.4byte	0x325
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0xa4
	.4byte	0x97
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0xa5
	.4byte	0x97
	.byte	0x1
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0xa6
	.4byte	0x97
	.byte	0x1
	.byte	0xd
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0xa7
	.4byte	0x97
	.byte	0x12
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x4
	.byte	0xa8
	.byte	0x2
	.4byte	0x2ee
	.uleb128 0xd
	.byte	0xad
	.4byte	0x38c
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0xae
	.4byte	0x97
	.byte	0x16
	.byte	0
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0xaf
	.4byte	0x97
	.byte	0x2
	.byte	0x16
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0xb0
	.4byte	0x97
	.byte	0x3
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0xb1
	.4byte	0x97
	.byte	0x2
	.byte	0x1b
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0xb2
	.4byte	0x97
	.byte	0x1
	.byte	0x1d
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0xb3
	.4byte	0x97
	.byte	0x1
	.byte	0x1e
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0xb4
	.4byte	0x97
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x4
	.byte	0xb5
	.byte	0x2
	.4byte	0x331
	.uleb128 0xd
	.byte	0xba
	.4byte	0x3d0
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0xbb
	.4byte	0x97
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0xbc
	.4byte	0x97
	.byte	0x1
	.byte	0x6
	.uleb128 0x18
	.string	"en"
	.byte	0x4
	.byte	0xbd
	.byte	0xe
	.4byte	0x97
	.byte	0x1
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0xbe
	.4byte	0x97
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x4
	.byte	0xbf
	.byte	0x2
	.4byte	0x398
	.uleb128 0x19
	.4byte	.LASF160
	.byte	0x3
	.byte	0x8b
	.byte	0xb
	.4byte	0x3fc
	.4byte	0x3fc
	.uleb128 0x11
	.4byte	0x3fc
	.uleb128 0x11
	.4byte	0x401
	.uleb128 0x11
	.4byte	0x97
	.byte	0
	.uleb128 0x9
	.4byte	0x97
	.uleb128 0x9
	.4byte	0xa3
	.uleb128 0x1a
	.4byte	.LASF161
	.byte	0x3
	.byte	0x88
	.byte	0x6
	.4byte	0x418
	.uleb128 0x11
	.4byte	0x97
	.byte	0
	.uleb128 0xe
	.4byte	.LASF76
	.2byte	0x6d4
	.byte	0xd
	.4byte	0xd3
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x442
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x6d6
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF79
	.2byte	0x6c7
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x467
	.uleb128 0x1
	.4byte	.LASF82
	.2byte	0x6c7
	.byte	0x26
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF77
	.2byte	0x6b7
	.byte	0xd
	.4byte	0xf8
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x491
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x6b9
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF80
	.2byte	0x69c
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b6
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x69e
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF81
	.2byte	0x685
	.byte	0x2c
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x507
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x685
	.byte	0x43
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"len"
	.2byte	0x685
	.byte	0x53
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF84
	.2byte	0x687
	.byte	0xf
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"i"
	.2byte	0x688
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF85
	.2byte	0x673
	.byte	0x6
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55a
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x673
	.byte	0x1f
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF86
	.2byte	0x673
	.byte	0x30
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"len"
	.2byte	0x673
	.byte	0x3f
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF84
	.2byte	0x675
	.byte	0xf
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF87
	.2byte	0x65c
	.byte	0x6
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ad
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x65c
	.byte	0x20
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF86
	.2byte	0x65c
	.byte	0x31
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"len"
	.2byte	0x65c
	.byte	0x40
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF84
	.2byte	0x65e
	.byte	0xf
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF88
	.2byte	0x649
	.byte	0x6
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x600
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x649
	.byte	0x26
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF86
	.2byte	0x649
	.byte	0x37
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"len"
	.2byte	0x649
	.byte	0x46
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF84
	.2byte	0x64b
	.byte	0xf
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF89
	.2byte	0x630
	.byte	0x6
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x653
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x630
	.byte	0x29
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF86
	.2byte	0x630
	.byte	0x3a
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"len"
	.2byte	0x630
	.byte	0x49
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF84
	.2byte	0x632
	.byte	0xf
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF90
	.2byte	0x613
	.byte	0x6
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x697
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x613
	.byte	0x27
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x613
	.byte	0x35
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x615
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF92
	.2byte	0x5f2
	.byte	0x6
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6db
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x5f2
	.byte	0x28
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x5f2
	.byte	0x36
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x5f4
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF93
	.2byte	0x5db
	.byte	0x6
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72e
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x5db
	.byte	0x23
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF94
	.2byte	0x5db
	.byte	0x33
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"len"
	.2byte	0x5db
	.byte	0x44
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF95
	.2byte	0x5dd
	.byte	0xf
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF96
	.2byte	0x5bf
	.byte	0x6
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x790
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x5bf
	.byte	0x24
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF94
	.2byte	0x5bf
	.byte	0x34
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"len"
	.2byte	0x5bf
	.byte	0x45
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x5bf
	.byte	0x51
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF95
	.2byte	0x5c1
	.byte	0xf
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF97
	.2byte	0x581
	.byte	0xd
	.4byte	0xd3
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x824
	.uleb128 0x1
	.4byte	.LASF98
	.2byte	0x581
	.byte	0x32
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x1
	.4byte	.LASF99
	.2byte	0x581
	.byte	0x3e
	.4byte	0x824
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.4byte	.LASF100
	.2byte	0x581
	.byte	0x53
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -82
	.uleb128 0x2
	.4byte	.LASF101
	.2byte	0x583
	.byte	0xe
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"tmp"
	.2byte	0x585
	.byte	0xe
	.4byte	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x7
	.string	"k"
	.2byte	0x585
	.byte	0x16
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.string	"en"
	.2byte	0x586
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x2
	.4byte	.LASF74
	.2byte	0x586
	.byte	0x12
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.byte	0
	.uleb128 0x9
	.4byte	0x7f
	.uleb128 0xa
	.4byte	.LASF102
	.2byte	0x53c
	.byte	0xd
	.4byte	0xd3
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b0
	.uleb128 0x1
	.4byte	.LASF98
	.2byte	0x53c
	.byte	0x33
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x1
	.4byte	.LASF99
	.2byte	0x53c
	.byte	0x3f
	.4byte	0x824
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x53c
	.byte	0x54
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -82
	.uleb128 0x7
	.string	"tmp"
	.2byte	0x53e
	.byte	0xe
	.4byte	0xa8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x7
	.string	"k"
	.2byte	0x53f
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF103
	.2byte	0x540
	.byte	0xe
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF74
	.2byte	0x541
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.byte	0
	.uleb128 0xa
	.4byte	.LASF104
	.2byte	0x511
	.byte	0x9
	.4byte	0x8b
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x916
	.uleb128 0x1
	.4byte	.LASF98
	.2byte	0x511
	.byte	0x33
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF100
	.2byte	0x511
	.byte	0x40
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF105
	.2byte	0x513
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF106
	.2byte	0x514
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF107
	.2byte	0x514
	.byte	0x1b
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF108
	.2byte	0x4e7
	.byte	0xd
	.4byte	0xd3
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x97c
	.uleb128 0x1
	.4byte	.LASF98
	.2byte	0x4e7
	.byte	0x2e
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF109
	.2byte	0x4e7
	.byte	0x3c
	.4byte	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF100
	.2byte	0x4e7
	.byte	0x49
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x7
	.string	"tmp"
	.2byte	0x4e9
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF110
	.2byte	0x4ea
	.byte	0x1e
	.4byte	0x981
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x8b
	.uleb128 0x9
	.4byte	0x3d0
	.uleb128 0xa
	.4byte	.LASF111
	.2byte	0x4b4
	.byte	0xd
	.4byte	0xd3
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ec
	.uleb128 0x1
	.4byte	.LASF98
	.2byte	0x4b4
	.byte	0x2f
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF109
	.2byte	0x4b4
	.byte	0x3c
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x4b4
	.byte	0x49
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x7
	.string	"tmp"
	.2byte	0x4b6
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF110
	.2byte	0x4b7
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xa
	.4byte	.LASF112
	.2byte	0x491
	.byte	0x9
	.4byte	0x8b
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa34
	.uleb128 0x1
	.4byte	.LASF98
	.2byte	0x491
	.byte	0x2f
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF100
	.2byte	0x491
	.byte	0x3c
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x7
	.string	"tmp"
	.2byte	0x493
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF113
	.2byte	0x47c
	.byte	0x6
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa76
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x47c
	.byte	0x37
	.4byte	0xa76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x47e
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"p"
	.2byte	0x47f
	.byte	0xf
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x38c
	.uleb128 0xa
	.4byte	.LASF115
	.2byte	0x46d
	.byte	0xd
	.4byte	0xd3
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa5
	.uleb128 0x1
	.4byte	.LASF116
	.2byte	0x46d
	.byte	0x2a
	.4byte	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF117
	.2byte	0x42c
	.byte	0xd
	.4byte	0xd3
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb36
	.uleb128 0x1
	.4byte	.LASF98
	.2byte	0x42c
	.byte	0x32
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x5
	.string	"mac"
	.2byte	0x42c
	.byte	0x3f
	.4byte	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF100
	.2byte	0x42c
	.byte	0x4e
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x2
	.4byte	.LASF118
	.2byte	0x42e
	.byte	0xe
	.4byte	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x42f
	.byte	0xe
	.4byte	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x430
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"i"
	.2byte	0x431
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"cnt"
	.2byte	0x432
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF120
	.2byte	0x3e7
	.byte	0xd
	.4byte	0xd3
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc7
	.uleb128 0x1
	.4byte	.LASF98
	.2byte	0x3e7
	.byte	0x33
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x5
	.string	"mac"
	.2byte	0x3e7
	.byte	0x40
	.4byte	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x3e7
	.byte	0x4f
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x2
	.4byte	.LASF118
	.2byte	0x3e9
	.byte	0xe
	.4byte	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x3ea
	.byte	0xe
	.4byte	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x3eb
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"i"
	.2byte	0x3ec
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"cnt"
	.2byte	0x3ec
	.byte	0x12
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF121
	.2byte	0x3b5
	.byte	0x9
	.4byte	0x8b
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3c
	.uleb128 0x1
	.4byte	.LASF98
	.2byte	0x3b5
	.byte	0x33
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF100
	.2byte	0x3b5
	.byte	0x40
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF105
	.2byte	0x3b7
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF122
	.2byte	0x3b7
	.byte	0x1e
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF106
	.2byte	0x3b8
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF107
	.2byte	0x3b8
	.byte	0x1b
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xe
	.4byte	.LASF123
	.2byte	0x39a
	.byte	0x9
	.4byte	0x8b
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc93
	.uleb128 0x5
	.string	"val"
	.2byte	0x39a
	.byte	0x2b
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF124
	.2byte	0x39a
	.byte	0x37
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x5
	.string	"len"
	.2byte	0x39a
	.byte	0x45
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x2
	.4byte	.LASF125
	.2byte	0x39c
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF126
	.2byte	0x380
	.byte	0x6
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc8
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x380
	.byte	0x2c
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x382
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF127
	.2byte	0x364
	.byte	0xd
	.4byte	0xd3
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd1f
	.uleb128 0x5
	.string	"mac"
	.2byte	0x364
	.byte	0x32
	.4byte	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF118
	.2byte	0x366
	.byte	0xe
	.4byte	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x367
	.byte	0xe
	.4byte	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x368
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF128
	.2byte	0x339
	.byte	0xd
	.4byte	0xd3
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd92
	.uleb128 0x5
	.string	"mac"
	.2byte	0x339
	.byte	0x2e
	.4byte	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF118
	.2byte	0x33b
	.byte	0xe
	.4byte	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x33c
	.byte	0xe
	.4byte	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x33d
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"i"
	.2byte	0x33e
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"cnt"
	.2byte	0x33f
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x325
	.byte	0x11
	.4byte	0x97
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd9
	.uleb128 0x5
	.string	"val"
	.2byte	0x325
	.byte	0x33
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x7
	.string	"cnt"
	.2byte	0x327
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"i"
	.2byte	0x328
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.4byte	.LASF129
	.2byte	0x309
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe3b
	.uleb128 0x5
	.string	"mac"
	.2byte	0x309
	.byte	0x28
	.4byte	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x309
	.byte	0x37
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.4byte	.LASF118
	.2byte	0x30b
	.byte	0xe
	.4byte	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x30c
	.byte	0xe
	.4byte	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x30d
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF130
	.2byte	0x2ed
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe7f
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x2ed
	.byte	0x2a
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x2ed
	.byte	0x39
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x2ef
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF131
	.2byte	0x2d8
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb4
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x2d8
	.byte	0x26
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF132
	.2byte	0x2d8
	.byte	0x37
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.4byte	.LASF133
	.2byte	0x2c1
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef8
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x2c1
	.byte	0x26
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF132
	.2byte	0x2c1
	.byte	0x36
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x2c1
	.byte	0x44
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x3
	.4byte	.LASF134
	.2byte	0x2a7
	.byte	0x33
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf2d
	.uleb128 0x1
	.4byte	.LASF110
	.2byte	0x2a7
	.byte	0x6a
	.4byte	0xf2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x2a9
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x325
	.uleb128 0x3
	.4byte	.LASF135
	.2byte	0x28a
	.byte	0x33
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf67
	.uleb128 0x1
	.4byte	.LASF110
	.2byte	0x28a
	.byte	0x6b
	.4byte	0xf67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x28c
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x2e2
	.uleb128 0x3
	.4byte	.LASF136
	.2byte	0x273
	.byte	0x33
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa1
	.uleb128 0x1
	.4byte	.LASF110
	.2byte	0x273
	.byte	0x67
	.4byte	0xfa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x275
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x293
	.uleb128 0x3
	.4byte	.LASF137
	.2byte	0x25a
	.byte	0x33
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfdb
	.uleb128 0x1
	.4byte	.LASF110
	.2byte	0x25a
	.byte	0x67
	.4byte	0xfdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x25c
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x250
	.uleb128 0x3
	.4byte	.LASF138
	.2byte	0x244
	.byte	0x6
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1015
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x244
	.byte	0x26
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF110
	.2byte	0x244
	.byte	0x37
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.4byte	.LASF139
	.2byte	0x22d
	.byte	0x6
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1059
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x22d
	.byte	0x26
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF110
	.2byte	0x22d
	.byte	0x36
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x22d
	.byte	0x43
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0xe
	.4byte	.LASF140
	.2byte	0x214
	.byte	0x36
	.4byte	0x8b
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ae
	.uleb128 0x5
	.string	"val"
	.2byte	0x214
	.byte	0x57
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"len"
	.2byte	0x214
	.byte	0x63
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x7
	.string	"cnt"
	.2byte	0x216
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x7
	.string	"i"
	.2byte	0x217
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF141
	.2byte	0x1fd
	.byte	0x9
	.4byte	0x8b
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10d8
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x1ff
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF142
	.2byte	0x1e0
	.byte	0x6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x112b
	.uleb128 0x1
	.4byte	.LASF143
	.2byte	0x1e0
	.byte	0x31
	.4byte	0x112b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"aes"
	.2byte	0x1e0
	.byte	0x4e
	.4byte	0x1130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x1e2
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF144
	.2byte	0x1e3
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	0x123
	.uleb128 0x9
	.4byte	0x154
	.uleb128 0x3
	.4byte	.LASF145
	.2byte	0x1c0
	.byte	0x6
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1188
	.uleb128 0x1
	.4byte	.LASF143
	.2byte	0x1c0
	.byte	0x32
	.4byte	0x112b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"aes"
	.2byte	0x1c0
	.byte	0x4f
	.4byte	0x1130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x1c0
	.byte	0x5e
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x1c2
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF146
	.2byte	0x1a7
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11bd
	.uleb128 0x5
	.string	"cfg"
	.2byte	0x1a7
	.byte	0x36
	.4byte	0x11bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x1a9
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x20d
	.uleb128 0x3
	.4byte	.LASF147
	.2byte	0x190
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1206
	.uleb128 0x5
	.string	"cfg"
	.2byte	0x190
	.byte	0x37
	.4byte	0x11bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x190
	.byte	0x43
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x192
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF148
	.2byte	0x177
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x123b
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x177
	.byte	0x28
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x179
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF149
	.2byte	0x15f
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1270
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x15f
	.byte	0x27
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x161
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF150
	.2byte	0x14e
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12a5
	.uleb128 0x1
	.4byte	.LASF151
	.2byte	0x14e
	.byte	0x25
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF152
	.2byte	0x14e
	.byte	0x3a
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.4byte	.LASF153
	.2byte	0x138
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12e9
	.uleb128 0x1
	.4byte	.LASF151
	.2byte	0x138
	.byte	0x25
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF152
	.2byte	0x138
	.byte	0x39
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x138
	.byte	0x4c
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0xe
	.4byte	.LASF154
	.2byte	0x120
	.byte	0x33
	.4byte	0xf8
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1313
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x122
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF155
	.2byte	0x109
	.byte	0x33
	.4byte	0xf8
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x133d
	.uleb128 0x2
	.4byte	.LASF78
	.2byte	0x10b
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF156
	.byte	0xc7
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x136c
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0xca
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.4byte	.LASF157
	.byte	0xcb
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF158
	.byte	0x8a
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x138e
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0x8c
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF163
	.byte	0x1
	.byte	0x66
	.byte	0x2c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0x68
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.4byte	.LASF157
	.byte	0x69
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xf
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1c
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c4
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"BL_Sts_Type"
.LASF148:
	.string	"EF_Ctrl_Writelock_Dbg_Pwd"
.LASF131:
	.string	"EF_Ctrl_Read_Sw_Usage"
.LASF18:
	.string	"ERROR"
.LASF87:
	.string	"EF_Ctrl_Write_R0"
.LASF119:
	.string	"machigh"
.LASF109:
	.string	"code"
.LASF105:
	.string	"tmp1"
.LASF122:
	.string	"tmp2"
.LASF64:
	.string	"Efuse_ADC_Gain_Coeff_Type"
.LASF47:
	.string	"trimRc32mCodeFrExt"
.LASF98:
	.string	"slot"
.LASF116:
	.string	"chipID"
.LASF118:
	.string	"maclow"
.LASF59:
	.string	"tsenRefcodeCornerVersion"
.LASF75:
	.string	"Efuse_Capcode_Info_Type"
.LASF44:
	.string	"ef_sboot_en"
.LASF2:
	.string	"unsigned int"
.LASF100:
	.string	"reload"
.LASF151:
	.string	"passWdLow"
.LASF29:
	.string	"EF_CTRL_SF_AES_192"
.LASF73:
	.string	"capCode"
.LASF49:
	.string	"trimRc32mExtCodeEn"
.LASF76:
	.string	"EF_Ctrl_Crc_Result"
.LASF123:
	.string	"EF_Ctrl_Is_All_Bits_Zero"
.LASF88:
	.string	"EF_Ctrl_Read_Direct_R0"
.LASF115:
	.string	"EF_Ctrl_Read_Chip_ID"
.LASF82:
	.string	"goldenValue"
.LASF136:
	.string	"EF_Ctrl_Read_RC32K_Trim"
.LASF80:
	.string	"EF_Ctrl_Crc_Enable"
.LASF138:
	.string	"EF_Ctrl_Read_Ana_Trim"
.LASF51:
	.string	"Efuse_Ana_RC32M_Trim_Type"
.LASF20:
	.string	"BL_Err_Type"
.LASF15:
	.string	"uint32_t"
.LASF13:
	.string	"int8_t"
.LASF140:
	.string	"EF_Ctrl_Get_Trim_Parity"
.LASF127:
	.string	"EF_Ctrl_Read_MAC_Address_Raw"
.LASF155:
	.string	"EF_Ctrl_Busy"
.LASF91:
	.string	"program"
.LASF152:
	.string	"passWdHigh"
.LASF83:
	.string	"index"
.LASF30:
	.string	"EF_CTRL_SF_AES_256"
.LASF120:
	.string	"EF_Ctrl_Write_MAC_Address_Opt"
.LASF39:
	.string	"EF_CTRL_PARA_MANUAL"
.LASF11:
	.string	"long long unsigned int"
.LASF104:
	.string	"EF_Ctrl_Is_PowerOffset_Slot_Empty"
.LASF53:
	.string	"trimRc32kCodeFrExtParity"
.LASF34:
	.string	"EF_CTRL_DBG_CLOSE"
.LASF85:
	.string	"EF_Ctrl_Read_R0"
.LASF46:
	.string	"EF_Ctrl_Sec_Param_Type"
.LASF143:
	.string	"sign"
.LASF62:
	.string	"adcGainCoeffParity"
.LASF133:
	.string	"EF_Ctrl_Write_Sw_Usage"
.LASF66:
	.string	"customerID"
.LASF106:
	.string	"part1Empty"
.LASF128:
	.string	"EF_Ctrl_Read_MAC_Address"
.LASF161:
	.string	"BL602_Delay_US"
.LASF43:
	.string	"ef_dbg_jtag_0_dis"
.LASF78:
	.string	"tmpVal"
.LASF99:
	.string	"pwrOffset"
.LASF144:
	.string	"tmpVal2"
.LASF36:
	.string	"EF_CTRL_EF_CLK"
.LASF153:
	.string	"EF_Ctrl_Write_Dbg_Pwd"
.LASF17:
	.string	"SUCCESS"
.LASF12:
	.string	"char"
.LASF58:
	.string	"tsenRefcodeCornerEn"
.LASF146:
	.string	"EF_Ctrl_Read_Secure_Cfg"
.LASF154:
	.string	"EF_Ctrl_AutoLoad_Done"
.LASF33:
	.string	"EF_CTRL_DBG_PASSWORD"
.LASF86:
	.string	"data"
.LASF97:
	.string	"EF_Ctrl_Read_PowerOffset_Opt"
.LASF14:
	.string	"uint8_t"
.LASF32:
	.string	"EF_CTRL_DBG_OPEN"
.LASF25:
	.string	"EF_CTRL_SIGN_ECC"
.LASF81:
	.string	"EF_Ctrl_Clear"
.LASF3:
	.string	"long long int"
.LASF19:
	.string	"TIMEOUT"
.LASF90:
	.string	"EF_Ctrl_Readlock_AES_Key"
.LASF41:
	.string	"EF_CTRL_OP_MODE_MANUAL"
.LASF129:
	.string	"EF_Ctrl_Write_MAC_Address"
.LASF45:
	.string	"ef_no_hd_boot_en"
.LASF95:
	.string	"pAESKeyStart0"
.LASF139:
	.string	"EF_Ctrl_Write_Ana_Trim"
.LASF103:
	.string	"Value"
.LASF156:
	.string	"EF_Ctrl_Load_Efuse_R0"
.LASF42:
	.string	"ef_dbg_mode"
.LASF94:
	.string	"keyData"
.LASF55:
	.string	"Efuse_Ana_RC32K_Trim_Type"
.LASF125:
	.string	"mask"
.LASF52:
	.string	"trimRc32kCodeFrExt"
.LASF37:
	.string	"EF_CTRL_SAHB_CLK"
.LASF35:
	.string	"EF_Ctrl_Dbg_Mode_Type"
.LASF110:
	.string	"trim"
.LASF163:
	.string	"EF_Ctrl_Sw_AHB_Clk_0"
.LASF130:
	.string	"EF_Ctrl_Writelock_Sw_Usage"
.LASF4:
	.string	"long double"
.LASF112:
	.string	"EF_Ctrl_Is_CapCode_Slot_Empty"
.LASF93:
	.string	"EF_Ctrl_Read_AES_Key"
.LASF79:
	.string	"EF_Ctrl_Crc_Set_Golden"
.LASF28:
	.string	"EF_CTRL_SF_AES_128"
.LASF114:
	.string	"deviceInfo"
.LASF77:
	.string	"EF_Ctrl_Crc_Is_Busy"
.LASF74:
	.string	"parity"
.LASF72:
	.string	"Efuse_Device_Info_Type"
.LASF54:
	.string	"trimRc32kExtCodeEn"
.LASF69:
	.string	"coreInfo"
.LASF56:
	.string	"tsenRefcodeCorner"
.LASF7:
	.string	"short int"
.LASF113:
	.string	"EF_Ctrl_Read_Device_Info"
.LASF24:
	.string	"EF_CTRL_SIGN_RSA"
.LASF92:
	.string	"EF_Ctrl_Writelock_AES_Key"
.LASF9:
	.string	"long int"
.LASF65:
	.string	"rsvd"
.LASF31:
	.string	"EF_Ctrl_SF_AES_Type"
.LASF26:
	.string	"EF_Ctrl_Sign_Type"
.LASF71:
	.string	"pinInfo"
.LASF135:
	.string	"EF_Ctrl_Read_TSEN_Trim"
.LASF63:
	.string	"adcGainCoeffEn"
.LASF21:
	.string	"RESET"
.LASF61:
	.string	"adcGainCoeff"
.LASF16:
	.string	"uint64_t"
.LASF67:
	.string	"rsvd_info"
.LASF48:
	.string	"trimRc32mCodeFrExtParity"
.LASF142:
	.string	"EF_Ctrl_Read_Secure_Boot"
.LASF132:
	.string	"usage"
.LASF124:
	.string	"start"
.LASF162:
	.string	"EF_Ctrl_Get_Byte_Zero_Cnt"
.LASF84:
	.string	"pEfuseStart0"
.LASF10:
	.string	"long unsigned int"
.LASF102:
	.string	"EF_Ctrl_Write_PowerOffset_Opt"
.LASF145:
	.string	"EF_Ctrl_Write_Secure_Boot"
.LASF40:
	.string	"EF_CTRL_OP_MODE_AUTO"
.LASF137:
	.string	"EF_Ctrl_Read_RC32M_Trim"
.LASF101:
	.string	"pwrOffsetValue"
.LASF6:
	.string	"unsigned char"
.LASF141:
	.string	"EF_Ctrl_Get_Trim_Enable"
.LASF157:
	.string	"timeout"
.LASF121:
	.string	"EF_Ctrl_Is_MAC_Address_Slot_Empty"
.LASF126:
	.string	"EF_Ctrl_Writelock_MAC_Address"
.LASF27:
	.string	"EF_CTRL_SF_AES_NONE"
.LASF160:
	.string	"BL602_MemCpy4"
.LASF68:
	.string	"memoryInfo"
.LASF147:
	.string	"EF_Ctrl_Write_Secure_Cfg"
.LASF38:
	.string	"EF_CTRL_PARA_DFT"
.LASF108:
	.string	"EF_Ctrl_Read_CapCode_Opt"
.LASF134:
	.string	"EF_Ctrl_Read_ADC_Gain_Trim"
.LASF5:
	.string	"signed char"
.LASF8:
	.string	"short unsigned int"
.LASF23:
	.string	"EF_CTRL_SIGN_NONE"
.LASF57:
	.string	"tsenRefcodeCornerParity"
.LASF50:
	.string	"reserved"
.LASF149:
	.string	"EF_Ctrl_Readlock_Dbg_Pwd"
.LASF60:
	.string	"Efuse_TSEN_Refcode_Corner_Type"
.LASF70:
	.string	"mcuInfo"
.LASF150:
	.string	"EF_Ctrl_Read_Dbg_Pwd"
.LASF111:
	.string	"EF_Ctrl_Write_CapCode_Opt"
.LASF158:
	.string	"EF_Ctrl_Program_Efuse_0"
.LASF159:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF89:
	.string	"EF_Ctrl_Program_Direct_R0"
.LASF96:
	.string	"EF_Ctrl_Write_AES_Key"
.LASF107:
	.string	"part2Empty"
.LASF117:
	.string	"EF_Ctrl_Read_MAC_Address_Opt"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_ef_ctrl.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
