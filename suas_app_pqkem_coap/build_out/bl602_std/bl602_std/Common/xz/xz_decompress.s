	.file	"xz_decompress.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.xz_uncompress_init,"ax",@progbits
	.align	1
	.globl	xz_uncompress_init
	.type	xz_uncompress_init, @function
xz_uncompress_init:
.LVL0:
.LFB1:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
.LM4:
	mv	s0,a0
	mv	s1,a1
	sw	a2,12(sp)
.LM5:
	call	xz_crc32_init
.LVL1:
.LM6:
.LM7:
	li	a1,32768
	li	a0,2
	call	xz_dec_init
.LVL2:
.LM8:
	lui	a5,%hi(s)
	sw	a0,%lo(s)(a5)
.LM9:
.LM10:
	beq	a0,zero,.L3
.LM11:
.LM12:
	lw	a2,12(sp)
.LM13:
	sw	s1,0(s0)
.LM14:
.LM15:
	sw	zero,4(s0)
.LM16:
.LM17:
	sw	zero,8(s0)
.LM18:
.LM19:
	sw	a2,12(s0)
.LM20:
.LM21:
	sw	zero,16(s0)
.LM22:
.LM23:
	sw	zero,20(s0)
.LM24:
.LM25:
	li	a0,0
.L1:
.LM26:
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL3:
.LM27:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL4:
.LM28:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL5:
.LM29:
	jr	ra
.LVL6:
.L3:
	.cfi_restore_state
.LM30:
	li	a0,1
	j	.L1
	.cfi_endproc
.LFE1:
	.size	xz_uncompress_init, .-xz_uncompress_init
	.section	.text.xz_uncompress_stream,"ax",@progbits
	.align	1
	.globl	xz_uncompress_stream
	.type	xz_uncompress_stream, @function
xz_uncompress_stream:
.LVL7:
.LFB2:
.LM31:
	.cfi_startproc
.LM32:
.LM33:
.LM34:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LM35:
	mv	a1,a0
.LVL8:
.LM36:
	sw	zero,0(a5)
.LM37:
.LM38:
	lw	a0,4(a0)
.LVL9:
.LM39:
	lw	a3,8(a1)
.LVL10:
.LM40:
	bne	a0,a3,.L6
.LM41:
.LM42:
	sw	a2,8(a1)
.LM43:
.LM44:
	sw	zero,4(a1)
.L6:
.LM45:
.LM46:
	lw	a2,16(a1)
.LVL11:
.LM47:
	lw	a3,20(a1)
	bne	a2,a3,.L7
.LM48:
.LM49:
	sw	a4,20(a1)
.LM50:
.LM51:
	sw	zero,16(a1)
.L7:
.LM52:
	lui	a4,%hi(s)
.LVL12:
.LM53:
	lw	a0,%lo(s)(a4)
	sw	a5,12(sp)
.LM54:
.LM55:
	sw	a1,8(sp)
	call	xz_dec_run
.LVL13:
.LM56:
.LM57:
	lw	a1,8(sp)
.LM58:
	li	a3,1
	lw	a5,12(sp)
.LM59:
	lw	a4,16(a1)
.LM60:
	beq	a0,a3,.L8
.LM61:
	lw	a3,20(a1)
	bne	a3,a4,.L5
.L8:
.LM62:
.LM63:
	sw	a4,0(a5)
.LM64:
.L5:
.LM65:
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL14:
.LM66:
	jr	ra
	.cfi_endproc
.LFE2:
	.size	xz_uncompress_stream, .-xz_uncompress_stream
	.section	.text.xz_uncompress_end,"ax",@progbits
	.align	1
	.globl	xz_uncompress_end
	.type	xz_uncompress_end, @function
xz_uncompress_end:
.LFB3:
.LM67:
	.cfi_startproc
.LM68:
	lui	a5,%hi(s)
	lw	a0,%lo(s)(a5)
	tail	xz_dec_end
.LVL15:
	.cfi_endproc
.LFE3:
	.size	xz_uncompress_end, .-xz_uncompress_end
	.section	.sbss.s,"aw",@nobits
	.align	2
	.type	s, @object
	.size	s, 4
