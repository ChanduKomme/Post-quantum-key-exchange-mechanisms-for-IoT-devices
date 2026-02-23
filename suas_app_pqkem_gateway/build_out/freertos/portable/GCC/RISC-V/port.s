	.file	"port.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos" "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c"
	.globl	xISRStackTop
	.section	.srodata.xISRStackTop,"a"
	.align	2
	.type	xISRStackTop, @object
	.size	xISRStackTop, 4
xISRStackTop:
	.word	__freertos_irq_stack_top
	.globl	ullNextTime
	.section	.sbss.ullNextTime,"aw",@nobits
	.align	3
	.type	ullNextTime, @object
	.size	ullNextTime, 8
ullNextTime:
	.zero	8
	.globl	pullNextTime
	.section	.sdata.pullNextTime,"aw"
	.align	2
	.type	pullNextTime, @object
	.size	pullNextTime, 4
pullNextTime:
	.word	ullNextTime
	.globl	uxTimerIncrementsForOneTick
	.section	.srodata.uxTimerIncrementsForOneTick,"a"
	.align	2
	.type	uxTimerIncrementsForOneTick, @object
	.size	uxTimerIncrementsForOneTick, 4
uxTimerIncrementsForOneTick:
	.word	10000
	.globl	ullMachineTimerCompareRegisterBase
	.section	.srodata.ullMachineTimerCompareRegisterBase,"a"
	.align	2
	.type	ullMachineTimerCompareRegisterBase, @object
	.size	ullMachineTimerCompareRegisterBase, 4
ullMachineTimerCompareRegisterBase:
	.word	33570816
	.globl	pullMachineTimerCompareRegister
	.section	.sbss.pullMachineTimerCompareRegister,"aw",@nobits
	.align	2
	.type	pullMachineTimerCompareRegister, @object
	.size	pullMachineTimerCompareRegister, 4
pullMachineTimerCompareRegister:
	.zero	4
	.globl	TrapNetCounter
	.section	.sbss.TrapNetCounter,"aw",@nobits
	.align	2
	.type	TrapNetCounter, @object
	.size	TrapNetCounter, 4
TrapNetCounter:
	.zero	4
	.globl	pTrapNetCounter
	.section	.sdata.pTrapNetCounter,"aw"
	.align	2
	.type	pTrapNetCounter, @object
	.size	pTrapNetCounter, 4
pTrapNetCounter:
	.word	TrapNetCounter
	.section	.text.vPortSetupTimerInterrupt,"ax",@progbits
	.align	1
	.weak	vPortSetupTimerInterrupt
	.type	vPortSetupTimerInterrupt, @function
vPortSetupTimerInterrupt:
.LFB2:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c"
	.loc 1 124 2
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 126 28
	li	t5,33603584
	addi	t5,t5,-4
	sw	t5,-20(s0)
	.loc 1 127 28
	li	t5,33603584
	addi	t5,t5,-8
	sw	t5,-24(s0)
	.loc 1 130 3
 #APP
# 130 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c" 1
	csrr t5, mhartid
# 0 "" 2
 #NO_APP
	sw	t5,-36(s0)
	.loc 1 131 111
	lw	t5,-36(s0)
	slli	t6,t5,3
	.loc 1 131 98
	li	t5,33570816
	add	t5,t6,t5
	.loc 1 131 37
	mv	t6,t5
	.loc 1 131 35
	lui	t5,%hi(pullMachineTimerCompareRegister)
	sw	t6,%lo(pullMachineTimerCompareRegister)(t5)
