	.file	"loopset_i2c.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._i2c_bloop_msg,"ax",@progbits
	.align	1
	.type	_i2c_bloop_msg, @function
_i2c_bloop_msg:
.LVL0:
.LFB24:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
	li	a0,0
.LVL1:
.LM5:
	ret
	.cfi_endproc
.LFE24:
	.size	_i2c_bloop_msg, .-_i2c_bloop_msg
	.section	.rodata._i2c_bloop_evt.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"loopset_i2c.c"
	.align	2
.LC1:
	.string	"[ASSERT] [ERR] %s:%d\r\n"
	.section	.text._i2c_bloop_evt,"ax",@progbits
	.align	1
	.type	_i2c_bloop_evt, @function
_i2c_bloop_evt:
.LVL2:
.LFB23:
.LM6:
	.cfi_startproc
.LM7:
.LM8:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
.LM9:
	lw	s0,0(a3)
.LDL1:
.LVL3:
.LM10:
.LM11:
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
.LM12:
	andi	a5,s0,1
.LM13:
	mv	s1,a3
.LM14:
	beq	a5,zero,.L3
.LM15:
.LM16:
	lui	a5,%hi(gpstmsg)
	lw	a0,%lo(gpstmsg)(a5)
.LVL4:
.LM17:
	andi	s0,s0,-2
.LVL5:
.LM18:
	call	i2c_insert_msgs_process
.LVL6:
.L4:
.LM19:
.LM20:
.LM21:
	bne	s0,zero,.L3
.LVL7:
.L11:
.LM22:
.LM23:
	sw	zero,0(s1)
.LM24:
.LM25:
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL8:
.LM26:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL9:
.L3:
	.cfi_restore_state
.LM27:
.LM28:
	andi	a5,s0,2
.LM29:
	beq	a5,zero,.L5
.LM30:
.LM31:
	lui	a5,%hi(gpstmsg)
	lw	a0,%lo(gpstmsg)(a5)
.LM32:
	andi	s0,s0,-3
.LVL10:
.LM33:
	call	i2c_msgs_process
.LVL11:
	j	.L4
.LVL12:
.L5:
.LM34:
.LM35:
	andi	a5,s0,4
.LM36:
	beq	a5,zero,.L6
.LM37:
.LM38:
	lui	a5,%hi(glevent)
	lw	a1,%lo(glevent)(a5)
.LM39:
	andi	s0,s0,-5
.LVL13:
.LM40:
.LM41:
	bne	a1,zero,.L7
.LM42:
	li	a2,0
	li	a1,1
.L20:
.LM43:
	li	a0,527
	call	aos_post_event
.LVL14:
	j	.L4
.L7:
.LM44:
.LM45:
	li	a5,5
	bne	a1,a5,.L9
.LM46:
	li	a2,0
	li	a1,2
	j	.L20
.L9:
.LM47:
.LM48:
	li	a5,4
.LM49:
	li	a2,0
.LM50:
	beq	a1,a5,.L20
.LM51:
.LM52:
	li	a5,6
	bne	a1,a5,.L4
.LM53:
	li	a2,0
	li	a1,3
	j	.L20
.LVL15:
.L6:
.LM54:
.LM55:
.LM56:
	beq	s0,zero,.L11
.LM57:
	lui	a1,%hi(.LC0)
	lui	a0,%hi(.LC1)
	li	a2,77
	addi	a1,a1,%lo(.LC0)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL16:
.L12:
.LM58:
.LM59:
.LM60:
	j	.L12
	.cfi_endproc
.LFE23:
	.size	_i2c_bloop_evt, .-_i2c_bloop_evt
	.section	.text.loopset_i2c_hook_on_looprt,"ax",@progbits
	.align	1
	.globl	loopset_i2c_hook_on_looprt
	.type	loopset_i2c_hook_on_looprt, @function
loopset_i2c_hook_on_looprt:
.LFB25:
.LM61:
	.cfi_startproc
