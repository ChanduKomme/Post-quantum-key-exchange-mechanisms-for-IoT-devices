	.file	"bl_sys_cli.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sys_cli.c"
	.section	.text.clk,"ax",@progbits
	.align	1
	.type	clk, @function
clk:
.LFB9:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sys_cli.c"
	.loc 1 44 1
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
	.loc 1 45 15
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 46 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 47 9
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	.loc 1 50 5
	call	vTaskEnterCritical
.LBB6:
.LBB7:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"
	.loc 2 94 3
 #APP
# 94 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrci mstatus, 8
# 0 "" 2
	.loc 2 95 1
 #NO_APP
	nop
.LBE7:
.LBE6:
	.loc 1 52 5
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	lw	a4,-28(s0)
	andi	a4,a4,0xff
	mv	a1,a4
	mv	a0,a5
	call	GLB_Set_System_CLK_Div
.LBB8:
.LBB9:
	.loc 2 89 3
 #APP
# 89 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrsi mstatus, 8
# 0 "" 2
	.loc 2 90 1
 #NO_APP
	nop
.LBE9:
.LBE8:
	.loc 1 54 5
	call	vTaskExitCritical
	.loc 1 55 5
	li	a0,0
	call	vTaskDelete
	.loc 1 56 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	clk, .-clk
	.section	.rodata
	.align	2
.LC0:
	.string	"clk"
	.section	.text.cmd_clk_change,"ax",@progbits
	.align	1
	.type	cmd_clk_change, @function
cmd_clk_change:
.LFB10:
	.loc 1 59 1
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
	.loc 1 61 8
	lw	a4,-44(s0)
	li	a5,3
	bne	a4,a5,.L5
	.loc 1 65 33
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 1 65 24
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	mv	a5,a0
	.loc 1 65 22 discriminator 1
	sw	a5,-24(s0)
	.loc 1 66 33
	lw	a5,-48(s0)
	addi	a5,a5,8
	.loc 1 66 24
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	mv	a5,a0
	.loc 1 66 22 discriminator 1
	sw	a5,-20(s0)
	.loc 1 67 9
	addi	a3,s0,-24
	li	a5,0
	li	a4,20
	li	a2,512
	lui	a1,%hi(.LC0)
	addi	a1,a1,%lo(.LC0)
	lui	a0,%hi(clk)
	addi	a0,a0,%lo(clk)
	call	xTaskCreate
	j	.L2
.L5:
	.loc 1 63 9 discriminator 1
	nop
.L2:
	.loc 1 69 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	cmd_clk_change, .-cmd_clk_change
	.section	.rodata
	.align	2
.LC1:
	.string	"change hdiv and bdiv"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 12
cmds_user:
	.word	.LC0
	.word	.LC1
	.word	cmd_clk_change
	.section	.text.bl_sys_cli_init,"ax",@progbits
	.align	1
	.globl	bl_sys_cli_init
	.type	bl_sys_cli_init, @function
