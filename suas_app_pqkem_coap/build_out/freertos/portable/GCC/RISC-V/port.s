	.file	"port.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vPortSetupTimerInterrupt,"ax",@progbits
	.align	1
	.weak	vPortSetupTimerInterrupt
	.type	vPortSetupTimerInterrupt, @function
vPortSetupTimerInterrupt:
.LFB2:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LVL0:
.LM4:
.LM5:
.LM6:
.LM7:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM8:
 #APP
# 130 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c" 1
	csrr a5, mhartid
# 0 "" 2
 #NO_APP
	sw	a5,12(sp)
.LM9:
.LM10:
	lw	a0,12(sp)
	li	a5,4198400
	addi	a5,a5,-2048
	add	a0,a0,a5
	slli	a0,a0,3
.LM11:
	lui	a5,%hi(pullMachineTimerCompareRegister)
	sw	a0,%lo(pullMachineTimerCompareRegister)(a5)
.LM12:
	li	a1,33603584
.LM13:
	li	a5,33603584
	addi	a5,a5,-4
.LM14:
	addi	a1,a1,-8
.L2:
.LM15:
.LM16:
.LM17:
	lw	a3,0(a5)
.LVL1:
.LM18:
.LM19:
	lw	a2,0(a1)
.LVL2:
.LM20:
.LM21:
	lw	a4,0(a5)
.LM22:
	bne	a4,a3,.L2
.LM23:
.LM24:
.LM25:
.LM26:
.LM27:
	li	a3,8192
.LVL3:
.LM28:
	addi	a3,a3,1808
.LM29:
	li	a5,20480
.LM30:
	add	a3,a2,a3
.LM31:
	addi	a5,a5,-480
.LM32:
	sltu	a1,a3,a2
.LM33:
	add	a5,a2,a5
.LM34:
	sw	a3,0(a0)
.LM35:
	add	a7,a1,a4
.LM36:
.LM37:
	sltu	a2,a5,a2
.LVL4:
.LM38:
	sw	a7,4(a0)
.LM39:
.LM40:
	add	a2,a2,a4
	lui	a4,%hi(ullNextTime)
	sw	a2,%lo(ullNextTime+4)(a4)
	sw	a5,%lo(ullNextTime)(a4)
.LM41:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	vPortSetupTimerInterrupt, .-vPortSetupTimerInterrupt
	.section	.text.xPortStartScheduler,"ax",@progbits
	.align	1
	.globl	xPortStartScheduler
	.type	xPortStartScheduler, @function
xPortStartScheduler:
.LFB3:
.LM42:
	.cfi_startproc
.LM43:
.LBB2:
.LM44:
.LBE2:
.LM45:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LBB3:
.LM46:
	sw	zero,12(sp)
.LM47:
 #APP
# 162 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c" 1
	csrr a4, mtvec
# 0 "" 2
.LM48:
 #NO_APP
	lui	a5,%hi(__freertos_irq_stack_top)
	addi	a5,a5,%lo(__freertos_irq_stack_top)
.LM49:
	sw	a4,12(sp)
.LM50:
.LM51:
	andi	a5,a5,15
.LM52:
	bne	a5,zero,.L12
.L7:
.LBE3:
.LM53:
	call	vPortSetupTimerInterrupt
.LVL5:
.LM54:
	li	a5,4096
	addi	a5,a5,-1920
 #APP
# 187 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c" 1
	csrs mie, a5
# 0 "" 2
.LM55:
.LM56:
 #NO_APP
	li	a5,41943040
	li	a4,1
	sb	a4,1031(a5)
.LM57:
	call	xPortStartFirstTask
.LVL6:
.LM58:
.LM59:
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L12:
	.cfi_restore_state
.LBB4:
.LM60:
	call	vAssertCalled
.LVL7:
	j	.L7
.LBE4:
	.cfi_endproc
.LFE3:
	.size	xPortStartScheduler, .-xPortStartScheduler
	.section	.text.vPortEndScheduler,"ax",@progbits
	.align	1
	.globl	vPortEndScheduler
	.type	vPortEndScheduler, @function
vPortEndScheduler:
.LFB4:
.LM61:
	.cfi_startproc
.L14:
.LM62:
	j	.L14
	.cfi_endproc
.LFE4:
	.size	vPortEndScheduler, .-vPortEndScheduler
	.globl	pTrapNetCounter
	.section	.sdata.pTrapNetCounter,"aw"
	.align	2
	.type	pTrapNetCounter, @object
	.size	pTrapNetCounter, 4
pTrapNetCounter:
	.word	TrapNetCounter
	.globl	TrapNetCounter
	.section	.sbss.TrapNetCounter,"aw",@nobits
	.align	2
	.type	TrapNetCounter, @object
	.size	TrapNetCounter, 4
