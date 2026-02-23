	.file	"hal_gpio.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_gpio.c"
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
	.section	.rodata
	.align	2
.LC0:
	.string	"max_num"
	.section	.text._get_gpio_max,"ax",@progbits
	.align	1
	.type	_get_gpio_max, @function
_get_gpio_max:
.LFB40:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_gpio.c"
	.loc 2 64 1
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
	.loc 2 65 9
	sw	zero,-28(s0)
	.loc 2 66 21
	sw	zero,-20(s0)
	.loc 2 69 17
	lw	a4,-40(s0)
	addi	a5,s0,-28
	mv	a3,a5
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	mv	a1,a4
	lw	a0,-36(s0)
	call	fdt_getprop
	sw	a0,-20(s0)
	.loc 2 70 8
	lw	a5,-20(s0)
	bne	a5,zero,.L4
	.loc 2 71 16
	li	a5,-1
	j	.L6
.L4:
	.loc 2 73 26
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	sw	a0,-24(s0)
	.loc 2 74 12
	lw	a5,-24(s0)
.L6:
	.loc 2 75 1
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
	.size	_get_gpio_max, .-_get_gpio_max
	.section	.rodata
	.align	2
.LC1:
	.string	"status"
	.align	2
.LC2:
	.string	"okay"
	.align	2
.LC3:
	.string	"pin"
	.align	2
.LC4:
	.string	"feature"
	.align	2
.LC5:
	.string	"led"
	.align	2
.LC6:
	.string	"active"
	.align	2
.LC7:
	.string	"Hi"
	.align	2
.LC8:
	.string	"Lo"
	.align	2
.LC9:
	.string	"mode"
	.align	2
.LC10:
	.string	"blink"
	.align	2
.LC11:
	.string	"heartbeat"
	.align	2
.LC12:
	.string	"time"
	.section	.text._get_gpio_config,"ax",@progbits
	.align	1
	.type	_get_gpio_config, @function
_get_gpio_config:
.LFB41:
	.loc 2 78 1
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
	.loc 2 80 9
	sw	zero,-32(s0)
	.loc 2 81 21
	sw	zero,-20(s0)
	.loc 2 82 17
	sw	zero,-24(s0)
	.loc 2 95 15
	lw	a5,-40(s0)
	lw	a2,-44(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	fdt_subnode_offset
	sw	a0,-28(s0)
	.loc 2 96 8
	lw	a5,-28(s0)
	bge	a5,zero,.L8
	.loc 2 98 16
	li	a5,-1
	j	.L22
.L8:
	.loc 2 101 5
	li	a2,12
	li	a1,0
	lw	a0,-48(s0)
	call	memset
	.loc 2 102 24
	lw	a5,-48(s0)
	sb	zero,4(a5)
	.loc 2 104 14
	addi	a5,s0,-32
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lw	a1,-28(s0)
	lw	a0,-36(s0)
	call	fdt_stringlist_get
	sw	a0,-24(s0)
	.loc 2 105 17
	lw	a4,-32(s0)
	.loc 2 105 8
	li	a5,4
	bne	a4,a5,.L10
	.loc 2 105 27 discriminator 1
	li	a2,4
	lw	a1,-24(s0)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	memcmp
	mv	a5,a0
	.loc 2 105 23 discriminator 2
	beq	a5,zero,.L11
.L10:
	.loc 2 107 16
	li	a5,0
	j	.L22
.L11:
	.loc 2 110 17
	addi	a5,s0,-32
	mv	a3,a5
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	lw	a1,-28(s0)
	lw	a0,-36(s0)
	call	fdt_getprop
	sw	a0,-20(s0)
	.loc 2 111 8
	lw	a5,-20(s0)
	bne	a5,zero,.L12
	.loc 2 113 16
	li	a5,0
	j	.L22
.L12:
	.loc 2 115 35
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 2 115 25 discriminator 1
	mv	a4,a5
	.loc 2 115 22 discriminator 1
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 2 117 14
	addi	a5,s0,-32
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	lw	a1,-28(s0)
	lw	a0,-36(s0)
	call	fdt_stringlist_get
	sw	a0,-24(s0)
	.loc 2 118 11
	lw	a4,-32(s0)
	.loc 2 118 8
	li	a5,3
	bne	a4,a5,.L13
	.loc 2 118 24 discriminator 1
	li	a2,3
	lw	a1,-24(s0)
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	memcmp
	mv	a5,a0
	.loc 2 118 21 discriminator 2
	bne	a5,zero,.L13
	.loc 2 119 30
	lw	a5,-48(s0)
	sb	zero,5(a5)
	.loc 2 125 14
	addi	a5,s0,-32
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lw	a1,-28(s0)
	lw	a0,-36(s0)
	call	fdt_stringlist_get
	sw	a0,-24(s0)
	.loc 2 126 11
	lw	a4,-32(s0)
	.loc 2 126 8
	li	a5,2
	beq	a4,a5,.L14
	j	.L15
.L13:
	.loc 2 122 16
	li	a5,0
	j	.L22
.L14:
	.loc 2 126 24 discriminator 1
	li	a2,2
	lw	a1,-24(s0)
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	memcmp
	mv	a5,a0
	.loc 2 126 21 discriminator 2
	bne	a5,zero,.L15
	.loc 2 127 29
	lw	a5,-48(s0)
	li	a4,1
	sb	a4,6(a5)
	j	.L16
.L15:
	.loc 2 128 18
	lw	a4,-32(s0)
	.loc 2 128 15
	li	a5,2
	bne	a4,a5,.L17
	.loc 2 128 31 discriminator 1
	li	a2,2
	lw	a1,-24(s0)
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	memcmp
	mv	a5,a0
	.loc 2 128 28 discriminator 2
	bne	a5,zero,.L17
	.loc 2 129 29
	lw	a5,-48(s0)
	sb	zero,6(a5)
	j	.L16
.L17:
	.loc 2 132 16
	li	a5,0
	j	.L22
.L16:
	.loc 2 135 14
	addi	a5,s0,-32
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC9)
	addi	a2,a5,%lo(.LC9)
	lw	a1,-28(s0)
	lw	a0,-36(s0)
	call	fdt_stringlist_get
	sw	a0,-24(s0)
	.loc 2 136 11
	lw	a4,-32(s0)
	.loc 2 136 8
	li	a5,5
	bne	a4,a5,.L18
	.loc 2 136 24 discriminator 1
	li	a2,5
	lw	a1,-24(s0)
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	memcmp
	mv	a5,a0
	.loc 2 136 21 discriminator 2
	bne	a5,zero,.L18
	.loc 2 137 27
	lw	a5,-48(s0)
	sb	zero,7(a5)
	j	.L19
