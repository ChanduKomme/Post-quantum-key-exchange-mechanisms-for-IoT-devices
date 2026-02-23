	.file	"bl_irq.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_irq.c"
	.section	.text.bl_irq_enable,"ax",@progbits
	.align	1
	.globl	bl_irq_enable
	.type	bl_irq_enable, @function
bl_irq_enable:
.LFB9:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_irq.c"
	.loc 1 42 1
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
	.loc 1 43 47
	lw	a4,-20(s0)
	li	a5,41943040
	addi	a5,a5,1024
	add	a5,a4,a5
	.loc 1 43 6
	mv	a4,a5
	.loc 1 43 57
	li	a5,1
	sb	a5,0(a4)
	.loc 1 44 1
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
.LFE9:
	.size	bl_irq_enable, .-bl_irq_enable
	.section	.text.bl_irq_disable,"ax",@progbits
	.align	1
	.globl	bl_irq_disable
	.type	bl_irq_disable, @function
bl_irq_disable:
.LFB10:
	.loc 1 47 1
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
	.loc 1 48 47
	lw	a4,-20(s0)
	li	a5,41943040
	addi	a5,a5,1024
	add	a5,a4,a5
	.loc 1 48 57
	sb	zero,0(a5)
	.loc 1 49 1
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
.LFE10:
	.size	bl_irq_disable, .-bl_irq_disable
	.section	.text.bl_irq_pending_set,"ax",@progbits
	.align	1
	.globl	bl_irq_pending_set
	.type	bl_irq_pending_set, @function
bl_irq_pending_set:
.LFB11:
	.loc 1 52 1
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
	.loc 1 53 47
	lw	a4,-20(s0)
	li	a5,41943040
	add	a5,a4,a5
	.loc 1 53 6
	mv	a4,a5
	.loc 1 53 57
	li	a5,1
	sb	a5,0(a4)
	.loc 1 54 1
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
	.size	bl_irq_pending_set, .-bl_irq_pending_set
	.section	.text.bl_irq_pending_clear,"ax",@progbits
	.align	1
	.globl	bl_irq_pending_clear
	.type	bl_irq_pending_clear, @function
bl_irq_pending_clear:
.LFB12:
	.loc 1 57 1
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
	.loc 1 58 47
	lw	a4,-20(s0)
	li	a5,41943040
	add	a5,a4,a5
	.loc 1 58 57
	sb	zero,0(a5)
	.loc 1 59 1
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
.LFE12:
	.size	bl_irq_pending_clear, .-bl_irq_pending_clear
	.section	.rodata
	.align	2
.LC0:
	.string	"Trigger exception val is %08lx\r\n"
	.section	.text.bl_irq_exception_trigger,"ax",@progbits
	.align	1
	.globl	bl_irq_exception_trigger
	.type	bl_irq_exception_trigger, @function
bl_irq_exception_trigger:
.LFB13:
	.loc 1 62 1
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
	.loc 1 63 14
	li	a5,305418240
	addi	a5,a5,1656
	sw	a5,-20(s0)
	.loc 1 65 5
	lbu	a5,-33(s0)
	li	a4,3
	beq	a5,a4,.L6
	li	a4,3
	bgt	a5,a4,.L7
	li	a4,2
	beq	a5,a4,.L8
	li	a4,2
	bgt	a5,a4,.L7
	beq	a5,zero,.L9
	li	a4,1
	beq	a5,a4,.L10
	j	.L7
.L9:
	.loc 1 68 17
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 70 9
	j	.L7
.L10:
	.loc 1 73 29
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 75 9
	j	.L7
.L8:
	.loc 1 78 29
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 80 9
	j	.L7
.L6:
.LBB2:
	.loc 1 83 22
	sw	zero,-28(s0)
	.loc 1 85 23
	addi	a5,s0,-28
	sw	a5,-24(s0)
	.loc 1 87 13
	lw	a5,-24(s0)
	jalr	a5
.LVL0:
.LBE2:
	.loc 1 89 9
	nop
