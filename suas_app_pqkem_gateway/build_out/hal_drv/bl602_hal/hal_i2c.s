	.file	"hal_i2c.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
	.globl	gpstmsg
	.section	.sbss.gpstmsg,"aw",@nobits
	.align	2
	.type	gpstmsg, @object
	.size	gpstmsg, 4
gpstmsg:
	.zero	4
	.globl	i2c_hd_handle
	.section	.sbss.i2c_hd_handle,"aw",@nobits
	.align	2
	.type	i2c_hd_handle, @object
	.size	i2c_hd_handle, 4
i2c_hd_handle:
	.zero	4
	.globl	i2c_msgs_handle
	.section	.sbss.i2c_msgs_handle,"aw",@nobits
	.align	2
	.type	i2c_msgs_handle, @object
	.size	i2c_msgs_handle, 4
i2c_msgs_handle:
	.zero	4
	.globl	i2c_transfer_handle
	.section	.sbss.i2c_transfer_handle,"aw",@nobits
	.align	2
	.type	i2c_transfer_handle, @object
	.size	i2c_transfer_handle, 4
i2c_transfer_handle:
	.zero	4
	.globl	i2c_loop_handle
	.section	.sbss.i2c_loop_handle,"aw",@nobits
	.align	2
	.type	i2c_loop_handle, @object
	.size	i2c_loop_handle, 4
i2c_loop_handle:
	.zero	4
	.globl	i2c_insert_handle
	.section	.sbss.i2c_insert_handle,"aw",@nobits
	.align	2
	.type	i2c_insert_handle, @object
	.size	i2c_insert_handle, 4
i2c_insert_handle:
	.zero	4
	.section	.text.i2c_callback,"ax",@progbits
	.align	1
	.type	i2c_callback, @function
i2c_callback:
.LFB27:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
	.loc 1 53 1
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
	.loc 1 55 23
	lw	a5,-36(s0)
	lw	a5,40(a5)
	.loc 1 55 5
	andi	a5,a5,0xff
	mv	a0,a5
	call	I2C_Disable
	.loc 1 56 23
	lw	a5,-36(s0)
	lw	a5,40(a5)
	.loc 1 56 5
	andi	a5,a5,0xff
	li	a2,1
	li	a1,6
	mv	a0,a5
	call	I2C_IntMask
	.loc 1 57 5
	lw	a5,-36(s0)
	lw	a5,40(a5)
	mv	a0,a5
	call	i2c_clear_status
	.loc 1 58 15
	lw	a5,-36(s0)
	lw	a4,28(a5)
	.loc 1 58 8
	li	a5,1
	bne	a4,a5,.L2
	.loc 1 59 9
	li	a1,2
	lw	a0,-36(s0)
	call	i2c_async_trigger
	.loc 1 60 19
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	.loc 1 60 12
	bne	a5,zero,.L2
	.loc 1 61 29
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 61 13
	mv	a0,a5
	call	vPortFree
	.loc 1 62 13
	lw	a0,-36(s0)
	call	vPortFree
.L2:
	.loc 1 65 5
	lui	a5,%hi(i2c_hd_handle)
	lw	a5,%lo(i2c_hd_handle)(a5)
	addi	a4,s0,-20
	mv	a1,a4
	mv	a0,a5
	call	xQueueGiveFromISR
	.loc 1 66 9
	lw	a5,-20(s0)
	.loc 1 66 7
	beq	a5,zero,.L3
	.loc 1 66 36 discriminator 1
	call	vTaskSwitchContext
.L3:
	.loc 1 67 15
	lw	a5,-36(s0)
	lw	a4,28(a5)
	.loc 1 67 8
	li	a5,1
	bne	a4,a5,.L6
	.loc 1 68 9
	lui	a5,%hi(i2c_transfer_handle)
	lw	a5,%lo(i2c_transfer_handle)(a5)
	addi	a4,s0,-20
	mv	a1,a4
	mv	a0,a5
	call	xQueueGiveFromISR
	.loc 1 69 13
	lw	a5,-20(s0)
	.loc 1 69 11
	beq	a5,zero,.L6
	.loc 1 69 40 discriminator 1
	call	vTaskSwitchContext
	.loc 1 71 5
	nop
.L6:
	nop
	.loc 1 72 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	i2c_callback, .-i2c_callback
	.section	.text.i2c_transferbytes,"ax",@progbits
	.align	1
	.type	i2c_transferbytes, @function
i2c_transferbytes:
.LFB28:
	.loc 1 75 1
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
	.loc 1 76 16
	lw	a5,-20(s0)
	lbu	a5,2(a5)
	.loc 1 76 8
	bne	a5,zero,.L8
	.loc 1 76 49 discriminator 1
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,20(a5)
	.loc 1 77 19
	lw	a5,-20(s0)
	lw	a5,24(a5)
	mv	a4,a5
	.loc 1 77 34
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 77 12
	bgeu	a4,a5,.L9
	.loc 1 78 13
	lw	a0,-20(s0)
	call	do_write_data
	.loc 1 77 12
	j	.L14
.L9:
	.loc 1 79 26
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 1 79 42
	lw	a4,-20(s0)
	lw	a4,12(a4)
	.loc 1 79 19
	bne	a5,a4,.L14
	.loc 1 80 31
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 80 13
	andi	a5,a5,0xff
	li	a2,1
	li	a1,1
	mv	a0,a5
	call	I2C_IntMask
	.loc 1 81 13
	j	.L7
.L8:
	.loc 1 84 23
	lw	a5,-20(s0)
	lbu	a4,2(a5)
	.loc 1 84 15
	li	a5,1
	bne	a4,a5,.L15
	.loc 1 84 56 discriminator 1
	lw	a5,-20(s0)
	li	a4,3
	sw	a4,20(a5)
	.loc 1 85 19
	lw	a5,-20(s0)
	lw	a5,24(a5)
	mv	a4,a5
	.loc 1 85 34
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 85 12
	bgeu	a4,a5,.L13
	.loc 1 86 14
	lw	a0,-20(s0)
	call	do_read_data
	.loc 1 94 5
	j	.L15
.L13:
	.loc 1 88 31
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 88 13
	andi	a5,a5,0xff
	li	a2,1
	li	a1,2
	mv	a0,a5
	call	I2C_IntMask
	.loc 1 89 13
	j	.L7
.L14:
	.loc 1 77 12
	nop
.L15:
	.loc 1 94 5
	nop
.L7:
	.loc 1 95 1
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
	.size	i2c_transferbytes, .-i2c_transferbytes
	.section	.text.i2c_interrupt_entry,"ax",@progbits
	.align	1
	.type	i2c_interrupt_entry, @function
