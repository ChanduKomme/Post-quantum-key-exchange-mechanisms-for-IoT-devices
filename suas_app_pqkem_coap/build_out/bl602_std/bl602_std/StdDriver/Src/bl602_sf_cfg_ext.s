	.file	"bl602_sf_cfg_ext.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"FCFG"
	.section	.tcm_code,"ax",@progbits
	.align	1
	.globl	SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext
	.type	SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext, @function
SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext:
.LVL0:
.LFB8:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
.LM5:
.LM6:
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	s1,100(sp)
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.LM7:
	mv	s1,a1
.LM8:
	bne	a0,zero,.L2
.LM9:
	li	a0,587202560
.LVL1:
.LM10:
	li	a2,92
	addi	a1,sp,4
.LVL2:
.LM11:
	addi	a0,a0,8
	call	XIP_SFlash_Read_Via_Cache_Need_Lock
.LVL3:
.LM12:
.LM13:
	li	a2,4
	lui	a1,%hi(.LC0)
	addi	a1,a1,%lo(.LC0)
	add	a0,sp,a2
	call	BL602_MemCmp
.LVL4:
.LM14:
	beq	a0,zero,.L3
.L5:
.LM15:
	li	a0,1
.L4:
.LM16:
	lw	ra,108(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	lw	s1,100(sp)
	.cfi_restore 9
.LVL5:
.LM17:
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
.LVL6:
.L3:
	.cfi_restore_state
.LM18:
.LM19:
	li	a1,84
	addi	a0,sp,8
	call	BFLB_Soft_CRC32
.LVL7:
.LM20:
.LM21:
.LM22:
	lw	a5,92(sp)
	bne	a5,a0,.L5
.LM23:
	li	a2,84
	addi	a1,sp,8
.LVL8:
.L11:
.LM24:
	mv	a0,s1
	call	BL602_MemCpy_Fast
.LVL9:
.LM25:
.LM26:
	j	.L6
.LVL10:
.L2:
.LM27:
	mv	s0,a0
.LM28:
.LM29:
	call	SF_Cfg_Get_Flash_Cfg_Need_Lock
.LVL11:
.LM30:
	beq	a0,zero,.L9
.LVL12:
.L6:
.LM31:
	li	a0,0
	j	.L4
.LVL13:
.L9:
.LM32:
.LM33:
.LM34:
	li	a5,1327104
	addi	a5,a5,161
	bne	s0,a5,.L5
.LM35:
	lui	a1,%hi(flashCfg_FM_25Q08)
	li	a2,84
	addi	a1,a1,%lo(flashCfg_FM_25Q08)
	j	.L11
	.cfi_endproc
.LFE8:
	.size	SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext, .-SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext
	.align	1
	.globl	SF_Cfg_Flash_Identify_Ext
	.type	SF_Cfg_Flash_Identify_Ext, @function
SF_Cfg_Flash_Identify_Ext:
.LVL14:
.LFB9:
.LM36:
	.cfi_startproc
.LM37:
.LM38:
.LM39:
.LM40:
.LM41:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
.LM42:
	mv	s0,a4
.LM43:
	call	SF_Cfg_Flash_Identify
.LVL15:
.LM44:
.LM45:
	blt	a0,zero,.L12
.LM46:
.LM47:
	slli	a0,a0,8
.LVL16:
.LM48:
	li	a5,1327104
.LM49:
	srli	a0,a0,8
.LVL17:
.LM50:
.LM51:
.LM52:
.LM53:
	addi	a5,a5,161
	bne	a0,a5,.L12
.LM54:
	lui	a1,%hi(flashCfg_FM_25Q08)
	li	a2,84
	addi	a1,a1,%lo(flashCfg_FM_25Q08)
	mv	a0,s0
.LVL18:
.LM55:
	call	BL602_MemCpy_Fast
.LVL19:
.LM56:
.LM57:
.LM58:
.LM59:
	li	a0,-2146156544
	addi	a0,a0,161
.LVL20:
.L12:
.LM60:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL21:
.LM61:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	SF_Cfg_Flash_Identify_Ext, .-SF_Cfg_Flash_Identify_Ext
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
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x884
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL12
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x74
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x87
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.4byte	0x5c
	.4byte	0xa5
	.uleb128 0xd
	.4byte	0x32
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x16
	.byte	0x4
	.uleb128 0x8
	.4byte	0xb3
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0xb
	.4byte	0x39
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xd9
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xba
	.uleb128 0xc
	.4byte	0x5c
	.4byte	0xf5
	.uleb128 0xd
	.4byte	0x32
	.byte	0x5b
	.byte	0
	.uleb128 0xb
	.4byte	0x39
	.byte	0x4
	.byte	0x62
	.byte	0xe
	.4byte	0x120
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	0x39
	.byte	0x4
	.byte	0x7d
	.byte	0xe
	.4byte	0x13f
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x39
	.byte	0x4
	.byte	0x8f
	.byte	0xe
	.4byte	0x15e
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.byte	0x54
	.byte	0x5
	.byte	0x39
	.4byte	0x50f
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3a
	.byte	0xd
	.4byte	0x5c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3b
	.byte	0xd
	.4byte	0x5c
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3c
	.byte	0xd
	.4byte	0x5c
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3d
	.byte	0xd
	.4byte	0x5c
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x5
	.byte	0x3e
	.byte	0xd
	.4byte	0x5c
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x5
	.byte	0x3f
	.byte	0xd
	.4byte	0x5c
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x5
	.byte	0x40
	.byte	0xd
	.4byte	0x5c
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x5
	.byte	0x41
	.byte	0xd
	.4byte	0x5c
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x5
	.byte	0x42
	.byte	0xd
	.4byte	0x5c
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x5
	.byte	0x43
	.byte	0xd
	.4byte	0x5c
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x5
	.byte	0x44
	.byte	0xd
	.4byte	0x5c
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x5
	.byte	0x45
	.byte	0xd
	.4byte	0x5c
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x5
	.byte	0x46
	.byte	0xd
	.4byte	0x5c
	.byte	0xc
	.uleb128 0x11
	.string	"mid"
	.byte	0x5
	.byte	0x47
	.byte	0xd
	.4byte	0x5c
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x5
	.byte	0x48
	.byte	0xe
	.4byte	0x68
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x5
	.byte	0x49
	.byte	0xd
	.4byte	0x5c
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x5
	.byte	0x4a
	.byte	0xd
	.4byte	0x5c
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x5
	.byte	0x4b
	.byte	0xd
	.4byte	0x5c
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x5
	.byte	0x4c
	.byte	0xd
	.4byte	0x5c
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x5
	.byte	0x4d
	.byte	0xd
	.4byte	0x5c
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x5
	.byte	0x4e
	.byte	0xd
	.4byte	0x5c
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x5
	.byte	0x4f
	.byte	0xd
	.4byte	0x5c
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x5
	.byte	0x50
	.byte	0xd
	.4byte	0x5c
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x5
	.byte	0x51
	.byte	0xd
	.4byte	0x5c
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x5
	.byte	0x52
	.byte	0xd
	.4byte	0x5c
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x5
	.byte	0x53
	.byte	0xd
	.4byte	0x5c
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x5
	.byte	0x54
	.byte	0xd
	.4byte	0x5c
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x5
	.byte	0x55
	.byte	0xd
	.4byte	0x5c
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x5
	.byte	0x56
	.byte	0xd
	.4byte	0x5c
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x5
	.byte	0x57
	.byte	0xd
	.4byte	0x5c
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x5
	.byte	0x58
	.byte	0xd
	.4byte	0x5c
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.4byte	0x5c
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x5
	.byte	0x5a
	.byte	0xd
	.4byte	0x5c
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x5
	.byte	0x5b
	.byte	0xd
	.4byte	0x5c
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x5
	.byte	0x5c
	.byte	0xd
	.4byte	0x5c
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x5
	.byte	0x5d
	.byte	0xd
	.4byte	0x5c
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x5
	.byte	0x5e
	.byte	0xd
	.4byte	0x5c
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x5
	.byte	0x5f
	.byte	0xd
	.4byte	0x5c
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x5
	.byte	0x60
	.byte	0xd
	.4byte	0x5c
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x5
	.byte	0x61
	.byte	0xd
	.4byte	0x5c
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x5
	.byte	0x62
	.byte	0xd
	.4byte	0x5c
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x5
	.byte	0x63
	.byte	0xd
	.4byte	0x5c
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x5
	.byte	0x64
	.byte	0xd
	.4byte	0x5c
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x5
	.byte	0x65
	.byte	0xd
	.4byte	0x5c
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x5
	.byte	0x66
	.byte	0xd
	.4byte	0x5c
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x5
	.byte	0x67
	.byte	0xd
	.4byte	0x5c
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x5
	.byte	0x68
	.byte	0xd
	.4byte	0x5c
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x5
	.byte	0x69
	.byte	0xd
	.4byte	0x5c
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0x5c
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x5
	.byte	0x6b
	.byte	0xd
	.4byte	0x5c
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x5
	.byte	0x6c
	.byte	0xd
	.4byte	0x5c
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
	.4byte	0x5c
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x5
	.byte	0x70
	.byte	0xd
	.4byte	0x5c
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x5
	.byte	0x71
	.byte	0xd
	.4byte	0x5c
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x5
	.byte	0x72
	.byte	0xd
	.4byte	0x5c
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x5
	.byte	0x73
	.byte	0xd
	.4byte	0x5c
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x5
	.byte	0x74
	.byte	0xd
	.4byte	0x5c
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x5
	.byte	0x75
	.byte	0xd
	.4byte	0x5c
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x5
	.byte	0x76
	.byte	0xd
	.4byte	0x5c
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x5
	.byte	0x77
	.byte	0xd
	.4byte	0x5c
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x5
	.byte	0x78
	.byte	0xd
	.4byte	0x5c
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x5
	.byte	0x79
	.byte	0xd
	.4byte	0x5c
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x5
	.byte	0x7a
	.byte	0xd
	.4byte	0x5c
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x5
	.byte	0x7b
	.byte	0xe
	.4byte	0x68
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x5
	.byte	0x7c
	.byte	0xe
	.4byte	0x68
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x5
	.byte	0x7d
	.byte	0xe
	.4byte	0x68
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x5
	.byte	0x7e
	.byte	0xe
	.4byte	0x68
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x5
	.byte	0x7f
	.byte	0xe
	.4byte	0x68
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x5
	.byte	0x80
	.byte	0xd
	.4byte	0x5c
	.byte	0x52
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x5
	.byte	0x81
	.byte	0xd
	.4byte	0x5c
	.byte	0x53
	.byte	0
	.uleb128 0x7
	.4byte	.LASF102
	.byte	0x5
	.byte	0x82
	.byte	0x1b
	.4byte	0x15e
	.uleb128 0xe
	.4byte	0x50f
	.uleb128 0x8
	.4byte	0x50f
	.uleb128 0x8
	.4byte	0x7b
	.uleb128 0x10
	.byte	0xc
	.byte	0x1
	.byte	0x3d
	.4byte	0x55a
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x1
	.byte	0x3e
	.byte	0xe
	.4byte	0x7b
	.byte	0
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x1
	.byte	0x3f
	.byte	0xb
	.4byte	0xae
	.byte	0x4
	.uleb128 0x11
	.string	"cfg"
	.byte	0x1
	.byte	0x40
	.byte	0x1f
	.4byte	0x55a
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x51b
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0x1
	.byte	0x41
	.byte	0x2
	.4byte	0x52a
	.uleb128 0xe
	.4byte	0x55f
	.uleb128 0x17
	.4byte	.LASF119
	.byte	0x1
	.byte	0x48
	.byte	0x48
	.4byte	0x51b
	.uleb128 0x5
	.byte	0x3
	.4byte	flashCfg_FM_25Q08
	.uleb128 0xc
	.4byte	0x56b
	.4byte	0x592
	.uleb128 0xd
	.4byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x582
	.uleb128 0x18
	.4byte	.LASF122
	.byte	0x1
	.byte	0xaa
	.byte	0x42
	.4byte	0x592
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x6
	.byte	0x64
	.byte	0xa
	.4byte	0x7b
	.4byte	0x5cd
	.uleb128 0x2
	.4byte	0x5c
	.uleb128 0x2
	.4byte	0x7b
	.uleb128 0x2
	.4byte	0x7b
	.uleb128 0x2
	.4byte	0x5c
	.uleb128 0x2
	.4byte	0x520
	.byte	0
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x6
	.byte	0x61
	.byte	0xd
	.4byte	0xd9
	.4byte	0x5e8
	.uleb128 0x2
	.4byte	0x7b
	.uleb128 0x2
	.4byte	0x520
	.byte	0
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x3
	.byte	0x8c
	.byte	0x7
	.4byte	0xac
	.4byte	0x608
	.uleb128 0x2
	.4byte	0xac
	.uleb128 0x2
	.4byte	0x608
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0x8
	.4byte	0x60d
	.uleb128 0x19
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x7
	.byte	0x7
	.byte	0xa
	.4byte	0x7b
	.4byte	0x629
	.uleb128 0x2
	.4byte	0xac
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x3
	.byte	0x8f
	.byte	0x5
	.4byte	0x8e
	.4byte	0x649
	.uleb128 0x2
	.4byte	0x608
	.uleb128 0x2
	.4byte	0x608
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x8
	.byte	0x50
	.byte	0xd
	.4byte	0xd9
	.4byte	0x669
	.uleb128 0x2
	.4byte	0x7b
	.uleb128 0x2
	.4byte	0x669
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0x8
	.4byte	0x5c
	.uleb128 0x1a
	.4byte	.LASF123
	.byte	0x1
	.byte	0xf8
	.byte	0x30
	.4byte	0x7b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x784
	.uleb128 0x6
	.4byte	.LASF112
	.byte	0xf8
	.byte	0x52
	.4byte	0x5c
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x6
	.4byte	.LASF113
	.byte	0xf9
	.byte	0xe
	.4byte	0x7b
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x6
	.4byte	.LASF114
	.byte	0xf9
	.byte	0x20
	.4byte	0x7b
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0xf9
	.byte	0x34
	.4byte	0x5c
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x6
	.4byte	.LASF116
	.byte	0xf9
	.byte	0x58
	.4byte	0x520
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x12
	.4byte	.LASF117
	.byte	0xfb
	.byte	0xe
	.4byte	0x7b
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xf
	.string	"i"
	.byte	0xfc
	.4byte	0x7b
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0xf
	.string	"ret"
	.byte	0xfd
	.4byte	0x7b
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0xa
	.4byte	.LVL15
	.4byte	0x5a3
	.4byte	0x764
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x39
	.byte	0xa8
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xc
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xd
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x39
	.byte	0xa8
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL19
	.4byte	0x5e8
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	flashCfg_FM_25Q08
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x1
	.byte	0xcd
	.byte	0x33
	.4byte	0xd9
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF118
	.byte	0xcd
	.byte	0x5f
	.4byte	0x7b
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x6
	.4byte	.LASF116
	.byte	0xcd
	.byte	0x7c
	.4byte	0x520
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0xcf
	.byte	0xe
	.4byte	0x7b
	.byte	0
	.uleb128 0x1d
	.string	"buf"
	.byte	0x1
	.byte	0xd0
	.byte	0xd
	.4byte	0xe5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0xf
	.string	"crc"
	.byte	0xd1
	.4byte	0x7b
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x12
	.4byte	.LASF120
	.byte	0xd1
	.byte	0x13
	.4byte	0x525
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xa
	.4byte	.LVL3
	.4byte	0x649
	.4byte	0x824
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x23000008
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5c
	.byte	0
	.uleb128 0xa
	.4byte	.LVL4
	.4byte	0x629
	.4byte	0x847
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0xa
	.4byte	.LVL7
	.4byte	0x60e
	.4byte	0x862
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x54
	.byte	0
	.uleb128 0xa
	.4byte	.LVL9
	.4byte	0x5e8
	.4byte	0x876
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL11
	.4byte	0x5cd
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xa
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.section	.debug_loclists,"",@progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS4:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL15-1-.LVL14
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL15-1-.LVL14
	.uleb128 .LFE9-.LVL14
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x39
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0
.LLST5:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL15-1-.LVL14
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL15-1-.LVL14
	.uleb128 .LFE9-.LVL14
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL15-1-.LVL14
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL15-1-.LVL14
	.uleb128 .LFE9-.LVL14
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xc
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL15-1-.LVL14
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL15-1-.LVL14
	.uleb128 .LFE9-.LVL14
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xd
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x39
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0x19
	.uleb128 0x19
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL15-1-.LVL14
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL15-1-.LVL14
	.uleb128 .LVL21-.LVL14
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL21-.LVL14
	.uleb128 .LFE9-.LVL14
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xe
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 0x2
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0x13
.LLST9:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL17-.LVL14
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-.LVL14
	.uleb128 .LVL18-.LVL14
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS10:
	.uleb128 0x3
	.uleb128 0x18
.LLST10:
	.byte	0x8
	.4byte	.LVL14
	.uleb128 .LVL20-.LVL14
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 0x4
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0xc
.LLST11:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL15-.LVL14
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL14
	.uleb128 .LVL16-.LVL14
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0x1a
	.uleb128 0x1a
	.uleb128 0x1d
	.uleb128 0x1d
	.uleb128 0x1e
	.uleb128 0x1e
	.uleb128 0x1f
	.uleb128 0x1f
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL10-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL0
	.uleb128 .LVL11-1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL11-1-.LVL0
	.uleb128 .LVL12-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL12-.LVL0
	.uleb128 .LVL13-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.LVL0
	.uleb128 .LFE8-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0x10
	.uleb128 0x10
	.uleb128 0x11
	.uleb128 0x11
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL5-.LVL0
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL5-.LVL0
	.uleb128 .LVL6-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL0
	.uleb128 .LFE8-.LVL0
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS2:
	.uleb128 0x13
	.uleb128 0x17
.LLST2:
	.byte	0x8
	.4byte	.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS3:
	.uleb128 0x14
	.uleb128 0x17
.LLST3:
	.byte	0x8
	.4byte	.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
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
.LLRL12:
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
	.4byte	.LELT0-.LSLT0
.LSLT0:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf2
	.byte	0xd
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x5
	.4byte	.LASF1
	.4byte	.LASF125
	.4byte	.LASF126
	.4byte	.LASF127
	.4byte	.LASF128
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x9
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF129
	.byte	0x3
	.4byte	.LASF130
	.byte	0x4
	.4byte	.LASF131
	.byte	0x2
	.4byte	.LASF132
	.byte	0x2
	.4byte	.LASF133
	.byte	0x2
	.4byte	.LASF134
	.byte	0x2
	.4byte	.LASF135
	.byte	0x1
	.4byte	.LASF136
	.byte	0x2
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0xe4
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x1c
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x2b
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x6
	.byte	0x21
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x6
	.byte	0x11
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x13
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1e
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE8
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM36
	.byte	0x3
	.sleb128 249
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x1c
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x19
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x15
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x1a
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0x19
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE9
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF91:
	.string	"deBurstWrapCmd"
.LASF48:
	.string	"blk64EraseCmd"
.LASF56:
	.string	"qpiFrDmyClk"
.LASF68:
	.string	"writeVregEnableCmd"
.LASF109:
	.string	"BFLB_Soft_CRC32"
.LASF76:
	.string	"wrEnableReadRegLen"
.LASF59:
	.string	"fastReadDioCmd"
.LASF107:
	.string	"SF_Cfg_Get_Flash_Cfg_Need_Lock"
.LASF105:
	.string	"Flash_Info_t"
.LASF72:
	.string	"wrEnableBit"
.LASF96:
	.string	"timeE32k"
.LASF2:
	.string	"long long unsigned int"
.LASF57:
	.string	"fastReadDoCmd"
.LASF34:
	.string	"clkInvert"
.LASF32:
	.string	"cReadSupport"
.LASF116:
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
.LASF8:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF39:
	.string	"jedecIdCmd"
.LASF42:
	.string	"qpiJedecIdCmdDmyClk"
.LASF87:
	.string	"burstWrapCmd"
.LASF19:
	.string	"BL_Err_Type"
.LASF7:
	.string	"long int"
.LASF26:
	.string	"SF_CTRL_ADDR_2_LINES"
.LASF102:
	.string	"SPI_Flash_Cfg_Type"
.LASF79:
	.string	"releasePowerDown"
.LASF65:
	.string	"qpiFastReadQioCmd"
.LASF111:
	.string	"XIP_SFlash_Read_Via_Cache_Need_Lock"
.LASF120:
	.string	"pCrc"
.LASF100:
	.string	"pdDelay"
.LASF25:
	.string	"SF_CTRL_ADDR_1_LINE"
.LASF84:
	.string	"exitQpi"
.LASF33:
	.string	"clkDelay"
.LASF110:
	.string	"BL602_MemCmp"
.LASF61:
	.string	"fastReadQoCmd"
.LASF18:
	.string	"TIMEOUT"
.LASF89:
	.string	"burstWrapDataMode"
.LASF114:
	.string	"flashPinCfg"
.LASF3:
	.string	"unsigned int"
.LASF112:
	.string	"callFromFlash"
.LASF94:
	.string	"deBurstWrapData"
.LASF36:
	.string	"resetCmd"
.LASF13:
	.string	"long unsigned int"
.LASF101:
	.string	"qeData"
.LASF104:
	.string	"name"
.LASF43:
	.string	"sectorSize"
.LASF41:
	.string	"qpiJedecIdCmd"
.LASF11:
	.string	"short unsigned int"
.LASF50:
	.string	"pageProgramCmd"
.LASF20:
	.string	"SF_CTRL_NIO_MODE"
.LASF75:
	.string	"wrEnableWriteRegLen"
.LASF113:
	.string	"autoScan"
.LASF123:
	.string	"SF_Cfg_Flash_Identify_Ext"
.LASF106:
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
.LASF10:
	.string	"uint16_t"
.LASF124:
	.string	"SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext"
.LASF85:
	.string	"cReadMode"
.LASF92:
	.string	"deBurstWrapCmdDmyClk"
.LASF108:
	.string	"BL602_MemCpy_Fast"
.LASF74:
	.string	"busyBit"
.LASF77:
	.string	"qeWriteRegLen"
.LASF35:
	.string	"resetEnCmd"
.LASF117:
	.string	"jdecId"
.LASF4:
	.string	"unsigned char"
.LASF70:
	.string	"qeIndex"
.LASF6:
	.string	"short int"
.LASF122:
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
.LASF12:
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
.LASF121:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF97:
	.string	"timeE64k"
.LASF40:
	.string	"jedecIdCmdDmyClk"
.LASF28:
	.string	"SF_CTRL_DATA_1_LINE"
.LASF118:
	.string	"flashID"
.LASF86:
	.string	"cRExit"
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
.LASF119:
	.string	"flashCfg_FM_25Q08"
.LASF88:
	.string	"burstWrapCmdDmyClk"
.LASF30:
	.string	"SF_CTRL_DATA_4_LINES"
.LASF9:
	.string	"uint8_t"
.LASF16:
	.string	"SUCCESS"
.LASF115:
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
.LASF126:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/bl602_std"
.LASF131:
	.string	"bl602_common.h"
.LASF133:
	.string	"bl602_sflash.h"
.LASF136:
	.string	"bl602_xip_sflash.h"
.LASF132:
	.string	"bl602_sf_ctrl.h"
.LASF130:
	.string	"stdint-gcc.h"
.LASF125:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/soft_crc"
.LASF134:
	.string	"bl602_sf_cfg.h"
.LASF128:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF127:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src"
.LASF129:
	.string	"bl602_sf_cfg_ext.c"
.LASF135:
	.string	"softcrc.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
