	.file	"bl_chip.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.bl_chip_info.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"RV32"
	.align	2
.LC1:
	.string	"RV64"
	.align	2
.LC2:
	.string	"RV128"
	.align	2
.LC3:
	.string	"RVxx"
	.section	.text.bl_chip_info,"ax",@progbits
	.align	1
	.globl	bl_chip_info
	.type	bl_chip_info, @function
bl_chip_info:
.LVL0:
.LFB2:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
.LBB4:
.LBI4:
.LM5:
.LBB5:
.LM6:
.LBE5:
.LBE4:
.LM7:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
.LM8:
	mv	s0,a0
.LBB7:
.LBB6:
.LM9:
	sw	zero,12(sp)
.LM10:
 #APP
# 39 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_chip.c" 1
	csrr a5, misa
# 0 "" 2
 #NO_APP
	sw	a5,12(sp)
.LM11:
.LM12:
	lw	s1,12(sp)
.LVL1:
.LM13:
.LBE6:
.LBE7:
.LM14:
.LM15:
	li	a4,2
.LM16:
	srli	a5,s1,30
.LVL2:
.LM17:
	beq	a5,a4,.L2
	li	a4,3
	beq	a5,a4,.L3
	li	a4,1
.LM18:
	li	a2,4
.LM19:
	bne	a5,a4,.L4
.LM20:
	lui	a1,%hi(.LC0)
	addi	a1,a1,%lo(.LC0)
.L13:
.LM21:
	call	memcpy
.LVL3:
.LM22:
.LM23:
	addi	s0,s0,4
.LVL4:
.LM24:
	j	.L5
.LVL5:
.L2:
.LM25:
	lui	a1,%hi(.LC1)
	li	a2,4
	addi	a1,a1,%lo(.LC1)
	j	.L13
.L3:
.LM26:
	lui	a1,%hi(.LC2)
	li	a2,5
	addi	a1,a1,%lo(.LC2)
.LM27:
	addi	s0,a0,5
.LVL6:
.LM28:
	call	memcpy
.LVL7:
.LM29:
.LM30:
.L5:
.LM31:
.LM32:
	li	a5,45
	sb	a5,0(s0)
.LM33:
	addi	a4,s0,1
.LVL8:
.LM34:
.LM35:
.LM36:
	li	a5,0
.LM37:
	li	a1,1
.LM38:
	li	a2,26
.LVL9:
.L7:
.LM39:
.LM40:
	sll	a3,a1,a5
.LM41:
	and	a3,a3,s1
.LM42:
	beq	a3,zero,.L6
.LM43:
.LVL10:
.LM44:
	addi	a3,a5,65
.LM45:
	sb	a3,0(a4)
.LM46:
	addi	a4,a4,1
.LVL11:
.L6:
.LM47:
	addi	a5,a5,1
.LVL12:
.LM48:
	bne	a5,a2,.L7
.LM49:
.LM50:
	sb	zero,0(a4)
.LM51:
.LM52:
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL13:
.LM53:
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL14:
.L4:
	.cfi_restore_state
.LM54:
	lui	a1,%hi(.LC3)
	addi	a1,a1,%lo(.LC3)
	j	.L13
	.cfi_endproc
.LFE2:
	.size	bl_chip_info, .-bl_chip_info
	.section	.text.bl_chip_banner,"ax",@progbits
	.align	1
	.globl	bl_chip_banner
	.type	bl_chip_banner, @function
bl_chip_banner:
.LVL15:
.LFB3:
.LM55:
	.cfi_startproc
.LM56:
.LM57:
	lui	a5,%hi(bannder_shadow_bl602)
	addi	a5,a5,%lo(bannder_shadow_bl602)
	sw	a5,0(a0)
.LM58:
.LM59:
	li	a0,0
.LVL16:
.LM60:
	ret
	.cfi_endproc
.LFE3:
	.size	bl_chip_banner, .-bl_chip_banner
	.section	.rodata.bl_chip_memory_ram.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"flash"
	.align	2
.LC5:
	.string	"tcm"
	.align	2
