	.file	"loopset_led.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/loopset" "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src/loopset_led.c"
	.section	.text.__utils_dlist_add,"ax",@progbits
	.align	1
	.type	__utils_dlist_add, @function
__utils_dlist_add:
.LFB9:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_list.h"
	.loc 1 286 1
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
	.loc 1 287 16
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,4(a5)
	.loc 1 288 16
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 290 16
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	sw	a4,4(a5)
	.loc 1 291 16
	lw	a5,-28(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 292 1
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
.LFE9:
	.size	__utils_dlist_add, .-__utils_dlist_add
	.section	.text.utils_dlist_add,"ax",@progbits
	.align	1
	.type	utils_dlist_add, @function
utils_dlist_add:
.LFB10:
	.loc 1 306 1
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
	.loc 1 307 41
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 307 5
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	__utils_dlist_add
	.loc 1 308 1
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
.LFE10:
	.size	utils_dlist_add, .-utils_dlist_add
	.section	.text.utils_dlist_del,"ax",@progbits
	.align	1
	.type	utils_dlist_del, @function
utils_dlist_del:
.LFB12:
	.loc 1 316 1
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
	.loc 1 317 20
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 318 20
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 320 16
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	.loc 1 321 16
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 322 1
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
.LFE12:
	.size	utils_dlist_del, .-utils_dlist_del
	.section	.text.INIT_UTILS_DLIST_HEAD,"ax",@progbits
	.align	1
	.type	INIT_UTILS_DLIST_HEAD, @function
INIT_UTILS_DLIST_HEAD:
.LFB14:
	.loc 1 330 1
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
	.loc 1 331 16
	lw	a5,-20(s0)
	lw	a4,-20(s0)
	sw	a4,4(a5)
	.loc 1 332 16
	lw	a5,-20(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 333 1
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
.LFE14:
	.size	INIT_UTILS_DLIST_HEAD, .-INIT_UTILS_DLIST_HEAD
	.section	.bss.led_ctx,"aw",@nobits
	.align	2
	.type	led_ctx, @object
	.size	led_ctx, 16
led_ctx:
	.zero	16
	.section	.text._waiting_queue_handle,"ax",@progbits
	.align	1
	.type	_waiting_queue_handle, @function
_waiting_queue_handle:
.LFB23:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src/loopset_led.c"
	.loc 2 66 1
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
	.loc 2 70 15
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-24(s0)
	.loc 2 70 174
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 2 70 217
	beq	a5,zero,.L6
	.loc 2 70 204 discriminator 1
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 2 70 151 discriminator 1
	lw	a5,4(a5)
	sw	a5,-20(s0)
	j	.L8
.L6:
	.loc 2 70 151 is_stmt 0 discriminator 2
	sw	zero,-20(s0)
	.loc 2 70 5 is_stmt 1
	j	.L8
.L11:
	.loc 2 76 9
	lw	a5,-24(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	looprt_timer_register
	.loc 2 77 9
	lw	a5,-24(s0)
	mv	a0,a5
	call	utils_dlist_del
	.loc 2 78 9
	lw	a5,-24(s0)
	lw	a4,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	utils_dlist_add
	.loc 2 70 55 discriminator 7
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 2 70 185 discriminator 7
	lw	a5,-20(s0)
	beq	a5,zero,.L9
	.loc 2 70 167 discriminator 3
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	j	.L8
.L9:
	.loc 2 70 167 is_stmt 0 discriminator 4
	sw	zero,-20(s0)
.L8:
	.loc 2 70 6 is_stmt 1 discriminator 6
	lw	a4,-24(s0)
	.loc 2 70 28 discriminator 6
	lw	a5,-36(s0)
	addi	a5,a5,8
	.loc 2 70 24 discriminator 6
	bne	a4,a5,.L11
	.loc 2 80 1
	nop
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
.LFE23:
	.size	_waiting_queue_handle, .-_waiting_queue_handle
	.section	.rodata
	.align	2
.LC0:
	.string	"loopset_led.c"
	.align	2
.LC1:
	.string	"[ASSERT] [ERR] %s:%d\r\n"
	.section	.text._led_bloop_evt,"ax",@progbits
	.align	1
	.type	_led_bloop_evt, @function
_led_bloop_evt:
.LFB24:
	.loc 2 83 1
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
	.loc 2 84 14
	lw	a5,-48(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 2 85 37
	lw	a5,-40(s0)
	sw	a5,-24(s0)
.L13:
	.loc 2 88 13
	lw	a5,-20(s0)
	andi	a5,a5,1
	.loc 2 88 8
	beq	a5,zero,.L14
	.loc 2 89 13
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	j	.L15
.L14:
	.loc 2 90 20
	lw	a5,-20(s0)
	andi	a5,a5,2
	.loc 2 90 15
	beq	a5,zero,.L16
	.loc 2 91 9
	lw	a5,-24(s0)
	lw	a5,12(a5)
	mv	a0,a5
	call	_waiting_queue_handle
	.loc 2 92 13
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
	j	.L15
.L16:
	.loc 2 94 17
	lw	a5,-20(s0)
	beq	a5,zero,.L15
	.loc 2 94 33 discriminator 1
	li	a2,94
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L17:
	.loc 2 94 96
	nop
	j	.L17
.L15:
	.loc 2 97 8
	lw	a5,-20(s0)
	beq	a5,zero,.L18
	.loc 2 98 9
	j	.L13
.L18:
	.loc 2 101 19
	lw	a5,-48(s0)
	sw	zero,0(a5)
	.loc 2 102 12
	li	a5,0
	.loc 2 103 1
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
.LFE24:
	.size	_led_bloop_evt, .-_led_bloop_evt
	.section	.text._led_bloop_msg,"ax",@progbits
	.align	1
	.type	_led_bloop_msg, @function
_led_bloop_msg:
.LFB25:
	.loc 2 106 1
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
	.loc 2 121 12
	li	a5,0
	.loc 2 122 1
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
.LFE25:
	.size	_led_bloop_msg, .-_led_bloop_msg
	.section	.text.loopset_led_hook_on_looprt,"ax",@progbits
	.align	1
	.globl	loopset_led_hook_on_looprt
	.type	loopset_led_hook_on_looprt, @function
loopset_led_hook_on_looprt:
.LFB26:
	.loc 2 125 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 135 5
	lui	a5,%hi(led_ctx)
	addi	a0,a5,%lo(led_ctx)
	call	INIT_UTILS_DLIST_HEAD
	.loc 2 136 5
	lui	a5,%hi(led_ctx+8)
	addi	a0,a5,%lo(led_ctx+8)
	call	INIT_UTILS_DLIST_HEAD
	.loc 2 138 12
	li	a1,1
	lui	a5,%hi(_led_bloop_handler_holder.0)
	addi	a0,a5,%lo(_led_bloop_handler_holder.0)
	call	looprt_handler_register
	mv	a5,a0
	.loc 2 139 1
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
.LFE26:
	.size	loopset_led_hook_on_looprt, .-loopset_led_hook_on_looprt
	.section	.text._cb_led_trigger,"ax",@progbits
	.align	1
	.type	_cb_led_trigger, @function
_cb_led_trigger:
.LFB27:
	.loc 2 142 1
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
	.loc 2 143 30
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	.loc 2 145 31
	lw	a5,-20(s0)
	lw	a5,48(a5)
	.loc 2 145 5
	andi	a4,a5,0xff
	.loc 2 145 45
	lw	a5,-20(s0)
	lw	a5,56(a5)
	.loc 2 145 5
	snez	a5,a5
	andi	a5,a5,0xff
	mv	a1,a5
	mv	a0,a4
	call	bl_gpio_output_set
	.loc 2 150 37
	lw	a5,-20(s0)
	lw	a5,56(a5)
	.loc 2 150 28
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 150 26
	lw	a5,-20(s0)
	sw	a4,56(a5)
	.loc 2 151 1
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
.LFE27:
	.size	_cb_led_trigger, .-_cb_led_trigger
	.section	.rodata
	.align	2
.LC2:
	.string	"\033[35mASSERT\033[0m"
	.align	2
.LC3:
	.string	"[%10u][%s: %s:%4d] ASSERT: %s:%d\r\n"
	.section	.text.loopset_led_trigger,"ax",@progbits
	.align	1
	.globl	loopset_led_trigger
	.type	loopset_led_trigger, @function
loopset_led_trigger:
.LFB28:
	.loc 2 154 1
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
	.loc 2 157 15
	li	a0,60
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 2 158 13
	lw	a5,-20(s0)
	bne	a5,zero,.L26
.LBB4:
.LBB5:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE5:
.LBE4:
	.loc 2 158 35 discriminator 2
	beq	a5,zero,.L28
	.loc 2 158 116 discriminator 3
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L29
.L28:
	.loc 2 158 145 discriminator 4
	call	xTaskGetTickCount
	mv	a1,a0
.L29:
	.loc 2 158 35 discriminator 8
	li	a6,158
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	li	a4,158
	lui	a3,%hi(.LC0)
	addi	a3,a3,%lo(.LC0)
	lui	a2,%hi(.LC2)
	addi	a2,a2,%lo(.LC2)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	bl_printk
.L30:
	.loc 2 158 260
	nop
	j	.L30
.L26:
	.loc 2 159 5
	li	a2,60
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 2 160 18
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,48(a5)
	.loc 2 162 5
	lw	a5,-20(s0)
	addi	a5,a5,8
	li	a1,0
	mv	a0,a5
	call	bloop_timer_init
	.loc 2 163 5
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	bloop_timer_repeat_enable
	.loc 2 164 5
	lw	a5,-20(s0)
	addi	a0,a5,8
	li	a5,1
	li	a4,1
	lw	a3,-20(s0)
	lui	a2,%hi(_cb_led_trigger)
	addi	a2,a2,%lo(_cb_led_trigger)
	lw	a1,-40(s0)
	call	bloop_timer_configure
	.loc 2 170 5
	lw	a5,-36(s0)
	andi	a5,a5,0xff
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	bl_gpio_enable_output
	.loc 2 172 5
	call	vTaskEnterCritical
	.loc 2 173 5
	lw	a4,-20(s0)
	lui	a5,%hi(led_ctx+8)
	addi	a1,a5,%lo(led_ctx+8)
	mv	a0,a4
	call	utils_dlist_add
	.loc 2 174 5
	call	vTaskExitCritical
	.loc 2 176 5
	li	a1,2
	li	a0,1
	call	looprt_evt_notify_async
	.loc 2 177 1
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
.LFE28:
	.size	loopset_led_trigger, .-loopset_led_trigger
	.section	.rodata
	.align	2
.LC4:
	.string	"Led Trigger"
	.section	.rodata._led_bloop_handler_holder.0,"a"
	.align	2
	.type	_led_bloop_handler_holder.0, @object
	.size	_led_bloop_handler_holder.0, 16
_led_bloop_handler_holder.0:
	.word	.LC4
	.word	_led_bloop_evt
	.word	_led_bloop_msg
	.word	led_ctx
	.text
.Letext0:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/bloop/include/bloop.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/looprt/include/looprt.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_gpio.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x961
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1d
	.4byte	.LASF108
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1e
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x4
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
	.uleb128 0x7
	.4byte	.LASF8
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x6d
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x5
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
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x5
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
	.uleb128 0x1f
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0x3f
	.byte	0x11
	.4byte	0x61
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x8e
	.uleb128 0x20
	.4byte	.LASF109
	.byte	0x3
	.byte	0x5c
	.byte	0x13
	.4byte	0xaa
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x6
	.byte	0x46
	.byte	0x25
	.4byte	0xda
	.uleb128 0x3
	.4byte	0xdf
	.uleb128 0x21
	.4byte	.LASF110
	.uleb128 0x3
	.4byte	0xf5
	.uleb128 0x22
	.4byte	0xe4
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x11
	.4byte	0xee
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x4
	.byte	0x1
	.byte	0x26
	.4byte	0x114
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x1
	.byte	0x28
	.byte	0x1c
	.4byte	0x114
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	0xfa
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x8
	.byte	0x1
	.byte	0x2b
	.4byte	0x140
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2e
	.byte	0x1c
	.4byte	0x114
	.byte	0
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x1
	.byte	0x30
	.byte	0x1c
	.4byte	0x114
	.byte	0x4
	.byte	0
	.uleb128 0x23
	.4byte	.LASF25
	.byte	0x8
	.byte	0x1
	.2byte	0x118
	.byte	0x10
	.4byte	0x167
	.uleb128 0x13
	.4byte	.LASF26
	.2byte	0x119
	.4byte	0x167
	.byte	0
	.uleb128 0x13
	.4byte	.LASF22
	.2byte	0x11a
	.4byte	0x167
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	0x140
	.uleb128 0x24
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x11b
	.byte	0x3
	.4byte	0x140
	.uleb128 0x25
	.byte	0x4
	.byte	0x7
	.byte	0x2e
	.byte	0x9
	.4byte	0x1b7
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x7
	.byte	0x2f
	.byte	0x15
	.4byte	0x74
	.byte	0
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x7
	.byte	0x30
	.byte	0x15
	.4byte	0x74
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x7
	.byte	0x31
	.byte	0x15
	.4byte	0x74
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x7
	.byte	0x32
	.byte	0x15
	.4byte	0x74
	.byte	0x3
	.byte	0
	.uleb128 0x26
	.byte	0x4
	.byte	0x7
	.byte	0x2c
	.byte	0x5
	.4byte	0x1d7
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x2d
	.byte	0xf
	.4byte	0xa8
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x33
	.byte	0xb
	.4byte	0x179
	.byte	0
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x18
	.byte	0x7
	.byte	0x2a
	.4byte	0x230
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x7
	.byte	0x2b
	.byte	0x1b
	.4byte	0xfa
	.byte	0
	.uleb128 0xa
	.string	"u"
	.byte	0x7
	.byte	0x34
	.byte	0x7
	.4byte	0x1b7
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x7
	.byte	0x35
	.byte	0xb
	.4byte	0xa8
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x7
	.byte	0x36
	.byte	0xb
	.4byte	0xa8
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x7
	.byte	0x37
	.byte	0x12
	.4byte	0x3e
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x7
	.byte	0x38
	.byte	0x12
	.4byte	0x3e
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	.LASF40
	.byte	0x10
	.byte	0x7
	.byte	0x3b
	.4byte	0x271
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x7
	.byte	0x3c
	.byte	0x12
	.4byte	0x3e
	.byte	0
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3d
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x7
	.byte	0x3e
	.byte	0x12
	.4byte	0x3e
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x7
	.byte	0x3f
	.byte	0x12
	.4byte	0x3e
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0xc
	.byte	0x7
	.byte	0x42
	.4byte	0x2a5
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x7
	.byte	0x43
	.byte	0x11
	.4byte	0xe4
	.byte	0
	.uleb128 0xa
	.string	"evt"
	.byte	0x7
	.byte	0x44
	.byte	0xb
	.4byte	0x375
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x7
	.byte	0x45
	.byte	0xb
	.4byte	0x398
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	0x271
	.uleb128 0x15
	.4byte	0x2b
	.4byte	0x2c8
	.uleb128 0x2
	.4byte	0x2c8
	.uleb128 0x2
	.4byte	0x36b
	.uleb128 0x2
	.4byte	0x370
	.uleb128 0x2
	.4byte	0x370
	.byte	0
	.uleb128 0x3
	.4byte	0x2cd
	.uleb128 0x27
	.4byte	.LASF47
	.2byte	0x4a0
	.byte	0x7
	.byte	0x4b
	.byte	0x8
	.4byte	0x36b
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x7
	.byte	0x4c
	.byte	0x12
	.4byte	0xce
	.byte	0
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x7
	.byte	0x4d
	.byte	0xe
	.4byte	0x8e
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x7
	.byte	0x4e
	.byte	0xe
	.4byte	0x8e
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x7
	.byte	0x4f
	.byte	0xe
	.4byte	0x8e
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x7
	.byte	0x50
	.byte	0xe
	.4byte	0x39d
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x7
	.byte	0x51
	.byte	0xe
	.4byte	0x39d
	.byte	0x90
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x52
	.byte	0x17
	.4byte	0x3ac
	.2byte	0x110
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x53
	.byte	0x27
	.4byte	0x3bb
	.2byte	0x210
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x54
	.byte	0x24
	.4byte	0x3ca
	.2byte	0x410
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x56
	.byte	0x13
	.4byte	0x16c
	.2byte	0x490
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x57
	.byte	0x13
	.4byte	0x16c
	.2byte	0x498
	.byte	0
	.uleb128 0x3
	.4byte	0x2a5
	.uleb128 0x3
	.4byte	0x8e
	.uleb128 0x3
	.4byte	0x2aa
	.uleb128 0x15
	.4byte	0x2b
	.4byte	0x393
	.uleb128 0x2
	.4byte	0x2c8
	.uleb128 0x2
	.4byte	0x36b
	.uleb128 0x2
	.4byte	0x393
	.byte	0
	.uleb128 0x3
	.4byte	0x1d7
	.uleb128 0x3
	.4byte	0x37a
	.uleb128 0xe
	.4byte	0x8e
	.4byte	0x3ac
	.uleb128 0xf
	.4byte	0x3e
	.byte	0
	.uleb128 0xe
	.4byte	0x119
	.4byte	0x3bb
	.uleb128 0xf
	.4byte	0x3e
	.byte	0
	.uleb128 0xe
	.4byte	0x230
	.4byte	0x3ca
	.uleb128 0xf
	.4byte	0x3e
	.byte	0
	.uleb128 0xe
	.4byte	0x36b
	.4byte	0x3d9
	.uleb128 0xf
	.4byte	0x3e
	.byte	0
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0x24
	.byte	0x7
	.byte	0x5a
	.4byte	0x44d
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x7
	.byte	0x5b
	.byte	0x13
	.4byte	0x16c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x7
	.byte	0x62
	.byte	0xd
	.4byte	0x74
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x7
	.byte	0x64
	.byte	0x12
	.4byte	0x3e
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x7
	.byte	0x65
	.byte	0x12
	.4byte	0x3e
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x7
	.byte	0x66
	.byte	0x9
	.4byte	0x2b
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x7
	.byte	0x67
	.byte	0xe
	.4byte	0x8e
	.byte	0x18
	.uleb128 0xa
	.string	"cb"
	.byte	0x7
	.byte	0x68
	.byte	0xc
	.4byte	0x467
	.byte	0x1c
	.uleb128 0xa
	.string	"arg"
	.byte	0x7
	.byte	0x69
	.byte	0xb
	.4byte	0xa8
	.byte	0x20
	.byte	0
	.uleb128 0x16
	.4byte	0x462
	.uleb128 0x2
	.4byte	0x2c8
	.uleb128 0x2
	.4byte	0x462
	.uleb128 0x2
	.4byte	0xa8
	.byte	0
	.uleb128 0x3
	.4byte	0x3d9
	.uleb128 0x3
	.4byte	0x44d
	.uleb128 0x5
	.4byte	.LASF65
	.byte	0x10
	.byte	0x2
	.byte	0x2f
	.4byte	0x493
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x2
	.byte	0x30
	.byte	0x13
	.4byte	0x16c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x2
	.byte	0x31
	.byte	0x13
	.4byte	0x16c
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF68
	.byte	0x3c
	.byte	0x2
	.byte	0x33
	.4byte	0x4ee
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x2
	.byte	0x34
	.byte	0x13
	.4byte	0x16c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x2
	.byte	0x35
	.byte	0x17
	.4byte	0x3d9
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x2
	.byte	0x36
	.byte	0x9
	.4byte	0x2b
	.byte	0x2c
	.uleb128 0xa
	.string	"pin"
	.byte	0x2
	.byte	0x37
	.byte	0x9
	.4byte	0x2b
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x2
	.byte	0x37
	.byte	0xe
	.4byte	0x2b
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x2
	.byte	0x38
	.byte	0x9
	.4byte	0x2b
	.byte	0x38
	.byte	0
	.uleb128 0x5
	.4byte	.LASF73
	.byte	0x10
	.byte	0x2
	.byte	0x3b
	.4byte	0x515
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x2
	.byte	0x3c
	.byte	0x23
	.4byte	0x2a5
	.byte	0
	.uleb128 0xa
	.string	"ctx"
	.byte	0x2
	.byte	0x3d
	.byte	0x1d
	.4byte	0x51a
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.4byte	0x4ee
	.uleb128 0x3
	.4byte	0x46c
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x3f
	.byte	0x1f
	.4byte	0x46c
	.uleb128 0x5
	.byte	0x3
	.4byte	led_ctx
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x8
	.byte	0x27
	.4byte	0x546
	.uleb128 0x2
	.4byte	0x3e
	.uleb128 0x2
	.4byte	0x8e
	.byte	0
	.uleb128 0x17
	.4byte	.LASF75
	.byte	0x67
	.uleb128 0x17
	.4byte	.LASF76
	.byte	0x66
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0x9
	.byte	0x2c
	.byte	0x5
	.4byte	0x2b
	.4byte	0x572
	.uleb128 0x2
	.4byte	0x74
	.uleb128 0x2
	.4byte	0x74
	.uleb128 0x2
	.4byte	0x74
	.byte	0
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x7
	.byte	0x76
	.4byte	0x59c
	.uleb128 0x2
	.4byte	0x462
	.uleb128 0x2
	.4byte	0x3e
	.uleb128 0x2
	.4byte	0x59c
	.uleb128 0x2
	.4byte	0xa8
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x8e
	.byte	0
	.uleb128 0x3
	.4byte	0x5a1
	.uleb128 0x16
	.4byte	0x5b6
	.uleb128 0x2
	.4byte	0x2c8
	.uleb128 0x2
	.4byte	0x462
	.uleb128 0x2
	.4byte	0xa8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x7
	.byte	0x79
	.4byte	0x5c7
	.uleb128 0x2
	.4byte	0x462
	.byte	0
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x7
	.byte	0x75
	.4byte	0x5dd
	.uleb128 0x2
	.4byte	0x462
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0xa
	.byte	0x21
	.byte	0x8
	.4byte	0xa8
	.4byte	0x5fd
	.uleb128 0x2
	.4byte	0xa8
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0xb
	.byte	0x9e
	.4byte	0x60f
	.uleb128 0x2
	.4byte	0xe4
	.uleb128 0x18
	.byte	0
	.uleb128 0x19
	.4byte	.LASF84
	.2byte	0x54c
	.4byte	0xb6
	.uleb128 0x19
	.4byte	.LASF85
	.2byte	0x55d
	.4byte	0xb6
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0xc
	.byte	0xa3
	.byte	0x7
	.4byte	0xa8
	.4byte	0x63b
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x9
	.byte	0x2e
	.byte	0x5
	.4byte	0x2b
	.4byte	0x656
	.uleb128 0x2
	.4byte	0x74
	.uleb128 0x2
	.4byte	0x74
	.byte	0
	.uleb128 0x8
	.4byte	.LASF88
	.byte	0x8
	.byte	0x2c
	.byte	0x5
	.4byte	0x2b
	.4byte	0x671
	.uleb128 0x2
	.4byte	0x36b
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0x8
	.byte	0x2d
	.byte	0x5
	.4byte	0x2b
	.4byte	0x687
	.uleb128 0x2
	.4byte	0x462
	.byte	0
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0xd
	.byte	0xce
	.byte	0x5
	.4byte	0x2b
	.4byte	0x69e
	.uleb128 0x2
	.4byte	0xe9
	.uleb128 0x18
	.byte	0
	.uleb128 0x28
	.4byte	.LASF111
	.byte	0x2
	.byte	0x99
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ef
	.uleb128 0x10
	.string	"pin"
	.byte	0x99
	.byte	0x1e
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x99
	.byte	0x30
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x9b
	.byte	0x1e
	.4byte	0x6ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.4byte	0x957
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x2
	.byte	0x9e
	.byte	0x59
	.byte	0
	.uleb128 0x3
	.4byte	0x493
	.uleb128 0x1a
	.4byte	.LASF100
	.byte	0x8d
	.byte	0xd
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x742
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0x8d
	.byte	0x3e
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF69
	.byte	0x8d
	.byte	0x67
	.4byte	0x462
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"arg"
	.byte	0x8d
	.byte	0x74
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x8f
	.byte	0x1e
	.4byte	0x6ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF112
	.byte	0x2
	.byte	0x7c
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x76e
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x7e
	.byte	0x31
	.4byte	0x515
	.uleb128 0x5
	.byte	0x3
	.4byte	_led_bloop_handler_holder.0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF96
	.byte	0x2
	.byte	0x69
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b3
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0x69
	.byte	0x3c
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0x69
	.byte	0x71
	.4byte	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"msg"
	.byte	0x69
	.byte	0x9b
	.4byte	0x393
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF97
	.byte	0x2
	.byte	0x52
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82e
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0x52
	.byte	0x3c
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0x52
	.byte	0x61
	.4byte	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0x52
	.byte	0x84
	.4byte	0x370
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x52
	.byte	0x9a
	.4byte	0x370
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"map"
	.byte	0x54
	.byte	0xe
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF99
	.byte	0x55
	.byte	0x25
	.4byte	0x82e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.4byte	.LASF113
	.byte	0x2
	.byte	0x57
	.byte	0x1
	.4byte	.L13
	.byte	0
	.uleb128 0x3
	.4byte	0x4ee
	.uleb128 0x1a
	.4byte	.LASF101
	.byte	0x41
	.byte	0x14
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x873
	.uleb128 0x10
	.string	"ctx"
	.byte	0x41
	.byte	0x42
	.4byte	0x51a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.string	"tmp"
	.byte	0x43
	.byte	0x14
	.4byte	0x873
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF102
	.byte	0x44
	.byte	0x1e
	.4byte	0x6ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.4byte	0x16c
	.uleb128 0x12
	.4byte	.LASF103
	.2byte	0x149
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89d
	.uleb128 0x9
	.4byte	.LASF54
	.2byte	0x149
	.byte	0x39
	.4byte	0x873
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF104
	.2byte	0x13b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8de
	.uleb128 0x9
	.4byte	.LASF102
	.2byte	0x13b
	.byte	0x33
	.4byte	0x873
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.4byte	.LASF26
	.2byte	0x13d
	.4byte	0x873
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.4byte	.LASF22
	.2byte	0x13e
	.4byte	0x873
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x131
	.byte	0x14
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x914
	.uleb128 0x9
	.4byte	.LASF102
	.2byte	0x131
	.byte	0x33
	.4byte	0x873
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF106
	.2byte	0x131
	.byte	0x48
	.4byte	0x873
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF107
	.2byte	0x11d
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x957
	.uleb128 0x9
	.4byte	.LASF102
	.2byte	0x11d
	.byte	0x35
	.4byte	0x873
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF26
	.2byte	0x11d
	.byte	0x4a
	.4byte	0x873
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF22
	.2byte	0x11d
	.byte	0x5f
	.4byte	0x873
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF114
	.byte	0x3
	.byte	0xb3
	.byte	0x3a
	.4byte	0xaa
	.byte	0x3
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
	.sleb128 2
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 31
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2f
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
	.4byte	0x64
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
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
	.4byte	.LFB12
	.uleb128 .LFE12-.LFB12
	.byte	0x7
	.4byte	.LFB14
	.uleb128 .LFE14-.LFB14
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"header"
.LASF100:
	.string	"_cb_led_trigger"
.LASF105:
	.string	"utils_dlist_add"
.LASF62:
	.string	"time_target"
.LASF59:
	.string	"loop_timer"
.LASF98:
	.string	"bitmap_evt"
.LASF41:
	.string	"time_max"
.LASF55:
	.string	"statistic"
.LASF92:
	.string	"led_ctx"
.LASF21:
	.string	"utils_list"
.LASF6:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF107:
	.string	"__utils_dlist_add"
.LASF32:
	.string	"container"
.LASF18:
	.string	"TaskHandle_t"
.LASF73:
	.string	"loop_evt_handler_holder"
.LASF34:
	.string	"loop_msg"
.LASF4:
	.string	"long double"
.LASF97:
	.string	"_led_bloop_evt"
.LASF48:
	.string	"looper"
.LASF43:
	.string	"count_triggered"
.LASF71:
	.string	"active"
.LASF74:
	.string	"handler"
.LASF76:
	.string	"vTaskEnterCritical"
.LASF111:
	.string	"loopset_led_trigger"
.LASF66:
	.string	"trigger_queue"
.LASF95:
	.string	"_led_bloop_handler_holder"
.LASF44:
	.string	"loop_evt_handler"
.LASF109:
	.string	"TrapNetCounter"
.LASF10:
	.string	"uint8_t"
.LASF69:
	.string	"timer"
.LASF113:
	.string	"redo"
.LASF114:
	.string	"xPortIsInsideInterrupt"
.LASF8:
	.string	"int32_t"
.LASF45:
	.string	"name"
.LASF79:
	.string	"bloop_timer_repeat_enable"
.LASF103:
	.string	"INIT_UTILS_DLIST_HEAD"
.LASF40:
	.string	"loop_evt_handler_statistic"
.LASF36:
	.string	"arg1"
.LASF91:
	.string	"timeon_ms"
.LASF3:
	.string	"long long int"
.LASF17:
	.string	"TickType_t"
.LASF82:
	.string	"memset"
.LASF72:
	.string	"current_val"
.LASF9:
	.string	"long int"
.LASF78:
	.string	"bloop_timer_configure"
.LASF29:
	.string	"id_dst"
.LASF90:
	.string	"printf"
.LASF53:
	.string	"evt_type_map_sync"
.LASF112:
	.string	"loopset_led_hook_on_looprt"
.LASF110:
	.string	"tskTaskControlBlock"
.LASF84:
	.string	"xTaskGetTickCount"
.LASF38:
	.string	"time_added"
.LASF102:
	.string	"node"
.LASF81:
	.string	"bl_gpio_enable_output"
.LASF106:
	.string	"queue"
.LASF75:
	.string	"vTaskExitCritical"
.LASF88:
	.string	"looprt_handler_register"
.LASF63:
	.string	"idx_task"
.LASF11:
	.string	"unsigned char"
.LASF87:
	.string	"bl_gpio_output_set"
.LASF58:
	.string	"timer_dued"
.LASF94:
	.string	"loop"
.LASF96:
	.string	"_led_bloop_msg"
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
.LASF16:
	.string	"BaseType_t"
.LASF65:
	.string	"led_trigger_ctx"
.LASF24:
	.string	"last"
.LASF93:
	.string	"trigger"
.LASF101:
	.string	"_waiting_queue_handle"
.LASF42:
	.string	"time_accumulated"
.LASF12:
	.string	"short unsigned int"
.LASF19:
	.string	"char"
.LASF51:
	.string	"bitmap_msg"
.LASF70:
	.string	"type"
.LASF52:
	.string	"evt_type_map_async"
.LASF30:
	.string	"id_msg"
.LASF54:
	.string	"list"
.LASF108:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF89:
	.string	"looprt_timer_register"
.LASF80:
	.string	"bloop_timer_init"
.LASF99:
	.string	"handler_holder"
.LASF25:
	.string	"utils_dlist_s"
.LASF14:
	.string	"long unsigned int"
.LASF57:
	.string	"timer_dlist"
.LASF46:
	.string	"handle"
.LASF85:
	.string	"xTaskGetTickCountFromISR"
.LASF31:
	.string	"id_src"
.LASF39:
	.string	"time_consumed"
.LASF77:
	.string	"looprt_evt_notify_async"
.LASF35:
	.string	"item"
.LASF67:
	.string	"waiting_queue"
.LASF64:
	.string	"evt_type_map"
.LASF27:
	.string	"utils_dlist_t"
.LASF28:
	.string	"priority"
.LASF83:
	.string	"bl_printk"
.LASF37:
	.string	"arg2"
.LASF26:
	.string	"prev"
.LASF68:
	.string	"led_trigger_item"
.LASF86:
	.string	"pvPortMalloc"
.LASF60:
	.string	"dlist_item"
.LASF20:
	.string	"utils_list_hdr"
.LASF49:
	.string	"bitmap_evt_async"
.LASF22:
	.string	"next"
.LASF104:
	.string	"utils_dlist_del"
.LASF50:
	.string	"bitmap_evt_sync"
.LASF23:
	.string	"first"
.LASF47:
	.string	"loop_ctx"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/loopset"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/src/loopset_led.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
