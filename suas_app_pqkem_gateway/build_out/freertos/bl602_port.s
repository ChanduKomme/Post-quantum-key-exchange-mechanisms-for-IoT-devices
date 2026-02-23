	.file	"bl602_port.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos" "/home/chandu/sdk/bl602_iot_sdk/components/freertos/bl602_port.c"
	.globl	uxTopUsedPriority
	.section	.sdata.uxTopUsedPriority,"aw"
	.align	2
	.type	uxTopUsedPriority, @object
	.size	uxTopUsedPriority, 4
uxTopUsedPriority:
	.word	31
	.section	.data.xHeapRegions,"aw"
	.align	2
	.type	xHeapRegions, @object
	.size	xHeapRegions, 32
xHeapRegions:
	.word	_heap_start
	.word	_heap_size
	.word	_heap_wifi_start
	.word	_heap_wifi_size
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
.LC0:
	.string	"[BL602] Starting up!\r\n"
	.section	.text.vInitializeBL602,"ax",@progbits
	.align	1
	.weak	vInitializeBL602
	.type	vInitializeBL602, @function
vInitializeBL602:
.LFB27:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/bl602_port.c"
	.loc 1 42 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 44 3
	call	bl_sys_early_init
	.loc 1 50 3
	li	a5,1998848
	addi	a5,a5,1152
	li	a4,255
	li	a3,255
	li	a2,7
	li	a1,16
	li	a0,0
	call	bl_uart_init
	.loc 1 51 3
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 54 3
	call	bl_sys_init
	.loc 1 57 3
	lui	a5,%hi(xHeapRegions)
	addi	a0,a5,%lo(xHeapRegions)
	call	vPortDefineHeapRegions
	.loc 1 60 3
	call	blog_init
	.loc 1 61 3
	call	bl_irq_init
	.loc 1 62 3
	call	bl_sec_init
	.loc 1 63 3
	call	bl_dma_init
	.loc 1 64 3
	call	bl_rtc_init
	.loc 1 65 3
	call	hal_boot2_init
	.loc 1 66 3
	li	a0,0
	call	hal_board_cfg
.LBB2:
	.loc 1 69 16
	sb	zero,-17(s0)
	.loc 1 69 3
	j	.L2
.L3:
	.loc 1 70 5
	li	a0,50
	call	bl_timer_delay_us
	.loc 1 69 31 discriminator 3
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L2:
	.loc 1 69 25 discriminator 1
	lbu	a4,-17(s0)
	li	a5,4
	bleu	a4,a5,.L3
.LBE2:
	.loc 1 72 1
	nop
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
	.size	vInitializeBL602, .-vInitializeBL602
	.section	.text.vAssertCalled,"ax",@progbits
	.align	1
	.weak	vAssertCalled
	.type	vAssertCalled, @function
vAssertCalled:
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
	.loc 1 79 21
	sw	zero,-20(s0)
	.loc 1 81 3
 #APP
# 81 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/bl602_port.c" 1
	csrc mstatus, 8
# 0 "" 2
	.loc 1 83 8
 #NO_APP
	j	.L5
.L6:
	.loc 1 84 5
 #APP
# 84 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/bl602_port.c" 1
	NOP
# 0 "" 2
 #NO_APP
.L5:
	.loc 1 83 32
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L6
	.loc 1 87 1
	nop
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
	.size	vAssertCalled, .-vAssertCalled
	.weak	user_vAssertCalled
	.set	user_vAssertCalled,vAssertCalled
	.section	.text.vApplicationGetIdleTaskMemory,"ax",@progbits
	.align	1
	.weak	vApplicationGetIdleTaskMemory
	.type	vApplicationGetIdleTaskMemory, @function
vApplicationGetIdleTaskMemory:
.LFB29:
	.loc 1 92 1
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
	.loc 1 101 27
	lw	a5,-20(s0)
	lui	a4,%hi(xIdleTaskTCB.0)
	addi	a4,a4,%lo(xIdleTaskTCB.0)
	sw	a4,0(a5)
	.loc 1 104 28
	lw	a5,-24(s0)
	lui	a4,%hi(uxIdleTaskStack.1)
	addi	a4,a4,%lo(uxIdleTaskStack.1)
	sw	a4,0(a5)
	.loc 1 109 27
	lw	a5,-28(s0)
	li	a4,96
	sw	a4,0(a5)
	.loc 1 110 1
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
.LFE29:
	.size	vApplicationGetIdleTaskMemory, .-vApplicationGetIdleTaskMemory
	.section	.text.vApplicationGetTimerTaskMemory,"ax",@progbits
	.align	1
	.weak	vApplicationGetTimerTaskMemory
	.type	vApplicationGetTimerTaskMemory, @function
