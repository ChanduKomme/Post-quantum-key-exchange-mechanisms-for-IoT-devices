	.file	"utils_getopt.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_getopt_init,"ax",@progbits
	.align	1
	.globl	utils_getopt_init
	.type	utils_getopt_init, @function
utils_getopt_init:
.LVL0:
.LFB3:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
	beq	a0,zero,.L3
.LM4:
.LM5:
	li	a5,1
.LM6:
	sw	zero,0(a0)
.LM7:
.LM8:
	sw	a5,4(a0)
.LM9:
.LM10:
	sw	a1,8(a0)
.LM11:
.LM12:
	sw	zero,12(a0)
.LM13:
.LM14:
	sw	zero,16(a0)
.LM15:
.LM16:
	li	a0,0
.LVL1:
.LM17:
	ret
.LVL2:
.L3:
.LM18:
	li	a0,-1
.LVL3:
.LM19:
	ret
	.cfi_endproc
.LFE3:
	.size	utils_getopt_init, .-utils_getopt_init
	.section	.rodata.utils_getopt.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"%s: unrecognized option: %c\r\n"
	.align	2
.LC1:
	.string	"%s: option requires an argument: %c\r\n"
	.section	.text.utils_getopt,"ax",@progbits
	.align	1
	.globl	utils_getopt
	.type	utils_getopt, @function
utils_getopt:
.LVL4:
.LFB4:
.LM20:
	.cfi_startproc
.LM21:
.LM22:
.LM23:
.LM24:
.LM25:
	beq	a0,zero,.L5
.LM26:
.LM27:
	lw	a5,4(a0)
.LM28:
	bge	a5,a1,.L5
.LM29:
	slli	a7,a5,2
	add	a7,a2,a7
	lw	a4,0(a7)
.LM30:
	beq	a4,zero,.L5
.LM31:
.LM32:
	lbu	a6,0(a4)
	li	t1,45
	beq	a6,t1,.L6
.LM33:
.LM34:
	lbu	a4,0(a3)
	bne	a4,t1,.L5
.LM35:
.LM36:
	addi	a5,a5,1
	sw	a5,4(a0)
.LM37:
	lw	a5,0(a7)
.LM38:
	sw	a5,0(a0)
.LM39:
.LM40:
	li	a0,1
.LVL5:
.LM41:
	ret
.LVL6:
.L6:
.LM42:
.LM43:
	lbu	t1,1(a4)
.LM44:
	beq	t1,zero,.L5
.LM45:
.LM46:
	bne	t1,a6,.L8
.LM47:
	lbu	a4,2(a4)
	bne	a4,zero,.L8
.LM48:
.LM49:
	addi	a5,a5,1
	sw	a5,4(a0)
.L5:
.LM50:
	li	a0,-1
.LVL7:
.LM51:
	ret
.LVL8:
.L8:
.LM52:
.LM53:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM54:
	lw	a6,16(a0)
.LM55:
	bne	a6,zero,.L9
.LM56:
.LM57:
	li	a6,1
	sw	a6,16(a0)
.L9:
.LM58:
.LM59:
	lw	t1,0(a7)
	add	t1,t1,a6
.LM60:
	lbu	a4,0(t1)
.LVL9:
.LM61:
.LM62:
.LM63:
	snez	t3,a4
.LM64:
	add	a6,t3,a6
	sw	a6,16(a0)
.LM65:
.LM66:
	lw	a7,0(a7)
	add	a6,a7,a6
.LM67:
	lbu	a6,0(a6)
	bne	a6,zero,.L10
.LM68:
.LM69:
	addi	a5,a5,1
	sw	a5,4(a0)
.LM70:
.LM71:
	sw	zero,16(a0)
.L10:
.LM72:
.LM73:
	lbu	a5,0(a3)
.LM74:
	li	a7,0
.LM75:
	addi	a5,a5,-43
	andi	a5,a5,253
