	.file	"easyflash.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.easyflash_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"4.0.99"
	.align	2
.LC1:
	.string	"EasyFlash V%s is initialize success.\r\n"
	.align	2
.LC2:
	.string	"EasyFlash V%s is initialize fail.\r\n"
	.align	2
.LC3:
	.string	"You can get the latest version on https://github.com/armink/EasyFlash .\r\n"
	.section	.text.easyflash_init,"ax",@progbits
	.align	1
	.globl	easyflash_init
	.type	easyflash_init, @function
easyflash_init:
.LFB0:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
.LM5:
.LM6:
.LM7:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
.LM8:
	addi	a1,sp,8
	addi	a0,sp,12
.LM9:
	sw	s1,20(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.LM10:
	sw	zero,8(sp)
.LM11:
.LM12:
.LVL0:
.LM13:
.LM14:
	call	ef_port_init
.LVL1:
.LM15:
	lui	s1,%hi(.LC0)
.LM16:
	bne	a0,zero,.L4
.LM17:
.LM18:
	lw	a1,8(sp)
	lw	a0,12(sp)
.LVL2:
.LM19:
	call	ef_env_init
.LVL3:
	mv	s0,a0
.LVL4:
.LM20:
.LM21:
	bne	a0,zero,.L2
.LM22:
	lui	a0,%hi(.LC1)
.LVL5:
.LM23:
	addi	a1,s1,%lo(.LC0)
	addi	a0,a0,%lo(.LC1)
.LVL6:
.L6:
.LM24:
	call	ef_log_info
.LVL7:
.LM25:
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	ef_log_info
.LVL8:
.LM26:
.LM27:
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL9:
.L4:
	.cfi_restore_state
.LM28:
	mv	s0,a0
.LVL10:
.L2:
.LM29:
	lui	a0,%hi(.LC2)
	addi	a1,s1,%lo(.LC0)
	addi	a0,a0,%lo(.LC2)
	j	.L6
	.cfi_endproc
.LFE0:
	.size	easyflash_init, .-easyflash_init
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x255
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0xc
	.byte	0x2
	.byte	0x49
	.byte	0x10
	.4byte	0xb7
	.uleb128 0x10
	.string	"key"
	.byte	0x2
	.byte	0x4a
	.byte	0xb
	.4byte	0xb7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x4b
	.byte	0xb
	.4byte	0xc8
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x4c
	.byte	0xc
	.4byte	0x71
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0xbc
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x9
	.4byte	0xbc
	.uleb128 0x11
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.byte	0x4d
	.byte	0x3
	.4byte	0x84
	.uleb128 0x9
	.4byte	0xca
	.uleb128 0x12
	.byte	0x7
	.byte	0x1
	.4byte	0x47
	.byte	0x2
	.byte	0x50
	.byte	0xe
	.4byte	0x120
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x2
	.byte	0x5a
	.byte	0x3
	.4byte	0xdb
	.uleb128 0x1
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x4
	.byte	0x69
	.byte	0x6
	.4byte	0x146
	.uleb128 0x3
	.4byte	0x146
	.uleb128 0x14
	.byte	0
	.uleb128 0x4
	.4byte	0xc3
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x43
	.4byte	0x120
	.4byte	0x164
	.uleb128 0x3
	.4byte	0x164
	.uleb128 0x3
	.4byte	0x71
	.byte	0
	.uleb128 0x4
	.4byte	0xd6
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x42
	.4byte	0x120
	.4byte	0x182
	.uleb128 0x3
	.4byte	0x182
	.uleb128 0x3
	.4byte	0x187
	.byte	0
	.uleb128 0x4
	.4byte	0x164
	.uleb128 0x4
	.4byte	0x71
	.uleb128 0x15
	.4byte	.LASF37
	.byte	0x1
	.byte	0x41
	.byte	0xb
	.4byte	0x120
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x42
	.4byte	0x120
	.4byte	0x1bb
	.uleb128 0x3
	.4byte	0x182
	.uleb128 0x3
	.4byte	0x187
	.byte	0
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x43
	.4byte	0x120
	.4byte	0x1d4
	.uleb128 0x3
	.4byte	0x164
	.uleb128 0x3
	.4byte	0x71
	.byte	0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x44
	.4byte	0x120
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x45
	.4byte	0x120
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x47
	.byte	0xc
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x48
	.byte	0x13
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x1
	.byte	0x49
	.byte	0xf
	.4byte	0x120
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x17
	.4byte	.LVL1
	.4byte	0x169
	.4byte	0x232
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LVL3
	.4byte	0x14b
	.uleb128 0xc
	.4byte	.LVL7
	.4byte	0x133
	.uleb128 0x18
	.4byte	.LVL8
	.4byte	0x133
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 22
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
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
	.sleb128 22
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x18
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0xc
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0x12
	.uleb128 0x13
	.uleb128 0x16
	.uleb128 0x1b
	.uleb128 0x1c
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LVL5-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL9-.LVL0
	.uleb128 .LVL10-.LVL0
	.uleb128 0x1
	.byte	0x5a
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
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
.LLRL1:
	.byte	0x7
	.4byte	.LFB0
	.uleb128 .LFE0-.LFB0
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
	.4byte	.LASF39
	.4byte	.LASF40
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x5
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF42
	.byte	0x2
	.4byte	.LASF43
	.byte	0x1
	.4byte	.LASF44
	.byte	0x3
	.4byte	.LASF45
	.byte	0x1
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x57
	.byte	0x5
	.uleb128 0x20
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
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x6
	.byte	0x11
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x21
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0xd
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x1d
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x6
	.byte	0x27
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.uleb128 0x9
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE0
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"ef_iap_init"
.LASF38:
	.string	"result"
.LASF29:
	.string	"ef_port_init"
.LASF3:
	.string	"short int"
.LASF15:
	.string	"size_t"
.LASF28:
	.string	"ef_env_init"
.LASF33:
	.string	"default_env_set"
.LASF16:
	.string	"ef_env"
.LASF12:
	.string	"value"
.LASF5:
	.string	"long long int"
.LASF24:
	.string	"EF_ENV_INIT_FAILED"
.LASF4:
	.string	"long int"
.LASF19:
	.string	"EF_READ_ERR"
.LASF21:
	.string	"EF_ENV_NAME_ERR"
.LASF26:
	.string	"EfErrCode"
.LASF13:
	.string	"value_len"
.LASF11:
	.string	"long double"
.LASF6:
	.string	"unsigned char"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF14:
	.string	"char"
.LASF27:
	.string	"_Bool"
.LASF37:
	.string	"easyflash_init"
.LASF23:
	.string	"EF_ENV_FULL"
.LASF22:
	.string	"EF_ENV_NAME_EXIST"
.LASF31:
	.string	"ef_log_init"
.LASF17:
	.string	"EF_NO_ERR"
.LASF32:
	.string	"default_env_set_size"
.LASF8:
	.string	"long unsigned int"
.LASF25:
	.string	"EF_ENV_ARG_ERR"
.LASF36:
	.string	"ef_log_info"
.LASF34:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF35:
	.string	"_ef_env"
.LASF20:
	.string	"EF_WRITE_ERR"
.LASF18:
	.string	"EF_ERASE_ERR"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/src/easyflash.c"
.LASF40:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/src"
.LASF44:
	.string	"stddef.h"
.LASF41:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF39:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/inc"
.LASF43:
	.string	"ef_def.h"
.LASF45:
	.string	"easyflash.h"
.LASF42:
	.string	"easyflash.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/easyflash4"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
