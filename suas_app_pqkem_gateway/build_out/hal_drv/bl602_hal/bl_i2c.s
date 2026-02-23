	.file	"bl_i2c.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_i2c.c"
	.section	.text.i2c_set_freq,"ax",@progbits
	.align	1
	.globl	i2c_set_freq
	.type	i2c_set_freq, @function
i2c_set_freq:
.LFB9:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_i2c.c"
	.loc 1 46 1
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
	.loc 1 49 28
	lw	a4,-36(s0)
	li	a5,1000
	mul	a5,a4,a5
	.loc 1 49 20
	li	a4,32002048
	addi	a4,a4,-2048
	div	a5,a4,a5
	.loc 1 49 9
	sw	a5,-20(s0)
	.loc 1 50 15
	lw	a5,-20(s0)
	srli	a5,a5,2
	.loc 1 50 9
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 52 5
	lw	a5,-40(s0)
	andi	a5,a5,0xff
	lw	a4,-20(s0)
	andi	a4,a4,0xff
	mv	a1,a4
	mv	a0,a5
	call	I2C_SetPrd
	.loc 1 54 5
	nop
	.loc 1 55 1
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
	.size	i2c_set_freq, .-i2c_set_freq
	.section	.text.i2c_gpio_init,"ax",@progbits
	.align	1
	.globl	i2c_gpio_init
	.type	i2c_gpio_init, @function
i2c_gpio_init:
.LFB10:
	.loc 1 58 1
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
	.loc 1 60 8
	lw	a5,-36(s0)
	bne	a5,zero,.L4
	.loc 1 61 21
	li	a5,4
	sb	a5,-20(s0)
	.loc 1 62 21
	li	a5,3
	sb	a5,-19(s0)
.L4:
	.loc 1 66 5
	addi	a5,s0,-20
	li	a2,2
	mv	a1,a5
	li	a0,6
	call	GLB_GPIO_Func_Init
	.loc 1 67 5
	nop
	.loc 1 68 1
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
	.size	i2c_gpio_init, .-i2c_gpio_init
	.section	.text.i2c_clear_status,"ax",@progbits
	.align	1
	.globl	i2c_clear_status
	.type	i2c_clear_status, @function
i2c_clear_status:
.LFB11:
	.loc 1 71 1
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
	.loc 1 74 8
	lw	a5,-36(s0)
	bne	a5,zero,.L9
	.loc 1 75 19
	li	a5,1073782784
	addi	a5,a5,772
	.loc 1 75 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 76 16
	lw	a4,-20(s0)
	li	a5,65536
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 77 16
	lw	a4,-20(s0)
	li	a5,524288
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 78 16
	lw	a4,-20(s0)
	li	a5,1048576
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 79 11
	li	a5,1073782784
	addi	a5,a5,772
	.loc 1 79 63
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 83 9
	nop
.L9:
	nop
	.loc 1 84 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	i2c_clear_status, .-i2c_clear_status
	.section	.text.do_write_data,"ax",@progbits
	.align	1
	.globl	do_write_data
	.type	do_write_data, @function
do_write_data:
.LFB12:
	.loc 1 87 1
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
	.loc 1 88 14
	sw	zero,-20(s0)
	.loc 1 89 14
	sw	zero,-32(s0)
	.loc 1 93 19
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 93 33
	lw	a4,-36(s0)
	lw	a4,24(a4)
	.loc 1 93 25
	sub	a5,a5,a4
	.loc 1 93 11
	sw	a5,-28(s0)
	.loc 1 94 8
	lw	a4,-28(s0)
	li	a5,3
	ble	a4,a5,.L11
	.loc 1 95 15
	li	a5,4
	sw	a5,-28(s0)
.L11:
	.loc 1 98 12
	sw	zero,-24(s0)
	.loc 1 98 5
	j	.L12
