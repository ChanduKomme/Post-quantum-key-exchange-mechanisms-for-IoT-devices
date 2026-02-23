	.file	"bl602_sflash_ext.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.tcm_code,"ax",@progbits
	.align	1
	.globl	SFlash_Restore_From_Powerdown
	.type	SFlash_Restore_From_Powerdown, @function
SFlash_Restore_From_Powerdown:
.LVL0:
.LFB8:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 9, -12
.LM5:
	lbu	s1,0(a0)
.LM6:
	mv	s0,a0
	mv	s2,a1
.LM7:
	sw	zero,4(sp)
.LM8:
.LM9:
.LM10:
	call	SFlash_Releae_Powerdown
.LVL1:
.LM11:
	li	a0,120
	call	BL602_Delay_US
.LVL2:
.LM12:
	addi	a1,sp,4
	mv	a0,s0
.LM13:
	andi	s1,s1,15
.LVL3:
.LM14:
.LM15:
.LM16:
	call	SFlash_GetJedecId
.LVL4:
.LM17:
.LM18:
	addi	a5,s1,-2
.LM19:
	andi	a5,a5,253
	bne	a5,zero,.L2
.LM20:
	mv	a0,s0
	call	SFlash_Qspi_Enable
.LVL5:
.L2:
.LM21:
.LM22:
	lbu	a5,0(s0)
	andi	a5,a5,16
	beq	a5,zero,.L3
.LM23:
	li	a0,0
	call	L1C_Set_Wrap
.LVL6:
.L4:
.LM24:
.LM25:
	beq	s2,zero,.L5
.LM26:
.LM27:
	li	a5,8
	add	a4,sp,a5
	li	a3,0
	li	a2,1
	mv	a1,s1
	mv	a0,s0
	call	SFlash_Read
.LVL7:
.LM28:
.LM29:
	li	a4,32
	li	a3,0
	li	a2,1
.L8:
.LM30:
	mv	a1,s1
	mv	a0,s0
	call	SFlash_Set_IDbus_Cfg
.LVL8:
.LM31:
.LM32:
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL9:
.LM33:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL10:
.LM34:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL11:
.LM35:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL12:
.L3:
	.cfi_restore_state
.LM36:
	li	a0,1
	call	L1C_Set_Wrap
.LVL13:
.LM37:
	mv	a0,s0
	call	SFlash_Write_Enable
.LVL14:
.LM38:
	mv	a0,s0
	call	SFlash_SetBurstWrap
.LVL15:
	j	.L4
.L5:
.LM39:
.LM40:
	li	a4,32
	li	a3,0
	li	a2,0
	j	.L8
	.cfi_endproc
