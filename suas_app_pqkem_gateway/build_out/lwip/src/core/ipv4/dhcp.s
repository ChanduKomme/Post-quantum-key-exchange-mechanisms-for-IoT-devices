	.file	"dhcp.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ipv4/dhcp.c"
	.section	.bss.dhcp_rx_options_val,"aw",@nobits
	.align	2
	.type	dhcp_rx_options_val, @object
	.size	dhcp_rx_options_val, 40
dhcp_rx_options_val:
	.zero	40
	.section	.bss.dhcp_rx_options_given,"aw",@nobits
	.align	2
	.type	dhcp_rx_options_given, @object
	.size	dhcp_rx_options_given, 10
dhcp_rx_options_given:
	.zero	10
	.section	.sdata.dhcp_discover_request_options,"aw"
	.align	2
	.type	dhcp_discover_request_options, @object
	.size	dhcp_discover_request_options, 4
dhcp_discover_request_options:
	.base64	"AQMcBg=="
	.section	.sbss.dhcp_pcb,"aw",@nobits
	.align	2
	.type	dhcp_pcb, @object
	.size	dhcp_pcb, 4
dhcp_pcb:
	.zero	4
	.section	.sbss.dhcp_pcb_refcount,"aw",@nobits
	.type	dhcp_pcb_refcount, @object
	.size	dhcp_pcb_refcount, 1
dhcp_pcb_refcount:
	.zero	1
	.section	.text.dhcp_inc_pcb_refcount,"ax",@progbits
	.align	1
	.type	dhcp_inc_pcb_refcount, @function
dhcp_inc_pcb_refcount:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ipv4/dhcp.c"
	.loc 1 274 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 275 25
	lui	a5,%hi(dhcp_pcb_refcount)
	lbu	a5,%lo(dhcp_pcb_refcount)(a5)
	.loc 1 275 6
	bne	a5,zero,.L2
	.loc 1 279 16
	call	udp_new
	mv	a4,a0
	.loc 1 279 14 discriminator 1
	lui	a5,%hi(dhcp_pcb)
	sw	a4,%lo(dhcp_pcb)(a5)
	.loc 1 281 18
	lui	a5,%hi(dhcp_pcb)
	lw	a5,%lo(dhcp_pcb)(a5)
	.loc 1 281 8
	bne	a5,zero,.L3
	.loc 1 282 14
	li	a5,-1
	j	.L4
.L3:
	.loc 1 285 48
	lui	a5,%hi(dhcp_pcb)
	lw	a5,%lo(dhcp_pcb)(a5)
	lbu	a4,9(a5)
	.loc 1 285 16
	lui	a5,%hi(dhcp_pcb)
	lw	a5,%lo(dhcp_pcb)(a5)
	.loc 1 285 31
	ori	a4,a4,32
	andi	a4,a4,0xff
	.loc 1 285 29
	sb	a4,9(a5)
	.loc 1 288 5
	lui	a5,%hi(dhcp_pcb)
	lw	a4,%lo(dhcp_pcb)(a5)
	li	a2,68
	lui	a5,%hi(ip_addr_any)
	addi	a1,a5,%lo(ip_addr_any)
	mv	a0,a4
	call	udp_bind
	.loc 1 289 5
	lui	a5,%hi(dhcp_pcb)
	lw	a4,%lo(dhcp_pcb)(a5)
	li	a2,67
	lui	a5,%hi(ip_addr_any)
	addi	a1,a5,%lo(ip_addr_any)
	mv	a0,a4
	call	udp_connect
	.loc 1 290 5
	lui	a5,%hi(dhcp_pcb)
	lw	a4,%lo(dhcp_pcb)(a5)
	li	a2,0
	lui	a5,%hi(dhcp_recv)
	addi	a1,a5,%lo(dhcp_recv)
	mv	a0,a4
	call	udp_recv
.L2:
	.loc 1 293 20
	lui	a5,%hi(dhcp_pcb_refcount)
	lbu	a5,%lo(dhcp_pcb_refcount)(a5)
	addi	a5,a5,1
	andi	a4,a5,0xff
	lui	a5,%hi(dhcp_pcb_refcount)
	sb	a4,%lo(dhcp_pcb_refcount)(a5)
	.loc 1 295 10
	li	a5,0
.L4:
	.loc 1 296 1
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
.LFE5:
	.size	dhcp_inc_pcb_refcount, .-dhcp_inc_pcb_refcount
	.section	.text.dhcp_dec_pcb_refcount,"ax",@progbits
	.align	1
	.type	dhcp_dec_pcb_refcount, @function
dhcp_dec_pcb_refcount:
.LFB6:
	.loc 1 301 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 303 20
	lui	a5,%hi(dhcp_pcb_refcount)
	lbu	a5,%lo(dhcp_pcb_refcount)(a5)
	addi	a5,a5,-1
	andi	a4,a5,0xff
	lui	a5,%hi(dhcp_pcb_refcount)
	sb	a4,%lo(dhcp_pcb_refcount)(a5)
	.loc 1 305 25
	lui	a5,%hi(dhcp_pcb_refcount)
	lbu	a5,%lo(dhcp_pcb_refcount)(a5)
	.loc 1 305 6
	bne	a5,zero,.L7
	.loc 1 306 5
	lui	a5,%hi(dhcp_pcb)
	lw	a5,%lo(dhcp_pcb)(a5)
	mv	a0,a5
	call	udp_remove
	.loc 1 307 14
	lui	a5,%hi(dhcp_pcb)
	sw	zero,%lo(dhcp_pcb)(a5)
.L7:
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
.LFE6:
	.size	dhcp_dec_pcb_refcount, .-dhcp_dec_pcb_refcount
	.section	.text.dhcp_handle_nak,"ax",@progbits
	.align	1
	.type	dhcp_handle_nak, @function
dhcp_handle_nak:
.LFB7:
	.loc 1 325 1
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
	.loc 1 326 16
	lw	a5,-36(s0)
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 332 3
	li	a1,12
	lw	a0,-20(s0)
	call	dhcp_set_state
	.loc 1 334 3
	lui	a5,%hi(ip_addr_any)
	addi	a3,a5,%lo(ip_addr_any)
	lui	a5,%hi(ip_addr_any)
	addi	a2,a5,%lo(ip_addr_any)
	lui	a5,%hi(ip_addr_any)
	addi	a1,a5,%lo(ip_addr_any)
	lw	a0,-36(s0)
	call	netif_set_addr
	.loc 1 336 3
	lw	a0,-36(s0)
	call	dhcp_discover
	.loc 1 337 1
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
.LFE7:
	.size	dhcp_handle_nak, .-dhcp_handle_nak
	.section	.text.dhcp_conflict_callback,"ax",@progbits
	.align	1
	.type	dhcp_conflict_callback, @function
dhcp_conflict_callback:
.LFB8:
	.loc 1 348 1
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
	.loc 1 349 16
	lw	a5,-36(s0)
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 355 3
	lbu	a5,-37(s0)
	li	a4,2
	beq	a5,a4,.L10
	li	a4,2
	bgt	a5,a4,.L15
	beq	a5,zero,.L12
	li	a4,1
	beq	a5,a4,.L13
	.loc 1 380 7
	j	.L15
.L12:
	.loc 1 357 7
	lw	a0,-36(s0)
	call	dhcp_bind
	.loc 1 358 7
	j	.L14
.L13:
	.loc 1 367 8
	li	a1,12
	lw	a0,-20(s0)
	call	dhcp_set_state
	.loc 1 368 14
	li	a5,8192
	addi	a5,a5,1808
	sh	a5,-22(s0)
	.loc 1 369 53
	lhu	a5,-22(s0)
	addi	a5,a5,499
	.loc 1 369 58
	li	a4,274878464
	addi	a4,a4,-557
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 369 32
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 369 30
	lw	a5,-20(s0)
	sh	a4,8(a5)
	.loc 1 371 7
	j	.L14
.L10:
	.loc 1 375 7
	lui	a5,%hi(ip_addr_any)
	addi	a3,a5,%lo(ip_addr_any)
	lui	a5,%hi(ip_addr_any)
	addi	a2,a5,%lo(ip_addr_any)
	lui	a5,%hi(ip_addr_any)
	addi	a1,a5,%lo(ip_addr_any)
	lw	a0,-36(s0)
	call	netif_set_addr
	.loc 1 377 7
	lw	a0,-36(s0)
	call	dhcp_decline
	.loc 1 378 7
	j	.L14
.L15:
	.loc 1 380 7
	nop
.L14:
	.loc 1 382 1
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
	.size	dhcp_conflict_callback, .-dhcp_conflict_callback
	.section	.text.dhcp_check,"ax",@progbits
	.align	1
	.type	dhcp_check, @function
dhcp_check:
.LFB9:
	.loc 1 394 1
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
	.loc 1 395 16
	lw	a5,-36(s0)
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 399 3
	li	a1,8
	lw	a0,-20(s0)
	call	dhcp_set_state
	.loc 1 402 3
	lw	a5,-20(s0)
	addi	a4,a5,52
	lw	a5,-20(s0)
	lw	a2,28(a5)
	mv	a1,a4
	lw	a0,-36(s0)
	call	acd_start
	.loc 1 403 1
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
	.size	dhcp_check, .-dhcp_check
	.section	.text.dhcp_handle_offer,"ax",@progbits
	.align	1
	.type	dhcp_handle_offer, @function