vApplicationGetTimerTaskMemory:
.LFB30:
	.loc 1 114 1
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
	.loc 1 122 28
	lw	a5,-20(s0)
	lui	a4,%hi(xTimerTaskTCB.2)
	addi	a4,a4,%lo(xTimerTaskTCB.2)
	sw	a4,0(a5)
	.loc 1 125 30
	lw	a5,-24(s0)
	lui	a4,%hi(uxTimerTaskStack.3)
	addi	a4,a4,%lo(uxTimerTaskStack.3)
	sw	a4,0(a5)
	.loc 1 130 28
	lw	a5,-28(s0)
	li	a4,400
	sw	a4,0(a5)
	.loc 1 131 1
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
.LFE30:
	.size	vApplicationGetTimerTaskMemory, .-vApplicationGetTimerTaskMemory
	.section	.text.vApplicationIdleHook,"ax",@progbits
	.align	1
	.weak	vApplicationIdleHook
	.type	vApplicationIdleHook, @function
vApplicationIdleHook:
.LFB31:
	.loc 1 134 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 138 3
	lui	a5,%hi(uxTopUsedPriority)
	lw	a5,%lo(uxTopUsedPriority)(a5)
	.loc 1 142 1
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
.LFE31:
	.size	vApplicationIdleHook, .-vApplicationIdleHook
	.section	.rodata
	.align	2
.LC1:
	.string	"[%s] malloc failed, currently left memory in bytes: %d\r\n"
	.section	.text.vApplicationMallocFailedHook,"ax",@progbits
	.align	1
	.weak	vApplicationMallocFailedHook
	.type	vApplicationMallocFailedHook, @function
vApplicationMallocFailedHook:
.LFB32:
	.loc 1 145 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 146 3
	call	xPortGetFreeHeapSize
	mv	a5,a0
	.loc 1 146 3 is_stmt 0 discriminator 1
	mv	a2,a5
	lui	a5,%hi(__func__.4)
	addi	a1,a5,%lo(__func__.4)
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L11:
	.loc 1 151 9 is_stmt 1
	nop
	j	.L11
	.cfi_endproc
.LFE32:
	.size	vApplicationMallocFailedHook, .-vApplicationMallocFailedHook
	.section	.rodata
	.align	2
.LC2:
	.string	"[%s] Stack overflow, task name: %s\r\n"
	.section	.text.vApplicationStackOverflowHook,"ax",@progbits
	.align	1
	.weak	vApplicationStackOverflowHook
	.type	vApplicationStackOverflowHook, @function
vApplicationStackOverflowHook:
.LFB33:
	.loc 1 156 1
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
	.loc 1 157 3
	lw	a2,-24(s0)
	lui	a5,%hi(__func__.5)
	addi	a1,a5,%lo(__func__.5)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L13:
	.loc 1 161 9
	nop
	j	.L13
	.cfi_endproc
.LFE33:
	.size	vApplicationStackOverflowHook, .-vApplicationStackOverflowHook
	.section	.bss.xIdleTaskTCB.0,"aw",@nobits
	.align	2
	.type	xIdleTaskTCB.0, @object
	.size	xIdleTaskTCB.0, 100
xIdleTaskTCB.0:
	.zero	100
	.section	.bss.uxIdleTaskStack.1,"aw",@nobits
	.align	2
	.type	uxIdleTaskStack.1, @object
	.size	uxIdleTaskStack.1, 384
uxIdleTaskStack.1:
	.zero	384
	.section	.bss.xTimerTaskTCB.2,"aw",@nobits
	.align	2
	.type	xTimerTaskTCB.2, @object
	.size	xTimerTaskTCB.2, 100
xTimerTaskTCB.2:
	.zero	100
	.section	.bss.uxTimerTaskStack.3,"aw",@nobits
	.align	2
	.type	uxTimerTaskStack.3, @object
	.size	uxTimerTaskStack.3, 1600
uxTimerTaskStack.3:
	.zero	1600
	.section	.rodata.__func__.4,"a"
	.align	2
	.type	__func__.4, @object
	.size	__func__.4, 29
__func__.4:
	.string	"vApplicationMallocFailedHook"
	.section	.rodata.__func__.5,"a"
	.align	2
	.type	__func__.5, @object
	.size	__func__.5, 30