.LFE8:
	.size	SFlash_Restore_From_Powerdown, .-SFlash_Restore_From_Powerdown
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x711
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xf
	.4byte	.LASF114
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL4
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
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
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x87
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0xa
	.4byte	0x39
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xc2
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xa3
	.uleb128 0xa
	.4byte	0x39
	.byte	0x3
	.byte	0x21
	.byte	0x1
	.4byte	0xe7
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x3
	.byte	0x24
	.byte	0x2
	.4byte	0xce
	.uleb128 0xa
	.4byte	0x39
	.byte	0x4
	.byte	0x62
	.byte	0xe
	.4byte	0x11e
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x4
	.byte	0x68
	.byte	0x2
	.4byte	0xf3
	.uleb128 0x11
	.byte	0x54
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.4byte	0x495
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x3a
	.byte	0xd
	.4byte	0x5c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x3b
	.byte	0xd
	.4byte	0x5c
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x3c
	.byte	0xd
	.4byte	0x5c
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x3d
	.byte	0xd
	.4byte	0x5c
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x3e
	.byte	0xd
	.4byte	0x5c
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x3f
	.byte	0xd
	.4byte	0x5c
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x40
	.byte	0xd
	.4byte	0x5c
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x41
	.byte	0xd
	.4byte	0x5c
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x42
	.byte	0xd
	.4byte	0x5c
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x43
	.byte	0xd
	.4byte	0x5c
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x44
	.byte	0xd
	.4byte	0x5c
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x45
	.byte	0xd
	.4byte	0x5c
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x46
	.byte	0xd
	.4byte	0x5c
	.byte	0xc
	.uleb128 0x12
	.string	"mid"
	.byte	0x5
	.byte	0x47
	.byte	0xd
	.4byte	0x5c
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x48
	.byte	0xe
	.4byte	0x68
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x49
	.byte	0xd
	.4byte	0x5c
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x4a
	.byte	0xd
	.4byte	0x5c
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x4b
	.byte	0xd
	.4byte	0x5c
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x4c
	.byte	0xd
	.4byte	0x5c
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x4d
	.byte	0xd
	.4byte	0x5c
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x4e
	.byte	0xd
	.4byte	0x5c
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x4f
	.byte	0xd
	.4byte	0x5c
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x50
	.byte	0xd
	.4byte	0x5c
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x51
	.byte	0xd
	.4byte	0x5c
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x52
	.byte	0xd
	.4byte	0x5c
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x53
	.byte	0xd
	.4byte	0x5c
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x54
	.byte	0xd
	.4byte	0x5c
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x55
	.byte	0xd
	.4byte	0x5c
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x56
	.byte	0xd
	.4byte	0x5c
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x57
	.byte	0xd
	.4byte	0x5c
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x58
	.byte	0xd
	.4byte	0x5c
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x59
	.byte	0xd
	.4byte	0x5c
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x5a
	.byte	0xd
	.4byte	0x5c
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x5b
	.byte	0xd
	.4byte	0x5c
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x5c
	.byte	0xd
	.4byte	0x5c
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x5d
	.byte	0xd
	.4byte	0x5c
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x5e
	.byte	0xd
	.4byte	0x5c
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x5f
	.byte	0xd
	.4byte	0x5c
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x60
	.byte	0xd
	.4byte	0x5c
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x61
	.byte	0xd
	.4byte	0x5c
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x62
	.byte	0xd
	.4byte	0x5c
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x63
	.byte	0xd
	.4byte	0x5c
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x64
	.byte	0xd
	.4byte	0x5c
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x65
	.byte	0xd
	.4byte	0x5c
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x66
	.byte	0xd
	.4byte	0x5c
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x67
	.byte	0xd
	.4byte	0x5c
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x68
	.byte	0xd
	.4byte	0x5c
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x69
	.byte	0xd
	.4byte	0x5c
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x6a
	.byte	0xd
	.4byte	0x5c
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x6b
	.byte	0xd
	.4byte	0x5c
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x6c
	.byte	0xd
	.4byte	0x5c
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x6d
	.byte	0xd
	.4byte	0x495
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x6e
	.byte	0xd
	.4byte	0x495
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x6f
	.byte	0xd
	.4byte	0x5c
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x70
	.byte	0xd
	.4byte	0x5c
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x71
	.byte	0xd
	.4byte	0x5c
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x72
	.byte	0xd
	.4byte	0x5c
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x73
	.byte	0xd
	.4byte	0x5c
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x74
	.byte	0xd
	.4byte	0x5c
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x75
	.byte	0xd
	.4byte	0x5c
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x76
	.byte	0xd
	.4byte	0x5c
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x77
	.byte	0xd
	.4byte	0x5c
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x78
	.byte	0xd
	.4byte	0x5c
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x79
	.byte	0xd
	.4byte	0x5c
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x7a
	.byte	0xd
	.4byte	0x5c
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x7b
	.byte	0xe
	.4byte	0x68
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x7c
	.byte	0xe
	.4byte	0x68
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x7d
	.byte	0xe
	.4byte	0x68
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x7e
	.byte	0xe
	.4byte	0x68
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x7f
	.byte	0xe
	.4byte	0x68
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x80
	.byte	0xd
	.4byte	0x5c
	.byte	0x52
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x81
	.byte	0xd
	.4byte	0x5c
	.byte	0x53
	.byte	0
	.uleb128 0x13
	.4byte	0x5c
	.4byte	0x4a5
	.uleb128 0xb
	.4byte	0x32
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0x5
	.byte	0x82
	.byte	0x1b
	.4byte	0x12a
	.uleb128 0x8
	.4byte	.LASF101
	.byte	0x5
	.byte	0xaf
	.4byte	0xc2
	.4byte	0x4da
	.uleb128 0x2
	.4byte	0x4da
	.uleb128 0x2
	.4byte	0x11e
	.uleb128 0x2
	.4byte	0x5c
	.uleb128 0x2
	.4byte	0x7b
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0xc
	.4byte	0x4a5
	.uleb128 0x8
	.4byte	.LASF102
	.byte	0x5
	.byte	0xb9
	.4byte	0xc2
	.4byte	0x50d
	.uleb128 0x2
	.4byte	0x4da
	.uleb128 0x2
	.4byte	0x11e
	.uleb128 0x2
	.4byte	0x5c
	.uleb128 0x2
	.4byte	0x7b
	.uleb128 0x2
	.4byte	0x50d
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0xc
	.4byte	0x5c
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x5
	.byte	0xab
	.4byte	0x523
	.uleb128 0x2
	.4byte	0x4da
	.byte	0
	.uleb128 0x8
	.4byte	.LASF103
	.byte	0x5
	.byte	0x9d
	.4byte	0xc2
	.4byte	0x538
	.uleb128 0x2
	.4byte	0x4da
	.byte	0
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x6
	.byte	0xa0
	.4byte	0xc2
	.4byte	0x54d
	.uleb128 0x2
	.4byte	0xe7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF105
	.byte	0x5
	.byte	0x9e
	.4byte	0xc2
	.4byte	0x562
	.uleb128 0x2
	.4byte	0x4da
	.byte	0
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x5
	.byte	0xa7
	.4byte	0x578
	.uleb128 0x2
	.4byte	0x4da
	.uleb128 0x2
	.4byte	0x50d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x3
	.byte	0x88
	.4byte	0x589
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x5
	.byte	0xaa
	.4byte	0x59a
	.uleb128 0x2
	.4byte	0x4da
	.byte	0
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x1
	.byte	0x63
	.byte	0x33
	.4byte	0xc2
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x708
	.uleb128 0xd
	.4byte	.LASF110
	.byte	0x63
	.byte	0x65
	.4byte	0x4da
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xd
	.4byte	.LASF111
	.byte	0x63
	.byte	0x77
	.4byte	0x5c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0x65
	.byte	0x11
	.4byte	0xc2
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x1
	.byte	0x66
	.byte	0xe
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.string	"tmp"
	.byte	0x1
	.byte	0x67
	.byte	0xd
	.4byte	0x708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x68
	.byte	0xd
	.4byte	0x5c
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x6
	.4byte	.LVL1
	.4byte	0x589
	.4byte	0x632
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL2
	.4byte	0x578
	.4byte	0x646
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x78
	.byte	0
	.uleb128 0x6
	.4byte	.LVL4
	.4byte	0x562
	.4byte	0x660
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.4byte	.LVL5
	.4byte	0x54d
	.4byte	0x674
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL6
	.4byte	0x538
	.4byte	0x687
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.4byte	.LVL7
	.4byte	0x4df
	.4byte	0x6b6
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.4byte	.LVL8
	.4byte	0x4b1
	.4byte	0x6d0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL13
	.4byte	0x538
	.4byte	0x6e3
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x6
	.4byte	.LVL14
	.4byte	0x523
	.4byte	0x6f7
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL15
	.4byte	0x512
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x5c
	.uleb128 0xb
	.4byte	0x32
	.byte	0x7
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
	.sleb128 5
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
.LVUS0:
	.uleb128 0
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0x20
	.uleb128 0x20
	.uleb128 0x23
	.uleb128 0x23
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL1-1-.LVL0
	.uleb128 .LVL9-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL9-.LVL0
	.uleb128 .LVL12-.LVL0
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
	.uleb128 .LVL12-.LVL0
	.uleb128 .LFE8-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0x22
	.uleb128 0x22
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-1-.LVL0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL1-1-.LVL0
	.uleb128 .LVL11-.LVL0
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL11-.LVL0
	.uleb128 .LFE8-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x39
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0x2
	.uleb128 0x1b
	.uleb128 0x1e
	.uleb128 0x23
	.uleb128 0x23
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL7-.LVL0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL0
	.uleb128 .LVL12-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL12-.LVL0
	.uleb128 .LFE8-.LVL0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0xd
	.uleb128 0x21
	.uleb128 0x23
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL10-.LVL3
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL12-.LVL3
	.uleb128 .LFE8-.LVL3
	.uleb128 0x1
	.byte	0x59
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
.LLRL4:
	.byte	0x7
	.4byte	.LFB8
	.uleb128 .LFE8-.LFB8
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
	.uleb128 0x4
	.4byte	.LASF1
	.4byte	.LASF116
	.4byte	.LASF117
	.4byte	.LASF118
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF119
	.byte	0x2
	.4byte	.LASF120
	.byte	0x3
	.4byte	.LASF121
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1
	.4byte	.LASF123
	.byte	0x1
	.4byte	.LASF124
	.byte	0x1
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x7a
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
	.byte	0x6
	.byte	0x15
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x1b
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x13
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x19
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x11
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x1
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x20
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x19
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x6
	.byte	0x3
	.sleb128 -13
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x1e
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE8
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"jedecIdCmdDmyClk"
.LASF79:
	.string	"readRegCmd"
