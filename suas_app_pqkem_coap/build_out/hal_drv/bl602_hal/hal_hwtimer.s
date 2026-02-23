	.file	"hal_hwtimer.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.hal_hwtimer_init,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_init
	.type	hal_hwtimer_init, @function
hal_hwtimer_init:
.LFB27:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
	li	a0,0
	ret
	.cfi_endproc
.LFE27:
	.size	hal_hwtimer_init, .-hal_hwtimer_init
	.section	.rodata.hal_hwtimer_create.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"hw_timer"
	.section	.text.hal_hwtimer_create,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_create
	.type	hal_hwtimer_create, @function
hal_hwtimer_create:
.LVL0:
.LFB28:
.LM4:
	.cfi_startproc
.LM5:
.LM6:
.LM7:
	mv	a4,a1
.LM8:
	li	a1,1000
.LVL1:
.LM9:
	mul	a0,a0,a1
.LVL2:
.LM10:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
.LM11:
	addi	a3,sp,12
	li	a2,1
.LVL3:
.LM12:
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.LM13:
	divu	a1,a0,a1
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	xTimerCreate
.LVL4:
.LM14:
	sw	a0,12(sp)
.LM15:
.LM16:
	beq	a0,zero,.L3
	mv	s0,a0
.LM17:
.LM18:
	call	xTaskGetTickCount
.LVL5:
	mv	a2,a0
.LM19:
	li	a4,-1
	li	a3,0
	li	a1,1
	mv	a0,s0
	call	xTimerGenericCommand
.LVL6:
.L3:
.LM20:
.LM21:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	a0,12(sp)
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	hal_hwtimer_create, .-hal_hwtimer_create
	.section	.text.hal_hwtimer_delete,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_delete
	.type	hal_hwtimer_delete, @function
hal_hwtimer_delete:
.LVL7:
.LFB29:
.LM22:
	.cfi_startproc
.LM23:
.LM24:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM25:
	li	a4,-1
	li	a3,0
	li	a2,0
	li	a1,5
.LM26:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM27:
	call	xTimerGenericCommand
.LVL8:
.LM28:
	lw	ra,12(sp)
	.cfi_restore 1
.LM29:
	seqz	a0,a0
.LM30:
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	hal_hwtimer_delete, .-hal_hwtimer_delete
	.section	.text.hal_hwtimer_change_period,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_change_period
	.type	hal_hwtimer_change_period, @function
hal_hwtimer_change_period:
.LVL9:
.LFB30:
.LM31:
	.cfi_startproc
.LM32:
.LM33:
	li	a2,1000
	mul	a1,a1,a2
.LVL10:
.LM34:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM35:
	li	a4,-1
	li	a3,0
.LM36:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM37:
	divu	a2,a1,a2
	li	a1,4
	call	xTimerGenericCommand
.LVL11:
.LM38:
	lw	ra,12(sp)
	.cfi_restore 1
.LM39:
	seqz	a0,a0
.LM40:
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	hal_hwtimer_change_period, .-hal_hwtimer_change_period
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x37c
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL6
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x5
	.4byte	0x90
	.uleb128 0x6
	.4byte	0x9c
	.uleb128 0xe
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	0x9d
	.uleb128 0x6
	.4byte	0xa4
	.uleb128 0x5
	.4byte	0xa9
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x3f
	.byte	0x11
	.4byte	0x4e
	.uleb128 0x5
	.4byte	0xb3
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x40
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x5
	.4byte	0xc4
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x5
	.4byte	0xd5
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x4d
	.byte	0x22
	.4byte	0xf2
	.uleb128 0x6
	.4byte	0xf7
	.uleb128 0xf
	.4byte	.LASF32
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x52
	.byte	0x10
	.4byte	0x108
	.uleb128 0x6
	.4byte	0x10d
	.uleb128 0x10
	.4byte	0x118
	.uleb128 0x3
	.4byte	0xe6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x26
	.byte	0x10
	.4byte	0x97
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.4byte	0x13b
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.4byte	0x90
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x3b
	.byte	0x3
	.4byte	0x124
	.uleb128 0x13
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x510
	.byte	0xc
	.4byte	0xb3
	.4byte	0x172
	.uleb128 0x3
	.4byte	0xe6
	.uleb128 0x3
	.4byte	0xbf
	.uleb128 0x3
	.4byte	0xe1
	.uleb128 0x3
	.4byte	0x177
	.uleb128 0x3
	.4byte	0xe1
	.byte	0
	.uleb128 0x6
	.4byte	0xb3
	.uleb128 0x5
	.4byte	0x172
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x54c
	.byte	0xc
	.4byte	0xd5
	.uleb128 0x15
	.4byte	.LASF23
	.byte	0x4
	.byte	0xe4
	.byte	0x10
	.4byte	0xe6
	.4byte	0x1b3
	.uleb128 0x3
	.4byte	0xae
	.uleb128 0x3
	.4byte	0xe1
	.uleb128 0x3
	.4byte	0xd0
	.uleb128 0x3
	.4byte	0x92
	.uleb128 0x3
	.4byte	0xfc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF26
	.2byte	0x10b
	.4byte	0x82
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x237
	.uleb128 0x7
	.4byte	.LASF24
	.2byte	0x10b
	.byte	0x2b
	.4byte	0x237
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x7
	.4byte	.LASF25
	.2byte	0x10b
	.byte	0x3d
	.4byte	0x6f
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x8
	.4byte	.LVL11
	.4byte	0x147
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x17
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1e
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa
	.2byte	0x3e8
	.byte	0xa8
	.uleb128 0x2b
	.byte	0x1b
	.byte	0xa8
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x13b
	.uleb128 0xa
	.4byte	.LASF27
	.2byte	0x103
	.4byte	0x82
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x296
	.uleb128 0x7
	.4byte	.LASF24
	.2byte	0x103
	.byte	0x24
	.4byte	0x237
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x8
	.4byte	.LVL8
	.4byte	0x147
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF28
	.byte	0x1
	.byte	0xf2
	.byte	0xd
	.4byte	0x237
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x369
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x29
	.4byte	0x6f
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x36
	.4byte	0x118
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x53
	.4byte	0x82
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x17
	.4byte	.LASF35
	.byte	0x1
	.byte	0xf4
	.byte	0x13
	.4byte	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LVL4
	.4byte	0x189
	.4byte	0x33f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x17
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1e
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa
	.2byte	0x3e8
	.byte	0xa8
	.uleb128 0x2b
	.byte	0x1b
	.byte	0xa8
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0x17c
	.uleb128 0x8
	.4byte	.LVL6
	.4byte	0x147
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF36
	.byte	0x1
	.byte	0xed
	.byte	0x5
	.4byte	0x82
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 242
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x19
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
	.byte	0
	.section	.debug_loclists,"",@progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS4:
	.uleb128 0
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL9
	.byte	0x4
	.uleb128 .LVL9-.LVL9
	.uleb128 .LVL11-1-.LVL9
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL11-1-.LVL9
	.uleb128 .LFE30-.LVL9
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x3
	.uleb128 0
