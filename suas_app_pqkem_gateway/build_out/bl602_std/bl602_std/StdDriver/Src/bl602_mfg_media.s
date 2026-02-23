	.file	"bl602_mfg_media.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_mfg_media.c"
	.section	.sbss.rf_para_on_flash,"aw",@nobits
	.type	rf_para_on_flash, @object
	.size	rf_para_on_flash, 1
rf_para_on_flash:
	.zero	1
	.section	.text.mfg_media_init,"ax",@progbits
	.align	1
	.globl	mfg_media_init
	.type	mfg_media_init, @function
mfg_media_init:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_mfg_media.c"
	.loc 1 6 1
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
	.loc 1 7 11
	lw	a0,-20(s0)
	call	mfg_flash_init
	mv	a5,a0
	.loc 1 7 7 discriminator 1
	bne	a5,zero,.L2
	.loc 1 8 25
	lui	a5,%hi(rf_para_on_flash)
	li	a4,1
	sb	a4,%lo(rf_para_on_flash)(a5)
	j	.L3
.L2:
	.loc 1 10 25
	lui	a5,%hi(rf_para_on_flash)
	sb	zero,%lo(rf_para_on_flash)(a5)
.L3:
	.loc 1 12 12
	li	a5,0
	.loc 1 13 1
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
	.size	mfg_media_init, .-mfg_media_init
	.section	.text.mfg_media_is_xtal_capcode_slot_empty,"ax",@progbits
	.align	1
	.globl	mfg_media_is_xtal_capcode_slot_empty
	.type	mfg_media_is_xtal_capcode_slot_empty, @function
mfg_media_is_xtal_capcode_slot_empty:
.LFB9:
	.loc 1 16 1
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
	.loc 1 17 8
	lui	a5,%hi(rf_para_on_flash)
	lbu	a5,%lo(rf_para_on_flash)(a5)
	.loc 1 17 7
	beq	a5,zero,.L6
	.loc 1 18 16
	li	a5,1
	j	.L7
.L6:
	.loc 1 20 16
	lbu	a5,-17(s0)
	mv	a0,a5
	call	mfg_efuse_is_xtal_capcode_slot_empty
	mv	a5,a0
.L7:
	.loc 1 22 1
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
	.size	mfg_media_is_xtal_capcode_slot_empty, .-mfg_media_is_xtal_capcode_slot_empty
	.section	.text.mfg_media_write_xtal_capcode_pre,"ax",@progbits
	.align	1
	.globl	mfg_media_write_xtal_capcode_pre
	.type	mfg_media_write_xtal_capcode_pre, @function
mfg_media_write_xtal_capcode_pre:
.LFB10:
	.loc 1 25 1
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
	.loc 1 26 8
	lui	a5,%hi(rf_para_on_flash)
	lbu	a5,%lo(rf_para_on_flash)(a5)
	.loc 1 26 7
	beq	a5,zero,.L9
	.loc 1 27 16
	lbu	a4,-18(s0)
	lbu	a5,-17(s0)
	mv	a1,a4
	mv	a0,a5
	call	mfg_flash_write_xtal_capcode_pre
	mv	a5,a0
	j	.L10
.L9:
	.loc 1 29 16
	lbu	a4,-18(s0)
	lbu	a5,-17(s0)
	mv	a1,a4
	mv	a0,a5
	call	mfg_efuse_write_xtal_capcode_pre
	mv	a5,a0
.L10:
	.loc 1 31 1
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
	.size	mfg_media_write_xtal_capcode_pre, .-mfg_media_write_xtal_capcode_pre
	.section	.text.mfg_media_write_xtal_capcode,"ax",@progbits
	.align	1
	.globl	mfg_media_write_xtal_capcode
	.type	mfg_media_write_xtal_capcode, @function
