	.file	"hal_button.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_button.c"
	.section	.text.fdt32_to_cpu,"ax",@progbits
	.align	1
	.type	fdt32_to_cpu, @function
fdt32_to_cpu:
.LFB6:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt_env.h"
	.loc 1 121 1
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
	.loc 1 122 58
	addi	a5,s0,-20
	.loc 1 122 61
	lbu	a5,0(a5)
	.loc 1 122 66
	slli	a4,a5,24
	.loc 1 122 112
	addi	a5,s0,-20
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 122 117
	slli	a5,a5,16
	.loc 1 122 73
	or	a4,a4,a5
	.loc 1 122 163
	addi	a5,s0,-20
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 122 168
	slli	a5,a5,8
	.loc 1 122 124
	or	a4,a4,a5
	.loc 1 122 212
	addi	a5,s0,-20
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 122 12
	or	a5,a4,a5
	.loc 1 123 1
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
.LFE6:
	.size	fdt32_to_cpu, .-fdt32_to_cpu
	.section	.text.accumulate_time,"ax",@progbits
	.align	1
	.type	accumulate_time, @function
accumulate_time:
.LFB40:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_button.c"
	.loc 2 82 1
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
	.loc 2 85 8
	lw	a5,-36(s0)
	bne	a5,zero,.L4
	.loc 2 87 16
	li	a5,-1
	j	.L5
.L4:
	.loc 2 90 24
	lw	a5,-36(s0)
	lw	a4,12(a5)
	.loc 2 90 38
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	.loc 2 90 52
	lw	a5,-36(s0)
	lw	a5,52(a5)
	.loc 2 90 15
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 92 12
	lw	a5,-20(s0)
.L5:
	.loc 2 93 1
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
.LFE40:
	.size	accumulate_time, .-accumulate_time
	.section	.text.check_button_is_up,"ax",@progbits
	.align	1
	.type	check_button_is_up, @function
check_button_is_up:
.LFB41:
	.loc 2 96 1
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
	.loc 2 99 42
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 2 99 11
	andi	a5,a5,0xff
	mv	a0,a5
	call	bl_gpio_input_get_value
	sw	a0,-20(s0)
	.loc 2 100 23
	lw	a5,-36(s0)
	lw	a5,56(a5)
	.loc 2 100 8
	lw	a4,-20(s0)
	beq	a4,a5,.L7
	.loc 2 101 16
	li	a5,0
	j	.L8
.L7:
	.loc 2 104 12
	li	a5,1
.L8:
	.loc 2 105 1
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
.LFE41:
	.size	check_button_is_up, .-check_button_is_up
	.section	.text.button_int_umask,"ax",@progbits
	.align	1
	.type	button_int_umask, @function
button_int_umask:
.LFB42:
	.loc 2 108 1
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
	.loc 2 109 28
	lw	a5,-20(s0)
	lw	a5,60(a5)
	.loc 2 109 5
	andi	a5,a5,0xff
	li	a1,0
	mv	a0,a5
	call	bl_gpio_intmask
	.loc 2 110 1
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
.LFE42:
	.size	button_int_umask, .-button_int_umask
	.section	.text.clear_button_states,"ax",@progbits
	.align	1
	.type	clear_button_states, @function
clear_button_states:
.LFB43:
	.loc 2 113 1
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
	.loc 2 114 26
	lw	a5,-20(s0)
	sw	zero,8(a5)
	.loc 2 115 26
	lw	a5,-20(s0)
	sw	zero,12(a5)
	.loc 2 116 32
	lw	a5,-20(s0)
	sw	zero,48(a5)
	.loc 2 118 9
	lw	a5,-20(s0)
	lw	a5,4(a5)
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,3
	mv	a0,a5
	call	xTimerGenericCommand
	.loc 2 122 5
	nop
	.loc 2 123 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE43:
	.size	clear_button_states, .-clear_button_states
	.section	.text.button_process,"ax",@progbits
	.align	1
	.type	button_process, @function
button_process:
.LFB44:
	.loc 2 126 1
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
	.loc 2 131 31
	lw	a0,-36(s0)
	call	pvTimerGetTimerID
	sw	a0,-20(s0)
	.loc 2 133 20
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 133 5
	li	a4,3
	beq	a5,a4,.L13
	li	a4,3
	bgt	a5,a4,.L12
	li	a4,2
	beq	a5,a4,.L15
	li	a4,2
	bgt	a5,a4,.L12
	beq	a5,zero,.L16
	li	a4,1
	beq	a5,a4,.L17
	j	.L12
.L16:
	.loc 2 136 19
	lw	a0,-20(s0)
	call	check_button_is_up
	sw	a0,-28(s0)
	.loc 2 137 16
	lw	a5,-28(s0)
	bne	a5,zero,.L18
	.loc 2 139 17
	lw	a0,-20(s0)
	call	clear_button_states
	.loc 2 140 17
	lw	a0,-20(s0)
	call	button_int_umask
	.loc 2 142 17
	j	.L12
.L18:
	.loc 2 145 17
	lw	a5,-20(s0)
	lw	a5,4(a5)
	li	a4,100
	li	a3,0
	li	a2,20
	li	a1,4
	mv	a0,a5
	call	xTimerGenericCommand
	mv	a4,a0
	.loc 2 145 16 discriminator 1
	li	a5,1
	beq	a4,a5,.L19
	.loc 2 147 17
	lw	a0,-20(s0)
	call	button_int_umask
	.loc 2 148 17
	lw	a0,-20(s0)
	call	clear_button_states
	.loc 2 150 17
	j	.L12
.L19:
	.loc 2 152 34
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,8(a5)
	.loc 2 154 9
	j	.L12
.L17:
	.loc 2 158 20
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 2 158 33
	addi	a4,a5,1
	lw	a5,-20(s0)
	sw	a4,12(a5)
	.loc 2 159 25
	lw	a0,-20(s0)
	call	accumulate_time
	sw	a0,-24(s0)
	.loc 2 160 36
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 2 160 16
	lw	a4,-24(s0)
	ble	a4,a5,.L20
	.loc 2 161 38
	lw	a5,-20(s0)
	li	a4,2
	sw	a4,8(a5)
	.loc 2 163 17
	j	.L12
.L20:
	.loc 2 165 42
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 2 165 21
	lw	a4,-24(s0)
	blt	a4,a5,.L21
	.loc 2 165 87 discriminator 1
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 2 165 65 discriminator 1
	lw	a4,-24(s0)
	bge	a4,a5,.L21
	.loc 2 166 23
	lw	a0,-20(s0)
	call	check_button_is_up
	sw	a0,-28(s0)
	.loc 2 167 20
	lw	a5,-28(s0)
	bne	a5,zero,.L23
	.loc 2 169 51
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 2 169 21
	slli	a5,a5,16
	srli	a5,a5,16
	li	a2,0
	mv	a1,a5
	li	a0,513
	call	aos_post_event
	.loc 2 170 21
	lw	a0,-20(s0)
	call	clear_button_states
	.loc 2 171 21
	lw	a0,-20(s0)
	call	button_int_umask
	.loc 2 173 21
	j	.L12
.L21:
	.loc 2 176 41
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 2 176 21
	lw	a4,-24(s0)
	bge	a4,a5,.L32
	.loc 2 177 23
	lw	a0,-20(s0)
	call	check_button_is_up
	sw	a0,-28(s0)
	.loc 2 178 20
	lw	a5,-28(s0)
	bne	a5,zero,.L33
	.loc 2 180 21
	lw	a0,-20(s0)
	call	clear_button_states
	.loc 2 181 21
	lw	a0,-20(s0)
	call	button_int_umask
	.loc 2 182 21
	j	.L12
.L23:
	.loc 2 192 9
	j	.L32
.L15:
	.loc 2 196 20
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 2 196 33
	addi	a4,a5,1
	lw	a5,-20(s0)
	sw	a4,12(a5)
	.loc 2 197 25
	lw	a0,-20(s0)
	call	accumulate_time
	sw	a0,-24(s0)
	.loc 2 198 36
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 2 198 16
	lw	a4,-24(s0)
	ble	a4,a5,.L25
	.loc 2 199 38
	lw	a5,-20(s0)
	li	a4,3
	sw	a4,8(a5)
	.loc 2 201 17
	j	.L12
.L25:
	.loc 2 203 42
	lw	a5,-20(s0)
	lw	a5,28(a5)
	.loc 2 203 21
	lw	a4,-24(s0)
	blt	a4,a5,.L26
	.loc 2 203 86 discriminator 1
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 2 203 64 discriminator 1
	lw	a4,-24(s0)
	bge	a4,a5,.L26
	.loc 2 204 23
	lw	a0,-20(s0)
	call	check_button_is_up
	sw	a0,-28(s0)
	.loc 2 205 20
	lw	a5,-28(s0)
	bne	a5,zero,.L28
	.loc 2 207 51
	lw	a5,-20(s0)
	lw	a5,36(a5)
	.loc 2 207 21
	slli	a5,a5,16
	srli	a5,a5,16
	li	a2,0
	mv	a1,a5
	li	a0,513
	call	aos_post_event
	.loc 2 208 21
	lw	a0,-20(s0)
	call	clear_button_states
	.loc 2 209 21
	lw	a0,-20(s0)
	call	button_int_umask
	.loc 2 210 21
	j	.L12
