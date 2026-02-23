	.file	"api_msg.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/api_msg.c"
	.section	.srodata.netconn_aborted,"a"
	.type	netconn_aborted, @object
	.size	netconn_aborted, 1
netconn_aborted:
	.zero	1
	.section	.srodata.netconn_reset,"a"
	.type	netconn_reset, @object
	.size	netconn_reset, 1
netconn_reset:
	.zero	1
	.section	.srodata.netconn_closed,"a"
	.type	netconn_closed, @object
	.size	netconn_closed, 1
netconn_closed:
	.zero	1
	.section	.text.lwip_netconn_err_to_msg,"ax",@progbits
	.align	1
	.type	lwip_netconn_err_to_msg, @function
lwip_netconn_err_to_msg:
.LFB6:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/api_msg.c"
	.loc 1 116 1
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
	.loc 1 117 3
	lb	a5,-17(s0)
	li	a4,-13
	beq	a5,a4,.L2
	li	a4,-13
	bgt	a5,a4,.L3
	li	a4,-15
	beq	a5,a4,.L4
	li	a4,-14
	beq	a5,a4,.L5
	j	.L3
.L2:
	.loc 1 119 15
	lui	a5,%hi(netconn_aborted)
	addi	a5,a5,%lo(netconn_aborted)
	j	.L6
.L5:
	.loc 1 121 15
	lui	a5,%hi(netconn_reset)
	addi	a5,a5,%lo(netconn_reset)
	j	.L6
.L4:
	.loc 1 123 15
	lui	a5,%hi(netconn_closed)
	addi	a5,a5,%lo(netconn_closed)
	j	.L6
.L3:
	.loc 1 126 13
	li	a5,0
.L6:
	.loc 1 128 1
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
.LFE6:
	.size	lwip_netconn_err_to_msg, .-lwip_netconn_err_to_msg
	.section	.text.lwip_netconn_is_err_msg,"ax",@progbits
	.align	1
	.globl	lwip_netconn_is_err_msg
	.type	lwip_netconn_is_err_msg, @function
lwip_netconn_is_err_msg:
.LFB7:
	.loc 1 132 1
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
	.loc 1 135 6
	lw	a4,-20(s0)
	lui	a5,%hi(netconn_aborted)
	addi	a5,a5,%lo(netconn_aborted)
	bne	a4,a5,.L8
	.loc 1 136 10
	lw	a5,-24(s0)
	li	a4,-13
	sb	a4,0(a5)
	.loc 1 137 12
	li	a5,1
	j	.L9
.L8:
	.loc 1 138 13
	lw	a4,-20(s0)
	lui	a5,%hi(netconn_reset)
	addi	a5,a5,%lo(netconn_reset)
	bne	a4,a5,.L10
	.loc 1 139 10
	lw	a5,-24(s0)
	li	a4,-14
	sb	a4,0(a5)
	.loc 1 140 12
	li	a5,1
	j	.L9
.L10:
	.loc 1 141 13
	lw	a4,-20(s0)
	lui	a5,%hi(netconn_closed)
	addi	a5,a5,%lo(netconn_closed)
	bne	a4,a5,.L11
	.loc 1 142 10
	lw	a5,-24(s0)
	li	a4,-15
	sb	a4,0(a5)
	.loc 1 143 12
	li	a5,1
	j	.L9
.L11:
	.loc 1 145 10
	li	a5,0
.L9:
	.loc 1 146 1
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
.LFE7:
	.size	lwip_netconn_is_err_msg, .-lwip_netconn_is_err_msg
	.section	.text.recv_raw,"ax",@progbits
	.align	1
	.type	recv_raw, @function
recv_raw:
.LFB8:
	.loc 1 161 1
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
	.loc 1 167 8
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 169 6
	lw	a5,-20(s0)
	beq	a5,zero,.L13
	.loc 1 169 24 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	sys_mbox_valid
	mv	a5,a0
	.loc 1 169 21 discriminator 2
	beq	a5,zero,.L13
	.loc 1 178 9
	lw	a2,-44(s0)
	li	a1,640
	li	a0,0
	call	pbuf_clone
	sw	a0,-24(s0)
	.loc 1 179 8
	lw	a5,-24(s0)
	beq	a5,zero,.L13
.LBB2:
	.loc 1 181 30
	li	a0,6
	call	memp_malloc
	sw	a0,-28(s0)
	.loc 1 182 10
	lw	a5,-28(s0)
	bne	a5,zero,.L14
	.loc 1 183 9
	lw	a0,-24(s0)
	call	pbuf_free
	.loc 1 184 16
	li	a5,0
	j	.L15
.L14:
	.loc 1 187 14
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 188 16
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	.loc 1 189 58
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a4,16(a5)
	.loc 1 189 25
	lw	a5,-28(s0)
	sw	a4,8(a5)
	.loc 1 190 22
	lw	a5,-40(s0)
	lbu	a5,16(a5)
	mv	a4,a5
	.loc 1 190 17
	lw	a5,-28(s0)
	sh	a4,12(a5)
	.loc 1 192 11
	lw	a5,-24(s0)
	lhu	a5,8(a5)
	sh	a5,-30(s0)
	.loc 1 193 11
	lw	a5,-20(s0)
	addi	a5,a5,16
	lw	a1,-28(s0)
	mv	a0,a5
	call	sys_mbox_trypost
	mv	a5,a0
	.loc 1 193 10 discriminator 1
	beq	a5,zero,.L16
	.loc 1 194 9
	lw	a0,-28(s0)
	call	netbuf_delete
	.loc 1 195 16
	li	a5,0
	j	.L15
.L16:
	.loc 1 201 17
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 201 12
	beq	a5,zero,.L13
	.loc 1 201 32 discriminator 1
	lw	a5,-20(s0)
	lw	a5,44(a5)
	lhu	a4,-30(s0)
	mv	a2,a4
	li	a1,0
	lw	a0,-20(s0)
	jalr	a5
.LVL0:
.L13:
.LBE2:
	.loc 1 206 10
	li	a5,0
.L15:
	.loc 1 207 1
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
	.size	recv_raw, .-recv_raw
	.section	.text.recv_udp,"ax",@progbits
	.align	1
	.type	recv_udp, @function
recv_udp:
.LFB9:
	.loc 1 220 1
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
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	mv	a5,a4
	sh	a5,-50(s0)
	.loc 1 232 8
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 234 6
	lw	a5,-20(s0)
	bne	a5,zero,.L18
	.loc 1 235 5
	lw	a0,-44(s0)
	call	pbuf_free
	.loc 1 236 5
	j	.L17
