	.file	"bl602_mfg_flash.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_mfg_flash.c"
	.section	.bss.rf_para,"aw",@nobits
	.align	2
	.type	rf_para, @object
	.size	rf_para, 24
rf_para:
	.zero	24
	.section	.sbss.rf_para_addr,"aw",@nobits
	.align	2
	.type	rf_para_addr, @object
	.size	rf_para_addr, 4
rf_para_addr:
	.zero	4
	.section	.sbss.pFlashCfg,"aw",@nobits
	.align	2
	.type	pFlashCfg, @object
	.size	pFlashCfg, 4
pFlashCfg:
	.zero	4
	.globl	ptTableStuff
	.section	.bss.ptTableStuff,"aw",@nobits
	.align	2
	.type	ptTableStuff, @object
	.size	ptTableStuff, 1192
ptTableStuff:
	.zero	1192
	.globl	ptEntry
	.section	.bss.ptEntry,"aw",@nobits
	.align	2
	.type	ptEntry, @object
	.size	ptEntry, 36
ptEntry:
	.zero	36
	.section	.text.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_mfg_flash.c"
	.loc 1 26 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 28 1
	nop
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
	.size	main, .-main
	.section	.text.PtTable_Flash_Read,"ax",@progbits
	.align	1
	.type	PtTable_Flash_Read, @function
PtTable_Flash_Read:
.LFB9:
	.loc 1 31 1
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
	sw	a2,-28(s0)
	.loc 1 32 5
	lui	a5,%hi(pFlashCfg)
	lw	a5,%lo(pFlashCfg)(a5)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	XIP_SFlash_Read_Need_Lock
	.loc 1 33 12
	li	a5,0
	.loc 1 34 1
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
	.size	PtTable_Flash_Read, .-PtTable_Flash_Read
	.section	.rodata
	.align	2
.LC0:
	.string	"No valid PT\r\n"
	.align	2
.LC1:
	.string	"rf_para"
	.align	2
.LC2:
	.string	"RF para flash address=%08x\r\n"
	.align	2
.LC3:
	.string	"Not found rf_para\r\n"
	.section	.text.mfg_flash_init,"ax",@progbits
	.align	1
	.globl	mfg_flash_init
	.type	mfg_flash_init, @function
mfg_flash_init:
.LFB10:
	.loc 1 37 1
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
	.loc 1 41 14
	lui	a5,%hi(pFlashCfg)
	lw	a4,-36(s0)
	sw	a4,%lo(pFlashCfg)(a5)
	.loc 1 42 17
	lui	a5,%hi(pFlashCfg)
	lw	a5,%lo(pFlashCfg)(a5)
	.loc 1 42 7
	beq	a5,zero,.L5
	.loc 1 43 9
	lui	a5,%hi(PtTable_Flash_Read)
	addi	a2,a5,%lo(PtTable_Flash_Read)
	li	a1,0
	li	a0,0
	call	PtTable_Set_Flash_Operation
	.loc 1 44 18
	lui	a5,%hi(ptTableStuff)
	addi	a0,a5,%lo(ptTableStuff)
	call	PtTable_Get_Active_Partition_Need_Lock
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 45 11
	lbu	a4,-17(s0)
	li	a5,2
	bne	a4,a5,.L6
	.loc 1 46 13
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 47 20
	li	a5,-1
	j	.L7
.L6:
	.loc 1 49 61
	lbu	a4,-17(s0)
	.loc 1 49 13
	li	a5,596
	mul	a4,a4,a5
	lui	a5,%hi(ptTableStuff)
	addi	a5,a5,%lo(ptTableStuff)
	add	a4,a4,a5
	lui	a5,%hi(ptEntry)
	addi	a2,a5,%lo(ptEntry)
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	mv	a0,a4
	call	PtTable_Get_Active_Entries_By_Name
	mv	a5,a0
	sb	a5,-18(s0)
	.loc 1 50 11
	lbu	a5,-18(s0)
	bne	a5,zero,.L8
	.loc 1 51 41
	lui	a5,%hi(ptEntry)
	addi	a5,a5,%lo(ptEntry)
	lw	a4,12(a5)
	.loc 1 51 25
	lui	a5,%hi(rf_para_addr)
	sw	a4,%lo(rf_para_addr)(a5)
	.loc 1 52 13
	lui	a5,%hi(rf_para_addr)
	lw	a5,%lo(rf_para_addr)(a5)
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	.loc 1 53 20
	li	a5,0
	j	.L7
.L8:
	.loc 1 55 13
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	.loc 1 56 20
	li	a5,-1
	j	.L7
.L5:
	.loc 1 59 12
	li	a5,-1
.L7:
	.loc 1 60 1
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
	.size	mfg_flash_init, .-mfg_flash_init
	.section	.rodata
	.align	2
.LC4:
	.string	"mfg_flash_write\r\n"
	.align	2
.LC5:
	.string	"Flash erase error\r\n"
	.align	2
.LC6:
	.string	"Flash write error\r\n"
	.section	.text.mfg_flash_program,"ax",@progbits
	.align	1
	.type	mfg_flash_program, @function
mfg_flash_program:
.LFB11:
	.loc 1 63 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 66 5
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.LBB14:
.LBB15:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"
	.loc 2 94 3
 #APP
# 94 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrci mstatus, 8
# 0 "" 2
	.loc 2 95 1
 #NO_APP
	nop
.LBE15:
.LBE14:
	.loc 1 69 10
	lui	a5,%hi(pFlashCfg)
	lw	a4,%lo(pFlashCfg)(a5)
	lui	a5,%hi(rf_para_addr)
	lw	a3,%lo(rf_para_addr)(a5)
	lui	a5,%hi(rf_para_addr)
	lw	a5,%lo(rf_para_addr)(a5)
	.loc 1 69 72
	addi	a5,a5,15
	.loc 1 69 10
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	XIP_SFlash_Erase_Need_Lock
	mv	a5,a0
	sb	a5,-17(s0)
.LBB16:
.LBB17:
	.loc 2 89 3
 #APP
# 89 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrsi mstatus, 8
# 0 "" 2
	.loc 2 90 1
 #NO_APP
	nop
.LBE17:
.LBE16:
	.loc 1 71 8
	lbu	a5,-17(s0)
	beq	a5,zero,.L10
	.loc 1 72 10
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	printf
	.loc 1 73 17
	li	a5,-1
	j	.L11
.L10:
.LBB18:
.LBB19:
	.loc 2 94 3
 #APP
# 94 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrci mstatus, 8
# 0 "" 2
	.loc 2 95 1
 #NO_APP
	nop
.LBE19:
.LBE18:
	.loc 1 77 10
	lui	a5,%hi(pFlashCfg)
	lw	a4,%lo(pFlashCfg)(a5)
	lui	a5,%hi(rf_para_addr)
	lw	a1,%lo(rf_para_addr)(a5)
	li	a3,24
	lui	a5,%hi(rf_para)
	addi	a2,a5,%lo(rf_para)
	mv	a0,a4
	call	XIP_SFlash_Write_Need_Lock
	mv	a5,a0
	sb	a5,-17(s0)
.LBB20:
.LBB21:
	.loc 2 89 3
 #APP
