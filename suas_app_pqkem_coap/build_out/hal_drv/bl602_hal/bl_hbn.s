	.file	"bl_hbn.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.bl_hbn_enter.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"hbn.buflen = %d\r\n"
	.align	2
.LC2:
	.string	"hbn.active = %d\r\n"
	.align	2
.LC3:
	.string	"bl_hbn.c"
	.align	2
.LC4:
	.string	"not support arg.\r\n"
	.align	2
.LC5:
	.string	"hbn gpio7.\r\n"
	.align	2
.LC6:
	.string	"hbn gpio8.\r\n"
	.align	2
.LC7:
	.string	"hbn gpio_all.\r\n"
	.align	2
.LC8:
	.string	"invalid arg.\r\n"
	.section	.text.bl_hbn_enter,"ax",@progbits
	.align	1
	.globl	bl_hbn_enter
	.type	bl_hbn_enter, @function
bl_hbn_enter:
.LVL0:
.LFB9:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	.cfi_offset 9, -12
	mv	s1,a1
.LM4:
	lui	a1,%hi(.LANCHOR0)
.LVL1:
.LM5:
	sw	s0,40(sp)
.LM6:
	li	a2,20
	.cfi_offset 8, -8
.LM7:
	mv	s0,a0
.LM8:
	addi	a1,a1,%lo(.LANCHOR0)
	addi	a0,sp,12
.LVL2:
.LM9:
	sw	ra,44(sp)
	.cfi_offset 1, -4
.LM10:
	call	memcpy
.LVL3:
.LM11:
.LM12:
	beq	s0,zero,.L2
.LM13:
	lbu	a1,0(s0)
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL4:
.LM14:
	lbu	a1,1(s0)
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL5:
.LM15:
	lbu	a3,0(s0)
	lui	a0,%hi(.LC3)
	li	a4,0
	addi	a2,s0,2
	li	a1,156
	addi	a0,a0,%lo(.LC3)
	call	log_buf_out
.LVL6:
.L2:
.LM16:
.LM17:
	lw	a5,0(s1)
.LM18:
	li	a4,1000
.LM19:
	lbu	s1,0(s0)
.LVL7:
.LM20:
	addi	a5,a5,999
.LM21:
	divu	a5,a5,a4
.LM22:
	li	a4,1
.LM23:
	sw	a5,16(sp)
.LM24:
.LM25:
	addi	a5,s1,-1
.LM26:
	andi	a5,a5,0xff
	bleu	a5,a4,.L3
.LM27:
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
.L15:
.LM28:
	call	printf
.LVL8:
.LM29:
.L4:
.LM30:
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL9:
.LM31:
	lw	s1,36(sp)
	.cfi_restore 9
	li	a0,-1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL10:
.L3:
	.cfi_restore_state
.LM32:
.LM33:
	lbu	a5,2(s0)
.LM34:
	bne	s1,a4,.L5
.LM35:
	addi	a4,a5,-7
.LM36:
	andi	a4,a4,0xff
	bgtu	a4,s1,.L6
.LM37:
.LM38:
	li	a4,7
	bne	a5,a4,.L7
.LM39:
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL11:
.LM40:
.L8:
.LM41:
	sb	s1,20(sp)
.LM42:
.LM43:
	call	bl_flash_get_flashCfg
.LVL12:
.LM44:
	sw	a0,24(sp)
.LM45:
	li	a0,0
	call	HBN_Clear_IRQ
.LVL13:
.LM46:
	li	a0,1
	call	HBN_Clear_IRQ
.LVL14:
.LM47:
	addi	a0,sp,12
	call	HBN_Mode_Enter
.LVL15:
.LM48:
.LM49:
	j	.L4
.L7:
.LM50:
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL16:
.LM51:
.LM52:
	li	s1,2
	j	.L8
.L5:
.LM53:
.LM54:
	li	a4,7
	li	a3,8
	bne	a5,a4,.L9
.LM55:
	lbu	a5,3(s0)
	bne	a5,a3,.L6
.L10:
.LM56:
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL17:
.LM57:
.LM58:
	li	s1,3
	j	.L8
.L9:
.LM59:
	bne	a5,a3,.L6
.LM60:
	lbu	a5,3(s0)
	beq	a5,a4,.L10