.LM62:
.LM63:
.LM64:
	lui	a0,%hi(_i2c_bloop_handler_holder.0)
	li	a1,2
	addi	a0,a0,%lo(_i2c_bloop_handler_holder.0)
	tail	looprt_handler_register
.LVL17:
	.cfi_endproc
.LFE25:
	.size	loopset_i2c_hook_on_looprt, .-loopset_i2c_hook_on_looprt
	.section	.text.i2c_async_trigger,"ax",@progbits
	.align	1
	.globl	i2c_async_trigger
	.type	i2c_async_trigger, @function
i2c_async_trigger:
.LVL18:
.LFB26:
.LM65:
	.cfi_startproc
.LM66:
.LM67:
	lui	a4,%hi(gpstmsg)
	sw	a0,%lo(gpstmsg)(a4)
.LM68:
.LM69:
	mv	a5,a1
.LM70:
	bne	a1,zero,.L23
.LM71:
	li	a1,2
.LVL19:
.L26:
.LM72:
	li	a0,2
.LVL20:
.LM73:
	tail	looprt_evt_notify_async
.LVL21:
.L23:
.LM74:
.LM75:
	li	a4,1
	beq	a1,a4,.L26
.LM76:
.LM77:
	li	a4,2
	bne	a1,a4,.L22
.LM78:
.LM79:
	lw	a3,20(a0)
	lui	a4,%hi(glevent)
.LM80:
	li	a1,4
.LVL22:
.LM81:
	mv	a0,a5
.LVL23:
.LM82:
	sw	a3,%lo(glevent)(a4)
.LM83:
	tail	looprt_evt_notify_async_fromISR
.LVL24:
.L22:
.LM84:
	ret
	.cfi_endproc
.LFE26:
	.size	i2c_async_trigger, .-i2c_async_trigger
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"I2C Trigger"
	.section	.rodata._i2c_bloop_handler_holder.0,"a"
	.align	2
	.type	_i2c_bloop_handler_holder.0, @object
	.size	_i2c_bloop_handler_holder.0, 12
_i2c_bloop_handler_holder.0:
	.word	.LC2
	.word	_i2c_bloop_evt
	.word	_i2c_bloop_msg
	.section	.sbss.glevent,"aw",@nobits
	.align	2
	.type	glevent, @object
	.size	glevent, 4
glevent:
	.zero	4
	.section	.sbss.gpstmsg,"aw",@nobits
	.align	2
	.type	gpstmsg, @object
	.size	gpstmsg, 4
