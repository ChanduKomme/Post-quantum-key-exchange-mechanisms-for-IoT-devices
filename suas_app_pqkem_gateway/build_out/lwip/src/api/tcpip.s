	.file	"tcpip.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/tcpip.c"
	.section	.sbss.tcpip_init_done,"aw",@nobits
	.align	2
	.type	tcpip_init_done, @object
	.size	tcpip_init_done, 4
tcpip_init_done:
	.zero	4
	.section	.sbss.tcpip_init_done_arg,"aw",@nobits
	.align	2
	.type	tcpip_init_done_arg, @object
	.size	tcpip_init_done_arg, 4
tcpip_init_done_arg:
	.zero	4
	.section	.sbss.tcpip_mbox,"aw",@nobits
	.align	2
	.type	tcpip_mbox, @object
	.size	tcpip_mbox, 4
tcpip_mbox:
	.zero	4
	.section	.text.tcpip_mbox_fetch,"ax",@progbits
	.align	1
	.type	tcpip_mbox_fetch, @function
tcpip_mbox_fetch:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/tcpip.c"
	.loc 1 94 1
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
.L3:
.L2:
	.loc 1 100 15
	call	sys_timeouts_sleeptime
	sw	a0,-20(s0)
	.loc 1 101 6
	lw	a4,-20(s0)
	li	a5,-1
	bne	a4,a5,.L4
	.loc 1 103 5
	li	a2,0
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	sys_arch_mbox_fetch
	.loc 1 105 5
	j	.L1
.L4:
	.loc 1 106 13
	lw	a5,-20(s0)
	bne	a5,zero,.L6
	.loc 1 107 5
	call	sys_check_timeouts
	.loc 1 109 5
	j	.L2
