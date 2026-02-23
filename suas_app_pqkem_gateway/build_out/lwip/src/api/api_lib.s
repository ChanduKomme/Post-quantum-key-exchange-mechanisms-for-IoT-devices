	.file	"api_lib.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/api_lib.c"
	.section	.text.netconn_apimsg,"ax",@progbits
	.align	1
	.type	netconn_apimsg, @function
netconn_apimsg:
.LFB6:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/api_lib.c"
	.loc 1 119 1
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
	.loc 1 131 55
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 131 9
	addi	a5,a5,12
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	tcpip_send_msg_wait_sem
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 132 6
	lb	a5,-17(s0)
	bne	a5,zero,.L2
	.loc 1 133 18
	lw	a5,-40(s0)
	lb	a5,4(a5)
	j	.L3
.L2:
	.loc 1 135 10
	lb	a5,-17(s0)
.L3:
	.loc 1 136 1
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
	.size	netconn_apimsg, .-netconn_apimsg
	.section	.text.netconn_new_with_proto_and_callback,"ax",@progbits
	.align	1
	.globl	netconn_new_with_proto_and_callback
	.type	netconn_new_with_proto_and_callback, @function
netconn_new_with_proto_and_callback:
.LFB7:
	.loc 1 150 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a2,-72(s0)
	sb	a5,-65(s0)
	mv	a5,a4
	sb	a5,-66(s0)
	.loc 1 155 10
	lbu	a5,-65(s0)
	lw	a1,-72(s0)
	mv	a0,a5
	call	netconn_alloc
	sw	a0,-20(s0)
	.loc 1 156 6
	lw	a5,-20(s0)
	beq	a5,zero,.L5
