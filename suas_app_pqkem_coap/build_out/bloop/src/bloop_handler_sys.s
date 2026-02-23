	.file	"bloop_handler_sys.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.loop_evt_entity_sys_handler.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[SYS] [MSG] called with msg info\r\n    priority %u\r\n    dst %u\r\n    msgid %u\r\n    src %u\r\n    arg1 %p\r\n    arg2 %p\r\n"
	.section	.text.loop_evt_entity_sys_handler,"ax",@progbits
	.align	1
	.type	loop_evt_entity_sys_handler, @function
loop_evt_entity_sys_handler:
.LVL0:
.LFB23:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM4:
	mv	a1,a2
.LVL1:
.LM5:
	lw	a6,12(a2)
	lw	a5,8(a2)
	lbu	a4,7(a2)
	lbu	a3,6(a2)
	lbu	a1,4(a1)
	lbu	a2,5(a2)
.LVL2:
.LM6:
	lui	a0,%hi(.LC0)
.LVL3:
.LM7:
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL4:
.LM8:
.LM9:
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	loop_evt_entity_sys_handler, .-loop_evt_entity_sys_handler
	.section	.rodata.loop_evt_entity_sys_evt.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"[SYS] [EVT] called with bitmap_evt %08lx, bitmap_task %08lx\r\n"
	.align	2
.LC2:
	.string	"bloop_handler_sys.c"
	.align	2
.LC3:
	.string	"[ASSERT] [ERR] %s:%d\r\n"
	.section	.text.loop_evt_entity_sys_evt,"ax",@progbits
	.align	1
	.type	loop_evt_entity_sys_evt, @function
loop_evt_entity_sys_evt:
.LVL5:
.LFB22:
.LM10:
	.cfi_startproc
.LM11:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a2
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
.LM12:
	lw	s0,0(a3)
.LM13:
	sw	s2,0(sp)
	sw	ra,12(sp)
	.cfi_offset 18, -16
	.cfi_offset 1, -4
.LM14:
	lw	a1,0(a5)
.LVL6:
.LM15:
	mv	s2,a0
.LM16:
.LVL7:
.LM17:
	lui	a0,%hi(.LC1)
.LVL8:
.LM18:
	mv	a2,s0
.LVL9:
.LM19:
	addi	a0,a0,%lo(.LC1)
.LM20:
	mv	s1,a3
.LM21:
	call	printf
.LVL10:
.LDL1:
.LM22:
.LM23:
	andi	a5,s0,1
.LM24:
	beq	a5,zero,.L4
.LM25:
	mv	a0,s2
	call	bloop_status_dump
.LVL11:
.LM26:
.LM27:
.LM28:
.LM29:
	andi	s0,s0,-2
.LVL12:
.L4:
.LM30:
.LM31:
.LM32:
	beq	s0,zero,.L6
.LVL13:
.LBB4:
.LBI4:
.LM33:
.LBB5:
.LM34:
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC3)
	li	a2,46
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL14:
.L7:
.LM35:
.LM36:
.LM37:
	j	.L7
.LVL15:
.L6:
.LM38:
.LBE5:
.LBE4:
.LM39:
.LM40:
	sw	zero,0(s1)
.LM41:
.LM42:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL16:
.LM43:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL17:
.LM44:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	loop_evt_entity_sys_evt, .-loop_evt_entity_sys_evt
	.globl	bloop_handler_sys
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"SYS [built-in]"
	.section	.data.bloop_handler_sys,"aw"
	.align	2
	.type	bloop_handler_sys, @object
	.size	bloop_handler_sys, 12