.LC6:
	.string	"wifi"
	.section	.text.bl_chip_memory_ram,"ax",@progbits
	.align	1
	.globl	bl_chip_memory_ram
	.type	bl_chip_memory_ram, @function
bl_chip_memory_ram:
.LVL17:
.LFB4:
.LM61:
	.cfi_startproc
.LM62:
.LM63:
	lw	a4,0(a0)
	li	a5,2
	ble	a4,a5,.L17
.LM64:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
.LM65:
	li	a5,3
	sw	a5,0(a0)
.LM66:
	lui	a5,%hi(_ld_ram_addr0)
	addi	a5,a5,%lo(_ld_ram_addr0)
	sw	a5,0(a1)
.LM67:
	lui	a5,%hi(_ld_ram_size0)
	mv	s2,a1
.LM68:
.LM69:
.LM70:
.LM71:
.LM72:
.LM73:
.LM74:
	addi	a5,a5,%lo(_ld_ram_size0)
.LM75:
	lui	a1,%hi(.LC4)
.LVL18:
.LM76:
	sw	a5,0(a2)
.LM77:
	mv	a0,a3
.LVL19:
.LM78:
	addi	a1,a1,%lo(.LC4)
	mv	s0,a3
	mv	s1,a2
	call	strcpy
.LVL20:
.LM79:
.LM80:
	lui	a5,%hi(_ld_ram_addr1)
	addi	a5,a5,%lo(_ld_ram_addr1)
	sw	a5,4(s2)
.LM81:
.LM82:
	lui	a5,%hi(_ld_ram_size1)
	addi	a5,a5,%lo(_ld_ram_size1)
.LM83:
	lui	a1,%hi(.LC5)
.LM84:
	sw	a5,4(s1)
.LM85:
	addi	a1,a1,%lo(.LC5)
	addi	a0,s0,6
	call	strcpy
.LVL21:
.LM86:
.LM87:
	lui	a5,%hi(_ld_ram_addr2)
	addi	a5,a5,%lo(_ld_ram_addr2)
	sw	a5,8(s2)
.LM88:
.LM89:
	lui	a5,%hi(_ld_ram_size2)
	addi	a5,a5,%lo(_ld_ram_size2)
.LM90:
	lui	a1,%hi(.LC6)
.LM91:
	sw	a5,8(s1)
.LM92:
	addi	a0,s0,12
	addi	a1,a1,%lo(.LC6)
	call	strcpy
.LVL22:
.LM93:
.LM94:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL23:
.LM95:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL24:
.LM96:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL25:
.LM97:
	li	a0,0
.LM98:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL26:
.L17:
.LM99:
	li	a0,-1
.LVL27:
.LM100:
	ret
	.cfi_endproc
.LFE4:
	.size	bl_chip_memory_ram, .-bl_chip_memory_ram
	.section	.rodata.bannder_shadow_bl602,"a"
	.align	2
	.type	bannder_shadow_bl602, @object
	.size	bannder_shadow_bl602, 697
