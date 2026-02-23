	.file	"bl_dac_audio.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_dac_audio.c"
	.section	.sbss.gp_audio_dac_dev,"aw",@nobits
	.align	2
	.type	gp_audio_dac_dev, @object
	.size	gp_audio_dac_dev, 4
gp_audio_dac_dev:
	.zero	4
	.section	.sdata.dmaCtrlRegVal,"aw"
	.align	2
	.type	dmaCtrlRegVal, @object
	.size	dmaCtrlRegVal, 4
dmaCtrlRegVal:
	.byte	232
	.byte	3
	.byte	72
	.byte	132
	.section	.sdata.lliCfg,"aw"
	.align	2
	.type	lliCfg, @object
	.size	lliCfg, 3
lliCfg:
	.byte	1
	.byte	0
	.byte	23
	.section	.data.gpioCfg,"aw"
	.align	2
	.type	gpioCfg, @object
	.size	gpioCfg, 12
gpioCfg:
	.byte	13
	.byte	10
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	14
	.byte	10
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.section	.sdata.dacCfg,"aw"
	.align	2
	.type	dacCfg, @object
	.size	dacCfg, 6
dacCfg:
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.section	.sdata.chACfg,"aw"
	.align	2
	.type	chACfg, @object
	.size	chACfg, 4
chACfg:
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.section	.sdata.chBCfg,"aw"
	.align	2
	.type	chBCfg, @object
	.size	chBCfg, 4
chBCfg:
	.byte	1
	.byte	1
	.byte	1
	.byte	4
	.section	.text.__dac_clock_init,"ax",@progbits
	.align	1
	.type	__dac_clock_init, @function
__dac_clock_init:
.LFB26:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_dac_audio.c"
	.loc 1 102 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 103 5
	li	a2,64
	li	a1,0
	li	a0,1
	call	GLB_Set_DAC_CLK
	.loc 1 104 1
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
.LFE26:
	.size	__dac_clock_init, .-__dac_clock_init
	.section	.text.__dac_gpio_init,"ax",@progbits
	.align	1
	.type	__dac_gpio_init, @function
__dac_gpio_init:
.LFB27:
	.loc 1 107 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 108 5
	lui	a5,%hi(gpioCfg)
	addi	a0,a5,%lo(gpioCfg)
	call	GLB_GPIO_Init
	.loc 1 109 1
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
.LFE27:
	.size	__dac_gpio_init, .-__dac_gpio_init
	.section	.text.__dac_lli_init,"ax",@progbits
	.align	1
	.type	__dac_lli_init, @function
__dac_lli_init:
.LFB28:
	.loc 1 112 1
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
	.loc 1 113 52
	lw	a5,-20(s0)
	lw	a5,36(a5)
	.loc 1 113 37
	mv	a4,a5
	.loc 1 113 35
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 114 36
	lw	a5,-20(s0)
	li	a4,1073750016
	addi	a4,a4,72
	sw	a4,8(a5)
	.loc 1 115 44
	lw	a5,-20(s0)
	addi	a5,a5,20
	.loc 1 115 34
	mv	a4,a5
	.loc 1 115 32
	lw	a5,-20(s0)
	sw	a4,12(a5)
	.loc 1 116 40
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 116 67
	srli	a5,a5,3
	mv	a4,a5
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 1 116 32
	lui	a5,%hi(dmaCtrlRegVal)
	li	a4,4096
	addi	a4,a4,-1
	and	a4,a3,a4
	lw	a2,%lo(dmaCtrlRegVal)(a5)
	li	a3,-4096
	and	a3,a2,a3
	or	a4,a3,a4
	sw	a4,%lo(dmaCtrlRegVal)(a5)
	.loc 1 117 31
	lw	a5,-20(s0)
	lui	a4,%hi(dmaCtrlRegVal)
	lw	a4,%lo(dmaCtrlRegVal)(a4)
	sw	a4,16(a5)
	.loc 1 119 53
	lw	a5,-20(s0)
	lw	a5,36(a5)
	.loc 1 119 38
	mv	a4,a5
	.loc 1 119 78
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 119 99
	srli	a5,a5,1
	.loc 1 119 70
	add	a4,a4,a5
	.loc 1 119 35
	lw	a5,-20(s0)
	sw	a4,20(a5)
	.loc 1 120 36
	lw	a5,-20(s0)
	li	a4,1073750016
	addi	a4,a4,72
	sw	a4,24(a5)
	.loc 1 121 42
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 121 32
	mv	a4,a5
	.loc 1 121 31
	lw	a5,-20(s0)
	sw	a4,28(a5)
	.loc 1 122 40
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 122 67
	srli	a5,a5,3
	mv	a4,a5
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 1 122 32
	lui	a5,%hi(dmaCtrlRegVal)
	li	a4,4096
	addi	a4,a4,-1
	and	a4,a3,a4
	lw	a2,%lo(dmaCtrlRegVal)(a5)
	li	a3,-4096
	and	a3,a2,a3
	or	a4,a3,a4
	sw	a4,%lo(dmaCtrlRegVal)(a5)
	.loc 1 123 31
	lw	a5,-20(s0)
	lui	a4,%hi(dmaCtrlRegVal)
	lw	a4,%lo(dmaCtrlRegVal)(a4)
	sw	a4,32(a5)
	.loc 1 125 5
	lui	a5,%hi(lliCfg)
	addi	a1,a5,%lo(lliCfg)
	li	a0,0
	call	DMA_LLI_Init
	.loc 1 126 56
	lui	a5,%hi(gp_audio_dac_dev)
	lw	a5,%lo(gp_audio_dac_dev)(a5)
	.loc 1 126 39
	addi	a5,a5,4
	.loc 1 126 5
	mv	a1,a5
	li	a0,0
	call	DMA_LLI_Update
	.loc 1 127 1
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
.LFE28:
	.size	__dac_lli_init, .-__dac_lli_init
	.section	.text.__dma_int_clear,"ax",@progbits
	.align	1
	.type	__dma_int_clear, @function