gpstmsg:
	.zero	4
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x71e
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL8
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
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x8
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x6f
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x82
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x95
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x18
	.byte	0x4
	.uleb128 0x3
	.4byte	0x63
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x3
	.byte	0x46
	.byte	0x25
	.4byte	0xaf
	.uleb128 0x3
	.4byte	0xb4
	.uleb128 0x19
	.4byte	.LASF86
	.uleb128 0x3
	.4byte	0xca
	.uleb128 0x1a
	.4byte	0xb9
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0xe
	.4byte	0xc3
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0x4
	.byte	0x26
	.byte	0x8
	.4byte	0xea
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x4
	.byte	0x28
	.byte	0x1c
	.4byte	0xea
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	0xcf
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x8
	.byte	0x4
	.byte	0x2b
	.byte	0x8
	.4byte	0x117
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2e
	.byte	0x1c
	.4byte	0xea
	.byte	0
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x4
	.byte	0x30
	.byte	0x1c
	.4byte	0xea
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF22
	.byte	0x8
	.byte	0x4
	.2byte	0x118
	.byte	0x10
	.4byte	0x13e
	.uleb128 0x11
	.4byte	.LASF23
	.2byte	0x119
	.4byte	0x13e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF19
	.2byte	0x11a
	.4byte	0x13e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	0x117
	.uleb128 0x1c
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x11b
	.byte	0x3
	.4byte	0x117
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.byte	0x2e
	.byte	0x9
	.4byte	0x18e
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x5
	.byte	0x2f
	.byte	0x15
	.4byte	0x63
	.byte	0
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x5
	.byte	0x30
	.byte	0x15
	.4byte	0x63
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x5
	.byte	0x31
	.byte	0x15
	.4byte	0x63
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x5
	.byte	0x32
	.byte	0x15
	.4byte	0x63
	.byte	0x3
	.byte	0
	.uleb128 0x1e
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.byte	0x5
	.4byte	0x1ae
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0x2d
	.byte	0xf
	.4byte	0x9c
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x33
	.byte	0xb
	.4byte	0x150
	.byte	0
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x18
	.byte	0x5
	.byte	0x2a
	.byte	0x8
	.4byte	0x208
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x5
	.byte	0x2b
	.byte	0x1b
	.4byte	0xcf
	.byte	0
	.uleb128 0xa
	.string	"u"
	.byte	0x5
	.byte	0x34
	.byte	0x7
	.4byte	0x18e
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x5
	.byte	0x35
	.byte	0xb
	.4byte	0x9c
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x5
	.byte	0x36
	.byte	0xb
	.4byte	0x9c
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x5
	.byte	0x37
	.byte	0x12
	.4byte	0x32
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x5
	.byte	0x38
	.byte	0x12
	.4byte	0x32
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x10
	.byte	0x5
	.byte	0x3b
	.byte	0x8
	.4byte	0x24a
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x5
	.byte	0x3c
	.byte	0x12
	.4byte	0x32
	.byte	0
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x5
	.byte	0x3d
	.byte	0x12
	.4byte	0x32
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x5
	.byte	0x3e
	.byte	0x12
	.4byte	0x32
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x5
	.byte	0x3f
	.byte	0x12
	.4byte	0x32
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0xc
	.byte	0x5
	.byte	0x42
	.byte	0x8
	.4byte	0x27f
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x5
	.byte	0x43
	.byte	0x11
	.4byte	0xb9
	.byte	0
	.uleb128 0xa
	.string	"evt"
	.byte	0x5
	.byte	0x44
	.byte	0xb
	.4byte	0x34f
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x5
	.byte	0x45
	.byte	0xb
	.4byte	0x372
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	0x24a
	.uleb128 0x13
	.4byte	0x39
	.4byte	0x2a2
	.uleb128 0x2
	.4byte	0x2a2
	.uleb128 0x2
	.4byte	0x345
	.uleb128 0x2
	.4byte	0x34a
	.uleb128 0x2
	.4byte	0x34a
	.byte	0
	.uleb128 0x3
	.4byte	0x2a7
	.uleb128 0x1f
	.4byte	.LASF44
	.2byte	0x4a0
	.byte	0x5
	.byte	0x4b
	.byte	0x8
	.4byte	0x345
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x5
	.byte	0x4c
	.byte	0x12
	.4byte	0xa3
	.byte	0
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x5
	.byte	0x4d
	.byte	0xe
	.4byte	0x89
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x5
	.byte	0x4e
	.byte	0xe
	.4byte	0x89
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x5
	.byte	0x4f
	.byte	0xe
	.4byte	0x89
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x5
	.byte	0x50
	.byte	0xe
	.4byte	0x377
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x5
	.byte	0x51
	.byte	0xe
	.4byte	0x377
	.byte	0x90
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x52
	.byte	0x17
	.4byte	0x386
	.2byte	0x110
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x53
	.byte	0x27
	.4byte	0x395
	.2byte	0x210
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x54
	.byte	0x24
	.4byte	0x3a4
	.2byte	0x410
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x56
	.byte	0x13
	.4byte	0x143
	.2byte	0x490
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x57
	.byte	0x13
	.4byte	0x143
	.2byte	0x498
	.byte	0
	.uleb128 0x3
	.4byte	0x27f
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0x284
	.uleb128 0x13
	.4byte	0x39
	.4byte	0x36d
	.uleb128 0x2
	.4byte	0x2a2
	.uleb128 0x2
	.4byte	0x345
	.uleb128 0x2
	.4byte	0x36d
	.byte	0
	.uleb128 0x3
	.4byte	0x1ae
	.uleb128 0x3
	.4byte	0x354
	.uleb128 0xb
	.4byte	0x89
	.4byte	0x386
	.uleb128 0xc
	.4byte	0x32
	.byte	0
	.uleb128 0xb
	.4byte	0xef
	.4byte	0x395
	.uleb128 0xc
	.4byte	0x32
	.byte	0
	.uleb128 0xb
	.4byte	0x208
	.4byte	0x3a4
	.uleb128 0xc
	.4byte	0x32
	.byte	0
	.uleb128 0xb
	.4byte	0x345
	.4byte	0x3b3
	.uleb128 0xc
	.4byte	0x32
	.byte	0
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x2c
	.byte	0x6
	.byte	0x27
	.byte	0x10
	.4byte	0x46a
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x6
	.byte	0x28
	.byte	0xe
	.4byte	0x76
	.byte	0
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x6
	.byte	0x29
	.byte	0xd
	.4byte	0x63
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x6
	.byte	0x2a
	.byte	0xd
	.4byte	0x63
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.4byte	0x89
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x6
	.byte	0x2c
	.byte	0xd
	.4byte	0x63
	.byte	0x8
	.uleb128 0xa
	.string	"len"
	.byte	0x6
	.byte	0x2d
	.byte	0xe
	.4byte	0x89
	.byte	0xc
	.uleb128 0xa
	.string	"buf"
	.byte	0x6
	.byte	0x2e
	.byte	0xe
	.4byte	0x9e
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x6
	.byte	0x2f
	.byte	0x9
	.4byte	0x39
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x6
	.byte	0x30
	.byte	0x9
	.4byte	0x39
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x6
	.byte	0x31
	.byte	0x9
	.4byte	0x39
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x6
	.byte	0x32
	.byte	0x9
	.4byte	0x39
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x6
	.byte	0x33
	.byte	0x9
	.4byte	0x39
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x6
	.byte	0x34
	.byte	0x9
	.4byte	0x39
	.byte	0x28
	.byte	0
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x6
	.byte	0x35
	.byte	0x3
	.4byte	0x3b3
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x2f
	.byte	0x13
	.4byte	0x487
	.uleb128 0x5
	.byte	0x3
	.4byte	gpstmsg
	.uleb128 0x3
	.4byte	0x46a
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x30
	.byte	0xc
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	glevent
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0xc
	.byte	0x1
	.byte	0x31
	.byte	0x8
	.4byte	0x4b8
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x1
	.byte	0x32
	.byte	0x23
	.4byte	0x27f
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x49d
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x7
	.byte	0x28
	.4byte	0x4d3
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0x89
	.byte	0
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x7
	.byte	0x27
	.4byte	0x4e9
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0x89
	.byte	0
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x8
	.byte	0xce
	.4byte	0x39
	.4byte	0x4ff
	.uleb128 0x2
	.4byte	0xbe
	.uleb128 0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x9
	.byte	0x97
	.4byte	0x39
	.4byte	0x51e
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0x95
	.byte	0
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0xa
	.byte	0x32
	.4byte	0x52f
	.uleb128 0x2
	.4byte	0x487
	.byte	0
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0xa
	.byte	0x33
	.4byte	0x540
	.uleb128 0x2
	.4byte	0x487
	.byte	0
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x7
	.byte	0x2c
	.4byte	0x39
	.4byte	0x55a
	.uleb128 0x2
	.4byte	0x345
	.uleb128 0x2
	.4byte	0x39
	.byte	0
	.uleb128 0x21
	.4byte	.LASF87
	.byte	0x1
	.byte	0x6d
	.byte	0x6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c7
	.uleb128 0x22
	.string	"pst"
	.byte	0x1
	.byte	0x6d
	.byte	0x23
	.4byte	0x487
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x6d
	.byte	0x2c
	.4byte	0x39
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x23
	.4byte	.LVL21
	.4byte	0x4d3
	.4byte	0x5aa
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x14
	.4byte	.LVL24
	.4byte	0x4bd
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x5a
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
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF88
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.4byte	0x39
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60b
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0x61
	.byte	0x31
	.4byte	0x4b8
	.uleb128 0x5
	.byte	0x3
	.4byte	_i2c_bloop_handler_holder.0
	.uleb128 0x14
	.4byte	.LVL17
	.4byte	0x540
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	_i2c_bloop_handler_holder.0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF89
	.byte	0x1
	.byte	0x59
	.byte	0xc
	.4byte	0x39
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x655
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x59
	.byte	0x3c
	.4byte	0x2a2
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x26
	.4byte	.LASF72
	.byte	0x1
	.byte	0x59
	.byte	0x71
	.4byte	0x345
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x27
	.string	"msg"
	.byte	0x1
	.byte	0x59
	.byte	0x9b
	.4byte	0x36d
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x28
	.4byte	.LASF90
	.byte	0x1
	.byte	0x35
	.byte	0xc
	.4byte	0x39
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x35
	.byte	0x3c
	.4byte	0x2a2
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x35
	.byte	0x71
	.4byte	0x345
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x35
	.byte	0x94
	.4byte	0x34a
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x35
	.byte	0xaa
	.4byte	0x34a
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x29
	.string	"map"
	.byte	0x1
	.byte	0x37
	.byte	0xe
	.4byte	0x89
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x2a
	.4byte	.LASF91
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.4byte	.LDL1
	.uleb128 0x15
	.4byte	.LVL6
	.4byte	0x52f
	.uleb128 0x15
	.4byte	.LVL11
	.4byte	0x51e
	.uleb128 0x2b
	.4byte	.LVL14
	.4byte	0x4ff
	.4byte	0x6fe
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x20f
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL16
	.4byte	0x4e9
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x4d
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
	.uleb128 0x5
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 31
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
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
.LVUS6:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0x11
	.uleb128 0x11
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL20-.LVL18
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL20-.LVL18
	.uleb128 .LVL21-1-.LVL18
	.uleb128 0x5
	.byte	0x3
	.4byte	gpstmsg
	.byte	0x4
	.uleb128 .LVL21-1-.LVL18
	.uleb128 .LVL21-.LVL18
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
	.uleb128 .LVL21-.LVL18
	.uleb128 .LVL23-.LVL18
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL23-.LVL18
	.uleb128 .LVL24-1-.LVL18
	.uleb128 0x5
	.byte	0x3
	.4byte	gpstmsg
	.byte	0x4
	.uleb128 .LVL24-1-.LVL18
	.uleb128 .LVL24-.LVL18
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
	.uleb128 .LVL24-.LVL18
	.uleb128 .LFE26-.LVL18
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0x10
	.uleb128 0x10
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL19-.LVL18
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL19-.LVL18
	.uleb128 .LVL21-1-.LVL18
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL21-1-.LVL18
	.uleb128 .LVL21-.LVL18
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
	.uleb128 .LVL21-.LVL18
	.uleb128 .LVL22-.LVL18
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL22-.LVL18
	.uleb128 .LVL24-1-.LVL18
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL24-1-.LVL18
	.uleb128 .LVL24-.LVL18
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
	.uleb128 .LVL24-.LVL18
	.uleb128 .LFE26-.LVL18
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 0x4
	.uleb128 0x4
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
	.uleb128 .LFE24-.LVL0
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
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL4-.LVL2
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL4-.LVL2
	.uleb128 .LFE23-.LVL2
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
	.uleb128 0xd
	.uleb128 0xd
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL6-1-.LVL2
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL6-1-.LVL2
	.uleb128 .LFE23-.LVL2
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
.LVUS3:
	.uleb128 0
	.uleb128 0xd
	.uleb128 0xd
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL6-1-.LVL2
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL6-1-.LVL2
	.uleb128 .LFE23-.LVL2
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
.LVUS4:
	.uleb128 0
	.uleb128 0xd
	.uleb128 0xd
	.uleb128 0x14
	.uleb128 0x14
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL6-1-.LVL2
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL6-1-.LVL2
	.uleb128 .LVL8-.LVL2
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL8-.LVL2
	.uleb128 .LVL9-.LVL2
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
	.uleb128 .LVL9-.LVL2
	.uleb128 .LFE23-.LVL2
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS5:
	.uleb128 0x4
	.uleb128 0x10
	.uleb128 0x1b
	.uleb128 0x1c
	.uleb128 0x22
	.uleb128 0x30
