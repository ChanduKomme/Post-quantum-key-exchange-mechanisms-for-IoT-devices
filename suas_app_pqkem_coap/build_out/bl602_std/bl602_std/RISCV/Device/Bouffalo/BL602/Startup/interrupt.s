	.file	"interrupt.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Default_Handler_Stub,"ax",@progbits
	.align	1
	.globl	Default_Handler_Stub
	.type	Default_Handler_Stub, @function
Default_Handler_Stub:
.LFB4:
.LM1:
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	t0,152(sp)
	.cfi_offset 1, -4
	.cfi_offset 5, -8
	frcsr	t0
	sw	t0,148(sp)
	sw	t1,144(sp)
	sw	t2,140(sp)
	sw	a0,136(sp)
	sw	a1,132(sp)
	sw	a2,128(sp)
	sw	a3,124(sp)
	sw	a4,120(sp)
	sw	a5,116(sp)
	sw	a6,112(sp)
	sw	a7,108(sp)
	sw	t3,104(sp)
	sw	t4,100(sp)
	sw	t5,96(sp)
	sw	t6,92(sp)
	fsw	ft0,76(sp)
	fsw	ft1,72(sp)
	fsw	ft2,68(sp)
	fsw	ft3,64(sp)
	fsw	ft4,60(sp)
	fsw	ft5,56(sp)
	fsw	ft6,52(sp)
	fsw	ft7,48(sp)
	fsw	fa0,44(sp)
	fsw	fa1,40(sp)
	fsw	fa2,36(sp)
	fsw	fa3,32(sp)
	fsw	fa4,28(sp)
	fsw	fa5,24(sp)
	fsw	fa6,20(sp)
	fsw	fa7,16(sp)
	fsw	ft8,12(sp)
	fsw	ft9,8(sp)
.LM2:
.LM3:
	fsw	ft10,4(sp)
	fsw	ft11,0(sp)
	.cfi_offset 5, -12
	.cfi_offset 6, -16
	.cfi_offset 7, -20
	.cfi_offset 10, -24
	.cfi_offset 11, -28
	.cfi_offset 12, -32
	.cfi_offset 13, -36
	.cfi_offset 14, -40
	.cfi_offset 15, -44
	.cfi_offset 16, -48
	.cfi_offset 17, -52
	.cfi_offset 28, -56
	.cfi_offset 29, -60
	.cfi_offset 30, -64
	.cfi_offset 31, -68
	.cfi_offset 32, -84
	.cfi_offset 33, -88
	.cfi_offset 34, -92
	.cfi_offset 35, -96
	.cfi_offset 36, -100
	.cfi_offset 37, -104
	.cfi_offset 38, -108
	.cfi_offset 39, -112
	.cfi_offset 42, -116
	.cfi_offset 43, -120
	.cfi_offset 44, -124
	.cfi_offset 45, -128
	.cfi_offset 46, -132
	.cfi_offset 47, -136
	.cfi_offset 48, -140
	.cfi_offset 49, -144
	.cfi_offset 60, -148
	.cfi_offset 61, -152
	.cfi_offset 62, -156
	.cfi_offset 63, -160
.LM4:
	call	Default_Handler