bl_sys_cli_init:
.LFB11:
	.loc 1 76 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 81 12
	li	a5,0
	.loc 1 82 1
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
.LFE11:
	.size	bl_sys_cli_init, .-bl_sys_cli_init
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/stage/cli/cli/include/cli.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/projdefs.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x370
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x5
	.4byte	0x78
	.uleb128 0x4
	.4byte	0x84
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	0x84
	.uleb128 0x4
	.4byte	0x8b
	.uleb128 0x5
	.4byte	0x90
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0xc
	.byte	0x3
	.byte	0x4c
	.byte	0x8
	.4byte	0xcf
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x3
	.byte	0x4d
	.byte	0x11
	.4byte	0x90
	.byte	0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0x4e
	.byte	0x11
	.4byte	0x90
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x3
	.byte	0x50
	.byte	0xc
	.4byte	0xf3
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0x9a
	.uleb128 0xb
	.4byte	0xee
	.uleb128 0x1
	.4byte	0x7f
	.uleb128 0x1
	.4byte	0x32
	.uleb128 0x1
	.4byte	0x32
	.uleb128 0x1
	.4byte	0xee
	.byte	0
	.uleb128 0x4
	.4byte	0x7f
	.uleb128 0x4
	.4byte	0xd4
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x63
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x5c
	.uleb128 0x5
	.4byte	0x110
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x14
	.byte	0x7
	.byte	0x1
	.4byte	0x4e
	.byte	0x5
	.byte	0x17
	.byte	0x1
	.4byte	0x14e
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.4byte	0x12d
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x23
	.byte	0x10
	.4byte	0x166
	.uleb128 0x4
	.4byte	0x16b
	.uleb128 0xb
	.4byte	0x176
	.uleb128 0x1
	.4byte	0x78
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x3f
	.byte	0x11
	.4byte	0xf8
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x40
	.byte	0x12
	.4byte	0x121
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x8
	.byte	0x46
	.byte	0x25
	.4byte	0x19a
	.uleb128 0x4
	.4byte	0x19f
	.uleb128 0x15
	.4byte	.LASF47
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x8
	.byte	0x1
	.byte	0x26
	.byte	0x10
	.4byte	0x1cc
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.byte	0x27
	.byte	0x9
	.4byte	0x32
	.byte	0
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x1
	.byte	0x28
	.byte	0x9
	.4byte	0x32
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x1
	.byte	0x29
	.byte	0x3
	.4byte	0x1a4
	.uleb128 0x16
	.4byte	0xcf
	.4byte	0x1e8
	.uleb128 0x17
	.4byte	0x2b
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x1d8
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x47
	.byte	0x21
	.4byte	0x1e8
	.uleb128 0x5
	.byte	0x3
	.4byte	cmds_user
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x8
	.2byte	0x14a
	.4byte	0x176
	.4byte	0x22d
	.uleb128 0x1
	.4byte	0x15a
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x11c
	.uleb128 0x1
	.4byte	0x7a
	.uleb128 0x1
	.4byte	0x182
	.uleb128 0x1
	.4byte	0x232
	.byte	0
	.uleb128 0x4
	.4byte	0x18e
	.uleb128 0x5
	.4byte	0x22d
	.uleb128 0x18
	.4byte	.LASF34
	.byte	0x9
	.byte	0x51
	.byte	0x5
	.4byte	0x32
	.4byte	0x24d
	.uleb128 0x1
	.4byte	0x90
	.byte	0
	.uleb128 0x19
	.4byte	.LASF48
	.byte	0x8
	.2byte	0x2c2
	.byte	0x6
	.4byte	0x260
	.uleb128 0x1
	.4byte	0x18e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x67
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0xa
	.2byte	0x22b
	.4byte	0x14e
	.4byte	0x281
	.uleb128 0x1
	.4byte	0x104
	.uleb128 0x1
	.4byte	0x104
	.byte	0
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x66
	.uleb128 0x1a
	.4byte	.LASF49
	.byte	0x1
	.byte	0x4b
	.byte	0x5
	.4byte	0x32
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF42
	.byte	0x1
	.byte	0x3a
	.byte	0xd
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f8
	.uleb128 0xe
	.string	"buf"
	.byte	0x32
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"len"
	.byte	0x4b
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x3a
	.byte	0x54
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x3a
	.byte	0x61
	.4byte	0xee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x3c
	.byte	0xe
	.4byte	0x1cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.string	"clk"
	.byte	0x1
	.byte	0x2b
	.byte	0xd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x362
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x2b
	.byte	0x17
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.byte	0x2d
	.byte	0xf
	.4byte	0x362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x2e
	.byte	0x9
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x2f
	.byte	0x9
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.4byte	0x367
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x33
	.uleb128 0xf
	.4byte	0x36d
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x35
	.byte	0
	.uleb128 0x4
	.4byte	0x1cc
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x5c
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x57
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
	.uleb128 0x26
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
	.uleb128 0xb
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xf
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
	.uleb128 0x21
	.sleb128 5
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 55
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1d
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"TIMEOUT"
.LASF15:
	.string	"function"
.LASF36:
	.string	"vTaskExitCritical"
.LASF9:
	.string	"long int"
.LASF24:
	.string	"TaskFunction_t"
.LASF31:
	.string	"bdiv"
.LASF45:
	.string	"__enable_irq"
.LASF6:
	.string	"unsigned char"
.LASF20:
	.string	"SUCCESS"
.LASF10:
	.string	"long unsigned int"
.LASF8:
	.string	"short unsigned int"
.LASF19:
	.string	"uint32_t"
.LASF14:
	.string	"help"
.LASF39:
	.string	"argv"
.LASF28:
	.string	"cli_command"
.LASF37:
	.string	"vTaskEnterCritical"
.LASF30:
	.string	"hdiv"
.LASF47:
	.string	"tskTaskControlBlock"
.LASF2:
	.string	"unsigned int"
.LASF26:
	.string	"UBaseType_t"
.LASF17:
	.string	"uint8_t"
.LASF41:
	.string	"clk_div"
.LASF46:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF34:
	.string	"atoi"
.LASF11:
	.string	"long long unsigned int"
.LASF49:
	.string	"bl_sys_cli_init"
.LASF16:
	.string	"int32_t"
.LASF48:
	.string	"vTaskDelete"
.LASF35:
	.string	"GLB_Set_System_CLK_Div"
.LASF3:
	.string	"long long int"
.LASF32:
	.string	"para_div"
.LASF13:
	.string	"name"
.LASF42:
	.string	"cmd_clk_change"
.LASF43:
	.string	"para"
.LASF29:
	.string	"_para_div"
.LASF7:
	.string	"short int"
.LASF18:
	.string	"uint16_t"
.LASF38:
	.string	"argc"
.LASF33:
	.string	"xTaskCreate"
.LASF27:
	.string	"TaskHandle_t"
.LASF44:
	.string	"__disable_irq"
.LASF21:
	.string	"ERROR"
.LASF12:
	.string	"char"
.LASF4:
	.string	"long double"
.LASF5:
	.string	"signed char"
.LASF40:
	.string	"cmds_user"
.LASF25:
	.string	"BaseType_t"
.LASF23:
	.string	"BL_Err_Type"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sys_cli.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
