	.file	"hal_pwm.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
	.section	.text.utils_list_is_empty,"ax",@progbits
	.align	1
	.type	utils_list_is_empty, @function
utils_list_is_empty:
.LFB0:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_list.h"
	.loc 1 221 1
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
	.loc 1 222 24
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 222 17
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 223 1
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
.LFE0:
	.size	utils_list_is_empty, .-utils_list_is_empty
	.section	.text.fdt32_to_cpu,"ax",@progbits
	.align	1
	.type	fdt32_to_cpu, @function
fdt32_to_cpu:
.LFB28:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt_env.h"
	.loc 2 121 1
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
	.loc 2 122 58
	addi	a5,s0,-20
	.loc 2 122 61
	lbu	a5,0(a5)
	.loc 2 122 66
	slli	a4,a5,24
	.loc 2 122 112
	addi	a5,s0,-20
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 2 122 117
	slli	a5,a5,16
	.loc 2 122 73
	or	a4,a4,a5
	.loc 2 122 163
	addi	a5,s0,-20
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 2 122 168
	slli	a5,a5,8
	.loc 2 122 124
	or	a4,a4,a5
	.loc 2 122 212
	addi	a5,s0,-20
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 2 122 12
	or	a5,a4,a5
	.loc 2 123 1
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
.LFE28:
	.size	fdt32_to_cpu, .-fdt32_to_cpu
	.section	.sbss.__g_init_flag,"aw",@nobits
	.type	__g_init_flag, @object
	.size	__g_init_flag, 1
__g_init_flag:
	.zero	1
	.section	.bss.__g_pwm_dev,"aw",@nobits
	.align	2
	.type	__g_pwm_dev, @object
	.size	__g_pwm_dev, 120
__g_pwm_dev:
	.zero	120
	.section	.sbss.inited,"aw",@nobits
	.type	inited, @object
	.size	inited, 1
inited:
	.zero	1
	.section	.sbss.dev_pwm0,"aw",@nobits
	.align	2
	.type	dev_pwm0, @object
	.size	dev_pwm0, 4
dev_pwm0:
	.zero	4
	.section	.sbss.dev_pwm1,"aw",@nobits
	.align	2
	.type	dev_pwm1, @object
	.size	dev_pwm1, 4
dev_pwm1:
	.zero	4
	.section	.sbss.dev_pwm2,"aw",@nobits
	.align	2
	.type	dev_pwm2, @object
	.size	dev_pwm2, 4
dev_pwm2:
	.zero	4
	.section	.sbss.dev_pwm3,"aw",@nobits
	.align	2
	.type	dev_pwm3, @object
	.size	dev_pwm3, 4
dev_pwm3:
	.zero	4
	.section	.sbss.dev_pwm4,"aw",@nobits
	.align	2
	.type	dev_pwm4, @object
	.size	dev_pwm4, 4
dev_pwm4:
	.zero	4
	.section	.rodata
	.align	2
.LC6:
	.string	"hal_pwm.c"
	.align	2
.LC7:
	.string	"\033[31mERROR \033[0m"
	.align	2
.LC8:
	.string	"[%10u][%s: %s:%4d] arg err.\r\n"
	.align	2
.LC9:
	.string	"[%10u][%s: %s:%4d] mem err.\r\n"
	.section	.text.pwm_dev_malloc,"ax",@progbits
	.align	1
	.type	pwm_dev_malloc, @function
pwm_dev_malloc:
.LFB62:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
	.loc 3 65 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 3 66 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 66 8
	beq	a5,zero,.L6
.LBB36:
.LBB37:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE37:
.LBE36:
	.loc 3 67 16 discriminator 1
	beq	a5,zero,.L8
	.loc 3 67 92 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L9
.L8:
	.loc 3 67 121 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L9:
	.loc 3 67 16 discriminator 7
	li	a4,67
	lui	a5,%hi(.LC6)
	addi	a3,a5,%lo(.LC6)
	lui	a5,%hi(.LC7)
	addi	a2,a5,%lo(.LC7)
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	bl_printk
	.loc 3 68 16
	li	a5,-1
	j	.L10
.L6:
	.loc 3 71 13
	li	a0,16
	call	pvPortMalloc
	mv	a4,a0
	.loc 3 71 11 discriminator 1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 3 72 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 72 8
	bne	a5,zero,.L11
.LBB38:
.LBB39:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE39:
.LBE38:
	.loc 3 73 16 discriminator 1
	beq	a5,zero,.L13
	.loc 3 73 92 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L14
.L13:
	.loc 3 73 121 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L14:
	.loc 3 73 16 discriminator 7
	li	a4,73
	lui	a5,%hi(.LC6)
	addi	a3,a5,%lo(.LC6)
	lui	a5,%hi(.LC7)
	addi	a2,a5,%lo(.LC7)
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	bl_printk
	.loc 3 74 16
	li	a5,-1
	j	.L10
.L11:
	.loc 3 77 6
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 77 19
	sw	zero,12(a5)
	.loc 3 78 6
	lw	a5,-20(s0)
	lw	s1,0(a5)
	.loc 3 78 21
	li	a0,4
	call	pvPortMalloc
	mv	a5,a0
	.loc 3 78 19 discriminator 1
	sw	a5,12(s1)
	.loc 3 79 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 79 16
	lw	a5,12(a5)
	.loc 3 79 8
	bne	a5,zero,.L15
.LBB40:
.LBB41:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE41:
.LBE40:
	.loc 3 80 16 discriminator 1
	beq	a5,zero,.L17
	.loc 3 80 92 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L18
.L17:
	.loc 3 80 121 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L18:
	.loc 3 80 16 discriminator 7
	li	a4,80
	lui	a5,%hi(.LC6)
	addi	a3,a5,%lo(.LC6)
	lui	a5,%hi(.LC7)
	addi	a2,a5,%lo(.LC7)
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	bl_printk
	.loc 3 81 16
	li	a5,-1
	j	.L10
.L15:
	.loc 3 84 12
	li	a5,0
.L10:
	.loc 3 85 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE62:
	.size	pwm_dev_malloc, .-pwm_dev_malloc
	.section	.text.pwm_dev_setdef,"ax",@progbits
	.align	1
	.type	pwm_dev_setdef, @function
pwm_dev_setdef:
.LFB63:
	.loc 3 88 1
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
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 3 89 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 89 8
	bne	a5,zero,.L20
.LBB42:
.LBB43:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE43:
.LBE42:
	.loc 3 90 16 discriminator 1
	beq	a5,zero,.L22
	.loc 3 90 92 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L23
.L22:
	.loc 3 90 121 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L23:
	.loc 3 90 16 discriminator 7
	li	a4,90
	lui	a5,%hi(.LC6)
	addi	a3,a5,%lo(.LC6)
	lui	a5,%hi(.LC7)
	addi	a2,a5,%lo(.LC7)
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	bl_printk
	.loc 3 91 9
	j	.L19
.L20:
	.loc 3 94 6
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 94 19
	lbu	a4,-21(s0)
	sb	a4,0(a5)
.L19:
	.loc 3 95 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE63:
	.size	pwm_dev_setdef, .-pwm_dev_setdef
	.section	.rodata
	.align	2
.LC10:
	.string	"[%10u][%s: %s:%4d] err.\r\n"
	.section	.text.dev_pwm_init,"ax",@progbits
	.align	1
	.type	dev_pwm_init, @function
dev_pwm_init:
.LFB64:
	.loc 3 98 1
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
	.loc 3 99 17
	sw	zero,-20(s0)
	.loc 3 102 8
	lbu	a4,-33(s0)
	li	a5,2
	bgtu	a4,a5,.L26
	.loc 3 102 19 discriminator 1
	lw	a5,-40(s0)
	bne	a5,zero,.L27
.L26:
.LBB44:
.LBB45:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE45:
.LBE44:
	.loc 3 103 16 discriminator 1
	beq	a5,zero,.L29
	.loc 3 103 92 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L30
.L29:
	.loc 3 103 121 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L30:
	.loc 3 103 16 discriminator 7
	li	a4,103
	lui	a5,%hi(.LC6)
	addi	a3,a5,%lo(.LC6)
	lui	a5,%hi(.LC7)
	addi	a2,a5,%lo(.LC7)
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	bl_printk
	.loc 3 104 16
	li	a5,-1
	j	.L31
.L27:
	.loc 3 107 5
	lbu	a5,-33(s0)
	li	a4,4
	beq	a5,a4,.L32
	li	a4,4
	bgt	a5,a4,.L33
	li	a4,3
	beq	a5,a4,.L34
	li	a4,3
	bgt	a5,a4,.L33
	li	a4,2
	beq	a5,a4,.L35
	li	a4,2
	bgt	a5,a4,.L33
	beq	a5,zero,.L36
	li	a4,1
	beq	a5,a4,.L37
	j	.L33
.L36:
	.loc 3 110 18
	lui	a5,%hi(dev_pwm0)
	addi	a5,a5,%lo(dev_pwm0)
	sw	a5,-20(s0)
	.loc 3 111 11
	j	.L38
.L37:
	.loc 3 114 18
	lui	a5,%hi(dev_pwm1)
	addi	a5,a5,%lo(dev_pwm1)
	sw	a5,-20(s0)
	.loc 3 115 11
	j	.L38
.L35:
	.loc 3 118 18
	lui	a5,%hi(dev_pwm2)
	addi	a5,a5,%lo(dev_pwm2)
	sw	a5,-20(s0)
	.loc 3 119 11
	j	.L38
.L34:
	.loc 3 122 18
	lui	a5,%hi(dev_pwm3)
	addi	a5,a5,%lo(dev_pwm3)
	sw	a5,-20(s0)
	.loc 3 123 11
	j	.L38
.L32:
	.loc 3 126 18
	lui	a5,%hi(dev_pwm4)
	addi	a5,a5,%lo(dev_pwm4)
	sw	a5,-20(s0)
	.loc 3 127 11
	j	.L38
.L33:
.LBB46:
.LBB47:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE47:
.LBE46:
	.loc 3 130 20 discriminator 1
	beq	a5,zero,.L40
	.loc 3 130 92 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L41
.L40:
	.loc 3 130 121 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L41:
	.loc 3 130 20 discriminator 7
	li	a4,130
	lui	a5,%hi(.LC6)
	addi	a3,a5,%lo(.LC6)
	lui	a5,%hi(.LC7)
	addi	a2,a5,%lo(.LC7)
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	bl_printk
	.loc 3 131 20
	li	a5,-1
	j	.L31
.L38:
	.loc 3 135 9
	lw	a0,-20(s0)
	call	pwm_dev_malloc
	mv	a5,a0
	.loc 3 135 8 discriminator 1
	beq	a5,zero,.L42
	.loc 3 136 16
	li	a5,-1
	j	.L31