mfg_media_write_xtal_capcode:
.LFB11:
	.loc 1 34 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 35 8
	lui	a5,%hi(rf_para_on_flash)
	lbu	a5,%lo(rf_para_on_flash)(a5)
	.loc 1 35 7
	beq	a5,zero,.L12
	.loc 1 36 15
	call	mfg_flash_write_xtal_capcode
	j	.L11
.L12:
	.loc 1 38 15
	call	mfg_efuse_write_xtal_capcode
.L11:
	.loc 1 40 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	mfg_media_write_xtal_capcode, .-mfg_media_write_xtal_capcode
	.section	.text.mfg_media_read_xtal_capcode,"ax",@progbits
	.align	1
	.globl	mfg_media_read_xtal_capcode
	.type	mfg_media_read_xtal_capcode, @function
mfg_media_read_xtal_capcode:
.LFB12:
	.loc 1 43 1
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
	.loc 1 44 8
	lui	a5,%hi(rf_para_on_flash)
	lbu	a5,%lo(rf_para_on_flash)(a5)
	.loc 1 44 7
	beq	a5,zero,.L15
	.loc 1 45 15
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	mfg_flash_read_xtal_capcode
	mv	a5,a0
	j	.L16
.L15:
	.loc 1 47 15
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	mfg_efuse_read_xtal_capcode
	mv	a5,a0
.L16:
	.loc 1 49 1
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
	.size	mfg_media_read_xtal_capcode, .-mfg_media_read_xtal_capcode
	.section	.text.mfg_media_is_poweroffset_slot_empty,"ax",@progbits
	.align	1
	.globl	mfg_media_is_poweroffset_slot_empty
	.type	mfg_media_is_poweroffset_slot_empty, @function
mfg_media_is_poweroffset_slot_empty:
.LFB13:
	.loc 1 52 1
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
	.loc 1 53 8
	lui	a5,%hi(rf_para_on_flash)
	lbu	a5,%lo(rf_para_on_flash)(a5)
	.loc 1 53 7
	beq	a5,zero,.L18
	.loc 1 54 16
	li	a5,1
	j	.L19
.L18:
	.loc 1 56 16
	lbu	a5,-17(s0)
	mv	a0,a5
	call	mfg_efuse_is_poweroffset_slot_empty
	mv	a5,a0
.L19:
	.loc 1 58 1
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
	.size	mfg_media_is_poweroffset_slot_empty, .-mfg_media_is_poweroffset_slot_empty
	.section	.text.mfg_media_write_poweroffset_pre,"ax",@progbits
	.align	1
	.globl	mfg_media_write_poweroffset_pre
	.type	mfg_media_write_poweroffset_pre, @function
mfg_media_write_poweroffset_pre:
.LFB14:
	.loc 1 61 1
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
	.loc 1 62 8
	lui	a5,%hi(rf_para_on_flash)
	lbu	a5,%lo(rf_para_on_flash)(a5)
	.loc 1 62 7
	beq	a5,zero,.L21
	.loc 1 63 16
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	mfg_flash_write_poweroffset_pre
	mv	a5,a0
	j	.L22
.L21:
	.loc 1 65 16
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	mfg_efuse_write_poweroffset_pre
	mv	a5,a0
.L22:
	.loc 1 67 1
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
	.size	mfg_media_write_poweroffset_pre, .-mfg_media_write_poweroffset_pre
	.section	.text.mfg_media_write_poweroffset,"ax",@progbits
	.align	1
	.globl	mfg_media_write_poweroffset
	.type	mfg_media_write_poweroffset, @function
mfg_media_write_poweroffset:
.LFB15:
	.loc 1 70 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 71 8
	lui	a5,%hi(rf_para_on_flash)
	lbu	a5,%lo(rf_para_on_flash)(a5)
	.loc 1 71 7
	beq	a5,zero,.L24
	.loc 1 72 16
	call	mfg_flash_write_poweroffset
	j	.L23
.L24:
	.loc 1 74 16
	call	mfg_efuse_write_poweroffset
