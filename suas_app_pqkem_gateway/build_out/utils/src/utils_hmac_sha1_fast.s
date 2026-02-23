	.file	"utils_hmac_sha1_fast.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils" "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_hmac_sha1_fast.c"
	.section	.text.utils_hmac_sha1_fast,"ax",@progbits
	.align	1
	.globl	utils_hmac_sha1_fast
	.type	utils_hmac_sha1_fast, @function
utils_hmac_sha1_fast:
.LFB2:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_hmac_sha1_fast.c"
	.loc 1 44 1
	.cfi_startproc
	addi	sp,sp,-320
	.cfi_def_cfa_offset 320
	sw	ra,316(sp)
	sw	s0,312(sp)
	sw	s2,308(sp)
	sw	s3,304(sp)
	sw	s4,300(sp)
	sw	s5,296(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	addi	s0,sp,320
	.cfi_def_cfa 8, 0
	sw	a0,-292(s0)
	sw	a1,-296(s0)
	sw	a2,-300(s0)
	sw	a3,-304(s0)
	sw	a4,-308(s0)
	sw	a5,-312(s0)
	sw	a6,-316(s0)
	.loc 1 52 11
	addi	a5,s0,-136
	sw	a5,-40(s0)
	.loc 1 53 12
	lw	a5,-40(s0)
	addi	a5,a5,64
	sw	a5,-44(s0)
	.loc 1 56 8
	lw	a4,-308(s0)
	li	a5,64
	ble	a4,a5,.L2
	.loc 1 58 9
	addi	a5,s0,-284
	li	a1,2
	mv	a0,a5
	call	bl_sha_init
	.loc 1 59 9
	lw	a4,-308(s0)
	addi	a5,s0,-284
	mv	a2,a4
	lw	a1,-304(s0)
	mv	a0,a5
	call	bl_sha_update
	.loc 1 60 9
	addi	a5,s0,-284
	lw	a1,-304(s0)
	mv	a0,a5
	call	bl_sha_finish
	.loc 1 62 17
	li	a5,20
	sw	a5,-308(s0)
.L2:
	.loc 1 78 5
	li	a2,64
	li	a1,0
	lw	a0,-40(s0)
	call	memset
	.loc 1 79 5
	lw	a5,-308(s0)
	mv	a2,a5
	lw	a1,-304(s0)
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 82 12
	sw	zero,-36(s0)
	.loc 1 82 5
	j	.L3
.L4:
	.loc 1 84 28
	lw	a5,-36(s0)
	slli	a5,a5,3
	lw	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a3,-36(s0)
	slli	a3,a3,3
	lw	a2,-40(s0)
	add	a3,a2,a3
	.loc 1 84 32
	li	a2,909520896
	addi	a2,a2,1590
	xor	s4,a4,a2
	li	a2,909520896
	addi	a2,a2,1590
	xor	s5,a5,a2
	sw	s4,0(a3)
	sw	s5,4(a3)
	.loc 1 82 25 discriminator 3
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L3:
	.loc 1 82 19 discriminator 1
	lw	a4,-36(s0)
	li	a5,7
	ble	a4,a5,.L4
	.loc 1 87 5
	addi	a5,s0,-284
	li	a1,2
	mv	a0,a5
	call	bl_sha_init
	.loc 1 88 5
	addi	a5,s0,-284
	li	a2,64
	lw	a1,-40(s0)
	mv	a0,a5
	call	bl_sha_update
	.loc 1 89 12
	sw	zero,-36(s0)
	.loc 1 89 5
	j	.L5
.L6:
	.loc 1 92 39
	lw	a5,-36(s0)
	slli	a5,a5,2
	lw	a4,-292(s0)
	add	a5,a4,a5
	.loc 1 92 9
	lw	a3,0(a5)
	.loc 1 92 52
	lw	a5,-36(s0)
	slli	a5,a5,2
	lw	a4,-296(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 92 9
	mv	a4,a5
	addi	a5,s0,-284
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	bl_sha_update
	.loc 1 89 31 discriminator 3
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L5:
	.loc 1 89 19 discriminator 1
	lw	a4,-36(s0)
	lw	a5,-300(s0)
	blt	a4,a5,.L6
	.loc 1 95 5
	addi	a5,s0,-284
	lw	a1,-44(s0)
	mv	a0,a5
	call	bl_sha_finish
	.loc 1 99 5
	li	a2,64
	li	a1,0
	lw	a0,-40(s0)
	call	memset
	.loc 1 100 5
	lw	a5,-308(s0)
	mv	a2,a5
	lw	a1,-304(s0)
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 103 12
	sw	zero,-36(s0)
	.loc 1 103 5
	j	.L7
.L8:
	.loc 1 105 28
	lw	a5,-36(s0)
	slli	a5,a5,3
	lw	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a3,-36(s0)
	slli	a3,a3,3
	lw	a2,-40(s0)
	add	a3,a2,a3
	.loc 1 105 32
	li	a2,1549557760
	addi	a2,a2,-932
	xor	s2,a4,a2
	li	a2,1549557760
	addi	a2,a2,-932
	xor	s3,a5,a2
	sw	s2,0(a3)
	sw	s3,4(a3)
	.loc 1 103 25 discriminator 3
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L7:
	.loc 1 103 19 discriminator 1
	lw	a4,-36(s0)
	li	a5,7
	ble	a4,a5,.L8
	.loc 1 108 5
	addi	a5,s0,-284
	li	a1,2
	mv	a0,a5
	call	bl_sha_init
	.loc 1 109 5
	addi	a5,s0,-284
	li	a2,64
	lw	a1,-40(s0)
	mv	a0,a5
	call	bl_sha_update
	.loc 1 110 5
	addi	a5,s0,-284
	li	a2,20
	lw	a1,-44(s0)
	mv	a0,a5
	call	bl_sha_update
	.loc 1 111 5
	addi	a5,s0,-284
	lw	a1,-44(s0)
	mv	a0,a5
	call	bl_sha_finish
	.loc 1 112 5
	lw	a5,-316(s0)
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-312(s0)
	call	memcpy
	.loc 1 113 1
	nop
	lw	ra,316(sp)
	.cfi_restore 1
	lw	s0,312(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 320
	lw	s2,308(sp)
	.cfi_restore 18
	lw	s3,304(sp)
	.cfi_restore 19
	lw	s4,300(sp)
	.cfi_restore 20
	lw	s5,296(sp)
	.cfi_restore 21
	addi	sp,sp,320
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	utils_hmac_sha1_fast, .-utils_hmac_sha1_fast
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sec.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x320
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x58
	.uleb128 0xb
	.4byte	0x47
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x72
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x85
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x93
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x11
	.byte	0x4
	.uleb128 0xc
	.4byte	0xad
	.uleb128 0x3
	.4byte	0x58
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	0x47
	.uleb128 0x12
	.byte	0x14
	.byte	0x4
	.byte	0x27
	.byte	0x9
	.4byte	0xff
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x28
	.byte	0xe
	.4byte	0xff
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x29
	.byte	0xf
	.4byte	0x10f
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x2a
	.byte	0xf
	.4byte	0x10f
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x2b
	.byte	0xd
	.4byte	0x47
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	0x66
	.4byte	0x10f
	.uleb128 0x9
	.4byte	0x93
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	0x66
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2c
	.byte	0x3
	.4byte	0xc5
	.uleb128 0x13
	.byte	0x7
	.byte	0x1
	.4byte	0x58
	.byte	0x4
	.byte	0x2f
	.byte	0xe
	.4byte	0x141
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x4
	.byte	0x33
	.byte	0x3
	.4byte	0x120
	.uleb128 0xb
	.4byte	0x141
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x94
	.byte	0x4
	.byte	0x35
	.byte	0x10
	.4byte	0x182
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x36
	.byte	0x22
	.4byte	0x114
	.byte	0
	.uleb128 0xe
	.string	"tmp"
	.byte	0x37
	.4byte	0x182
	.byte	0x14
	.uleb128 0xe
	.string	"pad"
	.byte	0x38
	.4byte	0x182
	.byte	0x54
	.byte	0
	.uleb128 0xd
	.4byte	0x66
	.4byte	0x192
	.uleb128 0x9
	.4byte	0x93
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x4
	.byte	0x39
	.byte	0x3
	.4byte	0x152
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x5
	.byte	0x1f
	.byte	0x8
	.4byte	0xad
	.4byte	0x1be
	.uleb128 0x1
	.4byte	0xaf
	.uleb128 0x1
	.4byte	0x1c3
	.uleb128 0x1
	.4byte	0x9a
	.byte	0
	.uleb128 0x3
	.4byte	0x1c8
	.uleb128 0xc
	.4byte	0x1be
	.uleb128 0x15
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x5
	.byte	0x21
	.byte	0x8
	.4byte	0xad
	.4byte	0x1e9
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0x8c
	.uleb128 0x1
	.4byte	0x9a
	.byte	0
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.byte	0x4d
	.byte	0x5
	.4byte	0x8c
	.4byte	0x204
	.uleb128 0x1
	.4byte	0x204
	.uleb128 0x1
	.4byte	0xc0
	.byte	0
	.uleb128 0x3
	.4byte	0x192
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.byte	0x4c
	.byte	0x5
	.4byte	0x8c
	.4byte	0x229
	.uleb128 0x1
	.4byte	0x204
	.uleb128 0x1
	.4byte	0x229
	.uleb128 0x1
	.4byte	0x66
	.byte	0
	.uleb128 0x3
	.4byte	0x53
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x4
	.byte	0x4b
	.byte	0x6
	.4byte	0x245
	.uleb128 0x1
	.4byte	0x204
	.uleb128 0x1
	.4byte	0x14d
	.byte	0
	.uleb128 0x17
	.4byte	.LASF44
	.byte	0x1
	.byte	0x25
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30d
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0x25
	.byte	0x2c
	.4byte	0x30d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0x26
	.byte	0x1b
	.4byte	0x312
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x27
	.byte	0x19
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x18
	.string	"key"
	.byte	0x1
	.byte	0x28
	.byte	0x24
	.4byte	0xb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x29
	.byte	0x19
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x5
	.4byte	.LASF36
	.byte	0x2a
	.byte	0x24
	.4byte	0xb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x5
	.4byte	.LASF37
	.byte	0x2b
	.byte	0x19
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x2d
	.byte	0xe
	.4byte	0x317
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x2e
	.byte	0x12
	.4byte	0x192
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x2f
	.byte	0x14
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x30
	.byte	0x14
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x31
	.byte	0x9
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3
	.4byte	0xb4
	.uleb128 0x3
	.4byte	0x8c
	.uleb128 0x1a
	.4byte	0x79
	.uleb128 0x9
	.4byte	0x93
	.byte	0xa
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"bl_sha_ctx_t"
.LASF31:
	.string	"bl_sha_update"
.LASF14:
	.string	"size_t"
.LASF44:
	.string	"utils_hmac_sha1_fast"
.LASF19:
	.string	"shaPadding"
.LASF33:
	.string	"pTextLen"
.LASF20:
	.string	"shaFeed"
.LASF11:
	.string	"uint64_t"
.LASF23:
	.string	"BL_SHA224"
.LASF21:
	.string	"_bl_sha_SEC_Eng_SHA256_Ctx_t"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF18:
	.string	"shaBuf"
.LASF30:
	.string	"bl_sha_finish"
.LASF29:
	.string	"memset"
.LASF3:
	.string	"short int"
.LASF24:
	.string	"BL_SHA1"
.LASF13:
	.string	"unsigned int"
.LASF12:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint8_t"
.LASF26:
	.string	"sha_ctx"
.LASF38:
	.string	"pBuf"
.LASF17:
	.string	"total"
.LASF5:
	.string	"long long int"
.LASF16:
	.string	"char"
.LASF28:
	.string	"memcpy"
.LASF22:
	.string	"BL_SHA256"
.LASF36:
	.string	"output"
.LASF41:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF34:
	.string	"textNum"
.LASF35:
	.string	"key_len"
.LASF9:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF43:
	.string	"bl_sha_init"
.LASF15:
	.string	"long double"
.LASF37:
	.string	"outputLen"
.LASF2:
	.string	"signed char"
.LASF32:
	.string	"ppText"
.LASF39:
	.string	"k_pad"
.LASF40:
	.string	"digest"
.LASF25:
	.string	"bl_sha_type_t"
.LASF42:
	.string	"bl_sha_ctx"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_hmac_sha1_fast.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