.L26:
	.loc 2 213 41
	lw	a5,-20(s0)
	lw	a5,28(a5)
	.loc 2 213 21
	lw	a4,-24(s0)
	bge	a4,a5,.L34
	.loc 2 214 23
	lw	a0,-20(s0)
	call	check_button_is_up
	sw	a0,-28(s0)
	.loc 2 215 20
	lw	a5,-28(s0)
	bne	a5,zero,.L35
	.loc 2 217 21
	lw	a0,-20(s0)
	call	clear_button_states
	.loc 2 218 21
	lw	a0,-20(s0)
	call	button_int_umask
	.loc 2 219 21
	j	.L12
.L28:
	.loc 2 229 9
	j	.L34
.L13:
	.loc 2 233 20
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 2 233 33
	addi	a4,a5,1
	lw	a5,-20(s0)
	sw	a4,12(a5)
	.loc 2 234 25
	lw	a0,-20(s0)
	call	accumulate_time
	sw	a0,-24(s0)
	.loc 2 235 37
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 2 235 16
	lw	a4,-24(s0)
	blt	a4,a5,.L30
	.loc 2 235 67 discriminator 1
	lw	a5,-20(s0)
	lw	a5,48(a5)
	.loc 2 235 57 discriminator 1
	bne	a5,zero,.L30
	.loc 2 237 47
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 2 237 17
	slli	a5,a5,16
	srli	a5,a5,16
	li	a2,0
	mv	a1,a5
	li	a0,513
	call	aos_post_event
	.loc 2 238 44
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,48(a5)
	.loc 2 240 17
	j	.L12
.L30:
	.loc 2 243 19
	lw	a0,-20(s0)
	call	check_button_is_up
	sw	a0,-28(s0)
	.loc 2 244 16
	lw	a5,-28(s0)
	bne	a5,zero,.L36
	.loc 2 245 17
	lw	a0,-20(s0)
	call	clear_button_states
	.loc 2 246 17
	lw	a0,-20(s0)
	call	button_int_umask
	.loc 2 248 17
	j	.L12
.L32:
	.loc 2 192 9
	nop
	j	.L12
.L33:
	.loc 2 185 21
	nop
	j	.L12
.L34:
	.loc 2 229 9
	nop
	j	.L12
.L35:
	.loc 2 222 21
	nop
	j	.L12
.L36:
	.loc 2 251 9
	nop
.L12:
	.loc 2 253 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE44:
	.size	button_process, .-button_process
	.section	.text.button_callback,"ax",@progbits
	.align	1
	.type	button_callback, @function
button_callback:
.LFB45:
	.loc 2 257 1
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
	.loc 2 261 59
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 261 11
	lw	s1,4(a5)
	.loc 2 261 111
	call	xTaskGetTickCountFromISR
	mv	a2,a0
	.loc 2 261 11 discriminator 1
	addi	a5,s0,-24
	li	a4,0
	mv	a3,a5
	li	a1,6
	mv	a0,s1
	call	xTimerGenericCommand
	sw	a0,-20(s0)
	.loc 2 262 8
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L42
	.loc 2 266 9
	lw	a5,-24(s0)
	.loc 2 266 7
	beq	a5,zero,.L43
	.loc 2 266 36 discriminator 1
	call	vTaskSwitchContext
	.loc 2 267 5
	j	.L43
.L42:
	.loc 2 264 9
	nop
	j	.L37
.L43:
	.loc 2 267 5
	nop
.L37:
	.loc 2 268 1
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
.LFE45:
	.size	button_callback, .-button_callback
	.section	.rodata
	.align	2
.LC0:
	.string	"%d"
	.section	.text.hal_button_register_handler_with_dts,"ax",@progbits
	.align	1
	.type	hal_button_register_handler_with_dts, @function