.LASF104:
	.string	"L1C_Set_Wrap"
.LASF83:
	.string	"cReadMode"
.LASF25:
	.string	"SF_CTRL_QO_MODE"
.LASF70:
	.string	"wrEnableBit"
.LASF78:
	.string	"busyReadRegLen"
.LASF6:
	.string	"short int"
.LASF111:
	.string	"flashContRead"
.LASF87:
	.string	"burstWrapDataMode"
.LASF76:
	.string	"qeReadRegLen"
.LASF66:
	.string	"writeVregEnableCmd"
.LASF59:
	.string	"fastReadQoCmd"
.LASF37:
	.string	"jedecIdCmd"
.LASF52:
	.string	"frDmyClk"
.LASF48:
	.string	"pageProgramCmd"
.LASF99:
	.string	"qeData"
.LASF51:
	.string	"fastReadCmd"
.LASF9:
	.string	"uint8_t"
.LASF29:
	.string	"ioMode"
.LASF28:
	.string	"SF_Ctrl_IO_Type"
.LASF30:
	.string	"cReadSupport"
.LASF112:
	.string	"jdecId"
.LASF53:
	.string	"qpiFastReadCmd"
.LASF20:
	.string	"DISABLE"
.LASF63:
	.string	"qpiFastReadQioCmd"
