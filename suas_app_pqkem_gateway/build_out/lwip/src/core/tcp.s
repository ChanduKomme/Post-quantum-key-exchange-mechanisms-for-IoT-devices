	.file	"tcp.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/tcp.c"
	.section	.rodata
	.align	2
.LC0:
	.string	"CLOSED"
	.align	2
.LC1:
	.string	"LISTEN"
	.align	2
.LC2:
	.string	"SYN_SENT"
	.align	2
.LC3:
	.string	"SYN_RCVD"
	.align	2
.LC4:
	.string	"ESTABLISHED"
	.align	2
.LC5:
	.string	"FIN_WAIT_1"
	.align	2
.LC6:
	.string	"FIN_WAIT_2"
	.align	2
.LC7:
	.string	"CLOSE_WAIT"
	.align	2
.LC8:
	.string	"CLOSING"
	.align	2
.LC9:
	.string	"LAST_ACK"
	.align	2
.LC10:
	.string	"TIME_WAIT"
	.section	.rodata.tcp_state_str,"a"
	.align	2
	.type	tcp_state_str, @object
	.size	tcp_state_str, 44
tcp_state_str:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.section	.sdata.tcp_port,"aw"
	.align	1
	.type	tcp_port, @object
	.size	tcp_port, 2
tcp_port:
	.half	-16384
	.globl	tcp_ticks
	.section	.sbss.tcp_ticks,"aw",@nobits
	.align	2
	.type	tcp_ticks, @object
	.size	tcp_ticks, 4
tcp_ticks:
	.zero	4
	.section	.rodata.tcp_backoff,"a"
	.align	2
	.type	tcp_backoff, @object
	.size	tcp_backoff, 13
tcp_backoff:
	.base64	"AQIDBAUGBwcHBwcHBw=="
	.section	.srodata.tcp_persist_backoff,"a"
	.align	2
	.type	tcp_persist_backoff, @object
	.size	tcp_persist_backoff, 7
tcp_persist_backoff:
	.base64	"AwYMGDBgeA=="
	.globl	tcp_bound_pcbs
	.section	.sbss.tcp_bound_pcbs,"aw",@nobits
	.align	2
	.type	tcp_bound_pcbs, @object
	.size	tcp_bound_pcbs, 4
tcp_bound_pcbs:
	.zero	4
	.globl	tcp_listen_pcbs
	.section	.sbss.tcp_listen_pcbs,"aw",@nobits
	.align	2
	.type	tcp_listen_pcbs, @object
	.size	tcp_listen_pcbs, 4
tcp_listen_pcbs:
	.zero	4
	.globl	tcp_active_pcbs
	.section	.sbss.tcp_active_pcbs,"aw",@nobits
	.align	2
	.type	tcp_active_pcbs, @object
	.size	tcp_active_pcbs, 4
tcp_active_pcbs:
	.zero	4
	.globl	tcp_tw_pcbs
	.section	.sbss.tcp_tw_pcbs,"aw",@nobits
	.align	2
	.type	tcp_tw_pcbs, @object
	.size	tcp_tw_pcbs, 4
tcp_tw_pcbs:
	.zero	4
	.globl	tcp_pcb_lists
	.section	.rodata.tcp_pcb_lists,"a"
	.align	2
	.type	tcp_pcb_lists, @object
	.size	tcp_pcb_lists, 16
tcp_pcb_lists:
	.word	tcp_listen_pcbs
	.word	tcp_bound_pcbs
	.word	tcp_active_pcbs
	.word	tcp_tw_pcbs
	.globl	tcp_active_pcbs_changed
	.section	.sbss.tcp_active_pcbs_changed,"aw",@nobits
	.type	tcp_active_pcbs_changed, @object
	.size	tcp_active_pcbs_changed, 1
tcp_active_pcbs_changed:
	.zero	1
	.section	.sbss.tcp_timer,"aw",@nobits
	.type	tcp_timer, @object
	.size	tcp_timer, 1
tcp_timer:
	.zero	1
	.section	.sbss.tcp_timer_ctr,"aw",@nobits
	.type	tcp_timer_ctr, @object
	.size	tcp_timer_ctr, 1
tcp_timer_ctr:
	.zero	1
	.section	.text.tcp_init,"ax",@progbits
	.align	1
	.globl	tcp_init
	.type	tcp_init, @function
tcp_init:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/tcp.c"
	.loc 1 202 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 204 33
	call	bl_rand
	mv	a5,a0
	.loc 1 204 45 discriminator 1
	slli	a4,a5,16
	srli	a4,a4,16
	li	a5,16384
	addi	a5,a5,-1
	and	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 204 15 discriminator 1
	li	a5,-16384
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 204 12 discriminator 1
	lui	a5,%hi(tcp_port)
	sh	a4,%lo(tcp_port)(a5)
	.loc 1 206 1
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
.LFE5:
	.size	tcp_init, .-tcp_init
	.section	.text.tcp_free,"ax",@progbits
	.align	1
	.globl	tcp_free
	.type	tcp_free, @function
tcp_free:
.LFB6:
	.loc 1 211 1
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
	.loc 1 216 3
	lw	a1,-20(s0)
	li	a0,2
	call	memp_free
	.loc 1 217 1
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
.LFE6:
	.size	tcp_free, .-tcp_free
	.section	.text.tcp_free_listen,"ax",@progbits
	.align	1
	.type	tcp_free_listen, @function
tcp_free_listen:
.LFB7:
	.loc 1 222 1
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
	.loc 1 227 3
	lw	a1,-20(s0)
	li	a0,3
	call	memp_free
	.loc 1 228 1
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
.LFE7:
	.size	tcp_free_listen, .-tcp_free_listen
	.section	.text.tcp_tmr,"ax",@progbits
	.align	1
	.globl	tcp_tmr
	.type	tcp_tmr, @function
tcp_tmr:
.LFB8:
	.loc 1 235 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 237 3
	call	tcp_fasttmr
	.loc 1 239 7
	lui	a5,%hi(tcp_timer)
	lbu	a5,%lo(tcp_timer)(a5)
	addi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 239 6
	lui	a5,%hi(tcp_timer)
	sb	a4,%lo(tcp_timer)(a5)
	.loc 1 239 7
	lui	a5,%hi(tcp_timer)
	lbu	a5,%lo(tcp_timer)(a5)
	.loc 1 239 19
	andi	a5,a5,1
	.loc 1 239 6
	beq	a5,zero,.L6
	.loc 1 242 5
	call	tcp_slowtmr
.L6:
	.loc 1 244 1
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
.LFE8:
	.size	tcp_tmr, .-tcp_tmr
	.section	.text.tcp_remove_listener,"ax",@progbits
	.align	1
	.type	tcp_remove_listener, @function
tcp_remove_listener:
.LFB9:
	.loc 1 252 1
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
	.loc 1 257 12
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 257 3
	j	.L8
.L10:
	.loc 1 258 12
	lw	a5,-20(s0)
	lw	a5,124(a5)
	.loc 1 258 8
	lw	a4,-40(s0)
	bne	a4,a5,.L9
	.loc 1 259 21
	lw	a5,-20(s0)
	sw	zero,124(a5)
.L9:
	.loc 1 257 36 discriminator 2
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L8:
	.loc 1 257 24 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L10
	.loc 1 262 1
	nop
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
	.size	tcp_remove_listener, .-tcp_remove_listener
	.section	.text.tcp_listen_closed,"ax",@progbits
	.align	1
	.type	tcp_listen_closed, @function
tcp_listen_closed:
.LFB10:
	.loc 1 270 1
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
	.loc 1 275 10
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 275 3
	j	.L12
.L13:
	.loc 1 276 39
	lui	a5,%hi(tcp_pcb_lists)
	addi	a4,a5,%lo(tcp_pcb_lists)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 276 5
	lw	a5,0(a5)
	lw	a1,-36(s0)
	mv	a0,a5
	call	tcp_remove_listener
	.loc 1 275 72 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L12:
	.loc 1 275 17 discriminator 1
	lw	a4,-20(s0)
	li	a5,3
	bleu	a4,a5,.L13
	.loc 1 280 1
	nop
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
	.size	tcp_listen_closed, .-tcp_listen_closed
	.section	.text.tcp_close_shutdown,"ax",@progbits
	.align	1
	.type	tcp_close_shutdown, @function
tcp_close_shutdown:
.LFB11:
	.loc 1 349 1
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
	.loc 1 352 6
	lbu	a5,-37(s0)
	beq	a5,zero,.L15
	.loc 1 352 35 discriminator 1
	lw	a5,-36(s0)
	lbu	a4,20(a5)
	.loc 1 352 27 discriminator 1
	li	a5,4
	beq	a4,a5,.L16
	.loc 1 352 66 discriminator 2
	lw	a5,-36(s0)
	lbu	a4,20(a5)
	.loc 1 352 59 discriminator 2
	li	a5,7
	bne	a4,a5,.L15
.L16:
	.loc 1 353 13
	lw	a5,-36(s0)
	lw	a5,120(a5)
	.loc 1 353 8
	bne	a5,zero,.L17
	.loc 1 353 43 discriminator 1
	lw	a5,-36(s0)
	lhu	a4,40(a5)
	.loc 1 353 36 discriminator 1
	li	a5,4096
	addi	a5,a5,-2032
	beq	a4,a5,.L15
.L17:
	.loc 1 360 7
	lw	a5,-36(s0)
	lw	a1,80(a5)
	lw	a5,-36(s0)
	lw	a2,36(a5)
	.loc 1 360 48
	lw	a3,-36(s0)
	.loc 1 360 64
	lw	a5,-36(s0)
	addi	a4,a5,4
	.loc 1 360 7
	lw	a5,-36(s0)
	lhu	a0,22(a5)
	lw	a5,-36(s0)
	lhu	a5,24(a5)
	mv	a6,a5
	mv	a5,a0
	lw	a0,-36(s0)
	call	tcp_rst
	.loc 1 363 7
	lw	a0,-36(s0)
	call	tcp_pcb_purge
	.loc 1 364 40
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	.loc 1 364 19
	lw	a4,-36(s0)
	bne	a4,a5,.L18
	.loc 1 364 95 discriminator 1
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	lw	a4,12(a5)
	.loc 1 364 74 discriminator 1
	lui	a5,%hi(tcp_active_pcbs)
	sw	a4,%lo(tcp_active_pcbs)(a5)
	j	.L19
.L18:
.LBB2:
	.loc 1 364 158 discriminator 2
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	sw	a5,-20(s0)
	.loc 1 364 141
	j	.L20
.L22:
	.loc 1 364 57 discriminator 9
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 364 45 discriminator 9
	lw	a4,-36(s0)
	bne	a4,a5,.L21
	.loc 1 364 101 discriminator 5
	lw	a5,-36(s0)
	lw	a4,12(a5)
	.loc 1 364 94 discriminator 5
	lw	a5,-20(s0)
	sw	a4,12(a5)
	.loc 1 364 109
	j	.L19
.L21:
	.loc 1 364 20 discriminator 6
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L20:
	.loc 1 364 191 discriminator 8
	lw	a5,-20(s0)
	bne	a5,zero,.L22
.L19:
.LBE2:
	.loc 1 364 134 discriminator 10
	lw	a5,-36(s0)
	sw	zero,12(a5)
	.loc 1 364 44 discriminator 10
	lui	a5,%hi(tcp_active_pcbs_changed)
	li	a4,1
	sb	a4,%lo(tcp_active_pcbs_changed)(a5)
	.loc 1 366 25
	lui	a5,%hi(tcp_input_pcb)
	lw	a5,%lo(tcp_input_pcb)(a5)
	.loc 1 366 10
	lw	a4,-36(s0)
	bne	a4,a5,.L23
	.loc 1 368 9
	call	tcp_trigger_input_pcb_close
	j	.L24
.L23:
	.loc 1 370 9
	lw	a0,-36(s0)
	call	tcp_free
.L24:
	.loc 1 372 14
	li	a5,0
	j	.L25
.L15:
	.loc 1 378 14
	lw	a5,-36(s0)
	lbu	a5,20(a5)
	.loc 1 378 3
	li	a4,2
	beq	a5,a4,.L26
	li	a4,2
	bgt	a5,a4,.L27
	beq	a5,zero,.L28
	li	a4,1
	beq	a5,a4,.L29
	j	.L27
.L28:
	.loc 1 387 14
	lw	a5,-36(s0)
	lhu	a5,22(a5)
	.loc 1 387 10
	beq	a5,zero,.L30
	.loc 1 388 36
	lui	a5,%hi(tcp_bound_pcbs)
	lw	a5,%lo(tcp_bound_pcbs)(a5)
	.loc 1 388 16
	lw	a4,-36(s0)
	bne	a4,a5,.L31
	.loc 1 388 89 discriminator 1
	lui	a5,%hi(tcp_bound_pcbs)
	lw	a5,%lo(tcp_bound_pcbs)(a5)
	lw	a4,12(a5)
	.loc 1 388 69 discriminator 1
	lui	a5,%hi(tcp_bound_pcbs)
	sw	a4,%lo(tcp_bound_pcbs)(a5)
	j	.L32
.L31:
.LBB3:
	.loc 1 388 152 discriminator 2
	lui	a5,%hi(tcp_bound_pcbs)
	lw	a5,%lo(tcp_bound_pcbs)(a5)
	sw	a5,-24(s0)
	.loc 1 388 135
	j	.L33
.L35:
	.loc 1 388 59 discriminator 9
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 1 388 47 discriminator 9
	lw	a4,-36(s0)
	bne	a4,a5,.L34
	.loc 1 388 103 discriminator 5
	lw	a5,-36(s0)
	lw	a4,12(a5)
	.loc 1 388 96 discriminator 5
	lw	a5,-24(s0)
	sw	a4,12(a5)
	.loc 1 388 111
	j	.L32
.L34:
	.loc 1 388 22 discriminator 6
	lw	a5,-24(s0)
	lw	a5,12(a5)
	sw	a5,-24(s0)
.L33:
	.loc 1 388 184 discriminator 8
	lw	a5,-24(s0)
	bne	a5,zero,.L35
.L32:
.LBE3:
	.loc 1 388 136 discriminator 10
	lw	a5,-36(s0)
	sw	zero,12(a5)
.L30:
	.loc 1 390 7
	lw	a0,-36(s0)
	call	tcp_free
	.loc 1 391 7
	j	.L36
.L29:
	.loc 1 393 7
	lw	a0,-36(s0)
	call	tcp_listen_closed
	.loc 1 394 7
	lw	a1,-36(s0)
	lui	a5,%hi(tcp_listen_pcbs)
	addi	a0,a5,%lo(tcp_listen_pcbs)
	call	tcp_pcb_remove
	.loc 1 395 7
	lw	a0,-36(s0)
	call	tcp_free_listen
	.loc 1 396 7
	j	.L36
.L26:
	.loc 1 398 12
	lw	a1,-36(s0)
	lui	a5,%hi(tcp_active_pcbs)
	addi	a0,a5,%lo(tcp_active_pcbs)
	call	tcp_pcb_remove
	.loc 1 398 75 discriminator 1
	lui	a5,%hi(tcp_active_pcbs_changed)
	li	a4,1
	sb	a4,%lo(tcp_active_pcbs_changed)(a5)
	.loc 1 399 7
	lw	a0,-36(s0)
	call	tcp_free
	.loc 1 401 7
	j	.L36
.L27:
	.loc 1 403 14
	lw	a0,-36(s0)
	call	tcp_close_shutdown_fin
	mv	a5,a0
	j	.L25
.L36:
	.loc 1 405 10
	li	a5,0
.L25:
	.loc 1 406 1
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
	.size	tcp_close_shutdown, .-tcp_close_shutdown
	.section	.text.tcp_close_shutdown_fin,"ax",@progbits
	.align	1
	.type	tcp_close_shutdown_fin, @function
tcp_close_shutdown_fin:
.LFB12:
	.loc 1 410 1
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
	.loc 1 414 14
	lw	a5,-36(s0)
	lbu	a5,20(a5)
	.loc 1 414 3
	li	a4,7
	beq	a5,a4,.L38
	li	a4,7
	bgt	a5,a4,.L39
	li	a4,3
	beq	a5,a4,.L40
	li	a4,4
	beq	a5,a4,.L41
	j	.L39
.L40:
	.loc 1 416 13
	lw	a0,-36(s0)
	call	tcp_send_fin
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 417 10
	lb	a5,-17(s0)
	bne	a5,zero,.L49
	.loc 1 420 20
	lw	a5,-36(s0)
	li	a4,5
	sb	a4,20(a5)
	.loc 1 422 7
	j	.L49
.L41:
	.loc 1 424 13
	lw	a0,-36(s0)
	call	tcp_send_fin
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 425 10
	lb	a5,-17(s0)
	bne	a5,zero,.L50
	.loc 1 427 20
	lw	a5,-36(s0)
	li	a4,5
	sb	a4,20(a5)
	.loc 1 429 7
	j	.L50
.L38:
	.loc 1 431 13
	lw	a0,-36(s0)
	call	tcp_send_fin
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 432 10
	lb	a5,-17(s0)
	bne	a5,zero,.L51
	.loc 1 434 20
	lw	a5,-36(s0)
	li	a4,9
	sb	a4,20(a5)
	.loc 1 436 7
	j	.L51
.L39:
	.loc 1 439 14
	li	a5,0
	j	.L46
.L49:
	.loc 1 422 7
	nop
	j	.L43
.L50:
	.loc 1 429 7
	nop
	j	.L43
.L51:
	.loc 1 436 7
	nop
.L43:
	.loc 1 442 6
	lb	a5,-17(s0)
	bne	a5,zero,.L47
	.loc 1 448 5
	lw	a0,-36(s0)
	call	tcp_output
	j	.L48
.L47:
	.loc 1 449 13
	lb	a4,-17(s0)
	li	a5,-1
	bne	a4,a5,.L48
	.loc 1 451 43
	lw	a5,-36(s0)
	lhu	a5,26(a5)
	.loc 1 451 25
	ori	a5,a5,8
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 451 23
	lw	a5,-36(s0)
	sh	a4,26(a5)
	.loc 1 457 12
	li	a5,0
	j	.L46
.L48:
	.loc 1 459 10
	lb	a5,-17(s0)
.L46:
	.loc 1 460 1
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
	.size	tcp_close_shutdown_fin, .-tcp_close_shutdown_fin
	.section	.text.tcp_close,"ax",@progbits
	.align	1
	.globl	tcp_close
	.type	tcp_close, @function
tcp_close:
.LFB13:
	.loc 1 485 1
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
	.loc 1 488 11
	lw	a5,-20(s0)
	bne	a5,zero,.L53
	.loc 1 488 16 discriminator 1
	li	a5,-16
	.loc 1 488 16 is_stmt 0
	j	.L54
.L53:
	.loc 1 493 10 is_stmt 1
	lw	a5,-20(s0)
	lbu	a4,20(a5)
	.loc 1 493 6
	li	a5,1
	beq	a4,a5,.L55
	.loc 1 495 43
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 495 25
	ori	a5,a5,16
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 495 23
	lw	a5,-20(s0)
	sh	a4,26(a5)
.L55:
	.loc 1 498 10
	li	a1,1
	lw	a0,-20(s0)
	call	tcp_close_shutdown
	mv	a5,a0
.L54:
	.loc 1 499 1
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
	.size	tcp_close, .-tcp_close
	.section	.text.tcp_shutdown,"ax",@progbits
	.align	1
	.globl	tcp_shutdown
	.type	tcp_shutdown, @function
tcp_shutdown:
.LFB14:
	.loc 1 516 1
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
	.loc 1 519 11
	lw	a5,-20(s0)
	bne	a5,zero,.L57
	.loc 1 519 16 discriminator 1
	li	a5,-16
	.loc 1 519 16 is_stmt 0
	j	.L58
.L57:
	.loc 1 521 10 is_stmt 1
	lw	a5,-20(s0)
	lbu	a4,20(a5)
	.loc 1 521 6
	li	a5,1
	bne	a4,a5,.L59
	.loc 1 522 12
	li	a5,-11
	j	.L58
.L59:
	.loc 1 524 6
	lw	a5,-24(s0)
	beq	a5,zero,.L60
	.loc 1 526 43
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 526 25
	ori	a5,a5,16
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 526 23
	lw	a5,-20(s0)
	sh	a4,26(a5)
	.loc 1 527 8
	lw	a5,-28(s0)
	beq	a5,zero,.L61
	.loc 1 529 14
	li	a1,1
	lw	a0,-20(s0)
	call	tcp_close_shutdown
	mv	a5,a0
	j	.L58
.L61:
	.loc 1 532 12
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 1 532 8
	beq	a5,zero,.L60
	.loc 1 533 7
	lw	a5,-20(s0)
	lw	a5,120(a5)
	mv	a0,a5
	call	pbuf_free
	.loc 1 534 25
	lw	a5,-20(s0)
	sw	zero,120(a5)
.L60:
	.loc 1 537 6
	lw	a5,-28(s0)
	beq	a5,zero,.L62
	.loc 1 540 16
	lw	a5,-20(s0)
	lbu	a5,20(a5)
	.loc 1 540 5
	li	a4,4
	bgt	a5,a4,.L63
	li	a4,3
	bge	a5,a4,.L64
	j	.L65
.L63:
	li	a4,7
	bne	a5,a4,.L65
.L64:
	.loc 1 544 16
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-20(s0)
	call	tcp_close_shutdown
	mv	a5,a0
	j	.L58
.L65:
	.loc 1 548 16
	li	a5,-11
	j	.L58
.L62:
	.loc 1 551 10
	li	a5,0
.L58:
	.loc 1 552 1
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
	.size	tcp_shutdown, .-tcp_shutdown
	.section	.text.tcp_abandon,"ax",@progbits
	.align	1
	.globl	tcp_abandon
	.type	tcp_abandon, @function
tcp_abandon:
.LFB15:
	.loc 1 564 1
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
	.loc 1 573 11
	lw	a5,-52(s0)
	beq	a5,zero,.L81
	.loc 1 581 10
	lw	a5,-52(s0)
	lbu	a4,20(a5)
	.loc 1 581 6
	li	a5,10
	bne	a4,a5,.L69
	.loc 1 582 5
	lw	a1,-52(s0)
	lui	a5,%hi(tcp_tw_pcbs)
	addi	a0,a5,%lo(tcp_tw_pcbs)
	call	tcp_pcb_remove
	.loc 1 583 5
	lw	a0,-52(s0)
	call	tcp_free
	j	.L66
.L69:
.LBB4:
	.loc 1 585 9
	sw	zero,-20(s0)
	.loc 1 586 11
	sh	zero,-22(s0)
	.loc 1 588 11
	lw	a5,-52(s0)
	lw	a5,80(a5)
	sw	a5,-32(s0)
	.loc 1 589 11
	lw	a5,-52(s0)
	lw	a5,36(a5)
	sw	a5,-36(s0)
	.loc 1 591 10
	lw	a5,-52(s0)
	lw	a5,144(a5)
	sw	a5,-40(s0)
	.loc 1 593 14
	lw	a5,-52(s0)
	lw	a5,16(a5)
	sw	a5,-44(s0)
	.loc 1 594 12
	lw	a5,-52(s0)
	lbu	a5,20(a5)
	.loc 1 594 8
	bne	a5,zero,.L70
	.loc 1 595 14
	lw	a5,-52(s0)
	lhu	a5,22(a5)
	.loc 1 595 10
	beq	a5,zero,.L71
	.loc 1 597 36
	lui	a5,%hi(tcp_bound_pcbs)
	lw	a5,%lo(tcp_bound_pcbs)(a5)
	.loc 1 597 16
	lw	a4,-52(s0)
	bne	a4,a5,.L72
	.loc 1 597 89 discriminator 1
	lui	a5,%hi(tcp_bound_pcbs)
	lw	a5,%lo(tcp_bound_pcbs)(a5)
	lw	a4,12(a5)
	.loc 1 597 69 discriminator 1
	lui	a5,%hi(tcp_bound_pcbs)
	sw	a4,%lo(tcp_bound_pcbs)(a5)
	j	.L73
.L72:
.LBB5:
	.loc 1 597 152 discriminator 2
	lui	a5,%hi(tcp_bound_pcbs)
	lw	a5,%lo(tcp_bound_pcbs)(a5)
	sw	a5,-28(s0)
	.loc 1 597 135
	j	.L74
.L76:
	.loc 1 597 59 discriminator 9
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 597 47 discriminator 9
	lw	a4,-52(s0)
	bne	a4,a5,.L75
	.loc 1 597 103 discriminator 5
	lw	a5,-52(s0)
	lw	a4,12(a5)
	.loc 1 597 96 discriminator 5
	lw	a5,-28(s0)
	sw	a4,12(a5)
	.loc 1 597 111
	j	.L73
.L75:
	.loc 1 597 22 discriminator 6
	lw	a5,-28(s0)
	lw	a5,12(a5)
	sw	a5,-28(s0)
.L74:
	.loc 1 597 184 discriminator 8
	lw	a5,-28(s0)
	bne	a5,zero,.L76
.L73:
.LBE5:
	.loc 1 597 136 discriminator 10
	lw	a5,-52(s0)
	sw	zero,12(a5)
	j	.L71
