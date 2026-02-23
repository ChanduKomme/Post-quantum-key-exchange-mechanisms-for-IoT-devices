	.file	"bl_pwm.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_pwm.c"
	.section	.text.gpio_init,"ax",@progbits
	.align	1
	.type	gpio_init, @function
gpio_init:
.LFB9:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_pwm.c"
	.loc 1 40 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 1 43 15
	sb	zero,-20(s0)
	.loc 1 44 17
	li	a5,1
	sb	a5,-19(s0)
	.loc 1 45 18
	li	a5,1
	sb	a5,-22(s0)
	.loc 1 46 18
	li	a5,1
	sb	a5,-21(s0)
	.loc 1 47 17
	lbu	a5,-33(s0)
	sb	a5,-24(s0)
	.loc 1 48 17
	li	a5,8
	sb	a5,-23(s0)
	.loc 1 50 5
	addi	a5,s0,-24
	mv	a0,a5
	call	GLB_GPIO_Init
	.loc 1 51 1
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
.LFE9:
	.size	gpio_init, .-gpio_init
	.section	.text.pwm_init,"ax",@progbits
	.align	1
	.type	pwm_init, @function
pwm_init:
.LFB10:
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
	mv	a5,a0
	sw	a1,-40(s0)
	sb	a5,-33(s0)
	.loc 1 55 21
	sb	zero,-32(s0)
	sb	zero,-31(s0)
	sb	zero,-30(s0)
	sb	zero,-29(s0)
	sh	zero,-28(s0)
	li	a5,100
	sh	a5,-26(s0)
	sh	zero,-24(s0)
	sh	zero,-22(s0)
	sh	zero,-20(s0)
	.loc 1 68 8
	lw	a4,-40(s0)
	li	a5,1999
	bleu	a4,a5,.L3
	.loc 1 68 23 discriminator 1
	lw	a4,-40(s0)
	li	a5,798720
	addi	a5,a5,1280
	bleu	a4,a5,.L4
.L3:
	.loc 1 69 16
	li	a5,-1
	j	.L6
.L4:
	.loc 1 72 29
	li	a5,40001536
	addi	a4,a5,-1536
	lw	a5,-40(s0)
	divu	a5,a4,a5
	.loc 1 72 19
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,-26(s0)
	.loc 1 73 15
	lbu	a5,-33(s0)
	sb	a5,-32(s0)
	.loc 1 75 5
	lbu	a5,-33(s0)
	mv	a0,a5
	call	PWM_Channel_Disable
	.loc 1 76 5
	addi	a5,s0,-32
	mv	a0,a5
	call	PWM_Channel_Init
	.loc 1 78 12
	li	a5,0
.L6:
	.loc 1 79 1
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
.LFE10:
	.size	pwm_init, .-pwm_init
	.section	.text.bl_pwm_init,"ax",@progbits
	.align	1
	.globl	bl_pwm_init
	.type	bl_pwm_init, @function
bl_pwm_init:
.LFB11:
	.loc 1 82 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a2,-24(s0)
	sb	a5,-17(s0)
	mv	a5,a4
	sb	a5,-18(s0)
	.loc 1 83 8
	lbu	a4,-18(s0)
	li	a5,22
	bleu	a4,a5,.L8
	.loc 1 84 16
	li	a5,-1
	j	.L9
.L8:
	.loc 1 88 8
	lw	a4,-24(s0)
	li	a5,1999
	bleu	a4,a5,.L10
	.loc 1 88 23 discriminator 1
	lw	a4,-24(s0)
	li	a5,798720
	addi	a5,a5,1280
	bleu	a4,a5,.L11
.L10:
	.loc 1 90 16
	li	a5,-1
	j	.L9