.L18:
	.loc 2 138 18
	lw	a4,-32(s0)
	.loc 2 138 15
	li	a5,9
	bne	a4,a5,.L20
	.loc 2 138 31 discriminator 1
	li	a2,9
	lw	a1,-24(s0)
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	memcmp
	mv	a5,a0
	.loc 2 138 28 discriminator 2
	bne	a5,zero,.L20
	.loc 2 139 27
	lw	a5,-48(s0)
	li	a4,1
	sb	a4,7(a5)
	j	.L19
.L20:
	.loc 2 142 16
	li	a5,0
	j	.L22
.L19:
	.loc 2 145 17
	addi	a5,s0,-32
	mv	a3,a5
	lui	a5,%hi(.LC12)
	addi	a2,a5,%lo(.LC12)
	lw	a1,-28(s0)
	lw	a0,-36(s0)
	call	fdt_getprop
	sw	a0,-20(s0)
	.loc 2 146 8
	lw	a5,-20(s0)
	bne	a5,zero,.L21
	.loc 2 148 16
	li	a5,0
	j	.L22
.L21:
	.loc 2 150 36
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a4,a0
	.loc 2 150 23 discriminator 1
	lw	a5,-48(s0)
	sw	a4,8(a5)
	.loc 2 153 24
	lw	a5,-48(s0)
	li	a4,1
	sb	a4,4(a5)
	.loc 2 155 12
	li	a5,0
.L22:
	.loc 2 156 1
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
	.size	_get_gpio_config, .-_get_gpio_config
	.section	.text._dump_gpio_conf,"ax",@progbits
	.align	1
	.type	_dump_gpio_conf, @function
_dump_gpio_conf:
.LFB42:
	.loc 2 159 1
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
	.loc 2 167 1
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
	.size	_dump_gpio_conf, .-_dump_gpio_conf
	.section	.text._apply_gpio_config,"ax",@progbits
	.align	1
	.type	_apply_gpio_config, @function
_apply_gpio_config:
.LFB43:
	.loc 2 170 1
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
	.loc 2 171 5
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	mv	a1,a5
	mv	a0,a4
	call	loopset_led_trigger
	.loc 2 172 1
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
.LFE43:
	.size	_apply_gpio_config, .-_apply_gpio_config
	.section	.rodata
	.align	2