.L6:
.LM61:
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	j	.L15
	.cfi_endproc
.LFE9:
	.size	bl_hbn_enter, .-bl_hbn_enter
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.byte	0
	.zero	3
	.word	0
	.byte	0
	.byte	4
	.zero	2
	.word	0
	.byte	0
	.byte	10
	.zero	2
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8c0
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x10
	.4byte	.LASF150
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL2
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
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x13
	.4byte	0x7a
	.uleb128 0x8
	.4byte	0x81
	.uleb128 0x14
	.4byte	0x86
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x40
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x4e
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x5c
	.uleb128 0xa
	.4byte	0x90
	.4byte	0xc4
	.uleb128 0xb
	.4byte	0x32
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0x40
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xe3
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xc4
	.uleb128 0xa
	.4byte	0x90
	.4byte	0xff
	.uleb128 0xb
	.4byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x54
	.byte	0x4
	.byte	0x39
	.4byte	0x4af
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3a
	.byte	0xd
	.4byte	0x90
	.byte	0
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x4
	.byte	0x3b
	.byte	0xd
	.4byte	0x90
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x4
	.byte	0x3c
	.byte	0xd
	.4byte	0x90
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x4
	.byte	0x3d
	.byte	0xd
	.4byte	0x90
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x4
	.byte	0x3e
	.byte	0xd
	.4byte	0x90
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x4
	.byte	0x3f
	.byte	0xd
	.4byte	0x90
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x4
	.byte	0x40
	.byte	0xd
	.4byte	0x90
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x4
	.byte	0x41
	.byte	0xd
	.4byte	0x90
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x4
	.byte	0x42
	.byte	0xd
	.4byte	0x90
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x4
	.byte	0x43
	.byte	0xd
	.4byte	0x90
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x4
	.byte	0x44
	.byte	0xd
	.4byte	0x90
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x4
	.byte	0x45
	.byte	0xd
	.4byte	0x90
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x4
	.byte	0x46
	.byte	0xd
	.4byte	0x90
	.byte	0xc
	.uleb128 0xd
	.string	"mid"
	.byte	0x4
	.byte	0x47
	.4byte	0x90
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x4
	.byte	0x48
	.byte	0xe
	.4byte	0x9c
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x4
	.byte	0x49
	.byte	0xd
	.4byte	0x90
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x4
	.byte	0x4a
	.byte	0xd
	.4byte	0x90
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x4
	.byte	0x4b
	.byte	0xd
	.4byte	0x90
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x4
	.byte	0x4c
	.byte	0xd
	.4byte	0x90
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x4
	.byte	0x4d
	.byte	0xd
	.4byte	0x90
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x4
	.byte	0x4e
	.byte	0xd
	.4byte	0x90
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x4
	.byte	0x4f
	.byte	0xd
	.4byte	0x90
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x4
	.byte	0x50
	.byte	0xd
	.4byte	0x90
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x4
	.byte	0x51
	.byte	0xd
	.4byte	0x90
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x4
	.byte	0x52
	.byte	0xd
	.4byte	0x90
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x4
	.byte	0x53
	.byte	0xd
	.4byte	0x90
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x4
	.byte	0x54
	.byte	0xd
	.4byte	0x90
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x4
	.byte	0x55
	.byte	0xd
	.4byte	0x90
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x4
	.byte	0x56
	.byte	0xd
	.4byte	0x90
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x4
	.byte	0x57
	.byte	0xd
	.4byte	0x90
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x4
	.byte	0x58
	.byte	0xd
	.4byte	0x90
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.4byte	0x90
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x4
	.byte	0x5a
	.byte	0xd
	.4byte	0x90
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x4
	.byte	0x5b
	.byte	0xd
	.4byte	0x90
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x4
	.byte	0x5c
	.byte	0xd
	.4byte	0x90
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x4
	.byte	0x5d
	.byte	0xd
	.4byte	0x90
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x4
	.byte	0x5e
	.byte	0xd
	.4byte	0x90
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x4
	.byte	0x5f
	.byte	0xd
	.4byte	0x90
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x4
	.byte	0x60
	.byte	0xd
	.4byte	0x90
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x4
	.byte	0x61
	.byte	0xd
	.4byte	0x90
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x4
	.byte	0x62
	.byte	0xd
	.4byte	0x90
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x4
	.byte	0x63
	.byte	0xd
	.4byte	0x90
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x4
	.byte	0x64
	.byte	0xd
	.4byte	0x90
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x4
	.byte	0x65
	.byte	0xd
	.4byte	0x90
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x4
	.byte	0x66
	.byte	0xd
	.4byte	0x90
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x4
	.byte	0x67
	.byte	0xd
	.4byte	0x90
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x4
	.byte	0x68
	.byte	0xd
	.4byte	0x90
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x4
	.byte	0x69
	.byte	0xd
	.4byte	0x90
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x4
	.byte	0x6a
	.byte	0xd
	.4byte	0x90
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x4
	.byte	0x6b
	.byte	0xd
	.4byte	0x90
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x4
	.byte	0x6c
	.byte	0xd
	.4byte	0x90
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x4
	.byte	0x6d
	.byte	0xd
	.4byte	0xb4
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x4
	.byte	0x6e
	.byte	0xd
	.4byte	0xb4
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x4
	.byte	0x6f
	.byte	0xd
	.4byte	0x90
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x4
	.byte	0x70
	.byte	0xd
	.4byte	0x90
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x4
	.byte	0x71
	.byte	0xd
	.4byte	0x90
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x4
	.byte	0x72
	.byte	0xd
	.4byte	0x90
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x4
	.byte	0x73
	.byte	0xd
	.4byte	0x90
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x4
	.byte	0x74
	.byte	0xd
	.4byte	0x90
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x4
	.byte	0x75
	.byte	0xd
	.4byte	0x90
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x4
	.byte	0x76
	.byte	0xd
	.4byte	0x90
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x4
	.byte	0x77
	.byte	0xd
	.4byte	0x90
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x4
	.byte	0x78
	.byte	0xd
	.4byte	0x90
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x4
	.byte	0x79
	.byte	0xd
	.4byte	0x90
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x4
	.byte	0x7a
	.byte	0xd
	.4byte	0x90
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x4
	.byte	0x7b
	.byte	0xe
	.4byte	0x9c
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x4
	.byte	0x7c
	.byte	0xe
	.4byte	0x9c
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x4
	.byte	0x7d
	.byte	0xe
	.4byte	0x9c
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x4
	.byte	0x7e
	.byte	0xe
	.4byte	0x9c
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x4
	.byte	0x7f
	.byte	0xe
	.4byte	0x9c
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x4
	.byte	0x80
	.byte	0xd
	.4byte	0x90
	.byte	0x52
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x4
	.byte	0x81
	.byte	0xd
	.4byte	0x90
	.byte	0x53
	.byte	0
	.uleb128 0x4
	.4byte	.LASF91
	.byte	0x4
	.byte	0x82
	.byte	0x1b
	.4byte	0xff
	.uleb128 0x9
	.4byte	0x40
	.byte	0x5
	.byte	0x8e
	.byte	0xe
	.4byte	0x4f2
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0x11
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0x12
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0x16
	.byte	0
	.uleb128 0x4
	.4byte	.LASF99
	.byte	0x5
	.byte	0x96
	.byte	0x2
	.4byte	0x4bb
	.uleb128 0x9
	.4byte	0x40
	.byte	0x5
	.byte	0x9b
	.byte	0xe
	.4byte	0x53b
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0x5
	.byte	0xa4
	.byte	0x2
	.4byte	0x4fe
	.uleb128 0x9
	.4byte	0x40
	.byte	0x5
	.byte	0xbc
	.byte	0xe
	.4byte	0x5b4
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0x5
	.byte	0xcd
	.byte	0x2
	.4byte	0x547
	.uleb128 0x9
	.4byte	0x40
	.byte	0x5
	.byte	0xd2
	.byte	0xe
	.4byte	0x5e5
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF130
	.byte	0x5
	.byte	0xd7
	.byte	0x2
	.4byte	0x5c0
	.uleb128 0xc
	.byte	0x14
	.byte	0x5
	.byte	0xe6
	.4byte	0x655
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0x5
	.byte	0xe7
	.byte	0xd
	.4byte	0x90
	.byte	0
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x5
	.byte	0xe8
	.byte	0xe
	.4byte	0xa8
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x5
	.byte	0xe9
	.byte	0xd
	.4byte	0x90
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x5
	.byte	0xea
	.byte	0x1f
	.4byte	0x53b
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0x5
	.byte	0xeb
	.byte	0x19
	.4byte	0x655
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x5
	.byte	0xec
	.byte	0x14
	.4byte	0x5e5
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF137
	.byte	0x5
	.byte	0xed
	.byte	0x18
	.4byte	0x5b4
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.4byte	0x4af
	.uleb128 0x4
	.4byte	.LASF138
	.byte	0x5
	.byte	0xee
	.byte	0x2
	.4byte	0x5f1
	.uleb128 0x15
	.4byte	.LASF151
	.byte	0x3
	.byte	0x6
	.byte	0x22
	.byte	0x10
	.4byte	0x69a
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0x6
	.byte	0x23
	.byte	0xd
	.4byte	0x90
	.byte	0
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0x6
	.byte	0x24
	.byte	0xd
	.4byte	0x90
	.byte	0x1
	.uleb128 0xd
	.string	"buf"
	.byte	0x6
	.byte	0x25
	.4byte	0xef
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF141
	.byte	0x6
	.byte	0x26
	.byte	0x3
	.4byte	0x666
	.uleb128 0x16
	.4byte	.LASF152
	.byte	0x7
	.byte	0x1
	.4byte	0x40
	.byte	0x7
	.byte	0x55
	.byte	0xe
	.4byte	0x6cb
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x7
	.byte	0x59
	.byte	0x3
	.4byte	0x6a6
	.uleb128 0x17
	.4byte	.LASF153
	.byte	0x5
	.2byte	0x18c
	.byte	0x6
	.4byte	0x6ea
	.uleb128 0x7
	.4byte	0x6ea
	.byte	0
	.uleb128 0x8
	.4byte	0x65a
	.uleb128 0x18
	.4byte	.LASF146
	.byte	0x5
	.2byte	0x1bc
	.byte	0xd
	.4byte	0xe3
	.4byte	0x706
	.uleb128 0x7
	.4byte	0x4f2
	.byte	0
	.uleb128 0x19
	.4byte	.LASF154
	.byte	0x9
	.byte	0x24
	.byte	0x7
	.4byte	0x78
	.uleb128 0xe
	.4byte	.LASF147
	.byte	0x7
	.byte	0x9c
	.4byte	0x6a
	.4byte	0x73b
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0x7
	.4byte	0x6a
	.uleb128 0x7
	.4byte	0x73b
	.uleb128 0x7
	.4byte	0x6a
	.uleb128 0x7
	.4byte	0x6cb
	.byte	0
	.uleb128 0x8
	.4byte	0x740
	.uleb128 0x1a
	.uleb128 0xe
	.4byte	.LASF148
	.byte	0x8
	.byte	0xce
	.4byte	0x6a
	.4byte	0x757
	.uleb128 0x7
	.4byte	0x8b
	.uleb128 0x1b
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0x1
	.byte	0x2a
	.byte	0x5
	.4byte	0x6a
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ae
	.uleb128 0x1d
	.string	"hbn"
	.byte	0x1
	.byte	0x2a
	.byte	0x1e
	.4byte	0x8ae
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1e
	.4byte	.LASF149
	.byte	0x1
	.byte	0x2a
	.byte	0x2d
	.4byte	0x8b3
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1f
	.string	"cfg"
	.byte	0x1
	.byte	0x8f
	.byte	0x16
	.4byte	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LVL3
	.4byte	0x8b8
	.4byte	0x7ca
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x6
	.4byte	.LVL4
	.4byte	0x741
	.4byte	0x7e1
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x6
	.4byte	.LVL5
	.4byte	0x741
	.4byte	0x7f8
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x6
	.4byte	.LVL6
	.4byte	0x712
	.4byte	0x820
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x9c
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x78
	.sleb128 2
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.4byte	.LVL8
	.4byte	0x741
	.uleb128 0x6
	.4byte	.LVL11
	.4byte	0x741
	.4byte	0x840
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0xf
	.4byte	.LVL12
	.4byte	0x706
	.uleb128 0x6
	.4byte	.LVL13
	.4byte	0x6ef
	.4byte	0x85c
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.4byte	.LVL14
	.4byte	0x6ef
	.4byte	0x86f
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x6
	.4byte	.LVL15
	.4byte	0x6d7
	.4byte	0x883
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.4byte	.LVL16
	.4byte	0x741
	.4byte	0x89a
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x20
	.4byte	.LVL17
	.4byte	0x741
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x69a
	.uleb128 0x8
	.4byte	0xa8
	.uleb128 0x21
	.4byte	.LASF156
	.4byte	.LASF157
	.byte	0xa
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0xf
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x1d
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x8
	.uleb128 0x8
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
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL9-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL9-.LVL0
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
	.uleb128 .LFE9-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 0x4
	.uleb128 0x4
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL7-.LVL0
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL7-.LVL0
	.uleb128 .LFE9-.LVL0
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
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
.LLRL2:
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
	.uleb128 0x6
	.4byte	.LASF1
	.4byte	.LASF158
	.4byte	.LASF159
	.4byte	.LASF160
	.4byte	.LASF161
	.4byte	.LASF162
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF163
	.byte	0x2
	.4byte	.LASF164
	.byte	0x4
	.4byte	.LASF165
	.byte	0x1
	.4byte	.LASF166
	.byte	0x1
	.4byte	.LASF167
	.byte	0x1
	.4byte	.LASF168
	.byte	0x2
	.4byte	.LASF169
	.byte	0x3
	.4byte	.LASF170
	.byte	0x5
	.4byte	.LASF171
	.byte	0x2
	.4byte	.LASF172
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x41
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x7b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x6
	.byte	0x3
	.sleb128 -100
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x7b
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x3
	.sleb128 -100
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x7b
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x3
	.sleb128 -100
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x7b
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x3
	.sleb128 -100
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x7b
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x21
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x1
	.byte	0x5
	.uleb128 0x23
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x18
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x16
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x1
	.byte	0x5
	.uleb128 0x23
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x18
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x16
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x6
	.byte	0x29
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x6
	.byte	0x20
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x6
	.byte	0x3
	.sleb128 -24
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x29
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x33
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x6
	.byte	0x22
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x6
	.byte	0x3
	.sleb128 -18
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x24
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.uleb128 0x3a
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x14
	.byte	0x5
	.uleb128 0x24
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x3a
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x9
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE9
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF148:
	.string	"printf"
