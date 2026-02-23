	.file	"fdt_addresses.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.fdt_cells,"ax",@progbits
	.align	1
	.type	fdt_cells, @function
fdt_cells:
.LVL0:
.LFB40:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
.LM5:
.LM6:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
.LM7:
	addi	a3,sp,12
.LM8:
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LM9:
	call	fdt_getprop
.LVL1:
.LM10:
.LM11:
	lw	a4,12(sp)
.LM12:
	beq	a0,zero,.L1
.LM13:
.LM14:
	li	a5,4
	bne	a4,a5,.L3
.LM15:
.LM16:
	lw	a5,0(a0)
.LVL2:
.LBB4:
.LBI4:
.LM17:
.LBB5:
.LM18:
.LM19:
	srli	a3,a5,8
	andi	a3,a3,0xff
.LM20:
	slli	a4,a5,24
.LM21:
	slli	a3,a3,16
.LM22:
	or	a4,a4,a3
.LM23:
	srli	a3,a5,24
.LM24:
	srli	a5,a5,16
.LVL3:
.LM25:
	andi	a5,a5,0xff
.LM26:
	or	a4,a4,a3
.LM27:
	slli	a5,a5,8
.LM28:
	or	a5,a4,a5
.LVL4:
.LM29:
.LBE5:
.LBE4:
.LM30:
.LM31:
	addi	a2,a5,-1
.LM32:
	li	a3,3
.LM33:
	li	a4,-14
.LM34:
	bgtu	a2,a3,.L1
.LM35:
	mv	a4,a5
.LVL5:
.L1:
.LM36:
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,a4
.LVL6:
.LM37:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L3:
	.cfi_restore_state
.LM38:
	li	a4,-14
	j	.L1
	.cfi_endproc
.LFE40:
	.size	fdt_cells, .-fdt_cells
	.section	.rodata.fdt_address_cells.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"#address-cells"
	.section	.text.fdt_address_cells,"ax",@progbits
	.align	1
	.globl	fdt_address_cells
	.type	fdt_address_cells, @function
fdt_address_cells:
.LVL8:
.LFB41:
.LM39:
	.cfi_startproc
.LM40:
.LM41:
.LM42:
	lui	a2,%hi(.LC0)
.LM43:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM44:
	addi	a2,a2,%lo(.LC0)
.LM45:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM46:
	call	fdt_cells
.LVL9:
.LM47:
.LM48:
	li	a5,-1
	bne	a0,a5,.L9
.LM49:
	li	a0,2
.LVL10:
.L9:
.LM50:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE41:
	.size	fdt_address_cells, .-fdt_address_cells
	.section	.rodata.fdt_size_cells.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"#size-cells"
	.section	.text.fdt_size_cells,"ax",@progbits
	.align	1
	.globl	fdt_size_cells
	.type	fdt_size_cells, @function
fdt_size_cells:
.LVL11:
.LFB42:
.LM51:
	.cfi_startproc
.LM52:
.LM53:
.LM54:
	lui	a2,%hi(.LC1)
.LM55:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM56:
	addi	a2,a2,%lo(.LC1)
.LM57:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM58:
	call	fdt_cells
.LVL12:
.LM59:
.LM60:
	li	a5,-1
	bne	a0,a5,.L13
.LM61:
	li	a0,1
.LVL13:
.L13:
.LM62:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE42:
	.size	fdt_size_cells, .-fdt_size_cells
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2e0
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL12
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
	.uleb128 0xd
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
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x6f
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x89
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0xa
	.4byte	0x90
	.uleb128 0x3
	.4byte	0x97
	.uleb128 0x3
	.4byte	0xa6
	.uleb128 0xe
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x2
	.byte	0x63
	.byte	0x12
	.4byte	0x7d
	.uleb128 0xa
	.4byte	0xa7
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x311
	.byte	0xd
	.4byte	0xa1
	.4byte	0xde
	.uleb128 0x4
	.4byte	0xa1
	.uleb128 0x4
	.4byte	0x39
	.uleb128 0x4
	.4byte	0x9c
	.uleb128 0x4
	.4byte	0xde
	.byte	0
	.uleb128 0x3
	.4byte	0x39
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x43
	.4byte	0x39
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x162
	.uleb128 0x8
	.string	"fdt"
	.byte	0x43
	.byte	0x20
	.4byte	0xa1
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x43
	.byte	0x29
	.4byte	0x39
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x6
	.string	"val"
	.byte	0x45
	.byte	0x9
	.4byte	0x39
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x9
	.4byte	.LVL12
	.4byte	0x1e1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
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
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x39
	.4byte	0x39
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e1
	.uleb128 0x8
	.string	"fdt"
	.byte	0x39
	.byte	0x23
	.4byte	0xa1
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x39
	.byte	0x2c
	.4byte	0x39
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x6
	.string	"val"
	.byte	0x3b
	.byte	0x9
	.4byte	0x39
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x9
	.4byte	.LVL9
	.4byte	0x1e1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
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
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0x25
	.byte	0xc
	.4byte	0x39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c6
	.uleb128 0x8
	.string	"fdt"
	.byte	0x25
	.byte	0x22
	.4byte	0xa1
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x25
	.byte	0x2b
	.4byte	0x39
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x25
	.byte	0x43
	.4byte	0x9c
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x6
	.string	"c"
	.byte	0x27
	.byte	0x14
	.4byte	0x2c6
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x6
	.string	"val"
	.byte	0x28
	.byte	0x9
	.4byte	0x39
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x29
	.byte	0x9
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	0x2cb
	.4byte	.LBI4
	.byte	0x10
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x32
	.byte	0xb
	.4byte	0x28e
	.uleb128 0x13
	.4byte	0x2d8
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.uleb128 0x9
	.4byte	.LVL1
	.4byte	0xb8
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
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
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xc
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	0xb3
	.uleb128 0x14
	.4byte	.LASF23
	.byte	0x2
	.byte	0x78
	.byte	0x18
	.4byte	0x7d
	.byte	0x3
	.uleb128 0x15
	.string	"x"
	.byte	0x2
	.byte	0x78
	.byte	0x2d
	.4byte	0xa7
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
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
	.uleb128 0x6
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
	.uleb128 0x9
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
.LVUS9:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-1-.LVL11
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL12-1-.LVL11
	.uleb128 .LFE42-.LVL11
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
.LVUS10:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0
.LLST10:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-1-.LVL11
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL12-1-.LVL11
	.uleb128 .LFE42-.LVL11
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
.LVUS11:
	.uleb128 0x8
	.uleb128 0xb
