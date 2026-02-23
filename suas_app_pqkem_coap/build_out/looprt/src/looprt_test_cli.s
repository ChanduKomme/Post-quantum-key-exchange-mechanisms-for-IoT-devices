	.file	"looprt_test_cli.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.cmd_looprt_test.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"====== looprt test ======\r\n"
	.align	2
.LC1:
	.string	"struct loop_ctx size is %d\r\n"
	.align	2
.LC2:
	.string	"MSG size is %d\r\n"
	.section	.text.cmd_looprt_test,"ax",@progbits
	.align	1
	.globl	cmd_looprt_test
	.type	cmd_looprt_test, @function
cmd_looprt_test:
.LVL0:
.LFB23:
.LM1:
	.cfi_startproc
.LM2:
	lui	a0,%hi(.LC0)
.LVL1:
.LM3:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM4:
	addi	a0,a0,%lo(.LC0)
.LM5:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM6:
	call	puts
.LVL2:
.LM7:
.LBB4:
.LBI4:
.LM8:
.LBB5:
.LM9:
	lui	a0,%hi(.LC1)
	li	a1,1184
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL3:
.LM10:
	lui	a0,%hi(.LC2)
	li	a1,24
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL4:
.LBE5:
.LBE4:
.LM11:
.LM12:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LM13:
	tail	looprt_start_auto
.LVL5:
	.cfi_endproc
.LFE23:
	.size	cmd_looprt_test, .-cmd_looprt_test
	.section	.rodata.cmd_looprt_test_status.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"====== looprt test status ======\r\n"
	.section	.text.cmd_looprt_test_status,"ax",@progbits
	.align	1
	.globl	cmd_looprt_test_status
	.type	cmd_looprt_test_status, @function
cmd_looprt_test_status:
.LVL6:
.LFB24:
.LM14:
	.cfi_startproc
.LM15:
	lui	a0,%hi(.LC3)
.LVL7:
.LM16:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM17:
	addi	a0,a0,%lo(.LC3)
.LM18:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM19:
	call	puts
.LVL8:
.LM20:
.LM21:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LM22:
	tail	looprt_evt_status_dump
.LVL9:
	.cfi_endproc
.LFE24:
	.size	cmd_looprt_test_status, .-cmd_looprt_test_status
	.section	.rodata.cmd_looprt_test_evt.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"====== looprt EVT ======\r\n"
	.section	.text.cmd_looprt_test_evt,"ax",@progbits
	.align	1
	.globl	cmd_looprt_test_evt
	.type	cmd_looprt_test_evt, @function
cmd_looprt_test_evt:
.LVL10:
.LFB25:
.LM23:
	.cfi_startproc
.LM24:
	lui	a0,%hi(.LC4)
.LVL11:
.LM25:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM26:
	addi	a0,a0,%lo(.LC4)
.LM27:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM28:
	call	puts
.LVL12:
.LM29:
.LM30:
	lw	ra,12(sp)
	.cfi_restore 1
.LM31:
	li	a1,0
.LM32:
.LM33:
	li	a0,31
.LM34:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LM35:
	tail	looprt_evt_notify_async
.LVL13:
	.cfi_endproc
.LFE25:
	.size	cmd_looprt_test_evt, .-cmd_looprt_test_evt
	.section	.rodata.cmd_looprt_test_evt_dump.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"====== looprt EVT status ======\r\n"
	.section	.text.cmd_looprt_test_evt_dump,"ax",@progbits
	.align	1
	.globl	cmd_looprt_test_evt_dump
	.type	cmd_looprt_test_evt_dump, @function
cmd_looprt_test_evt_dump:
.LVL14:
.LFB26:
.LM36:
	.cfi_startproc
.LM37:
	lui	a0,%hi(.LC5)
.LVL15:
.LM38:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM39:
	addi	a0,a0,%lo(.LC5)
.LM40:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM41:
	call	puts
.LVL16:
.LM42:
.LM43:
	lw	ra,12(sp)
	.cfi_restore 1
.LM44:
	li	a1,1
.LM45:
.LM46:
	li	a0,31
.LM47:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LM48:
	tail	looprt_evt_notify_async
.LVL17:
	.cfi_endproc
.LFE26:
	.size	cmd_looprt_test_evt_dump, .-cmd_looprt_test_evt_dump
	.section	.rodata.cmd_looprt_test_schedule_evt1.str1.4,"aMS",@progbits,1
	.align	2