.L7:
	.loc 1 95 5
	lw	a1,-20(s0)
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 96 1
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
.LFE13:
	.size	bl_irq_exception_trigger, .-bl_irq_exception_trigger
	.section	.text.bl_irq_default,"ax",@progbits
	.align	1
	.globl	bl_irq_default
	.type	bl_irq_default, @function
bl_irq_default:
.LFB14:
	.loc 1 99 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.L12:
	.loc 1 100 11
	nop
	j	.L12
	.cfi_endproc
.LFE14:
	.size	bl_irq_default, .-bl_irq_default
	.section	.bss.handler_list,"aw",@nobits
	.align	2
	.type	handler_list, @object
	.size	handler_list, 640
handler_list:
	.zero	640
	.section	.text._irq_num_check,"ax",@progbits
	.align	1
	.type	_irq_num_check, @function
_irq_num_check:
.LFB15:
	.loc 1 111 1
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
	.loc 1 112 8
	lw	a5,-20(s0)
	blt	a5,zero,.L14
	.loc 1 112 30 discriminator 1
	lw	a4,-20(s0)
	.loc 1 112 20 discriminator 1
	li	a5,79
	bgtu	a4,a5,.L14
	.loc 1 118 1
	j	.L17
.L18:
.L14:
	.loc 1 114 15
	j	.L18
.L17:
	.loc 1 118 1
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
	.size	_irq_num_check, .-_irq_num_check
	.section	.text.bl_irq_register_with_ctx,"ax",@progbits
	.align	1
	.globl	bl_irq_register_with_ctx
	.type	bl_irq_register_with_ctx, @function
bl_irq_register_with_ctx:
.LFB16:
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
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	.loc 1 122 5
	lw	a0,-20(s0)
	call	_irq_num_check
	.loc 1 130 8
	lw	a5,-24(s0)
	beq	a5,zero,.L25
	.loc 1 135 8
	lw	a5,-28(s0)
	bne	a5,zero,.L23
	.loc 1 136 33
	lw	a4,-24(s0)
	lui	a5,%hi(handler_list)
	addi	a3,a5,%lo(handler_list)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 1 137 33
	lui	a5,%hi(handler_list)
	addi	a4,a5,%lo(handler_list)
	lw	a5,-20(s0)
	addi	a5,a5,80
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	.loc 1 144 5
	j	.L19
.L23:
	.loc 1 140 33
	lw	a4,-24(s0)
	lui	a5,%hi(handler_list)
	addi	a3,a5,%lo(handler_list)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 1 141 33
	lw	a4,-28(s0)
	lui	a5,%hi(handler_list)
	addi	a3,a5,%lo(handler_list)
	lw	a5,-20(s0)
	addi	a5,a5,80
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 1 144 5
	j	.L19
.L25:
	.loc 1 132 9
	nop
.L19:
	.loc 1 146 1
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
	.size	bl_irq_register_with_ctx, .-bl_irq_register_with_ctx
	.section	.text.bl_irq_ctx_get,"ax",@progbits
	.align	1
	.globl	bl_irq_ctx_get
	.type	bl_irq_ctx_get, @function
bl_irq_ctx_get:
.LFB17:
	.loc 1 149 1
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
	.loc 1 150 5
	lw	a0,-20(s0)
	call	_irq_num_check
	.loc 1 151 27
	lui	a5,%hi(handler_list)
	addi	a4,a5,%lo(handler_list)
	lw	a5,-20(s0)
	addi	a5,a5,80
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 151 10
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 153 5
	nop
	.loc 1 154 1
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
	.size	bl_irq_ctx_get, .-bl_irq_ctx_get
	.section	.text.bl_irq_register,"ax",@progbits
	.align	1
	.globl	bl_irq_register
	.type	bl_irq_register, @function