.L2:
	.loc 1 135 22
	lw	t5,-20(s0)
	lw	t5,0(t5)
	sw	t5,-28(s0)
	.loc 1 136 21
	lw	t5,-24(s0)
	lw	t5,0(t5)
	sw	t5,-32(s0)
	.loc 1 137 33 discriminator 1
	lw	t5,-20(s0)
	lw	t5,0(t5)
	.loc 1 137 30 discriminator 1
	lw	t6,-28(s0)
	bne	t6,t5,.L2
	.loc 1 139 17
	lw	t5,-28(s0)
	mv	t3,t5
	li	t4,0
	.loc 1 139 15
	lui	t5,%hi(ullNextTime)
	sw	t3,%lo(ullNextTime)(t5)
	sw	t4,%lo(ullNextTime+4)(t5)
	.loc 1 140 15
	lui	t3,%hi(ullNextTime)
	lw	t4,%lo(ullNextTime+4)(t3)
	lw	t3,%lo(ullNextTime)(t3)
	slli	t2,t3,0
	li	t1,0
	lui	t3,%hi(ullNextTime)
	sw	t1,%lo(ullNextTime)(t3)
	sw	t2,%lo(ullNextTime+4)(t3)
	.loc 1 141 18
	lw	t1,-32(s0)
	mv	a4,t1
	li	a5,0
	.loc 1 141 15
	lui	t1,%hi(ullNextTime)
	lw	t2,%lo(ullNextTime+4)(t1)
	lw	t1,%lo(ullNextTime)(t1)
	or	a6,a4,t1
	or	a7,a5,t2
	lui	a5,%hi(ullNextTime)
	sw	a6,%lo(ullNextTime)(a5)
	sw	a7,%lo(ullNextTime+4)(a5)
	.loc 1 142 18
	li	a5,8192
	addi	a5,a5,1808
	mv	a0,a5
	li	a1,0
	.loc 1 142 15
	lui	a5,%hi(ullNextTime)
	lw	a6,%lo(ullNextTime)(a5)
	lw	a7,%lo(ullNextTime+4)(a5)
	add	a4,a0,a6
	mv	t1,a4
	sltu	t1,t1,a0
	add	a5,a1,a7
	add	a1,t1,a5
	mv	a5,a1
	lui	a1,%hi(ullNextTime)
	sw	a4,%lo(ullNextTime)(a1)
	sw	a5,%lo(ullNextTime+4)(a1)
	.loc 1 143 3
	lui	a5,%hi(pullMachineTimerCompareRegister)
	lw	a1,%lo(pullMachineTimerCompareRegister)(a5)
	.loc 1 143 36
	lui	a5,%hi(ullNextTime)
	lw	a4,%lo(ullNextTime)(a5)
	lw	a5,%lo(ullNextTime+4)(a5)
	sw	a4,0(a1)
	sw	a5,4(a1)
	.loc 1 146 18
	li	a5,8192
	addi	a5,a5,1808
	mv	a2,a5
	li	a3,0
	.loc 1 146 15
	lui	a5,%hi(ullNextTime)
	lw	a0,%lo(ullNextTime)(a5)
	lw	a1,%lo(ullNextTime+4)(a5)
	add	a4,a2,a0
	mv	a6,a4
	sltu	a6,a6,a2
	add	a5,a3,a1
	add	a3,a6,a5
	mv	a5,a3
	lui	a3,%hi(ullNextTime)
	sw	a4,%lo(ullNextTime)(a3)
	sw	a5,%lo(ullNextTime+4)(a3)
	.loc 1 147 2
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
.LFE2:
	.size	vPortSetupTimerInterrupt, .-vPortSetupTimerInterrupt
	.section	.text.xPortStartScheduler,"ax",@progbits
	.align	1
	.globl	xPortStartScheduler
	.type	xPortStartScheduler, @function
xPortStartScheduler:
.LFB3:
	.loc 1 153 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB2:
	.loc 1 158 21
	sw	zero,-20(s0)
	.loc 1 162 3
 #APP
# 162 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c" 1
	csrr a5, mtvec
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	.loc 1 167 24
	lui	a5,%hi(xISRStackTop)
	lw	a5,%lo(xISRStackTop)(a5)
	andi	a5,a5,15
	.loc 1 167 5
	beq	a5,zero,.L4
	.loc 1 167 53 discriminator 1
	call	vAssertCalled
.L4:
.LBE2:
	.loc 1 180 2
	call	vPortSetupTimerInterrupt
	.loc 1 187 3
	li	a5,4096
	addi	a5,a5,-1920
 #APP
# 187 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c" 1
	csrs mie, a5
# 0 "" 2
	.loc 1 197 5
 #NO_APP
	li	a5,41943040
	addi	a5,a5,1031
	.loc 1 197 38
	li	a4,1
	sb	a4,0(a5)
	.loc 1 199 2
	call	xPortStartFirstTask
	.loc 1 203 9
	li	a5,0
	.loc 1 204 1
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
.LFE3:
	.size	xPortStartScheduler, .-xPortStartScheduler
	.section	.text.vPortEndScheduler,"ax",@progbits
	.align	1
	.globl	vPortEndScheduler
	.type	vPortEndScheduler, @function
vPortEndScheduler:
.LFB4:
	.loc 1 208 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.L7:
	.loc 1 210 2
	nop
	j	.L7
	.cfi_endproc
.LFE4:
	.size	vPortEndScheduler, .-vPortEndScheduler
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOSConfig.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x27f
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xb
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
	.uleb128 0xc
	.4byte	0x9f
	.4byte	0x119
	.uleb128 0xd
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
	.uleb128 0x6
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
	.uleb128 0x6
	.4byte	0xc1
	.uleb128 0xe
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
	.uleb128 0x6
	.4byte	0xea
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x1
	.byte	0x9a
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x5
	.byte	0x97
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0xcf
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x1
	.byte	0x98
	.byte	0xc
	.4byte	0xde
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21b
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x1
	.byte	0x9a
	.byte	0xd
	.uleb128 0x11
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0x9e
	.byte	0x15
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x1
	.byte	0x7b
	.byte	0x7
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x278
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0x7d
	.byte	0xb
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x7d
	.byte	0x1e
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x7e
	.byte	0x1c
	.4byte	0x27d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF36
	.byte	0x7f
	.byte	0x1c
	.4byte	0x27d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF37
	.byte	0x80
	.byte	0x14
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.4byte	0xa4
	.uleb128 0x3
	.4byte	0x278
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
.LLRL0:
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
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"ullNextTime"
.LASF19:
	.string	"TickType_t"
.LASF7:
	.string	"size_t"
.LASF32:
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
.LASF33:
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
.LASF34:
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
.LASF38:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
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
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
