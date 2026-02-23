	.file	"utils_time.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.utils_time_date_from_epoch.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.base64	"HxwfHh8eHx8eHx4fAA=="
	.section	.text.utils_time_date_from_epoch,"ax",@progbits
	.align	1
	.globl	utils_time_date_from_epoch
	.type	utils_time_date_from_epoch, @function
utils_time_date_from_epoch:
.LVL0:
.LFB0:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
.LM5:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	.cfi_offset 8, -8
	mv	s0,a1
.LM6:
	lui	a1,%hi(.LC0)
.LVL1:
.LM7:
	sw	s1,36(sp)
.LM8:
	li	a2,12
	.cfi_offset 9, -12
.LM9:
	mv	s1,a0
.LM10:
	addi	a1,a1,%lo(.LC0)
	addi	a0,sp,20
.LVL2:
.LM11:
	sw	ra,44(sp)
	.cfi_offset 1, -4
.LM12:
	call	memcpy
.LVL3:
.LM13:
.LM14:
	lui	a1,%hi(.LC1)
	li	a2,7
	addi	a1,a1,%lo(.LC1)
	addi	a0,sp,12
	call	memcpy
.LVL4:
.LM15:
.LM16:
.LM17:
	li	a4,60
	remu	a5,s1,a4
.LM18:
	li	a2,7
.LM19:
	sh	zero,6(s0)
.LM20:
	li	a1,400
.LM21:
	sb	a5,2(s0)
.LM22:
.LM23:
	divu	a5,s1,a4
.LVL5:
.LM24:
.LM25:
	remu	a3,a5,a4
.LM26:
	divu	a5,a5,a4
.LVL6:
.LM27:
	li	a4,24
.LVL7:
.LM28:
	sb	a3,1(s0)
.LM29:
.LVL8:
.LM30:
.LM31:
	remu	a3,a5,a4
.LM32:
	divu	a5,a5,a4
.LVL9:
.LM33:
	sb	a3,0(s0)
.LM34:
.LVL10:
.LM35:
.LM36:
	remu	a2,a5,a2
.LM37:
	sw	a5,12(s0)
.LM38:
.LM39:
	addi	a4,a2,32
	add	a2,a4,sp
.LM40:
	lbu	a4,-20(a2)
.LM41:
	li	a2,100
.LM42:
	sb	a4,3(s0)
.LM43:
.LM44:
	li	a4,31535104
	addi	a4,a4,896
	divu	s1,s1,a4
.LM45:
	li	a4,1972
.LM46:
	addi	s1,s1,1970
.LM47:
.LVL11:
.L2:
.LM48:
	bgtu	s1,a4,.L5
.LM49:
.LM50:
	lbu	a4,6(s0)
.LVL12:
.LM51:
	li	a3,365
.LM52:
	sub	a5,a5,a4
.LVL13:
.LM53:
	divu	a4,a5,a3
.LM54:
	remu	a5,a5,a3
.LM55:
	addi	a4,a4,1970
.LM56:
	sw	a4,8(s0)
.LM57:
.LM58:
	andi	a3,a4,3
.LM59:
	addi	a5,a5,1
.LM60:
	sw	a5,16(s0)
.LM61:
.LM62:
	bne	a3,zero,.L6
	li	a3,100
	remu	a3,a4,a3
.LM63:
	bne	a3,zero,.L7
.L6:
	li	a3,400
	remu	a4,a4,a3
.LM64:
	bne	a4,zero,.L8
.L7:
.LM65:
.LM66:
	li	a4,29
	sb	a4,21(sp)
.LM67:
.LM68:
	li	a4,1
	sb	a4,7(s0)
.L8:
.LM69:
.LVL14:
.LM70:
	li	a2,0
.LM71:
	li	a4,0
.LVL15:
.L9:
.LM72:
	andi	a1,a2,0xff