bl_irq_register:
.LFB18:
	.loc 1 157 1
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
	.loc 1 158 5
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	bl_irq_register_with_ctx
	.loc 1 159 1
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
.LFE18:
	.size	bl_irq_register, .-bl_irq_register
	.section	.text.bl_irq_unregister,"ax",@progbits
	.align	1
	.globl	bl_irq_unregister
	.type	bl_irq_unregister, @function
bl_irq_unregister:
.LFB19:
	.loc 1 162 1
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
	.loc 1 163 5
	lw	a0,-20(s0)
	call	_irq_num_check
	.loc 1 171 29
	lw	a4,-24(s0)
	lui	a5,%hi(handler_list)
	addi	a3,a5,%lo(handler_list)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 1 172 1
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
	.size	bl_irq_unregister, .-bl_irq_unregister
	.section	.rodata
	.align	2
.LC1:
	.string	"Cannot handle mcause 0x%lx:%lu, adjust to externel(0x%lx:%lu)\r\n"
	.section	.text.interrupt_entry,"ax",@progbits
	.align	1
	.globl	interrupt_entry
	.type	interrupt_entry, @function
interrupt_entry:
.LFB20:
	.loc 1 175 1
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
	.loc 1 176 11
	sw	zero,-20(s0)
	.loc 1 177 12
	lw	a4,-36(s0)
	li	a5,134217728
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-36(s0)
	.loc 1 178 8
	lw	a4,-36(s0)
	li	a5,79
	bgtu	a4,a5,.L31
	.loc 1 179 17
	lui	a5,%hi(handler_list)
	addi	a4,a5,%lo(handler_list)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L31:
	.loc 1 181 8
	lw	a5,-20(s0)
	beq	a5,zero,.L32
	.loc 1 182 28
	lui	a5,%hi(handler_list)
	addi	a4,a5,%lo(handler_list)
	lw	a5,-36(s0)
	addi	a5,a5,80
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 182 12
	beq	a5,zero,.L33
	.loc 1 183 13
	lw	a5,-20(s0)
	.loc 1 183 55
	lui	a4,%hi(handler_list)
	addi	a3,a4,%lo(handler_list)
	lw	a4,-36(s0)
	addi	a4,a4,80
	slli	a4,a4,2
	add	a4,a3,a4
	lw	a4,0(a4)
	.loc 1 183 13
	mv	a0,a4
	jalr	a5
.LVL1:
	.loc 1 199 1
	j	.L30
.L33:
	.loc 1 186 14
	lw	a5,-20(s0)
	jalr	a5
.LVL2:
	.loc 1 199 1
	j	.L30
.L32:
	.loc 1 189 9
	lw	a5,-36(s0)
	addi	a3,a5,-16
	lw	a5,-36(s0)
	addi	a5,a5,-16
	mv	a4,a5
	lw	a2,-36(s0)
	lw	a1,-36(s0)
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L35:
	.loc 1 195 15
	nop
	j	.L35
.L30:
	.loc 1 199 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	interrupt_entry, .-interrupt_entry
	.section	.rodata
	.align	2
.LC2:
	.string	"Exception code: %lu\r\n"
	.align	2
.LC3:
	.string	"  msg: Instruction address misaligned\r\n"
	.align	2
.LC4:
	.string	"  msg: Instruction access fault\r\n"
	.align	2
.LC5:
	.string	"  msg: Illegal instruction\r\n"
	.align	2
.LC6:
	.string	"  msg: Breakpoint\r\n"
	.align	2
.LC7:
	.string	"  msg: Load address misaligned\r\n"
	.align	2
.LC8:
	.string	"  msg: Load access fault\r\n"
	.align	2
.LC9:
	.string	"  msg: Store/AMO access misaligned\r\n"
	.align	2
.LC10:
	.string	"  msg: Store/AMO access fault\r\n"
	.align	2
.LC11:
	.string	"  msg: Environment call from U-mode\r\n"
	.align	2
.LC12:
	.string	"  msg: Environment call from S-mode\r\n"
	.align	2
.LC13:
	.string	"  msg: Reserved\r\n"
	.align	2
