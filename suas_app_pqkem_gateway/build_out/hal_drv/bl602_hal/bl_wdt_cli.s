	.file	"bl_wdt_cli.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_wdt_cli.c"
	.section	.rodata
	.align	2
.LC0:
	.string	"bl_wdt_cli.c"
	.align	2
.LC1:
	.string	"\033[32mINFO  \033[0m"
	.align	2
.LC2:
	.string	"[%10u][%s: %s:%4d] Usage: %s ms\r\n"
	.align	2
.LC3:
	.string	"[%10u][%s: %s:%4d] Init WDT with %dms\r\n"
	.section	.text.cmd_wdt_init,"ax",@progbits
	.align	1
	.type	cmd_wdt_init, @function
cmd_wdt_init:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_wdt_cli.c"
	.loc 1 38 1
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
	.loc 1 39 9
	sw	zero,-20(s0)
	.loc 1 41 8
	lw	a4,-44(s0)
	li	a5,2
	beq	a4,a5,.L2
.LBB6:
.LBB7:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE7:
.LBE6:
	.loc 1 42 16 discriminator 1
	beq	a5,zero,.L4
	.loc 1 42 96 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L5
.L4:
	.loc 1 42 125 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L5:
	.loc 1 42 16 discriminator 7
	lw	a5,-48(s0)
	lw	a5,0(a5)
	li	a4,42
	lui	a3,%hi(.LC0)
	addi	a3,a3,%lo(.LC0)
	lui	a2,%hi(.LC1)
	addi	a2,a2,%lo(.LC1)
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
	.loc 1 43 9
	j	.L1
.L2:
	.loc 1 45 19
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 1 45 10
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	sw	a0,-20(s0)
.LBB8:
.LBB9:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE9:
.LBE8:
	.loc 1 46 12 discriminator 1
	beq	a5,zero,.L8
	.loc 1 46 98 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L9
.L8:
	.loc 1 46 127 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L9:
	.loc 1 46 12 discriminator 7
	lw	a5,-20(s0)
	li	a4,46
	lui	a3,%hi(.LC0)
	addi	a3,a3,%lo(.LC0)
	lui	a2,%hi(.LC1)
	addi	a2,a2,%lo(.LC1)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	bl_printk
	.loc 1 47 8
	lw	a5,-20(s0)
	ble	a5,zero,.L11
	.loc 1 50 5
	lw	a0,-20(s0)
	call	bl_wdt_init
	j	.L1
.L11:
	.loc 1 48 9
	nop
.L1:
	.loc 1 51 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	cmd_wdt_init, .-cmd_wdt_init
	.section	.text.cmd_wdt_feed,"ax",@progbits
	.align	1
	.type	cmd_wdt_feed, @function
cmd_wdt_feed:
.LFB6:
	.loc 1 54 1
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
	sw	a3,-32(s0)
	.loc 1 55 5
	call	bl_wdt_feed
	.loc 1 56 1
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
.LFE6:
	.size	cmd_wdt_feed, .-cmd_wdt_feed
	.section	.text.cmd_wdt_disable,"ax",@progbits
	.align	1
	.type	cmd_wdt_disable, @function
cmd_wdt_disable:
.LFB7:
	.loc 1 59 1
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
	sw	a3,-32(s0)
	.loc 1 60 5
	call	bl_wdt_disable
	.loc 1 61 1
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
.LFE7:
	.size	cmd_wdt_disable, .-cmd_wdt_disable
	.section	.text.cmd_timer_start,"ax",@progbits
	.align	1
	.type	cmd_timer_start, @function
cmd_timer_start:
.LFB8:
	.loc 1 64 1
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
	sw	a3,-32(s0)
	.loc 1 66 5
	call	bl_timer_tick_enable
	.loc 1 67 1
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
	.size	cmd_timer_start, .-cmd_timer_start
	.section	.rodata
	.align	2
.LC4:
	.string	"wdt-init"
	.align	2
.LC5:
	.string	"wdt-init ms"
	.align	2
.LC6:
	.string	"wdt-feed"
	.align	2
.LC7:
	.string	"wdt-disable"
	.align	2
.LC8:
	.string	"timer-start"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 48
cmds_user:
	.word	.LC4
	.word	.LC5
	.word	cmd_wdt_init
	.word	.LC6
	.word	.LC6
	.word	cmd_wdt_feed
	.word	.LC7
	.word	.LC7
	.word	cmd_wdt_disable
	.word	.LC8
	.word	.LC8
	.word	cmd_timer_start
	.section	.text.bl_wdt_cli_init,"ax",@progbits
	.align	1
	.globl	bl_wdt_cli_init
	.type	bl_wdt_cli_init, @function