.LM76:
	seqz	a5,a5
	add	a3,a3,a5
.LVL10:
.LM77:
.L13:
.LM78:
.LM79:
.LM80:
	add	a6,a3,a7
	lbu	t3,0(a6)
.LVL11:
.LM81:
.LM82:
	addi	a7,a7,1
.LVL12:
.LM83:
	beq	t3,zero,.L12
.LM84:
	bne	a4,t3,.L13
.L12:
	mv	t4,a2
.LM85:
	addi	a2,a4,-58
.LVL13:
.LM86:
	mv	a5,a0
.LM87:
.LM88:
	mv	a0,a4
.LVL14:
.LM89:
	beq	a2,zero,.L23
.LM90:
	beq	t3,a4,.L14
.L23:
.LM91:
.LM92:
	sw	a4,12(a5)
.LM93:
.LM94:
	lbu	a3,0(a3)
.LVL15:
.LM95:
	li	a4,58
.LVL16:
.LM96:
	beq	a3,a4,.L17
.LM97:
	lw	a5,8(a5)
.LVL17:
.LM98:
	beq	a5,zero,.L17
.LM99:
	lbu	a2,0(t1)
	lw	a1,0(t4)
.LVL18:
.LM100:
	lui	a0,%hi(.LC0)
.LVL19:
.LM101:
	addi	a0,a0,%lo(.LC0)
.LVL20:
.L49:
.LM102:
	call	printf
.LVL21:
.L17:
.LM103:
	li	a0,63
.L4:
.LM104:
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL22:
.L14:
	.cfi_restore_state
.LM105:
.LM106:
	add	a7,a3,a7
.LVL23:
.LM107:
	lbu	a7,0(a7)
	li	a2,58
	bne	a7,a2,.L4
.LM108:
.LM109:
	sw	zero,0(a5)
.LM110:
.LM111:
	lbu	a6,2(a6)
.LM112:
	lw	a2,16(a5)
.LM113:
	bne	a6,a7,.L20
.LM114:
	beq	a2,zero,.L21
.L20:
.LM115:
.LM116:
	lw	a6,4(a5)
.LM117:
	addi	a7,a6,1
.LM118:
	slli	a6,a6,2
.LM119:
	sw	a7,4(a5)
.LM120:
	add	a6,t4,a6
.LM121:
	lw	a6,0(a6)
.LM122:
	sw	zero,16(a5)
.LM123:
	add	a6,a6,a2
.LM124:
	sw	a6,0(a5)
.LM125:
.L21:
.LM126:
.LM127:
	lw	a2,4(a5)
	ble	a2,a1,.L4
.LM128:
.LM129:
	sw	a4,12(a5)
.LM130:
.LM131:
	lbu	a4,0(a3)
.LVL24:
.LM132:
	li	a3,58
.LVL25:
.LM133:
	mv	a0,a4
.LVL26:
.LM134:
	beq	a4,a3,.L4
.LM135:
.LM136:
	lw	a5,8(a5)
.LVL27:
.LM137:
	beq	a5,zero,.L17
.LM138:
	lui	a0,%hi(.LC1)
	lbu	a2,0(t1)
	lw	a1,0(t4)
.LVL28:
.LM139:
	addi	a0,a0,%lo(.LC1)
	j	.L49
	.cfi_endproc