# 89 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrsi mstatus, 8
# 0 "" 2
	.loc 2 90 1
 #NO_APP
	nop
.LBE21:
.LBE20:
	.loc 1 79 8
	lbu	a5,-17(s0)
	beq	a5,zero,.L12
	.loc 1 80 10
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
	.loc 1 81 17
	li	a5,-1
	j	.L11
.L12:
	.loc 1 84 13
	li	a5,0
.L11:
	.loc 1 85 1
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
	.size	mfg_flash_program, .-mfg_flash_program
	.section	.rodata
	.align	2
.LC7:
	.string	"mfg_flash_read\r\n"
	.section	.text.mfg_flash_read,"ax",@progbits
	.align	1
	.type	mfg_flash_read, @function
mfg_flash_read:
.LFB12:
	.loc 1 88 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 91 5
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
.LBB22:
.LBB23:
	.loc 2 94 3
 #APP
# 94 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrci mstatus, 8
# 0 "" 2
	.loc 2 95 1
 #NO_APP
	nop
.LBE23:
.LBE22:
	.loc 1 94 10
	lui	a5,%hi(pFlashCfg)
	lw	a4,%lo(pFlashCfg)(a5)
	lui	a5,%hi(rf_para_addr)
	lw	a1,%lo(rf_para_addr)(a5)
	li	a3,24
	lui	a5,%hi(rf_para)
	addi	a2,a5,%lo(rf_para)
	mv	a0,a4
	call	XIP_SFlash_Read_Need_Lock
	mv	a5,a0
	sb	a5,-17(s0)
.LBB24:
.LBB25:
	.loc 2 89 3
 #APP
# 89 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrsi mstatus, 8
# 0 "" 2
	.loc 2 90 1
 #NO_APP
	nop
.LBE25:
.LBE24:
	.loc 1 96 8
	lbu	a5,-17(s0)
	beq	a5,zero,.L14
	.loc 1 97 10
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
	.loc 1 98 17
	li	a5,-1
	j	.L15
.L14:
	.loc 1 101 13
	li	a5,0
.L15:
	.loc 1 102 1
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
	.size	mfg_flash_read, .-mfg_flash_read
	.section	.text.mfg_flash_write_xtal_capcode_pre,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_xtal_capcode_pre
	.type	mfg_flash_write_xtal_capcode_pre, @function
mfg_flash_write_xtal_capcode_pre:
.LFB13:
	.loc 1 105 1
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
	sb	a5,-17(s0)
	mv	a5,a4
	sb	a5,-18(s0)
	.loc 1 106 18
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	li	a4,65
	sw	a4,0(a5)
	.loc 1 107 26
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	li	a4,90
	sb	a4,4(a5)
	.loc 1 108 20
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	lbu	a4,-17(s0)
	sb	a4,5(a5)
	.loc 1 109 19
	li	a1,16
	lui	a5,%hi(rf_para+4)
	addi	a0,a5,%lo(rf_para+4)
	call	BFLB_Soft_CRC32
	mv	a4,a0
	.loc 1 109 18 discriminator 1
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	sw	a4,20(a5)
	.loc 1 111 7
	lbu	a5,-18(s0)
	beq	a5,zero,.L17
	.loc 1 112 16
	call	mfg_flash_program
	mv	a5,a0
	j	.L18
.L17:
	.loc 1 114 16
	li	a5,0
.L18:
	.loc 1 116 1
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
	.size	mfg_flash_write_xtal_capcode_pre, .-mfg_flash_write_xtal_capcode_pre
	.section	.text.mfg_flash_write_xtal_capcode,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_xtal_capcode
	.type	mfg_flash_write_xtal_capcode, @function
mfg_flash_write_xtal_capcode:
.LFB14:
	.loc 1 119 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 120 5
	call	mfg_flash_program
	.loc 1 121 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	mfg_flash_write_xtal_capcode, .-mfg_flash_write_xtal_capcode
	.section	.text.mfg_flash_read_xtal_capcode,"ax",@progbits
	.align	1
	.globl	mfg_flash_read_xtal_capcode
	.type	mfg_flash_read_xtal_capcode, @function
mfg_flash_read_xtal_capcode:
.LFB15:
	.loc 1 124 1
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
	sw	a0,-20(s0)
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 1 125 7
	lbu	a5,-21(s0)
	beq	a5,zero,.L21
	.loc 1 125 22 discriminator 1
	call	mfg_flash_read
	mv	a5,a0
	.loc 1 125 19 discriminator 2
	beq	a5,zero,.L21
	.loc 1 126 16
	li	a5,-1
	j	.L22
.L21:
	.loc 1 128 15
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	lw	a4,0(a5)
	.loc 1 128 7
	li	a5,65
	bne	a4,a5,.L23
	.loc 1 129 19
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	lw	s1,20(a5)
	.loc 1 129 28
	li	a1,16
	lui	a5,%hi(rf_para+4)
	addi	a0,a5,%lo(rf_para+4)
	call	BFLB_Soft_CRC32
	mv	a5,a0
	.loc 1 129 11 discriminator 1
	bne	s1,a5,.L23
	.loc 1 130 23
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	lbu	a4,4(a5)
	.loc 1 130 15
	li	a5,90
	bne	a4,a5,.L23
	.loc 1 131 33
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	lbu	a4,5(a5)
	.loc 1 131 25
	lw	a5,-20(s0)
	sb	a4,0(a5)
	.loc 1 132 24
	li	a5,0
	j	.L22
.L23:
	.loc 1 136 12
	li	a5,-1
.L22:
	.loc 1 137 1
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
.LFE15:
	.size	mfg_flash_read_xtal_capcode, .-mfg_flash_read_xtal_capcode
	.section	.text.mfg_flash_write_poweroffset_pre,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_poweroffset_pre
	.type	mfg_flash_write_poweroffset_pre, @function
mfg_flash_write_poweroffset_pre:
.LFB16:
	.loc 1 140 1
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
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 1 141 18
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	li	a4,65
	sw	a4,0(a5)
	.loc 1 142 30
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	li	a4,90
	sb	a4,6(a5)
	.loc 1 143 37
	lw	a5,-20(s0)
	lb	a4,0(a5)
	.loc 1 143 27
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	sb	a4,7(a5)
	.loc 1 144 27
	lw	a5,-20(s0)
	lb	a4,6(a5)
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	sb	a4,8(a5)
	.loc 1 145 27
	lw	a5,-20(s0)
	lb	a4,12(a5)
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	sb	a4,9(a5)
	.loc 1 146 19
	li	a1,16
	lui	a5,%hi(rf_para+4)
	addi	a0,a5,%lo(rf_para+4)
	call	BFLB_Soft_CRC32
	mv	a4,a0
	.loc 1 146 18 discriminator 1
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	sw	a4,20(a5)
	.loc 1 148 7
	lbu	a5,-21(s0)
	beq	a5,zero,.L25
	.loc 1 149 16
	call	mfg_flash_program
	mv	a5,a0
	j	.L26
.L25:
	.loc 1 151 16
	li	a5,0
.L26:
	.loc 1 153 1
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
	.size	mfg_flash_write_poweroffset_pre, .-mfg_flash_write_poweroffset_pre
	.section	.text.mfg_flash_write_poweroffset,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_poweroffset
	.type	mfg_flash_write_poweroffset, @function
