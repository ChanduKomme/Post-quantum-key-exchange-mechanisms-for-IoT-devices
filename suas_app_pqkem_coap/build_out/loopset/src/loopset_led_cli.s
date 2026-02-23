	.file	"loopset_led_cli.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.cmd_loopset_led_trigger.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Usage: %s pin 0/1[0:Lo Active, 1:Hi Active] 0/1[0:Hearbeat, 1:Blink]\r\n"
	.align	2
.LC1:
	.string	"Illegal Params\r\n"
	.section	.text.cmd_loopset_led_trigger,"ax",@progbits
	.align	1
	.globl	cmd_loopset_led_trigger
	.type	cmd_loopset_led_trigger, @function
cmd_loopset_led_trigger:
.LVL0:
.LFB3:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
	li	a5,4
	beq	a2,a5,.L2
.LM5:
	lw	a1,0(a3)
.LVL1:
.LM6:
	lui	a0,%hi(.LC0)
.LVL2:
.LM7:
	addi	a0,a0,%lo(.LC0)
	tail	printf
.LVL3:
.L2:
.LBB4:
.LBB5:
.LM8:
	lw	a0,4(a3)
.LVL4:
.LM9:
.LBE5:
.LBE4:
.LM10:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a3
.LVL5:
.LBB14:
.LBI4:
.LM11:
.LBB6:
.LM12:
.LBE6:
.LBE14:
.LM13:
	sw	s2,0(sp)
	.cfi_offset 18, -16
.LBB15:
.LBB7:
.LM14:
	call	atoi
.LVL6:
.LM15:
	mv	s1,a0
.LVL7:
.LM16:
.LM17:
	lw	a0,8(s0)
	call	atoi
.LVL8:
	mv	s2,a0
.LVL9:
.LM18:
.LM19:
	lw	a0,12(s0)
.LVL10:
.LM20:
	call	atoi
.LVL11:
.LM21:
.LM22:
	or	a0,s2,a0
.LVL12:
.LM23:
	blt	a0,zero,.L5
.LM24:
	bgt	s1,zero,.L3
.L5:
.LM25:
.LBE7:
.LBE15:
.LM26:
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL13:
.LM27:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL14:
.LM28:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL15:
.LBB16:
.LBB8:
.LM29:
	lui	a0,%hi(.LC1)
.LBE8:
.LBE16:
.LM30:
.LBB17:
.LBB9:
.LM31:
	addi	a0,a0,%lo(.LC1)
.LBE9:
.LBE17:
.LM32:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB18:
.LBB10:
.LM33:
	tail	puts
.LVL16:
.L3:
	.cfi_restore_state
.LM34:
.LBE10:
.LBE18:
.LM35:
	lw	s0,8(sp)
	.cfi_restore 8
.LVL17:
.LM36:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s2,0(sp)
	.cfi_restore 18
.LVL18:
.LBB19:
.LBB11:
.LM37:
	mv	a0,s1
.LBE11:
.LBE19:
.LM38:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL19:
.LBB20:
.LBB12:
.LM39:
	li	a1,100
.LBE12:
.LBE20:
.LM40:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB21:
.LBB13:
.LM41:
	tail	loopset_led_trigger
.LVL20:
.LM42:
.LBE13:
.LBE21:
	.cfi_endproc
.LFE3:
	.size	cmd_loopset_led_trigger, .-cmd_loopset_led_trigger
	.section	.text.loopset_led_cli_init,"ax",@progbits
	.align	1
	.globl	loopset_led_cli_init
	.type	loopset_led_cli_init, @function
loopset_led_cli_init:
.LFB4:
.LM43:
	.cfi_startproc
.LM44:
.LM45:
	li	a0,0
	ret
	.cfi_endproc
.LFE4:
	.size	loopset_led_cli_init, .-loopset_led_cli_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"loopset-led-trigger"
	.align	2
.LC3:
	.string	"Trigger LED on PIN"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 12