.LC13:
	.string	"gpio%u"
	.section	.text.hal_gpio_init_from_dts,"ax",@progbits
	.align	1
	.globl	hal_gpio_init_from_dts
	.type	hal_gpio_init_from_dts, @function
hal_gpio_init_from_dts:
.LFB44:
	.loc 2 175 1
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
	sw	a1,-56(s0)
	.loc 2 180 11
	lw	a5,-52(s0)
	lw	a1,-56(s0)
	mv	a0,a5
	call	_get_gpio_max
	sw	a0,-24(s0)
	.loc 2 186 12
	sw	zero,-20(s0)
	.loc 2 186 5
	j	.L26
.L31:
	.loc 2 187 9
	addi	a4,s0,-36
	lw	a3,-20(s0)
	lui	a5,%hi(.LC13)
	addi	a2,a5,%lo(.LC13)
	li	a1,11
	mv	a0,a4
	call	snprintf
	.loc 2 188 32
	sb	zero,-25(s0)
	.loc 2 189 13
	lw	a5,-52(s0)
	addi	a3,s0,-48
	addi	a4,s0,-36
	mv	a2,a4
	lw	a1,-56(s0)
	mv	a0,a5
	call	_get_gpio_config
	mv	a5,a0
	.loc 2 189 12 discriminator 1
	blt	a5,zero,.L33
	.loc 2 191 38
	lbu	a4,-44(s0)
	.loc 2 191 19
	li	a5,1
	bne	a4,a5,.L30
	.loc 2 192 13
	addi	a5,s0,-48
	mv	a0,a5
	call	_dump_gpio_conf
	.loc 2 193 13
	addi	a5,s0,-48
	mv	a0,a5
	call	_apply_gpio_config
.L30:
	.loc 2 186 27 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L26:
	.loc 2 186 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	blt	a4,a5,.L31
	j	.L28
.L33:
	.loc 2 190 13
	nop
.L28:
	.loc 2 199 12
	li	a5,0
	.loc 2 200 1
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
.LFE44:
	.size	hal_gpio_init_from_dts, .-hal_gpio_init_from_dts
	.section	.sbss.pstgpio_head,"aw",@nobits
	.align	2
	.type	pstgpio_head, @object
	.size	pstgpio_head, 4
pstgpio_head:
	.zero	4
	.section	.rodata
	.align	2
.LC14:
	.string	"register paraments is not correct! \r\n"
	.align	2
.LC15:
	.string	"Malloc failed \r\n"
	.section	.text.hal_gpio_register_handler,"ax",@progbits
	.align	1
	.globl	hal_gpio_register_handler
	.type	hal_gpio_register_handler, @function
hal_gpio_register_handler:
.LFB45:
	.loc 2 204 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	.loc 2 205 8
	lw	a5,-36(s0)
	beq	a5,zero,.L35
	.loc 2 205 21 discriminator 1
	lw	a4,-40(s0)
	li	a5,31
	bgt	a4,a5,.L35
	.loc 2 205 37 discriminator 2
	lw	a4,-44(s0)
	li	a5,1
	bgt	a4,a5,.L35
	.loc 2 205 55 discriminator 3
	lw	a4,-48(s0)
	li	a5,3
	ble	a4,a5,.L36
.L35:
	.loc 2 206 9
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	call	printf
	.loc 2 207 16
	li	a5,-1
	j	.L37
.L36:
	.loc 2 212 15
	li	a0,16
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 2 213 8
	lw	a5,-20(s0)
	bne	a5,zero,.L38
	.loc 2 214 9
	lui	a5,%hi(.LC15)
	addi	a0,a5,%lo(.LC15)
	call	printf
	.loc 2 215 16
	li	a5,-1
	j	.L37
.L38:
	.loc 2 218 22
	lw	a5,-40(s0)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,12(a5)
	.loc 2 219 25
	lw	a5,-44(s0)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,13(a5)
	.loc 2 220 24
	lw	a5,-48(s0)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,14(a5)
	.loc 2 221 27
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 2 222 18
	lw	a5,-20(s0)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	.loc 2 224 9
	lui	a5,%hi(pstgpio_head)
	lw	a5,%lo(pstgpio_head)(a5)
	.loc 2 224 8
	bne	a5,zero,.L39
	.loc 2 225 22
	lui	a5,%hi(pstgpio_head)
	lw	a4,-20(s0)
	sw	a4,%lo(pstgpio_head)(a5)
	.loc 2 226 23
	lw	a5,-20(s0)
	sw	zero,0(a5)
	j	.L40