.LASF108:
	.string	"BL602_Delay_US"
.LASF8:
	.string	"long long int"
.LASF57:
	.string	"fastReadDioCmd"
.LASF18:
	.string	"TIMEOUT"
.LASF7:
	.string	"long int"
.LASF19:
	.string	"BL_Err_Type"
.LASF69:
	.string	"busyIndex"
.LASF73:
	.string	"wrEnableWriteRegLen"
.LASF26:
	.string	"SF_CTRL_DIO_MODE"
.LASF84:
	.string	"cRExit"
.LASF72:
	.string	"busyBit"
.LASF103:
	.string	"SFlash_Write_Enable"
.LASF62:
	.string	"frQioDmyClk"
.LASF17:
	.string	"ERROR"
.LASF101:
	.string	"SFlash_Set_IDbus_Cfg"
.LASF94:
	.string	"timeE32k"
.LASF96:
	.string	"timePagePgm"
.LASF43:
	.string	"chipEraseCmd"
.LASF64:
	.string	"qpiFrQioDmyClk"
.LASF86:
	.string	"burstWrapCmdDmyClk"
.LASF14:
	.string	"long double"
.LASF35:
	.string	"resetCreadCmd"
.LASF4:
	.string	"unsigned char"
.LASF54:
	.string	"qpiFrDmyClk"
