	.file	"hal_ir.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_ir.c"
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
	.section	.sbss.g_chip_type,"aw",@nobits
	.align	2
	.type	g_chip_type, @object
	.size	g_chip_type, 4
g_chip_type:
	.zero	4
	.section	.rodata
	.align	2
.LC0:
	.string	"ctrltype"
	.align	2
.LC1:
	.string	"hal_ir.c"
	.align	2
.LC2:
	.string	"\033[32mINFO  \033[0m"
	.align	2
.LC3:
	.string	"[%10u][%s: %s:%4d] do not find ctrltype \r\n"
	.align	2
.LC4:
	.string	"[%10u][%s: %s:%4d] ctrltype == %d \r\n"
	.align	2
.LC5:
	.string	"rx"
	.align	2
.LC6:
	.string	"[%10u][%s: %s:%4d] ir rx NULL.\r\n"
	.align	2
.LC7:
	.string	"status"
	.align	2
.LC8:
	.string	"[%10u][%s: %s:%4d] ir rx status_countindex = %d NULL.\r\n"
	.align	2
.LC9:
	.string	"okay"
	.align	2
.LC10:
	.string	"[%10u][%s: %s:%4d] ir rx status = %s\r\n"
	.align	2
.LC11:
	.string	"pin"
	.align	2
.LC12:
	.string	"[%10u][%s: %s:%4d] ir rx pin NULL.\r\n"
	.align	2
.LC13:
	.string	"[%10u][%s: %s:%4d] pin == %d \r\n"
	.align	2
.LC14:
	.string	"interval"
	.align	2
.LC15:
	.string	"[%10u][%s: %s:%4d] ir rx interval NULL.\r\n"
	.align	2
.LC16:
	.string	"[%10u][%s: %s:%4d] add here pin = %d, interval = %d\r\n"
	.section	.text.hal_ir_init_from_dts,"ax",@progbits
	.align	1
	.globl	hal_ir_init_from_dts
	.type	hal_ir_init_from_dts, @function
hal_ir_init_from_dts:
.LFB46:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_ir.c"
	.loc 2 53 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	.loc 2 54 9
	sw	zero,-28(s0)
	.loc 2 55 17
	lw	a5,-68(s0)
	sw	a5,-32(s0)
	.loc 2 57 21
	sw	zero,-36(s0)
	.loc 2 58 9
	sw	zero,-52(s0)
	.loc 2 59 17
	sw	zero,-40(s0)
	.loc 2 60 9
	sw	zero,-44(s0)
	.loc 2 61 9
	sw	zero,-20(s0)
	.loc 2 63 13
	sb	zero,-21(s0)
	.loc 2 64 14
	sh	zero,-46(s0)
	.loc 2 66 17
	lw	a4,-72(s0)
	addi	a5,s0,-52
	mv	a3,a5
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	mv	a1,a4
	lw	a0,-32(s0)
	call	fdt_getprop
	sw	a0,-36(s0)
	.loc 2 67 8
	lw	a5,-36(s0)
	bne	a5,zero,.L4
.LBB24:
.LBB25:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE25:
.LBE24:
	.loc 2 68 16 discriminator 1
	beq	a5,zero,.L6
	.loc 2 68 105 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L7
.L6:
	.loc 2 68 134 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L7:
	.loc 2 68 16 discriminator 7
	li	a4,68
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	bl_printk
	j	.L8
.L4:
	.loc 2 70 31
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 2 70 18 discriminator 1
	sw	a5,-20(s0)
.LBB26:
.LBB27:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE27:
.LBE26:
	.loc 2 71 16 discriminator 1
	beq	a5,zero,.L10
	.loc 2 71 99 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L11