.LFE4:
	.size	utils_getopt, .-utils_getopt
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1f8
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL9
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
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	0x82
	.uleb128 0x6
	.4byte	0x78
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	0x82
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0xa
	.4byte	0x8e
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x14
	.byte	0x2
	.byte	0x24
	.byte	0x10
	.4byte	0xe2
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x25
	.byte	0xb
	.4byte	0x78
	.byte	0
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x26
	.byte	0x9
	.4byte	0x6a
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x27
	.byte	0x9
	.4byte	0x6a
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x28
	.byte	0x9
	.4byte	0x6a
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x29
	.byte	0x9
	.4byte	0x6a
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x2
	.byte	0x2a
	.byte	0x3
	.4byte	0x98
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x3
	.byte	0xce
	.byte	0x5
	.4byte	0x6a
	.4byte	0x105
	.uleb128 0xe
	.4byte	0x93
	.uleb128 0xf
	.byte	0
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x4d
	.byte	0x5
	.4byte	0x6a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b9
	.uleb128 0x7
	.string	"env"
	.byte	0x4d
	.byte	0x20
	.4byte	0x1b9
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x29
	.4byte	0x6a
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3c
	.4byte	0x1be
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x50
	.4byte	0x8e
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x5
	.string	"i"
	.byte	0x4f
	.byte	0x9
	.4byte	0x6a
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x5
	.string	"c"
	.byte	0x50
	.byte	0xa
	.4byte	0x82
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x5
	.string	"d"
	.byte	0x50
	.byte	0xd
	.4byte	0x82
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.byte	0x51
	.byte	0xb
	.4byte	0x78
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x12
	.4byte	.LVL21
	.4byte	0xee
	.byte	0
	.uleb128 0x3
	.4byte	0xe2
	.uleb128 0x3
	.4byte	0x7d
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3e
	.byte	0x5
	.4byte	0x6a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.string	"env"
	.byte	0x3e
	.byte	0x25
	.4byte	0x1b9
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x14
	.4byte	.LASF15
	.byte	0x1
	.byte	0x3e
	.byte	0x2e
	.4byte	0x6a
	.uleb128 0x1
	.byte	0x5b
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 77
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0x14
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
	.byte	0
	.section	.debug_loclists,"",@progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS1:
	.uleb128 0
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x16
	.uleb128 0x16
	.uleb128 0x1f
	.uleb128 0x1f
	.uleb128 0x20
	.uleb128 0x20
	.uleb128 0x45
	.uleb128 0x45
	.uleb128 0x4e
	.uleb128 0x4e
	.uleb128 0x55
	.uleb128 0x55
	.uleb128 0x75
	.uleb128 0x75
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL5-.LVL4
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL5-.LVL4
	.uleb128 .LVL6-.LVL4
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
	.uleb128 .LVL6-.LVL4
	.uleb128 .LVL7-.LVL4
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL7-.LVL4
	.uleb128 .LVL8-.LVL4
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
	.uleb128 .LVL8-.LVL4
	.uleb128 .LVL14-.LVL4
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL14-.LVL4
	.uleb128 .LVL17-.LVL4
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL17-.LVL4
	.uleb128 .LVL22-.LVL4
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
	.uleb128 .LVL22-.LVL4
	.uleb128 .LVL27-.LVL4
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL27-.LVL4
	.uleb128 .LFE4-.LVL4
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
	.uleb128 0x50
	.uleb128 0x50
	.uleb128 0x55
	.uleb128 0x55
	.uleb128 0x77
	.uleb128 0x77
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL18-.LVL4
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL18-.LVL4
	.uleb128 .LVL22-.LVL4
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
	.uleb128 .LVL22-.LVL4
	.uleb128 .LVL28-.LVL4
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL28-.LVL4
	.uleb128 .LFE4-.LVL4
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
	.uleb128 0x42
	.uleb128 0x42
	.uleb128 0x53
	.uleb128 0x53
	.uleb128 0x55
	.uleb128 0x55
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL13-.LVL4
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL13-.LVL4
	.uleb128 .LVL21-1-.LVL4
	.uleb128 0x1
	.byte	0x6d
	.byte	0x4
	.uleb128 .LVL21-1-.LVL4
	.uleb128 .LVL22-.LVL4
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
	.uleb128 .LVL22-.LVL4
	.uleb128 .LFE4-.LVL4
	.uleb128 0x1
	.byte	0x6d
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 0x39
	.uleb128 0x39
	.uleb128 0x4b
	.uleb128 0x55
	.uleb128 0x71
