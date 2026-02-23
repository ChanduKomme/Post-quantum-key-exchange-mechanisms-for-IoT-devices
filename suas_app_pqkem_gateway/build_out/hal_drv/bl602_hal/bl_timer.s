	.file	"bl_timer.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_timer.c"
	.section	.text.bl_timer_now_us,"ax",@progbits
	.align	1
	.globl	bl_timer_now_us
	.type	bl_timer_now_us, @function
bl_timer_now_us:
.LFB9:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_timer.c"
	.loc 1 59 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 60 12
	call	timer_us_now
	mv	a4,a0
	mv	a5,a1
	.loc 1 60 27 discriminator 1
	li	a2,10
	li	a3,0
	mv	a0,a4
	mv	a1,a5
	call	__udivdi3
	mv	a4,a0
	mv	a5,a1
	mv	a5,a4
	.loc 1 61 1
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
.LFE9:
	.size	bl_timer_now_us, .-bl_timer_now_us
	.section	.text.bl_timer_now_us64,"ax",@progbits
	.align	1
	.globl	bl_timer_now_us64
	.type	bl_timer_now_us64, @function
bl_timer_now_us64:
.LFB10:
	.loc 1 64 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 65 12
	call	timer_us_now
	mv	a4,a0
	mv	a5,a1
	.loc 1 65 27 discriminator 1
	li	a2,10
	li	a3,0
	mv	a0,a4
	mv	a1,a5
	call	__udivdi3
	mv	a4,a0
	mv	a5,a1
	.loc 1 66 1
	mv	a0,a4
	mv	a1,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bl_timer_now_us64, .-bl_timer_now_us64
	.section	.text.Timer_INT_Case,"ax",@progbits
	.align	1
	.type	Timer_INT_Case, @function
Timer_INT_Case:
.LFB11:
	.loc 1 87 1
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
	.loc 1 89 5
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	li	a2,1
	li	a1,3
	mv	a0,a5
	call	TIMER_IntMask
	.loc 1 92 5
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	TIMER_Disable
	.loc 1 95 5
	lw	a0,-20(s0)
	call	TIMER_Init
	.loc 1 98 5
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	li	a1,0
	mv	a0,a5
	call	TIMER_ClearIntStatus
	.loc 1 99 5
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	li	a1,1
	mv	a0,a5
	call	TIMER_ClearIntStatus
	.loc 1 100 5
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	li	a1,2
	mv	a0,a5
	call	TIMER_ClearIntStatus
	.loc 1 103 5
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	TIMER_IntMask
	.loc 1 104 5
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	li	a2,1
	li	a1,1
	mv	a0,a5
	call	TIMER_IntMask
	.loc 1 105 5
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	li	a2,1
	li	a1,2
	mv	a0,a5
	call	TIMER_IntMask
	.loc 1 108 5
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	TIMER_Enable
	.loc 1 110 12
	li	a5,0
	.loc 1 111 1
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
.LFE11:
	.size	Timer_INT_Case, .-Timer_INT_Case
	.section	.text.int_timer_cb,"ax",@progbits
	.align	1
	.type	int_timer_cb, @function
int_timer_cb:
.LFB12:
	.loc 1 114 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 115 5
	li	a1,0
	li	a0,1
	call	TIMER_ClearIntStatus
	.loc 1 116 9
	call	xTaskIncrementTick
	mv	a5,a0
	.loc 1 116 8 discriminator 1
	beq	a5,zero,.L9
	.loc 1 117 9
	call	vTaskSwitchContext
.L9:
	.loc 1 119 1
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
.LFE12:
	.size	int_timer_cb, .-int_timer_cb
	.section	.rodata
	.align	2
.LC0:
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	15
	.zero	3
	.word	9998
	.word	360000
	.word	390000
	.word	0
	.section	.text.bl_timer_tick_enable,"ax",@progbits
	.align	1
	.globl	bl_timer_tick_enable
	.type	bl_timer_tick_enable, @function
