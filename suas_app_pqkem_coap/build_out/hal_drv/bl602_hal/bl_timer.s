	.file	"bl_timer.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.int_timer_cb,"ax",@progbits
	.align	1
	.type	int_timer_cb, @function
int_timer_cb:
.LFB12:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM4:
	li	a1,0
	li	a0,1
.LM5:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM6:
	call	TIMER_ClearIntStatus
.LVL0:
.LM7:
.LM8:
	call	xTaskIncrementTick
.LVL1:
.LM9:
	beq	a0,zero,.L1
.LM10:
.LM11:
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LM12:
	tail	vTaskSwitchContext
.LVL2:
.L1:
	.cfi_restore_state
.LM13:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	int_timer_cb, .-int_timer_cb
	.section	.text.bl_timer_now_us,"ax",@progbits
	.align	1
	.globl	bl_timer_now_us
	.type	bl_timer_now_us, @function
bl_timer_now_us:
.LFB9:
.LM14:
	.cfi_startproc
.LM15:
.LM16:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM17:
	call	timer_us_now
.LVL3:
.LM18:
	li	a2,10
	li	a3,0
	call	__udivdi3
.LVL4:
.LM19:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bl_timer_now_us, .-bl_timer_now_us
	.section	.text.bl_timer_now_us64,"ax",@progbits
	.align	1
	.globl	bl_timer_now_us64
	.type	bl_timer_now_us64, @function
bl_timer_now_us64:
.LFB10:
.LM20:
	.cfi_startproc
.LM21:
.LM22:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM23:
	call	timer_us_now
.LVL5:
.LM24:
	li	a2,10
	li	a3,0
	call	__udivdi3
.LVL6:
.LM25:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bl_timer_now_us64, .-bl_timer_now_us64
	.section	.text.bl_timer_tick_enable,"ax",@progbits
	.align	1
	.globl	bl_timer_tick_enable
	.type	bl_timer_tick_enable, @function
bl_timer_tick_enable:
.LFB13:
.LM26:
	.cfi_startproc
.LM27:
.LM28:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
.LM29:
	lui	a1,%hi(.LANCHOR0)
	li	a2,24
	addi	a1,a1,%lo(.LANCHOR0)
	addi	a0,sp,8
.LM30:
	sw	ra,44(sp)
	.cfi_offset 1, -4
.LM31:
	call	memcpy
.LVL7:
.LM32:
.LBB4:
.LBI4:
.LM33:
.LBB5:
.LM34:
	li	a2,1
	mv	a0,a2
	li	a1,3
	call	TIMER_IntMask
.LVL8:
.LM35:
	lbu	a0,8(sp)
	call	TIMER_Disable
.LVL9:
.LM36:
	addi	a0,sp,8
.LVL10:
.LM37:
	call	TIMER_Init
.LVL11:
.LM38:
	lbu	a0,8(sp)
	li	a1,0
	call	TIMER_ClearIntStatus
.LVL12:
.LM39:
	lbu	a0,8(sp)
	li	a1,1
	call	TIMER_ClearIntStatus
.LVL13:
.LM40:
	lbu	a0,8(sp)
	li	a1,2
	call	TIMER_ClearIntStatus
.LVL14:
.LM41:
	lbu	a0,8(sp)
	li	a2,0
	li	a1,0
	call	TIMER_IntMask
.LVL15:
.LM42:
	lbu	a0,8(sp)
	li	a2,1
	mv	a1,a2
	call	TIMER_IntMask
.LVL16:
.LM43:
	lbu	a0,8(sp)
	li	a2,1
	li	a1,2
	call	TIMER_IntMask
.LVL17:
.LM44:
	lbu	a0,8(sp)
	call	TIMER_Enable
.LVL18:
.LM45:
.LM46:
.LBE5:
.LBE4:
.LM47:
	li	a0,53
	call	bl_irq_enable
.LVL19:
.LM48:
	lui	a1,%hi(int_timer_cb)
	li	a0,53
	addi	a1,a1,%lo(int_timer_cb)
	call	bl_irq_register
