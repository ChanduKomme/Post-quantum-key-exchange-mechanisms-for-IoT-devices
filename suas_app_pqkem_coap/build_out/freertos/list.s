	.file	"list.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vListInitialise,"ax",@progbits
	.align	1
	.globl	vListInitialise
	.type	vListInitialise, @function
vListInitialise:
.LVL0:
.LFB1:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
	addi	a5,a0,8
.LM4:
	li	a4,-1
.LM5:
	sw	zero,0(a0)
.LM6:
	sw	a4,8(a0)
.LM7:
	sw	a5,4(a0)
.LM8:
.LM9:
.LM10:
	sw	a5,12(a0)
.LM11:
.LM12:
	sw	a5,16(a0)
.LM13:
.LM14:
.LM15:
.LM16:
	ret
	.cfi_endproc
.LFE1:
	.size	vListInitialise, .-vListInitialise
	.section	.text.vListInitialiseItem,"ax",@progbits
	.align	1
	.globl	vListInitialiseItem
	.type	vListInitialiseItem, @function
vListInitialiseItem:
.LVL1:
.LFB2:
.LM17:
	.cfi_startproc
.LM18:
.LM19:
	sw	zero,16(a0)
.LM20:
.LM21:
.LM22:
	ret
	.cfi_endproc
.LFE2:
	.size	vListInitialiseItem, .-vListInitialiseItem
	.section	.text.vListInsertEnd,"ax",@progbits
	.align	1
	.globl	vListInsertEnd
	.type	vListInsertEnd, @function
vListInsertEnd:
.LVL2:
.LFB3:
.LM23:
	.cfi_startproc
.LM24:
.LM25:
	lw	a5,4(a0)
.LVL3:
.LM26:
.LM27:
.LM28:
.LM29:
	sw	a5,4(a1)
.LM30:
.LM31:
	lw	a4,8(a5)
.LM32:
	sw	a4,8(a1)
.LM33:
.LM34:
.LM35:
	sw	a1,4(a4)
.LM36:
.LM37:
	sw	a1,8(a5)
.LM38:
.LM39:
	sw	a0,16(a1)
.LM40:
.LM41:
	lw	a5,0(a0)
.LVL4:
.LM42:
	addi	a5,a5,1
	sw	a5,0(a0)
.LM43:
	ret
	.cfi_endproc
.LFE3:
	.size	vListInsertEnd, .-vListInsertEnd
	.section	.text.vListInsert,"ax",@progbits
	.align	1
	.globl	vListInsert
	.type	vListInsert, @function
vListInsert:
.LVL5:
.LFB4:
.LM44:
	.cfi_startproc
.LM45:
.LM46:
.LM47:
	lw	a2,0(a1)
.LVL6:
.LM48:
.LM49:
.LM50:
.LM51:
	li	a4,-1
.LM52:
	addi	a5,a0,8
.LM53:
	beq	a2,a4,.L11
.L8:
.LVL7:
.LM54:
	mv	a3,a5
.LM55:
	lw	a5,4(a5)
.LVL8:
.LM56:
	lw	a4,0(a5)
	bleu	a4,a2,.L8
.L7:
.LM57:
.LM58:
	sw	a5,4(a1)
.LM59:
.LM60:
	sw	a1,8(a5)
.LM61:
.LM62:
	sw	a3,8(a1)
.LM63:
.LM64:
	sw	a1,4(a3)
.LM65:
.LM66:
	sw	a0,16(a1)
.LM67:
.LM68:
	lw	a5,0(a0)
.LM69:
	addi	a5,a5,1
	sw	a5,0(a0)
.LM70:
	ret
.LVL9:
.L11:
.LM71:
.LM72:
	lw	a3,16(a0)
.LVL10:
.LM73:
	lw	a5,4(a3)
	j	.L7
	.cfi_endproc
.LFE4:
	.size	vListInsert, .-vListInsert
	.section	.text.uxListRemove,"ax",@progbits
	.align	1
	.globl	uxListRemove
	.type	uxListRemove, @function
uxListRemove:
.LVL11:
.LFB5:
.LM74:
	.cfi_startproc
.LM75:
.LM76:
	lw	a3,4(a0)
.LM77:
	lw	a4,8(a0)
.LM78:
	lw	a5,16(a0)
.LVL12:
.LM79:
.LM80:
	sw	a4,8(a3)
.LM81:
.LM82:
	lw	a3,4(a0)
.LM83:
	sw	a3,4(a4)
.LM84:
.LM85:
.LM86:
	lw	a4,4(a5)
	beq	a4,a0,.L14
.LM87:
.LM88:
.LM89:
	sw	zero,16(a0)
.LM90:
.LM91:
	lw	a4,0(a5)
