	.file	"hal_adc.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_adc.c"
	.section	.text.check_adc_gpio_valid,"ax",@progbits
	.align	1
	.type	check_adc_gpio_valid, @function
check_adc_gpio_valid:
.LFB23:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_adc.c"
	.loc 1 37 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	.loc 1 39 9
	sw	zero,-68(s0)
	sw	zero,-64(s0)
	sw	zero,-60(s0)
	sw	zero,-56(s0)
	sw	zero,-52(s0)
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	li	a5,4
	sw	a5,-68(s0)
	li	a5,5
	sw	a5,-64(s0)
	li	a5,6
	sw	a5,-60(s0)
	li	a5,9
	sw	a5,-56(s0)
	li	a5,10
	sw	a5,-52(s0)
	li	a5,11
	sw	a5,-48(s0)
	li	a5,12
	sw	a5,-44(s0)
	li	a5,13
	sw	a5,-40(s0)
	li	a5,14
	sw	a5,-36(s0)
	li	a5,15
	sw	a5,-32(s0)
	.loc 1 41 12
	sw	zero,-20(s0)
	.loc 1 41 5
	j	.L2
.L5:
	.loc 1 42 33
	lw	a4,-20(s0)
	addi	a5,s0,-68
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 42 12
	lw	a4,-84(s0)
	bne	a4,a5,.L3
	.loc 1 43 20
	li	a5,0
	j	.L6
.L3:
	.loc 1 41 26 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	.loc 1 41 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,9
	ble	a4,a5,.L5
	.loc 1 47 12
	li	a5,-1
.L6:
	.loc 1 48 1
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	check_adc_gpio_valid, .-check_adc_gpio_valid
	.section	.text.hal_adc_init,"ax",@progbits
	.align	1
	.globl	hal_adc_init
	.type	hal_adc_init, @function
hal_adc_init:
.LFB24:
	.loc 1 53 1
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
	.loc 1 57 8
	lw	a5,-36(s0)
	bne	a5,zero,.L8
	.loc 1 58 12
	lw	a4,-40(s0)
	li	a5,39
	ble	a4,a5,.L9
	.loc 1 58 23 discriminator 1
	lw	a4,-40(s0)
	li	a5,1300
	ble	a4,a5,.L10
.L9:
	.loc 1 61 20
	li	a5,-1
	j	.L11
.L8:
	.loc 1 63 15
	lw	a4,-36(s0)
	li	a5,1
	bne	a4,a5,.L12
	.loc 1 64 12
	lw	a4,-40(s0)
	li	a5,499
	ble	a4,a5,.L13
	.loc 1 64 24 discriminator 1
	lw	a4,-40(s0)
	li	a5,16384
	addi	a5,a5,-384
	ble	a4,a5,.L10
.L13:
	.loc 1 67 20
	li	a5,-1
	j	.L11
.L12:
	.loc 1 72 16
	li	a5,-1
	j	.L11
.L10:
	.loc 1 75 11
	lw	a0,-48(s0)
	call	check_adc_gpio_valid
	sw	a0,-24(s0)
	.loc 1 76 8
	lw	a5,-24(s0)
	beq	a5,zero,.L14
	.loc 1 79 16
	li	a5,-1
	j	.L11
