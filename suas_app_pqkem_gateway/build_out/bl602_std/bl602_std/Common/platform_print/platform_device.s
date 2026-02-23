	.file	"platform_device.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/platform_device.c"
	.section	.sbss.uart_dbg_disable,"aw",@nobits
	.type	uart_dbg_disable, @object
	.size	uart_dbg_disable, 1
uart_dbg_disable:
	.zero	1
	.section	.rodata.hexTable,"a"
	.align	2
	.type	hexTable, @object
	.size	hexTable, 16
hexTable:
	.ascii	"0123456789ABCDEF"
	.section	.sbss.systick_int_cnt,"aw",@nobits
	.align	2
	.type	systick_int_cnt, @object
	.size	systick_int_cnt, 4
systick_int_cnt:
	.zero	4
	.section	.bss.uartRB,"aw",@nobits
	.align	2
	.type	uartRB, @object
	.size	uartRB, 24
uartRB:
	.zero	24
	.section	.bss.uartBuf,"aw",@nobits
	.align	2
	.type	uartBuf, @object
	.size	uartBuf, 64
uartBuf:
	.zero	64
	.section	.sbss.init_flag,"aw",@nobits
	.align	2
	.type	init_flag, @object
	.size	init_flag, 4
init_flag:
	.zero	4
	.section	.rodata
	.align	2
.LC2:
	.string	"UART Recv Full\r\n"
	.section	.text.UART_RFR_Cbf,"ax",@progbits
	.align	1
	.type	UART_RFR_Cbf, @function
