	.file	"loopset_ir.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/loopset" "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src/loopset_ir.c"
	.section	.text._ir_bloop_evt,"ax",@progbits
	.align	1
	.type	_ir_bloop_evt, @function
_ir_bloop_evt:
.LFB25:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src/loopset_ir.c"
	.loc 1 52 1
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
	.loc 1 55 12
	call	bl_receivedata
	sw	a0,-20(s0)
	.loc 1 56 8
	lw	a5,-20(s0)
	bne	a5,zero,.L2
	.loc 1 57 9
	li	a2,0
	li	a1,2
	li	a0,6
	call	aos_post_event
	j	.L3
.L2:
	.loc 1 59 9
	lw	a2,-20(s0)
	li	a1,1
	li	a0,6
	call	aos_post_event
.L3:
	.loc 1 61 5
	call	bl_enable_rx_int
	.loc 1 63 12
	li	a5,0
	.loc 1 64 1
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
.LFE25:
	.size	_ir_bloop_evt, .-_ir_bloop_evt
	.section	.text._ir_bloop_msg,"ax",@progbits
	.align	1
	.type	_ir_bloop_msg, @function
_ir_bloop_msg:
.LFB26:
	.loc 1 67 1
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
	.loc 1 70 12
	li	a5,0
	.loc 1 71 1
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
.LFE26:
	.size	_ir_bloop_msg, .-_ir_bloop_msg
	.section	.text.loopset_ir_hook_on_looprt,"ax",@progbits
	.align	1
	.globl	loopset_ir_hook_on_looprt
	.type	loopset_ir_hook_on_looprt, @function
loopset_ir_hook_on_looprt:
.LFB27:
	.loc 1 74 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 84 12
	li	a1,3
	lui	a5,%hi(_ir_bloop_handler_holder.0)
	addi	a0,a5,%lo(_ir_bloop_handler_holder.0)
	call	looprt_handler_register
	mv	a5,a0
	.loc 1 85 1
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
.LFE27:
	.size	loopset_ir_hook_on_looprt, .-loopset_ir_hook_on_looprt
	.section	.text.ir_async_post,"ax",@progbits
	.align	1
	.globl	ir_async_post
	.type	ir_async_post, @function
ir_async_post:
.LFB28:
	.loc 1 88 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 89 5
	li	a1,1
	li	a0,3
	call	looprt_evt_notify_async_fromISR
	.loc 1 91 5
	nop
	.loc 1 92 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	ir_async_post, .-ir_async_post
	.section	.rodata
	.align	2
.LC0:
	.string	"IR Trigger"
	.section	.rodata._ir_bloop_handler_holder.0,"a"
	.align	2
	.type	_ir_bloop_handler_holder.0, @object
	.size	_ir_bloop_handler_holder.0, 12