.L14:
	.loc 1 82 5
	lw	a5,-40(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	bl_adc_freq_init
	.loc 1 83 5
	lw	a1,-48(s0)
	lw	a0,-36(s0)
	call	bl_adc_init
	.loc 1 85 8
	lw	a5,-36(s0)
	bne	a5,zero,.L15
	.loc 1 86 18
	li	a5,12
	sw	a5,-20(s0)
	j	.L16
.L15:
	.loc 1 88 18
	lw	a5,-44(s0)
	sw	a5,-20(s0)
.L16:
	.loc 1 90 11
	lw	a5,-20(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	bl_adc_dma_init
	sw	a0,-24(s0)
	.loc 1 91 8
	lw	a5,-24(s0)
	bge	a5,zero,.L17
	.loc 1 94 16
	li	a5,-1
	j	.L11
.L17:
	.loc 1 97 5
	lw	a0,-48(s0)
	call	hal_adc_add_channel
	.loc 1 99 5
	call	bl_adc_start
	.loc 1 101 12
	li	a5,0
.L11:
	.loc 1 102 1
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
	.size	hal_adc_init, .-hal_adc_init
	.section	.text.hal_adc_callback_register,"ax",@progbits
	.align	1
	.globl	hal_adc_callback_register
	.type	hal_adc_callback_register, @function
hal_adc_callback_register:
.LFB25:
	.loc 1 105 1
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
	.loc 1 108 8
	lw	a5,-36(s0)
	bne	a5,zero,.L19
	.loc 1 111 16
	li	a5,-1
	j	.L20
.L19:
	.loc 1 114 11
	li	a0,1
	call	bl_dma_find_ctx_by_channel
	sw	a0,-20(s0)
	.loc 1 115 13
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,24(a5)
	.loc 1 117 12
	li	a5,0
.L20:
	.loc 1 118 1
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
.LFE25:
	.size	hal_adc_callback_register, .-hal_adc_callback_register
	.section	.text.hal_adc_add_channel,"ax",@progbits
	.align	1
	.globl	hal_adc_add_channel
	.type	hal_adc_add_channel, @function
hal_adc_add_channel:
.LFB26:
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
	sw	a0,-36(s0)
	.loc 1 127 11
	lw	a0,-36(s0)
	call	check_adc_gpio_valid
	sw	a0,-20(s0)
	.loc 1 128 8
	lw	a5,-20(s0)
	bge	a5,zero,.L22
	.loc 1 131 16
	li	a5,-1
	j	.L23
.L22:
	.loc 1 134 5
	lw	a0,-36(s0)
	call	bl_adc_gpio_init
	.loc 1 135 15
	lw	a0,-36(s0)
	call	bl_adc_get_channel_by_gpio
	sw	a0,-24(s0)
	.loc 1 136 14
	li	a0,1
	call	bl_dma_find_ctx_by_channel
	sw	a0,-28(s0)
	.loc 1 137 37
	lw	a5,-28(s0)
	lw	a5,16(a5)
	.loc 1 137 60
	lw	a4,-24(s0)
	li	a3,1
	sll	a4,a3,a4
	.loc 1 137 55
	or	a4,a5,a4
	.loc 1 137 29
	lw	a5,-28(s0)
	sw	a4,16(a5)
	.loc 1 139 12
	li	a5,0
.L23:
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
.LFE26:
	.size	hal_adc_add_channel, .-hal_adc_add_channel
	.section	.text.hal_adc_get_data,"ax",@progbits
	.align	1
	.globl	hal_adc_get_data
	.type	hal_adc_get_data, @function
hal_adc_get_data:
.LFB27:
	.loc 1 143 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	.loc 1 150 11
	lw	a0,-84(s0)
	call	check_adc_gpio_valid
	sw	a0,-20(s0)
	.loc 1 151 8
	lw	a5,-20(s0)
	bge	a5,zero,.L25
	.loc 1 154 16
	li	a5,-1
	j	.L30
.L25:
	.loc 1 157 14
	li	a0,1
	call	bl_dma_find_ctx_by_channel
	sw	a0,-24(s0)
	.loc 1 158 8
	lw	a5,-24(s0)
	bne	a5,zero,.L27
	.loc 1 161 16
	li	a5,-1
	j	.L30
.L27:
	.loc 1 164 15
	lw	a0,-84(s0)
	call	bl_adc_get_channel_by_gpio
	sw	a0,-28(s0)
	.loc 1 165 13
	lw	a5,-28(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 165 33
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 165 25
	and	a5,a4,a5
	.loc 1 165 8
	bne	a5,zero,.L28
	.loc 1 167 16
	li	a5,-1
	j	.L30
.L28:
	.loc 1 170 15
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 170 8
	bne	a5,zero,.L29
	.loc 1 173 16
	li	a5,-1
	j	.L30
.L29:
	.loc 1 175 49
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 1 175 5
	addi	a5,s0,-80
	li	a2,48
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 176 12
	addi	a5,s0,-80
	lw	a3,-88(s0)
	lw	a2,-28(s0)
	li	a1,12
	mv	a0,a5
	call	bl_adc_parse_data
	sw	a0,-32(s0)
	.loc 1 178 12
	lw	a5,-32(s0)
.L30:
	.loc 1 179 1
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	hal_adc_get_data, .-hal_adc_get_data
	.section	.text.hal_prase_adc_data,"ax",@progbits
	.align	1
	.globl	hal_prase_adc_data
	.type	hal_prase_adc_data, @function
hal_prase_adc_data:
.LFB28:
	.loc 1 182 1
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
	.loc 1 186 15
	lw	a0,-40(s0)
	call	bl_adc_get_channel_by_gpio
	sw	a0,-20(s0)
	.loc 1 187 8
	lw	a4,-20(s0)
	li	a5,-1
	bne	a4,a5,.L32
	.loc 1 190 16
	li	a5,-1
	j	.L33
.L32:
	.loc 1 193 12
	lw	a3,-44(s0)
	lw	a2,-20(s0)
	li	a1,12
	lw	a0,-36(s0)
	call	bl_adc_parse_data
	sw	a0,-24(s0)
	.loc 1 195 12
	lw	a5,-24(s0)
.L33:
	.loc 1 196 1
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
.LFE28:
	.size	hal_prase_adc_data, .-hal_prase_adc_data
	.section	.text.hal_parse_data_arr,"ax",@progbits
	.align	1
	.globl	hal_parse_data_arr
	.type	hal_parse_data_arr, @function
hal_parse_data_arr:
.LFB29:
	.loc 1 200 1
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
	.loc 1 203 12
	sw	zero,-20(s0)
	.loc 1 203 5
	j	.L35
.L36:
	.loc 1 204 24
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 1 204 15
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 204 28
	slli	a4,a3,16
	srli	a4,a4,16
	.loc 1 204 19
	sw	a4,0(a5)
	.loc 1 203 33 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L35:
	.loc 1 203 19 discriminator 1
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	bgtu	a4,a5,.L36
	.loc 1 207 12
	li	a5,0
	.loc 1 208 1
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
.LFE29:
	.size	hal_parse_data_arr, .-hal_parse_data_arr
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_adc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_dma.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4c4
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xe
	.4byte	.LASF50
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x8e
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x10
	.byte	0x4
	.uleb128 0xc
	.4byte	0xa8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0x24
	.byte	0x10
	.4byte	0xc2
	.uleb128 0xa
	.4byte	0xc7
	.uleb128 0x11
	.4byte	0xdc
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0xdc
	.uleb128 0x1
	.4byte	0x6d
	.byte	0
	.uleb128 0xa
	.4byte	0x6d
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x1c
	.byte	0x4
	.byte	0x25
	.byte	0x10
	.4byte	0x143
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x26
	.byte	0x9
	.4byte	0x87
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x27
	.byte	0xf
	.4byte	0xdc
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x28
	.byte	0xb
	.4byte	0xa8
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x29
	.byte	0x9
	.4byte	0x87
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x2a
	.byte	0xe
	.4byte	0x6d
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x2b
	.byte	0xe
	.4byte	0x6d
	.byte	0x14
	.uleb128 0x13
	.string	"cb"
	.byte	0x4
	.byte	0x2c
	.byte	0x11
	.4byte	0xb6
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4
	.byte	0x2d
	.byte	0x2
	.4byte	0xe1
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.4byte	0x39
	.4byte	0x174
	.uleb128 0x1
	.4byte	0xdc
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x5
	.byte	0x1f
	.byte	0x8
	.4byte	0xa8
	.4byte	0x194
	.uleb128 0x1
	.4byte	0xaa
	.uleb128 0x1
	.4byte	0x199
	.uleb128 0x1
	.4byte	0x95
	.byte	0
	.uleb128 0xa
	.4byte	0x19e
	.uleb128 0xc
	.4byte	0x194
	.uleb128 0x14
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x4
	.byte	0x39
	.byte	0x5
	.4byte	0x87
	.4byte	0x1b5
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x4
	.byte	0x38
	.byte	0x5
	.4byte	0x87
	.4byte	0x1cb
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x6
	.byte	0x4e
	.byte	0x7
	.4byte	0xa8
	.4byte	0x1e1
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0x4
	.byte	0x37
	.byte	0x5
	.4byte	0x87
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x4
	.byte	0x36
	.byte	0x5
	.4byte	0x87
	.4byte	0x208
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x6d
	.byte	0
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x4
	.byte	0x35
	.byte	0x5
	.4byte	0x87
	.4byte	0x223
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0x4
	.byte	0x3a
	.byte	0x5
	.4byte	0x87
	.4byte	0x23e
	.uleb128 0x1
	.4byte	0x87
	.uleb128 0x1
	.4byte	0x6d
	.byte	0
	.uleb128 0x16
	.4byte	.LASF34
	.byte	0x1
	.byte	0xc7
	.byte	0x5
	.4byte	0x87
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28f
	.uleb128 0xb
	.string	"ptr"
	.byte	0xc7
	.byte	0x22
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0xc7
	.byte	0x31
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0xc7
	.byte	0x42
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"i"
	.byte	0xc9
	.byte	0x9
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0xb5
	.byte	0x9
	.4byte	0x39
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ef
	.uleb128 0xb
	.string	"ptr"
	.byte	0xb5
	.byte	0x26
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0xb5
	.byte	0x2f
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0xb5
	.byte	0x3d
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0xb7
	.byte	0xd
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0xb8
	.byte	0x9
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x8e
	.byte	0x9
	.4byte	0x39
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x36e
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x8e
	.byte	0x1e
	.4byte	0x87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x8e
	.byte	0x2c
	.4byte	0x87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x8
	.string	"ret"
	.byte	0x90
	.byte	0x9
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x91
	.byte	0x10
	.4byte	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x92
	.byte	0xe
	.4byte	0x373
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x93
	.byte	0xd
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x94
	.byte	0x9
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	0x143
	.uleb128 0x17
	.4byte	0x6d
	.4byte	0x382
	.uleb128 0xd
	.4byte	0x8e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x79
	.byte	0x5
	.4byte	0x87
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d4
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x79
	.byte	0x1d
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"ret"
	.byte	0x7b
	.byte	0x9
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x7c
	.byte	0x10
	.4byte	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x7d
	.byte	0x9
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x68
	.byte	0x5
	.4byte	0x87
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x409
	.uleb128 0xb
	.string	"cb"
	.byte	0x68
	.byte	0x2b
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"ctx"
	.byte	0x6a
	.byte	0x10
	.4byte	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x34
	.byte	0x5
	.4byte	0x87
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x477
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x34
	.byte	0x16
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x34
	.byte	0x20
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x34
	.byte	0x2a
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x34
	.byte	0x38
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"ret"
	.byte	0x36
	.byte	0x9
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x37
	.byte	0x9
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF53
	.byte	0x1
	.byte	0x24
	.byte	0xc
	.4byte	0x87
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bc
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x24
	.byte	0x25
	.4byte	0x87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x8
	.string	"i"
	.byte	0x26
	.byte	0x9
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x27
	.byte	0x9
	.4byte	0x4bc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x19
	.4byte	0x87
	.uleb128 0xd
	.4byte	0x8e
	.byte	0
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x8
	.uleb128 0x34
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 11
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF35:
	.string	"hal_prase_adc_data"
.LASF52:
	.string	"bl_adc_start"
.LASF39:
	.string	"channel"
.LASF21:
	.string	"lli_flag"
.LASF9:
	.string	"short unsigned int"
.LASF23:
	.string	"data_size"
.LASF51:
	.string	"adc_ctx"
.LASF32:
	.string	"bl_adc_freq_init"
.LASF6:
	.string	"int32_t"
.LASF36:
	.string	"gpio_num"
.LASF38:
	.string	"data"
.LASF8:
	.string	"unsigned char"
.LASF42:
	.string	"adc_data"
.LASF11:
	.string	"long unsigned int"
.LASF47:
	.string	"data_num"
.LASF44:
	.string	"hal_adc_callback_register"
.LASF14:
	.string	"size_t"
.LASF34:
	.string	"hal_parse_data_arr"
.LASF40:
	.string	"hal_adc_get_data"
.LASF19:
	.string	"channel_data"
.LASF37:
	.string	"raw_flag"
.LASF3:
	.string	"short int"
.LASF43:
	.string	"hal_adc_add_channel"
.LASF13:
	.string	"unsigned int"
.LASF31:
	.string	"bl_adc_init"
.LASF12:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint8_t"
.LASF18:
	.string	"mode"
.LASF2:
	.string	"signed char"
.LASF41:
	.string	"pstctx"
.LASF29:
	.string	"bl_dma_find_ctx_by_channel"
.LASF25:
	.string	"bl_adc_parse_data"
.LASF17:
	.string	"bl_adc_cb_t"
.LASF27:
	.string	"bl_adc_get_channel_by_gpio"
.LASF16:
	.string	"char"
.LASF48:
	.string	"buf_size"
.LASF26:
	.string	"memcpy"
.LASF30:
	.string	"bl_adc_dma_init"
.LASF46:
	.string	"freq"
.LASF33:
	.string	"output"
.LASF50:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF45:
	.string	"hal_adc_init"
.LASF10:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF53:
	.string	"check_adc_gpio_valid"
.LASF15:
	.string	"long double"
.LASF24:
	.string	"adc_ctx_t"
.LASF28:
	.string	"bl_adc_gpio_init"
.LASF20:
	.string	"adc_lli"
.LASF22:
	.string	"chan_init_table"
.LASF49:
	.string	"gpio_arr"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_adc.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