.LC14:
	.string	"  msg: Environment call from M-mode\r\n"
	.align	2
.LC15:
	.string	"  msg: Instruction page fault\r\n"
	.align	2
.LC16:
	.string	"  msg: Load page fault\r\n"
	.align	2
.LC17:
	.string	"  msg: Store/AMO page fault\r\n"
	.align	2
.LC18:
	.string	"  msg: Reserved default exception\r\n"
	.section	.text.__dump_exception_code_str,"ax",@progbits
	.align	1
	.type	__dump_exception_code_str, @function
__dump_exception_code_str:
.LFB21:
	.loc 1 202 1
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
	.loc 1 203 5
	lw	a1,-20(s0)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	.loc 1 204 5
	lw	a4,-20(s0)
	li	a5,15
	beq	a4,a5,.L37
	lw	a4,-20(s0)
	li	a5,15
	bgtu	a4,a5,.L38
	lw	a4,-20(s0)
	li	a5,14
	beq	a4,a5,.L39
	lw	a4,-20(s0)
	li	a5,14
	bgtu	a4,a5,.L38
	lw	a4,-20(s0)
	li	a5,13
	beq	a4,a5,.L40
	lw	a4,-20(s0)
	li	a5,13
	bgtu	a4,a5,.L38
	lw	a4,-20(s0)
	li	a5,12
	beq	a4,a5,.L41
	lw	a4,-20(s0)
	li	a5,12
	bgtu	a4,a5,.L38
	lw	a4,-20(s0)
	li	a5,11
	beq	a4,a5,.L42
	lw	a4,-20(s0)
	li	a5,11
	bgtu	a4,a5,.L38
	lw	a4,-20(s0)
	li	a5,10
	beq	a4,a5,.L39
	lw	a4,-20(s0)
	li	a5,10
	bgtu	a4,a5,.L38
	lw	a4,-20(s0)
	li	a5,9
	beq	a4,a5,.L43
	lw	a4,-20(s0)
	li	a5,9
	bgtu	a4,a5,.L38
	lw	a4,-20(s0)
	li	a5,8
	beq	a4,a5,.L44
	lw	a4,-20(s0)
	li	a5,8
	bgtu	a4,a5,.L38
	lw	a4,-20(s0)
	li	a5,7
	beq	a4,a5,.L45
	lw	a4,-20(s0)
	li	a5,7
	bgtu	a4,a5,.L38
	lw	a4,-20(s0)
	li	a5,6
	beq	a4,a5,.L46
	lw	a4,-20(s0)
	li	a5,6
	bgtu	a4,a5,.L38
	lw	a4,-20(s0)
	li	a5,5
	beq	a4,a5,.L47
	lw	a4,-20(s0)
	li	a5,5
	bgtu	a4,a5,.L38
	lw	a4,-20(s0)
	li	a5,4
	beq	a4,a5,.L48
	lw	a4,-20(s0)
	li	a5,4
	bgtu	a4,a5,.L38
	lw	a4,-20(s0)
	li	a5,3
	beq	a4,a5,.L49
	lw	a4,-20(s0)
	li	a5,3
	bgtu	a4,a5,.L38
	lw	a4,-20(s0)
	li	a5,2
	beq	a4,a5,.L50
	lw	a4,-20(s0)
	li	a5,2
	bgtu	a4,a5,.L38
	lw	a5,-20(s0)
	beq	a5,zero,.L51
	lw	a4,-20(s0)
	li	a5,1
	beq	a4,a5,.L52
	j	.L38
.L51:
	.loc 1 208 13
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	puts
	.loc 1 210 9
	j	.L53
.L52:
	.loc 1 214 13
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	puts
	.loc 1 216 9
	j	.L53
.L50:
	.loc 1 220 13
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	puts
	.loc 1 222 9
	j	.L53
.L49:
	.loc 1 226 13
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	puts
	.loc 1 228 9
	j	.L53
.L48:
	.loc 1 232 13
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	puts
	.loc 1 234 9
	j	.L53
