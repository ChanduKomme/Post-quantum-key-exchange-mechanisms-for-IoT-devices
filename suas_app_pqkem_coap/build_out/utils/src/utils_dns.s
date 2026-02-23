	.file	"utils_dns.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_dns_domain_get,"ax",@progbits
	.align	1
	.globl	utils_dns_domain_get
	.type	utils_dns_domain_get, @function
utils_dns_domain_get:
.LVL0:
.LFB0:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
	lw	t1,0(a2)
.LVL1:
.LM5:
.LM6:
.LM7:
.LM8:
	lbu	a4,0(a0)
.LVL2:
.LM9:
.LM10:
	li	a5,0
.LM11:
	li	a7,1
.LM12:
	li	t3,46
.LVL3:
.L2:
.LM13:
.LM14:
	ble	t1,zero,.L7
.LM15:
	bne	a4,zero,.L4
.L7:
.LM16:
.LM17:
	sw	a5,0(a2)
.LM18:
.LM19:
	li	a0,0
.LVL4:
.LM20:
	ret
.LVL5:
.L4:
.LM21:
.LM22:
	add	t4,a0,a7
	lbu	t5,0(t4)
.LM23:
	add	t4,a1,a5
.LM24:
	addi	a4,a4,-1
.LVL6:
.LM25:
	sb	t5,0(t4)
.LM26:
	addi	a3,a7,1
.LVL7:
.LM27:
	addi	a6,a5,1
.LVL8:
.LM28:
.LM29:
.LM30:
	addi	t1,t1,-1
.LVL9:
.LM31:
.LM32:
	bne	a4,zero,.L3
.LM33:
	beq	t1,zero,.L3
.LM34:
.LVL10:
.LM35:
	add	a6,a1,a6
	sb	t3,0(a6)
.LM36:
.LVL11:
.LM37:
	add	a3,a0,a3
.LM38:
	lbu	a4,0(a3)
.LVL12:
.LM39:
	addi	a6,a5,2
.LVL13:
.LM40:
	addi	a3,a7,2
.LVL14:
.L3:
.LM41:
	mv	a5,a6
	mv	a7,a3
	j	.L2
	.cfi_endproc
.LFE0:
	.size	utils_dns_domain_get, .-utils_dns_domain_get
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x113
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL5
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
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x61
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x20
	.byte	0x5
	.4byte	0x76
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10c
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x20
	.byte	0x23
	.4byte	0x10c
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x3
	.string	"buf"
	.byte	0x35
	.4byte	0x10c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.string	"len"
	.byte	0x3f
	.4byte	0x111
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x22
	.byte	0x9
	.4byte	0x76
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0xc
	.4byte	0x76
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x14
	.4byte	0x76
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x1d
	.4byte	0x76
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x4
	.4byte	0x55
	.uleb128 0x4
	.4byte	0x76
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 34
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 32
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x14
	.uleb128 0x14
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LVL5-.LVL0
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
	.uleb128 .LVL5-.LVL0
	.uleb128 .LFE0-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS1:
	.uleb128 0x8
	.uleb128 0x18
	.uleb128 0x18
	.uleb128 0x1c
	.uleb128 0x1c
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL6-.LVL2
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL6-.LVL2
	.uleb128 .LVL8-.LVL2
	.uleb128 0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL2
	.uleb128 .LFE0-.LVL2
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS2:
	.uleb128 0x7
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x1a
	.uleb128 0x1a
	.uleb128 0x24
	.uleb128 0x24
	.uleb128 0x28
	.uleb128 0x28
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.LVL1
	.uleb128 .LVL7-.LVL1
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL7-.LVL1
	.uleb128 .LVL11-.LVL1
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL11-.LVL1
	.uleb128 .LVL14-.LVL1
	.uleb128 0x3
	.byte	0x81
	.sleb128 2
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.LVL1
	.uleb128 .LFE0-.LVL1
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS3:
	.uleb128 0x6
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x1b
	.uleb128 0x1b
	.uleb128 0x22
	.uleb128 0x22
	.uleb128 0x27
	.uleb128 0x27
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.LVL1
	.uleb128 .LVL8-.LVL1
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL8-.LVL1
	.uleb128 .LVL10-.LVL1
	.uleb128 0x1
	.byte	0x60
	.byte	0x4
	.uleb128 .LVL10-.LVL1
	.uleb128 .LVL13-.LVL1
	.uleb128 0x3
	.byte	0x7f
	.sleb128 2
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.LVL1
	.uleb128 .LFE0-.LVL1
	.uleb128 0x1
	.byte	0x60
	.byte	0
.LVUS4:
	.uleb128 0x4
	.uleb128 0
.LLST4:
	.byte	0x8
	.4byte	.LVL1
	.uleb128 .LFE0-.LVL1
	.uleb128 0x1
	.byte	0x56
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
.LLRL5:
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
	.uleb128 0x3
	.4byte	.LASF1
	.4byte	.LASF18
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF20
	.byte	0x1
	.4byte	.LASF21
	.byte	0x2
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x37
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
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x6
	.byte	0x15
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x18
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x1f
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x6
	.byte	0x10
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x3
	.sleb128 -13
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x21
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x18
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x16
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x1
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x16
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x18
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x11
	.byte	0x5
	.uleb128 0xa
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE0
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"records"
.LASF16:
	.string	"utils_dns_domain_get"
.LASF11:
	.string	"pos_in"
.LASF8:
	.string	"unsigned char"
.LASF10:
	.string	"long unsigned int"
.LASF9:
	.string	"short unsigned int"
.LASF14:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF12:
	.string	"pos_out"
.LASF3:
	.string	"unsigned int"
.LASF2:
	.string	"long long unsigned int"
.LASF15:
	.string	"uint8_t"
.LASF7:
	.string	"long long int"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF13:
	.string	"size_buf"
.LASF4:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF19:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF20:
	.string	"utils_dns.c"
.LASF18:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src"
.LASF21:
	.string	"stdint-gcc.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_dns.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/utils"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
