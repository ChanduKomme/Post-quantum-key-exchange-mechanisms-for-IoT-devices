	.file	"utils_hex.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_bin2hex,"ax",@progbits
	.align	1
	.globl	utils_bin2hex
	.type	utils_bin2hex, @function
utils_bin2hex:
.LVL0:
.LFB1:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LBB4:
.LBB5:
.LM4:
	lui	a3,%hi(hex_asc_upper)
	add	a7,a1,a2
.LBE5:
.LBE4:
.LM5:
	mv	a4,a0
.LBB9:
.LBB6:
.LM6:
	addi	a3,a3,%lo(hex_asc_upper)
.LVL1:
.L2:
.LM7:
.LBE6:
.LBE9:
.LM8:
.LM9:
	bne	a1,a7,.L3
.LM10:
	slli	a2,a2,1
.LVL2:
.LM11:
	add	a0,a0,a2
	ret
.LVL3:
.L3:
.LM12:
.LM13:
	lbu	a5,0(a1)
.LBB10:
.LBB7:
.LM14:
	addi	a4,a4,2
.LVL4:
.LM15:
.LBE7:
.LBE10:
.LM16:
	addi	a1,a1,1
.LVL5:
.LBB11:
.LBI4:
.LM17:
.LBB8:
.LM18:
.LM19:
	srli	a6,a5,4
.LM20:
	add	a6,a3,a6
.LM21:
	andi	a5,a5,15
.LVL6:
.LM22:
	lbu	a6,0(a6)
.LM23:
	add	a5,a3,a5
.LM24:
	lbu	a5,0(a5)
.LM25:
	sb	a6,-2(a4)
.LVL7:
.LM26:
.LM27:
	sb	a5,-1(a4)
.LM28:
.LVL8:
.LM29:
	j	.L2
.LBE8:
.LBE11:
	.cfi_endproc
.LFE1:
	.size	utils_bin2hex, .-utils_bin2hex
	.globl	hex_asc_upper
	.section	.rodata.hex_asc_upper,"a"
	.align	2
	.type	hex_asc_upper, @object
	.size	hex_asc_upper, 17
hex_asc_upper:
	.string	"0123456789ABCDEF"
	.globl	hex_asc
	.section	.rodata.hex_asc,"a"
	.align	2
	.type	hex_asc, @object
	.size	hex_asc, 17
hex_asc:
	.string	"0123456789abcdef"
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x19c
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL7
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x61
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	0x61
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x32
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0xa
	.4byte	0xb1
	.4byte	0xa5
	.uleb128 0xb
	.4byte	0x32
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	0x95
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x2
	.4byte	0xaa
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x22
	.4byte	0xa5
	.uleb128 0x5
	.byte	0x3
	.4byte	hex_asc
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x23
	.4byte	0xa5
	.uleb128 0x5
	.byte	0x3
	.4byte	hex_asc_upper
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2e
	.byte	0x7
	.4byte	0x169
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x169
	.uleb128 0x6
	.string	"dst"
	.byte	0x1b
	.4byte	0x169
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x6
	.string	"src"
	.byte	0x2c
	.4byte	0x16e
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x2e
	.byte	0x38
	.4byte	0x82
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x30
	.byte	0x1a
	.4byte	0x174
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xf
	.4byte	0x179
	.4byte	.LBI4
	.byte	0x10
	.4byte	.LLRL4
	.byte	0x1
	.byte	0x33
	.byte	0xf
	.uleb128 0x7
	.4byte	0x186
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x7
	.4byte	0x192
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	0xaa
	.uleb128 0x3
	.4byte	0x173
	.uleb128 0x10
	.uleb128 0x3
	.4byte	0x68
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0x27
	.byte	0x15
	.4byte	0x169
	.byte	0x3
	.uleb128 0x12
	.string	"buf"
	.byte	0x1
	.byte	0x27
	.byte	0x29
	.4byte	0x169
	.uleb128 0x13
	.4byte	.LASF19
	.byte	0x1
	.byte	0x27
	.byte	0x36
	.4byte	0x55
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 46
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0xe
	.uleb128 0xe
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
	.uleb128 .LVL4-.LVL0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LFE1-.LVL0
	.uleb128 0x3
	.byte	0x7e
	.sleb128 -2
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
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
	.uleb128 .LFE1-.LVL0
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
.LVUS2:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x8
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0xc
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xc
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.LVL0
	.uleb128 .LFE1-.LVL0
	.uleb128 0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0x2
	.uleb128 0
.LLST3:
	.byte	0x8
	.4byte	.LVL0
	.uleb128 .LFE1-.LVL0
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS5:
	.uleb128 0x1a
	.uleb128 0x1c
.LLST5:
	.byte	0x8
	.4byte	.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS6:
	.uleb128 0x10
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x19
.LLST6:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL6-.LVL5
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL6-.LVL5
	.uleb128 .LVL7-.LVL5
	.uleb128 0x2
	.byte	0x7b
	.sleb128 -1
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
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
	.byte	0x5
	.4byte	.LBB4
	.byte	0x4
	.uleb128 .LBB4-.LBB4
	.uleb128 .LBE4-.LBB4
	.byte	0x4
	.uleb128 .LBB9-.LBB4
	.uleb128 .LBE9-.LBB4
	.byte	0x4
	.uleb128 .LBB10-.LBB4
	.uleb128 .LBE10-.LBB4
	.byte	0x4
	.uleb128 .LBB11-.LBB4
	.uleb128 .LBE11-.LBB4
	.byte	0
.LLRL7:
	.byte	0x7
	.4byte	.LFB1
	.uleb128 .LFE1-.LFB1
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
	.uleb128 0x3
	.4byte	.LASF1
	.4byte	.LASF23
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF25
	.byte	0x1
	.4byte	.LASF26
	.byte	0x2
	.4byte	.LASF27
	.byte	0x2
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x45
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x6
	.byte	0xe
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x20
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0xe
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x6
	.byte	0x20
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x6
	.byte	0x13
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0xe
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x20
	.byte	0x5
	.uleb128 0x27
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x3
	.sleb128 -12
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x2c
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x18
	.byte	0x5
	.uleb128 0x24
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x16
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x18
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x16
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE1
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"size_t"
.LASF19:
	.string	"byte"
.LASF8:
	.string	"unsigned char"
.LASF10:
	.string	"long unsigned int"
.LASF9:
	.string	"short unsigned int"
.LASF20:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF18:
	.string	"_src"
.LASF21:
	.string	"utils_bin2hex"
.LASF3:
	.string	"unsigned int"
.LASF2:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF16:
	.string	"hex_asc_upper"
.LASF7:
	.string	"long long int"
.LASF14:
	.string	"char"
.LASF17:
	.string	"count"
.LASF5:
	.string	"short int"
.LASF15:
	.string	"hex_asc"
.LASF6:
	.string	"long int"
.LASF13:
	.string	"long double"
.LASF4:
	.string	"signed char"
.LASF22:
	.string	"hex_byte_pack"
	.section	.debug_line_str,"MS",@progbits,1
.LASF24:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF27:
	.string	"stddef.h"
.LASF23:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src"
.LASF26:
	.string	"stdint-gcc.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_hex.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/utils"
.LASF25:
	.string	"utils_hex.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