.LC6:
	.string	"====== looprt Schedule EVT1 ======\r\n"
	.section	.text.cmd_looprt_test_schedule_evt1,"ax",@progbits
	.align	1
	.globl	cmd_looprt_test_schedule_evt1
	.type	cmd_looprt_test_schedule_evt1, @function
cmd_looprt_test_schedule_evt1:
.LVL18:
.LFB27:
.LM49:
	.cfi_startproc
.LM50:
	lui	a0,%hi(.LC6)
.LVL19:
.LM51:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM52:
	addi	a0,a0,%lo(.LC6)
.LM53:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM54:
	call	puts
.LVL20:
.LM55:
.LM56:
	lw	ra,12(sp)
	.cfi_restore 1
.LM57:
	li	a2,20480
.LM58:
.LM59:
	addi	a2,a2,-480
	li	a1,1
	li	a0,31
.LM60:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LM61:
	tail	looprt_evt_schedule
.LVL21:
	.cfi_endproc
.LFE27:
	.size	cmd_looprt_test_schedule_evt1, .-cmd_looprt_test_schedule_evt1
	.section	.rodata.cmd_looprt_test_schedule_evt2.str1.4,"aMS",@progbits,1
	.align	2
.LC7:
	.string	"====== looprt Schedule EVT2 ======\r\n"
	.section	.text.cmd_looprt_test_schedule_evt2,"ax",@progbits
	.align	1
	.globl	cmd_looprt_test_schedule_evt2
	.type	cmd_looprt_test_schedule_evt2, @function
cmd_looprt_test_schedule_evt2:
.LVL22:
.LFB28:
.LM62:
	.cfi_startproc
.LM63:
	lui	a0,%hi(.LC7)
.LVL23:
.LM64:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM65:
	addi	a0,a0,%lo(.LC7)
.LM66:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM67:
	call	puts
.LVL24:
.LM68:
.LM69:
	lw	ra,12(sp)
	.cfi_restore 1
.LM70:
	li	a2,8192
.LM71:
.LM72:
	addi	a2,a2,1808
	li	a1,1
	li	a0,31
.LM73:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LM74:
	tail	looprt_evt_schedule
.LVL25:
	.cfi_endproc
.LFE28:
	.size	cmd_looprt_test_schedule_evt2, .-cmd_looprt_test_schedule_evt2
	.section	.text.looprt_test_cli_init,"ax",@progbits
	.align	1
	.globl	looprt_test_cli_init
	.type	looprt_test_cli_init, @function
looprt_test_cli_init:
.LFB29:
.LM75:
	.cfi_startproc
.LM76:
.LM77:
	li	a0,0
	ret
	.cfi_endproc
.LFE29:
	.size	looprt_test_cli_init, .-looprt_test_cli_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"looprt"
	.align	2
.LC9:
	.string	"looprt based on bloop"
	.align	2
.LC10:
	.string	"looprt_status"
	.align	2
.LC11:
	.string	"looprt_evt"
	.align	2
.LC12:
	.string	"looprt notify event"
	.align	2
.LC13:
	.string	"looprt_evt_status"
	.align	2
.LC14:
	.string	"looprt evt to dump"
	.align	2
.LC15:
	.string	"looprt_schedule1"
	.align	2
.LC16:
	.string	"looprt schedule evt 20s"
	.align	2
.LC17:
	.string	"looprt_schedule2"
	.align	2
.LC18:
	.string	"looprt schedule evt 10s"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 72