.L47:
	.loc 1 238 13
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	puts
	.loc 1 240 9
	j	.L53
.L46:
	.loc 1 244 13
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	puts
	.loc 1 246 9
	j	.L53
.L45:
	.loc 1 250 13
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	puts
	.loc 1 252 9
	j	.L53
.L44:
	.loc 1 256 13
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	puts
	.loc 1 258 9
	j	.L53
.L43:
	.loc 1 262 13
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	puts
	.loc 1 264 9
	j	.L53
.L39:
	.loc 1 269 13
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	puts
	.loc 1 271 9
	j	.L53
.L42:
	.loc 1 275 13
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	call	puts
	.loc 1 277 9
	j	.L53
.L41:
	.loc 1 281 13
	lui	a5,%hi(.LC15)
	addi	a0,a5,%lo(.LC15)
	call	puts
	.loc 1 283 9
	j	.L53
.L40:
	.loc 1 287 13
	lui	a5,%hi(.LC16)
	addi	a0,a5,%lo(.LC16)
	call	puts
	.loc 1 289 9
	j	.L53
.L37:
	.loc 1 293 13
	lui	a5,%hi(.LC17)
	addi	a0,a5,%lo(.LC17)
	call	puts
	.loc 1 295 9
	j	.L53
.L38:
	.loc 1 297 13
	lui	a5,%hi(.LC18)
	addi	a0,a5,%lo(.LC18)
	call	puts
	.loc 1 300 1
	nop
.L53:
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
.LFE21:
	.size	__dump_exception_code_str, .-__dump_exception_code_str
	.section	.rodata
	.align	2
.LC19:
	.string	"Exception Entry--->>>\r\n"
	.align	2
.LC20:
	.string	"mcause %08lx, mepc %08lx, mtval %08lx\r\n"
	.section	.text.exception_entry,"ax",@progbits
	.align	1
	.globl	exception_entry
	.type	exception_entry, @function
exception_entry:
.LFB22:
	.loc 1 318 1
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
	sw	a3,-32(s0)
	.loc 1 325 17
	lw	a5,-20(s0)
	andi	a4,a5,1023
	.loc 1 325 8
	li	a5,4
	bne	a4,a5,.L55
	.loc 1 326 9
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	lw	a0,-32(s0)
	call	misaligned_load_trap
	.loc 1 346 1
	j	.L54
.L55:
	.loc 1 327 24
	lw	a5,-20(s0)
	andi	a4,a5,1023
	.loc 1 327 15
	li	a5,6
	bne	a4,a5,.L57
	.loc 1 328 9
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	lw	a0,-32(s0)
	call	misaligned_store_trap
	.loc 1 346 1
	j	.L54
.L57:
	.loc 1 330 9
	lui	a5,%hi(.LC19)
	addi	a0,a5,%lo(.LC19)
	call	puts
	.loc 1 331 9
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(.LC20)
	addi	a0,a5,%lo(.LC20)
	call	printf
	.loc 1 336 9
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	__dump_exception_code_str
	.loc 1 340 9
	lw	a1,-32(s0)
	lui	a5,%hi(printf)
	addi	a0,a5,%lo(printf)
	call	backtrace_now
.L58:
	.loc 1 341 15
	nop
	j	.L58
.L54:
	.loc 1 346 1
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
	.size	exception_entry, .-exception_entry
	.section	.rodata
	.align	2
.LC21:
	.string	"[IRQ] Clearing and Disable all the pending IRQ...\r\n"
	.section	.text.bl_irq_init,"ax",@progbits
	.align	1
	.globl	bl_irq_init
	.type	bl_irq_init, @function
bl_irq_init:
.LFB23:
	.loc 1 349 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 352 5
	lui	a5,%hi(.LC21)
	addi	a0,a5,%lo(.LC21)
	call	puts
	.loc 1 355 14
	li	a5,41943040
	addi	a5,a5,1024
	sw	a5,-20(s0)
	.loc 1 355 5
	j	.L60
