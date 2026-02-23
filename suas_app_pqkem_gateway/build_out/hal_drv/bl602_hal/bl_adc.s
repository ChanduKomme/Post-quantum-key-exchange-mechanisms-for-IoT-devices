	.file	"bl_adc.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_adc.c"
	.globl	adcCfg
	.section	.data.adcCfg,"aw"
	.align	2
	.type	adcCfg, @object
	.size	adcCfg, 14
adcCfg:
	.byte	2
	.byte	1
	.byte	4
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	4
	.byte	0
	.half	0
	.globl	adcFifoCfg
	.section	.sbss.adcFifoCfg,"aw",@nobits
	.align	2
	.type	adcFifoCfg, @object
	.size	adcFifoCfg, 2
adcFifoCfg:
	.zero	2
	.section	.text.ADC_Clock_Init,"ax",@progbits
	.align	1
	.globl	ADC_Clock_Init
	.type	ADC_Clock_Init, @function
ADC_Clock_Init:
.LFB27:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_adc.c"
	.loc 1 78 1
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
	.loc 1 79 5
	lbu	a5,-17(s0)
	mv	a2,a5
	li	a1,0
	li	a0,1
	call	GLB_Set_ADC_CLK
	.loc 1 81 1
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
.LFE27:
	.size	ADC_Clock_Init, .-ADC_Clock_Init
	.section	.text.TSEN_Calibration,"ax",@progbits
	.align	1
	.globl	TSEN_Calibration
	.type	TSEN_Calibration, @function
TSEN_Calibration:
.LFB28:
	.loc 1 84 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 85 5
	call	ADC_SET_TSVBE_LOW
	.loc 1 86 5
	call	ADC_Start
	.loc 1 87 5
	li	a0,100
	call	BL602_Delay_MS
	.loc 1 88 10
	nop
.L3:
	.loc 1 88 11 discriminator 2
	call	ADC_Get_FIFO_Count
	mv	a5,a0
	.loc 1 88 32 discriminator 2
	beq	a5,zero,.L3
	.loc 1 89 5
	call	ADC_Read_FIFO
	.loc 1 91 5
	call	ADC_SET_TSVBE_HIGH
	.loc 1 92 5
	call	ADC_Start
	.loc 1 93 5
	li	a0,100
	call	BL602_Delay_MS
	.loc 1 94 10
	nop
.L4:
	.loc 1 94 11 discriminator 2
	call	ADC_Get_FIFO_Count
	mv	a5,a0
	.loc 1 94 32 discriminator 2
	beq	a5,zero,.L4
	.loc 1 95 5
	call	ADC_Read_FIFO
	.loc 1 97 5
	call	ADC_SET_TSVBE_LOW
	.loc 1 98 1
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
.LFE28:
	.size	TSEN_Calibration, .-TSEN_Calibration
	.section	.text.ADC_tsen_case,"ax",@progbits
	.align	1
	.type	ADC_tsen_case, @function
ADC_tsen_case:
.LFB29:
	.loc 1 101 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 103 14
	sw	zero,-44(s0)
	.loc 1 104 13
	sb	zero,-17(s0)
	.loc 1 105 14
	sw	zero,-24(s0)
	.loc 1 105 19
	sw	zero,-28(s0)
	.loc 1 106 11
	sw	zero,-32(s0)
	.loc 1 108 5
	call	ADC_Reset
	.loc 1 110 5
	call	ADC_Disable
	.loc 1 111 5
	call	ADC_Enable
	.loc 1 113 5
	lui	a5,%hi(adcCfg)
	addi	a0,a5,%lo(adcCfg)
	call	ADC_Init
	.loc 1 114 5
	li	a2,0
	li	a1,23
	li	a0,14
	call	ADC_Channel_Config
	.loc 1 115 5
	li	a0,0
	call	ADC_Tsen_Init
	.loc 1 117 5
	lui	a5,%hi(adcFifoCfg)
	addi	a0,a5,%lo(adcFifoCfg)
	call	ADC_FIFO_Cfg
	.loc 1 118 5
	call	TSEN_Calibration
	.loc 1 120 10
	sb	zero,-17(s0)
	.loc 1 120 5
	j	.L6
.L14:
	.loc 1 121 9
	call	ADC_Start
	.loc 1 123 14
	nop
.L7:
	.loc 1 123 15 discriminator 2
	call	ADC_Get_FIFO_Count
	mv	a5,a0
	.loc 1 123 36 discriminator 2
	beq	a5,zero,.L7
