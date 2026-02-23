	.file	"bl602_port.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.vInitializeBL602.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[BL602] Starting up!\r\n"
	.section	.text.vInitializeBL602,"ax",@progbits
	.align	1
	.weak	vInitializeBL602
	.type	vInitializeBL602, @function
vInitializeBL602:
.LFB27:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.LM4:
	call	bl_sys_early_init
.LVL0:
.LM5:
	li	a4,255
	li	a5,1998848
	addi	a5,a5,1152
	mv	a3,a4
	li	a2,7
	li	a1,16
	li	a0,0
	call	bl_uart_init
.LVL1:
.LM6:
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL2:
.LM7:
	call	bl_sys_init
.LVL3:
.LM8:
	lui	a0,%hi(xHeapRegions)
	addi	a0,a0,%lo(xHeapRegions)
	call	vPortDefineHeapRegions
.LVL4:
.LM9:
	call	blog_init
.LVL5:
.LM10:
	call	bl_irq_init
.LVL6:
.LM11:
	call	bl_sec_init
.LVL7:
.LM12:
	call	bl_dma_init
.LVL8:
.LM13:
	call	bl_rtc_init
.LVL9:
.LM14:
	call	hal_boot2_init
.LVL10:
.LM15:
	li	a0,0
	call	hal_board_cfg
.LVL11:
.LM16:
.LBB2:
.LM17:
.LM18:
.LBE2:
.LM19:
	li	s0,5
.LVL12:
.L2:
.LBB3:
.LM20:
.LM21:
	addi	s0,s0,-1
.LM22:
	li	a0,50
.LM23:
	andi	s0,s0,0xff
.LM24:
	call	bl_timer_delay_us
.LVL13:
.LM25:
.LM26:
	bne	s0,zero,.L2
.LBE3:
.LM27:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
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
.LM28:
	.cfi_startproc
.LM29:
.LM30:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM31:
	sw	zero,12(sp)
.LM32:
 #APP
# 81 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/bl602_port.c" 1
	csrc mstatus, 8
# 0 "" 2
.LM33:
.LM34:
 #NO_APP
	lw	a5,12(sp)
	li	a4,1
	beq	a5,a4,.L6
.L8:
.LM35:
 #APP
# 84 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/bl602_port.c" 1
	NOP
# 0 "" 2
.LM36:
 #NO_APP
	lw	a5,12(sp)
	bne	a5,a4,.L8
.L6:
.LM37:
	addi	sp,sp,16
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
.LVL14:
.LFB29:
.LM38:
	.cfi_startproc
.LM39:
.LM40:
.LM41:
.LM42:
	lui	a5,%hi(xIdleTaskTCB.0)
	addi	a4,a5,%lo(xIdleTaskTCB.0)
.LM43:
	lui	a5,%hi(uxIdleTaskStack.1)
.LM44:
	sw	a4,0(a0)
.LM45:
.LM46:
	addi	a5,a5,%lo(uxIdleTaskStack.1)
	sw	a5,0(a1)
.LM47:
.LM48:
	li	a5,96
	sw	a5,0(a2)
.LM49:
	ret
	.cfi_endproc
.LFE29:
	.size	vApplicationGetIdleTaskMemory, .-vApplicationGetIdleTaskMemory
	.section	.text.vApplicationGetTimerTaskMemory,"ax",@progbits
	.align	1
	.weak	vApplicationGetTimerTaskMemory
	.type	vApplicationGetTimerTaskMemory, @function
vApplicationGetTimerTaskMemory:
.LVL15:
.LFB30:
.LM50:
	.cfi_startproc
.LM51:
.LM52:
.LM53:
.LM54:
	lui	a5,%hi(xTimerTaskTCB.2)
	addi	a4,a5,%lo(xTimerTaskTCB.2)
.LM55:
	lui	a5,%hi(uxTimerTaskStack.3)
.LM56:
	sw	a4,0(a0)
.LM57:
.LM58:
	addi	a5,a5,%lo(uxTimerTaskStack.3)
	sw	a5,0(a1)
.LM59:
.LM60:
	li	a5,400
	sw	a5,0(a2)
.LM61:
	ret
	.cfi_endproc