s:
	.zero	4
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x31a
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL10
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
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x32
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x80
	.uleb128 0xf
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x9
	.4byte	.LASF18
	.4byte	0x80
	.byte	0x38
	.4byte	0xc2
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.4byte	0x80
	.byte	0x70
	.4byte	0x107
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x18
	.byte	0x4
	.byte	0x8c
	.byte	0x8
	.4byte	0x158
	.uleb128 0xa
	.string	"in"
	.byte	0x8d
	.byte	0x14
	.4byte	0x158
	.byte	0
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x8e
	.4byte	0x40
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x8f
	.4byte	0x40
	.byte	0x8
	.uleb128 0xa
	.string	"out"
	.byte	0x91
	.byte	0xe
	.4byte	0x15d
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x92
	.4byte	0x40
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x93
	.4byte	0x40
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	0x7b
	.uleb128 0x4
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF33
	.uleb128 0x11
	.4byte	.LASF46
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0x6
	.byte	0x17
	.4byte	0x17e
	.uleb128 0x5
	.byte	0x3
	.4byte	s
	.uleb128 0x4
	.4byte	0x169
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x4
	.byte	0xee
	.byte	0xd
	.4byte	0x195
	.uleb128 0x5
	.4byte	0x17e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0xda
	.byte	0x14
	.4byte	0xc2
	.4byte	0x1af
	.uleb128 0x5
	.4byte	0x17e
	.uleb128 0x5
	.4byte	0x1af
	.byte	0
	.uleb128 0x4
	.4byte	0x107
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0xc6
	.byte	0x17
	.4byte	0x17e
	.4byte	0x1ce
	.uleb128 0x5
	.4byte	0xa1
	.uleb128 0x5
	.4byte	0x8e
	.byte	0
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x113
	.byte	0xd
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x1
	.byte	0x37
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f7
	.uleb128 0x16
	.4byte	.LVL15
	.4byte	0x183
	.byte	0
	.uleb128 0x17
	.4byte	.LASF49
	.byte	0x1
	.byte	0x1f
	.byte	0x5
	.4byte	0x39
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a9
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x1f
	.byte	0x29
	.4byte	0x1af
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x1f
	.byte	0x4a
	.4byte	0x15d
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x1f
	.byte	0x59
	.4byte	0x8e
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x20
	.byte	0x22
	.4byte	0x15d
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x20
	.byte	0x31
	.4byte	0x8e
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x20
	.byte	0x41
	.4byte	0x2a9
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x18
	.4byte	.LASF50
	.byte	0x1
	.byte	0x22
	.byte	0x9
	.4byte	0x39
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xc
	.4byte	.LVL13
	.4byte	0x195
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x8e
	.uleb128 0x19
	.4byte	.LASF43
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.4byte	0x39
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0x27
	.4byte	0x1af
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x8
	.byte	0x38
	.4byte	0x15d
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x8
	.byte	0x47
	.4byte	0x15d
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1a
	.4byte	.LVL1
	.4byte	0x1ce
	.uleb128 0xc
	.4byte	.LVL2
	.4byte	0x1b4
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x8000
	.byte	0
	.byte	0
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x18
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x48
	.byte	0
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
.LVUS3:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0x19
	.uleb128 0x19
	.uleb128 0x23
	.uleb128 0x23
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL9-.LVL7
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL9-.LVL7
	.uleb128 .LVL13-1-.LVL7
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL13-1-.LVL7
	.uleb128 .LVL14-.LVL7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x4
	.uleb128 .LVL14-.LVL7
	.uleb128 .LFE2-.LVL7
	.uleb128 0x2
	.byte	0x72
	.sleb128 -24
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL8-.LVL7
	.uleb128 .LFE2-.LVL7
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
	.uleb128 0x10
	.uleb128 0x10
	.uleb128 0
.LLST5:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL11-.LVL7
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL11-.LVL7
	.uleb128 .LFE2-.LVL7
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
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL10-.LVL7
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL10-.LVL7
	.uleb128 .LFE2-.LVL7
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
	.uleb128 0
	.uleb128 0x16
	.uleb128 0x16
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL12-.LVL7
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL12-.LVL7
	.uleb128 .LFE2-.LVL7
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xe
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 0x19
	.uleb128 0x19
	.uleb128 0x23
	.uleb128 0x23
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL13-1-.LVL7
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL13-1-.LVL7
	.uleb128 .LVL14-.LVL7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x4
	.uleb128 .LVL14-.LVL7
	.uleb128 .LFE2-.LVL7
	.uleb128 0x2
	.byte	0x72
	.sleb128 -20
	.byte	0
.LVUS9:
	.uleb128 0x19
	.uleb128 0