__func__.5:
	.string	"vApplicationStackOverflowHook"
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_boot2.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_rtc.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_dma.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sec.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_irq.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blog/blog.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_timer.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sys.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_board.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_uart.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x593
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
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
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x74
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x93
	.uleb128 0x18
	.4byte	0x82
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x19
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3e
	.byte	0x12
	.4byte	0x82
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x40
	.byte	0x12
	.4byte	0x82
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0x82
	.uleb128 0x1a
	.4byte	.LASF21
	.byte	0x8
	.byte	0x5
	.byte	0x7b
	.byte	0x10
	.4byte	0xed
	.uleb128 0x10
	.4byte	.LASF18
	.byte	0x7d
	.byte	0xb
	.4byte	0xed
	.byte	0
	.uleb128 0x10
	.4byte	.LASF19
	.byte	0x7e
	.byte	0x9
	.4byte	0x32
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	0x68
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x7f
	.byte	0x3
	.4byte	0xc7
	.uleb128 0xa
	.4byte	0xf2
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x14
	.2byte	0x425
	.byte	0x8
	.4byte	0x12b
	.uleb128 0x1
	.4byte	.LASF23
	.2byte	0x42a
	.byte	0xd
	.4byte	0xbb
	.byte	0
	.uleb128 0x1
	.4byte	.LASF24
	.2byte	0x42b
	.byte	0x8
	.4byte	0x12b
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	0xa1
	.4byte	0x13b
	.uleb128 0x6
	.4byte	0x3e
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.4byte	.LASF25
	.2byte	0x430
	.byte	0x22
	.4byte	0x103
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x64
	.2byte	0x458
	.byte	0x10
	.4byte	0x1f1
	.uleb128 0x1
	.4byte	.LASF27
	.2byte	0x45a
	.byte	0x8
	.4byte	0xa1
	.byte	0
	.uleb128 0x1
	.4byte	.LASF28
	.2byte	0x45e
	.byte	0x13
	.4byte	0x1f1
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF29
	.2byte	0x45f
	.byte	0xe
	.4byte	0xaf
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF30
	.2byte	0x460
	.byte	0x8
	.4byte	0xa1
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF31
	.2byte	0x461
	.byte	0xa
	.4byte	0x201
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF32
	.2byte	0x466
	.byte	0xf
	.4byte	0xaf
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF33
	.2byte	0x469
	.byte	0xf
	.4byte	0x211
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF34
	.2byte	0x46c
	.byte	0xf
	.4byte	0x211
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF35
	.2byte	0x472
	.byte	0x9
	.4byte	0x221
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF36
	.2byte	0x47b
	.byte	0xc
	.4byte	0x82
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF37
	.2byte	0x47c
	.byte	0xb
	.4byte	0x68
	.byte	0x60
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x47f
	.byte	0xb
	.4byte	0x68
	.byte	0x61
	.byte	0
	.uleb128 0x4
	.4byte	0x13b
	.4byte	0x201
	.uleb128 0x6
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	0x68
	.4byte	0x211
	.uleb128 0x6
	.4byte	0x3e
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	0xaf
	.4byte	0x221
	.uleb128 0x6
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	0xa1
	.4byte	0x231
	.uleb128 0x6
	.4byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF39
	.2byte	0x488
	.byte	0x3
	.4byte	0x147
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x7
	.byte	0x46
	.byte	0x25
	.4byte	0x249
	.uleb128 0x3
	.4byte	0x24e
	.uleb128 0x1b
	.4byte	.LASF83
	.uleb128 0x3
	.4byte	0x264
	.uleb128 0x1c
	.4byte	0x253
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF41
	.uleb128 0xa
	.4byte	0x25d
	.uleb128 0x3
	.4byte	0xa3
	.uleb128 0x3
	.4byte	0x25d
	.uleb128 0x3
	.4byte	0x82
	.uleb128 0x1d
	.4byte	.LASF43
	.byte	0x1
	.byte	0x18
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x5
	.byte	0x3
	.4byte	uxTopUsedPriority
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF42
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x1c
	.4byte	0x68
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x1d
	.4byte	0x68
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x1e
	.4byte	0x68
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1f
	.4byte	0x68
	.uleb128 0x4
	.4byte	0xf2
	.4byte	0x2c9
	.uleb128 0x6
	.4byte	0x3e
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x21
	.byte	0x15
	.4byte	0x2b9
	.uleb128 0x5
	.byte	0x3
	.4byte	xHeapRegions
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x5
	.byte	0xa7
	.byte	0x8
	.4byte	0x32
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0xe
	.byte	0x22
	.4byte	0x2f7
	.uleb128 0x5
	.4byte	0x82
	.byte	0
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x10
	.byte	0x23
	.4byte	0x2b
	.4byte	0x30c
	.uleb128 0x5
	.4byte	0x68
	.byte	0
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x8
	.byte	0x54
	.byte	0x5
	.4byte	0x2b
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x9
	.byte	0x25
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0xa
	.byte	0x46
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0xb
	.byte	0x3d
	.byte	0x5
	.4byte	0x2b
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0xc
	.byte	0x2a
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0xd
	.byte	0xc8
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x5
	.byte	0x98
	.4byte	0x351
	.uleb128 0x5
	.4byte	0x356
	.byte	0
	.uleb128 0x3
	.4byte	0xfe
	.uleb128 0xa
	.4byte	0x351
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0xf
	.byte	0x2a
	.byte	0x5
	.4byte	0x2b
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x11
	.byte	0xce
	.4byte	0x2b
	.4byte	0x37d
	.uleb128 0x5
	.4byte	0x258
	.uleb128 0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x12
	.byte	0x25
	.4byte	0x2b
	.4byte	0x3ab
	.uleb128 0x5
	.4byte	0x68
	.uleb128 0x5
	.4byte	0x68
	.uleb128 0x5
	.4byte	0x68
	.uleb128 0x5
	.4byte	0x68
	.uleb128 0x5
	.4byte	0x68
	.uleb128 0x5
	.4byte	0x82
	.byte	0
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0xf
	.byte	0x29
	.byte	0x5
	.4byte	0x2b
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x9b
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f7
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x9b
	.byte	0x4f
	.4byte	0x23d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x9b
	.byte	0x5c
	.4byte	0x26e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF66
	.4byte	0x407
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.5
	.byte	0
	.uleb128 0x4
	.4byte	0x264
	.4byte	0x407
	.uleb128 0x6
	.4byte	0x3e
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.4byte	0x3f7
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x90
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x430
	.uleb128 0x15
	.4byte	.LASF66
	.4byte	0x440
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.4
	.byte	0
	.uleb128 0x4
	.4byte	0x264
	.4byte	0x440
	.uleb128 0x6
	.4byte	0x3e
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	0x430
	.uleb128 0x1f
	.4byte	.LASF84
	.byte	0x1
	.byte	0x85
	.byte	0x14
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x70
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b8
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x70
	.byte	0x42
	.4byte	0x4b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x71
	.byte	0x11
	.4byte	0x4c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF70
	.byte	0x71
	.byte	0x34
	.4byte	0x273
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x75
	.byte	0x18
	.4byte	0x231
	.uleb128 0x5
	.byte	0x3
	.4byte	xTimerTaskTCB.2
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x76
	.byte	0x17
	.4byte	0x4c7
	.uleb128 0x5
	.byte	0x3
	.4byte	uxTimerTaskStack.3
	.byte	0
	.uleb128 0x3
	.4byte	0x4bd
	.uleb128 0x3
	.4byte	0x231
	.uleb128 0x3
	.4byte	0x269
	.uleb128 0x4
	.4byte	0xa3
	.4byte	0x4d8
	.uleb128 0x20
	.4byte	0x3e
	.2byte	0x18f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x5b
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x539
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x5b
	.byte	0x41
	.4byte	0x4b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x5b
	.byte	0x65
	.4byte	0x4c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0x5b
	.byte	0x87
	.4byte	0x273
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x60
	.byte	0x18
	.4byte	0x231
	.uleb128 0x5
	.byte	0x3
	.4byte	xIdleTaskTCB.0
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x61
	.byte	0x17
	.4byte	0x539
	.uleb128 0x5
	.byte	0x3
	.4byte	uxIdleTaskStack.1
	.byte	0
	.uleb128 0x4
	.4byte	0xa3
	.4byte	0x549
	.uleb128 0x6
	.4byte	0x3e
	.byte	0x5f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x4a
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56c
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x4f
	.byte	0x15
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF85
	.byte	0x1
	.byte	0x29
	.byte	0x14
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x45
	.byte	0x10
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.sleb128 20
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
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
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
	.byte	0x7
	.4byte	.LFB31
	.uleb128 .LFE31-.LFB31
	.byte	0x7
	.4byte	.LFB32
	.uleb128 .LFE32-.LFB32
	.byte	0x7
	.4byte	.LFB33
	.uleb128 .LFE33-.LFB33
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF75:
	.string	"ppxIdleTaskTCBBuffer"