.L23:
	.loc 1 76 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	mfg_media_write_poweroffset, .-mfg_media_write_poweroffset
	.section	.text.mfg_media_read_poweroffset,"ax",@progbits
	.align	1
	.globl	mfg_media_read_poweroffset
	.type	mfg_media_read_poweroffset, @function
mfg_media_read_poweroffset:
.LFB16:
	.loc 1 79 1
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
	.loc 1 80 8
	lui	a5,%hi(rf_para_on_flash)
	lbu	a5,%lo(rf_para_on_flash)(a5)
	.loc 1 80 7
	beq	a5,zero,.L27
	.loc 1 81 16
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	mfg_flash_read_poweroffset
	mv	a5,a0
	j	.L28
.L27:
	.loc 1 83 16
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	mfg_efuse_read_poweroffset
	mv	a5,a0
.L28:
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
.LFE16:
	.size	mfg_media_read_poweroffset, .-mfg_media_read_poweroffset
	.section	.text.mfg_media_is_macaddr_slot_empty,"ax",@progbits
	.align	1
	.globl	mfg_media_is_macaddr_slot_empty
	.type	mfg_media_is_macaddr_slot_empty, @function
mfg_media_is_macaddr_slot_empty:
.LFB17:
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
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 89 8
	lui	a5,%hi(rf_para_on_flash)
	lbu	a5,%lo(rf_para_on_flash)(a5)
	.loc 1 89 7
	beq	a5,zero,.L30
	.loc 1 90 16
	li	a5,1
	j	.L31
.L30:
	.loc 1 92 16
	lbu	a5,-17(s0)
	mv	a0,a5
	call	mfg_efuse_is_macaddr_slot_empty
	mv	a5,a0
.L31:
	.loc 1 94 1
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
	.size	mfg_media_is_macaddr_slot_empty, .-mfg_media_is_macaddr_slot_empty
	.section	.text.mfg_media_write_macaddr_pre,"ax",@progbits
	.align	1
	.globl	mfg_media_write_macaddr_pre
	.type	mfg_media_write_macaddr_pre, @function
mfg_media_write_macaddr_pre:
.LFB18:
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
	sw	a0,-20(s0)
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 1 98 8
	lui	a5,%hi(rf_para_on_flash)
	lbu	a5,%lo(rf_para_on_flash)(a5)
	.loc 1 98 7
	beq	a5,zero,.L33
	.loc 1 99 16
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	mfg_flash_write_macaddr_pre
	mv	a5,a0
	j	.L34
.L33:
	.loc 1 101 16
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	mfg_efuse_write_macaddr_pre
	mv	a5,a0
.L34:
	.loc 1 103 1
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
	.size	mfg_media_write_macaddr_pre, .-mfg_media_write_macaddr_pre
	.section	.text.mfg_media_write_macaddr,"ax",@progbits
	.align	1
	.globl	mfg_media_write_macaddr
	.type	mfg_media_write_macaddr, @function
mfg_media_write_macaddr:
.LFB19:
	.loc 1 106 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 107 8
	lui	a5,%hi(rf_para_on_flash)
	lbu	a5,%lo(rf_para_on_flash)(a5)
	.loc 1 107 7
	beq	a5,zero,.L36
	.loc 1 108 16
	call	mfg_flash_write_macaddr
	j	.L35
.L36:
	.loc 1 110 16
	call	mfg_efuse_write_macaddr
.L35:
	.loc 1 112 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	mfg_media_write_macaddr, .-mfg_media_write_macaddr
	.section	.text.mfg_media_read_macaddr,"ax",@progbits
	.align	1
	.globl	mfg_media_read_macaddr
	.type	mfg_media_read_macaddr, @function