TrapNetCounter:
	.zero	4
	.globl	pullMachineTimerCompareRegister
	.section	.sbss.pullMachineTimerCompareRegister,"aw",@nobits
	.align	2
	.type	pullMachineTimerCompareRegister, @object
	.size	pullMachineTimerCompareRegister, 4
pullMachineTimerCompareRegister:
	.zero	4
	.globl	ullMachineTimerCompareRegisterBase
	.section	.srodata.ullMachineTimerCompareRegisterBase,"a"
	.align	2
	.type	ullMachineTimerCompareRegisterBase, @object
	.size	ullMachineTimerCompareRegisterBase, 4
ullMachineTimerCompareRegisterBase:
	.word	33570816
	.globl	uxTimerIncrementsForOneTick
	.section	.srodata.uxTimerIncrementsForOneTick,"a"
	.align	2
	.type	uxTimerIncrementsForOneTick, @object
	.size	uxTimerIncrementsForOneTick, 4
uxTimerIncrementsForOneTick:
	.word	10000
	.globl	pullNextTime
	.section	.sdata.pullNextTime,"aw"
	.align	2
	.type	pullNextTime, @object
	.size	pullNextTime, 4
pullNextTime:
	.word	ullNextTime
	.globl	ullNextTime
	.section	.sbss.ullNextTime,"aw",@nobits
	.align	3
	.type	ullNextTime, @object
	.size	ullNextTime, 8
ullNextTime:
	.zero	8
	.globl	xISRStackTop
	.section	.srodata.xISRStackTop,"a"
	.align	2
	.type	xISRStackTop, @object
	.size	xISRStackTop, 4
xISRStackTop:
	.word	__freertos_irq_stack_top
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2a4
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL3
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x43
	.uleb128 0x3
	.4byte	0x32
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x72
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x85
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0xa9
	.uleb128 0x3
	.4byte	0x93
	.uleb128 0x8
	.4byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x37
	.byte	0x20
	.4byte	0xc6
	.uleb128 0x3
	.4byte	0xb0
	.uleb128 0x8
	.4byte	0xb0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3e
	.byte	0x12
	.4byte	0x93
	.uleb128 0x3
	.4byte	0xcd
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0x3f
	.byte	0x11
	.4byte	0x66
	.uleb128 0x3
	.4byte	0xde
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0x93
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x5c
	.byte	0x13
	.4byte	0xde
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0xf
	.4byte	0x9f
	.4byte	0x119
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.4byte	0x10e
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4d
	.byte	0x17
	.4byte	0x119
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4e
	.byte	0x14
	.4byte	0xd9
	.uleb128 0x5
	.byte	0x3
	.4byte	xISRStackTop
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5b
	.byte	0xa
	.4byte	0xb0
	.uleb128 0x5
	.byte	0x3
	.4byte	ullNextTime
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5c
	.byte	0x11
	.4byte	0x15d
	.uleb128 0x5
	.byte	0x3
	.4byte	pullNextTime
	.uleb128 0x5
	.4byte	0xbc
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x5d
	.byte	0xe
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x3
	.4byte	uxTimerIncrementsForOneTick
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x5e
	.byte	0x10
	.4byte	0x9f
	.uleb128 0x5
	.byte	0x3
	.4byte	ullMachineTimerCompareRegisterBase
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x5f
	.byte	0x15
	.4byte	0x195
	.uleb128 0x5
	.byte	0x3
	.4byte	pullMachineTimerCompareRegister
	.uleb128 0x5
	.4byte	0xc1
	.uleb128 0x11
	.4byte	0xfb
	.byte	0x1
	.byte	0x60
	.byte	0xc
	.uleb128 0x5
	.byte	0x3
	.4byte	TrapNetCounter
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x61
	.byte	0x13
	.4byte	0x1b9
	.uleb128 0x5
	.byte	0x3
	.4byte	pTrapNetCounter
	.uleb128 0x5
	.4byte	0xea
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.byte	0x9a
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x5
	.byte	0x97
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0xcf
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x1
	.byte	0x98
	.byte	0xc
	.4byte	0xde
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x236
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.byte	0x9a
	.byte	0xd
	.uleb128 0x14
	.4byte	.LLRL2
	.4byte	0x223
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x9e
	.byte	0x15
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LVL7
	.4byte	0x1c6
	.byte	0
	.uleb128 0x7
	.4byte	.LVL5
	.4byte	0x236
	.uleb128 0x7
	.4byte	.LVL6
	.4byte	0x1be
	.byte	0
	.uleb128 0x15
	.4byte	.LASF41
	.byte	0x1
	.byte	0x7b
	.byte	0x7
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29d
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x7d
	.byte	0xb
	.4byte	0x93
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x7d
	.byte	0x1e
	.4byte	0x93
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x7e
	.4byte	0x2a2
	.4byte	0x200bffc
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x7f
	.4byte	0x2a2
	.4byte	0x200bff8
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x80
	.byte	0x14
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x5
	.4byte	0xa4
	.uleb128 0x3
	.4byte	0x29d
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
	.uleb128 0x3
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.sleb128 28
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x1
	.uleb128 0x13
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
.LVUS0:
	.uleb128 0x11
	.uleb128 0x1b
