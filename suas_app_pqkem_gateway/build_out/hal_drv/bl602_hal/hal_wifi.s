	.file	"hal_wifi.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_wifi.c"
	.section	.rodata
	.align	2
.LC0:
	.string	"fw"
	.section	.text.hal_wifi_start_firmware_task,"ax",@progbits
	.align	1
	.globl	hal_wifi_start_firmware_task
	.type	hal_wifi_start_firmware_task, @function
hal_wifi_start_firmware_task:
.LFB1:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_wifi.c"
	.loc 1 41 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 45 5
	lui	a5,%hi(wifi_fw_task.0)
	addi	a6,a5,%lo(wifi_fw_task.0)
	lui	a5,%hi(wifi_fw_stack.1)
	addi	a5,a5,%lo(wifi_fw_stack.1)
	li	a4,30
	li	a3,0
	li	a2,1536
	lui	a1,%hi(.LC0)
	addi	a1,a1,%lo(.LC0)
	lui	a0,%hi(wifi_main)
	addi	a0,a0,%lo(wifi_main)
	call	xTaskCreateStatic
	.loc 1 47 12
	li	a5,0
	.loc 1 48 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	hal_wifi_start_firmware_task, .-hal_wifi_start_firmware_task
	.section	.bss.wifi_fw_stack.1,"aw",@nobits
	.align	2
	.type	wifi_fw_stack.1, @object
	.size	wifi_fw_stack.1, 6144
wifi_fw_stack.1:
	.zero	6144
	.section	.bss.wifi_fw_task.0,"aw",@nobits
	.align	2
	.type	wifi_fw_task.0, @object
	.size	wifi_fw_task.0, 100
wifi_fw_task.0:
	.zero	100
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/projdefs.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifi/include/bl60x_fw_api.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2e4
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x68
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x87
	.uleb128 0x5
	.4byte	0x76
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x23
	.byte	0x10
	.4byte	0xa1
	.uleb128 0x6
	.4byte	0xa6
	.uleb128 0xe
	.4byte	0xb1
	.uleb128 0x3
	.4byte	0xb1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.uleb128 0x5
	.4byte	0xb1
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3e
	.byte	0x12
	.4byte	0x76
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x40
	.byte	0x12
	.4byte	0x76
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0x76
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x14
	.2byte	0x425
	.byte	0x8
	.4byte	0x104
	.uleb128 0x1
	.4byte	.LASF18
	.2byte	0x42a
	.byte	0xd
	.4byte	0xd0
	.byte	0
	.uleb128 0x1
	.4byte	.LASF19
	.2byte	0x42b
	.byte	0x8
	.4byte	0x104
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0xb1
	.4byte	0x114
	.uleb128 0x8
	.4byte	0x32
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.2byte	0x430
	.byte	0x22
	.4byte	0xdc
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x64
	.2byte	0x458
	.byte	0x10
	.4byte	0x1ca
	.uleb128 0x1
	.4byte	.LASF23
	.2byte	0x45a
	.byte	0x8
	.4byte	0xb1
	.byte	0
	.uleb128 0x1
	.4byte	.LASF24
	.2byte	0x45e
	.byte	0x13
	.4byte	0x1ca
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.2byte	0x45f
	.byte	0xe
	.4byte	0xc4
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF26
	.2byte	0x460
	.byte	0x8
	.4byte	0xb1
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF27
	.2byte	0x461
	.byte	0xa
	.4byte	0x1da
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF28
	.2byte	0x466
	.byte	0xf
	.4byte	0xc4
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF29
	.2byte	0x469
	.byte	0xf
	.4byte	0x1ea
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF30
	.2byte	0x46c
	.byte	0xf
	.4byte	0x1ea
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF31
	.2byte	0x472
	.byte	0x9
	.4byte	0x1fa
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF32
	.2byte	0x47b
	.byte	0xc
	.4byte	0x76
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF33
	.2byte	0x47c
	.byte	0xb
	.4byte	0x5c
	.byte	0x60
	.uleb128 0x1
	.4byte	.LASF34
	.2byte	0x47f
	.byte	0xb
	.4byte	0x5c
	.byte	0x61
	.byte	0
	.uleb128 0x7
	.4byte	0x114
	.4byte	0x1da
	.uleb128 0x8
	.4byte	0x32
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x5c
	.4byte	0x1ea
	.uleb128 0x8
	.4byte	0x32
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0xc4
	.4byte	0x1fa
	.uleb128 0x8
	.4byte	0x32
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0xb1
	.4byte	0x20a
	.uleb128 0x8
	.4byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF35
	.2byte	0x488
	.byte	0x3
	.4byte	0x120
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x6
	.byte	0x46
	.byte	0x25
	.4byte	0x222
	.uleb128 0x6
	.4byte	0x227
	.uleb128 0x10
	.4byte	.LASF41
	.uleb128 0x6
	.4byte	0x23d
	.uleb128 0x5
	.4byte	0x22c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF37
	.uleb128 0x5
	.4byte	0x236
	.uleb128 0x6
	.4byte	0xb8
	.uleb128 0x5
	.4byte	0x242
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x7
	.byte	0x5b
	.byte	0x6
	.4byte	0x25e
	.uleb128 0x3
	.4byte	0xb1
	.byte	0
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x1be
	.byte	0xf
	.4byte	0x216
	.4byte	0x293
	.uleb128 0x3
	.4byte	0x95
	.uleb128 0x3
	.4byte	0x231
	.uleb128 0x3
	.4byte	0x82
	.uleb128 0x3
	.4byte	0xb3
	.uleb128 0x3
	.4byte	0xc4
	.uleb128 0x3
	.4byte	0x247
	.uleb128 0x3
	.4byte	0x298
	.byte	0
	.uleb128 0x6
	.4byte	0x20a
	.uleb128 0x5
	.4byte	0x293
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.byte	0x28
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2da
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x2a
	.byte	0x18
	.4byte	0x2da
	.uleb128 0x5
	.byte	0x3
	.4byte	wifi_fw_stack.1
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x2b
	.byte	0x19
	.4byte	0x20a
	.uleb128 0x5
	.byte	0x3
	.4byte	wifi_fw_task.0
	.byte	0
	.uleb128 0x14
	.4byte	0xb8
	.uleb128 0x15
	.4byte	0x32
	.2byte	0x5ff
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"TickType_t"
.LASF21:
	.string	"xSTATIC_LIST_ITEM"