.LM92:
	addi	a4,a4,-1
	sw	a4,0(a5)
.LM93:
.LM94:
	lw	a0,0(a5)
.LVL13:
.LM95:
	ret
.LVL14:
.L14:
.LM96:
.LM97:
	lw	a4,8(a0)
.LM98:
	sw	a4,4(a5)
.LM99:
.LM100:
.LM101:
	sw	zero,16(a0)
.LM102:
.LM103:
	lw	a4,0(a5)
.LM104:
	addi	a4,a4,-1
	sw	a4,0(a5)
.LM105:
.LM106:
	lw	a0,0(a5)
.LVL15:
.LM107:
	ret
	.cfi_endproc
.LFE5:
	.size	uxListRemove, .-uxListRemove
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2b4
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xa
	.4byte	.LASF38
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
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x71
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x40
	.byte	0x12
	.4byte	0x81
	.uleb128 0xd
	.4byte	0x8d
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x81
	.uleb128 0x7
	.4byte	0x9e
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x14
	.byte	0x8c
	.byte	0x8
	.4byte	0xf8
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x8f
	.byte	0xd
	.4byte	0x9e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x90
	.byte	0x16
	.4byte	0xf8
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x91
	.byte	0x16
	.4byte	0xf8
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x92
	.byte	0x9
	.4byte	0x78
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x93
	.byte	0x11
	.4byte	0x12e
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	0xaf
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x14
	.byte	0xa4
	.byte	0x10
	.4byte	0x12e
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0xa7
	.byte	0x17
	.4byte	0x99
	.byte	0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0xa8
	.byte	0xf
	.4byte	0x17c
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0xa9
	.byte	0x11
	.4byte	0x170
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0xfd
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x4
	.byte	0x96
	.byte	0x1b
	.4byte	0xaf
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0xc
	.byte	0x98
	.byte	0x8
	.4byte	0x170
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x9b
	.byte	0xd
	.4byte	0x9e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x9c
	.byte	0x16
	.4byte	0xf8
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x9d
	.byte	0x16
	.4byte	0xf8
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x4
	.byte	0x9f
	.byte	0x20
	.4byte	0x13f
	.uleb128 0x5
	.4byte	0x133
	.uleb128 0x7
	.4byte	0x17c
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0xfd
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x1
	.byte	0xaa
	.byte	0xd
	.4byte	0x8d
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d4
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0xaa
	.byte	0x2e
	.4byte	0x181
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0xae
	.byte	0x10
	.4byte	0x1d9
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x5
	.4byte	0x186
	.uleb128 0x7
	.4byte	0x1d4
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x67
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x233
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x67
	.byte	0x22
	.4byte	0x1d9
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x67
	.byte	0x3d
	.4byte	0x181
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x69
	.byte	0xd
	.4byte	0x17c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x6a
	.byte	0x12
	.4byte	0xaa
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x4a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x275
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x4a
	.byte	0x25
	.4byte	0x1d9
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x4a
	.byte	0x40
	.4byte	0x181
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4c
	.byte	0x14
	.4byte	0x181
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x3e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x297
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x3e
	.byte	0x2e
	.4byte	0x181
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x1
	.byte	0x25
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x25
	.byte	0x26
	.4byte	0x1d9
	.uleb128 0x1
	.byte	0x5a
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
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
.LVUS3:
	.uleb128 0
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x16
	.uleb128 0x16
	.uleb128 0x21
	.uleb128 0x21
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL13-.LVL11
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL13-.LVL11
	.uleb128 .LVL14-.LVL11
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
	.uleb128 .LVL14-.LVL11
	.uleb128 .LVL15-.LVL11
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL15-.LVL11
	.uleb128 .LFE5-.LVL11
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
	.uleb128 0x5
	.uleb128 0
.LLST4:
	.byte	0x8
	.4byte	.LVL12
	.uleb128 .LFE5-.LVL12
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS1:
	.uleb128 0xa
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x1b
	.uleb128 0x1d
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL8-.LVL7
	.uleb128 .LVL9-.LVL7
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL10-.LVL7
	.uleb128 .LFE4-.LVL7
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS2:
	.uleb128 0x4
	.uleb128 0
.LLST2:
	.byte	0x8
	.4byte	.LVL6
	.uleb128 .LFE4-.LVL6
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS0:
	.uleb128 0x3
	.uleb128 0x13
