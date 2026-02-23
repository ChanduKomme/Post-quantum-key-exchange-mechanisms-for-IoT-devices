	.file	"looprt_test_cli.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/looprt" "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/looprt/src/looprt_test_cli.c"
	.section	.rodata
	.align	2
.LC0:
	.string	"struct loop_ctx size is %d\r\n"
	.align	2
.LC1:
	.string	"MSG size is %d\r\n"
	.section	.text.looprt_case_1,"ax",@progbits
	.align	1
	.type	looprt_case_1, @function
looprt_case_1:
.LFB22:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/looprt/src/looprt_test_cli.c"
	.loc 1 37 1
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
	li	a1,1184
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 39 5
	li	a1,24
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	.loc 1 40 1
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
.LFE22:
	.size	looprt_case_1, .-looprt_case_1
	.section	.rodata
	.align	2
.LC2:
	.string	"====== looprt test ======\r\n"
	.section	.text.cmd_looprt_test,"ax",@progbits
	.align	1
	.globl	cmd_looprt_test
	.type	cmd_looprt_test, @function
cmd_looprt_test:
.LFB23:
	.loc 1 43 1
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
	.loc 1 44 5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	puts
	.loc 1 45 5
	call	looprt_case_1
	.loc 1 47 5
	call	looprt_start_auto
	.loc 1 48 1
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
.LFE23:
	.size	cmd_looprt_test, .-cmd_looprt_test
	.section	.rodata
	.align	2
.LC3:
	.string	"====== looprt test status ======\r\n"
	.section	.text.cmd_looprt_test_status,"ax",@progbits
	.align	1
	.globl	cmd_looprt_test_status
	.type	cmd_looprt_test_status, @function
cmd_looprt_test_status:
.LFB24:
	.loc 1 51 1
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
	.loc 1 52 5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	puts
	.loc 1 53 5
	call	looprt_evt_status_dump
	.loc 1 54 1
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
.LFE24:
	.size	cmd_looprt_test_status, .-cmd_looprt_test_status
	.section	.rodata
	.align	2
.LC4:
	.string	"====== looprt EVT ======\r\n"
	.section	.text.cmd_looprt_test_evt,"ax",@progbits
	.align	1
	.globl	cmd_looprt_test_evt
	.type	cmd_looprt_test_evt, @function
cmd_looprt_test_evt:
.LFB25:
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
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	.loc 1 58 5
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	puts
	.loc 1 59 5
	li	a1,0
	li	a0,31
	call	looprt_evt_notify_async
	.loc 1 60 1
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
.LFE25:
	.size	cmd_looprt_test_evt, .-cmd_looprt_test_evt
	.section	.rodata
	.align	2
.LC5:
	.string	"====== looprt EVT status ======\r\n"
	.section	.text.cmd_looprt_test_evt_dump,"ax",@progbits
	.align	1
	.globl	cmd_looprt_test_evt_dump
	.type	cmd_looprt_test_evt_dump, @function
cmd_looprt_test_evt_dump:
.LFB26:
	.loc 1 63 1
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
	.loc 1 64 5
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	puts
	.loc 1 65 5
	li	a1,1
	li	a0,31
	call	looprt_evt_notify_async
	.loc 1 66 1
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
.LFE26:
	.size	cmd_looprt_test_evt_dump, .-cmd_looprt_test_evt_dump
	.section	.rodata
	.align	2
.LC6:
	.string	"====== looprt Schedule EVT1 ======\r\n"
	.section	.text.cmd_looprt_test_schedule_evt1,"ax",@progbits
	.align	1
	.globl	cmd_looprt_test_schedule_evt1
	.type	cmd_looprt_test_schedule_evt1, @function
cmd_looprt_test_schedule_evt1:
.LFB27:
	.loc 1 69 1
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
	.loc 1 70 5
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	puts
	.loc 1 71 5
	li	a5,20480
	addi	a2,a5,-480
	li	a1,1
	li	a0,31
	call	looprt_evt_schedule
	.loc 1 72 1
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
.LFE27:
	.size	cmd_looprt_test_schedule_evt1, .-cmd_looprt_test_schedule_evt1
	.section	.rodata
	.align	2