hal_button_register_handler_with_dts:
.LFB46:
	.loc 2 271 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	.loc 2 273 10
	li	a5,1953787904
	addi	a5,a5,1378
	sw	a5,-44(s0)
	li	a5,1769238528
	addi	a5,a5,-401
	sw	a5,-40(s0)
	li	a5,762470400
	addi	a5,a5,1389
	sw	a5,-36(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	.loc 2 276 8
	lw	a5,-52(s0)
	bne	a5,zero,.L45
	.loc 2 278 16
	li	a5,-1
	j	.L50
.L45:
	.loc 2 281 15
	li	a0,64
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 2 283 62
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 2 283 69
	lw	a4,16(a5)
	.loc 2 283 35
	lw	a5,-20(s0)
	sw	a4,16(a5)
	.loc 2 284 60
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 2 284 67
	lw	a4,20(a5)
	.loc 2 284 33
	lw	a5,-20(s0)
	sw	a4,20(a5)
	.loc 2 285 54
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 2 285 61
	lw	a4,24(a5)
	.loc 2 285 27
	lw	a5,-20(s0)
	sw	a4,24(a5)
	.loc 2 286 61
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 2 286 68
	lw	a4,28(a5)
	.loc 2 286 34
	lw	a5,-20(s0)
	sw	a4,28(a5)
	.loc 2 287 59
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 2 287 66
	lw	a4,32(a5)
	.loc 2 287 32
	lw	a5,-20(s0)
	sw	a4,32(a5)
	.loc 2 288 53
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 2 288 60
	lw	a4,36(a5)
	.loc 2 288 26
	lw	a5,-20(s0)
	sw	a4,36(a5)
	.loc 2 289 59
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 2 289 66
	lw	a4,40(a5)
	.loc 2 289 32
	lw	a5,-20(s0)
	sw	a4,40(a5)
	.loc 2 290 57
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 2 290 64
	lw	a4,44(a5)
	.loc 2 290 30
	lw	a5,-20(s0)
	sw	a4,44(a5)
	.loc 2 291 50
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 2 291 57
	lw	a4,52(a5)
	.loc 2 291 23
	lw	a5,-20(s0)
	sw	a4,52(a5)
	.loc 2 292 52
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 2 292 59
	lw	a4,56(a5)
	.loc 2 292 25
	lw	a5,-20(s0)
	sw	a4,56(a5)
	.loc 2 293 31
	lw	a5,-52(s0)
	lbu	a5,12(a5)
	mv	a4,a5
	.loc 2 293 22
	lw	a5,-20(s0)
	sw	a4,60(a5)
	.loc 2 294 26
	lw	a5,-20(s0)
	sw	zero,8(a5)
	.loc 2 295 26
	lw	a5,-20(s0)
	sw	zero,12(a5)
	.loc 2 296 32
	lw	a5,-20(s0)
	sw	zero,48(a5)
	.loc 2 299 25
	addi	a5,s0,-44
	mv	a0,a5
	call	strlen
	mv	a4,a0
	.loc 2 299 13 discriminator 1
	addi	a5,s0,-44
	add	a4,a5,a4
	.loc 2 299 5 discriminator 1
	lw	a5,-20(s0)
	lw	a5,60(a5)
	mv	a2,a5
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	mv	a0,a4
	call	sprintf
	.loc 2 300 103
	lw	a5,-20(s0)
	lw	a5,52(a5)
	.loc 2 300 79
	mv	a4,a5
	.loc 2 300 116
	li	a5,1000
	mul	a4,a4,a5
	.loc 2 300 60
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a1,a5,6
	.loc 2 300 33
	addi	a0,s0,-44
	lui	a5,%hi(button_process)
	addi	a4,a5,%lo(button_process)
	lw	a3,-20(s0)
	li	a2,1
	call	xTimerCreate
	mv	a4,a0
	.loc 2 300 31 discriminator 1
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 2 302 18
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 2 302 8
	bne	a5,zero,.L47
	.loc 2 304 16
	li	a5,-1
	j	.L50
.L47:
	.loc 2 307 20
	lw	a5,-20(s0)
	lw	a5,56(a5)
	.loc 2 307 37
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 2 307 11
	sb	a5,-21(s0)
	.loc 2 308 33
	lw	a5,-20(s0)
	lw	a5,60(a5)
	.loc 2 308 5
	andi	a4,a5,0xff
	lbu	a5,-21(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a3,a5
	lbu	a5,-21(s0)
	mv	a2,a3
	mv	a1,a5
	mv	a0,a4
	call	bl_gpio_enable_input
	.loc 2 309 5
	lw	a5,-20(s0)
	lw	a1,60(a5)
	.loc 2 309 97
	lw	a5,-20(s0)
	lw	a5,56(a5)
	.loc 2 309 5
	beq	a5,zero,.L48
	.loc 2 309 5 is_stmt 0 discriminator 1
	li	a5,3
	j	.L49
.L48:
	.loc 2 309 5 discriminator 2
	li	a5,2
.L49:
	.loc 2 309 5 discriminator 4
	lw	a4,-20(s0)
	mv	a3,a5
	li	a2,1
	lui	a5,%hi(button_callback)
	addi	a0,a5,%lo(button_callback)
	call	hal_gpio_register_handler
	.loc 2 311 12 is_stmt 1
	li	a5,0
.L50:
	.loc 2 312 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE46:
	.size	hal_button_register_handler_with_dts, .-hal_button_register_handler_with_dts
	.section	.rodata
	.align	2
.LC1:
	.string	"hal_button.c"
	.align	2
.LC2:
	.string	"\033[31mERROR \033[0m"
	.align	2
.LC3:
	.string	"[%10u][%s: %s:%4d] mem error.\r\n"
	.align	2
.LC4:
	.string	"gpio%d"
	.align	2
.LC5:
	.string	"status"
	.align	2
.LC6:
	.string	"\033[33mWARN  \033[0m"
	.align	2
.LC7:
	.string	"[%10u][%s: %s:%4d] gpio[%d] status_countindex = %d NULL. \r\n"
	.align	2
.LC8:
	.string	"okay"
	.align	2
.LC9:
	.string	"[%10u][%s: %s:%4d] gpio[%d] status = %s\r\n"
	.align	2
.LC10:
	.string	"feature"
	.align	2
.LC11:
	.string	"[%10u][%s: %s:%4d] gpio[%d] feature_countindex = %d NULL. \r\n"
	.align	2
.LC12:
	.string	"button"
	.align	2
.LC13:
	.string	"[%10u][%s: %s:%4d] gpio[%d] feature = %s\r\n"
	.align	2
.LC14:
	.string	"mode"
	.align	2
.LC15:
	.string	"[%10u][%s: %s:%4d] gpio[%d] mode = %d NULL. \r\n"
	.align	2
.LC16:
	.string	"multipress"
	.align	2
.LC17:
	.string	"[%10u][%s: %s:%4d] gpio[%d] multipress = %s\r\n"
	.align	2
.LC18:
	.string	"pin"
	.align	2
.LC19:
	.string	"[%10u][%s: %s:%4d] gpio[%d] pin NULL. \r\n"
	.align	2
.LC20:
	.string	"\033[32mINFO  \033[0m"
	.align	2
.LC21:
	.string	"[%10u][%s: %s:%4d] i = %d, stgpio.gpioPin = %d\r\n"
	.align	2
.LC22:
	.string	"hbn_use"
	.align	2
.LC23:
	.string	"[%10u][%s: %s:%4d] button feature NULL \r\n"
	.align	2
.LC24:
	.string	"debounce"
	.align	2
.LC25:
	.string	"[%10u][%s: %s:%4d] debounce NULL. \r\n"
	.align	2
.LC26:
	.string	"dehounce = %ld \r\n"
	.align	2
.LC27:
	.string	"short_press_ms"
	.align	2
.LC28:
	.string	"[%10u][%s: %s:%4d] gpio[%d] short_press_ms feature NULL \r\n"
	.align	2
.LC29:
	.string	"start"
	.align	2
.LC30:
	.string	"[%10u][%s: %s:%4d] press start  NULL. \r\n"
	.align	2
.LC31:
	.string	"end"
	.align	2
.LC32:
	.string	"[%10u][%s: %s:%4d] press end  NULL. \r\n"
	.align	2
.LC33:
	.string	"kevent"
	.align	2
.LC34:
	.string	"[%10u][%s: %s:%4d] gpio[%d] kevnet  NULL. \r\n"
	.align	2
.LC35:
	.string	"long_press_ms"
	.align	2
.LC36:
	.string	"[%10u][%s: %s:%4d] long_press_ms feature NULL \r\n"
	.align	2
.LC37:
	.string	"[%10u][%s: %s:%4d] press start pin NULL. \r\n"
	.align	2
.LC38:
	.string	"[%10u][%s: %s:%4d] press end pin NULL. \r\n"
	.align	2
.LC39:
	.string	"[%10u][%s: %s:%4d] gpio[%d] kevent NULL. \r\n"
	.align	2
.LC40:
	.string	"longlong_press_ms"
	.align	2
.LC41:
	.string	"[%10u][%s: %s:%4d] gpio[%d] kevent NULL \r\n"
	.align	2
.LC42:
	.string	"trig_level"
	.align	2
.LC43:
	.string	"[%10u][%s: %s:%4d] gpio[%d] trig_level = %s\r\n"
	.align	2
.LC44:
	.string	"Hi"
	.align	2
.LC45:
	.string	"Lo"
	.align	2
.LC46:
	.string	"[%10u][%s: %s:%4d] gpio[%d] trig_level = %d\r\n"
	.section	.text.fdt_button_module_init,"ax",@progbits
	.align	1
	.globl	fdt_button_module_init
	.type	fdt_button_module_init, @function
fdt_button_module_init:
.LFB47:
	.loc 2 315 1
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sw	ra,172(sp)
	sw	s0,168(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	sw	a0,-164(s0)
	sw	a1,-168(s0)
	.loc 2 317 9
	sw	zero,-28(s0)
	.loc 2 318 9
	sw	zero,-32(s0)
	.loc 2 319 9
	sw	zero,-36(s0)
	.loc 2 321 9
	sw	zero,-56(s0)
	.loc 2 322 10
	li	a5,1869180928
	addi	a5,a5,103
	sw	a5,-68(s0)
	sw	zero,-64(s0)
	sh	zero,-60(s0)
	.loc 2 323 9
	sw	zero,-40(s0)
	.loc 2 324 17
	sw	zero,-44(s0)
	.loc 2 325 21
	sw	zero,-48(s0)
	.loc 2 329 16
	addi	a5,s0,-148
	sw	a5,-76(s0)
	.loc 2 331 13
	sb	zero,-21(s0)
	.loc 2 333 14
	li	a0,5
	call	pvPortMalloc
	sw	a0,-52(s0)
	.loc 2 334 8
	lw	a5,-52(s0)
	bne	a5,zero,.L52
.LBB52:
.LBB53:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE53:
.LBE52:
	.loc 2 335 16 discriminator 1
	beq	a5,zero,.L54
	.loc 2 335 94 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L55
.L54:
	.loc 2 335 123 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L55:
	.loc 2 335 16 discriminator 7
	li	a4,335
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	bl_printk
	j	.L51
.L52:
	.loc 2 339 12
	sw	zero,-20(s0)
	.loc 2 339 5
	j	.L57
.L161:
	.loc 2 340 9
	addi	a5,s0,-68
	li	a2,10
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 341 9
	addi	a4,s0,-68
	lw	a2,-20(s0)
	lui	a5,%hi(.LC4)
	addi	a1,a5,%lo(.LC4)
	mv	a0,a4
	call	sprintf
	.loc 2 342 19
	addi	a5,s0,-68
	mv	a2,a5
	lw	a1,-168(s0)
	lw	a0,-164(s0)
	call	fdt_subnode_offset
	sw	a0,-28(s0)
	.loc 2 343 12
	lw	a5,-28(s0)
	blt	a5,zero,.L162
	.loc 2 348 22
	lui	a5,%hi(.LC5)
	addi	a2,a5,%lo(.LC5)
	lw	a1,-28(s0)
	lw	a0,-164(s0)
	call	fdt_stringlist_count
	sw	a0,-40(s0)
	.loc 2 349 12
	lw	a4,-40(s0)
	li	a5,1
	beq	a4,a5,.L60
.LBB54:
.LBB55:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE55:
.LBE54:
	.loc 2 350 20 discriminator 1
	beq	a5,zero,.L62
	.loc 2 350 126 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L63
.L62:
	.loc 2 350 155 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L63:
	.loc 2 350 20 discriminator 7
	lw	a6,-40(s0)
	lw	a5,-20(s0)
	li	a4,350
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	bl_printk
	.loc 2 351 13
	j	.L59
.L60:
	.loc 2 353 18
	addi	a5,s0,-56
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC5)
	addi	a2,a5,%lo(.LC5)
	lw	a1,-28(s0)
	lw	a0,-164(s0)
	call	fdt_stringlist_get
	sw	a0,-44(s0)
	.loc 2 354 21
	lw	a4,-56(s0)
	.loc 2 354 12
	li	a5,4
	bne	a4,a5,.L64
	.loc 2 354 31 discriminator 1
	li	a2,4
	lw	a1,-44(s0)
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	memcmp
	mv	a5,a0
	.loc 2 354 27 discriminator 2
	beq	a5,zero,.L65
.L64:
.LBB56:
.LBB57:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE57:
.LBE56:
	.loc 2 355 20 discriminator 1
	beq	a5,zero,.L67
	.loc 2 355 108 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L68
.L67:
	.loc 2 355 137 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L68:
	.loc 2 355 20 discriminator 7
	lw	a6,-44(s0)
	lw	a5,-20(s0)
	li	a4,355
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	bl_printk
	.loc 2 356 13
	j	.L59
.L65:
	.loc 2 359 22
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lw	a1,-28(s0)
	lw	a0,-164(s0)
	call	fdt_stringlist_count
	sw	a0,-40(s0)
	.loc 2 360 12
	lw	a4,-40(s0)
	li	a5,1
	beq	a4,a5,.L69
.LBB58:
.LBB59:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE59:
.LBE58:
	.loc 2 361 20 discriminator 1
	beq	a5,zero,.L71
	.loc 2 361 127 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L72
.L71:
	.loc 2 361 156 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L72:
	.loc 2 361 20 discriminator 7
	lw	a6,-40(s0)
	lw	a5,-20(s0)
	li	a4,361
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	lui	a0,%hi(.LC11)
	addi	a0,a0,%lo(.LC11)
	call	bl_printk
	.loc 2 362 13
	j	.L59
.L69:
	.loc 2 364 18
	addi	a5,s0,-56
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lw	a1,-28(s0)
	lw	a0,-164(s0)
	call	fdt_stringlist_get
	sw	a0,-44(s0)
	.loc 2 365 21
	lw	a4,-56(s0)
	.loc 2 365 12
	li	a5,6
	bne	a4,a5,.L73
	.loc 2 365 31 discriminator 1
	li	a2,6
	lw	a1,-44(s0)
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	memcmp
	mv	a5,a0
	.loc 2 365 27 discriminator 2
	beq	a5,zero,.L74
.L73:
.LBB60:
.LBB61:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE61:
.LBE60:
	.loc 2 366 20 discriminator 1
	beq	a5,zero,.L76
	.loc 2 366 109 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L77
.L76:
	.loc 2 366 138 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L77:
	.loc 2 366 20 discriminator 7
	lw	a6,-44(s0)
	lw	a5,-20(s0)
	li	a4,366
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	call	bl_printk
	.loc 2 367 13
	j	.L59
.L74:
	.loc 2 370 22
	lui	a5,%hi(.LC14)
	addi	a2,a5,%lo(.LC14)
	lw	a1,-28(s0)
	lw	a0,-164(s0)
	call	fdt_stringlist_count
	sw	a0,-40(s0)
	.loc 2 371 12
	lw	a4,-40(s0)
	li	a5,1
	beq	a4,a5,.L78
.LBB62:
.LBB63:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE63:
.LBE62:
	.loc 2 372 20 discriminator 1
	beq	a5,zero,.L80
	.loc 2 372 113 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L81
.L80:
	.loc 2 372 142 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L81:
	.loc 2 372 20 discriminator 7
	lw	a6,-40(s0)
	lw	a5,-20(s0)
	li	a4,372
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	call	bl_printk
	.loc 2 373 13
	j	.L59
.L78:
	.loc 2 375 18
	addi	a5,s0,-56
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC14)
	addi	a2,a5,%lo(.LC14)
	lw	a1,-28(s0)
	lw	a0,-164(s0)
	call	fdt_stringlist_get
	sw	a0,-44(s0)
	.loc 2 376 21
	lw	a4,-56(s0)
	.loc 2 376 12
	li	a5,10
	bne	a4,a5,.L82
	.loc 2 376 32 discriminator 1
	li	a2,10
	lw	a1,-44(s0)
	lui	a5,%hi(.LC16)
	addi	a0,a5,%lo(.LC16)
	call	memcmp
	mv	a5,a0
	.loc 2 376 28 discriminator 2
	beq	a5,zero,.L83
.L82:
.LBB64:
.LBB65:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE65:
.LBE64:
	.loc 2 377 20 discriminator 1
	beq	a5,zero,.L85
	.loc 2 377 112 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L86
.L85:
	.loc 2 377 141 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L86:
	.loc 2 377 20 discriminator 7
	lw	a6,-44(s0)
	lw	a5,-20(s0)
	li	a4,377
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	lui	a0,%hi(.LC17)
	addi	a0,a0,%lo(.LC17)
	call	bl_printk
	.loc 2 378 13
	j	.L59
.L83:
	.loc 2 381 21
	addi	a5,s0,-56
	mv	a3,a5
	lui	a5,%hi(.LC18)
	addi	a2,a5,%lo(.LC18)
	lw	a1,-28(s0)
	lw	a0,-164(s0)
	call	fdt_getprop
	sw	a0,-48(s0)
	.loc 2 382 12
	lw	a5,-48(s0)
	bne	a5,zero,.L87
.LBB66:
.LBB67:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE67:
.LBE66:
	.loc 2 383 20 discriminator 1
	beq	a5,zero,.L89
	.loc 2 383 107 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L90
.L89:
	.loc 2 383 136 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L90:
	.loc 2 383 20 discriminator 7
	lw	a5,-20(s0)
	li	a4,383
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	lui	a0,%hi(.LC19)
	addi	a0,a0,%lo(.LC19)
	call	bl_printk
	.loc 2 384 13
	j	.L59
.L87:
	.loc 2 386 37
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 2 386 24 discriminator 1
	andi	a5,a5,0xff
	sb	a5,-72(s0)
.LBB68:
.LBB69:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE69:
.LBE68:
	.loc 2 387 16 discriminator 1
	beq	a5,zero,.L92
	.loc 2 387 111 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L93
.L92:
	.loc 2 387 140 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L93:
	.loc 2 387 217 discriminator 7
	lbu	a5,-72(s0)
	.loc 2 387 16 discriminator 7
	mv	a6,a5
	lw	a5,-20(s0)
	li	a4,387
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC20)
	addi	a2,a2,%lo(.LC20)
	lui	a0,%hi(.LC21)
	addi	a0,a0,%lo(.LC21)
	call	bl_printk
	.loc 2 389 18
	addi	a5,s0,-56
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC22)
	addi	a2,a5,%lo(.LC22)
	lw	a1,-28(s0)
	lw	a0,-164(s0)
	call	fdt_stringlist_get
	sw	a0,-44(s0)
	.loc 2 390 21
	lw	a4,-56(s0)
	.loc 2 390 12
	li	a5,4
	bne	a4,a5,.L94
	.loc 2 390 31 discriminator 1
	li	a2,4
	lw	a1,-44(s0)
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	memcmp
	mv	a5,a0
	.loc 2 390 27 discriminator 2
	bne	a5,zero,.L94
