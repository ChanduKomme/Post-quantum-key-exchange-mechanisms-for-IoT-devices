	.file	"vfs_uart.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/vfs" "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device/vfs_uart.c"
	.globl	uart_ops
	.section	.rodata.uart_ops,"a"
	.align	2
	.type	uart_ops, @object
	.size	uart_ops, 28
uart_ops:
	.word	vfs_uart_open
	.word	vfs_uart_close
	.word	vfs_uart_read
	.word	vfs_uart_write
	.word	vfs_uart_ioctl
	.word	vfs_uart_poll
	.word	vfs_uart_sync
	.section	.text.__uart_rx_irq,"ax",@progbits
	.align	1
	.type	__uart_rx_irq, @function
__uart_rx_irq:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device/vfs_uart.c"
	.loc 1 30 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	.loc 1 32 14
	sw	zero,-88(s0)
	.loc 1 33 17
	lw	a5,-100(s0)
	sw	a5,-20(s0)
	.loc 1 34 16
	sw	zero,-92(s0)
	.loc 1 36 5
	addi	a3,s0,-88
	addi	a5,s0,-84
	li	a4,0
	li	a2,64
	mv	a1,a5
	lw	a0,-20(s0)
	call	hal_uart_recv_II
	.loc 1 37 9
	lw	a5,-88(s0)
	.loc 1 37 8
	beq	a5,zero,.L2
	.loc 1 38 38
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 38 9
	lw	a2,-88(s0)
	addi	a3,s0,-92
	addi	a4,s0,-84
	mv	a1,a4
	mv	a0,a5
	call	xStreamBufferSendFromISR
	.loc 1 40 13
	lw	a5,-92(s0)
	.loc 1 40 11
	beq	a5,zero,.L2
	.loc 1 40 40 discriminator 1
	call	vTaskSwitchContext
.L2:
	.loc 1 42 13
	lw	a5,-20(s0)
	lw	a5,36(a5)
	.loc 1 42 8
	beq	a5,zero,.L4
	.loc 1 43 30
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 43 35
	lh	a4,6(a5)
	.loc 1 43 30
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 43 45
	ori	a4,a4,1
	slli	a4,a4,16
	srai	a4,a4,16
	sh	a4,6(a5)
	.loc 1 44 29
	lw	a5,-20(s0)
	lw	a5,36(a5)
	.loc 1 44 10
	mv	a3,a5
	.loc 1 44 44
	lw	a5,-20(s0)
	lw	a4,40(a5)
	.loc 1 44 10
	lw	a5,-20(s0)
	lw	a5,44(a5)
	mv	a1,a5
	mv	a0,a4
	jalr	a3
.LVL0:
.L4:
	.loc 1 46 1
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
.LFE5:
	.size	__uart_rx_irq, .-__uart_rx_irq
	.section	.text.__uart_tx_irq,"ax",@progbits
	.align	1
	.type	__uart_tx_irq, @function
__uart_tx_irq:
.LFB6:
	.loc 1 49 1
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
	.loc 1 50 16
	sw	zero,-28(s0)
	.loc 1 51 17
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 55 43
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 55 11
	addi	a3,s0,-28
	addi	a4,s0,-29
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	xStreamBufferReceiveFromISR
	sw	a0,-24(s0)
	.loc 1 57 9
	lw	a5,-28(s0)
	.loc 1 57 7
	beq	a5,zero,.L6
	.loc 1 57 36 discriminator 1
	call	vTaskSwitchContext
.L6:
	.loc 1 58 8
	lw	a4,-24(s0)
	li	a5,1
	bne	a4,a5,.L7
	.loc 1 59 9
	addi	a5,s0,-29
	li	a3,0
	li	a2,1
	mv	a1,a5
	lw	a0,-20(s0)
	call	hal_uart_send
	.loc 1 63 1
	j	.L9
.L7:
	.loc 1 61 9
	lw	a0,-20(s0)
	call	hal_uart_send_trigger_off
.L9:
	.loc 1 63 1
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
.LFE6:
	.size	__uart_tx_irq, .-__uart_tx_irq
	.section	.text.vfs_uart_open,"ax",@progbits
	.align	1
	.globl	vfs_uart_open
	.type	vfs_uart_open, @function
vfs_uart_open:
.LFB7:
	.loc 1 66 1
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
	.loc 1 67 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 68 17
	sw	zero,-24(s0)
	.loc 1 71 8
	lw	a5,-40(s0)
	beq	a5,zero,.L11
	.loc 1 71 27 discriminator 1
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 71 21 discriminator 1
	beq	a5,zero,.L11
	.loc 1 74 15
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 74 21
	lbu	a4,17(a5)
	.loc 1 74 12
	li	a5,1
	bne	a4,a5,.L12
	.loc 1 76 41
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 76 22
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 78 41
	lw	a5,-24(s0)
	addi	a5,a5,32
	.loc 1 78 13
	mv	a0,a5
	call	aos_mutex_new
	.loc 1 79 79
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 1 79 43
	li	a2,0
	li	a1,1
	mv	a0,a5
	call	xStreamBufferGenericCreate
	mv	a4,a0
	.loc 1 79 41 discriminator 1
	lw	a5,-24(s0)
	sw	a4,16(a5)
	.loc 1 80 79
	lw	a5,-24(s0)
	lw	a5,28(a5)
	.loc 1 80 43
	li	a2,0
	li	a1,1
	mv	a0,a5
	call	xStreamBufferGenericCreate
	mv	a4,a0
	.loc 1 80 41 discriminator 1
	lw	a5,-24(s0)
	sw	a4,20(a5)
	.loc 1 81 25
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 81 16
	beq	a5,zero,.L13
	.loc 1 81 63 discriminator 1
	lw	a5,-24(s0)
	lw	a5,20(a5)
	.loc 1 81 52 discriminator 1
	bne	a5,zero,.L14
.L13:
	.loc 1 82 24
	li	a5,-22
	j	.L15
.L14:
	.loc 1 86 13
	lui	a5,%hi(__uart_tx_irq)
	addi	a2,a5,%lo(__uart_tx_irq)
	li	a1,0
	lw	a0,-24(s0)
	call	hal_uart_notify_register
	.loc 1 87 13
	lui	a5,%hi(__uart_rx_irq)
	addi	a2,a5,%lo(__uart_rx_irq)
	li	a1,1
	lw	a0,-24(s0)
	call	hal_uart_notify_register
	.loc 1 88 19
	lw	a0,-24(s0)
	call	hal_uart_init
	sw	a0,-20(s0)
	.loc 1 74 12
	j	.L17
.L12:
	.loc 1 90 17
	sw	zero,-20(s0)
	.loc 1 74 12
	j	.L17
.L11:
	.loc 1 93 13
	li	a5,-22
	sw	a5,-20(s0)
.L17:
	.loc 1 96 12
	lw	a5,-20(s0)
.L15:
	.loc 1 97 1
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
.LFE7:
	.size	vfs_uart_open, .-vfs_uart_open
	.section	.text.vfs_uart_close,"ax",@progbits
	.align	1
	.globl	vfs_uart_close
	.type	vfs_uart_close, @function
vfs_uart_close:
.LFB8:
	.loc 1 100 1
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
	.loc 1 101 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 102 17
	sw	zero,-24(s0)
	.loc 1 105 8
	lw	a5,-36(s0)
	beq	a5,zero,.L19
	.loc 1 105 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 105 21 discriminator 1
	beq	a5,zero,.L19
	.loc 1 108 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 108 21
	lbu	a4,17(a5)
	.loc 1 108 12
	li	a5,1
	bne	a4,a5,.L20
	.loc 1 110 41
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 110 22
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 112 16
	lw	a5,-24(s0)
	beq	a5,zero,.L21
	.loc 1 114 46
	lw	a5,-24(s0)
	addi	a5,a5,32
	.loc 1 114 17
	mv	a0,a5
	call	aos_mutex_free
	.loc 1 115 45
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 115 17
	mv	a0,a5
	call	vStreamBufferDelete
	.loc 1 116 45
	lw	a5,-24(s0)
	lw	a5,20(a5)
	.loc 1 116 17
	mv	a0,a5
	call	vStreamBufferDelete
	.loc 1 118 23
	lw	a0,-24(s0)
	call	hal_uart_finalize
	sw	a0,-20(s0)
	.loc 1 108 12
	j	.L23
.L21:
	.loc 1 120 21
	li	a5,-22
	sw	a5,-20(s0)
	.loc 1 108 12
	j	.L23
.L20:
	.loc 1 123 17
	sw	zero,-20(s0)
	.loc 1 108 12
	j	.L23
.L19:
	.loc 1 126 13
	li	a5,-22
	sw	a5,-20(s0)