.LBB2:
	.loc 1 159 21
	lbu	a5,-66(s0)
	sb	a5,-52(s0)
	.loc 1 160 14
	lw	a5,-20(s0)
	sw	a5,-60(s0)
	.loc 1 161 11
	addi	a5,s0,-60
	mv	a1,a5
	lui	a5,%hi(lwip_netconn_do_newconn)
	addi	a0,a5,%lo(lwip_netconn_do_newconn)
	call	netconn_apimsg
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 1 162 8
	lb	a5,-21(s0)
	beq	a5,zero,.L5
	.loc 1 164 18
	lw	a5,-20(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	sys_mbox_valid
	.loc 1 166 19
	lw	a5,-20(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	sys_mbox_valid
	.loc 1 169 18
	lw	a5,-20(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_valid
	.loc 1 170 7
	lw	a5,-20(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	sys_sem_free
	.loc 1 172 7
	lw	a5,-20(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	sys_mbox_free
	.loc 1 173 7
	lw	a1,-20(s0)
	li	a0,7
	call	memp_free
	.loc 1 175 13
	li	a5,0
	j	.L7
.L5:
.LBE2:
	.loc 1 179 10
	lw	a5,-20(s0)
.L7:
	.loc 1 180 1
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
.LFE7:
	.size	netconn_new_with_proto_and_callback, .-netconn_new_with_proto_and_callback
	.section	.text.netconn_prepare_delete,"ax",@progbits
	.align	1
	.globl	netconn_prepare_delete
	.type	netconn_prepare_delete, @function
netconn_prepare_delete:
.LFB8:
	.loc 1 193 1
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
	.loc 1 198 6
	lw	a5,-68(s0)
	bne	a5,zero,.L9
	.loc 1 199 12
	li	a5,0
	j	.L12
.L9:
	.loc 1 203 12
	lw	a5,-68(s0)
	sw	a5,-56(s0)
	.loc 1 208 29
	call	sys_now
	mv	a5,a0
	.loc 1 208 27 discriminator 1
	sw	a5,-44(s0)
	.loc 1 214 9
	addi	a5,s0,-56
	mv	a1,a5
	lui	a5,%hi(lwip_netconn_do_delconn)
	addi	a0,a5,%lo(lwip_netconn_do_delconn)
	call	netconn_apimsg
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 217 6
	lb	a5,-17(s0)
	beq	a5,zero,.L11
	.loc 1 218 12
	lb	a5,-17(s0)
	j	.L12
.L11:
	.loc 1 220 10
	li	a5,0
.L12:
	.loc 1 221 1
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
.LFE8:
	.size	netconn_prepare_delete, .-netconn_prepare_delete
	.section	.text.netconn_delete,"ax",@progbits
	.align	1
	.globl	netconn_delete
	.type	netconn_delete, @function
netconn_delete:
.LFB9:
	.loc 1 234 1
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
	.loc 1 238 6
	lw	a5,-36(s0)
	bne	a5,zero,.L14
	.loc 1 239 12
	li	a5,0
	j	.L15
.L14:
	.loc 1 249 11
	lw	a0,-36(s0)
	call	netconn_prepare_delete
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 251 6
	lb	a5,-17(s0)
	bne	a5,zero,.L16
	.loc 1 252 5
	lw	a0,-36(s0)
	call	netconn_free
.L16:
	.loc 1 254 10
	lb	a5,-17(s0)
.L15:
	.loc 1 255 1
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
	.size	netconn_delete, .-netconn_delete
	.section	.text.netconn_getaddr,"ax",@progbits
	.align	1
	.globl	netconn_getaddr
	.type	netconn_getaddr, @function
netconn_getaddr:
.LFB10:
	.loc 1 270 1
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
	sw	a2,-76(s0)
	mv	a5,a3
	sb	a5,-77(s0)
	.loc 1 274 11
	lw	a5,-68(s0)
	bne	a5,zero,.L18
	.loc 1 274 17 discriminator 1
	li	a5,-16
	.loc 1 274 17 is_stmt 0
	j	.L22
.L18:
	.loc 1 275 11 is_stmt 1
	lw	a5,-72(s0)
	bne	a5,zero,.L20
	.loc 1 275 17 discriminator 1
	li	a5,-16
	.loc 1 275 17 is_stmt 0
	j	.L22
.L20:
	.loc 1 276 11 is_stmt 1
	lw	a5,-76(s0)
	bne	a5,zero,.L21
	.loc 1 276 17 discriminator 1
	li	a5,-16
	.loc 1 276 17 is_stmt 0
	j	.L22
.L21:
	.loc 1 279 12 is_stmt 1
	lw	a5,-68(s0)
	sw	a5,-56(s0)
	.loc 1 280 20
	lbu	a5,-77(s0)
	sb	a5,-40(s0)
	.loc 1 286 21
	lw	a5,-72(s0)
	sw	a5,-48(s0)
	.loc 1 287 19
	lw	a5,-76(s0)
	sw	a5,-44(s0)
	.loc 1 288 9
	addi	a5,s0,-56
	mv	a1,a5
	lui	a5,%hi(lwip_netconn_do_getaddr)
	addi	a0,a5,%lo(lwip_netconn_do_getaddr)
	call	netconn_apimsg
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 292 10
	lb	a5,-17(s0)
.L22:
	.loc 1 293 1
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
.LFE10:
	.size	netconn_getaddr, .-netconn_getaddr
	.section	.text.netconn_bind,"ax",@progbits
	.align	1
	.globl	netconn_bind
	.type	netconn_bind, @function
netconn_bind:
.LFB11:
	.loc 1 308 1
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
	mv	a5,a2
	sh	a5,-74(s0)
	.loc 1 312 11
	lw	a5,-68(s0)
	bne	a5,zero,.L24
	.loc 1 312 17 discriminator 1
	li	a5,-16
	.loc 1 312 17 is_stmt 0
	j	.L27
.L24:
	.loc 1 316 6 is_stmt 1
	lw	a5,-72(s0)
	bne	a5,zero,.L26
	.loc 1 317 10
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
	sw	a5,-72(s0)
.L26:
	.loc 1 332 12
	lw	a5,-68(s0)
	sw	a5,-56(s0)
	.loc 1 333 21
	lw	a5,-72(s0)
	sw	a5,-48(s0)
	.loc 1 334 19
	lhu	a5,-74(s0)
	sh	a5,-44(s0)
	.loc 1 335 9
	addi	a5,s0,-56
	mv	a1,a5
	lui	a5,%hi(lwip_netconn_do_bind)
	addi	a0,a5,%lo(lwip_netconn_do_bind)
	call	netconn_apimsg
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 338 10
	lb	a5,-17(s0)
.L27:
	.loc 1 339 1
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
.LFE11:
	.size	netconn_bind, .-netconn_bind
	.section	.text.netconn_bind_if,"ax",@progbits
	.align	1
	.globl	netconn_bind_if
	.type	netconn_bind_if, @function
netconn_bind_if:
.LFB12:
	.loc 1 352 1
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
	mv	a5,a1
	sb	a5,-69(s0)
	.loc 1 356 11
	lw	a5,-68(s0)
	bne	a5,zero,.L29
	.loc 1 356 17 discriminator 1
	li	a5,-16
	.loc 1 356 17 is_stmt 0
	j	.L31
.L29:
	.loc 1 359 12 is_stmt 1
	lw	a5,-68(s0)
	sw	a5,-56(s0)
	.loc 1 360 21
	lbu	a5,-69(s0)
	sb	a5,-42(s0)
	.loc 1 361 9
	addi	a5,s0,-56
	mv	a1,a5
	lui	a5,%hi(lwip_netconn_do_bind_if)
	addi	a0,a5,%lo(lwip_netconn_do_bind_if)
	call	netconn_apimsg
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 364 10
	lb	a5,-17(s0)
.L31:
	.loc 1 365 1
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
.LFE12:
	.size	netconn_bind_if, .-netconn_bind_if
	.section	.text.netconn_connect,"ax",@progbits
	.align	1
	.globl	netconn_connect
	.type	netconn_connect, @function
netconn_connect:
.LFB13:
	.loc 1 378 1
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
	mv	a5,a2
	sh	a5,-74(s0)
	.loc 1 382 11
	lw	a5,-68(s0)
	bne	a5,zero,.L33
	.loc 1 382 17 discriminator 1
	li	a5,-16
	.loc 1 382 17 is_stmt 0
	j	.L36
.L33:
	.loc 1 386 6 is_stmt 1
	lw	a5,-72(s0)
	bne	a5,zero,.L35
	.loc 1 387 10
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
	sw	a5,-72(s0)
.L35:
	.loc 1 392 12
	lw	a5,-68(s0)
	sw	a5,-56(s0)
	.loc 1 393 21
	lw	a5,-72(s0)
	sw	a5,-48(s0)
	.loc 1 394 19
	lhu	a5,-74(s0)
	sh	a5,-44(s0)
	.loc 1 395 9
	addi	a5,s0,-56
	mv	a1,a5
	lui	a5,%hi(lwip_netconn_do_connect)
	addi	a0,a5,%lo(lwip_netconn_do_connect)
	call	netconn_apimsg
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 398 10
	lb	a5,-17(s0)
.L36:
	.loc 1 399 1
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
.LFE13:
	.size	netconn_connect, .-netconn_connect
	.section	.text.netconn_disconnect,"ax",@progbits
	.align	1
	.globl	netconn_disconnect
	.type	netconn_disconnect, @function
netconn_disconnect:
.LFB14:
	.loc 1 410 1
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
	.loc 1 414 11
	lw	a5,-68(s0)
	bne	a5,zero,.L38
	.loc 1 414 17 discriminator 1
	li	a5,-16
	.loc 1 414 17 is_stmt 0
	j	.L40
.L38:
	.loc 1 417 12 is_stmt 1
	lw	a5,-68(s0)
	sw	a5,-56(s0)
	.loc 1 418 9
	addi	a5,s0,-56
	mv	a1,a5
	lui	a5,%hi(lwip_netconn_do_disconnect)
	addi	a0,a5,%lo(lwip_netconn_do_disconnect)
	call	netconn_apimsg
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 421 10
	lb	a5,-17(s0)
.L40:
	.loc 1 422 1
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
.LFE14:
	.size	netconn_disconnect, .-netconn_disconnect
	.section	.text.netconn_listen_with_backlog,"ax",@progbits
	.align	1
	.globl	netconn_listen_with_backlog
	.type	netconn_listen_with_backlog, @function
netconn_listen_with_backlog:
.LFB15:
	.loc 1 435 1
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
	mv	a5,a1
	sb	a5,-69(s0)
	.loc 1 443 11
	lw	a5,-68(s0)
	bne	a5,zero,.L42
	.loc 1 443 17 discriminator 1
	li	a5,-16
	.loc 1 443 17 is_stmt 0
	j	.L44
.L42:
	.loc 1 446 12 is_stmt 1
	lw	a5,-68(s0)
	sw	a5,-56(s0)
	.loc 1 450 9
	addi	a5,s0,-56
	mv	a1,a5
	lui	a5,%hi(lwip_netconn_do_listen)
	addi	a0,a5,%lo(lwip_netconn_do_listen)
	call	netconn_apimsg
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 453 10
	lb	a5,-17(s0)
.L44:
	.loc 1 459 1
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
.LFE15:
	.size	netconn_listen_with_backlog, .-netconn_listen_with_backlog
	.section	.text.netconn_accept,"ax",@progbits
	.align	1
	.globl	netconn_accept
	.type	netconn_accept, @function
netconn_accept:
.LFB16:
	.loc 1 472 1
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
	.loc 1 481 11
	lw	a5,-40(s0)
	bne	a5,zero,.L46
	.loc 1 481 17 discriminator 1
	li	a5,-16
	.loc 1 481 17 is_stmt 0
	j	.L57
.L46:
	.loc 1 482 13 is_stmt 1
	lw	a5,-40(s0)
	sw	zero,0(a5)
	.loc 1 483 11
	lw	a5,-36(s0)
	bne	a5,zero,.L48
	.loc 1 483 17 discriminator 1
	li	a5,-16
	.loc 1 483 17 is_stmt 0
	j	.L57
.L48:
	.loc 1 488 9 is_stmt 1
	lw	a0,-36(s0)
	call	netconn_err
	mv	a5,a0
	.loc 1 488 7 discriminator 1
	sb	a5,-21(s0)
	.loc 1 489 11
	lb	a5,-21(s0)
	.loc 1 489 6
	beq	a5,zero,.L49
	.loc 1 491 12
	lb	a5,-21(s0)
	j	.L57
.L49:
	.loc 1 493 9
	lw	a5,-36(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	sys_mbox_valid
	mv	a5,a0
	.loc 1 493 6 discriminator 1
	beq	a5,zero,.L50
	.loc 1 493 56 discriminator 2
	lw	a5,-36(s0)
	lbu	a5,36(a5)
	.loc 1 493 64 discriminator 2
	andi	a5,a5,1
	.loc 1 493 7 discriminator 2
	beq	a5,zero,.L51
.L50:
	.loc 1 496 12
	li	a5,-15
	j	.L57
.L51:
	.loc 1 502 15
	lw	a5,-36(s0)
	lbu	a5,36(a5)
	.loc 1 502 23
	andi	a5,a5,2
	.loc 1 502 6
	beq	a5,zero,.L52
	.loc 1 503 9
	lw	a5,-36(s0)
	addi	a5,a5,20
	addi	a4,s0,-28
	mv	a1,a4
	mv	a0,a5
	call	sys_arch_mbox_tryfetch
	mv	a4,a0
	.loc 1 503 8 discriminator 1
	li	a5,-1
	bne	a4,a5,.L53
	.loc 1 506 14
	li	a5,-7
	j	.L57
.L52:
	.loc 1 510 9
	lw	a5,-36(s0)
	addi	a4,a5,20
	lw	a5,-36(s0)
	lw	a3,32(a5)
	addi	a5,s0,-28
	mv	a2,a3
	mv	a1,a5
	mv	a0,a4
	call	sys_arch_mbox_fetch
	mv	a4,a0
	.loc 1 510 8 discriminator 1
	li	a5,-1
	bne	a4,a5,.L53
	.loc 1 513 14
	li	a5,-3
	j	.L57
.L53:
	.loc 1 531 11
	lw	a5,-36(s0)
	lw	a5,44(a5)
	.loc 1 531 6
	beq	a5,zero,.L54
	.loc 1 531 26 discriminator 1
	lw	a5,-36(s0)
	lw	a5,44(a5)
	li	a2,0
	li	a1,1
	lw	a0,-36(s0)
	jalr	a5
.LVL0:
.L54:
	.loc 1 533 7
	lw	a5,-28(s0)
	addi	a4,s0,-21
	mv	a1,a4
	mv	a0,a5
	call	lwip_netconn_is_err_msg
	mv	a5,a0
	.loc 1 533 6 discriminator 1
	beq	a5,zero,.L55
	.loc 1 536 12
	lb	a5,-21(s0)
	j	.L57
.L55:
	.loc 1 538 18
	lw	a5,-28(s0)
	.loc 1 538 6
	bne	a5,zero,.L56
	.loc 1 541 12
	li	a5,-15
	j	.L57
.L56:
	.loc 1 543 11
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	.loc 1 552 13
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 554 10
	li	a5,0
.L57:
	.loc 1 560 1
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
	.size	netconn_accept, .-netconn_accept
	.section	.text.netconn_recv_data,"ax",@progbits
	.align	1
	.type	netconn_recv_data, @function
netconn_recv_data:
.LFB17:
	.loc 1 580 1
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
	.loc 1 581 9
	sw	zero,-24(s0)
	.loc 1 584 11
	lw	a5,-40(s0)
	bne	a5,zero,.L59
	.loc 1 584 17 discriminator 1
	li	a5,-16
	.loc 1 584 17 is_stmt 0
	j	.L76
.L59:
	.loc 1 585 12 is_stmt 1
	lw	a5,-40(s0)
	sw	zero,0(a5)
	.loc 1 586 11
	lw	a5,-36(s0)
	bne	a5,zero,.L61
	.loc 1 586 17 discriminator 1
	li	a5,-16
	.loc 1 586 17 is_stmt 0
	j	.L76
.L61:
	.loc 1 588 8 is_stmt 1
	lw	a5,-36(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	sys_mbox_valid
	mv	a5,a0
	.loc 1 588 6 discriminator 1
	bne	a5,zero,.L62
.LBB3:
	.loc 1 589 17
	lw	a0,-36(s0)
	call	netconn_err
	mv	a5,a0
	sb	a5,-20(s0)
	.loc 1 590 8
	lb	a5,-20(s0)
	beq	a5,zero,.L63
	.loc 1 592 14
	lb	a5,-20(s0)
	j	.L76
.L63:
	.loc 1 594 12
	li	a5,-11
	j	.L76
.L62:
.LBE3:
	.loc 1 598 15
	lw	a5,-36(s0)
	lbu	a5,36(a5)
	.loc 1 598 23
	andi	a5,a5,2
	.loc 1 598 6
	bne	a5,zero,.L64
	.loc 1 598 50 discriminator 1
	lbu	a5,-41(s0)
	andi	a5,a5,4
	.loc 1 598 37 discriminator 1
	bne	a5,zero,.L64
	.loc 1 599 12
	lw	a5,-36(s0)
	lbu	a5,36(a5)
	.loc 1 599 20
	andi	a5,a5,1
	.loc 1 598 58 discriminator 2
	bne	a5,zero,.L64
	.loc 1 599 36
	lw	a5,-36(s0)
	lb	a5,8(a5)
	.loc 1 599 28
	beq	a5,zero,.L65
.L64:
	.loc 1 600 9
	lw	a5,-36(s0)
	addi	a5,a5,16
	addi	a4,s0,-24
	mv	a1,a4
	mv	a0,a5
	call	sys_arch_mbox_tryfetch
	mv	a4,a0
	.loc 1 600 8 discriminator 1
	li	a5,-1
	bne	a4,a5,.L69
.LBB4:
	.loc 1 603 13
	lw	a0,-36(s0)
	call	netconn_err
	mv	a5,a0
	sb	a5,-19(s0)
	.loc 1 604 10
	lb	a5,-19(s0)
	beq	a5,zero,.L67
	.loc 1 606 16
	lb	a5,-19(s0)
	j	.L76
.L67:
	.loc 1 608 15
	lw	a5,-36(s0)
	lbu	a5,36(a5)
	.loc 1 608 23
	andi	a5,a5,1
	.loc 1 608 10
	beq	a5,zero,.L68
	.loc 1 609 16
	li	a5,-11
	j	.L76
.L68:
	.loc 1 611 14
	li	a5,-7
	j	.L76
.L65:
.LBE4:
	.loc 1 615 9
	lw	a5,-36(s0)
	addi	a4,a5,16
	lw	a5,-36(s0)
	lw	a3,32(a5)
	addi	a5,s0,-24
	mv	a2,a3
	mv	a1,a5
	mv	a0,a4
	call	sys_arch_mbox_fetch
	mv	a4,a0
	.loc 1 615 8 discriminator 1
	li	a5,-1
	bne	a4,a5,.L69
	.loc 1 617 14
	li	a5,-3
	j	.L76
.L69:
	.loc 1 636 13
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 636 20
	andi	a4,a5,240
	.loc 1 636 6
	li	a5,16
	bne	a4,a5,.L70
.LBB5:
	.loc 1 641 9
	lw	a5,-24(s0)
	addi	a4,s0,-25
	mv	a1,a4
	mv	a0,a5
	call	lwip_netconn_is_err_msg
	mv	a5,a0
	.loc 1 641 8 discriminator 1
	beq	a5,zero,.L71
	.loc 1 643 15
	lb	a4,-25(s0)
	.loc 1 643 10
	li	a5,-15
	bne	a4,a5,.L72
	.loc 1 645 16
	li	a5,0
	j	.L76
.L72:
	.loc 1 647 14
	lb	a5,-25(s0)
	j	.L76
.L71:
	.loc 1 649 12
	lw	a5,-24(s0)
	.loc 1 649 9
	lhu	a5,8(a5)
	sh	a5,-18(s0)
.LBE5:
	j	.L74
.L70:
	.loc 1 658 13
	lw	a5,-24(s0)
	.loc 1 658 34
	lw	a5,0(a5)
	.loc 1 658 9
	lhu	a5,8(a5)
	sh	a5,-18(s0)
.L74:
	.loc 1 666 11
	lw	a5,-36(s0)
	lw	a5,44(a5)
	.loc 1 666 6
	beq	a5,zero,.L75
	.loc 1 666 26 discriminator 1
	lw	a5,-36(s0)
	lw	a5,44(a5)
	lhu	a4,-18(s0)
	mv	a2,a4
	li	a1,1
	lw	a0,-36(s0)
	jalr	a5
.LVL1:
.L75:
	.loc 1 670 12
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 672 10
	li	a5,0
.L76:
	.loc 1 673 1
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
	.size	netconn_recv_data, .-netconn_recv_data
	.section	.text.netconn_tcp_recvd_msg,"ax",@progbits
	.align	1
	.type	netconn_tcp_recvd_msg, @function
netconn_tcp_recvd_msg:
.LFB18:
	.loc 1 678 1
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
	.loc 1 679 11
	lw	a5,-20(s0)
	beq	a5,zero,.L78
	.loc 1 679 14 discriminator 2
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 679 22 discriminator 2
	andi	a4,a5,240
	.loc 1 679 12 discriminator 2
	li	a5,16
	beq	a4,a5,.L79
.L78:
	.loc 1 679 57 discriminator 3
	li	a5,-16
	.loc 1 679 57 is_stmt 0
	j	.L80
.L79:
	.loc 1 682 13 is_stmt 1
	lw	a5,-28(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 683 18
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	.loc 1 685 10
	lw	a1,-28(s0)
	lui	a5,%hi(lwip_netconn_do_recv)
	addi	a0,a5,%lo(lwip_netconn_do_recv)
	call	netconn_apimsg
	mv	a5,a0
.L80:
	.loc 1 686 1
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
.LFE18:
	.size	netconn_tcp_recvd_msg, .-netconn_tcp_recvd_msg
	.section	.text.netconn_tcp_recvd,"ax",@progbits
	.align	1
	.globl	netconn_tcp_recvd
	.type	netconn_tcp_recvd, @function
netconn_tcp_recvd:
.LFB19:
	.loc 1 690 1
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
	.loc 1 693 11
	lw	a5,-68(s0)
	beq	a5,zero,.L82
	.loc 1 693 14 discriminator 2
	lw	a5,-68(s0)
	lbu	a5,0(a5)
	.loc 1 693 22 discriminator 2
	andi	a4,a5,240
	.loc 1 693 12 discriminator 2
	li	a5,16
	beq	a4,a5,.L83
.L82:
	.loc 1 693 57 discriminator 3
	li	a5,-16
	.loc 1 693 57 is_stmt 0
	j	.L85
.L83:
	.loc 1 697 9 is_stmt 1
	addi	a5,s0,-56
	mv	a2,a5
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	netconn_tcp_recvd_msg
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 699 10
	lb	a5,-17(s0)
.L85:
	.loc 1 700 1
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
.LFE19:
	.size	netconn_tcp_recvd, .-netconn_tcp_recvd
	.section	.text.netconn_recv_data_tcp,"ax",@progbits
	.align	1
	.type	netconn_recv_data_tcp, @function
netconn_recv_data_tcp:
.LFB20:
	.loc 1 704 1
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
	mv	a5,a2
	sb	a5,-73(s0)
	.loc 1 712 8
	lw	a5,-68(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	sys_mbox_valid
	mv	a5,a0
	.loc 1 712 6 discriminator 1
	bne	a5,zero,.L87
	.loc 1 714 12
	li	a5,-11
	j	.L99
.L87:
	.loc 1 716 15
	lw	a5,-68(s0)
	lbu	a5,36(a5)
	.loc 1 716 33
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 716 6
	bge	a5,zero,.L89
	.loc 1 717 39
	lw	a5,-68(s0)
	lbu	a5,36(a5)
	.loc 1 717 26
	andi	a5,a5,127
	andi	a4,a5,0xff
	.loc 1 717 24
	lw	a5,-68(s0)
	sb	a4,36(a5)
	.loc 1 718 5
	j	.L90
.L89:
	.loc 1 727 9
	lbu	a5,-73(s0)
	mv	a2,a5
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	netconn_recv_data
	mv	a5,a0
	sb	a5,-19(s0)
	.loc 1 728 6
	lb	a5,-19(s0)
	beq	a5,zero,.L91
	.loc 1 732 12
	lb	a5,-19(s0)
	j	.L99
.L91:
	.loc 1 734 7
	lw	a5,-72(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 735 18
	lbu	a5,-73(s0)
	andi	a5,a5,8
	.loc 1 735 6
	bne	a5,zero,.L92
.LBB6:
	.loc 1 737 11
	lw	a5,-24(s0)
	beq	a5,zero,.L93
	.loc 1 737 11 is_stmt 0 discriminator 1
	lw	a5,-24(s0)
	lhu	a5,8(a5)
	sh	a5,-18(s0)
	j	.L94
.L93:
	.loc 1 737 11 discriminator 2
	li	a5,1
	sh	a5,-18(s0)
.L94:
	.loc 1 740 5 is_stmt 1
	lhu	a5,-18(s0)
	addi	a4,s0,-60
	mv	a2,a4
	mv	a1,a5
	lw	a0,-68(s0)
	call	netconn_tcp_recvd_msg
.L92:
.LBE6:
	.loc 1 745 6
	lw	a5,-24(s0)
	bne	a5,zero,.L95
	.loc 1 746 18
	lbu	a5,-73(s0)
	andi	a5,a5,16
	.loc 1 746 8
	beq	a5,zero,.L100
	.loc 1 749 41
	lw	a5,-68(s0)
	lbu	a5,36(a5)
	.loc 1 749 28
	ori	a5,a5,-128
	andi	a4,a5,0xff
	.loc 1 749 26
	lw	a5,-68(s0)
	sb	a4,36(a5)
	.loc 1 750 14
	li	a5,-7
	j	.L99
.L100:
	.loc 1 752 1
	nop
.L90:
	.loc 1 753 15
	lw	a5,-68(s0)
	lw	a5,44(a5)
	.loc 1 753 10
	beq	a5,zero,.L96
	.loc 1 753 30 discriminator 1
	lw	a5,-68(s0)
	lw	a5,44(a5)
	li	a2,0
	li	a1,1
	lw	a0,-68(s0)
	jalr	a5
.LVL2:
.L96:
	.loc 1 754 20
	lw	a5,-68(s0)
	lw	a5,4(a5)
	.loc 1 754 10
	bne	a5,zero,.L97
	.loc 1 756 15
	lw	a0,-68(s0)
	call	netconn_err
	mv	a5,a0
	sb	a5,-19(s0)
	.loc 1 757 12
	lb	a5,-19(s0)
	beq	a5,zero,.L98
	.loc 1 758 18
	lb	a5,-19(s0)
	j	.L99
.L98:
	.loc 1 760 16
	li	a5,-14
	j	.L99
.L97:
	.loc 1 763 7
	li	a1,1
	lw	a0,-68(s0)
	call	netconn_close_shutdown
	.loc 1 765 14
	li	a5,-15
	j	.L99
.L95:
	.loc 1 768 10
	lb	a5,-19(s0)
.L99:
	.loc 1 769 1
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
.LFE20:
	.size	netconn_recv_data_tcp, .-netconn_recv_data_tcp
	.section	.text.netconn_recv_tcp_pbuf,"ax",@progbits
	.align	1
	.globl	netconn_recv_tcp_pbuf
	.type	netconn_recv_tcp_pbuf, @function
netconn_recv_tcp_pbuf:
.LFB21:
	.loc 1 783 1
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
	.loc 1 784 11
	lw	a5,-20(s0)
	beq	a5,zero,.L102
	.loc 1 784 14 discriminator 2
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 784 22 discriminator 2
	andi	a4,a5,240
	.loc 1 784 12 discriminator 2
	li	a5,16
	beq	a4,a5,.L103
.L102:
	.loc 1 784 57 discriminator 3
	li	a5,-16
	.loc 1 784 57 is_stmt 0
	j	.L104
.L103:
	.loc 1 787 10 is_stmt 1
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	netconn_recv_data_tcp
	mv	a5,a0
.L104:
	.loc 1 788 1
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
	.size	netconn_recv_tcp_pbuf, .-netconn_recv_tcp_pbuf
	.section	.text.netconn_recv_tcp_pbuf_flags,"ax",@progbits
	.align	1
	.globl	netconn_recv_tcp_pbuf_flags
	.type	netconn_recv_tcp_pbuf_flags, @function
netconn_recv_tcp_pbuf_flags:
.LFB22:
	.loc 1 804 1
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
	.loc 1 805 11
	lw	a5,-20(s0)
	beq	a5,zero,.L106
	.loc 1 805 14 discriminator 2
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 805 22 discriminator 2
	andi	a4,a5,240
	.loc 1 805 12 discriminator 2
	li	a5,16
	beq	a4,a5,.L107
.L106:
	.loc 1 805 57 discriminator 3
	li	a5,-16
	.loc 1 805 57 is_stmt 0
	j	.L108
.L107:
	.loc 1 808 10 is_stmt 1
	lbu	a5,-25(s0)
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	netconn_recv_data_tcp
	mv	a5,a0
.L108:
	.loc 1 809 1
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
	.size	netconn_recv_tcp_pbuf_flags, .-netconn_recv_tcp_pbuf_flags
	.section	.text.netconn_recv_udp_raw_netbuf,"ax",@progbits
	.align	1
	.globl	netconn_recv_udp_raw_netbuf
	.type	netconn_recv_udp_raw_netbuf, @function
netconn_recv_udp_raw_netbuf:
.LFB23:
	.loc 1 823 1
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
	.loc 1 824 11
	lw	a5,-20(s0)
	beq	a5,zero,.L110
	.loc 1 824 14 discriminator 2
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 824 22 discriminator 2
	andi	a4,a5,240
	.loc 1 824 12 discriminator 2
	li	a5,16
	bne	a4,a5,.L111
.L110:
	.loc 1 824 57 discriminator 3
	li	a5,-16
	.loc 1 824 57 is_stmt 0
	j	.L112
.L111:
	.loc 1 827 10 is_stmt 1
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	netconn_recv_data
	mv	a5,a0
.L112:
	.loc 1 828 1
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
	.size	netconn_recv_udp_raw_netbuf, .-netconn_recv_udp_raw_netbuf
	.section	.text.netconn_recv_udp_raw_netbuf_flags,"ax",@progbits
	.align	1
	.globl	netconn_recv_udp_raw_netbuf_flags
	.type	netconn_recv_udp_raw_netbuf_flags, @function
netconn_recv_udp_raw_netbuf_flags:
.LFB24:
	.loc 1 843 1
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
	.loc 1 844 11
	lw	a5,-20(s0)
	beq	a5,zero,.L114
	.loc 1 844 14 discriminator 2
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 844 22 discriminator 2
	andi	a4,a5,240
	.loc 1 844 12 discriminator 2
	li	a5,16
	bne	a4,a5,.L115
.L114:
	.loc 1 844 57 discriminator 3
	li	a5,-16
	.loc 1 844 57 is_stmt 0
	j	.L116
.L115:
	.loc 1 847 10 is_stmt 1
	lbu	a5,-25(s0)
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	netconn_recv_data
	mv	a5,a0
.L116:
	.loc 1 848 1
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
	.size	netconn_recv_udp_raw_netbuf_flags, .-netconn_recv_udp_raw_netbuf_flags
	.section	.text.netconn_recv,"ax",@progbits
	.align	1
	.globl	netconn_recv
	.type	netconn_recv, @function
netconn_recv:
.LFB25:
	.loc 1 861 1
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
	.loc 1 863 18
	sw	zero,-20(s0)
	.loc 1 867 11
	lw	a5,-40(s0)
	bne	a5,zero,.L118
	.loc 1 867 17 discriminator 1
	li	a5,-16
	.loc 1 867 17 is_stmt 0
	j	.L119
.L118:
	.loc 1 868 12 is_stmt 1
	lw	a5,-40(s0)
	sw	zero,0(a5)
	.loc 1 869 11
	lw	a5,-36(s0)
	bne	a5,zero,.L120
	.loc 1 869 17 discriminator 1
	li	a5,-16
	.loc 1 869 17 is_stmt 0
	j	.L119
.L120:
	.loc 1 873 13 is_stmt 1
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 873 20
	andi	a4,a5,240
	.loc 1 873 6
	li	a5,16
	bne	a4,a5,.L121
.LBB7:
	.loc 1 876 18
	sw	zero,-28(s0)
	.loc 1 879 28
	li	a0,6
	call	memp_malloc
	sw	a0,-20(s0)
	.loc 1 880 8
	lw	a5,-20(s0)
	bne	a5,zero,.L122
	.loc 1 881 14
	li	a5,-1
	j	.L119
.L122:
	.loc 1 884 11
	addi	a5,s0,-28
	li	a2,0
	mv	a1,a5
	lw	a0,-36(s0)
	call	netconn_recv_data_tcp
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 1 885 8
	lb	a5,-21(s0)
	beq	a5,zero,.L124
	.loc 1 886 7
	lw	a1,-20(s0)
	li	a0,6
	call	memp_free
	.loc 1 887 14
	lb	a5,-21(s0)
	j	.L119
.L124:
	.loc 1 891 12
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 892 14
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 893 15
	lw	a5,-20(s0)
	sh	zero,12(a5)
	.loc 1 894 25
	lw	a5,-20(s0)
	sw	zero,8(a5)
	.loc 1 895 14
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 897 12
	li	a5,0
	j	.L119
.L121:
.LBE7:
	.loc 1 905 12
	li	a2,0
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	netconn_recv_data
	mv	a5,a0
.L119:
	.loc 1 908 1
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
	.size	netconn_recv, .-netconn_recv
	.section	.text.netconn_sendto,"ax",@progbits
	.align	1
	.globl	netconn_sendto
	.type	netconn_sendto, @function
netconn_sendto:
.LFB26:
	.loc 1 923 1
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
	sh	a5,-30(s0)
	.loc 1 924 6
	lw	a5,-24(s0)
	beq	a5,zero,.L126
	.loc 1 925 8
	lw	a5,-28(s0)
	beq	a5,zero,.L127
	.loc 1 925 8 is_stmt 0 discriminator 1
	lw	a5,-28(s0)
	lw	a5,0(a5)
	j	.L128
.L127:
	.loc 1 925 8 discriminator 2
	li	a5,0
.L128:
	.loc 1 925 25 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	sw	a5,8(a4)
	.loc 1 926 15
	lw	a5,-24(s0)
	lhu	a4,-30(s0)
	sh	a4,12(a5)
	.loc 1 927 12
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	netconn_send
	mv	a5,a0
	j	.L129
.L126:
	.loc 1 929 10
	li	a5,-6
.L129:
	.loc 1 930 1
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
.LFE26:
	.size	netconn_sendto, .-netconn_sendto
	.section	.text.netconn_send,"ax",@progbits
	.align	1
	.globl	netconn_send
	.type	netconn_send, @function
netconn_send:
.LFB27:
	.loc 1 942 1
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
	.loc 1 946 11
	lw	a5,-68(s0)
	bne	a5,zero,.L131
	.loc 1 946 17 discriminator 1
	li	a5,-16
	.loc 1 946 17 is_stmt 0
	j	.L133
.L131:
	.loc 1 951 12 is_stmt 1
	lw	a5,-68(s0)
	sw	a5,-56(s0)
	.loc 1 952 13
	lw	a5,-72(s0)
	sw	a5,-48(s0)
	.loc 1 953 9
	addi	a5,s0,-56
	mv	a1,a5
	lui	a5,%hi(lwip_netconn_do_send)
	addi	a0,a5,%lo(lwip_netconn_do_send)
	call	netconn_apimsg
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 956 10
	lb	a5,-17(s0)
.L133:
	.loc 1 957 1
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
.LFE27:
	.size	netconn_send, .-netconn_send
	.section	.text.netconn_write_partly,"ax",@progbits
	.align	1
	.globl	netconn_write_partly
	.type	netconn_write_partly, @function
netconn_write_partly:
.LFB28:
	.loc 1 976 1
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
	mv	a5,a3
	sw	a4,-52(s0)
	sb	a5,-45(s0)
	.loc 1 978 14
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 1 979 14
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	.loc 1 980 10
	lbu	a3,-45(s0)
	addi	a5,s0,-24
	lw	a4,-52(s0)
	li	a2,1
	mv	a1,a5
	lw	a0,-36(s0)
	call	netconn_write_vectors_partly
	mv	a5,a0
	.loc 1 981 1
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
.LFE28:
	.size	netconn_write_partly, .-netconn_write_partly
	.section	.text.netconn_write_vectors_partly,"ax",@progbits
	.align	1
	.globl	netconn_write_vectors_partly
	.type	netconn_write_vectors_partly, @function
netconn_write_vectors_partly:
.LFB29:
	.loc 1 999 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	mv	a5,a2
	sw	a4,-96(s0)
	sh	a5,-90(s0)
	mv	a5,a3
	sb	a5,-91(s0)
	.loc 1 1006 11
	lw	a5,-84(s0)
	bne	a5,zero,.L137
	.loc 1 1006 17 discriminator 1
	li	a5,-16
	.loc 1 1006 17 is_stmt 0
	j	.L154
.L137:
	.loc 1 1007 21 is_stmt 1
	lw	a5,-84(s0)
	lbu	a5,0(a5)
	.loc 1 1007 28
	andi	a4,a5,240
	.loc 1 1007 11
	li	a5,16
	beq	a4,a5,.L139
	.loc 1 1007 64 discriminator 1
	li	a5,-6
	.loc 1 1007 64 is_stmt 0
	j	.L154
.L139:
	.loc 1 1008 23 is_stmt 1
	lw	a5,-84(s0)
	lbu	a5,36(a5)
	.loc 1 1008 31
	andi	a5,a5,2
	.loc 1 1008 45
	bne	a5,zero,.L140
	.loc 1 1008 58 discriminator 2
	lbu	a5,-91(s0)
	andi	a5,a5,4
	.loc 1 1008 45 discriminator 2
	beq	a5,zero,.L141
.L140:
	.loc 1 1008 45 is_stmt 0 discriminator 3
	li	a5,1
	.loc 1 1008 45
	j	.L142
.L141:
	.loc 1 1008 45 discriminator 4
	li	a5,0
.L142:
	.loc 1 1008 13 is_stmt 1 discriminator 6
	sb	a5,-17(s0)
	.loc 1 1010 11
	lw	a5,-84(s0)
	lw	a5,28(a5)
	.loc 1 1010 6
	beq	a5,zero,.L143
	.loc 1 1011 15
	li	a5,1
	sb	a5,-17(s0)
.L143:
	.loc 1 1014 6
	lbu	a5,-17(s0)
	beq	a5,zero,.L144
	.loc 1 1014 17 discriminator 1
	lw	a5,-96(s0)
	bne	a5,zero,.L144
	.loc 1 1017 12
	li	a5,-6
	j	.L154
.L144:
	.loc 1 1021 8
	sw	zero,-24(s0)
	.loc 1 1022 10
	sw	zero,-28(s0)
	.loc 1 1022 3
	j	.L145
.L147:
	.loc 1 1023 20
	lw	a5,-28(s0)
	slli	a5,a5,3
	lw	a4,-88(s0)
	add	a5,a4,a5
	.loc 1 1023 23
	lw	a5,4(a5)
	.loc 1 1023 10
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 1024 23
	lw	a5,-28(s0)
	slli	a5,a5,3
	lw	a4,-88(s0)
	add	a5,a4,a5
	.loc 1 1024 26
	lw	a5,4(a5)
	.loc 1 1024 8
	lw	a4,-24(s0)
	bgeu	a4,a5,.L146
	.loc 1 1026 14
	li	a5,-6
	j	.L154
.L146:
	.loc 1 1022 31 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L145:
	.loc 1 1022 17 discriminator 1
	lhu	a5,-90(s0)
	lw	a4,-28(s0)
	blt	a4,a5,.L147
	.loc 1 1029 6
	lw	a5,-24(s0)
	bne	a5,zero,.L148
	.loc 1 1030 12
	li	a5,0
	j	.L154
.L148:
	.loc 1 1031 19
	lw	a5,-24(s0)
	.loc 1 1031 13
	bge	a5,zero,.L149
.LBB8:
	.loc 1 1034 8
	lw	a5,-96(s0)
	bne	a5,zero,.L150
	.loc 1 1035 14
	li	a5,-6
	j	.L154
.L150:
	.loc 1 1038 13
	li	a5,-2147483648
	addi	a5,a5,-1
	sw	a5,-32(s0)
	.loc 1 1039 10
	lw	a5,-32(s0)
	sw	a5,-24(s0)
.L149:
.LBE8:
	.loc 1 1044 12
	lw	a5,-84(s0)
	sw	a5,-72(s0)
	.loc 1 1045 20
	lw	a5,-88(s0)
	sw	a5,-64(s0)
	.loc 1 1046 24
	lhu	a5,-90(s0)
	sh	a5,-60(s0)
	.loc 1 1047 24
	sw	zero,-56(s0)
	.loc 1 1048 22
	lbu	a5,-91(s0)
	sb	a5,-44(s0)
	.loc 1 1049 17
	lw	a5,-24(s0)
	sw	a5,-52(s0)
	.loc 1 1050 20
	sw	zero,-48(s0)
	.loc 1 1052 11
	lw	a5,-84(s0)
	lw	a5,28(a5)
	.loc 1 1052 6
	beq	a5,zero,.L151
	.loc 1 1055 30
	call	sys_now
	mv	a5,a0
	.loc 1 1055 28 discriminator 1
	sw	a5,-40(s0)
	j	.L152
.L151:
	.loc 1 1057 28
	sw	zero,-40(s0)
.L152:
	.loc 1 1064 9
	addi	a5,s0,-72
	mv	a1,a5
	lui	a5,%hi(lwip_netconn_do_write)
	addi	a0,a5,%lo(lwip_netconn_do_write)
	call	netconn_apimsg
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 1 1065 6
	lb	a5,-33(s0)
	bne	a5,zero,.L153
	.loc 1 1066 8
	lw	a5,-96(s0)
	beq	a5,zero,.L153
	.loc 1 1067 33
	lw	a4,-48(s0)
	.loc 1 1067 22
	lw	a5,-96(s0)
	sw	a4,0(a5)
.L153:
	.loc 1 1077 10
	lb	a5,-33(s0)
.L154:
	.loc 1 1078 1
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
.LFE29:
	.size	netconn_write_vectors_partly, .-netconn_write_vectors_partly
	.section	.text.netconn_close_shutdown,"ax",@progbits
	.align	1
	.type	netconn_close_shutdown, @function
netconn_close_shutdown:
.LFB30:
	.loc 1 1090 1
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
	mv	a5,a1
	sb	a5,-69(s0)
	.loc 1 1095 11
	lw	a5,-68(s0)
	bne	a5,zero,.L156
	.loc 1 1095 17 discriminator 1
	li	a5,-16
	.loc 1 1095 17 is_stmt 0
	j	.L158
.L156:
	.loc 1 1098 12 is_stmt 1
	lw	a5,-68(s0)
	sw	a5,-56(s0)
	.loc 1 1101 19
	lbu	a5,-69(s0)
	sb	a5,-48(s0)
	.loc 1 1105 29
	call	sys_now
	mv	a5,a0
	.loc 1 1105 27 discriminator 1
	sw	a5,-44(s0)
	.loc 1 1111 9
	addi	a5,s0,-56
	mv	a1,a5
	lui	a5,%hi(lwip_netconn_do_close)
	addi	a0,a5,%lo(lwip_netconn_do_close)
	call	netconn_apimsg
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1114 10
	lb	a5,-17(s0)
.L158:
	.loc 1 1115 1
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
.LFE30:
	.size	netconn_close_shutdown, .-netconn_close_shutdown
	.section	.text.netconn_close,"ax",@progbits
	.align	1
	.globl	netconn_close
	.type	netconn_close, @function
netconn_close:
.LFB31:
	.loc 1 1126 1
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
	.loc 1 1128 10
	li	a1,3
	lw	a0,-20(s0)
	call	netconn_close_shutdown
	mv	a5,a0
	.loc 1 1129 1
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
.LFE31:
	.size	netconn_close, .-netconn_close
	.section	.text.netconn_err,"ax",@progbits
	.align	1
	.globl	netconn_err
	.type	netconn_err, @function
netconn_err:
.LFB32:
	.loc 1 1140 1
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
	.loc 1 1143 6
	lw	a5,-36(s0)
	bne	a5,zero,.L162
	.loc 1 1144 12
	li	a5,0
	j	.L163
.L162:
	.loc 1 1146 9
	call	sys_arch_protect
	sw	a0,-20(s0)
	.loc 1 1147 7
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	sb	a5,-21(s0)
	.loc 1 1148 21
	lw	a5,-36(s0)
	sb	zero,8(a5)
	.loc 1 1149 3
	lw	a0,-20(s0)
	call	sys_arch_unprotect
	.loc 1 1150 10
	lb	a5,-21(s0)
.L163:
	.loc 1 1151 1
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
	.size	netconn_err, .-netconn_err
	.section	.text.netconn_shutdown,"ax",@progbits
	.align	1
	.globl	netconn_shutdown
	.type	netconn_shutdown, @function
netconn_shutdown:
.LFB33:
	.loc 1 1164 1
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
	mv	a4,a2
	sb	a5,-21(s0)
	mv	a5,a4
	sb	a5,-22(s0)
	.loc 1 1165 64
	lbu	a5,-21(s0)
	beq	a5,zero,.L165
	.loc 1 1165 64 is_stmt 0 discriminator 1
	li	a4,1
	j	.L166
.L165:
	.loc 1 1165 64 discriminator 2
	li	a4,0
.L166:
	.loc 1 1165 64 discriminator 4
	lbu	a5,-22(s0)
	beq	a5,zero,.L167
	.loc 1 1165 64 discriminator 5
	li	a5,2
	j	.L168
.L167:
	.loc 1 1165 64 discriminator 6
	li	a5,0
.L168:
	.loc 1 1165 64 discriminator 8
	or	a5,a4,a5
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 1165 10 is_stmt 1 discriminator 8
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-20(s0)
	call	netconn_close_shutdown
	mv	a5,a0
	.loc 1 1166 1
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
.LFE33:
	.size	netconn_shutdown, .-netconn_shutdown
	.section	.text.netconn_join_leave_group,"ax",@progbits
	.align	1
	.globl	netconn_join_leave_group
	.type	netconn_join_leave_group, @function
netconn_join_leave_group:
.LFB34:
	.loc 1 1185 1
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
	sw	a2,-76(s0)
	mv	a5,a3
	sb	a5,-77(s0)
	.loc 1 1189 11
	lw	a5,-68(s0)
	bne	a5,zero,.L171
	.loc 1 1189 17 discriminator 1
	li	a5,-16
	.loc 1 1189 17 is_stmt 0
	j	.L175
.L171:
	.loc 1 1195 6 is_stmt 1
	lw	a5,-72(s0)
	bne	a5,zero,.L173
	.loc 1 1196 15
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
	sw	a5,-72(s0)
.L173:
	.loc 1 1198 6
	lw	a5,-76(s0)
	bne	a5,zero,.L174
	.loc 1 1199 16
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
	sw	a5,-76(s0)
.L174:
	.loc 1 1203 12
	lw	a5,-68(s0)
	sw	a5,-56(s0)
	.loc 1 1204 24
	lw	a5,-72(s0)
	sw	a5,-48(s0)
	.loc 1 1205 25
	lw	a5,-76(s0)
	sw	a5,-44(s0)
	.loc 1 1206 28
	lbu	a5,-77(s0)
	sb	a5,-39(s0)
	.loc 1 1207 9
	addi	a5,s0,-56
	mv	a1,a5
	lui	a5,%hi(lwip_netconn_do_join_leave_group)
	addi	a0,a5,%lo(lwip_netconn_do_join_leave_group)
	call	netconn_apimsg
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1210 10
	lb	a5,-17(s0)
.L175:
	.loc 1 1211 1
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
.LFE34:
	.size	netconn_join_leave_group, .-netconn_join_leave_group
	.section	.text.netconn_join_leave_group_netif,"ax",@progbits
	.align	1
	.globl	netconn_join_leave_group_netif
	.type	netconn_join_leave_group_netif, @function
netconn_join_leave_group_netif:
.LFB35:
	.loc 1 1227 1
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
	mv	a5,a2
	mv	a4,a3
	sb	a5,-73(s0)
	mv	a5,a4
	sb	a5,-74(s0)
	.loc 1 1231 11
	lw	a5,-68(s0)
	bne	a5,zero,.L177
	.loc 1 1231 17 discriminator 1
	li	a5,-16
	.loc 1 1231 17 is_stmt 0
	j	.L181
.L177:
	.loc 1 1237 6 is_stmt 1
	lw	a5,-72(s0)
	bne	a5,zero,.L179
	.loc 1 1238 15
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
	sw	a5,-72(s0)
.L179:
	.loc 1 1240 6
	lbu	a5,-73(s0)
	bne	a5,zero,.L180
	.loc 1 1241 12
	li	a5,-12
	j	.L181
.L180:
	.loc 1 1245 12
	lw	a5,-68(s0)
	sw	a5,-56(s0)
	.loc 1 1246 24
	lw	a5,-72(s0)
	sw	a5,-48(s0)
	.loc 1 1247 21
	lbu	a5,-73(s0)
	sb	a5,-40(s0)
	.loc 1 1248 28
	lbu	a5,-74(s0)
	sb	a5,-39(s0)
	.loc 1 1249 9
	addi	a5,s0,-56
	mv	a1,a5
	lui	a5,%hi(lwip_netconn_do_join_leave_group_netif)
	addi	a0,a5,%lo(lwip_netconn_do_join_leave_group_netif)
	call	netconn_apimsg
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1252 10
	lb	a5,-17(s0)
.L181:
	.loc 1 1253 1
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
.LFE35:
	.size	netconn_join_leave_group_netif, .-netconn_join_leave_group_netif
	.section	.text.netconn_gethostbyname,"ax",@progbits
	.align	1
	.globl	netconn_gethostbyname
	.type	netconn_gethostbyname, @function
netconn_gethostbyname:
.LFB36:
	.loc 1 1276 1
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
	.loc 1 1284 11
	lw	a5,-52(s0)
	bne	a5,zero,.L183
	.loc 1 1284 17 discriminator 1
	li	a5,-16
	.loc 1 1284 17 is_stmt 0
	j	.L188
.L183:
	.loc 1 1285 11 is_stmt 1
	lw	a5,-56(s0)
	bne	a5,zero,.L185
	.loc 1 1285 17 discriminator 1
	li	a5,-16
	.loc 1 1285 17 is_stmt 0
	j	.L188
.L185:
	.loc 1 1307 11 is_stmt 1
	addi	a5,s0,-41
	sw	a5,-24(s0)
	.loc 1 1308 11
	addi	a5,s0,-40
	sw	a5,-28(s0)
	.loc 1 1309 12
	lw	a5,-56(s0)
	sw	a5,-32(s0)
	.loc 1 1310 12
	lw	a5,-52(s0)
	sw	a5,-36(s0)
	.loc 1 1318 9
	lw	a5,-28(s0)
	li	a1,0
	mv	a0,a5
	call	sys_sem_new
	mv	a5,a0
	.loc 1 1318 7 discriminator 1
	sb	a5,-41(s0)
	.loc 1 1319 11
	lb	a5,-41(s0)
	.loc 1 1319 6
	beq	a5,zero,.L186
	.loc 1 1321 12
	lb	a5,-41(s0)
	j	.L188
.L186:
	.loc 1 1325 11
	lw	a4,-28(s0)
	addi	a5,s0,-36
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(lwip_netconn_do_gethostbyname)
	addi	a0,a5,%lo(lwip_netconn_do_gethostbyname)
	call	tcpip_send_msg_wait_sem
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1327 3
	lw	a5,-28(s0)
	mv	a0,a5
	call	sys_sem_free
	.loc 1 1329 6
	lb	a5,-17(s0)
	beq	a5,zero,.L187
	.loc 1 1331 12
	lb	a5,-17(s0)
	j	.L188
.L187:
	.loc 1 1340 10
	lb	a5,-41(s0)
.L188:
	.loc 1 1341 1
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
.LFE36:
	.size	netconn_gethostbyname, .-netconn_gethostbyname
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/arch/cc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netbuf.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/queue.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/semphr.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/arch/sys_arch.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/api.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcp.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/udp.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/raw.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/api_msg.h"
	.file 22 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 23 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcpip.h"
	.file 24 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcpbase.h"
	.file 25 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/tcp_priv.h"
	.file 26 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/tcp.h"
	.file 27 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/sys.h"
	.file 28 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/tcpip_priv.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1eaa
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x25
	.4byte	.LASF307
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x2
	.byte	0x25
	.byte	0xd
	.4byte	0x37
	.uleb128 0x26
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
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x76
	.uleb128 0xf
	.byte	0x10
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x37
	.uleb128 0x27
	.byte	0x4
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x1c
	.4byte	0x9e
	.uleb128 0x7
	.4byte	0xa5
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0x51
	.byte	0x12
	.4byte	0x90
	.uleb128 0x7
	.4byte	0xc0
	.uleb128 0x28
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x6
	.byte	0x22
	.byte	0x15
	.4byte	0x3e
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x6
	.byte	0x25
	.byte	0x13
	.4byte	0x4c
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x6
	.byte	0x28
	.byte	0x12
	.4byte	0x5a
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x45
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.4byte	0x53
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x6
	.byte	0x34
	.byte	0x1b
	.4byte	0x61
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x7
	.byte	0x7d
	.byte	0x11
	.4byte	0xe5
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x7
	.byte	0x7e
	.byte	0x10
	.4byte	0xc1
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x7
	.byte	0x7f
	.byte	0x12
	.4byte	0xf1
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x7
	.byte	0x80
	.byte	0x11
	.4byte	0xcd
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x7
	.byte	0x81
	.byte	0x12
	.4byte	0xfd
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x7
	.byte	0x82
	.byte	0x11
	.4byte	0xd9
	.uleb128 0x20
	.byte	0x5
	.4byte	0x3e
	.byte	0x8
	.byte	0x35
	.4byte	0x1c4
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.sleb128 -1
	.uleb128 0xc
	.4byte	.LASF31
	.sleb128 -2
	.uleb128 0xc
	.4byte	.LASF32
	.sleb128 -3
	.uleb128 0xc
	.4byte	.LASF33
	.sleb128 -4
	.uleb128 0xc
	.4byte	.LASF34
	.sleb128 -5
	.uleb128 0xc
	.4byte	.LASF35
	.sleb128 -6
	.uleb128 0xc
	.4byte	.LASF36
	.sleb128 -7
	.uleb128 0xc
	.4byte	.LASF37
	.sleb128 -8
	.uleb128 0xc
	.4byte	.LASF38
	.sleb128 -9
	.uleb128 0xc
	.4byte	.LASF39
	.sleb128 -10
	.uleb128 0xc
	.4byte	.LASF40
	.sleb128 -11
	.uleb128 0xc
	.4byte	.LASF41
	.sleb128 -12
	.uleb128 0xc
	.4byte	.LASF42
	.sleb128 -13
	.uleb128 0xc
	.4byte	.LASF43
	.sleb128 -14
	.uleb128 0xc
	.4byte	.LASF44
	.sleb128 -15
	.uleb128 0xc
	.4byte	.LASF45
	.sleb128 -16
	.byte	0
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x8
	.byte	0x60
	.byte	0xe
	.4byte	0x115
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x10
	.byte	0x9
	.byte	0xba
	.4byte	0x245
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x9
	.byte	0xbc
	.byte	0x10
	.4byte	0x245
	.byte	0
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x9
	.byte	0xbf
	.byte	0x9
	.4byte	0x9c
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x9
	.byte	0xc8
	.byte	0x9
	.4byte	0x121
	.byte	0x8
	.uleb128 0x9
	.string	"len"
	.byte	0x9
	.byte	0xcb
	.byte	0x9
	.4byte	0x121
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x9
	.byte	0xd0
	.byte	0x8
	.4byte	0x109
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x9
	.byte	0xd3
	.byte	0x8
	.4byte	0x109
	.byte	0xd
	.uleb128 0x9
	.string	"ref"
	.byte	0x9
	.byte	0xda
	.byte	0x8
	.4byte	0x109
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x9
	.byte	0xdd
	.byte	0x8
	.4byte	0x109
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x1d0
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x4
	.byte	0xa
	.byte	0x33
	.4byte	0x264
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xa
	.byte	0x34
	.byte	0x9
	.4byte	0x139
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0xa
	.byte	0x39
	.byte	0x19
	.4byte	0x24a
	.uleb128 0x29
	.4byte	.LASF57
	.byte	0xb
	.2byte	0x126
	.byte	0x14
	.4byte	0x264
	.uleb128 0x1c
	.4byte	0x270
	.uleb128 0x2a
	.4byte	.LASF308
	.byte	0xb
	.2byte	0x18e
	.byte	0x18
	.4byte	0x27d
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x14
	.byte	0xc
	.byte	0x3c
	.4byte	0x2e8
	.uleb128 0x9
	.string	"p"
	.byte	0xc
	.byte	0x3d
	.byte	0x10
	.4byte	0x245
	.byte	0
	.uleb128 0x9
	.string	"ptr"
	.byte	0xc
	.byte	0x3d
	.byte	0x14
	.4byte	0x245
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xc
	.byte	0x3e
	.byte	0xd
	.4byte	0x270
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xc
	.byte	0x3f
	.byte	0x9
	.4byte	0x121
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0xc
	.byte	0x41
	.byte	0x8
	.4byte	0x109
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0xc
	.byte	0x42
	.byte	0x9
	.4byte	0x121
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0x2ed
	.uleb128 0x1a
	.4byte	0x2f8
	.uleb128 0x3
	.4byte	0x9c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0xd
	.byte	0x30
	.byte	0x22
	.4byte	0x304
	.uleb128 0x7
	.4byte	0x309
	.uleb128 0x2b
	.4byte	.LASF309
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0xe
	.byte	0x25
	.byte	0x17
	.4byte	0x2f8
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0xf
	.byte	0x2c
	.byte	0x1b
	.4byte	0x30e
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0xf
	.byte	0x2e
	.byte	0x17
	.4byte	0x2f8
	.uleb128 0x16
	.4byte	.LASF71
	.4byte	0x45
	.byte	0x10
	.byte	0x71
	.4byte	0x366
	.uleb128 0x5
	.4byte	.LASF65
	.byte	0
	.uleb128 0x5
	.4byte	.LASF66
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF67
	.byte	0x20
	.uleb128 0x5
	.4byte	.LASF68
	.byte	0x21
	.uleb128 0x5
	.4byte	.LASF69
	.byte	0x22
	.uleb128 0x5
	.4byte	.LASF70
	.byte	0x40
	.byte	0
	.uleb128 0x16
	.4byte	.LASF72
	.4byte	0x45
	.byte	0x10
	.byte	0x93
	.4byte	0x394
	.uleb128 0x5
	.4byte	.LASF73
	.byte	0
	.uleb128 0x5
	.4byte	.LASF74
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF75
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF76
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF77
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF78
	.4byte	0x45
	.byte	0x10
	.byte	0xb5
	.4byte	0x3c2
	.uleb128 0x5
	.4byte	.LASF79
	.byte	0
	.uleb128 0x5
	.4byte	.LASF80
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF81
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF82
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF83
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF84
	.4byte	0x45
	.byte	0x10
	.byte	0xbf
	.4byte	0x3de
	.uleb128 0x5
	.4byte	.LASF85
	.byte	0
	.uleb128 0x5
	.4byte	.LASF86
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x10
	.byte	0xd7
	.byte	0x11
	.4byte	0x3ea
	.uleb128 0x7
	.4byte	0x3ef
	.uleb128 0x1a
	.4byte	0x404
	.uleb128 0x3
	.4byte	0x404
	.uleb128 0x3
	.4byte	0x394
	.uleb128 0x3
	.4byte	0x121
	.byte	0
	.uleb128 0x7
	.4byte	0x409
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0x30
	.byte	0x10
	.byte	0xda
	.4byte	0x4c4
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x10
	.byte	0xdc
	.byte	0x15
	.4byte	0x332
	.byte	0
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x10
	.byte	0xde
	.byte	0x16
	.4byte	0x366
	.byte	0x1
	.uleb128 0x9
	.string	"pcb"
	.byte	0x10
	.byte	0xe5
	.byte	0x5
	.4byte	0x4c4
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x10
	.byte	0xe7
	.byte	0x9
	.4byte	0x1c4
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x10
	.byte	0xea
	.byte	0xd
	.4byte	0x31a
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x10
	.byte	0xee
	.byte	0xe
	.4byte	0x326
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x10
	.byte	0xf2
	.byte	0xe
	.4byte	0x326
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x10
	.byte	0xfc
	.byte	0x5
	.4byte	0xa45
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF96
	.byte	0x10
	.2byte	0x100
	.byte	0x9
	.4byte	0x145
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0x10
	.2byte	0x105
	.byte	0x9
	.4byte	0x139
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x10
	.2byte	0x115
	.byte	0x8
	.4byte	0x109
	.byte	0x24
	.uleb128 0x4
	.4byte	.LASF98
	.byte	0x10
	.2byte	0x11a
	.byte	0x13
	.4byte	0xa9a
	.byte	0x28
	.uleb128 0x4
	.4byte	.LASF99
	.byte	0x10
	.2byte	0x11d
	.byte	0x14
	.4byte	0x3de
	.byte	0x2c
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.byte	0x10
	.byte	0xe0
	.4byte	0x4fc
	.uleb128 0xe
	.string	"ip"
	.byte	0x10
	.byte	0xe1
	.byte	0x14
	.4byte	0x557
	.uleb128 0xe
	.string	"tcp"
	.byte	0x10
	.byte	0xe2
	.byte	0x15
	.4byte	0x8b0
	.uleb128 0xe
	.string	"udp"
	.byte	0x10
	.byte	0xe3
	.byte	0x15
	.4byte	0x985
	.uleb128 0xe
	.string	"raw"
	.byte	0x10
	.byte	0xe4
	.byte	0x15
	.4byte	0xa40
	.byte	0
	.uleb128 0xd
	.4byte	.LASF100
	.byte	0xc
	.byte	0x11
	.byte	0x5b
	.4byte	0x557
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x11
	.byte	0x5d
	.byte	0xd
	.4byte	0x270
	.byte	0
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x11
	.byte	0x5d
	.byte	0x21
	.4byte	0x270
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x11
	.byte	0x5d
	.byte	0x31
	.4byte	0x109
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x11
	.byte	0x5d
	.byte	0x41
	.4byte	0x109
	.byte	0x9
	.uleb128 0x9
	.string	"tos"
	.byte	0x11
	.byte	0x5d
	.byte	0x52
	.4byte	0x109
	.byte	0xa
	.uleb128 0x9
	.string	"ttl"
	.byte	0x11
	.byte	0x5d
	.byte	0x5c
	.4byte	0x109
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	0x4fc
	.uleb128 0xd
	.4byte	.LASF105
	.byte	0xa4
	.byte	0x12
	.byte	0xf2
	.4byte	0x8b0
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x12
	.byte	0xf4
	.byte	0xd
	.4byte	0x270
	.byte	0
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x12
	.byte	0xf4
	.byte	0x21
	.4byte	0x270
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x12
	.byte	0xf4
	.byte	0x31
	.4byte	0x109
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x12
	.byte	0xf4
	.byte	0x41
	.4byte	0x109
	.byte	0x9
	.uleb128 0x9
	.string	"tos"
	.byte	0x12
	.byte	0xf4
	.byte	0x52
	.4byte	0x109
	.byte	0xa
	.uleb128 0x9
	.string	"ttl"
	.byte	0x12
	.byte	0xf4
	.byte	0x5c
	.4byte	0x109
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x12
	.byte	0xf6
	.byte	0x13
	.4byte	0x8b0
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x12
	.byte	0xf6
	.byte	0x1f
	.4byte	0x9c
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x12
	.byte	0xf6
	.byte	0x3c
	.4byte	0xdc9
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x12
	.byte	0xf6
	.byte	0x48
	.4byte	0x109
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x12
	.byte	0xf6
	.byte	0x54
	.4byte	0x121
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x12
	.byte	0xf9
	.byte	0x9
	.4byte	0x121
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x12
	.byte	0xfb
	.byte	0xe
	.4byte	0xf9e
	.byte	0x1a
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0x12
	.2byte	0x116
	.byte	0x8
	.4byte	0x109
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0x12
	.2byte	0x116
	.byte	0x11
	.4byte	0x109
	.byte	0x1d
	.uleb128 0x4
	.4byte	.LASF111
	.byte	0x12
	.2byte	0x117
	.byte	0x8
	.4byte	0x109
	.byte	0x1e
	.uleb128 0x10
	.string	"tmr"
	.byte	0x12
	.2byte	0x118
	.byte	0x9
	.4byte	0x139
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF112
	.byte	0x12
	.2byte	0x11b
	.byte	0x9
	.4byte	0x139
	.byte	0x24
	.uleb128 0x4
	.4byte	.LASF113
	.byte	0x12
	.2byte	0x11c
	.byte	0x11
	.4byte	0xdbd
	.byte	0x28
	.uleb128 0x4
	.4byte	.LASF114
	.byte	0x12
	.2byte	0x11d
	.byte	0x11
	.4byte	0xdbd
	.byte	0x2a
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x12
	.2byte	0x11e
	.byte	0x9
	.4byte	0x139
	.byte	0x2c
	.uleb128 0x4
	.4byte	.LASF116
	.byte	0x12
	.2byte	0x127
	.byte	0x9
	.4byte	0x12d
	.byte	0x30
	.uleb128 0x10
	.string	"mss"
	.byte	0x12
	.2byte	0x129
	.byte	0x9
	.4byte	0x121
	.byte	0x32
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0x12
	.2byte	0x12c
	.byte	0x9
	.4byte	0x139
	.byte	0x34
	.uleb128 0x4
	.4byte	.LASF118
	.byte	0x12
	.2byte	0x12d
	.byte	0x9
	.4byte	0x139
	.byte	0x38
	.uleb128 0x10
	.string	"sa"
	.byte	0x12
	.2byte	0x12e
	.byte	0x9
	.4byte	0x12d
	.byte	0x3c
	.uleb128 0x10
	.string	"sv"
	.byte	0x12
	.2byte	0x12e
	.byte	0xd
	.4byte	0x12d
	.byte	0x3e
	.uleb128 0x10
	.string	"rto"
	.byte	0x12
	.2byte	0x130
	.byte	0x9
	.4byte	0x12d
	.byte	0x40
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0x12
	.2byte	0x131
	.byte	0x8
	.4byte	0x109
	.byte	0x42
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x12
	.2byte	0x134
	.byte	0x8
	.4byte	0x109
	.byte	0x43
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x12
	.2byte	0x135
	.byte	0x9
	.4byte	0x139
	.byte	0x44
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0x12
	.2byte	0x138
	.byte	0x11
	.4byte	0xdbd
	.byte	0x48
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0x12
	.2byte	0x139
	.byte	0x11
	.4byte	0xdbd
	.byte	0x4a
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x12
	.2byte	0x13c
	.byte	0x9
	.4byte	0x139
	.byte	0x4c
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0x12
	.2byte	0x13f
	.byte	0x9
	.4byte	0x139
	.byte	0x50
	.uleb128 0x4
	.4byte	.LASF126
	.byte	0x12
	.2byte	0x140
	.byte	0x9
	.4byte	0x139
	.byte	0x54
	.uleb128 0x4
	.4byte	.LASF127
	.byte	0x12
	.2byte	0x140
	.byte	0x12
	.4byte	0x139
	.byte	0x58
	.uleb128 0x4
	.4byte	.LASF128
	.byte	0x12
	.2byte	0x142
	.byte	0x9
	.4byte	0x139
	.byte	0x5c
	.uleb128 0x4
	.4byte	.LASF129
	.byte	0x12
	.2byte	0x143
	.byte	0x11
	.4byte	0xdbd
	.byte	0x60
	.uleb128 0x4
	.4byte	.LASF130
	.byte	0x12
	.2byte	0x144
	.byte	0x11
	.4byte	0xdbd
	.byte	0x62
	.uleb128 0x4
	.4byte	.LASF131
	.byte	0x12
	.2byte	0x146
	.byte	0x11
	.4byte	0xdbd
	.byte	0x64
	.uleb128 0x4
	.4byte	.LASF132
	.byte	0x12
	.2byte	0x148
	.byte	0x9
	.4byte	0x121
	.byte	0x66
	.uleb128 0x4
	.4byte	.LASF133
	.byte	0x12
	.2byte	0x14c
	.byte	0x9
	.4byte	0x121
	.byte	0x68
	.uleb128 0x4
	.4byte	.LASF134
	.byte	0x12
	.2byte	0x14f
	.byte	0x11
	.4byte	0xdbd
	.byte	0x6a
	.uleb128 0x4
	.4byte	.LASF135
	.byte	0x12
	.2byte	0x152
	.byte	0x13
	.4byte	0x1014
	.byte	0x6c
	.uleb128 0x4
	.4byte	.LASF136
	.byte	0x12
	.2byte	0x153
	.byte	0x13
	.4byte	0x1014
	.byte	0x70
	.uleb128 0x4
	.4byte	.LASF137
	.byte	0x12
	.2byte	0x155
	.byte	0x13
	.4byte	0x1014
	.byte	0x74
	.uleb128 0x4
	.4byte	.LASF138
	.byte	0x12
	.2byte	0x158
	.byte	0x10
	.4byte	0x245
	.byte	0x78
	.uleb128 0x4
	.4byte	.LASF139
	.byte	0x12
	.2byte	0x15b
	.byte	0x1a
	.4byte	0xef0
	.byte	0x7c
	.uleb128 0x4
	.4byte	.LASF140
	.byte	0x12
	.2byte	0x160
	.byte	0xf
	.4byte	0xe74
	.byte	0x80
	.uleb128 0x4
	.4byte	.LASF141
	.byte	0x12
	.2byte	0x162
	.byte	0xf
	.4byte	0xe45
	.byte	0x84
	.uleb128 0x4
	.4byte	.LASF142
	.byte	0x12
	.2byte	0x164
	.byte	0x14
	.4byte	0xee4
	.byte	0x88
	.uleb128 0x4
	.4byte	.LASF143
	.byte	0x12
	.2byte	0x166
	.byte	0xf
	.4byte	0xe9e
	.byte	0x8c
	.uleb128 0x4
	.4byte	.LASF144
	.byte	0x12
	.2byte	0x168
	.byte	0xe
	.4byte	0xec3
	.byte	0x90
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x12
	.2byte	0x171
	.byte	0x9
	.4byte	0x139
	.byte	0x94
	.uleb128 0x4
	.4byte	.LASF146
	.byte	0x12
	.2byte	0x173
	.byte	0x9
	.4byte	0x139
	.byte	0x98
	.uleb128 0x4
	.4byte	.LASF147
	.byte	0x12
	.2byte	0x174
	.byte	0x9
	.4byte	0x139
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0x12
	.2byte	0x178
	.byte	0x8
	.4byte	0x109
	.byte	0xa0
	.uleb128 0x4
	.4byte	.LASF149
	.byte	0x12
	.2byte	0x17a
	.byte	0x8
	.4byte	0x109
	.byte	0xa1
	.uleb128 0x4
	.4byte	.LASF150
	.byte	0x12
	.2byte	0x17c
	.byte	0x8
	.4byte	0x109
	.byte	0xa2
	.uleb128 0x4
	.4byte	.LASF151
	.byte	0x12
	.2byte	0x17f
	.byte	0x8
	.4byte	0x109
	.byte	0xa3
	.byte	0
	.uleb128 0x7
	.4byte	0x55c
	.uleb128 0xd
	.4byte	.LASF152
	.byte	0x28
	.byte	0x13
	.byte	0x51
	.4byte	0x985
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x13
	.byte	0x53
	.byte	0xd
	.4byte	0x270
	.byte	0
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x13
	.byte	0x53
	.byte	0x21
	.4byte	0x270
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x13
	.byte	0x53
	.byte	0x31
	.4byte	0x109
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x13
	.byte	0x53
	.byte	0x41
	.4byte	0x109
	.byte	0x9
	.uleb128 0x9
	.string	"tos"
	.byte	0x13
	.byte	0x53
	.byte	0x52
	.4byte	0x109
	.byte	0xa
	.uleb128 0x9
	.string	"ttl"
	.byte	0x13
	.byte	0x53
	.byte	0x5c
	.4byte	0x109
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x13
	.byte	0x57
	.byte	0x13
	.4byte	0x985
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x13
	.byte	0x59
	.byte	0x8
	.4byte	0x109
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x13
	.byte	0x5b
	.byte	0x9
	.4byte	0x121
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x13
	.byte	0x5b
	.byte	0x15
	.4byte	0x121
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0x13
	.byte	0x60
	.byte	0xe
	.4byte	0x264
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x13
	.byte	0x63
	.byte	0x8
	.4byte	0x109
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0x13
	.byte	0x65
	.byte	0x8
	.4byte	0x109
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0x13
	.byte	0x6e
	.byte	0xf
	.4byte	0xb7c
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0x13
	.byte	0x70
	.byte	0x9
	.4byte	0x9c
	.byte	0x24
	.byte	0
	.uleb128 0x7
	.4byte	0x8b5
	.uleb128 0xd
	.4byte	.LASF157
	.byte	0x1c
	.byte	0x14
	.byte	0x4b
	.4byte	0xa40
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x14
	.byte	0x4d
	.byte	0xd
	.4byte	0x270
	.byte	0
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x14
	.byte	0x4d
	.byte	0x21
	.4byte	0x270
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x14
	.byte	0x4d
	.byte	0x31
	.4byte	0x109
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x14
	.byte	0x4d
	.byte	0x41
	.4byte	0x109
	.byte	0x9
	.uleb128 0x9
	.string	"tos"
	.byte	0x14
	.byte	0x4d
	.byte	0x52
	.4byte	0x109
	.byte	0xa
	.uleb128 0x9
	.string	"ttl"
	.byte	0x14
	.byte	0x4d
	.byte	0x5c
	.4byte	0x109
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x14
	.byte	0x4f
	.byte	0x13
	.4byte	0xa40
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF158
	.byte	0x14
	.byte	0x51
	.byte	0x8
	.4byte	0x109
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x14
	.byte	0x52
	.byte	0x8
	.4byte	0x109
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x14
	.byte	0x56
	.byte	0x8
	.4byte	0x109
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0x14
	.byte	0x58
	.byte	0x8
	.4byte	0x109
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0x14
	.byte	0x5c
	.byte	0xf
	.4byte	0xb4d
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0x14
	.byte	0x5e
	.byte	0x9
	.4byte	0x9c
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0x98a
	.uleb128 0x1d
	.byte	0x4
	.byte	0x10
	.byte	0xf9
	.4byte	0xa66
	.uleb128 0x2c
	.4byte	.LASF159
	.byte	0x10
	.byte	0xfa
	.byte	0x9
	.4byte	0x37
	.uleb128 0xe
	.string	"ptr"
	.byte	0x10
	.byte	0xfb
	.byte	0xb
	.4byte	0x9c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF160
	.byte	0x24
	.byte	0x15
	.byte	0x4f
	.4byte	0xa9a
	.uleb128 0x1
	.4byte	.LASF161
	.byte	0x15
	.byte	0x52
	.byte	0x13
	.4byte	0x404
	.byte	0
	.uleb128 0x9
	.string	"err"
	.byte	0x15
	.byte	0x54
	.byte	0x9
	.4byte	0x1c4
	.byte	0x4
	.uleb128 0x9
	.string	"msg"
	.byte	0x15
	.byte	0x97
	.byte	0x5
	.4byte	0xd15
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	0xa66
	.uleb128 0x2d
	.4byte	.LASF162
	.byte	0x8
	.byte	0x10
	.2byte	0x125
	.byte	0x8
	.4byte	0xaca
	.uleb128 0x10
	.string	"ptr"
	.byte	0x10
	.2byte	0x127
	.byte	0xf
	.4byte	0xbb
	.byte	0
	.uleb128 0x10
	.string	"len"
	.byte	0x10
	.2byte	0x129
	.byte	0xa
	.4byte	0x7d
	.byte	0x4
	.byte	0
	.uleb128 0x1c
	.4byte	0xa9f
	.uleb128 0x20
	.byte	0x7
	.4byte	0x45
	.byte	0x16
	.byte	0x34
	.4byte	0xb3c
	.uleb128 0x5
	.4byte	.LASF163
	.byte	0
	.uleb128 0x5
	.4byte	.LASF164
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF165
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF166
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF167
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF169
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF170
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF171
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF172
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF173
	.byte	0xa
	.uleb128 0x5
	.4byte	.LASF174
	.byte	0xb
	.uleb128 0x5
	.4byte	.LASF175
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF176
	.byte	0xd
	.uleb128 0x5
	.4byte	.LASF177
	.byte	0xe
	.uleb128 0x5
	.4byte	.LASF178
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	.LASF179
	.byte	0x16
	.byte	0x38
	.byte	0x3
	.4byte	0xacf
	.uleb128 0x7
	.4byte	0x27d
	.uleb128 0x8
	.4byte	.LASF180
	.byte	0x14
	.byte	0x47
	.byte	0x10
	.4byte	0xb59
	.uleb128 0x7
	.4byte	0xb5e
	.uleb128 0x17
	.4byte	0x109
	.4byte	0xb7c
	.uleb128 0x3
	.4byte	0x9c
	.uleb128 0x3
	.4byte	0xa40
	.uleb128 0x3
	.4byte	0x245
	.uleb128 0x3
	.4byte	0xb48
	.byte	0
	.uleb128 0x8
	.4byte	.LASF181
	.byte	0x13
	.byte	0x4d
	.byte	0x10
	.4byte	0xb88
	.uleb128 0x7
	.4byte	0xb8d
	.uleb128 0x1a
	.4byte	0xbac
	.uleb128 0x3
	.4byte	0x9c
	.uleb128 0x3
	.4byte	0x985
	.uleb128 0x3
	.4byte	0x245
	.uleb128 0x3
	.4byte	0xb48
	.uleb128 0x3
	.4byte	0x121
	.byte	0
	.uleb128 0x8
	.4byte	.LASF182
	.byte	0x17
	.byte	0x48
	.byte	0x10
	.4byte	0x2e8
	.uleb128 0x7
	.4byte	0x31a
	.uleb128 0x11
	.byte	0x1
	.byte	0x5a
	.4byte	0xbd2
	.uleb128 0x1
	.4byte	.LASF183
	.byte	0x15
	.byte	0x5b
	.byte	0xc
	.4byte	0x109
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0x5e
	.4byte	0xc01
	.uleb128 0x1
	.4byte	.LASF184
	.byte	0x15
	.byte	0x5f
	.byte	0x19
	.4byte	0xb48
	.byte	0
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x15
	.byte	0x60
	.byte	0xd
	.4byte	0x121
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x15
	.byte	0x61
	.byte	0xc
	.4byte	0x109
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.byte	0xc
	.byte	0x64
	.4byte	0xc30
	.uleb128 0x1
	.4byte	.LASF184
	.byte	0x15
	.byte	0x65
	.byte	0x12
	.4byte	0xc30
	.byte	0
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x15
	.byte	0x66
	.byte	0xe
	.4byte	0xc35
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF185
	.byte	0x15
	.byte	0x67
	.byte	0xc
	.4byte	0x109
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	0x270
	.uleb128 0x7
	.4byte	0x121
	.uleb128 0x11
	.byte	0x1c
	.byte	0x6a
	.4byte	0xc9d
	.uleb128 0x1
	.4byte	.LASF186
	.byte	0x15
	.byte	0x6c
	.byte	0x1f
	.4byte	0xc9d
	.byte	0
	.uleb128 0x1
	.4byte	.LASF187
	.byte	0x15
	.byte	0x6e
	.byte	0xd
	.4byte	0x121
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF188
	.byte	0x15
	.byte	0x70
	.byte	0xe
	.4byte	0x7d
	.byte	0x8
	.uleb128 0x9
	.string	"len"
	.byte	0x15
	.byte	0x72
	.byte	0xe
	.4byte	0x7d
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF189
	.byte	0x15
	.byte	0x74
	.byte	0xe
	.4byte	0x7d
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF190
	.byte	0x15
	.byte	0x75
	.byte	0xc
	.4byte	0x109
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF191
	.byte	0x15
	.byte	0x77
	.byte	0xd
	.4byte	0x139
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0xaca
	.uleb128 0x11
	.byte	0x4
	.byte	0x7b
	.4byte	0xcb7
	.uleb128 0x9
	.string	"len"
	.byte	0x15
	.byte	0x7c
	.byte	0xe
	.4byte	0x7d
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0x80
	.4byte	0xcd9
	.uleb128 0x1
	.4byte	.LASF192
	.byte	0x15
	.byte	0x81
	.byte	0xc
	.4byte	0x109
	.byte	0
	.uleb128 0x1
	.4byte	.LASF191
	.byte	0x15
	.byte	0x83
	.byte	0xd
	.4byte	0x139
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.byte	0xc
	.byte	0x8b
	.4byte	0xd15
	.uleb128 0x1
	.4byte	.LASF193
	.byte	0x15
	.byte	0x8c
	.byte	0x19
	.4byte	0xb48
	.byte	0
	.uleb128 0x1
	.4byte	.LASF194
	.byte	0x15
	.byte	0x8d
	.byte	0x19
	.4byte	0xb48
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x15
	.byte	0x8e
	.byte	0xc
	.4byte	0x109
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF195
	.byte	0x15
	.byte	0x8f
	.byte	0x19
	.4byte	0x3c2
	.byte	0x9
	.byte	0
	.uleb128 0x1d
	.byte	0x1c
	.byte	0x15
	.byte	0x56
	.4byte	0xd72
	.uleb128 0xe
	.string	"b"
	.byte	0x15
	.byte	0x58
	.byte	0x14
	.4byte	0xd72
	.uleb128 0xe
	.string	"n"
	.byte	0x15
	.byte	0x5c
	.byte	0x7
	.4byte	0xbbd
	.uleb128 0xe
	.string	"bc"
	.byte	0x15
	.byte	0x62
	.byte	0x7
	.4byte	0xbd2
	.uleb128 0xe
	.string	"ad"
	.byte	0x15
	.byte	0x68
	.byte	0x7
	.4byte	0xc01
	.uleb128 0xe
	.string	"w"
	.byte	0x15
	.byte	0x79
	.byte	0x7
	.4byte	0xc3a
	.uleb128 0xe
	.string	"r"
	.byte	0x15
	.byte	0x7d
	.byte	0x7
	.4byte	0xca2
	.uleb128 0xe
	.string	"sd"
	.byte	0x15
	.byte	0x87
	.byte	0x7
	.4byte	0xcb7
	.uleb128 0xe
	.string	"jl"
	.byte	0x15
	.byte	0x90
	.byte	0x7
	.4byte	0xcd9
	.byte	0
	.uleb128 0x7
	.4byte	0x28f
	.uleb128 0xd
	.4byte	.LASF196
	.byte	0x10
	.byte	0x15
	.byte	0xa9
	.4byte	0xdb8
	.uleb128 0x1
	.4byte	.LASF197
	.byte	0x15
	.byte	0xae
	.byte	0xf
	.4byte	0xaa
	.byte	0
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x15
	.byte	0xb1
	.byte	0xe
	.4byte	0xc30
	.byte	0x4
	.uleb128 0x9
	.string	"sem"
	.byte	0x15
	.byte	0xb8
	.byte	0xe
	.4byte	0xbb8
	.byte	0x8
	.uleb128 0x9
	.string	"err"
	.byte	0x15
	.byte	0xba
	.byte	0xa
	.4byte	0xdb8
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.4byte	0x1c4
	.uleb128 0x8
	.4byte	.LASF198
	.byte	0x18
	.byte	0x35
	.byte	0xf
	.4byte	0x121
	.uleb128 0x16
	.4byte	.LASF199
	.4byte	0x45
	.byte	0x18
	.byte	0x38
	.4byte	0xe1b
	.uleb128 0x5
	.4byte	.LASF200
	.byte	0
	.uleb128 0x5
	.4byte	.LASF201
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF202
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF203
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF204
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF206
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF207
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF208
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF209
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF210
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF211
	.byte	0x12
	.byte	0x46
	.byte	0x11
	.4byte	0xe27
	.uleb128 0x7
	.4byte	0xe2c
	.uleb128 0x17
	.4byte	0x1c4
	.4byte	0xe45
	.uleb128 0x3
	.4byte	0x9c
	.uleb128 0x3
	.4byte	0x8b0
	.uleb128 0x3
	.4byte	0x1c4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF212
	.byte	0x12
	.byte	0x52
	.byte	0x11
	.4byte	0xe51
	.uleb128 0x7
	.4byte	0xe56
	.uleb128 0x17
	.4byte	0x1c4
	.4byte	0xe74
	.uleb128 0x3
	.4byte	0x9c
	.uleb128 0x3
	.4byte	0x8b0
	.uleb128 0x3
	.4byte	0x245
	.uleb128 0x3
	.4byte	0x1c4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF213
	.byte	0x12
	.byte	0x60
	.byte	0x11
	.4byte	0xe80
	.uleb128 0x7
	.4byte	0xe85
	.uleb128 0x17
	.4byte	0x1c4
	.4byte	0xe9e
	.uleb128 0x3
	.4byte	0x9c
	.uleb128 0x3
	.4byte	0x8b0
	.uleb128 0x3
	.4byte	0x121
	.byte	0
	.uleb128 0x8
	.4byte	.LASF214
	.byte	0x12
	.byte	0x6c
	.byte	0x11
	.4byte	0xeaa
	.uleb128 0x7
	.4byte	0xeaf
	.uleb128 0x17
	.4byte	0x1c4
	.4byte	0xec3
	.uleb128 0x3
	.4byte	0x9c
	.uleb128 0x3
	.4byte	0x8b0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF215
	.byte	0x12
	.byte	0x78
	.byte	0x10
	.4byte	0xecf
	.uleb128 0x7
	.4byte	0xed4
	.uleb128 0x1a
	.4byte	0xee4
	.uleb128 0x3
	.4byte	0x9c
	.uleb128 0x3
	.4byte	0x1c4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF216
	.byte	0x12
	.byte	0x86
	.byte	0x11
	.4byte	0xe27
	.uleb128 0x7
	.4byte	0xef5
	.uleb128 0xd
	.4byte	.LASF217
	.byte	0x1c
	.byte	0x12
	.byte	0xdf
	.4byte	0xf9e
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x12
	.byte	0xe1
	.byte	0xd
	.4byte	0x270
	.byte	0
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x12
	.byte	0xe1
	.byte	0x21
	.4byte	0x270
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x12
	.byte	0xe1
	.byte	0x31
	.4byte	0x109
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x12
	.byte	0xe1
	.byte	0x41
	.4byte	0x109
	.byte	0x9
	.uleb128 0x9
	.string	"tos"
	.byte	0x12
	.byte	0xe1
	.byte	0x52
	.4byte	0x109
	.byte	0xa
	.uleb128 0x9
	.string	"ttl"
	.byte	0x12
	.byte	0xe1
	.byte	0x5c
	.4byte	0x109
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x12
	.byte	0xe3
	.byte	0x1a
	.4byte	0xef0
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x12
	.byte	0xe3
	.byte	0x26
	.4byte	0x9c
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x12
	.byte	0xe3
	.byte	0x43
	.4byte	0xdc9
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x12
	.byte	0xe3
	.byte	0x4f
	.4byte	0x109
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x12
	.byte	0xe3
	.byte	0x5b
	.4byte	0x121
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF218
	.byte	0x12
	.byte	0xe7
	.byte	0x11
	.4byte	0xe1b
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.4byte	.LASF219
	.byte	0x12
	.byte	0xce
	.byte	0xf
	.4byte	0x121
	.uleb128 0xd
	.4byte	.LASF220
	.byte	0x14
	.byte	0x19
	.byte	0xfa
	.4byte	0x1014
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x19
	.byte	0xfb
	.byte	0x13
	.4byte	0x1014
	.byte	0
	.uleb128 0x9
	.string	"p"
	.byte	0x19
	.byte	0xfc
	.byte	0x10
	.4byte	0x245
	.byte	0x4
	.uleb128 0x9
	.string	"len"
	.byte	0x19
	.byte	0xfd
	.byte	0x9
	.4byte	0x121
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF221
	.byte	0x19
	.2byte	0x104
	.byte	0x9
	.4byte	0x121
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF222
	.byte	0x19
	.2byte	0x105
	.byte	0x8
	.4byte	0x109
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x19
	.2byte	0x107
	.byte	0x8
	.4byte	0x109
	.byte	0xd
	.uleb128 0x4
	.4byte	.LASF223
	.byte	0x19
	.2byte	0x10e
	.byte	0x13
	.4byte	0x108e
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0xfaa
	.uleb128 0xd
	.4byte	.LASF224
	.byte	0x14
	.byte	0x1a
	.byte	0x38
	.4byte	0x108e
	.uleb128 0x9
	.string	"src"
	.byte	0x1a
	.byte	0x39
	.byte	0x9
	.4byte	0x121
	.byte	0
	.uleb128 0x1
	.4byte	.LASF225
	.byte	0x1a
	.byte	0x3a
	.byte	0x9
	.4byte	0x121
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF226
	.byte	0x1a
	.byte	0x3b
	.byte	0x9
	.4byte	0x139
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF227
	.byte	0x1a
	.byte	0x3c
	.byte	0x9
	.4byte	0x139
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF228
	.byte	0x1a
	.byte	0x3d
	.byte	0x9
	.4byte	0x121
	.byte	0xc
	.uleb128 0x9
	.string	"wnd"
	.byte	0x1a
	.byte	0x3e
	.byte	0x9
	.4byte	0x121
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF221
	.byte	0x1a
	.byte	0x3f
	.byte	0x9
	.4byte	0x121
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF229
	.byte	0x1a
	.byte	0x40
	.byte	0x9
	.4byte	0x121
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x1019
	.uleb128 0xb
	.4byte	.LASF230
	.byte	0x15
	.byte	0xd8
	.4byte	0x10a4
	.uleb128 0x3
	.4byte	0x9c
	.byte	0
	.uleb128 0x13
	.4byte	.LASF237
	.byte	0x1b
	.byte	0xc3
	.byte	0x7
	.4byte	0x1c4
	.4byte	0x10bf
	.uleb128 0x3
	.4byte	0xbb8
	.uleb128 0x3
	.4byte	0x109
	.byte	0
	.uleb128 0xb
	.4byte	.LASF231
	.byte	0x15
	.byte	0xd4
	.4byte	0x10d0
	.uleb128 0x3
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF232
	.byte	0x15
	.byte	0xd3
	.4byte	0x10e1
	.uleb128 0x3
	.4byte	0x9c
	.byte	0
	.uleb128 0x21
	.4byte	.LASF233
	.2byte	0x1fc
	.4byte	0x10f2
	.uleb128 0x3
	.4byte	0x2b
	.byte	0
	.uleb128 0x22
	.4byte	.LASF251
	.2byte	0x1fb
	.byte	0xc
	.4byte	0x2b
	.uleb128 0xb
	.4byte	.LASF234
	.byte	0x15
	.byte	0xd0
	.4byte	0x110f
	.uleb128 0x3
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF235
	.byte	0x15
	.byte	0xce
	.4byte	0x1120
	.uleb128 0x3
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF236
	.byte	0x15
	.byte	0xc9
	.4byte	0x1131
	.uleb128 0x3
	.4byte	0x9c
	.byte	0
	.uleb128 0x13
	.4byte	.LASF238
	.byte	0x16
	.byte	0x93
	.byte	0x7
	.4byte	0x9c
	.4byte	0x1147
	.uleb128 0x3
	.4byte	0xb3c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF239
	.byte	0x15
	.byte	0xca
	.4byte	0x1158
	.uleb128 0x3
	.4byte	0x9c
	.byte	0
	.uleb128 0x13
	.4byte	.LASF240
	.byte	0x15
	.byte	0xc1
	.byte	0x5
	.4byte	0x37
	.4byte	0x1173
	.uleb128 0x3
	.4byte	0x9c
	.uleb128 0x3
	.4byte	0xdb8
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF241
	.2byte	0x150
	.byte	0x7
	.4byte	0x139
	.4byte	0x1193
	.uleb128 0x3
	.4byte	0x1193
	.uleb128 0x3
	.4byte	0x1198
	.uleb128 0x3
	.4byte	0x139
	.byte	0
	.uleb128 0x7
	.4byte	0x326
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF242
	.2byte	0x163
	.byte	0x7
	.4byte	0x139
	.4byte	0x11b8
	.uleb128 0x3
	.4byte	0x1193
	.uleb128 0x3
	.4byte	0x1198
	.byte	0
	.uleb128 0xb
	.4byte	.LASF243
	.byte	0x15
	.byte	0xc8
	.4byte	0x11c9
	.uleb128 0x3
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF244
	.byte	0x15
	.byte	0xc7
	.4byte	0x11da
	.uleb128 0x3
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF245
	.byte	0x15
	.byte	0xc6
	.4byte	0x11eb
	.uleb128 0x3
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF246
	.byte	0x15
	.byte	0xc5
	.4byte	0x11fc
	.uleb128 0x3
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF247
	.byte	0x15
	.byte	0xc4
	.4byte	0x120d
	.uleb128 0x3
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF248
	.byte	0x15
	.byte	0xcf
	.4byte	0x121e
	.uleb128 0x3
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF249
	.byte	0x15
	.byte	0xdc
	.4byte	0x122f
	.uleb128 0x3
	.4byte	0x404
	.byte	0
	.uleb128 0xb
	.4byte	.LASF250
	.byte	0x15
	.byte	0xc3
	.4byte	0x1240
	.uleb128 0x3
	.4byte	0x9c
	.byte	0
	.uleb128 0x22
	.4byte	.LASF252
	.2byte	0x1cd
	.byte	0x7
	.4byte	0x139
	.uleb128 0xb
	.4byte	.LASF253
	.byte	0x16
	.byte	0x95
	.4byte	0x1262
	.uleb128 0x3
	.4byte	0xb3c
	.uleb128 0x3
	.4byte	0x9c
	.byte	0
	.uleb128 0x21
	.4byte	.LASF254
	.2byte	0x171
	.4byte	0x1273
	.uleb128 0x3
	.4byte	0x1193
	.byte	0
	.uleb128 0xb
	.4byte	.LASF255
	.byte	0x1b
	.byte	0xe1
	.4byte	0x1284
	.uleb128 0x3
	.4byte	0xbb8
	.byte	0
	.uleb128 0x13
	.4byte	.LASF256
	.byte	0x1b
	.byte	0xec
	.byte	0x5
	.4byte	0x37
	.4byte	0x129a
	.uleb128 0x3
	.4byte	0xbb8
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF257
	.2byte	0x17b
	.byte	0x5
	.4byte	0x37
	.4byte	0x12b0
	.uleb128 0x3
	.4byte	0x1193
	.byte	0
	.uleb128 0xb
	.4byte	.LASF258
	.byte	0x15
	.byte	0xc2
	.4byte	0x12c1
	.uleb128 0x3
	.4byte	0x9c
	.byte	0
	.uleb128 0x13
	.4byte	.LASF259
	.byte	0x15
	.byte	0xdb
	.byte	0x11
	.4byte	0x404
	.4byte	0x12dc
	.uleb128 0x3
	.4byte	0x332
	.uleb128 0x3
	.4byte	0x3de
	.byte	0
	.uleb128 0x13
	.4byte	.LASF260
	.byte	0x1c
	.byte	0x61
	.byte	0x7
	.4byte	0x1c4
	.4byte	0x12fc
	.uleb128 0x3
	.4byte	0xbac
	.uleb128 0x3
	.4byte	0x9c
	.uleb128 0x3
	.4byte	0xbb8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF262
	.2byte	0x4fa
	.4byte	0x1c4
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1370
	.uleb128 0x2
	.4byte	.LASF197
	.2byte	0x4fa
	.byte	0x23
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x4fa
	.byte	0x34
	.4byte	0xc30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"msg"
	.2byte	0x4fd
	.byte	0x16
	.4byte	0xd77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"sem"
	.2byte	0x4ff
	.byte	0xd
	.4byte	0x31a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"err"
	.2byte	0x501
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x12
	.4byte	.LASF261
	.2byte	0x502
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF263
	.2byte	0x4c7
	.4byte	0x1c4
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13e8
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x4c7
	.byte	0x30
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF193
	.2byte	0x4c8
	.byte	0x31
	.4byte	0xb48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF52
	.2byte	0x4c9
	.byte	0x25
	.4byte	0x109
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x2
	.4byte	.LASF195
	.2byte	0x4ca
	.byte	0x32
	.4byte	0x3c2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0x6
	.string	"msg"
	.2byte	0x4cc
	.byte	0x12
	.4byte	0xa66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"err"
	.2byte	0x4cd
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF264
	.2byte	0x49d
	.4byte	0x1c4
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1460
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x49d
	.byte	0x2a
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF193
	.2byte	0x49e
	.byte	0x2b
	.4byte	0xb48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF194
	.2byte	0x49f
	.byte	0x2b
	.4byte	0xb48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.4byte	.LASF195
	.2byte	0x4a0
	.byte	0x2c
	.4byte	0x3c2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0x6
	.string	"msg"
	.2byte	0x4a2
	.byte	0x12
	.4byte	0xa66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"err"
	.2byte	0x4a3
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF265
	.2byte	0x48b
	.4byte	0x1c4
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14a7
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x48b
	.byte	0x22
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF266
	.2byte	0x48b
	.byte	0x2d
	.4byte	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x2
	.4byte	.LASF267
	.2byte	0x48b
	.byte	0x3b
	.4byte	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0xa
	.4byte	.LASF268
	.2byte	0x473
	.4byte	0x1c4
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14ee
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x473
	.byte	0x1d
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"err"
	.2byte	0x475
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x6
	.string	"lev"
	.2byte	0x476
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF269
	.2byte	0x465
	.4byte	0x1c4
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1517
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x465
	.byte	0x1f
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF287
	.2byte	0x441
	.4byte	0x1c4
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x156f
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x441
	.byte	0x28
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x14
	.string	"how"
	.2byte	0x441
	.byte	0x33
	.4byte	0x109
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x6
	.string	"msg"
	.2byte	0x443
	.byte	0x12
	.4byte	0xa66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"err"
	.2byte	0x444
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF270
	.2byte	0x3e5
	.4byte	0x1c4
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x163c
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x3e5
	.byte	0x2e
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.4byte	.LASF271
	.2byte	0x3e5
	.byte	0x46
	.4byte	0x163c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.4byte	.LASF272
	.2byte	0x3e5
	.byte	0x55
	.4byte	0x121
	.uleb128 0x3
	.byte	0x91
	.sleb128 -90
	.uleb128 0x2
	.4byte	.LASF190
	.2byte	0x3e6
	.byte	0x23
	.4byte	0x109
	.uleb128 0x3
	.byte	0x91
	.sleb128 -91
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x3e6
	.byte	0x35
	.4byte	0x1641
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x6
	.string	"msg"
	.2byte	0x3e8
	.byte	0x12
	.4byte	0xa66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.string	"err"
	.2byte	0x3e9
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x12
	.4byte	.LASF274
	.2byte	0x3ea
	.byte	0x8
	.4byte	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF275
	.2byte	0x3eb
	.byte	0xa
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"i"
	.2byte	0x3ec
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x12
	.4byte	.LASF276
	.2byte	0x408
	.byte	0xd
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xa9f
	.uleb128 0x7
	.4byte	0x7d
	.uleb128 0xa
	.4byte	.LASF277
	.2byte	0x3ce
	.4byte	0x1c4
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16ba
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x3ce
	.byte	0x26
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF278
	.2byte	0x3ce
	.byte	0x38
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF275
	.2byte	0x3ce
	.byte	0x48
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF190
	.2byte	0x3cf
	.byte	0x1b
	.4byte	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x2
	.4byte	.LASF273
	.2byte	0x3cf
	.byte	0x2d
	.4byte	0x1641
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.4byte	.LASF186
	.2byte	0x3d1
	.byte	0x14
	.4byte	0xa9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF279
	.2byte	0x3ad
	.4byte	0x1c4
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1712
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x3ad
	.byte	0x1e
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x14
	.string	"buf"
	.2byte	0x3ad
	.byte	0x33
	.4byte	0xd72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.string	"msg"
	.2byte	0x3af
	.byte	0x12
	.4byte	0xa66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"err"
	.2byte	0x3b0
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF280
	.2byte	0x39a
	.4byte	0x1c4
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1768
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x39a
	.byte	0x20
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"buf"
	.2byte	0x39a
	.byte	0x35
	.4byte	0xd72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x39a
	.byte	0x4b
	.4byte	0xb48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF59
	.2byte	0x39a
	.byte	0x57
	.4byte	0x121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.byte	0
	.uleb128 0xa
	.4byte	.LASF281
	.2byte	0x35c
	.4byte	0x1c4
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17d5
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x35c
	.byte	0x1e
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF282
	.2byte	0x35c
	.byte	0x34
	.4byte	0x17d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"buf"
	.2byte	0x35f
	.byte	0x12
	.4byte	0xd72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"err"
	.2byte	0x360
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x18
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x6
	.string	"p"
	.2byte	0x36c
	.byte	0x12
	.4byte	0x245
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xd72
	.uleb128 0xa
	.4byte	.LASF283
	.2byte	0x34a
	.4byte	0x1c4
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1821
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x34a
	.byte	0x33
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF282
	.2byte	0x34a
	.byte	0x49
	.4byte	0x17d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF190
	.2byte	0x34a
	.byte	0x57
	.4byte	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0xa
	.4byte	.LASF284
	.2byte	0x336
	.4byte	0x1c4
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1859
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x336
	.byte	0x2d
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF282
	.2byte	0x336
	.byte	0x43
	.4byte	0x17d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF285
	.2byte	0x323
	.4byte	0x1c4
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18a0
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x323
	.byte	0x2d
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF282
	.2byte	0x323
	.byte	0x41
	.4byte	0x18a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF190
	.2byte	0x323
	.byte	0x4f
	.4byte	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x7
	.4byte	0x245
	.uleb128 0xa
	.4byte	.LASF286
	.2byte	0x30e
	.4byte	0x1c4
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18dd
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x30e
	.byte	0x27
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF282
	.2byte	0x30e
	.byte	0x3b
	.4byte	0x18a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF288
	.2byte	0x2bf
	.4byte	0x1c4
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x197a
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x2bf
	.byte	0x27
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF282
	.2byte	0x2bf
	.byte	0x3b
	.4byte	0x18a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF190
	.2byte	0x2bf
	.byte	0x49
	.4byte	0x109
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x6
	.string	"err"
	.2byte	0x2c1
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x6
	.string	"buf"
	.2byte	0x2c2
	.byte	0x10
	.4byte	0x245
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"msg"
	.2byte	0x2c3
	.byte	0x12
	.4byte	0xa66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x2f0
	.byte	0x1
	.4byte	.L90
	.uleb128 0x18
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x6
	.string	"len"
	.2byte	0x2e1
	.byte	0xb
	.4byte	0x121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF289
	.2byte	0x2b1
	.4byte	0x1c4
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19d2
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x2b1
	.byte	0x23
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x14
	.string	"len"
	.2byte	0x2b1
	.byte	0x30
	.4byte	0x7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.string	"err"
	.2byte	0x2b3
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x6
	.string	"msg"
	.2byte	0x2b4
	.byte	0x12
	.4byte	0xa66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF290
	.2byte	0x2a5
	.4byte	0x1c4
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a19
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x2a5
	.byte	0x27
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"len"
	.2byte	0x2a5
	.byte	0x34
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"msg"
	.2byte	0x2a5
	.byte	0x49
	.4byte	0xa9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF291
	.2byte	0x243
	.4byte	0x1c4
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ad1
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x243
	.byte	0x23
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF282
	.2byte	0x243
	.byte	0x30
	.4byte	0x1198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF190
	.2byte	0x243
	.byte	0x3e
	.4byte	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x6
	.string	"buf"
	.2byte	0x245
	.byte	0x9
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"len"
	.2byte	0x246
	.byte	0x9
	.4byte	0x121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x23
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x1a9a
	.uleb128 0x6
	.string	"err"
	.2byte	0x24d
	.byte	0xb
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x1ab7
	.uleb128 0x6
	.string	"err"
	.2byte	0x259
	.byte	0xd
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.byte	0
	.uleb128 0x18
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x6
	.string	"err"
	.2byte	0x27f
	.byte	0xb
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF292
	.2byte	0x1d7
	.4byte	0x1c4
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b36
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x1d7
	.byte	0x20
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF293
	.2byte	0x1d7
	.byte	0x37
	.4byte	0x1b36
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"err"
	.2byte	0x1da
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x12
	.4byte	.LASF294
	.2byte	0x1db
	.byte	0x9
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF295
	.2byte	0x1dc
	.byte	0x13
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	0x404
	.uleb128 0xa
	.4byte	.LASF296
	.2byte	0x1b2
	.4byte	0x1c4
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b93
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x1b2
	.byte	0x2d
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF297
	.2byte	0x1b2
	.byte	0x38
	.4byte	0x109
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x6
	.string	"msg"
	.2byte	0x1b5
	.byte	0x12
	.4byte	0xa66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"err"
	.2byte	0x1b6
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF298
	.2byte	0x199
	.4byte	0x1c4
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bdb
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x199
	.byte	0x24
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.string	"msg"
	.2byte	0x19b
	.byte	0x12
	.4byte	0xa66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"err"
	.2byte	0x19c
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF299
	.2byte	0x179
	.4byte	0x1c4
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c43
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x179
	.byte	0x21
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x179
	.byte	0x38
	.4byte	0xb48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF59
	.2byte	0x179
	.byte	0x44
	.4byte	0x121
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0x6
	.string	"msg"
	.2byte	0x17b
	.byte	0x12
	.4byte	0xa66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"err"
	.2byte	0x17c
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF300
	.2byte	0x15f
	.4byte	0x1c4
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c9b
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x15f
	.byte	0x21
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF52
	.2byte	0x15f
	.byte	0x2c
	.4byte	0x109
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x6
	.string	"msg"
	.2byte	0x161
	.byte	0x12
	.4byte	0xa66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"err"
	.2byte	0x162
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF301
	.2byte	0x133
	.4byte	0x1c4
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d03
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x133
	.byte	0x1e
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x133
	.byte	0x35
	.4byte	0xb48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF59
	.2byte	0x133
	.byte	0x41
	.4byte	0x121
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0x6
	.string	"msg"
	.2byte	0x135
	.byte	0x12
	.4byte	0xa66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"err"
	.2byte	0x136
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF302
	.2byte	0x10d
	.4byte	0x1c4
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d7b
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x10d
	.byte	0x21
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x10d
	.byte	0x32
	.4byte	0xc30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF59
	.2byte	0x10d
	.byte	0x3f
	.4byte	0xc35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.4byte	.LASF185
	.2byte	0x10d
	.byte	0x4a
	.4byte	0x109
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0x6
	.string	"msg"
	.2byte	0x10f
	.byte	0x12
	.4byte	0xa66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"err"
	.2byte	0x110
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF303
	.byte	0xe9
	.4byte	0x1c4
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1db0
	.uleb128 0x19
	.4byte	.LASF161
	.byte	0xe9
	.byte	0x20
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"err"
	.byte	0xeb
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF304
	.byte	0xc0
	.4byte	0x1c4
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1df4
	.uleb128 0x19
	.4byte	.LASF161
	.byte	0xc0
	.byte	0x28
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x15
	.string	"err"
	.byte	0xc2
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.string	"msg"
	.byte	0xc3
	.byte	0x12
	.4byte	0xa66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF305
	.byte	0x95
	.4byte	0x404
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e6d
	.uleb128 0x24
	.string	"t"
	.byte	0x95
	.byte	0x37
	.4byte	0x332
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x19
	.4byte	.LASF183
	.byte	0x95
	.byte	0x3f
	.4byte	0x109
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x95
	.byte	0x57
	.4byte	0x3de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.4byte	.LASF161
	.byte	0x1
	.byte	0x97
	.byte	0x13
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"msg"
	.byte	0x98
	.byte	0x12
	.4byte	0xa66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x15
	.string	"err"
	.byte	0x9d
	.byte	0xb
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF311
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.4byte	0x1c4
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.string	"fn"
	.byte	0x76
	.byte	0x22
	.4byte	0xbac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.4byte	.LASF306
	.byte	0x76
	.byte	0x36
	.4byte	0xa9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"err"
	.byte	0x78
	.byte	0x9
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 27
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 27
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 27
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	0x10c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"ERR_RTE"
.LASF17:
	.string	"int8_t"
.LASF252:
	.string	"sys_now"
.LASF14:
	.string	"_ssize_t"
.LASF12:
	.string	"size_t"
.LASF238:
	.string	"memp_malloc"
.LASF114:
	.string	"rcv_ann_wnd"
.LASF84:
	.string	"netconn_igmp"
.LASF165:
	.string	"MEMP_TCP_PCB"
.LASF263:
	.string	"netconn_join_leave_group_netif"
.LASF183:
	.string	"proto"
.LASF19:
	.string	"int32_t"
.LASF251:
	.string	"sys_arch_protect"
.LASF245:
	.string	"lwip_netconn_do_connect"
.LASF268:
	.string	"netconn_err"
.LASF113:
	.string	"rcv_wnd"
.LASF104:
	.string	"so_options"
.LASF150:
	.string	"persist_probe"
.LASF174:
	.string	"MEMP_SYS_TIMEOUT"
.LASF168:
	.string	"MEMP_ALTCP_PCB"
.LASF298:
	.string	"netconn_disconnect"
.LASF201:
	.string	"LISTEN"
.LASF90:
	.string	"state"
.LASF292:
	.string	"netconn_accept"
.LASF28:
	.string	"s32_t"
.LASF123:
	.string	"ssthresh"
.LASF89:
	.string	"type"
.LASF185:
	.string	"local"
.LASF259:
	.string	"netconn_alloc"
.LASF210:
	.string	"TIME_WAIT"
.LASF161:
	.string	"conn"
.LASF91:
	.string	"pending_err"
.LASF199:
	.string	"tcp_state"
.LASF65:
	.string	"NETCONN_INVALID"
.LASF16:
	.string	"ssize_t"
.LASF106:
	.string	"prio"
.LASF109:
	.string	"polltmr"
.LASF88:
	.string	"netconn"
.LASF184:
	.string	"ipaddr"
.LASF92:
	.string	"op_completed"
.LASF221:
	.string	"chksum"
.LASF260:
	.string	"tcpip_send_msg_wait_sem"
.LASF83:
	.string	"NETCONN_EVT_ERROR"
.LASF6:
	.string	"long int"
.LASF309:
	.string	"QueueDefinition"
.LASF74:
	.string	"NETCONN_WRITE"
.LASF63:
	.string	"sys_sem_t"
.LASF54:
	.string	"ip4_addr"
.LASF34:
	.string	"ERR_INPROGRESS"
.LASF289:
	.string	"netconn_tcp_recvd"
.LASF236:
	.string	"lwip_netconn_do_send"
.LASF78:
	.string	"netconn_evt"
.LASF35:
	.string	"ERR_VAL"
.LASF180:
	.string	"raw_recv_fn"
.LASF301:
	.string	"netconn_bind"
.LASF213:
	.string	"tcp_sent_fn"
.LASF196:
	.string	"dns_api_msg"
.LASF305:
	.string	"netconn_new_with_proto_and_callback"
.LASF297:
	.string	"backlog"
.LASF177:
	.string	"MEMP_PBUF_POOL"
.LASF61:
	.string	"QueueHandle_t"
.LASF2:
	.string	"signed char"
.LASF20:
	.string	"uint8_t"
.LASF103:
	.string	"netif_idx"
.LASF151:
	.string	"keep_cnt_sent"
.LASF284:
	.string	"netconn_recv_udp_raw_netbuf"
.LASF112:
	.string	"rcv_nxt"
.LASF101:
	.string	"local_ip"
.LASF3:
	.string	"unsigned char"
.LASF287:
	.string	"netconn_close_shutdown"
.LASF217:
	.string	"tcp_pcb_listen"
.LASF169:
	.string	"MEMP_NETBUF"
.LASF282:
	.string	"new_buf"
.LASF205:
	.string	"FIN_WAIT_1"
.LASF206:
	.string	"FIN_WAIT_2"
.LASF162:
	.string	"netvector"
.LASF66:
	.string	"NETCONN_TCP"
.LASF246:
	.string	"lwip_netconn_do_bind_if"
.LASF202:
	.string	"SYN_SENT"
.LASF232:
	.string	"lwip_netconn_do_join_leave_group"
.LASF15:
	.string	"char"
.LASF223:
	.string	"tcphdr"
.LASF53:
	.string	"pbuf"
.LASF62:
	.string	"SemaphoreHandle_t"
.LASF303:
	.string	"netconn_delete"
.LASF152:
	.string	"udp_pcb"
.LASF107:
	.string	"local_port"
.LASF285:
	.string	"netconn_recv_tcp_pbuf_flags"
.LASF71:
	.string	"netconn_type"
.LASF299:
	.string	"netconn_connect"
.LASF51:
	.string	"flags"
.LASF105:
	.string	"tcp_pcb"
.LASF58:
	.string	"netbuf"
.LASF209:
	.string	"LAST_ACK"
.LASF117:
	.string	"rttest"
.LASF187:
	.string	"vector_cnt"
.LASF239:
	.string	"lwip_netconn_do_recv"
.LASF192:
	.string	"shut"
.LASF69:
	.string	"NETCONN_UDPNOCHKSUM"
.LASF160:
	.string	"api_msg"
.LASF128:
	.string	"snd_lbb"
.LASF38:
	.string	"ERR_ALREADY"
.LASF148:
	.string	"persist_cnt"
.LASF170:
	.string	"MEMP_NETCONN"
.LASF207:
	.string	"CLOSE_WAIT"
.LASF188:
	.string	"vector_off"
.LASF115:
	.string	"rcv_ann_right_edge"
.LASF118:
	.string	"rtseq"
.LASF219:
	.string	"tcpflags_t"
.LASF11:
	.string	"sys_prot_t"
.LASF111:
	.string	"last_timer"
.LASF147:
	.string	"keep_cnt"
.LASF40:
	.string	"ERR_CONN"
.LASF247:
	.string	"lwip_netconn_do_bind"
.LASF163:
	.string	"MEMP_RAW_PCB"
.LASF293:
	.string	"new_conn"
.LASF77:
	.string	"NETCONN_CLOSE"
.LASF227:
	.string	"ackno"
.LASF98:
	.string	"current_msg"
.LASF264:
	.string	"netconn_join_leave_group"
.LASF7:
	.string	"long unsigned int"
.LASF50:
	.string	"type_internal"
.LASF81:
	.string	"NETCONN_EVT_SENDPLUS"
.LASF153:
	.string	"mcast_ip4"
.LASF214:
	.string	"tcp_poll_fn"
.LASF94:
	.string	"acceptmbox"
.LASF248:
	.string	"lwip_netconn_do_getaddr"
.LASF99:
	.string	"callback"
.LASF48:
	.string	"payload"
.LASF119:
	.string	"nrtx"
.LASF257:
	.string	"sys_mbox_valid"
.LASF121:
	.string	"lastack"
.LASF277:
	.string	"netconn_write_partly"
.LASF125:
	.string	"snd_nxt"
.LASF274:
	.string	"dontblock"
.LASF64:
	.string	"sys_mbox_t"
.LASF67:
	.string	"NETCONN_UDP"
.LASF158:
	.string	"protocol"
.LASF140:
	.string	"sent"
.LASF8:
	.string	"long long int"
.LASF100:
	.string	"ip_pcb"
.LASF134:
	.string	"bytes_acked"
.LASF30:
	.string	"ERR_MEM"
.LASF273:
	.string	"bytes_written"
.LASF45:
	.string	"ERR_ARG"
.LASF56:
	.string	"ip4_addr_t"
.LASF226:
	.string	"seqno"
.LASF110:
	.string	"pollinterval"
.LASF72:
	.string	"netconn_state"
.LASF55:
	.string	"addr"
.LASF244:
	.string	"lwip_netconn_do_disconnect"
.LASF41:
	.string	"ERR_IF"
.LASF10:
	.string	"unsigned int"
.LASF233:
	.string	"sys_arch_unprotect"
.LASF25:
	.string	"u16_t"
.LASF130:
	.string	"snd_wnd_max"
.LASF37:
	.string	"ERR_USE"
.LASF294:
	.string	"accept_ptr"
.LASF306:
	.string	"apimsg"
.LASF230:
	.string	"lwip_netconn_do_gethostbyname"
.LASF36:
	.string	"ERR_WOULDBLOCK"
.LASF124:
	.string	"rto_end"
.LASF32:
	.string	"ERR_TIMEOUT"
.LASF143:
	.string	"poll"
.LASF189:
	.string	"offset"
.LASF255:
	.string	"sys_sem_free"
.LASF304:
	.string	"netconn_prepare_delete"
.LASF116:
	.string	"rtime"
.LASF235:
	.string	"lwip_netconn_do_write"
.LASF182:
	.string	"tcpip_callback_fn"
.LASF203:
	.string	"SYN_RCVD"
.LASF224:
	.string	"tcp_hdr"
.LASF256:
	.string	"sys_sem_valid"
.LASF141:
	.string	"recv"
.LASF76:
	.string	"NETCONN_CONNECT"
.LASF49:
	.string	"tot_len"
.LASF254:
	.string	"sys_mbox_free"
.LASF290:
	.string	"netconn_tcp_recvd_msg"
.LASF307:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF57:
	.string	"ip_addr_t"
.LASF198:
	.string	"tcpwnd_size_t"
.LASF13:
	.string	"long double"
.LASF283:
	.string	"netconn_recv_udp_raw_netbuf_flags"
.LASF46:
	.string	"err_t"
.LASF179:
	.string	"memp_t"
.LASF181:
	.string	"udp_recv_fn"
.LASF295:
	.string	"newconn"
.LASF243:
	.string	"lwip_netconn_do_listen"
.LASF52:
	.string	"if_idx"
.LASF85:
	.string	"NETCONN_JOIN"
.LASF39:
	.string	"ERR_ISCONN"
.LASF275:
	.string	"size"
.LASF204:
	.string	"ESTABLISHED"
.LASF9:
	.string	"long long unsigned int"
.LASF164:
	.string	"MEMP_UDP_PCB"
.LASF108:
	.string	"remote_port"
.LASF167:
	.string	"MEMP_TCP_SEG"
.LASF21:
	.string	"uint16_t"
.LASF149:
	.string	"persist_backoff"
.LASF279:
	.string	"netconn_send"
.LASF296:
	.string	"netconn_listen_with_backlog"
.LASF172:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF302:
	.string	"netconn_getaddr"
.LASF122:
	.string	"cwnd"
.LASF138:
	.string	"refused_data"
.LASF195:
	.string	"join_or_leave"
.LASF82:
	.string	"NETCONN_EVT_SENDMINUS"
.LASF132:
	.string	"snd_queuelen"
.LASF308:
	.string	"ip_addr_any"
.LASF253:
	.string	"memp_free"
.LASF186:
	.string	"vector"
.LASF156:
	.string	"recv_arg"
.LASF175:
	.string	"MEMP_NETDB"
.LASF80:
	.string	"NETCONN_EVT_RCVMINUS"
.LASF135:
	.string	"unsent"
.LASF86:
	.string	"NETCONN_LEAVE"
.LASF133:
	.string	"unsent_oversize"
.LASF291:
	.string	"netconn_recv_data"
.LASF29:
	.string	"ERR_OK"
.LASF154:
	.string	"mcast_ifindex"
.LASF225:
	.string	"dest"
.LASF178:
	.string	"MEMP_MAX"
.LASF310:
	.string	"handle_fin"
.LASF102:
	.string	"remote_ip"
.LASF216:
	.string	"tcp_connected_fn"
.LASF269:
	.string	"netconn_close"
.LASF27:
	.string	"u32_t"
.LASF250:
	.string	"lwip_netconn_do_delconn"
.LASF97:
	.string	"recv_timeout"
.LASF70:
	.string	"NETCONN_RAW"
.LASF228:
	.string	"_hdrlen_rsvd_flags"
.LASF197:
	.string	"name"
.LASF311:
	.string	"netconn_apimsg"
.LASF139:
	.string	"listener"
.LASF59:
	.string	"port"
.LASF176:
	.string	"MEMP_PBUF"
.LASF237:
	.string	"sys_sem_new"
.LASF262:
	.string	"netconn_gethostbyname"
.LASF31:
	.string	"ERR_BUF"
.LASF145:
	.string	"keep_idle"
.LASF155:
	.string	"mcast_ttl"
.LASF4:
	.string	"short int"
.LASF75:
	.string	"NETCONN_LISTEN"
.LASF68:
	.string	"NETCONN_UDPLITE"
.LASF231:
	.string	"lwip_netconn_do_join_leave_group_netif"
.LASF136:
	.string	"unacked"
.LASF18:
	.string	"int16_t"
.LASF95:
	.string	"callback_arg"
.LASF171:
	.string	"MEMP_TCPIP_MSG_API"
.LASF281:
	.string	"netconn_recv"
.LASF300:
	.string	"netconn_bind_if"
.LASF144:
	.string	"errf"
.LASF265:
	.string	"netconn_shutdown"
.LASF190:
	.string	"apiflags"
.LASF218:
	.string	"accept"
.LASF234:
	.string	"lwip_netconn_do_close"
.LASF215:
	.string	"tcp_err_fn"
.LASF212:
	.string	"tcp_recv_fn"
.LASF73:
	.string	"NETCONN_NONE"
.LASF126:
	.string	"snd_wl1"
.LASF127:
	.string	"snd_wl2"
.LASF249:
	.string	"netconn_free"
.LASF200:
	.string	"CLOSED"
.LASF159:
	.string	"socket"
.LASF272:
	.string	"vectorcnt"
.LASF120:
	.string	"dupacks"
.LASF241:
	.string	"sys_arch_mbox_fetch"
.LASF26:
	.string	"s16_t"
.LASF271:
	.string	"vectors"
.LASF146:
	.string	"keep_intvl"
.LASF261:
	.string	"cberr"
.LASF157:
	.string	"raw_pcb"
.LASF173:
	.string	"MEMP_IGMP_GROUP"
.LASF258:
	.string	"lwip_netconn_do_newconn"
.LASF266:
	.string	"shut_rx"
.LASF229:
	.string	"urgp"
.LASF22:
	.string	"uint32_t"
.LASF42:
	.string	"ERR_ABRT"
.LASF222:
	.string	"chksum_swapped"
.LASF87:
	.string	"netconn_callback"
.LASF278:
	.string	"dataptr"
.LASF240:
	.string	"lwip_netconn_is_err_msg"
.LASF191:
	.string	"time_started"
.LASF93:
	.string	"recvmbox"
.LASF79:
	.string	"NETCONN_EVT_RCVPLUS"
.LASF96:
	.string	"send_timeout"
.LASF286:
	.string	"netconn_recv_tcp_pbuf"
.LASF270:
	.string	"netconn_write_vectors_partly"
.LASF288:
	.string	"netconn_recv_data_tcp"
.LASF5:
	.string	"short unsigned int"
.LASF24:
	.string	"s8_t"
.LASF23:
	.string	"u8_t"
.LASF208:
	.string	"CLOSING"
.LASF193:
	.string	"multiaddr"
.LASF131:
	.string	"snd_buf"
.LASF44:
	.string	"ERR_CLSD"
.LASF129:
	.string	"snd_wnd"
.LASF267:
	.string	"shut_tx"
.LASF280:
	.string	"netconn_sendto"
.LASF211:
	.string	"tcp_accept_fn"
.LASF43:
	.string	"ERR_RST"
.LASF47:
	.string	"next"
.LASF220:
	.string	"tcp_seg"
.LASF142:
	.string	"connected"
.LASF166:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF276:
	.string	"limited"
.LASF60:
	.string	"toport_chksum"
.LASF137:
	.string	"ooseq"
.LASF194:
	.string	"netif_addr"
.LASF242:
	.string	"sys_arch_mbox_tryfetch"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/api_lib.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