.LVL0:
.LM5:
	lw	ra,156(sp)
	.cfi_restore 1
	lw	t0,148(sp)
	.cfi_restore 5
	fscsr	t0
	lw	t0,152(sp)
	.cfi_restore 5
	lw	t1,144(sp)
	.cfi_restore 6
	lw	t2,140(sp)
	.cfi_restore 7
	lw	a0,136(sp)
	.cfi_restore 10
	lw	a1,132(sp)
	.cfi_restore 11
	lw	a2,128(sp)
	.cfi_restore 12
	lw	a3,124(sp)
	.cfi_restore 13
	lw	a4,120(sp)
	.cfi_restore 14
	lw	a5,116(sp)
	.cfi_restore 15
	lw	a6,112(sp)
	.cfi_restore 16
	lw	a7,108(sp)
	.cfi_restore 17
	lw	t3,104(sp)
	.cfi_restore 28
	lw	t4,100(sp)
	.cfi_restore 29
	lw	t5,96(sp)
	.cfi_restore 30
	lw	t6,92(sp)
	.cfi_restore 31
	flw	ft0,76(sp)
	.cfi_restore 32
	flw	ft1,72(sp)
	.cfi_restore 33
	flw	ft2,68(sp)
	.cfi_restore 34
	flw	ft3,64(sp)
	.cfi_restore 35
	flw	ft4,60(sp)
	.cfi_restore 36
	flw	ft5,56(sp)
	.cfi_restore 37
	flw	ft6,52(sp)
	.cfi_restore 38
	flw	ft7,48(sp)
	.cfi_restore 39
	flw	fa0,44(sp)
	.cfi_restore 42
	flw	fa1,40(sp)
	.cfi_restore 43
	flw	fa2,36(sp)
	.cfi_restore 44
	flw	fa3,32(sp)
	.cfi_restore 45
	flw	fa4,28(sp)
	.cfi_restore 46
	flw	fa5,24(sp)
	.cfi_restore 47
	flw	fa6,20(sp)
	.cfi_restore 48
	flw	fa7,16(sp)
	.cfi_restore 49
	flw	ft8,12(sp)
	.cfi_restore 60
	flw	ft9,8(sp)
	.cfi_restore 61
	flw	ft10,4(sp)
	.cfi_restore 62
	flw	ft11,0(sp)
	.cfi_restore 63
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	mret
	.cfi_endproc