.LBB70:
.LBB71:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE71:
.LBE70:
	.loc 2 391 20 discriminator 1
	beq	a5,zero,.L96
	.loc 2 391 108 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L97
.L96:
	.loc 2 391 137 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L97:
	.loc 2 391 20 discriminator 7
	lw	a6,-44(s0)
	lw	a5,-20(s0)
	li	a4,391
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	bl_printk
	.loc 2 392 31
	lbu	a5,-21(s0)
	addi	a4,a5,1
	sb	a4,-21(s0)
	mv	a4,a5
	.loc 2 392 19
	lw	a5,-52(s0)
	add	a5,a5,a4
	.loc 2 392 43
	lbu	a4,-72(s0)
	.loc 2 392 35
	sb	a4,0(a5)
.L94:
	.loc 2 395 19
	lui	a5,%hi(.LC12)
	addi	a2,a5,%lo(.LC12)
	lw	a1,-28(s0)
	lw	a0,-164(s0)
	call	fdt_subnode_offset
	sw	a0,-32(s0)
	.loc 2 396 12
	lw	a5,-32(s0)
	bgt	a5,zero,.L98
.LBB72:
.LBB73:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE73:
.LBE72:
	.loc 2 397 20 discriminator 1
	beq	a5,zero,.L100
	.loc 2 397 108 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L101
.L100:
	.loc 2 397 137 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L101:
	.loc 2 397 20 discriminator 7
	li	a4,397
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lui	a5,%hi(.LC23)
	addi	a0,a5,%lo(.LC23)
	call	bl_printk
	.loc 2 398 13
	j	.L59
.L98:
	.loc 2 400 21
	addi	a5,s0,-56
	mv	a3,a5
	lui	a5,%hi(.LC24)
	addi	a2,a5,%lo(.LC24)
	lw	a1,-32(s0)
	lw	a0,-164(s0)
	call	fdt_getprop
	sw	a0,-48(s0)
	.loc 2 401 12
	lw	a5,-48(s0)
	bne	a5,zero,.L102
.LBB74:
.LBB75:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE75:
.LBE74:
	.loc 2 402 20 discriminator 1
	beq	a5,zero,.L104
	.loc 2 402 103 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L105
.L104:
	.loc 2 402 132 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L105:
	.loc 2 402 20 discriminator 7
	li	a4,402
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lui	a5,%hi(.LC25)
	addi	a0,a5,%lo(.LC25)
	call	bl_printk
	.loc 2 403 13
	j	.L59
.L102:
	.loc 2 405 50
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 2 405 9 discriminator 1
	mv	a1,a5
	lui	a5,%hi(.LC26)
	addi	a0,a5,%lo(.LC26)
	call	printf
	.loc 2 406 62
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a4,a0
	.loc 2 406 32 discriminator 1
	lw	a5,-76(s0)
	.loc 2 406 49 discriminator 1
	sw	a4,52(a5)
	.loc 2 409 19
	lui	a5,%hi(.LC27)
	addi	a2,a5,%lo(.LC27)
	lw	a1,-32(s0)
	lw	a0,-164(s0)
	call	fdt_subnode_offset
	sw	a0,-36(s0)
	.loc 2 410 12
	lw	a5,-36(s0)
	bgt	a5,zero,.L106