.L70:
	.loc 1 600 16
	lw	a5,-56(s0)
	sw	a5,-20(s0)
	.loc 1 601 18
	lw	a5,-52(s0)
	lhu	a5,22(a5)
	sh	a5,-22(s0)
	.loc 1 602 12
	lw	a1,-52(s0)
	lui	a5,%hi(tcp_active_pcbs)
	addi	a0,a5,%lo(tcp_active_pcbs)
	call	tcp_pcb_remove
	.loc 1 602 75 discriminator 1
	lui	a5,%hi(tcp_active_pcbs_changed)
	li	a4,1
	sb	a4,%lo(tcp_active_pcbs_changed)(a5)
.L71:
	.loc 1 604 12
	lw	a5,-52(s0)
	lw	a5,112(a5)
	.loc 1 604 8
	beq	a5,zero,.L77
	.loc 1 605 7
	lw	a5,-52(s0)
	lw	a5,112(a5)
	mv	a0,a5
	call	tcp_segs_free
.L77:
	.loc 1 607 12
	lw	a5,-52(s0)
	lw	a5,108(a5)
	.loc 1 607 8
	beq	a5,zero,.L78
	.loc 1 608 7
	lw	a5,-52(s0)
	lw	a5,108(a5)
	mv	a0,a5
	call	tcp_segs_free
.L78:
	.loc 1 611 12
	lw	a5,-52(s0)
	lw	a5,116(a5)
	.loc 1 611 8
	beq	a5,zero,.L79
	.loc 1 612 7
	lw	a5,-52(s0)
	lw	a5,116(a5)
	mv	a0,a5
	call	tcp_segs_free
.L79:
	.loc 1 616 8
	lw	a5,-20(s0)
	beq	a5,zero,.L80
	.loc 1 618 34
	lw	a3,-52(s0)
	.loc 1 618 50
	lw	a5,-52(s0)
	addi	a4,a5,4
	.loc 1 618 7
	lw	a5,-52(s0)
	lhu	a2,24(a5)
	lhu	a5,-22(s0)
	mv	a6,a2
	lw	a2,-36(s0)
	lw	a1,-32(s0)
	lw	a0,-52(s0)
	call	tcp_rst
.L80:
	.loc 1 620 16
	lw	a5,-52(s0)
	lbu	a5,20(a5)
	sb	a5,-45(s0)
	.loc 1 621 5
	lw	a0,-52(s0)
	call	tcp_free
	.loc 1 622 30
	lw	a5,-40(s0)
	beq	a5,zero,.L66
	.loc 1 622 6 discriminator 1
	lw	a5,-40(s0)
	li	a1,-13
	lw	a0,-44(s0)
	jalr	a5
.LVL0:
	j	.L66
.L81:
.LBE4:
	.loc 1 573 9
	nop
.L66:
	.loc 1 624 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	tcp_abandon, .-tcp_abandon
	.section	.text.tcp_abort,"ax",@progbits
	.align	1
	.globl	tcp_abort
	.type	tcp_abort, @function
tcp_abort:
.LFB16:
	.loc 1 639 1
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
	.loc 1 640 3
	li	a1,1
	lw	a0,-20(s0)
	call	tcp_abandon
	.loc 1 641 1
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
.LFE16:
	.size	tcp_abort, .-tcp_abort
	.section	.text.tcp_bind,"ax",@progbits
	.align	1
	.globl	tcp_bind
	.type	tcp_bind, @function
tcp_bind:
.LFB17:
	.loc 1 663 1
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
	.loc 1 665 7
	li	a5,4
	sw	a5,-24(s0)
	.loc 1 675 6
	lw	a5,-40(s0)
	bne	a5,zero,.L84
	.loc 1 676 12
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
	sw	a5,-40(s0)
.L84:
	.loc 1 682 11
	lw	a5,-36(s0)
	bne	a5,zero,.L85
	.loc 1 682 16 discriminator 1
	li	a5,-16
	.loc 1 682 16 is_stmt 0
	j	.L86
.L85:
	.loc 1 684 17 is_stmt 1
	lw	a5,-36(s0)
	lbu	a5,20(a5)
	.loc 1 684 11
	beq	a5,zero,.L87
	.loc 1 684 48 discriminator 1
	li	a5,-6
	.loc 1 684 48 is_stmt 0
	j	.L86
.L87:
	.loc 1 692 13 is_stmt 1
	lw	a5,-36(s0)
	lbu	a5,9(a5)
	.loc 1 692 26
	andi	a5,a5,4
	.loc 1 692 6
	beq	a5,zero,.L88
	.loc 1 693 18
	li	a5,3
	sw	a5,-24(s0)
.L88:
	.loc 1 709 6
	lhu	a5,-42(s0)
	bne	a5,zero,.L89
	.loc 1 710 12
	call	tcp_new_port
	mv	a5,a0
	sh	a5,-42(s0)
	.loc 1 711 8
	lhu	a5,-42(s0)
	bne	a5,zero,.L90
	.loc 1 712 14
	li	a5,-2
	j	.L86
.L89:
	.loc 1 716 12
	sw	zero,-20(s0)
	.loc 1 716 5
	j	.L91
.L97:
	.loc 1 717 33
	lui	a5,%hi(tcp_pcb_lists)
	addi	a4,a5,%lo(tcp_pcb_lists)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 717 17
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 717 7
	j	.L92
.L96:
	.loc 1 718 17
	lw	a5,-28(s0)
	lhu	a5,22(a5)
	.loc 1 718 12
	lhu	a4,-42(s0)
	bne	a4,a5,.L93
	.loc 1 723 22
	lw	a5,-36(s0)
	lbu	a5,9(a5)
	.loc 1 723 35
	andi	a5,a5,4
	.loc 1 723 14
	beq	a5,zero,.L94
	.loc 1 724 23
	lw	a5,-28(s0)
	lbu	a5,9(a5)
	.loc 1 724 36
	andi	a5,a5,4
	.loc 1 723 46 discriminator 1
	bne	a5,zero,.L93
.L94:
	.loc 1 729 20
	lw	a5,-28(s0)
	.loc 1 728 16
	beq	a5,zero,.L95
	.loc 1 729 41
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 729 17
	beq	a5,zero,.L95
	.loc 1 729 74 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L95
	.loc 1 730 32
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 730 17
	beq	a5,zero,.L95
	.loc 1 731 36
	lw	a5,-28(s0)
	lw	a4,0(a5)
	.loc 1 731 54
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 728 26
	bne	a4,a5,.L93
.L95:
	.loc 1 732 22
	li	a5,-8
	j	.L86
.L93:
	.loc 1 717 56 discriminator 2
	lw	a5,-28(s0)
	lw	a5,12(a5)
	sw	a5,-28(s0)
.L92:
	.loc 1 717 43 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L96
	.loc 1 716 36 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L91:
	.loc 1 716 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	blt	a4,a5,.L97
.L90:
	.loc 1 740 6
	lw	a5,-40(s0)
	beq	a5,zero,.L98
	.loc 1 740 22 discriminator 1
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 740 7 discriminator 1
	beq	a5,zero,.L98
	.loc 1 745 8
	lw	a5,-40(s0)
	beq	a5,zero,.L99
	.loc 1 745 8 is_stmt 0 discriminator 1
	lw	a5,-40(s0)
	lw	a5,0(a5)
	j	.L100
.L99:
	.loc 1 745 8 discriminator 2
	li	a5,0
.L100:
	.loc 1 745 29 is_stmt 1 discriminator 4
	lw	a4,-36(s0)
	sw	a5,0(a4)
.L98:
	.loc 1 747 19
	lw	a5,-36(s0)
	lhu	a4,-42(s0)
	sh	a4,22(a5)
	.loc 1 748 20
	lui	a5,%hi(tcp_bound_pcbs)
	lw	a4,%lo(tcp_bound_pcbs)(a5)
	lw	a5,-36(s0)
	sw	a4,12(a5)
	.loc 1 748 59
	lui	a5,%hi(tcp_bound_pcbs)
	lw	a4,-36(s0)
	sw	a4,%lo(tcp_bound_pcbs)(a5)
	.loc 1 748 68
	call	tcp_timer_needed
	.loc 1 750 10
	li	a5,0
.L86:
	.loc 1 751 1
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
.LFE17:
	.size	tcp_bind, .-tcp_bind
	.section	.text.tcp_bind_netif,"ax",@progbits
	.align	1
	.globl	tcp_bind_netif
	.type	tcp_bind_netif, @function
tcp_bind_netif:
.LFB18:
	.loc 1 765 1
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
	.loc 1 767 6
	lw	a5,-24(s0)
	beq	a5,zero,.L102
	.loc 1 768 37
	lw	a5,-24(s0)
	lbu	a5,72(a5)
	.loc 1 768 23
	addi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 768 20
	lw	a5,-20(s0)
	sb	a4,8(a5)
	.loc 1 772 1
	j	.L104
.L102:
	.loc 1 770 20
	lw	a5,-20(s0)
	sb	zero,8(a5)
.L104:
	.loc 1 772 1
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
	.size	tcp_bind_netif, .-tcp_bind_netif
	.section	.text.tcp_accept_null,"ax",@progbits
	.align	1
	.type	tcp_accept_null, @function
tcp_accept_null:
.LFB19:
	.loc 1 780 1
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
	mv	a5,a2
	sb	a5,-25(s0)
	.loc 1 786 3
	lw	a0,-24(s0)
	call	tcp_abort
	.loc 1 788 10
	li	a5,-13
	.loc 1 789 1
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
.LFE19:
	.size	tcp_accept_null, .-tcp_accept_null
	.section	.text.tcp_listen_with_backlog,"ax",@progbits
	.align	1
	.globl	tcp_listen_with_backlog
	.type	tcp_listen_with_backlog, @function
tcp_listen_with_backlog:
.LFB20:
	.loc 1 827 1
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
	.loc 1 829 10
	lbu	a5,-21(s0)
	li	a2,0
	mv	a1,a5
	lw	a0,-20(s0)
	call	tcp_listen_with_backlog_and_err
	mv	a5,a0
	.loc 1 830 1
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
	.size	tcp_listen_with_backlog, .-tcp_listen_with_backlog
	.section	.text.tcp_listen_with_backlog_and_err,"ax",@progbits
	.align	1
	.globl	tcp_listen_with_backlog_and_err
	.type	tcp_listen_with_backlog_and_err, @function
tcp_listen_with_backlog_and_err:
.LFB21:
	.loc 1 850 1
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
	.loc 1 851 26
	sw	zero,-20(s0)
	.loc 1 858 11
	lw	a5,-36(s0)
	bne	a5,zero,.L110
	.loc 1 858 13 discriminator 1
	li	a5,-16
	sb	a5,-21(s0)
	.loc 1 858 24
	j	.L111
.L110:
	.loc 1 859 17
	lw	a5,-36(s0)
	lbu	a5,20(a5)
	.loc 1 859 11
	beq	a5,zero,.L112
	.loc 1 859 45 discriminator 1
	li	a5,-15
	sb	a5,-21(s0)
	.loc 1 859 57
	j	.L111
.L112:
	.loc 1 862 10
	lw	a5,-36(s0)
	lbu	a4,20(a5)
	.loc 1 862 6
	li	a5,1
	bne	a4,a5,.L113
	.loc 1 863 10
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 864 9
	li	a5,-9
	sb	a5,-21(s0)
	.loc 1 865 5
	j	.L111
.L113:
	.loc 1 868 13
	lw	a5,-36(s0)
	lbu	a5,9(a5)
	.loc 1 868 26
	andi	a5,a5,4
	.loc 1 868 6
	beq	a5,zero,.L114
	.loc 1 872 15
	lui	a5,%hi(tcp_listen_pcbs)
	lw	a5,%lo(tcp_listen_pcbs)(a5)
	sw	a5,-20(s0)
	.loc 1 872 5
	j	.L115
.L117:
	.loc 1 873 16
	lw	a5,-20(s0)
	lhu	a4,22(a5)
	.loc 1 873 35
	lw	a5,-36(s0)
	lhu	a5,22(a5)
	.loc 1 873 10
	bne	a4,a5,.L116
	.loc 1 874 29
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 874 55
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 873 49 discriminator 1
	bne	a4,a5,.L116
	.loc 1 876 14
	sw	zero,-20(s0)
	.loc 1 877 13
	li	a5,-8
	sb	a5,-21(s0)
	.loc 1 878 9
	j	.L111
.L116:
	.loc 1 872 64 discriminator 2
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L115:
	.loc 1 872 51 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L117
.L114:
	.loc 1 883 35
	li	a0,3
	call	memp_malloc
	sw	a0,-20(s0)
	.loc 1 884 6
	lw	a5,-20(s0)
	bne	a5,zero,.L118
	.loc 1 885 9
	li	a5,-1
	sb	a5,-21(s0)
	.loc 1 886 5
	j	.L111
.L118:
	.loc 1 888 27
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 1 888 22
	lw	a5,-20(s0)
	sw	a4,16(a5)
	.loc 1 889 25
	lw	a5,-36(s0)
	lhu	a4,22(a5)
	.loc 1 889 20
	lw	a5,-20(s0)
	sh	a4,22(a5)
	.loc 1 890 15
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,20(a5)
	.loc 1 891 19
	lw	a5,-36(s0)
	lbu	a4,21(a5)
	.loc 1 891 14
	lw	a5,-20(s0)
	sb	a4,21(a5)
	.loc 1 892 25
	lw	a5,-36(s0)
	lbu	a4,9(a5)
	.loc 1 892 20
	lw	a5,-20(s0)
	sb	a4,9(a5)
	.loc 1 893 24
	lw	a5,-36(s0)
	lbu	a4,8(a5)
	.loc 1 893 19
	lw	a5,-20(s0)
	sb	a4,8(a5)
	.loc 1 894 18
	lw	a5,-36(s0)
	lbu	a4,11(a5)
	.loc 1 894 13
	lw	a5,-20(s0)
	sb	a4,11(a5)
	.loc 1 895 18
	lw	a5,-36(s0)
	lbu	a4,10(a5)
	.loc 1 895 13
	lw	a5,-20(s0)
	sb	a4,10(a5)
	.loc 1 902 43
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 902 26
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 903 10
	lw	a5,-36(s0)
	lhu	a5,22(a5)
	.loc 1 903 6
	beq	a5,zero,.L119
	.loc 1 904 32
	lui	a5,%hi(tcp_bound_pcbs)
	lw	a5,%lo(tcp_bound_pcbs)(a5)
	.loc 1 904 12
	lw	a4,-36(s0)
	bne	a4,a5,.L120
	.loc 1 904 85 discriminator 1
	lui	a5,%hi(tcp_bound_pcbs)
	lw	a5,%lo(tcp_bound_pcbs)(a5)
	lw	a4,12(a5)
	.loc 1 904 65 discriminator 1
	lui	a5,%hi(tcp_bound_pcbs)
	sw	a4,%lo(tcp_bound_pcbs)(a5)
	j	.L121
.L120:
.LBB6:
	.loc 1 904 148 discriminator 2
	lui	a5,%hi(tcp_bound_pcbs)
	lw	a5,%lo(tcp_bound_pcbs)(a5)
	sw	a5,-28(s0)
	.loc 1 904 131
	j	.L122
.L124:
	.loc 1 904 55 discriminator 9
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 904 43 discriminator 9
	lw	a4,-36(s0)
	bne	a4,a5,.L123
	.loc 1 904 99 discriminator 5
	lw	a5,-36(s0)
	lw	a4,12(a5)
	.loc 1 904 92 discriminator 5
	lw	a5,-28(s0)
	sw	a4,12(a5)
	.loc 1 904 107
	j	.L121
.L123:
	.loc 1 904 18 discriminator 6
	lw	a5,-28(s0)
	lw	a5,12(a5)
	sw	a5,-28(s0)
.L122:
	.loc 1 904 180 discriminator 8
	lw	a5,-28(s0)
	bne	a5,zero,.L124
.L121:
.LBE6:
	.loc 1 904 132 discriminator 10
	lw	a5,-36(s0)
	sw	zero,12(a5)
.L119:
	.loc 1 910 3
	lw	a0,-36(s0)
	call	tcp_free
	.loc 1 912 16
	lw	a5,-20(s0)
	lui	a4,%hi(tcp_accept_null)
	addi	a4,a4,%lo(tcp_accept_null)
	sw	a4,24(a5)
	.loc 1 918 41
	lui	a5,%hi(tcp_listen_pcbs)
	lw	a4,%lo(tcp_listen_pcbs)(a5)
	.loc 1 918 39
	lw	a5,-20(s0)
	sw	a4,12(a5)
	.loc 1 918 90
	lui	a5,%hi(tcp_listen_pcbs)
	lw	a4,-20(s0)
	sw	a4,%lo(tcp_listen_pcbs)(a5)
	.loc 1 918 118
	call	tcp_timer_needed
	.loc 1 919 7
	sb	zero,-21(s0)
.L111:
	.loc 1 921 6
	lw	a5,-44(s0)
	beq	a5,zero,.L125
	.loc 1 922 10
	lw	a5,-44(s0)
	lbu	a4,-21(s0)
	sb	a4,0(a5)
.L125:
	.loc 1 924 10
	lw	a5,-20(s0)
	.loc 1 925 1
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
	.size	tcp_listen_with_backlog_and_err, .-tcp_listen_with_backlog_and_err
	.section	.text.tcp_update_rcv_ann_wnd,"ax",@progbits
	.align	1
	.globl	tcp_update_rcv_ann_wnd
	.type	tcp_update_rcv_ann_wnd, @function
tcp_update_rcv_ann_wnd:
.LFB22:
	.loc 1 935 1
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
	.loc 1 939 23
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 1 939 38
	lw	a4,-36(s0)
	lhu	a4,40(a4)
	.loc 1 939 18
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 941 57
	lw	a5,-36(s0)
	lw	a4,44(a5)
	.loc 1 941 120
	lw	a5,-36(s0)
	lhu	a5,50(a5)
	.loc 1 941 162
	slli	a2,a5,16
	srli	a2,a2,16
	li	a3,1032
	bleu	a2,a3,.L128
	li	a5,1032
.L128:
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 941 46
	add	a5,a4,a5
	.loc 1 941 12
	lw	a4,-20(s0)
	sub	a5,a4,a5
	.loc 1 941 6
	blt	a5,zero,.L129
	.loc 1 943 27
	lw	a5,-36(s0)
	lhu	a4,40(a5)
	.loc 1 943 22
	lw	a5,-36(s0)
	sh	a4,42(a5)
	.loc 1 944 32
	lw	a5,-36(s0)
	lw	a5,44(a5)
	.loc 1 944 27
	lw	a4,-20(s0)
	sub	a5,a4,a5
	j	.L130
.L129:
	.loc 1 946 30
	lw	a5,-36(s0)
	lw	a4,44(a5)
	.loc 1 946 65
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 1 946 11
	sub	a5,a4,a5
	.loc 1 946 8
	bge	a5,zero,.L131
	.loc 1 949 24
	lw	a5,-36(s0)
	sh	zero,42(a5)
	j	.L132