.LLST5:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL7-.LVL3
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL10-.LVL3
	.uleb128 .LVL12-.LVL3
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL13-.LVL3
	.uleb128 .LVL15-.LVL3
	.uleb128 0x1
	.byte	0x58
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
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
.LLRL8:
	.byte	0x7
	.4byte	.LFB24
	.uleb128 .LFE24-.LFB24
	.byte	0x7
	.4byte	.LFB23
	.uleb128 .LFE23-.LFB23
	.byte	0x7
	.4byte	.LFB25
	.uleb128 .LFE25-.LFB25
	.byte	0x7
	.4byte	.LFB26
	.uleb128 .LFE26-.LFB26
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
	.uleb128 0xa
	.4byte	.LASF1
	.4byte	.LASF92
	.4byte	.LASF93
	.4byte	.LASF94
	.4byte	.LASF95
	.4byte	.LASF96
	.4byte	.LASF97
	.4byte	.LASF98
	.4byte	.LASF99
	.4byte	.LASF100
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF101
	.byte	0x6
	.4byte	.LASF102
	.byte	0x8
	.4byte	.LASF103
	.byte	0x1
	.4byte	.LASF104
	.byte	0x7
	.4byte	.LASF105
	.byte	0x4
	.4byte	.LASF106
	.byte	0x2
	.4byte	.LASF107
	.byte	0x5
	.4byte	.LASF108
	.byte	0x9
	.4byte	.LASF109
	.byte	0x3
	.4byte	.LASF110
	.byte	0x2
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x70
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
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
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
	.4byte	.LM6
	.byte	0x4c
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
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x18
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x1a
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x1a
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x16
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x29
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x1a
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x6
	.byte	0x3
	.sleb128 -27
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x16
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x18
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x16
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x18
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x18
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x16
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x1c
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x23
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1
	.byte	0x5
	.uleb128 0x5c
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x1
	.byte	0x5
	.uleb128 0x68
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0x1
	.byte	0x5
	.uleb128 0x62
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
	.4byte	.LM61
	.byte	0x76
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM62-.LM61
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM63-.LM62
	.byte	0x20
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
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
	.4byte	.LM65
	.byte	0x84
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM69-.LM68
	.byte	0x6
	.byte	0x15
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM70-.LM69
	.byte	0x19
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM71-.LM70
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM72-.LM71
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM73-.LM72
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM74-.LM73
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM75-.LM74
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM76-.LM75
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM77-.LM76
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM78-.LM77
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM79-.LM78
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM80-.LM79
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM81-.LM80
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM82-.LM81
	.byte	0x16
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM83-.LM82
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM84-.LM83
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE26
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"header"
.LASF57:
	.string	"addr"