.L39:
	.loc 2 229 23
	lui	a5,%hi(pstgpio_head)
	lw	a4,%lo(pstgpio_head)(a5)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 2 230 22
	lui	a5,%hi(pstgpio_head)
	lw	a4,-20(s0)
	sw	a4,%lo(pstgpio_head)(a5)
.L40:
	.loc 2 233 5
	lui	a5,%hi(pstgpio_head)
	lw	a5,%lo(pstgpio_head)(a5)
	mv	a0,a5
	call	bl_gpio_register
	.loc 2 235 12
	li	a5,0
.L37:
	.loc 2 237 1
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
.LFE45:
	.size	hal_gpio_register_handler, .-hal_gpio_register_handler
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_gpio.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/include/loopset.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x53a
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x14
	.4byte	.LASF60
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
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x16
	.byte	0x4
	.uleb128 0x6
	.4byte	0x90
	.uleb128 0xb
	.4byte	0x86
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xc
	.4byte	0x90
	.uleb128 0x6
	.4byte	0x97
	.uleb128 0xb
	.4byte	0x9c
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0xc
	.4byte	0xb2
	.uleb128 0x6
	.4byte	0xc8
	.uleb128 0x17
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x63
	.byte	0x12
	.4byte	0xb2
	.uleb128 0x6
	.4byte	0xda
	.uleb128 0x18
	.4byte	0xe5
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x10
	.byte	0x5
	.byte	0x22
	.byte	0x10
	.4byte	0x141
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x5
	.byte	0x23
	.byte	0x1c
	.4byte	0x141
	.byte	0
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x5
	.byte	0x24
	.byte	0xc
	.4byte	0xd5
	.byte	0x4
	.uleb128 0xe
	.string	"arg"
	.byte	0x5
	.byte	0x25
	.byte	0xb
	.4byte	0x84
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x5
	.byte	0x27
	.byte	0xd
	.4byte	0xa6
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x5
	.byte	0x28
	.byte	0xd
	.4byte	0xa6
	.byte	0xd
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x5
	.byte	0x29
	.byte	0xd
	.4byte	0xa6
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.4byte	0xe5
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x5
	.byte	0x2a
	.byte	0x3
	.4byte	0xe5
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0xc
	.byte	0x2
	.byte	0x2f
	.byte	0x8
	.4byte	0x1ae
	.uleb128 0xe
	.string	"pin"
	.byte	0x2
	.byte	0x30
	.byte	0x9
	.4byte	0x63
	.byte	0
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x2
	.byte	0x33
	.byte	0xd
	.4byte	0xa6
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x2
	.byte	0x35
	.byte	0xd
	.4byte	0xa6
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x2
	.byte	0x38
	.byte	0xd
	.4byte	0xa6
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x2
	.byte	0x3b
	.byte	0xd
	.4byte	0xa6
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x2
	.byte	0x3c
	.byte	0x12
	.4byte	0x6a
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0xca
	.byte	0x14
	.4byte	0x1bf
	.uleb128 0x5
	.byte	0x3
	.4byte	pstgpio_head
	.uleb128 0x6
	.4byte	0x146
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x5
	.byte	0x34
	.4byte	0x1d5
	.uleb128 0x1
	.4byte	0x1bf
	.byte	0
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0xa3
	.byte	0x7
	.4byte	0x84
	.4byte	0x1eb
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x7
	.byte	0xce
	.byte	0x5
	.4byte	0x63
	.4byte	0x202
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x10
	.byte	0
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x7
	.2byte	0x110
	.byte	0x5
	.4byte	0x63
	.4byte	0x224
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x71
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x8
	.byte	0x25
	.4byte	0x23a
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x6a
	.byte	0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x9
	.byte	0x1e
	.byte	0x5
	.4byte	0x63
	.4byte	0x25a
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0xa
	.2byte	0x470
	.byte	0xd
	.4byte	0x9c
	.4byte	0x285
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x285
	.byte	0
	.uleb128 0x6
	.4byte	0x63
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x9
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x2aa
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0xa
	.2byte	0x1de
	.byte	0x5
	.4byte	0x63
	.4byte	0x2cb
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x9c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0xa
	.2byte	0x311
	.byte	0xd
	.4byte	0xc3
	.4byte	0x2f1
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0x285
	.byte	0
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0xcb
	.4byte	0x63
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35f
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0xcb
	.byte	0x25
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0xcb
	.byte	0x2f
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0xcb
	.byte	0x3c
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0xcb
	.byte	0x4c
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"arg"
	.byte	0x2
	.byte	0xcb
	.byte	0x5d
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0xd2
	.byte	0x11
	.4byte	0x1bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0xae
	.4byte	0x63
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3cb
	.uleb128 0x8
	.string	"fdt"
	.byte	0x2
	.byte	0xae
	.byte	0x25
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0xae
	.byte	0x33
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.string	"i"
	.byte	0xb0
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"num"
	.byte	0xb0
	.byte	0xc
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0xb1
	.byte	0xa
	.4byte	0x3cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0xb2
	.byte	0x20
	.4byte	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x19
	.4byte	0x90
	.4byte	0x3db
	.uleb128 0x1a
	.4byte	0x6a
	.byte	0xb
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF49
	.byte	0x2
	.byte	0xa9
	.byte	0xd
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x400
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0xa9
	.byte	0x3c
	.4byte	0x400
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x152
	.uleb128 0x1c
	.4byte	.LASF50
	.byte	0x2
	.byte	0x9e
	.byte	0xd
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42a
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x9e
	.byte	0x4a
	.4byte	0x400
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x4d
	.4byte	0x63
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b4
	.uleb128 0x8
	.string	"fdt"
	.byte	0x2
	.byte	0x4d
	.byte	0x29
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x4d
	.byte	0x37
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x4d
	.byte	0x4f
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x4d
	.byte	0x71
	.4byte	0x400
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x4f
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x50
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x51
	.byte	0x15
	.4byte	0x4b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x52
	.byte	0x11
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	0xbe
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x3f
	.4byte	0x63
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x519
	.uleb128 0x8
	.string	"fdt"
	.byte	0x2
	.byte	0x3f
	.byte	0x26
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x3f
	.byte	0x34
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x41
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x42
	.byte	0x15
	.4byte	0x4b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x43
	.byte	0xe
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF59
	.byte	0x1
	.byte	0x78
	.byte	0x18
	.4byte	0xb2
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0x78
	.byte	0x2d
	.4byte	0xc9
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x12
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.sleb128 12
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"valid"
.LASF57:
	.string	"_get_gpio_max"
