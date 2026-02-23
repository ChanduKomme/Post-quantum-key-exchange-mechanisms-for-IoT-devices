	.file	"strntoumax.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.strntoumax,"ax",@progbits
	.align	1
	.globl	strntoumax
	.type	strntoumax, @function
strntoumax:
.LVL0:
.LFB2:
.LM1:
	.cfi_startproc
.LM2:
	mv	a5,a0
.LM3:
	lui	a0,%hi(_ctype_+1)
.LVL1:
.LM4:
	mv	t3,a1
.LM5:
.LVL2:
.LM6:
.LM7:
.LM8:
.LM9:
	addi	a0,a0,%lo(_ctype_+1)
.LVL3:
.L2:
.LM10:
	beq	a3,zero,.L3
.LM11:
	lbu	a4,0(a5)
.LM12:
	add	a1,a4,a0
.LM13:
	lbu	a1,0(a1)
	andi	a1,a1,8
	bne	a1,zero,.L4
.LM14:
.LBB5:
.LM15:
.LVL4:
.LM16:
.LM17:
	addi	a1,a4,-43
	andi	a1,a1,253
.LBE5:
.LM18:
	li	t1,0
.LBB6:
.LM19:
	bne	a1,zero,.L5
.LM20:
.LM21:
	addi	a4,a4,-45
.LVL5:
.LM22:
	seqz	t1,a4
.LVL6:
.LM23:
.LM24:
	addi	a5,a5,1
.LVL7:
.LM25:
.LM26:
	addi	a3,a3,-1
.LVL8:
.L5:
.LM27:
.LBE6:
.LM28:
.LM29:
	bne	a2,zero,.L6
.LM30:
.LM31:
	li	a4,1
	bleu	a3,a4,.L7
.LM32:
	lbu	a1,0(a5)
	li	a4,48
.LM33:
	li	a2,10
.LVL9:
.LM34:
	bne	a1,a4,.L8
.LM35:
	lbu	a4,1(a5)
	li	a2,88
	andi	a4,a4,223
	bne	a4,a2,.L9
.LM36:
.LVL10:
.LM37:
	addi	a3,a3,-2
.LVL11:
.LM38:
.LM39:
	addi	a5,a5,2
.LVL12:
.LM40:
.LM41:
	li	a2,16
.LVL13:
.L8:
.LM42:
	add	a3,a5,a3
.LM43:
	li	a0,0
	li	a1,0
.LBB7:
.LBB8:
.LM44:
	li	t5,9
.LM45:
	li	t4,25
.LBE8:
.LBE7:
.LM46:
	srai	t6,a2,31
	j	.L10
.LVL14:
.L4:
.LM47:
.LM48:
	addi	a5,a5,1
.LVL15:
.LM49:
.LM50:
	addi	a3,a3,-1
.LVL16:
.LM51:
	j	.L2
.LVL17:
.L7:
.LM52:
.LM53:
	li	a2,10
.LVL18:
.LM54:
	beq	a3,zero,.L8
.LM55:
	lbu	a1,0(a5)
	li	a2,48
	bne	a1,a2,.L21
.L9:
.LM56:
.LVL19:
.LM57:
	addi	a3,a3,-1
.LVL20:
.LM58:
.LM59:
	addi	a5,a5,1
.LVL21:
.LM60:
.LM61:
	li	a2,8
	j	.L8
.LVL22:
.L15:
.LM62:
.LM63:
	mul	a4,a1,a2
.LM64:
	addi	a5,a5,1
.LVL23:
.LM65:
	mul	a7,t6,a0
	mul	a1,a2,a0
.LVL24:
.LM66:
	add	a7,a7,a4
.LM67:
	srai	a4,a6,31
.LM68:
	mulhu	a0,a2,a0
.LM69:
	add	a7,a7,a0
.LM70:
	add	a0,a6,a1
	sltu	a6,a0,a6
	add	a4,a4,a7
	add	a1,a6,a4
.LVL25:
.LM71:
.LM72:
.L10:
.LM73:
	beq	a5,a3,.L11
.LM74:
	lbu	a4,0(a5)
.LVL26:
.LBB11:
.LBI7:
.LM75:
.LBB9:
.LM76:
.LM77:
	addi	a6,a4,-48
.LM78:
	bleu	a6,t5,.L13
.LM79:
.LM80:
	addi	a6,a4,-65
.LM81:
	bgtu	a6,t4,.L14
.LM82:
.LM83:
	addi	a6,a4,-55
.LVL27:
.L13:
.LM84:
.LBE9:
.LBE11:
.LM85:
	bgt	a2,a6,.L15
.L11:
.LM86:
.LM87:
	beq	t3,zero,.L16