bloop_handler_sys:
	.word	.LC4
	.word	loop_evt_entity_sys_evt
	.word	loop_evt_entity_sys_handler
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x58b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL12
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
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x17
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xe
	.4byte	0x7a
	.uleb128 0x3
	.4byte	0x81
	.uleb128 0x18
	.4byte	0x86
	.uleb128 0xc
	.4byte	.LASF13
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x40
	.uleb128 0xc
	.4byte	.LASF14
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x5c
	.uleb128 0xc
	.4byte	.LASF15
	.byte	0x3
	.byte	0x46
	.byte	0x25
	.4byte	0xb4
	.uleb128 0x3
	.4byte	0xb9
	.uleb128 0x19
	.4byte	.LASF62
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x4
	.byte	0x26
	.4byte	0xd8
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x4
	.byte	0x28
	.byte	0x1c
	.4byte	0xd8
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	0xbe
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x8
	.byte	0x4
	.byte	0x2b
	.4byte	0x104
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2e
	.byte	0x1c
	.4byte	0xd8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x4
	.byte	0x30
	.byte	0x1c
	.4byte	0xd8
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF21
	.byte	0x8
	.byte	0x4
	.2byte	0x118
	.byte	0x10
	.4byte	0x12b
	.uleb128 0xf
	.4byte	.LASF22
	.2byte	0x119
	.4byte	0x12b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF18
	.2byte	0x11a
	.4byte	0x12b
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	0x104
	.uleb128 0x1b
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x11b
	.byte	0x3
	.4byte	0x104
	.uleb128 0x1c
	.byte	0x4
	.byte	0x5
	.byte	0x2e
	.byte	0x9
	.4byte	0x17b
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2f
	.byte	0x15
	.4byte	0x90
	.byte	0
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x5
	.byte	0x30
	.byte	0x15
	.4byte	0x90
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x5
	.byte	0x31
	.byte	0x15
	.4byte	0x90
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x5
	.byte	0x32
	.byte	0x15
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.byte	0x5
	.4byte	0x19b
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x2d
	.byte	0xf
	.4byte	0x78
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x33
	.byte	0xb
	.4byte	0x13d
	.byte	0
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x18
	.byte	0x5
	.byte	0x2a
	.4byte	0x1f2
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x5
	.byte	0x2b
	.byte	0x1b
	.4byte	0xbe
	.byte	0
	.uleb128 0x11
	.string	"u"
	.byte	0x34
	.byte	0x7
	.4byte	0x17b
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x5
	.byte	0x35
	.byte	0xb
	.4byte	0x78
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x5
	.byte	0x36
	.byte	0xb
	.4byte	0x78
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x5
	.byte	0x37
	.byte	0x12
	.4byte	0x32
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x5
	.byte	0x38
	.byte	0x12
	.4byte	0x32
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x10
	.byte	0x5
	.byte	0x3b
	.4byte	0x233
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x5
	.byte	0x3c
	.byte	0x12
	.4byte	0x32
	.byte	0
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x5
	.byte	0x3d
	.byte	0x12
	.4byte	0x32
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x5
	.byte	0x3e
	.byte	0x12
	.4byte	0x32
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x5
	.byte	0x3f
	.byte	0x12
	.4byte	0x32
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0xc
	.byte	0x5
	.byte	0x42
	.4byte	0x265
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x5
	.byte	0x43
	.byte	0x11
	.4byte	0x86
	.byte	0
	.uleb128 0x11
	.string	"evt"
	.byte	0x44
	.byte	0xb
	.4byte	0x335
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x5
	.byte	0x45
	.byte	0xb
	.4byte	0x358
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	0x233
	.uleb128 0x12
	.4byte	0x6a
	.4byte	0x288
	.uleb128 0x4
	.4byte	0x288
	.uleb128 0x4
	.4byte	0x32b
	.uleb128 0x4
	.4byte	0x330
	.uleb128 0x4
	.4byte	0x330
	.byte	0
	.uleb128 0x3
	.4byte	0x28d
	.uleb128 0x1e
	.4byte	.LASF43
	.2byte	0x4a0
	.byte	0x5
	.byte	0x4b
	.byte	0x8
	.4byte	0x32b
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x5
	.byte	0x4c
	.byte	0x12
	.4byte	0xa8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x5
	.byte	0x4d
	.byte	0xe
	.4byte	0x9c
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x5
	.byte	0x4e
	.byte	0xe
	.4byte	0x9c
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x5
	.byte	0x4f
	.byte	0xe
	.4byte	0x9c
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x5
	.byte	0x50
	.byte	0xe
	.4byte	0x35d
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x5
	.byte	0x51
	.byte	0xe
	.4byte	0x35d
	.byte	0x90
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x52
	.byte	0x17
	.4byte	0x36c
	.2byte	0x110
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x53
	.byte	0x27
	.4byte	0x37b
	.2byte	0x210
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x54
	.byte	0x24
	.4byte	0x38a
	.2byte	0x410
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x56
	.byte	0x13
	.4byte	0x130
	.2byte	0x490
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x57
	.byte	0x13
	.4byte	0x130
	.2byte	0x498
	.byte	0
	.uleb128 0x3
	.4byte	0x265
	.uleb128 0x3
	.4byte	0x9c
	.uleb128 0x3
	.4byte	0x26a
	.uleb128 0x12
	.4byte	0x6a
	.4byte	0x353
	.uleb128 0x4
	.4byte	0x288
	.uleb128 0x4
	.4byte	0x32b
	.uleb128 0x4
	.4byte	0x353
	.byte	0
	.uleb128 0x3
	.4byte	0x19b
	.uleb128 0x3
	.4byte	0x33a
	.uleb128 0x9
	.4byte	0x9c
	.4byte	0x36c
	.uleb128 0xa
	.4byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	0xdd
	.4byte	0x37b
	.uleb128 0xa
	.4byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	0x1f2
	.4byte	0x38a
	.uleb128 0xa
	.4byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	0x32b
	.4byte	0x399
	.uleb128 0xa
	.4byte	0x32
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF63
	.byte	0x5
	.byte	0x6d
	.byte	0x20
	.4byte	0x233
	.uleb128 0x20
	.4byte	0x399
	.byte	0x1
	.byte	0x4c
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	bloop_handler_sys
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0x5
	.byte	0x72
	.4byte	0x6a
	.4byte	0x3c8
	.uleb128 0x4
	.4byte	0x288
	.byte	0
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x6
	.byte	0xce
	.4byte	0x6a
	.4byte	0x3de
	.uleb128 0x4
	.4byte	0x8b
	.uleb128 0x21
	.byte	0
	.uleb128 0x22
	.4byte	.LASF64
	.byte	0x1
	.byte	0x39
	.byte	0xc
	.4byte	0x6a
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x444
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x49
	.4byte	0x288
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x7e
	.4byte	0x32b
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x23
	.string	"msg"
	.byte	0x1
	.byte	0x39
	.byte	0x98
	.4byte	0x353
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xd
	.4byte	.LVL4
	.4byte	0x3c8
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF65
	.byte	0x1
	.byte	0x23
	.byte	0xc
	.4byte	0x6a
	.byte	0x1
	.4byte	0x496
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x35
	.4byte	0x288
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x6a
	.4byte	0x32b
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x7d
	.4byte	0x330
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x93
	.4byte	0x330
	.uleb128 0x25
	.string	"map"
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.4byte	0x9c
	.uleb128 0x26
	.4byte	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.4byte	.LDL1
	.byte	0
	.uleb128 0x27
	.4byte	0x444
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	0x455
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x5
	.4byte	0x45f
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x5
	.4byte	0x469
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x5
	.4byte	0x473
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x28
	.4byte	0x47d
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x29
	.4byte	0x444
	.4byte	.LBI4
	.byte	0x17
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x23
	.byte	0xc
	.4byte	0x560
	.uleb128 0x5
	.4byte	0x455
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x5
	.4byte	0x45f
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x5
	.4byte	0x469
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x5
	.4byte	0x473
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x2a
	.4byte	0x47d
	.uleb128 0x2b
	.4byte	0x489
	.uleb128 0xd
	.4byte	.LVL14
	.4byte	0x3c8
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL10
	.4byte	0x3c8
	.4byte	0x57d
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL11
	.4byte	0x3b3
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x82
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 31
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
	.sleb128 35
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 27
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x21
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 57
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x17
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x1f
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL3-.LVL0
	.uleb128 .LFE23-.LVL0
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
	.uleb128 0x4
	.uleb128 0x4
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
	.uleb128 .LFE23-.LVL0
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
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LFE23-.LVL0
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
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0x22
	.uleb128 0x22
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL8-.LVL5
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL8-.LVL5
	.uleb128 .LVL17-.LVL5
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL17-.LVL5
	.uleb128 .LFE22-.LVL5
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
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL6-.LVL5
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL6-.LVL5
	.uleb128 .LFE22-.LVL5
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
	.uleb128 0
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0
.LLST5:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL9-.LVL5
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL9-.LVL5
	.uleb128 .LVL10-1-.LVL5
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL10-1-.LVL5
	.uleb128 .LFE22-.LVL5
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
.LVUS6:
	.uleb128 0
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x21
	.uleb128 0x21
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL10-1-.LVL5
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL10-1-.LVL5
	.uleb128 .LVL16-.LVL5
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL16-.LVL5
	.uleb128 .LFE22-.LVL5
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
.LVUS7:
	.uleb128 0x7
	.uleb128 0x11
	.uleb128 0x11
	.uleb128 0x14
	.uleb128 0x14
	.uleb128 0x17
