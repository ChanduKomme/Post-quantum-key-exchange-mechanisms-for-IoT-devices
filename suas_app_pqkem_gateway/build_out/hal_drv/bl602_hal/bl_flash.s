	.file	"bl_flash.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_flash.c"
	.section	.bss.boot2_flashCfg,"aw",@nobits
	.align	2
	.type	boot2_flashCfg, @object
	.size	boot2_flashCfg, 88
boot2_flashCfg:
	.zero	88
	.section	.text.bl_flash_erase,"ax",@progbits
	.align	1
	.globl	bl_flash_erase
	.type	bl_flash_erase, @function
bl_flash_erase:
.LFB9:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_flash.c"
	.loc 1 42 1
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
	.loc 1 44 37
	lui	a5,%hi(boot2_flashCfg)
	addi	a5,a5,%lo(boot2_flashCfg)
	lbu	a5,17(a5)
	.loc 1 44 8
	bne	a5,zero,.L2
	.loc 1 45 16
	li	a5,-1
	j	.L3
.L2:
	.loc 1 47 94
	li	a5,553717760
	addi	a5,a5,-1360
	lw	a5,0(a5)
	.loc 1 47 6
	mv	a4,a5
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(boot2_flashCfg+4)
	addi	a0,a5,%lo(boot2_flashCfg+4)
	jalr	a4
.LVL0:
	.loc 1 52 12
	li	a5,0
.L3:
	.loc 1 53 1
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
	.size	bl_flash_erase, .-bl_flash_erase
	.section	.text.bl_flash_write,"ax",@progbits
	.align	1
	.globl	bl_flash_write
	.type	bl_flash_write, @function
bl_flash_write:
.LFB10:
	.loc 1 56 1
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
	.loc 1 58 37
	lui	a5,%hi(boot2_flashCfg)
	addi	a5,a5,%lo(boot2_flashCfg)
	lbu	a5,17(a5)
	.loc 1 58 8
	bne	a5,zero,.L5
	.loc 1 59 16
	li	a5,-1
	j	.L6
.L5:
	.loc 1 62 108
	li	a5,553717760
	addi	a5,a5,-1364
	lw	a5,0(a5)
	.loc 1 62 6
	mv	a4,a5
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(boot2_flashCfg+4)
	addi	a0,a5,%lo(boot2_flashCfg+4)
	jalr	a4
.LVL1:
	.loc 1 68 12
	li	a5,0
.L6:
	.loc 1 69 1
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
	.size	bl_flash_write, .-bl_flash_write
	.section	.text.bl_flash_read,"ax",@progbits
	.align	1
	.globl	bl_flash_read
	.type	bl_flash_read, @function
bl_flash_read:
.LFB11:
	.loc 1 72 1
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
	.loc 1 74 37
	lui	a5,%hi(boot2_flashCfg)
	addi	a5,a5,%lo(boot2_flashCfg)
	lbu	a5,17(a5)
	.loc 1 74 8
	bne	a5,zero,.L8
	.loc 1 75 16
	li	a5,-1
	j	.L9
.L8:
	.loc 1 78 108
	li	a5,553717760
	addi	a5,a5,-1368
	lw	a5,0(a5)
	.loc 1 78 6
	mv	a4,a5
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(boot2_flashCfg+4)
	addi	a0,a5,%lo(boot2_flashCfg+4)
	jalr	a4
.LVL2:
	.loc 1 84 12
	li	a5,0
.L9:
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
	.size	bl_flash_read, .-bl_flash_read
	.section	.text._dump_flash_config,"ax",@progbits
	.align	1
	.type	_dump_flash_config, @function
_dump_flash_config:
.LFB12:
	.loc 1 88 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 103 1
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
.LFE12:
	.size	_dump_flash_config, .-_dump_flash_config
	.section	.text.bl_flash_config_update,"ax",@progbits
	.align	1
	.globl	bl_flash_config_update
	.type	bl_flash_config_update, @function
bl_flash_config_update:
.LFB13:
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
	.loc 1 107 5
	call	_dump_flash_config
	.loc 1 109 12
	li	a5,0
	.loc 1 110 1
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
.LFE13:
	.size	bl_flash_config_update, .-bl_flash_config_update
	.section	.text.bl_flash_get_flashCfg,"ax",@progbits
	.align	1
	.globl	bl_flash_get_flashCfg
	.type	bl_flash_get_flashCfg, @function
bl_flash_get_flashCfg:
.LFB14:
	.loc 1 113 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 114 12
	lui	a5,%hi(boot2_flashCfg+4)
	addi	a5,a5,%lo(boot2_flashCfg+4)
	.loc 1 115 1
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
.LFE14:
	.size	bl_flash_get_flashCfg, .-bl_flash_get_flashCfg
	.section	.text.bl_flash_read_byxip,"ax",@progbits
	.align	1
	.globl	bl_flash_read_byxip
	.type	bl_flash_read_byxip, @function
bl_flash_read_byxip:
.LFB15:
	.loc 1 118 1
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
	.loc 1 122 60
	li	a5,553717760
	addi	a5,a5,-1440
	lw	a5,0(a5)
	.loc 1 122 15
	jalr	a5
.LVL3:
	sw	a0,-20(s0)
	.loc 1 124 8
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	bltu	a4,a5,.L16
	.loc 1 124 25 discriminator 1
	lw	a4,-36(s0)
	li	a5,16777216
	bltu	a4,a5,.L17
.L16:
	.loc 1 126 16
	li	a5,-1
	j	.L18
