	.file	"loopset_led_cli.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/loopset" "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src/loopset_led_cli.c"
	.section	.rodata
	.align	2
.LC0:
	.string	"Usage: %s pin 0/1[0:Lo Active, 1:Hi Active] 0/1[0:Hearbeat, 1:Blink]\r\n"
	.align	2
.LC1:
	.string	"Illegal Params\r\n"
	.section	.text.cmd_loopset_led_trigger,"ax",@progbits
	.align	1
	.globl	cmd_loopset_led_trigger
	.type	cmd_loopset_led_trigger, @function
cmd_loopset_led_trigger:
.LFB3:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src/loopset_led_cli.c"
	.loc 1 37 1
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
	.loc 1 38 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 38 19
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 38 32
	li	a5,-1
	sw	a5,-28(s0)
	.loc 1 39 8
	lw	a4,-44(s0)
	li	a5,4
	beq	a4,a5,.L2
	.loc 1 40 9
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 43 9
	j	.L1
.L2:
	.loc 1 45 20
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 1 45 11
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	sw	a0,-20(s0)
	.loc 1 46 23
	lw	a5,-48(s0)
	addi	a5,a5,8
	.loc 1 46 14
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	sw	a0,-24(s0)
	.loc 1 47 21
	lw	a5,-48(s0)
	addi	a5,a5,12
	.loc 1 47 12
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	sw	a0,-28(s0)
	.loc 1 48 8
	lw	a5,-20(s0)
	ble	a5,zero,.L4
	.loc 1 48 18 discriminator 1
	lw	a5,-24(s0)
	blt	a5,zero,.L4
	.loc 1 48 32 discriminator 2
	lw	a5,-28(s0)
	bge	a5,zero,.L5
.L4:
	.loc 1 49 9
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	puts
	.loc 1 50 9
	j	.L1
.L5:
	.loc 1 52 5
	li	a1,100
	lw	a0,-20(s0)
	call	loopset_led_trigger
.L1:
	.loc 1 53 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	cmd_loopset_led_trigger, .-cmd_loopset_led_trigger
	.section	.rodata
	.align	2
.LC2:
	.string	"loopset-led-trigger"
	.align	2
.LC3:
	.string	"Trigger LED on PIN"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 12
cmds_user:
	.word	.LC2
	.word	.LC3
	.word	cmd_loopset_led_trigger
	.section	.text.loopset_led_cli_init,"ax",@progbits
	.align	1
	.globl	loopset_led_cli_init
	.type	loopset_led_cli_init, @function
loopset_led_cli_init:
.LFB4:
	.loc 1 61 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 66 12
	li	a5,0
	.loc 1 67 1
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
.LFE4:
	.size	loopset_led_cli_init, .-loopset_led_cli_init
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/stage/cli/cli/include/cli.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/include/loopset.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1f0
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xa
	.4byte	.LASF24
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
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xb
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
	.uleb128 0x3
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	0x7d
	.uleb128 0x3
	.4byte	0x84
	.uleb128 0xc
	.4byte	0x89
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0xc
	.byte	0x2
	.byte	0x4c
	.byte	0x8
	.4byte	0xc5
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x4d
	.byte	0x11
	.4byte	0x89
	.byte	0
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x4e
	.byte	0x11
	.4byte	0x89
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x50
	.byte	0xc
	.4byte	0xe9
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x93
	.uleb128 0xe
	.4byte	0xe4
	.uleb128 0x2
	.4byte	0x78
	.uleb128 0x2
	.4byte	0x63
	.uleb128 0x2
	.4byte	0x63
	.uleb128 0x2
	.4byte	0xe4
	.byte	0
	.uleb128 0x3
	.4byte	0x78
	.uleb128 0x3
	.4byte	0xca
	.uleb128 0xf
	.4byte	0xc5
	.4byte	0xfe
	.uleb128 0x10
	.4byte	0x6a
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0xee
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x38
	.byte	0x21
	.4byte	0xfe
	.uleb128 0x5
	.byte	0x3
	.4byte	cmds_user
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x5
	.byte	0x25
	.byte	0x6
	.4byte	0x12b
	.uleb128 0x2
	.4byte	0x63
	.uleb128 0x2
	.4byte	0x6a
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0xe3
	.4byte	0x63
	.4byte	0x140
	.uleb128 0x2
	.4byte	0x89
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x51
	.4byte	0x63
	.4byte	0x155
	.uleb128 0x2
	.4byte	0x89
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x3
	.byte	0xce
	.4byte	0x63
	.4byte	0x16b
	.uleb128 0x2
	.4byte	0x8e
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3c
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF28
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.string	"buf"
	.byte	0x34
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"len"
	.byte	0x4d
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x56
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x63
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"pin"
	.byte	0x1
	.byte	0x26
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x26
	.byte	0x13
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x26
	.byte	0x20
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 36
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x21
	.sleb128 36
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x15
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
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
.LASF22:
	.string	"active"
.LASF20:
	.string	"argv"
.LASF26:
	.string	"loopset_led_trigger"
.LASF3:
	.string	"unsigned char"
.LASF7:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF14:
	.string	"help"
.LASF25:
	.string	"cli_command"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF28:
	.string	"cmd_loopset_led_trigger"
.LASF17:
	.string	"atoi"
.LASF11:
	.string	"long double"
.LASF8:
	.string	"long long int"
.LASF21:
	.string	"cmds_user"
.LASF13:
	.string	"name"
.LASF18:
	.string	"printf"
.LASF23:
	.string	"type"
.LASF4:
	.string	"short int"
.LASF24:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF19:
	.string	"argc"
.LASF6:
	.string	"long int"
.LASF12:
	.string	"char"
.LASF16:
	.string	"puts"
.LASF2:
	.string	"signed char"
.LASF27:
	.string	"loopset_led_cli_init"
.LASF15:
	.string	"function"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/loopset"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src/loopset_led_cli.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