.LFE30:
	.size	vApplicationGetTimerTaskMemory, .-vApplicationGetTimerTaskMemory
	.section	.text.vApplicationIdleHook,"ax",@progbits
	.align	1
	.weak	vApplicationIdleHook
	.type	vApplicationIdleHook, @function
vApplicationIdleHook:
.LFB31:
.LM62:
	.cfi_startproc
.LM63:
	lui	a5,%hi(uxTopUsedPriority)
	lw	a5,%lo(uxTopUsedPriority)(a5)
.LM64:
	ret
	.cfi_endproc
.LFE31:
	.size	vApplicationIdleHook, .-vApplicationIdleHook
	.section	.rodata.vApplicationMallocFailedHook.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"[%s] malloc failed, currently left memory in bytes: %d\r\n"
	.section	.text.vApplicationMallocFailedHook,"ax",@progbits
	.align	1
	.weak	vApplicationMallocFailedHook
	.type	vApplicationMallocFailedHook, @function
vApplicationMallocFailedHook:
.LFB32:
.LM65:
	.cfi_startproc
.LM66:
.LM67:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM68:
	call	xPortGetFreeHeapSize
.LVL16:
	mv	a2,a0
.LM69:
	lui	a1,%hi(__func__.4)
	lui	a0,%hi(.LC1)
	addi	a1,a1,%lo(__func__.4)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL17:
.L15:
.LM70:
.LM71:
.LM72:
.LM73:
.LM74:
.LM75:
	j	.L15
	.cfi_endproc
.LFE32:
	.size	vApplicationMallocFailedHook, .-vApplicationMallocFailedHook
	.section	.rodata.vApplicationStackOverflowHook.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"[%s] Stack overflow, task name: %s\r\n"
	.section	.text.vApplicationStackOverflowHook,"ax",@progbits
	.align	1
	.weak	vApplicationStackOverflowHook
	.type	vApplicationStackOverflowHook, @function
vApplicationStackOverflowHook:
.LVL18:
.LFB33:
.LM76:
	.cfi_startproc
.LM77:
.LM78:
	mv	a2,a1
.LM79:
	lui	a0,%hi(.LC2)
.LVL19:
.LM80:
	lui	a1,%hi(__func__.5)
.LVL20:
.LM81:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM82:
	addi	a1,a1,%lo(__func__.5)
	addi	a0,a0,%lo(.LC2)
.LM83:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM84:
	call	printf
.LVL21:
.L18:
.LM85:
.LM86:
.LM87:
.LM88:
.LM89:
.LM90:
	j	.L18
	.cfi_endproc
.LFE33:
	.size	vApplicationStackOverflowHook, .-vApplicationStackOverflowHook
	.section	.rodata.__func__.5,"a"
	.align	2
	.type	__func__.5, @object
	.size	__func__.5, 30
__func__.5:
	.string	"vApplicationStackOverflowHook"
	.section	.rodata.__func__.4,"a"
	.align	2
	.type	__func__.4, @object
	.size	__func__.4, 29
__func__.4:
	.string	"vApplicationMallocFailedHook"
	.section	.bss.uxTimerTaskStack.3,"aw",@nobits
	.align	2
	.type	uxTimerTaskStack.3, @object
	.size	uxTimerTaskStack.3, 1600
uxTimerTaskStack.3:
	.zero	1600
	.section	.bss.xTimerTaskTCB.2,"aw",@nobits
	.align	2
	.type	xTimerTaskTCB.2, @object
	.size	xTimerTaskTCB.2, 100
xTimerTaskTCB.2:
	.zero	100
	.section	.bss.uxIdleTaskStack.1,"aw",@nobits
	.align	2
	.type	uxIdleTaskStack.1, @object
	.size	uxIdleTaskStack.1, 384
uxIdleTaskStack.1:
	.zero	384
	.section	.bss.xIdleTaskTCB.0,"aw",@nobits
	.align	2
	.type	xIdleTaskTCB.0, @object
	.size	xIdleTaskTCB.0, 100