.L61:
	.loc 1 356 10
	lw	a5,-20(s0)
	.loc 1 356 24
	sb	zero,0(a5)
	.loc 1 355 55 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L60:
	.loc 1 355 32 discriminator 1
	lw	a4,-20(s0)
	li	a5,41943040
	addi	a5,a5,1151
	bleu	a4,a5,.L61
	.loc 1 359 14
	li	a5,41943040
	sw	a5,-20(s0)
	.loc 1 359 5
	j	.L62
.L63:
	.loc 1 360 10
	lw	a5,-20(s0)
	.loc 1 360 24
	sb	zero,0(a5)
	.loc 1 359 55 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L62:
	.loc 1 359 32 discriminator 1
	lw	a4,-20(s0)
	li	a5,41943040
	addi	a5,a5,127
	bleu	a4,a5,.L63
	.loc 1 362 1
	nop
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
.LFE23:
	.size	bl_irq_init, .-bl_irq_init
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_irq.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/panic/panic.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x476
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x11
	.4byte	.LASF52
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
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x53
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x2
	.byte	0x56
	.byte	0x16
	.4byte	0x82
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x6
	.4byte	0xa3
	.uleb128 0x14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x15
	.4byte	0xa4
	.uleb128 0x6
	.4byte	0xab
	.uleb128 0x16
	.4byte	0xb0
	.uleb128 0x17
	.byte	0x7
	.byte	0x1
	.4byte	0x53
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.4byte	0xe1
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x3
	.byte	0x27
	.byte	0x3
	.4byte	0xba
	.uleb128 0x18
	.4byte	0x9e
	.4byte	0x103
	.uleb128 0xd
	.4byte	0x82
	.byte	0x1
	.uleb128 0xd
	.4byte	0x82
	.byte	0x4f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x69
	.byte	0xf
	.4byte	0xed
	.uleb128 0x5
	.byte	0x3
	.4byte	handler_list
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.byte	0x4
	.4byte	0x7b
	.4byte	0x12e
	.uleb128 0x3
	.4byte	0x12e
	.uleb128 0x3
	.4byte	0x143
	.byte	0
	.uleb128 0x6
	.4byte	0x133
	.uleb128 0x19
	.4byte	0x7b
	.4byte	0x143
	.uleb128 0x3
	.4byte	0xb0
	.uleb128 0xe
	.byte	0
	.uleb128 0x6
	.4byte	0x89
	.uleb128 0xf
	.4byte	.LASF21
	.2byte	0x12f
	.4byte	0x163
	.uleb128 0x3
	.4byte	0x143
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0x89
	.byte	0
	.uleb128 0xf
	.4byte	.LASF22
	.2byte	0x12e
	.4byte	0x17e
	.uleb128 0x3
	.4byte	0x143
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0x89
	.byte	0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x5
	.byte	0xe3
	.4byte	0x7b
	.4byte	0x193
	.uleb128 0x3
	.4byte	0xb0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x5
	.byte	0xce
	.4byte	0x7b
	.4byte	0x1a9
	.uleb128 0x3
	.4byte	0xb5
	.uleb128 0xe
	.byte	0
	.uleb128 0x10
	.4byte	.LASF27
	.2byte	0x15c
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cf
	.uleb128 0x1a
	.string	"ptr"
	.byte	0x1
	.2byte	0x15e
	.byte	0xe
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF28
	.2byte	0x13d
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x219
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x1f
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x30
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x3f
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x51
	.4byte	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF41
	.byte	0x1
	.byte	0xc9
	.byte	0xd
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23e
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0xc9
	.byte	0x30
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0xae
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26f
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0xae
	.byte	0x1f
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0xb0
	.byte	0xb
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0xa1
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a0
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0xa1
	.byte	0x1c
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0xa1
	.byte	0x2a
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x9c
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d1
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x9c
	.byte	0x1a
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x9c
	.byte	0x28
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x94
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x302
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x94
	.byte	0x19
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"ctx"
	.byte	0x94
	.byte	0x28
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	0x9c
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x78
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x346
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x78
	.byte	0x23
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x78
	.byte	0x31
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"ctx"
	.byte	0x78
	.byte	0x40
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF42
	.byte	0x1
	.byte	0x6e
	.byte	0x14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x36b
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x6e
	.byte	0x27
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF53
	.byte	0x1
	.byte	0x62
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x3d
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ef
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x3d
	.byte	0x37
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xb
	.string	"ptr"
	.byte	0x3d
	.byte	0x43
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.string	"val"
	.byte	0x1
	.byte	0x3f
	.byte	0xe
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x53
	.byte	0x16
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF46
	.byte	0x1
	.byte	0x54
	.byte	0x1c
	.4byte	0x9e
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x55
	.byte	0x17
	.4byte	0x3d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x38
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x412
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x38
	.byte	0x28
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x33
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x435
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x33
	.byte	0x26
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x2e
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x458
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x2e
	.byte	0x22
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF54
	.byte	0x1
	.byte	0x29
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x29
	.byte	0x21
	.4byte	0x82
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 317
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
	.uleb128 0xb
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
	.uleb128 0x7a
	.uleb128 0x19
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
	.uleb128 0x18
	.byte	0
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
	.sleb128 13
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1e
	.uleb128 0x34
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x8c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"mtval"
.LASF23:
	.string	"backtrace_now"
