	.file	"bl_ir.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_ir.c"
	.section	.text.ir_gpio_init,"ax",@progbits
	.align	1
	.type	ir_gpio_init, @function
ir_gpio_init:
.LFB27:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_ir.c"
	.loc 1 39 1
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
	.loc 1 40 24
	li	a5,11
	sb	a5,-17(s0)
	.loc 1 41 5
	addi	a4,s0,-36
	lbu	a5,-17(s0)
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	GLB_GPIO_Func_Init
	.loc 1 43 5
	nop
	.loc 1 44 1
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
	.size	ir_gpio_init, .-ir_gpio_init
	.section	.srodata,"a"
	.align	2
.LC0:
	.byte	0
	.byte	1
	.half	9000
	.half	3400
	.byte	0
	.byte	0
	.section	.text.ir_init,"ax",@progbits
	.align	1
	.type	ir_init, @function
ir_init:
.LFB28:
	.loc 1 47 1
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
	.loc 1 48 19
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	lw	a4,0(a5)
	sw	a4,-24(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 57 5
	lw	a0,-36(s0)
	call	ir_gpio_init
	.loc 1 59 5
	call	GLB_IR_LED_Driver_Enable
	.loc 1 60 5
	lw	a5,-36(s0)
	andi	a5,a5,0xff
	mv	a0,a5
	call	GLB_IR_RX_GPIO_Sel
	.loc 1 62 5
	li	a0,2
	call	IR_Disable
	.loc 1 63 5
	addi	a5,s0,-24
	mv	a0,a5
	call	IR_RxInit
	.loc 1 64 1
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
	.size	ir_init, .-ir_init
	.section	.text.bl_receivedata,"ax",@progbits
	.align	1
	.globl	bl_receivedata
	.type	bl_receivedata, @function
bl_receivedata:
.LFB29:
	.loc 1 67 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 68 12
	li	a0,0
	call	IR_ReceiveData
	mv	a5,a0
	.loc 1 69 1
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
.LFE29:
	.size	bl_receivedata, .-bl_receivedata
	.section	.text.bl_get_bitcount,"ax",@progbits
	.align	1
	.globl	bl_get_bitcount
	.type	bl_get_bitcount, @function
bl_get_bitcount:
.LFB30:
	.loc 1 72 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 73 12
	call	IR_GetRxDataBitCount
	mv	a5,a0
	.loc 1 74 1
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
.LFE30:
	.size	bl_get_bitcount, .-bl_get_bitcount
	.section	.text.data_check,"ax",@progbits
	.align	1
	.type	data_check, @function
data_check:
.LFB31:
	.loc 1 77 1
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
	.loc 1 78 14
	sh	zero,-18(s0)
	.loc 1 79 14
	sh	zero,-20(s0)
	.loc 1 81 20
	lw	a5,-36(s0)
	srli	a5,a5,24
	.loc 1 81 35
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 81 44
	lw	a5,-36(s0)
	srli	a5,a5,16
	.loc 1 81 51
	slli	a5,a5,16
	srli	a5,a5,16
	andi	a5,a5,255
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 81 11
	xor	a5,a4,a5
	sh	a5,-18(s0)
	.loc 1 82 20
	lw	a5,-36(s0)
	srli	a5,a5,8
	.loc 1 82 34
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-36(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	xor	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 82 11
	andi	a5,a5,255
	sh	a5,-20(s0)
	.loc 1 84 8
	lhu	a4,-18(s0)
	li	a5,255
	bne	a4,a5,.L9
	.loc 1 84 23 discriminator 1
	lhu	a4,-20(s0)
	li	a5,255
	bne	a4,a5,.L9
	.loc 1 85 16
	li	a5,0
	j	.L10
.L9:
	.loc 1 87 16
	li	a5,-1
.L10:
	.loc 1 89 1
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
.LFE31:
	.size	data_check, .-data_check
	.section	.text.ir_interrupt_entry,"ax",@progbits
	.align	1
	.type	ir_interrupt_entry, @function
ir_interrupt_entry:
.LFB32:
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
	.loc 1 96 5
	li	a0,1
	call	IR_Disable
	.loc 1 97 5
	li	a1,1
	li	a0,1
	call	IR_IntMask
	.loc 1 98 5
	li	a0,1
	call	IR_ClrIntStatus
	.loc 1 100 12
	call	bl_receivedata
	sw	a0,-20(s0)
	.loc 1 101 12
	lw	a0,-20(s0)
	call	data_check
	sw	a0,-24(s0)
	.loc 1 102 8
	lw	a4,-24(s0)
	li	a5,-1
	bne	a4,a5,.L12
	.loc 1 102 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L12
	.loc 1 104 9
	li	a0,1
	call	IR_Enable
	.loc 1 105 9
	li	a1,0
	li	a0,1
	call	IR_IntMask
	.loc 1 106 9
	j	.L11
.L12:
	.loc 1 112 5
	call	ir_async_post
.L11:
	.loc 1 113 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	ir_interrupt_entry, .-ir_interrupt_entry
	.section	.text.bl_enable_rx_int,"ax",@progbits
	.align	1
	.globl	bl_enable_rx_int
	.type	bl_enable_rx_int, @function
bl_enable_rx_int:
.LFB33:
	.loc 1 116 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 117 5
	li	a0,1
	call	IR_Enable
	.loc 1 118 5
	li	a1,0
	li	a0,1
	call	IR_IntMask
	.loc 1 120 5
	nop
	.loc 1 121 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	bl_enable_rx_int, .-bl_enable_rx_int
	.section	.text.bl_ir_init,"ax",@progbits
	.align	1
	.globl	bl_ir_init
	.type	bl_ir_init, @function
bl_ir_init:
.LFB34:
	.loc 1 124 1
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
	.loc 1 125 5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ir_init
	.loc 1 126 5
	lui	a5,%hi(ir_interrupt_entry)
	addi	a1,a5,%lo(ir_interrupt_entry)
	li	a0,36
	call	bl_irq_register
	.loc 1 127 5
	li	a0,36
	call	bl_irq_enable
	.loc 1 128 5
	li	a0,1
	call	IR_Enable
	.loc 1 129 5
	li	a1,0
	li	a0,1
	call	IR_IntMask
	.loc 1 131 12
	li	a5,0
	.loc 1 132 1
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
.LFE34:
	.size	bl_ir_init, .-bl_ir_init
	.section	.rodata
	.align	2
.LC1:
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.section	.text.irled_config,"ax",@progbits
	.align	1
	.type	irled_config, @function
irled_config:
.LFB35:
	.loc 1 135 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	t1,a0
	mv	a7,a1
	mv	a0,a2
	mv	a1,a3
	mv	a2,a4
	mv	a3,a5
	mv	a4,a6
	mv	a5,t1
	sb	a5,-49(s0)
	mv	a5,a7
	sb	a5,-50(s0)
	mv	a5,a0
	sb	a5,-51(s0)
	mv	a5,a1
	sb	a5,-52(s0)
	mv	a5,a2
	sb	a5,-53(s0)
	mv	a5,a3
	sb	a5,-54(s0)
	mv	a5,a4
	sb	a5,-55(s0)
	.loc 1 136 19
	lui	a5,%hi(.LC1)
	addi	a5,a5,%lo(.LC1)
	lw	a4,0(a5)
	sw	a4,-28(s0)
	lw	a4,4(a5)
	sw	a4,-24(s0)
	lhu	a5,8(a5)
	sh	a5,-20(s0)
	.loc 1 149 29
	lbu	a5,-53(s0)
	sb	a5,-40(s0)
	lbu	a5,-52(s0)
	sb	a5,-39(s0)
	lbu	a5,-55(s0)
	sb	a5,-38(s0)
	lbu	a5,-54(s0)
	sb	a5,-37(s0)
	li	a5,1
	sb	a5,-36(s0)
	li	a5,1
	sb	a5,-35(s0)
	li	a5,1
	sb	a5,-34(s0)
	li	a5,1
	sb	a5,-33(s0)
	li	a5,1
	sb	a5,-32(s0)
	li	a5,1
	sb	a5,-31(s0)
	lbu	a5,-51(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,-30(s0)
	.loc 1 163 5
	lbu	a5,-49(s0)
	mv	a0,a5
	call	HBN_Set_XCLK_CLK_Sel
	.loc 1 164 5
	lbu	a5,-50(s0)
	addi	a5,a5,-1
	andi	a5,a5,0xff
	mv	a2,a5
	li	a1,0
	li	a0,1
	call	GLB_Set_IR_CLK
	.loc 1 167 5
	li	a0,2
	call	IR_Disable
	.loc 1 170 5
	addi	a5,s0,-28
	mv	a0,a5
	call	IR_TxInit
	.loc 1 171 5
	addi	a5,s0,-40
	mv	a0,a5
	call	IR_TxPulseWidthConfig
	.loc 1 173 5
	nop
	.loc 1 174 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	irled_config, .-irled_config
	.section	.text.bl_irled_gpio_init,"ax",@progbits
	.align	1
	.globl	bl_irled_gpio_init
	.type	bl_irled_gpio_init, @function
bl_irled_gpio_init:
.LFB36:
	.loc 1 178 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 179 19
	li	a5,11
	sb	a5,-17(s0)
	.loc 1 181 5
	addi	a5,s0,-17
	li	a2,1
	mv	a1,a5
	li	a0,10
	call	GLB_GPIO_Func_Init
	.loc 1 182 5
	call	GLB_IR_LED_Driver_Enable
	.loc 1 184 12
	li	a5,0
	.loc 1 185 1
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
.LFE36:
	.size	bl_irled_gpio_init, .-bl_irled_gpio_init
	.section	.text.bl_irled_init,"ax",@progbits
	.align	1
	.globl	bl_irled_init
	.type	bl_irled_init, @function
bl_irled_init:
.LFB37:
	.loc 1 189 1
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
	.loc 1 190 8
	lw	a5,-20(s0)
	bne	a5,zero,.L23
	.loc 1 191 9
	li	a6,9
	li	a5,16
	li	a4,16
	li	a3,8
	li	a2,1
	li	a1,2
	li	a0,1
	call	irled_config
	j	.L24
.L23:
	.loc 1 193 9
	li	a6,1
	li	a5,4
	li	a4,4
	li	a3,1
	li	a2,10
	li	a1,2
	li	a0,1
	call	irled_config
.L24:
	.loc 1 196 12
	li	a5,0
	.loc 1 197 1
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
.LFE37:
	.size	bl_irled_init, .-bl_irled_init
	.section	.text.bl_irled_send_one_data,"ax",@progbits
	.align	1
	.globl	bl_irled_send_one_data
	.type	bl_irled_send_one_data, @function
bl_irled_send_one_data:
.LFB38:
	.loc 1 200 1
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
	.loc 1 201 5
	lw	a1,-20(s0)
	li	a0,0
	call	IR_SendCommand
	.loc 1 203 12
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
.LFE38:
	.size	bl_irled_send_one_data, .-bl_irled_send_one_data
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ir.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_irq.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/include/loopset_ir.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa13
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x12
	.4byte	.LASF222
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.4byte	0x1d6
	.byte	0x3
	.byte	0x41
	.byte	0x1
	.4byte	0x1d6
	.uleb128 0x1
	.4byte	.LASF2
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF3
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF4
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF5
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF6
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF7
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF8
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF9
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF10
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF11
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF12
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF13
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x35
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x36
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x37
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x39
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x3b
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x49
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x4b
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x4d
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x4f
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF71
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF72
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF73
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF74
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF75
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x1d6
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x211
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF78
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x224
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF80
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF81
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF82
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF83
	.uleb128 0x14
	.byte	0x4
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF84
	.uleb128 0x5
	.4byte	0x1d6
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0x26f
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF88
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0x250
	.uleb128 0x5
	.4byte	0x1d6
	.byte	0x4
	.byte	0x21
	.byte	0x1
	.4byte	0x294
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF91
	.byte	0x4
	.byte	0x24
	.byte	0x2
	.4byte	0x27b
	.uleb128 0x5
	.4byte	0x1d6
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x2b9
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF94
	.byte	0x4
	.byte	0x36
	.byte	0x2
	.4byte	0x2a0
	.uleb128 0x5
	.4byte	0x1d6
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0x2e4
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF98
	.byte	0x5
	.byte	0x3d
	.byte	0x2
	.4byte	0x2c5
	.uleb128 0x5
	.4byte	0x1d6
	.byte	0x5
	.byte	0x42
	.byte	0xe
	.4byte	0x309
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0x5
	.byte	0x45
	.byte	0x2
	.4byte	0x2f0
	.uleb128 0x5
	.4byte	0x1d6
	.byte	0x5
	.byte	0x4a
	.byte	0xe
	.4byte	0x334
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
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.4byte	0x315
	.uleb128 0x5
	.4byte	0x1d6
	.byte	0x5
	.byte	0x53
	.byte	0xe
	.4byte	0x35f
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0x5
	.byte	0x57
	.byte	0x2
	.4byte	0x340
	.uleb128 0xe
	.byte	0xa
	.byte	0x64
	.4byte	0x3eb
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0x65
	.byte	0xd
	.4byte	0x1f9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0x66
	.byte	0x11
	.4byte	0x294
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0x67
	.byte	0x11
	.4byte	0x294
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0x68
	.byte	0x11
	.4byte	0x294
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x69
	.byte	0x11
	.4byte	0x294
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0x6a
	.byte	0x11
	.4byte	0x294
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0x6b
	.byte	0x11
	.4byte	0x294
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0x6c
	.byte	0x11
	.4byte	0x294
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0x6d
	.byte	0x11
	.4byte	0x294
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x6e
	.byte	0x11
	.4byte	0x294
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x5
	.byte	0x6f
	.byte	0x2
	.4byte	0x36b
	.uleb128 0xe
	.byte	0xc
	.byte	0x74
	.4byte	0x483
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x75
	.byte	0xd
	.4byte	0x1f9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x76
	.byte	0xd
	.4byte	0x1f9
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0x77
	.byte	0xd
	.4byte	0x1f9
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0x78
	.byte	0xd
	.4byte	0x1f9
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0x79
	.byte	0xd
	.4byte	0x1f9
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0x7a
	.byte	0xd
	.4byte	0x1f9
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x7b
	.byte	0xd
	.4byte	0x1f9
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0x7c
	.byte	0xd
	.4byte	0x1f9
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x7d
	.byte	0xd
	.4byte	0x1f9
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x7e
	.byte	0xd
	.4byte	0x1f9
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0x7f
	.byte	0xe
	.4byte	0x205
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF132
	.byte	0x5
	.byte	0x80
	.byte	0x2
	.4byte	0x3f7
	.uleb128 0xe
	.byte	0x8
	.byte	0x93
	.4byte	0x4df
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0x94
	.byte	0x14
	.4byte	0x334
	.byte	0
	.uleb128 0x2
	.4byte	.LASF134
	.byte	0x95
	.byte	0x11
	.4byte	0x294
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0x96
	.byte	0xe
	.4byte	0x205
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0x97
	.byte	0xe
	.4byte	0x205
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x98
	.byte	0x11
	.4byte	0x294
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x99
	.byte	0xd
	.4byte	0x1f9
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF139
	.byte	0x5
	.byte	0x9a
	.byte	0x2
	.4byte	0x48f
	.uleb128 0x5
	.4byte	0x1d6
	.byte	0x6
	.byte	0x29
	.byte	0x1
	.4byte	0x588
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF144
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF158
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF159
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF160
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF161
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF162
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF163
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF164
	.byte	0x6
	.byte	0x42
	.byte	0x2
	.4byte	0x4eb
	.uleb128 0x5
	.4byte	0x1d6
	.byte	0x6
	.byte	0x4c
	.byte	0x1
	.4byte	0x5dd
	.uleb128 0x1
	.4byte	.LASF165
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF166
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF167
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF168
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF169
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF170
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF171
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF172
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF173
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF174
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	.LASF175
	.byte	0x6
	.byte	0x57
	.byte	0x2
	.4byte	0x594
	.uleb128 0x5
	.4byte	0x1d6
	.byte	0x7
	.byte	0x6d
	.byte	0xe
	.4byte	0x602
	.uleb128 0x1
	.4byte	.LASF176
	.byte	0
	.uleb128 0x1
	.4byte	.LASF177
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF178
	.byte	0x7
	.byte	0x70
	.byte	0x2
	.4byte	0x5e9
	.uleb128 0x5
	.4byte	0x1d6
	.byte	0x8
	.byte	0x61
	.byte	0xe
	.4byte	0x621
	.uleb128 0x1
	.4byte	.LASF179
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF180
	.byte	0x8
	.byte	0x63
	.byte	0x2
	.4byte	0x60e
	.uleb128 0x8
	.4byte	.LASF181
	.byte	0xe2
	.byte	0xd
	.4byte	0x26f
	.4byte	0x647
	.uleb128 0x3
	.4byte	0x218
	.uleb128 0x3
	.4byte	0x218
	.byte	0
	.uleb128 0x8
	.4byte	.LASF182
	.byte	0xd8
	.byte	0xd
	.4byte	0x26f
	.4byte	0x65c
	.uleb128 0x3
	.4byte	0x65c
	.byte	0
	.uleb128 0xb
	.4byte	0x483
	.uleb128 0x8
	.4byte	.LASF183
	.byte	0xd7
	.byte	0xd
	.4byte	0x26f
	.4byte	0x676
	.uleb128 0x3
	.4byte	0x676
	.byte	0
	.uleb128 0xb
	.4byte	0x3eb
	.uleb128 0xc
	.4byte	.LASF184
	.byte	0x8
	.2byte	0x236
	.4byte	0x26f
	.4byte	0x69b
	.uleb128 0x3
	.4byte	0x1f9
	.uleb128 0x3
	.4byte	0x621
	.uleb128 0x3
	.4byte	0x1f9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF185
	.byte	0x7
	.2byte	0x1a7
	.4byte	0x26f
	.4byte	0x6b1
	.uleb128 0x3
	.4byte	0x602
	.byte	0
	.uleb128 0x10
	.4byte	.LASF186
	.byte	0x20
	.4byte	0x6c1
	.uleb128 0x3
	.4byte	0x239
	.byte	0
	.uleb128 0x10
	.4byte	.LASF187
	.byte	0x32
	.4byte	0x6d6
	.uleb128 0x3
	.4byte	0x232
	.uleb128 0x3
	.4byte	0x247
	.byte	0
	.uleb128 0x15
	.4byte	.LASF223
	.byte	0xa
	.byte	0x25
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF188
	.byte	0xdc
	.byte	0xd
	.4byte	0x26f
	.4byte	0x6f3
	.uleb128 0x3
	.4byte	0x2e4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF189
	.byte	0xe6
	.byte	0xd
	.4byte	0x26f
	.4byte	0x708
	.uleb128 0x3
	.4byte	0x35f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF190
	.byte	0xe5
	.byte	0xd
	.4byte	0x26f
	.4byte	0x722
	.uleb128 0x3
	.4byte	0x35f
	.uleb128 0x3
	.4byte	0x2b9
	.byte	0
	.uleb128 0x16
	.4byte	.LASF195
	.byte	0x5
	.byte	0xed
	.byte	0x9
	.4byte	0x1f9
	.uleb128 0x8
	.4byte	.LASF191
	.byte	0xea
	.byte	0xa
	.4byte	0x218
	.4byte	0x743
	.uleb128 0x3
	.4byte	0x309
	.byte	0
	.uleb128 0x8
	.4byte	.LASF192
	.byte	0xda
	.byte	0xd
	.4byte	0x26f
	.4byte	0x758
	.uleb128 0x3
	.4byte	0x758
	.byte	0
	.uleb128 0xb
	.4byte	0x4df
	.uleb128 0x8
	.4byte	.LASF193
	.byte	0xdd
	.byte	0xd
	.4byte	0x26f
	.4byte	0x772
	.uleb128 0x3
	.4byte	0x2e4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF194
	.byte	0x8
	.2byte	0x271
	.4byte	0x26f
	.4byte	0x788
	.uleb128 0x3
	.4byte	0x588
	.byte	0
	.uleb128 0x17
	.4byte	.LASF196
	.byte	0x8
	.2byte	0x272
	.byte	0xd
	.4byte	0x26f
	.uleb128 0xc
	.4byte	.LASF197
	.byte	0x8
	.2byte	0x277
	.4byte	0x26f
	.4byte	0x7b5
	.uleb128 0x3
	.4byte	0x5dd
	.uleb128 0x3
	.4byte	0x7b5
	.uleb128 0x3
	.4byte	0x1f9
	.byte	0
	.uleb128 0xb
	.4byte	0x588
	.uleb128 0xd
	.4byte	.LASF198
	.byte	0xc7
	.4byte	0x232
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e1
	.uleb128 0x7
	.4byte	.LASF200
	.byte	0xc7
	.byte	0x25
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF199
	.byte	0xbc
	.4byte	0x232
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x808
	.uleb128 0x7
	.4byte	.LASF201
	.byte	0xbc
	.byte	0x17
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF202
	.byte	0xb1
	.4byte	0x232
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x830
	.uleb128 0x18
	.string	"pin"
	.byte	0x1
	.byte	0xb3
	.byte	0x13
	.4byte	0x588
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xf
	.4byte	.LASF212
	.byte	0x86
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c3
	.uleb128 0xa
	.string	"clk"
	.byte	0x86
	.byte	0x2c
	.4byte	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0xa
	.string	"div"
	.byte	0x86
	.byte	0x39
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x7
	.4byte	.LASF203
	.byte	0x86
	.byte	0x46
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -51
	.uleb128 0x7
	.4byte	.LASF204
	.byte	0x86
	.byte	0x54
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.4byte	.LASF205
	.byte	0x86
	.byte	0x64
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x7
	.4byte	.LASF206
	.byte	0x86
	.byte	0x74
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x7
	.4byte	.LASF207
	.byte	0x86
	.byte	0x84
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -55
	.uleb128 0x9
	.4byte	.LASF208
	.byte	0x88
	.byte	0x13
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF209
	.byte	0x95
	.byte	0x1d
	.4byte	0x483
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xd
	.4byte	.LASF210
	.byte	0x7b
	.4byte	0x232
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f8
	.uleb128 0xa
	.string	"pin"
	.byte	0x7b
	.byte	0x14
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF211
	.byte	0x7b
	.byte	0x1d
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.4byte	.LASF224
	.byte	0x1
	.byte	0x73
	.byte	0x6
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF213
	.byte	0x5b
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x93b
	.uleb128 0x9
	.4byte	.LASF200
	.byte	0x5d
	.byte	0xe
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF214
	.byte	0x5e
	.byte	0x9
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF225
	.byte	0x1
	.byte	0x4c
	.byte	0xc
	.4byte	0x232
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x980
	.uleb128 0x7
	.4byte	.LASF200
	.byte	0x4c
	.byte	0x20
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF215
	.byte	0x4e
	.byte	0xe
	.4byte	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x9
	.4byte	.LASF216
	.byte	0x4f
	.byte	0xe
	.4byte	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF217
	.byte	0x47
	.4byte	0x218
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF218
	.byte	0x42
	.4byte	0x218
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF219
	.byte	0x2e
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e7
	.uleb128 0xa
	.string	"pin"
	.byte	0x2e
	.byte	0x19
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF211
	.byte	0x2e
	.byte	0x32
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF220
	.byte	0x30
	.byte	0x13
	.4byte	0x4df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF226
	.byte	0x1
	.byte	0x26
	.byte	0xd
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.string	"pin"
	.byte	0x26
	.byte	0x1e
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF221
	.byte	0x28
	.byte	0x18
	.4byte	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
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
	.byte	0x7
	.4byte	.LFB34
	.uleb128 .LFE34-.LFB34
	.byte	0x7
	.4byte	.LFB35
	.uleb128 .LFE35-.LFB35
	.byte	0x7
	.4byte	.LFB36
	.uleb128 .LFE36-.LFB36
	.byte	0x7
	.4byte	.LFB37
	.uleb128 .LFE37-.LFB37
	.byte	0x7
	.4byte	.LFB38
	.uleb128 .LFE38-.LFB38
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF212:
	.string	"irled_config"
.LASF112:
	.string	"tailPulse"
.LASF209:
	.string	"txPWCfg"
.LASF123:
	.string	"logic1PulseWidth_1"
.LASF104:
	.string	"IR_RX_SWM"
.LASF165:
	.string	"GPIO_FUN_SDIO"
.LASF166:
	.string	"GPIO_FUN_FLASH"
.LASF44:
	.string	"TIMER_WDT_IRQn"
.LASF64:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF8:
	.string	"L1C_BMX_ERR_IRQn"
.LASF203:
	.string	"unit"
.LASF174:
	.string	"GPIO_FUN_JTAG"
.LASF122:
	.string	"logic0PulseWidth_0"
.LASF121:
	.string	"logic0PulseWidth_1"
.LASF134:
	.string	"inputInverse"
.LASF89:
	.string	"DISABLE"
.LASF96:
	.string	"IR_RX"
.LASF42:
	.string	"TIMER_CH0_IRQn"
.LASF91:
	.string	"BL_Fun_Type"
.LASF210:
	.string	"bl_ir_init"
.LASF200:
	.string	"data"
.LASF199:
	.string	"bl_irled_init"
.LASF133:
	.string	"rxMode"
.LASF185:
	.string	"HBN_Set_XCLK_CLK_Sel"
.LASF113:
	.string	"headPulseInverse"
.LASF143:
	.string	"GLB_GPIO_PIN_3"
.LASF192:
	.string	"IR_RxInit"
.LASF13:
	.string	"SDIO_IRQn"
.LASF145:
	.string	"GLB_GPIO_PIN_5"
.LASF132:
	.string	"IR_TxPulseWidthCfg_Type"
.LASF146:
	.string	"GLB_GPIO_PIN_6"
.LASF107:
	.string	"IR_INT_RX"
.LASF149:
	.string	"GLB_GPIO_PIN_9"
.LASF72:
	.string	"signed char"
.LASF195:
	.string	"IR_GetRxDataBitCount"
.LASF198:
	.string	"bl_irled_send_one_data"
.LASF186:
	.string	"bl_irq_enable"
.LASF81:
	.string	"long long unsigned int"
.LASF4:
	.string	"MEXT_IRQn"
.LASF16:
	.string	"SEC_CDET_IRQn"
.LASF46:
	.string	"RESERVED11"
.LASF47:
	.string	"RESERVED12"
.LASF48:
	.string	"RESERVED13"
.LASF49:
	.string	"RESERVED14"
.LASF51:
	.string	"RESERVED16"
.LASF52:
	.string	"RESERVED17"
.LASF53:
	.string	"RESERVED18"
.LASF54:
	.string	"RESERVED19"
.LASF88:
	.string	"BL_Err_Type"
.LASF74:
	.string	"long int"
.LASF131:
	.string	"pulseWidthUnit"
.LASF50:
	.string	"GPIO_INT0_IRQn"
.LASF90:
	.string	"ENABLE"
.LASF211:
	.string	"ctrltype"
.LASF75:
	.string	"long long int"
.LASF77:
	.string	"uint16_t"
.LASF109:
	.string	"IR_INT_Type"
.LASF216:
	.string	"ldata"
.LASF21:
	.string	"DMA_ALL_IRQn"
.LASF150:
	.string	"GLB_GPIO_PIN_10"
.LASF151:
	.string	"GLB_GPIO_PIN_11"
.LASF152:
	.string	"GLB_GPIO_PIN_12"
.LASF153:
	.string	"GLB_GPIO_PIN_13"
.LASF154:
	.string	"GLB_GPIO_PIN_14"
.LASF155:
	.string	"GLB_GPIO_PIN_15"
.LASF156:
	.string	"GLB_GPIO_PIN_16"
.LASF157:
	.string	"GLB_GPIO_PIN_17"
.LASF158:
	.string	"GLB_GPIO_PIN_18"
.LASF159:
	.string	"GLB_GPIO_PIN_19"
.LASF87:
	.string	"TIMEOUT"
.LASF38:
	.string	"I2C_IRQn"
.LASF11:
	.string	"RF_TOP_INT0_IRQn"
.LASF55:
	.string	"RESERVED20"
.LASF114:
	.string	"headPulse"
.LASF93:
	.string	"MASK"
.LASF15:
	.string	"SEC_GMAC_IRQn"
.LASF184:
	.string	"GLB_Set_IR_CLK"
.LASF82:
	.string	"unsigned int"
.LASF32:
	.string	"EFUSE_IRQn"
.LASF60:
	.string	"WIFI_IRQn"
.LASF117:
	.string	"dataPulse"
.LASF56:
	.string	"PDS_WAKEUP_IRQn"
.LASF95:
	.string	"IR_TX"
.LASF80:
	.string	"long unsigned int"
.LASF119:
	.string	"outputInverse"
.LASF108:
	.string	"IR_INT_ALL"
.LASF193:
	.string	"IR_Disable"
.LASF136:
	.string	"dataThreshold"
.LASF160:
	.string	"GLB_GPIO_PIN_20"
.LASF161:
	.string	"GLB_GPIO_PIN_21"
.LASF162:
	.string	"GLB_GPIO_PIN_22"
.LASF187:
	.string	"bl_irq_register"
.LASF59:
	.string	"BOR_IRQn"
.LASF106:
	.string	"IR_INT_TX"
.LASF124:
	.string	"logic1PulseWidth_0"
.LASF12:
	.string	"RF_TOP_INT1_IRQn"
.LASF99:
	.string	"IR_WORD_0"
.LASF100:
	.string	"IR_WORD_1"
.LASF110:
	.string	"dataBits"
.LASF61:
	.string	"BZ_PHY_IRQn"
.LASF168:
	.string	"GPIO_FUN_I2C"
.LASF173:
	.string	"GPIO_FUN_SWGPIO"
.LASF73:
	.string	"short int"
.LASF189:
	.string	"IR_ClrIntStatus"
.LASF128:
	.string	"tailPulseWidth_0"
.LASF127:
	.string	"tailPulseWidth_1"
.LASF111:
	.string	"tailPulseInverse"
.LASF35:
	.string	"UART0_IRQn"
.LASF191:
	.string	"IR_ReceiveData"
.LASF92:
	.string	"UNMASK"
.LASF204:
	.string	"code0H"
.LASF20:
	.string	"SEC_SHA_IRQn"
.LASF19:
	.string	"SEC_AES_IRQn"
.LASF205:
	.string	"code0L"
.LASF65:
	.string	"MAC_RX_TRG_IRQn"
.LASF179:
	.string	"GLB_IR_CLK_SRC_XCLK"
.LASF86:
	.string	"ERROR"
.LASF126:
	.string	"headPulseWidth_0"
.LASF125:
	.string	"headPulseWidth_1"
.LASF103:
	.string	"IR_RX_RC5"
.LASF98:
	.string	"IR_Direction_Type"
.LASF196:
	.string	"GLB_IR_LED_Driver_Enable"
.LASF102:
	.string	"IR_RX_NEC"
.LASF2:
	.string	"MSOFT_IRQn"
.LASF219:
	.string	"ir_init"
.LASF201:
	.string	"chip_type"
.LASF40:
	.string	"PWM_IRQn"
.LASF224:
	.string	"bl_enable_rx_int"
.LASF169:
	.string	"GPIO_FUN_UART"
.LASF226:
	.string	"ir_gpio_init"
.LASF218:
	.string	"bl_receivedata"
.LASF68:
	.string	"MAC_PORT_TRG_IRQn"
.LASF116:
	.string	"logic0PulseInverse"
.LASF137:
	.string	"rxDeglitch"
.LASF66:
	.string	"MAC_TX_TRG_IRQn"
.LASF167:
	.string	"GPIO_FUN_SPI"
.LASF139:
	.string	"IR_RxCfg_Type"
.LASF120:
	.string	"IR_TxCfg_Type"
.LASF181:
	.string	"IR_SendCommand"
.LASF22:
	.string	"RESERVED0"
.LASF23:
	.string	"RESERVED1"
.LASF24:
	.string	"RESERVED2"
.LASF27:
	.string	"RESERVED3"
.LASF28:
	.string	"RESERVED4"
.LASF30:
	.string	"RESERVED5"
.LASF34:
	.string	"RESERVED6"
.LASF10:
	.string	"SEC_BMX_ERR_IRQn"
.LASF39:
	.string	"RESERVED8"
.LASF41:
	.string	"RESERVED9"
.LASF62:
	.string	"BLE_IRQn"
.LASF26:
	.string	"IRRX_IRQn"
.LASF17:
	.string	"SEC_PKA_IRQn"
.LASF71:
	.string	"unsigned char"
.LASF63:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF29:
	.string	"SF_CTRL_IRQn"
.LASF9:
	.string	"L1C_BMX_TO_IRQn"
.LASF36:
	.string	"UART1_IRQn"
.LASF25:
	.string	"IRTX_IRQn"
.LASF183:
	.string	"IR_TxInit"
.LASF163:
	.string	"GLB_GPIO_PIN_MAX"
.LASF135:
	.string	"endThreshold"
.LASF221:
	.string	"gpioFuns"
.LASF213:
	.string	"ir_interrupt_entry"
.LASF217:
	.string	"bl_get_bitcount"
.LASF94:
	.string	"BL_Mask_Type"
.LASF164:
	.string	"GLB_GPIO_Type"
.LASF180:
	.string	"GLB_IR_CLK_SRC_Type"
.LASF215:
	.string	"hdata"
.LASF197:
	.string	"GLB_GPIO_Func_Init"
.LASF79:
	.string	"uint32_t"
.LASF37:
	.string	"RESERVED7"
.LASF207:
	.string	"code1L"
.LASF214:
	.string	"flag"
.LASF7:
	.string	"BMX_TO_IRQn"
.LASF83:
	.string	"long double"
.LASF84:
	.string	"char"
.LASF3:
	.string	"MTIME_IRQn"
.LASF206:
	.string	"code1H"
.LASF202:
	.string	"bl_irled_gpio_init"
.LASF67:
	.string	"MAC_GEN_IRQn"
.LASF190:
	.string	"IR_IntMask"
.LASF182:
	.string	"IR_TxPulseWidthConfig"
.LASF130:
	.string	"moduWidth_0"
.LASF129:
	.string	"moduWidth_1"
.LASF140:
	.string	"GLB_GPIO_PIN_0"
.LASF141:
	.string	"GLB_GPIO_PIN_1"
.LASF142:
	.string	"GLB_GPIO_PIN_2"
.LASF6:
	.string	"BMX_ERR_IRQn"
.LASF144:
	.string	"GLB_GPIO_PIN_4"
.LASF222:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF78:
	.string	"short unsigned int"
.LASF147:
	.string	"GLB_GPIO_PIN_7"
.LASF148:
	.string	"GLB_GPIO_PIN_8"
.LASF105:
	.string	"IR_RxMode_Type"
.LASF220:
	.string	"rxcfg"
.LASF101:
	.string	"IR_Word_Type"
.LASF57:
	.string	"HBN_OUT0_IRQn"
.LASF45:
	.string	"RESERVED10"
.LASF69:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF138:
	.string	"DeglitchCnt"
.LASF70:
	.string	"IRQn_LAST"
.LASF31:
	.string	"GPADC_DMA_IRQn"
.LASF176:
	.string	"HBN_XCLK_CLK_RC32M"
.LASF171:
	.string	"GPIO_FUN_EXT_PA"
.LASF175:
	.string	"GLB_GPIO_FUNC_Type"
.LASF76:
	.string	"uint8_t"
.LASF178:
	.string	"HBN_XCLK_CLK_Type"
.LASF85:
	.string	"SUCCESS"
.LASF5:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF225:
	.string	"data_check"
.LASF177:
	.string	"HBN_XCLK_CLK_XTAL"
.LASF115:
	.string	"logic1PulseInverse"
.LASF18:
	.string	"SEC_TRNG_IRQn"
.LASF172:
	.string	"GPIO_FUN_ANALOG"
.LASF14:
	.string	"DMA_BMX_ERR_IRQn"
.LASF188:
	.string	"IR_Enable"
.LASF33:
	.string	"SPI_IRQn"
.LASF118:
	.string	"outputModulation"
.LASF43:
	.string	"TIMER_CH1_IRQn"
.LASF170:
	.string	"GPIO_FUN_PWM"
.LASF208:
	.string	"txCfg"
.LASF97:
	.string	"IR_TXRX"
.LASF58:
	.string	"HBN_OUT1_IRQn"
.LASF194:
	.string	"GLB_IR_RX_GPIO_Sel"
.LASF223:
	.string	"ir_async_post"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_ir.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