.LVL16:
.LM73:
.LM74:
.LM75:
	andi	a3,a2,255
	addi	a3,a3,32
.LM76:
	sltiu	a0,a1,12
	add	a3,a3,sp
.LM77:
	beq	a0,zero,.L12
	bgtu	a5,a4,.L10
.L12:
.LM78:
	lbu	a3,-13(a3)
	sb	a1,5(s0)
.LM79:
.LVL17:
.LM80:
.LM81:
	li	a0,0
.LM82:
	sub	a4,a4,a3
.LVL18:
.LM83:
	sub	a5,a5,a4
.LM84:
	sb	a5,4(s0)
.LM85:
.LM86:
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL19:
.LM87:
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL20:
.L5:
	.cfi_restore_state
.LM88:
.LM89:
	remu	a3,a4,a2
.LM90:
	bne	a3,zero,.L3
	remu	a3,a4,a1
.LM91:
	bne	a3,zero,.L4
.L3:
.LM92:
.LM93:
	lbu	a3,6(s0)
	addi	a3,a3,1
	sb	a3,6(s0)
.L4:
.LM94:
	addi	a4,a4,4
.LVL21:
.LM95:
	j	.L2
.LVL22:
.L10:
.LM96:
	lbu	a3,-12(a3)
.LM97:
	addi	a2,a2,1
.LM98:
.LM99:
	add	a4,a4,a3
.LVL23:
.LM100:
	slli	a4,a4,16
	srli	a4,a4,16
.LVL24:
.LM101:
	j	.L9
	.cfi_endproc
.LFE0:
	.size	utils_time_date_from_epoch, .-utils_time_date_from_epoch
	.section	.rodata
	.align	2