.L10:
	.loc 2 71 128 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L11:
	.loc 2 71 16 discriminator 7
	lw	a5,-20(s0)
	li	a4,71
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC2)
	addi	a2,a2,%lo(.LC2)
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.L8:
	.loc 2 74 15
	lw	a4,-72(s0)
	lui	a5,%hi(.LC5)
	addi	a2,a5,%lo(.LC5)
	mv	a1,a4
	lw	a0,-32(s0)
	call	fdt_subnode_offset
	sw	a0,-28(s0)
	.loc 2 75 8
	lw	a5,-28(s0)
	bgt	a5,zero,.L12
.LBB28:
.LBB29:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE29:
.LBE28:
	.loc 2 76 16 discriminator 1
	beq	a5,zero,.L14
	.loc 2 76 95 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L15
.L14:
	.loc 2 76 124 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L15:
	.loc 2 76 16 discriminator 7
	li	a4,76
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	bl_printk
	j	.L16
.L12:
	.loc 2 78 22
	lui	a5,%hi(.LC7)
	addi	a2,a5,%lo(.LC7)
	lw	a1,-28(s0)
	lw	a0,-32(s0)
	call	fdt_stringlist_count
	sw	a0,-44(s0)
	.loc 2 79 12
	lw	a4,-44(s0)
	li	a5,1
	beq	a4,a5,.L17
.LBB30:
.LBB31:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE31:
.LBE30:
	.loc 2 80 20 discriminator 1
	beq	a5,zero,.L19
	.loc 2 80 122 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L20
.L19:
	.loc 2 80 151 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L20:
	.loc 2 80 20 discriminator 7
	lw	a5,-44(s0)
	li	a4,80
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC2)
	addi	a2,a2,%lo(.LC2)
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	call	bl_printk
	j	.L16
.L17:
	.loc 2 82 22
	addi	a5,s0,-52
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC7)
	addi	a2,a5,%lo(.LC7)
	lw	a1,-28(s0)
	lw	a0,-32(s0)
	call	fdt_stringlist_get
	sw	a0,-40(s0)
	.loc 2 83 25
	lw	a4,-52(s0)
	.loc 2 83 16
	li	a5,4
	bne	a4,a5,.L21
	.loc 2 83 35 discriminator 1
	li	a2,4
	lw	a1,-40(s0)
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	memcmp
	mv	a5,a0
	.loc 2 83 31 discriminator 2
	beq	a5,zero,.L22
.L21:
.LBB32:
.LBB33:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE33:
.LBE32:
	.loc 2 84 24 discriminator 1
	beq	a5,zero,.L24
	.loc 2 84 109 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L25
.L24:
	.loc 2 84 138 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L25:
	.loc 2 84 24 discriminator 7
	lw	a5,-40(s0)
	li	a4,84
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC2)
	addi	a2,a2,%lo(.LC2)
	lui	a0,%hi(.LC10)
	addi	a0,a0,%lo(.LC10)
	call	bl_printk
	.loc 2 84 24 is_stmt 0
	j	.L16
.L22:
	.loc 2 87 29 is_stmt 1
	addi	a5,s0,-52
	mv	a3,a5
	lui	a5,%hi(.LC11)
	addi	a2,a5,%lo(.LC11)
	lw	a1,-28(s0)
	lw	a0,-32(s0)
	call	fdt_getprop
	sw	a0,-36(s0)
	.loc 2 88 20
	lw	a5,-36(s0)
	bne	a5,zero,.L26
.LBB34:
.LBB35:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE35:
.LBE34:
	.loc 2 89 28 discriminator 1
	beq	a5,zero,.L28
	.loc 2 89 111 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L29
.L28:
	.loc 2 89 140 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L29:
	.loc 2 89 28 discriminator 7
	li	a4,89
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	bl_printk
	j	.L16
.L26:
	.loc 2 91 38
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 2 91 25 discriminator 1
	sb	a5,-21(s0)
.LBB36:
.LBB37:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE37:
.LBE36:
	.loc 2 92 28 discriminator 1
	beq	a5,zero,.L31
	.loc 2 92 106 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L32
