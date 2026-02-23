	.file	"hal_pds.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.hal_pds_init,"ax",@progbits
	.align	1
	.globl	hal_pds_init
	.type	hal_pds_init, @function
hal_pds_init:
.LFB9:
.LM1:
	.cfi_startproc
.LM2:
	tail	bl_pds_init
.LVL0:
	.cfi_endproc
.LFE9:
	.size	hal_pds_init, .-hal_pds_init
	.section	.text.hal_pds_fastboot_cfg,"ax",@progbits
	.align	1
	.globl	hal_pds_fastboot_cfg
	.type	hal_pds_fastboot_cfg, @function
hal_pds_fastboot_cfg:
.LVL1:
.LFB10:
.LM3:
	.cfi_startproc
.LM4:
	tail	bl_pds_fastboot_cfg
.LVL2:
.LM5:
	.cfi_endproc
.LFE10:
	.size	hal_pds_fastboot_cfg, .-hal_pds_fastboot_cfg
	.section	.text.hal_pds_enter_without_time_compensation,"ax",@progbits
	.align	1
	.globl	hal_pds_enter_without_time_compensation
	.type	hal_pds_enter_without_time_compensation, @function
hal_pds_enter_without_time_compensation:
.LVL3:
.LFB11:
.LM6:
	.cfi_startproc
.LM7:
	tail	bl_pds_enter
.LVL4:
.LM8:
	.cfi_endproc
.LFE11:
	.size	hal_pds_enter_without_time_compensation, .-hal_pds_enter_without_time_compensation
	.section	.text.hal_pds_enter_with_time_compensation,"ax",@progbits
	.align	1
	.globl	hal_pds_enter_with_time_compensation
	.type	hal_pds_enter_with_time_compensation, @function
hal_pds_enter_with_time_compensation:
.LVL5:
.LFB12:
.LM9:
	.cfi_startproc
.LM10:
.LM11:
.LM12:
.LM13:
.LM14:
.LM15:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
.LM16:
	addi	a0,sp,16
.LVL6:
.LM17:
	addi	a1,sp,20
.LVL7:
.LM18:
	sw	ra,44(sp)
	.cfi_offset 1, -4
.LM19:
	call	HBN_Get_RTC_Timer_Val
.LVL8:
.LM20:
	mv	a1,s1
	mv	a0,s0
	call	bl_pds_enter
.LVL9:
.LM21:
	addi	a1,sp,28
	addi	a0,sp,24
	call	HBN_Get_RTC_Timer_Val
.LVL10:
.LM22:
.LM23:
.LM24:
	lw	a4,16(sp)
	lw	a5,24(sp)
	sub	a5,a5,a4
.LVL11:
.LM25:
.LM26:
	srli	a4,a5,11
.LM27:
	srli	a0,a5,5
.LM28:
	srli	a5,a5,12
.LVL12:
.LM29:
	add	a5,a4,a5
	sub	a0,a0,a5
.LVL13:
.LM30:
	sw	a0,12(sp)
	call	vTaskStepTick
.LVL14:
.LM31:
.LM32:
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL15:
.LM33:
	lw	a0,12(sp)
	lw	s1,36(sp)
	.cfi_restore 9
.LVL16:
.LM34:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LVL17:
.LM35:
	jr	ra
	.cfi_endproc
.LFE12:
	.size	hal_pds_enter_with_time_compensation, .-hal_pds_enter_with_time_compensation
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2de
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xd
	.4byte	.LASF33
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
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x6f
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xac
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0x8b
	.uleb128 0x10
	.byte	0x4
	.4byte	0x63
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0x63
	.uleb128 0x11
	.4byte	0xbe
	.uleb128 0x12
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x9be
	.byte	0x6
	.4byte	0xe2
	.uleb128 0x3
	.4byte	0xca
	.byte	0
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x7
	.2byte	0x1b5
	.byte	0xd
	.4byte	0xac
	.4byte	0xfe
	.uleb128 0x3
	.4byte	0xb8
	.uleb128 0x3
	.4byte	0xb8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x2b
	.4byte	0x113
	.uleb128 0x3
	.4byte	0x63
	.uleb128 0x3
	.4byte	0x63
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x2a
	.4byte	0x123
	.uleb128 0x3
	.4byte	0x63
	.byte	0
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x6
	.byte	0x29
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF36
	.byte	0x1
	.byte	0x35
	.byte	0xa
	.4byte	0x63
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x227
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x35
	.byte	0x38
	.4byte	0x63
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x35
	.byte	0x4b
	.4byte	0x63
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x37
	.byte	0xe
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x37
	.byte	0x21
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x38
	.byte	0xe
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x38
	.byte	0x20
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x39
	.4byte	0x63
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x3a
	.4byte	0x63
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x8
	.4byte	.LVL8
	.4byte	0xe2
	.4byte	0x1e1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	.LVL9
	.4byte	0xfe
	.4byte	0x1fb
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL10
	.4byte	0xe2
	.4byte	0x215
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LVL14
	.4byte	0xcf
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x30
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x286
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x30
	.byte	0x37
	.4byte	0x63
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x30
	.byte	0x4a
	.4byte	0x63
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xc
	.4byte	.LVL4
	.4byte	0xfe
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x2
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
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x2b
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c5
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x2b
	.byte	0x24
	.4byte	0x63
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xc
	.4byte	.LVL2
	.4byte	0x113
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF37
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LVL0
	.4byte	0x123
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.sleb128 6
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
	.uleb128 0xc
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0x18
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
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
.LVUS3:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0x18
	.uleb128 0x18
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL6-.LVL5
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL6-.LVL5
	.uleb128 .LVL15-.LVL5
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL15-.LVL5
	.uleb128 .LFE12-.LVL5
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
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0x19
	.uleb128 0x19
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL7-.LVL5
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL7-.LVL5
	.uleb128 .LVL16-.LVL5
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL16-.LVL5
	.uleb128 .LFE12-.LVL5
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
.LVUS5:
	.uleb128 0x10
	.uleb128 0x14
	.uleb128 0x14
	.uleb128 0x16
