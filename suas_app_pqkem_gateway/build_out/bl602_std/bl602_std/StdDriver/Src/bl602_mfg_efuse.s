	.file	"bl602_mfg_efuse.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_mfg_efuse.c"
	.section	.sdata.rf_cal_slots,"aw"
	.type	rf_cal_slots, @object
	.size	rf_cal_slots, 1
rf_cal_slots:
	.byte	3
	.section	.text.mfg_efuse_get_rf_cal_slots,"ax",@progbits
	.align	1
	.globl	mfg_efuse_get_rf_cal_slots
	.type	mfg_efuse_get_rf_cal_slots, @function
mfg_efuse_get_rf_cal_slots:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_mfg_efuse.c"
	.loc 1 16 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 24 12
	lui	a5,%hi(rf_cal_slots)
	lbu	a5,%lo(rf_cal_slots)(a5)
	.loc 1 25 1
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
.LFE8:
	.size	mfg_efuse_get_rf_cal_slots, .-mfg_efuse_get_rf_cal_slots
	.section	.text.mfg_efuse_set_rf_cal_slots,"ax",@progbits
	.align	1
	.globl	mfg_efuse_set_rf_cal_slots
	.type	mfg_efuse_set_rf_cal_slots, @function
mfg_efuse_set_rf_cal_slots:
.LFB9:
	.loc 1 28 1
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
	.loc 1 29 17
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,-17(s0)
	sb	a4,%lo(rf_cal_slots)(a5)
	.loc 1 30 1
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
	.size	mfg_efuse_set_rf_cal_slots, .-mfg_efuse_set_rf_cal_slots
	.section	.rodata
	.align	2
.LC0:
	.string	"Empty slot:%d\r\n"
	.align	2
.LC1:
	.string	"No empty slot found\r\n"
	.section	.text.mfg_efuse_is_xtal_capcode_slot_empty,"ax",@progbits
	.align	1
	.globl	mfg_efuse_is_xtal_capcode_slot_empty
	.type	mfg_efuse_is_xtal_capcode_slot_empty, @function
mfg_efuse_is_xtal_capcode_slot_empty:
.LFB10:
	.loc 1 33 1
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
	.loc 1 34 13
	sb	zero,-17(s0)
	.loc 1 35 13
	sb	zero,-18(s0)
	.loc 1 35 20
	sb	zero,-19(s0)
	.loc 1 37 10
	call	GLB_Get_BCLK_Div
	mv	a5,a0
	sb	a5,-19(s0)
	.loc 1 38 10
	call	GLB_Get_HCLK_Div
	mv	a5,a0
	sb	a5,-18(s0)
	.loc 1 40 5
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 42 20
	lui	a5,%hi(rf_cal_slots)
	lbu	a5,%lo(rf_cal_slots)(a5)
	.loc 1 42 7
	beq	a5,zero,.L5
	.loc 1 42 25 discriminator 1
	lbu	a5,-33(s0)
	mv	a1,a5
	li	a0,0
	call	EF_Ctrl_Is_CapCode_Slot_Empty
	mv	a5,a0
	.loc 1 42 23 discriminator 2
	beq	a5,zero,.L5
	.loc 1 43 9
	li	a1,0
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 44 14
	li	a5,1
	sb	a5,-17(s0)
	j	.L6
.L5:
	.loc 1 45 26
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,%lo(rf_cal_slots)(a5)
	.loc 1 45 13
	li	a5,1
	bleu	a4,a5,.L7
	.loc 1 45 31 discriminator 1
	lbu	a5,-33(s0)
	mv	a1,a5
	li	a0,1
	call	EF_Ctrl_Is_CapCode_Slot_Empty
	mv	a5,a0
	.loc 1 45 29 discriminator 2
	beq	a5,zero,.L7
	.loc 1 46 9
	li	a1,1
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 47 14
	li	a5,1
	sb	a5,-17(s0)
	j	.L6
.L7:
	.loc 1 48 26
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,%lo(rf_cal_slots)(a5)
	.loc 1 48 13
	li	a5,2
	bleu	a4,a5,.L8
	.loc 1 48 31 discriminator 1
	lbu	a5,-33(s0)
	mv	a1,a5
	li	a0,2
	call	EF_Ctrl_Is_CapCode_Slot_Empty
	mv	a5,a0
	.loc 1 48 29 discriminator 2
	beq	a5,zero,.L8
	.loc 1 49 9
	li	a1,2
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 50 14
	li	a5,1
	sb	a5,-17(s0)
	j	.L6
.L8:
	.loc 1 52 9
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L6:
	.loc 1 55 5
	lbu	a4,-19(s0)
	lbu	a5,-18(s0)
	mv	a1,a4
	mv	a0,a5
	call	GLB_Set_System_CLK_Div
	.loc 1 56 5
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 58 12
	lbu	a5,-17(s0)
	.loc 1 59 1
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
	.size	mfg_efuse_is_xtal_capcode_slot_empty, .-mfg_efuse_is_xtal_capcode_slot_empty
	.section	.rodata
	.align	2
.LC2:
	.string	"Write slot:%d\r\n"
	.section	.text.mfg_efuse_write_xtal_capcode_pre,"ax",@progbits
	.align	1
	.globl	mfg_efuse_write_xtal_capcode_pre
	.type	mfg_efuse_write_xtal_capcode_pre, @function
mfg_efuse_write_xtal_capcode_pre:
.LFB11:
	.loc 1 62 1
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
	.loc 1 63 17
	sb	zero,-17(s0)
	.loc 1 64 13
	li	a5,-1
	sb	a5,-18(s0)
	.loc 1 65 13
	sb	zero,-19(s0)
	.loc 1 65 20
	sb	zero,-20(s0)
	.loc 1 67 10
	call	GLB_Get_BCLK_Div
	mv	a5,a0
	sb	a5,-20(s0)
	.loc 1 68 10
	call	GLB_Get_HCLK_Div
	mv	a5,a0
	sb	a5,-19(s0)
	.loc 1 70 5
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 72 20
	lui	a5,%hi(rf_cal_slots)
	lbu	a5,%lo(rf_cal_slots)(a5)
	.loc 1 72 7
	beq	a5,zero,.L11
	.loc 1 72 25 discriminator 1
	li	a1,1
	li	a0,0
	call	EF_Ctrl_Is_CapCode_Slot_Empty
	mv	a5,a0
	.loc 1 72 23 discriminator 2
	beq	a5,zero,.L11
	.loc 1 73 13
	sb	zero,-18(s0)
	j	.L12
.L11:
	.loc 1 74 26
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,%lo(rf_cal_slots)(a5)
	.loc 1 74 13
	li	a5,1
	bleu	a4,a5,.L13
	.loc 1 74 31 discriminator 1
	li	a1,1
	li	a0,1
	call	EF_Ctrl_Is_CapCode_Slot_Empty
	mv	a5,a0
	.loc 1 74 29 discriminator 2
	beq	a5,zero,.L13
	.loc 1 75 13
	li	a5,1
	sb	a5,-18(s0)
	j	.L12
.L13:
	.loc 1 76 26
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,%lo(rf_cal_slots)(a5)
	.loc 1 76 13
	li	a5,2
	bleu	a4,a5,.L14
	.loc 1 76 31 discriminator 1
	li	a1,1
	li	a0,2
	call	EF_Ctrl_Is_CapCode_Slot_Empty
	mv	a5,a0
	.loc 1 76 29 discriminator 2
	beq	a5,zero,.L14
	.loc 1 77 13
	li	a5,2
	sb	a5,-18(s0)
	j	.L12