.L23:
	.loc 1 129 12
	lw	a5,-20(s0)
	.loc 1 130 1
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
.LFE8:
	.size	vfs_uart_close, .-vfs_uart_close
	.section	.text.vfs_uart_read,"ax",@progbits
	.align	1
	.globl	vfs_uart_read
	.type	vfs_uart_read, @function
vfs_uart_read:
.LFB9:
	.loc 1 135 1
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
	.loc 1 136 14
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 137 17
	sw	zero,-28(s0)
	.loc 1 141 8
	lw	a5,-36(s0)
	beq	a5,zero,.L26
	.loc 1 141 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 141 21 discriminator 1
	beq	a5,zero,.L26
	.loc 1 144 37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 144 18
	lw	a5,4(a5)
	sw	a5,-28(s0)
	.loc 1 146 12
	lw	a5,-44(s0)
	beq	a5,zero,.L27
	.loc 1 146 26 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L27
	.loc 1 155 42
	lw	a5,-28(s0)
	addi	a5,a5,32
	.loc 1 155 13
	li	a1,-1
	mv	a0,a5
	call	aos_mutex_lock
	.loc 1 157 17
	sw	zero,-20(s0)
	.loc 1 160 37
	lw	a5,-28(s0)
	lbu	a4,52(a5)
	.loc 1 160 70
	li	a5,1
	bne	a4,a5,.L28
	.loc 1 160 21 discriminator 1
	li	a5,-1
	sw	a5,-24(s0)
	j	.L31
.L28:
	.loc 1 160 21 is_stmt 0 discriminator 2
	sw	zero,-24(s0)
.L31:
	.loc 1 163 53 is_stmt 1
	lw	a5,-28(s0)
	lw	a0,16(a5)
	.loc 1 163 24
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a1,a4,a5
	.loc 1 164 63
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 1 163 24
	lw	a3,-24(s0)
	mv	a2,a5
	call	xStreamBufferReceive
	mv	a4,a0
	.loc 1 163 21 discriminator 1
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 165 20
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	beq	a4,a5,.L30
	.loc 1 165 37 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L30
	.loc 1 164 45
	j	.L31
.L30:
	.loc 1 170 44
	lw	a5,-28(s0)
	addi	a5,a5,32
	.loc 1 170 13
	mv	a0,a5
	call	aos_mutex_unlock
	.loc 1 146 12
	j	.L33
.L27:
	.loc 1 172 17
	li	a5,-22
	sw	a5,-20(s0)
	.loc 1 146 12
	j	.L33
.L26:
	.loc 1 175 13
	li	a5,-22
	sw	a5,-20(s0)
.L33:
	.loc 1 178 12
	lw	a5,-20(s0)
	.loc 1 179 1
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
.LFE9:
	.size	vfs_uart_read, .-vfs_uart_read
	.section	.text.vfs_uart_write,"ax",@progbits
	.align	1
	.globl	vfs_uart_write
	.type	vfs_uart_write, @function
vfs_uart_write:
.LFB10:
	.loc 1 183 1
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
	.loc 1 184 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 185 17
	sw	zero,-24(s0)
	.loc 1 188 8
	lw	a5,-36(s0)
	beq	a5,zero,.L36
	.loc 1 188 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 188 21 discriminator 1
	beq	a5,zero,.L36
	.loc 1 191 37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 191 18
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 193 12
	lw	a5,-24(s0)
	beq	a5,zero,.L37
	.loc 1 202 45
	lw	a5,-24(s0)
	lw	a5,20(a5)
	.loc 1 202 19
	li	a3,0
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	xStreamBufferSend
	mv	a5,a0
	.loc 1 202 17 discriminator 1
	sw	a5,-20(s0)
	.loc 1 205 16
	lw	a5,-20(s0)
	ble	a5,zero,.L41
	.loc 1 206 17
	lw	a0,-24(s0)
	call	hal_uart_send_trigger
	.loc 1 193 12
	j	.L41
.L37:
	.loc 1 209 17
	li	a5,-22
	sw	a5,-20(s0)
	.loc 1 193 12
	j	.L41
.L36:
	.loc 1 212 13
	li	a5,-22
	sw	a5,-20(s0)
	j	.L39
.L41:
	.loc 1 193 12
	nop
.L39:
	.loc 1 215 12
	lw	a5,-20(s0)
	.loc 1 216 1
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
	.size	vfs_uart_write, .-vfs_uart_write
	.section	.text.vfs_uart_poll,"ax",@progbits
	.align	1
	.globl	vfs_uart_poll
	.type	vfs_uart_poll, @function
