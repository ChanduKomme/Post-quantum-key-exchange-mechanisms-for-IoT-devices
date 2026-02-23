	.file	"altcp_tcp.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/altcp_tcp.c"
	.section	.text.altcp_tcp_accept,"ax",@progbits
	.align	1
	.type	altcp_tcp_accept, @function
altcp_tcp_accept:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/altcp_tcp.c"
	.loc 1 76 1
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
	mv	a5,a2
	sb	a5,-41(s0)
	.loc 1 77 21
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 78 6
	lw	a5,-40(s0)
	beq	a5,zero,.L2
	.loc 1 78 16 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L2
	.loc 1 78 45 discriminator 2
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 78 31 discriminator 2
	beq	a5,zero,.L2
.LBB2:
	.loc 1 80 34
	call	altcp_alloc
	sw	a0,-24(s0)
	.loc 1 81 8
	lw	a5,-24(s0)
	bne	a5,zero,.L3
	.loc 1 82 14
	li	a5,-1
	j	.L4
.L3:
	.loc 1 84 5
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	altcp_tcp_setup
	.loc 1 85 23
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 85 12
	lw	a4,-20(s0)
	lw	a4,8(a4)
	lb	a3,-41(s0)
	mv	a2,a3
	lw	a1,-24(s0)
	mv	a0,a4
	jalr	a5
.LVL0:
	mv	a5,a0
	j	.L4
.L2:
.LBE2:
	.loc 1 87 10
	li	a5,-16
.L4:
	.loc 1 88 1
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
.LFE5:
	.size	altcp_tcp_accept, .-altcp_tcp_accept
	.section	.text.altcp_tcp_connected,"ax",@progbits
	.align	1
	.type	altcp_tcp_connected, @function
altcp_tcp_connected:
.LFB6:
	.loc 1 92 1
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
	mv	a5,a2
	sb	a5,-41(s0)
	.loc 1 93 21
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 94 6
	lw	a5,-20(s0)
	beq	a5,zero,.L6
	.loc 1 96 13
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 96 8
	beq	a5,zero,.L6
	.loc 1 97 18
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 97 14
	lw	a4,-20(s0)
	lw	a4,8(a4)
	lb	a3,-41(s0)
	mv	a2,a3
	lw	a1,-20(s0)
	mv	a0,a4
	jalr	a5
.LVL1:
	mv	a5,a0
	j	.L7
.L6:
	.loc 1 100 10
	li	a5,0
.L7:
	.loc 1 101 1
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
.LFE6:
	.size	altcp_tcp_connected, .-altcp_tcp_connected
	.section	.text.altcp_tcp_recv,"ax",@progbits
	.align	1
	.type	altcp_tcp_recv, @function
altcp_tcp_recv:
.LFB7:
	.loc 1 105 1
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
	mv	a5,a3
	sb	a5,-45(s0)
	.loc 1 106 21
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 107 6
	lw	a5,-20(s0)
	beq	a5,zero,.L9
	.loc 1 109 13
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 1 109 8
	beq	a5,zero,.L9
	.loc 1 110 18
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 1 110 14
	lw	a4,-20(s0)
	lw	a4,8(a4)
	lb	a3,-45(s0)
	lw	a2,-44(s0)
	lw	a1,-20(s0)
	mv	a0,a4
	jalr	a5
.LVL2:
	mv	a5,a0
	j	.L10
.L9:
	.loc 1 113 6
	lw	a5,-44(s0)
	beq	a5,zero,.L11
	.loc 1 115 5
	lw	a0,-44(s0)
	call	pbuf_free
.L11:
	.loc 1 117 10
	li	a5,0
.L10:
	.loc 1 118 1
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
	.size	altcp_tcp_recv, .-altcp_tcp_recv
	.section	.text.altcp_tcp_sent,"ax",@progbits
	.align	1
	.type	altcp_tcp_sent, @function
altcp_tcp_sent:
.LFB8:
	.loc 1 122 1
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
	mv	a5,a2
	sh	a5,-42(s0)
	.loc 1 123 21
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 124 6
	lw	a5,-20(s0)
	beq	a5,zero,.L13
	.loc 1 126 13
	lw	a5,-20(s0)
	lw	a5,28(a5)
	.loc 1 126 8
	beq	a5,zero,.L13
	.loc 1 127 18
	lw	a5,-20(s0)
	lw	a5,28(a5)
	.loc 1 127 14
	lw	a4,-20(s0)
	lw	a4,8(a4)
	lhu	a3,-42(s0)
	mv	a2,a3
	lw	a1,-20(s0)
	mv	a0,a4
	jalr	a5
.LVL3:
	mv	a5,a0
	j	.L14
.L13:
	.loc 1 130 10
	li	a5,0
.L14:
	.loc 1 131 1
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
	.size	altcp_tcp_sent, .-altcp_tcp_sent
	.section	.text.altcp_tcp_poll,"ax",@progbits
	.align	1
	.type	altcp_tcp_poll, @function
altcp_tcp_poll:
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
	.loc 1 136 21
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 137 6
	lw	a5,-20(s0)
	beq	a5,zero,.L16
	.loc 1 139 13
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 139 8
	beq	a5,zero,.L16
	.loc 1 140 18
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 140 14
	lw	a4,-20(s0)
	lw	a4,8(a4)
	lw	a1,-20(s0)
	mv	a0,a4
	jalr	a5
.LVL4:
	mv	a5,a0
	j	.L17
.L16:
	.loc 1 143 10
	li	a5,0
.L17:
	.loc 1 144 1
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
	.size	altcp_tcp_poll, .-altcp_tcp_poll
	.section	.text.altcp_tcp_err,"ax",@progbits
	.align	1
	.type	altcp_tcp_err, @function
altcp_tcp_err:
.LFB10:
	.loc 1 148 1
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
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 149 21
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 150 6
	lw	a5,-20(s0)
	beq	a5,zero,.L21
	.loc 1 151 17
	lw	a5,-20(s0)
	sw	zero,12(a5)
	.loc 1 152 13
	lw	a5,-20(s0)
	lw	a5,36(a5)
	.loc 1 152 8
	beq	a5,zero,.L20
	.loc 1 153 11
	lw	a5,-20(s0)
	lw	a5,36(a5)
	.loc 1 153 7
	lw	a4,-20(s0)
	lw	a4,8(a4)
	lb	a3,-37(s0)
	mv	a1,a3
	mv	a0,a4
	jalr	a5
.LVL5:
.L20:
	.loc 1 155 5
	lw	a0,-20(s0)
	call	altcp_free
.L21:
	.loc 1 157 1
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
.LFE10:
	.size	altcp_tcp_err, .-altcp_tcp_err
	.section	.text.altcp_tcp_remove_callbacks,"ax",@progbits
	.align	1
	.type	altcp_tcp_remove_callbacks, @function
altcp_tcp_remove_callbacks:
.LFB11:
	.loc 1 163 1
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
	.loc 1 164 3
	li	a1,0
	lw	a0,-20(s0)
	call	tcp_arg
	.loc 1 165 11
	lw	a5,-20(s0)
	lbu	a4,20(a5)
	.loc 1 165 6
	li	a5,1
	beq	a4,a5,.L24
	.loc 1 166 5
	li	a1,0
	lw	a0,-20(s0)
	call	tcp_recv
	.loc 1 167 5
	li	a1,0
	lw	a0,-20(s0)
	call	tcp_sent
	.loc 1 168 5
	li	a1,0
	lw	a0,-20(s0)
	call	tcp_err
	.loc 1 169 5
	lw	a5,-20(s0)
	lbu	a5,29(a5)
	mv	a2,a5
	li	a1,0
	lw	a0,-20(s0)
	call	tcp_poll
.L24:
	.loc 1 171 1
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
	.size	altcp_tcp_remove_callbacks, .-altcp_tcp_remove_callbacks
	.section	.text.altcp_tcp_setup_callbacks,"ax",@progbits
	.align	1
	.type	altcp_tcp_setup_callbacks, @function
altcp_tcp_setup_callbacks:
.LFB12:
	.loc 1 175 1
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
	.loc 1 176 3
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	tcp_arg
	.loc 1 178 11
	lw	a5,-24(s0)
	lbu	a4,20(a5)
	.loc 1 178 6
	li	a5,1
	beq	a4,a5,.L27
	.loc 1 179 5
	lui	a5,%hi(altcp_tcp_recv)
	addi	a1,a5,%lo(altcp_tcp_recv)
	lw	a0,-24(s0)
	call	tcp_recv
	.loc 1 180 5
	lui	a5,%hi(altcp_tcp_sent)
	addi	a1,a5,%lo(altcp_tcp_sent)
	lw	a0,-24(s0)
	call	tcp_sent
	.loc 1 181 5
	lui	a5,%hi(altcp_tcp_err)
	addi	a1,a5,%lo(altcp_tcp_err)
	lw	a0,-24(s0)
	call	tcp_err
.L27:
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
.LFE12:
	.size	altcp_tcp_setup_callbacks, .-altcp_tcp_setup_callbacks
	.section	.text.altcp_tcp_setup,"ax",@progbits
	.align	1
	.type	altcp_tcp_setup, @function
altcp_tcp_setup:
.LFB13:
	.loc 1 188 1
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
	.loc 1 189 3
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	altcp_tcp_setup_callbacks
	.loc 1 190 15
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,12(a5)
	.loc 1 191 13
	lw	a5,-20(s0)
	lui	a4,%hi(altcp_tcp_functions)
	addi	a4,a4,%lo(altcp_tcp_functions)
	sw	a4,0(a5)
	.loc 1 192 1
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
.LFE13:
	.size	altcp_tcp_setup, .-altcp_tcp_setup
	.section	.text.altcp_tcp_new_ip_type,"ax",@progbits
	.align	1
	.globl	altcp_tcp_new_ip_type
	.type	altcp_tcp_new_ip_type, @function
altcp_tcp_new_ip_type:
.LFB14:
	.loc 1 196 1
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
	.loc 1 199 26
	lbu	a5,-33(s0)
	mv	a0,a5
	call	tcp_new_ip_type
	sw	a0,-20(s0)
	.loc 1 200 6
	lw	a5,-20(s0)
	beq	a5,zero,.L30
.LBB3:
	.loc 1 201 29
	call	altcp_alloc
	sw	a0,-24(s0)
	.loc 1 202 8
	lw	a5,-24(s0)
	beq	a5,zero,.L31
	.loc 1 203 7
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	altcp_tcp_setup
	.loc 1 204 14
	lw	a5,-24(s0)
	j	.L32
.L31:
	.loc 1 207 7
	lw	a0,-20(s0)
	call	tcp_close
.L30:
.LBE3:
	.loc 1 210 9
	li	a5,0
.L32:
	.loc 1 211 1
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
	.size	altcp_tcp_new_ip_type, .-altcp_tcp_new_ip_type
	.section	.text.altcp_tcp_alloc,"ax",@progbits
	.align	1
	.globl	altcp_tcp_alloc
	.type	altcp_tcp_alloc, @function
altcp_tcp_alloc:
.LFB15:
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
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 1 221 10
	lbu	a5,-21(s0)
	mv	a0,a5
	call	altcp_tcp_new_ip_type
	mv	a5,a0
	.loc 1 222 1
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
	.size	altcp_tcp_alloc, .-altcp_tcp_alloc
	.section	.text.altcp_tcp_wrap,"ax",@progbits
	.align	1
	.globl	altcp_tcp_wrap
	.type	altcp_tcp_wrap, @function