cmds_user:
	.word	.LC2
	.word	.LC3
	.word	cmd_loopset_led_trigger
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2e7
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL11
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
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	0x7d
	.uleb128 0x4
	.4byte	0x84
	.uleb128 0x12
	.4byte	0x89
	.uleb128 0x13
	.4byte	.LASF26
	.byte	0xc
	.byte	0x2
	.byte	0x4c
	.byte	0x8
	.4byte	0xc5
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x4d
	.byte	0x11
	.4byte	0x89
	.byte	0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x4e
	.byte	0x11
	.4byte	0x89
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x50
	.byte	0xc
	.4byte	0xe9
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0x93
	.uleb128 0x14
	.4byte	0xe4
	.uleb128 0x2
	.4byte	0x78
	.uleb128 0x2
	.4byte	0x6a
	.uleb128 0x2
	.4byte	0x6a
	.uleb128 0x2
	.4byte	0xe4
	.byte	0
	.uleb128 0x4
	.4byte	0x78
	.uleb128 0x4
	.4byte	0xca
	.uleb128 0x15
	.4byte	0xc5
	.4byte	0xfe
	.uleb128 0x16
	.4byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0xee
	.uleb128 0x17
	.4byte	.LASF27
	.byte	0x1
	.byte	0x38
	.byte	0x21
	.4byte	0xfe
	.uleb128 0x5
	.byte	0x3
	.4byte	cmds_user
	.uleb128 0x18
	.4byte	.LASF19
	.byte	0x5
	.byte	0x25
	.byte	0x6
	.4byte	0x12c
	.uleb128 0x2
	.4byte	0x6a
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0xe3
	.4byte	0x6a
	.4byte	0x141
	.uleb128 0x2
	.4byte	0x89
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x51
	.4byte	0x6a
	.4byte	0x156
	.uleb128 0x2
	.4byte	0x89
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x3
	.byte	0xce
	.4byte	0x6a
	.4byte	0x16c
	.uleb128 0x2
	.4byte	0x8e
	.uleb128 0x19
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3c
	.byte	0x5
	.4byte	0x6a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF20
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.byte	0x1
	.4byte	0x1d8
	.uleb128 0xc
	.string	"buf"
	.byte	0x34
	.4byte	0x78
	.uleb128 0xc
	.string	"len"
	.byte	0x4d
	.4byte	0x6a
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x56
	.4byte	0x6a
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x63
	.4byte	0xe4
	.uleb128 0x1c
	.string	"pin"
	.byte	0x1
	.byte	0x26
	.byte	0x9
	.4byte	0x6a
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x13
	.4byte	0x6a
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x20
	.4byte	0x6a
	.byte	0
	.uleb128 0x1d
	.4byte	0x182
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	0x18f
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x3
	.4byte	0x199
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x3
	.4byte	0x1a3
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x3
	.4byte	0x1ad
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x8
	.4byte	0x1b7
	.uleb128 0x8
	.4byte	0x1c3
	.uleb128 0x8
	.4byte	0x1cd
	.uleb128 0x1e
	.4byte	0x182
	.4byte	.LBI4
	.byte	0xa
	.4byte	.LLRL4
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.4byte	0x2d6
	.uleb128 0x3
	.4byte	0x18f
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x3
	.4byte	0x199
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x1f
	.4byte	0x1a3
	.byte	0x4
	.uleb128 0x3
	.4byte	0x1ad
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x9
	.4byte	0x1b7
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x9
	.4byte	0x1c3
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x9
	.4byte	0x1cd
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0xa
	.4byte	.LVL6
	.4byte	0x141
	.uleb128 0xa
	.4byte	.LVL8
	.4byte	0x141
	.uleb128 0xa
	.4byte	.LVL11
	.4byte	0x141
	.uleb128 0x20
	.4byte	.LVL16
	.4byte	0x12c
	.4byte	0x2c5
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0xf
	.4byte	.LVL20
	.4byte	0x115
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x156
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x21
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 36
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x21
	.sleb128 36
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 38
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x19
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x1e
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0x8
	.uleb128 0x8
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
	.uleb128 .LVL3-.LVL0
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
	.uleb128 .LVL3-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LFE3-.LVL0
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
.LVUS1:
	.uleb128 0
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0xe
	.uleb128 0xe
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
	.uleb128 .LVL3-.LVL0
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
	.uleb128 .LVL3-.LVL0
	.uleb128 .LVL6-1-.LVL0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL6-1-.LVL0
	.uleb128 .LFE3-.LVL0
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
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-1-.LVL0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL3-1-.LVL0
	.uleb128 .LVL3-.LVL0
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
	.byte	0x4
	.uleb128 .LVL3-.LVL0
	.uleb128 .LVL6-1-.LVL0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL6-1-.LVL0
	.uleb128 .LFE3-.LVL0
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
.LVUS3:
	.uleb128 0
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0x1a
	.uleb128 0x1a
	.uleb128 0x21
	.uleb128 0x21
	.uleb128 0x23
	.uleb128 0x23
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-1-.LVL0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL3-1-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xd
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.LVL0
	.uleb128 .LVL6-1-.LVL0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL6-1-.LVL0
	.uleb128 .LVL13-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL13-.LVL0
	.uleb128 .LVL16-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xd
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL0
	.uleb128 .LVL17-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL17-.LVL0
	.uleb128 .LFE3-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xd
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 0xb
	.uleb128 0