i2c_interrupt_entry:
.LFB29:
	.loc 1 98 1
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
	.loc 1 102 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 104 15
	li	a5,1073782784
	addi	a5,a5,772
	.loc 1 104 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 105 19
	lw	a5,-24(s0)
	andi	a5,a5,4
	.loc 1 105 7
	beq	a5,zero,.L17
	.loc 1 106 23
	lw	a5,-20(s0)
	li	a4,3
	sw	a4,20(a5)
	j	.L18
.L17:
	.loc 1 107 26
	lw	a5,-24(s0)
	andi	a5,a5,1
	.loc 1 107 14
	beq	a5,zero,.L19
	.loc 1 108 23
	lw	a5,-20(s0)
	sw	zero,20(a5)
	.loc 1 109 9
	lw	a0,-20(s0)
	call	i2c_callback
	.loc 1 110 9
	j	.L16
.L19:
	.loc 1 111 26
	lw	a5,-24(s0)
	andi	a5,a5,8
	.loc 1 111 14
	beq	a5,zero,.L21
	.loc 1 112 23
	lw	a5,-20(s0)
	li	a4,6
	sw	a4,20(a5)
	.loc 1 113 9
	lw	a0,-20(s0)
	call	i2c_callback
	.loc 1 114 9
	j	.L16
.L21:
	.loc 1 115 26
	lw	a5,-24(s0)
	andi	a5,a5,2
	.loc 1 115 14
	beq	a5,zero,.L22
	.loc 1 116 23
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,20(a5)
	j	.L18
.L22:
	.loc 1 117 26
	lw	a5,-24(s0)
	andi	a5,a5,16
	.loc 1 117 14
	beq	a5,zero,.L23
	.loc 1 118 23
	lw	a5,-20(s0)
	li	a4,5
	sw	a4,20(a5)
	.loc 1 119 9
	lw	a0,-20(s0)
	call	i2c_callback
	.loc 1 120 9
	j	.L16
.L23:
	.loc 1 121 26
	lw	a5,-24(s0)
	andi	a5,a5,32
	.loc 1 121 14
	beq	a5,zero,.L24
	.loc 1 122 23
	lw	a5,-20(s0)
	li	a4,4
	sw	a4,20(a5)
	.loc 1 123 9
	lw	a0,-20(s0)
	call	i2c_callback
	.loc 1 124 9
	j	.L16
.L24:
	.loc 1 127 23
	lw	a5,-20(s0)
	li	a4,255
	sw	a4,20(a5)
	.loc 1 128 9
	lw	a0,-20(s0)
	call	i2c_callback
.L18:
	.loc 1 131 5
	lw	a0,-20(s0)
	call	i2c_transferbytes
	.loc 1 132 5
	nop
.L16:
	.loc 1 133 1
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
	.size	i2c_interrupt_entry, .-i2c_interrupt_entry
	.section	.text.i2c_transfer_block,"ax",@progbits
	.align	1
	.globl	i2c_transfer_block
	.type	i2c_transfer_block, @function
i2c_transfer_block:
.LFB30:
	.loc 1 136 1
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
	.loc 1 137 5
	lui	a5,%hi(i2c_transfer_handle)
	lw	a5,%lo(i2c_transfer_handle)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	.loc 1 138 5
	lui	a5,%hi(i2c_hd_handle)
	lw	a5,%lo(i2c_hd_handle)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	.loc 1 139 19
	lw	a5,-20(s0)
	sw	zero,28(a5)
	.loc 1 140 13
	lui	a5,%hi(gpstmsg)
	lw	a4,-20(s0)
	sw	a4,%lo(gpstmsg)(a5)
	.loc 1 142 5
	lw	a0,-20(s0)
	call	i2c_transfer_start
	.loc 1 143 5
	lui	a5,%hi(i2c_hd_handle)
	lw	a5,%lo(i2c_hd_handle)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	.loc 1 150 5
	lui	a5,%hi(i2c_hd_handle)
	lw	a5,%lo(i2c_hd_handle)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 151 5
	lui	a5,%hi(i2c_transfer_handle)
	lw	a5,%lo(i2c_transfer_handle)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 153 18
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 154 1
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
.LFE30:
	.size	i2c_transfer_block, .-i2c_transfer_block
	.section	.text.i2c_transfer_no_block,"ax",@progbits
	.align	1
	.globl	i2c_transfer_no_block
	.type	i2c_transfer_no_block, @function
i2c_transfer_no_block:
.LFB31:
	.loc 1 157 1
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
	.loc 1 160 5
	lui	a5,%hi(i2c_transfer_handle)
	lw	a5,%lo(i2c_transfer_handle)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	.loc 1 161 5
	lui	a5,%hi(i2c_hd_handle)
	lw	a5,%lo(i2c_hd_handle)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	.loc 1 162 13
	lui	a5,%hi(gpstmsg)
	lw	a4,-36(s0)
	sw	a4,%lo(gpstmsg)(a5)
	.loc 1 163 14
	li	a0,44
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 1 165 8
	lw	a5,-20(s0)
	bne	a5,zero,.L28
	.loc 1 167 16
	li	a5,-1
	j	.L29
.L28:
	.loc 1 169 5
	li	a2,44
	lw	a1,-36(s0)
	lw	a0,-20(s0)
	call	memcpy
	.loc 1 170 15
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	.loc 1 170 8
	bne	a5,zero,.L30
	.loc 1 171 35
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 171 16
	mv	a0,a5
	call	pvPortMalloc
	sw	a0,-24(s0)
	.loc 1 175 29
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 1 175 42
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 175 9
	mv	a2,a5
	mv	a1,a4
	lw	a0,-24(s0)
	call	memcpy
	.loc 1 176 21
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,16(a5)
	j	.L31
.L30:
	.loc 1 177 22
	lw	a5,-36(s0)
	lbu	a4,2(a5)
	.loc 1 177 15
	li	a5,1
	bne	a4,a5,.L31
	.loc 1 178 29
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 1 178 21
	lw	a5,-20(s0)
	sw	a4,16(a5)
.L31:
	.loc 1 181 13
	lui	a5,%hi(gpstmsg)
	lw	a4,-20(s0)
	sw	a4,%lo(gpstmsg)(a5)
	.loc 1 182 5
	lui	a5,%hi(gpstmsg)
	lw	a5,%lo(gpstmsg)(a5)
	mv	a0,a5
	call	i2c_transfer_start
	.loc 1 183 12
	li	a5,0
.L29:
	.loc 1 184 1
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
.LFE31:
	.size	i2c_transfer_no_block, .-i2c_transfer_no_block
	.section	.text.i2c_msgs_process,"ax",@progbits
	.align	1
	.globl	i2c_msgs_process
	.type	i2c_msgs_process, @function