vfs_uart_poll:
.LFB11:
	.loc 1 219 1
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
	mv	a5,a1
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sb	a5,-37(s0)
	.loc 1 220 45
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 220 17
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 222 34
	lw	a5,-20(s0)
	addi	a5,a5,32
	.loc 1 222 5
	li	a1,-1
	mv	a0,a5
	call	aos_mutex_lock
	.loc 1 223 9
	lbu	a5,-37(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 223 8
	beq	a5,zero,.L43
	.loc 1 225 9
	call	vTaskEnterCritical
	.loc 1 227 27
	lw	a5,-20(s0)
	sw	zero,36(a5)
	.loc 1 228 29
	lw	a5,-20(s0)
	sw	zero,44(a5)
	.loc 1 229 9
	call	vTaskExitCritical
	.loc 1 231 9
	j	.L44
.L43:
	.loc 1 234 5
	call	vTaskEnterCritical
	.loc 1 236 23
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	sw	a4,36(a5)
	.loc 1 237 18
	lw	a5,-20(s0)
	lw	a4,-48(s0)
	sw	a4,40(a5)
	.loc 1 238 25
	lw	a5,-20(s0)
	lw	a4,-52(s0)
	sw	a4,44(a5)
	.loc 1 239 5
	call	vTaskExitCritical
	.loc 1 242 38
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 242 9
	mv	a0,a5
	call	xStreamBufferIsEmpty
	mv	a4,a0
	.loc 1 242 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L46
	.loc 1 243 34
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 243 39
	lh	a4,6(a5)
	.loc 1 243 34
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 243 49
	ori	a4,a4,1
	slli	a4,a4,16
	srai	a4,a4,16
	sh	a4,6(a5)
	.loc 1 244 10
	lw	a5,-44(s0)
	lw	a1,-52(s0)
	lw	a0,-48(s0)
	jalr	a5
.LVL1:
	j	.L44
.L46:
	.loc 1 246 1
	nop
.L44:
	.loc 1 247 36
	lw	a5,-20(s0)
	addi	a5,a5,32
	.loc 1 247 5
	mv	a0,a5
	call	aos_mutex_unlock
	.loc 1 249 12
	li	a5,0
	.loc 1 250 1
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
.LFE11:
	.size	vfs_uart_poll, .-vfs_uart_poll
	.section	.text.uart_ioctl_cmd_waimode,"ax",@progbits
	.align	1
	.globl	uart_ioctl_cmd_waimode
	.type	uart_ioctl_cmd_waimode, @function
uart_ioctl_cmd_waimode:
.LFB12:
	.loc 1 253 1
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
	.loc 1 254 9
	sw	zero,-20(s0)
	.loc 1 257 26
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	.loc 1 259 8
	lw	a5,-24(s0)
	bne	a5,zero,.L48
	.loc 1 260 16
	li	a5,-22
	j	.L49
.L48:
	.loc 1 263 12
	lw	a5,-24(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	.loc 1 265 62
	lw	a5,-24(s0)
	lw	a4,8(a5)
	.loc 1 265 74
	li	a5,1000
	mul	a4,a4,a5
	.loc 1 265 13
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a5,a5,6
	sw	a5,-32(s0)
.L52:
	.loc 1 268 45
	lw	a5,-36(s0)
	lw	a0,16(a5)
	.loc 1 269 56
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 1 268 16
	lw	a5,-20(s0)
	add	a1,a4,a5
	.loc 1 270 44
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 1 268 16
	lw	a3,-32(s0)
	mv	a2,a5
	call	xStreamBufferReceive
	mv	a4,a0
	.loc 1 268 13 discriminator 1
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 272 12
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	beq	a4,a5,.L50
	.loc 1 272 29 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L50
	.loc 1 275 12
	lw	a4,-40(s0)
	li	a5,4
	bne	a4,a5,.L52
	.loc 1 276 16
	lw	a5,-20(s0)
	bgt	a5,zero,.L53
	.loc 1 271 37
	j	.L52
.L53:
	.loc 1 277 17
	nop
.L50:
	.loc 1 282 12
	lw	a5,-20(s0)
.L49:
	.loc 1 283 1
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
.LFE12:
	.size	uart_ioctl_cmd_waimode, .-uart_ioctl_cmd_waimode
	.section	.text.uart_ioctl_cmd_setconfig,"ax",@progbits
	.align	1
	.globl	uart_ioctl_cmd_setconfig
	.type	uart_ioctl_cmd_setconfig, @function
uart_ioctl_cmd_setconfig:
.LFB13:
	.loc 1 286 1
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
	.loc 1 287 24
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 1 290 8
	lw	a5,-24(s0)
	bne	a5,zero,.L55
	.loc 1 291 16
	li	a5,-22
	j	.L56
.L55:
	.loc 1 294 15
	lw	a5,-24(s0)
	lbu	a4,4(a5)
	.loc 1 294 8
	li	a5,1
	bne	a4,a5,.L57
	.loc 1 295 16
	li	a5,1
	sb	a5,-17(s0)
	j	.L58
.L57:
	.loc 1 296 22
	lw	a5,-24(s0)
	lbu	a4,4(a5)
	.loc 1 296 15
	li	a5,2
	bne	a4,a5,.L59
	.loc 1 297 16
	li	a5,2
	sb	a5,-17(s0)
	j	.L58
.L59:
	.loc 1 299 16
	sb	zero,-17(s0)
.L58:
	.loc 1 302 5
	lw	a5,-24(s0)
	lw	a5,0(a5)
	lbu	a4,-17(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	hal_uart_setconfig
	.loc 1 304 12
	li	a5,0
.L56:
	.loc 1 305 1
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
.LFE13:
	.size	uart_ioctl_cmd_setconfig, .-uart_ioctl_cmd_setconfig
	.section	.text.vfs_uart_ioctl,"ax",@progbits
	.align	1
	.globl	vfs_uart_ioctl
	.type	vfs_uart_ioctl, @function
vfs_uart_ioctl:
.LFB14:
	.loc 1 308 1
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
	.loc 1 309 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 310 17
	sw	zero,-24(s0)
	.loc 1 313 8
	lw	a5,-36(s0)
	beq	a5,zero,.L61
	.loc 1 313 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 313 21 discriminator 1
	bne	a5,zero,.L62
.L61:
	.loc 1 314 16
	li	a5,-22
	j	.L63
.L62:
	.loc 1 318 33
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 318 14
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 320 8
	lw	a5,-24(s0)
	bne	a5,zero,.L64
	.loc 1 321 16
	li	a5,-22
	j	.L63
.L64:
	.loc 1 324 34
	lw	a5,-24(s0)
	addi	a5,a5,32
	.loc 1 324 5
	li	a1,-1
	mv	a0,a5
	call	aos_mutex_lock
	.loc 1 325 5
	lw	a4,-40(s0)
	li	a5,8
	beq	a4,a5,.L65
	lw	a4,-40(s0)
	li	a5,8
	bgt	a4,a5,.L66
	lw	a4,-40(s0)
	li	a5,7
	beq	a4,a5,.L67
	lw	a4,-40(s0)
	li	a5,7
	bgt	a4,a5,.L66
	lw	a4,-40(s0)
	li	a5,6
	beq	a4,a5,.L68
	lw	a4,-40(s0)
	li	a5,6
	bgt	a4,a5,.L66
	lw	a4,-40(s0)
	li	a5,5
	bgt	a4,a5,.L66
	lw	a4,-40(s0)
	li	a5,4
	bge	a4,a5,.L69
	lw	a4,-40(s0)
	li	a5,2
	beq	a4,a5,.L70
	lw	a4,-40(s0)
	li	a5,3
	beq	a4,a5,.L71
	j	.L66
.L69:
	.loc 1 329 19
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	uart_ioctl_cmd_waimode
	sw	a0,-20(s0)
	.loc 1 331 9
	j	.L72
.L70:
	.loc 1 334 13
	li	a1,0
	lw	a0,-24(s0)
	call	hal_uart_send_flush
	.loc 1 336 9
	j	.L72
.L71:
	.loc 1 339 13
	lw	a1,-44(s0)
	lw	a0,-24(s0)
	call	hal_uart_setbaud
	.loc 1 341 9
	j	.L72
.L65:
	.loc 1 344 19
	lw	a1,-44(s0)
	lw	a0,-24(s0)
	call	uart_ioctl_cmd_setconfig
	sw	a0,-20(s0)
	.loc 1 346 9
	j	.L72
.L68:
	.loc 1 349 39
	lw	a5,-24(s0)
	li	a4,1
	sb	a4,52(a5)
	.loc 1 351 9
	j	.L72
.L67:
	.loc 1 354 39
	lw	a5,-24(s0)
	li	a4,2
	sb	a4,52(a5)
	.loc 1 356 9
	j	.L72
.L66:
	.loc 1 359 17
	li	a5,-22
	sw	a5,-20(s0)
.L72:
	.loc 1 363 36
	lw	a5,-24(s0)
	addi	a5,a5,32
	.loc 1 363 5
	mv	a0,a5
	call	aos_mutex_unlock
	.loc 1 365 12
	lw	a5,-20(s0)
.L63:
	.loc 1 366 1
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
.LFE14:
	.size	vfs_uart_ioctl, .-vfs_uart_ioctl
	.section	.text.vfs_uart_sync,"ax",@progbits
	.align	1
	.globl	vfs_uart_sync
	.type	vfs_uart_sync, @function
vfs_uart_sync:
.LFB15:
	.loc 1 369 1
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
	.loc 1 370 17
	sw	zero,-20(s0)
	.loc 1 373 8
	lw	a5,-36(s0)
	beq	a5,zero,.L74
	.loc 1 373 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 373 21 discriminator 1
	bne	a5,zero,.L75
.L74:
	.loc 1 374 16
	li	a5,-22
	j	.L76
.L75:
	.loc 1 378 33
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 378 14
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 380 8
	lw	a5,-20(s0)
	bne	a5,zero,.L77
	.loc 1 381 16
	li	a5,-22
	j	.L76
.L77:
	.loc 1 384 34
	lw	a5,-20(s0)
	addi	a5,a5,32
	.loc 1 384 5
	li	a1,-1
	mv	a0,a5
	call	aos_mutex_lock
	.loc 1 385 5
	li	a1,0
	lw	a0,-20(s0)
	call	hal_uart_send_flush
	.loc 1 386 36
	lw	a5,-20(s0)
	addi	a5,a5,32
	.loc 1 386 5
	mv	a0,a5
	call	aos_mutex_unlock
	.loc 1 388 12
	li	a5,0
.L76:
	.loc 1 389 1
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
.LFE15:
	.size	vfs_uart_sync, .-vfs_uart_sync
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/stream_buffer.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timeval.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timespec.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/types.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/kernel.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/stat.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_dir.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_inode.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/yloop_types.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/device/vfs_uart.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/hal/soc/uart.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x12cd
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1e
	.4byte	.LASF224
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x5a
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0xc8
	.byte	0x17
	.4byte	0x61
	.uleb128 0x1f
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x82
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x1e
	.byte	0xe
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x38
	.byte	0xf
	.4byte	0x39
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3c
	.byte	0x18
	.4byte	0x40
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3f
	.byte	0x18
	.4byte	0x40
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x4b
	.byte	0x18
	.4byte	0x40
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x5a
	.byte	0x14
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x66
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x7b
	.uleb128 0x20
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0xd5
	.byte	0x18
	.4byte	0x40
	.uleb128 0x4
	.4byte	0x127
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0x15
	.4byte	0x127
	.uleb128 0x4
	.4byte	0x12e
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x4c
	.byte	0x11
	.4byte	0xfc
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0x51
	.byte	0x12
	.4byte	0x108
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0x28
	.byte	0x12
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x34
	.byte	0x1b
	.4byte	0x5a
	.uleb128 0x4
	.4byte	0x179
	.uleb128 0x16
	.4byte	0x184
	.uleb128 0x1
	.4byte	0x114
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x7
	.byte	0x3f
	.byte	0x11
	.4byte	0x150
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x7
	.byte	0x41
	.byte	0x12
	.4byte	0x168
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x8
	.byte	0x45
	.byte	0x24
	.4byte	0x1a8
	.uleb128 0x4
	.4byte	0x1ad
	.uleb128 0x21
	.4byte	.LASF225
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x9
	.byte	0x2a
	.byte	0x19
	.4byte	0x6f
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x10
	.byte	0xa
	.byte	0x2f
	.byte	0x8
	.4byte	0x1e6
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0xa
	.byte	0x30
	.byte	0x9
	.4byte	0x1b2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0xa
	.byte	0x31
	.byte	0x7
	.4byte	0x47
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0xb
	.byte	0x61
	.byte	0x14
	.4byte	0x9c
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0xb
	.byte	0x66
	.byte	0x15
	.4byte	0xa8
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0xb
	.byte	0x89
	.byte	0x11
	.4byte	0xe4
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0xb
	.byte	0x9f
	.byte	0x11
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0xb
	.byte	0xa3
	.byte	0x11
	.4byte	0xcc
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xb
	.byte	0xa7
	.byte	0x11
	.4byte	0xd8
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xb
	.byte	0xbb
	.byte	0x12
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0xb
	.byte	0xc0
	.byte	0x13
	.4byte	0x116
	.uleb128 0xd
	.byte	0x4
	.byte	0xc
	.byte	0x16
	.byte	0xc
	.4byte	0x25d
	.uleb128 0x13
	.string	"hdl"
	.byte	0xc
	.byte	0x18
	.byte	0xf
	.4byte	0x114
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0xc
	.byte	0x19
	.byte	0x7
	.4byte	0x246
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0xc
	.byte	0x1c
	.byte	0x17
	.4byte	0x25d
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x58
	.byte	0xd
	.byte	0x1b
	.byte	0x8
	.4byte	0x339
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xd
	.byte	0x1d
	.byte	0x9
	.4byte	0x20a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0xd
	.byte	0x1e
	.byte	0x9
	.4byte	0x1fe
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xd
	.byte	0x1f
	.byte	0xa
	.4byte	0x22e
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xd
	.byte	0x20
	.byte	0xb
	.4byte	0x23a
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0xd
	.byte	0x21
	.byte	0x9
	.4byte	0x216
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0xd
	.byte	0x22
	.byte	0x9
	.4byte	0x222
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0xd
	.byte	0x23
	.byte	0x9
	.4byte	0x20a
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0xd
	.byte	0x24
	.byte	0x9
	.4byte	0x138
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0xd
	.byte	0x2a
	.byte	0x13
	.4byte	0x1be
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0xd
	.byte	0x2b
	.byte	0x13
	.4byte	0x1be
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0xd
	.byte	0x2c
	.byte	0x13
	.4byte	0x1be
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0xd
	.byte	0x2d
	.byte	0xd
	.4byte	0x1f2
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0xd
	.byte	0x2e
	.byte	0xc
	.4byte	0x1e6
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0xd
	.byte	0x30
	.byte	0x8
	.4byte	0x339
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.4byte	0x47
	.4byte	0x349
	.uleb128 0x1a
	.4byte	0x82
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x24
	.byte	0xe
	.byte	0x4
	.byte	0x8
	.4byte	0x3cc
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0xe
	.byte	0x5
	.byte	0xa
	.4byte	0x47
	.byte	0
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0xe
	.byte	0x6
	.byte	0xa
	.4byte	0x47
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0xe
	.byte	0x7
	.byte	0xa
	.4byte	0x47
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0xe
	.byte	0x8
	.byte	0xa
	.4byte	0x47
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0xe
	.byte	0x9
	.byte	0xa
	.4byte	0x47
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0xe
	.byte	0xa
	.byte	0xa
	.4byte	0x47
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0xe
	.byte	0xb
	.byte	0xa
	.4byte	0x47
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0xe
	.byte	0xc
	.byte	0xa
	.4byte	0x47
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0xe
	.byte	0xd
	.byte	0xa
	.4byte	0x47
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0xe
	.byte	0x10
	.byte	0x9
	.4byte	0x3fd
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0xe
	.byte	0x11
	.byte	0x9
	.4byte	0x7b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0xe
	.byte	0x12
	.byte	0xd
	.4byte	0x15c
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0xe
	.byte	0x13
	.byte	0xa
	.4byte	0x3fd
	.byte	0x5
	.byte	0
	.uleb128 0x19
	.4byte	0x127
	.4byte	0x40c
	.uleb128 0x22
	.4byte	0x82
	.byte	0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xe
	.byte	0x14
	.byte	0x3
	.4byte	0x3cc
	.uleb128 0xd
	.byte	0x8
	.byte	0xe
	.byte	0x16
	.byte	0x9
	.4byte	0x43c
	.uleb128 0x2
	.4byte	.LASF78
	.byte	0xe
	.byte	0x17
	.byte	0x9
	.4byte	0x7b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0xe
	.byte	0x18
	.byte	0x9
	.4byte	0x7b
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0xe
	.byte	0x19
	.byte	0x3
	.4byte	0x418
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0xf
	.byte	0x2c
	.byte	0x1f
	.4byte	0x4bd
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x1c
	.byte	0xf
	.byte	0x46
	.byte	0x8
	.4byte	0x4bd
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0xf
	.byte	0x47
	.byte	0xb
	.4byte	0x72c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0xf
	.byte	0x48
	.byte	0xb
	.4byte	0x740
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xf
	.byte	0x49
	.byte	0xf
	.4byte	0x75e
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xf
	.byte	0x4a
	.byte	0xf
	.4byte	0x782
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0xf
	.byte	0x4b
	.byte	0xb
	.4byte	0x7a0
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0xf
	.byte	0x4d
	.byte	0xb
	.4byte	0x7cf
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0xf
	.byte	0x4f
	.byte	0xb
	.4byte	0x740
	.byte	0x18
	.byte	0
	.uleb128 0x15
	.4byte	0x454
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0xf
	.byte	0x2d
	.byte	0x1d
	.4byte	0x5e0
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x50
	.byte	0xf
	.byte	0x52
	.byte	0x8
	.4byte	0x5e0
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0xf
	.byte	0x53
	.byte	0xb
	.4byte	0x7ed
	.byte	0
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0xf
	.byte	0x54
	.byte	0xb
	.4byte	0x740
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xf
	.byte	0x55
	.byte	0xf
	.4byte	0x80b
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xf
	.byte	0x56
	.byte	0xf
	.4byte	0x829
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0xf
	.byte	0x57
	.byte	0xd
	.4byte	0x847
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0xf
	.byte	0x58
	.byte	0xb
	.4byte	0x740
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0xf
	.byte	0x59
	.byte	0xb
	.4byte	0x86a
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0xf
	.byte	0x5a
	.byte	0xb
	.4byte	0x883
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0xf
	.byte	0x5b
	.byte	0xb
	.4byte	0x8a1
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0xf
	.byte	0x5c
	.byte	0x12
	.4byte	0x8bf
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xf
	.byte	0x5d
	.byte	0x15
	.4byte	0x8dd
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0xf
	.byte	0x5e
	.byte	0xb
	.4byte	0x8f6
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xf
	.byte	0x5f
	.byte	0xb
	.4byte	0x883
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0xf
	.byte	0x60
	.byte	0xb
	.4byte	0x883
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0xf
	.byte	0x61
	.byte	0xc
	.4byte	0x90b
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0xf
	.byte	0x62
	.byte	0xc
	.4byte	0x924
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0xf
	.byte	0x63
	.byte	0xc
	.4byte	0x93e
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0xf
	.byte	0x64
	.byte	0xb
	.4byte	0x7a0
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0xf
	.byte	0x65
	.byte	0xb
	.4byte	0x961
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0xf
	.byte	0x66
	.byte	0xb
	.4byte	0x7ed
	.byte	0x4c
	.byte	0
	.uleb128 0x15
	.4byte	0x4ce
	.uleb128 0x23
	.4byte	.LASF226
	.byte	0x4
	.byte	0xf
	.byte	0x2f
	.byte	0x7
	.4byte	0x609
	.uleb128 0x1b
	.4byte	.LASF104
	.byte	0x30
	.byte	0x17
	.4byte	0x609
	.uleb128 0x1b
	.4byte	.LASF105
	.byte	0x31
	.byte	0x15
	.4byte	0x60e
	.byte	0
	.uleb128 0x4
	.4byte	0x448
	.uleb128 0x4
	.4byte	0x4c2
	.uleb128 0xd
	.byte	0x14
	.byte	0xf
	.byte	0x35
	.byte	0x9
	.4byte	0x66b
	.uleb128 0x13
	.string	"ops"
	.byte	0xf
	.byte	0x36
	.byte	0x17
	.4byte	0x5e5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0xf
	.byte	0x37
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0xf
	.byte	0x38
	.byte	0xb
	.4byte	0x122
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0xf
	.byte	0x39
	.byte	0x9
	.4byte	0x7b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xf
	.byte	0x3a
	.byte	0xd
	.4byte	0x15c
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xf
	.byte	0x3b
	.byte	0xd
	.4byte	0x15c
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0xf
	.byte	0x3c
	.byte	0x3
	.4byte	0x613
	.uleb128 0xd
	.byte	0xc
	.byte	0xf
	.byte	0x3e
	.byte	0x9
	.4byte	0x6a8
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0xf
	.byte	0x3f
	.byte	0xe
	.4byte	0x6a8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0xf
	.byte	0x40
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0xf
	.byte	0x41
	.byte	0xc
	.4byte	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x66b
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0xf
	.byte	0x42
	.byte	0x3
	.4byte	0x677
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0xf
	.byte	0x45
	.byte	0x10
	.4byte	0x6c5
	.uleb128 0x4
	.4byte	0x6ca
	.uleb128 0x16
	.4byte	0x6da
	.uleb128 0x1
	.4byte	0x6da
	.uleb128 0x1
	.4byte	0x114
	.byte	0
	.uleb128 0x4
	.4byte	0x6df
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x8
	.byte	0x10
	.byte	0x7
	.byte	0x8
	.4byte	0x713
	.uleb128 0x13
	.string	"fd"
	.byte	0x10
	.byte	0x8
	.byte	0x9
	.4byte	0x7b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0x10
	.byte	0x9
	.byte	0xb
	.4byte	0x39
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x10
	.byte	0xa
	.byte	0xb
	.4byte	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	0x7b
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x6a8
	.uleb128 0x1
	.4byte	0x727
	.byte	0
	.uleb128 0x4
	.4byte	0x6ad
	.uleb128 0x4
	.4byte	0x713
	.uleb128 0x6
	.4byte	0x7b
	.4byte	0x740
	.uleb128 0x1
	.4byte	0x727
	.byte	0
	.uleb128 0x4
	.4byte	0x731
	.uleb128 0x6
	.4byte	0x144
	.4byte	0x75e
	.uleb128 0x1
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x745
	.uleb128 0x6
	.4byte	0x144
	.4byte	0x77c
	.uleb128 0x1
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x77c
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x781
	.uleb128 0x24
	.uleb128 0x4
	.4byte	0x763
	.uleb128 0x6
	.4byte	0x7b
	.4byte	0x7a0
	.uleb128 0x1
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x5a
	.byte	0
	.uleb128 0x4
	.4byte	0x787
	.uleb128 0x6
	.4byte	0x7b
	.4byte	0x7c8
	.uleb128 0x1
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x7c8
	.uleb128 0x1
	.4byte	0x6b9
	.uleb128 0x1
	.4byte	0x6da
	.uleb128 0x1
	.4byte	0x114
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.4byte	.LASF120
	.uleb128 0x4
	.4byte	0x7a5
	.uleb128 0x6
	.4byte	0x7b
	.4byte	0x7ed
	.uleb128 0x1
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x133
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x4
	.4byte	0x7d4
	.uleb128 0x6
	.4byte	0x144
	.4byte	0x80b
	.uleb128 0x1
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x122
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x7f2
	.uleb128 0x6
	.4byte	0x144
	.4byte	0x829
	.uleb128 0x1
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x133
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x810
	.uleb128 0x6
	.4byte	0x138
	.4byte	0x847
	.uleb128 0x1
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x4
	.4byte	0x82e
	.uleb128 0x6
	.4byte	0x7b
	.4byte	0x865
	.uleb128 0x1
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x133
	.uleb128 0x1
	.4byte	0x865
	.byte	0
	.uleb128 0x4
	.4byte	0x275
	.uleb128 0x4
	.4byte	0x84c
	.uleb128 0x6
	.4byte	0x7b
	.4byte	0x883
	.uleb128 0x1
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x133
	.byte	0
	.uleb128 0x4
	.4byte	0x86f
	.uleb128 0x6
	.4byte	0x7b
	.4byte	0x8a1
	.uleb128 0x1
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x133
	.uleb128 0x1
	.4byte	0x133
	.byte	0
	.uleb128 0x4
	.4byte	0x888
	.uleb128 0x6
	.4byte	0x8ba
	.4byte	0x8ba
	.uleb128 0x1
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x133
	.byte	0
	.uleb128 0x4
	.4byte	0x43c
	.uleb128 0x4
	.4byte	0x8a6
	.uleb128 0x6
	.4byte	0x8d8
	.4byte	0x8d8
	.uleb128 0x1
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x8ba
	.byte	0
	.uleb128 0x4
	.4byte	0x40c
	.uleb128 0x4
	.4byte	0x8c4
	.uleb128 0x6
	.4byte	0x7b
	.4byte	0x8f6
	.uleb128 0x1
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x8ba
	.byte	0
	.uleb128 0x4
	.4byte	0x8e2
	.uleb128 0x16
	.4byte	0x90b
	.uleb128 0x1
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x8ba
	.byte	0
	.uleb128 0x4
	.4byte	0x8fb
	.uleb128 0x6
	.4byte	0x47
	.4byte	0x924
	.uleb128 0x1
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x8ba
	.byte	0
	.uleb128 0x4
	.4byte	0x910
	.uleb128 0x16
	.4byte	0x93e
	.uleb128 0x1
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x8ba
	.uleb128 0x1
	.4byte	0x47
	.byte	0
	.uleb128 0x4
	.4byte	0x929
	.uleb128 0x6
	.4byte	0x7b
	.4byte	0x95c
	.uleb128 0x1
	.4byte	0x727
	.uleb128 0x1
	.4byte	0x133
	.uleb128 0x1
	.4byte	0x95c
	.byte	0
	.uleb128 0x4
	.4byte	0x349
	.uleb128 0x4
	.4byte	0x943
	.uleb128 0xe
	.4byte	0x32
	.byte	0x11
	.byte	0x18
	.4byte	0x984
	.uleb128 0x5
	.4byte	.LASF121
	.byte	0
	.uleb128 0x5
	.4byte	.LASF122
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF123
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0x11
	.byte	0x1c
	.byte	0x3
	.4byte	0x966
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x8
	.byte	0x11
	.byte	0x1e
	.byte	0x10
	.4byte	0x9b8
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0x11
	.byte	0x1f
	.byte	0xe
	.4byte	0x168
	.byte	0
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x11
	.byte	0x20
	.byte	0x17
	.4byte	0x984
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x11
	.byte	0x21
	.byte	0x3
	.4byte	0x990
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0xc
	.byte	0x11
	.byte	0x23
	.byte	0x10
	.4byte	0x9f9
	.uleb128 0x13
	.string	"buf"
	.byte	0x11
	.byte	0x24
	.byte	0xb
	.4byte	0x122
	.byte	0
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x11
	.byte	0x25
	.byte	0x9
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0x11
	.byte	0x26
	.byte	0xe
	.4byte	0x168
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0x11
	.byte	0x27
	.byte	0x3
	.4byte	0x9c4
	.uleb128 0x25
	.4byte	.LASF227
	.byte	0x11
	.byte	0x2a
	.byte	0x1e
	.4byte	0x4bd
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.4byte	.LASF133
	.uleb128 0xe
	.4byte	0x32
	.byte	0x12
	.byte	0xc
	.4byte	0xa42
	.uleb128 0x5
	.4byte	.LASF134
	.byte	0
	.uleb128 0x5
	.4byte	.LASF135
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF136
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF137
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF138
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0x12
	.byte	0x12
	.byte	0x3
	.4byte	0xa18
	.uleb128 0xe
	.4byte	0x32
	.byte	0x12
	.byte	0x17
	.4byte	0xa66
	.uleb128 0x5
	.4byte	.LASF140
	.byte	0
	.uleb128 0x5
	.4byte	.LASF141
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0x12
	.byte	0x1a
	.byte	0x3
	.4byte	0xa4e
	.uleb128 0xe
	.4byte	0x32
	.byte	0x12
	.byte	0x1f
	.4byte	0xa96
	.uleb128 0x5
	.4byte	.LASF143
	.byte	0
	.uleb128 0x5
	.4byte	.LASF144
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF145
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF146
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF147
	.byte	0x12
	.byte	0x24
	.byte	0x3
	.4byte	0xa72
	.uleb128 0xe
	.4byte	0x32
	.byte	0x12
	.byte	0x29
	.4byte	0xac0
	.uleb128 0x5
	.4byte	.LASF148
	.byte	0
	.uleb128 0x5
	.4byte	.LASF149
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF150
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF151
	.byte	0x12
	.byte	0x2d
	.byte	0x3
	.4byte	0xaa2
	.uleb128 0xe
	.4byte	0x32
	.byte	0x12
	.byte	0x32
	.4byte	0xaea
	.uleb128 0x5
	.4byte	.LASF152
	.byte	0
	.uleb128 0x5
	.4byte	.LASF153
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF154
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF155
	.byte	0x12
	.byte	0x36
	.byte	0x3
	.4byte	0xacc
	.uleb128 0xe
	.4byte	0x32
	.byte	0x12
	.byte	0x3b
	.4byte	0xb0e
	.uleb128 0x5
	.4byte	.LASF156
	.byte	0
	.uleb128 0x5
	.4byte	.LASF157
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF158
	.byte	0x12
	.byte	0x3e
	.byte	0x3
	.4byte	0xaf6
	.uleb128 0xd
	.byte	0xc
	.byte	0x12
	.byte	0x43
	.byte	0x9
	.4byte	0xb72
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0x12
	.byte	0x44
	.byte	0xe
	.4byte	0x168
	.byte	0
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x12
	.byte	0x45
	.byte	0x1b
	.4byte	0xa42
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x12
	.byte	0x46
	.byte	0x17
	.4byte	0xac0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0x12
	.byte	0x47
	.byte	0x1a
	.4byte	0xa66
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0x12
	.byte	0x48
	.byte	0x1d
	.4byte	0xa96
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x12
	.byte	0x49
	.byte	0x15
	.4byte	0xaea
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF164
	.byte	0x12
	.byte	0x4a
	.byte	0x3
	.4byte	0xb1a
	.uleb128 0xd
	.byte	0x3c
	.byte	0x12
	.byte	0x4f
	.byte	0x9
	.4byte	0xc30
	.uleb128 0x2
	.4byte	.LASF165
	.byte	0x12
	.byte	0x50
	.byte	0xd
	.4byte	0x15c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF166
	.byte	0x12
	.byte	0x51
	.byte	0x13
	.4byte	0xb72
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF167
	.byte	0x12
	.byte	0x52
	.byte	0xb
	.4byte	0x114
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF168
	.byte	0x12
	.byte	0x53
	.byte	0xb
	.4byte	0x114
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF169
	.byte	0x12
	.byte	0x54
	.byte	0xe
	.4byte	0x168
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF170
	.byte	0x12
	.byte	0x55
	.byte	0xe
	.4byte	0x168
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF171
	.byte	0x12
	.byte	0x56
	.byte	0xb
	.4byte	0x114
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF172
	.byte	0x12
	.byte	0x57
	.byte	0xb
	.4byte	0x114
	.byte	0x24
	.uleb128 0x13
	.string	"fd"
	.byte	0x12
	.byte	0x58
	.byte	0xb
	.4byte	0x114
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF173
	.byte	0x12
	.byte	0x59
	.byte	0xb
	.4byte	0x114
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF174
	.byte	0x12
	.byte	0x5a
	.byte	0xb
	.4byte	0x114
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF175
	.byte	0x12
	.byte	0x5b
	.byte	0xd
	.4byte	0x15c
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF176
	.byte	0x12
	.byte	0x5c
	.byte	0xb
	.4byte	0x114
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0x12
	.byte	0x5d
	.byte	0x3
	.4byte	0xb7e
	.uleb128 0x26
	.4byte	0xa05
	.byte	0x1
	.byte	0x12
	.byte	0x17
	.uleb128 0x5
	.byte	0x3
	.4byte	uart_ops
	.uleb128 0x17
	.4byte	.LASF178
	.byte	0x12
	.byte	0x7c
	.byte	0x6
	.4byte	0xc61
	.uleb128 0x1
	.4byte	0xc61
	.uleb128 0x1
	.4byte	0x168
	.byte	0
	.uleb128 0x4
	.4byte	0xc30
	.uleb128 0x9
	.4byte	.LASF180
	.byte	0x12
	.byte	0x72
	.4byte	0x150
	.4byte	0xc80
	.uleb128 0x1
	.4byte	0xc61
	.uleb128 0x1
	.4byte	0x168
	.byte	0
	.uleb128 0x17
	.4byte	.LASF179
	.byte	0x12
	.byte	0x87
	.byte	0x6
	.4byte	0xc9c
	.uleb128 0x1
	.4byte	0xc61
	.uleb128 0x1
	.4byte	0x168
	.uleb128 0x1
	.4byte	0xac0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF181
	.2byte	0x28d
	.byte	0xc
	.4byte	0x184
	.4byte	0xcb2
	.uleb128 0x1
	.4byte	0x19c
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF182
	.byte	0x67
	.uleb128 0x1c
	.4byte	.LASF183
	.byte	0x66
	.uleb128 0x9
	.4byte	.LASF184
	.byte	0x12
	.byte	0x9d
	.4byte	0x150
	.4byte	0xcd3
	.uleb128 0x1
	.4byte	0xc61
	.byte	0
	.uleb128 0x10
	.4byte	.LASF185
	.2byte	0x138
	.byte	0x8
	.4byte	0x89
	.4byte	0xcf8
	.uleb128 0x1
	.4byte	0x19c
	.uleb128 0x1
	.4byte	0x77c
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x190
	.byte	0
	.uleb128 0x9
	.4byte	.LASF186
	.byte	0xc
	.byte	0xb1
	.4byte	0x7b
	.4byte	0xd0d
	.uleb128 0x1
	.4byte	0xd0d
	.byte	0
	.uleb128 0x4
	.4byte	0x269
	.uleb128 0x10
	.4byte	.LASF187
	.2byte	0x1f6
	.byte	0x8
	.4byte	0x89
	.4byte	0xd37
	.uleb128 0x1
	.4byte	0x19c
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x190
	.byte	0
	.uleb128 0x9
	.4byte	.LASF188
	.byte	0xc
	.byte	0xa7
	.4byte	0x7b
	.4byte	0xd51
	.uleb128 0x1
	.4byte	0xd0d
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x9
	.4byte	.LASF189
	.byte	0x12
	.byte	0xcb
	.4byte	0x150
	.4byte	0xd66
	.uleb128 0x1
	.4byte	0xc61
	.byte	0
	.uleb128 0x27
	.4byte	.LASF190
	.byte	0x8
	.2byte	0x265
	.byte	0x6
	.4byte	0xd79
	.uleb128 0x1
	.4byte	0x19c
	.byte	0
	.uleb128 0x17
	.4byte	.LASF191
	.byte	0xc
	.byte	0x9c
	.byte	0xa
	.4byte	0xd8b
	.uleb128 0x1
	.4byte	0xd0d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF192
	.byte	0x12
	.byte	0x67
	.4byte	0x150
	.4byte	0xda0
	.uleb128 0x1
	.4byte	0xc61
	.byte	0
	.uleb128 0x9
	.4byte	.LASF193
	.byte	0x12
	.byte	0xd6
	.4byte	0x150
	.4byte	0xdbf
	.uleb128 0x1
	.4byte	0xc61
	.uleb128 0x1
	.4byte	0xb0e
	.uleb128 0x1
	.4byte	0x174
	.byte	0
	.uleb128 0x10
	.4byte	.LASF194
	.2byte	0x345
	.byte	0x16
	.4byte	0x19c
	.4byte	0xddf
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x184
	.byte	0
	.uleb128 0x9
	.4byte	.LASF195
	.byte	0xc
	.byte	0x94
	.4byte	0x7b
	.4byte	0xdf4
	.uleb128 0x1
	.4byte	0xd0d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF196
	.byte	0x12
	.byte	0xa6
	.4byte	0x150
	.4byte	0xe09
	.uleb128 0x1
	.4byte	0xc61
	.byte	0
	.uleb128 0x9
	.4byte	.LASF197
	.byte	0x12
	.byte	0x94
	.4byte	0x150
	.4byte	0xe2d
	.uleb128 0x1
	.4byte	0xc61
	.uleb128 0x1
	.4byte	0x77c
	.uleb128 0x1
	.4byte	0x168
	.uleb128 0x1
	.4byte	0x168
	.byte	0
	.uleb128 0x10
	.4byte	.LASF198
	.2byte	0x24c
	.byte	0x8
	.4byte	0x89
	.4byte	0xe52
	.uleb128 0x1
	.4byte	0x19c
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0xe57
	.byte	0
	.uleb128 0x4
	.4byte	0x184
	.uleb128 0x15
	.4byte	0xe52
	.uleb128 0x28
	.4byte	.LASF199
	.byte	0x13
	.2byte	0x97c
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF200
	.2byte	0x19d
	.byte	0x8
	.4byte	0x89
	.4byte	0xe8a
	.uleb128 0x1
	.4byte	0x19c
	.uleb128 0x1
	.4byte	0x77c
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0xe57
	.byte	0
	.uleb128 0x9
	.4byte	.LASF201
	.byte	0x12
	.byte	0xc1
	.4byte	0x150
	.4byte	0xeb3
	.uleb128 0x1
	.4byte	0xc61
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0x168
	.uleb128 0x1
	.4byte	0xeb3
	.uleb128 0x1
	.4byte	0x168
	.byte	0
	.uleb128 0x4
	.4byte	0x168
	.uleb128 0x18
	.4byte	.LASF202
	.2byte	0x170
	.4byte	0x7b
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeef
	.uleb128 0x14
	.string	"fp"
	.2byte	0x170
	.byte	0x1b
	.4byte	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.4byte	.LASF204
	.2byte	0x172
	.byte	0x11
	.4byte	0xc61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF203
	.2byte	0x133
	.4byte	0x7b
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf54
	.uleb128 0x14
	.string	"fp"
	.2byte	0x133
	.byte	0x1c
	.4byte	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"cmd"
	.2byte	0x133
	.byte	0x24
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"arg"
	.2byte	0x133
	.byte	0x37
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.2byte	0x135
	.byte	0x9
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LASF204
	.2byte	0x136
	.byte	0x11
	.4byte	0xc61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.4byte	.LASF205
	.2byte	0x11d
	.4byte	0x7b
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfab
	.uleb128 0x2a
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x11d
	.byte	0x2a
	.4byte	0xc61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"arg"
	.2byte	0x11d
	.byte	0x42
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.4byte	.LASF166
	.2byte	0x11f
	.byte	0x18
	.4byte	0xfab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.4byte	.LASF127
	.2byte	0x120
	.byte	0x17
	.4byte	0xac0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x4
	.4byte	0x9b8
	.uleb128 0x12
	.4byte	.LASF206
	.byte	0xfc
	.byte	0x5
	.4byte	0x7b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x102e
	.uleb128 0xc
	.4byte	.LASF204
	.byte	0xfc
	.byte	0x28
	.4byte	0xc61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"cmd"
	.byte	0xfc
	.byte	0x36
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"arg"
	.byte	0xfc
	.byte	0x49
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.string	"ret"
	.byte	0xfe
	.byte	0x9
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF131
	.byte	0xff
	.byte	0xe
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.4byte	.LASF207
	.2byte	0x100
	.byte	0x9
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.4byte	.LASF208
	.2byte	0x101
	.byte	0x1a
	.4byte	0x102e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	0x9f9
	.uleb128 0x12
	.4byte	.LASF209
	.byte	0xda
	.byte	0x5
	.4byte	0x7b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ab
	.uleb128 0xa
	.string	"fp"
	.byte	0xda
	.byte	0x1b
	.4byte	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF210
	.byte	0xda
	.byte	0x24
	.4byte	0x7c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xc
	.4byte	.LASF211
	.byte	0xda
	.byte	0x39
	.4byte	0x6b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.string	"fd"
	.byte	0xda
	.byte	0x50
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"opa"
	.byte	0xda
	.byte	0x5a
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF204
	.byte	0xdc
	.byte	0x11
	.4byte	0xc61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"out"
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.4byte	.L44
	.byte	0
	.uleb128 0x12
	.4byte	.LASF212
	.byte	0xb6
	.byte	0x9
	.4byte	0x144
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x110a
	.uleb128 0xa
	.string	"fp"
	.byte	0xb6
	.byte	0x20
	.4byte	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"buf"
	.byte	0xb6
	.byte	0x30
	.4byte	0x77c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.4byte	.LASF207
	.byte	0xb6
	.byte	0x3c
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.string	"ret"
	.byte	0xb8
	.byte	0x9
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF204
	.byte	0xb9
	.byte	0x11
	.4byte	0xc61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF213
	.byte	0x86
	.byte	0x9
	.4byte	0x144
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1177
	.uleb128 0xa
	.string	"fp"
	.byte	0x86
	.byte	0x1f
	.4byte	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"buf"
	.byte	0x86
	.byte	0x29
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.4byte	.LASF207
	.byte	0x86
	.byte	0x35
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.string	"ret"
	.byte	0x88
	.byte	0xe
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF204
	.byte	0x89
	.byte	0x11
	.4byte	0xc61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF131
	.byte	0x8a
	.byte	0xe
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF214
	.byte	0x63
	.byte	0x5
	.4byte	0x7b
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ba
	.uleb128 0xa
	.string	"fp"
	.byte	0x63
	.byte	0x1c
	.4byte	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"ret"
	.byte	0x65
	.byte	0x9
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF204
	.byte	0x66
	.byte	0x11
	.4byte	0xc61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF215
	.byte	0x41
	.byte	0x5
	.4byte	0x7b
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x120b
	.uleb128 0xc
	.4byte	.LASF216
	.byte	0x41
	.byte	0x2c
	.4byte	0x6a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"fp"
	.byte	0x41
	.byte	0x3b
	.4byte	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"ret"
	.byte	0x43
	.byte	0x9
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF204
	.byte	0x44
	.byte	0x11
	.4byte	0xc61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF220
	.byte	0x30
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1265
	.uleb128 0xc
	.4byte	.LASF217
	.byte	0x30
	.byte	0x21
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF218
	.byte	0x32
	.byte	0x10
	.4byte	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF219
	.byte	0x33
	.byte	0x11
	.4byte	0xc61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"ch"
	.byte	0x34
	.byte	0xd
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0xf
	.string	"ret"
	.byte	0x35
	.byte	0xc
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF221
	.byte	0x1d
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12c4
	.uleb128 0xc
	.4byte	.LASF217
	.byte	0x1d
	.byte	0x21
	.4byte	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x8
	.4byte	.LASF222
	.byte	0x1f
	.byte	0xd
	.4byte	0x12c4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x8
	.4byte	.LASF223
	.byte	0x20
	.byte	0xe
	.4byte	0x168
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x8
	.4byte	.LASF219
	.byte	0x21
	.byte	0x11
	.4byte	0xc61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF218
	.byte	0x22
	.byte	0x10
	.4byte	0x184
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x2c
	.4byte	0x15c
	.uleb128 0x1a
	.4byte	0x82
	.byte	0x3f
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.sleb128 9
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
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
	.sleb128 8
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x1d
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
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
	.byte	0x7
	.4byte	.LFB14
	.uleb128 .LFE14-.LFB14
	.byte	0x7
	.4byte	.LFB15
	.uleb128 .LFE15-.LFB15
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"__off_t"
.LASF20:
	.string	"__gid_t"
.LASF185:
	.string	"xStreamBufferSend"
.LASF73:
	.string	"f_namelen"
.LASF60:
	.string	"st_ctim"
.LASF222:
	.string	"tmp_buf"
.LASF68:
	.string	"f_bfree"
.LASF13:
	.string	"size_t"
.LASF147:
	.string	"hal_uart_flow_control_t"
.LASF150:
	.string	"EVEN_PARITY"
.LASF64:
	.string	"statfs"
.LASF217:
	.string	"p_arg"
.LASF28:
	.string	"ssize_t"
.LASF82:
	.string	"file_ops"
.LASF142:
	.string	"hal_uart_stop_bits_t"
.LASF109:
	.string	"type"
.LASF37:
	.string	"tv_nsec"
.LASF136:
	.string	"DATA_WIDTH_7BIT"
.LASF194:
	.string	"xStreamBufferGenericCreate"
.LASF206:
	.string	"uart_ioctl_cmd_waimode"
.LASF159:
	.string	"baud_rate"
.LASF146:
	.string	"FLOW_CONTROL_CTS_RTS"
.LASF188:
	.string	"aos_mutex_lock"
.LASF161:
	.string	"stop_bits"
.LASF212:
	.string	"vfs_uart_write"
.LASF11:
	.string	"__int_least64_t"
.LASF99:
	.string	"rmdir"
.LASF111:
	.string	"inode_t"
.LASF49:
	.string	"stat"
.LASF98:
	.string	"mkdir"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF52:
	.string	"st_mode"
.LASF157:
	.string	"UART_RX_INT"
.LASF84:
	.string	"close"
.LASF51:
	.string	"st_ino"
.LASF22:
	.string	"__mode_t"
.LASF9:
	.string	"long long unsigned int"
.LASF140:
	.string	"STOP_BITS_1"
.LASF141:
	.string	"STOP_BITS_2"
.LASF46:
	.string	"aos_hdl_t"
.LASF90:
	.string	"fs_ops_t"
.LASF158:
	.string	"hal_uart_int_t"
.LASF183:
	.string	"vTaskEnterCritical"
.LASF200:
	.string	"xStreamBufferSendFromISR"
.LASF135:
	.string	"DATA_WIDTH_6BIT"
.LASF15:
	.string	"__blkcnt_t"
.LASF182:
	.string	"vTaskExitCritical"
.LASF6:
	.string	"long int"
.LASF211:
	.string	"notify"
.LASF65:
	.string	"f_type"
.LASF143:
	.string	"FLOW_CONTROL_DISABLED"
.LASF118:
	.string	"events"
.LASF101:
	.string	"telldir"
.LASF214:
	.string	"vfs_uart_close"
.LASF151:
	.string	"hal_uart_parity_t"
.LASF47:
	.string	"aos_mutex_t"
.LASF58:
	.string	"st_atim"
.LASF226:
	.string	"inode_ops_t"
.LASF32:
	.string	"BaseType_t"
.LASF190:
	.string	"vStreamBufferDelete"
.LASF105:
	.string	"i_fops"
.LASF119:
	.string	"revents"
.LASF94:
	.string	"rename"
.LASF76:
	.string	"d_name"
.LASF45:
	.string	"nlink_t"
.LASF152:
	.string	"MODE_TX"
.LASF191:
	.string	"aos_mutex_free"
.LASF27:
	.string	"off_t"
.LASF43:
	.string	"gid_t"
.LASF10:
	.string	"__uint32_t"
.LASF134:
	.string	"DATA_WIDTH_5BIT"
.LASF169:
	.string	"rx_buf_size"
.LASF62:
	.string	"st_blocks"
.LASF165:
	.string	"port"
.LASF54:
	.string	"st_uid"
.LASF180:
	.string	"hal_uart_send_flush"
.LASF149:
	.string	"ODD_PARITY"
.LASF63:
	.string	"st_spare4"
.LASF70:
	.string	"f_files"
.LASF12:
	.string	"unsigned int"
.LASF178:
	.string	"hal_uart_setbaud"
.LASF225:
	.string	"StreamBufferDef_t"
.LASF38:
	.string	"blkcnt_t"
.LASF7:
	.string	"long unsigned int"
.LASF209:
	.string	"vfs_uart_poll"
.LASF216:
	.string	"inode"
.LASF116:
	.string	"poll_notify_t"
.LASF215:
	.string	"vfs_uart_open"
.LASF78:
	.string	"dd_vfs_fd"
.LASF42:
	.string	"uid_t"
.LASF34:
	.string	"StreamBufferHandle_t"
.LASF97:
	.string	"closedir"
.LASF5:
	.string	"short unsigned int"
.LASF92:
	.string	"lseek"
.LASF77:
	.string	"aos_dirent_t"
.LASF130:
	.string	"read_size"
.LASF80:
	.string	"aos_dir_t"
.LASF103:
	.string	"access"
.LASF184:
	.string	"hal_uart_send_trigger"
.LASF25:
	.string	"__nlink_t"
.LASF123:
	.string	"IO_UART_PARITY_EVEN"
.LASF186:
	.string	"aos_mutex_unlock"
.LASF201:
	.string	"hal_uart_recv_II"
.LASF221:
	.string	"__uart_rx_irq"
.LASF96:
	.string	"readdir"
.LASF168:
	.string	"tx_ringbuf_handle"
.LASF57:
	.string	"st_size"
.LASF164:
	.string	"uart_config_t"
.LASF202:
	.string	"vfs_uart_sync"
.LASF107:
	.string	"i_name"
.LASF199:
	.string	"vTaskSwitchContext"
.LASF86:
	.string	"write"
.LASF213:
	.string	"vfs_uart_read"
.LASF127:
	.string	"parity"
.LASF93:
	.string	"unlink"
.LASF170:
	.string	"tx_buf_size"
.LASF88:
	.string	"poll"
.LASF79:
	.string	"dd_rsv"
.LASF167:
	.string	"rx_ringbuf_handle"
.LASF83:
	.string	"open"
.LASF18:
	.string	"__dev_t"
.LASF193:
	.string	"hal_uart_notify_register"
.LASF100:
	.string	"rewinddir"
.LASF33:
	.string	"TickType_t"
.LASF122:
	.string	"IO_UART_PARITY_ODD"
.LASF148:
	.string	"NO_PARITY"
.LASF71:
	.string	"f_ffree"
.LASF153:
	.string	"MODE_RX"
.LASF189:
	.string	"hal_uart_finalize"
.LASF74:
	.string	"d_ino"
.LASF210:
	.string	"setup"
.LASF16:
	.string	"__blksize_t"
.LASF17:
	.string	"_off_t"
.LASF41:
	.string	"dev_t"
.LASF35:
	.string	"time_t"
.LASF176:
	.string	"priv"
.LASF219:
	.string	"uart"
.LASF133:
	.string	"float"
.LASF39:
	.string	"blksize_t"
.LASF207:
	.string	"nbytes"
.LASF110:
	.string	"refs"
.LASF205:
	.string	"uart_ioctl_cmd_setconfig"
.LASF218:
	.string	"xHigherPriorityTaskWoken"
.LASF128:
	.string	"uart_ioc_config_t"
.LASF95:
	.string	"opendir"
.LASF171:
	.string	"mutex"
.LASF67:
	.string	"f_blocks"
.LASF117:
	.string	"pollfd"
.LASF120:
	.string	"_Bool"
.LASF29:
	.string	"int32_t"
.LASF198:
	.string	"xStreamBufferReceiveFromISR"
.LASF195:
	.string	"aos_mutex_new"
.LASF106:
	.string	"i_arg"
.LASF112:
	.string	"node"
.LASF75:
	.string	"d_type"
.LASF4:
	.string	"short int"
.LASF61:
	.string	"st_blksize"
.LASF175:
	.string	"read_block_flag"
.LASF139:
	.string	"hal_uart_data_width_t"
.LASF36:
	.string	"tv_sec"
.LASF192:
	.string	"hal_uart_init"
.LASF48:
	.string	"timespec"
.LASF156:
	.string	"UART_TX_INT"
.LASF220:
	.string	"__uart_tx_irq"
.LASF21:
	.string	"__ino_t"
.LASF172:
	.string	"poll_cb"
.LASF129:
	.string	"_uart_ioctrl_wait_read"
.LASF173:
	.string	"poll_data"
.LASF126:
	.string	"baud"
.LASF56:
	.string	"st_rdev"
.LASF14:
	.string	"long double"
.LASF223:
	.string	"length"
.LASF85:
	.string	"read"
.LASF26:
	.string	"char"
.LASF163:
	.string	"mode"
.LASF113:
	.string	"f_arg"
.LASF166:
	.string	"config"
.LASF102:
	.string	"seekdir"
.LASF115:
	.string	"file_t"
.LASF227:
	.string	"uart_ops"
.LASF108:
	.string	"i_flags"
.LASF160:
	.string	"data_width"
.LASF30:
	.string	"uint8_t"
.LASF196:
	.string	"hal_uart_send_trigger_off"
.LASF87:
	.string	"ioctl"
.LASF19:
	.string	"__uid_t"
.LASF179:
	.string	"hal_uart_setconfig"
.LASF114:
	.string	"offset"
.LASF203:
	.string	"vfs_uart_ioctl"
.LASF224:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF3:
	.string	"unsigned char"
.LASF53:
	.string	"st_nlink"
.LASF55:
	.string	"st_gid"
.LASF197:
	.string	"hal_uart_send"
.LASF138:
	.string	"DATA_WIDTH_9BIT"
.LASF31:
	.string	"uint32_t"
.LASF81:
	.string	"file_ops_t"
.LASF154:
	.string	"MODE_TX_RX"
.LASF121:
	.string	"IO_UART_PARITY_NONE"
.LASF144:
	.string	"FLOW_CONTROL_CTS"
.LASF104:
	.string	"i_ops"
.LASF44:
	.string	"mode_t"
.LASF50:
	.string	"st_dev"
.LASF69:
	.string	"f_bavail"
.LASF24:
	.string	"_ssize_t"
.LASF72:
	.string	"f_fsid"
.LASF174:
	.string	"taskhdl"
.LASF89:
	.string	"sync"
.LASF187:
	.string	"xStreamBufferReceive"
.LASF59:
	.string	"st_mtim"
.LASF91:
	.string	"fs_ops"
.LASF132:
	.string	"uart_ioc_waitread_t"
.LASF145:
	.string	"FLOW_CONTROL_RTS"
.LASF124:
	.string	"ioc_uart_parity_t"
.LASF177:
	.string	"uart_dev_t"
.LASF204:
	.string	"uart_dev"
.LASF125:
	.string	"_uart_ioctrl_config"
.LASF131:
	.string	"timeout"
.LASF155:
	.string	"hal_uart_mode_t"
.LASF181:
	.string	"xStreamBufferIsEmpty"
.LASF137:
	.string	"DATA_WIDTH_8BIT"
.LASF162:
	.string	"flow_control"
.LASF66:
	.string	"f_bsize"
.LASF208:
	.string	"waitr_arg"
.LASF40:
	.string	"ino_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device/vfs_uart.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/vfs"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
