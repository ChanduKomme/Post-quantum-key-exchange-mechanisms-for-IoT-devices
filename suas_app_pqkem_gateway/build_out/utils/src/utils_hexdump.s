	.file	"utils_hexdump.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils" "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_hexdump.c"
	.section	.rodata
	.align	2
.LC0:
	.string	"0x%06x: "
	.align	2
.LC1:
	.string	"%02x "
	.align	2
.LC2:
	.string	"   "
	.align	2
.LC3:
	.string	"\r\n"
	.section	.text.utils_hexdump,"ax",@progbits
	.align	1
	.globl	utils_hexdump
	.type	utils_hexdump, @function
utils_hexdump:
.LFB4:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_hexdump.c"
	.loc 1 42 1
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
	.loc 1 45 12
	sw	zero,-20(s0)
	.loc 1 45 5
	j	.L2
.L14:
	.loc 1 47 15
	lw	a5,-20(s0)
	andi	a5,a5,15
	.loc 1 47 12
	bne	a5,zero,.L3
	.loc 1 48 13
	lw	a1,-20(s0)
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
.L3:
	.loc 1 52 12
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bgeu	a4,a5,.L4
	.loc 1 53 48
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 53 13
	mv	a1,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	j	.L5
.L4:
	.loc 1 56 13
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L5:
	.loc 1 60 15
	lw	a5,-20(s0)
	andi	a4,a5,15
	.loc 1 60 12
	li	a5,15
	bne	a4,a5,.L6
	.loc 1 61 20
	lw	a5,-20(s0)
	addi	a5,a5,-15
	sw	a5,-24(s0)
	.loc 1 61 13
	j	.L7
.L11:
	.loc 1 62 20
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	bltu	a4,a5,.L8
	.loc 1 64 21
	li	a0,32
	call	bl_putchar
	j	.L9
.L8:
	.loc 1 65 43
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 65 29
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 65 29
	andi	a5,a5,151
	.loc 1 65 26
	beq	a5,zero,.L10
	.loc 1 67 51
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 67 21
	mv	a0,a5
	call	bl_putchar
	j	.L9
.L10:
	.loc 1 70 21
	li	a0,46
	call	bl_putchar
.L9:
	.loc 1 61 45 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L7:
	.loc 1 61 38 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bleu	a4,a5,.L11
	.loc 1 73 13
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	puts
.L6:
	.loc 1 45 64 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	.loc 1 45 33 discriminator 1
	lw	a5,-40(s0)
	andi	a5,a5,15
	.loc 1 45 57 discriminator 1
	beq	a5,zero,.L12
	.loc 1 45 51 discriminator 3
	lw	a5,-40(s0)
	andi	a5,a5,15
	.loc 1 45 57 discriminator 3
	li	a4,16
	sub	a5,a4,a5
	j	.L13
.L12:
	.loc 1 45 57 is_stmt 0 discriminator 4
	li	a5,0
.L13:
	.loc 1 45 25 is_stmt 1 discriminator 6
	lw	a4,-40(s0)
	add	a5,a5,a4
	.loc 1 45 19 discriminator 6
	lw	a4,-20(s0)
	bltu	a4,a5,.L14
	.loc 1 76 1
	nop
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	utils_hexdump, .-utils_hexdump
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x130
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x7
	.4byte	.LASF16
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
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	0x7a
	.uleb128 0xa
	.byte	0x4
	.4byte	0x81
	.uleb128 0xb
	.4byte	0x86
	.uleb128 0xc
	.4byte	0x81
	.4byte	0x9c
	.uleb128 0xd
	.byte	0
	.uleb128 0x4
	.4byte	0x91
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x3
	.byte	0x46
	.byte	0x13
	.4byte	0x9c
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe3
	.byte	0x5
	.4byte	0x63
	.4byte	0xc3
	.uleb128 0x3
	.4byte	0x86
	.byte	0
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x1
	.byte	0x27
	.byte	0xc
	.4byte	0x63
	.4byte	0xd9
	.uleb128 0x3
	.4byte	0x63
	.byte	0
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x2
	.byte	0xce
	.byte	0x5
	.4byte	0x63
	.4byte	0xf0
	.uleb128 0x3
	.4byte	0x8c
	.uleb128 0xf
	.byte	0
	.uleb128 0x10
	.4byte	.LASF18
	.byte	0x1
	.byte	0x29
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.string	"mem"
	.byte	0x1a
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"len"
	.byte	0x2c
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"i"
	.byte	0x12
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"j"
	.byte	0x15
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 41
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x21
	.sleb128 43
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"long long int"
.LASF10:
	.string	"unsigned int"
.LASF13:
	.string	"puts"
.LASF18:
	.string	"utils_hexdump"
.LASF14:
	.string	"bl_putchar"
.LASF7:
	.string	"long unsigned int"
.LASF16:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned char"
.LASF12:
	.string	"char"
.LASF6:
	.string	"long int"
.LASF5:
	.string	"short unsigned int"
.LASF15:
	.string	"printf"
.LASF11:
	.string	"long double"
.LASF17:
	.string	"_ctype_"
.LASF4:
	.string	"short int"
.LASF2:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_hexdump.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