.L6:
	.loc 1 113 9
	lw	a2,-20(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	sys_arch_mbox_fetch
	sw	a0,-24(s0)
	.loc 1 115 6
	lw	a4,-24(s0)
	li	a5,-1
	bne	a4,a5,.L1
	.loc 1 118 5
	call	sys_check_timeouts
	.loc 1 120 5
	j	.L2
.L1:
	.loc 1 122 1
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
	.size	tcpip_mbox_fetch, .-tcpip_mbox_fetch
	.section	.text.tcpip_thread,"ax",@progbits
	.align	1
	.type	tcpip_thread, @function
tcpip_thread:
.LFB6:
	.loc 1 137 1
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
	.loc 1 144 23
	lui	a5,%hi(tcpip_init_done)
	lw	a5,%lo(tcpip_init_done)(a5)
	.loc 1 144 6
	beq	a5,zero,.L11
	.loc 1 145 5
	lui	a5,%hi(tcpip_init_done)
	lw	a5,%lo(tcpip_init_done)(a5)
	lui	a4,%hi(tcpip_init_done_arg)
	lw	a4,%lo(tcpip_init_done_arg)(a4)
	mv	a0,a4
	jalr	a5
.LVL0:
.L11:
	.loc 1 151 5
	addi	a5,s0,-20
	mv	a1,a5
	lui	a5,%hi(tcpip_mbox)
	addi	a0,a5,%lo(tcpip_mbox)
	call	tcpip_mbox_fetch
	.loc 1 152 13
	lw	a5,-20(s0)
	.loc 1 152 8
	beq	a5,zero,.L12
	.loc 1 157 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	tcpip_thread_handle_msg
	j	.L11
.L12:
	.loc 1 155 7
	nop
	.loc 1 151 5
	j	.L11
	.cfi_endproc
.LFE6:
	.size	tcpip_thread, .-tcpip_thread
	.section	.text.tcpip_thread_handle_msg,"ax",@progbits
	.align	1
	.type	tcpip_thread_handle_msg, @function
tcpip_thread_handle_msg:
.LFB7:
	.loc 1 166 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 167 14
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 167 3
	li	a4,5
	beq	a5,a4,.L14
	li	a4,5
	bgt	a5,a4,.L23
	li	a4,4
	beq	a5,a4,.L16
	li	a4,4
	bgt	a5,a4,.L23
	li	a4,3
	beq	a5,a4,.L17
	li	a4,3
	bgt	a5,a4,.L23
	li	a4,2
	beq	a5,a4,.L18
	li	a4,2
	bgt	a5,a4,.L23
	beq	a5,zero,.L19
	li	a4,1
	beq	a5,a4,.L20
	.loc 1 222 7
	j	.L23
.L19:
	.loc 1 171 23
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 171 7
	lw	a4,-20(s0)
	lw	a4,8(a4)
	mv	a0,a4
	jalr	a5
.LVL1:
	.loc 1 172 7
	j	.L21
.L20:
	.loc 1 175 53
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 175 36
	lw	a4,-20(s0)
	lw	a3,8(a4)
	.loc 1 175 24
	lw	a4,-20(s0)
	lw	s1,8(a4)
	.loc 1 175 36
	mv	a0,a3
	jalr	a5
.LVL2:
	mv	a5,a0
	.loc 1 175 34 discriminator 1
	sb	a5,0(s1)
	.loc 1 176 7
	lw	a5,-20(s0)
	lw	a5,12(a5)
	mv	a0,a5
	call	sys_sem_signal
	.loc 1 177 7
	j	.L21
.L14:
	.loc 1 180 23
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 180 7
	lw	a4,-20(s0)
	lw	a4,8(a4)
	mv	a0,a4
	jalr	a5
.LVL3:
	.loc 1 181 7
	lw	a5,-20(s0)
	lw	a5,12(a5)
	mv	a0,a5
	call	sys_sem_signal
	.loc 1 182 7
	j	.L21
.L18:
	.loc 1 188 23
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 188 11
	lw	a4,-20(s0)
	lw	a3,4(a4)
	lw	a4,-20(s0)
	lw	a4,8(a4)
	mv	a1,a4
	mv	a0,a3
	jalr	a5
.LVL4:
	mv	a5,a0
	.loc 1 188 10 discriminator 1
	beq	a5,zero,.L22
	.loc 1 189 9
	lw	a5,-20(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	pbuf_free
.L22:
	.loc 1 191 7
	lw	a1,-20(s0)
	li	a0,9
	call	memp_free
	.loc 1 192 7
	j	.L21
.L17:
	.loc 1 210 18
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 210 7
	lw	a4,-20(s0)
	lw	a4,8(a4)
	mv	a0,a4
	jalr	a5
.LVL5:
	.loc 1 211 7
	lw	a1,-20(s0)
	li	a0,8
	call	memp_free
	.loc 1 212 7
	j	.L21
.L16:
	.loc 1 216 18
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 216 7
	lw	a4,-20(s0)
	lw	a4,8(a4)
	mv	a0,a4
	jalr	a5
.LVL6:
	.loc 1 217 7
	j	.L21
.L23:
	.loc 1 222 7
	nop
.L21:
	.loc 1 224 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	tcpip_thread_handle_msg, .-tcpip_thread_handle_msg
	.section	.text.tcpip_inpkt,"ax",@progbits
	.align	1
	.globl	tcpip_inpkt
	.type	tcpip_inpkt, @function
tcpip_inpkt:
.LFB8:
	.loc 1 255 1
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
	.loc 1 266 14
	lui	a5,%hi(tcpip_mbox)
	addi	a0,a5,%lo(tcpip_mbox)
	call	sys_mbox_valid
	.loc 1 268 29
	li	a0,9
	call	memp_malloc
	sw	a0,-20(s0)
	.loc 1 269 6
	lw	a5,-20(s0)
	bne	a5,zero,.L25
	.loc 1 270 12
	li	a5,-1
	j	.L26
.L25:
	.loc 1 273 13
	lw	a5,-20(s0)
	li	a4,2
	sb	a4,0(a5)
	.loc 1 274 18
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,4(a5)
	.loc 1 275 22
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	.loc 1 276 25
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	sw	a4,12(a5)
	.loc 1 277 7
	lw	a1,-20(s0)
	lui	a5,%hi(tcpip_mbox)
	addi	a0,a5,%lo(tcpip_mbox)
	call	sys_mbox_trypost
	mv	a5,a0
	.loc 1 277 6 discriminator 1
	beq	a5,zero,.L27
	.loc 1 278 5
	lw	a1,-20(s0)
	li	a0,9
	call	memp_free
	.loc 1 279 12
	li	a5,-1
	j	.L26
.L27:
	.loc 1 281 10
	li	a5,0
.L26:
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
.LFE8:
	.size	tcpip_inpkt, .-tcpip_inpkt
	.section	.text.tcpip_input,"ax",@progbits
	.align	1
	.globl	tcpip_input
	.type	tcpip_input, @function
tcpip_input:
.LFB9:
	.loc 1 298 1
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
	.loc 1 300 10
	lw	a5,-24(s0)
	lbu	a5,69(a5)
	.loc 1 300 18
	andi	a5,a5,24
	.loc 1 300 6
	beq	a5,zero,.L29
	.loc 1 301 12
	lui	a5,%hi(ethernet_input)
	addi	a2,a5,%lo(ethernet_input)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	tcpip_inpkt
	mv	a5,a0
	j	.L30
.L29:
	.loc 1 304 12
	lui	a5,%hi(ip4_input)
	addi	a2,a5,%lo(ip4_input)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	tcpip_inpkt
	mv	a5,a0
.L30:
	.loc 1 305 1
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
.LFE9:
	.size	tcpip_input, .-tcpip_input
	.section	.text.tcpip_callback,"ax",@progbits
	.align	1
	.globl	tcpip_callback
	.type	tcpip_callback, @function
tcpip_callback:
.LFB10:
	.loc 1 324 1
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
	.loc 1 327 14
	lui	a5,%hi(tcpip_mbox)
	addi	a0,a5,%lo(tcpip_mbox)
	call	sys_mbox_valid
	.loc 1 329 29
	li	a0,8
	call	memp_malloc
	sw	a0,-20(s0)
	.loc 1 330 6
	lw	a5,-20(s0)
	bne	a5,zero,.L32
	.loc 1 331 12
	li	a5,-1
	j	.L33
.L32:
	.loc 1 334 13
	lw	a5,-20(s0)
	li	a4,3
	sb	a4,0(a5)
	.loc 1 335 24
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,4(a5)
	.loc 1 336 19
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	.loc 1 338 3
	lw	a1,-20(s0)
	lui	a5,%hi(tcpip_mbox)
	addi	a0,a5,%lo(tcpip_mbox)
	call	sys_mbox_post
	.loc 1 339 10
	li	a5,0
.L33:
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
.LFE10:
	.size	tcpip_callback, .-tcpip_callback
	.section	.text.tcpip_try_callback,"ax",@progbits
	.align	1
	.globl	tcpip_try_callback
	.type	tcpip_try_callback, @function
tcpip_try_callback:
.LFB11:
	.loc 1 360 1
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
	.loc 1 363 14
	lui	a5,%hi(tcpip_mbox)
	addi	a0,a5,%lo(tcpip_mbox)
	call	sys_mbox_valid
	.loc 1 365 29
	li	a0,8
	call	memp_malloc
	sw	a0,-20(s0)
	.loc 1 366 6
	lw	a5,-20(s0)
	bne	a5,zero,.L35
	.loc 1 367 12
	li	a5,-1
	j	.L36
.L35:
	.loc 1 370 13
	lw	a5,-20(s0)
	li	a4,3
	sb	a4,0(a5)
	.loc 1 371 24
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,4(a5)
	.loc 1 372 19
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	.loc 1 374 7
	lw	a1,-20(s0)
	lui	a5,%hi(tcpip_mbox)
	addi	a0,a5,%lo(tcpip_mbox)
	call	sys_mbox_trypost
	mv	a5,a0
	.loc 1 374 6 discriminator 1
	beq	a5,zero,.L37
	.loc 1 375 5
	lw	a1,-20(s0)
	li	a0,8
	call	memp_free
	.loc 1 376 12
	li	a5,-1
	j	.L36
.L37:
	.loc 1 378 10
	li	a5,0
.L36:
	.loc 1 379 1
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
	.size	tcpip_try_callback, .-tcpip_try_callback
	.section	.text.tcpip_send_msg_wait_sem,"ax",@progbits
	.align	1
	.globl	tcpip_send_msg_wait_sem
	.type	tcpip_send_msg_wait_sem, @function
tcpip_send_msg_wait_sem:
.LFB12:
	.loc 1 452 1
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
	.loc 1 462 14
	lw	a0,-44(s0)
	call	sys_sem_valid
	.loc 1 463 14
	lui	a5,%hi(tcpip_mbox)
	addi	a0,a5,%lo(tcpip_mbox)
	call	sys_mbox_valid
	.loc 1 466 12
	sb	zero,-32(s0)
	.loc 1 467 28
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	.loc 1 468 23
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 1 469 3
	addi	a5,s0,-32
	mv	a1,a5
	lui	a5,%hi(tcpip_mbox)
	addi	a0,a5,%lo(tcpip_mbox)
	call	sys_mbox_post
	.loc 1 470 3
	li	a1,0
	lw	a0,-44(s0)
	call	sys_arch_sem_wait
	.loc 1 472 10
	li	a5,0
	.loc 1 474 1
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
	.size	tcpip_send_msg_wait_sem, .-tcpip_send_msg_wait_sem
	.section	.text.tcpip_api_call,"ax",@progbits
	.align	1
	.globl	tcpip_api_call
	.type	tcpip_api_call, @function
tcpip_api_call:
.LFB13:
	.loc 1 488 1
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
	sw	a1,-56(s0)
	.loc 1 499 15
	lw	a5,-56(s0)
	addi	a5,a5,4
	li	a1,0
	mv	a0,a5
	call	sys_sem_new
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 500 6
	lb	a5,-17(s0)
	beq	a5,zero,.L41
	.loc 1 501 12
	lb	a5,-17(s0)
	j	.L43
.L41:
	.loc 1 505 14
	lui	a5,%hi(tcpip_mbox)
	addi	a0,a5,%lo(tcpip_mbox)
	call	sys_mbox_valid
	.loc 1 508 12
	li	a5,1
	sb	a5,-36(s0)
	.loc 1 509 24
	lw	a5,-56(s0)
	sw	a5,-28(s0)
	.loc 1 510 29
	lw	a5,-52(s0)
	sw	a5,-32(s0)
	.loc 1 514 26
	lw	a5,-56(s0)
	addi	a5,a5,4
	.loc 1 514 24
	sw	a5,-24(s0)
	.loc 1 516 3
	addi	a5,s0,-36
	mv	a1,a5
	lui	a5,%hi(tcpip_mbox)
	addi	a0,a5,%lo(tcpip_mbox)
	call	sys_mbox_post
	.loc 1 517 3
	lw	a5,-24(s0)
	li	a1,0
	mv	a0,a5
	call	sys_arch_sem_wait
	.loc 1 521 3
	lw	a5,-56(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	sys_sem_free
	.loc 1 524 14
	lw	a5,-56(s0)
	lb	a5,0(a5)
.L43:
	.loc 1 526 1
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
.LFE13:
	.size	tcpip_api_call, .-tcpip_api_call
	.section	.text.tcpip_callbackmsg_new,"ax",@progbits
	.align	1
	.globl	tcpip_callbackmsg_new
	.type	tcpip_callbackmsg_new, @function
tcpip_callbackmsg_new:
.LFB14:
	.loc 1 546 1
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
	.loc 1 547 47
	li	a0,8
	call	memp_malloc
	sw	a0,-20(s0)
	.loc 1 548 6
	lw	a5,-20(s0)
	bne	a5,zero,.L45
	.loc 1 549 11
	li	a5,0
	j	.L46
.L45:
	.loc 1 551 13
	lw	a5,-20(s0)
	li	a4,4
	sb	a4,0(a5)
	.loc 1 552 24
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,4(a5)
	.loc 1 553 19
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	.loc 1 554 10
	lw	a5,-20(s0)
.L46:
	.loc 1 555 1
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
	.size	tcpip_callbackmsg_new, .-tcpip_callbackmsg_new
	.section	.text.tcpip_callbackmsg_delete,"ax",@progbits
	.align	1
	.globl	tcpip_callbackmsg_delete
	.type	tcpip_callbackmsg_delete, @function
tcpip_callbackmsg_delete:
.LFB15:
	.loc 1 567 1
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
	.loc 1 568 3
	lw	a1,-20(s0)
	li	a0,8
	call	memp_free
	.loc 1 569 1
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
	.size	tcpip_callbackmsg_delete, .-tcpip_callbackmsg_delete
	.section	.text.tcpip_callbackmsg_trycallback,"ax",@progbits
	.align	1
	.globl	tcpip_callbackmsg_trycallback
	.type	tcpip_callbackmsg_trycallback, @function
tcpip_callbackmsg_trycallback:
.LFB16:
	.loc 1 582 1
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
	.loc 1 583 14
	lui	a5,%hi(tcpip_mbox)
	addi	a0,a5,%lo(tcpip_mbox)
	call	sys_mbox_valid
	.loc 1 584 10
	lw	a1,-20(s0)
	lui	a5,%hi(tcpip_mbox)
	addi	a0,a5,%lo(tcpip_mbox)
	call	sys_mbox_trypost
	mv	a5,a0
	.loc 1 585 1
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
	.size	tcpip_callbackmsg_trycallback, .-tcpip_callbackmsg_trycallback
	.section	.text.tcpip_callbackmsg_trycallback_fromisr,"ax",@progbits
	.align	1
	.globl	tcpip_callbackmsg_trycallback_fromisr
	.type	tcpip_callbackmsg_trycallback_fromisr, @function
tcpip_callbackmsg_trycallback_fromisr:
.LFB17:
	.loc 1 601 1
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
	.loc 1 602 14
	lui	a5,%hi(tcpip_mbox)
	addi	a0,a5,%lo(tcpip_mbox)
	call	sys_mbox_valid
	.loc 1 603 10
	lw	a1,-20(s0)
	lui	a5,%hi(tcpip_mbox)
	addi	a0,a5,%lo(tcpip_mbox)
	call	sys_mbox_trypost_fromisr
	mv	a5,a0
	.loc 1 604 1
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
.LFE17:
	.size	tcpip_callbackmsg_trycallback_fromisr, .-tcpip_callbackmsg_trycallback_fromisr
	.section	.text.tcpip_callback_wait,"ax",@progbits
	.align	1
	.globl	tcpip_callback_wait
	.type	tcpip_callback_wait, @function
tcpip_callback_wait:
.LFB18:
	.loc 1 620 1
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
	sw	a1,-56(s0)
	.loc 1 631 14
	lui	a5,%hi(tcpip_mbox)
	addi	a0,a5,%lo(tcpip_mbox)
	call	sys_mbox_valid
	.loc 1 633 9
	addi	a5,s0,-24
	li	a1,0
	mv	a0,a5
	call	sys_sem_new
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 634 6
	lb	a5,-17(s0)
	beq	a5,zero,.L53
	.loc 1 635 12
	lb	a5,-17(s0)
	j	.L55
.L53:
	.loc 1 638 12
	li	a5,5
	sb	a5,-40(s0)
	.loc 1 639 28
	lw	a5,-52(s0)
	sw	a5,-36(s0)
	.loc 1 640 23
	lw	a5,-56(s0)
	sw	a5,-32(s0)
	.loc 1 641 23
	addi	a5,s0,-24
	sw	a5,-28(s0)
	.loc 1 642 3
	addi	a5,s0,-40
	mv	a1,a5
	lui	a5,%hi(tcpip_mbox)
	addi	a0,a5,%lo(tcpip_mbox)
	call	sys_mbox_post
	.loc 1 643 3
	addi	a5,s0,-24
	li	a1,0
	mv	a0,a5
	call	sys_arch_sem_wait
	.loc 1 644 3
	addi	a5,s0,-24
	mv	a0,a5
	call	sys_sem_free
	.loc 1 645 10
	li	a5,0
.L55:
	.loc 1 647 1
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
.LFE18:
	.size	tcpip_callback_wait, .-tcpip_callback_wait
	.section	.rodata
	.align	2
.LC0:
	.string	"TCP/IP"
	.section	.text.tcpip_init,"ax",@progbits
	.align	1
	.globl	tcpip_init
	.type	tcpip_init, @function
tcpip_init:
.LFB19:
	.loc 1 660 1
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
	.loc 1 661 3
	call	lwip_init
	.loc 1 663 19
	lui	a5,%hi(tcpip_init_done)
	lw	a4,-20(s0)
	sw	a4,%lo(tcpip_init_done)(a5)
	.loc 1 664 23
	lui	a5,%hi(tcpip_init_done_arg)
	lw	a4,-24(s0)
	sw	a4,%lo(tcpip_init_done_arg)(a5)
	.loc 1 665 7
	li	a1,50
	lui	a5,%hi(tcpip_mbox)
	addi	a0,a5,%lo(tcpip_mbox)
	call	sys_mbox_new
	.loc 1 674 3
	li	a4,30
	li	a5,4096
	addi	a3,a5,-96
	li	a2,0
	lui	a5,%hi(tcpip_thread)
	addi	a1,a5,%lo(tcpip_thread)
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	sys_thread_new
	.loc 1 675 1
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
	.size	tcpip_init, .-tcpip_init
	.section	.text.pbuf_free_int,"ax",@progbits
	.align	1
	.type	pbuf_free_int, @function
pbuf_free_int:
.LFB20:
	.loc 1 685 1
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
	.loc 1 686 16
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 687 3
	lw	a0,-20(s0)
	call	pbuf_free
	.loc 1 688 1
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
	.size	pbuf_free_int, .-pbuf_free_int
	.section	.text.pbuf_free_callback,"ax",@progbits
	.align	1
	.globl	pbuf_free_callback
	.type	pbuf_free_callback, @function
pbuf_free_callback:
.LFB21:
	.loc 1 698 1
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
	.loc 1 699 10
	lw	a1,-20(s0)
	lui	a5,%hi(pbuf_free_int)
	addi	a0,a5,%lo(pbuf_free_int)
	call	tcpip_try_callback
	mv	a5,a0
	.loc 1 700 1
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
	.size	pbuf_free_callback, .-pbuf_free_callback
	.section	.text.mem_free_callback,"ax",@progbits
	.align	1
	.globl	mem_free_callback
	.type	mem_free_callback, @function
mem_free_callback:
.LFB22:
	.loc 1 711 1
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
	.loc 1 712 10
	lw	a1,-20(s0)
	lui	a5,%hi(mem_free)
	addi	a0,a5,%lo(mem_free)
	call	tcpip_try_callback
	mv	a5,a0
	.loc 1 713 1
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
	.size	mem_free_callback, .-mem_free_callback
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/queue.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/semphr.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/arch/sys_arch.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/sys.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcpip.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/tcpip_priv.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/mem.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/netif/ethernet.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/init.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/timeouts.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd9b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x25
	.4byte	.LASF169
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x26
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x27
	.byte	0x4
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x1c
	.4byte	0x7a
	.uleb128 0x4
	.4byte	0x81
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x32
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x7d
	.byte	0x11
	.4byte	0x97
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7e
	.byte	0x10
	.4byte	0x8b
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x7f
	.byte	0x12
	.4byte	0xa3
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x3
	.byte	0x81
	.byte	0x12
	.4byte	0xaf
	.uleb128 0x1d
	.byte	0x5
	.4byte	0x32
	.byte	0x4
	.byte	0x35
	.4byte	0x15e
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.sleb128 -1
	.uleb128 0x6
	.4byte	.LASF23
	.sleb128 -2
	.uleb128 0x6
	.4byte	.LASF24
	.sleb128 -3
	.uleb128 0x6
	.4byte	.LASF25
	.sleb128 -4
	.uleb128 0x6
	.4byte	.LASF26
	.sleb128 -5
	.uleb128 0x6
	.4byte	.LASF27
	.sleb128 -6
	.uleb128 0x6
	.4byte	.LASF28
	.sleb128 -7
	.uleb128 0x6
	.4byte	.LASF29
	.sleb128 -8
	.uleb128 0x6
	.4byte	.LASF30
	.sleb128 -9
	.uleb128 0x6
	.4byte	.LASF31
	.sleb128 -10
	.uleb128 0x6
	.4byte	.LASF32
	.sleb128 -11
	.uleb128 0x6
	.4byte	.LASF33
	.sleb128 -12
	.uleb128 0x6
	.4byte	.LASF34
	.sleb128 -13
	.uleb128 0x6
	.4byte	.LASF35
	.sleb128 -14
	.uleb128 0x6
	.4byte	.LASF36
	.sleb128 -15
	.uleb128 0x6
	.4byte	.LASF37
	.sleb128 -16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x4
	.byte	0x60
	.byte	0xe
	.4byte	0xc7
	.uleb128 0x4
	.4byte	0x16f
	.uleb128 0x1e
	.4byte	0x17a
	.uleb128 0x1
	.4byte	0x78
	.byte	0
	.uleb128 0x16
	.4byte	0x78
	.4byte	0x18a
	.uleb128 0x17
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x5
	.byte	0x46
	.byte	0x25
	.4byte	0x196
	.uleb128 0x4
	.4byte	0x19b
	.uleb128 0x18
	.4byte	.LASF41
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x6
	.byte	0x30
	.byte	0x22
	.4byte	0x1ac
	.uleb128 0x4
	.4byte	0x1b1
	.uleb128 0x18
	.4byte	.LASF42
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x7
	.byte	0x25
	.byte	0x17
	.4byte	0x1a0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x8
	.byte	0x2c
	.byte	0x1b
	.4byte	0x1b6
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x8
	.byte	0x2e
	.byte	0x17
	.4byte	0x1a0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x8
	.byte	0x2f
	.byte	0x16
	.4byte	0x18a
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x9
	.byte	0x62
	.byte	0x10
	.4byte	0x16a
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x4
	.byte	0xa
	.byte	0x33
	.4byte	0x20c
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0xa
	.byte	0x34
	.byte	0x9
	.4byte	0xdf
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0xa
	.byte	0x39
	.byte	0x19
	.4byte	0x1f2
	.uleb128 0x1c
	.4byte	0x20c
	.uleb128 0x28
	.4byte	.LASF49
	.byte	0xb
	.2byte	0x126
	.byte	0x14
	.4byte	0x20c
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x10
	.byte	0xc
	.byte	0xba
	.4byte	0x29f
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0xc
	.byte	0xbc
	.byte	0x10
	.4byte	0x29f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0xc
	.byte	0xbf
	.byte	0x9
	.4byte	0x78
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0xc
	.byte	0xc8
	.byte	0x9
	.4byte	0xd3
	.byte	0x8
	.uleb128 0x9
	.string	"len"
	.byte	0xc
	.byte	0xcb
	.byte	0x9
	.4byte	0xd3
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0xc
	.byte	0xd0
	.byte	0x8
	.4byte	0xbb
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0xc
	.byte	0xd3
	.byte	0x8
	.4byte	0xbb
	.byte	0xd
	.uleb128 0x9
	.string	"ref"
	.byte	0xc
	.byte	0xda
	.byte	0x8
	.4byte	0xbb
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0xc
	.byte	0xdd
	.byte	0x8
	.4byte	0xbb
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	0x22a
	.uleb128 0x1d
	.byte	0x7
	.4byte	0x39
	.byte	0xd
	.byte	0x34
	.4byte	0x311
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0xd
	.byte	0x38
	.byte	0x3
	.4byte	0x2a4
	.uleb128 0x19
	.4byte	.LASF80
	.4byte	0x39
	.byte	0xe
	.byte	0x71
	.4byte	0x345
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF78
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.4byte	.LASF81
	.4byte	0x39
	.byte	0xe
	.byte	0x9f
	.4byte	0x361
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	0x366
	.uleb128 0x29
	.4byte	.LASF84
	.byte	0x54
	.byte	0xe
	.2byte	0x10d
	.byte	0x8
	.4byte	0x478
	.uleb128 0x5
	.4byte	.LASF53
	.2byte	0x110
	.byte	0x11
	.4byte	0x361
	.byte	0
	.uleb128 0x5
	.4byte	.LASF85
	.2byte	0x115
	.byte	0xd
	.4byte	0x21d
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF86
	.2byte	0x116
	.byte	0xd
	.4byte	0x21d
	.byte	0x8
	.uleb128 0x1a
	.string	"gw"
	.2byte	0x117
	.byte	0xd
	.4byte	0x21d
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF87
	.2byte	0x129
	.byte	0x12
	.4byte	0x478
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF88
	.2byte	0x12f
	.byte	0x13
	.4byte	0x49d
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x134
	.byte	0x17
	.4byte	0x4cc
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF90
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x4f1
	.byte	0x1c
	.uleb128 0x5
	.4byte	.LASF91
	.2byte	0x144
	.byte	0x1c
	.4byte	0x4f1
	.byte	0x20
	.uleb128 0x5
	.4byte	.LASF92
	.2byte	0x14c
	.byte	0x9
	.4byte	0x78
	.byte	0x24
	.uleb128 0x5
	.4byte	.LASF93
	.2byte	0x14e
	.byte	0x9
	.4byte	0x17a
	.byte	0x28
	.uleb128 0x5
	.4byte	.LASF94
	.2byte	0x152
	.byte	0xf
	.4byte	0x86
	.byte	0x38
	.uleb128 0x1a
	.string	"mtu"
	.2byte	0x158
	.byte	0x9
	.4byte	0xd3
	.byte	0x3c
	.uleb128 0x5
	.4byte	.LASF95
	.2byte	0x15e
	.byte	0x8
	.4byte	0x537
	.byte	0x3e
	.uleb128 0x5
	.4byte	.LASF96
	.2byte	0x160
	.byte	0x8
	.4byte	0xbb
	.byte	0x44
	.uleb128 0x5
	.4byte	.LASF57
	.2byte	0x162
	.byte	0x8
	.4byte	0xbb
	.byte	0x45
	.uleb128 0x5
	.4byte	.LASF97
	.2byte	0x164
	.byte	0x8
	.4byte	0x547
	.byte	0x46
	.uleb128 0x1a
	.string	"num"
	.2byte	0x167
	.byte	0x8
	.4byte	0xbb
	.byte	0x48
	.uleb128 0x5
	.4byte	.LASF98
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x50d
	.byte	0x4c
	.uleb128 0x5
	.4byte	.LASF99
	.2byte	0x185
	.byte	0xf
	.4byte	0x55c
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0xe
	.byte	0xb5
	.byte	0x11
	.4byte	0x484
	.uleb128 0x4
	.4byte	0x489
	.uleb128 0x10
	.4byte	0x15e
	.4byte	0x49d
	.uleb128 0x1
	.4byte	0x29f
	.uleb128 0x1
	.4byte	0x361
	.byte	0
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0xe
	.byte	0xc0
	.byte	0x11
	.4byte	0x4a9
	.uleb128 0x4
	.4byte	0x4ae
	.uleb128 0x10
	.4byte	0x15e
	.4byte	0x4c7
	.uleb128 0x1
	.4byte	0x361
	.uleb128 0x1
	.4byte	0x29f
	.uleb128 0x1
	.4byte	0x4c7
	.byte	0
	.uleb128 0x4
	.4byte	0x218
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0xe
	.byte	0xd7
	.byte	0x11
	.4byte	0x4d8
	.uleb128 0x4
	.4byte	0x4dd
	.uleb128 0x10
	.4byte	0x15e
	.4byte	0x4f1
	.uleb128 0x1
	.4byte	0x361
	.uleb128 0x1
	.4byte	0x29f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0xe
	.byte	0xd9
	.byte	0x10
	.4byte	0x4fd
	.uleb128 0x4
	.4byte	0x502
	.uleb128 0x1e
	.4byte	0x50d
	.uleb128 0x1
	.4byte	0x361
	.byte	0
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xe
	.byte	0xdc
	.byte	0x11
	.4byte	0x519
	.uleb128 0x4
	.4byte	0x51e
	.uleb128 0x10
	.4byte	0x15e
	.4byte	0x537
	.uleb128 0x1
	.4byte	0x361
	.uleb128 0x1
	.4byte	0x4c7
	.uleb128 0x1
	.4byte	0x345
	.byte	0
	.uleb128 0x16
	.4byte	0xbb
	.4byte	0x547
	.uleb128 0x17
	.4byte	0x6a
	.byte	0x5
	.byte	0
	.uleb128 0x16
	.4byte	0x7a
	.4byte	0x557
	.uleb128 0x17
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.string	"acd"
	.uleb128 0x4
	.4byte	0x557
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0xf
	.byte	0x46
	.byte	0x10
	.4byte	0x16a
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0xf
	.byte	0x48
	.byte	0x10
	.4byte	0x16a
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x8
	.byte	0x10
	.byte	0x63
	.4byte	0x5a0
	.uleb128 0x9
	.string	"err"
	.byte	0x10
	.byte	0x66
	.byte	0x9
	.4byte	0x15e
	.byte	0
	.uleb128 0x9
	.string	"sem"
	.byte	0x10
	.byte	0x68
	.byte	0xd
	.4byte	0x1c2
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0x10
	.byte	0x6e
	.byte	0x11
	.4byte	0x5ac
	.uleb128 0x4
	.4byte	0x5b1
	.uleb128 0x10
	.4byte	0x15e
	.4byte	0x5c0
	.uleb128 0x1
	.4byte	0x5c0
	.byte	0
	.uleb128 0x4
	.4byte	0x579
	.uleb128 0x19
	.4byte	.LASF109
	.4byte	0x39
	.byte	0x10
	.byte	0x71
	.4byte	0x5f9
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0x86
	.4byte	0x61b
	.uleb128 0x8
	.4byte	.LASF116
	.byte	0x10
	.byte	0x87
	.byte	0x19
	.4byte	0x56d
	.byte	0
	.uleb128 0x9
	.string	"msg"
	.byte	0x10
	.byte	0x88
	.byte	0xd
	.4byte	0x78
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.byte	0xc
	.byte	0x8a
	.4byte	0x64a
	.uleb128 0x8
	.4byte	.LASF116
	.byte	0x10
	.byte	0x8b
	.byte	0x19
	.4byte	0x5a0
	.byte	0
	.uleb128 0x9
	.string	"arg"
	.byte	0x10
	.byte	0x8c
	.byte	0x23
	.4byte	0x5c0
	.byte	0x4
	.uleb128 0x9
	.string	"sem"
	.byte	0x10
	.byte	0x8d
	.byte	0x12
	.4byte	0x64a
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x1c2
	.uleb128 0x11
	.byte	0xc
	.byte	0x8f
	.4byte	0x67e
	.uleb128 0x8
	.4byte	.LASF116
	.byte	0x10
	.byte	0x90
	.byte	0x19
	.4byte	0x56d
	.byte	0
	.uleb128 0x9
	.string	"ctx"
	.byte	0x10
	.byte	0x91
	.byte	0xd
	.4byte	0x78
	.byte	0x4
	.uleb128 0x9
	.string	"sem"
	.byte	0x10
	.byte	0x92
	.byte	0x12
	.4byte	0x64a
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.byte	0xc
	.byte	0x96
	.4byte	0x6ab
	.uleb128 0x9
	.string	"p"
	.byte	0x10
	.byte	0x97
	.byte	0x14
	.4byte	0x29f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x10
	.byte	0x98
	.byte	0x15
	.4byte	0x361
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF117
	.byte	0x10
	.byte	0x99
	.byte	0x16
	.4byte	0x478
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0x9c
	.4byte	0x6cd
	.uleb128 0x8
	.4byte	.LASF116
	.byte	0x10
	.byte	0x9d
	.byte	0x19
	.4byte	0x56d
	.byte	0
	.uleb128 0x9
	.string	"ctx"
	.byte	0x10
	.byte	0x9e
	.byte	0xd
	.4byte	0x78
	.byte	0x4
	.byte	0
	.uleb128 0x2b
	.byte	0xc
	.byte	0x10
	.byte	0x84
	.byte	0x3
	.4byte	0x708
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x89
	.4byte	0x5f9
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x8e
	.4byte	0x61b
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x93
	.4byte	0x64f
	.uleb128 0x1f
	.string	"inp"
	.byte	0x9a
	.4byte	0x67e
	.uleb128 0x1f
	.string	"cb"
	.byte	0x9f
	.4byte	0x6ab
	.byte	0
	.uleb128 0x13
	.4byte	.LASF121
	.byte	0x10
	.byte	0x10
	.byte	0x82
	.4byte	0x72f
	.uleb128 0x8
	.4byte	.LASF122
	.byte	0x10
	.byte	0x83
	.byte	0x17
	.4byte	0x5c5
	.byte	0
	.uleb128 0x9
	.string	"msg"
	.byte	0x10
	.byte	0xa7
	.byte	0x5
	.4byte	0x6cd
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x3b
	.byte	0x1b
	.4byte	0x561
	.uleb128 0x5
	.byte	0x3
	.4byte	tcpip_init_done
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0x3c
	.byte	0xe
	.4byte	0x78
	.uleb128 0x5
	.byte	0x3
	.4byte	tcpip_init_done_arg
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0x3d
	.byte	0x13
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	tcpip_mbox
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x11
	.byte	0x4c
	.4byte	0x773
	.uleb128 0x1
	.4byte	0x78
	.byte	0
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x1a4
	.byte	0xe
	.4byte	0x1da
	.4byte	0x79e
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0x1e6
	.uleb128 0x1
	.4byte	0x78
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF127
	.byte	0x9
	.2byte	0x11d
	.byte	0x7
	.4byte	0x15e
	.4byte	0x7ba
	.uleb128 0x1
	.4byte	0x7ba
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	0x1ce
	.uleb128 0x20
	.4byte	.LASF143
	.byte	0x14
	.byte	0x5e
	.uleb128 0xd
	.4byte	.LASF128
	.byte	0x9
	.2byte	0x13a
	.byte	0x7
	.4byte	0x15e
	.4byte	0x7e2
	.uleb128 0x1
	.4byte	0x7ba
	.uleb128 0x1
	.4byte	0x78
	.byte	0
	.uleb128 0x15
	.4byte	.LASF130
	.byte	0x9
	.byte	0xe1
	.4byte	0x7f3
	.uleb128 0x1
	.4byte	0x64a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF131
	.byte	0x9
	.byte	0xc3
	.byte	0x7
	.4byte	0x15e
	.4byte	0x80e
	.uleb128 0x1
	.4byte	0x64a
	.uleb128 0x1
	.4byte	0xbb
	.byte	0
	.uleb128 0xf
	.4byte	.LASF132
	.byte	0x9
	.byte	0xdb
	.byte	0x7
	.4byte	0xdf
	.4byte	0x829
	.uleb128 0x1
	.4byte	0x64a
	.uleb128 0x1
	.4byte	0xdf
	.byte	0
	.uleb128 0xf
	.4byte	.LASF133
	.byte	0x9
	.byte	0xec
	.byte	0x5
	.4byte	0x2b
	.4byte	0x83f
	.uleb128 0x1
	.4byte	0x64a
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF134
	.byte	0x9
	.2byte	0x126
	.byte	0x6
	.4byte	0x857
	.uleb128 0x1
	.4byte	0x7ba
	.uleb128 0x1
	.4byte	0x78
	.byte	0
	.uleb128 0xf
	.4byte	.LASF135
	.byte	0x12
	.byte	0x47
	.byte	0x7
	.4byte	0x15e
	.4byte	0x872
	.uleb128 0x1
	.4byte	0x29f
	.uleb128 0x1
	.4byte	0x361
	.byte	0
	.uleb128 0xf
	.4byte	.LASF136
	.byte	0x13
	.byte	0x42
	.byte	0x7
	.4byte	0x15e
	.4byte	0x88d
	.uleb128 0x1
	.4byte	0x29f
	.uleb128 0x1
	.4byte	0x361
	.byte	0
	.uleb128 0xd
	.4byte	.LASF137
	.byte	0x9
	.2byte	0x130
	.byte	0x7
	.4byte	0x15e
	.4byte	0x8a9
	.uleb128 0x1
	.4byte	0x7ba
	.uleb128 0x1
	.4byte	0x78
	.byte	0
	.uleb128 0xf
	.4byte	.LASF138
	.byte	0xd
	.byte	0x93
	.byte	0x7
	.4byte	0x78
	.4byte	0x8bf
	.uleb128 0x1
	.4byte	0x311
	.byte	0
	.uleb128 0xd
	.4byte	.LASF139
	.byte	0x9
	.2byte	0x17b
	.byte	0x5
	.4byte	0x2b
	.4byte	0x8d6
	.uleb128 0x1
	.4byte	0x7ba
	.byte	0
	.uleb128 0x15
	.4byte	.LASF140
	.byte	0xd
	.byte	0x95
	.4byte	0x8ec
	.uleb128 0x1
	.4byte	0x311
	.uleb128 0x1
	.4byte	0x78
	.byte	0
	.uleb128 0xd
	.4byte	.LASF141
	.byte	0xc
	.2byte	0x125
	.byte	0x6
	.4byte	0xbb
	.4byte	0x903
	.uleb128 0x1
	.4byte	0x29f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF142
	.byte	0x9
	.byte	0xc9
	.4byte	0x914
	.uleb128 0x1
	.4byte	0x64a
	.byte	0
	.uleb128 0x20
	.4byte	.LASF144
	.byte	0x15
	.byte	0x72
	.uleb128 0xd
	.4byte	.LASF145
	.byte	0x9
	.2byte	0x150
	.byte	0x7
	.4byte	0xdf
	.4byte	0x93c
	.uleb128 0x1
	.4byte	0x7ba
	.uleb128 0x1
	.4byte	0x93c
	.uleb128 0x1
	.4byte	0xdf
	.byte	0
	.uleb128 0x4
	.4byte	0x78
	.uleb128 0x2d
	.4byte	.LASF170
	.byte	0x15
	.byte	0x73
	.byte	0x7
	.4byte	0xdf
	.uleb128 0xb
	.4byte	.LASF146
	.2byte	0x2c6
	.4byte	0x15e
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x974
	.uleb128 0x7
	.string	"m"
	.2byte	0x2c6
	.byte	0x19
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF147
	.2byte	0x2b9
	.4byte	0x15e
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99b
	.uleb128 0x7
	.string	"p"
	.2byte	0x2b9
	.byte	0x21
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x2ac
	.byte	0x1
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9cd
	.uleb128 0x7
	.string	"p"
	.2byte	0x2ac
	.byte	0x15
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"q"
	.2byte	0x2ae
	.byte	0x10
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF153
	.2byte	0x293
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa01
	.uleb128 0xe
	.4byte	.LASF148
	.2byte	0x293
	.byte	0x1f
	.4byte	0x561
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"arg"
	.2byte	0x293
	.byte	0x2f
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF149
	.2byte	0x26b
	.4byte	0x15e
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa66
	.uleb128 0xe
	.4byte	.LASF116
	.2byte	0x26b
	.byte	0x27
	.4byte	0x56d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"ctx"
	.2byte	0x26b
	.byte	0x37
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"err"
	.2byte	0x273
	.byte	0x9
	.4byte	0x15e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xc
	.string	"sem"
	.2byte	0x274
	.byte	0xd
	.4byte	0x1c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"msg"
	.2byte	0x275
	.byte	0x14
	.4byte	0x708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xb
	.4byte	.LASF150
	.2byte	0x258
	.4byte	0x15e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8f
	.uleb128 0x7
	.string	"msg"
	.2byte	0x258
	.byte	0x42
	.4byte	0xa94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF151
	.uleb128 0x4
	.4byte	0xa8f
	.uleb128 0xb
	.4byte	.LASF152
	.2byte	0x245
	.4byte	0x15e
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac2
	.uleb128 0x7
	.string	"msg"
	.2byte	0x245
	.byte	0x3a
	.4byte	0xa94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF154
	.2byte	0x236
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae7
	.uleb128 0x7
	.string	"msg"
	.2byte	0x236
	.byte	0x35
	.4byte	0xa94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF155
	.2byte	0x221
	.4byte	0xa94
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb2e
	.uleb128 0xe
	.4byte	.LASF116
	.2byte	0x221
	.byte	0x29
	.4byte	0x56d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"ctx"
	.2byte	0x221
	.byte	0x39
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"msg"
	.2byte	0x223
	.byte	0x15
	.4byte	0xb2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	0x708
	.uleb128 0xb
	.4byte	.LASF156
	.2byte	0x1e7
	.4byte	0x15e
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb88
	.uleb128 0x7
	.string	"fn"
	.2byte	0x1e7
	.byte	0x22
	.4byte	0x5a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.4byte	.LASF157
	.2byte	0x1e7
	.byte	0x42
	.4byte	0x5c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"msg"
	.2byte	0x1f0
	.byte	0x14
	.4byte	0x708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"err"
	.2byte	0x1f3
	.byte	0x9
	.4byte	0x15e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xb
	.4byte	.LASF158
	.2byte	0x1c3
	.4byte	0x15e
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbdd
	.uleb128 0x7
	.string	"fn"
	.2byte	0x1c3
	.byte	0x2b
	.4byte	0x56d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF159
	.2byte	0x1c3
	.byte	0x35
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"sem"
	.2byte	0x1c3
	.byte	0x48
	.4byte	0x64a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"msg"
	.2byte	0x1cc
	.byte	0x14
	.4byte	0x708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.4byte	.LASF160
	.2byte	0x167
	.4byte	0x15e
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc24
	.uleb128 0xe
	.4byte	.LASF116
	.2byte	0x167
	.byte	0x26
	.4byte	0x56d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"ctx"
	.2byte	0x167
	.byte	0x36
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"msg"
	.2byte	0x169
	.byte	0x15
	.4byte	0xb2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF161
	.2byte	0x143
	.4byte	0x15e
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6b
	.uleb128 0xe
	.4byte	.LASF116
	.2byte	0x143
	.byte	0x22
	.4byte	0x56d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"ctx"
	.2byte	0x143
	.byte	0x32
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"msg"
	.2byte	0x145
	.byte	0x15
	.4byte	0xb2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF162
	.2byte	0x129
	.4byte	0x15e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca1
	.uleb128 0x7
	.string	"p"
	.2byte	0x129
	.byte	0x1a
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"inp"
	.2byte	0x129
	.byte	0x2b
	.4byte	0x361
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF163
	.byte	0x1
	.byte	0xfe
	.byte	0x1
	.4byte	0x15e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf3
	.uleb128 0x12
	.string	"p"
	.byte	0xfe
	.byte	0x1a
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"inp"
	.byte	0xfe
	.byte	0x2b
	.4byte	0x361
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.4byte	.LASF117
	.byte	0xfe
	.byte	0x3f
	.4byte	0x478
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"msg"
	.2byte	0x108
	.byte	0x15
	.4byte	0xb2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	.LASF165
	.byte	0xa5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd16
	.uleb128 0x12
	.string	"msg"
	.byte	0xa5
	.byte	0x2b
	.4byte	0xb2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	.LASF166
	.byte	0x88
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd47
	.uleb128 0x12
	.string	"arg"
	.byte	0x88
	.byte	0x14
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.string	"msg"
	.byte	0x8a
	.byte	0x15
	.4byte	0xb2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.4byte	.LASF171
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF167
	.byte	0x5d
	.byte	0x1e
	.4byte	0x7ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"msg"
	.byte	0x5d
	.byte	0x2b
	.4byte	0x93c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.4byte	.LASF168
	.byte	0x5f
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.string	"res"
	.byte	0x5f
	.byte	0x14
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.4byte	.LASF172
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.4byte	.L3
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xc
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x17
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
	.uleb128 0x2c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xa4
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF104:
	.string	"netif_igmp_mac_filter_fn"
.LASF70:
	.string	"MEMP_SYS_TIMEOUT"
.LASF120:
	.string	"cb_wait"
.LASF51:
	.string	"pbuf"
.LASF29:
	.string	"ERR_USE"
.LASF21:
	.string	"ERR_OK"
.LASF163:
	.string	"tcpip_inpkt"
.LASF71:
	.string	"MEMP_NETDB"
.LASF145:
	.string	"sys_arch_mbox_fetch"
.LASF74:
	.string	"MEMP_MAX"
.LASF140:
	.string	"memp_free"
.LASF58:
	.string	"if_idx"
.LASF122:
	.string	"type"
.LASF111:
	.string	"TCPIP_MSG_API_CALL"
.LASF130:
	.string	"sys_sem_free"
.LASF113:
	.string	"TCPIP_MSG_CALLBACK"
.LASF45:
	.string	"sys_mbox_t"
.LASF139:
	.string	"sys_mbox_valid"
.LASF40:
	.string	"QueueHandle_t"
.LASF53:
	.string	"next"
.LASF123:
	.string	"tcpip_init_done"
.LASF117:
	.string	"input_fn"
.LASF154:
	.string	"tcpip_callbackmsg_delete"
.LASF82:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF44:
	.string	"sys_sem_t"
.LASF118:
	.string	"api_msg"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF7:
	.string	"long unsigned int"
.LASF116:
	.string	"function"
.LASF9:
	.string	"long long unsigned int"
.LASF149:
	.string	"tcpip_callback_wait"
.LASF95:
	.string	"hwaddr"
.LASF52:
	.string	"addr"
.LASF24:
	.string	"ERR_TIMEOUT"
.LASF92:
	.string	"state"
.LASF94:
	.string	"hostname"
.LASF6:
	.string	"long int"
.LASF41:
	.string	"tskTaskControlBlock"
.LASF59:
	.string	"MEMP_RAW_PCB"
.LASF50:
	.string	"ip4_addr"
.LASF39:
	.string	"TaskHandle_t"
.LASF105:
	.string	"tcpip_init_done_fn"
.LASF79:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF33:
	.string	"ERR_IF"
.LASF151:
	.string	"tcpip_callback_msg"
.LASF96:
	.string	"hwaddr_len"
.LASF160:
	.string	"tcpip_try_callback"
.LASF60:
	.string	"MEMP_UDP_PCB"
.LASF115:
	.string	"TCPIP_MSG_CALLBACK_STATIC_WAIT"
.LASF86:
	.string	"netmask"
.LASF102:
	.string	"netif_linkoutput_fn"
.LASF132:
	.string	"sys_arch_sem_wait"
.LASF69:
	.string	"MEMP_IGMP_GROUP"
.LASF114:
	.string	"TCPIP_MSG_CALLBACK_STATIC"
.LASF62:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF119:
	.string	"api_call"
.LASF168:
	.string	"sleeptime"
.LASF156:
	.string	"tcpip_api_call"
.LASF56:
	.string	"type_internal"
.LASF135:
	.string	"ip4_input"
.LASF138:
	.string	"memp_malloc"
.LASF112:
	.string	"TCPIP_MSG_INPKT"
.LASF17:
	.string	"u8_t"
.LASF165:
	.string	"tcpip_thread_handle_msg"
.LASF126:
	.string	"sys_thread_new"
.LASF88:
	.string	"output"
.LASF162:
	.string	"tcpip_input"
.LASF30:
	.string	"ERR_ALREADY"
.LASF20:
	.string	"u32_t"
.LASF97:
	.string	"name"
.LASF61:
	.string	"MEMP_TCP_PCB"
.LASF5:
	.string	"short unsigned int"
.LASF48:
	.string	"ip4_addr_t"
.LASF91:
	.string	"link_callback"
.LASF141:
	.string	"pbuf_free"
.LASF35:
	.string	"ERR_RST"
.LASF75:
	.string	"memp_t"
.LASF147:
	.string	"pbuf_free_callback"
.LASF15:
	.string	"uint16_t"
.LASF161:
	.string	"tcpip_callback"
.LASF153:
	.string	"tcpip_init"
.LASF159:
	.string	"apimsg"
.LASF81:
	.string	"netif_mac_filter_action"
.LASF157:
	.string	"call"
.LASF63:
	.string	"MEMP_TCP_SEG"
.LASF137:
	.string	"sys_mbox_trypost"
.LASF166:
	.string	"tcpip_thread"
.LASF49:
	.string	"ip_addr_t"
.LASF38:
	.string	"err_t"
.LASF108:
	.string	"tcpip_api_call_fn"
.LASF47:
	.string	"lwip_thread_fn"
.LASF11:
	.string	"long double"
.LASF84:
	.string	"netif"
.LASF171:
	.string	"tcpip_mbox_fetch"
.LASF98:
	.string	"igmp_mac_filter"
.LASF54:
	.string	"payload"
.LASF133:
	.string	"sys_sem_valid"
.LASF85:
	.string	"ip_addr"
.LASF106:
	.string	"tcpip_callback_fn"
.LASF107:
	.string	"tcpip_api_call_data"
.LASF121:
	.string	"tcpip_msg"
.LASF172:
	.string	"again"
.LASF109:
	.string	"tcpip_msg_type"
.LASF110:
	.string	"TCPIP_MSG_API"
.LASF100:
	.string	"netif_input_fn"
.LASF26:
	.string	"ERR_INPROGRESS"
.LASF167:
	.string	"mbox"
.LASF150:
	.string	"tcpip_callbackmsg_trycallback_fromisr"
.LASF77:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF27:
	.string	"ERR_VAL"
.LASF42:
	.string	"QueueDefinition"
.LASF148:
	.string	"initfunc"
.LASF3:
	.string	"unsigned char"
.LASF37:
	.string	"ERR_ARG"
.LASF32:
	.string	"ERR_CONN"
.LASF136:
	.string	"ethernet_input"
.LASF78:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF4:
	.string	"short int"
.LASF101:
	.string	"netif_output_fn"
.LASF103:
	.string	"netif_status_callback_fn"
.LASF90:
	.string	"status_callback"
.LASF87:
	.string	"input"
.LASF76:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF18:
	.string	"s8_t"
.LASF46:
	.string	"sys_thread_t"
.LASF83:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF142:
	.string	"sys_sem_signal"
.LASF134:
	.string	"sys_mbox_post"
.LASF155:
	.string	"tcpip_callbackmsg_new"
.LASF34:
	.string	"ERR_ABRT"
.LASF158:
	.string	"tcpip_send_msg_wait_sem"
.LASF129:
	.string	"mem_free"
.LASF67:
	.string	"MEMP_TCPIP_MSG_API"
.LASF43:
	.string	"SemaphoreHandle_t"
.LASF12:
	.string	"char"
.LASF146:
	.string	"mem_free_callback"
.LASF10:
	.string	"unsigned int"
.LASF152:
	.string	"tcpip_callbackmsg_trycallback"
.LASF65:
	.string	"MEMP_NETBUF"
.LASF22:
	.string	"ERR_MEM"
.LASF66:
	.string	"MEMP_NETCONN"
.LASF64:
	.string	"MEMP_ALTCP_PCB"
.LASF73:
	.string	"MEMP_PBUF_POOL"
.LASF128:
	.string	"sys_mbox_trypost_fromisr"
.LASF170:
	.string	"sys_timeouts_sleeptime"
.LASF36:
	.string	"ERR_CLSD"
.LASF25:
	.string	"ERR_RTE"
.LASF144:
	.string	"sys_check_timeouts"
.LASF13:
	.string	"int8_t"
.LASF55:
	.string	"tot_len"
.LASF19:
	.string	"u16_t"
.LASF23:
	.string	"ERR_BUF"
.LASF16:
	.string	"uint32_t"
.LASF131:
	.string	"sys_sem_new"
.LASF80:
	.string	"lwip_internal_netif_client_data_index"
.LASF31:
	.string	"ERR_ISCONN"
.LASF99:
	.string	"acd_list"
.LASF14:
	.string	"uint8_t"
.LASF164:
	.string	"pbuf_free_int"
.LASF57:
	.string	"flags"
.LASF28:
	.string	"ERR_WOULDBLOCK"
.LASF127:
	.string	"sys_mbox_new"
.LASF93:
	.string	"client_data"
.LASF143:
	.string	"lwip_init"
.LASF89:
	.string	"linkoutput"
.LASF169:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF125:
	.string	"tcpip_mbox"
.LASF72:
	.string	"MEMP_PBUF"
.LASF124:
	.string	"tcpip_init_done_arg"
.LASF68:
	.string	"MEMP_TCPIP_MSG_INPKT"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/tcpip.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