.LM88:
.LM89:
	sw	a5,0(t3)
.L16:
.LM90:
.LM91:
	beq	t1,zero,.L1
.LM92:
	snez	a5,a0
.LVL28:
.LM93:
	neg	a1,a1
.LVL29:
.LM94:
	sub	a1,a1,a5
.LVL30:
.LM95:
	neg	a0,a0
.LM96:
	ret
.LVL31:
.L21:
.LM97:
	mv	a3,a4
.LVL32:
.L29:
.LM98:
	li	a2,10
	j	.L8
.LVL33:
.L14:
.LBB12:
.LBB10:
.LM99:
.LM100:
	addi	a6,a4,-97
.LM101:
	bgtu	a6,t4,.L11
.LM102:
.LM103:
	addi	a6,a4,-87
.LVL34:
.LM104:
.LBE10:
.LBE12:
	j	.L13
.LVL35:
.L3:
.LM105:
.LM106:
	li	t1,0
.LM107:
	beq	a2,zero,.L29
.LVL36:
.L6:
.LM108:
.LM109:
	li	a4,16
	bne	a2,a4,.L8
.LM110:
.LM111:
	li	a4,1
	bleu	a3,a4,.L8
.LM112:
	lbu	a1,0(a5)
	li	a4,48
	bne	a1,a4,.L8
.LM113:
	lbu	a4,1(a5)
	li	a1,88
	andi	a4,a4,223
	bne	a4,a1,.L8
.LM114:
.LM115:
	addi	a3,a3,-2
.LVL37:
.LM116:
.LM117:
	addi	a5,a5,2
.LVL38:
.LM118:
	j	.L8
.LVL39:
.L1:
.LM119:
	ret
	.cfi_endproc
.LFE2:
	.size	strntoumax, .-strntoumax
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1b0
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x7
	.4byte	.LASF20
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
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x32
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
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x3
	.byte	0x5c
	.byte	0x20
	.4byte	0x2b
	.uleb128 0x9
	.4byte	0xa7
	.4byte	0x9b
	.uleb128 0xa
	.byte	0
	.uleb128 0x6
	.4byte	0x90
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.4byte	0xa0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0x46
	.byte	0x13
	.4byte	0x9b
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x3a
	.byte	0xb
	.4byte	0x84
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18b
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x22
	.4byte	0x18b
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x2f
	.4byte	0x190
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x3b
	.4byte	0x39
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0x3a
	.byte	0x48
	.4byte	0x40
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3c
	.byte	0x9
	.4byte	0x39
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x3
	.string	"v"
	.byte	0x3d
	.byte	0xf
	.4byte	0x84
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x3
	.string	"d"
	.byte	0x3e
	.byte	0x9
	.4byte	0x39
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xf
	.4byte	.LLRL7
	.4byte	0x16b
	.uleb128 0x3
	.string	"c"
	.byte	0x47
	.byte	0xe
	.4byte	0xa0
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.uleb128 0x10
	.4byte	0x19a
	.4byte	.LBI7
	.byte	0x4a
	.4byte	.LLRL9
	.byte	0x1
	.byte	0x64
	.byte	0x16
	.uleb128 0x11
	.4byte	0x1a7
	.4byte	.LLST10
	.4byte	.LVUS10
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0xa7
	.uleb128 0x4
	.4byte	0x195
	.uleb128 0x4
	.4byte	0xa0
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2d
	.byte	0x15
	.4byte	0x39
	.byte	0x3
	.uleb128 0x13
	.string	"ch"
	.byte	0x1
	.byte	0x2d
	.byte	0x22
	.4byte	0x39
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 58
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
	.uleb128 0x34
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
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x40
	.uleb128 0x40
	.uleb128 0x48
	.uleb128 0x48
	.uleb128 0x5c
	.uleb128 0x60
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
	.uleb128 .LVL23-.LVL0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL23-.LVL0
	.uleb128 .LVL25-.LVL0
	.uleb128 0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.LVL0
	.uleb128 .LVL28-.LVL0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL31-.LVL0
	.uleb128 .LFE2-.LVL0
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL3-.LVL0
	.uleb128 .LFE2-.LVL0
	.uleb128 0x1
	.byte	0x6c
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 0x21
	.uleb128 0x21
	.uleb128 0x28
	.uleb128 0x28
	.uleb128 0x29
	.uleb128 0x2e
	.uleb128 0x35
	.uleb128 0x35
	.uleb128 0x3c
	.uleb128 0x3c
	.uleb128 0x3d
	.uleb128 0x3d
	.uleb128 0x60
	.uleb128 0x60
	.uleb128 0x62
	.uleb128 0x62
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL9-.LVL0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL9-.LVL0
	.uleb128 .LVL12-.LVL0
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
	.uleb128 .LVL12-.LVL0
	.uleb128 .LVL13-.LVL0
	.uleb128 0x2
	.byte	0x40
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.LVL0
	.uleb128 .LVL18-.LVL0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL18-.LVL0
	.uleb128 .LVL21-.LVL0
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
	.uleb128 .LVL21-.LVL0
	.uleb128 .LVL22-.LVL0
	.uleb128 0x2
	.byte	0x38
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.LVL0
	.uleb128 .LVL31-.LVL0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL31-.LVL0
	.uleb128 .LVL33-.LVL0
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
	.uleb128 .LVL33-.LVL0
	.uleb128 .LFE2-.LVL0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0x19
	.uleb128 0x19
	.uleb128 0x1a
	.uleb128 0x1a
	.uleb128 0x24
	.uleb128 0x24
	.uleb128 0x25
	.uleb128 0x25
	.uleb128 0x29
	.uleb128 0x2e
	.uleb128 0x31
	.uleb128 0x31
	.uleb128 0x32
	.uleb128 0x32
	.uleb128 0x38
	.uleb128 0x38
	.uleb128 0x39
	.uleb128 0x39
	.uleb128 0x3d
	.uleb128 0x60
	.uleb128 0x61
	.uleb128 0x68
	.uleb128 0x6b
	.uleb128 0x73
	.uleb128 0x76