.L17:
	.loc 1 129 35
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	sub	a4,a4,a5
	.loc 1 129 13
	li	a5,587202560
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 131 5
	lw	a5,-24(s0)
	lw	a4,-44(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 133 12
	li	a5,0
.L18:
	.loc 1 134 1
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
	.size	bl_flash_read_byxip, .-bl_flash_read_byxip
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_romdriver.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa89
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xd
	.4byte	.LASF278
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x66
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x8e
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0xf
	.byte	0x4
	.uleb128 0xa
	.4byte	0xa8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x10
	.4byte	0x4e
	.4byte	0xc6
	.uleb128 0x11
	.4byte	0x8e
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x54
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.4byte	0x478
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3a
	.byte	0xd
	.4byte	0x4e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0x3b
	.byte	0xd
	.4byte	0x4e
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3c
	.byte	0xd
	.4byte	0x4e
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3d
	.byte	0xd
	.4byte	0x4e
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0x3e
	.byte	0xd
	.4byte	0x4e
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x4
	.byte	0x3f
	.byte	0xd
	.4byte	0x4e
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x4
	.byte	0x40
	.byte	0xd
	.4byte	0x4e
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x4
	.byte	0x41
	.byte	0xd
	.4byte	0x4e
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x4
	.byte	0x42
	.byte	0xd
	.4byte	0x4e
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x4
	.byte	0x43
	.byte	0xd
	.4byte	0x4e
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x4
	.byte	0x44
	.byte	0xd
	.4byte	0x4e
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x4
	.byte	0x45
	.byte	0xd
	.4byte	0x4e
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x4
	.byte	0x46
	.byte	0xd
	.4byte	0x4e
	.byte	0xc
	.uleb128 0x12
	.string	"mid"
	.byte	0x4
	.byte	0x47
	.byte	0xd
	.4byte	0x4e
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x4
	.byte	0x48
	.byte	0xe
	.4byte	0x5a
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x4
	.byte	0x49
	.byte	0xd
	.4byte	0x4e
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x4
	.byte	0x4a
	.byte	0xd
	.4byte	0x4e
	.byte	0x11
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x4
	.byte	0x4b
	.byte	0xd
	.4byte	0x4e
	.byte	0x12
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x4
	.byte	0x4c
	.byte	0xd
	.4byte	0x4e
	.byte	0x13
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x4
	.byte	0x4d
	.byte	0xd
	.4byte	0x4e
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x4
	.byte	0x4e
	.byte	0xd
	.4byte	0x4e
	.byte	0x15
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x4
	.byte	0x4f
	.byte	0xd
	.4byte	0x4e
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x4
	.byte	0x50
	.byte	0xd
	.4byte	0x4e
	.byte	0x17
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x4
	.byte	0x51
	.byte	0xd
	.4byte	0x4e
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x4
	.byte	0x52
	.byte	0xd
	.4byte	0x4e
	.byte	0x19
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x4
	.byte	0x53
	.byte	0xd
	.4byte	0x4e
	.byte	0x1a
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x4
	.byte	0x54
	.byte	0xd
	.4byte	0x4e
	.byte	0x1b
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x4
	.byte	0x55
	.byte	0xd
	.4byte	0x4e
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x4
	.byte	0x56
	.byte	0xd
	.4byte	0x4e
	.byte	0x1d
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x4
	.byte	0x57
	.byte	0xd
	.4byte	0x4e
	.byte	0x1e
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x4
	.byte	0x58
	.byte	0xd
	.4byte	0x4e
	.byte	0x1f
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.4byte	0x4e
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x4
	.byte	0x5a
	.byte	0xd
	.4byte	0x4e
	.byte	0x21
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x4
	.byte	0x5b
	.byte	0xd
	.4byte	0x4e
	.byte	0x22
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x4
	.byte	0x5c
	.byte	0xd
	.4byte	0x4e
	.byte	0x23
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x4
	.byte	0x5d
	.byte	0xd
	.4byte	0x4e
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x4
	.byte	0x5e
	.byte	0xd
	.4byte	0x4e
	.byte	0x25
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x4
	.byte	0x5f
	.byte	0xd
	.4byte	0x4e
	.byte	0x26
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x4
	.byte	0x60
	.byte	0xd
	.4byte	0x4e
	.byte	0x27
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x4
	.byte	0x61
	.byte	0xd
	.4byte	0x4e
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x4
	.byte	0x62
	.byte	0xd
	.4byte	0x4e
	.byte	0x29
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x4
	.byte	0x63
	.byte	0xd
	.4byte	0x4e
	.byte	0x2a
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x4
	.byte	0x64
	.byte	0xd
	.4byte	0x4e
	.byte	0x2b
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x4
	.byte	0x65
	.byte	0xd
	.4byte	0x4e
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x4
	.byte	0x66
	.byte	0xd
	.4byte	0x4e
	.byte	0x2d
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x4
	.byte	0x67
	.byte	0xd
	.4byte	0x4e
	.byte	0x2e
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x4
	.byte	0x68
	.byte	0xd
	.4byte	0x4e
	.byte	0x2f
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x4
	.byte	0x69
	.byte	0xd
	.4byte	0x4e
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x4
	.byte	0x6a
	.byte	0xd
	.4byte	0x4e
	.byte	0x31
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x4
	.byte	0x6b
	.byte	0xd
	.4byte	0x4e
	.byte	0x32
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x4
	.byte	0x6c
	.byte	0xd
	.4byte	0x4e
	.byte	0x33
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x4
	.byte	0x6d
	.byte	0xd
	.4byte	0xb6
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x4
	.byte	0x6e
	.byte	0xd
	.4byte	0xb6
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x4
	.byte	0x6f
	.byte	0xd
	.4byte	0x4e
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0x4
	.byte	0x70
	.byte	0xd
	.4byte	0x4e
	.byte	0x3d
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0x4
	.byte	0x71
	.byte	0xd
	.4byte	0x4e
	.byte	0x3e
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x4
	.byte	0x72
	.byte	0xd
	.4byte	0x4e
	.byte	0x3f
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x4
	.byte	0x73
	.byte	0xd
	.4byte	0x4e
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x4
	.byte	0x74
	.byte	0xd
	.4byte	0x4e
	.byte	0x41
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0x4
	.byte	0x75
	.byte	0xd
	.4byte	0x4e
	.byte	0x42
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0x4
	.byte	0x76
	.byte	0xd
	.4byte	0x4e
	.byte	0x43
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0x4
	.byte	0x77
	.byte	0xd
	.4byte	0x4e
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF78
	.byte	0x4
	.byte	0x78
	.byte	0xd
	.4byte	0x4e
	.byte	0x45
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x4
	.byte	0x79
	.byte	0xd
	.4byte	0x4e
	.byte	0x46
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0x4
	.byte	0x7a
	.byte	0xd
	.4byte	0x4e
	.byte	0x47
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0x4
	.byte	0x7b
	.byte	0xe
	.4byte	0x5a
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0x4
	.byte	0x7c
	.byte	0xe
	.4byte	0x5a
	.byte	0x4a
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0x4
	.byte	0x7d
	.byte	0xe
	.4byte	0x5a
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0x4
	.byte	0x7e
	.byte	0xe
	.4byte	0x5a
	.byte	0x4e
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0x4
	.byte	0x7f
	.byte	0xe
	.4byte	0x5a
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0x4
	.byte	0x80
	.byte	0xd
	.4byte	0x4e
	.byte	0x52
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x4
	.byte	0x81
	.byte	0xd
	.4byte	0x4e
	.byte	0x53
	.byte	0
	.uleb128 0x5
	.4byte	.LASF88
	.byte	0x4
	.byte	0x82
	.byte	0x1b
	.4byte	0xc6
	.uleb128 0x13
	.byte	0x7
	.byte	0x2
	.4byte	0x66
	.byte	0x5
	.byte	0x40
	.byte	0xe
	.4byte	0x8c0
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF137
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0x35
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0x36
	.uleb128 0x1
	.4byte	.LASF144
	.byte	0x37
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0x39
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0x3b
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF158
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF159
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF160
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF161
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF162
	.byte	0x49
	.uleb128 0x1
	.4byte	.LASF163
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF164
	.byte	0x4b
	.uleb128 0x1
	.4byte	.LASF165
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF166
	.byte	0x4d
	.uleb128 0x1
	.4byte	.LASF167
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF168
	.byte	0x4f
	.uleb128 0x1
	.4byte	.LASF169
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF170
	.byte	0x51
	.uleb128 0x1
	.4byte	.LASF171
	.byte	0x52
	.uleb128 0x1
	.4byte	.LASF172
	.byte	0x53
	.uleb128 0x1
	.4byte	.LASF173
	.byte	0x54
	.uleb128 0x1
	.4byte	.LASF174
	.byte	0x55
	.uleb128 0x1
	.4byte	.LASF175
	.byte	0x56
	.uleb128 0x1
	.4byte	.LASF176
	.byte	0x57
	.uleb128 0x1
	.4byte	.LASF177
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF178
	.byte	0x59
	.uleb128 0x1
	.4byte	.LASF179
	.byte	0x5a
	.uleb128 0x1
	.4byte	.LASF180
	.byte	0x5b
	.uleb128 0x1
	.4byte	.LASF181
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF182
	.byte	0x5d
	.uleb128 0x1
	.4byte	.LASF183
	.byte	0x5e
	.uleb128 0x1
	.4byte	.LASF184
	.byte	0x5f
	.uleb128 0x1
	.4byte	.LASF185
	.byte	0x60
	.uleb128 0x1
	.4byte	.LASF186
	.byte	0x61
	.uleb128 0x1
	.4byte	.LASF187
	.byte	0x62
	.uleb128 0x1
	.4byte	.LASF188
	.byte	0x63
	.uleb128 0x1
	.4byte	.LASF189
	.byte	0x64
	.uleb128 0x1
	.4byte	.LASF190
	.byte	0x65
	.uleb128 0x1
	.4byte	.LASF191
	.byte	0x66
	.uleb128 0x1
	.4byte	.LASF192
	.byte	0x67
	.uleb128 0x1
	.4byte	.LASF193
	.byte	0x68
	.uleb128 0x1
	.4byte	.LASF194
	.byte	0x69
	.uleb128 0x1
	.4byte	.LASF195
	.byte	0x6a
	.uleb128 0x1
	.4byte	.LASF196
	.byte	0x6b
	.uleb128 0x1
	.4byte	.LASF197
	.byte	0x6c
	.uleb128 0x1
	.4byte	.LASF198
	.byte	0x6d
	.uleb128 0x1
	.4byte	.LASF199
	.byte	0x6e
	.uleb128 0x1
	.4byte	.LASF200
	.byte	0x6f
	.uleb128 0x1
	.4byte	.LASF201
	.byte	0x70
	.uleb128 0x1
	.4byte	.LASF202
	.byte	0x71
	.uleb128 0x1
	.4byte	.LASF203
	.byte	0x72
	.uleb128 0x1
	.4byte	.LASF204
	.byte	0x73
	.uleb128 0x1
	.4byte	.LASF205
	.byte	0x74
	.uleb128 0x1
	.4byte	.LASF206
	.byte	0x75
	.uleb128 0x1
	.4byte	.LASF207
	.byte	0x76
	.uleb128 0x1
	.4byte	.LASF208
	.byte	0x77
	.uleb128 0x1
	.4byte	.LASF209
	.byte	0x78
	.uleb128 0x1
	.4byte	.LASF210
	.byte	0x79
	.uleb128 0x1
	.4byte	.LASF211
	.byte	0x7a
	.uleb128 0x1
	.4byte	.LASF212
	.byte	0x7b
	.uleb128 0x1
	.4byte	.LASF213
	.byte	0x7c
	.uleb128 0x1
	.4byte	.LASF214
	.byte	0x7d
	.uleb128 0x1
	.4byte	.LASF215
	.byte	0x7e
	.uleb128 0x1
	.4byte	.LASF216
	.byte	0x7f
	.uleb128 0x1
	.4byte	.LASF217
	.byte	0x80
	.uleb128 0x1
	.4byte	.LASF218
	.byte	0x81
	.uleb128 0x1
	.4byte	.LASF219
	.byte	0x82
	.uleb128 0x1
	.4byte	.LASF220
	.byte	0x83
	.uleb128 0x1
	.4byte	.LASF221
	.byte	0x84
	.uleb128 0x1
	.4byte	.LASF222
	.byte	0x85
	.uleb128 0x1
	.4byte	.LASF223
	.byte	0x86
	.uleb128 0x1
	.4byte	.LASF224
	.byte	0x87
	.uleb128 0x1
	.4byte	.LASF225
	.byte	0x88
	.uleb128 0x1
	.4byte	.LASF226
	.byte	0x89
	.uleb128 0x1
	.4byte	.LASF227
	.byte	0x8a
	.uleb128 0x1
	.4byte	.LASF228
	.byte	0x8b
	.uleb128 0x1
	.4byte	.LASF229
	.byte	0x8c
	.uleb128 0x1
	.4byte	.LASF230
	.byte	0x8d
	.uleb128 0x1
	.4byte	.LASF231
	.byte	0x8e
	.uleb128 0x1
	.4byte	.LASF232
	.byte	0x8f
	.uleb128 0x1
	.4byte	.LASF233
	.byte	0x90
	.uleb128 0x1
	.4byte	.LASF234
	.byte	0x91
	.uleb128 0x1
	.4byte	.LASF235
	.byte	0x92
	.uleb128 0x1
	.4byte	.LASF236
	.byte	0x93
	.uleb128 0x1
	.4byte	.LASF237
	.byte	0x94
	.uleb128 0x1
	.4byte	.LASF238
	.byte	0x95
	.uleb128 0x1
	.4byte	.LASF239
	.byte	0x96
	.uleb128 0x1
	.4byte	.LASF240
	.byte	0x97
	.uleb128 0x1
	.4byte	.LASF241
	.byte	0x98
	.uleb128 0x1
	.4byte	.LASF242
	.byte	0x99
	.uleb128 0x1
	.4byte	.LASF243
	.byte	0x9a
	.uleb128 0x1
	.4byte	.LASF244
	.byte	0x9b
	.uleb128 0x1
	.4byte	.LASF245
	.byte	0x9c
	.uleb128 0x1
	.4byte	.LASF246
	.byte	0x9d
	.uleb128 0x1
	.4byte	.LASF247
	.byte	0x9e
	.uleb128 0x1
	.4byte	.LASF248
	.byte	0x9f
	.uleb128 0x1
	.4byte	.LASF249
	.byte	0xa0
	.uleb128 0x1
	.4byte	.LASF250
	.byte	0xa1
	.uleb128 0x1
	.4byte	.LASF251
	.byte	0xa2
	.uleb128 0x1
	.4byte	.LASF252
	.byte	0xa3
	.uleb128 0x1
	.4byte	.LASF253
	.byte	0xa4
	.uleb128 0x1
	.4byte	.LASF254
	.byte	0xa5
	.uleb128 0x1
	.4byte	.LASF255
	.byte	0xa6
	.uleb128 0x1
	.4byte	.LASF256
	.byte	0xa7
	.uleb128 0x1
	.4byte	.LASF257
	.byte	0xa8
	.uleb128 0x1
	.4byte	.LASF258
	.byte	0xa9
	.uleb128 0x1
	.4byte	.LASF259
	.byte	0xaa
	.uleb128 0x1
	.4byte	.LASF260
	.byte	0xab
	.uleb128 0x1
	.4byte	.LASF261
	.byte	0xac
	.uleb128 0x1
	.4byte	.LASF262
	.byte	0xad
	.uleb128 0x1
	.4byte	.LASF263
	.byte	0xae
	.uleb128 0x1
	.4byte	.LASF264
	.byte	0xaf
	.uleb128 0x1
	.4byte	.LASF265
	.byte	0xb0
	.uleb128 0x14
	.4byte	.LASF266
	.2byte	0x1ff
	.byte	0
	.uleb128 0xc
	.4byte	0x4e
	.uleb128 0xb
	.byte	0x58
	.byte	0x1
	.byte	0x24
	.byte	0x8
	.4byte	0x8e9
	.uleb128 0x2
	.4byte	.LASF267
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.4byte	0x6d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF268
	.byte	0x1
	.byte	0x26
	.byte	0x18
	.4byte	0x478
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF270
	.byte	0x27
	.byte	0x3
	.4byte	0x8c5
	.uleb128 0x5
	.byte	0x3
	.4byte	boot2_flashCfg
	.uleb128 0x15
	.4byte	.LASF279
	.byte	0x6
	.byte	0x1f
	.byte	0x8
	.4byte	0xa8
	.4byte	0x91a
	.uleb128 0x8
	.4byte	0xaa
	.uleb128 0x8
	.4byte	0x91f
	.uleb128 0x8
	.4byte	0x95
	.byte	0
	.uleb128 0xc
	.4byte	0x924
	.uleb128 0xa
	.4byte	0x91a
	.uleb128 0x16
	.uleb128 0x9
	.4byte	.LASF275
	.byte	0x75
	.4byte	0x87
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x984
	.uleb128 0x6
	.4byte	.LASF269
	.byte	0x75
	.byte	0x22
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"dst"
	.byte	0x75
	.byte	0x31
	.4byte	0x8c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.string	"len"
	.byte	0x75
	.byte	0x3a
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.4byte	.LASF271
	.byte	0x77
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF272
	.byte	0x78
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF273
	.byte	0x1
	.byte	0x70
	.byte	0x7
	.4byte	0xa8
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LASF274
	.byte	0x1
	.byte	0x69
	.byte	0x5
	.4byte	0x87
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.4byte	.LASF280
	.byte	0x1
	.byte	0x57
	.byte	0xd
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d3
	.uleb128 0x1a
	.4byte	.LASF281
	.byte	0x1
	.byte	0x59
	.byte	0x14
	.4byte	0x4e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF276
	.byte	0x47
	.4byte	0x87
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa16
	.uleb128 0x6
	.4byte	.LASF269
	.byte	0x47
	.byte	0x1c
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"dst"
	.byte	0x47
	.byte	0x2b
	.4byte	0x8c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.string	"len"
	.byte	0x47
	.byte	0x34
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x9
	.4byte	.LASF277
	.byte	0x37
	.4byte	0x87
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa59
	.uleb128 0x6
	.4byte	.LASF269
	.byte	0x37
	.byte	0x1d
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"src"
	.byte	0x37
	.byte	0x2c
	.4byte	0x8c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.string	"len"
	.byte	0x37
	.byte	0x35
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF282
	.byte	0x1
	.byte	0x29
	.byte	0x5
	.4byte	0x87
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF269
	.byte	0x29
	.byte	0x1d
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"len"
	.byte	0x29
	.byte	0x27
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x4
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0xa
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1a
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF105:
	.string	"ROM_API_INDEX_AON_Power_On_SFReg"
.LASF26:
	.string	"jedecIdCmdDmyClk"
.LASF109:
	.string	"ROM_API_INDEX_ASM_Delay_Us"
.LASF93:
	.string	"ROM_API_INDEX_AON_Power_On_MBG"
.LASF194:
	.string	"ROM_API_INDEX_SFlash_Sector_Erase"
.LASF263:
	.string	"ROM_API_INDEX_XIP_SFlash_Opt_Exit"
.LASF59:
	.string	"qeBit"
.LASF110:
	.string	"ROM_API_INDEX_BL602_Delay_US"
.LASF122:
	.string	"ROM_API_INDEX_EF_Ctrl_AutoLoad_Done"
.LASF115:
	.string	"ROM_API_INDEX_BL602_MemSet"
.LASF57:
	.string	"busyIndex"
.LASF56:
	.string	"qeIndex"
.LASF161:
	.string	"ROM_API_INDEX_HBN_Trim_RC32K"
.LASF132:
	.string	"ROM_API_INDEX_GLB_Set_System_CLK"
.LASF179:
	.string	"ROM_API_INDEX_PDS_Disable_PLL_All_Clks"
.LASF25:
	.string	"jedecIdCmd"
.LASF282:
	.string	"bl_flash_erase"
.LASF186:
	.string	"ROM_API_INDEX_SFlash_SetSPIMode"
.LASF33:
	.string	"blk32EraseCmd"
.LASF39:
	.string	"fastReadCmd"
.LASF53:
	.string	"qpiPageProgramCmd"
.LASF24:
	.string	"resetCreadCmdSize"
.LASF177:
	.string	"ROM_API_INDEX_PDS_Power_On_PLL"
.LASF137:
	.string	"ROM_API_INDEX_GLB_SW_CPU_Reset"
.LASF13:
	.string	"unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF80:
	.string	"deBurstWrapData"
.LASF259:
	.string	"ROM_API_INDEX_XIP_SFlash_Read_With_Lock"
.LASF182:
	.string	"ROM_API_INDEX_PDS_Power_Off_PLL"
.LASF18:
	.string	"cReadSupport"
.LASF151:
	.string	"ROM_API_INDEX_HBN_Reset"
.LASF134:
	.string	"ROM_API_INDEX_GLB_Set_SF_CLK"
.LASF162:
	.string	"ROM_API_INDEX_HBN_Hw_Pu_Pd_Cfg"
.LASF231:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Enable_BE"
.LASF250:
	.string	"ROM_API_INDEX_XIP_SFlash_State_Save"
.LASF113:
	.string	"ROM_API_INDEX_BL602_MemCpy4"
.LASF166:
	.string	"ROM_API_INDEX_L1C_Set_Wrap"
.LASF168:
	.string	"ROM_API_INDEX_L1C_IROM_2T_Access_Set"
.LASF273:
	.string	"bl_flash_get_flashCfg"
.LASF120:
	.string	"ROM_API_INDEX_EF_Ctrl_Load_Efuse_R0"
.LASF251:
	.string	"ROM_API_INDEX_XIP_SFlash_State_Restore"
.LASF234:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_Key"
.LASF87:
	.string	"qeData"
.LASF252:
	.string	"ROM_API_INDEX_XIP_SFlash_Erase_Need_Lock"
.LASF262:
	.string	"ROM_API_INDEX_XIP_SFlash_Opt_Enter"
.LASF50:
	.string	"frQioDmyClk"
.LASF41:
	.string	"qpiFastReadCmd"
.LASF223:
	.string	"ROM_API_INDEX_SF_Cfg_Restore_GPIO17_Fun"
.LASF228:
	.string	"ROM_API_INDEX_SF_Ctrl_Select_Pad"
.LASF189:
	.string	"ROM_API_INDEX_SFlash_Busy"
.LASF51:
	.string	"qpiFastReadQioCmd"
.LASF257:
	.string	"ROM_API_INDEX_XIP_SFlash_GetUniqueId_Need_Lock"
.LASF117:
	.string	"ROM_API_INDEX_BL602_MemCmp"
.LASF210:
	.string	"ROM_API_INDEX_SFlash_Cache_Enable_Set"
.LASF224:
	.string	"ROM_API_INDEX_SF_Cfg_Get_Flash_Cfg_Need_Lock"
.LASF207:
	.string	"ROM_API_INDEX_SFlash_Reset_Continue_Read"
.LASF239:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Disable"
.LASF214:
	.string	"ROM_API_INDEX_SFlash_Cache_Miss_Count_Get"
.LASF121:
	.string	"ROM_API_INDEX_EF_Ctrl_Busy"
.LASF62:
	.string	"wrEnableReadRegLen"
.LASF139:
	.string	"ROM_API_INDEX_GLB_Select_Internal_Flash"
.LASF32:
	.string	"sectorEraseCmd"
.LASF38:
	.string	"qppAddrMode"
.LASF143:
	.string	"ROM_API_INDEX_GLB_GPIO_Init"
.LASF29:
	.string	"sectorSize"
.LASF12:
	.string	"long long unsigned int"
.LASF249:
	.string	"ROM_API_INDEX_SF_Ctrl_Set_Clock_Delay"
.LASF48:
	.string	"frQoDmyClk"
.LASF203:
	.string	"ROM_API_INDEX_SFlash_Releae_Powerdown"
.LASF140:
	.string	"ROM_API_INDEX_GLB_Select_External_Flash"
.LASF92:
	.string	"ROM_API_INDEX_RSVD_LAST"
.LASF238:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Enable"
.LASF272:
	.string	"xipaddr"
.LASF72:
	.string	"cRExit"
.LASF159:
	.string	"ROM_API_INDEX_HBN_Power_On_RC32K"
.LASF36:
	.string	"pageProgramCmd"
.LASF135:
	.string	"ROM_API_INDEX_GLB_Set_PKA_CLK_Sel"
.LASF107:
	.string	"ROM_API_INDEX_AON_LowPower_Enter_PDS0"
.LASF202:
	.string	"ROM_API_INDEX_SFlash_Powerdown"
.LASF79:
	.string	"deBurstWrapDataMode"
.LASF180:
	.string	"ROM_API_INDEX_PDS_Enable_PLL_Clk"
.LASF256:
	.string	"ROM_API_INDEX_XIP_SFlash_GetDeviceId_Need_Lock"
.LASF248:
	.string	"ROM_API_INDEX_SF_Ctrl_Get_Clock_Delay"
.LASF150:
	.string	"ROM_API_INDEX_HBN_Enable"
.LASF90:
	.string	"ROM_API_INDEX_RSVD_0"
.LASF91:
	.string	"ROM_API_INDEX_RSVD_1"
.LASF254:
	.string	"ROM_API_INDEX_XIP_SFlash_Read_Need_Lock"
.LASF133:
	.string	"ROM_API_INDEX_System_Core_Clock_Update_From_RC32M"
.LASF211:
	.string	"ROM_API_INDEX_SFlash_Cache_Flush"
.LASF34:
	.string	"blk64EraseCmd"
.LASF31:
	.string	"chipEraseCmd"
.LASF14:
	.string	"size_t"
.LASF260:
	.string	"ROM_API_INDEX_XIP_SFlash_Write_With_Lock"
.LASF271:
	.string	"offset"
.LASF43:
	.string	"fastReadDoCmd"
.LASF82:
	.string	"timeE32k"
.LASF125:
	.string	"ROM_API_INDEX_EF_Ctrl_Read_RC32K_Trim"
.LASF154:
	.string	"ROM_API_INDEX_HBN_Set_Ldo11_Soc_Vout"
.LASF215:
	.string	"ROM_API_INDEX_SFlash_Cache_Read_Disable"
.LASF155:
	.string	"ROM_API_INDEX_HBN_32K_Sel"
.LASF70:
	.string	"exitQpi"
.LASF163:
	.string	"ROM_API_INDEX_HBN_Pin_WakeUp_Mask"
.LASF98:
	.string	"ROM_API_INDEX_AON_Power_Off_XTAL"
.LASF247:
	.string	"ROM_API_INDEX_SF_Ctrl_Is_AES_Enable"
.LASF77:
	.string	"deBurstWrapCmd"
.LASF226:
	.string	"ROM_API_INDEX_SF_Cfg_Flash_Identify"
.LASF264:
	.string	"ROM_API_INDEX_BFLB_Soft_CRC32"
.LASF19:
	.string	"clkDelay"
.LASF236:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_IV"
.LASF160:
	.string	"ROM_API_INDEX_HBN_Power_Off_RC32K"
.LASF218:
	.string	"ROM_API_INDEX_SFlash_Write_Reg_With_Cmd"
.LASF94:
	.string	"ROM_API_INDEX_AON_Power_Off_MBG"
.LASF240:
	.string	"ROM_API_INDEX_SF_Ctrl_Set_Flash_Image_Offset"
.LASF176:
	.string	"ROM_API_INDEX_PDS_Select_XTAL_As_PLL_Ref"
.LASF112:
	.string	"ROM_API_INDEX_BL602_MemCpy"
.LASF86:
	.string	"pdDelay"
.LASF95:
	.string	"ROM_API_INDEX_AON_Power_On_XTAL"
.LASF16:
	.string	"char"
.LASF127:
	.string	"ROM_API_INDEX_GLB_Get_Root_CLK_Sel"
.LASF165:
	.string	"ROM_API_INDEX_HBN_Set_Embedded_Flash_Pullup"
.LASF274:
	.string	"bl_flash_config_update"
.LASF101:
	.string	"ROM_API_INDEX_AON_Power_On_LDO11_SOC"
.LASF281:
	.string	"__boot2_flashCfg_src"
.LASF46:
	.string	"frDioDmyClk"
.LASF129:
	.string	"ROM_API_INDEX_GLB_Get_BCLK_Div"
.LASF253:
	.string	"ROM_API_INDEX_XIP_SFlash_Write_Need_Lock"
.LASF7:
	.string	"uint8_t"
.LASF190:
	.string	"ROM_API_INDEX_SFlash_Write_Enable"
.LASF147:
	.string	"ROM_API_INDEX_GLB_GPIO_Get_Fun"
.LASF208:
	.string	"ROM_API_INDEX_SFlash_Set_IDbus_Cfg"
.LASF27:
	.string	"qpiJedecIdCmd"
.LASF145:
	.string	"ROM_API_INDEX_GLB_GPIO_OUTPUT_Disable"
.LASF52:
	.string	"qpiFrQioDmyClk"
.LASF114:
	.string	"ROM_API_INDEX_BL602_MemCpy_Fast"
.LASF74:
	.string	"burstWrapCmdDmyClk"
.LASF99:
	.string	"ROM_API_INDEX_AON_Power_On_BG"
.LASF17:
	.string	"ioMode"
.LASF44:
	.string	"frDoDmyClk"
.LASF241:
	.string	"ROM_API_INDEX_SF_Ctrl_Get_Flash_Image_Offset"
.LASF68:
	.string	"writeRegCmd"
.LASF6:
	.string	"long long int"
.LASF111:
	.string	"ROM_API_INDEX_BL602_Delay_MS"
.LASF275:
	.string	"bl_flash_read_byxip"
.LASF64:
	.string	"qeReadRegLen"
.LASF49:
	.string	"fastReadQioCmd"
.LASF152:
	.string	"ROM_API_INDEX_HBN_Set_Ldo11_Aon_Vout"
.LASF124:
	.string	"ROM_API_INDEX_EF_Ctrl_Read_RC32M_Trim"
.LASF192:
	.string	"ROM_API_INDEX_SFlash_Volatile_Reg_Write_Enable"
.LASF55:
	.string	"wrEnableIndex"
.LASF213:
	.string	"ROM_API_INDEX_SFlash_Cache_Hit_Count_Get"
.LASF193:
	.string	"ROM_API_INDEX_SFlash_Chip_Erase"
.LASF204:
	.string	"ROM_API_INDEX_SFlash_SetBurstWrap"
.LASF54:
	.string	"writeVregEnableCmd"
.LASF60:
	.string	"busyBit"
.LASF65:
	.string	"releasePowerDown"
.LASF229:
	.string	"ROM_API_INDEX_SF_Ctrl_Set_Owner"
.LASF71:
	.string	"cReadMode"
.LASF221:
	.string	"ROM_API_INDEX_SF_Cfg_Init_Internal_Flash_Gpio"
.LASF23:
	.string	"resetCreadCmd"
.LASF104:
	.string	"ROM_API_INDEX_AON_Power_Off_LDO15_RF"
.LASF222:
	.string	"ROM_API_INDEX_SF_Cfg_Deinit_Ext_Flash_Gpio"
.LASF178:
	.string	"ROM_API_INDEX_PDS_Enable_PLL_All_Clks"
.LASF22:
	.string	"resetCmd"
.LASF170:
	.string	"ROM_API_INDEX_PDS_Enable"
.LASF73:
	.string	"burstWrapCmd"
.LASF219:
	.string	"ROM_API_INDEX_SFlash_Restore_From_Powerdown"
.LASF205:
	.string	"ROM_API_INDEX_SFlash_DisableBurstWrap"
.LASF102:
	.string	"ROM_API_INDEX_AON_Power_Off_LDO11_SOC"
.LASF232:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Enable_LE"
.LASF89:
	.string	"ROM_API_INDEX_VERSION"
.LASF130:
	.string	"ROM_API_INDEX_GLB_Get_HCLK_Div"
.LASF265:
	.string	"ROM_API_INDEX_FUNC_EMPTY_START"
.LASF131:
	.string	"ROM_API_INDEX_Update_SystemCoreClockWith_XTAL"
.LASF85:
	.string	"timeCe"
.LASF255:
	.string	"ROM_API_INDEX_XIP_SFlash_GetJedecId_Need_Lock"
.LASF201:
	.string	"ROM_API_INDEX_SFlash_GetDeviceId"
.LASF156:
	.string	"ROM_API_INDEX_HBN_Set_ROOT_CLK_Sel"
.LASF45:
	.string	"fastReadDioCmd"
.LASF15:
	.string	"long double"
.LASF195:
	.string	"ROM_API_INDEX_SFlash_Blk32_Erase"
.LASF8:
	.string	"uint16_t"
.LASF188:
	.string	"ROM_API_INDEX_SFlash_Write_Reg"
.LASF280:
	.string	"_dump_flash_config"
.LASF158:
	.string	"ROM_API_INDEX_HBN_Power_Off_Xtal_32K"
.LASF128:
	.string	"ROM_API_INDEX_GLB_Set_System_CLK_Div"
.LASF199:
	.string	"ROM_API_INDEX_SFlash_GetUniqueId"
.LASF230:
	.string	"ROM_API_INDEX_SF_Ctrl_Disable"
.LASF142:
	.string	"ROM_API_INDEX_GLB_Swap_Flash_Pin"
.LASF83:
	.string	"timeE64k"
.LASF174:
	.string	"ROM_API_INDEX_PDS_Trim_RC32M"
.LASF116:
	.string	"ROM_API_INDEX_BL602_MemSet4"
.LASF108:
	.string	"ROM_API_INDEX_AON_LowPower_Exit_PDS0"
.LASF136:
	.string	"ROM_API_INDEX_GLB_SW_System_Reset"
.LASF4:
	.string	"short int"
.LASF266:
	.string	"ROM_API_INDEX_FUNC_EMPTY_END"
.LASF175:
	.string	"ROM_API_INDEX_PDS_Select_RC32M_As_PLL_Ref"
.LASF37:
	.string	"qpageProgramCmd"
.LASF5:
	.string	"long int"
.LASF172:
	.string	"ROM_API_INDEX_PDS_RAM_Config"
.LASF270:
	.string	"boot2_flashCfg"
.LASF146:
	.string	"ROM_API_INDEX_GLB_GPIO_Set_HZ"
.LASF141:
	.string	"ROM_API_INDEX_GLB_Deswap_Flash_Pin"
.LASF148:
	.string	"ROM_API_INDEX_HBN_Mode_Enter"
.LASF268:
	.string	"flashCfg"
.LASF61:
	.string	"wrEnableWriteRegLen"
.LASF42:
	.string	"qpiFrDmyClk"
.LASF88:
	.string	"SPI_Flash_Cfg_Type"
.LASF97:
	.string	"ROM_API_INDEX_AON_Get_Xtal_CapCode"
.LASF173:
	.string	"ROM_API_INDEX_PDS_Default_Level_Config"
.LASF118:
	.string	"ROM_API_INDEX_EF_Ctrl_Sw_AHB_Clk_0"
.LASF149:
	.string	"ROM_API_INDEX_HBN_Power_Down_Flash"
.LASF138:
	.string	"ROM_API_INDEX_GLB_SW_POR_Reset"
.LASF246:
	.string	"ROM_API_INDEX_SF_Ctrl_GetBusyState"
.LASF206:
	.string	"ROM_API_INDEX_SFlash_Software_Reset"
.LASF227:
	.string	"ROM_API_INDEX_SF_Ctrl_Enable"
.LASF119:
	.string	"ROM_API_INDEX_EF_Ctrl_Program_Efuse_0"
.LASF233:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_Region"
.LASF184:
	.string	"ROM_API_INDEX_SEC_Eng_Turn_Off_Sec_Ring"
.LASF267:
	.string	"magic"
.LASF181:
	.string	"ROM_API_INDEX_PDS_Disable_PLL_Clk"
.LASF21:
	.string	"resetEnCmd"
.LASF237:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_IV_BE"
.LASF187:
	.string	"ROM_API_INDEX_SFlash_Read_Reg"
.LASF196:
	.string	"ROM_API_INDEX_SFlash_Blk64_Erase"
.LASF191:
	.string	"ROM_API_INDEX_SFlash_Qspi_Enable"
.LASF103:
	.string	"ROM_API_INDEX_AON_Power_On_LDO15_RF"
.LASF96:
	.string	"ROM_API_INDEX_AON_Set_Xtal_CapCode"
.LASF185:
	.string	"ROM_API_INDEX_SFlash_Init"
.LASF11:
	.string	"long unsigned int"
.LASF242:
	.string	"ROM_API_INDEX_SF_Ctrl_Select_Clock"
.LASF212:
	.string	"ROM_API_INDEX_SFlash_Cache_Read_Enable"
.LASF47:
	.string	"fastReadQoCmd"
.LASF243:
	.string	"ROM_API_INDEX_SF_Ctrl_SendCmd"
.LASF171:
	.string	"ROM_API_INDEX_PDS_Force_Config"
.LASF157:
	.string	"ROM_API_INDEX_HBN_Power_On_Xtal_32K"
.LASF258:
	.string	"ROM_API_INDEX_XIP_SFlash_Read_Via_Cache_Need_Lock"
.LASF200:
	.string	"ROM_API_INDEX_SFlash_GetJedecId"
.LASF69:
	.string	"enterQpi"
.LASF40:
	.string	"frDmyClk"
.LASF197:
	.string	"ROM_API_INDEX_SFlash_Erase"
.LASF84:
	.string	"timePagePgm"
.LASF2:
	.string	"unsigned char"
.LASF217:
	.string	"ROM_API_INDEX_SFlash_Read_Reg_With_Cmd"
.LASF126:
	.string	"ROM_API_INDEX_EF_Ctrl_Clear"
.LASF167:
	.string	"ROM_API_INDEX_L1C_Set_Way_Disable"
.LASF63:
	.string	"qeWriteRegLen"
.LASF78:
	.string	"deBurstWrapCmdDmyClk"
.LASF164:
	.string	"ROM_API_INDEX_HBN_GPIO7_Dbg_Pull_Cfg"
.LASF244:
	.string	"ROM_API_INDEX_SF_Ctrl_Icache_Set"
.LASF269:
	.string	"addr"
.LASF216:
	.string	"ROM_API_INDEX_SFlash_Read"
.LASF58:
	.string	"wrEnableBit"
.LASF144:
	.string	"ROM_API_INDEX_GLB_GPIO_OUTPUT_Enable"
.LASF183:
	.string	"ROM_API_INDEX_SEC_Eng_Turn_On_Sec_Ring"
.LASF35:
	.string	"writeEnableCmd"
.LASF123:
	.string	"ROM_API_INDEX_EF_Ctrl_Get_Trim_Parity"
.LASF20:
	.string	"clkInvert"
.LASF276:
	.string	"bl_flash_read"
.LASF277:
	.string	"bl_flash_write"
.LASF3:
	.string	"signed char"
.LASF220:
	.string	"ROM_API_INDEX_SF_Cfg_Init_Ext_Flash_Gpio"
.LASF106:
	.string	"ROM_API_INDEX_AON_Power_Off_SFReg"
.LASF9:
	.string	"short unsigned int"
.LASF67:
	.string	"readRegCmd"
.LASF279:
	.string	"memcpy"
.LASF235:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_Key_BE"
.LASF198:
	.string	"ROM_API_INDEX_SFlash_Program"
.LASF81:
	.string	"timeEsector"
.LASF76:
	.string	"burstWrapData"
.LASF261:
	.string	"ROM_API_INDEX_XIP_SFlash_Erase_With_Lock"
.LASF209:
	.string	"ROM_API_INDEX_SFlash_IDbus_Read_Enable"
.LASF66:
	.string	"busyReadRegLen"
.LASF30:
	.string	"pageSize"
.LASF278:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF169:
	.string	"ROM_API_INDEX_PDS_Reset"
.LASF100:
	.string	"ROM_API_INDEX_AON_Power_Off_BG"
.LASF225:
	.string	"ROM_API_INDEX_SF_Cfg_Init_Flash_Gpio"
.LASF153:
	.string	"ROM_API_INDEX_HBN_Set_Ldo11_Rt_Vout"
.LASF75:
	.string	"burstWrapDataMode"
.LASF245:
	.string	"ROM_API_INDEX_SF_Ctrl_Icache2_Set"
.LASF28:
	.string	"qpiJedecIdCmdDmyClk"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_flash.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