.L42:
	.loc 3 139 5
	lbu	a5,-33(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	pwm_dev_setdef
	.loc 3 140 11
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a2,a5
	lui	a5,%hi(pwm_ops)
	addi	a1,a5,%lo(pwm_ops)
	lw	a0,-40(s0)
	call	aos_register_driver
	sw	a0,-24(s0)
	.loc 3 141 8
	lw	a5,-24(s0)
	beq	a5,zero,.L43
	.loc 3 142 16
	lw	a5,-24(s0)
	j	.L31
.L43:
	.loc 3 145 12
	li	a5,0
.L31:
	.loc 3 146 1
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
.LFE64:
	.size	dev_pwm_init, .-dev_pwm_init
	.section	.text.hal_pwm_init_bydev,"ax",@progbits
	.align	1
	.globl	hal_pwm_init_bydev
	.type	hal_pwm_init_bydev, @function
hal_pwm_init_bydev:
.LFB65:
	.loc 3 149 1
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
	.loc 3 152 10
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 3 153 9
	lw	a5,-20(s0)
	mv	a0,a5
	call	aos_mutex_new
	mv	a5,a0
	.loc 3 153 8 discriminator 1
	beq	a5,zero,.L45
	.loc 3 155 16
	li	a5,-1
	j	.L46
.L45:
	.loc 3 157 12
	li	a5,0
.L46:
	.loc 3 158 1
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
.LFE65:
	.size	hal_pwm_init_bydev, .-hal_pwm_init_bydev
	.section	.text.hal_pwm_finalize_bydev,"ax",@progbits
	.align	1
	.globl	hal_pwm_finalize_bydev
	.type	hal_pwm_finalize_bydev, @function
hal_pwm_finalize_bydev:
.LFB66:
	.loc 3 161 1
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
	.loc 3 164 10
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 3 165 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	aos_mutex_free
	.loc 3 167 12
	li	a5,0
	.loc 3 168 1
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
.LFE66:
	.size	hal_pwm_finalize_bydev, .-hal_pwm_finalize_bydev
	.section	.rodata
	.align	2
.LC12:
	.string	"\033[32mINFO  \033[0m"
	.align	2
.LC13:
	.string	"[%10u][%s: %s:%4d] pwm[%d] %s NULL.\r\n"
	.align	2
.LC14:
	.string	"status"
	.align	2
.LC15:
	.string	"[%10u][%s: %s:%4d] pwm[%d] status_countindex = %d NULL.\r\n"
	.align	2
.LC16:
	.string	"okay"
	.align	2
.LC17:
	.string	"[%10u][%s: %s:%4d] pwm[%d] status = %s\r\n"
	.align	2
.LC18:
	.string	"path"
	.align	2
.LC19:
	.string	"[%10u][%s: %s:%4d] pwm[%d] path_countindex = %d NULL.\r\n"
	.align	2
.LC20:
	.string	"[%10u][%s: %s:%4d] pwm[%d] path lentmp = %d\r\n"
	.align	2
.LC21:
	.string	"id"
	.align	2
.LC22:
	.string	"[%10u][%s: %s:%4d] pwm[%d] id NULL.\r\n"
	.align	2
.LC23:
	.string	"pin"
	.align	2
.LC24:
	.string	"[%10u][%s: %s:%4d] pwm[%d] pin NULL.\r\n"
	.align	2
.LC25:
	.string	"freq"
	.align	2
.LC26:
	.string	"[%10u][%s: %s:%4d] pwm[%d] freq NULL.\r\n"
	.align	2
.LC27:
	.string	"[%10u][%s: %s:%4d] path = %s, id = %d, pin = %d, freq = %ld\r\n"
	.align	2
.LC28:
	.string	"[%10u][%s: %s:%4d] dev_pwm_init err.\r\n"
	.align	2
.LC0:
	.string	"pwm@4000A420"
	.align	2
.LC1:
	.string	"pwm@4000A440"
	.align	2
.LC2:
	.string	"pwm@4000A460"
	.align	2
.LC3:
	.string	"pwm@4000A480"
	.align	2
.LC4:
	.string	"pwm@4000A4A0"
	.align	2
.LC11:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.section	.text.fdt_pwm_module_init,"ax",@progbits
	.align	1
	.type	fdt_pwm_module_init, @function
fdt_pwm_module_init:
.LFB67:
	.loc 3 174 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	.loc 3 177 9
	sw	zero,-24(s0)
	.loc 3 179 21
	sw	zero,-28(s0)
	.loc 3 180 9
	sw	zero,-52(s0)
	.loc 3 181 17
	sw	zero,-32(s0)
	.loc 3 182 9
	sw	zero,-36(s0)
	.loc 3 186 11
	sw	zero,-40(s0)
	.loc 3 190 17
	lui	a5,%hi(.LC11)
	addi	a5,a5,%lo(.LC11)
	lw	a1,0(a5)
	lw	a2,4(a5)
	lw	a3,8(a5)
	lw	a4,12(a5)
	sw	a1,-72(s0)
	sw	a2,-68(s0)
	sw	a3,-64(s0)
	sw	a4,-60(s0)
	lw	a5,16(a5)
	sw	a5,-56(s0)
	.loc 3 198 12
	sw	zero,-20(s0)
	.loc 3 198 5
	j	.L50
.L92:
	.loc 3 199 19
	lw	a4,-20(s0)
	addi	a5,s0,-72
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a2,a5
	lw	a1,-88(s0)
	lw	a0,-84(s0)
	call	fdt_subnode_offset
	sw	a0,-24(s0)
	.loc 3 200 12
	lw	a5,-24(s0)
	bgt	a5,zero,.L51
.LBB48:
.LBB49:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE49:
.LBE48:
	.loc 3 201 20 discriminator 1
	beq	a5,zero,.L53
	.loc 3 201 104 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L54
.L53:
	.loc 3 201 133 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L54:
	.loc 3 201 20 discriminator 7
	lw	a4,-20(s0)
	addi	a5,s0,-72
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a6,a5
	lw	a5,-20(s0)
	li	a4,201
	lui	a3,%hi(.LC6)
	addi	a3,a3,%lo(.LC6)
	lui	a2,%hi(.LC12)
	addi	a2,a2,%lo(.LC12)
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	call	bl_printk
	.loc 3 202 13
	j	.L55
.L51:
	.loc 3 204 22
	lui	a5,%hi(.LC14)
	addi	a2,a5,%lo(.LC14)
	lw	a1,-24(s0)
	lw	a0,-84(s0)
	call	fdt_stringlist_count
	sw	a0,-36(s0)
	.loc 3 205 12
	lw	a4,-36(s0)
	li	a5,1
	beq	a4,a5,.L56
.LBB50:
.LBB51:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE51:
.LBE50:
	.loc 3 206 20 discriminator 1
	beq	a5,zero,.L58
	.loc 3 206 124 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L59
.L58:
	.loc 3 206 153 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L59:
	.loc 3 206 20 discriminator 7
	lw	a6,-36(s0)
	lw	a5,-20(s0)
	li	a4,206
	lui	a3,%hi(.LC6)
	addi	a3,a3,%lo(.LC6)
	lui	a2,%hi(.LC12)
	addi	a2,a2,%lo(.LC12)
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	call	bl_printk
	.loc 3 207 13
	j	.L55
.L56:
	.loc 3 209 18
	addi	a5,s0,-52
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC14)
	addi	a2,a5,%lo(.LC14)
	lw	a1,-24(s0)
	lw	a0,-84(s0)
	call	fdt_stringlist_get
	sw	a0,-32(s0)
	.loc 3 210 21
	lw	a4,-52(s0)
	.loc 3 210 12
	li	a5,4
	bne	a4,a5,.L60
	.loc 3 210 31 discriminator 1
	li	a2,4
	lw	a1,-32(s0)
	lui	a5,%hi(.LC16)
	addi	a0,a5,%lo(.LC16)
	call	memcmp
	mv	a5,a0
	.loc 3 210 27 discriminator 2
	beq	a5,zero,.L61
.L60:
.LBB52:
.LBB53:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE53:
.LBE52:
	.loc 3 211 20 discriminator 1
	beq	a5,zero,.L63
	.loc 3 211 107 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L64
.L63:
	.loc 3 211 136 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L64:
	.loc 3 211 20 discriminator 7
	lw	a6,-32(s0)
	lw	a5,-20(s0)
	li	a4,211
	lui	a3,%hi(.LC6)
	addi	a3,a3,%lo(.LC6)
	lui	a2,%hi(.LC12)
	addi	a2,a2,%lo(.LC12)
	lui	a0,%hi(.LC17)
	addi	a0,a0,%lo(.LC17)
	call	bl_printk
	.loc 3 212 13
	j	.L55
.L61:
	.loc 3 216 22
	lui	a5,%hi(.LC18)
	addi	a2,a5,%lo(.LC18)
	lw	a1,-24(s0)
	lw	a0,-84(s0)
	call	fdt_stringlist_count
	sw	a0,-36(s0)
	.loc 3 217 12
	lw	a4,-36(s0)
	li	a5,1
	beq	a4,a5,.L65
.LBB54:
.LBB55:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE55:
.LBE54:
	.loc 3 218 20 discriminator 1
	beq	a5,zero,.L67
	.loc 3 218 122 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L68
.L67:
	.loc 3 218 151 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L68:
	.loc 3 218 20 discriminator 7
	lw	a6,-36(s0)
	lw	a5,-20(s0)
	li	a4,218
	lui	a3,%hi(.LC6)
	addi	a3,a3,%lo(.LC6)
	lui	a2,%hi(.LC12)
	addi	a2,a2,%lo(.LC12)
	lui	a0,%hi(.LC19)
	addi	a0,a0,%lo(.LC19)
	call	bl_printk
	.loc 3 219 13
	j	.L55
.L65:
	.loc 3 221 18
	addi	a5,s0,-52
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC18)
	addi	a2,a5,%lo(.LC18)
	lw	a1,-24(s0)
	lw	a0,-84(s0)
	call	fdt_stringlist_get
	sw	a0,-32(s0)
	.loc 3 222 21
	lw	a5,-52(s0)
	.loc 3 222 12
	blt	a5,zero,.L69
	.loc 3 222 37 discriminator 1
	lw	a4,-52(s0)
	.loc 3 222 26 discriminator 1
	li	a5,32
	ble	a4,a5,.L70
.L69:
.LBB56:
.LBB57:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE57:
.LBE56:
	.loc 3 224 20 discriminator 1
	beq	a5,zero,.L72
	.loc 3 224 112 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L73
.L72:
	.loc 3 224 141 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L73:
	.loc 3 224 20 discriminator 7
	lw	a5,-52(s0)
	mv	a6,a5
	lw	a5,-20(s0)
	li	a4,224
	lui	a3,%hi(.LC6)
	addi	a3,a3,%lo(.LC6)
	lui	a2,%hi(.LC12)
	addi	a2,a2,%lo(.LC12)
	lui	a0,%hi(.LC20)
	addi	a0,a0,%lo(.LC20)
	call	bl_printk
.L70:
	.loc 3 226 14
	lw	a5,-32(s0)
	sw	a5,-40(s0)
	.loc 3 229 21
	addi	a5,s0,-52
	mv	a3,a5
	lui	a5,%hi(.LC21)
	addi	a2,a5,%lo(.LC21)
	lw	a1,-24(s0)
	lw	a0,-84(s0)
	call	fdt_getprop
	sw	a0,-28(s0)
	.loc 3 230 12
	lw	a5,-28(s0)
	bne	a5,zero,.L74
.LBB58:
.LBB59:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE59:
.LBE58:
	.loc 3 231 20 discriminator 1
	beq	a5,zero,.L76
	.loc 3 231 104 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L77
.L76:
	.loc 3 231 133 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L77:
	.loc 3 231 20 discriminator 7
	lw	a5,-20(s0)
	li	a4,231
	lui	a3,%hi(.LC6)
	addi	a3,a3,%lo(.LC6)
	lui	a2,%hi(.LC12)
	addi	a2,a2,%lo(.LC12)
	lui	a0,%hi(.LC22)
	addi	a0,a0,%lo(.LC22)
	call	bl_printk
	.loc 3 232 13
	j	.L55