.LBB76:
.LBB77:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE77:
.LBE76:
	.loc 2 411 20 discriminator 1
	beq	a5,zero,.L108
	.loc 2 411 125 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L109
.L108:
	.loc 2 411 154 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L109:
	.loc 2 411 20 discriminator 7
	lw	a5,-20(s0)
	li	a4,411
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	lui	a0,%hi(.LC28)
	addi	a0,a0,%lo(.LC28)
	call	bl_printk
	.loc 2 412 13
	j	.L59
.L106:
	.loc 2 414 21
	addi	a5,s0,-56
	mv	a3,a5
	lui	a5,%hi(.LC29)
	addi	a2,a5,%lo(.LC29)
	lw	a1,-36(s0)
	lw	a0,-164(s0)
	call	fdt_getprop
	sw	a0,-48(s0)
	.loc 2 415 12
	lw	a5,-48(s0)
	bne	a5,zero,.L110
.LBB78:
.LBB79:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE79:
.LBE78:
	.loc 2 416 20 discriminator 1
	beq	a5,zero,.L112
	.loc 2 416 107 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L113
.L112:
	.loc 2 416 136 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L113:
	.loc 2 416 20 discriminator 7
	li	a4,416
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lui	a5,%hi(.LC30)
	addi	a0,a5,%lo(.LC30)
	call	bl_printk
	.loc 2 417 13
	j	.L59
.L110:
	.loc 2 419 74
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a4,a0
	.loc 2 419 32 discriminator 1
	lw	a5,-76(s0)
	.loc 2 419 61 discriminator 1
	sw	a4,16(a5)
	.loc 2 421 21
	addi	a5,s0,-56
	mv	a3,a5
	lui	a5,%hi(.LC31)
	addi	a2,a5,%lo(.LC31)
	lw	a1,-36(s0)
	lw	a0,-164(s0)
	call	fdt_getprop
	sw	a0,-48(s0)
	.loc 2 422 12
	lw	a5,-48(s0)
	bne	a5,zero,.L114
.LBB80:
.LBB81:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE81:
.LBE80:
	.loc 2 423 20 discriminator 1
	beq	a5,zero,.L116
	.loc 2 423 105 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L117
.L116:
	.loc 2 423 134 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L117:
	.loc 2 423 20 discriminator 7
	li	a4,423
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lui	a5,%hi(.LC32)
	addi	a0,a5,%lo(.LC32)
	call	bl_printk
	.loc 2 424 13
	j	.L59
.L114:
	.loc 2 426 72
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a4,a0
	.loc 2 426 32 discriminator 1
	lw	a5,-76(s0)
	.loc 2 426 59 discriminator 1
	sw	a4,20(a5)
	.loc 2 428 21
	addi	a5,s0,-56
	mv	a3,a5
	lui	a5,%hi(.LC33)
	addi	a2,a5,%lo(.LC33)
	lw	a1,-36(s0)
	lw	a0,-164(s0)
	call	fdt_getprop
	sw	a0,-48(s0)
	.loc 2 429 12
	lw	a5,-48(s0)
	bne	a5,zero,.L118
.LBB82:
.LBB83:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE83:
.LBE82:
	.loc 2 430 20 discriminator 1
	beq	a5,zero,.L120
	.loc 2 430 111 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L121
.L120:
	.loc 2 430 140 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L121:
	.loc 2 430 20 discriminator 7
	lw	a5,-20(s0)
	li	a4,430
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	lui	a0,%hi(.LC34)
	addi	a0,a0,%lo(.LC34)
	call	bl_printk
	.loc 2 431 13
	j	.L59
.L118:
	.loc 2 433 66
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a4,a0
	.loc 2 433 32 discriminator 1
	lw	a5,-76(s0)
	.loc 2 433 53 discriminator 1
	sw	a4,24(a5)
	.loc 2 436 19
	lui	a5,%hi(.LC35)
	addi	a2,a5,%lo(.LC35)
	lw	a1,-32(s0)
	lw	a0,-164(s0)
	call	fdt_subnode_offset
	sw	a0,-36(s0)
	.loc 2 437 12
	lw	a5,-36(s0)
	bgt	a5,zero,.L122
.LBB84:
.LBB85:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE85:
.LBE84:
	.loc 2 438 20 discriminator 1
	beq	a5,zero,.L124
	.loc 2 438 115 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L125
.L124:
	.loc 2 438 144 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L125:
	.loc 2 438 20 discriminator 7
	li	a4,438
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lui	a5,%hi(.LC36)
	addi	a0,a5,%lo(.LC36)
	call	bl_printk
.L122:
	.loc 2 440 21
	addi	a5,s0,-56
	mv	a3,a5
	lui	a5,%hi(.LC29)
	addi	a2,a5,%lo(.LC29)
	lw	a1,-36(s0)
	lw	a0,-164(s0)
	call	fdt_getprop
	sw	a0,-48(s0)
	.loc 2 441 12
	lw	a5,-48(s0)
	bne	a5,zero,.L126
.LBB86:
.LBB87:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE87:
.LBE86:
	.loc 2 442 20 discriminator 1
	beq	a5,zero,.L128
	.loc 2 442 110 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L129
.L128:
	.loc 2 442 139 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L129:
	.loc 2 442 20 discriminator 7
	li	a4,442
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lui	a5,%hi(.LC37)
	addi	a0,a5,%lo(.LC37)
	call	bl_printk
	.loc 2 443 13
	j	.L59
.L126:
	.loc 2 445 73
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a4,a0
	.loc 2 445 32 discriminator 1
	lw	a5,-76(s0)
	.loc 2 445 60 discriminator 1
	sw	a4,28(a5)
	.loc 2 447 21
	addi	a5,s0,-56
	mv	a3,a5
	lui	a5,%hi(.LC31)
	addi	a2,a5,%lo(.LC31)
	lw	a1,-36(s0)
	lw	a0,-164(s0)
	call	fdt_getprop
	sw	a0,-48(s0)
	.loc 2 448 12
	lw	a5,-48(s0)
	bne	a5,zero,.L130
.LBB88:
.LBB89:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE89:
.LBE88:
	.loc 2 449 20 discriminator 1
	beq	a5,zero,.L132
	.loc 2 449 108 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L133
.L132:
	.loc 2 449 137 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L133:
	.loc 2 449 20 discriminator 7
	li	a4,449
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lui	a5,%hi(.LC38)
	addi	a0,a5,%lo(.LC38)
	call	bl_printk
	.loc 2 450 13
	j	.L59
.L130:
	.loc 2 452 71
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a4,a0
	.loc 2 452 32 discriminator 1
	lw	a5,-76(s0)
	.loc 2 452 58 discriminator 1
	sw	a4,32(a5)
	.loc 2 454 21
	addi	a5,s0,-56
	mv	a3,a5
	lui	a5,%hi(.LC33)
	addi	a2,a5,%lo(.LC33)
	lw	a1,-36(s0)
	lw	a0,-164(s0)
	call	fdt_getprop
	sw	a0,-48(s0)
	.loc 2 455 12
	lw	a5,-48(s0)
	bne	a5,zero,.L134
.LBB90:
.LBB91:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE91:
.LBE90:
	.loc 2 456 20 discriminator 1
	beq	a5,zero,.L136
	.loc 2 456 110 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L137
.L136:
	.loc 2 456 139 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L137:
	.loc 2 456 20 discriminator 7
	lw	a5,-20(s0)
	li	a4,456
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	lui	a0,%hi(.LC39)
	addi	a0,a0,%lo(.LC39)
	call	bl_printk
	.loc 2 457 13
	j	.L59
.L134:
	.loc 2 459 65
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a4,a0
	.loc 2 459 32 discriminator 1
	lw	a5,-76(s0)
	.loc 2 459 52 discriminator 1
	sw	a4,36(a5)
	.loc 2 462 19
	lui	a5,%hi(.LC40)
	addi	a2,a5,%lo(.LC40)
	lw	a1,-32(s0)
	lw	a0,-164(s0)
	call	fdt_subnode_offset
	sw	a0,-36(s0)
	.loc 2 463 12
	lw	a5,-36(s0)
	bgt	a5,zero,.L138
.LBB92:
.LBB93:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE93:
.LBE92:
	.loc 2 464 20 discriminator 1
	beq	a5,zero,.L140
	.loc 2 464 115 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L141
.L140:
	.loc 2 464 144 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L141:
	.loc 2 464 20 discriminator 7
	li	a4,464
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lui	a5,%hi(.LC36)
	addi	a0,a5,%lo(.LC36)
	call	bl_printk