.LLST4:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL10-.LVL4
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL10-.LVL4
	.uleb128 .LVL15-.LVL4
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL22-.LVL4
	.uleb128 .LVL25-.LVL4
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS5:
	.uleb128 0x3a
	.uleb128 0x3f
	.uleb128 0x3f
	.uleb128 0x52
	.uleb128 0x55
	.uleb128 0x57
.LLST5:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL12-.LVL10
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL12-.LVL10
	.uleb128 .LVL20-.LVL10
	.uleb128 0x3
	.byte	0x81
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.LVL10
	.uleb128 .LVL23-.LVL10
	.uleb128 0x3
	.byte	0x81
	.sleb128 -1
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 0x29
	.uleb128 0x4c
	.uleb128 0x4c
	.uleb128 0x51
	.uleb128 0x51
	.uleb128 0x52
	.uleb128 0x55
	.uleb128 0x70
	.uleb128 0x70
	.uleb128 0x72
	.uleb128 0x72
	.uleb128 0x75
	.uleb128 0x75
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL9
	.byte	0x4
	.uleb128 .LVL9-.LVL9
	.uleb128 .LVL16-.LVL9
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL16-.LVL9
	.uleb128 .LVL19-.LVL9
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL19-.LVL9
	.uleb128 .LVL20-.LVL9
	.uleb128 0xb
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x23
	.uleb128 0xc
	.byte	0x4
	.uleb128 .LVL22-.LVL9
	.uleb128 .LVL24-.LVL9
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL24-.LVL9
	.uleb128 .LVL26-.LVL9
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL26-.LVL9
	.uleb128 .LVL27-.LVL9
	.uleb128 0x2
	.byte	0x7f
	.sleb128 12
	.byte	0x4
	.uleb128 .LVL27-.LVL9
	.uleb128 .LFE4-.LVL9
	.uleb128 0xb
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x23
	.uleb128 0xc
	.byte	0
.LVUS7:
	.uleb128 0x3d
	.uleb128 0x53
	.uleb128 0x55
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL21-1-.LVL11
	.uleb128 0x1
	.byte	0x6c
	.byte	0x4
	.uleb128 .LVL22-.LVL11
	.uleb128 .LFE4-.LVL11
	.uleb128 0x1
	.byte	0x6c
	.byte	0