.LLST5:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-.LVL11
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL12-.LVL11
	.uleb128 .LVL14-1-.LVL11
	.uleb128 0x8
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 0x15
	.uleb128 0x16
	.uleb128 0x16
	.uleb128 0x1a
	.uleb128 0x1a
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL14-1-.LVL13
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL14-1-.LVL13
	.uleb128 .LVL17-.LVL13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x4
	.uleb128 .LVL17-.LVL13
	.uleb128 .LFE12-.LVL13
	.uleb128 0x2
	.byte	0x72
	.sleb128 -36
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL4-1-.LVL3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL4-1-.LVL3
	.uleb128 .LFE11-.LVL3
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
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL4-1-.LVL3
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL4-1-.LVL3
	.uleb128 .LFE11-.LVL3
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
.LVUS0:
	.uleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-1-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL2-1-.LVL1
	.uleb128 .LFE10-.LVL1
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
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
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
.LLRL7:
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
	.4byte	.LASF38
	.4byte	.LASF39
	.4byte	.LASF40
	.4byte	.LASF41
	.4byte	.LASF42
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x8
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF43
	.byte	0x4
	.4byte	.LASF44
	.byte	0x5
	.4byte	.LASF45
	.byte	0x1
	.4byte	.LASF46
	.byte	0x3
	.4byte	.LASF47
	.byte	0x2
	.4byte	.LASF48
	.byte	0x4
	.4byte	.LASF49
	.byte	0x1
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x38
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE9
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM3
	.byte	0x42
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE10
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM6
	.byte	0x47
	.byte	0x5
	.uleb128 0x1
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE11
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM9
	.byte	0x4c
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM11-.LM10
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
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x6
	.byte	0x11
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x11
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x25
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x63
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x1
	.byte	0x5
	.uleb128 0x3e
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x1
	.byte	0x5
	.uleb128 0x89
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM31-.LM30
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
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE12
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"TIMEOUT"
.LASF18:
	.string	"TickType_t"
.LASF7:
	.string	"long int"
.LASF9:
	.string	"short unsigned int"
.LASF37:
	.string	"hal_pds_init"
.LASF30:
	.string	"hal_pds_enter_without_time_compensation"
.LASF3:
	.string	"unsigned int"
.LASF26:
	.string	"rtcLowAfterSleep"
.LASF20:
	.string	"bl_pds_enter"
.LASF4:
	.string	"unsigned char"
.LASF13:
	.string	"SUCCESS"
.LASF10:
	.string	"long unsigned int"
.LASF32:
	.string	"addr"
.LASF33:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF16:
	.string	"uint32_t"
.LASF24:
	.string	"rtcLowBeforeSleep"
.LASF19:
	.string	"vTaskStepTick"
.LASF31:
	.string	"hal_pds_fastboot_cfg"
.LASF27:
	.string	"rtcHighAfterSleep"
.LASF22:
	.string	"pdsLevel"
.LASF25:
	.string	"rtcHighBeforeSleep"
.LASF2:
	.string	"long long unsigned int"
.LASF23:
	.string	"pdsSleepCycles"
.LASF21:
	.string	"bl_pds_fastboot_cfg"
.LASF36:
	.string	"hal_pds_enter_with_time_compensation"
.LASF8:
	.string	"long long int"
.LASF34:
	.string	"HBN_Get_RTC_Timer_Val"
.LASF12:
	.string	"char"
.LASF35:
	.string	"bl_pds_init"
.LASF6:
	.string	"short int"
.LASF29:
	.string	"actualSleepDuration_ms"
.LASF14:
	.string	"ERROR"
.LASF11:
	.string	"long double"
.LASF5:
	.string	"signed char"
.LASF28:
	.string	"actualSleepDuration_32768cycles"
.LASF17:
	.string	"BL_Err_Type"
	.section	.debug_line_str,"MS",@progbits,1
.LASF43:
	.string	"hal_pds.c"
.LASF38:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/hal_drv"
.LASF45:
	.string	"bl602_common.h"
.LASF39:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/include"
.LASF48:
	.string	"bl_pds.h"
.LASF44:
	.string	"stdint-gcc.h"
.LASF41:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal"
.LASF42:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF49:
	.string	"bl602_hbn.h"
.LASF46:
	.string	"portmacro.h"
.LASF40:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_pds.c"
.LASF47:
	.string	"task.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