.LLST5:
	.byte	0x6
	.4byte	.LVL9
	.byte	0x4
	.uleb128 .LVL9-.LVL9
	.uleb128 .LVL10-.LVL9
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL10-.LVL9
	.uleb128 .LFE30-.LVL9
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
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
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-1-.LVL7
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL8-1-.LVL7
	.uleb128 .LFE29-.LVL7
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
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
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LFE28-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0xa
	.uleb128 0xa
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
	.uleb128 .LVL4-1-.LVL0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL4-1-.LVL0
	.uleb128 .LFE28-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL3-.LVL0
	.uleb128 .LFE28-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xc
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
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
.LLRL6:
	.byte	0x7
	.4byte	.LFB27
	.uleb128 .LFE27-.LFB27
	.byte	0x7
	.4byte	.LFB28
	.uleb128 .LFE28-.LFB28
	.byte	0x7
	.4byte	.LFB29
	.uleb128 .LFE29-.LFB29
	.byte	0x7
	.4byte	.LFB30
	.uleb128 .LFE30-.LFB30
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
	.4byte	.LASF37
	.4byte	.LASF38
	.4byte	.LASF39
	.4byte	.LASF40
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF41
	.byte	0x3
	.4byte	.LASF42
	.byte	0x4
	.4byte	.LASF43
	.byte	0x2
	.4byte	.LASF44
	.byte	0x1
	.4byte	.LASF45
	.byte	0x3
	.4byte	.LASF46
	.byte	0x1
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x3
	.sleb128 237
	.byte	0x1
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
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
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
	.4byte	.LM4
	.byte	0x3
	.sleb128 242
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
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x1c
	.byte	0x5
	.uleb128 0x40
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x1
	.byte	0x5
	.uleb128 0x40
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x12
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x1a
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x1a
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1e
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
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x44
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
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
	.4byte	.LFE28
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM22
	.byte	0x3
	.sleb128 259
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x18
	.byte	0x5
	.uleb128 0x21
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x18
	.byte	0x5
	.uleb128 0x21
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x13
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE29
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM31
	.byte	0x3
	.sleb128 267
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9a
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x18
	.byte	0x5
	.uleb128 0x21
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x18
	.byte	0x5
	.uleb128 0x21
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x13
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE30
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"pstnode"
.LASF17:
	.string	"TickType_t"
.LASF21:
	.string	"hw_timer_t"
.LASF23:
	.string	"xTimerCreate"
.LASF2:
	.string	"unsigned int"
.LASF33:
	.string	"null"
.LASF3:
	.string	"long long unsigned int"
.LASF26:
	.string	"hal_hwtimer_change_period"
.LASF4:
	.string	"unsigned char"
.LASF29:
	.string	"handler"
.LASF36:
	.string	"hal_hwtimer_init"
.LASF12:
	.string	"long unsigned int"
.LASF9:
	.string	"short unsigned int"
.LASF31:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF35:
	.string	"handle"
.LASF28:
	.string	"hal_hwtimer_create"
.LASF22:
	.string	"xTimerGenericCommand"
.LASF27:
	.string	"hal_hwtimer_delete"
.LASF32:
	.string	"tmrTimerControl"
.LASF19:
	.string	"TimerCallbackFunction_t"
.LASF18:
	.string	"TimerHandle_t"
.LASF16:
	.string	"UBaseType_t"
.LASF30:
	.string	"repeat"
.LASF25:
	.string	"period"
.LASF10:
	.string	"int32_t"
.LASF8:
	.string	"long long int"
.LASF14:
	.string	"char"
.LASF6:
	.string	"short int"
.LASF20:
	.string	"hw_t"
.LASF11:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF13:
	.string	"long double"
.LASF5:
	.string	"signed char"
.LASF34:
	.string	"xTaskGetTickCount"
.LASF15:
	.string	"BaseType_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_hwtimer.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/hal_drv"
.LASF45:
	.string	"hal_hwtimer.h"
.LASF44:
	.string	"timers.h"
.LASF42:
	.string	"stdint-gcc.h"
.LASF39:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal"
.LASF40:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF43:
	.string	"portmacro.h"
.LASF38:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V"
.LASF37:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/include"
.LASF41:
	.string	"hal_hwtimer.c"
.LASF46:
	.string	"task.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