xIdleTaskTCB.0:
	.zero	100
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
	.globl	uxTopUsedPriority
	.section	.sdata.uxTopUsedPriority,"aw"
	.align	2
	.type	uxTopUsedPriority, @object
	.size	uxTopUsedPriority, 4
uxTopUsedPriority:
	.word	31
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6b1
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1a
	.4byte	.LASF82
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL4
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.4byte	.LASF9
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x32
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x9a
	.uleb128 0x1c
	.4byte	0x89
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x1d
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3e
	.byte	0x12
	.4byte	0x89
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x40
	.byte	0x12
	.4byte	0x89
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0x89
	.uleb128 0x1e
	.4byte	.LASF21
	.byte	0x8
	.byte	0x5
	.byte	0x7b
	.byte	0x10
	.4byte	0xed
	.uleb128 0x14
	.4byte	.LASF18
	.byte	0x7d
	.byte	0xb
	.4byte	0xed
	.byte	0
	.uleb128 0x14
	.4byte	.LASF19
	.byte	0x7e
	.byte	0x9
	.4byte	0x40
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	0x6f
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x7f
	.byte	0x3
	.4byte	0xc7
	.uleb128 0xc
	.4byte	0xf2
	.uleb128 0x15
	.4byte	.LASF22
	.byte	0x14
	.2byte	0x425
	.byte	0x8
	.4byte	0x12b
	.uleb128 0x2
	.4byte	.LASF23
	.2byte	0x42a
	.byte	0xd
	.4byte	0xbb
	.byte	0
	.uleb128 0x2
	.4byte	.LASF24
	.2byte	0x42b
	.byte	0x8
	.4byte	0x12b
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0xa1
	.4byte	0x13b
	.uleb128 0x7
	.4byte	0x32
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF25
	.2byte	0x430
	.byte	0x22
	.4byte	0x103
	.uleb128 0x15
	.4byte	.LASF26
	.byte	0x64
	.2byte	0x458
	.byte	0x10
	.4byte	0x1f1
	.uleb128 0x2
	.4byte	.LASF27
	.2byte	0x45a
	.byte	0x8
	.4byte	0xa1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.2byte	0x45e
	.byte	0x13
	.4byte	0x1f1
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF29
	.2byte	0x45f
	.byte	0xe
	.4byte	0xaf
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF30
	.2byte	0x460
	.byte	0x8
	.4byte	0xa1
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF31
	.2byte	0x461
	.byte	0xa
	.4byte	0x201
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF32
	.2byte	0x466
	.byte	0xf
	.4byte	0xaf
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF33
	.2byte	0x469
	.byte	0xf
	.4byte	0x211
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF34
	.2byte	0x46c
	.byte	0xf
	.4byte	0x211
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF35
	.2byte	0x472
	.byte	0x9
	.4byte	0x221
	.byte	0x58
	.uleb128 0x2
	.4byte	.LASF36
	.2byte	0x47b
	.byte	0xc
	.4byte	0x89
	.byte	0x5c
	.uleb128 0x2
	.4byte	.LASF37
	.2byte	0x47c
	.byte	0xb
	.4byte	0x6f
	.byte	0x60
	.uleb128 0x2
	.4byte	.LASF38
	.2byte	0x47f
	.byte	0xb
	.4byte	0x6f
	.byte	0x61
	.byte	0
	.uleb128 0x5
	.4byte	0x13b
	.4byte	0x201
	.uleb128 0x7
	.4byte	0x32
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x6f
	.4byte	0x211
	.uleb128 0x7
	.4byte	0x32
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0xaf
	.4byte	0x221
	.uleb128 0x7
	.4byte	0x32
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0xa1
	.4byte	0x231
	.uleb128 0x7
	.4byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF39
	.2byte	0x488
	.byte	0x3
	.4byte	0x147
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x7
	.byte	0x46
	.byte	0x25
	.4byte	0x249
	.uleb128 0x4
	.4byte	0x24e
	.uleb128 0x1f
	.4byte	.LASF83
	.uleb128 0x4
	.4byte	0x264
	.uleb128 0x20
	.4byte	0x253
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF41
	.uleb128 0xc
	.4byte	0x25d
	.uleb128 0x4
	.4byte	0xa3
	.uleb128 0x4
	.4byte	0x25d
	.uleb128 0x4
	.4byte	0x89
	.uleb128 0x21
	.4byte	.LASF43
	.byte	0x1
	.byte	0x18
	.byte	0x13
	.4byte	0x95
	.uleb128 0x5
	.byte	0x3
	.4byte	uxTopUsedPriority
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF42
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1c
	.4byte	0x6f
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1d
	.4byte	0x6f
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x1e
	.4byte	0x6f
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x1f
	.4byte	0x6f
	.uleb128 0x5
	.4byte	0xf2
	.4byte	0x2c9
	.uleb128 0x7
	.4byte	0x32
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x21
	.byte	0x15
	.4byte	0x2b9
	.uleb128 0x5
	.byte	0x3
	.4byte	xHeapRegions
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x5
	.byte	0xa7
	.byte	0x8
	.4byte	0x40
	.uleb128 0x17
	.4byte	.LASF55
	.byte	0xe
	.byte	0x22
	.4byte	0x2f7
	.uleb128 0x6
	.4byte	0x89
	.byte	0
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x10
	.byte	0x23
	.4byte	0x39
	.4byte	0x30c
	.uleb128 0x6
	.4byte	0x6f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x8
	.byte	0x54
	.byte	0x5
	.4byte	0x39
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x9
	.byte	0x25
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0xa
	.byte	0x46
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0xb
	.byte	0x3d
	.byte	0x5
	.4byte	0x39
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0xc
	.byte	0x2a
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0xd
	.byte	0xc8
	.uleb128 0x17
	.4byte	.LASF56
	.byte	0x5
	.byte	0x98
	.4byte	0x351
	.uleb128 0x6
	.4byte	0x356
	.byte	0
	.uleb128 0x4
	.4byte	0xfe
	.uleb128 0xc
	.4byte	0x351
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0xf
	.byte	0x2a
	.byte	0x5
	.4byte	0x39
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x11
	.byte	0xce
	.4byte	0x39
	.4byte	0x37d
	.uleb128 0x6
	.4byte	0x258
	.uleb128 0x22
	.byte	0
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x12
	.byte	0x25
	.4byte	0x39
	.4byte	0x3ab
	.uleb128 0x6
	.4byte	0x6f
	.uleb128 0x6
	.4byte	0x6f
	.uleb128 0x6
	.4byte	0x6f
	.uleb128 0x6
	.4byte	0x6f
	.uleb128 0x6
	.4byte	0x6f
	.uleb128 0x6
	.4byte	0x89
	.byte	0
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0xf
	.byte	0x29
	.byte	0x5
	.4byte	0x39
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x9b
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42a
	.uleb128 0x18
	.4byte	.LASF62
	.byte	0x9b
	.byte	0x4f
	.4byte	0x23d
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x18
	.4byte	.LASF63
	.byte	0x9b
	.byte	0x5c
	.4byte	0x26e
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x19
	.4byte	.LASF66
	.4byte	0x43a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.5
	.uleb128 0x11
	.4byte	.LVL21
	.4byte	0x367
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x264
	.4byte	0x43a
	.uleb128 0x7
	.4byte	0x32
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.4byte	0x42a
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x90
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x488
	.uleb128 0x19
	.4byte	.LASF66
	.4byte	0x498
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.4
	.uleb128 0x8
	.4byte	.LVL16
	.4byte	0x2da
	.uleb128 0x11
	.4byte	.LVL17
	.4byte	0x367
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.4
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x264
	.4byte	0x498
	.uleb128 0x7
	.4byte	0x32
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.4byte	0x488
	.uleb128 0x23
	.4byte	.LASF84
	.byte	0x1
	.byte	0x85
	.byte	0x14
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x70
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50d
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x70
	.byte	0x42
	.4byte	0x50d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x71
	.byte	0x11
	.4byte	0x517
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x71
	.byte	0x34
	.4byte	0x273
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x75
	.byte	0x18
	.4byte	0x231
	.uleb128 0x5
	.byte	0x3
	.4byte	xTimerTaskTCB.2
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x76
	.byte	0x17
	.4byte	0x51c
	.uleb128 0x5
	.byte	0x3
	.4byte	uxTimerTaskStack.3
	.byte	0
	.uleb128 0x4
	.4byte	0x512
	.uleb128 0x4
	.4byte	0x231
	.uleb128 0x4
	.4byte	0x269
	.uleb128 0x5
	.4byte	0xa3
	.4byte	0x52d
	.uleb128 0x24
	.4byte	0x32
	.2byte	0x18f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x5b
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58b
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x5b
	.byte	0x41
	.4byte	0x50d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x5b
	.byte	0x65
	.4byte	0x517
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x5b
	.byte	0x87
	.4byte	0x273
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x60
	.byte	0x18
	.4byte	0x231
	.uleb128 0x5
	.byte	0x3
	.4byte	xIdleTaskTCB.0
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x61
	.byte	0x17
	.4byte	0x58b
	.uleb128 0x5
	.byte	0x3
	.4byte	uxIdleTaskStack.1
	.byte	0
	.uleb128 0x5
	.4byte	0xa3
	.4byte	0x59b
	.uleb128 0x7
	.4byte	0x32
	.byte	0x5f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x4a
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5be
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x4f
	.byte	0x15
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x25
	.4byte	.LASF85
	.byte	0x1
	.byte	0x29
	.byte	0x14
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.4byte	.LLRL0
	.4byte	0x5fc
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.byte	0x45
	.byte	0x10
	.4byte	0x6f
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x11
	.4byte	.LVL13
	.4byte	0x2e6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL0
	.4byte	0x3ab
	.uleb128 0x13
	.4byte	.LVL1
	.4byte	0x37d
	.4byte	0x637
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0xc
	.4byte	0x1e8480
	.byte	0
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0x367
	.4byte	0x64e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL3
	.4byte	0x35b
	.uleb128 0x13
	.4byte	.LVL4
	.4byte	0x340
	.4byte	0x66e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xHeapRegions
	.byte	0
	.uleb128 0x8
	.4byte	.LVL5
	.4byte	0x339
	.uleb128 0x8
	.4byte	.LVL6
	.4byte	0x332
	.uleb128 0x8
	.4byte	.LVL7
	.4byte	0x326
	.uleb128 0x8
	.4byte	.LVL8
	.4byte	0x31f
	.uleb128 0x8
	.4byte	.LVL9
	.4byte	0x318
	.uleb128 0x8
	.4byte	.LVL10
	.4byte	0x30c
	.uleb128 0x11
	.4byte	.LVL11
	.4byte	0x2f7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS2:
	.uleb128 0
	.uleb128 0x4
	.uleb128 0x4
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL19-.LVL18
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL19-.LVL18
	.uleb128 .LFE33-.LVL18
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL20-.LVL18
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL20-.LVL18
	.uleb128 .LVL21-1-.LVL18
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL21-1-.LVL18
	.uleb128 .LFE33-.LVL18
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0x11
	.uleb128 0x13