.LFE4:
	.size	Default_Handler_Stub, .-Default_Handler_Stub
	.weak	WIFI_IPC_PUBLIC_IRQHandler
	.set	WIFI_IPC_PUBLIC_IRQHandler,Default_Handler_Stub
	.weak	MAC_PORT_TRG_IRQHandler
	.set	MAC_PORT_TRG_IRQHandler,Default_Handler_Stub
	.weak	MAC_GEN_IRQHandler
	.set	MAC_GEN_IRQHandler,Default_Handler_Stub
	.weak	MAC_TX_TRG_IRQHandler
	.set	MAC_TX_TRG_IRQHandler,Default_Handler_Stub
	.weak	MAC_RX_TRG_IRQHandler
	.set	MAC_RX_TRG_IRQHandler,Default_Handler_Stub
	.weak	MAC_TXRX_MISC_IRQHandler
	.set	MAC_TXRX_MISC_IRQHandler,Default_Handler_Stub
	.weak	MAC_TXRX_TIMER_IRQHandler
	.set	MAC_TXRX_TIMER_IRQHandler,Default_Handler_Stub
	.weak	BLE_IRQHandler
	.set	BLE_IRQHandler,Default_Handler_Stub
	.weak	BZ_PHY_IRQHandler
	.set	BZ_PHY_IRQHandler,Default_Handler_Stub
	.weak	WIFI_IRQHandler
	.set	WIFI_IRQHandler,Default_Handler_Stub
	.weak	BOR_IRQHandler
	.set	BOR_IRQHandler,Default_Handler_Stub
	.weak	HBN_OUT1_IRQHandler
	.set	HBN_OUT1_IRQHandler,Default_Handler_Stub
	.weak	HBN_OUT0_IRQHandler
	.set	HBN_OUT0_IRQHandler,Default_Handler_Stub
	.weak	PDS_WAKEUP_IRQHandler
	.set	PDS_WAKEUP_IRQHandler,Default_Handler_Stub
	.weak	GPIO_INT0_IRQHandler
	.set	GPIO_INT0_IRQHandler,Default_Handler_Stub
	.weak	TIMER_WDT_IRQHandler
	.set	TIMER_WDT_IRQHandler,Default_Handler_Stub
	.weak	TIMER_CH1_IRQHandler
	.set	TIMER_CH1_IRQHandler,Default_Handler_Stub
	.weak	TIMER_CH0_IRQHandler
	.set	TIMER_CH0_IRQHandler,Default_Handler_Stub
	.weak	PWM_IRQHandler
	.set	PWM_IRQHandler,Default_Handler_Stub
	.weak	I2C_IRQHandler
	.set	I2C_IRQHandler,Default_Handler_Stub
	.weak	UART1_IRQHandler
	.set	UART1_IRQHandler,Default_Handler_Stub
	.weak	UART0_IRQHandler
	.set	UART0_IRQHandler,Default_Handler_Stub
	.weak	SPI_IRQHandler
	.set	SPI_IRQHandler,Default_Handler_Stub
	.weak	EFUSE_IRQHandler
	.set	EFUSE_IRQHandler,Default_Handler_Stub
	.weak	GPADC_DMA_IRQHandler
	.set	GPADC_DMA_IRQHandler,Default_Handler_Stub
	.weak	SF_CTRL_IRQHandler
	.set	SF_CTRL_IRQHandler,Default_Handler_Stub
	.weak	IRRX_IRQHandler
	.set	IRRX_IRQHandler,Default_Handler_Stub
	.weak	IRTX_IRQHandler
	.set	IRTX_IRQHandler,Default_Handler_Stub
	.weak	DMA_ALL_IRQHandler
	.set	DMA_ALL_IRQHandler,Default_Handler_Stub
	.weak	SEC_SHA_IRQHandler
	.set	SEC_SHA_IRQHandler,Default_Handler_Stub
	.weak	SEC_AES_IRQHandler
	.set	SEC_AES_IRQHandler,Default_Handler_Stub
	.weak	SEC_TRNG_IRQHandler
	.set	SEC_TRNG_IRQHandler,Default_Handler_Stub
	.weak	SEC_PKA_IRQHandler
	.set	SEC_PKA_IRQHandler,Default_Handler_Stub
	.weak	SEC_CDET_IRQHandler
	.set	SEC_CDET_IRQHandler,Default_Handler_Stub
	.weak	SEC_GMAC_IRQHandler
	.set	SEC_GMAC_IRQHandler,Default_Handler_Stub
	.weak	DMA_BMX_ERR_IRQHandler
	.set	DMA_BMX_ERR_IRQHandler,Default_Handler_Stub
	.weak	SDIO_IRQHandler
	.set	SDIO_IRQHandler,Default_Handler_Stub
	.weak	RF_TOP_INT1_IRQHandler
	.set	RF_TOP_INT1_IRQHandler,Default_Handler_Stub
	.weak	RF_TOP_INT0_IRQHandler
	.set	RF_TOP_INT0_IRQHandler,Default_Handler_Stub
	.weak	SEC_BMX_ERR_IRQHandler
	.set	SEC_BMX_ERR_IRQHandler,Default_Handler_Stub
	.weak	L1C_BMX_TO_IRQHandler
	.set	L1C_BMX_TO_IRQHandler,Default_Handler_Stub
	.weak	L1C_BMX_ERR_IRQHandler
	.set	L1C_BMX_ERR_IRQHandler,Default_Handler_Stub
	.weak	BMX_TO_IRQHandler
	.set	BMX_TO_IRQHandler,Default_Handler_Stub
	.weak	BMX_ERR_IRQHandler
	.set	BMX_ERR_IRQHandler,Default_Handler_Stub
	.weak	clic_csoft_handler
	.set	clic_csoft_handler,Default_Handler_Stub
	.weak	clic_mext_handler
	.set	clic_mext_handler,Default_Handler_Stub
	.weak	clic_mtimer_handler
	.set	clic_mtimer_handler,Default_Handler_Stub
	.weak	clic_msip_handler
	.set	clic_msip_handler,Default_Handler_Stub
	.section	.text.Trap_Handler_Stub,"ax",@progbits
	.align	6
	.globl	Trap_Handler_Stub
	.type	Trap_Handler_Stub, @function