.LASF31:
	.string	"clkDelay"
.LASF24:
	.string	"SF_CTRL_DO_MODE"
.LASF100:
	.string	"SPI_Flash_Cfg_Type"
.LASF40:
	.string	"qpiJedecIdCmdDmyClk"
.LASF5:
	.string	"signed char"
.LASF2:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF3:
	.string	"unsigned int"
.LASF41:
	.string	"sectorSize"
.LASF10:
	.string	"uint16_t"
.LASF45:
	.string	"blk32EraseCmd"
.LASF39:
	.string	"qpiJedecIdCmd"
.LASF105:
	.string	"SFlash_Qspi_Enable"
.LASF67:
	.string	"wrEnableIndex"
.LASF16:
	.string	"SUCCESS"
.LASF68:
	.string	"qeIndex"
.LASF55:
	.string	"fastReadDoCmd"
.LASF33:
	.string	"resetEnCmd"
.LASF95:
	.string	"timeE64k"
.LASF15:
	.string	"char"
.LASF92:
	.string	"deBurstWrapData"
.LASF47:
	.string	"writeEnableCmd"
.LASF80:
	.string	"writeRegCmd"
.LASF11:
	.string	"short unsigned int"
.LASF81:
	.string	"enterQpi"
.LASF97:
	.string	"timeCe"
.LASF107:
	.string	"SFlash_GetJedecId"
.LASF32:
	.string	"clkInvert"
.LASF106:
	.string	"SFlash_SetBurstWrap"
.LASF75:
	.string	"qeWriteRegLen"
.LASF56:
	.string	"frDoDmyClk"
.LASF88:
	.string	"burstWrapData"
.LASF46:
	.string	"blk64EraseCmd"
.LASF93:
	.string	"timeEsector"
.LASF13:
	.string	"long unsigned int"
.LASF115:
	.string	"SFlash_Restore_From_Powerdown"
.LASF61:
	.string	"fastReadQioCmd"
.LASF36:
	.string	"resetCreadCmdSize"
.LASF110:
	.string	"pFlashCfg"
.LASF44:
	.string	"sectorEraseCmd"
.LASF23:
	.string	"SF_CTRL_NIO_MODE"
.LASF82:
	.string	"exitQpi"
.LASF102:
	.string	"SFlash_Read"
.LASF85:
	.string	"burstWrapCmd"
.LASF27:
	.string	"SF_CTRL_QIO_MODE"
.LASF50:
	.string	"qppAddrMode"
.LASF42:
	.string	"pageSize"
.LASF71:
	.string	"qeBit"
.LASF109:
	.string	"SFlash_Releae_Powerdown"
.LASF74:
	.string	"wrEnableReadRegLen"
.LASF22:
	.string	"BL_Fun_Type"
.LASF34:
	.string	"resetCmd"
.LASF91:
	.string	"deBurstWrapDataMode"
.LASF114:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF113:
	.string	"stat"
.LASF49:
	.string	"qpageProgramCmd"
.LASF65:
	.string	"qpiPageProgramCmd"
.LASF89:
	.string	"deBurstWrapCmd"
.LASF58:
	.string	"frDioDmyClk"
.LASF60:
	.string	"frQoDmyClk"
.LASF90:
	.string	"deBurstWrapCmdDmyClk"
.LASF21:
	.string	"ENABLE"
.LASF77:
	.string	"releasePowerDown"
.LASF98:
	.string	"pdDelay"
	.section	.debug_line_str,"MS",@progbits,1
.LASF117:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src"
.LASF116:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/bl602_std"
.LASF121:
	.string	"bl602_common.h"
.LASF123:
	.string	"bl602_sflash.h"
.LASF122:
	.string	"bl602_sf_ctrl.h"
.LASF120:
	.string	"stdint-gcc.h"
.LASF124:
	.string	"bl602_l1c.h"
.LASF118:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF119:
	.string	"bl602_sflash_ext.c"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sflash_ext.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