.LLST1:
	.byte	0x8
	.4byte	.LVL11
	.uleb128 .LVL12-.LVL11
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
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
	.byte	0x5
	.4byte	.LBB2
	.byte	0x4
	.uleb128 .LBB2-.LBB2
	.uleb128 .LBE2-.LBB2
	.byte	0x4
	.uleb128 .LBB3-.LBB2
	.uleb128 .LBE3-.LBB2
	.byte	0
.LLRL4:
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
	.4byte	.LELT0-.LSLT0
.LSLT0:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf2
	.byte	0xd
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x8
	.4byte	.LASF1
	.4byte	.LASF86
	.4byte	.LASF87
	.4byte	.LASF88
	.4byte	.LASF89
	.4byte	.LASF90
	.4byte	.LASF91
	.4byte	.LASF92
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x13
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF93
	.byte	0x3
	.4byte	.LASF94
	.byte	0x6
	.4byte	.LASF95
	.byte	0x6
	.4byte	.LASF96
	.byte	0x2
	.4byte	.LASF97
	.byte	0x1
	.4byte	.LASF98
	.byte	0x1
	.4byte	.LASF99
	.byte	0x1
	.4byte	.LASF100
	.byte	0x4
	.4byte	.LASF101
	.byte	0x4
	.4byte	.LASF102
	.byte	0x4
	.4byte	.LASF103
	.byte	0x4
	.4byte	.LASF104
	.byte	0x4
	.4byte	.LASF105
	.byte	0x5
	.4byte	.LASF106
	.byte	0x4
	.4byte	.LASF107
	.byte	0x4
	.4byte	.LASF108
	.byte	0x4
	.4byte	.LASF109
	.byte	0x7
	.4byte	.LASF110
	.byte	0x4
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x40
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x6
	.byte	0x15
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x1a
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x1a
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x1a
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x16
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE27
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0x61
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x1b
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x6
	.byte	0x13
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x1b
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x1
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x16
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE28
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM38
	.byte	0x72
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x1b
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x18
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x14
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE29
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM50
	.byte	0x88
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x1a
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x18
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x14
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE30
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM62
	.byte	0x9c
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM63-.LM62
	.byte	0x1b
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE31
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM65
	.byte	0xa7
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM69-.LM68
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM70-.LM69
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM71-.LM70
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM72-.LM71
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM73-.LM72
	.byte	0x1
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM74-.LM73
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM75-.LM74
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE32
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM76
	.byte	0xb2
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM77-.LM76
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM78-.LM77
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM79-.LM78
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM80-.LM79
	.byte	0x1
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM81-.LM80
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM82-.LM81
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM83-.LM82
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM84-.LM83
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM85-.LM84
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM86-.LM85
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM87-.LM86
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM88-.LM87
	.byte	0x1
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM89-.LM88
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM90-.LM89
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE33
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
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
.LASF9:
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
.LASF10:
	.string	"uint8_t"