.LC1:
	.base64	"BAUGAAECAw=="
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x206
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL4
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x9
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
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xa
	.byte	0x14
	.byte	0x2
	.byte	0x20
	.byte	0x9
	.4byte	0x10d
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x21
	.byte	0x13
	.4byte	0x55
	.byte	0
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x22
	.byte	0x13
	.4byte	0x55
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x23
	.byte	0x13
	.4byte	0x55
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x24
	.byte	0x13
	.4byte	0x55
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x25
	.byte	0x13
	.4byte	0x55
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x26
	.byte	0x13
	.4byte	0x55
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x27
	.byte	0x13
	.4byte	0x55
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x28
	.byte	0x13
	.4byte	0x55
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x29
	.byte	0x12
	.4byte	0x2b
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x2a
	.byte	0x12
	.4byte	0x2b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x2b
	.byte	0x12
	.4byte	0x2b
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x2
	.byte	0x2c
	.byte	0x3
	.4byte	0x7f
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x22
	.byte	0x5
	.4byte	0x39
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d8
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x2d
	.4byte	0x2b
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x47
	.4byte	0x1d8
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x24
	.byte	0x12
	.4byte	0x2b
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0x25
	.byte	0x14
	.4byte	0x63
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x26
	.4byte	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x27
	.4byte	0x1ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x1fe
	.4byte	0x1b9
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x10
	.4byte	.LVL4
	.4byte	0x1fe
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x10d
	.uleb128 0x6
	.4byte	0x55
	.4byte	0x1ee
	.uleb128 0x7
	.4byte	0x2b
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.4byte	0x55
	.4byte	0x1fe
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.4byte	.LASF32
	.4byte	.LASF33
	.byte	0x3
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
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
	.sleb128 34
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0x10
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0x17
	.uleb128 0x17
	.uleb128 0x1a
	.uleb128 0x1a
	.uleb128 0x1b
	.uleb128 0x1b
	.uleb128 0x1d
	.uleb128 0x1d
	.uleb128 0x20
	.uleb128 0x20
	.uleb128 0x22
	.uleb128 0x22
	.uleb128 0x34
	.uleb128 0x34
	.uleb128 0x56
	.uleb128 0x56
	.uleb128 0x57
	.uleb128 0x57
	.uleb128 0x5f
	.uleb128 0x5f
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
	.uleb128 .LVL5-.LVL0
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL5-.LVL0
	.uleb128 .LVL6-.LVL0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL6-.LVL0
	.uleb128 .LVL7-.LVL0
	.uleb128 0xc
	.byte	0x79
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2b
	.byte	0x7e
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2b
	.byte	0x1b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL0
	.uleb128 .LVL8-.LVL0
	.uleb128 0xc
	.byte	0x79
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2b
	.byte	0x8
	.byte	0x3c
	.byte	0xa8
	.uleb128 0x2b
	.byte	0x1b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL0
	.uleb128 .LVL9-.LVL0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL9-.LVL0
	.uleb128 .LVL10-.LVL0
	.uleb128 0x15
	.byte	0x79
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2b
	.byte	0x8
	.byte	0x3c
	.byte	0xa8
	.uleb128 0x2b
	.byte	0x1b
	.byte	0xa8
	.uleb128 0
	.byte	0xa8
	.uleb128 0x2b
	.byte	0x8
	.byte	0x3c
	.byte	0xa8
	.uleb128 0x2b
	.byte	0x1b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL0
	.uleb128 .LVL13-.LVL0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL13-.LVL0
	.uleb128 .LVL19-.LVL0
	.uleb128 0x2
	.byte	0x78
	.sleb128 12
	.byte	0x4
	.uleb128 .LVL19-.LVL0
	.uleb128 .LVL20-.LVL0
	.uleb128 0xb
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x23
	.uleb128 0xc
	.byte	0x4
	.uleb128 .LVL20-.LVL0
	.uleb128 .LVL22-.LVL0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL22-.LVL0
	.uleb128 .LFE0-.LVL0
	.uleb128 0x2
	.byte	0x78
	.sleb128 12
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0x56
	.uleb128 0x56
	.uleb128 0x57
	.uleb128 0x57
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
	.uleb128 .LVL19-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL19-.LVL0
	.uleb128 .LVL20-.LVL0
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
	.byte	0x4
	.uleb128 .LVL20-.LVL0
	.uleb128 .LFE0-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS2:
	.uleb128 0x2f
	.uleb128 0x32
	.uleb128 0x57
	.uleb128 0x5e
	.uleb128 0x5e
	.uleb128 0x5f