.LASF80:
	.string	"deBurstWrapCmd"
.LASF143:
	.string	"LOG_BUF_OUT_DATA_TYPE_INT8"
.LASF37:
	.string	"blk64EraseCmd"
.LASF142:
	.string	"LOG_BUF_OUT_DATA_TYPE_HEX"
.LASF101:
	.string	"HBN_GPIO_INT_TRIGGER_SYNC_RISING_EDGE"
.LASF45:
	.string	"qpiFrDmyClk"
.LASF57:
	.string	"writeVregEnableCmd"
.LASF65:
	.string	"wrEnableReadRegLen"
.LASF48:
	.string	"fastReadDioCmd"
.LASF89:
	.string	"pdDelay"
.LASF61:
	.string	"wrEnableBit"
.LASF85:
	.string	"timeE32k"
.LASF2:
	.string	"long long unsigned int"
.LASF46:
	.string	"fastReadDoCmd"
.LASF23:
	.string	"clkInvert"
.LASF21:
	.string	"cReadSupport"
.LASF92:
	.string	"HBN_INT_GPIO7"
.LASF93:
	.string	"HBN_INT_GPIO8"
.LASF60:
	.string	"busyIndex"
.LASF72:
	.string	"enterQpi"
.LASF10:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF104:
	.string	"HBN_GPIO_INT_TRIGGER_ASYNC_FALLING_EDGE"
