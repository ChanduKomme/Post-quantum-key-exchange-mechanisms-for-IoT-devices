	.file	"bl_gpio_cli.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_gpio_cli.c"
	.section	.text.cmd_gpio_func,"ax",@progbits
	.align	1
	.type	cmd_gpio_func, @function
cmd_gpio_func:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_gpio_cli.c"
	.loc 1 40 1
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
	.loc 1 41 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 41 21
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 41 37
	li	a5,-1
	sw	a5,-28(s0)
	.loc 1 41 50
	li	a5,-1
	sw	a5,-32(s0)
	.loc 1 43 8
	lw	a4,-44(s0)
	li	a5,5
	bne	a4,a5,.L7
	.loc 1 49 22
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 1 49 13
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	sw	a0,-20(s0)
	.loc 1 50 26
	lw	a5,-48(s0)
	addi	a5,a5,8
	.loc 1 50 17
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	sw	a0,-24(s0)
	.loc 1 51 23
	lw	a5,-48(s0)
	addi	a5,a5,12
	.loc 1 51 14
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	sw	a0,-28(s0)
	.loc 1 52 25
	lw	a5,-48(s0)
	addi	a5,a5,16
	.loc 1 52 16
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	sw	a0,-32(s0)
	.loc 1 53 8
	lw	a5,-20(s0)
	blt	a5,zero,.L8
	.loc 1 53 19 discriminator 1
	lw	a5,-24(s0)
	blt	a5,zero,.L8
	.loc 1 53 36 discriminator 2
	lw	a5,-28(s0)
	blt	a5,zero,.L8
	.loc 1 53 50 discriminator 3
	lw	a5,-32(s0)
	blt	a5,zero,.L8
	.loc 1 63 8
	lw	a5,-24(s0)
	beq	a5,zero,.L6
	.loc 1 64 9
	lw	a5,-20(s0)
	andi	a4,a5,0xff
	lw	a5,-28(s0)
	snez	a5,a5
	andi	a5,a5,0xff
	mv	a3,a5
	lw	a5,-32(s0)
	snez	a5,a5
	andi	a5,a5,0xff
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	bl_gpio_enable_input
	j	.L1
.L6:
	.loc 1 66 9
	lw	a5,-20(s0)
	andi	a4,a5,0xff
	lw	a5,-28(s0)
	snez	a5,a5
	andi	a5,a5,0xff
	mv	a3,a5
	lw	a5,-32(s0)
	snez	a5,a5
	andi	a5,a5,0xff
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	bl_gpio_enable_output
	j	.L1
.L7:
	.loc 1 47 9
	nop
	j	.L1
.L8:
	.loc 1 55 9
	nop
.L1:
	.loc 1 68 1
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
	.size	cmd_gpio_func, .-cmd_gpio_func
	.section	.text.cmd_gpio_set,"ax",@progbits
	.align	1
	.type	cmd_gpio_set, @function
cmd_gpio_set:
.LFB6:
	.loc 1 71 1
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
	.loc 1 72 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 72 21
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 74 8
	lw	a4,-44(s0)
	li	a5,3
	bne	a4,a5,.L14
	.loc 1 80 22
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 1 80 13
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	sw	a0,-20(s0)
	.loc 1 81 20
	lw	a5,-48(s0)
	addi	a5,a5,8
	.loc 1 81 11
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	sw	a0,-24(s0)
	.loc 1 82 8
	lw	a5,-20(s0)
	blt	a5,zero,.L15
	.loc 1 82 19 discriminator 1
	lw	a5,-24(s0)
	blt	a5,zero,.L15
	.loc 1 90 5
	lw	a5,-20(s0)
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	snez	a5,a5
	andi	a5,a5,0xff
	mv	a1,a5
	mv	a0,a4
	call	bl_gpio_output_set
	j	.L9
.L14:
	.loc 1 78 9
	nop
	j	.L9
.L15:
	.loc 1 84 9
	nop
.L9:
	.loc 1 91 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	cmd_gpio_set, .-cmd_gpio_set
	.section	.rodata
	.align	2
.LC0:
	.string	"Illegal arg\r\n"
	.section	.text.cmd_gpio_get,"ax",@progbits
	.align	1
	.type	cmd_gpio_get, @function
cmd_gpio_get:
.LFB7:
	.loc 1 94 1
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
	.loc 1 95 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 99 8
	lw	a4,-44(s0)
	li	a5,2
	bne	a4,a5,.L21
	.loc 1 105 22
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 1 105 13
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	sw	a0,-20(s0)
	.loc 1 106 8
	lw	a5,-20(s0)
	bge	a5,zero,.L19
	.loc 1 107 9
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	puts
	.loc 1 108 9
	j	.L16
.L19:
	.loc 1 110 11
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	addi	a4,s0,-25
	mv	a1,a4
	mv	a0,a5
	call	bl_gpio_input_get
	sw	a0,-24(s0)
	j	.L16
.L21:
	.loc 1 103 9
	nop
.L16:
	.loc 1 115 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	cmd_gpio_get, .-cmd_gpio_get
	.section	.rodata
	.align	2
.LC1:
	.string	"gpio-func"
	.align	2
.LC2:
	.string	"gpio-func pinnum 0/1[0:output, 1:input] 0/1[pullup] 0/1[pulldown]"
	.align	2
.LC3:
	.string	"gpio-set"
	.align	2
.LC4:
	.string	"gpio-set pinnum 0/1"
	.align	2