.LLST7:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL11-.LVL7
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL11-.LVL7
	.uleb128 .LVL12-.LVL7
	.uleb128 0x6
	.byte	0x78
	.sleb128 0
	.byte	0x9
	.byte	0xfe
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL12-.LVL7
	.uleb128 .LVL13-.LVL7
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS8:
	.uleb128 0x18
	.uleb128 0x1c
.LLST8:
	.byte	0x8
	.4byte	.LVL13
	.uleb128 .LVL15-.LVL13
	.uleb128 0x1
	.byte	0x62
	.byte	0
.LVUS9:
	.uleb128 0x18
	.uleb128 0x1c
.LLST9:
	.byte	0x8
	.4byte	.LVL13
	.uleb128 .LVL15-.LVL13
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
.LVUS10:
	.uleb128 0x18
	.uleb128 0x1c
.LLST10:
	.byte	0x8
	.4byte	.LVL13
	.uleb128 .LVL15-.LVL13
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
.LVUS11:
	.uleb128 0x18
	.uleb128 0x1c
.LLST11:
	.byte	0x8
	.4byte	.LVL13
	.uleb128 .LVL15-.LVL13
	.uleb128 0x1
	.byte	0x59
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
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
	.4byte	.LFB23
	.uleb128 .LFE23-.LFB23
	.byte	0x7
	.4byte	.LFB22
	.uleb128 .LFE22-.LFB22
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
	.4byte	.LASF67
	.4byte	.LASF68
	.4byte	.LASF69
	.4byte	.LASF70
	.4byte	.LASF71
	.4byte	.LASF72
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF73
	.byte	0x3
	.4byte	.LASF74
	.byte	0x5
	.4byte	.LASF75
	.byte	0x1
	.4byte	.LASF76
	.byte	0x4
	.4byte	.LASF77
	.byte	0x2
	.4byte	.LASF78
	.byte	0x6
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x50
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
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x6
	.byte	0x25
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE23
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM10
	.byte	0x3a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x18
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x6
	.byte	0x18
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
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x19
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x13
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x6
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x22
	.byte	0x5
	.uleb128 0x21
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1
	.byte	0x5
	.uleb128 0x60
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x1
	.byte	0x5
	.uleb128 0x6c
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x1
	.byte	0x5
	.uleb128 0x66
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x66
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE22
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"header"
.LASF59:
	.string	"bitmap_evt"