.L74:
	.loc 3 234 24
	lw	a5,-28(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 234 12 discriminator 1
	sb	a5,-41(s0)
	.loc 3 237 21
	addi	a5,s0,-52
	mv	a3,a5
	lui	a5,%hi(.LC23)
	addi	a2,a5,%lo(.LC23)
	lw	a1,-24(s0)
	lw	a0,-84(s0)
	call	fdt_getprop
	sw	a0,-28(s0)
	.loc 3 238 12
	lw	a5,-28(s0)
	bne	a5,zero,.L78
.LBB60:
.LBB61:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE61:
.LBE60:
	.loc 3 239 20 discriminator 1
	beq	a5,zero,.L80
	.loc 3 239 105 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L81
.L80:
	.loc 3 239 134 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L81:
	.loc 3 239 20 discriminator 7
	lw	a5,-20(s0)
	li	a4,239
	lui	a3,%hi(.LC6)
	addi	a3,a3,%lo(.LC6)
	lui	a2,%hi(.LC12)
	addi	a2,a2,%lo(.LC12)
	lui	a0,%hi(.LC24)
	addi	a0,a0,%lo(.LC24)
	call	bl_printk
	.loc 3 240 13
	j	.L55
.L78:
	.loc 3 242 25
	lw	a5,-28(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 242 13 discriminator 1
	sb	a5,-42(s0)
	.loc 3 245 21
	addi	a5,s0,-52
	mv	a3,a5
	lui	a5,%hi(.LC25)
	addi	a2,a5,%lo(.LC25)
	lw	a1,-24(s0)
	lw	a0,-84(s0)
	call	fdt_getprop
	sw	a0,-28(s0)
	.loc 3 246 12
	lw	a5,-28(s0)
	bne	a5,zero,.L82
.LBB62:
.LBB63:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE63:
.LBE62:
	.loc 3 247 20 discriminator 1
	beq	a5,zero,.L84
	.loc 3 247 106 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L85
.L84:
	.loc 3 247 135 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L85:
	.loc 3 247 20 discriminator 7
	lw	a5,-20(s0)
	li	a4,247
	lui	a3,%hi(.LC6)
	addi	a3,a3,%lo(.LC6)
	lui	a2,%hi(.LC12)
	addi	a2,a2,%lo(.LC12)
	lui	a0,%hi(.LC26)
	addi	a0,a0,%lo(.LC26)
	call	bl_printk
	.loc 3 248 13
	j	.L55
.L82:
	.loc 3 250 27
	lw	a5,-28(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	sw	a0,-48(s0)
.LBB64:
.LBB65:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE65:
.LBE64:
	.loc 3 252 16 discriminator 1
	beq	a5,zero,.L87
	.loc 3 252 124 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L88
.L87:
	.loc 3 252 153 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L88:
	.loc 3 252 16 discriminator 7
	lbu	a4,-41(s0)
	lbu	a3,-42(s0)
	lw	a5,-48(s0)
	sw	a5,0(sp)
	mv	a7,a3
	mv	a6,a4
	lw	a5,-40(s0)
	li	a4,252
	lui	a3,%hi(.LC6)
	addi	a3,a3,%lo(.LC6)
	lui	a2,%hi(.LC12)
	addi	a2,a2,%lo(.LC12)
	lui	a0,%hi(.LC27)
	addi	a0,a0,%lo(.LC27)
	call	bl_printk
	.loc 3 254 9
	lbu	a4,-42(s0)
	lbu	a5,-41(s0)
	lw	a2,-48(s0)
	mv	a1,a4
	mv	a0,a5
	call	bl_pwm_init
	.loc 3 255 13
	lbu	a5,-41(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	dev_pwm_init
	mv	a5,a0
	.loc 3 255 12 discriminator 1
	beq	a5,zero,.L55
.LBB66:
.LBB67:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE67:
.LBE66:
	.loc 3 256 20 discriminator 1
	beq	a5,zero,.L90
	.loc 3 256 105 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L91
.L90:
	.loc 3 256 134 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L91:
	.loc 3 256 20 discriminator 7
	li	a4,256
	lui	a5,%hi(.LC6)
	addi	a3,a5,%lo(.LC6)
	lui	a5,%hi(.LC7)
	addi	a2,a5,%lo(.LC7)
	lui	a5,%hi(.LC28)
	addi	a0,a5,%lo(.LC28)
	call	bl_printk
.L55:
	.loc 3 198 25 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L50:
	.loc 3 198 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,4
	ble	a4,a5,.L92
	.loc 3 259 1
	nop
	nop
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE67:
	.size	fdt_pwm_module_init, .-fdt_pwm_module_init
	.section	.text.vfs_pwm_init,"ax",@progbits
	.align	1
	.globl	vfs_pwm_init
	.type	vfs_pwm_init, @function
vfs_pwm_init:
.LFB68:
	.loc 3 262 1
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
	.loc 3 263 16
	lui	a5,%hi(inited)
	lb	a4,%lo(inited)(a5)
	.loc 3 263 8
	li	a5,1
	bne	a4,a5,.L94
	.loc 3 264 16
	li	a5,0
	j	.L95
.L94:
	.loc 3 267 5
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	fdt_pwm_module_init
	.loc 3 269 12
	lui	a5,%hi(inited)
	li	a4,1
	sb	a4,%lo(inited)(a5)
	.loc 3 271 12
	li	a5,0
.L95:
	.loc 3 272 1
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
.LFE68:
	.size	vfs_pwm_init, .-vfs_pwm_init
	.section	.text.hal_pwm_start_bydev,"ax",@progbits
	.align	1
	.globl	hal_pwm_start_bydev
	.type	hal_pwm_start_bydev, @function
hal_pwm_start_bydev:
.LFB69:
	.loc 3 275 1
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
	.loc 3 276 5
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	bl_pwm_start
	.loc 3 277 12
	li	a5,0
	.loc 3 278 1
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
.LFE69:
	.size	hal_pwm_start_bydev, .-hal_pwm_start_bydev
	.section	.text.hal_pwm_stop_bydev,"ax",@progbits
	.align	1
	.globl	hal_pwm_stop_bydev
	.type	hal_pwm_stop_bydev, @function
hal_pwm_stop_bydev:
.LFB70:
	.loc 3 281 1
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
	.loc 3 282 5
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	bl_pwm_stop
	.loc 3 283 12
	li	a5,0
	.loc 3 284 1
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
.LFE70:
	.size	hal_pwm_stop_bydev, .-hal_pwm_stop_bydev
	.section	.text.hal_pwm_para_chg_bydev,"ax",@progbits
	.align	1
	.globl	hal_pwm_para_chg_bydev
	.type	hal_pwm_para_chg_bydev, @function
hal_pwm_para_chg_bydev:
.LFB71:
	.loc 3 287 1
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
	fmv.s	fa5,fa0
	mv	a5,a1
	fsw	fa5,-28(s0)
	sw	a5,-24(s0)
	.loc 3 288 12
	li	a5,0
	.loc 3 289 1
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
.LFE71:
	.size	hal_pwm_para_chg_bydev, .-hal_pwm_para_chg_bydev
	.section	.text.hal_pwm_set_duty_bydev,"ax",@progbits
	.align	1
	.globl	hal_pwm_set_duty_bydev
	.type	hal_pwm_set_duty_bydev, @function
hal_pwm_set_duty_bydev:
.LFB72:
	.loc 3 292 1
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
	fsw	fa0,-24(s0)
	.loc 3 294 5
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	flw	fa0,-24(s0)
	mv	a0,a5
	call	bl_pwm_set_duty
	.loc 3 295 12
	li	a5,0
	.loc 3 296 1
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
.LFE72:
	.size	hal_pwm_set_duty_bydev, .-hal_pwm_set_duty_bydev
	.section	.rodata
	.align	2
.LC29:
	.string	"[%10u][%s: %s:%4d] not support.\r\n"
	.section	.text.hal_pwm_set_freq_bydev,"ax",@progbits
	.align	1
	.globl	hal_pwm_set_freq_bydev
	.type	hal_pwm_set_freq_bydev, @function
hal_pwm_set_freq_bydev:
.LFB73:
	.loc 3 299 1
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
.LBB68:
.LBB69:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE69:
.LBE68:
	.loc 3 300 12 discriminator 1
	beq	a5,zero,.L106
	.loc 3 300 92 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L107
.L106:
	.loc 3 300 121 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L107:
	.loc 3 300 12 discriminator 7
	li	a4,300
	lui	a5,%hi(.LC6)
	addi	a3,a5,%lo(.LC6)
	lui	a5,%hi(.LC7)
	addi	a2,a5,%lo(.LC7)
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	bl_printk
	.loc 3 301 5
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	lw	a1,-24(s0)
	mv	a0,a5
	call	bl_pwm_set_freq
	.loc 3 302 12
	li	a5,0
	.loc 3 303 1
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
.LFE73:
	.size	hal_pwm_set_freq_bydev, .-hal_pwm_set_freq_bydev
	.section	.text.__pwm_duty_adjust,"ax",@progbits
	.align	1
	.type	__pwm_duty_adjust, @function
__pwm_duty_adjust:
.LFB74:
	.loc 3 306 1
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
	.loc 3 307 20
	lw	a4,-36(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	lui	a4,%hi(__g_pwm_dev)
	addi	a4,a4,%lo(__g_pwm_dev)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 3 310 14
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 3 310 8
	bne	a5,zero,.L110
	.loc 3 311 43
	lw	a5,-20(s0)
	mv	a0,a5
	call	utils_list_pop_front
	mv	a4,a0
	.loc 3 311 25 discriminator 1
	lw	a5,-20(s0)
	sw	a4,20(a5)
.L110:
	.loc 3 313 15
	lw	a5,-20(s0)
	lw	a5,20(a5)
	sw	a5,-24(s0)
	.loc 3 313 8
	lw	a5,-24(s0)
	beq	a5,zero,.L115
	.loc 3 317 13
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 3 317 8
	beq	a5,zero,.L109
	.loc 3 318 13
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 3 318 24
	addi	a4,a5,-1
	lw	a5,-24(s0)
	sw	a4,12(a5)
	.loc 3 319 32
	lw	a5,-20(s0)
	flw	fa4,16(a5)
	.loc 3 319 49
	lw	a5,-24(s0)
	flw	fa5,8(a5)
	.loc 3 319 43
	fadd.s	fa5,fa4,fa5
	.loc 3 319 25
	lw	a5,-20(s0)
	fsw	fa5,16(a5)
	.loc 3 321 9
	lw	a5,-36(s0)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	flw	fa5,16(a5)
	fmv.s	fa0,fa5
	mv	a0,a4
	call	bl_pwm_set_duty
	.loc 3 323 17
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 3 323 12
	bne	a5,zero,.L109
	.loc 3 324 22
	lw	a5,-20(s0)
	flw	fa4,16(a5)
	.loc 3 324 40
	lw	a5,-24(s0)
	flw	fa5,4(a5)
	.loc 3 324 16
	feq.s	a5,fa4,fa5
	bne	a5,zero,.L113
	.loc 3 325 21
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 3 325 32
	addi	a4,a5,1
	lw	a5,-24(s0)
	sw	a4,12(a5)
	.loc 3 326 41
	lw	a5,-24(s0)
	flw	fa4,4(a5)
	.loc 3 326 55
	lw	a5,-20(s0)
	flw	fa5,16(a5)
	.loc 3 326 48
	fsub.s	fa5,fa4,fa5
	.loc 3 326 35
	lw	a5,-24(s0)
	fsw	fa5,8(a5)
	j	.L109
.L113:
	.loc 3 328 25
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 3 328 20
	beq	a5,zero,.L114
	.loc 3 329 25
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 3 329 21
	lw	a4,-24(s0)
	lw	a4,20(a4)
	mv	a0,a4
	jalr	a5
.LVL0:
.L114:
	.loc 3 332 51
	lw	a5,-20(s0)
	mv	a0,a5
	call	utils_list_pop_front
	mv	a4,a0
	.loc 3 332 33 discriminator 1
	lw	a5,-20(s0)
	sw	a4,20(a5)
	j	.L109
.L115:
	.loc 3 314 9
	nop
.L109:
	.loc 3 336 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE74:
	.size	__pwm_duty_adjust, .-__pwm_duty_adjust
	.section	.text.__loop_pwm_trigger,"ax",@progbits
	.align	1
	.type	__loop_pwm_trigger, @function
__loop_pwm_trigger:
.LFB75:
	.loc 3 339 1
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
	.loc 3 341 13
	li	a5,1
	sb	a5,-21(s0)
	.loc 3 343 5
	call	vTaskEnterCritical
	.loc 3 344 13
	sw	zero,-20(s0)
	.loc 3 344 5
	j	.L117
.L120:
	.loc 3 345 28
	lui	a5,%hi(__g_pwm_dev)
	addi	a3,a5,%lo(__g_pwm_dev)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	lbu	a5,8(a5)
	.loc 3 345 12
	beq	a5,zero,.L118
	.loc 3 346 13
	lw	a0,-20(s0)
	call	__pwm_duty_adjust
.L118:
	.loc 3 348 28
	lui	a5,%hi(__g_pwm_dev)
	addi	a3,a5,%lo(__g_pwm_dev)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	lw	a5,20(a5)
	.loc 3 348 12
	beq	a5,zero,.L119
	.loc 3 349 18
	sb	zero,-21(s0)
.L119:
	.loc 3 344 28 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L117:
	.loc 3 344 21 discriminator 1
	lw	a4,-20(s0)
	li	a5,4
	ble	a4,a5,.L120
	.loc 3 352 8
	lbu	a5,-21(s0)
	beq	a5,zero,.L121
	.loc 3 353 9
	call	loopset_pwm_trigger_stop
.L121:
	.loc 3 355 5
	call	vTaskExitCritical
	.loc 3 356 1
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
.LFE75:
	.size	__loop_pwm_trigger, .-__loop_pwm_trigger
	.section	.rodata
	.align	2
.LC30:
	.string	"pwm_duty_set finish duty %f\r\n"
	.section	.text.__ev_complete,"ax",@progbits
	.align	1
	.type	__ev_complete, @function
__ev_complete:
.LFB76:
	.loc 3 359 1
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
	.loc 3 360 19
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 3 361 51
	lw	a5,-20(s0)
	flw	fa5,4(a5)
	.loc 3 361 5
	fmv.s	fa0,fa5
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	lui	a5,%hi(.LC30)
	addi	a0,a5,%lo(.LC30)
	call	printf
	.loc 3 362 5
	lw	a0,-20(s0)
	call	vPortFree
	.loc 3 363 1
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
.LFE76:
	.size	__ev_complete, .-__ev_complete
	.section	.text.hal_pwm_start,"ax",@progbits
	.align	1
	.globl	hal_pwm_start
	.type	hal_pwm_start, @function
hal_pwm_start:
.LFB77:
	.loc 3 366 1
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
	.loc 3 367 8
	lbu	a4,-17(s0)
	li	a5,4
	bleu	a4,a5,.L124
	.loc 3 368 16
	li	a5,-1
	j	.L125
.L124:
	.loc 3 371 5
	lbu	a5,-17(s0)
	mv	a0,a5
	call	bl_pwm_start
	.loc 3 372 12
	li	a5,0
.L125:
	.loc 3 373 1
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
.LFE77:
	.size	hal_pwm_start, .-hal_pwm_start
	.section	.text.hal_pwm_stop,"ax",@progbits
	.align	1
	.globl	hal_pwm_stop
	.type	hal_pwm_stop, @function
hal_pwm_stop:
.LFB78:
	.loc 3 376 1
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
	.loc 3 377 8
	lbu	a4,-17(s0)
	li	a5,4
	bleu	a4,a5,.L127
	.loc 3 378 16
	li	a5,-1
	j	.L128
.L127:
	.loc 3 381 5
	lbu	a5,-17(s0)
	mv	a0,a5
	call	bl_pwm_stop
	.loc 3 382 12
	li	a5,0
.L128:
	.loc 3 383 1
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
.LFE78:
	.size	hal_pwm_stop, .-hal_pwm_stop
	.section	.text.__list_last,"ax",@progbits
	.align	1
	.type	__list_last, @function
__list_last:
.LFB79:
	.loc 3 386 1
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
	.loc 3 387 9
	lw	a0,-20(s0)
	call	utils_list_is_empty
	mv	a5,a0
	.loc 3 387 8 discriminator 1
	beq	a5,zero,.L130
	.loc 3 388 15
	li	a5,0
	j	.L131
.L130:
	.loc 3 390 16
	lw	a5,-20(s0)
	lw	a5,4(a5)
.L131:
	.loc 3 391 1
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
.LFE79:
	.size	__list_last, .-__list_last
	.section	.rodata
	.align	2
.LC32:
	.string	"now_duty %f, adjust_duty %f\r\n"
	.section	.text.hal_pwm_duty_set,"ax",@progbits
	.align	1
	.globl	hal_pwm_duty_set
	.type	hal_pwm_duty_set, @function
hal_pwm_duty_set:
.LFB80:
	.loc 3 394 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s2,52(sp)
	sw	s3,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sb	a5,-49(s0)
	.loc 3 399 8
	lbu	a4,-49(s0)
	li	a5,4
	bgtu	a4,a5,.L133
	.loc 3 399 17 discriminator 1
	lw	a4,-56(s0)
	li	a5,8192
	addi	a5,a5,1808
	bleu	a4,a5,.L134
.L133:
	.loc 3 400 16
	li	a5,-1
	j	.L142
.L134:
	.loc 3 403 25
	lbu	a4,-49(s0)
	.loc 3 403 11
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	lui	a4,%hi(__g_pwm_dev)
	addi	a4,a4,%lo(__g_pwm_dev)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 3 405 8
	lw	a5,-60(s0)
	bne	a5,zero,.L136
	.loc 3 406 27
	lw	a5,-56(s0)
	fcvt.s.wu	fa4,a5
	.loc 3 406 39
	lui	a5,%hi(.LC31)
	flw	fa5,%lo(.LC31)(a5)
	fdiv.s	fa5,fa4,fa5
	.loc 3 406 25
	lw	a5,-24(s0)
	fsw	fa5,16(a5)
	.loc 3 407 9
	lw	a5,-24(s0)
	flw	fa5,16(a5)
	lbu	a5,-49(s0)
	fmv.s	fa0,fa5
	mv	a0,a5
	call	bl_pwm_set_duty
	.loc 3 408 16
	li	a5,0
	j	.L142
.L136:
	.loc 3 411 12
	li	a0,24
	call	pvPortMalloc
	sw	a0,-28(s0)
	.loc 3 412 8
	lw	a5,-28(s0)
	bne	a5,zero,.L137
	.loc 3 413 16
	li	a5,-1
	j	.L142
.L137:
	.loc 3 415 5
	li	a2,24
	li	a1,0
	lw	a0,-28(s0)
	call	memset
	.loc 3 417 14
	lw	a5,-24(s0)
	lw	a5,20(a5)
	.loc 3 417 8
	beq	a5,zero,.L138
	.loc 3 418 43
	lw	a5,-24(s0)
	mv	a0,a5
	call	__list_last
	sw	a0,-20(s0)
	.loc 3 418 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L139
	.loc 3 419 23
	lw	a5,-24(s0)
	lw	a5,20(a5)
	sw	a5,-20(s0)
.L139:
	.loc 3 421 29
	lw	a5,-20(s0)
	flw	fa5,4(a5)
	.loc 3 421 18
	fsw	fa5,-36(s0)
	j	.L140
.L138:
	.loc 3 423 9
	addi	a4,s0,-36
	lbu	a5,-49(s0)
	mv	a1,a4
	mv	a0,a5
	call	bl_pwm_get_duty
.L140:
	.loc 3 426 19
	lw	a5,-56(s0)
	fcvt.s.wu	fa4,a5
	.loc 3 426 31
	lui	a5,%hi(.LC31)
	flw	fa5,%lo(.LC31)(a5)
	fdiv.s	fa4,fa4,fa5
	.loc 3 426 37
	flw	fa5,-36(s0)
	.loc 3 426 17
	fsub.s	fa5,fa4,fa5
	fsw	fa5,-32(s0)
	.loc 3 427 31
	lw	a5,-60(s0)
	fcvt.s.wu	fa5,a5
	.loc 3 427 17
	flw	fa4,-32(s0)
	fdiv.s	fa5,fa4,fa5
	fsw	fa5,-32(s0)
	.loc 3 428 8
	flw	fa5,-32(s0)
	fmv.s.x	fa4,zero
	feq.s	a5,fa5,fa4
	beq	a5,zero,.L141
	.loc 3 429 16
	li	a5,0
	j	.L142
.L141:
	.loc 3 432 14
	lw	a5,-28(s0)
	lui	a4,%hi(__ev_complete)
	addi	a4,a4,%lo(__ev_complete)
	sw	a4,16(a5)
	.loc 3 433 17
	lw	a5,-28(s0)
	lw	a4,-28(s0)
	sw	a4,20(a5)
	.loc 3 435 5
	call	vTaskEnterCritical
	.loc 3 436 18
	lw	a5,-56(s0)
	fcvt.s.wu	fa4,a5
	.loc 3 436 30
	lui	a5,%hi(.LC31)
	flw	fa5,%lo(.LC31)(a5)
	fdiv.s	fa5,fa4,fa5
	.loc 3 436 16
	lw	a5,-28(s0)
	fsw	fa5,4(a5)
	.loc 3 437 21
	lw	a5,-28(s0)
	lw	a4,-60(s0)
	sw	a4,12(a5)
	.loc 3 438 23
	lw	a5,-28(s0)
	flw	fa5,-32(s0)
	fsw	fa5,8(a5)
	.loc 3 439 5
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	utils_list_push_back
	.loc 3 440 5
	call	vTaskExitCritical
	.loc 3 442 5
	call	loopset_pwm_trigger_start
	.loc 3 444 5
	flw	fa5,-36(s0)
	fmv.s	fa0,fa5
	call	__extendsfdf2
	mv	s2,a0
	mv	s3,a1
	flw	fa0,-32(s0)
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	mv	a2,s2
	mv	a3,s3
	lui	a1,%hi(.LC32)
	addi	a0,a1,%lo(.LC32)
	call	printf
	.loc 3 446 12
	li	a5,0
.L142:
	.loc 3 447 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s2,52(sp)
	.cfi_restore 18
	lw	s3,48(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE80:
	.size	hal_pwm_duty_set, .-hal_pwm_duty_set
	.section	.text.hal_pwm_duty_get,"ax",@progbits
	.align	1
	.globl	hal_pwm_duty_get
	.type	hal_pwm_duty_get, @function
hal_pwm_duty_get:
.LFB81:
	.loc 3 450 1
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
	.loc 3 452 8
	lbu	a4,-33(s0)
	li	a5,4
	bgtu	a4,a5,.L144
	.loc 3 452 17 discriminator 1
	lw	a5,-40(s0)
	bne	a5,zero,.L145
.L144:
	.loc 3 453 16
	li	a5,-1
	j	.L147
.L145:
	.loc 3 455 5
	addi	a4,s0,-20
	lbu	a5,-33(s0)
	mv	a1,a4
	mv	a0,a5
	call	bl_pwm_get_duty
	.loc 3 456 20
	flw	fa4,-20(s0)
	lui	a5,%hi(.LC31)
	flw	fa5,%lo(.LC31)(a5)
	fmul.s	fa5,fa4,fa5
	.loc 3 456 13
	fcvt.wu.s a4,fa5,rtz
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 3 457 12
	li	a5,0
.L147:
	.loc 3 458 1
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
.LFE81:
	.size	hal_pwm_duty_get, .-hal_pwm_duty_get
	.section	.text.hal_pwm_freq_get,"ax",@progbits
	.align	1
	.globl	hal_pwm_freq_get
	.type	hal_pwm_freq_get, @function
hal_pwm_freq_get:
.LFB82:
	.loc 3 461 1
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
	sw	a1,-24(s0)
	sb	a5,-17(s0)
	.loc 3 462 8
	lbu	a4,-17(s0)
	li	a5,4
	bgtu	a4,a5,.L149
	.loc 3 462 17 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L150
.L149:
	.loc 3 463 16
	li	a5,-1
	j	.L151
.L150:
	.loc 3 465 30
	lbu	a4,-17(s0)
	lui	a5,%hi(__g_pwm_dev)
	addi	a3,a5,%lo(__g_pwm_dev)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	lw	a4,12(a5)
	.loc 3 465 13
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 3 467 12
	li	a5,0
.L151:
	.loc 3 468 1
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
.LFE82:
	.size	hal_pwm_freq_get, .-hal_pwm_freq_get
	.section	.text.hal_pwm_freq_update,"ax",@progbits
	.align	1
	.globl	hal_pwm_freq_update
	.type	hal_pwm_freq_update, @function
hal_pwm_freq_update:
.LFB83:
	.loc 3 471 1
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
	sw	a1,-24(s0)
	sb	a5,-17(s0)
	.loc 3 472 8
	lbu	a4,-17(s0)
	li	a5,4
	bleu	a4,a5,.L153
	.loc 3 473 16
	li	a5,-1
	j	.L154
.L153:
	.loc 3 475 8
	lw	a4,-24(s0)
	li	a5,610
	bleu	a4,a5,.L155
	.loc 3 475 42 discriminator 1
	lw	a4,-24(s0)
	li	a5,401408
	addi	a5,a5,-1408
	bleu	a4,a5,.L156
.L155:
	.loc 3 476 16
	li	a5,-1
	j	.L154
.L156:
	.loc 3 478 20
	lbu	a4,-17(s0)
	.loc 3 478 26
	lui	a5,%hi(__g_pwm_dev)
	addi	a3,a5,%lo(__g_pwm_dev)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	lw	a4,-24(s0)
	sw	a4,12(a5)
	.loc 3 479 5
	lbu	a5,-17(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	bl_pwm_set_freq
	.loc 3 480 5
	lbu	a4,-17(s0)
	lui	a5,%hi(__g_pwm_dev)
	addi	a3,a5,%lo(__g_pwm_dev)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	flw	fa5,16(a5)
	lbu	a5,-17(s0)
	fmv.s	fa0,fa5
	mv	a0,a5
	call	bl_pwm_set_duty
	.loc 3 481 12
	li	a5,0
.L154:
	.loc 3 482 1
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
.LFE83:
	.size	hal_pwm_freq_update, .-hal_pwm_freq_update
	.section	.text.hal_pwm_init,"ax",@progbits
	.align	1
	.globl	hal_pwm_init
	.type	hal_pwm_init, @function
hal_pwm_init:
.LFB84:
	.loc 3 485 1
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
	sw	a1,-24(s0)
	sb	a5,-17(s0)
	.loc 3 486 8
	lbu	a4,-17(s0)
	li	a5,4
	bleu	a4,a5,.L158
	.loc 3 487 16
	li	a5,-1
	j	.L159
.L158:
	.loc 3 490 24
	lbu	a4,-17(s0)
	.loc 3 490 12
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	lui	a4,%hi(__g_pwm_dev)
	addi	a4,a4,%lo(__g_pwm_dev)
	add	a5,a5,a4
	.loc 3 490 5
	li	a2,24
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 3 492 20
	lbu	a4,-17(s0)
	.loc 3 492 28
	lui	a5,%hi(__g_pwm_dev)
	addi	a3,a5,%lo(__g_pwm_dev)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	li	a4,1
	sb	a4,8(a5)
	.loc 3 493 20
	lbu	a4,-17(s0)
	.loc 3 493 26
	lui	a5,%hi(__g_pwm_dev)
	addi	a3,a5,%lo(__g_pwm_dev)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	li	a4,2000
	sw	a4,12(a5)
	.loc 3 495 37
	lbu	a4,-17(s0)
	.loc 3 495 5
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	lui	a4,%hi(__g_pwm_dev)
	addi	a4,a4,%lo(__g_pwm_dev)
	add	a5,a5,a4
	mv	a0,a5
	call	utils_list_init
	.loc 3 496 5
	lw	a5,-24(s0)
	andi	a1,a5,0xff
	lbu	a4,-17(s0)
	lui	a5,%hi(__g_pwm_dev)
	addi	a3,a5,%lo(__g_pwm_dev)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	lw	a4,12(a5)
	lbu	a5,-17(s0)
	mv	a2,a4
	mv	a0,a5
	call	bl_pwm_init
	.loc 3 498 9
	lui	a5,%hi(__g_init_flag)
	lbu	a5,%lo(__g_init_flag)(a5)
	.loc 3 498 8
	bne	a5,zero,.L160
	.loc 3 499 23
	lui	a5,%hi(__g_init_flag)
	li	a4,1
	sb	a4,%lo(__g_init_flag)(a5)
	.loc 3 500 9
	call	loopset_pwm_hook_on_looprt
	.loc 3 501 9
	li	a2,0
	lui	a5,%hi(__loop_pwm_trigger)
	addi	a1,a5,%lo(__loop_pwm_trigger)
	li	a0,1
	call	loopset_pwm_trigger_on
.L160:
	.loc 3 504 12
	li	a5,0
.L159:
	.loc 3 505 1
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
.LFE84:
	.size	hal_pwm_init, .-hal_pwm_init
	.section	.text.hal_pwm_deinit,"ax",@progbits
	.align	1
	.globl	hal_pwm_deinit
	.type	hal_pwm_deinit, @function
hal_pwm_deinit:
.LFB85:
	.loc 3 508 1
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
	.loc 3 509 8
	lbu	a4,-17(s0)
	li	a5,4
	bleu	a4,a5,.L162
	.loc 3 510 16
	li	a5,-1
	j	.L163
.L162:
	.loc 3 512 5
	lbu	a5,-17(s0)
	mv	a0,a5
	call	hal_pwm_stop
	.loc 3 513 5
	li	a2,120
	li	a1,0
	lui	a5,%hi(__g_pwm_dev)
	addi	a0,a5,%lo(__g_pwm_dev)
	call	memset
	.loc 3 514 19
	lui	a5,%hi(__g_init_flag)
	sb	zero,%lo(__g_init_flag)(a5)
	.loc 3 516 5
	call	loopset_pwm_trigger_off
	.loc 3 517 5
	call	loopset_pwm_hook_off_looprt
	.loc 3 519 12
	li	a5,0
.L163:
	.loc 3 520 1
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
.LFE85:
	.size	hal_pwm_deinit, .-hal_pwm_deinit
	.section	.rodata
	.align	2
.LC31:
	.word	1120403456
	.text
.Letext0:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timeval.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timespec.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/types.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/stat.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_dir.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_inode.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/hal/soc/pwm.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/kernel.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/device/vfs_pwm.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/include/loopset_pwm.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 22 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 23 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_pwm.h"
	.file 24 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt.h"
	.file 25 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_register.h"
	.file 26 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.file 27 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1628
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x27
	.4byte	.LASF236
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x5
	.byte	0x22
	.byte	0x15
	.4byte	0x37
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x51
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x6b
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x8a
	.uleb128 0x10
	.4byte	0x79
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x28
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x6
	.byte	0xe5
	.byte	0x16
	.4byte	0x9f
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x4
	.byte	0x1
	.byte	0x26
	.byte	0x8
	.4byte	0xd4
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x1
	.byte	0x28
	.byte	0x1c
	.4byte	0xd4
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0xb9
	.uleb128 0xf
	.4byte	.LASF18
	.byte	0x8
	.byte	0x1
	.byte	0x2b
	.byte	0x8
	.4byte	0x101
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2e
	.byte	0x1c
	.4byte	0xd4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x1
	.byte	0x30
	.byte	0x1c
	.4byte	0xd4
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	0xd9
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x28
	.byte	0x10
	.4byte	0x112
	.uleb128 0x4
	.4byte	0x117
	.uleb128 0x16
	.4byte	0x122
	.uleb128 0x1
	.4byte	0x122
	.byte	0
	.uleb128 0x29
	.byte	0x4
	.uleb128 0xe
	.byte	0x18
	.byte	0x7
	.byte	0x2a
	.byte	0x9
	.4byte	0x17b
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x7
	.byte	0x2b
	.byte	0x1b
	.4byte	0xb9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x7
	.byte	0x2c
	.byte	0xb
	.4byte	0x17b
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x7
	.byte	0x2d
	.byte	0xb
	.4byte	0x17b
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x7
	.byte	0x2e
	.byte	0xe
	.4byte	0x79
	.byte	0xc
	.uleb128 0x19
	.string	"cb"
	.byte	0x7
	.byte	0x2f
	.byte	0x12
	.4byte	0x106
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x7
	.byte	0x30
	.byte	0xb
	.4byte	0x122
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.4byte	.LASF28
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x31
	.byte	0x3
	.4byte	0x124
	.uleb128 0xe
	.byte	0x18
	.byte	0x7
	.byte	0x33
	.byte	0x9
	.4byte	0x1d9
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x7
	.byte	0x34
	.byte	0x17
	.4byte	0xd9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x7
	.byte	0x35
	.byte	0xd
	.4byte	0x5f
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x7
	.byte	0x36
	.byte	0xe
	.4byte	0x79
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x7
	.byte	0x37
	.byte	0xb
	.4byte	0x17b
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x7
	.byte	0x38
	.byte	0x13
	.4byte	0x1d9
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	0x182
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x7
	.byte	0x39
	.byte	0x3
	.4byte	0x18e
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0x4f
	.byte	0x1b
	.4byte	0x8a
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x8
	.byte	0xc8
	.byte	0x17
	.4byte	0x58
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x9
	.byte	0x1e
	.byte	0xe
	.4byte	0x51
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x9
	.byte	0x22
	.byte	0xe
	.4byte	0x51
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x9
	.byte	0x2e
	.byte	0xe
	.4byte	0x51
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x9
	.byte	0x38
	.byte	0xf
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x9
	.byte	0x3c
	.byte	0x18
	.4byte	0x72
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x9
	.byte	0x3f
	.byte	0x18
	.4byte	0x72
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x9
	.byte	0x4b
	.byte	0x18
	.4byte	0x72
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x9
	.byte	0x5a
	.byte	0x14
	.4byte	0x1ea
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x9
	.byte	0x66
	.byte	0x10
	.4byte	0x21a
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x9
	.byte	0x93
	.byte	0x14
	.4byte	0x98
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x9
	.byte	0xd5
	.byte	0x18
	.4byte	0x72
	.uleb128 0x4
	.4byte	0x28b
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF49
	.uleb128 0x10
	.4byte	0x28b
	.uleb128 0x4
	.4byte	0x292
	.uleb128 0x2a
	.4byte	0x297
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0xa
	.byte	0x2a
	.byte	0x19
	.4byte	0x1f6
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x10
	.byte	0xb
	.byte	0x2f
	.byte	0x8
	.4byte	0x2d5
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xb
	.byte	0x30
	.byte	0x9
	.4byte	0x2a1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xb
	.byte	0x31
	.byte	0x7
	.4byte	0x51
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0xc
	.byte	0x61
	.byte	0x14
	.4byte	0x202
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0xc
	.byte	0x66
	.byte	0x15
	.4byte	0x20e
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0xc
	.byte	0x89
	.byte	0x11
	.4byte	0x24a
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0xc
	.byte	0x9b
	.byte	0x11
	.4byte	0x262
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0xc
	.byte	0x9f
	.byte	0x11
	.4byte	0x226
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0xc
	.byte	0xa3
	.byte	0x11
	.4byte	0x232
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xc
	.byte	0xa7
	.byte	0x11
	.4byte	0x23e
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xc
	.byte	0xb6
	.byte	0x12
	.4byte	0x26e
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xc
	.byte	0xbb
	.byte	0x12
	.4byte	0x256
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xc
	.byte	0xc0
	.byte	0x13
	.4byte	0x27a
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x58
	.byte	0xd
	.byte	0x1b
	.byte	0x8
	.4byte	0x411
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0xd
	.byte	0x1d
	.byte	0x9
	.4byte	0x305
	.byte	0
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0xd
	.byte	0x1e
	.byte	0x9
	.4byte	0x2ed
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0xd
	.byte	0x1f
	.byte	0xa
	.4byte	0x335
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0xd
	.byte	0x20
	.byte	0xb
	.4byte	0x341
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0xd
	.byte	0x21
	.byte	0x9
	.4byte	0x311
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0xd
	.byte	0x22
	.byte	0x9
	.4byte	0x31d
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0xd
	.byte	0x23
	.byte	0x9
	.4byte	0x305
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0xd
	.byte	0x24
	.byte	0x9
	.4byte	0x2f9
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0xd
	.byte	0x2a
	.byte	0x13
	.4byte	0x2ad
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0xd
	.byte	0x2b
	.byte	0x13
	.4byte	0x2ad
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0xd
	.byte	0x2c
	.byte	0x13
	.4byte	0x2ad
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0xd
	.byte	0x2d
	.byte	0xd
	.4byte	0x2e1
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0xd
	.byte	0x2e
	.byte	0xc
	.4byte	0x2d5
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF78
	.byte	0xd
	.byte	0x30
	.byte	0x8
	.4byte	0x411
	.byte	0x50
	.byte	0
	.uleb128 0x17
	.4byte	0x51
	.4byte	0x421
	.uleb128 0x1a
	.4byte	0x9f
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x24
	.byte	0xe
	.byte	0x4
	.byte	0x8
	.4byte	0x4a4
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0xe
	.byte	0x5
	.byte	0xa
	.4byte	0x51
	.byte	0
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0xe
	.byte	0x6
	.byte	0xa
	.4byte	0x51
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0xe
	.byte	0x7
	.byte	0xa
	.4byte	0x51
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0xe
	.byte	0x8
	.byte	0xa
	.4byte	0x51
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0xe
	.byte	0x9
	.byte	0xa
	.4byte	0x51
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xe
	.byte	0xa
	.byte	0xa
	.4byte	0x51
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xe
	.byte	0xb
	.byte	0xa
	.4byte	0x51
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0xe
	.byte	0xc
	.byte	0xa
	.4byte	0x51
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0xe
	.byte	0xd
	.byte	0xa
	.4byte	0x51
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0xe
	.byte	0x10
	.byte	0x9
	.4byte	0x4d5
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0xe
	.byte	0x11
	.byte	0x9
	.4byte	0x98
	.byte	0
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0xe
	.byte	0x12
	.byte	0xd
	.4byte	0x5f
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0xe
	.byte	0x13
	.byte	0xa
	.4byte	0x4d5
	.byte	0x5
	.byte	0
	.uleb128 0x17
	.4byte	0x28b
	.4byte	0x4e4
	.uleb128 0x2b
	.4byte	0x9f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0xe
	.byte	0x14
	.byte	0x3
	.4byte	0x4a4
	.uleb128 0xe
	.byte	0x8
	.byte	0xe
	.byte	0x16
	.byte	0x9
	.4byte	0x514
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0xe
	.byte	0x17
	.byte	0x9
	.4byte	0x98
	.byte	0
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0xe
	.byte	0x18
	.byte	0x9
	.4byte	0x98
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0xe
	.byte	0x19
	.byte	0x3
	.4byte	0x4f0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xf
	.byte	0x2c
	.byte	0x1f
	.4byte	0x595
	.uleb128 0xf
	.4byte	.LASF97
	.byte	0x1c
	.byte	0xf
	.byte	0x46
	.byte	0x8
	.4byte	0x595
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xf
	.byte	0x47
	.byte	0xb
	.4byte	0x7d5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0xf
	.byte	0x48
	.byte	0xb
	.4byte	0x7e9
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0xf
	.byte	0x49
	.byte	0xf
	.4byte	0x807
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0xf
	.byte	0x4a
	.byte	0xf
	.4byte	0x82b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0xf
	.byte	0x4b
	.byte	0xb
	.4byte	0x849
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0xf
	.byte	0x4d
	.byte	0xb
	.4byte	0x878
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0xf
	.byte	0x4f
	.byte	0xb
	.4byte	0x7e9
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.4byte	0x52c
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0xf
	.byte	0x2d
	.byte	0x1d
	.4byte	0x6b8
	.uleb128 0xf
	.4byte	.LASF106
	.byte	0x50
	.byte	0xf
	.byte	0x52
	.byte	0x8
	.4byte	0x6b8
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xf
	.byte	0x53
	.byte	0xb
	.4byte	0x896
	.byte	0
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0xf
	.byte	0x54
	.byte	0xb
	.4byte	0x7e9
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0xf
	.byte	0x55
	.byte	0xf
	.4byte	0x8b4
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0xf
	.byte	0x56
	.byte	0xf
	.4byte	0x8d2
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0xf
	.byte	0x57
	.byte	0xd
	.4byte	0x8f0
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0xf
	.byte	0x58
	.byte	0xb
	.4byte	0x7e9
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0xf
	.byte	0x59
	.byte	0xb
	.4byte	0x913
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0xf
	.byte	0x5a
	.byte	0xb
	.4byte	0x92c
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xf
	.byte	0x5b
	.byte	0xb
	.4byte	0x94a
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xf
	.byte	0x5c
	.byte	0x12
	.4byte	0x968
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0xf
	.byte	0x5d
	.byte	0x15
	.4byte	0x986
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0xf
	.byte	0x5e
	.byte	0xb
	.4byte	0x99f
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0xf
	.byte	0x5f
	.byte	0xb
	.4byte	0x92c
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0xf
	.byte	0x60
	.byte	0xb
	.4byte	0x92c
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0xf
	.byte	0x61
	.byte	0xc
	.4byte	0x9b4
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0xf
	.byte	0x62
	.byte	0xc
	.4byte	0x9cd
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0xf
	.byte	0x63
	.byte	0xc
	.4byte	0x9e7
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0xf
	.byte	0x64
	.byte	0xb
	.4byte	0x849
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0xf
	.byte	0x65
	.byte	0xb
	.4byte	0xa0a
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0xf
	.byte	0x66
	.byte	0xb
	.4byte	0x896
	.byte	0x4c
	.byte	0
	.uleb128 0x10
	.4byte	0x5a6
	.uleb128 0x2c
	.4byte	.LASF237
	.byte	0x4
	.byte	0xf
	.byte	0x2f
	.byte	0x7
	.4byte	0x6e1
	.uleb128 0x1c
	.4byte	.LASF119
	.byte	0x30
	.byte	0x17
	.4byte	0x6e1
	.uleb128 0x1c
	.4byte	.LASF120
	.byte	0x31
	.byte	0x15
	.4byte	0x6e6
	.byte	0
	.uleb128 0x4
	.4byte	0x520
	.uleb128 0x4
	.4byte	0x59a
	.uleb128 0xe
	.byte	0x14
	.byte	0xf
	.byte	0x35
	.byte	0x9
	.4byte	0x743
	.uleb128 0x19
	.string	"ops"
	.byte	0xf
	.byte	0x36
	.byte	0x17
	.4byte	0x6bd
	.byte	0
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0xf
	.byte	0x37
	.byte	0xb
	.4byte	0x122
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0xf
	.byte	0x38
	.byte	0xb
	.4byte	0x286
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0xf
	.byte	0x39
	.byte	0x9
	.4byte	0x98
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0xf
	.byte	0x3a
	.byte	0xd
	.4byte	0x5f
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0xf
	.byte	0x3b
	.byte	0xd
	.4byte	0x5f
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0xf
	.byte	0x3c
	.byte	0x3
	.4byte	0x6eb
	.uleb128 0xe
	.byte	0xc
	.byte	0xf
	.byte	0x3e
	.byte	0x9
	.4byte	0x780
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0xf
	.byte	0x3f
	.byte	0xe
	.4byte	0x780
	.byte	0
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0xf
	.byte	0x40
	.byte	0xb
	.4byte	0x122
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0xf
	.byte	0x41
	.byte	0xc
	.4byte	0xa6
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x743
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0xf
	.byte	0x42
	.byte	0x3
	.4byte	0x74f
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0xf
	.byte	0x45
	.byte	0x10
	.4byte	0x79d
	.uleb128 0x4
	.4byte	0x7a2
	.uleb128 0x16
	.4byte	0x7b2
	.uleb128 0x1
	.4byte	0x7b2
	.uleb128 0x1
	.4byte	0x122
	.byte	0
	.uleb128 0x4
	.4byte	0x7b7
	.uleb128 0x2d
	.4byte	.LASF238
	.uleb128 0x6
	.4byte	0x98
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x780
	.uleb128 0x1
	.4byte	0x7d0
	.byte	0
	.uleb128 0x4
	.4byte	0x785
	.uleb128 0x4
	.4byte	0x7bc
	.uleb128 0x6
	.4byte	0x98
	.4byte	0x7e9
	.uleb128 0x1
	.4byte	0x7d0
	.byte	0
	.uleb128 0x4
	.4byte	0x7da
	.uleb128 0x6
	.4byte	0x329
	.4byte	0x807
	.uleb128 0x1
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x122
	.uleb128 0x1
	.4byte	0xa6
	.byte	0
	.uleb128 0x4
	.4byte	0x7ee
	.uleb128 0x6
	.4byte	0x329
	.4byte	0x825
	.uleb128 0x1
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x825
	.uleb128 0x1
	.4byte	0xa6
	.byte	0
	.uleb128 0x4
	.4byte	0x82a
	.uleb128 0x2e
	.uleb128 0x4
	.4byte	0x80c
	.uleb128 0x6
	.4byte	0x98
	.4byte	0x849
	.uleb128 0x1
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x98
	.uleb128 0x1
	.4byte	0x8a
	.byte	0
	.uleb128 0x4
	.4byte	0x830
	.uleb128 0x6
	.4byte	0x98
	.4byte	0x871
	.uleb128 0x1
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x871
	.uleb128 0x1
	.4byte	0x791
	.uleb128 0x1
	.4byte	0x7b2
	.uleb128 0x1
	.4byte	0x122
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x2
	.4byte	.LASF132
	.uleb128 0x4
	.4byte	0x84e
	.uleb128 0x6
	.4byte	0x98
	.4byte	0x896
	.uleb128 0x1
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x297
	.uleb128 0x1
	.4byte	0x98
	.byte	0
	.uleb128 0x4
	.4byte	0x87d
	.uleb128 0x6
	.4byte	0x329
	.4byte	0x8b4
	.uleb128 0x1
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x286
	.uleb128 0x1
	.4byte	0xa6
	.byte	0
	.uleb128 0x4
	.4byte	0x89b
	.uleb128 0x6
	.4byte	0x329
	.4byte	0x8d2
	.uleb128 0x1
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x297
	.uleb128 0x1
	.4byte	0xa6
	.byte	0
	.uleb128 0x4
	.4byte	0x8b9
	.uleb128 0x6
	.4byte	0x2f9
	.4byte	0x8f0
	.uleb128 0x1
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x2f9
	.uleb128 0x1
	.4byte	0x98
	.byte	0
	.uleb128 0x4
	.4byte	0x8d7
	.uleb128 0x6
	.4byte	0x98
	.4byte	0x90e
	.uleb128 0x1
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x297
	.uleb128 0x1
	.4byte	0x90e
	.byte	0
	.uleb128 0x4
	.4byte	0x34d
	.uleb128 0x4
	.4byte	0x8f5
	.uleb128 0x6
	.4byte	0x98
	.4byte	0x92c
	.uleb128 0x1
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x297
	.byte	0
	.uleb128 0x4
	.4byte	0x918
	.uleb128 0x6
	.4byte	0x98
	.4byte	0x94a
	.uleb128 0x1
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x297
	.uleb128 0x1
	.4byte	0x297
	.byte	0
	.uleb128 0x4
	.4byte	0x931
	.uleb128 0x6
	.4byte	0x963
	.4byte	0x963
	.uleb128 0x1
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x297
	.byte	0
	.uleb128 0x4
	.4byte	0x514
	.uleb128 0x4
	.4byte	0x94f
	.uleb128 0x6
	.4byte	0x981
	.4byte	0x981
	.uleb128 0x1
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x963
	.byte	0
	.uleb128 0x4
	.4byte	0x4e4
	.uleb128 0x4
	.4byte	0x96d
	.uleb128 0x6
	.4byte	0x98
	.4byte	0x99f
	.uleb128 0x1
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x963
	.byte	0
	.uleb128 0x4
	.4byte	0x98b
	.uleb128 0x16
	.4byte	0x9b4
	.uleb128 0x1
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x963
	.byte	0
	.uleb128 0x4
	.4byte	0x9a4
	.uleb128 0x6
	.4byte	0x51
	.4byte	0x9cd
	.uleb128 0x1
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x963
	.byte	0
	.uleb128 0x4
	.4byte	0x9b9
	.uleb128 0x16
	.4byte	0x9e7
	.uleb128 0x1
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x963
	.uleb128 0x1
	.4byte	0x51
	.byte	0
	.uleb128 0x4
	.4byte	0x9d2
	.uleb128 0x6
	.4byte	0x98
	.4byte	0xa05
	.uleb128 0x1
	.4byte	0x7d0
	.uleb128 0x1
	.4byte	0x297
	.uleb128 0x1
	.4byte	0xa05
	.byte	0
	.uleb128 0x4
	.4byte	0x421
	.uleb128 0x4
	.4byte	0x9ec
	.uleb128 0x1d
	.4byte	.LASF144
	.byte	0x12
	.byte	0x15
	.byte	0x1e
	.4byte	0x595
	.uleb128 0xe
	.byte	0x8
	.byte	0x10
	.byte	0x8
	.byte	0x9
	.4byte	0xa3f
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0x10
	.byte	0x9
	.byte	0xb
	.4byte	0x17b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x10
	.byte	0xa
	.byte	0xe
	.4byte	0x79
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0x10
	.byte	0xb
	.byte	0x3
	.4byte	0xa1b
	.uleb128 0xe
	.byte	0x10
	.byte	0x10
	.byte	0xd
	.byte	0x9
	.4byte	0xa7c
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0x10
	.byte	0xe
	.byte	0xd
	.4byte	0x5f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0x10
	.byte	0xf
	.byte	0x12
	.4byte	0xa3f
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x10
	.byte	0x10
	.byte	0xb
	.4byte	0x122
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF138
	.byte	0x10
	.byte	0x11
	.byte	0x3
	.4byte	0xa4b
	.uleb128 0xe
	.byte	0x4
	.byte	0x11
	.byte	0x16
	.byte	0xd
	.4byte	0xa9f
	.uleb128 0x19
	.string	"hdl"
	.byte	0x11
	.byte	0x18
	.byte	0xf
	.4byte	0x122
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0x11
	.byte	0x19
	.byte	0x7
	.4byte	0xa88
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0x11
	.byte	0x1c
	.byte	0x17
	.4byte	0xa9f
	.uleb128 0x3
	.4byte	.LASF141
	.byte	0x2
	.byte	0x63
	.byte	0x12
	.4byte	0x79
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0x4
	.byte	0x3f
	.byte	0x11
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0x79
	.uleb128 0x1d
	.4byte	.LASF145
	.byte	0x4
	.byte	0x5c
	.byte	0x13
	.4byte	0xac3
	.uleb128 0x4
	.4byte	0x79
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0x13
	.byte	0x23
	.byte	0x10
	.4byte	0x112
	.uleb128 0x5
	.4byte	.LASF147
	.byte	0x32
	.byte	0x10
	.4byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__g_init_flag
	.uleb128 0x17
	.4byte	0x1de
	.4byte	0xb19
	.uleb128 0x1a
	.4byte	0x9f
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF148
	.byte	0x33
	.byte	0x16
	.4byte	0xb09
	.uleb128 0x5
	.byte	0x3
	.4byte	__g_pwm_dev
	.uleb128 0xf
	.4byte	.LASF149
	.byte	0x4
	.byte	0x3
	.byte	0x35
	.byte	0x10
	.4byte	0xb45
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0x3
	.byte	0x36
	.byte	0x11
	.4byte	0xaab
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF151
	.byte	0x3
	.byte	0x37
	.byte	0x3
	.4byte	0xb2a
	.uleb128 0x5
	.4byte	.LASF152
	.byte	0x39
	.byte	0xf
	.4byte	0x2b
	.uleb128 0x5
	.byte	0x3
	.4byte	inited
	.uleb128 0x5
	.4byte	.LASF153
	.byte	0x3a
	.byte	0x13
	.4byte	0xb73
	.uleb128 0x5
	.byte	0x3
	.4byte	dev_pwm0
	.uleb128 0x4
	.4byte	0xa7c
	.uleb128 0x5
	.4byte	.LASF154
	.byte	0x3b
	.byte	0x13
	.4byte	0xb73
	.uleb128 0x5
	.byte	0x3
	.4byte	dev_pwm1
	.uleb128 0x5
	.4byte	.LASF155
	.byte	0x3c
	.byte	0x13
	.4byte	0xb73
	.uleb128 0x5
	.byte	0x3
	.4byte	dev_pwm2
	.uleb128 0x5
	.4byte	.LASF156
	.byte	0x3d
	.byte	0x13
	.4byte	0xb73
	.uleb128 0x5
	.byte	0x3
	.4byte	dev_pwm3
	.uleb128 0x5
	.4byte	.LASF157
	.byte	0x3e
	.byte	0x13
	.4byte	0xb73
	.uleb128 0x5
	.byte	0x3
	.4byte	dev_pwm4
	.uleb128 0x1e
	.4byte	.LASF158
	.byte	0x26
	.4byte	0x98
	.uleb128 0x13
	.4byte	.LASF162
	.byte	0x13
	.byte	0x2c
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0x13
	.byte	0x2b
	.byte	0x6
	.4byte	0xbea
	.uleb128 0x1
	.4byte	0x9f
	.uleb128 0x1
	.4byte	0xaec
	.uleb128 0x1
	.4byte	0x122
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF159
	.byte	0x25
	.4byte	0x98
	.uleb128 0x11
	.4byte	.LASF161
	.byte	0x1
	.byte	0x3e
	.byte	0x6
	.4byte	0xc06
	.uleb128 0x1
	.4byte	0xc06
	.byte	0
	.uleb128 0x4
	.4byte	0xd9
	.uleb128 0x13
	.4byte	.LASF163
	.byte	0x13
	.byte	0x29
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.4byte	0xc2a
	.uleb128 0x1
	.4byte	0xc06
	.uleb128 0x1
	.4byte	0xd4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF165
	.byte	0x3
	.2byte	0x1d2
	.byte	0xd
	.4byte	0x45
	.4byte	0xc46
	.uleb128 0x1
	.4byte	0x5f
	.uleb128 0x1
	.4byte	0xc46
	.byte	0
	.uleb128 0x4
	.4byte	0x17b
	.uleb128 0xa
	.4byte	.LASF166
	.byte	0x14
	.byte	0x21
	.byte	0x8
	.4byte	0x122
	.4byte	0xc6b
	.uleb128 0x1
	.4byte	0x122
	.uleb128 0x1
	.4byte	0x98
	.uleb128 0x1
	.4byte	0xa6
	.byte	0
	.uleb128 0x11
	.4byte	.LASF167
	.byte	0x15
	.byte	0xa4
	.byte	0x6
	.4byte	0xc7d
	.uleb128 0x1
	.4byte	0x122
	.byte	0
	.uleb128 0xa
	.4byte	.LASF168
	.byte	0x16
	.byte	0xce
	.byte	0x5
	.4byte	0x98
	.4byte	0xc94
	.uleb128 0x1
	.4byte	0x29c
	.uleb128 0x1f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF169
	.byte	0x4
	.byte	0x67
	.byte	0xd
	.uleb128 0x13
	.4byte	.LASF170
	.byte	0x13
	.byte	0x28
	.byte	0x6
	.uleb128 0x13
	.4byte	.LASF171
	.byte	0x4
	.byte	0x66
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF172
	.byte	0x1
	.byte	0x6a
	.byte	0x18
	.4byte	0xd4
	.4byte	0xcc2
	.uleb128 0x1
	.4byte	0xc06
	.byte	0
	.uleb128 0xa
	.4byte	.LASF173
	.byte	0x17
	.byte	0x2a
	.byte	0x9
	.4byte	0x45
	.4byte	0xcdd
	.uleb128 0x1
	.4byte	0x5f
	.uleb128 0x1
	.4byte	0x79
	.byte	0
	.uleb128 0xa
	.4byte	.LASF174
	.byte	0x17
	.byte	0x2b
	.byte	0x9
	.4byte	0x45
	.4byte	0xcf8
	.uleb128 0x1
	.4byte	0x5f
	.uleb128 0x1
	.4byte	0x17b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF175
	.byte	0x17
	.byte	0x29
	.byte	0x9
	.4byte	0x45
	.4byte	0xd0e
	.uleb128 0x1
	.4byte	0x5f
	.byte	0
	.uleb128 0xa
	.4byte	.LASF176
	.byte	0x17
	.byte	0x28
	.byte	0x9
	.4byte	0x45
	.4byte	0xd24
	.uleb128 0x1
	.4byte	0x5f
	.byte	0
	.uleb128 0xa
	.4byte	.LASF177
	.byte	0x17
	.byte	0x27
	.byte	0x9
	.4byte	0x45
	.4byte	0xd44
	.uleb128 0x1
	.4byte	0x5f
	.uleb128 0x1
	.4byte	0x5f
	.uleb128 0x1
	.4byte	0x79
	.byte	0
	.uleb128 0x14
	.4byte	.LASF178
	.byte	0x18
	.2byte	0x311
	.byte	0xd
	.4byte	0x825
	.4byte	0xd6a
	.uleb128 0x1
	.4byte	0x825
	.uleb128 0x1
	.4byte	0x98
	.uleb128 0x1
	.4byte	0x297
	.uleb128 0x1
	.4byte	0xd6a
	.byte	0
	.uleb128 0x4
	.4byte	0x98
	.uleb128 0xa
	.4byte	.LASF179
	.byte	0x14
	.byte	0x1e
	.byte	0x5
	.4byte	0x98
	.4byte	0xd8f
	.uleb128 0x1
	.4byte	0x825
	.uleb128 0x1
	.4byte	0x825
	.uleb128 0x1
	.4byte	0xa6
	.byte	0
	.uleb128 0x14
	.4byte	.LASF180
	.byte	0x18
	.2byte	0x470
	.byte	0xd
	.4byte	0x297
	.4byte	0xdba
	.uleb128 0x1
	.4byte	0x825
	.uleb128 0x1
	.4byte	0x98
	.uleb128 0x1
	.4byte	0x297
	.uleb128 0x1
	.4byte	0x98
	.uleb128 0x1
	.4byte	0xd6a
	.byte	0
	.uleb128 0x14
	.4byte	.LASF181
	.byte	0x18
	.2byte	0x440
	.byte	0x5
	.4byte	0x98
	.4byte	0xddb
	.uleb128 0x1
	.4byte	0x825
	.uleb128 0x1
	.4byte	0x98
	.uleb128 0x1
	.4byte	0x297
	.byte	0
	.uleb128 0x14
	.4byte	.LASF182
	.byte	0x18
	.2byte	0x1de
	.byte	0x5
	.4byte	0x98
	.4byte	0xdfc
	.uleb128 0x1
	.4byte	0x825
	.uleb128 0x1
	.4byte	0x98
	.uleb128 0x1
	.4byte	0x297
	.byte	0
	.uleb128 0x11
	.4byte	.LASF183
	.byte	0x11
	.byte	0x9c
	.byte	0xa
	.4byte	0xe0e
	.uleb128 0x1
	.4byte	0xe0e
	.byte	0
	.uleb128 0x4
	.4byte	0xaab
	.uleb128 0xa
	.4byte	.LASF184
	.byte	0x11
	.byte	0x94
	.byte	0x9
	.4byte	0x98
	.4byte	0xe29
	.uleb128 0x1
	.4byte	0xe0e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF185
	.byte	0x19
	.byte	0xe
	.byte	0x5
	.4byte	0x98
	.4byte	0xe49
	.uleb128 0x1
	.4byte	0x297
	.uleb128 0x1
	.4byte	0x6e1
	.uleb128 0x1
	.4byte	0x122
	.byte	0
	.uleb128 0xa
	.4byte	.LASF186
	.byte	0x15
	.byte	0xa3
	.byte	0x7
	.4byte	0x122
	.4byte	0xe5f
	.uleb128 0x1
	.4byte	0xa6
	.byte	0
	.uleb128 0x11
	.4byte	.LASF187
	.byte	0x1a
	.byte	0x9e
	.byte	0x6
	.4byte	0xe72
	.uleb128 0x1
	.4byte	0x297
	.uleb128 0x1f
	.byte	0
	.uleb128 0x20
	.4byte	.LASF188
	.2byte	0x54c
	.4byte	0xacf
	.uleb128 0x20
	.4byte	.LASF189
	.2byte	0x55d
	.4byte	0xacf
	.uleb128 0xb
	.4byte	.LASF190
	.2byte	0x1fb
	.byte	0x5
	.4byte	0x98
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb1
	.uleb128 0x7
	.string	"id"
	.2byte	0x1fb
	.byte	0x1c
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xb
	.4byte	.LASF191
	.2byte	0x1e4
	.byte	0x5
	.4byte	0x98
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee9
	.uleb128 0x7
	.string	"id"
	.2byte	0x1e4
	.byte	0x1a
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x7
	.string	"pin"
	.2byte	0x1e4
	.byte	0x22
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF192
	.2byte	0x1d6
	.byte	0x5
	.4byte	0x98
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf21
	.uleb128 0x7
	.string	"id"
	.2byte	0x1d6
	.byte	0x21
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xc
	.4byte	.LASF32
	.2byte	0x1d6
	.byte	0x2e
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.4byte	.LASF193
	.2byte	0x1cc
	.byte	0x5
	.4byte	0x98
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf71
	.uleb128 0x7
	.string	"id"
	.2byte	0x1cc
	.byte	0x1e
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xc
	.4byte	.LASF194
	.2byte	0x1cc
	.byte	0x2c
	.4byte	0xae7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.4byte	.LASF165
	.byte	0x3
	.2byte	0x1d2
	.byte	0xd
	.4byte	0x45
	.uleb128 0x1
	.4byte	0x5f
	.uleb128 0x1
	.4byte	0xc46
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF195
	.2byte	0x1c1
	.byte	0x5
	.4byte	0x98
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb8
	.uleb128 0x7
	.string	"id"
	.2byte	0x1c1
	.byte	0x1e
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xc
	.4byte	.LASF196
	.2byte	0x1c1
	.byte	0x2c
	.4byte	0xae7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	.LASF24
	.2byte	0x1c3
	.byte	0xb
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF197
	.2byte	0x189
	.byte	0x5
	.4byte	0x98
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x104a
	.uleb128 0x7
	.string	"id"
	.2byte	0x189
	.byte	0x1e
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0xc
	.4byte	.LASF24
	.2byte	0x189
	.byte	0x2b
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.4byte	.LASF198
	.2byte	0x189
	.byte	0x3a
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xd
	.4byte	.LASF33
	.2byte	0x18b
	.byte	0xb
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LASF25
	.2byte	0x18b
	.byte	0x15
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.4byte	.LASF199
	.2byte	0x18c
	.byte	0x14
	.4byte	0x104a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF200
	.2byte	0x18d
	.byte	0x13
	.4byte	0x1d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LASF201
	.2byte	0x18d
	.byte	0x1a
	.4byte	0x1d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	0x1de
	.uleb128 0x30
	.4byte	.LASF229
	.byte	0x3
	.2byte	0x181
	.byte	0x20
	.4byte	0xd4
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x107a
	.uleb128 0xc
	.4byte	.LASF202
	.2byte	0x181
	.byte	0x40
	.4byte	0xc06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF203
	.2byte	0x177
	.byte	0x5
	.4byte	0x98
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10a3
	.uleb128 0x7
	.string	"id"
	.2byte	0x177
	.byte	0x1a
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xb
	.4byte	.LASF204
	.2byte	0x16d
	.byte	0x5
	.4byte	0x98
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10cc
	.uleb128 0x7
	.string	"id"
	.2byte	0x16d
	.byte	0x1b
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF205
	.2byte	0x166
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1100
	.uleb128 0xc
	.4byte	.LASF27
	.2byte	0x166
	.byte	0x22
	.4byte	0x122
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LASF200
	.2byte	0x168
	.byte	0x13
	.4byte	0x1d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF206
	.2byte	0x152
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1143
	.uleb128 0xc
	.4byte	.LASF27
	.2byte	0x152
	.byte	0x37
	.4byte	0x122
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"id"
	.byte	0x3
	.2byte	0x154
	.byte	0x9
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF207
	.2byte	0x155
	.byte	0xd
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF208
	.2byte	0x131
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1185
	.uleb128 0x7
	.string	"id"
	.2byte	0x131
	.byte	0x24
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LASF199
	.2byte	0x133
	.byte	0x14
	.4byte	0x104a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF200
	.2byte	0x134
	.byte	0x13
	.4byte	0x1d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF209
	.2byte	0x12a
	.byte	0x9
	.4byte	0x45
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ce
	.uleb128 0x7
	.string	"pwm"
	.2byte	0x12a
	.byte	0x2b
	.4byte	0xb73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF32
	.2byte	0x12a
	.byte	0x39
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.4byte	0x15c2
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.2byte	0x12c
	.byte	0x41
	.byte	0
	.uleb128 0xb
	.4byte	.LASF210
	.2byte	0x123
	.byte	0x9
	.4byte	0x45
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1207
	.uleb128 0x7
	.string	"pwm"
	.2byte	0x123
	.byte	0x2b
	.4byte	0xb73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF24
	.2byte	0x123
	.byte	0x36
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.4byte	.LASF211
	.2byte	0x11e
	.byte	0x9
	.4byte	0x45
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1240
	.uleb128 0x7
	.string	"pwm"
	.2byte	0x11e
	.byte	0x3b
	.4byte	0xb73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF212
	.2byte	0x11e
	.byte	0x5d
	.4byte	0xa3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF213
	.2byte	0x118
	.byte	0x9
	.4byte	0x45
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x126a
	.uleb128 0x7
	.string	"pwm"
	.2byte	0x118
	.byte	0x27
	.4byte	0xb73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF214
	.2byte	0x112
	.byte	0x9
	.4byte	0x45
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1294
	.uleb128 0x7
	.string	"pwm"
	.2byte	0x112
	.byte	0x28
	.4byte	0xb73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF215
	.2byte	0x105
	.byte	0x9
	.4byte	0x45
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12cd
	.uleb128 0x7
	.string	"fdt"
	.2byte	0x105
	.byte	0x1f
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF216
	.2byte	0x105
	.byte	0x2d
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.4byte	.LASF217
	.byte	0xad
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1431
	.uleb128 0x12
	.string	"fdt"
	.byte	0x3
	.byte	0xad
	.byte	0x2d
	.4byte	0x825
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x15
	.4byte	.LASF218
	.byte	0x3
	.byte	0xad
	.byte	0x36
	.4byte	0x98
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x5
	.4byte	.LASF219
	.byte	0xb1
	.byte	0x9
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF220
	.byte	0xb3
	.byte	0x15
	.4byte	0x1431
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF221
	.byte	0xb4
	.byte	0x9
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LASF222
	.byte	0xb5
	.byte	0x11
	.4byte	0x297
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF223
	.byte	0xb6
	.byte	0x9
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"i"
	.byte	0xb7
	.byte	0x9
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"id"
	.byte	0xb9
	.byte	0xd
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x5
	.4byte	.LASF224
	.byte	0xba
	.byte	0xb
	.4byte	0x286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"pin"
	.byte	0xbb
	.byte	0xd
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0xbc
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LASF225
	.byte	0xbe
	.byte	0x11
	.4byte	0x1436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.4byte	0x15c2
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.byte	0xc9
	.byte	0x4d
	.uleb128 0x8
	.4byte	0x15c2
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0xce
	.byte	0x61
	.uleb128 0x8
	.4byte	0x15c2
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0xd3
	.byte	0x50
	.uleb128 0x8
	.4byte	0x15c2
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0xda
	.byte	0x5f
	.uleb128 0x8
	.4byte	0x15c2
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0xe0
	.byte	0x55
	.uleb128 0x8
	.4byte	0x15c2
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0xe7
	.byte	0x4d
	.uleb128 0x8
	.4byte	0x15c2
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.byte	0xef
	.byte	0x4e
	.uleb128 0x8
	.4byte	0x15c2
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.byte	0xf7
	.byte	0x4f
	.uleb128 0x8
	.4byte	0x15c2
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.byte	0xfc
	.byte	0x61
	.uleb128 0x22
	.4byte	0x15c2
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.2byte	0x100
	.byte	0x4e
	.byte	0
	.uleb128 0x4
	.4byte	0x85
	.uleb128 0x17
	.4byte	0x297
	.4byte	0x1446
	.uleb128 0x1a
	.4byte	0x9f
	.byte	0x4
	.byte	0
	.uleb128 0x24
	.4byte	.LASF226
	.byte	0xa0
	.4byte	0x45
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x147c
	.uleb128 0x12
	.string	"pwm"
	.byte	0x3
	.byte	0xa0
	.byte	0x2b
	.4byte	0xb73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF227
	.byte	0xa2
	.byte	0x16
	.4byte	0x147c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	0xb45
	.uleb128 0x24
	.4byte	.LASF228
	.byte	0x94
	.4byte	0x45
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14b7
	.uleb128 0x12
	.string	"pwm"
	.byte	0x3
	.byte	0x94
	.byte	0x27
	.4byte	0xb73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF227
	.byte	0x96
	.byte	0x16
	.4byte	0x147c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.4byte	.LASF230
	.byte	0x61
	.4byte	0x98
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1527
	.uleb128 0x12
	.string	"id"
	.byte	0x3
	.byte	0x61
	.byte	0x21
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x15
	.4byte	.LASF224
	.byte	0x3
	.byte	0x61
	.byte	0x31
	.4byte	0x297
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF231
	.byte	0x63
	.byte	0x11
	.4byte	0x1527
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"ret"
	.byte	0x64
	.byte	0x9
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	0x15c2
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x67
	.byte	0x41
	.uleb128 0x8
	.4byte	0x15c2
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x82
	.byte	0x41
	.byte	0
	.uleb128 0x4
	.4byte	0xb73
	.uleb128 0x23
	.4byte	.LASF232
	.byte	0x57
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x156d
	.uleb128 0x15
	.4byte	.LASF231
	.byte	0x3
	.byte	0x57
	.byte	0x28
	.4byte	0x1527
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"id"
	.byte	0x3
	.byte	0x57
	.byte	0x36
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x8
	.4byte	0x15c2
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x5a
	.byte	0x41
	.byte	0
	.uleb128 0x25
	.4byte	.LASF233
	.byte	0x40
	.4byte	0x98
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15c2
	.uleb128 0x15
	.4byte	.LASF231
	.byte	0x3
	.byte	0x40
	.byte	0x27
	.4byte	0x1527
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	0x15c2
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x43
	.byte	0x41
	.uleb128 0x8
	.4byte	0x15c2
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x49
	.byte	0x41
	.uleb128 0x8
	.4byte	0x15c2
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x50
	.byte	0x41
	.byte	0
	.uleb128 0x32
	.4byte	.LASF239
	.byte	0x4
	.byte	0xb3
	.byte	0x3a
	.4byte	0xac3
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF234
	.byte	0x2
	.byte	0x78
	.byte	0x18
	.4byte	0x79
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15f7
	.uleb128 0x12
	.string	"x"
	.byte	0x2
	.byte	0x78
	.byte	0x2d
	.4byte	0xab7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.4byte	.LASF235
	.byte	0x1
	.byte	0xdc
	.byte	0x13
	.4byte	0x98
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1621
	.uleb128 0x15
	.4byte	.LASF202
	.byte	0x1
	.byte	0xdc
	.byte	0x46
	.4byte	0x1626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	0x101
	.uleb128 0x10
	.4byte	0x1621
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x8
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
	.sleb128 3
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 19
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
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 27
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
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.sleb128 3
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x17
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
	.uleb128 0x2d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x34
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
	.uleb128 0x32
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xe4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
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
	.4byte	.LFB0
	.uleb128 .LFE0-.LFB0
	.byte	0x7
	.4byte	.LFB28
	.uleb128 .LFE28-.LFB28
	.byte	0x7
	.4byte	.LFB62
	.uleb128 .LFE62-.LFB62
	.byte	0x7
	.4byte	.LFB63
	.uleb128 .LFE63-.LFB63
	.byte	0x7
	.4byte	.LFB64
	.uleb128 .LFE64-.LFB64
	.byte	0x7
	.4byte	.LFB65
	.uleb128 .LFE65-.LFB65
	.byte	0x7
	.4byte	.LFB66
	.uleb128 .LFE66-.LFB66
	.byte	0x7
	.4byte	.LFB67
	.uleb128 .LFE67-.LFB67
	.byte	0x7
	.4byte	.LFB68
	.uleb128 .LFE68-.LFB68
	.byte	0x7
	.4byte	.LFB69
	.uleb128 .LFE69-.LFB69
	.byte	0x7
	.4byte	.LFB70
	.uleb128 .LFE70-.LFB70
	.byte	0x7
	.4byte	.LFB71
	.uleb128 .LFE71-.LFB71
	.byte	0x7
	.4byte	.LFB72
	.uleb128 .LFE72-.LFB72
	.byte	0x7
	.4byte	.LFB73
	.uleb128 .LFE73-.LFB73
	.byte	0x7
	.4byte	.LFB74
	.uleb128 .LFE74-.LFB74
	.byte	0x7
	.4byte	.LFB75
	.uleb128 .LFE75-.LFB75
	.byte	0x7
	.4byte	.LFB76
	.uleb128 .LFE76-.LFB76
	.byte	0x7
	.4byte	.LFB77
	.uleb128 .LFE77-.LFB77
	.byte	0x7
	.4byte	.LFB78
	.uleb128 .LFE78-.LFB78
	.byte	0x7
	.4byte	.LFB79
	.uleb128 .LFE79-.LFB79
	.byte	0x7
	.4byte	.LFB80
	.uleb128 .LFE80-.LFB80
	.byte	0x7
	.4byte	.LFB81
	.uleb128 .LFE81-.LFB81
	.byte	0x7
	.4byte	.LFB82
	.uleb128 .LFE82-.LFB82
	.byte	0x7
	.4byte	.LFB83
	.uleb128 .LFE83-.LFB83
	.byte	0x7
	.4byte	.LFB84
	.uleb128 .LFE84-.LFB84
	.byte	0x7
	.4byte	.LFB85
	.uleb128 .LFE85-.LFB85
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF168:
	.string	"printf"
.LASF46:
	.string	"__off_t"
.LASF43:
	.string	"__gid_t"
.LASF232:
	.string	"pwm_dev_setdef"
.LASF160:
	.string	"loopset_pwm_trigger_on"
.LASF75:
	.string	"st_ctim"
.LASF83:
	.string	"f_bfree"
.LASF15:
	.string	"size_t"
.LASF19:
	.string	"next"
.LASF84:
	.string	"f_bavail"
.LASF88:
	.string	"f_namelen"
.LASF176:
	.string	"bl_pwm_start"
.LASF218:
	.string	"pwm_offset"
.LASF99:
	.string	"close"
.LASF27:
	.string	"p_arg"
.LASF164:
	.string	"utils_list_push_back"
.LASF61:
	.string	"ssize_t"
.LASF159:
	.string	"loopset_pwm_hook_on_looprt"
.LASF115:
	.string	"rewinddir"
.LASF124:
	.string	"type"
.LASF190:
	.string	"hal_pwm_deinit"
.LASF224:
	.string	"path"
.LASF205:
	.string	"__ev_complete"
.LASF145:
	.string	"TrapNetCounter"
.LASF13:
	.string	"long long unsigned int"
.LASF195:
	.string	"hal_pwm_duty_get"
.LASF22:
	.string	"hal_pwm_cb_t"
.LASF185:
	.string	"aos_register_driver"
.LASF153:
	.string	"dev_pwm0"
.LASF154:
	.string	"dev_pwm1"
.LASF155:
	.string	"dev_pwm2"
.LASF156:
	.string	"dev_pwm3"
.LASF157:
	.string	"dev_pwm4"
.LASF126:
	.string	"inode_t"
.LASF178:
	.string	"fdt_getprop"
.LASF174:
	.string	"bl_pwm_set_duty"
.LASF64:
	.string	"stat"
.LASF113:
	.string	"mkdir"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF210:
	.string	"hal_pwm_set_duty_bydev"
.LASF37:
	.string	"__int_least64_t"
.LASF214:
	.string	"hal_pwm_start_bydev"
.LASF66:
	.string	"st_ino"
.LASF45:
	.string	"__mode_t"
.LASF165:
	.string	"bl_pwm_get_duty"
.LASF105:
	.string	"fs_ops_t"
.LASF234:
	.string	"fdt32_to_cpu"
.LASF125:
	.string	"refs"
.LASF31:
	.string	"active"
.LASF203:
	.string	"hal_pwm_stop"
.LASF149:
	.string	"pwm_priv_data"
.LASF38:
	.string	"__blkcnt_t"
.LASF169:
	.string	"vTaskExitCritical"
.LASF6:
	.string	"long int"
.LASF80:
	.string	"f_type"
.LASF173:
	.string	"bl_pwm_set_freq"
.LASF189:
	.string	"xTaskGetTickCountFromISR"
.LASF144:
	.string	"pwm_ops"
.LASF163:
	.string	"loopset_pwm_trigger_start"
.LASF53:
	.string	"tv_nsec"
.LASF140:
	.string	"aos_mutex_t"
.LASF73:
	.string	"st_atim"
.LASF183:
	.string	"aos_mutex_free"
.LASF142:
	.string	"BaseType_t"
.LASF120:
	.string	"i_fops"
.LASF109:
	.string	"rename"
.LASF91:
	.string	"d_name"
.LASF230:
	.string	"dev_pwm_init"
.LASF63:
	.string	"nlink_t"
.LASF29:
	.string	"hal_pwm_ev_t"
.LASF175:
	.string	"bl_pwm_stop"
.LASF206:
	.string	"__loop_pwm_trigger"
.LASF60:
	.string	"gid_t"
.LASF36:
	.string	"__uint32_t"
.LASF186:
	.string	"pvPortMalloc"
.LASF192:
	.string	"hal_pwm_freq_update"
.LASF238:
	.string	"pollfd"
.LASF77:
	.string	"st_blocks"
.LASF135:
	.string	"port"
.LASF69:
	.string	"st_uid"
.LASF78:
	.string	"st_spare4"
.LASF85:
	.string	"f_files"
.LASF14:
	.string	"unsigned int"
.LASF54:
	.string	"blkcnt_t"
.LASF12:
	.string	"long unsigned int"
.LASF215:
	.string	"vfs_pwm_init"
.LASF182:
	.string	"fdt_subnode_offset"
.LASF93:
	.string	"dd_vfs_fd"
.LASF196:
	.string	"p_duty"
.LASF59:
	.string	"uid_t"
.LASF227:
	.string	"data"
.LASF233:
	.string	"pwm_dev_malloc"
.LASF10:
	.string	"short unsigned int"
.LASF107:
	.string	"lseek"
.LASF92:
	.string	"aos_dirent_t"
.LASF95:
	.string	"aos_dir_t"
.LASF17:
	.string	"utils_list_hdr"
.LASF21:
	.string	"last"
.LASF118:
	.string	"access"
.LASF220:
	.string	"addr_prop"
.LASF48:
	.string	"__nlink_t"
.LASF171:
	.string	"vTaskEnterCritical"
.LASF162:
	.string	"loopset_pwm_trigger_off"
.LASF97:
	.string	"file_ops"
.LASF188:
	.string	"xTaskGetTickCount"
.LASF167:
	.string	"vPortFree"
.LASF23:
	.string	"item"
.LASF111:
	.string	"readdir"
.LASF57:
	.string	"off_t"
.LASF35:
	.string	"hal_pwm_dev_t"
.LASF72:
	.string	"st_size"
.LASF228:
	.string	"hal_pwm_init_bydev"
.LASF237:
	.string	"inode_ops_t"
.LASF122:
	.string	"i_name"
.LASF226:
	.string	"hal_pwm_finalize_bydev"
.LASF42:
	.string	"__uid_t"
.LASF101:
	.string	"write"
.LASF67:
	.string	"st_mode"
.LASF200:
	.string	"p_ev"
.LASF108:
	.string	"unlink"
.LASF221:
	.string	"lentmp"
.LASF94:
	.string	"dd_rsv"
.LASF98:
	.string	"open"
.LASF41:
	.string	"__dev_t"
.LASF133:
	.string	"duty_cycle"
.LASF209:
	.string	"hal_pwm_set_freq_bydev"
.LASF180:
	.string	"fdt_stringlist_get"
.LASF213:
	.string	"hal_pwm_stop_bydev"
.LASF34:
	.string	"p_now_ev"
.LASF147:
	.string	"__g_init_flag"
.LASF86:
	.string	"f_ffree"
.LASF204:
	.string	"hal_pwm_start"
.LASF139:
	.string	"aos_hdl_t"
.LASF89:
	.string	"d_ino"
.LASF158:
	.string	"loopset_pwm_hook_off_looprt"
.LASF134:
	.string	"pwm_config_t"
.LASF39:
	.string	"__blksize_t"
.LASF40:
	.string	"_off_t"
.LASF58:
	.string	"dev_t"
.LASF193:
	.string	"hal_pwm_freq_get"
.LASF50:
	.string	"time_t"
.LASF137:
	.string	"priv"
.LASF231:
	.string	"pdev"
.LASF191:
	.string	"hal_pwm_init"
.LASF28:
	.string	"float"
.LASF146:
	.string	"loopset_func_t"
.LASF55:
	.string	"blksize_t"
.LASF170:
	.string	"loopset_pwm_trigger_stop"
.LASF181:
	.string	"fdt_stringlist_count"
.LASF143:
	.string	"TickType_t"
.LASF216:
	.string	"dtb_pwm_offset"
.LASF217:
	.string	"fdt_pwm_module_init"
.LASF110:
	.string	"opendir"
.LASF150:
	.string	"mutex"
.LASF82:
	.string	"f_blocks"
.LASF132:
	.string	"_Bool"
.LASF5:
	.string	"int32_t"
.LASF9:
	.string	"unsigned char"
.LASF184:
	.string	"aos_mutex_new"
.LASF121:
	.string	"i_arg"
.LASF127:
	.string	"node"
.LASF90:
	.string	"d_type"
.LASF3:
	.string	"short int"
.LASF76:
	.string	"st_blksize"
.LASF239:
	.string	"xPortIsInsideInterrupt"
.LASF26:
	.string	"remain_ms"
.LASF51:
	.string	"timespec"
.LASF112:
	.string	"closedir"
.LASF194:
	.string	"p_freq"
.LASF33:
	.string	"now_duty"
.LASF187:
	.string	"bl_printk"
.LASF177:
	.string	"bl_pwm_init"
.LASF219:
	.string	"offset1"
.LASF68:
	.string	"st_nlink"
.LASF25:
	.string	"adjust_duty"
.LASF71:
	.string	"st_rdev"
.LASF20:
	.string	"first"
.LASF16:
	.string	"long double"
.LASF49:
	.string	"char"
.LASF79:
	.string	"statfs"
.LASF128:
	.string	"f_arg"
.LASF148:
	.string	"__g_pwm_dev"
.LASF136:
	.string	"config"
.LASF117:
	.string	"seekdir"
.LASF130:
	.string	"file_t"
.LASF30:
	.string	"list_head"
.LASF123:
	.string	"i_flags"
.LASF141:
	.string	"fdt32_t"
.LASF103:
	.string	"poll"
.LASF151:
	.string	"pwm_priv_data_t"
.LASF8:
	.string	"uint8_t"
.LASF212:
	.string	"para"
.LASF102:
	.string	"ioctl"
.LASF179:
	.string	"memcmp"
.LASF129:
	.string	"offset"
.LASF24:
	.string	"duty"
.LASF229:
	.string	"__list_last"
.LASF236:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF199:
	.string	"p_dev"
.LASF198:
	.string	"duration_ms"
.LASF70:
	.string	"st_gid"
.LASF4:
	.string	"int8_t"
.LASF201:
	.string	"p_temp_ev"
.LASF138:
	.string	"pwm_dev_t"
.LASF52:
	.string	"tv_sec"
.LASF116:
	.string	"telldir"
.LASF11:
	.string	"uint32_t"
.LASF96:
	.string	"file_ops_t"
.LASF166:
	.string	"memset"
.LASF32:
	.string	"freq"
.LASF131:
	.string	"poll_notify_t"
.LASF208:
	.string	"__pwm_duty_adjust"
.LASF119:
	.string	"i_ops"
.LASF114:
	.string	"rmdir"
.LASF62:
	.string	"mode_t"
.LASF65:
	.string	"st_dev"
.LASF18:
	.string	"utils_list"
.LASF47:
	.string	"_ssize_t"
.LASF87:
	.string	"f_fsid"
.LASF104:
	.string	"sync"
.LASF74:
	.string	"st_mtim"
.LASF235:
	.string	"utils_list_is_empty"
.LASF106:
	.string	"fs_ops"
.LASF100:
	.string	"read"
.LASF197:
	.string	"hal_pwm_duty_set"
.LASF225:
	.string	"pwm_node"
.LASF223:
	.string	"countindex"
.LASF44:
	.string	"__ino_t"
.LASF172:
	.string	"utils_list_pop_front"
.LASF211:
	.string	"hal_pwm_para_chg_bydev"
.LASF202:
	.string	"list"
.LASF152:
	.string	"inited"
.LASF207:
	.string	"stop"
.LASF161:
	.string	"utils_list_init"
.LASF222:
	.string	"result"
.LASF81:
	.string	"f_bsize"
.LASF56:
	.string	"ino_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
	.globl	__extendsfdf2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