.L13:
	.loc 1 99 23
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 1 99 37
	lw	a5,-36(s0)
	lw	a5,24(a5)
	mv	a3,a5
	.loc 1 99 44
	lw	a5,-24(s0)
	add	a5,a3,a5
	add	a5,a4,a5
	.loc 1 99 15
	lbu	a5,0(a5)
	.loc 1 99 13
	sw	a5,-32(s0)
	.loc 1 100 26
	lw	a5,-24(s0)
	slli	a5,a5,3
	.loc 1 100 21
	lw	a4,-32(s0)
	sll	a5,a4,a5
	.loc 1 100 14
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 98 29 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L12:
	.loc 1 98 19 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	blt	a4,a5,.L13
	.loc 1 102 7
	li	a5,1073782784
	addi	a5,a5,904
	.loc 1 102 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 103 26
	lw	a5,-36(s0)
	lw	a4,24(a5)
	.loc 1 103 33
	lw	a5,-28(s0)
	add	a4,a4,a5
	.loc 1 103 18
	lw	a5,-36(s0)
	sw	a4,24(a5)
	.loc 1 105 5
	nop
	.loc 1 106 1
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
	.size	do_write_data, .-do_write_data
	.section	.text.do_read_data,"ax",@progbits
	.align	1
	.globl	do_read_data
	.type	do_read_data, @function
do_read_data:
.LFB13:
	.loc 1 109 1
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
	.loc 1 110 14
	sw	zero,-20(s0)
	.loc 1 111 9
	sw	zero,-24(s0)
	.loc 1 114 19
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 114 33
	lw	a4,-36(s0)
	lw	a4,24(a4)
	.loc 1 114 25
	sub	a5,a5,a4
	.loc 1 114 11
	sw	a5,-28(s0)
	.loc 1 115 13
	li	a5,1073782784
	addi	a5,a5,908
	.loc 1 115 10
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 116 8
	lw	a4,-28(s0)
	li	a5,3
	ble	a4,a5,.L16
	.loc 1 117 18
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 117 32
	lw	a4,-36(s0)
	lw	a4,24(a4)
	.loc 1 117 24
	add	a5,a5,a4
	.loc 1 117 44
	lw	a4,-20(s0)
	andi	a4,a4,0xff
	.loc 1 117 42
	sb	a4,0(a5)
	.loc 1 117 121
	lw	a5,-20(s0)
	srli	a3,a5,8
	.loc 1 117 73
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 1 117 87
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 117 79
	addi	a5,a5,1
	add	a5,a4,a5
	.loc 1 117 102
	andi	a4,a3,0xff
	.loc 1 117 100
	sb	a4,0(a5)
	.loc 1 117 184
	lw	a5,-20(s0)
	srli	a3,a5,16
	.loc 1 117 136
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 1 117 150
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 117 142
	addi	a5,a5,2
	add	a5,a4,a5
	.loc 1 117 165
	andi	a4,a3,0xff
	.loc 1 117 163
	sb	a4,0(a5)
	.loc 1 117 248
	lw	a5,-20(s0)
	srli	a3,a5,24
	.loc 1 117 200
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 1 117 214
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 117 206
	addi	a5,a5,3
	add	a5,a4,a5
	.loc 1 117 229
	andi	a4,a3,0xff
	.loc 1 117 227
	sb	a4,0(a5)
	.loc 1 118 15
	li	a5,4
	sw	a5,-28(s0)
	j	.L17
.L16:
	.loc 1 119 15
	lw	a4,-28(s0)
	li	a5,3
	bgt	a4,a5,.L17
	.loc 1 120 16
	sw	zero,-24(s0)
	.loc 1 120 9
	j	.L18