Trap_Handler_Stub:
.LFB5:
.LM6:
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	t0,152(sp)
	.cfi_offset 1, -4
	.cfi_offset 5, -8
	frcsr	t0
	sw	t0,148(sp)
	sw	t1,144(sp)
	sw	t2,140(sp)
	sw	a0,136(sp)
	sw	a1,132(sp)
	sw	a2,128(sp)
	sw	a3,124(sp)
	sw	a4,120(sp)
	sw	a5,116(sp)
	sw	a6,112(sp)
	sw	a7,108(sp)
	sw	t3,104(sp)
	sw	t4,100(sp)
	sw	t5,96(sp)
	sw	t6,92(sp)
	fsw	ft0,76(sp)
	fsw	ft1,72(sp)
	fsw	ft2,68(sp)
	fsw	ft3,64(sp)
	fsw	ft4,60(sp)
	fsw	ft5,56(sp)
	fsw	ft6,52(sp)
	fsw	ft7,48(sp)
	fsw	fa0,44(sp)
	fsw	fa1,40(sp)
	fsw	fa2,36(sp)
	fsw	fa3,32(sp)
	fsw	fa4,28(sp)
	fsw	fa5,24(sp)
	fsw	fa6,20(sp)
	fsw	fa7,16(sp)
	fsw	ft8,12(sp)
	fsw	ft9,8(sp)
.LM7:
.LM8:
	fsw	ft10,4(sp)
	fsw	ft11,0(sp)
	.cfi_offset 5, -12
	.cfi_offset 6, -16
	.cfi_offset 7, -20
	.cfi_offset 10, -24
	.cfi_offset 11, -28
	.cfi_offset 12, -32
	.cfi_offset 13, -36
	.cfi_offset 14, -40
	.cfi_offset 15, -44
	.cfi_offset 16, -48
	.cfi_offset 17, -52
	.cfi_offset 28, -56
	.cfi_offset 29, -60
	.cfi_offset 30, -64
	.cfi_offset 31, -68
	.cfi_offset 32, -84
	.cfi_offset 33, -88
	.cfi_offset 34, -92
	.cfi_offset 35, -96
	.cfi_offset 36, -100
	.cfi_offset 37, -104
	.cfi_offset 38, -108
	.cfi_offset 39, -112
	.cfi_offset 42, -116
	.cfi_offset 43, -120
	.cfi_offset 44, -124
	.cfi_offset 45, -128
	.cfi_offset 46, -132
	.cfi_offset 47, -136
	.cfi_offset 48, -140
	.cfi_offset 49, -144
	.cfi_offset 60, -148
	.cfi_offset 61, -152
	.cfi_offset 62, -156
	.cfi_offset 63, -160
.LM9:
	call	Trap_Handler