_ir_bloop_handler_holder.0:
	.word	.LC0
	.word	_ir_bloop_evt
	.word	_ir_bloop_msg
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_list.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/bloop/include/bloop.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/looprt/include/looprt.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/yloop.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_ir.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x501
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x8
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x68
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x8
	.4byte	.LASF10
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x14
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x3
	.byte	0x46
	.byte	0x25
	.4byte	0xaa
	.uleb128 0x4
	.4byte	0xaf
	.uleb128 0x15
	.4byte	.LASF66
	.uleb128 0x4
	.4byte	0xc0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0xb
	.4byte	0xb9
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x4
	.byte	0x4
	.byte	0x26
	.4byte	0xdf
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x4
	.byte	0x28
	.byte	0x1c
	.4byte	0xdf
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x8
	.byte	0x4
	.byte	0x2b
	.4byte	0x10b
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2e
	.byte	0x1c
	.4byte	0xdf
	.byte	0
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x4
	.byte	0x30
	.byte	0x1c
	.4byte	0xdf
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF22
	.byte	0x8
	.byte	0x4
	.2byte	0x118
	.byte	0x10
	.4byte	0x132
	.uleb128 0xc
	.4byte	.LASF23
	.2byte	0x119
	.4byte	0x132
	.byte	0
	.uleb128 0xc
	.4byte	.LASF19
	.2byte	0x11a
	.4byte	0x132
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	0x10b
	.uleb128 0x17
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x11b
	.byte	0x3
	.4byte	0x10b
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.byte	0x2e
	.byte	0x9
	.4byte	0x182
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x5
	.byte	0x2f
	.byte	0x15
	.4byte	0x5c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x5
	.byte	0x30
	.byte	0x15
	.4byte	0x5c
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x5
	.byte	0x31
	.byte	0x15
	.4byte	0x5c
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x5
	.byte	0x32
	.byte	0x15
	.4byte	0x5c
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.byte	0x5
	.4byte	0x1a2
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x2d
	.byte	0xf
	.4byte	0x9c
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x33
	.byte	0xb
	.4byte	0x144
	.byte	0
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x18
	.byte	0x5
	.byte	0x2a
	.4byte	0x1f9
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x5
	.byte	0x2b
	.byte	0x1b
	.4byte	0xc5
	.byte	0
	.uleb128 0xe
	.string	"u"
	.byte	0x34
	.byte	0x7
	.4byte	0x182
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x5
	.byte	0x35
	.byte	0xb
	.4byte	0x9c
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x5
	.byte	0x36
	.byte	0xb
	.4byte	0x9c
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x5
	.byte	0x37
	.byte	0x12
	.4byte	0x32
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x5
	.byte	0x38
	.byte	0x12
	.4byte	0x32
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	.LASF37
	.byte	0x10
	.byte	0x5
	.byte	0x3b
	.4byte	0x23a
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x5
	.byte	0x3c
	.byte	0x12
	.4byte	0x32
	.byte	0
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x5
	.byte	0x3d
	.byte	0x12
	.4byte	0x32
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x5
	.byte	0x3e
	.byte	0x12
	.4byte	0x32
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x5
	.byte	0x3f
	.byte	0x12
	.4byte	0x32
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	.LASF41
	.byte	0xc
	.byte	0x5
	.byte	0x42
	.4byte	0x26c
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x5
	.byte	0x43
	.byte	0x11
	.4byte	0xb4
	.byte	0
	.uleb128 0xe
	.string	"evt"
	.byte	0x44
	.byte	0xb
	.4byte	0x33c
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x5
	.byte	0x45
	.byte	0xb
	.4byte	0x35f
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0x23a
	.uleb128 0xf
	.4byte	0x2b
	.4byte	0x28f
	.uleb128 0x2
	.4byte	0x28f
	.uleb128 0x2
	.4byte	0x332
	.uleb128 0x2
	.4byte	0x337
	.uleb128 0x2
	.4byte	0x337
	.byte	0
	.uleb128 0x4
	.4byte	0x294
	.uleb128 0x1a
	.4byte	.LASF44
	.2byte	0x4a0
	.byte	0x5
	.byte	0x4b
	.byte	0x8
	.4byte	0x332
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x5
	.byte	0x4c
	.byte	0x12
	.4byte	0x9e
	.byte	0
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x5
	.byte	0x4d
	.byte	0xe
	.4byte	0x82
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x5
	.byte	0x4e
	.byte	0xe
	.4byte	0x82
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x5
	.byte	0x4f
	.byte	0xe
	.4byte	0x82
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x5
	.byte	0x50
	.byte	0xe
	.4byte	0x364
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x5
	.byte	0x51
	.byte	0xe
	.4byte	0x364
	.byte	0x90
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x52
	.byte	0x17
	.4byte	0x373
	.2byte	0x110
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x53
	.byte	0x27
	.4byte	0x382
	.2byte	0x210
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x54
	.byte	0x24
	.4byte	0x391
	.2byte	0x410
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x56
	.byte	0x13
	.4byte	0x137
	.2byte	0x490
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x57
	.byte	0x13
	.4byte	0x137
	.2byte	0x498
	.byte	0
	.uleb128 0x4
	.4byte	0x26c
	.uleb128 0x4
	.4byte	0x82
	.uleb128 0x4
	.4byte	0x271
	.uleb128 0xf
	.4byte	0x2b
	.4byte	0x35a
	.uleb128 0x2
	.4byte	0x28f
	.uleb128 0x2
	.4byte	0x332
	.uleb128 0x2
	.4byte	0x35a
	.byte	0
	.uleb128 0x4
	.4byte	0x1a2
	.uleb128 0x4
	.4byte	0x341
	.uleb128 0x9
	.4byte	0x82
	.4byte	0x373
	.uleb128 0xa
	.4byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	0xe4
	.4byte	0x382
	.uleb128 0xa
	.4byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	0x1f9
	.4byte	0x391
	.uleb128 0xa
	.4byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	0x332
	.4byte	0x3a0
	.uleb128 0xa
	.4byte	0x32
	.byte	0
	.uleb128 0x5
	.4byte	.LASF56
	.byte	0xc
	.byte	0x1
	.byte	0x2f
	.4byte	0x3ba
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x1
	.byte	0x30
	.byte	0x23
	.4byte	0x26c
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x3a0
	.uleb128 0x1b
	.4byte	.LASF67
	.byte	0x6
	.byte	0x28
	.byte	0x6
	.4byte	0x3d6
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0x82
	.byte	0
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x6
	.byte	0x2c
	.4byte	0x2b
	.4byte	0x3f0
	.uleb128 0x2
	.4byte	0x332
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF68
	.byte	0x8
	.byte	0x23
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x7
	.byte	0x97
	.4byte	0x2b
	.4byte	0x417
	.uleb128 0x2
	.4byte	0x6f
	.uleb128 0x2
	.4byte	0x6f
	.uleb128 0x2
	.4byte	0x8e
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF69
	.byte	0x8
	.byte	0x21
	.byte	0xa
	.4byte	0x82
	.uleb128 0x1e
	.4byte	.LASF70
	.byte	0x1
	.byte	0x57
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF71
	.byte	0x1
	.byte	0x49
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x461
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x4b
	.byte	0x31
	.4byte	0x3ba
	.uleb128 0x5
	.byte	0x3
	.4byte	_ir_bloop_handler_holder.0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF72
	.byte	0x1
	.byte	0x42
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a7
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x42
	.byte	0x3b
	.4byte	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x42
	.byte	0x70
	.4byte	0x332
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"msg"
	.byte	0x1
	.byte	0x42
	.byte	0x9a
	.4byte	0x35a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x22
	.4byte	.LASF73
	.byte	0x1
	.byte	0x33
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x33
	.byte	0x3b
	.4byte	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x33
	.byte	0x70
	.4byte	0x332
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x33
	.byte	0x93
	.4byte	0x337
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x33
	.byte	0xb9
	.4byte	0x337
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x35
	.byte	0xe
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 31
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"header"
.LASF61:
	.string	"bitmap_evt"
