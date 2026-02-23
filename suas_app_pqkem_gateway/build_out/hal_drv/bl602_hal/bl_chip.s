	.file	"bl_chip.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_chip.c"
	.section	.text._risc_isa_info,"ax",@progbits
	.align	1
	.type	_risc_isa_info, @function
_risc_isa_info:
.LFB1:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_chip.c"
	.loc 1 36 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 37 23
	sw	zero,-20(s0)
	.loc 1 39 5
 #APP
# 39 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_chip.c" 1
	csrr a5, misa
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	.loc 1 41 12
	lw	a5,-20(s0)
	.loc 1 42 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	_risc_isa_info, .-_risc_isa_info
	.section	.rodata
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
.LFB2:
	.loc 1 46 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 50 12
	call	_risc_isa_info
	sw	a0,-24(s0)
	.loc 1 53 15
	lw	a5,-24(s0)
	srli	a5,a5,30
	.loc 1 53 7
	sw	a5,-20(s0)
	.loc 1 54 5
	lw	a4,-20(s0)
	li	a5,3
	beq	a4,a5,.L4
	lw	a4,-20(s0)
	li	a5,3
	bgt	a4,a5,.L5
	lw	a4,-20(s0)
	li	a5,1
	beq	a4,a5,.L6
	lw	a4,-20(s0)
	li	a5,2
	beq	a4,a5,.L7
	j	.L5
.L6:
	.loc 1 57 13
	li	a2,4
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	lw	a0,-36(s0)
	call	memcpy
	.loc 1 58 18
	lw	a5,-36(s0)
	addi	a5,a5,4
	sw	a5,-36(s0)
	.loc 1 60 9
	j	.L8
.L7:
	.loc 1 63 13
	li	a2,4
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	lw	a0,-36(s0)
	call	memcpy
	.loc 1 64 18
	lw	a5,-36(s0)
	addi	a5,a5,4
	sw	a5,-36(s0)
	.loc 1 66 9
	j	.L8
.L4:
	.loc 1 69 13
	li	a2,5
	lui	a5,%hi(.LC2)
	addi	a1,a5,%lo(.LC2)
	lw	a0,-36(s0)
	call	memcpy
	.loc 1 70 18
	lw	a5,-36(s0)
	addi	a5,a5,5
	sw	a5,-36(s0)
	.loc 1 72 9
	j	.L8
.L5:
	.loc 1 75 13
	li	a2,4
	lui	a5,%hi(.LC3)
	addi	a1,a5,%lo(.LC3)
	lw	a0,-36(s0)
	call	memcpy
	.loc 1 76 18
	lw	a5,-36(s0)
	addi	a5,a5,4
	sw	a5,-36(s0)
	.loc 1 78 9
	nop
.L8:
	.loc 1 82 11
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 1 82 15
	li	a4,45
	sb	a4,0(a5)
	.loc 1 85 12
	sw	zero,-20(s0)
	.loc 1 85 5
	j	.L9