.LVL1:
.LM10:
	lw	ra,156(sp)
	.cfi_restore 1
	lw	t0,148(sp)
	.cfi_restore 5
	fscsr	t0
	lw	t0,152(sp)
	.cfi_restore 5
	lw	t1,144(sp)
	.cfi_restore 6
	lw	t2,140(sp)
	.cfi_restore 7
	lw	a0,136(sp)
	.cfi_restore 10
	lw	a1,132(sp)
	.cfi_restore 11
	lw	a2,128(sp)
	.cfi_restore 12
	lw	a3,124(sp)
	.cfi_restore 13
	lw	a4,120(sp)
	.cfi_restore 14
	lw	a5,116(sp)
	.cfi_restore 15
	lw	a6,112(sp)
	.cfi_restore 16
	lw	a7,108(sp)
	.cfi_restore 17
	lw	t3,104(sp)
	.cfi_restore 28
	lw	t4,100(sp)
	.cfi_restore 29
	lw	t5,96(sp)
	.cfi_restore 30
	lw	t6,92(sp)
	.cfi_restore 31
	flw	ft0,76(sp)
	.cfi_restore 32
	flw	ft1,72(sp)
	.cfi_restore 33
	flw	ft2,68(sp)
	.cfi_restore 34
	flw	ft3,64(sp)
	.cfi_restore 35
	flw	ft4,60(sp)
	.cfi_restore 36
	flw	ft5,56(sp)
	.cfi_restore 37
	flw	ft6,52(sp)
	.cfi_restore 38
	flw	ft7,48(sp)
	.cfi_restore 39
	flw	fa0,44(sp)
	.cfi_restore 42
	flw	fa1,40(sp)
	.cfi_restore 43
	flw	fa2,36(sp)
	.cfi_restore 44
	flw	fa3,32(sp)
	.cfi_restore 45
	flw	fa4,28(sp)
	.cfi_restore 46
	flw	fa5,24(sp)
	.cfi_restore 47
	flw	fa6,20(sp)
	.cfi_restore 48
	flw	fa7,16(sp)
	.cfi_restore 49
	flw	ft8,12(sp)
	.cfi_restore 60
	flw	ft9,8(sp)
	.cfi_restore 61
	flw	ft10,4(sp)
	.cfi_restore 62
	flw	ft11,0(sp)
	.cfi_restore 63
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	mret
	.cfi_endproc
.LFE5:
	.size	Trap_Handler_Stub, .-Trap_Handler_Stub
	.section	.text.clic_enable_interrupt,"ax",@progbits
	.align	1
	.globl	clic_enable_interrupt
	.type	clic_enable_interrupt, @function
clic_enable_interrupt:
.LVL2:
.LFB6:
.LM11:
	.cfi_startproc
.LM12:
.LM13:
	li	a5,41943040
	addi	a5,a5,1024
	add	a0,a0,a5
.LVL3:
.LM14:
	li	a5,1
	sb	a5,0(a0)
.LM15:
	ret
	.cfi_endproc
.LFE6:
	.size	clic_enable_interrupt, .-clic_enable_interrupt
	.section	.text.clic_disable_interrupt,"ax",@progbits
	.align	1
	.globl	clic_disable_interrupt
	.type	clic_disable_interrupt, @function
clic_disable_interrupt:
.LVL4:
.LFB7:
.LM16:
	.cfi_startproc
.LM17:
.LM18:
	li	a5,41943040
	addi	a5,a5,1024
	add	a0,a0,a5
.LVL5:
.LM19:
	sb	zero,0(a0)
.LM20:
	ret
	.cfi_endproc
.LFE7:
	.size	clic_disable_interrupt, .-clic_disable_interrupt
	.section	.text.clic_set_pending,"ax",@progbits
	.align	1
	.globl	clic_set_pending
	.type	clic_set_pending, @function
clic_set_pending:
.LVL6:
.LFB8:
.LM21:
	.cfi_startproc
.LM22:
.LM23:
	li	a5,41943040
	add	a0,a0,a5
.LVL7:
.LM24:
	li	a5,1
	sb	a5,0(a0)
.LM25:
	ret
	.cfi_endproc
.LFE8:
	.size	clic_set_pending, .-clic_set_pending
	.section	.text.clic_clear_pending,"ax",@progbits
	.align	1
	.globl	clic_clear_pending
	.type	clic_clear_pending, @function
clic_clear_pending:
.LVL8:
.LFB9:
.LM26:
	.cfi_startproc
.LM27:
.LM28:
	li	a5,41943040
	add	a0,a0,a5
.LVL9:
.LM29:
	sb	zero,0(a0)
.LM30:
	ret
	.cfi_endproc
.LFE9:
	.size	clic_clear_pending, .-clic_clear_pending
	.section	.text.clic_set_intcfg,"ax",@progbits
	.align	1
	.globl	clic_set_intcfg
	.type	clic_set_intcfg, @function