.LC7:
	.string	"====== looprt Schedule EVT2 ======\r\n"
	.section	.text.cmd_looprt_test_schedule_evt2,"ax",@progbits
	.align	1
	.globl	cmd_looprt_test_schedule_evt2
	.type	cmd_looprt_test_schedule_evt2, @function
cmd_looprt_test_schedule_evt2:
.LFB28:
	.loc 1 75 1
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
	.loc 1 76 5
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	puts
	.loc 1 77 5
	li	a5,8192
	addi	a2,a5,1808
	li	a1,1
	li	a0,31
	call	looprt_evt_schedule
	.loc 1 78 1
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
.LFE28:
	.size	cmd_looprt_test_schedule_evt2, .-cmd_looprt_test_schedule_evt2
	.section	.rodata
	.align	2
.LC8:
	.string	"looprt"
	.align	2
.LC9:
	.string	"looprt based on bloop"
	.align	2
.LC10:
	.string	"looprt_status"
	.align	2
.LC11:
	.string	"looprt_evt"
	.align	2
.LC12:
	.string	"looprt notify event"
	.align	2
.LC13:
	.string	"looprt_evt_status"
	.align	2
.LC14:
	.string	"looprt evt to dump"
	.align	2
.LC15:
	.string	"looprt_schedule1"
	.align	2
.LC16:
	.string	"looprt schedule evt 20s"
	.align	2
.LC17:
	.string	"looprt_schedule2"
	.align	2
.LC18:
	.string	"looprt schedule evt 10s"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 72
cmds_user:
	.word	.LC8
	.word	.LC9
	.word	cmd_looprt_test
	.word	.LC10
	.word	.LC9
	.word	cmd_looprt_test_status
	.word	.LC11
	.word	.LC12
	.word	cmd_looprt_test_evt
	.word	.LC13
	.word	.LC14
	.word	cmd_looprt_test_evt_dump
	.word	.LC15
	.word	.LC16
	.word	cmd_looprt_test_schedule_evt1
	.word	.LC17
	.word	.LC18
	.word	cmd_looprt_test_schedule_evt2
	.section	.text.looprt_test_cli_init,"ax",@progbits
	.align	1
	.globl	looprt_test_cli_init
	.type	looprt_test_cli_init, @function
