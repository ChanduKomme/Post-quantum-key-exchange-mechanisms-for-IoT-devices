	.file	"bl_rtc.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_rtc.c"
	.section	.text.bl_rtc_init,"ax",@progbits
	.align	1
	.globl	bl_rtc_init
	.type	bl_rtc_init, @function
bl_rtc_init:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_rtc.c"
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
	.loc 1 38 5
	li	a0,0
	call	HBN_32K_Sel
	.loc 1 41 5
	call	HBN_Clear_RTC_Counter
	.loc 1 42 5
	call	HBN_Enable_RTC_Counter
	.loc 1 43 1
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
.LFE8:
	.size	bl_rtc_init, .-bl_rtc_init
	.section	.text.bl_rtc_get_counter,"ax",@progbits
	.align	1
	.globl	bl_rtc_get_counter
	.type	bl_rtc_get_counter, @function
bl_rtc_get_counter:
.LFB9:
	.loc 1 46 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s2,52(sp)
	sw	s3,48(sp)
	sw	s4,44(sp)
	sw	s5,40(sp)
	sw	s6,36(sp)
	sw	s7,32(sp)
	sw	s8,28(sp)
	sw	s9,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	.cfi_offset 22, -28
	.cfi_offset 23, -32
	.cfi_offset 24, -36
	.cfi_offset 25, -40
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 1 49 5
	addi	a4,s0,-56
	addi	a5,s0,-52
	mv	a1,a4
	mv	a0,a5
	call	HBN_Get_RTC_Timer_Val
	.loc 1 51 13
	lw	a5,-56(s0)
	mv	s8,a5
	li	s9,0
	.loc 1 51 31
	slli	s3,s8,0
	li	s2,0
	.loc 1 51 38
	lw	a5,-52(s0)
	mv	s4,a5
	li	s5,0
	or	s6,s2,s4
	or	s7,s3,s5
	mv	a4,s6
	mv	a5,s7
	.loc 1 52 1
	mv	a0,a4
	mv	a1,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s2,52(sp)
	.cfi_restore 18
	lw	s3,48(sp)
	.cfi_restore 19
	lw	s4,44(sp)
	.cfi_restore 20
	lw	s5,40(sp)
	.cfi_restore 21
	lw	s6,36(sp)
	.cfi_restore 22
	lw	s7,32(sp)
	.cfi_restore 23
	lw	s8,28(sp)
	.cfi_restore 24
	lw	s9,24(sp)
	.cfi_restore 25
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bl_rtc_get_counter, .-bl_rtc_get_counter
	.section	.text.bl_rtc_get_timestamp_ms,"ax",@progbits
	.align	1
	.globl	bl_rtc_get_timestamp_ms
	.type	bl_rtc_get_timestamp_ms, @function
bl_rtc_get_timestamp_ms:
.LFB10:
	.loc 1 55 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	sw	s4,28(sp)
	sw	s5,24(sp)
	sw	s6,20(sp)
	sw	s7,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	.cfi_offset 22, -28
	.cfi_offset 23, -32
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 58 11
	call	bl_rtc_get_counter
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	.loc 1 60 17
	lw	a5,-36(s0)
	slli	a5,a5,27
	lw	a4,-40(s0)
	srli	s2,a4,5
	add	s2,a5,s2
	lw	a5,-36(s0)
	srli	s3,a5,5
	.loc 1 60 30
	lw	a5,-36(s0)
	slli	a5,a5,21
	lw	a4,-40(s0)
	srli	s6,a4,11
	add	s6,a5,s6
	lw	a5,-36(s0)
	srli	s7,a5,11
	.loc 1 60 23
	sub	a4,s2,s6
	mv	a3,a4
	sgtu	a3,a3,s2
	sub	a5,s3,s7
	sub	a3,a5,a3
	mv	a5,a3
	mv	a2,a4
	mv	a3,a5
	.loc 1 60 44
	lw	a5,-36(s0)
	slli	a5,a5,20
	lw	a4,-40(s0)
	srli	s4,a4,12
	add	s4,a5,s4
	lw	a5,-36(s0)
	srli	s5,a5,12
	.loc 1 60 37
	sub	a4,a2,s4
	mv	a1,a4
	sgtu	a1,a1,a2
	sub	a5,a3,s5
	sub	a3,a5,a1
	mv	a5,a3
	.loc 1 61 1
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s2,36(sp)
	.cfi_restore 18
	lw	s3,32(sp)
	.cfi_restore 19
	lw	s4,28(sp)
	.cfi_restore 20
	lw	s5,24(sp)
	.cfi_restore 21
	lw	s6,20(sp)
	.cfi_restore 22
	lw	s7,16(sp)
	.cfi_restore 23
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bl_rtc_get_timestamp_ms, .-bl_rtc_get_timestamp_ms
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a2
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xa
	.4byte	.LASF31
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
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x61
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x74
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
	.byte	0x17
	.byte	0x1
	.4byte	0xb6
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0x97
	.uleb128 0x5
	.4byte	0x2b
	.byte	0x4
	.byte	0x64
	.byte	0xe
	.4byte	0xe1
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x68
	.byte	0x2
	.4byte	0xc2
	.uleb128 0x6
	.4byte	.LASF25
	.2byte	0x1b5
	.4byte	0xb6
	.4byte	0x107
	.uleb128 0x4
	.4byte	0x107
	.uleb128 0x4
	.4byte	0x107
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x55
	.uleb128 0x7
	.4byte	.LASF23
	.2byte	0x1b3
	.4byte	0xb6
	.uleb128 0x7
	.4byte	.LASF24
	.2byte	0x1b2
	.4byte	0xb6
	.uleb128 0x6
	.4byte	.LASF26
	.2byte	0x1a5
	.4byte	0xb6
	.4byte	0x138
	.uleb128 0x4
	.4byte	0xe1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x36
	.4byte	0x68
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x160
	.uleb128 0xd
	.string	"cnt"
	.byte	0x1
	.byte	0x38
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x2d
	.4byte	0x68
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x193
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0xe
	.4byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x16
	.4byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
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
	.sleb128 10
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
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 47
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.4byte	0x2c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF17:
	.string	"TIMEOUT"
.LASF20:
	.string	"HBN_32K_XTAL"
.LASF5:
	.string	"long int"
.LASF23:
	.string	"HBN_Enable_RTC_Counter"
.LASF10:
	.string	"uint64_t"
.LASF11:
	.string	"long long unsigned int"
.LASF2:
	.string	"unsigned char"
.LASF15:
	.string	"SUCCESS"
.LASF8:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF30:
	.string	"valHigh"
.LASF22:
	.string	"HBN_32K_CLK_Type"
.LASF12:
	.string	"unsigned int"
.LASF27:
	.string	"bl_rtc_get_timestamp_ms"
.LASF14:
	.string	"char"
.LASF24:
	.string	"HBN_Clear_RTC_Counter"
.LASF21:
	.string	"HBN_32K_DIG"
.LASF25:
	.string	"HBN_Get_RTC_Timer_Val"
.LASF19:
	.string	"HBN_32K_RC"
.LASF32:
	.string	"bl_rtc_init"
.LASF28:
	.string	"bl_rtc_get_counter"
.LASF4:
	.string	"short int"
.LASF31:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF29:
	.string	"valLow"
.LASF9:
	.string	"uint32_t"
.LASF16:
	.string	"ERROR"
.LASF13:
	.string	"long double"
.LASF3:
	.string	"signed char"
.LASF18:
	.string	"BL_Err_Type"
.LASF26:
	.string	"HBN_32K_Sel"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_rtc.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