.LASF77:
	.string	"i2c_msgs_process"
.LASF67:
	.string	"i2cx"
.LASF38:
	.string	"time_max"
.LASF69:
	.string	"gpstmsg"
.LASF52:
	.string	"statistic"
.LASF18:
	.string	"utils_list"
.LASF7:
	.string	"short int"
.LASF29:
	.string	"container"
.LASF15:
	.string	"TaskHandle_t"
.LASF71:
	.string	"loop_evt_handler_holder"
.LASF31:
	.string	"loop_msg"
.LASF5:
	.string	"long double"
.LASF91:
	.string	"redo"
.LASF62:
	.string	"event"
.LASF72:
	.string	"handler"
.LASF60:
	.string	"subaddr"
.LASF58:
	.string	"direct"
.LASF68:
	.string	"i2c_msg_t"
.LASF41:
	.string	"loop_evt_handler"
.LASF45:
	.string	"looper"
.LASF10:
	.string	"uint8_t"
.LASF32:
	.string	"item"
.LASF42:
	.string	"name"
.LASF70:
	.string	"glevent"
.LASF78:
	.string	"i2c_insert_msgs_process"
.LASF37:
	.string	"loop_evt_handler_statistic"
.LASF33:
	.string	"arg1"
.LASF28:
	.string	"id_src"