.LLST0:
	.byte	0x8
	.4byte	.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS1:
	.uleb128 0x13
	.uleb128 0x25
	.uleb128 0x25
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL4-.LVL2
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL4-.LVL2
	.uleb128 .LFE2-.LVL2
	.uleb128 0x5
	.byte	0x7f
	.sleb128 -20000
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
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
.LLRL2:
	.byte	0x5
	.4byte	.LBB2
	.byte	0x4
	.uleb128 .LBB2-.LBB2
	.uleb128 .LBE2-.LBB2
	.byte	0x4
	.uleb128 .LBB3-.LBB2
	.uleb128 .LBE3-.LBB2
	.byte	0x4
	.uleb128 .LBB4-.LBB2
	.uleb128 .LBE4-.LBB2
	.byte	0
.LLRL3:
	.byte	0x7
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
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
	.uleb128 0x4
	.4byte	.LASF1
	.4byte	.LASF42
	.4byte	.LASF43
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF45
	.byte	0x2
	.4byte	.LASF46
	.byte	0x3
	.4byte	.LASF47
	.byte	0x3
	.4byte	.LASF48
	.byte	0x2
	.4byte	.LASF49
	.byte	0x1
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x92
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x18
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x18
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x18
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x6
	.byte	0x11
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x1d
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x62
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x1
	.byte	0x5
	.uleb128 0x23
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x1c
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x16
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x18
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x19
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x21
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x1
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x1b
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x13
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x1b
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x13
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x1b
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x14
	.byte	0x5
	.uleb128 0x24
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x16
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x14
	.byte	0x5
	.uleb128 0x24
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x18
	.byte	0x5
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE2
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM42
	.byte	0xaf
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x1b
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x1c
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x12
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x6
	.byte	0x24
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x1e
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x21
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x26
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x1b
	.byte	0x5
	.uleb128 0x2
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x3
	.sleb128 -37
	.byte	0x1
	.byte	0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE3
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM61
	.byte	0xe6
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM62-.LM61
	.byte	0x19
	.byte	0x5
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE4
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"ullNextTime"
.LASF19:
	.string	"TickType_t"
.LASF7:
	.string	"size_t"
.LASF34:
	.string	"mtvec"
.LASF37:
	.string	"ulHartId"
.LASF31:
	.string	"vAssertCalled"
.LASF15:
	.string	"uint64_t"
.LASF8:
	.string	"int32_t"
.LASF36:
	.string	"pulTimeLow"
.LASF28:
	.string	"pullMachineTimerCompareRegister"
.LASF26:
	.string	"uxTimerIncrementsForOneTick"
.LASF14:
	.string	"long unsigned int"
.LASF12:
	.string	"short unsigned int"
.LASF21:
	.string	"TrapNetCounter"
.LASF11:
	.string	"unsigned char"
.LASF25:
	.string	"pullNextTime"
.LASF38:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O2 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF32:
	.string	"ulCurrentTimeHigh"
.LASF29:
	.string	"pTrapNetCounter"
.LASF41:
	.string	"vPortSetupTimerInterrupt"
.LASF39:
	.string	"vPortEndScheduler"
.LASF30:
	.string	"xPortStartFirstTask"
.LASF2:
	.string	"unsigned int"
.LASF35:
	.string	"pulTimeHigh"
.LASF16:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF23:
	.string	"xISRStackTop"
.LASF27:
	.string	"ullMachineTimerCompareRegisterBase"
.LASF33:
	.string	"ulCurrentTimeLow"
.LASF3:
	.string	"long long int"
.LASF20:
	.string	"char"
.LASF17:
	.string	"StackType_t"
.LASF22:
	.string	"__freertos_irq_stack_top"
.LASF6:
	.string	"short int"
.LASF13:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF4:
	.string	"long double"
.LASF5:
	.string	"signed char"
.LASF40:
	.string	"xPortStartScheduler"
.LASF18:
	.string	"BaseType_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF44:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/freertos"
.LASF46:
	.string	"stddef.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c"
.LASF43:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V"
.LASF42:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/include"
.LASF47:
	.string	"stdint-gcc.h"
.LASF49:
	.string	"FreeRTOSConfig.h"
.LASF48:
	.string	"portmacro.h"
.LASF45:
	.string	"port.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
