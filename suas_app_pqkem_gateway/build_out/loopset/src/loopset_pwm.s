	.file	"loopset_pwm.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/loopset" "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src/loopset_pwm.c"
	.globl	trigger
	.section	.sbss.trigger,"aw",@nobits
	.align	2
	.type	trigger, @object
	.size	trigger, 4
trigger:
	.zero	4
	.section	.text._pwm_bloop_evt,"ax",@progbits
	.align	1
	.type	_pwm_bloop_evt, @function
_pwm_bloop_evt:
.LFB23:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src/loopset_pwm.c"
	.loc 1 55 1
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
	.loc 1 56 14
	lw	a5,-48(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 58 17
	lui	a5,%hi(trigger)
	lw	a5,%lo(trigger)(a5)
	.loc 1 58 8
	bne	a5,zero,.L2
	.loc 1 59 16
	li	a5,-1
	j	.L3
.L2:
	.loc 1 61 13
	lw	a5,-20(s0)
	andi	a5,a5,2
	.loc 1 61 8
	beq	a5,zero,.L4
	.loc 1 62 39
	lui	a5,%hi(trigger)
	lw	a5,%lo(trigger)(a5)
	.loc 1 62 9
	mv	a0,a5
	call	looprt_timer_register
.L4:
	.loc 1 65 19
	lw	a5,-48(s0)
	sw	zero,0(a5)
	.loc 1 66 12
	li	a5,0
.L3:
	.loc 1 67 1
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
	.size	_pwm_bloop_evt, .-_pwm_bloop_evt
	.section	.text.loopset_pwm_hook_on_looprt,"ax",@progbits
	.align	1
	.globl	loopset_pwm_hook_on_looprt
	.type	loopset_pwm_hook_on_looprt, @function
loopset_pwm_hook_on_looprt:
.LFB24:
	.loc 1 70 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 77 12
	li	a1,4
	lui	a5,%hi(_pwm_bloop_handler_holder.0)
	addi	a0,a5,%lo(_pwm_bloop_handler_holder.0)
	call	looprt_handler_register
	mv	a5,a0
	.loc 1 78 1
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
.LFE24:
	.size	loopset_pwm_hook_on_looprt, .-loopset_pwm_hook_on_looprt
	.section	.text.loopset_pwm_hook_off_looprt,"ax",@progbits
	.align	1
	.globl	loopset_pwm_hook_off_looprt
	.type	loopset_pwm_hook_off_looprt, @function
loopset_pwm_hook_off_looprt:
.LFB25:
	.loc 1 81 1
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
.LFE25:
	.size	loopset_pwm_hook_off_looprt, .-loopset_pwm_hook_off_looprt
	.section	.text._cb_pwm_trigger,"ax",@progbits
	.align	1
	.type	_cb_pwm_trigger, @function
_cb_pwm_trigger:
.LFB26:
	.loc 1 86 1
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
	.loc 1 87 30
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	.loc 1 89 16
	lw	a5,-20(s0)
	lw	a5,36(a5)
	.loc 1 89 8
	beq	a5,zero,.L11
	.loc 1 90 16
	lw	a5,-20(s0)
	lw	a5,36(a5)
	.loc 1 90 9
	lw	a4,-20(s0)
	lw	a4,40(a4)
	mv	a0,a4
	jalr	a5
.LVL0:
.L11:
	.loc 1 92 1
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
.LFE26:
	.size	_cb_pwm_trigger, .-_cb_pwm_trigger
	.section	.text.loopset_pwm_trigger_stop,"ax",@progbits
	.align	1
	.globl	loopset_pwm_trigger_stop
	.type	loopset_pwm_trigger_stop, @function
loopset_pwm_trigger_stop:
.LFB27:
	.loc 1 95 1
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
	lui	a5,%hi(trigger)
	lw	a5,%lo(trigger)(a5)
	.loc 1 96 19
	lbu	a4,8(a5)
	.loc 1 96 12
	lui	a5,%hi(trigger)
	lw	a5,%lo(trigger)(a5)
	.loc 1 96 26
	andi	a4,a4,-2
	andi	a4,a4,0xff
	sb	a4,8(a5)
	.loc 1 97 1
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
.LFE27:
	.size	loopset_pwm_trigger_stop, .-loopset_pwm_trigger_stop
	.section	.text.loopset_pwm_trigger_start,"ax",@progbits
	.align	1
	.globl	loopset_pwm_trigger_start
	.type	loopset_pwm_trigger_start, @function
loopset_pwm_trigger_start:
.LFB28:
	.loc 1 100 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 101 16
	lui	a5,%hi(trigger)
	lw	a5,%lo(trigger)(a5)
	.loc 1 101 23
	lbu	a5,8(a5)
	.loc 1 101 30
	andi	a5,a5,1
	.loc 1 101 8
	bne	a5,zero,.L16
	.loc 1 104 39
	lui	a5,%hi(trigger)
	lw	a5,%lo(trigger)(a5)
	.loc 1 104 5
	mv	a0,a5
	call	bloop_timer_repeat_enable
	.loc 1 105 5
	li	a1,2
	li	a0,4
	call	looprt_evt_notify_async
	j	.L13
.L16:
	.loc 1 102 9
	nop
.L13:
	.loc 1 106 1
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
	.size	loopset_pwm_trigger_start, .-loopset_pwm_trigger_start
	.section	.rodata
	.align	2
.LC0:
	.string	"loopset_pwm.c"
	.align	2
.LC1:
	.string	"\033[35mASSERT\033[0m"
	.align	2
.LC2:
	.string	"[%10u][%s: %s:%4d] ASSERT: %s:%d\r\n"
	.section	.text.loopset_pwm_trigger_on,"ax",@progbits
	.align	1
	.globl	loopset_pwm_trigger_on
	.type	loopset_pwm_trigger_on, @function
loopset_pwm_trigger_on:
.LFB29:
	.loc 1 109 1
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
	.loc 1 110 9
	lui	a5,%hi(trigger)
	lw	a5,%lo(trigger)(a5)
	.loc 1 110 8
	bne	a5,zero,.L25
	.loc 1 113 15
	li	a0,44
	call	pvPortMalloc
	mv	a4,a0
	.loc 1 113 13 discriminator 1
	lui	a5,%hi(trigger)
	sw	a4,%lo(trigger)(a5)
	.loc 1 114 14
	lui	a5,%hi(trigger)
	lw	a5,%lo(trigger)(a5)
	.loc 1 114 13
	bne	a5,zero,.L20
.LBB4:
.LBB5:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE5:
.LBE4:
	.loc 1 114 35 discriminator 2
	beq	a5,zero,.L22
	.loc 1 114 116 discriminator 3
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L23
.L22:
	.loc 1 114 145 discriminator 4
	call	xTaskGetTickCount
	mv	a1,a0
.L23:
	.loc 1 114 35 discriminator 8
	li	a6,114
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	li	a4,114
	lui	a3,%hi(.LC0)
	addi	a3,a3,%lo(.LC0)
	lui	a2,%hi(.LC1)
	addi	a2,a2,%lo(.LC1)
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
.L24:
	.loc 1 114 260
	nop
	j	.L24
.L20:
	.loc 1 115 5
	lui	a5,%hi(trigger)
	lw	a5,%lo(trigger)(a5)
	li	a2,44
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 117 12
	lui	a5,%hi(trigger)
	lw	a5,%lo(trigger)(a5)
	.loc 1 117 17
	lw	a4,-24(s0)
	sw	a4,36(a5)
	.loc 1 118 12
	lui	a5,%hi(trigger)
	lw	a5,%lo(trigger)(a5)
	.loc 1 118 20
	lw	a4,-28(s0)
	sw	a4,40(a5)
	.loc 1 120 30
	lui	a5,%hi(trigger)
	lw	a5,%lo(trigger)(a5)
	.loc 1 120 5
	li	a1,0
	mv	a0,a5
	call	bloop_timer_init
	.loc 1 121 35
	lui	a5,%hi(trigger)
	lw	a5,%lo(trigger)(a5)
	.loc 1 121 5
	mv	a0,a5
	lui	a5,%hi(trigger)
	lw	a3,%lo(trigger)(a5)
	li	a5,1
	li	a4,4
	lui	a2,%hi(_cb_pwm_trigger)
	addi	a2,a2,%lo(_cb_pwm_trigger)
	lw	a1,-20(s0)
	call	bloop_timer_configure
	.loc 1 128 5
	li	a1,2
	li	a0,4
	call	looprt_evt_notify_async
	j	.L17
.L25:
	.loc 1 111 9
	nop
.L17:
	.loc 1 129 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	loopset_pwm_trigger_on, .-loopset_pwm_trigger_on
	.section	.text.loopset_pwm_trigger_off,"ax",@progbits
	.align	1
	.globl	loopset_pwm_trigger_off
	.type	loopset_pwm_trigger_off, @function
loopset_pwm_trigger_off:
.LFB30:
	.loc 1 132 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 134 1
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
.LFE30:
	.size	loopset_pwm_trigger_off, .-loopset_pwm_trigger_off
	.section	.rodata
	.align	2
.LC3:
	.string	"PWM Trigger"
	.section	.rodata._pwm_bloop_handler_holder.0,"a"
	.align	2
	.type	_pwm_bloop_handler_holder.0, @object
	.size	_pwm_bloop_handler_holder.0, 12
_pwm_bloop_handler_holder.0:
	.word	.LC3
	.word	_pwm_bloop_evt
	.word	0
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_list.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/bloop/include/bloop.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/include/loopset_pwm.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/looprt/include/looprt.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x75c
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
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
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x6d
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x80
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x9a
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x3
	.4byte	0xad
	.uleb128 0xe
	.4byte	0xb8
	.uleb128 0x1
	.4byte	0xb8
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x61
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0x8e
	.uleb128 0x1a
	.4byte	.LASF69
	.byte	0x2
	.byte	0x5c
	.byte	0x13
	.4byte	0xba
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x5
	.byte	0x46
	.byte	0x25
	.4byte	0xea
	.uleb128 0x3
	.4byte	0xef
	.uleb128 0x1b
	.4byte	.LASF91
	.uleb128 0x3
	.4byte	0x100
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0xf
	.4byte	0xf9
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.byte	0x6
	.byte	0x26
	.4byte	0x11f
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x6
	.byte	0x28
	.byte	0x1c
	.4byte	0x11f
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	0x105
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x8
	.byte	0x6
	.byte	0x2b
	.4byte	0x14b
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x6
	.byte	0x2e
	.byte	0x1c
	.4byte	0x11f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x6
	.byte	0x30
	.byte	0x1c
	.4byte	0x11f
	.byte	0x4
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF25
	.byte	0x8
	.byte	0x6
	.2byte	0x118
	.byte	0x10
	.4byte	0x172
	.uleb128 0x10
	.4byte	.LASF26
	.2byte	0x119
	.4byte	0x172
	.byte	0
	.uleb128 0x10
	.4byte	.LASF22
	.2byte	0x11a
	.4byte	0x172
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	0x14b
	.uleb128 0x1d
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x11b
	.byte	0x3
	.4byte	0x14b
	.uleb128 0x1e
	.byte	0x4
	.byte	0x7
	.byte	0x2e
	.byte	0x9
	.4byte	0x1c2
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x7
	.byte	0x2f
	.byte	0x15
	.4byte	0x74
	.byte	0
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x7
	.byte	0x30
	.byte	0x15
	.4byte	0x74
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x7
	.byte	0x31
	.byte	0x15
	.4byte	0x74
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x7
	.byte	0x32
	.byte	0x15
	.4byte	0x74
	.byte	0x3
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.byte	0x7
	.byte	0x2c
	.byte	0x5
	.4byte	0x1e2
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x2d
	.byte	0xf
	.4byte	0xb8
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x33
	.byte	0xb
	.4byte	0x184
	.byte	0
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x18
	.byte	0x7
	.byte	0x2a
	.4byte	0x23b
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x7
	.byte	0x2b
	.byte	0x1b
	.4byte	0x105
	.byte	0
	.uleb128 0x8
	.string	"u"
	.byte	0x7
	.byte	0x34
	.byte	0x7
	.4byte	0x1c2
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x7
	.byte	0x35
	.byte	0xb
	.4byte	0xb8
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x7
	.byte	0x36
	.byte	0xb
	.4byte	0xb8
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x7
	.byte	0x37
	.byte	0x12
	.4byte	0x3e
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x7
	.byte	0x38
	.byte	0x12
	.4byte	0x3e
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x10
	.byte	0x7
	.byte	0x3b
	.4byte	0x27c
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x7
	.byte	0x3c
	.byte	0x12
	.4byte	0x3e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3d
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x7
	.byte	0x3e
	.byte	0x12
	.4byte	0x3e
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x7
	.byte	0x3f
	.byte	0x12
	.4byte	0x3e
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0xc
	.byte	0x7
	.byte	0x42
	.4byte	0x2b0
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x7
	.byte	0x43
	.byte	0x11
	.4byte	0xf4
	.byte	0
	.uleb128 0x8
	.string	"evt"
	.byte	0x7
	.byte	0x44
	.byte	0xb
	.4byte	0x380
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x7
	.byte	0x45
	.byte	0xb
	.4byte	0x3a3
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	0x27c
	.uleb128 0x12
	.4byte	0x2b
	.4byte	0x2d3
	.uleb128 0x1
	.4byte	0x2d3
	.uleb128 0x1
	.4byte	0x376
	.uleb128 0x1
	.4byte	0x37b
	.uleb128 0x1
	.4byte	0x37b
	.byte	0
	.uleb128 0x3
	.4byte	0x2d8
	.uleb128 0x20
	.4byte	.LASF47
	.2byte	0x4a0
	.byte	0x7
	.byte	0x4b
	.byte	0x8
	.4byte	0x376
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x7
	.byte	0x4c
	.byte	0x12
	.4byte	0xde
	.byte	0
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x7
	.byte	0x4d
	.byte	0xe
	.4byte	0x8e
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x7
	.byte	0x4e
	.byte	0xe
	.4byte	0x8e
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x7
	.byte	0x4f
	.byte	0xe
	.4byte	0x8e
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x7
	.byte	0x50
	.byte	0xe
	.4byte	0x3a8
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x7
	.byte	0x51
	.byte	0xe
	.4byte	0x3a8
	.byte	0x90
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x52
	.byte	0x17
	.4byte	0x3b7
	.2byte	0x110
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x53
	.byte	0x27
	.4byte	0x3c6
	.2byte	0x210
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x54
	.byte	0x24
	.4byte	0x3d5
	.2byte	0x410
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x56
	.byte	0x13
	.4byte	0x177
	.2byte	0x490
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x57
	.byte	0x13
	.4byte	0x177
	.2byte	0x498
	.byte	0
	.uleb128 0x3
	.4byte	0x2b0
	.uleb128 0x3
	.4byte	0x8e
	.uleb128 0x3
	.4byte	0x2b5
	.uleb128 0x12
	.4byte	0x2b
	.4byte	0x39e
	.uleb128 0x1
	.4byte	0x2d3
	.uleb128 0x1
	.4byte	0x376
	.uleb128 0x1
	.4byte	0x39e
	.byte	0
	.uleb128 0x3
	.4byte	0x1e2
	.uleb128 0x3
	.4byte	0x385
	.uleb128 0xb
	.4byte	0x8e
	.4byte	0x3b7
	.uleb128 0xc
	.4byte	0x3e
	.byte	0
	.uleb128 0xb
	.4byte	0x124
	.4byte	0x3c6
	.uleb128 0xc
	.4byte	0x3e
	.byte	0
	.uleb128 0xb
	.4byte	0x23b
	.4byte	0x3d5
	.uleb128 0xc
	.4byte	0x3e
	.byte	0
	.uleb128 0xb
	.4byte	0x376
	.4byte	0x3e4
	.uleb128 0xc
	.4byte	0x3e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x24
	.byte	0x7
	.byte	0x5a
	.4byte	0x458
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x7
	.byte	0x5b
	.byte	0x13
	.4byte	0x177
	.byte	0
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x7
	.byte	0x62
	.byte	0xd
	.4byte	0x74
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x7
	.byte	0x64
	.byte	0x12
	.4byte	0x3e
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x7
	.byte	0x65
	.byte	0x12
	.4byte	0x3e
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x7
	.byte	0x66
	.byte	0x9
	.4byte	0x2b
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x7
	.byte	0x67
	.byte	0xe
	.4byte	0x8e
	.byte	0x18
	.uleb128 0x8
	.string	"cb"
	.byte	0x7
	.byte	0x68
	.byte	0xc
	.4byte	0x472
	.byte	0x1c
	.uleb128 0x8
	.string	"arg"
	.byte	0x7
	.byte	0x69
	.byte	0xb
	.4byte	0xb8
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.4byte	0x46d
	.uleb128 0x1
	.4byte	0x2d3
	.uleb128 0x1
	.4byte	0x46d
	.uleb128 0x1
	.4byte	0xb8
	.byte	0
	.uleb128 0x3
	.4byte	0x3e4
	.uleb128 0x3
	.4byte	0x458
	.uleb128 0x5
	.4byte	.LASF65
	.byte	0x8
	.byte	0x23
	.byte	0x10
	.4byte	0xa8
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x2c
	.byte	0x1
	.byte	0x2e
	.4byte	0x4b6
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x1
	.byte	0x2f
	.byte	0x17
	.4byte	0x3e4
	.byte	0
	.uleb128 0x8
	.string	"cb"
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.4byte	0x477
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x1
	.byte	0x31
	.byte	0xb
	.4byte	0xb8
	.byte	0x28
	.byte	0
	.uleb128 0x21
	.4byte	.LASF70
	.byte	0x1
	.byte	0x34
	.byte	0x1a
	.4byte	0x4c8
	.uleb128 0x5
	.byte	0x3
	.4byte	trigger
	.uleb128 0x3
	.4byte	0x483
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x7
	.byte	0x76
	.4byte	0x4f7
	.uleb128 0x1
	.4byte	0x46d
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0x4f7
	.uleb128 0x1
	.4byte	0xb8
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x8e
	.byte	0
	.uleb128 0x3
	.4byte	0x4fc
	.uleb128 0xe
	.4byte	0x511
	.uleb128 0x1
	.4byte	0x2d3
	.uleb128 0x1
	.4byte	0x46d
	.uleb128 0x1
	.4byte	0xb8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x7
	.byte	0x75
	.4byte	0x527
	.uleb128 0x1
	.4byte	0x46d
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0xa
	.byte	0x21
	.byte	0x8
	.4byte	0xb8
	.4byte	0x547
	.uleb128 0x1
	.4byte	0xb8
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x9
	.byte	0x9e
	.4byte	0x559
	.uleb128 0x1
	.4byte	0xf4
	.uleb128 0x22
	.byte	0
	.uleb128 0x13
	.4byte	.LASF74
	.2byte	0x54c
	.4byte	0xc6
	.uleb128 0x13
	.4byte	.LASF75
	.2byte	0x55d
	.4byte	0xc6
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0xb
	.byte	0xa3
	.byte	0x7
	.4byte	0xb8
	.4byte	0x585
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0xc
	.byte	0x27
	.4byte	0x59b
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0x8e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x7
	.byte	0x79
	.4byte	0x5ac
	.uleb128 0x1
	.4byte	0x46d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0xc
	.byte	0x2c
	.byte	0x5
	.4byte	0x2b
	.4byte	0x5c7
	.uleb128 0x1
	.4byte	0x376
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0xc
	.byte	0x2d
	.byte	0x5
	.4byte	0x2b
	.4byte	0x5dd
	.uleb128 0x1
	.4byte	0x46d
	.byte	0
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x83
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.4byte	.LASF92
	.byte	0x1
	.byte	0x6c
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63d
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0x6c
	.byte	0x2a
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"cb"
	.byte	0x6c
	.byte	0x44
	.4byte	0x477
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0x6c
	.byte	0x4e
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.4byte	0x752
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x72
	.byte	0x59
	.byte	0
	.uleb128 0x25
	.4byte	.LASF84
	.byte	0x1
	.byte	0x63
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x5e
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.4byte	.LASF93
	.byte	0x1
	.byte	0x55
	.byte	0xd
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ae
	.uleb128 0x6
	.4byte	.LASF86
	.byte	0x55
	.byte	0x3e
	.4byte	0x2d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x55
	.byte	0x67
	.4byte	0x46d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"arg"
	.byte	0x55
	.byte	0x74
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x57
	.byte	0x1e
	.4byte	0x4c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.4byte	.LASF94
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF95
	.byte	0x1
	.byte	0x45
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f0
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x47
	.byte	0x2a
	.4byte	0x2b0
	.uleb128 0x5
	.byte	0x3
	.4byte	_pwm_bloop_handler_holder.0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF96
	.byte	0x1
	.byte	0x36
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x752
	.uleb128 0x6
	.4byte	.LASF86
	.byte	0x36
	.byte	0x3c
	.4byte	0x2d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF88
	.byte	0x36
	.byte	0x71
	.4byte	0x376
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF89
	.byte	0x36
	.byte	0x94
	.4byte	0x37b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x36
	.byte	0xaa
	.4byte	0x37b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.string	"map"
	.byte	0x1
	.byte	0x38
	.byte	0xe
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF97
	.byte	0x2
	.byte	0xb3
	.byte	0x3a
	.4byte	0xba
	.byte	0x3
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 31
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.sleb128 6
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
	.sleb128 7
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
	.uleb128 0x14
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
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.4byte	0x54
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
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
	.byte	0x7
	.4byte	.LFB27
	.uleb128 .LFE27-.LFB27
	.byte	0x7
	.4byte	.LFB28
	.uleb128 .LFE28-.LFB28
	.byte	0x7
	.4byte	.LFB29
	.uleb128 .LFE29-.LFB29
	.byte	0x7
	.4byte	.LFB30
	.uleb128 .LFE30-.LFB30
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"header"
.LASF62:
	.string	"time_target"
.LASF59:
	.string	"loop_timer"
.LASF89:
	.string	"bitmap_evt"
.LASF41:
	.string	"time_max"
.LASF55:
	.string	"statistic"
.LASF21:
	.string	"utils_list"
.LASF6:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF32:
	.string	"container"
.LASF18:
	.string	"TaskHandle_t"
.LASF96:
	.string	"_pwm_bloop_evt"
.LASF34:
	.string	"loop_msg"
.LASF4:
	.string	"long double"
.LASF48:
	.string	"looper"
.LASF88:
	.string	"handler"
.LASF93:
	.string	"_cb_pwm_trigger"
.LASF44:
	.string	"loop_evt_handler"
.LASF69:
	.string	"TrapNetCounter"
.LASF10:
	.string	"uint8_t"
.LASF67:
	.string	"timer"
.LASF73:
	.string	"bl_printk"
.LASF66:
	.string	"pwm_trigger_item"
.LASF97:
	.string	"xPortIsInsideInterrupt"
.LASF30:
	.string	"id_msg"
.LASF79:
	.string	"bloop_timer_repeat_enable"
.LASF95:
	.string	"loopset_pwm_hook_on_looprt"
.LASF36:
	.string	"arg1"
.LASF82:
	.string	"timeon_ms"
.LASF3:
	.string	"long long int"
.LASF17:
	.string	"TickType_t"
.LASF76:
	.string	"memset"
.LASF87:
	.string	"_pwm_bloop_handler_holder"
.LASF40:
	.string	"loop_evt_handler_statistic"
.LASF29:
	.string	"id_dst"
.LASF53:
	.string	"evt_type_map_sync"
.LASF8:
	.string	"int32_t"
.LASF91:
	.string	"tskTaskControlBlock"
.LASF74:
	.string	"xTaskGetTickCount"
.LASF38:
	.string	"time_added"
.LASF45:
	.string	"name"
.LASF94:
	.string	"loopset_pwm_hook_off_looprt"
.LASF80:
	.string	"looprt_handler_register"
.LASF63:
	.string	"idx_task"
.LASF11:
	.string	"unsigned char"
.LASF58:
	.string	"timer_dued"
.LASF86:
	.string	"loop"
.LASF5:
	.string	"signed char"
.LASF61:
	.string	"flags"
.LASF15:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF56:
	.string	"handlers"
.LASF2:
	.string	"unsigned int"
.LASF68:
	.string	"p_arg"
.LASF16:
	.string	"BaseType_t"
.LASF31:
	.string	"id_src"
.LASF24:
	.string	"last"
.LASF70:
	.string	"trigger"
.LASF51:
	.string	"bitmap_msg"
.LASF42:
	.string	"time_accumulated"
.LASF12:
	.string	"short unsigned int"
.LASF84:
	.string	"loopset_pwm_trigger_start"
.LASF19:
	.string	"char"
.LASF9:
	.string	"long int"
.LASF52:
	.string	"evt_type_map_async"
.LASF54:
	.string	"list"
.LASF90:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF81:
	.string	"looprt_timer_register"
.LASF72:
	.string	"bloop_timer_init"
.LASF92:
	.string	"loopset_pwm_trigger_on"
.LASF25:
	.string	"utils_dlist_s"
.LASF14:
	.string	"long unsigned int"
.LASF85:
	.string	"loopset_pwm_trigger_stop"
.LASF57:
	.string	"timer_dlist"
.LASF46:
	.string	"handle"
.LASF75:
	.string	"xTaskGetTickCountFromISR"
.LASF71:
	.string	"bloop_timer_configure"
.LASF39:
	.string	"time_consumed"
.LASF78:
	.string	"looprt_evt_notify_async"
.LASF35:
	.string	"item"
.LASF43:
	.string	"count_triggered"
.LASF64:
	.string	"evt_type_map"
.LASF27:
	.string	"utils_dlist_t"
.LASF28:
	.string	"priority"
.LASF65:
	.string	"loopset_func_t"
.LASF37:
	.string	"arg2"
.LASF83:
	.string	"loopset_pwm_trigger_off"
.LASF26:
	.string	"prev"
.LASF77:
	.string	"pvPortMalloc"
.LASF60:
	.string	"dlist_item"
.LASF20:
	.string	"utils_list_hdr"
.LASF49:
	.string	"bitmap_evt_async"
.LASF22:
	.string	"next"
.LASF50:
	.string	"bitmap_evt_sync"
.LASF23:
	.string	"first"
.LASF47:
	.string	"loop_ctx"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src/loopset_pwm.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/loopset"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