.LASF154:
	.string	"bl_flash_get_flashCfg"
.LASF28:
	.string	"jedecIdCmd"
.LASF31:
	.string	"qpiJedecIdCmdDmyClk"
.LASF76:
	.string	"burstWrapCmd"
.LASF111:
	.string	"HBN_LDO_LEVEL_0P70V"
.LASF124:
	.string	"HBN_LDO_LEVEL_1P35V"
.LASF140:
	.string	"active"
.LASF19:
	.string	"BL_Err_Type"
.LASF8:
	.string	"long int"
.LASF33:
	.string	"pageSize"
.LASF125:
	.string	"HBN_LDO_LEVEL_Type"
.LASF81:
	.string	"deBurstWrapCmdDmyClk"
.LASF91:
	.string	"SPI_Flash_Cfg_Type"
.LASF54:
	.string	"qpiFastReadQioCmd"
.LASF68:
	.string	"releasePowerDown"
.LASF156:
	.string	"memcpy"
.LASF147:
	.string	"log_buf_out"
.LASF24:
	.string	"resetEnCmd"
.LASF14:
	.string	"uint16_t"
.LASF137:
	.string	"ldoLevel"
.LASF110:
	.string	"HBN_LDO_LEVEL_0P65V"
.LASF73:
	.string	"exitQpi"