altcp_tcp_wrap:
.LFB16:
	.loc 1 226 1
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
	.loc 1 227 6
	lw	a5,-36(s0)
	beq	a5,zero,.L36
.LBB4:
	.loc 1 228 29
	call	altcp_alloc
	sw	a0,-20(s0)
	.loc 1 229 8
	lw	a5,-20(s0)
	beq	a5,zero,.L36
	.loc 1 230 7
	lw	a1,-36(s0)
	lw	a0,-20(s0)
	call	altcp_tcp_setup
	.loc 1 231 14
	lw	a5,-20(s0)
	j	.L37
.L36:
.LBE4:
	.loc 1 234 9
	li	a5,0
.L37:
	.loc 1 235 1
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
.LFE16:
	.size	altcp_tcp_wrap, .-altcp_tcp_wrap
	.section	.text.altcp_tcp_set_poll,"ax",@progbits
	.align	1
	.type	altcp_tcp_set_poll, @function
altcp_tcp_set_poll:
.LFB17:
	.loc 1 241 1
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
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 242 6
	lw	a5,-36(s0)
	beq	a5,zero,.L40
.LBB5:
	.loc 1 243 21
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 245 5
	lbu	a5,-37(s0)
	mv	a2,a5
	lui	a5,%hi(altcp_tcp_poll)
	addi	a1,a5,%lo(altcp_tcp_poll)
	lw	a0,-20(s0)
	call	tcp_poll
.L40:
.LBE5:
	.loc 1 247 1
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
.LFE17:
	.size	altcp_tcp_set_poll, .-altcp_tcp_set_poll
	.section	.text.altcp_tcp_recved,"ax",@progbits
	.align	1
	.type	altcp_tcp_recved, @function
altcp_tcp_recved:
.LFB18:
	.loc 1 251 1
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
	mv	a5,a1
	sh	a5,-38(s0)
	.loc 1 252 6
	lw	a5,-36(s0)
	beq	a5,zero,.L43