.LASF36:
	.string	"TaskHandle_t"
.LASF26:
	.string	"pxDummy6"
.LASF20:
	.string	"StaticListItem_t"
.LASF38:
	.string	"wifi_fw_stack"
.LASF22:
	.string	"xSTATIC_TCB"
.LASF14:
	.string	"TaskFunction_t"
.LASF25:
	.string	"uxDummy5"
.LASF29:
	.string	"uxDummy10"
.LASF28:
	.string	"uxDummy9"
.LASF12:
	.string	"long unsigned int"
.LASF23:
	.string	"pxDummy1"
.LASF9:
	.string	"short unsigned int"
.LASF33:
	.string	"ucDummy19"
.LASF42:
	.string	"wifi_main"
.LASF27:
	.string	"ucDummy7"
.LASF41:
	.string	"tskTaskControlBlock"
.LASF8:
	.string	"unsigned char"
.LASF2:
	.string	"unsigned int"
.LASF44:
	.string	"hal_wifi_start_firmware_task"
.LASF13:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF39:
	.string	"wifi_fw_task"
.LASF16:
	.string	"UBaseType_t"
.LASF32:
	.string	"ulDummy18"
.LASF43:
	.string	"xTaskCreateStatic"
.LASF3:
	.string	"long long int"
.LASF37:
	.string	"char"
.LASF15:
	.string	"StackType_t"
.LASF35:
	.string	"StaticTask_t"
.LASF6:
	.string	"short int"
.LASF34:
	.string	"uxDummy20"
.LASF40:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF30:
	.string	"uxDummy12"
.LASF31:
	.string	"pvDummy15"
.LASF11:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF4:
	.string	"long double"
.LASF5:
	.string	"signed char"
.LASF19:
	.string	"pvDummy3"
.LASF18:
	.string	"xDummy2"
.LASF24:
	.string	"xDummy3"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_wifi.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