.LLST3:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL3-.LVL0
	.uleb128 .LVL7-.LVL0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL7-.LVL0
	.uleb128 .LVL8-.LVL0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL0
	.uleb128 .LVL10-.LVL0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL10-.LVL0
	.uleb128 .LVL11-.LVL0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -2
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL0
	.uleb128 .LVL13-.LVL0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL14-.LVL0
	.uleb128 .LVL15-.LVL0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL15-.LVL0
	.uleb128 .LVL16-.LVL0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL0
	.uleb128 .LVL19-.LVL0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL19-.LVL0
	.uleb128 .LVL20-.LVL0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.LVL0
	.uleb128 .LVL22-.LVL0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL31-.LVL0
	.uleb128 .LVL32-.LVL0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL35-.LVL0
	.uleb128 .LVL36-.LVL0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL37-.LVL0
	.uleb128 .LVL39-.LVL0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS4:
	.uleb128 0x5
	.uleb128 0x16
	.uleb128 0x16
	.uleb128 0x29
	.uleb128 0x2e
	.uleb128 0x33
	.uleb128 0x33
	.uleb128 0x3d
	.uleb128 0x60
	.uleb128 0x61
	.uleb128 0x68
	.uleb128 0x6b
.LLST4:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL6-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL2
	.uleb128 .LVL13-.LVL2
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL14-.LVL2
	.uleb128 .LVL17-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-.LVL2
	.uleb128 .LVL22-.LVL2
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL31-.LVL2
	.uleb128 .LVL32-.LVL2
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL35-.LVL2
	.uleb128 .LVL36-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 0x6
	.uleb128 0x3d
	.uleb128 0x3d
	.uleb128 0x41
	.uleb128 0x46
	.uleb128 0x5d
	.uleb128 0x60
	.uleb128 0x62
	.uleb128 0x62
	.uleb128 0x68
	.uleb128 0x68
	.uleb128 0x76
	.uleb128 0x76
	.uleb128 0
.LLST5:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL22-.LVL2
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.byte	0x4
	.uleb128 .LVL22-.LVL2
	.uleb128 .LVL24-.LVL2
	.uleb128 0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL25-.LVL2
	.uleb128 .LVL29-.LVL2
	.uleb128 0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL31-.LVL2
	.uleb128 .LVL33-.LVL2
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.byte	0x4
	.uleb128 .LVL33-.LVL2
	.uleb128 .LVL35-.LVL2
	.uleb128 0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL35-.LVL2
	.uleb128 .LVL39-.LVL2
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.byte	0x4
	.uleb128 .LVL39-.LVL2
	.uleb128 .LFE2-.LVL2
	.uleb128 0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS6:
	.uleb128 0x67
	.uleb128 0x68
.LLST6:
	.byte	0x8
	.4byte	.LVL34
	.uleb128 .LVL35-.LVL34
	.uleb128 0x1
	.byte	0x60
	.byte	0
.LVUS8:
	.uleb128 0xf
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x1a
.LLST8:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL5-.LVL4
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL5-.LVL4
	.uleb128 .LVL8-.LVL4
	.uleb128 0x3
	.byte	0x7e
	.sleb128 45
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 0x4a
	.uleb128 0x53
	.uleb128 0x62
	.uleb128 0x67
