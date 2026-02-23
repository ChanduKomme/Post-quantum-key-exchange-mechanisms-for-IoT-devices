	.file	"bl602_sf_cfg_ext.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sf_cfg_ext.c"
	.section	.tcm_const,"a"
	.align	2
	.type	flashCfg_FM_25Q08, @object
	.size	flashCfg_FM_25Q08, 84
flashCfg_FM_25Q08:
	.byte	4
	.byte	1
	.byte	1
	.byte	63
	.byte	102
	.byte	-103
	.byte	-1
	.byte	3
	.byte	-97
	.byte	0
	.byte	-97
	.byte	0
	.byte	4
	.byte	-56
	.half	256
	.byte	-57
	.byte	32
	.byte	82
	.byte	-40
	.byte	6
	.byte	2
	.byte	50
	.byte	0
	.byte	11
	.byte	1
	.byte	11
	.byte	1
	.byte	59
	.byte	1
	.byte	-69
	.byte	0
	.byte	107
	.byte	1
	.byte	-21
	.byte	2
	.byte	-21
	.byte	2
	.byte	2
	.byte	80
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	1
	.byte	-85
	.byte	1
	.base64	"BTUA"
	.zero	1
	.base64	"AQEA"
	.zero	1
	.byte	56
	.byte	-1
	.byte	32
	.byte	-1
	.byte	119
	.byte	3
	.byte	2
	.byte	64
	.byte	119
	.byte	3
	.byte	2
	.byte	-16
	.half	300
	.half	1200
	.half	1200
	.half	5
	.half	20000
	.byte	20
	.byte	0
	.align	2
	.type	flashInfos, @object
	.size	flashInfos, 12
flashInfos:
	.word	1327265
	.zero	4
	.word	flashCfg_FM_25Q08
	.section	.rodata
	.align	2
.LC0:
	.string	"FCFG"
	.section	.tcm_code,"ax",@progbits
	.align	1
	.globl	SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext
	.type	SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext, @function
SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sf_cfg_ext.c"
	.loc 1 206 1
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	ra,140(sp)
	sw	s0,136(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sw	a0,-132(s0)
	sw	a1,-136(s0)
	.loc 1 211 7
	lw	a5,-132(s0)
	bne	a5,zero,.L2
	.loc 1 212 9
	addi	a5,s0,-120
	li	a2,92
	mv	a1,a5
	li	a5,587202560
	addi	a0,a5,8
	call	XIP_SFlash_Read_Via_Cache_Need_Lock
	.loc 1 213 12
	addi	a4,s0,-120
	li	a2,4
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	mv	a0,a4
	call	BL602_MemCmp
	mv	a5,a0
	.loc 1 213 11 discriminator 1
	bne	a5,zero,.L3
	.loc 1 214 17
	addi	a5,s0,-120
	addi	a5,a5,4
	li	a1,84
	mv	a0,a5
	call	BFLB_Soft_CRC32
	sw	a0,-24(s0)
	.loc 1 215 17
	addi	a5,s0,-120
	addi	a5,a5,88
	sw	a5,-28(s0)
	.loc 1 216 16
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 216 15
	lw	a4,-24(s0)
	bne	a4,a5,.L3
	.loc 1 217 17
	addi	a5,s0,-120
	addi	a5,a5,4
	li	a2,84
	mv	a1,a5
	lw	a0,-136(s0)
	call	BL602_MemCpy_Fast
	.loc 1 218 24
	li	a5,0
	j	.L9
.L2:
	.loc 1 222 12
	lw	a1,-136(s0)
	lw	a0,-132(s0)
	call	SF_Cfg_Get_Flash_Cfg_Need_Lock
	mv	a5,a0
	.loc 1 222 11 discriminator 1
	beq	a5,zero,.L5
	.loc 1 223 20
	li	a5,0
	j	.L9
.L5:
	.loc 1 225 14
	sw	zero,-20(s0)
	.loc 1 225 9
	j	.L6
.L8:
	.loc 1 226 29
	lui	a5,%hi(flashInfos)
	addi	a3,a5,%lo(flashInfos)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 226 15
	lw	a4,-132(s0)
	bne	a4,a5,.L7
	.loc 1 227 58
	lui	a5,%hi(flashCfg_FM_25Q08)
	addi	a5,a5,%lo(flashCfg_FM_25Q08)
	.loc 1 227 17
	li	a2,84
	mv	a1,a5
	lw	a0,-136(s0)
	call	BL602_MemCpy_Fast
	.loc 1 228 24
	li	a5,0
	j	.L9
.L7:
	.loc 1 225 61 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L6:
	.loc 1 225 18 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L8
.L3:
	.loc 1 233 12
	li	a5,1
.L9:
	.loc 1 234 1
	mv	a0,a5
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext, .-SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext
	.align	1
	.globl	SF_Cfg_Flash_Identify_Ext
	.type	SF_Cfg_Flash_Identify_Ext, @function
SF_Cfg_Flash_Identify_Ext:
.LFB9:
	.loc 1 250 1
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
	sw	a4,-48(s0)
	sb	a5,-33(s0)
	mv	a5,a3
	sb	a5,-34(s0)
	.loc 1 251 14
	sw	zero,-24(s0)
	.loc 1 252 14
	sw	zero,-20(s0)
	.loc 1 253 14
	sw	zero,-28(s0)
	.loc 1 255 9
	lbu	a3,-34(s0)
	lbu	a5,-33(s0)
	lw	a4,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	SF_Cfg_Flash_Identify
	sw	a0,-28(s0)
	.loc 1 256 24
	lw	a5,-28(s0)
	.loc 1 256 7
	bge	a5,zero,.L11
	.loc 1 257 16
	lw	a5,-28(s0)
	j	.L12
.L11:
	.loc 1 260 11
	lw	a4,-28(s0)
	li	a5,16777216
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 261 10
	sw	zero,-20(s0)
	.loc 1 261 5
	j	.L13
.L16:
	.loc 1 262 25
	lui	a5,%hi(flashInfos)
	addi	a3,a5,%lo(flashInfos)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 262 11
	lw	a4,-24(s0)
	bne	a4,a5,.L14
	.loc 1 263 54
	lui	a5,%hi(flashCfg_FM_25Q08)
	addi	a5,a5,%lo(flashCfg_FM_25Q08)
	.loc 1 263 13
	li	a2,84
	mv	a1,a5
	lw	a0,-48(s0)
	call	BL602_MemCpy_Fast
	.loc 1 264 13
	j	.L15
.L14:
	.loc 1 261 57 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L13:
	.loc 1 261 14 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L16
.L15:
	.loc 1 267 7
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L17
	.loc 1 268 16
	lw	a5,-24(s0)
	j	.L12
.L17:
	.loc 1 270 23
	lw	a4,-24(s0)
	li	a5,-2147483648
	or	a5,a4,a5
.L12:
	.loc 1 272 1
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
	.size	SF_Cfg_Flash_Identify_Ext, .-SF_Cfg_Flash_Identify_Ext
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_ctrl.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_cfg.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/soft_crc/softcrc.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_xip_sflash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x764
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x11
	.4byte	.LASF122
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
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x6
	.4byte	.LASF8
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x66
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0xc
	.4byte	0x4e
	.4byte	0xa5
	.uleb128 0xd
	.4byte	0x8e
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x7
	.4byte	0xb3
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0xa
	.4byte	0x2b
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xd9
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xba
	.uleb128 0xc
	.4byte	0x4e
	.4byte	0xf5
	.uleb128 0xd
	.4byte	0x8e
	.byte	0x5b
	.byte	0
	.uleb128 0xa
	.4byte	0x2b
	.byte	0x4
	.byte	0x62
	.byte	0xe
	.4byte	0x120
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	0x2b
	.byte	0x4
	.byte	0x7d
	.byte	0xe
	.4byte	0x13f
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x2b
	.byte	0x4
	.byte	0x8f
	.byte	0xe
	.4byte	0x15e
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.byte	0x54
	.byte	0x5
	.byte	0x39
	.4byte	0x50f
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3a
	.byte	0xd
	.4byte	0x4e
	.byte	0
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3b
	.byte	0xd
	.4byte	0x4e
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3c
	.byte	0xd
	.4byte	0x4e
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3d
	.byte	0xd
	.4byte	0x4e
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x5
	.byte	0x3e
	.byte	0xd
	.4byte	0x4e
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x5
	.byte	0x3f
	.byte	0xd
	.4byte	0x4e
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x5
	.byte	0x40
	.byte	0xd
	.4byte	0x4e
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x5
	.byte	0x41
	.byte	0xd
	.4byte	0x4e
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x5
	.byte	0x42
	.byte	0xd
	.4byte	0x4e
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x5
	.byte	0x43
	.byte	0xd
	.4byte	0x4e
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x5
	.byte	0x44
	.byte	0xd
	.4byte	0x4e
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x5
	.byte	0x45
	.byte	0xd
	.4byte	0x4e
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x5
	.byte	0x46
	.byte	0xd
	.4byte	0x4e
	.byte	0xc
	.uleb128 0x10
	.string	"mid"
	.byte	0x5
	.byte	0x47
	.byte	0xd
	.4byte	0x4e
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x5
	.byte	0x48
	.byte	0xe
	.4byte	0x5a
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x5
	.byte	0x49
	.byte	0xd
	.4byte	0x4e
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x5
	.byte	0x4a
	.byte	0xd
	.4byte	0x4e
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x5
	.byte	0x4b
	.byte	0xd
	.4byte	0x4e
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x5
	.byte	0x4c
	.byte	0xd
	.4byte	0x4e
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x5
	.byte	0x4d
	.byte	0xd
	.4byte	0x4e
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x5
	.byte	0x4e
	.byte	0xd
	.4byte	0x4e
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x5
	.byte	0x4f
	.byte	0xd
	.4byte	0x4e
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x5
	.byte	0x50
	.byte	0xd
	.4byte	0x4e
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x5
	.byte	0x51
	.byte	0xd
	.4byte	0x4e
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x5
	.byte	0x52
	.byte	0xd
	.4byte	0x4e
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x5
	.byte	0x53
	.byte	0xd
	.4byte	0x4e
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x5
	.byte	0x54
	.byte	0xd
	.4byte	0x4e
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x5
	.byte	0x55
	.byte	0xd
	.4byte	0x4e
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x5
	.byte	0x56
	.byte	0xd
	.4byte	0x4e
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x5
	.byte	0x57
	.byte	0xd
	.4byte	0x4e
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x5
	.byte	0x58
	.byte	0xd
	.4byte	0x4e
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.4byte	0x4e
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x5
	.byte	0x5a
	.byte	0xd
	.4byte	0x4e
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x5
	.byte	0x5b
	.byte	0xd
	.4byte	0x4e
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x5
	.byte	0x5c
	.byte	0xd
	.4byte	0x4e
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x5
	.byte	0x5d
	.byte	0xd
	.4byte	0x4e
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x5
	.byte	0x5e
	.byte	0xd
	.4byte	0x4e
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x5
	.byte	0x5f
	.byte	0xd
	.4byte	0x4e
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x5
	.byte	0x60
	.byte	0xd
	.4byte	0x4e
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x5
	.byte	0x61
	.byte	0xd
	.4byte	0x4e
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x5
	.byte	0x62
	.byte	0xd
	.4byte	0x4e
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x5
	.byte	0x63
	.byte	0xd
	.4byte	0x4e
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x5
	.byte	0x64
	.byte	0xd
	.4byte	0x4e
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x5
	.byte	0x65
	.byte	0xd
	.4byte	0x4e
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x5
	.byte	0x66
	.byte	0xd
	.4byte	0x4e
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x5
	.byte	0x67
	.byte	0xd
	.4byte	0x4e
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x5
	.byte	0x68
	.byte	0xd
	.4byte	0x4e
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x5
	.byte	0x69
	.byte	0xd
	.4byte	0x4e
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0x4e
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x5
	.byte	0x6b
	.byte	0xd
	.4byte	0x4e
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x5
	.byte	0x6c
	.byte	0xd
	.4byte	0x4e
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x5
	.byte	0x6d
	.byte	0xd
	.4byte	0x95
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x5
	.byte	0x6e
	.byte	0xd
	.4byte	0x95
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x5
	.byte	0x6f
	.byte	0xd
	.4byte	0x4e
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x5
	.byte	0x70
	.byte	0xd
	.4byte	0x4e
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x5
	.byte	0x71
	.byte	0xd
	.4byte	0x4e
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x5
	.byte	0x72
	.byte	0xd
	.4byte	0x4e
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x5
	.byte	0x73
	.byte	0xd
	.4byte	0x4e
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x5
	.byte	0x74
	.byte	0xd
	.4byte	0x4e
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x5
	.byte	0x75
	.byte	0xd
	.4byte	0x4e
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x5
	.byte	0x76
	.byte	0xd
	.4byte	0x4e
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x5
	.byte	0x77
	.byte	0xd
	.4byte	0x4e
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x5
	.byte	0x78
	.byte	0xd
	.4byte	0x4e
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x5
	.byte	0x79
	.byte	0xd
	.4byte	0x4e
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x5
	.byte	0x7a
	.byte	0xd
	.4byte	0x4e
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x5
	.byte	0x7b
	.byte	0xe
	.4byte	0x5a
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x5
	.byte	0x7c
	.byte	0xe
	.4byte	0x5a
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x5
	.byte	0x7d
	.byte	0xe
	.4byte	0x5a
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x5
	.byte	0x7e
	.byte	0xe
	.4byte	0x5a
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x5
	.byte	0x7f
	.byte	0xe
	.4byte	0x5a
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x5
	.byte	0x80
	.byte	0xd
	.4byte	0x4e
	.byte	0x52
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x5
	.byte	0x81
	.byte	0xd
	.4byte	0x4e
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.4byte	.LASF102
	.byte	0x5
	.byte	0x82
	.byte	0x1b
	.4byte	0x15e
	.uleb128 0xe
	.4byte	0x50f
	.uleb128 0x7
	.4byte	0x50f
	.uleb128 0x7
	.4byte	0x6d
	.uleb128 0xf
	.byte	0xc
	.byte	0x1
	.byte	0x3d
	.4byte	0x55a
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x1
	.byte	0x3e
	.byte	0xe
	.4byte	0x6d
	.byte	0
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x1
	.byte	0x3f
	.byte	0xb
	.4byte	0xae
	.byte	0x4
	.uleb128 0x10
	.string	"cfg"
	.byte	0x1
	.byte	0x40
	.byte	0x1f
	.4byte	0x55a
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	0x51b
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0x1
	.byte	0x41
	.byte	0x2
	.4byte	0x52a
	.uleb128 0xe
	.4byte	0x55f
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0x48
	.byte	0x48
	.4byte	0x51b
	.uleb128 0x5
	.byte	0x3
	.4byte	flashCfg_FM_25Q08
	.uleb128 0xc
	.4byte	0x56b
	.4byte	0x591
	.uleb128 0xd
	.4byte	0x8e
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x581
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0xaa
	.byte	0x42
	.4byte	0x591
	.uleb128 0x5
	.byte	0x3
	.4byte	flashInfos
	.uleb128 0x8
	.4byte	.LASF108
	.byte	0x6
	.byte	0x64
	.byte	0xa
	.4byte	0x6d
	.4byte	0x5d1
	.uleb128 0x2
	.4byte	0x4e
	.uleb128 0x2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	0x4e
	.uleb128 0x2
	.4byte	0x520
	.byte	0
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x6
	.byte	0x61
	.byte	0xd
	.4byte	0xd9
	.4byte	0x5ec
	.uleb128 0x2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	0x520
	.byte	0
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x3
	.byte	0x8c
	.byte	0x7
	.4byte	0xac
	.4byte	0x60c
	.uleb128 0x2
	.4byte	0xac
	.uleb128 0x2
	.4byte	0x60c
	.uleb128 0x2
	.4byte	0x6d
	.byte	0
	.uleb128 0x7
	.4byte	0x611
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF111
	.byte	0x7
	.byte	0x7
	.byte	0xa
	.4byte	0x6d
	.4byte	0x62d
	.uleb128 0x2
	.4byte	0xac
	.uleb128 0x2
	.4byte	0x6d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF112
	.byte	0x3
	.byte	0x8f
	.byte	0x5
	.4byte	0x87
	.4byte	0x64d
	.uleb128 0x2
	.4byte	0x60c
	.uleb128 0x2
	.4byte	0x60c
	.uleb128 0x2
	.4byte	0x6d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF113
	.byte	0x8
	.byte	0x50
	.byte	0xd
	.4byte	0xd9
	.4byte	0x66d
	.uleb128 0x2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	0x66d
	.uleb128 0x2
	.4byte	0x6d
	.byte	0
	.uleb128 0x7
	.4byte	0x4e
	.uleb128 0x15
	.4byte	.LASF123
	.byte	0x1
	.byte	0xf8
	.byte	0x30
	.4byte	0x6d
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fb
	.uleb128 0x5
	.4byte	.LASF114
	.byte	0xf8
	.byte	0x52
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x5
	.4byte	.LASF115
	.byte	0xf9
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF116
	.byte	0xf9
	.byte	0x20
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF117
	.byte	0xf9
	.byte	0x34
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x5
	.4byte	.LASF118
	.byte	0xf9
	.byte	0x58
	.4byte	0x520
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0xfb
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"i"
	.byte	0xfc
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"ret"
	.byte	0xfd
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x1
	.byte	0xcd
	.byte	0x33
	.4byte	0xd9
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF120
	.byte	0xcd
	.byte	0x5f
	.4byte	0x6d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x5
	.4byte	.LASF118
	.byte	0xcd
	.byte	0x7c
	.4byte	0x520
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x9
	.string	"i"
	.byte	0xcf
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"buf"
	.byte	0xd0
	.byte	0xd
	.4byte	0xe5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x9
	.string	"crc"
	.byte	0xd1
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0xd1
	.byte	0x13
	.4byte	0x525
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
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
	.uleb128 0xa
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
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
	.4byte	0x24
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF91:
	.string	"deBurstWrapCmd"
.LASF48:
	.string	"blk64EraseCmd"
.LASF56:
	.string	"qpiFrDmyClk"
.LASF68:
	.string	"writeVregEnableCmd"
.LASF111:
	.string	"BFLB_Soft_CRC32"
.LASF76:
	.string	"wrEnableReadRegLen"
.LASF59:
	.string	"fastReadDioCmd"
.LASF109:
	.string	"SF_Cfg_Get_Flash_Cfg_Need_Lock"
.LASF105:
	.string	"Flash_Info_t"
.LASF72:
	.string	"wrEnableBit"
.LASF96:
	.string	"timeE32k"
.LASF12:
	.string	"long long unsigned int"
.LASF57:
	.string	"fastReadDoCmd"
.LASF34:
	.string	"clkInvert"
.LASF32:
	.string	"cReadSupport"
.LASF118:
	.string	"pFlashCfg"
.LASF93:
	.string	"deBurstWrapDataMode"
.LASF90:
	.string	"burstWrapData"
.LASF71:
	.string	"busyIndex"
.LASF95:
	.string	"timeEsector"
.LASF83:
	.string	"enterQpi"
.LASF6:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF39:
	.string	"jedecIdCmd"
.LASF42:
	.string	"qpiJedecIdCmdDmyClk"
.LASF87:
	.string	"burstWrapCmd"
.LASF19:
	.string	"BL_Err_Type"
.LASF5:
	.string	"long int"
.LASF26:
	.string	"SF_CTRL_ADDR_2_LINES"
.LASF102:
	.string	"SPI_Flash_Cfg_Type"
.LASF79:
	.string	"releasePowerDown"
.LASF65:
	.string	"qpiFastReadQioCmd"
.LASF113:
	.string	"XIP_SFlash_Read_Via_Cache_Need_Lock"
.LASF121:
	.string	"pCrc"
.LASF100:
	.string	"pdDelay"
.LASF25:
	.string	"SF_CTRL_ADDR_1_LINE"
.LASF84:
	.string	"exitQpi"
.LASF33:
	.string	"clkDelay"
.LASF112:
	.string	"BL602_MemCmp"
.LASF61:
	.string	"fastReadQoCmd"
.LASF18:
	.string	"TIMEOUT"
.LASF89:
	.string	"burstWrapDataMode"
.LASF116:
	.string	"flashPinCfg"
.LASF13:
	.string	"unsigned int"
.LASF114:
	.string	"callFromFlash"
.LASF94:
	.string	"deBurstWrapData"
.LASF36:
	.string	"resetCmd"
.LASF11:
	.string	"long unsigned int"
.LASF101:
	.string	"qeData"
.LASF104:
	.string	"name"
.LASF43:
	.string	"sectorSize"
.LASF41:
	.string	"qpiJedecIdCmd"
.LASF9:
	.string	"short unsigned int"
.LASF50:
	.string	"pageProgramCmd"
.LASF20:
	.string	"SF_CTRL_NIO_MODE"
.LASF75:
	.string	"wrEnableWriteRegLen"
.LASF115:
	.string	"autoScan"
.LASF123:
	.string	"SF_Cfg_Flash_Identify_Ext"
.LASF108:
	.string	"SF_Cfg_Flash_Identify"
.LASF82:
	.string	"writeRegCmd"
.LASF31:
	.string	"ioMode"
.LASF67:
	.string	"qpiPageProgramCmd"
.LASF73:
	.string	"qeBit"
.LASF55:
	.string	"qpiFastReadCmd"
.LASF66:
	.string	"qpiFrQioDmyClk"
.LASF38:
	.string	"resetCreadCmdSize"
.LASF78:
	.string	"qeReadRegLen"
.LASF24:
	.string	"SF_CTRL_QIO_MODE"
.LASF80:
	.string	"busyReadRegLen"
.LASF17:
	.string	"ERROR"
.LASF27:
	.string	"SF_CTRL_ADDR_4_LINES"
.LASF8:
	.string	"uint16_t"
.LASF124:
	.string	"SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext"
.LASF85:
	.string	"cReadMode"
.LASF92:
	.string	"deBurstWrapCmdDmyClk"
.LASF110:
	.string	"BL602_MemCpy_Fast"
.LASF74:
	.string	"busyBit"
.LASF77:
	.string	"qeWriteRegLen"
.LASF35:
	.string	"resetEnCmd"
.LASF119:
	.string	"jdecId"
.LASF2:
	.string	"unsigned char"
.LASF70:
	.string	"qeIndex"
.LASF4:
	.string	"short int"
.LASF107:
	.string	"flashInfos"
.LASF53:
	.string	"fastReadCmd"
.LASF44:
	.string	"pageSize"
.LASF49:
	.string	"writeEnableCmd"
.LASF64:
	.string	"frQioDmyClk"
.LASF58:
	.string	"frDoDmyClk"
.LASF52:
	.string	"qppAddrMode"
.LASF51:
	.string	"qpageProgramCmd"
.LASF22:
	.string	"SF_CTRL_QO_MODE"
.LASF10:
	.string	"uint32_t"
.LASF21:
	.string	"SF_CTRL_DO_MODE"
.LASF103:
	.string	"jedecID"
.LASF37:
	.string	"resetCreadCmd"
.LASF14:
	.string	"long double"
.LASF15:
	.string	"char"
.LASF69:
	.string	"wrEnableIndex"
.LASF60:
	.string	"frDioDmyClk"
.LASF54:
	.string	"frDmyClk"
.LASF97:
	.string	"timeE64k"
.LASF40:
	.string	"jedecIdCmdDmyClk"
.LASF28:
	.string	"SF_CTRL_DATA_1_LINE"
.LASF120:
	.string	"flashID"
.LASF86:
	.string	"cRExit"
.LASF122:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF23:
	.string	"SF_CTRL_DIO_MODE"
.LASF47:
	.string	"blk32EraseCmd"
.LASF63:
	.string	"fastReadQioCmd"
.LASF45:
	.string	"chipEraseCmd"
.LASF99:
	.string	"timeCe"
.LASF29:
	.string	"SF_CTRL_DATA_2_LINES"
.LASF106:
	.string	"flashCfg_FM_25Q08"
.LASF88:
	.string	"burstWrapCmdDmyClk"
.LASF30:
	.string	"SF_CTRL_DATA_4_LINES"
.LASF7:
	.string	"uint8_t"
.LASF16:
	.string	"SUCCESS"
.LASF117:
	.string	"restoreDefault"
.LASF98:
	.string	"timePagePgm"
.LASF81:
	.string	"readRegCmd"
.LASF46:
	.string	"sectorEraseCmd"
.LASF62:
	.string	"frQoDmyClk"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sf_cfg_ext.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