bannder_shadow_bl602:
	.base64	"4paI4paI4paI4paI4paI4paI4pWXIOKWiOKWiOKVlyAgICAgIOKWiOKWiOKWiOKWiOKWiOKWiOKVlyAg4paI4paI4paI4paI4paI4paI4pWXIOKWiOKWiOKWiOKWiOKWiOKWiOKVlwoN4paI4paI4pWU4pWQ4pWQ4paI4paI4pWX4paI4paI4pWRICAgICDilojilojilZTilZDilZDilZDilZDilZ0g4paI4paI4pWU4pWQ4paI4paI4paI4paI4pWX4pWa4pWQ4pWQ4pWQ4pWQ4paI4paI4pWXCg3ilojilojilojilojilojilojilZTilZ3ilojilojilZEg"
	.base64	"ICAgIOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKVlyDilojilojilZHilojilojilZTilojilojilZEg4paI4paI4paI4paI4paI4pWU4pWdCg3ilojilojilZTilZDilZDilojilojilZfilojilojilZEgICAgIOKWiOKWiOKVlOKVkOKVkOKVkOKWiOKWiOKVl+KWiOKWiOKWiOKWiOKVlOKVneKWiOKWiOKVkeKWiOKWiOKVlOKVkOKVkOKVkOKVnQoN4paI4paI4paI4paI4paI4paI4pWU4pWd4paI4paI4paI4paI4paI4paI4paI4pWX4pWa4paI4paI4paI"
	.base64	"4paI4paI4paI4pWU4pWd4pWa4paI4paI4paI4paI4paI4paI4pWU4pWd4paI4paI4paI4paI4paI4paI4paI4pWXCg3ilZrilZDilZDilZDilZDilZDilZ0g4pWa4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWdIOKVmuKVkOKVkOKVkOKVkOKVkOKVnSAg4pWa4pWQ4pWQ4pWQ4pWQ4pWQ4pWdIOKVmuKVkOKVkOKVkOKVkOKVkOKVkOKVnQoNAA=="
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x32d
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xf
	.4byte	.LASF33
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
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x8
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x61
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x80
	.uleb128 0x10
	.4byte	0x6f
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x32
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x7
	.4byte	0xa1
	.uleb128 0x3
	.4byte	0xb2
	.uleb128 0x7
	.4byte	0xa8
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0xa
	.4byte	0xb2
	.uleb128 0x3
	.4byte	0xb9
	.uleb128 0x7
	.4byte	0xbe
	.uleb128 0xb
	.4byte	0xb9
	.4byte	0xd9
	.uleb128 0x13
	.4byte	0x32
	.2byte	0x2b8
	.byte	0
	.uleb128 0xa
	.4byte	0xc8
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x60
	.byte	0x13
	.4byte	0xd9
	.uleb128 0x5
	.byte	0x3
	.4byte	bannder_shadow_bl602
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x26
	.byte	0x7
	.4byte	0xa8
	.4byte	0x10a
	.uleb128 0x5
	.4byte	0xad
	.uleb128 0x5
	.4byte	0xc3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1f
	.byte	0x8
	.4byte	0xa1
	.4byte	0x129
	.uleb128 0x5
	.4byte	0xa3
	.uleb128 0x5
	.4byte	0x12e
	.uleb128 0x5
	.4byte	0x8e
	.byte	0
	.uleb128 0x3
	.4byte	0x133
	.uleb128 0x7
	.4byte	0x129
	.uleb128 0x15
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0xa3
	.4byte	0x87
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22f
	.uleb128 0x16
	.string	"num"
	.byte	0x1
	.byte	0xa3
	.byte	0x1d
	.4byte	0x22f
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0xa3
	.byte	0x2f
	.4byte	0x234
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0xa3
	.byte	0x44
	.4byte	0x234
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0xa3
	.byte	0x51
	.4byte	0x249
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0xab
	.byte	0x10
	.4byte	0x55
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0xab
	.byte	0x1f
	.4byte	0x55
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0xac
	.byte	0x10
	.4byte	0x55
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0xac
	.byte	0x1f
	.4byte	0x55
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0xad
	.byte	0x10
	.4byte	0x55
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0xad
	.byte	0x1f
	.4byte	0x55
	.uleb128 0xd
	.4byte	.LVL20
	.4byte	0xf0
	.4byte	0x1f8
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0xd
	.4byte	.LVL21
	.4byte	0xf0
	.4byte	0x215
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0xe
	.4byte	.LVL22
	.4byte	0xf0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 12
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	0x87
	.uleb128 0x3
	.4byte	0x32
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x249
	.uleb128 0x17
	.4byte	0x32
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	0x239
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x9d
	.4byte	0x87
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27a
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x9d
	.byte	0x21
	.4byte	0x27a
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x3
	.4byte	0xbe
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x2d
	.4byte	0x87
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x316
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x2d
	.byte	0x18
	.4byte	0xa8
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2f
	.byte	0xe
	.4byte	0x6f
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x30
	.byte	0x9
	.4byte	0x87
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1a
	.4byte	0x316
	.4byte	.LBI4
	.byte	0x4
	.4byte	.LLRL3
	.byte	0x1
	.byte	0x32
	.byte	0xc
	.4byte	0x2ee
	.uleb128 0x1b
	.4byte	0x323
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL3
	.4byte	0x10a
	.uleb128 0xe
	.4byte	.LVL7
	.4byte	0x10a
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 -5
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF35
	.byte	0x1
	.byte	0x23
	.byte	0x11
	.4byte	0x6f
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF32
	.byte	0x1
	.byte	0x25
	.byte	0x17
	.4byte	0x7b
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x7
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1a
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
.LVUS5:
	.uleb128 0
	.uleb128 0x11
	.uleb128 0x11
	.uleb128 0x26
	.uleb128 0x26
	.uleb128 0x27
	.uleb128 0x27
	.uleb128 0
