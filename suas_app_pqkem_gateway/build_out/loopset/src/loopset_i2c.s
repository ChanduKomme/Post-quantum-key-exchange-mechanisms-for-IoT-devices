	.file	"loopset_i2c.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/loopset" "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src/loopset_i2c.c"
	.section	.sbss.gpstmsg,"aw",@nobits
	.align	2
	.type	gpstmsg, @object
	.size	gpstmsg, 4
gpstmsg:
	.zero	4
	.section	.sbss.glevent,"aw",@nobits
	.align	2
	.type	glevent, @object
	.size	glevent, 4
glevent:
	.zero	4
	.section	.rodata
	.align	2
.LC0:
	.string	"loopset_i2c.c"
	.align	2
.LC1:
	.string	"[ASSERT] [ERR] %s:%d\r\n"
	.section	.text._i2c_bloop_evt,"ax",@progbits
	.align	1
	.type	_i2c_bloop_evt, @function
_i2c_bloop_evt:
.LFB23:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src/loopset_i2c.c"
	.loc 1 54 1
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
	.loc 1 55 14
	lw	a5,-48(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L2:
	.loc 1 57 15
	lw	a5,-20(s0)
	andi	a5,a5,1
	.loc 1 57 10
	beq	a5,zero,.L3
	.loc 1 58 15
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 1 59 11
	lui	a5,%hi(gpstmsg)
	lw	a5,%lo(gpstmsg)(a5)
	mv	a0,a5
	call	i2c_insert_msgs_process
	j	.L4
.L3:
	.loc 1 60 22
	lw	a5,-20(s0)
	andi	a5,a5,2
	.loc 1 60 17
	beq	a5,zero,.L5
	.loc 1 61 15
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
	.loc 1 62 11
	lui	a5,%hi(gpstmsg)
	lw	a5,%lo(gpstmsg)(a5)
	mv	a0,a5
	call	i2c_msgs_process
	j	.L4
.L5:
	.loc 1 63 22
	lw	a5,-20(s0)
	andi	a5,a5,4
	.loc 1 63 17
	beq	a5,zero,.L6
	.loc 1 64 15
	lw	a5,-20(s0)
	andi	a5,a5,-5
	sw	a5,-20(s0)
	.loc 1 65 23
	lui	a5,%hi(glevent)
	lw	a5,%lo(glevent)(a5)
	.loc 1 65 14
	bne	a5,zero,.L7
	.loc 1 66 15
	li	a2,0
	li	a1,1
	li	a0,527
	call	aos_post_event
	j	.L4
.L7:
	.loc 1 67 30
	lui	a5,%hi(glevent)
	lw	a4,%lo(glevent)(a5)
	.loc 1 67 21
	li	a5,5
	bne	a4,a5,.L8
	.loc 1 68 15
	li	a2,0
	li	a1,2
	li	a0,527
	call	aos_post_event
	j	.L4
.L8:
	.loc 1 69 30
	lui	a5,%hi(glevent)
	lw	a4,%lo(glevent)(a5)
	.loc 1 69 21
	li	a5,4
	bne	a4,a5,.L9
	.loc 1 70 15
	li	a2,0
	li	a1,4
	li	a0,527
	call	aos_post_event
	j	.L4
.L9:
	.loc 1 71 30
	lui	a5,%hi(glevent)
	lw	a4,%lo(glevent)(a5)
	.loc 1 71 21
	li	a5,6
	bne	a4,a5,.L4
	.loc 1 72 15
	li	a2,0
	li	a1,3
	li	a0,527
	call	aos_post_event
	j	.L4
.L6:
	.loc 1 77 19
	lw	a5,-20(s0)
	beq	a5,zero,.L4
	.loc 1 77 35 discriminator 1
	li	a2,77
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L10:
	.loc 1 77 98
	nop
	j	.L10
.L4:
	.loc 1 80 10
	lw	a5,-20(s0)
	beq	a5,zero,.L11
	.loc 1 81 11
	j	.L2
.L11:
	.loc 1 84 21
	lw	a5,-48(s0)
	sw	zero,0(a5)
	.loc 1 86 12
	li	a5,0
	.loc 1 87 1
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
.LFE23:
	.size	_i2c_bloop_evt, .-_i2c_bloop_evt
	.section	.text._i2c_bloop_msg,"ax",@progbits
	.align	1
	.type	_i2c_bloop_msg, @function
_i2c_bloop_msg:
.LFB24:
	.loc 1 90 1
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
	.loc 1 92 12
	li	a5,0
	.loc 1 93 1
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
.LFE24:
	.size	_i2c_bloop_msg, .-_i2c_bloop_msg
	.section	.text.loopset_i2c_hook_on_looprt,"ax",@progbits
	.align	1
	.globl	loopset_i2c_hook_on_looprt
	.type	loopset_i2c_hook_on_looprt, @function
loopset_i2c_hook_on_looprt:
.LFB25:
	.loc 1 96 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 106 12
	li	a1,2
	lui	a5,%hi(_i2c_bloop_handler_holder.0)
	addi	a0,a5,%lo(_i2c_bloop_handler_holder.0)
	call	looprt_handler_register
	mv	a5,a0
	.loc 1 107 1
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
.LFE25:
	.size	loopset_i2c_hook_on_looprt, .-loopset_i2c_hook_on_looprt
	.section	.text.i2c_async_trigger,"ax",@progbits
	.align	1
	.globl	i2c_async_trigger
	.type	i2c_async_trigger, @function
i2c_async_trigger:
.LFB26:
	.loc 1 110 1
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
	.loc 1 111 13
	lui	a5,%hi(gpstmsg)
	lw	a4,-20(s0)
	sw	a4,%lo(gpstmsg)(a5)
	.loc 1 112 8
	lw	a5,-24(s0)
	bne	a5,zero,.L18
	.loc 1 113 10
	li	a1,2
	li	a0,2
	call	looprt_evt_notify_async
	.loc 1 121 5
	j	.L22
.L18:
	.loc 1 114 14
	lw	a4,-24(s0)
	li	a5,1
	bne	a4,a5,.L20
	.loc 1 115 9
	li	a1,1
	li	a0,2
	call	looprt_evt_notify_async
	.loc 1 121 5
	j	.L22
.L20:
	.loc 1 116 15
	lw	a4,-24(s0)
	li	a5,2
	bne	a4,a5,.L22
	.loc 1 117 26
	lui	a5,%hi(gpstmsg)
	lw	a5,%lo(gpstmsg)(a5)
	lw	a4,20(a5)
	.loc 1 117 17
	lui	a5,%hi(glevent)
	sw	a4,%lo(glevent)(a5)
	.loc 1 118 9
	li	a1,4
	li	a0,2
	call	looprt_evt_notify_async_fromISR
	.loc 1 121 5
	nop
.L22:
	nop
	.loc 1 122 1
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
	.size	i2c_async_trigger, .-i2c_async_trigger
	.section	.rodata
	.align	2
.LC2:
	.string	"I2C Trigger"
	.section	.rodata._i2c_bloop_handler_holder.0,"a"
	.align	2
	.type	_i2c_bloop_handler_holder.0, @object
	.size	_i2c_bloop_handler_holder.0, 12
_i2c_bloop_handler_holder.0:
	.word	.LC2
	.word	_i2c_bloop_evt
	.word	_i2c_bloop_msg
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_list.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/bloop/include/bloop.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_i2c.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/looprt/include/looprt.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/yloop.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x665
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x68
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x7b
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x8e
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x16
	.byte	0x4
	.uleb128 0x3
	.4byte	0x5c
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x46
	.byte	0x25
	.4byte	0xaf
	.uleb128 0x3
	.4byte	0xb4
	.uleb128 0x17
	.4byte	.LASF86
	.uleb128 0x3
	.4byte	0xca
	.uleb128 0x18
	.4byte	0xb9
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x4
	.byte	0x4
	.byte	0x26
	.byte	0x8
	.4byte	0xea
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x4
	.byte	0x28
	.byte	0x1c
	.4byte	0xea
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	0xcf
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x8
	.byte	0x4
	.byte	0x2b
	.byte	0x8
	.4byte	0x117
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2e
	.byte	0x1c
	.4byte	0xea
	.byte	0
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x4
	.byte	0x30
	.byte	0x1c
	.4byte	0xea
	.byte	0x4
	.byte	0
	.uleb128 0x19
	.4byte	.LASF22
	.byte	0x8
	.byte	0x4
	.2byte	0x118
	.byte	0x10
	.4byte	0x13e
	.uleb128 0x10
	.4byte	.LASF23
	.2byte	0x119
	.4byte	0x13e
	.byte	0
	.uleb128 0x10
	.4byte	.LASF19
	.2byte	0x11a
	.4byte	0x13e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	0x117
	.uleb128 0x1a
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x11b
	.byte	0x3
	.4byte	0x117
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.byte	0x2e
	.byte	0x9
	.4byte	0x18e
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
	.uleb128 0x1c
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.byte	0x5
	.4byte	0x1ae
	.uleb128 0x11
	.4byte	.LASF29
	.byte	0x2d
	.byte	0xf
	.4byte	0x9c
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x33
	.byte	0xb
	.4byte	0x150
	.byte	0
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x18
	.byte	0x5
	.byte	0x2a
	.byte	0x8
	.4byte	0x208
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x5
	.byte	0x2b
	.byte	0x1b
	.4byte	0xcf
	.byte	0
	.uleb128 0x9
	.string	"u"
	.byte	0x5
	.byte	0x34
	.byte	0x7
	.4byte	0x18e
	.byte	0x4
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
	.byte	0x8
	.4byte	0x24a
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
	.byte	0x8
	.4byte	0x27f
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x5
	.byte	0x43
	.byte	0x11
	.4byte	0xb9
	.byte	0
	.uleb128 0x9
	.string	"evt"
	.byte	0x5
	.byte	0x44
	.byte	0xb
	.4byte	0x34f
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x5
	.byte	0x45
	.byte	0xb
	.4byte	0x372
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	0x24a
	.uleb128 0x12
	.4byte	0x2b
	.4byte	0x2a2
	.uleb128 0x2
	.4byte	0x2a2
	.uleb128 0x2
	.4byte	0x345
	.uleb128 0x2
	.4byte	0x34a
	.uleb128 0x2
	.4byte	0x34a
	.byte	0
	.uleb128 0x3
	.4byte	0x2a7
	.uleb128 0x1d
	.4byte	.LASF44
	.2byte	0x4a0
	.byte	0x5
	.byte	0x4b
	.byte	0x8
	.4byte	0x345
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x5
	.byte	0x4c
	.byte	0x12
	.4byte	0xa3
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
	.4byte	0x377
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x5
	.byte	0x51
	.byte	0xe
	.4byte	0x377
	.byte	0x90
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x52
	.byte	0x17
	.4byte	0x386
	.2byte	0x110
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x53
	.byte	0x27
	.4byte	0x395
	.2byte	0x210
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x54
	.byte	0x24
	.4byte	0x3a4
	.2byte	0x410
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x56
	.byte	0x13
	.4byte	0x143
	.2byte	0x490
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x57
	.byte	0x13
	.4byte	0x143
	.2byte	0x498
	.byte	0
	.uleb128 0x3
	.4byte	0x27f
	.uleb128 0x3
	.4byte	0x82
	.uleb128 0x3
	.4byte	0x284
	.uleb128 0x12
	.4byte	0x2b
	.4byte	0x36d
	.uleb128 0x2
	.4byte	0x2a2
	.uleb128 0x2
	.4byte	0x345
	.uleb128 0x2
	.4byte	0x36d
	.byte	0
	.uleb128 0x3
	.4byte	0x1ae
	.uleb128 0x3
	.4byte	0x354
	.uleb128 0xa
	.4byte	0x82
	.4byte	0x386
	.uleb128 0xb
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	0xef
	.4byte	0x395
	.uleb128 0xb
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	0x208
	.4byte	0x3a4
	.uleb128 0xb
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	0x345
	.4byte	0x3b3
	.uleb128 0xb
	.4byte	0x32
	.byte	0
	.uleb128 0x5
	.4byte	.LASF56
	.byte	0x2c
	.byte	0x6
	.byte	0x27
	.byte	0x10
	.4byte	0x46a
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x6
	.byte	0x28
	.byte	0xe
	.4byte	0x6f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x6
	.byte	0x29
	.byte	0xd
	.4byte	0x5c
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x6
	.byte	0x2a
	.byte	0xd
	.4byte	0x5c
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.4byte	0x82
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x6
	.byte	0x2c
	.byte	0xd
	.4byte	0x5c
	.byte	0x8
	.uleb128 0x9
	.string	"len"
	.byte	0x6
	.byte	0x2d
	.byte	0xe
	.4byte	0x82
	.byte	0xc
	.uleb128 0x9
	.string	"buf"
	.byte	0x6
	.byte	0x2e
	.byte	0xe
	.4byte	0x9e
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x6
	.byte	0x2f
	.byte	0x9
	.4byte	0x2b
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x6
	.byte	0x30
	.byte	0x9
	.4byte	0x2b
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x6
	.byte	0x31
	.byte	0x9
	.4byte	0x2b
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x6
	.byte	0x32
	.byte	0x9
	.4byte	0x2b
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x6
	.byte	0x33
	.byte	0x9
	.4byte	0x2b
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x6
	.byte	0x34
	.byte	0x9
	.4byte	0x2b
	.byte	0x28
	.byte	0
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x6
	.byte	0x35
	.byte	0x3
	.4byte	0x3b3
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x2f
	.byte	0x13
	.4byte	0x487
	.uleb128 0x5
	.byte	0x3
	.4byte	gpstmsg
	.uleb128 0x3
	.4byte	0x46a
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x30
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x5
	.byte	0x3
	.4byte	glevent
	.uleb128 0x5
	.4byte	.LASF71
	.byte	0xc
	.byte	0x1
	.byte	0x31
	.byte	0x8
	.4byte	0x4b8
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x1
	.byte	0x32
	.byte	0x23
	.4byte	0x27f
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x49d
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x7
	.byte	0x28
	.4byte	0x4d3
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0x82
	.byte	0
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x7
	.byte	0x27
	.4byte	0x4e9
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0x82
	.byte	0
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0x7
	.byte	0x2c
	.4byte	0x2b
	.4byte	0x503
	.uleb128 0x2
	.4byte	0x345
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x8
	.byte	0xce
	.4byte	0x2b
	.4byte	0x519
	.uleb128 0x2
	.4byte	0xbe
	.uleb128 0x1e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x9
	.byte	0x97
	.4byte	0x2b
	.4byte	0x538
	.uleb128 0x2
	.4byte	0x6f
	.uleb128 0x2
	.4byte	0x6f
	.uleb128 0x2
	.4byte	0x8e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0xa
	.byte	0x32
	.4byte	0x549
	.uleb128 0x2
	.4byte	0x487
	.byte	0
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0xa
	.byte	0x33
	.4byte	0x55a
	.uleb128 0x2
	.4byte	0x487
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF87
	.byte	0x1
	.byte	0x6d
	.byte	0x6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58d
	.uleb128 0x13
	.string	"pst"
	.byte	0x6d
	.byte	0x23
	.4byte	0x487
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF80
	.byte	0x6d
	.byte	0x2c
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.4byte	.LASF88
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b9
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x61
	.byte	0x31
	.4byte	0x4b8
	.uleb128 0x5
	.byte	0x3
	.4byte	_i2c_bloop_handler_holder.0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF89
	.byte	0x1
	.byte	0x59
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5fe
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0x59
	.byte	0x3c
	.4byte	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0x59
	.byte	0x71
	.4byte	0x345
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"msg"
	.byte	0x59
	.byte	0x9b
	.4byte	0x36d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x22
	.4byte	.LASF90
	.byte	0x1
	.byte	0x35
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0x35
	.byte	0x3c
	.4byte	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0x35
	.byte	0x71
	.4byte	0x345
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF83
	.byte	0x35
	.byte	0x94
	.4byte	0x34a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF84
	.byte	0x35
	.byte	0xaa
	.4byte	0x34a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"map"
	.byte	0x1
	.byte	0x37
	.byte	0xe
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.4byte	.LASF91
	.byte	0x1
	.byte	0x39
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
	.uleb128 0xb
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
	.uleb128 0x9
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 31
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
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"header"
.LASF57:
	.string	"addr"
.LASF78:
	.string	"i2c_msgs_process"
.LASF67:
	.string	"i2cx"
.LASF38:
	.string	"time_max"
.LASF69:
	.string	"gpstmsg"
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
.LASF71:
	.string	"loop_evt_handler_holder"
.LASF31:
	.string	"loop_msg"
.LASF4:
	.string	"long double"
.LASF91:
	.string	"redo"
.LASF62:
	.string	"event"
.LASF72:
	.string	"handler"
.LASF60:
	.string	"subaddr"
.LASF58:
	.string	"direct"
.LASF68:
	.string	"i2c_msg_t"
.LASF41:
	.string	"loop_evt_handler"
.LASF45:
	.string	"looper"
.LASF9:
	.string	"uint8_t"
.LASF32:
	.string	"item"
.LASF42:
	.string	"name"
.LASF70:
	.string	"glevent"
.LASF79:
	.string	"i2c_insert_msgs_process"
.LASF37:
	.string	"loop_evt_handler_statistic"
.LASF33:
	.string	"arg1"
.LASF28:
	.string	"id_src"
.LASF3:
	.string	"long long int"
.LASF7:
	.string	"long int"
.LASF26:
	.string	"id_dst"
.LASF76:
	.string	"printf"
.LASF50:
	.string	"evt_type_map_sync"
.LASF86:
	.string	"tskTaskControlBlock"
.LASF64:
	.string	"block"
.LASF35:
	.string	"time_added"
.LASF75:
	.string	"looprt_handler_register"
.LASF56:
	.string	"i2c_msg"
.LASF8:
	.string	"unsigned char"
.LASF89:
	.string	"_i2c_bloop_msg"
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
.LASF81:
	.string	"_i2c_bloop_handler_holder"
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
.LASF66:
	.string	"ins_num"
.LASF65:
	.string	"stop"
.LASF16:
	.string	"char"
.LASF49:
	.string	"evt_type_map_async"
.LASF27:
	.string	"id_msg"
.LASF51:
	.string	"list"
.LASF85:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF59:
	.string	"subflag"
.LASF88:
	.string	"loopset_i2c_hook_on_looprt"
.LASF83:
	.string	"bitmap_evt"
.LASF22:
	.string	"utils_dlist_s"
.LASF63:
	.string	"idex"
.LASF13:
	.string	"long unsigned int"
.LASF77:
	.string	"aos_post_event"
.LASF43:
	.string	"handle"
.LASF87:
	.string	"i2c_async_trigger"
.LASF36:
	.string	"time_consumed"
.LASF74:
	.string	"looprt_evt_notify_async"
.LASF40:
	.string	"count_triggered"
.LASF61:
	.string	"sublen"
.LASF84:
	.string	"evt_type_map"
.LASF24:
	.string	"utils_dlist_t"
.LASF25:
	.string	"priority"
.LASF82:
	.string	"loop"
.LASF34:
	.string	"arg2"
.LASF80:
	.string	"flag"
.LASF23:
	.string	"prev"
.LASF73:
	.string	"looprt_evt_notify_async_fromISR"
.LASF17:
	.string	"utils_list_hdr"
.LASF19:
	.string	"next"
.LASF90:
	.string	"_i2c_bloop_evt"
.LASF47:
	.string	"bitmap_evt_sync"
.LASF20:
	.string	"first"
.LASF44:
	.string	"loop_ctx"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src/loopset_i2c.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/loopset"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