.LASF60:
	.string	"bl_uart_init"
.LASF79:
	.string	"uxIdleTaskStack"
.LASF80:
	.string	"vAssertCalled"
.LASF63:
	.string	"pcTaskName"
.LASF7:
	.string	"short int"
.LASF64:
	.string	"vApplicationStackOverflowHook"
.LASF62:
	.string	"xTask"
.LASF5:
	.string	"long double"
.LASF23:
	.string	"xDummy2"
.LASF28:
	.string	"xDummy3"
.LASF25:
	.string	"StaticListItem_t"
.LASF4:
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
.LASF11:
	.string	"unsigned char"
.LASF78:
	.string	"xIdleTaskTCB"
.LASF66:
	.string	"__func__"
.LASF46:
	.string	"_heap_wifi_start"
.LASF56:
	.string	"vPortDefineHeapRegions"
.LASF6:
	.string	"signed char"
.LASF2:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF3:
	.string	"unsigned int"
.LASF54:
	.string	"blog_init"
.LASF73:
	.string	"uxTimerTaskStack"
.LASF12:
	.string	"short unsigned int"
.LASF45:
	.string	"_heap_size"
.LASF41:
	.string	"char"
.LASF8:
	.string	"long int"
.LASF82:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O2 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF68:
	.string	"ppxTimerTaskTCBBuffer"
.LASF55:
	.string	"bl_timer_delay_us"
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
.LASF14:
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
.LASF97:
	.string	"portable.h"
.LASF104:
	.string	"bl_irq.h"
.LASF101:
	.string	"bl_rtc.h"
.LASF93:
	.string	"bl602_port.c"
.LASF89:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/freertos"
.LASF92:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF88:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos"
.LASF108:
	.string	"hal_board.h"
.LASF100:
	.string	"hal_boot2.h"
.LASF86:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/include"
.LASF110:
	.string	"bl_uart.h"
.LASF99:
	.string	"task.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/bl602_port.c"
.LASF107:
	.string	"bl_sys.h"
.LASF103:
	.string	"bl_sec.h"
.LASF105:
	.string	"blog.h"
.LASF109:
	.string	"stdio.h"
.LASF98:
	.string	"FreeRTOS.h"
.LASF94:
	.string	"stddef.h"
.LASF96:
	.string	"portmacro.h"
.LASF102:
	.string	"bl_dma.h"
.LASF95:
	.string	"stdint-gcc.h"
.LASF91:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF87:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V"
.LASF106:
	.string	"bl_timer.h"
.LASF90:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blog"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