cmds_user:
	.word	.LC8
	.word	.LC9
	.word	cmd_looprt_test
	.word	.LC10
	.word	.LC9
	.word	cmd_looprt_test_status
	.word	.LC11
	.word	.LC12
	.word	cmd_looprt_test_evt
	.word	.LC13
	.word	.LC14
	.word	cmd_looprt_test_evt_dump
	.word	.LC15
	.word	.LC16
	.word	cmd_looprt_test_schedule_evt1
	.word	.LC17
	.word	.LC18
	.word	cmd_looprt_test_schedule_evt2
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x539
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL24
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
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x8
	.4byte	0x7d
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xa
	.4byte	0x7d
	.uleb128 0x8
	.4byte	0x84
	.uleb128 0x11
	.4byte	0x89
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0xc
	.byte	0x2
	.byte	0x4c
	.byte	0x8
	.4byte	0xc5
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x4d
	.byte	0x11
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x4e
	.byte	0x11
	.4byte	0x89
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x50
	.byte	0xc
	.4byte	0xe9
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	0x93
	.uleb128 0x13
	.4byte	0xe4
	.uleb128 0x5
	.4byte	0x78
	.uleb128 0x5
	.4byte	0x6a
	.uleb128 0x5
	.4byte	0x6a
	.uleb128 0x5
	.4byte	0xe4
	.byte	0
	.uleb128 0x8
	.4byte	0x78
	.uleb128 0x8
	.4byte	0xca
	.uleb128 0x14
	.4byte	.LASF30
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x5c
	.uleb128 0x15
	.4byte	0xc5
	.4byte	0x10a
	.uleb128 0x16
	.4byte	0x32
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0xfa
	.uleb128 0x17
	.4byte	.LASF31
	.byte	0x1
	.byte	0x51
	.byte	0x21
	.4byte	0x10a
	.uleb128 0x5
	.byte	0x3
	.4byte	cmds_user
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x29
	.4byte	0x13b
	.uleb128 0x5
	.4byte	0x6a
	.uleb128 0x5
	.4byte	0xee
	.uleb128 0x5
	.4byte	0x6a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x27
	.4byte	0x150
	.uleb128 0x5
	.4byte	0x32
	.uleb128 0x5
	.4byte	0xee
	.byte	0
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x3
	.byte	0x26
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0xce
	.4byte	0x6a
	.4byte	0x16d
	.uleb128 0x5
	.4byte	0x8e
	.uleb128 0x19
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF33
	.byte	0x3
	.byte	0x25
	.byte	0x5
	.4byte	0x6a
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0xe3
	.4byte	0x6a
	.4byte	0x18d
	.uleb128 0x5
	.4byte	0x89
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF34
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.4byte	0x6a
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4a
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x236
	.uleb128 0x2
	.string	"buf"
	.byte	0x4a
	.byte	0x3a
	.4byte	0x78
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x2
	.string	"len"
	.byte	0x4a
	.byte	0x53
	.4byte	0x6a
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4a
	.byte	0x6c
	.4byte	0x6a
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4a
	.byte	0x89
	.4byte	0xe4
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x6
	.4byte	.LVL24
	.4byte	0x179
	.4byte	0x21a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x9
	.4byte	.LVL25
	.4byte	0x121
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2710
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x44
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c9
	.uleb128 0x2
	.string	"buf"
	.byte	0x44
	.byte	0x3a
	.4byte	0x78
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x2
	.string	"len"
	.byte	0x44
	.byte	0x53
	.4byte	0x6a
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x44
	.byte	0x6c
	.4byte	0x6a
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x44
	.byte	0x89
	.4byte	0xe4
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x6
	.4byte	.LVL20
	.4byte	0x179
	.4byte	0x2ad
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x9
	.4byte	.LVL21
	.4byte	0x121
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4e20
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x3e
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x355
	.uleb128 0x2
	.string	"buf"
	.byte	0x3e
	.byte	0x35
	.4byte	0x78
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x2
	.string	"len"
	.byte	0x3e
	.byte	0x4e
	.4byte	0x6a
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x3e
	.byte	0x67
	.4byte	0x6a
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x3e
	.byte	0x84
	.4byte	0xe4
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x6
	.4byte	.LVL16
	.4byte	0x179
	.4byte	0x340
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x9
	.4byte	.LVL17
	.4byte	0x13b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x38
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e1
	.uleb128 0x2
	.string	"buf"
	.byte	0x38
	.byte	0x30
	.4byte	0x78
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2
	.string	"len"
	.byte	0x38
	.byte	0x49
	.4byte	0x6a
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x38
	.byte	0x62
	.4byte	0x6a
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x38
	.byte	0x7f
	.4byte	0xe4
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x6
	.4byte	.LVL12
	.4byte	0x179
	.4byte	0x3cc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x9
	.4byte	.LVL13
	.4byte	0x13b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x32
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x462
	.uleb128 0x2
	.string	"buf"
	.byte	0x32
	.byte	0x33
	.4byte	0x78
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x2
	.string	"len"
	.byte	0x32
	.byte	0x4c
	.4byte	0x6a
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x32
	.byte	0x65
	.4byte	0x6a
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x32
	.byte	0x82
	.4byte	0xe4
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x6
	.4byte	.LVL8
	.4byte	0x179
	.4byte	0x458
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0xe
	.4byte	.LVL9
	.4byte	0x150
	.byte	0
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x2a
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x533
	.uleb128 0x2
	.string	"buf"
	.byte	0x2a
	.byte	0x2c
	.4byte	0x78
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2
	.string	"len"
	.byte	0x2a
	.byte	0x45
	.4byte	0x6a
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x2a
	.byte	0x5e
	.4byte	0x6a
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x2a
	.byte	0x7b
	.4byte	0xe4
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1c
	.4byte	0x533
	.4byte	.LBI4
	.byte	0x7
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x2d
	.byte	0x5
	.4byte	0x512
	.uleb128 0x6
	.4byte	.LVL3
	.4byte	0x158
	.4byte	0x4f9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4a0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL4
	.4byte	0x158
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL2
	.4byte	0x179
	.4byte	0x529
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL5
	.4byte	0x16d
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF35
	.byte	0x1
	.byte	0x24
	.byte	0xd
	.byte	0x1
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x3
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xe
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0
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
.LVUS20:
	.uleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.uleb128 0