.LASF4:
	.string	"long long int"
.LASF8:
	.string	"long int"
.LASF26:
	.string	"id_dst"
.LASF75:
	.string	"printf"
.LASF50:
	.string	"evt_type_map_sync"
.LASF86:
	.string	"tskTaskControlBlock"
.LASF64:
	.string	"block"
.LASF35:
	.string	"time_added"
.LASF79:
	.string	"looprt_handler_register"
.LASF56:
	.string	"i2c_msg"
.LASF9:
	.string	"unsigned char"
.LASF89:
	.string	"_i2c_bloop_msg"
.LASF54:
	.string	"timer_dlist"
.LASF55:
	.string	"timer_dued"
.LASF82:
	.string	"loop"
.LASF6:
	.string	"signed char"
.LASF2:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF53:
	.string	"handlers"
.LASF3:
	.string	"unsigned int"
.LASF11:
	.string	"uint16_t"
.LASF81:
	.string	"_i2c_bloop_handler_holder"
.LASF21:
	.string	"last"
.LASF46:
	.string	"bitmap_evt_async"
.LASF48:
	.string	"bitmap_msg"
.LASF39:
	.string	"time_accumulated"
.LASF12:
	.string	"short unsigned int"
.LASF66:
	.string	"ins_num"
.LASF65:
	.string	"stop"
