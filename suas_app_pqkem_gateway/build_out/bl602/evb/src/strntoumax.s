	.file	"strntoumax.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602/evb/src/strntoumax.c"
	.section	.text.digitval,"ax",@progbits
	.align	1
	.type	digitval, @function
digitval:
.LFB1:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602/evb/src/strntoumax.c"
	.loc 1 46 1
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
	.loc 1 47 8
	lw	a4,-20(s0)
	li	a5,47
	ble	a4,a5,.L2
	.loc 1 47 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,57
	bgt	a4,a5,.L2
	.loc 1 48 19
	lw	a5,-20(s0)
	addi	a5,a5,-48
	j	.L3
.L2:
	.loc 1 49 15
	lw	a4,-20(s0)
	li	a5,64
	ble	a4,a5,.L4
	.loc 1 49 26 discriminator 1
	lw	a4,-20(s0)
	li	a5,90
	bgt	a4,a5,.L4
	.loc 1 50 25
	lw	a5,-20(s0)
	addi	a5,a5,-55
	j	.L3
.L4:
	.loc 1 51 15
	lw	a4,-20(s0)
	li	a5,96
	ble	a4,a5,.L5
	.loc 1 51 26 discriminator 1
	lw	a4,-20(s0)
	li	a5,122
	bgt	a4,a5,.L5
	.loc 1 52 25
	lw	a5,-20(s0)
	addi	a5,a5,-87
	j	.L3
.L5:
	.loc 1 54 16
	li	a5,-1
.L3:
	.loc 1 56 1
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
	.size	digitval, .-digitval
	.section	.text.strntoumax,"ax",@progbits
	.align	1
	.globl	strntoumax
	.type	strntoumax, @function
strntoumax:
.LFB2:
	.loc 1 59 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s2,68(sp)
	sw	s3,64(sp)
	sw	s4,60(sp)
	sw	s5,56(sp)
	sw	s6,52(sp)
	sw	s7,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	.cfi_offset 22, -28
	.cfi_offset 23, -32
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	.loc 1 60 9
	sw	zero,-36(s0)
	.loc 1 61 15
	li	a5,0
	li	a6,0
	sw	a5,-48(s0)
	sw	a6,-44(s0)
	.loc 1 64 11
	j	.L7
.L9:
	.loc 1 65 13
	lw	a5,-68(s0)
	addi	a5,a5,1
	sw	a5,-68(s0)
	.loc 1 66 10
	lw	a5,-80(s0)
	addi	a5,a5,-1
	sw	a5,-80(s0)
.L7:
	.loc 1 64 14
	lw	a5,-80(s0)
	beq	a5,zero,.L8
	.loc 1 64 31 discriminator 1
	lw	a5,-68(s0)
	lbu	a5,0(a5)
	.loc 1 64 19 discriminator 1
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 64 19 discriminator 1
	andi	a5,a5,8
	.loc 1 64 14 discriminator 1
	bne	a5,zero,.L9
.L8:
	.loc 1 70 8
	lw	a5,-80(s0)
	beq	a5,zero,.L10
.LBB2:
	.loc 1 71 14
	lw	a5,-68(s0)
	lbu	a5,0(a5)
	sb	a5,-49(s0)
	.loc 1 72 12
	lbu	a4,-49(s0)
	li	a5,45
	beq	a4,a5,.L11
	.loc 1 72 22 discriminator 1
	lbu	a4,-49(s0)
	li	a5,43
	bne	a4,a5,.L10
.L11:
	.loc 1 73 24
	lbu	a5,-49(s0)
	addi	a5,a5,-45
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 73 19
	sw	a5,-36(s0)
	.loc 1 74 17
	lw	a5,-68(s0)
	addi	a5,a5,1
	sw	a5,-68(s0)
	.loc 1 75 14
	lw	a5,-80(s0)
	addi	a5,a5,-1
	sw	a5,-80(s0)
