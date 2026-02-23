	.file	"utils_psk_fast.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils" "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_psk_fast.c"
	.section	.text.Bl_F_fast,"ax",@progbits
	.align	1
	.type	Bl_F_fast, @function
Bl_F_fast:
.LFB2:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_psk_fast.c"
	.loc 1 40 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	sw	a6,-76(s0)
	sw	a7,-80(s0)
	.loc 1 42 15
	lw	a0,-60(s0)
	call	strlen
	mv	a5,a0
	.loc 1 42 9 discriminator 1
	sw	a5,-28(s0)
	.loc 1 43 29
	lw	a5,-68(s0)
	addi	a5,a5,4
	.loc 1 43 9
	sw	a5,-32(s0)
	.loc 1 44 21
	lw	a5,-52(s0)
	sw	a5,-36(s0)
	.loc 1 47 5
	lw	a5,-68(s0)
	mv	a2,a5
	lw	a1,-64(s0)
	lw	a0,-52(s0)
	call	memcpy
	.loc 1 48 48
	lw	a5,-76(s0)
	srai	a3,a5,24
	.loc 1 48 11
	lw	a5,-68(s0)
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 1 48 26
	andi	a4,a3,0xff
	.loc 1 48 24
	sb	a4,0(a5)
	.loc 1 49 50
	lw	a5,-76(s0)
	srai	a3,a5,16
	.loc 1 49 11
	lw	a5,-68(s0)
	addi	a5,a5,1
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 1 49 28
	andi	a4,a3,0xff
	.loc 1 49 26
	sb	a4,0(a5)
	.loc 1 50 50
	lw	a5,-76(s0)
	srai	a3,a5,8
	.loc 1 50 11
	lw	a5,-68(s0)
	addi	a5,a5,2
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 1 50 28
	andi	a4,a3,0xff
	.loc 1 50 26
	sb	a4,0(a5)
	.loc 1 51 11
	lw	a5,-68(s0)
	addi	a5,a5,3
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 1 51 28
	lw	a4,-76(s0)
	andi	a4,a4,0xff
	.loc 1 51 26
	sb	a4,0(a5)
	.loc 1 53 5
	call	bl_sha_mutex_take
	.loc 1 54 5
	addi	a1,s0,-32
	addi	a0,s0,-36
	li	a6,20
	lw	a5,-56(s0)
	lw	a4,-28(s0)
	lw	a3,-60(s0)
	li	a2,1
	call	utils_hmac_sha1_fast
	.loc 1 63 5
	li	a2,20
	lw	a1,-56(s0)
	lw	a0,-80(s0)
	call	memcpy
	.loc 1 64 11
	lw	a5,-56(s0)
	sw	a5,-36(s0)
	.loc 1 65 12
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 65 5
	j	.L2
.L5:
	.loc 1 67 16
	li	a5,20
	sw	a5,-32(s0)
	.loc 1 70 9
	addi	a1,s0,-32
	addi	a0,s0,-36
	li	a6,20
	lw	a5,-52(s0)
	lw	a4,-28(s0)
	lw	a3,-60(s0)
	li	a2,1
	call	utils_hmac_sha1_fast
	.loc 1 78 9
	li	a2,20
	lw	a1,-52(s0)
	lw	a0,-56(s0)
	call	memcpy
	.loc 1 81 16
	sw	zero,-24(s0)
	.loc 1 81 9
	j	.L3