UART_RFR_Cbf:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/platform_device.c"
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
	.loc 1 48 18
	li	a0,0
	call	UART_GetRxFifoCount
	mv	a5,a0
	.loc 1 48 14 discriminator 1
	sw	a5,-20(s0)
	.loc 1 49 5
	lw	a5,-20(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	li	a3,0
	lui	a5,%hi(UART_ReceiveData)
	addi	a2,a5,%lo(UART_ReceiveData)
	mv	a1,a4
	lui	a5,%hi(uartRB)
	addi	a0,a5,%lo(uartRB)
	call	Ring_Buffer_Write_Callback
	.loc 1 53 9
	li	a0,0
	call	UART_GetRxFifoCount
	mv	a5,a0
	.loc 1 53 8 discriminator 1
	sw	a5,-20(s0)
	.loc 1 54 7
	lw	a5,-20(s0)
	beq	a5,zero,.L4
	.loc 1 54 16 discriminator 1
	lui	a5,%hi(uartRB)
	addi	a0,a5,%lo(uartRB)
	call	Ring_Buffer_Get_Empty_Length
	mv	a5,a0
	.loc 1 54 14 discriminator 2
	bne	a5,zero,.L4
	.loc 1 55 9
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	bflb_platform_printf
.L3:
	.loc 1 57 13
	addi	a5,s0,-36
	li	a2,16
	mv	a1,a5
	li	a0,0
	call	UART_ReceiveData
	.loc 1 58 16 discriminator 2
	li	a0,0
	call	UART_GetRxFifoCount
	mv	a5,a0
	bne	a5,zero,.L3
.L4:
	.loc 1 60 1
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
	.size	UART_RFR_Cbf, .-UART_RFR_Cbf
	.section	.text.UART_RTO_Cbf,"ax",@progbits
	.align	1
	.type	UART_RTO_Cbf, @function
UART_RTO_Cbf:
.LFB9:
	.loc 1 73 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 75 18
	li	a0,0
	call	UART_GetRxFifoCount
	mv	a5,a0
	.loc 1 75 14 discriminator 1
	sw	a5,-20(s0)
	.loc 1 76 5
	lw	a5,-20(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	li	a3,0
	lui	a5,%hi(UART_ReceiveData)
	addi	a2,a5,%lo(UART_ReceiveData)
	mv	a1,a4
	lui	a5,%hi(uartRB)
	addi	a0,a5,%lo(uartRB)
	call	Ring_Buffer_Write_Callback
	.loc 1 80 9
	li	a0,0
	call	UART_GetRxFifoCount
	mv	a5,a0
	.loc 1 80 8 discriminator 1
	sw	a5,-20(s0)
	.loc 1 81 7
	lw	a5,-20(s0)
	beq	a5,zero,.L8
	.loc 1 81 16 discriminator 1
	lui	a5,%hi(uartRB)
	addi	a0,a5,%lo(uartRB)
	call	Ring_Buffer_Get_Empty_Length
	mv	a5,a0
	.loc 1 81 14 discriminator 2
	bne	a5,zero,.L8
	.loc 1 82 9
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	bflb_platform_printf
.L7:
	.loc 1 84 13
	addi	a5,s0,-36
	li	a2,16
	mv	a1,a5
	li	a0,0
	call	UART_ReceiveData
	.loc 1 85 16 discriminator 2
	li	a0,0
	call	UART_GetRxFifoCount
	mv	a5,a0
	bne	a5,zero,.L7
.L8:
	.loc 1 87 1
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
.LFE9:
	.size	UART_RTO_Cbf, .-UART_RTO_Cbf
	.section	.rodata
	.align	2
.LC0:
	.word	32000000
	.word	2000000
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
	.section	.text.bflb_platform_uart_dbg_init,"ax",@progbits
	.align	1
	.globl	bflb_platform_uart_dbg_init
	.type	bflb_platform_uart_dbg_init, @function
bflb_platform_uart_dbg_init:
.LFB10:
	.loc 1 91 1
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
	.loc 1 92 19
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a4,8(a5)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	sw	a4,-24(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 103 23
	lui	a5,%hi(.LC1)
	lw	a5,%lo(.LC1)(a5)
	sw	a5,-36(s0)
	.loc 1 111 5
	call	bflb_platform_init_uart_debug_gpio
	.loc 1 113 5
	li	a4,0
	li	a3,0
	li	a2,64
	lui	a5,%hi(uartBuf)
	addi	a1,a5,%lo(uartBuf)
	lui	a5,%hi(uartRB)
	addi	a0,a5,%lo(uartRB)
	call	Ring_Buffer_Init
	.loc 1 117 5
	li	a2,0
	li	a1,1
	li	a0,1
	call	GLB_Set_UART_CLK
	.loc 1 118 25
	li	a5,160002048
	addi	a5,a5,-2048
	sw	a5,-32(s0)
	.loc 1 120 7
	lw	a5,-52(s0)
	beq	a5,zero,.L10
	.loc 1 121 30
	lw	a5,-52(s0)
	sw	a5,-28(s0)
.L10:
	.loc 1 124 5
	li	a0,16
	call	GLB_AHB_Slave1_Reset
	.loc 1 127 5
	li	a2,1
	li	a1,8
	li	a0,0
	call	UART_IntMask
	.loc 1 130 5
	li	a1,2
	li	a0,0
	call	UART_Disable
	.loc 1 133 5
	addi	a5,s0,-32
	mv	a1,a5
	li	a0,0
	call	UART_Init
	.loc 1 136 5
	addi	a5,s0,-36
	mv	a1,a5
	li	a0,0
	call	UART_FifoConfig
	.loc 1 140 5
	li	a1,1
	li	a0,0
	call	UART_TxFreeRun
	.loc 1 143 5
	li	a1,80
	li	a0,0
	call	UART_SetRxTimeoutValue
	.loc 1 147 5
	li	a2,0
	li	a1,3
	li	a0,0
	call	UART_IntMask
	.loc 1 148 5
	li	a2,0
	li	a1,4
	li	a0,0
	call	UART_IntMask
	.loc 1 151 5
	lui	a5,%hi(UART_RFR_Cbf)
	addi	a2,a5,%lo(UART_RFR_Cbf)
	li	a1,3
	li	a0,0
	call	UART_Int_Callback_Install
	.loc 1 152 5
	lui	a5,%hi(UART_RTO_Cbf)
	addi	a2,a5,%lo(UART_RTO_Cbf)
	li	a1,4
	li	a0,0
	call	UART_Int_Callback_Install
	.loc 1 155 5
	li	a0,45
	call	clic_enable_interrupt
	.loc 1 158 5
	li	a1,2
	li	a0,0
	call	UART_Enable
	.loc 1 159 1
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bflb_platform_uart_dbg_init, .-bflb_platform_uart_dbg_init
	.section	.text.bflb_platform_usart_dbg_send,"ax",@progbits
	.align	1
	.globl	bflb_platform_usart_dbg_send
	.type	bflb_platform_usart_dbg_send, @function
bflb_platform_usart_dbg_send:
.LFB11:
	.loc 1 176 1
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
	.loc 1 183 5
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	li	a0,0
	call	UART_SendData
	.loc 1 184 1
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
.LFE11:
	.size	bflb_platform_usart_dbg_send, .-bflb_platform_usart_dbg_send
	.section	.text.bflb_platform_uart_dbg_deinit,"ax",@progbits
	.align	1
	.globl	bflb_platform_uart_dbg_deinit
	.type	bflb_platform_uart_dbg_deinit, @function
bflb_platform_uart_dbg_deinit:
.LFB12:
	.loc 1 187 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 188 5
	li	a1,2
	li	a0,0
	call	UART_Disable
	.loc 1 189 5
	li	a0,16
	call	GLB_AHB_Slave1_Reset
	.loc 1 190 5
	call	bflb_platform_deinit_uart_debug_gpio
	.loc 1 191 1
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
.LFE12:
	.size	bflb_platform_uart_dbg_deinit, .-bflb_platform_uart_dbg_deinit
	.section	.text.bflb_platform_printf,"ax",@progbits
	.align	1
	.globl	bflb_platform_printf
	.type	bflb_platform_printf, @function
bflb_platform_printf:
.LFB13:
	.loc 1 194 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -36
	.cfi_offset 8, -40
	addi	s0,sp,48
	.cfi_def_cfa 8, 32
	sw	a0,-36(s0)
	sw	a1,4(s0)
	sw	a2,8(s0)
	sw	a3,12(s0)
	sw	a4,16(s0)
	sw	a5,20(s0)
	sw	a6,24(s0)
	sw	a7,28(s0)
	.loc 1 197 8
	lui	a5,%hi(uart_dbg_disable)
	lbu	a5,%lo(uart_dbg_disable)(a5)
	.loc 1 197 7
	bne	a5,zero,.L15
	.loc 1 198 8
	addi	a5,s0,32
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	addi	a5,a5,-28
	sw	a5,-20(s0)
	.loc 1 199 9
	lw	a5,-20(s0)
	mv	a3,a5
	lw	a2,-36(s0)
	li	a1,127
	lui	a5,%hi(print_buf.0)
	addi	a0,a5,%lo(print_buf.0)
	call	vsnprintf
	.loc 1 201 58
	lui	a5,%hi(print_buf.0)
	addi	a0,a5,%lo(print_buf.0)
	call	strlen
	mv	a5,a0
	.loc 1 201 9 discriminator 1
	mv	a1,a5
	lui	a5,%hi(print_buf.0)
	addi	a0,a5,%lo(print_buf.0)
	call	bflb_platform_usart_dbg_send
.L15:
	.loc 1 203 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	bflb_platform_printf, .-bflb_platform_printf
	.section	.rodata
	.align	2
.LC3:
	.string	"\r\n"
	.align	2
.LC4:
	.string	"%02x "
	.section	.text.bflb_platform_dump,"ax",@progbits
	.align	1
	.globl	bflb_platform_dump
	.type	bflb_platform_dump, @function
bflb_platform_dump:
.LFB14:
	.loc 1 206 1
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
	.loc 1 207 14
	sw	zero,-20(s0)
	.loc 1 208 14
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 210 10
	sw	zero,-20(s0)
	.loc 1 210 5
	j	.L17
.L19:
	.loc 1 211 13
	lw	a5,-20(s0)
	andi	a5,a5,15
	.loc 1 211 11
	bne	a5,zero,.L18
	.loc 1 212 13
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	bflb_platform_printf
.L18:
	.loc 1 214 39
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 214 9
	mv	a1,a5
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	bflb_platform_printf
	.loc 1 210 20 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L17:
	.loc 1 210 14 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bltu	a4,a5,.L19
	.loc 1 216 5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	bflb_platform_printf
	.loc 1 217 1
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
.LFE14:
	.size	bflb_platform_dump, .-bflb_platform_dump
	.section	.text.bflb_platform_prints,"ax",@progbits
	.align	1
	.globl	bflb_platform_prints
	.type	bflb_platform_prints, @function
bflb_platform_prints:
.LFB15:
	.loc 1 220 1
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
	.loc 1 221 49
	lw	a0,-20(s0)
	call	strlen
	mv	a5,a0
	.loc 1 221 5 discriminator 1
	mv	a1,a5
	lw	a0,-20(s0)
	call	bflb_platform_usart_dbg_send
	.loc 1 222 1
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
.LFE15:
	.size	bflb_platform_prints, .-bflb_platform_prints
	.section	.text.bflb_platform_printx,"ax",@progbits
	.align	1
	.globl	bflb_platform_printx
	.type	bflb_platform_printx, @function
bflb_platform_printx:
.LFB16:
	.loc 1 225 1
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
	.loc 1 228 10
	li	a5,7
	sw	a5,-20(s0)
	.loc 1 228 5
	j	.L22
.L23:
	.loc 1 229 35
	lw	a5,-36(s0)
	andi	a5,a5,15
	.loc 1 229 30
	lui	a4,%hi(hexTable)
	addi	a4,a4,%lo(hexTable)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 229 21
	lw	a5,-20(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-12(a5)
	.loc 1 230 12
	lw	a5,-36(s0)
	srli	a5,a5,4
	sw	a5,-36(s0)
	.loc 1 228 19 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L22:
	.loc 1 228 14 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L23
	.loc 1 232 5
	addi	a5,s0,-28
	li	a1,8
	mv	a0,a5
	call	bflb_platform_usart_dbg_send
	.loc 1 233 1
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
.LFE16:
	.size	bflb_platform_printx, .-bflb_platform_printx
	.section	.text.bflb_platform_printc,"ax",@progbits
	.align	1
	.globl	bflb_platform_printc
	.type	bflb_platform_printc, @function
bflb_platform_printc:
.LFB17:
	.loc 1 236 1
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
	.loc 1 237 5
	addi	a5,s0,-17
	li	a2,1
	mv	a1,a5
	li	a0,0
	call	UART_SendData
	.loc 1 238 1
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
.LFE17:
	.size	bflb_platform_printc, .-bflb_platform_printc
	.section	.text.bflb_platform_clear_time,"ax",@progbits
	.align	1
	.globl	bflb_platform_clear_time
	.type	bflb_platform_clear_time, @function
bflb_platform_clear_time:
.LFB18:
	.loc 1 241 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 242 5
	li	a5,33603584
	addi	a5,a5,-8
	.loc 1 242 51
	li	a3,0
	li	a4,0
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 243 1
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
.LFE18:
	.size	bflb_platform_clear_time, .-bflb_platform_clear_time
	.section	.text.bflb_platform_get_time_ms,"ax",@progbits
	.align	1
	.globl	bflb_platform_get_time_ms
	.type	bflb_platform_get_time_ms, @function
bflb_platform_get_time_ms:
.LFB19:
	.loc 1 246 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	sw	s9,52(sp)
	sw	s10,48(sp)
	sw	s11,44(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	.loc 1 249 14
	sw	zero,-68(s0)
.L27:
	.loc 1 252 19
	li	a5,33603584
	addi	a5,a5,-8
	.loc 1 252 18
	lw	a5,0(a5)
	sw	a5,-72(s0)
	.loc 1 253 20
	li	a5,33603584
	addi	a5,a5,-4
	.loc 1 253 19
	lw	a5,0(a5)
	sw	a5,-76(s0)
	.loc 1 254 20
	li	a5,33603584
	addi	a5,a5,-8
	.loc 1 254 19
	lw	a5,0(a5)
	sw	a5,-80(s0)
	.loc 1 255 21
	li	a5,33603584
	addi	a5,a5,-4
	.loc 1 255 20
	lw	a5,0(a5)
	sw	a5,-84(s0)
	.loc 1 256 12
	lw	a5,-68(s0)
	addi	a5,a5,1
	sw	a5,-68(s0)
	.loc 1 257 11
	lw	a4,-68(s0)
	li	a5,4
	bgtu	a4,a5,.L33
	.loc 1 260 32
	lw	a4,-72(s0)
	lw	a5,-80(s0)
	bgtu	a4,a5,.L27
	.loc 1 260 32 is_stmt 0 discriminator 1
	lw	a4,-76(s0)
	lw	a5,-84(s0)
	bgtu	a4,a5,.L27
	j	.L29
.L33:
	.loc 1 258 13 is_stmt 1
	nop
.L29:
	.loc 1 262 11
	li	a5,1073803264
	addi	a5,a5,264
	lw	s1,0(a5)
	.loc 1 262 49
	call	GLB_Get_BCLK_Div
	mv	a5,a0
	.loc 1 262 67 discriminator 1
	addi	a5,a5,1
	.loc 1 262 8 discriminator 1
	divu	a5,s1,a5
	sw	a5,-88(s0)
	.loc 1 263 13
	lw	a5,-88(s0)
	srli	a4,a5,3
	.loc 1 263 8
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a5,a5,6
	sw	a5,-88(s0)
	.loc 1 265 7
	lw	a5,-84(s0)
	bne	a5,zero,.L31
	.loc 1 266 36
	lw	a4,-80(s0)
	lw	a5,-88(s0)
	divu	a5,a4,a5
	.loc 1 266 15
	mv	s8,a5
	li	s9,0
	j	.L32
.L31:
	.loc 1 268 18
	lw	a5,-84(s0)
	mv	s6,a5
	li	s7,0
	.loc 1 268 39
	slli	s3,s6,0
	li	s2,0
	.loc 1 268 44
	lw	a5,-80(s0)
	mv	s4,a5
	li	s5,0
	add	a4,s2,s4
	mv	a3,a4
	sltu	a3,a3,s2
	add	a5,s3,s5
	add	a3,a3,a5
	mv	a5,a3
	.loc 1 268 56
	lw	a3,-88(s0)
	mv	s10,a3
	li	s11,0
	mv	a2,s10
	mv	a3,s11
	mv	a0,a4
	mv	a1,a5
	call	__udivdi3
	mv	a4,a0
	mv	a5,a1
	mv	s8,a4
	mv	s9,a5
.L32:
	.loc 1 270 1
	mv	a4,s8
	mv	a5,s9
	mv	a0,a4
	mv	a1,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	lw	s1,84(sp)
	.cfi_restore 9
	lw	s2,80(sp)
	.cfi_restore 18
	lw	s3,76(sp)
	.cfi_restore 19
	lw	s4,72(sp)
	.cfi_restore 20
	lw	s5,68(sp)
	.cfi_restore 21
	lw	s6,64(sp)
	.cfi_restore 22
	lw	s7,60(sp)
	.cfi_restore 23
	lw	s8,56(sp)
	.cfi_restore 24
	lw	s9,52(sp)
	.cfi_restore 25
	lw	s10,48(sp)
	.cfi_restore 26
	lw	s11,44(sp)
	.cfi_restore 27
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	bflb_platform_get_time_ms, .-bflb_platform_get_time_ms
	.section	.text.bflb_platform_start_time,"ax",@progbits
	.align	1
	.globl	bflb_platform_start_time
	.type	bflb_platform_start_time, @function
bflb_platform_start_time:
.LFB20:
	.loc 1 273 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 274 5
	li	a5,33603584
	addi	a5,a5,-8
	.loc 1 274 51
	li	a3,0
	li	a4,0
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 275 1
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
.LFE20:
	.size	bflb_platform_start_time, .-bflb_platform_start_time
	.section	.text.bflb_platform_stop_time,"ax",@progbits
	.align	1
	.globl	bflb_platform_stop_time
	.type	bflb_platform_stop_time, @function
bflb_platform_stop_time:
.LFB21:
	.loc 1 278 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 280 1
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
.LFE21:
	.size	bflb_platform_stop_time, .-bflb_platform_stop_time
	.section	.text.bflb_platform_set_alarm_time,"ax",@progbits
	.align	1
	.globl	bflb_platform_set_alarm_time
	.type	bflb_platform_set_alarm_time, @function
bflb_platform_set_alarm_time:
.LFB22:
	.loc 1 283 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	.loc 1 286 11
	li	a5,1073803264
	addi	a5,a5,264
	lw	s1,0(a5)
	.loc 1 286 49
	call	GLB_Get_BCLK_Div
	mv	a5,a0
	.loc 1 286 67 discriminator 1
	addi	a5,a5,1
	.loc 1 286 8 discriminator 1
	divu	a5,s1,a5
	sw	a5,-36(s0)
	.loc 1 287 13
	lw	a5,-36(s0)
	srli	a4,a5,3
	.loc 1 287 8
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a5,a5,6
	sw	a5,-36(s0)
	.loc 1 289 16
	lw	a5,-36(s0)
	mv	s4,a5
	li	s5,0
	.loc 1 289 10
	lw	a5,-52(s0)
	mul	a4,a5,s4
	lw	a5,-56(s0)
	mul	a5,a5,s5
	add	a4,a4,a5
	lw	a5,-56(s0)
	mul	a3,a5,s4
	mulhu	s3,a5,s4
	mv	s2,a3
	add	a5,a4,s3
	mv	s3,a5
	sw	s2,-56(s0)
	sw	s3,-52(s0)
	sw	s2,-56(s0)
	sw	s3,-52(s0)
	.loc 1 291 54
	li	a5,33603584
	addi	a5,a5,-8
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 291 5
	li	a6,33570816
	.loc 1 291 100
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	add	a2,a4,a0
	mv	a7,a2
	sltu	a7,a7,a4
	add	a3,a5,a1
	add	a5,a7,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	.loc 1 291 51
	sw	a4,0(a6)
	sw	a5,4(a6)
	.loc 1 292 5
	li	a0,7
	call	clic_enable_interrupt
	.loc 1 293 1
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	bflb_platform_set_alarm_time, .-bflb_platform_set_alarm_time
	.section	.text.bflb_platform_init_time,"ax",@progbits
	.align	1
	.globl	bflb_platform_init_time
	.type	bflb_platform_init_time, @function
bflb_platform_init_time:
.LFB23:
	.loc 1 296 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 297 5
	li	a0,7
	call	clic_disable_interrupt
	.loc 1 300 5
	li	a2,7
	li	a1,0
	li	a0,1
	call	GLB_Set_MTimer_CLK
	.loc 1 302 5
	call	bflb_platform_clear_time
	.loc 1 303 1
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
.LFE23:
	.size	bflb_platform_init_time, .-bflb_platform_init_time
	.section	.text.bflb_platform_deinit_time,"ax",@progbits
	.align	1
	.globl	bflb_platform_deinit_time
	.type	bflb_platform_deinit_time, @function
bflb_platform_deinit_time:
.LFB24:
	.loc 1 306 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 307 5
	li	a0,7
	call	clic_disable_interrupt
	.loc 1 308 5
	call	bflb_platform_stop_time
	.loc 1 309 1
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
.LFE24:
	.size	bflb_platform_deinit_time, .-bflb_platform_deinit_time
	.section	.text.bflb_platform_delay_ms,"ax",@progbits
	.align	1
	.globl	bflb_platform_delay_ms
	.type	bflb_platform_delay_ms, @function
bflb_platform_delay_ms:
.LFB25:
	.loc 1 312 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s2,52(sp)
	sw	s3,48(sp)
	sw	s4,44(sp)
	sw	s5,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	.loc 1 313 14
	li	a5,0
	li	a6,0
	sw	a5,-40(s0)
	sw	a6,-36(s0)
	.loc 1 314 21
	li	a5,1073803264
	addi	a5,a5,264
	.loc 1 314 14
	lw	a5,0(a5)
	sw	a5,-44(s0)
	.loc 1 316 5
	call	bflb_platform_stop_time
	.loc 1 317 5
	call	bflb_platform_start_time
	.loc 1 318 10
	j	.L40
.L43:
	.loc 1 319 12
	lw	a2,-40(s0)
	lw	a3,-36(s0)
	li	a0,1
	li	a1,0
	add	a4,a2,a0
	mv	a6,a4
	sltu	a6,a6,a2
	add	a5,a3,a1
	add	a3,a6,a5
	mv	a5,a3
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	.loc 1 321 28
	lw	a5,-44(s0)
	srli	a4,a5,15
	.loc 1 321 21
	lw	a5,-52(s0)
	mul	a5,a4,a5
	.loc 1 321 38
	slli	a5,a5,1
	mv	s4,a5
	li	s5,0
	.loc 1 321 11
	lw	a5,-36(s0)
	mv	a4,s5
	bgtu	a5,a4,.L45
	lw	a5,-36(s0)
	mv	a4,s5
	bne	a5,a4,.L40
	lw	a5,-40(s0)
	mv	a4,s4
	bgtu	a5,a4,.L45
.L40:
	.loc 1 318 11
	call	bflb_platform_get_time_ms
	mv	a4,a0
	mv	a5,a1
	.loc 1 318 38 discriminator 1
	lw	a3,-52(s0)
	mv	s2,a3
	li	s3,0
	mv	a2,s3
	mv	a3,a5
	bgtu	a2,a3,.L43
	mv	a2,s3
	mv	a3,a5
	bne	a2,a3,.L46
	mv	a3,s2
	mv	a5,a4
	bgtu	a3,a5,.L43
	.loc 1 325 1
	j	.L46
.L45:
	.loc 1 322 13
	nop
.L46:
	.loc 1 325 1
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s2,52(sp)
	.cfi_restore 18
	lw	s3,48(sp)
	.cfi_restore 19
	lw	s4,44(sp)
	.cfi_restore 20
	lw	s5,40(sp)
	.cfi_restore 21
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	bflb_platform_delay_ms, .-bflb_platform_delay_ms
	.section	.rodata
	.align	2
.LC5:
	.string	"system clock=%dM\r\n"
	.section	.text.bflb_platform_init,"ax",@progbits
	.align	1
	.globl	bflb_platform_init
	.type	bflb_platform_init, @function
bflb_platform_init:
.LFB26:
	.loc 1 328 1
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
	.loc 1 329 11
	lui	a5,%hi(init_flag)
	lw	a5,%lo(init_flag)(a5)
	.loc 1 329 7
	bne	a5,zero,.L50
	.loc 1 332 15
	lui	a5,%hi(init_flag)
	li	a4,1
	sw	a4,%lo(init_flag)(a5)
	.loc 1 334 5
	call	bflb_platform_init_time
	.loc 1 336 5
	call	Sec_Eng_Trng_Enable
	.loc 1 338 8
	lui	a5,%hi(uart_dbg_disable)
	lbu	a5,%lo(uart_dbg_disable)(a5)
	.loc 1 338 7
	bne	a5,zero,.L47
	.loc 1 339 9
	lw	a0,-20(s0)
	call	bflb_platform_uart_dbg_init
	.loc 1 340 54
	li	a5,1073803264
	addi	a5,a5,264
	lw	a4,0(a5)
	.loc 1 340 9
	li	a5,1125900288
	addi	a5,a5,-381
	mulhu	a5,a4,a5
	srli	a5,a5,18
	mv	a1,a5
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	bflb_platform_printf
	j	.L47
.L50:
	.loc 1 330 9
	nop
.L47:
	.loc 1 342 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	bflb_platform_init, .-bflb_platform_init
	.section	.text.bflb_platform_deinit,"ax",@progbits
	.align	1
	.globl	bflb_platform_deinit
	.type	bflb_platform_deinit, @function
bflb_platform_deinit:
.LFB27:
	.loc 1 346 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 347 11
	lui	a5,%hi(init_flag)
	lw	a5,%lo(init_flag)(a5)
	.loc 1 347 7
	beq	a5,zero,.L55
	.loc 1 350 15
	lui	a5,%hi(init_flag)
	sw	zero,%lo(init_flag)(a5)
	.loc 1 352 5
	call	bflb_platform_deinit_time
	.loc 1 354 5
	call	Sec_Eng_Trng_Disable
	.loc 1 356 8
	lui	a5,%hi(uart_dbg_disable)
	lbu	a5,%lo(uart_dbg_disable)(a5)
	.loc 1 356 7
	bne	a5,zero,.L54
	.loc 1 357 9
	call	bflb_platform_uart_dbg_deinit
.L54:
	.loc 1 359 5
	call	bflb_platform_deinit_time
	j	.L51
.L55:
	.loc 1 348 9
	nop
.L51:
	.loc 1 360 1
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
	.size	bflb_platform_deinit, .-bflb_platform_deinit
	.section	.text.bflb_platform_print_set,"ax",@progbits
	.align	1
	.globl	bflb_platform_print_set
	.type	bflb_platform_print_set, @function
bflb_platform_print_set:
.LFB28:
	.loc 1 363 1
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
	.loc 1 364 21
	lui	a5,%hi(uart_dbg_disable)
	lbu	a4,-17(s0)
	sb	a4,%lo(uart_dbg_disable)(a5)
	.loc 1 365 1
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
	.size	bflb_platform_print_set, .-bflb_platform_print_set
	.section	.text.bflb_platform_get_random,"ax",@progbits
	.align	1
	.globl	bflb_platform_get_random
	.type	bflb_platform_get_random, @function
bflb_platform_get_random:
.LFB29:
	.loc 1 368 1
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
	.loc 1 370 14
	sw	zero,-20(s0)
	.loc 1 371 14
	sw	zero,-24(s0)
	.loc 1 371 18
	sw	zero,-28(s0)
	.loc 1 373 10
	j	.L58
.L64:
	.loc 1 374 12
	addi	a5,s0,-60
	mv	a0,a5
	call	Sec_Eng_Trng_Read
	mv	a5,a0
	.loc 1 374 11 discriminator 1
	beq	a5,zero,.L59
	.loc 1 375 20
	li	a5,-1
	j	.L65
.L59:
	.loc 1 377 12
	lw	a4,-72(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 378 11
	lw	a4,-28(s0)
	li	a5,32
	bleu	a4,a5,.L61
	.loc 1 379 16
	li	a5,32
	sw	a5,-28(s0)
.L61:
	.loc 1 381 14
	sw	zero,-24(s0)
	.loc 1 381 9
	j	.L62
.L63:
	.loc 1 382 25
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 1 382 17
	lw	a4,-68(s0)
	add	a5,a4,a5
	.loc 1 382 35
	lw	a4,-24(s0)
	addi	a4,a4,-16
	add	a4,a4,s0
	lbu	a4,-44(a4)
	.loc 1 382 28
	sb	a4,0(a5)
	.loc 1 381 24 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L62:
	.loc 1 381 18 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	bltu	a4,a5,.L63
	.loc 1 384 16
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L58:
	.loc 1 373 18
	lw	a4,-20(s0)
	lw	a5,-72(s0)
	bltu	a4,a5,.L64
	.loc 1 387 12
	li	a5,0
.L65:
	.loc 1 388 1
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
.LFE29:
	.size	bflb_platform_get_random, .-bflb_platform_get_random
	.section	.text.bflb_platform_get_input,"ax",@progbits
	.align	1
	.globl	bflb_platform_get_input
	.type	bflb_platform_get_input, @function
bflb_platform_get_input:
.LFB30:
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
	.loc 1 393 21
	lui	a5,%hi(uartRB)
	addi	a0,a5,%lo(uartRB)
	call	Ring_Buffer_Get_Length
	mv	a5,a0
	.loc 1 393 14 discriminator 1
	sw	a5,-20(s0)
	.loc 1 395 7
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bleu	a4,a5,.L67
	.loc 1 396 15
	lw	a5,-40(s0)
	sw	a5,-20(s0)
.L67:
	.loc 1 399 12
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a2,a5
	lw	a1,-36(s0)
	lui	a5,%hi(uartRB)
	addi	a0,a5,%lo(uartRB)
	call	Ring_Buffer_Read
	mv	a5,a0
	.loc 1 400 1
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
.LFE30:
	.size	bflb_platform_get_input, .-bflb_platform_get_input
	.section	.bss.print_buf.0,"aw",@nobits
	.align	2
	.type	print_buf.0, @object
	.size	print_buf.0, 128
print_buf.0:
	.zero	128
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdarg.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_uart.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/ring_buffer/ring_buffer.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sec_eng.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/platform_gpio.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf14
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1e
	.4byte	.LASF265
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
	.uleb128 0x1f
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x28
	.byte	0x1b
	.4byte	0x90
	.uleb128 0x20
	.byte	0x4
	.4byte	.LASF266
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0x18
	.4byte	0x84
	.uleb128 0x21
	.byte	0x4
	.uleb128 0x9
	.4byte	0xa9
	.uleb128 0x22
	.uleb128 0x9
	.4byte	0xb4
	.uleb128 0x18
	.4byte	0xaa
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x14
	.4byte	0xb4
	.uleb128 0x9
	.4byte	0xbb
	.uleb128 0x18
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x14
	.4byte	0xd6
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x31
	.byte	0x1c
	.4byte	0x40
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0x23
	.4byte	0xf3
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x37
	.byte	0x20
	.4byte	0x5c
	.uleb128 0x7
	.4byte	0x32
	.byte	0x6
	.byte	0x41
	.byte	0x1
	.4byte	0x2bb
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x35
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x36
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x37
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x39
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x3b
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x49
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x4b
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x4d
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x4f
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.4byte	0x32
	.byte	0x6
	.byte	0xe7
	.byte	0x1
	.4byte	0x358
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x18
	.byte	0
	.uleb128 0x24
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x104
	.byte	0x2
	.4byte	0x2bb
	.uleb128 0x7
	.4byte	0x32
	.byte	0x7
	.byte	0x17
	.byte	0x1
	.4byte	0x384
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0x7
	.byte	0x1b
	.byte	0x2
	.4byte	0x365
	.uleb128 0x7
	.4byte	0x32
	.byte	0x7
	.byte	0x21
	.byte	0x1
	.4byte	0x3a9
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0x7
	.byte	0x24
	.byte	0x2
	.4byte	0x390
	.uleb128 0x7
	.4byte	0x32
	.byte	0x7
	.byte	0x33
	.byte	0x1
	.4byte	0x3ce
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0x7
	.byte	0x36
	.byte	0x2
	.4byte	0x3b5
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0x7
	.byte	0x7c
	.byte	0xf
	.4byte	0xa9
	.uleb128 0x9
	.4byte	0x3da
	.uleb128 0x7
	.4byte	0x32
	.byte	0x8
	.byte	0x39
	.byte	0xe
	.4byte	0x40a
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x8
	.byte	0x3d
	.byte	0x2
	.4byte	0x3eb
	.uleb128 0x7
	.4byte	0x32
	.byte	0x8
	.byte	0x42
	.byte	0xe
	.4byte	0x435
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0x8
	.byte	0x46
	.byte	0x2
	.4byte	0x416
	.uleb128 0x7
	.4byte	0x32
	.byte	0x8
	.byte	0x4b
	.byte	0xe
	.4byte	0x460
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF137
	.byte	0x8
	.byte	0x4f
	.byte	0x2
	.4byte	0x441
	.uleb128 0x7
	.4byte	0x32
	.byte	0x8
	.byte	0x54
	.byte	0xe
	.4byte	0x491
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
	.byte	0x8
	.byte	0x59
	.byte	0x2
	.4byte	0x46c
	.uleb128 0x7
	.4byte	0x32
	.byte	0x8
	.byte	0x5e
	.byte	0xe
	.4byte	0x4bc
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0
	.uleb128 0x1
	.4byte	.LASF144
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0x8
	.byte	0x62
	.byte	0x2
	.4byte	0x49d
	.uleb128 0x7
	.4byte	0x32
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x4e1
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0x8
	.byte	0x6a
	.byte	0x2
	.4byte	0x4c8
	.uleb128 0x7
	.4byte	0x32
	.byte	0x8
	.byte	0x77
	.byte	0xe
	.4byte	0x530
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF158
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0x8
	.byte	0x81
	.byte	0x2
	.4byte	0x4ed
	.uleb128 0x15
	.byte	0x10
	.byte	0x8
	.byte	0x90
	.4byte	0x5ba
	.uleb128 0x4
	.4byte	.LASF160
	.byte	0x8
	.byte	0x91
	.byte	0xe
	.4byte	0xf3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF161
	.byte	0x8
	.byte	0x92
	.byte	0xe
	.4byte	0xf3
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF162
	.byte	0x8
	.byte	0x93
	.byte	0x18
	.4byte	0x491
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF163
	.byte	0x8
	.byte	0x94
	.byte	0x18
	.4byte	0x4bc
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF164
	.byte	0x8
	.byte	0x95
	.byte	0x16
	.4byte	0x460
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF165
	.byte	0x8
	.byte	0x96
	.byte	0x11
	.4byte	0x3a9
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF166
	.byte	0x8
	.byte	0x97
	.byte	0x11
	.4byte	0x3a9
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF167
	.byte	0x8
	.byte	0x98
	.byte	0x11
	.4byte	0x3a9
	.byte	0xd
	.uleb128 0x4
	.4byte	.LASF168
	.byte	0x8
	.byte	0x99
	.byte	0x1e
	.4byte	0x4e1
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.4byte	.LASF169
	.byte	0x8
	.byte	0x9a
	.byte	0x2
	.4byte	0x53c
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.byte	0x9f
	.4byte	0x603
	.uleb128 0x4
	.4byte	.LASF170
	.byte	0x8
	.byte	0xa0
	.byte	0xd
	.4byte	0xd6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF171
	.byte	0x8
	.byte	0xa1
	.byte	0xd
	.4byte	0xd6
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF172
	.byte	0x8
	.byte	0xa2
	.byte	0x11
	.4byte	0x3a9
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF173
	.byte	0x8
	.byte	0xa3
	.byte	0x11
	.4byte	0x3a9
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF174
	.byte	0x8
	.byte	0xa4
	.byte	0x2
	.4byte	0x5c6
	.uleb128 0xd
	.4byte	0xd6
	.4byte	0x61f
	.uleb128 0xe
	.4byte	0x6a
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.4byte	0xd6
	.4byte	0x62f
	.uleb128 0xe
	.4byte	0x6a
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.4byte	0x32
	.byte	0x9
	.byte	0x7e
	.byte	0xe
	.4byte	0x648
	.uleb128 0x1
	.4byte	.LASF175
	.byte	0
	.uleb128 0x1
	.4byte	.LASF176
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0x9
	.byte	0x81
	.byte	0x2
	.4byte	0x62f
	.uleb128 0x7
	.4byte	0x32
	.byte	0xa
	.byte	0xb7
	.byte	0xe
	.4byte	0x66d
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
	.byte	0xba
	.byte	0x2
	.4byte	0x654
	.uleb128 0x15
	.byte	0x18
	.byte	0xb
	.byte	0x41
	.4byte	0x6ea
	.uleb128 0x4
	.4byte	.LASF181
	.byte	0xb
	.byte	0x42
	.byte	0xe
	.4byte	0x6ea
	.byte	0
	.uleb128 0x4
	.4byte	.LASF182
	.byte	0xb
	.byte	0x43
	.byte	0xd
	.4byte	0xd6
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF183
	.byte	0xb
	.byte	0x44
	.byte	0xe
	.4byte	0xe7
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF184
	.byte	0xb
	.byte	0x45
	.byte	0xd
	.4byte	0xd6
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF185
	.byte	0xb
	.byte	0x46
	.byte	0xe
	.4byte	0xe7
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF186
	.byte	0xb
	.byte	0x47
	.byte	0xe
	.4byte	0xe7
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF187
	.byte	0xb
	.byte	0x48
	.byte	0xc
	.4byte	0xa4
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF188
	.byte	0xb
	.byte	0x49
	.byte	0xc
	.4byte	0xa4
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.4byte	0xd6
	.uleb128 0x3
	.4byte	.LASF189
	.byte	0xb
	.byte	0x4a
	.byte	0x2
	.4byte	0x679
	.uleb128 0x3
	.4byte	.LASF190
	.byte	0xb
	.byte	0x5e
	.byte	0xf
	.4byte	0xa9
	.uleb128 0x25
	.4byte	0x71c
	.uleb128 0x2
	.4byte	0xa2
	.uleb128 0x2
	.4byte	0x6ea
	.uleb128 0x2
	.4byte	0xe7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF191
	.byte	0xb
	.byte	0x60
	.byte	0xf
	.4byte	0x707
	.uleb128 0x5
	.4byte	.LASF192
	.byte	0xd
	.byte	0x10
	.4byte	0xd6
	.uleb128 0x5
	.byte	0x3
	.4byte	uart_dbg_disable
	.uleb128 0xd
	.4byte	0xe2
	.4byte	0x749
	.uleb128 0xe
	.4byte	0x6a
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.4byte	0x739
	.uleb128 0x5
	.4byte	.LASF193
	.byte	0x1b
	.byte	0x16
	.4byte	0x749
	.uleb128 0x5
	.byte	0x3
	.4byte	hexTable
	.uleb128 0x5
	.4byte	.LASF194
	.byte	0x1c
	.byte	0x1a
	.4byte	0xff
	.uleb128 0x5
	.byte	0x3
	.4byte	systick_int_cnt
	.uleb128 0x5
	.4byte	.LASF195
	.byte	0x1e
	.byte	0x19
	.4byte	0x6ef
	.uleb128 0x5
	.byte	0x3
	.4byte	uartRB
	.uleb128 0xd
	.4byte	0xd6
	.4byte	0x791
	.uleb128 0xe
	.4byte	0x6a
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.4byte	.LASF196
	.byte	0x1f
	.byte	0x10
	.4byte	0x781
	.uleb128 0x5
	.byte	0x3
	.4byte	uartBuf
	.uleb128 0x5
	.4byte	.LASF197
	.byte	0x22
	.byte	0x11
	.4byte	0xf3
	.uleb128 0x5
	.byte	0x3
	.4byte	init_flag
	.uleb128 0xf
	.4byte	.LASF198
	.byte	0xb
	.byte	0x72
	.byte	0xa
	.4byte	0xe7
	.4byte	0x7d3
	.uleb128 0x2
	.4byte	0x7d3
	.uleb128 0x2
	.4byte	0x6ea
	.uleb128 0x2
	.4byte	0xe7
	.byte	0
	.uleb128 0x9
	.4byte	0x6ef
	.uleb128 0xf
	.4byte	.LASF199
	.byte	0xb
	.byte	0x76
	.byte	0xa
	.4byte	0xe7
	.4byte	0x7ee
	.uleb128 0x2
	.4byte	0x7d3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF200
	.byte	0xc
	.2byte	0x1d1
	.byte	0xd
	.4byte	0x384
	.4byte	0x805
	.uleb128 0x2
	.4byte	0x6ea
	.byte	0
	.uleb128 0x26
	.4byte	.LASF206
	.byte	0xc
	.2byte	0x1d4
	.byte	0x6
	.uleb128 0x19
	.4byte	.LASF202
	.byte	0xc
	.2byte	0x1ce
	.byte	0xd
	.4byte	0x384
	.uleb128 0x6
	.4byte	.LASF201
	.byte	0xa
	.2byte	0x260
	.byte	0xd
	.4byte	0x384
	.4byte	0x83c
	.uleb128 0x2
	.4byte	0xd6
	.uleb128 0x2
	.4byte	0x66d
	.uleb128 0x2
	.4byte	0xf3
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF210
	.byte	0x73
	.4byte	0x84c
	.uleb128 0x2
	.4byte	0xf3
	.byte	0
	.uleb128 0x19
	.4byte	.LASF203
	.byte	0xa
	.2byte	0x22c
	.byte	0x9
	.4byte	0xd6
	.uleb128 0xf
	.4byte	.LASF204
	.byte	0xd
	.byte	0x29
	.byte	0x8
	.4byte	0x71
	.4byte	0x86f
	.uleb128 0x2
	.4byte	0xc0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF205
	.byte	0x4
	.2byte	0x112
	.byte	0x5
	.4byte	0x63
	.4byte	0x895
	.uleb128 0x2
	.4byte	0xaf
	.uleb128 0x2
	.4byte	0x71
	.uleb128 0x2
	.4byte	0xc5
	.uleb128 0x2
	.4byte	0x84
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF207
	.byte	0x21
	.uleb128 0x6
	.4byte	.LASF208
	.byte	0x8
	.2byte	0x128
	.byte	0xd
	.4byte	0x384
	.4byte	0x8bc
	.uleb128 0x2
	.4byte	0x40a
	.uleb128 0x2
	.4byte	0x6ea
	.uleb128 0x2
	.4byte	0xf3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF209
	.byte	0x8
	.2byte	0x118
	.byte	0xd
	.4byte	0x384
	.4byte	0x8d8
	.uleb128 0x2
	.4byte	0x40a
	.uleb128 0x2
	.4byte	0x435
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF211
	.byte	0x72
	.4byte	0x8e8
	.uleb128 0x2
	.4byte	0xf3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF212
	.byte	0x8
	.2byte	0x127
	.byte	0xd
	.4byte	0x384
	.4byte	0x909
	.uleb128 0x2
	.4byte	0x40a
	.uleb128 0x2
	.4byte	0x530
	.uleb128 0x2
	.4byte	0x3e6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF213
	.byte	0x8
	.2byte	0x11c
	.byte	0xd
	.4byte	0x384
	.4byte	0x925
	.uleb128 0x2
	.4byte	0x40a
	.uleb128 0x2
	.4byte	0xd6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF214
	.byte	0x8
	.2byte	0x121
	.byte	0xd
	.4byte	0x384
	.4byte	0x941
	.uleb128 0x2
	.4byte	0x40a
	.uleb128 0x2
	.4byte	0x3a9
	.byte	0
	.uleb128 0x6
	.4byte	.LASF215
	.byte	0x8
	.2byte	0x116
	.byte	0xd
	.4byte	0x384
	.4byte	0x95d
	.uleb128 0x2
	.4byte	0x40a
	.uleb128 0x2
	.4byte	0x95d
	.byte	0
	.uleb128 0x9
	.4byte	0x603
	.uleb128 0x6
	.4byte	.LASF216
	.byte	0x8
	.2byte	0x114
	.byte	0xd
	.4byte	0x384
	.4byte	0x97e
	.uleb128 0x2
	.4byte	0x40a
	.uleb128 0x2
	.4byte	0x97e
	.byte	0
	.uleb128 0x9
	.4byte	0x5ba
	.uleb128 0x6
	.4byte	.LASF217
	.byte	0x8
	.2byte	0x119
	.byte	0xd
	.4byte	0x384
	.4byte	0x99f
	.uleb128 0x2
	.4byte	0x40a
	.uleb128 0x2
	.4byte	0x435
	.byte	0
	.uleb128 0x6
	.4byte	.LASF218
	.byte	0x8
	.2byte	0x125
	.byte	0xd
	.4byte	0x384
	.4byte	0x9c0
	.uleb128 0x2
	.4byte	0x40a
	.uleb128 0x2
	.4byte	0x530
	.uleb128 0x2
	.4byte	0x3ce
	.byte	0
	.uleb128 0x6
	.4byte	.LASF219
	.byte	0xa
	.2byte	0x240
	.byte	0xd
	.4byte	0x384
	.4byte	0x9d7
	.uleb128 0x2
	.4byte	0x358
	.byte	0
	.uleb128 0x6
	.4byte	.LASF220
	.byte	0xa
	.2byte	0x238
	.byte	0xd
	.4byte	0x384
	.4byte	0x9f8
	.uleb128 0x2
	.4byte	0xd6
	.uleb128 0x2
	.4byte	0x648
	.uleb128 0x2
	.4byte	0xd6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF221
	.byte	0xb
	.byte	0x67
	.byte	0xd
	.4byte	0x384
	.4byte	0xa22
	.uleb128 0x2
	.4byte	0x7d3
	.uleb128 0x2
	.4byte	0x6ea
	.uleb128 0x2
	.4byte	0xe7
	.uleb128 0x2
	.4byte	0xa22
	.uleb128 0x2
	.4byte	0xa22
	.byte	0
	.uleb128 0x9
	.4byte	0x6fb
	.uleb128 0x1b
	.4byte	.LASF222
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF223
	.byte	0xb
	.byte	0x77
	.byte	0xa
	.4byte	0xe7
	.4byte	0xa43
	.uleb128 0x2
	.4byte	0x7d3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF224
	.byte	0x8
	.2byte	0x12a
	.byte	0xa
	.4byte	0xf3
	.4byte	0xa64
	.uleb128 0x2
	.4byte	0x40a
	.uleb128 0x2
	.4byte	0x6ea
	.uleb128 0x2
	.4byte	0xf3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF225
	.byte	0xb
	.byte	0x6a
	.byte	0xa
	.4byte	0xe7
	.4byte	0xa89
	.uleb128 0x2
	.4byte	0x7d3
	.uleb128 0x2
	.4byte	0xe7
	.uleb128 0x2
	.4byte	0xa89
	.uleb128 0x2
	.4byte	0xa2
	.byte	0
	.uleb128 0x9
	.4byte	0x71c
	.uleb128 0x6
	.4byte	.LASF226
	.byte	0x8
	.2byte	0x12d
	.byte	0x9
	.4byte	0xd6
	.4byte	0xaa5
	.uleb128 0x2
	.4byte	0x40a
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF230
	.2byte	0x187
	.4byte	0x63
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaec
	.uleb128 0xb
	.4byte	.LASF227
	.2byte	0x187
	.byte	0x26
	.4byte	0x6ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LASF228
	.2byte	0x187
	.byte	0x34
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.4byte	.LASF229
	.2byte	0x189
	.byte	0xe
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF231
	.2byte	0x16f
	.4byte	0x63
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb61
	.uleb128 0xb
	.4byte	.LASF227
	.2byte	0x16f
	.byte	0x27
	.4byte	0x6ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.2byte	0x16f
	.byte	0x35
	.4byte	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x11
	.4byte	.LASF232
	.2byte	0x171
	.byte	0xd
	.4byte	0xb61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.4byte	.LASF233
	.2byte	0x172
	.byte	0xe
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"i"
	.2byte	0x173
	.byte	0xe
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"cnt"
	.2byte	0x173
	.byte	0x12
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xd
	.4byte	0xd6
	.4byte	0xb71
	.uleb128 0xe
	.4byte	0x6a
	.byte	0x1f
	.byte	0
	.uleb128 0x28
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x16a
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb98
	.uleb128 0xb
	.4byte	.LASF234
	.2byte	0x16a
	.byte	0x26
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x16
	.4byte	.LASF241
	.2byte	0x159
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF236
	.2byte	0x147
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbce
	.uleb128 0xb
	.4byte	.LASF237
	.2byte	0x147
	.byte	0x22
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF238
	.2byte	0x137
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc11
	.uleb128 0xb
	.4byte	.LASF239
	.2byte	0x137
	.byte	0x26
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.string	"cnt"
	.2byte	0x139
	.byte	0xe
	.4byte	0x104
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.4byte	.LASF240
	.2byte	0x13a
	.byte	0xe
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x16
	.4byte	.LASF242
	.2byte	0x131
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF243
	.2byte	0x127
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF244
	.2byte	0x11a
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc67
	.uleb128 0xb
	.4byte	.LASF239
	.2byte	0x11a
	.byte	0x2c
	.4byte	0x104
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.string	"tmp"
	.2byte	0x11c
	.byte	0xe
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF245
	.2byte	0x115
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.4byte	.LASF246
	.2byte	0x110
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.4byte	.LASF247
	.byte	0x1
	.byte	0xf5
	.byte	0xa
	.4byte	0x104
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcfe
	.uleb128 0x5
	.4byte	.LASF248
	.byte	0xf8
	.byte	0xe
	.4byte	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.4byte	.LASF249
	.byte	0xf8
	.byte	0x18
	.4byte	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x5
	.4byte	.LASF250
	.byte	0xf8
	.byte	0x23
	.4byte	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.4byte	.LASF251
	.byte	0xf8
	.byte	0x2e
	.4byte	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xa
	.string	"cnt"
	.byte	0xf9
	.byte	0xe
	.4byte	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.string	"tmp"
	.byte	0xf9
	.byte	0x14
	.4byte	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF252
	.byte	0x1
	.byte	0xf0
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF253
	.byte	0xeb
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd31
	.uleb128 0x10
	.string	"c"
	.byte	0xeb
	.byte	0x20
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xc
	.4byte	.LASF254
	.byte	0xe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd6e
	.uleb128 0x10
	.string	"val"
	.byte	0xe0
	.byte	0x24
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF255
	.byte	0xe2
	.byte	0xd
	.4byte	0x61f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.string	"i"
	.byte	0xe3
	.byte	0xd
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF256
	.byte	0xdb
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd91
	.uleb128 0x13
	.4byte	.LASF227
	.byte	0xdb
	.byte	0x21
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF257
	.byte	0xcd
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdda
	.uleb128 0x13
	.4byte	.LASF227
	.byte	0xcd
	.byte	0x25
	.4byte	0xdda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"len"
	.byte	0xcd
	.byte	0x33
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"i"
	.byte	0xcf
	.byte	0xe
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"p"
	.byte	0xd0
	.byte	0xe
	.4byte	0x6ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	0xddf
	.uleb128 0x2b
	.uleb128 0xc
	.4byte	.LASF258
	.byte	0xc1
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe23
	.uleb128 0x10
	.string	"fmt"
	.byte	0xc1
	.byte	0x21
	.4byte	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.uleb128 0x5
	.4byte	.LASF255
	.byte	0xc3
	.byte	0x11
	.4byte	0xe23
	.uleb128 0x5
	.byte	0x3
	.4byte	print_buf.0
	.uleb128 0xa
	.string	"ap"
	.byte	0xc4
	.byte	0xd
	.4byte	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0xd
	.4byte	0xb4
	.4byte	0xe33
	.uleb128 0xe
	.4byte	0x6a
	.byte	0x7f
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF259
	.byte	0x1
	.byte	0xba
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF260
	.byte	0xaf
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe76
	.uleb128 0x13
	.4byte	.LASF227
	.byte	0xaf
	.byte	0x2c
	.4byte	0x6ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.string	"len"
	.byte	0xaf
	.byte	0x3a
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF261
	.byte	0x5a
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb5
	.uleb128 0x13
	.4byte	.LASF262
	.byte	0x5a
	.byte	0x2b
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LASF263
	.byte	0x5c
	.byte	0x13
	.4byte	0x5ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF264
	.byte	0x67
	.byte	0x17
	.4byte	0x603
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF267
	.byte	0x1
	.byte	0x48
	.byte	0xd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee8
	.uleb128 0x5
	.4byte	.LASF232
	.byte	0x4a
	.byte	0xd
	.4byte	0x60f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"len"
	.byte	0x4b
	.byte	0xe
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF268
	.byte	0x1
	.byte	0x2d
	.byte	0xd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF232
	.byte	0x2f
	.byte	0xd
	.4byte	0x60f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"len"
	.byte	0x30
	.byte	0xe
	.4byte	0xf3
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0xb
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x18
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.4byte	0xcc
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
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
	.byte	0x7
	.4byte	.LFB29
	.uleb128 .LFE29-.LFB29
	.byte	0x7
	.4byte	.LFB30
	.uleb128 .LFE30-.LFB30
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF116:
	.string	"ERROR"
.LASF114:
	.string	"BL_AHB_Slave1_Type"
.LASF210:
	.string	"clic_disable_interrupt"
.LASF27:
	.string	"L1C_BMX_ERR_IRQn"
.LASF23:
	.string	"MEXT_IRQn"
.LASF32:
	.string	"SDIO_IRQn"
.LASF75:
	.string	"PDS_WAKEUP_IRQn"
.LASF138:
	.string	"UART_DATABITS_5"
.LASF139:
	.string	"UART_DATABITS_6"
.LASF80:
	.string	"BZ_PHY_IRQn"
.LASF237:
	.string	"baudrate"
.LASF199:
	.string	"Ring_Buffer_Get_Length"
.LASF150:
	.string	"UART_INT_TX_END"
.LASF36:
	.string	"SEC_PKA_IRQn"
.LASF10:
	.string	"unsigned int"
.LASF148:
	.string	"UART_MSB_FIRST"
.LASF230:
	.string	"bflb_platform_get_input"
.LASF87:
	.string	"MAC_PORT_TRG_IRQn"
.LASF229:
	.string	"retLen"
.LASF192:
	.string	"uart_dbg_disable"
.LASF212:
	.string	"UART_Int_Callback_Install"
.LASF201:
	.string	"GLB_Set_MTimer_CLK"
.LASF152:
	.string	"UART_INT_TX_FIFO_REQ"
.LASF78:
	.string	"BOR_IRQn"
.LASF190:
	.string	"ringBuffer_Lock_Callback"
.LASF26:
	.string	"BMX_TO_IRQn"
.LASF203:
	.string	"GLB_Get_BCLK_Div"
.LASF231:
	.string	"bflb_platform_get_random"
.LASF4:
	.string	"short int"
.LASF39:
	.string	"SEC_SHA_IRQn"
.LASF246:
	.string	"bflb_platform_start_time"
.LASF63:
	.string	"TIMER_WDT_IRQn"
.LASF253:
	.string	"bflb_platform_printc"
.LASF48:
	.string	"SF_CTRL_IRQn"
.LASF258:
	.string	"bflb_platform_printf"
.LASF184:
	.string	"writeMirror"
.LASF256:
	.string	"bflb_platform_prints"
.LASF132:
	.string	"UART_TXRX"
.LASF254:
	.string	"bflb_platform_printx"
.LASF193:
	.string	"hexTable"
.LASF158:
	.string	"UART_INT_ALL"
.LASF105:
	.string	"BL_AHB_SLAVE1_UART0"
.LASF106:
	.string	"BL_AHB_SLAVE1_UART1"
.LASF221:
	.string	"Ring_Buffer_Init"
.LASF2:
	.string	"signed char"
.LASF118:
	.string	"BL_Err_Type"
.LASF19:
	.string	"uint32_t"
.LASF170:
	.string	"txFifoDmaThreshold"
.LASF217:
	.string	"UART_Disable"
.LASF225:
	.string	"Ring_Buffer_Write_Callback"
.LASF69:
	.string	"GPIO_INT0_IRQn"
.LASF126:
	.string	"UART0_ID"
.LASF194:
	.string	"systick_int_cnt"
.LASF131:
	.string	"UART_RX"
.LASF226:
	.string	"UART_GetRxFifoCount"
.LASF216:
	.string	"UART_Init"
.LASF9:
	.string	"long long unsigned int"
.LASF196:
	.string	"uartBuf"
.LASF31:
	.string	"RF_TOP_INT1_IRQn"
.LASF198:
	.string	"Ring_Buffer_Read"
.LASF113:
	.string	"BL_AHB_SLAVE1_MAX"
.LASF144:
	.string	"UART_STOPBITS_1_5"
.LASF61:
	.string	"TIMER_CH0_IRQn"
.LASF218:
	.string	"UART_IntMask"
.LASF239:
	.string	"time"
.LASF123:
	.string	"MASK"
.LASF263:
	.string	"uart_dbg_cfg"
.LASF133:
	.string	"UART_Direction_Type"
.LASF220:
	.string	"GLB_Set_UART_CLK"
.LASF13:
	.string	"__gnuc_va_list"
.LASF268:
	.string	"UART_RFR_Cbf"
.LASF12:
	.string	"size_t"
.LASF189:
	.string	"Ring_Buffer_Type"
.LASF232:
	.string	"tmpBuf"
.LASF55:
	.string	"UART1_IRQn"
.LASF169:
	.string	"UART_CFG_Type"
.LASF130:
	.string	"UART_TX"
.LASF160:
	.string	"uartClk"
.LASF179:
	.string	"GLB_MTIMER_CLK_32K"
.LASF153:
	.string	"UART_INT_RX_FIFO_REQ"
.LASF77:
	.string	"HBN_OUT1_IRQn"
.LASF240:
	.string	"clock"
.LASF88:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF40:
	.string	"DMA_ALL_IRQn"
.LASF52:
	.string	"SPI_IRQn"
.LASF200:
	.string	"Sec_Eng_Trng_Read"
.LASF119:
	.string	"DISABLE"
.LASF115:
	.string	"SUCCESS"
.LASF15:
	.string	"char"
.LASF146:
	.string	"UART_StopBits_Type"
.LASF98:
	.string	"BL_AHB_SLAVE1_CCI"
.LASF137:
	.string	"UART_Parity_Type"
.LASF207:
	.string	"bflb_platform_deinit_uart_debug_gpio"
.LASF57:
	.string	"I2C_IRQn"
.LASF223:
	.string	"Ring_Buffer_Get_Empty_Length"
.LASF120:
	.string	"ENABLE"
.LASF154:
	.string	"UART_INT_RTO"
.LASF17:
	.string	"uint8_t"
.LASF85:
	.string	"MAC_TX_TRG_IRQn"
.LASF101:
	.string	"BL_AHB_SLAVE1_DMA"
.LASF134:
	.string	"UART_PARITY_NONE"
.LASF122:
	.string	"UNMASK"
.LASF136:
	.string	"UART_PARITY_EVEN"
.LASF183:
	.string	"readIndex"
.LASF92:
	.string	"BL_AHB_SLAVE1_GPIP"
.LASF14:
	.string	"va_list"
.LASF250:
	.string	"tmpValLow1"
.LASF8:
	.string	"long long int"
.LASF117:
	.string	"TIMEOUT"
.LASF187:
	.string	"lock"
.LASF248:
	.string	"tmpValLow"
.LASF111:
	.string	"BL_AHB_SLAVE1_IRR"
.LASF81:
	.string	"BLE_IRQn"
.LASF129:
	.string	"UART_ID_Type"
.LASF155:
	.string	"UART_INT_PCE"
.LASF163:
	.string	"stopBits"
.LASF143:
	.string	"UART_STOPBITS_1"
.LASF145:
	.string	"UART_STOPBITS_2"
.LASF76:
	.string	"HBN_OUT0_IRQn"
.LASF89:
	.string	"IRQn_LAST"
.LASF186:
	.string	"size"
.LASF149:
	.string	"UART_ByteBitInverse_Type"
.LASF59:
	.string	"PWM_IRQn"
.LASF234:
	.string	"logDisable"
.LASF25:
	.string	"BMX_ERR_IRQn"
.LASF33:
	.string	"DMA_BMX_ERR_IRQn"
.LASF90:
	.string	"BL_AHB_SLAVE1_GLB"
.LASF259:
	.string	"bflb_platform_uart_dbg_deinit"
.LASF185:
	.string	"writeIndex"
.LASF235:
	.string	"bflb_platform_print_set"
.LASF161:
	.string	"baudRate"
.LASF236:
	.string	"bflb_platform_init"
.LASF86:
	.string	"MAC_GEN_IRQn"
.LASF204:
	.string	"strlen"
.LASF211:
	.string	"clic_enable_interrupt"
.LASF107:
	.string	"BL_AHB_SLAVE1_SPI"
.LASF206:
	.string	"Sec_Eng_Trng_Disable"
.LASF172:
	.string	"txFifoDmaEnable"
.LASF30:
	.string	"RF_TOP_INT0_IRQn"
.LASF251:
	.string	"tmpValHigh1"
.LASF11:
	.string	"long double"
.LASF18:
	.string	"uint16_t"
.LASF51:
	.string	"EFUSE_IRQn"
.LASF174:
	.string	"UART_FifoCfg_Type"
.LASF103:
	.string	"BL_AHB_SLAVE1_PDSHBN"
.LASF224:
	.string	"UART_ReceiveData"
.LASF95:
	.string	"BL_AHB_SLAVE1_TZ1"
.LASF96:
	.string	"BL_AHB_SLAVE1_TZ2"
.LASF157:
	.string	"UART_INT_RX_FER"
.LASF29:
	.string	"SEC_BMX_ERR_IRQn"
.LASF164:
	.string	"parity"
.LASF83:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF41:
	.string	"RESERVED0"
.LASF42:
	.string	"RESERVED1"
.LASF43:
	.string	"RESERVED2"
.LASF46:
	.string	"RESERVED3"
.LASF47:
	.string	"RESERVED4"
.LASF49:
	.string	"RESERVED5"
.LASF53:
	.string	"RESERVED6"
.LASF244:
	.string	"bflb_platform_set_alarm_time"
.LASF58:
	.string	"RESERVED8"
.LASF60:
	.string	"RESERVED9"
.LASF182:
	.string	"readMirror"
.LASF6:
	.string	"long int"
.LASF171:
	.string	"rxFifoDmaThreshold"
.LASF177:
	.string	"HBN_UART_CLK_Type"
.LASF176:
	.string	"HBN_UART_CLK_160M"
.LASF54:
	.string	"UART0_IRQn"
.LASF261:
	.string	"bflb_platform_uart_dbg_init"
.LASF195:
	.string	"uartRB"
.LASF162:
	.string	"dataBits"
.LASF178:
	.string	"GLB_MTIMER_CLK_BCLK"
.LASF45:
	.string	"IRRX_IRQn"
.LASF34:
	.string	"SEC_GMAC_IRQn"
.LASF241:
	.string	"bflb_platform_deinit"
.LASF181:
	.string	"pointer"
.LASF215:
	.string	"UART_FifoConfig"
.LASF84:
	.string	"MAC_RX_TRG_IRQn"
.LASF255:
	.string	"print_buf"
.LASF93:
	.string	"BL_AHB_SLAVE1_DBG"
.LASF245:
	.string	"bflb_platform_stop_time"
.LASF128:
	.string	"UART_ID_MAX"
.LASF79:
	.string	"WIFI_IRQn"
.LASF257:
	.string	"bflb_platform_dump"
.LASF125:
	.string	"intCallback_Type"
.LASF219:
	.string	"GLB_AHB_Slave1_Reset"
.LASF267:
	.string	"UART_RTO_Cbf"
.LASF202:
	.string	"Sec_Eng_Trng_Enable"
.LASF260:
	.string	"bflb_platform_usart_dbg_send"
.LASF168:
	.string	"byteBitInverse"
.LASF35:
	.string	"SEC_CDET_IRQn"
.LASF227:
	.string	"data"
.LASF21:
	.string	"MSOFT_IRQn"
.LASF7:
	.string	"long unsigned int"
.LASF97:
	.string	"BL_AHB_SLAVE1_EFUSE"
.LASF22:
	.string	"MTIME_IRQn"
.LASF147:
	.string	"UART_LSB_FIRST"
.LASF243:
	.string	"bflb_platform_init_time"
.LASF124:
	.string	"BL_Mask_Type"
.LASF99:
	.string	"BL_AHB_SLAVE1_L1C"
.LASF127:
	.string	"UART1_ID"
.LASF209:
	.string	"UART_Enable"
.LASF228:
	.string	"maxLen"
.LASF249:
	.string	"tmpValHigh"
.LASF175:
	.string	"HBN_UART_CLK_FCLK"
.LASF264:
	.string	"fifoCfg"
.LASF121:
	.string	"BL_Fun_Type"
.LASF156:
	.string	"UART_INT_TX_FER"
.LASF238:
	.string	"bflb_platform_delay_ms"
.LASF110:
	.string	"BL_AHB_SLAVE1_TMR"
.LASF50:
	.string	"GPADC_DMA_IRQn"
.LASF151:
	.string	"UART_INT_RX_END"
.LASF208:
	.string	"UART_SendData"
.LASF252:
	.string	"bflb_platform_clear_time"
.LASF3:
	.string	"unsigned char"
.LASF38:
	.string	"SEC_AES_IRQn"
.LASF102:
	.string	"BL_AHB_SLAVE1_SDU"
.LASF24:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF44:
	.string	"IRTX_IRQn"
.LASF64:
	.string	"RESERVED10"
.LASF65:
	.string	"RESERVED11"
.LASF66:
	.string	"RESERVED12"
.LASF67:
	.string	"RESERVED13"
.LASF68:
	.string	"RESERVED14"
.LASF70:
	.string	"RESERVED16"
.LASF71:
	.string	"RESERVED17"
.LASF72:
	.string	"RESERVED18"
.LASF73:
	.string	"RESERVED19"
.LASF191:
	.string	"ringBuffer_Write_Callback"
.LASF135:
	.string	"UART_PARITY_ODD"
.LASF242:
	.string	"bflb_platform_deinit_time"
.LASF108:
	.string	"BL_AHB_SLAVE1_I2C"
.LASF20:
	.string	"uint64_t"
.LASF94:
	.string	"BL_AHB_SLAVE1_SEC"
.LASF109:
	.string	"BL_AHB_SLAVE1_PWM"
.LASF213:
	.string	"UART_SetRxTimeoutValue"
.LASF197:
	.string	"init_flag"
.LASF188:
	.string	"unlock"
.LASF159:
	.string	"UART_INT_Type"
.LASF262:
	.string	"bdrate"
.LASF214:
	.string	"UART_TxFreeRun"
.LASF37:
	.string	"SEC_TRNG_IRQn"
.LASF222:
	.string	"bflb_platform_init_uart_debug_gpio"
.LASF180:
	.string	"GLB_MTIMER_CLK_Type"
.LASF62:
	.string	"TIMER_CH1_IRQn"
.LASF5:
	.string	"short unsigned int"
.LASF74:
	.string	"RESERVED20"
.LASF266:
	.string	"__builtin_va_list"
.LASF28:
	.string	"L1C_BMX_TO_IRQn"
.LASF166:
	.string	"rxDeglitch"
.LASF233:
	.string	"readLen"
.LASF112:
	.string	"BL_AHB_SLAVE1_CKS"
.LASF100:
	.string	"BL_AHB_SLAVE1_SFC"
.LASF16:
	.string	"int32_t"
.LASF56:
	.string	"RESERVED7"
.LASF165:
	.string	"ctsFlowControl"
.LASF265:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF82:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF104:
	.string	"BL_AHB_SLAVE1_WRAM"
.LASF91:
	.string	"BL_AHB_SLAVE1_RF"
.LASF247:
	.string	"bflb_platform_get_time_ms"
.LASF173:
	.string	"rxFifoDmaEnable"
.LASF142:
	.string	"UART_DataBits_Type"
.LASF205:
	.string	"vsnprintf"
.LASF140:
	.string	"UART_DATABITS_7"
.LASF141:
	.string	"UART_DATABITS_8"
.LASF167:
	.string	"rtsSoftwareControl"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/platform_device.c"
	.globl	__udivdi3
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