clic_set_intcfg:
.LVL10:
.LFB10:
.LM31:
	.cfi_startproc
.LM32:
.LM33:
	li	a5,41947136
	addi	a5,a5,-2048
	add	a0,a0,a5
.LVL11:
.LM34:
	sb	a1,0(a0)
.LM35:
	ret
	.cfi_endproc
.LFE10:
	.size	clic_set_intcfg, .-clic_set_intcfg
	.section	.text.clic_get_intcfg,"ax",@progbits
	.align	1
	.globl	clic_get_intcfg
	.type	clic_get_intcfg, @function
clic_get_intcfg:
.LVL12:
.LFB11:
.LM36:
	.cfi_startproc
.LM37:
.LM38:
	li	a5,41947136
	addi	a5,a5,-2048
	add	a0,a0,a5
.LVL13:
.LM39:
	lbu	a0,0(a0)
.LVL14:
.LM40:
	ret
	.cfi_endproc
.LFE11:
	.size	clic_get_intcfg, .-clic_get_intcfg
	.section	.text.clic_set_cliccfg,"ax",@progbits
	.align	1
	.globl	clic_set_cliccfg
	.type	clic_set_cliccfg, @function
clic_set_cliccfg:
.LVL15:
.LFB12:
.LM41:
	.cfi_startproc
.LM42:
.LM43:
	li	a5,41947136
	sb	a0,-1024(a5)
.LM44:
	ret
	.cfi_endproc
.LFE12:
	.size	clic_set_cliccfg, .-clic_set_cliccfg
	.section	.text.clic_get_cliccfg,"ax",@progbits
	.align	1
	.globl	clic_get_cliccfg
	.type	clic_get_cliccfg, @function
clic_get_cliccfg:
.LFB13:
.LM45:
	.cfi_startproc
.LM46:
.LM47:
	li	a5,41947136
	lbu	a0,-1024(a5)
.LM48:
	ret
	.cfi_endproc
.LFE13:
	.size	clic_get_cliccfg, .-clic_get_cliccfg
	.globl	__Vectors
	.section	.init,"a"
	.align	6
	.type	__Vectors, @object
	.size	__Vectors, 320