bl_timer_tick_enable:
.LFB13:
	.loc 1 122 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 123 20
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	lw	a2,8(a5)
	lw	a3,12(a5)
	lw	a4,16(a5)
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	sw	a4,-24(s0)
	lw	a5,20(a5)
	sw	a5,-20(s0)
	.loc 1 137 5
	addi	a5,s0,-40
	mv	a0,a5
	call	Timer_INT_Case
	.loc 1 139 5
	li	a0,53
	call	bl_irq_enable
	.loc 1 140 5
	lui	a5,%hi(int_timer_cb)
	addi	a1,a5,%lo(int_timer_cb)
	li	a0,53
	call	bl_irq_register
	.loc 1 142 12
	li	a5,0
	.loc 1 143 1
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
.LFE13:
	.size	bl_timer_tick_enable, .-bl_timer_tick_enable
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_timer.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_irq.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x58b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x9
	.4byte	.LASF140
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
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x45
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x5f
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	0x5f
	.byte	0x3
	.byte	0x41
	.byte	0x1
	.4byte	0x24c
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x35
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x36
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x37
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x39
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x3b
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x49
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x4b
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x4d
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x4f
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF84
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF85
	.uleb128 0x5
	.4byte	0x5f
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0x27b
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0x25c
	.uleb128 0x5
	.4byte	0x5f
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x2a0
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0x4
	.byte	0x36
	.byte	0x2
	.4byte	0x287
	.uleb128 0x5
	.4byte	0x5f
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0x2cb
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0x5
	.byte	0x3d
	.byte	0x2
	.4byte	0x2ac
	.uleb128 0x5
	.4byte	0x5f
	.byte	0x5
	.byte	0x42
	.byte	0xe
	.4byte	0x2fc
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0x5
	.byte	0x47
	.byte	0x2
	.4byte	0x2d7
	.uleb128 0x5
	.4byte	0x5f
	.byte	0x5
	.byte	0x4c
	.byte	0xe
	.4byte	0x327
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0x5
	.byte	0x50
	.byte	0x2
	.4byte	0x308
	.uleb128 0x5
	.4byte	0x5f
	.byte	0x5
	.byte	0x55
	.byte	0xe
	.4byte	0x358
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0x5
	.byte	0x5a
	.byte	0x2
	.4byte	0x333
	.uleb128 0x5
	.4byte	0x5f
	.byte	0x5
	.byte	0x5f
	.byte	0xe
	.4byte	0x37d
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0x5
	.byte	0x62
	.byte	0x2
	.4byte	0x364
	.uleb128 0x5
	.4byte	0x5f
	.byte	0x5
	.byte	0x67
	.byte	0xe
	.4byte	0x3ae
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0x5
	.byte	0x6c
	.byte	0x2
	.4byte	0x389
	.uleb128 0xc
	.byte	0x18
	.byte	0x5
	.byte	0x79
	.byte	0x9
	.4byte	0x430
	.uleb128 0x6
	.4byte	.LASF119
	.byte	0x7a
	.byte	0x15
	.4byte	0x2cb
	.byte	0
	.uleb128 0x6
	.4byte	.LASF120
	.byte	0x7b
	.byte	0x17
	.4byte	0x2fc
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF121
	.byte	0x7c
	.byte	0x1d
	.4byte	0x358
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF122
	.byte	0x7d
	.byte	0x1a
	.4byte	0x37d
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF123
	.byte	0x7e
	.byte	0xd
	.4byte	0x53
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF124
	.byte	0x7f
	.byte	0xe
	.4byte	0x6d
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF125
	.byte	0x80
	.byte	0xe
	.4byte	0x6d
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF126
	.byte	0x81
	.byte	0xe
	.4byte	0x6d
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF127
	.byte	0x82
	.byte	0xe
	.4byte	0x6d
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0x5
	.byte	0x83
	.byte	0x2
	.4byte	0x3ba
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x6
	.byte	0x3f
	.byte	0x11
	.4byte	0x39
	.uleb128 0x7
	.4byte	.LASF130
	.byte	0x7
	.byte	0x32
	.4byte	0x45e
	.uleb128 0x4
	.4byte	0x93
	.uleb128 0x4
	.4byte	0x253
	.byte	0
	.uleb128 0x7
	.4byte	.LASF131
	.byte	0x7
	.byte	0x20
	.4byte	0x46f
	.uleb128 0x4
	.4byte	0x9a
	.byte	0
	.uleb128 0xd
	.4byte	.LASF141
	.byte	0x8
	.2byte	0x97c
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF136
	.byte	0x8
	.2byte	0x928
	.byte	0xc
	.4byte	0x43c
	.uleb128 0x7
	.4byte	.LASF132
	.byte	0x5
	.byte	0xdd
	.4byte	0x496
	.uleb128 0x4
	.4byte	0x2cb
	.byte	0
	.uleb128 0x7
	.4byte	.LASF133
	.byte	0x5
	.byte	0xdc
	.4byte	0x4ac
	.uleb128 0x4
	.4byte	0x2cb
	.uleb128 0x4
	.4byte	0x327
	.byte	0
	.uleb128 0xf
	.4byte	.LASF142
	.byte	0x5
	.byte	0xd3
	.byte	0xd
	.4byte	0x27b
	.4byte	0x4c2
	.uleb128 0x4
	.4byte	0x4c2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x430
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0x5
	.byte	0xde
	.4byte	0x4d9
	.uleb128 0x4
	.4byte	0x2cb
	.byte	0
	.uleb128 0x7
	.4byte	.LASF135
	.byte	0x5
	.byte	0xdf
	.4byte	0x4f4
	.uleb128 0x4
	.4byte	0x2cb
	.uleb128 0x4
	.4byte	0x3ae
	.uleb128 0x4
	.4byte	0x2a0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0x1
	.byte	0x37
	.byte	0x11
	.4byte	0x80
	.uleb128 0x12
	.4byte	.LASF143
	.byte	0x1
	.byte	0x79
	.byte	0x5
	.4byte	0x93
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52a
	.uleb128 0x13
	.4byte	.LASF144
	.byte	0x1
	.byte	0x7b
	.byte	0x14
	.4byte	0x430
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x14
	.4byte	.LASF145
	.byte	0x1
	.byte	0x71
	.byte	0xd
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF146
	.byte	0x1
	.byte	0x56
	.byte	0x14
	.4byte	0x27b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x566
	.uleb128 0x16
	.4byte	.LASF147
	.byte	0x1
	.byte	0x56
	.byte	0x33
	.4byte	0x4c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF138
	.byte	0x3f
	.4byte	0x80
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF139
	.byte	0x3a
	.4byte	0x6d
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.sleb128 10
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
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
	.4byte	.LFB11
	.uleb128 .LFE11-.LFB11
	.byte	0x7
	.4byte	.LFB12
	.uleb128 .LFE12-.LFB12
	.byte	0x7
	.4byte	.LFB13
	.uleb128 .LFE13-.LFB13
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF87:
	.string	"ERROR"