.LASF22:
	.string	"clkDelay"
.LASF50:
	.string	"fastReadQoCmd"
.LASF18:
	.string	"TIMEOUT"
.LASF78:
	.string	"burstWrapDataMode"
.LASF117:
	.string	"HBN_LDO_LEVEL_1P00V"
.LASF105:
	.string	"HBN_GPIO_INT_TRIGGER_ASYNC_RISING_EDGE"
.LASF3:
	.string	"unsigned int"
.LASF83:
	.string	"deBurstWrapData"
.LASF109:
	.string	"HBN_LDO_LEVEL_0P60V"
.LASF25:
	.string	"resetCmd"
.LASF9:
	.string	"long unsigned int"
.LASF122:
	.string	"HBN_LDO_LEVEL_1P25V"
.LASF90:
	.string	"qeData"
.LASF43:
	.string	"frDmyClk"
.LASF108:
	.string	"HBN_GPIO_INT_Trigger_Type"
.LASF32:
	.string	"sectorSize"
.LASF30:
	.string	"qpiJedecIdCmd"
.LASF7:
	.string	"short unsigned int"
.LASF39:
	.string	"pageProgramCmd"
.LASF64:
	.string	"wrEnableWriteRegLen"
.LASF71:
	.string	"writeRegCmd"
