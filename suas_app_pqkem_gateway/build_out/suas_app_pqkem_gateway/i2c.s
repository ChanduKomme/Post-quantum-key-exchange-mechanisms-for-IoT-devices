	.file	"i2c.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/suas_app_pqkem_gateway" "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/i2c.c"
	.section	.rodata
	.align	2
.LC0:
	.string	"[I2C][EVT] Transfer ended interrupt %lld\r\n"
	.align	2
.LC1:
	.string	"[I2C][EVT] Arbitration interrupt %lld\r\n"
	.align	2
.LC2:
	.string	"[I2C][EVT] Transfer not acknowledged interrupt  %lld\r\n"
	.align	2
.LC3:
	.string	"[I2C][EVT] Transfer FIFO overflow/underflow interrupt %lld\r\n"
	.align	2
.LC4:
	.string	"[I2C][EVT] Unknown error code %u, %lld\r\n"
	.section	.text.suas_event_cb_i2c_interrupt,"ax",@progbits
	.align	1
	.type	suas_event_cb_i2c_interrupt, @function
suas_event_cb_i2c_interrupt:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/i2c.c"
	.loc 1 15 77
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 16 16
	lw	a5,-20(s0)
	lhu	a5,6(a5)
	.loc 1 16 3
	li	a4,4
	beq	a5,a4,.L2
	li	a4,4
	bgt	a5,a4,.L3
	li	a4,3
	beq	a5,a4,.L4
	li	a4,3
	bgt	a5,a4,.L3
	li	a4,1
	beq	a5,a4,.L5
	li	a4,2
	beq	a5,a4,.L6
	j	.L3
.L5:
	.loc 1 18 7
	call	aos_now_ms
	mv	a4,a0
	mv	a5,a1
	.loc 1 18 7 is_stmt 0 discriminator 1
	mv	a2,a4
	mv	a3,a5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 19 7 is_stmt 1
	j	.L7
.L6:
	.loc 1 21 7
	call	aos_now_ms
	mv	a4,a0
	mv	a5,a1
	.loc 1 21 7 is_stmt 0 discriminator 1
	mv	a2,a4
	mv	a3,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	.loc 1 22 7 is_stmt 1
	j	.L7
.L4:
	.loc 1 24 7
	call	aos_now_ms
	mv	a4,a0
	mv	a5,a1
	.loc 1 24 7 is_stmt 0 discriminator 1
	mv	a2,a4
	mv	a3,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	.loc 1 26 7 is_stmt 1
	j	.L7
.L2:
	.loc 1 28 7
	call	aos_now_ms
	mv	a4,a0
	mv	a5,a1
	.loc 1 28 7 is_stmt 0 discriminator 1
	mv	a2,a4
	mv	a3,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	.loc 1 30 7 is_stmt 1
	j	.L7
.L3:
	.loc 1 32 65
	lw	a5,-20(s0)
	lhu	a5,6(a5)
	.loc 1 32 7
	mv	s1,a5
	call	aos_now_ms
	mv	a4,a0
	mv	a5,a1
	.loc 1 32 7 is_stmt 0 discriminator 1
	mv	a2,a4
	mv	a3,a5
	mv	a1,s1
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
	.loc 1 35 1 is_stmt 1
	nop
.L7:
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	suas_event_cb_i2c_interrupt, .-suas_event_cb_i2c_interrupt
	.section	.text.suas_i2c_init,"ax",@progbits
	.align	1
	.globl	suas_i2c_init
	.type	suas_i2c_init, @function