.LLST2:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-.LVL11
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL20-.LVL11
	.uleb128 .LVL21-.LVL11
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL21-.LVL11
	.uleb128 .LVL22-.LVL11
	.uleb128 0x3
	.byte	0x7e
	.sleb128 -4
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0x45
	.uleb128 0x47
	.uleb128 0x48
	.uleb128 0x4f
	.uleb128 0x4f
	.uleb128 0x52
	.uleb128 0x5f
	.uleb128 0x63
	.uleb128 0x64
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL15-.LVL14
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL14
	.uleb128 .LVL17-.LVL14
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL17-.LVL14
	.uleb128 .LVL18-.LVL14
	.uleb128 0x13
	.byte	0x7e
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0x4d
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.LVL14
	.uleb128 .LVL23-.LVL14
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL24-.LVL14
	.uleb128 .LFE0-.LVL14
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
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
.LLRL4:
	.byte	0x7
	.4byte	.LFB0
	.uleb128 .LFE0-.LFB0
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
	.uleb128 0x3
	.4byte	.LASF1
	.4byte	.LASF34
	.4byte	.LASF35
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF36
	.byte	0x2
	.4byte	.LASF37
	.byte	0x1
	.4byte	.LASF38
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x39
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
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x1a
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x1a
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x1a
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x1a
	.byte	0x5
	.uleb128 0x13
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
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x1f
	.byte	0x5
	.uleb128 0x3a
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x3
	.sleb128 -14
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x18
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x18
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x15
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x18
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x16
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x3a
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x16
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x23
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x13
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x34
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x19
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x15
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1e
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x3c
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x1
	.byte	0x5
	.uleb128 0x48
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x1
	.byte	0x5
	.uleb128 0x36
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x1
	.byte	0x5
	.uleb128 0x48
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x18
	.byte	0x5
	.uleb128 0x44
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x16
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x14
	.byte	0x5
	.uleb128 0x49
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM62-.LM61
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM63-.LM62
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.uleb128 0x3c
	.byte	0x9
	.2byte	.LM65-.LM64
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM69-.LM68
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM70-.LM69
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM71-.LM70
	.byte	0x6
	.byte	0x15
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM72-.LM71
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM73-.LM72
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x2f
	.byte	0x9
	.2byte	.LM74-.LM73
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM75-.LM74
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x30
	.byte	0x9
	.2byte	.LM76-.LM75
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x12
	.byte	0x5
	.uleb128 0x2f
	.byte	0x9
	.2byte	.LM77-.LM76
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x19
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM78-.LM77
	.byte	0x1d
	.byte	0x5
	.uleb128 0x27
	.byte	0x9
	.2byte	.LM79-.LM78
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM80-.LM79
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM81-.LM80
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM82-.LM81
	.byte	0x13
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM83-.LM82
	.byte	0x18
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM84-.LM83
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM85-.LM84
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM86-.LM85
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM87-.LM86
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM88-.LM87
	.byte	0x6
	.byte	0x3
	.sleb128 -30
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM89-.LM88
	.byte	0x6
	.byte	0x15
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM90-.LM89
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x19
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM91-.LM90
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.uleb128 0x25
	.byte	0x9
	.2byte	.LM92-.LM91
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM93-.LM92
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM94-.LM93
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x29
	.byte	0x9
	.2byte	.LM95-.LM94
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x29
	.byte	0x9
	.2byte	.LM96-.LM95
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x30
	.byte	0x5
	.uleb128 0x2b
	.byte	0x9
	.2byte	.LM97-.LM96
	.byte	0x14
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM98-.LM97
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM99-.LM98
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM100-.LM99
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM101-.LM100
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.uleb128 0x45
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE0
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"char"
.LASF15:
	.string	"ntp_second"
.LASF19:
	.string	"leap_days"
.LASF21:
	.string	"ntp_year"
.LASF28:
	.string	"week_days"
.LASF25:
	.string	"date"
.LASF14:
	.string	"ntp_minute"
.LASF27:
	.string	"month_days"
.LASF17:
	.string	"ntp_date"
.LASF9:
	.string	"short unsigned int"
.LASF29:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF26:
	.string	"temp_days"
.LASF7:
	.string	"unsigned char"
.LASF11:
	.string	"long unsigned int"
.LASF30:
	.string	"utils_time_date_t"
.LASF2:
	.string	"unsigned int"
.LASF3:
	.string	"long long unsigned int"
.LASF22:
	.string	"days_since_epoch"
.LASF33:
	.string	"__builtin_memcpy"
.LASF31:
	.string	"utils_time_date_from_epoch"
.LASF13:
	.string	"ntp_hour"
.LASF4:
	.string	"long long int"
.LASF32:
	.string	"memcpy"
.LASF20:
	.string	"leap_year_ind"
.LASF8:
	.string	"short int"
.LASF24:
	.string	"epoch"
.LASF23:
	.string	"day_of_year"
.LASF10:
	.string	"long int"
.LASF18:
	.string	"ntp_month"
.LASF5:
	.string	"long double"
.LASF6:
	.string	"signed char"
.LASF16:
	.string	"ntp_week_day"
	.section	.debug_line_str,"MS",@progbits,1
.LASF36:
	.string	"utils_time.c"
.LASF38:
	.string	"<built-in>"
.LASF34:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/include"
.LASF35:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/utils"
.LASF37:
	.string	"utils_time.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_time.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