.LLST0:
	.byte	0x8
	.4byte	.LVL3
	.uleb128 .LVL4-.LVL3
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
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
.LLRL5:
	.byte	0x7
	.4byte	.LFB1
	.uleb128 .LFE1-.LFB1
	.byte	0x7
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0x7
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
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
	.uleb128 0x5
	.4byte	.LASF1
	.4byte	.LASF42
	.4byte	.LASF43
	.4byte	.LASF44
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x5
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF46
	.byte	0x3
	.4byte	.LASF47
	.byte	0x4
	.4byte	.LASF48
	.byte	0x2
	.4byte	.LASF49
	.byte	0x1
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
	.byte	0x1b
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x25
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x1e
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x10
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x13
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x1b
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x1b
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x18
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE1
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM17
	.byte	0x55
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x19
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x18
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE2
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM23
	.byte	0x61
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x18
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x1c
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x25
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x19
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
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
	.4byte	.LM44
	.byte	0x7e
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x18
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x21
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x33
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x3
	.sleb128 -28
	.byte	0x1
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x33
	.byte	0x5
	.uleb128 0x5c
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x47
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x1
	.byte	0x5
	.uleb128 0x5c
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1e
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x24
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM62-.LM61
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM63-.LM62
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM65-.LM64
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM69-.LM68
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM70-.LM69
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM71-.LM70
	.byte	0x6
	.byte	0x3
	.sleb128 -43
	.byte	0x1
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM72-.LM71
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM73-.LM72
	.byte	0x38
	.byte	0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE4
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM74
	.byte	0xc1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM75-.LM74
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM76-.LM75
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM77-.LM76
	.byte	0x1
	.byte	0x5
	.uleb128 0x35
	.byte	0x9
	.2byte	.LM78-.LM77
	.byte	0x15
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM79-.LM78
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM80-.LM79
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x25
	.byte	0x9
	.2byte	.LM81-.LM80
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM82-.LM81
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x35
	.byte	0x9
	.2byte	.LM83-.LM82
	.byte	0x1
	.byte	0x5
	.uleb128 0x25
	.byte	0x9
	.2byte	.LM84-.LM83
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM85-.LM84
	.byte	0x1a
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM86-.LM85
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM87-.LM86
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM88-.LM87
	.byte	0x1a
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM89-.LM88
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM90-.LM89
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM91-.LM90
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM92-.LM91
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM93-.LM92
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM94-.LM93
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM95-.LM94
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM96-.LM95
	.byte	0x6
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM97-.LM96
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x23
	.byte	0x9
	.2byte	.LM98-.LM97
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM99-.LM98
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM100-.LM99
	.byte	0x1a
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM101-.LM100
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM102-.LM101
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM103-.LM102
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM104-.LM103
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM105-.LM104
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM106-.LM105
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM107-.LM106
	.byte	0x18
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
.LASF20:
	.string	"pvContainer"
.LASF15:
	.string	"TickType_t"
.LASF28:
	.string	"MiniListItem_t"
.LASF16:
	.string	"xItemValue"
.LASF25:
	.string	"xListEnd"
.LASF19:
	.string	"pvOwner"
.LASF21:
	.string	"xLIST_ITEM"
.LASF7:
	.string	"unsigned char"
.LASF11:
	.string	"long unsigned int"
.LASF40:
	.string	"pxItemToRemove"
.LASF9:
	.string	"short unsigned int"
.LASF36:
	.string	"vListInitialiseItem"
.LASF29:
	.string	"List_t"
.LASF38:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O2 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF23:
	.string	"uxNumberOfItems"
.LASF35:
	.string	"vListInsertEnd"
.LASF17:
	.string	"pxNext"
.LASF3:
	.string	"unsigned int"
.LASF41:
	.string	"vListInitialise"
.LASF33:
	.string	"xValueOfInsertion"
.LASF2:
	.string	"long long unsigned int"
.LASF37:
	.string	"pxItem"
.LASF14:
	.string	"UBaseType_t"
.LASF26:
	.string	"ListItem_t"
.LASF4:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF32:
	.string	"pxIterator"
.LASF8:
	.string	"short int"
.LASF24:
	.string	"pxIndex"
.LASF18:
	.string	"pxPrevious"
.LASF13:
	.string	"uint32_t"
.LASF10:
	.string	"long int"
.LASF5:
	.string	"long double"
.LASF27:
	.string	"xMINI_LIST_ITEM"
.LASF6:
	.string	"signed char"
.LASF30:
	.string	"pxList"
.LASF22:
	.string	"xLIST"
.LASF39:
	.string	"uxListRemove"
.LASF31:
	.string	"pxNewListItem"
.LASF34:
	.string	"vListInsert"
	.section	.debug_line_str,"MS",@progbits,1
.LASF45:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/freertos"
.LASF48:
	.string	"portmacro.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/list.c"
.LASF44:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos"
.LASF42:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/include"
.LASF46:
	.string	"list.c"
.LASF43:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V"
.LASF49:
	.string	"list.h"
.LASF47:
	.string	"stdint-gcc.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