.LLST20:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL23-.LVL22
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL23-.LVL22
	.uleb128 .LFE28-.LVL22
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
.LVUS21:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST21:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL24-1-.LVL22
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL24-1-.LVL22
	.uleb128 .LFE28-.LVL22
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
.LVUS22:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST22:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL24-1-.LVL22
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL24-1-.LVL22
	.uleb128 .LFE28-.LVL22
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
.LVUS23:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST23:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL24-1-.LVL22
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL24-1-.LVL22
	.uleb128 .LFE28-.LVL22
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
.LVUS16:
	.uleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.uleb128 0
.LLST16:
	.byte	0x6
	.4byte	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL19-.LVL18
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL19-.LVL18
	.uleb128 .LFE27-.LVL18
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
.LVUS17:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST17:
	.byte	0x6
	.4byte	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL20-1-.LVL18
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL20-1-.LVL18
	.uleb128 .LFE27-.LVL18
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
.LVUS18:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST18:
	.byte	0x6
	.4byte	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL20-1-.LVL18
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL20-1-.LVL18
	.uleb128 .LFE27-.LVL18
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
.LVUS19:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST19:
	.byte	0x6
	.4byte	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL20-1-.LVL18
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL20-1-.LVL18
	.uleb128 .LFE27-.LVL18
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
.LVUS12:
	.uleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.uleb128 0