.LASF38:
	.string	"time_max"
.LASF52:
	.string	"statistic"
.LASF18:
	.string	"utils_list"
.LASF6:
	.string	"short int"
.LASF29:
	.string	"container"
.LASF15:
	.string	"TaskHandle_t"
.LASF56:
	.string	"loop_evt_handler_holder"
.LASF31:
	.string	"loop_msg"
.LASF4:
	.string	"long double"
.LASF57:
	.string	"handler"
.LASF71:
	.string	"loopset_ir_hook_on_looprt"
.LASF70:
	.string	"ir_async_post"
.LASF41:
	.string	"loop_evt_handler"
.LASF45:
	.string	"looper"
.LASF63:
	.string	"_ir_bloop_handler_holder"
.LASF42:
	.string	"name"
.LASF27:
	.string	"id_msg"
.LASF37:
	.string	"loop_evt_handler_statistic"
.LASF33:
	.string	"arg1"
.LASF28:
	.string	"id_src"
.LASF69:
	.string	"bl_receivedata"
.LASF3:
	.string	"long long int"
.LASF7:
	.string	"long int"
.LASF26:
	.string	"id_dst"
.LASF50:
	.string	"evt_type_map_sync"
.LASF66:
	.string	"tskTaskControlBlock"
.LASF35:
	.string	"time_added"
.LASF58:
	.string	"looprt_handler_register"
.LASF8:
	.string	"unsigned char"
.LASF73:
	.string	"_ir_bloop_evt"
.LASF54:
	.string	"timer_dlist"
.LASF55:
	.string	"timer_dued"
.LASF5:
	.string	"signed char"
.LASF14:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF53:
	.string	"handlers"
.LASF2:
	.string	"unsigned int"
.LASF10:
	.string	"uint16_t"
.LASF68:
	.string	"bl_enable_rx_int"
.LASF21:
	.string	"last"
.LASF46:
	.string	"bitmap_evt_async"
.LASF48:
	.string	"bitmap_msg"
.LASF39:
	.string	"time_accumulated"
.LASF11:
	.string	"short unsigned int"
.LASF16:
	.string	"char"
.LASF49:
	.string	"evt_type_map_async"
.LASF51:
	.string	"list"
.LASF65:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF64:
	.string	"data"
.LASF72:
	.string	"_ir_bloop_msg"
.LASF22:
	.string	"utils_dlist_s"
.LASF59:
	.string	"aos_post_event"
.LASF13:
	.string	"long unsigned int"
.LASF43:
	.string	"handle"
.LASF36:
	.string	"time_consumed"
.LASF9:
	.string	"uint8_t"
.LASF32:
	.string	"item"
.LASF40:
	.string	"count_triggered"
.LASF62:
	.string	"evt_type_map"
.LASF24:
	.string	"utils_dlist_t"
.LASF25:
	.string	"priority"
.LASF60:
	.string	"loop"
.LASF34:
	.string	"arg2"
.LASF23:
	.string	"prev"
.LASF67:
	.string	"looprt_evt_notify_async_fromISR"
.LASF17:
	.string	"utils_list_hdr"
.LASF19:
	.string	"next"
.LASF47:
	.string	"bitmap_evt_sync"
.LASF20:
	.string	"first"
.LASF44:
	.string	"loop_ctx"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src/loopset_ir.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/loopset"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