mfg_media_read_macaddr:
.LFB20:
	.loc 1 115 1
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
	.loc 1 116 8
	lui	a5,%hi(rf_para_on_flash)
	lbu	a5,%lo(rf_para_on_flash)(a5)
	.loc 1 116 7
	beq	a5,zero,.L39
	.loc 1 117 16
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	mfg_flash_read_macaddr
	mv	a5,a0
	j	.L40
.L39:
	.loc 1 119 16
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	mfg_efuse_read_macaddr
	mv	a5,a0
.L40:
	.loc 1 121 1
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
	.size	mfg_media_read_macaddr, .-mfg_media_read_macaddr
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_mfg_efuse.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_mfg_flash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x81f
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.4byte	.LASF6
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x37
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x8
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x5f
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x8
	.4byte	.LASF9
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x72
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0xe
	.byte	0x54
	.byte	0x3
	.byte	0x39
	.byte	0x9
	.4byte	0x40e
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x3a
	.byte	0xd
	.4byte	0x53
	.byte	0
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x3b
	.byte	0xd
	.4byte	0x53
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x3c
	.byte	0xd
	.4byte	0x53
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x3d
	.byte	0xd
	.4byte	0x53
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x3e
	.byte	0xd
	.4byte	0x53
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x3f
	.byte	0xd
	.4byte	0x53
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x40
	.byte	0xd
	.4byte	0x53
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x41
	.byte	0xd
	.4byte	0x53
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x42
	.byte	0xd
	.4byte	0x53
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x43
	.byte	0xd
	.4byte	0x53
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x44
	.byte	0xd
	.4byte	0x53
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x45
	.byte	0xd
	.4byte	0x53
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x46
	.byte	0xd
	.4byte	0x53
	.byte	0xc
	.uleb128 0xf
	.string	"mid"
	.byte	0x3
	.byte	0x47
	.byte	0xd
	.4byte	0x53
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x48
	.byte	0xe
	.4byte	0x66
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x49
	.byte	0xd
	.4byte	0x53
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x4a
	.byte	0xd
	.4byte	0x53
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x4b
	.byte	0xd
	.4byte	0x53
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x4c
	.byte	0xd
	.4byte	0x53
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x4d
	.byte	0xd
	.4byte	0x53
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x4e
	.byte	0xd
	.4byte	0x53
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x4f
	.byte	0xd
	.4byte	0x53
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x50
	.byte	0xd
	.4byte	0x53
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x51
	.byte	0xd
	.4byte	0x53
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x52
	.byte	0xd
	.4byte	0x53
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x53
	.byte	0xd
	.4byte	0x53
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x54
	.byte	0xd
	.4byte	0x53
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x55
	.byte	0xd
	.4byte	0x53
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x56
	.byte	0xd
	.4byte	0x53
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x57
	.byte	0xd
	.4byte	0x53
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x58
	.byte	0xd
	.4byte	0x53
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x59
	.byte	0xd
	.4byte	0x53
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x5a
	.byte	0xd
	.4byte	0x53
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x5b
	.byte	0xd
	.4byte	0x53
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x5c
	.byte	0xd
	.4byte	0x53
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x5d
	.byte	0xd
	.4byte	0x53
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x5e
	.byte	0xd
	.4byte	0x53
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x5f
	.byte	0xd
	.4byte	0x53
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x60
	.byte	0xd
	.4byte	0x53
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x61
	.byte	0xd
	.4byte	0x53
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x62
	.byte	0xd
	.4byte	0x53
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x63
	.byte	0xd
	.4byte	0x53
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x64
	.byte	0xd
	.4byte	0x53
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x65
	.byte	0xd
	.4byte	0x53
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x66
	.byte	0xd
	.4byte	0x53
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x67
	.byte	0xd
	.4byte	0x53
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x68
	.byte	0xd
	.4byte	0x53
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x69
	.byte	0xd
	.4byte	0x53
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x6a
	.byte	0xd
	.4byte	0x53
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x6b
	.byte	0xd
	.4byte	0x53
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x6c
	.byte	0xd
	.4byte	0x53
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x6d
	.byte	0xd
	.4byte	0x40e
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x6e
	.byte	0xd
	.4byte	0x40e
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x6f
	.byte	0xd
	.4byte	0x53
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x70
	.byte	0xd
	.4byte	0x53
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x71
	.byte	0xd
	.4byte	0x53
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x72
	.byte	0xd
	.4byte	0x53
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x73
	.byte	0xd
	.4byte	0x53
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x74
	.byte	0xd
	.4byte	0x53
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x75
	.byte	0xd
	.4byte	0x53
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x76
	.byte	0xd
	.4byte	0x53
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x77
	.byte	0xd
	.4byte	0x53
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x78
	.byte	0xd
	.4byte	0x53
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x79
	.byte	0xd
	.4byte	0x53
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x7a
	.byte	0xd
	.4byte	0x53
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x7b
	.byte	0xe
	.4byte	0x66
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x7c
	.byte	0xe
	.4byte	0x66
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x7d
	.byte	0xe
	.4byte	0x66
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x7e
	.byte	0xe
	.4byte	0x66
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x7f
	.byte	0xe
	.4byte	0x66
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x80
	.byte	0xd
	.4byte	0x53
	.byte	0x52
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x81
	.byte	0xd
	.4byte	0x53
	.byte	0x53
	.byte	0
	.uleb128 0x10
	.4byte	0x53
	.4byte	0x41e
	.uleb128 0x11
	.4byte	0x8e
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x3
	.byte	0x82
	.byte	0x1b
	.4byte	0xa3
	.uleb128 0x12
	.4byte	.LASF128
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.4byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	rf_para_on_flash
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x4
	.byte	0x13
	.byte	0x8
	.4byte	0x2b
	.4byte	0x457
	.uleb128 0x2
	.4byte	0x457
	.uleb128 0x2
	.4byte	0x53
	.byte	0
	.uleb128 0x9
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x5
	.byte	0x1c
	.byte	0x8
	.4byte	0x2b
	.4byte	0x477
	.uleb128 0x2
	.4byte	0x457
	.uleb128 0x2
	.4byte	0x53
	.byte	0
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x4
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x5
	.byte	0x1b
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0x4
	.byte	0x11
	.byte	0x8
	.4byte	0x2b
	.4byte	0x4a0
	.uleb128 0x2
	.4byte	0x457
	.uleb128 0x2
	.4byte	0x53
	.byte	0
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x5
	.byte	0x1a
	.byte	0x8
	.4byte	0x2b
	.4byte	0x4bb
	.uleb128 0x2
	.4byte	0x457
	.uleb128 0x2
	.4byte	0x53
	.byte	0
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0x4
	.byte	0x10
	.byte	0x9
	.4byte	0x53
	.4byte	0x4d1
	.uleb128 0x2
	.4byte	0x53
	.byte	0
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0x4
	.byte	0xf
	.byte	0x8
	.4byte	0x2b
	.4byte	0x4ec
	.uleb128 0x2
	.4byte	0x4ec
	.uleb128 0x2
	.4byte	0x53
	.byte	0
	.uleb128 0x9
	.4byte	0x2b
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0x5
	.byte	0x19
	.byte	0x8
	.4byte	0x2b
	.4byte	0x50c
	.uleb128 0x2
	.4byte	0x4ec
	.uleb128 0x2
	.4byte	0x53
	.byte	0
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x4
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0x5
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x4
	.byte	0xd
	.byte	0x8
	.4byte	0x2b
	.4byte	0x535
	.uleb128 0x2
	.4byte	0x4ec
	.uleb128 0x2
	.4byte	0x53
	.byte	0
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0x5
	.byte	0x17
	.byte	0x8
	.4byte	0x2b
	.4byte	0x550
	.uleb128 0x2
	.4byte	0x4ec
	.uleb128 0x2
	.4byte	0x53
	.byte	0
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0x4
	.byte	0xc
	.byte	0x9
	.4byte	0x53
	.4byte	0x566
	.uleb128 0x2
	.4byte	0x53
	.byte	0
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0x4
	.byte	0xb
	.byte	0x8
	.4byte	0x2b
	.4byte	0x581
	.uleb128 0x2
	.4byte	0x457
	.uleb128 0x2
	.4byte	0x53
	.byte	0
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0x5
	.byte	0x16
	.byte	0x8
	.4byte	0x2b
	.4byte	0x59c
	.uleb128 0x2
	.4byte	0x457
	.uleb128 0x2
	.4byte	0x53
	.byte	0
	.uleb128 0x7
	.4byte	.LASF104
	.byte	0x4
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0x5
	.byte	0x15
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0x4
	.byte	0x9
	.byte	0x8
	.4byte	0x2b
	.4byte	0x5c5
	.uleb128 0x2
	.4byte	0x53
	.uleb128 0x2
	.4byte	0x53
	.byte	0
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0x5
	.byte	0x14
	.byte	0x8
	.4byte	0x2b
	.4byte	0x5e0
	.uleb128 0x2
	.4byte	0x53
	.uleb128 0x2
	.4byte	0x53
	.byte	0
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0x4
	.byte	0x8
	.byte	0x9
	.4byte	0x53
	.4byte	0x5f6
	.uleb128 0x2
	.4byte	0x53
	.byte	0
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0x5
	.byte	0x13
	.byte	0x8
	.4byte	0x2b
	.4byte	0x60c
	.uleb128 0x2
	.4byte	0x60c
	.byte	0
	.uleb128 0x9
	.4byte	0x41e
	.uleb128 0x6
	.4byte	.LASF111
	.byte	0x72
	.byte	0x8
	.4byte	0x2b
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x647
	.uleb128 0xb
	.string	"mac"
	.byte	0x72
	.byte	0x27
	.4byte	0x457
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0x72
	.byte	0x36
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xa
	.4byte	.LASF117
	.byte	0x69
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF112
	.byte	0x60
	.byte	0x8
	.4byte	0x2b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x68d
	.uleb128 0xb
	.string	"mac"
	.byte	0x60
	.byte	0x2c
	.4byte	0x457
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF113
	.byte	0x60
	.byte	0x3b
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x6
	.4byte	.LASF114
	.byte	0x57
	.byte	0x9
	.4byte	0x53
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b5
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0x57
	.byte	0x31
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0x4e
	.byte	0x8
	.4byte	0x2b
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6eb
	.uleb128 0x4
	.4byte	.LASF116
	.byte	0x4e
	.byte	0x2a
	.4byte	0x4ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0x4e
	.byte	0x40
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xa
	.4byte	.LASF118
	.byte	0x45
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF119
	.byte	0x3c
	.byte	0x8
	.4byte	0x2b
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x731
	.uleb128 0x4
	.4byte	.LASF116
	.byte	0x3c
	.byte	0x2f
	.4byte	0x4ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF113
	.byte	0x3c
	.byte	0x45
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x6
	.4byte	.LASF120
	.byte	0x33
	.byte	0x9
	.4byte	0x53
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x759
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0x33
	.byte	0x35
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF121
	.byte	0x2a
	.byte	0x8
	.4byte	0x2b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x78f
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0x2a
	.byte	0x2d
	.4byte	0x457
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0x2a
	.byte	0x3d
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xa
	.4byte	.LASF123
	.byte	0x21
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF124
	.byte	0x18
	.byte	0x8
	.4byte	0x2b
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d5
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0x18
	.byte	0x31
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x4
	.4byte	.LASF113
	.byte	0x18
	.byte	0x41
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF125
	.byte	0xf
	.byte	0x9
	.4byte	0x53
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7fd
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0xf
	.byte	0x36
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x13
	.4byte	.LASF129
	.byte	0x1
	.byte	0x5
	.byte	0x8
	.4byte	0x2b
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF126
	.byte	0x5
	.byte	0x2c
	.4byte	0x60c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x4
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
	.uleb128 0x7
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.4byte	0x7c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF76:
	.string	"deBurstWrapCmd"