__dma_int_clear:
.LFB29:
	.loc 1 130 1
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
	.loc 1 134 14
	li	a5,1073790976
	sw	a5,-20(s0)
	.loc 1 136 44
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 136 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 137 62
	lw	a5,-36(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 1 137 57
	mv	a4,a5
	lw	a5,-24(s0)
	and	a5,a4,a5
	andi	a5,a5,255
	.loc 1 137 7
	beq	a5,zero,.L5
	.loc 1 139 48
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 1 139 16
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 140 16
	lw	a5,-24(s0)
	andi	a5,a5,255
	sw	a5,-28(s0)
	.loc 1 141 22
	lw	a5,-36(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 141 16
	lw	a5,-28(s0)
	or	a5,a5,a4
	sw	a5,-28(s0)
	.loc 1 142 29
	lw	a5,-24(s0)
	andi	a5,a5,-256
	.loc 1 142 16
	lw	a4,-28(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 143 39
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 1 143 12
	mv	a4,a5
	.loc 1 143 47
	lw	a5,-24(s0)
	sw	a5,0(a4)
.L5:
	.loc 1 146 44
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 146 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 147 62
	lw	a5,-36(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 1 147 57
	mv	a4,a5
	lw	a5,-24(s0)
	and	a5,a4,a5
	andi	a5,a5,255
	.loc 1 147 7
	beq	a5,zero,.L6
	.loc 1 149 48
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 149 16
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 150 16
	lw	a5,-24(s0)
	andi	a5,a5,255
	sw	a5,-28(s0)
	.loc 1 151 22
	lw	a5,-36(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 151 16
	lw	a5,-28(s0)
	or	a5,a5,a4
	sw	a5,-28(s0)
	.loc 1 152 29
	lw	a5,-24(s0)
	andi	a5,a5,-256
	.loc 1 152 16
	lw	a4,-28(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 153 39
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 153 12
	mv	a4,a5
	.loc 1 153 48
	lw	a5,-24(s0)
	sw	a5,0(a4)
.L6:
	.loc 1 156 12
	li	a5,0
	.loc 1 157 1
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
	.size	__dma_int_clear, .-__dma_int_clear
	.section	.text.__dma_irq_handler,"ax",@progbits
	.align	1
	.type	__dma_irq_handler, @function
__dma_irq_handler:
.LFB30:
	.loc 1 160 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 164 14
	lui	a5,%hi(gp_audio_dac_dev)
	lw	a5,%lo(gp_audio_dac_dev)(a5)
	.loc 1 164 8
	beq	a5,zero,.L16
	.loc 1 168 15
	li	a5,1073790976
	addi	a5,a5,4
	.loc 1 168 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 169 57
	lw	a5,-24(s0)
	andi	a5,a5,1
	.loc 1 169 7
	beq	a5,zero,.L11
	.loc 1 171 32
	lui	a5,%hi(gp_audio_dac_dev)
	lw	a5,%lo(gp_audio_dac_dev)(a5)
	lw	a5,40(a5)
	.loc 1 171 53
	srli	a5,a5,1
	.loc 1 171 14
	sw	a5,-28(s0)
	.loc 1 173 29
	lui	a5,%hi(gp_audio_dac_dev)
	lw	a5,%lo(gp_audio_dac_dev)(a5)
	lw	a5,48(a5)
	.loc 1 173 12
	beq	a5,zero,.L11
	.loc 1 174 35
	lui	a5,%hi(gp_audio_dac_dev)
	lw	a5,%lo(gp_audio_dac_dev)(a5)
	lbu	a4,0(a5)
	.loc 1 174 17
	addi	a4,a4,1
	andi	a4,a4,0xff
	.loc 1 174 16
	sb	a4,0(a5)
	.loc 1 174 35
	lbu	a4,0(a5)
	.loc 1 174 16
	li	a5,1
	bleu	a4,a5,.L12
	.loc 1 175 33
	lui	a5,%hi(gp_audio_dac_dev)
	lw	a5,%lo(gp_audio_dac_dev)(a5)
	.loc 1 175 44
	sb	zero,0(a5)
.L12:
	.loc 1 177 33
	lui	a5,%hi(gp_audio_dac_dev)
	lw	a5,%lo(gp_audio_dac_dev)(a5)
	lbu	a5,0(a5)
	.loc 1 177 16
	beq	a5,zero,.L13
	.loc 1 178 39
	lui	a5,%hi(gp_audio_dac_dev)
	lw	a5,%lo(gp_audio_dac_dev)(a5)
	lw	a5,48(a5)
	.loc 1 178 64
	lui	a4,%hi(gp_audio_dac_dev)
	lw	a4,%lo(gp_audio_dac_dev)(a4)
	.loc 1 178 23
	lw	a0,52(a4)
	.loc 1 179 64
	lui	a4,%hi(gp_audio_dac_dev)
	lw	a4,%lo(gp_audio_dac_dev)(a4)
	.loc 1 178 23
	lw	a1,36(a4)
	.loc 1 181 64
	lui	a4,%hi(gp_audio_dac_dev)
	lw	a4,%lo(gp_audio_dac_dev)(a4)
	.loc 1 178 23
	lw	a4,44(a4)
	mv	a3,a4
	lw	a2,-28(s0)
	jalr	a5
.LVL0:
	sw	a0,-20(s0)
	j	.L14
.L13:
	.loc 1 183 39
	lui	a5,%hi(gp_audio_dac_dev)
	lw	a5,%lo(gp_audio_dac_dev)(a5)
	lw	a5,48(a5)
	.loc 1 183 64
	lui	a4,%hi(gp_audio_dac_dev)
	lw	a4,%lo(gp_audio_dac_dev)(a4)
	.loc 1 183 23
	lw	a0,52(a4)
	.loc 1 184 64
	lui	a4,%hi(gp_audio_dac_dev)
	lw	a4,%lo(gp_audio_dac_dev)(a4)
	lw	a3,36(a4)
	.loc 1 183 23
	lw	a4,-28(s0)
	add	a1,a3,a4
	.loc 1 186 64
	lui	a4,%hi(gp_audio_dac_dev)
	lw	a4,%lo(gp_audio_dac_dev)(a4)
	.loc 1 183 23
	lw	a4,44(a4)
	mv	a3,a4
	lw	a2,-28(s0)
	jalr	a5
.LVL1:
	sw	a0,-20(s0)
.L14:
	.loc 1 188 16
	lw	a5,-20(s0)
	beq	a5,zero,.L15
	.loc 1 189 33
	lui	a5,%hi(gp_audio_dac_dev)
	lw	a5,%lo(gp_audio_dac_dev)(a5)
	.loc 1 189 47
	li	a4,1
	sw	a4,44(a5)
	j	.L11
.L15:
	.loc 1 191 33
	lui	a5,%hi(gp_audio_dac_dev)
	lw	a5,%lo(gp_audio_dac_dev)(a5)
	.loc 1 191 47
	sw	zero,44(a5)
.L11:
	.loc 1 195 5
	li	a0,0
	call	__dma_int_clear
	j	.L8
.L16:
	.loc 1 165 9
	nop
.L8:
	.loc 1 196 1
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
	.size	__dma_irq_handler, .-__dma_irq_handler
	.section	.text.bl_audio_dac_samplerate_set,"ax",@progbits
	.align	1
	.globl	bl_audio_dac_samplerate_set
	.type	bl_audio_dac_samplerate_set, @function
bl_audio_dac_samplerate_set:
.LFB31:
	.loc 1 199 1
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
	.loc 1 200 16
	lui	a5,%hi(dacCfg)
	addi	a5,a5,%lo(dacCfg)
	lbu	a4,-21(s0)
	sb	a4,3(a5)
	.loc 1 201 12
	li	a5,0
	.loc 1 202 1
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
.LFE31:
	.size	bl_audio_dac_samplerate_set, .-bl_audio_dac_samplerate_set
	.section	.text.bl_audio_dac_tx_ready_config,"ax",@progbits
	.align	1
	.globl	bl_audio_dac_tx_ready_config
	.type	bl_audio_dac_tx_ready_config, @function
bl_audio_dac_tx_ready_config:
.LFB32:
	.loc 1 207 1
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
	sw	a2,-28(s0)
	.loc 1 208 8
	lw	a5,-20(s0)
	bne	a5,zero,.L20
	.loc 1 209 16
	li	a5,-1
	j	.L21
.L20:
	.loc 1 211 19
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,48(a5)
	.loc 1 212 22
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,52(a5)
	.loc 1 213 12
	li	a5,0
.L21:
	.loc 1 214 1
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
.LFE32:
	.size	bl_audio_dac_tx_ready_config, .-bl_audio_dac_tx_ready_config
	.section	.text.bl_audio_dac_rx_ready_config,"ax",@progbits
	.align	1
	.globl	bl_audio_dac_rx_ready_config
	.type	bl_audio_dac_rx_ready_config, @function
bl_audio_dac_rx_ready_config:
.LFB33:
	.loc 1 219 1
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
	sw	a2,-28(s0)
	.loc 1 220 12
	li	a5,0
	.loc 1 221 1
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
.LFE33:
	.size	bl_audio_dac_rx_ready_config, .-bl_audio_dac_rx_ready_config
	.section	.text.bl_audio_dac_tx_buffer_config,"ax",@progbits
	.align	1
	.globl	bl_audio_dac_tx_buffer_config
	.type	bl_audio_dac_tx_buffer_config, @function
bl_audio_dac_tx_buffer_config:
.LFB34:
	.loc 1 224 1
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
	.loc 1 228 21
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 1 228 8
	bne	a5,zero,.L25
	.loc 1 229 32
	lw	a0,-44(s0)
	call	pvPortMalloc
	mv	a4,a0
	.loc 1 229 30 discriminator 1
	lw	a5,-36(s0)
	sw	a4,36(a5)
.L25:
	.loc 1 232 21
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 1 232 8
	bne	a5,zero,.L26
	.loc 1 233 16
	li	a5,-1
	j	.L27
.L26:
	.loc 1 235 21
	lw	a5,-36(s0)
	lw	a4,36(a5)
	.loc 1 235 14
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 236 31
	lw	a5,-36(s0)
	lw	a4,-44(s0)
	sw	a4,40(a5)
	.loc 1 238 10
	lw	a5,-36(s0)
	lw	a5,36(a5)
	sw	a5,-24(s0)
	.loc 1 239 12
	sw	zero,-20(s0)
	.loc 1 239 5
	j	.L28
.L29:
	.loc 1 240 13
	lw	a5,-20(s0)
	slli	a5,a5,1
	lw	a4,-24(s0)
	add	a5,a4,a5
	.loc 1 240 17
	li	a4,512
	sh	a4,0(a5)
	.loc 1 239 56 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L28:
	.loc 1 239 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,40(a5)
	.loc 1 239 48 discriminator 1
	srli	a4,a5,1
	.loc 1 239 19 discriminator 1
	lw	a5,-20(s0)
	bgtu	a4,a5,.L29
	.loc 1 243 12
	li	a5,0
.L27:
	.loc 1 244 1
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
.LFE34:
	.size	bl_audio_dac_tx_buffer_config, .-bl_audio_dac_tx_buffer_config
	.section	.text.bl_audio_dac_rx_buffer_config,"ax",@progbits
	.align	1
	.globl	bl_audio_dac_rx_buffer_config
	.type	bl_audio_dac_rx_buffer_config, @function
bl_audio_dac_rx_buffer_config:
.LFB35:
	.loc 1 249 1
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
	sw	a2,-28(s0)
	.loc 1 250 12
	li	a5,0
	.loc 1 251 1
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
.LFE35:
	.size	bl_audio_dac_rx_buffer_config, .-bl_audio_dac_rx_buffer_config
	.section	.text.bl_audio_dac_start,"ax",@progbits
	.align	1
	.globl	bl_audio_dac_start
	.type	bl_audio_dac_start, @function
bl_audio_dac_start:
.LFB36:
	.loc 1 254 1
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
	.loc 1 255 8
	lw	a5,-20(s0)
	bne	a5,zero,.L33
	.loc 1 256 16
	li	a5,-1
	j	.L34
.L33:
	.loc 1 259 5
	call	DMA_Enable
	.loc 1 260 5
	li	a0,0
	call	DMA_Channel_Disable
	.loc 1 262 5
	li	a2,1
	li	a1,2
	li	a0,0
	call	DMA_IntMask
	.loc 1 263 5
	li	a2,0
	li	a1,0
	li	a0,0
	call	DMA_IntMask
	.loc 1 264 5
	lui	a5,%hi(__dma_irq_handler)
	addi	a1,a5,%lo(__dma_irq_handler)
	li	a0,31
	call	bl_irq_register
	.loc 1 265 5
	li	a0,31
	call	bl_irq_enable
	.loc 1 267 5
	lui	a5,%hi(dacCfg)
	addi	a0,a5,%lo(dacCfg)
	call	GLB_GPIP_DAC_Init
	.loc 1 268 5
	li	a0,1
	call	GPIP_Set_DAC_DMA_TX_FORMAT_SEL
	.loc 1 269 5
	call	GPIP_Set_DAC_DMA_TX_Enable
	.loc 1 270 5
	call	GPIP_DAC_ChanA_Enable
	.loc 1 271 5
	call	GPIP_DAC_ChanB_Enable
	.loc 1 273 5
	lw	a0,-20(s0)
	call	__dac_lli_init
	.loc 1 275 5
	li	a0,0
	call	DMA_Channel_Enable
	.loc 1 277 12
	li	a5,0
.L34:
	.loc 1 278 1
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
	.size	bl_audio_dac_start, .-bl_audio_dac_start
	.section	.text.bl_audio_dac_stop,"ax",@progbits
	.align	1
	.globl	bl_audio_dac_stop
	.type	bl_audio_dac_stop, @function
bl_audio_dac_stop:
.LFB37:
	.loc 1 281 1
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
	.loc 1 282 21
	lui	a5,%hi(gp_audio_dac_dev)
	lw	a5,%lo(gp_audio_dac_dev)(a5)
	.loc 1 282 32
	sb	zero,0(a5)
	.loc 1 284 5
	call	DMA_Disable
	.loc 1 285 5
	li	a0,0
	call	DMA_Channel_Disable
	.loc 1 286 5
	li	a0,31
	call	bl_irq_disable
	.loc 1 288 12
	li	a5,0
	.loc 1 289 1
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
	.size	bl_audio_dac_stop, .-bl_audio_dac_stop
	.section	.text.bl_audio_dac_init,"ax",@progbits
	.align	1
	.globl	bl_audio_dac_init
	.type	bl_audio_dac_init, @function
bl_audio_dac_init:
.LFB38:
	.loc 1 292 1
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
	.loc 1 293 8
	lw	a5,-20(s0)
	bne	a5,zero,.L38
	.loc 1 294 16
	li	a5,-1
	j	.L39
.L38:
	.loc 1 296 5
	li	a2,56
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 297 22
	lui	a5,%hi(gp_audio_dac_dev)
	lw	a4,-20(s0)
	sw	a4,%lo(gp_audio_dac_dev)(a5)
	.loc 1 299 5
	call	__dac_gpio_init
	.loc 1 300 5
	call	__dac_clock_init
	.loc 1 302 5
	lui	a5,%hi(chACfg)
	addi	a0,a5,%lo(chACfg)
	call	GLB_GPIP_DAC_Set_ChanA_Config
	.loc 1 303 5
	lui	a5,%hi(chBCfg)
	addi	a0,a5,%lo(chBCfg)
	call	GLB_GPIP_DAC_Set_ChanB_Config
	.loc 1 305 12
	li	a5,0
.L39:
	.loc 1 306 1
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
	.size	bl_audio_dac_init, .-bl_audio_dac_init
	.section	.text.bl_audio_dac_deinit,"ax",@progbits
	.align	1
	.globl	bl_audio_dac_deinit
	.type	bl_audio_dac_deinit, @function
bl_audio_dac_deinit:
.LFB39:
	.loc 1 309 1
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
	.loc 1 310 20
	lw	a5,-20(s0)
	lw	a5,36(a5)
	.loc 1 310 5
	mv	a0,a5
	call	vPortFree
	.loc 1 311 26
	lw	a5,-20(s0)
	sw	zero,36(a5)
	.loc 1 313 12
	li	a5,0
	.loc 1 314 1
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
.LFE39:
	.size	bl_audio_dac_deinit, .-bl_audio_dac_deinit
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/dma_reg.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dma.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dac.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_dac_audio.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_irq.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xdee
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1d
	.4byte	.LASF277
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
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x53
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x66
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x1e
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	0x53
	.byte	0x5
	.byte	0x41
	.byte	0x1
	.4byte	0x240
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x35
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x36
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x37
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x39
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x3b
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x49
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x4b
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x4d
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x4f
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x50
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF278
	.byte	0x4
	.byte	0x3
	.2byte	0x4a0
	.byte	0x10
	.4byte	0x2d7
	.uleb128 0xa
	.4byte	.LASF83
	.2byte	0x4a1
	.4byte	0x6d
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF84
	.2byte	0x4a2
	.4byte	0x6d
	.byte	0x3
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF85
	.2byte	0x4a3
	.4byte	0x6d
	.byte	0x3
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF86
	.2byte	0x4a4
	.4byte	0x6d
	.byte	0x3
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF87
	.2byte	0x4a5
	.4byte	0x6d
	.byte	0x3
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF88
	.2byte	0x4a6
	.4byte	0x6d
	.byte	0x1
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF89
	.2byte	0x4a7
	.4byte	0x6d
	.byte	0x1
	.byte	0x19
	.uleb128 0x11
	.string	"SI"
	.2byte	0x4a8
	.4byte	0x6d
	.byte	0x1a
	.uleb128 0x11
	.string	"DI"
	.2byte	0x4a9
	.4byte	0x6d
	.byte	0x1b
	.uleb128 0xa
	.4byte	.LASF90
	.2byte	0x4aa
	.4byte	0x6d
	.byte	0x3
	.byte	0x1c
	.uleb128 0x11
	.string	"I"
	.2byte	0x4ab
	.4byte	0x6d
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF91
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x8e
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.4byte	.LASF92
	.uleb128 0x20
	.byte	0x4
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF93
	.uleb128 0x5
	.4byte	0x53
	.byte	0x6
	.byte	0x17
	.byte	0x1
	.4byte	0x312
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0x6
	.byte	0x1b
	.byte	0x2
	.4byte	0x2f3
	.uleb128 0x5
	.4byte	0x53
	.byte	0x6
	.byte	0x21
	.byte	0x1
	.4byte	0x337
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0x6
	.byte	0x24
	.byte	0x2
	.4byte	0x31e
	.uleb128 0x5
	.4byte	0x53
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.4byte	0x35c
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0x6
	.byte	0x36
	.byte	0x2
	.4byte	0x343
	.uleb128 0x5
	.4byte	0x53
	.byte	0x7
	.byte	0x49
	.byte	0xe
	.4byte	0x387
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	0x53
	.byte	0x7
	.byte	0x52
	.byte	0xe
	.4byte	0x3ac
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF111
	.byte	0x7
	.byte	0x57
	.byte	0x2
	.4byte	0x387
	.uleb128 0x5
	.4byte	0x53
	.byte	0x7
	.byte	0x5c
	.byte	0xe
	.4byte	0x3dd
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	0x53
	.byte	0x7
	.byte	0x66
	.byte	0xe
	.4byte	0x42c
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF127
	.byte	0x7
	.byte	0x72
	.byte	0x2
	.4byte	0x3dd
	.uleb128 0x5
	.4byte	0x53
	.byte	0x7
	.byte	0x77
	.byte	0xe
	.4byte	0x463
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0x53
	.byte	0x7
	.byte	0x82
	.byte	0xe
	.4byte	0x482
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF136
	.byte	0x7
	.byte	0x86
	.byte	0x2
	.4byte	0x463
	.uleb128 0xc
	.byte	0x10
	.byte	0x7
	.byte	0xb0
	.4byte	0x4cb
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x7
	.byte	0xb1
	.byte	0xe
	.4byte	0x6d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x7
	.byte	0xb2
	.byte	0xe
	.4byte	0x6d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0x7
	.byte	0xb3
	.byte	0xe
	.4byte	0x6d
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0x7
	.byte	0xb4
	.byte	0x1c
	.4byte	0x240
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF141
	.byte	0x7
	.byte	0xb5
	.byte	0x2
	.4byte	0x48e
	.uleb128 0xc
	.byte	0x3
	.byte	0x7
	.byte	0xba
	.4byte	0x507
	.uleb128 0xe
	.string	"dir"
	.byte	0x7
	.byte	0xbb
	.byte	0x18
	.4byte	0x3ac
	.byte	0
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0x7
	.byte	0xbc
	.byte	0x19
	.4byte	0x42c
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x7
	.byte	0xbd
	.byte	0x19
	.4byte	0x42c
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF144
	.byte	0x7
	.byte	0xbe
	.byte	0x2
	.4byte	0x4d7
	.uleb128 0x9
	.4byte	0x507
	.uleb128 0x5
	.4byte	0x53
	.byte	0x8
	.byte	0x3b
	.byte	0xe
	.4byte	0x531
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF147
	.byte	0x8
	.byte	0x3e
	.byte	0x2
	.4byte	0x518
	.uleb128 0x5
	.4byte	0x53
	.byte	0x8
	.byte	0x6f
	.byte	0xe
	.4byte	0x56e
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
	.byte	0
	.uleb128 0x4
	.4byte	.LASF154
	.byte	0x8
	.byte	0x76
	.byte	0x2
	.4byte	0x53d
	.uleb128 0x5
	.4byte	0x53
	.byte	0x8
	.byte	0x7b
	.byte	0xe
	.4byte	0x59f
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF158
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF159
	.byte	0x8
	.byte	0x80
	.byte	0x2
	.4byte	0x57a
	.uleb128 0x5
	.4byte	0x53
	.byte	0x8
	.byte	0x85
	.byte	0xe
	.4byte	0x5d6
	.uleb128 0x1
	.4byte	.LASF160
	.byte	0
	.uleb128 0x1
	.4byte	.LASF161
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF162
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF163
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF164
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF165
	.byte	0x8
	.byte	0x8b
	.byte	0x2
	.4byte	0x5ab
	.uleb128 0x5
	.4byte	0x53
	.byte	0x8
	.byte	0x90
	.byte	0xe
	.4byte	0x601
	.uleb128 0x1
	.4byte	.LASF166
	.byte	0
	.uleb128 0x1
	.4byte	.LASF167
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF168
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF169
	.byte	0x8
	.byte	0x94
	.byte	0x2
	.4byte	0x5e2
	.uleb128 0xc
	.byte	0x6
	.byte	0x8
	.byte	0x99
	.4byte	0x664
	.uleb128 0x2
	.4byte	.LASF170
	.byte	0x8
	.byte	0x9a
	.byte	0x1a
	.4byte	0x531
	.byte	0
	.uleb128 0x2
	.4byte	.LASF171
	.byte	0x8
	.byte	0x9b
	.byte	0x11
	.4byte	0x337
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF172
	.byte	0x8
	.byte	0x9c
	.byte	0x11
	.4byte	0x337
	.byte	0x2
	.uleb128 0xe
	.string	"mod"
	.byte	0x8
	.byte	0x9d
	.byte	0x17
	.4byte	0x5d6
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF173
	.byte	0x8
	.byte	0x9e
	.byte	0x11
	.4byte	0x337
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF174
	.byte	0x8
	.byte	0x9f
	.byte	0x21
	.4byte	0x601
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF175
	.byte	0x8
	.byte	0xa0
	.byte	0x2
	.4byte	0x60d
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.byte	0xa5
	.4byte	0x6ad
	.uleb128 0x2
	.4byte	.LASF176
	.byte	0x8
	.byte	0xa6
	.byte	0x11
	.4byte	0x337
	.byte	0
	.uleb128 0x2
	.4byte	.LASF177
	.byte	0x8
	.byte	0xa7
	.byte	0x11
	.4byte	0x337
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF178
	.byte	0x8
	.byte	0xa8
	.byte	0x11
	.4byte	0x337
	.byte	0x2
	.uleb128 0xe
	.string	"src"
	.byte	0x8
	.byte	0xa9
	.byte	0x1d
	.4byte	0x59f
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF179
	.byte	0x8
	.byte	0xaa
	.byte	0x2
	.4byte	0x670
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.byte	0xaf
	.4byte	0x6f6
	.uleb128 0x2
	.4byte	.LASF176
	.byte	0x8
	.byte	0xb0
	.byte	0x11
	.4byte	0x337
	.byte	0
	.uleb128 0x2
	.4byte	.LASF177
	.byte	0x8
	.byte	0xb1
	.byte	0x11
	.4byte	0x337
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF178
	.byte	0x8
	.byte	0xb2
	.byte	0x11
	.4byte	0x337
	.byte	0x2
	.uleb128 0xe
	.string	"src"
	.byte	0x8
	.byte	0xb3
	.byte	0x1d
	.4byte	0x56e
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF180
	.byte	0x8
	.byte	0xb4
	.byte	0x2
	.4byte	0x6b9
	.uleb128 0x4
	.4byte	.LASF181
	.byte	0x9
	.byte	0x26
	.byte	0xf
	.4byte	0x70e
	.uleb128 0x9
	.4byte	0x713
	.uleb128 0x21
	.4byte	0x87
	.4byte	0x731
	.uleb128 0x3
	.4byte	0x2ea
	.uleb128 0x3
	.4byte	0x731
	.uleb128 0x3
	.4byte	0x87
	.uleb128 0x3
	.4byte	0x87
	.byte	0
	.uleb128 0x9
	.4byte	0x47
	.uleb128 0x4
	.4byte	.LASF182
	.byte	0x9
	.byte	0x27
	.byte	0xf
	.4byte	0x70e
	.uleb128 0xc
	.byte	0x38
	.byte	0x9
	.byte	0x29
	.4byte	0x7a6
	.uleb128 0x2
	.4byte	.LASF183
	.byte	0x9
	.byte	0x2a
	.byte	0xd
	.4byte	0x47
	.byte	0
	.uleb128 0x2
	.4byte	.LASF184
	.byte	0x9
	.byte	0x2b
	.byte	0x17
	.4byte	0x7a6
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF185
	.byte	0x9
	.byte	0x2c
	.byte	0xe
	.4byte	0x731
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF186
	.byte	0x9
	.byte	0x2d
	.byte	0xe
	.4byte	0x6d
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF187
	.byte	0x9
	.byte	0x2f
	.byte	0x9
	.4byte	0x87
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF188
	.byte	0x9
	.byte	0x30
	.byte	0x1f
	.4byte	0x736
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF189
	.byte	0x9
	.byte	0x31
	.byte	0xb
	.4byte	0x2ea
	.byte	0x34
	.byte	0
	.uleb128 0x16
	.4byte	0x4cb
	.4byte	0x7b5
	.uleb128 0x17
	.4byte	0x8e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF190
	.byte	0x9
	.byte	0x33
	.byte	0x3
	.4byte	0x742
	.uleb128 0x5
	.4byte	0x53
	.byte	0xa
	.byte	0x29
	.byte	0x1
	.4byte	0x85e
	.uleb128 0x1
	.4byte	.LASF191
	.byte	0
	.uleb128 0x1
	.4byte	.LASF192
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF193
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF194
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF195
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF197
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF198
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF199
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF200
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF201
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF202
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF203
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF204
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF205
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF206
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF207
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF208
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF209
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF210
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF211
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF212
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF213
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF214
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.byte	0x6
	.byte	0xa
	.byte	0x59
	.4byte	0x8b5
	.uleb128 0x2
	.4byte	.LASF215
	.byte	0xa
	.byte	0x5b
	.byte	0xd
	.4byte	0x47
	.byte	0
	.uleb128 0x2
	.4byte	.LASF216
	.byte	0xa
	.byte	0x5c
	.byte	0xd
	.4byte	0x47
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF217
	.byte	0xa
	.byte	0x5d
	.byte	0xd
	.4byte	0x47
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF218
	.byte	0xa
	.byte	0x5e
	.byte	0xd
	.4byte	0x47
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF219
	.byte	0xa
	.byte	0x5f
	.byte	0xd
	.4byte	0x47
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF220
	.byte	0xa
	.byte	0x60
	.byte	0xd
	.4byte	0x47
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF221
	.byte	0xa
	.byte	0x61
	.byte	0x2
	.4byte	0x85e
	.uleb128 0x5
	.4byte	0x53
	.byte	0xb
	.byte	0xc7
	.byte	0xe
	.4byte	0x8da
	.uleb128 0x1
	.4byte	.LASF222
	.byte	0
	.uleb128 0x1
	.4byte	.LASF223
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF224
	.byte	0xb
	.byte	0xca
	.byte	0x2
	.4byte	0x8c1
	.uleb128 0x7
	.4byte	.LASF225
	.byte	0x27
	.byte	0x1c
	.4byte	0x8f7
	.uleb128 0x5
	.byte	0x3
	.4byte	gp_audio_dac_dev
	.uleb128 0x9
	.4byte	0x7b5
	.uleb128 0x7
	.4byte	.LASF226
	.byte	0x2d
	.byte	0x1f
	.4byte	0x240
	.uleb128 0x5
	.byte	0x3
	.4byte	dmaCtrlRegVal
	.uleb128 0x7
	.4byte	.LASF227
	.byte	0x38
	.byte	0x19
	.4byte	0x507
	.uleb128 0x5
	.byte	0x3
	.4byte	lliCfg
	.uleb128 0x16
	.4byte	0x8b5
	.4byte	0x92d
	.uleb128 0x17
	.4byte	0x8e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF228
	.byte	0x3e
	.byte	0x1a
	.4byte	0x91e
	.uleb128 0x5
	.byte	0x3
	.4byte	gpioCfg
	.uleb128 0x7
	.4byte	.LASF229
	.byte	0x50
	.byte	0x1e
	.4byte	0x664
	.uleb128 0x5
	.byte	0x3
	.4byte	dacCfg
	.uleb128 0x7
	.4byte	.LASF230
	.byte	0x58
	.byte	0x24
	.4byte	0x6ad
	.uleb128 0x5
	.byte	0x3
	.4byte	chACfg
	.uleb128 0x7
	.4byte	.LASF231
	.byte	0x5e
	.byte	0x24
	.4byte	0x6f6
	.uleb128 0x5
	.byte	0x3
	.4byte	chBCfg
	.uleb128 0xf
	.4byte	.LASF232
	.byte	0xc
	.byte	0xf
	.4byte	0x982
	.uleb128 0x3
	.4byte	0x2ea
	.byte	0
	.uleb128 0xb
	.4byte	.LASF233
	.byte	0x8
	.2byte	0x114
	.4byte	0x994
	.uleb128 0x3
	.4byte	0x994
	.byte	0
	.uleb128 0x9
	.4byte	0x6f6
	.uleb128 0xb
	.4byte	.LASF234
	.byte	0x8
	.2byte	0x113
	.4byte	0x9ab
	.uleb128 0x3
	.4byte	0x9ab
	.byte	0
	.uleb128 0x9
	.4byte	0x6ad
	.uleb128 0x18
	.4byte	.LASF242
	.byte	0xe
	.byte	0x21
	.4byte	0x2ea
	.4byte	0x9cf
	.uleb128 0x3
	.4byte	0x2ea
	.uleb128 0x3
	.4byte	0x87
	.uleb128 0x3
	.4byte	0x2d7
	.byte	0
	.uleb128 0xf
	.4byte	.LASF235
	.byte	0xd
	.byte	0x21
	.4byte	0x9e0
	.uleb128 0x3
	.4byte	0x8e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF237
	.byte	0x7
	.2byte	0x13a
	.uleb128 0xb
	.4byte	.LASF236
	.byte	0x7
	.2byte	0x140
	.4byte	0x9fa
	.uleb128 0x3
	.4byte	0x47
	.byte	0
	.uleb128 0xd
	.4byte	.LASF238
	.byte	0x8
	.2byte	0x10a
	.uleb128 0xd
	.4byte	.LASF239
	.byte	0x8
	.2byte	0x10c
	.uleb128 0xd
	.4byte	.LASF240
	.byte	0x8
	.2byte	0x10f
	.uleb128 0xb
	.4byte	.LASF241
	.byte	0x8
	.2byte	0x10e
	.4byte	0xa24
	.uleb128 0x3
	.4byte	0x601
	.byte	0
	.uleb128 0x12
	.4byte	.LASF243
	.byte	0x8
	.2byte	0x112
	.4byte	0x312
	.4byte	0xa3a
	.uleb128 0x3
	.4byte	0xa3a
	.byte	0
	.uleb128 0x9
	.4byte	0x664
	.uleb128 0xf
	.4byte	.LASF244
	.byte	0xd
	.byte	0x20
	.4byte	0xa50
	.uleb128 0x3
	.4byte	0x8e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF245
	.byte	0xd
	.byte	0x32
	.4byte	0xa66
	.uleb128 0x3
	.4byte	0x87
	.uleb128 0x3
	.4byte	0x2ea
	.byte	0
	.uleb128 0xb
	.4byte	.LASF246
	.byte	0x7
	.2byte	0x144
	.4byte	0xa82
	.uleb128 0x3
	.4byte	0x47
	.uleb128 0x3
	.4byte	0x482
	.uleb128 0x3
	.4byte	0x35c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF247
	.byte	0x7
	.2byte	0x141
	.4byte	0xa94
	.uleb128 0x3
	.4byte	0x47
	.byte	0
	.uleb128 0xd
	.4byte	.LASF248
	.byte	0x7
	.2byte	0x139
	.uleb128 0x18
	.4byte	.LASF249
	.byte	0xc
	.byte	0xc
	.4byte	0x2ea
	.4byte	0xab1
	.uleb128 0x3
	.4byte	0x2d7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF250
	.byte	0x7
	.2byte	0x143
	.4byte	0xac8
	.uleb128 0x3
	.4byte	0x47
	.uleb128 0x3
	.4byte	0x6d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF251
	.byte	0x7
	.2byte	0x142
	.4byte	0xadf
	.uleb128 0x3
	.4byte	0x47
	.uleb128 0x3
	.4byte	0x513
	.byte	0
	.uleb128 0x12
	.4byte	.LASF252
	.byte	0xb
	.2byte	0x276
	.4byte	0x312
	.4byte	0xaf5
	.uleb128 0x3
	.4byte	0xaf5
	.byte	0
	.uleb128 0x9
	.4byte	0x8b5
	.uleb128 0x12
	.4byte	.LASF253
	.byte	0xb
	.2byte	0x263
	.4byte	0x312
	.4byte	0xb1a
	.uleb128 0x3
	.4byte	0x47
	.uleb128 0x3
	.4byte	0x8da
	.uleb128 0x3
	.4byte	0x47
	.byte	0
	.uleb128 0x13
	.4byte	.LASF254
	.2byte	0x134
	.4byte	0x87
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb43
	.uleb128 0x14
	.4byte	.LASF256
	.2byte	0x134
	.byte	0x2e
	.4byte	0x8f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF255
	.2byte	0x123
	.4byte	0x87
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb6c
	.uleb128 0x14
	.4byte	.LASF256
	.2byte	0x123
	.byte	0x2c
	.4byte	0x8f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF257
	.2byte	0x118
	.4byte	0x87
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb95
	.uleb128 0x14
	.4byte	.LASF256
	.2byte	0x118
	.byte	0x3c
	.4byte	0x8f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF258
	.byte	0xfd
	.4byte	0x87
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbbc
	.uleb128 0x6
	.4byte	.LASF256
	.byte	0xfd
	.byte	0x2d
	.4byte	0x8f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF259
	.byte	0xf6
	.4byte	0x87
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbff
	.uleb128 0x6
	.4byte	.LASF256
	.byte	0xf6
	.byte	0x48
	.4byte	0x8f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF260
	.byte	0xf7
	.byte	0x3a
	.4byte	0xbff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF261
	.byte	0xf8
	.byte	0x3c
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x9
	.4byte	0x2ea
	.uleb128 0x19
	.4byte	.LASF262
	.byte	0xdf
	.4byte	0x87
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc60
	.uleb128 0x6
	.4byte	.LASF256
	.byte	0xdf
	.byte	0x38
	.4byte	0x8f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF260
	.byte	0xdf
	.byte	0x46
	.4byte	0xbff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF261
	.byte	0xdf
	.byte	0x58
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.string	"i"
	.byte	0xe1
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF263
	.byte	0xe2
	.byte	0xf
	.4byte	0xc60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	0x5a
	.uleb128 0x10
	.4byte	.LASF264
	.byte	0xd8
	.4byte	0x87
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca7
	.uleb128 0x6
	.4byte	.LASF256
	.byte	0xd8
	.byte	0x46
	.4byte	0x8f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"cb"
	.byte	0xd9
	.byte	0x49
	.4byte	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF265
	.byte	0xda
	.byte	0x35
	.4byte	0x2ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF266
	.byte	0xcc
	.4byte	0x87
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce9
	.uleb128 0x6
	.4byte	.LASF256
	.byte	0xcc
	.byte	0x36
	.4byte	0x8f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"cb"
	.byte	0xcd
	.byte	0x39
	.4byte	0x736
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF265
	.byte	0xce
	.byte	0x25
	.4byte	0x2ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF267
	.byte	0xc6
	.4byte	0x87
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd1e
	.uleb128 0x6
	.4byte	.LASF256
	.byte	0xc6
	.byte	0x46
	.4byte	0x8f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF268
	.byte	0xc6
	.byte	0x5f
	.4byte	0x5d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF273
	.byte	0x9f
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd5c
	.uleb128 0x7
	.4byte	.LASF269
	.byte	0xa1
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.string	"ret"
	.byte	0xa2
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF270
	.byte	0xa2
	.byte	0xe
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x22
	.4byte	.LASF279
	.byte	0x1
	.byte	0x81
	.byte	0xc
	.4byte	0x87
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdae
	.uleb128 0x15
	.string	"ch"
	.byte	0x81
	.byte	0x20
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF269
	.byte	0x83
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF271
	.byte	0x84
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF272
	.byte	0x86
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF274
	.byte	0x6f
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd1
	.uleb128 0x6
	.4byte	.LASF256
	.byte	0x6f
	.byte	0x30
	.4byte	0x8f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF275
	.byte	0x6a
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF276
	.byte	0x65
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0xd
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF95:
	.string	"ERROR"
.LASF218:
	.string	"pullType"
.LASF163:
	.string	"GPIP_DAC_MOD_8K"
.LASF17:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF20:
	.string	"L1C_BMX_ERR_IRQn"
.LASF16:
	.string	"MEXT_IRQn"
.LASF25:
	.string	"SDIO_IRQn"
.LASF68:
	.string	"PDS_WAKEUP_IRQn"
.LASF186:
	.string	"lli_tx_buffer_size"
.LASF230:
	.string	"chACfg"
.LASF73:
	.string	"BZ_PHY_IRQn"
.LASF238:
	.string	"GPIP_DAC_ChanB_Enable"
.LASF137:
	.string	"srcDmaAddr"
.LASF251:
	.string	"DMA_LLI_Init"
.LASF187:
	.string	"is_underrun"
.LASF80:
	.string	"MAC_PORT_TRG_IRQn"
.LASF173:
	.string	"dmaEn"
.LASF71:
	.string	"BOR_IRQn"
.LASF253:
	.string	"GLB_Set_DAC_CLK"
.LASF19:
	.string	"BMX_TO_IRQn"
.LASF240:
	.string	"GPIP_Set_DAC_DMA_TX_Enable"
.LASF125:
	.string	"DMA_REQ_GPADC1"
.LASF3:
	.string	"short int"
.LASF32:
	.string	"SEC_SHA_IRQn"
.LASF250:
	.string	"DMA_LLI_Update"
.LASF256:
	.string	"p_dev"
.LASF83:
	.string	"TransferSize"
.LASF56:
	.string	"TIMER_WDT_IRQn"
.LASF41:
	.string	"SF_CTRL_IRQn"
.LASF225:
	.string	"gp_audio_dac_dev"
.LASF153:
	.string	"GPIP_DAC_ChanB_SRC_INVERSE_A"
.LASF126:
	.string	"DMA_REQ_NONE"
.LASF136:
	.string	"DMA_INT_Type"
.LASF223:
	.string	"GLB_DAC_CLK_XCLK"
.LASF227:
	.string	"lliCfg"
.LASF97:
	.string	"BL_Err_Type"
.LASF10:
	.string	"uint32_t"
.LASF89:
	.string	"reserved_25"
.LASF143:
	.string	"dstPeriph"
.LASF139:
	.string	"nextLLI"
.LASF170:
	.string	"refSel"
.LASF62:
	.string	"GPIO_INT0_IRQn"
.LASF149:
	.string	"GPIP_DAC_ChanB_SRC_DMA"
.LASF260:
	.string	"ptr_mem"
.LASF12:
	.string	"long long unsigned int"
.LASF21:
	.string	"L1C_BMX_TO_IRQn"
.LASF266:
	.string	"bl_audio_dac_tx_ready_config"
.LASF24:
	.string	"RF_TOP_INT1_IRQn"
.LASF58:
	.string	"RESERVED11"
.LASF133:
	.string	"DMA_INT_TCOMPLETED"
.LASF151:
	.string	"GPIP_DAC_ChanB_SRC_SIN_GEN"
.LASF262:
	.string	"bl_audio_dac_tx_buffer_config"
.LASF104:
	.string	"DMA_TRNS_WIDTH_8BITS"
.LASF132:
	.string	"DMA_CH_MAX"
.LASF217:
	.string	"gpioMode"
.LASF105:
	.string	"DMA_TRNS_WIDTH_16BITS"
.LASF148:
	.string	"GPIP_DAC_ChanB_SRC_REG"
.LASF54:
	.string	"TIMER_CH0_IRQn"
.LASF249:
	.string	"pvPortMalloc"
.LASF90:
	.string	"Prot"
.LASF102:
	.string	"MASK"
.LASF181:
	.string	"audio_callback_rx_ready_t"
.LASF255:
	.string	"bl_audio_dac_init"
.LASF166:
	.string	"GPIP_DAC_DMA_FORMAT_0"
.LASF167:
	.string	"GPIP_DAC_DMA_FORMAT_1"
.LASF168:
	.string	"GPIP_DAC_DMA_FORMAT_2"
.LASF233:
	.string	"GLB_GPIP_DAC_Set_ChanB_Config"
.LASF91:
	.string	"size_t"
.LASF174:
	.string	"dmaFmt"
.LASF276:
	.string	"__dac_clock_init"
.LASF87:
	.string	"DWidth"
.LASF190:
	.string	"bl_audio_dac_dev_t"
.LASF267:
	.string	"bl_audio_dac_samplerate_set"
.LASF85:
	.string	"DBSize"
.LASF165:
	.string	"GPIP_DAC_MOD_Type"
.LASF48:
	.string	"UART1_IRQn"
.LASF185:
	.string	"lli_tx_buffer"
.LASF162:
	.string	"GPIP_DAC_MOD_RESERVE"
.LASF235:
	.string	"bl_irq_disable"
.LASF219:
	.string	"drive"
.LASF147:
	.string	"GLB_DAC_Ref_Sel_Type"
.LASF269:
	.string	"tmpVal"
.LASF177:
	.string	"outputEn"
.LASF86:
	.string	"SWidth"
.LASF222:
	.string	"GLB_DAC_CLK_32M"
.LASF264:
	.string	"bl_audio_dac_rx_ready_config"
.LASF84:
	.string	"SBSize"
.LASF81:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF67:
	.string	"RESERVED20"
.LASF33:
	.string	"DMA_ALL_IRQn"
.LASF45:
	.string	"SPI_IRQn"
.LASF118:
	.string	"DMA_REQ_UART1_RX"
.LASF94:
	.string	"SUCCESS"
.LASF93:
	.string	"char"
.LASF271:
	.string	"intClr"
.LASF178:
	.string	"chanEn"
.LASF98:
	.string	"DISABLE"
.LASF50:
	.string	"I2C_IRQn"
.LASF160:
	.string	"GPIP_DAC_MOD_32K"
.LASF150:
	.string	"GPIP_DAC_ChanB_SRC_DMA_WITH_FILTER"
.LASF179:
	.string	"GLB_GPIP_DAC_ChanA_Cfg_Type"
.LASF13:
	.string	"unsigned int"
.LASF7:
	.string	"uint8_t"
.LASF226:
	.string	"dmaCtrlRegVal"
.LASF78:
	.string	"MAC_TX_TRG_IRQn"
.LASF101:
	.string	"UNMASK"
.LASF228:
	.string	"gpioCfg"
.LASF138:
	.string	"destDmaAddr"
.LASF261:
	.string	"bufsize"
.LASF5:
	.string	"long long int"
.LASF96:
	.string	"TIMEOUT"
.LASF236:
	.string	"DMA_Channel_Enable"
.LASF248:
	.string	"DMA_Enable"
.LASF127:
	.string	"DMA_Periph_Req_Type"
.LASF247:
	.string	"DMA_Channel_Disable"
.LASF268:
	.string	"samplerate"
.LASF74:
	.string	"BLE_IRQn"
.LASF115:
	.string	"DMA_BURST_SIZE_16"
.LASF278:
	.string	"DMA_Control_Reg"
.LASF119:
	.string	"DMA_REQ_UART1_TX"
.LASF159:
	.string	"GPIP_DAC_ChanA_SRC_Type"
.LASF242:
	.string	"memset"
.LASF69:
	.string	"HBN_OUT0_IRQn"
.LASF82:
	.string	"IRQn_LAST"
.LASF270:
	.string	"size"
.LASF128:
	.string	"DMA_CH0"
.LASF52:
	.string	"PWM_IRQn"
.LASF130:
	.string	"DMA_CH2"
.LASF131:
	.string	"DMA_CH3"
.LASF258:
	.string	"bl_audio_dac_start"
.LASF18:
	.string	"BMX_ERR_IRQn"
.LASF26:
	.string	"DMA_BMX_ERR_IRQn"
.LASF11:
	.string	"long unsigned int"
.LASF201:
	.string	"GLB_GPIO_PIN_10"
.LASF202:
	.string	"GLB_GPIO_PIN_11"
.LASF203:
	.string	"GLB_GPIO_PIN_12"
.LASF204:
	.string	"GLB_GPIO_PIN_13"
.LASF205:
	.string	"GLB_GPIO_PIN_14"
.LASF206:
	.string	"GLB_GPIO_PIN_15"
.LASF207:
	.string	"GLB_GPIO_PIN_16"
.LASF208:
	.string	"GLB_GPIO_PIN_17"
.LASF209:
	.string	"GLB_GPIO_PIN_18"
.LASF210:
	.string	"GLB_GPIO_PIN_19"
.LASF275:
	.string	"__dac_gpio_init"
.LASF79:
	.string	"MAC_GEN_IRQn"
.LASF188:
	.string	"usr_cb"
.LASF100:
	.string	"BL_Fun_Type"
.LASF23:
	.string	"RF_TOP_INT0_IRQn"
.LASF279:
	.string	"__dma_int_clear"
.LASF92:
	.string	"long double"
.LASF134:
	.string	"DMA_INT_ERR"
.LASF8:
	.string	"uint16_t"
.LASF44:
	.string	"EFUSE_IRQn"
.LASF231:
	.string	"chBCfg"
.LASF141:
	.string	"DMA_LLI_Ctrl_Type"
.LASF144:
	.string	"DMA_LLI_Cfg_Type"
.LASF22:
	.string	"SEC_BMX_ERR_IRQn"
.LASF211:
	.string	"GLB_GPIO_PIN_20"
.LASF212:
	.string	"GLB_GPIO_PIN_21"
.LASF213:
	.string	"GLB_GPIO_PIN_22"
.LASF76:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF224:
	.string	"GLB_DAC_CLK_Type"
.LASF180:
	.string	"GLB_GPIP_DAC_ChanB_Cfg_Type"
.LASF216:
	.string	"gpioFun"
.LASF34:
	.string	"RESERVED0"
.LASF35:
	.string	"RESERVED1"
.LASF36:
	.string	"RESERVED2"
.LASF39:
	.string	"RESERVED3"
.LASF40:
	.string	"RESERVED4"
.LASF42:
	.string	"RESERVED5"
.LASF46:
	.string	"RESERVED6"
.LASF49:
	.string	"RESERVED7"
.LASF51:
	.string	"RESERVED8"
.LASF53:
	.string	"RESERVED9"
.LASF152:
	.string	"GPIP_DAC_ChanB_SRC_A"
.LASF189:
	.string	"p_usr_arg"
.LASF4:
	.string	"long int"
.LASF107:
	.string	"DMA_TRNS_M2M"
.LASF124:
	.string	"DMA_REQ_GPADC0"
.LASF108:
	.string	"DMA_TRNS_M2P"
.LASF191:
	.string	"GLB_GPIO_PIN_0"
.LASF192:
	.string	"GLB_GPIO_PIN_1"
.LASF193:
	.string	"GLB_GPIO_PIN_2"
.LASF194:
	.string	"GLB_GPIO_PIN_3"
.LASF195:
	.string	"GLB_GPIO_PIN_4"
.LASF196:
	.string	"GLB_GPIO_PIN_5"
.LASF197:
	.string	"GLB_GPIO_PIN_6"
.LASF198:
	.string	"GLB_GPIO_PIN_7"
.LASF199:
	.string	"GLB_GPIO_PIN_8"
.LASF200:
	.string	"GLB_GPIO_PIN_9"
.LASF47:
	.string	"UART0_IRQn"
.LASF244:
	.string	"bl_irq_enable"
.LASF232:
	.string	"vPortFree"
.LASF14:
	.string	"MSOFT_IRQn"
.LASF38:
	.string	"IRRX_IRQn"
.LASF140:
	.string	"dmaCtrl"
.LASF237:
	.string	"DMA_Disable"
.LASF27:
	.string	"SEC_GMAC_IRQn"
.LASF241:
	.string	"GPIP_Set_DAC_DMA_TX_FORMAT_SEL"
.LASF28:
	.string	"SEC_CDET_IRQn"
.LASF176:
	.string	"chanCovtEn"
.LASF221:
	.string	"GLB_GPIO_Cfg_Type"
.LASF229:
	.string	"dacCfg"
.LASF175:
	.string	"GLB_GPIP_DAC_Cfg_Type"
.LASF72:
	.string	"WIFI_IRQn"
.LASF182:
	.string	"audio_callback_tx_ready_t"
.LASF142:
	.string	"srcPeriph"
.LASF183:
	.string	"pingpang"
.LASF154:
	.string	"GPIP_DAC_ChanB_SRC_Type"
.LASF265:
	.string	"p_arg"
.LASF99:
	.string	"ENABLE"
.LASF112:
	.string	"DMA_BURST_SIZE_1"
.LASF120:
	.string	"DMA_REQ_I2C_RX"
.LASF113:
	.string	"DMA_BURST_SIZE_4"
.LASF70:
	.string	"HBN_OUT1_IRQn"
.LASF15:
	.string	"MTIME_IRQn"
.LASF114:
	.string	"DMA_BURST_SIZE_8"
.LASF239:
	.string	"GPIP_DAC_ChanA_Enable"
.LASF158:
	.string	"GPIP_DAC_ChanA_SRC_SIN_GEN"
.LASF103:
	.string	"BL_Mask_Type"
.LASF29:
	.string	"SEC_PKA_IRQn"
.LASF157:
	.string	"GPIP_DAC_ChanA_SRC_DMA_WITH_FILTER"
.LASF164:
	.string	"GPIP_DAC_MOD_512K"
.LASF135:
	.string	"DMA_INT_ALL"
.LASF145:
	.string	"GLB_DAC_REF_SEL_INTERNAL"
.LASF243:
	.string	"GLB_GPIP_DAC_Init"
.LASF43:
	.string	"GPADC_DMA_IRQn"
.LASF116:
	.string	"DMA_REQ_UART0_RX"
.LASF6:
	.string	"unsigned char"
.LASF77:
	.string	"MAC_RX_TRG_IRQn"
.LASF31:
	.string	"SEC_AES_IRQn"
.LASF259:
	.string	"bl_audio_dac_rx_buffer_config"
.LASF257:
	.string	"bl_audio_dac_stop"
.LASF215:
	.string	"gpioPin"
.LASF274:
	.string	"__dac_lli_init"
.LASF37:
	.string	"IRTX_IRQn"
.LASF57:
	.string	"RESERVED10"
.LASF122:
	.string	"DMA_REQ_SPI_RX"
.LASF59:
	.string	"RESERVED12"
.LASF60:
	.string	"RESERVED13"
.LASF61:
	.string	"RESERVED14"
.LASF63:
	.string	"RESERVED16"
.LASF64:
	.string	"RESERVED17"
.LASF65:
	.string	"RESERVED18"
.LASF66:
	.string	"RESERVED19"
.LASF214:
	.string	"GLB_GPIO_PIN_MAX"
.LASF272:
	.string	"DMAChs"
.LASF109:
	.string	"DMA_TRNS_P2M"
.LASF110:
	.string	"DMA_TRNS_P2P"
.LASF111:
	.string	"DMA_Trans_Dir_Type"
.LASF161:
	.string	"GPIP_DAC_MOD_16K"
.LASF254:
	.string	"bl_audio_dac_deinit"
.LASF30:
	.string	"SEC_TRNG_IRQn"
.LASF263:
	.string	"p_16"
.LASF252:
	.string	"GLB_GPIO_Init"
.LASF2:
	.string	"signed char"
.LASF55:
	.string	"TIMER_CH1_IRQn"
.LASF9:
	.string	"short unsigned int"
.LASF121:
	.string	"DMA_REQ_I2C_TX"
.LASF246:
	.string	"DMA_IntMask"
.LASF169:
	.string	"GPIP_DAC_DMA_TX_FORMAT_Type"
.LASF171:
	.string	"resetChanA"
.LASF172:
	.string	"resetChanB"
.LASF234:
	.string	"GLB_GPIP_DAC_Set_ChanA_Config"
.LASF106:
	.string	"DMA_TRNS_WIDTH_32BITS"
.LASF146:
	.string	"GLB_DAC_REF_SEL_EXTERNAL"
.LASF245:
	.string	"bl_irq_register"
.LASF156:
	.string	"GPIP_DAC_ChanA_SRC_DMA"
.LASF117:
	.string	"DMA_REQ_UART0_TX"
.LASF88:
	.string	"SLargerD"
.LASF277:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF184:
	.string	"lli_list"
.LASF75:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF273:
	.string	"__dma_irq_handler"
.LASF220:
	.string	"smtCtrl"
.LASF155:
	.string	"GPIP_DAC_ChanA_SRC_REG"
.LASF123:
	.string	"DMA_REQ_SPI_TX"
.LASF129:
	.string	"DMA_CH1"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_dac_audio.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