suas_i2c_init:
.LFB9:
	.loc 1 38 22
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 40 3
	call	loopset_i2c_hook_on_looprt
	.loc 1 43 3
	li	a2,0
	lui	a5,%hi(suas_event_cb_i2c_interrupt)
	addi	a1,a5,%lo(suas_event_cb_i2c_interrupt)
	li	a0,527
	call	aos_register_event_filter
	.loc 1 46 3
	li	a1,15
	li	a0,0
	call	hal_i2c_init
	.loc 1 49 3
	li	a5,98304
	addi	a1,a5,1696
	li	a0,0
	call	I2C_ClockSet
	.loc 1 50 1
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
.LFE9:
	.size	suas_i2c_init, .-suas_i2c_init
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_stdint.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/yloop.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/include/loopset_i2c.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/kernel.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x21c
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xa
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
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x4f
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
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x5c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x76
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0xc
	.4byte	0xaa
	.uleb128 0xd
	.byte	0x10
	.byte	0x4
	.byte	0x64
	.byte	0x9
	.4byte	0xfc
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x66
	.byte	0xe
	.4byte	0x9e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x68
	.byte	0xe
	.4byte	0x92
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x6a
	.byte	0xe
	.4byte	0x92
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x6c
	.byte	0x13
	.4byte	0x82
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x6e
	.byte	0x13
	.4byte	0x82
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x6f
	.byte	0x3
	.4byte	0xb6
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x72
	.byte	0x10
	.4byte	0x114
	.uleb128 0x5
	.4byte	0x119
	.uleb128 0xe
	.4byte	0x129
	.uleb128 0x2
	.4byte	0x129
	.uleb128 0x2
	.4byte	0x90
	.byte	0
	.uleb128 0x5
	.4byte	0xfc
	.uleb128 0x5
	.4byte	0xb1
	.uleb128 0xf
	.4byte	0x12e
	.uleb128 0x10
	.byte	0x7
	.byte	0x1
	.4byte	0x4e
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0x153
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0x3c
	.byte	0x2
	.4byte	0x138
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x5
	.byte	0xb3
	.byte	0x6
	.4byte	0x176
	.uleb128 0x2
	.4byte	0x153
	.uleb128 0x2
	.4byte	0x9e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x6
	.byte	0x2b
	.4byte	0x2b
	.4byte	0x190
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x4
	.byte	0x81
	.4byte	0x2b
	.4byte	0x1af
	.uleb128 0x2
	.4byte	0x92
	.uleb128 0x2
	.4byte	0x108
	.uleb128 0x2
	.4byte	0x90
	.byte	0
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x8
	.byte	0x2c
	.byte	0x5
	.4byte	0x2b
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x7
	.byte	0xce
	.4byte	0x2b
	.4byte	0x1d1
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.4byte	.LASF31
	.byte	0x9
	.2byte	0x1ef
	.byte	0xf
	.4byte	0x39
	.uleb128 0x15
	.4byte	.LASF36
	.byte	0x1
	.byte	0x26
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0x1
	.byte	0xe
	.byte	0xd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0xe
	.byte	0x38
	.4byte	0x129
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0xf
	.byte	0x3f
	.4byte	0x90
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
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
	.4byte	.LFB8
	.uleb128 .LFE8-.LFB8
	.byte	0x7
	.4byte	.LFB9
	.uleb128 .LFE9-.LFB9
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"I2C0_ID"
.LASF31:
	.string	"aos_now_ms"
.LASF20:
	.string	"value"
.LASF27:
	.string	"hal_i2c_init"
.LASF21:
	.string	"extra"
.LASF30:
	.string	"loopset_i2c_hook_on_looprt"
.LASF22:
	.string	"input_event_t"
.LASF28:
	.string	"aos_register_event_filter"
.LASF35:
	.string	"I2C_ClockSet"
.LASF37:
	.string	"suas_event_cb_i2c_interrupt"
.LASF6:
	.string	"unsigned char"
.LASF12:
	.string	"long unsigned int"
.LASF8:
	.string	"short unsigned int"
.LASF10:
	.string	"__uint16_t"
.LASF23:
	.string	"aos_event_cb"
.LASF11:
	.string	"__uint32_t"
.LASF19:
	.string	"code"
.LASF32:
	.string	"event"
.LASF2:
	.string	"unsigned int"
.LASF13:
	.string	"long long unsigned int"
.LASF33:
	.string	"private_data"
.LASF26:
	.string	"I2C_ID_Type"
.LASF17:
	.string	"time"
.LASF3:
	.string	"long long int"
.LASF34:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF16:
	.string	"char"
.LASF29:
	.string	"printf"
.LASF18:
	.string	"type"
.LASF7:
	.string	"short int"
.LASF14:
	.string	"uint16_t"
.LASF15:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF4:
	.string	"long double"
.LASF5:
	.string	"signed char"
.LASF25:
	.string	"I2C_ID_MAX"
.LASF36:
	.string	"suas_i2c_init"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/suas_app_pqkem_gateway"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/i2c.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
