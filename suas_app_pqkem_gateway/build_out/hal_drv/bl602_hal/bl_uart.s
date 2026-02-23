	.file	"bl_uart.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_uart.c"
	.section	.srodata.uartAddr,"a"
	.align	2
	.type	uartAddr, @object
	.size	uartAddr, 8
uartAddr:
	.word	1073782784
	.word	1073783040
	.section	.bss.g_uart_notify_arg,"aw",@nobits
	.align	2
	.type	g_uart_notify_arg, @object
	.size	g_uart_notify_arg, 32
g_uart_notify_arg:
	.zero	32
	.section	.text.gpio_init,"ax",@progbits
	.align	1
	.type	gpio_init, @function
gpio_init:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_uart.c"
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
	mv	a5,a0
	sb	a5,-33(s0)
	mv	a5,a1
	sb	a5,-34(s0)
	mv	a5,a2
	sb	a5,-35(s0)
	mv	a5,a3
	sb	a5,-36(s0)
	mv	a5,a4
	sb	a5,-37(s0)
	.loc 1 62 15
	li	a5,1
	sb	a5,-20(s0)
	.loc 1 63 17
	li	a5,1
	sb	a5,-19(s0)
	.loc 1 64 17
	li	a5,7
	sb	a5,-23(s0)
	.loc 1 66 17
	lbu	a5,-35(s0)
	sb	a5,-24(s0)
	.loc 1 67 18
	li	a5,2
	sb	a5,-22(s0)
	.loc 1 68 18
	sb	zero,-21(s0)
	.loc 1 69 5
	addi	a5,s0,-24
	mv	a0,a5
	call	GLB_GPIO_Init
	.loc 1 71 17
	lbu	a5,-34(s0)
	sb	a5,-24(s0)
	.loc 1 72 18
	li	a5,2
	sb	a5,-22(s0)
	.loc 1 73 18
	sb	zero,-21(s0)
	.loc 1 74 5
	addi	a5,s0,-24
	mv	a0,a5
	call	GLB_GPIO_Init
	.loc 1 77 8
	lbu	a5,-33(s0)
	bne	a5,zero,.L2
	.loc 1 78 19
	li	a5,2
	sb	a5,-17(s0)
	.loc 1 79 19
	li	a5,3
	sb	a5,-18(s0)
	j	.L3
.L2:
	.loc 1 81 19
	li	a5,6
	sb	a5,-17(s0)
	.loc 1 82 19
	li	a5,7
	sb	a5,-18(s0)
.L3:
	.loc 1 88 28
	lbu	a5,-34(s0)
	andi	a5,a5,7
	andi	a5,a5,0xff
	.loc 1 88 5
	lbu	a4,-17(s0)
	mv	a1,a4
	mv	a0,a5
	call	GLB_UART_Fun_Sel
	.loc 1 89 28
	lbu	a5,-35(s0)
	andi	a5,a5,7
	andi	a5,a5,0xff
	.loc 1 89 5
	lbu	a4,-18(s0)
	mv	a1,a4
	mv	a0,a5
	call	GLB_UART_Fun_Sel
	.loc 1 90 1
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
.LFE8:
	.size	gpio_init, .-gpio_init
	.section	.rodata
	.align	2
.LC0:
	.word	160000000
	.word	115200
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	1
	.section	.srodata,"a"
	.align	2
.LC1:
	.byte	16
	.byte	16
	.byte	0
	.byte	0
	.section	.text.bl_uart_init,"ax",@progbits
	.align	1
	.globl	bl_uart_init
	.type	bl_uart_init, @function
bl_uart_init:
.LFB9:
	.loc 1 93 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a5,-60(s0)
	mv	a5,a0
	sb	a5,-49(s0)
	mv	a5,a1
	sb	a5,-50(s0)
	mv	a5,a2
	sb	a5,-51(s0)
	mv	a5,a3
	sb	a5,-52(s0)
	mv	a5,a4
	sb	a5,-53(s0)
	.loc 1 95 19
	li	a5,3
	sb	a5,-17(s0)
	.loc 1 97 19
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a4,8(a5)
	sw	a2,-36(s0)
	sw	a3,-32(s0)
	sw	a4,-28(s0)
	lw	a5,12(a5)
	sw	a5,-24(s0)
	.loc 1 109 23
	lui	a5,%hi(.LC1)
	lw	a5,%lo(.LC1)(a5)
	sw	a5,-40(s0)
	.loc 1 118 11
	lui	a5,%hi(uart_clk_init.0)
	lbu	a5,%lo(uart_clk_init.0)(a5)
	.loc 1 118 8
	bne	a5,zero,.L5
	.loc 1 119 9
	lbu	a5,-17(s0)
	mv	a2,a5
	li	a1,1
	li	a0,1
	call	GLB_Set_UART_CLK
	.loc 1 120 23
	lui	a5,%hi(uart_clk_init.0)
	li	a4,1
	sb	a4,%lo(uart_clk_init.0)(a5)
.L5:
	.loc 1 124 5
	lbu	a4,-53(s0)
	lbu	a3,-52(s0)
	lbu	a2,-51(s0)
	lbu	a1,-50(s0)
	lbu	a5,-49(s0)
	mv	a0,a5
	call	gpio_init
	.loc 1 126 22
	lw	a5,-60(s0)
	sw	a5,-32(s0)
	.loc 1 127 55
	lbu	a5,-17(s0)
	addi	a5,a5,1
	.loc 1 127 43
	li	a4,160002048
	addi	a4,a4,-2048
	div	a5,a4,a5
	.loc 1 127 21
	sw	a5,-36(s0)
	.loc 1 130 5
	lbu	a5,-49(s0)
	li	a2,1
	li	a1,8
	mv	a0,a5
	call	UART_IntMask
	.loc 1 133 5
	lbu	a5,-49(s0)
	li	a1,2
	mv	a0,a5
	call	UART_Disable
	.loc 1 136 5
	addi	a4,s0,-36
	lbu	a5,-49(s0)
	mv	a1,a4
	mv	a0,a5
	call	UART_Init
	.loc 1 139 5
	lbu	a5,-49(s0)
	li	a1,1
	mv	a0,a5
	call	UART_TxFreeRun
	.loc 1 142 5
	addi	a4,s0,-40
	lbu	a5,-49(s0)
	mv	a1,a4
	mv	a0,a5
	call	UART_FifoConfig
	.loc 1 145 5
	lbu	a5,-49(s0)
	li	a1,2
	mv	a0,a5
	call	UART_Enable
	.loc 1 147 12
	li	a5,0
	.loc 1 148 1
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
.LFE9:
	.size	bl_uart_init, .-bl_uart_init
	.section	.text.bl_uart_data_send,"ax",@progbits
	.align	1
	.globl	bl_uart_data_send
	.type	bl_uart_data_send, @function
bl_uart_data_send:
.LFB10:
	.loc 1 152 1
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
	mv	a4,a1
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 153 30
	lbu	a5,-33(s0)
	.loc 1 153 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 156 11
	nop
.L8:
	.loc 1 156 12 discriminator 2
	lbu	a5,-33(s0)
	mv	a0,a5
	call	UART_GetTxFifoCount
	mv	a5,a0
	.loc 1 156 36 discriminator 2
	beq	a5,zero,.L8
	.loc 1 159 34
	lw	a5,-20(s0)
	addi	a5,a5,136
	.loc 1 159 8
	mv	a4,a5
	.loc 1 159 44
	lbu	a5,-34(s0)
	sb	a5,0(a4)
	.loc 1 161 12
	li	a5,0
	.loc 1 162 1
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
.LFE10:
	.size	bl_uart_data_send, .-bl_uart_data_send
	.section	.text.bl_uart_data_recv,"ax",@progbits
	.align	1
	.globl	bl_uart_data_recv
	.type	bl_uart_data_recv, @function