.LLST12:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL15-.LVL14
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL15-.LVL14
	.uleb128 .LFE26-.LVL14
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
.LVUS13:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST13:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL16-1-.LVL14
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL16-1-.LVL14
	.uleb128 .LFE26-.LVL14
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
.LVUS14:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST14:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL16-1-.LVL14
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL16-1-.LVL14
	.uleb128 .LFE26-.LVL14
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
.LVUS15:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST15:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL16-1-.LVL14
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL16-1-.LVL14
	.uleb128 .LFE26-.LVL14
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
	.uleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL11-.LVL10
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL11-.LVL10
	.uleb128 .LFE25-.LVL10
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
.LVUS9:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL12-1-.LVL10
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL12-1-.LVL10
	.uleb128 .LFE25-.LVL10
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
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST10:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL12-1-.LVL10
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL12-1-.LVL10
	.uleb128 .LFE25-.LVL10
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
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST11:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL12-1-.LVL10
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL12-1-.LVL10
	.uleb128 .LFE25-.LVL10
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
	.uleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL6
	.byte	0x4
	.uleb128 .LVL6-.LVL6
	.uleb128 .LVL7-.LVL6
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL7-.LVL6
	.uleb128 .LFE24-.LVL6
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
.LVUS5:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST5:
	.byte	0x6
	.4byte	.LVL6
	.byte	0x4
	.uleb128 .LVL6-.LVL6
	.uleb128 .LVL8-1-.LVL6
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL8-1-.LVL6
	.uleb128 .LFE24-.LVL6
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
.LVUS6:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL6
	.byte	0x4
	.uleb128 .LVL6-.LVL6
	.uleb128 .LVL8-1-.LVL6
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL8-1-.LVL6
	.uleb128 .LFE24-.LVL6
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
.LVUS7:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL6
	.byte	0x4
	.uleb128 .LVL6-.LVL6
	.uleb128 .LVL8-1-.LVL6
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL8-1-.LVL6
	.uleb128 .LFE24-.LVL6
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
.LVUS0:
	.uleb128 0
	.uleb128 0x2
	.uleb128 0x2
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
	.uleb128 0x6
	.uleb128 0x6
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
	.uleb128 0x6
	.uleb128 0x6
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
	.uleb128 0x6
	.uleb128 0x6
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
	.uleb128 .LFE23-.LVL0
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
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
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
.LLRL24:
	.byte	0x7
	.4byte	.LFB23
	.uleb128 .LFE23-.LFB23
	.byte	0x7
	.4byte	.LFB24
	.uleb128 .LFE24-.LFB24
	.byte	0x7
	.4byte	.LFB25
	.uleb128 .LFE25-.LFB25
	.byte	0x7
	.4byte	.LFB26
	.uleb128 .LFE26-.LFB26
	.byte	0x7
	.4byte	.LFB27
	.uleb128 .LFE27-.LFB27
	.byte	0x7
	.4byte	.LFB28
	.uleb128 .LFE28-.LFB28
	.byte	0x7
	.4byte	.LFB29
	.uleb128 .LFE29-.LFB29
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
	.4byte	.LASF36
	.4byte	.LASF37
	.4byte	.LASF38
	.4byte	.LASF39
	.4byte	.LASF40
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF41
	.byte	0x3
	.4byte	.LASF42
	.byte	0x1
	.4byte	.LASF43
	.byte	0x2
	.4byte	.LASF44
	.byte	0x5
	.4byte	.LASF45
	.byte	0x4
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
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0xe
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x1f
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
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
	.4byte	.LM14
	.byte	0x49
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE24
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM23
	.byte	0x4f
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE25
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM36
	.byte	0x55
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE26
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM49
	.byte	0x5b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE27
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM62
	.byte	0x61
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM63-.LM62
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM65-.LM64
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM69-.LM68
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM70-.LM69
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM71-.LM70
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM72-.LM71
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM73-.LM72
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM74-.LM73
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE28
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM75
	.byte	0x71
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM76-.LM75
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM77-.LM76
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE29
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"cmd_looprt_test_evt_dump"
.LASF16:
	.string	"looprt_evt_schedule"
.LASF15:
	.string	"function"
.LASF7:
	.string	"short unsigned int"
.LASF6:
	.string	"short int"
.LASF18:
	.string	"printf"
.LASF17:
	.string	"looprt_evt_notify_async"
.LASF33:
	.string	"looprt_start_auto"
.LASF9:
	.string	"long unsigned int"
.LASF32:
	.string	"looprt_evt_status_dump"
.LASF28:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF14:
	.string	"help"
.LASF5:
	.string	"unsigned char"
.LASF29:
	.string	"cli_command"
.LASF11:
	.string	"long double"
.LASF25:
	.string	"cmd_looprt_test_evt"
.LASF27:
	.string	"cmd_looprt_test"
.LASF3:
	.string	"unsigned int"
.LASF2:
	.string	"long long unsigned int"
.LASF34:
	.string	"looprt_test_cli_init"
.LASF26:
	.string	"cmd_looprt_test_status"
.LASF20:
	.string	"argc"
.LASF10:
	.string	"long long int"
.LASF31:
	.string	"cmds_user"
.LASF12:
	.string	"char"
.LASF23:
	.string	"cmd_looprt_test_schedule_evt1"
.LASF22:
	.string	"cmd_looprt_test_schedule_evt2"
.LASF35:
	.string	"looprt_case_1"
.LASF21:
	.string	"argv"
.LASF30:
	.string	"uint32_t"
.LASF8:
	.string	"long int"
.LASF19:
	.string	"puts"
.LASF4:
	.string	"signed char"
.LASF13:
	.string	"name"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/looprt"
.LASF40:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF42:
	.string	"cli.h"
.LASF45:
	.string	"stdint-gcc.h"
.LASF38:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/looprt/src"
.LASF41:
	.string	"looprt_test_cli.c"
.LASF43:
	.string	"looprt.h"
.LASF39:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF44:
	.string	"stdio.h"
.LASF36:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/cli/cli/include"
.LASF37:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/looprt/include"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/looprt/src/looprt_test_cli.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