.LASF93:
	.string	"mfg_flash_write_macaddr_pre"
.LASF33:
	.string	"blk64EraseCmd"
.LASF120:
	.string	"mfg_media_is_poweroffset_slot_empty"
.LASF41:
	.string	"qpiFrDmyClk"
.LASF61:
	.string	"wrEnableReadRegLen"
.LASF44:
	.string	"fastReadDioCmd"
.LASF97:
	.string	"mfg_efuse_write_poweroffset"
.LASF118:
	.string	"mfg_media_write_poweroffset"
.LASF85:
	.string	"pdDelay"
.LASF57:
	.string	"wrEnableBit"
.LASF47:
	.string	"frQoDmyClk"
.LASF12:
	.string	"long long unsigned int"
.LASF42:
	.string	"fastReadDoCmd"
.LASF19:
	.string	"clkInvert"
.LASF17:
	.string	"cReadSupport"
.LASF53:
	.string	"writeVregEnableCmd"
.LASF56:
	.string	"busyIndex"
.LASF68:
	.string	"enterQpi"
.LASF5:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF113:
	.string	"program"
.LASF24:
	.string	"jedecIdCmd"
.LASF27:
	.string	"qpiJedecIdCmdDmyClk"
.LASF72:
	.string	"burstWrapCmd"