.L31:
	.loc 2 92 135 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L32:
	.loc 2 92 28 discriminator 7
	lbu	a5,-21(s0)
	li	a4,92
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC2)
	addi	a2,a2,%lo(.LC2)
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	call	bl_printk
	.loc 2 93 33
	addi	a5,s0,-52
	mv	a3,a5
	lui	a5,%hi(.LC14)
	addi	a2,a5,%lo(.LC14)
	lw	a1,-28(s0)
	lw	a0,-32(s0)
	call	fdt_getprop
	sw	a0,-36(s0)
	.loc 2 94 24
	lw	a5,-36(s0)
	bne	a5,zero,.L33
.LBB38:
.LBB39:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE39:
.LBE38:
	.loc 2 95 32 discriminator 1
	beq	a5,zero,.L35
	.loc 2 95 120 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L36
.L35:
	.loc 2 95 149 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L36:
	.loc 2 95 32 discriminator 7
	li	a4,95
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lui	a5,%hi(.LC15)
	addi	a0,a5,%lo(.LC15)
	call	bl_printk
	j	.L16
.L33:
	.loc 2 97 47
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 2 97 34 discriminator 1
	sh	a5,-46(s0)
.LBB40:
.LBB41:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE41:
.LBE40:
	.loc 2 98 32 discriminator 1
	beq	a5,zero,.L38
	.loc 2 98 132 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L39
.L38:
	.loc 2 98 161 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L39:
	.loc 2 98 32 discriminator 7
	lbu	a5,-21(s0)
	lhu	a4,-46(s0)
	mv	a6,a4
	li	a4,98
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC2)
	addi	a2,a2,%lo(.LC2)
	lui	a0,%hi(.LC16)
	addi	a0,a0,%lo(.LC16)
	call	bl_printk
