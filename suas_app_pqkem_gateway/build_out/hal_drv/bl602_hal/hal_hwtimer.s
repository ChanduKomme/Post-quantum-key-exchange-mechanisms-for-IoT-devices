	.file	"hal_hwtimer.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_hwtimer.c"
	.section	.text.hal_hwtimer_init,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_init
	.type	hal_hwtimer_init, @function
hal_hwtimer_init:
.LFB27:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_hwtimer.c"
	.loc 1 238 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 239 12
	li	a5,0
	.loc 1 240 1
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
	.size	hal_hwtimer_init, .-hal_hwtimer_init
	.section	.rodata
	.align	2
.LC0:
	.string	"hw_timer"
	.section	.text.hal_hwtimer_create,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_create
	.type	hal_hwtimer_create, @function
hal_hwtimer_create:
.LFB28:
	.loc 1 243 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 1 248 64
	lw	a4,-36(s0)
	li	a5,1000
	mul	a4,a4,a5
	.loc 1 248 19
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a5,a5,6
	.loc 1 246 14
	addi	a3,s0,-20
	lw	a4,-40(s0)
	li	a2,1
	mv	a1,a5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	xTimerCreate
	mv	a5,a0
	.loc 1 246 12 discriminator 1
	sw	a5,-20(s0)
	.loc 1 253 9
	lw	a5,-20(s0)
	.loc 1 253 8
	beq	a5,zero,.L4
	.loc 1 254 10
	lw	s1,-20(s0)
	.loc 1 254 68
	call	xTaskGetTickCount
	mv	a5,a0
	.loc 1 254 10 discriminator 1
	li	a4,-1
	li	a3,0
	mv	a2,a5
	li	a1,1
	mv	a0,s1
	call	xTimerGenericCommand
.L4:
	.loc 1 256 12
	lw	a5,-20(s0)
	.loc 1 257 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	hal_hwtimer_create, .-hal_hwtimer_create
	.section	.text.hal_hwtimer_delete,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_delete
	.type	hal_hwtimer_delete, @function
hal_hwtimer_delete:
.LFB29:
	.loc 1 260 1
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
	.loc 1 261 33
	li	a4,-1
	li	a3,0
	li	a2,0
	li	a1,5
	lw	a0,-20(s0)
	call	xTimerGenericCommand
	mv	a5,a0
	.loc 1 261 8 discriminator 1
	bne	a5,zero,.L7
	.loc 1 262 16
	li	a5,-1
	j	.L8
.L7:
	.loc 1 264 12
	li	a5,0
.L8:
	.loc 1 265 1
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
.LFE29:
	.size	hal_hwtimer_delete, .-hal_hwtimer_delete
	.section	.text.hal_hwtimer_change_period,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_change_period
	.type	hal_hwtimer_change_period, @function
hal_hwtimer_change_period:
.LFB30:
	.loc 1 268 1
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
	.loc 1 269 154
	lw	a4,-24(s0)
	li	a5,1000
	mul	a4,a4,a5
	.loc 1 269 109
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a5,a5,6
	.loc 1 269 33
	li	a4,-1
	li	a3,0
	mv	a2,a5
	li	a1,4
	lw	a0,-20(s0)
	call	xTimerGenericCommand
	mv	a5,a0
	.loc 1 269 8 discriminator 1
	bne	a5,zero,.L10
	.loc 1 270 16
	li	a5,-1
	j	.L11
.L10:
	.loc 1 272 12
	li	a5,0