.L11:
	.loc 1 86 23
	lw	a5,-20(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 86 18
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 1 86 12
	beq	a5,zero,.L10
	.loc 1 88 30
	lw	a5,-20(s0)
	andi	a4,a5,0xff
	.loc 1 88 19
	lw	a5,-36(s0)
	addi	a3,a5,1
	sw	a3,-36(s0)
	.loc 1 88 30
	addi	a4,a4,65
	andi	a4,a4,0xff
	.loc 1 88 23
	sb	a4,0(a5)
.L10:
	.loc 1 85 26 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L9:
	.loc 1 85 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,25
	ble	a4,a5,.L11
	.loc 1 91 11
	lw	a5,-36(s0)
	sb	zero,0(a5)
	.loc 1 93 12
	li	a5,0
	.loc 1 94 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	bl_chip_info, .-bl_chip_info
	.section	.rodata.bannder_shadow_bl602,"a"
	.align	2
	.type	bannder_shadow_bl602, @object
	.size	bannder_shadow_bl602, 697
bannder_shadow_bl602:
	.base64	"4paI4paI4paI4paI4paI4paI4pWXIOKWiOKWiOKVlyAgICAgIOKWiOKWiOKWiOKWiOKWiOKWiOKVlyAg4paI4paI4paI4paI4paI4paI4pWXIOKWiOKWiOKWiOKWiOKWiOKWiOKVlwoN4paI4paI4pWU4pWQ4pWQ4paI4paI4pWX4paI4paI4pWRICAgICDilojilojilZTilZDilZDilZDilZDilZ0g4paI4paI4pWU4pWQ4paI4paI4paI4paI4pWX4pWa4pWQ4pWQ4pWQ4pWQ4paI4paI4pWXCg3ilojilojilojilojilojilojilZTilZ3ilojilojilZEg"
	.base64	"ICAgIOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKVlyDilojilojilZHilojilojilZTilojilojilZEg4paI4paI4paI4paI4paI4pWU4pWdCg3ilojilojilZTilZDilZDilojilojilZfilojilojilZEgICAgIOKWiOKWiOKVlOKVkOKVkOKVkOKWiOKWiOKVl+KWiOKWiOKWiOKWiOKVlOKVneKWiOKWiOKVkeKWiOKWiOKVlOKVkOKVkOKVkOKVnQoN4paI4paI4paI4paI4paI4paI4pWU4pWd4paI4paI4paI4paI4paI4paI4paI4pWX4pWa4paI4paI4paI"
	.base64	"4paI4paI4paI4pWU4pWd4pWa4paI4paI4paI4paI4paI4paI4pWU4pWd4paI4paI4paI4paI4paI4paI4paI4pWXCg3ilZrilZDilZDilZDilZDilZDilZ0g4pWa4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWdIOKVmuKVkOKVkOKVkOKVkOKVkOKVnSAg4pWa4pWQ4pWQ4pWQ4pWQ4pWQ4pWdIOKVmuKVkOKVkOKVkOKVkOKVkOKVkOKVnQoNAA=="
	.section	.text.bl_chip_banner,"ax",@progbits
	.align	1
	.globl	bl_chip_banner
	.type	bl_chip_banner, @function
bl_chip_banner:
.LFB3:
	.loc 1 158 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 159 13
	lw	a5,-20(s0)
	lui	a4,%hi(bannder_shadow_bl602)
	addi	a4,a4,%lo(bannder_shadow_bl602)
	sw	a4,0(a5)
	.loc 1 160 12
	li	a5,0
	.loc 1 161 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	bl_chip_banner, .-bl_chip_banner
	.section	.rodata
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
.LFB4:
	.loc 1 164 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	.loc 1 165 9
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 165 8
	li	a5,2
	bgt	a4,a5,.L16
	.loc 1 167 16
	li	a5,-1
	j	.L17
.L16:
	.loc 1 169 10
	lw	a5,-20(s0)
	li	a4,3
	sw	a4,0(a5)
	.loc 1 174 15
	lui	a5,%hi(_ld_ram_addr0)
	addi	a4,a5,%lo(_ld_ram_addr0)
	.loc 1 174 13
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 175 15
	lui	a5,%hi(_ld_ram_size0)
	addi	a4,a5,%lo(_ld_ram_size0)
	.loc 1 175 13
	lw	a5,-28(s0)
	sw	a4,0(a5)
	.loc 1 176 5
	lui	a5,%hi(.LC4)
	addi	a1,a5,%lo(.LC4)
	lw	a0,-32(s0)
	call	strcpy
	.loc 1 177 9
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 177 15
	lui	a4,%hi(_ld_ram_addr1)
	addi	a4,a4,%lo(_ld_ram_addr1)
	.loc 1 177 13
	sw	a4,0(a5)
	.loc 1 178 9
	lw	a5,-28(s0)
	addi	a5,a5,4
	.loc 1 178 15
	lui	a4,%hi(_ld_ram_size1)
	addi	a4,a4,%lo(_ld_ram_size1)
	.loc 1 178 13
	sw	a4,0(a5)
	.loc 1 179 16
	lw	a5,-32(s0)
	addi	a4,a5,6
	.loc 1 179 5
	lui	a5,%hi(.LC5)
	addi	a1,a5,%lo(.LC5)
	mv	a0,a4
	call	strcpy
	.loc 1 180 9
	lw	a5,-24(s0)
	addi	a5,a5,8
	.loc 1 180 15
	lui	a4,%hi(_ld_ram_addr2)
	addi	a4,a4,%lo(_ld_ram_addr2)
	.loc 1 180 13
	sw	a4,0(a5)
	.loc 1 181 9
	lw	a5,-28(s0)
	addi	a5,a5,8
	.loc 1 181 15
	lui	a4,%hi(_ld_ram_size2)
	addi	a4,a4,%lo(_ld_ram_size2)
	.loc 1 181 13
	sw	a4,0(a5)
	.loc 1 182 16
	lw	a5,-32(s0)
	addi	a4,a5,12
	.loc 1 182 5
	lui	a5,%hi(.LC6)
	addi	a1,a5,%lo(.LC6)
	mv	a0,a4
	call	strcpy
	.loc 1 183 12
	li	a5,0
.L17:
	.loc 1 184 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	bl_chip_memory_ram, .-bl_chip_memory_ram
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x278
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x53
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x72
	.uleb128 0xe
	.4byte	0x61
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x87
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x6
	.4byte	0xa1
	.uleb128 0x2
	.4byte	0xb2
	.uleb128 0x6
	.4byte	0xa8
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x9
	.4byte	0xb2
	.uleb128 0x2
	.4byte	0xb9
	.uleb128 0x6
	.4byte	0xbe
	.uleb128 0xa
	.4byte	0xb9
	.4byte	0xd9
	.uleb128 0x11
	.4byte	0x87
	.2byte	0x2b8
	.byte	0
	.uleb128 0x9
	.4byte	0xc8
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x60
	.byte	0x13
	.4byte	0xd9
	.uleb128 0x5
	.byte	0x3
	.4byte	bannder_shadow_bl602
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x26
	.byte	0x7
	.4byte	0xa8
	.4byte	0x109
	.uleb128 0x4
	.4byte	0xad
	.uleb128 0x4
	.4byte	0xc3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1f
	.byte	0x8
	.4byte	0xa1
	.4byte	0x128
	.uleb128 0x4
	.4byte	0xa3
	.uleb128 0x4
	.4byte	0x12d
	.uleb128 0x4
	.4byte	0x8e
	.byte	0
	.uleb128 0x2
	.4byte	0x132
	.uleb128 0x6
	.4byte	0x128
	.uleb128 0x12
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0xa3
	.4byte	0x80
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c7
	.uleb128 0x13
	.string	"num"
	.byte	0x1
	.byte	0xa3
	.byte	0x1d
	.4byte	0x1c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0xa3
	.byte	0x2f
	.4byte	0x1cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0xa3
	.byte	0x44
	.4byte	0x1cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0xa3
	.byte	0x51
	.4byte	0x1e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0xab
	.byte	0x10
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0xab
	.byte	0x1f
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0xac
	.byte	0x10
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0xac
	.byte	0x1f
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0xad
	.byte	0x10
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0xad
	.byte	0x1f
	.4byte	0x47
	.byte	0
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x87
	.uleb128 0xa
	.4byte	0xb2
	.4byte	0x1e1
	.uleb128 0x14
	.4byte	0x87
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	0x1d1
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x9d
	.byte	0x5
	.4byte	0x80
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20f
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x9d
	.byte	0x21
	.4byte	0x20f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2
	.4byte	0xbe
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x2d
	.4byte	0x80
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x256
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x2d
	.byte	0x18
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x2f
	.byte	0xe
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x30
	.byte	0x9
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF35
	.byte	0x1
	.byte	0x23
	.byte	0x11
	.4byte	0x61
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x25
	.byte	0x17
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x17
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
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
.LLRL0:
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"misa"
.LASF13:
	.string	"size_t"
.LASF28:
	.string	"bl_chip_banner"
.LASF7:
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
.LASF10:
	.string	"long unsigned int"
.LASF18:
	.string	"addr"
.LASF29:
	.string	"banner"
.LASF32:
	.string	"bannder_shadow_bl602"
.LASF6:
	.string	"unsigned char"
.LASF31:
	.string	"info"
.LASF21:
	.string	"_ld_ram_size0"
.LASF23:
	.string	"_ld_ram_size1"
.LASF25:
	.string	"_ld_ram_size2"
.LASF12:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint8_t"
.LASF35:
	.string	"_risc_isa_info"
.LASF22:
	.string	"_ld_ram_addr0"
.LASF5:
	.string	"long long int"
.LASF17:
	.string	"memcpy"
.LASF27:
	.string	"bl_chip_memory_ram"
.LASF3:
	.string	"short int"
.LASF34:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF15:
	.string	"char"
.LASF14:
	.string	"long double"
.LASF2:
	.string	"signed char"
.LASF30:
	.string	"bl_chip_info"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_chip.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