.LASF16:
	.string	"char"
.LASF49:
	.string	"evt_type_map_async"
.LASF27:
	.string	"id_msg"
.LASF51:
	.string	"list"
.LASF59:
	.string	"subflag"
.LASF88:
	.string	"loopset_i2c_hook_on_looprt"
.LASF83:
	.string	"bitmap_evt"
.LASF22:
	.string	"utils_dlist_s"
.LASF63:
	.string	"idex"
.LASF14:
	.string	"long unsigned int"
.LASF76:
	.string	"aos_post_event"
.LASF43:
	.string	"handle"
.LASF87:
	.string	"i2c_async_trigger"
.LASF36:
	.string	"time_consumed"
.LASF74:
	.string	"looprt_evt_notify_async"
.LASF40:
	.string	"count_triggered"
.LASF61:
	.string	"sublen"
.LASF84:
	.string	"evt_type_map"
.LASF24:
	.string	"utils_dlist_t"
.LASF25:
	.string	"priority"
.LASF85:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF34:
	.string	"arg2"
.LASF80:
	.string	"flag"
.LASF23:
	.string	"prev"
.LASF73:
	.string	"looprt_evt_notify_async_fromISR"
.LASF17:
	.string	"utils_list_hdr"
.LASF19:
	.string	"next"
.LASF90:
	.string	"_i2c_bloop_evt"
.LASF47:
	.string	"bitmap_evt_sync"
.LASF20:
	.string	"first"
.LASF44:
	.string	"loop_ctx"
	.section	.debug_line_str,"MS",@progbits,1
.LASF97:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src"
.LASF104:
	.string	"utils_list.h"
.LASF100:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF109:
	.string	"yloop.h"
.LASF94:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/loopset"
.LASF107:
	.string	"looprt.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src/loopset_i2c.c"
.LASF102:
	.string	"stdint-gcc.h"
.LASF98:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/include"
.LASF101:
	.string	"loopset_i2c.c"
.LASF106:
	.string	"bl_i2c.h"
.LASF108:
	.string	"stdio.h"
.LASF93:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal"
.LASF99:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF110:
	.string	"hal_i2c.h"
.LASF105:
	.string	"bloop.h"
.LASF95:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/bloop/include"
.LASF96:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/looprt/include"
.LASF92:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/include"
.LASF103:
	.string	"task.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