.L10:
.LBE2:
	.loc 1 79 8
	lw	a5,-76(s0)
	bne	a5,zero,.L12
	.loc 1 80 12
	lw	a4,-80(s0)
	li	a5,1
	bleu	a4,a5,.L13
	.loc 1 80 27 discriminator 1
	lw	a5,-68(s0)
	lbu	a4,0(a5)
	.loc 1 80 20 discriminator 1
	li	a5,48
	bne	a4,a5,.L13
	.loc 1 81 18
	lw	a5,-68(s0)
	addi	a5,a5,1
	lbu	a4,0(a5)
	.loc 1 80 38 discriminator 2
	li	a5,120
	beq	a4,a5,.L14
	.loc 1 81 36
	lw	a5,-68(s0)
	addi	a5,a5,1
	lbu	a4,0(a5)
	.loc 1 81 29
	li	a5,88
	bne	a4,a5,.L13
.L14:
	.loc 1 82 15
	lw	a5,-80(s0)
	addi	a5,a5,-2
	sw	a5,-80(s0)
	.loc 1 83 18
	lw	a5,-68(s0)
	addi	a5,a5,2
	sw	a5,-68(s0)
	.loc 1 84 18
	li	a5,16
	sw	a5,-76(s0)
	j	.L17
.L13:
	.loc 1 85 19
	lw	a5,-80(s0)
	beq	a5,zero,.L16
	.loc 1 85 34 discriminator 1
	lw	a5,-68(s0)
	lbu	a4,0(a5)
	.loc 1 85 27 discriminator 1
	li	a5,48
	bne	a4,a5,.L16
	.loc 1 86 14
	lw	a5,-80(s0)
	addi	a5,a5,-1
	sw	a5,-80(s0)
	.loc 1 87 17
	lw	a5,-68(s0)
	addi	a5,a5,1
	sw	a5,-68(s0)
	.loc 1 88 18
	li	a5,8
	sw	a5,-76(s0)
	j	.L17
.L16:
	.loc 1 90 18
	li	a5,10
	sw	a5,-76(s0)
	j	.L19
.L12:
	.loc 1 92 15
	lw	a4,-76(s0)
	li	a5,16
	bne	a4,a5,.L19
	.loc 1 93 12
	lw	a4,-80(s0)
	li	a5,1
	bleu	a4,a5,.L19
	.loc 1 93 27 discriminator 1
	lw	a5,-68(s0)
	lbu	a4,0(a5)
	.loc 1 93 20 discriminator 1
	li	a5,48
	bne	a4,a5,.L19
	.loc 1 94 18
	lw	a5,-68(s0)
	addi	a5,a5,1
	lbu	a4,0(a5)
	.loc 1 93 38 discriminator 2
	li	a5,120
	beq	a4,a5,.L18
	.loc 1 94 36
	lw	a5,-68(s0)
	addi	a5,a5,1
	lbu	a4,0(a5)
	.loc 1 94 29
	li	a5,88
	bne	a4,a5,.L19
.L18:
	.loc 1 95 15
	lw	a5,-80(s0)
	addi	a5,a5,-2
	sw	a5,-80(s0)
	.loc 1 96 18
	lw	a5,-68(s0)
	addi	a5,a5,2
	sw	a5,-68(s0)
.L17:
	.loc 1 100 11
	j	.L19
.L21:
	.loc 1 101 15
	lw	a5,-76(s0)
	mv	s4,a5
	srai	a5,a5,31
	mv	s5,a5
	lw	a5,-48(s0)
	mul	a4,a5,s5
	lw	a5,-44(s0)
	mul	a5,a5,s4
	add	a4,a4,a5
	lw	a5,-48(s0)
	mul	a3,a5,s4
	mulhu	s3,a5,s4
	mv	s2,a3
	add	a5,a4,s3
	mv	s3,a5
	.loc 1 101 22
	lw	a5,-56(s0)
	mv	s6,a5
	srai	a5,a5,31
	mv	s7,a5
	.loc 1 101 11
	add	a4,s2,s6
	mv	a3,a4
	sltu	a3,a3,s2
	add	a5,s3,s7
	add	a3,a3,a5
	mv	a5,a3
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	.loc 1 102 10
	lw	a5,-80(s0)
	addi	a5,a5,-1
	sw	a5,-80(s0)
	.loc 1 103 13
	lw	a5,-68(s0)
	addi	a5,a5,1
	sw	a5,-68(s0)