.LLST11:
	.byte	0x8
	.4byte	.LVL12
	.uleb128 .LVL13-.LVL12
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL8
	.byte	0x4
	.uleb128 .LVL8-.LVL8
	.uleb128 .LVL9-1-.LVL8
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL9-1-.LVL8
	.uleb128 .LFE41-.LVL8
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
.LVUS7:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL8
	.byte	0x4
	.uleb128 .LVL8-.LVL8
	.uleb128 .LVL9-1-.LVL8
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL9-1-.LVL8
	.uleb128 .LFE41-.LVL8
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
.LVUS8:
	.uleb128 0x8
	.uleb128 0xb
.LLST8:
	.byte	0x8
	.4byte	.LVL9
	.uleb128 .LVL10-.LVL9
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 0x9
	.uleb128 0x9
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
	.uleb128 .LFE40-.LVL0
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
	.uleb128 0x9
	.uleb128 0x9
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
	.uleb128 .LFE40-.LVL0
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
	.uleb128 0x9
	.uleb128 0x9
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
	.uleb128 .LFE40-.LVL0
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
	.uleb128 0x9
	.uleb128 0x24
	.uleb128 0x25
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL6-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL7-.LVL1
	.uleb128 .LFE40-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS4:
	.uleb128 0x1c
	.uleb128 0x23
.LLST4:
	.byte	0x8
	.4byte	.LVL4
	.uleb128 .LVL5-.LVL4
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS5:
	.uleb128 0x10
	.uleb128 0x18
	.uleb128 0x18
	.uleb128 0x1c
.LLST5:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL3-.LVL2
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL3-.LVL2
	.uleb128 .LVL4-.LVL2
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
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
	.4byte	.LFB40
	.uleb128 .LFE40-.LFB40
	.byte	0x7
	.4byte	.LFB41
	.uleb128 .LFE41-.LFB41
	.byte	0x7
	.4byte	.LFB42
	.uleb128 .LFE42-.LFB42
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
	.4byte	.LASF24
	.4byte	.LASF25
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x5
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF27
	.byte	0x2
	.4byte	.LASF28
	.byte	0x1
	.4byte	.LASF29
	.byte	0x3
	.4byte	.LASF30
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
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x12
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x1c
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x16
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x5d
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x70
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x1
	.byte	0x5
	.uleb128 0x42
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x1
	.byte	0x5
	.uleb128 0x75
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x1
	.byte	0x5
	.uleb128 0x49
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x1
	.byte	0x5
	.uleb128 0xd4
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x1
	.byte	0x5
	.uleb128 0xa3
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x1
	.byte	0x5
	.uleb128 0xa3
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x1
	.byte	0x5
	.uleb128 0xa8
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x3
	.sleb128 -71
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x14
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x1a
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x16
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1c
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x10
	.byte	0x5
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE40
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM39
	.byte	0x50
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x1a
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x1a
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x18
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x19
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE41
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM51
	.byte	0x5a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x1a
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x1a
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0x18
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM62-.LM61
	.byte	0x19
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE42
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"long long int"
.LASF3:
	.string	"unsigned int"
.LASF20:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF23:
	.string	"fdt32_to_cpu"
.LASF13:
	.string	"long unsigned int"
.LASF19:
	.string	"name"
.LASF2:
	.string	"long long unsigned int"
.LASF15:
	.string	"fdt32_t"
.LASF11:
	.string	"uint8_t"
.LASF9:
	.string	"unsigned char"
.LASF14:
	.string	"char"
.LASF12:
	.string	"uint32_t"
.LASF8:
	.string	"long int"
.LASF10:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF18:
	.string	"fdt_address_cells"
.LASF5:
	.string	"long double"
.LASF17:
	.string	"fdt_size_cells"
.LASF7:
	.string	"short int"
.LASF21:
	.string	"fdt_getprop"
.LASF16:
	.string	"nodeoffset"
.LASF22:
	.string	"fdt_cells"
	.section	.debug_line_str,"MS",@progbits,1
.LASF26:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF28:
	.string	"libfdt_env.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_addresses.c"
.LASF25:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/blfdt"
.LASF24:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc"
.LASF29:
	.string	"stdint-gcc.h"
.LASF27:
	.string	"fdt_addresses.c"
.LASF30:
	.string	"libfdt.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