.LASF157:
	.string	"__builtin_memcpy"
.LASF6:
	.string	"short int"
.LASF20:
	.string	"ioMode"
.LASF56:
	.string	"qpiPageProgramCmd"
.LASF41:
	.string	"qppAddrMode"
.LASF116:
	.string	"HBN_LDO_LEVEL_0P95V"
.LASF62:
	.string	"qeBit"
.LASF44:
	.string	"qpiFastReadCmd"
.LASF55:
	.string	"qpiFrQioDmyClk"
.LASF151:
	.string	"_hbn_type"
.LASF133:
	.string	"gpioWakeupSrc"
.LASF27:
	.string	"resetCreadCmdSize"
.LASF67:
	.string	"qeReadRegLen"
.LASF69:
	.string	"busyReadRegLen"
.LASF17:
	.string	"ERROR"
.LASF123:
	.string	"HBN_LDO_LEVEL_1P30V"
.LASF145:
	.string	"LOG_BUF_OUT_DATA_TYPE_T"
.LASF84:
	.string	"timeEsector"
.LASF120:
	.string	"HBN_LDO_LEVEL_1P15V"
.LASF74:
	.string	"cReadMode"
.LASF149:
	.string	"time"
.LASF79:
	.string	"burstWrapData"
.LASF114:
	.string	"HBN_LDO_LEVEL_0P85V"
.LASF144:
	.string	"LOG_BUF_OUT_DATA_TYPE_UNT8"
.LASF152:
	.string	"LOG_BUF_OUT_DATA_TYPE"
.LASF63:
	.string	"busyBit"
.LASF66:
	.string	"qeWriteRegLen"
.LASF130:
	.string	"HBN_LEVEL_Type"
.LASF95:
	.string	"HBN_INT_PIR"
.LASF5:
	.string	"unsigned char"
.LASF59:
	.string	"qeIndex"
.LASF100:
	.string	"HBN_GPIO_INT_TRIGGER_SYNC_FALLING_EDGE"