.L4:
	.loc 1 83 19
	lw	a5,-24(s0)
	lw	a4,-80(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 1 83 32
	lw	a5,-24(s0)
	lw	a4,-52(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 83 19
	lw	a5,-24(s0)
	lw	a2,-80(s0)
	add	a5,a2,a5
	.loc 1 83 23
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 81 30 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L3:
	.loc 1 81 23 discriminator 1
	lw	a4,-24(s0)
	li	a5,19
	ble	a4,a5,.L4
	.loc 1 65 34 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	.loc 1 65 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-72(s0)
	blt	a4,a5,.L5
	.loc 1 86 5
	call	bl_sha_mutex_give
	.loc 1 87 1
	nop
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	Bl_F_fast, .-Bl_F_fast
	.section	.text.utils_wifi_psk_cal_fast_bin,"ax",@progbits
	.align	1
	.globl	utils_wifi_psk_cal_fast_bin
	.type	utils_wifi_psk_cal_fast_bin, @function
utils_wifi_psk_cal_fast_bin:
.LFB3:
	.loc 1 90 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	.loc 1 93 10
	lw	a0,-84(s0)
	call	strlen
	mv	a4,a0
	.loc 1 93 8 discriminator 1
	li	a5,63
	bgtu	a4,a5,.L7
	.loc 1 93 33 discriminator 2
	lw	a4,-92(s0)
	li	a5,32
	ble	a4,a5,.L8
.L7:
	.loc 1 94 16
	li	a5,-1
	j	.L10
.L8:
	.loc 1 97 5
	addi	a1,s0,-72
	addi	a0,s0,-52
	lw	a7,-96(s0)
	li	a6,2
	li	a5,4096
	lw	a4,-92(s0)
	lw	a3,-88(s0)
	lw	a2,-84(s0)
	call	Bl_F_fast
	.loc 1 98 19
	lw	a5,-96(s0)
	addi	a5,a5,20
	.loc 1 98 5
	li	a2,12
	lw	a1,-96(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 99 5
	addi	a1,s0,-72
	addi	a0,s0,-52
	lw	a7,-96(s0)
	li	a6,1
	li	a5,4096
	lw	a4,-92(s0)
	lw	a3,-88(s0)
	lw	a2,-84(s0)
	call	Bl_F_fast
	.loc 1 101 12
	li	a5,0
.L10:
	.loc 1 102 1
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	utils_wifi_psk_cal_fast_bin, .-utils_wifi_psk_cal_fast_bin
	.section	.text.utils_wifi_psk_cal_fast,"ax",@progbits
	.align	1
	.globl	utils_wifi_psk_cal_fast
	.type	utils_wifi_psk_cal_fast, @function
utils_wifi_psk_cal_fast:
.LFB4:
	.loc 1 105 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	.loc 1 109 11
	addi	a5,s0,-52
	mv	a3,a5
	lw	a2,-76(s0)
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	utils_wifi_psk_cal_fast_bin
	sw	a0,-20(s0)
	.loc 1 110 8
	lw	a5,-20(s0)
	bne	a5,zero,.L12
	.loc 1 111 9
	addi	a5,s0,-52
	li	a2,32
	mv	a1,a5
	lw	a0,-80(s0)
	call	utils_bin2hex
.L12:
	.loc 1 114 12
	lw	a5,-20(s0)
	.loc 1 115 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	utils_wifi_psk_cal_fast, .-utils_wifi_psk_cal_fast
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sec.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_hex.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_hmac_sha1_fast.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x32e
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x5
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x10
	.byte	0x4
	.uleb128 0xa
	.4byte	0x84
	.uleb128 0x4
	.4byte	0x47
	.uleb128 0x4
	.4byte	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x11
	.4byte	0x95
	.uleb128 0x4
	.4byte	0x9c
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x20
	.byte	0x7
	.4byte	0x90
	.4byte	0xc6
	.uleb128 0x2
	.4byte	0x90
	.uleb128 0x2
	.4byte	0xc6
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0x4
	.4byte	0xd0
	.uleb128 0xa
	.4byte	0xc6
	.uleb128 0x12
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x4a
	.4byte	0x63
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x6
	.byte	0x21
	.byte	0x6
	.4byte	0x10b
	.uleb128 0x2
	.4byte	0x10b
	.uleb128 0x2
	.4byte	0x110
	.uleb128 0x2
	.4byte	0x63
	.uleb128 0x2
	.4byte	0x8b
	.uleb128 0x2
	.4byte	0x63
	.uleb128 0x2
	.4byte	0x8b
	.uleb128 0x2
	.4byte	0x63
	.byte	0
	.uleb128 0x4
	.4byte	0x8b
	.uleb128 0x4
	.4byte	0x63
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x49
	.4byte	0x63
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0x13f
	.uleb128 0x2
	.4byte	0x86
	.uleb128 0x2
	.4byte	0xcb
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x29
	.byte	0x8
	.4byte	0x71
	.4byte	0x155
	.uleb128 0x2
	.4byte	0xa1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x68
	.4byte	0x63
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c6
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x68
	.byte	0x23
	.4byte	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x68
	.byte	0x33
	.4byte	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x68
	.byte	0x3d
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x68
	.byte	0x4d
	.4byte	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.string	"ret"
	.byte	0x6a
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"psk"
	.byte	0x6b
	.byte	0xa
	.4byte	0x1c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x8
	.4byte	0x95
	.4byte	0x1d6
	.uleb128 0x9
	.4byte	0x6a
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x59
	.4byte	0x63
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x248
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x59
	.byte	0x27
	.4byte	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x59
	.byte	0x40
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x59
	.byte	0x4a
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x59
	.byte	0x65
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x5b
	.byte	0x13
	.4byte	0x248
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x5b
	.byte	0x1f
	.4byte	0x258
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x8
	.4byte	0x47
	.4byte	0x258
	.uleb128 0x9
	.4byte	0x6a
	.byte	0x23
	.byte	0
	.uleb128 0x8
	.4byte	0x47
	.4byte	0x268
	.uleb128 0x9
	.4byte	0x6a
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x27
	.byte	0xd
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x27
	.byte	0x25
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x27
	.byte	0x3f
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x27
	.byte	0x52
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x27
	.byte	0x6b
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x27
	.byte	0x75
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x27
	.byte	0x85
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x27
	.byte	0x95
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x27
	.byte	0xab
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.string	"i"
	.byte	0x29
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"j"
	.byte	0x29
	.byte	0xc
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"len"
	.byte	0x2a
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x2b
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x2c
	.byte	0x15
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
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
.LASF32:
	.string	"size_t"
.LASF33:
	.string	"utils_hmac_sha1_fast"
.LASF28:
	.string	"count"
.LASF10:
	.string	"unsigned int"
.LASF13:
	.string	"bl_sha_mutex_give"
.LASF26:
	.string	"digest1"
.LASF20:
	.string	"ssid_len"
.LASF6:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF27:
	.string	"iterations"
.LASF14:
	.string	"bl_sha_mutex_take"
.LASF30:
	.string	"pTemp"
.LASF15:
	.string	"utils_bin2hex"
.LASF17:
	.string	"strlen"
.LASF9:
	.string	"long long unsigned int"
.LASF34:
	.string	"Bl_F_fast"
.LASF29:
	.string	"tmpLen"
.LASF5:
	.string	"long long int"
.LASF23:
	.string	"utils_wifi_psk_cal_fast_bin"
.LASF12:
	.string	"char"
.LASF19:
	.string	"ssid"
.LASF3:
	.string	"short int"
.LASF21:
	.string	"output"
.LASF31:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF16:
	.string	"memcpy"
.LASF24:
	.string	"ssidlength"
.LASF25:
	.string	"digest"
.LASF4:
	.string	"long int"
.LASF22:
	.string	"utils_wifi_psk_cal_fast"
.LASF11:
	.string	"long double"
.LASF2:
	.string	"signed char"
.LASF18:
	.string	"password"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_psk_fast.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