.LASF88:
	.string	"mfg_efuse_read_macaddr"
.LASF4:
	.string	"long int"
.LASF87:
	.string	"SPI_Flash_Cfg_Type"
.LASF64:
	.string	"releasePowerDown"
.LASF50:
	.string	"qpiFastReadQioCmd"
.LASF20:
	.string	"resetEnCmd"
.LASF67:
	.string	"writeRegCmd"
.LASF106:
	.string	"mfg_efuse_write_xtal_capcode_pre"
.LASF69:
	.string	"exitQpi"
.LASF18:
	.string	"clkDelay"
.LASF46:
	.string	"fastReadQoCmd"
.LASF91:
	.string	"mfg_flash_write_macaddr"
.LASF123:
	.string	"mfg_media_write_xtal_capcode"
.LASF111:
	.string	"mfg_media_read_macaddr"
.LASF74:
	.string	"burstWrapDataMode"
.LASF95:
	.string	"mfg_efuse_read_poweroffset"
.LASF13:
	.string	"unsigned int"
.LASF108:
	.string	"mfg_efuse_is_xtal_capcode_slot_empty"
.LASF9:
	.string	"uint16_t"
.LASF105:
	.string	"mfg_flash_write_xtal_capcode"
.LASF121:
	.string	"mfg_media_read_xtal_capcode"