.LASF106:
	.string	"TIMER_PRELOAD_TRIG_NONE"
.LASF95:
	.string	"TIMER_CH_MAX"
.LASF105:
	.string	"TIMER_Comp_ID_Type"
.LASF21:
	.string	"L1C_BMX_ERR_IRQn"
.LASF17:
	.string	"MEXT_IRQn"
.LASF26:
	.string	"SDIO_IRQn"
.LASF69:
	.string	"PDS_WAKEUP_IRQn"
.LASF147:
	.string	"timerCfg"
.LASF74:
	.string	"BZ_PHY_IRQn"
.LASF14:
	.string	"unsigned int"
.LASF135:
	.string	"TIMER_IntMask"
.LASF81:
	.string	"MAC_PORT_TRG_IRQn"
.LASF143:
	.string	"bl_timer_tick_enable"
.LASF72:
	.string	"BOR_IRQn"
.LASF20:
	.string	"BMX_TO_IRQn"
.LASF33:
	.string	"SEC_SHA_IRQn"
.LASF136:
	.string	"xTaskIncrementTick"
.LASF57:
	.string	"TIMER_WDT_IRQn"
.LASF42:
	.string	"SF_CTRL_IRQn"
.LASF145:
	.string	"int_timer_cb"
.LASF124:
	.string	"matchVal0"