mfg_flash_write_poweroffset:
.LFB17:
	.loc 1 156 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 157 5
	call	mfg_flash_program
	.loc 1 158 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	mfg_flash_write_poweroffset, .-mfg_flash_write_poweroffset
	.section	.text.mfg_flash_read_poweroffset,"ax",@progbits
	.align	1
	.globl	mfg_flash_read_poweroffset
	.type	mfg_flash_read_poweroffset, @function
mfg_flash_read_poweroffset:
.LFB18:
	.loc 1 161 1
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
	sw	a0,-36(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 163 13
	sw	zero,-20(s0)
	.loc 1 165 7
	lbu	a5,-37(s0)
	beq	a5,zero,.L29
	.loc 1 165 22 discriminator 1
	call	mfg_flash_read
	mv	a5,a0
	.loc 1 165 19 discriminator 2
	beq	a5,zero,.L29
	.loc 1 166 16
	li	a5,-1
	j	.L32
.L29:
	.loc 1 168 15
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	lw	a4,0(a5)
	.loc 1 168 7
	li	a5,65
	bne	a4,a5,.L31
	.loc 1 169 19
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	lw	s1,20(a5)
	.loc 1 169 28
	li	a1,16
	lui	a5,%hi(rf_para+4)
	addi	a0,a5,%lo(rf_para+4)
	call	BFLB_Soft_CRC32
	mv	a5,a0
	.loc 1 169 11 discriminator 1
	bne	s1,a5,.L31
	.loc 1 170 23
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	lbu	a4,6(a5)
	.loc 1 170 15
	li	a5,90
	bne	a4,a5,.L31
	.loc 1 171 17
	li	a2,14
	li	a1,0
	lw	a0,-36(s0)
	call	memset
	.loc 1 172 52
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	lb	a5,7(a5)
	.loc 1 172 32
	sb	a5,-24(s0)
	.loc 1 173 52
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	lb	a5,8(a5)
	.loc 1 173 32
	sb	a5,-23(s0)
	.loc 1 174 52
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	lb	a5,9(a5)
	.loc 1 174 32
	sb	a5,-22(s0)
	.loc 1 176 42
	lb	a4,-24(s0)
	.loc 1 176 29
	lw	a5,-36(s0)
	sb	a4,0(a5)
	.loc 1 178 35
	lb	a5,-23(s0)
	mv	a4,a5
	.loc 1 178 51
	lb	a5,-24(s0)
	.loc 1 178 38
	sub	a4,a4,a5
	.loc 1 178 55
	li	a5,100
	mul	a5,a4,a5
	.loc 1 178 21
	li	a4,715829248
	addi	a4,a4,-1365
	mulh	a4,a5,a4
	srai	a5,a5,31
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 179 35
	lw	a5,-20(s0)
	addi	a5,a5,50
	.loc 1 179 39
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 179 43
	andi	a4,a5,0xff
	.loc 1 179 56
	lb	a5,-24(s0)
	andi	a5,a5,0xff
	.loc 1 179 43
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 179 26
	lw	a5,-36(s0)
	addi	a5,a5,1
	.loc 1 179 43
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 179 29
	sb	a4,0(a5)
	.loc 1 180 37
	lw	a5,-20(s0)
	addi	a5,a5,25
	.loc 1 180 41
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,4
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 180 45
	andi	a4,a5,0xff
	.loc 1 180 58
	lb	a5,-24(s0)
	andi	a5,a5,0xff
	.loc 1 180 45
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 180 26
	lw	a5,-36(s0)
	addi	a5,a5,2
	.loc 1 180 45
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 180 29
	sb	a4,0(a5)
	.loc 1 181 35
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 1 181 37
	addi	a5,a5,50
	.loc 1 181 41
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 181 45
	andi	a4,a5,0xff
	.loc 1 181 58
	lb	a5,-24(s0)
	andi	a5,a5,0xff
	.loc 1 181 45
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 181 26
	lw	a5,-36(s0)
	addi	a5,a5,3
	.loc 1 181 45
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 181 29
	sb	a4,0(a5)
	.loc 1 182 35
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 1 182 37
	addi	a5,a5,50
	.loc 1 182 41
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 182 45
	andi	a4,a5,0xff
	.loc 1 182 58
	lb	a5,-24(s0)
	andi	a5,a5,0xff
	.loc 1 182 45
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 182 26
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 182 45
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 182 29
	sb	a4,0(a5)
	.loc 1 183 35
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	.loc 1 183 37
	addi	a5,a5,50
	.loc 1 183 41
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 183 45
	andi	a4,a5,0xff
	.loc 1 183 58
	lb	a5,-24(s0)
	andi	a5,a5,0xff
	.loc 1 183 45
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 183 26
	lw	a5,-36(s0)
	addi	a5,a5,5
	.loc 1 183 45
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 183 29
	sb	a4,0(a5)
	.loc 1 185 26
	lw	a5,-36(s0)
	addi	a5,a5,6
	.loc 1 185 42
	lb	a4,-23(s0)
	.loc 1 185 29
	sb	a4,0(a5)
	.loc 1 187 35
	lb	a5,-22(s0)
	mv	a4,a5
	.loc 1 187 51
	lb	a5,-23(s0)
	.loc 1 187 38
	sub	a4,a4,a5
	.loc 1 187 55
	li	a5,100
	mul	a5,a4,a5
	.loc 1 187 21
	li	a4,715829248
	addi	a4,a4,-1365
	mulh	a4,a5,a4
	srai	a5,a5,31
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 188 35
	lw	a5,-20(s0)
	addi	a5,a5,50
	.loc 1 188 39
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 188 43
	andi	a4,a5,0xff
	.loc 1 188 56
	lb	a5,-23(s0)
	andi	a5,a5,0xff
	.loc 1 188 43
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 188 26
	lw	a5,-36(s0)
	addi	a5,a5,7
	.loc 1 188 43
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 188 29
	sb	a4,0(a5)
	.loc 1 189 37
	lw	a5,-20(s0)
	addi	a5,a5,25
	.loc 1 189 41
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,4
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 189 45
	andi	a4,a5,0xff
	.loc 1 189 58
	lb	a5,-23(s0)
	andi	a5,a5,0xff
	.loc 1 189 45
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 189 26
	lw	a5,-36(s0)
	addi	a5,a5,8
	.loc 1 189 45
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 189 29
	sb	a4,0(a5)
	.loc 1 190 35
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 1 190 37
	addi	a5,a5,50
	.loc 1 190 41
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 190 45
	andi	a4,a5,0xff
	.loc 1 190 58
	lb	a5,-23(s0)
	andi	a5,a5,0xff
	.loc 1 190 45
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 190 26
	lw	a5,-36(s0)
	addi	a5,a5,9
	.loc 1 190 45
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 190 29
	sb	a4,0(a5)
	.loc 1 191 36
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 1 191 38
	addi	a5,a5,50
	.loc 1 191 42
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 191 46
	andi	a4,a5,0xff
	.loc 1 191 59
	lb	a5,-23(s0)
	andi	a5,a5,0xff
	.loc 1 191 46
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 191 26
	lw	a5,-36(s0)
	addi	a5,a5,10
	.loc 1 191 46
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 191 30
	sb	a4,0(a5)
	.loc 1 192 36
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	.loc 1 192 38
	addi	a5,a5,50
	.loc 1 192 42
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 192 46
	andi	a4,a5,0xff
	.loc 1 192 59
	lb	a5,-23(s0)
	andi	a5,a5,0xff
	.loc 1 192 46
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 192 26
	lw	a5,-36(s0)
	addi	a5,a5,11
	.loc 1 192 46
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 192 30
	sb	a4,0(a5)
	.loc 1 194 26
	lw	a5,-36(s0)
	addi	a5,a5,12
	.loc 1 194 43
	lb	a4,-22(s0)
	.loc 1 194 30
	sb	a4,0(a5)
	.loc 1 196 36
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	sub	a5,a5,a4
	.loc 1 196 38
	addi	a5,a5,50
	.loc 1 196 42
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 196 46
	andi	a4,a5,0xff
	.loc 1 196 59
	lb	a5,-23(s0)
	andi	a5,a5,0xff
	.loc 1 196 46
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 196 26
	lw	a5,-36(s0)
	addi	a5,a5,13
	.loc 1 196 46
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 196 30
	sb	a4,0(a5)
	.loc 1 197 24
	li	a5,0
	j	.L32
.L31:
	.loc 1 201 12
	li	a5,-1
.L32:
	.loc 1 202 1
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
.LFE18:
	.size	mfg_flash_read_poweroffset, .-mfg_flash_read_poweroffset
	.section	.text.mfg_flash_write_macaddr_pre,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_macaddr_pre
	.type	mfg_flash_write_macaddr_pre, @function
mfg_flash_write_macaddr_pre:
.LFB19:
	.loc 1 205 1
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
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 1 206 18
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	li	a4,65
	sw	a4,0(a5)
	.loc 1 207 22
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	li	a4,90
	sb	a4,10(a5)
	.loc 1 208 5
	li	a2,6
	lw	a1,-20(s0)
	lui	a5,%hi(rf_para+11)
	addi	a0,a5,%lo(rf_para+11)
	call	memcpy
	.loc 1 209 19
	li	a1,16
	lui	a5,%hi(rf_para+4)
	addi	a0,a5,%lo(rf_para+4)
	call	BFLB_Soft_CRC32
	mv	a4,a0
	.loc 1 209 18 discriminator 1
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	sw	a4,20(a5)
	.loc 1 211 7
	lbu	a5,-21(s0)
	beq	a5,zero,.L34
	.loc 1 212 16
	call	mfg_flash_program
	mv	a5,a0
	j	.L35
.L34:
	.loc 1 214 16
	li	a5,0
.L35:
	.loc 1 216 1
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
	.size	mfg_flash_write_macaddr_pre, .-mfg_flash_write_macaddr_pre
	.section	.text.mfg_flash_write_macaddr,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_macaddr
	.type	mfg_flash_write_macaddr, @function
mfg_flash_write_macaddr:
.LFB20:
	.loc 1 219 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 220 5
	call	mfg_flash_program
	.loc 1 221 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	mfg_flash_write_macaddr, .-mfg_flash_write_macaddr
	.section	.rodata
	.align	2
.LC8:
	.string	"mfg_flash_read fail\r\n"
	.section	.text.mfg_flash_read_macaddr,"ax",@progbits
	.align	1
	.globl	mfg_flash_read_macaddr
	.type	mfg_flash_read_macaddr, @function
mfg_flash_read_macaddr:
.LFB21:
	.loc 1 224 1
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
	sw	a0,-20(s0)
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 1 225 7
	lbu	a5,-21(s0)
	beq	a5,zero,.L38
	.loc 1 225 22 discriminator 1
	call	mfg_flash_read
	mv	a5,a0
	.loc 1 225 19 discriminator 2
	beq	a5,zero,.L38
	.loc 1 226 9
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
	.loc 1 227 16
	li	a5,-1
	j	.L39
.L38:
	.loc 1 229 15
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	lw	a4,0(a5)
	.loc 1 229 7
	li	a5,65
	bne	a4,a5,.L40
	.loc 1 230 19
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	lw	s1,20(a5)
	.loc 1 230 28
	li	a1,16
	lui	a5,%hi(rf_para+4)
	addi	a0,a5,%lo(rf_para+4)
	call	BFLB_Soft_CRC32
	mv	a5,a0
	.loc 1 230 11 discriminator 1
	bne	s1,a5,.L40
	.loc 1 231 23
	lui	a5,%hi(rf_para)
	addi	a5,a5,%lo(rf_para)
	lbu	a4,10(a5)
	.loc 1 231 15
	li	a5,90
	bne	a4,a5,.L40
	.loc 1 232 17
	li	a2,6
	lui	a5,%hi(rf_para+11)
	addi	a1,a5,%lo(rf_para+11)
	lw	a0,-20(s0)
	call	memcpy
	.loc 1 233 24
	li	a5,0
	j	.L39
.L40:
	.loc 1 237 12
	li	a5,-1
.L39:
	.loc 1 238 1
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
.LFE21:
	.size	mfg_flash_read_macaddr, .-mfg_flash_read_macaddr
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_mfg_flash.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/partition/partition.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/soft_crc/softcrc.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_xip_sflash.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc55
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x19
	.4byte	.LASF177
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x37
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x51
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x6b
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x7e
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x91
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x1a
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0xa6
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x1b
	.byte	0x4
	.uleb128 0x10
	.4byte	0xc0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x1c
	.4byte	0xc7
	.uleb128 0x7
	.4byte	0xce
	.uleb128 0x10
	.4byte	0xd3
	.uleb128 0xf
	.4byte	0x6b
	.byte	0x5
	.byte	0x17
	.byte	0x1
	.4byte	0xfc
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.4byte	0xdd
	.uleb128 0x9
	.4byte	0x85
	.4byte	0x118
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.byte	0x54
	.byte	0x6
	.byte	0x39
	.4byte	0x4c9
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x6
	.byte	0x3a
	.byte	0xd
	.4byte	0x5f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x6
	.byte	0x3b
	.byte	0xd
	.4byte	0x5f
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x6
	.byte	0x3c
	.byte	0xd
	.4byte	0x5f
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x6
	.byte	0x3d
	.byte	0xd
	.4byte	0x5f
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x6
	.byte	0x3e
	.byte	0xd
	.4byte	0x5f
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x6
	.byte	0x3f
	.byte	0xd
	.4byte	0x5f
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x6
	.byte	0x40
	.byte	0xd
	.4byte	0x5f
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x6
	.byte	0x41
	.byte	0xd
	.4byte	0x5f
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x6
	.byte	0x42
	.byte	0xd
	.4byte	0x5f
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x6
	.byte	0x43
	.byte	0xd
	.4byte	0x5f
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x6
	.byte	0x44
	.byte	0xd
	.4byte	0x5f
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x6
	.byte	0x45
	.byte	0xd
	.4byte	0x5f
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x6
	.byte	0x46
	.byte	0xd
	.4byte	0x5f
	.byte	0xc
	.uleb128 0xe
	.string	"mid"
	.byte	0x6
	.byte	0x47
	.byte	0xd
	.4byte	0x5f
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x6
	.byte	0x48
	.byte	0xe
	.4byte	0x72
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x6
	.byte	0x49
	.byte	0xd
	.4byte	0x5f
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x6
	.byte	0x4a
	.byte	0xd
	.4byte	0x5f
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x6
	.byte	0x4b
	.byte	0xd
	.4byte	0x5f
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4c
	.byte	0xd
	.4byte	0x5f
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4d
	.byte	0xd
	.4byte	0x5f
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4e
	.byte	0xd
	.4byte	0x5f
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4f
	.byte	0xd
	.4byte	0x5f
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x6
	.byte	0x50
	.byte	0xd
	.4byte	0x5f
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x6
	.byte	0x51
	.byte	0xd
	.4byte	0x5f
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x6
	.byte	0x52
	.byte	0xd
	.4byte	0x5f
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x6
	.byte	0x53
	.byte	0xd
	.4byte	0x5f
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x6
	.byte	0x54
	.byte	0xd
	.4byte	0x5f
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x6
	.byte	0x55
	.byte	0xd
	.4byte	0x5f
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x6
	.byte	0x56
	.byte	0xd
	.4byte	0x5f
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x6
	.byte	0x57
	.byte	0xd
	.4byte	0x5f
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x6
	.byte	0x58
	.byte	0xd
	.4byte	0x5f
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.4byte	0x5f
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x6
	.byte	0x5a
	.byte	0xd
	.4byte	0x5f
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x6
	.byte	0x5b
	.byte	0xd
	.4byte	0x5f
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x6
	.byte	0x5c
	.byte	0xd
	.4byte	0x5f
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x6
	.byte	0x5d
	.byte	0xd
	.4byte	0x5f
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x6
	.byte	0x5e
	.byte	0xd
	.4byte	0x5f
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x6
	.byte	0x5f
	.byte	0xd
	.4byte	0x5f
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x6
	.byte	0x60
	.byte	0xd
	.4byte	0x5f
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x6
	.byte	0x61
	.byte	0xd
	.4byte	0x5f
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x6
	.byte	0x62
	.byte	0xd
	.4byte	0x5f
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x6
	.byte	0x63
	.byte	0xd
	.4byte	0x5f
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x6
	.byte	0x64
	.byte	0xd
	.4byte	0x5f
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x6
	.byte	0x65
	.byte	0xd
	.4byte	0x5f
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x6
	.byte	0x66
	.byte	0xd
	.4byte	0x5f
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x6
	.byte	0x67
	.byte	0xd
	.4byte	0x5f
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x6
	.byte	0x68
	.byte	0xd
	.4byte	0x5f
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x6
	.byte	0x69
	.byte	0xd
	.4byte	0x5f
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x6
	.byte	0x6a
	.byte	0xd
	.4byte	0x5f
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x6
	.byte	0x6b
	.byte	0xd
	.4byte	0x5f
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x6
	.byte	0x6c
	.byte	0xd
	.4byte	0x5f
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x6
	.byte	0x6d
	.byte	0xd
	.4byte	0x4c9
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x6
	.byte	0x6e
	.byte	0xd
	.4byte	0x4c9
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x6
	.byte	0x6f
	.byte	0xd
	.4byte	0x5f
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x6
	.byte	0x70
	.byte	0xd
	.4byte	0x5f
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x6
	.byte	0x71
	.byte	0xd
	.4byte	0x5f
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x6
	.byte	0x72
	.byte	0xd
	.4byte	0x5f
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x6
	.byte	0x73
	.byte	0xd
	.4byte	0x5f
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x6
	.byte	0x74
	.byte	0xd
	.4byte	0x5f
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x6
	.byte	0x75
	.byte	0xd
	.4byte	0x5f
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x6
	.byte	0x76
	.byte	0xd
	.4byte	0x5f
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x6
	.byte	0x77
	.byte	0xd
	.4byte	0x5f
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x6
	.byte	0x78
	.byte	0xd
	.4byte	0x5f
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x6
	.byte	0x79
	.byte	0xd
	.4byte	0x5f
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x6
	.byte	0x7a
	.byte	0xd
	.4byte	0x5f
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x6
	.byte	0x7b
	.byte	0xe
	.4byte	0x72
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x6
	.byte	0x7c
	.byte	0xe
	.4byte	0x72
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x6
	.byte	0x7d
	.byte	0xe
	.4byte	0x72
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x6
	.byte	0x7e
	.byte	0xe
	.4byte	0x72
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x6
	.byte	0x7f
	.byte	0xe
	.4byte	0x72
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x6
	.byte	0x80
	.byte	0xd
	.4byte	0x5f
	.byte	0x52
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x6
	.byte	0x81
	.byte	0xd
	.4byte	0x5f
	.byte	0x53
	.byte	0
	.uleb128 0x9
	.4byte	0x5f
	.4byte	0x4d9
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF94
	.byte	0x6
	.byte	0x82
	.byte	0x1b
	.4byte	0x118
	.uleb128 0x1d
	.4byte	.LASF178
	.byte	0x18
	.byte	0x7
	.byte	0x7
	.byte	0x10
	.4byte	0x568
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x7
	.byte	0x8
	.byte	0xe
	.4byte	0x85
	.byte	0
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x7
	.byte	0x9
	.byte	0xd
	.4byte	0x5f
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x7
	.byte	0xa
	.byte	0xd
	.4byte	0x5f
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x7
	.byte	0xb
	.byte	0xd
	.4byte	0x5f
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x7
	.byte	0xc
	.byte	0xc
	.4byte	0x568
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x7
	.byte	0xd
	.byte	0xd
	.4byte	0x5f
	.byte	0xa
	.uleb128 0xe
	.string	"mac"
	.byte	0x7
	.byte	0xe
	.byte	0xd
	.4byte	0x578
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x7
	.byte	0xf
	.byte	0xd
	.4byte	0x588
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x7
	.byte	0x10
	.byte	0xe
	.4byte	0x85
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.4byte	0x2b
	.4byte	0x578
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x5f
	.4byte	0x588
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	0x5f
	.4byte	0x598
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0x7
	.byte	0x11
	.byte	0x2
	.4byte	0x4e5
	.uleb128 0xf
	.4byte	0x6b
	.byte	0x8
	.byte	0x3b
	.byte	0xe
	.4byte	0x5e7
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF113
	.byte	0x8
	.byte	0x45
	.byte	0x2
	.4byte	0x5a4
	.uleb128 0xf
	.4byte	0x6b
	.byte	0x8
	.byte	0x4a
	.byte	0xe
	.4byte	0x612
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0x8
	.byte	0x4e
	.byte	0x2
	.4byte	0x5f3
	.uleb128 0xf
	.4byte	0x6b
	.byte	0x8
	.byte	0x53
	.byte	0xe
	.4byte	0x63d
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.byte	0x10
	.byte	0x8
	.byte	0x5c
	.4byte	0x687
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x8
	.byte	0x5d
	.byte	0xe
	.4byte	0x85
	.byte	0
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x8
	.byte	0x5e
	.byte	0xe
	.4byte	0x72
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x8
	.byte	0x5f
	.byte	0xe
	.4byte	0x72
	.byte	0x6
	.uleb128 0xe
	.string	"age"
	.byte	0x8
	.byte	0x60
	.byte	0xe
	.4byte	0x85
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x8
	.byte	0x61
	.byte	0xe
	.4byte	0x85
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x8
	.byte	0x62
	.byte	0x2
	.4byte	0x63d
	.uleb128 0x11
	.byte	0x24
	.byte	0x8
	.byte	0x67
	.4byte	0x704
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x8
	.byte	0x68
	.byte	0xd
	.4byte	0x5f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0x8
	.byte	0x69
	.byte	0xd
	.4byte	0x5f
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0x8
	.byte	0x6a
	.byte	0xd
	.4byte	0x5f
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0x8
	.byte	0x6b
	.byte	0xd
	.4byte	0x704
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0x8
	.byte	0x6c
	.byte	0xe
	.4byte	0x108
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0x8
	.byte	0x6d
	.byte	0xe
	.4byte	0x108
	.byte	0x14
	.uleb128 0xe
	.string	"len"
	.byte	0x8
	.byte	0x6e
	.byte	0xe
	.4byte	0x85
	.byte	0x1c
	.uleb128 0xe
	.string	"age"
	.byte	0x8
	.byte	0x6f
	.byte	0xe
	.4byte	0x85
	.byte	0x20
	.byte	0
	.uleb128 0x9
	.4byte	0x5f
	.4byte	0x714
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF131
	.byte	0x8
	.byte	0x70
	.byte	0x2
	.4byte	0x693
	.uleb128 0x1e
	.2byte	0x254
	.byte	0x8
	.byte	0x75
	.byte	0x9
	.4byte	0x753
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x8
	.byte	0x76
	.byte	0x14
	.4byte	0x687
	.byte	0
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x8
	.byte	0x77
	.byte	0x1a
	.4byte	0x753
	.byte	0x10
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x8
	.byte	0x78
	.byte	0xe
	.4byte	0x85
	.2byte	0x250
	.byte	0
	.uleb128 0x9
	.4byte	0x714
	.4byte	0x763
	.uleb128 0xa
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF134
	.byte	0x8
	.byte	0x79
	.byte	0x2
	.4byte	0x720
	.uleb128 0x4
	.4byte	.LASF135
	.byte	0x8
	.byte	0xa4
	.byte	0x17
	.4byte	0x77b
	.uleb128 0x7
	.4byte	0x780
	.uleb128 0x16
	.4byte	0xfc
	.4byte	0x794
	.uleb128 0x2
	.4byte	0x85
	.uleb128 0x2
	.4byte	0x85
	.byte	0
	.uleb128 0x4
	.4byte	.LASF136
	.byte	0x8
	.byte	0xa5
	.byte	0x17
	.4byte	0x7a0
	.uleb128 0x7
	.4byte	0x7a5
	.uleb128 0x16
	.4byte	0xfc
	.4byte	0x7be
	.uleb128 0x2
	.4byte	0x85
	.uleb128 0x2
	.4byte	0x7be
	.uleb128 0x2
	.4byte	0x85
	.byte	0
	.uleb128 0x7
	.4byte	0x5f
	.uleb128 0x4
	.4byte	.LASF137
	.byte	0x8
	.byte	0xa6
	.byte	0x17
	.4byte	0x7a0
	.uleb128 0xc
	.4byte	.LASF138
	.byte	0x5
	.byte	0x18
	.4byte	0x598
	.uleb128 0x5
	.byte	0x3
	.4byte	rf_para
	.uleb128 0xc
	.4byte	.LASF139
	.byte	0x6
	.byte	0x11
	.4byte	0x85
	.uleb128 0x5
	.byte	0x3
	.4byte	rf_para_addr
	.uleb128 0xc
	.4byte	.LASF140
	.byte	0x7
	.byte	0x1c
	.4byte	0x802
	.uleb128 0x5
	.byte	0x3
	.4byte	pFlashCfg
	.uleb128 0x7
	.4byte	0x4d9
	.uleb128 0x9
	.4byte	0x763
	.4byte	0x817
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.4byte	.LASF141
	.byte	0x15
	.4byte	0x807
	.uleb128 0x5
	.byte	0x3
	.4byte	ptTableStuff
	.uleb128 0x17
	.4byte	.LASF142
	.byte	0x16
	.4byte	0x714
	.uleb128 0x5
	.byte	0x3
	.4byte	ptEntry
	.uleb128 0x8
	.4byte	.LASF143
	.byte	0x9
	.byte	0x1f
	.byte	0x8
	.4byte	0xc0
	.4byte	0x857
	.uleb128 0x2
	.4byte	0xc2
	.uleb128 0x2
	.4byte	0x85c
	.uleb128 0x2
	.4byte	0xad
	.byte	0
	.uleb128 0x7
	.4byte	0x861
	.uleb128 0x10
	.4byte	0x857
	.uleb128 0x20
	.uleb128 0x8
	.4byte	.LASF144
	.byte	0x9
	.byte	0x21
	.byte	0x8
	.4byte	0xc0
	.4byte	0x882
	.uleb128 0x2
	.4byte	0xc0
	.uleb128 0x2
	.4byte	0x9f
	.uleb128 0x2
	.4byte	0xad
	.byte	0
	.uleb128 0x8
	.4byte	.LASF145
	.byte	0xa
	.byte	0x7
	.byte	0xa
	.4byte	0x85
	.4byte	0x89d
	.uleb128 0x2
	.4byte	0xc0
	.uleb128 0x2
	.4byte	0x85
	.byte	0
	.uleb128 0x8
	.4byte	.LASF146
	.byte	0xb
	.byte	0x4a
	.byte	0xd
	.4byte	0xfc
	.4byte	0x8c2
	.uleb128 0x2
	.4byte	0x802
	.uleb128 0x2
	.4byte	0x85
	.uleb128 0x2
	.4byte	0x7be
	.uleb128 0x2
	.4byte	0x85
	.byte	0
	.uleb128 0x8
	.4byte	.LASF147
	.byte	0xb
	.byte	0x49
	.byte	0xd
	.4byte	0xfc
	.4byte	0x8e2
	.uleb128 0x2
	.4byte	0x802
	.uleb128 0x2
	.4byte	0x85
	.uleb128 0x2
	.4byte	0x85
	.byte	0
	.uleb128 0x8
	.4byte	.LASF148
	.byte	0x8
	.byte	0xb2
	.byte	0x14
	.4byte	0x5e7
	.4byte	0x902
	.uleb128 0x2
	.4byte	0x902
	.uleb128 0x2
	.4byte	0x7be
	.uleb128 0x2
	.4byte	0x907
	.byte	0
	.uleb128 0x7
	.4byte	0x763
	.uleb128 0x7
	.4byte	0x714
	.uleb128 0x8
	.4byte	.LASF149
	.byte	0xc
	.byte	0xce
	.byte	0x5
	.4byte	0x9f
	.4byte	0x923
	.uleb128 0x2
	.4byte	0xd8
	.uleb128 0x21
	.byte	0
	.uleb128 0x8
	.4byte	.LASF150
	.byte	0x8
	.byte	0xae
	.byte	0x11
	.4byte	0x612
	.4byte	0x939
	.uleb128 0x2
	.4byte	0x902
	.byte	0
	.uleb128 0x22
	.4byte	.LASF179
	.byte	0x8
	.byte	0xad
	.byte	0x6
	.4byte	0x955
	.uleb128 0x2
	.4byte	0x76f
	.uleb128 0x2
	.4byte	0x794
	.uleb128 0x2
	.4byte	0x7c3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF151
	.byte	0xb
	.byte	0x4c
	.byte	0xd
	.4byte	0xfc
	.4byte	0x97a
	.uleb128 0x2
	.4byte	0x802
	.uleb128 0x2
	.4byte	0x85
	.uleb128 0x2
	.4byte	0x7be
	.uleb128 0x2
	.4byte	0x85
	.byte	0
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0xdf
	.4byte	0x2b
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9af
	.uleb128 0x12
	.string	"mac"
	.byte	0xdf
	.byte	0x27
	.4byte	0x7be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF152
	.byte	0xdf
	.byte	0x36
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x13
	.4byte	.LASF160
	.byte	0xda
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0xcc
	.4byte	0x2b
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f4
	.uleb128 0x12
	.string	"mac"
	.byte	0xcc
	.byte	0x2c
	.4byte	0x7be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF155
	.byte	0xcc
	.byte	0x3b
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0xa0
	.4byte	0x2b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa45
	.uleb128 0x5
	.4byte	.LASF157
	.byte	0xa0
	.byte	0x2a
	.4byte	0xa45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF152
	.byte	0xa0
	.byte	0x40
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xc
	.4byte	.LASF158
	.byte	0xa2
	.byte	0xc
	.4byte	0x568
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.4byte	.LASF159
	.byte	0xa3
	.byte	0xd
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	0x2b
	.uleb128 0x13
	.4byte	.LASF161
	.byte	0x9b
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0x8b
	.4byte	0x2b
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8f
	.uleb128 0x5
	.4byte	.LASF157
	.byte	0x8b
	.byte	0x2f
	.4byte	0xa45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF155
	.byte	0x8b
	.byte	0x45
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0x7b
	.4byte	0x2b
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac4
	.uleb128 0x5
	.4byte	.LASF97
	.byte	0x7b
	.byte	0x2d
	.4byte	0x7be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF152
	.byte	0x7b
	.byte	0x3d
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x13
	.4byte	.LASF164
	.byte	0x76
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF165
	.byte	0x68
	.4byte	0x2b
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb09
	.uleb128 0x5
	.4byte	.LASF97
	.byte	0x68
	.byte	0x31
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x5
	.4byte	.LASF155
	.byte	0x68
	.byte	0x41
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x14
	.4byte	.LASF166
	.byte	0x57
	.byte	0xf
	.4byte	0x2b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb4f
	.uleb128 0x15
	.string	"ret"
	.byte	0x59
	.byte	0x11
	.4byte	0xfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xd
	.4byte	0xc4c
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x5d
	.byte	0x6
	.uleb128 0xd
	.4byte	0xc52
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x5f
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.4byte	.LASF167
	.byte	0x3e
	.byte	0xf
	.4byte	0x2b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb3
	.uleb128 0x15
	.string	"ret"
	.byte	0x40
	.byte	0x11
	.4byte	0xfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xd
	.4byte	0xc4c
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x44
	.byte	0x5
	.uleb128 0xd
	.4byte	0xc52
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x46
	.byte	0x6
	.uleb128 0xd
	.4byte	0xc4c
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x4c
	.byte	0x6
	.uleb128 0xd
	.4byte	0xc52
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x4e
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0x24
	.4byte	0x2b
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf6
	.uleb128 0x5
	.4byte	.LASF169
	.byte	0x24
	.byte	0x2c
	.4byte	0x802
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF170
	.byte	0x26
	.byte	0x15
	.4byte	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.string	"ret"
	.byte	0x27
	.byte	0x18
	.4byte	0x5e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x14
	.4byte	.LASF171
	.byte	0x1e
	.byte	0x14
	.4byte	0xfc
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3a
	.uleb128 0x5
	.4byte	.LASF172
	.byte	0x1e
	.byte	0x31
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF173
	.byte	0x1e
	.byte	0x3f
	.4byte	0x7be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"len"
	.byte	0x1e
	.byte	0x4e
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x23
	.4byte	.LASF174
	.byte	0x1
	.byte	0x19
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LASF175
	.byte	0x5c
	.uleb128 0x18
	.4byte	.LASF176
	.byte	0x57
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x15
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.sleb128 22
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 55
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x1f
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
.LASF149:
	.string	"printf"
.LASF127:
	.string	"activeIndex"
.LASF83:
	.string	"deBurstWrapCmd"
.LASF154:
	.string	"mfg_flash_write_macaddr_pre"
.LASF40:
	.string	"blk64EraseCmd"
.LASF16:
	.string	"size_t"
.LASF167:
	.string	"mfg_flash_program"
.LASF48:
	.string	"qpiFrDmyClk"
.LASF114:
	.string	"PT_TABLE_ID_0"
.LASF115:
	.string	"PT_TABLE_ID_1"
.LASF145:
	.string	"BFLB_Soft_CRC32"
.LASF132:
	.string	"ptTable"
.LASF68:
	.string	"wrEnableReadRegLen"
.LASF51:
	.string	"fastReadDioCmd"
.LASF125:
	.string	"type"
.LASF92:
	.string	"pdDelay"
.LASF64:
	.string	"wrEnableBit"
.LASF54:
	.string	"frQoDmyClk"
.LASF120:
	.string	"PT_ENTRY_MAX"
.LASF14:
	.string	"long long unsigned int"
.LASF49:
	.string	"fastReadDoCmd"
.LASF26:
	.string	"clkInvert"
.LASF172:
	.string	"addr"
.LASF24:
	.string	"cReadSupport"
.LASF140:
	.string	"pFlashCfg"
.LASF33:
	.string	"qpiJedecIdCmd"
.LASF60:
	.string	"writeVregEnableCmd"
.LASF63:
	.string	"busyIndex"
.LASF75:
	.string	"enterQpi"
.LASF148:
	.string	"PtTable_Get_Active_Entries_By_Name"
.LASF29:
	.string	"resetCreadCmd"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF155:
	.string	"program"
.LASF31:
	.string	"jedecIdCmd"
.LASF101:
	.string	"rsvd"
.LASF79:
	.string	"burstWrapCmd"
.LASF130:
	.string	"maxLen"
.LASF22:
	.string	"BL_Err_Type"
.LASF6:
	.string	"long int"
.LASF107:
	.string	"PT_ERROR_ENTRY_UPDATE_FAIL"
.LASF94:
	.string	"SPI_Flash_Cfg_Type"
.LASF71:
	.string	"releasePowerDown"
.LASF57:
	.string	"qpiFastReadQioCmd"
.LASF27:
	.string	"resetEnCmd"
.LASF74:
	.string	"writeRegCmd"
.LASF104:
	.string	"PT_ERROR_SUCCESS"
.LASF76:
	.string	"exitQpi"
.LASF25:
	.string	"clkDelay"
.LASF134:
	.string	"PtTable_Stuff_Config"
.LASF53:
	.string	"fastReadQoCmd"
.LASF160:
	.string	"mfg_flash_write_macaddr"
.LASF102:
	.string	"crc32"
.LASF38:
	.string	"sectorEraseCmd"
.LASF34:
	.string	"qpiJedecIdCmdDmyClk"
.LASF81:
	.string	"burstWrapDataMode"
.LASF147:
	.string	"XIP_SFlash_Erase_Need_Lock"
.LASF110:
	.string	"PT_ERROR_FALSH_READ"
.LASF15:
	.string	"unsigned int"
.LASF10:
	.string	"uint16_t"
.LASF164:
	.string	"mfg_flash_write_xtal_capcode"
.LASF86:
	.string	"deBurstWrapData"
.LASF105:
	.string	"PT_ERROR_TABLE_NOT_VALID"
.LASF28:
	.string	"resetCmd"
.LASF13:
	.string	"long unsigned int"
.LASF179:
	.string	"PtTable_Set_Flash_Operation"
.LASF152:
	.string	"reload"
.LASF93:
	.string	"qeData"
.LASF133:
	.string	"ptEntries"
.LASF128:
	.string	"name"
.LASF124:
	.string	"PtTable_Config"
.LASF178:
	.string	"rf_para_flash_tag"
.LASF35:
	.string	"sectorSize"
.LASF173:
	.string	"data"
.LASF151:
	.string	"XIP_SFlash_Read_Need_Lock"
.LASF126:
	.string	"device"
.LASF43:
	.string	"qpageProgramCmd"
.LASF42:
	.string	"pageProgramCmd"
.LASF161:
	.string	"mfg_flash_write_poweroffset"
.LASF131:
	.string	"PtTable_Entry_Config"
.LASF121:
	.string	"magicCode"
.LASF67:
	.string	"wrEnableWriteRegLen"
.LASF39:
	.string	"blk32EraseCmd"
.LASF166:
	.string	"mfg_flash_read"
.LASF129:
	.string	"Address"
.LASF23:
	.string	"ioMode"
.LASF59:
	.string	"qpiPageProgramCmd"
.LASF96:
	.string	"capcode_valid"
.LASF65:
	.string	"qeBit"
.LASF47:
	.string	"qpiFastReadCmd"
.LASF58:
	.string	"qpiFrQioDmyClk"
.LASF165:
	.string	"mfg_flash_write_xtal_capcode_pre"
.LASF162:
	.string	"mfg_flash_write_poweroffset_pre"
.LASF122:
	.string	"version"
.LASF113:
	.string	"PtTable_Error_Type"
.LASF21:
	.string	"TIMEOUT"
.LASF70:
	.string	"qeReadRegLen"
.LASF72:
	.string	"busyReadRegLen"
.LASF20:
	.string	"ERROR"
.LASF87:
	.string	"timeEsector"
.LASF108:
	.string	"PT_ERROR_CRC32"
.LASF77:
	.string	"cReadMode"
.LASF84:
	.string	"deBurstWrapCmdDmyClk"
.LASF97:
	.string	"capcode"
.LASF109:
	.string	"PT_ERROR_PARAMETER"
.LASF176:
	.string	"__enable_irq"
.LASF82:
	.string	"burstWrapData"
.LASF66:
	.string	"busyBit"
.LASF175:
	.string	"__disable_irq"
.LASF116:
	.string	"PT_TABLE_ID_INVALID"
.LASF117:
	.string	"PtTable_ID_Type"
.LASF146:
	.string	"XIP_SFlash_Write_Need_Lock"
.LASF170:
	.string	"activeID"
.LASF5:
	.string	"int32_t"
.LASF9:
	.string	"unsigned char"
.LASF62:
	.string	"qeIndex"
.LASF159:
	.string	"step"
.LASF3:
	.string	"short int"
.LASF95:
	.string	"magic"
.LASF163:
	.string	"mfg_flash_read_xtal_capcode"
.LASF137:
	.string	"pPtTable_Flash_Read"
.LASF139:
	.string	"rf_para_addr"
.LASF141:
	.string	"ptTableStuff"
.LASF45:
	.string	"fastReadCmd"
.LASF36:
	.string	"pageSize"
.LASF41:
	.string	"writeEnableCmd"
.LASF56:
	.string	"frQioDmyClk"
.LASF50:
	.string	"frDoDmyClk"
.LASF118:
	.string	"PT_ENTRY_FW_CPU0"
.LASF119:
	.string	"PT_ENTRY_FW_CPU1"
.LASF135:
	.string	"pPtTable_Flash_Erase"
.LASF136:
	.string	"pPtTable_Flash_Write"
.LASF103:
	.string	"rf_para_flash_t"
.LASF69:
	.string	"qeWriteRegLen"
.LASF157:
	.string	"pwrOffset"
.LASF156:
	.string	"mfg_flash_read_poweroffset"
.LASF138:
	.string	"rf_para"
.LASF17:
	.string	"long double"
.LASF88:
	.string	"timeE32k"
.LASF18:
	.string	"char"
.LASF61:
	.string	"wrEnableIndex"
.LASF150:
	.string	"PtTable_Get_Active_Partition_Need_Lock"
.LASF52:
	.string	"frDioDmyClk"
.LASF46:
	.string	"frDmyClk"
.LASF112:
	.string	"PT_ERROR_FALSH_ERASE"
.LASF111:
	.string	"PT_ERROR_FALSH_WRITE"
.LASF169:
	.string	"flashCfg"
.LASF99:
	.string	"poweroffset"
.LASF89:
	.string	"timeE64k"
.LASF32:
	.string	"jedecIdCmdDmyClk"
.LASF174:
	.string	"main"
.LASF143:
	.string	"memcpy"
.LASF78:
	.string	"cRExit"
.LASF123:
	.string	"entryCnt"
.LASF11:
	.string	"short unsigned int"
.LASF142:
	.string	"ptEntry"
.LASF4:
	.string	"int8_t"
.LASF106:
	.string	"PT_ERROR_ENTRY_NOT_FOUND"
.LASF30:
	.string	"resetCreadCmdSize"
.LASF100:
	.string	"mac_valid"
.LASF55:
	.string	"fastReadQioCmd"
.LASF12:
	.string	"uint32_t"
.LASF37:
	.string	"chipEraseCmd"
.LASF91:
	.string	"timeCe"
.LASF144:
	.string	"memset"
.LASF85:
	.string	"deBurstWrapDataMode"
.LASF80:
	.string	"burstWrapCmdDmyClk"
.LASF168:
	.string	"mfg_flash_init"
.LASF8:
	.string	"uint8_t"
.LASF19:
	.string	"SUCCESS"
.LASF171:
	.string	"PtTable_Flash_Read"
.LASF153:
	.string	"mfg_flash_read_macaddr"
.LASF98:
	.string	"poweroffset_valid"
.LASF177:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF90:
	.string	"timePagePgm"
.LASF73:
	.string	"readRegCmd"
.LASF44:
	.string	"qppAddrMode"
.LASF158:
	.string	"pwrOffsetTmp"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_mfg_flash.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