.LBB6:
	.loc 1 253 21
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 255 5
	lhu	a5,-38(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	tcp_recved
.L43:
.LBE6:
	.loc 1 257 1
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
	.size	altcp_tcp_recved, .-altcp_tcp_recved
	.section	.text.altcp_tcp_bind,"ax",@progbits
	.align	1
	.type	altcp_tcp_bind, @function
altcp_tcp_bind:
.LFB19:
	.loc 1 261 1
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
	mv	a5,a2
	sh	a5,-42(s0)
	.loc 1 263 6
	lw	a5,-36(s0)
	bne	a5,zero,.L45
	.loc 1 264 12
	li	a5,-6
	j	.L46
.L45:
	.loc 1 267 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 268 10
	lhu	a5,-42(s0)
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	call	tcp_bind
	mv	a5,a0
.L46:
	.loc 1 269 1
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
.LFE19:
	.size	altcp_tcp_bind, .-altcp_tcp_bind
	.section	.text.altcp_tcp_connect,"ax",@progbits
	.align	1
	.type	altcp_tcp_connect, @function
altcp_tcp_connect:
.LFB20:
	.loc 1 273 1
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
	mv	a5,a2
	sw	a3,-48(s0)
	sh	a5,-42(s0)
	.loc 1 275 6
	lw	a5,-36(s0)
	bne	a5,zero,.L48
	.loc 1 276 12
	li	a5,-6
	j	.L49
.L48:
	.loc 1 279 19
	lw	a5,-36(s0)
	lw	a4,-48(s0)
	sw	a4,20(a5)
	.loc 1 280 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 281 10
	lhu	a4,-42(s0)
	lui	a5,%hi(altcp_tcp_connected)
	addi	a3,a5,%lo(altcp_tcp_connected)
	mv	a2,a4
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	call	tcp_connect
	mv	a5,a0
.L49:
	.loc 1 282 1
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
.LFE20:
	.size	altcp_tcp_connect, .-altcp_tcp_connect
	.section	.text.altcp_tcp_listen,"ax",@progbits
	.align	1
	.type	altcp_tcp_listen, @function
altcp_tcp_listen:
.LFB21:
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
	mv	a5,a1
	sw	a2,-44(s0)
	sb	a5,-37(s0)
	.loc 1 289 6
	lw	a5,-36(s0)
	bne	a5,zero,.L51
	.loc 1 290 11
	li	a5,0
	j	.L52
.L51:
	.loc 1 293 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 294 10
	lbu	a5,-37(s0)
	lw	a2,-44(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	tcp_listen_with_backlog_and_err
	sw	a0,-24(s0)
	.loc 1 295 6
	lw	a5,-24(s0)
	beq	a5,zero,.L53
	.loc 1 296 17
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,12(a5)
	.loc 1 297 5
	lui	a5,%hi(altcp_tcp_accept)
	addi	a1,a5,%lo(altcp_tcp_accept)
	lw	a0,-24(s0)
	call	tcp_accept
	.loc 1 298 12
	lw	a5,-36(s0)
	j	.L52
.L53:
	.loc 1 300 9
	li	a5,0
.L52:
	.loc 1 301 1
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
.LFE21:
	.size	altcp_tcp_listen, .-altcp_tcp_listen
	.section	.text.altcp_tcp_abort,"ax",@progbits
	.align	1
	.type	altcp_tcp_abort, @function
altcp_tcp_abort:
.LFB22:
	.loc 1 305 1
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
	.loc 1 306 6
	lw	a5,-36(s0)
	beq	a5,zero,.L56
.LBB7:
	.loc 1 307 21
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 309 8
	lw	a5,-20(s0)
	beq	a5,zero,.L56
	.loc 1 310 7
	lw	a0,-20(s0)
	call	tcp_abort
.L56:
.LBE7:
	.loc 1 313 1
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
.LFE22:
	.size	altcp_tcp_abort, .-altcp_tcp_abort
	.section	.text.altcp_tcp_close,"ax",@progbits
	.align	1
	.type	altcp_tcp_close, @function
altcp_tcp_close:
.LFB23:
	.loc 1 317 1
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
	.loc 1 319 6
	lw	a5,-36(s0)
	bne	a5,zero,.L58
	.loc 1 320 12
	li	a5,-6
	j	.L59
.L58:
	.loc 1 323 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 324 6
	lw	a5,-20(s0)
	beq	a5,zero,.L60
.LBB8:
	.loc 1 326 17
	lw	a5,-20(s0)
	lw	a5,140(a5)
	sw	a5,-24(s0)
	.loc 1 327 5
	lw	a0,-20(s0)
	call	altcp_tcp_remove_callbacks
	.loc 1 328 11
	lw	a0,-20(s0)
	call	tcp_close
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 1 329 8
	lb	a5,-25(s0)
	beq	a5,zero,.L61
	.loc 1 331 7
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	altcp_tcp_setup_callbacks
	.loc 1 333 7
	lw	a5,-20(s0)
	lbu	a5,29(a5)
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	tcp_poll
	.loc 1 334 14
	lb	a5,-25(s0)
	j	.L59
.L61:
	.loc 1 336 17
	lw	a5,-36(s0)
	sw	zero,12(a5)
.L60:
.LBE8:
	.loc 1 338 3
	lw	a0,-36(s0)
	call	altcp_free
	.loc 1 339 10
	li	a5,0
.L59:
	.loc 1 340 1
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
.LFE23:
	.size	altcp_tcp_close, .-altcp_tcp_close
	.section	.text.altcp_tcp_shutdown,"ax",@progbits
	.align	1
	.type	altcp_tcp_shutdown, @function
altcp_tcp_shutdown:
.LFB24:
	.loc 1 344 1
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
	.loc 1 346 6
	lw	a5,-36(s0)
	bne	a5,zero,.L63
	.loc 1 347 12
	li	a5,-6
	j	.L64
.L63:
	.loc 1 350 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 351 10
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	call	tcp_shutdown
	mv	a5,a0
.L64:
	.loc 1 352 1
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
.LFE24:
	.size	altcp_tcp_shutdown, .-altcp_tcp_shutdown
	.section	.text.altcp_tcp_write,"ax",@progbits
	.align	1
	.type	altcp_tcp_write, @function
altcp_tcp_write:
.LFB25:
	.loc 1 356 1
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
	mv	a5,a2
	mv	a4,a3
	sh	a5,-42(s0)
	mv	a5,a4
	sb	a5,-43(s0)
	.loc 1 358 6
	lw	a5,-36(s0)
	bne	a5,zero,.L66
	.loc 1 359 12
	li	a5,-6
	j	.L67
.L66:
	.loc 1 362 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 363 10
	lbu	a4,-43(s0)
	lhu	a5,-42(s0)
	mv	a3,a4
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	call	tcp_write
	mv	a5,a0
.L67:
	.loc 1 364 1
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
.LFE25:
	.size	altcp_tcp_write, .-altcp_tcp_write
	.section	.text.altcp_tcp_output,"ax",@progbits
	.align	1
	.type	altcp_tcp_output, @function
altcp_tcp_output:
.LFB26:
	.loc 1 368 1
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
	.loc 1 370 6
	lw	a5,-36(s0)
	bne	a5,zero,.L69
	.loc 1 371 12
	li	a5,-6
	j	.L70
.L69:
	.loc 1 374 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 375 10
	lw	a0,-20(s0)
	call	tcp_output
	mv	a5,a0
.L70:
	.loc 1 376 1
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
.LFE26:
	.size	altcp_tcp_output, .-altcp_tcp_output
	.section	.text.altcp_tcp_mss,"ax",@progbits
	.align	1
	.type	altcp_tcp_mss, @function
altcp_tcp_mss:
.LFB27:
	.loc 1 380 1
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
	.loc 1 382 6
	lw	a5,-36(s0)
	bne	a5,zero,.L72
	.loc 1 383 12
	li	a5,0
	j	.L73
.L72:
	.loc 1 386 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 387 16
	lw	a5,-20(s0)
	lhu	a5,50(a5)
.L73:
	.loc 1 388 1
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
.LFE27:
	.size	altcp_tcp_mss, .-altcp_tcp_mss
	.section	.text.altcp_tcp_sndbuf,"ax",@progbits
	.align	1
	.type	altcp_tcp_sndbuf, @function
altcp_tcp_sndbuf:
.LFB28:
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
	.loc 1 394 6
	lw	a5,-36(s0)
	bne	a5,zero,.L75
	.loc 1 395 12
	li	a5,0
	j	.L76
.L75:
	.loc 1 398 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 399 17
	lw	a5,-20(s0)
	lhu	a5,100(a5)
.L76:
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
.LFE28:
	.size	altcp_tcp_sndbuf, .-altcp_tcp_sndbuf
	.section	.text.altcp_tcp_sndqueuelen,"ax",@progbits
	.align	1
	.type	altcp_tcp_sndqueuelen, @function
altcp_tcp_sndqueuelen:
.LFB29:
	.loc 1 404 1
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
	.loc 1 406 6
	lw	a5,-36(s0)
	bne	a5,zero,.L78
	.loc 1 407 12
	li	a5,0
	j	.L79
.L78:
	.loc 1 410 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 411 16
	lw	a5,-20(s0)
	lhu	a5,102(a5)
.L79:
	.loc 1 412 1
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
	.size	altcp_tcp_sndqueuelen, .-altcp_tcp_sndqueuelen
	.section	.text.altcp_tcp_nagle_disable,"ax",@progbits
	.align	1
	.type	altcp_tcp_nagle_disable, @function
altcp_tcp_nagle_disable:
.LFB30:
	.loc 1 416 1
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
	.loc 1 417 6
	lw	a5,-36(s0)
	beq	a5,zero,.L82
	.loc 1 417 19 discriminator 1
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 417 12 discriminator 1
	beq	a5,zero,.L82
.LBB9:
	.loc 1 418 21
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 420 43
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 420 25
	ori	a5,a5,64
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 420 23
	lw	a5,-20(s0)
	sh	a4,26(a5)
.L82:
.LBE9:
	.loc 1 422 1
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
.LFE30:
	.size	altcp_tcp_nagle_disable, .-altcp_tcp_nagle_disable
	.section	.text.altcp_tcp_nagle_enable,"ax",@progbits
	.align	1
	.type	altcp_tcp_nagle_enable, @function
altcp_tcp_nagle_enable:
.LFB31:
	.loc 1 426 1
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
	.loc 1 427 6
	lw	a5,-36(s0)
	beq	a5,zero,.L85
	.loc 1 427 19 discriminator 1
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 427 12 discriminator 1
	beq	a5,zero,.L85
.LBB10:
	.loc 1 428 21
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 430 43
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 430 25
	andi	a5,a5,-65
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 430 23
	lw	a5,-20(s0)
	sh	a4,26(a5)
.L85:
.LBE10:
	.loc 1 432 1
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
.LFE31:
	.size	altcp_tcp_nagle_enable, .-altcp_tcp_nagle_enable
	.section	.text.altcp_tcp_nagle_disabled,"ax",@progbits
	.align	1
	.type	altcp_tcp_nagle_disabled, @function
altcp_tcp_nagle_disabled:
.LFB32:
	.loc 1 436 1
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
	.loc 1 437 6
	lw	a5,-36(s0)
	beq	a5,zero,.L87
	.loc 1 437 19 discriminator 1
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 437 12 discriminator 1
	beq	a5,zero,.L87
.LBB11:
	.loc 1 438 21
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 440 19
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 440 27
	andi	a5,a5,64
	.loc 1 440 38
	srli	a5,a5,6
	andi	a5,a5,1
	andi	a5,a5,0xff
	j	.L88
.L87:
.LBE11:
	.loc 1 442 10
	li	a5,0
.L88:
	.loc 1 443 1
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
.LFE32:
	.size	altcp_tcp_nagle_disabled, .-altcp_tcp_nagle_disabled
	.section	.text.altcp_tcp_setprio,"ax",@progbits
	.align	1
	.type	altcp_tcp_setprio, @function
altcp_tcp_setprio:
.LFB33:
	.loc 1 447 1
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
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 448 6
	lw	a5,-36(s0)
	beq	a5,zero,.L91
.LBB12:
	.loc 1 449 21
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 451 5
	lbu	a5,-37(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	tcp_setprio
.L91:
.LBE12:
	.loc 1 453 1
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
.LFE33:
	.size	altcp_tcp_setprio, .-altcp_tcp_setprio
	.section	.text.altcp_tcp_keepalive_disable,"ax",@progbits
	.align	1
	.type	altcp_tcp_keepalive_disable, @function
altcp_tcp_keepalive_disable:
.LFB34:
	.loc 1 458 1
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
	.loc 1 459 6
	lw	a5,-36(s0)
	beq	a5,zero,.L94
	.loc 1 459 19 discriminator 1
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 459 12 discriminator 1
	beq	a5,zero,.L94
.LBB13:
	.loc 1 460 21
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 462 38
	lw	a5,-20(s0)
	lbu	a5,9(a5)
	.loc 1 462 26
	andi	a5,a5,-9
	andi	a4,a5,0xff
	.loc 1 462 24
	lw	a5,-20(s0)
	sb	a4,9(a5)
.L94:
.LBE13:
	.loc 1 464 1
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
.LFE34:
	.size	altcp_tcp_keepalive_disable, .-altcp_tcp_keepalive_disable
	.section	.text.altcp_tcp_keepalive_enable,"ax",@progbits
	.align	1
	.type	altcp_tcp_keepalive_enable, @function
altcp_tcp_keepalive_enable:
.LFB35:
	.loc 1 468 1
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
	.loc 1 469 6
	lw	a5,-36(s0)
	beq	a5,zero,.L103
	.loc 1 469 19 discriminator 1
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 469 12 discriminator 1
	beq	a5,zero,.L103
.LBB14:
	.loc 1 470 21
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 472 38
	lw	a5,-20(s0)
	lbu	a5,9(a5)
	.loc 1 472 26
	ori	a5,a5,8
	andi	a4,a5,0xff
	.loc 1 472 24
	lw	a5,-20(s0)
	sb	a4,9(a5)
	.loc 1 473 34
	lw	a5,-40(s0)
	beq	a5,zero,.L97
	.loc 1 473 34 is_stmt 0 discriminator 1
	lw	a5,-40(s0)
	j	.L98
.L97:
	.loc 1 473 34 discriminator 2
	li	a5,7200768
	addi	a5,a5,-768
.L98:
	.loc 1 473 20 is_stmt 1 discriminator 4
	lw	a4,-20(s0)
	sw	a5,148(a4)
	.loc 1 474 37
	lw	a5,-44(s0)
	beq	a5,zero,.L99
	.loc 1 474 37 is_stmt 0 discriminator 1
	lw	a5,-44(s0)
	j	.L100
.L99:
	.loc 1 474 37 discriminator 2
	li	a5,73728
	addi	a5,a5,1272
.L100:
	.loc 1 474 21 is_stmt 1 discriminator 4
	lw	a4,-20(s0)
	sw	a5,152(a4)
	.loc 1 475 31
	lw	a5,-48(s0)
	beq	a5,zero,.L101
	.loc 1 475 31 is_stmt 0 discriminator 1
	lw	a5,-48(s0)
	j	.L102
.L101:
	.loc 1 475 31 discriminator 2
	li	a5,9
.L102:
	.loc 1 475 19 is_stmt 1 discriminator 4
	lw	a4,-20(s0)
	sw	a5,156(a4)
.L103:
.LBE14:
	.loc 1 477 1
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
.LFE35:
	.size	altcp_tcp_keepalive_enable, .-altcp_tcp_keepalive_enable
	.section	.text.altcp_tcp_dealloc,"ax",@progbits
	.align	1
	.type	altcp_tcp_dealloc, @function
altcp_tcp_dealloc:
.LFB36:
	.loc 1 482 1
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
	.loc 1 486 1
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
.LFE36:
	.size	altcp_tcp_dealloc, .-altcp_tcp_dealloc
	.section	.text.altcp_tcp_get_tcp_addrinfo,"ax",@progbits
	.align	1
	.type	altcp_tcp_get_tcp_addrinfo, @function
altcp_tcp_get_tcp_addrinfo:
.LFB37:
	.loc 1 490 1
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
	.loc 1 491 6
	lw	a5,-36(s0)
	beq	a5,zero,.L106
.LBB15:
	.loc 1 492 21
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 494 12
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	call	tcp_tcp_get_tcp_addrinfo
	mv	a5,a0
	j	.L107
.L106:
.LBE15:
	.loc 1 496 10
	li	a5,-6
.L107:
	.loc 1 497 1
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
.LFE37:
	.size	altcp_tcp_get_tcp_addrinfo, .-altcp_tcp_get_tcp_addrinfo
	.section	.text.altcp_tcp_get_ip,"ax",@progbits
	.align	1
	.type	altcp_tcp_get_ip, @function
altcp_tcp_get_ip:
.LFB38:
	.loc 1 501 1
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
	.loc 1 502 6
	lw	a5,-36(s0)
	beq	a5,zero,.L109
.LBB16:
	.loc 1 503 21
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 505 8
	lw	a5,-20(s0)
	beq	a5,zero,.L109
	.loc 1 506 10
	lw	a5,-40(s0)
	beq	a5,zero,.L110
	.loc 1 507 16
	lw	a5,-20(s0)
	j	.L111
.L110:
	.loc 1 509 16
	lw	a5,-20(s0)
	addi	a5,a5,4
	j	.L111
.L109:
.LBE16:
	.loc 1 513 9
	li	a5,0
.L111:
	.loc 1 514 1
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
	.size	altcp_tcp_get_ip, .-altcp_tcp_get_ip
	.section	.text.altcp_tcp_get_port,"ax",@progbits
	.align	1
	.type	altcp_tcp_get_port, @function
altcp_tcp_get_port:
.LFB39:
	.loc 1 518 1
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
	.loc 1 519 6
	lw	a5,-36(s0)
	beq	a5,zero,.L113
.LBB17:
	.loc 1 520 21
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 522 8
	lw	a5,-20(s0)
	beq	a5,zero,.L113
	.loc 1 523 10
	lw	a5,-40(s0)
	beq	a5,zero,.L114
	.loc 1 524 19
	lw	a5,-20(s0)
	lhu	a5,22(a5)
	j	.L115
.L114:
	.loc 1 526 19
	lw	a5,-20(s0)
	lhu	a5,24(a5)
	j	.L115
.L113:
.LBE17:
	.loc 1 530 10
	li	a5,0
.L115:
	.loc 1 531 1
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
.LFE39:
	.size	altcp_tcp_get_port, .-altcp_tcp_get_port
	.globl	altcp_tcp_functions
	.section	.rodata.altcp_tcp_functions,"a"
	.align	2
	.type	altcp_tcp_functions, @object
	.size	altcp_tcp_functions, 92
altcp_tcp_functions:
	.word	altcp_tcp_set_poll
	.word	altcp_tcp_recved
	.word	altcp_tcp_bind
	.word	altcp_tcp_connect
	.word	altcp_tcp_listen
	.word	altcp_tcp_abort
	.word	altcp_tcp_close
	.word	altcp_tcp_shutdown
	.word	altcp_tcp_write
	.word	altcp_tcp_output
	.word	altcp_tcp_mss
	.word	altcp_tcp_sndbuf
	.word	altcp_tcp_sndqueuelen
	.word	altcp_tcp_nagle_disable
	.word	altcp_tcp_nagle_enable
	.word	altcp_tcp_nagle_disabled
	.word	altcp_tcp_setprio
	.word	altcp_tcp_dealloc
	.word	altcp_tcp_get_tcp_addrinfo
	.word	altcp_tcp_get_ip
	.word	altcp_tcp_get_port
	.word	altcp_tcp_keepalive_disable
	.word	altcp_tcp_keepalive_enable
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcpbase.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/altcp.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/altcp_priv.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcp.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/tcp_priv.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/tcp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a73
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x23
	.4byte	.LASF286
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x24
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xf
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xf
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xf
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xf
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x25
	.byte	0x4
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	0x86
	.uleb128 0x26
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x32
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x2
	.byte	0x25
	.byte	0x13
	.4byte	0x40
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7d
	.byte	0x11
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x7e
	.byte	0x10
	.4byte	0x87
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x3
	.byte	0x7f
	.byte	0x12
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x3
	.byte	0x80
	.byte	0x11
	.4byte	0x93
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x3
	.byte	0x81
	.byte	0x12
	.4byte	0xb7
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x35
	.byte	0xf
	.4byte	0xdb
	.uleb128 0x1e
	.4byte	.LASF141
	.4byte	0x39
	.byte	0x4
	.byte	0x38
	.4byte	0x15d
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0xa
	.byte	0
	.uleb128 0x1f
	.byte	0x5
	.4byte	0x32
	.byte	0x5
	.byte	0x35
	.4byte	0x1d0
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0
	.uleb128 0xa
	.4byte	.LASF36
	.sleb128 -1
	.uleb128 0xa
	.4byte	.LASF37
	.sleb128 -2
	.uleb128 0xa
	.4byte	.LASF38
	.sleb128 -3
	.uleb128 0xa
	.4byte	.LASF39
	.sleb128 -4
	.uleb128 0xa
	.4byte	.LASF40
	.sleb128 -5
	.uleb128 0xa
	.4byte	.LASF41
	.sleb128 -6
	.uleb128 0xa
	.4byte	.LASF42
	.sleb128 -7
	.uleb128 0xa
	.4byte	.LASF43
	.sleb128 -8
	.uleb128 0xa
	.4byte	.LASF44
	.sleb128 -9
	.uleb128 0xa
	.4byte	.LASF45
	.sleb128 -10
	.uleb128 0xa
	.4byte	.LASF46
	.sleb128 -11
	.uleb128 0xa
	.4byte	.LASF47
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF48
	.sleb128 -13
	.uleb128 0xa
	.4byte	.LASF49
	.sleb128 -14
	.uleb128 0xa
	.4byte	.LASF50
	.sleb128 -15
	.uleb128 0xa
	.4byte	.LASF51
	.sleb128 -16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xcf
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x10
	.byte	0x6
	.byte	0xba
	.4byte	0x251
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbc
	.byte	0x10
	.4byte	0x251
	.byte	0
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x78
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x6
	.byte	0xc8
	.byte	0x9
	.4byte	0xdb
	.byte	0x8
	.uleb128 0xd
	.string	"len"
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0xdb
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x6
	.byte	0xd0
	.byte	0x8
	.4byte	0xc3
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x6
	.byte	0xd3
	.byte	0x8
	.4byte	0xc3
	.byte	0xd
	.uleb128 0xd
	.string	"ref"
	.byte	0x6
	.byte	0xda
	.byte	0x8
	.4byte	0xc3
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x6
	.byte	0xdd
	.byte	0x8
	.4byte	0xc3
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x1dc
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x4
	.byte	0x7
	.byte	0x33
	.4byte	0x270
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x7
	.byte	0x34
	.byte	0x9
	.4byte	0xf3
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x7
	.byte	0x39
	.byte	0x19
	.4byte	0x256
	.uleb128 0x27
	.4byte	.LASF63
	.byte	0x8
	.2byte	0x126
	.byte	0x14
	.4byte	0x270
	.uleb128 0x20
	.4byte	0x27c
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x9
	.byte	0x3b
	.byte	0x11
	.4byte	0x29a
	.uleb128 0x6
	.4byte	0x29f
	.uleb128 0x9
	.4byte	0x1d0
	.4byte	0x2b8
	.uleb128 0x1
	.4byte	0x78
	.uleb128 0x1
	.4byte	0x2b8
	.uleb128 0x1
	.4byte	0x1d0
	.byte	0
	.uleb128 0x6
	.4byte	0x2bd
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x2c
	.byte	0x9
	.byte	0x44
	.4byte	0x359
	.uleb128 0xd
	.string	"fns"
	.byte	0x9
	.byte	0x45
	.byte	0x21
	.4byte	0x541
	.byte	0
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x9
	.byte	0x46
	.byte	0x15
	.4byte	0x2b8
	.byte	0x4
	.uleb128 0xd
	.string	"arg"
	.byte	0x9
	.byte	0x47
	.byte	0x9
	.4byte	0x78
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x9
	.byte	0x48
	.byte	0x9
	.4byte	0x78
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x9
	.byte	0x4a
	.byte	0x13
	.4byte	0x28e
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x9
	.byte	0x4b
	.byte	0x16
	.4byte	0x359
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0x9
	.byte	0x4c
	.byte	0x11
	.4byte	0x365
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0x9
	.byte	0x4d
	.byte	0x11
	.4byte	0x394
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x9
	.byte	0x4e
	.byte	0x11
	.4byte	0x3be
	.byte	0x20
	.uleb128 0xd
	.string	"err"
	.byte	0x9
	.byte	0x4f
	.byte	0x10
	.4byte	0x3e3
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x9
	.byte	0x50
	.byte	0x8
	.4byte	0xc3
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x9
	.byte	0x3c
	.byte	0x11
	.4byte	0x29a
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x9
	.byte	0x3d
	.byte	0x11
	.4byte	0x371
	.uleb128 0x6
	.4byte	0x376
	.uleb128 0x9
	.4byte	0x1d0
	.4byte	0x394
	.uleb128 0x1
	.4byte	0x78
	.uleb128 0x1
	.4byte	0x2b8
	.uleb128 0x1
	.4byte	0x251
	.uleb128 0x1
	.4byte	0x1d0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x9
	.byte	0x3e
	.byte	0x11
	.4byte	0x3a0
	.uleb128 0x6
	.4byte	0x3a5
	.uleb128 0x9
	.4byte	0x1d0
	.4byte	0x3be
	.uleb128 0x1
	.4byte	0x78
	.uleb128 0x1
	.4byte	0x2b8
	.uleb128 0x1
	.4byte	0xdb
	.byte	0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x9
	.byte	0x3f
	.byte	0x11
	.4byte	0x3ca
	.uleb128 0x6
	.4byte	0x3cf
	.uleb128 0x9
	.4byte	0x1d0
	.4byte	0x3e3
	.uleb128 0x1
	.4byte	0x78
	.uleb128 0x1
	.4byte	0x2b8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x9
	.byte	0x40
	.byte	0x10
	.4byte	0x3ef
	.uleb128 0x6
	.4byte	0x3f4
	.uleb128 0x17
	.4byte	0x404
	.uleb128 0x1
	.4byte	0x78
	.uleb128 0x1
	.4byte	0x1d0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x5c
	.byte	0xa
	.byte	0x61
	.4byte	0x53c
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0xa
	.byte	0x62
	.byte	0x15
	.4byte	0x546
	.byte	0
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0xa
	.byte	0x63
	.byte	0x13
	.4byte	0x567
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0xa
	.byte	0x64
	.byte	0x11
	.4byte	0x588
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0xa
	.byte	0x65
	.byte	0x14
	.4byte	0x5b7
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0xa
	.byte	0x66
	.byte	0x13
	.4byte	0x5e6
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xa
	.byte	0x67
	.byte	0x12
	.4byte	0x615
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xa
	.byte	0x68
	.byte	0x12
	.4byte	0x631
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0xa
	.byte	0x69
	.byte	0x15
	.4byte	0x651
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0xa
	.byte	0x6a
	.byte	0x12
	.4byte	0x67b
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0xa
	.byte	0x6b
	.byte	0x13
	.4byte	0x6aa
	.byte	0x24
	.uleb128 0xd
	.string	"mss"
	.byte	0xa
	.byte	0x6c
	.byte	0x10
	.4byte	0x6b6
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0xa
	.byte	0x6d
	.byte	0x13
	.4byte	0x6d6
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0xa
	.byte	0x6e
	.byte	0x18
	.4byte	0x6e2
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0xa
	.byte	0x6f
	.byte	0x1a
	.4byte	0x6ee
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0xa
	.byte	0x70
	.byte	0x19
	.4byte	0x6fa
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0xa
	.byte	0x71
	.byte	0x1b
	.4byte	0x706
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0xa
	.byte	0x72
	.byte	0x14
	.4byte	0x726
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xa
	.byte	0x73
	.byte	0x14
	.4byte	0x732
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0xa
	.byte	0x74
	.byte	0x1d
	.4byte	0x73e
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xa
	.byte	0x75
	.byte	0x13
	.4byte	0x777
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0xa
	.byte	0x76
	.byte	0x15
	.4byte	0x79c
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0xa
	.byte	0x78
	.byte	0x1e
	.4byte	0x7c1
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0xa
	.byte	0x79
	.byte	0x1d
	.4byte	0x7cd
	.byte	0x58
	.byte	0
	.uleb128 0x20
	.4byte	0x404
	.uleb128 0x6
	.4byte	0x53c
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0xa
	.byte	0x3b
	.byte	0x10
	.4byte	0x552
	.uleb128 0x6
	.4byte	0x557
	.uleb128 0x17
	.4byte	0x567
	.uleb128 0x1
	.4byte	0x2b8
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0xa
	.byte	0x3c
	.byte	0x10
	.4byte	0x573
	.uleb128 0x6
	.4byte	0x578
	.uleb128 0x17
	.4byte	0x588
	.uleb128 0x1
	.4byte	0x2b8
	.uleb128 0x1
	.4byte	0xdb
	.byte	0
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xa
	.byte	0x3d
	.byte	0x11
	.4byte	0x594
	.uleb128 0x6
	.4byte	0x599
	.uleb128 0x9
	.4byte	0x1d0
	.4byte	0x5b2
	.uleb128 0x1
	.4byte	0x2b8
	.uleb128 0x1
	.4byte	0x5b2
	.uleb128 0x1
	.4byte	0xdb
	.byte	0
	.uleb128 0x6
	.4byte	0x289
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0xa
	.byte	0x3e
	.byte	0x11
	.4byte	0x5c3
	.uleb128 0x6
	.4byte	0x5c8
	.uleb128 0x9
	.4byte	0x1d0
	.4byte	0x5e6
	.uleb128 0x1
	.4byte	0x2b8
	.uleb128 0x1
	.4byte	0x5b2
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x359
	.byte	0
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0xa
	.byte	0x40
	.byte	0x1d
	.4byte	0x5f2
	.uleb128 0x6
	.4byte	0x5f7
	.uleb128 0x9
	.4byte	0x2b8
	.4byte	0x610
	.uleb128 0x1
	.4byte	0x2b8
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0x610
	.byte	0
	.uleb128 0x6
	.4byte	0x1d0
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0xa
	.byte	0x42
	.byte	0x10
	.4byte	0x621
	.uleb128 0x6
	.4byte	0x626
	.uleb128 0x17
	.4byte	0x631
	.uleb128 0x1
	.4byte	0x2b8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0xa
	.byte	0x43
	.byte	0x11
	.4byte	0x63d
	.uleb128 0x6
	.4byte	0x642
	.uleb128 0x9
	.4byte	0x1d0
	.4byte	0x651
	.uleb128 0x1
	.4byte	0x2b8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0xa
	.byte	0x44
	.byte	0x11
	.4byte	0x65d
	.uleb128 0x6
	.4byte	0x662
	.uleb128 0x9
	.4byte	0x1d0
	.4byte	0x67b
	.uleb128 0x1
	.4byte	0x2b8
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0xa
	.byte	0x46
	.byte	0x11
	.4byte	0x687
	.uleb128 0x6
	.4byte	0x68c
	.uleb128 0x9
	.4byte	0x1d0
	.4byte	0x6aa
	.uleb128 0x1
	.4byte	0x2b8
	.uleb128 0x1
	.4byte	0x81
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0xa
	.byte	0x47
	.byte	0x11
	.4byte	0x63d
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xa
	.byte	0x49
	.byte	0x11
	.4byte	0x6c2
	.uleb128 0x6
	.4byte	0x6c7
	.uleb128 0x9
	.4byte	0xdb
	.4byte	0x6d6
	.uleb128 0x1
	.4byte	0x2b8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xa
	.byte	0x4a
	.byte	0x11
	.4byte	0x6c2
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0xa
	.byte	0x4b
	.byte	0x11
	.4byte	0x6c2
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0xa
	.byte	0x4c
	.byte	0x10
	.4byte	0x621
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0xa
	.byte	0x4d
	.byte	0x10
	.4byte	0x621
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0xa
	.byte	0x4e
	.byte	0xf
	.4byte	0x712
	.uleb128 0x6
	.4byte	0x717
	.uleb128 0x9
	.4byte	0x2b
	.4byte	0x726
	.uleb128 0x1
	.4byte	0x2b8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0xa
	.byte	0x50
	.byte	0x10
	.4byte	0x552
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0xa
	.byte	0x52
	.byte	0x10
	.4byte	0x621
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0xa
	.byte	0x54
	.byte	0x11
	.4byte	0x74a
	.uleb128 0x6
	.4byte	0x74f
	.uleb128 0x9
	.4byte	0x1d0
	.4byte	0x76d
	.uleb128 0x1
	.4byte	0x2b8
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x76d
	.uleb128 0x1
	.4byte	0x772
	.byte	0
	.uleb128 0x6
	.4byte	0x27c
	.uleb128 0x6
	.4byte	0xdb
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0xa
	.byte	0x55
	.byte	0x16
	.4byte	0x783
	.uleb128 0x6
	.4byte	0x788
	.uleb128 0x9
	.4byte	0x76d
	.4byte	0x79c
	.uleb128 0x1
	.4byte	0x2b8
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0xa
	.byte	0x56
	.byte	0x11
	.4byte	0x7a8
	.uleb128 0x6
	.4byte	0x7ad
	.uleb128 0x9
	.4byte	0xdb
	.4byte	0x7c1
	.uleb128 0x1
	.4byte	0x2b8
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0xa
	.byte	0x59
	.byte	0x10
	.4byte	0x621
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0xa
	.byte	0x5a
	.byte	0x10
	.4byte	0x7d9
	.uleb128 0x6
	.4byte	0x7de
	.uleb128 0x17
	.4byte	0x7f8
	.uleb128 0x1
	.4byte	0x2b8
	.uleb128 0x1
	.4byte	0xf3
	.uleb128 0x1
	.4byte	0xf3
	.uleb128 0x1
	.4byte	0xf3
	.byte	0
	.uleb128 0x1f
	.byte	0x7
	.4byte	0x39
	.byte	0xb
	.byte	0x34
	.4byte	0x865
	.uleb128 0x7
	.4byte	.LASF125
	.byte	0
	.uleb128 0x7
	.4byte	.LASF126
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF127
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF128
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF129
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF131
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF132
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF133
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF135
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF136
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF137
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF138
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF139
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF140
	.byte	0xf
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF142
	.4byte	0x39
	.byte	0xc
	.byte	0x71
	.4byte	0x88d
	.uleb128 0x7
	.4byte	.LASF143
	.byte	0
	.uleb128 0x7
	.4byte	.LASF144
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF145
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF146
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF147
	.byte	0xd
	.byte	0x46
	.byte	0x11
	.4byte	0x899
	.uleb128 0x6
	.4byte	0x89e
	.uleb128 0x9
	.4byte	0x1d0
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0x78
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0x1d0
	.byte	0
	.uleb128 0x6
	.4byte	0x8bc
	.uleb128 0x12
	.4byte	.LASF148
	.byte	0xa4
	.byte	0xd
	.byte	0xf2
	.4byte	0xc0b
	.uleb128 0x2
	.4byte	.LASF149
	.byte	0xd
	.byte	0xf4
	.byte	0xd
	.4byte	0x27c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0xd
	.byte	0xf4
	.byte	0x21
	.4byte	0x27c
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0xd
	.byte	0xf4
	.byte	0x31
	.4byte	0xc3
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF152
	.byte	0xd
	.byte	0xf4
	.byte	0x41
	.4byte	0xc3
	.byte	0x9
	.uleb128 0xd
	.string	"tos"
	.byte	0xd
	.byte	0xf4
	.byte	0x52
	.4byte	0xc3
	.byte	0xa
	.uleb128 0xd
	.string	"ttl"
	.byte	0xd
	.byte	0xf4
	.byte	0x5c
	.4byte	0xc3
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xd
	.byte	0xf6
	.byte	0x13
	.4byte	0x8b7
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF153
	.byte	0xd
	.byte	0xf6
	.byte	0x1f
	.4byte	0x78
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0xd
	.byte	0xf6
	.byte	0x3c
	.4byte	0x10b
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF154
	.byte	0xd
	.byte	0xf6
	.byte	0x48
	.4byte	0xc3
	.byte	0x15
	.uleb128 0x2
	.4byte	.LASF155
	.byte	0xd
	.byte	0xf6
	.byte	0x54
	.4byte	0xdb
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF156
	.byte	0xd
	.byte	0xf9
	.byte	0x9
	.4byte	0xdb
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0xd
	.byte	0xfb
	.byte	0xe
	.4byte	0xd4f
	.byte	0x1a
	.uleb128 0x4
	.4byte	.LASF157
	.byte	0xd
	.2byte	0x116
	.byte	0x8
	.4byte	0xc3
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0xd
	.2byte	0x116
	.byte	0x11
	.4byte	0xc3
	.byte	0x1d
	.uleb128 0x4
	.4byte	.LASF158
	.byte	0xd
	.2byte	0x117
	.byte	0x8
	.4byte	0xc3
	.byte	0x1e
	.uleb128 0x18
	.string	"tmr"
	.2byte	0x118
	.byte	0x9
	.4byte	0xf3
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF159
	.byte	0xd
	.2byte	0x11b
	.byte	0x9
	.4byte	0xf3
	.byte	0x24
	.uleb128 0x4
	.4byte	.LASF160
	.byte	0xd
	.2byte	0x11c
	.byte	0x11
	.4byte	0xff
	.byte	0x28
	.uleb128 0x4
	.4byte	.LASF161
	.byte	0xd
	.2byte	0x11d
	.byte	0x11
	.4byte	0xff
	.byte	0x2a
	.uleb128 0x4
	.4byte	.LASF162
	.byte	0xd
	.2byte	0x11e
	.byte	0x9
	.4byte	0xf3
	.byte	0x2c
	.uleb128 0x4
	.4byte	.LASF163
	.byte	0xd
	.2byte	0x127
	.byte	0x9
	.4byte	0xe7
	.byte	0x30
	.uleb128 0x18
	.string	"mss"
	.2byte	0x129
	.byte	0x9
	.4byte	0xdb
	.byte	0x32
	.uleb128 0x4
	.4byte	.LASF164
	.byte	0xd
	.2byte	0x12c
	.byte	0x9
	.4byte	0xf3
	.byte	0x34
	.uleb128 0x4
	.4byte	.LASF165
	.byte	0xd
	.2byte	0x12d
	.byte	0x9
	.4byte	0xf3
	.byte	0x38
	.uleb128 0x18
	.string	"sa"
	.2byte	0x12e
	.byte	0x9
	.4byte	0xe7
	.byte	0x3c
	.uleb128 0x18
	.string	"sv"
	.2byte	0x12e
	.byte	0xd
	.4byte	0xe7
	.byte	0x3e
	.uleb128 0x18
	.string	"rto"
	.2byte	0x130
	.byte	0x9
	.4byte	0xe7
	.byte	0x40
	.uleb128 0x4
	.4byte	.LASF166
	.byte	0xd
	.2byte	0x131
	.byte	0x8
	.4byte	0xc3
	.byte	0x42
	.uleb128 0x4
	.4byte	.LASF167
	.byte	0xd
	.2byte	0x134
	.byte	0x8
	.4byte	0xc3
	.byte	0x43
	.uleb128 0x4
	.4byte	.LASF168
	.byte	0xd
	.2byte	0x135
	.byte	0x9
	.4byte	0xf3
	.byte	0x44
	.uleb128 0x4
	.4byte	.LASF169
	.byte	0xd
	.2byte	0x138
	.byte	0x11
	.4byte	0xff
	.byte	0x48
	.uleb128 0x4
	.4byte	.LASF170
	.byte	0xd
	.2byte	0x139
	.byte	0x11
	.4byte	0xff
	.byte	0x4a
	.uleb128 0x4
	.4byte	.LASF171
	.byte	0xd
	.2byte	0x13c
	.byte	0x9
	.4byte	0xf3
	.byte	0x4c
	.uleb128 0x4
	.4byte	.LASF172
	.byte	0xd
	.2byte	0x13f
	.byte	0x9
	.4byte	0xf3
	.byte	0x50
	.uleb128 0x4
	.4byte	.LASF173
	.byte	0xd
	.2byte	0x140
	.byte	0x9
	.4byte	0xf3
	.byte	0x54
	.uleb128 0x4
	.4byte	.LASF174
	.byte	0xd
	.2byte	0x140
	.byte	0x12
	.4byte	0xf3
	.byte	0x58
	.uleb128 0x4
	.4byte	.LASF175
	.byte	0xd
	.2byte	0x142
	.byte	0x9
	.4byte	0xf3
	.byte	0x5c
	.uleb128 0x4
	.4byte	.LASF176
	.byte	0xd
	.2byte	0x143
	.byte	0x11
	.4byte	0xff
	.byte	0x60
	.uleb128 0x4
	.4byte	.LASF177
	.byte	0xd
	.2byte	0x144
	.byte	0x11
	.4byte	0xff
	.byte	0x62
	.uleb128 0x4
	.4byte	.LASF178
	.byte	0xd
	.2byte	0x146
	.byte	0x11
	.4byte	0xff
	.byte	0x64
	.uleb128 0x4
	.4byte	.LASF179
	.byte	0xd
	.2byte	0x148
	.byte	0x9
	.4byte	0xdb
	.byte	0x66
	.uleb128 0x4
	.4byte	.LASF180
	.byte	0xd
	.2byte	0x14c
	.byte	0x9
	.4byte	0xdb
	.byte	0x68
	.uleb128 0x4
	.4byte	.LASF181
	.byte	0xd
	.2byte	0x14f
	.byte	0x11
	.4byte	0xff
	.byte	0x6a
	.uleb128 0x4
	.4byte	.LASF182
	.byte	0xd
	.2byte	0x152
	.byte	0x13
	.4byte	0xdc5
	.byte	0x6c
	.uleb128 0x4
	.4byte	.LASF183
	.byte	0xd
	.2byte	0x153
	.byte	0x13
	.4byte	0xdc5
	.byte	0x70
	.uleb128 0x4
	.4byte	.LASF184
	.byte	0xd
	.2byte	0x155
	.byte	0x13
	.4byte	0xdc5
	.byte	0x74
	.uleb128 0x4
	.4byte	.LASF185
	.byte	0xd
	.2byte	0x158
	.byte	0x10
	.4byte	0x251
	.byte	0x78
	.uleb128 0x4
	.4byte	.LASF186
	.byte	0xd
	.2byte	0x15b
	.byte	0x1a
	.4byte	0xca1
	.byte	0x7c
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0xd
	.2byte	0x160
	.byte	0xf
	.4byte	0xc3a
	.byte	0x80
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0xd
	.2byte	0x162
	.byte	0xf
	.4byte	0xc0b
	.byte	0x84
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0xd
	.2byte	0x164
	.byte	0x14
	.4byte	0xc95
	.byte	0x88
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0xd
	.2byte	0x166
	.byte	0xf
	.4byte	0xc64
	.byte	0x8c
	.uleb128 0x4
	.4byte	.LASF187
	.byte	0xd
	.2byte	0x168
	.byte	0xe
	.4byte	0xc89
	.byte	0x90
	.uleb128 0x4
	.4byte	.LASF188
	.byte	0xd
	.2byte	0x171
	.byte	0x9
	.4byte	0xf3
	.byte	0x94
	.uleb128 0x4
	.4byte	.LASF189
	.byte	0xd
	.2byte	0x173
	.byte	0x9
	.4byte	0xf3
	.byte	0x98
	.uleb128 0x4
	.4byte	.LASF190
	.byte	0xd
	.2byte	0x174
	.byte	0x9
	.4byte	0xf3
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF191
	.byte	0xd
	.2byte	0x178
	.byte	0x8
	.4byte	0xc3
	.byte	0xa0
	.uleb128 0x4
	.4byte	.LASF192
	.byte	0xd
	.2byte	0x17a
	.byte	0x8
	.4byte	0xc3
	.byte	0xa1
	.uleb128 0x4
	.4byte	.LASF193
	.byte	0xd
	.2byte	0x17c
	.byte	0x8
	.4byte	0xc3
	.byte	0xa2
	.uleb128 0x4
	.4byte	.LASF194
	.byte	0xd
	.2byte	0x17f
	.byte	0x8
	.4byte	0xc3
	.byte	0xa3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF195
	.byte	0xd
	.byte	0x52
	.byte	0x11
	.4byte	0xc17
	.uleb128 0x6
	.4byte	0xc1c
	.uleb128 0x9
	.4byte	0x1d0
	.4byte	0xc3a
	.uleb128 0x1
	.4byte	0x78
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0x251
	.uleb128 0x1
	.4byte	0x1d0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF196
	.byte	0xd
	.byte	0x60
	.byte	0x11
	.4byte	0xc46
	.uleb128 0x6
	.4byte	0xc4b
	.uleb128 0x9
	.4byte	0x1d0
	.4byte	0xc64
	.uleb128 0x1
	.4byte	0x78
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0xdb
	.byte	0
	.uleb128 0x3
	.4byte	.LASF197
	.byte	0xd
	.byte	0x6c
	.byte	0x11
	.4byte	0xc70
	.uleb128 0x6
	.4byte	0xc75
	.uleb128 0x9
	.4byte	0x1d0
	.4byte	0xc89
	.uleb128 0x1
	.4byte	0x78
	.uleb128 0x1
	.4byte	0x8b7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF198
	.byte	0xd
	.byte	0x78
	.byte	0x10
	.4byte	0x3ef
	.uleb128 0x3
	.4byte	.LASF199
	.byte	0xd
	.byte	0x86
	.byte	0x11
	.4byte	0x899
	.uleb128 0x6
	.4byte	0xca6
	.uleb128 0x12
	.4byte	.LASF200
	.byte	0x1c
	.byte	0xd
	.byte	0xdf
	.4byte	0xd4f
	.uleb128 0x2
	.4byte	.LASF149
	.byte	0xd
	.byte	0xe1
	.byte	0xd
	.4byte	0x27c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0xd
	.byte	0xe1
	.byte	0x21
	.4byte	0x27c
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0xd
	.byte	0xe1
	.byte	0x31
	.4byte	0xc3
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF152
	.byte	0xd
	.byte	0xe1
	.byte	0x41
	.4byte	0xc3
	.byte	0x9
	.uleb128 0xd
	.string	"tos"
	.byte	0xd
	.byte	0xe1
	.byte	0x52
	.4byte	0xc3
	.byte	0xa
	.uleb128 0xd
	.string	"ttl"
	.byte	0xd
	.byte	0xe1
	.byte	0x5c
	.4byte	0xc3
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xd
	.byte	0xe3
	.byte	0x1a
	.4byte	0xca1
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF153
	.byte	0xd
	.byte	0xe3
	.byte	0x26
	.4byte	0x78
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0xd
	.byte	0xe3
	.byte	0x43
	.4byte	0x10b
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF154
	.byte	0xd
	.byte	0xe3
	.byte	0x4f
	.4byte	0xc3
	.byte	0x15
	.uleb128 0x2
	.4byte	.LASF155
	.byte	0xd
	.byte	0xe3
	.byte	0x5b
	.4byte	0xdb
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0xd
	.byte	0xe7
	.byte	0x11
	.4byte	0x88d
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF201
	.byte	0xd
	.byte	0xce
	.byte	0xf
	.4byte	0xdb
	.uleb128 0x12
	.4byte	.LASF202
	.byte	0x14
	.byte	0xe
	.byte	0xfa
	.4byte	0xdc5
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xe
	.byte	0xfb
	.byte	0x13
	.4byte	0xdc5
	.byte	0
	.uleb128 0xd
	.string	"p"
	.byte	0xe
	.byte	0xfc
	.byte	0x10
	.4byte	0x251
	.byte	0x4
	.uleb128 0xd
	.string	"len"
	.byte	0xe
	.byte	0xfd
	.byte	0x9
	.4byte	0xdb
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF203
	.byte	0xe
	.2byte	0x104
	.byte	0x9
	.4byte	0xdb
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF204
	.byte	0xe
	.2byte	0x105
	.byte	0x8
	.4byte	0xc3
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0xe
	.2byte	0x107
	.byte	0x8
	.4byte	0xc3
	.byte	0xd
	.uleb128 0x4
	.4byte	.LASF205
	.byte	0xe
	.2byte	0x10e
	.byte	0x13
	.4byte	0xe3f
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	0xd5b
	.uleb128 0x12
	.4byte	.LASF206
	.byte	0x14
	.byte	0xf
	.byte	0x38
	.4byte	0xe3f
	.uleb128 0xd
	.string	"src"
	.byte	0xf
	.byte	0x39
	.byte	0x9
	.4byte	0xdb
	.byte	0
	.uleb128 0x2
	.4byte	.LASF207
	.byte	0xf
	.byte	0x3a
	.byte	0x9
	.4byte	0xdb
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF208
	.byte	0xf
	.byte	0x3b
	.byte	0x9
	.4byte	0xf3
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF209
	.byte	0xf
	.byte	0x3c
	.byte	0x9
	.4byte	0xf3
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF210
	.byte	0xf
	.byte	0x3d
	.byte	0x9
	.4byte	0xdb
	.byte	0xc
	.uleb128 0xd
	.string	"wnd"
	.byte	0xf
	.byte	0x3e
	.byte	0x9
	.4byte	0xdb
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF203
	.byte	0xf
	.byte	0x3f
	.byte	0x9
	.4byte	0xdb
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF211
	.byte	0xf
	.byte	0x40
	.byte	0x9
	.4byte	0xdb
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.4byte	0xdca
	.uleb128 0x28
	.4byte	.LASF287
	.byte	0x1
	.byte	0x45
	.byte	0x25
	.4byte	0x53c
	.uleb128 0x29
	.4byte	0xe44
	.2byte	0x223
	.byte	0x1e
	.uleb128 0x5
	.byte	0x3
	.4byte	altcp_tcp_functions
	.uleb128 0x10
	.4byte	.LASF212
	.byte	0xd
	.2byte	0x1e0
	.byte	0x7
	.4byte	0x1d0
	.4byte	0xe84
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x76d
	.uleb128 0x1
	.4byte	0x772
	.byte	0
	.uleb128 0x11
	.4byte	.LASF216
	.2byte	0x1dc
	.4byte	0xe9a
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF213
	.byte	0xd
	.2byte	0x1de
	.byte	0x7
	.4byte	0x1d0
	.4byte	0xeb1
	.uleb128 0x1
	.4byte	0x8b7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF214
	.byte	0xd
	.2byte	0x1d9
	.byte	0x7
	.4byte	0x1d0
	.4byte	0xed7
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0x81
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF215
	.byte	0xd
	.2byte	0x1d7
	.byte	0x7
	.4byte	0x1d0
	.4byte	0xef8
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF217
	.2byte	0x1d5
	.4byte	0xf09
	.uleb128 0x1
	.4byte	0x8b7
	.byte	0
	.uleb128 0x11
	.4byte	.LASF218
	.2byte	0x1a3
	.4byte	0xf1f
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0x88d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF219
	.byte	0xd
	.2byte	0x1d0
	.byte	0x12
	.4byte	0x8b7
	.4byte	0xf40
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0x610
	.byte	0
	.uleb128 0x10
	.4byte	.LASF220
	.byte	0xd
	.2byte	0x1cd
	.byte	0x7
	.4byte	0x1d0
	.4byte	0xf66
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0x5b2
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0xc95
	.byte	0
	.uleb128 0x10
	.4byte	.LASF221
	.byte	0xd
	.2byte	0x1ca
	.byte	0x7
	.4byte	0x1d0
	.4byte	0xf87
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0x5b2
	.uleb128 0x1
	.4byte	0xdb
	.byte	0
	.uleb128 0x11
	.4byte	.LASF222
	.2byte	0x1c9
	.4byte	0xf9d
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0xdb
	.byte	0
	.uleb128 0x10
	.4byte	.LASF223
	.byte	0xd
	.2byte	0x1d6
	.byte	0x7
	.4byte	0x1d0
	.4byte	0xfb4
	.uleb128 0x1
	.4byte	0x8b7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF224
	.byte	0xd
	.2byte	0x19c
	.byte	0x12
	.4byte	0x8b7
	.4byte	0xfcb
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF225
	.2byte	0x1a5
	.4byte	0xfe6
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0xc64
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF226
	.2byte	0x1a2
	.4byte	0xffc
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0xc89
	.byte	0
	.uleb128 0x11
	.4byte	.LASF227
	.2byte	0x1a1
	.4byte	0x1012
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0xc3a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF228
	.2byte	0x1a0
	.4byte	0x1028
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0xc0b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF229
	.2byte	0x19e
	.4byte	0x103e
	.uleb128 0x1
	.4byte	0x8b7
	.uleb128 0x1
	.4byte	0x78
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF230
	.byte	0xa
	.byte	0x38
	.byte	0x6
	.4byte	0x1050
	.uleb128 0x1
	.4byte	0x2b8
	.byte	0
	.uleb128 0x10
	.4byte	.LASF231
	.byte	0x6
	.2byte	0x125
	.byte	0x6
	.4byte	0xc3
	.4byte	0x1067
	.uleb128 0x1
	.4byte	0x251
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF288
	.byte	0xa
	.byte	0x37
	.byte	0x13
	.4byte	0x2b8
	.uleb128 0x15
	.4byte	.LASF234
	.2byte	0x205
	.4byte	0xdb
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10c4
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x205
	.byte	0x26
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF233
	.2byte	0x205
	.byte	0x30
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x208
	.byte	0x15
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF235
	.2byte	0x1f4
	.4byte	0x76d
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1115
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x1f4
	.byte	0x24
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF233
	.2byte	0x1f4
	.byte	0x2e
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x1f7
	.byte	0x15
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF236
	.2byte	0x1e9
	.4byte	0x1d0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1184
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x1e9
	.byte	0x2e
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF233
	.2byte	0x1e9
	.byte	0x38
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF61
	.2byte	0x1e9
	.byte	0x4a
	.4byte	0x76d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF237
	.2byte	0x1e9
	.byte	0x57
	.4byte	0x772
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x1ec
	.byte	0x15
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF238
	.2byte	0x1e1
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11a9
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x1e1
	.byte	0x25
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF239
	.2byte	0x1d3
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1214
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x1d3
	.byte	0x2e
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF240
	.2byte	0x1d3
	.byte	0x3a
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF241
	.2byte	0x1d3
	.byte	0x46
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.string	"cnt"
	.2byte	0x1d3
	.byte	0x53
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x1d6
	.byte	0x15
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF242
	.2byte	0x1c9
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1252
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x1c9
	.byte	0x2f
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x1cc
	.byte	0x15
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF243
	.2byte	0x1be
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x129f
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x1be
	.byte	0x25
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF154
	.2byte	0x1be
	.byte	0x30
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xb
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x1c1
	.byte	0x15
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF244
	.2byte	0x1b3
	.4byte	0x2b
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12e1
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x1b3
	.byte	0x2c
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x1b6
	.byte	0x15
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF245
	.2byte	0x1a9
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x131f
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x1a9
	.byte	0x2a
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x1ac
	.byte	0x15
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF246
	.2byte	0x19f
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x135d
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x19f
	.byte	0x2b
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x1a2
	.byte	0x15
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF247
	.2byte	0x193
	.4byte	0xdb
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1395
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x193
	.byte	0x29
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x195
	.byte	0x13
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF248
	.2byte	0x187
	.4byte	0xdb
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13cd
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x187
	.byte	0x24
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x189
	.byte	0x13
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF249
	.2byte	0x17b
	.4byte	0xdb
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1405
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x17b
	.byte	0x21
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x17d
	.byte	0x13
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF250
	.2byte	0x16f
	.4byte	0x1d0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x143d
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x16f
	.byte	0x24
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x171
	.byte	0x13
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF251
	.2byte	0x163
	.4byte	0x1d0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14a2
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x163
	.byte	0x23
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF252
	.2byte	0x163
	.byte	0x35
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"len"
	.2byte	0x163
	.byte	0x44
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x5
	.4byte	.LASF253
	.2byte	0x163
	.byte	0x4e
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -43
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x165
	.byte	0x13
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF254
	.2byte	0x157
	.4byte	0x1d0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14f8
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x157
	.byte	0x26
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF255
	.2byte	0x157
	.byte	0x30
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF256
	.2byte	0x157
	.byte	0x3d
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x159
	.byte	0x13
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF257
	.2byte	0x13c
	.4byte	0x1d0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1558
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x13c
	.byte	0x23
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x13e
	.byte	0x13
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x8
	.string	"err"
	.2byte	0x145
	.byte	0xb
	.4byte	0x1d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x22
	.4byte	.LASF258
	.2byte	0x146
	.byte	0x11
	.4byte	0xc64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF259
	.2byte	0x130
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1596
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x130
	.byte	0x23
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x133
	.byte	0x15
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF260
	.2byte	0x11d
	.4byte	0x2b8
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15fb
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x11d
	.byte	0x24
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF261
	.2byte	0x11d
	.byte	0x2f
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1c
	.string	"err"
	.2byte	0x11d
	.byte	0x3f
	.4byte	0x610
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x11f
	.byte	0x13
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.4byte	.LASF262
	.2byte	0x120
	.byte	0x13
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF263
	.2byte	0x110
	.4byte	0x1d0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1660
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x110
	.byte	0x25
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF264
	.2byte	0x110
	.byte	0x3c
	.4byte	0x5b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF237
	.2byte	0x110
	.byte	0x4a
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x5
	.4byte	.LASF69
	.2byte	0x110
	.byte	0x63
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x112
	.byte	0x13
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF265
	.2byte	0x104
	.4byte	0x1d0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16b6
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x104
	.byte	0x22
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF264
	.2byte	0x104
	.byte	0x39
	.4byte	0x5b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF237
	.2byte	0x104
	.byte	0x47
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x106
	.byte	0x13
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF266
	.byte	0xfa
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16ff
	.uleb128 0xc
	.4byte	.LASF232
	.byte	0xfa
	.byte	0x24
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"len"
	.byte	0xfa
	.byte	0x30
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0xb
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x1a
	.string	"pcb"
	.byte	0xfd
	.byte	0x15
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF267
	.byte	0xf0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1748
	.uleb128 0xc
	.4byte	.LASF232
	.byte	0xf0
	.byte	0x26
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF268
	.byte	0xf0
	.byte	0x31
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xb
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1a
	.string	"pcb"
	.byte	0xf3
	.byte	0x15
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF270
	.byte	0xe1
	.4byte	0x2b8
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1787
	.uleb128 0xc
	.4byte	.LASF269
	.byte	0xe1
	.byte	0x20
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1a
	.string	"ret"
	.byte	0xe4
	.byte	0x17
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF271
	.byte	0xda
	.4byte	0x2b8
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17bc
	.uleb128 0xe
	.string	"arg"
	.byte	0xda
	.byte	0x17
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF272
	.byte	0xda
	.byte	0x21
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF273
	.byte	0xc3
	.4byte	0x2b8
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1809
	.uleb128 0xc
	.4byte	.LASF272
	.byte	0xc3
	.byte	0x1c
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x14
	.4byte	.LASF269
	.byte	0xc7
	.byte	0x13
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1a
	.string	"ret"
	.byte	0xc9
	.byte	0x17
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF274
	.byte	0xbb
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x183a
	.uleb128 0xc
	.4byte	.LASF232
	.byte	0xbb
	.byte	0x23
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF269
	.byte	0xbb
	.byte	0x39
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.4byte	.LASF275
	.byte	0xae
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x186b
	.uleb128 0xc
	.4byte	.LASF232
	.byte	0xae
	.byte	0x2d
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF269
	.byte	0xae
	.byte	0x43
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.4byte	.LASF276
	.byte	0xa2
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x188e
	.uleb128 0xc
	.4byte	.LASF269
	.byte	0xa2
	.byte	0x2c
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF277
	.byte	0x93
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18cd
	.uleb128 0xe
	.string	"arg"
	.byte	0x93
	.byte	0x15
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"err"
	.byte	0x93
	.byte	0x20
	.4byte	0x1d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x14
	.4byte	.LASF232
	.byte	0x95
	.byte	0x15
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF278
	.byte	0x86
	.4byte	0x1d0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1910
	.uleb128 0xe
	.string	"arg"
	.byte	0x86
	.byte	0x16
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF269
	.byte	0x86
	.byte	0x2b
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.4byte	.LASF232
	.byte	0x88
	.byte	0x15
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF279
	.byte	0x79
	.4byte	0x1d0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1961
	.uleb128 0xe
	.string	"arg"
	.byte	0x79
	.byte	0x16
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF269
	.byte	0x79
	.byte	0x2b
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"len"
	.byte	0x79
	.byte	0x37
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x14
	.4byte	.LASF232
	.byte	0x7b
	.byte	0x15
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF280
	.byte	0x68
	.4byte	0x1d0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19be
	.uleb128 0xe
	.string	"arg"
	.byte	0x68
	.byte	0x16
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF269
	.byte	0x68
	.byte	0x2b
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"p"
	.byte	0x68
	.byte	0x3e
	.4byte	0x251
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"err"
	.byte	0x68
	.byte	0x47
	.4byte	0x1d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x14
	.4byte	.LASF232
	.byte	0x6a
	.byte	0x15
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF281
	.byte	0x5b
	.4byte	0x1d0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a0f
	.uleb128 0xe
	.string	"arg"
	.byte	0x5b
	.byte	0x1b
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF269
	.byte	0x5b
	.byte	0x30
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"err"
	.byte	0x5b
	.byte	0x3c
	.4byte	0x1d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x14
	.4byte	.LASF232
	.byte	0x5d
	.byte	0x15
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF282
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.4byte	0x1d0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.string	"arg"
	.byte	0x4b
	.byte	0x18
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF283
	.byte	0x4b
	.byte	0x2d
	.4byte	0x8b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"err"
	.byte	0x4b
	.byte	0x3d
	.4byte	0x1d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x14
	.4byte	.LASF284
	.byte	0x4d
	.byte	0x15
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x14
	.4byte	.LASF285
	.byte	0x50
	.byte	0x17
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
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
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0x12
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
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x16
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
	.sleb128 1
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
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x1c
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
	.sleb128 1
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.sleb128 6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x22
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
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x12c
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
.LASF287:
	.string	"altcp_tcp_functions"
.LASF86:
	.string	"close"
.LASF79:
	.string	"altcp_functions"
.LASF268:
	.string	"interval"
.LASF77:
	.string	"altcp_poll_fn"
.LASF110:
	.string	"altcp_write_fn"
.LASF128:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF152:
	.string	"so_options"
.LASF107:
	.string	"altcp_abort_fn"
.LASF220:
	.string	"tcp_connect"
.LASF89:
	.string	"output"
.LASF215:
	.string	"tcp_shutdown"
.LASF122:
	.string	"altcp_get_port_fn"
.LASF193:
	.string	"persist_probe"
.LASF211:
	.string	"urgp"
.LASF186:
	.string	"listener"
.LASF145:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF157:
	.string	"polltmr"
.LASF271:
	.string	"altcp_tcp_alloc"
.LASF147:
	.string	"tcp_accept_fn"
.LASF57:
	.string	"flags"
.LASF272:
	.string	"ip_type"
.LASF50:
	.string	"ERR_CLSD"
.LASF43:
	.string	"ERR_USE"
.LASF275:
	.string	"altcp_tcp_setup_callbacks"
.LASF51:
	.string	"ERR_ARG"
.LASF82:
	.string	"bind"
.LASF34:
	.string	"TIME_WAIT"
.LASF263:
	.string	"altcp_tcp_connect"
.LASF10:
	.string	"unsigned int"
.LASF151:
	.string	"netif_idx"
.LASF53:
	.string	"next"
.LASF52:
	.string	"err_t"
.LASF124:
	.string	"altcp_keepalive_enable_fn"
.LASF113:
	.string	"altcp_sndbuf_fn"
.LASF96:
	.string	"dealloc"
.LASF20:
	.string	"u16_t"
.LASF279:
	.string	"altcp_tcp_sent"
.LASF267:
	.string	"altcp_tcp_set_poll"
.LASF162:
	.string	"rcv_ann_right_edge"
.LASF90:
	.string	"sndbuf"
.LASF239:
	.string	"altcp_tcp_keepalive_enable"
.LASF95:
	.string	"setprio"
.LASF105:
	.string	"altcp_connect_fn"
.LASF257:
	.string	"altcp_tcp_close"
.LASF194:
	.string	"keep_cnt_sent"
.LASF139:
	.string	"MEMP_PBUF_POOL"
.LASF245:
	.string	"altcp_tcp_nagle_enable"
.LASF179:
	.string	"snd_queuelen"
.LASF228:
	.string	"tcp_recv"
.LASF196:
	.string	"tcp_sent_fn"
.LASF49:
	.string	"ERR_RST"
.LASF190:
	.string	"keep_cnt"
.LASF44:
	.string	"ERR_ALREADY"
.LASF208:
	.string	"seqno"
.LASF248:
	.string	"altcp_tcp_sndbuf"
.LASF118:
	.string	"altcp_setprio_fn"
.LASF221:
	.string	"tcp_bind"
.LASF17:
	.string	"uint32_t"
.LASF13:
	.string	"int8_t"
.LASF92:
	.string	"nagle_disable"
.LASF71:
	.string	"sent"
.LASF135:
	.string	"MEMP_IGMP_GROUP"
.LASF278:
	.string	"altcp_tcp_poll"
.LASF277:
	.string	"altcp_tcp_err"
.LASF133:
	.string	"MEMP_TCPIP_MSG_API"
.LASF155:
	.string	"local_port"
.LASF198:
	.string	"tcp_err_fn"
.LASF224:
	.string	"tcp_new_ip_type"
.LASF199:
	.string	"tcp_connected_fn"
.LASF97:
	.string	"addrinfo"
.LASF242:
	.string	"altcp_tcp_keepalive_disable"
.LASF14:
	.string	"int16_t"
.LASF202:
	.string	"tcp_seg"
.LASF9:
	.string	"long long unsigned int"
.LASF212:
	.string	"tcp_tcp_get_tcp_addrinfo"
.LASF165:
	.string	"rtseq"
.LASF62:
	.string	"ip4_addr_t"
.LASF141:
	.string	"tcp_state"
.LASF204:
	.string	"chksum_swapped"
.LASF163:
	.string	"rtime"
.LASF222:
	.string	"tcp_recved"
.LASF87:
	.string	"shutdown"
.LASF41:
	.string	"ERR_VAL"
.LASF104:
	.string	"altcp_bind_fn"
.LASF159:
	.string	"rcv_nxt"
.LASF134:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF183:
	.string	"unacked"
.LASF85:
	.string	"abort"
.LASF142:
	.string	"lwip_internal_netif_client_data_index"
.LASF33:
	.string	"LAST_ACK"
.LASF56:
	.string	"type_internal"
.LASF251:
	.string	"altcp_tcp_write"
.LASF55:
	.string	"tot_len"
.LASF264:
	.string	"ipaddr"
.LASF54:
	.string	"payload"
.LASF227:
	.string	"tcp_sent"
.LASF69:
	.string	"connected"
.LASF98:
	.string	"getip"
.LASF59:
	.string	"pbuf"
.LASF232:
	.string	"conn"
.LASF32:
	.string	"CLOSING"
.LASF261:
	.string	"backlog"
.LASF81:
	.string	"recved"
.LASF168:
	.string	"lastack"
.LASF84:
	.string	"listen"
.LASF260:
	.string	"altcp_tcp_listen"
.LASF19:
	.string	"s8_t"
.LASF219:
	.string	"tcp_listen_with_backlog_and_err"
.LASF66:
	.string	"inner_conn"
.LASF132:
	.string	"MEMP_NETCONN"
.LASF213:
	.string	"tcp_output"
.LASF42:
	.string	"ERR_WOULDBLOCK"
.LASF38:
	.string	"ERR_TIMEOUT"
.LASF244:
	.string	"altcp_tcp_nagle_disabled"
.LASF140:
	.string	"MEMP_MAX"
.LASF167:
	.string	"dupacks"
.LASF254:
	.string	"altcp_tcp_shutdown"
.LASF154:
	.string	"prio"
.LASF68:
	.string	"accept"
.LASF138:
	.string	"MEMP_PBUF"
.LASF72:
	.string	"poll"
.LASF12:
	.string	"char"
.LASF117:
	.string	"altcp_nagle_disabled_fn"
.LASF174:
	.string	"snd_wl2"
.LASF284:
	.string	"listen_conn"
.LASF31:
	.string	"CLOSE_WAIT"
.LASF182:
	.string	"unsent"
.LASF121:
	.string	"altcp_get_ip_fn"
.LASF65:
	.string	"altcp_pcb"
.LASF15:
	.string	"uint8_t"
.LASF173:
	.string	"snd_wl1"
.LASF120:
	.string	"altcp_get_tcp_addrinfo_fn"
.LASF80:
	.string	"set_poll"
.LASF207:
	.string	"dest"
.LASF266:
	.string	"altcp_tcp_recved"
.LASF231:
	.string	"pbuf_free"
.LASF175:
	.string	"snd_lbb"
.LASF131:
	.string	"MEMP_NETBUF"
.LASF8:
	.string	"long long int"
.LASF200:
	.string	"tcp_pcb_listen"
.LASF88:
	.string	"write"
.LASF209:
	.string	"ackno"
.LASF47:
	.string	"ERR_IF"
.LASF192:
	.string	"persist_backoff"
.LASF102:
	.string	"altcp_set_poll_fn"
.LASF127:
	.string	"MEMP_TCP_PCB"
.LASF18:
	.string	"u8_t"
.LASF269:
	.string	"tpcb"
.LASF243:
	.string	"altcp_tcp_setprio"
.LASF103:
	.string	"altcp_recved_fn"
.LASF246:
	.string	"altcp_tcp_nagle_disable"
.LASF256:
	.string	"shut_tx"
.LASF226:
	.string	"tcp_err"
.LASF156:
	.string	"remote_port"
.LASF76:
	.string	"altcp_sent_fn"
.LASF161:
	.string	"rcv_ann_wnd"
.LASF114:
	.string	"altcp_sndqueuelen_fn"
.LASF195:
	.string	"tcp_recv_fn"
.LASF250:
	.string	"altcp_tcp_output"
.LASF233:
	.string	"local"
.LASF217:
	.string	"tcp_abort"
.LASF130:
	.string	"MEMP_ALTCP_PCB"
.LASF252:
	.string	"dataptr"
.LASF236:
	.string	"altcp_tcp_get_tcp_addrinfo"
.LASF288:
	.string	"altcp_alloc"
.LASF283:
	.string	"new_tpcb"
.LASF197:
	.string	"tcp_poll_fn"
.LASF181:
	.string	"bytes_acked"
.LASF11:
	.string	"long double"
.LASF16:
	.string	"uint16_t"
.LASF201:
	.string	"tcpflags_t"
.LASF187:
	.string	"errf"
.LASF164:
	.string	"rttest"
.LASF116:
	.string	"altcp_nagle_enable_fn"
.LASF176:
	.string	"snd_wnd"
.LASF218:
	.string	"tcp_accept"
.LASF58:
	.string	"if_idx"
.LASF101:
	.string	"keepalive_enable"
.LASF274:
	.string	"altcp_tcp_setup"
.LASF184:
	.string	"ooseq"
.LASF206:
	.string	"tcp_hdr"
.LASF37:
	.string	"ERR_BUF"
.LASF230:
	.string	"altcp_free"
.LASF259:
	.string	"altcp_tcp_abort"
.LASF24:
	.string	"CLOSED"
.LASF22:
	.string	"u32_t"
.LASF4:
	.string	"short int"
.LASF83:
	.string	"connect"
.LASF241:
	.string	"intvl"
.LASF253:
	.string	"apiflags"
.LASF6:
	.string	"long int"
.LASF108:
	.string	"altcp_close_fn"
.LASF109:
	.string	"altcp_shutdown_fn"
.LASF285:
	.string	"new_conn"
.LASF136:
	.string	"MEMP_SYS_TIMEOUT"
.LASF160:
	.string	"rcv_wnd"
.LASF78:
	.string	"altcp_err_fn"
.LASF158:
	.string	"last_timer"
.LASF270:
	.string	"altcp_tcp_wrap"
.LASF126:
	.string	"MEMP_UDP_PCB"
.LASF149:
	.string	"local_ip"
.LASF223:
	.string	"tcp_close"
.LASF106:
	.string	"altcp_listen_fn"
.LASF180:
	.string	"unsent_oversize"
.LASF235:
	.string	"altcp_tcp_get_ip"
.LASF40:
	.string	"ERR_INPROGRESS"
.LASF276:
	.string	"altcp_tcp_remove_callbacks"
.LASF60:
	.string	"ip4_addr"
.LASF169:
	.string	"cwnd"
.LASF281:
	.string	"altcp_tcp_connected"
.LASF123:
	.string	"altcp_keepalive_disable_fn"
.LASF28:
	.string	"ESTABLISHED"
.LASF45:
	.string	"ERR_ISCONN"
.LASF177:
	.string	"snd_wnd_max"
.LASF170:
	.string	"ssthresh"
.LASF178:
	.string	"snd_buf"
.LASF73:
	.string	"pollinterval"
.LASF125:
	.string	"MEMP_RAW_PCB"
.LASF210:
	.string	"_hdrlen_rsvd_flags"
.LASF7:
	.string	"long unsigned int"
.LASF115:
	.string	"altcp_nagle_disable_fn"
.LASF21:
	.string	"s16_t"
.LASF237:
	.string	"port"
.LASF185:
	.string	"refused_data"
.LASF23:
	.string	"tcpwnd_size_t"
.LASF280:
	.string	"altcp_tcp_recv"
.LASF205:
	.string	"tcphdr"
.LASF94:
	.string	"nagle_disabled"
.LASF216:
	.string	"tcp_setprio"
.LASF112:
	.string	"altcp_mss_fn"
.LASF171:
	.string	"rto_end"
.LASF93:
	.string	"nagle_enable"
.LASF238:
	.string	"altcp_tcp_dealloc"
.LASF3:
	.string	"unsigned char"
.LASF258:
	.string	"oldpoll"
.LASF29:
	.string	"FIN_WAIT_1"
.LASF30:
	.string	"FIN_WAIT_2"
.LASF129:
	.string	"MEMP_TCP_SEG"
.LASF282:
	.string	"altcp_tcp_accept"
.LASF26:
	.string	"SYN_SENT"
.LASF188:
	.string	"keep_idle"
.LASF273:
	.string	"altcp_tcp_new_ip_type"
.LASF153:
	.string	"callback_arg"
.LASF25:
	.string	"LISTEN"
.LASF61:
	.string	"addr"
.LASF249:
	.string	"altcp_tcp_mss"
.LASF67:
	.string	"state"
.LASF265:
	.string	"altcp_tcp_bind"
.LASF225:
	.string	"tcp_poll"
.LASF99:
	.string	"getport"
.LASF146:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF48:
	.string	"ERR_ABRT"
.LASF203:
	.string	"chksum"
.LASF262:
	.string	"lpcb"
.LASF214:
	.string	"tcp_write"
.LASF35:
	.string	"ERR_OK"
.LASF70:
	.string	"recv"
.LASF143:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF2:
	.string	"signed char"
.LASF172:
	.string	"snd_nxt"
.LASF74:
	.string	"altcp_connected_fn"
.LASF148:
	.string	"tcp_pcb"
.LASF5:
	.string	"short unsigned int"
.LASF247:
	.string	"altcp_tcp_sndqueuelen"
.LASF46:
	.string	"ERR_CONN"
.LASF191:
	.string	"persist_cnt"
.LASF150:
	.string	"remote_ip"
.LASF39:
	.string	"ERR_RTE"
.LASF100:
	.string	"keepalive_disable"
.LASF189:
	.string	"keep_intvl"
.LASF63:
	.string	"ip_addr_t"
.LASF137:
	.string	"MEMP_NETDB"
.LASF229:
	.string	"tcp_arg"
.LASF255:
	.string	"shut_rx"
.LASF286:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF119:
	.string	"altcp_dealloc_fn"
.LASF64:
	.string	"altcp_accept_fn"
.LASF166:
	.string	"nrtx"
.LASF144:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF234:
	.string	"altcp_tcp_get_port"
.LASF36:
	.string	"ERR_MEM"
.LASF111:
	.string	"altcp_output_fn"
.LASF91:
	.string	"sndqueuelen"
.LASF27:
	.string	"SYN_RCVD"
.LASF75:
	.string	"altcp_recv_fn"
.LASF240:
	.string	"idle"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/altcp_tcp.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
