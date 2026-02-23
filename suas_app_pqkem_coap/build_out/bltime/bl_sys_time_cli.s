	.file	"bl_sys_time_cli.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.cmd_sys_time_now.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"BL SYS TIME time is\r\n"
	.section	.text.cmd_sys_time_now,"ax",@progbits
	.align	1
	.type	cmd_sys_time_now, @function
cmd_sys_time_now:
.LVL0:
.LFB9:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
	lui	a0,%hi(.LC0)
.LVL1:
.LM4:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
.LM5:
	li	a5,0
	li	a6,0
.LM6:
	addi	a0,a0,%lo(.LC0)
.LM7:
	sw	ra,44(sp)
	.cfi_offset 1, -4
.LM8:
	sw	a5,0(sp)
	sw	a6,4(sp)
.LM9:
.LM10:
.LM11:
	call	puts
.LVL2:
.LM12:
	mv	a0,sp
	call	bl_sys_time_get
.LVL3:
.LM13:
.LM14:
.LM15:
	lw	a0,0(sp)
	lw	a1,4(sp)
	li	a2,1000
	li	a3,0
	call	__udivdi3
.LVL4:
.LM16:
	addi	a1,sp,12
	call	utils_time_date_from_epoch
.LVL5:
.LM17:
.LM18:
	lw	ra,44(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	cmd_sys_time_now, .-cmd_sys_time_now
	.section	.text.bl_sys_time_cli_init,"ax",@progbits
	.align	1
	.globl	bl_sys_time_cli_init
	.type	bl_sys_time_cli_init, @function
bl_sys_time_cli_init:
.LFB10:
.LM19:
	.cfi_startproc
.LM20:
.LM21:
	li	a0,0
	ret
	.cfi_endproc
.LFE10:
	.size	bl_sys_time_cli_init, .-bl_sys_time_cli_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"bl_sys_time_now"
	.align	2
.LC2:
	.string	"sys time now"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 12
cmds_user:
	.word	.LC1
	.word	.LC2
	.word	cmd_sys_time_now
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x30c
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL5
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
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	0x7d
	.uleb128 0x4
	.4byte	0x84
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x5c
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x2b
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0xc
	.byte	0x3
	.byte	0x4c
	.byte	0x8
	.4byte	0xdb
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x3
	.byte	0x4d
	.byte	0x11
	.4byte	0x89
	.byte	0
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x3
	.byte	0x4e
	.byte	0x11
	.4byte	0x89
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x3
	.byte	0x50
	.byte	0xc
	.4byte	0xff
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0xa6
	.uleb128 0x10
	.4byte	0xfa
	.uleb128 0x3
	.4byte	0x78
	.uleb128 0x3
	.4byte	0x6a
	.uleb128 0x3
	.4byte	0x6a
	.uleb128 0x3
	.4byte	0xfa
	.byte	0
	.uleb128 0x4
	.4byte	0x78
	.uleb128 0x4
	.4byte	0xe0
	.uleb128 0x11
	.byte	0x14
	.byte	0x4
	.byte	0x20
	.byte	0x9
	.4byte	0x19d
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x4
	.byte	0x21
	.byte	0x13
	.4byte	0x40
	.byte	0
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x4
	.byte	0x22
	.byte	0x13
	.4byte	0x40
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x4
	.byte	0x23
	.byte	0x13
	.4byte	0x40
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x4
	.byte	0x24
	.byte	0x13
	.4byte	0x40
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x4
	.byte	0x25
	.byte	0x13
	.4byte	0x40
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x4
	.byte	0x26
	.byte	0x13
	.4byte	0x40
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x4
	.byte	0x27
	.byte	0x13
	.4byte	0x40
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x4
	.byte	0x28
	.byte	0x13
	.4byte	0x40
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x4
	.byte	0x29
	.byte	0x12
	.4byte	0x32
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x4
	.byte	0x2a
	.byte	0x12
	.4byte	0x32
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x4
	.byte	0x2b
	.byte	0x12
	.4byte	0x32
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x4
	.byte	0x2c
	.byte	0x3
	.4byte	0x104
	.uleb128 0x12
	.4byte	0xdb
	.4byte	0x1b9
	.uleb128 0x13
	.4byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x1a9
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x3c
	.byte	0x21
	.4byte	0x1b9
	.uleb128 0x5
	.byte	0x3
	.4byte	cmds_user
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x4
	.byte	0x2e
	.4byte	0x6a
	.4byte	0x1e9
	.uleb128 0x3
	.4byte	0x32
	.uleb128 0x3
	.4byte	0x1e9
	.byte	0
	.uleb128 0x4
	.4byte	0x19d
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x5
	.byte	0x25
	.4byte	0x6a
	.4byte	0x203
	.uleb128 0x3
	.4byte	0x203
	.byte	0
	.uleb128 0x4
	.4byte	0x9a
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x6
	.byte	0xe3
	.4byte	0x6a
	.4byte	0x21d
	.uleb128 0x3
	.4byte	0x89
	.byte	0
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x1
	.byte	0x40
	.byte	0x5
	.4byte	0x6a
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF41
	.byte	0x1
	.byte	0x25
	.byte	0xd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x306
	.uleb128 0xa
	.string	"buf"
	.byte	0x34
	.4byte	0x78
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xa
	.string	"len"
	.byte	0x4d
	.4byte	0x6a
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x66
	.4byte	0x6a
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x83
	.4byte	0xfa
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x27
	.byte	0xe
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	.LASF42
	.byte	0x1
	.byte	0x28
	.byte	0xe
	.4byte	0x8e
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x29
	.byte	0x17
	.4byte	0x19d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LVL2
	.4byte	0x208
	.4byte	0x2d8
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL3
	.4byte	0x1ee
	.4byte	0x2ec
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL4
	.4byte	0x306
	.uleb128 0x18
	.4byte	.LVL5
	.4byte	0x1cf
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF43
	.4byte	.LASF43
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x9
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 37
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 37
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
	.uleb128 0xc
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x15
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
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0x19
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
	.uleb128 0x3
	.uleb128 0x3
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
	.uleb128 .LFE9-.LVL0
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-1-.LVL0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL2-1-.LVL0
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
.LVUS2:
	.uleb128 0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-1-.LVL0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL2-1-.LVL0
	.uleb128 .LFE9-.LVL0
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-1-.LVL0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL2-1-.LVL0
	.uleb128 .LFE9-.LVL0
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
.LVUS4:
	.uleb128 0xd
	.uleb128 0xf
.LLST4:
	.byte	0x8
	.4byte	.LVL3
	.uleb128 .LVL4-1-.LVL3
	.uleb128 0x12
	.byte	0x72
	.sleb128 0
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2b
	.byte	0xa
	.2byte	0x3e8
	.byte	0xa8
	.uleb128 0x2b
	.byte	0x1b
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
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
	.4byte	.LFB9
	.uleb128 .LFE9-.LFB9
	.byte	0x7
	.4byte	.LFB10
	.uleb128 .LFE10-.LFB10
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
	.uleb128 0x7
	.4byte	.LASF1
	.4byte	.LASF44
	.4byte	.LASF45
	.4byte	.LASF46
	.4byte	.LASF47
	.4byte	.LASF48
	.4byte	.LASF49
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF50
	.byte	0x3
	.4byte	.LASF51
	.byte	0x5
	.4byte	.LASF52
	.byte	0x1
	.4byte	.LASF53
	.byte	0x4
	.4byte	.LASF54
	.byte	0x2
	.4byte	.LASF55
	.byte	0x6
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x3c
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x12
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x18
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x12
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x18
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x19
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
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x21
	.byte	0x5
	.uleb128 0x6
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
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
	.4byte	.LM19
	.byte	0x57
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE10
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"bl_sys_time_cli_init"
.LASF34:
	.string	"argv"
.LASF14:
	.string	"uint64_t"
.LASF37:
	.string	"date"
.LASF2:
	.string	"long long unsigned int"
.LASF26:
	.string	"ntp_year"
.LASF5:
	.string	"unsigned char"
.LASF31:
	.string	"bl_sys_time_get"
.LASF19:
	.string	"ntp_minute"
.LASF9:
	.string	"long unsigned int"
.LASF22:
	.string	"ntp_date"
.LASF7:
	.string	"short unsigned int"
.LASF38:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF16:
	.string	"help"
.LASF39:
	.string	"cli_command"
.LASF41:
	.string	"cmd_sys_time_now"
.LASF29:
	.string	"utils_time_date_t"
.LASF24:
	.string	"leap_days"
.LASF30:
	.string	"utils_time_date_from_epoch"
.LASF3:
	.string	"unsigned int"
.LASF12:
	.string	"char"
.LASF27:
	.string	"days_since_epoch"
.LASF20:
	.string	"ntp_second"
.LASF23:
	.string	"ntp_month"
.LASF11:
	.string	"long double"
.LASF18:
	.string	"ntp_hour"
.LASF10:
	.string	"long long int"
.LASF43:
	.string	"__udivdi3"
.LASF42:
	.string	"seconds"
.LASF15:
	.string	"name"
.LASF25:
	.string	"leap_year_ind"
.LASF6:
	.string	"short int"
.LASF33:
	.string	"argc"
.LASF28:
	.string	"day_of_year"
.LASF13:
	.string	"uint32_t"
.LASF8:
	.string	"long int"
.LASF32:
	.string	"puts"
.LASF4:
	.string	"signed char"
.LASF21:
	.string	"ntp_week_day"
.LASF35:
	.string	"cmds_user"
.LASF17:
	.string	"function"
.LASF36:
	.string	"epoch_ms"
	.section	.debug_line_str,"MS",@progbits,1
.LASF50:
	.string	"bl_sys_time_cli.c"
.LASF54:
	.string	"bl_sys_time.h"
.LASF49:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF46:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bltime"
.LASF52:
	.string	"cli.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/bltime"
.LASF47:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/include"
.LASF45:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bltime/include"
.LASF51:
	.string	"stdint-gcc.h"
.LASF48:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF55:
	.string	"stdio.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bltime/bl_sys_time_cli.c"
.LASF44:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/cli/cli/include"
.LASF53:
	.string	"utils_time.h"
	.globl	__udivdi3
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
