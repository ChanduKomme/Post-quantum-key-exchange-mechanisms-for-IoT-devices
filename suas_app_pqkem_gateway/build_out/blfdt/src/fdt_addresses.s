	.file	"fdt_addresses.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt" "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_addresses.c"
	.section	.text.fdt32_to_cpu,"ax",@progbits
	.align	1
	.type	fdt32_to_cpu, @function
fdt32_to_cpu:
.LFB3:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt_env.h"
	.loc 1 121 1
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
	.loc 1 122 58
	addi	a5,s0,-20
	.loc 1 122 61
	lbu	a5,0(a5)
	.loc 1 122 66
	slli	a4,a5,24
	.loc 1 122 112
	addi	a5,s0,-20
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 122 117
	slli	a5,a5,16
	.loc 1 122 73
	or	a4,a4,a5
	.loc 1 122 163
	addi	a5,s0,-20
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 122 168
	slli	a5,a5,8
	.loc 1 122 124
	or	a4,a4,a5
	.loc 1 122 212
	addi	a5,s0,-20
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 122 12
	or	a5,a4,a5
	.loc 1 123 1
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
	.size	fdt32_to_cpu, .-fdt32_to_cpu
	.section	.text.fdt_cells,"ax",@progbits
	.align	1
	.type	fdt_cells, @function
fdt_cells:
.LFB40:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_addresses.c"
	.loc 2 38 1
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
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 2 43 9
	addi	a5,s0,-28
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_getprop
	sw	a0,-20(s0)
	.loc 2 44 8
	lw	a5,-20(s0)
	bne	a5,zero,.L4
	.loc 2 45 16
	lw	a5,-28(s0)
	j	.L9
.L4:
	.loc 2 47 13
	lw	a4,-28(s0)
	.loc 2 47 8
	li	a5,4
	beq	a4,a5,.L6
	.loc 2 48 16
	li	a5,-14
	j	.L9
.L6:
	.loc 2 50 11
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 2 50 9 discriminator 1
	sw	a5,-24(s0)
	.loc 2 51 8
	lw	a5,-24(s0)
	ble	a5,zero,.L7
	.loc 2 51 20 discriminator 1
	lw	a4,-24(s0)
	li	a5,4
	ble	a4,a5,.L8
.L7:
	.loc 2 52 16
	li	a5,-14
	j	.L9
.L8:
	.loc 2 54 12
	lw	a5,-24(s0)
.L9:
	.loc 2 55 1
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
.LFE40:
	.size	fdt_cells, .-fdt_cells
	.section	.rodata
	.align	2
.LC0:
	.string	"#address-cells"
	.section	.text.fdt_address_cells,"ax",@progbits
	.align	1
	.globl	fdt_address_cells
	.type	fdt_address_cells, @function
fdt_address_cells:
.LFB41:
	.loc 2 58 1
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
	sw	a1,-40(s0)
	.loc 2 61 11
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_cells
	sw	a0,-20(s0)
	.loc 2 62 8
	lw	a4,-20(s0)
	li	a5,-1
	bne	a4,a5,.L11
	.loc 2 63 16
	li	a5,2
	j	.L12
.L11:
	.loc 2 64 12
	lw	a5,-20(s0)
.L12:
	.loc 2 65 1
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
.LFE41:
	.size	fdt_address_cells, .-fdt_address_cells
	.section	.rodata
	.align	2
.LC1:
	.string	"#size-cells"
	.section	.text.fdt_size_cells,"ax",@progbits
	.align	1
	.globl	fdt_size_cells
	.type	fdt_size_cells, @function
fdt_size_cells:
.LFB42:
	.loc 2 68 1
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
	sw	a1,-40(s0)
	.loc 2 71 11
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_cells
	sw	a0,-20(s0)
	.loc 2 72 8
	lw	a4,-20(s0)
	li	a5,-1
	bne	a4,a5,.L14
	.loc 2 73 16
	li	a5,1
	j	.L15
.L14:
	.loc 2 74 12
	lw	a5,-20(s0)
.L15:
	.loc 2 75 1
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
.LFE42:
	.size	fdt_size_cells, .-fdt_size_cells
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1ff
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x68
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x8
	.4byte	0x90
	.uleb128 0x3
	.4byte	0x97
	.uleb128 0x3
	.4byte	0xa6
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x63
	.byte	0x12
	.4byte	0x76
	.uleb128 0x8
	.4byte	0xa7
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x311
	.byte	0xd
	.4byte	0xa1
	.4byte	0xde
	.uleb128 0x4
	.4byte	0xa1
	.uleb128 0x4
	.4byte	0x2b
	.uleb128 0x4
	.4byte	0x9c
	.uleb128 0x4
	.4byte	0xde
	.byte	0
	.uleb128 0x3
	.4byte	0x2b
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x43
	.4byte	0x2b
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x127
	.uleb128 0x5
	.string	"fdt"
	.byte	0x2
	.byte	0x43
	.byte	0x20
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x43
	.byte	0x29
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"val"
	.byte	0x45
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x39
	.4byte	0x2b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16b
	.uleb128 0x5
	.string	"fdt"
	.byte	0x2
	.byte	0x39
	.byte	0x23
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x39
	.byte	0x2c
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"val"
	.byte	0x3b
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x2
	.byte	0x25
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d9
	.uleb128 0x5
	.string	"fdt"
	.byte	0x2
	.byte	0x25
	.byte	0x22
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x25
	.byte	0x2b
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x25
	.byte	0x43
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"c"
	.byte	0x27
	.byte	0x14
	.4byte	0x1d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"val"
	.byte	0x28
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"len"
	.byte	0x29
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x3
	.4byte	0xb3
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0x78
	.byte	0x18
	.4byte	0x76
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0x78
	.byte	0x2d
	.4byte	0xa7
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x6
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x26
	.byte	0
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
	.sleb128 2
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xe
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
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
.LLRL0:
	.byte	0x7
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
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
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"long long int"
.LASF2:
	.string	"unsigned int"
.LASF20:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF23:
	.string	"fdt32_to_cpu"
.LASF12:
	.string	"long unsigned int"
.LASF19:
	.string	"name"
.LASF13:
	.string	"long long unsigned int"
.LASF15:
	.string	"fdt32_t"
.LASF10:
	.string	"uint8_t"
.LASF8:
	.string	"unsigned char"
.LASF14:
	.string	"char"
.LASF11:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF9:
	.string	"short unsigned int"
.LASF5:
	.string	"signed char"
.LASF18:
	.string	"fdt_address_cells"
.LASF4:
	.string	"long double"
.LASF17:
	.string	"fdt_size_cells"
.LASF6:
	.string	"short int"
.LASF21:
	.string	"fdt_getprop"
.LASF16:
	.string	"nodeoffset"
.LASF22:
	.string	"fdt_cells"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_addresses.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