.L10:
	.loc 1 126 22
	call	ADC_Read_FIFO
	mv	a5,a0
	.loc 1 126 20 discriminator 1
	sw	a5,-44(s0)
	.loc 1 127 13
	addi	a4,s0,-40
	addi	a5,s0,-44
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	ADC_Parse_Result
	.loc 1 129 20
	lbu	a5,-17(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 129 15
	bne	a5,zero,.L8
	.loc 1 130 28
	lhu	a5,-38(s0)
	.loc 1 130 20
	sw	a5,-24(s0)
	j	.L9
.L8:
	.loc 1 132 28
	lhu	a5,-38(s0)
	.loc 1 132 20
	sw	a5,-28(s0)
.L9:
	.loc 1 134 16
	call	ADC_Get_FIFO_Count
	mv	a5,a0
	.loc 1 134 37 discriminator 1
	bne	a5,zero,.L10
	.loc 1 136 16
	lbu	a5,-17(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 136 11
	beq	a5,zero,.L11
	.loc 1 137 25
	lw	a5,-24(s0)
	fcvt.s.wu	fa4,a5
	.loc 1 137 37
	lw	a5,-28(s0)
	fcvt.s.wu	fa5,a5
	.loc 1 137 23
	fsub.s	fa5,fa4,fa5
	fsw	fa5,-32(s0)
	.loc 1 138 23
	flw	fa4,-32(s0)
	lui	a5,%hi(.LC1)
	flw	fa5,%lo(.LC1)(a5)
	fsub.s	fa5,fa4,fa5
	fsw	fa5,-32(s0)
	.loc 1 139 33
	flw	fa0,-32(s0)
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(.LC2)
	lw	a2,%lo(.LC2)(a3)
	lw	a3,%lo(.LC2+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	.loc 1 139 23
	mv	a0,a4
	mv	a1,a5
	call	__truncdfsf2
	fmv.s	fa5,fa0
	fsw	fa5,-32(s0)
.L11:
	.loc 1 144 17
	lbu	a5,-17(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 144 11
	bne	a5,zero,.L12
	.loc 1 145 13
	call	ADC_SET_TSVBE_HIGH
	j	.L13
.L12:
	.loc 1 147 13
	call	ADC_SET_TSVBE_LOW
.L13:
	.loc 1 149 9
	li	a0,500
	call	BL602_Delay_MS
	.loc 1 120 19 discriminator 2
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L6:
	.loc 1 120 14 discriminator 1
	lbu	a4,-17(s0)
	li	a5,39
	bleu	a4,a5,.L14
	.loc 1 151 1
	nop
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
.LFE29:
	.size	ADC_tsen_case, .-ADC_tsen_case
	.section	.text.test_adc_init,"ax",@progbits
	.align	1
	.globl	test_adc_init
	.type	test_adc_init, @function
test_adc_init:
.LFB30:
	.loc 1 155 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 156 5
	li	a0,2
	call	ADC_Clock_Init
	.loc 1 158 5
	call	ADC_Reset
	.loc 1 160 5
	call	ADC_Disable
	.loc 1 161 5
	call	ADC_Enable
	.loc 1 163 5
	lui	a5,%hi(adcCfg)
	addi	a0,a5,%lo(adcCfg)
	call	ADC_Init
	.loc 1 164 5
	li	a2,0
	li	a1,23
	li	a0,14
	call	ADC_Channel_Config
	.loc 1 165 5
	li	a0,0
	call	ADC_Tsen_Init
	.loc 1 167 5
	lui	a5,%hi(adcFifoCfg)
	addi	a0,a5,%lo(adcFifoCfg)
	call	ADC_FIFO_Cfg
	.loc 1 168 5
	call	TSEN_Calibration
	.loc 1 170 12
	li	a5,0
	.loc 1 171 1
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
	.size	test_adc_init, .-test_adc_init
	.section	.text.test_adc_get,"ax",@progbits
	.align	1
	.globl	test_adc_get
	.type	test_adc_get, @function
test_adc_get:
.LFB31:
	.loc 1 174 1
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
	.loc 1 176 14
	sw	zero,-44(s0)
	.loc 1 177 13
	sb	zero,-17(s0)
	.loc 1 178 14
	sw	zero,-24(s0)
	.loc 1 178 19
	sw	zero,-28(s0)
	.loc 1 179 11
	sw	zero,-32(s0)
	.loc 1 181 12
	sb	zero,-17(s0)
	.loc 1 181 5
	j	.L18
.L27:
	.loc 1 182 9
	call	ADC_Start
	.loc 1 184 14
	j	.L19
.L20:
.LBB7:
	.loc 1 186 13
	li	a0,1
	call	aos_msleep
.L19:
.LBE7:
	.loc 1 184 15
	call	ADC_Get_FIFO_Count
	mv	a5,a0
	.loc 1 184 36 discriminator 1
	beq	a5,zero,.L20
.L23:
	.loc 1 190 22
	call	ADC_Read_FIFO
	mv	a5,a0
	.loc 1 190 20 discriminator 1
	sw	a5,-44(s0)
	.loc 1 191 13
	addi	a4,s0,-40
	addi	a5,s0,-44
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	ADC_Parse_Result
	.loc 1 193 20
	lbu	a5,-17(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 193 15
	bne	a5,zero,.L21
	.loc 1 194 28
	lhu	a5,-38(s0)
	.loc 1 194 20
	sw	a5,-24(s0)
	j	.L22
.L21:
	.loc 1 196 28
	lhu	a5,-38(s0)
	.loc 1 196 20
	sw	a5,-28(s0)
.L22:
	.loc 1 198 17
	call	ADC_Get_FIFO_Count
	mv	a5,a0
	.loc 1 198 38 discriminator 1
	bne	a5,zero,.L23
	.loc 1 200 17
	lbu	a5,-17(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 200 12
	beq	a5,zero,.L24
	.loc 1 201 23
	lw	a5,-24(s0)
	fcvt.s.wu	fa4,a5
	.loc 1 201 35
	lw	a5,-28(s0)
	fcvt.s.wu	fa5,a5
	.loc 1 201 21
	fsub.s	fa5,fa4,fa5
	fsw	fa5,-32(s0)
	.loc 1 203 21
	flw	fa4,-32(s0)
	lui	a5,%hi(.LC1)
	flw	fa5,%lo(.LC1)(a5)
	fsub.s	fa5,fa4,fa5
	fsw	fa5,-32(s0)
	.loc 1 204 31
	flw	fa0,-32(s0)
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(.LC2)
	lw	a2,%lo(.LC2)(a3)
	lw	a3,%lo(.LC2+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	.loc 1 204 21
	mv	a0,a4
	mv	a1,a5
	call	__truncdfsf2
	fmv.s	fa5,fa0
	fsw	fa5,-32(s0)
	.loc 1 207 20
	flw	fa5,-32(s0)
	fcvt.w.s a5,fa5,rtz
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 207 18
	lw	a5,-52(s0)
	sh	a4,0(a5)
.L24:
	.loc 1 209 17
	lbu	a5,-17(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 209 12
	bne	a5,zero,.L25
	.loc 1 210 13
	call	ADC_SET_TSVBE_HIGH
	j	.L26
.L25:
	.loc 1 212 13
	call	ADC_SET_TSVBE_LOW
.L26:
	.loc 1 181 25 discriminator 2
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L18:
	.loc 1 181 19 discriminator 1
	lbu	a4,-17(s0)
	li	a5,1
	bleu	a4,a5,.L27
	.loc 1 215 12
	li	a5,0
	.loc 1 216 1
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
.LFE31:
	.size	test_adc_get, .-test_adc_get
	.section	.text.test_adc_test,"ax",@progbits
	.align	1
	.globl	test_adc_test
	.type	test_adc_test, @function
test_adc_test:
.LFB32:
	.loc 1 219 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 220 5
	call	ADC_tsen_case
	.loc 1 221 12
	li	a5,0
	.loc 1 222 1
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
.LFE32:
	.size	test_adc_test, .-test_adc_test
	.section	.rodata
	.align	2
.LC3:
	.string	"bl_adc.c"
	.align	2
.LC4:
	.string	"\033[31mERROR \033[0m"
	.align	2
.LC5:
	.string	"[%10u][%s: %s:%4d] read efuse data failed\r\n"
	.align	2
.LC6:
	.string	"\033[32mINFO  \033[0m"
	.align	2
.LC7:
	.string	"[%10u][%s: %s:%4d] offset = %d\r\n"
	.align	2
.LC8:
	.string	"temperature = %f Celsius\r\n"
	.align	2
.LC0:
	.byte	2
	.byte	1
	.byte	7
	.byte	1
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	4
	.byte	0
	.half	0
	.section	.text.bl_tsen_adc_get,"ax",@progbits
	.align	1
	.globl	bl_tsen_adc_get
	.type	bl_tsen_adc_get, @function
bl_tsen_adc_get:
.LFB33:
	.loc 1 225 1
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
	mv	a5,a1
	sb	a5,-53(s0)
	.loc 1 227 11
	sw	zero,-20(s0)
	.loc 1 229 16
	lui	a5,%hi(tsen_offset.0)
	lhu	a4,%lo(tsen_offset.0)(a5)
	.loc 1 229 8
	li	a5,65536
	addi	a5,a5,-1
	bne	a4,a5,.L32
.LBB8:
	.loc 1 230 21
	lui	a5,%hi(tsen_offset.0)
	sh	zero,%lo(tsen_offset.0)(a5)
	.loc 1 231 22
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	lw	a3,0(a5)
	lw	a4,4(a5)
	sw	a3,-36(s0)
	sw	a4,-32(s0)
	lw	a4,8(a5)
	sw	a4,-28(s0)
	lhu	a5,12(a5)
	sh	a5,-24(s0)
	.loc 1 248 27
	sb	zero,-40(s0)
	sb	zero,-39(s0)
	.loc 1 253 9
	li	a2,7
	li	a1,0
	li	a0,1
	call	GLB_Set_ADC_CLK
	.loc 1 255 9
	call	ADC_Disable
	.loc 1 256 9
	call	ADC_Enable
	.loc 1 258 9
	call	ADC_Reset
	.loc 1 260 9
	addi	a5,s0,-36
	mv	a0,a5
	call	ADC_Init
	.loc 1 261 9
	li	a2,0
	li	a1,23
	li	a0,14
	call	ADC_Channel_Config
	.loc 1 262 9
	li	a0,0
	call	ADC_Tsen_Init
	.loc 1 264 9
	addi	a5,s0,-40
	mv	a0,a5
	call	ADC_FIFO_Cfg
	.loc 1 266 13
	lui	a5,%hi(tsen_offset.0)
	addi	a0,a5,%lo(tsen_offset.0)
	call	ADC_Trim_TSEN
	mv	a5,a0
	mv	a4,a5
	.loc 1 266 12 discriminator 1
	li	a5,1
	bne	a4,a5,.L33
.LBB9:
.LBB10:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE10:
.LBE9:
	.loc 1 267 20 discriminator 1
	beq	a5,zero,.L35
	.loc 1 267 110 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L36
.L35:
	.loc 1 267 139 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L36:
	.loc 1 267 20 discriminator 7
	li	a4,267
	lui	a5,%hi(.LC3)
	addi	a3,a5,%lo(.LC3)
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	bl_printk
	j	.L32
.L33:
.LBB11:
.LBB12:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE12:
.LBE11:
	.loc 1 269 20 discriminator 1
	beq	a5,zero,.L39
	.loc 1 269 99 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L40
.L39:
	.loc 1 269 128 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L40:
	.loc 1 269 20 discriminator 7
	lui	a5,%hi(tsen_offset.0)
	lhu	a5,%lo(tsen_offset.0)(a5)
	li	a4,269
	lui	a3,%hi(.LC3)
	addi	a3,a3,%lo(.LC3)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	bl_printk
.L32:
.LBE8:
	.loc 1 272 11
	lui	a5,%hi(tsen_offset.0)
	lhu	a5,%lo(tsen_offset.0)(a5)
	mv	a0,a5
	call	TSEN_Get_Temp
	fsw	fa0,-20(s0)
	.loc 1 273 8
	lbu	a5,-53(s0)
	beq	a5,zero,.L41
	.loc 1 274 9
	flw	fa0,-20(s0)
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
.L41:
	.loc 1 277 8
	lw	a5,-52(s0)
	beq	a5,zero,.L42
	.loc 1 278 17
	flw	fa5,-20(s0)
	fcvt.w.s a5,fa5,rtz
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 278 15
	lw	a5,-52(s0)
	sh	a4,0(a5)
.L42:
	.loc 1 281 12
	li	a5,0
	.loc 1 282 1
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
.LFE33:
	.size	bl_tsen_adc_get, .-bl_tsen_adc_get
	.section	.text.adc_data_update,"ax",@progbits
	.align	1
	.type	adc_data_update, @function
adc_data_update:
.LFB34:
	.loc 1 286 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 289 14
	li	a0,1
	call	bl_dma_find_ctx_by_channel
	sw	a0,-20(s0)
	.loc 1 290 8
	lw	a5,-20(s0)
	beq	a5,zero,.L50
	.loc 1 295 15
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 295 8
	bne	a5,zero,.L47
	.loc 1 296 73
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 296 87
	lw	a5,4(a5)
	.loc 1 296 32
	mv	a4,a5
	.loc 1 296 30
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 297 26
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,12(a5)
	j	.L48
.L47:
	.loc 1 299 73
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 299 84
	addi	a5,a5,16
	.loc 1 299 87
	lw	a5,4(a5)
	.loc 1 299 32
	mv	a4,a5
	.loc 1 299 30
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 300 26
	lw	a5,-20(s0)
	sw	zero,12(a5)
.L48:
	.loc 1 303 15
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 1 303 8
	beq	a5,zero,.L51
	.loc 1 304 16
	lw	a5,-20(s0)
	lw	a5,24(a5)
	lw	a4,-20(s0)
	lw	a3,0(a4)
	lw	a4,-20(s0)
	lw	a1,4(a4)
	lw	a4,-20(s0)
	lw	a4,20(a4)
	mv	a2,a4
	mv	a0,a3
	jalr	a5
.LVL0:
	.loc 1 307 5
	j	.L51
.L50:
	.loc 1 292 9
	nop
	j	.L44
.L51:
	.loc 1 307 5
	nop
.L44:
	.loc 1 308 1
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
	.size	adc_data_update, .-adc_data_update
	.section	.text.bl_adc_freq_init,"ax",@progbits
	.align	1
	.globl	bl_adc_freq_init
	.type	bl_adc_freq_init, @function
bl_adc_freq_init:
.LFB35:
	.loc 1 313 1
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
	.loc 1 318 8
	lw	a5,-36(s0)
	bne	a5,zero,.L53
	.loc 1 319 19
	li	a5,12
	sw	a5,-24(s0)
	j	.L54
.L53:
	.loc 1 321 19
	li	a5,1
	sw	a5,-24(s0)
.L54:
	.loc 1 324 40
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,10
	mv	a4,a5
	.loc 1 324 17
	li	a5,96002048
	addi	a5,a5,-2048
	divu	a5,a5,a4
	sw	a5,-28(s0)
	.loc 1 325 9
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	divu	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 326 15
	lw	a5,-20(s0)
	addi	a4,a5,1
	.loc 1 326 20
	lw	a5,-40(s0)
	mul	a4,a4,a5
	.loc 1 326 27
	lw	a5,-28(s0)
	sub	a4,a4,a5
	.loc 1 326 64
	lw	a3,-40(s0)
	lw	a5,-20(s0)
	mul	a5,a3,a5
	.loc 1 326 57
	lw	a3,-28(s0)
	sub	a5,a3,a5
	.loc 1 326 8
	bgeu	a4,a5,.L55
	.loc 1 327 13
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L55:
	.loc 1 330 8
	lw	a4,-20(s0)
	li	a5,64
	bleu	a4,a5,.L56
	.loc 1 331 13
	li	a5,64
	sw	a5,-20(s0)
.L56:
	.loc 1 334 5
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	addi	a5,a5,-1
	andi	a5,a5,0xff
	mv	a2,a5
	li	a1,0
	li	a0,1
	call	GLB_Set_ADC_CLK
	.loc 1 336 12
	li	a5,0
	.loc 1 337 1
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
.LFE35:
	.size	bl_adc_freq_init, .-bl_adc_freq_init
	.section	.text.bl_adc_init,"ax",@progbits
	.align	1
	.globl	bl_adc_init
	.type	bl_adc_init, @function
bl_adc_init:
.LFB36:
	.loc 1 340 1
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
	.loc 1 349 18
	li	a5,2
	sb	a5,-44(s0)
	.loc 1 350 18
	li	a5,1
	sb	a5,-43(s0)
	.loc 1 351 18
	li	a5,6
	sb	a5,-42(s0)
	.loc 1 352 17
	sb	zero,-41(s0)
	.loc 1 353 17
	sb	zero,-40(s0)
	.loc 1 354 20
	sb	zero,-39(s0)
	.loc 1 355 19
	sb	zero,-38(s0)
	.loc 1 356 15
	sb	zero,-37(s0)
	.loc 1 357 16
	sb	zero,-36(s0)
	.loc 1 358 21
	sb	zero,-35(s0)
	.loc 1 359 20
	li	a5,3
	sb	a5,-34(s0)
	.loc 1 360 25
	sb	zero,-33(s0)
	.loc 1 361 26
	sh	zero,-32(s0)
	.loc 1 363 5
	call	ADC_Disable
	.loc 1 364 5
	call	ADC_Enable
	.loc 1 365 5
	call	ADC_Reset
	.loc 1 367 5
	addi	a5,s0,-44
	mv	a0,a5
	call	ADC_Init
	.loc 1 369 8
	lw	a5,-84(s0)
	bne	a5,zero,.L59
	.loc 1 370 16
	sw	zero,-20(s0)
	.loc 1 370 9
	j	.L60
.L61:
	.loc 1 371 34
	lw	a5,-20(s0)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-40(a5)
	.loc 1 372 34
	lw	a5,-20(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,23
	sb	a4,-52(a5)
	.loc 1 370 30 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L60:
	.loc 1 370 23 discriminator 1
	lw	a4,-20(s0)
	li	a5,11
	ble	a4,a5,.L61
	.loc 1 375 21
	li	a5,12
	sw	a5,-24(s0)
	j	.L62
.L59:
	.loc 1 377 16
	lw	a0,-88(s0)
	call	bl_adc_get_channel_by_gpio
	sw	a0,-28(s0)
	.loc 1 378 30
	lw	a5,-28(s0)
	andi	a5,a5,0xff
	sb	a5,-56(s0)
	.loc 1 379 30
	li	a5,23
	sb	a5,-68(s0)
	.loc 1 380 21
	li	a5,1
	sw	a5,-24(s0)
.L62:
	.loc 1 382 5
	lw	a5,-24(s0)
	andi	a2,a5,0xff
	addi	a4,s0,-68
	addi	a5,s0,-56
	li	a3,1
	mv	a1,a4
	mv	a0,a5
	call	ADC_Scan_Channel_Config
	.loc 1 384 32
	sb	zero,-72(s0)
	.loc 1 385 24
	li	a5,1
	sb	a5,-71(s0)
	.loc 1 386 5
	addi	a5,s0,-72
	mv	a0,a5
	call	ADC_FIFO_Cfg
	.loc 1 388 12
	li	a5,0
	.loc 1 389 1
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
.LFE36:
	.size	bl_adc_init, .-bl_adc_init
	.section	.text.adc_dma_lli_init,"ax",@progbits
	.align	1
	.type	adc_dma_lli_init, @function
adc_dma_lli_init:
.LFB37:
	.loc 1 392 1
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
	.loc 1 395 31
	lw	a5,-44(s0)
	mv	a4,a5
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	lw	a3,-20(s0)
	li	a4,-4096
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 396 24
	lw	a4,-20(s0)
	li	a5,-28672
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 397 24
	lw	a4,-20(s0)
	li	a5,-229376
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 398 24
	lw	a4,-20(s0)
	li	a5,-1835008
	addi	a5,a5,-1
	and	a4,a4,a5
	li	a5,524288
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 399 24
	lw	a4,-20(s0)
	li	a5,-14680064
	addi	a5,a5,-1
	and	a4,a4,a5
	li	a5,4194304
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 400 20
	lw	a4,-20(s0)
	li	a5,-67108864
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 401 20
	lw	a4,-20(s0)
	li	a5,134217728
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 402 20
	lw	a4,-20(s0)
	li	a5,-2147483648
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 403 27
	lw	a4,-20(s0)
	li	a5,-16777216
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 404 23
	lw	a4,-20(s0)
	li	a5,-1879048192
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 406 26
	lw	a5,-36(s0)
	li	a4,1073750016
	addi	a4,a4,4
	sw	a4,0(a5)
	.loc 1 407 29
	lw	a4,-40(s0)
	.loc 1 407 27
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 1 408 35
	lw	a5,-36(s0)
	addi	a5,a5,16
	.loc 1 408 25
	mv	a4,a5
	.loc 1 408 23
	lw	a5,-36(s0)
	sw	a4,8(a5)
	.loc 1 409 22
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,12(a5)
	.loc 1 411 11
	lw	a5,-36(s0)
	addi	a5,a5,16
	.loc 1 411 26
	li	a4,1073750016
	addi	a4,a4,4
	sw	a4,0(a5)
	.loc 1 412 39
	lw	a5,-40(s0)
	addi	a4,a5,48
	.loc 1 412 11
	lw	a5,-36(s0)
	addi	a5,a5,16
	.loc 1 412 27
	sw	a4,4(a5)
	.loc 1 413 11
	lw	a5,-36(s0)
	addi	a5,a5,16
	.loc 1 413 25
	lw	a4,-36(s0)
	.loc 1 413 23
	sw	a4,8(a5)
	.loc 1 414 11
	lw	a5,-36(s0)
	addi	a5,a5,16
	.loc 1 414 22
	lw	a4,-20(s0)
	sw	a4,12(a5)
	.loc 1 416 5
	nop
	.loc 1 417 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE37:
	.size	adc_dma_lli_init, .-adc_dma_lli_init
	.section	.text.bl_adc_dma_init,"ax",@progbits
	.align	1
	.globl	bl_adc_dma_init
	.type	bl_adc_dma_init, @function
bl_adc_dma_init:
.LFB38:
	.loc 1 420 1
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
	.loc 1 426 8
	lw	a5,-40(s0)
	bne	a5,zero,.L67
	.loc 1 429 16
	li	a5,-1
	j	.L72
.L67:
	.loc 1 432 14
	li	a0,28
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 1 433 8
	lw	a5,-20(s0)
	bne	a5,zero,.L69
	.loc 1 436 16
	li	a5,-1
	j	.L72
.L69:
	.loc 1 439 14
	li	a0,32
	call	pvPortMalloc
	sw	a0,-24(s0)
	.loc 1 440 8
	lw	a5,-24(s0)
	bne	a5,zero,.L70
	.loc 1 443 16
	li	a5,-1
	j	.L72
.L70:
	.loc 1 446 55
	lw	a5,-40(s0)
	slli	a5,a5,3
	.loc 1 446 14
	mv	a0,a5
	call	pvPortMalloc
	sw	a0,-28(s0)
	.loc 1 447 8
	lw	a5,-28(s0)
	bne	a5,zero,.L71
	.loc 1 450 16
	li	a5,-1
	j	.L72
.L71:
	.loc 1 453 16
	li	a5,2
	sb	a5,-32(s0)
	.loc 1 454 22
	li	a5,22
	sb	a5,-31(s0)
	.loc 1 455 22
	sb	zero,-30(s0)
	.loc 1 456 5
	li	a0,1
	call	DMA_Channel_Disable
	.loc 1 458 5
	lw	a2,-40(s0)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	adc_dma_lli_init
	.loc 1 459 5
	addi	a5,s0,-32
	mv	a1,a5
	li	a0,1
	call	DMA_LLI_Init
	.loc 1 460 5
	lw	a5,-24(s0)
	mv	a1,a5
	li	a0,1
	call	DMA_LLI_Update
	.loc 1 462 18
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 463 21
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	.loc 1 464 22
	lw	a5,-20(s0)
	sw	zero,12(a5)
	.loc 1 465 29
	lw	a5,-20(s0)
	sw	zero,16(a5)
	.loc 1 466 26
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 1 467 23
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,20(a5)
	.loc 1 468 16
	lw	a5,-20(s0)
	sw	zero,24(a5)
	.loc 1 469 5
	lw	a3,-20(s0)
	li	a2,0
	lui	a5,%hi(adc_data_update)
	addi	a1,a5,%lo(adc_data_update)
	li	a0,1
	call	bl_dma_irq_register
	.loc 1 471 12
	li	a5,0
.L72:
	.loc 1 472 1
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
.LFE38:
	.size	bl_adc_dma_init, .-bl_adc_dma_init
	.section	.text.bl_adc_start,"ax",@progbits
	.align	1
	.globl	bl_adc_start
	.type	bl_adc_start, @function
bl_adc_start:
.LFB39:
	.loc 1 475 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 476 5
	li	a2,1
	li	a1,2
	li	a0,1
	call	DMA_IntMask
	.loc 1 477 5
	li	a2,0
	li	a1,0
	li	a0,1
	call	DMA_IntMask
	.loc 1 478 5
	li	a2,0
	li	a1,1
	li	a0,1
	call	DMA_IntMask
	.loc 1 480 5
	call	ADC_Start
	.loc 1 481 5
	call	DMA_Enable
	.loc 1 482 5
	li	a0,1
	call	DMA_Channel_Enable
	.loc 1 484 12
	li	a5,0
	.loc 1 485 1
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
.LFE39:
	.size	bl_adc_start, .-bl_adc_start
	.section	.text.bl_adc_gpio_init,"ax",@progbits
	.align	1
	.globl	bl_adc_gpio_init
	.type	bl_adc_gpio_init, @function
bl_adc_gpio_init:
.LFB40:
	.loc 1 488 1
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
	.loc 1 489 13
	lw	a5,-36(s0)
	andi	a5,a5,0xff
	sb	a5,-17(s0)
	.loc 1 491 5
	addi	a5,s0,-17
	li	a2,1
	mv	a1,a5
	li	a0,10
	call	GLB_GPIO_Func_Init
	.loc 1 493 12
	li	a5,0
	.loc 1 494 1
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
	.size	bl_adc_gpio_init, .-bl_adc_gpio_init
	.section	.text.adc_calc_data,"ax",@progbits
	.align	1
	.type	adc_calc_data, @function
adc_calc_data:
.LFB41:
	.loc 1 497 1
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
	.loc 1 500 9
	lw	a5,-36(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a5,-20(s0)
	.loc 1 501 16
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-896
	mul	a5,a4,a5
	.loc 1 501 9
	srli	a5,a5,16
	sw	a5,-20(s0)
	.loc 1 503 12
	lw	a5,-20(s0)
	.loc 1 504 1
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
	.size	adc_calc_data, .-adc_calc_data
	.section	.text.bl_adc_parse_data,"ax",@progbits
	.align	1
	.globl	bl_adc_parse_data
	.type	bl_adc_parse_data, @function
bl_adc_parse_data:
.LFB42:
	.loc 1 507 1
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
	.loc 1 511 12
	sw	zero,-20(s0)
	.loc 1 511 5
	j	.L80
.L84:
	.loc 1 512 17
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 512 21
	srli	a4,a5,21
	.loc 1 512 27
	lw	a5,-44(s0)
	.loc 1 512 12
	bne	a4,a5,.L81
	.loc 1 513 16
	lw	a5,-48(s0)
	bne	a5,zero,.L82
	.loc 1 514 28
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 514 22
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a5,-24(s0)
	.loc 1 515 24
	lw	a5,-24(s0)
	j	.L83
.L82:
	.loc 1 517 42
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 517 24
	lw	a5,0(a5)
	mv	a0,a5
	call	adc_calc_data
	mv	a5,a0
	.loc 1 517 22 discriminator 1
	sw	a5,-24(s0)
	.loc 1 519 24
	lw	a5,-24(s0)
	j	.L83
.L81:
	.loc 1 511 33 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L80:
	.loc 1 511 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	blt	a4,a5,.L84
	.loc 1 524 12
	li	a5,-1
.L83:
	.loc 1 525 1
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
.LFE42:
	.size	bl_adc_parse_data, .-bl_adc_parse_data
	.section	.text.bl_adc_get_channel_by_gpio,"ax",@progbits
	.align	1
	.globl	bl_adc_get_channel_by_gpio
	.type	bl_adc_get_channel_by_gpio, @function
bl_adc_get_channel_by_gpio:
.LFB43:
	.loc 1 528 1
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
	.loc 1 531 8
	lw	a4,-36(s0)
	li	a5,4
	bne	a4,a5,.L86
	.loc 1 532 17
	li	a5,1
	sw	a5,-20(s0)
	j	.L87
.L86:
	.loc 1 533 15
	lw	a4,-36(s0)
	li	a5,5
	bne	a4,a5,.L88
	.loc 1 534 17
	li	a5,4
	sw	a5,-20(s0)
	j	.L87
.L88:
	.loc 1 535 15
	lw	a4,-36(s0)
	li	a5,6
	bne	a4,a5,.L89
	.loc 1 536 17
	li	a5,5
	sw	a5,-20(s0)
	j	.L87
.L89:
	.loc 1 537 15
	lw	a4,-36(s0)
	li	a5,9
	bne	a4,a5,.L90
	.loc 1 538 17
	li	a5,7
	sw	a5,-20(s0)
	j	.L87
.L90:
	.loc 1 539 15
	lw	a4,-36(s0)
	li	a5,10
	bne	a4,a5,.L91
	.loc 1 540 17
	li	a5,9
	sw	a5,-20(s0)
	j	.L87
.L91:
	.loc 1 541 15
	lw	a4,-36(s0)
	li	a5,11
	bne	a4,a5,.L92
	.loc 1 542 17
	li	a5,10
	sw	a5,-20(s0)
	j	.L87
.L92:
	.loc 1 543 15
	lw	a4,-36(s0)
	li	a5,12
	bne	a4,a5,.L93
	.loc 1 544 17
	sw	zero,-20(s0)
	j	.L87
.L93:
	.loc 1 545 15
	lw	a4,-36(s0)
	li	a5,13
	bne	a4,a5,.L94
	.loc 1 546 17
	li	a5,3
	sw	a5,-20(s0)
	j	.L87
.L94:
	.loc 1 547 15
	lw	a4,-36(s0)
	li	a5,14
	bne	a4,a5,.L95
	.loc 1 548 17
	li	a5,2
	sw	a5,-20(s0)
	j	.L87
.L95:
	.loc 1 549 15
	lw	a4,-36(s0)
	li	a5,15
	bne	a4,a5,.L96
	.loc 1 550 17
	li	a5,11
	sw	a5,-20(s0)
	j	.L87
.L96:
	.loc 1 552 16
	li	a5,-1
	j	.L97
.L87:
	.loc 1 555 12
	lw	a5,-20(s0)
.L97:
	.loc 1 556 1
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
.LFE43:
	.size	bl_adc_get_channel_by_gpio, .-bl_adc_get_channel_by_gpio
	.section	.sdata.tsen_offset.0,"aw"
	.align	1
	.type	tsen_offset.0, @object
	.size	tsen_offset.0, 2
tsen_offset.0:
	.half	-1
	.section	.rodata
	.align	2
.LC1:
	.word	1158733824
	.align	3
.LC2:
	.word	1855425872
	.word	1075774226
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/dma_reg.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dma.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_adc.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_adc.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_dma.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x118f
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x23
	.4byte	.LASF309
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x24
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x25
	.byte	0x4
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x26
	.4byte	0x86
	.uleb128 0x9
	.4byte	0x8d
	.uleb128 0x27
	.4byte	0x92
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x22
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x25
	.byte	0x13
	.4byte	0x39
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x40
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0x4
	.4byte	0x32
	.byte	0x5
	.byte	0x17
	.byte	0x1
	.4byte	0x103
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.4byte	0xe4
	.uleb128 0x4
	.4byte	0x32
	.byte	0x5
	.byte	0x21
	.byte	0x1
	.4byte	0x128
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0x24
	.byte	0x2
	.4byte	0x10f
	.uleb128 0x4
	.4byte	0x32
	.byte	0x5
	.byte	0x33
	.byte	0x1
	.4byte	0x14d
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x5
	.byte	0x36
	.byte	0x2
	.4byte	0x134
	.uleb128 0x4
	.4byte	0x32
	.byte	0x6
	.byte	0x29
	.byte	0x1
	.4byte	0x1f6
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x6
	.byte	0x42
	.byte	0x2
	.4byte	0x159
	.uleb128 0x4
	.4byte	0x32
	.byte	0x6
	.byte	0x4c
	.byte	0x1
	.4byte	0x24b
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x6
	.byte	0x57
	.byte	0x2
	.4byte	0x202
	.uleb128 0x4
	.4byte	0x32
	.byte	0x7
	.byte	0xbf
	.byte	0xe
	.4byte	0x270
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x7
	.byte	0xc2
	.byte	0x2
	.4byte	0x257
	.uleb128 0x28
	.4byte	.LASF223
	.byte	0x4
	.byte	0x8
	.2byte	0x4a0
	.byte	0x10
	.4byte	0x313
	.uleb128 0xd
	.4byte	.LASF69
	.2byte	0x4a1
	.4byte	0xd8
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF70
	.2byte	0x4a2
	.4byte	0xd8
	.byte	0x3
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF71
	.2byte	0x4a3
	.4byte	0xd8
	.byte	0x3
	.byte	0xf
	.uleb128 0xd
	.4byte	.LASF72
	.2byte	0x4a4
	.4byte	0xd8
	.byte	0x3
	.byte	0x12
	.uleb128 0xd
	.4byte	.LASF73
	.2byte	0x4a5
	.4byte	0xd8
	.byte	0x3
	.byte	0x15
	.uleb128 0xd
	.4byte	.LASF74
	.2byte	0x4a6
	.4byte	0xd8
	.byte	0x1
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF75
	.2byte	0x4a7
	.4byte	0xd8
	.byte	0x1
	.byte	0x19
	.uleb128 0x16
	.string	"SI"
	.2byte	0x4a8
	.4byte	0xd8
	.byte	0x1a
	.uleb128 0x16
	.string	"DI"
	.2byte	0x4a9
	.4byte	0xd8
	.byte	0x1b
	.uleb128 0xd
	.4byte	.LASF76
	.2byte	0x4aa
	.4byte	0xd8
	.byte	0x3
	.byte	0x1c
	.uleb128 0x16
	.string	"I"
	.2byte	0x4ab
	.4byte	0xd8
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	0x32
	.byte	0x9
	.byte	0x49
	.byte	0xe
	.4byte	0x332
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	0x32
	.byte	0x9
	.byte	0x52
	.byte	0xe
	.4byte	0x357
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x9
	.byte	0x57
	.byte	0x2
	.4byte	0x332
	.uleb128 0x4
	.4byte	0x32
	.byte	0x9
	.byte	0x5c
	.byte	0xe
	.4byte	0x388
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	0x32
	.byte	0x9
	.byte	0x66
	.byte	0xe
	.4byte	0x3d7
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0x9
	.byte	0x72
	.byte	0x2
	.4byte	0x388
	.uleb128 0x4
	.4byte	0x32
	.byte	0x9
	.byte	0x82
	.byte	0xe
	.4byte	0x402
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0x9
	.byte	0x86
	.byte	0x2
	.4byte	0x3e3
	.uleb128 0x17
	.byte	0x10
	.byte	0x9
	.byte	0xb0
	.4byte	0x44b
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0x9
	.byte	0xb1
	.byte	0xe
	.4byte	0xd8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF106
	.byte	0x9
	.byte	0xb2
	.byte	0xe
	.4byte	0xd8
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF107
	.byte	0x9
	.byte	0xb3
	.byte	0xe
	.4byte	0xd8
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF108
	.byte	0x9
	.byte	0xb4
	.byte	0x1c
	.4byte	0x27c
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0x9
	.byte	0xb5
	.byte	0x2
	.4byte	0x40e
	.uleb128 0x17
	.byte	0x3
	.byte	0x9
	.byte	0xba
	.4byte	0x487
	.uleb128 0x19
	.string	"dir"
	.byte	0x9
	.byte	0xbb
	.byte	0x18
	.4byte	0x357
	.byte	0
	.uleb128 0x6
	.4byte	.LASF110
	.byte	0x9
	.byte	0xbc
	.byte	0x19
	.4byte	0x3d7
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF111
	.byte	0x9
	.byte	0xbd
	.byte	0x19
	.4byte	0x3d7
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0x9
	.byte	0xbe
	.byte	0x2
	.4byte	0x457
	.uleb128 0x9
	.4byte	0x44b
	.uleb128 0x9
	.4byte	0x487
	.uleb128 0x4
	.4byte	0x32
	.byte	0xa
	.byte	0x3a
	.byte	0xe
	.4byte	0x53a
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.4byte	.LASF137
	.byte	0xa
	.byte	0x53
	.byte	0x2
	.4byte	0x49d
	.uleb128 0x4
	.4byte	0x32
	.byte	0xa
	.byte	0x58
	.byte	0xe
	.4byte	0x56b
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0xa
	.byte	0x5d
	.byte	0x2
	.4byte	0x546
	.uleb128 0x4
	.4byte	0x32
	.byte	0xa
	.byte	0x62
	.byte	0xe
	.4byte	0x59c
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0
	.uleb128 0x1
	.4byte	.LASF144
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF147
	.byte	0xa
	.byte	0x67
	.byte	0x2
	.4byte	0x577
	.uleb128 0x4
	.4byte	0x32
	.byte	0xa
	.byte	0x6c
	.byte	0xe
	.4byte	0x5e5
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0xa
	.byte	0x75
	.byte	0x2
	.4byte	0x5a8
	.uleb128 0x4
	.4byte	0x32
	.byte	0xa
	.byte	0x88
	.byte	0xe
	.4byte	0x628
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0
	.uleb128 0x1
	.4byte	.LASF158
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF159
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF160
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF161
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF163
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF164
	.byte	0xa
	.byte	0x90
	.byte	0x2
	.4byte	0x5f1
	.uleb128 0x4
	.4byte	0x32
	.byte	0xa
	.byte	0x95
	.byte	0xe
	.4byte	0x64d
	.uleb128 0x1
	.4byte	.LASF165
	.byte	0
	.uleb128 0x1
	.4byte	.LASF166
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF167
	.byte	0xa
	.byte	0x98
	.byte	0x2
	.4byte	0x634
	.uleb128 0x4
	.4byte	0x32
	.byte	0xa
	.byte	0x9d
	.byte	0xe
	.4byte	0x67e
	.uleb128 0x1
	.4byte	.LASF168
	.byte	0
	.uleb128 0x1
	.4byte	.LASF169
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF170
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF171
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF172
	.byte	0xa
	.byte	0xa2
	.byte	0x2
	.4byte	0x659
	.uleb128 0x4
	.4byte	0x32
	.byte	0xa
	.byte	0xa7
	.byte	0xe
	.4byte	0x6af
	.uleb128 0x1
	.4byte	.LASF173
	.byte	0
	.uleb128 0x1
	.4byte	.LASF174
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF175
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF176
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0xa
	.byte	0xac
	.byte	0x2
	.4byte	0x68a
	.uleb128 0x4
	.4byte	0x32
	.byte	0xa
	.byte	0xb1
	.byte	0xe
	.4byte	0x6d4
	.uleb128 0x1
	.4byte	.LASF178
	.byte	0
	.uleb128 0x1
	.4byte	.LASF179
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF180
	.byte	0xa
	.byte	0xb4
	.byte	0x2
	.4byte	0x6bb
	.uleb128 0x4
	.4byte	0x32
	.byte	0xa
	.byte	0xb9
	.byte	0xe
	.4byte	0x6f9
	.uleb128 0x1
	.4byte	.LASF181
	.byte	0
	.uleb128 0x1
	.4byte	.LASF182
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF183
	.byte	0xa
	.byte	0xbc
	.byte	0x2
	.4byte	0x6e0
	.uleb128 0x4
	.4byte	0x32
	.byte	0xa
	.byte	0xc1
	.byte	0xe
	.4byte	0x71e
	.uleb128 0x1
	.4byte	.LASF184
	.byte	0
	.uleb128 0x1
	.4byte	.LASF185
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF186
	.byte	0xa
	.byte	0xc4
	.byte	0x2
	.4byte	0x705
	.uleb128 0x4
	.4byte	0x32
	.byte	0xa
	.byte	0xc9
	.byte	0xe
	.4byte	0x755
	.uleb128 0x1
	.4byte	.LASF187
	.byte	0
	.uleb128 0x1
	.4byte	.LASF188
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF189
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF190
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF191
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF192
	.byte	0xa
	.byte	0xcf
	.byte	0x2
	.4byte	0x72a
	.uleb128 0x17
	.byte	0xe
	.byte	0xa
	.byte	0xfc
	.4byte	0x814
	.uleb128 0x6
	.4byte	.LASF193
	.byte	0xa
	.byte	0xfd
	.byte	0x16
	.4byte	0x56b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF194
	.byte	0xa
	.byte	0xfe
	.byte	0x16
	.4byte	0x59c
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF195
	.byte	0xa
	.byte	0xff
	.byte	0x12
	.4byte	0x5e5
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF196
	.2byte	0x100
	.byte	0x17
	.4byte	0x628
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF197
	.2byte	0x101
	.byte	0x17
	.4byte	0x628
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF198
	.2byte	0x102
	.byte	0x17
	.4byte	0x67e
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF199
	.2byte	0x103
	.byte	0x17
	.4byte	0x64d
	.byte	0x6
	.uleb128 0x29
	.string	"vcm"
	.byte	0xa
	.2byte	0x104
	.byte	0x16
	.4byte	0x6af
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF200
	.2byte	0x105
	.byte	0x13
	.4byte	0x6f9
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF201
	.2byte	0x106
	.byte	0x18
	.4byte	0x71e
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF202
	.2byte	0x107
	.byte	0x19
	.4byte	0x755
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF203
	.2byte	0x108
	.byte	0x11
	.4byte	0x128
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF204
	.2byte	0x109
	.byte	0xd
	.4byte	0xa8
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.4byte	.LASF205
	.2byte	0x10a
	.4byte	0x761
	.uleb128 0x1a
	.byte	0x8
	.2byte	0x10f
	.4byte	0x85c
	.uleb128 0x7
	.4byte	.LASF206
	.2byte	0x110
	.byte	0xc
	.4byte	0x9c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF207
	.2byte	0x111
	.byte	0xc
	.4byte	0x9c
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF208
	.2byte	0x112
	.byte	0xe
	.4byte	0xcc
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF209
	.2byte	0x113
	.byte	0xb
	.4byte	0x85c
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.4byte	.LASF210
	.uleb128 0x11
	.4byte	.LASF211
	.2byte	0x114
	.4byte	0x81f
	.uleb128 0x2a
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0xa
	.2byte	0x119
	.byte	0xe
	.4byte	0x896
	.uleb128 0x1
	.4byte	.LASF212
	.byte	0
	.uleb128 0x1
	.4byte	.LASF213
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF214
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF215
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF216
	.2byte	0x11e
	.4byte	0x86e
	.uleb128 0x1a
	.byte	0x2
	.2byte	0x12f
	.4byte	0x8c4
	.uleb128 0x7
	.4byte	.LASF217
	.2byte	0x130
	.byte	0x1d
	.4byte	0x896
	.byte	0
	.uleb128 0x7
	.4byte	.LASF218
	.2byte	0x131
	.byte	0x11
	.4byte	0x128
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF219
	.2byte	0x132
	.4byte	0x8a1
	.uleb128 0x3
	.4byte	.LASF220
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0xb4
	.uleb128 0x3
	.4byte	.LASF221
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0xd8
	.uleb128 0x2b
	.4byte	.LASF232
	.byte	0x2
	.byte	0x5c
	.byte	0x13
	.4byte	0x8cf
	.uleb128 0x3
	.4byte	.LASF222
	.byte	0xb
	.byte	0x24
	.byte	0x10
	.4byte	0x8ff
	.uleb128 0x9
	.4byte	0x904
	.uleb128 0x2c
	.4byte	0x919
	.uleb128 0x2
	.4byte	0x63
	.uleb128 0x2
	.4byte	0x919
	.uleb128 0x2
	.4byte	0xd8
	.byte	0
	.uleb128 0x9
	.4byte	0xd8
	.uleb128 0x2d
	.4byte	.LASF224
	.byte	0x1c
	.byte	0xb
	.byte	0x25
	.byte	0x10
	.4byte	0x986
	.uleb128 0x6
	.4byte	.LASF225
	.byte	0xb
	.byte	0x26
	.byte	0x9
	.4byte	0x63
	.byte	0
	.uleb128 0x6
	.4byte	.LASF226
	.byte	0xb
	.byte	0x27
	.byte	0xf
	.4byte	0x919
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF227
	.byte	0xb
	.byte	0x28
	.byte	0xb
	.4byte	0x84
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF228
	.byte	0xb
	.byte	0x29
	.byte	0x9
	.4byte	0x63
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF229
	.byte	0xb
	.byte	0x2a
	.byte	0xe
	.4byte	0xd8
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF230
	.byte	0xb
	.byte	0x2b
	.byte	0xe
	.4byte	0xd8
	.byte	0x14
	.uleb128 0x19
	.string	"cb"
	.byte	0xb
	.byte	0x2c
	.byte	0x11
	.4byte	0x8f3
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF231
	.byte	0xb
	.byte	0x2d
	.byte	0x2
	.4byte	0x91e
	.uleb128 0x1b
	.4byte	.LASF233
	.byte	0x37
	.byte	0xe
	.4byte	0x814
	.uleb128 0x5
	.byte	0x3
	.4byte	adcCfg
	.uleb128 0x1b
	.4byte	.LASF234
	.byte	0x48
	.byte	0x13
	.4byte	0x8c4
	.uleb128 0x5
	.byte	0x3
	.4byte	adcFifoCfg
	.uleb128 0x12
	.4byte	.LASF237
	.byte	0x7
	.2byte	0x277
	.byte	0xd
	.4byte	0x103
	.4byte	0x9d5
	.uleb128 0x2
	.4byte	0x24b
	.uleb128 0x2
	.4byte	0x9d5
	.uleb128 0x2
	.4byte	0xc0
	.byte	0
	.uleb128 0x9
	.4byte	0x1f6
	.uleb128 0xb
	.4byte	.LASF235
	.byte	0x9
	.2byte	0x140
	.4byte	0x9ec
	.uleb128 0x2
	.4byte	0xc0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF257
	.byte	0x9
	.2byte	0x139
	.uleb128 0xb
	.4byte	.LASF236
	.byte	0x9
	.2byte	0x144
	.4byte	0xa10
	.uleb128 0x2
	.4byte	0xc0
	.uleb128 0x2
	.4byte	0x402
	.uleb128 0x2
	.4byte	0x14d
	.byte	0
	.uleb128 0x13
	.4byte	.LASF238
	.byte	0xc
	.byte	0x4b
	.byte	0x5
	.4byte	0x63
	.4byte	0xa35
	.uleb128 0x2
	.4byte	0x63
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x84
	.byte	0
	.uleb128 0xb
	.4byte	.LASF239
	.byte	0x9
	.2byte	0x143
	.4byte	0xa4c
	.uleb128 0x2
	.4byte	0xc0
	.uleb128 0x2
	.4byte	0xd8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF240
	.byte	0x9
	.2byte	0x142
	.4byte	0xa63
	.uleb128 0x2
	.4byte	0xc0
	.uleb128 0x2
	.4byte	0x498
	.byte	0
	.uleb128 0xb
	.4byte	.LASF241
	.byte	0x9
	.2byte	0x141
	.4byte	0xa75
	.uleb128 0x2
	.4byte	0xc0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF242
	.byte	0xd
	.byte	0xa3
	.byte	0x7
	.4byte	0x84
	.4byte	0xa8b
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0xb
	.4byte	.LASF243
	.byte	0xa
	.2byte	0x1fb
	.4byte	0xaac
	.uleb128 0x2
	.4byte	0xaac
	.uleb128 0x2
	.4byte	0xaac
	.uleb128 0x2
	.4byte	0xc0
	.uleb128 0x2
	.4byte	0x128
	.byte	0
	.uleb128 0x9
	.4byte	0x53a
	.uleb128 0x13
	.4byte	.LASF244
	.byte	0xc
	.byte	0x4e
	.byte	0x7
	.4byte	0x84
	.4byte	0xac7
	.uleb128 0x2
	.4byte	0x63
	.byte	0
	.uleb128 0x13
	.4byte	.LASF245
	.byte	0xe
	.byte	0xce
	.byte	0x5
	.4byte	0x63
	.4byte	0xade
	.uleb128 0x2
	.4byte	0x97
	.uleb128 0x1c
	.byte	0
	.uleb128 0x12
	.4byte	.LASF246
	.byte	0xa
	.2byte	0x212
	.byte	0x7
	.4byte	0x85c
	.4byte	0xaf5
	.uleb128 0x2
	.4byte	0xd8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF247
	.byte	0xf
	.byte	0x9e
	.byte	0x6
	.4byte	0xb08
	.uleb128 0x2
	.4byte	0x92
	.uleb128 0x1c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF248
	.byte	0x10
	.2byte	0x54c
	.byte	0xc
	.4byte	0x8db
	.uleb128 0x14
	.4byte	.LASF249
	.byte	0x10
	.2byte	0x55d
	.byte	0xc
	.4byte	0x8db
	.uleb128 0x12
	.4byte	.LASF250
	.byte	0xa
	.2byte	0x20f
	.byte	0xd
	.4byte	0x103
	.4byte	0xb39
	.uleb128 0x2
	.4byte	0xb39
	.byte	0
	.uleb128 0x9
	.4byte	0xcc
	.uleb128 0x18
	.4byte	.LASF251
	.byte	0x1
	.byte	0xb9
	.byte	0x19
	.4byte	0xb50
	.uleb128 0x2
	.4byte	0x63
	.byte	0
	.uleb128 0xb
	.4byte	.LASF252
	.byte	0xa
	.2byte	0x203
	.4byte	0xb6c
	.uleb128 0x2
	.4byte	0x919
	.uleb128 0x2
	.4byte	0xd8
	.uleb128 0x2
	.4byte	0xb6c
	.byte	0
	.uleb128 0x9
	.4byte	0x863
	.uleb128 0xb
	.4byte	.LASF253
	.byte	0xa
	.2byte	0x1fe
	.4byte	0xb83
	.uleb128 0x2
	.4byte	0xb83
	.byte	0
	.uleb128 0x9
	.4byte	0x8c4
	.uleb128 0xb
	.4byte	.LASF254
	.byte	0xa
	.2byte	0x20b
	.4byte	0xb9a
	.uleb128 0x2
	.4byte	0x6d4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF255
	.byte	0xa
	.2byte	0x1fa
	.4byte	0xbb6
	.uleb128 0x2
	.4byte	0x53a
	.uleb128 0x2
	.4byte	0x53a
	.uleb128 0x2
	.4byte	0x128
	.byte	0
	.uleb128 0xb
	.4byte	.LASF256
	.byte	0xa
	.2byte	0x1f9
	.4byte	0xbc8
	.uleb128 0x2
	.4byte	0xbc8
	.byte	0
	.uleb128 0x9
	.4byte	0x814
	.uleb128 0xe
	.4byte	.LASF258
	.byte	0xa
	.2byte	0x1f7
	.uleb128 0xe
	.4byte	.LASF259
	.byte	0xa
	.2byte	0x1f8
	.uleb128 0xe
	.4byte	.LASF260
	.byte	0xa
	.2byte	0x1f6
	.uleb128 0xe
	.4byte	.LASF261
	.byte	0xa
	.2byte	0x20a
	.uleb128 0x14
	.4byte	.LASF262
	.byte	0xa
	.2byte	0x202
	.byte	0xa
	.4byte	0xd8
	.uleb128 0x14
	.4byte	.LASF263
	.byte	0xa
	.2byte	0x1ff
	.byte	0x9
	.4byte	0xc0
	.uleb128 0x18
	.4byte	.LASF264
	.byte	0x5
	.byte	0x89
	.byte	0x6
	.4byte	0xc19
	.uleb128 0x2
	.4byte	0xd8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF265
	.byte	0xa
	.2byte	0x1fc
	.uleb128 0xe
	.4byte	.LASF266
	.byte	0xa
	.2byte	0x209
	.uleb128 0x12
	.4byte	.LASF267
	.byte	0x7
	.2byte	0x262
	.byte	0xd
	.4byte	0x103
	.4byte	0xc4a
	.uleb128 0x2
	.4byte	0xc0
	.uleb128 0x2
	.4byte	0x270
	.uleb128 0x2
	.4byte	0xc0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x20f
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc84
	.uleb128 0x8
	.4byte	.LASF270
	.2byte	0x20f
	.byte	0x24
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF272
	.2byte	0x211
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF269
	.2byte	0x1fa
	.byte	0x9
	.4byte	0xb4
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf7
	.uleb128 0x8
	.4byte	.LASF271
	.2byte	0x1fa
	.byte	0x25
	.4byte	0x919
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF230
	.2byte	0x1fa
	.byte	0x2f
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF272
	.2byte	0x1fa
	.byte	0x3e
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF273
	.2byte	0x1fa
	.byte	0x4b
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"i"
	.2byte	0x1fc
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF274
	.2byte	0x1fd
	.byte	0xd
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x1f0
	.byte	0x11
	.4byte	0xd8
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd31
	.uleb128 0x8
	.4byte	.LASF274
	.2byte	0x1f0
	.byte	0x28
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"val"
	.2byte	0x1f2
	.byte	0xe
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF275
	.2byte	0x1e7
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd6a
	.uleb128 0x8
	.4byte	.LASF270
	.2byte	0x1e7
	.byte	0x1a
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF276
	.2byte	0x1e9
	.byte	0xd
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x30
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x1da
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF277
	.2byte	0x1a3
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf6
	.uleb128 0x8
	.4byte	.LASF225
	.2byte	0x1a3
	.byte	0x19
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF278
	.2byte	0x1a3
	.byte	0x28
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF279
	.2byte	0x1a5
	.byte	0x18
	.4byte	0x493
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF280
	.2byte	0x1a6
	.byte	0xf
	.4byte	0x919
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF281
	.2byte	0x1a7
	.byte	0x16
	.4byte	0x487
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF282
	.2byte	0x1a8
	.byte	0x10
	.4byte	0xdf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x986
	.uleb128 0x31
	.4byte	.LASF295
	.byte	0x1
	.2byte	0x187
	.byte	0xd
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe50
	.uleb128 0x8
	.4byte	.LASF279
	.2byte	0x187
	.byte	0x31
	.4byte	0x493
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"buf"
	.byte	0x1
	.2byte	0x187
	.byte	0x43
	.4byte	0x919
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF278
	.2byte	0x187
	.byte	0x51
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF283
	.2byte	0x189
	.byte	0x1c
	.4byte	0x27c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF284
	.2byte	0x153
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef4
	.uleb128 0x8
	.4byte	.LASF225
	.2byte	0x153
	.byte	0x15
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x8
	.4byte	.LASF270
	.2byte	0x153
	.byte	0x1f
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.string	"i"
	.2byte	0x155
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF285
	.2byte	0x156
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF286
	.2byte	0x157
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF287
	.2byte	0x158
	.byte	0x12
	.4byte	0x814
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF288
	.2byte	0x159
	.byte	0x13
	.4byte	0xef4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.4byte	.LASF289
	.2byte	0x15a
	.byte	0x13
	.4byte	0xef4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.4byte	.LASF290
	.2byte	0x15b
	.byte	0x17
	.4byte	0x8c4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x33
	.4byte	0x53a
	.4byte	0xf04
	.uleb128 0x34
	.4byte	0x6a
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.4byte	.LASF291
	.2byte	0x138
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf6a
	.uleb128 0x8
	.4byte	.LASF225
	.2byte	0x138
	.byte	0x1a
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF292
	.2byte	0x138
	.byte	0x29
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"div"
	.2byte	0x13a
	.byte	0xe
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF293
	.2byte	0x13b
	.byte	0xe
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF294
	.2byte	0x13c
	.byte	0xe
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.4byte	.LASF296
	.byte	0x1
	.2byte	0x11d
	.byte	0xd
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf91
	.uleb128 0x5
	.4byte	.LASF282
	.2byte	0x11f
	.byte	0x10
	.4byte	0xdf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF297
	.byte	0xe0
	.4byte	0x63
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x102b
	.uleb128 0x1e
	.4byte	.LASF298
	.byte	0xe0
	.byte	0x1e
	.4byte	0x102b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.4byte	.LASF299
	.byte	0xe0
	.byte	0x2c
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0xc
	.4byte	.LASF300
	.byte	0xe2
	.byte	0x15
	.4byte	0xcc
	.uleb128 0x5
	.byte	0x3
	.4byte	tsen_offset.0
	.uleb128 0xf
	.string	"val"
	.byte	0xe3
	.byte	0xb
	.4byte	0x85c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0xc
	.4byte	.LASF233
	.byte	0xe7
	.byte	0x16
	.4byte	0x814
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF234
	.byte	0xf8
	.byte	0x1b
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.4byte	0x1185
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.2byte	0x10b
	.byte	0x53
	.uleb128 0x20
	.4byte	0x1185
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.2byte	0x10d
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xa8
	.uleb128 0x21
	.4byte	.LASF302
	.byte	0xda
	.4byte	0x63
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.4byte	.LASF303
	.byte	0xad
	.4byte	0x63
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10d3
	.uleb128 0x22
	.string	"tmp"
	.byte	0xad
	.byte	0x1b
	.4byte	0x102b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.4byte	.LASF304
	.byte	0xaf
	.byte	0x15
	.4byte	0x863
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.4byte	.LASF305
	.byte	0xb0
	.byte	0xe
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.string	"i"
	.byte	0xb1
	.byte	0xd
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xf
	.string	"v0"
	.byte	0xb2
	.byte	0xe
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"v1"
	.byte	0xb2
	.byte	0x13
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.4byte	.LASF306
	.byte	0xb3
	.byte	0xb
	.4byte	0x85c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x36
	.4byte	.LASF251
	.byte	0x1
	.byte	0xb9
	.byte	0x19
	.uleb128 0x2
	.4byte	0x63
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF307
	.byte	0x9a
	.4byte	0x63
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.4byte	.LASF308
	.byte	0x1
	.byte	0x64
	.byte	0xd
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x114e
	.uleb128 0xc
	.4byte	.LASF304
	.byte	0x66
	.byte	0x15
	.4byte	0x863
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.4byte	.LASF305
	.byte	0x67
	.byte	0xe
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.string	"i"
	.byte	0x68
	.byte	0xd
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xf
	.string	"v0"
	.byte	0x69
	.byte	0xe
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"v1"
	.byte	0x69
	.byte	0x13
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.4byte	.LASF306
	.byte	0x6a
	.byte	0xb
	.4byte	0x85c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x38
	.4byte	.LASF311
	.byte	0x1
	.byte	0x53
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x39
	.4byte	.LASF312
	.byte	0x1
	.byte	0x4d
	.byte	0x6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1185
	.uleb128 0x22
	.string	"div"
	.byte	0x4d
	.byte	0x1d
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF313
	.byte	0x2
	.byte	0xb3
	.byte	0x3a
	.4byte	0x8cf
	.byte	0x3
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
	.uleb128 0x5
	.uleb128 0x34
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 22
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x49
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
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 22
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.sleb128 1
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.4byte	0x9c
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
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
	.byte	0x7
	.4byte	.LFB39
	.uleb128 .LFE39-.LFB39
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF163:
	.string	"ADC_PGA_GAIN_32"
.LASF21:
	.string	"ERROR"
.LASF66:
	.string	"GLB_ADC_CLK_96M"
.LASF215:
	.string	"ADC_FIFO_THRESHOLD_16"
.LASF285:
	.string	"chan"
.LASF12:
	.string	"char"
.LASF288:
	.string	"pos_chlist_single"
.LASF177:
	.string	"ADC_PGA_VCM_Type"
.LASF54:
	.string	"GLB_GPIO_Type"
.LASF105:
	.string	"srcDmaAddr"
.LASF273:
	.string	"raw_flag"
.LASF240:
	.string	"DMA_LLI_Init"
.LASF62:
	.string	"GPIO_FUN_ANALOG"
.LASF175:
	.string	"ADC_PGA_VCM_1P4V"
.LASF237:
	.string	"GLB_GPIO_Func_Init"
.LASF181:
	.string	"ADC_VREF_3P2V"
.LASF218:
	.string	"dmaEn"
.LASF201:
	.string	"inputMode"
.LASF58:
	.string	"GPIO_FUN_I2C"
.LASF151:
	.string	"ADC_CLK_DIV_12"
.LASF152:
	.string	"ADC_CLK_DIV_16"
.LASF290:
	.string	"adc_fifo_cfg"
.LASF239:
	.string	"DMA_LLI_Update"
.LASF286:
	.string	"channel_num"
.LASF145:
	.string	"ADC_V11_SEL_1P18V"
.LASF262:
	.string	"ADC_Read_FIFO"
.LASF225:
	.string	"mode"
.LASF68:
	.string	"GLB_ADC_CLK_Type"
.LASF282:
	.string	"pstctx"
.LASF99:
	.string	"DMA_REQ_NONE"
.LASF104:
	.string	"DMA_INT_Type"
.LASF269:
	.string	"bl_adc_parse_data"
.LASF133:
	.string	"ADC_CHAN_SENP2"
.LASF15:
	.string	"int16_t"
.LASF291:
	.string	"bl_adc_freq_init"
.LASF294:
	.string	"mode_freq"
.LASF153:
	.string	"ADC_CLK_DIV_20"
.LASF263:
	.string	"ADC_Get_FIFO_Count"
.LASF154:
	.string	"ADC_CLK_DIV_24"
.LASF184:
	.string	"ADC_INPUT_SINGLE_END"
.LASF185:
	.string	"ADC_INPUT_DIFF"
.LASF279:
	.string	"pstlli"
.LASF69:
	.string	"TransferSize"
.LASF116:
	.string	"ADC_CHAN3"
.LASF57:
	.string	"GPIO_FUN_SPI"
.LASF59:
	.string	"GPIO_FUN_UART"
.LASF293:
	.string	"source_freq"
.LASF176:
	.string	"ADC_PGA_VCM_1P6V"
.LASF23:
	.string	"BL_Err_Type"
.LASF19:
	.string	"uint32_t"
.LASF14:
	.string	"int8_t"
.LASF186:
	.string	"ADC_SIG_INPUT_Type"
.LASF123:
	.string	"ADC_CHAN10"
.LASF301:
	.string	"bl_adc_start"
.LASF111:
	.string	"dstPeriph"
.LASF107:
	.string	"nextLLI"
.LASF210:
	.string	"float"
.LASF307:
	.string	"test_adc_init"
.LASF135:
	.string	"ADC_CHAN_SENP0"
.LASF134:
	.string	"ADC_CHAN_SENP1"
.LASF204:
	.string	"offsetCalibVal"
.LASF132:
	.string	"ADC_CHAN_SENP3"
.LASF247:
	.string	"bl_printk"
.LASF236:
	.string	"DMA_IntMask"
.LASF155:
	.string	"ADC_CLK_DIV_32"
.LASF304:
	.string	"result"
.LASF9:
	.string	"long long unsigned int"
.LASF249:
	.string	"xTaskGetTickCountFromISR"
.LASF271:
	.string	"parr"
.LASF64:
	.string	"GPIO_FUN_JTAG"
.LASF136:
	.string	"ADC_CHAN_GND"
.LASF172:
	.string	"ADC_CHOP_MOD_Type"
.LASF256:
	.string	"ADC_Init"
.LASF101:
	.string	"DMA_INT_TCOMPLETED"
.LASF106:
	.string	"destDmaAddr"
.LASF97:
	.string	"DMA_REQ_GPADC0"
.LASF98:
	.string	"DMA_REQ_GPADC1"
.LASF22:
	.string	"TIMEOUT"
.LASF78:
	.string	"DMA_TRNS_WIDTH_16BITS"
.LASF260:
	.string	"ADC_Reset"
.LASF242:
	.string	"pvPortMalloc"
.LASF305:
	.string	"regVal"
.LASF75:
	.string	"reserved_25"
.LASF265:
	.string	"ADC_Start"
.LASF208:
	.string	"value"
.LASF86:
	.string	"DMA_BURST_SIZE_4"
.LASF231:
	.string	"adc_ctx_t"
.LASF232:
	.string	"TrapNetCounter"
.LASF252:
	.string	"ADC_Parse_Result"
.LASF140:
	.string	"ADC_V18_SEL_1P82V"
.LASF230:
	.string	"data_size"
.LASF13:
	.string	"size_t"
.LASF159:
	.string	"ADC_PGA_GAIN_2"
.LASF73:
	.string	"DWidth"
.LASF310:
	.string	"adc_calc_data"
.LASF76:
	.string	"Prot"
.LASF45:
	.string	"GLB_GPIO_PIN_15"
.LASF147:
	.string	"ADC_V11_SEL_Type"
.LASF49:
	.string	"GLB_GPIO_PIN_19"
.LASF143:
	.string	"ADC_V11_SEL_1P0V"
.LASF292:
	.string	"freq"
.LASF270:
	.string	"gpio_num"
.LASF72:
	.string	"SWidth"
.LASF70:
	.string	"SBSize"
.LASF146:
	.string	"ADC_V11_SEL_1P26V"
.LASF148:
	.string	"ADC_CLK_DIV_1"
.LASF156:
	.string	"ADC_CLK_Type"
.LASF302:
	.string	"test_adc_test"
.LASF91:
	.string	"DMA_REQ_UART1_RX"
.LASF150:
	.string	"ADC_CLK_DIV_8"
.LASF206:
	.string	"posChan"
.LASF20:
	.string	"SUCCESS"
.LASF248:
	.string	"xTaskGetTickCount"
.LASF24:
	.string	"DISABLE"
.LASF192:
	.string	"ADC_Data_Width_Type"
.LASF157:
	.string	"ADC_PGA_GAIN_NONE"
.LASF283:
	.string	"dma_ctrl_reg"
.LASF144:
	.string	"ADC_V11_SEL_1P1V"
.LASF255:
	.string	"ADC_Channel_Config"
.LASF65:
	.string	"GLB_GPIO_FUNC_Type"
.LASF71:
	.string	"DBSize"
.LASF182:
	.string	"ADC_VREF_2V"
.LASF303:
	.string	"test_adc_get"
.LASF10:
	.string	"unsigned int"
.LASF56:
	.string	"GPIO_FUN_FLASH"
.LASF280:
	.string	"llibuf"
.LASF17:
	.string	"uint8_t"
.LASF224:
	.string	"adc_ctx"
.LASF60:
	.string	"GPIO_FUN_PWM"
.LASF158:
	.string	"ADC_PGA_GAIN_1"
.LASF63:
	.string	"GPIO_FUN_SWGPIO"
.LASF27:
	.string	"UNMASK"
.LASF160:
	.string	"ADC_PGA_GAIN_4"
.LASF205:
	.string	"ADC_CFG_Type"
.LASF161:
	.string	"ADC_PGA_GAIN_8"
.LASF202:
	.string	"resWidth"
.LASF113:
	.string	"ADC_CHAN0"
.LASF114:
	.string	"ADC_CHAN1"
.LASF115:
	.string	"ADC_CHAN2"
.LASF183:
	.string	"ADC_VREF_Type"
.LASF117:
	.string	"ADC_CHAN4"
.LASF118:
	.string	"ADC_CHAN5"
.LASF119:
	.string	"ADC_CHAN6"
.LASF120:
	.string	"ADC_CHAN7"
.LASF121:
	.string	"ADC_CHAN8"
.LASF122:
	.string	"ADC_CHAN9"
.LASF200:
	.string	"vref"
.LASF227:
	.string	"adc_lli"
.LASF308:
	.string	"ADC_tsen_case"
.LASF278:
	.string	"data_num"
.LASF61:
	.string	"GPIO_FUN_EXT_PA"
.LASF8:
	.string	"long long int"
.LASF191:
	.string	"ADC_DATA_WIDTH_16_WITH_256_AVERAGE"
.LASF245:
	.string	"printf"
.LASF195:
	.string	"clkDiv"
.LASF188:
	.string	"ADC_DATA_WIDTH_14_WITH_16_AVERAGE"
.LASF228:
	.string	"lli_flag"
.LASF235:
	.string	"DMA_Channel_Enable"
.LASF257:
	.string	"DMA_Enable"
.LASF100:
	.string	"DMA_Periph_Req_Type"
.LASF250:
	.string	"ADC_Trim_TSEN"
.LASF241:
	.string	"DMA_Channel_Disable"
.LASF220:
	.string	"BaseType_t"
.LASF138:
	.string	"ADC_V18_SEL_1P62V"
.LASF297:
	.string	"bl_tsen_adc_get"
.LASF223:
	.string	"DMA_Control_Reg"
.LASF190:
	.string	"ADC_DATA_WIDTH_16_WITH_128_AVERAGE"
.LASF92:
	.string	"DMA_REQ_UART1_TX"
.LASF296:
	.string	"adc_data_update"
.LASF125:
	.string	"ADC_CHAN_DAC_OUTA"
.LASF126:
	.string	"ADC_CHAN_DAC_OUTB"
.LASF127:
	.string	"ADC_CHAN_TSEN_P"
.LASF110:
	.string	"srcPeriph"
.LASF166:
	.string	"ADC_BIAS_SEL_AON_BANDGAP"
.LASF313:
	.string	"xPortIsInsideInterrupt"
.LASF40:
	.string	"GLB_GPIO_PIN_10"
.LASF41:
	.string	"GLB_GPIO_PIN_11"
.LASF42:
	.string	"GLB_GPIO_PIN_12"
.LASF43:
	.string	"GLB_GPIO_PIN_13"
.LASF44:
	.string	"GLB_GPIO_PIN_14"
.LASF287:
	.string	"adccfg"
.LASF46:
	.string	"GLB_GPIO_PIN_16"
.LASF47:
	.string	"GLB_GPIO_PIN_17"
.LASF48:
	.string	"GLB_GPIO_PIN_18"
.LASF189:
	.string	"ADC_DATA_WIDTH_16_WITH_64_AVERAGE"
.LASF253:
	.string	"ADC_FIFO_Cfg"
.LASF170:
	.string	"ADC_CHOP_MOD_AZ_PGA_ON"
.LASF221:
	.string	"TickType_t"
.LASF171:
	.string	"ADC_CHOP_MOD_AZ_PGA_RPC_ON"
.LASF274:
	.string	"data"
.LASF187:
	.string	"ADC_DATA_WIDTH_12"
.LASF142:
	.string	"ADC_V18_SEL_Type"
.LASF11:
	.string	"long double"
.LASF55:
	.string	"GPIO_FUN_SDIO"
.LASF18:
	.string	"uint16_t"
.LASF198:
	.string	"chopMode"
.LASF109:
	.string	"DMA_LLI_Ctrl_Type"
.LASF112:
	.string	"DMA_LLI_Cfg_Type"
.LASF272:
	.string	"channel"
.LASF67:
	.string	"GLB_ADC_CLK_XCLK"
.LASF50:
	.string	"GLB_GPIO_PIN_20"
.LASF51:
	.string	"GLB_GPIO_PIN_21"
.LASF52:
	.string	"GLB_GPIO_PIN_22"
.LASF149:
	.string	"ADC_CLK_DIV_4"
.LASF203:
	.string	"offsetCalibEn"
.LASF77:
	.string	"DMA_TRNS_WIDTH_8BITS"
.LASF277:
	.string	"bl_adc_dma_init"
.LASF4:
	.string	"short int"
.LASF312:
	.string	"ADC_Clock_Init"
.LASF6:
	.string	"long int"
.LASF80:
	.string	"DMA_TRNS_M2M"
.LASF81:
	.string	"DMA_TRNS_M2P"
.LASF30:
	.string	"GLB_GPIO_PIN_0"
.LASF31:
	.string	"GLB_GPIO_PIN_1"
.LASF32:
	.string	"GLB_GPIO_PIN_2"
.LASF33:
	.string	"GLB_GPIO_PIN_3"
.LASF34:
	.string	"GLB_GPIO_PIN_4"
.LASF35:
	.string	"GLB_GPIO_PIN_5"
.LASF36:
	.string	"GLB_GPIO_PIN_6"
.LASF37:
	.string	"GLB_GPIO_PIN_7"
.LASF38:
	.string	"GLB_GPIO_PIN_8"
.LASF39:
	.string	"GLB_GPIO_PIN_9"
.LASF298:
	.string	"temp"
.LASF289:
	.string	"neg_chlist_single"
.LASF141:
	.string	"ADC_V18_SEL_1P92V"
.LASF178:
	.string	"ADC_TSEN_MOD_INTERNAL_DIODE"
.LASF108:
	.string	"dmaCtrl"
.LASF211:
	.string	"ADC_Result_Type"
.LASF261:
	.string	"ADC_SET_TSVBE_HIGH"
.LASF139:
	.string	"ADC_V18_SEL_1P72V"
.LASF180:
	.string	"ADC_TSEN_MOD_Type"
.LASF28:
	.string	"MASK"
.LASF300:
	.string	"tsen_offset"
.LASF128:
	.string	"ADC_CHAN_TSEN_N"
.LASF179:
	.string	"ADC_TSEN_MOD_EXTERNAL_DIODE"
.LASF167:
	.string	"ADC_BIAS_SEL_Type"
.LASF165:
	.string	"ADC_BIAS_SEL_MAIN_BANDGAP"
.LASF284:
	.string	"bl_adc_init"
.LASF124:
	.string	"ADC_CHAN11"
.LASF229:
	.string	"chan_init_table"
.LASF209:
	.string	"volt"
.LASF216:
	.string	"ADC_FIFO_Threshold_Type"
.LASF131:
	.string	"ADC_CHAN_VABT_HALF"
.LASF169:
	.string	"ADC_CHOP_MOD_AZ_ON"
.LASF25:
	.string	"ENABLE"
.LASF85:
	.string	"DMA_BURST_SIZE_1"
.LASF93:
	.string	"DMA_REQ_I2C_RX"
.LASF7:
	.string	"long unsigned int"
.LASF102:
	.string	"DMA_INT_ERR"
.LASF194:
	.string	"v11Sel"
.LASF267:
	.string	"GLB_Set_ADC_CLK"
.LASF87:
	.string	"DMA_BURST_SIZE_8"
.LASF29:
	.string	"BL_Mask_Type"
.LASF16:
	.string	"int32_t"
.LASF103:
	.string	"DMA_INT_ALL"
.LASF251:
	.string	"aos_msleep"
.LASF164:
	.string	"ADC_PGA_GAIN_Type"
.LASF26:
	.string	"BL_Fun_Type"
.LASF137:
	.string	"ADC_Chan_Type"
.LASF254:
	.string	"ADC_Tsen_Init"
.LASF264:
	.string	"BL602_Delay_MS"
.LASF89:
	.string	"DMA_REQ_UART0_RX"
.LASF193:
	.string	"v18Sel"
.LASF3:
	.string	"unsigned char"
.LASF219:
	.string	"ADC_FIFO_Cfg_Type"
.LASF129:
	.string	"ADC_CHAN_VREF"
.LASF266:
	.string	"ADC_SET_TSVBE_LOW"
.LASF88:
	.string	"DMA_BURST_SIZE_16"
.LASF281:
	.string	"llicfg"
.LASF162:
	.string	"ADC_PGA_GAIN_16"
.LASF53:
	.string	"GLB_GPIO_PIN_MAX"
.LASF246:
	.string	"TSEN_Get_Temp"
.LASF222:
	.string	"bl_adc_cb_t"
.LASF276:
	.string	"adc_pin"
.LASF82:
	.string	"DMA_TRNS_P2M"
.LASF83:
	.string	"DMA_TRNS_P2P"
.LASF259:
	.string	"ADC_Disable"
.LASF84:
	.string	"DMA_Trans_Dir_Type"
.LASF234:
	.string	"adcFifoCfg"
.LASF199:
	.string	"biasSel"
.LASF233:
	.string	"adcCfg"
.LASF226:
	.string	"channel_data"
.LASF275:
	.string	"bl_adc_gpio_init"
.LASF207:
	.string	"negChan"
.LASF243:
	.string	"ADC_Scan_Channel_Config"
.LASF2:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF94:
	.string	"DMA_REQ_I2C_TX"
.LASF299:
	.string	"log_flag"
.LASF295:
	.string	"adc_dma_lli_init"
.LASF268:
	.string	"bl_adc_get_channel_by_gpio"
.LASF196:
	.string	"gain1"
.LASF197:
	.string	"gain2"
.LASF130:
	.string	"ADC_CHAN_DCTEST"
.LASF311:
	.string	"TSEN_Calibration"
.LASF79:
	.string	"DMA_TRNS_WIDTH_32BITS"
.LASF174:
	.string	"ADC_PGA_VCM_1P2V"
.LASF90:
	.string	"DMA_REQ_UART0_TX"
.LASF74:
	.string	"SLargerD"
.LASF212:
	.string	"ADC_FIFO_THRESHOLD_1"
.LASF213:
	.string	"ADC_FIFO_THRESHOLD_4"
.LASF309:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF214:
	.string	"ADC_FIFO_THRESHOLD_8"
.LASF168:
	.string	"ADC_CHOP_MOD_ALL_OFF"
.LASF95:
	.string	"DMA_REQ_SPI_RX"
.LASF244:
	.string	"bl_dma_find_ctx_by_channel"
.LASF217:
	.string	"fifoThreshold"
.LASF173:
	.string	"ADC_PGA_VCM_1V"
.LASF96:
	.string	"DMA_REQ_SPI_TX"
.LASF306:
	.string	"v_error"
.LASF238:
	.string	"bl_dma_irq_register"
.LASF258:
	.string	"ADC_Enable"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_adc.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
	.globl	__truncdfsf2
	.globl	__divdf3
	.globl	__extendsfdf2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