.LASF65:
	.string	"vApplicationMallocFailedHook"
.LASF39:
	.string	"StaticTask_t"
.LASF35:
	.string	"pvDummy15"
.LASF43:
	.string	"uxTopUsedPriority"
.LASF71:
	.string	"xHeapRegions"
.LASF51:
	.string	"bl_dma_init"
.LASF8:
	.string	"size_t"
.LASF40:
	.string	"TaskHandle_t"
.LASF84:
	.string	"vApplicationIdleHook"
.LASF70:
	.string	"pulTimerTaskStackSize"
.LASF57:
	.string	"bl_sys_init"
.LASF74:
	.string	"vApplicationGetIdleTaskMemory"
.LASF38:
	.string	"uxDummy20"
.LASF85:
	.string	"vInitializeBL602"
.LASF67:
	.string	"vApplicationGetTimerTaskMemory"
.LASF50:
	.string	"bl_rtc_init"
.LASF77:
	.string	"pulIdleTaskStackSize"
.LASF37:
	.string	"ucDummy19"
.LASF49:
	.string	"hal_boot2_init"
.LASF9:
	.string	"uint8_t"
.LASF60:
	.string	"bl_uart_init"
.LASF79:
	.string	"uxIdleTaskStack"
.LASF80:
	.string	"vAssertCalled"