.LLST10:
	.byte	0x6
	.4byte	.LVL26
	.byte	0x4
	.uleb128 .LVL26-.LVL26
	.uleb128 .LVL27-.LVL26
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL33-.LVL26
	.uleb128 .LVL34-.LVL26
	.uleb128 0x1
	.byte	0x5e
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
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
	.byte	0x5
	.4byte	.LBB5
	.byte	0x4
	.uleb128 .LBB5-.LBB5
	.uleb128 .LBE5-.LBB5
	.byte	0x4
	.uleb128 .LBB6-.LBB5
	.uleb128 .LBE6-.LBB5
	.byte	0
.LLRL9:
	.byte	0x5
	.4byte	.LBB7
	.byte	0x4
	.uleb128 .LBB7-.LBB7
	.uleb128 .LBE7-.LBB7
	.byte	0x4
	.uleb128 .LBB11-.LBB7
	.uleb128 .LBE11-.LBB7
	.byte	0x4
	.uleb128 .LBB12-.LBB7
	.uleb128 .LBE12-.LBB7
	.byte	0
.LLRL11:
	.byte	0x7
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
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
	.uleb128 0x4
	.4byte	.LASF1
	.4byte	.LASF23
	.4byte	.LASF24
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x5
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF26
	.byte	0x1
	.4byte	.LASF27
	.byte	0x2
	.4byte	.LASF28
	.byte	0x2
	.4byte	.LASF29
	.byte	0x3
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x51
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1c
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x12
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x3
	.sleb128 -12
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x23
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x21
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0xd
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x1d
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x3
	.sleb128 -43
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x19
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x4b
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x6
	.byte	0x3
	.sleb128 -36
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x6
	.byte	0x2a
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x12
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM62-.LM61
	.byte	0x6
	.byte	0x24
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM63-.LM62
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0x19
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM65-.LM64
	.byte	0x15
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM69-.LM68
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM70-.LM69
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM71-.LM70
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM72-.LM71
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM73-.LM72
	.byte	0x14
	.byte	0x5
	.uleb128 0x2c
	.byte	0x9
	.2byte	.LM74-.LM73
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM75-.LM74
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x3
	.sleb128 -55
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM76-.LM75
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM77-.LM76
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM78-.LM77
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM79-.LM78
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM80-.LM79
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM81-.LM80
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM82-.LM81
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM83-.LM82
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM84-.LM83
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM85-.LM84
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x49
	.byte	0x5
	.uleb128 0x2c
	.byte	0x9
	.2byte	.LM86-.LM85
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM87-.LM86
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM88-.LM87
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM89-.LM88
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM90-.LM89
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM91-.LM90
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM92-.LM91
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM93-.LM92
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM94-.LM93
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM95-.LM94
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM96-.LM95
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM97-.LM96
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM98-.LM97
	.byte	0x3
	.sleb128 -19
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM99-.LM98
	.byte	0x6
	.byte	0x3
	.sleb128 -39
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM100-.LM99
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM101-.LM100
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM102-.LM101
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM103-.LM102
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM104-.LM103
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM105-.LM104
	.byte	0x6
	.byte	0x32
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM106-.LM105
	.byte	0x6
	.byte	0x3
	.sleb128 -19
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM107-.LM106
	.byte	0x2a
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM108-.LM107
	.byte	0x6
	.byte	0x24
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM109-.LM108
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM110-.LM109
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM111-.LM110
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM112-.LM111
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM113-.LM112
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM114-.LM113
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM115-.LM114
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM116-.LM115
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM117-.LM116
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM118-.LM117
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM119-.LM118
	.byte	0x25
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE2
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"endptr"
.LASF12:
	.string	"size_t"
.LASF21:
	.string	"strntoumax"
.LASF9:
	.string	"unsigned char"
.LASF11:
	.string	"long unsigned int"
.LASF10:
	.string	"short unsigned int"
.LASF20:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF13:
	.string	"uintmax_t"
.LASF19:
	.string	"minus"
.LASF17:
	.string	"base"
.LASF3:
	.string	"unsigned int"
.LASF2:
	.string	"long long unsigned int"
.LASF22:
	.string	"digitval"
.LASF18:
	.string	"_ctype_"
.LASF4:
	.string	"long long int"
.LASF15:
	.string	"nptr"
.LASF14:
	.string	"char"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"long int"
.LASF5:
	.string	"long double"
.LASF6:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF24:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF27:
	.string	"stddef.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602/evb/src/strntoumax.c"
.LASF23:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602/evb/src"
.LASF26:
	.string	"strntoumax.c"
.LASF29:
	.string	"ctype.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/bl602"
.LASF25:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF28:
	.string	"stdint-gcc.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