.L138:
	.loc 2 466 21
	addi	a5,s0,-56
	mv	a3,a5
	lui	a5,%hi(.LC29)
	addi	a2,a5,%lo(.LC29)
	lw	a1,-36(s0)
	lw	a0,-164(s0)
	call	fdt_getprop
	sw	a0,-48(s0)
	.loc 2 467 12
	lw	a5,-48(s0)
	bne	a5,zero,.L142
.LBB94:
.LBB95:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE95:
.LBE94:
	.loc 2 468 20 discriminator 1
	beq	a5,zero,.L144
	.loc 2 468 110 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L145
.L144:
	.loc 2 468 139 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L145:
	.loc 2 468 20 discriminator 7
	li	a4,468
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lui	a5,%hi(.LC37)
	addi	a0,a5,%lo(.LC37)
	call	bl_printk
	.loc 2 469 13
	j	.L59
.L142:
	.loc 2 471 71
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a4,a0
	.loc 2 471 32 discriminator 1
	lw	a5,-76(s0)
	.loc 2 471 58 discriminator 1
	sw	a4,40(a5)
	.loc 2 473 21
	addi	a5,s0,-56
	mv	a3,a5
	lui	a5,%hi(.LC33)
	addi	a2,a5,%lo(.LC33)
	lw	a1,-36(s0)
	lw	a0,-164(s0)
	call	fdt_getprop
	sw	a0,-48(s0)
	.loc 2 474 12
	lw	a5,-48(s0)
	bne	a5,zero,.L146
.LBB96:
.LBB97:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE97:
.LBE96:
	.loc 2 475 20 discriminator 1
	beq	a5,zero,.L148
	.loc 2 475 109 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L149
.L148:
	.loc 2 475 138 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L149:
	.loc 2 475 20 discriminator 7
	li	a4,475
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lui	a5,%hi(.LC41)
	addi	a0,a5,%lo(.LC41)
	call	bl_printk
	.loc 2 476 13
	j	.L59
.L146:
	.loc 2 478 69
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a4,a0
	.loc 2 478 32 discriminator 1
	lw	a5,-76(s0)
	.loc 2 478 56 discriminator 1
	sw	a4,44(a5)
	.loc 2 480 22
	lui	a5,%hi(.LC42)
	addi	a2,a5,%lo(.LC42)
	lw	a1,-32(s0)
	lw	a0,-164(s0)
	call	fdt_stringlist_count
	sw	a0,-40(s0)
	.loc 2 481 12
	lw	a4,-40(s0)
	li	a5,1
	bne	a4,a5,.L163
	.loc 2 485 18
	addi	a5,s0,-56
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC42)
	addi	a2,a5,%lo(.LC42)
	lw	a1,-32(s0)
	lw	a0,-164(s0)
	call	fdt_stringlist_get
	sw	a0,-44(s0)
	.loc 2 486 20
	lw	a4,-56(s0)
	.loc 2 486 12
	li	a5,2
	beq	a4,a5,.L151
.LBB98:
.LBB99:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE99:
.LBE98:
	.loc 2 487 20 discriminator 1
	beq	a5,zero,.L153
	.loc 2 487 112 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L154
.L153:
	.loc 2 487 141 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L154:
	.loc 2 487 20 discriminator 7
	lw	a6,-44(s0)
	lw	a5,-20(s0)
	li	a4,487
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	lui	a0,%hi(.LC43)
	addi	a0,a0,%lo(.LC43)
	call	bl_printk
	.loc 2 488 13
	j	.L59
.L151:
	.loc 2 490 13
	li	a2,2
	lw	a1,-44(s0)
	lui	a5,%hi(.LC44)
	addi	a0,a5,%lo(.LC44)
	call	memcmp
	mv	a5,a0
	.loc 2 490 12 discriminator 1
	bne	a5,zero,.L155
	.loc 2 491 36
	lw	a5,-76(s0)
	.loc 2 491 55
	li	a4,1
	sw	a4,56(a5)
	j	.L156
.L155:
	.loc 2 492 20
	li	a2,2
	lw	a1,-44(s0)
	lui	a5,%hi(.LC45)
	addi	a0,a5,%lo(.LC45)
	call	memcmp
	mv	a5,a0
	.loc 2 492 19 discriminator 1
	bne	a5,zero,.L164
	.loc 2 493 36
	lw	a5,-76(s0)
	.loc 2 493 55
	sw	zero,56(a5)
.L156:
.LBB100:
.LBB101:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE101:
.LBE100:
	.loc 2 497 16 discriminator 1
	beq	a5,zero,.L159
	.loc 2 497 108 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L160
.L159:
	.loc 2 497 137 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L160:
	.loc 2 497 231 discriminator 7
	lw	a5,-76(s0)
	.loc 2 497 16 discriminator 7
	lw	a5,56(a5)
	mv	a6,a5
	lw	a5,-20(s0)
	li	a4,497
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC20)
	addi	a2,a2,%lo(.LC20)
	lui	a0,%hi(.LC46)
	addi	a0,a0,%lo(.LC46)
	call	bl_printk
	.loc 2 499 9
	addi	a5,s0,-84
	mv	a0,a5
	call	hal_button_register_handler_with_dts
	j	.L59
.L162:
	.loc 2 345 13
	nop
	j	.L59
.L163:
	.loc 2 483 13
	nop
	j	.L59
.L164:
	.loc 2 495 13
	nop
.L59:
	.loc 2 339 25 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L57:
	.loc 2 339 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,4
	ble	a4,a5,.L161
	.loc 2 502 5
	lbu	a5,-21(s0)
	li	a4,0
	mv	a3,a5
	lw	a2,-52(s0)
	li	a1,502
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	log_buf_out
	.loc 2 503 5
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	hal_hbn_init
	.loc 2 504 5
	lw	a0,-52(s0)
	call	vPortFree
.L51:
	.loc 2 505 1
	lw	ra,172(sp)
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE47:
	.size	fdt_button_module_init, .-fdt_button_module_init
	.text