.L16:
	.loc 2 106 5
	lbu	a5,-21(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	bl_ir_init
	.loc 2 108 12
	li	a5,0
	.loc 2 109 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE46:
	.size	hal_ir_init_from_dts, .-hal_ir_init_from_dts
	.section	.text.hal_irled_init,"ax",@progbits
	.align	1
	.globl	hal_irled_init
	.type	hal_irled_init, @function
hal_irled_init:
.LFB47:
	.loc 2 112 1
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
	.loc 2 113 8
	lw	a5,-20(s0)
	beq	a5,zero,.L42
	.loc 2 113 24 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	beq	a4,a5,.L42
	.loc 2 116 16
	li	a5,-1
	j	.L43
.L42:
	.loc 2 119 5
	call	bl_irled_gpio_init
	.loc 2 120 5
	lw	a0,-20(s0)
	call	bl_irled_init
	.loc 2 122 17
	lui	a5,%hi(g_chip_type)
	lw	a4,-20(s0)
	sw	a4,%lo(g_chip_type)(a5)
	.loc 2 124 12
	li	a5,0
.L43:
	.loc 2 125 1
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
.LFE47:
	.size	hal_irled_init, .-hal_irled_init
	.section	.text.hal_irled_send_data,"ax",@progbits
	.align	1
	.globl	hal_irled_send_data
	.type	hal_irled_send_data, @function
hal_irled_send_data:
.LFB48:
	.loc 2 128 1
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
	.loc 2 133 8
	lw	a5,-36(s0)
	ble	a5,zero,.L45
	.loc 2 133 22 discriminator 1
	lw	a5,-40(s0)
	bne	a5,zero,.L46
.L45:
	.loc 2 136 16
	li	a5,-1
	j	.L47
.L46:
	.loc 2 139 21
	lui	a5,%hi(g_chip_type)
	lw	a5,%lo(g_chip_type)(a5)
	.loc 2 139 8
	bne	a5,zero,.L48
	.loc 2 140 18
	li	a4,50
	li	a5,0
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	j	.L49
.L48:
	.loc 2 142 18
	li	a4,24
	li	a5,0
	sw	a4,-32(s0)
	sw	a5,-28(s0)
.L49:
	.loc 2 145 9
	call	bl_timer_now_us64
	mv	a2,a0
	mv	a3,a1
	.loc 2 145 29 discriminator 1
	lui	a5,%hi(last_us.0)
	lw	a0,%lo(last_us.0)(a5)
	lw	a1,%lo(last_us.0+4)(a5)
	sub	a4,a2,a0
	mv	a6,a4
	sgtu	a6,a6,a2
	sub	a5,a3,a1
	sub	a3,a5,a6
	mv	a5,a3
	.loc 2 145 8 discriminator 1
	lw	a3,-28(s0)
	mv	a2,a5
	bgtu	a3,a2,.L54
	lw	a3,-28(s0)
	mv	a2,a5
	bne	a3,a2,.L50
	lw	a3,-32(s0)
	mv	a5,a4
	bleu	a3,a5,.L50
.L54:
	.loc 2 146 60
	lui	a5,%hi(last_us.0)
	lw	a4,%lo(last_us.0)(a5)
	lw	a5,%lo(last_us.0+4)(a5)
	mv	s1,a4
	.loc 2 146 40
	call	bl_timer_now_us64
	mv	a4,a0
	mv	a5,a1
	.loc 2 146 60 discriminator 1
	mv	a5,a4
	sub	a4,s1,a5
	.loc 2 146 10 discriminator 1
	lw	a5,-32(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	bl_timer_delay_us
.L50:
.LBB42:
.LBB43:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"
	.loc 4 94 3
 #APP
# 94 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrci mstatus, 8
# 0 "" 2
	.loc 4 95 1
 #NO_APP
	nop
.LBE43:
.LBE42:
	.loc 2 150 12
	sw	zero,-20(s0)
	.loc 2 150 5
	j	.L52
.L53:
	.loc 2 151 35
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 2 151 9
	lw	a5,0(a5)
	mv	a0,a5
	call	bl_irled_send_one_data
	.loc 2 150 32 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L52:
	.loc 2 150 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	blt	a4,a5,.L53
.LBB44:
.LBB45:
	.loc 4 89 3
 #APP
# 89 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrsi mstatus, 8
# 0 "" 2
	.loc 4 90 1
 #NO_APP
	nop
.LBE45:
.LBE44:
	.loc 2 155 15
	call	bl_timer_now_us64
	mv	a4,a0
	mv	a5,a1
	.loc 2 155 13 discriminator 1
	lui	a3,%hi(last_us.0)
	sw	a4,%lo(last_us.0)(a3)
	sw	a5,%lo(last_us.0+4)(a3)
	.loc 2 157 12
	li	a5,0
.L47:
	.loc 2 158 1
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
.LFE48:
	.size	hal_irled_send_data, .-hal_irled_send_data
	.section	.sbss.last_us.0,"aw",@nobits
	.align	3
	.type	last_us.0, @object
	.size	last_us.0, 8
last_us.0:
	.zero	8
	.text
.Letext0:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_ir.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_timer.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x48b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x12
	.4byte	.LASF55
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
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x5
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xc
	.4byte	0x84
	.uleb128 0x6
	.4byte	0x8b
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x6
	.byte	0x28
	.byte	0x12
	.4byte	0x47
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.4byte	0x40
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x6
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0xc
	.4byte	0xb9
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x6
	.byte	0x37
	.byte	0x20
	.4byte	0x5c
	.uleb128 0x6
	.4byte	0xdb
	.uleb128 0x14
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x1
	.byte	0x63
	.byte	0x12
	.4byte	0xb9
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x3
	.byte	0x3f
	.byte	0x11
	.4byte	0x95
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0xb9
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x3
	.byte	0x5c
	.byte	0x13
	.4byte	0xe8
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x2e
	.byte	0xc
	.4byte	0x63
	.uleb128 0x5
	.byte	0x3
	.4byte	g_chip_type
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x7
	.byte	0x28
	.4byte	0x63
	.4byte	0x132
	.uleb128 0x1
	.4byte	0xb9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x8
	.byte	0x22
	.4byte	0x143
	.uleb128 0x1
	.4byte	0xb9
	.byte	0
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x8
	.byte	0x23
	.byte	0xa
	.4byte	0xca
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x7
	.byte	0x27
	.4byte	0x63
	.4byte	0x164
	.uleb128 0x1
	.4byte	0x63
	.byte	0
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x7
	.byte	0x26
	.byte	0x5
	.4byte	0x63
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x7
	.byte	0x24
	.4byte	0x63
	.4byte	0x18a
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x63
	.byte	0
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x9
	.byte	0x1e
	.4byte	0x63
	.4byte	0x1a9
	.uleb128 0x1
	.4byte	0xd6
	.uleb128 0x1
	.4byte	0xd6
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0x8
	.4byte	.LASF28
	.2byte	0x470
	.byte	0xd
	.4byte	0x90
	.4byte	0x1d3
	.uleb128 0x1
	.4byte	0xd6
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x90
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x1d3
	.byte	0
	.uleb128 0x6
	.4byte	0x63
	.uleb128 0x8
	.4byte	.LASF29
	.2byte	0x440
	.byte	0x5
	.4byte	0x63
	.4byte	0x1f8
	.uleb128 0x1
	.4byte	0xd6
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x90
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.2byte	0x1de
	.byte	0x5
	.4byte	0x63
	.4byte	0x218
	.uleb128 0x1
	.4byte	0xd6
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x90
	.byte	0
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0xb
	.byte	0x9e
	.4byte	0x22a
	.uleb128 0x1
	.4byte	0x90
	.uleb128 0x16
	.byte	0
	.uleb128 0xf
	.4byte	.LASF33
	.2byte	0x54c
	.4byte	0xf4
	.uleb128 0xf
	.4byte	.LASF34
	.2byte	0x55d
	.4byte	0xf4
	.uleb128 0x8
	.4byte	.LASF35
	.2byte	0x311
	.byte	0xd
	.4byte	0xd6
	.4byte	0x265
	.uleb128 0x1
	.4byte	0xd6
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x90
	.uleb128 0x1
	.4byte	0x1d3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x7f
	.4byte	0x63
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e4
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x7f
	.byte	0x1d
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"buf"
	.byte	0x2
	.byte	0x7f
	.byte	0x31
	.4byte	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"i"
	.byte	0x81
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x82
	.byte	0x15
	.4byte	0xca
	.uleb128 0x5
	.byte	0x3
	.4byte	last_us.0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x83
	.byte	0xe
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	0x451
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x95
	.byte	0x5
	.uleb128 0x3
	.4byte	0x457
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x99
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.4byte	0xb9
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x6f
	.4byte	0x63
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x310
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x6f
	.byte	0x18
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x34
	.4byte	0x63
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44c
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x34
	.byte	0x23
	.4byte	0xb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x34
	.byte	0x37
	.4byte	0xb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x36
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.string	"fdt"
	.byte	0x37
	.byte	0x11
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x39
	.byte	0x15
	.4byte	0x44c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x3a
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x3b
	.byte	0x11
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x3c
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x3d
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"pin"
	.byte	0x3f
	.byte	0xd
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x40
	.byte	0xe
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x3
	.4byte	0x45d
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x44
	.byte	0x4e
	.uleb128 0x3
	.4byte	0x45d
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x47
	.byte	0x48
	.uleb128 0x3
	.4byte	0x45d
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x4c
	.byte	0x44
	.uleb128 0x3
	.4byte	0x45d
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x50
	.byte	0x5f
	.uleb128 0x3
	.4byte	0x45d
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x54
	.byte	0x52
	.uleb128 0x3
	.4byte	0x45d
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x59
	.byte	0x54
	.uleb128 0x3
	.4byte	0x45d
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x5c
	.byte	0x4f
	.uleb128 0x3
	.4byte	0x45d
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x5f
	.byte	0x5d
	.uleb128 0x3
	.4byte	0x45d
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x62
	.byte	0x69
	.byte	0
	.uleb128 0x6
	.4byte	0xc5
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x5c
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0x57
	.uleb128 0x17
	.4byte	.LASF57
	.byte	0x3
	.byte	0xb3
	.byte	0x3a
	.4byte	0xe8
	.byte	0x3
	.uleb128 0x18
	.4byte	.LASF58
	.byte	0x1
	.byte	0x78
	.byte	0x18
	.4byte	0xb9
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.byte	0x78
	.byte	0x2d
	.4byte	0xdc
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
	.uleb128 0xb
	.uleb128 0x57
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
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 55
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
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
	.4byte	.LFB46
	.uleb128 .LFE46-.LFB46
	.byte	0x7
	.4byte	.LFB47
	.uleb128 .LFE47-.LFB47
	.byte	0x7
	.4byte	.LFB48
	.uleb128 .LFE48-.LFB48
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF57:
	.string	"xPortIsInsideInterrupt"
.LASF38:
	.string	"last_us"
.LASF45:
	.string	"dtb_offset"
.LASF13:
	.string	"size_t"
.LASF21:
	.string	"TickType_t"
.LASF27:
	.string	"memcmp"
.LASF44:
	.string	"fdt_input"
.LASF39:
	.string	"reset_us"
.LASF32:
	.string	"bl_printk"
.LASF42:
	.string	"chip_type"
.LASF10:
	.string	"unsigned int"
.LASF18:
	.string	"uint64_t"
.LASF19:
	.string	"fdt32_t"
.LASF47:
	.string	"addr_prop"
.LASF40:
	.string	"hal_irled_send_data"
.LASF54:
	.string	"__enable_irq"
.LASF3:
	.string	"unsigned char"
.LASF37:
	.string	"g_chip_type"
.LASF29:
	.string	"fdt_stringlist_count"
.LASF23:
	.string	"bl_irled_init"
.LASF7:
	.string	"long unsigned int"
.LASF36:
	.string	"data_num"
.LASF5:
	.string	"short unsigned int"
.LASF17:
	.string	"uint32_t"
.LASF56:
	.string	"TrapNetCounter"
.LASF31:
	.string	"bl_timer_delay_us"
.LASF43:
	.string	"hal_ir_init_from_dts"
.LASF26:
	.string	"bl_ir_init"
.LASF46:
	.string	"offset1"
.LASF15:
	.string	"uint8_t"
.LASF49:
	.string	"result"
.LASF52:
	.string	"interval"
.LASF25:
	.string	"bl_irled_gpio_init"
.LASF9:
	.string	"long long unsigned int"
.LASF41:
	.string	"hal_irled_init"
.LASF14:
	.string	"int32_t"
.LASF30:
	.string	"fdt_subnode_offset"
.LASF8:
	.string	"long long int"
.LASF55:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF12:
	.string	"char"
.LASF34:
	.string	"xTaskGetTickCountFromISR"
.LASF33:
	.string	"xTaskGetTickCount"
.LASF28:
	.string	"fdt_stringlist_get"
.LASF24:
	.string	"bl_timer_now_us64"
.LASF4:
	.string	"short int"
.LASF16:
	.string	"uint16_t"
.LASF48:
	.string	"lentmp"
.LASF58:
	.string	"fdt32_to_cpu"
.LASF53:
	.string	"__disable_irq"
.LASF6:
	.string	"long int"
.LASF51:
	.string	"ctrltype"
.LASF50:
	.string	"countindex"
.LASF11:
	.string	"long double"
.LASF35:
	.string	"fdt_getprop"
.LASF2:
	.string	"signed char"
.LASF22:
	.string	"bl_irled_send_one_data"
.LASF20:
	.string	"BaseType_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_ir.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
