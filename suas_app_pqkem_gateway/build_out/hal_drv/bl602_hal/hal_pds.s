	.file	"hal_pds.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_pds.c"
	.section	.text.hal_pds_init,"ax",@progbits
	.align	1
	.globl	hal_pds_init
	.type	hal_pds_init, @function
hal_pds_init:
.LFB9:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_pds.c"
	.loc 1 34 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 35 5
	call	bl_pds_init
	.loc 1 41 1
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
	.size	hal_pds_init, .-hal_pds_init
	.section	.text.hal_pds_fastboot_cfg,"ax",@progbits
	.align	1
	.globl	hal_pds_fastboot_cfg
	.type	hal_pds_fastboot_cfg, @function
hal_pds_fastboot_cfg:
.LFB10:
	.loc 1 44 1
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
	.loc 1 45 5
	lw	a0,-20(s0)
	call	bl_pds_fastboot_cfg
	.loc 1 46 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	hal_pds_fastboot_cfg, .-hal_pds_fastboot_cfg
	.section	.text.hal_pds_enter_without_time_compensation,"ax",@progbits
	.align	1
	.globl	hal_pds_enter_without_time_compensation
	.type	hal_pds_enter_without_time_compensation, @function
hal_pds_enter_without_time_compensation:
.LFB11:
	.loc 1 49 1
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
	.loc 1 50 5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	bl_pds_enter
	.loc 1 51 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	hal_pds_enter_without_time_compensation, .-hal_pds_enter_without_time_compensation
	.section	.text.hal_pds_enter_with_time_compensation,"ax",@progbits
	.align	1
	.globl	hal_pds_enter_with_time_compensation
	.type	hal_pds_enter_with_time_compensation, @function
hal_pds_enter_with_time_compensation:
.LFB12:
	.loc 1 54 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	.loc 1 60 5
	addi	a4,s0,-32
	addi	a5,s0,-28
	mv	a1,a4
	mv	a0,a5
	call	HBN_Get_RTC_Timer_Val
	.loc 1 62 5
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	bl_pds_enter
	.loc 1 64 5
	addi	a4,s0,-40
	addi	a5,s0,-36
	mv	a1,a4
	mv	a0,a5
	call	HBN_Get_RTC_Timer_Val
	.loc 1 68 57
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	.loc 1 68 37
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 70 62
	lw	a5,-20(s0)
	srli	a4,a5,5
	.loc 1 70 99
	lw	a5,-20(s0)
	srli	a5,a5,11
	.loc 1 70 66
	sub	a4,a4,a5
	.loc 1 70 137
	lw	a5,-20(s0)
	srli	a5,a5,12
	.loc 1 70 28
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 72 5
	lw	a0,-24(s0)
	call	vTaskStepTick
	.loc 1 74 12
	lw	a5,-24(s0)
	.loc 1 75 1
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
.LFE12:
	.size	hal_pds_enter_with_time_compensation, .-hal_pds_enter_with_time_compensation
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_pds.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x219
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x9
	.4byte	.LASF33
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
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x61
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xa
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
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x2b
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xac
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0x8b
	.uleb128 0xc
	.byte	0x4
	.4byte	0x55
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0x55
	.uleb128 0xd
	.4byte	0xbe
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x9be
	.byte	0x6
	.4byte	0xe2
	.uleb128 0x2
	.4byte	0xca
	.byte	0
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x7
	.2byte	0x1b5
	.byte	0xd
	.4byte	0xac
	.4byte	0xfe
	.uleb128 0x2
	.4byte	0xb8
	.uleb128 0x2
	.4byte	0xb8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x2b
	.4byte	0x113
	.uleb128 0x2
	.4byte	0x55
	.uleb128 0x2
	.4byte	0x55
	.byte	0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x2a
	.4byte	0x123
	.uleb128 0x2
	.4byte	0x55
	.byte	0
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x6
	.byte	0x29
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0x35
	.byte	0xa
	.4byte	0x55
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b6
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x35
	.byte	0x38
	.4byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x35
	.byte	0x4b
	.4byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x37
	.byte	0xe
	.4byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x37
	.byte	0x21
	.4byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x38
	.byte	0xe
	.4byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x38
	.byte	0x20
	.4byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x39
	.byte	0xe
	.4byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x3a
	.byte	0xe
	.4byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x30
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e7
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x30
	.byte	0x37
	.4byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x30
	.byte	0x4a
	.4byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x2b
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20a
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x2b
	.byte	0x24
	.4byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.sleb128 6
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
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
	.4byte	.LFB9
	.uleb128 .LFE9-.LFB9
	.byte	0x7
	.4byte	.LFB10
	.uleb128 .LFE10-.LFB10
	.byte	0x7
	.4byte	.LFB11
	.uleb128 .LFE11-.LFB11
	.byte	0x7
	.4byte	.LFB12
	.uleb128 .LFE12-.LFB12
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"TIMEOUT"
.LASF18:
	.string	"TickType_t"
.LASF5:
	.string	"long int"
.LASF7:
	.string	"short unsigned int"
.LASF37:
	.string	"hal_pds_init"
.LASF30:
	.string	"hal_pds_enter_without_time_compensation"
.LASF10:
	.string	"unsigned int"
.LASF26:
	.string	"rtcLowAfterSleep"
.LASF20:
	.string	"bl_pds_enter"
.LASF2:
	.string	"unsigned char"
.LASF13:
	.string	"SUCCESS"
.LASF8:
	.string	"long unsigned int"
.LASF32:
	.string	"addr"
.LASF16:
	.string	"uint32_t"
.LASF24:
	.string	"rtcLowBeforeSleep"
.LASF19:
	.string	"vTaskStepTick"
.LASF31:
	.string	"hal_pds_fastboot_cfg"
.LASF27:
	.string	"rtcHighAfterSleep"
.LASF22:
	.string	"pdsLevel"
.LASF25:
	.string	"rtcHighBeforeSleep"
.LASF9:
	.string	"long long unsigned int"
.LASF23:
	.string	"pdsSleepCycles"
.LASF21:
	.string	"bl_pds_fastboot_cfg"
.LASF36:
	.string	"hal_pds_enter_with_time_compensation"
.LASF6:
	.string	"long long int"
.LASF34:
	.string	"HBN_Get_RTC_Timer_Val"
.LASF12:
	.string	"char"
.LASF35:
	.string	"bl_pds_init"
.LASF4:
	.string	"short int"
.LASF33:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF29:
	.string	"actualSleepDuration_ms"
.LASF14:
	.string	"ERROR"
.LASF11:
	.string	"long double"
.LASF3:
	.string	"signed char"
.LASF28:
	.string	"actualSleepDuration_32768cycles"
.LASF17:
	.string	"BL_Err_Type"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_pds.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
