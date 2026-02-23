	.file	"sys.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.sys_msleep,"ax",@progbits
	.align	1
	.globl	sys_msleep
	.type	sys_msleep, @function
sys_msleep:
.LVL0:
.LFB5:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
	beq	a0,zero,.L8
.LM4:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
.LBB2:
.LM5:
	li	a1,0
	.cfi_offset 8, -8
	mv	s0,a0
.LM6:
.LM7:
.LM8:
	addi	a0,sp,12
.LVL1:
.LM9:
.LBE2:
.LM10:
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LBB3:
.LM11:
	call	sys_sem_new
.LVL2:
.LM12:
.LM13:
	bne	a0,zero,.L1
.LM14:
	mv	a1,s0
	addi	a0,sp,12
.LVL3:
.LM15:
	call	sys_arch_sem_wait
.LVL4:
.LM16:
	addi	a0,sp,12
	call	sys_sem_free
.LVL5:
.L1:
.LBE3:
.LM17:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL6:
.LM18:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L8:
.LM19:
	ret
	.cfi_endproc
.LFE5:
	.size	sys_msleep, .-sys_msleep
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x24e
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL3
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x40
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x63
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x7d
	.byte	0x11
	.4byte	0x8b
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x7e
	.byte	0x10
	.4byte	0x7f
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x81
	.byte	0x12
	.4byte	0x97
	.uleb128 0xb
	.byte	0x5
	.byte	0x1
	.4byte	0x40
	.byte	0x4
	.byte	0x35
	.byte	0xe
	.4byte	0x13c
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0
	.uleb128 0x1
	.4byte	.LASF20
	.sleb128 -1
	.uleb128 0x1
	.4byte	.LASF21
	.sleb128 -2
	.uleb128 0x1
	.4byte	.LASF22
	.sleb128 -3
	.uleb128 0x1
	.4byte	.LASF23
	.sleb128 -4
	.uleb128 0x1
	.4byte	.LASF24
	.sleb128 -5
	.uleb128 0x1
	.4byte	.LASF25
	.sleb128 -6
	.uleb128 0x1
	.4byte	.LASF26
	.sleb128 -7
	.uleb128 0x1
	.4byte	.LASF27
	.sleb128 -8
	.uleb128 0x1
	.4byte	.LASF28
	.sleb128 -9
	.uleb128 0x1
	.4byte	.LASF29
	.sleb128 -10
	.uleb128 0x1
	.4byte	.LASF30
	.sleb128 -11
	.uleb128 0x1
	.4byte	.LASF31
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF32
	.sleb128 -13
	.uleb128 0x1
	.4byte	.LASF33
	.sleb128 -14
	.uleb128 0x1
	.4byte	.LASF34
	.sleb128 -15
	.uleb128 0x1
	.4byte	.LASF35
	.sleb128 -16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x4
	.byte	0x60
	.byte	0xe
	.4byte	0xaf
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x5
	.byte	0x30
	.byte	0x22
	.4byte	0x154
	.uleb128 0x6
	.4byte	0x159
	.uleb128 0xd
	.4byte	.LASF43
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x6
	.byte	0x25
	.byte	0x17
	.4byte	0x148
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x7
	.byte	0x2c
	.byte	0x1b
	.4byte	0x15e
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x8
	.byte	0xe1
	.byte	0x6
	.4byte	0x188
	.uleb128 0x4
	.4byte	0x188
	.byte	0
	.uleb128 0x6
	.4byte	0x16a
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0xdb
	.4byte	0xbb
	.4byte	0x1a6
	.uleb128 0x4
	.4byte	0x188
	.uleb128 0x4
	.4byte	0xbb
	.byte	0
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0xc3
	.4byte	0x13c
	.4byte	0x1bf
	.uleb128 0x4
	.4byte	0x188
	.uleb128 0x4
	.4byte	0xa3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.string	"ms"
	.byte	0x1
	.byte	0x87
	.byte	0x12
	.4byte	0xbb
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x11
	.4byte	.LLRL1
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x1
	.byte	0x8a
	.byte	0xf
	.4byte	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"err"
	.byte	0x1
	.byte	0x8b
	.byte	0xb
	.4byte	0x13c
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x8
	.4byte	.LVL2
	.4byte	0x1a6
	.4byte	0x225
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.4byte	.LVL4
	.4byte	0x18d
	.4byte	0x23f
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL5
	.4byte	0x176
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x11
	.uleb128 0x12
	.uleb128 0x12
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
	.uleb128 .LVL6-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL6-.LVL0
	.uleb128 .LVL7-.LVL0
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
	.uleb128 .LVL7-.LVL0
	.uleb128 .LFE5-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS2:
	.uleb128 0xb
	.uleb128 0xe