.LC5:
	.string	"gpio-get"
	.align	2
.LC6:
	.string	"gpio-get pinnum"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 36
cmds_user:
	.word	.LC1
	.word	.LC2
	.word	cmd_gpio_func
	.word	.LC3
	.word	.LC4
	.word	cmd_gpio_set
	.word	.LC5
	.word	.LC6
	.word	cmd_gpio_get
	.section	.text.bl_gpio_cli_init,"ax",@progbits
	.align	1
	.globl	bl_gpio_cli_init
	.type	bl_gpio_cli_init, @function
bl_gpio_cli_init:
.LFB8:
	.loc 1 125 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 130 12
	li	a5,0
	.loc 1 131 1
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
.LFE8:
	.size	bl_gpio_cli_init, .-bl_gpio_cli_init
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/stage/cli/cli/include/cli.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_gpio.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x332
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xc
	.4byte	.LASF31
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
	.uleb128 0xd
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
	.uleb128 0x7
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x8
	.4byte	0x7d
	.uleb128 0x7
	.4byte	0x84
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0xc
	.byte	0x2
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
	.uleb128 0xf
	.4byte	0xdf
	.uleb128 0x1
	.4byte	0x78
	.uleb128 0x1
	.4byte	0x32
	.uleb128 0x1
	.4byte	0x32
	.uleb128 0x1
	.4byte	0xdf
	.byte	0
	.uleb128 0x7
	.4byte	0x78
	.uleb128 0x7
	.4byte	0xc5
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x4e
	.uleb128 0x7
	.4byte	0xe9
	.uleb128 0x11
	.4byte	0xc0
	.4byte	0x10a
	.uleb128 0x12
	.4byte	0x2b
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0xfa
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x76
	.byte	0x21
	.4byte	0x10a
	.uleb128 0x5
	.byte	0x3
	.4byte	cmds_user
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2f
	.4byte	0x32
	.4byte	0x13a
	.uleb128 0x1
	.4byte	0xe9
	.uleb128 0x1
	.4byte	0xf5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0xe3
	.4byte	0x32
	.4byte	0x14f
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2e
	.4byte	0x32
	.4byte	0x169
	.uleb128 0x1
	.4byte	0xe9
	.uleb128 0x1
	.4byte	0xe9
	.byte	0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x2c
	.4byte	0x32
	.4byte	0x188
	.uleb128 0x1
	.4byte	0xe9
	.uleb128 0x1
	.4byte	0xe9
	.uleb128 0x1
	.4byte	0xe9
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x2d
	.4byte	0x32
	.4byte	0x1a7
	.uleb128 0x1
	.4byte	0xe9
	.uleb128 0x1
	.4byte	0xe9
	.uleb128 0x1
	.4byte	0xe9
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x51
	.4byte	0x32
	.4byte	0x1bc
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0x7c
	.byte	0x5
	.4byte	0x32
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x5d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x249
	.uleb128 0x5
	.string	"buf"
	.byte	0x5d
	.byte	0x30
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"len"
	.byte	0x5d
	.byte	0x49
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x5d
	.byte	0x52
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x5d
	.byte	0x5f
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5f
	.byte	0x9
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"ret"
	.byte	0x5f
	.byte	0x15
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"val"
	.byte	0x60
	.byte	0xd
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x46
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b2
	.uleb128 0x5
	.string	"buf"
	.byte	0x46
	.byte	0x30
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"len"
	.byte	0x46
	.byte	0x49
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x46
	.byte	0x52
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x46
	.byte	0x5f
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x48
	.byte	0x9
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"val"
	.byte	0x48
	.byte	0x15
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0x27
	.byte	0xd
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.string	"buf"
	.byte	0x27
	.byte	0x31
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"len"
	.byte	0x27
	.byte	0x4a
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x27
	.byte	0x53
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x27
	.byte	0x60
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x29
	.byte	0x9
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x29
	.byte	0x15
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x29
	.byte	0x25
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x29
	.byte	0x32
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
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
	.sleb128 2
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
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.4byte	0x34
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"pullup"
.LASF16:
	.string	"bl_gpio_input_get"
.LASF35:
	.string	"cmd_gpio_func"
.LASF26:
	.string	"cmd_gpio_get"
.LASF27:
	.string	"cmd_gpio_set"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"long unsigned int"
.LASF8:
	.string	"short unsigned int"
.LASF14:
	.string	"help"
.LASF32:
	.string	"cli_command"
.LASF4:
	.string	"long double"
.LASF30:
	.string	"pulldown"
.LASF18:
	.string	"bl_gpio_output_set"
.LASF19:
	.string	"bl_gpio_enable_output"
.LASF2:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF33:
	.string	"uint8_t"
.LASF21:
	.string	"atoi"
.LASF15:
	.string	"function"
.LASF22:
	.string	"argc"
.LASF3:
	.string	"long long int"
.LASF24:
	.string	"cmds_user"
.LASF12:
	.string	"char"
.LASF34:
	.string	"bl_gpio_cli_init"
.LASF25:
	.string	"ionum"
.LASF7:
	.string	"short int"
.LASF31:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF23:
	.string	"argv"
.LASF9:
	.string	"long int"
.LASF17:
	.string	"puts"
.LASF20:
	.string	"bl_gpio_enable_input"
.LASF5:
	.string	"signed char"
.LASF13:
	.string	"name"
.LASF28:
	.string	"inputmode"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_gpio_cli.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