.L14:
	.loc 1 79 9
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L12:
	.loc 1 82 7
	lbu	a4,-18(s0)
	li	a5,255
	beq	a4,a5,.L15
	.loc 1 83 13
	lbu	a3,-34(s0)
	lbu	a4,-33(s0)
	lbu	a5,-18(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	EF_Ctrl_Write_CapCode_Opt
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 84 9
	lbu	a5,-18(s0)
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L15:
	.loc 1 86 5
	lbu	a4,-20(s0)
	lbu	a5,-19(s0)
	mv	a1,a4
	mv	a0,a5
	call	GLB_Set_System_CLK_Div
	.loc 1 87 5
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 89 7
	lbu	a5,-17(s0)
	bne	a5,zero,.L16
	.loc 1 90 16
	li	a5,0
	j	.L17
.L16:
	.loc 1 92 16
	li	a5,-1
.L17:
	.loc 1 94 1
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
	.size	mfg_efuse_write_xtal_capcode_pre, .-mfg_efuse_write_xtal_capcode_pre
	.section	.text.mfg_efuse_write_xtal_capcode,"ax",@progbits
	.align	1
	.globl	mfg_efuse_write_xtal_capcode
	.type	mfg_efuse_write_xtal_capcode, @function
mfg_efuse_write_xtal_capcode:
.LFB12:
	.loc 1 97 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 98 13
	sb	zero,-17(s0)
	.loc 1 98 20
	sb	zero,-18(s0)
	.loc 1 100 10
	call	GLB_Get_BCLK_Div
	mv	a5,a0
	sb	a5,-18(s0)
	.loc 1 101 10
	call	GLB_Get_HCLK_Div
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 103 5
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 105 5
	li	a2,0
	li	a1,0
	li	a0,0
	call	EF_Ctrl_Program_Direct_R0
	.loc 1 106 10
	nop
.L19:
	.loc 1 106 16 discriminator 2
	call	EF_Ctrl_Busy
	mv	a5,a0
	mv	a4,a5
	.loc 1 106 14 discriminator 2
	li	a5,1
	beq	a4,a5,.L19
	.loc 1 108 5
	lbu	a4,-18(s0)
	lbu	a5,-17(s0)
	mv	a1,a4
	mv	a0,a5
	call	GLB_Set_System_CLK_Div
	.loc 1 109 5
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 111 1
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
.LFE12:
	.size	mfg_efuse_write_xtal_capcode, .-mfg_efuse_write_xtal_capcode
	.section	.rodata
	.align	2
.LC3:
	.string	"Read slot:%d\r\n"
	.align	2
.LC4:
	.string	"No written slot found\r\n"
	.section	.text.mfg_efuse_read_xtal_capcode,"ax",@progbits
	.align	1
	.globl	mfg_efuse_read_xtal_capcode
	.type	mfg_efuse_read_xtal_capcode, @function
mfg_efuse_read_xtal_capcode:
.LFB13:
	.loc 1 114 1
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
	.loc 1 115 13
	li	a5,-1
	sb	a5,-17(s0)
	.loc 1 116 17
	li	a5,1
	sb	a5,-18(s0)
	.loc 1 117 13
	sb	zero,-19(s0)
	.loc 1 117 20
	sb	zero,-20(s0)
	.loc 1 119 10
	call	GLB_Get_BCLK_Div
	mv	a5,a0
	sb	a5,-20(s0)
	.loc 1 120 10
	call	GLB_Get_HCLK_Div
	mv	a5,a0
	sb	a5,-19(s0)
	.loc 1 122 5
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 124 20
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,%lo(rf_cal_slots)(a5)
	.loc 1 124 7
	li	a5,2
	bleu	a4,a5,.L21
	.loc 1 124 27 discriminator 1
	lbu	a5,-37(s0)
	mv	a1,a5
	li	a0,2
	call	EF_Ctrl_Is_CapCode_Slot_Empty
	mv	a5,a0
	.loc 1 124 23 discriminator 2
	bne	a5,zero,.L21
	.loc 1 125 13
	li	a5,2
	sb	a5,-17(s0)
	j	.L22
.L21:
	.loc 1 126 26
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,%lo(rf_cal_slots)(a5)
	.loc 1 126 13
	li	a5,1
	bleu	a4,a5,.L23
	.loc 1 126 33 discriminator 1
	lbu	a5,-37(s0)
	mv	a1,a5
	li	a0,1
	call	EF_Ctrl_Is_CapCode_Slot_Empty
	mv	a5,a0
	.loc 1 126 29 discriminator 2
	bne	a5,zero,.L23
	.loc 1 127 13
	li	a5,1
	sb	a5,-17(s0)
	j	.L22
.L23:
	.loc 1 128 26
	lui	a5,%hi(rf_cal_slots)
	lbu	a5,%lo(rf_cal_slots)(a5)
	.loc 1 128 13
	beq	a5,zero,.L22
	.loc 1 128 33 discriminator 1
	lbu	a5,-37(s0)
	mv	a1,a5
	li	a0,0
	call	EF_Ctrl_Is_CapCode_Slot_Empty
	mv	a5,a0
	.loc 1 128 29 discriminator 2
	bne	a5,zero,.L22
	.loc 1 129 13
	sb	zero,-17(s0)
.L22:
	.loc 1 132 7
	lbu	a4,-17(s0)
	li	a5,255
	beq	a4,a5,.L24
	.loc 1 133 9
	lbu	a5,-17(s0)
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	.loc 1 134 13
	lbu	a4,-37(s0)
	lbu	a5,-17(s0)
	mv	a2,a4
	lw	a1,-36(s0)
	mv	a0,a5
	call	EF_Ctrl_Read_CapCode_Opt
	mv	a5,a0
	sb	a5,-18(s0)
	j	.L25
.L24:
	.loc 1 136 9
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.L25:
	.loc 1 139 5
	lbu	a4,-20(s0)
	lbu	a5,-19(s0)
	mv	a1,a4
	mv	a0,a5
	call	GLB_Set_System_CLK_Div
	.loc 1 140 5
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 142 7
	lbu	a5,-18(s0)
	bne	a5,zero,.L26
	.loc 1 143 16
	li	a5,0
	j	.L27
.L26:
	.loc 1 145 16
	li	a5,-1
.L27:
	.loc 1 147 1
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
	.size	mfg_efuse_read_xtal_capcode, .-mfg_efuse_read_xtal_capcode
	.section	.text.mfg_efuse_is_poweroffset_slot_empty,"ax",@progbits
	.align	1
	.globl	mfg_efuse_is_poweroffset_slot_empty
	.type	mfg_efuse_is_poweroffset_slot_empty, @function
mfg_efuse_is_poweroffset_slot_empty:
.LFB14:
	.loc 1 150 1
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
	.loc 1 151 13
	sb	zero,-17(s0)
	.loc 1 152 13
	sb	zero,-18(s0)
	.loc 1 152 20
	sb	zero,-19(s0)
	.loc 1 154 10
	call	GLB_Get_BCLK_Div
	mv	a5,a0
	sb	a5,-19(s0)
	.loc 1 155 10
	call	GLB_Get_HCLK_Div
	mv	a5,a0
	sb	a5,-18(s0)
	.loc 1 157 5
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 159 20
	lui	a5,%hi(rf_cal_slots)
	lbu	a5,%lo(rf_cal_slots)(a5)
	.loc 1 159 7
	beq	a5,zero,.L29
	.loc 1 159 25 discriminator 1
	lbu	a5,-33(s0)
	mv	a1,a5
	li	a0,0
	call	EF_Ctrl_Is_PowerOffset_Slot_Empty
	mv	a5,a0
	.loc 1 159 23 discriminator 2
	beq	a5,zero,.L29
	.loc 1 160 9
	li	a1,0
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 161 14
	li	a5,1
	sb	a5,-17(s0)
	j	.L30
.L29:
	.loc 1 162 26
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,%lo(rf_cal_slots)(a5)
	.loc 1 162 13
	li	a5,1
	bleu	a4,a5,.L31
	.loc 1 162 31 discriminator 1
	lbu	a5,-33(s0)
	mv	a1,a5
	li	a0,1
	call	EF_Ctrl_Is_PowerOffset_Slot_Empty
	mv	a5,a0
	.loc 1 162 29 discriminator 2
	beq	a5,zero,.L31
	.loc 1 163 9
	li	a1,1
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 164 14
	li	a5,1
	sb	a5,-17(s0)
	j	.L30
.L31:
	.loc 1 165 26
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,%lo(rf_cal_slots)(a5)
	.loc 1 165 13
	li	a5,2
	bleu	a4,a5,.L32
	.loc 1 165 31 discriminator 1
	lbu	a5,-33(s0)
	mv	a1,a5
	li	a0,2
	call	EF_Ctrl_Is_PowerOffset_Slot_Empty
	mv	a5,a0
	.loc 1 165 29 discriminator 2
	beq	a5,zero,.L32
	.loc 1 166 9
	li	a1,2
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 167 14
	li	a5,1
	sb	a5,-17(s0)
	j	.L30
.L32:
	.loc 1 169 9
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L30:
	.loc 1 172 5
	lbu	a4,-19(s0)
	lbu	a5,-18(s0)
	mv	a1,a4
	mv	a0,a5
	call	GLB_Set_System_CLK_Div
	.loc 1 173 5
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 175 12
	lbu	a5,-17(s0)
	.loc 1 176 1
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
	.size	mfg_efuse_is_poweroffset_slot_empty, .-mfg_efuse_is_poweroffset_slot_empty
	.section	.text.mfg_efuse_write_poweroffset_pre,"ax",@progbits
	.align	1
	.globl	mfg_efuse_write_poweroffset_pre
	.type	mfg_efuse_write_poweroffset_pre, @function
mfg_efuse_write_poweroffset_pre:
.LFB15:
	.loc 1 179 1
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
	.loc 1 180 17
	sb	zero,-17(s0)
	.loc 1 181 13
	li	a5,-1
	sb	a5,-18(s0)
	.loc 1 183 13
	sb	zero,-19(s0)
	.loc 1 183 20
	sb	zero,-20(s0)
	.loc 1 185 10
	call	GLB_Get_BCLK_Div
	mv	a5,a0
	sb	a5,-20(s0)
	.loc 1 186 10
	call	GLB_Get_HCLK_Div
	mv	a5,a0
	sb	a5,-19(s0)
	.loc 1 189 5
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 191 20
	lui	a5,%hi(rf_cal_slots)
	lbu	a5,%lo(rf_cal_slots)(a5)
	.loc 1 191 7
	beq	a5,zero,.L35
	.loc 1 191 25 discriminator 1
	li	a1,1
	li	a0,0
	call	EF_Ctrl_Is_PowerOffset_Slot_Empty
	mv	a5,a0
	.loc 1 191 23 discriminator 2
	beq	a5,zero,.L35
	.loc 1 192 13
	sb	zero,-18(s0)
	j	.L36
.L35:
	.loc 1 193 26
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,%lo(rf_cal_slots)(a5)
	.loc 1 193 13
	li	a5,1
	bleu	a4,a5,.L37
	.loc 1 193 31 discriminator 1
	li	a1,1
	li	a0,1
	call	EF_Ctrl_Is_PowerOffset_Slot_Empty
	mv	a5,a0
	.loc 1 193 29 discriminator 2
	beq	a5,zero,.L37
	.loc 1 194 13
	li	a5,1
	sb	a5,-18(s0)
	j	.L36
.L37:
	.loc 1 195 26
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,%lo(rf_cal_slots)(a5)
	.loc 1 195 13
	li	a5,2
	bleu	a4,a5,.L38
	.loc 1 195 31 discriminator 1
	li	a1,1
	li	a0,2
	call	EF_Ctrl_Is_PowerOffset_Slot_Empty
	mv	a5,a0
	.loc 1 195 29 discriminator 2
	beq	a5,zero,.L38
	.loc 1 196 13
	li	a5,2
	sb	a5,-18(s0)
	j	.L36
.L38:
	.loc 1 198 9
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L36:
	.loc 1 201 7
	lbu	a4,-18(s0)
	li	a5,255
	beq	a4,a5,.L39
	.loc 1 202 34
	lw	a5,-36(s0)
	lb	a5,0(a5)
	.loc 1 202 24
	sb	a5,-24(s0)
	.loc 1 203 24
	lw	a5,-36(s0)
	lb	a5,6(a5)
	sb	a5,-23(s0)
	.loc 1 204 24
	lw	a5,-36(s0)
	lb	a5,12(a5)
	sb	a5,-22(s0)
	.loc 1 205 13
	lbu	a3,-37(s0)
	addi	a4,s0,-24
	lbu	a5,-18(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	EF_Ctrl_Write_PowerOffset_Opt
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 206 9
	lbu	a5,-18(s0)
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L39:
	.loc 1 209 5
	lbu	a4,-20(s0)
	lbu	a5,-19(s0)
	mv	a1,a4
	mv	a0,a5
	call	GLB_Set_System_CLK_Div
	.loc 1 210 5
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 213 7
	lbu	a5,-17(s0)
	bne	a5,zero,.L40
	.loc 1 214 16
	li	a5,0
	j	.L42
.L40:
	.loc 1 216 16
	li	a5,-1
.L42:
	.loc 1 218 1
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
	.size	mfg_efuse_write_poweroffset_pre, .-mfg_efuse_write_poweroffset_pre
	.section	.text.mfg_efuse_write_poweroffset,"ax",@progbits
	.align	1
	.globl	mfg_efuse_write_poweroffset
	.type	mfg_efuse_write_poweroffset, @function
mfg_efuse_write_poweroffset:
.LFB16:
	.loc 1 221 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 222 13
	sb	zero,-17(s0)
	.loc 1 222 20
	sb	zero,-18(s0)
	.loc 1 224 10
	call	GLB_Get_BCLK_Div
	mv	a5,a0
	sb	a5,-18(s0)
	.loc 1 225 10
	call	GLB_Get_HCLK_Div
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 227 5
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 229 5
	li	a2,0
	li	a1,0
	li	a0,0
	call	EF_Ctrl_Program_Direct_R0
	.loc 1 230 10
	nop
.L44:
	.loc 1 230 16 discriminator 2
	call	EF_Ctrl_Busy
	mv	a5,a0
	mv	a4,a5
	.loc 1 230 14 discriminator 2
	li	a5,1
	beq	a4,a5,.L44
	.loc 1 232 5
	lbu	a4,-18(s0)
	lbu	a5,-17(s0)
	mv	a1,a4
	mv	a0,a5
	call	GLB_Set_System_CLK_Div
	.loc 1 233 5
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 235 1
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
	.size	mfg_efuse_write_poweroffset, .-mfg_efuse_write_poweroffset
	.section	.text.mfg_efuse_read_poweroffset,"ax",@progbits
	.align	1
	.globl	mfg_efuse_read_poweroffset
	.type	mfg_efuse_read_poweroffset, @function
mfg_efuse_read_poweroffset:
.LFB17:
	.loc 1 238 1
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
	.loc 1 239 13
	li	a5,-1
	sb	a5,-17(s0)
	.loc 1 240 17
	li	a5,1
	sb	a5,-18(s0)
	.loc 1 243 13
	sw	zero,-24(s0)
	.loc 1 244 13
	sb	zero,-25(s0)
	.loc 1 244 20
	sb	zero,-26(s0)
	.loc 1 246 10
	call	GLB_Get_BCLK_Div
	mv	a5,a0
	sb	a5,-26(s0)
	.loc 1 247 10
	call	GLB_Get_HCLK_Div
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 1 250 5
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 252 20
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,%lo(rf_cal_slots)(a5)
	.loc 1 252 7
	li	a5,2
	bleu	a4,a5,.L46
	.loc 1 252 27 discriminator 1
	lbu	a5,-37(s0)
	mv	a1,a5
	li	a0,2
	call	EF_Ctrl_Is_PowerOffset_Slot_Empty
	mv	a5,a0
	.loc 1 252 23 discriminator 2
	bne	a5,zero,.L46
	.loc 1 253 13
	li	a5,2
	sb	a5,-17(s0)
	j	.L47
.L46:
	.loc 1 254 26
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,%lo(rf_cal_slots)(a5)
	.loc 1 254 13
	li	a5,1
	bleu	a4,a5,.L48
	.loc 1 254 33 discriminator 1
	lbu	a5,-37(s0)
	mv	a1,a5
	li	a0,1
	call	EF_Ctrl_Is_PowerOffset_Slot_Empty
	mv	a5,a0
	.loc 1 254 29 discriminator 2
	bne	a5,zero,.L48
	.loc 1 255 13
	li	a5,1
	sb	a5,-17(s0)
	j	.L47
.L48:
	.loc 1 256 26
	lui	a5,%hi(rf_cal_slots)
	lbu	a5,%lo(rf_cal_slots)(a5)
	.loc 1 256 13
	beq	a5,zero,.L47
	.loc 1 256 33 discriminator 1
	lbu	a5,-37(s0)
	mv	a1,a5
	li	a0,0
	call	EF_Ctrl_Is_PowerOffset_Slot_Empty
	mv	a5,a0
	.loc 1 256 29 discriminator 2
	bne	a5,zero,.L47
	.loc 1 257 13
	sb	zero,-17(s0)
.L47:
	.loc 1 260 7
	lbu	a4,-17(s0)
	li	a5,255
	beq	a4,a5,.L49
	.loc 1 261 9
	lbu	a5,-17(s0)
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	.loc 1 262 13
	lbu	a3,-37(s0)
	addi	a4,s0,-32
	lbu	a5,-17(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	EF_Ctrl_Read_PowerOffset_Opt
	mv	a5,a0
	sb	a5,-18(s0)
	.loc 1 263 9
	li	a2,14
	li	a1,0
	lw	a0,-36(s0)
	call	memset
	.loc 1 265 34
	lb	a4,-32(s0)
	.loc 1 265 21
	lw	a5,-36(s0)
	sb	a4,0(a5)
	.loc 1 267 27
	lb	a5,-31(s0)
	mv	a4,a5
	.loc 1 267 43
	lb	a5,-32(s0)
	.loc 1 267 30
	sub	a4,a4,a5
	.loc 1 267 47
	li	a5,100
	mul	a5,a4,a5
	.loc 1 267 13
	li	a4,715829248
	addi	a4,a4,-1365
	mulh	a4,a5,a4
	srai	a5,a5,31
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 268 27
	lw	a5,-24(s0)
	addi	a5,a5,50
	.loc 1 268 31
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 268 35
	andi	a4,a5,0xff
	.loc 1 268 48
	lb	a5,-32(s0)
	andi	a5,a5,0xff
	.loc 1 268 35
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 268 18
	lw	a5,-36(s0)
	addi	a5,a5,1
	.loc 1 268 35
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 268 21
	sb	a4,0(a5)
	.loc 1 269 29
	lw	a5,-24(s0)
	addi	a5,a5,25
	.loc 1 269 33
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,4
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 269 37
	andi	a4,a5,0xff
	.loc 1 269 50
	lb	a5,-32(s0)
	andi	a5,a5,0xff
	.loc 1 269 37
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 269 18
	lw	a5,-36(s0)
	addi	a5,a5,2
	.loc 1 269 37
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 269 21
	sb	a4,0(a5)
	.loc 1 270 27
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 1 270 29
	addi	a5,a5,50
	.loc 1 270 33
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 270 37
	andi	a4,a5,0xff
	.loc 1 270 50
	lb	a5,-32(s0)
	andi	a5,a5,0xff
	.loc 1 270 37
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 270 18
	lw	a5,-36(s0)
	addi	a5,a5,3
	.loc 1 270 37
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 270 21
	sb	a4,0(a5)
	.loc 1 271 27
	lw	a5,-24(s0)
	slli	a5,a5,2
	.loc 1 271 29
	addi	a5,a5,50
	.loc 1 271 33
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 271 37
	andi	a4,a5,0xff
	.loc 1 271 50
	lb	a5,-32(s0)
	andi	a5,a5,0xff
	.loc 1 271 37
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 271 18
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 271 37
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 271 21
	sb	a4,0(a5)
	.loc 1 272 27
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	.loc 1 272 29
	addi	a5,a5,50
	.loc 1 272 33
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 272 37
	andi	a4,a5,0xff
	.loc 1 272 50
	lb	a5,-32(s0)
	andi	a5,a5,0xff
	.loc 1 272 37
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 272 18
	lw	a5,-36(s0)
	addi	a5,a5,5
	.loc 1 272 37
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 272 21
	sb	a4,0(a5)
	.loc 1 274 18
	lw	a5,-36(s0)
	addi	a5,a5,6
	.loc 1 274 34
	lb	a4,-31(s0)
	.loc 1 274 21
	sb	a4,0(a5)
	.loc 1 276 27
	lb	a5,-30(s0)
	mv	a4,a5
	.loc 1 276 43
	lb	a5,-31(s0)
	.loc 1 276 30
	sub	a4,a4,a5
	.loc 1 276 47
	li	a5,100
	mul	a5,a4,a5
	.loc 1 276 13
	li	a4,715829248
	addi	a4,a4,-1365
	mulh	a4,a5,a4
	srai	a5,a5,31
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 277 27
	lw	a5,-24(s0)
	addi	a5,a5,50
	.loc 1 277 31
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 277 35
	andi	a4,a5,0xff
	.loc 1 277 48
	lb	a5,-31(s0)
	andi	a5,a5,0xff
	.loc 1 277 35
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 277 18
	lw	a5,-36(s0)
	addi	a5,a5,7
	.loc 1 277 35
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 277 21
	sb	a4,0(a5)
	.loc 1 278 29
	lw	a5,-24(s0)
	addi	a5,a5,25
	.loc 1 278 33
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,4
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 278 37
	andi	a4,a5,0xff
	.loc 1 278 50
	lb	a5,-31(s0)
	andi	a5,a5,0xff
	.loc 1 278 37
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 278 18
	lw	a5,-36(s0)
	addi	a5,a5,8
	.loc 1 278 37
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 278 21
	sb	a4,0(a5)
	.loc 1 279 27
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 1 279 29
	addi	a5,a5,50
	.loc 1 279 33
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 279 37
	andi	a4,a5,0xff
	.loc 1 279 50
	lb	a5,-31(s0)
	andi	a5,a5,0xff
	.loc 1 279 37
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 279 18
	lw	a5,-36(s0)
	addi	a5,a5,9
	.loc 1 279 37
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 279 21
	sb	a4,0(a5)
	.loc 1 280 28
	lw	a5,-24(s0)
	slli	a5,a5,2
	.loc 1 280 30
	addi	a5,a5,50
	.loc 1 280 34
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 280 38
	andi	a4,a5,0xff
	.loc 1 280 51
	lb	a5,-31(s0)
	andi	a5,a5,0xff
	.loc 1 280 38
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 280 18
	lw	a5,-36(s0)
	addi	a5,a5,10
	.loc 1 280 38
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 280 22
	sb	a4,0(a5)
	.loc 1 281 28
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	.loc 1 281 30
	addi	a5,a5,50
	.loc 1 281 34
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 281 38
	andi	a4,a5,0xff
	.loc 1 281 51
	lb	a5,-31(s0)
	andi	a5,a5,0xff
	.loc 1 281 38
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 281 18
	lw	a5,-36(s0)
	addi	a5,a5,11
	.loc 1 281 38
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 281 22
	sb	a4,0(a5)
	.loc 1 283 18
	lw	a5,-36(s0)
	addi	a5,a5,12
	.loc 1 283 35
	lb	a4,-30(s0)
	.loc 1 283 22
	sb	a4,0(a5)
	.loc 1 285 28
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,3
	sub	a5,a5,a4
	.loc 1 285 30
	addi	a5,a5,50
	.loc 1 285 34
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 285 38
	andi	a4,a5,0xff
	.loc 1 285 51
	lb	a5,-31(s0)
	andi	a5,a5,0xff
	.loc 1 285 38
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 285 18
	lw	a5,-36(s0)
	addi	a5,a5,13
	.loc 1 285 38
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 285 22
	sb	a4,0(a5)
	j	.L50
.L49:
	.loc 1 287 9
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.L50:
	.loc 1 290 5
	lbu	a4,-26(s0)
	lbu	a5,-25(s0)
	mv	a1,a4
	mv	a0,a5
	call	GLB_Set_System_CLK_Div
	.loc 1 291 5
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 293 7
	lbu	a5,-18(s0)
	bne	a5,zero,.L51
	.loc 1 294 16
	li	a5,0
	j	.L53
.L51:
	.loc 1 296 16
	li	a5,-1
.L53:
	.loc 1 298 1
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
	.size	mfg_efuse_read_poweroffset, .-mfg_efuse_read_poweroffset
	.section	.text.mfg_efuse_is_macaddr_slot_empty,"ax",@progbits
	.align	1
	.globl	mfg_efuse_is_macaddr_slot_empty
	.type	mfg_efuse_is_macaddr_slot_empty, @function
mfg_efuse_is_macaddr_slot_empty:
.LFB18:
	.loc 1 301 1
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
	.loc 1 302 13
	sb	zero,-17(s0)
	.loc 1 303 13
	sb	zero,-18(s0)
	.loc 1 303 20
	sb	zero,-19(s0)
	.loc 1 305 10
	call	GLB_Get_BCLK_Div
	mv	a5,a0
	sb	a5,-19(s0)
	.loc 1 306 10
	call	GLB_Get_HCLK_Div
	mv	a5,a0
	sb	a5,-18(s0)
	.loc 1 308 5
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 310 20
	lui	a5,%hi(rf_cal_slots)
	lbu	a5,%lo(rf_cal_slots)(a5)
	.loc 1 310 7
	beq	a5,zero,.L55
	.loc 1 310 25 discriminator 1
	lbu	a5,-33(s0)
	mv	a1,a5
	li	a0,0
	call	EF_Ctrl_Is_MAC_Address_Slot_Empty
	mv	a5,a0
	.loc 1 310 23 discriminator 2
	beq	a5,zero,.L55
	.loc 1 311 9
	li	a1,0
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 312 14
	li	a5,1
	sb	a5,-17(s0)
	j	.L56
.L55:
	.loc 1 313 26
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,%lo(rf_cal_slots)(a5)
	.loc 1 313 13
	li	a5,1
	bleu	a4,a5,.L57
	.loc 1 313 31 discriminator 1
	lbu	a5,-33(s0)
	mv	a1,a5
	li	a0,1
	call	EF_Ctrl_Is_MAC_Address_Slot_Empty
	mv	a5,a0
	.loc 1 313 29 discriminator 2
	beq	a5,zero,.L57
	.loc 1 314 9
	li	a1,1
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 315 14
	li	a5,1
	sb	a5,-17(s0)
	j	.L56
.L57:
	.loc 1 316 26
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,%lo(rf_cal_slots)(a5)
	.loc 1 316 13
	li	a5,2
	bleu	a4,a5,.L58
	.loc 1 316 31 discriminator 1
	lbu	a5,-33(s0)
	mv	a1,a5
	li	a0,2
	call	EF_Ctrl_Is_MAC_Address_Slot_Empty
	mv	a5,a0
	.loc 1 316 29 discriminator 2
	beq	a5,zero,.L58
	.loc 1 317 9
	li	a1,2
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 318 14
	li	a5,1
	sb	a5,-17(s0)
	j	.L56
.L58:
	.loc 1 320 9
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L56:
	.loc 1 323 5
	lbu	a4,-19(s0)
	lbu	a5,-18(s0)
	mv	a1,a4
	mv	a0,a5
	call	GLB_Set_System_CLK_Div
	.loc 1 324 5
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 326 12
	lbu	a5,-17(s0)
	.loc 1 327 1
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
	.size	mfg_efuse_is_macaddr_slot_empty, .-mfg_efuse_is_macaddr_slot_empty
	.section	.text.mfg_efuse_write_macaddr_pre,"ax",@progbits
	.align	1
	.globl	mfg_efuse_write_macaddr_pre
	.type	mfg_efuse_write_macaddr_pre, @function
mfg_efuse_write_macaddr_pre:
.LFB19:
	.loc 1 330 1
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
	.loc 1 331 17
	sb	zero,-17(s0)
	.loc 1 332 13
	li	a5,-1
	sb	a5,-18(s0)
	.loc 1 333 13
	sb	zero,-19(s0)
	.loc 1 333 20
	sb	zero,-20(s0)
	.loc 1 335 10
	call	GLB_Get_BCLK_Div
	mv	a5,a0
	sb	a5,-20(s0)
	.loc 1 336 10
	call	GLB_Get_HCLK_Div
	mv	a5,a0
	sb	a5,-19(s0)
	.loc 1 339 5
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 341 20
	lui	a5,%hi(rf_cal_slots)
	lbu	a5,%lo(rf_cal_slots)(a5)
	.loc 1 341 7
	beq	a5,zero,.L61
	.loc 1 341 25 discriminator 1
	li	a1,1
	li	a0,0
	call	EF_Ctrl_Is_MAC_Address_Slot_Empty
	mv	a5,a0
	.loc 1 341 23 discriminator 2
	beq	a5,zero,.L61
	.loc 1 342 13
	sb	zero,-18(s0)
	j	.L62
.L61:
	.loc 1 343 26
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,%lo(rf_cal_slots)(a5)
	.loc 1 343 13
	li	a5,1
	bleu	a4,a5,.L63
	.loc 1 343 31 discriminator 1
	li	a1,1
	li	a0,1
	call	EF_Ctrl_Is_MAC_Address_Slot_Empty
	mv	a5,a0
	.loc 1 343 29 discriminator 2
	beq	a5,zero,.L63
	.loc 1 344 13
	li	a5,1
	sb	a5,-18(s0)
	j	.L62
.L63:
	.loc 1 345 26
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,%lo(rf_cal_slots)(a5)
	.loc 1 345 13
	li	a5,2
	bleu	a4,a5,.L64
	.loc 1 345 31 discriminator 1
	li	a1,1
	li	a0,2
	call	EF_Ctrl_Is_MAC_Address_Slot_Empty
	mv	a5,a0
	.loc 1 345 29 discriminator 2
	beq	a5,zero,.L64
	.loc 1 346 13
	li	a5,2
	sb	a5,-18(s0)
	j	.L62
.L64:
	.loc 1 348 9
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L62:
	.loc 1 351 7
	lbu	a4,-18(s0)
	li	a5,255
	beq	a4,a5,.L65
	.loc 1 352 13
	lbu	a4,-37(s0)
	lbu	a5,-18(s0)
	mv	a2,a4
	lw	a1,-36(s0)
	mv	a0,a5
	call	EF_Ctrl_Write_MAC_Address_Opt
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 353 9
	lbu	a5,-18(s0)
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L65:
	.loc 1 356 5
	lbu	a4,-20(s0)
	lbu	a5,-19(s0)
	mv	a1,a4
	mv	a0,a5
	call	GLB_Set_System_CLK_Div
	.loc 1 357 5
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 360 7
	lbu	a5,-17(s0)
	bne	a5,zero,.L66
	.loc 1 361 16
	li	a5,0
	j	.L67
.L66:
	.loc 1 363 16
	li	a5,-1
.L67:
	.loc 1 365 1
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
	.size	mfg_efuse_write_macaddr_pre, .-mfg_efuse_write_macaddr_pre
	.section	.text.mfg_efuse_write_macaddr,"ax",@progbits
	.align	1
	.globl	mfg_efuse_write_macaddr
	.type	mfg_efuse_write_macaddr, @function
mfg_efuse_write_macaddr:
.LFB20:
	.loc 1 368 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 369 13
	sb	zero,-17(s0)
	.loc 1 369 20
	sb	zero,-18(s0)
	.loc 1 371 10
	call	GLB_Get_BCLK_Div
	mv	a5,a0
	sb	a5,-18(s0)
	.loc 1 372 10
	call	GLB_Get_HCLK_Div
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 374 5
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 376 5
	li	a2,0
	li	a1,0
	li	a0,0
	call	EF_Ctrl_Program_Direct_R0
	.loc 1 377 10
	nop
.L69:
	.loc 1 377 16 discriminator 2
	call	EF_Ctrl_Busy
	mv	a5,a0
	mv	a4,a5
	.loc 1 377 14 discriminator 2
	li	a5,1
	beq	a4,a5,.L69
	.loc 1 381 5
	lbu	a4,-18(s0)
	lbu	a5,-17(s0)
	mv	a1,a4
	mv	a0,a5
	call	GLB_Set_System_CLK_Div
	.loc 1 382 5
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 384 1
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
	.size	mfg_efuse_write_macaddr, .-mfg_efuse_write_macaddr
	.section	.text.mfg_efuse_read_macaddr,"ax",@progbits
	.align	1
	.globl	mfg_efuse_read_macaddr
	.type	mfg_efuse_read_macaddr, @function
mfg_efuse_read_macaddr:
.LFB21:
	.loc 1 387 1
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
	.loc 1 388 13
	li	a5,-1
	sb	a5,-17(s0)
	.loc 1 389 17
	li	a5,1
	sb	a5,-18(s0)
	.loc 1 390 13
	sb	zero,-19(s0)
	.loc 1 390 20
	sb	zero,-20(s0)
	.loc 1 392 10
	call	GLB_Get_BCLK_Div
	mv	a5,a0
	sb	a5,-20(s0)
	.loc 1 393 10
	call	GLB_Get_HCLK_Div
	mv	a5,a0
	sb	a5,-19(s0)
	.loc 1 396 5
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 398 20
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,%lo(rf_cal_slots)(a5)
	.loc 1 398 7
	li	a5,2
	bleu	a4,a5,.L71
	.loc 1 398 27 discriminator 1
	lbu	a5,-37(s0)
	mv	a1,a5
	li	a0,2
	call	EF_Ctrl_Is_MAC_Address_Slot_Empty
	mv	a5,a0
	.loc 1 398 23 discriminator 2
	bne	a5,zero,.L71
	.loc 1 399 13
	li	a5,2
	sb	a5,-17(s0)
	j	.L72
.L71:
	.loc 1 400 26
	lui	a5,%hi(rf_cal_slots)
	lbu	a4,%lo(rf_cal_slots)(a5)
	.loc 1 400 13
	li	a5,1
	bleu	a4,a5,.L73
	.loc 1 400 33 discriminator 1
	lbu	a5,-37(s0)
	mv	a1,a5
	li	a0,1
	call	EF_Ctrl_Is_MAC_Address_Slot_Empty
	mv	a5,a0
	.loc 1 400 29 discriminator 2
	bne	a5,zero,.L73
	.loc 1 401 13
	li	a5,1
	sb	a5,-17(s0)
	j	.L72
.L73:
	.loc 1 402 26
	lui	a5,%hi(rf_cal_slots)
	lbu	a5,%lo(rf_cal_slots)(a5)
	.loc 1 402 13
	beq	a5,zero,.L72
	.loc 1 402 33 discriminator 1
	lbu	a5,-37(s0)
	mv	a1,a5
	li	a0,0
	call	EF_Ctrl_Is_MAC_Address_Slot_Empty
	mv	a5,a0
	.loc 1 402 29 discriminator 2
	bne	a5,zero,.L72
	.loc 1 403 13
	sb	zero,-17(s0)
.L72:
	.loc 1 406 7
	lbu	a4,-17(s0)
	li	a5,255
	beq	a4,a5,.L74
	.loc 1 407 9
	lbu	a5,-17(s0)
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	.loc 1 408 13
	lbu	a4,-37(s0)
	lbu	a5,-17(s0)
	mv	a2,a4
	lw	a1,-36(s0)
	mv	a0,a5
	call	EF_Ctrl_Read_MAC_Address_Opt
	mv	a5,a0
	sb	a5,-18(s0)
	j	.L75
.L74:
	.loc 1 410 9
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.L75:
	.loc 1 413 5
	lbu	a4,-20(s0)
	lbu	a5,-19(s0)
	mv	a1,a4
	mv	a0,a5
	call	GLB_Set_System_CLK_Div
	.loc 1 414 5
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 416 7
	lbu	a5,-18(s0)
	bne	a5,zero,.L76
	.loc 1 417 16
	li	a5,0
	j	.L77
.L76:
	.loc 1 419 16
	li	a5,-1
.L77:
	.loc 1 421 1
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
	.size	mfg_efuse_read_macaddr, .-mfg_efuse_read_macaddr
	.section	.text.mfg_efuse_write_pre,"ax",@progbits
	.align	1
	.globl	mfg_efuse_write_pre
	.type	mfg_efuse_write_pre, @function
mfg_efuse_write_pre:
.LFB22:
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
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 1 425 17
	sb	zero,-17(s0)
	.loc 1 426 13
	sb	zero,-18(s0)
	.loc 1 426 20
	sb	zero,-19(s0)
	.loc 1 428 7
	lw	a4,-36(s0)
	li	a5,128
	bleu	a4,a5,.L79
	.loc 1 429 16
	li	a5,-1
	j	.L80
.L79:
	.loc 1 432 10
	call	GLB_Get_BCLK_Div
	mv	a5,a0
	sb	a5,-19(s0)
	.loc 1 433 10
	call	GLB_Get_HCLK_Div
	mv	a5,a0
	sb	a5,-18(s0)
	.loc 1 435 5
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 437 26
	lw	a5,-36(s0)
	srli	a5,a5,2
	.loc 1 437 5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	EF_Ctrl_Write_R0
	.loc 1 439 5
	lbu	a4,-19(s0)
	lbu	a5,-18(s0)
	mv	a1,a4
	mv	a0,a5
	call	GLB_Set_System_CLK_Div
	.loc 1 440 5
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 442 7
	lbu	a5,-17(s0)
	bne	a5,zero,.L81
	.loc 1 443 16
	li	a5,0
	j	.L80
.L81:
	.loc 1 445 16
	li	a5,-1
.L80:
	.loc 1 447 1
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
	.size	mfg_efuse_write_pre, .-mfg_efuse_write_pre
	.section	.text.mfg_efuse_read,"ax",@progbits
	.align	1
	.globl	mfg_efuse_read
	.type	mfg_efuse_read, @function
mfg_efuse_read:
.LFB23:
	.loc 1 450 1
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
	mv	a5,a3
	sb	a5,-45(s0)
	.loc 1 451 17
	sb	zero,-17(s0)
	.loc 1 452 13
	sb	zero,-18(s0)
	.loc 1 452 20
	sb	zero,-19(s0)
	.loc 1 454 7
	lw	a4,-36(s0)
	li	a5,128
	bleu	a4,a5,.L83
	.loc 1 455 16
	li	a5,-1
	j	.L84
.L83:
	.loc 1 458 10
	call	GLB_Get_BCLK_Div
	mv	a5,a0
	sb	a5,-19(s0)
	.loc 1 459 10
	call	GLB_Get_HCLK_Div
	mv	a5,a0
	sb	a5,-18(s0)
	.loc 1 461 5
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 463 7
	lbu	a5,-45(s0)
	beq	a5,zero,.L85
	.loc 1 464 36
	lw	a5,-36(s0)
	srli	a5,a5,2
	.loc 1 464 9
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	EF_Ctrl_Read_Direct_R0
	j	.L86
.L85:
	.loc 1 466 29
	lw	a5,-36(s0)
	srli	a5,a5,2
	.loc 1 466 9
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	EF_Ctrl_Read_R0
.L86:
	.loc 1 469 5
	lbu	a4,-19(s0)
	lbu	a5,-18(s0)
	mv	a1,a4
	mv	a0,a5
	call	GLB_Set_System_CLK_Div
	.loc 1 470 5
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 472 7
	lbu	a5,-17(s0)
	bne	a5,zero,.L87
	.loc 1 473 16
	li	a5,0
	j	.L84
.L87:
	.loc 1 475 16
	li	a5,-1
.L84:
	.loc 1 477 1
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
	.size	mfg_efuse_read, .-mfg_efuse_read
	.section	.text.mfg_efuse_program,"ax",@progbits
	.align	1
	.globl	mfg_efuse_program
	.type	mfg_efuse_program, @function
mfg_efuse_program:
.LFB24:
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
	.loc 1 481 17
	sb	zero,-17(s0)
	.loc 1 482 13
	sb	zero,-18(s0)
	.loc 1 482 20
	sb	zero,-19(s0)
	.loc 1 484 10
	call	GLB_Get_BCLK_Div
	mv	a5,a0
	sb	a5,-19(s0)
	.loc 1 485 10
	call	GLB_Get_HCLK_Div
	mv	a5,a0
	sb	a5,-18(s0)
	.loc 1 487 5
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 489 5
	li	a2,0
	li	a1,0
	li	a0,0
	call	EF_Ctrl_Program_Direct_R0
	.loc 1 490 10
	nop
.L89:
	.loc 1 490 16 discriminator 2
	call	EF_Ctrl_Busy
	mv	a5,a0
	mv	a4,a5
	.loc 1 490 14 discriminator 2
	li	a5,1
	beq	a4,a5,.L89
	.loc 1 492 5
	lbu	a4,-19(s0)
	lbu	a5,-18(s0)
	mv	a1,a4
	mv	a0,a5
	call	GLB_Set_System_CLK_Div
	.loc 1 493 5
	li	a0,2
	call	HBN_Set_ROOT_CLK_Sel
	.loc 1 495 7
	lbu	a5,-17(s0)
	bne	a5,zero,.L90
	.loc 1 496 16
	li	a5,0
	j	.L91
.L90:
	.loc 1 498 16
	li	a5,-1
.L91:
	.loc 1 500 1
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
	.size	mfg_efuse_program, .-mfg_efuse_program
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x95d
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x15
	.4byte	.LASF79
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
	.uleb128 0x8
	.4byte	.LASF5
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x3e
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x8
	.4byte	.LASF6
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x58
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x8
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x85
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x9a
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0x17
	.byte	0x4
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x18
	.4byte	0xb6
	.uleb128 0xd
	.4byte	0xbd
	.uleb128 0x19
	.4byte	0xc2
	.uleb128 0x10
	.4byte	0x2b
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0xeb
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0xcc
	.uleb128 0x10
	.4byte	0x2b
	.byte	0x4
	.byte	0x2a
	.byte	0x1
	.4byte	0x110
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0
	.uleb128 0x1a
	.string	"SET"
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2d
	.byte	0x2
	.4byte	0xf7
	.uleb128 0x10
	.4byte	0x2b
	.byte	0x5
	.byte	0x75
	.byte	0xe
	.4byte	0x13b
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x5
	.byte	0x79
	.byte	0x2
	.4byte	0x11c
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x5
	.byte	0x10
	.4byte	0x66
	.uleb128 0x5
	.byte	0x3
	.4byte	rf_cal_slots
	.uleb128 0xe
	.4byte	.LASF28
	.2byte	0x12d
	.4byte	0x173
	.uleb128 0x1
	.4byte	0x79
	.uleb128 0x1
	.4byte	0x173
	.uleb128 0x1
	.4byte	0x79
	.byte	0
	.uleb128 0xd
	.4byte	0x79
	.uleb128 0xe
	.4byte	.LASF29
	.2byte	0x129
	.4byte	0x193
	.uleb128 0x1
	.4byte	0x79
	.uleb128 0x1
	.4byte	0x173
	.uleb128 0x1
	.4byte	0x79
	.byte	0
	.uleb128 0xe
	.4byte	.LASF30
	.2byte	0x12c
	.4byte	0x1ae
	.uleb128 0x1
	.4byte	0x79
	.uleb128 0x1
	.4byte	0x173
	.uleb128 0x1
	.4byte	0x79
	.byte	0
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x136
	.byte	0xd
	.4byte	0xeb
	.4byte	0x1cf
	.uleb128 0x1
	.4byte	0x66
	.uleb128 0x1
	.4byte	0x1cf
	.uleb128 0x1
	.4byte	0x66
	.byte	0
	.uleb128 0xd
	.4byte	0x66
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x135
	.byte	0xd
	.4byte	0xeb
	.4byte	0x1f5
	.uleb128 0x1
	.4byte	0x66
	.uleb128 0x1
	.4byte	0x1cf
	.uleb128 0x1
	.4byte	0x66
	.byte	0
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x134
	.byte	0x9
	.4byte	0x66
	.4byte	0x211
	.uleb128 0x1
	.4byte	0x66
	.uleb128 0x1
	.4byte	0x66
	.byte	0
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x7
	.byte	0x21
	.byte	0x8
	.4byte	0xb4
	.4byte	0x231
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0x93
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x13c
	.byte	0xd
	.4byte	0xeb
	.4byte	0x252
	.uleb128 0x1
	.4byte	0x66
	.uleb128 0x1
	.4byte	0x252
	.uleb128 0x1
	.4byte	0x66
	.byte	0
	.uleb128 0xd
	.4byte	0x32
	.uleb128 0x5
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x13b
	.byte	0xd
	.4byte	0xeb
	.4byte	0x278
	.uleb128 0x1
	.4byte	0x66
	.uleb128 0x1
	.4byte	0x252
	.uleb128 0x1
	.4byte	0x66
	.byte	0
	.uleb128 0x5
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x13a
	.byte	0x9
	.4byte	0x66
	.4byte	0x294
	.uleb128 0x1
	.4byte	0x66
	.uleb128 0x1
	.4byte	0x66
	.byte	0
	.uleb128 0x5
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x139
	.byte	0xd
	.4byte	0xeb
	.4byte	0x2b5
	.uleb128 0x1
	.4byte	0x66
	.uleb128 0x1
	.4byte	0x1cf
	.uleb128 0x1
	.4byte	0x66
	.byte	0
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x108
	.byte	0xd
	.4byte	0x110
	.uleb128 0xe
	.4byte	.LASF39
	.2byte	0x128
	.4byte	0x2dd
	.uleb128 0x1
	.4byte	0x79
	.uleb128 0x1
	.4byte	0x173
	.uleb128 0x1
	.4byte	0x79
	.byte	0
	.uleb128 0x5
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x138
	.byte	0xd
	.4byte	0xeb
	.4byte	0x2fe
	.uleb128 0x1
	.4byte	0x66
	.uleb128 0x1
	.4byte	0x66
	.uleb128 0x1
	.4byte	0x66
	.byte	0
	.uleb128 0x5
	.4byte	.LASF41
	.byte	0x8
	.2byte	0x22b
	.byte	0xd
	.4byte	0xeb
	.4byte	0x31a
	.uleb128 0x1
	.4byte	0x66
	.uleb128 0x1
	.4byte	0x66
	.byte	0
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x9
	.byte	0xce
	.byte	0x5
	.4byte	0x93
	.4byte	0x331
	.uleb128 0x1
	.4byte	0xc7
	.uleb128 0x1b
	.byte	0
	.uleb128 0x5
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x137
	.byte	0x9
	.4byte	0x66
	.4byte	0x34d
	.uleb128 0x1
	.4byte	0x66
	.uleb128 0x1
	.4byte	0x66
	.byte	0
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x1a8
	.byte	0xd
	.4byte	0xeb
	.4byte	0x364
	.uleb128 0x1
	.4byte	0x13b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x8
	.2byte	0x22d
	.byte	0x9
	.4byte	0x66
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x8
	.2byte	0x22c
	.byte	0x9
	.4byte	0x66
	.uleb128 0xa
	.4byte	.LASF51
	.2byte	0x1df
	.byte	0x8
	.4byte	0x32
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c5
	.uleb128 0xc
	.string	"ret"
	.2byte	0x1e1
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x1e2
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x3
	.4byte	.LASF50
	.2byte	0x1e2
	.byte	0x14
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.byte	0
	.uleb128 0xa
	.4byte	.LASF52
	.2byte	0x1c1
	.byte	0x8
	.4byte	0x32
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x448
	.uleb128 0x7
	.4byte	.LASF53
	.2byte	0x1c1
	.byte	0x20
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF54
	.2byte	0x1c1
	.byte	0x2f
	.4byte	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF55
	.2byte	0x1c1
	.byte	0x3d
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.4byte	.LASF56
	.2byte	0x1c1
	.byte	0x51
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0xc
	.string	"ret"
	.2byte	0x1c3
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x1c4
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x3
	.4byte	.LASF50
	.2byte	0x1c4
	.byte	0x14
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.byte	0
	.uleb128 0xa
	.4byte	.LASF57
	.2byte	0x1a7
	.byte	0x8
	.4byte	0x32
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bc
	.uleb128 0x7
	.4byte	.LASF53
	.2byte	0x1a7
	.byte	0x25
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF54
	.2byte	0x1a7
	.byte	0x34
	.4byte	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF55
	.2byte	0x1a7
	.byte	0x42
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"ret"
	.2byte	0x1a9
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x1aa
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x3
	.4byte	.LASF50
	.2byte	0x1aa
	.byte	0x14
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.byte	0
	.uleb128 0xa
	.4byte	.LASF58
	.2byte	0x182
	.byte	0x8
	.4byte	0x32
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x530
	.uleb128 0x13
	.string	"mac"
	.2byte	0x182
	.byte	0x27
	.4byte	0x1cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF56
	.2byte	0x182
	.byte	0x36
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x184
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xc
	.string	"ret"
	.2byte	0x185
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x186
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x3
	.4byte	.LASF50
	.2byte	0x186
	.byte	0x14
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x16f
	.byte	0x6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x566
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x171
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3
	.4byte	.LASF50
	.2byte	0x171
	.byte	0x14
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF60
	.2byte	0x149
	.byte	0x8
	.4byte	0x32
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5da
	.uleb128 0x13
	.string	"mac"
	.2byte	0x149
	.byte	0x2c
	.4byte	0x1cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF61
	.2byte	0x149
	.byte	0x3b
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xc
	.string	"ret"
	.2byte	0x14b
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x14c
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x14d
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x3
	.4byte	.LASF50
	.2byte	0x14d
	.byte	0x14
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF62
	.2byte	0x12c
	.byte	0x9
	.4byte	0x66
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x631
	.uleb128 0x7
	.4byte	.LASF56
	.2byte	0x12c
	.byte	0x31
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF63
	.2byte	0x12e
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x12f
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x3
	.4byte	.LASF50
	.2byte	0x12f
	.byte	0x14
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.byte	0
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0xed
	.byte	0x8
	.4byte	0x32
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ba
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0xed
	.byte	0x2a
	.4byte	0x252
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0xed
	.byte	0x40
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0xef
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xf
	.string	"ret"
	.byte	0xf0
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0xf1
	.byte	0xc
	.4byte	0x6ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0xf3
	.byte	0xd
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0xf4
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xf4
	.byte	0x14
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x1d
	.4byte	0x32
	.4byte	0x6ca
	.uleb128 0x1e
	.4byte	0x9a
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0xdc
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fb
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0xde
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xde
	.byte	0x14
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0xb2
	.byte	0x8
	.4byte	0x32
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x776
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0xb2
	.byte	0x2f
	.4byte	0x252
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0xb2
	.byte	0x45
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xf
	.string	"ret"
	.byte	0xb4
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0xb5
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0xb6
	.byte	0xc
	.4byte	0x6ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0xb7
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xb7
	.byte	0x14
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x95
	.byte	0x9
	.4byte	0x66
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c8
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x95
	.byte	0x35
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x97
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x98
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x98
	.byte	0x14
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.byte	0
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x71
	.byte	0x8
	.4byte	0x32
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x835
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0x71
	.byte	0x2d
	.4byte	0x1cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x71
	.byte	0x3d
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x73
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xf
	.string	"ret"
	.byte	0x74
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x75
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x75
	.byte	0x14
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x60
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x866
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x62
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x62
	.byte	0x14
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x3d
	.byte	0x8
	.4byte	0x32
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d3
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0x3d
	.byte	0x31
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x3d
	.byte	0x41
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xf
	.string	"ret"
	.byte	0x3f
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x40
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x41
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x41
	.byte	0x14
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x20
	.byte	0x9
	.4byte	0x66
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x925
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x20
	.byte	0x36
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x22
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x23
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x23
	.byte	0x14
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF77
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x94a
	.uleb128 0x6
	.4byte	.LASF78
	.byte	0x1b
	.byte	0x29
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x20
	.4byte	.LASF80
	.byte	0x1
	.byte	0xf
	.byte	0x9
	.4byte	0x66
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xc
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
	.sleb128 17
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
.LASF36:
	.string	"EF_Ctrl_Write_PowerOffset_Opt"
.LASF45:
	.string	"EF_Ctrl_Busy"
.LASF55:
	.string	"countInword"
.LASF53:
	.string	"addr"
.LASF26:
	.string	"HBN_ROOT_CLK_PLL"
.LASF5:
	.string	"int8_t"
.LASF40:
	.string	"EF_Ctrl_Write_CapCode_Opt"
.LASF39:
	.string	"EF_Ctrl_Program_Direct_R0"
.LASF15:
	.string	"size_t"
.LASF31:
	.string	"EF_Ctrl_Read_MAC_Address_Opt"
.LASF8:
	.string	"long long int"
.LASF54:
	.string	"data"
.LASF33:
	.string	"EF_Ctrl_Is_MAC_Address_Slot_Empty"
.LASF74:
	.string	"mfg_efuse_write_xtal_capcode"
.LASF28:
	.string	"EF_Ctrl_Read_R0"
.LASF25:
	.string	"HBN_ROOT_CLK_XTAL"
.LASF71:
	.string	"mfg_efuse_is_poweroffset_slot_empty"
.LASF9:
	.string	"uint8_t"
.LASF37:
	.string	"EF_Ctrl_Is_PowerOffset_Slot_Empty"
.LASF73:
	.string	"capcode"
.LASF61:
	.string	"program"
.LASF44:
	.string	"HBN_Set_ROOT_CLK_Sel"
.LASF24:
	.string	"HBN_ROOT_CLK_RC32M"
.LASF4:
	.string	"short int"
.LASF63:
	.string	"empty"
.LASF18:
	.string	"SUCCESS"
.LASF75:
	.string	"mfg_efuse_write_xtal_capcode_pre"
.LASF47:
	.string	"GLB_Get_BCLK_Div"
.LASF34:
	.string	"memset"
.LASF20:
	.string	"TIMEOUT"
.LASF7:
	.string	"long int"
.LASF21:
	.string	"BL_Err_Type"
.LASF51:
	.string	"mfg_efuse_program"
.LASF46:
	.string	"GLB_Get_HCLK_Div"
.LASF60:
	.string	"mfg_efuse_write_macaddr_pre"
.LASF80:
	.string	"mfg_efuse_get_rf_cal_slots"
.LASF19:
	.string	"ERROR"
.LASF78:
	.string	"slots"
.LASF16:
	.string	"long double"
.LASF64:
	.string	"mfg_efuse_read_poweroffset"
.LASF2:
	.string	"unsigned char"
.LASF3:
	.string	"signed char"
.LASF13:
	.string	"long long unsigned int"
.LASF27:
	.string	"HBN_ROOT_CLK_Type"
.LASF11:
	.string	"uint32_t"
.LASF32:
	.string	"EF_Ctrl_Write_MAC_Address_Opt"
.LASF49:
	.string	"hdiv"
.LASF14:
	.string	"unsigned int"
.LASF59:
	.string	"slot"
.LASF10:
	.string	"short unsigned int"
.LASF43:
	.string	"EF_Ctrl_Is_CapCode_Slot_Empty"
.LASF17:
	.string	"char"
.LASF66:
	.string	"pwrOffsetTmp"
.LASF6:
	.string	"int32_t"
.LASF65:
	.string	"pwrOffset"
.LASF79:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF69:
	.string	"mfg_efuse_write_poweroffset"
.LASF72:
	.string	"mfg_efuse_read_xtal_capcode"
.LASF35:
	.string	"EF_Ctrl_Read_PowerOffset_Opt"
.LASF48:
	.string	"rf_cal_slots"
.LASF68:
	.string	"mfg_efuse_write_macaddr"
.LASF12:
	.string	"long unsigned int"
.LASF29:
	.string	"EF_Ctrl_Read_Direct_R0"
.LASF23:
	.string	"BL_Sts_Type"
.LASF58:
	.string	"mfg_efuse_read_macaddr"
.LASF57:
	.string	"mfg_efuse_write_pre"
.LASF70:
	.string	"mfg_efuse_write_poweroffset_pre"
.LASF22:
	.string	"RESET"
.LASF62:
	.string	"mfg_efuse_is_macaddr_slot_empty"
.LASF38:
	.string	"EF_Ctrl_Read_CapCode_Opt"
.LASF41:
	.string	"GLB_Set_System_CLK_Div"
.LASF50:
	.string	"bdiv"
.LASF52:
	.string	"mfg_efuse_read"
.LASF56:
	.string	"reload"
.LASF76:
	.string	"mfg_efuse_is_xtal_capcode_slot_empty"
.LASF42:
	.string	"printf"
.LASF30:
	.string	"EF_Ctrl_Write_R0"
.LASF67:
	.string	"step"
.LASF77:
	.string	"mfg_efuse_set_rf_cal_slots"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_mfg_efuse.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