__Vectors:
	.word	0
	.word	0
	.word	0
	.word	clic_msip_handler
	.word	0
	.word	0
	.word	0
	.word	clic_mtimer_handler
	.word	4
	.word	4103
	.word	65538
	.word	clic_mext_handler
	.word	clic_csoft_handler
	.word	2000000
	.word	0
	.word	0
	.word	BMX_ERR_IRQHandler
	.word	BMX_TO_IRQHandler
	.word	L1C_BMX_ERR_IRQHandler
	.word	L1C_BMX_TO_IRQHandler
	.word	SEC_BMX_ERR_IRQHandler
	.word	RF_TOP_INT0_IRQHandler
	.word	RF_TOP_INT1_IRQHandler
	.word	SDIO_IRQHandler
	.word	DMA_BMX_ERR_IRQHandler
	.word	SEC_GMAC_IRQHandler
	.word	SEC_CDET_IRQHandler
	.word	SEC_PKA_IRQHandler
	.word	SEC_TRNG_IRQHandler
	.word	SEC_AES_IRQHandler
	.word	SEC_SHA_IRQHandler
	.word	DMA_ALL_IRQHandler
	.word	0
	.word	0
	.word	0
	.word	IRTX_IRQHandler
	.word	IRRX_IRQHandler
	.word	0
	.word	0
	.word	SF_CTRL_IRQHandler
	.word	0
	.word	GPADC_DMA_IRQHandler
	.word	EFUSE_IRQHandler
	.word	SPI_IRQHandler
	.word	0
	.word	UART0_IRQHandler
	.word	UART1_IRQHandler
	.word	0
	.word	I2C_IRQHandler
	.word	0
	.word	PWM_IRQHandler
	.word	0
	.word	TIMER_CH0_IRQHandler
	.word	TIMER_CH1_IRQHandler
	.word	TIMER_WDT_IRQHandler
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	GPIO_INT0_IRQHandler
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	PDS_WAKEUP_IRQHandler
	.word	HBN_OUT0_IRQHandler
	.word	HBN_OUT1_IRQHandler
	.word	BOR_IRQHandler
	.word	WIFI_IRQHandler
	.word	BZ_PHY_IRQHandler
	.word	BLE_IRQHandler
	.word	MAC_TXRX_TIMER_IRQHandler
	.word	MAC_TXRX_MISC_IRQHandler
	.word	MAC_RX_TRG_IRQHandler
	.word	MAC_TX_TRG_IRQHandler
	.word	MAC_GEN_IRQHandler
	.word	MAC_PORT_TRG_IRQHandler
	.word	WIFI_IPC_PUBLIC_IRQHandler
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x24c
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL6
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x61
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x7b
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.4byte	0x9a
	.uleb128 0x5
	.4byte	0x89
	.uleb128 0xa
	.byte	0x4
	.4byte	0xa0
	.uleb128 0xb
	.uleb128 0xc
	.4byte	0x95
	.4byte	0xb1
	.uleb128 0xd
	.4byte	0x32
	.byte	0x4f
	.byte	0
	.uleb128 0x5
	.4byte	0xa1
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3a
	.byte	0xd
	.4byte	0xb1
	.byte	0x40
	.uleb128 0x5
	.byte	0x3
	.4byte	__Vectors
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0xb1
	.byte	0x9
	.4byte	0x55
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0xad
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10e
	.uleb128 0x10
	.string	"cfg"
	.byte	0x1
	.byte	0xad
	.byte	0x22
	.4byte	0x6f
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0xa9
	.byte	0x9
	.4byte	0x55
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13c
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0xa9
	.byte	0x24
	.4byte	0x6f
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0xa5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x172
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0xa5
	.byte	0x20
	.4byte	0x6f
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x12
	.4byte	.LASF19
	.byte	0x1
	.byte	0xa5
	.byte	0x31
	.4byte	0x6f
	.uleb128 0x1
	.byte	0x5b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0xa1
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19a
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0xa1
	.byte	0x22
	.4byte	0x6f
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x9d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c2
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x9d
	.byte	0x20
	.4byte	0x6f
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x99
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ea
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x99
	.byte	0x28
	.4byte	0x6f
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x95
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x212
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x95
	.byte	0x26
	.4byte	0x6f
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0x91
	.byte	0x2d
	.byte	0x40
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x233
	.uleb128 0x7
	.4byte	.LVL1
	.4byte	0xc9
	.byte	0
	.uleb128 0x14
	.4byte	.LASF29
	.byte	0x1
	.byte	0x8d
	.byte	0x21
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LVL0
	.4byte	0xcf
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x12
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
	.uleb128 0x88
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS5:
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x3
	.uleb128 0x4
	.uleb128 0x4
	.uleb128 0