.LASF79:
	.string	"deBurstWrapData"
.LASF21:
	.string	"resetCmd"
.LASF11:
	.string	"long unsigned int"
.LASF90:
	.string	"mfg_efuse_write_macaddr"
.LASF110:
	.string	"reload"
.LASF86:
	.string	"qeData"
.LASF114:
	.string	"mfg_media_is_macaddr_slot_empty"
.LASF112:
	.string	"mfg_media_write_macaddr_pre"
.LASF28:
	.string	"sectorSize"
.LASF94:
	.string	"mfg_efuse_is_macaddr_slot_empty"
.LASF26:
	.string	"qpiJedecIdCmd"
.LASF10:
	.string	"short unsigned int"
.LASF36:
	.string	"qpageProgramCmd"
.LASF128:
	.string	"rf_para_on_flash"
.LASF98:
	.string	"mfg_flash_write_poweroffset"
.LASF31:
	.string	"sectorEraseCmd"
.LASF60:
	.string	"wrEnableWriteRegLen"
.LASF32:
	.string	"blk32EraseCmd"
.LASF16:
	.string	"ioMode"
.LASF52:
	.string	"qpiPageProgramCmd"
.LASF58:
	.string	"qeBit"
.LASF40:
	.string	"qpiFastReadCmd"