.LLST9:
	.byte	0x8
	.4byte	.LVL13
	.uleb128 .LFE2-.LVL13
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0x1a
	.uleb128 0x1a
	.uleb128 0x1d
	.uleb128 0x1d
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL1-1-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL3-.LVL0
	.uleb128 .LVL6-.LVL0
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
	.uleb128 .LVL6-.LVL0
	.uleb128 .LFE1-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0x1b
	.uleb128 0x1b
	.uleb128 0x1d
	.uleb128 0x1d
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-1-.LVL0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL1-1-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LVL6-.LVL0
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
	.uleb128 .LVL6-.LVL0
	.uleb128 .LFE1-.LVL0
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0x1c
	.uleb128 0x1c
	.uleb128 0x1d
	.uleb128 0x1d
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-1-.LVL0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL1-1-.LVL0
	.uleb128 .LVL5-.LVL0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x4
	.uleb128 .LVL5-.LVL0
	.uleb128 .LVL6-.LVL0
	.uleb128 0x2
	.byte	0x72
	.sleb128 -20
	.byte	0x4
	.uleb128 .LVL6-.LVL0
	.uleb128 .LFE1-.LVL0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
.LLRL10:
	.byte	0x7
	.4byte	.LFB1
	.uleb128 .LFE1-.LFB1
	.byte	0x7
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0x7
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
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
	.4byte	.LASF51
	.4byte	.LASF52
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x5
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF53
	.byte	0x1
	.4byte	.LASF54
	.byte	0x2
	.4byte	.LASF55
	.byte	0x2
	.4byte	.LASF56
	.byte	0x1
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x1f
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
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x14
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
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
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
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
	.4byte	.LM31
	.byte	0x37
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x6
	.byte	0x15
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x19
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
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
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x1a
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x2d
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x2d
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x23
	.byte	0x9
	.2byte	.LM62-.LM61
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM63-.LM62
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM65-.LM64
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0x1
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
	.4byte	.LM67
	.byte	0x4e
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE3
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"stream"
.LASF9:
	.string	"size_t"
.LASF28:
	.string	"XZ_BUF_ERROR"
.LASF29:
	.string	"in_pos"
.LASF15:
	.string	"XZ_SINGLE"
.LASF41:
	.string	"decomp_len"
.LASF39:
	.string	"dbuf"
.LASF50:
	.string	"status"
.LASF26:
	.string	"XZ_OPTIONS_ERROR"
.LASF17:
	.string	"XZ_DYNALLOC"
.LASF34:
	.string	"xz_dec_run"
.LASF40:
	.string	"dlen"
.LASF11:
	.string	"unsigned char"
.LASF38:
	.string	"slen"
.LASF30:
	.string	"in_size"
.LASF14:
	.string	"long unsigned int"
.LASF12:
	.string	"short unsigned int"
.LASF44:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF35:
	.string	"xz_dec_init"
.LASF45:
	.string	"xz_buf"
.LASF49:
	.string	"xz_uncompress_stream"
.LASF3:
	.string	"unsigned int"
.LASF27:
	.string	"XZ_DATA_ERROR"
.LASF18:
	.string	"xz_mode"
.LASF21:
	.string	"XZ_STREAM_END"
.LASF2:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF31:
	.string	"out_pos"
.LASF19:
	.string	"xz_ret"
.LASF46:
	.string	"xz_dec"
.LASF20:
	.string	"XZ_OK"
.LASF22:
	.string	"XZ_UNSUPPORTED_CHECK"
.LASF42:
	.string	"xz_uncompress_end"
.LASF32:
	.string	"out_size"
.LASF4:
	.string	"long long int"
.LASF33:
	.string	"char"
.LASF7:
	.string	"short int"
.LASF25:
	.string	"XZ_FORMAT_ERROR"
.LASF48:
	.string	"xz_crc32_init"
.LASF37:
	.string	"sbuf"
.LASF43:
	.string	"xz_uncompress_init"
.LASF13:
	.string	"uint32_t"
.LASF8:
	.string	"long int"
.LASF23:
	.string	"XZ_MEM_ERROR"
.LASF5:
	.string	"long double"
.LASF6:
	.string	"signed char"
.LASF16:
	.string	"XZ_PREALLOC"
.LASF24:
	.string	"XZ_MEMLIMIT_ERROR"
.LASF47:
	.string	"xz_dec_end"
	.section	.debug_line_str,"MS",@progbits,1
.LASF52:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF56:
	.string	"xz.h"
.LASF54:
	.string	"stddef.h"
.LASF55:
	.string	"stdint-gcc.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz/xz_decompress.c"
.LASF51:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz"
.LASF53:
	.string	"xz_decompress.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/bl602_std"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