.L131:
.LBB7:
	.loc 1 952 34
	lw	a5,-36(s0)
	lw	a4,44(a5)
	.loc 1 952 60
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 1 952 13
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 956 26
	lw	a5,-24(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 956 24
	lw	a5,-36(s0)
	sh	a4,42(a5)
.L132:
.LBE7:
	.loc 1 958 12
	li	a5,0
.L130:
	.loc 1 960 1
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
.LFE22:
	.size	tcp_update_rcv_ann_wnd, .-tcp_update_rcv_ann_wnd
	.section	.text.tcp_recved,"ax",@progbits
	.align	1
	.globl	tcp_recved
	.type	tcp_recved, @function
tcp_recved:
.LFB23:
	.loc 1 973 1
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
	.loc 1 979 11
	lw	a5,-36(s0)
	beq	a5,zero,.L139
	.loc 1 985 32
	lw	a5,-36(s0)
	lhu	a5,40(a5)
	.loc 1 985 11
	lhu	a4,-38(s0)
	add	a5,a5,a4
	sh	a5,-18(s0)
	.loc 1 986 6
	lhu	a4,-18(s0)
	li	a5,4096
	addi	a5,a5,-2032
	bgtu	a4,a5,.L136
	.loc 1 986 60 discriminator 1
	lw	a5,-36(s0)
	lhu	a5,40(a5)
	.loc 1 986 43 discriminator 1
	lhu	a4,-18(s0)
	bgeu	a4,a5,.L137
.L136:
	.loc 1 989 18
	lw	a5,-36(s0)
	li	a4,4096
	addi	a4,a4,-2032
	sh	a4,40(a5)
	j	.L138
.L137:
	.loc 1 991 18
	lw	a5,-36(s0)
	lhu	a4,-18(s0)
	sh	a4,40(a5)
.L138:
	.loc 1 994 19
	lw	a0,-36(s0)
	call	tcp_update_rcv_ann_wnd
	sw	a0,-24(s0)
	.loc 1 1000 6
	lw	a4,-24(s0)
	li	a5,1031
	bleu	a4,a5,.L133
	.loc 1 1001 43
	lw	a5,-36(s0)
	lhu	a5,26(a5)
	.loc 1 1001 25
	ori	a5,a5,2
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1001 23
	lw	a5,-36(s0)
	sh	a4,26(a5)
	.loc 1 1002 5
	lw	a0,-36(s0)
	call	tcp_output
	j	.L133
.L139:
	.loc 1 979 9
	nop
.L133:
	.loc 1 1007 1
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
	.size	tcp_recved, .-tcp_recved
	.section	.text.tcp_new_port,"ax",@progbits
	.align	1
	.type	tcp_new_port, @function
tcp_new_port:
.LFB24:
	.loc 1 1016 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1018 9
	sh	zero,-20(s0)
.L141:
	.loc 1 1022 11
	lui	a5,%hi(tcp_port)
	lhu	a5,%lo(tcp_port)(a5)
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(tcp_port)
	sh	a4,%lo(tcp_port)(a5)
	.loc 1 1023 16
	lui	a5,%hi(tcp_port)
	lhu	a4,%lo(tcp_port)(a5)
	.loc 1 1023 6
	li	a5,65536
	addi	a5,a5,-1
	bne	a4,a5,.L142
	.loc 1 1024 14
	lui	a5,%hi(tcp_port)
	li	a4,-16384
	sh	a4,%lo(tcp_port)(a5)
.L142:
	.loc 1 1027 10
	sb	zero,-17(s0)
	.loc 1 1027 3
	j	.L143
.L149:
	.loc 1 1028 30
	lbu	a5,-17(s0)
	lui	a4,%hi(tcp_pcb_lists)
	addi	a4,a4,%lo(tcp_pcb_lists)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 1028 14
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1028 5
	j	.L144
.L148:
	.loc 1 1029 14
	lw	a5,-24(s0)
	lhu	a4,22(a5)
	.loc 1 1029 27
	lui	a5,%hi(tcp_port)
	lhu	a5,%lo(tcp_port)(a5)
	.loc 1 1029 10
	bne	a4,a5,.L145
	.loc 1 1030 10
	lhu	a5,-20(s0)
	addi	a5,a5,1
	sh	a5,-20(s0)
	.loc 1 1031 12
	lhu	a4,-20(s0)
	li	a5,16384
	bltu	a4,a5,.L141
	.loc 1 1032 18
	li	a5,0
	j	.L147
.L145:
	.loc 1 1028 51 discriminator 2
	lw	a5,-24(s0)
	lw	a5,12(a5)
	sw	a5,-24(s0)
.L144:
	.loc 1 1028 39 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L148
	.loc 1 1027 23 discriminator 2
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L143:
	.loc 1 1027 17 discriminator 1
	lbu	a4,-17(s0)
	li	a5,3
	bleu	a4,a5,.L149
	.loc 1 1038 10
	lui	a5,%hi(tcp_port)
	lhu	a5,%lo(tcp_port)(a5)
.L147:
	.loc 1 1039 1
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
	.size	tcp_new_port, .-tcp_new_port
	.section	.text.tcp_connect,"ax",@progbits
	.align	1
	.globl	tcp_connect
	.type	tcp_connect, @function
tcp_connect:
.LFB25:
	.loc 1 1073 1
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
	mv	a5,a2
	sw	a3,-64(s0)
	sh	a5,-58(s0)
	.loc 1 1074 17
	sw	zero,-20(s0)
	.loc 1 1081 11
	lw	a5,-52(s0)
	bne	a5,zero,.L151
	.loc 1 1081 16 discriminator 1
	li	a5,-16
	.loc 1 1081 16 is_stmt 0
	j	.L152
.L151:
	.loc 1 1082 11 is_stmt 1
	lw	a5,-56(s0)
	bne	a5,zero,.L153
	.loc 1 1082 16 discriminator 1
	li	a5,-16
	.loc 1 1082 16 is_stmt 0
	j	.L152
.L153:
	.loc 1 1084 17 is_stmt 1
	lw	a5,-52(s0)
	lbu	a5,20(a5)
	.loc 1 1084 11
	beq	a5,zero,.L154
	.loc 1 1084 48 discriminator 1
	li	a5,-10
	.loc 1 1084 48 is_stmt 0
	j	.L152
.L154:
	.loc 1 1087 6 is_stmt 1
	lw	a5,-56(s0)
	beq	a5,zero,.L155
	.loc 1 1087 6 is_stmt 0 discriminator 1
	lw	a5,-56(s0)
	lw	a5,0(a5)
	j	.L156
.L155:
	.loc 1 1087 6 discriminator 2
	li	a5,0
.L156:
	.loc 1 1087 28 is_stmt 1 discriminator 4
	lw	a4,-52(s0)
	sw	a5,4(a4)
	.loc 1 1088 20
	lw	a5,-52(s0)
	lhu	a4,-58(s0)
	sh	a4,24(a5)
	.loc 1 1090 10
	lw	a5,-52(s0)
	lbu	a5,8(a5)
	.loc 1 1090 6
	beq	a5,zero,.L157
	.loc 1 1091 13
	lw	a5,-52(s0)
	lbu	a5,8(a5)
	mv	a0,a5
	call	netif_get_by_index
	sw	a0,-20(s0)
	j	.L158
.L157:
	.loc 1 1094 23
	lw	a5,-52(s0)
	addi	a5,a5,4
	.loc 1 1094 13
	mv	a0,a5
	call	ip4_route
	sw	a0,-20(s0)
.L158:
	.loc 1 1096 6
	lw	a5,-20(s0)
	bne	a5,zero,.L159
	.loc 1 1098 12
	li	a5,-4
	j	.L152
.L159:
	.loc 1 1102 9
	lw	a5,-52(s0)
	.loc 1 1102 6
	beq	a5,zero,.L160
	.loc 1 1102 29 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 1102 6 discriminator 1
	bne	a5,zero,.L161
.L160:
.LBB8:
	.loc 1 1103 76
	lw	a5,-20(s0)
	beq	a5,zero,.L162
	.loc 1 1103 22 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	j	.L163
.L162:
	.loc 1 1103 22 is_stmt 0 discriminator 2
	sw	zero,-24(s0)
.L163:
	.loc 1 1104 8 is_stmt 1
	lw	a5,-24(s0)
	bne	a5,zero,.L164
	.loc 1 1105 14
	li	a5,-4
	j	.L152
.L164:
	.loc 1 1107 40
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 1 1107 27
	lw	a5,-52(s0)
	sw	a4,0(a5)
.L161:
.LBE8:
	.loc 1 1119 18
	lw	a5,-52(s0)
	lhu	a5,22(a5)
	sh	a5,-38(s0)
	.loc 1 1120 10
	lw	a5,-52(s0)
	lhu	a5,22(a5)
	.loc 1 1120 6
	bne	a5,zero,.L165
	.loc 1 1121 23
	call	tcp_new_port
	mv	a5,a0
	mv	a4,a5
	.loc 1 1121 21 discriminator 1
	lw	a5,-52(s0)
	sh	a4,22(a5)
	.loc 1 1122 12
	lw	a5,-52(s0)
	lhu	a5,22(a5)
	.loc 1 1122 8
	bne	a5,zero,.L166
	.loc 1 1123 14
	li	a5,-2
	j	.L152
.L165:
	.loc 1 1127 15
	lw	a5,-52(s0)
	lbu	a5,9(a5)
	.loc 1 1127 28
	andi	a5,a5,4
	.loc 1 1127 8
	beq	a5,zero,.L166
.LBB9:
	.loc 1 1133 14
	li	a5,2
	sw	a5,-32(s0)
	.loc 1 1133 7
	j	.L167
.L171:
	.loc 1 1134 35
	lui	a5,%hi(tcp_pcb_lists)
	addi	a4,a5,%lo(tcp_pcb_lists)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 1134 19
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 1134 9
	j	.L168
.L170:
	.loc 1 1135 20
	lw	a5,-28(s0)
	lhu	a4,22(a5)
	.loc 1 1135 39
	lw	a5,-52(s0)
	lhu	a5,22(a5)
	.loc 1 1135 14
	bne	a4,a5,.L169
	.loc 1 1136 20
	lw	a5,-28(s0)
	lhu	a5,24(a5)
	.loc 1 1135 53 discriminator 1
	lhu	a4,-58(s0)
	bne	a4,a5,.L169
	.loc 1 1137 33
	lw	a5,-28(s0)
	lw	a4,0(a5)
	.loc 1 1137 59
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 1136 43
	bne	a4,a5,.L169
	.loc 1 1138 34
	lw	a5,-28(s0)
	lw	a4,4(a5)
	.loc 1 1138 52
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 1137 67
	bne	a4,a5,.L169
	.loc 1 1140 20
	li	a5,-8
	j	.L152
.L169:
	.loc 1 1134 58 discriminator 2
	lw	a5,-28(s0)
	lw	a5,12(a5)
	sw	a5,-28(s0)
.L168:
	.loc 1 1134 45 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L170
	.loc 1 1133 27 discriminator 2
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L167:
	.loc 1 1133 21 discriminator 1
	lw	a4,-32(s0)
	li	a5,3
	ble	a4,a5,.L171
.L166:
.LBE9:
	.loc 1 1148 9
	lw	a0,-52(s0)
	call	tcp_next_iss
	sw	a0,-44(s0)
	.loc 1 1149 16
	lw	a5,-52(s0)
	sw	zero,36(a5)
	.loc 1 1150 16
	lw	a5,-52(s0)
	lw	a4,-44(s0)
	sw	a4,80(a5)
	.loc 1 1151 22
	lw	a5,-44(s0)
	addi	a4,a5,-1
	.loc 1 1151 16
	lw	a5,-52(s0)
	sw	a4,68(a5)
	.loc 1 1152 22
	lw	a5,-44(s0)
	addi	a4,a5,-1
	.loc 1 1152 16
	lw	a5,-52(s0)
	sw	a4,88(a5)
	.loc 1 1153 22
	lw	a5,-44(s0)
	addi	a4,a5,-1
	.loc 1 1153 16
	lw	a5,-52(s0)
	sw	a4,92(a5)
	.loc 1 1156 35
	lw	a5,-52(s0)
	li	a4,4096
	addi	a4,a4,-2032
	sh	a4,42(a5)
	.loc 1 1156 21
	lw	a5,-52(s0)
	lhu	a4,42(a5)
	.loc 1 1156 16
	lw	a5,-52(s0)
	sh	a4,40(a5)
	.loc 1 1157 32
	lw	a5,-52(s0)
	lw	a4,36(a5)
	.loc 1 1157 27
	lw	a5,-52(s0)
	sw	a4,44(a5)
	.loc 1 1158 16
	lw	a5,-52(s0)
	li	a4,4096
	addi	a4,a4,-2032
	sh	a4,96(a5)
	.loc 1 1161 12
	lw	a5,-52(s0)
	li	a4,536
	sh	a4,50(a5)
	.loc 1 1163 14
	lw	a5,-52(s0)
	lhu	a4,50(a5)
	.loc 1 1163 54
	lw	a5,-52(s0)
	addi	a5,a5,4
	.loc 1 1163 14
	mv	a2,a5
	lw	a1,-20(s0)
	mv	a0,a4
	call	tcp_eff_send_mss_netif
	mv	a5,a0
	mv	a4,a5
	.loc 1 1163 12 discriminator 1
	lw	a5,-52(s0)
	sh	a4,50(a5)
	.loc 1 1165 13
	lw	a5,-52(s0)
	li	a4,1
	sh	a4,72(a5)
	.loc 1 1167 18
	lw	a5,-52(s0)
	lw	a4,-64(s0)
	sw	a4,136(a5)
	.loc 1 1173 9
	li	a1,2
	lw	a0,-52(s0)
	call	tcp_enqueue_flags
	mv	a5,a0
	sb	a5,-45(s0)
	.loc 1 1174 6
	lb	a5,-45(s0)
	bne	a5,zero,.L172
	.loc 1 1176 16
	lw	a5,-52(s0)
	li	a4,2
	sb	a4,20(a5)
	.loc 1 1177 8
	lhu	a5,-38(s0)
	beq	a5,zero,.L173
	.loc 1 1178 34
	lui	a5,%hi(tcp_bound_pcbs)
	lw	a5,%lo(tcp_bound_pcbs)(a5)
	.loc 1 1178 14
	lw	a4,-52(s0)
	bne	a4,a5,.L174
	.loc 1 1178 87 discriminator 1
	lui	a5,%hi(tcp_bound_pcbs)
	lw	a5,%lo(tcp_bound_pcbs)(a5)
	lw	a4,12(a5)
	.loc 1 1178 67 discriminator 1
	lui	a5,%hi(tcp_bound_pcbs)
	sw	a4,%lo(tcp_bound_pcbs)(a5)
	j	.L175
.L174:
.LBB10:
	.loc 1 1178 150 discriminator 2
	lui	a5,%hi(tcp_bound_pcbs)
	lw	a5,%lo(tcp_bound_pcbs)(a5)
	sw	a5,-36(s0)
	.loc 1 1178 133
	j	.L176
.L178:
	.loc 1 1178 57 discriminator 9
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1178 45 discriminator 9
	lw	a4,-52(s0)
	bne	a4,a5,.L177
	.loc 1 1178 101 discriminator 5
	lw	a5,-52(s0)
	lw	a4,12(a5)
	.loc 1 1178 94 discriminator 5
	lw	a5,-36(s0)
	sw	a4,12(a5)
	.loc 1 1178 109
	j	.L175
.L177:
	.loc 1 1178 20 discriminator 6
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-36(s0)
.L176:
	.loc 1 1178 182 discriminator 8
	lw	a5,-36(s0)
	bne	a5,zero,.L178
.L175:
.LBE10:
	.loc 1 1178 134 discriminator 10
	lw	a5,-52(s0)
	sw	zero,12(a5)
.L173:
	.loc 1 1180 27
	lui	a5,%hi(tcp_active_pcbs)
	lw	a4,%lo(tcp_active_pcbs)(a5)
	lw	a5,-52(s0)
	sw	a4,12(a5)
	.loc 1 1180 68
	lui	a5,%hi(tcp_active_pcbs)
	lw	a4,-52(s0)
	sw	a4,%lo(tcp_active_pcbs)(a5)
	.loc 1 1180 77
	call	tcp_timer_needed
	.loc 1 1180 134 discriminator 1
	lui	a5,%hi(tcp_active_pcbs_changed)
	li	a4,1
	sb	a4,%lo(tcp_active_pcbs_changed)(a5)
	.loc 1 1183 5
	lw	a0,-52(s0)
	call	tcp_output
.L172:
	.loc 1 1185 10
	lb	a5,-45(s0)
.L152:
	.loc 1 1186 1
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
.LFE25:
	.size	tcp_connect, .-tcp_connect
	.section	.text.tcp_slowtmr,"ax",@progbits
	.align	1
	.globl	tcp_slowtmr
	.type	tcp_slowtmr, @function
tcp_slowtmr:
.LFB26:
	.loc 1 1197 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 1 1204 7
	sb	zero,-27(s0)
	.loc 1 1206 3
	lui	a5,%hi(tcp_ticks)
	lw	a5,%lo(tcp_ticks)(a5)
	addi	a4,a5,1
	lui	a5,%hi(tcp_ticks)
	sw	a4,%lo(tcp_ticks)(a5)
	.loc 1 1207 3
	lui	a5,%hi(tcp_timer_ctr)
	lbu	a5,%lo(tcp_timer_ctr)(a5)
	addi	a5,a5,1
	andi	a4,a5,0xff
	lui	a5,%hi(tcp_timer_ctr)
	sb	a4,%lo(tcp_timer_ctr)(a5)
	j	.L180
.L226:
	.loc 1 1438 11
	nop
.L181:
.L180:
	.loc 1 1211 8
	sw	zero,-24(s0)
	.loc 1 1212 7
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	sw	a5,-20(s0)
	.loc 1 1216 9
	j	.L182
.L218:
	.loc 1 1221 12
	lw	a5,-20(s0)
	lbu	a4,30(a5)
	.loc 1 1221 25
	lui	a5,%hi(tcp_timer_ctr)
	lbu	a5,%lo(tcp_timer_ctr)(a5)
	.loc 1 1221 8
	bne	a4,a5,.L183
	.loc 1 1223 12
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 1224 11
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 1225 7
	j	.L182
.L183:
	.loc 1 1227 21
	lui	a5,%hi(tcp_timer_ctr)
	lbu	a4,%lo(tcp_timer_ctr)(a5)
	lw	a5,-20(s0)
	sb	a4,30(a5)
	.loc 1 1229 16
	sb	zero,-25(s0)
	.loc 1 1230 15
	sb	zero,-26(s0)
	.loc 1 1232 12
	lw	a5,-20(s0)
	lbu	a4,20(a5)
	.loc 1 1232 8
	li	a5,2
	bne	a4,a5,.L185
	.loc 1 1232 38 discriminator 1
	lw	a5,-20(s0)
	lbu	a4,66(a5)
	.loc 1 1232 32 discriminator 1
	li	a5,5
	bleu	a4,a5,.L185
	.loc 1 1233 7
	lbu	a5,-25(s0)
	addi	a5,a5,1
	sb	a5,-25(s0)
	j	.L186
.L185:
	.loc 1 1235 19
	lw	a5,-20(s0)
	lbu	a4,66(a5)
	.loc 1 1235 15
	li	a5,11
	bleu	a4,a5,.L187
	.loc 1 1236 7
	lbu	a5,-25(s0)
	addi	a5,a5,1
	sb	a5,-25(s0)
	j	.L186
.L187:
	.loc 1 1239 14
	lw	a5,-20(s0)
	lbu	a5,161(a5)
	.loc 1 1239 10
	beq	a5,zero,.L188
	.loc 1 1242 16
	lw	a5,-20(s0)
	lbu	a4,162(a5)
	.loc 1 1242 12
	li	a5,11
	bleu	a4,a5,.L189
	.loc 1 1243 11
	lbu	a5,-25(s0)
	addi	a5,a5,1
	sb	a5,-25(s0)
	j	.L186
.L189:
.LBB11:
	.loc 1 1245 53
	lw	a5,-20(s0)
	lbu	a5,161(a5)
	.loc 1 1245 71
	addi	a5,a5,-1
	.loc 1 1245 16
	lui	a4,%hi(tcp_persist_backoff)
	addi	a4,a4,%lo(tcp_persist_backoff)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-47(s0)
	.loc 1 1246 18
	lw	a5,-20(s0)
	lbu	a5,160(a5)
	.loc 1 1246 14
	lbu	a4,-47(s0)
	bleu	a4,a5,.L190
	.loc 1 1247 16
	lw	a5,-20(s0)
	lbu	a5,160(a5)
	.loc 1 1247 29
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,160(a5)
.L190:
	.loc 1 1249 18
	lw	a5,-20(s0)
	lbu	a5,160(a5)
	.loc 1 1249 14
	lbu	a4,-47(s0)
	bgtu	a4,a5,.L186
.LBB12:
	.loc 1 1250 17
	li	a5,1
	sw	a5,-32(s0)
	.loc 1 1252 20
	lw	a5,-20(s0)
	lhu	a5,96(a5)
	.loc 1 1252 16
	bne	a5,zero,.L191
	.loc 1 1253 19
	lw	a0,-20(s0)
	call	tcp_zero_window_probe
	mv	a5,a0
	.loc 1 1253 18 discriminator 1
	beq	a5,zero,.L192
	.loc 1 1254 27
	sw	zero,-32(s0)
	j	.L192
.L191:
	.loc 1 1258 55
	lw	a5,-20(s0)
	lhu	a5,96(a5)
	.loc 1 1258 19
	mv	a1,a5
	lw	a0,-20(s0)
	call	tcp_split_unsent_seg
	mv	a5,a0
	.loc 1 1258 18 discriminator 1
	bne	a5,zero,.L192
	.loc 1 1259 21
	lw	a0,-20(s0)
	call	tcp_output
	mv	a5,a0
	.loc 1 1259 20 discriminator 1
	bne	a5,zero,.L192
	.loc 1 1261 29
	sw	zero,-32(s0)
.L192:
	.loc 1 1265 16
	lw	a5,-32(s0)
	beq	a5,zero,.L186
	.loc 1 1266 32
	lw	a5,-20(s0)
	sb	zero,160(a5)
	.loc 1 1267 22
	lw	a5,-20(s0)
	lbu	a4,161(a5)
	.loc 1 1267 18
	li	a5,6
	bgtu	a4,a5,.L186
	.loc 1 1268 20
	lw	a5,-20(s0)
	lbu	a5,161(a5)
	.loc 1 1268 37
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,161(a5)
	j	.L186
.L188:
.LBE12:
.LBE11:
	.loc 1 1275 17
	lw	a5,-20(s0)
	lh	a5,48(a5)
	.loc 1 1275 12
	blt	a5,zero,.L193
	.loc 1 1275 38 discriminator 1
	lw	a5,-20(s0)
	lh	a4,48(a5)
	.loc 1 1275 31 discriminator 1
	li	a5,32768
	addi	a5,a5,-1
	beq	a4,a5,.L193
	.loc 1 1276 16
	lw	a5,-20(s0)
	lh	a5,48(a5)
	.loc 1 1276 11
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	lw	a5,-20(s0)
	sh	a4,48(a5)
.L193:
	.loc 1 1279 16
	lw	a5,-20(s0)
	lh	a4,48(a5)
	.loc 1 1279 30
	lw	a5,-20(s0)
	lh	a5,64(a5)
	.loc 1 1279 12
	blt	a4,a5,.L186
	.loc 1 1287 16
	lw	a0,-20(s0)
	call	tcp_rexmit_rto_prepare
	mv	a5,a0
	.loc 1 1287 14 discriminator 1
	beq	a5,zero,.L194
	.loc 1 1287 63 discriminator 2
	lw	a5,-20(s0)
	lw	a5,112(a5)
	.loc 1 1287 55 discriminator 2
	bne	a5,zero,.L186
	.loc 1 1287 88 discriminator 3
	lw	a5,-20(s0)
	lw	a5,108(a5)
	.loc 1 1287 81 discriminator 3
	beq	a5,zero,.L186
.L194:
	.loc 1 1290 20
	lw	a5,-20(s0)
	lbu	a4,20(a5)
	.loc 1 1290 16
	li	a5,2
	beq	a4,a5,.L195
.LBB13:
	.loc 1 1291 40
	lw	a5,-20(s0)
	lbu	a5,66(a5)
	.loc 1 1291 20
	andi	a3,a5,0xff
	li	a4,12
	bleu	a3,a4,.L196
	li	a5,12
.L196:
	sb	a5,-37(s0)
	.loc 1 1292 35
	lw	a5,-20(s0)
	lh	a5,60(a5)
	.loc 1 1292 40
	srai	a5,a5,3
	slli	a5,a5,16
	srai	a5,a5,16
	mv	a4,a5
	.loc 1 1292 51
	lw	a5,-20(s0)
	lh	a5,62(a5)
	.loc 1 1292 46
	add	a5,a4,a5
	.loc 1 1292 71
	lbu	a4,-37(s0)
	lui	a3,%hi(tcp_backoff)
	addi	a3,a3,%lo(tcp_backoff)
	add	a4,a3,a4
	lbu	a4,0(a4)
	.loc 1 1292 19
	sll	a5,a5,a4
	sw	a5,-44(s0)
	.loc 1 1293 26
	lw	a4,-44(s0)
	li	a5,32768
	addi	a5,a5,-2
	bgt	a4,a5,.L197
	.loc 1 1293 26 is_stmt 0 discriminator 1
	lw	a5,-44(s0)
	slli	a5,a5,16
	srai	a5,a5,16
	j	.L198
.L197:
	.loc 1 1293 26 discriminator 2
	li	a5,32768
	addi	a5,a5,-1
.L198:
	.loc 1 1293 24 is_stmt 1 discriminator 4
	lw	a4,-20(s0)
	sh	a5,64(a4)
.L195:
.LBE13:
	.loc 1 1297 24
	lw	a5,-20(s0)
	sh	zero,48(a5)
	.loc 1 1300 43
	lw	a5,-20(s0)
	lhu	a4,96(a5)
	.loc 1 1300 29
	lw	a5,-20(s0)
	lhu	a5,72(a5)
	.loc 1 1300 21
	mv	a2,a5
	mv	a5,a4
	slli	a3,a5,16
	srli	a3,a3,16
	slli	a4,a2,16
	srli	a4,a4,16
	bleu	a3,a4,.L199
	mv	a5,a2
.L199:
	sh	a5,-46(s0)
	.loc 1 1301 27
	lhu	a5,-46(s0)
	srli	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-20(s0)
	sh	a4,74(a5)
	.loc 1 1302 20
	lw	a5,-20(s0)
	lhu	a4,74(a5)
	.loc 1 1302 52
	lw	a5,-20(s0)
	lhu	a5,50(a5)
	.loc 1 1302 33
	slli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1302 16
	bgeu	a4,a5,.L200
	.loc 1 1303 50
	lw	a5,-20(s0)
	lhu	a5,50(a5)
	.loc 1 1303 31
	slli	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1303 29
	lw	a5,-20(s0)
	sh	a4,74(a5)
.L200:
	.loc 1 1305 28
	lw	a5,-20(s0)
	lhu	a4,50(a5)
	.loc 1 1305 23
	lw	a5,-20(s0)
	sh	a4,72(a5)
	.loc 1 1309 30
	lw	a5,-20(s0)
	sh	zero,106(a5)
	.loc 1 1313 13
	lw	a0,-20(s0)
	call	tcp_rexmit_rto_commit
.L186:
	.loc 1 1319 12
	lw	a5,-20(s0)
	lbu	a4,20(a5)
	.loc 1 1319 8
	li	a5,6
	bne	a4,a5,.L201
	.loc 1 1321 14
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 1321 22
	andi	a5,a5,16
	.loc 1 1321 10
	beq	a5,zero,.L201
	.loc 1 1324 31
	lui	a5,%hi(tcp_ticks)
	lw	a4,%lo(tcp_ticks)(a5)
	.loc 1 1324 36
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 1324 31
	sub	a4,a4,a5
	.loc 1 1324 12
	li	a5,40
	bleu	a4,a5,.L201
	.loc 1 1326 11
	lbu	a5,-25(s0)
	addi	a5,a5,1
	sb	a5,-25(s0)
.L201:
	.loc 1 1333 15
	lw	a5,-20(s0)
	lbu	a5,9(a5)
	.loc 1 1333 28
	andi	a5,a5,8
	.loc 1 1333 8
	beq	a5,zero,.L202
	.loc 1 1334 14
	lw	a5,-20(s0)
	lbu	a4,20(a5)
	.loc 1 1333 39 discriminator 1
	li	a5,4
	beq	a4,a5,.L203
	.loc 1 1335 14
	lw	a5,-20(s0)
	lbu	a4,20(a5)
	.loc 1 1334 38
	li	a5,7
	bne	a4,a5,.L202
.L203:
	.loc 1 1336 11
	lui	a5,%hi(tcp_ticks)
	lw	a4,%lo(tcp_ticks)(a5)
	.loc 1 1336 34
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 1336 29
	sub	a4,a4,a5
	.loc 1 1337 15
	lw	a5,-20(s0)
	lw	a3,148(a5)
	.loc 1 1337 35
	lw	a5,-20(s0)
	lw	a2,156(a5)
	.loc 1 1337 53
	lw	a5,-20(s0)
	lw	a5,152(a5)
	.loc 1 1337 46
	mul	a5,a2,a5
	.loc 1 1337 27
	add	a3,a3,a5
	.loc 1 1337 68
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a3,a5
	srli	a5,a5,5
	.loc 1 1336 10
	bleu	a4,a5,.L204
	.loc 1 1342 9
	lbu	a5,-25(s0)
	addi	a5,a5,1
	sb	a5,-25(s0)
	.loc 1 1343 9
	lbu	a5,-26(s0)
	addi	a5,a5,1
	sb	a5,-26(s0)
	j	.L202
.L204:
	.loc 1 1344 18
	lui	a5,%hi(tcp_ticks)
	lw	a4,%lo(tcp_ticks)(a5)
	.loc 1 1344 41
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 1344 36
	sub	a4,a4,a5
	.loc 1 1345 22
	lw	a5,-20(s0)
	lw	a3,148(a5)
	.loc 1 1345 39
	lw	a5,-20(s0)
	lbu	a5,163(a5)
	mv	a2,a5
	.loc 1 1345 63
	lw	a5,-20(s0)
	lw	a5,152(a5)
	.loc 1 1345 55
	mul	a5,a2,a5
	.loc 1 1345 34
	add	a3,a3,a5
	.loc 1 1346 18
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a3,a5
	srli	a5,a5,5
	.loc 1 1344 17
	bleu	a4,a5,.L202
	.loc 1 1347 15
	lw	a0,-20(s0)
	call	tcp_keepalive
	mv	a5,a0
	sb	a5,-27(s0)
	.loc 1 1348 12
	lb	a5,-27(s0)
	bne	a5,zero,.L202
	.loc 1 1349 14
	lw	a5,-20(s0)
	lbu	a5,163(a5)
	.loc 1 1349 29
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,163(a5)
.L202:
	.loc 1 1358 12
	lw	a5,-20(s0)
	lw	a5,116(a5)
	.loc 1 1358 8
	beq	a5,zero,.L205
	.loc 1 1359 20
	lui	a5,%hi(tcp_ticks)
	lw	a4,%lo(tcp_ticks)(a5)
	.loc 1 1359 25
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 1359 20
	sub	a4,a4,a5
	.loc 1 1359 44
	lw	a5,-20(s0)
	lh	a5,64(a5)
	.loc 1 1359 34
	mv	a3,a5
	.loc 1 1359 50
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,1
	.loc 1 1358 27 discriminator 1
	bltu	a4,a5,.L205
	.loc 1 1361 7
	lw	a0,-20(s0)
	call	tcp_free_ooseq
.L205:
	.loc 1 1366 12
	lw	a5,-20(s0)
	lbu	a4,20(a5)
	.loc 1 1366 8
	li	a5,3
	bne	a4,a5,.L206
	.loc 1 1367 29
	lui	a5,%hi(tcp_ticks)
	lw	a4,%lo(tcp_ticks)(a5)
	.loc 1 1367 34
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 1367 29
	sub	a4,a4,a5
	.loc 1 1367 10
	li	a5,40
	bleu	a4,a5,.L206
	.loc 1 1369 9
	lbu	a5,-25(s0)
	addi	a5,a5,1
	sb	a5,-25(s0)
.L206:
	.loc 1 1375 12
	lw	a5,-20(s0)
	lbu	a4,20(a5)
	.loc 1 1375 8
	li	a5,9
	bne	a4,a5,.L207
	.loc 1 1376 29
	lui	a5,%hi(tcp_ticks)
	lw	a4,%lo(tcp_ticks)(a5)
	.loc 1 1376 34
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 1376 29
	sub	a4,a4,a5
	.loc 1 1376 10
	li	a5,240
	bleu	a4,a5,.L207
	.loc 1 1377 9
	lbu	a5,-25(s0)
	addi	a5,a5,1
	sb	a5,-25(s0)
.L207:
	.loc 1 1383 12
	lw	a5,-20(s0)
	lbu	a4,20(a5)
	.loc 1 1383 8
	li	a5,5
	beq	a4,a5,.L208
	.loc 1 1383 40 discriminator 1
	lw	a5,-20(s0)
	lbu	a4,20(a5)
	.loc 1 1383 34 discriminator 1
	li	a5,8
	bne	a4,a5,.L209
.L208:
	.loc 1 1384 29
	lui	a5,%hi(tcp_ticks)
	lw	a4,%lo(tcp_ticks)(a5)
	.loc 1 1384 34
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 1384 29
	sub	a4,a4,a5
	.loc 1 1384 10
	li	a5,10
	bleu	a4,a5,.L209
	.loc 1 1385 9
	lbu	a5,-25(s0)
	addi	a5,a5,1
	sb	a5,-25(s0)
.L209:
	.loc 1 1391 8
	lbu	a5,-25(s0)
	beq	a5,zero,.L210
.LBB14:
	.loc 1 1394 18
	lw	a5,-20(s0)
	lw	a5,144(a5)
	sw	a5,-52(s0)
	.loc 1 1398 7
	lw	a0,-20(s0)
	call	tcp_pcb_purge
	.loc 1 1400 10
	lw	a5,-24(s0)
	beq	a5,zero,.L211
	.loc 1 1402 25
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 1402 20
	lw	a5,-24(s0)
	sw	a4,12(a5)
	j	.L212
.L211:
	.loc 1 1406 30
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 1406 25
	lui	a5,%hi(tcp_active_pcbs)
	sw	a4,%lo(tcp_active_pcbs)(a5)
.L212:
	.loc 1 1409 10
	lbu	a5,-26(s0)
	beq	a5,zero,.L213
	.loc 1 1410 9
	lw	a5,-20(s0)
	lw	a1,80(a5)
	lw	a5,-20(s0)
	lw	a2,36(a5)
	.loc 1 1410 50
	lw	a3,-20(s0)
	.loc 1 1410 66
	lw	a5,-20(s0)
	addi	a4,a5,4
	.loc 1 1410 9
	lw	a5,-20(s0)
	lhu	a0,22(a5)
	lw	a5,-20(s0)
	lhu	a5,24(a5)
	mv	a6,a5
	mv	a5,a0
	lw	a0,-20(s0)
	call	tcp_rst
.L213:
	.loc 1 1414 15
	lw	a5,-20(s0)
	lw	a5,16(a5)
	sw	a5,-56(s0)
	.loc 1 1415 18
	lw	a5,-20(s0)
	lbu	a5,20(a5)
	sb	a5,-57(s0)
	.loc 1 1416 12
	lw	a5,-20(s0)
	sw	a5,-64(s0)
	.loc 1 1417 11
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 1418 7
	lw	a0,-64(s0)
	call	tcp_free
	.loc 1 1420 31
	lui	a5,%hi(tcp_active_pcbs_changed)
	sb	zero,%lo(tcp_active_pcbs_changed)(a5)
	.loc 1 1421 32
	lw	a5,-52(s0)
	beq	a5,zero,.L214
	.loc 1 1421 8 discriminator 1
	lw	a5,-52(s0)
	li	a1,-13
	lw	a0,-56(s0)
	jalr	a5
.LVL1:
.L214:
	.loc 1 1422 11
	lui	a5,%hi(tcp_active_pcbs_changed)
	lbu	a5,%lo(tcp_active_pcbs_changed)(a5)
	.loc 1 1422 10
	beq	a5,zero,.L182
	.loc 1 1423 9
	j	.L180
.L210:
.LBE14:
	.loc 1 1427 12
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 1428 11
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 1431 13
	lw	a5,-24(s0)
	lbu	a5,28(a5)
	.loc 1 1431 7
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,28(a5)
	.loc 1 1432 15
	lw	a5,-24(s0)
	lbu	a4,28(a5)
	.loc 1 1432 32
	lw	a5,-24(s0)
	lbu	a5,29(a5)
	.loc 1 1432 10
	bltu	a4,a5,.L182
	.loc 1 1433 23
	lw	a5,-24(s0)
	sb	zero,28(a5)
	.loc 1 1435 33
	lui	a5,%hi(tcp_active_pcbs_changed)
	sb	zero,%lo(tcp_active_pcbs_changed)(a5)
	.loc 1 1436 23
	lw	a5,-24(s0)
	lw	a5,140(a5)
	.loc 1 1436 16
	beq	a5,zero,.L215
	.loc 1 1436 24 discriminator 1
	lw	a5,-24(s0)
	lw	a5,140(a5)
	.loc 1 1436 18 discriminator 1
	lw	a4,-24(s0)
	lw	a4,16(a4)
	lw	a1,-24(s0)
	mv	a0,a4
	jalr	a5
.LVL2:
	mv	a5,a0
	sb	a5,-27(s0)
	j	.L216
.L215:
	.loc 1 1436 72 discriminator 2
	sb	zero,-27(s0)
.L216:
	.loc 1 1437 13
	lui	a5,%hi(tcp_active_pcbs_changed)
	lbu	a5,%lo(tcp_active_pcbs_changed)(a5)
	.loc 1 1437 12
	bne	a5,zero,.L226
	.loc 1 1441 12
	lb	a5,-27(s0)
	bne	a5,zero,.L182
	.loc 1 1442 11
	lw	a0,-24(s0)
	call	tcp_output
.L182:
	.loc 1 1216 14
	lw	a5,-20(s0)
	bne	a5,zero,.L218
	.loc 1 1450 8
	sw	zero,-24(s0)
	.loc 1 1451 7
	lui	a5,%hi(tcp_tw_pcbs)
	lw	a5,%lo(tcp_tw_pcbs)(a5)
	sw	a5,-20(s0)
	.loc 1 1452 9
	j	.L219
.L225:
	.loc 1 1454 16
	sb	zero,-25(s0)
	.loc 1 1457 27
	lui	a5,%hi(tcp_ticks)
	lw	a4,%lo(tcp_ticks)(a5)
	.loc 1 1457 32
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 1457 27
	sub	a4,a4,a5
	.loc 1 1457 8
	li	a5,240
	bleu	a4,a5,.L220
	.loc 1 1458 7
	lbu	a5,-25(s0)
	addi	a5,a5,1
	sb	a5,-25(s0)
.L220:
	.loc 1 1462 8
	lbu	a5,-25(s0)
	beq	a5,zero,.L221
.LBB15:
	.loc 1 1464 7
	lw	a0,-20(s0)
	call	tcp_pcb_purge
	.loc 1 1466 10
	lw	a5,-24(s0)
	beq	a5,zero,.L222
	.loc 1 1468 25
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 1468 20
	lw	a5,-24(s0)
	sw	a4,12(a5)
	j	.L223
.L222:
	.loc 1 1472 26
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 1472 21
	lui	a5,%hi(tcp_tw_pcbs)
	sw	a4,%lo(tcp_tw_pcbs)(a5)
.L223:
	.loc 1 1474 12
	lw	a5,-20(s0)
	sw	a5,-36(s0)
	.loc 1 1475 11
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 1476 7
	lw	a0,-36(s0)
	call	tcp_free
.LBE15:
	j	.L219
.L221:
	.loc 1 1478 12
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 1479 11
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L219:
	.loc 1 1452 14
	lw	a5,-20(s0)
	bne	a5,zero,.L225
	.loc 1 1482 1
	nop
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
.LFE26:
	.size	tcp_slowtmr, .-tcp_slowtmr
	.section	.text.tcp_fasttmr,"ax",@progbits
	.align	1
	.globl	tcp_fasttmr
	.type	tcp_fasttmr, @function
tcp_fasttmr:
.LFB27:
	.loc 1 1492 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1495 3
	lui	a5,%hi(tcp_timer_ctr)
	lbu	a5,%lo(tcp_timer_ctr)(a5)
	addi	a5,a5,1
	andi	a4,a5,0xff
	lui	a5,%hi(tcp_timer_ctr)
	sb	a4,%lo(tcp_timer_ctr)(a5)
.L228:
	.loc 1 1498 7
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	sw	a5,-20(s0)
	.loc 1 1500 9
	j	.L229
.L235:
	.loc 1 1501 12
	lw	a5,-20(s0)
	lbu	a4,30(a5)
	.loc 1 1501 25
	lui	a5,%hi(tcp_timer_ctr)
	lbu	a5,%lo(tcp_timer_ctr)(a5)
	.loc 1 1501 8
	beq	a4,a5,.L230
.LBB16:
	.loc 1 1503 23
	lui	a5,%hi(tcp_timer_ctr)
	lbu	a4,%lo(tcp_timer_ctr)(a5)
	lw	a5,-20(s0)
	sb	a4,30(a5)
	.loc 1 1505 14
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 1505 22
	andi	a5,a5,1
	.loc 1 1505 10
	beq	a5,zero,.L231
	.loc 1 1507 47
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 1507 29
	ori	a5,a5,2
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1507 27
	lw	a5,-20(s0)
	sh	a4,26(a5)
	.loc 1 1508 9
	lw	a0,-20(s0)
	call	tcp_output
	.loc 1 1509 47
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 1509 29
	andi	a5,a5,-4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1509 27
	lw	a5,-20(s0)
	sh	a4,26(a5)
.L231:
	.loc 1 1512 14
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 1512 22
	andi	a5,a5,8
	.loc 1 1512 10
	beq	a5,zero,.L232
	.loc 1 1514 47
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 1514 29
	andi	a5,a5,-9
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1514 27
	lw	a5,-20(s0)
	sh	a4,26(a5)
	.loc 1 1515 9
	lw	a0,-20(s0)
	call	tcp_close_shutdown_fin
.L232:
	.loc 1 1518 12
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-24(s0)
	.loc 1 1521 14
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 1 1521 10
	beq	a5,zero,.L233
	.loc 1 1522 33
	lui	a5,%hi(tcp_active_pcbs_changed)
	sb	zero,%lo(tcp_active_pcbs_changed)(a5)
	.loc 1 1523 9
	lw	a0,-20(s0)
	call	tcp_process_refused_data
	.loc 1 1524 13
	lui	a5,%hi(tcp_active_pcbs_changed)
	lbu	a5,%lo(tcp_active_pcbs_changed)(a5)
	.loc 1 1524 12
	beq	a5,zero,.L233
	.loc 1 1526 11
	j	.L228
.L233:
	.loc 1 1529 11
	lw	a5,-24(s0)
	sw	a5,-20(s0)
.LBE16:
	j	.L229
.L230:
	.loc 1 1531 11
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L229:
	.loc 1 1500 14
	lw	a5,-20(s0)
	bne	a5,zero,.L235
	.loc 1 1534 1
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
.LFE27:
	.size	tcp_fasttmr, .-tcp_fasttmr
	.section	.text.tcp_txnow,"ax",@progbits
	.align	1
	.globl	tcp_txnow
	.type	tcp_txnow, @function
tcp_txnow:
.LFB28:
	.loc 1 1539 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1542 12
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	sw	a5,-20(s0)
	.loc 1 1542 3
	j	.L237
.L239:
	.loc 1 1543 12
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 1543 20
	andi	a5,a5,128
	.loc 1 1543 8
	beq	a5,zero,.L238
	.loc 1 1544 7
	lw	a0,-20(s0)
	call	tcp_output
.L238:
	.loc 1 1542 47 discriminator 2
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L237:
	.loc 1 1542 35 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L239
	.loc 1 1547 1
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
.LFE28:
	.size	tcp_txnow, .-tcp_txnow
	.section	.text.tcp_process_refused_data,"ax",@progbits
	.align	1
	.globl	tcp_process_refused_data
	.type	tcp_process_refused_data, @function
tcp_process_refused_data:
.LFB29:
	.loc 1 1552 1
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
	.loc 1 1557 11
	lw	a5,-36(s0)
	bne	a5,zero,.L241
	.loc 1 1557 16 discriminator 1
	li	a5,-16
	.loc 1 1557 16 is_stmt 0
	j	.L242
.L241:
.LBB17:
	.loc 1 1564 29 is_stmt 1
	lw	a5,-36(s0)
	lw	a5,120(a5)
	.loc 1 1564 10
	lbu	a5,13(a5)
	sb	a5,-18(s0)
	.loc 1 1567 18
	lw	a5,-36(s0)
	lw	a5,120(a5)
	sw	a5,-24(s0)
	.loc 1 1572 23
	lw	a5,-36(s0)
	sw	zero,120(a5)
	.loc 1 1576 18
	lw	a5,-36(s0)
	lw	a5,132(a5)
	.loc 1 1576 12
	beq	a5,zero,.L243
	.loc 1 1576 21 discriminator 1
	lw	a5,-36(s0)
	lw	a5,132(a5)
	.loc 1 1576 16 discriminator 1
	lw	a4,-36(s0)
	lw	a4,16(a4)
	li	a3,0
	lw	a2,-24(s0)
	lw	a1,-36(s0)
	mv	a0,a4
	jalr	a5
.LVL3:
	mv	a5,a0
	sb	a5,-17(s0)
	j	.L244
.L243:
	.loc 1 1576 97 discriminator 2
	li	a3,0
	lw	a2,-24(s0)
	lw	a1,-36(s0)
	li	a0,0
	call	tcp_recv_null
	mv	a5,a0
	sb	a5,-17(s0)
.L244:
	.loc 1 1577 8
	lb	a5,-17(s0)
	bne	a5,zero,.L245
	.loc 1 1579 26
	lbu	a5,-18(s0)
	andi	a5,a5,32
	.loc 1 1579 10
	beq	a5,zero,.L246
	.loc 1 1586 16
	lw	a5,-36(s0)
	lhu	a4,40(a5)
	.loc 1 1586 12
	li	a5,4096
	addi	a5,a5,-2032
	beq	a4,a5,.L247
	.loc 1 1587 14
	lw	a5,-36(s0)
	lhu	a5,40(a5)
	.loc 1 1587 23
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-36(s0)
	sh	a4,40(a5)
.L247:
	.loc 1 1589 23
	lw	a5,-36(s0)
	lw	a5,132(a5)
	.loc 1 1589 16
	beq	a5,zero,.L248
	.loc 1 1589 26 discriminator 1
	lw	a5,-36(s0)
	lw	a5,132(a5)
	.loc 1 1589 21 discriminator 1
	lw	a4,-36(s0)
	lw	a4,16(a4)
	li	a3,0
	li	a2,0
	lw	a1,-36(s0)
	mv	a0,a4
	jalr	a5
.LVL4:
	mv	a5,a0
	sb	a5,-17(s0)
	j	.L249
.L248:
	.loc 1 1589 33 discriminator 2
	sb	zero,-17(s0)
.L249:
	.loc 1 1590 12
	lb	a4,-17(s0)
	li	a5,-13
	bne	a4,a5,.L246
	.loc 1 1591 18
	li	a5,-13
	j	.L242
.L245:
	.loc 1 1594 15
	lb	a4,-17(s0)
	li	a5,-13
	bne	a4,a5,.L250
	.loc 1 1599 14
	li	a5,-13
	j	.L242
.L250:
	.loc 1 1607 25
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,120(a5)
	.loc 1 1608 14
	li	a5,-5
	j	.L242
.L246:
.LBE17:
	.loc 1 1611 10
	li	a5,0
.L242:
	.loc 1 1612 1
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
	.size	tcp_process_refused_data, .-tcp_process_refused_data
	.section	.text.tcp_segs_free,"ax",@progbits
	.align	1
	.globl	tcp_segs_free
	.type	tcp_segs_free, @function
tcp_segs_free:
.LFB30:
	.loc 1 1621 1
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
	.loc 1 1622 9
	j	.L252
.L253:
.LBB18:
	.loc 1 1623 21
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1624 5
	lw	a0,-36(s0)
	call	tcp_seg_free
	.loc 1 1625 9
	lw	a5,-20(s0)
	sw	a5,-36(s0)
.L252:
.LBE18:
	.loc 1 1622 14
	lw	a5,-36(s0)
	bne	a5,zero,.L253
	.loc 1 1627 1
	nop
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
	.size	tcp_segs_free, .-tcp_segs_free
	.section	.text.tcp_seg_free,"ax",@progbits
	.align	1
	.globl	tcp_seg_free
	.type	tcp_seg_free, @function
tcp_seg_free:
.LFB31:
	.loc 1 1636 1
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
	.loc 1 1637 6
	lw	a5,-20(s0)
	beq	a5,zero,.L257
	.loc 1 1638 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 1638 8
	beq	a5,zero,.L256
	.loc 1 1639 7
	lw	a5,-20(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	pbuf_free
.L256:
	.loc 1 1644 5
	lw	a1,-20(s0)
	li	a0,4
	call	memp_free
.L257:
	.loc 1 1646 1
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
.LFE31:
	.size	tcp_seg_free, .-tcp_seg_free
	.section	.text.tcp_setprio,"ax",@progbits
	.align	1
	.globl	tcp_setprio
	.type	tcp_setprio, @function
tcp_setprio:
.LFB32:
	.loc 1 1657 1
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
	.loc 1 1660 11
	lw	a5,-20(s0)
	beq	a5,zero,.L261
	.loc 1 1662 13
	lw	a5,-20(s0)
	lbu	a4,-21(s0)
	sb	a4,21(a5)
	j	.L258
.L261:
	.loc 1 1660 9
	nop
.L258:
	.loc 1 1663 1
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
	.size	tcp_setprio, .-tcp_setprio
	.section	.text.tcp_seg_copy,"ax",@progbits
	.align	1
	.globl	tcp_seg_copy
	.type	tcp_seg_copy, @function
tcp_seg_copy:
.LFB33:
	.loc 1 1675 1
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
	.loc 1 1680 28
	li	a0,4
	call	memp_malloc
	sw	a0,-20(s0)
	.loc 1 1681 6
	lw	a5,-20(s0)
	bne	a5,zero,.L263
	.loc 1 1682 11
	li	a5,0
	j	.L264
.L263:
	.loc 1 1684 3
	li	a2,20
	lw	a1,-36(s0)
	lw	a0,-20(s0)
	call	memcpy
	.loc 1 1685 3
	lw	a5,-20(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	pbuf_ref
	.loc 1 1686 10
	lw	a5,-20(s0)
.L264:
	.loc 1 1687 1
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
.LFE33:
	.size	tcp_seg_copy, .-tcp_seg_copy
	.section	.text.tcp_recv_null,"ax",@progbits
	.align	1
	.globl	tcp_recv_null
	.type	tcp_recv_null, @function
tcp_recv_null:
.LFB34:
	.loc 1 1697 1
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
	mv	a5,a3
	sb	a5,-29(s0)
	.loc 1 1700 11
	lw	a5,-24(s0)
	bne	a5,zero,.L266
	.loc 1 1700 16 discriminator 1
	li	a5,-16
	.loc 1 1700 16 is_stmt 0
	j	.L267
.L266:
	.loc 1 1702 6 is_stmt 1
	lw	a5,-28(s0)
	beq	a5,zero,.L268
	.loc 1 1703 5
	lw	a5,-28(s0)
	lhu	a5,8(a5)
	mv	a1,a5
	lw	a0,-24(s0)
	call	tcp_recved
	.loc 1 1704 5
	lw	a0,-28(s0)
	call	pbuf_free
	j	.L269
.L268:
	.loc 1 1705 13
	lb	a5,-29(s0)
	bne	a5,zero,.L269
	.loc 1 1706 12
	lw	a0,-24(s0)
	call	tcp_close
	mv	a5,a0
	j	.L267
.L269:
	.loc 1 1708 10
	li	a5,0
.L267:
	.loc 1 1709 1
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
.LFE34:
	.size	tcp_recv_null, .-tcp_recv_null
	.section	.text.tcp_kill_prio,"ax",@progbits
	.align	1
	.type	tcp_kill_prio, @function
tcp_kill_prio:
.LFB35:
	.loc 1 1719 1
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
	.loc 1 1724 19
	lb	a5,-33(s0)
	.loc 1 1724 9
	blt	a5,zero,.L271
	.loc 1 1724 9 is_stmt 0 discriminator 1
	lbu	a5,-33(s0)
	sb	a5,-29(s0)
	j	.L272
.L271:
	.loc 1 1724 9 discriminator 2
	li	a5,127
	sb	a5,-29(s0)
.L272:
	.loc 1 1729 6 is_stmt 1
	lbu	a5,-29(s0)
	beq	a5,zero,.L279
	.loc 1 1738 8
	lbu	a5,-29(s0)
	addi	a5,a5,-1
	sb	a5,-29(s0)
	.loc 1 1740 14
	sw	zero,-28(s0)
	.loc 1 1741 12
	sw	zero,-24(s0)
	.loc 1 1742 12
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	sw	a5,-20(s0)
	.loc 1 1742 3
	j	.L275
.L278:
	.loc 1 1744 13
	lw	a5,-20(s0)
	lbu	a5,21(a5)
	.loc 1 1744 8
	lbu	a4,-29(s0)
	bgtu	a4,a5,.L276
	.loc 1 1746 14
	lw	a5,-20(s0)
	lbu	a5,21(a5)
	.loc 1 1744 29 discriminator 1
	lbu	a4,-29(s0)
	bne	a4,a5,.L277
	.loc 1 1746 53
	lui	a5,%hi(tcp_ticks)
	lw	a4,%lo(tcp_ticks)(a5)
	.loc 1 1746 58
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 1746 53
	sub	a5,a4,a5
	.loc 1 1746 31
	lw	a4,-28(s0)
	bgtu	a4,a5,.L277
.L276:
	.loc 1 1747 30
	lui	a5,%hi(tcp_ticks)
	lw	a4,%lo(tcp_ticks)(a5)
	.loc 1 1747 35
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 1747 18
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 1748 16
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 1749 13
	lw	a5,-20(s0)
	lbu	a5,21(a5)
	sb	a5,-29(s0)
.L277:
	.loc 1 1742 47 discriminator 2
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L275:
	.loc 1 1742 35 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L278
	.loc 1 1752 6
	lw	a5,-24(s0)
	beq	a5,zero,.L270
	.loc 1 1755 5
	lw	a0,-24(s0)
	call	tcp_abort
	j	.L270
.L279:
	.loc 1 1730 5
	nop
.L270:
	.loc 1 1757 1
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
	.size	tcp_kill_prio, .-tcp_kill_prio
	.section	.text.tcp_kill_state,"ax",@progbits
	.align	1
	.type	tcp_kill_state, @function
tcp_kill_state:
.LFB36:
	.loc 1 1765 1
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
	.loc 1 1771 14
	sw	zero,-28(s0)
	.loc 1 1772 12
	sw	zero,-24(s0)
	.loc 1 1775 12
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	sw	a5,-20(s0)
	.loc 1 1775 3
	j	.L281
.L283:
	.loc 1 1776 12
	lw	a5,-20(s0)
	lbu	a5,20(a5)
	.loc 1 1776 8
	lbu	a4,-33(s0)
	bne	a4,a5,.L282
	.loc 1 1777 29
	lui	a5,%hi(tcp_ticks)
	lw	a4,%lo(tcp_ticks)(a5)
	.loc 1 1777 34
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 1777 29
	sub	a5,a4,a5
	.loc 1 1777 10
	lw	a4,-28(s0)
	bgtu	a4,a5,.L282
	.loc 1 1778 32
	lui	a5,%hi(tcp_ticks)
	lw	a4,%lo(tcp_ticks)(a5)
	.loc 1 1778 37
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 1778 20
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 1779 18
	lw	a5,-20(s0)
	sw	a5,-24(s0)
.L282:
	.loc 1 1775 47 discriminator 2
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L281:
	.loc 1 1775 35 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L283
	.loc 1 1783 6
	lw	a5,-24(s0)
	beq	a5,zero,.L285
	.loc 1 1787 5
	li	a1,0
	lw	a0,-24(s0)
	call	tcp_abandon
.L285:
	.loc 1 1789 1
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
	.size	tcp_kill_state, .-tcp_kill_state
	.section	.text.tcp_kill_timewait,"ax",@progbits
	.align	1
	.type	tcp_kill_timewait, @function
tcp_kill_timewait:
.LFB37:
	.loc 1 1797 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1801 14
	sw	zero,-28(s0)
	.loc 1 1802 12
	sw	zero,-24(s0)
	.loc 1 1804 12
	lui	a5,%hi(tcp_tw_pcbs)
	lw	a5,%lo(tcp_tw_pcbs)(a5)
	sw	a5,-20(s0)
	.loc 1 1804 3
	j	.L287
.L289:
	.loc 1 1805 27
	lui	a5,%hi(tcp_ticks)
	lw	a4,%lo(tcp_ticks)(a5)
	.loc 1 1805 32
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 1805 27
	sub	a5,a4,a5
	.loc 1 1805 8
	lw	a4,-28(s0)
	bgtu	a4,a5,.L288
	.loc 1 1806 30
	lui	a5,%hi(tcp_ticks)
	lw	a4,%lo(tcp_ticks)(a5)
	.loc 1 1806 35
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 1806 18
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 1807 16
	lw	a5,-20(s0)
	sw	a5,-24(s0)
.L288:
	.loc 1 1804 43 discriminator 2
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L287:
	.loc 1 1804 31 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L289
	.loc 1 1810 6
	lw	a5,-24(s0)
	beq	a5,zero,.L291
	.loc 1 1813 5
	lw	a0,-24(s0)
	call	tcp_abort
.L291:
	.loc 1 1815 1
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
.LFE37:
	.size	tcp_kill_timewait, .-tcp_kill_timewait
	.section	.text.tcp_handle_closepend,"ax",@progbits
	.align	1
	.type	tcp_handle_closepend, @function
tcp_handle_closepend:
.LFB38:
	.loc 1 1824 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1825 19
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	sw	a5,-20(s0)
	.loc 1 1827 9
	j	.L293
.L295:
.LBB19:
	.loc 1 1828 21
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-24(s0)
	.loc 1 1830 12
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 1830 20
	andi	a5,a5,8
	.loc 1 1830 8
	beq	a5,zero,.L294
	.loc 1 1832 45
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 1832 27
	andi	a5,a5,-9
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1832 25
	lw	a5,-20(s0)
	sh	a4,26(a5)
	.loc 1 1833 7
	lw	a0,-20(s0)
	call	tcp_close_shutdown_fin
.L294:
	.loc 1 1835 9
	lw	a5,-24(s0)
	sw	a5,-20(s0)
.L293:
.LBE19:
	.loc 1 1827 14
	lw	a5,-20(s0)
	bne	a5,zero,.L295
	.loc 1 1837 1
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
.LFE38:
	.size	tcp_handle_closepend, .-tcp_handle_closepend
	.section	.text.tcp_alloc,"ax",@progbits
	.align	1
	.globl	tcp_alloc
	.type	tcp_alloc, @function
tcp_alloc:
.LFB39:
	.loc 1 1847 1
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
	.loc 1 1852 27
	li	a0,2
	call	memp_malloc
	sw	a0,-20(s0)
	.loc 1 1853 6
	lw	a5,-20(s0)
	bne	a5,zero,.L297
	.loc 1 1855 5
	call	tcp_handle_closepend
	.loc 1 1859 5
	call	tcp_kill_timewait
	.loc 1 1861 29
	li	a0,2
	call	memp_malloc
	sw	a0,-20(s0)
	.loc 1 1862 8
	lw	a5,-20(s0)
	bne	a5,zero,.L298
	.loc 1 1865 7
	li	a0,9
	call	tcp_kill_state
	.loc 1 1867 31
	li	a0,2
	call	memp_malloc
	sw	a0,-20(s0)
	.loc 1 1868 10
	lw	a5,-20(s0)
	bne	a5,zero,.L299
	.loc 1 1871 9
	li	a0,8
	call	tcp_kill_state
	.loc 1 1873 33
	li	a0,2
	call	memp_malloc
	sw	a0,-20(s0)
	.loc 1 1874 12
	lw	a5,-20(s0)
	bne	a5,zero,.L300
	.loc 1 1877 11
	lbu	a5,-33(s0)
	mv	a0,a5
	call	tcp_kill_prio
	.loc 1 1879 35
	li	a0,2
	call	memp_malloc
	sw	a0,-20(s0)
	.loc 1 1880 14
	lw	a5,-20(s0)
	beq	a5,zero,.L300
	.loc 1 1882 30
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lw	a5,192(a5)
	.loc 1 1882 44
	lhu	a4,0(a5)
	.loc 1 1882 13
	addi	a4,a4,-1
	slli	a4,a4,16
	srli	a4,a4,16
	sh	a4,0(a5)
.L300:
	.loc 1 1885 12
	lw	a5,-20(s0)
	beq	a5,zero,.L299
	.loc 1 1887 28
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lw	a5,192(a5)
	.loc 1 1887 42
	lhu	a4,0(a5)
	.loc 1 1887 11
	addi	a4,a4,-1
	slli	a4,a4,16
	srli	a4,a4,16
	sh	a4,0(a5)
.L299:
	.loc 1 1890 10
	lw	a5,-20(s0)
	beq	a5,zero,.L298
	.loc 1 1892 26
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lw	a5,192(a5)
	.loc 1 1892 40
	lhu	a4,0(a5)
	.loc 1 1892 9
	addi	a4,a4,-1
	slli	a4,a4,16
	srli	a4,a4,16
	sh	a4,0(a5)
.L298:
	.loc 1 1895 8
	lw	a5,-20(s0)
	beq	a5,zero,.L297
	.loc 1 1897 24
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lw	a5,192(a5)
	.loc 1 1897 38
	lhu	a4,0(a5)
	.loc 1 1897 7
	addi	a4,a4,-1
	slli	a4,a4,16
	srli	a4,a4,16
	sh	a4,0(a5)
.L297:
	.loc 1 1900 6
	lw	a5,-20(s0)
	beq	a5,zero,.L301
	.loc 1 1902 5
	li	a2,164
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 1903 15
	lw	a5,-20(s0)
	lbu	a4,-33(s0)
	sb	a4,21(a5)
	.loc 1 1904 18
	lw	a5,-20(s0)
	li	a4,4096
	addi	a4,a4,1408
	sh	a4,100(a5)
	.loc 1 1907 37
	lw	a5,-20(s0)
	li	a4,4096
	addi	a4,a4,-2032
	sh	a4,42(a5)
	.loc 1 1907 23
	lw	a5,-20(s0)
	lhu	a4,42(a5)
	.loc 1 1907 18
	lw	a5,-20(s0)
	sh	a4,40(a5)
	.loc 1 1908 14
	lw	a5,-20(s0)
	li	a4,-1
	sb	a4,11(a5)
	.loc 1 1911 14
	lw	a5,-20(s0)
	li	a4,536
	sh	a4,50(a5)
	.loc 1 1914 14
	lw	a5,-20(s0)
	li	a4,6
	sh	a4,64(a5)
	.loc 1 1915 13
	lw	a5,-20(s0)
	li	a4,6
	sh	a4,62(a5)
	.loc 1 1916 16
	lw	a5,-20(s0)
	li	a4,-1
	sh	a4,48(a5)
	.loc 1 1917 15
	lw	a5,-20(s0)
	li	a4,1
	sh	a4,72(a5)
	.loc 1 1918 14
	lui	a5,%hi(tcp_ticks)
	lw	a4,%lo(tcp_ticks)(a5)
	lw	a5,-20(s0)
	sw	a4,32(a5)
	.loc 1 1919 21
	lui	a5,%hi(tcp_timer_ctr)
	lbu	a4,%lo(tcp_timer_ctr)(a5)
	lw	a5,-20(s0)
	sb	a4,30(a5)
	.loc 1 1927 19
	lw	a5,-20(s0)
	li	a4,4096
	addi	a4,a4,1408
	sh	a4,74(a5)
	.loc 1 1930 15
	lw	a5,-20(s0)
	lui	a4,%hi(tcp_recv_null)
	addi	a4,a4,%lo(tcp_recv_null)
	sw	a4,132(a5)
	.loc 1 1934 20
	lw	a5,-20(s0)
	li	a4,7200768
	addi	a4,a4,-768
	sw	a4,148(a5)
	.loc 1 1937 21
	lw	a5,-20(s0)
	li	a4,73728
	addi	a4,a4,1272
	sw	a4,152(a5)
	.loc 1 1938 19
	lw	a5,-20(s0)
	li	a4,9
	sw	a4,156(a5)
.L301:
	.loc 1 1942 10
	lw	a5,-20(s0)
	.loc 1 1943 1
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
	.size	tcp_alloc, .-tcp_alloc
	.section	.text.tcp_new,"ax",@progbits
	.align	1
	.globl	tcp_new
	.type	tcp_new, @function
tcp_new:
.LFB40:
	.loc 1 1962 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1963 10
	li	a0,64
	call	tcp_alloc
	mv	a5,a0
	.loc 1 1964 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	tcp_new, .-tcp_new
	.section	.text.tcp_new_ip_type,"ax",@progbits
	.align	1
	.globl	tcp_new_ip_type
	.type	tcp_new_ip_type, @function
tcp_new_ip_type:
.LFB41:
	.loc 1 1980 1
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
	.loc 1 1982 9
	li	a0,64
	call	tcp_alloc
	sw	a0,-20(s0)
	.loc 1 1991 10
	lw	a5,-20(s0)
	.loc 1 1992 1
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
.LFE41:
	.size	tcp_new_ip_type, .-tcp_new_ip_type
	.section	.text.tcp_arg,"ax",@progbits
	.align	1
	.globl	tcp_arg
	.type	tcp_arg, @function
tcp_arg:
.LFB42:
	.loc 1 2006 1
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
	.loc 1 2010 6
	lw	a5,-20(s0)
	beq	a5,zero,.L309
	.loc 1 2011 23
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,16(a5)
.L309:
	.loc 1 2013 1
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
.LFE42:
	.size	tcp_arg, .-tcp_arg
	.section	.text.tcp_recv,"ax",@progbits
	.align	1
	.globl	tcp_recv
	.type	tcp_recv, @function
tcp_recv:
.LFB43:
	.loc 1 2029 1
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
	.loc 1 2031 6
	lw	a5,-20(s0)
	beq	a5,zero,.L312
	.loc 1 2033 15
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,132(a5)
.L312:
	.loc 1 2035 1
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
.LFE43:
	.size	tcp_recv, .-tcp_recv
	.section	.text.tcp_sent,"ax",@progbits
	.align	1
	.globl	tcp_sent
	.type	tcp_sent, @function
tcp_sent:
.LFB44:
	.loc 1 2049 1
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
	.loc 1 2051 6
	lw	a5,-20(s0)
	beq	a5,zero,.L315
	.loc 1 2053 15
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,128(a5)
.L315:
	.loc 1 2055 1
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
.LFE44:
	.size	tcp_sent, .-tcp_sent
	.section	.text.tcp_err,"ax",@progbits
	.align	1
	.globl	tcp_err
	.type	tcp_err, @function
tcp_err:
.LFB45:
	.loc 1 2075 1
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
	.loc 1 2077 6
	lw	a5,-20(s0)
	beq	a5,zero,.L318
	.loc 1 2079 15
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,144(a5)
.L318:
	.loc 1 2081 1
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
.LFE45:
	.size	tcp_err, .-tcp_err
	.section	.text.tcp_accept,"ax",@progbits
	.align	1
	.globl	tcp_accept
	.type	tcp_accept, @function
tcp_accept:
.LFB46:
	.loc 1 2095 1
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
	.loc 1 2097 6
	lw	a5,-36(s0)
	beq	a5,zero,.L321
	.loc 1 2097 27 discriminator 1
	lw	a5,-36(s0)
	lbu	a4,20(a5)
	.loc 1 2097 20 discriminator 1
	li	a5,1
	bne	a4,a5,.L321
.LBB20:
	.loc 1 2098 28
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 2099 18
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,24(a5)
.L321:
.LBE20:
	.loc 1 2101 1
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
.LFE46:
	.size	tcp_accept, .-tcp_accept
	.section	.text.tcp_poll,"ax",@progbits
	.align	1
	.globl	tcp_poll
	.type	tcp_poll, @function
tcp_poll:
.LFB47:
	.loc 1 2124 1
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
	mv	a5,a2
	sb	a5,-25(s0)
	.loc 1 2127 11
	lw	a5,-20(s0)
	beq	a5,zero,.L325
	.loc 1 2131 13
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,140(a5)
	.loc 1 2135 21
	lw	a5,-20(s0)
	lbu	a4,-25(s0)
	sb	a4,29(a5)
	j	.L322
.L325:
	.loc 1 2127 9
	nop
.L322:
	.loc 1 2136 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE47:
	.size	tcp_poll, .-tcp_poll
	.section	.text.tcp_pcb_purge,"ax",@progbits
	.align	1
	.globl	tcp_pcb_purge
	.type	tcp_pcb_purge, @function
tcp_pcb_purge:
.LFB48:
	.loc 1 2146 1
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
	.loc 1 2147 11
	lw	a5,-20(s0)
	beq	a5,zero,.L331
	.loc 1 2149 10
	lw	a5,-20(s0)
	lbu	a5,20(a5)
	.loc 1 2149 6
	beq	a5,zero,.L326
	.loc 1 2150 10
	lw	a5,-20(s0)
	lbu	a4,20(a5)
	.loc 1 2149 28 discriminator 1
	li	a5,10
	beq	a4,a5,.L326
	.loc 1 2151 10
	lw	a5,-20(s0)
	lbu	a4,20(a5)
	.loc 1 2150 31
	li	a5,1
	beq	a4,a5,.L326
	.loc 1 2157 12
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 1 2157 8
	beq	a5,zero,.L329
	.loc 1 2159 7
	lw	a5,-20(s0)
	lw	a5,120(a5)
	mv	a0,a5
	call	pbuf_free
	.loc 1 2160 25
	lw	a5,-20(s0)
	sw	zero,120(a5)
.L329:
	.loc 1 2169 12
	lw	a5,-20(s0)
	lw	a5,116(a5)
	.loc 1 2169 8
	beq	a5,zero,.L330
	.loc 1 2171 7
	lw	a0,-20(s0)
	call	tcp_free_ooseq
.L330:
	.loc 1 2177 16
	lw	a5,-20(s0)
	li	a4,-1
	sh	a4,48(a5)
	.loc 1 2179 5
	lw	a5,-20(s0)
	lw	a5,108(a5)
	mv	a0,a5
	call	tcp_segs_free
	.loc 1 2180 5
	lw	a5,-20(s0)
	lw	a5,112(a5)
	mv	a0,a5
	call	tcp_segs_free
	.loc 1 2181 32
	lw	a5,-20(s0)
	sw	zero,108(a5)
	.loc 1 2181 23
	lw	a5,-20(s0)
	lw	a4,108(a5)
	.loc 1 2181 18
	lw	a5,-20(s0)
	sw	a4,112(a5)
	.loc 1 2183 26
	lw	a5,-20(s0)
	sh	zero,104(a5)
	j	.L326
.L331:
	.loc 1 2147 9
	nop
.L326:
	.loc 1 2186 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE48:
	.size	tcp_pcb_purge, .-tcp_pcb_purge
	.section	.text.tcp_pcb_remove,"ax",@progbits
	.align	1
	.globl	tcp_pcb_remove
	.type	tcp_pcb_remove, @function
tcp_pcb_remove:
.LFB49:
	.loc 1 2196 1
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
	.loc 1 2200 11
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 2200 10
	lw	a4,-40(s0)
	bne	a4,a5,.L333
	.loc 1 2200 50 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 2200 59 discriminator 1
	lw	a4,12(a5)
	.loc 1 2200 47 discriminator 1
	lw	a5,-36(s0)
	sw	a4,0(a5)
	j	.L334
.L333:
.LBB21:
	.loc 1 2200 122 discriminator 2
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 2200 105
	j	.L335
.L337:
	.loc 1 2200 53 discriminator 9
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 2200 41 discriminator 9
	lw	a4,-40(s0)
	bne	a4,a5,.L336
	.loc 1 2200 97 discriminator 5
	lw	a5,-40(s0)
	lw	a4,12(a5)
	.loc 1 2200 90 discriminator 5
	lw	a5,-20(s0)
	sw	a4,12(a5)
	.loc 1 2200 105
	j	.L334
.L336:
	.loc 1 2200 16 discriminator 6
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L335:
	.loc 1 2200 146 discriminator 8
	lw	a5,-20(s0)
	bne	a5,zero,.L337
.L334:
.LBE21:
	.loc 1 2200 130 discriminator 10
	lw	a5,-40(s0)
	sw	zero,12(a5)
	.loc 1 2202 3
	lw	a0,-40(s0)
	call	tcp_pcb_purge
	.loc 1 2205 11
	lw	a5,-40(s0)
	lbu	a4,20(a5)
	.loc 1 2205 6
	li	a5,10
	beq	a4,a5,.L338
	.loc 1 2206 11
	lw	a5,-40(s0)
	lbu	a4,20(a5)
	.loc 1 2205 33 discriminator 1
	li	a5,1
	beq	a4,a5,.L338
	.loc 1 2207 11
	lw	a5,-40(s0)
	lhu	a5,26(a5)
	.loc 1 2207 19
	andi	a5,a5,1
	.loc 1 2206 30
	beq	a5,zero,.L338
	.loc 1 2208 43
	lw	a5,-40(s0)
	lhu	a5,26(a5)
	.loc 1 2208 25
	ori	a5,a5,2
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 2208 23
	lw	a5,-40(s0)
	sh	a4,26(a5)
	.loc 1 2209 5
	lw	a0,-40(s0)
	call	tcp_output
.L338:
	.loc 1 2220 14
	lw	a5,-40(s0)
	sb	zero,20(a5)
	.loc 1 2222 19
	lw	a5,-40(s0)
	sh	zero,22(a5)
	.loc 1 2225 1
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
.LFE49:
	.size	tcp_pcb_remove, .-tcp_pcb_remove
	.section	.text.tcp_next_iss,"ax",@progbits
	.align	1
	.globl	tcp_next_iss
	.type	tcp_next_iss, @function
tcp_next_iss:
.LFB50:
	.loc 1 2234 1
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
	.loc 1 2244 7
	lui	a5,%hi(iss.0)
	lw	a4,%lo(iss.0)(a5)
	lui	a5,%hi(tcp_ticks)
	lw	a5,%lo(tcp_ticks)(a5)
	add	a4,a4,a5
	lui	a5,%hi(iss.0)
	sw	a4,%lo(iss.0)(a5)
	.loc 1 2245 10
	lui	a5,%hi(iss.0)
	lw	a5,%lo(iss.0)(a5)
	.loc 1 2247 1
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
.LFE50:
	.size	tcp_next_iss, .-tcp_next_iss
	.section	.text.tcp_eff_send_mss_netif,"ax",@progbits
	.align	1
	.globl	tcp_eff_send_mss_netif
	.type	tcp_eff_send_mss_netif, @function
tcp_eff_send_mss_netif:
.LFB51:
	.loc 1 2257 1
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
	sw	a2,-44(s0)
	sh	a5,-34(s0)
	.loc 1 2279 8
	lw	a5,-40(s0)
	bne	a5,zero,.L342
	.loc 1 2280 14
	lhu	a5,-34(s0)
	j	.L343
.L342:
	.loc 1 2282 9
	lw	a5,-40(s0)
	lhu	a5,60(a5)
	sh	a5,-20(s0)
	.loc 1 2286 6
	lhu	a5,-20(s0)
	beq	a5,zero,.L344
.LBB22:
	.loc 1 2301 14
	li	a5,40
	sh	a5,-22(s0)
	.loc 1 2304 11
	lhu	a4,-20(s0)
	lhu	a5,-22(s0)
	bleu	a4,a5,.L345
	.loc 1 2304 11 is_stmt 0 discriminator 1
	lhu	a5,-20(s0)
	mv	a4,a5
	lhu	a5,-22(s0)
	sub	a5,a4,a5
	sh	a5,-18(s0)
	j	.L346
.L345:
	.loc 1 2304 11 discriminator 2
	sh	zero,-18(s0)
.L346:
	.loc 1 2309 13 is_stmt 1
	lhu	a5,-34(s0)
	mv	a2,a5
	lhu	a5,-18(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	slli	a4,a2,16
	srli	a4,a4,16
	bleu	a3,a4,.L347
	mv	a5,a2
.L347:
	sh	a5,-34(s0)
.L344:
.LBE22:
	.loc 1 2311 10
	lhu	a5,-34(s0)
.L343:
	.loc 1 2312 1
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
.LFE51:
	.size	tcp_eff_send_mss_netif, .-tcp_eff_send_mss_netif
	.section	.text.tcp_netif_ip_addr_changed_pcblist,"ax",@progbits
	.align	1
	.type	tcp_netif_ip_addr_changed_pcblist, @function
tcp_netif_ip_addr_changed_pcblist:
.LFB52:
	.loc 1 2318 1
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
	.loc 1 2320 7
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 1 2324 9
	j	.L349
.L352:
	.loc 1 2326 26
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 2326 46
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 2326 8
	bne	a4,a5,.L350
.LBB23:
	.loc 1 2333 23
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-24(s0)
	.loc 1 2335 7
	lw	a0,-20(s0)
	call	tcp_abort
	.loc 1 2336 11
	lw	a5,-24(s0)
	sw	a5,-20(s0)
.LBE23:
	j	.L349
.L350:
	.loc 1 2338 11
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L349:
	.loc 1 2324 14
	lw	a5,-20(s0)
	bne	a5,zero,.L352
	.loc 1 2341 1
	nop
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
.LFE52:
	.size	tcp_netif_ip_addr_changed_pcblist, .-tcp_netif_ip_addr_changed_pcblist
	.section	.text.tcp_netif_ip_addr_changed,"ax",@progbits
	.align	1
	.globl	tcp_netif_ip_addr_changed
	.type	tcp_netif_ip_addr_changed, @function
tcp_netif_ip_addr_changed:
.LFB53:
	.loc 1 2350 1
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
	.loc 1 2353 6
	lw	a5,-36(s0)
	beq	a5,zero,.L358
	.loc 1 2353 24 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 2353 7 discriminator 1
	beq	a5,zero,.L358
	.loc 1 2354 5
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	mv	a1,a5
	lw	a0,-36(s0)
	call	tcp_netif_ip_addr_changed_pcblist
	.loc 1 2355 5
	lui	a5,%hi(tcp_bound_pcbs)
	lw	a5,%lo(tcp_bound_pcbs)(a5)
	mv	a1,a5
	lw	a0,-36(s0)
	call	tcp_netif_ip_addr_changed_pcblist
	.loc 1 2357 8
	lw	a5,-40(s0)
	beq	a5,zero,.L358
	.loc 1 2357 26 discriminator 1
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 2357 9 discriminator 1
	beq	a5,zero,.L358
	.loc 1 2359 17
	lui	a5,%hi(tcp_listen_pcbs)
	lw	a5,%lo(tcp_listen_pcbs)(a5)
	sw	a5,-20(s0)
	.loc 1 2359 7
	j	.L355
.L357:
	.loc 1 2361 31
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 2361 51
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 2361 12
	bne	a4,a5,.L356
	.loc 1 2364 47
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 1 2364 34
	lw	a5,-20(s0)
	sw	a4,0(a5)
.L356:
	.loc 1 2359 66 discriminator 2
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L355:
	.loc 1 2359 53 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L357
.L358:
	.loc 1 2369 1
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
.LFE53:
	.size	tcp_netif_ip_addr_changed, .-tcp_netif_ip_addr_changed
	.section	.text.tcp_debug_state_str,"ax",@progbits
	.align	1
	.globl	tcp_debug_state_str
	.type	tcp_debug_state_str, @function
tcp_debug_state_str:
.LFB54:
	.loc 1 2373 1
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
	.loc 1 2374 23
	lbu	a5,-17(s0)
	lui	a4,%hi(tcp_state_str)
	addi	a4,a4,%lo(tcp_state_str)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 2375 1
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
.LFE54:
	.size	tcp_debug_state_str, .-tcp_debug_state_str
	.section	.text.tcp_tcp_get_tcp_addrinfo,"ax",@progbits
	.align	1
	.globl	tcp_tcp_get_tcp_addrinfo
	.type	tcp_tcp_get_tcp_addrinfo, @function
tcp_tcp_get_tcp_addrinfo:
.LFB55:
	.loc 1 2379 1
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
	.loc 1 2380 6
	lw	a5,-20(s0)
	beq	a5,zero,.L362
	.loc 1 2381 8
	lw	a5,-24(s0)
	beq	a5,zero,.L363
	.loc 1 2382 10
	lw	a5,-28(s0)
	beq	a5,zero,.L364
	.loc 1 2383 15
	lw	a5,-28(s0)
	lw	a4,-20(s0)
	lw	a4,0(a4)
	sw	a4,0(a5)
.L364:
	.loc 1 2385 10
	lw	a5,-32(s0)
	beq	a5,zero,.L365
	.loc 1 2386 20
	lw	a5,-20(s0)
	lhu	a4,22(a5)
	.loc 1 2386 15
	lw	a5,-32(s0)
	sh	a4,0(a5)
	j	.L365
.L363:
	.loc 1 2389 10
	lw	a5,-28(s0)
	beq	a5,zero,.L366
	.loc 1 2390 15
	lw	a5,-28(s0)
	lw	a4,-20(s0)
	lw	a4,4(a4)
	sw	a4,0(a5)
.L366:
	.loc 1 2392 10
	lw	a5,-32(s0)
	beq	a5,zero,.L365
	.loc 1 2393 20
	lw	a5,-20(s0)
	lhu	a4,24(a5)
	.loc 1 2393 15
	lw	a5,-32(s0)
	sh	a4,0(a5)
.L365:
	.loc 1 2396 12
	li	a5,0
	j	.L367
.L362:
	.loc 1 2398 10
	li	a5,-6
.L367:
	.loc 1 2399 1
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
.LFE55:
	.size	tcp_tcp_get_tcp_addrinfo, .-tcp_tcp_get_tcp_addrinfo
	.section	.text.tcp_free_ooseq,"ax",@progbits
	.align	1
	.globl	tcp_free_ooseq
	.type	tcp_free_ooseq, @function
tcp_free_ooseq:
.LFB56:
	.loc 1 2405 1
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
	.loc 1 2406 10
	lw	a5,-20(s0)
	lw	a5,116(a5)
	.loc 1 2406 6
	beq	a5,zero,.L370
	.loc 1 2407 5
	lw	a5,-20(s0)
	lw	a5,116(a5)
	mv	a0,a5
	call	tcp_segs_free
	.loc 1 2408 16
	lw	a5,-20(s0)
	sw	zero,116(a5)
.L370:
	.loc 1 2413 1
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
.LFE56:
	.size	tcp_free_ooseq, .-tcp_free_ooseq
	.section	.text.tcp_get_pcbs,"ax",@progbits
	.align	1
	.globl	tcp_get_pcbs
	.type	tcp_get_pcbs, @function
tcp_get_pcbs:
.LFB57:
	.loc 1 2706 1
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
	.loc 1 2707 9
	lw	a5,-20(s0)
	lui	a4,%hi(tcp_pcb_lists)
	addi	a4,a4,%lo(tcp_pcb_lists)
	sw	a4,0(a5)
	.loc 1 2708 10
	li	a5,4
	.loc 1 2709 1
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
.LFE57:
	.size	tcp_get_pcbs, .-tcp_get_pcbs
	.section	.sdata.iss.0,"aw"
	.align	2
	.type	iss.0, @object
	.size	iss.0, 4
iss.0:
	.word	6510
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/mem.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/stats.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcpbase.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcp.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/tcp_priv.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/tcp.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/config/lwipopts.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2159
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x2d
	.4byte	.LASF355
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2e
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x11
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x11
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x11
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x11
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x11
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x11
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x11
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2f
	.byte	0x4
	.uleb128 0x23
	.4byte	0x84
	.uleb128 0x11
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xe
	.4byte	0x8b
	.uleb128 0x8
	.4byte	0x92
	.uleb128 0xe
	.4byte	0x97
	.uleb128 0x8
	.4byte	0xab
	.uleb128 0x23
	.4byte	0xa1
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x32
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x3
	.byte	0x25
	.byte	0x13
	.4byte	0x40
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x47
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xc4
	.uleb128 0xe
	.4byte	0xe8
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0xac
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xd0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x80
	.byte	0x11
	.4byte	0xb8
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xdc
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0x43
	.byte	0xf
	.4byte	0x105
	.uleb128 0x24
	.byte	0x7
	.4byte	0x39
	.byte	0x6
	.byte	0x34
	.4byte	0x1a2
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x6
	.byte	0x38
	.byte	0x3
	.4byte	0x135
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0xa
	.byte	0x7
	.byte	0x62
	.4byte	0x1fc
	.uleb128 0xb
	.string	"err"
	.byte	0x7
	.byte	0x66
	.byte	0x9
	.4byte	0x105
	.byte	0
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x7
	.byte	0x67
	.byte	0xe
	.4byte	0x129
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x7
	.byte	0x68
	.byte	0xe
	.4byte	0x129
	.byte	0x4
	.uleb128 0xb
	.string	"max"
	.byte	0x7
	.byte	0x69
	.byte	0xe
	.4byte	0x129
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x7
	.byte	0x6a
	.byte	0x9
	.4byte	0x105
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x1ae
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x18
	.byte	0x7
	.byte	0x40
	.4byte	0x2a9
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.4byte	0x105
	.byte	0
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.4byte	0x105
	.byte	0x2
	.uleb128 0xb
	.string	"fw"
	.byte	0x7
	.byte	0x43
	.byte	0x9
	.4byte	0x105
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x7
	.byte	0x44
	.byte	0x9
	.4byte	0x105
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x7
	.byte	0x45
	.byte	0x9
	.4byte	0x105
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x7
	.byte	0x46
	.byte	0x9
	.4byte	0x105
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x7
	.byte	0x47
	.byte	0x9
	.4byte	0x105
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x7
	.byte	0x48
	.byte	0x9
	.4byte	0x105
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x7
	.byte	0x49
	.byte	0x9
	.4byte	0x105
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x7
	.byte	0x4a
	.byte	0x9
	.4byte	0x105
	.byte	0x12
	.uleb128 0xb
	.string	"err"
	.byte	0x7
	.byte	0x4b
	.byte	0x9
	.4byte	0x105
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x105
	.byte	0x16
	.byte	0
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x1c
	.byte	0x7
	.byte	0x50
	.4byte	0x36c
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x7
	.byte	0x51
	.byte	0x9
	.4byte	0x105
	.byte	0
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x7
	.byte	0x52
	.byte	0x9
	.4byte	0x105
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x7
	.byte	0x53
	.byte	0x9
	.4byte	0x105
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x7
	.byte	0x54
	.byte	0x9
	.4byte	0x105
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x7
	.byte	0x55
	.byte	0x9
	.4byte	0x105
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x7
	.byte	0x56
	.byte	0x9
	.4byte	0x105
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x7
	.byte	0x57
	.byte	0x9
	.4byte	0x105
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x7
	.byte	0x58
	.byte	0x9
	.4byte	0x105
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x7
	.byte	0x59
	.byte	0x9
	.4byte	0x105
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x7
	.byte	0x5a
	.byte	0x9
	.4byte	0x105
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x7
	.byte	0x5b
	.byte	0x9
	.4byte	0x105
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x7
	.byte	0x5c
	.byte	0x9
	.4byte	0x105
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x7
	.byte	0x5d
	.byte	0x9
	.4byte	0x105
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.4byte	0x105
	.byte	0x1a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x6
	.byte	0x7
	.byte	0x6e
	.4byte	0x3a0
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x7
	.byte	0x6f
	.byte	0x9
	.4byte	0x105
	.byte	0
	.uleb128 0xb
	.string	"max"
	.byte	0x7
	.byte	0x70
	.byte	0x9
	.4byte	0x105
	.byte	0x2
	.uleb128 0xb
	.string	"err"
	.byte	0x7
	.byte	0x71
	.byte	0x9
	.4byte	0x105
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x12
	.byte	0x7
	.byte	0x75
	.4byte	0x3d4
	.uleb128 0xb
	.string	"sem"
	.byte	0x7
	.byte	0x76
	.byte	0x18
	.4byte	0x36c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x7
	.byte	0x77
	.byte	0x18
	.4byte	0x36c
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x7
	.byte	0x78
	.byte	0x18
	.4byte	0x36c
	.byte	0xc
	.byte	0
	.uleb128 0x31
	.4byte	.LASF69
	.2byte	0x108
	.byte	0x7
	.byte	0xeb
	.byte	0x8
	.4byte	0x46a
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x7
	.byte	0xee
	.byte	0x16
	.4byte	0x201
	.byte	0
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x7
	.byte	0xf2
	.byte	0x16
	.4byte	0x201
	.byte	0x18
	.uleb128 0xb
	.string	"ip"
	.byte	0x7
	.byte	0xfa
	.byte	0x16
	.4byte	0x201
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x7
	.byte	0xfe
	.byte	0x16
	.4byte	0x201
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x102
	.byte	0x15
	.4byte	0x2a9
	.byte	0x60
	.uleb128 0xf
	.string	"udp"
	.byte	0x7
	.2byte	0x106
	.byte	0x16
	.4byte	0x201
	.byte	0x7c
	.uleb128 0xf
	.string	"tcp"
	.byte	0x7
	.2byte	0x10a
	.byte	0x16
	.4byte	0x201
	.byte	0x94
	.uleb128 0xf
	.string	"mem"
	.byte	0x7
	.2byte	0x10e
	.byte	0x14
	.4byte	0x1ae
	.byte	0xac
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x112
	.byte	0x15
	.4byte	0x46a
	.byte	0xb8
	.uleb128 0xf
	.string	"sys"
	.byte	0x7
	.2byte	0x116
	.byte	0x14
	.4byte	0x3a0
	.byte	0xf4
	.byte	0
	.uleb128 0x15
	.4byte	0x1fc
	.4byte	0x47a
	.uleb128 0x16
	.4byte	0x6a
	.byte	0xe
	.byte	0
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x133
	.byte	0x16
	.4byte	0x3d4
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x8
	.byte	0x35
	.byte	0xf
	.4byte	0x105
	.uleb128 0x21
	.4byte	.LASF118
	.4byte	0x39
	.byte	0x8
	.byte	0x38
	.4byte	0x4e5
	.uleb128 0x6
	.4byte	.LASF76
	.byte	0
	.uleb128 0x6
	.4byte	.LASF77
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF78
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF79
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF80
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF83
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF84
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF85
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF86
	.byte	0xa
	.byte	0
	.uleb128 0x24
	.byte	0x5
	.4byte	0x32
	.byte	0x9
	.byte	0x35
	.4byte	0x558
	.uleb128 0x6
	.4byte	.LASF87
	.byte	0
	.uleb128 0xc
	.4byte	.LASF88
	.sleb128 -1
	.uleb128 0xc
	.4byte	.LASF89
	.sleb128 -2
	.uleb128 0xc
	.4byte	.LASF90
	.sleb128 -3
	.uleb128 0xc
	.4byte	.LASF91
	.sleb128 -4
	.uleb128 0xc
	.4byte	.LASF92
	.sleb128 -5
	.uleb128 0xc
	.4byte	.LASF93
	.sleb128 -6
	.uleb128 0xc
	.4byte	.LASF94
	.sleb128 -7
	.uleb128 0xc
	.4byte	.LASF95
	.sleb128 -8
	.uleb128 0xc
	.4byte	.LASF96
	.sleb128 -9
	.uleb128 0xc
	.4byte	.LASF97
	.sleb128 -10
	.uleb128 0xc
	.4byte	.LASF98
	.sleb128 -11
	.uleb128 0xc
	.4byte	.LASF99
	.sleb128 -12
	.uleb128 0xc
	.4byte	.LASF100
	.sleb128 -13
	.uleb128 0xc
	.4byte	.LASF101
	.sleb128 -14
	.uleb128 0xc
	.4byte	.LASF102
	.sleb128 -15
	.uleb128 0xc
	.4byte	.LASF103
	.sleb128 -16
	.byte	0
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x9
	.byte	0x60
	.byte	0xe
	.4byte	0xf9
	.uleb128 0x12
	.4byte	.LASF105
	.byte	0x10
	.byte	0xa
	.byte	0xba
	.4byte	0x5d9
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xa
	.byte	0xbc
	.byte	0x10
	.4byte	0x5d9
	.byte	0
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0xa
	.byte	0xbf
	.byte	0x9
	.4byte	0x84
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0xa
	.byte	0xc8
	.byte	0x9
	.4byte	0x105
	.byte	0x8
	.uleb128 0xb
	.string	"len"
	.byte	0xa
	.byte	0xcb
	.byte	0x9
	.4byte	0x105
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0xa
	.byte	0xd0
	.byte	0x8
	.4byte	0xe8
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0xa
	.byte	0xd3
	.byte	0x8
	.4byte	0xe8
	.byte	0xd
	.uleb128 0xb
	.string	"ref"
	.byte	0xa
	.byte	0xda
	.byte	0x8
	.4byte	0xe8
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0xa
	.byte	0xdd
	.byte	0x8
	.4byte	0xe8
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x564
	.uleb128 0x12
	.4byte	.LASF112
	.byte	0x4
	.byte	0xb
	.byte	0x33
	.4byte	0x5f8
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0xb
	.byte	0x34
	.byte	0x9
	.4byte	0x11d
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0xb
	.byte	0x39
	.byte	0x19
	.4byte	0x5de
	.uleb128 0xe
	.4byte	0x5f8
	.uleb128 0x32
	.4byte	.LASF115
	.byte	0xc
	.2byte	0x126
	.byte	0x14
	.4byte	0x5f8
	.uleb128 0xe
	.4byte	0x609
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0xc
	.2byte	0x18e
	.byte	0x18
	.4byte	0x616
	.uleb128 0x21
	.4byte	.LASF119
	.4byte	0x39
	.byte	0xd
	.byte	0x71
	.4byte	0x650
	.uleb128 0x6
	.4byte	.LASF120
	.byte	0
	.uleb128 0x6
	.4byte	.LASF121
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF122
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF123
	.byte	0x3
	.byte	0
	.uleb128 0x21
	.4byte	.LASF124
	.4byte	0x39
	.byte	0xd
	.byte	0x9f
	.4byte	0x66c
	.uleb128 0x6
	.4byte	.LASF125
	.byte	0
	.uleb128 0x6
	.4byte	.LASF126
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x671
	.uleb128 0x33
	.4byte	.LASF127
	.byte	0x54
	.byte	0xd
	.2byte	0x10d
	.byte	0x8
	.4byte	0x797
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0xd
	.2byte	0x110
	.byte	0x11
	.4byte	0x66c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0xd
	.2byte	0x115
	.byte	0xd
	.4byte	0x609
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0xd
	.2byte	0x116
	.byte	0xd
	.4byte	0x609
	.byte	0x8
	.uleb128 0xf
	.string	"gw"
	.byte	0xd
	.2byte	0x117
	.byte	0xd
	.4byte	0x609
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0xd
	.2byte	0x129
	.byte	0x12
	.4byte	0x79c
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0xd
	.2byte	0x12f
	.byte	0x13
	.4byte	0x7c1
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF132
	.byte	0xd
	.2byte	0x134
	.byte	0x17
	.4byte	0x7f0
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0xd
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x815
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF134
	.byte	0xd
	.2byte	0x144
	.byte	0x1c
	.4byte	0x815
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0xd
	.2byte	0x14c
	.byte	0x9
	.4byte	0x84
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0xd
	.2byte	0x14e
	.byte	0x9
	.4byte	0x85b
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0xd
	.2byte	0x152
	.byte	0xf
	.4byte	0x97
	.byte	0x38
	.uleb128 0xf
	.string	"mtu"
	.byte	0xd
	.2byte	0x158
	.byte	0x9
	.4byte	0x105
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0xd
	.2byte	0x15e
	.byte	0x8
	.4byte	0x86b
	.byte	0x3e
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0xd
	.2byte	0x160
	.byte	0x8
	.4byte	0xe8
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xd
	.2byte	0x162
	.byte	0x8
	.4byte	0xe8
	.byte	0x45
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0xd
	.2byte	0x164
	.byte	0x8
	.4byte	0x87b
	.byte	0x46
	.uleb128 0xf
	.string	"num"
	.byte	0xd
	.2byte	0x167
	.byte	0x8
	.4byte	0xe8
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0xd
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x831
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0xd
	.2byte	0x185
	.byte	0xf
	.4byte	0x890
	.byte	0x50
	.byte	0
	.uleb128 0xe
	.4byte	0x671
	.uleb128 0x9
	.4byte	.LASF143
	.byte	0xd
	.byte	0xb5
	.byte	0x11
	.4byte	0x7a8
	.uleb128 0x8
	.4byte	0x7ad
	.uleb128 0x17
	.4byte	0x558
	.4byte	0x7c1
	.uleb128 0x3
	.4byte	0x5d9
	.uleb128 0x3
	.4byte	0x66c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0xd
	.byte	0xc0
	.byte	0x11
	.4byte	0x7cd
	.uleb128 0x8
	.4byte	0x7d2
	.uleb128 0x17
	.4byte	0x558
	.4byte	0x7eb
	.uleb128 0x3
	.4byte	0x66c
	.uleb128 0x3
	.4byte	0x5d9
	.uleb128 0x3
	.4byte	0x7eb
	.byte	0
	.uleb128 0x8
	.4byte	0x604
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0xd
	.byte	0xd7
	.byte	0x11
	.4byte	0x7fc
	.uleb128 0x8
	.4byte	0x801
	.uleb128 0x17
	.4byte	0x558
	.4byte	0x815
	.uleb128 0x3
	.4byte	0x66c
	.uleb128 0x3
	.4byte	0x5d9
	.byte	0
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0xd
	.byte	0xd9
	.byte	0x10
	.4byte	0x821
	.uleb128 0x8
	.4byte	0x826
	.uleb128 0x25
	.4byte	0x831
	.uleb128 0x3
	.4byte	0x66c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF147
	.byte	0xd
	.byte	0xdc
	.byte	0x11
	.4byte	0x83d
	.uleb128 0x8
	.4byte	0x842
	.uleb128 0x17
	.4byte	0x558
	.4byte	0x85b
	.uleb128 0x3
	.4byte	0x66c
	.uleb128 0x3
	.4byte	0x7eb
	.uleb128 0x3
	.4byte	0x650
	.byte	0
	.uleb128 0x15
	.4byte	0x84
	.4byte	0x86b
	.uleb128 0x16
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.4byte	0xe8
	.4byte	0x87b
	.uleb128 0x16
	.4byte	0x6a
	.byte	0x5
	.byte	0
	.uleb128 0x15
	.4byte	0x8b
	.4byte	0x88b
	.uleb128 0x16
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x34
	.string	"acd"
	.uleb128 0x8
	.4byte	0x88b
	.uleb128 0x8
	.4byte	0x616
	.uleb128 0x9
	.4byte	.LASF148
	.byte	0xe
	.byte	0x46
	.byte	0x11
	.4byte	0x8a6
	.uleb128 0x8
	.4byte	0x8ab
	.uleb128 0x17
	.4byte	0x558
	.4byte	0x8c4
	.uleb128 0x3
	.4byte	0x84
	.uleb128 0x3
	.4byte	0x8c4
	.uleb128 0x3
	.4byte	0x558
	.byte	0
	.uleb128 0x8
	.4byte	0x8c9
	.uleb128 0x12
	.4byte	.LASF149
	.byte	0xa4
	.byte	0xe
	.byte	0xf2
	.4byte	0xc1d
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0xe
	.byte	0xf4
	.byte	0xd
	.4byte	0x609
	.byte	0
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0xe
	.byte	0xf4
	.byte	0x21
	.4byte	0x609
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0xe
	.byte	0xf4
	.byte	0x31
	.4byte	0xe8
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0xe
	.byte	0xf4
	.byte	0x41
	.4byte	0xe8
	.byte	0x9
	.uleb128 0xb
	.string	"tos"
	.byte	0xe
	.byte	0xf4
	.byte	0x52
	.4byte	0xe8
	.byte	0xa
	.uleb128 0xb
	.string	"ttl"
	.byte	0xe
	.byte	0xf4
	.byte	0x5c
	.4byte	0xe8
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xe
	.byte	0xf6
	.byte	0x13
	.4byte	0x8c4
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0xe
	.byte	0xf6
	.byte	0x1f
	.4byte	0x84
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0xe
	.byte	0xf6
	.byte	0x3c
	.4byte	0x493
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0xe
	.byte	0xf6
	.byte	0x48
	.4byte	0xe8
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0xe
	.byte	0xf6
	.byte	0x54
	.4byte	0x105
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0xe
	.byte	0xf9
	.byte	0x9
	.4byte	0x105
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0xe
	.byte	0xfb
	.byte	0xe
	.4byte	0xd7b
	.byte	0x1a
	.uleb128 0x2
	.4byte	.LASF158
	.byte	0xe
	.2byte	0x116
	.byte	0x8
	.4byte	0xe8
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0xe
	.2byte	0x116
	.byte	0x11
	.4byte	0xe8
	.byte	0x1d
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0xe
	.2byte	0x117
	.byte	0x8
	.4byte	0xe8
	.byte	0x1e
	.uleb128 0xf
	.string	"tmr"
	.byte	0xe
	.2byte	0x118
	.byte	0x9
	.4byte	0x11d
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0xe
	.2byte	0x11b
	.byte	0x9
	.4byte	0x11d
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0xe
	.2byte	0x11c
	.byte	0x11
	.4byte	0x487
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0xe
	.2byte	0x11d
	.byte	0x11
	.4byte	0x487
	.byte	0x2a
	.uleb128 0x2
	.4byte	.LASF164
	.byte	0xe
	.2byte	0x11e
	.byte	0x9
	.4byte	0x11d
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF165
	.byte	0xe
	.2byte	0x127
	.byte	0x9
	.4byte	0x111
	.byte	0x30
	.uleb128 0xf
	.string	"mss"
	.byte	0xe
	.2byte	0x129
	.byte	0x9
	.4byte	0x105
	.byte	0x32
	.uleb128 0x2
	.4byte	.LASF166
	.byte	0xe
	.2byte	0x12c
	.byte	0x9
	.4byte	0x11d
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF167
	.byte	0xe
	.2byte	0x12d
	.byte	0x9
	.4byte	0x11d
	.byte	0x38
	.uleb128 0xf
	.string	"sa"
	.byte	0xe
	.2byte	0x12e
	.byte	0x9
	.4byte	0x111
	.byte	0x3c
	.uleb128 0xf
	.string	"sv"
	.byte	0xe
	.2byte	0x12e
	.byte	0xd
	.4byte	0x111
	.byte	0x3e
	.uleb128 0xf
	.string	"rto"
	.byte	0xe
	.2byte	0x130
	.byte	0x9
	.4byte	0x111
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF168
	.byte	0xe
	.2byte	0x131
	.byte	0x8
	.4byte	0xe8
	.byte	0x42
	.uleb128 0x2
	.4byte	.LASF169
	.byte	0xe
	.2byte	0x134
	.byte	0x8
	.4byte	0xe8
	.byte	0x43
	.uleb128 0x2
	.4byte	.LASF170
	.byte	0xe
	.2byte	0x135
	.byte	0x9
	.4byte	0x11d
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF171
	.byte	0xe
	.2byte	0x138
	.byte	0x11
	.4byte	0x487
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF172
	.byte	0xe
	.2byte	0x139
	.byte	0x11
	.4byte	0x487
	.byte	0x4a
	.uleb128 0x2
	.4byte	.LASF173
	.byte	0xe
	.2byte	0x13c
	.byte	0x9
	.4byte	0x11d
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF174
	.byte	0xe
	.2byte	0x13f
	.byte	0x9
	.4byte	0x11d
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF175
	.byte	0xe
	.2byte	0x140
	.byte	0x9
	.4byte	0x11d
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF176
	.byte	0xe
	.2byte	0x140
	.byte	0x12
	.4byte	0x11d
	.byte	0x58
	.uleb128 0x2
	.4byte	.LASF177
	.byte	0xe
	.2byte	0x142
	.byte	0x9
	.4byte	0x11d
	.byte	0x5c
	.uleb128 0x2
	.4byte	.LASF178
	.byte	0xe
	.2byte	0x143
	.byte	0x11
	.4byte	0x487
	.byte	0x60
	.uleb128 0x2
	.4byte	.LASF179
	.byte	0xe
	.2byte	0x144
	.byte	0x11
	.4byte	0x487
	.byte	0x62
	.uleb128 0x2
	.4byte	.LASF180
	.byte	0xe
	.2byte	0x146
	.byte	0x11
	.4byte	0x487
	.byte	0x64
	.uleb128 0x2
	.4byte	.LASF181
	.byte	0xe
	.2byte	0x148
	.byte	0x9
	.4byte	0x105
	.byte	0x66
	.uleb128 0x2
	.4byte	.LASF182
	.byte	0xe
	.2byte	0x14c
	.byte	0x9
	.4byte	0x105
	.byte	0x68
	.uleb128 0x2
	.4byte	.LASF183
	.byte	0xe
	.2byte	0x14f
	.byte	0x11
	.4byte	0x487
	.byte	0x6a
	.uleb128 0x2
	.4byte	.LASF184
	.byte	0xe
	.2byte	0x152
	.byte	0x13
	.4byte	0xdf1
	.byte	0x6c
	.uleb128 0x2
	.4byte	.LASF185
	.byte	0xe
	.2byte	0x153
	.byte	0x13
	.4byte	0xdf1
	.byte	0x70
	.uleb128 0x2
	.4byte	.LASF186
	.byte	0xe
	.2byte	0x155
	.byte	0x13
	.4byte	0xdf1
	.byte	0x74
	.uleb128 0x2
	.4byte	.LASF187
	.byte	0xe
	.2byte	0x158
	.byte	0x10
	.4byte	0x5d9
	.byte	0x78
	.uleb128 0x2
	.4byte	.LASF188
	.byte	0xe
	.2byte	0x15b
	.byte	0x1a
	.4byte	0xccd
	.byte	0x7c
	.uleb128 0x2
	.4byte	.LASF189
	.byte	0xe
	.2byte	0x160
	.byte	0xf
	.4byte	0xc51
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xe
	.2byte	0x162
	.byte	0xf
	.4byte	0xc22
	.byte	0x84
	.uleb128 0x2
	.4byte	.LASF190
	.byte	0xe
	.2byte	0x164
	.byte	0x14
	.4byte	0xcc1
	.byte	0x88
	.uleb128 0x2
	.4byte	.LASF191
	.byte	0xe
	.2byte	0x166
	.byte	0xf
	.4byte	0xc7b
	.byte	0x8c
	.uleb128 0x2
	.4byte	.LASF192
	.byte	0xe
	.2byte	0x168
	.byte	0xe
	.4byte	0xca0
	.byte	0x90
	.uleb128 0x2
	.4byte	.LASF193
	.byte	0xe
	.2byte	0x171
	.byte	0x9
	.4byte	0x11d
	.byte	0x94
	.uleb128 0x2
	.4byte	.LASF194
	.byte	0xe
	.2byte	0x173
	.byte	0x9
	.4byte	0x11d
	.byte	0x98
	.uleb128 0x2
	.4byte	.LASF195
	.byte	0xe
	.2byte	0x174
	.byte	0x9
	.4byte	0x11d
	.byte	0x9c
	.uleb128 0x2
	.4byte	.LASF196
	.byte	0xe
	.2byte	0x178
	.byte	0x8
	.4byte	0xe8
	.byte	0xa0
	.uleb128 0x2
	.4byte	.LASF197
	.byte	0xe
	.2byte	0x17a
	.byte	0x8
	.4byte	0xe8
	.byte	0xa1
	.uleb128 0x2
	.4byte	.LASF198
	.byte	0xe
	.2byte	0x17c
	.byte	0x8
	.4byte	0xe8
	.byte	0xa2
	.uleb128 0x2
	.4byte	.LASF199
	.byte	0xe
	.2byte	0x17f
	.byte	0x8
	.4byte	0xe8
	.byte	0xa3
	.byte	0
	.uleb128 0xe
	.4byte	0x8c9
	.uleb128 0x9
	.4byte	.LASF200
	.byte	0xe
	.byte	0x52
	.byte	0x11
	.4byte	0xc2e
	.uleb128 0x8
	.4byte	0xc33
	.uleb128 0x17
	.4byte	0x558
	.4byte	0xc51
	.uleb128 0x3
	.4byte	0x84
	.uleb128 0x3
	.4byte	0x8c4
	.uleb128 0x3
	.4byte	0x5d9
	.uleb128 0x3
	.4byte	0x558
	.byte	0
	.uleb128 0x9
	.4byte	.LASF201
	.byte	0xe
	.byte	0x60
	.byte	0x11
	.4byte	0xc5d
	.uleb128 0x8
	.4byte	0xc62
	.uleb128 0x17
	.4byte	0x558
	.4byte	0xc7b
	.uleb128 0x3
	.4byte	0x84
	.uleb128 0x3
	.4byte	0x8c4
	.uleb128 0x3
	.4byte	0x105
	.byte	0
	.uleb128 0x9
	.4byte	.LASF202
	.byte	0xe
	.byte	0x6c
	.byte	0x11
	.4byte	0xc87
	.uleb128 0x8
	.4byte	0xc8c
	.uleb128 0x17
	.4byte	0x558
	.4byte	0xca0
	.uleb128 0x3
	.4byte	0x84
	.uleb128 0x3
	.4byte	0x8c4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF203
	.byte	0xe
	.byte	0x78
	.byte	0x10
	.4byte	0xcac
	.uleb128 0x8
	.4byte	0xcb1
	.uleb128 0x25
	.4byte	0xcc1
	.uleb128 0x3
	.4byte	0x84
	.uleb128 0x3
	.4byte	0x558
	.byte	0
	.uleb128 0x9
	.4byte	.LASF204
	.byte	0xe
	.byte	0x86
	.byte	0x11
	.4byte	0x8a6
	.uleb128 0x8
	.4byte	0xcd2
	.uleb128 0x12
	.4byte	.LASF205
	.byte	0x1c
	.byte	0xe
	.byte	0xdf
	.4byte	0xd7b
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0xe
	.byte	0xe1
	.byte	0xd
	.4byte	0x609
	.byte	0
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0xe
	.byte	0xe1
	.byte	0x21
	.4byte	0x609
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0xe
	.byte	0xe1
	.byte	0x31
	.4byte	0xe8
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0xe
	.byte	0xe1
	.byte	0x41
	.4byte	0xe8
	.byte	0x9
	.uleb128 0xb
	.string	"tos"
	.byte	0xe
	.byte	0xe1
	.byte	0x52
	.4byte	0xe8
	.byte	0xa
	.uleb128 0xb
	.string	"ttl"
	.byte	0xe
	.byte	0xe1
	.byte	0x5c
	.4byte	0xe8
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xe
	.byte	0xe3
	.byte	0x1a
	.4byte	0xccd
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0xe
	.byte	0xe3
	.byte	0x26
	.4byte	0x84
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0xe
	.byte	0xe3
	.byte	0x43
	.4byte	0x493
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0xe
	.byte	0xe3
	.byte	0x4f
	.4byte	0xe8
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0xe
	.byte	0xe3
	.byte	0x5b
	.4byte	0x105
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF206
	.byte	0xe
	.byte	0xe7
	.byte	0x11
	.4byte	0x89a
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF207
	.byte	0xe
	.byte	0xce
	.byte	0xf
	.4byte	0x105
	.uleb128 0x12
	.4byte	.LASF208
	.byte	0x14
	.byte	0xf
	.byte	0xfa
	.4byte	0xdf1
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xf
	.byte	0xfb
	.byte	0x13
	.4byte	0xdf1
	.byte	0
	.uleb128 0xb
	.string	"p"
	.byte	0xf
	.byte	0xfc
	.byte	0x10
	.4byte	0x5d9
	.byte	0x4
	.uleb128 0xb
	.string	"len"
	.byte	0xf
	.byte	0xfd
	.byte	0x9
	.4byte	0x105
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF209
	.byte	0xf
	.2byte	0x104
	.byte	0x9
	.4byte	0x105
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF210
	.byte	0xf
	.2byte	0x105
	.byte	0x8
	.4byte	0xe8
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xf
	.2byte	0x107
	.byte	0x8
	.4byte	0xe8
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF211
	.byte	0xf
	.2byte	0x10e
	.byte	0x13
	.4byte	0xe6b
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0xd87
	.uleb128 0x12
	.4byte	.LASF212
	.byte	0x14
	.byte	0x10
	.byte	0x38
	.4byte	0xe6b
	.uleb128 0xb
	.string	"src"
	.byte	0x10
	.byte	0x39
	.byte	0x9
	.4byte	0x105
	.byte	0
	.uleb128 0x1
	.4byte	.LASF213
	.byte	0x10
	.byte	0x3a
	.byte	0x9
	.4byte	0x105
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF214
	.byte	0x10
	.byte	0x3b
	.byte	0x9
	.4byte	0x11d
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF215
	.byte	0x10
	.byte	0x3c
	.byte	0x9
	.4byte	0x11d
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF216
	.byte	0x10
	.byte	0x3d
	.byte	0x9
	.4byte	0x105
	.byte	0xc
	.uleb128 0xb
	.string	"wnd"
	.byte	0x10
	.byte	0x3e
	.byte	0x9
	.4byte	0x105
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF209
	.byte	0x10
	.byte	0x3f
	.byte	0x9
	.4byte	0x105
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF217
	.byte	0x10
	.byte	0x40
	.byte	0x9
	.4byte	0x105
	.byte	0x12
	.byte	0
	.uleb128 0x8
	.4byte	0xdf6
	.uleb128 0x14
	.4byte	.LASF218
	.byte	0xf
	.2byte	0x143
	.byte	0x18
	.4byte	0x8c4
	.uleb128 0x14
	.4byte	.LASF219
	.byte	0xf
	.2byte	0x144
	.byte	0xe
	.4byte	0x11d
	.uleb128 0x14
	.4byte	.LASF220
	.byte	0xf
	.2byte	0x145
	.byte	0xd
	.4byte	0xe8
	.uleb128 0x35
	.4byte	.LASF356
	.byte	0x4
	.byte	0xf
	.2byte	0x148
	.byte	0x7
	.4byte	0xebe
	.uleb128 0x26
	.4byte	.LASF221
	.2byte	0x149
	.byte	0x1a
	.4byte	0xccd
	.uleb128 0x26
	.4byte	.LASF222
	.2byte	0x14a
	.byte	0x13
	.4byte	0x8c4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF223
	.byte	0xf
	.2byte	0x14c
	.byte	0x18
	.4byte	0x8c4
	.uleb128 0x14
	.4byte	.LASF224
	.byte	0xf
	.2byte	0x14d
	.byte	0x20
	.4byte	0xe97
	.uleb128 0x14
	.4byte	.LASF225
	.byte	0xf
	.2byte	0x14e
	.byte	0x18
	.4byte	0x8c4
	.uleb128 0x14
	.4byte	.LASF226
	.byte	0xf
	.2byte	0x151
	.byte	0x18
	.4byte	0x8c4
	.uleb128 0x15
	.4byte	0xf0c
	.4byte	0xf02
	.uleb128 0x16
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	0xef2
	.uleb128 0x8
	.4byte	0x8c4
	.uleb128 0xe
	.4byte	0xf07
	.uleb128 0x14
	.4byte	.LASF227
	.byte	0xf
	.2byte	0x155
	.byte	0x20
	.4byte	0xf02
	.uleb128 0x15
	.4byte	0x9c
	.4byte	0xf2e
	.uleb128 0x16
	.4byte	0x6a
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.4byte	0xf1e
	.uleb128 0x1b
	.4byte	.LASF228
	.byte	0x90
	.byte	0x1a
	.4byte	0xf2e
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_state_str
	.uleb128 0x1b
	.4byte	.LASF229
	.byte	0x9f
	.byte	0xe
	.4byte	0x105
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_port
	.uleb128 0x1a
	.4byte	0xe7d
	.byte	0xa2
	.byte	0x7
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_ticks
	.uleb128 0x15
	.4byte	0xf4
	.4byte	0xf72
	.uleb128 0x16
	.4byte	0x6a
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.4byte	0xf62
	.uleb128 0x1b
	.4byte	.LASF230
	.byte	0xa3
	.byte	0x13
	.4byte	0xf72
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_backoff
	.uleb128 0x15
	.4byte	0xf4
	.4byte	0xf98
	.uleb128 0x16
	.4byte	0x6a
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.4byte	0xf88
	.uleb128 0x1b
	.4byte	.LASF231
	.byte	0xa6
	.byte	0x13
	.4byte	0xf98
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_persist_backoff
	.uleb128 0x1a
	.4byte	0xebe
	.byte	0xab
	.byte	0x11
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_bound_pcbs
	.uleb128 0x1a
	.4byte	0xecb
	.byte	0xad
	.byte	0x19
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_listen_pcbs
	.uleb128 0x1a
	.4byte	0xed8
	.byte	0xb0
	.byte	0x11
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_active_pcbs
	.uleb128 0x1a
	.4byte	0xee5
	.byte	0xb2
	.byte	0x11
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_tw_pcbs
	.uleb128 0x1a
	.4byte	0xf11
	.byte	0xb5
	.byte	0x18
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_pcb_lists
	.uleb128 0x1a
	.4byte	0xe8a
	.byte	0xb9
	.byte	0x6
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_active_pcbs_changed
	.uleb128 0x1b
	.4byte	.LASF232
	.byte	0xbc
	.byte	0xd
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_timer
	.uleb128 0x1b
	.4byte	.LASF233
	.byte	0xbd
	.byte	0xd
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_timer_ctr
	.uleb128 0x1f
	.4byte	.LASF234
	.byte	0x11
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x103e
	.uleb128 0x3
	.4byte	0x84
	.uleb128 0x3
	.4byte	0x2b
	.uleb128 0x3
	.4byte	0x71
	.byte	0
	.uleb128 0x27
	.4byte	.LASF237
	.byte	0xa
	.2byte	0x124
	.4byte	0x1050
	.uleb128 0x3
	.4byte	0x5d9
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF235
	.byte	0x11
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0x1070
	.uleb128 0x3
	.4byte	0x86
	.uleb128 0x3
	.4byte	0xa6
	.uleb128 0x3
	.4byte	0x71
	.byte	0
	.uleb128 0x18
	.4byte	.LASF236
	.byte	0xf
	.2byte	0x1d9
	.byte	0x7
	.4byte	0x558
	.4byte	0x1087
	.uleb128 0x3
	.4byte	0x8c4
	.byte	0
	.uleb128 0x28
	.4byte	.LASF238
	.byte	0xf
	.byte	0x55
	.4byte	0x1098
	.uleb128 0x3
	.4byte	0x8c4
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF239
	.byte	0xf
	.byte	0x54
	.byte	0x7
	.4byte	0x558
	.4byte	0x10ae
	.uleb128 0x3
	.4byte	0x8c4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF240
	.byte	0xf
	.2byte	0x1da
	.byte	0x7
	.4byte	0x558
	.4byte	0x10ca
	.uleb128 0x3
	.4byte	0x8c4
	.uleb128 0x3
	.4byte	0x105
	.byte	0
	.uleb128 0x18
	.4byte	.LASF241
	.byte	0xf
	.2byte	0x1db
	.byte	0x7
	.4byte	0x558
	.4byte	0x10e1
	.uleb128 0x3
	.4byte	0x8c4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF242
	.byte	0xf
	.2byte	0x1cc
	.byte	0x7
	.4byte	0x558
	.4byte	0x10fd
	.uleb128 0x3
	.4byte	0x8c4
	.uleb128 0x3
	.4byte	0xe8
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF243
	.byte	0x12
	.byte	0x41
	.byte	0xf
	.4byte	0x66c
	.4byte	0x1113
	.uleb128 0x3
	.4byte	0x7eb
	.byte	0
	.uleb128 0x18
	.4byte	.LASF244
	.byte	0xd
	.2byte	0x23f
	.byte	0xf
	.4byte	0x66c
	.4byte	0x112a
	.uleb128 0x3
	.4byte	0xe8
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF245
	.byte	0x6
	.byte	0x93
	.byte	0x7
	.4byte	0x84
	.4byte	0x1140
	.uleb128 0x3
	.4byte	0x1a2
	.byte	0
	.uleb128 0x29
	.4byte	.LASF249
	.2byte	0x1f9
	.uleb128 0x18
	.4byte	.LASF246
	.byte	0xa
	.2byte	0x125
	.byte	0x6
	.4byte	0xe8
	.4byte	0x115e
	.uleb128 0x3
	.4byte	0x5d9
	.byte	0
	.uleb128 0x18
	.4byte	.LASF247
	.byte	0xe
	.2byte	0x1de
	.byte	0x7
	.4byte	0x558
	.4byte	0x1175
	.uleb128 0x3
	.4byte	0x8c4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF248
	.byte	0xf
	.2byte	0x1cb
	.byte	0x7
	.4byte	0x558
	.4byte	0x118c
	.uleb128 0x3
	.4byte	0x8c4
	.byte	0
	.uleb128 0x29
	.4byte	.LASF250
	.2byte	0x1dc
	.uleb128 0x27
	.4byte	.LASF251
	.byte	0xf
	.2byte	0x1d0
	.4byte	0x11c3
	.uleb128 0x3
	.4byte	0x11c3
	.uleb128 0x3
	.4byte	0x11d
	.uleb128 0x3
	.4byte	0x11d
	.uleb128 0x3
	.4byte	0x895
	.uleb128 0x3
	.4byte	0x895
	.uleb128 0x3
	.4byte	0x105
	.uleb128 0x3
	.4byte	0x105
	.byte	0
	.uleb128 0x8
	.4byte	0xc1d
	.uleb128 0x28
	.4byte	.LASF252
	.byte	0x6
	.byte	0x95
	.4byte	0x11de
	.uleb128 0x3
	.4byte	0x1a2
	.uleb128 0x3
	.4byte	0x84
	.byte	0
	.uleb128 0x36
	.4byte	.LASF357
	.byte	0x13
	.2byte	0x127
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x1c
	.4byte	.LASF254
	.2byte	0xa91
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1215
	.uleb128 0x7
	.4byte	.LASF253
	.2byte	0xa91
	.byte	0x2a
	.4byte	0x1215
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	0x121a
	.uleb128 0x8
	.4byte	0xf0c
	.uleb128 0x10
	.4byte	.LASF259
	.2byte	0x964
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1244
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x964
	.byte	0x20
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF255
	.2byte	0x94a
	.byte	0x1
	.4byte	0x558
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x129b
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x94a
	.byte	0x2a
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF256
	.2byte	0x94a
	.byte	0x33
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF113
	.2byte	0x94a
	.byte	0x45
	.4byte	0x129b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF257
	.2byte	0x94a
	.byte	0x52
	.4byte	0x12a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.4byte	0x609
	.uleb128 0x8
	.4byte	0x105
	.uleb128 0x1c
	.4byte	.LASF258
	.2byte	0x944
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12cd
	.uleb128 0x5
	.string	"s"
	.2byte	0x944
	.byte	0x24
	.4byte	0x493
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x10
	.4byte	.LASF260
	.2byte	0x92d
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1310
	.uleb128 0x7
	.4byte	.LASF261
	.2byte	0x92d
	.byte	0x2c
	.4byte	0x895
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF262
	.2byte	0x92d
	.byte	0x47
	.4byte	0x895
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x92f
	.byte	0x1a
	.4byte	0xccd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF285
	.2byte	0x90d
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x136c
	.uleb128 0x7
	.4byte	.LASF261
	.2byte	0x90d
	.byte	0x34
	.4byte	0x895
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF264
	.2byte	0x90d
	.byte	0x4e
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"pcb"
	.2byte	0x90f
	.byte	0x13
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x4
	.4byte	.LASF106
	.2byte	0x91d
	.byte	0x17
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF265
	.2byte	0x8d0
	.byte	0x1
	.4byte	0x105
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13eb
	.uleb128 0x7
	.4byte	.LASF266
	.2byte	0x8d0
	.byte	0x1e
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x7
	.4byte	.LASF267
	.2byte	0x8d0
	.byte	0x35
	.4byte	0x66c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF213
	.2byte	0x8d0
	.byte	0x4d
	.4byte	0x895
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF268
	.2byte	0x8d2
	.byte	0x9
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xa
	.string	"mtu"
	.2byte	0x8d3
	.byte	0x9
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x4
	.4byte	.LASF269
	.2byte	0x8ef
	.byte	0xb
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF270
	.2byte	0x8b9
	.byte	0x1
	.4byte	0x11d
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1427
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x8b9
	.byte	0x1e
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"iss"
	.2byte	0x8bf
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x5
	.byte	0x3
	.4byte	iss.0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF271
	.2byte	0x893
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1474
	.uleb128 0x7
	.4byte	.LASF272
	.2byte	0x893
	.byte	0x21
	.4byte	0xf07
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x893
	.byte	0x3a
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x4
	.4byte	.LASF273
	.2byte	0x898
	.byte	0x5c
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF274
	.2byte	0x861
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1499
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x861
	.byte	0x1f
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF275
	.2byte	0x84b
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14dc
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x84b
	.byte	0x1a
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF191
	.2byte	0x84b
	.byte	0x2b
	.4byte	0xc7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF276
	.2byte	0x84b
	.byte	0x36
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x19
	.4byte	.LASF277
	.2byte	0x82e
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1529
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x82e
	.byte	0x1c
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF206
	.2byte	0x82e
	.byte	0x2f
	.4byte	0x89a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x832
	.byte	0x1c
	.4byte	0xccd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF278
	.2byte	0x81a
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x155d
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x81a
	.byte	0x19
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"err"
	.2byte	0x81a
	.byte	0x29
	.4byte	0xca0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.4byte	.LASF279
	.2byte	0x800
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1591
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x800
	.byte	0x1a
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF189
	.2byte	0x800
	.byte	0x2b
	.4byte	0xc51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.4byte	.LASF280
	.2byte	0x7ec
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15c5
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x7ec
	.byte	0x1a
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF48
	.2byte	0x7ec
	.byte	0x2b
	.4byte	0xc22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.4byte	.LASF281
	.2byte	0x7d5
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15f9
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x7d5
	.byte	0x19
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"arg"
	.2byte	0x7d5
	.byte	0x24
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF282
	.2byte	0x7bb
	.4byte	0x8c4
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1631
	.uleb128 0x7
	.4byte	.LASF283
	.2byte	0x7bb
	.byte	0x16
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xa
	.string	"pcb"
	.2byte	0x7bd
	.byte	0x13
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.4byte	.LASF358
	.byte	0x1
	.2byte	0x7a9
	.byte	0x1
	.4byte	0x8c4
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF284
	.2byte	0x736
	.4byte	0x8c4
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1680
	.uleb128 0x7
	.4byte	.LASF155
	.2byte	0x736
	.byte	0x10
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xa
	.string	"pcb"
	.2byte	0x738
	.byte	0x13
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF286
	.2byte	0x71f
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16be
	.uleb128 0xa
	.string	"pcb"
	.2byte	0x721
	.byte	0x13
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x4
	.4byte	.LASF106
	.2byte	0x724
	.byte	0x15
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF287
	.2byte	0x704
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1701
	.uleb128 0xa
	.string	"pcb"
	.2byte	0x706
	.byte	0x13
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF288
	.2byte	0x706
	.byte	0x19
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF289
	.2byte	0x707
	.byte	0x9
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF290
	.2byte	0x6e4
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1753
	.uleb128 0x7
	.4byte	.LASF135
	.2byte	0x6e4
	.byte	0x1f
	.4byte	0x493
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xa
	.string	"pcb"
	.2byte	0x6e6
	.byte	0x13
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF288
	.2byte	0x6e6
	.byte	0x19
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF289
	.2byte	0x6e7
	.byte	0x9
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF291
	.2byte	0x6b6
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17b4
	.uleb128 0x7
	.4byte	.LASF155
	.2byte	0x6b6
	.byte	0x14
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xa
	.string	"pcb"
	.2byte	0x6b8
	.byte	0x13
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF288
	.2byte	0x6b8
	.byte	0x19
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF289
	.2byte	0x6b9
	.byte	0x9
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF292
	.2byte	0x6ba
	.byte	0x8
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.uleb128 0x13
	.4byte	.LASF293
	.2byte	0x6a0
	.4byte	0x558
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1808
	.uleb128 0x5
	.string	"arg"
	.2byte	0x6a0
	.byte	0x15
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x6a0
	.byte	0x2a
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"p"
	.2byte	0x6a0
	.byte	0x3c
	.4byte	0x5d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"err"
	.2byte	0x6a0
	.byte	0x45
	.4byte	0x558
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.uleb128 0x13
	.4byte	.LASF294
	.2byte	0x68a
	.4byte	0xdf1
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1840
	.uleb128 0x5
	.string	"seg"
	.2byte	0x68a
	.byte	0x1e
	.4byte	0xdf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF295
	.2byte	0x68c
	.byte	0x13
	.4byte	0xdf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF296
	.2byte	0x678
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1874
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x678
	.byte	0x1d
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF155
	.2byte	0x678
	.byte	0x27
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x10
	.4byte	.LASF297
	.2byte	0x663
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1899
	.uleb128 0x5
	.string	"seg"
	.2byte	0x663
	.byte	0x1e
	.4byte	0xdf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF298
	.2byte	0x654
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18d7
	.uleb128 0x5
	.string	"seg"
	.2byte	0x654
	.byte	0x1f
	.4byte	0xdf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x4
	.4byte	.LASF106
	.2byte	0x657
	.byte	0x15
	.4byte	0xdf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF299
	.2byte	0x60f
	.4byte	0x558
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1937
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x60f
	.byte	0x2a
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0xa
	.string	"err"
	.2byte	0x61b
	.byte	0xb
	.4byte	0x558
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x4
	.4byte	.LASF300
	.2byte	0x61c
	.byte	0xa
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x4
	.4byte	.LASF187
	.2byte	0x61f
	.byte	0x12
	.4byte	0x5d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF301
	.2byte	0x602
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x195c
	.uleb128 0xa
	.string	"pcb"
	.2byte	0x604
	.byte	0x13
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF302
	.2byte	0x5d3
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19a5
	.uleb128 0xa
	.string	"pcb"
	.2byte	0x5d5
	.byte	0x13
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.4byte	.LASF308
	.2byte	0x5d9
	.4byte	.L228
	.uleb128 0xd
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x4
	.4byte	.LASF106
	.2byte	0x5de
	.byte	0x17
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF303
	.2byte	0x4ac
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ae5
	.uleb128 0xa
	.string	"pcb"
	.2byte	0x4ae
	.byte	0x13
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF304
	.2byte	0x4ae
	.byte	0x19
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF305
	.2byte	0x4af
	.byte	0x11
	.4byte	0x487
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x4
	.4byte	.LASF306
	.2byte	0x4b0
	.byte	0x8
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x4
	.4byte	.LASF307
	.2byte	0x4b1
	.byte	0x8
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xa
	.string	"err"
	.2byte	0x4b2
	.byte	0x9
	.4byte	0x558
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x20
	.4byte	.LASF309
	.2byte	0x4b9
	.4byte	.L181
	.uleb128 0x1e
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x1a55
	.uleb128 0x4
	.4byte	.LASF310
	.2byte	0x4dd
	.byte	0x10
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0xd
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x4
	.4byte	.LASF311
	.2byte	0x4e2
	.byte	0x11
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x1a81
	.uleb128 0x4
	.4byte	.LASF312
	.2byte	0x50b
	.byte	0x14
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x4
	.4byte	.LASF313
	.2byte	0x50c
	.byte	0x13
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x1acb
	.uleb128 0x4
	.4byte	.LASF314
	.2byte	0x570
	.byte	0x17
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.4byte	.LASF315
	.2byte	0x572
	.byte	0x12
	.4byte	0xca0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF316
	.2byte	0x574
	.byte	0xd
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF317
	.2byte	0x575
	.byte	0x16
	.4byte	0x493
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.byte	0
	.uleb128 0xd
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x4
	.4byte	.LASF314
	.2byte	0x5b7
	.byte	0x17
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF318
	.2byte	0x42f
	.4byte	0x558
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bd7
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x42f
	.byte	0x1d
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.4byte	.LASF319
	.2byte	0x42f
	.byte	0x33
	.4byte	0x895
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.4byte	.LASF257
	.2byte	0x42f
	.byte	0x41
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x7
	.4byte	.LASF190
	.2byte	0x430
	.byte	0x1e
	.4byte	0xcc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.4byte	.LASF127
	.2byte	0x432
	.byte	0x11
	.4byte	0x66c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"ret"
	.2byte	0x433
	.byte	0x9
	.4byte	0x558
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0xa
	.string	"iss"
	.2byte	0x434
	.byte	0x9
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF320
	.2byte	0x435
	.byte	0x9
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1e
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x1b93
	.uleb128 0x4
	.4byte	.LASF150
	.2byte	0x44f
	.byte	0x16
	.4byte	0x895
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x1bbd
	.uleb128 0x4
	.4byte	.LASF321
	.2byte	0x46a
	.byte	0x17
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.string	"i"
	.2byte	0x46b
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xd
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x4
	.4byte	.LASF273
	.2byte	0x49a
	.byte	0x78
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF332
	.byte	0x1
	.2byte	0x3f7
	.byte	0x1
	.4byte	0x105
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c27
	.uleb128 0xa
	.string	"i"
	.2byte	0x3f9
	.byte	0x8
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xa
	.string	"n"
	.2byte	0x3fa
	.byte	0x9
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"pcb"
	.2byte	0x3fb
	.byte	0x13
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.4byte	.LASF322
	.2byte	0x3fd
	.4byte	.L141
	.byte	0
	.uleb128 0x10
	.4byte	.LASF323
	.2byte	0x3cc
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c79
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x3cc
	.byte	0x1c
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"len"
	.2byte	0x3cc
	.byte	0x27
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x4
	.4byte	.LASF324
	.2byte	0x3ce
	.byte	0x9
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF162
	.2byte	0x3cf
	.byte	0x11
	.4byte	0x487
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF325
	.2byte	0x3a6
	.byte	0x1
	.4byte	0x11d
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ccb
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x3a6
	.byte	0x28
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF326
	.2byte	0x3a8
	.byte	0x9
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x4
	.4byte	.LASF327
	.2byte	0x3b8
	.byte	0xd
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF328
	.2byte	0x351
	.4byte	0x8c4
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d54
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x351
	.byte	0x31
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF329
	.2byte	0x351
	.byte	0x3b
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x5
	.string	"err"
	.2byte	0x351
	.byte	0x4b
	.4byte	0x1d54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x353
	.byte	0x1a
	.4byte	0xccd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"res"
	.2byte	0x354
	.byte	0x9
	.4byte	0x558
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x20
	.4byte	.LASF330
	.2byte	0x398
	.4byte	.L111
	.uleb128 0xd
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x4
	.4byte	.LASF273
	.2byte	0x388
	.byte	0x76
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x558
	.uleb128 0x13
	.4byte	.LASF331
	.2byte	0x33a
	.4byte	0x8c4
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d91
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x33a
	.byte	0x29
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF329
	.2byte	0x33a
	.byte	0x33
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x22
	.4byte	.LASF333
	.2byte	0x30b
	.4byte	0x558
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dd8
	.uleb128 0x5
	.string	"arg"
	.2byte	0x30b
	.byte	0x17
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x30b
	.byte	0x2c
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"err"
	.2byte	0x30b
	.byte	0x37
	.4byte	0x558
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x19
	.4byte	.LASF334
	.2byte	0x2fc
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e0c
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x2fc
	.byte	0x20
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF127
	.2byte	0x2fc
	.byte	0x39
	.4byte	0x1e0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	0x797
	.uleb128 0x13
	.4byte	.LASF335
	.2byte	0x296
	.4byte	0x558
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e83
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x296
	.byte	0x1a
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF319
	.2byte	0x296
	.byte	0x30
	.4byte	0x895
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF257
	.2byte	0x296
	.byte	0x3e
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0xa
	.string	"i"
	.2byte	0x298
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF336
	.2byte	0x299
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF321
	.2byte	0x29a
	.byte	0x13
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF337
	.2byte	0x27e
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ea8
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x27e
	.byte	0x1b
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF338
	.2byte	0x233
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f68
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x233
	.byte	0x1d
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.4byte	.LASF339
	.2byte	0x233
	.byte	0x26
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF214
	.2byte	0x235
	.byte	0x9
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF215
	.2byte	0x235
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF192
	.2byte	0x237
	.byte	0xe
	.4byte	0xca0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF340
	.2byte	0x239
	.byte	0x9
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x4
	.4byte	.LASF341
	.2byte	0x249
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF156
	.2byte	0x24a
	.byte	0xb
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x4
	.4byte	.LASF317
	.2byte	0x24b
	.byte	0x14
	.4byte	0x493
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0xd
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x4
	.4byte	.LASF273
	.2byte	0x255
	.byte	0x7a
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF342
	.2byte	0x203
	.4byte	0x558
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1faf
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x203
	.byte	0x1e
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF343
	.2byte	0x203
	.byte	0x27
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF344
	.2byte	0x203
	.byte	0x34
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.4byte	.LASF345
	.2byte	0x1e4
	.4byte	0x558
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fd8
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x1e4
	.byte	0x1b
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.4byte	.LASF346
	.2byte	0x199
	.4byte	0x558
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2010
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x199
	.byte	0x28
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"err"
	.2byte	0x19b
	.byte	0x9
	.4byte	0x558
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x22
	.4byte	.LASF347
	.2byte	0x15c
	.4byte	0x558
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x207e
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x15c
	.byte	0x24
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF348
	.2byte	0x15c
	.byte	0x2e
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1e
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x2064
	.uleb128 0x4
	.4byte	.LASF273
	.2byte	0x16c
	.byte	0x80
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x4
	.4byte	.LASF273
	.2byte	0x184
	.byte	0x7a
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF349
	.2byte	0x10d
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20b0
	.uleb128 0x5
	.string	"pcb"
	.2byte	0x10d
	.byte	0x23
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"i"
	.2byte	0x110
	.byte	0xa
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x39
	.4byte	.LASF350
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20f2
	.uleb128 0x2a
	.4byte	.LASF253
	.byte	0xfb
	.byte	0x25
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.4byte	.LASF263
	.byte	0xfb
	.byte	0x42
	.4byte	0xccd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3a
	.string	"pcb"
	.byte	0x1
	.byte	0xfd
	.byte	0x13
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF353
	.byte	0xea
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3b
	.4byte	.LASF351
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2127
	.uleb128 0x2c
	.string	"pcb"
	.byte	0xdd
	.byte	0x21
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF352
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x214c
	.uleb128 0x2c
	.string	"pcb"
	.byte	0xd2
	.byte	0x1a
	.4byte	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF354
	.byte	0xc9
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x11
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
	.uleb128 0x14
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x17
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1bc
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
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
	.byte	0x7
	.4byte	.LFB40
	.uleb128 .LFE40-.LFB40
	.byte	0x7
	.4byte	.LFB41
	.uleb128 .LFE41-.LFB41
	.byte	0x7
	.4byte	.LFB42
	.uleb128 .LFE42-.LFB42
	.byte	0x7
	.4byte	.LFB43
	.uleb128 .LFE43-.LFB43
	.byte	0x7
	.4byte	.LFB44
	.uleb128 .LFE44-.LFB44
	.byte	0x7
	.4byte	.LFB45
	.uleb128 .LFE45-.LFB45
	.byte	0x7
	.4byte	.LFB46
	.uleb128 .LFE46-.LFB46
	.byte	0x7
	.4byte	.LFB47
	.uleb128 .LFE47-.LFB47
	.byte	0x7
	.4byte	.LFB48
	.uleb128 .LFE48-.LFB48
	.byte	0x7
	.4byte	.LFB49
	.uleb128 .LFE49-.LFB49
	.byte	0x7
	.4byte	.LFB50
	.uleb128 .LFE50-.LFB50
	.byte	0x7
	.4byte	.LFB51
	.uleb128 .LFE51-.LFB51
	.byte	0x7
	.4byte	.LFB52
	.uleb128 .LFE52-.LFB52
	.byte	0x7
	.4byte	.LFB53
	.uleb128 .LFE53-.LFB53
	.byte	0x7
	.4byte	.LFB54
	.uleb128 .LFE54-.LFB54
	.byte	0x7
	.4byte	.LFB55
	.uleb128 .LFE55-.LFB55
	.byte	0x7
	.4byte	.LFB56
	.uleb128 .LFE56-.LFB56
	.byte	0x7
	.4byte	.LFB57
	.uleb128 .LFE57-.LFB57
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF241:
	.string	"tcp_zero_window_probe"
.LASF221:
	.string	"listen_pcbs"
.LASF268:
	.string	"mss_s"
.LASF28:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF295:
	.string	"cseg"
.LASF236:
	.string	"tcp_keepalive"
.LASF153:
	.string	"so_options"
.LASF226:
	.string	"tcp_tw_pcbs"
.LASF318:
	.string	"tcp_connect"
.LASF130:
	.string	"input"
.LASF246:
	.string	"pbuf_free"
.LASF342:
	.string	"tcp_shutdown"
.LASF322:
	.string	"again"
.LASF198:
	.string	"persist_probe"
.LASF217:
	.string	"urgp"
.LASF188:
	.string	"listener"
.LASF122:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF158:
	.string	"polltmr"
.LASF148:
	.string	"tcp_accept_fn"
.LASF110:
	.string	"flags"
.LASF102:
	.string	"ERR_CLSD"
.LASF95:
	.string	"ERR_USE"
.LASF103:
	.string	"ERR_ARG"
.LASF61:
	.string	"rx_report"
.LASF86:
	.string	"TIME_WAIT"
.LASF301:
	.string	"tcp_txnow"
.LASF10:
	.string	"unsigned int"
.LASF152:
	.string	"netif_idx"
.LASF106:
	.string	"next"
.LASF227:
	.string	"tcp_pcb_lists"
.LASF326:
	.string	"new_right_edge"
.LASF104:
	.string	"err_t"
.LASF276:
	.string	"interval"
.LASF231:
	.string	"tcp_persist_backoff"
.LASF132:
	.string	"linkoutput"
.LASF270:
	.string	"tcp_next_iss"
.LASF304:
	.string	"prev"
.LASF252:
	.string	"memp_free"
.LASF21:
	.string	"u16_t"
.LASF250:
	.string	"tcp_trigger_input_pcb_close"
.LASF306:
	.string	"pcb_remove"
.LASF340:
	.string	"errf_arg"
.LASF164:
	.string	"rcv_ann_right_edge"
.LASF315:
	.string	"err_fn"
.LASF45:
	.string	"stats_mem"
.LASF242:
	.string	"tcp_enqueue_flags"
.LASF264:
	.string	"pcb_list"
.LASF238:
	.string	"tcp_rexmit_rto_commit"
.LASF144:
	.string	"netif_output_fn"
.LASF313:
	.string	"calc_rto"
.LASF199:
	.string	"keep_cnt_sent"
.LASF39:
	.string	"MEMP_PBUF_POOL"
.LASF116:
	.string	"lwip_stats"
.LASF181:
	.string	"snd_queuelen"
.LASF280:
	.string	"tcp_recv"
.LASF201:
	.string	"tcp_sent_fn"
.LASF101:
	.string	"ERR_RST"
.LASF286:
	.string	"tcp_handle_closepend"
.LASF195:
	.string	"keep_cnt"
.LASF271:
	.string	"tcp_pcb_remove"
.LASF96:
	.string	"ERR_ALREADY"
.LASF65:
	.string	"stats_syselem"
.LASF214:
	.string	"seqno"
.LASF253:
	.string	"list"
.LASF300:
	.string	"refused_flags"
.LASF143:
	.string	"netif_input_fn"
.LASF335:
	.string	"tcp_bind"
.LASF307:
	.string	"pcb_reset"
.LASF18:
	.string	"uint32_t"
.LASF14:
	.string	"int8_t"
.LASF171:
	.string	"cwnd"
.LASF35:
	.string	"MEMP_IGMP_GROUP"
.LASF220:
	.string	"tcp_active_pcbs_changed"
.LASF206:
	.string	"accept"
.LASF348:
	.string	"rst_on_unacked_data"
.LASF33:
	.string	"MEMP_TCPIP_MSG_API"
.LASF336:
	.string	"max_pcb_list"
.LASF55:
	.string	"opterr"
.LASF156:
	.string	"local_port"
.LASF67:
	.string	"mutex"
.LASF352:
	.string	"tcp_free"
.LASF282:
	.string	"tcp_new_ip_type"
.LASF204:
	.string	"tcp_connected_fn"
.LASF44:
	.string	"illegal"
.LASF117:
	.string	"ip_addr_any"
.LASF15:
	.string	"int16_t"
.LASF138:
	.string	"hwaddr"
.LASF71:
	.string	"etharp"
.LASF208:
	.string	"tcp_seg"
.LASF9:
	.string	"long long unsigned int"
.LASF303:
	.string	"tcp_slowtmr"
.LASF289:
	.string	"inactivity"
.LASF255:
	.string	"tcp_tcp_get_tcp_addrinfo"
.LASF73:
	.string	"igmp"
.LASF167:
	.string	"rtseq"
.LASF263:
	.string	"lpcb"
.LASF114:
	.string	"ip4_addr_t"
.LASF118:
	.string	"tcp_state"
.LASF210:
	.string	"chksum_swapped"
.LASF165:
	.string	"rtime"
.LASF139:
	.string	"hwaddr_len"
.LASF245:
	.string	"memp_malloc"
.LASF323:
	.string	"tcp_recved"
.LASF93:
	.string	"ERR_VAL"
.LASF64:
	.string	"tx_report"
.LASF161:
	.string	"rcv_nxt"
.LASF34:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF43:
	.string	"used"
.LASF185:
	.string	"unacked"
.LASF69:
	.string	"stats_"
.LASF230:
	.string	"tcp_backoff"
.LASF119:
	.string	"lwip_internal_netif_client_data_index"
.LASF85:
	.string	"LAST_ACK"
.LASF109:
	.string	"type_internal"
.LASF108:
	.string	"tot_len"
.LASF319:
	.string	"ipaddr"
.LASF13:
	.string	"size_t"
.LASF265:
	.string	"tcp_eff_send_mss_netif"
.LASF107:
	.string	"payload"
.LASF269:
	.string	"offset"
.LASF279:
	.string	"tcp_sent"
.LASF131:
	.string	"output"
.LASF272:
	.string	"pcblist"
.LASF190:
	.string	"connected"
.LASF349:
	.string	"tcp_listen_closed"
.LASF312:
	.string	"backoff_idx"
.LASF105:
	.string	"pbuf"
.LASF273:
	.string	"tcp_tmp_pcb"
.LASF350:
	.string	"tcp_remove_listener"
.LASF274:
	.string	"tcp_pcb_purge"
.LASF84:
	.string	"CLOSING"
.LASF305:
	.string	"eff_wnd"
.LASF170:
	.string	"lastack"
.LASF40:
	.string	"MEMP_MAX"
.LASF232:
	.string	"tcp_timer"
.LASF20:
	.string	"s8_t"
.LASF328:
	.string	"tcp_listen_with_backlog_and_err"
.LASF32:
	.string	"MEMP_NETCONN"
.LASF247:
	.string	"tcp_output"
.LASF243:
	.string	"ip4_route"
.LASF60:
	.string	"rx_general"
.LASF94:
	.string	"ERR_WOULDBLOCK"
.LASF98:
	.string	"ERR_CONN"
.LASF90:
	.string	"ERR_TIMEOUT"
.LASF225:
	.string	"tcp_active_pcbs"
.LASF219:
	.string	"tcp_ticks"
.LASF169:
	.string	"dupacks"
.LASF155:
	.string	"prio"
.LASF159:
	.string	"pollinterval"
.LASF38:
	.string	"MEMP_PBUF"
.LASF191:
	.string	"poll"
.LASF136:
	.string	"client_data"
.LASF12:
	.string	"char"
.LASF24:
	.string	"mem_size_t"
.LASF147:
	.string	"netif_igmp_mac_filter_fn"
.LASF141:
	.string	"igmp_mac_filter"
.LASF46:
	.string	"stats_proto"
.LASF83:
	.string	"CLOSE_WAIT"
.LASF320:
	.string	"old_local_port"
.LASF324:
	.string	"wnd_inflation"
.LASF184:
	.string	"unsent"
.LASF244:
	.string	"netif_get_by_index"
.LASF126:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF189:
	.string	"sent"
.LASF16:
	.string	"uint8_t"
.LASF175:
	.string	"snd_wl1"
.LASF176:
	.string	"snd_wl2"
.LASF344:
	.string	"shut_tx"
.LASF353:
	.string	"tcp_tmr"
.LASF294:
	.string	"tcp_seg_copy"
.LASF203:
	.string	"tcp_err_fn"
.LASF249:
	.string	"tcp_timer_needed"
.LASF356:
	.string	"tcp_listen_pcbs_t"
.LASF137:
	.string	"hostname"
.LASF177:
	.string	"snd_lbb"
.LASF134:
	.string	"link_callback"
.LASF293:
	.string	"tcp_recv_null"
.LASF31:
	.string	"MEMP_NETBUF"
.LASF129:
	.string	"netmask"
.LASF8:
	.string	"long long int"
.LASF205:
	.string	"tcp_pcb_listen"
.LASF290:
	.string	"tcp_kill_state"
.LASF215:
	.string	"ackno"
.LASF99:
	.string	"ERR_IF"
.LASF133:
	.string	"status_callback"
.LASF258:
	.string	"tcp_debug_state_str"
.LASF218:
	.string	"tcp_input_pcb"
.LASF197:
	.string	"persist_backoff"
.LASF240:
	.string	"tcp_split_unsent_seg"
.LASF287:
	.string	"tcp_kill_timewait"
.LASF27:
	.string	"MEMP_TCP_PCB"
.LASF74:
	.string	"memp"
.LASF19:
	.string	"u8_t"
.LASF333:
	.string	"tcp_accept_null"
.LASF239:
	.string	"tcp_rexmit_rto_prepare"
.LASF302:
	.string	"tcp_fasttmr"
.LASF325:
	.string	"tcp_update_rcv_ann_wnd"
.LASF234:
	.string	"memset"
.LASF309:
	.string	"tcp_slowtmr_start"
.LASF331:
	.string	"tcp_listen_with_backlog"
.LASF278:
	.string	"tcp_err"
.LASF157:
	.string	"remote_port"
.LASF345:
	.string	"tcp_close"
.LASF347:
	.string	"tcp_close_shutdown"
.LASF224:
	.string	"tcp_listen_pcbs"
.LASF163:
	.string	"rcv_ann_wnd"
.LASF354:
	.string	"tcp_init"
.LASF50:
	.string	"chkerr"
.LASF200:
	.string	"tcp_recv_fn"
.LASF288:
	.string	"inactive"
.LASF260:
	.string	"tcp_netif_ip_addr_changed"
.LASF256:
	.string	"local"
.LASF346:
	.string	"tcp_close_shutdown_fin"
.LASF334:
	.string	"tcp_bind_netif"
.LASF30:
	.string	"MEMP_ALTCP_PCB"
.LASF330:
	.string	"done"
.LASF125:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF310:
	.string	"backoff_cnt"
.LASF358:
	.string	"tcp_new"
.LASF202:
	.string	"tcp_poll_fn"
.LASF317:
	.string	"last_state"
.LASF183:
	.string	"bytes_acked"
.LASF11:
	.string	"long double"
.LASF17:
	.string	"uint16_t"
.LASF248:
	.string	"tcp_send_fin"
.LASF207:
	.string	"tcpflags_t"
.LASF192:
	.string	"errf"
.LASF178:
	.string	"snd_wnd"
.LASF277:
	.string	"tcp_accept"
.LASF111:
	.string	"if_idx"
.LASF297:
	.string	"tcp_seg_free"
.LASF251:
	.string	"tcp_rst"
.LASF291:
	.string	"tcp_kill_prio"
.LASF186:
	.string	"ooseq"
.LASF212:
	.string	"tcp_hdr"
.LASF89:
	.string	"ERR_BUF"
.LASF76:
	.string	"CLOSED"
.LASF229:
	.string	"tcp_port"
.LASF23:
	.string	"u32_t"
.LASF4:
	.string	"short int"
.LASF72:
	.string	"icmp"
.LASF259:
	.string	"tcp_free_ooseq"
.LASF6:
	.string	"long int"
.LASF53:
	.string	"rterr"
.LASF42:
	.string	"avail"
.LASF261:
	.string	"old_addr"
.LASF36:
	.string	"MEMP_SYS_TIMEOUT"
.LASF162:
	.string	"rcv_wnd"
.LASF166:
	.string	"rttest"
.LASF321:
	.string	"cpcb"
.LASF160:
	.string	"last_timer"
.LASF26:
	.string	"MEMP_UDP_PCB"
.LASF150:
	.string	"local_ip"
.LASF75:
	.string	"tcpwnd_size_t"
.LASF68:
	.string	"mbox"
.LASF182:
	.string	"unsent_oversize"
.LASF78:
	.string	"SYN_SENT"
.LASF92:
	.string	"ERR_INPROGRESS"
.LASF339:
	.string	"reset"
.LASF112:
	.string	"ip4_addr"
.LASF329:
	.string	"backlog"
.LASF80:
	.string	"ESTABLISHED"
.LASF97:
	.string	"ERR_ISCONN"
.LASF56:
	.string	"cachehit"
.LASF179:
	.string	"snd_wnd_max"
.LASF140:
	.string	"name"
.LASF145:
	.string	"netif_linkoutput_fn"
.LASF254:
	.string	"tcp_get_pcbs"
.LASF267:
	.string	"outif"
.LASF172:
	.string	"ssthresh"
.LASF237:
	.string	"pbuf_ref"
.LASF285:
	.string	"tcp_netif_ip_addr_changed_pcblist"
.LASF180:
	.string	"snd_buf"
.LASF25:
	.string	"MEMP_RAW_PCB"
.LASF216:
	.string	"_hdrlen_rsvd_flags"
.LASF51:
	.string	"lenerr"
.LASF7:
	.string	"long unsigned int"
.LASF124:
	.string	"netif_mac_filter_action"
.LASF292:
	.string	"mprio"
.LASF357:
	.string	"bl_rand"
.LASF211:
	.string	"tcphdr"
.LASF22:
	.string	"s16_t"
.LASF299:
	.string	"tcp_process_refused_data"
.LASF257:
	.string	"port"
.LASF187:
	.string	"refused_data"
.LASF54:
	.string	"proterr"
.LASF58:
	.string	"rx_v1"
.LASF296:
	.string	"tcp_setprio"
.LASF173:
	.string	"rto_end"
.LASF283:
	.string	"type"
.LASF66:
	.string	"stats_sys"
.LASF3:
	.string	"unsigned char"
.LASF327:
	.string	"new_rcv_ann_wnd"
.LASF81:
	.string	"FIN_WAIT_1"
.LASF82:
	.string	"FIN_WAIT_2"
.LASF52:
	.string	"memerr"
.LASF29:
	.string	"MEMP_TCP_SEG"
.LASF146:
	.string	"netif_status_callback_fn"
.LASF70:
	.string	"link"
.LASF223:
	.string	"tcp_bound_pcbs"
.LASF193:
	.string	"keep_idle"
.LASF332:
	.string	"tcp_new_port"
.LASF154:
	.string	"callback_arg"
.LASF77:
	.string	"LISTEN"
.LASF113:
	.string	"addr"
.LASF62:
	.string	"tx_join"
.LASF49:
	.string	"drop"
.LASF135:
	.string	"state"
.LASF275:
	.string	"tcp_poll"
.LASF123:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF127:
	.string	"netif"
.LASF228:
	.string	"tcp_state_str"
.LASF233:
	.string	"tcp_timer_ctr"
.LASF100:
	.string	"ERR_ABRT"
.LASF209:
	.string	"chksum"
.LASF142:
	.string	"acd_list"
.LASF308:
	.string	"tcp_fasttmr_start"
.LASF63:
	.string	"tx_leave"
.LASF87:
	.string	"ERR_OK"
.LASF48:
	.string	"recv"
.LASF120:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF2:
	.string	"signed char"
.LASF174:
	.string	"snd_nxt"
.LASF149:
	.string	"tcp_pcb"
.LASF5:
	.string	"short unsigned int"
.LASF235:
	.string	"memcpy"
.LASF57:
	.string	"stats_igmp"
.LASF311:
	.string	"next_slot"
.LASF47:
	.string	"xmit"
.LASF196:
	.string	"persist_cnt"
.LASF151:
	.string	"remote_ip"
.LASF91:
	.string	"ERR_RTE"
.LASF338:
	.string	"tcp_abandon"
.LASF194:
	.string	"keep_intvl"
.LASF115:
	.string	"ip_addr_t"
.LASF316:
	.string	"err_arg"
.LASF298:
	.string	"tcp_segs_free"
.LASF37:
	.string	"MEMP_NETDB"
.LASF281:
	.string	"tcp_arg"
.LASF341:
	.string	"send_rst"
.LASF41:
	.string	"memp_t"
.LASF284:
	.string	"tcp_alloc"
.LASF351:
	.string	"tcp_free_listen"
.LASF343:
	.string	"shut_rx"
.LASF355:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF337:
	.string	"tcp_abort"
.LASF262:
	.string	"new_addr"
.LASF168:
	.string	"nrtx"
.LASF121:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF88:
	.string	"ERR_MEM"
.LASF213:
	.string	"dest"
.LASF266:
	.string	"sendmss"
.LASF79:
	.string	"SYN_RCVD"
.LASF128:
	.string	"ip_addr"
.LASF222:
	.string	"pcbs"
.LASF314:
	.string	"pcb2"
.LASF59:
	.string	"rx_group"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/tcp.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
