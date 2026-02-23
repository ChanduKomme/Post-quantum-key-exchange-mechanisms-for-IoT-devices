	.file	"utils_getopt.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils" "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_getopt.c"
	.section	.text.utils_getopt_init,"ax",@progbits
	.align	1
	.globl	utils_getopt_init
	.type	utils_getopt_init, @function
utils_getopt_init:
.LFB3:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_getopt.c"
	.loc 1 63 1
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
	.loc 1 64 8
	lw	a5,-20(s0)
	bne	a5,zero,.L2
	.loc 1 65 16
	li	a5,-1
	j	.L3
.L2:
	.loc 1 67 17
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 1 68 17
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,4(a5)
	.loc 1 69 17
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	.loc 1 70 17
	lw	a5,-20(s0)
	sw	zero,12(a5)
	.loc 1 71 19
	lw	a5,-20(s0)
	sw	zero,16(a5)
	.loc 1 72 12
	li	a5,0
.L3:
	.loc 1 73 1
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
	.size	utils_getopt_init, .-utils_getopt_init
	.section	.rodata
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
.LFB4:
	.loc 1 78 1
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
	sw	a3,-48(s0)
	.loc 1 83 8
	lw	a5,-36(s0)
	bne	a5,zero,.L5
	.loc 1 84 16
	li	a5,-1
	j	.L6
.L5:
	.loc 1 87 12
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 87 8
	lw	a4,-40(s0)
	ble	a4,a5,.L7
	.loc 1 87 41 discriminator 1
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 87 37 discriminator 1
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 87 29 discriminator 1
	bne	a5,zero,.L8
.L7:
	.loc 1 88 16
	li	a5,-1
	j	.L6
.L8:
	.loc 1 90 17
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 90 13
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 90 26
	lbu	a4,0(a5)
	.loc 1 90 8
	li	a5,45
	beq	a4,a5,.L9
	.loc 1 91 22
	lw	a5,-48(s0)
	lbu	a4,0(a5)
	.loc 1 91 12
	li	a5,45
	bne	a4,a5,.L10
	.loc 1 92 35
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 92 43
	addi	a3,a5,1
	lw	a4,-36(s0)
	sw	a3,4(a4)
	.loc 1 92 31
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 92 25
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 93 20
	li	a5,1
	j	.L6
.L10:
	.loc 1 95 16
	li	a5,-1
	j	.L6
.L9:
	.loc 1 98 18
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 98 14
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 98 27
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 98 8
	bne	a5,zero,.L11
	.loc 1 99 16
	li	a5,-1
	j	.L6
.L11:
	.loc 1 101 17
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 101 13
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 101 26
	addi	a5,a5,1
	lbu	a4,0(a5)
	.loc 1 101 8
	li	a5,45
	bne	a4,a5,.L12
	.loc 1 101 49 discriminator 1
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 101 45 discriminator 1
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 101 58 discriminator 1
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 101 37 discriminator 1
	bne	a5,zero,.L12
	.loc 1 102 19
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 102 27
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 1 102 29
	li	a5,-1
	j	.L6
.L12:
	.loc 1 104 13
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 104 8
	bne	a5,zero,.L13
	.loc 1 104 28 discriminator 1
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 104 38 discriminator 1
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,16(a5)
.L13:
	.loc 1 105 17
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 105 13
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 105 30
	lw	a4,-36(s0)
	lw	a4,16(a4)
	.loc 1 105 26
	add	a5,a5,a4
	.loc 1 105 7
	lbu	a5,0(a5)
	sb	a5,-21(s0)
	.loc 1 106 23
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 106 19
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 106 38
	lw	a4,-36(s0)
	lw	a4,16(a4)
	.loc 1 106 13
	add	a5,a5,a4
	sw	a5,-28(s0)
	.loc 1 107 8
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 107 22
	lbu	a4,-21(s0)
	snez	a4,a4
	andi	a4,a4,0xff
	.loc 1 107 19
	add	a4,a5,a4
	lw	a5,-36(s0)
	sw	a4,16(a5)
	.loc 1 109 18
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 109 14
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 109 31
	lw	a4,-36(s0)
	lw	a4,16(a4)
	.loc 1 109 27
	add	a5,a5,a4
	lbu	a5,0(a5)
	.loc 1 109 8
	bne	a5,zero,.L14
	.loc 1 110 12
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 110 20
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 1 111 23
	lw	a5,-36(s0)
	sw	zero,16(a5)
.L14:
	.loc 1 114 18
	lw	a5,-48(s0)
	lbu	a4,0(a5)
	.loc 1 114 8
	li	a5,45
	beq	a4,a5,.L15
	.loc 1 114 41 discriminator 1
	lw	a5,-48(s0)
	lbu	a4,0(a5)
	.loc 1 114 29 discriminator 1
	li	a5,43
	bne	a4,a5,.L16