looprt_test_cli_init:
.LFB29:
	.loc 1 91 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 96 12
	li	a5,0
	.loc 1 97 1
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
.LFE29:
	.size	looprt_test_cli_init, .-looprt_test_cli_init
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/stage/cli/cli/include/cli.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/looprt/include/looprt.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x380
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x6
	.4byte	0x7d
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x7
	.4byte	0x7d
	.uleb128 0x6
	.4byte	0x84
	.uleb128 0xd
	.4byte	0x89
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0xc
	.byte	0x2
	.byte	0x4c
	.byte	0x8
	.4byte	0xc5
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x4d
	.byte	0x11
	.4byte	0x89
	.byte	0
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4e
	.byte	0x11
	.4byte	0x89
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x50
	.byte	0xc
	.4byte	0xe9
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	0x93
	.uleb128 0xf
	.4byte	0xe4
	.uleb128 0x4
	.4byte	0x78
	.uleb128 0x4
	.4byte	0x63
	.uleb128 0x4
	.4byte	0x63
	.uleb128 0x4
	.4byte	0xe4
	.byte	0
	.uleb128 0x6
	.4byte	0x78
	.uleb128 0x6
	.4byte	0xca
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0x11
	.4byte	0xc5
	.4byte	0x10a
	.uleb128 0x12
	.4byte	0x6a
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.4byte	0xfa
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x1
	.byte	0x51
	.byte	0x21
	.4byte	0x10a
	.uleb128 0x5
	.byte	0x3
	.4byte	cmds_user
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x29
	.4byte	0x13b
	.uleb128 0x4
	.4byte	0x63
	.uleb128 0x4
	.4byte	0xee
	.uleb128 0x4
	.4byte	0x63
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x27
	.4byte	0x150
	.uleb128 0x4
	.4byte	0x6a
	.uleb128 0x4
	.4byte	0xee
	.byte	0
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x3
	.byte	0x26
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF33
	.byte	0x3
	.byte	0x25
	.byte	0x5
	.4byte	0x63
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0xe3
	.4byte	0x63
	.4byte	0x178
	.uleb128 0x4
	.4byte	0x89
	.byte	0
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0xce
	.4byte	0x63
	.4byte	0x18d
	.uleb128 0x4
	.4byte	0x8e
	.uleb128 0x16
	.byte	0
	.uleb128 0x17
	.4byte	.LASF34
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x4a
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f0
	.uleb128 0x1
	.string	"buf"
	.byte	0x4a
	.byte	0x3a
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"len"
	.byte	0x4a
	.byte	0x53
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x4a
	.byte	0x6c
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4a
	.byte	0x89
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x44
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23d
	.uleb128 0x1
	.string	"buf"
	.byte	0x44
	.byte	0x3a
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"len"
	.byte	0x44
	.byte	0x53
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x44
	.byte	0x6c
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x44
	.byte	0x89
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x3e
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28a
	.uleb128 0x1
	.string	"buf"
	.byte	0x3e
	.byte	0x35
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"len"
	.byte	0x3e
	.byte	0x4e
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x3e
	.byte	0x67
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x3e
	.byte	0x84
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x38
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d7
	.uleb128 0x1
	.string	"buf"
	.byte	0x38
	.byte	0x30
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"len"
	.byte	0x38
	.byte	0x49
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x38
	.byte	0x62
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x38
	.byte	0x7f
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x32
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x324
	.uleb128 0x1
	.string	"buf"
	.byte	0x32
	.byte	0x33
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"len"
	.byte	0x32
	.byte	0x4c
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x32
	.byte	0x65
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x32
	.byte	0x82
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x2a
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x371
	.uleb128 0x1
	.string	"buf"
	.byte	0x2a
	.byte	0x2c
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"len"
	.byte	0x2a
	.byte	0x45
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x2a
	.byte	0x5e
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x2a
	.byte	0x7b
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x18
	.4byte	.LASF35
	.byte	0x1
	.byte	0x24
	.byte	0xd
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0xa
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
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
	.4byte	.LFB22
	.uleb128 .LFE22-.LFB22
	.byte	0x7
	.4byte	.LFB23
	.uleb128 .LFE23-.LFB23
	.byte	0x7
	.4byte	.LFB24
	.uleb128 .LFE24-.LFB24
	.byte	0x7
	.4byte	.LFB25
	.uleb128 .LFE25-.LFB25
	.byte	0x7
	.4byte	.LFB26
	.uleb128 .LFE26-.LFB26
	.byte	0x7
	.4byte	.LFB27
	.uleb128 .LFE27-.LFB27
	.byte	0x7
	.4byte	.LFB28
	.uleb128 .LFE28-.LFB28
	.byte	0x7
	.4byte	.LFB29
	.uleb128 .LFE29-.LFB29
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"cmd_looprt_test_evt_dump"
.LASF16:
	.string	"looprt_evt_schedule"
.LASF15:
	.string	"function"
.LASF5:
	.string	"short unsigned int"
.LASF4:
	.string	"short int"
.LASF19:
	.string	"printf"
.LASF17:
	.string	"looprt_evt_notify_async"
.LASF33:
	.string	"looprt_start_auto"
.LASF7:
	.string	"long unsigned int"
.LASF32:
	.string	"looprt_evt_status_dump"
.LASF14:
	.string	"help"
.LASF3:
	.string	"unsigned char"
.LASF29:
	.string	"cli_command"
.LASF11:
	.string	"long double"
.LASF25:
	.string	"cmd_looprt_test_evt"
.LASF27:
	.string	"cmd_looprt_test"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF34:
	.string	"looprt_test_cli_init"
.LASF26:
	.string	"cmd_looprt_test_status"
.LASF20:
	.string	"argc"
.LASF8:
	.string	"long long int"
.LASF31:
	.string	"cmds_user"
.LASF12:
	.string	"char"
.LASF23:
	.string	"cmd_looprt_test_schedule_evt1"
.LASF22:
	.string	"cmd_looprt_test_schedule_evt2"
.LASF35:
	.string	"looprt_case_1"
.LASF28:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF21:
	.string	"argv"
.LASF30:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF18:
	.string	"puts"
.LASF2:
	.string	"signed char"
.LASF13:
	.string	"name"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/looprt/src/looprt_test_cli.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/looprt"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