.LASF50:
	.string	"_dump_gpio_conf"
.LASF43:
	.string	"hal_gpio_register_handler"
.LASF47:
	.string	"gpio_config"
.LASF39:
	.string	"fdt_getprop"
.LASF52:
	.string	"offset1"
.LASF44:
	.string	"hal_gpio_init_from_dts"
.LASF4:
	.string	"short int"
.LASF13:
	.string	"size_t"
.LASF58:
	.string	"max_num"
.LASF53:
	.string	"lentmp"
.LASF49:
	.string	"_apply_gpio_config"
.LASF28:
	.string	"mode"
.LASF27:
	.string	"active"
.LASF36:
	.string	"fdt_stringlist_get"
.LASF48:
	.string	"config"
.LASF14:
	.string	"uint8_t"
.LASF42:
	.string	"pstnode"
.LASF56:
	.string	"_get_gpio_config"
.LASF40:
	.string	"func"
.LASF8:
	.string	"long long int"
.LASF21:
	.string	"intTrgMod"
.LASF45:
	.string	"dtb_offset"
.LASF37:
	.string	"memset"
.LASF6:
	.string	"long int"
.LASF31:
	.string	"printf"
.LASF55:
	.string	"result"
.LASF46:
	.string	"node"
.LASF32:
	.string	"snprintf"
.LASF51:
	.string	"name"
.LASF11:
	.string	"long double"
.LASF3:
	.string	"unsigned char"
.LASF22:
	.string	"gpio_ctx_t"
.LASF24:
	.string	"gpio_feature_config"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF26:
	.string	"feature"
.LASF15:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF29:
	.string	"time"
.LASF16:
	.string	"fdt32_t"
.LASF5:
	.string	"short unsigned int"
.LASF12:
	.string	"char"
.LASF54:
	.string	"addr_prop"
.LASF33:
	.string	"bl_gpio_register"
.LASF23:
	.string	"_gpio_ctx_desc"
.LASF20:
	.string	"intCtrlMod"
.LASF7:
	.string	"long unsigned int"
.LASF18:
	.string	"gpio_handler"
.LASF60:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF34:
	.string	"loopset_led_trigger"
.LASF35:
	.string	"memcmp"
.LASF41:
	.string	"pstgpio_head"
.LASF59:
	.string	"fdt32_to_cpu"
.LASF19:
	.string	"gpioPin"
.LASF38:
	.string	"fdt_subnode_offset"
.LASF30:
	.string	"pvPortMalloc"
.LASF17:
	.string	"next"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_gpio.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