.LLST5:
	.byte	0x6
	.4byte	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL19-.LVL17
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL19-.LVL17
	.uleb128 .LVL26-.LVL17
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
	.uleb128 .LVL26-.LVL17
	.uleb128 .LVL27-.LVL17
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL27-.LVL17
	.uleb128 .LFE4-.LVL17
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
.LVUS6:
	.uleb128 0
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0x24
	.uleb128 0x24
	.uleb128 0x26
	.uleb128 0x26
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL18-.LVL17
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL18-.LVL17
	.uleb128 .LVL25-.LVL17
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL25-.LVL17
	.uleb128 .LVL26-.LVL17
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
	.uleb128 .LVL26-.LVL17
	.uleb128 .LFE4-.LVL17
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 0x12
	.uleb128 0x12
	.uleb128 0x23
	.uleb128 0x23
	.uleb128 0x26
	.uleb128 0x26
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL20-1-.LVL17
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL20-1-.LVL17
	.uleb128 .LVL24-.LVL17
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL24-.LVL17
	.uleb128 .LVL26-.LVL17
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
	.uleb128 .LVL26-.LVL17
	.uleb128 .LFE4-.LVL17
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 0x12
	.uleb128 0x12
	.uleb128 0x22
	.uleb128 0x22
	.uleb128 0x26
	.uleb128 0x26
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL20-1-.LVL17
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL20-1-.LVL17
	.uleb128 .LVL23-.LVL17
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL23-.LVL17
	.uleb128 .LVL26-.LVL17
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
	.uleb128 .LVL26-.LVL17
	.uleb128 .LFE4-.LVL17
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL16-.LVL15
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL16-.LVL15
	.uleb128 .LFE3-.LVL15
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
.LVUS0:
	.uleb128 0
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x17
	.uleb128 0x18
	.uleb128 0x1b
	.uleb128 0x1b
	.uleb128 0x1c
	.uleb128 0x1c
	.uleb128 0x1d
	.uleb128 0x1d
	.uleb128 0x21
	.uleb128 0x21
	.uleb128 0x2b
	.uleb128 0x2b
	.uleb128 0x2e
	.uleb128 0x2e
	.uleb128 0x35
	.uleb128 0x35
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL3-1-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL5-.LVL0
	.uleb128 .LVL6-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL6-.LVL0
	.uleb128 .LVL7-1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL7-1-.LVL0
	.uleb128 .LVL7-.LVL0
	.uleb128 0x3
	.byte	0x78
	.sleb128 -5
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL0
	.uleb128 .LVL8-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL8-.LVL0
	.uleb128 .LVL10-.LVL0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL10-.LVL0
	.uleb128 .LVL11-.LVL0
	.uleb128 0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL0
	.uleb128 .LVL14-.LVL0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL14-.LVL0
	.uleb128 .LFE2-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS1:
	.uleb128 0xc
	.uleb128 0x34
	.uleb128 0x35
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL13-.LVL1
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL14-.LVL1
	.uleb128 .LFE2-.LVL1
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS2:
	.uleb128 0x10
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x18
	.uleb128 0x18
	.uleb128 0x1c
	.uleb128 0x1c
	.uleb128 0x22
	.uleb128 0x22
	.uleb128 0x26
	.uleb128 0x26
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL3-1-.LVL2
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL3-1-.LVL2
	.uleb128 .LVL5-.LVL2
	.uleb128 0x5
	.byte	0x79
	.sleb128 0
	.byte	0x4e
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL2
	.uleb128 .LVL7-1-.LVL2
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL7-1-.LVL2
	.uleb128 .LVL8-.LVL2
	.uleb128 0x5
	.byte	0x79
	.sleb128 0
	.byte	0x4e
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL2
	.uleb128 .LVL9-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.LVL2
	.uleb128 .LFE2-.LVL2
	.uleb128 0x1
	.byte	0x5f
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
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
.LLRL3:
	.byte	0x5
	.4byte	.LBB4
	.byte	0x4
	.uleb128 .LBB4-.LBB4
	.uleb128 .LBE4-.LBB4
	.byte	0x4
	.uleb128 .LBB7-.LBB4
	.uleb128 .LBE7-.LBB4
	.byte	0