.LASF97:
	.string	"HBN_INT_ACOMP0"
.LASF98:
	.string	"HBN_INT_ACOMP1"
.LASF141:
	.string	"hbn_type_t"
.LASF42:
	.string	"fastReadCmd"
.LASF94:
	.string	"HBN_INT_RTC"
.LASF121:
	.string	"HBN_LDO_LEVEL_1P20V"
.LASF139:
	.string	"buflen"
.LASF38:
	.string	"writeEnableCmd"
.LASF53:
	.string	"frQioDmyClk"
.LASF47:
	.string	"frDoDmyClk"
.LASF118:
	.string	"HBN_LDO_LEVEL_1P05V"
.LASF102:
	.string	"HBN_GPIO_INT_TRIGGER_SYNC_LOW_LEVEL"
.LASF128:
	.string	"HBN_LEVEL_2"
.LASF40:
	.string	"qpageProgramCmd"
.LASF15:
	.string	"uint32_t"
.LASF26:
	.string	"resetCreadCmd"
.LASF11:
	.string	"long double"
.LASF12:
	.string	"char"
.LASF58:
	.string	"wrEnableIndex"
.LASF49:
	.string	"frDioDmyClk"
.LASF138:
	.string	"HBN_APP_CFG_Type"
.LASF135:
	.string	"flashCfg"
.LASF146:
	.string	"HBN_Clear_IRQ"
.LASF150:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF103:
	.string	"HBN_GPIO_INT_TRIGGER_SYNC_HIGH_LEVEL"
.LASF86:
	.string	"timeE64k"
.LASF29:
	.string	"jedecIdCmdDmyClk"
.LASF115:
	.string	"HBN_LDO_LEVEL_0P90V"
.LASF107:
	.string	"HBN_GPIO_INT_TRIGGER_ASYNC_HIGH_LEVEL"
.LASF132:
	.string	"sleepTime"
.LASF155:
	.string	"bl_hbn_enter"
.LASF75:
	.string	"cRExit"
.LASF112:
	.string	"HBN_LDO_LEVEL_0P75V"
.LASF153:
	.string	"HBN_Mode_Enter"
.LASF36:
	.string	"blk32EraseCmd"
.LASF126:
	.string	"HBN_LEVEL_0"
.LASF127:
	.string	"HBN_LEVEL_1"
.LASF52:
	.string	"fastReadQioCmd"
.LASF129:
	.string	"HBN_LEVEL_3"
.LASF34:
	.string	"chipEraseCmd"
.LASF88:
	.string	"timeCe"
.LASF82:
	.string	"deBurstWrapDataMode"
.LASF106:
	.string	"HBN_GPIO_INT_TRIGGER_ASYNC_LOW_LEVEL"
.LASF77:
	.string	"burstWrapCmdDmyClk"
.LASF119:
	.string	"HBN_LDO_LEVEL_1P10V"
.LASF13:
	.string	"uint8_t"
.LASF16:
	.string	"SUCCESS"
.LASF99:
	.string	"HBN_INT_Type"
.LASF131:
	.string	"useXtal32k"
.LASF96:
	.string	"HBN_INT_BOR"
.LASF87:
	.string	"timePagePgm"
.LASF70:
	.string	"readRegCmd"
.LASF134:
	.string	"gpioTrigType"
.LASF35:
	.string	"sectorEraseCmd"
.LASF113:
	.string	"HBN_LDO_LEVEL_0P80V"
.LASF136:
	.string	"hbnLevel"
.LASF51:
	.string	"frQoDmyClk"
	.section	.debug_line_str,"MS",@progbits,1
.LASF162:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF171:
	.string	"bl_flash.h"
.LASF158:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/hal_drv"
.LASF160:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/include"
.LASF166:
	.string	"bl602_sflash.h"
.LASF167:
	.string	"bl602_hbn.h"
.LASF165:
	.string	"bl602_common.h"
.LASF164:
	.string	"stdint-gcc.h"
.LASF168:
	.string	"bl_hbn.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_hbn.c"
.LASF159:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal"
.LASF161:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF172:
	.string	"<built-in>"
.LASF169:
	.string	"utils_log.h"
.LASF163:
	.string	"bl_hbn.c"
.LASF170:
	.string	"stdio.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