.LASF37:
	.string	"time_max"
.LASF51:
	.string	"statistic"
.LASF17:
	.string	"utils_list"
.LASF6:
	.string	"short int"
.LASF28:
	.string	"container"
.LASF15:
	.string	"TaskHandle_t"
.LASF30:
	.string	"loop_msg"
.LASF66:
	.string	"redo"
.LASF58:
	.string	"handler"
.LASF55:
	.string	"bloop_status_dump"
.LASF40:
	.string	"loop_evt_handler"
.LASF44:
	.string	"looper"
.LASF13:
	.string	"uint8_t"
.LASF41:
	.string	"name"
.LASF26:
	.string	"id_msg"
.LASF36:
	.string	"loop_evt_handler_statistic"
.LASF32:
	.string	"arg1"
.LASF27:
	.string	"id_src"
.LASF10:
	.string	"long long int"
.LASF65:
	.string	"loop_evt_entity_sys_evt"
.LASF8:
	.string	"long int"
.LASF25:
	.string	"id_dst"
.LASF56:
	.string	"printf"
.LASF49:
	.string	"evt_type_map_sync"
.LASF62:
	.string	"tskTaskControlBlock"
.LASF34:
	.string	"time_added"
.LASF11:
	.string	"long double"
.LASF5:
	.string	"unsigned char"
.LASF53:
	.string	"timer_dlist"
.LASF54:
	.string	"timer_dued"
.LASF57:
	.string	"loop"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF52:
	.string	"handlers"
.LASF3:
	.string	"unsigned int"
.LASF20:
	.string	"last"
.LASF45:
	.string	"bitmap_evt_async"
.LASF47:
	.string	"bitmap_msg"
.LASF38:
	.string	"time_accumulated"
.LASF7:
	.string	"short unsigned int"
.LASF63:
	.string	"bloop_handler_sys"
.LASF12:
	.string	"char"
.LASF48:
	.string	"evt_type_map_async"
.LASF50:
	.string	"list"
.LASF21:
	.string	"utils_dlist_s"
.LASF9:
	.string	"long unsigned int"
.LASF64:
	.string	"loop_evt_entity_sys_handler"
.LASF42:
	.string	"handle"
.LASF35:
	.string	"time_consumed"
.LASF31:
	.string	"item"
.LASF39:
	.string	"count_triggered"
.LASF60:
	.string	"evt_type_map"
.LASF23:
	.string	"utils_dlist_t"
.LASF24:
	.string	"priority"
.LASF61:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF33:
	.string	"arg2"
.LASF22:
	.string	"prev"
.LASF16:
	.string	"utils_list_hdr"
.LASF18:
	.string	"next"
.LASF46:
	.string	"bitmap_evt_sync"
.LASF19:
	.string	"first"
.LASF43:
	.string	"loop_ctx"
	.section	.debug_line_str,"MS",@progbits,1
.LASF76:
	.string	"utils_list.h"
.LASF72:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF70:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/include"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/bloop/src/bloop_handler_sys.c"
.LASF74:
	.string	"stdint-gcc.h"
.LASF73:
	.string	"bloop_handler_sys.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/bloop"
.LASF69:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/bloop/src"
.LASF71:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF78:
	.string	"stdio.h"
.LASF68:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/bloop/include"
.LASF77:
	.string	"bloop.h"
.LASF67:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/include"
.LASF75:
	.string	"task.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