.LLST2:
	.byte	0x8
	.4byte	.LVL2
	.uleb128 .LVL3-.LVL2
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
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
	.byte	0x5
	.4byte	.LBB2
	.byte	0x4
	.uleb128 .LBB2-.LBB2
	.uleb128 .LBE2-.LBB2
	.byte	0x4
	.uleb128 .LBB3-.LBB2
	.uleb128 .LBE3-.LBB2
	.byte	0
.LLRL3:
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
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
	.4byte	.LASF47
	.4byte	.LASF48
	.4byte	.LASF49
	.4byte	.LASF50
	.4byte	.LASF51
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x9
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF52
	.byte	0x3
	.4byte	.LASF53
	.byte	0x5
	.4byte	.LASF54
	.byte	0x4
	.4byte	.LASF55
	.byte	0x4
	.4byte	.LASF56
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.4byte	.LASF58
	.byte	0x2
	.4byte	.LASF59
	.byte	0x4
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x9e
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x6
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x1a
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x6
	.byte	0x16
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
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x1a
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE5
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF46:
	.string	"delaysem"
.LASF44:
	.string	"sys_sem_free"
.LASF25:
	.string	"ERR_VAL"
.LASF37:
	.string	"QueueHandle_t"
.LASF40:
	.string	"sys_arch_sem_wait"
.LASF17:
	.string	"s8_t"
.LASF27:
	.string	"ERR_USE"
.LASF29:
	.string	"ERR_ISCONN"
.LASF43:
	.string	"QueueDefinition"
.LASF36:
	.string	"err_t"
.LASF13:
	.string	"int8_t"
.LASF33:
	.string	"ERR_RST"
.LASF31:
	.string	"ERR_IF"
.LASF20:
	.string	"ERR_MEM"
.LASF9:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF42:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF32:
	.string	"ERR_ABRT"
.LASF16:
	.string	"u8_t"
.LASF23:
	.string	"ERR_RTE"
.LASF38:
	.string	"SemaphoreHandle_t"
.LASF18:
	.string	"u32_t"
.LASF24:
	.string	"ERR_INPROGRESS"
.LASF19:
	.string	"ERR_OK"
.LASF5:
	.string	"unsigned char"
.LASF3:
	.string	"unsigned int"
.LASF2:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint8_t"
.LASF45:
	.string	"sys_msleep"
.LASF34:
	.string	"ERR_CLSD"
.LASF21:
	.string	"ERR_BUF"
.LASF10:
	.string	"long long int"
.LASF41:
	.string	"sys_sem_new"
.LASF12:
	.string	"char"
.LASF35:
	.string	"ERR_ARG"
.LASF6:
	.string	"short int"
.LASF30:
	.string	"ERR_CONN"
.LASF15:
	.string	"uint32_t"
.LASF8:
	.string	"long int"
.LASF11:
	.string	"long double"
.LASF39:
	.string	"sys_sem_t"
.LASF4:
	.string	"signed char"
.LASF26:
	.string	"ERR_WOULDBLOCK"
.LASF22:
	.string	"ERR_TIMEOUT"
.LASF28:
	.string	"ERR_ALREADY"
	.section	.debug_line_str,"MS",@progbits,1
.LASF49:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core"
.LASF59:
	.string	"sys.h"
.LASF48:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/arch"
.LASF50:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip"
.LASF47:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/include"
.LASF55:
	.string	"err.h"
.LASF53:
	.string	"stdint-gcc.h"
.LASF56:
	.string	"queue.h"
.LASF57:
	.string	"semphr.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/lwip"
.LASF51:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF54:
	.string	"arch.h"
.LASF58:
	.string	"sys_arch.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/sys.c"
.LASF52:
	.string	"sys.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