.LLST5:
	.byte	0x8
	.4byte	.LVL5
	.uleb128 .LFE3-.LVL5
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
.LVUS6:
	.uleb128 0xb
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL6-1-.LVL5
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL6-1-.LVL5
	.uleb128 .LFE3-.LVL5
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
.LVUS7:
	.uleb128 0xa
	.uleb128 0x1a
	.uleb128 0x1a
	.uleb128 0x21
	.uleb128 0x21
	.uleb128 0x23
	.uleb128 0x23
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL13-.LVL5
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL13-.LVL5
	.uleb128 .LVL16-.LVL5
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xd
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL5
	.uleb128 .LVL17-.LVL5
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL17-.LVL5
	.uleb128 .LFE3-.LVL5
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xd
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 0xf
	.uleb128 0x1b
	.uleb128 0x21
	.uleb128 0x26
	.uleb128 0x26
	.uleb128 0x29
.LLST8:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL14-.LVL7
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL16-.LVL7
	.uleb128 .LVL19-.LVL7
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL19-.LVL7
	.uleb128 .LVL20-1-.LVL7
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS9:
	.uleb128 0x11
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x21
	.uleb128 0x24
.LLST9:
	.byte	0x6
	.4byte	.LVL9
	.byte	0x4
	.uleb128 .LVL9-.LVL9
	.uleb128 .LVL10-.LVL9
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL10-.LVL9
	.uleb128 .LVL15-.LVL9
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL16-.LVL9
	.uleb128 .LVL18-.LVL9
	.uleb128 0x1
	.byte	0x62
	.byte	0
.LVUS10:
	.uleb128 0x14
	.uleb128 0x16
.LLST10:
	.byte	0x8
	.4byte	.LVL11
	.uleb128 .LVL12-.LVL11
	.uleb128 0x1
	.byte	0x5a
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
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
	.uleb128 .LBB14-.LBB4
	.uleb128 .LBE14-.LBB4
	.byte	0x4
	.uleb128 .LBB15-.LBB4
	.uleb128 .LBE15-.LBB4
	.byte	0x4
	.uleb128 .LBB16-.LBB4
	.uleb128 .LBE16-.LBB4
	.byte	0x4
	.uleb128 .LBB17-.LBB4
	.uleb128 .LBE17-.LBB4
	.byte	0x4
	.uleb128 .LBB18-.LBB4
	.uleb128 .LBE18-.LBB4
	.byte	0x4
	.uleb128 .LBB19-.LBB4
	.uleb128 .LBE19-.LBB4
	.byte	0x4
	.uleb128 .LBB20-.LBB4
	.uleb128 .LBE20-.LBB4
	.byte	0x4
	.uleb128 .LBB21-.LBB4
	.uleb128 .LBE21-.LBB4
	.byte	0
.LLRL11:
	.byte	0x7
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
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
	.4byte	.LASF29
	.4byte	.LASF30
	.4byte	.LASF31
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF33
	.byte	0x3
	.4byte	.LASF34
	.byte	0x1
	.4byte	.LASF35
	.byte	0x4
	.4byte	.LASF36
	.byte	0x4
	.4byte	.LASF37
	.byte	0x2
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x3b
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
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x1c
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0xf
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x6
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x20
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x6
	.byte	0xf
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x1f
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x1
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x1
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x13
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x13
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x13
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE3
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM43
	.byte	0x53
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE4
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"active"
.LASF22:
	.string	"argv"
.LASF19:
	.string	"loopset_led_trigger"
.LASF5:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF25:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF14:
	.string	"help"
.LASF26:
	.string	"cli_command"
.LASF3:
	.string	"unsigned int"
.LASF2:
	.string	"long long unsigned int"
.LASF20:
	.string	"cmd_loopset_led_trigger"
.LASF17:
	.string	"atoi"
.LASF11:
	.string	"long double"
.LASF10:
	.string	"long long int"
.LASF27:
	.string	"cmds_user"
.LASF13:
	.string	"name"
.LASF18:
	.string	"printf"
.LASF24:
	.string	"type"
.LASF6:
	.string	"short int"
.LASF21:
	.string	"argc"
.LASF8:
	.string	"long int"
.LASF12:
	.string	"char"
.LASF16:
	.string	"puts"
.LASF4:
	.string	"signed char"
.LASF28:
	.string	"loopset_led_cli_init"
.LASF15:
	.string	"function"
	.section	.debug_line_str,"MS",@progbits,1
.LASF31:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src/loopset_led_cli.c"
.LASF30:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/include"
.LASF32:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF34:
	.string	"cli.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/loopset"
.LASF37:
	.string	"loopset.h"
.LASF33:
	.string	"loopset_led_cli.c"
.LASF35:
	.string	"stdio.h"
.LASF29:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/cli/cli/include"
.LASF36:
	.string	"stdlib.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