.LVUS8:
	.uleb128 0x2a
	.uleb128 0x53
	.uleb128 0x55
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL9
	.byte	0x4
	.uleb128 .LVL9-.LVL9
	.uleb128 .LVL21-1-.LVL9
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL22-.LVL9
	.uleb128 .LFE4-.LVL9
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 0x10
	.uleb128 0x10
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
	.uleb128 .LVL2-.LVL0
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
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL3-.LVL0
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
.LLRL9:
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
	.uleb128 0x4
	.4byte	.LASF1
	.4byte	.LASF28
	.4byte	.LASF29
	.4byte	.LASF30
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF31
	.byte	0x2
	.4byte	.LASF32
	.byte	0x1
	.4byte	.LASF33
	.byte	0x3
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x55
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
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x16
	.byte	0x5
	.uleb128 0x11
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
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x10
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x1f
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
	.4byte	.LM20
	.byte	0x64
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x25
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x2b
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x1
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x25
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x3
	.sleb128 -18
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x51
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x6
	.byte	0x3
	.sleb128 -38
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x6
	.byte	0x3
	.sleb128 -26
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x31
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x26
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0x1
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM62-.LM61
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM63-.LM62
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM65-.LM64
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM69-.LM68
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM70-.LM69
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM71-.LM70
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM72-.LM71
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM73-.LM72
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM74-.LM73
	.byte	0xd
	.byte	0x5
	.uleb128 0x26
	.byte	0x9
	.2byte	.LM75-.LM74
	.byte	0x21
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM76-.LM75
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM77-.LM76
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM78-.LM77
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM79-.LM78
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM80-.LM79
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM81-.LM80
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x25
	.byte	0x9
	.2byte	.LM82-.LM81
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM83-.LM82
	.byte	0x1
	.byte	0x5
	.uleb128 0x25
	.byte	0x9
	.2byte	.LM84-.LM83
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x25
	.byte	0x9
	.2byte	.LM85-.LM84
	.byte	0x19
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM86-.LM85
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM87-.LM86
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM88-.LM87
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM89-.LM88
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x16
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM90-.LM89
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM91-.LM90
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM92-.LM91
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM93-.LM92
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM94-.LM93
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM95-.LM94
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM96-.LM95
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM97-.LM96
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x21
	.byte	0x9
	.2byte	.LM98-.LM97
	.byte	0x1
	.byte	0x5
	.uleb128 0x21
	.byte	0x9
	.2byte	.LM99-.LM98
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM100-.LM99
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM101-.LM100
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM102-.LM101
	.byte	0x24
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM103-.LM102
	.byte	0x3
	.sleb128 -12
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM104-.LM103
	.byte	0x29
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM105-.LM104
	.byte	0x6
	.byte	0x3
	.sleb128 -16
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM106-.LM105
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM107-.LM106
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM108-.LM107
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM109-.LM108
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
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
	.uleb128 0x29
	.byte	0x9
	.2byte	.LM113-.LM112
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM114-.LM113
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x23
	.byte	0x9
	.2byte	.LM115-.LM114
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM116-.LM115
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x23
	.byte	0x9
	.2byte	.LM117-.LM116
	.byte	0x1
	.byte	0x5
	.uleb128 0x2b
	.byte	0x9
	.2byte	.LM118-.LM117
	.byte	0x1
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM119-.LM118
	.byte	0x1
	.byte	0x5
	.uleb128 0x2b
	.byte	0x9
	.2byte	.LM120-.LM119
	.byte	0x1
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM121-.LM120
	.byte	0x1
	.byte	0x5
	.uleb128 0x2f
	.byte	0x9
	.2byte	.LM122-.LM121
	.byte	0x18
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM123-.LM122
	.byte	0x16
	.byte	0x5
	.uleb128 0x2f
	.byte	0x9
	.2byte	.LM124-.LM123
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM125-.LM124
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM126-.LM125
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM127-.LM126
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM128-.LM127
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM129-.LM128
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM130-.LM129
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM131-.LM130
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM132-.LM131
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM133-.LM132
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x2d
	.byte	0x9
	.2byte	.LM134-.LM133
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM135-.LM134
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM136-.LM135
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM137-.LM136
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM138-.LM137
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM139-.LM138
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
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
	.string	"getopt_env"
.LASF15:
	.string	"opterr"
.LASF17:
	.string	"__optpos"
.LASF24:
	.string	"getopt_env_t"
.LASF5:
	.string	"unsigned char"
.LASF14:
	.string	"optind"
.LASF9:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF22:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF26:
	.string	"utils_getopt"
.LASF3:
	.string	"unsigned int"
.LASF13:
	.string	"optarg"
.LASF2:
	.string	"long long unsigned int"
.LASF16:
	.string	"optopt"
.LASF18:
	.string	"argc"
.LASF10:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF25:
	.string	"printf"
.LASF21:
	.string	"optchar"
.LASF6:
	.string	"short int"
.LASF19:
	.string	"argv"
.LASF8:
	.string	"long int"
.LASF27:
	.string	"utils_getopt_init"
.LASF11:
	.string	"long double"
.LASF20:
	.string	"optstring"
.LASF4:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF32:
	.string	"utils_getopt.h"
.LASF31:
	.string	"utils_getopt.c"
.LASF30:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_getopt.c"
.LASF28:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/include"
.LASF29:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/utils"
.LASF33:
	.string	"stdio.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