.LLRL9:
	.byte	0x7
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
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
	.4byte	.LASF36
	.4byte	.LASF37
	.4byte	.LASF38
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x5
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF39
	.byte	0x1
	.4byte	.LASF40
	.byte	0x2
	.4byte	.LASF41
	.byte	0x2
	.4byte	.LASF42
	.byte	0x3
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x44
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
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x6
	.byte	0x20
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0xe
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x6
	.byte	0x23
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x16
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x2c
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x3
	.sleb128 -21
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x29
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x18
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x21
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x18
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x16
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x6
	.byte	0x3
	.sleb128 -19
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
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
	.4byte	.LM55
	.byte	0xb4
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0x1
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
	.4byte	.LM61
	.byte	0xba
	.byte	0x5
	.uleb128 0x1
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
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM65-.LM64
	.byte	0x1c
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0x1c
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x6
	.byte	0x11
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM69-.LM68
	.byte	0x19
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM70-.LM69
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM71-.LM70
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM72-.LM71
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM73-.LM72
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM74-.LM73
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM75-.LM74
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM76-.LM75
	.byte	0x16
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM77-.LM76
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM78-.LM77
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM79-.LM78
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM80-.LM79
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM81-.LM80
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM82-.LM81
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM83-.LM82
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM84-.LM83
	.byte	0x16
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM85-.LM84
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM86-.LM85
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM87-.LM86
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM88-.LM87
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM89-.LM88
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM90-.LM89
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM91-.LM90
	.byte	0x16
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM92-.LM91
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM93-.LM92
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM94-.LM93
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM95-.LM94
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM96-.LM95
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM97-.LM96
	.byte	0x16
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM98-.LM97
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM99-.LM98
	.byte	0x3
	.sleb128 -17
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM100-.LM99
	.byte	0x28
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE4
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"misa"
.LASF13:
	.string	"size_t"
.LASF28:
	.string	"bl_chip_banner"
.LASF9:
	.string	"short unsigned int"
.LASF20:
	.string	"desc"
.LASF19:
	.string	"size"
.LASF24:
	.string	"_ld_ram_addr1"
.LASF26:
	.string	"_ld_ram_addr2"
.LASF16:
	.string	"strcpy"
.LASF12:
	.string	"long unsigned int"
.LASF18:
	.string	"addr"
.LASF33:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF29:
	.string	"banner"
.LASF34:
	.string	"bannder_shadow_bl602"
.LASF8:
	.string	"unsigned char"
.LASF31:
	.string	"info"
.LASF21:
	.string	"_ld_ram_size0"
.LASF23:
	.string	"_ld_ram_size1"
.LASF25:
	.string	"_ld_ram_size2"
.LASF3:
	.string	"unsigned int"
.LASF2:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF35:
	.string	"_risc_isa_info"
.LASF22:
	.string	"_ld_ram_addr0"
.LASF7:
	.string	"long long int"
.LASF17:
	.string	"memcpy"
.LASF27:
	.string	"bl_chip_memory_ram"
.LASF5:
	.string	"short int"
.LASF11:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF15:
	.string	"char"
.LASF14:
	.string	"long double"
.LASF4:
	.string	"signed char"
.LASF30:
	.string	"bl_chip_info"
	.section	.debug_line_str,"MS",@progbits,1
.LASF37:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_chip.c"
.LASF38:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/hal_drv"
.LASF41:
	.string	"stddef.h"
.LASF36:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal"
.LASF40:
	.string	"stdint-gcc.h"
.LASF42:
	.string	"string.h"
.LASF39:
	.string	"bl_chip.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