.L18:
	.loc 1 246 8
	lw	a5,-20(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	sys_mbox_valid
	mv	a5,a0
	.loc 1 246 6 discriminator 1
	bne	a5,zero,.L20
	.loc 1 248 5
	lw	a0,-44(s0)
	call	pbuf_free
	.loc 1 249 5
	j	.L17
.L20:
	.loc 1 252 26
	li	a0,6
	call	memp_malloc
	sw	a0,-24(s0)
	.loc 1 253 6
	lw	a5,-24(s0)
	bne	a5,zero,.L21
	.loc 1 254 5
	lw	a0,-44(s0)
	call	pbuf_free
	.loc 1 255 5
	j	.L17
.L21:
	.loc 1 257 12
	lw	a5,-24(s0)
	lw	a4,-44(s0)
	sw	a4,0(a5)
	.loc 1 258 14
	lw	a5,-24(s0)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	.loc 1 259 8
	lw	a5,-48(s0)
	beq	a5,zero,.L22
	.loc 1 259 8 is_stmt 0 discriminator 1
	lw	a5,-48(s0)
	lw	a5,0(a5)
	j	.L23
.L22:
	.loc 1 259 8 discriminator 2
	li	a5,0
.L23:
	.loc 1 259 25 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	sw	a5,8(a4)
	.loc 1 260 15
	lw	a5,-24(s0)
	lhu	a4,-50(s0)
	sh	a4,12(a5)
	.loc 1 272 7
	lw	a5,-44(s0)
	lhu	a5,8(a5)
	sh	a5,-26(s0)
	.loc 1 273 9
	lw	a5,-20(s0)
	addi	a5,a5,16
	lw	a1,-24(s0)
	mv	a0,a5
	call	sys_mbox_trypost
	mv	a5,a0
	sb	a5,-27(s0)
	.loc 1 274 6
	lb	a5,-27(s0)
	beq	a5,zero,.L24
	.loc 1 275 5
	lw	a0,-24(s0)
	call	netbuf_delete
	.loc 1 277 5
	j	.L17
.L24:
	.loc 1 283 13
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 283 8
	beq	a5,zero,.L17
	.loc 1 283 28 discriminator 1
	lw	a5,-20(s0)
	lw	a5,44(a5)
	lhu	a4,-26(s0)
	mv	a2,a4
	li	a1,0
	lw	a0,-20(s0)
	jalr	a5
.LVL1:
.L17:
	.loc 1 285 1
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
	.size	recv_udp, .-recv_udp
	.section	.text.recv_tcp,"ax",@progbits
	.align	1
	.type	recv_tcp, @function
recv_tcp:
.LFB10:
	.loc 1 297 1
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
	.loc 1 307 8
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	.loc 1 309 6
	lw	a5,-28(s0)
	bne	a5,zero,.L26
	.loc 1 310 12
	li	a5,-6
	j	.L27
.L26:
	.loc 1 314 8
	lw	a5,-28(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	sys_mbox_valid
	mv	a5,a0
	.loc 1 314 6 discriminator 1
	bne	a5,zero,.L28
	.loc 1 316 8
	lw	a5,-44(s0)
	beq	a5,zero,.L29
	.loc 1 317 7
	lw	a5,-44(s0)
	lhu	a5,8(a5)
	mv	a1,a5
	lw	a0,-40(s0)
	call	tcp_recved
	.loc 1 318 7
	lw	a0,-44(s0)
	call	pbuf_free
.L29:
	.loc 1 320 12
	li	a5,0
	j	.L27
.L28:
	.loc 1 326 6
	lw	a5,-44(s0)
	beq	a5,zero,.L30
	.loc 1 327 9
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	.loc 1 328 9
	lw	a5,-44(s0)
	lhu	a5,8(a5)
	sh	a5,-18(s0)
	j	.L31
.L30:
	.loc 1 330 9
	lui	a5,%hi(netconn_closed)
	addi	a5,a5,%lo(netconn_closed)
	sw	a5,-24(s0)
	.loc 1 331 9
	sh	zero,-18(s0)
.L31:
	.loc 1 334 7
	lw	a5,-28(s0)
	addi	a5,a5,16
	lw	a1,-24(s0)
	mv	a0,a5
	call	sys_mbox_trypost
	mv	a5,a0
	.loc 1 334 6 discriminator 1
	beq	a5,zero,.L32
	.loc 1 336 12
	li	a5,-1
	j	.L27
.L32:
	.loc 1 342 13
	lw	a5,-28(s0)
	lw	a5,44(a5)
	.loc 1 342 8
	beq	a5,zero,.L33
	.loc 1 342 28 discriminator 1
	lw	a5,-28(s0)
	lw	a5,44(a5)
	lhu	a4,-18(s0)
	mv	a2,a4
	li	a1,0
	lw	a0,-28(s0)
	jalr	a5
.LVL2:
.L33:
	.loc 1 345 10
	li	a5,0
.L27:
	.loc 1 346 1
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
	.size	recv_tcp, .-recv_tcp
	.section	.text.poll_tcp,"ax",@progbits
	.align	1
	.type	poll_tcp, @function
poll_tcp:
.LFB11:
	.loc 1 361 1
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
	.loc 1 362 19
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 367 11
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	.loc 1 367 6
	li	a5,1
	bne	a4,a5,.L35
	.loc 1 368 5
	lw	a0,-20(s0)
	call	lwip_netconn_do_writemore
	j	.L36
.L35:
	.loc 1 369 18
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	.loc 1 369 13
	li	a5,4
	bne	a4,a5,.L36
	.loc 1 375 5
	lw	a0,-20(s0)
	call	lwip_netconn_do_close_internal
.L36:
	.loc 1 380 11
	lw	a5,-20(s0)
	lbu	a5,36(a5)
	.loc 1 380 19
	andi	a5,a5,16
	.loc 1 380 6
	beq	a5,zero,.L37
	.loc 1 383 19
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 383 8
	beq	a5,zero,.L37
	.loc 1 383 48 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 383 53 discriminator 1
	lhu	a4,100(a5)
	.loc 1 383 32 discriminator 1
	li	a5,4096
	addi	a5,a5,-1344
	bleu	a4,a5,.L37
	.loc 1 384 21
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 384 26
	lhu	a4,102(a5)
	.loc 1 383 422 discriminator 2
	li	a5,7
	bgtu	a4,a5,.L37
	.loc 1 385 41
	lw	a5,-20(s0)
	lbu	a5,36(a5)
	.loc 1 385 28
	andi	a5,a5,-17
	andi	a4,a5,0xff
	.loc 1 385 26
	lw	a5,-20(s0)
	sb	a4,36(a5)
	.loc 1 386 15
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 386 10
	beq	a5,zero,.L37
	.loc 1 386 30 discriminator 1
	lw	a5,-20(s0)
	lw	a5,44(a5)
	li	a2,0
	li	a1,2
	lw	a0,-20(s0)
	jalr	a5
.LVL3:
.L37:
	.loc 1 390 10
	li	a5,0
	.loc 1 391 1
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
	.size	poll_tcp, .-poll_tcp
	.section	.text.sent_tcp,"ax",@progbits
	.align	1
	.type	sent_tcp, @function
sent_tcp:
.LFB12:
	.loc 1 402 1
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
	.loc 1 403 19
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 408 6
	lw	a5,-20(s0)
	beq	a5,zero,.L40
	.loc 1 409 13
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	.loc 1 409 8
	li	a5,1
	bne	a4,a5,.L41
	.loc 1 410 7
	lw	a0,-20(s0)
	call	lwip_netconn_do_writemore
	j	.L42
.L41:
	.loc 1 411 20
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	.loc 1 411 15
	li	a5,4
	bne	a4,a5,.L42
	.loc 1 412 7
	lw	a0,-20(s0)
	call	lwip_netconn_do_close_internal
.L42:
	.loc 1 417 19
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 417 8
	beq	a5,zero,.L40
	.loc 1 417 48 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 417 53 discriminator 1
	lhu	a4,100(a5)
	.loc 1 417 32 discriminator 1
	li	a5,4096
	addi	a5,a5,-1344
	bleu	a4,a5,.L40
	.loc 1 418 21
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 418 26
	lhu	a4,102(a5)
	.loc 1 417 422 discriminator 2
	li	a5,7
	bgtu	a4,a5,.L40
	.loc 1 419 41
	lw	a5,-20(s0)
	lbu	a5,36(a5)
	.loc 1 419 28
	andi	a5,a5,-17
	andi	a4,a5,0xff
	.loc 1 419 26
	lw	a5,-20(s0)
	sb	a4,36(a5)
	.loc 1 420 15
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 420 10
	beq	a5,zero,.L40
	.loc 1 420 30 discriminator 1
	lw	a5,-20(s0)
	lw	a5,44(a5)
	lhu	a4,-42(s0)
	mv	a2,a4
	li	a1,2
	lw	a0,-20(s0)
	jalr	a5
.LVL4:
.L40:
	.loc 1 424 10
	li	a5,0
	.loc 1 425 1
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
	.size	sent_tcp, .-sent_tcp
	.section	.text.err_tcp,"ax",@progbits
	.align	1
	.type	err_tcp, @function
err_tcp:
.LFB13:
	.loc 1 436 1
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
	.loc 1 442 8
	lw	a5,-52(s0)
	sw	a5,-20(s0)
	.loc 1 445 9
	call	sys_arch_protect
	sw	a0,-24(s0)
	.loc 1 448 17
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 1 450 21
	lw	a5,-20(s0)
	lbu	a4,-53(s0)
	sb	a4,8(a5)
	.loc 1 452 7
	lw	a5,-20(s0)
	lbu	a5,36(a5)
	.loc 1 452 15
	ori	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,36(a5)
	.loc 1 455 13
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	sb	a5,-25(s0)
	.loc 1 456 15
	lw	a5,-20(s0)
	sb	zero,1(a5)
	.loc 1 458 3
	lw	a0,-24(s0)
	call	sys_arch_unprotect
	.loc 1 461 11
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 461 6
	beq	a5,zero,.L45
	.loc 1 461 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,44(a5)
	li	a2,0
	li	a1,4
	lw	a0,-20(s0)
	jalr	a5
.LVL5:
.L45:
	.loc 1 464 11
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 464 6
	beq	a5,zero,.L46
	.loc 1 464 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,44(a5)
	li	a2,0
	li	a1,0
	lw	a0,-20(s0)
	jalr	a5
.LVL6:
.L46:
	.loc 1 465 11
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 465 6
	beq	a5,zero,.L47
	.loc 1 465 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,44(a5)
	li	a2,0
	li	a1,2
	lw	a0,-20(s0)
	jalr	a5
.LVL7:
.L47:
	.loc 1 467 14
	lb	a5,-53(s0)
	mv	a0,a5
	call	lwip_netconn_err_to_msg
	sw	a0,-32(s0)
	.loc 1 469 7
	lw	a5,-20(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	sys_mbox_valid
	mv	a5,a0
	.loc 1 469 6 discriminator 1
	beq	a5,zero,.L48
	.loc 1 471 5
	lw	a5,-20(s0)
	addi	a5,a5,16
	lw	a1,-32(s0)
	mv	a0,a5
	call	sys_mbox_trypost
.L48:
	.loc 1 474 7
	lw	a5,-20(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	sys_mbox_valid
	mv	a5,a0
	.loc 1 474 6 discriminator 1
	beq	a5,zero,.L49
	.loc 1 476 5
	lw	a5,-20(s0)
	addi	a5,a5,20
	lw	a1,-32(s0)
	mv	a0,a5
	call	sys_mbox_trypost
.L49:
	.loc 1 479 6
	lbu	a4,-25(s0)
	li	a5,1
	beq	a4,a5,.L50
	.loc 1 479 36 discriminator 1
	lbu	a4,-25(s0)
	li	a5,4
	beq	a4,a5,.L50
	.loc 1 479 68 discriminator 2
	lbu	a4,-25(s0)
	li	a5,3
	bne	a4,a5,.L54
.L50:
.LBB3:
	.loc 1 483 43
	lw	a5,-20(s0)
	lbu	a5,36(a5)
	.loc 1 483 51
	andi	a5,a5,4
	.loc 1 483 61
	srli	a5,a5,2
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 483 9
	sw	a5,-36(s0)
	.loc 1 484 127 discriminator 2
	lw	a5,-20(s0)
	lbu	a5,36(a5)
	.loc 1 484 114 discriminator 2
	andi	a5,a5,-5
	andi	a4,a5,0xff
	.loc 1 484 112 discriminator 2
	lw	a5,-20(s0)
	sb	a4,36(a5)
	.loc 1 486 8
	lw	a5,-36(s0)
	bne	a5,zero,.L54
.LBB4:
	.loc 1 490 10
	lbu	a4,-25(s0)
	li	a5,4
	bne	a4,a5,.L52
	.loc 1 492 13
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 492 32
	sb	zero,4(a5)
	j	.L53
.L52:
	.loc 1 495 13
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 495 32
	lbu	a4,-53(s0)
	sb	a4,4(a5)
.L53:
	.loc 1 497 33
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 497 47
	lw	a5,0(a5)
	.loc 1 497 24
	addi	a5,a5,12
	sw	a5,-40(s0)
	.loc 1 498 18
	lw	a0,-40(s0)
	call	sys_sem_valid
	.loc 1 499 25
	lw	a5,-20(s0)
	sw	zero,40(a5)
	.loc 1 501 7
	lw	a0,-40(s0)
	call	sys_sem_signal
.L54:
.LBE4:
.LBE3:
	.loc 1 508 1
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
.LFE13:
	.size	err_tcp, .-err_tcp
	.section	.text.setup_tcp,"ax",@progbits
	.align	1
	.type	setup_tcp, @function
setup_tcp:
.LFB14:
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
	.loc 1 521 7
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 522 3
	lw	a1,-36(s0)
	lw	a0,-20(s0)
	call	tcp_arg
	.loc 1 523 3
	lui	a5,%hi(recv_tcp)
	addi	a1,a5,%lo(recv_tcp)
	lw	a0,-20(s0)
	call	tcp_recv
	.loc 1 524 3
	lui	a5,%hi(sent_tcp)
	addi	a1,a5,%lo(sent_tcp)
	lw	a0,-20(s0)
	call	tcp_sent
	.loc 1 525 3
	li	a2,2
	lui	a5,%hi(poll_tcp)
	addi	a1,a5,%lo(poll_tcp)
	lw	a0,-20(s0)
	call	tcp_poll
	.loc 1 526 3
	lui	a5,%hi(err_tcp)
	addi	a1,a5,%lo(err_tcp)
	lw	a0,-20(s0)
	call	tcp_err
	.loc 1 527 1
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
	.size	setup_tcp, .-setup_tcp
	.section	.text.accept_function,"ax",@progbits
	.align	1
	.type	accept_function, @function
accept_function:
.LFB15:
	.loc 1 537 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	mv	a5,a2
	sb	a5,-41(s0)
	.loc 1 539 19
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 541 6
	lw	a5,-20(s0)
	bne	a5,zero,.L57
	.loc 1 542 12
	li	a5,-6
	j	.L58
.L57:
	.loc 1 544 8
	lw	a5,-20(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	sys_mbox_valid
	mv	a5,a0
	.loc 1 544 6 discriminator 1
	bne	a5,zero,.L59
	.loc 1 546 12
	li	a5,-6
	j	.L58
.L59:
	.loc 1 549 6
	lw	a5,-40(s0)
	bne	a5,zero,.L60
	.loc 1 551 9
	lw	a5,-20(s0)
	addi	s1,a5,20
	li	a0,-13
	call	lwip_netconn_err_to_msg
	mv	a5,a0
	.loc 1 551 9 is_stmt 0 discriminator 1
	mv	a1,a5
	mv	a0,s1
	call	sys_mbox_trypost
	mv	a5,a0
	.loc 1 551 8 is_stmt 1 discriminator 2
	bne	a5,zero,.L61
	.loc 1 553 15
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 553 10
	beq	a5,zero,.L61
	.loc 1 553 30 discriminator 1
	lw	a5,-20(s0)
	lw	a5,44(a5)
	li	a2,0
	li	a1,0
	lw	a0,-20(s0)
	jalr	a5
.LVL8:
.L61:
	.loc 1 555 12
	li	a5,-6
	j	.L58
.L60:
	.loc 1 564 13
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	lw	a5,-20(s0)
	lw	a5,44(a5)
	mv	a1,a5
	mv	a0,a4
	call	netconn_alloc
	sw	a0,-24(s0)
	.loc 1 565 6
	lw	a5,-24(s0)
	bne	a5,zero,.L62
	.loc 1 567 9
	lw	a5,-20(s0)
	addi	s1,a5,20
	li	a0,-13
	call	lwip_netconn_err_to_msg
	mv	a5,a0
	.loc 1 567 9 is_stmt 0 discriminator 1
	mv	a1,a5
	mv	a0,s1
	call	sys_mbox_trypost
	mv	a5,a0
	.loc 1 567 8 is_stmt 1 discriminator 2
	bne	a5,zero,.L63
	.loc 1 569 15
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 569 10
	beq	a5,zero,.L63
	.loc 1 569 30 discriminator 1
	lw	a5,-20(s0)
	lw	a5,44(a5)
	li	a2,0
	li	a1,0
	lw	a0,-20(s0)
	jalr	a5
.LVL9:
.L63:
	.loc 1 571 12
	li	a5,-1
	j	.L58
.L62:
	.loc 1 573 20
	lw	a5,-24(s0)
	lw	a4,-40(s0)
	sw	a4,4(a5)
	.loc 1 574 3
	lw	a0,-24(s0)
	call	setup_tcp
	.loc 1 579 7
	lw	a5,-20(s0)
	addi	a5,a5,20
	lw	a1,-24(s0)
	mv	a0,a5
	call	sys_mbox_trypost
	mv	a5,a0
	.loc 1 579 6 discriminator 1
	beq	a5,zero,.L64
.LBB5:
	.loc 1 583 21
	lw	a5,-24(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	.loc 1 584 5
	li	a1,0
	lw	a0,-28(s0)
	call	tcp_arg
	.loc 1 585 5
	li	a1,0
	lw	a0,-28(s0)
	call	tcp_recv
	.loc 1 586 5
	li	a1,0
	lw	a0,-28(s0)
	call	tcp_sent
	.loc 1 587 5
	li	a2,0
	li	a1,0
	lw	a0,-28(s0)
	call	tcp_poll
	.loc 1 588 5
	li	a1,0
	lw	a0,-28(s0)
	call	tcp_err
	.loc 1 590 22
	lw	a5,-24(s0)
	sw	zero,4(a5)
	.loc 1 592 5
	lw	a5,-24(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	sys_mbox_free
	.loc 1 593 5
	lw	a5,-24(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	sys_mbox_set_invalid
	.loc 1 594 5
	lw	a0,-24(s0)
	call	netconn_free
	.loc 1 595 12
	li	a5,-1
	j	.L58
.L64:
.LBE5:
	.loc 1 598 13
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 598 8
	beq	a5,zero,.L65
	.loc 1 598 28 discriminator 1
	lw	a5,-20(s0)
	lw	a5,44(a5)
	li	a2,0
	li	a1,0
	lw	a0,-20(s0)
	jalr	a5
.LVL10:
.L65:
	.loc 1 601 10
	li	a5,0
.L58:
	.loc 1 602 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	accept_function, .-accept_function
	.section	.text.pcb_new,"ax",@progbits
	.align	1
	.type	pcb_new, @function
pcb_new:
.LFB16:
	.loc 1 613 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 614 26
	sb	zero,-17(s0)
	.loc 1 626 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 626 22
	lbu	a5,0(a5)
	.loc 1 626 29
	andi	a5,a5,240
	.loc 1 626 3
	li	a4,64
	beq	a5,a4,.L67
	li	a4,64
	bgt	a5,a4,.L68
	li	a4,16
	beq	a5,a4,.L69
	li	a4,32
	beq	a5,a4,.L70
	j	.L68
.L67:
	.loc 1 629 28
	lw	a5,-36(s0)
	lbu	a4,8(a5)
	.loc 1 629 10
	lw	a5,-36(s0)
	lw	s1,0(a5)
	.loc 1 629 28
	lbu	a5,-17(s0)
	mv	a1,a4
	mv	a0,a5
	call	raw_new_ip_type
	mv	a5,a0
	.loc 1 629 26 discriminator 1
	sw	a5,4(s1)
	.loc 1 630 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 630 25
	lw	a5,4(a5)
	.loc 1 630 10
	beq	a5,zero,.L77
	.loc 1 638 21
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 638 9
	lw	a4,4(a5)
	.loc 1 638 51
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 638 9
	mv	a2,a5
	lui	a5,%hi(recv_raw)
	addi	a1,a5,%lo(recv_raw)
	mv	a0,a4
	call	raw_recv
	.loc 1 640 7
	j	.L77
.L70:
	.loc 1 644 10
	lw	a5,-36(s0)
	lw	s1,0(a5)
	.loc 1 644 28
	lbu	a5,-17(s0)
	mv	a0,a5
	call	udp_new_ip_type
	mv	a5,a0
	.loc 1 644 26 discriminator 1
	sw	a5,4(s1)
	.loc 1 645 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 645 25
	lw	a5,4(a5)
	.loc 1 645 10
	beq	a5,zero,.L78
	.loc 1 651 18
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 651 24
	lbu	a4,0(a5)
	.loc 1 651 12
	li	a5,34
	bne	a4,a5,.L74
	.loc 1 652 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 652 27
	lw	a5,4(a5)
	.loc 1 652 40
	li	a4,1
	sb	a4,16(a5)
.L74:
	.loc 1 654 21
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 654 9
	lw	a4,4(a5)
	.loc 1 654 51
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 654 9
	mv	a2,a5
	lui	a5,%hi(recv_udp)
	addi	a1,a5,%lo(recv_udp)
	mv	a0,a4
	call	udp_recv
	.loc 1 656 7
	j	.L78
.L69:
	.loc 1 660 10
	lw	a5,-36(s0)
	lw	s1,0(a5)
	.loc 1 660 28
	lbu	a5,-17(s0)
	mv	a0,a5
	call	tcp_new_ip_type
	mv	a5,a0
	.loc 1 660 26 discriminator 1
	sw	a5,4(s1)
	.loc 1 661 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 661 25
	lw	a5,4(a5)
	.loc 1 661 10
	beq	a5,zero,.L79
	.loc 1 662 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	setup_tcp
	.loc 1 664 7
	j	.L79
.L68:
	.loc 1 668 16
	lw	a5,-36(s0)
	li	a4,-6
	sb	a4,4(a5)
	.loc 1 669 7
	j	.L66
.L77:
	.loc 1 640 7
	nop
	j	.L72
.L78:
	.loc 1 656 7
	nop
	j	.L72
.L79:
	.loc 1 664 7
	nop
.L72:
	.loc 1 671 10
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 671 21
	lw	a5,4(a5)
	.loc 1 671 6
	bne	a5,zero,.L66
	.loc 1 672 14
	lw	a5,-36(s0)
	li	a4,-1
	sb	a4,4(a5)
.L66:
	.loc 1 674 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	pcb_new, .-pcb_new
	.section	.text.lwip_netconn_do_newconn,"ax",@progbits
	.align	1
	.globl	lwip_netconn_do_newconn
	.type	lwip_netconn_do_newconn, @function
lwip_netconn_do_newconn:
.LFB17:
	.loc 1 684 1
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
	.loc 1 685 19
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 687 12
	lw	a5,-20(s0)
	sb	zero,4(a5)
	.loc 1 688 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 688 21
	lw	a5,4(a5)
	.loc 1 688 6
	bne	a5,zero,.L81
	.loc 1 689 5
	lw	a0,-20(s0)
	call	pcb_new
.L81:
	.loc 1 695 30
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 695 8
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_signal
	.loc 1 696 1
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
	.size	lwip_netconn_do_newconn, .-lwip_netconn_do_newconn
	.section	.text.netconn_alloc,"ax",@progbits
	.align	1
	.globl	netconn_alloc
	.type	netconn_alloc, @function
netconn_alloc:
.LFB18:
	.loc 1 709 1
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
	.loc 1 712 8
	sb	zero,-21(s0)
	.loc 1 714 28
	li	a0,7
	call	memp_malloc
	sw	a0,-28(s0)
	.loc 1 715 6
	lw	a5,-28(s0)
	bne	a5,zero,.L83
	.loc 1 716 11
	li	a5,0
	j	.L84
.L83:
	.loc 1 719 21
	lw	a5,-28(s0)
	sb	zero,8(a5)
	.loc 1 720 14
	lw	a5,-28(s0)
	lbu	a4,-33(s0)
	sb	a4,0(a5)
	.loc 1 721 17
	lw	a5,-28(s0)
	sw	zero,4(a5)
	.loc 1 727 15
	lbu	a5,-33(s0)
	andi	a5,a5,240
	.loc 1 727 3
	li	a4,64
	beq	a5,a4,.L85
	li	a4,64
	bgt	a5,a4,.L93
	li	a4,16
	beq	a5,a4,.L87
	li	a4,32
	beq	a5,a4,.L88
	.loc 1 748 7
	j	.L93
.L85:
	.loc 1 730 12
	sw	zero,-20(s0)
	.loc 1 731 7
	j	.L89
.L88:
	.loc 1 735 12
	li	a5,2000
	sw	a5,-20(s0)
	.loc 1 739 7
	j	.L89
.L87:
	.loc 1 743 12
	li	a5,2000
	sw	a5,-20(s0)
	.loc 1 744 7
	nop
.L89:
	.loc 1 751 7
	lw	a5,-28(s0)
	addi	a5,a5,16
	lw	a1,-20(s0)
	mv	a0,a5
	call	sys_mbox_new
	mv	a5,a0
	.loc 1 751 6 discriminator 1
	bne	a5,zero,.L94
	.loc 1 755 7
	lw	a5,-28(s0)
	addi	a5,a5,12
	li	a1,0
	mv	a0,a5
	call	sys_sem_new
	mv	a5,a0
	.loc 1 755 6 discriminator 1
	beq	a5,zero,.L92
	.loc 1 756 5
	lw	a5,-28(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	sys_mbox_free
	.loc 1 757 5
	j	.L90
.L92:
	.loc 1 762 3
	lw	a5,-28(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	sys_mbox_set_invalid
	.loc 1 764 15
	lw	a5,-28(s0)
	sb	zero,1(a5)
	.loc 1 766 29
	lw	a5,-28(s0)
	li	a4,-1
	sw	a4,24(a5)
	.loc 1 767 18
	lw	a5,-28(s0)
	lw	a4,-40(s0)
	sw	a4,44(a5)
	.loc 1 769 21
	lw	a5,-28(s0)
	sw	zero,40(a5)
	.loc 1 772 22
	lw	a5,-28(s0)
	sw	zero,28(a5)
	.loc 1 775 22
	lw	a5,-28(s0)
	sw	zero,32(a5)
	.loc 1 784 15
	lw	a5,-28(s0)
	lbu	a4,-21(s0)
	sb	a4,36(a5)
	.loc 1 785 10
	lw	a5,-28(s0)
	j	.L84
.L93:
	.loc 1 748 7
	nop
	j	.L90
.L94:
	.loc 1 752 5
	nop
.L90:
	.loc 1 787 3
	lw	a1,-28(s0)
	li	a0,7
	call	memp_free
	.loc 1 788 9
	li	a5,0
.L84:
	.loc 1 789 1
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
.LFE18:
	.size	netconn_alloc, .-netconn_alloc
	.section	.text.netconn_free,"ax",@progbits
	.align	1
	.globl	netconn_free
	.type	netconn_free, @function
netconn_free:
.LFB19:
	.loc 1 799 1
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
	.loc 1 807 15
	lw	a5,-20(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	sys_mbox_valid
	.loc 1 810 15
	lw	a5,-20(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	sys_mbox_valid
	.loc 1 815 3
	lw	a5,-20(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_free
	.loc 1 816 3
	lw	a5,-20(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_set_invalid
	.loc 1 819 3
	lw	a1,-20(s0)
	li	a0,7
	call	memp_free
	.loc 1 820 1
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
	.size	netconn_free, .-netconn_free
	.section	.text.netconn_drain,"ax",@progbits
	.align	1
	.type	netconn_drain, @function
netconn_drain:
.LFB20:
	.loc 1 832 1
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
	.loc 1 842 7
	lw	a5,-36(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	sys_mbox_valid
	mv	a5,a0
	.loc 1 842 6 discriminator 1
	beq	a5,zero,.L97
	.loc 1 843 11
	j	.L98
.L102:
	.loc 1 849 19
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 849 26
	andi	a4,a5,240
	.loc 1 849 12
	li	a5,16
	bne	a4,a5,.L99
.LBB6:
	.loc 1 851 16
	lw	a5,-24(s0)
	addi	a4,s0,-25
	mv	a1,a4
	mv	a0,a5
	call	lwip_netconn_is_err_msg
	mv	a5,a0
	.loc 1 851 14 discriminator 1
	bne	a5,zero,.L98
	.loc 1 852 13
	lw	a5,-24(s0)
	mv	a0,a5
	call	pbuf_free
	j	.L98
.L99:
.LBE6:
	.loc 1 857 11
	lw	a5,-24(s0)
	mv	a0,a5
	call	netbuf_delete
.L98:
	.loc 1 843 12
	lw	a5,-36(s0)
	addi	a5,a5,16
	addi	a4,s0,-24
	mv	a1,a4
	mv	a0,a5
	call	sys_arch_mbox_tryfetch
	mv	a4,a0
	.loc 1 843 58 discriminator 1
	li	a5,-1
	bne	a4,a5,.L102
	.loc 1 861 5
	lw	a5,-36(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	sys_mbox_free
	.loc 1 862 5
	lw	a5,-36(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	sys_mbox_set_invalid
.L97:
	.loc 1 867 7
	lw	a5,-36(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	sys_mbox_valid
	mv	a5,a0
	.loc 1 867 6 discriminator 1
	beq	a5,zero,.L108
	.loc 1 868 11
	j	.L104
.L107:
.LBB7:
	.loc 1 874 14
	lw	a5,-24(s0)
	addi	a4,s0,-26
	mv	a1,a4
	mv	a0,a5
	call	lwip_netconn_is_err_msg
	mv	a5,a0
	.loc 1 874 12 discriminator 1
	bne	a5,zero,.L104
.LBB8:
	.loc 1 875 27
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	.loc 1 879 11
	lw	a0,-20(s0)
	call	netconn_drain
	.loc 1 880 27
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 880 14
	beq	a5,zero,.L106
	.loc 1 881 13
	lw	a5,-20(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	tcp_abort
	.loc 1 882 30
	lw	a5,-20(s0)
	sw	zero,4(a5)
.L106:
	.loc 1 884 11
	lw	a0,-20(s0)
	call	netconn_free
.L104:
.LBE8:
.LBE7:
	.loc 1 868 12
	lw	a5,-36(s0)
	addi	a5,a5,20
	addi	a4,s0,-24
	mv	a1,a4
	mv	a0,a5
	call	sys_arch_mbox_tryfetch
	mv	a4,a0
	.loc 1 868 60 discriminator 1
	li	a5,-1
	bne	a4,a5,.L107
	.loc 1 888 5
	lw	a5,-36(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	sys_mbox_free
	.loc 1 889 5
	lw	a5,-36(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	sys_mbox_set_invalid
.L108:
	.loc 1 892 1
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
.LFE20:
	.size	netconn_drain, .-netconn_drain
	.section	.text.lwip_netconn_do_close_internal,"ax",@progbits
	.align	1
	.type	lwip_netconn_do_close_internal, @function
lwip_netconn_do_close_internal:
.LFB21:
	.loc 1 925 1
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
	.loc 1 928 8
	sb	zero,-19(s0)
	.loc 1 940 8
	lw	a5,-52(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	.loc 1 941 14
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 941 8
	lbu	a5,8(a5)
	sb	a5,-29(s0)
	.loc 1 942 11
	lbu	a5,-29(s0)
	andi	a5,a5,1
	sb	a5,-30(s0)
	.loc 1 943 11
	lbu	a5,-29(s0)
	andi	a5,a5,2
	sb	a5,-31(s0)
	.loc 1 946 6
	lbu	a4,-29(s0)
	li	a5,3
	bne	a4,a5,.L110
	.loc 1 947 16
	li	a5,1
	sb	a5,-18(s0)
	j	.L111
.L110:
	.loc 1 948 13
	lbu	a5,-30(s0)
	beq	a5,zero,.L112
	.loc 1 949 20
	lw	a5,-28(s0)
	lbu	a4,20(a5)
	.loc 1 948 22 discriminator 1
	li	a5,5
	beq	a4,a5,.L113
	.loc 1 950 20
	lw	a5,-28(s0)
	lbu	a4,20(a5)
	.loc 1 949 43
	li	a5,6
	beq	a4,a5,.L113
	.loc 1 951 20
	lw	a5,-28(s0)
	lbu	a4,20(a5)
	.loc 1 950 43
	li	a5,8
	bne	a4,a5,.L112
.L113:
	.loc 1 952 16
	li	a5,1
	sb	a5,-18(s0)
	j	.L111
.L112:
	.loc 1 953 13
	lbu	a5,-31(s0)
	beq	a5,zero,.L114
	.loc 1 953 31 discriminator 1
	lw	a5,-28(s0)
	lhu	a5,26(a5)
	.loc 1 953 39 discriminator 1
	andi	a5,a5,16
	.loc 1 953 22 discriminator 1
	beq	a5,zero,.L114
	.loc 1 954 16
	li	a5,1
	sb	a5,-18(s0)
	j	.L111
.L114:
	.loc 1 956 16
	sb	zero,-18(s0)
.L111:
	.loc 1 960 6
	lbu	a5,-18(s0)
	beq	a5,zero,.L115
	.loc 1 961 5
	li	a1,0
	lw	a0,-28(s0)
	call	tcp_arg
.L115:
	.loc 1 963 11
	lw	a5,-28(s0)
	lbu	a4,20(a5)
	.loc 1 963 6
	li	a5,1
	bne	a4,a5,.L116
	.loc 1 964 5
	li	a1,0
	lw	a0,-28(s0)
	call	tcp_accept
	j	.L117
.L116:
	.loc 1 967 8
	lbu	a5,-30(s0)
	beq	a5,zero,.L118
	.loc 1 968 7
	li	a1,0
	lw	a0,-28(s0)
	call	tcp_recv
	.loc 1 969 7
	li	a1,0
	lw	a0,-28(s0)
	call	tcp_accept
.L118:
	.loc 1 971 8
	lbu	a5,-31(s0)
	beq	a5,zero,.L119
	.loc 1 972 7
	li	a1,0
	lw	a0,-28(s0)
	call	tcp_sent
.L119:
	.loc 1 974 8
	lbu	a5,-18(s0)
	beq	a5,zero,.L117
	.loc 1 975 7
	li	a2,0
	li	a1,0
	lw	a0,-28(s0)
	call	tcp_poll
	.loc 1 976 7
	li	a1,0
	lw	a0,-28(s0)
	call	tcp_err
.L117:
	.loc 1 980 6
	lbu	a5,-18(s0)
	beq	a5,zero,.L120
	.loc 1 1010 13
	lw	a0,-28(s0)
	call	tcp_close
	mv	a5,a0
	sb	a5,-17(s0)
	j	.L121
.L120:
	.loc 1 1013 11
	lbu	a5,-30(s0)
	lbu	a4,-31(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-28(s0)
	call	tcp_shutdown
	mv	a5,a0
	sb	a5,-17(s0)
.L121:
	.loc 1 1015 6
	lb	a5,-17(s0)
	bne	a5,zero,.L122
	.loc 1 1016 20
	li	a5,1
	sb	a5,-19(s0)
	j	.L123
.L122:
	.loc 1 1025 8
	lb	a4,-17(s0)
	li	a5,-1
	bne	a4,a5,.L124
.LBB9:
	.loc 1 1032 13
	li	a5,4096
	addi	a5,a5,904
	sw	a5,-24(s0)
	.loc 1 1034 15
	lw	a5,-52(s0)
	lw	a5,28(a5)
	.loc 1 1034 10
	ble	a5,zero,.L125
	.loc 1 1035 23
	lw	a5,-52(s0)
	lw	a5,28(a5)
	sw	a5,-24(s0)
.L125:
	.loc 1 1044 19
	call	sys_now
	mv	a4,a0
	.loc 1 1044 35 discriminator 1
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1044 56 discriminator 1
	lw	a5,12(a5)
	.loc 1 1044 29 discriminator 1
	sub	a5,a4,a5
	.loc 1 1044 11 discriminator 1
	mv	a4,a5
	.loc 1 1044 10 discriminator 1
	lw	a5,-24(s0)
	bgt	a5,a4,.L123
	.loc 1 1048 24
	li	a5,1
	sb	a5,-19(s0)
	.loc 1 1049 12
	lbu	a5,-18(s0)
	beq	a5,zero,.L123
	.loc 1 1051 11
	lw	a0,-28(s0)
	call	tcp_abort
	.loc 1 1052 15
	sb	zero,-17(s0)
	j	.L123
.L124:
.LBE9:
	.loc 1 1057 22
	li	a5,1
	sb	a5,-19(s0)
.L123:
	.loc 1 1060 6
	lbu	a5,-19(s0)
	beq	a5,zero,.L126
.LBB10:
	.loc 1 1062 42
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1062 56
	lw	a5,0(a5)
	.loc 1 1062 16
	addi	a5,a5,12
	sw	a5,-36(s0)
	.loc 1 1063 9
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1063 28
	lbu	a4,-17(s0)
	sb	a4,4(a5)
	.loc 1 1064 23
	lw	a5,-52(s0)
	sw	zero,40(a5)
	.loc 1 1065 17
	lw	a5,-52(s0)
	sb	zero,1(a5)
	.loc 1 1066 8
	lb	a5,-17(s0)
	bne	a5,zero,.L127
	.loc 1 1067 10
	lbu	a5,-18(s0)
	beq	a5,zero,.L128
	.loc 1 1069 23
	lw	a5,-52(s0)
	sw	zero,4(a5)
	.loc 1 1072 17
	lw	a5,-52(s0)
	lw	a5,44(a5)
	.loc 1 1072 12
	beq	a5,zero,.L128
	.loc 1 1072 32 discriminator 1
	lw	a5,-52(s0)
	lw	a5,44(a5)
	li	a2,0
	li	a1,4
	lw	a0,-52(s0)
	jalr	a5
.LVL11:
.L128:
	.loc 1 1074 10
	lbu	a5,-30(s0)
	beq	a5,zero,.L129
	.loc 1 1075 17
	lw	a5,-52(s0)
	lw	a5,44(a5)
	.loc 1 1075 12
	beq	a5,zero,.L129
	.loc 1 1075 32 discriminator 1
	lw	a5,-52(s0)
	lw	a5,44(a5)
	li	a2,0
	li	a1,0
	lw	a0,-52(s0)
	jalr	a5
.LVL12:
.L129:
	.loc 1 1077 10
	lbu	a5,-31(s0)
	beq	a5,zero,.L127
	.loc 1 1078 17
	lw	a5,-52(s0)
	lw	a5,44(a5)
	.loc 1 1078 12
	beq	a5,zero,.L127
	.loc 1 1078 32 discriminator 1
	lw	a5,-52(s0)
	lw	a5,44(a5)
	li	a2,0
	li	a1,2
	lw	a0,-52(s0)
	jalr	a5
.LVL13:
.L127:
	.loc 1 1086 7
	lw	a0,-36(s0)
	call	sys_sem_signal
	.loc 1 1088 12
	li	a5,0
	j	.L130
.L126:
.LBE10:
	.loc 1 1090 6
	lbu	a5,-19(s0)
	bne	a5,zero,.L131
	.loc 1 1094 8
	lbu	a5,-31(s0)
	beq	a5,zero,.L132
	.loc 1 1095 7
	lui	a5,%hi(sent_tcp)
	addi	a1,a5,%lo(sent_tcp)
	lw	a0,-28(s0)
	call	tcp_sent
.L132:
	.loc 1 1098 5
	li	a2,1
	lui	a5,%hi(poll_tcp)
	addi	a1,a5,%lo(poll_tcp)
	lw	a0,-28(s0)
	call	tcp_poll
	.loc 1 1099 5
	lui	a5,%hi(err_tcp)
	addi	a1,a5,%lo(err_tcp)
	lw	a0,-28(s0)
	call	tcp_err
	.loc 1 1100 5
	lw	a1,-52(s0)
	lw	a0,-28(s0)
	call	tcp_arg
.L131:
	.loc 1 1106 10
	lb	a5,-17(s0)
.L130:
	.loc 1 1107 1
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
.LFE21:
	.size	lwip_netconn_do_close_internal, .-lwip_netconn_do_close_internal
	.section	.text.lwip_netconn_do_delconn,"ax",@progbits
	.align	1
	.globl	lwip_netconn_do_delconn
	.type	lwip_netconn_do_delconn, @function
lwip_netconn_do_delconn:
.LFB22:
	.loc 1 1118 1
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
	.loc 1 1119 19
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1121 33
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1121 22
	lbu	a5,1(a5)
	sb	a5,-21(s0)
	.loc 1 1140 6
	lbu	a5,-21(s0)
	beq	a5,zero,.L134
	.loc 1 1140 32 discriminator 1
	lbu	a4,-21(s0)
	li	a5,2
	beq	a4,a5,.L134
	.loc 1 1141 34
	lbu	a4,-21(s0)
	li	a5,3
	bne	a4,a5,.L135
.L134:
	.loc 1 1142 36
	lbu	a4,-21(s0)
	li	a5,3
	bne	a4,a5,.L136
	.loc 1 1143 45
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1143 52
	lbu	a5,36(a5)
	.loc 1 1143 60
	andi	a5,a5,4
	.loc 1 1143 35
	bne	a5,zero,.L136
.L135:
	.loc 1 1146 14
	lw	a5,-20(s0)
	li	a4,-5
	sb	a4,4(a5)
	j	.L137
.L136:
	.loc 1 1152 14
	lw	a5,-20(s0)
	sb	zero,4(a5)
	.loc 1 1157 5
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	netconn_drain
	.loc 1 1160 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1160 23
	lw	a5,4(a5)
	.loc 1 1160 8
	beq	a5,zero,.L138
	.loc 1 1162 20
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1162 26
	lbu	a5,0(a5)
	.loc 1 1162 33
	andi	a5,a5,240
	.loc 1 1162 7
	li	a4,64
	beq	a5,a4,.L139
	li	a4,64
	bgt	a5,a4,.L146
	li	a4,16
	beq	a5,a4,.L141
	li	a4,32
	beq	a5,a4,.L142
	.loc 1 1196 11
	j	.L146
.L139:
	.loc 1 1165 25
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1165 11
	lw	a5,4(a5)
	mv	a0,a5
	call	raw_remove
	.loc 1 1166 11
	j	.L143
.L142:
	.loc 1 1170 14
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1170 25
	lw	a5,4(a5)
	.loc 1 1170 40
	sw	zero,36(a5)
	.loc 1 1171 25
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1171 11
	lw	a5,4(a5)
	mv	a0,a5
	call	udp_remove
	.loc 1 1172 11
	j	.L143
.L141:
	.loc 1 1177 14
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1177 28
	li	a4,4
	sb	a4,1(a5)
	.loc 1 1178 28
	lw	a5,-20(s0)
	li	a4,3
	sb	a4,8(a5)
	.loc 1 1179 14
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1179 34
	lw	a4,-20(s0)
	sw	a4,40(a5)
	.loc 1 1189 11
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	lwip_netconn_do_close_internal
	.loc 1 1193 11
	j	.L133
.L146:
	.loc 1 1196 11
	nop
.L143:
	.loc 1 1198 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1198 26
	sw	zero,4(a5)
.L138:
	.loc 1 1204 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1204 18
	lw	a5,44(a5)
	.loc 1 1204 8
	beq	a5,zero,.L145
	.loc 1 1204 37 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1204 33 discriminator 1
	lw	a5,44(a5)
	lw	a4,-20(s0)
	lw	a4,0(a4)
	li	a2,0
	li	a1,0
	mv	a0,a4
	jalr	a5
.LVL14:
.L145:
	.loc 1 1205 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1205 18
	lw	a5,44(a5)
	.loc 1 1205 8
	beq	a5,zero,.L137
	.loc 1 1205 37 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1205 33 discriminator 1
	lw	a5,44(a5)
	lw	a4,-20(s0)
	lw	a4,0(a4)
	li	a2,0
	li	a1,2
	mv	a0,a4
	jalr	a5
.LVL15:
.L137:
	.loc 1 1207 28
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1207 7
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_valid
	mv	a5,a0
	.loc 1 1207 6 discriminator 1
	beq	a5,zero,.L133
	.loc 1 1208 32
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1208 10
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_signal
.L133:
	.loc 1 1210 1
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
	.size	lwip_netconn_do_delconn, .-lwip_netconn_do_delconn
	.section	.text.lwip_netconn_do_bind,"ax",@progbits
	.align	1
	.globl	lwip_netconn_do_bind
	.type	lwip_netconn_do_bind, @function
lwip_netconn_do_bind:
.LFB23:
	.loc 1 1221 1
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
	.loc 1 1222 19
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 1225 10
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1225 21
	lw	a5,4(a5)
	.loc 1 1225 6
	beq	a5,zero,.L148
	.loc 1 1226 18
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1226 24
	lbu	a5,0(a5)
	.loc 1 1226 31
	andi	a5,a5,240
	.loc 1 1226 5
	li	a4,64
	beq	a5,a4,.L149
	li	a4,64
	bgt	a5,a4,.L150
	li	a4,16
	beq	a5,a4,.L151
	li	a4,32
	beq	a5,a4,.L152
	j	.L150
.L149:
	.loc 1 1229 27
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1229 15
	lw	a4,4(a5)
	lw	a5,-24(s0)
	lw	a5,8(a5)
	mv	a1,a5
	mv	a0,a4
	call	raw_bind
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1230 9
	j	.L154
.L152:
	.loc 1 1234 27
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1234 15
	lw	a4,4(a5)
	lw	a5,-24(s0)
	lw	a3,8(a5)
	lw	a5,-24(s0)
	lhu	a5,12(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	udp_bind
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1235 9
	j	.L154
.L151:
	.loc 1 1239 27
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1239 15
	lw	a4,4(a5)
	lw	a5,-24(s0)
	lw	a3,8(a5)
	lw	a5,-24(s0)
	lhu	a5,12(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	tcp_bind
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1240 9
	j	.L154
.L150:
	.loc 1 1243 13
	li	a5,-6
	sb	a5,-17(s0)
	.loc 1 1244 9
	j	.L154
.L148:
	.loc 1 1247 9
	li	a5,-6
	sb	a5,-17(s0)
.L154:
	.loc 1 1249 12
	lw	a5,-24(s0)
	lbu	a4,-17(s0)
	sb	a4,4(a5)
	.loc 1 1250 30
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1250 8
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_signal
	.loc 1 1251 1
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
.LFE23:
	.size	lwip_netconn_do_bind, .-lwip_netconn_do_bind
	.section	.text.lwip_netconn_do_bind_if,"ax",@progbits
	.align	1
	.globl	lwip_netconn_do_bind_if
	.type	lwip_netconn_do_bind_if, @function
lwip_netconn_do_bind_if:
.LFB24:
	.loc 1 1261 1
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
	.loc 1 1263 19
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 1266 11
	lw	a5,-24(s0)
	lbu	a5,14(a5)
	mv	a0,a5
	call	netif_get_by_index
	sw	a0,-28(s0)
	.loc 1 1268 6
	lw	a5,-28(s0)
	beq	a5,zero,.L156
	.loc 1 1268 29 discriminator 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1268 40 discriminator 1
	lw	a5,4(a5)
	.loc 1 1268 22 discriminator 1
	beq	a5,zero,.L156
	.loc 1 1269 9
	sb	zero,-17(s0)
	.loc 1 1270 18
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1270 24
	lbu	a5,0(a5)
	.loc 1 1270 31
	andi	a5,a5,240
	.loc 1 1270 5
	li	a4,64
	beq	a5,a4,.L157
	li	a4,64
	bgt	a5,a4,.L158
	li	a4,16
	beq	a5,a4,.L159
	li	a4,32
	beq	a5,a4,.L160
	j	.L158
.L157:
	.loc 1 1273 27
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1273 9
	lw	a5,4(a5)
	lw	a1,-28(s0)
	mv	a0,a5
	call	raw_bind_netif
	.loc 1 1274 9
	j	.L161
.L160:
	.loc 1 1278 27
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1278 9
	lw	a5,4(a5)
	lw	a1,-28(s0)
	mv	a0,a5
	call	udp_bind_netif
	.loc 1 1279 9
	j	.L161
.L159:
	.loc 1 1283 27
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1283 9
	lw	a5,4(a5)
	lw	a1,-28(s0)
	mv	a0,a5
	call	tcp_bind_netif
	.loc 1 1284 9
	j	.L161
.L158:
	.loc 1 1287 13
	li	a5,-6
	sb	a5,-17(s0)
	.loc 1 1288 9
	nop
.L161:
	.loc 1 1270 5
	j	.L162
.L156:
	.loc 1 1291 9
	li	a5,-6
	sb	a5,-17(s0)
.L162:
	.loc 1 1293 12
	lw	a5,-24(s0)
	lbu	a4,-17(s0)
	sb	a4,4(a5)
	.loc 1 1294 30
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1294 8
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_signal
	.loc 1 1295 1
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
.LFE24:
	.size	lwip_netconn_do_bind_if, .-lwip_netconn_do_bind_if
	.section	.text.lwip_netconn_do_connected,"ax",@progbits
	.align	1
	.type	lwip_netconn_do_connected, @function
lwip_netconn_do_connected:
.LFB25:
	.loc 1 1306 1
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
	.loc 1 1309 14
	sw	zero,-20(s0)
	.loc 1 1313 8
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 1315 6
	lw	a5,-24(s0)
	bne	a5,zero,.L164
	.loc 1 1316 12
	li	a5,-6
	j	.L165
.L164:
	.loc 1 1323 11
	lw	a5,-24(s0)
	lw	a5,40(a5)
	.loc 1 1323 6
	beq	a5,zero,.L166
	.loc 1 1324 9
	lw	a5,-24(s0)
	lw	a5,40(a5)
	.loc 1 1324 28
	lbu	a4,-41(s0)
	sb	a4,4(a5)
	.loc 1 1325 31
	lw	a5,-24(s0)
	lw	a5,40(a5)
	.loc 1 1325 45
	lw	a5,0(a5)
	.loc 1 1325 22
	addi	a5,a5,12
	sw	a5,-20(s0)
.L166:
	.loc 1 1327 14
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 1 1327 21
	andi	a4,a5,240
	.loc 1 1327 6
	li	a5,16
	bne	a4,a5,.L167
	.loc 1 1327 44 discriminator 1
	lb	a5,-41(s0)
	bne	a5,zero,.L167
	.loc 1 1328 5
	lw	a0,-24(s0)
	call	setup_tcp
.L167:
	.loc 1 1330 27
	lw	a5,-24(s0)
	lbu	a5,36(a5)
	.loc 1 1330 35
	andi	a5,a5,4
	.loc 1 1330 18
	srli	a5,a5,2
	andi	a5,a5,1
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1330 16
	sw	a5,-28(s0)
	.loc 1 1331 125 discriminator 2
	lw	a5,-24(s0)
	lbu	a5,36(a5)
	.loc 1 1331 112 discriminator 2
	andi	a5,a5,-5
	andi	a4,a5,0xff
	.loc 1 1331 110 discriminator 2
	lw	a5,-24(s0)
	sb	a4,36(a5)
	.loc 1 1335 21
	lw	a5,-24(s0)
	sw	zero,40(a5)
	.loc 1 1336 15
	lw	a5,-24(s0)
	sb	zero,1(a5)
	.loc 1 1337 11
	lw	a5,-24(s0)
	lw	a5,44(a5)
	.loc 1 1337 6
	beq	a5,zero,.L168
	.loc 1 1337 26 discriminator 1
	lw	a5,-24(s0)
	lw	a5,44(a5)
	li	a2,0
	li	a1,2
	lw	a0,-24(s0)
	jalr	a5
.LVL16:
.L168:
	.loc 1 1339 6
	lw	a5,-28(s0)
	beq	a5,zero,.L169
	.loc 1 1340 5
	lw	a0,-20(s0)
	call	sys_sem_signal
.L169:
	.loc 1 1342 10
	li	a5,0
.L165:
	.loc 1 1343 1
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
	.size	lwip_netconn_do_connected, .-lwip_netconn_do_connected
	.section	.text.lwip_netconn_do_connect,"ax",@progbits
	.align	1
	.globl	lwip_netconn_do_connect
	.type	lwip_netconn_do_connect, @function
lwip_netconn_do_connect:
.LFB26:
	.loc 1 1355 1
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
	.loc 1 1356 19
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 1359 10
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1359 21
	lw	a5,4(a5)
	.loc 1 1359 6
	bne	a5,zero,.L171
	.loc 1 1361 9
	li	a5,-15
	sb	a5,-17(s0)
	j	.L172
.L171:
	.loc 1 1363 18
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1363 24
	lbu	a5,0(a5)
	.loc 1 1363 31
	andi	a5,a5,240
	.loc 1 1363 5
	li	a4,64
	beq	a5,a4,.L173
	li	a4,64
	bgt	a5,a4,.L184
	li	a4,16
	beq	a5,a4,.L175
	li	a4,32
	beq	a5,a4,.L176
	j	.L184
.L173:
	.loc 1 1366 30
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1366 15
	lw	a4,4(a5)
	lw	a5,-24(s0)
	lw	a5,8(a5)
	mv	a1,a5
	mv	a0,a4
	call	raw_connect
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1367 9
	j	.L172
.L176:
	.loc 1 1371 30
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1371 15
	lw	a4,4(a5)
	lw	a5,-24(s0)
	lw	a3,8(a5)
	lw	a5,-24(s0)
	lhu	a5,12(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	udp_connect
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1372 9
	j	.L172
.L175:
	.loc 1 1377 16
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1377 22
	lbu	a4,1(a5)
	.loc 1 1377 12
	li	a5,3
	bne	a4,a5,.L177
	.loc 1 1378 15
	li	a5,-9
	sb	a5,-17(s0)
	.loc 1 1406 9
	j	.L185
.L177:
	.loc 1 1379 23
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1379 29
	lbu	a5,1(a5)
	.loc 1 1379 19
	beq	a5,zero,.L179
	.loc 1 1380 15
	li	a5,-10
	sb	a5,-17(s0)
	.loc 1 1406 9
	j	.L185
.L179:
	.loc 1 1382 11
	lw	a5,-24(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	setup_tcp
	.loc 1 1383 32
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1383 17
	lw	a4,4(a5)
	lw	a5,-24(s0)
	lw	a1,8(a5)
	lw	a5,-24(s0)
	lhu	a2,12(a5)
	lui	a5,%hi(lwip_netconn_do_connected)
	addi	a3,a5,%lo(lwip_netconn_do_connected)
	mv	a0,a4
	call	tcp_connect
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1385 14
	lb	a5,-17(s0)
	bne	a5,zero,.L185
.LBB11:
	.loc 1 1386 39
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1386 46
	lbu	a5,36(a5)
	.loc 1 1386 54
	andi	a5,a5,2
	.loc 1 1386 62
	srli	a5,a5,1
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1386 18
	sb	a5,-25(s0)
	.loc 1 1387 16
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1387 30
	li	a4,3
	sb	a4,1(a5)
	.loc 1 1388 21
	lbu	a5,-25(s0)
	beq	a5,zero,.L180
	.loc 1 1388 75 discriminator 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1388 82 discriminator 1
	lbu	a4,36(a5)
	.loc 1 1388 47 discriminator 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1388 64 discriminator 1
	ori	a4,a4,4
	andi	a4,a4,0xff
	.loc 1 1388 62 discriminator 1
	sb	a4,36(a5)
	j	.L181
.L180:
	.loc 1 1388 159 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1388 166 discriminator 2
	lbu	a4,36(a5)
	.loc 1 1388 131 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1388 148 discriminator 2
	andi	a4,a4,-5
	andi	a4,a4,0xff
	.loc 1 1388 146 discriminator 2
	sb	a4,36(a5)
.L181:
	.loc 1 1389 16
	lbu	a5,-25(s0)
	beq	a5,zero,.L182
	.loc 1 1390 19
	li	a5,-5
	sb	a5,-17(s0)
.LBE11:
	.loc 1 1406 9
	j	.L185
.L182:
.LBB12:
	.loc 1 1392 18
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1392 38
	lw	a4,-24(s0)
	sw	a4,40(a5)
	.loc 1 1402 15
	j	.L170
.L184:
.LBE12:
	.loc 1 1409 37 discriminator 1
	li	a5,-6
	sb	a5,-17(s0)
	.loc 1 1412 9
	j	.L172
.L185:
	.loc 1 1406 9
	nop
.L172:
	.loc 1 1415 12
	lw	a5,-24(s0)
	lbu	a4,-17(s0)
	sb	a4,4(a5)
	.loc 1 1418 30
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1418 8
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_signal
.L170:
	.loc 1 1419 1
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
	.size	lwip_netconn_do_connect, .-lwip_netconn_do_connect
	.section	.text.lwip_netconn_do_disconnect,"ax",@progbits
	.align	1
	.globl	lwip_netconn_do_disconnect
	.type	lwip_netconn_do_disconnect, @function
lwip_netconn_do_disconnect:
.LFB27:
	.loc 1 1430 1
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
	.loc 1 1431 19
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1434 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1434 18
	lbu	a5,0(a5)
	.loc 1 1434 25
	andi	a4,a5,240
	.loc 1 1434 6
	li	a5,32
	bne	a4,a5,.L187
	.loc 1 1435 23
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1435 5
	lw	a5,4(a5)
	mv	a0,a5
	call	udp_disconnect
	.loc 1 1436 14
	lw	a5,-20(s0)
	sb	zero,4(a5)
	j	.L188
.L187:
	.loc 1 1440 14
	lw	a5,-20(s0)
	li	a4,-6
	sb	a4,4(a5)
.L188:
	.loc 1 1442 30
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1442 8
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_signal
	.loc 1 1443 1
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
.LFE27:
	.size	lwip_netconn_do_disconnect, .-lwip_netconn_do_disconnect
	.section	.text.lwip_netconn_do_listen,"ax",@progbits
	.align	1
	.globl	lwip_netconn_do_listen
	.type	lwip_netconn_do_listen, @function
lwip_netconn_do_listen:
.LFB28:
	.loc 1 1454 1
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
	.loc 1 1455 19
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1458 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1458 21
	lw	a5,4(a5)
	.loc 1 1458 6
	beq	a5,zero,.L190
	.loc 1 1459 14
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1459 20
	lbu	a5,0(a5)
	.loc 1 1459 27
	andi	a4,a5,240
	.loc 1 1459 8
	li	a5,16
	bne	a4,a5,.L191
	.loc 1 1460 14
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1460 20
	lbu	a5,1(a5)
	.loc 1 1460 10
	bne	a5,zero,.L192
.LBB13:
	.loc 1 1462 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1462 27
	lw	a5,4(a5)
	.loc 1 1462 31
	lbu	a5,20(a5)
	.loc 1 1462 12
	beq	a5,zero,.L193
	.loc 1 1464 15
	li	a5,-6
	sb	a5,-29(s0)
	j	.L194
.L193:
.LBB14:
	.loc 1 1470 19
	li	a5,-1
	sb	a5,-21(s0)
	.loc 1 1484 53
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1484 18
	lw	a5,4(a5)
	addi	a3,s0,-29
	lbu	a4,-21(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	tcp_listen_with_backlog_and_err
	sw	a0,-28(s0)
	.loc 1 1486 14
	lw	a5,-28(s0)
	beq	a5,zero,.L194
	.loc 1 1490 36
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1490 17
	addi	a5,a5,16
	mv	a0,a5
	call	sys_mbox_valid
	mv	a5,a0
	.loc 1 1490 16 discriminator 1
	beq	a5,zero,.L195
	.loc 1 1492 33
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1492 15
	addi	a5,a5,16
	mv	a0,a5
	call	sys_mbox_free
	.loc 1 1493 40
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1493 15
	addi	a5,a5,16
	mv	a0,a5
	call	sys_mbox_set_invalid
.L195:
	.loc 1 1495 17
	sb	zero,-29(s0)
	.loc 1 1496 37
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1496 18
	addi	a5,a5,20
	mv	a0,a5
	call	sys_mbox_valid
	mv	a5,a0
	.loc 1 1496 16 discriminator 1
	bne	a5,zero,.L196
	.loc 1 1497 38
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1497 21
	addi	a5,a5,20
	li	a1,2000
	mv	a0,a5
	call	sys_mbox_new
	mv	a5,a0
	.loc 1 1497 19 discriminator 1
	sb	a5,-29(s0)
.L196:
	.loc 1 1499 21
	lb	a5,-29(s0)
	.loc 1 1499 16
	bne	a5,zero,.L197
	.loc 1 1500 18
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1500 32
	li	a4,2
	sb	a4,1(a5)
	.loc 1 1501 18
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1501 34
	lw	a4,-28(s0)
	sw	a4,4(a5)
	.loc 1 1502 26
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1502 15
	lw	a4,4(a5)
	.loc 1 1502 46
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1502 15
	mv	a1,a5
	mv	a0,a4
	call	tcp_arg
	.loc 1 1503 29
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1503 15
	lw	a4,4(a5)
	lui	a5,%hi(accept_function)
	addi	a1,a5,%lo(accept_function)
	mv	a0,a4
	call	tcp_accept
	j	.L194
.L197:
	.loc 1 1506 15
	lw	a0,-28(s0)
	call	tcp_close
	.loc 1 1507 18
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1507 34
	sw	zero,4(a5)
	j	.L194
.L192:
.LBE14:
.LBE13:
	.loc 1 1511 21
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1511 27
	lbu	a4,1(a5)
	.loc 1 1511 17
	li	a5,2
	bne	a4,a5,.L198
	.loc 1 1513 13
	sb	zero,-29(s0)
	j	.L194
.L198:
	.loc 1 1516 13
	li	a5,-11
	sb	a5,-29(s0)
	j	.L194
.L191:
	.loc 1 1519 11
	li	a5,-16
	sb	a5,-29(s0)
	j	.L194
.L190:
	.loc 1 1522 9
	li	a5,-11
	sb	a5,-29(s0)
.L194:
	.loc 1 1524 12
	lb	a4,-29(s0)
	lw	a5,-20(s0)
	sb	a4,4(a5)
	.loc 1 1525 30
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1525 8
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_signal
	.loc 1 1526 1
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
.LFE28:
	.size	lwip_netconn_do_listen, .-lwip_netconn_do_listen
	.section	.text.lwip_netconn_do_send,"ax",@progbits
	.align	1
	.globl	lwip_netconn_do_send
	.type	lwip_netconn_do_send, @function
lwip_netconn_do_send:
.LFB29:
	.loc 1 1537 1
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
	.loc 1 1538 19
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 1540 15
	lw	a5,-24(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	netconn_err
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1541 6
	lb	a5,-17(s0)
	bne	a5,zero,.L200
	.loc 1 1542 12
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1542 23
	lw	a5,4(a5)
	.loc 1 1542 8
	beq	a5,zero,.L201
	.loc 1 1543 20
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1543 26
	lbu	a5,0(a5)
	.loc 1 1543 33
	andi	a5,a5,240
	.loc 1 1543 7
	li	a4,32
	beq	a5,a4,.L202
	li	a4,64
	bne	a5,a4,.L203
	.loc 1 1546 26
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 1546 17
	addi	a5,a5,8
	.loc 1 1546 14
	beq	a5,zero,.L204
	.loc 1 1546 30 discriminator 1
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 1546 40 discriminator 1
	lw	a5,8(a5)
	.loc 1 1546 73 discriminator 1
	bne	a5,zero,.L205
.L204:
	.loc 1 1547 31
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1547 19
	lw	a4,4(a5)
	.loc 1 1547 56
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 1547 19
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,a4
	call	raw_send
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1547 17
	nop
	.loc 1 1551 11
	j	.L200
.L205:
	.loc 1 1549 33
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1549 19
	lw	a4,4(a5)
	.loc 1 1549 58
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 1549 19
	lw	a3,0(a5)
	.loc 1 1549 74
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 1549 65
	addi	a5,a5,8
	.loc 1 1549 19
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	raw_sendto
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1551 11
	j	.L200
.L202:
	.loc 1 1556 26
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 1556 17
	addi	a5,a5,8
	.loc 1 1556 14
	beq	a5,zero,.L208
	.loc 1 1556 30 discriminator 1
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 1556 40 discriminator 1
	lw	a5,8(a5)
	.loc 1 1556 73 discriminator 1
	bne	a5,zero,.L209
.L208:
	.loc 1 1557 38
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1557 19
	lw	a4,4(a5)
	.loc 1 1557 63
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 1557 19
	lw	a1,0(a5)
	.loc 1 1558 43
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 1558 45
	lbu	a5,14(a5)
	.loc 1 1557 19
	andi	a5,a5,2
	andi	a2,a5,0xff
	.loc 1 1558 69
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 1557 19
	lhu	a5,16(a5)
	mv	a3,a5
	mv	a0,a4
	call	udp_send_chksum
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1557 17
	nop
	.loc 1 1571 11
	j	.L200
.L209:
	.loc 1 1560 40
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1560 19
	lw	a0,4(a5)
	.loc 1 1560 65
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 1560 19
	lw	a1,0(a5)
	.loc 1 1561 46
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 1561 37
	addi	a2,a5,8
	.loc 1 1561 64
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 1560 19
	lhu	a3,12(a5)
	.loc 1 1562 45
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 1562 47
	lbu	a5,14(a5)
	.loc 1 1560 19
	andi	a5,a5,2
	andi	a4,a5,0xff
	.loc 1 1562 71
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 1560 19
	lhu	a5,16(a5)
	call	udp_sendto_chksum
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1571 11
	j	.L200
.L203:
	.loc 1 1574 15
	li	a5,-11
	sb	a5,-17(s0)
	.loc 1 1575 11
	j	.L200
.L201:
	.loc 1 1578 11
	li	a5,-11
	sb	a5,-17(s0)
.L200:
	.loc 1 1581 12
	lw	a5,-24(s0)
	lbu	a4,-17(s0)
	sb	a4,4(a5)
	.loc 1 1582 30
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1582 8
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_signal
	.loc 1 1583 1
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
	.size	lwip_netconn_do_send, .-lwip_netconn_do_send
	.section	.text.lwip_netconn_do_recv,"ax",@progbits
	.align	1
	.globl	lwip_netconn_do_recv
	.type	lwip_netconn_do_recv, @function
lwip_netconn_do_recv:
.LFB30:
	.loc 1 1594 1
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
	.loc 1 1595 19
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	.loc 1 1597 12
	lw	a5,-28(s0)
	sb	zero,4(a5)
	.loc 1 1598 10
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 1598 21
	lw	a5,4(a5)
	.loc 1 1598 6
	beq	a5,zero,.L212
	.loc 1 1599 14
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 1599 20
	lbu	a5,0(a5)
	.loc 1 1599 27
	andi	a4,a5,240
	.loc 1 1599 8
	li	a5,16
	bne	a4,a5,.L212
.LBB15:
	.loc 1 1600 14
	lw	a5,-28(s0)
	lw	a5,8(a5)
	sw	a5,-20(s0)
.L215:
.LBB16:
	.loc 1 1602 24
	lw	a4,-20(s0)
	li	a5,65536
	bgeu	a4,a5,.L213
	.loc 1 1602 15 discriminator 1
	lw	a5,-20(s0)
	sh	a5,-22(s0)
	j	.L214
.L213:
	.loc 1 1602 15 is_stmt 0 discriminator 2
	li	a5,-1
	sh	a5,-22(s0)
.L214:
	.loc 1 1603 23 is_stmt 1
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 1603 9
	lw	a5,4(a5)
	lhu	a4,-22(s0)
	mv	a1,a4
	mv	a0,a5
	call	tcp_recved
	.loc 1 1604 19
	lhu	a5,-22(s0)
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
.LBE16:
	.loc 1 1605 26
	lw	a5,-20(s0)
	bne	a5,zero,.L215
.L212:
.LBE15:
	.loc 1 1608 30
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 1608 8
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_signal
	.loc 1 1609 1
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
	.size	lwip_netconn_do_recv, .-lwip_netconn_do_recv
	.section	.text.lwip_netconn_do_writemore,"ax",@progbits
	.align	1
	.type	lwip_netconn_do_writemore, @function
lwip_netconn_do_writemore:
.LFB31:
	.loc 1 1645 1
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
	.loc 1 1649 8
	sb	zero,-21(s0)
	.loc 1 1663 18
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1663 12
	lbu	a5,28(a5)
	sb	a5,-22(s0)
	.loc 1 1664 23
	lw	a5,-52(s0)
	lbu	a5,36(a5)
	.loc 1 1664 31
	andi	a5,a5,2
	.loc 1 1664 45
	bne	a5,zero,.L217
	.loc 1 1664 58 discriminator 2
	lbu	a5,-22(s0)
	andi	a5,a5,4
	.loc 1 1664 45 discriminator 2
	beq	a5,zero,.L218
.L217:
	.loc 1 1664 45 is_stmt 0 discriminator 3
	li	a5,1
	.loc 1 1664 45
	j	.L219
.L218:
	.loc 1 1664 45 discriminator 4
	li	a5,0
.L219:
	.loc 1 1664 13 is_stmt 1 discriminator 6
	sb	a5,-24(s0)
	.loc 1 1667 12
	lw	a5,-52(s0)
	lw	a5,28(a5)
	.loc 1 1667 6
	beq	a5,zero,.L237
	.loc 1 1668 16
	call	sys_now
	mv	a4,a0
	.loc 1 1668 32 discriminator 1
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1668 52 discriminator 1
	lw	a5,32(a5)
	.loc 1 1668 26 discriminator 1
	sub	a5,a4,a5
	.loc 1 1668 8 discriminator 1
	mv	a4,a5
	.loc 1 1668 74 discriminator 1
	lw	a5,-52(s0)
	lw	a5,28(a5)
	.loc 1 1667 33 discriminator 1
	blt	a4,a5,.L237
	.loc 1 1669 20
	li	a5,1
	sb	a5,-21(s0)
	.loc 1 1670 13
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1670 33
	lw	a5,24(a5)
	.loc 1 1670 8
	bne	a5,zero,.L221
	.loc 1 1672 11
	li	a5,-7
	sb	a5,-17(s0)
	.loc 1 1670 8
	j	.L223
.L221:
	.loc 1 1675 11
	sb	zero,-17(s0)
	.loc 1 1670 8
	j	.L223
.L237:
	.loc 1 1681 35
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1681 55
	lw	a5,8(a5)
	.loc 1 1681 62
	lw	a4,0(a5)
	.loc 1 1681 74
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1681 94
	lw	a5,16(a5)
	.loc 1 1681 15
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 1682 18
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1682 38
	lw	a5,8(a5)
	.loc 1 1682 45
	lw	a4,4(a5)
	.loc 1 1682 57
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1682 77
	lw	a5,16(a5)
	.loc 1 1682 12
	sub	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 1683 10
	lw	a4,-32(s0)
	li	a5,65536
	bltu	a4,a5,.L224
	.loc 1 1684 13
	li	a5,-1
	sh	a5,-20(s0)
	.loc 1 1685 18
	lbu	a5,-22(s0)
	ori	a5,a5,2
	sb	a5,-22(s0)
	j	.L225
.L224:
	.loc 1 1687 13
	lw	a5,-32(s0)
	sh	a5,-20(s0)
.L225:
	.loc 1 1689 31
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 1689 17
	lhu	a5,100(a5)
	sh	a5,-34(s0)
	.loc 1 1690 10
	lhu	a4,-34(s0)
	lhu	a5,-20(s0)
	bgeu	a4,a5,.L226
	.loc 1 1692 13
	lhu	a5,-34(s0)
	sh	a5,-20(s0)
	.loc 1 1693 12
	lbu	a5,-24(s0)
	beq	a5,zero,.L227
	.loc 1 1694 14
	lhu	a5,-20(s0)
	bne	a5,zero,.L226
	.loc 1 1696 24
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1696 44
	lw	a5,24(a5)
	.loc 1 1696 17
	bne	a5,zero,.L228
	.loc 1 1696 17 is_stmt 0 discriminator 1
	li	a5,-7
	sb	a5,-17(s0)
	.loc 1 1697 13 is_stmt 1
	j	.L230
.L228:
	.loc 1 1696 17 discriminator 2
	sb	zero,-17(s0)
	.loc 1 1697 13
	j	.L230
.L227:
	.loc 1 1700 20
	lbu	a5,-22(s0)
	ori	a5,a5,2
	sb	a5,-22(s0)
.L226:
	.loc 1 1709 10
	lhu	a4,-20(s0)
	li	a5,65536
	addi	a5,a5,-1
	bne	a4,a5,.L231
	.loc 1 1709 26 discriminator 1
	lw	a4,-32(s0)
	li	a5,65536
	bgeu	a4,a5,.L232
.L231:
	.loc 1 1710 19
	lw	a5,-32(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1709 46 discriminator 3
	lhu	a4,-20(s0)
	bne	a4,a5,.L233
	.loc 1 1710 38
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1710 58
	lhu	a4,12(a5)
	.loc 1 1710 31
	li	a5,1
	bleu	a4,a5,.L233
.L232:
	.loc 1 1711 20
	li	a5,1
	sb	a5,-23(s0)
	.loc 1 1712 18
	lbu	a5,-22(s0)
	ori	a5,a5,2
	sb	a5,-22(s0)
	j	.L234
.L233:
	.loc 1 1714 20
	sb	zero,-23(s0)
.L234:
	.loc 1 1716 13
	lw	a5,-52(s0)
	lw	a5,4(a5)
	lbu	a3,-22(s0)
	lhu	a4,-20(s0)
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	tcp_write
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1717 10
	lb	a5,-17(s0)
	bne	a5,zero,.L235
	.loc 1 1718 13
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1718 33
	lw	a3,24(a5)
	.loc 1 1718 41
	lhu	a4,-20(s0)
	.loc 1 1718 13
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1718 41
	add	a4,a3,a4
	sw	a4,24(a5)
	.loc 1 1719 13
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1719 33
	lw	a3,16(a5)
	.loc 1 1719 45
	lhu	a4,-20(s0)
	.loc 1 1719 13
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1719 45
	add	a4,a3,a4
	sw	a4,16(a5)
	.loc 1 1721 17
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1721 37
	lw	a4,16(a5)
	.loc 1 1721 56
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1721 76
	lw	a5,8(a5)
	.loc 1 1721 83
	lw	a5,4(a5)
	.loc 1 1721 12
	bne	a4,a5,.L235
	.loc 1 1722 15
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1722 35
	lhu	a4,12(a5)
	.loc 1 1722 46
	addi	a4,a4,-1
	slli	a4,a4,16
	srli	a4,a4,16
	sh	a4,12(a5)
	.loc 1 1724 19
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1724 39
	lhu	a5,12(a5)
	.loc 1 1724 14
	beq	a5,zero,.L235
	.loc 1 1725 17
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1725 37
	lw	a4,8(a5)
	.loc 1 1725 44
	addi	a4,a4,8
	sw	a4,8(a5)
	.loc 1 1726 17
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1726 49
	sw	zero,16(a5)
.L235:
	.loc 1 1730 25
	lbu	a5,-23(s0)
	beq	a5,zero,.L236
	.loc 1 1730 25 is_stmt 0 discriminator 1
	lb	a5,-17(s0)
	beq	a5,zero,.L237
.L236:
	.loc 1 1732 8 is_stmt 1
	lb	a5,-17(s0)
	beq	a5,zero,.L251
	.loc 1 1732 25 discriminator 1
	lb	a4,-17(s0)
	li	a5,-1
	bne	a4,a5,.L238
.L251:
	.loc 1 1733 1
	nop
.L230:
	.loc 1 1734 10
	lbu	a5,-24(s0)
	beq	a5,zero,.L239
	.loc 1 1734 29 discriminator 1
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1734 49 discriminator 1
	lw	a4,24(a5)
	.loc 1 1734 63 discriminator 1
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1734 83 discriminator 1
	lw	a5,20(a5)
	.loc 1 1734 21 discriminator 1
	bgeu	a4,a5,.L239
	.loc 1 1737 17
	lw	a5,-52(s0)
	lw	a5,44(a5)
	.loc 1 1737 12
	beq	a5,zero,.L240
	.loc 1 1737 32 discriminator 1
	lw	a5,-52(s0)
	lw	a5,44(a5)
	li	a2,0
	li	a1,3
	lw	a0,-52(s0)
	jalr	a5
.LVL17:
.L240:
	.loc 1 1738 13
	lw	a5,-52(s0)
	lbu	a5,36(a5)
	.loc 1 1738 21
	ori	a5,a5,16
	andi	a4,a5,0xff
	lw	a5,-52(s0)
	sb	a4,36(a5)
	j	.L238
.L239:
	.loc 1 1739 31
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 1739 36
	lhu	a4,100(a5)
	.loc 1 1739 17
	li	a5,4096
	addi	a5,a5,-1344
	bleu	a4,a5,.L241
	.loc 1 1740 30
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 1740 35
	lhu	a4,102(a5)
	.loc 1 1739 406 discriminator 1
	li	a5,7
	bleu	a4,a5,.L238
.L241:
	.loc 1 1743 17
	lw	a5,-52(s0)
	lw	a5,44(a5)
	.loc 1 1743 12
	beq	a5,zero,.L238
	.loc 1 1743 32 discriminator 1
	lw	a5,-52(s0)
	lw	a5,44(a5)
	li	a2,0
	li	a1,3
	lw	a0,-52(s0)
	jalr	a5
.LVL18:
.L238:
	.loc 1 1747 8
	lb	a5,-17(s0)
	bne	a5,zero,.L242
.LBB17:
	.loc 1 1749 16
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1749 36
	lw	a4,24(a5)
	.loc 1 1749 51
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1749 71
	lw	a5,20(a5)
	.loc 1 1749 10
	beq	a4,a5,.L243
	.loc 1 1749 77 discriminator 1
	lbu	a5,-24(s0)
	beq	a5,zero,.L244
.L243:
	.loc 1 1751 24
	li	a5,1
	sb	a5,-21(s0)
.L244:
	.loc 1 1753 17
	lw	a5,-52(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	tcp_output
	mv	a5,a0
	sb	a5,-36(s0)
	.loc 1 1754 10
	lb	a4,-36(s0)
	li	a5,-4
	bne	a4,a5,.L223
	.loc 1 1758 13
	lbu	a5,-36(s0)
	sb	a5,-17(s0)
	.loc 1 1759 24
	li	a5,1
	sb	a5,-21(s0)
	j	.L223
.L242:
.LBE17:
	.loc 1 1761 15
	lb	a4,-17(s0)
	li	a5,-1
	bne	a4,a5,.L245
.LBB18:
	.loc 1 1768 23
	lw	a5,-52(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	tcp_output
	mv	a5,a0
	sb	a5,-35(s0)
	.loc 1 1769 10
	lb	a4,-35(s0)
	li	a5,-4
	bne	a4,a5,.L246
	.loc 1 1773 13
	lbu	a5,-35(s0)
	sb	a5,-17(s0)
	.loc 1 1774 24
	li	a5,1
	sb	a5,-21(s0)
	j	.L223
.L246:
	.loc 1 1775 17
	lbu	a5,-24(s0)
	beq	a5,zero,.L223
	.loc 1 1778 20
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1778 40
	lw	a5,24(a5)
	.loc 1 1778 13
	bne	a5,zero,.L247
	.loc 1 1778 13 is_stmt 0 discriminator 1
	li	a5,-7
	sb	a5,-17(s0)
	j	.L248
.L247:
	.loc 1 1778 13 discriminator 2
	sb	zero,-17(s0)
.L248:
	.loc 1 1779 24 is_stmt 1
	li	a5,1
	sb	a5,-21(s0)
	j	.L223
.L245:
.LBE18:
	.loc 1 1784 22
	li	a5,1
	sb	a5,-21(s0)
.L223:
	.loc 1 1787 6
	lbu	a5,-21(s0)
	beq	a5,zero,.L249
.LBB19:
	.loc 1 1790 42
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1790 56
	lw	a5,0(a5)
	.loc 1 1790 16
	addi	a5,a5,12
	sw	a5,-40(s0)
	.loc 1 1791 9
	lw	a5,-52(s0)
	lw	a5,40(a5)
	.loc 1 1791 28
	lbu	a4,-17(s0)
	sb	a4,4(a5)
	.loc 1 1792 23
	lw	a5,-52(s0)
	sw	zero,40(a5)
	.loc 1 1793 17
	lw	a5,-52(s0)
	sb	zero,1(a5)
	.loc 1 1798 7
	lw	a0,-40(s0)
	call	sys_sem_signal
.L249:
.LBE19:
	.loc 1 1806 10
	li	a5,0
	.loc 1 1807 1
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
	.size	lwip_netconn_do_writemore, .-lwip_netconn_do_writemore
	.section	.text.lwip_netconn_do_write,"ax",@progbits
	.align	1
	.globl	lwip_netconn_do_write
	.type	lwip_netconn_do_write, @function
lwip_netconn_do_write:
.LFB32:
	.loc 1 1818 1
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
	.loc 1 1819 19
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 1821 15
	lw	a5,-24(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	netconn_err
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1822 6
	lb	a5,-17(s0)
	bne	a5,zero,.L253
	.loc 1 1823 14
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1823 20
	lbu	a5,0(a5)
	.loc 1 1823 27
	andi	a4,a5,240
	.loc 1 1823 8
	li	a5,16
	bne	a4,a5,.L254
	.loc 1 1825 14
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1825 20
	lbu	a5,1(a5)
	.loc 1 1825 10
	beq	a5,zero,.L255
	.loc 1 1827 13
	li	a5,-5
	sb	a5,-17(s0)
	j	.L253
.L255:
	.loc 1 1828 21
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1828 32
	lw	a5,4(a5)
	.loc 1 1828 17
	beq	a5,zero,.L256
	.loc 1 1829 12
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1829 26
	li	a4,1
	sb	a4,1(a5)
	.loc 1 1833 12
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1833 32
	lw	a4,-24(s0)
	sw	a4,40(a5)
	.loc 1 1843 9
	lw	a5,-24(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	lwip_netconn_do_writemore
	.loc 1 1847 9
	j	.L252
.L256:
	.loc 1 1849 13
	li	a5,-11
	sb	a5,-17(s0)
	j	.L253
.L254:
	.loc 1 1856 11
	li	a5,-6
	sb	a5,-17(s0)
.L253:
	.loc 1 1860 12
	lw	a5,-24(s0)
	lbu	a4,-17(s0)
	sb	a4,4(a5)
	.loc 1 1861 30
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1861 8
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_signal
.L252:
	.loc 1 1862 1
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
	.size	lwip_netconn_do_write, .-lwip_netconn_do_write
	.section	.text.lwip_netconn_do_getaddr,"ax",@progbits
	.align	1
	.globl	lwip_netconn_do_getaddr
	.type	lwip_netconn_do_getaddr, @function
lwip_netconn_do_getaddr:
.LFB33:
	.loc 1 1872 1
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
	.loc 1 1873 19
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1875 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1875 21
	lw	a5,4(a5)
	.loc 1 1875 6
	beq	a5,zero,.L259
	.loc 1 1876 20
	lw	a5,-20(s0)
	lbu	a5,16(a5)
	.loc 1 1876 8
	beq	a5,zero,.L260
	.loc 1 1877 45
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1877 56
	lw	a4,4(a5)
	.loc 1 1877 23
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 1877 70
	lw	a4,0(a4)
	.loc 1 1877 39
	sw	a4,0(a5)
	j	.L261
.L260:
	.loc 1 1880 45
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1880 56
	lw	a4,4(a5)
	.loc 1 1880 23
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 1880 71
	lw	a4,4(a4)
	.loc 1 1880 39
	sw	a4,0(a5)
.L261:
	.loc 1 1884 14
	lw	a5,-20(s0)
	sb	zero,4(a5)
	.loc 1 1885 18
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1885 24
	lbu	a5,0(a5)
	.loc 1 1885 31
	andi	a5,a5,240
	.loc 1 1885 5
	li	a4,64
	beq	a5,a4,.L262
	li	a4,64
	bgt	a5,a4,.L278
	li	a4,16
	beq	a5,a4,.L264
	li	a4,32
	beq	a5,a4,.L265
	.loc 1 1922 9
	j	.L278
.L262:
	.loc 1 1888 24
	lw	a5,-20(s0)
	lbu	a5,16(a5)
	.loc 1 1888 12
	beq	a5,zero,.L266
	.loc 1 1889 38
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1889 49
	lw	a5,4(a5)
	.loc 1 1889 53
	lbu	a4,16(a5)
	.loc 1 1889 25
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 1889 33
	sh	a4,0(a5)
	.loc 1 1894 9
	j	.L277
.L266:
	.loc 1 1892 20
	lw	a5,-20(s0)
	li	a4,-11
	sb	a4,4(a5)
	.loc 1 1894 9
	j	.L277
.L265:
	.loc 1 1898 24
	lw	a5,-20(s0)
	lbu	a5,16(a5)
	.loc 1 1898 12
	beq	a5,zero,.L269
	.loc 1 1899 38
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1899 49
	lw	a4,4(a5)
	.loc 1 1899 25
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 1899 53
	lhu	a4,18(a4)
	.loc 1 1899 33
	sh	a4,0(a5)
	.loc 1 1907 9
	j	.L277
.L269:
	.loc 1 1901 19
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1901 30
	lw	a5,4(a5)
	.loc 1 1901 34
	lbu	a5,16(a5)
	.loc 1 1901 42
	andi	a5,a5,4
	.loc 1 1901 14
	bne	a5,zero,.L271
	.loc 1 1902 22
	lw	a5,-20(s0)
	li	a4,-11
	sb	a4,4(a5)
	.loc 1 1907 9
	j	.L277
.L271:
	.loc 1 1904 40
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1904 51
	lw	a4,4(a5)
	.loc 1 1904 27
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 1904 55
	lhu	a4,20(a4)
	.loc 1 1904 35
	sh	a4,0(a5)
	.loc 1 1907 9
	j	.L277
.L264:
	.loc 1 1911 25
	lw	a5,-20(s0)
	lbu	a5,16(a5)
	.loc 1 1911 12
	bne	a5,zero,.L272
	.loc 1 1912 18
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1912 29
	lw	a5,4(a5)
	.loc 1 1912 33
	lbu	a5,20(a5)
	.loc 1 1911 38 discriminator 1
	beq	a5,zero,.L273
	.loc 1 1912 59
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1912 70
	lw	a5,4(a5)
	.loc 1 1912 74
	lbu	a4,20(a5)
	.loc 1 1912 52
	li	a5,1
	bne	a4,a5,.L272
.L273:
	.loc 1 1914 20
	lw	a5,-20(s0)
	li	a4,-11
	sb	a4,4(a5)
	.loc 1 1918 9
	j	.L277
.L272:
	.loc 1 1916 47
	lw	a5,-20(s0)
	lbu	a5,16(a5)
	.loc 1 1916 33
	beq	a5,zero,.L275
	.loc 1 1916 59 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1916 70 discriminator 1
	lw	a5,4(a5)
	.loc 1 1916 33 discriminator 1
	lhu	a5,22(a5)
	j	.L276
.L275:
	.loc 1 1916 92 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1916 103 discriminator 2
	lw	a5,4(a5)
	.loc 1 1916 33 discriminator 2
	lhu	a5,24(a5)
.L276:
	.loc 1 1916 25 discriminator 4
	lw	a4,-20(s0)
	lw	a4,12(a4)
	.loc 1 1916 33 discriminator 4
	sh	a5,0(a4)
	.loc 1 1918 9
	j	.L277
.L259:
	.loc 1 1925 14
	lw	a5,-20(s0)
	li	a4,-11
	sb	a4,4(a5)
	j	.L277
.L278:
	.loc 1 1922 9
	nop
.L277:
	.loc 1 1927 30
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1927 8
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_signal
	.loc 1 1928 1
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
	.size	lwip_netconn_do_getaddr, .-lwip_netconn_do_getaddr
	.section	.text.lwip_netconn_do_close,"ax",@progbits
	.align	1
	.globl	lwip_netconn_do_close
	.type	lwip_netconn_do_close, @function
lwip_netconn_do_close:
.LFB34:
	.loc 1 1939 1
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
	.loc 1 1940 19
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1943 33
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1943 22
	lbu	a5,1(a5)
	sb	a5,-21(s0)
	.loc 1 1946 11
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1946 22
	lw	a5,4(a5)
	.loc 1 1946 6
	beq	a5,zero,.L280
	.loc 1 1947 13
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1947 19
	lbu	a5,0(a5)
	.loc 1 1947 26
	andi	a4,a5,240
	.loc 1 1946 35 discriminator 1
	li	a5,16
	bne	a4,a5,.L280
	.loc 1 1948 20
	lw	a5,-20(s0)
	lbu	a4,8(a5)
	.loc 1 1947 49
	li	a5,3
	beq	a4,a5,.L281
	.loc 1 1948 38
	lbu	a4,-21(s0)
	li	a5,2
	beq	a4,a5,.L280
.L281:
	.loc 1 1950 8
	lbu	a4,-21(s0)
	li	a5,3
	bne	a4,a5,.L282
	.loc 1 1952 16
	lw	a5,-20(s0)
	li	a4,-11
	sb	a4,4(a5)
	.loc 1 1950 8
	j	.L287
.L282:
	.loc 1 1953 15
	lbu	a4,-21(s0)
	li	a5,1
	bne	a4,a5,.L284
	.loc 1 1974 16
	lw	a5,-20(s0)
	li	a4,-5
	sb	a4,4(a5)
	.loc 1 1950 8
	j	.L287
.L284:
	.loc 1 1977 22
	lw	a5,-20(s0)
	lbu	a5,8(a5)
	.loc 1 1977 28
	andi	a5,a5,1
	.loc 1 1977 10
	beq	a5,zero,.L285
	.loc 1 1982 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	netconn_drain
.L285:
	.loc 1 1986 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1986 24
	li	a4,4
	sb	a4,1(a5)
	.loc 1 1987 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1987 30
	lw	a4,-20(s0)
	sw	a4,40(a5)
	.loc 1 1997 7
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	lwip_netconn_do_close_internal
	.loc 1 2000 7
	j	.L279
.L280:
	.loc 1 2005 14
	lw	a5,-20(s0)
	li	a4,-11
	sb	a4,4(a5)
.L287:
	.loc 1 2007 30
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 2007 8
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_signal
.L279:
	.loc 1 2008 1
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
	.size	lwip_netconn_do_close, .-lwip_netconn_do_close
	.section	.text.lwip_netconn_do_join_leave_group,"ax",@progbits
	.align	1
	.globl	lwip_netconn_do_join_leave_group
	.type	lwip_netconn_do_join_leave_group, @function
lwip_netconn_do_join_leave_group:
.LFB35:
	.loc 1 2019 1
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
	.loc 1 2020 19
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 2022 12
	lw	a5,-20(s0)
	li	a4,-11
	sb	a4,4(a5)
	.loc 1 2023 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 2023 21
	lw	a5,4(a5)
	.loc 1 2023 6
	beq	a5,zero,.L289
	.loc 1 2024 14
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 2024 20
	lbu	a5,0(a5)
	.loc 1 2024 27
	andi	a4,a5,240
	.loc 1 2024 8
	li	a5,32
	bne	a4,a5,.L290
	.loc 1 2039 24
	lw	a5,-20(s0)
	lbu	a5,17(a5)
	.loc 1 2039 12
	bne	a5,zero,.L291
	.loc 1 2040 49
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 2041 49
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 2040 22
	mv	a1,a5
	mv	a0,a4
	call	igmp_joingroup
	mv	a5,a0
	mv	a4,a5
	.loc 1 2040 20 discriminator 1
	lw	a5,-20(s0)
	sb	a4,4(a5)
	j	.L289
.L291:
	.loc 1 2043 50
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 2044 50
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 2043 22
	mv	a1,a5
	mv	a0,a4
	call	igmp_leavegroup
	mv	a5,a0
	mv	a4,a5
	.loc 1 2043 20 discriminator 1
	lw	a5,-20(s0)
	sb	a4,4(a5)
	j	.L289
.L290:
	.loc 1 2051 16
	lw	a5,-20(s0)
	li	a4,-6
	sb	a4,4(a5)
.L289:
	.loc 1 2055 30
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 2055 8
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_signal
	.loc 1 2056 1
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
	.size	lwip_netconn_do_join_leave_group, .-lwip_netconn_do_join_leave_group
	.section	.text.lwip_netconn_do_join_leave_group_netif,"ax",@progbits
	.align	1
	.globl	lwip_netconn_do_join_leave_group_netif
	.type	lwip_netconn_do_join_leave_group_netif, @function
lwip_netconn_do_join_leave_group_netif:
.LFB36:
	.loc 1 2065 1
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
	.loc 1 2066 19
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 2069 11
	lw	a5,-20(s0)
	lbu	a5,16(a5)
	mv	a0,a5
	call	netif_get_by_index
	sw	a0,-24(s0)
	.loc 1 2070 6
	lw	a5,-24(s0)
	bne	a5,zero,.L293
	.loc 1 2071 14
	lw	a5,-20(s0)
	li	a4,-12
	sb	a4,4(a5)
	.loc 1 2072 5
	j	.L294
.L293:
	.loc 1 2075 12
	lw	a5,-20(s0)
	li	a4,-11
	sb	a4,4(a5)
	.loc 1 2076 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 2076 21
	lw	a5,4(a5)
	.loc 1 2076 6
	beq	a5,zero,.L297
	.loc 1 2077 14
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 2077 20
	lbu	a5,0(a5)
	.loc 1 2077 27
	andi	a4,a5,240
	.loc 1 2077 8
	li	a5,32
	bne	a4,a5,.L295
	.loc 1 2092 24
	lw	a5,-20(s0)
	lbu	a5,17(a5)
	.loc 1 2092 12
	bne	a5,zero,.L296
	.loc 1 2094 55
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 2093 22
	mv	a1,a5
	lw	a0,-24(s0)
	call	igmp_joingroup_netif
	mv	a5,a0
	mv	a4,a5
	.loc 1 2093 20 discriminator 1
	lw	a5,-20(s0)
	sb	a4,4(a5)
	j	.L294
.L296:
	.loc 1 2097 56
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 2096 22
	mv	a1,a5
	lw	a0,-24(s0)
	call	igmp_leavegroup_netif
	mv	a5,a0
	mv	a4,a5
	.loc 1 2096 20 discriminator 1
	lw	a5,-20(s0)
	sb	a4,4(a5)
	j	.L294
.L295:
	.loc 1 2104 16
	lw	a5,-20(s0)
	li	a4,-6
	sb	a4,4(a5)
	j	.L294
.L297:
	.loc 1 2109 1
	nop
.L294:
	.loc 1 2110 30
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 2110 8
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_signal
	.loc 1 2111 1
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
.LFE36:
	.size	lwip_netconn_do_join_leave_group_netif, .-lwip_netconn_do_join_leave_group_netif
	.section	.text.lwip_netconn_do_dns_found,"ax",@progbits
	.align	1
	.type	lwip_netconn_do_dns_found, @function
lwip_netconn_do_dns_found:
.LFB37:
	.loc 1 2122 1
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
	.loc 1 2123 23
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	.loc 1 2128 6
	lw	a5,-40(s0)
	bne	a5,zero,.L299
	.loc 1 2130 11
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 2130 19
	li	a4,-6
	sb	a4,0(a5)
	j	.L300
.L299:
	.loc 1 2133 11
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 2133 19
	sb	zero,0(a5)
	.loc 1 2134 11
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 2134 20
	lw	a4,-40(s0)
	lw	a4,0(a4)
	sw	a4,0(a5)
.L300:
	.loc 1 2137 3
	lw	a5,-20(s0)
	lw	a5,8(a5)
	mv	a0,a5
	call	sys_sem_signal
	.loc 1 2138 1
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
.LFE37:
	.size	lwip_netconn_do_dns_found, .-lwip_netconn_do_dns_found
	.section	.text.lwip_netconn_do_gethostbyname,"ax",@progbits
	.align	1
	.globl	lwip_netconn_do_gethostbyname
	.type	lwip_netconn_do_gethostbyname, @function
lwip_netconn_do_gethostbyname:
.LFB38:
	.loc 1 2148 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 2149 23
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 2150 8
	sb	zero,-21(s0)
	.loc 1 2157 19
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a5,-20(s0)
	lw	a1,4(a5)
	.loc 1 2157 9
	lw	a5,-20(s0)
	lw	s1,12(a5)
	.loc 1 2157 19
	lbu	a5,-21(s0)
	mv	a4,a5
	lw	a3,-20(s0)
	lui	a5,%hi(lwip_netconn_do_dns_found)
	addi	a2,a5,%lo(lwip_netconn_do_dns_found)
	call	dns_gethostbyname_addrtype
	mv	a5,a0
	.loc 1 2157 17 discriminator 1
	sb	a5,0(s1)
	.loc 1 2168 13
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 2168 8
	lb	a4,0(a5)
	.loc 1 2168 6
	li	a5,-5
	beq	a4,a5,.L303
	.loc 1 2171 5
	lw	a5,-20(s0)
	lw	a5,8(a5)
	mv	a0,a5
	call	sys_sem_signal
.L303:
	.loc 1 2174 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	lwip_netconn_do_gethostbyname, .-lwip_netconn_do_gethostbyname
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/arch/cc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/queue.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/semphr.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/arch/sys_arch.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netbuf.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/api.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcp.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/udp.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/raw.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/api_msg.h"
	.file 22 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/ip4.h"
	.file 23 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcpbase.h"
	.file 24 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/dns.h"
	.file 25 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/igmp.h"
	.file 26 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x25e6
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x2c
	.4byte	.LASF409
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x2
	.byte	0x25
	.byte	0xd
	.4byte	0x37
	.uleb128 0x2d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x14
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x14
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x14
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x14
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x14
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x14
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x76
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x3
	.byte	0xa0
	.byte	0xd
	.4byte	0x37
	.uleb128 0x14
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x2e
	.byte	0x4
	.uleb128 0x14
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x1a
	.4byte	0x9e
	.uleb128 0x7
	.4byte	0xa5
	.uleb128 0x7
	.4byte	0xb4
	.uleb128 0x2f
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.byte	0x22
	.byte	0x15
	.4byte	0x3e
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0x25
	.byte	0x13
	.4byte	0x4c
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x5a
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x45
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x53
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x61
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x5
	.byte	0x7d
	.byte	0x11
	.4byte	0xd9
	.uleb128 0x1a
	.4byte	0xfd
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x5
	.byte	0x7e
	.byte	0x10
	.4byte	0xb5
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x5
	.byte	0x7f
	.byte	0x12
	.4byte	0xe5
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x5
	.byte	0x80
	.byte	0x11
	.4byte	0xc1
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x5
	.byte	0x81
	.byte	0x12
	.4byte	0xf1
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x5
	.byte	0x82
	.byte	0x11
	.4byte	0xcd
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x4
	.byte	0x6
	.byte	0x33
	.4byte	0x164
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x6
	.byte	0x34
	.byte	0x9
	.4byte	0x132
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x6
	.byte	0x39
	.byte	0x19
	.4byte	0x14a
	.uleb128 0x1a
	.4byte	0x164
	.uleb128 0x19
	.4byte	.LASF92
	.4byte	0x45
	.byte	0x7
	.byte	0x36
	.4byte	0x197
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x2e
	.byte	0
	.uleb128 0x30
	.4byte	.LASF32
	.byte	0x7
	.2byte	0x126
	.byte	0x14
	.4byte	0x164
	.uleb128 0x1a
	.4byte	0x197
	.uleb128 0x21
	.byte	0x5
	.byte	0x1
	.4byte	0x3e
	.byte	0x8
	.byte	0x35
	.4byte	0x21d
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0
	.uleb128 0xc
	.4byte	.LASF34
	.sleb128 -1
	.uleb128 0xc
	.4byte	.LASF35
	.sleb128 -2
	.uleb128 0xc
	.4byte	.LASF36
	.sleb128 -3
	.uleb128 0xc
	.4byte	.LASF37
	.sleb128 -4
	.uleb128 0xc
	.4byte	.LASF38
	.sleb128 -5
	.uleb128 0xc
	.4byte	.LASF39
	.sleb128 -6
	.uleb128 0xc
	.4byte	.LASF40
	.sleb128 -7
	.uleb128 0xc
	.4byte	.LASF41
	.sleb128 -8
	.uleb128 0xc
	.4byte	.LASF42
	.sleb128 -9
	.uleb128 0xc
	.4byte	.LASF43
	.sleb128 -10
	.uleb128 0xc
	.4byte	.LASF44
	.sleb128 -11
	.uleb128 0xc
	.4byte	.LASF45
	.sleb128 -12
	.uleb128 0xc
	.4byte	.LASF46
	.sleb128 -13
	.uleb128 0xc
	.4byte	.LASF47
	.sleb128 -14
	.uleb128 0xc
	.4byte	.LASF48
	.sleb128 -15
	.uleb128 0xc
	.4byte	.LASF49
	.sleb128 -16
	.byte	0
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x8
	.byte	0x60
	.byte	0xe
	.4byte	0x10e
	.uleb128 0x23
	.4byte	0x9c
	.4byte	0x239
	.uleb128 0x24
	.4byte	0x76
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x9
	.byte	0x30
	.byte	0x22
	.4byte	0x245
	.uleb128 0x7
	.4byte	0x24a
	.uleb128 0x28
	.4byte	.LASF122
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0xa
	.byte	0x25
	.byte	0x17
	.4byte	0x239
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0xb
	.byte	0x2c
	.byte	0x1b
	.4byte	0x24f
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0xb
	.byte	0x2e
	.byte	0x17
	.4byte	0x239
	.uleb128 0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x45
	.byte	0xc
	.byte	0x59
	.4byte	0x29f
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0xb6
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0xa2
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x8e
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x80
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0xc
	.byte	0x70
	.byte	0x3
	.4byte	0x273
	.uleb128 0x21
	.byte	0x7
	.byte	0x2
	.4byte	0x53
	.byte	0xc
	.byte	0x91
	.4byte	0x2d3
	.uleb128 0x29
	.4byte	.LASF61
	.2byte	0x280
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x41
	.uleb128 0x29
	.4byte	.LASF64
	.2byte	0x182
	.byte	0
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0xc
	.byte	0xa8
	.byte	0x3
	.4byte	0x2ab
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x10
	.byte	0xc
	.byte	0xba
	.4byte	0x354
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0xc
	.byte	0xbc
	.byte	0x10
	.4byte	0x354
	.byte	0
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0xc
	.byte	0xbf
	.byte	0x9
	.4byte	0x9c
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0xc
	.byte	0xc8
	.byte	0x9
	.4byte	0x11a
	.byte	0x8
	.uleb128 0xa
	.string	"len"
	.byte	0xc
	.byte	0xcb
	.byte	0x9
	.4byte	0x11a
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0xc
	.byte	0xd0
	.byte	0x8
	.4byte	0xfd
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0xc
	.byte	0xd3
	.byte	0x8
	.4byte	0xfd
	.byte	0xd
	.uleb128 0xa
	.string	"ref"
	.byte	0xc
	.byte	0xda
	.byte	0x8
	.4byte	0xfd
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0xc
	.byte	0xdd
	.byte	0x8
	.4byte	0xfd
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x2df
	.uleb128 0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x45
	.byte	0xd
	.byte	0x34
	.4byte	0x3c7
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF84
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF85
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF86
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF88
	.byte	0xd
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0xd
	.byte	0x38
	.byte	0x3
	.4byte	0x359
	.uleb128 0x19
	.4byte	.LASF93
	.4byte	0x45
	.byte	0xe
	.byte	0x71
	.4byte	0x3fb
	.uleb128 0x4
	.4byte	.LASF94
	.byte	0
	.uleb128 0x4
	.4byte	.LASF95
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF96
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.4byte	.LASF98
	.4byte	0x45
	.byte	0xe
	.byte	0x9f
	.4byte	0x417
	.uleb128 0x4
	.4byte	.LASF99
	.byte	0
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x41c
	.uleb128 0x2a
	.4byte	.LASF101
	.byte	0x54
	.byte	0xe
	.2byte	0x10d
	.4byte	0x541
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0xe
	.2byte	0x110
	.byte	0x11
	.4byte	0x417
	.byte	0
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0xe
	.2byte	0x115
	.byte	0xd
	.4byte	0x197
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0xe
	.2byte	0x116
	.byte	0xd
	.4byte	0x197
	.byte	0x8
	.uleb128 0x15
	.string	"gw"
	.byte	0xe
	.2byte	0x117
	.byte	0xd
	.4byte	0x197
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xe
	.2byte	0x129
	.byte	0x12
	.4byte	0x546
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0xe
	.2byte	0x12f
	.byte	0x13
	.4byte	0x56b
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0xe
	.2byte	0x134
	.byte	0x17
	.4byte	0x59a
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0xe
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x5bf
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0xe
	.2byte	0x144
	.byte	0x1c
	.4byte	0x5bf
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0xe
	.2byte	0x14c
	.byte	0x9
	.4byte	0x9c
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0xe
	.2byte	0x14e
	.byte	0x9
	.4byte	0x229
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0xe
	.2byte	0x152
	.byte	0xf
	.4byte	0xaa
	.byte	0x38
	.uleb128 0x15
	.string	"mtu"
	.byte	0xe
	.2byte	0x158
	.byte	0x9
	.4byte	0x11a
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xe
	.2byte	0x15e
	.byte	0x8
	.4byte	0x605
	.byte	0x3e
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xe
	.2byte	0x160
	.byte	0x8
	.4byte	0xfd
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xe
	.2byte	0x162
	.byte	0x8
	.4byte	0xfd
	.byte	0x45
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0xe
	.2byte	0x164
	.byte	0x8
	.4byte	0x615
	.byte	0x46
	.uleb128 0x15
	.string	"num"
	.byte	0xe
	.2byte	0x167
	.byte	0x8
	.4byte	0xfd
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0xe
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x5db
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0xe
	.2byte	0x185
	.byte	0xf
	.4byte	0x62a
	.byte	0x50
	.byte	0
	.uleb128 0x1a
	.4byte	0x41c
	.uleb128 0x6
	.4byte	.LASF117
	.byte	0xe
	.byte	0xb5
	.byte	0x11
	.4byte	0x552
	.uleb128 0x7
	.4byte	0x557
	.uleb128 0x16
	.4byte	0x21d
	.4byte	0x56b
	.uleb128 0x1
	.4byte	0x354
	.uleb128 0x1
	.4byte	0x417
	.byte	0
	.uleb128 0x6
	.4byte	.LASF118
	.byte	0xe
	.byte	0xc0
	.byte	0x11
	.4byte	0x577
	.uleb128 0x7
	.4byte	0x57c
	.uleb128 0x16
	.4byte	0x21d
	.4byte	0x595
	.uleb128 0x1
	.4byte	0x417
	.uleb128 0x1
	.4byte	0x354
	.uleb128 0x1
	.4byte	0x595
	.byte	0
	.uleb128 0x7
	.4byte	0x170
	.uleb128 0x6
	.4byte	.LASF119
	.byte	0xe
	.byte	0xd7
	.byte	0x11
	.4byte	0x5a6
	.uleb128 0x7
	.4byte	0x5ab
	.uleb128 0x16
	.4byte	0x21d
	.4byte	0x5bf
	.uleb128 0x1
	.4byte	0x417
	.uleb128 0x1
	.4byte	0x354
	.byte	0
	.uleb128 0x6
	.4byte	.LASF120
	.byte	0xe
	.byte	0xd9
	.byte	0x10
	.4byte	0x5cb
	.uleb128 0x7
	.4byte	0x5d0
	.uleb128 0x1e
	.4byte	0x5db
	.uleb128 0x1
	.4byte	0x417
	.byte	0
	.uleb128 0x6
	.4byte	.LASF121
	.byte	0xe
	.byte	0xdc
	.byte	0x11
	.4byte	0x5e7
	.uleb128 0x7
	.4byte	0x5ec
	.uleb128 0x16
	.4byte	0x21d
	.4byte	0x605
	.uleb128 0x1
	.4byte	0x417
	.uleb128 0x1
	.4byte	0x595
	.uleb128 0x1
	.4byte	0x3fb
	.byte	0
	.uleb128 0x23
	.4byte	0xfd
	.4byte	0x615
	.uleb128 0x24
	.4byte	0x76
	.byte	0x5
	.byte	0
	.uleb128 0x23
	.4byte	0x9e
	.4byte	0x625
	.uleb128 0x24
	.4byte	0x76
	.byte	0x1
	.byte	0
	.uleb128 0x31
	.string	"acd"
	.uleb128 0x7
	.4byte	0x625
	.uleb128 0x7
	.4byte	0x1a4
	.uleb128 0xf
	.4byte	.LASF123
	.byte	0x14
	.byte	0xf
	.byte	0x3c
	.4byte	0x68d
	.uleb128 0xa
	.string	"p"
	.byte	0xf
	.byte	0x3d
	.byte	0x10
	.4byte	0x354
	.byte	0
	.uleb128 0xa
	.string	"ptr"
	.byte	0xf
	.byte	0x3d
	.byte	0x14
	.4byte	0x354
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0xf
	.byte	0x3e
	.byte	0xd
	.4byte	0x197
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0xf
	.byte	0x3f
	.byte	0x9
	.4byte	0x11a
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0xf
	.byte	0x41
	.byte	0x8
	.4byte	0xfd
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0xf
	.byte	0x42
	.byte	0x9
	.4byte	0x11a
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.4byte	.LASF126
	.4byte	0x45
	.byte	0x10
	.byte	0x71
	.4byte	0x6c1
	.uleb128 0x4
	.4byte	.LASF127
	.byte	0
	.uleb128 0x4
	.4byte	.LASF128
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF129
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF130
	.byte	0x21
	.uleb128 0x4
	.4byte	.LASF131
	.byte	0x22
	.uleb128 0x4
	.4byte	.LASF132
	.byte	0x40
	.byte	0
	.uleb128 0x19
	.4byte	.LASF133
	.4byte	0x45
	.byte	0x10
	.byte	0x93
	.4byte	0x6ef
	.uleb128 0x4
	.4byte	.LASF134
	.byte	0
	.uleb128 0x4
	.4byte	.LASF135
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF136
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF137
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF138
	.byte	0x4
	.byte	0
	.uleb128 0x19
	.4byte	.LASF139
	.4byte	0x45
	.byte	0x10
	.byte	0xb5
	.4byte	0x71d
	.uleb128 0x4
	.4byte	.LASF140
	.byte	0
	.uleb128 0x4
	.4byte	.LASF141
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF142
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF143
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF144
	.byte	0x4
	.byte	0
	.uleb128 0x19
	.4byte	.LASF145
	.4byte	0x45
	.byte	0x10
	.byte	0xbf
	.4byte	0x739
	.uleb128 0x4
	.4byte	.LASF146
	.byte	0
	.uleb128 0x4
	.4byte	.LASF147
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF148
	.byte	0x10
	.byte	0xd7
	.byte	0x11
	.4byte	0x745
	.uleb128 0x7
	.4byte	0x74a
	.uleb128 0x1e
	.4byte	0x75f
	.uleb128 0x1
	.4byte	0x75f
	.uleb128 0x1
	.4byte	0x6ef
	.uleb128 0x1
	.4byte	0x11a
	.byte	0
	.uleb128 0x7
	.4byte	0x764
	.uleb128 0xf
	.4byte	.LASF149
	.byte	0x30
	.byte	0x10
	.byte	0xda
	.4byte	0x81f
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0x10
	.byte	0xdc
	.byte	0x15
	.4byte	0x68d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0x10
	.byte	0xde
	.byte	0x16
	.4byte	0x6c1
	.byte	0x1
	.uleb128 0xa
	.string	"pcb"
	.byte	0x10
	.byte	0xe5
	.byte	0x5
	.4byte	0x81f
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0x10
	.byte	0xe7
	.byte	0x9
	.4byte	0x21d
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF152
	.byte	0x10
	.byte	0xea
	.byte	0xd
	.4byte	0x25b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF153
	.byte	0x10
	.byte	0xee
	.byte	0xe
	.4byte	0x267
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF154
	.byte	0x10
	.byte	0xf2
	.byte	0xe
	.4byte	0x267
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF155
	.byte	0x10
	.byte	0xfc
	.byte	0x5
	.4byte	0xda0
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0x10
	.2byte	0x100
	.byte	0x9
	.4byte	0x13e
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF157
	.byte	0x10
	.2byte	0x105
	.byte	0x9
	.4byte	0x132
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x10
	.2byte	0x115
	.byte	0x8
	.4byte	0xfd
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF158
	.byte	0x10
	.2byte	0x11a
	.byte	0x13
	.4byte	0xdf5
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0x10
	.2byte	0x11d
	.byte	0x14
	.4byte	0x739
	.byte	0x2c
	.byte	0
	.uleb128 0x25
	.byte	0x4
	.byte	0x10
	.byte	0xe0
	.4byte	0x857
	.uleb128 0x10
	.string	"ip"
	.byte	0x10
	.byte	0xe1
	.byte	0x14
	.4byte	0x8b2
	.uleb128 0x10
	.string	"tcp"
	.byte	0x10
	.byte	0xe2
	.byte	0x15
	.4byte	0xc0b
	.uleb128 0x10
	.string	"udp"
	.byte	0x10
	.byte	0xe3
	.byte	0x15
	.4byte	0xce0
	.uleb128 0x10
	.string	"raw"
	.byte	0x10
	.byte	0xe4
	.byte	0x15
	.4byte	0xd9b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF160
	.byte	0xc
	.byte	0x11
	.byte	0x5b
	.4byte	0x8b2
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0x11
	.byte	0x5d
	.byte	0xd
	.4byte	0x197
	.byte	0
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0x11
	.byte	0x5d
	.byte	0x21
	.4byte	0x197
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x11
	.byte	0x5d
	.byte	0x31
	.4byte	0xfd
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF164
	.byte	0x11
	.byte	0x5d
	.byte	0x41
	.4byte	0xfd
	.byte	0x9
	.uleb128 0xa
	.string	"tos"
	.byte	0x11
	.byte	0x5d
	.byte	0x52
	.4byte	0xfd
	.byte	0xa
	.uleb128 0xa
	.string	"ttl"
	.byte	0x11
	.byte	0x5d
	.byte	0x5c
	.4byte	0xfd
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	0x857
	.uleb128 0xf
	.4byte	.LASF165
	.byte	0xa4
	.byte	0x12
	.byte	0xf2
	.4byte	0xc0b
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0x12
	.byte	0xf4
	.byte	0xd
	.4byte	0x197
	.byte	0
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0x12
	.byte	0xf4
	.byte	0x21
	.4byte	0x197
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x12
	.byte	0xf4
	.byte	0x31
	.4byte	0xfd
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF164
	.byte	0x12
	.byte	0xf4
	.byte	0x41
	.4byte	0xfd
	.byte	0x9
	.uleb128 0xa
	.string	"tos"
	.byte	0x12
	.byte	0xf4
	.byte	0x52
	.4byte	0xfd
	.byte	0xa
	.uleb128 0xa
	.string	"ttl"
	.byte	0x12
	.byte	0xf4
	.byte	0x5c
	.4byte	0xfd
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x12
	.byte	0xf6
	.byte	0x13
	.4byte	0xc0b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF155
	.byte	0x12
	.byte	0xf6
	.byte	0x1f
	.4byte	0x9c
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0x12
	.byte	0xf6
	.byte	0x3c
	.4byte	0x1190
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF166
	.byte	0x12
	.byte	0xf6
	.byte	0x48
	.4byte	0xfd
	.byte	0x15
	.uleb128 0x2
	.4byte	.LASF167
	.byte	0x12
	.byte	0xf6
	.byte	0x54
	.4byte	0x11a
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF168
	.byte	0x12
	.byte	0xf9
	.byte	0x9
	.4byte	0x11a
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x12
	.byte	0xfb
	.byte	0xe
	.4byte	0x1365
	.byte	0x1a
	.uleb128 0x3
	.4byte	.LASF169
	.byte	0x12
	.2byte	0x116
	.byte	0x8
	.4byte	0xfd
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF170
	.byte	0x12
	.2byte	0x116
	.byte	0x11
	.4byte	0xfd
	.byte	0x1d
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0x12
	.2byte	0x117
	.byte	0x8
	.4byte	0xfd
	.byte	0x1e
	.uleb128 0x15
	.string	"tmr"
	.byte	0x12
	.2byte	0x118
	.byte	0x9
	.4byte	0x132
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF172
	.byte	0x12
	.2byte	0x11b
	.byte	0x9
	.4byte	0x132
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF173
	.byte	0x12
	.2byte	0x11c
	.byte	0x11
	.4byte	0x1184
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF174
	.byte	0x12
	.2byte	0x11d
	.byte	0x11
	.4byte	0x1184
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF175
	.byte	0x12
	.2byte	0x11e
	.byte	0x9
	.4byte	0x132
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF176
	.byte	0x12
	.2byte	0x127
	.byte	0x9
	.4byte	0x126
	.byte	0x30
	.uleb128 0x15
	.string	"mss"
	.byte	0x12
	.2byte	0x129
	.byte	0x9
	.4byte	0x11a
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0x12
	.2byte	0x12c
	.byte	0x9
	.4byte	0x132
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0x12
	.2byte	0x12d
	.byte	0x9
	.4byte	0x132
	.byte	0x38
	.uleb128 0x15
	.string	"sa"
	.byte	0x12
	.2byte	0x12e
	.byte	0x9
	.4byte	0x126
	.byte	0x3c
	.uleb128 0x15
	.string	"sv"
	.byte	0x12
	.2byte	0x12e
	.byte	0xd
	.4byte	0x126
	.byte	0x3e
	.uleb128 0x15
	.string	"rto"
	.byte	0x12
	.2byte	0x130
	.byte	0x9
	.4byte	0x126
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF179
	.byte	0x12
	.2byte	0x131
	.byte	0x8
	.4byte	0xfd
	.byte	0x42
	.uleb128 0x3
	.4byte	.LASF180
	.byte	0x12
	.2byte	0x134
	.byte	0x8
	.4byte	0xfd
	.byte	0x43
	.uleb128 0x3
	.4byte	.LASF181
	.byte	0x12
	.2byte	0x135
	.byte	0x9
	.4byte	0x132
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF182
	.byte	0x12
	.2byte	0x138
	.byte	0x11
	.4byte	0x1184
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF183
	.byte	0x12
	.2byte	0x139
	.byte	0x11
	.4byte	0x1184
	.byte	0x4a
	.uleb128 0x3
	.4byte	.LASF184
	.byte	0x12
	.2byte	0x13c
	.byte	0x9
	.4byte	0x132
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF185
	.byte	0x12
	.2byte	0x13f
	.byte	0x9
	.4byte	0x132
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF186
	.byte	0x12
	.2byte	0x140
	.byte	0x9
	.4byte	0x132
	.byte	0x54
	.uleb128 0x3
	.4byte	.LASF187
	.byte	0x12
	.2byte	0x140
	.byte	0x12
	.4byte	0x132
	.byte	0x58
	.uleb128 0x3
	.4byte	.LASF188
	.byte	0x12
	.2byte	0x142
	.byte	0x9
	.4byte	0x132
	.byte	0x5c
	.uleb128 0x3
	.4byte	.LASF189
	.byte	0x12
	.2byte	0x143
	.byte	0x11
	.4byte	0x1184
	.byte	0x60
	.uleb128 0x3
	.4byte	.LASF190
	.byte	0x12
	.2byte	0x144
	.byte	0x11
	.4byte	0x1184
	.byte	0x62
	.uleb128 0x3
	.4byte	.LASF191
	.byte	0x12
	.2byte	0x146
	.byte	0x11
	.4byte	0x1184
	.byte	0x64
	.uleb128 0x3
	.4byte	.LASF192
	.byte	0x12
	.2byte	0x148
	.byte	0x9
	.4byte	0x11a
	.byte	0x66
	.uleb128 0x3
	.4byte	.LASF193
	.byte	0x12
	.2byte	0x14c
	.byte	0x9
	.4byte	0x11a
	.byte	0x68
	.uleb128 0x3
	.4byte	.LASF194
	.byte	0x12
	.2byte	0x14f
	.byte	0x11
	.4byte	0x1184
	.byte	0x6a
	.uleb128 0x3
	.4byte	.LASF195
	.byte	0x12
	.2byte	0x152
	.byte	0x13
	.4byte	0x1376
	.byte	0x6c
	.uleb128 0x3
	.4byte	.LASF196
	.byte	0x12
	.2byte	0x153
	.byte	0x13
	.4byte	0x1376
	.byte	0x70
	.uleb128 0x3
	.4byte	.LASF197
	.byte	0x12
	.2byte	0x155
	.byte	0x13
	.4byte	0x1376
	.byte	0x74
	.uleb128 0x3
	.4byte	.LASF198
	.byte	0x12
	.2byte	0x158
	.byte	0x10
	.4byte	0x354
	.byte	0x78
	.uleb128 0x3
	.4byte	.LASF199
	.byte	0x12
	.2byte	0x15b
	.byte	0x1a
	.4byte	0x12b7
	.byte	0x7c
	.uleb128 0x3
	.4byte	.LASF200
	.byte	0x12
	.2byte	0x160
	.byte	0xf
	.4byte	0x123b
	.byte	0x80
	.uleb128 0x3
	.4byte	.LASF201
	.byte	0x12
	.2byte	0x162
	.byte	0xf
	.4byte	0x120c
	.byte	0x84
	.uleb128 0x3
	.4byte	.LASF202
	.byte	0x12
	.2byte	0x164
	.byte	0x14
	.4byte	0x12ab
	.byte	0x88
	.uleb128 0x3
	.4byte	.LASF203
	.byte	0x12
	.2byte	0x166
	.byte	0xf
	.4byte	0x1265
	.byte	0x8c
	.uleb128 0x3
	.4byte	.LASF204
	.byte	0x12
	.2byte	0x168
	.byte	0xe
	.4byte	0x128a
	.byte	0x90
	.uleb128 0x3
	.4byte	.LASF205
	.byte	0x12
	.2byte	0x171
	.byte	0x9
	.4byte	0x132
	.byte	0x94
	.uleb128 0x3
	.4byte	.LASF206
	.byte	0x12
	.2byte	0x173
	.byte	0x9
	.4byte	0x132
	.byte	0x98
	.uleb128 0x3
	.4byte	.LASF207
	.byte	0x12
	.2byte	0x174
	.byte	0x9
	.4byte	0x132
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF208
	.byte	0x12
	.2byte	0x178
	.byte	0x8
	.4byte	0xfd
	.byte	0xa0
	.uleb128 0x3
	.4byte	.LASF209
	.byte	0x12
	.2byte	0x17a
	.byte	0x8
	.4byte	0xfd
	.byte	0xa1
	.uleb128 0x3
	.4byte	.LASF210
	.byte	0x12
	.2byte	0x17c
	.byte	0x8
	.4byte	0xfd
	.byte	0xa2
	.uleb128 0x3
	.4byte	.LASF211
	.byte	0x12
	.2byte	0x17f
	.byte	0x8
	.4byte	0xfd
	.byte	0xa3
	.byte	0
	.uleb128 0x7
	.4byte	0x8b7
	.uleb128 0xf
	.4byte	.LASF212
	.byte	0x28
	.byte	0x13
	.byte	0x51
	.4byte	0xce0
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0x13
	.byte	0x53
	.byte	0xd
	.4byte	0x197
	.byte	0
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0x13
	.byte	0x53
	.byte	0x21
	.4byte	0x197
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x13
	.byte	0x53
	.byte	0x31
	.4byte	0xfd
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF164
	.byte	0x13
	.byte	0x53
	.byte	0x41
	.4byte	0xfd
	.byte	0x9
	.uleb128 0xa
	.string	"tos"
	.byte	0x13
	.byte	0x53
	.byte	0x52
	.4byte	0xfd
	.byte	0xa
	.uleb128 0xa
	.string	"ttl"
	.byte	0x13
	.byte	0x53
	.byte	0x5c
	.4byte	0xfd
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x13
	.byte	0x57
	.byte	0x13
	.4byte	0xce0
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x13
	.byte	0x59
	.byte	0x8
	.4byte	0xfd
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF167
	.byte	0x13
	.byte	0x5b
	.byte	0x9
	.4byte	0x11a
	.byte	0x12
	.uleb128 0x2
	.4byte	.LASF168
	.byte	0x13
	.byte	0x5b
	.byte	0x15
	.4byte	0x11a
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF213
	.byte	0x13
	.byte	0x60
	.byte	0xe
	.4byte	0x164
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF214
	.byte	0x13
	.byte	0x63
	.byte	0x8
	.4byte	0xfd
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF215
	.byte	0x13
	.byte	0x65
	.byte	0x8
	.4byte	0xfd
	.byte	0x1d
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x13
	.byte	0x6e
	.byte	0xf
	.4byte	0x1154
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF216
	.byte	0x13
	.byte	0x70
	.byte	0x9
	.4byte	0x9c
	.byte	0x24
	.byte	0
	.uleb128 0x7
	.4byte	0xc10
	.uleb128 0xf
	.4byte	.LASF217
	.byte	0x1c
	.byte	0x14
	.byte	0x4b
	.4byte	0xd9b
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0x14
	.byte	0x4d
	.byte	0xd
	.4byte	0x197
	.byte	0
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0x14
	.byte	0x4d
	.byte	0x21
	.4byte	0x197
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x14
	.byte	0x4d
	.byte	0x31
	.4byte	0xfd
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF164
	.byte	0x14
	.byte	0x4d
	.byte	0x41
	.4byte	0xfd
	.byte	0x9
	.uleb128 0xa
	.string	"tos"
	.byte	0x14
	.byte	0x4d
	.byte	0x52
	.4byte	0xfd
	.byte	0xa
	.uleb128 0xa
	.string	"ttl"
	.byte	0x14
	.byte	0x4d
	.byte	0x5c
	.4byte	0xfd
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x14
	.byte	0x4f
	.byte	0x13
	.4byte	0xd9b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF218
	.byte	0x14
	.byte	0x51
	.byte	0x8
	.4byte	0xfd
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x14
	.byte	0x52
	.byte	0x8
	.4byte	0xfd
	.byte	0x11
	.uleb128 0x2
	.4byte	.LASF214
	.byte	0x14
	.byte	0x56
	.byte	0x8
	.4byte	0xfd
	.byte	0x12
	.uleb128 0x2
	.4byte	.LASF215
	.byte	0x14
	.byte	0x58
	.byte	0x8
	.4byte	0xfd
	.byte	0x13
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x14
	.byte	0x5c
	.byte	0xf
	.4byte	0x137b
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF216
	.byte	0x14
	.byte	0x5e
	.byte	0x9
	.4byte	0x9c
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0xce5
	.uleb128 0x25
	.byte	0x4
	.byte	0x10
	.byte	0xf9
	.4byte	0xdc1
	.uleb128 0x32
	.4byte	.LASF219
	.byte	0x10
	.byte	0xfa
	.byte	0x9
	.4byte	0x37
	.uleb128 0x10
	.string	"ptr"
	.byte	0x10
	.byte	0xfb
	.byte	0xb
	.4byte	0x9c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF220
	.byte	0x24
	.byte	0x15
	.byte	0x4f
	.4byte	0xdf5
	.uleb128 0x2
	.4byte	.LASF221
	.byte	0x15
	.byte	0x52
	.byte	0x13
	.4byte	0x75f
	.byte	0
	.uleb128 0xa
	.string	"err"
	.byte	0x15
	.byte	0x54
	.byte	0x9
	.4byte	0x21d
	.byte	0x4
	.uleb128 0xa
	.string	"msg"
	.byte	0x15
	.byte	0x97
	.byte	0x5
	.4byte	0xf86
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	0xdc1
	.uleb128 0x2a
	.4byte	.LASF222
	.byte	0x8
	.byte	0x10
	.2byte	0x125
	.4byte	0xe24
	.uleb128 0x15
	.string	"ptr"
	.byte	0x10
	.2byte	0x127
	.byte	0xf
	.4byte	0xaf
	.byte	0
	.uleb128 0x15
	.string	"len"
	.byte	0x10
	.2byte	0x129
	.byte	0xa
	.4byte	0x7d
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.4byte	0xdfa
	.uleb128 0x7
	.4byte	0x25b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x5a
	.4byte	0xe43
	.uleb128 0x2
	.4byte	.LASF223
	.byte	0x15
	.byte	0x5b
	.byte	0xc
	.4byte	0xfd
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x8
	.byte	0x5e
	.4byte	0xe72
	.uleb128 0x2
	.4byte	.LASF224
	.byte	0x15
	.byte	0x5f
	.byte	0x19
	.4byte	0x62f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0x15
	.byte	0x60
	.byte	0xd
	.4byte	0x11a
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x15
	.byte	0x61
	.byte	0xc
	.4byte	0xfd
	.byte	0x6
	.byte	0
	.uleb128 0x1b
	.byte	0xc
	.byte	0x64
	.4byte	0xea1
	.uleb128 0x2
	.4byte	.LASF224
	.byte	0x15
	.byte	0x65
	.byte	0x12
	.4byte	0xea1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0x15
	.byte	0x66
	.byte	0xe
	.4byte	0xea6
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF225
	.byte	0x15
	.byte	0x67
	.byte	0xc
	.4byte	0xfd
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	0x197
	.uleb128 0x7
	.4byte	0x11a
	.uleb128 0x1b
	.byte	0x1c
	.byte	0x6a
	.4byte	0xf0e
	.uleb128 0x2
	.4byte	.LASF226
	.byte	0x15
	.byte	0x6c
	.byte	0x1f
	.4byte	0xf0e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF227
	.byte	0x15
	.byte	0x6e
	.byte	0xd
	.4byte	0x11a
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF228
	.byte	0x15
	.byte	0x70
	.byte	0xe
	.4byte	0x7d
	.byte	0x8
	.uleb128 0xa
	.string	"len"
	.byte	0x15
	.byte	0x72
	.byte	0xe
	.4byte	0x7d
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF229
	.byte	0x15
	.byte	0x74
	.byte	0xe
	.4byte	0x7d
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF230
	.byte	0x15
	.byte	0x75
	.byte	0xc
	.4byte	0xfd
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF231
	.byte	0x15
	.byte	0x77
	.byte	0xd
	.4byte	0x132
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0xe24
	.uleb128 0x1b
	.byte	0x4
	.byte	0x7b
	.4byte	0xf28
	.uleb128 0xa
	.string	"len"
	.byte	0x15
	.byte	0x7c
	.byte	0xe
	.4byte	0x7d
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x8
	.byte	0x80
	.4byte	0xf4a
	.uleb128 0x2
	.4byte	.LASF232
	.byte	0x15
	.byte	0x81
	.byte	0xc
	.4byte	0xfd
	.byte	0
	.uleb128 0x2
	.4byte	.LASF231
	.byte	0x15
	.byte	0x83
	.byte	0xd
	.4byte	0x132
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.byte	0xc
	.byte	0x8b
	.4byte	0xf86
	.uleb128 0x2
	.4byte	.LASF233
	.byte	0x15
	.byte	0x8c
	.byte	0x19
	.4byte	0x62f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF234
	.byte	0x15
	.byte	0x8d
	.byte	0x19
	.4byte	0x62f
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x15
	.byte	0x8e
	.byte	0xc
	.4byte	0xfd
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF235
	.byte	0x15
	.byte	0x8f
	.byte	0x19
	.4byte	0x71d
	.byte	0x9
	.byte	0
	.uleb128 0x25
	.byte	0x1c
	.byte	0x15
	.byte	0x56
	.4byte	0xfe3
	.uleb128 0x10
	.string	"b"
	.byte	0x15
	.byte	0x58
	.byte	0x14
	.4byte	0xfe3
	.uleb128 0x10
	.string	"n"
	.byte	0x15
	.byte	0x5c
	.byte	0x7
	.4byte	0xe2e
	.uleb128 0x10
	.string	"bc"
	.byte	0x15
	.byte	0x62
	.byte	0x7
	.4byte	0xe43
	.uleb128 0x10
	.string	"ad"
	.byte	0x15
	.byte	0x68
	.byte	0x7
	.4byte	0xe72
	.uleb128 0x10
	.string	"w"
	.byte	0x15
	.byte	0x79
	.byte	0x7
	.4byte	0xeab
	.uleb128 0x10
	.string	"r"
	.byte	0x15
	.byte	0x7d
	.byte	0x7
	.4byte	0xf13
	.uleb128 0x10
	.string	"sd"
	.byte	0x15
	.byte	0x87
	.byte	0x7
	.4byte	0xf28
	.uleb128 0x10
	.string	"jl"
	.byte	0x15
	.byte	0x90
	.byte	0x7
	.4byte	0xf4a
	.byte	0
	.uleb128 0x7
	.4byte	0x634
	.uleb128 0xf
	.4byte	.LASF236
	.byte	0x10
	.byte	0x15
	.byte	0xa9
	.4byte	0x1029
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x15
	.byte	0xae
	.byte	0xf
	.4byte	0xaa
	.byte	0
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x15
	.byte	0xb1
	.byte	0xe
	.4byte	0xea1
	.byte	0x4
	.uleb128 0xa
	.string	"sem"
	.byte	0x15
	.byte	0xb8
	.byte	0xe
	.4byte	0xe29
	.byte	0x8
	.uleb128 0xa
	.string	"err"
	.byte	0x15
	.byte	0xba
	.byte	0xa
	.4byte	0x1029
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.4byte	0x21d
	.uleb128 0xf
	.4byte	.LASF237
	.byte	0x4
	.byte	0x16
	.byte	0x35
	.4byte	0x1048
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x16
	.byte	0x36
	.byte	0x9
	.4byte	0x132
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF238
	.byte	0x16
	.byte	0x3d
	.byte	0x20
	.4byte	0x102e
	.uleb128 0xf
	.4byte	.LASF239
	.byte	0x14
	.byte	0x16
	.byte	0x49
	.4byte	0x10e3
	.uleb128 0x2
	.4byte	.LASF240
	.byte	0x16
	.byte	0x4b
	.byte	0x8
	.4byte	0xfd
	.byte	0
	.uleb128 0x2
	.4byte	.LASF241
	.byte	0x16
	.byte	0x4d
	.byte	0x8
	.4byte	0xfd
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF242
	.byte	0x16
	.byte	0x4f
	.byte	0x9
	.4byte	0x11a
	.byte	0x2
	.uleb128 0xa
	.string	"_id"
	.byte	0x16
	.byte	0x51
	.byte	0x9
	.4byte	0x11a
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF243
	.byte	0x16
	.byte	0x53
	.byte	0x9
	.4byte	0x11a
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF244
	.byte	0x16
	.byte	0x59
	.byte	0x8
	.4byte	0xfd
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF245
	.byte	0x16
	.byte	0x5b
	.byte	0x8
	.4byte	0xfd
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF246
	.byte	0x16
	.byte	0x5d
	.byte	0x9
	.4byte	0x11a
	.byte	0xa
	.uleb128 0xa
	.string	"src"
	.byte	0x16
	.byte	0x5f
	.byte	0x10
	.4byte	0x1048
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF247
	.byte	0x16
	.byte	0x60
	.byte	0x10
	.4byte	0x1048
	.byte	0x10
	.byte	0
	.uleb128 0x1a
	.4byte	0x1054
	.uleb128 0xf
	.4byte	.LASF248
	.byte	0x18
	.byte	0x11
	.byte	0x76
	.4byte	0x1143
	.uleb128 0x2
	.4byte	.LASF249
	.byte	0x11
	.byte	0x79
	.byte	0x11
	.4byte	0x417
	.byte	0
	.uleb128 0x2
	.4byte	.LASF250
	.byte	0x11
	.byte	0x7b
	.byte	0x11
	.4byte	0x417
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF251
	.byte	0x11
	.byte	0x7e
	.byte	0x18
	.4byte	0x1143
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF252
	.byte	0x11
	.byte	0x85
	.byte	0x9
	.4byte	0x11a
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF253
	.byte	0x11
	.byte	0x87
	.byte	0xd
	.4byte	0x197
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF254
	.byte	0x11
	.byte	0x89
	.byte	0xd
	.4byte	0x197
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x10e3
	.uleb128 0x33
	.4byte	.LASF410
	.byte	0x11
	.byte	0x8b
	.byte	0x1a
	.4byte	0x10e8
	.uleb128 0x6
	.4byte	.LASF255
	.byte	0x13
	.byte	0x4d
	.byte	0x10
	.4byte	0x1160
	.uleb128 0x7
	.4byte	0x1165
	.uleb128 0x1e
	.4byte	0x1184
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0xce0
	.uleb128 0x1
	.4byte	0x354
	.uleb128 0x1
	.4byte	0x62f
	.uleb128 0x1
	.4byte	0x11a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF256
	.byte	0x17
	.byte	0x35
	.byte	0xf
	.4byte	0x11a
	.uleb128 0x19
	.4byte	.LASF257
	.4byte	0x45
	.byte	0x17
	.byte	0x38
	.4byte	0x11e2
	.uleb128 0x4
	.4byte	.LASF258
	.byte	0
	.uleb128 0x4
	.4byte	.LASF259
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF260
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF261
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF262
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF264
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF265
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF266
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF267
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF268
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.4byte	.LASF269
	.byte	0x12
	.byte	0x46
	.byte	0x11
	.4byte	0x11ee
	.uleb128 0x7
	.4byte	0x11f3
	.uleb128 0x16
	.4byte	0x21d
	.4byte	0x120c
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0xc0b
	.uleb128 0x1
	.4byte	0x21d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF270
	.byte	0x12
	.byte	0x52
	.byte	0x11
	.4byte	0x1218
	.uleb128 0x7
	.4byte	0x121d
	.uleb128 0x16
	.4byte	0x21d
	.4byte	0x123b
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0xc0b
	.uleb128 0x1
	.4byte	0x354
	.uleb128 0x1
	.4byte	0x21d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF271
	.byte	0x12
	.byte	0x60
	.byte	0x11
	.4byte	0x1247
	.uleb128 0x7
	.4byte	0x124c
	.uleb128 0x16
	.4byte	0x21d
	.4byte	0x1265
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0xc0b
	.uleb128 0x1
	.4byte	0x11a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF272
	.byte	0x12
	.byte	0x6c
	.byte	0x11
	.4byte	0x1271
	.uleb128 0x7
	.4byte	0x1276
	.uleb128 0x16
	.4byte	0x21d
	.4byte	0x128a
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0xc0b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF273
	.byte	0x12
	.byte	0x78
	.byte	0x10
	.4byte	0x1296
	.uleb128 0x7
	.4byte	0x129b
	.uleb128 0x1e
	.4byte	0x12ab
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0x21d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF274
	.byte	0x12
	.byte	0x86
	.byte	0x11
	.4byte	0x11ee
	.uleb128 0x7
	.4byte	0x12bc
	.uleb128 0xf
	.4byte	.LASF275
	.byte	0x1c
	.byte	0x12
	.byte	0xdf
	.4byte	0x1365
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0x12
	.byte	0xe1
	.byte	0xd
	.4byte	0x197
	.byte	0
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0x12
	.byte	0xe1
	.byte	0x21
	.4byte	0x197
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x12
	.byte	0xe1
	.byte	0x31
	.4byte	0xfd
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF164
	.byte	0x12
	.byte	0xe1
	.byte	0x41
	.4byte	0xfd
	.byte	0x9
	.uleb128 0xa
	.string	"tos"
	.byte	0x12
	.byte	0xe1
	.byte	0x52
	.4byte	0xfd
	.byte	0xa
	.uleb128 0xa
	.string	"ttl"
	.byte	0x12
	.byte	0xe1
	.byte	0x5c
	.4byte	0xfd
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x12
	.byte	0xe3
	.byte	0x1a
	.4byte	0x12b7
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF155
	.byte	0x12
	.byte	0xe3
	.byte	0x26
	.4byte	0x9c
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0x12
	.byte	0xe3
	.byte	0x43
	.4byte	0x1190
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF166
	.byte	0x12
	.byte	0xe3
	.byte	0x4f
	.4byte	0xfd
	.byte	0x15
	.uleb128 0x2
	.4byte	.LASF167
	.byte	0x12
	.byte	0xe3
	.byte	0x5b
	.4byte	0x11a
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF276
	.byte	0x12
	.byte	0xe7
	.byte	0x11
	.4byte	0x11e2
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF277
	.byte	0x12
	.byte	0xce
	.byte	0xf
	.4byte	0x11a
	.uleb128 0x28
	.4byte	.LASF278
	.uleb128 0x7
	.4byte	0x1371
	.uleb128 0x6
	.4byte	.LASF279
	.byte	0x14
	.byte	0x47
	.byte	0x10
	.4byte	0x1387
	.uleb128 0x7
	.4byte	0x138c
	.uleb128 0x16
	.4byte	0xfd
	.4byte	0x13aa
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0xd9b
	.uleb128 0x1
	.4byte	0x354
	.uleb128 0x1
	.4byte	0x62f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF280
	.byte	0x18
	.byte	0x67
	.byte	0x10
	.4byte	0x13b6
	.uleb128 0x7
	.4byte	0x13bb
	.uleb128 0x1e
	.4byte	0x13d0
	.uleb128 0x1
	.4byte	0xaa
	.uleb128 0x1
	.4byte	0x62f
	.uleb128 0x1
	.4byte	0x9c
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF281
	.byte	0x6d
	.4byte	0x109
	.uleb128 0x5
	.byte	0x3
	.4byte	netconn_aborted
	.uleb128 0x1f
	.4byte	.LASF282
	.byte	0x6e
	.4byte	0x109
	.uleb128 0x5
	.byte	0x3
	.4byte	netconn_reset
	.uleb128 0x1f
	.4byte	.LASF283
	.byte	0x6f
	.4byte	0x109
	.uleb128 0x5
	.byte	0x3
	.4byte	netconn_closed
	.uleb128 0xb
	.4byte	.LASF284
	.byte	0x18
	.byte	0x6f
	.byte	0x7
	.4byte	0x21d
	.4byte	0x142a
	.uleb128 0x1
	.4byte	0xaa
	.uleb128 0x1
	.4byte	0xea1
	.uleb128 0x1
	.4byte	0x13aa
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0xfd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF285
	.byte	0x19
	.byte	0x63
	.byte	0x7
	.4byte	0x21d
	.4byte	0x1445
	.uleb128 0x1
	.4byte	0x417
	.uleb128 0x1
	.4byte	0x595
	.byte	0
	.uleb128 0xb
	.4byte	.LASF286
	.byte	0x19
	.byte	0x61
	.byte	0x7
	.4byte	0x21d
	.4byte	0x1460
	.uleb128 0x1
	.4byte	0x417
	.uleb128 0x1
	.4byte	0x595
	.byte	0
	.uleb128 0xb
	.4byte	.LASF287
	.byte	0x19
	.byte	0x62
	.byte	0x7
	.4byte	0x21d
	.4byte	0x147b
	.uleb128 0x1
	.4byte	0x595
	.uleb128 0x1
	.4byte	0x595
	.byte	0
	.uleb128 0xb
	.4byte	.LASF288
	.byte	0x19
	.byte	0x60
	.byte	0x7
	.4byte	0x21d
	.4byte	0x1496
	.uleb128 0x1
	.4byte	0x595
	.uleb128 0x1
	.4byte	0x595
	.byte	0
	.uleb128 0xd
	.4byte	.LASF289
	.byte	0x12
	.2byte	0x1de
	.byte	0x7
	.4byte	0x21d
	.4byte	0x14ad
	.uleb128 0x1
	.4byte	0xc0b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF290
	.byte	0x12
	.2byte	0x1d9
	.byte	0x7
	.4byte	0x21d
	.4byte	0x14d3
	.uleb128 0x1
	.4byte	0xc0b
	.uleb128 0x1
	.4byte	0xaf
	.uleb128 0x1
	.4byte	0x11a
	.uleb128 0x1
	.4byte	0xfd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF291
	.byte	0x13
	.byte	0x91
	.byte	0x7
	.4byte	0x21d
	.4byte	0x1502
	.uleb128 0x1
	.4byte	0xce0
	.uleb128 0x1
	.4byte	0x354
	.uleb128 0x1
	.4byte	0x62f
	.uleb128 0x1
	.4byte	0x11a
	.uleb128 0x1
	.4byte	0xfd
	.uleb128 0x1
	.4byte	0x11a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF292
	.byte	0x13
	.byte	0x94
	.byte	0x7
	.4byte	0x21d
	.4byte	0x1527
	.uleb128 0x1
	.4byte	0xce0
	.uleb128 0x1
	.4byte	0x354
	.uleb128 0x1
	.4byte	0xfd
	.uleb128 0x1
	.4byte	0x11a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF293
	.byte	0x14
	.byte	0x70
	.byte	0x7
	.4byte	0x21d
	.4byte	0x1547
	.uleb128 0x1
	.4byte	0xd9b
	.uleb128 0x1
	.4byte	0x354
	.uleb128 0x1
	.4byte	0x62f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF294
	.byte	0x14
	.byte	0x72
	.byte	0x7
	.4byte	0x21d
	.4byte	0x1562
	.uleb128 0x1
	.4byte	0xd9b
	.uleb128 0x1
	.4byte	0x354
	.byte	0
	.uleb128 0xd
	.4byte	.LASF295
	.byte	0x10
	.2byte	0x171
	.byte	0x7
	.4byte	0x21d
	.4byte	0x1579
	.uleb128 0x1
	.4byte	0x75f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF296
	.byte	0x12
	.2byte	0x1d0
	.byte	0x12
	.4byte	0xc0b
	.4byte	0x159a
	.uleb128 0x1
	.4byte	0xc0b
	.uleb128 0x1
	.4byte	0xfd
	.uleb128 0x1
	.4byte	0x1029
	.byte	0
	.uleb128 0x11
	.4byte	.LASF300
	.byte	0x13
	.byte	0x7f
	.4byte	0x15ab
	.uleb128 0x1
	.4byte	0xce0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF297
	.byte	0x12
	.2byte	0x1cd
	.byte	0x7
	.4byte	0x21d
	.4byte	0x15d1
	.uleb128 0x1
	.4byte	0xc0b
	.uleb128 0x1
	.4byte	0x62f
	.uleb128 0x1
	.4byte	0x11a
	.uleb128 0x1
	.4byte	0x12ab
	.byte	0
	.uleb128 0xb
	.4byte	.LASF298
	.byte	0x13
	.byte	0x7d
	.byte	0x7
	.4byte	0x21d
	.4byte	0x15f1
	.uleb128 0x1
	.4byte	0xce0
	.uleb128 0x1
	.4byte	0x62f
	.uleb128 0x1
	.4byte	0x11a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF299
	.byte	0x14
	.byte	0x6d
	.byte	0x7
	.4byte	0x21d
	.4byte	0x160c
	.uleb128 0x1
	.4byte	0xd9b
	.uleb128 0x1
	.4byte	0x62f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF301
	.byte	0x12
	.2byte	0x1cc
	.4byte	0x1623
	.uleb128 0x1
	.4byte	0xc0b
	.uleb128 0x1
	.4byte	0x1623
	.byte	0
	.uleb128 0x7
	.4byte	0x541
	.uleb128 0x11
	.4byte	.LASF302
	.byte	0x13
	.byte	0x7c
	.4byte	0x163e
	.uleb128 0x1
	.4byte	0xce0
	.uleb128 0x1
	.4byte	0x1623
	.byte	0
	.uleb128 0x11
	.4byte	.LASF303
	.byte	0x14
	.byte	0x6c
	.4byte	0x1654
	.uleb128 0x1
	.4byte	0xd9b
	.uleb128 0x1
	.4byte	0x1623
	.byte	0
	.uleb128 0xd
	.4byte	.LASF304
	.byte	0xe
	.2byte	0x23f
	.byte	0xf
	.4byte	0x417
	.4byte	0x166b
	.uleb128 0x1
	.4byte	0xfd
	.byte	0
	.uleb128 0xd
	.4byte	.LASF305
	.byte	0x12
	.2byte	0x1ca
	.byte	0x7
	.4byte	0x21d
	.4byte	0x168c
	.uleb128 0x1
	.4byte	0xc0b
	.uleb128 0x1
	.4byte	0x62f
	.uleb128 0x1
	.4byte	0x11a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF306
	.byte	0x13
	.byte	0x7a
	.byte	0x7
	.4byte	0x21d
	.4byte	0x16ac
	.uleb128 0x1
	.4byte	0xce0
	.uleb128 0x1
	.4byte	0x62f
	.uleb128 0x1
	.4byte	0x11a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF307
	.byte	0x14
	.byte	0x6b
	.byte	0x7
	.4byte	0x21d
	.4byte	0x16c7
	.uleb128 0x1
	.4byte	0xd9b
	.uleb128 0x1
	.4byte	0x62f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF308
	.byte	0x13
	.byte	0x79
	.4byte	0x16d8
	.uleb128 0x1
	.4byte	0xce0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF309
	.byte	0x14
	.byte	0x6a
	.4byte	0x16e9
	.uleb128 0x1
	.4byte	0xd9b
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF335
	.2byte	0x1cd
	.byte	0x7
	.4byte	0x132
	.uleb128 0xd
	.4byte	.LASF310
	.byte	0x12
	.2byte	0x1d7
	.byte	0x7
	.4byte	0x21d
	.4byte	0x1716
	.uleb128 0x1
	.4byte	0xc0b
	.uleb128 0x1
	.4byte	0x37
	.uleb128 0x1
	.4byte	0x37
	.byte	0
	.uleb128 0xd
	.4byte	.LASF311
	.byte	0x12
	.2byte	0x1d6
	.byte	0x7
	.4byte	0x21d
	.4byte	0x172d
	.uleb128 0x1
	.4byte	0xc0b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF312
	.byte	0x12
	.2byte	0x1a3
	.4byte	0x1744
	.uleb128 0x1
	.4byte	0xc0b
	.uleb128 0x1
	.4byte	0x11e2
	.byte	0
	.uleb128 0x12
	.4byte	.LASF313
	.byte	0x12
	.2byte	0x1d5
	.4byte	0x1756
	.uleb128 0x1
	.4byte	0xc0b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF314
	.byte	0x1a
	.2byte	0x163
	.byte	0x7
	.4byte	0x132
	.4byte	0x1772
	.uleb128 0x1
	.4byte	0x1772
	.uleb128 0x1
	.4byte	0x1777
	.byte	0
	.uleb128 0x7
	.4byte	0x267
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x11
	.4byte	.LASF315
	.byte	0x1a
	.byte	0xf6
	.4byte	0x178d
	.uleb128 0x1
	.4byte	0xe29
	.byte	0
	.uleb128 0x11
	.4byte	.LASF316
	.byte	0x1a
	.byte	0xe1
	.4byte	0x179e
	.uleb128 0x1
	.4byte	0xe29
	.byte	0
	.uleb128 0x11
	.4byte	.LASF317
	.byte	0xd
	.byte	0x95
	.4byte	0x17b4
	.uleb128 0x1
	.4byte	0x3c7
	.uleb128 0x1
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF318
	.byte	0x1a
	.byte	0xc3
	.byte	0x7
	.4byte	0x21d
	.4byte	0x17cf
	.uleb128 0x1
	.4byte	0xe29
	.uleb128 0x1
	.4byte	0xfd
	.byte	0
	.uleb128 0xd
	.4byte	.LASF319
	.byte	0x1a
	.2byte	0x11d
	.byte	0x7
	.4byte	0x21d
	.4byte	0x17eb
	.uleb128 0x1
	.4byte	0x1772
	.uleb128 0x1
	.4byte	0x37
	.byte	0
	.uleb128 0xd
	.4byte	.LASF320
	.byte	0x12
	.2byte	0x19c
	.byte	0x12
	.4byte	0xc0b
	.4byte	0x1802
	.uleb128 0x1
	.4byte	0xfd
	.byte	0
	.uleb128 0x11
	.4byte	.LASF321
	.byte	0x13
	.byte	0x80
	.4byte	0x181d
	.uleb128 0x1
	.4byte	0xce0
	.uleb128 0x1
	.4byte	0x1154
	.uleb128 0x1
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF322
	.byte	0x13
	.byte	0x78
	.byte	0x12
	.4byte	0xce0
	.4byte	0x1833
	.uleb128 0x1
	.4byte	0xfd
	.byte	0
	.uleb128 0x11
	.4byte	.LASF323
	.byte	0x14
	.byte	0x74
	.4byte	0x184e
	.uleb128 0x1
	.4byte	0xd9b
	.uleb128 0x1
	.4byte	0x137b
	.uleb128 0x1
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF324
	.byte	0x14
	.byte	0x69
	.byte	0x12
	.4byte	0xd9b
	.4byte	0x1869
	.uleb128 0x1
	.4byte	0xfd
	.uleb128 0x1
	.4byte	0xfd
	.byte	0
	.uleb128 0x12
	.4byte	.LASF325
	.byte	0x1a
	.2byte	0x185
	.4byte	0x187b
	.uleb128 0x1
	.4byte	0x1772
	.byte	0
	.uleb128 0x12
	.4byte	.LASF326
	.byte	0x1a
	.2byte	0x171
	.4byte	0x188d
	.uleb128 0x1
	.4byte	0x1772
	.byte	0
	.uleb128 0x12
	.4byte	.LASF327
	.byte	0x12
	.2byte	0x1a2
	.4byte	0x18a4
	.uleb128 0x1
	.4byte	0xc0b
	.uleb128 0x1
	.4byte	0x128a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF328
	.byte	0x12
	.2byte	0x1a5
	.4byte	0x18c0
	.uleb128 0x1
	.4byte	0xc0b
	.uleb128 0x1
	.4byte	0x1265
	.uleb128 0x1
	.4byte	0xfd
	.byte	0
	.uleb128 0x12
	.4byte	.LASF329
	.byte	0x12
	.2byte	0x1a1
	.4byte	0x18d7
	.uleb128 0x1
	.4byte	0xc0b
	.uleb128 0x1
	.4byte	0x123b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF330
	.byte	0x12
	.2byte	0x1a0
	.4byte	0x18ee
	.uleb128 0x1
	.4byte	0xc0b
	.uleb128 0x1
	.4byte	0x120c
	.byte	0
	.uleb128 0x12
	.4byte	.LASF331
	.byte	0x12
	.2byte	0x19e
	.4byte	0x1905
	.uleb128 0x1
	.4byte	0xc0b
	.uleb128 0x1
	.4byte	0x9c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF332
	.byte	0x1a
	.byte	0xc9
	.4byte	0x1916
	.uleb128 0x1
	.4byte	0xe29
	.byte	0
	.uleb128 0xb
	.4byte	.LASF333
	.byte	0x1a
	.byte	0xec
	.byte	0x5
	.4byte	0x37
	.4byte	0x192c
	.uleb128 0x1
	.4byte	0xe29
	.byte	0
	.uleb128 0x12
	.4byte	.LASF334
	.byte	0x1a
	.2byte	0x1fc
	.4byte	0x193e
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF336
	.2byte	0x1fb
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x12
	.4byte	.LASF337
	.byte	0x12
	.2byte	0x1c9
	.4byte	0x1961
	.uleb128 0x1
	.4byte	0xc0b
	.uleb128 0x1
	.4byte	0x11a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF338
	.byte	0xf
	.byte	0x4b
	.4byte	0x1972
	.uleb128 0x1
	.4byte	0xfe3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF339
	.byte	0x1a
	.2byte	0x130
	.byte	0x7
	.4byte	0x21d
	.4byte	0x198e
	.uleb128 0x1
	.4byte	0x1772
	.uleb128 0x1
	.4byte	0x9c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF340
	.byte	0xc
	.2byte	0x125
	.byte	0x6
	.4byte	0xfd
	.4byte	0x19a5
	.uleb128 0x1
	.4byte	0x354
	.byte	0
	.uleb128 0xb
	.4byte	.LASF341
	.byte	0xd
	.byte	0x93
	.byte	0x7
	.4byte	0x9c
	.4byte	0x19bb
	.uleb128 0x1
	.4byte	0x3c7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF342
	.byte	0xc
	.2byte	0x132
	.byte	0xe
	.4byte	0x354
	.4byte	0x19dc
	.uleb128 0x1
	.4byte	0x29f
	.uleb128 0x1
	.4byte	0x2d3
	.uleb128 0x1
	.4byte	0x354
	.byte	0
	.uleb128 0xd
	.4byte	.LASF343
	.byte	0x1a
	.2byte	0x17b
	.byte	0x5
	.4byte	0x37
	.4byte	0x19f3
	.uleb128 0x1
	.4byte	0x1772
	.byte	0
	.uleb128 0xe
	.4byte	.LASF345
	.2byte	0x863
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a36
	.uleb128 0x8
	.string	"arg"
	.2byte	0x863
	.byte	0x25
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"msg"
	.2byte	0x865
	.byte	0x17
	.4byte	0x1a36
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF344
	.2byte	0x866
	.byte	0x8
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x7
	.4byte	0xfe8
	.uleb128 0x20
	.4byte	.LASF384
	.2byte	0x849
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a8d
	.uleb128 0x17
	.4byte	.LASF114
	.2byte	0x849
	.byte	0x27
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.4byte	.LASF224
	.2byte	0x849
	.byte	0x3e
	.4byte	0x62f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"arg"
	.2byte	0x849
	.byte	0x4c
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.string	"msg"
	.2byte	0x84b
	.byte	0x17
	.4byte	0x1a36
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF346
	.2byte	0x810
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ad9
	.uleb128 0x8
	.string	"m"
	.2byte	0x810
	.byte	0x2e
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"msg"
	.2byte	0x812
	.byte	0x13
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF101
	.2byte	0x813
	.byte	0x11
	.4byte	0x417
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.4byte	.LASF357
	.2byte	0x83d
	.4byte	.L294
	.byte	0
	.uleb128 0xe
	.4byte	.LASF347
	.2byte	0x7e2
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b0b
	.uleb128 0x8
	.string	"m"
	.2byte	0x7e2
	.byte	0x28
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"msg"
	.2byte	0x7e4
	.byte	0x13
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF348
	.2byte	0x792
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b4c
	.uleb128 0x8
	.string	"m"
	.2byte	0x792
	.byte	0x1d
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"msg"
	.2byte	0x794
	.byte	0x13
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF109
	.2byte	0x797
	.byte	0x16
	.4byte	0x6c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xe
	.4byte	.LASF349
	.2byte	0x74f
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b7e
	.uleb128 0x8
	.string	"m"
	.2byte	0x74f
	.byte	0x1f
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"msg"
	.2byte	0x751
	.byte	0x13
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF350
	.2byte	0x719
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bbf
	.uleb128 0x8
	.string	"m"
	.2byte	0x719
	.byte	0x1d
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"msg"
	.2byte	0x71b
	.byte	0x13
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"err"
	.2byte	0x71d
	.byte	0x9
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF371
	.2byte	0x66c
	.4byte	0x21d
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ccd
	.uleb128 0x17
	.4byte	.LASF221
	.2byte	0x66c
	.byte	0x2b
	.4byte	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.string	"err"
	.2byte	0x66e
	.byte	0x9
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x5
	.4byte	.LASF351
	.2byte	0x66f
	.byte	0xf
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.string	"len"
	.2byte	0x670
	.byte	0x9
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF352
	.2byte	0x670
	.byte	0xe
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x5
	.4byte	.LASF353
	.2byte	0x671
	.byte	0x8
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x5
	.4byte	.LASF354
	.2byte	0x672
	.byte	0xa
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF355
	.2byte	0x673
	.byte	0x8
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF230
	.2byte	0x674
	.byte	0x8
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x5
	.4byte	.LASF356
	.2byte	0x675
	.byte	0x8
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x26
	.4byte	.LASF358
	.2byte	0x6c5
	.4byte	.L230
	.uleb128 0x22
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x1c96
	.uleb128 0x5
	.4byte	.LASF359
	.2byte	0x6d4
	.byte	0xd
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x1cb3
	.uleb128 0x5
	.4byte	.LASF359
	.2byte	0x6e8
	.byte	0xd
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.byte	0
	.uleb128 0x13
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x5
	.4byte	.LASF360
	.2byte	0x6fe
	.byte	0x10
	.4byte	0xe29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF361
	.2byte	0x639
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d31
	.uleb128 0x8
	.string	"m"
	.2byte	0x639
	.byte	0x1c
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"msg"
	.2byte	0x63b
	.byte	0x13
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x5
	.4byte	.LASF362
	.2byte	0x640
	.byte	0xe
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x5
	.4byte	.LASF363
	.2byte	0x642
	.byte	0xf
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF364
	.2byte	0x600
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d72
	.uleb128 0x8
	.string	"m"
	.2byte	0x600
	.byte	0x1c
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"msg"
	.2byte	0x602
	.byte	0x13
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"err"
	.2byte	0x604
	.byte	0x9
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xe
	.4byte	.LASF365
	.2byte	0x5ad
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1de5
	.uleb128 0x8
	.string	"m"
	.2byte	0x5ad
	.byte	0x1e
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"msg"
	.2byte	0x5af
	.byte	0x13
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"err"
	.2byte	0x5b0
	.byte	0x9
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x13
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x5
	.4byte	.LASF366
	.2byte	0x5b5
	.byte	0x19
	.4byte	0xc0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x5
	.4byte	.LASF367
	.2byte	0x5ba
	.byte	0x10
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF368
	.2byte	0x595
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e17
	.uleb128 0x8
	.string	"m"
	.2byte	0x595
	.byte	0x22
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"msg"
	.2byte	0x597
	.byte	0x13
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF369
	.2byte	0x54a
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e6d
	.uleb128 0x8
	.string	"m"
	.2byte	0x54a
	.byte	0x1f
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"msg"
	.2byte	0x54c
	.byte	0x13
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"err"
	.2byte	0x54d
	.byte	0x9
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x34
	.4byte	.LLRL0
	.uleb128 0x5
	.4byte	.LASF370
	.2byte	0x56a
	.byte	0x12
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF372
	.2byte	0x519
	.4byte	0x21d
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ee1
	.uleb128 0x8
	.string	"arg"
	.2byte	0x519
	.byte	0x21
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x519
	.byte	0x36
	.4byte	0xc0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"err"
	.2byte	0x519
	.byte	0x41
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x5
	.4byte	.LASF221
	.2byte	0x51b
	.byte	0x13
	.4byte	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF373
	.2byte	0x51c
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF360
	.2byte	0x51d
	.byte	0xe
	.4byte	0xe29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF374
	.2byte	0x4ec
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f31
	.uleb128 0x8
	.string	"m"
	.2byte	0x4ec
	.byte	0x1f
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF101
	.2byte	0x4ee
	.byte	0x11
	.4byte	0x417
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.string	"msg"
	.2byte	0x4ef
	.byte	0x13
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"err"
	.2byte	0x4f0
	.byte	0x9
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xe
	.4byte	.LASF375
	.2byte	0x4c4
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f72
	.uleb128 0x8
	.string	"m"
	.2byte	0x4c4
	.byte	0x1c
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"msg"
	.2byte	0x4c6
	.byte	0x13
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"err"
	.2byte	0x4c7
	.byte	0x9
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xe
	.4byte	.LASF376
	.2byte	0x45d
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fb3
	.uleb128 0x8
	.string	"m"
	.2byte	0x45d
	.byte	0x1f
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"msg"
	.2byte	0x45f
	.byte	0x13
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF109
	.2byte	0x461
	.byte	0x16
	.4byte	0x6c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF377
	.2byte	0x39c
	.4byte	0x21d
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x207b
	.uleb128 0x17
	.4byte	.LASF221
	.2byte	0x39c
	.byte	0x30
	.4byte	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.string	"err"
	.2byte	0x39e
	.byte	0x9
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x5
	.4byte	.LASF232
	.2byte	0x39f
	.byte	0x8
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x5
	.4byte	.LASF378
	.2byte	0x39f
	.byte	0xe
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x5
	.4byte	.LASF379
	.2byte	0x39f
	.byte	0x17
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -31
	.uleb128 0x5
	.4byte	.LASF380
	.2byte	0x39f
	.byte	0x20
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x5
	.4byte	.LASF381
	.2byte	0x3a0
	.byte	0x8
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x5
	.4byte	.LASF382
	.2byte	0x3a1
	.byte	0x13
	.4byte	0xc0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x2061
	.uleb128 0x5
	.4byte	.LASF383
	.2byte	0x408
	.byte	0xd
	.4byte	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x5
	.4byte	.LASF360
	.2byte	0x426
	.byte	0x10
	.4byte	0xe29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF385
	.2byte	0x33f
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20fe
	.uleb128 0x17
	.4byte	.LASF221
	.2byte	0x33f
	.byte	0x1f
	.4byte	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"mem"
	.2byte	0x341
	.byte	0x9
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x20cb
	.uleb128 0x9
	.string	"err"
	.2byte	0x352
	.byte	0x11
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x13
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x9
	.string	"err"
	.2byte	0x369
	.byte	0xf
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x13
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x5
	.4byte	.LASF386
	.2byte	0x36b
	.byte	0x1b
	.4byte	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF387
	.2byte	0x31e
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2123
	.uleb128 0x17
	.4byte	.LASF221
	.2byte	0x31e
	.byte	0x1e
	.4byte	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.4byte	.LASF406
	.byte	0x1
	.2byte	0x2c4
	.byte	0x1
	.4byte	0x75f
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2193
	.uleb128 0x8
	.string	"t"
	.2byte	0x2c4
	.byte	0x21
	.4byte	0x68d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x17
	.4byte	.LASF159
	.2byte	0x2c4
	.byte	0x35
	.4byte	0x739
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF221
	.2byte	0x2c6
	.byte	0x13
	.4byte	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF388
	.2byte	0x2c7
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF389
	.2byte	0x2c8
	.byte	0x8
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x26
	.4byte	.LASF390
	.2byte	0x312
	.4byte	.L90
	.byte	0
	.uleb128 0xe
	.4byte	.LASF391
	.2byte	0x2ab
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21c5
	.uleb128 0x8
	.string	"m"
	.2byte	0x2ab
	.byte	0x1f
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"msg"
	.2byte	0x2ad
	.byte	0x13
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF392
	.2byte	0x264
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21f9
	.uleb128 0x8
	.string	"msg"
	.2byte	0x264
	.byte	0x19
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF393
	.2byte	0x266
	.byte	0x1a
	.4byte	0x175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF394
	.2byte	0x218
	.4byte	0x21d
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2277
	.uleb128 0x8
	.string	"arg"
	.2byte	0x218
	.byte	0x17
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.4byte	.LASF395
	.2byte	0x218
	.byte	0x2c
	.4byte	0xc0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"err"
	.2byte	0x218
	.byte	0x3a
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x5
	.4byte	.LASF386
	.2byte	0x21a
	.byte	0x13
	.4byte	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF221
	.2byte	0x21b
	.byte	0x13
	.4byte	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x9
	.string	"pcb"
	.2byte	0x247
	.byte	0x15
	.4byte	0xc0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF396
	.2byte	0x205
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22ab
	.uleb128 0x17
	.4byte	.LASF221
	.2byte	0x205
	.byte	0x1b
	.4byte	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"pcb"
	.2byte	0x207
	.byte	0x13
	.4byte	0xc0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF397
	.2byte	0x1b3
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x234d
	.uleb128 0x8
	.string	"arg"
	.2byte	0x1b3
	.byte	0xf
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.string	"err"
	.2byte	0x1b3
	.byte	0x1a
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x5
	.4byte	.LASF221
	.2byte	0x1b5
	.byte	0x13
	.4byte	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF398
	.2byte	0x1b6
	.byte	0x16
	.4byte	0x6c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x5
	.4byte	.LASF399
	.2byte	0x1b7
	.byte	0x9
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.string	"lev"
	.2byte	0x1b8
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x5
	.4byte	.LASF400
	.2byte	0x1e3
	.byte	0x9
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x5
	.4byte	.LASF360
	.2byte	0x1e7
	.byte	0x12
	.4byte	0xe29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF401
	.2byte	0x191
	.4byte	0x21d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23a3
	.uleb128 0x8
	.string	"arg"
	.2byte	0x191
	.byte	0x10
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x191
	.byte	0x25
	.4byte	0xc0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"len"
	.2byte	0x191
	.byte	0x30
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x5
	.4byte	.LASF221
	.2byte	0x193
	.byte	0x13
	.4byte	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF402
	.2byte	0x168
	.4byte	0x21d
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23ea
	.uleb128 0x8
	.string	"arg"
	.2byte	0x168
	.byte	0x10
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x168
	.byte	0x25
	.4byte	0xc0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF221
	.2byte	0x16a
	.byte	0x13
	.4byte	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF403
	.2byte	0x128
	.4byte	0x21d
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x246b
	.uleb128 0x8
	.string	"arg"
	.2byte	0x128
	.byte	0x10
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x128
	.byte	0x25
	.4byte	0xc0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"p"
	.2byte	0x128
	.byte	0x37
	.4byte	0x354
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"err"
	.2byte	0x128
	.byte	0x40
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x5
	.4byte	.LASF221
	.2byte	0x12a
	.byte	0x13
	.4byte	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.string	"len"
	.2byte	0x12b
	.byte	0x9
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x9
	.string	"msg"
	.2byte	0x12c
	.byte	0x9
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.4byte	.LASF404
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24fd
	.uleb128 0x18
	.string	"arg"
	.byte	0xda
	.byte	0x10
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"pcb"
	.byte	0xda
	.byte	0x25
	.4byte	0xce0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"p"
	.byte	0xda
	.byte	0x37
	.4byte	0x354
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.4byte	.LASF68
	.byte	0xdb
	.byte	0x1b
	.4byte	0x62f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.4byte	.LASF124
	.byte	0xdb
	.byte	0x27
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x1d
	.string	"buf"
	.byte	0xdd
	.byte	0x12
	.4byte	0xfe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LASF221
	.byte	0xde
	.4byte	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.string	"len"
	.byte	0xdf
	.byte	0x9
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1d
	.string	"err"
	.byte	0xe0
	.byte	0x9
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.byte	0
	.uleb128 0x37
	.4byte	.LASF405
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.4byte	0xfd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x258d
	.uleb128 0x18
	.string	"arg"
	.byte	0x9f
	.byte	0x10
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"pcb"
	.byte	0x9f
	.byte	0x25
	.4byte	0xd9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"p"
	.byte	0x9f
	.byte	0x37
	.4byte	0x354
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.4byte	.LASF68
	.byte	0xa0
	.byte	0x1b
	.4byte	0x62f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.string	"q"
	.byte	0xa2
	.byte	0x10
	.4byte	0x354
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"buf"
	.byte	0xa3
	.byte	0x12
	.4byte	0xfe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.4byte	.LASF221
	.byte	0xa4
	.4byte	0x75f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1d
	.string	"len"
	.byte	0xb4
	.byte	0xd
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF407
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.4byte	0x37
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25c4
	.uleb128 0x18
	.string	"msg"
	.byte	0x83
	.byte	0x1f
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"err"
	.byte	0x83
	.byte	0x2b
	.4byte	0x1029
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.4byte	.LASF408
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.4byte	0x9c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.string	"err"
	.byte	0x73
	.byte	0x1f
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
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
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x21
	.sleb128 19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xa
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
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x21
	.sleb128 26
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x11c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.byte	0x5
	.4byte	.LBB11
	.byte	0x4
	.uleb128 .LBB11-.LBB11
	.uleb128 .LBE11-.LBB11
	.byte	0x4
	.uleb128 .LBB12-.LBB11
	.uleb128 .LBE12-.LBB11
	.byte	0
.LLRL1:
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"ERR_RTE"
.LASF296:
	.string	"tcp_listen_with_backlog_and_err"
.LASF390:
	.string	"free_and_return"
.LASF16:
	.string	"int8_t"
.LASF335:
	.string	"sys_now"
.LASF285:
	.string	"igmp_leavegroup_netif"
.LASF12:
	.string	"size_t"
.LASF363:
	.string	"recved"
.LASF174:
	.string	"rcv_ann_wnd"
.LASF145:
	.string	"netconn_igmp"
.LASF77:
	.string	"MEMP_TCP_PCB"
.LASF115:
	.string	"igmp_mac_filter"
.LASF307:
	.string	"raw_bind"
.LASF223:
	.string	"proto"
.LASF18:
	.string	"int32_t"
.LASF249:
	.string	"current_netif"
.LASF336:
	.string	"sys_arch_protect"
.LASF369:
	.string	"lwip_netconn_do_connect"
.LASF295:
	.string	"netconn_err"
.LASF173:
	.string	"rcv_wnd"
.LASF164:
	.string	"so_options"
.LASF210:
	.string	"persist_probe"
.LASF86:
	.string	"MEMP_SYS_TIMEOUT"
.LASF222:
	.string	"netvector"
.LASF80:
	.string	"MEMP_ALTCP_PCB"
.LASF240:
	.string	"_v_hl"
.LASF259:
	.string	"LISTEN"
.LASF109:
	.string	"state"
.LASF403:
	.string	"recv_tcp"
.LASF93:
	.string	"lwip_internal_netif_client_data_index"
.LASF27:
	.string	"s32_t"
.LASF298:
	.string	"udp_connect"
.LASF183:
	.string	"ssthresh"
.LASF150:
	.string	"type"
.LASF290:
	.string	"tcp_write"
.LASF225:
	.string	"local"
.LASF63:
	.string	"PBUF_REF"
.LASF406:
	.string	"netconn_alloc"
.LASF268:
	.string	"TIME_WAIT"
.LASF221:
	.string	"conn"
.LASF151:
	.string	"pending_err"
.LASF257:
	.string	"tcp_state"
.LASF121:
	.string	"netif_igmp_mac_filter_fn"
.LASF166:
	.string	"prio"
.LASF308:
	.string	"udp_remove"
.LASF372:
	.string	"lwip_netconn_do_connected"
.LASF169:
	.string	"polltmr"
.LASF302:
	.string	"udp_bind_netif"
.LASF241:
	.string	"_tos"
.LASF149:
	.string	"netconn"
.LASF224:
	.string	"ipaddr"
.LASF291:
	.string	"udp_sendto_chksum"
.LASF398:
	.string	"old_state"
.LASF354:
	.string	"diff"
.LASF152:
	.string	"op_completed"
.LASF144:
	.string	"NETCONN_EVT_ERROR"
.LASF6:
	.string	"long int"
.LASF122:
	.string	"QueueDefinition"
.LASF377:
	.string	"lwip_netconn_do_close_internal"
.LASF135:
	.string	"NETCONN_WRITE"
.LASF353:
	.string	"write_finished"
.LASF53:
	.string	"sys_sem_t"
.LASF66:
	.string	"ip4_addr"
.LASF38:
	.string	"ERR_INPROGRESS"
.LASF405:
	.string	"recv_raw"
.LASF381:
	.string	"close_finished"
.LASF250:
	.string	"current_input_netif"
.LASF364:
	.string	"lwip_netconn_do_send"
.LASF139:
	.string	"netconn_evt"
.LASF242:
	.string	"_len"
.LASF39:
	.string	"ERR_VAL"
.LASF279:
	.string	"raw_recv_fn"
.LASF253:
	.string	"current_iphdr_src"
.LASF337:
	.string	"tcp_recved"
.LASF271:
	.string	"tcp_sent_fn"
.LASF236:
	.string	"dns_api_msg"
.LASF106:
	.string	"linkoutput"
.LASF367:
	.string	"backlog"
.LASF357:
	.string	"done"
.LASF113:
	.string	"hwaddr_len"
.LASF89:
	.string	"MEMP_PBUF_POOL"
.LASF51:
	.string	"QueueHandle_t"
.LASF2:
	.string	"signed char"
.LASF254:
	.string	"current_iphdr_dest"
.LASF19:
	.string	"uint8_t"
.LASF163:
	.string	"netif_idx"
.LASF211:
	.string	"keep_cnt_sent"
.LASF287:
	.string	"igmp_leavegroup"
.LASF172:
	.string	"rcv_nxt"
.LASF161:
	.string	"local_ip"
.LASF338:
	.string	"netbuf_delete"
.LASF3:
	.string	"unsigned char"
.LASF392:
	.string	"pcb_new"
.LASF299:
	.string	"raw_connect"
.LASF248:
	.string	"ip_globals"
.LASF275:
	.string	"tcp_pcb_listen"
.LASF358:
	.string	"err_mem"
.LASF81:
	.string	"MEMP_NETBUF"
.LASF29:
	.string	"IPADDR_TYPE_V4"
.LASF30:
	.string	"IPADDR_TYPE_V6"
.LASF288:
	.string	"igmp_joingroup"
.LASF293:
	.string	"raw_sendto"
.LASF263:
	.string	"FIN_WAIT_1"
.LASF264:
	.string	"FIN_WAIT_2"
.LASF64:
	.string	"PBUF_POOL"
.LASF128:
	.string	"NETCONN_TCP"
.LASF374:
	.string	"lwip_netconn_do_bind_if"
.LASF282:
	.string	"netconn_reset"
.LASF260:
	.string	"SYN_SENT"
.LASF341:
	.string	"memp_malloc"
.LASF15:
	.string	"char"
.LASF177:
	.string	"rttest"
.LASF105:
	.string	"output"
.LASF67:
	.string	"pbuf"
.LASF362:
	.string	"remaining"
.LASF297:
	.string	"tcp_connect"
.LASF52:
	.string	"SemaphoreHandle_t"
.LASF244:
	.string	"_ttl"
.LASF212:
	.string	"udp_pcb"
.LASF167:
	.string	"local_port"
.LASF126:
	.string	"netconn_type"
.LASF73:
	.string	"flags"
.LASF165:
	.string	"tcp_pcb"
.LASF123:
	.string	"netbuf"
.LASF404:
	.string	"recv_udp"
.LASF347:
	.string	"lwip_netconn_do_join_leave_group"
.LASF267:
	.string	"LAST_ACK"
.LASF13:
	.string	"ptrdiff_t"
.LASF227:
	.string	"vector_cnt"
.LASF102:
	.string	"ip_addr"
.LASF361:
	.string	"lwip_netconn_do_recv"
.LASF232:
	.string	"shut"
.LASF31:
	.string	"IPADDR_TYPE_ANY"
.LASF332:
	.string	"sys_sem_signal"
.LASF245:
	.string	"_proto"
.LASF131:
	.string	"NETCONN_UDPNOCHKSUM"
.LASF104:
	.string	"input"
.LASF311:
	.string	"tcp_close"
.LASF319:
	.string	"sys_mbox_new"
.LASF286:
	.string	"igmp_joingroup_netif"
.LASF220:
	.string	"api_msg"
.LASF188:
	.string	"snd_lbb"
.LASF309:
	.string	"raw_remove"
.LASF393:
	.string	"iptype"
.LASF42:
	.string	"ERR_ALREADY"
.LASF400:
	.string	"was_nonblocking_connect"
.LASF83:
	.string	"MEMP_TCPIP_MSG_API"
.LASF82:
	.string	"MEMP_NETCONN"
.LASF312:
	.string	"tcp_accept"
.LASF265:
	.string	"CLOSE_WAIT"
.LASF228:
	.string	"vector_off"
.LASF294:
	.string	"raw_send"
.LASF175:
	.string	"rcv_ann_right_edge"
.LASF402:
	.string	"poll_tcp"
.LASF251:
	.string	"current_ip4_header"
.LASF95:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF107:
	.string	"status_callback"
.LASF277:
	.string	"tcpflags_t"
.LASF11:
	.string	"sys_prot_t"
.LASF321:
	.string	"udp_recv"
.LASF171:
	.string	"last_timer"
.LASF330:
	.string	"tcp_recv"
.LASF243:
	.string	"_offset"
.LASF238:
	.string	"ip4_addr_p_t"
.LASF368:
	.string	"lwip_netconn_do_disconnect"
.LASF207:
	.string	"keep_cnt"
.LASF44:
	.string	"ERR_CONN"
.LASF375:
	.string	"lwip_netconn_do_bind"
.LASF75:
	.string	"MEMP_RAW_PCB"
.LASF138:
	.string	"NETCONN_CLOSE"
.LASF158:
	.string	"current_msg"
.LASF7:
	.string	"long unsigned int"
.LASF237:
	.string	"ip4_addr_packed"
.LASF101:
	.string	"netif"
.LASF373:
	.string	"was_blocking"
.LASF62:
	.string	"PBUF_ROM"
.LASF112:
	.string	"hwaddr"
.LASF197:
	.string	"ooseq"
.LASF72:
	.string	"type_internal"
.LASF142:
	.string	"NETCONN_EVT_SENDPLUS"
.LASF283:
	.string	"netconn_closed"
.LASF246:
	.string	"_chksum"
.LASF213:
	.string	"mcast_ip4"
.LASF389:
	.string	"init_flags"
.LASF272:
	.string	"tcp_poll_fn"
.LASF352:
	.string	"available"
.LASF154:
	.string	"acceptmbox"
.LASF349:
	.string	"lwip_netconn_do_getaddr"
.LASF306:
	.string	"udp_bind"
.LASF159:
	.string	"callback"
.LASF289:
	.string	"tcp_output"
.LASF70:
	.string	"payload"
.LASF98:
	.string	"netif_mac_filter_action"
.LASF179:
	.string	"nrtx"
.LASF300:
	.string	"udp_disconnect"
.LASF343:
	.string	"sys_mbox_valid"
.LASF324:
	.string	"raw_new_ip_type"
.LASF181:
	.string	"lastack"
.LASF185:
	.string	"snd_nxt"
.LASF355:
	.string	"dontblock"
.LASF366:
	.string	"lpcb"
.LASF54:
	.string	"sys_mbox_t"
.LASF129:
	.string	"NETCONN_UDP"
.LASF218:
	.string	"protocol"
.LASF200:
	.string	"sent"
.LASF8:
	.string	"long long int"
.LASF160:
	.string	"ip_pcb"
.LASF384:
	.string	"lwip_netconn_do_dns_found"
.LASF194:
	.string	"bytes_acked"
.LASF385:
	.string	"netconn_drain"
.LASF193:
	.string	"unsent_oversize"
.LASF96:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF34:
	.string	"ERR_MEM"
.LASF339:
	.string	"sys_mbox_trypost"
.LASF49:
	.string	"ERR_ARG"
.LASF28:
	.string	"ip4_addr_t"
.LASF304:
	.string	"netif_get_by_index"
.LASF103:
	.string	"netmask"
.LASF92:
	.string	"lwip_ip_addr_type"
.LASF281:
	.string	"netconn_aborted"
.LASF310:
	.string	"tcp_shutdown"
.LASF170:
	.string	"pollinterval"
.LASF133:
	.string	"netconn_state"
.LASF68:
	.string	"addr"
.LASF356:
	.string	"write_more"
.LASF329:
	.string	"tcp_sent"
.LASF252:
	.string	"current_ip_header_tot_len"
.LASF45:
	.string	"ERR_IF"
.LASF10:
	.string	"unsigned int"
.LASF395:
	.string	"newpcb"
.LASF334:
	.string	"sys_arch_unprotect"
.LASF24:
	.string	"u16_t"
.LASF313:
	.string	"tcp_abort"
.LASF116:
	.string	"acd_list"
.LASF41:
	.string	"ERR_USE"
.LASF56:
	.string	"PBUF_IP"
.LASF360:
	.string	"op_completed_sem"
.LASF345:
	.string	"lwip_netconn_do_gethostbyname"
.LASF40:
	.string	"ERR_WOULDBLOCK"
.LASF327:
	.string	"tcp_err"
.LASF117:
	.string	"netif_input_fn"
.LASF397:
	.string	"err_tcp"
.LASF184:
	.string	"rto_end"
.LASF65:
	.string	"pbuf_type"
.LASF36:
	.string	"ERR_TIMEOUT"
.LASF203:
	.string	"poll"
.LASF229:
	.string	"offset"
.LASF316:
	.string	"sys_sem_free"
.LASF119:
	.string	"netif_linkoutput_fn"
.LASF176:
	.string	"rtime"
.LASF350:
	.string	"lwip_netconn_do_write"
.LASF261:
	.string	"SYN_RCVD"
.LASF380:
	.string	"shut_close"
.LASF333:
	.string	"sys_sem_valid"
.LASF118:
	.string	"netif_output_fn"
.LASF396:
	.string	"setup_tcp"
.LASF201:
	.string	"recv"
.LASF137:
	.string	"NETCONN_CONNECT"
.LASF71:
	.string	"tot_len"
.LASF326:
	.string	"sys_mbox_free"
.LASF409:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF32:
	.string	"ip_addr_t"
.LASF256:
	.string	"tcpwnd_size_t"
.LASF14:
	.string	"long double"
.LASF99:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF50:
	.string	"err_t"
.LASF255:
	.string	"udp_recv_fn"
.LASF386:
	.string	"newconn"
.LASF365:
	.string	"lwip_netconn_do_listen"
.LASF74:
	.string	"if_idx"
.LASF146:
	.string	"NETCONN_JOIN"
.LASF43:
	.string	"ERR_ISCONN"
.LASF388:
	.string	"size"
.LASF371:
	.string	"lwip_netconn_do_writemore"
.LASF262:
	.string	"ESTABLISHED"
.LASF9:
	.string	"long long unsigned int"
.LASF76:
	.string	"MEMP_UDP_PCB"
.LASF168:
	.string	"remote_port"
.LASF394:
	.string	"accept_function"
.LASF79:
	.string	"MEMP_TCP_SEG"
.LASF20:
	.string	"uint16_t"
.LASF209:
	.string	"persist_backoff"
.LASF84:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF182:
	.string	"cwnd"
.LASF315:
	.string	"sys_sem_set_invalid"
.LASF198:
	.string	"refused_data"
.LASF235:
	.string	"join_or_leave"
.LASF143:
	.string	"NETCONN_EVT_SENDMINUS"
.LASF192:
	.string	"snd_queuelen"
.LASF108:
	.string	"link_callback"
.LASF317:
	.string	"memp_free"
.LASF226:
	.string	"vector"
.LASF370:
	.string	"non_blocking"
.LASF97:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF216:
	.string	"recv_arg"
.LASF87:
	.string	"MEMP_NETDB"
.LASF111:
	.string	"hostname"
.LASF292:
	.string	"udp_send_chksum"
.LASF141:
	.string	"NETCONN_EVT_RCVMINUS"
.LASF359:
	.string	"out_err"
.LASF60:
	.string	"pbuf_layer"
.LASF195:
	.string	"unsent"
.LASF410:
	.string	"ip_data"
.LASF147:
	.string	"NETCONN_LEAVE"
.LASF127:
	.string	"NETCONN_INVALID"
.LASF120:
	.string	"netif_status_callback_fn"
.LASF340:
	.string	"pbuf_free"
.LASF33:
	.string	"ERR_OK"
.LASF214:
	.string	"mcast_ifindex"
.LASF247:
	.string	"dest"
.LASF90:
	.string	"MEMP_MAX"
.LASF284:
	.string	"dns_gethostbyname_addrtype"
.LASF305:
	.string	"tcp_bind"
.LASF162:
	.string	"remote_ip"
.LASF401:
	.string	"sent_tcp"
.LASF274:
	.string	"tcp_connected_fn"
.LASF26:
	.string	"u32_t"
.LASF376:
	.string	"lwip_netconn_do_delconn"
.LASF157:
	.string	"recv_timeout"
.LASF331:
	.string	"tcp_arg"
.LASF322:
	.string	"udp_new_ip_type"
.LASF100:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF208:
	.string	"persist_cnt"
.LASF132:
	.string	"NETCONN_RAW"
.LASF114:
	.string	"name"
.LASF199:
	.string	"listener"
.LASF124:
	.string	"port"
.LASF88:
	.string	"MEMP_PBUF"
.LASF318:
	.string	"sys_sem_new"
.LASF35:
	.string	"ERR_BUF"
.LASF190:
	.string	"snd_wnd_max"
.LASF205:
	.string	"keep_idle"
.LASF215:
	.string	"mcast_ttl"
.LASF4:
	.string	"short int"
.LASF136:
	.string	"NETCONN_LISTEN"
.LASF320:
	.string	"tcp_new_ip_type"
.LASF130:
	.string	"NETCONN_UDPLITE"
.LASF346:
	.string	"lwip_netconn_do_join_leave_group_netif"
.LASF196:
	.string	"unacked"
.LASF17:
	.string	"int16_t"
.LASF344:
	.string	"addrtype"
.LASF155:
	.string	"callback_arg"
.LASF383:
	.string	"close_timeout"
.LASF204:
	.string	"errf"
.LASF382:
	.string	"tpcb"
.LASF94:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF230:
	.string	"apiflags"
.LASF276:
	.string	"accept"
.LASF348:
	.string	"lwip_netconn_do_close"
.LASF273:
	.string	"tcp_err_fn"
.LASF270:
	.string	"tcp_recv_fn"
.LASF134:
	.string	"NETCONN_NONE"
.LASF186:
	.string	"snd_wl1"
.LASF187:
	.string	"snd_wl2"
.LASF387:
	.string	"netconn_free"
.LASF258:
	.string	"CLOSED"
.LASF219:
	.string	"socket"
.LASF180:
	.string	"dupacks"
.LASF408:
	.string	"lwip_netconn_err_to_msg"
.LASF58:
	.string	"PBUF_RAW_TX"
.LASF25:
	.string	"s16_t"
.LASF178:
	.string	"rtseq"
.LASF206:
	.string	"keep_intvl"
.LASF217:
	.string	"raw_pcb"
.LASF85:
	.string	"MEMP_IGMP_GROUP"
.LASF391:
	.string	"lwip_netconn_do_newconn"
.LASF378:
	.string	"shut_rx"
.LASF21:
	.string	"uint32_t"
.LASF46:
	.string	"ERR_ABRT"
.LASF399:
	.string	"mbox_msg"
.LASF148:
	.string	"netconn_callback"
.LASF351:
	.string	"dataptr"
.LASF55:
	.string	"PBUF_TRANSPORT"
.LASF407:
	.string	"lwip_netconn_is_err_msg"
.LASF231:
	.string	"time_started"
.LASF153:
	.string	"recvmbox"
.LASF140:
	.string	"NETCONN_EVT_RCVPLUS"
.LASF156:
	.string	"send_timeout"
.LASF239:
	.string	"ip_hdr"
.LASF303:
	.string	"raw_bind_netif"
.LASF5:
	.string	"short unsigned int"
.LASF23:
	.string	"s8_t"
.LASF301:
	.string	"tcp_bind_netif"
.LASF91:
	.string	"memp_t"
.LASF22:
	.string	"u8_t"
.LASF325:
	.string	"sys_mbox_set_invalid"
.LASF110:
	.string	"client_data"
.LASF266:
	.string	"CLOSING"
.LASF233:
	.string	"multiaddr"
.LASF323:
	.string	"raw_recv"
.LASF191:
	.string	"snd_buf"
.LASF48:
	.string	"ERR_CLSD"
.LASF189:
	.string	"snd_wnd"
.LASF379:
	.string	"shut_tx"
.LASF61:
	.string	"PBUF_RAM"
.LASF269:
	.string	"tcp_accept_fn"
.LASF342:
	.string	"pbuf_clone"
.LASF59:
	.string	"PBUF_RAW"
.LASF47:
	.string	"ERR_RST"
.LASF69:
	.string	"next"
.LASF278:
	.string	"tcp_seg"
.LASF202:
	.string	"connected"
.LASF78:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF280:
	.string	"dns_found_callback"
.LASF125:
	.string	"toport_chksum"
.LASF328:
	.string	"tcp_poll"
.LASF234:
	.string	"netif_addr"
.LASF314:
	.string	"sys_arch_mbox_tryfetch"
.LASF57:
	.string	"PBUF_LINK"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/api_msg.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