.L11:
	.loc 1 94 5
	lbu	a5,-18(s0)
	mv	a0,a5
	call	gpio_init
	.loc 1 95 5
	lbu	a5,-17(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	pwm_init
	.loc 1 97 12
	li	a5,0
.L9:
	.loc 1 98 1
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
	.size	bl_pwm_init, .-bl_pwm_init
	.section	.text.bl_pwm_start,"ax",@progbits
	.align	1
	.globl	bl_pwm_start
	.type	bl_pwm_start, @function
bl_pwm_start:
.LFB12:
	.loc 1 101 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 102 5
	lbu	a5,-17(s0)
	mv	a0,a5
	call	PWM_Channel_Enable
	.loc 1 103 12
	li	a5,0
	.loc 1 104 1
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
.LFE12:
	.size	bl_pwm_start, .-bl_pwm_start
	.section	.text.bl_pwm_stop,"ax",@progbits
	.align	1
	.globl	bl_pwm_stop
	.type	bl_pwm_stop, @function
bl_pwm_stop:
.LFB13:
	.loc 1 107 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 108 5
	lbu	a5,-17(s0)
	mv	a0,a5
	call	PWM_Channel_Disable
	.loc 1 109 12
	li	a5,0
	.loc 1 110 1
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
.LFE13:
	.size	bl_pwm_stop, .-bl_pwm_stop
	.section	.text.bl_pwm_set_freq,"ax",@progbits
	.align	1
	.globl	bl_pwm_set_freq
	.type	bl_pwm_set_freq, @function
bl_pwm_set_freq:
.LFB14:
	.loc 1 113 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-40(s0)
	sb	a5,-33(s0)
	.loc 1 114 5
	lbu	a5,-33(s0)
	mv	a0,a5
	call	PWM_Channel_Disable
	.loc 1 116 31
	li	a5,40001536
	addi	a4,a5,-1536
	lw	a5,-40(s0)
	divu	a5,a4,a5
	.loc 1 116 14
	sh	a5,-18(s0)
	.loc 1 117 14
	sh	zero,-20(s0)
	.loc 1 118 14
	sh	zero,-22(s0)
	.loc 1 120 5
	lhu	a3,-22(s0)
	lhu	a2,-20(s0)
	lhu	a4,-18(s0)
	lbu	a5,-33(s0)
	mv	a1,a4
	mv	a0,a5
	call	PWM_Channel_Update
	.loc 1 121 5
	lbu	a5,-33(s0)
	mv	a0,a5
	call	PWM_Channel_Enable
	.loc 1 123 12
	li	a5,0
	.loc 1 124 1
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
.LFE14:
	.size	bl_pwm_set_freq, .-bl_pwm_set_freq
	.section	.text.bl_pwm_set_duty,"ax",@progbits
	.align	1
	.globl	bl_pwm_set_duty
	.type	bl_pwm_set_duty, @function
bl_pwm_set_duty:
.LFB15:
	.loc 1 127 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	fsw	fa0,-40(s0)
	sb	a5,-33(s0)
	.loc 1 132 5
	addi	a3,s0,-22
	addi	a2,s0,-20
	addi	a4,s0,-18
	lbu	a5,-33(s0)
	mv	a1,a4
	mv	a0,a5
	call	PWM_Channel_Get
	.loc 1 134 16
	sh	zero,-20(s0)
	.loc 1 135 35
	lhu	a4,-18(s0)
	li	a5,1374388224
	addi	a5,a5,1311
	mulhu	a5,a4,a5
	srli	a5,a5,5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 135 40
	fcvt.s.w	fa4,a5
	flw	fa5,-40(s0)
	fmul.s	fa5,fa4,fa5
	.loc 1 135 18
	fcvt.wu.s a5,fa5,rtz
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 135 16
	sh	a5,-22(s0)
	.loc 1 137 5
	lhu	a4,-20(s0)
	lbu	a5,-33(s0)
	mv	a1,a4
	mv	a0,a5
	call	PWM_Channel_Set_Threshold1
	.loc 1 138 5
	lhu	a4,-22(s0)
	lbu	a5,-33(s0)
	mv	a1,a4
	mv	a0,a5
	call	PWM_Channel_Set_Threshold2
	.loc 1 139 12
	li	a5,0
	.loc 1 140 1
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
.LFE15:
	.size	bl_pwm_set_duty, .-bl_pwm_set_duty
	.section	.text.bl_pwm_get_duty,"ax",@progbits
	.align	1
	.globl	bl_pwm_get_duty
	.type	bl_pwm_get_duty, @function
bl_pwm_get_duty:
.LFB16:
	.loc 1 143 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-40(s0)
	sb	a5,-33(s0)
	.loc 1 148 8
	lw	a5,-40(s0)
	bne	a5,zero,.L21
	.loc 1 149 16
	li	a5,-1
	j	.L23
.L21:
	.loc 1 151 5
	addi	a3,s0,-22
	addi	a2,s0,-20
	addi	a4,s0,-18
	lbu	a5,-33(s0)
	mv	a1,a4
	mv	a0,a5
	call	PWM_Channel_Get
	.loc 1 153 15
	lhu	a5,-22(s0)
	fcvt.s.wu	fa4,a5
	.loc 1 153 33
	lui	a5,%hi(.LC0)
	flw	fa5,%lo(.LC0)(a5)
	fmul.s	fa4,fa4,fa5
	.loc 1 153 39
	lhu	a5,-18(s0)
	fcvt.s.w	fa5,a5
	fdiv.s	fa5,fa4,fa5
	.loc 1 153 13
	lw	a5,-40(s0)
	fsw	fa5,0(a5)
	.loc 1 155 12
	li	a5,0
.L23:
	.loc 1 156 1
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
.LFE16:
	.size	bl_pwm_get_duty, .-bl_pwm_get_duty
	.section	.rodata
	.align	2
.LC0:
	.word	1120403456
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_pwm.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5fb
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xf
	.4byte	.LASF95
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
	.uleb128 0x5
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
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x5f
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x72
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x85
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x8
	.4byte	0x5f
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xce
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xaf
	.uleb128 0x8
	.4byte	0x5f
	.byte	0x4
	.byte	0x39
	.byte	0xe
	.4byte	0x10b
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x4
	.byte	0x40
	.byte	0x2
	.4byte	0xda
	.uleb128 0x8
	.4byte	0x5f
	.byte	0x4
	.byte	0x45
	.byte	0xe
	.4byte	0x136
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x4
	.byte	0x49
	.byte	0x2
	.4byte	0x117
	.uleb128 0x8
	.4byte	0x5f
	.byte	0x4
	.byte	0x4e
	.byte	0xe
	.4byte	0x15b
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x4
	.byte	0x51
	.byte	0x2
	.4byte	0x142
	.uleb128 0x8
	.4byte	0x5f
	.byte	0x4
	.byte	0x56
	.byte	0xe
	.4byte	0x180
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF37
	.byte	0x4
	.byte	0x59
	.byte	0x2
	.4byte	0x167
	.uleb128 0xe
	.byte	0xe
	.byte	0x4
	.byte	0x66
	.4byte	0x206
	.uleb128 0xd
	.string	"ch"
	.byte	0x67
	.byte	0x14
	.4byte	0x10b
	.byte	0
	.uleb128 0xd
	.string	"clk"
	.byte	0x68
	.byte	0x12
	.4byte	0x136
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x4
	.byte	0x69
	.byte	0x18
	.4byte	0x15b
	.byte	0x2
	.uleb128 0xd
	.string	"pol"
	.byte	0x6a
	.byte	0x17
	.4byte	0x180
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x4
	.byte	0x6b
	.byte	0xe
	.4byte	0x66
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x4
	.byte	0x6c
	.byte	0xe
	.4byte	0x66
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x4
	.byte	0x6d
	.byte	0xe
	.4byte	0x66
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x4
	.byte	0x6e
	.byte	0xe
	.4byte	0x66
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x4
	.byte	0x6f
	.byte	0xe
	.4byte	0x66
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0x4
	.byte	0x70
	.byte	0x2
	.4byte	0x18c
	.uleb128 0x8
	.4byte	0x5f
	.byte	0x5
	.byte	0x29
	.byte	0x1
	.4byte	0x2af
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.byte	0x6
	.byte	0x5
	.byte	0x59
	.4byte	0x306
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x5
	.byte	0x5b
	.byte	0xd
	.4byte	0x53
	.byte	0
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x5
	.byte	0x5c
	.byte	0xd
	.4byte	0x53
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0x5
	.byte	0x5d
	.byte	0xd
	.4byte	0x53
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x5
	.byte	0x5e
	.byte	0xd
	.4byte	0x53
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0x5
	.byte	0x5f
	.byte	0xd
	.4byte	0x53
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0x5
	.byte	0x60
	.byte	0xd
	.4byte	0x53
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF75
	.byte	0x5
	.byte	0x61
	.byte	0x2
	.4byte	0x2af
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0xb2
	.4byte	0x327
	.uleb128 0x2
	.4byte	0x53
	.uleb128 0x2
	.4byte	0x66
	.byte	0
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0xb1
	.4byte	0x33c
	.uleb128 0x2
	.4byte	0x53
	.uleb128 0x2
	.4byte	0x66
	.byte	0
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0xb4
	.4byte	0x35b
	.uleb128 0x2
	.4byte	0x53
	.uleb128 0x2
	.4byte	0x35b
	.uleb128 0x2
	.4byte	0x35b
	.uleb128 0x2
	.4byte	0x35b
	.byte	0
	.uleb128 0xc
	.4byte	0x66
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0xaf
	.4byte	0x37f
	.uleb128 0x2
	.4byte	0x53
	.uleb128 0x2
	.4byte	0x66
	.uleb128 0x2
	.4byte	0x66
	.uleb128 0x2
	.4byte	0x66
	.byte	0
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0xb6
	.4byte	0x38f
	.uleb128 0x2
	.4byte	0x53
	.byte	0
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x4
	.byte	0xae
	.byte	0xd
	.4byte	0xce
	.4byte	0x3a5
	.uleb128 0x2
	.4byte	0x3a5
	.byte	0
	.uleb128 0xc
	.4byte	0x206
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0xb7
	.4byte	0x3ba
	.uleb128 0x2
	.4byte	0x53
	.byte	0
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x276
	.byte	0xd
	.4byte	0xce
	.4byte	0x3d1
	.uleb128 0x2
	.4byte	0x3d1
	.byte	0
	.uleb128 0xc
	.4byte	0x306
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x8e
	.4byte	0x39
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x434
	.uleb128 0x7
	.string	"id"
	.byte	0x8e
	.byte	0x21
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x8e
	.byte	0x2c
	.4byte	0x434
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x90
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x91
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x92
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0xc
	.4byte	0x439
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF85
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x7e
	.4byte	0x39
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49e
	.uleb128 0x7
	.string	"id"
	.byte	0x7e
	.byte	0x21
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x7e
	.byte	0x2b
	.4byte	0x439
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x80
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x81
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x82
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x70
	.4byte	0x39
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fc
	.uleb128 0x7
	.string	"id"
	.byte	0x70
	.byte	0x21
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x70
	.byte	0x2e
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x74
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x75
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x76
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x6a
	.4byte	0x39
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x522
	.uleb128 0x7
	.string	"id"
	.byte	0x6a
	.byte	0x1d
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0x64
	.4byte	0x39
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x548
	.uleb128 0x7
	.string	"id"
	.byte	0x64
	.byte	0x1e
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x51
	.4byte	0x39
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58a
	.uleb128 0x7
	.string	"id"
	.byte	0x51
	.byte	0x1d
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x7
	.string	"pin"
	.byte	0x51
	.byte	0x29
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x51
	.byte	0x37
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x1
	.byte	0x35
	.byte	0x10
	.4byte	0x39
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ce
	.uleb128 0x7
	.string	"id"
	.byte	0x35
	.byte	0x21
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x35
	.byte	0x2e
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0x37
	.byte	0x15
	.4byte	0x206
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x1
	.byte	0x27
	.byte	0xd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.string	"pin"
	.byte	0x27
	.byte	0x1f
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x15
	.string	"cfg"
	.byte	0x1
	.byte	0x29
	.byte	0x17
	.4byte	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xa
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
	.sleb128 9
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.4byte	0x54
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
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
	.byte	0x7
	.4byte	.LFB14
	.uleb128 .LFE14-.LFB14
	.byte	0x7
	.4byte	.LFB15
	.uleb128 .LFE15-.LFB15
	.byte	0x7
	.4byte	.LFB16
	.uleb128 .LFE16-.LFB16
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF91:
	.string	"bl_pwm_stop"
.LASF56:
	.string	"GLB_GPIO_PIN_11"
.LASF80:
	.string	"PWM_Channel_Enable"
.LASF78:
	.string	"PWM_Channel_Get"
.LASF87:
	.string	"bl_pwm_set_duty"
.LASF83:
	.string	"GLB_GPIO_Init"
.LASF52:
	.string	"GLB_GPIO_PIN_7"
.LASF37:
	.string	"PWM_Polarity_Type"
.LASF74:
	.string	"smtCtrl"
.LASF43:
	.string	"intPulseCnt"
.LASF5:
	.string	"long long int"
.LASF79:
	.string	"PWM_Channel_Update"
.LASF26:
	.string	"PWM_CH_MAX"
.LASF3:
	.string	"short int"
.LASF7:
	.string	"uint8_t"
.LASF77:
	.string	"PWM_Channel_Set_Threshold1"
.LASF76:
	.string	"PWM_Channel_Set_Threshold2"
.LASF70:
	.string	"gpioFun"
.LASF68:
	.string	"GLB_GPIO_PIN_MAX"
.LASF81:
	.string	"PWM_Channel_Disable"
.LASF85:
	.string	"float"
.LASF55:
	.string	"GLB_GPIO_PIN_10"
.LASF90:
	.string	"freq"
.LASF57:
	.string	"GLB_GPIO_PIN_12"
.LASF58:
	.string	"GLB_GPIO_PIN_13"
.LASF59:
	.string	"GLB_GPIO_PIN_14"
.LASF60:
	.string	"GLB_GPIO_PIN_15"
.LASF61:
	.string	"GLB_GPIO_PIN_16"
.LASF62:
	.string	"GLB_GPIO_PIN_17"
.LASF63:
	.string	"GLB_GPIO_PIN_18"
.LASF64:
	.string	"GLB_GPIO_PIN_19"
.LASF19:
	.string	"TIMEOUT"
.LASF39:
	.string	"clkDiv"
.LASF41:
	.string	"threshold1"
.LASF42:
	.string	"threshold2"
.LASF40:
	.string	"period"
.LASF73:
	.string	"drive"
.LASF94:
	.string	"pwmCfg"
.LASF18:
	.string	"ERROR"
.LASF30:
	.string	"PWM_CLK_32K"
.LASF15:
	.string	"long double"
.LASF8:
	.string	"unsigned char"
.LASF88:
	.string	"duty"
.LASF31:
	.string	"PWM_Clk_Type"
.LASF2:
	.string	"signed char"
.LASF13:
	.string	"long long unsigned int"
.LASF28:
	.string	"PWM_CLK_XCLK"
.LASF11:
	.string	"uint32_t"
.LASF45:
	.string	"GLB_GPIO_PIN_0"
.LASF9:
	.string	"uint16_t"
.LASF75:
	.string	"GLB_GPIO_Cfg_Type"
.LASF93:
	.string	"bl_pwm_init"
.LASF44:
	.string	"PWM_CH_CFG_Type"
.LASF49:
	.string	"GLB_GPIO_PIN_4"
.LASF65:
	.string	"GLB_GPIO_PIN_20"
.LASF66:
	.string	"GLB_GPIO_PIN_21"
.LASF67:
	.string	"GLB_GPIO_PIN_22"
.LASF21:
	.string	"PWM_CH0"
.LASF22:
	.string	"PWM_CH1"
.LASF23:
	.string	"PWM_CH2"
.LASF24:
	.string	"PWM_CH3"
.LASF25:
	.string	"PWM_CH4"
.LASF54:
	.string	"GLB_GPIO_PIN_9"
.LASF36:
	.string	"PWM_POL_INVERT"
.LASF34:
	.string	"PWM_Stop_Mode_Type"
.LASF16:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF82:
	.string	"PWM_Channel_Init"
.LASF6:
	.string	"int32_t"
.LASF20:
	.string	"BL_Err_Type"
.LASF10:
	.string	"short unsigned int"
.LASF95:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF84:
	.string	"p_duty"
.LASF32:
	.string	"PWM_STOP_ABRUPT"
.LASF12:
	.string	"long unsigned int"
.LASF71:
	.string	"gpioMode"
.LASF96:
	.string	"pwm_init"
.LASF27:
	.string	"PWM_CH_ID_Type"
.LASF46:
	.string	"GLB_GPIO_PIN_1"
.LASF47:
	.string	"GLB_GPIO_PIN_2"
.LASF97:
	.string	"gpio_init"
.LASF48:
	.string	"GLB_GPIO_PIN_3"
.LASF92:
	.string	"bl_pwm_start"
.LASF50:
	.string	"GLB_GPIO_PIN_5"
.LASF51:
	.string	"GLB_GPIO_PIN_6"
.LASF72:
	.string	"pullType"
.LASF38:
	.string	"stopMode"
.LASF17:
	.string	"SUCCESS"
.LASF53:
	.string	"GLB_GPIO_PIN_8"
.LASF89:
	.string	"bl_pwm_set_freq"
.LASF35:
	.string	"PWM_POL_NORMAL"
.LASF69:
	.string	"gpioPin"
.LASF33:
	.string	"PWM_STOP_GRACEFUL"
.LASF14:
	.string	"unsigned int"
.LASF86:
	.string	"bl_pwm_get_duty"
.LASF29:
	.string	"PWM_CLK_BCLK"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_pwm.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
