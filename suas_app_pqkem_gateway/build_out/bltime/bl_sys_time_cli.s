	.file	"bl_sys_time_cli.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bltime" "/home/chandu/sdk/bl602_iot_sdk/components/sys/bltime/bl_sys_time_cli.c"
	.section	.rodata
	.align	2
.LC0:
	.string	"BL SYS TIME time is\r\n"
	.section	.text.cmd_sys_time_now,"ax",@progbits
	.align	1
	.type	cmd_sys_time_now, @function
cmd_sys_time_now:
.LFB9:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bltime/bl_sys_time_cli.c"
	.loc 1 38 1
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
	.loc 1 39 14
	li	a5,0
	li	a6,0
	sw	a5,-32(s0)
	sw	a6,-28(s0)
	.loc 1 43 5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	puts
	.loc 1 44 5
	addi	a5,s0,-32
	mv	a0,a5
	call	bl_sys_time_get
	.loc 1 45 24
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	li	a2,1000
	li	a3,0
	mv	a0,a4
	mv	a1,a5
	call	__udivdi3
	mv	a4,a0
	mv	a5,a1
	.loc 1 45 13
	sw	a4,-20(s0)
	.loc 1 46 5
	addi	a5,s0,-52
	mv	a1,a5
	lw	a0,-20(s0)
	call	utils_time_date_from_epoch
	.loc 1 57 1
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
.LFE9:
	.size	cmd_sys_time_now, .-cmd_sys_time_now
	.section	.rodata
	.align	2
.LC1:
	.string	"bl_sys_time_now"
	.align	2
.LC2:
	.string	"sys time now"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 12
cmds_user:
	.word	.LC1
	.word	.LC2
	.word	cmd_sys_time_now
	.section	.text.bl_sys_time_cli_init,"ax",@progbits
	.align	1
	.globl	bl_sys_time_cli_init
	.type	bl_sys_time_cli_init, @function
bl_sys_time_cli_init:
.LFB10:
	.loc 1 65 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 70 12
	li	a5,0
	.loc 1 71 1
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
.LFE10:
	.size	bl_sys_time_cli_init, .-bl_sys_time_cli_init
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/stage/cli/cli/include/cli.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_time.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bltime/include/bl_sys_time.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2a5
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	0x7d
	.uleb128 0x4
	.4byte	0x84
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x5c
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0xc
	.byte	0x3
	.byte	0x4c
	.byte	0x8
	.4byte	0xdb
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x3
	.byte	0x4d
	.byte	0x11
	.4byte	0x89
	.byte	0
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x3
	.byte	0x4e
	.byte	0x11
	.4byte	0x89
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x3
	.byte	0x50
	.byte	0xc
	.4byte	0xff
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	0xa6
	.uleb128 0xe
	.4byte	0xfa
	.uleb128 0x3
	.4byte	0x78
	.uleb128 0x3
	.4byte	0x63
	.uleb128 0x3
	.4byte	0x63
	.uleb128 0x3
	.4byte	0xfa
	.byte	0
	.uleb128 0x4
	.4byte	0x78
	.uleb128 0x4
	.4byte	0xe0
	.uleb128 0xf
	.byte	0x14
	.byte	0x4
	.byte	0x20
	.byte	0x9
	.4byte	0x19d
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x4
	.byte	0x21
	.byte	0x13
	.4byte	0x32
	.byte	0
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x4
	.byte	0x22
	.byte	0x13
	.4byte	0x32
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x4
	.byte	0x23
	.byte	0x13
	.4byte	0x32
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x4
	.byte	0x24
	.byte	0x13
	.4byte	0x32
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x4
	.byte	0x25
	.byte	0x13
	.4byte	0x32
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x4
	.byte	0x26
	.byte	0x13
	.4byte	0x32
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x4
	.byte	0x27
	.byte	0x13
	.4byte	0x32
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x4
	.byte	0x28
	.byte	0x13
	.4byte	0x32
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x4
	.byte	0x29
	.byte	0x12
	.4byte	0x6a
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x4
	.byte	0x2a
	.byte	0x12
	.4byte	0x6a
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x4
	.byte	0x2b
	.byte	0x12
	.4byte	0x6a
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x4
	.byte	0x2c
	.byte	0x3
	.4byte	0x104
	.uleb128 0x10
	.4byte	0xdb
	.4byte	0x1b9
	.uleb128 0x11
	.4byte	0x6a
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x1a9
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x3c
	.byte	0x21
	.4byte	0x1b9
	.uleb128 0x5
	.byte	0x3
	.4byte	cmds_user
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x4
	.byte	0x2e
	.4byte	0x63
	.4byte	0x1e9
	.uleb128 0x3
	.4byte	0x6a
	.uleb128 0x3
	.4byte	0x1e9
	.byte	0
	.uleb128 0x4
	.4byte	0x19d
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x5
	.byte	0x25
	.4byte	0x63
	.4byte	0x203
	.uleb128 0x3
	.4byte	0x203
	.byte	0
	.uleb128 0x4
	.4byte	0x9a
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x6
	.byte	0xe3
	.4byte	0x63
	.4byte	0x21d
	.uleb128 0x3
	.4byte	0x89
	.byte	0
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x1
	.byte	0x40
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x25
	.byte	0xd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.string	"buf"
	.byte	0x34
	.4byte	0x78
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x9
	.string	"len"
	.byte	0x4d
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x66
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x83
	.4byte	0xfa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.4byte	.LASF36
	.byte	0x27
	.byte	0xe
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF37
	.byte	0x28
	.byte	0xe
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF38
	.byte	0x29
	.byte	0x17
	.4byte	0x19d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 37
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 37
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x13
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
.LASF41:
	.string	"bl_sys_time_cli_init"
.LASF34:
	.string	"argv"
.LASF14:
	.string	"uint64_t"
.LASF38:
	.string	"date"
.LASF9:
	.string	"long long unsigned int"
.LASF26:
	.string	"ntp_year"
.LASF3:
	.string	"unsigned char"
.LASF31:
	.string	"bl_sys_time_get"
.LASF19:
	.string	"ntp_minute"
.LASF7:
	.string	"long unsigned int"
.LASF22:
	.string	"ntp_date"
.LASF5:
	.string	"short unsigned int"
.LASF16:
	.string	"help"
.LASF40:
	.string	"cli_command"
.LASF42:
	.string	"cmd_sys_time_now"
.LASF29:
	.string	"utils_time_date_t"
.LASF24:
	.string	"leap_days"
.LASF30:
	.string	"utils_time_date_from_epoch"
.LASF10:
	.string	"unsigned int"
.LASF12:
	.string	"char"
.LASF27:
	.string	"days_since_epoch"
.LASF20:
	.string	"ntp_second"
.LASF23:
	.string	"ntp_month"
.LASF11:
	.string	"long double"
.LASF18:
	.string	"ntp_hour"
.LASF8:
	.string	"long long int"
.LASF35:
	.string	"cmds_user"
.LASF37:
	.string	"seconds"
.LASF15:
	.string	"name"
.LASF25:
	.string	"leap_year_ind"
.LASF4:
	.string	"short int"
.LASF39:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF33:
	.string	"argc"
.LASF28:
	.string	"day_of_year"
.LASF13:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF32:
	.string	"puts"
.LASF2:
	.string	"signed char"
.LASF21:
	.string	"ntp_week_day"
.LASF17:
	.string	"function"
.LASF36:
	.string	"epoch_ms"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bltime/bl_sys_time_cli.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bltime"
	.globl	__udivdi3
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