bl_uart_data_recv:
.LFB11:
	.loc 1 165 1
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
	sb	a5,-33(s0)
	.loc 1 167 30
	lbu	a5,-33(s0)
	.loc 1 167 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 170 9
	lbu	a5,-33(s0)
	mv	a0,a5
	call	UART_GetRxFifoCount
	mv	a5,a0
	.loc 1 170 8 discriminator 1
	beq	a5,zero,.L11
	.loc 1 171 44
	lw	a5,-24(s0)
	addi	a5,a5,140
	.loc 1 171 16
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 171 13
	sw	a5,-20(s0)
	j	.L12
.L11:
	.loc 1 173 13
	li	a5,-1
	sw	a5,-20(s0)
.L12:
	.loc 1 176 12
	lw	a5,-20(s0)
	.loc 1 177 1
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
.LFE11:
	.size	bl_uart_data_recv, .-bl_uart_data_recv
	.section	.text.bl_uart_int_rx_enable,"ax",@progbits
	.align	1
	.globl	bl_uart_int_rx_enable
	.type	bl_uart_int_rx_enable, @function
bl_uart_int_rx_enable:
.LFB12:
	.loc 1 180 1
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
	.loc 1 181 5
	lbu	a5,-17(s0)
	li	a1,24
	mv	a0,a5
	call	UART_SetRxTimeoutValue
	.loc 1 182 5
	lbu	a5,-17(s0)
	li	a2,0
	li	a1,3
	mv	a0,a5
	call	UART_IntMask
	.loc 1 183 5
	lbu	a5,-17(s0)
	li	a2,0
	li	a1,1
	mv	a0,a5
	call	UART_IntMask
	.loc 1 184 5
	lbu	a5,-17(s0)
	li	a2,0
	li	a1,4
	mv	a0,a5
	call	UART_IntMask
	.loc 1 185 12
	li	a5,0
	.loc 1 186 1
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
.LFE12:
	.size	bl_uart_int_rx_enable, .-bl_uart_int_rx_enable
	.section	.text.bl_uart_int_rx_disable,"ax",@progbits
	.align	1
	.globl	bl_uart_int_rx_disable
	.type	bl_uart_int_rx_disable, @function
bl_uart_int_rx_disable:
.LFB13:
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
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 190 5
	lbu	a5,-17(s0)
	li	a2,1
	li	a1,3
	mv	a0,a5
	call	UART_IntMask
	.loc 1 191 5
	lbu	a5,-17(s0)
	li	a2,1
	li	a1,1
	mv	a0,a5
	call	UART_IntMask
	.loc 1 192 5
	lbu	a5,-17(s0)
	li	a2,1
	li	a1,4
	mv	a0,a5
	call	UART_IntMask
	.loc 1 193 12
	li	a5,0
	.loc 1 194 1
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
.LFE13:
	.size	bl_uart_int_rx_disable, .-bl_uart_int_rx_disable
	.section	.text.bl_uart_int_tx_enable,"ax",@progbits
	.align	1
	.globl	bl_uart_int_tx_enable
	.type	bl_uart_int_tx_enable, @function
bl_uart_int_tx_enable:
.LFB14:
	.loc 1 197 1
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
	.loc 1 198 5
	lbu	a5,-17(s0)
	li	a2,0
	li	a1,2
	mv	a0,a5
	call	UART_IntMask
	.loc 1 199 12
	li	a5,0
	.loc 1 200 1
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
.LFE14:
	.size	bl_uart_int_tx_enable, .-bl_uart_int_tx_enable
	.section	.text.bl_uart_int_tx_disable,"ax",@progbits
	.align	1
	.globl	bl_uart_int_tx_disable
	.type	bl_uart_int_tx_disable, @function
bl_uart_int_tx_disable:
.LFB15:
	.loc 1 203 1
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
	.loc 1 204 5
	lbu	a5,-17(s0)
	li	a2,1
	li	a1,2
	mv	a0,a5
	call	UART_IntMask
	.loc 1 205 12
	li	a5,0
	.loc 1 206 1
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
.LFE15:
	.size	bl_uart_int_tx_disable, .-bl_uart_int_tx_disable
	.section	.text.bl_uart_flush,"ax",@progbits
	.align	1
	.globl	bl_uart_flush
	.type	bl_uart_flush, @function
bl_uart_flush:
.LFB16:
	.loc 1 209 1
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
	.loc 1 211 11
	nop
.L23:
	.loc 1 211 20 discriminator 2
	lbu	a5,-17(s0)
	mv	a0,a5
	call	UART_GetTxFifoCount
	mv	a5,a0
	mv	a4,a5
	.loc 1 211 17 discriminator 2
	li	a5,32
	bne	a4,a5,.L23
	.loc 1 214 12
	li	a5,0
	.loc 1 215 1
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
.LFE16:
	.size	bl_uart_flush, .-bl_uart_flush
	.section	.text.bl_uart_getdefconfig,"ax",@progbits
	.align	1
	.globl	bl_uart_getdefconfig
	.type	bl_uart_getdefconfig, @function
bl_uart_getdefconfig:
.LFB17:
	.loc 1 218 1
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
	.loc 1 219 8
	lw	a5,-24(s0)
	beq	a5,zero,.L28
	.loc 1 224 13
	lw	a5,-24(s0)
	sb	zero,0(a5)
	j	.L25
.L28:
	.loc 1 220 9
	nop
.L25:
	.loc 1 225 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	bl_uart_getdefconfig, .-bl_uart_getdefconfig
	.section	.rodata
	.align	2
.LC2:
	.word	40000000
	.word	115200
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	1
	.section	.text.bl_uart_setconfig,"ax",@progbits
	.align	1
	.globl	bl_uart_setconfig
	.type	bl_uart_setconfig, @function