.L15:
	.loc 1 115 18
	lw	a5,-48(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
.L16:
	.loc 1 117 7
	sw	zero,-20(s0)
.L18:
	.loc 1 118 23 discriminator 2
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	mv	a4,a5
	.loc 1 118 21 discriminator 2
	lw	a5,-48(s0)
	add	a5,a5,a4
	.loc 1 118 10 discriminator 2
	lbu	a5,0(a5)
	sb	a5,-29(s0)
	.loc 1 118 37 discriminator 2
	lbu	a5,-29(s0)
	beq	a5,zero,.L17
	.loc 1 118 37 is_stmt 0 discriminator 1
	lbu	a4,-29(s0)
	lbu	a5,-21(s0)
	bne	a4,a5,.L18
.L17:
	.loc 1 120 8 is_stmt 1
	lbu	a4,-29(s0)
	lbu	a5,-21(s0)
	bne	a4,a5,.L19
	.loc 1 120 16 discriminator 1
	lbu	a4,-21(s0)
	li	a5,58
	bne	a4,a5,.L20
.L19:
	.loc 1 121 21
	lbu	a4,-21(s0)
	lw	a5,-36(s0)
	sw	a4,12(a5)
	.loc 1 122 22
	lw	a5,-48(s0)
	lbu	a4,0(a5)
	.loc 1 122 12
	li	a5,58
	beq	a4,a5,.L21
	.loc 1 122 39 discriminator 1
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 122 33 discriminator 1
	beq	a5,zero,.L21
	.loc 1 123 13
	lw	a5,-44(s0)
	lw	a4,0(a5)
	.loc 1 123 66
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 123 13
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
.L21:
	.loc 1 124 16
	li	a5,63
	j	.L6
.L20:
	.loc 1 126 18
	lw	a5,-20(s0)
	lw	a4,-48(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 126 8
	li	a5,58
	bne	a4,a5,.L22
	.loc 1 127 21
	lw	a5,-36(s0)
	sw	zero,0(a5)
	.loc 1 128 22
	lw	a5,-20(s0)
	addi	a5,a5,1
	lw	a4,-48(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 128 12
	li	a5,58
	bne	a4,a5,.L23
	.loc 1 128 41 discriminator 1
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 128 35 discriminator 1
	beq	a5,zero,.L24
.L23:
	.loc 1 129 35
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 129 43
	addi	a3,a5,1
	lw	a4,-36(s0)
	sw	a3,4(a4)
	.loc 1 129 31
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 129 52
	lw	a4,-36(s0)
	lw	a4,16(a4)
	.loc 1 129 47
	add	a4,a5,a4
	.loc 1 129 25
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 130 27
	lw	a5,-36(s0)
	sw	zero,16(a5)
.L24:
	.loc 1 132 16
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 132 12
	lw	a4,-40(s0)
	bge	a4,a5,.L22
	.loc 1 133 25
	lbu	a4,-21(s0)
	lw	a5,-36(s0)
	sw	a4,12(a5)
	.loc 1 134 26
	lw	a5,-48(s0)
	lbu	a4,0(a5)
	.loc 1 134 16
	li	a5,58
	bne	a4,a5,.L25
	.loc 1 134 45 discriminator 1
	li	a5,58
	.loc 1 134 45 is_stmt 0
	j	.L6
.L25:
	.loc 1 135 20 is_stmt 1
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 135 16
	beq	a5,zero,.L26
	.loc 1 136 17
	lw	a5,-44(s0)
	lw	a4,0(a5)
	.loc 1 136 78
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 136 17
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L26:
	.loc 1 138 20
	li	a5,63
	j	.L6
.L22:
	.loc 1 141 12
	lbu	a5,-21(s0)
.L6:
	.loc 1 142 1
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
.LFE4:
	.size	utils_getopt, .-utils_getopt
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_getopt.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1c5
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
	.uleb128 0x9
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
	.4byte	0x63
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x27
	.byte	0x9
	.4byte	0x63
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x28
	.byte	0x9
	.4byte	0x63
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x29
	.byte	0x9
	.4byte	0x63
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
	.4byte	0x63
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
	.4byte	0x63
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18b
	.uleb128 0x7
	.string	"env"
	.byte	0x4d
	.byte	0x20
	.4byte	0x18b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4d
	.byte	0x29
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4d
	.byte	0x3c
	.4byte	0x190
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4d
	.byte	0x50
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"i"
	.byte	0x4f
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"c"
	.byte	0x50
	.byte	0xa
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x5
	.string	"d"
	.byte	0x50
	.byte	0xd
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.byte	0x51
	.byte	0xb
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x3
	.4byte	0xe2
	.uleb128 0x3
	.4byte	0x7d
	.uleb128 0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3e
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.string	"env"
	.byte	0x3e
	.byte	0x25
	.4byte	0x18b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3e
	.byte	0x2e
	.4byte	0x63
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
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x7c
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.byte	0
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
.LLRL0:
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
.LASF23:
	.string	"getopt_env"
.LASF15:
	.string	"opterr"
.LASF17:
	.string	"__optpos"
.LASF24:
	.string	"getopt_env_t"
.LASF3:
	.string	"unsigned char"
.LASF14:
	.string	"optind"
.LASF7:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF26:
	.string	"utils_getopt"
.LASF10:
	.string	"unsigned int"
.LASF13:
	.string	"optarg"
.LASF9:
	.string	"long long unsigned int"
.LASF16:
	.string	"optopt"
.LASF18:
	.string	"argc"
.LASF8:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF25:
	.string	"printf"
.LASF21:
	.string	"optchar"
.LASF4:
	.string	"short int"
.LASF22:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF19:
	.string	"argv"
.LASF6:
	.string	"long int"
.LASF27:
	.string	"utils_getopt_init"
.LASF11:
	.string	"long double"
.LASF20:
	.string	"optstring"
.LASF2:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_getopt.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