.LASF125:
	.string	"matchVal1"
.LASF126:
	.string	"matchVal2"
.LASF99:
	.string	"TIMER_CLKSRC_1K"
.LASF89:
	.string	"BL_Err_Type"
.LASF101:
	.string	"TIMER_ClkSrc_Type"
.LASF10:
	.string	"uint32_t"
.LASF122:
	.string	"countMode"
.LASF144:
	.string	"timerCh1Cfg"
.LASF63:
	.string	"GPIO_INT0_IRQn"
.LASF13:
	.string	"long long unsigned int"
.LASF22:
	.string	"L1C_BMX_TO_IRQn"
.LASF127:
	.string	"preLoadVal"
.LASF114:
	.string	"TIMER_INT_COMP_0"
.LASF115:
	.string	"TIMER_INT_COMP_1"
.LASF116:
	.string	"TIMER_INT_COMP_2"
.LASF25:
	.string	"RF_TOP_INT1_IRQn"
.LASF60:
	.string	"RESERVED12"
.LASF55:
	.string	"TIMER_CH0_IRQn"
.LASF133:
	.string	"TIMER_ClearIntStatus"
.LASF91:
	.string	"MASK"
.LASF146:
	.string	"Timer_INT_Case"
.LASF97:
	.string	"TIMER_CLKSRC_FCLK"
.LASF49:
	.string	"UART1_IRQn"
.LASF132:
	.string	"TIMER_Enable"
.LASF82:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF34:
	.string	"DMA_ALL_IRQn"
.LASF46:
	.string	"SPI_IRQn"
.LASF86:
	.string	"SUCCESS"
.LASF85:
	.string	"char"
.LASF51:
	.string	"I2C_IRQn"
.LASF103:
	.string	"TIMER_COMP_ID_1"
.LASF7:
	.string	"uint8_t"
.LASF79:
	.string	"MAC_TX_TRG_IRQn"
.LASF90:
	.string	"UNMASK"
.LASF118:
	.string	"TIMER_INT_Type"
.LASF5:
	.string	"long long int"
.LASF88:
	.string	"TIMEOUT"
.LASF129:
	.string	"BaseType_t"
.LASF75:
	.string	"BLE_IRQn"
.LASF107:
	.string	"TIMER_PRELOAD_TRIG_COMP0"
.LASF108:
	.string	"TIMER_PRELOAD_TRIG_COMP1"
.LASF109:
	.string	"TIMER_PRELOAD_TRIG_COMP2"
.LASF70:
	.string	"HBN_OUT0_IRQn"
.LASF83:
	.string	"IRQn_LAST"
.LASF53:
	.string	"PWM_IRQn"
.LASF98:
	.string	"TIMER_CLKSRC_32K"
.LASF19:
	.string	"BMX_ERR_IRQn"
.LASF27:
	.string	"DMA_BMX_ERR_IRQn"
.LASF113:
	.string	"TIMER_CountMode_Type"
.LASF123:
	.string	"clockDivision"
.LASF121:
	.string	"plTrigSrc"
.LASF80:
	.string	"MAC_GEN_IRQn"
.LASF24:
	.string	"RF_TOP_INT0_IRQn"
