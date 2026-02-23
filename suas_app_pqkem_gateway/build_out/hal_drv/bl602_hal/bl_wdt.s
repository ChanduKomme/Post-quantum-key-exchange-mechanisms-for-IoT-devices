	.file	"bl_wdt.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_wdt.c"
	.section	.text.Timer_Watchdog_Case,"ax",@progbits
	.align	1
	.type	Timer_Watchdog_Case, @function
Timer_Watchdog_Case:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_wdt.c"
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
	sw	a0,-20(s0)
	.loc 1 37 5
	call	WDT_Disable
	.loc 1 38 5
	li	a1,1
	li	a0,1
	call	WDT_Set_Clock
	.loc 1 39 5
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a5,a5,4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	WDT_SetCompValue
	.loc 1 40 5
	call	WDT_ResetCounterValue
	.loc 1 41 5
	li	a1,1
	li	a0,0
	call	WDT_IntMask
	.loc 1 43 5
	call	WDT_Enable
	.loc 1 44 1
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
.LFE8:
	.size	Timer_Watchdog_Case, .-Timer_Watchdog_Case
	.section	.text.bl_wdt_feed,"ax",@progbits
	.align	1
	.globl	bl_wdt_feed
	.type	bl_wdt_feed, @function
bl_wdt_feed:
.LFB9:
	.loc 1 47 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 48 5
	call	WDT_ResetCounterValue
	.loc 1 49 1
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
	.size	bl_wdt_feed, .-bl_wdt_feed
	.section	.text.bl_wdt_disable,"ax",@progbits
	.align	1
	.globl	bl_wdt_disable
	.type	bl_wdt_disable, @function
bl_wdt_disable:
.LFB10:
	.loc 1 52 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 53 5
	call	WDT_Disable
	.loc 1 54 1
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
.LFE10:
	.size	bl_wdt_disable, .-bl_wdt_disable
	.section	.text.bl_wdt_init,"ax",@progbits
	.align	1
	.globl	bl_wdt_init
	.type	bl_wdt_init, @function
bl_wdt_init:
.LFB11:
	.loc 1 57 1
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
	.loc 1 58 8
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-2
	ble	a4,a5,.L5
	.loc 1 59 16
	li	a5,-1
	j	.L6
.L5:
	.loc 1 61 5
	lw	a0,-20(s0)
	call	Timer_Watchdog_Case
	.loc 1 62 12
	li	a5,0
.L6:
	.loc 1 63 1
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
.LFE11:
	.size	bl_wdt_init, .-bl_wdt_init
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_timer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1c3
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xa
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
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x66
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
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	0x2b
	.byte	0x3
	.byte	0x33
	.byte	0x1
	.4byte	0xb0
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x36
	.byte	0x2
	.4byte	0x97
	.uleb128 0x5
	.4byte	0x2b
	.byte	0x4
	.byte	0x42
	.byte	0xe
	.4byte	0xe1
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x47
	.byte	0x2
	.4byte	0xbc
	.uleb128 0x5
	.4byte	0x2b
	.byte	0x4
	.byte	0x71
	.byte	0xe
	.4byte	0x106
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0x74
	.byte	0x2
	.4byte	0xed
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0xe7
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0xe9
	.4byte	0x12d
	.uleb128 0x4
	.4byte	0x106
	.uleb128 0x4
	.4byte	0xb0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0xe4
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0xe2
	.4byte	0x143
	.uleb128 0x4
	.4byte	0x5a
	.byte	0
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0xe0
	.4byte	0x158
	.uleb128 0x4
	.4byte	0xe1
	.uleb128 0x4
	.4byte	0x4e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0xe8
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x1
	.byte	0x38
	.byte	0x5
	.4byte	0x7b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x186
	.uleb128 0x8
	.string	"ms"
	.byte	0x38
	.byte	0x15
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x33
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x2e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0x23
	.byte	0xd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.string	"ms"
	.byte	0x23
	.byte	0x25
	.4byte	0x7b
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.sleb128 4
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
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xd
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
	.4byte	0x34
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
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
	.byte	0x7
	.4byte	.LFB10
	.uleb128 .LFE10-.LFB10
	.byte	0x7
	.4byte	.LFB11
	.uleb128 .LFE11-.LFB11
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF22:
	.string	"TIMER_ClkSrc_Type"
.LASF17:
	.string	"BL_Mask_Type"
.LASF31:
	.string	"WDT_Disable"
.LASF29:
	.string	"WDT_SetCompValue"
.LASF15:
	.string	"UNMASK"
.LASF27:
	.string	"WDT_ResetCounterValue"
.LASF20:
	.string	"TIMER_CLKSRC_1K"
.LASF26:
	.string	"WDT_Enable"
.LASF10:
	.string	"long unsigned int"
.LASF9:
	.string	"short unsigned int"
.LASF21:
	.string	"TIMER_CLKSRC_XTAL"
.LASF25:
	.string	"WDT_INT_Type"
.LASF2:
	.string	"unsigned char"
.LASF18:
	.string	"TIMER_CLKSRC_FCLK"
.LASF19:
	.string	"TIMER_CLKSRC_32K"
.LASF12:
	.string	"unsigned int"
.LASF28:
	.string	"WDT_IntMask"
.LASF11:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint8_t"
.LASF24:
	.string	"WDT_INT_ALL"
.LASF34:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF32:
	.string	"bl_wdt_disable"
.LASF36:
	.string	"Timer_Watchdog_Case"
.LASF16:
	.string	"MASK"
.LASF30:
	.string	"WDT_Set_Clock"
.LASF14:
	.string	"char"
.LASF35:
	.string	"bl_wdt_init"
.LASF33:
	.string	"bl_wdt_feed"
.LASF4:
	.string	"short int"
.LASF8:
	.string	"uint16_t"
.LASF5:
	.string	"long int"
.LASF23:
	.string	"WDT_INT"
.LASF13:
	.string	"long double"
.LASF3:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_wdt.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