.Letext0:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/timers.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_gpio.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_gpio.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_hbn.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/yloop.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa90
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1b
	.4byte	.LASF110
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x1d
	.byte	0x4
	.uleb128 0x9
	.4byte	0x84
	.uleb128 0x6
	.4byte	0x95
	.uleb128 0x12
	.4byte	0x8b
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x9
	.4byte	0x95
	.uleb128 0x6
	.4byte	0x9c
	.uleb128 0x9
	.4byte	0xa1
	.uleb128 0x12
	.4byte	0xa1
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x47
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x5
	.byte	0x31
	.byte	0x1c
	.4byte	0x40
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0x9
	.4byte	0xd4
	.uleb128 0x6
	.4byte	0xea
	.uleb128 0x1e
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x1
	.byte	0x63
	.byte	0x12
	.4byte	0xd4
	.uleb128 0x6
	.4byte	0xfc
	.uleb128 0x13
	.4byte	0x107
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x3
	.byte	0x3f
	.byte	0x11
	.4byte	0xb0
	.uleb128 0x9
	.4byte	0x107
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x3
	.byte	0x40
	.byte	0x12
	.4byte	0xd4
	.uleb128 0x9
	.4byte	0x118
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0xd4
	.uleb128 0x9
	.4byte	0x129
	.uleb128 0x1f
	.4byte	.LASF111
	.byte	0x3
	.byte	0x5c
	.byte	0x13
	.4byte	0x107
	.uleb128 0x6
	.4byte	0xbc
	.uleb128 0x20
	.4byte	.LASF112
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x6
	.byte	0x55
	.byte	0xe
	.4byte	0x170
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x6
	.byte	0x59
	.byte	0x3
	.4byte	0x14b
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x7
	.byte	0x4d
	.byte	0x22
	.4byte	0x18d
	.uleb128 0x9
	.4byte	0x17c
	.uleb128 0x6
	.4byte	0x192
	.uleb128 0x21
	.4byte	.LASF113
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x7
	.byte	0x52
	.byte	0x10
	.4byte	0x1a3
	.uleb128 0x6
	.4byte	0x1a8
	.uleb128 0x13
	.4byte	0x1b3
	.uleb128 0x1
	.4byte	0x17c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x10
	.byte	0x8
	.byte	0x22
	.4byte	0x20e
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x8
	.byte	0x23
	.byte	0x1c
	.4byte	0x20e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x8
	.byte	0x24
	.byte	0xc
	.4byte	0xf7
	.byte	0x4
	.uleb128 0x22
	.string	"arg"
	.byte	0x8
	.byte	0x25
	.byte	0xb
	.4byte	0x84
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x27
	.byte	0xd
	.4byte	0xbc
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x8
	.byte	0x28
	.byte	0xd
	.4byte	0xbc
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x8
	.byte	0x29
	.byte	0xd
	.4byte	0xbc
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.4byte	0x1b3
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0x8
	.byte	0x2a
	.byte	0x3
	.4byte	0x1b3
	.uleb128 0x15
	.4byte	0x32
	.byte	0x23
	.4byte	0x242
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.4byte	0x32
	.byte	0x2a
	.4byte	0x259
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x40
	.byte	0x2
	.byte	0x39
	.4byte	0x336
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x2
	.byte	0x3a
	.byte	0xb
	.4byte	0x84
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x2
	.byte	0x3b
	.byte	0x13
	.4byte	0x17c
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x2
	.byte	0x3d
	.byte	0x9
	.4byte	0x63
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x2
	.byte	0x3e
	.byte	0x9
	.4byte	0x63
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x2
	.byte	0x40
	.byte	0x9
	.4byte	0x63
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x2
	.byte	0x41
	.byte	0x9
	.4byte	0x63
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x2
	.byte	0x42
	.byte	0x9
	.4byte	0x63
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x2
	.byte	0x44
	.byte	0x9
	.4byte	0x63
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x2
	.byte	0x45
	.byte	0x9
	.4byte	0x63
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x2
	.byte	0x46
	.byte	0x9
	.4byte	0x63
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x2
	.byte	0x48
	.byte	0x9
	.4byte	0x63
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x2
	.byte	0x49
	.byte	0x9
	.4byte	0x63
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x2
	.byte	0x4a
	.byte	0x9
	.4byte	0x63
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x2
	.byte	0x4c
	.byte	0x9
	.4byte	0x63
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x2
	.byte	0x4d
	.byte	0x9
	.4byte	0x63
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x2
	.byte	0x4e
	.byte	0x9
	.4byte	0x63
	.byte	0x3c
	.byte	0
	.uleb128 0x5
	.4byte	.LASF57
	.byte	0x2
	.byte	0x4f
	.byte	0x3
	.4byte	0x259
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0xe
	.byte	0xa4
	.4byte	0x353
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0xa
	.byte	0x21
	.byte	0x5
	.4byte	0x63
	.4byte	0x36e
	.uleb128 0x1
	.4byte	0x146
	.uleb128 0x1
	.4byte	0xbc
	.byte	0
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x6
	.byte	0x9c
	.byte	0x5
	.4byte	0x63
	.4byte	0x398
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0xe5
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x170
	.byte	0
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0xb
	.byte	0xce
	.byte	0x5
	.4byte	0x63
	.4byte	0x3af
	.uleb128 0x1
	.4byte	0xab
	.uleb128 0xe
	.byte	0
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0xc
	.2byte	0x311
	.byte	0xd
	.4byte	0xe5
	.4byte	0x3d5
	.uleb128 0x1
	.4byte	0xe5
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0x3d5
	.byte	0
	.uleb128 0x6
	.4byte	0x63
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0xd
	.byte	0x1e
	.byte	0x5
	.4byte	0x63
	.4byte	0x3fa
	.uleb128 0x1
	.4byte	0xe5
	.uleb128 0x1
	.4byte	0xe5
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0xc
	.2byte	0x470
	.byte	0xd
	.4byte	0xa1
	.4byte	0x425
	.uleb128 0x1
	.4byte	0xe5
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x3d5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0xc
	.2byte	0x440
	.byte	0x5
	.4byte	0x63
	.4byte	0x446
	.uleb128 0x1
	.4byte	0xe5
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0xc
	.2byte	0x1de
	.byte	0x5
	.4byte	0x63
	.4byte	0x467
	.uleb128 0x1
	.4byte	0xe5
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0xd
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x487
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x6
	.byte	0x9e
	.4byte	0x499
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0xe
	.byte	0
	.uleb128 0x16
	.4byte	.LASF75
	.2byte	0x54c
	.4byte	0x129
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x9
	.byte	0x2f
	.byte	0x5
	.4byte	0x63
	.4byte	0x4ce
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x8
	.byte	0x2d
	.byte	0x5
	.4byte	0x63
	.4byte	0x4ee
	.uleb128 0x1
	.4byte	0xbc
	.uleb128 0x1
	.4byte	0xbc
	.uleb128 0x1
	.4byte	0xbc
	.byte	0
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x7
	.byte	0xe4
	.byte	0x10
	.4byte	0x17c
	.4byte	0x518
	.uleb128 0x1
	.4byte	0xa6
	.uleb128 0x1
	.4byte	0x135
	.uleb128 0x1
	.4byte	0x124
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0x197
	.byte	0
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0xb
	.byte	0xfa
	.byte	0x5
	.4byte	0x63
	.4byte	0x534
	.uleb128 0x1
	.4byte	0x90
	.uleb128 0x1
	.4byte	0xab
	.uleb128 0xe
	.byte	0
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0xd
	.byte	0x29
	.byte	0x8
	.4byte	0x71
	.4byte	0x54a
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0xe
	.byte	0xa3
	.byte	0x7
	.4byte	0x84
	.4byte	0x560
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0x23
	.4byte	.LASF114
	.byte	0xf
	.2byte	0x97c
	.byte	0x7
	.uleb128 0x16
	.4byte	.LASF76
	.2byte	0x55d
	.4byte	0x129
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x10
	.byte	0x97
	.byte	0x5
	.4byte	0x63
	.4byte	0x594
	.uleb128 0x1
	.4byte	0xc8
	.uleb128 0x1
	.4byte	0xc8
	.uleb128 0x1
	.4byte	0x4e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x182
	.byte	0x7
	.4byte	0x84
	.4byte	0x5ab
	.uleb128 0x1
	.4byte	0x188
	.byte	0
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x510
	.byte	0xc
	.4byte	0x107
	.4byte	0x5d6
	.uleb128 0x1
	.4byte	0x17c
	.uleb128 0x1
	.4byte	0x113
	.uleb128 0x1
	.4byte	0x135
	.uleb128 0x1
	.4byte	0x5db
	.uleb128 0x1
	.4byte	0x135
	.byte	0
	.uleb128 0x6
	.4byte	0x107
	.uleb128 0x9
	.4byte	0x5d6
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x8
	.byte	0x32
	.4byte	0x5f6
	.uleb128 0x1
	.4byte	0xbc
	.uleb128 0x1
	.4byte	0xbc
	.byte	0
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x8
	.byte	0x30
	.byte	0x5
	.4byte	0x63
	.4byte	0x60c
	.uleb128 0x1
	.4byte	0xbc
	.byte	0
	.uleb128 0x24
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x13a
	.byte	0x6
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x898
	.uleb128 0x25
	.string	"fdt"
	.byte	0x2
	.2byte	0x13a
	.byte	0x29
	.4byte	0xe5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0xf
	.4byte	.LASF82
	.2byte	0x13a
	.byte	0x32
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x4
	.4byte	.LASF83
	.2byte	0x13d
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF84
	.2byte	0x13e
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF85
	.2byte	0x13f
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.string	"i"
	.2byte	0x140
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF86
	.2byte	0x141
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF87
	.2byte	0x142
	.byte	0xa
	.4byte	0x898
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF88
	.2byte	0x143
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF89
	.2byte	0x144
	.byte	0x11
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF90
	.2byte	0x145
	.byte	0x15
	.4byte	0x8a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF91
	.2byte	0x146
	.byte	0x10
	.4byte	0x213
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x4
	.4byte	.LASF92
	.2byte	0x147
	.byte	0x12
	.4byte	0x336
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x4
	.4byte	.LASF93
	.2byte	0x14a
	.byte	0xe
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF94
	.2byte	0x14b
	.byte	0xd
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.2byte	0x14f
	.byte	0x43
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.2byte	0x15e
	.byte	0x63
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.2byte	0x163
	.byte	0x51
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.2byte	0x169
	.byte	0x64
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.2byte	0x16e
	.byte	0x52
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.2byte	0x174
	.byte	0x56
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.2byte	0x179
	.byte	0x55
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.2byte	0x17f
	.byte	0x50
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.2byte	0x183
	.byte	0x54
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.2byte	0x187
	.byte	0x51
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.2byte	0x18d
	.byte	0x51
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.2byte	0x192
	.byte	0x4c
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.2byte	0x19b
	.byte	0x62
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.2byte	0x1a0
	.byte	0x50
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.2byte	0x1a7
	.byte	0x4e
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.2byte	0x1ae
	.byte	0x54
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.2byte	0x1b6
	.byte	0x58
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.2byte	0x1ba
	.byte	0x53
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.2byte	0x1c1
	.byte	0x51
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.2byte	0x1c8
	.byte	0x53
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.2byte	0x1d0
	.byte	0x58
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.2byte	0x1d4
	.byte	0x53
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.2byte	0x1db
	.byte	0x52
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.2byte	0x1e7
	.byte	0x55
	.uleb128 0x2
	.4byte	0xa62
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.2byte	0x1f1
	.byte	0x51
	.byte	0
	.uleb128 0x18
	.4byte	0x95
	.4byte	0x8a8
	.uleb128 0x19
	.4byte	0x6a
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.4byte	0xe0
	.uleb128 0x26
	.4byte	.LASF106
	.byte	0x2
	.2byte	0x10e
	.byte	0xc
	.4byte	0x63
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x905
	.uleb128 0xf
	.4byte	.LASF95
	.2byte	0x10e
	.byte	0x3d
	.4byte	0x905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF96
	.2byte	0x110
	.byte	0x13
	.4byte	0x90a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF97
	.2byte	0x111
	.byte	0xa
	.4byte	0x90f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF98
	.2byte	0x112
	.byte	0xd
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x6
	.4byte	0x213
	.uleb128 0x6
	.4byte	0x336
	.uleb128 0x18
	.4byte	0x95
	.4byte	0x91f
	.uleb128 0x19
	.4byte	0x6a
	.byte	0x13
	.byte	0
	.uleb128 0x27
	.4byte	.LASF100
	.byte	0x2
	.2byte	0x100
	.byte	0xd
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x963
	.uleb128 0xf
	.4byte	.LASF96
	.2byte	0x100
	.byte	0x29
	.4byte	0x905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.string	"ret"
	.2byte	0x102
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF99
	.2byte	0x103
	.byte	0x10
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0x7d
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9af
	.uleb128 0xc
	.4byte	.LASF102
	.byte	0x7d
	.byte	0x2a
	.4byte	0x17c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.string	"ret"
	.byte	0x7f
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0x80
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.4byte	.LASF96
	.byte	0x81
	.byte	0x13
	.4byte	0x90a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0x70
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d2
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x70
	.byte	0x2f
	.4byte	0x90a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF105
	.byte	0x6b
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f5
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x6b
	.byte	0x2c
	.4byte	0x90a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.4byte	.LASF107
	.byte	0x2
	.byte	0x5f
	.byte	0xc
	.4byte	0x63
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2b
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x5f
	.byte	0x2d
	.4byte	0x90a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.string	"val"
	.byte	0x61
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.4byte	.LASF108
	.byte	0x2
	.byte	0x51
	.byte	0xc
	.4byte	0x63
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa62
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x51
	.byte	0x2a
	.4byte	0x90a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0x53
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF116
	.byte	0x3
	.byte	0xb3
	.byte	0x3a
	.4byte	0x107
	.byte	0x3
	.uleb128 0x2b
	.4byte	.LASF109
	.byte	0x1
	.byte	0x78
	.byte	0x18
	.4byte	0xd4
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.byte	0x78
	.byte	0x2d
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x12
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x21
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
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
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
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
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0x7
	.4byte	.LFB40
	.uleb128 .LFE40-.LFB40
	.byte	0x7
	.4byte	.LFB41
	.uleb128 .LFE41-.LFB41
	.byte	0x7
	.4byte	.LFB42
	.uleb128 .LFE42-.LFB42
	.byte	0x7
	.4byte	.LFB43
	.uleb128 .LFE43-.LFB43
	.byte	0x7
	.4byte	.LFB44
	.uleb128 .LFE44-.LFB44
	.byte	0x7
	.4byte	.LFB45
	.uleb128 .LFE45-.LFB45
	.byte	0x7
	.4byte	.LFB46
	.uleb128 .LFE46-.LFB46
	.byte	0x7
	.4byte	.LFB47
	.uleb128 .LFE47-.LFB47
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"gpio_ctx_t"
.LASF101:
	.string	"button_process"