.LASF63:
	.string	"pcTaskName"
.LASF6:
	.string	"short int"
.LASF64:
	.string	"vApplicationStackOverflowHook"
.LASF62:
	.string	"xTask"
.LASF4:
	.string	"long double"
.LASF23:
	.string	"xDummy2"
.LASF28:
	.string	"xDummy3"
.LASF25:
	.string	"StaticListItem_t"
.LASF3:
	.string	"long long int"
.LASF17:
	.string	"TickType_t"
.LASF22:
	.string	"xSTATIC_LIST_ITEM"
.LASF26:
	.string	"xSTATIC_TCB"
.LASF59:
	.string	"printf"
.LASF83:
	.string	"tskTaskControlBlock"
.LASF53:
	.string	"bl_irq_init"
.LASF48:
	.string	"xPortGetFreeHeapSize"
.LASF20:
	.string	"HeapRegion_t"
.LASF18:
	.string	"pucStartAddress"
.LASF10:
	.string	"unsigned char"
.LASF78:
	.string	"xIdleTaskTCB"
.LASF66:
	.string	"__func__"
.LASF46:
	.string	"_heap_wifi_start"
.LASF56:
	.string	"vPortDefineHeapRegions"
.LASF5:
	.string	"signed char"
.LASF14:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF2:
	.string	"unsigned int"
.LASF54:
	.string	"blog_init"
.LASF73:
	.string	"uxTimerTaskStack"
.LASF11:
	.string	"short unsigned int"
.LASF45:
	.string	"_heap_size"
.LASF41:
	.string	"char"
.LASF7:
	.string	"long int"
.LASF68:
	.string	"ppxTimerTaskTCBBuffer"
.LASF55:
	.string	"bl_timer_delay_us"
.LASF82:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF42:
	.string	"_Bool"
.LASF29:
	.string	"uxDummy5"
.LASF81:
	.string	"ulSetTo1ToExitFunction"
.LASF69:
	.string	"ppxTimerTaskStackBuffer"
.LASF32:
	.string	"uxDummy9"
.LASF13:
	.string	"long unsigned int"
.LASF16:
	.string	"UBaseType_t"
.LASF15:
	.string	"StackType_t"
.LASF36:
	.string	"ulDummy18"
.LASF31:
	.string	"ucDummy7"
.LASF58:
	.string	"hal_board_cfg"
.LASF21:
	.string	"HeapRegion"
.LASF72:
	.string	"xTimerTaskTCB"
.LASF44:
	.string	"_heap_start"
.LASF47:
	.string	"_heap_wifi_size"
.LASF24:
	.string	"pvDummy3"
.LASF52:
	.string	"bl_sec_init"
.LASF33:
	.string	"uxDummy10"
.LASF34:
	.string	"uxDummy12"
.LASF61:
	.string	"bl_sys_early_init"
.LASF27:
	.string	"pxDummy1"
.LASF19:
	.string	"xSizeInBytes"
.LASF30:
	.string	"pxDummy6"
.LASF76:
	.string	"ppxIdleTaskStackBuffer"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/bl602_port.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