i2c_msgs_process:
.LFB32:
	.loc 1 187 1
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
	.loc 1 188 5
	lw	a0,-20(s0)
	call	i2c_transfer_block
	.loc 1 189 5
	lui	a5,%hi(i2c_loop_handle)
	lw	a5,%lo(i2c_loop_handle)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 191 5
	nop
	.loc 1 192 1
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
	.size	i2c_msgs_process, .-i2c_msgs_process
	.section	.text.i2c_insert_msgs_process,"ax",@progbits
	.align	1
	.globl	i2c_insert_msgs_process
	.type	i2c_insert_msgs_process, @function
i2c_insert_msgs_process:
.LFB33:
	.loc 1 195 1
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
	.loc 1 197 9
	sw	zero,-24(s0)
	.loc 1 199 12
	sw	zero,-20(s0)
	.loc 1 199 5
	j	.L35
.L38:
	.loc 1 201 41
	lw	a4,-20(s0)
	li	a5,44
	mul	a5,a4,a5
	.loc 1 201 15
	lw	a4,-36(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	i2c_transfer_block
	sw	a0,-24(s0)
	.loc 1 202 12
	lw	a5,-24(s0)
	bne	a5,zero,.L40
	.loc 1 199 39 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L35:
	.loc 1 199 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 1 199 19 discriminator 1
	lw	a4,-20(s0)
	blt	a4,a5,.L38
	j	.L37
.L40:
	.loc 1 204 13
	nop
.L37:
	.loc 1 207 5
	lui	a5,%hi(i2c_loop_handle)
	lw	a5,%lo(i2c_loop_handle)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 208 5
	lui	a5,%hi(i2c_insert_handle)
	lw	a5,%lo(i2c_insert_handle)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 210 5
	nop
	.loc 1 211 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	i2c_insert_msgs_process, .-i2c_insert_msgs_process
	.section	.text.i2c_msg_space_func,"ax",@progbits
	.align	1
	.type	i2c_msg_space_func, @function
i2c_msg_space_func:
.LFB34:
	.loc 1 214 1
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
	.loc 1 215 8
	lw	a5,-24(s0)
	.loc 1 221 1
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
.LFE34:
	.size	i2c_msg_space_func, .-i2c_msg_space_func
	.section	.text.i2c_transfer_msgs_block,"ax",@progbits
	.align	1
	.globl	i2c_transfer_msgs_block
	.type	i2c_transfer_msgs_block, @function
i2c_transfer_msgs_block:
.LFB35:
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
	.loc 1 227 5
	lui	a5,%hi(i2c_msgs_handle)
	lw	a5,%lo(i2c_msgs_handle)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	.loc 1 228 8
	lw	a5,-44(s0)
	bne	a5,zero,.L45
	.loc 1 229 9
	lui	a5,%hi(i2c_insert_handle)
	lw	a5,%lo(i2c_insert_handle)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
.L45:
	.loc 1 231 12
	sw	zero,-20(s0)
	.loc 1 231 5
	j	.L46
.L49:
	.loc 1 232 9
	lui	a5,%hi(i2c_loop_handle)
	lw	a5,%lo(i2c_loop_handle)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	.loc 1 233 12
	lw	a5,-20(s0)
	ble	a5,zero,.L47
	.loc 1 233 30 discriminator 1
	lw	a4,-20(s0)
	li	a5,44
	mul	a5,a4,a5
	.loc 1 233 34 discriminator 1
	addi	a5,a5,-44
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 233 38 discriminator 1
	lw	a5,20(a5)
	.loc 1 233 19 discriminator 1
	bne	a5,zero,.L52
.L47:
	.loc 1 237 9
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	i2c_msg_space_func
	.loc 1 238 34
	lw	a4,-20(s0)
	li	a5,44
	mul	a5,a4,a5
	.loc 1 238 9
	lw	a4,-36(s0)
	add	a5,a4,a5
	li	a1,0
	mv	a0,a5
	call	i2c_async_trigger
	.loc 1 231 27 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L46:
	.loc 1 231 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	blt	a4,a5,.L49
	j	.L48
.L52:
	.loc 1 235 13
	nop
.L48:
	.loc 1 243 5
	lui	a5,%hi(i2c_loop_handle)
	lw	a5,%lo(i2c_loop_handle)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	.loc 1 244 5
	lui	a5,%hi(i2c_loop_handle)
	lw	a5,%lo(i2c_loop_handle)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 245 8
	lw	a5,-44(s0)
	bne	a5,zero,.L50
	.loc 1 246 9
	lui	a5,%hi(i2c_insert_handle)
	lw	a5,%lo(i2c_insert_handle)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
.L50:
	.loc 1 248 5
	lui	a5,%hi(i2c_msgs_handle)
	lw	a5,%lo(i2c_msgs_handle)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 250 20
	lw	a4,-20(s0)
	li	a5,44
	mul	a5,a4,a5
	.loc 1 250 24
	addi	a5,a5,-44
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 250 28
	lw	a5,20(a5)
	.loc 1 251 1
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
	.size	i2c_transfer_msgs_block, .-i2c_transfer_msgs_block
	.section	.text.i2c_insert_transfer_msgs,"ax",@progbits
	.align	1
	.globl	i2c_insert_transfer_msgs
	.type	i2c_insert_transfer_msgs, @function
i2c_insert_transfer_msgs:
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
	sw	a1,-24(s0)
	.loc 1 255 5
	lui	a5,%hi(i2c_insert_handle)
	lw	a5,%lo(i2c_insert_handle)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	.loc 1 256 5
	lui	a5,%hi(i2c_loop_handle)
	lw	a5,%lo(i2c_loop_handle)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	.loc 1 257 21
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,36(a5)
	.loc 1 258 5
	li	a1,1
	lw	a0,-20(s0)
	call	i2c_async_trigger
	.loc 1 259 5
	lui	a5,%hi(i2c_loop_handle)
	lw	a5,%lo(i2c_loop_handle)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	.loc 1 260 5
	lui	a5,%hi(i2c_loop_handle)
	lw	a5,%lo(i2c_loop_handle)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 261 5
	lui	a5,%hi(i2c_insert_handle)
	lw	a5,%lo(i2c_insert_handle)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 263 12
	li	a5,0
	.loc 1 264 1
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
	.size	i2c_insert_transfer_msgs, .-i2c_insert_transfer_msgs
	.section	.text.i2c_transfer_onemsg_no_block,"ax",@progbits
	.align	1
	.globl	i2c_transfer_onemsg_no_block
	.type	i2c_transfer_onemsg_no_block, @function
i2c_transfer_onemsg_no_block:
.LFB37:
	.loc 1 267 1
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
	.loc 1 268 5
	lw	a0,-20(s0)
	call	i2c_transfer_no_block
	.loc 1 269 12
	li	a5,0
	.loc 1 270 1
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
	.size	i2c_transfer_onemsg_no_block, .-i2c_transfer_onemsg_no_block
	.section	.text.hal_i2c_init,"ax",@progbits
	.align	1
	.globl	hal_i2c_init
	.type	hal_i2c_init, @function
hal_i2c_init:
.LFB38:
	.loc 1 273 1
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
	.loc 1 274 5
	lw	a0,-20(s0)
	call	i2c_gpio_init
	.loc 1 275 5
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	i2c_set_freq
	.loc 1 276 5
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	mv	a0,a5
	call	I2C_Disable
	.loc 1 277 5
	li	a0,48
	call	bl_irq_enable
	.loc 1 278 5
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	li	a2,1
	li	a1,6
	mv	a0,a5
	call	I2C_IntMask
	.loc 1 280 21
	li	a2,3
	li	a1,0
	li	a0,1
	call	xQueueGenericCreate
	mv	a4,a0
	.loc 1 280 19 discriminator 1
	lui	a5,%hi(i2c_hd_handle)
	sw	a4,%lo(i2c_hd_handle)(a5)
	.loc 1 281 23
	li	a0,1
	call	xQueueCreateMutex
	mv	a4,a0
	.loc 1 281 21 discriminator 1
	lui	a5,%hi(i2c_msgs_handle)
	sw	a4,%lo(i2c_msgs_handle)(a5)
	.loc 1 282 27
	li	a2,3
	li	a1,0
	li	a0,1
	call	xQueueGenericCreate
	mv	a4,a0
	.loc 1 282 25 discriminator 1
	lui	a5,%hi(i2c_transfer_handle)
	sw	a4,%lo(i2c_transfer_handle)(a5)
	.loc 1 283 23
	li	a2,3
	li	a1,0
	li	a0,1
	call	xQueueGenericCreate
	mv	a4,a0
	.loc 1 283 21 discriminator 1
	lui	a5,%hi(i2c_loop_handle)
	sw	a4,%lo(i2c_loop_handle)(a5)
	.loc 1 284 25
	li	a2,3
	li	a1,0
	li	a0,1
	call	xQueueGenericCreate
	mv	a4,a0
	.loc 1 284 23 discriminator 1
	lui	a5,%hi(i2c_insert_handle)
	sw	a4,%lo(i2c_insert_handle)(a5)
	.loc 1 285 23
	lui	a5,%hi(i2c_hd_handle)
	lw	a5,%lo(i2c_hd_handle)(a5)
	.loc 1 285 8
	beq	a5,zero,.L58
	.loc 1 285 49 discriminator 1
	lui	a5,%hi(i2c_msgs_handle)
	lw	a5,%lo(i2c_msgs_handle)(a5)
	.loc 1 285 30 discriminator 1
	beq	a5,zero,.L58
	.loc 1 285 80 discriminator 2
	lui	a5,%hi(i2c_transfer_handle)
	lw	a5,%lo(i2c_transfer_handle)(a5)
	.loc 1 285 57 discriminator 2
	beq	a5,zero,.L58
	.loc 1 285 107 discriminator 3
	lui	a5,%hi(i2c_loop_handle)
	lw	a5,%lo(i2c_loop_handle)(a5)
	.loc 1 285 88 discriminator 3
	beq	a5,zero,.L58
	.loc 1 285 136 discriminator 4
	lui	a5,%hi(i2c_insert_handle)
	lw	a5,%lo(i2c_insert_handle)(a5)
	.loc 1 285 115 discriminator 4
	bne	a5,zero,.L59
.L58:
	.loc 1 287 16
	li	a5,-1
	j	.L60
.L59:
	.loc 1 290 5
	lui	a5,%hi(i2c_hd_handle)
	lw	a5,%lo(i2c_hd_handle)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 291 5
	lui	a5,%hi(i2c_msgs_handle)
	lw	a5,%lo(i2c_msgs_handle)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 292 5
	lui	a5,%hi(i2c_transfer_handle)
	lw	a5,%lo(i2c_transfer_handle)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 293 5
	lui	a5,%hi(i2c_loop_handle)
	lw	a5,%lo(i2c_loop_handle)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 294 5
	lui	a5,%hi(i2c_insert_handle)
	lw	a5,%lo(i2c_insert_handle)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 295 5
	lui	a5,%hi(gpstmsg)
	addi	a2,a5,%lo(gpstmsg)
	lui	a5,%hi(i2c_interrupt_entry)
	addi	a1,a5,%lo(i2c_interrupt_entry)
	li	a0,48
	call	bl_irq_register_with_ctx
	.loc 1 297 12
	li	a5,0
.L60:
	.loc 1 298 1
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
	.size	hal_i2c_init, .-hal_i2c_init
	.section	.text.hal_i2c_read_block,"ax",@progbits
	.align	1
	.globl	hal_i2c_read_block
	.type	hal_i2c_read_block, @function
hal_i2c_read_block:
.LFB39:
	.loc 1 301 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	sw	a4,-84(s0)
	.loc 1 303 9
	sw	zero,-20(s0)
	.loc 1 305 14
	lw	a5,-68(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,-64(s0)
	.loc 1 306 13
	lw	a5,-72(s0)
	sw	a5,-48(s0)
	.loc 1 307 13
	lw	a5,-76(s0)
	sw	a5,-52(s0)
	.loc 1 308 16
	li	a5,1
	sb	a5,-62(s0)
	.loc 1 309 15
	sw	zero,-36(s0)
	.loc 1 310 14
	sw	zero,-40(s0)
	.loc 1 311 14
	sw	zero,-24(s0)
	.loc 1 313 8
	lw	a5,-84(s0)
	ble	a5,zero,.L62
	.loc 1 314 21
	li	a5,1
	sb	a5,-61(s0)
	.loc 1 315 21
	lw	a5,-84(s0)
	sw	a5,-60(s0)
	.loc 1 316 20
	lw	a5,-80(s0)
	andi	a5,a5,0xff
	sb	a5,-56(s0)
	j	.L63
.L62:
	.loc 1 318 21
	sb	zero,-61(s0)
.L63:
	.loc 1 321 11
	addi	a5,s0,-64
	li	a2,0
	li	a1,1
	mv	a0,a5
	call	i2c_transfer_msgs_block
	sw	a0,-20(s0)
	.loc 1 323 12
	lw	a5,-20(s0)
	.loc 1 324 1
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
.LFE39:
	.size	hal_i2c_read_block, .-hal_i2c_read_block
	.section	.text.hal_i2c_write_block,"ax",@progbits
	.align	1
	.globl	hal_i2c_write_block
	.type	hal_i2c_write_block, @function
hal_i2c_write_block:
.LFB40:
	.loc 1 327 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	sw	a4,-84(s0)
	.loc 1 329 9
	sw	zero,-20(s0)
	.loc 1 331 14
	lw	a5,-68(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,-64(s0)
	.loc 1 332 13
	lw	a5,-72(s0)
	sw	a5,-48(s0)
	.loc 1 333 13
	lw	a5,-76(s0)
	sw	a5,-52(s0)
	.loc 1 334 16
	sb	zero,-62(s0)
	.loc 1 335 15
	sw	zero,-36(s0)
	.loc 1 336 14
	sw	zero,-40(s0)
	.loc 1 337 14
	sw	zero,-24(s0)
	.loc 1 339 8
	lw	a5,-84(s0)
	ble	a5,zero,.L66
	.loc 1 340 21
	li	a5,1
	sb	a5,-61(s0)
	.loc 1 341 21
	lw	a5,-84(s0)
	sw	a5,-60(s0)
	.loc 1 342 20
	lw	a5,-80(s0)
	andi	a5,a5,0xff
	sb	a5,-56(s0)
	j	.L67
.L66:
	.loc 1 344 21
	sb	zero,-61(s0)
.L67:
	.loc 1 347 11
	addi	a5,s0,-64
	li	a2,0
	li	a1,1
	mv	a0,a5
	call	i2c_transfer_msgs_block
	sw	a0,-20(s0)
	.loc 1 349 12
	lw	a5,-20(s0)
	.loc 1 350 1
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
.LFE40:
	.size	hal_i2c_write_block, .-hal_i2c_write_block
	.section	.text.hal_i2c_write_no_block,"ax",@progbits
	.align	1
	.globl	hal_i2c_write_no_block
	.type	hal_i2c_write_no_block, @function
hal_i2c_write_no_block:
.LFB41:
	.loc 1 353 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	sw	a4,-84(s0)
	.loc 1 356 14
	lw	a5,-68(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,-60(s0)
	.loc 1 357 13
	lw	a5,-72(s0)
	sw	a5,-44(s0)
	.loc 1 358 13
	lw	a5,-76(s0)
	sw	a5,-48(s0)
	.loc 1 359 16
	sb	zero,-58(s0)
	.loc 1 360 15
	li	a5,1
	sw	a5,-32(s0)
	.loc 1 361 14
	sw	zero,-36(s0)
	.loc 1 362 14
	sw	zero,-20(s0)
	.loc 1 364 8
	lw	a5,-84(s0)
	ble	a5,zero,.L70
	.loc 1 365 21
	li	a5,1
	sb	a5,-57(s0)
	.loc 1 366 21
	lw	a5,-84(s0)
	sw	a5,-56(s0)
	.loc 1 367 20
	lw	a5,-80(s0)
	andi	a5,a5,0xff
	sb	a5,-52(s0)
	j	.L71
.L70:
	.loc 1 369 21
	sb	zero,-57(s0)
.L71:
	.loc 1 372 5
	addi	a5,s0,-60
	mv	a0,a5
	call	i2c_transfer_onemsg_no_block
	.loc 1 374 12
	li	a5,0
	.loc 1 375 1
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
.LFE41:
	.size	hal_i2c_write_no_block, .-hal_i2c_write_no_block
	.section	.text.hal_i2c_read_no_block,"ax",@progbits
	.align	1
	.globl	hal_i2c_read_no_block
	.type	hal_i2c_read_no_block, @function
hal_i2c_read_no_block:
.LFB42:
	.loc 1 378 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	sw	a4,-84(s0)
	.loc 1 381 14
	lw	a5,-68(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,-60(s0)
	.loc 1 382 13
	lw	a5,-72(s0)
	sw	a5,-44(s0)
	.loc 1 383 13
	lw	a5,-76(s0)
	sw	a5,-48(s0)
	.loc 1 384 16
	li	a5,1
	sb	a5,-58(s0)
	.loc 1 385 15
	li	a5,1
	sw	a5,-32(s0)
	.loc 1 386 14
	sw	zero,-36(s0)
	.loc 1 387 14
	sw	zero,-20(s0)
	.loc 1 389 8
	lw	a5,-84(s0)
	ble	a5,zero,.L74
	.loc 1 390 21
	li	a5,1
	sb	a5,-57(s0)
	.loc 1 391 21
	lw	a5,-84(s0)
	sw	a5,-56(s0)
	.loc 1 392 20
	lw	a5,-80(s0)
	andi	a5,a5,0xff
	sb	a5,-52(s0)
	j	.L75
.L74:
	.loc 1 394 21
	sb	zero,-57(s0)
.L75:
	.loc 1 397 5
	addi	a5,s0,-60
	mv	a0,a5
	call	i2c_transfer_onemsg_no_block
	.loc 1 399 12
	li	a5,0
	.loc 1 400 1
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
.LFE42:
	.size	hal_i2c_read_no_block, .-hal_i2c_read_no_block
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/queue.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/semphr.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_i2c.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_irq.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/loopset/include/loopset_i2c.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xac1
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x19
	.4byte	.LASF169
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1a
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x6d
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x85
	.uleb128 0xa
	.4byte	0x74
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x98
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0xab
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x1b
	.byte	0x4
	.uleb128 0x14
	.4byte	0xb9
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3f
	.byte	0x11
	.4byte	0x61
	.uleb128 0xa
	.4byte	0xc0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x40
	.byte	0x12
	.4byte	0x9f
	.uleb128 0xa
	.4byte	0xd1
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0x9f
	.uleb128 0x9
	.4byte	0x74
	.uleb128 0x9
	.4byte	0xff
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0xa
	.4byte	0xf8
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x30
	.byte	0x22
	.4byte	0x110
	.uleb128 0x9
	.4byte	0x115
	.uleb128 0x1c
	.4byte	.LASF170
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x6
	.byte	0x25
	.byte	0x17
	.4byte	0x104
	.uleb128 0x1d
	.4byte	.LASF171
	.byte	0x2c
	.byte	0x7
	.byte	0x27
	.byte	0x10
	.4byte	0x1ce
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x28
	.byte	0xe
	.4byte	0x8c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x29
	.byte	0xd
	.4byte	0x74
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x2a
	.byte	0xd
	.4byte	0x74
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x2b
	.byte	0xe
	.4byte	0x9f
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x2c
	.byte	0xd
	.4byte	0x74
	.byte	0x8
	.uleb128 0x15
	.string	"len"
	.byte	0x2d
	.4byte	0x9f
	.byte	0xc
	.uleb128 0x15
	.string	"buf"
	.byte	0x2e
	.4byte	0xee
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x2f
	.byte	0x9
	.4byte	0x2b
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x30
	.byte	0x9
	.4byte	0x2b
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x31
	.byte	0x9
	.4byte	0x2b
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x32
	.byte	0x9
	.4byte	0x2b
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x33
	.byte	0x9
	.4byte	0x2b
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x34
	.byte	0x9
	.4byte	0x2b
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x7
	.byte	0x35
	.byte	0x3
	.4byte	0x126
	.uleb128 0x10
	.4byte	0x85
	.byte	0x8
	.byte	0x41
	.byte	0x1
	.4byte	0x385
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x35
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x36
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x37
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x39
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x3b
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x49
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x4b
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x4d
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x4f
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.4byte	0xf8
	.uleb128 0x10
	.4byte	0x85
	.byte	0x9
	.byte	0x33
	.byte	0x1
	.4byte	0x3a3
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0x9
	.byte	0x36
	.byte	0x2
	.4byte	0x38a
	.uleb128 0x10
	.4byte	0x85
	.byte	0xa
	.byte	0x39
	.byte	0xe
	.4byte	0x3c8
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0xa
	.byte	0x3c
	.byte	0x2
	.4byte	0x3af
	.uleb128 0x10
	.4byte	0x85
	.byte	0xa
	.byte	0x49
	.byte	0xe
	.4byte	0x40b
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0xa
	.byte	0x51
	.byte	0x2
	.4byte	0x3d4
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x2d
	.byte	0xc
	.4byte	0x428
	.uleb128 0x5
	.byte	0x3
	.4byte	gpstmsg
	.uleb128 0x9
	.4byte	0x1ce
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x2e
	.byte	0x13
	.4byte	0x11a
	.uleb128 0x5
	.byte	0x3
	.4byte	i2c_hd_handle
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x2f
	.byte	0x13
	.4byte	0x11a
	.uleb128 0x5
	.byte	0x3
	.4byte	i2c_msgs_handle
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x30
	.byte	0x13
	.4byte	0x11a
	.uleb128 0x5
	.byte	0x3
	.4byte	i2c_transfer_handle
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x31
	.byte	0x13
	.4byte	0x11a
	.uleb128 0x5
	.byte	0x3
	.4byte	i2c_loop_handle
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x32
	.byte	0x13
	.4byte	0x11a
	.uleb128 0x5
	.byte	0x3
	.4byte	i2c_insert_handle
	.uleb128 0x5
	.4byte	.LASF126
	.byte	0xb
	.byte	0x31
	.4byte	0x49d
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0xb9
	.uleb128 0x2
	.4byte	0xb9
	.byte	0
	.uleb128 0xe
	.4byte	.LASF124
	.2byte	0x586
	.byte	0xf
	.4byte	0x104
	.4byte	0x4b3
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0xe
	.4byte	.LASF125
	.2byte	0x5d8
	.byte	0x10
	.4byte	0x104
	.4byte	0x4d3
	.uleb128 0x2
	.4byte	0xdd
	.uleb128 0x2
	.4byte	0xdd
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x5
	.4byte	.LASF127
	.byte	0xb
	.byte	0x20
	.4byte	0x4e4
	.uleb128 0x2
	.4byte	0x3e
	.byte	0
	.uleb128 0x5
	.4byte	.LASF128
	.byte	0x7
	.byte	0x37
	.4byte	0x4fa
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x5
	.4byte	.LASF129
	.byte	0x7
	.byte	0x38
	.4byte	0x50b
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x16
	.4byte	.LASF130
	.byte	0xc
	.byte	0x1f
	.4byte	0xb9
	.4byte	0x52a
	.uleb128 0x2
	.4byte	0xbb
	.uleb128 0x2
	.4byte	0x52f
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	0x539
	.uleb128 0x14
	.4byte	0x52a
	.uleb128 0xa
	.4byte	0x52a
	.uleb128 0x1e
	.uleb128 0x16
	.4byte	.LASF131
	.byte	0xd
	.byte	0xc
	.4byte	0xb9
	.4byte	0x54f
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0xe
	.4byte	.LASF132
	.2byte	0x28a
	.byte	0xc
	.4byte	0xc0
	.4byte	0x574
	.uleb128 0x2
	.4byte	0x104
	.uleb128 0x2
	.4byte	0x534
	.uleb128 0x2
	.4byte	0xe2
	.uleb128 0x2
	.4byte	0xcc
	.byte	0
	.uleb128 0x5
	.4byte	.LASF133
	.byte	0x7
	.byte	0x3c
	.4byte	0x585
	.uleb128 0x2
	.4byte	0x428
	.byte	0
	.uleb128 0xe
	.4byte	.LASF134
	.2byte	0x58a
	.byte	0xc
	.4byte	0xc0
	.4byte	0x5a0
	.uleb128 0x2
	.4byte	0x104
	.uleb128 0x2
	.4byte	0xe2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF135
	.byte	0x7
	.byte	0x3b
	.4byte	0x5b1
	.uleb128 0x2
	.4byte	0x428
	.byte	0
	.uleb128 0x5
	.4byte	.LASF136
	.byte	0x7
	.byte	0x3a
	.4byte	0x5c2
	.uleb128 0x2
	.4byte	0x428
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF172
	.byte	0xf
	.2byte	0x97c
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF137
	.2byte	0x510
	.byte	0xc
	.4byte	0xc0
	.4byte	0x5e6
	.uleb128 0x2
	.4byte	0x104
	.uleb128 0x2
	.4byte	0x5eb
	.byte	0
	.uleb128 0x9
	.4byte	0xc0
	.uleb128 0xa
	.4byte	0x5e6
	.uleb128 0x5
	.4byte	.LASF138
	.byte	0xd
	.byte	0xf
	.4byte	0x601
	.uleb128 0x2
	.4byte	0xb9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF139
	.byte	0xe
	.byte	0x2b
	.4byte	0x617
	.uleb128 0x2
	.4byte	0x428
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x5
	.4byte	.LASF140
	.byte	0x7
	.byte	0x39
	.4byte	0x628
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x5
	.4byte	.LASF141
	.byte	0xa
	.byte	0xba
	.4byte	0x643
	.uleb128 0x2
	.4byte	0x3c8
	.uleb128 0x2
	.4byte	0x40b
	.uleb128 0x2
	.4byte	0x3a3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF142
	.byte	0xa
	.byte	0xb0
	.4byte	0x654
	.uleb128 0x2
	.4byte	0x3c8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF147
	.2byte	0x179
	.4byte	0x2b
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6cd
	.uleb128 0x3
	.4byte	.LASF143
	.2byte	0x179
	.byte	0x1f
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF144
	.2byte	0x179
	.byte	0x34
	.4byte	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF145
	.2byte	0x179
	.byte	0x3e
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF146
	.2byte	0x179
	.byte	0x4a
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.4byte	.LASF26
	.2byte	0x179
	.byte	0x5b
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xd
	.string	"msg"
	.2byte	0x17b
	.byte	0xf
	.4byte	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0xc
	.4byte	.LASF148
	.2byte	0x160
	.4byte	0x2b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x746
	.uleb128 0x3
	.4byte	.LASF143
	.2byte	0x160
	.byte	0x20
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF144
	.2byte	0x160
	.byte	0x35
	.4byte	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF145
	.2byte	0x160
	.byte	0x3f
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF146
	.2byte	0x160
	.byte	0x4b
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.4byte	.LASF26
	.2byte	0x160
	.byte	0x5c
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xd
	.string	"msg"
	.2byte	0x162
	.byte	0xf
	.4byte	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0xc
	.4byte	.LASF149
	.2byte	0x146
	.4byte	0x2b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ce
	.uleb128 0x3
	.4byte	.LASF143
	.2byte	0x146
	.byte	0x1d
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF144
	.2byte	0x146
	.byte	0x32
	.4byte	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF145
	.2byte	0x146
	.byte	0x3c
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF146
	.2byte	0x146
	.byte	0x48
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.4byte	.LASF26
	.2byte	0x146
	.byte	0x59
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xd
	.string	"msg"
	.2byte	0x148
	.byte	0xf
	.4byte	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.string	"ret"
	.2byte	0x149
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF150
	.2byte	0x12c
	.4byte	0x2b
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x856
	.uleb128 0x3
	.4byte	.LASF143
	.2byte	0x12c
	.byte	0x1c
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF144
	.2byte	0x12c
	.byte	0x2b
	.4byte	0x385
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF145
	.2byte	0x12c
	.byte	0x35
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF146
	.2byte	0x12c
	.byte	0x41
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.4byte	.LASF26
	.2byte	0x12c
	.byte	0x52
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xd
	.string	"msg"
	.2byte	0x12e
	.byte	0xf
	.4byte	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.string	"ret"
	.2byte	0x12f
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF151
	.2byte	0x110
	.4byte	0x2b
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88e
	.uleb128 0x3
	.4byte	.LASF33
	.2byte	0x110
	.byte	0x16
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF152
	.2byte	0x110
	.byte	0x20
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF153
	.2byte	0x10a
	.4byte	0x2b
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b7
	.uleb128 0x3
	.4byte	.LASF154
	.2byte	0x10a
	.byte	0x2d
	.4byte	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF155
	.byte	0xfd
	.4byte	0x2b
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ec
	.uleb128 0x8
	.4byte	.LASF154
	.byte	0xfd
	.byte	0x29
	.4byte	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"num"
	.byte	0xfd
	.byte	0x35
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0xdf
	.4byte	0x2b
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x93a
	.uleb128 0x8
	.4byte	.LASF154
	.byte	0xdf
	.byte	0x28
	.4byte	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"num"
	.byte	0xdf
	.byte	0x34
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF157
	.byte	0xdf
	.byte	0x3d
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.string	"i"
	.byte	0xe1
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF164
	.byte	0x1
	.byte	0xd5
	.byte	0xd
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96b
	.uleb128 0x8
	.4byte	.LASF154
	.byte	0xd5
	.byte	0x2b
	.4byte	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"i"
	.byte	0xd5
	.byte	0x37
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF158
	.byte	0xc2
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a6
	.uleb128 0x8
	.4byte	.LASF154
	.byte	0xc2
	.byte	0x29
	.4byte	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.string	"i"
	.byte	0xc4
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"ret"
	.byte	0xc5
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF159
	.byte	0xba
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c9
	.uleb128 0x8
	.4byte	.LASF154
	.byte	0xba
	.byte	0x22
	.4byte	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0x9c
	.4byte	0x2b
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa0c
	.uleb128 0x8
	.4byte	.LASF154
	.byte	0x9c
	.byte	0x26
	.4byte	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.4byte	.LASF161
	.byte	0x9e
	.byte	0xe
	.4byte	0xee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.4byte	.LASF162
	.byte	0x9f
	.byte	0x10
	.4byte	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0x87
	.4byte	0x2b
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa33
	.uleb128 0x8
	.4byte	.LASF154
	.byte	0x87
	.byte	0x23
	.4byte	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF165
	.byte	0x61
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa72
	.uleb128 0x12
	.string	"ctx"
	.byte	0x61
	.byte	0x27
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.4byte	.LASF166
	.byte	0x63
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.4byte	.LASF154
	.byte	0x64
	.byte	0x10
	.4byte	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF167
	.byte	0x4a
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa95
	.uleb128 0x8
	.4byte	.LASF154
	.byte	0x4a
	.byte	0x2a
	.4byte	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF173
	.byte	0x1
	.byte	0x34
	.byte	0xd
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF154
	.byte	0x34
	.byte	0x25
	.4byte	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.4byte	.LASF168
	.byte	0x36
	.byte	0x10
	.4byte	0xc0
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x8
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.4byte	0x94
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF171:
	.string	"i2c_msg"
.LASF149:
	.string	"hal_i2c_write_block"
.LASF139:
	.string	"i2c_async_trigger"
.LASF43:
	.string	"SEC_BMX_ERR_IRQn"
.LASF161:
	.string	"pbuf"
.LASF7:
	.string	"size_t"
.LASF77:
	.string	"TIMER_WDT_IRQn"
.LASF147:
	.string	"hal_i2c_read_no_block"
.LASF146:
	.string	"subaddr_len"
.LASF41:
	.string	"L1C_BMX_ERR_IRQn"
.LASF113:
	.string	"I2C_NACK_RECV_INT"
.LASF110:
	.string	"I2C_TRANS_END_INT"
.LASF157:
	.string	"support_ins"
.LASF116:
	.string	"I2C_INT_ALL"
.LASF159:
	.string	"i2c_msgs_process"
.LASF16:
	.string	"long long unsigned int"
.LASF34:
	.string	"i2c_msg_t"
.LASF24:
	.string	"direct"
.LASF23:
	.string	"addr"
.LASF144:
	.string	"data"
.LASF21:
	.string	"QueueHandle_t"
.LASF167:
	.string	"i2c_transferbytes"
.LASF119:
	.string	"i2c_hd_handle"
.LASF33:
	.string	"i2cx"
.LASF3:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF152:
	.string	"freq"
.LASF127:
	.string	"bl_irq_enable"
.LASF38:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF137:
	.string	"xQueueGiveFromISR"
.LASF37:
	.string	"MEXT_IRQn"
.LASF49:
	.string	"SEC_CDET_IRQn"
.LASF79:
	.string	"RESERVED11"
.LASF80:
	.string	"RESERVED12"
.LASF81:
	.string	"RESERVED13"
.LASF82:
	.string	"RESERVED14"
.LASF84:
	.string	"RESERVED16"
.LASF85:
	.string	"RESERVED17"
.LASF86:
	.string	"RESERVED18"
.LASF87:
	.string	"RESERVED19"
.LASF9:
	.string	"long int"
.LASF108:
	.string	"I2C_ID_MAX"
.LASF32:
	.string	"ins_num"
.LASF83:
	.string	"GPIO_INT0_IRQn"
.LASF130:
	.string	"memcpy"
.LASF163:
	.string	"i2c_transfer_block"
.LASF120:
	.string	"i2c_msgs_handle"
.LASF64:
	.string	"GPADC_DMA_IRQn"
.LASF17:
	.string	"BaseType_t"
.LASF151:
	.string	"hal_i2c_init"
.LASF155:
	.string	"i2c_insert_transfer_msgs"
.LASF114:
	.string	"I2C_ARB_LOST_INT"
.LASF71:
	.string	"I2C_IRQn"
.LASF44:
	.string	"RF_TOP_INT0_IRQn"
.LASF131:
	.string	"pvPortMalloc"
.LASF164:
	.string	"i2c_msg_space_func"
.LASF88:
	.string	"RESERVED20"
.LASF105:
	.string	"MASK"
.LASF118:
	.string	"gpstmsg"
.LASF30:
	.string	"block"
.LASF2:
	.string	"unsigned int"
.LASF65:
	.string	"EFUSE_IRQn"
.LASF93:
	.string	"WIFI_IRQn"
.LASF12:
	.string	"uint16_t"
.LASF89:
	.string	"PDS_WAKEUP_IRQn"
.LASF15:
	.string	"long unsigned int"
.LASF29:
	.string	"idex"
.LASF134:
	.string	"xQueueSemaphoreTake"
.LASF25:
	.string	"subflag"
.LASF132:
	.string	"xQueueGenericSend"
.LASF28:
	.string	"event"
.LASF111:
	.string	"I2C_TX_FIFO_READY_INT"
.LASF13:
	.string	"short unsigned int"
.LASF92:
	.string	"BOR_IRQn"
.LASF135:
	.string	"do_read_data"
.LASF48:
	.string	"SEC_GMAC_IRQn"
.LASF124:
	.string	"xQueueCreateMutex"
.LASF94:
	.string	"BZ_PHY_IRQn"
.LASF153:
	.string	"i2c_transfer_onemsg_no_block"
.LASF162:
	.string	"psttmp"
.LASF140:
	.string	"i2c_clear_status"
.LASF138:
	.string	"vPortFree"
.LASF68:
	.string	"UART0_IRQn"
.LASF154:
	.string	"pstmsg"
.LASF104:
	.string	"UNMASK"
.LASF172:
	.string	"vTaskSwitchContext"
.LASF53:
	.string	"SEC_SHA_IRQn"
.LASF52:
	.string	"SEC_AES_IRQn"
.LASF136:
	.string	"do_write_data"
.LASF141:
	.string	"I2C_IntMask"
.LASF143:
	.string	"address"
.LASF112:
	.string	"I2C_RX_FIFO_READY_INT"
.LASF19:
	.string	"TickType_t"
.LASF35:
	.string	"MSOFT_IRQn"
.LASF73:
	.string	"PWM_IRQn"
.LASF54:
	.string	"DMA_ALL_IRQn"
.LASF101:
	.string	"MAC_PORT_TRG_IRQn"
.LASF122:
	.string	"i2c_loop_handle"
.LASF150:
	.string	"hal_i2c_read_block"
.LASF99:
	.string	"MAC_TX_TRG_IRQn"
.LASF69:
	.string	"UART1_IRQn"
.LASF168:
	.string	"xHigherPriorityTaskWoken"
.LASF55:
	.string	"RESERVED0"
.LASF56:
	.string	"RESERVED1"
.LASF57:
	.string	"RESERVED2"
.LASF60:
	.string	"RESERVED3"
.LASF61:
	.string	"RESERVED4"
.LASF63:
	.string	"RESERVED5"
.LASF67:
	.string	"RESERVED6"
.LASF70:
	.string	"RESERVED7"
.LASF72:
	.string	"RESERVED8"
.LASF74:
	.string	"RESERVED9"
.LASF95:
	.string	"BLE_IRQn"
.LASF170:
	.string	"QueueDefinition"
.LASF59:
	.string	"IRRX_IRQn"
.LASF50:
	.string	"SEC_PKA_IRQn"
.LASF8:
	.string	"int32_t"
.LASF11:
	.string	"unsigned char"
.LASF96:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF62:
	.string	"SF_CTRL_IRQn"
.LASF42:
	.string	"L1C_BMX_TO_IRQn"
.LASF6:
	.string	"short int"
.LASF58:
	.string	"IRTX_IRQn"
.LASF129:
	.string	"i2c_gpio_init"
.LASF115:
	.string	"I2C_FIFO_ERR_INT"
.LASF98:
	.string	"MAC_RX_TRG_IRQn"
.LASF128:
	.string	"i2c_set_freq"
.LASF125:
	.string	"xQueueGenericCreate"
.LASF173:
	.string	"i2c_callback"
.LASF126:
	.string	"bl_irq_register_with_ctx"
.LASF106:
	.string	"BL_Mask_Type"
.LASF165:
	.string	"i2c_interrupt_entry"
.LASF27:
	.string	"sublen"
.LASF14:
	.string	"uint32_t"
.LASF109:
	.string	"I2C_ID_Type"
.LASF40:
	.string	"BMX_TO_IRQn"
.LASF4:
	.string	"long double"
.LASF145:
	.string	"length"
.LASF22:
	.string	"SemaphoreHandle_t"
.LASF20:
	.string	"char"
.LASF36:
	.string	"MTIME_IRQn"
.LASF156:
	.string	"i2c_transfer_msgs_block"
.LASF100:
	.string	"MAC_GEN_IRQn"
.LASF142:
	.string	"I2C_Disable"
.LASF26:
	.string	"subaddr"
.LASF121:
	.string	"i2c_transfer_handle"
.LASF158:
	.string	"i2c_insert_msgs_process"
.LASF39:
	.string	"BMX_ERR_IRQn"
.LASF97:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF75:
	.string	"TIMER_CH0_IRQn"
.LASF45:
	.string	"RF_TOP_INT1_IRQn"
.LASF90:
	.string	"HBN_OUT0_IRQn"
.LASF78:
	.string	"RESERVED10"
.LASF160:
	.string	"i2c_transfer_no_block"
.LASF102:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF117:
	.string	"I2C_INT_Type"
.LASF103:
	.string	"IRQn_LAST"
.LASF46:
	.string	"SDIO_IRQn"
.LASF10:
	.string	"uint8_t"
.LASF133:
	.string	"i2c_transfer_start"
.LASF107:
	.string	"I2C0_ID"
.LASF51:
	.string	"SEC_TRNG_IRQn"
.LASF47:
	.string	"DMA_BMX_ERR_IRQn"
.LASF123:
	.string	"i2c_insert_handle"
.LASF66:
	.string	"SPI_IRQn"
.LASF166:
	.string	"tmpval"
.LASF76:
	.string	"TIMER_CH1_IRQn"
.LASF169:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF148:
	.string	"hal_i2c_write_no_block"
.LASF91:
	.string	"HBN_OUT1_IRQn"
.LASF31:
	.string	"stop"
.LASF18:
	.string	"UBaseType_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
