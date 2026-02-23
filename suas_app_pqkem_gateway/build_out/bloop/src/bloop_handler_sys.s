	.file	"bloop_handler_sys.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bloop" "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/bloop/src/bloop_handler_sys.c"
	.section	.rodata
	.align	2
.LC0:
	.string	"[SYS] [EVT] called with bitmap_evt %08lx, bitmap_task %08lx\r\n"
	.align	2
.LC1:
	.string	"bloop_handler_sys.c"
	.align	2
.LC2:
	.string	"[ASSERT] [ERR] %s:%d\r\n"
	.section	.text.loop_evt_entity_sys_evt,"ax",@progbits
	.align	1
	.type	loop_evt_entity_sys_evt, @function
loop_evt_entity_sys_evt:
.LFB22:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/bloop/src/bloop_handler_sys.c"
	.loc 1 36 1
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
	.loc 1 37 14
	lw	a5,-48(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 39 5
	lw	a5,-44(s0)
	lw	a4,0(a5)
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
.L2:
	.loc 1 42 13
	lw	a5,-20(s0)
	andi	a5,a5,1
	.loc 1 42 8
	beq	a5,zero,.L3
	.loc 1 43 9
	lw	a0,-36(s0)
	call	bloop_status_dump
	.loc 1 44 13
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	j	.L4
.L3:
	.loc 1 46 17
	lw	a5,-20(s0)
	beq	a5,zero,.L4
	.loc 1 46 33 discriminator 1
	li	a2,46
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L5:
	.loc 1 46 102
	nop
	j	.L5
.L4:
	.loc 1 48 8
	lw	a5,-20(s0)
	beq	a5,zero,.L6
	.loc 1 49 9
	j	.L2
.L6:
	.loc 1 52 19
	lw	a5,-48(s0)
	sw	zero,0(a5)
	.loc 1 54 12
	li	a5,0
	.loc 1 55 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	loop_evt_entity_sys_evt, .-loop_evt_entity_sys_evt
	.section	.rodata
	.align	2
.LC3:
	.string	"[SYS] [MSG] called with msg info\r\n    priority %u\r\n    dst %u\r\n    msgid %u\r\n    src %u\r\n    arg1 %p\r\n    arg2 %p\r\n"
	.section	.text.loop_evt_entity_sys_handler,"ax",@progbits
	.align	1
	.type	loop_evt_entity_sys_handler, @function
loop_evt_entity_sys_handler:
.LFB23:
	.loc 1 58 1
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
	.loc 1 66 25
	lw	a5,-28(s0)
	lbu	a5,4(a5)
	.loc 1 59 5
	mv	a1,a5
	.loc 1 67 25
	lw	a5,-28(s0)
	lbu	a5,5(a5)
	.loc 1 59 5
	mv	a2,a5
	.loc 1 68 25
	lw	a5,-28(s0)
	lbu	a5,6(a5)
	.loc 1 59 5
	mv	a3,a5
	.loc 1 69 25
	lw	a5,-28(s0)
	lbu	a5,7(a5)
	.loc 1 59 5
	mv	a0,a5
	lw	a5,-28(s0)
	lw	a4,8(a5)
	lw	a5,-28(s0)
	lw	a5,12(a5)
	mv	a6,a5
	mv	a5,a4
	mv	a4,a0
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
	.loc 1 73 12
	li	a5,0
	.loc 1 74 1
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
.LFE23:
	.size	loop_evt_entity_sys_handler, .-loop_evt_entity_sys_handler
	.globl	bloop_handler_sys
	.section	.rodata
	.align	2
.LC4:
	.string	"SYS [built-in]"
	.section	.data.bloop_handler_sys,"aw"
	.align	2
	.type	bloop_handler_sys, @object
	.size	bloop_handler_sys, 12
bloop_handler_sys:
	.word	.LC4
	.word	loop_evt_entity_sys_evt
	.word	loop_evt_entity_sys_handler
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_list.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/bloop/include/bloop.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x48b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x11
	.4byte	.LASF61
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
	.uleb128 0x12
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
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xb
	.4byte	0x7a
	.uleb128 0x3
	.4byte	0x81
	.uleb128 0x14
	.4byte	0x86
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x3
	.byte	0x46
	.byte	0x25
	.4byte	0xb4
	.uleb128 0x3
	.4byte	0xb9
	.uleb128 0x15
	.4byte	.LASF62
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.byte	0x4
	.byte	0x26
	.4byte	0xd8
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x4
	.byte	0x28
	.byte	0x1c
	.4byte	0xd8
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	0xbe
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x8
	.byte	0x4
	.byte	0x2b
	.4byte	0x104
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2e
	.byte	0x1c
	.4byte	0xd8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x4
	.byte	0x30
	.byte	0x1c
	.4byte	0xd8
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF21
	.byte	0x8
	.byte	0x4
	.2byte	0x118
	.byte	0x10
	.4byte	0x12b
	.uleb128 0xc
	.4byte	.LASF22
	.2byte	0x119
	.4byte	0x12b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF18
	.2byte	0x11a
	.4byte	0x12b
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	0x104
	.uleb128 0x17
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x11b
	.byte	0x3
	.4byte	0x104
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.byte	0x2e
	.byte	0x9
	.4byte	0x17b
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2f
	.byte	0x15
	.4byte	0x90
	.byte	0
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x5
	.byte	0x30
	.byte	0x15
	.4byte	0x90
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x5
	.byte	0x31
	.byte	0x15
	.4byte	0x90
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x5
	.byte	0x32
	.byte	0x15
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.byte	0x5
	.4byte	0x19b
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x2d
	.byte	0xf
	.4byte	0x78
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x33
	.byte	0xb
	.4byte	0x13d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x18
	.byte	0x5
	.byte	0x2a
	.4byte	0x1f2
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x5
	.byte	0x2b
	.byte	0x1b
	.4byte	0xbe
	.byte	0
	.uleb128 0xe
	.string	"u"
	.byte	0x34
	.byte	0x7
	.4byte	0x17b
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x5
	.byte	0x35
	.byte	0xb
	.4byte	0x78
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x5
	.byte	0x36
	.byte	0xb
	.4byte	0x78
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x5
	.byte	0x37
	.byte	0x12
	.4byte	0x6a
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x5
	.byte	0x38
	.byte	0x12
	.4byte	0x6a
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x10
	.byte	0x5
	.byte	0x3b
	.4byte	0x233
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x5
	.byte	0x3c
	.byte	0x12
	.4byte	0x6a
	.byte	0
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x5
	.byte	0x3d
	.byte	0x12
	.4byte	0x6a
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x5
	.byte	0x3e
	.byte	0x12
	.4byte	0x6a
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x5
	.byte	0x3f
	.byte	0x12
	.4byte	0x6a
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0xc
	.byte	0x5
	.byte	0x42
	.4byte	0x265
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x5
	.byte	0x43
	.byte	0x11
	.4byte	0x86
	.byte	0
	.uleb128 0xe
	.string	"evt"
	.byte	0x44
	.byte	0xb
	.4byte	0x335
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x5
	.byte	0x45
	.byte	0xb
	.4byte	0x358
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0x233
	.uleb128 0xf
	.4byte	0x63
	.4byte	0x288
	.uleb128 0x4
	.4byte	0x288
	.uleb128 0x4
	.4byte	0x32b
	.uleb128 0x4
	.4byte	0x330
	.uleb128 0x4
	.4byte	0x330
	.byte	0
	.uleb128 0x3
	.4byte	0x28d
	.uleb128 0x1a
	.4byte	.LASF43
	.2byte	0x4a0
	.byte	0x5
	.byte	0x4b
	.byte	0x8
	.4byte	0x32b
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x5
	.byte	0x4c
	.byte	0x12
	.4byte	0xa8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x5
	.byte	0x4d
	.byte	0xe
	.4byte	0x9c
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x5
	.byte	0x4e
	.byte	0xe
	.4byte	0x9c
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x5
	.byte	0x4f
	.byte	0xe
	.4byte	0x9c
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x5
	.byte	0x50
	.byte	0xe
	.4byte	0x35d
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x5
	.byte	0x51
	.byte	0xe
	.4byte	0x35d
	.byte	0x90
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x52
	.byte	0x17
	.4byte	0x36c
	.2byte	0x110
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x53
	.byte	0x27
	.4byte	0x37b
	.2byte	0x210
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x54
	.byte	0x24
	.4byte	0x38a
	.2byte	0x410
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x56
	.byte	0x13
	.4byte	0x130
	.2byte	0x490
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x57
	.byte	0x13
	.4byte	0x130
	.2byte	0x498
	.byte	0
	.uleb128 0x3
	.4byte	0x265
	.uleb128 0x3
	.4byte	0x9c
	.uleb128 0x3
	.4byte	0x26a
	.uleb128 0xf
	.4byte	0x63
	.4byte	0x353
	.uleb128 0x4
	.4byte	0x288
	.uleb128 0x4
	.4byte	0x32b
	.uleb128 0x4
	.4byte	0x353
	.byte	0
	.uleb128 0x3
	.4byte	0x19b
	.uleb128 0x3
	.4byte	0x33a
	.uleb128 0x8
	.4byte	0x9c
	.4byte	0x36c
	.uleb128 0x9
	.4byte	0x6a
	.byte	0
	.uleb128 0x8
	.4byte	0xdd
	.4byte	0x37b
	.uleb128 0x9
	.4byte	0x6a
	.byte	0
	.uleb128 0x8
	.4byte	0x1f2
	.4byte	0x38a
	.uleb128 0x9
	.4byte	0x6a
	.byte	0
	.uleb128 0x8
	.4byte	0x32b
	.4byte	0x399
	.uleb128 0x9
	.4byte	0x6a
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF63
	.byte	0x5
	.byte	0x6d
	.byte	0x20
	.4byte	0x233
	.uleb128 0x1c
	.4byte	0x399
	.byte	0x1
	.byte	0x4c
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	bloop_handler_sys
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x5
	.byte	0x72
	.4byte	0x63
	.4byte	0x3c8
	.uleb128 0x4
	.4byte	0x288
	.byte	0
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x6
	.byte	0xce
	.4byte	0x63
	.4byte	0x3de
	.uleb128 0x4
	.4byte	0x8b
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF64
	.byte	0x1
	.byte	0x39
	.byte	0xc
	.4byte	0x63
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x424
	.uleb128 0x5
	.4byte	.LASF57
	.byte	0x39
	.byte	0x49
	.4byte	0x288
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF58
	.byte	0x39
	.byte	0x7e
	.4byte	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"msg"
	.byte	0x1
	.byte	0x39
	.byte	0x98
	.4byte	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x20
	.4byte	.LASF65
	.byte	0x1
	.byte	0x23
	.byte	0xc
	.4byte	0x63
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF57
	.byte	0x23
	.byte	0x35
	.4byte	0x288
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF58
	.byte	0x23
	.byte	0x6a
	.4byte	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0x23
	.byte	0x7d
	.4byte	0x330
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF60
	.byte	0x23
	.byte	0x93
	.4byte	0x330
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"map"
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.4byte	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.4byte	.L2
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 31
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 27
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x21
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x17
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
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
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
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"header"
.LASF59:
	.string	"bitmap_evt"
.LASF37:
	.string	"time_max"
.LASF51:
	.string	"statistic"
.LASF17:
	.string	"utils_list"
.LASF4:
	.string	"short int"
.LASF28:
	.string	"container"
.LASF15:
	.string	"TaskHandle_t"
.LASF30:
	.string	"loop_msg"
.LASF66:
	.string	"redo"
.LASF58:
	.string	"handler"
.LASF55:
	.string	"bloop_status_dump"
.LASF40:
	.string	"loop_evt_handler"
.LASF44:
	.string	"looper"
.LASF13:
	.string	"uint8_t"
.LASF41:
	.string	"name"
.LASF26:
	.string	"id_msg"
.LASF36:
	.string	"loop_evt_handler_statistic"
.LASF32:
	.string	"arg1"
.LASF27:
	.string	"id_src"
.LASF8:
	.string	"long long int"
.LASF65:
	.string	"loop_evt_entity_sys_evt"
.LASF6:
	.string	"long int"
.LASF25:
	.string	"id_dst"
.LASF56:
	.string	"printf"
.LASF49:
	.string	"evt_type_map_sync"
.LASF62:
	.string	"tskTaskControlBlock"
.LASF34:
	.string	"time_added"
.LASF11:
	.string	"long double"
.LASF3:
	.string	"unsigned char"
.LASF53:
	.string	"timer_dlist"
.LASF54:
	.string	"timer_dued"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF52:
	.string	"handlers"
.LASF10:
	.string	"unsigned int"
.LASF20:
	.string	"last"
.LASF45:
	.string	"bitmap_evt_async"
.LASF47:
	.string	"bitmap_msg"
.LASF38:
	.string	"time_accumulated"
.LASF5:
	.string	"short unsigned int"
.LASF63:
	.string	"bloop_handler_sys"
.LASF12:
	.string	"char"
.LASF48:
	.string	"evt_type_map_async"
.LASF50:
	.string	"list"
.LASF61:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF21:
	.string	"utils_dlist_s"
.LASF7:
	.string	"long unsigned int"
.LASF64:
	.string	"loop_evt_entity_sys_handler"
.LASF42:
	.string	"handle"
.LASF35:
	.string	"time_consumed"
.LASF31:
	.string	"item"
.LASF39:
	.string	"count_triggered"
.LASF60:
	.string	"evt_type_map"
.LASF23:
	.string	"utils_dlist_t"
.LASF24:
	.string	"priority"
.LASF57:
	.string	"loop"
.LASF33:
	.string	"arg2"
.LASF22:
	.string	"prev"
.LASF16:
	.string	"utils_list_hdr"
.LASF18:
	.string	"next"
.LASF46:
	.string	"bitmap_evt_sync"
.LASF19:
	.string	"first"
.LASF43:
	.string	"loop_ctx"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bloop"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/bloop/src/bloop_handler_sys.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
