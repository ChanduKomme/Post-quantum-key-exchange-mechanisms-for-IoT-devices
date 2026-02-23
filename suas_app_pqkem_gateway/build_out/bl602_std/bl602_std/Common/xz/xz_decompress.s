	.file	"xz_decompress.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz/xz_decompress.c"
	.section	.sbss.s,"aw",@nobits
	.align	2
	.type	s, @object
	.size	s, 4
s:
	.zero	4
	.section	.text.xz_uncompress_init,"ax",@progbits
	.align	1
	.globl	xz_uncompress_init
	.type	xz_uncompress_init, @function
xz_uncompress_init:
.LFB1:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz/xz_decompress.c"
	.loc 1 9 1
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
	.loc 1 10 5
	call	xz_crc32_init
	.loc 1 16 9
	li	a1,32768
	li	a0,2
	call	xz_dec_init
	mv	a4,a0
	.loc 1 16 7 discriminator 1
	lui	a5,%hi(s)
	sw	a4,%lo(s)(a5)
	.loc 1 17 11
	lui	a5,%hi(s)
	lw	a5,%lo(s)(a5)
	.loc 1 17 8
	bne	a5,zero,.L2
	.loc 1 18 20
	li	a5,1
	j	.L3
.L2:
	.loc 1 21 16
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 22 20
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 1 23 21
	lw	a5,-20(s0)
	sw	zero,8(a5)
	.loc 1 24 17
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,12(a5)
	.loc 1 25 21
	lw	a5,-20(s0)
	sw	zero,16(a5)
	.loc 1 26 22
	lw	a5,-20(s0)
	sw	zero,20(a5)
	.loc 1 28 12
	li	a5,0
.L3:
	.loc 1 29 1
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
	.size	xz_uncompress_init, .-xz_uncompress_init
	.section	.text.xz_uncompress_stream,"ax",@progbits
	.align	1
	.globl	xz_uncompress_stream
	.type	xz_uncompress_stream, @function
xz_uncompress_stream:
.LFB2:
	.loc 1 33 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	.loc 1 35 17
	lw	a5,-56(s0)
	sw	zero,0(a5)
	.loc 1 37 15
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 37 33
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 37 8
	bne	a4,a5,.L5
	.loc 1 38 25
	lw	a5,-36(s0)
	lw	a4,-44(s0)
	sw	a4,8(a5)
	.loc 1 39 28
	lw	a5,-36(s0)
	sw	zero,4(a5)
.L5:
	.loc 1 42 15
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 1 42 34
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 42 8
	bne	a4,a5,.L6
	.loc 1 43 30
	lw	a5,-36(s0)
	lw	a4,-52(s0)
	sw	a4,20(a5)
	.loc 1 44 25
	lw	a5,-36(s0)
	sw	zero,16(a5)
.L6:
	.loc 1 47 14
	lui	a5,%hi(s)
	lw	a5,%lo(s)(a5)
	lw	a1,-36(s0)
	mv	a0,a5
	call	xz_dec_run
	mv	a5,a0
	.loc 1 47 12 discriminator 1
	sw	a5,-20(s0)
	.loc 1 49 8
	lw	a4,-20(s0)
	li	a5,1
	beq	a4,a5,.L7
	.loc 1 49 45 discriminator 1
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 1 49 64 discriminator 1
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 49 35 discriminator 1
	bne	a4,a5,.L8
.L7:
	.loc 1 50 29
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 1 50 21
	lw	a5,-56(s0)
	sw	a4,0(a5)
.L8:
	.loc 1 52 12
	lw	a5,-20(s0)
	.loc 1 53 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
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
	.loc 1 56 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 57 5
	lui	a5,%hi(s)
	lw	a5,%lo(s)(a5)
	mv	a0,a5
	call	xz_dec_end
	.loc 1 58 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	xz_uncompress_end, .-xz_uncompress_end
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz/xz.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2aa
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x79
	.uleb128 0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x93
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x8
	.4byte	.LASF18
	.4byte	0x79
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
	.uleb128 0x8
	.4byte	.LASF19
	.4byte	0x79
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
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x18
	.byte	0x4
	.byte	0x8c
	.byte	0x8
	.4byte	0x158
	.uleb128 0x9
	.string	"in"
	.byte	0x8d
	.byte	0x14
	.4byte	0x158
	.byte	0
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x8e
	.4byte	0x32
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x8f
	.4byte	0x32
	.byte	0x8
	.uleb128 0x9
	.string	"out"
	.byte	0x91
	.byte	0xe
	.4byte	0x15d
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x92
	.4byte	0x32
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x93
	.4byte	0x32
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	0x74
	.uleb128 0x4
	.4byte	0x68
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF33
	.uleb128 0xf
	.4byte	.LASF45
	.uleb128 0x10
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
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x4
	.byte	0xee
	.byte	0xd
	.4byte	0x195
	.uleb128 0x5
	.4byte	0x17e
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0xc6
	.byte	0x17
	.4byte	0x17e
	.4byte	0x1ce
	.uleb128 0x5
	.4byte	0xa1
	.uleb128 0x5
	.4byte	0x87
	.byte	0
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x113
	.byte	0xd
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.byte	0x37
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0x1f
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x267
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x1f
	.byte	0x29
	.4byte	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x1f
	.byte	0x4a
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x1f
	.byte	0x59
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x20
	.byte	0x22
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x20
	.byte	0x31
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x20
	.byte	0x41
	.4byte	0x267
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x1
	.byte	0x22
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	0x87
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0x27
	.4byte	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x8
	.byte	0x38
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x8
	.byte	0x47
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.byte	0
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"stream"
.LASF8:
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
.LASF42:
	.string	"status"
.LASF26:
	.string	"XZ_OPTIONS_ERROR"
.LASF17:
	.string	"XZ_DYNALLOC"
.LASF34:
	.string	"xz_dec_run"
.LASF40:
	.string	"dlen"
.LASF10:
	.string	"unsigned char"
.LASF38:
	.string	"slen"
.LASF30:
	.string	"in_size"
.LASF13:
	.string	"long unsigned int"
.LASF11:
	.string	"short unsigned int"
.LASF35:
	.string	"xz_dec_init"
.LASF44:
	.string	"xz_buf"
.LASF49:
	.string	"xz_uncompress_stream"
.LASF2:
	.string	"unsigned int"
.LASF27:
	.string	"XZ_DATA_ERROR"
.LASF18:
	.string	"xz_mode"
.LASF21:
	.string	"XZ_STREAM_END"
.LASF14:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF31:
	.string	"out_pos"
.LASF19:
	.string	"xz_ret"
.LASF45:
	.string	"xz_dec"
.LASF20:
	.string	"XZ_OK"
.LASF22:
	.string	"XZ_UNSUPPORTED_CHECK"
.LASF48:
	.string	"xz_uncompress_end"
.LASF32:
	.string	"out_size"
.LASF3:
	.string	"long long int"
.LASF33:
	.string	"char"
.LASF6:
	.string	"short int"
.LASF25:
	.string	"XZ_FORMAT_ERROR"
.LASF47:
	.string	"xz_crc32_init"
.LASF43:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF37:
	.string	"sbuf"
.LASF50:
	.string	"xz_uncompress_init"
.LASF12:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF23:
	.string	"XZ_MEM_ERROR"
.LASF4:
	.string	"long double"
.LASF5:
	.string	"signed char"
.LASF16:
	.string	"XZ_PREALLOC"
.LASF24:
	.string	"XZ_MEMLIMIT_ERROR"
.LASF46:
	.string	"xz_dec_end"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz/xz_decompress.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