.LASF110:
	.string	"TIMER_PreLoad_Trig_Type"
.LASF84:
	.string	"long double"
.LASF45:
	.string	"EFUSE_IRQn"
.LASF141:
	.string	"vTaskSwitchContext"
.LASF23:
	.string	"SEC_BMX_ERR_IRQn"
.LASF77:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF58:
	.string	"RESERVED10"
.LASF35:
	.string	"RESERVED0"
.LASF36:
	.string	"RESERVED1"
.LASF37:
	.string	"RESERVED2"
.LASF40:
	.string	"RESERVED3"
.LASF41:
	.string	"RESERVED4"
.LASF43:
	.string	"RESERVED5"
.LASF47:
	.string	"RESERVED6"
.LASF3:
	.string	"short int"
.LASF52:
	.string	"RESERVED8"
.LASF54:
	.string	"RESERVED9"
.LASF4:
	.string	"long int"
.LASF112:
	.string	"TIMER_COUNT_FREERUN"
.LASF48:
	.string	"UART0_IRQn"
.LASF131:
	.string	"bl_irq_enable"
.LASF96:
	.string	"TIMER_Chan_Type"
.LASF12:
	.string	"uint64_t"
.LASF39:
	.string	"IRRX_IRQn"
.LASF28:
	.string	"SEC_GMAC_IRQn"
.LASF100:
	.string	"TIMER_CLKSRC_XTAL"
.LASF78:
	.string	"MAC_RX_TRG_IRQn"
.LASF119:
	.string	"timerCh"
.LASF73:
	.string	"WIFI_IRQn"
.LASF111:
	.string	"TIMER_COUNT_PRELOAD"
.LASF29:
	.string	"SEC_CDET_IRQn"
.LASF11:
	.string	"long unsigned int"
.LASF71:
	.string	"HBN_OUT1_IRQn"
.LASF16:
	.string	"MTIME_IRQn"
.LASF92:
	.string	"BL_Mask_Type"
.LASF30:
	.string	"SEC_PKA_IRQn"
.LASF6:
	.string	"int32_t"
.LASF44:
	.string	"GPADC_DMA_IRQn"
.LASF8:
	.string	"unsigned char"
.LASF102:
	.string	"TIMER_COMP_ID_0"
.LASF18:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF104:
	.string	"TIMER_COMP_ID_2"
.LASF38:
	.string	"IRTX_IRQn"
.LASF15:
	.string	"MSOFT_IRQn"
.LASF59:
	.string	"RESERVED11"
.LASF32:
	.string	"SEC_AES_IRQn"
.LASF61:
	.string	"RESERVED13"
.LASF62:
	.string	"RESERVED14"
.LASF64:
	.string	"RESERVED16"
.LASF65:
	.string	"RESERVED17"
.LASF66:
	.string	"RESERVED18"
.LASF67:
	.string	"RESERVED19"
.LASF142:
	.string	"TIMER_Init"
.LASF31:
	.string	"SEC_TRNG_IRQn"
.LASF2:
	.string	"signed char"
.LASF93:
	.string	"TIMER_CH0"
.LASF94:
	.string	"TIMER_CH1"
.LASF56:
	.string	"TIMER_CH1_IRQn"
.LASF9:
	.string	"short unsigned int"
.LASF68:
	.string	"RESERVED20"
.LASF120:
	.string	"clkSrc"
.LASF128:
	.string	"TIMER_CFG_Type"
.LASF130:
	.string	"bl_irq_register"
.LASF117:
	.string	"TIMER_INT_ALL"
.LASF50:
	.string	"RESERVED7"
.LASF140:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF76:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF139:
	.string	"bl_timer_now_us"
.LASF134:
	.string	"TIMER_Disable"
.LASF137:
	.string	"timer_us_now"
.LASF138:
	.string	"bl_timer_now_us64"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_timer.c"
	.globl	__udivdi3
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