bl_uart_setconfig:
.LFB18:
	.loc 1 228 1
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
	mv	a4,a2
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 229 19
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a4,8(a5)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	sw	a4,-24(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 242 22
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	.loc 1 243 20
	lbu	a5,-34(s0)
	sb	a5,-22(s0)
	.loc 1 246 5
	lbu	a5,-33(s0)
	li	a1,2
	mv	a0,a5
	call	UART_Disable
	.loc 1 248 5
	addi	a4,s0,-32
	lbu	a5,-33(s0)
	mv	a1,a4
	mv	a0,a5
	call	UART_Init
	.loc 1 250 5
	lbu	a5,-33(s0)
	li	a1,1
	mv	a0,a5
	call	UART_TxFreeRun
	.loc 1 252 5
	lbu	a5,-33(s0)
	li	a1,2
	mv	a0,a5
	call	UART_Enable
	.loc 1 253 1
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
.LFE18:
	.size	bl_uart_setconfig, .-bl_uart_setconfig
	.section	.text.bl_uart_setbaud,"ax",@progbits
	.align	1
	.globl	bl_uart_setbaud
	.type	bl_uart_setbaud, @function
bl_uart_setbaud:
.LFB19:
	.loc 1 256 1
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
	.loc 1 257 5
	lbu	a5,-17(s0)
	li	a2,0
	lw	a1,-24(s0)
	mv	a0,a5
	call	bl_uart_setconfig
	.loc 1 258 1
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
.LFE19:
	.size	bl_uart_setbaud, .-bl_uart_setbaud
	.section	.text.bl_uart_int_enable,"ax",@progbits
	.align	1
	.globl	bl_uart_int_enable
	.type	bl_uart_int_enable, @function
bl_uart_int_enable:
.LFB20:
	.loc 1 261 1
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
	.loc 1 262 5
	lbu	a5,-17(s0)
	beq	a5,zero,.L32
	li	a4,1
	beq	a5,a4,.L33
	j	.L37
.L32:
	.loc 1 265 13
	li	a0,0
	call	bl_uart_int_rx_enable
	.loc 1 266 13
	li	a0,0
	call	bl_uart_int_tx_enable
	.loc 1 267 13
	lui	a5,%hi(UART0_IRQHandler)
	addi	a1,a5,%lo(UART0_IRQHandler)
	li	a0,45
	call	bl_irq_register
	.loc 1 268 13
	li	a0,45
	call	bl_irq_enable
	.loc 1 270 9
	j	.L35
.L33:
	.loc 1 273 13
	li	a0,1
	call	bl_uart_int_rx_enable
	.loc 1 274 13
	li	a0,1
	call	bl_uart_int_tx_enable
	.loc 1 275 13
	lui	a5,%hi(UART1_IRQHandler)
	addi	a1,a5,%lo(UART1_IRQHandler)
	li	a0,46
	call	bl_irq_register
	.loc 1 276 13
	li	a0,46
	call	bl_irq_enable
	.loc 1 278 9
	j	.L35
.L37:
	.loc 1 281 20
	li	a5,-1
	j	.L36
.L35:
	.loc 1 285 12
	li	a5,0
.L36:
	.loc 1 286 1
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
.LFE20:
	.size	bl_uart_int_enable, .-bl_uart_int_enable
	.section	.text.bl_uart_int_disable,"ax",@progbits
	.align	1
	.globl	bl_uart_int_disable
	.type	bl_uart_int_disable, @function
bl_uart_int_disable:
.LFB21:
	.loc 1 289 1
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
	.loc 1 290 5
	lbu	a5,-17(s0)
	beq	a5,zero,.L39
	li	a4,1
	beq	a5,a4,.L40
	j	.L44
.L39:
	.loc 1 293 13
	li	a0,0
	call	bl_uart_int_rx_disable
	.loc 1 294 13
	li	a0,0
	call	bl_uart_int_tx_disable
	.loc 1 295 13
	lui	a5,%hi(UART0_IRQHandler)
	addi	a1,a5,%lo(UART0_IRQHandler)
	li	a0,45
	call	bl_irq_unregister
	.loc 1 296 13
	li	a0,45
	call	bl_irq_disable
	.loc 1 298 9
	j	.L42
.L40:
	.loc 1 301 13
	li	a0,1
	call	bl_uart_int_rx_disable
	.loc 1 302 13
	li	a0,1
	call	bl_uart_int_tx_disable
	.loc 1 303 13
	lui	a5,%hi(UART1_IRQHandler)
	addi	a1,a5,%lo(UART1_IRQHandler)
	li	a0,46
	call	bl_irq_unregister
	.loc 1 304 13
	li	a0,46
	call	bl_irq_disable
	.loc 1 306 9
	j	.L42
.L44:
	.loc 1 309 20
	li	a5,-1
	j	.L43
.L42:
	.loc 1 313 12
	li	a5,0
.L43:
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
.LFE21:
	.size	bl_uart_int_disable, .-bl_uart_int_disable
	.section	.text.bl_uart_int_rx_notify_register,"ax",@progbits
	.align	1
	.globl	bl_uart_int_rx_notify_register
	.type	bl_uart_int_rx_notify_register, @function
bl_uart_int_rx_notify_register:
.LFB22:
	.loc 1 317 1
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
	sw	a2,-28(s0)
	sb	a5,-17(s0)
	.loc 1 318 8
	lbu	a4,-17(s0)
	li	a5,1
	bleu	a4,a5,.L46
	.loc 1 320 16
	li	a5,-1
	j	.L47
.L46:
	.loc 1 323 26
	lbu	a5,-17(s0)
	.loc 1 323 33
	lui	a4,%hi(g_uart_notify_arg)
	addi	a4,a4,%lo(g_uart_notify_arg)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 324 26
	lbu	a5,-17(s0)
	.loc 1 324 37
	lui	a4,%hi(g_uart_notify_arg)
	addi	a4,a4,%lo(g_uart_notify_arg)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,4(a5)
	.loc 1 326 12
	li	a5,0
.L47:
	.loc 1 327 1
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
.LFE22:
	.size	bl_uart_int_rx_notify_register, .-bl_uart_int_rx_notify_register
	.section	.text.bl_uart_int_tx_notify_register,"ax",@progbits
	.align	1
	.globl	bl_uart_int_tx_notify_register
	.type	bl_uart_int_tx_notify_register, @function
bl_uart_int_tx_notify_register:
.LFB23:
	.loc 1 330 1
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
	sw	a2,-28(s0)
	sb	a5,-17(s0)
	.loc 1 331 8
	lbu	a4,-17(s0)
	li	a5,1
	bleu	a4,a5,.L49
	.loc 1 333 16
	li	a5,-1
	j	.L50
.L49:
	.loc 1 336 26
	lbu	a5,-17(s0)
	.loc 1 336 33
	lui	a4,%hi(g_uart_notify_arg)
	addi	a4,a4,%lo(g_uart_notify_arg)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,8(a5)
	.loc 1 337 26
	lbu	a5,-17(s0)
	.loc 1 337 37
	lui	a4,%hi(g_uart_notify_arg)
	addi	a4,a4,%lo(g_uart_notify_arg)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,12(a5)
	.loc 1 339 12
	li	a5,0
.L50:
	.loc 1 340 1
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
.LFE23:
	.size	bl_uart_int_tx_notify_register, .-bl_uart_int_tx_notify_register
	.section	.text.bl_uart_int_rx_notify_unregister,"ax",@progbits
	.align	1
	.globl	bl_uart_int_rx_notify_unregister
	.type	bl_uart_int_rx_notify_unregister, @function
bl_uart_int_rx_notify_unregister:
.LFB24:
	.loc 1 343 1
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
	sw	a2,-28(s0)
	sb	a5,-17(s0)
	.loc 1 344 8
	lbu	a4,-17(s0)
	li	a5,1
	bleu	a4,a5,.L52
	.loc 1 346 16
	li	a5,-1
	j	.L53
.L52:
	.loc 1 348 26
	lbu	a5,-17(s0)
	.loc 1 348 33
	lui	a4,%hi(g_uart_notify_arg)
	addi	a4,a4,%lo(g_uart_notify_arg)
	slli	a5,a5,4
	add	a5,a4,a5
	sw	zero,0(a5)
	.loc 1 349 26
	lbu	a5,-17(s0)
	.loc 1 349 37
	lui	a4,%hi(g_uart_notify_arg)
	addi	a4,a4,%lo(g_uart_notify_arg)
	slli	a5,a5,4
	add	a5,a4,a5
	sw	zero,4(a5)
	.loc 1 351 12
	li	a5,0
.L53:
	.loc 1 352 1
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
.LFE24:
	.size	bl_uart_int_rx_notify_unregister, .-bl_uart_int_rx_notify_unregister
	.section	.text.bl_uart_int_tx_notify_unregister,"ax",@progbits
	.align	1
	.globl	bl_uart_int_tx_notify_unregister
	.type	bl_uart_int_tx_notify_unregister, @function
bl_uart_int_tx_notify_unregister:
.LFB25:
	.loc 1 355 1
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
	sw	a2,-28(s0)
	sb	a5,-17(s0)
	.loc 1 356 8
	lbu	a4,-17(s0)
	li	a5,1
	bleu	a4,a5,.L55
	.loc 1 358 16
	li	a5,-1
	j	.L56
.L55:
	.loc 1 360 26
	lbu	a5,-17(s0)
	.loc 1 360 33
	lui	a4,%hi(g_uart_notify_arg)
	addi	a4,a4,%lo(g_uart_notify_arg)
	slli	a5,a5,4
	add	a5,a4,a5
	sw	zero,8(a5)
	.loc 1 361 26
	lbu	a5,-17(s0)
	.loc 1 361 37
	lui	a4,%hi(g_uart_notify_arg)
	addi	a4,a4,%lo(g_uart_notify_arg)
	slli	a5,a5,4
	add	a5,a4,a5
	sw	zero,12(a5)
	.loc 1 363 12
	li	a5,0
.L56:
	.loc 1 364 1
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
.LFE25:
	.size	bl_uart_int_tx_notify_unregister, .-bl_uart_int_tx_notify_unregister
	.section	.text.uart_generic_notify_handler,"ax",@progbits
	.align	1
	.type	uart_generic_notify_handler, @function
uart_generic_notify_handler:
.LFB26:
	.loc 1 367 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-49(s0)
	.loc 1 370 14
	sw	zero,-20(s0)
	.loc 1 371 14
	sw	zero,-24(s0)
	.loc 1 372 30
	lbu	a5,-49(s0)
	.loc 1 372 14
	lui	a4,%hi(uartAddr)
	addi	a4,a4,%lo(uartAddr)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 374 43
	lw	a5,-28(s0)
	addi	a5,a5,32
	.loc 1 374 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 375 44
	lw	a5,-28(s0)
	addi	a5,a5,36
	.loc 1 375 13
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 379 19
	lw	a5,-20(s0)
	andi	a5,a5,1
	.loc 1 379 7
	beq	a5,zero,.L58
	.loc 1 379 56 discriminator 1
	lw	a5,-24(s0)
	andi	a5,a5,1
	.loc 1 379 40 discriminator 1
	bne	a5,zero,.L58
	.loc 1 380 38
	lw	a5,-28(s0)
	addi	a5,a5,40
	.loc 1 380 12
	mv	a4,a5
	.loc 1 380 47
	li	a5,1
	sw	a5,0(a4)
.L58:
	.loc 1 384 19
	lw	a5,-20(s0)
	andi	a5,a5,2
	.loc 1 384 7
	beq	a5,zero,.L59
	.loc 1 384 56 discriminator 1
	lw	a5,-24(s0)
	andi	a5,a5,2
	.loc 1 384 40 discriminator 1
	bne	a5,zero,.L59
	.loc 1 385 38
	lw	a5,-28(s0)
	addi	a5,a5,40
	.loc 1 385 12
	mv	a4,a5
	.loc 1 385 47
	li	a5,2
	sw	a5,0(a4)
	.loc 1 388 35
	lbu	a5,-49(s0)
	.loc 1 388 12
	lui	a4,%hi(g_uart_notify_arg)
	addi	a4,a4,%lo(g_uart_notify_arg)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 389 36
	lbu	a5,-49(s0)
	.loc 1 389 13
	lui	a4,%hi(g_uart_notify_arg)
	addi	a4,a4,%lo(g_uart_notify_arg)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a5,4(a5)
	sw	a5,-36(s0)
	.loc 1 391 12
	lw	a5,-32(s0)
	beq	a5,zero,.L59
	.loc 1 393 13
	lw	a5,-32(s0)
	lw	a0,-36(s0)
	jalr	a5
.LVL0:
.L59:
	.loc 1 398 19
	lw	a5,-20(s0)
	andi	a5,a5,4
	.loc 1 398 7
	beq	a5,zero,.L60
	.loc 1 398 56 discriminator 1
	lw	a5,-24(s0)
	andi	a5,a5,4
	.loc 1 398 40 discriminator 1
	bne	a5,zero,.L60
	.loc 1 400 35
	lbu	a5,-49(s0)
	.loc 1 400 12
	lui	a4,%hi(g_uart_notify_arg)
	addi	a4,a4,%lo(g_uart_notify_arg)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a5,8(a5)
	sw	a5,-32(s0)
	.loc 1 401 36
	lbu	a5,-49(s0)
	.loc 1 401 13
	lui	a4,%hi(g_uart_notify_arg)
	addi	a4,a4,%lo(g_uart_notify_arg)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a5,12(a5)
	sw	a5,-36(s0)
	.loc 1 403 12
	lw	a5,-32(s0)
	beq	a5,zero,.L60
	.loc 1 405 13
	lw	a5,-32(s0)
	lw	a0,-36(s0)
	jalr	a5
.LVL1:
.L60:
	.loc 1 410 19
	lw	a5,-20(s0)
	andi	a5,a5,8
	.loc 1 410 7
	beq	a5,zero,.L61
	.loc 1 410 56 discriminator 1
	lw	a5,-24(s0)
	andi	a5,a5,8
	.loc 1 410 40 discriminator 1
	bne	a5,zero,.L61
	.loc 1 413 35
	lbu	a5,-49(s0)
	.loc 1 413 12
	lui	a4,%hi(g_uart_notify_arg)
	addi	a4,a4,%lo(g_uart_notify_arg)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 414 36
	lbu	a5,-49(s0)
	.loc 1 414 13
	lui	a4,%hi(g_uart_notify_arg)
	addi	a4,a4,%lo(g_uart_notify_arg)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a5,4(a5)
	sw	a5,-36(s0)
	.loc 1 416 12
	lw	a5,-32(s0)
	beq	a5,zero,.L61
	.loc 1 418 13
	lw	a5,-32(s0)
	lw	a0,-36(s0)
	jalr	a5
.LVL2:
.L61:
	.loc 1 423 20
	lw	a5,-20(s0)
	andi	a5,a5,16
	.loc 1 423 8
	beq	a5,zero,.L62
	.loc 1 423 57 discriminator 1
	lw	a5,-24(s0)
	andi	a5,a5,16
	.loc 1 423 41 discriminator 1
	bne	a5,zero,.L62
	.loc 1 424 38
	lw	a5,-28(s0)
	addi	a5,a5,40
	.loc 1 424 12
	mv	a4,a5
	.loc 1 424 47
	li	a5,16
	sw	a5,0(a4)
	.loc 1 427 35
	lbu	a5,-49(s0)
	.loc 1 427 12
	lui	a4,%hi(g_uart_notify_arg)
	addi	a4,a4,%lo(g_uart_notify_arg)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 428 36
	lbu	a5,-49(s0)
	.loc 1 428 13
	lui	a4,%hi(g_uart_notify_arg)
	addi	a4,a4,%lo(g_uart_notify_arg)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a5,4(a5)
	sw	a5,-36(s0)
	.loc 1 430 12
	lw	a5,-32(s0)
	beq	a5,zero,.L62
	.loc 1 432 13
	lw	a5,-32(s0)
	lw	a0,-36(s0)
	jalr	a5
.LVL3:
.L62:
	.loc 1 437 19
	lw	a5,-20(s0)
	andi	a5,a5,32
	.loc 1 437 7
	beq	a5,zero,.L63
	.loc 1 437 56 discriminator 1
	lw	a5,-24(s0)
	andi	a5,a5,32
	.loc 1 437 40 discriminator 1
	bne	a5,zero,.L63
	.loc 1 438 38
	lw	a5,-28(s0)
	addi	a5,a5,40
	.loc 1 438 12
	mv	a4,a5
	.loc 1 438 47
	li	a5,32
	sw	a5,0(a4)
.L63:
	.loc 1 446 19
	lw	a5,-20(s0)
	andi	a5,a5,128
	.loc 1 446 7
	beq	a5,zero,.L67
	.loc 1 449 5
	nop
.L67:
	nop
	.loc 1 450 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	uart_generic_notify_handler, .-uart_generic_notify_handler
	.section	.text.UART0_IRQHandler,"ax",@progbits
	.align	1
	.globl	UART0_IRQHandler
	.type	UART0_IRQHandler, @function
UART0_IRQHandler:
.LFB27:
	.loc 1 453 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 454 5
	li	a0,0
	call	uart_generic_notify_handler
	.loc 1 455 1
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
	.size	UART0_IRQHandler, .-UART0_IRQHandler
	.section	.text.UART1_IRQHandler,"ax",@progbits
	.align	1
	.globl	UART1_IRQHandler
	.type	UART1_IRQHandler, @function
UART1_IRQHandler:
.LFB28:
	.loc 1 458 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 459 5
	li	a0,1
	call	uart_generic_notify_handler
	.loc 1 460 1
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
	.size	UART1_IRQHandler, .-UART1_IRQHandler
	.section	.sbss.uart_clk_init.0,"aw",@nobits
	.type	uart_clk_init.0, @object
	.size	uart_clk_init.0, 1
uart_clk_init.0:
	.zero	1
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_uart.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_uart.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_irq.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd62
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1a
	.4byte	.LASF231
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF71
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.4byte	.LASF72
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.4byte	.LASF73
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	.LASF74
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.4byte	.LASF75
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x1d6
	.uleb128 0x10
	.4byte	0x1f9
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.4byte	.LASF76
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x222
	.uleb128 0x10
	.4byte	0x211
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF79
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.4byte	.LASF80
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF81
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.4byte	.LASF82
	.uleb128 0x1c
	.byte	0x4
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF83
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0x26d
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0x24e
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x4
	.byte	0x21
	.byte	0x1
	.4byte	0x292
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0x4
	.byte	0x24
	.byte	0x2
	.4byte	0x279
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x2b7
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF93
	.byte	0x4
	.byte	0x36
	.byte	0x2
	.4byte	0x29e
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0x2e2
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
	.byte	0x5
	.byte	0x3d
	.byte	0x2
	.4byte	0x2c3
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x5
	.byte	0x42
	.byte	0xe
	.4byte	0x30d
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0x5
	.byte	0x46
	.byte	0x2
	.4byte	0x2ee
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x5
	.byte	0x4b
	.byte	0xe
	.4byte	0x338
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
	.byte	0x4f
	.byte	0x2
	.4byte	0x319
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x5
	.byte	0x54
	.byte	0xe
	.4byte	0x369
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0x5
	.byte	0x59
	.byte	0x2
	.4byte	0x344
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x5
	.byte	0x5e
	.byte	0xe
	.4byte	0x394
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF114
	.byte	0x5
	.byte	0x62
	.byte	0x2
	.4byte	0x375
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x5
	.byte	0x67
	.byte	0xe
	.4byte	0x3b9
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0x5
	.byte	0x6a
	.byte	0x2
	.4byte	0x3a0
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x5
	.byte	0x77
	.byte	0xe
	.4byte	0x408
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF127
	.byte	0x5
	.byte	0x81
	.byte	0x2
	.4byte	0x3c5
	.uleb128 0x11
	.byte	0x10
	.byte	0x5
	.byte	0x90
	.4byte	0x492
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x5
	.byte	0x91
	.byte	0xe
	.4byte	0x211
	.byte	0
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x5
	.byte	0x92
	.byte	0xe
	.4byte	0x211
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0x5
	.byte	0x93
	.byte	0x18
	.4byte	0x369
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0x5
	.byte	0x94
	.byte	0x18
	.4byte	0x394
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0x5
	.byte	0x95
	.byte	0x16
	.4byte	0x338
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0x5
	.byte	0x96
	.byte	0x11
	.4byte	0x292
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0x5
	.byte	0x97
	.byte	0x11
	.4byte	0x292
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0x5
	.byte	0x98
	.byte	0x11
	.4byte	0x292
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF136
	.byte	0x5
	.byte	0x99
	.byte	0x1e
	.4byte	0x3b9
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	.LASF137
	.byte	0x5
	.byte	0x9a
	.byte	0x2
	.4byte	0x414
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.byte	0x9f
	.4byte	0x4db
	.uleb128 0x3
	.4byte	.LASF138
	.byte	0x5
	.byte	0xa0
	.byte	0xd
	.4byte	0x1f9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0x5
	.byte	0xa1
	.byte	0xd
	.4byte	0x1f9
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0x5
	.byte	0xa2
	.byte	0x11
	.4byte	0x292
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF141
	.byte	0x5
	.byte	0xa3
	.byte	0x11
	.4byte	0x292
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF142
	.byte	0x5
	.byte	0xa4
	.byte	0x2
	.4byte	0x49e
	.uleb128 0x11
	.byte	0x6
	.byte	0x6
	.byte	0x59
	.4byte	0x53e
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0x6
	.byte	0x5b
	.byte	0xd
	.4byte	0x1f9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0x6
	.byte	0x5c
	.byte	0xd
	.4byte	0x1f9
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF145
	.byte	0x6
	.byte	0x5d
	.byte	0xd
	.4byte	0x1f9
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0x6
	.byte	0x5e
	.byte	0xd
	.4byte	0x1f9
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF147
	.byte	0x6
	.byte	0x5f
	.byte	0xd
	.4byte	0x1f9
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0x6
	.byte	0x60
	.byte	0xd
	.4byte	0x1f9
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF149
	.byte	0x6
	.byte	0x61
	.byte	0x2
	.4byte	0x4e7
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x7
	.byte	0x7e
	.byte	0xe
	.4byte	0x563
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF152
	.byte	0x7
	.byte	0x81
	.byte	0x2
	.4byte	0x54a
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x8
	.byte	0xe8
	.byte	0xe
	.4byte	0x5ac
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF159
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF160
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF161
	.byte	0x8
	.byte	0xf1
	.byte	0x2
	.4byte	0x56f
	.uleb128 0x6
	.4byte	0x1d6
	.byte	0x8
	.byte	0xf6
	.byte	0xe
	.4byte	0x5f5
	.uleb128 0x1
	.4byte	.LASF162
	.byte	0
	.uleb128 0x1
	.4byte	.LASF163
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF164
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF165
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF166
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF168
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF169
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF170
	.byte	0x8
	.byte	0xff
	.byte	0x2
	.4byte	0x5b8
	.uleb128 0x4
	.4byte	.LASF171
	.byte	0x9
	.byte	0x24
	.byte	0x10
	.4byte	0x60d
	.uleb128 0xd
	.4byte	0x612
	.uleb128 0x1d
	.4byte	0x61d
	.uleb128 0x2
	.4byte	0x245
	.byte	0
	.uleb128 0x13
	.4byte	0x21d
	.4byte	0x62c
	.uleb128 0x14
	.4byte	0x237
	.byte	0
	.uleb128 0x10
	.4byte	0x61d
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0x2d
	.byte	0x17
	.4byte	0x62c
	.uleb128 0x5
	.byte	0x3
	.4byte	uartAddr
	.uleb128 0x1e
	.4byte	.LASF232
	.byte	0x10
	.byte	0x1
	.byte	0x2f
	.byte	0x10
	.4byte	0x684
	.uleb128 0x3
	.4byte	.LASF172
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.4byte	0x601
	.byte	0
	.uleb128 0x3
	.4byte	.LASF173
	.byte	0x1
	.byte	0x31
	.byte	0xb
	.4byte	0x245
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF174
	.byte	0x1
	.byte	0x33
	.byte	0x16
	.4byte	0x601
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF175
	.byte	0x1
	.byte	0x34
	.byte	0xb
	.4byte	0x245
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF176
	.byte	0x1
	.byte	0x35
	.byte	0x3
	.4byte	0x642
	.uleb128 0x13
	.4byte	0x684
	.4byte	0x69f
	.uleb128 0x14
	.4byte	0x237
	.byte	0
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0x37
	.byte	0x19
	.4byte	0x690
	.uleb128 0x5
	.byte	0x3
	.4byte	g_uart_notify_arg
	.uleb128 0xe
	.4byte	.LASF179
	.byte	0x21
	.4byte	0x6c0
	.uleb128 0x2
	.4byte	0x237
	.byte	0
	.uleb128 0xe
	.4byte	.LASF180
	.byte	0x33
	.4byte	0x6d5
	.uleb128 0x2
	.4byte	0x230
	.uleb128 0x2
	.4byte	0x245
	.byte	0
	.uleb128 0xe
	.4byte	.LASF181
	.byte	0x20
	.4byte	0x6e5
	.uleb128 0x2
	.4byte	0x237
	.byte	0
	.uleb128 0xe
	.4byte	.LASF182
	.byte	0x32
	.4byte	0x6fa
	.uleb128 0x2
	.4byte	0x230
	.uleb128 0x2
	.4byte	0x245
	.byte	0
	.uleb128 0x8
	.4byte	.LASF183
	.byte	0x5
	.2byte	0x11c
	.byte	0xd
	.4byte	0x26d
	.4byte	0x716
	.uleb128 0x2
	.4byte	0x2e2
	.uleb128 0x2
	.4byte	0x1f9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF184
	.byte	0x5
	.2byte	0x12d
	.byte	0x9
	.4byte	0x1f9
	.4byte	0x72d
	.uleb128 0x2
	.4byte	0x2e2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF185
	.byte	0x5
	.2byte	0x12c
	.byte	0x9
	.4byte	0x1f9
	.4byte	0x744
	.uleb128 0x2
	.4byte	0x2e2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF186
	.byte	0x5
	.2byte	0x118
	.byte	0xd
	.4byte	0x26d
	.4byte	0x760
	.uleb128 0x2
	.4byte	0x2e2
	.uleb128 0x2
	.4byte	0x30d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF187
	.byte	0x5
	.2byte	0x116
	.byte	0xd
	.4byte	0x26d
	.4byte	0x77c
	.uleb128 0x2
	.4byte	0x2e2
	.uleb128 0x2
	.4byte	0x77c
	.byte	0
	.uleb128 0xd
	.4byte	0x4db
	.uleb128 0x8
	.4byte	.LASF188
	.byte	0x5
	.2byte	0x121
	.byte	0xd
	.4byte	0x26d
	.4byte	0x79d
	.uleb128 0x2
	.4byte	0x2e2
	.uleb128 0x2
	.4byte	0x292
	.byte	0
	.uleb128 0x8
	.4byte	.LASF189
	.byte	0x5
	.2byte	0x114
	.byte	0xd
	.4byte	0x26d
	.4byte	0x7b9
	.uleb128 0x2
	.4byte	0x2e2
	.uleb128 0x2
	.4byte	0x7b9
	.byte	0
	.uleb128 0xd
	.4byte	0x492
	.uleb128 0x8
	.4byte	.LASF190
	.byte	0x5
	.2byte	0x119
	.byte	0xd
	.4byte	0x26d
	.4byte	0x7da
	.uleb128 0x2
	.4byte	0x2e2
	.uleb128 0x2
	.4byte	0x30d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF191
	.byte	0x5
	.2byte	0x125
	.byte	0xd
	.4byte	0x26d
	.4byte	0x7fb
	.uleb128 0x2
	.4byte	0x2e2
	.uleb128 0x2
	.4byte	0x408
	.uleb128 0x2
	.4byte	0x2b7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF192
	.byte	0x8
	.2byte	0x238
	.byte	0xd
	.4byte	0x26d
	.4byte	0x81c
	.uleb128 0x2
	.4byte	0x1f9
	.uleb128 0x2
	.4byte	0x563
	.uleb128 0x2
	.4byte	0x1f9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF193
	.byte	0x8
	.2byte	0x26f
	.byte	0xd
	.4byte	0x26d
	.4byte	0x838
	.uleb128 0x2
	.4byte	0x5ac
	.uleb128 0x2
	.4byte	0x5f5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF194
	.byte	0x8
	.2byte	0x276
	.byte	0xd
	.4byte	0x26d
	.4byte	0x84f
	.uleb128 0x2
	.4byte	0x84f
	.byte	0
	.uleb128 0xd
	.4byte	0x53e
	.uleb128 0x15
	.4byte	.LASF195
	.2byte	0x1c9
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF196
	.2byte	0x1c4
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x16e
	.byte	0x14
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e3
	.uleb128 0x5
	.string	"id"
	.2byte	0x16e
	.byte	0x38
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x16
	.string	"cb"
	.2byte	0x170
	.byte	0x16
	.4byte	0x601
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.string	"arg"
	.2byte	0x171
	.byte	0xb
	.4byte	0x245
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF197
	.2byte	0x172
	.4byte	0x211
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF198
	.2byte	0x173
	.4byte	0x211
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF199
	.2byte	0x174
	.4byte	0x211
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xf
	.4byte	.LASF200
	.2byte	0x162
	.4byte	0x230
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x928
	.uleb128 0x5
	.string	"id"
	.2byte	0x162
	.byte	0x2e
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x5
	.string	"cb"
	.2byte	0x162
	.byte	0x53
	.4byte	0x601
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"arg"
	.2byte	0x162
	.byte	0x6d
	.4byte	0x245
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xf
	.4byte	.LASF201
	.2byte	0x156
	.4byte	0x230
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96d
	.uleb128 0x5
	.string	"id"
	.2byte	0x156
	.byte	0x2e
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x5
	.string	"cb"
	.2byte	0x156
	.byte	0x53
	.4byte	0x601
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"arg"
	.2byte	0x156
	.byte	0x6d
	.4byte	0x245
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xf
	.4byte	.LASF202
	.2byte	0x149
	.4byte	0x230
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b2
	.uleb128 0x5
	.string	"id"
	.2byte	0x149
	.byte	0x2c
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x5
	.string	"cb"
	.2byte	0x149
	.byte	0x41
	.4byte	0x601
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"arg"
	.2byte	0x149
	.byte	0x4b
	.4byte	0x245
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xf
	.4byte	.LASF203
	.2byte	0x13c
	.4byte	0x230
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f7
	.uleb128 0x5
	.string	"id"
	.2byte	0x13c
	.byte	0x2c
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x5
	.string	"cb"
	.2byte	0x13c
	.byte	0x41
	.4byte	0x601
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"arg"
	.2byte	0x13c
	.byte	0x4b
	.4byte	0x245
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x17
	.4byte	.LASF204
	.2byte	0x120
	.4byte	0x230
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa1f
	.uleb128 0x5
	.string	"id"
	.2byte	0x120
	.byte	0x21
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x17
	.4byte	.LASF205
	.2byte	0x104
	.4byte	0x230
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa47
	.uleb128 0x5
	.string	"id"
	.2byte	0x104
	.byte	0x20
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x18
	.4byte	.LASF207
	.byte	0xff
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa77
	.uleb128 0x9
	.string	"id"
	.byte	0xff
	.byte	0x1e
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x7
	.4byte	.LASF206
	.byte	0xff
	.byte	0x2b
	.4byte	0x211
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.4byte	.LASF208
	.byte	0xe3
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac3
	.uleb128 0x9
	.string	"id"
	.byte	0xe3
	.byte	0x20
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x7
	.4byte	.LASF209
	.byte	0xe3
	.byte	0x2d
	.4byte	0x211
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF132
	.byte	0xe3
	.byte	0x48
	.4byte	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xb
	.4byte	.LASF210
	.byte	0xe5
	.byte	0x13
	.4byte	0x492
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x20
	.4byte	.LASF211
	.byte	0x1
	.byte	0xd9
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf5
	.uleb128 0x9
	.string	"id"
	.byte	0xd9
	.byte	0x33
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x7
	.4byte	.LASF132
	.byte	0xd9
	.byte	0x40
	.4byte	0xaf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	0x1f9
	.uleb128 0xc
	.4byte	.LASF212
	.byte	0xd0
	.4byte	0x230
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb20
	.uleb128 0x9
	.string	"id"
	.byte	0xd0
	.byte	0x1b
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xc
	.4byte	.LASF213
	.byte	0xca
	.4byte	0x230
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb46
	.uleb128 0x9
	.string	"id"
	.byte	0xca
	.byte	0x24
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xc
	.4byte	.LASF214
	.byte	0xc4
	.4byte	0x230
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb6c
	.uleb128 0x9
	.string	"id"
	.byte	0xc4
	.byte	0x23
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xc
	.4byte	.LASF215
	.byte	0xbc
	.4byte	0x230
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb92
	.uleb128 0x9
	.string	"id"
	.byte	0xbc
	.byte	0x24
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xc
	.4byte	.LASF216
	.byte	0xb3
	.4byte	0x230
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb8
	.uleb128 0x9
	.string	"id"
	.byte	0xb3
	.byte	0x23
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xc
	.4byte	.LASF217
	.byte	0xa4
	.4byte	0x230
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbfa
	.uleb128 0x9
	.string	"id"
	.byte	0xa4
	.byte	0x1f
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x19
	.string	"ret"
	.byte	0xa6
	.byte	0x9
	.4byte	0x230
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF199
	.byte	0xa7
	.byte	0xe
	.4byte	0x211
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF218
	.byte	0x97
	.4byte	0x230
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3c
	.uleb128 0x9
	.string	"id"
	.byte	0x97
	.byte	0x1f
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x7
	.4byte	.LASF219
	.byte	0x97
	.byte	0x2b
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xb
	.4byte	.LASF199
	.byte	0x99
	.byte	0xe
	.4byte	0x211
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF220
	.byte	0x5c
	.4byte	0x230
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce3
	.uleb128 0x9
	.string	"id"
	.byte	0x5c
	.byte	0x1a
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x7
	.4byte	.LASF221
	.byte	0x5c
	.byte	0x26
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x7
	.4byte	.LASF222
	.byte	0x5c
	.byte	0x36
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -51
	.uleb128 0x7
	.4byte	.LASF223
	.byte	0x5c
	.byte	0x46
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.4byte	.LASF224
	.byte	0x5c
	.byte	0x57
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x7
	.4byte	.LASF209
	.byte	0x5c
	.byte	0x69
	.4byte	0x211
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.4byte	.LASF225
	.byte	0x5e
	.byte	0x14
	.4byte	0x1f9
	.uleb128 0x5
	.byte	0x3
	.4byte	uart_clk_init.0
	.uleb128 0xb
	.4byte	.LASF226
	.byte	0x5f
	.byte	0x13
	.4byte	0x205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xb
	.4byte	.LASF227
	.byte	0x61
	.byte	0x13
	.4byte	0x492
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LASF228
	.byte	0x6d
	.byte	0x17
	.4byte	0x4db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x21
	.4byte	.LASF234
	.byte	0x1
	.byte	0x39
	.byte	0xd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.string	"id"
	.byte	0x39
	.byte	0x1f
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x7
	.4byte	.LASF221
	.byte	0x39
	.byte	0x2b
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x7
	.4byte	.LASF222
	.byte	0x39
	.byte	0x3b
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x7
	.4byte	.LASF223
	.byte	0x39
	.byte	0x5b
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF224
	.byte	0x39
	.byte	0x7c
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x19
	.string	"cfg"
	.byte	0x3b
	.byte	0x17
	.4byte	0x53e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF229
	.byte	0x3c
	.byte	0x1b
	.4byte	0x5f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xb
	.4byte	.LASF230
	.byte	0x3c
	.byte	0x26
	.4byte	0x5f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
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
	.uleb128 0x9
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.sleb128 10
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
	.uleb128 0xf
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
	.uleb128 0x7a
	.uleb128 0x19
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
	.uleb128 0x12
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.4byte	0xbc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
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
	.byte	0x7
	.4byte	.LFB14
	.uleb128 .LFE14-.LFB14
	.byte	0x7
	.4byte	.LFB15
	.uleb128 .LFE15-.LFB15
	.byte	0x7
	.4byte	.LFB16
	.uleb128 .LFE16-.LFB16
	.byte	0x7
	.4byte	.LFB17
	.uleb128 .LFE17-.LFB17
	.byte	0x7
	.4byte	.LFB18
	.uleb128 .LFE18-.LFB18
	.byte	0x7
	.4byte	.LFB19
	.uleb128 .LFE19-.LFB19
	.byte	0x7
	.4byte	.LFB20
	.uleb128 .LFE20-.LFB20
	.byte	0x7
	.4byte	.LFB21
	.uleb128 .LFE21-.LFB21
	.byte	0x7
	.4byte	.LFB22
	.uleb128 .LFE22-.LFB22
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF106:
	.string	"UART_DATABITS_5"
.LASF107:
	.string	"UART_DATABITS_6"
.LASF108:
	.string	"UART_DATABITS_7"
.LASF109:
	.string	"UART_DATABITS_8"
.LASF123:
	.string	"UART_INT_PCE"
.LASF194:
	.string	"GLB_GPIO_Init"
.LASF205:
	.string	"bl_uart_int_enable"
.LASF44:
	.string	"TIMER_WDT_IRQn"
.LASF189:
	.string	"UART_Init"
.LASF64:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF105:
	.string	"UART_Parity_Type"
.LASF166:
	.string	"GLB_UART_SIG_FUN_UART1_RTS"
.LASF84:
	.string	"SUCCESS"
.LASF8:
	.string	"L1C_BMX_ERR_IRQn"
.LASF117:
	.string	"UART_ByteBitInverse_Type"
.LASF31:
	.string	"GPADC_DMA_IRQn"
.LASF218:
	.string	"bl_uart_data_send"
.LASF233:
	.string	"uart_generic_notify_handler"
.LASF74:
	.string	"long int"
.LASF88:
	.string	"DISABLE"
.LASF185:
	.string	"UART_GetTxFifoCount"
.LASF203:
	.string	"bl_uart_int_rx_notify_register"
.LASF90:
	.string	"BL_Fun_Type"
.LASF173:
	.string	"rx_cb_arg"
.LASF157:
	.string	"GLB_UART_SIG_4"
.LASF158:
	.string	"GLB_UART_SIG_5"
.LASF160:
	.string	"GLB_UART_SIG_7"
.LASF14:
	.string	"DMA_BMX_ERR_IRQn"
.LASF13:
	.string	"SDIO_IRQn"
.LASF119:
	.string	"UART_INT_RX_END"
.LASF178:
	.string	"g_uart_notify_arg"
.LASF72:
	.string	"signed char"
.LASF135:
	.string	"rtsSoftwareControl"
.LASF181:
	.string	"bl_irq_enable"
.LASF206:
	.string	"baud"
.LASF80:
	.string	"long long unsigned int"
.LASF209:
	.string	"baudrate"
.LASF16:
	.string	"SEC_CDET_IRQn"
.LASF199:
	.string	"UARTx"
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
.LASF87:
	.string	"BL_Err_Type"
.LASF184:
	.string	"UART_GetRxFifoCount"
.LASF50:
	.string	"GPIO_INT0_IRQn"
.LASF162:
	.string	"GLB_UART_SIG_FUN_UART0_RTS"
.LASF89:
	.string	"ENABLE"
.LASF75:
	.string	"long long int"
.LASF186:
	.string	"UART_Enable"
.LASF102:
	.string	"UART_PARITY_NONE"
.LASF172:
	.string	"rx_cb"
.LASF124:
	.string	"UART_INT_TX_FER"
.LASF118:
	.string	"UART_INT_TX_END"
.LASF76:
	.string	"short unsigned int"
.LASF132:
	.string	"parity"
.LASF113:
	.string	"UART_STOPBITS_2"
.LASF86:
	.string	"TIMEOUT"
.LASF142:
	.string	"UART_FifoCfg_Type"
.LASF38:
	.string	"I2C_IRQn"
.LASF11:
	.string	"RF_TOP_INT0_IRQn"
.LASF183:
	.string	"UART_SetRxTimeoutValue"
.LASF55:
	.string	"RESERVED20"
.LASF211:
	.string	"bl_uart_getdefconfig"
.LASF92:
	.string	"MASK"
.LASF15:
	.string	"SEC_GMAC_IRQn"
.LASF95:
	.string	"UART1_ID"
.LASF81:
	.string	"unsigned int"
.LASF32:
	.string	"EFUSE_IRQn"
.LASF60:
	.string	"WIFI_IRQn"
.LASF169:
	.string	"GLB_UART_SIG_FUN_UART1_RXD"
.LASF56:
	.string	"PDS_WAKEUP_IRQn"
.LASF112:
	.string	"UART_STOPBITS_1_5"
.LASF79:
	.string	"long unsigned int"
.LASF161:
	.string	"GLB_UART_SIG_Type"
.LASF191:
	.string	"UART_IntMask"
.LASF110:
	.string	"UART_DataBits_Type"
.LASF125:
	.string	"UART_INT_RX_FER"
.LASF219:
	.string	"data"
.LASF193:
	.string	"GLB_UART_Fun_Sel"
.LASF182:
	.string	"bl_irq_register"
.LASF59:
	.string	"BOR_IRQn"
.LASF215:
	.string	"bl_uart_int_rx_disable"
.LASF175:
	.string	"tx_cb_arg"
.LASF12:
	.string	"RF_TOP_INT1_IRQn"
.LASF127:
	.string	"UART_INT_Type"
.LASF216:
	.string	"bl_uart_int_rx_enable"
.LASF130:
	.string	"dataBits"
.LASF180:
	.string	"bl_irq_unregister"
.LASF99:
	.string	"UART_RX"
.LASF61:
	.string	"BZ_PHY_IRQn"
.LASF176:
	.string	"bl_uart_notify_t"
.LASF141:
	.string	"rxFifoDmaEnable"
.LASF137:
	.string	"UART_CFG_Type"
.LASF96:
	.string	"UART_ID_MAX"
.LASF152:
	.string	"HBN_UART_CLK_Type"
.LASF111:
	.string	"UART_STOPBITS_1"
.LASF35:
	.string	"UART0_IRQn"
.LASF129:
	.string	"baudRate"
.LASF91:
	.string	"UNMASK"
.LASF200:
	.string	"bl_uart_int_tx_notify_unregister"
.LASF171:
	.string	"cb_uart_notify_t"
.LASF20:
	.string	"SEC_SHA_IRQn"
.LASF19:
	.string	"SEC_AES_IRQn"
.LASF147:
	.string	"drive"
.LASF174:
	.string	"tx_cb"
.LASF120:
	.string	"UART_INT_TX_FIFO_REQ"
.LASF85:
	.string	"ERROR"
.LASF223:
	.string	"cts_pin"
.LASF179:
	.string	"bl_irq_disable"
.LASF143:
	.string	"gpioPin"
.LASF103:
	.string	"UART_PARITY_ODD"
.LASF2:
	.string	"MSOFT_IRQn"
.LASF128:
	.string	"uartClk"
.LASF224:
	.string	"rts_pin"
.LASF226:
	.string	"uart_div"
.LASF21:
	.string	"DMA_ALL_IRQn"
.LASF167:
	.string	"GLB_UART_SIG_FUN_UART1_CTS"
.LASF68:
	.string	"MAC_PORT_TRG_IRQn"
.LASF134:
	.string	"rxDeglitch"
.LASF195:
	.string	"UART1_IRQHandler"
.LASF114:
	.string	"UART_StopBits_Type"
.LASF115:
	.string	"UART_LSB_FIRST"
.LASF230:
	.string	"rx_sigfun"
.LASF196:
	.string	"UART0_IRQHandler"
.LASF146:
	.string	"pullType"
.LASF198:
	.string	"maskVal"
.LASF121:
	.string	"UART_INT_RX_FIFO_REQ"
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
.LASF34:
	.string	"RESERVED6"
.LASF10:
	.string	"SEC_BMX_ERR_IRQn"
.LASF222:
	.string	"rx_pin"
.LASF41:
	.string	"RESERVED9"
.LASF62:
	.string	"BLE_IRQn"
.LASF153:
	.string	"GLB_UART_SIG_0"
.LASF154:
	.string	"GLB_UART_SIG_1"
.LASF155:
	.string	"GLB_UART_SIG_2"
.LASF156:
	.string	"GLB_UART_SIG_3"
.LASF26:
	.string	"IRRX_IRQn"
.LASF17:
	.string	"SEC_PKA_IRQn"
.LASF159:
	.string	"GLB_UART_SIG_6"
.LASF71:
	.string	"unsigned char"
.LASF63:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF145:
	.string	"gpioMode"
.LASF29:
	.string	"SF_CTRL_IRQn"
.LASF94:
	.string	"UART0_ID"
.LASF210:
	.string	"UartCfg"
.LASF25:
	.string	"IRTX_IRQn"
.LASF220:
	.string	"bl_uart_init"
.LASF207:
	.string	"bl_uart_setbaud"
.LASF204:
	.string	"bl_uart_int_disable"
.LASF65:
	.string	"MAC_RX_TRG_IRQn"
.LASF98:
	.string	"UART_TX"
.LASF133:
	.string	"ctsFlowControl"
.LASF4:
	.string	"MEXT_IRQn"
.LASF93:
	.string	"BL_Mask_Type"
.LASF214:
	.string	"bl_uart_int_tx_enable"
.LASF165:
	.string	"GLB_UART_SIG_FUN_UART0_RXD"
.LASF202:
	.string	"bl_uart_int_tx_notify_register"
.LASF208:
	.string	"bl_uart_setconfig"
.LASF197:
	.string	"tmpVal"
.LASF192:
	.string	"GLB_Set_UART_CLK"
.LASF30:
	.string	"RESERVED5"
.LASF140:
	.string	"txFifoDmaEnable"
.LASF78:
	.string	"uint32_t"
.LASF116:
	.string	"UART_MSB_FIRST"
.LASF39:
	.string	"RESERVED8"
.LASF227:
	.string	"uartCfg"
.LASF36:
	.string	"UART1_IRQn"
.LASF7:
	.string	"BMX_TO_IRQn"
.LASF82:
	.string	"long double"
.LASF83:
	.string	"char"
.LASF232:
	.string	"bl_uart_notify"
.LASF3:
	.string	"MTIME_IRQn"
.LASF217:
	.string	"bl_uart_data_recv"
.LASF131:
	.string	"stopBits"
.LASF67:
	.string	"MAC_GEN_IRQn"
.LASF73:
	.string	"short int"
.LASF144:
	.string	"gpioFun"
.LASF104:
	.string	"UART_PARITY_EVEN"
.LASF201:
	.string	"bl_uart_int_rx_notify_unregister"
.LASF6:
	.string	"BMX_ERR_IRQn"
.LASF231:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF42:
	.string	"TIMER_CH0_IRQn"
.LASF101:
	.string	"UART_Direction_Type"
.LASF138:
	.string	"txFifoDmaThreshold"
.LASF170:
	.string	"GLB_UART_SIG_FUN_Type"
.LASF40:
	.string	"PWM_IRQn"
.LASF57:
	.string	"HBN_OUT0_IRQn"
.LASF37:
	.string	"RESERVED7"
.LASF45:
	.string	"RESERVED10"
.LASF46:
	.string	"RESERVED11"
.LASF69:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF187:
	.string	"UART_FifoConfig"
.LASF97:
	.string	"UART_ID_Type"
.LASF213:
	.string	"bl_uart_int_tx_disable"
.LASF221:
	.string	"tx_pin"
.LASF70:
	.string	"IRQn_LAST"
.LASF177:
	.string	"uartAddr"
.LASF136:
	.string	"byteBitInverse"
.LASF229:
	.string	"tx_sigfun"
.LASF148:
	.string	"smtCtrl"
.LASF77:
	.string	"uint8_t"
.LASF234:
	.string	"gpio_init"
.LASF225:
	.string	"uart_clk_init"
.LASF5:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF66:
	.string	"MAC_TX_TRG_IRQn"
.LASF139:
	.string	"rxFifoDmaThreshold"
.LASF122:
	.string	"UART_INT_RTO"
.LASF18:
	.string	"SEC_TRNG_IRQn"
.LASF188:
	.string	"UART_TxFreeRun"
.LASF163:
	.string	"GLB_UART_SIG_FUN_UART0_CTS"
.LASF151:
	.string	"HBN_UART_CLK_160M"
.LASF126:
	.string	"UART_INT_ALL"
.LASF190:
	.string	"UART_Disable"
.LASF33:
	.string	"SPI_IRQn"
.LASF9:
	.string	"L1C_BMX_TO_IRQn"
.LASF43:
	.string	"TIMER_CH1_IRQn"
.LASF228:
	.string	"fifoCfg"
.LASF164:
	.string	"GLB_UART_SIG_FUN_UART0_TXD"
.LASF150:
	.string	"HBN_UART_CLK_FCLK"
.LASF58:
	.string	"HBN_OUT1_IRQn"
.LASF100:
	.string	"UART_TXRX"
.LASF212:
	.string	"bl_uart_flush"
.LASF168:
	.string	"GLB_UART_SIG_FUN_UART1_TXD"
.LASF149:
	.string	"GLB_GPIO_Cfg_Type"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_uart.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