.L19:
	.loc 1 121 19
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 121 31
	lw	a4,-36(s0)
	lw	a3,24(a4)
	.loc 1 121 38
	lw	a4,-24(s0)
	add	a4,a3,a4
	.loc 1 121 24
	add	a5,a5,a4
	.loc 1 121 43
	lw	a4,-20(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 122 18
	lw	a5,-20(s0)
	srli	a5,a5,8
	sw	a5,-20(s0)
	.loc 1 120 33 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L18:
	.loc 1 120 23 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	blt	a4,a5,.L19
.L17:
	.loc 1 125 26
	lw	a5,-36(s0)
	lw	a4,24(a5)
	.loc 1 125 33
	lw	a5,-28(s0)
	add	a4,a4,a5
	.loc 1 125 18
	lw	a5,-36(s0)
	sw	a4,24(a5)
	.loc 1 127 5
	nop
	.loc 1 128 1
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
	.size	do_read_data, .-do_read_data
	.section	.text.i2c_transfer_enable,"ax",@progbits
	.align	1
	.type	i2c_transfer_enable, @function
i2c_transfer_enable:
.LFB14:
	.loc 1 131 1
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
	.loc 1 132 15
	lw	a5,-20(s0)
	lbu	a5,2(a5)
	.loc 1 132 8
	bne	a5,zero,.L22
	.loc 1 133 27
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 133 9
	andi	a5,a5,0xff
	li	a2,0
	li	a1,1
	mv	a0,a5
	call	I2C_IntMask
	j	.L23
.L22:
	.loc 1 134 22
	lw	a5,-20(s0)
	lbu	a4,2(a5)
	.loc 1 134 15
	li	a5,1
	bne	a4,a5,.L23
	.loc 1 135 27
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 135 9
	andi	a5,a5,0xff
	li	a2,0
	li	a1,2
	mv	a0,a5
	call	I2C_IntMask
.L23:
	.loc 1 138 23
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 138 5
	andi	a5,a5,0xff
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	I2C_IntMask
	.loc 1 139 23
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 139 5
	andi	a5,a5,0xff
	li	a2,0
	li	a1,5
	mv	a0,a5
	call	I2C_IntMask
	.loc 1 140 23
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 140 5
	andi	a5,a5,0xff
	li	a2,0
	li	a1,4
	mv	a0,a5
	call	I2C_IntMask
	.loc 1 141 23
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 141 5
	andi	a5,a5,0xff
	li	a2,0
	li	a1,3
	mv	a0,a5
	call	I2C_IntMask
	.loc 1 143 22
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 143 5
	andi	a5,a5,0xff
	mv	a0,a5
	call	I2C_Enable
	.loc 1 145 5
	nop
	.loc 1 146 1
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
	.size	i2c_transfer_enable, .-i2c_transfer_enable
	.section	.text.i2c_config_para,"ax",@progbits
	.align	1
	.type	i2c_config_para, @function
i2c_config_para:
.LFB15:
	.loc 1 149 1
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
	.loc 1 152 15
	lw	a5,-36(s0)
	lw	a5,40(a5)
	.loc 1 152 8
	bne	a5,zero,.L32
	.loc 1 153 19
	li	a5,1073782784
	addi	a5,a5,768
	.loc 1 153 16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 154 18
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	.loc 1 154 11
	bne	a5,zero,.L27
	.loc 1 155 20
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
	j	.L28
.L27:
	.loc 1 157 20
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
.L28:
	.loc 1 160 29
	lw	a4,-20(s0)
	li	a5,-32768
	addi	a5,a5,255
	and	a4,a4,a5
	.loc 1 160 77
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	.loc 1 160 84
	slli	a5,a5,8
	.loc 1 160 16
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 161 18
	lw	a5,-36(s0)
	lbu	a5,3(a5)
	.loc 1 161 11
	beq	a5,zero,.L29
	.loc 1 162 20
	lw	a5,-20(s0)
	ori	a5,a5,16
	sw	a5,-20(s0)
	.loc 1 163 33
	lw	a5,-20(s0)
	andi	a4,a5,-97
	.loc 1 163 81
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	.loc 1 163 89
	addi	a5,a5,-1
	.loc 1 163 92
	slli	a5,a5,5
	.loc 1 163 20
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L30
.L29:
	.loc 1 165 20
	lw	a5,-20(s0)
	andi	a5,a5,-17
	sw	a5,-20(s0)
.L30:
	.loc 1 168 29
	lw	a4,-20(s0)
	li	a5,-16711680
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 168 78
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 168 61
	addi	a5,a5,-1
	.loc 1 168 86
	slli	a5,a5,16
	.loc 1 168 16
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 169 11
	li	a5,1073782784
	addi	a5,a5,768
	.loc 1 169 63
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 171 18
	lw	a5,-36(s0)
	lbu	a5,3(a5)
	.loc 1 171 11
	beq	a5,zero,.L32
	.loc 1 172 15
	li	a5,1073782784
	addi	a5,a5,776
	.loc 1 172 75
	lw	a4,-36(s0)
	lw	a4,4(a4)
	.loc 1 172 67
	sw	a4,0(a5)
	.loc 1 177 5
	nop
.L32:
	nop
	.loc 1 178 1
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
	.size	i2c_config_para, .-i2c_config_para
	.section	.text.i2c_transfer_start,"ax",@progbits
	.align	1
	.globl	i2c_transfer_start
	.type	i2c_transfer_start, @function
i2c_transfer_start:
.LFB16:
	.loc 1 181 1
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
	.loc 1 182 5
	lw	a5,-20(s0)
	lw	a5,40(a5)
	mv	a0,a5
	call	i2c_clear_status
	.loc 1 183 5
	lw	a0,-20(s0)
	call	i2c_config_para
	.loc 1 184 5
	lw	a0,-20(s0)
	call	i2c_transfer_enable
	.loc 1 186 5
	nop
	.loc 1 187 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	i2c_transfer_start, .-i2c_transfer_start
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_i2c.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x560
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xf
	.4byte	.LASF100
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x66
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0x2c
	.byte	0x3
	.byte	0x27
	.byte	0x10
	.4byte	0x13d
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x28
	.byte	0xe
	.4byte	0x5a
	.byte	0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x29
	.byte	0xd
	.4byte	0x4e
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x2a
	.byte	0xd
	.4byte	0x4e
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x2b
	.byte	0xe
	.4byte	0x6d
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x2c
	.byte	0xd
	.4byte	0x4e
	.byte	0x8
	.uleb128 0xd
	.string	"len"
	.byte	0x2d
	.4byte	0x6d
	.byte	0xc
	.uleb128 0xd
	.string	"buf"
	.byte	0x2e
	.4byte	0x13d
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x2f
	.byte	0x9
	.4byte	0x87
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x30
	.byte	0x9
	.4byte	0x87
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x31
	.byte	0x9
	.4byte	0x87
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x32
	.byte	0x9
	.4byte	0x87
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x33
	.byte	0x9
	.4byte	0x87
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x34
	.byte	0x9
	.4byte	0x87
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.4byte	0x4e
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x3
	.byte	0x35
	.byte	0x3
	.4byte	0x95
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF26
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF27
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0x17b
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
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0x15c
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x1a0
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x4
	.byte	0x36
	.byte	0x2
	.4byte	0x187
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0x1c5
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x5
	.byte	0x3c
	.byte	0x2
	.4byte	0x1ac
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x41
	.byte	0xe
	.4byte	0x1ea
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x5
	.byte	0x49
	.byte	0xe
	.4byte	0x221
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x5
	.byte	0x51
	.byte	0x2
	.4byte	0x1ea
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x6
	.byte	0x29
	.byte	0x1
	.4byte	0x2ca
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x6
	.byte	0x42
	.byte	0x2
	.4byte	0x22d
	.uleb128 0x7
	.4byte	0x2b
	.byte	0x6
	.byte	0x4c
	.byte	0x1
	.4byte	0x31f
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0x6
	.byte	0x57
	.byte	0x2
	.4byte	0x2d6
	.uleb128 0x12
	.4byte	0x4e
	.4byte	0x33b
	.uleb128 0x13
	.4byte	0x8e
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0xaf
	.4byte	0x34b
	.uleb128 0x5
	.4byte	0x1c5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0xba
	.4byte	0x365
	.uleb128 0x5
	.4byte	0x1c5
	.uleb128 0x5
	.4byte	0x221
	.uleb128 0x5
	.4byte	0x1a0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x277
	.byte	0xd
	.4byte	0x17b
	.4byte	0x386
	.uleb128 0x5
	.4byte	0x31f
	.uleb128 0x5
	.4byte	0x386
	.uleb128 0x5
	.4byte	0x4e
	.byte	0
	.uleb128 0xa
	.4byte	0x2ca
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0xb2
	.4byte	0x3a0
	.uleb128 0x5
	.4byte	0x1c5
	.uleb128 0x5
	.4byte	0x4e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0xb4
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c3
	.uleb128 0x6
	.4byte	.LASF87
	.byte	0xb4
	.byte	0x24
	.4byte	0x3c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	0x142
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x1
	.byte	0x94
	.byte	0xd
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fb
	.uleb128 0x6
	.4byte	.LASF87
	.byte	0x94
	.byte	0x28
	.4byte	0x3c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF92
	.byte	0x96
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x1
	.byte	0x82
	.byte	0xd
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x420
	.uleb128 0x6
	.4byte	.LASF87
	.byte	0x82
	.byte	0x2c
	.4byte	0x3c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x6c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46b
	.uleb128 0x6
	.4byte	.LASF87
	.byte	0x6c
	.byte	0x1e
	.4byte	0x3c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF93
	.byte	0x6e
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"i"
	.byte	0x6f
	.byte	0x9
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF94
	.byte	0x70
	.byte	0x9
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x56
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c4
	.uleb128 0x6
	.4byte	.LASF87
	.byte	0x56
	.byte	0x1f
	.4byte	0x3c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF93
	.byte	0x58
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"val"
	.byte	0x59
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.string	"i"
	.byte	0x5a
	.byte	0x9
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF94
	.byte	0x5b
	.byte	0x9
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x46
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f5
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x46
	.byte	0x1b
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF92
	.byte	0x48
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x39
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x526
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x39
	.byte	0x18
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0x3b
	.byte	0xd
	.4byte	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF103
	.byte	0x1
	.byte	0x2d
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0x2d
	.byte	0x17
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x2d
	.byte	0x21
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"tmp"
	.byte	0x2f
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xc
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
	.sleb128 6
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
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.sleb128 6
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x16
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
	.uleb128 0x1
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
.LASF48:
	.string	"GLB_GPIO_PIN_0"
.LASF95:
	.string	"do_write_data"
.LASF24:
	.string	"i2cx"
.LASF93:
	.string	"temp"
.LASF80:
	.string	"GPIO_FUN_ANALOG"
.LASF38:
	.string	"I2C_WRITE"
.LASF39:
	.string	"I2C_READ"
.LASF75:
	.string	"GPIO_FUN_SPI"
.LASF6:
	.string	"long long int"
.LASF97:
	.string	"i2c_gpio_init"
.LASF19:
	.string	"event"
.LASF36:
	.string	"I2C_ID_MAX"
.LASF17:
	.string	"subaddr"
.LASF59:
	.string	"GLB_GPIO_PIN_11"
.LASF15:
	.string	"direct"
.LASF25:
	.string	"i2c_msg_t"
.LASF103:
	.string	"i2c_set_freq"
.LASF63:
	.string	"GLB_GPIO_PIN_15"
.LASF64:
	.string	"GLB_GPIO_PIN_16"
.LASF7:
	.string	"uint8_t"
.LASF91:
	.string	"do_read_data"
.LASF96:
	.string	"i2c_clear_status"
.LASF71:
	.string	"GLB_GPIO_PIN_MAX"
.LASF4:
	.string	"short int"
.LASF58:
	.string	"GLB_GPIO_PIN_10"
.LASF99:
	.string	"freq"
.LASF60:
	.string	"GLB_GPIO_PIN_12"
.LASF61:
	.string	"GLB_GPIO_PIN_13"
.LASF62:
	.string	"GLB_GPIO_PIN_14"
.LASF76:
	.string	"GPIO_FUN_I2C"
.LASF43:
	.string	"I2C_NACK_RECV_INT"
.LASF65:
	.string	"GLB_GPIO_PIN_17"
.LASF66:
	.string	"GLB_GPIO_PIN_18"
.LASF67:
	.string	"GLB_GPIO_PIN_19"
.LASF30:
	.string	"TIMEOUT"
.LASF5:
	.string	"long int"
.LASF31:
	.string	"BL_Err_Type"
.LASF14:
	.string	"addr"
.LASF86:
	.string	"I2C_SetPrd"
.LASF72:
	.string	"GLB_GPIO_Type"
.LASF21:
	.string	"block"
.LASF29:
	.string	"ERROR"
.LASF45:
	.string	"I2C_FIFO_ERR_INT"
.LASF44:
	.string	"I2C_ARB_LOST_INT"
.LASF87:
	.string	"pstmsg"
.LASF84:
	.string	"I2C_Enable"
.LASF78:
	.string	"GPIO_FUN_PWM"
.LASF41:
	.string	"I2C_TX_FIFO_READY_INT"
.LASF26:
	.string	"long double"
.LASF101:
	.string	"i2c_msg"
.LASF32:
	.string	"UNMASK"
.LASF2:
	.string	"unsigned char"
.LASF47:
	.string	"I2C_INT_Type"
.LASF34:
	.string	"BL_Mask_Type"
.LASF3:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF102:
	.string	"GLB_GPIO_Func_Init"
.LASF10:
	.string	"uint32_t"
.LASF79:
	.string	"GPIO_FUN_EXT_PA"
.LASF33:
	.string	"MASK"
.LASF8:
	.string	"uint16_t"
.LASF50:
	.string	"GLB_GPIO_PIN_2"
.LASF40:
	.string	"I2C_TRANS_END_INT"
.LASF51:
	.string	"GLB_GPIO_PIN_3"
.LASF89:
	.string	"i2c_transfer_enable"
.LASF69:
	.string	"GLB_GPIO_PIN_21"
.LASF70:
	.string	"GLB_GPIO_PIN_22"
.LASF54:
	.string	"GLB_GPIO_PIN_6"
.LASF55:
	.string	"GLB_GPIO_PIN_7"
.LASF77:
	.string	"GPIO_FUN_UART"
.LASF23:
	.string	"ins_num"
.LASF57:
	.string	"GLB_GPIO_PIN_9"
.LASF22:
	.string	"stop"
.LASF27:
	.string	"char"
.LASF88:
	.string	"i2c_config_para"
.LASF85:
	.string	"I2C_IntMask"
.LASF81:
	.string	"GPIO_FUN_SWGPIO"
.LASF9:
	.string	"short unsigned int"
.LASF100:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF74:
	.string	"GPIO_FUN_FLASH"
.LASF73:
	.string	"GPIO_FUN_SDIO"
.LASF16:
	.string	"subflag"
.LASF68:
	.string	"GLB_GPIO_PIN_20"
.LASF20:
	.string	"idex"
.LASF11:
	.string	"long unsigned int"
.LASF37:
	.string	"I2C_ID_Type"
.LASF83:
	.string	"GLB_GPIO_FUNC_Type"
.LASF49:
	.string	"GLB_GPIO_PIN_1"
.LASF94:
	.string	"count"
.LASF52:
	.string	"GLB_GPIO_PIN_4"
.LASF53:
	.string	"GLB_GPIO_PIN_5"
.LASF18:
	.string	"sublen"
.LASF28:
	.string	"SUCCESS"
.LASF56:
	.string	"GLB_GPIO_PIN_8"
.LASF42:
	.string	"I2C_RX_FIFO_READY_INT"
.LASF98:
	.string	"gpiopins"
.LASF90:
	.string	"i2c_transfer_start"
.LASF13:
	.string	"unsigned int"
.LASF92:
	.string	"tmpval"
.LASF46:
	.string	"I2C_INT_ALL"
.LASF82:
	.string	"GPIO_FUN_JTAG"
.LASF35:
	.string	"I2C0_ID"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_i2c.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