.LLST5:
	.byte	0x6
	.4byte	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL13-.LVL12
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL13-.LVL12
	.uleb128 .LVL14-.LVL12
	.uleb128 0x6
	.byte	0x7a
	.sleb128 -41945088
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.LVL12
	.uleb128 .LFE11-.LVL12
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x3
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL11-.LVL10
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL11-.LVL10
	.uleb128 .LFE10-.LVL10
	.uleb128 0x6
	.byte	0x7a
	.sleb128 -41945088
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x3
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL8
	.byte	0x4
	.uleb128 .LVL8-.LVL8
	.uleb128 .LVL9-.LVL8
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL9-.LVL8
	.uleb128 .LFE9-.LVL8
	.uleb128 0x6
	.byte	0x7a
	.sleb128 -41943040
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x3
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL6
	.byte	0x4
	.uleb128 .LVL6-.LVL6
	.uleb128 .LVL7-.LVL6
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL7-.LVL6
	.uleb128 .LFE8-.LVL6
	.uleb128 0x6
	.byte	0x7a
	.sleb128 -41943040
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x3
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL5-.LVL4
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL5-.LVL4
	.uleb128 .LFE7-.LVL4
	.uleb128 0x6
	.byte	0x7a
	.sleb128 -41944064
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x3
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL3-.LVL2
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL3-.LVL2
	.uleb128 .LFE6-.LVL2
	.uleb128 0x6
	.byte	0x7a
	.sleb128 -41944064
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
.LLRL6:
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0x7
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0x7
	.4byte	.LFB7
	.uleb128 .LFE7-.LFB7
	.byte	0x7
	.4byte	.LFB8
	.uleb128 .LFE8-.LFB8
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.4byte	.LELT0-.LSLT0
.LSLT0:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf2
	.byte	0xd
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x3
	.4byte	.LASF1
	.4byte	.LASF30
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF32
	.byte	0x1
	.4byte	.LASF33
	.byte	0x2
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0xa3
	.byte	0x5
	.uleb128 0x3b
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x3b
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE4
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM6
	.byte	0xa7
	.byte	0x5
	.uleb128 0x44
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x44
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE5
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM11
	.byte	0xab
	.byte	0x5
	.uleb128 0x2e
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x2e
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x1
	.byte	0x5
	.uleb128 0x37
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE6
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM16
	.byte	0xaf
	.byte	0x5
	.uleb128 0x2f
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x2c
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x1
	.byte	0x5
	.uleb128 0x35
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE7
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM21
	.byte	0xb3
	.byte	0x5
	.uleb128 0x27
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x2c
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x1
	.byte	0x5
	.uleb128 0x35
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE8
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM26
	.byte	0xb7
	.byte	0x5
	.uleb128 0x29
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x2c
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x1
	.byte	0x5
	.uleb128 0x35
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE9
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM31
	.byte	0xbb
	.byte	0x5
	.uleb128 0x38
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x2c
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x1
	.byte	0x5
	.uleb128 0x35
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE10
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM36
	.byte	0xbf
	.byte	0x5
	.uleb128 0x2b
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x33
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE11
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM41
	.byte	0xc3
	.byte	0x5
	.uleb128 0x26
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x2d
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE12
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM45
	.byte	0xc7
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE13
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"Trap_Handler"
.LASF25:
	.string	"Trap_Handler_Stub"
.LASF22:
	.string	"clic_disable_interrupt"
.LASF16:
	.string	"clic_set_cliccfg"
.LASF21:
	.string	"clic_set_pending"
.LASF20:
	.string	"clic_clear_pending"
.LASF23:
	.string	"clic_enable_interrupt"
.LASF8:
	.string	"unsigned char"
.LASF12:
	.string	"long unsigned int"
.LASF9:
	.string	"short unsigned int"
.LASF26:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF13:
	.string	"pFunc"
.LASF27:
	.string	"__Vectors"
.LASF24:
	.string	"clic_get_intcfg"
.LASF17:
	.string	"clic_set_intcfg"
.LASF3:
	.string	"unsigned int"
.LASF2:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF19:
	.string	"intcfg"
.LASF7:
	.string	"long long int"
.LASF15:
	.string	"Default_Handler"
.LASF28:
	.string	"clic_get_cliccfg"
.LASF5:
	.string	"short int"
.LASF11:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF29:
	.string	"Default_Handler_Stub"
.LASF4:
	.string	"signed char"
.LASF18:
	.string	"source"
	.section	.debug_line_str,"MS",@progbits,1
.LASF31:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF32:
	.string	"interrupt.c"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/interrupt.c"
.LASF30:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup"
.LASF33:
	.string	"stdint-gcc.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/bl602_std"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