.LASF42:
	.string	"_irq_num_check"
.LASF34:
	.string	"interrupt_entry"
.LASF13:
	.string	"uintptr_t"
.LASF38:
	.string	"bl_irq_register"
.LASF18:
	.string	"BL_IRQ_EXCEPTION_TYPE_ACCESS_ILLEGAL"
.LASF39:
	.string	"bl_irq_ctx_get"
.LASF51:
	.string	"bl_irq_disable"
.LASF22:
	.string	"misaligned_load_trap"
.LASF43:
	.string	"bl_irq_exception_trigger"
.LASF14:
	.string	"long double"
.LASF46:
	.string	"ins_ptr_t"
.LASF6:
	.string	"unsigned char"
.LASF19:
	.string	"BL_IRQ_EXCEPTION_TYPE_ILLEGAL_INSTRUCTION"
.LASF10:
	.string	"long unsigned int"
.LASF29:
	.string	"mcause"
.LASF16:
	.string	"BL_IRQ_EXCEPTION_TYPE_LOAD_MISALIGN"
.LASF40:
	.string	"bl_irq_register_with_ctx"
.LASF26:
	.string	"handler_list"
.LASF28:
	.string	"exception_entry"
.LASF50:
	.string	"bl_irq_pending_set"
.LASF48:
	.string	"bl_irq_pending_clear"
.LASF47:
	.string	"func"
.LASF21:
	.string	"misaligned_store_trap"
.LASF33:
	.string	"code"
.LASF45:
	.string	"fun_val"
.LASF53:
	.string	"bl_irq_default"
.LASF17:
	.string	"BL_IRQ_EXCEPTION_TYPE_STORE_MISALIGN"
.LASF12:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint8_t"
.LASF52:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF2:
	.string	"signed char"
.LASF35:
	.string	"handler"
.LASF5:
	.string	"long long int"
.LASF27:
	.string	"bl_irq_init"
.LASF15:
	.string	"char"
.LASF25:
	.string	"printf"
.LASF44:
	.string	"type"
.LASF32:
	.string	"regs"
.LASF3:
	.string	"short int"
.LASF20:
	.string	"BL_IRQ_EXCEPTION_TYPE_T"
.LASF37:
	.string	"irqnum"
.LASF30:
	.string	"mepc"
.LASF9:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF41:
	.string	"__dump_exception_code_str"
.LASF24:
	.string	"puts"
.LASF7:
	.string	"short unsigned int"
.LASF49:
	.string	"source"
.LASF54:
	.string	"bl_irq_enable"
.LASF36:
	.string	"bl_irq_unregister"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_irq.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