dhcp_handle_offer:
.LFB10:
	.loc 1 413 1
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
	.loc 1 414 16
	lw	a5,-36(s0)
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 419 29
	lui	a5,%hi(dhcp_rx_options_given)
	addi	a5,a5,%lo(dhcp_rx_options_given)
	lbu	a5,2(a5)
	.loc 1 419 6
	beq	a5,zero,.L19
	.loc 1 420 27
	lw	a5,-20(s0)
	sh	zero,8(a5)
	.loc 1 422 41
	lui	a5,%hi(dhcp_rx_options_val)
	addi	a5,a5,%lo(dhcp_rx_options_val)
	lw	a5,8(a5)
	mv	a0,a5
	call	lwip_htonl
	mv	a4,a0
	.loc 1 422 38 discriminator 1
	lw	a5,-20(s0)
	sw	a4,24(a5)
	.loc 1 426 53
	lw	a5,-40(s0)
	lbu	a4,16(a5)
	lbu	a3,17(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,18(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,19(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 426 35
	lw	a5,-20(s0)
	sw	a4,28(a5)
	.loc 1 430 5
	lw	a0,-36(s0)
	call	dhcp_select
.L19:
	.loc 1 435 1
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
	.size	dhcp_handle_offer, .-dhcp_handle_offer
	.section	.text.dhcp_select,"ax",@progbits
	.align	1
	.type	dhcp_select, @function
dhcp_select:
.LFB11:
	.loc 1 447 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	.loc 1 455 11
	lw	a5,-52(s0)
	bne	a5,zero,.L21
	.loc 1 455 17 discriminator 1
	li	a5,-16
	.loc 1 455 17 is_stmt 0
	j	.L31
.L21:
	.loc 1 456 8 is_stmt 1
	lw	a5,-52(s0)
	lw	a5,40(a5)
	sw	a5,-28(s0)
	.loc 1 457 11
	lw	a5,-28(s0)
	bne	a5,zero,.L23
	.loc 1 457 17 discriminator 1
	li	a5,-6
	.loc 1 457 17 is_stmt 0
	j	.L31
.L23:
	.loc 1 460 3 is_stmt 1
	li	a1,1
	lw	a0,-28(s0)
	call	dhcp_set_state
	.loc 1 463 11
	addi	a5,s0,-38
	mv	a3,a5
	li	a2,3
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	dhcp_create_msg
	sw	a0,-32(s0)
	.loc 1 464 6
	lw	a5,-32(s0)
	beq	a5,zero,.L24
.LBB2:
	.loc 1 465 22
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	.loc 1 466 23
	lhu	a4,-38(s0)
	.loc 1 466 59
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 466 23
	li	a3,2
	li	a2,57
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option
	mv	a5,a0
	.loc 1 466 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 467 23
	lhu	a4,-38(s0)
	.loc 1 467 65
	lw	a5,-36(s0)
	addi	a3,a5,240
	.loc 1 467 23
	lw	a5,-52(s0)
	lhu	a5,60(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	dhcp_option_short
	mv	a5,a0
	.loc 1 467 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 470 23
	lhu	a4,-38(s0)
	.loc 1 470 59
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 470 23
	li	a3,4
	li	a2,50
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option
	mv	a5,a0
	.loc 1 470 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 471 23
	lhu	s1,-38(s0)
	.loc 1 471 64
	lw	a5,-36(s0)
	addi	s2,a5,240
	.loc 1 471 23
	lw	a5,-28(s0)
	lw	a5,28(a5)
	mv	a0,a5
	call	lwip_htonl
	mv	a5,a0
	.loc 1 471 23 is_stmt 0 discriminator 1
	mv	a2,a5
	mv	a1,s2
	mv	a0,s1
	call	dhcp_option_long
	mv	a5,a0
	.loc 1 471 21 is_stmt 1 discriminator 2
	sh	a5,-38(s0)
	.loc 1 473 23
	lhu	a4,-38(s0)
	.loc 1 473 59
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 473 23
	li	a3,4
	li	a2,54
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option
	mv	a5,a0
	.loc 1 473 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 474 23
	lhu	s1,-38(s0)
	.loc 1 474 64
	lw	a5,-36(s0)
	addi	s2,a5,240
	.loc 1 474 23
	lw	a5,-28(s0)
	lw	a5,24(a5)
	mv	a0,a5
	call	lwip_htonl
	mv	a5,a0
	.loc 1 474 23 is_stmt 0 discriminator 1
	mv	a2,a5
	mv	a1,s2
	mv	a0,s1
	call	dhcp_option_long
	mv	a5,a0
	.loc 1 474 21 is_stmt 1 discriminator 2
	sh	a5,-38(s0)
	.loc 1 476 23
	lhu	a4,-38(s0)
	.loc 1 476 59
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 476 23
	li	a3,4
	li	a2,55
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option
	mv	a5,a0
	.loc 1 476 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 477 12
	sb	zero,-21(s0)
	.loc 1 477 5
	j	.L25
.L26:
	.loc 1 478 25
	lhu	a3,-38(s0)
	.loc 1 478 66
	lw	a5,-36(s0)
	addi	a1,a5,240
	.loc 1 478 25
	lbu	a4,-21(s0)
	lui	a5,%hi(dhcp_discover_request_options)
	addi	a5,a5,%lo(dhcp_discover_request_options)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a2,a5
	mv	a0,a3
	call	dhcp_option_byte
	mv	a5,a0
	.loc 1 478 23 discriminator 1
	sh	a5,-38(s0)
	.loc 1 477 106 discriminator 3
	lbu	a5,-21(s0)
	addi	a5,a5,1
	sb	a5,-21(s0)
.L25:
	.loc 1 477 19 discriminator 1
	lbu	a4,-21(s0)
	li	a5,3
	bleu	a4,a5,.L26
	.loc 1 482 23
	lhu	a4,-38(s0)
	.loc 1 482 68
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 482 23
	lw	a2,-52(s0)
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option_hostname
	mv	a5,a0
	.loc 1 482 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 486 5
	lhu	a4,-38(s0)
	.loc 1 486 49
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 486 5
	lw	a2,-32(s0)
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option_trailer
	.loc 1 489 14
	lui	a5,%hi(dhcp_pcb)
	lw	a0,%lo(dhcp_pcb)(a5)
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
	lw	a4,-52(s0)
	li	a3,67
	lui	a2,%hi(ip_addr_broadcast)
	addi	a2,a2,%lo(ip_addr_broadcast)
	lw	a1,-32(s0)
	call	udp_sendto_if_src
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 490 5
	lw	a0,-32(s0)
	call	pbuf_free
.LBE2:
	j	.L27
.L24:
	.loc 1 494 12
	li	a5,-1
	sb	a5,-17(s0)
.L27:
	.loc 1 496 11
	lw	a5,-28(s0)
	lbu	a4,6(a5)
	.loc 1 496 6
	li	a5,255
	beq	a4,a5,.L28
	.loc 1 497 9
	lw	a5,-28(s0)
	lbu	a5,6(a5)
	.loc 1 497 16
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-28(s0)
	sb	a4,6(a5)
.L28:
	.loc 1 499 24
	lw	a5,-28(s0)
	lbu	a4,6(a5)
	.loc 1 499 11
	li	a5,5
	bgtu	a4,a5,.L29
	.loc 1 499 47 discriminator 1
	lw	a5,-28(s0)
	lbu	a5,6(a5)
	mv	a4,a5
	.loc 1 499 40 discriminator 1
	li	a5,1
	sll	a5,a5,a4
	.loc 1 499 11 discriminator 1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 499 9 discriminator 1
	li	a5,1000
	mul	a5,a4,a5
	sh	a5,-20(s0)
	j	.L30
.L29:
	.loc 1 499 9 is_stmt 0 discriminator 2
	li	a5,-4096
	addi	a5,a5,-1440
	sh	a5,-20(s0)
.L30:
	.loc 1 500 48 is_stmt 1
	lhu	a5,-20(s0)
	addi	a5,a5,499
	.loc 1 500 53
	li	a4,274878464
	addi	a4,a4,-557
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 500 27
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 500 25
	lw	a5,-28(s0)
	sh	a4,8(a5)
	.loc 1 502 10
	lb	a5,-17(s0)
.L31:
	.loc 1 503 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	dhcp_select, .-dhcp_select
	.section	.text.dhcp_coarse_tmr,"ax",@progbits
	.align	1
	.globl	dhcp_coarse_tmr
	.type	dhcp_coarse_tmr, @function
dhcp_coarse_tmr:
.LFB12:
	.loc 1 511 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 515 16
	lui	a5,%hi(netif_list)
	lw	a5,%lo(netif_list)(a5)
	sw	a5,-20(s0)
	.loc 1 515 3
	j	.L33
.L37:
.LBB3:
	.loc 1 517 18
	lw	a5,-20(s0)
	lw	a5,40(a5)
	sw	a5,-24(s0)
	.loc 1 518 8
	lw	a5,-24(s0)
	beq	a5,zero,.L34
	.loc 1 518 31 discriminator 1
	lw	a5,-24(s0)
	lbu	a5,5(a5)
	.loc 1 518 23 discriminator 1
	beq	a5,zero,.L34
	.loc 1 520 15
	lw	a5,-24(s0)
	lhu	a5,20(a5)
	.loc 1 520 10
	beq	a5,zero,.L35
	.loc 1 520 38 discriminator 1
	lw	a5,-24(s0)
	lhu	a5,18(a5)
	.loc 1 520 32 discriminator 1
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 520 28 discriminator 1
	lw	a5,-24(s0)
	sh	a4,18(a5)
	.loc 1 520 38 discriminator 1
	lw	a5,-24(s0)
	lhu	a4,18(a5)
	.loc 1 520 58 discriminator 1
	lw	a5,-24(s0)
	lhu	a5,20(a5)
	.loc 1 520 28 discriminator 1
	bne	a4,a5,.L35
	.loc 1 523 9
	lw	a0,-20(s0)
	call	dhcp_release_and_stop
	.loc 1 524 9
	lw	a0,-20(s0)
	call	dhcp_start
	j	.L34
.L35:
	.loc 1 526 22
	lw	a5,-24(s0)
	lhu	a5,16(a5)
	.loc 1 526 17
	beq	a5,zero,.L36
	.loc 1 526 47 discriminator 1
	lw	a5,-24(s0)
	lhu	a5,16(a5)
	.loc 1 526 63 discriminator 1
	addi	a4,a5,-1
	slli	a3,a4,16
	srli	a3,a3,16
	lw	a4,-24(s0)
	sh	a3,16(a4)
	.loc 1 526 39 discriminator 1
	li	a4,1
	bne	a5,a4,.L36
	.loc 1 529 9
	lw	a0,-20(s0)
	call	dhcp_t2_timeout
	j	.L34
.L36:
	.loc 1 531 22
	lw	a5,-24(s0)
	lhu	a5,14(a5)
	.loc 1 531 17
	beq	a5,zero,.L34
	.loc 1 531 46 discriminator 1
	lw	a5,-24(s0)
	lhu	a5,14(a5)
	.loc 1 531 61 discriminator 1
	addi	a4,a5,-1
	slli	a3,a4,16
	srli	a3,a3,16
	lw	a4,-24(s0)
	sh	a3,14(a4)
	.loc 1 531 38 discriminator 1
	li	a4,1
	bne	a5,a4,.L34
	.loc 1 534 9
	lw	a0,-20(s0)
	call	dhcp_t1_timeout
.L34:
.LBE3:
	.loc 1 515 12 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L33:
	.loc 1 515 38 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L37
	.loc 1 538 1
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
.LFE12:
	.size	dhcp_coarse_tmr, .-dhcp_coarse_tmr
	.section	.text.dhcp_fine_tmr,"ax",@progbits
	.align	1
	.globl	dhcp_fine_tmr
	.type	dhcp_fine_tmr, @function
dhcp_fine_tmr:
.LFB13:
	.loc 1 549 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 552 16
	lui	a5,%hi(netif_list)
	lw	a5,%lo(netif_list)(a5)
	sw	a5,-20(s0)
	.loc 1 552 3
	j	.L39
.L42:
.LBB4:
	.loc 1 553 18
	lw	a5,-20(s0)
	lw	a5,40(a5)
	sw	a5,-24(s0)
	.loc 1 555 8
	lw	a5,-24(s0)
	beq	a5,zero,.L40
	.loc 1 557 15
	lw	a5,-24(s0)
	lhu	a4,8(a5)
	.loc 1 557 10
	li	a5,1
	bleu	a4,a5,.L41
	.loc 1 558 13
	lw	a5,-24(s0)
	lhu	a5,8(a5)
	.loc 1 558 30
	addi	a5,a5,-1
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-24(s0)
	sh	a4,8(a5)
	j	.L40
.L41:
	.loc 1 559 22
	lw	a5,-24(s0)
	lhu	a4,8(a5)
	.loc 1 559 17
	li	a5,1
	bne	a4,a5,.L40
	.loc 1 560 13
	lw	a5,-24(s0)
	lhu	a5,8(a5)
	.loc 1 560 30
	addi	a5,a5,-1
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-24(s0)
	sh	a4,8(a5)
	.loc 1 564 9
	lw	a0,-20(s0)
	call	dhcp_timeout
.L40:
.LBE4:
	.loc 1 552 12 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L39:
	.loc 1 552 38 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L42
	.loc 1 568 1
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
.LFE13:
	.size	dhcp_fine_tmr, .-dhcp_fine_tmr
	.section	.text.dhcp_timeout,"ax",@progbits
	.align	1
	.type	dhcp_timeout, @function
dhcp_timeout:
.LFB14:
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
	.loc 1 581 16
	lw	a5,-36(s0)
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 585 12
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	.loc 1 585 6
	li	a5,12
	beq	a4,a5,.L44
	.loc 1 585 55 discriminator 1
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	.loc 1 585 47 discriminator 1
	li	a5,6
	bne	a4,a5,.L45
.L44:
	.loc 1 587 5
	lw	a0,-36(s0)
	call	dhcp_discover
	.loc 1 605 1
	j	.L50
.L45:
	.loc 1 589 18
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	.loc 1 589 13
	li	a5,1
	bne	a4,a5,.L47
	.loc 1 591 13
	lw	a5,-20(s0)
	lbu	a4,6(a5)
	.loc 1 591 8
	li	a5,5
	bgtu	a4,a5,.L48
	.loc 1 592 7
	lw	a0,-36(s0)
	call	dhcp_select
	.loc 1 605 1
	j	.L50
.L48:
	.loc 1 595 7
	lw	a0,-36(s0)
	call	dhcp_release_and_stop
	.loc 1 596 7
	lw	a0,-36(s0)
	call	dhcp_start
	.loc 1 605 1
	j	.L50
.L47:
	.loc 1 598 18
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	.loc 1 598 13
	li	a5,3
	bne	a4,a5,.L50
	.loc 1 599 13
	lw	a5,-20(s0)
	lbu	a4,6(a5)
	.loc 1 599 8
	li	a5,1
	bgtu	a4,a5,.L49
	.loc 1 600 7
	lw	a0,-36(s0)
	call	dhcp_reboot
	.loc 1 605 1
	j	.L50
.L49:
	.loc 1 602 7
	lw	a0,-36(s0)
	call	dhcp_discover
.L50:
	.loc 1 605 1
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
	.size	dhcp_timeout, .-dhcp_timeout
	.section	.text.dhcp_t1_timeout,"ax",@progbits
	.align	1
	.type	dhcp_t1_timeout, @function
dhcp_t1_timeout:
.LFB15:
	.loc 1 614 1
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
	.loc 1 615 16
	lw	a5,-36(s0)
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 618 12
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	.loc 1 618 6
	li	a5,1
	beq	a4,a5,.L52
	.loc 1 618 54 discriminator 1
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	.loc 1 618 46 discriminator 1
	li	a5,10
	beq	a4,a5,.L52
	.loc 1 619 12
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	.loc 1 618 83 discriminator 2
	li	a5,5
	bne	a4,a5,.L54
.L52:
	.loc 1 626 5
	lw	a0,-36(s0)
	call	dhcp_renew
	.loc 1 628 15
	lw	a5,-20(s0)
	lhu	a5,12(a5)
	mv	a4,a5
	.loc 1 628 34
	lw	a5,-20(s0)
	lhu	a5,18(a5)
	.loc 1 628 28
	sub	a4,a4,a5
	.loc 1 628 8
	li	a5,1
	ble	a4,a5,.L54
	.loc 1 629 51
	lw	a5,-20(s0)
	lhu	a5,12(a5)
	mv	a4,a5
	.loc 1 629 70
	lw	a5,-20(s0)
	lhu	a5,18(a5)
	.loc 1 629 64
	sub	a5,a4,a5
	.loc 1 629 84
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	.loc 1 629 29
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 629 27
	lw	a5,-20(s0)
	sh	a4,14(a5)
.L54:
	.loc 1 632 1
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
.LFE15:
	.size	dhcp_t1_timeout, .-dhcp_t1_timeout
	.section	.text.dhcp_t2_timeout,"ax",@progbits
	.align	1
	.type	dhcp_t2_timeout, @function
dhcp_t2_timeout:
.LFB16:
	.loc 1 641 1
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
	.loc 1 642 16
	lw	a5,-36(s0)
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 645 12
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	.loc 1 645 6
	li	a5,1
	beq	a4,a5,.L56
	.loc 1 645 54 discriminator 1
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	.loc 1 645 46 discriminator 1
	li	a5,10
	beq	a4,a5,.L56
	.loc 1 646 12
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	.loc 1 645 83 discriminator 2
	li	a5,5
	beq	a4,a5,.L56
	.loc 1 646 52
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	.loc 1 646 44
	li	a5,4
	bne	a4,a5,.L58
.L56:
	.loc 1 652 5
	lw	a0,-36(s0)
	call	dhcp_rebind
	.loc 1 654 15
	lw	a5,-20(s0)
	lhu	a5,20(a5)
	mv	a4,a5
	.loc 1 654 34
	lw	a5,-20(s0)
	lhu	a5,18(a5)
	.loc 1 654 28
	sub	a4,a4,a5
	.loc 1 654 8
	li	a5,1
	ble	a4,a5,.L58
	.loc 1 655 52
	lw	a5,-20(s0)
	lhu	a5,20(a5)
	mv	a4,a5
	.loc 1 655 71
	lw	a5,-20(s0)
	lhu	a5,18(a5)
	.loc 1 655 65
	sub	a5,a4,a5
	.loc 1 655 85
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	.loc 1 655 30
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 655 28
	lw	a5,-20(s0)
	sh	a4,16(a5)
.L58:
	.loc 1 658 1
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
	.size	dhcp_t2_timeout, .-dhcp_t2_timeout
	.section	.text.dhcp_handle_ack,"ax",@progbits
	.align	1
	.type	dhcp_handle_ack, @function
dhcp_handle_ack:
.LFB17:
	.loc 1 667 1
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
	.loc 1 668 16
	lw	a5,-36(s0)
	lw	a5,40(a5)
	sw	a5,-24(s0)
	.loc 1 678 35
	lw	a5,-24(s0)
	sw	zero,32(a5)
	.loc 1 679 35
	lw	a5,-24(s0)
	sw	zero,36(a5)
	.loc 1 685 29
	lui	a5,%hi(dhcp_rx_options_given)
	addi	a5,a5,%lo(dhcp_rx_options_given)
	lbu	a5,3(a5)
	.loc 1 685 6
	beq	a5,zero,.L60
	.loc 1 687 50
	lui	a5,%hi(dhcp_rx_options_val)
	addi	a5,a5,%lo(dhcp_rx_options_val)
	lw	a4,12(a5)
	.loc 1 687 28
	lw	a5,-24(s0)
	sw	a4,40(a5)
.L60:
	.loc 1 690 29
	lui	a5,%hi(dhcp_rx_options_given)
	addi	a5,a5,%lo(dhcp_rx_options_given)
	lbu	a5,4(a5)
	.loc 1 690 6
	beq	a5,zero,.L61
	.loc 1 692 50
	lui	a5,%hi(dhcp_rx_options_val)
	addi	a5,a5,%lo(dhcp_rx_options_val)
	lw	a4,16(a5)
	.loc 1 692 28
	lw	a5,-24(s0)
	sw	a4,44(a5)
	j	.L62
.L61:
	.loc 1 695 34
	lw	a5,-24(s0)
	lw	a5,40(a5)
	.loc 1 695 53
	srli	a4,a5,1
	.loc 1 695 28
	lw	a5,-24(s0)
	sw	a4,44(a5)
.L62:
	.loc 1 699 29
	lui	a5,%hi(dhcp_rx_options_given)
	addi	a5,a5,%lo(dhcp_rx_options_given)
	lbu	a5,5(a5)
	.loc 1 699 6
	beq	a5,zero,.L63
	.loc 1 701 51
	lui	a5,%hi(dhcp_rx_options_val)
	addi	a5,a5,%lo(dhcp_rx_options_val)
	lw	a4,20(a5)
	.loc 1 701 29
	lw	a5,-24(s0)
	sw	a4,48(a5)
	j	.L64
.L63:
	.loc 1 704 36
	lw	a5,-24(s0)
	lw	a4,40(a5)
	.loc 1 704 55
	mv	a5,a4
	slli	a5,a5,3
	sub	a5,a5,a4
	.loc 1 704 61
	srli	a4,a5,3
	.loc 1 704 29
	lw	a5,-24(s0)
	sw	a4,48(a5)
.L64:
	.loc 1 708 51
	lw	a5,-40(s0)
	lbu	a4,16(a5)
	lbu	a3,17(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,18(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,19(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 708 33
	lw	a5,-24(s0)
	sw	a4,28(a5)
	.loc 1 717 29
	lui	a5,%hi(dhcp_rx_options_given)
	addi	a5,a5,%lo(dhcp_rx_options_given)
	lbu	a5,6(a5)
	.loc 1 717 6
	beq	a5,zero,.L65
	.loc 1 719 40
	lui	a5,%hi(dhcp_rx_options_val)
	addi	a5,a5,%lo(dhcp_rx_options_val)
	lw	a5,24(a5)
	mv	a0,a5
	call	lwip_htonl
	mv	a4,a0
	.loc 1 719 37 discriminator 1
	lw	a5,-24(s0)
	sw	a4,32(a5)
	.loc 1 720 9
	lw	a5,-24(s0)
	lbu	a5,7(a5)
	.loc 1 720 17
	ori	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,7(a5)
	j	.L66
.L65:
	.loc 1 722 9
	lw	a5,-24(s0)
	lbu	a5,7(a5)
	.loc 1 722 17
	andi	a5,a5,-2
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,7(a5)
.L66:
	.loc 1 726 29
	lui	a5,%hi(dhcp_rx_options_given)
	addi	a5,a5,%lo(dhcp_rx_options_given)
	lbu	a5,7(a5)
	.loc 1 726 6
	beq	a5,zero,.L67
	.loc 1 727 40
	lui	a5,%hi(dhcp_rx_options_val)
	addi	a5,a5,%lo(dhcp_rx_options_val)
	lw	a5,28(a5)
	mv	a0,a5
	call	lwip_htonl
	mv	a4,a0
	.loc 1 727 37 discriminator 1
	lw	a5,-24(s0)
	sw	a4,36(a5)
.L67:
	.loc 1 740 10
	sb	zero,-17(s0)
	.loc 1 740 3
	j	.L68
.L70:
.LBB5:
	.loc 1 742 90
	lbu	a5,-17(s0)
	addi	a5,a5,8
	.loc 1 742 31
	lui	a4,%hi(dhcp_rx_options_val)
	addi	a4,a4,%lo(dhcp_rx_options_val)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	call	lwip_htonl
	mv	a5,a0
	.loc 1 742 28 discriminator 1
	sw	a5,-28(s0)
	.loc 1 743 5
	addi	a4,s0,-28
	lbu	a5,-17(s0)
	mv	a1,a4
	mv	a0,a5
	call	dns_setserver
.LBE5:
	.loc 1 740 89 discriminator 4
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L68:
	.loc 1 740 23 discriminator 1
	lbu	a4,-17(s0)
	li	a5,1
	bgtu	a4,a5,.L71
	.loc 1 740 76 discriminator 3
	lbu	a5,-17(s0)
	addi	a5,a5,8
	.loc 1 740 48 discriminator 3
	lui	a4,%hi(dhcp_rx_options_given)
	addi	a4,a4,%lo(dhcp_rx_options_given)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 740 23 discriminator 3
	bne	a5,zero,.L70
.L71:
	.loc 1 746 1
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
	.size	dhcp_handle_ack, .-dhcp_handle_ack
	.section	.text.dhcp_set_struct,"ax",@progbits
	.align	1
	.globl	dhcp_set_struct
	.type	dhcp_set_struct, @function
dhcp_set_struct:
.LFB18:
	.loc 1 758 1
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
	.loc 1 765 3
	li	a2,72
	li	a1,0
	lw	a0,-24(s0)
	call	memset
	.loc 1 767 7
	lw	a5,-24(s0)
	lbu	a5,7(a5)
	.loc 1 767 15
	ori	a5,a5,2
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,7(a5)
	.loc 1 769 61
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,40(a5)
	.loc 1 770 1
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
	.size	dhcp_set_struct, .-dhcp_set_struct
	.section	.text.dhcp_cleanup,"ax",@progbits
	.align	1
	.globl	dhcp_cleanup
	.type	dhcp_cleanup, @function
dhcp_cleanup:
.LFB19:
	.loc 1 782 1
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
	.loc 1 787 8
	lw	a5,-36(s0)
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 788 6
	lw	a5,-20(s0)
	beq	a5,zero,.L76
	.loc 1 789 15
	lw	a5,-20(s0)
	lbu	a5,7(a5)
	.loc 1 789 23
	andi	a5,a5,2
	.loc 1 789 8
	bne	a5,zero,.L75
	.loc 1 790 7
	lw	a0,-20(s0)
	call	mem_free
.L75:
	.loc 1 792 63
	lw	a5,-36(s0)
	sw	zero,40(a5)
.L76:
	.loc 1 794 1
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
.LFE19:
	.size	dhcp_cleanup, .-dhcp_cleanup
	.section	.text.dhcp_start,"ax",@progbits
	.align	1
	.globl	dhcp_start
	.type	dhcp_start, @function
dhcp_start:
.LFB20:
	.loc 1 811 1
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
	.loc 1 816 11
	lw	a5,-36(s0)
	bne	a5,zero,.L78
	.loc 1 816 17 discriminator 1
	li	a5,-16
	.loc 1 816 17 is_stmt 0
	j	.L79
.L78:
	.loc 1 817 23 is_stmt 1
	lw	a5,-36(s0)
	lbu	a5,69(a5)
	.loc 1 817 31
	andi	a5,a5,1
	.loc 1 817 11
	bne	a5,zero,.L80
	.loc 1 817 74 discriminator 1
	li	a5,-16
	.loc 1 817 74 is_stmt 0
	j	.L79
.L80:
	.loc 1 818 8 is_stmt 1
	lw	a5,-36(s0)
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 822 12
	lw	a5,-36(s0)
	lhu	a4,60(a5)
	.loc 1 822 6
	li	a5,575
	bgtu	a4,a5,.L81
	.loc 1 824 12
	li	a5,-1
	j	.L79
.L81:
	.loc 1 828 6
	lw	a5,-20(s0)
	bne	a5,zero,.L82
	.loc 1 830 27
	li	a0,72
	call	mem_malloc
	sw	a0,-20(s0)
	.loc 1 831 8
	lw	a5,-20(s0)
	bne	a5,zero,.L83
	.loc 1 833 14
	li	a5,-1
	j	.L79
.L83:
	.loc 1 837 63
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,40(a5)
	j	.L84
.L82:
	.loc 1 843 13
	lw	a5,-20(s0)
	lbu	a5,4(a5)
	.loc 1 843 8
	beq	a5,zero,.L84
	.loc 1 844 7
	call	dhcp_dec_pcb_refcount
.L84:
	.loc 1 850 3
	li	a2,72
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 856 3
	lw	a5,-20(s0)
	addi	a4,a5,52
	lui	a5,%hi(dhcp_conflict_callback)
	addi	a2,a5,%lo(dhcp_conflict_callback)
	mv	a1,a4
	lw	a0,-36(s0)
	call	acd_add
	.loc 1 862 7
	call	dhcp_inc_pcb_refcount
	mv	a5,a0
	.loc 1 862 6 discriminator 1
	beq	a5,zero,.L85
	.loc 1 863 12
	li	a5,-1
	j	.L79
.L85:
	.loc 1 865 23
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,4(a5)
	.loc 1 867 17
	lw	a5,-36(s0)
	lbu	a5,69(a5)
	.loc 1 867 25
	andi	a5,a5,4
	.loc 1 867 6
	bne	a5,zero,.L86
	.loc 1 869 5
	li	a1,2
	lw	a0,-20(s0)
	call	dhcp_set_state
	.loc 1 870 12
	li	a5,0
	j	.L79
.L86:
	.loc 1 874 12
	lw	a0,-36(s0)
	call	dhcp_discover
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 1 875 6
	lb	a5,-21(s0)
	beq	a5,zero,.L87
	.loc 1 877 5
	lw	a0,-36(s0)
	call	dhcp_release_and_stop
	.loc 1 878 12
	li	a5,-1
	j	.L79
.L87:
	.loc 1 880 10
	lb	a5,-21(s0)
.L79:
	.loc 1 881 1
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
	.size	dhcp_start, .-dhcp_start
	.section	.text.dhcp_inform,"ax",@progbits
	.align	1
	.globl	dhcp_inform
	.type	dhcp_inform, @function
dhcp_inform:
.LFB21:
	.loc 1 895 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-116(s0)
	.loc 1 901 11
	lw	a5,-116(s0)
	beq	a5,zero,.L94
	.loc 1 903 7
	call	dhcp_inc_pcb_refcount
	mv	a5,a0
	.loc 1 903 6 discriminator 1
	bne	a5,zero,.L95
	.loc 1 907 3
	addi	a5,s0,-96
	li	a2,72
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 908 3
	addi	a5,s0,-96
	li	a1,7
	mv	a0,a5
	call	dhcp_set_state
	.loc 1 911 11
	addi	a4,s0,-98
	addi	a5,s0,-96
	mv	a3,a4
	li	a2,8
	mv	a1,a5
	lw	a0,-116(s0)
	call	dhcp_create_msg
	sw	a0,-20(s0)
	.loc 1 912 6
	lw	a5,-20(s0)
	beq	a5,zero,.L92
.LBB6:
	.loc 1 913 22
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 914 23
	lhu	a4,-98(s0)
	.loc 1 914 59
	lw	a5,-24(s0)
	addi	a5,a5,240
	.loc 1 914 23
	li	a3,2
	li	a2,57
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option
	mv	a5,a0
	.loc 1 914 21 discriminator 1
	sh	a5,-98(s0)
	.loc 1 915 23
	lhu	a4,-98(s0)
	.loc 1 915 65
	lw	a5,-24(s0)
	addi	a3,a5,240
	.loc 1 915 23
	lw	a5,-116(s0)
	lhu	a5,60(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	dhcp_option_short
	mv	a5,a0
	.loc 1 915 21 discriminator 1
	sh	a5,-98(s0)
	.loc 1 918 5
	lhu	a4,-98(s0)
	.loc 1 918 49
	lw	a5,-24(s0)
	addi	a5,a5,240
	.loc 1 918 5
	lw	a2,-20(s0)
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option_trailer
	.loc 1 922 5
	lui	a5,%hi(dhcp_pcb)
	lw	a0,%lo(dhcp_pcb)(a5)
	lw	a4,-116(s0)
	li	a3,67
	lui	a5,%hi(ip_addr_broadcast)
	addi	a2,a5,%lo(ip_addr_broadcast)
	lw	a1,-20(s0)
	call	udp_sendto_if
	.loc 1 924 5
	lw	a0,-20(s0)
	call	pbuf_free
.L92:
.LBE6:
	.loc 1 929 3
	call	dhcp_dec_pcb_refcount
	j	.L88
.L94:
	.loc 1 901 10
	nop
	j	.L88
.L95:
	.loc 1 904 5
	nop
.L88:
	.loc 1 930 1
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	dhcp_inform, .-dhcp_inform
	.section	.text.dhcp_network_changed_link_up,"ax",@progbits
	.align	1
	.globl	dhcp_network_changed_link_up
	.type	dhcp_network_changed_link_up, @function
dhcp_network_changed_link_up:
.LFB22:
	.loc 1 939 1
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
	.loc 1 940 16
	lw	a5,-36(s0)
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 942 6
	lw	a5,-20(s0)
	beq	a5,zero,.L102
	.loc 1 945 15
	lw	a5,-20(s0)
	lbu	a5,5(a5)
	.loc 1 945 3
	li	a4,10
	beq	a5,a4,.L99
	li	a4,10
	bgt	a5,a4,.L100
	beq	a5,zero,.L103
	blt	a5,zero,.L100
	addi	a4,a5,-3
	li	a5,2
	bgtu	a4,a5,.L100
.L99:
	.loc 1 950 19
	lw	a5,-20(s0)
	sb	zero,6(a5)
	.loc 1 951 7
	lw	a0,-36(s0)
	call	dhcp_reboot
	.loc 1 952 7
	j	.L96
.L100:
	.loc 1 962 19
	lw	a5,-20(s0)
	sb	zero,6(a5)
	.loc 1 963 7
	lw	a0,-36(s0)
	call	dhcp_discover
	.loc 1 964 7
	j	.L96
.L102:
	.loc 1 943 5
	nop
	j	.L96
.L103:
	.loc 1 955 7
	nop
.L96:
	.loc 1 966 1
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
	.size	dhcp_network_changed_link_up, .-dhcp_network_changed_link_up
	.section	.text.dhcp_decline,"ax",@progbits
	.align	1
	.type	dhcp_decline, @function
dhcp_decline:
.LFB23:
	.loc 1 980 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	.loc 1 981 16
	lw	a5,-52(s0)
	lw	a5,40(a5)
	sw	a5,-24(s0)
	.loc 1 987 3
	li	a1,12
	lw	a0,-24(s0)
	call	dhcp_set_state
	.loc 1 990 11
	addi	a5,s0,-34
	mv	a3,a5
	li	a2,4
	lw	a1,-24(s0)
	lw	a0,-52(s0)
	call	dhcp_create_msg
	sw	a0,-28(s0)
	.loc 1 991 6
	lw	a5,-28(s0)
	beq	a5,zero,.L105
.LBB7:
	.loc 1 992 22
	lw	a5,-28(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	.loc 1 993 23
	lhu	a4,-34(s0)
	.loc 1 993 59
	lw	a5,-32(s0)
	addi	a5,a5,240
	.loc 1 993 23
	li	a3,4
	li	a2,50
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option
	mv	a5,a0
	.loc 1 993 21 discriminator 1
	sh	a5,-34(s0)
	.loc 1 994 23
	lhu	s1,-34(s0)
	.loc 1 994 64
	lw	a5,-32(s0)
	addi	s2,a5,240
	.loc 1 994 23
	lw	a5,-24(s0)
	lw	a5,28(a5)
	mv	a0,a5
	call	lwip_htonl
	mv	a5,a0
	.loc 1 994 23 is_stmt 0 discriminator 1
	mv	a2,a5
	mv	a1,s2
	mv	a0,s1
	call	dhcp_option_long
	mv	a5,a0
	.loc 1 994 21 is_stmt 1 discriminator 2
	sh	a5,-34(s0)
	.loc 1 997 5
	lhu	a4,-34(s0)
	.loc 1 997 49
	lw	a5,-32(s0)
	addi	a5,a5,240
	.loc 1 997 5
	lw	a2,-28(s0)
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option_trailer
	.loc 1 1000 14
	lui	a5,%hi(dhcp_pcb)
	lw	a0,%lo(dhcp_pcb)(a5)
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
	lw	a4,-52(s0)
	li	a3,67
	lui	a2,%hi(ip_addr_broadcast)
	addi	a2,a2,%lo(ip_addr_broadcast)
	lw	a1,-28(s0)
	call	udp_sendto_if_src
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1001 5
	lw	a0,-28(s0)
	call	pbuf_free
.LBE7:
	j	.L106
.L105:
	.loc 1 1006 12
	li	a5,-1
	sb	a5,-17(s0)
.L106:
	.loc 1 1008 10
	lb	a5,-17(s0)
	.loc 1 1009 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	dhcp_decline, .-dhcp_decline
	.section	.text.dhcp_discover,"ax",@progbits
	.align	1
	.type	dhcp_discover, @function
dhcp_discover:
.LFB24:
	.loc 1 1020 1
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
	.loc 1 1021 16
	lw	a5,-52(s0)
	lw	a5,40(a5)
	sw	a5,-24(s0)
	.loc 1 1022 9
	sb	zero,-25(s0)
	.loc 1 1036 35
	lw	a5,-24(s0)
	sw	zero,28(a5)
	.loc 1 1037 3
	li	a1,6
	lw	a0,-24(s0)
	call	dhcp_set_state
	.loc 1 1039 11
	addi	a5,s0,-38
	mv	a3,a5
	li	a2,1
	lw	a1,-24(s0)
	lw	a0,-52(s0)
	call	dhcp_create_msg
	sw	a0,-32(s0)
	.loc 1 1040 6
	lw	a5,-32(s0)
	beq	a5,zero,.L109
.LBB8:
	.loc 1 1041 22
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	.loc 1 1044 23
	lhu	a4,-38(s0)
	.loc 1 1044 59
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 1044 23
	li	a3,2
	li	a2,57
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option
	mv	a5,a0
	.loc 1 1044 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1045 23
	lhu	a4,-38(s0)
	.loc 1 1045 65
	lw	a5,-36(s0)
	addi	a3,a5,240
	.loc 1 1045 23
	lw	a5,-52(s0)
	lhu	a5,60(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	dhcp_option_short
	mv	a5,a0
	.loc 1 1045 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1048 23
	lhu	a4,-38(s0)
	.loc 1 1048 68
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 1048 23
	lw	a2,-52(s0)
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option_hostname
	mv	a5,a0
	.loc 1 1048 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1051 23
	lhu	a4,-38(s0)
	.loc 1 1051 59
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 1051 23
	li	a3,4
	li	a2,55
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option
	mv	a5,a0
	.loc 1 1051 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1052 12
	sb	zero,-19(s0)
	.loc 1 1052 5
	j	.L110
.L111:
	.loc 1 1053 25
	lhu	a3,-38(s0)
	.loc 1 1053 66
	lw	a5,-36(s0)
	addi	a1,a5,240
	.loc 1 1053 25
	lbu	a4,-19(s0)
	lui	a5,%hi(dhcp_discover_request_options)
	addi	a5,a5,%lo(dhcp_discover_request_options)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a2,a5
	mv	a0,a3
	call	dhcp_option_byte
	mv	a5,a0
	.loc 1 1053 23 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1052 106 discriminator 3
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
.L110:
	.loc 1 1052 19 discriminator 1
	lbu	a4,-19(s0)
	li	a5,3
	bleu	a4,a5,.L111
	.loc 1 1056 5
	lhu	a4,-38(s0)
	.loc 1 1056 49
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 1056 5
	lw	a2,-32(s0)
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option_trailer
	.loc 1 1059 5
	lui	a5,%hi(dhcp_pcb)
	lw	a0,%lo(dhcp_pcb)(a5)
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
	lw	a4,-52(s0)
	li	a3,67
	lui	a2,%hi(ip_addr_broadcast)
	addi	a2,a2,%lo(ip_addr_broadcast)
	lw	a1,-32(s0)
	call	udp_sendto_if_src
	.loc 1 1061 5
	lw	a0,-32(s0)
	call	pbuf_free
.L109:
.LBE8:
	.loc 1 1067 11
	lw	a5,-24(s0)
	lbu	a4,6(a5)
	.loc 1 1067 6
	li	a5,255
	beq	a4,a5,.L112
	.loc 1 1068 9
	lw	a5,-24(s0)
	lbu	a5,6(a5)
	.loc 1 1068 16
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,6(a5)
.L112:
	.loc 1 1070 26
	lw	a5,-24(s0)
	lbu	a4,6(a5)
	.loc 1 1070 11
	li	a5,5
	bgtu	a4,a5,.L113
	.loc 1 1070 51 discriminator 1
	lw	a5,-24(s0)
	lbu	a5,6(a5)
	mv	a4,a5
	.loc 1 1070 43 discriminator 1
	li	a5,1
	sll	a5,a5,a4
	.loc 1 1070 11 discriminator 1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1070 9 discriminator 1
	li	a5,1000
	mul	a5,a4,a5
	sh	a5,-18(s0)
	j	.L114
.L113:
	.loc 1 1070 9 is_stmt 0 discriminator 2
	li	a5,-4096
	addi	a5,a5,-1440
	sh	a5,-18(s0)
.L114:
	.loc 1 1071 48 is_stmt 1
	lhu	a5,-18(s0)
	addi	a5,a5,499
	.loc 1 1071 53
	li	a4,274878464
	addi	a4,a4,-557
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 1071 27
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1071 25
	lw	a5,-24(s0)
	sh	a4,8(a5)
	.loc 1 1073 10
	lb	a5,-25(s0)
	.loc 1 1074 1
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
.LFE24:
	.size	dhcp_discover, .-dhcp_discover
	.section	.text.dhcp_bind,"ax",@progbits
	.align	1
	.type	dhcp_bind, @function
dhcp_bind:
.LFB25:
	.loc 1 1084 1
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
	.loc 1 1087 11
	lw	a5,-52(s0)
	beq	a5,zero,.L135
	.loc 1 1088 8
	lw	a5,-52(s0)
	lw	a5,40(a5)
	sw	a5,-32(s0)
	.loc 1 1089 11
	lw	a5,-32(s0)
	beq	a5,zero,.L136
	.loc 1 1093 20
	lw	a5,-32(s0)
	sh	zero,18(a5)
	.loc 1 1095 11
	lw	a5,-32(s0)
	lw	a4,40(a5)
	.loc 1 1095 6
	li	a5,-1
	beq	a4,a5,.L120
.LBB9:
	.loc 1 1098 33
	lw	a5,-32(s0)
	lw	a5,40(a5)
	.loc 1 1098 52
	addi	a4,a5,30
	.loc 1 1098 16
	li	a5,-2004316160
	addi	a5,a5,-1911
	mulhu	a5,a4,a5
	srli	a5,a5,5
	sw	a5,-20(s0)
	.loc 1 1098 71
	lw	a4,-20(s0)
	li	a5,65536
	bltu	a4,a5,.L121
	.loc 1 1098 100 discriminator 1
	li	a5,65536
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L121:
	.loc 1 1098 115 discriminator 3
	lw	a5,-20(s0)
	bne	a5,zero,.L122
	.loc 1 1098 140 discriminator 4
	li	a5,1
	sw	a5,-20(s0)
.L122:
	.loc 1 1098 166 discriminator 6
	lw	a5,-20(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1098 164 discriminator 6
	lw	a5,-32(s0)
	sh	a4,20(a5)
.L120:
.LBE9:
	.loc 1 1103 11
	lw	a5,-32(s0)
	lw	a4,44(a5)
	.loc 1 1103 6
	li	a5,-1
	beq	a4,a5,.L123
.LBB10:
	.loc 1 1106 33
	lw	a5,-32(s0)
	lw	a5,44(a5)
	.loc 1 1106 52
	addi	a4,a5,30
	.loc 1 1106 16
	li	a5,-2004316160
	addi	a5,a5,-1911
	mulhu	a5,a4,a5
	srli	a5,a5,5
	sw	a5,-24(s0)
	.loc 1 1106 71
	lw	a4,-24(s0)
	li	a5,65536
	bltu	a4,a5,.L124
	.loc 1 1106 100 discriminator 1
	li	a5,65536
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L124:
	.loc 1 1106 115 discriminator 3
	lw	a5,-24(s0)
	bne	a5,zero,.L125
	.loc 1 1106 140 discriminator 4
	li	a5,1
	sw	a5,-24(s0)
.L125:
	.loc 1 1106 166 discriminator 6
	lw	a5,-24(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1106 164 discriminator 6
	lw	a5,-32(s0)
	sh	a4,10(a5)
.LBE10:
	.loc 1 1108 31
	lw	a5,-32(s0)
	lhu	a4,10(a5)
	.loc 1 1108 25
	lw	a5,-32(s0)
	sh	a4,14(a5)
.L123:
	.loc 1 1111 11
	lw	a5,-32(s0)
	lw	a4,48(a5)
	.loc 1 1111 6
	li	a5,-1
	beq	a4,a5,.L126
.LBB11:
	.loc 1 1113 33
	lw	a5,-32(s0)
	lw	a5,48(a5)
	.loc 1 1113 53
	addi	a4,a5,30
	.loc 1 1113 16
	li	a5,-2004316160
	addi	a5,a5,-1911
	mulhu	a5,a4,a5
	srli	a5,a5,5
	sw	a5,-28(s0)
	.loc 1 1113 72
	lw	a4,-28(s0)
	li	a5,65536
	bltu	a4,a5,.L127
	.loc 1 1113 101 discriminator 1
	li	a5,65536
	addi	a5,a5,-1
	sw	a5,-28(s0)
.L127:
	.loc 1 1113 116 discriminator 3
	lw	a5,-28(s0)
	bne	a5,zero,.L128
	.loc 1 1113 141 discriminator 4
	li	a5,1
	sw	a5,-28(s0)
.L128:
	.loc 1 1113 167 discriminator 6
	lw	a5,-28(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1113 165 discriminator 6
	lw	a5,-32(s0)
	sh	a4,12(a5)
.LBE11:
	.loc 1 1115 32
	lw	a5,-32(s0)
	lhu	a4,12(a5)
	.loc 1 1115 26
	lw	a5,-32(s0)
	sh	a4,16(a5)
.L126:
	.loc 1 1119 12
	lw	a5,-32(s0)
	lhu	a4,10(a5)
	.loc 1 1119 32
	lw	a5,-32(s0)
	lhu	a5,12(a5)
	.loc 1 1119 6
	bltu	a4,a5,.L129
	.loc 1 1119 54 discriminator 1
	lw	a5,-32(s0)
	lhu	a5,12(a5)
	.loc 1 1119 46 discriminator 1
	beq	a5,zero,.L129
	.loc 1 1120 22
	lw	a5,-32(s0)
	sh	zero,10(a5)
.L129:
	.loc 1 1123 11
	lw	a5,-32(s0)
	lbu	a5,7(a5)
	.loc 1 1123 19
	andi	a5,a5,1
	.loc 1 1123 6
	beq	a5,zero,.L130
	.loc 1 1125 46
	lw	a5,-32(s0)
	lw	a5,32(a5)
	.loc 1 1125 21
	sw	a5,-40(s0)
	j	.L131
.L130:
.LBB12:
	.loc 1 1128 40
	lw	a5,-32(s0)
	addi	a5,a5,28
	.loc 1 1128 10
	lbu	a5,0(a5)
	sb	a5,-33(s0)
	.loc 1 1129 21
	lb	a5,-33(s0)
	.loc 1 1129 8
	blt	a5,zero,.L132
	.loc 1 1130 25
	li	a5,255
	sw	a5,-40(s0)
	j	.L131
.L132:
	.loc 1 1131 15
	lbu	a4,-33(s0)
	li	a5,191
	bleu	a4,a5,.L133
	.loc 1 1132 25
	li	a5,16777216
	addi	a5,a5,-1
	sw	a5,-40(s0)
	j	.L131
.L133:
	.loc 1 1134 25
	li	a5,65536
	addi	a5,a5,-1
	sw	a5,-40(s0)
.L131:
.LBE12:
	.loc 1 1138 44
	lw	a5,-32(s0)
	lw	a5,36(a5)
	.loc 1 1138 19
	sw	a5,-44(s0)
	.loc 1 1144 3
	li	a1,10
	lw	a0,-32(s0)
	call	dhcp_set_state
	.loc 1 1146 25
	lw	a5,-32(s0)
	addi	a5,a5,28
	.loc 1 1146 3
	addi	a3,s0,-44
	addi	a4,s0,-40
	mv	a2,a4
	mv	a1,a5
	lw	a0,-52(s0)
	call	netif_set_addr
	j	.L116
.L135:
	.loc 1 1087 10
	nop
	j	.L116
.L136:
	.loc 1 1089 10
	nop
.L116:
	.loc 1 1148 1
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
	.size	dhcp_bind, .-dhcp_bind
	.section	.text.dhcp_renew,"ax",@progbits
	.align	1
	.globl	dhcp_renew
	.type	dhcp_renew, @function
dhcp_renew:
.LFB26:
	.loc 1 1158 1
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
	.loc 1 1159 16
	lw	a5,-52(s0)
	lw	a5,40(a5)
	sw	a5,-28(s0)
	.loc 1 1168 3
	li	a1,5
	lw	a0,-28(s0)
	call	dhcp_set_state
	.loc 1 1171 11
	addi	a5,s0,-38
	mv	a3,a5
	li	a2,3
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	dhcp_create_msg
	sw	a0,-32(s0)
	.loc 1 1172 6
	lw	a5,-32(s0)
	beq	a5,zero,.L138
.LBB13:
	.loc 1 1173 22
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	.loc 1 1174 23
	lhu	a4,-38(s0)
	.loc 1 1174 59
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 1174 23
	li	a3,2
	li	a2,57
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option
	mv	a5,a0
	.loc 1 1174 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1175 23
	lhu	a4,-38(s0)
	.loc 1 1175 65
	lw	a5,-36(s0)
	addi	a3,a5,240
	.loc 1 1175 23
	lw	a5,-52(s0)
	lhu	a5,60(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	dhcp_option_short
	mv	a5,a0
	.loc 1 1175 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1177 23
	lhu	a4,-38(s0)
	.loc 1 1177 59
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 1177 23
	li	a3,4
	li	a2,55
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option
	mv	a5,a0
	.loc 1 1177 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1178 12
	sb	zero,-21(s0)
	.loc 1 1178 5
	j	.L139
.L140:
	.loc 1 1179 25
	lhu	a3,-38(s0)
	.loc 1 1179 66
	lw	a5,-36(s0)
	addi	a1,a5,240
	.loc 1 1179 25
	lbu	a4,-21(s0)
	lui	a5,%hi(dhcp_discover_request_options)
	addi	a5,a5,%lo(dhcp_discover_request_options)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a2,a5
	mv	a0,a3
	call	dhcp_option_byte
	mv	a5,a0
	.loc 1 1179 23 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1178 106 discriminator 3
	lbu	a5,-21(s0)
	addi	a5,a5,1
	sb	a5,-21(s0)
.L139:
	.loc 1 1178 19 discriminator 1
	lbu	a4,-21(s0)
	li	a5,3
	bleu	a4,a5,.L140
	.loc 1 1183 23
	lhu	a4,-38(s0)
	.loc 1 1183 68
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 1183 23
	lw	a2,-52(s0)
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option_hostname
	mv	a5,a0
	.loc 1 1183 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1187 5
	lhu	a4,-38(s0)
	.loc 1 1187 49
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 1187 5
	lw	a2,-32(s0)
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option_trailer
	.loc 1 1189 14
	lui	a5,%hi(dhcp_pcb)
	lw	a0,%lo(dhcp_pcb)(a5)
	.loc 1 1189 45
	lw	a5,-28(s0)
	addi	a5,a5,24
	.loc 1 1189 14
	lw	a4,-52(s0)
	li	a3,67
	mv	a2,a5
	lw	a1,-32(s0)
	call	udp_sendto_if
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1190 5
	lw	a0,-32(s0)
	call	pbuf_free
.LBE13:
	j	.L141
.L138:
	.loc 1 1195 12
	li	a5,-1
	sb	a5,-17(s0)
.L141:
	.loc 1 1197 11
	lw	a5,-28(s0)
	lbu	a4,6(a5)
	.loc 1 1197 6
	li	a5,255
	beq	a4,a5,.L142
	.loc 1 1198 9
	lw	a5,-28(s0)
	lbu	a5,6(a5)
	.loc 1 1198 16
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-28(s0)
	sb	a4,6(a5)
.L142:
	.loc 1 1201 23
	lw	a5,-28(s0)
	lbu	a4,6(a5)
	.loc 1 1201 11
	li	a5,9
	bgtu	a4,a5,.L143
	.loc 1 1201 42 discriminator 1
	lw	a5,-28(s0)
	lbu	a5,6(a5)
	.loc 1 1201 11 discriminator 1
	mv	a4,a5
	.loc 1 1201 9 discriminator 1
	li	a5,2000
	mul	a5,a4,a5
	sh	a5,-20(s0)
	j	.L144
.L143:
	.loc 1 1201 9 is_stmt 0 discriminator 2
	li	a5,20480
	addi	a5,a5,-480
	sh	a5,-20(s0)
.L144:
	.loc 1 1202 48 is_stmt 1
	lhu	a5,-20(s0)
	addi	a5,a5,499
	.loc 1 1202 53
	li	a4,274878464
	addi	a4,a4,-557
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 1202 27
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1202 25
	lw	a5,-28(s0)
	sh	a4,8(a5)
	.loc 1 1204 10
	lb	a5,-17(s0)
	.loc 1 1205 1
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
.LFE26:
	.size	dhcp_renew, .-dhcp_renew
	.section	.text.dhcp_rebind,"ax",@progbits
	.align	1
	.type	dhcp_rebind, @function
dhcp_rebind:
.LFB27:
	.loc 1 1214 1
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
	.loc 1 1215 16
	lw	a5,-52(s0)
	lw	a5,40(a5)
	sw	a5,-28(s0)
	.loc 1 1223 3
	li	a1,4
	lw	a0,-28(s0)
	call	dhcp_set_state
	.loc 1 1226 11
	addi	a5,s0,-38
	mv	a3,a5
	li	a2,3
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	dhcp_create_msg
	sw	a0,-32(s0)
	.loc 1 1227 6
	lw	a5,-32(s0)
	beq	a5,zero,.L147
.LBB14:
	.loc 1 1228 22
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	.loc 1 1229 23
	lhu	a4,-38(s0)
	.loc 1 1229 59
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 1229 23
	li	a3,2
	li	a2,57
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option
	mv	a5,a0
	.loc 1 1229 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1230 23
	lhu	a4,-38(s0)
	.loc 1 1230 65
	lw	a5,-36(s0)
	addi	a3,a5,240
	.loc 1 1230 23
	lw	a5,-52(s0)
	lhu	a5,60(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	dhcp_option_short
	mv	a5,a0
	.loc 1 1230 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1232 23
	lhu	a4,-38(s0)
	.loc 1 1232 59
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 1232 23
	li	a3,4
	li	a2,55
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option
	mv	a5,a0
	.loc 1 1232 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1233 12
	sb	zero,-21(s0)
	.loc 1 1233 5
	j	.L148
.L149:
	.loc 1 1234 25
	lhu	a3,-38(s0)
	.loc 1 1234 66
	lw	a5,-36(s0)
	addi	a1,a5,240
	.loc 1 1234 25
	lbu	a4,-21(s0)
	lui	a5,%hi(dhcp_discover_request_options)
	addi	a5,a5,%lo(dhcp_discover_request_options)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a2,a5
	mv	a0,a3
	call	dhcp_option_byte
	mv	a5,a0
	.loc 1 1234 23 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1233 106 discriminator 3
	lbu	a5,-21(s0)
	addi	a5,a5,1
	sb	a5,-21(s0)
.L148:
	.loc 1 1233 19 discriminator 1
	lbu	a4,-21(s0)
	li	a5,3
	bleu	a4,a5,.L149
	.loc 1 1238 23
	lhu	a4,-38(s0)
	.loc 1 1238 68
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 1238 23
	lw	a2,-52(s0)
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option_hostname
	mv	a5,a0
	.loc 1 1238 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1242 5
	lhu	a4,-38(s0)
	.loc 1 1242 49
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 1242 5
	lw	a2,-32(s0)
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option_trailer
	.loc 1 1245 14
	lui	a5,%hi(dhcp_pcb)
	lw	a0,%lo(dhcp_pcb)(a5)
	lw	a4,-52(s0)
	li	a3,67
	lui	a5,%hi(ip_addr_broadcast)
	addi	a2,a5,%lo(ip_addr_broadcast)
	lw	a1,-32(s0)
	call	udp_sendto_if
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1246 5
	lw	a0,-32(s0)
	call	pbuf_free
.LBE14:
	j	.L150
.L147:
	.loc 1 1250 12
	li	a5,-1
	sb	a5,-17(s0)
.L150:
	.loc 1 1252 11
	lw	a5,-28(s0)
	lbu	a4,6(a5)
	.loc 1 1252 6
	li	a5,255
	beq	a4,a5,.L151
	.loc 1 1253 9
	lw	a5,-28(s0)
	lbu	a5,6(a5)
	.loc 1 1253 16
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-28(s0)
	sb	a4,6(a5)
.L151:
	.loc 1 1255 23
	lw	a5,-28(s0)
	lbu	a4,6(a5)
	.loc 1 1255 11
	li	a5,9
	bgtu	a4,a5,.L152
	.loc 1 1255 42 discriminator 1
	lw	a5,-28(s0)
	lbu	a5,6(a5)
	.loc 1 1255 11 discriminator 1
	mv	a4,a5
	.loc 1 1255 9 discriminator 1
	li	a5,1000
	mul	a5,a4,a5
	sh	a5,-20(s0)
	j	.L153
.L152:
	.loc 1 1255 9 is_stmt 0 discriminator 2
	li	a5,8192
	addi	a5,a5,1808
	sh	a5,-20(s0)
.L153:
	.loc 1 1256 48 is_stmt 1
	lhu	a5,-20(s0)
	addi	a5,a5,499
	.loc 1 1256 53
	li	a4,274878464
	addi	a4,a4,-557
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 1256 27
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1256 25
	lw	a5,-28(s0)
	sh	a4,8(a5)
	.loc 1 1258 10
	lb	a5,-17(s0)
	.loc 1 1259 1
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
.LFE27:
	.size	dhcp_rebind, .-dhcp_rebind
	.section	.text.dhcp_reboot,"ax",@progbits
	.align	1
	.type	dhcp_reboot, @function
dhcp_reboot:
.LFB28:
	.loc 1 1268 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	.loc 1 1269 16
	lw	a5,-52(s0)
	lw	a5,40(a5)
	sw	a5,-28(s0)
	.loc 1 1277 3
	li	a1,3
	lw	a0,-28(s0)
	call	dhcp_set_state
	.loc 1 1280 11
	addi	a5,s0,-38
	mv	a3,a5
	li	a2,3
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	dhcp_create_msg
	sw	a0,-32(s0)
	.loc 1 1281 6
	lw	a5,-32(s0)
	beq	a5,zero,.L156
.LBB15:
	.loc 1 1282 22
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	.loc 1 1283 23
	lhu	a4,-38(s0)
	.loc 1 1283 59
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 1283 23
	li	a3,2
	li	a2,57
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option
	mv	a5,a0
	.loc 1 1283 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1284 23
	lhu	a4,-38(s0)
	.loc 1 1284 65
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 1284 23
	li	a2,576
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option_short
	mv	a5,a0
	.loc 1 1284 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1286 23
	lhu	a4,-38(s0)
	.loc 1 1286 59
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 1286 23
	li	a3,4
	li	a2,50
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option
	mv	a5,a0
	.loc 1 1286 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1287 23
	lhu	s1,-38(s0)
	.loc 1 1287 64
	lw	a5,-36(s0)
	addi	s2,a5,240
	.loc 1 1287 23
	lw	a5,-28(s0)
	lw	a5,28(a5)
	mv	a0,a5
	call	lwip_htonl
	mv	a5,a0
	.loc 1 1287 23 is_stmt 0 discriminator 1
	mv	a2,a5
	mv	a1,s2
	mv	a0,s1
	call	dhcp_option_long
	mv	a5,a0
	.loc 1 1287 21 is_stmt 1 discriminator 2
	sh	a5,-38(s0)
	.loc 1 1289 23
	lhu	a4,-38(s0)
	.loc 1 1289 59
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 1289 23
	li	a3,4
	li	a2,55
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option
	mv	a5,a0
	.loc 1 1289 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1290 12
	sb	zero,-21(s0)
	.loc 1 1290 5
	j	.L157
.L158:
	.loc 1 1291 25
	lhu	a3,-38(s0)
	.loc 1 1291 66
	lw	a5,-36(s0)
	addi	a1,a5,240
	.loc 1 1291 25
	lbu	a4,-21(s0)
	lui	a5,%hi(dhcp_discover_request_options)
	addi	a5,a5,%lo(dhcp_discover_request_options)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a2,a5
	mv	a0,a3
	call	dhcp_option_byte
	mv	a5,a0
	.loc 1 1291 23 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1290 106 discriminator 3
	lbu	a5,-21(s0)
	addi	a5,a5,1
	sb	a5,-21(s0)
.L157:
	.loc 1 1290 19 discriminator 1
	lbu	a4,-21(s0)
	li	a5,3
	bleu	a4,a5,.L158
	.loc 1 1295 23
	lhu	a4,-38(s0)
	.loc 1 1295 68
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 1295 23
	lw	a2,-52(s0)
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option_hostname
	mv	a5,a0
	.loc 1 1295 21 discriminator 1
	sh	a5,-38(s0)
	.loc 1 1299 5
	lhu	a4,-38(s0)
	.loc 1 1299 49
	lw	a5,-36(s0)
	addi	a5,a5,240
	.loc 1 1299 5
	lw	a2,-32(s0)
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option_trailer
	.loc 1 1302 14
	lui	a5,%hi(dhcp_pcb)
	lw	a0,%lo(dhcp_pcb)(a5)
	lw	a4,-52(s0)
	li	a3,67
	lui	a5,%hi(ip_addr_broadcast)
	addi	a2,a5,%lo(ip_addr_broadcast)
	lw	a1,-32(s0)
	call	udp_sendto_if
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1303 5
	lw	a0,-32(s0)
	call	pbuf_free
.LBE15:
	j	.L159
.L156:
	.loc 1 1307 12
	li	a5,-1
	sb	a5,-17(s0)
.L159:
	.loc 1 1309 11
	lw	a5,-28(s0)
	lbu	a4,6(a5)
	.loc 1 1309 6
	li	a5,255
	beq	a4,a5,.L160
	.loc 1 1310 9
	lw	a5,-28(s0)
	lbu	a5,6(a5)
	.loc 1 1310 16
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-28(s0)
	sb	a4,6(a5)
.L160:
	.loc 1 1312 23
	lw	a5,-28(s0)
	lbu	a4,6(a5)
	.loc 1 1312 11
	li	a5,9
	bgtu	a4,a5,.L161
	.loc 1 1312 42 discriminator 1
	lw	a5,-28(s0)
	lbu	a5,6(a5)
	.loc 1 1312 11 discriminator 1
	mv	a4,a5
	.loc 1 1312 9 discriminator 1
	li	a5,1000
	mul	a5,a4,a5
	sh	a5,-20(s0)
	j	.L162
.L161:
	.loc 1 1312 9 is_stmt 0 discriminator 2
	li	a5,8192
	addi	a5,a5,1808
	sh	a5,-20(s0)
.L162:
	.loc 1 1313 48 is_stmt 1
	lhu	a5,-20(s0)
	addi	a5,a5,499
	.loc 1 1313 53
	li	a4,274878464
	addi	a4,a4,-557
	mulh	a4,a5,a4
	srai	a4,a4,5
	srai	a5,a5,31
	sub	a5,a4,a5
	.loc 1 1313 27
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1313 25
	lw	a5,-28(s0)
	sh	a4,8(a5)
	.loc 1 1315 10
	lb	a5,-17(s0)
	.loc 1 1316 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	dhcp_reboot, .-dhcp_reboot
	.section	.text.dhcp_release_and_stop,"ax",@progbits
	.align	1
	.globl	dhcp_release_and_stop
	.type	dhcp_release_and_stop, @function
dhcp_release_and_stop:
.LFB29:
	.loc 1 1326 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	.loc 1 1327 16
	lw	a5,-52(s0)
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 1332 6
	lw	a5,-20(s0)
	beq	a5,zero,.L173
	.loc 1 1337 11
	lw	a5,-20(s0)
	lbu	a5,5(a5)
	.loc 1 1337 6
	beq	a5,zero,.L174
	.loc 1 1341 50
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 1 1341 26
	sw	a5,-32(s0)
	.loc 1 1344 34
	lw	a5,-20(s0)
	sw	zero,24(a5)
	.loc 1 1345 35
	lw	a5,-20(s0)
	sw	zero,28(a5)
	.loc 1 1346 35
	lw	a5,-20(s0)
	sw	zero,32(a5)
	.loc 1 1347 35
	lw	a5,-20(s0)
	sw	zero,36(a5)
	.loc 1 1351 77
	lw	a5,-20(s0)
	sw	zero,48(a5)
	.loc 1 1351 57
	lw	a5,-20(s0)
	lw	a4,48(a5)
	.loc 1 1351 51
	lw	a5,-20(s0)
	sw	a4,44(a5)
	.loc 1 1351 32
	lw	a5,-20(s0)
	lw	a4,44(a5)
	.loc 1 1351 26
	lw	a5,-20(s0)
	sw	a4,40(a5)
	.loc 1 1352 84
	lw	a5,-20(s0)
	sh	zero,20(a5)
	.loc 1 1352 71
	lw	a5,-20(s0)
	lhu	a4,20(a5)
	.loc 1 1352 65
	lw	a5,-20(s0)
	sh	a4,18(a5)
	.loc 1 1352 52
	lw	a5,-20(s0)
	lhu	a4,18(a5)
	.loc 1 1352 46
	lw	a5,-20(s0)
	sh	a4,16(a5)
	.loc 1 1352 29
	lw	a5,-20(s0)
	lhu	a4,16(a5)
	.loc 1 1352 23
	lw	a5,-20(s0)
	sh	a4,14(a5)
	.loc 1 1355 7
	lw	a0,-52(s0)
	call	dhcp_supplied_address
	mv	a5,a0
	.loc 1 1355 6 discriminator 1
	beq	a5,zero,.L168
.LBB16:
	.loc 1 1359 5
	li	a1,0
	lw	a0,-20(s0)
	call	dhcp_set_state
	.loc 1 1360 13
	addi	a5,s0,-34
	mv	a3,a5
	li	a2,7
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	dhcp_create_msg
	sw	a0,-24(s0)
	.loc 1 1361 8
	lw	a5,-24(s0)
	beq	a5,zero,.L169
.LBB17:
	.loc 1 1362 24
	lw	a5,-24(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	.loc 1 1363 25
	lhu	a4,-34(s0)
	.loc 1 1363 61
	lw	a5,-28(s0)
	addi	a5,a5,240
	.loc 1 1363 25
	li	a3,4
	li	a2,54
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option
	mv	a5,a0
	.loc 1 1363 23 discriminator 1
	sh	a5,-34(s0)
	.loc 1 1364 25
	lhu	s1,-34(s0)
	.loc 1 1364 66
	lw	a5,-28(s0)
	addi	s2,a5,240
	.loc 1 1364 25
	lw	a5,-32(s0)
	mv	a0,a5
	call	lwip_htonl
	mv	a5,a0
	.loc 1 1364 25 is_stmt 0 discriminator 1
	mv	a2,a5
	mv	a1,s2
	mv	a0,s1
	call	dhcp_option_long
	mv	a5,a0
	.loc 1 1364 23 is_stmt 1 discriminator 2
	sh	a5,-34(s0)
	.loc 1 1367 7
	lhu	a4,-34(s0)
	.loc 1 1367 51
	lw	a5,-28(s0)
	addi	a5,a5,240
	.loc 1 1367 7
	lw	a2,-24(s0)
	mv	a1,a5
	mv	a0,a4
	call	dhcp_option_trailer
	.loc 1 1369 7
	lui	a5,%hi(dhcp_pcb)
	lw	a5,%lo(dhcp_pcb)(a5)
	addi	a2,s0,-32
	lw	a4,-52(s0)
	li	a3,67
	lw	a1,-24(s0)
	mv	a0,a5
	call	udp_sendto_if
	.loc 1 1370 7
	lw	a0,-24(s0)
	call	pbuf_free
.L169:
.LBE17:
	.loc 1 1378 5
	lui	a5,%hi(ip_addr_any)
	addi	a3,a5,%lo(ip_addr_any)
	lui	a5,%hi(ip_addr_any)
	addi	a2,a5,%lo(ip_addr_any)
	lui	a5,%hi(ip_addr_any)
	addi	a1,a5,%lo(ip_addr_any)
	lw	a0,-52(s0)
	call	netif_set_addr
.LBE16:
	j	.L170
.L168:
	.loc 1 1380 6
	li	a1,0
	lw	a0,-20(s0)
	call	dhcp_set_state
.L170:
	.loc 1 1385 3
	lw	a5,-20(s0)
	addi	a5,a5,52
	mv	a1,a5
	lw	a0,-52(s0)
	call	acd_remove
	.loc 1 1388 11
	lw	a5,-20(s0)
	lbu	a5,4(a5)
	.loc 1 1388 6
	beq	a5,zero,.L164
	.loc 1 1389 5
	call	dhcp_dec_pcb_refcount
	.loc 1 1390 25
	lw	a5,-20(s0)
	sb	zero,4(a5)
	j	.L164
.L173:
	.loc 1 1333 5
	nop
	j	.L164
.L174:
	.loc 1 1338 5
	nop
.L164:
	.loc 1 1392 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	dhcp_release_and_stop, .-dhcp_release_and_stop
	.section	.text.dhcp_release,"ax",@progbits
	.align	1
	.globl	dhcp_release
	.type	dhcp_release, @function
dhcp_release:
.LFB30:
	.loc 1 1401 1
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
	.loc 1 1402 3
	lw	a0,-20(s0)
	call	dhcp_release_and_stop
	.loc 1 1403 10
	li	a5,0
	.loc 1 1404 1
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
	.size	dhcp_release, .-dhcp_release
	.section	.text.dhcp_stop,"ax",@progbits
	.align	1
	.globl	dhcp_stop
	.type	dhcp_stop, @function
dhcp_stop:
.LFB31:
	.loc 1 1413 1
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
	.loc 1 1414 3
	lw	a0,-20(s0)
	call	dhcp_release_and_stop
	.loc 1 1415 1
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
	.size	dhcp_stop, .-dhcp_stop
	.section	.text.dhcp_set_state,"ax",@progbits
	.align	1
	.type	dhcp_set_state, @function
dhcp_set_state:
.LFB32:
	.loc 1 1424 1
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
	.loc 1 1425 24
	lw	a5,-20(s0)
	lbu	a5,5(a5)
	.loc 1 1425 6
	lbu	a4,-21(s0)
	beq	a4,a5,.L180
	.loc 1 1426 17
	lw	a5,-20(s0)
	lbu	a4,-21(s0)
	sb	a4,5(a5)
	.loc 1 1427 17
	lw	a5,-20(s0)
	sb	zero,6(a5)
	.loc 1 1428 27
	lw	a5,-20(s0)
	sh	zero,8(a5)
.L180:
	.loc 1 1430 1
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
.LFE32:
	.size	dhcp_set_state, .-dhcp_set_state
	.section	.text.dhcp_option,"ax",@progbits
	.align	1
	.type	dhcp_option, @function
dhcp_option:
.LFB33:
	.loc 1 1439 1
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
	mv	a4,a3
	sh	a5,-18(s0)
	mv	a5,a2
	sb	a5,-19(s0)
	mv	a5,a4
	sb	a5,-20(s0)
	.loc 1 1441 26
	lhu	a5,-18(s0)
	addi	a4,a5,1
	sh	a4,-18(s0)
	mv	a4,a5
	.loc 1 1441 10
	lw	a5,-24(s0)
	add	a5,a5,a4
	.loc 1 1441 30
	lbu	a4,-19(s0)
	sb	a4,0(a5)
	.loc 1 1442 26
	lhu	a5,-18(s0)
	addi	a4,a5,1
	sh	a4,-18(s0)
	mv	a4,a5
	.loc 1 1442 10
	lw	a5,-24(s0)
	add	a5,a5,a4
	.loc 1 1442 30
	lbu	a4,-20(s0)
	sb	a4,0(a5)
	.loc 1 1443 10
	lhu	a5,-18(s0)
	.loc 1 1444 1
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
	.size	dhcp_option, .-dhcp_option
	.section	.text.dhcp_option_byte,"ax",@progbits
	.align	1
	.type	dhcp_option_byte, @function
dhcp_option_byte:
.LFB34:
	.loc 1 1451 1
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
	mv	a4,a2
	sh	a5,-18(s0)
	mv	a5,a4
	sb	a5,-19(s0)
	.loc 1 1453 26
	lhu	a5,-18(s0)
	addi	a4,a5,1
	sh	a4,-18(s0)
	mv	a4,a5
	.loc 1 1453 10
	lw	a5,-24(s0)
	add	a5,a5,a4
	.loc 1 1453 30
	lbu	a4,-19(s0)
	sb	a4,0(a5)
	.loc 1 1454 10
	lhu	a5,-18(s0)
	.loc 1 1455 1
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
	.size	dhcp_option_byte, .-dhcp_option_byte
	.section	.text.dhcp_option_short,"ax",@progbits
	.align	1
	.type	dhcp_option_short, @function
dhcp_option_short:
.LFB35:
	.loc 1 1459 1
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
	mv	a4,a2
	sh	a5,-18(s0)
	mv	a5,a4
	sh	a5,-20(s0)
	.loc 1 1461 57
	lhu	a5,-20(s0)
	srli	a5,a5,8
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 1 1461 26
	lhu	a5,-18(s0)
	addi	a4,a5,1
	sh	a4,-18(s0)
	mv	a4,a5
	.loc 1 1461 10
	lw	a5,-24(s0)
	add	a5,a5,a4
	.loc 1 1461 32
	andi	a4,a3,0xff
	.loc 1 1461 30
	sb	a4,0(a5)
	.loc 1 1462 26
	lhu	a5,-18(s0)
	addi	a4,a5,1
	sh	a4,-18(s0)
	mv	a4,a5
	.loc 1 1462 10
	lw	a5,-24(s0)
	add	a5,a5,a4
	.loc 1 1462 32
	lhu	a4,-20(s0)
	andi	a4,a4,0xff
	.loc 1 1462 30
	sb	a4,0(a5)
	.loc 1 1463 10
	lhu	a5,-18(s0)
	.loc 1 1464 1
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
.LFE35:
	.size	dhcp_option_short, .-dhcp_option_short
	.section	.text.dhcp_option_long,"ax",@progbits
	.align	1
	.type	dhcp_option_long, @function
dhcp_option_long:
.LFB36:
	.loc 1 1468 1
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
	sh	a5,-18(s0)
	.loc 1 1470 62
	lw	a5,-28(s0)
	srli	a3,a5,24
	.loc 1 1470 26
	lhu	a5,-18(s0)
	addi	a4,a5,1
	sh	a4,-18(s0)
	mv	a4,a5
	.loc 1 1470 10
	lw	a5,-24(s0)
	add	a5,a5,a4
	.loc 1 1470 32
	andi	a4,a3,0xff
	.loc 1 1470 30
	sb	a4,0(a5)
	.loc 1 1471 62
	lw	a5,-28(s0)
	srli	a3,a5,16
	.loc 1 1471 26
	lhu	a5,-18(s0)
	addi	a4,a5,1
	sh	a4,-18(s0)
	mv	a4,a5
	.loc 1 1471 10
	lw	a5,-24(s0)
	add	a5,a5,a4
	.loc 1 1471 32
	andi	a4,a3,0xff
	.loc 1 1471 30
	sb	a4,0(a5)
	.loc 1 1472 62
	lw	a5,-28(s0)
	srli	a3,a5,8
	.loc 1 1472 26
	lhu	a5,-18(s0)
	addi	a4,a5,1
	sh	a4,-18(s0)
	mv	a4,a5
	.loc 1 1472 10
	lw	a5,-24(s0)
	add	a5,a5,a4
	.loc 1 1472 32
	andi	a4,a3,0xff
	.loc 1 1472 30
	sb	a4,0(a5)
	.loc 1 1473 26
	lhu	a5,-18(s0)
	addi	a4,a5,1
	sh	a4,-18(s0)
	mv	a4,a5
	.loc 1 1473 10
	lw	a5,-24(s0)
	add	a5,a5,a4
	.loc 1 1473 32
	lw	a4,-28(s0)
	andi	a4,a4,0xff
	.loc 1 1473 30
	sb	a4,0(a5)
	.loc 1 1474 10
	lhu	a5,-18(s0)
	.loc 1 1475 1
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
	.size	dhcp_option_long, .-dhcp_option_long
	.section	.text.dhcp_option_hostname,"ax",@progbits
	.align	1
	.type	dhcp_option_hostname, @function
dhcp_option_hostname:
.LFB37:
	.loc 1 1480 1
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
	.loc 1 1481 12
	lw	a5,-44(s0)
	lw	a5,56(a5)
	.loc 1 1481 6
	beq	a5,zero,.L190
.LBB18:
	.loc 1 1482 22
	lw	a5,-44(s0)
	lw	a5,56(a5)
	mv	a0,a5
	call	strlen
	sw	a0,-28(s0)
	.loc 1 1483 8
	lw	a5,-28(s0)
	beq	a5,zero,.L190
.LBB19:
	.loc 1 1485 19
	lw	a5,-44(s0)
	lw	a5,56(a5)
	sw	a5,-24(s0)
	.loc 1 1488 48
	lhu	a5,-34(s0)
	.loc 1 1488 14
	li	a4,65
	sub	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 1490 11
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	bleu	a5,a4,.L191
	mv	a5,a4
.L191:
	sw	a5,-20(s0)
	.loc 1 1492 25
	lw	a5,-20(s0)
	andi	a4,a5,0xff
	lhu	a5,-34(s0)
	mv	a3,a4
	li	a2,12
	lw	a1,-40(s0)
	mv	a0,a5
	call	dhcp_option
	mv	a5,a0
	sh	a5,-34(s0)
	.loc 1 1493 13
	j	.L192
.L193:
	.loc 1 1494 72
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 1 1494 27
	lbu	a4,0(a5)
	lhu	a5,-34(s0)
	mv	a2,a4
	lw	a1,-40(s0)
	mv	a0,a5
	call	dhcp_option_byte
	mv	a5,a0
	sh	a5,-34(s0)
.L192:
	.loc 1 1493 17
	lw	a5,-20(s0)
	addi	a4,a5,-1
	sw	a4,-20(s0)
	.loc 1 1493 14
	bne	a5,zero,.L193
.L190:
.LBE19:
.LBE18:
	.loc 1 1498 10
	lhu	a5,-34(s0)
	.loc 1 1499 1
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
	.size	dhcp_option_hostname, .-dhcp_option_hostname
	.section	.text.dhcp_parse_reply,"ax",@progbits
	.align	1
	.type	dhcp_parse_reply, @function
dhcp_parse_reply:
.LFB38:
	.loc 1 1514 1
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
	.loc 1 1522 7
	sw	zero,-36(s0)
	.loc 1 1523 7
	sw	zero,-40(s0)
	.loc 1 1532 4
	li	a2,10
	li	a1,0
	lui	a5,%hi(dhcp_rx_options_given)
	addi	a0,a5,%lo(dhcp_rx_options_given)
	call	memset
	.loc 1 1534 8
	lw	a5,-84(s0)
	lhu	a4,10(a5)
	.loc 1 1534 6
	li	a5,43
	bgtu	a4,a5,.L196
	.loc 1 1535 12
	li	a5,-2
	j	.L197
.L196:
	.loc 1 1537 10
	lw	a5,-84(s0)
	lw	a5,4(a5)
	sw	a5,-56(s0)
	.loc 1 1546 15
	li	a5,240
	sh	a5,-26(s0)
	.loc 1 1548 19
	lw	a5,-84(s0)
	lhu	a5,8(a5)
	sh	a5,-28(s0)
.L199:
.L198:
	.loc 1 1550 5
	lw	a5,-84(s0)
	sw	a5,-32(s0)
	.loc 1 1551 18
	lhu	a5,-26(s0)
	sh	a5,-58(s0)
	.loc 1 1552 9
	j	.L200
.L202:
	.loc 1 1553 42
	lw	a5,-32(s0)
	lhu	a5,10(a5)
	.loc 1 1553 17
	lhu	a4,-26(s0)
	sub	a5,a4,a5
	sh	a5,-26(s0)
	.loc 1 1554 50
	lw	a5,-32(s0)
	lhu	a5,10(a5)
	.loc 1 1554 21
	lhu	a4,-28(s0)
	sub	a5,a4,a5
	sh	a5,-28(s0)
	.loc 1 1555 7
	lw	a5,-32(s0)
	lw	a5,0(a5)
	sw	a5,-32(s0)
.L200:
	.loc 1 1552 21
	lw	a5,-32(s0)
	beq	a5,zero,.L201
	.loc 1 1552 41 discriminator 1
	lw	a5,-32(s0)
	lhu	a5,10(a5)
	.loc 1 1552 21 discriminator 1
	lhu	a4,-26(s0)
	bgeu	a4,a5,.L202
.L201:
	.loc 1 1557 6
	lw	a5,-32(s0)
	bne	a5,zero,.L203
	.loc 1 1558 12
	li	a5,-2
	j	.L197
.L203:
	.loc 1 1560 10
	lhu	a5,-26(s0)
	sh	a5,-22(s0)
	.loc 1 1561 14
	lhu	a5,-28(s0)
	sh	a5,-24(s0)
	.loc 1 1562 11
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 1564 9
	j	.L204
.L251:
.LBB20:
	.loc 1 1565 22
	lhu	a5,-22(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 1 1565 10
	lbu	a5,0(a5)
	sb	a5,-59(s0)
	.loc 1 1567 10
	sb	zero,-42(s0)
	.loc 1 1568 9
	li	a5,-1
	sw	a5,-48(s0)
	.loc 1 1569 11
	lhu	a5,-22(s0)
	addi	a5,a5,2
	sh	a5,-50(s0)
	.loc 1 1570 8
	lhu	a4,-50(s0)
	lhu	a5,-22(s0)
	bgeu	a4,a5,.L205
	.loc 1 1572 14
	li	a5,-2
	j	.L197
.L205:
	.loc 1 1575 17
	lhu	a5,-22(s0)
	addi	a5,a5,1
	.loc 1 1575 25
	lw	a4,-32(s0)
	lhu	a4,10(a4)
	.loc 1 1575 8
	bge	a5,a4,.L206
	.loc 1 1576 20
	lhu	a5,-22(s0)
	addi	a5,a5,1
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 1 1576 11
	lbu	a5,0(a5)
	sb	a5,-41(s0)
	j	.L207
.L206:
	.loc 1 1578 15
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 1578 11
	beq	a5,zero,.L208
	.loc 1 1578 41 discriminator 1
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 1578 47 discriminator 1
	lw	a5,4(a5)
	.loc 1 1578 11 discriminator 1
	lbu	a5,0(a5)
	sb	a5,-41(s0)
	j	.L207
.L208:
	.loc 1 1578 11 is_stmt 0 discriminator 2
	sb	zero,-41(s0)
.L207:
	.loc 1 1581 16 is_stmt 1
	lbu	a5,-41(s0)
	sb	a5,-42(s0)
	.loc 1 1582 5
	lbu	a5,-59(s0)
	li	a4,59
	beq	a5,a4,.L209
	li	a4,59
	bgt	a5,a4,.L210
	li	a4,58
	beq	a5,a4,.L211
	li	a4,58
	bgt	a5,a4,.L210
	li	a4,54
	beq	a5,a4,.L212
	li	a4,54
	bgt	a5,a4,.L210
	li	a4,53
	beq	a5,a4,.L213
	li	a4,53
	bgt	a5,a4,.L210
	li	a4,52
	beq	a5,a4,.L214
	li	a4,52
	bgt	a5,a4,.L210
	li	a4,51
	beq	a5,a4,.L215
	li	a4,51
	bgt	a5,a4,.L210
	li	a4,6
	beq	a5,a4,.L216
	li	a4,6
	bgt	a5,a4,.L210
	li	a4,3
	beq	a5,a4,.L217
	li	a4,3
	bgt	a5,a4,.L210
	beq	a5,zero,.L218
	li	a4,1
	beq	a5,a4,.L219
	j	.L210
.L218:
	.loc 1 1586 26
	sb	zero,-41(s0)
	.loc 1 1586 20
	lbu	a5,-41(s0)
	sb	a5,-42(s0)
	.loc 1 1588 9
	j	.L220
.L219:
	.loc 1 1590 17
	lbu	a4,-41(s0)
	li	a5,4
	beq	a4,a5,.L221
	.loc 1 1590 40 discriminator 1
	li	a5,-6
	.loc 1 1590 40 is_stmt 0
	j	.L197
.L221:
	.loc 1 1591 20 is_stmt 1
	li	a5,6
	sw	a5,-48(s0)
	.loc 1 1592 9
	j	.L220
.L217:
	.loc 1 1594 20
	li	a5,4
	sb	a5,-42(s0)
	.loc 1 1595 17
	lbu	a4,-41(s0)
	lbu	a5,-42(s0)
	bgeu	a4,a5,.L222
	.loc 1 1595 49 discriminator 1
	li	a5,-6
	.loc 1 1595 49 is_stmt 0
	j	.L197
.L222:
	.loc 1 1596 20 is_stmt 1
	li	a5,7
	sw	a5,-48(s0)
	.loc 1 1597 9
	j	.L220
.L216:
	.loc 1 1601 18
	lbu	a5,-41(s0)
	andi	a5,a5,3
	andi	a5,a5,0xff
	.loc 1 1601 17
	beq	a5,zero,.L223
	.loc 1 1601 44 discriminator 1
	li	a5,-6
	.loc 1 1601 44 is_stmt 0
	j	.L197
.L223:
	.loc 1 1603 20 is_stmt 1
	lbu	a5,-41(s0)
	andi	a3,a5,0xff
	li	a4,8
	bleu	a3,a4,.L224
	li	a5,8
.L224:
	sb	a5,-42(s0)
	.loc 1 1604 17
	lbu	a4,-41(s0)
	lbu	a5,-42(s0)
	bgeu	a4,a5,.L225
	.loc 1 1604 49 discriminator 1
	li	a5,-6
	.loc 1 1604 49 is_stmt 0
	j	.L197
.L225:
	.loc 1 1605 20 is_stmt 1
	li	a5,8
	sw	a5,-48(s0)
	.loc 1 1606 9
	j	.L220
.L215:
	.loc 1 1609 17
	lbu	a4,-41(s0)
	li	a5,4
	beq	a4,a5,.L226
	.loc 1 1609 40 discriminator 1
	li	a5,-6
	.loc 1 1609 40 is_stmt 0
	j	.L197
.L226:
	.loc 1 1610 20 is_stmt 1
	li	a5,3
	sw	a5,-48(s0)
	.loc 1 1611 9
	j	.L220
.L214:
	.loc 1 1623 17
	lbu	a4,-41(s0)
	li	a5,1
	beq	a4,a5,.L227
	.loc 1 1623 40 discriminator 1
	li	a5,-6
	.loc 1 1623 40 is_stmt 0
	j	.L197
.L227:
	.loc 1 1625 17 is_stmt 1
	lhu	a4,-58(s0)
	li	a5,240
	beq	a4,a5,.L228
	.loc 1 1625 61 discriminator 1
	li	a5,-6
	.loc 1 1625 61 is_stmt 0
	j	.L197
.L228:
	.loc 1 1626 20 is_stmt 1
	sw	zero,-48(s0)
	.loc 1 1627 9
	j	.L220
.L213:
	.loc 1 1629 17
	lbu	a4,-41(s0)
	li	a5,1
	beq	a4,a5,.L229
	.loc 1 1629 40 discriminator 1
	li	a5,-6
	.loc 1 1629 40 is_stmt 0
	j	.L197
.L229:
	.loc 1 1630 20 is_stmt 1
	li	a5,1
	sw	a5,-48(s0)
	.loc 1 1631 9
	j	.L220
.L212:
	.loc 1 1633 17
	lbu	a4,-41(s0)
	li	a5,4
	beq	a4,a5,.L230
	.loc 1 1633 40 discriminator 1
	li	a5,-6
	.loc 1 1633 40 is_stmt 0
	j	.L197
.L230:
	.loc 1 1634 20 is_stmt 1
	li	a5,2
	sw	a5,-48(s0)
	.loc 1 1635 9
	j	.L220
.L211:
	.loc 1 1637 17
	lbu	a4,-41(s0)
	li	a5,4
	beq	a4,a5,.L231
	.loc 1 1637 40 discriminator 1
	li	a5,-6
	.loc 1 1637 40 is_stmt 0
	j	.L197
.L231:
	.loc 1 1638 20 is_stmt 1
	li	a5,4
	sw	a5,-48(s0)
	.loc 1 1639 9
	j	.L220
.L209:
	.loc 1 1641 17
	lbu	a4,-41(s0)
	li	a5,4
	beq	a4,a5,.L232
	.loc 1 1641 40 discriminator 1
	li	a5,-6
	.loc 1 1641 40 is_stmt 0
	j	.L197
.L232:
	.loc 1 1642 20 is_stmt 1
	li	a5,5
	sw	a5,-48(s0)
	.loc 1 1643 9
	j	.L220
.L210:
	.loc 1 1645 20
	sb	zero,-42(s0)
	.loc 1 1650 9
	nop
.L220:
	.loc 1 1652 8
	lbu	a5,-59(s0)
	bne	a5,zero,.L233
	.loc 1 1653 13
	lhu	a5,-22(s0)
	addi	a5,a5,1
	sh	a5,-22(s0)
	j	.L234
.L233:
	.loc 1 1655 18
	lhu	a4,-22(s0)
	lbu	a5,-41(s0)
	add	a4,a4,a5
	.loc 1 1655 10
	li	a5,65536
	addi	a5,a5,-3
	ble	a4,a5,.L235
	.loc 1 1657 16
	li	a5,-2
	j	.L197
.L235:
	.loc 1 1659 31
	lbu	a5,-41(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-22(s0)
	add	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1659 14
	addi	a5,a5,2
	sh	a5,-22(s0)
	.loc 1 1660 10
	lbu	a5,-42(s0)
	beq	a5,zero,.L234
.LBB21:
	.loc 1 1661 15
	sw	zero,-72(s0)
.L236:
	.loc 1 1665 36
	lui	a5,%hi(dhcp_rx_options_given)
	addi	a4,a5,%lo(dhcp_rx_options_given)
	lw	a5,-48(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 1665 12
	bne	a5,zero,.L234
	.loc 1 1666 59
	lbu	a5,-42(s0)
	andi	a3,a5,0xff
	li	a4,4
	bleu	a3,a4,.L238
	li	a5,4
.L238:
	andi	a5,a5,0xff
	.loc 1 1666 20
	sh	a5,-62(s0)
	.loc 1 1667 15
	lhu	a3,-50(s0)
	lhu	a4,-62(s0)
	addi	a5,s0,-72
	mv	a2,a4
	mv	a1,a5
	lw	a0,-32(s0)
	call	pbuf_copy_partial
	mv	a5,a0
	mv	a4,a5
	.loc 1 1667 14 discriminator 1
	lhu	a5,-62(s0)
	beq	a5,a4,.L239
	.loc 1 1668 20
	li	a5,-2
	j	.L197
.L239:
	.loc 1 1670 14
	lbu	a4,-42(s0)
	li	a5,4
	bleu	a4,a5,.L241
.LBB22:
	.loc 1 1673 22
	lbu	a5,-42(s0)
	andi	a5,a5,3
	andi	a5,a5,0xff
	.loc 1 1673 21
	beq	a5,zero,.L242
	.loc 1 1673 55 discriminator 1
	li	a5,-6
	.loc 1 1673 55 is_stmt 0
	j	.L197
.L242:
	.loc 1 1674 48 is_stmt 1
	lui	a5,%hi(dhcp_rx_options_given)
	addi	a4,a5,%lo(dhcp_rx_options_given)
	lw	a5,-48(s0)
	add	a5,a4,a5
	li	a4,1
	sb	a4,0(a5)
	.loc 1 1675 49
	lw	a5,-72(s0)
	mv	a0,a5
	call	lwip_htonl
	mv	a3,a0
	.loc 1 1675 46 discriminator 1
	lui	a5,%hi(dhcp_rx_options_val)
	addi	a4,a5,%lo(dhcp_rx_options_val)
	lw	a5,-48(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	a3,0(a5)
	.loc 1 1676 24
	lbu	a5,-42(s0)
	addi	a5,a5,-4
	sb	a5,-42(s0)
	.loc 1 1677 29
	lhu	a5,-50(s0)
	addi	a5,a5,4
	sh	a5,-64(s0)
	.loc 1 1678 16
	lhu	a4,-64(s0)
	lhu	a5,-50(s0)
	bgeu	a4,a5,.L243
	.loc 1 1680 22
	li	a5,-2
	j	.L197
.L243:
	.loc 1 1682 24
	lhu	a5,-64(s0)
	sh	a5,-50(s0)
	.loc 1 1683 23
	lw	a5,-48(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
	.loc 1 1684 13
	j	.L236
.L241:
.LBE22:
	.loc 1 1685 21
	lbu	a4,-42(s0)
	li	a5,4
	bne	a4,a5,.L244
	.loc 1 1686 21
	lw	a5,-72(s0)
	mv	a0,a5
	call	lwip_htonl
	mv	a5,a0
	.loc 1 1686 19 discriminator 1
	sw	a5,-72(s0)
	j	.L245
.L244:
	.loc 1 1688 21
	lbu	a4,-42(s0)
	li	a5,1
	beq	a4,a5,.L246
	.loc 1 1688 51 discriminator 1
	li	a5,-6
	.loc 1 1688 51 is_stmt 0
	j	.L197
.L246:
	.loc 1 1689 30 is_stmt 1
	addi	a5,s0,-72
	.loc 1 1689 37
	lbu	a5,0(a5)
	.loc 1 1689 19
	sw	a5,-72(s0)
.L245:
	.loc 1 1691 46
	lui	a5,%hi(dhcp_rx_options_given)
	addi	a4,a5,%lo(dhcp_rx_options_given)
	lw	a5,-48(s0)
	add	a5,a4,a5
	li	a4,1
	sb	a4,0(a5)
	.loc 1 1692 44
	lw	a4,-72(s0)
	lui	a5,%hi(dhcp_rx_options_val)
	addi	a3,a5,%lo(dhcp_rx_options_val)
	lw	a5,-48(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
.L234:
.LBE21:
	.loc 1 1696 20
	lw	a5,-32(s0)
	lhu	a5,10(a5)
	.loc 1 1696 8
	lhu	a4,-22(s0)
	bltu	a4,a5,.L204
	.loc 1 1697 34
	lw	a5,-32(s0)
	lhu	a5,10(a5)
	.loc 1 1697 14
	lhu	a4,-22(s0)
	sub	a5,a4,a5
	sh	a5,-22(s0)
	.loc 1 1698 42
	lw	a5,-32(s0)
	lhu	a5,10(a5)
	.loc 1 1698 18
	lhu	a4,-24(s0)
	sub	a5,a4,a5
	sh	a5,-24(s0)
	.loc 1 1699 10
	lhu	a4,-22(s0)
	lhu	a5,-24(s0)
	bgeu	a4,a5,.L248
	.loc 1 1700 11
	lw	a5,-32(s0)
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1701 17
	lw	a5,-32(s0)
	bne	a5,zero,.L249
	.loc 1 1701 20 discriminator 1
	li	a5,-6
	.loc 1 1701 20 is_stmt 0
	j	.L197
.L249:
	.loc 1 1702 17 is_stmt 1
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	j	.L204
.L248:
	.loc 1 1705 16
	li	a5,-2
	j	.L197
.L204:
.LBE20:
	.loc 1 1564 46
	lw	a5,-32(s0)
	beq	a5,zero,.L250
	.loc 1 1564 21 discriminator 1
	lhu	a4,-22(s0)
	lhu	a5,-24(s0)
	bgeu	a4,a5,.L250
	.loc 1 1564 57 discriminator 2
	lhu	a5,-22(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 1564 46 discriminator 2
	li	a5,255
	bne	a4,a5,.L251
.L250:
	.loc 1 1710 29
	lui	a5,%hi(dhcp_rx_options_given)
	addi	a5,a5,%lo(dhcp_rx_options_given)
	lbu	a5,0(a5)
	.loc 1 1710 6
	beq	a5,zero,.L252
.LBB23:
	.loc 1 1711 11
	lui	a5,%hi(dhcp_rx_options_val)
	addi	a5,a5,%lo(dhcp_rx_options_val)
	lw	a5,0(a5)
	sw	a5,-68(s0)
	.loc 1 1712 54
	lui	a5,%hi(dhcp_rx_options_given)
	addi	a5,a5,%lo(dhcp_rx_options_given)
	sb	zero,0(a5)
	.loc 1 1713 8
	lw	a4,-68(s0)
	li	a5,1
	bne	a4,a5,.L253
	.loc 1 1714 29
	li	a5,1
	sw	a5,-36(s0)
	j	.L252
.L253:
	.loc 1 1716 15
	lw	a4,-68(s0)
	li	a5,2
	bne	a4,a5,.L254
	.loc 1 1717 30
	li	a5,1
	sw	a5,-40(s0)
	j	.L252
.L254:
	.loc 1 1719 15
	lw	a4,-68(s0)
	li	a5,3
	bne	a4,a5,.L252
	.loc 1 1720 30
	li	a5,1
	sw	a5,-40(s0)
	.loc 1 1721 29
	li	a5,1
	sw	a5,-36(s0)
.L252:
.LBE23:
	.loc 1 1727 6
	lw	a5,-36(s0)
	beq	a5,zero,.L255
	.loc 1 1729 27
	sw	zero,-36(s0)
	.loc 1 1730 17
	li	a5,108
	sh	a5,-26(s0)
	.loc 1 1731 21
	li	a5,236
	sh	a5,-28(s0)
	.loc 1 1735 5
	j	.L198
.L255:
	.loc 1 1736 13
	lw	a5,-40(s0)
	beq	a5,zero,.L256
	.loc 1 1737 28
	sw	zero,-40(s0)
	.loc 1 1738 17
	li	a5,44
	sh	a5,-26(s0)
	.loc 1 1739 21
	li	a5,108
	sh	a5,-28(s0)
	.loc 1 1740 5
	j	.L198
.L256:
	.loc 1 1755 10
	li	a5,0
.L197:
	.loc 1 1756 1
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
.LFE38:
	.size	dhcp_parse_reply, .-dhcp_parse_reply
	.section	.text.dhcp_recv,"ax",@progbits
	.align	1
	.type	dhcp_recv, @function
dhcp_recv:
.LFB39:
	.loc 1 1763 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	mv	a5,a4
	sh	a5,-66(s0)
	.loc 1 1764 17
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 1765 16
	lw	a5,-24(s0)
	lw	a5,40(a5)
	sw	a5,-28(s0)
	.loc 1 1766 20
	lw	a5,-60(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	.loc 1 1774 6
	lw	a5,-28(s0)
	beq	a5,zero,.L279
	.loc 1 1774 29 discriminator 1
	lw	a5,-28(s0)
	lbu	a5,4(a5)
	.loc 1 1774 21 discriminator 1
	beq	a5,zero,.L279
	.loc 1 1789 8
	lw	a5,-60(s0)
	lhu	a4,10(a5)
	.loc 1 1789 6
	li	a5,43
	bleu	a4,a5,.L280
	.loc 1 1794 16
	lw	a5,-32(s0)
	lbu	a4,0(a5)
	.loc 1 1794 6
	li	a5,2
	bne	a4,a5,.L281
	.loc 1 1799 10
	sb	zero,-17(s0)
	.loc 1 1799 3
	j	.L263
.L266:
	.loc 1 1800 22
	lbu	a5,-17(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	lbu	a4,62(a5)
	.loc 1 1800 46
	lbu	a5,-17(s0)
	lw	a3,-32(s0)
	add	a5,a3,a5
	lbu	a5,28(a5)
	.loc 1 1800 8
	bne	a4,a5,.L282
	.loc 1 1799 78 discriminator 2
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L263:
	.loc 1 1799 24 discriminator 1
	lw	a5,-24(s0)
	lbu	a5,68(a5)
	.loc 1 1799 37 discriminator 1
	lbu	a4,-17(s0)
	bgeu	a4,a5,.L265
	.loc 1 1799 37 is_stmt 0 discriminator 3
	lbu	a4,-17(s0)
	li	a5,5
	bleu	a4,a5,.L266
.L265:
	.loc 1 1808 7 is_stmt 1
	lw	a5,-32(s0)
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a0,a5
	call	lwip_htonl
	mv	a4,a0
	.loc 1 1808 41 discriminator 1
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 1808 6 discriminator 1
	bne	a4,a5,.L283
	.loc 1 1814 7
	lw	a1,-28(s0)
	lw	a0,-60(s0)
	call	dhcp_parse_reply
	mv	a5,a0
	.loc 1 1814 6 discriminator 1
	bne	a5,zero,.L284
	.loc 1 1822 30
	lui	a5,%hi(dhcp_rx_options_given)
	addi	a5,a5,%lo(dhcp_rx_options_given)
	lbu	a5,1(a5)
	.loc 1 1822 6
	beq	a5,zero,.L285
	.loc 1 1827 10
	lw	a5,-60(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	.loc 1 1829 40
	lui	a5,%hi(dhcp_rx_options_val)
	addi	a5,a5,%lo(dhcp_rx_options_val)
	lw	a5,4(a5)
	.loc 1 1829 12
	sb	a5,-37(s0)
	.loc 1 1831 6
	lbu	a4,-37(s0)
	li	a5,5
	bne	a4,a5,.L270
	.loc 1 1834 14
	lw	a5,-28(s0)
	lbu	a4,5(a5)
	.loc 1 1834 8
	li	a5,1
	beq	a4,a5,.L271
	.loc 1 1835 14
	lw	a5,-28(s0)
	lbu	a4,5(a5)
	.loc 1 1834 48 discriminator 1
	li	a5,3
	bne	a4,a5,.L272
.L271:
	.loc 1 1836 7
	lw	a1,-36(s0)
	lw	a0,-24(s0)
	call	dhcp_handle_ack
	.loc 1 1838 17
	lw	a5,-24(s0)
	lbu	a5,69(a5)
	.loc 1 1838 25
	andi	a5,a5,8
	.loc 1 1838 10
	beq	a5,zero,.L273
	.loc 1 1840 9
	lw	a0,-24(s0)
	call	dhcp_check
	.loc 1 1838 10
	j	.L260
.L273:
	.loc 1 1843 9
	lw	a0,-24(s0)
	call	dhcp_bind
	.loc 1 1838 10
	j	.L260
.L272:
	.loc 1 1851 19
	lw	a5,-28(s0)
	lbu	a4,5(a5)
	.loc 1 1851 13
	li	a5,4
	beq	a4,a5,.L276
	.loc 1 1852 19
	lw	a5,-28(s0)
	lbu	a4,5(a5)
	.loc 1 1851 52 discriminator 1
	li	a5,5
	bne	a4,a5,.L260
.L276:
	.loc 1 1853 7
	lw	a1,-36(s0)
	lw	a0,-24(s0)
	call	dhcp_handle_ack
	.loc 1 1854 7
	lw	a0,-24(s0)
	call	dhcp_bind
	j	.L260
.L270:
	.loc 1 1858 11
	lbu	a4,-37(s0)
	li	a5,6
	bne	a4,a5,.L277
	.loc 1 1859 18
	lw	a5,-28(s0)
	lbu	a4,5(a5)
	.loc 1 1858 28 discriminator 1
	li	a5,3
	beq	a4,a5,.L278
	.loc 1 1859 59
	lw	a5,-28(s0)
	lbu	a4,5(a5)
	.loc 1 1859 51
	li	a5,1
	beq	a4,a5,.L278
	.loc 1 1860 18
	lw	a5,-28(s0)
	lbu	a4,5(a5)
	.loc 1 1859 93 discriminator 1
	li	a5,4
	beq	a4,a5,.L278
	.loc 1 1860 59
	lw	a5,-28(s0)
	lbu	a4,5(a5)
	.loc 1 1860 51
	li	a5,5
	bne	a4,a5,.L277
.L278:
	.loc 1 1862 5
	lw	a0,-24(s0)
	call	dhcp_handle_nak
	j	.L260
.L277:
	.loc 1 1865 11
	lbu	a4,-37(s0)
	li	a5,2
	bne	a4,a5,.L286
	.loc 1 1865 36 discriminator 1
	lw	a5,-28(s0)
	lbu	a4,5(a5)
	.loc 1 1865 28 discriminator 1
	li	a5,6
	bne	a4,a5,.L286
	.loc 1 1868 5
	lw	a1,-36(s0)
	lw	a0,-24(s0)
	call	dhcp_handle_offer
	j	.L260
.L279:
	.loc 1 1775 5
	nop
	j	.L260
.L280:
	.loc 1 1791 5
	nop
	j	.L260
.L281:
	.loc 1 1796 5
	nop
	j	.L260
.L282:
	.loc 1 1804 7
	nop
	j	.L260
.L283:
	.loc 1 1811 5
	nop
	j	.L260
.L284:
	.loc 1 1817 5
	nop
	j	.L260
.L285:
	.loc 1 1824 5
	nop
	j	.L260
.L286:
	.loc 1 1871 1
	nop
.L260:
	.loc 1 1872 3
	lw	a0,-60(s0)
	call	pbuf_free
	.loc 1 1873 1
	nop
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE39:
	.size	dhcp_recv, .-dhcp_recv
	.section	.text.dhcp_create_msg,"ax",@progbits
	.align	1
	.type	dhcp_create_msg, @function
dhcp_create_msg:
.LFB40:
	.loc 1 1884 1
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
	sb	a5,-41(s0)
	.loc 1 1906 11
	lw	a5,-36(s0)
	bne	a5,zero,.L288
	.loc 1 1906 2 discriminator 1
	li	a5,0
	.loc 1 1906 2 is_stmt 0
	j	.L289
.L288:
	.loc 1 1907 11 is_stmt 1
	lw	a5,-40(s0)
	bne	a5,zero,.L290
	.loc 1 1907 2 discriminator 1
	li	a5,0
	.loc 1 1907 2 is_stmt 0
	j	.L289
.L290:
	.loc 1 1908 11 is_stmt 1
	li	a2,640
	li	a1,308
	li	a0,182
	call	pbuf_alloc
	sw	a0,-24(s0)
	.loc 1 1909 6
	lw	a5,-24(s0)
	bne	a5,zero,.L291
	.loc 1 1912 11
	li	a5,0
	j	.L289
.L291:
	.loc 1 1918 6
	lbu	a4,-41(s0)
	li	a5,3
	bne	a4,a5,.L292
	.loc 1 1918 35 discriminator 1
	lw	a5,-40(s0)
	lbu	a4,5(a5)
	.loc 1 1918 27 discriminator 1
	li	a5,3
	bne	a4,a5,.L293
.L292:
	.loc 1 1920 13
	lw	a5,-40(s0)
	lbu	a5,6(a5)
	.loc 1 1920 8
	bne	a5,zero,.L294
	.loc 1 1922 21
	call	bl_rand
	mv	a5,a0
	.loc 1 1922 14 discriminator 1
	mv	a4,a5
	.loc 1 1922 11 discriminator 1
	lui	a5,%hi(xid.0)
	sw	a4,%lo(xid.0)(a5)
.L294:
	.loc 1 1927 15
	lui	a5,%hi(xid.0)
	lw	a4,%lo(xid.0)(a5)
	lw	a5,-40(s0)
	sw	a4,0(a5)
.L293:
	.loc 1 1932 11
	lw	a5,-24(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	.loc 1 1933 3
	li	a2,308
	li	a1,0
	lw	a0,-28(s0)
	call	memset
	.loc 1 1935 15
	lw	a5,-28(s0)
	li	a4,1
	sb	a4,0(a5)
	.loc 1 1937 18
	lw	a5,-28(s0)
	li	a4,1
	sb	a4,1(a5)
	.loc 1 1938 24
	lw	a5,-36(s0)
	lbu	a4,68(a5)
	.loc 1 1938 17
	lw	a5,-28(s0)
	sb	a4,2(a5)
	.loc 1 1939 18
	lw	a5,-40(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	lwip_htonl
	mv	a4,a0
	.loc 1 1939 16 discriminator 1
	lw	a5,-28(s0)
	andi	a3,a4,255
	lbu	a2,4(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,4(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,5(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,5(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,6(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,6(a5)
	srli	a4,a4,24
	lbu	a3,7(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,7(a5)
	.loc 1 1943 6
	lbu	a4,-41(s0)
	li	a5,8
	beq	a4,a5,.L295
	.loc 1 1943 27 discriminator 1
	lbu	a4,-41(s0)
	li	a5,4
	beq	a4,a5,.L295
	.loc 1 1943 50 discriminator 2
	lbu	a4,-41(s0)
	li	a5,7
	beq	a4,a5,.L295
	.loc 1 1943 73 discriminator 3
	lbu	a4,-41(s0)
	li	a5,3
	bne	a4,a5,.L296
	.loc 1 1945 14
	lw	a5,-40(s0)
	lbu	a4,5(a5)
	.loc 1 1944 28
	li	a5,5
	beq	a4,a5,.L295
	.loc 1 1945 53
	lw	a5,-40(s0)
	lbu	a4,5(a5)
	.loc 1 1945 46
	li	a5,4
	bne	a4,a5,.L296
.L295:
	.loc 1 1946 54
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 1946 76
	lw	a4,0(a5)
	.loc 1 1946 29
	lw	a5,-28(s0)
	andi	a3,a4,255
	lbu	a2,12(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,12(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,13(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,13(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,14(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,14(a5)
	srli	a4,a4,24
	lbu	a3,15(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,15(a5)
.L296:
	.loc 1 1948 10
	sh	zero,-18(s0)
	.loc 1 1948 3
	j	.L297
.L298:
	.loc 1 1950 39
	lhu	a4,-18(s0)
	.loc 1 1950 20
	lhu	a5,-18(s0)
	.loc 1 1950 39
	lw	a3,-36(s0)
	add	a4,a3,a4
	lbu	a4,62(a4)
	.loc 1 1950 24
	lw	a3,-28(s0)
	add	a5,a3,a5
	sb	a4,28(a5)
	.loc 1 1948 53 discriminator 3
	lhu	a5,-18(s0)
	addi	a5,a5,1
	sh	a5,-18(s0)
.L297:
	.loc 1 1948 17 discriminator 1
	lhu	a4,-18(s0)
	li	a5,5
	bleu	a4,a5,.L298
	.loc 1 1952 19
	lw	a5,-28(s0)
	lbu	a4,236(a5)
	andi	a4,a4,0
	ori	a4,a4,99
	sb	a4,236(a5)
	lbu	a4,237(a5)
	andi	a4,a4,0
	ori	a4,a4,-126
	sb	a4,237(a5)
	lbu	a4,238(a5)
	andi	a4,a4,0
	ori	a4,a4,83
	sb	a4,238(a5)
	lbu	a4,239(a5)
	andi	a4,a4,0
	ori	a4,a4,99
	sb	a4,239(a5)
	.loc 1 1954 47
	lw	a5,-28(s0)
	addi	a5,a5,240
	.loc 1 1954 25
	li	a3,1
	li	a2,53
	mv	a1,a5
	li	a0,0
	call	dhcp_option
	mv	a5,a0
	sh	a5,-30(s0)
	.loc 1 1955 70
	lw	a5,-28(s0)
	addi	a4,a5,240
	.loc 1 1955 25
	lbu	a3,-41(s0)
	lhu	a5,-30(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	dhcp_option_byte
	mv	a5,a0
	sh	a5,-30(s0)
	.loc 1 1956 6
	lw	a5,-48(s0)
	beq	a5,zero,.L299
	.loc 1 1957 22
	lw	a5,-48(s0)
	lhu	a4,-30(s0)
	sh	a4,0(a5)
.L299:
	.loc 1 1959 10
	lw	a5,-24(s0)
.L289:
	.loc 1 1960 1
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
.LFE40:
	.size	dhcp_create_msg, .-dhcp_create_msg
	.section	.text.dhcp_option_trailer,"ax",@progbits
	.align	1
	.type	dhcp_option_trailer, @function
dhcp_option_trailer:
.LFB41:
	.loc 1 1970 1
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
	sh	a5,-18(s0)
	.loc 1 1971 26
	lhu	a5,-18(s0)
	addi	a4,a5,1
	sh	a4,-18(s0)
	mv	a4,a5
	.loc 1 1971 10
	lw	a5,-24(s0)
	add	a5,a5,a4
	.loc 1 1971 30
	li	a4,-1
	sb	a4,0(a5)
	.loc 1 1973 9
	j	.L301
.L304:
	.loc 1 1976 28
	lhu	a5,-18(s0)
	addi	a4,a5,1
	sh	a4,-18(s0)
	mv	a4,a5
	.loc 1 1976 12
	lw	a5,-24(s0)
	add	a5,a5,a4
	.loc 1 1976 32
	sb	zero,0(a5)
.L301:
	.loc 1 1973 61
	lhu	a4,-18(s0)
	li	a5,67
	bleu	a4,a5,.L302
	.loc 1 1973 55 discriminator 2
	lhu	a5,-18(s0)
	andi	a5,a5,3
	.loc 1 1973 35 discriminator 2
	beq	a5,zero,.L303
.L302:
	.loc 1 1973 61 discriminator 3
	lhu	a4,-18(s0)
	li	a5,67
	bleu	a4,a5,.L304
.L303:
	.loc 1 1979 23
	lhu	a5,-18(s0)
	addi	a5,a5,240
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1979 3
	mv	a1,a5
	lw	a0,-28(s0)
	call	pbuf_realloc
	.loc 1 1980 1
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
.LFE41:
	.size	dhcp_option_trailer, .-dhcp_option_trailer
	.section	.text.dhcp_supplied_address,"ax",@progbits
	.align	1
	.globl	dhcp_supplied_address
	.type	dhcp_supplied_address, @function
dhcp_supplied_address:
.LFB42:
	.loc 1 1990 1
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
	.loc 1 1991 6
	lw	a5,-36(s0)
	beq	a5,zero,.L306
	.loc 1 1991 61 discriminator 1
	lw	a5,-36(s0)
	lw	a5,40(a5)
	.loc 1 1991 22 discriminator 1
	beq	a5,zero,.L306
.LBB24:
	.loc 1 1992 18
	lw	a5,-36(s0)
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 1993 17
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	.loc 1 1993 86
	li	a5,10
	beq	a4,a5,.L307
	.loc 1 1993 54 discriminator 2
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	.loc 1 1993 46 discriminator 2
	li	a5,5
	beq	a4,a5,.L307
	.loc 1 1994 17
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	.loc 1 1993 86 discriminator 4
	li	a5,4
	bne	a4,a5,.L308
.L307:
	.loc 1 1993 86 is_stmt 0 discriminator 5
	li	a5,1
	.loc 1 1993 86
	j	.L309
.L308:
	.loc 1 1993 86 discriminator 6
	li	a5,0
.L309:
	.loc 1 1993 86 discriminator 8
	andi	a5,a5,0xff
	.loc 1 1993 86
	j	.L310
.L306:
.LBE24:
	.loc 1 1996 10 is_stmt 1
	li	a5,0
.L310:
	.loc 1 1997 1
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
.LFE42:
	.size	dhcp_supplied_address, .-dhcp_supplied_address
	.section	.sbss.xid.0,"aw",@nobits
	.align	2
	.type	xid.0, @object
	.size	xid.0, 4
xid.0:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/mem.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/acd.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/ip4.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/udp.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/acd.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/dhcp.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/dhcp.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/iana.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/dns.h"
	.file 22 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/def.h"
	.file 23 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/config/lwipopts.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1dbb
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x26
	.4byte	.LASF337
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x27
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xc
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0xc
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x28
	.byte	0x4
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x17
	.4byte	0x86
	.uleb128 0x7
	.4byte	0x8d
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x32
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x47
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xa3
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0x97
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xaf
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xbb
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x5
	.byte	0x43
	.byte	0xf
	.4byte	0xdf
	.uleb128 0x14
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0x6
	.byte	0x34
	.4byte	0x171
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0xc7
	.uleb128 0x14
	.byte	0x5
	.byte	0x1
	.4byte	0x32
	.byte	0x7
	.byte	0x35
	.4byte	0x1ea
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0
	.uleb128 0xa
	.4byte	.LASF40
	.sleb128 -1
	.uleb128 0xa
	.4byte	.LASF41
	.sleb128 -2
	.uleb128 0xa
	.4byte	.LASF42
	.sleb128 -3
	.uleb128 0xa
	.4byte	.LASF43
	.sleb128 -4
	.uleb128 0xa
	.4byte	.LASF44
	.sleb128 -5
	.uleb128 0xa
	.4byte	.LASF45
	.sleb128 -6
	.uleb128 0xa
	.4byte	.LASF46
	.sleb128 -7
	.uleb128 0xa
	.4byte	.LASF47
	.sleb128 -8
	.uleb128 0xa
	.4byte	.LASF48
	.sleb128 -9
	.uleb128 0xa
	.4byte	.LASF49
	.sleb128 -10
	.uleb128 0xa
	.4byte	.LASF50
	.sleb128 -11
	.uleb128 0xa
	.4byte	.LASF51
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF52
	.sleb128 -13
	.uleb128 0xa
	.4byte	.LASF53
	.sleb128 -14
	.uleb128 0xa
	.4byte	.LASF54
	.sleb128 -15
	.uleb128 0xa
	.4byte	.LASF55
	.sleb128 -16
	.byte	0
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x7
	.byte	0x60
	.byte	0xe
	.4byte	0xd3
	.uleb128 0x14
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0x8
	.byte	0x59
	.4byte	0x222
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0xb6
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0xa2
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x8e
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x8
	.byte	0x70
	.byte	0x3
	.4byte	0x1f6
	.uleb128 0x14
	.byte	0x7
	.byte	0x2
	.4byte	0x47
	.byte	0x8
	.byte	0x91
	.4byte	0x256
	.uleb128 0x15
	.4byte	.LASF63
	.2byte	0x280
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x41
	.uleb128 0x15
	.4byte	.LASF66
	.2byte	0x182
	.byte	0
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x8
	.byte	0xa8
	.byte	0x3
	.4byte	0x22e
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0x10
	.byte	0x8
	.byte	0xba
	.4byte	0x2d7
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x8
	.byte	0xbc
	.byte	0x10
	.4byte	0x2dc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x8
	.byte	0xbf
	.byte	0x9
	.4byte	0x84
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x8
	.byte	0xc8
	.byte	0x9
	.4byte	0xdf
	.byte	0x8
	.uleb128 0xd
	.string	"len"
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0xdf
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x8
	.byte	0xd0
	.byte	0x8
	.4byte	0xc7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x8
	.byte	0xd3
	.byte	0x8
	.4byte	0xc7
	.byte	0xd
	.uleb128 0xd
	.string	"ref"
	.byte	0x8
	.byte	0xda
	.byte	0x8
	.4byte	0xc7
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x8
	.byte	0xdd
	.byte	0x8
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.uleb128 0x17
	.4byte	0x262
	.uleb128 0x7
	.4byte	0x262
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0x4
	.byte	0x9
	.byte	0x33
	.4byte	0x2fb
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x9
	.byte	0x34
	.byte	0x9
	.4byte	0xeb
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF77
	.byte	0x9
	.byte	0x39
	.byte	0x19
	.4byte	0x2e1
	.uleb128 0x17
	.4byte	0x2fb
	.uleb128 0x29
	.4byte	.LASF78
	.byte	0xa
	.2byte	0x126
	.byte	0x14
	.4byte	0x2fb
	.uleb128 0x17
	.4byte	0x30c
	.uleb128 0x1f
	.4byte	.LASF79
	.byte	0xa
	.2byte	0x18e
	.byte	0x18
	.4byte	0x319
	.uleb128 0x1f
	.4byte	.LASF80
	.byte	0xa
	.2byte	0x18f
	.byte	0x18
	.4byte	0x319
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x1
	.4byte	0x39
	.byte	0xb
	.byte	0x71
	.4byte	0x361
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0x3
	.byte	0
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0x1
	.4byte	0x39
	.byte	0xb
	.byte	0x9f
	.4byte	0x37e
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x383
	.uleb128 0x2a
	.4byte	.LASF89
	.byte	0x54
	.byte	0xb
	.2byte	0x10d
	.byte	0x8
	.4byte	0x495
	.uleb128 0x9
	.4byte	.LASF68
	.2byte	0x110
	.byte	0x11
	.4byte	0x37e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF90
	.2byte	0x115
	.byte	0xd
	.4byte	0x30c
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF91
	.2byte	0x116
	.byte	0xd
	.4byte	0x30c
	.byte	0x8
	.uleb128 0x20
	.string	"gw"
	.2byte	0x117
	.byte	0xd
	.4byte	0x30c
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF92
	.2byte	0x129
	.byte	0x12
	.4byte	0x49a
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF93
	.2byte	0x12f
	.byte	0x13
	.4byte	0x4bf
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF94
	.2byte	0x134
	.byte	0x17
	.4byte	0x4ee
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF95
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x513
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF96
	.2byte	0x144
	.byte	0x1c
	.4byte	0x513
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF97
	.2byte	0x14c
	.byte	0x9
	.4byte	0x84
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF98
	.2byte	0x14e
	.byte	0x9
	.4byte	0x559
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF99
	.2byte	0x152
	.byte	0xf
	.4byte	0x92
	.byte	0x38
	.uleb128 0x20
	.string	"mtu"
	.2byte	0x158
	.byte	0x9
	.4byte	0xdf
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF100
	.2byte	0x15e
	.byte	0x8
	.4byte	0x569
	.byte	0x3e
	.uleb128 0x9
	.4byte	.LASF101
	.2byte	0x160
	.byte	0x8
	.4byte	0xc7
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF72
	.2byte	0x162
	.byte	0x8
	.4byte	0xc7
	.byte	0x45
	.uleb128 0x9
	.4byte	.LASF102
	.2byte	0x164
	.byte	0x8
	.4byte	0x579
	.byte	0x46
	.uleb128 0x20
	.string	"num"
	.2byte	0x167
	.byte	0x8
	.4byte	0xc7
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF103
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x52f
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF104
	.2byte	0x185
	.byte	0xf
	.4byte	0x5ff
	.byte	0x50
	.byte	0
	.uleb128 0x17
	.4byte	0x383
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0xb
	.byte	0xb5
	.byte	0x11
	.4byte	0x4a6
	.uleb128 0x7
	.4byte	0x4ab
	.uleb128 0x1b
	.4byte	0x1ea
	.4byte	0x4bf
	.uleb128 0x4
	.4byte	0x2dc
	.uleb128 0x4
	.4byte	0x37e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF106
	.byte	0xb
	.byte	0xc0
	.byte	0x11
	.4byte	0x4cb
	.uleb128 0x7
	.4byte	0x4d0
	.uleb128 0x1b
	.4byte	0x1ea
	.4byte	0x4e9
	.uleb128 0x4
	.4byte	0x37e
	.uleb128 0x4
	.4byte	0x2dc
	.uleb128 0x4
	.4byte	0x4e9
	.byte	0
	.uleb128 0x7
	.4byte	0x307
	.uleb128 0x6
	.4byte	.LASF107
	.byte	0xb
	.byte	0xd7
	.byte	0x11
	.4byte	0x4fa
	.uleb128 0x7
	.4byte	0x4ff
	.uleb128 0x1b
	.4byte	0x1ea
	.4byte	0x513
	.uleb128 0x4
	.4byte	0x37e
	.uleb128 0x4
	.4byte	0x2dc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF108
	.byte	0xb
	.byte	0xd9
	.byte	0x10
	.4byte	0x51f
	.uleb128 0x7
	.4byte	0x524
	.uleb128 0x21
	.4byte	0x52f
	.uleb128 0x4
	.4byte	0x37e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF109
	.byte	0xb
	.byte	0xdc
	.byte	0x11
	.4byte	0x53b
	.uleb128 0x7
	.4byte	0x540
	.uleb128 0x1b
	.4byte	0x1ea
	.4byte	0x559
	.uleb128 0x4
	.4byte	0x37e
	.uleb128 0x4
	.4byte	0x4e9
	.uleb128 0x4
	.4byte	0x361
	.byte	0
	.uleb128 0xf
	.4byte	0x84
	.4byte	0x569
	.uleb128 0x10
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	0xc7
	.4byte	0x579
	.uleb128 0x10
	.4byte	0x6a
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.4byte	0x86
	.4byte	0x589
	.uleb128 0x10
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.string	"acd"
	.byte	0x14
	.byte	0xc
	.byte	0x47
	.byte	0x8
	.4byte	0x5ff
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xc
	.byte	0x4a
	.byte	0xf
	.4byte	0x5ff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0xc
	.byte	0x4c
	.byte	0xe
	.4byte	0x2fb
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0xc
	.byte	0x4e
	.byte	0x14
	.4byte	0x87f
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0xc
	.byte	0x50
	.byte	0x8
	.4byte	0xc7
	.byte	0x9
	.uleb128 0xd
	.string	"ttw"
	.byte	0xc
	.byte	0x52
	.byte	0x9
	.4byte	0xdf
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xc
	.byte	0x54
	.byte	0x8
	.4byte	0xc7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xc
	.byte	0x56
	.byte	0x8
	.4byte	0xc7
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0xc
	.byte	0x59
	.byte	0x1b
	.4byte	0x8b7
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0x589
	.uleb128 0x1f
	.4byte	.LASF115
	.byte	0xb
	.2byte	0x1a7
	.byte	0x16
	.4byte	0x37e
	.uleb128 0x7
	.4byte	0x319
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x4
	.byte	0xd
	.byte	0x35
	.4byte	0x630
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0xd
	.byte	0x36
	.byte	0x9
	.4byte	0xeb
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF117
	.byte	0xd
	.byte	0x3d
	.byte	0x20
	.4byte	0x616
	.uleb128 0x16
	.4byte	.LASF118
	.byte	0x14
	.byte	0xd
	.byte	0x49
	.4byte	0x6cb
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0xd
	.byte	0x4b
	.byte	0x8
	.4byte	0xc7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0xd
	.byte	0x4d
	.byte	0x8
	.4byte	0xc7
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0xd
	.byte	0x4f
	.byte	0x9
	.4byte	0xdf
	.byte	0x2
	.uleb128 0xd
	.string	"_id"
	.byte	0xd
	.byte	0x51
	.byte	0x9
	.4byte	0xdf
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0xd
	.byte	0x53
	.byte	0x9
	.4byte	0xdf
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0xd
	.byte	0x59
	.byte	0x8
	.4byte	0xc7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0xd
	.byte	0x5b
	.byte	0x8
	.4byte	0xc7
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0xd
	.byte	0x5d
	.byte	0x9
	.4byte	0xdf
	.byte	0xa
	.uleb128 0xd
	.string	"src"
	.byte	0xd
	.byte	0x5f
	.byte	0x10
	.4byte	0x630
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0xd
	.byte	0x60
	.byte	0x10
	.4byte	0x630
	.byte	0x10
	.byte	0
	.uleb128 0x17
	.4byte	0x63c
	.uleb128 0x16
	.4byte	.LASF127
	.byte	0x18
	.byte	0xe
	.byte	0x76
	.4byte	0x72b
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0xe
	.byte	0x79
	.byte	0x11
	.4byte	0x37e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0xe
	.byte	0x7b
	.byte	0x11
	.4byte	0x37e
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0xe
	.byte	0x7e
	.byte	0x18
	.4byte	0x72b
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0xe
	.byte	0x85
	.byte	0x9
	.4byte	0xdf
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0xe
	.byte	0x87
	.byte	0xd
	.4byte	0x30c
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0xe
	.byte	0x89
	.byte	0xd
	.4byte	0x30c
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x6cb
	.uleb128 0x2c
	.4byte	.LASF134
	.byte	0xe
	.byte	0x8b
	.byte	0x1a
	.4byte	0x6d0
	.uleb128 0x6
	.4byte	.LASF135
	.byte	0xf
	.byte	0x4d
	.byte	0x10
	.4byte	0x748
	.uleb128 0x7
	.4byte	0x74d
	.uleb128 0x21
	.4byte	0x76c
	.uleb128 0x4
	.4byte	0x84
	.uleb128 0x4
	.4byte	0x76c
	.uleb128 0x4
	.4byte	0x2dc
	.uleb128 0x4
	.4byte	0x611
	.uleb128 0x4
	.4byte	0xdf
	.byte	0
	.uleb128 0x7
	.4byte	0x771
	.uleb128 0x16
	.4byte	.LASF136
	.byte	0x28
	.byte	0xf
	.byte	0x51
	.4byte	0x841
	.uleb128 0x3
	.4byte	.LASF137
	.byte	0xf
	.byte	0x53
	.byte	0xd
	.4byte	0x30c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF138
	.byte	0xf
	.byte	0x53
	.byte	0x21
	.4byte	0x30c
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0xf
	.byte	0x53
	.byte	0x31
	.4byte	0xc7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0xf
	.byte	0x53
	.byte	0x41
	.4byte	0xc7
	.byte	0x9
	.uleb128 0xd
	.string	"tos"
	.byte	0xf
	.byte	0x53
	.byte	0x52
	.4byte	0xc7
	.byte	0xa
	.uleb128 0xd
	.string	"ttl"
	.byte	0xf
	.byte	0x53
	.byte	0x5c
	.4byte	0xc7
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xf
	.byte	0x57
	.byte	0x13
	.4byte	0x76c
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xf
	.byte	0x59
	.byte	0x8
	.4byte	0xc7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF141
	.byte	0xf
	.byte	0x5b
	.byte	0x9
	.4byte	0xdf
	.byte	0x12
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0xf
	.byte	0x5b
	.byte	0x15
	.4byte	0xdf
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0xf
	.byte	0x60
	.byte	0xe
	.4byte	0x2fb
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0xf
	.byte	0x63
	.byte	0x8
	.4byte	0xc7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF145
	.byte	0xf
	.byte	0x65
	.byte	0x8
	.4byte	0xc7
	.byte	0x1d
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0xf
	.byte	0x6e
	.byte	0xf
	.4byte	0x73c
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF147
	.byte	0xf
	.byte	0x70
	.byte	0x9
	.4byte	0x84
	.byte	0x24
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0x10
	.byte	0x3a
	.4byte	0x87f
	.uleb128 0x2
	.4byte	.LASF148
	.byte	0
	.uleb128 0x2
	.4byte	.LASF149
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF152
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF154
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF155
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF156
	.byte	0x10
	.byte	0x4f
	.byte	0x3
	.4byte	0x841
	.uleb128 0x14
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0x10
	.byte	0x51
	.4byte	0x8ab
	.uleb128 0x2
	.4byte	.LASF157
	.byte	0
	.uleb128 0x2
	.4byte	.LASF158
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF160
	.byte	0x10
	.byte	0x55
	.byte	0x3
	.4byte	0x88b
	.uleb128 0x6
	.4byte	.LASF161
	.byte	0xc
	.byte	0x44
	.byte	0x10
	.4byte	0x8c3
	.uleb128 0x7
	.4byte	0x8c8
	.uleb128 0x21
	.4byte	0x8d8
	.uleb128 0x4
	.4byte	0x37e
	.uleb128 0x4
	.4byte	0x8ab
	.byte	0
	.uleb128 0x6
	.4byte	.LASF162
	.byte	0x11
	.byte	0x3d
	.byte	0xf
	.4byte	0xdf
	.uleb128 0x16
	.4byte	.LASF163
	.byte	0x48
	.byte	0x11
	.byte	0x53
	.4byte	0x9f5
	.uleb128 0xd
	.string	"xid"
	.byte	0x11
	.byte	0x56
	.byte	0x9
	.4byte	0xeb
	.byte	0
	.uleb128 0x3
	.4byte	.LASF164
	.byte	0x11
	.byte	0x58
	.byte	0x8
	.4byte	0xc7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0x11
	.byte	0x5a
	.byte	0x8
	.4byte	0xc7
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF165
	.byte	0x11
	.byte	0x5c
	.byte	0x8
	.4byte	0xc7
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x11
	.byte	0x5e
	.byte	0x8
	.4byte	0xc7
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF166
	.byte	0x11
	.byte	0x60
	.byte	0x12
	.4byte	0x8d8
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF167
	.byte	0x11
	.byte	0x61
	.byte	0x12
	.4byte	0x8d8
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF168
	.byte	0x11
	.byte	0x62
	.byte	0x12
	.4byte	0x8d8
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF169
	.byte	0x11
	.byte	0x63
	.byte	0x12
	.4byte	0x8d8
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF170
	.byte	0x11
	.byte	0x64
	.byte	0x12
	.4byte	0x8d8
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0x11
	.byte	0x65
	.byte	0x12
	.4byte	0x8d8
	.byte	0x12
	.uleb128 0x3
	.4byte	.LASF172
	.byte	0x11
	.byte	0x66
	.byte	0x12
	.4byte	0x8d8
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF173
	.byte	0x11
	.byte	0x67
	.byte	0xd
	.4byte	0x30c
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF174
	.byte	0x11
	.byte	0x68
	.byte	0xe
	.4byte	0x2fb
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF175
	.byte	0x11
	.byte	0x69
	.byte	0xe
	.4byte	0x2fb
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF176
	.byte	0x11
	.byte	0x6a
	.byte	0xe
	.4byte	0x2fb
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0x11
	.byte	0x6c
	.byte	0x9
	.4byte	0xeb
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0x11
	.byte	0x6d
	.byte	0x9
	.4byte	0xeb
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF179
	.byte	0x11
	.byte	0x6e
	.byte	0x9
	.4byte	0xeb
	.byte	0x30
	.uleb128 0xd
	.string	"acd"
	.byte	0x11
	.byte	0x75
	.byte	0xe
	.4byte	0x589
	.byte	0x34
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF180
	.2byte	0x134
	.byte	0x12
	.byte	0x3f
	.byte	0x8
	.4byte	0xad3
	.uleb128 0xd
	.string	"op"
	.byte	0x12
	.byte	0x41
	.byte	0x8
	.4byte	0xc7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF181
	.byte	0x12
	.byte	0x42
	.byte	0x8
	.4byte	0xc7
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF182
	.byte	0x12
	.byte	0x43
	.byte	0x8
	.4byte	0xc7
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF183
	.byte	0x12
	.byte	0x44
	.byte	0x8
	.4byte	0xc7
	.byte	0x3
	.uleb128 0xd
	.string	"xid"
	.byte	0x12
	.byte	0x45
	.byte	0x9
	.4byte	0xeb
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF184
	.byte	0x12
	.byte	0x46
	.byte	0x9
	.4byte	0xdf
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x12
	.byte	0x47
	.byte	0x9
	.4byte	0xdf
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF185
	.byte	0x12
	.byte	0x48
	.byte	0x10
	.4byte	0x630
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF186
	.byte	0x12
	.byte	0x49
	.byte	0x10
	.4byte	0x630
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF187
	.byte	0x12
	.byte	0x4a
	.byte	0x10
	.4byte	0x630
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF188
	.byte	0x12
	.byte	0x4b
	.byte	0x10
	.4byte	0x630
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF189
	.byte	0x12
	.byte	0x4c
	.byte	0x8
	.4byte	0xad3
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF190
	.byte	0x12
	.byte	0x4d
	.byte	0x8
	.4byte	0xae3
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF191
	.byte	0x12
	.byte	0x4e
	.byte	0x8
	.4byte	0xaf3
	.byte	0x6c
	.uleb128 0x3
	.4byte	.LASF192
	.byte	0x12
	.byte	0x4f
	.byte	0x9
	.4byte	0xeb
	.byte	0xec
	.uleb128 0x3
	.4byte	.LASF193
	.byte	0x12
	.byte	0x5a
	.byte	0x8
	.4byte	0xb03
	.byte	0xf0
	.byte	0
	.uleb128 0xf
	.4byte	0xc7
	.4byte	0xae3
	.uleb128 0x10
	.4byte	0x6a
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.4byte	0xc7
	.4byte	0xaf3
	.uleb128 0x10
	.4byte	0x6a
	.byte	0x3f
	.byte	0
	.uleb128 0xf
	.4byte	0xc7
	.4byte	0xb03
	.uleb128 0x10
	.4byte	0x6a
	.byte	0x7f
	.byte	0
	.uleb128 0xf
	.4byte	0xc7
	.4byte	0xb13
	.uleb128 0x10
	.4byte	0x6a
	.byte	0x43
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0x12
	.byte	0x63
	.4byte	0xb6f
	.uleb128 0x2
	.4byte	.LASF194
	.byte	0
	.uleb128 0x2
	.4byte	.LASF195
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF196
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF197
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF198
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF200
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF202
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF203
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF204
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF205
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF206
	.byte	0xc
	.byte	0
	.uleb128 0x18
	.4byte	.LASF207
	.byte	0x1
	.4byte	0x39
	.byte	0x13
	.byte	0x34
	.4byte	0xb86
	.uleb128 0x2
	.4byte	.LASF208
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.4byte	.LASF209
	.byte	0x2
	.4byte	0x47
	.byte	0x13
	.byte	0x3e
	.4byte	0xbf0
	.uleb128 0x2
	.4byte	.LASF210
	.byte	0x19
	.uleb128 0x2
	.4byte	.LASF211
	.byte	0x43
	.uleb128 0x2
	.4byte	.LASF212
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF213
	.byte	0x45
	.uleb128 0x2
	.4byte	.LASF214
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF215
	.byte	0x7b
	.uleb128 0x2
	.4byte	.LASF216
	.byte	0x89
	.uleb128 0x2
	.4byte	.LASF217
	.byte	0xa1
	.uleb128 0x2
	.4byte	.LASF218
	.byte	0xa2
	.uleb128 0x15
	.4byte	.LASF219
	.2byte	0x1bb
	.uleb128 0x15
	.4byte	.LASF220
	.2byte	0x1d1
	.uleb128 0x15
	.4byte	.LASF221
	.2byte	0x75b
	.uleb128 0x15
	.4byte	.LASF222
	.2byte	0x14e9
	.uleb128 0x15
	.4byte	.LASF223
	.2byte	0x22b3
	.byte	0
	.uleb128 0x18
	.4byte	.LASF224
	.byte	0x1
	.4byte	0x39
	.byte	0x1
	.byte	0xb5
	.4byte	0xc43
	.uleb128 0x2
	.4byte	.LASF225
	.byte	0
	.uleb128 0x2
	.4byte	.LASF226
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF227
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF228
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF229
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF231
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF232
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF233
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF234
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF235
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.4byte	0xeb
	.4byte	0xc53
	.uleb128 0x10
	.4byte	0x6a
	.byte	0x9
	.byte	0
	.uleb128 0x19
	.4byte	.LASF236
	.byte	0xcb
	.byte	0xe
	.4byte	0xc43
	.uleb128 0x5
	.byte	0x3
	.4byte	dhcp_rx_options_val
	.uleb128 0xf
	.4byte	0xc7
	.4byte	0xc74
	.uleb128 0x10
	.4byte	0x6a
	.byte	0x9
	.byte	0
	.uleb128 0x19
	.4byte	.LASF237
	.byte	0xcf
	.byte	0xd
	.4byte	0xc64
	.uleb128 0x5
	.byte	0x3
	.4byte	dhcp_rx_options_given
	.uleb128 0xf
	.4byte	0xc7
	.4byte	0xc95
	.uleb128 0x10
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.4byte	.LASF238
	.byte	0xd1
	.byte	0xd
	.4byte	0xc85
	.uleb128 0x5
	.byte	0x3
	.4byte	dhcp_discover_request_options
	.uleb128 0x19
	.4byte	.LASF239
	.byte	0xea
	.byte	0x18
	.4byte	0x76c
	.uleb128 0x5
	.byte	0x3
	.4byte	dhcp_pcb
	.uleb128 0x19
	.4byte	.LASF240
	.byte	0xeb
	.byte	0xd
	.4byte	0xc7
	.uleb128 0x5
	.byte	0x3
	.4byte	dhcp_pcb_refcount
	.uleb128 0x25
	.4byte	.LASF244
	.byte	0x8
	.2byte	0x11a
	.4byte	0xcdf
	.uleb128 0x4
	.4byte	0x2dc
	.uleb128 0x4
	.4byte	0xdf
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF261
	.byte	0x17
	.2byte	0x127
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x22
	.4byte	.LASF241
	.2byte	0x113
	.byte	0xe
	.4byte	0x2dc
	.4byte	0xd0c
	.uleb128 0x4
	.4byte	0x222
	.uleb128 0x4
	.4byte	0xdf
	.uleb128 0x4
	.4byte	0x256
	.byte	0
	.uleb128 0x22
	.4byte	.LASF242
	.2byte	0x12c
	.byte	0x7
	.4byte	0xdf
	.4byte	0xd31
	.uleb128 0x4
	.4byte	0xd31
	.uleb128 0x4
	.4byte	0x84
	.uleb128 0x4
	.4byte	0xdf
	.uleb128 0x4
	.4byte	0xdf
	.byte	0
	.uleb128 0x7
	.4byte	0x2d7
	.uleb128 0x11
	.4byte	.LASF243
	.byte	0x14
	.byte	0x29
	.byte	0x8
	.4byte	0x71
	.4byte	0xd4c
	.uleb128 0x4
	.4byte	0x92
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF245
	.byte	0xc
	.byte	0x5e
	.4byte	0xd62
	.uleb128 0x4
	.4byte	0x37e
	.uleb128 0x4
	.4byte	0x5ff
	.byte	0
	.uleb128 0x11
	.4byte	.LASF246
	.byte	0xf
	.byte	0x82
	.byte	0x7
	.4byte	0x1ea
	.4byte	0xd8c
	.uleb128 0x4
	.4byte	0x76c
	.uleb128 0x4
	.4byte	0x2dc
	.uleb128 0x4
	.4byte	0x611
	.uleb128 0x4
	.4byte	0xdf
	.uleb128 0x4
	.4byte	0x37e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF247
	.byte	0xc
	.byte	0x5c
	.byte	0x7
	.4byte	0x1ea
	.4byte	0xdac
	.uleb128 0x4
	.4byte	0x37e
	.uleb128 0x4
	.4byte	0x5ff
	.uleb128 0x4
	.4byte	0x8b7
	.byte	0
	.uleb128 0x11
	.4byte	.LASF248
	.byte	0x5
	.byte	0x4a
	.byte	0x7
	.4byte	0x84
	.4byte	0xdc2
	.uleb128 0x4
	.4byte	0xf7
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF249
	.byte	0x5
	.byte	0x4c
	.4byte	0xdd3
	.uleb128 0x4
	.4byte	0x84
	.byte	0
	.uleb128 0x11
	.4byte	.LASF250
	.byte	0x14
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0xdf3
	.uleb128 0x4
	.4byte	0x84
	.uleb128 0x4
	.4byte	0x2b
	.uleb128 0x4
	.4byte	0x71
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF251
	.byte	0x15
	.byte	0x6b
	.4byte	0xe09
	.uleb128 0x4
	.4byte	0xc7
	.uleb128 0x4
	.4byte	0x611
	.byte	0
	.uleb128 0x22
	.4byte	.LASF252
	.2byte	0x125
	.byte	0x6
	.4byte	0xc7
	.4byte	0xe1f
	.uleb128 0x4
	.4byte	0x2dc
	.byte	0
	.uleb128 0x11
	.4byte	.LASF253
	.byte	0xf
	.byte	0x85
	.byte	0x7
	.4byte	0x1ea
	.4byte	0xe4e
	.uleb128 0x4
	.4byte	0x76c
	.uleb128 0x4
	.4byte	0x2dc
	.uleb128 0x4
	.4byte	0x611
	.uleb128 0x4
	.4byte	0xdf
	.uleb128 0x4
	.4byte	0x37e
	.uleb128 0x4
	.4byte	0x611
	.byte	0
	.uleb128 0x11
	.4byte	.LASF254
	.byte	0x16
	.byte	0x65
	.byte	0x7
	.4byte	0xeb
	.4byte	0xe64
	.uleb128 0x4
	.4byte	0xeb
	.byte	0
	.uleb128 0x11
	.4byte	.LASF255
	.byte	0xc
	.byte	0x5f
	.byte	0x7
	.4byte	0x1ea
	.4byte	0xe84
	.uleb128 0x4
	.4byte	0x37e
	.uleb128 0x4
	.4byte	0x5ff
	.uleb128 0x4
	.4byte	0x2fb
	.byte	0
	.uleb128 0x25
	.4byte	.LASF256
	.byte	0xb
	.2byte	0x1b5
	.4byte	0xea5
	.uleb128 0x4
	.4byte	0x37e
	.uleb128 0x4
	.4byte	0x4e9
	.uleb128 0x4
	.4byte	0x4e9
	.uleb128 0x4
	.4byte	0x4e9
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF257
	.byte	0xf
	.byte	0x79
	.4byte	0xeb6
	.uleb128 0x4
	.4byte	0x76c
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF258
	.byte	0xf
	.byte	0x80
	.4byte	0xed1
	.uleb128 0x4
	.4byte	0x76c
	.uleb128 0x4
	.4byte	0x73c
	.uleb128 0x4
	.4byte	0x84
	.byte	0
	.uleb128 0x11
	.4byte	.LASF259
	.byte	0xf
	.byte	0x7d
	.byte	0x7
	.4byte	0x1ea
	.4byte	0xef1
	.uleb128 0x4
	.4byte	0x76c
	.uleb128 0x4
	.4byte	0x611
	.uleb128 0x4
	.4byte	0xdf
	.byte	0
	.uleb128 0x11
	.4byte	.LASF260
	.byte	0xf
	.byte	0x7a
	.byte	0x7
	.4byte	0x1ea
	.4byte	0xf11
	.uleb128 0x4
	.4byte	0x76c
	.uleb128 0x4
	.4byte	0x611
	.uleb128 0x4
	.4byte	0xdf
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF262
	.byte	0xf
	.byte	0x77
	.byte	0x12
	.4byte	0x76c
	.uleb128 0x30
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x7c5
	.byte	0x1
	.4byte	0xc7
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf61
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x7c5
	.byte	0x2b
	.4byte	0xf61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x7c8
	.byte	0x12
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x495
	.uleb128 0x7
	.4byte	0x8e4
	.uleb128 0xe
	.4byte	.LASF268
	.2byte	0x7b1
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfae
	.uleb128 0x5
	.4byte	.LASF263
	.2byte	0x7b1
	.byte	0x1b
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x5
	.4byte	.LASF193
	.2byte	0x7b1
	.byte	0x32
	.4byte	0x171
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF264
	.2byte	0x7b1
	.byte	0x48
	.4byte	0x2dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LASF274
	.2byte	0x75b
	.4byte	0x2dc
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1050
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x75b
	.byte	0x1f
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF163
	.2byte	0x75b
	.byte	0x33
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF265
	.2byte	0x75b
	.byte	0x3e
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x5
	.4byte	.LASF263
	.2byte	0x75b
	.byte	0x53
	.4byte	0x1050
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"i"
	.2byte	0x75d
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF264
	.2byte	0x75e
	.byte	0x10
	.4byte	0x2dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF266
	.2byte	0x75f
	.byte	0x14
	.4byte	0x1055
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF267
	.2byte	0x760
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0xb
	.string	"xid"
	.2byte	0x768
	.byte	0x10
	.4byte	0xeb
	.uleb128 0x5
	.byte	0x3
	.4byte	xid.0
	.byte	0
	.uleb128 0x7
	.4byte	0xdf
	.uleb128 0x7
	.4byte	0x9f5
	.uleb128 0xe
	.4byte	.LASF269
	.2byte	0x6e2
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x111d
	.uleb128 0x1c
	.string	"arg"
	.2byte	0x6e2
	.byte	0x11
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.string	"pcb"
	.2byte	0x6e2
	.byte	0x26
	.4byte	0x76c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"p"
	.2byte	0x6e2
	.byte	0x38
	.4byte	0x2dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.4byte	.LASF76
	.2byte	0x6e2
	.byte	0x4c
	.4byte	0x611
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.4byte	.LASF270
	.2byte	0x6e2
	.byte	0x58
	.4byte	0xdf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0x1
	.4byte	.LASF89
	.2byte	0x6e4
	.byte	0x11
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x6e5
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF271
	.2byte	0x6e6
	.byte	0x14
	.4byte	0x1055
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF272
	.2byte	0x6e7
	.byte	0x8
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xb
	.string	"i"
	.2byte	0x6e8
	.byte	0x8
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF273
	.2byte	0x6e9
	.byte	0x14
	.4byte	0x1055
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.4byte	.LASF283
	.2byte	0x74f
	.4byte	.L260
	.byte	0
	.uleb128 0x12
	.4byte	.LASF275
	.2byte	0x5e9
	.4byte	0x1ea
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12b3
	.uleb128 0x1c
	.string	"p"
	.2byte	0x5e9
	.byte	0x1f
	.4byte	0x2dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x5
	.4byte	.LASF163
	.2byte	0x5e9
	.byte	0x2f
	.4byte	0xf66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.4byte	.LASF193
	.2byte	0x5eb
	.byte	0x9
	.4byte	0x171
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF276
	.2byte	0x5ec
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1
	.4byte	.LASF277
	.2byte	0x5ed
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF278
	.2byte	0x5ee
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x1
	.4byte	.LASF279
	.2byte	0x5ef
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1
	.4byte	.LASF280
	.2byte	0x5f0
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.string	"q"
	.2byte	0x5f1
	.byte	0x10
	.4byte	0x2dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF281
	.2byte	0x5f2
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF282
	.2byte	0x5f3
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF273
	.2byte	0x5f4
	.byte	0x14
	.4byte	0x1055
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.4byte	.LASF284
	.2byte	0x60d
	.4byte	.L199
	.uleb128 0x23
	.4byte	.LASF285
	.2byte	0x67f
	.4byte	.L236
	.uleb128 0x1d
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x1298
	.uleb128 0xb
	.string	"op"
	.2byte	0x61d
	.byte	0xa
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -59
	.uleb128 0xb
	.string	"len"
	.2byte	0x61e
	.byte	0xa
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1
	.4byte	.LASF286
	.2byte	0x61f
	.byte	0xa
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x1
	.4byte	.LASF287
	.2byte	0x620
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF288
	.2byte	0x621
	.byte	0xb
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x8
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x1
	.4byte	.LASF289
	.2byte	0x67d
	.byte	0xf
	.4byte	0xeb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.4byte	.LASF290
	.2byte	0x67e
	.byte	0xf
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x8
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x1
	.4byte	.LASF291
	.2byte	0x688
	.byte	0x13
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x1
	.4byte	.LASF292
	.2byte	0x6af
	.byte	0xb
	.4byte	0xeb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF293
	.2byte	0x5c7
	.4byte	0xdf
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1348
	.uleb128 0x5
	.4byte	.LASF263
	.2byte	0x5c7
	.byte	0x1c
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x5
	.4byte	.LASF193
	.2byte	0x5c7
	.byte	0x33
	.4byte	0x171
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x5c7
	.byte	0x4a
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x1
	.4byte	.LASF294
	.2byte	0x5ca
	.byte	0xc
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0xb
	.string	"len"
	.2byte	0x5cc
	.byte	0xe
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"p"
	.2byte	0x5cd
	.byte	0x13
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF295
	.2byte	0x5d0
	.byte	0xe
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF296
	.2byte	0x5bb
	.4byte	0xdf
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x138f
	.uleb128 0x5
	.4byte	.LASF263
	.2byte	0x5bb
	.byte	0x18
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x5
	.4byte	.LASF193
	.2byte	0x5bb
	.byte	0x2f
	.4byte	0x171
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF289
	.2byte	0x5bb
	.byte	0x3e
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF297
	.2byte	0x5b2
	.4byte	0xdf
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13d6
	.uleb128 0x5
	.4byte	.LASF263
	.2byte	0x5b2
	.byte	0x19
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x5
	.4byte	.LASF193
	.2byte	0x5b2
	.byte	0x30
	.4byte	0x171
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF289
	.2byte	0x5b2
	.byte	0x3f
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF298
	.2byte	0x5aa
	.4byte	0xdf
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x141d
	.uleb128 0x5
	.4byte	.LASF263
	.2byte	0x5aa
	.byte	0x18
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x5
	.4byte	.LASF193
	.2byte	0x5aa
	.byte	0x2f
	.4byte	0x171
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF289
	.2byte	0x5aa
	.byte	0x3d
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF299
	.2byte	0x59e
	.4byte	0xdf
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1473
	.uleb128 0x5
	.4byte	.LASF263
	.2byte	0x59e
	.byte	0x13
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x5
	.4byte	.LASF193
	.2byte	0x59e
	.byte	0x2a
	.4byte	0x171
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF300
	.2byte	0x59e
	.byte	0x38
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x5
	.4byte	.LASF301
	.2byte	0x59e
	.byte	0x4a
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x58f
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14a9
	.uleb128 0x5
	.4byte	.LASF163
	.2byte	0x58f
	.byte	0x1d
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF303
	.2byte	0x58f
	.byte	0x28
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x13
	.4byte	.LASF306
	.2byte	0x584
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14cf
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x584
	.byte	0x19
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.4byte	.LASF305
	.2byte	0x578
	.4byte	0x1ea
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14f8
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x578
	.byte	0x1c
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF307
	.2byte	0x52d
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x157d
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x52d
	.byte	0x25
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x52f
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF173
	.2byte	0x530
	.byte	0xd
	.4byte	0x30c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x1
	.4byte	.LASF264
	.2byte	0x54d
	.byte	0x12
	.4byte	0x2dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF263
	.2byte	0x54e
	.byte	0xb
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x8
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x1
	.4byte	.LASF266
	.2byte	0x552
	.byte	0x18
	.4byte	0x1055
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF308
	.2byte	0x4f3
	.4byte	0x1ea
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1617
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x4f3
	.byte	0x1b
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x4f5
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF309
	.2byte	0x4f6
	.byte	0x9
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF310
	.2byte	0x4f7
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"i"
	.2byte	0x4f8
	.byte	0x8
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF264
	.2byte	0x4f9
	.byte	0x10
	.4byte	0x2dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF263
	.2byte	0x4fa
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x8
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x1
	.4byte	.LASF266
	.2byte	0x502
	.byte	0x16
	.4byte	0x1055
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF311
	.2byte	0x4bd
	.4byte	0x1ea
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16b1
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x4bd
	.byte	0x1b
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x4bf
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF309
	.2byte	0x4c0
	.byte	0x9
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF310
	.2byte	0x4c1
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"i"
	.2byte	0x4c2
	.byte	0x8
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF264
	.2byte	0x4c3
	.byte	0x10
	.4byte	0x2dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF263
	.2byte	0x4c4
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x8
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x1
	.4byte	.LASF266
	.2byte	0x4cc
	.byte	0x16
	.4byte	0x1055
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF312
	.2byte	0x485
	.4byte	0x1ea
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x174b
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x485
	.byte	0x1a
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x487
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF309
	.2byte	0x488
	.byte	0x9
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF310
	.2byte	0x489
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"i"
	.2byte	0x48a
	.byte	0x8
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF264
	.2byte	0x48b
	.byte	0x10
	.4byte	0x2dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF263
	.2byte	0x48c
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x8
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x1
	.4byte	.LASF266
	.2byte	0x495
	.byte	0x16
	.4byte	0x1055
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF313
	.2byte	0x43b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x180d
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x43b
	.byte	0x19
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x43d
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF314
	.2byte	0x43e
	.byte	0xe
	.4byte	0x2fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF315
	.2byte	0x43e
	.byte	0x17
	.4byte	0x2fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x17b9
	.uleb128 0x1
	.4byte	.LASF316
	.2byte	0x44a
	.byte	0x10
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x17d6
	.uleb128 0x1
	.4byte	.LASF316
	.2byte	0x452
	.byte	0x10
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x17f3
	.uleb128 0x1
	.4byte	.LASF316
	.2byte	0x459
	.byte	0x10
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x1
	.4byte	.LASF317
	.2byte	0x468
	.byte	0xa
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF318
	.2byte	0x3fb
	.4byte	0x1ea
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18a7
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x3fb
	.byte	0x1d
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x3fd
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF309
	.2byte	0x3fe
	.byte	0x9
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.4byte	.LASF310
	.2byte	0x3ff
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xb
	.string	"i"
	.2byte	0x400
	.byte	0x8
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.4byte	.LASF264
	.2byte	0x401
	.byte	0x10
	.4byte	0x2dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF263
	.2byte	0x402
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x8
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x1
	.4byte	.LASF266
	.2byte	0x411
	.byte	0x16
	.4byte	0x1055
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF319
	.2byte	0x3d3
	.4byte	0x1ea
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1925
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x3d3
	.byte	0x1c
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x3d5
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF309
	.2byte	0x3d6
	.byte	0x9
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF264
	.2byte	0x3d7
	.byte	0x10
	.4byte	0x2dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF263
	.2byte	0x3d8
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x8
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1
	.4byte	.LASF266
	.2byte	0x3e0
	.byte	0x16
	.4byte	0x1055
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF320
	.2byte	0x3aa
	.byte	0x1
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x195a
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x3aa
	.byte	0x2c
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x3ac
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF321
	.2byte	0x37e
	.byte	0x1
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19c9
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x37e
	.byte	0x1b
	.4byte	0x37e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x380
	.byte	0xf
	.4byte	0x8e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.4byte	.LASF264
	.2byte	0x381
	.byte	0x10
	.4byte	0x2dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF263
	.2byte	0x382
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -98
	.uleb128 0x8
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x1
	.4byte	.LASF266
	.2byte	0x391
	.byte	0x16
	.4byte	0x1055
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF322
	.2byte	0x32a
	.4byte	0x1ea
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a10
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x32a
	.byte	0x1a
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x32c
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF309
	.2byte	0x32d
	.byte	0x9
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x13
	.4byte	.LASF323
	.2byte	0x30d
	.byte	0x6
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a45
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x30d
	.byte	0x21
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x30f
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF324
	.2byte	0x2f5
	.byte	0x1
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a7a
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x2f5
	.byte	0x1f
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF163
	.2byte	0x2f5
	.byte	0x33
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF325
	.2byte	0x29a
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ae3
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x29a
	.byte	0x1f
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF273
	.2byte	0x29a
	.byte	0x37
	.4byte	0x1055
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x29c
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"n"
	.2byte	0x29f
	.byte	0x8
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x8
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1
	.4byte	.LASF326
	.2byte	0x2e5
	.byte	0xf
	.4byte	0x30c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF327
	.2byte	0x280
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b17
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x280
	.byte	0x1f
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x282
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF328
	.2byte	0x265
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b4b
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x265
	.byte	0x1f
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x267
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF329
	.2byte	0x243
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b7f
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x243
	.byte	0x1c
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x245
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF330
	.2byte	0x224
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bbe
	.uleb128 0x1
	.4byte	.LASF89
	.2byte	0x226
	.byte	0x11
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x229
	.byte	0x12
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF331
	.2byte	0x1fe
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bfd
	.uleb128 0x1
	.4byte	.LASF89
	.2byte	0x200
	.byte	0x11
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x205
	.byte	0x12
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF332
	.2byte	0x1be
	.4byte	0x1ea
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c97
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x1be
	.byte	0x1b
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x1c0
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF309
	.2byte	0x1c1
	.byte	0x9
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF310
	.2byte	0x1c2
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"i"
	.2byte	0x1c3
	.byte	0x8
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF264
	.2byte	0x1c4
	.byte	0x10
	.4byte	0x2dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF263
	.2byte	0x1c5
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x8
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1
	.4byte	.LASF266
	.2byte	0x1d1
	.byte	0x16
	.4byte	0x1055
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF333
	.2byte	0x19c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cda
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x19c
	.byte	0x21
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF273
	.2byte	0x19c
	.byte	0x39
	.4byte	0x1055
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x19e
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF334
	.2byte	0x189
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d0e
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x189
	.byte	0x1a
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x18b
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF335
	.2byte	0x15b
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d60
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x15b
	.byte	0x26
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF97
	.2byte	0x15b
	.byte	0x41
	.4byte	0x8ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x15d
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF310
	.2byte	0x15e
	.byte	0x9
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0xe
	.4byte	.LASF336
	.2byte	0x144
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d94
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x144
	.byte	0x1f
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x146
	.byte	0x10
	.4byte	0xf66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x12c
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x111
	.byte	0x1
	.4byte	0x1ea
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
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
	.uleb128 0xc
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
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
	.sleb128 6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
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
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x2b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x144
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"ERR_RTE"
.LASF216:
	.string	"LWIP_IANA_PORT_NETBIOS"
.LASF14:
	.string	"int8_t"
.LASF305:
	.string	"dhcp_release"
.LASF13:
	.string	"size_t"
.LASF202:
	.string	"DHCP_STATE_CHECKING"
.LASF207:
	.string	"lwip_iana_hwtype"
.LASF176:
	.string	"offered_gw_addr"
.LASF159:
	.string	"ACD_DECLINE"
.LASF325:
	.string	"dhcp_handle_ack"
.LASF25:
	.string	"MEMP_TCP_PCB"
.LASF103:
	.string	"igmp_mac_filter"
.LASF189:
	.string	"chaddr"
.LASF165:
	.string	"tries"
.LASF128:
	.string	"current_netif"
.LASF275:
	.string	"dhcp_parse_reply"
.LASF197:
	.string	"DHCP_STATE_REBOOTING"
.LASF332:
	.string	"dhcp_select"
.LASF115:
	.string	"netif_list"
.LASF140:
	.string	"so_options"
.LASF34:
	.string	"MEMP_SYS_TIMEOUT"
.LASF28:
	.string	"MEMP_ALTCP_PCB"
.LASF322:
	.string	"dhcp_start"
.LASF301:
	.string	"option_len"
.LASF248:
	.string	"mem_malloc"
.LASF119:
	.string	"_v_hl"
.LASF232:
	.string	"DHCP_OPTION_IDX_ROUTER"
.LASF308:
	.string	"dhcp_reboot"
.LASF302:
	.string	"dhcp_set_state"
.LASF97:
	.string	"state"
.LASF299:
	.string	"dhcp_option"
.LASF85:
	.string	"lwip_internal_netif_client_data_index"
.LASF259:
	.string	"udp_connect"
.LASF271:
	.string	"reply_msg"
.LASF317:
	.string	"first_octet"
.LASF65:
	.string	"PBUF_REF"
.LASF162:
	.string	"dhcp_timeout_t"
.LASF281:
	.string	"parse_file_as_options"
.LASF109:
	.string	"netif_igmp_mac_filter_fn"
.LASF327:
	.string	"dhcp_t2_timeout"
.LASF249:
	.string	"mem_free"
.LASF120:
	.string	"_tos"
.LASF320:
	.string	"dhcp_network_changed_link_up"
.LASF110:
	.string	"ipaddr"
.LASF240:
	.string	"dhcp_pcb_refcount"
.LASF184:
	.string	"secs"
.LASF277:
	.string	"offset_max"
.LASF293:
	.string	"dhcp_option_hostname"
.LASF219:
	.string	"LWIP_IANA_PORT_HTTPS"
.LASF254:
	.string	"lwip_htonl"
.LASF6:
	.string	"long int"
.LASF274:
	.string	"dhcp_create_msg"
.LASF296:
	.string	"dhcp_option_long"
.LASF333:
	.string	"dhcp_handle_offer"
.LASF174:
	.string	"offered_ip_addr"
.LASF181:
	.string	"htype"
.LASF75:
	.string	"ip4_addr"
.LASF44:
	.string	"ERR_INPROGRESS"
.LASF261:
	.string	"bl_rand"
.LASF204:
	.string	"DHCP_STATE_BOUND"
.LASF265:
	.string	"message_type"
.LASF129:
	.string	"current_input_netif"
.LASF315:
	.string	"gw_addr"
.LASF121:
	.string	"_len"
.LASF245:
	.string	"acd_remove"
.LASF236:
	.string	"dhcp_rx_options_val"
.LASF45:
	.string	"ERR_VAL"
.LASF228:
	.string	"DHCP_OPTION_IDX_LEASE_TIME"
.LASF132:
	.string	"current_iphdr_src"
.LASF94:
	.string	"linkoutput"
.LASF179:
	.string	"offered_t2_rebind"
.LASF152:
	.string	"ACD_STATE_ANNOUNCING"
.LASF101:
	.string	"hwaddr_len"
.LASF37:
	.string	"MEMP_PBUF_POOL"
.LASF2:
	.string	"signed char"
.LASF164:
	.string	"pcb_allocated"
.LASF133:
	.string	"current_iphdr_dest"
.LASF15:
	.string	"uint8_t"
.LASF139:
	.string	"netif_idx"
.LASF294:
	.string	"namelen"
.LASF150:
	.string	"ACD_STATE_PROBING"
.LASF266:
	.string	"msg_out"
.LASF137:
	.string	"local_ip"
.LASF291:
	.string	"next_val_offset"
.LASF3:
	.string	"unsigned char"
.LASF210:
	.string	"LWIP_IANA_PORT_SMTP"
.LASF127:
	.string	"ip_globals"
.LASF244:
	.string	"pbuf_realloc"
.LASF309:
	.string	"result"
.LASF29:
	.string	"MEMP_NETBUF"
.LASF237:
	.string	"dhcp_rx_options_given"
.LASF66:
	.string	"PBUF_POOL"
.LASF289:
	.string	"value"
.LASF196:
	.string	"DHCP_STATE_INIT"
.LASF177:
	.string	"offered_t0_lease"
.LASF313:
	.string	"dhcp_bind"
.LASF12:
	.string	"char"
.LASF93:
	.string	"output"
.LASF229:
	.string	"DHCP_OPTION_IDX_T1"
.LASF74:
	.string	"pbuf"
.LASF246:
	.string	"udp_sendto_if"
.LASF321:
	.string	"dhcp_inform"
.LASF23:
	.string	"MEMP_RAW_PCB"
.LASF123:
	.string	"_ttl"
.LASF268:
	.string	"dhcp_option_trailer"
.LASF136:
	.string	"udp_pcb"
.LASF141:
	.string	"local_port"
.LASF238:
	.string	"dhcp_discover_request_options"
.LASF72:
	.string	"flags"
.LASF225:
	.string	"DHCP_OPTION_IDX_OVERLOAD"
.LASF22:
	.string	"mem_size_t"
.LASF298:
	.string	"dhcp_option_byte"
.LASF90:
	.string	"ip_addr"
.LASF124:
	.string	"_proto"
.LASF92:
	.string	"input"
.LASF221:
	.string	"LWIP_IANA_PORT_MQTT"
.LASF191:
	.string	"file"
.LASF187:
	.string	"siaddr"
.LASF48:
	.string	"ERR_ALREADY"
.LASF31:
	.string	"MEMP_TCPIP_MSG_API"
.LASF30:
	.string	"MEMP_NETCONN"
.LASF319:
	.string	"dhcp_decline"
.LASF130:
	.string	"current_ip4_header"
.LASF82:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF95:
	.string	"status_callback"
.LASF155:
	.string	"ACD_STATE_RATE_LIMIT"
.LASF175:
	.string	"offered_sn_mask"
.LASF231:
	.string	"DHCP_OPTION_IDX_SUBNET_MASK"
.LASF258:
	.string	"udp_recv"
.LASF122:
	.string	"_offset"
.LASF117:
	.string	"ip4_addr_p_t"
.LASF50:
	.string	"ERR_CONN"
.LASF205:
	.string	"DHCP_STATE_RELEASING"
.LASF242:
	.string	"pbuf_copy_partial"
.LASF239:
	.string	"dhcp_pcb"
.LASF214:
	.string	"LWIP_IANA_PORT_HTTP"
.LASF7:
	.string	"long unsigned int"
.LASF116:
	.string	"ip4_addr_packed"
.LASF292:
	.string	"overload"
.LASF89:
	.string	"netif"
.LASF286:
	.string	"decode_len"
.LASF161:
	.string	"acd_conflict_callback_t"
.LASF64:
	.string	"PBUF_ROM"
.LASF100:
	.string	"hwaddr"
.LASF339:
	.string	"dhcp_inc_pcb_refcount"
.LASF71:
	.string	"type_internal"
.LASF310:
	.string	"msecs"
.LASF208:
	.string	"LWIP_IANA_HWTYPE_ETHERNET"
.LASF257:
	.string	"udp_remove"
.LASF288:
	.string	"val_offset"
.LASF324:
	.string	"dhcp_set_struct"
.LASF125:
	.string	"_chksum"
.LASF279:
	.string	"options_idx"
.LASF143:
	.string	"mcast_ip4"
.LASF307:
	.string	"dhcp_release_and_stop"
.LASF156:
	.string	"acd_state_enum_t"
.LASF295:
	.string	"available"
.LASF260:
	.string	"udp_bind"
.LASF112:
	.string	"lastconflict"
.LASF69:
	.string	"payload"
.LASF86:
	.string	"netif_mac_filter_action"
.LASF264:
	.string	"p_out"
.LASF194:
	.string	"DHCP_STATE_OFF"
.LASF173:
	.string	"server_ip_addr"
.LASF8:
	.string	"long long int"
.LASF83:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF218:
	.string	"LWIP_IANA_PORT_SNMP_TRAP"
.LASF40:
	.string	"ERR_MEM"
.LASF55:
	.string	"ERR_ARG"
.LASF77:
	.string	"ip4_addr_t"
.LASF195:
	.string	"DHCP_STATE_REQUESTING"
.LASF222:
	.string	"LWIP_IANA_PORT_MDNS"
.LASF91:
	.string	"netmask"
.LASF285:
	.string	"decode_next"
.LASF172:
	.string	"t0_timeout"
.LASF217:
	.string	"LWIP_IANA_PORT_SNMP"
.LASF269:
	.string	"dhcp_recv"
.LASF314:
	.string	"sn_mask"
.LASF316:
	.string	"timeout"
.LASF213:
	.string	"LWIP_IANA_PORT_TFTP"
.LASF76:
	.string	"addr"
.LASF178:
	.string	"offered_t1_renew"
.LASF131:
	.string	"current_ip_header_tot_len"
.LASF230:
	.string	"DHCP_OPTION_IDX_T2"
.LASF51:
	.string	"ERR_IF"
.LASF10:
	.string	"unsigned int"
.LASF331:
	.string	"dhcp_coarse_tmr"
.LASF20:
	.string	"u16_t"
.LASF104:
	.string	"acd_list"
.LASF47:
	.string	"ERR_USE"
.LASF58:
	.string	"PBUF_IP"
.LASF224:
	.string	"dhcp_option_idx"
.LASF170:
	.string	"t2_rebind_time"
.LASF336:
	.string	"dhcp_handle_nak"
.LASF113:
	.string	"num_conflicts"
.LASF212:
	.string	"LWIP_IANA_PORT_DHCP_CLIENT"
.LASF154:
	.string	"ACD_STATE_PASSIVE_ONGOING"
.LASF318:
	.string	"dhcp_discover"
.LASF192:
	.string	"cookie"
.LASF46:
	.string	"ERR_WOULDBLOCK"
.LASF105:
	.string	"netif_input_fn"
.LASF267:
	.string	"options_out_len_loc"
.LASF67:
	.string	"pbuf_type"
.LASF42:
	.string	"ERR_TIMEOUT"
.LASF276:
	.string	"offset"
.LASF256:
	.string	"netif_set_addr"
.LASF80:
	.string	"ip_addr_broadcast"
.LASF107:
	.string	"netif_linkoutput_fn"
.LASF306:
	.string	"dhcp_stop"
.LASF253:
	.string	"udp_sendto_if_src"
.LASF284:
	.string	"again"
.LASF263:
	.string	"options_out_len"
.LASF201:
	.string	"DHCP_STATE_INFORMING"
.LASF106:
	.string	"netif_output_fn"
.LASF146:
	.string	"recv"
.LASF215:
	.string	"LWIP_IANA_PORT_SNTP"
.LASF70:
	.string	"tot_len"
.LASF273:
	.string	"msg_in"
.LASF337:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF78:
	.string	"ip_addr_t"
.LASF160:
	.string	"acd_callback_enum_t"
.LASF235:
	.string	"DHCP_OPTION_IDX_MAX"
.LASF11:
	.string	"long double"
.LASF111:
	.string	"sent_num"
.LASF323:
	.string	"dhcp_cleanup"
.LASF171:
	.string	"lease_used"
.LASF87:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF226:
	.string	"DHCP_OPTION_IDX_MSG_TYPE"
.LASF56:
	.string	"err_t"
.LASF135:
	.string	"udp_recv_fn"
.LASF188:
	.string	"giaddr"
.LASF251:
	.string	"dns_setserver"
.LASF148:
	.string	"ACD_STATE_OFF"
.LASF338:
	.string	"dhcp_dec_pcb_refcount"
.LASF335:
	.string	"dhcp_conflict_callback"
.LASF73:
	.string	"if_idx"
.LASF186:
	.string	"yiaddr"
.LASF49:
	.string	"ERR_ISCONN"
.LASF234:
	.string	"DHCP_OPTION_IDX_DNS_SERVER_LAST"
.LASF280:
	.string	"options_idx_max"
.LASF9:
	.string	"long long unsigned int"
.LASF24:
	.string	"MEMP_UDP_PCB"
.LASF142:
	.string	"remote_port"
.LASF183:
	.string	"hops"
.LASF27:
	.string	"MEMP_TCP_SEG"
.LASF16:
	.string	"uint16_t"
.LASF157:
	.string	"ACD_IP_OK"
.LASF290:
	.string	"copy_len"
.LASF32:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF241:
	.string	"pbuf_alloc"
.LASF180:
	.string	"dhcp_msg"
.LASF114:
	.string	"acd_conflict_callback"
.LASF283:
	.string	"free_pbuf_and_return"
.LASF96:
	.string	"link_callback"
.LASF303:
	.string	"new_state"
.LASF79:
	.string	"ip_addr_any"
.LASF182:
	.string	"hlen"
.LASF84:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF147:
	.string	"recv_arg"
.LASF35:
	.string	"MEMP_NETDB"
.LASF99:
	.string	"hostname"
.LASF250:
	.string	"memset"
.LASF167:
	.string	"t1_timeout"
.LASF62:
	.string	"pbuf_layer"
.LASF134:
	.string	"ip_data"
.LASF108:
	.string	"netif_status_callback_fn"
.LASF252:
	.string	"pbuf_free"
.LASF300:
	.string	"option_type"
.LASF39:
	.string	"ERR_OK"
.LASF144:
	.string	"mcast_ifindex"
.LASF126:
	.string	"dest"
.LASF38:
	.string	"MEMP_MAX"
.LASF138:
	.string	"remote_ip"
.LASF21:
	.string	"u32_t"
.LASF198:
	.string	"DHCP_STATE_REBINDING"
.LASF88:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF169:
	.string	"t1_renew_time"
.LASF334:
	.string	"dhcp_check"
.LASF287:
	.string	"decode_idx"
.LASF209:
	.string	"lwip_iana_port_number"
.LASF227:
	.string	"DHCP_OPTION_IDX_SERVER_ID"
.LASF102:
	.string	"name"
.LASF270:
	.string	"port"
.LASF36:
	.string	"MEMP_PBUF"
.LASF41:
	.string	"ERR_BUF"
.LASF282:
	.string	"parse_sname_as_options"
.LASF211:
	.string	"LWIP_IANA_PORT_DHCP_SERVER"
.LASF190:
	.string	"sname"
.LASF145:
	.string	"mcast_ttl"
.LASF4:
	.string	"short int"
.LASF200:
	.string	"DHCP_STATE_SELECTING"
.LASF311:
	.string	"dhcp_rebind"
.LASF326:
	.string	"dns_addr"
.LASF203:
	.string	"DHCP_STATE_PERMANENT"
.LASF312:
	.string	"dhcp_renew"
.LASF163:
	.string	"dhcp"
.LASF304:
	.string	"dhcp_supplied_address"
.LASF81:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF206:
	.string	"DHCP_STATE_BACKING_OFF"
.LASF297:
	.string	"dhcp_option_short"
.LASF153:
	.string	"ACD_STATE_ONGOING"
.LASF243:
	.string	"strlen"
.LASF185:
	.string	"ciaddr"
.LASF60:
	.string	"PBUF_RAW_TX"
.LASF329:
	.string	"dhcp_timeout"
.LASF278:
	.string	"options_offset"
.LASF328:
	.string	"dhcp_t1_timeout"
.LASF33:
	.string	"MEMP_IGMP_GROUP"
.LASF223:
	.string	"LWIP_IANA_PORT_SECURE_MQTT"
.LASF17:
	.string	"uint32_t"
.LASF52:
	.string	"ERR_ABRT"
.LASF220:
	.string	"LWIP_IANA_PORT_SMTPS"
.LASF247:
	.string	"acd_add"
.LASF57:
	.string	"PBUF_TRANSPORT"
.LASF330:
	.string	"dhcp_fine_tmr"
.LASF255:
	.string	"acd_start"
.LASF118:
	.string	"ip_hdr"
.LASF5:
	.string	"short unsigned int"
.LASF19:
	.string	"s8_t"
.LASF151:
	.string	"ACD_STATE_ANNOUNCE_WAIT"
.LASF18:
	.string	"u8_t"
.LASF233:
	.string	"DHCP_OPTION_IDX_DNS_SERVER"
.LASF149:
	.string	"ACD_STATE_PROBE_WAIT"
.LASF98:
	.string	"client_data"
.LASF54:
	.string	"ERR_CLSD"
.LASF193:
	.string	"options"
.LASF168:
	.string	"t2_timeout"
.LASF262:
	.string	"udp_new"
.LASF63:
	.string	"PBUF_RAM"
.LASF199:
	.string	"DHCP_STATE_RENEWING"
.LASF61:
	.string	"PBUF_RAW"
.LASF53:
	.string	"ERR_RST"
.LASF68:
	.string	"next"
.LASF26:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF272:
	.string	"msg_type"
.LASF158:
	.string	"ACD_RESTART_CLIENT"
.LASF59:
	.string	"PBUF_LINK"
.LASF166:
	.string	"request_timeout"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ipv4/dhcp.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