.LASF89:
	.string	"result"
.LASF69:
	.string	"hal_gpio_register_handler"
.LASF52:
	.string	"longlong_press_ms"
.LASF61:
	.string	"fdt_getprop"
.LASF82:
	.string	"button_offset"
.LASF22:
	.string	"LOG_BUF_OUT_DATA_TYPE_HEX"
.LASF83:
	.string	"offset1"
.LASF84:
	.string	"offset2"
.LASF26:
	.string	"TimerHandle_t"
.LASF51:
	.string	"long_kevent"
.LASF4:
	.string	"short int"
.LASF13:
	.string	"size_t"
.LASF27:
	.string	"TimerCallbackFunction_t"
.LASF30:
	.string	"gpioPin"
.LASF86:
	.string	"lentmp"
.LASF39:
	.string	"GPIO_INT_CONTROL_ASYNC"
.LASF108:
	.string	"accumulate_time"
.LASF41:
	.string	"_button_ctx_desc"
.LASF97:
	.string	"timer_name"
.LASF93:
	.string	"pinbuf"
.LASF78:
	.string	"pvTimerGetTimerID"
.LASF63:
	.string	"fdt_stringlist_get"
.LASF45:
	.string	"timer_count"
.LASF34:
	.string	"GPIO_INT_TRIG_NEG_PULSE"
.LASF50:
	.string	"long_press_end_ms"
.LASF111:
	.string	"TrapNetCounter"
.LASF15:
	.string	"uint8_t"
.LASF71:
	.string	"xTimerCreate"
.LASF23:
	.string	"LOG_BUF_OUT_DATA_TYPE_INT8"
.LASF116:
	.string	"xPortIsInsideInterrupt"
.LASF88:
	.string	"countindex"
.LASF91:
	.string	"stgpio"
.LASF2:
	.string	"signed char"
.LASF113:
	.string	"tmrTimerControl"
.LASF42:
	.string	"private_ctx"
.LASF107:
	.string	"check_button_is_up"
.LASF100:
	.string	"button_callback"
.LASF62:
	.string	"memcmp"
.LASF8:
	.string	"long long int"
.LASF32:
	.string	"intTrgMod"
.LASF94:
	.string	"pinbuf_size"
.LASF12:
	.string	"char"
.LASF70:
	.string	"bl_gpio_enable_input"
.LASF24:
	.string	"LOG_BUF_OUT_DATA_TYPE_UNT8"
.LASF6:
	.string	"long int"
.LASF60:
	.string	"printf"
.LASF7:
	.string	"long unsigned int"
.LASF75:
	.string	"xTaskGetTickCount"
.LASF40:
	.string	"_gpio_ctx_desc"
.LASF96:
	.string	"pstnode"
.LASF37:
	.string	"GPIO_INT_TRIG_POS_LEVEL"
.LASF64:
	.string	"fdt_stringlist_count"
.LASF80:
	.string	"bl_gpio_intmask"
.LASF21:
	.string	"TickType_t"
.LASF11:
	.string	"long double"
.LASF112:
	.string	"LOG_BUF_OUT_DATA_TYPE"
.LASF114:
	.string	"vTaskSwitchContext"
.LASF3:
	.string	"unsigned char"
.LASF72:
	.string	"sprintf"
.LASF25:
	.string	"LOG_BUF_OUT_DATA_TYPE_T"
.LASF55:
	.string	"debounce"
.LASF56:
	.string	"trig_level"
.LASF9:
	.string	"long long unsigned int"
.LASF99:
	.string	"xHigherPriorityTaskWoken"
.LASF17:
	.string	"uint32_t"
.LASF79:
	.string	"xTimerGenericCommand"
.LASF10:
	.string	"unsigned int"
.LASF16:
	.string	"uint16_t"
.LASF19:
	.string	"BaseType_t"
.LASF48:
	.string	"short_kevent"
.LASF87:
	.string	"gpio_node"
.LASF18:
	.string	"fdt32_t"
.LASF43:
	.string	"psttimer_handler"
.LASF38:
	.string	"GPIO_INT_CONTROL_SYNC"
.LASF104:
	.string	"clear_button_states"
.LASF73:
	.string	"strlen"
.LASF14:
	.string	"int32_t"
.LASF90:
	.string	"addr_prop"
.LASF5:
	.string	"short unsigned int"
.LASF105:
	.string	"button_int_umask"
.LASF85:
	.string	"offset3"
.LASF81:
	.string	"bl_gpio_input_get_value"
.LASF92:
	.string	"stbutton"
.LASF58:
	.string	"hal_hbn_init"
.LASF46:
	.string	"short_press_start_ms"
.LASF115:
	.string	"fdt_button_module_init"
.LASF31:
	.string	"intCtrlMod"
.LASF77:
	.string	"aos_post_event"
.LASF59:
	.string	"log_buf_out"
.LASF20:
	.string	"UBaseType_t"
.LASF67:
	.string	"vPortFree"
.LASF36:
	.string	"GPIO_INT_TRIG_NEG_LEVEL"
.LASF29:
	.string	"gpio_handler"
.LASF103:
	.string	"accu_time"
.LASF76:
	.string	"xTaskGetTickCountFromISR"
.LASF54:
	.string	"dlong_entry_count"
.LASF98:
	.string	"level"
.LASF66:
	.string	"memset"
.LASF44:
	.string	"press_stage"
.LASF95:
	.string	"pstgpio"
.LASF68:
	.string	"bl_printk"
.LASF106:
	.string	"hal_button_register_handler_with_dts"
.LASF35:
	.string	"GPIO_INT_TRIG_POS_PULSE"
.LASF109:
	.string	"fdt32_to_cpu"
.LASF53:
	.string	"longlong_kevent"
.LASF47:
	.string	"short_press_end_ms"
.LASF65:
	.string	"fdt_subnode_offset"
.LASF102:
	.string	"pxTimer"
.LASF74:
	.string	"pvPortMalloc"
.LASF49:
	.string	"long_press_start_ms"
.LASF110:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF28:
	.string	"next"
.LASF57:
	.string	"button_ctx_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_button.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