.LASF51:
	.string	"qpiFrQioDmyClk"
.LASF107:
	.string	"mfg_flash_write_xtal_capcode_pre"
.LASF100:
	.string	"mfg_flash_write_poweroffset_pre"
.LASF23:
	.string	"resetCreadCmdSize"
.LASF63:
	.string	"qeReadRegLen"
.LASF65:
	.string	"busyReadRegLen"
.LASF80:
	.string	"timeEsector"
.LASF101:
	.string	"mfg_efuse_is_poweroffset_slot_empty"
.LASF70:
	.string	"cReadMode"
.LASF124:
	.string	"mfg_media_write_xtal_capcode_pre"
.LASF77:
	.string	"deBurstWrapCmdDmyClk"
.LASF122:
	.string	"capcode"
.LASF75:
	.string	"burstWrapData"
.LASF115:
	.string	"mfg_media_read_poweroffset"
.LASF59:
	.string	"busyBit"
.LASF104:
	.string	"mfg_efuse_write_xtal_capcode"
.LASF102:
	.string	"mfg_efuse_read_xtal_capcode"
.LASF8:
	.string	"unsigned char"
.LASF55:
	.string	"qeIndex"
.LASF3:
	.string	"short int"
.LASF92:
	.string	"mfg_efuse_write_macaddr_pre"
.LASF103:
	.string	"mfg_flash_read_xtal_capcode"
.LASF38:
	.string	"fastReadCmd"
.LASF29:
	.string	"pageSize"
.LASF117:
	.string	"mfg_media_write_macaddr"
.LASF34:
	.string	"writeEnableCmd"
.LASF49:
	.string	"frQioDmyClk"
.LASF43:
	.string	"frDoDmyClk"
.LASF125:
	.string	"mfg_media_is_xtal_capcode_slot_empty"
.LASF35:
	.string	"pageProgramCmd"
.LASF62:
	.string	"qeWriteRegLen"
.LASF116:
	.string	"pwrOffset"
.LASF96:
	.string	"mfg_flash_read_poweroffset"
.LASF22:
	.string	"resetCreadCmd"
.LASF14:
	.string	"long double"
.LASF81:
	.string	"timeE32k"
.LASF15:
	.string	"char"
.LASF54:
	.string	"wrEnableIndex"
.LASF45:
	.string	"frDioDmyClk"
.LASF39:
	.string	"frDmyClk"
.LASF126:
	.string	"flashCfg"
.LASF82:
	.string	"timeE64k"
.LASF25:
	.string	"jedecIdCmdDmyClk"
.LASF71:
	.string	"cRExit"
.LASF127:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF6:
	.string	"int8_t"
.LASF48:
	.string	"fastReadQioCmd"
.LASF119:
	.string	"mfg_media_write_poweroffset_pre"
.LASF30:
	.string	"chipEraseCmd"
.LASF84:
	.string	"timeCe"
.LASF78:
	.string	"deBurstWrapDataMode"
.LASF73:
	.string	"burstWrapCmdDmyClk"
.LASF99:
	.string	"mfg_efuse_write_poweroffset_pre"
.LASF109:
	.string	"mfg_flash_init"
.LASF7:
	.string	"uint8_t"
.LASF89:
	.string	"mfg_flash_read_macaddr"
.LASF83:
	.string	"timePagePgm"
.LASF66:
	.string	"readRegCmd"
.LASF129:
	.string	"mfg_media_init"
.LASF37:
	.string	"qppAddrMode"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_mfg_media.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