.L19:
	.loc 1 100 44
	lw	a5,-80(s0)
	beq	a5,zero,.L20
	.loc 1 100 31 discriminator 1
	lw	a5,-68(s0)
	lbu	a5,0(a5)
	.loc 1 100 22 discriminator 1
	mv	a0,a5
	call	digitval
	sw	a0,-56(s0)
	.loc 1 100 14 discriminator 2
	lw	a5,-56(s0)
	blt	a5,zero,.L20
	.loc 1 100 44 discriminator 3
	lw	a4,-56(s0)
	lw	a5,-76(s0)
	blt	a4,a5,.L21
.L20:
	.loc 1 106 8
	lw	a5,-72(s0)
	beq	a5,zero,.L22
	.loc 1 107 17
	lw	a5,-72(s0)
	lw	a4,-68(s0)
	sw	a4,0(a5)
.L22:
	.loc 1 109 23
	lw	a5,-36(s0)
	beq	a5,zero,.L23
	.loc 1 109 23 is_stmt 0 discriminator 1
	li	a4,0
	li	a5,0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	sub	a2,a4,a0
	mv	a6,a2
	sgtu	a6,a6,a4
	sub	a3,a5,a1
	sub	a5,a3,a6
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	.loc 1 109 23
	j	.L25
.L23:
	.loc 1 109 23 discriminator 2
	lw	a4,-48(s0)
	lw	a5,-44(s0)
.L25:
	.loc 1 110 1 is_stmt 1
	mv	a0,a4
	mv	a1,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s2,68(sp)
	.cfi_restore 18
	lw	s3,64(sp)
	.cfi_restore 19
	lw	s4,60(sp)
	.cfi_restore 20
	lw	s5,56(sp)
	.cfi_restore 21
	lw	s6,52(sp)
	.cfi_restore 22
	lw	s7,48(sp)
	.cfi_restore 23
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	strntoumax, .-strntoumax
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x177
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
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
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x3
	.byte	0x5c
	.byte	0x20
	.4byte	0x7d
	.uleb128 0xa
	.4byte	0xa7
	.4byte	0x9b
	.uleb128 0xb
	.byte	0
	.uleb128 0x6
	.4byte	0x90
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.4byte	0xa0
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x4
	.byte	0x46
	.byte	0x13
	.4byte	0x9b
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x3a
	.byte	0xb
	.4byte	0x84
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x147
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x22
	.4byte	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x2f
	.4byte	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x3b
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x7
	.string	"n"
	.byte	0x3a
	.byte	0x48
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3c
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"v"
	.byte	0x3d
	.byte	0xf
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"d"
	.byte	0x3e
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x3
	.string	"c"
	.byte	0x47
	.byte	0xe
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0xa7
	.uleb128 0x4
	.4byte	0x151
	.uleb128 0x4
	.4byte	0xa0
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2d
	.byte	0x15
	.4byte	0x2b
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.string	"ch"
	.byte	0x2d
	.byte	0x22
	.4byte	0x2b
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
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
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
.LLRL0:
	.byte	0x7
	.4byte	.LFB1
	.uleb128 .LFE1-.LFB1
	.byte	0x7
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"endptr"
.LASF12:
	.string	"size_t"
.LASF21:
	.string	"strntoumax"
.LASF8:
	.string	"unsigned char"
.LASF10:
	.string	"long unsigned int"
.LASF9:
	.string	"short unsigned int"
.LASF13:
	.string	"uintmax_t"
.LASF18:
	.string	"minus"
.LASF17:
	.string	"base"
.LASF2:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF22:
	.string	"digitval"
.LASF20:
	.string	"_ctype_"
.LASF3:
	.string	"long long int"
.LASF15:
	.string	"nptr"
.LASF14:
	.string	"char"
.LASF6:
	.string	"short int"
.LASF19:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF7:
	.string	"long int"
.LASF4:
	.string	"long double"
.LASF5:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602/evb/src/strntoumax.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