.LVL20:
.LM49:
.LM50:
	lw	ra,44(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	bl_timer_tick_enable, .-bl_timer_tick_enable
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	15
	.zero	3
	.word	9998
	.word	360000
	.word	390000
	.word	0
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x72b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x45
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x5f
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x8c
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x7
	.4byte	0x5f
	.byte	0x3
	.byte	0x41
	.byte	0x1
	.4byte	0x24c
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x35
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x36
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x37
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x39
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x3b
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x49
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x4b
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x4d
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x4f
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x50
	.byte	0
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF84
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF85
	.uleb128 0x7
	.4byte	0x5f
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0x27b
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0x25c
	.uleb128 0x7
	.4byte	0x5f
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x2a0
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0x4
	.byte	0x36
	.byte	0x2
	.4byte	0x287
	.uleb128 0x7
	.4byte	0x5f
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0x2cb
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0x5
	.byte	0x3d
	.byte	0x2
	.4byte	0x2ac
	.uleb128 0x7
	.4byte	0x5f
	.byte	0x5
	.byte	0x42
	.byte	0xe
	.4byte	0x2fc
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0x5
	.byte	0x47
	.byte	0x2
	.4byte	0x2d7
	.uleb128 0x7
	.4byte	0x5f
	.byte	0x5
	.byte	0x4c
	.byte	0xe
	.4byte	0x327
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0x5
	.byte	0x50
	.byte	0x2
	.4byte	0x308
	.uleb128 0x7
	.4byte	0x5f
	.byte	0x5
	.byte	0x55
	.byte	0xe
	.4byte	0x358
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0x5
	.byte	0x5a
	.byte	0x2
	.4byte	0x333
	.uleb128 0x7
	.4byte	0x5f
	.byte	0x5
	.byte	0x5f
	.byte	0xe
	.4byte	0x37d
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0x5
	.byte	0x62
	.byte	0x2
	.4byte	0x364
	.uleb128 0x7
	.4byte	0x5f
	.byte	0x5
	.byte	0x67
	.byte	0xe
	.4byte	0x3ae
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0x5
	.byte	0x6c
	.byte	0x2
	.4byte	0x389
	.uleb128 0xf
	.byte	0x18
	.byte	0x5
	.byte	0x79
	.byte	0x9
	.4byte	0x430
	.uleb128 0x8
	.4byte	.LASF119
	.byte	0x7a
	.byte	0x15
	.4byte	0x2cb
	.byte	0
	.uleb128 0x8
	.4byte	.LASF120
	.byte	0x7b
	.byte	0x17
	.4byte	0x2fc
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF121
	.byte	0x7c
	.byte	0x1d
	.4byte	0x358
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF122
	.byte	0x7d
	.byte	0x1a
	.4byte	0x37d
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF123
	.byte	0x7e
	.byte	0xd
	.4byte	0x53
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF124
	.byte	0x7f
	.byte	0xe
	.4byte	0x6d
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF125
	.byte	0x80
	.byte	0xe
	.4byte	0x6d
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF126
	.byte	0x81
	.byte	0xe
	.4byte	0x6d
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF127
	.byte	0x82
	.byte	0xe
	.4byte	0x6d
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x5
	.byte	0x83
	.byte	0x2
	.4byte	0x3ba
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x6
	.byte	0x3f
	.byte	0x11
	.4byte	0x39
	.uleb128 0xa
	.4byte	.LASF130
	.byte	0x5
	.byte	0xdd
	.4byte	0x459
	.uleb128 0x5
	.4byte	0x2cb
	.byte	0
	.uleb128 0x10
	.4byte	.LASF142
	.byte	0x5
	.byte	0xd3
	.byte	0xd
	.4byte	0x27b
	.4byte	0x46f
	.uleb128 0x5
	.4byte	0x46f
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x430
	.uleb128 0xa
	.4byte	.LASF131
	.byte	0x5
	.byte	0xde
	.4byte	0x486
	.uleb128 0x5
	.4byte	0x2cb
	.byte	0
	.uleb128 0xa
	.4byte	.LASF132
	.byte	0x5
	.byte	0xdf
	.4byte	0x4a1
	.uleb128 0x5
	.4byte	0x2cb
	.uleb128 0x5
	.4byte	0x3ae
	.uleb128 0x5
	.4byte	0x2a0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF143
	.byte	0x8
	.2byte	0x97c
	.byte	0x7
	.uleb128 0x13
	.4byte	.LASF136
	.byte	0x8
	.2byte	0x928
	.byte	0xc
	.4byte	0x43c
	.uleb128 0xa
	.4byte	.LASF133
	.byte	0x5
	.byte	0xdc
	.4byte	0x4cd
	.uleb128 0x5
	.4byte	0x2cb
	.uleb128 0x5
	.4byte	0x327
	.byte	0
	.uleb128 0xa
	.4byte	.LASF134
	.byte	0x7
	.byte	0x32
	.4byte	0x4e3
	.uleb128 0x5
	.4byte	0x93
	.uleb128 0x5
	.4byte	0x253
	.byte	0
	.uleb128 0xa
	.4byte	.LASF135
	.byte	0x7
	.byte	0x20
	.4byte	0x4f4
	.uleb128 0x5
	.4byte	0x9a
	.byte	0
	.uleb128 0x14
	.4byte	.LASF137
	.byte	0x1
	.byte	0x37
	.byte	0x11
	.4byte	0x80
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x79
	.byte	0x5
	.4byte	0x93
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x663
	.uleb128 0x15
	.4byte	.LASF144
	.byte	0x1
	.byte	0x7b
	.byte	0x14
	.4byte	0x430
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.4byte	0x6a4
	.4byte	.LBI4
	.byte	0x7
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x89
	.byte	0x5
	.4byte	0x613
	.uleb128 0x17
	.4byte	0x6b5
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x6
	.4byte	.LVL8
	.4byte	0x486
	.4byte	0x56b
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x9
	.4byte	.LVL9
	.4byte	0x475
	.uleb128 0x6
	.4byte	.LVL11
	.4byte	0x459
	.4byte	0x588
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.4byte	.LVL12
	.4byte	0x4b7
	.4byte	0x59b
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.4byte	.LVL13
	.4byte	0x4b7
	.4byte	0x5ae
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x6
	.4byte	.LVL14
	.4byte	0x4b7
	.4byte	0x5c1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x6
	.4byte	.LVL15
	.4byte	0x486
	.4byte	0x5d9
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.4byte	.LVL16
	.4byte	0x486
	.4byte	0x5f1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x6
	.4byte	.LVL17
	.4byte	0x486
	.4byte	0x609
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x9
	.4byte	.LVL18
	.4byte	0x448
	.byte	0
	.uleb128 0x6
	.4byte	.LVL7
	.4byte	0x71a
	.4byte	0x635
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.4byte	.LVL19
	.4byte	0x4e3
	.4byte	0x649
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.uleb128 0x18
	.4byte	.LVL20
	.4byte	0x4cd
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x35
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	int_timer_cb
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF145
	.byte	0x1
	.byte	0x71
	.byte	0xd
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a4
	.uleb128 0x6
	.4byte	.LVL0
	.4byte	0x4b7
	.4byte	0x691
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.4byte	.LVL1
	.4byte	0x4aa
	.uleb128 0x1a
	.4byte	.LVL2
	.4byte	0x4a1
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF146
	.byte	0x1
	.byte	0x56
	.byte	0x14
	.4byte	0x27b
	.byte	0x1
	.4byte	0x6c2
	.uleb128 0x1c
	.4byte	.LASF147
	.byte	0x1
	.byte	0x56
	.byte	0x33
	.4byte	0x46f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x3f
	.byte	0xa
	.4byte	0x80
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ee
	.uleb128 0x9
	.4byte	.LVL5
	.4byte	0x4f4
	.uleb128 0x9
	.4byte	.LVL6
	.4byte	0x725
	.byte	0
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x3a
	.byte	0xa
	.4byte	0x6d
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71a
	.uleb128 0x9
	.4byte	.LVL3
	.4byte	0x4f4
	.uleb128 0x9
	.4byte	.LVL4
	.4byte	0x725
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF148
	.4byte	.LASF149
	.byte	0x9
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x7
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x14
.LLST0:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL10-.LVL7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL7
	.uleb128 .LVL11-1-.LVL7
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL11-1-.LVL7
	.uleb128 .LVL18-.LVL7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
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
	.4byte	.LFB12
	.uleb128 .LFE12-.LFB12
	.byte	0x7
	.4byte	.LFB9
	.uleb128 .LFE9-.LFB9
	.byte	0x7
	.4byte	.LFB10
	.uleb128 .LFE10-.LFB10
	.byte	0x7
	.4byte	.LFB13
	.uleb128 .LFE13-.LFB13
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
	.4byte	.LASF151
	.4byte	.LASF152
	.4byte	.LASF153
	.4byte	.LASF154
	.4byte	.LASF155
	.4byte	.LASF156
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0xa
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF157
	.byte	0x5
	.4byte	.LASF158
	.byte	0x6
	.4byte	.LASF159
	.byte	0x1
	.4byte	.LASF160
	.byte	0x2
	.4byte	.LASF161
	.byte	0x2
	.4byte	.LASF162
	.byte	0x4
	.4byte	.LASF163
	.byte	0x5
	.4byte	.LASF164
	.byte	0x3
	.4byte	.LASF165
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x88
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
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x15
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x19
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE12
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM14
	.byte	0x51
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
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
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
	.4byte	.LM20
	.byte	0x56
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x18
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
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
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM26
	.byte	0x90
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x18
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x18
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x6
	.byte	0x25
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x3
	.sleb128 -51
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x6
	.byte	0x34
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE13
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF87:
	.string	"ERROR"
.LASF106:
	.string	"TIMER_PRELOAD_TRIG_NONE"
.LASF95:
	.string	"TIMER_CH_MAX"
.LASF105:
	.string	"TIMER_Comp_ID_Type"
.LASF21:
	.string	"L1C_BMX_ERR_IRQn"
.LASF17:
	.string	"MEXT_IRQn"
.LASF26:
	.string	"SDIO_IRQn"
.LASF69:
	.string	"PDS_WAKEUP_IRQn"
.LASF147:
	.string	"timerCfg"
.LASF74:
	.string	"BZ_PHY_IRQn"
.LASF14:
	.string	"unsigned int"
.LASF132:
	.string	"TIMER_IntMask"
.LASF81:
	.string	"MAC_PORT_TRG_IRQn"
.LASF138:
	.string	"bl_timer_tick_enable"
.LASF72:
	.string	"BOR_IRQn"
.LASF20:
	.string	"BMX_TO_IRQn"
.LASF33:
	.string	"SEC_SHA_IRQn"
.LASF136:
	.string	"xTaskIncrementTick"
.LASF141:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF57:
	.string	"TIMER_WDT_IRQn"
.LASF42:
	.string	"SF_CTRL_IRQn"
.LASF149:
	.string	"__builtin_memcpy"
.LASF145:
	.string	"int_timer_cb"
.LASF124:
	.string	"matchVal0"
.LASF125:
	.string	"matchVal1"
.LASF126:
	.string	"matchVal2"
.LASF99:
	.string	"TIMER_CLKSRC_1K"
.LASF89:
	.string	"BL_Err_Type"
.LASF101:
	.string	"TIMER_ClkSrc_Type"
.LASF10:
	.string	"uint32_t"
.LASF122:
	.string	"countMode"
.LASF144:
	.string	"timerCh1Cfg"
.LASF63:
	.string	"GPIO_INT0_IRQn"
.LASF13:
	.string	"long long unsigned int"
.LASF22:
	.string	"L1C_BMX_TO_IRQn"
.LASF127:
	.string	"preLoadVal"
.LASF114:
	.string	"TIMER_INT_COMP_0"
.LASF115:
	.string	"TIMER_INT_COMP_1"
.LASF116:
	.string	"TIMER_INT_COMP_2"
.LASF25:
	.string	"RF_TOP_INT1_IRQn"
.LASF60:
	.string	"RESERVED12"
.LASF55:
	.string	"TIMER_CH0_IRQn"
.LASF133:
	.string	"TIMER_ClearIntStatus"
.LASF91:
	.string	"MASK"
.LASF146:
	.string	"Timer_INT_Case"
.LASF97:
	.string	"TIMER_CLKSRC_FCLK"
.LASF49:
	.string	"UART1_IRQn"
.LASF130:
	.string	"TIMER_Enable"
.LASF148:
	.string	"memcpy"
.LASF82:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF34:
	.string	"DMA_ALL_IRQn"
.LASF46:
	.string	"SPI_IRQn"
.LASF86:
	.string	"SUCCESS"
.LASF85:
	.string	"char"
.LASF51:
	.string	"I2C_IRQn"
.LASF103:
	.string	"TIMER_COMP_ID_1"
.LASF150:
	.string	"__udivdi3"
.LASF7:
	.string	"uint8_t"
.LASF79:
	.string	"MAC_TX_TRG_IRQn"
.LASF90:
	.string	"UNMASK"
.LASF118:
	.string	"TIMER_INT_Type"
.LASF5:
	.string	"long long int"
.LASF88:
	.string	"TIMEOUT"
.LASF129:
	.string	"BaseType_t"
.LASF75:
	.string	"BLE_IRQn"
.LASF107:
	.string	"TIMER_PRELOAD_TRIG_COMP0"
.LASF108:
	.string	"TIMER_PRELOAD_TRIG_COMP1"
.LASF109:
	.string	"TIMER_PRELOAD_TRIG_COMP2"
.LASF70:
	.string	"HBN_OUT0_IRQn"
.LASF83:
	.string	"IRQn_LAST"
.LASF53:
	.string	"PWM_IRQn"
.LASF98:
	.string	"TIMER_CLKSRC_32K"
.LASF19:
	.string	"BMX_ERR_IRQn"
.LASF27:
	.string	"DMA_BMX_ERR_IRQn"
.LASF113:
	.string	"TIMER_CountMode_Type"
.LASF123:
	.string	"clockDivision"
.LASF121:
	.string	"plTrigSrc"
.LASF80:
	.string	"MAC_GEN_IRQn"
.LASF24:
	.string	"RF_TOP_INT0_IRQn"
.LASF110:
	.string	"TIMER_PreLoad_Trig_Type"
.LASF84:
	.string	"long double"
.LASF45:
	.string	"EFUSE_IRQn"
.LASF143:
	.string	"vTaskSwitchContext"
.LASF23:
	.string	"SEC_BMX_ERR_IRQn"
.LASF77:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF58:
	.string	"RESERVED10"
.LASF35:
	.string	"RESERVED0"
.LASF36:
	.string	"RESERVED1"
.LASF37:
	.string	"RESERVED2"
.LASF40:
	.string	"RESERVED3"
.LASF41:
	.string	"RESERVED4"
.LASF43:
	.string	"RESERVED5"
.LASF47:
	.string	"RESERVED6"
.LASF3:
	.string	"short int"
.LASF52:
	.string	"RESERVED8"
.LASF54:
	.string	"RESERVED9"
.LASF4:
	.string	"long int"
.LASF112:
	.string	"TIMER_COUNT_FREERUN"
.LASF48:
	.string	"UART0_IRQn"
.LASF135:
	.string	"bl_irq_enable"
.LASF96:
	.string	"TIMER_Chan_Type"
.LASF12:
	.string	"uint64_t"
.LASF39:
	.string	"IRRX_IRQn"
.LASF28:
	.string	"SEC_GMAC_IRQn"
.LASF100:
	.string	"TIMER_CLKSRC_XTAL"
.LASF78:
	.string	"MAC_RX_TRG_IRQn"
.LASF119:
	.string	"timerCh"
.LASF73:
	.string	"WIFI_IRQn"
.LASF111:
	.string	"TIMER_COUNT_PRELOAD"
.LASF29:
	.string	"SEC_CDET_IRQn"
.LASF11:
	.string	"long unsigned int"
.LASF71:
	.string	"HBN_OUT1_IRQn"
.LASF16:
	.string	"MTIME_IRQn"
.LASF92:
	.string	"BL_Mask_Type"
.LASF30:
	.string	"SEC_PKA_IRQn"
.LASF6:
	.string	"int32_t"
.LASF44:
	.string	"GPADC_DMA_IRQn"
.LASF8:
	.string	"unsigned char"
.LASF102:
	.string	"TIMER_COMP_ID_0"
.LASF18:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF104:
	.string	"TIMER_COMP_ID_2"
.LASF38:
	.string	"IRTX_IRQn"
.LASF15:
	.string	"MSOFT_IRQn"
.LASF59:
	.string	"RESERVED11"
.LASF32:
	.string	"SEC_AES_IRQn"
.LASF61:
	.string	"RESERVED13"
.LASF62:
	.string	"RESERVED14"
.LASF64:
	.string	"RESERVED16"
.LASF65:
	.string	"RESERVED17"
.LASF66:
	.string	"RESERVED18"
.LASF67:
	.string	"RESERVED19"
.LASF142:
	.string	"TIMER_Init"
.LASF31:
	.string	"SEC_TRNG_IRQn"
.LASF2:
	.string	"signed char"
.LASF93:
	.string	"TIMER_CH0"
.LASF94:
	.string	"TIMER_CH1"
.LASF56:
	.string	"TIMER_CH1_IRQn"
.LASF9:
	.string	"short unsigned int"
.LASF68:
	.string	"RESERVED20"
.LASF120:
	.string	"clkSrc"
.LASF128:
	.string	"TIMER_CFG_Type"
.LASF134:
	.string	"bl_irq_register"
.LASF117:
	.string	"TIMER_INT_ALL"
.LASF50:
	.string	"RESERVED7"
.LASF76:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF140:
	.string	"bl_timer_now_us"
.LASF131:
	.string	"TIMER_Disable"
.LASF137:
	.string	"timer_us_now"
.LASF139:
	.string	"bl_timer_now_us64"
	.section	.debug_line_str,"MS",@progbits,1
.LASF159:
	.string	"bl602.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_timer.c"
.LASF152:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc"
.LASF161:
	.string	"bl602_timer.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/hal_drv"
.LASF160:
	.string	"bl602_common.h"
.LASF158:
	.string	"stdint-gcc.h"
.LASF163:
	.string	"bl_irq.h"
.LASF157:
	.string	"bl_timer.c"
.LASF155:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal"
.LASF156:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF165:
	.string	"<built-in>"
.LASF162:
	.string	"portmacro.h"
.LASF154:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V"
.LASF153:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/include"
.LASF151:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals"
.LASF164:
	.string	"task.h"
	.globl	__udivdi3
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