.L11:
	.loc 1 273 1
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
.LFE30:
	.size	hal_hwtimer_change_period, .-hal_hwtimer_change_period
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/timers.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_hwtimer.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x27d
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x6d
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x4
	.4byte	0x90
	.uleb128 0x5
	.4byte	0x9c
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	0x9d
	.uleb128 0x5
	.4byte	0xa4
	.uleb128 0x4
	.4byte	0xa9
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x3f
	.byte	0x11
	.4byte	0x40
	.uleb128 0x4
	.4byte	0xb3
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x40
	.byte	0x12
	.4byte	0x61
	.uleb128 0x4
	.4byte	0xc4
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x61
	.uleb128 0x4
	.4byte	0xd5
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x4d
	.byte	0x22
	.4byte	0xf2
	.uleb128 0x5
	.4byte	0xf7
	.uleb128 0xd
	.4byte	.LASF32
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x52
	.byte	0x10
	.4byte	0x108
	.uleb128 0x5
	.4byte	0x10d
	.uleb128 0xe
	.4byte	0x118
	.uleb128 0x2
	.4byte	0xe6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x26
	.byte	0x10
	.4byte	0x97
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.4byte	0x13b
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.4byte	0x90
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x3b
	.byte	0x3
	.4byte	0x124
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x510
	.byte	0xc
	.4byte	0xb3
	.4byte	0x172
	.uleb128 0x2
	.4byte	0xe6
	.uleb128 0x2
	.4byte	0xbf
	.uleb128 0x2
	.4byte	0xe1
	.uleb128 0x2
	.4byte	0x177
	.uleb128 0x2
	.4byte	0xe1
	.byte	0
	.uleb128 0x5
	.4byte	0xb3
	.uleb128 0x4
	.4byte	0x172
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x54c
	.byte	0xc
	.4byte	0xd5
	.uleb128 0x13
	.4byte	.LASF23
	.byte	0x4
	.byte	0xe4
	.byte	0x10
	.4byte	0xe6
	.4byte	0x1b3
	.uleb128 0x2
	.4byte	0xae
	.uleb128 0x2
	.4byte	0xe1
	.uleb128 0x2
	.4byte	0xd0
	.uleb128 0x2
	.4byte	0x92
	.uleb128 0x2
	.4byte	0xfc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF26
	.2byte	0x10b
	.4byte	0x7b
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1eb
	.uleb128 0x6
	.4byte	.LASF24
	.2byte	0x10b
	.byte	0x2b
	.4byte	0x1eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF25
	.2byte	0x10b
	.byte	0x3d
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	0x13b
	.uleb128 0x8
	.4byte	.LASF27
	.2byte	0x103
	.4byte	0x7b
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x219
	.uleb128 0x6
	.4byte	.LASF24
	.2byte	0x103
	.byte	0x24
	.4byte	0x1eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF28
	.byte	0x1
	.byte	0xf2
	.byte	0xd
	.4byte	0x1eb
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26a
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x29
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x36
	.4byte	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x53
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.4byte	.LASF35
	.byte	0x1
	.byte	0xf4
	.byte	0x13
	.4byte	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF36
	.byte	0x1
	.byte	0xed
	.byte	0x5
	.4byte	0x7b
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 242
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"pstnode"
.LASF17:
	.string	"TickType_t"
.LASF21:
	.string	"hw_timer_t"
.LASF23:
	.string	"xTimerCreate"
.LASF12:
	.string	"unsigned int"
.LASF33:
	.string	"null"
.LASF11:
	.string	"long long unsigned int"
.LASF26:
	.string	"hal_hwtimer_change_period"
.LASF2:
	.string	"unsigned char"
.LASF29:
	.string	"handler"
.LASF36:
	.string	"hal_hwtimer_init"
.LASF10:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF35:
	.string	"handle"
.LASF28:
	.string	"hal_hwtimer_create"
.LASF22:
	.string	"xTimerGenericCommand"
.LASF27:
	.string	"hal_hwtimer_delete"
.LASF32:
	.string	"tmrTimerControl"
.LASF19:
	.string	"TimerCallbackFunction_t"
.LASF18:
	.string	"TimerHandle_t"
.LASF16:
	.string	"UBaseType_t"
.LASF30:
	.string	"repeat"
.LASF25:
	.string	"period"
.LASF8:
	.string	"int32_t"
.LASF6:
	.string	"long long int"
.LASF14:
	.string	"char"
.LASF4:
	.string	"short int"
.LASF20:
	.string	"hw_t"
.LASF31:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"uint32_t"
.LASF5:
	.string	"long int"
.LASF13:
	.string	"long double"
.LASF3:
	.string	"signed char"
.LASF34:
	.string	"xTaskGetTickCount"
.LASF15:
	.string	"BaseType_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_hwtimer.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