bl_wdt_cli_init:
.LFB9:
	.loc 1 77 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 82 12
	li	a5,0
	.loc 1 83 1
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
.LFE9:
	.size	bl_wdt_cli_init, .-bl_wdt_cli_init
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/stage/cli/cli/include/cli.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_wdt.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x33f
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xf
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
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
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
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x8
	.4byte	0x7d
	.uleb128 0x5
	.4byte	0x84
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0xc
	.byte	0x3
	.byte	0x4c
	.byte	0x8
	.4byte	0xc0
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x4d
	.byte	0x11
	.4byte	0x89
	.byte	0
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x4e
	.byte	0x11
	.4byte	0x89
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x50
	.byte	0xc
	.4byte	0xe4
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x8e
	.uleb128 0x12
	.4byte	0xdf
	.uleb128 0x4
	.4byte	0x78
	.uleb128 0x4
	.4byte	0x32
	.uleb128 0x4
	.4byte	0x32
	.uleb128 0x4
	.4byte	0xdf
	.byte	0
	.uleb128 0x5
	.4byte	0x78
	.uleb128 0x5
	.4byte	0xc5
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x63
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0xe9
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0xf5
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x2
	.byte	0x5c
	.byte	0x13
	.4byte	0x101
	.uleb128 0x14
	.4byte	0xc0
	.4byte	0x135
	.uleb128 0x15
	.4byte	0x2b
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x125
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0x45
	.byte	0x21
	.4byte	0x135
	.uleb128 0x5
	.byte	0x3
	.4byte	cmds_user
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x41
	.4byte	0x32
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x22
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x21
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x5
	.byte	0x20
	.4byte	0x32
	.4byte	0x177
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0x51
	.4byte	0x32
	.4byte	0x18c
	.uleb128 0x4
	.4byte	0x89
	.byte	0
	.uleb128 0x17
	.4byte	.LASF37
	.byte	0x8
	.byte	0x9e
	.byte	0x6
	.4byte	0x19f
	.uleb128 0x4
	.4byte	0x89
	.uleb128 0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF25
	.2byte	0x54c
	.4byte	0x10d
	.uleb128 0xd
	.4byte	.LASF26
	.2byte	0x55d
	.4byte	0x10d
	.uleb128 0x19
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4c
	.byte	0x5
	.4byte	0x32
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x3f
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x222
	.uleb128 0x2
	.string	"buf"
	.byte	0x3f
	.byte	0x33
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.byte	0x3f
	.byte	0x4c
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x3f
	.byte	0x65
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x3f
	.byte	0x82
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x41
	.4byte	0x32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x3a
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26f
	.uleb128 0x2
	.string	"buf"
	.byte	0x3a
	.byte	0x33
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.byte	0x3a
	.byte	0x4c
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x3a
	.byte	0x65
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x3a
	.byte	0x82
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x35
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2bc
	.uleb128 0x2
	.string	"buf"
	.byte	0x35
	.byte	0x30
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.byte	0x35
	.byte	0x49
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x35
	.byte	0x62
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x35
	.byte	0x7f
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x25
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x335
	.uleb128 0x2
	.string	"buf"
	.byte	0x25
	.byte	0x30
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"len"
	.byte	0x25
	.byte	0x49
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x25
	.byte	0x52
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x25
	.byte	0x5f
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.string	"ms"
	.byte	0x1
	.byte	0x27
	.byte	0x9
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	0x335
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x2a
	.byte	0x45
	.uleb128 0xe
	.4byte	0x335
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x2e
	.byte	0x47
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF39
	.byte	0x2
	.byte	0xb3
	.byte	0x3a
	.4byte	0x101
	.byte	0x3
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.sleb128 5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
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
	.sleb128 5
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
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0x7
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0x7
	.4byte	.LFB7
	.uleb128 .LFE7-.LFB7
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
.LASF19:
	.string	"TickType_t"
.LASF30:
	.string	"cmd_wdt_disable"
.LASF13:
	.string	"name"
.LASF16:
	.string	"int32_t"
.LASF23:
	.string	"atoi"
.LASF6:
	.string	"unsigned char"
.LASF37:
	.string	"bl_printk"
.LASF31:
	.string	"cmd_wdt_feed"
.LASF32:
	.string	"cmd_wdt_init"
.LASF8:
	.string	"short unsigned int"
.LASF14:
	.string	"help"
.LASF36:
	.string	"TrapNetCounter"
.LASF35:
	.string	"cli_command"
.LASF10:
	.string	"long unsigned int"
.LASF24:
	.string	"bl_timer_tick_enable"
.LASF38:
	.string	"bl_wdt_cli_init"
.LASF29:
	.string	"cmd_timer_start"
.LASF2:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF39:
	.string	"xPortIsInsideInterrupt"
.LASF20:
	.string	"bl_wdt_disable"
.LASF15:
	.string	"function"
.LASF27:
	.string	"argc"
.LASF3:
	.string	"long long int"
.LASF33:
	.string	"cmds_user"
.LASF12:
	.string	"char"
.LASF26:
	.string	"xTaskGetTickCountFromISR"
.LASF25:
	.string	"xTaskGetTickCount"
.LASF22:
	.string	"bl_wdt_init"
.LASF21:
	.string	"bl_wdt_feed"
.LASF7:
	.string	"short int"
.LASF34:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF28:
	.string	"argv"
.LASF17:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF4:
	.string	"long double"
.LASF5:
	.string	"signed char"
.LASF18:
	.string	"BaseType_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_wdt_cli.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
