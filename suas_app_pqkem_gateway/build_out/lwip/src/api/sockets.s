	.file	"sockets.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/sockets.c"
	.section	.bss.socket_ipv4_multicast_memberships,"aw",@nobits
	.align	2
	.type	socket_ipv4_multicast_memberships, @object
	.size	socket_ipv4_multicast_memberships, 192
socket_ipv4_multicast_memberships:
	.zero	192
	.section	.bss.sockets,"aw",@nobits
	.align	2
	.type	sockets, @object
	.size	sockets, 256
sockets:
	.zero	256
	.section	.sbss.select_cb_ctr,"aw",@nobits
	.align	2
	.type	select_cb_ctr, @object
	.size	select_cb_ctr, 4
select_cb_ctr:
	.zero	4
	.section	.sbss.select_cb_list,"aw",@nobits
	.align	2
	.type	select_cb_list, @object
	.size	select_cb_list, 4
select_cb_list:
	.zero	4
	.section	.text.lwip_socket_thread_init,"ax",@progbits
	.align	1
	.globl	lwip_socket_thread_init
	.type	lwip_socket_thread_init, @function
lwip_socket_thread_init:
.LFB6:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/sockets.c"
	.loc 1 360 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 362 1
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
	.size	lwip_socket_thread_init, .-lwip_socket_thread_init
	.section	.text.lwip_socket_thread_cleanup,"ax",@progbits
	.align	1
	.globl	lwip_socket_thread_cleanup
	.type	lwip_socket_thread_cleanup, @function
lwip_socket_thread_cleanup:
.LFB7:
	.loc 1 367 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 369 1
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
.LFE7:
	.size	lwip_socket_thread_cleanup, .-lwip_socket_thread_cleanup
	.section	.text.tryget_socket_unconn_nouse,"ax",@progbits
	.align	1
	.type	tryget_socket_unconn_nouse, @function
tryget_socket_unconn_nouse:
.LFB8:
	.loc 1 451 1
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
	.loc 1 452 7
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 453 6
	lw	a5,-20(s0)
	blt	a5,zero,.L4
	.loc 1 453 15 discriminator 1
	lw	a4,-20(s0)
	li	a5,15
	ble	a4,a5,.L5
.L4:
	.loc 1 455 11
	li	a5,0
	j	.L6
.L5:
	.loc 1 457 10
	lw	a5,-20(s0)
	slli	a4,a5,4
	lui	a5,%hi(sockets)
	addi	a5,a5,%lo(sockets)
	add	a5,a4,a5
.L6:
	.loc 1 458 1
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
	.size	tryget_socket_unconn_nouse, .-tryget_socket_unconn_nouse
	.section	.text.lwip_socket_dbg_get_socket,"ax",@progbits
	.align	1
	.globl	lwip_socket_dbg_get_socket
	.type	lwip_socket_dbg_get_socket, @function
lwip_socket_dbg_get_socket:
.LFB9:
	.loc 1 462 1
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
	.loc 1 463 10
	lw	a0,-20(s0)
	call	tryget_socket_unconn_nouse
	mv	a5,a0
	.loc 1 464 1
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
	.size	lwip_socket_dbg_get_socket, .-lwip_socket_dbg_get_socket
	.section	.text.tryget_socket_unconn,"ax",@progbits
	.align	1
	.type	tryget_socket_unconn, @function
tryget_socket_unconn:
.LFB10:
	.loc 1 469 1
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
	.loc 1 470 27
	lw	a0,-36(s0)
	call	tryget_socket_unconn_nouse
	sw	a0,-20(s0)
	.loc 1 476 10
	lw	a5,-20(s0)
	.loc 1 477 1
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
	.size	tryget_socket_unconn, .-tryget_socket_unconn
	.section	.text.tryget_socket_unconn_locked,"ax",@progbits
	.align	1
	.type	tryget_socket_unconn_locked, @function
tryget_socket_unconn_locked:
.LFB11:
	.loc 1 482 1
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
	.loc 1 483 27
	lw	a0,-36(s0)
	call	tryget_socket_unconn_nouse
	sw	a0,-20(s0)
	.loc 1 489 10
	lw	a5,-20(s0)
	.loc 1 490 1
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
	.size	tryget_socket_unconn_locked, .-tryget_socket_unconn_locked
	.section	.text.tryget_socket,"ax",@progbits
	.align	1
	.type	tryget_socket, @function
tryget_socket:
.LFB12:
	.loc 1 500 1
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
	.loc 1 501 28
	lw	a0,-36(s0)
	call	tryget_socket_unconn
	sw	a0,-20(s0)
	.loc 1 502 6
	lw	a5,-20(s0)
	beq	a5,zero,.L14
	.loc 1 503 13
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 503 8
	beq	a5,zero,.L14
	.loc 1 504 14
	lw	a5,-20(s0)
	j	.L15
.L14:
	.loc 1 508 9
	li	a5,0
.L15:
	.loc 1 509 1
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
	.size	tryget_socket, .-tryget_socket
	.section	.text.get_socket,"ax",@progbits
	.align	1
	.type	get_socket, @function
get_socket:
.LFB13:
	.loc 1 519 1
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
	.loc 1 520 28
	lw	a0,-36(s0)
	call	tryget_socket
	sw	a0,-20(s0)
	.loc 1 521 6
	lw	a5,-20(s0)
	bne	a5,zero,.L17
	.loc 1 525 25 discriminator 1
	lui	a5,%hi(errno)
	li	a4,9
	sw	a4,%lo(errno)(a5)
	.loc 1 526 11
	li	a5,0
	j	.L18
.L17:
	.loc 1 528 10
	lw	a5,-20(s0)
.L18:
	.loc 1 529 1
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
	.size	get_socket, .-get_socket
	.section	.text.alloc_socket,"ax",@progbits
	.align	1
	.type	alloc_socket, @function
alloc_socket:
.LFB14:
	.loc 1 541 1
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
	.loc 1 547 10
	sw	zero,-20(s0)
	.loc 1 547 3
	j	.L20
.L26:
	.loc 1 549 11
	call	sys_arch_protect
	sw	a0,-24(s0)
	.loc 1 550 20
	lui	a5,%hi(sockets)
	addi	a4,a5,%lo(sockets)
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 550 8
	bne	a5,zero,.L21
	.loc 1 559 23
	lui	a5,%hi(sockets)
	addi	a4,a5,%lo(sockets)
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 562 7
	lw	a0,-24(s0)
	call	sys_arch_unprotect
	.loc 1 563 32
	lui	a5,%hi(sockets)
	addi	a4,a5,%lo(sockets)
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	sw	zero,4(a5)
	.loc 1 566 27
	lui	a5,%hi(sockets)
	addi	a4,a5,%lo(sockets)
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	sh	zero,8(a5)
	.loc 1 569 40
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 569 47
	andi	a4,a5,240
	.loc 1 569 87
	li	a5,16
	bne	a4,a5,.L22
	.loc 1 569 87 is_stmt 0 discriminator 2
	lw	a5,-40(s0)
	beq	a5,zero,.L23
.L22:
	.loc 1 569 87 discriminator 3
	li	a5,1
	.loc 1 569 87
	j	.L24
.L23:
	.loc 1 569 87 discriminator 4
	li	a5,0
.L24:
	.loc 1 569 28 is_stmt 1 discriminator 6
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(sockets)
	addi	a3,a5,%lo(sockets)
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a3,a5
	sh	a4,10(a5)
	.loc 1 570 27
	lui	a5,%hi(sockets)
	addi	a4,a5,%lo(sockets)
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	sh	zero,12(a5)
	.loc 1 572 16
	lw	a5,-20(s0)
	j	.L25
.L21:
	.loc 1 574 5
	lw	a0,-24(s0)
	call	sys_arch_unprotect
	.loc 1 547 32 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L20:
	.loc 1 547 17 discriminator 1
	lw	a4,-20(s0)
	li	a5,15
	ble	a4,a5,.L26
	.loc 1 576 10
	li	a5,-1
.L25:
	.loc 1 577 1
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
	.size	alloc_socket, .-alloc_socket
	.section	.text.free_socket_locked,"ax",@progbits
	.align	1
	.type	free_socket_locked, @function
free_socket_locked:
.LFB15:
	.loc 1 589 1
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
	.loc 1 601 13
	lw	a5,-32(s0)
	lw	a4,-20(s0)
	lw	a4,4(a4)
	sw	a4,0(a5)
	.loc 1 602 23
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 1 603 15
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 603 9
	lw	a5,-28(s0)
	sw	a4,0(a5)
	.loc 1 604 14
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 1 605 10
	li	a5,1
	.loc 1 606 1
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
	.size	free_socket_locked, .-free_socket_locked
	.section	.text.free_socket_free_elements,"ax",@progbits
	.align	1
	.type	free_socket_free_elements, @function
free_socket_free_elements:
.LFB16:
	.loc 1 612 1
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
	.loc 1 613 15
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 613 6
	beq	a5,zero,.L30
	.loc 1 614 8
	lw	a5,-20(s0)
	beq	a5,zero,.L31
	.loc 1 615 7
	lw	a5,-28(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	pbuf_free
	j	.L30
.L31:
	.loc 1 617 7
	lw	a5,-28(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	netbuf_delete
.L30:
	.loc 1 620 6
	lw	a5,-24(s0)
	beq	a5,zero,.L33
	.loc 1 622 5
	lw	a0,-24(s0)
	call	netconn_delete
.L33:
	.loc 1 624 1
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
	.size	free_socket_free_elements, .-free_socket_free_elements
	.section	.text.free_socket,"ax",@progbits
	.align	1
	.type	free_socket, @function
free_socket:
.LFB17:
	.loc 1 634 1
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
	.loc 1 641 9
	call	sys_arch_protect
	sw	a0,-20(s0)
	.loc 1 643 11
	addi	a4,s0,-32
	addi	a5,s0,-28
	mv	a3,a4
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	free_socket_locked
	sw	a0,-24(s0)
	.loc 1 644 3
	lw	a0,-20(s0)
	call	sys_arch_unprotect
	.loc 1 647 6
	lw	a5,-24(s0)
	beq	a5,zero,.L36
	.loc 1 648 5
	lw	a5,-28(s0)
	addi	a4,s0,-32
	mv	a2,a4
	mv	a1,a5
	lw	a0,-40(s0)
	call	free_socket_free_elements
.L36:
	.loc 1 650 1
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
	.size	free_socket, .-free_socket
	.section	.text.lwip_accept,"ax",@progbits
	.align	1
	.globl	lwip_accept
	.type	lwip_accept, @function
lwip_accept:
.LFB18:
	.loc 1 660 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	.loc 1 663 13
	sw	zero,-48(s0)
	.loc 1 664 9
	sh	zero,-50(s0)
	.loc 1 671 10
	lw	a0,-84(s0)
	call	get_socket
	sw	a0,-24(s0)
	.loc 1 672 6
	lw	a5,-24(s0)
	bne	a5,zero,.L38
	.loc 1 673 12
	li	a5,-1
	j	.L52
.L38:
	.loc 1 677 9
	lw	a5,-24(s0)
	lw	a5,0(a5)
	addi	a4,s0,-44
	mv	a1,a4
	mv	a0,a5
	call	netconn_accept
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 1 678 6
	lb	a5,-25(s0)
	beq	a5,zero,.L40
	.loc 1 680 16
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 680 22
	lbu	a5,0(a5)
	.loc 1 680 30
	andi	a4,a5,240
	.loc 1 680 8
	li	a5,16
	beq	a4,a5,.L41
	.loc 1 681 28 discriminator 1
	lui	a5,%hi(errno)
	li	a4,95
	sw	a4,%lo(errno)(a5)
	j	.L42
.L41:
	.loc 1 682 15
	lb	a4,-25(s0)
	li	a5,-15
	bne	a4,a5,.L43
	.loc 1 683 28 discriminator 1
	lui	a5,%hi(errno)
	li	a4,22
	sw	a4,%lo(errno)(a5)
	j	.L42
.L43:
	.loc 1 685 16
	lb	a5,-25(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a5,a0
	.loc 1 685 15 discriminator 1
	beq	a5,zero,.L42
	.loc 1 685 46 discriminator 2
	lb	a5,-25(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a4,a0
	.loc 1 685 43 discriminator 3
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L42:
	.loc 1 688 12
	li	a5,-1
	j	.L52
.L40:
	.loc 1 692 13
	lw	a5,-44(s0)
	li	a1,1
	mv	a0,a5
	call	alloc_socket
	sw	a0,-32(s0)
	.loc 1 693 6
	lw	a4,-32(s0)
	li	a5,-1
	bne	a4,a5,.L44
	.loc 1 694 5
	lw	a5,-44(s0)
	mv	a0,a5
	call	netconn_delete
	.loc 1 695 26 discriminator 1
	lui	a5,%hi(errno)
	li	a4,23
	sw	a4,%lo(errno)(a5)
	.loc 1 697 12
	li	a5,-1
	j	.L52
.L44:
	.loc 1 700 9
	lw	a5,-32(s0)
	slli	a4,a5,4
	lui	a5,%hi(sockets)
	addi	a5,a5,%lo(sockets)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 1 705 6
	lw	a5,-88(s0)
	beq	a5,zero,.L45
	.loc 1 705 21 discriminator 1
	lw	a5,-92(s0)
	beq	a5,zero,.L45
.LBB2:
	.loc 1 708 11
	lw	a5,-44(s0)
	addi	a2,s0,-50
	addi	a4,s0,-48
	li	a3,0
	mv	a1,a4
	mv	a0,a5
	call	netconn_getaddr
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 1 709 8
	lb	a5,-25(s0)
	beq	a5,zero,.L46
	.loc 1 711 7
	li	a1,1
	lw	a0,-36(s0)
	call	free_socket
	.loc 1 712 16
	lb	a5,-25(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a5,a0
	.loc 1 712 15 discriminator 1
	beq	a5,zero,.L47
	.loc 1 712 46 discriminator 2
	lb	a5,-25(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a4,a0
	.loc 1 712 43 discriminator 3
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L47:
	.loc 1 714 14
	li	a5,-1
	j	.L52
.L46:
	.loc 1 717 40
	addi	a5,s0,-68
	.loc 1 717 61
	li	a4,16
	sb	a4,0(a5)
	.loc 1 717 121
	addi	a5,s0,-68
	.loc 1 717 145
	li	a4,2
	sb	a4,1(a5)
	.loc 1 717 204
	lhu	a5,-50(s0)
	.loc 1 717 180
	addi	s1,s0,-68
	.loc 1 717 204
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 717 202 discriminator 1
	sh	a5,2(s1)
	.loc 1 717 257 discriminator 1
	addi	a5,s0,-68
	.loc 1 717 301 discriminator 1
	lw	a4,-48(s0)
	.loc 1 717 288 discriminator 1
	sw	a4,4(a5)
	.loc 1 717 348 discriminator 1
	addi	a5,s0,-68
	.loc 1 717 359 discriminator 1
	addi	a5,a5,8
	.loc 1 717 311 discriminator 1
	li	a2,8
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 718 9
	lw	a5,-92(s0)
	lw	a5,0(a5)
	.loc 1 718 35
	lbu	a4,-68(s0)
	.loc 1 718 8
	bleu	a5,a4,.L48
	.loc 1 719 33
	lbu	a5,-68(s0)
	mv	a4,a5
	.loc 1 719 16
	lw	a5,-92(s0)
	sw	a4,0(a5)
.L48:
	.loc 1 721 5
	lw	a5,-92(s0)
	lw	a4,0(a5)
	addi	a5,s0,-68
	mv	a2,a4
	mv	a1,a5
	lw	a0,-88(s0)
	call	memcpy
.L45:
.LBE2:
	.loc 1 729 9
	call	sys_arch_protect
	sw	a0,-40(s0)
	.loc 1 730 35
	lw	a5,-44(s0)
	.loc 1 730 49
	lw	a5,24(a5)
	.loc 1 730 26
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 730 15
	not	a5,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 730 13
	sw	a5,-20(s0)
	.loc 1 731 10
	lw	a5,-44(s0)
	.loc 1 731 32
	lw	a4,-32(s0)
	sw	a4,24(a5)
	.loc 1 732 3
	lw	a0,-40(s0)
	call	sys_arch_unprotect
	.loc 1 734 14
	lw	a5,-44(s0)
	lw	a5,44(a5)
	.loc 1 734 6
	beq	a5,zero,.L49
	.loc 1 736 11
	j	.L50
.L51:
	.loc 1 737 16
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 738 14
	lw	a5,-44(s0)
	lw	a5,44(a5)
	.loc 1 738 7
	lw	a4,-44(s0)
	li	a2,0
	li	a1,0
	mv	a0,a4
	jalr	a5
.LVL0:
.L50:
	.loc 1 736 22
	lw	a5,-20(s0)
	bgt	a5,zero,.L51
.L49:
	.loc 1 754 10
	lw	a5,-32(s0)
.L52:
	.loc 1 755 1
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	lw	s1,84(sp)
	.cfi_restore 9
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	lwip_accept, .-lwip_accept
	.section	.text.lwip_bind,"ax",@progbits
	.align	1
	.globl	lwip_bind
	.type	lwip_bind, @function
lwip_bind:
.LFB19:
	.loc 1 759 1
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
	.loc 1 765 10
	lw	a0,-36(s0)
	call	get_socket
	sw	a0,-20(s0)
	.loc 1 766 6
	lw	a5,-20(s0)
	bne	a5,zero,.L54
	.loc 1 767 12
	li	a5,-1
	j	.L61
.L54:
	.loc 1 778 11
	lw	a4,-44(s0)
	li	a5,16
	bne	a4,a5,.L56
	.loc 1 778 67 discriminator 2
	lw	a5,-40(s0)
	lbu	a4,1(a5)
	.loc 1 778 57 discriminator 2
	li	a5,2
	bne	a4,a5,.L56
	.loc 1 778 91 discriminator 4
	lw	a5,-40(s0)
	.loc 1 778 110 discriminator 4
	andi	a5,a5,3
	.loc 1 778 12 discriminator 4
	beq	a5,zero,.L57
.L56:
	.loc 1 778 161 discriminator 5
	li	a0,-16
	call	err_to_errno
	mv	a5,a0
	.loc 1 778 160 discriminator 6
	beq	a5,zero,.L58
	.loc 1 778 195 discriminator 7
	li	a0,-16
	call	err_to_errno
	mv	a4,a0
	.loc 1 778 192 discriminator 9
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L58:
	.loc 1 778 242 discriminator 10
	li	a5,-1
	.loc 1 778 242 is_stmt 0
	j	.L61
.L57:
	.loc 1 783 98 is_stmt 1
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 1 783 32
	sw	a5,-28(s0)
	.loc 1 783 185
	lw	a5,-40(s0)
	lhu	a5,2(a5)
	.loc 1 783 126
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	sh	a5,-22(s0)
	.loc 1 796 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lhu	a3,-22(s0)
	addi	a4,s0,-28
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	netconn_bind
	mv	a5,a0
	sb	a5,-23(s0)
	.loc 1 798 6
	lb	a5,-23(s0)
	beq	a5,zero,.L59
	.loc 1 800 14
	lb	a5,-23(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a5,a0
	.loc 1 800 13 discriminator 1
	beq	a5,zero,.L60
	.loc 1 800 44 discriminator 2
	lb	a5,-23(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a4,a0
	.loc 1 800 41 discriminator 3
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L60:
	.loc 1 802 12
	li	a5,-1
	j	.L61
.L59:
	.loc 1 808 10
	li	a5,0
.L61:
	.loc 1 809 1
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
	.size	lwip_bind, .-lwip_bind
	.section	.text.lwip_close,"ax",@progbits
	.align	1
	.globl	lwip_close
	.type	lwip_close, @function
lwip_close:
.LFB20:
	.loc 1 813 1
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
	.loc 1 815 7
	sw	zero,-20(s0)
	.loc 1 820 10
	lw	a0,-36(s0)
	call	get_socket
	sw	a0,-24(s0)
	.loc 1 821 6
	lw	a5,-24(s0)
	bne	a5,zero,.L63
	.loc 1 822 12
	li	a5,-1
	j	.L64
.L63:
	.loc 1 825 11
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 825 6
	beq	a5,zero,.L65
	.loc 1 826 21
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 826 27
	lbu	a5,0(a5)
	.loc 1 826 35
	andi	a5,a5,240
	.loc 1 826 42
	addi	a5,a5,-16
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 826 12
	sw	a5,-20(s0)
.L65:
	.loc 1 833 3
	lw	a0,-36(s0)
	call	lwip_socket_drop_registered_memberships
	.loc 1 840 9
	lw	a5,-24(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	netconn_prepare_delete
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 1 841 6
	lb	a5,-25(s0)
	beq	a5,zero,.L66
	.loc 1 842 14
	lb	a5,-25(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a5,a0
	.loc 1 842 13 discriminator 1
	beq	a5,zero,.L67
	.loc 1 842 44 discriminator 2
	lb	a5,-25(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a4,a0
	.loc 1 842 41 discriminator 3
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L67:
	.loc 1 844 12
	li	a5,-1
	j	.L64
.L66:
	.loc 1 847 3
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	free_socket
	.loc 1 849 10
	li	a5,0
.L64:
	.loc 1 850 1
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
	.size	lwip_close, .-lwip_close
	.section	.text.lwip_connect,"ax",@progbits
	.align	1
	.globl	lwip_connect
	.type	lwip_connect, @function
lwip_connect:
.LFB21:
	.loc 1 854 1
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
	.loc 1 858 10
	lw	a0,-36(s0)
	call	get_socket
	sw	a0,-24(s0)
	.loc 1 859 6
	lw	a5,-24(s0)
	bne	a5,zero,.L69
	.loc 1 860 12
	li	a5,-1
	j	.L70
.L69:
	.loc 1 871 11
	lw	a5,-40(s0)
	lbu	a5,1(a5)
	.loc 1 871 6
	bne	a5,zero,.L71
	.loc 1 873 11
	lw	a5,-24(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	netconn_disconnect
	mv	a5,a0
	sb	a5,-17(s0)
	j	.L72
.L71:
.LBB3:
	.loc 1 879 13
	lw	a4,-44(s0)
	li	a5,16
	bne	a4,a5,.L73
	.loc 1 879 69 discriminator 2
	lw	a5,-40(s0)
	lbu	a5,1(a5)
	.loc 1 879 58 discriminator 2
	beq	a5,zero,.L74
	.loc 1 879 97 discriminator 3
	lw	a5,-40(s0)
	lbu	a4,1(a5)
	.loc 1 879 87 discriminator 3
	li	a5,2
	bne	a4,a5,.L73
.L74:
	.loc 1 879 122 discriminator 6
	lw	a5,-40(s0)
	.loc 1 879 141 discriminator 6
	andi	a5,a5,3
	.loc 1 879 14 discriminator 6
	beq	a5,zero,.L75
.L73:
	.loc 1 879 191 discriminator 7
	li	a0,-16
	call	err_to_errno
	mv	a5,a0
	.loc 1 879 190 discriminator 8
	beq	a5,zero,.L76
	.loc 1 879 225 discriminator 9
	li	a0,-16
	call	err_to_errno
	mv	a4,a0
	.loc 1 879 222 discriminator 11
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L76:
	.loc 1 879 272 discriminator 12
	li	a5,-1
	.loc 1 879 272 is_stmt 0
	j	.L70
.L75:
	.loc 1 883 101 is_stmt 1
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 1 883 35
	sw	a5,-32(s0)
	.loc 1 883 189
	lw	a5,-40(s0)
	lhu	a5,2(a5)
	.loc 1 883 130
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	sh	a5,-26(s0)
	.loc 1 896 11
	lw	a5,-24(s0)
	lw	a5,0(a5)
	lhu	a3,-26(s0)
	addi	a4,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	netconn_connect
	mv	a5,a0
	sb	a5,-17(s0)
.L72:
.LBE3:
	.loc 1 899 6
	lb	a5,-17(s0)
	beq	a5,zero,.L78
	.loc 1 901 14
	lb	a5,-17(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a5,a0
	.loc 1 901 13 discriminator 1
	beq	a5,zero,.L79
	.loc 1 901 44 discriminator 2
	lb	a5,-17(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a4,a0
	.loc 1 901 41 discriminator 3
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L79:
	.loc 1 903 12
	li	a5,-1
	j	.L70
.L78:
	.loc 1 909 10
	li	a5,0
.L70:
	.loc 1 910 1
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
	.size	lwip_connect, .-lwip_connect
	.section	.text.lwip_listen,"ax",@progbits
	.align	1
	.globl	lwip_listen
	.type	lwip_listen, @function
lwip_listen:
.LFB22:
	.loc 1 922 1
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
	.loc 1 928 10
	lw	a0,-36(s0)
	call	get_socket
	sw	a0,-20(s0)
	.loc 1 929 6
	lw	a5,-20(s0)
	bne	a5,zero,.L81
	.loc 1 930 12
	li	a5,-1
	j	.L82
.L81:
	.loc 1 934 99
	lw	a5,-40(s0)
	bge	a5,zero,.L83
	li	a5,0
.L83:
	.loc 1 934 11
	li	a4,255
	ble	a5,a4,.L84
	li	a5,255
.L84:
	sw	a5,-40(s0)
	.loc 1 936 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lw	a4,-40(s0)
	andi	a4,a4,0xff
	mv	a1,a4
	mv	a0,a5
	call	netconn_listen_with_backlog
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 1 938 6
	lb	a5,-21(s0)
	beq	a5,zero,.L85
	.loc 1 940 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 940 22
	lbu	a5,0(a5)
	.loc 1 940 30
	andi	a4,a5,240
	.loc 1 940 8
	li	a5,16
	beq	a4,a5,.L86
	.loc 1 941 28 discriminator 1
	lui	a5,%hi(errno)
	li	a4,95
	sw	a4,%lo(errno)(a5)
	j	.L87
.L86:
	.loc 1 943 16
	lb	a5,-21(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a5,a0
	.loc 1 943 15 discriminator 1
	beq	a5,zero,.L87
	.loc 1 943 46 discriminator 2
	lb	a5,-21(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a4,a0
	.loc 1 943 43 discriminator 3
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L87:
	.loc 1 946 12
	li	a5,-1
	j	.L82
.L85:
	.loc 1 951 10
	li	a5,0
.L82:
	.loc 1 952 1
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
	.size	lwip_listen, .-lwip_listen
	.section	.text.lwip_recv_tcp,"ax",@progbits
	.align	1
	.type	lwip_recv_tcp, @function
lwip_recv_tcp:
.LFB23:
	.loc 1 961 1
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
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	.loc 1 962 8
	li	a5,8
	sb	a5,-17(s0)
	.loc 1 963 11
	sw	zero,-24(s0)
	.loc 1 964 28
	lw	a5,-60(s0)
	.loc 1 964 56
	blt	a5,zero,.L89
	.loc 1 964 11 discriminator 1
	lw	a5,-60(s0)
	sw	a5,-28(s0)
	j	.L90
.L89:
	.loc 1 964 11 is_stmt 0 discriminator 2
	li	a5,-2147483648
	addi	a5,a5,-1
	sw	a5,-28(s0)
.L90:
	.loc 1 969 13 is_stmt 1
	lw	a5,-64(s0)
	andi	a5,a5,8
	.loc 1 969 6
	beq	a5,zero,.L107
	.loc 1 970 14
	lbu	a5,-17(s0)
	ori	a5,a5,4
	sb	a5,-17(s0)
.L107:
.LBB4:
	.loc 1 980 23
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 980 8
	beq	a5,zero,.L92
	.loc 1 981 25
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 981 9
	sw	a5,-36(s0)
	j	.L93
.L92:
	.loc 1 985 13
	lw	a5,-52(s0)
	lw	a5,0(a5)
	lbu	a3,-17(s0)
	addi	a4,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	netconn_recv_tcp_pbuf_flags
	mv	a5,a0
	sb	a5,-31(s0)
	.loc 1 989 10
	lb	a5,-31(s0)
	beq	a5,zero,.L94
	.loc 1 990 12
	lw	a5,-24(s0)
	bgt	a5,zero,.L109
	.loc 1 998 18
	lb	a5,-31(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a5,a0
	.loc 1 998 17 discriminator 1
	beq	a5,zero,.L97
	.loc 1 998 48 discriminator 2
	lb	a5,-31(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a4,a0
	.loc 1 998 45 discriminator 3
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L97:
	.loc 1 999 12
	lb	a4,-31(s0)
	li	a5,-15
	bne	a4,a5,.L98
	.loc 1 1000 18
	li	a5,0
	j	.L106
.L98:
	.loc 1 1002 18
	li	a5,-1
	j	.L106
.L94:
	.loc 1 1006 27
	lw	a4,-36(s0)
	lw	a5,-52(s0)
	sw	a4,4(a5)
.L93:
	.loc 1 1012 22
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	mv	a4,a5
	.loc 1 1012 8
	lw	a5,-28(s0)
	ble	a5,a4,.L100
	.loc 1 1013 18
	lw	a5,-36(s0)
	.loc 1 1013 15
	lhu	a5,8(a5)
	sh	a5,-30(s0)
	j	.L101
.L100:
	.loc 1 1015 15
	lw	a5,-28(s0)
	sh	a5,-30(s0)
.L101:
	.loc 1 1017 26
	lhu	a5,-30(s0)
	li	a4,-2147483648
	addi	a4,a4,-1
	sub	a5,a4,a5
	.loc 1 1017 8
	lw	a4,-24(s0)
	ble	a4,a5,.L102
	.loc 1 1019 17
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1019 15
	not	a5,a5
	sh	a5,-30(s0)
.L102:
	.loc 1 1024 5
	lw	a0,-36(s0)
	lw	a5,-24(s0)
	lw	a4,-56(s0)
	add	a5,a4,a5
	lhu	a4,-30(s0)
	li	a3,0
	mv	a2,a4
	mv	a1,a5
	call	pbuf_copy_partial
	.loc 1 1026 11
	lhu	a5,-30(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 1030 15
	lhu	a5,-30(s0)
	lw	a4,-28(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 1033 16
	lw	a5,-64(s0)
	andi	a5,a5,1
	.loc 1 1033 8
	bne	a5,zero,.L103
	.loc 1 1036 12
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	mv	a4,a5
	.loc 1 1036 22
	lhu	a5,-30(s0)
	sub	a5,a4,a5
	.loc 1 1036 10
	ble	a5,zero,.L104
	.loc 1 1039 31
	lw	a5,-36(s0)
	lhu	a4,-30(s0)
	mv	a1,a4
	mv	a0,a5
	call	pbuf_free_header
	mv	a4,a0
	.loc 1 1039 29 discriminator 1
	lw	a5,-52(s0)
	sw	a4,4(a5)
	j	.L103
.L104:
	.loc 1 1042 29
	lw	a5,-52(s0)
	sw	zero,4(a5)
	.loc 1 1044 9
	lw	a5,-36(s0)
	mv	a0,a5
	call	pbuf_free
.L103:
	.loc 1 1048 14
	lbu	a5,-17(s0)
	ori	a5,a5,20
	sb	a5,-17(s0)
.LBE4:
	.loc 1 1050 28
	lw	a5,-28(s0)
	ble	a5,zero,.L110
	.loc 1 1050 39 discriminator 1
	lw	a5,-64(s0)
	andi	a5,a5,1
	.loc 1 1050 28 discriminator 1
	beq	a5,zero,.L107
	.loc 1 1051 1
	j	.L110
.L109:
.LBB5:
	.loc 1 993 11 discriminator 1
	nop
	j	.L96
.L110:
.LBE5:
	.loc 1 1051 1
	nop
.L96:
	.loc 1 1052 6
	lw	a5,-24(s0)
	ble	a5,zero,.L108
	.loc 1 1052 30 discriminator 1
	lw	a5,-64(s0)
	andi	a5,a5,1
	.loc 1 1052 19 discriminator 1
	bne	a5,zero,.L108
	.loc 1 1054 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	lw	a4,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	netconn_tcp_recvd
.L108:
	.loc 1 1057 10
	lw	a5,-24(s0)
.L106:
	.loc 1 1058 1
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
.LFE23:
	.size	lwip_recv_tcp, .-lwip_recv_tcp
	.section	.text.lwip_sock_make_addr,"ax",@progbits
	.align	1
	.type	lwip_sock_make_addr, @function
lwip_sock_make_addr:
.LFB24:
	.loc 1 1065 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	mv	a5,a2
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sh	a5,-58(s0)
	.loc 1 1066 7
	sw	zero,-20(s0)
	.loc 1 1083 38
	addi	a5,s0,-36
	.loc 1 1083 56
	li	a4,16
	sb	a4,0(a5)
	.loc 1 1083 116
	addi	a5,s0,-36
	.loc 1 1083 137
	li	a4,2
	sb	a4,1(a5)
	.loc 1 1083 172
	addi	s1,s0,-36
	.loc 1 1083 193
	lhu	a5,-58(s0)
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1083 191 discriminator 1
	sh	a5,2(s1)
	.loc 1 1083 246 discriminator 1
	addi	a5,s0,-36
	.loc 1 1083 289 discriminator 1
	lw	a4,-56(s0)
	lw	a4,0(a4)
	.loc 1 1083 274 discriminator 1
	sw	a4,4(a5)
	.loc 1 1083 336 discriminator 1
	addi	a5,s0,-36
	.loc 1 1083 344 discriminator 1
	addi	a5,a5,8
	.loc 1 1083 299 discriminator 1
	li	a2,8
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 1084 7
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 1 1084 30
	lbu	a4,-36(s0)
	.loc 1 1084 6
	bgeu	a5,a4,.L112
	.loc 1 1085 15
	li	a5,1
	sw	a5,-20(s0)
	j	.L113
.L112:
	.loc 1 1086 14
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 1 1086 37
	lbu	a4,-36(s0)
	.loc 1 1086 13
	bleu	a5,a4,.L113
	.loc 1 1087 28
	lbu	a5,-36(s0)
	mv	a4,a5
	.loc 1 1087 14
	lw	a5,-68(s0)
	sw	a4,0(a5)
.L113:
	.loc 1 1089 3
	lw	a5,-68(s0)
	lw	a4,0(a5)
	addi	a5,s0,-36
	mv	a2,a4
	mv	a1,a5
	lw	a0,-64(s0)
	call	memcpy
	.loc 1 1090 10
	lw	a5,-20(s0)
	.loc 1 1091 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	lwip_sock_make_addr, .-lwip_sock_make_addr
	.section	.text.lwip_recv_tcp_from,"ax",@progbits
	.align	1
	.type	lwip_recv_tcp_from, @function
lwip_recv_tcp_from:
.LFB25:
	.loc 1 1097 1
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
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	.loc 1 1098 6
	lw	a5,-36(s0)
	bne	a5,zero,.L116
	.loc 1 1099 12
	li	a5,0
	j	.L117
.L116:
	.loc 1 1106 6
	lw	a5,-40(s0)
	beq	a5,zero,.L118
	.loc 1 1106 12 discriminator 1
	lw	a5,-44(s0)
	beq	a5,zero,.L118
.LBB6:
	.loc 1 1112 5
	lw	a5,-36(s0)
	lw	a5,0(a5)
	addi	a2,s0,-18
	addi	a4,s0,-24
	li	a3,0
	mv	a1,a4
	mv	a0,a5
	call	netconn_getaddr
	.loc 1 1116 8
	lw	a5,-40(s0)
	beq	a5,zero,.L118
	.loc 1 1116 14 discriminator 1
	lw	a5,-44(s0)
	beq	a5,zero,.L118
	.loc 1 1117 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lhu	a2,-18(s0)
	addi	a1,s0,-24
	lw	a4,-44(s0)
	lw	a3,-40(s0)
	mv	a0,a5
	call	lwip_sock_make_addr
	mv	a5,a0
	j	.L117
.L118:
.LBE6:
	.loc 1 1120 10
	li	a5,0
.L117:
	.loc 1 1121 1
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
	.size	lwip_recv_tcp_from, .-lwip_recv_tcp_from
	.section	.text.lwip_recvfrom_udp_raw,"ax",@progbits
	.align	1
	.type	lwip_recvfrom_udp_raw, @function
lwip_recvfrom_udp_raw:
.LFB26:
	.loc 1 1129 1
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
	sw	a4,-68(s0)
	.loc 1 1137 18
	lw	a5,-60(s0)
	lw	a5,8(a5)
	.loc 1 1137 11
	bne	a5,zero,.L122
	.loc 1 1137 11 discriminator 1
	lw	a5,-60(s0)
	lw	a5,12(a5)
	.loc 1 1137 12 discriminator 1
	ble	a5,zero,.L122
	.loc 1 1137 43 discriminator 2
	li	a5,-16
	.loc 1 1137 43 is_stmt 0
	j	.L137
.L122:
	.loc 1 1139 13 is_stmt 1
	lw	a5,-56(s0)
	andi	a5,a5,8
	.loc 1 1139 6
	beq	a5,zero,.L124
	.loc 1 1140 14
	li	a5,4
	sb	a5,-17(s0)
	j	.L125
.L124:
	.loc 1 1142 14
	sb	zero,-17(s0)
.L125:
	.loc 1 1147 23
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 1147 7
	sw	a5,-40(s0)
	.loc 1 1148 11
	lw	a5,-40(s0)
	.loc 1 1148 6
	bne	a5,zero,.L126
	.loc 1 1151 11
	lw	a5,-52(s0)
	lw	a5,0(a5)
	lbu	a3,-17(s0)
	addi	a4,s0,-40
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	netconn_recv_udp_raw_netbuf_flags
	mv	a5,a0
	sb	a5,-29(s0)
	.loc 1 1155 8
	lb	a5,-29(s0)
	beq	a5,zero,.L127
	.loc 1 1156 14
	lb	a5,-29(s0)
	j	.L137
.L127:
	.loc 1 1159 27
	lw	a4,-40(s0)
	lw	a5,-52(s0)
	sw	a4,4(a5)
.L126:
	.loc 1 1161 15
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 1161 10
	lhu	a5,8(a5)
	sh	a5,-32(s0)
	.loc 1 1164 10
	sh	zero,-22(s0)
	.loc 1 1166 10
	sw	zero,-28(s0)
	.loc 1 1166 3
	j	.L128
.L132:
.LBB7:
	.loc 1 1167 11
	lhu	a5,-32(s0)
	mv	a4,a5
	lhu	a5,-22(s0)
	sub	a5,a4,a5
	sh	a5,-34(s0)
	.loc 1 1168 12
	lw	a5,-60(s0)
	lw	a4,8(a5)
	.loc 1 1168 21
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 1168 24
	lw	a4,4(a5)
	.loc 1 1168 33
	lhu	a5,-34(s0)
	.loc 1 1168 8
	bleu	a4,a5,.L129
	.loc 1 1169 15
	lhu	a5,-34(s0)
	sh	a5,-20(s0)
	j	.L130
.L129:
	.loc 1 1171 27
	lw	a5,-60(s0)
	lw	a4,8(a5)
	.loc 1 1171 36
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 1171 39
	lw	a5,4(a5)
	.loc 1 1171 15
	sh	a5,-20(s0)
.L130:
	.loc 1 1176 26
	lw	a5,-40(s0)
	lw	a0,0(a5)
	.loc 1 1176 42
	lw	a5,-60(s0)
	lw	a4,8(a5)
	.loc 1 1176 51
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 1176 5
	lw	a5,0(a5)
	lhu	a3,-22(s0)
	lhu	a4,-20(s0)
	mv	a2,a4
	mv	a1,a5
	call	pbuf_copy_partial
	.loc 1 1177 12
	lhu	a5,-22(s0)
	mv	a4,a5
	lhu	a5,-20(s0)
	add	a5,a4,a5
	sh	a5,-22(s0)
.LBE7:
	.loc 1 1166 60 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L128:
	.loc 1 1166 23 discriminator 1
	lw	a5,-60(s0)
	lw	a5,12(a5)
	.loc 1 1166 37 discriminator 1
	lw	a4,-28(s0)
	bge	a4,a5,.L131
	.loc 1 1166 37 is_stmt 0 discriminator 3
	lhu	a4,-22(s0)
	lhu	a5,-32(s0)
	bltu	a4,a5,.L132
.L131:
	.loc 1 1182 10 is_stmt 1
	lw	a5,-60(s0)
	lw	a5,0(a5)
	.loc 1 1182 6
	beq	a5,zero,.L133
	.loc 1 1182 27 discriminator 1
	lw	a5,-60(s0)
	lw	a5,4(a5)
	.loc 1 1182 21 discriminator 1
	beq	a5,zero,.L133
	.loc 1 1188 12
	lw	a5,-60(s0)
	lw	a5,0(a5)
	.loc 1 1188 8
	beq	a5,zero,.L133
	.loc 1 1188 29 discriminator 1
	lw	a5,-60(s0)
	lw	a5,4(a5)
	.loc 1 1188 23 discriminator 1
	beq	a5,zero,.L133
	.loc 1 1189 7
	lw	a5,-52(s0)
	lw	a0,0(a5)
	.loc 1 1189 47
	lw	a5,-40(s0)
	.loc 1 1189 7
	addi	a1,a5,8
	.loc 1 1189 63
	lw	a5,-40(s0)
	.loc 1 1189 7
	lhu	a2,12(a5)
	.loc 1 1190 49
	lw	a5,-60(s0)
	lw	a3,0(a5)
	.loc 1 1189 7
	lw	a5,-60(s0)
	addi	a5,a5,4
	mv	a4,a5
	call	lwip_sock_make_addr
.L133:
	.loc 1 1195 18
	lw	a5,-60(s0)
	sw	zero,24(a5)
	.loc 1 1197 10
	lw	a5,-60(s0)
	lw	a5,16(a5)
	.loc 1 1197 6
	beq	a5,zero,.L134
.LBB8:
	.loc 1 1198 10
	sb	zero,-35(s0)
	.loc 1 1222 8
	lbu	a5,-35(s0)
	bne	a5,zero,.L134
	.loc 1 1223 27
	lw	a5,-60(s0)
	sw	zero,20(a5)
.L134:
.LBE8:
	.loc 1 1228 14
	lw	a5,-56(s0)
	andi	a5,a5,1
	.loc 1 1228 6
	bne	a5,zero,.L135
	.loc 1 1229 27
	lw	a5,-52(s0)
	sw	zero,4(a5)
	.loc 1 1230 5
	lw	a5,-40(s0)
	mv	a0,a5
	call	netbuf_delete
.L135:
	.loc 1 1232 6
	lw	a5,-64(s0)
	beq	a5,zero,.L136
	.loc 1 1233 19
	lw	a5,-64(s0)
	lhu	a4,-32(s0)
	sh	a4,0(a5)
.L136:
	.loc 1 1235 10
	li	a5,0
.L137:
	.loc 1 1236 1
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
.LFE26:
	.size	lwip_recvfrom_udp_raw, .-lwip_recvfrom_udp_raw
	.section	.rodata
	.align	2
.LC0:
	.string	"lwip_recvfrom"
	.section	.text.lwip_recvfrom,"ax",@progbits
	.align	1
	.globl	lwip_recvfrom
	.type	lwip_recvfrom, @function
lwip_recvfrom:
.LFB27:
	.loc 1 1241 1
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
	sw	a5,-88(s0)
	.loc 1 1246 10
	lw	a0,-68(s0)
	call	get_socket
	sw	a0,-24(s0)
	.loc 1 1247 6
	lw	a5,-24(s0)
	bne	a5,zero,.L139
	.loc 1 1248 12
	li	a5,-1
	j	.L140
.L139:
	.loc 1 1251 14
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1251 20
	lbu	a5,0(a5)
	.loc 1 1251 28
	andi	a4,a5,240
	.loc 1 1251 6
	li	a5,16
	bne	a4,a5,.L141
	.loc 1 1252 11
	lw	a3,-80(s0)
	lw	a2,-76(s0)
	lw	a1,-72(s0)
	lw	a0,-24(s0)
	call	lwip_recv_tcp
	sw	a0,-20(s0)
	.loc 1 1253 5
	lw	a5,-20(s0)
	lw	a4,-68(s0)
	lui	a3,%hi(.LC0)
	addi	a3,a3,%lo(.LC0)
	lw	a2,-88(s0)
	lw	a1,-84(s0)
	lw	a0,-24(s0)
	call	lwip_recv_tcp_from
	.loc 1 1255 12
	lw	a5,-20(s0)
	j	.L140
.L141:
.LBB9:
	.loc 1 1259 11
	sh	zero,-28(s0)
	.loc 1 1263 18
	lw	a5,-72(s0)
	sw	a5,-36(s0)
	.loc 1 1264 17
	lw	a5,-76(s0)
	sw	a5,-32(s0)
	.loc 1 1265 21
	sw	zero,-48(s0)
	.loc 1 1266 24
	sw	zero,-44(s0)
	.loc 1 1267 19
	sw	zero,-40(s0)
	.loc 1 1268 17
	addi	a5,s0,-36
	sw	a5,-56(s0)
	.loc 1 1269 20
	li	a5,1
	sw	a5,-52(s0)
	.loc 1 1270 18
	lw	a5,-84(s0)
	sw	a5,-64(s0)
	.loc 1 1271 43
	lw	a5,-88(s0)
	beq	a5,zero,.L142
	.loc 1 1271 43 is_stmt 0 discriminator 1
	lw	a5,-88(s0)
	lw	a5,0(a5)
	j	.L143
.L142:
	.loc 1 1271 43 discriminator 2
	li	a5,0
.L143:
	.loc 1 1271 21 is_stmt 1 discriminator 4
	sw	a5,-60(s0)
	.loc 1 1272 11
	addi	a3,s0,-28
	addi	a5,s0,-64
	lw	a4,-68(s0)
	mv	a2,a5
	lw	a1,-80(s0)
	lw	a0,-24(s0)
	call	lwip_recvfrom_udp_raw
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 1 1273 8
	lb	a5,-25(s0)
	beq	a5,zero,.L144
	.loc 1 1276 16
	lb	a5,-25(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a5,a0
	.loc 1 1276 15 discriminator 1
	beq	a5,zero,.L145
	.loc 1 1276 46 discriminator 2
	lb	a5,-25(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a4,a0
	.loc 1 1276 43 discriminator 3
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L145:
	.loc 1 1278 14
	li	a5,-1
	j	.L140
.L144:
	.loc 1 1280 57
	lhu	a5,-28(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	bleu	a5,a4,.L146
	mv	a5,a4
.L146:
	.loc 1 1280 11
	li	a4,-2147483648
	addi	a4,a4,-2
	bgtu	a5,a4,.L147
	.loc 1 1280 59 discriminator 1
	lhu	a5,-28(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	bleu	a5,a4,.L148
	mv	a5,a4
.L148:
	.loc 1 1280 9 discriminator 1
	sw	a5,-20(s0)
	j	.L149
.L147:
	.loc 1 1280 9 is_stmt 0 discriminator 2
	li	a5,-2147483648
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L149:
	.loc 1 1281 8 is_stmt 1
	lw	a5,-88(s0)
	beq	a5,zero,.L151
	.loc 1 1282 21
	lw	a4,-60(s0)
	.loc 1 1282 16
	lw	a5,-88(s0)
	sw	a4,0(a5)
.L151:
.LBE9:
	.loc 1 1288 10
	lw	a5,-20(s0)
.L140:
	.loc 1 1289 1
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
.LFE27:
	.size	lwip_recvfrom, .-lwip_recvfrom
	.section	.text.lwip_read,"ax",@progbits
	.align	1
	.globl	lwip_read
	.type	lwip_read, @function
lwip_read:
.LFB28:
	.loc 1 1293 1
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
	.loc 1 1294 10
	li	a5,0
	li	a4,0
	li	a3,0
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	lwip_recvfrom
	mv	a5,a0
	.loc 1 1295 1
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
.LFE28:
	.size	lwip_read, .-lwip_read
	.section	.text.lwip_readv,"ax",@progbits
	.align	1
	.globl	lwip_readv
	.type	lwip_readv, @function
lwip_readv:
.LFB29:
	.loc 1 1299 1
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
	sw	a2,-60(s0)
	.loc 1 1302 16
	sw	zero,-44(s0)
	.loc 1 1303 19
	sw	zero,-40(s0)
	.loc 1 1306 15
	lw	a5,-56(s0)
	sw	a5,-36(s0)
	.loc 1 1307 18
	lw	a5,-60(s0)
	sw	a5,-32(s0)
	.loc 1 1308 19
	sw	zero,-28(s0)
	.loc 1 1309 22
	sw	zero,-24(s0)
	.loc 1 1310 17
	sw	zero,-20(s0)
	.loc 1 1311 10
	addi	a5,s0,-44
	li	a2,0
	mv	a1,a5
	lw	a0,-52(s0)
	call	lwip_recvmsg
	mv	a5,a0
	.loc 1 1312 1
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
.LFE29:
	.size	lwip_readv, .-lwip_readv
	.section	.text.lwip_recv,"ax",@progbits
	.align	1
	.globl	lwip_recv
	.type	lwip_recv, @function
lwip_recv:
.LFB30:
	.loc 1 1316 1
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
	.loc 1 1317 10
	li	a5,0
	li	a4,0
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	lwip_recvfrom
	mv	a5,a0
	.loc 1 1318 1
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
	.size	lwip_recv, .-lwip_recv
	.section	.text.lwip_recvmsg,"ax",@progbits
	.align	1
	.globl	lwip_recvmsg
	.type	lwip_recvmsg, @function
lwip_recvmsg:
.LFB31:
	.loc 1 1322 1
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
	sw	a2,-60(s0)
	.loc 1 1328 11
	lw	a5,-56(s0)
	bne	a5,zero,.L159
	.loc 1 1328 16 discriminator 1
	li	a5,-16
	.loc 1 1328 16 is_stmt 0
	j	.L160
.L159:
	.loc 1 1329 21 is_stmt 1
	lw	a5,-60(s0)
	andi	a5,a5,-10
	.loc 1 1329 11
	beq	a5,zero,.L161
	.loc 1 1329 69 discriminator 2
	lui	a5,%hi(errno)
	li	a4,95
	sw	a4,%lo(errno)(a5)
	.loc 1 1329 98 discriminator 4
	li	a5,-1
	.loc 1 1329 98 is_stmt 0
	j	.L160
.L161:
	.loc 1 1332 15 is_stmt 1
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 1332 6
	ble	a5,zero,.L162
	.loc 1 1332 45 discriminator 1
	lw	a5,-56(s0)
	lw	a4,12(a5)
	.loc 1 1332 34 discriminator 1
	li	a5,1024
	ble	a4,a5,.L163
.L162:
	.loc 1 1333 26 discriminator 1
	lui	a5,%hi(errno)
	li	a4,90
	sw	a4,%lo(errno)(a5)
	.loc 1 1334 12
	li	a5,-1
	j	.L160
.L163:
	.loc 1 1337 10
	lw	a0,-52(s0)
	call	get_socket
	sw	a0,-32(s0)
	.loc 1 1338 6
	lw	a5,-32(s0)
	bne	a5,zero,.L164
	.loc 1 1339 12
	li	a5,-1
	j	.L160
.L164:
	.loc 1 1343 10
	sw	zero,-24(s0)
	.loc 1 1344 10
	sw	zero,-20(s0)
	.loc 1 1344 3
	j	.L165
.L169:
	.loc 1 1345 17
	lw	a5,-56(s0)
	lw	a4,8(a5)
	.loc 1 1345 26
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 1345 29
	lw	a5,0(a5)
	.loc 1 1345 8
	beq	a5,zero,.L166
	.loc 1 1345 67 discriminator 1
	lw	a5,-56(s0)
	lw	a4,8(a5)
	.loc 1 1345 76 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 1345 79 discriminator 1
	lw	a5,4(a5)
	.loc 1 1345 94 discriminator 1
	ble	a5,zero,.L166
	.loc 1 1347 45
	lw	a5,-56(s0)
	lw	a4,8(a5)
	.loc 1 1347 54
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 1347 57
	lw	a5,4(a5)
	.loc 1 1347 29
	mv	a4,a5
	.loc 1 1347 10
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 1 1346 87
	bgt	a5,zero,.L167
.L166:
	.loc 1 1348 16
	li	a0,-6
	call	err_to_errno
	mv	a5,a0
	.loc 1 1348 15 discriminator 1
	beq	a5,zero,.L168
	.loc 1 1348 50 discriminator 2
	li	a0,-6
	call	err_to_errno
	mv	a4,a0
	.loc 1 1348 47 discriminator 3
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L168:
	.loc 1 1350 14
	li	a5,-1
	j	.L160
.L167:
	.loc 1 1352 49
	lw	a5,-56(s0)
	lw	a4,8(a5)
	.loc 1 1352 58
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 1352 61
	lw	a5,4(a5)
	.loc 1 1352 33
	mv	a4,a5
	.loc 1 1352 12
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 1344 41 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L165:
	.loc 1 1344 26 discriminator 1
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 1344 17 discriminator 1
	lw	a4,-20(s0)
	blt	a4,a5,.L169
	.loc 1 1355 14
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 1355 20
	lbu	a5,0(a5)
	.loc 1 1355 28
	andi	a4,a5,240
	.loc 1 1355 6
	li	a5,16
	bne	a4,a5,.L170
.LBB10:
	.loc 1 1357 9
	lw	a5,-60(s0)
	sw	a5,-28(s0)
	.loc 1 1358 24
	lw	a5,-56(s0)
	sw	zero,24(a5)
	.loc 1 1360 12
	sw	zero,-24(s0)
	.loc 1 1361 12
	sw	zero,-20(s0)
	.loc 1 1361 5
	j	.L171
.L177:
.LBB11:
	.loc 1 1363 56
	lw	a5,-56(s0)
	lw	a4,8(a5)
	.loc 1 1363 65
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 1363 29
	lw	a1,0(a5)
	.loc 1 1363 86
	lw	a5,-56(s0)
	lw	a4,8(a5)
	.loc 1 1363 95
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 1363 29
	lw	a5,4(a5)
	lw	a3,-28(s0)
	mv	a2,a5
	lw	a0,-32(s0)
	call	lwip_recv_tcp
	sw	a0,-40(s0)
	.loc 1 1364 10
	lw	a5,-40(s0)
	ble	a5,zero,.L172
	.loc 1 1366 16
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
.L172:
	.loc 1 1368 10
	lw	a5,-40(s0)
	blt	a5,zero,.L173
	.loc 1 1368 59 discriminator 1
	lw	a5,-56(s0)
	lw	a4,8(a5)
	.loc 1 1368 68 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 1368 71 discriminator 1
	lw	a5,4(a5)
	.loc 1 1368 47 discriminator 1
	mv	a4,a5
	.loc 1 1368 29 discriminator 1
	lw	a5,-40(s0)
	blt	a5,a4,.L173
	.loc 1 1369 18
	lw	a5,-60(s0)
	andi	a5,a5,1
	.loc 1 1368 81 discriminator 2
	beq	a5,zero,.L174
.L173:
	.loc 1 1371 12
	lw	a5,-24(s0)
	bgt	a5,zero,.L183
	.loc 1 1373 18
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 1 1375 9
	j	.L183
.L174:
	.loc 1 1378 18
	lw	a5,-28(s0)
	ori	a5,a5,8
	sw	a5,-28(s0)
.LBE11:
	.loc 1 1361 43 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L171:
	.loc 1 1361 28 discriminator 1
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 1361 19 discriminator 1
	lw	a4,-20(s0)
	blt	a4,a5,.L177
	j	.L182
.L183:
.LBB12:
	.loc 1 1375 9
	nop
.L182:
.LBE12:
	.loc 1 1386 12
	lw	a5,-24(s0)
	j	.L160
.L170:
.LBE10:
.LBB13:
	.loc 1 1396 11
	sh	zero,-42(s0)
	.loc 1 1398 11
	addi	a5,s0,-42
	lw	a4,-52(s0)
	mv	a3,a5
	lw	a2,-56(s0)
	lw	a1,-60(s0)
	lw	a0,-32(s0)
	call	lwip_recvfrom_udp_raw
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 1 1399 8
	lb	a5,-33(s0)
	beq	a5,zero,.L178
	.loc 1 1402 16
	lb	a5,-33(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a5,a0
	.loc 1 1402 15 discriminator 1
	beq	a5,zero,.L179
	.loc 1 1402 46 discriminator 2
	lb	a5,-33(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a4,a0
	.loc 1 1402 43 discriminator 3
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L179:
	.loc 1 1404 14
	li	a5,-1
	j	.L160
.L178:
	.loc 1 1406 22
	lhu	a5,-42(s0)
	mv	a4,a5
	.loc 1 1406 8
	lw	a5,-24(s0)
	bge	a5,a4,.L181
	.loc 1 1407 14
	lw	a5,-56(s0)
	lw	a5,24(a5)
	.loc 1 1407 26
	ori	a4,a5,4
	lw	a5,-56(s0)
	sw	a4,24(a5)
.L181:
	.loc 1 1412 12
	lhu	a5,-42(s0)
.L160:
.LBE13:
	.loc 1 1419 1
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
	.size	lwip_recvmsg, .-lwip_recvmsg
	.section	.text.lwip_send,"ax",@progbits
	.align	1
	.globl	lwip_send
	.type	lwip_send, @function
lwip_send:
.LFB32:
	.loc 1 1423 1
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
	.loc 1 1432 10
	lw	a0,-36(s0)
	call	get_socket
	sw	a0,-20(s0)
	.loc 1 1433 6
	lw	a5,-20(s0)
	bne	a5,zero,.L185
	.loc 1 1434 12
	li	a5,-1
	j	.L193
.L185:
	.loc 1 1437 14
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1437 20
	lbu	a5,0(a5)
	.loc 1 1437 28
	andi	a4,a5,240
	.loc 1 1437 6
	li	a5,16
	beq	a4,a5,.L187
	.loc 1 1440 12
	li	a5,0
	li	a4,0
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	lwip_sendto
	mv	a5,a0
	j	.L193
.L187:
	.loc 1 1449 32
	lw	a5,-48(s0)
	andi	a5,a5,16
	.loc 1 1448 29
	beq	a5,zero,.L188
	.loc 1 1448 29 is_stmt 0 discriminator 1
	li	a5,3
	j	.L189
.L188:
	.loc 1 1448 29 discriminator 2
	li	a5,1
.L189:
	.loc 1 1449 52 is_stmt 1
	lw	a4,-48(s0)
	srai	a4,a4,1
	slli	a4,a4,24
	srai	a4,a4,24
	andi	a4,a4,4
	slli	a4,a4,24
	srai	a4,a4,24
	or	a5,a5,a4
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 1448 15
	sb	a5,-21(s0)
	.loc 1 1451 11
	sw	zero,-28(s0)
	.loc 1 1452 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	addi	a4,s0,-28
	lbu	a3,-21(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	netconn_write_partly
	mv	a5,a0
	sb	a5,-22(s0)
	.loc 1 1455 12
	lb	a5,-22(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a5,a0
	.loc 1 1455 11 discriminator 1
	beq	a5,zero,.L190
	.loc 1 1455 42 discriminator 2
	lb	a5,-22(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a4,a0
	.loc 1 1455 39 discriminator 3
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L190:
	.loc 1 1458 44
	lb	a5,-22(s0)
	bne	a5,zero,.L191
	.loc 1 1458 44 is_stmt 0 discriminator 1
	lw	a5,-28(s0)
	.loc 1 1458 44
	j	.L193
.L191:
	.loc 1 1458 44 discriminator 2
	li	a5,-1
.L193:
	.loc 1 1459 1 is_stmt 1
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
	.size	lwip_send, .-lwip_send
	.section	.text.lwip_sendmsg,"ax",@progbits
	.align	1
	.globl	lwip_sendmsg
	.type	lwip_sendmsg, @function
lwip_sendmsg:
.LFB33:
	.loc 1 1463 1
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
	sw	a2,-92(s0)
	.loc 1 1469 9
	sb	zero,-17(s0)
	.loc 1 1471 10
	lw	a0,-84(s0)
	call	get_socket
	sw	a0,-36(s0)
	.loc 1 1472 6
	lw	a5,-36(s0)
	bne	a5,zero,.L195
	.loc 1 1473 12
	li	a5,-1
	j	.L229
.L195:
	.loc 1 1476 11
	lw	a5,-88(s0)
	bne	a5,zero,.L197
	.loc 1 1476 18 discriminator 1
	li	a0,-16
	call	err_to_errno
	mv	a5,a0
	.loc 1 1476 17 discriminator 2
	beq	a5,zero,.L198
	.loc 1 1476 52 discriminator 3
	li	a0,-16
	call	err_to_errno
	mv	a4,a0
	.loc 1 1476 49 discriminator 5
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L198:
	.loc 1 1476 99 discriminator 6
	li	a5,-1
	.loc 1 1476 99 is_stmt 0
	j	.L229
.L197:
	.loc 1 1478 17 is_stmt 1
	lw	a5,-88(s0)
	lw	a5,8(a5)
	.loc 1 1478 11
	bne	a5,zero,.L199
	.loc 1 1478 18 discriminator 1
	li	a0,-16
	call	err_to_errno
	mv	a5,a0
	.loc 1 1478 17 discriminator 2
	beq	a5,zero,.L200
	.loc 1 1478 52 discriminator 3
	li	a0,-16
	call	err_to_errno
	mv	a4,a0
	.loc 1 1478 49 discriminator 5
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L200:
	.loc 1 1478 99 discriminator 6
	li	a5,-1
	.loc 1 1478 99 is_stmt 0
	j	.L229
.L199:
	.loc 1 1480 18 is_stmt 1
	lw	a5,-88(s0)
	lw	a5,12(a5)
	.loc 1 1480 11
	ble	a5,zero,.L201
	.loc 1 1480 43 discriminator 2
	lw	a5,-88(s0)
	lw	a4,12(a5)
	.loc 1 1480 12 discriminator 2
	li	a5,1024
	ble	a4,a5,.L202
.L201:
	.loc 1 1480 31 discriminator 4
	lui	a5,%hi(errno)
	li	a4,90
	sw	a4,%lo(errno)(a5)
	.loc 1 1480 62 discriminator 6
	li	a5,-1
	.loc 1 1480 62 is_stmt 0
	j	.L229
.L202:
	.loc 1 1482 21 is_stmt 1
	lw	a5,-92(s0)
	andi	a5,a5,-25
	.loc 1 1482 11
	beq	a5,zero,.L203
	.loc 1 1482 71 discriminator 2
	lui	a5,%hi(errno)
	li	a4,95
	sw	a4,%lo(errno)(a5)
	.loc 1 1482 102 discriminator 4
	li	a5,-1
	.loc 1 1482 102 is_stmt 0
	j	.L229
.L203:
	.loc 1 1489 14 is_stmt 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1489 20
	lbu	a5,0(a5)
	.loc 1 1489 28
	andi	a4,a5,240
	.loc 1 1489 6
	li	a5,16
	bne	a4,a5,.L204
	.loc 1 1492 34
	lw	a5,-92(s0)
	andi	a5,a5,16
	.loc 1 1491 31
	beq	a5,zero,.L205
	.loc 1 1491 31 is_stmt 0 discriminator 1
	li	a5,3
	j	.L206
.L205:
	.loc 1 1491 31 discriminator 2
	li	a5,1
.L206:
	.loc 1 1492 54 is_stmt 1
	lw	a4,-92(s0)
	srai	a4,a4,1
	slli	a4,a4,24
	srai	a4,a4,24
	andi	a4,a4,4
	slli	a4,a4,24
	srai	a4,a4,24
	or	a5,a5,a4
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 1491 17
	sb	a5,-41(s0)
	.loc 1 1495 13
	sw	zero,-48(s0)
	.loc 1 1496 11
	lw	a5,-36(s0)
	lw	a0,0(a5)
	.loc 1 1496 75
	lw	a5,-88(s0)
	lw	a1,8(a5)
	.loc 1 1496 96
	lw	a5,-88(s0)
	lw	a5,12(a5)
	.loc 1 1496 11
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a4,s0,-48
	lbu	a3,-41(s0)
	mv	a2,a5
	call	netconn_write_vectors_partly
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1497 14
	lb	a5,-17(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a5,a0
	.loc 1 1497 13 discriminator 1
	beq	a5,zero,.L207
	.loc 1 1497 44 discriminator 2
	lb	a5,-17(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a4,a0
	.loc 1 1497 41 discriminator 3
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L207:
	.loc 1 1500 46
	lb	a5,-17(s0)
	bne	a5,zero,.L208
	.loc 1 1500 46 is_stmt 0 discriminator 1
	lw	a5,-48(s0)
	.loc 1 1500 46
	j	.L229
.L208:
	.loc 1 1500 46 discriminator 2
	li	a5,-1
	.loc 1 1500 46
	j	.L229
.L204:
.LBB14:
	.loc 1 1512 13 is_stmt 1
	sw	zero,-28(s0)
	.loc 1 1515 22
	lw	a5,-88(s0)
	lw	a5,0(a5)
	.loc 1 1515 13
	bne	a5,zero,.L210
	.loc 1 1515 13 discriminator 2
	lw	a5,-88(s0)
	lw	a5,4(a5)
	.loc 1 1515 6 discriminator 2
	beq	a5,zero,.L211
.L210:
	.loc 1 1515 42 discriminator 3
	lw	a5,-88(s0)
	lw	a4,4(a5)
	.loc 1 1515 14 discriminator 3
	li	a5,16
	beq	a4,a5,.L211
	.loc 1 1515 104 discriminator 4
	li	a0,-16
	call	err_to_errno
	mv	a5,a0
	.loc 1 1515 103 discriminator 5
	beq	a5,zero,.L212
	.loc 1 1515 138 discriminator 6
	li	a0,-16
	call	err_to_errno
	mv	a4,a0
	.loc 1 1515 135 discriminator 8
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L212:
	.loc 1 1515 185 discriminator 9
	li	a5,-1
	.loc 1 1515 185 is_stmt 0
	j	.L229
.L211:
	.loc 1 1520 5 is_stmt 1
	addi	a5,s0,-68
	li	a2,20
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 1521 12
	lw	a5,-88(s0)
	lw	a5,0(a5)
	.loc 1 1521 8
	beq	a5,zero,.L214
.LBB15:
	.loc 1 1523 116
	lw	a5,-88(s0)
	lw	a5,0(a5)
	.loc 1 1523 140
	lw	a5,4(a5)
	.loc 1 1523 40
	sw	a5,-60(s0)
	.loc 1 1523 250
	lw	a5,-88(s0)
	lw	a5,0(a5)
	.loc 1 1523 262
	lhu	a5,2(a5)
	.loc 1 1523 169
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	sh	a5,-38(s0)
	.loc 1 1524 28
	lhu	a5,-38(s0)
	sh	a5,-56(s0)
.L214:
.LBE15:
	.loc 1 1527 12
	sw	zero,-24(s0)
	.loc 1 1527 5
	j	.L215
.L219:
	.loc 1 1528 18
	lw	a5,-88(s0)
	lw	a4,8(a5)
	.loc 1 1528 27
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 1528 30
	lw	a4,4(a5)
	.loc 1 1528 12
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 1529 15
	lw	a5,-88(s0)
	lw	a4,8(a5)
	.loc 1 1529 24
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 1529 27
	lw	a5,4(a5)
	.loc 1 1529 10
	blt	a5,zero,.L231
	.loc 1 1529 65 discriminator 1
	lw	a5,-88(s0)
	lw	a4,8(a5)
	.loc 1 1529 74 discriminator 1
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 1529 77 discriminator 1
	lw	a5,4(a5)
	.loc 1 1529 57 discriminator 1
	mv	a4,a5
	.loc 1 1529 46 discriminator 1
	lw	a5,-28(s0)
	blt	a5,a4,.L231
	.loc 1 1527 39 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L215:
	.loc 1 1527 24 discriminator 1
	lw	a5,-88(s0)
	lw	a5,12(a5)
	.loc 1 1527 19 discriminator 1
	lw	a4,-24(s0)
	blt	a4,a5,.L219
	.loc 1 1534 8
	lw	a4,-28(s0)
	li	a5,65536
	bge	a4,a5,.L232
	.loc 1 1539 9
	lw	a5,-28(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	addi	a5,s0,-68
	mv	a1,a4
	mv	a0,a5
	call	netbuf_alloc
	mv	a5,a0
	.loc 1 1539 8 discriminator 1
	bne	a5,zero,.L221
	.loc 1 1540 11
	li	a5,-1
	sb	a5,-17(s0)
	j	.L222
.L221:
.LBB16:
	.loc 1 1543 14
	sw	zero,-32(s0)
	.loc 1 1544 14
	sw	zero,-24(s0)
	.loc 1 1544 7
	j	.L223
.L224:
	.loc 1 1545 35
	lw	a5,-68(s0)
	.loc 1 1545 37
	lw	a4,4(a5)
	.loc 1 1545 9
	lw	a5,-32(s0)
	add	a3,a4,a5
	.loc 1 1545 59
	lw	a5,-88(s0)
	lw	a4,8(a5)
	.loc 1 1545 68
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 1545 71
	lw	a1,0(a5)
	.loc 1 1545 84
	lw	a5,-88(s0)
	lw	a4,8(a5)
	.loc 1 1545 93
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 1545 9
	lw	a5,4(a5)
	mv	a2,a5
	mv	a0,a3
	call	memcpy
	.loc 1 1546 22
	lw	a5,-88(s0)
	lw	a4,8(a5)
	.loc 1 1546 31
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 1546 34
	lw	a5,4(a5)
	.loc 1 1546 16
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 1544 41 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L223:
	.loc 1 1544 26 discriminator 1
	lw	a5,-88(s0)
	lw	a5,12(a5)
	.loc 1 1544 21 discriminator 1
	lw	a4,-24(s0)
	blt	a4,a5,.L224
.LBB17:
	.loc 1 1551 25
	lw	a5,-68(s0)
	mv	a0,a5
	call	inet_chksum_pbuf
	mv	a5,a0
	.loc 1 1551 15 discriminator 1
	not	a5,a5
	sh	a5,-40(s0)
	.loc 1 1552 34
	li	a5,2
	sb	a5,-54(s0)
	.loc 1 1552 70
	lhu	a5,-40(s0)
	sh	a5,-52(s0)
.LBE17:
	.loc 1 1555 11
	sb	zero,-17(s0)
.L222:
.LBE16:
	.loc 1 1592 8
	lb	a5,-17(s0)
	bne	a5,zero,.L225
	.loc 1 1602 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	addi	a4,s0,-68
	mv	a1,a4
	mv	a0,a5
	call	netconn_send
	mv	a5,a0
	sb	a5,-17(s0)
.L225:
	.loc 1 1606 5
	addi	a5,s0,-68
	mv	a0,a5
	call	netbuf_free
	.loc 1 1608 14
	lb	a5,-17(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a5,a0
	.loc 1 1608 13 discriminator 1
	beq	a5,zero,.L226
	.loc 1 1608 44 discriminator 2
	lb	a5,-17(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a4,a0
	.loc 1 1608 41 discriminator 3
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L226:
	.loc 1 1610 34
	lb	a5,-17(s0)
	bne	a5,zero,.L227
	.loc 1 1610 34 is_stmt 0 discriminator 1
	lw	a5,-28(s0)
	.loc 1 1610 34
	j	.L229
.L227:
	.loc 1 1610 34 discriminator 2
	li	a5,-1
	.loc 1 1610 34
	j	.L229
.L218:
.L231:
	.loc 1 1531 9 is_stmt 1
	nop
	j	.L230
.L232:
	.loc 1 1536 7
	nop
.L230:
	.loc 1 1612 26 discriminator 1
	lui	a5,%hi(errno)
	li	a4,90
	sw	a4,%lo(errno)(a5)
	.loc 1 1613 5
	addi	a5,s0,-68
	mv	a0,a5
	call	netbuf_free
	.loc 1 1615 12
	li	a5,-1
.L229:
.LBE14:
	.loc 1 1622 1
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
.LFE33:
	.size	lwip_sendmsg, .-lwip_sendmsg
	.section	.text.lwip_sendto,"ax",@progbits
	.align	1
	.globl	lwip_sendto
	.type	lwip_sendto, @function
lwip_sendto:
.LFB34:
	.loc 1 1627 1
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
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	.loc 1 1634 10
	lw	a0,-52(s0)
	call	get_socket
	sw	a0,-24(s0)
	.loc 1 1635 6
	lw	a5,-24(s0)
	bne	a5,zero,.L234
	.loc 1 1636 12
	li	a5,-1
	j	.L252
.L234:
	.loc 1 1639 14
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1639 20
	lbu	a5,0(a5)
	.loc 1 1639 28
	andi	a4,a5,240
	.loc 1 1639 6
	li	a5,16
	bne	a4,a5,.L236
	.loc 1 1642 12
	lw	a3,-64(s0)
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	lwip_send
	mv	a5,a0
	j	.L252
.L236:
	.loc 1 1651 6
	lw	a4,-60(s0)
	li	a5,65536
	bltu	a4,a5,.L237
	.loc 1 1653 26 discriminator 1
	lui	a5,%hi(errno)
	li	a4,90
	sw	a4,%lo(errno)(a5)
	.loc 1 1655 12
	li	a5,-1
	j	.L252
.L237:
	.loc 1 1657 14
	lw	a5,-60(s0)
	sh	a5,-26(s0)
	.loc 1 1658 11
	lw	a5,-68(s0)
	bne	a5,zero,.L238
	.loc 1 1658 4 discriminator 2
	lw	a5,-72(s0)
	beq	a5,zero,.L239
.L238:
	.loc 1 1658 12 discriminator 3
	lw	a4,-72(s0)
	li	a5,16
	bne	a4,a5,.L240
	.loc 1 1658 65 discriminator 5
	lw	a5,-68(s0)
	beq	a5,zero,.L240
	.loc 1 1658 13 discriminator 7
	lw	a5,-68(s0)
	lbu	a4,1(a5)
	.loc 1 1658 4 discriminator 7
	li	a5,2
	bne	a4,a5,.L240
	.loc 1 1658 37 discriminator 9
	lw	a5,-68(s0)
	.loc 1 1658 54 discriminator 9
	andi	a5,a5,3
	.loc 1 1658 31 discriminator 9
	beq	a5,zero,.L239
.L240:
	.loc 1 1658 108 discriminator 10
	li	a0,-16
	call	err_to_errno
	mv	a5,a0
	.loc 1 1658 107 discriminator 11
	beq	a5,zero,.L241
	.loc 1 1658 142 discriminator 12
	li	a0,-16
	call	err_to_errno
	mv	a4,a0
	.loc 1 1658 139 discriminator 14
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L241:
	.loc 1 1658 189 discriminator 15
	li	a5,-1
	.loc 1 1658 189 is_stmt 0
	j	.L252
.L239:
	.loc 1 1665 19 is_stmt 1
	sw	zero,-44(s0)
	.loc 1 1665 14
	lw	a5,-44(s0)
	.loc 1 1665 9
	sw	a5,-48(s0)
	.loc 1 1667 13
	sb	zero,-34(s0)
	.loc 1 1669 6
	lw	a5,-68(s0)
	beq	a5,zero,.L242
	.loc 1 1670 96
	lw	a5,-68(s0)
	lw	a5,4(a5)
	.loc 1 1670 32
	sw	a5,-40(s0)
	.loc 1 1670 182
	lw	a5,-68(s0)
	lhu	a5,2(a5)
	.loc 1 1670 125
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	sh	a5,-20(s0)
	j	.L243
.L242:
	.loc 1 1672 17
	sh	zero,-20(s0)
	.loc 1 1673 24
	sw	zero,-40(s0)
.L243:
	.loc 1 1675 18
	lhu	a5,-20(s0)
	sh	a5,-36(s0)
	.loc 1 1686 7
	lhu	a4,-26(s0)
	addi	a5,s0,-48
	mv	a1,a4
	mv	a0,a5
	call	netbuf_alloc
	mv	a5,a0
	.loc 1 1686 6 discriminator 1
	bne	a5,zero,.L244
	.loc 1 1687 9
	li	a5,-1
	sb	a5,-17(s0)
	j	.L245
.L244:
	.loc 1 1690 16
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1690 22
	lbu	a5,0(a5)
	.loc 1 1690 30
	andi	a4,a5,240
	.loc 1 1690 8
	li	a5,64
	beq	a4,a5,.L246
.LBB18:
	.loc 1 1691 42
	lw	a5,-48(s0)
	.loc 1 1691 22
	lw	a5,4(a5)
	lhu	a4,-26(s0)
	mv	a2,a4
	lw	a1,-56(s0)
	mv	a0,a5
	call	lwip_chksum_copy
	mv	a5,a0
	sh	a5,-28(s0)
	.loc 1 1692 26
	li	a5,2
	sb	a5,-34(s0)
	.loc 1 1692 56
	lhu	a5,-28(s0)
	sh	a5,-32(s0)
.LBE18:
	j	.L247
.L246:
	.loc 1 1696 17
	lw	a5,-48(s0)
	.loc 1 1696 19
	lw	a5,4(a5)
	.loc 1 1696 7
	lhu	a4,-26(s0)
	mv	a2,a4
	lw	a1,-56(s0)
	mv	a0,a5
	call	memcpy
.L247:
	.loc 1 1698 9
	sb	zero,-17(s0)
.L245:
	.loc 1 1703 6
	lb	a5,-17(s0)
	bne	a5,zero,.L248
	.loc 1 1713 11
	lw	a5,-24(s0)
	lw	a5,0(a5)
	addi	a4,s0,-48
	mv	a1,a4
	mv	a0,a5
	call	netconn_send
	mv	a5,a0
	sb	a5,-17(s0)
.L248:
	.loc 1 1717 3
	addi	a5,s0,-48
	mv	a0,a5
	call	netbuf_free
	.loc 1 1719 12
	lb	a5,-17(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a5,a0
	.loc 1 1719 11 discriminator 1
	beq	a5,zero,.L249
	.loc 1 1719 42 discriminator 2
	lb	a5,-17(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a4,a0
	.loc 1 1719 39 discriminator 3
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L249:
	.loc 1 1721 38
	lb	a5,-17(s0)
	bne	a5,zero,.L250
	.loc 1 1721 38 is_stmt 0 discriminator 1
	lhu	a5,-26(s0)
	.loc 1 1721 38
	j	.L252
.L250:
	.loc 1 1721 38 discriminator 2
	li	a5,-1
.L252:
	.loc 1 1722 1 is_stmt 1
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
	.size	lwip_sendto, .-lwip_sendto
	.section	.text.lwip_socket,"ax",@progbits
	.align	1
	.globl	lwip_socket
	.type	lwip_socket, @function
lwip_socket:
.LFB35:
	.loc 1 1726 1
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
	.loc 1 1733 3
	lw	a4,-40(s0)
	li	a5,3
	beq	a4,a5,.L254
	lw	a4,-40(s0)
	li	a5,3
	bgt	a4,a5,.L264
	lw	a4,-40(s0)
	li	a5,1
	beq	a4,a5,.L256
	lw	a4,-40(s0)
	li	a5,2
	beq	a4,a5,.L257
	j	.L264
.L254:
	.loc 1 1735 14
	lw	a5,-44(s0)
	andi	a4,a5,0xff
	lui	a5,%hi(event_callback)
	addi	a2,a5,%lo(event_callback)
	mv	a1,a4
	li	a0,64
	call	netconn_new_with_proto_and_callback
	sw	a0,-20(s0)
	.loc 1 1739 7
	j	.L258
.L257:
	.loc 1 1741 14
	lw	a4,-44(s0)
	li	a5,136
	bne	a4,a5,.L259
	.loc 1 1741 14 is_stmt 0 discriminator 1
	li	a5,33
	j	.L260
.L259:
	.loc 1 1741 14 discriminator 2
	li	a5,32
.L260:
	.loc 1 1741 14 discriminator 4
	lui	a4,%hi(event_callback)
	addi	a2,a4,%lo(event_callback)
	li	a1,0
	mv	a0,a5
	call	netconn_new_with_proto_and_callback
	sw	a0,-20(s0)
	.loc 1 1752 7 is_stmt 1
	j	.L258
.L256:
	.loc 1 1754 14
	lui	a5,%hi(event_callback)
	addi	a2,a5,%lo(event_callback)
	li	a1,0
	li	a0,16
	call	netconn_new_with_proto_and_callback
	sw	a0,-20(s0)
	.loc 1 1757 7
	j	.L258
.L264:
	.loc 1 1761 28 discriminator 1
	lui	a5,%hi(errno)
	li	a4,22
	sw	a4,%lo(errno)(a5)
	.loc 1 1762 14
	li	a5,-1
	j	.L261
.L258:
	.loc 1 1765 6
	lw	a5,-20(s0)
	bne	a5,zero,.L262
	.loc 1 1767 27 discriminator 1
	lui	a5,%hi(errno)
	li	a4,105
	sw	a4,%lo(errno)(a5)
	.loc 1 1768 12
	li	a5,-1
	j	.L261
.L262:
	.loc 1 1771 7
	li	a1,0
	lw	a0,-20(s0)
	call	alloc_socket
	sw	a0,-24(s0)
	.loc 1 1773 6
	lw	a4,-24(s0)
	li	a5,-1
	bne	a4,a5,.L263
	.loc 1 1774 5
	lw	a0,-20(s0)
	call	netconn_delete
	.loc 1 1775 26 discriminator 1
	lui	a5,%hi(errno)
	li	a4,23
	sw	a4,%lo(errno)(a5)
	.loc 1 1776 12
	li	a5,-1
	j	.L261
.L263:
	.loc 1 1778 29
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,24(a5)
	.loc 1 1782 10
	lw	a5,-24(s0)
.L261:
	.loc 1 1783 1
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
	.size	lwip_socket, .-lwip_socket
	.section	.text.lwip_write,"ax",@progbits
	.align	1
	.globl	lwip_write
	.type	lwip_write, @function
lwip_write:
.LFB36:
	.loc 1 1787 1
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
	.loc 1 1788 10
	li	a3,0
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	lwip_send
	mv	a5,a0
	.loc 1 1789 1
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
	.size	lwip_write, .-lwip_write
	.section	.text.lwip_writev,"ax",@progbits
	.align	1
	.globl	lwip_writev
	.type	lwip_writev, @function
lwip_writev:
.LFB37:
	.loc 1 1793 1
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
	sw	a2,-60(s0)
	.loc 1 1796 16
	sw	zero,-44(s0)
	.loc 1 1797 19
	sw	zero,-40(s0)
	.loc 1 1800 15
	lw	a5,-56(s0)
	sw	a5,-36(s0)
	.loc 1 1801 18
	lw	a5,-60(s0)
	sw	a5,-32(s0)
	.loc 1 1802 19
	sw	zero,-28(s0)
	.loc 1 1803 22
	sw	zero,-24(s0)
	.loc 1 1804 17
	sw	zero,-20(s0)
	.loc 1 1805 10
	addi	a5,s0,-44
	li	a2,0
	mv	a1,a5
	lw	a0,-52(s0)
	call	lwip_sendmsg
	mv	a5,a0
	.loc 1 1806 1
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
.LFE37:
	.size	lwip_writev, .-lwip_writev
	.section	.text.lwip_link_select_cb,"ax",@progbits
	.align	1
	.type	lwip_link_select_cb, @function
lwip_link_select_cb:
.LFB38:
	.loc 1 1812 1
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
	.loc 1 1816 9
	call	sys_arch_protect
	sw	a0,-20(s0)
	.loc 1 1819 19
	lui	a5,%hi(select_cb_list)
	lw	a4,%lo(select_cb_list)(a5)
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 1820 22
	lui	a5,%hi(select_cb_list)
	lw	a5,%lo(select_cb_list)(a5)
	.loc 1 1820 6
	beq	a5,zero,.L270
	.loc 1 1821 19
	lui	a5,%hi(select_cb_list)
	lw	a5,%lo(select_cb_list)(a5)
	.loc 1 1821 26
	lw	a4,-36(s0)
	sw	a4,4(a5)
.L270:
	.loc 1 1823 18
	lui	a5,%hi(select_cb_list)
	lw	a4,-36(s0)
	sw	a4,%lo(select_cb_list)(a5)
	.loc 1 1826 16
	lui	a5,%hi(select_cb_ctr)
	lw	a5,%lo(select_cb_ctr)(a5)
	addi	a4,a5,1
	lui	a5,%hi(select_cb_ctr)
	sw	a4,%lo(select_cb_ctr)(a5)
	.loc 1 1830 3
	lw	a0,-20(s0)
	call	sys_arch_unprotect
	.loc 1 1831 1
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
.LFE38:
	.size	lwip_link_select_cb, .-lwip_link_select_cb
	.section	.text.lwip_unlink_select_cb,"ax",@progbits
	.align	1
	.type	lwip_unlink_select_cb, @function
lwip_unlink_select_cb:
.LFB39:
	.loc 1 1836 1
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
	.loc 1 1840 9
	call	sys_arch_protect
	sw	a0,-20(s0)
	.loc 1 1841 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1841 6
	beq	a5,zero,.L272
	.loc 1 1842 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1842 38
	lw	a4,-36(s0)
	lw	a4,4(a4)
	.loc 1 1842 27
	sw	a4,4(a5)
.L272:
	.loc 1 1844 22
	lui	a5,%hi(select_cb_list)
	lw	a5,%lo(select_cb_list)(a5)
	.loc 1 1844 6
	lw	a4,-36(s0)
	bne	a4,a5,.L273
	.loc 1 1846 31
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 1846 20
	lui	a5,%hi(select_cb_list)
	sw	a4,%lo(select_cb_list)(a5)
	j	.L274
.L273:
	.loc 1 1849 14
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1849 38
	lw	a4,-36(s0)
	lw	a4,0(a4)
	.loc 1 1849 27
	sw	a4,0(a5)
.L274:
	.loc 1 1853 16
	lui	a5,%hi(select_cb_ctr)
	lw	a5,%lo(select_cb_ctr)(a5)
	addi	a4,a5,1
	lui	a5,%hi(select_cb_ctr)
	sw	a4,%lo(select_cb_ctr)(a5)
	.loc 1 1855 3
	lw	a0,-20(s0)
	call	sys_arch_unprotect
	.loc 1 1856 1
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
.LFE39:
	.size	lwip_unlink_select_cb, .-lwip_unlink_select_cb
	.section	.text.lwip_selscan,"ax",@progbits
	.align	1
	.type	lwip_selscan, @function
lwip_selscan:
.LFB40:
	.loc 1 1877 1
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
	sw	a5,-88(s0)
	sw	a6,-92(s0)
	.loc 1 1878 10
	sw	zero,-24(s0)
	.loc 1 1883 3
	addi	a5,s0,-44
	li	a2,2
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 1884 3
	addi	a5,s0,-48
	li	a2,2
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 1885 3
	addi	a5,s0,-52
	li	a2,2
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 1889 10
	sw	zero,-20(s0)
	.loc 1 1889 3
	j	.L276
.L290:
	.loc 1 1891 8
	lw	a5,-72(s0)
	beq	a5,zero,.L277
	.loc 1 1891 9 discriminator 2
	lw	a4,-20(s0)
	li	a5,15
	bgt	a4,a5,.L277
	.loc 1 1891 50 discriminator 4
	lw	a5,-20(s0)
	blt	a5,zero,.L277
	.loc 1 1891 107 discriminator 6
	lw	a5,-20(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	mv	a4,a5
	.loc 1 1891 99 discriminator 6
	lw	a5,-72(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 1891 128 discriminator 6
	lw	a5,-20(s0)
	andi	a5,a5,7
	.loc 1 1891 22 discriminator 6
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L278
.L277:
	.loc 1 1891 141 discriminator 7
	lw	a5,-76(s0)
	beq	a5,zero,.L279
	.loc 1 1892 9
	lw	a4,-20(s0)
	li	a5,15
	bgt	a4,a5,.L279
	.loc 1 1892 51 discriminator 2
	lw	a5,-20(s0)
	blt	a5,zero,.L279
	.loc 1 1892 109 discriminator 4
	lw	a5,-20(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	mv	a4,a5
	.loc 1 1892 101 discriminator 4
	lw	a5,-76(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 1892 130 discriminator 4
	lw	a5,-20(s0)
	andi	a5,a5,7
	.loc 1 1892 23 discriminator 4
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L278
.L279:
	.loc 1 1892 143 discriminator 5
	lw	a5,-80(s0)
	beq	a5,zero,.L292
	.loc 1 1893 9
	lw	a4,-20(s0)
	li	a5,15
	bgt	a4,a5,.L292
	.loc 1 1893 52 discriminator 1
	lw	a5,-20(s0)
	blt	a5,zero,.L292
	.loc 1 1893 111 discriminator 2
	lw	a5,-20(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	mv	a4,a5
	.loc 1 1893 103 discriminator 2
	lw	a5,-80(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 1893 132 discriminator 2
	lw	a5,-20(s0)
	andi	a5,a5,7
	.loc 1 1893 24 discriminator 2
	sra	a5,a4,a5
	andi	a5,a5,1
	beq	a5,zero,.L292
.L278:
	.loc 1 1897 11
	call	sys_arch_protect
	sw	a0,-28(s0)
	.loc 1 1898 12
	lw	a0,-20(s0)
	call	tryget_socket_unconn_locked
	sw	a0,-32(s0)
	.loc 1 1899 8
	lw	a5,-32(s0)
	beq	a5,zero,.L282
.LBB19:
	.loc 1 1900 13
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	.loc 1 1901 13
	lw	a5,-32(s0)
	lhu	a5,8(a5)
	sh	a5,-38(s0)
	.loc 1 1902 13
	lw	a5,-32(s0)
	lhu	a5,10(a5)
	sh	a5,-40(s0)
	.loc 1 1903 13
	lw	a5,-32(s0)
	lhu	a5,12(a5)
	sh	a5,-42(s0)
	.loc 1 1904 7
	lw	a0,-28(s0)
	call	sys_arch_unprotect
	.loc 1 1908 10
	lw	a5,-72(s0)
	beq	a5,zero,.L283
	.loc 1 1908 22 discriminator 1
	lw	a4,-20(s0)
	li	a5,15
	bgt	a4,a5,.L283
	.loc 1 1908 50 discriminator 2
	lw	a5,-20(s0)
	blt	a5,zero,.L283
	.loc 1 1908 107 discriminator 3
	lw	a5,-20(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	mv	a4,a5
	.loc 1 1908 99 discriminator 3
	lw	a5,-72(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 1908 128 discriminator 3
	lw	a5,-20(s0)
	andi	a5,a5,7
	.loc 1 1908 22 discriminator 3
	sra	a5,a4,a5
	andi	a5,a5,1
	beq	a5,zero,.L283
	.loc 1 1908 140 discriminator 4
	lw	a5,-36(s0)
	bne	a5,zero,.L284
	.loc 1 1908 71 discriminator 5
	lh	a5,-38(s0)
	ble	a5,zero,.L283
.L284:
	.loc 1 1909 17
	lw	a4,-20(s0)
	li	a5,15
	bgt	a4,a5,.L285
	.loc 1 1909 42 discriminator 1
	lw	a5,-20(s0)
	blt	a5,zero,.L285
	.loc 1 1909 139 discriminator 2
	lw	a5,-20(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	.loc 1 1909 131 discriminator 2
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-28(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 1909 160 discriminator 2
	lw	a5,-20(s0)
	andi	a5,a5,7
	.loc 1 1909 148 discriminator 2
	li	a3,1
	sll	a5,a3,a5
	.loc 1 1909 143 discriminator 2
	slli	a5,a5,24
	srai	a5,a5,24
	or	a5,a4,a5
	slli	a3,a5,24
	srai	a3,a3,24
	.loc 1 1909 98 discriminator 2
	lw	a5,-20(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	.loc 1 1909 104 discriminator 2
	andi	a4,a3,0xff
	.loc 1 1909 102 discriminator 2
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-28(a5)
.L285:
	.loc 1 1911 15
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L283:
	.loc 1 1914 10
	lw	a5,-76(s0)
	beq	a5,zero,.L286
	.loc 1 1914 23 discriminator 1
	lw	a4,-20(s0)
	li	a5,15
	bgt	a4,a5,.L286
	.loc 1 1914 51 discriminator 2
	lw	a5,-20(s0)
	blt	a5,zero,.L286
	.loc 1 1914 109 discriminator 3
	lw	a5,-20(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	mv	a4,a5
	.loc 1 1914 101 discriminator 3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 1914 130 discriminator 3
	lw	a5,-20(s0)
	andi	a5,a5,7
	.loc 1 1914 23 discriminator 3
	sra	a5,a4,a5
	andi	a5,a5,1
	beq	a5,zero,.L286
	.loc 1 1914 142 discriminator 4
	lhu	a5,-40(s0)
	beq	a5,zero,.L286
	.loc 1 1915 17
	lw	a4,-20(s0)
	li	a5,15
	bgt	a4,a5,.L287
	.loc 1 1915 42 discriminator 1
	lw	a5,-20(s0)
	blt	a5,zero,.L287
	.loc 1 1915 141 discriminator 2
	lw	a5,-20(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	.loc 1 1915 133 discriminator 2
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-32(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 1915 162 discriminator 2
	lw	a5,-20(s0)
	andi	a5,a5,7
	.loc 1 1915 150 discriminator 2
	li	a3,1
	sll	a5,a3,a5
	.loc 1 1915 145 discriminator 2
	slli	a5,a5,24
	srai	a5,a5,24
	or	a5,a4,a5
	slli	a3,a5,24
	srai	a3,a3,24
	.loc 1 1915 99 discriminator 2
	lw	a5,-20(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	.loc 1 1915 105 discriminator 2
	andi	a4,a3,0xff
	.loc 1 1915 103 discriminator 2
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-32(a5)
.L287:
	.loc 1 1917 15
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L286:
	.loc 1 1920 10
	lw	a5,-80(s0)
	beq	a5,zero,.L281
	.loc 1 1920 24 discriminator 1
	lw	a4,-20(s0)
	li	a5,15
	bgt	a4,a5,.L281
	.loc 1 1920 52 discriminator 2
	lw	a5,-20(s0)
	blt	a5,zero,.L281
	.loc 1 1920 111 discriminator 3
	lw	a5,-20(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	mv	a4,a5
	.loc 1 1920 103 discriminator 3
	lw	a5,-80(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 1920 132 discriminator 3
	lw	a5,-20(s0)
	andi	a5,a5,7
	.loc 1 1920 24 discriminator 3
	sra	a5,a4,a5
	andi	a5,a5,1
	beq	a5,zero,.L281
	.loc 1 1920 144 discriminator 4
	lhu	a5,-42(s0)
	beq	a5,zero,.L281
	.loc 1 1921 17
	lw	a4,-20(s0)
	li	a5,15
	bgt	a4,a5,.L288
	.loc 1 1921 42 discriminator 1
	lw	a5,-20(s0)
	blt	a5,zero,.L288
	.loc 1 1921 143 discriminator 2
	lw	a5,-20(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	.loc 1 1921 135 discriminator 2
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-36(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 1921 164 discriminator 2
	lw	a5,-20(s0)
	andi	a5,a5,7
	.loc 1 1921 152 discriminator 2
	li	a3,1
	sll	a5,a3,a5
	.loc 1 1921 147 discriminator 2
	slli	a5,a5,24
	srai	a5,a5,24
	or	a5,a4,a5
	slli	a3,a5,24
	srai	a3,a3,24
	.loc 1 1921 100 discriminator 2
	lw	a5,-20(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	.loc 1 1921 106 discriminator 2
	andi	a4,a3,0xff
	.loc 1 1921 104 discriminator 2
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-36(a5)
.L288:
	.loc 1 1923 15
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	j	.L281
.L282:
.LBE19:
	.loc 1 1927 7
	lw	a0,-28(s0)
	call	sys_arch_unprotect
	.loc 1 1929 14
	li	a5,-1
	j	.L291
.L292:
	.loc 1 1894 7
	nop
.L281:
	.loc 1 1889 29 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L276:
	.loc 1 1889 17 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-68(s0)
	blt	a4,a5,.L290
	.loc 1 1933 16
	lw	a5,-84(s0)
	lbu	a4,-44(s0)
	sb	a4,0(a5)
	lbu	a4,-43(s0)
	sb	a4,1(a5)
	.loc 1 1934 17
	lw	a5,-88(s0)
	lbu	a4,-48(s0)
	sb	a4,0(a5)
	lbu	a4,-47(s0)
	sb	a4,1(a5)
	.loc 1 1935 18
	lw	a5,-92(s0)
	lbu	a4,-52(s0)
	sb	a4,0(a5)
	lbu	a4,-51(s0)
	sb	a4,1(a5)
	.loc 1 1938 10
	lw	a5,-24(s0)
.L291:
	.loc 1 1939 1
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
	.size	lwip_selscan, .-lwip_selscan
	.section	.text.lwip_select,"ax",@progbits
	.align	1
	.globl	lwip_select
	.type	lwip_select, @function
lwip_select:
.LFB41:
	.loc 1 2006 1
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	ra,140(sp)
	sw	s0,136(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sw	a0,-116(s0)
	sw	a1,-120(s0)
	sw	a2,-124(s0)
	sw	a3,-128(s0)
	sw	a4,-132(s0)
	.loc 1 2007 9
	sw	zero,-20(s0)
	.loc 1 2026 6
	lw	a5,-116(s0)
	blt	a5,zero,.L294
	.loc 1 2026 21 discriminator 1
	lw	a4,-116(s0)
	li	a5,16
	ble	a4,a5,.L295
.L294:
	.loc 1 2027 26 discriminator 1
	lui	a5,%hi(errno)
	li	a4,22
	sw	a4,%lo(errno)(a5)
	.loc 1 2028 12
	li	a5,-1
	j	.L329
.L295:
	.loc 1 2035 12
	addi	a3,s0,-64
	addi	a5,s0,-60
	addi	a4,s0,-56
	mv	a6,a3
	lw	a3,-128(s0)
	lw	a2,-124(s0)
	lw	a1,-120(s0)
	lw	a0,-116(s0)
	call	lwip_selscan
	sw	a0,-24(s0)
	.loc 1 2037 6
	lw	a5,-24(s0)
	bge	a5,zero,.L297
	.loc 1 2039 25 discriminator 1
	lui	a5,%hi(errno)
	li	a4,9
	sw	a4,%lo(errno)(a5)
	.loc 1 2041 12
	li	a5,-1
	j	.L329
.L297:
	.loc 1 2042 13
	lw	a5,-24(s0)
	bgt	a5,zero,.L330
	.loc 1 2047 8
	lw	a5,-132(s0)
	beq	a5,zero,.L299
	.loc 1 2047 27 discriminator 1
	lw	a5,-132(s0)
	lw	a5,0(a5)
	.loc 1 2047 17 discriminator 1
	bne	a5,zero,.L299
	.loc 1 2047 51 discriminator 2
	lw	a5,-132(s0)
	lw	a5,4(a5)
	.loc 1 2047 41 discriminator 2
	beq	a5,zero,.L330
.L299:
.LBB20:
	.loc 1 2059 7
	addi	a5,s0,-100
	li	a2,36
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 2061 25
	lw	a5,-120(s0)
	sw	a5,-92(s0)
	.loc 1 2062 26
	lw	a5,-124(s0)
	sw	a5,-88(s0)
	.loc 1 2063 27
	lw	a5,-128(s0)
	sw	a5,-84(s0)
	.loc 1 2067 11
	addi	a5,s0,-100
	addi	a5,a5,32
	li	a1,0
	mv	a0,a5
	call	sys_sem_new
	mv	a5,a0
	.loc 1 2067 10 discriminator 1
	beq	a5,zero,.L300
	.loc 1 2069 30 discriminator 1
	lui	a5,%hi(errno)
	li	a4,12
	sw	a4,%lo(errno)(a5)
	.loc 1 2072 16
	li	a5,-1
	j	.L329
.L300:
	.loc 1 2076 7
	addi	a5,s0,-100
	mv	a0,a5
	call	lwip_link_select_cb
	.loc 1 2079 15
	lw	a5,-116(s0)
	sw	a5,-36(s0)
	.loc 1 2080 14
	sw	zero,-32(s0)
	.loc 1 2080 7
	j	.L302
.L310:
	.loc 1 2081 12
	lw	a5,-120(s0)
	beq	a5,zero,.L303
	.loc 1 2081 22 discriminator 1
	lw	a4,-32(s0)
	li	a5,15
	bgt	a4,a5,.L303
	.loc 1 2081 50 discriminator 3
	lw	a5,-32(s0)
	blt	a5,zero,.L303
	.loc 1 2081 104 discriminator 5
	lw	a5,-32(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	mv	a4,a5
	.loc 1 2081 96 discriminator 5
	lw	a5,-120(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 2081 125 discriminator 5
	lw	a5,-32(s0)
	andi	a5,a5,7
	.loc 1 2081 22 discriminator 5
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L304
.L303:
	.loc 1 2081 138 discriminator 7
	lw	a5,-124(s0)
	beq	a5,zero,.L305
	.loc 1 2082 23
	lw	a4,-32(s0)
	li	a5,15
	bgt	a4,a5,.L305
	.loc 1 2082 51 discriminator 1
	lw	a5,-32(s0)
	blt	a5,zero,.L305
	.loc 1 2082 106 discriminator 3
	lw	a5,-32(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	mv	a4,a5
	.loc 1 2082 98 discriminator 3
	lw	a5,-124(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 2082 127 discriminator 3
	lw	a5,-32(s0)
	andi	a5,a5,7
	.loc 1 2082 23 discriminator 3
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L304
.L305:
	.loc 1 2082 140 discriminator 5
	lw	a5,-128(s0)
	beq	a5,zero,.L306
	.loc 1 2083 24
	lw	a4,-32(s0)
	li	a5,15
	bgt	a4,a5,.L306
	.loc 1 2083 52 discriminator 1
	lw	a5,-32(s0)
	blt	a5,zero,.L306
	.loc 1 2083 108 discriminator 2
	lw	a5,-32(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	mv	a4,a5
	.loc 1 2083 100 discriminator 2
	lw	a5,-128(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 2083 129 discriminator 2
	lw	a5,-32(s0)
	andi	a5,a5,7
	.loc 1 2083 24 discriminator 2
	sra	a5,a4,a5
	andi	a5,a5,1
	beq	a5,zero,.L306
.L304:
.LBB21:
	.loc 1 2085 17
	call	sys_arch_protect
	sw	a0,-40(s0)
	.loc 1 2086 18
	lw	a0,-32(s0)
	call	tryget_socket_unconn_locked
	sw	a0,-44(s0)
	.loc 1 2087 14
	lw	a5,-44(s0)
	beq	a5,zero,.L307
	.loc 1 2088 17
	lw	a5,-44(s0)
	lbu	a5,14(a5)
	.loc 1 2088 33
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-44(s0)
	sb	a4,14(a5)
	.loc 1 2089 21
	lw	a5,-44(s0)
	lbu	a5,14(a5)
	.loc 1 2089 16
	bne	a5,zero,.L308
	.loc 1 2091 19
	lw	a5,-44(s0)
	lbu	a5,14(a5)
	.loc 1 2091 35
	addi	a5,a5,-1
	andi	a4,a5,0xff
	lw	a5,-44(s0)
	sb	a4,14(a5)
	.loc 1 2092 22
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 2093 23
	lw	a5,-32(s0)
	sw	a5,-36(s0)
	.loc 1 2094 15
	lw	a0,-40(s0)
	call	sys_arch_unprotect
	.loc 1 2096 36 discriminator 1
	lui	a5,%hi(errno)
	li	a4,16
	sw	a4,%lo(errno)(a5)
	.loc 1 2097 15
	j	.L309
.L308:
	.loc 1 2099 13
	lw	a0,-40(s0)
	call	sys_arch_unprotect
	j	.L306
.L307:
	.loc 1 2103 20
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 2104 21
	lw	a5,-32(s0)
	sw	a5,-36(s0)
	.loc 1 2105 13
	lw	a0,-40(s0)
	call	sys_arch_unprotect
	.loc 1 2106 33 discriminator 1
	lui	a5,%hi(errno)
	li	a4,9
	sw	a4,%lo(errno)(a5)
	.loc 1 2107 13
	j	.L309
.L306:
.LBE21:
	.loc 1 2080 33 discriminator 2
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L302:
	.loc 1 2080 21 discriminator 1
	lw	a4,-32(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L310
.L309:
	.loc 1 2112 10
	lw	a5,-24(s0)
	blt	a5,zero,.L311
	.loc 1 2115 18
	addi	a3,s0,-64
	addi	a5,s0,-60
	addi	a4,s0,-56
	mv	a6,a3
	lw	a3,-128(s0)
	lw	a2,-124(s0)
	lw	a1,-120(s0)
	lw	a0,-116(s0)
	call	lwip_selscan
	sw	a0,-24(s0)
	.loc 1 2116 12
	lw	a5,-24(s0)
	bge	a5,zero,.L312
	.loc 1 2117 31 discriminator 1
	lui	a5,%hi(errno)
	li	a4,9
	sw	a4,%lo(errno)(a5)
	j	.L311
.L312:
	.loc 1 2118 19
	lw	a5,-24(s0)
	bne	a5,zero,.L311
	.loc 1 2120 14
	lw	a5,-132(s0)
	bne	a5,zero,.L313
	.loc 1 2122 25
	sw	zero,-28(s0)
	j	.L314
.L313:
.LBB22:
	.loc 1 2124 40
	lw	a5,-132(s0)
	lw	a4,0(a5)
	.loc 1 2124 49
	li	a5,1000
	mul	a4,a4,a5
	.loc 1 2124 68
	lw	a5,-132(s0)
	lw	a5,4(a5)
	.loc 1 2124 78
	addi	a5,a5,500
	.loc 1 2124 85
	li	a3,274878464
	addi	a3,a3,-557
	mulh	a3,a5,a3
	srai	a3,a3,6
	srai	a5,a5,31
	sub	a5,a3,a5
	.loc 1 2124 18
	add	a5,a4,a5
	sw	a5,-48(s0)
	.loc 1 2125 16
	lw	a5,-48(s0)
	bgt	a5,zero,.L315
	.loc 1 2127 27
	li	a5,1
	sw	a5,-28(s0)
	j	.L314
.L315:
	.loc 1 2129 27
	lw	a5,-48(s0)
	sw	a5,-28(s0)
.L314:
.LBE22:
	.loc 1 2133 21
	addi	a5,s0,-100
	addi	a5,a5,32
	lw	a1,-28(s0)
	mv	a0,a5
	call	sys_arch_sem_wait
	sw	a0,-20(s0)
.L311:
	.loc 1 2141 14
	sw	zero,-32(s0)
	.loc 1 2141 7
	j	.L316
.L323:
	.loc 1 2142 12
	lw	a5,-120(s0)
	beq	a5,zero,.L317
	.loc 1 2142 22 discriminator 1
	lw	a4,-32(s0)
	li	a5,15
	bgt	a4,a5,.L317
	.loc 1 2142 50 discriminator 3
	lw	a5,-32(s0)
	blt	a5,zero,.L317
	.loc 1 2142 104 discriminator 5
	lw	a5,-32(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	mv	a4,a5
	.loc 1 2142 96 discriminator 5
	lw	a5,-120(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 2142 125 discriminator 5
	lw	a5,-32(s0)
	andi	a5,a5,7
	.loc 1 2142 22 discriminator 5
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L318
.L317:
	.loc 1 2142 138 discriminator 7
	lw	a5,-124(s0)
	beq	a5,zero,.L319
	.loc 1 2143 23
	lw	a4,-32(s0)
	li	a5,15
	bgt	a4,a5,.L319
	.loc 1 2143 51 discriminator 1
	lw	a5,-32(s0)
	blt	a5,zero,.L319
	.loc 1 2143 106 discriminator 3
	lw	a5,-32(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	mv	a4,a5
	.loc 1 2143 98 discriminator 3
	lw	a5,-124(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 2143 127 discriminator 3
	lw	a5,-32(s0)
	andi	a5,a5,7
	.loc 1 2143 23 discriminator 3
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L318
.L319:
	.loc 1 2143 140 discriminator 5
	lw	a5,-128(s0)
	beq	a5,zero,.L320
	.loc 1 2144 24
	lw	a4,-32(s0)
	li	a5,15
	bgt	a4,a5,.L320
	.loc 1 2144 52 discriminator 1
	lw	a5,-32(s0)
	blt	a5,zero,.L320
	.loc 1 2144 108 discriminator 2
	lw	a5,-32(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	mv	a4,a5
	.loc 1 2144 100 discriminator 2
	lw	a5,-128(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 2144 129 discriminator 2
	lw	a5,-32(s0)
	andi	a5,a5,7
	.loc 1 2144 24 discriminator 2
	sra	a5,a4,a5
	andi	a5,a5,1
	beq	a5,zero,.L320
.L318:
.LBB23:
	.loc 1 2146 17
	call	sys_arch_protect
	sw	a0,-40(s0)
	.loc 1 2147 18
	lw	a0,-32(s0)
	call	tryget_socket_unconn_nouse
	sw	a0,-52(s0)
	.loc 1 2149 14
	lw	a5,-52(s0)
	beq	a5,zero,.L321
	.loc 1 2152 21
	lw	a5,-52(s0)
	lbu	a5,14(a5)
	.loc 1 2152 16
	beq	a5,zero,.L322
	.loc 1 2153 19
	lw	a5,-52(s0)
	lbu	a5,14(a5)
	.loc 1 2153 35
	addi	a5,a5,-1
	andi	a4,a5,0xff
	lw	a5,-52(s0)
	sb	a4,14(a5)
.L322:
	.loc 1 2155 13
	lw	a0,-40(s0)
	call	sys_arch_unprotect
	j	.L320
.L321:
	.loc 1 2157 13
	lw	a0,-40(s0)
	call	sys_arch_unprotect
	.loc 1 2159 20
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 2160 33 discriminator 1
	lui	a5,%hi(errno)
	li	a4,9
	sw	a4,%lo(errno)(a5)
.L320:
.LBE23:
	.loc 1 2141 33 discriminator 2
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L316:
	.loc 1 2141 21 discriminator 1
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	blt	a4,a5,.L323
	.loc 1 2165 7
	addi	a5,s0,-100
	mv	a0,a5
	call	lwip_unlink_select_cb
	.loc 1 2173 7
	addi	a5,s0,-100
	addi	a5,a5,32
	mv	a0,a5
	call	sys_sem_free
	.loc 1 2177 10
	lw	a5,-24(s0)
	bge	a5,zero,.L324
	.loc 1 2180 16
	li	a5,-1
	j	.L329
.L324:
	.loc 1 2183 10
	lw	a4,-20(s0)
	li	a5,-1
	beq	a4,a5,.L330
	.loc 1 2190 18
	addi	a3,s0,-64
	addi	a5,s0,-60
	addi	a4,s0,-56
	mv	a6,a3
	lw	a3,-128(s0)
	lw	a2,-124(s0)
	lw	a1,-120(s0)
	lw	a0,-116(s0)
	call	lwip_selscan
	sw	a0,-24(s0)
	.loc 1 2192 12
	lw	a5,-24(s0)
	bge	a5,zero,.L330
	.loc 1 2193 31 discriminator 1
	lui	a5,%hi(errno)
	li	a4,9
	sw	a4,%lo(errno)(a5)
	.loc 1 2195 18
	li	a5,-1
	j	.L329
.L330:
.LBE20:
	.loc 1 2203 6
	lw	a5,-120(s0)
	beq	a5,zero,.L326
	.loc 1 2204 14
	lw	a5,-120(s0)
	lbu	a4,-56(s0)
	sb	a4,0(a5)
	lbu	a4,-55(s0)
	sb	a4,1(a5)
.L326:
	.loc 1 2206 6
	lw	a5,-124(s0)
	beq	a5,zero,.L327
	.loc 1 2207 15
	lw	a5,-124(s0)
	lbu	a4,-60(s0)
	sb	a4,0(a5)
	lbu	a4,-59(s0)
	sb	a4,1(a5)
.L327:
	.loc 1 2209 6
	lw	a5,-128(s0)
	beq	a5,zero,.L328
	.loc 1 2210 16
	lw	a5,-128(s0)
	lbu	a4,-64(s0)
	sb	a4,0(a5)
	lbu	a4,-63(s0)
	sb	a4,1(a5)
.L328:
	.loc 1 2212 10
	lw	a5,-24(s0)
.L329:
	.loc 1 2213 1
	mv	a0,a5
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE41:
	.size	lwip_select, .-lwip_select
	.section	.text.lwip_pollscan,"ax",@progbits
	.align	1
	.type	lwip_pollscan, @function
lwip_pollscan:
.LFB42:
	.loc 1 2241 1
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
	sb	a5,-57(s0)
	.loc 1 2242 7
	sw	zero,-20(s0)
	.loc 1 2248 12
	sw	zero,-24(s0)
	.loc 1 2248 3
	j	.L332
.L344:
	.loc 1 2249 15
	lbu	a5,-57(s0)
	andi	a5,a5,1
	.loc 1 2249 8
	beq	a5,zero,.L333
	.loc 1 2250 10
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 1 2250 24
	sh	zero,6(a5)
.L333:
	.loc 1 2257 12
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 1 2257 17
	lw	a5,0(a5)
	.loc 1 2257 8
	blt	a5,zero,.L334
	.loc 1 2257 33 discriminator 1
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 1 2257 38 discriminator 1
	lh	a5,6(a5)
	.loc 1 2257 47 discriminator 1
	slli	a5,a5,16
	srli	a5,a5,16
	andi	a5,a5,8
	.loc 1 2257 26 discriminator 1
	bne	a5,zero,.L334
	.loc 1 2259 13
	call	sys_arch_protect
	sw	a0,-28(s0)
	.loc 1 2260 45
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 1 2260 14
	lw	a5,0(a5)
	mv	a0,a5
	call	tryget_socket_unconn_locked
	sw	a0,-32(s0)
	.loc 1 2261 10
	lw	a5,-32(s0)
	beq	a5,zero,.L335
.LBB24:
	.loc 1 2262 15
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	.loc 1 2263 15
	lw	a5,-32(s0)
	lhu	a5,8(a5)
	sh	a5,-38(s0)
	.loc 1 2264 15
	lw	a5,-32(s0)
	lhu	a5,10(a5)
	sh	a5,-40(s0)
	.loc 1 2265 15
	lw	a5,-32(s0)
	lhu	a5,12(a5)
	sh	a5,-42(s0)
	.loc 1 2267 19
	lbu	a5,-57(s0)
	andi	a5,a5,2
	.loc 1 2267 12
	beq	a5,zero,.L336
	.loc 1 2268 15
	lw	a5,-32(s0)
	lbu	a5,14(a5)
	.loc 1 2268 31
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-32(s0)
	sb	a4,14(a5)
	.loc 1 2269 19
	lw	a5,-32(s0)
	lbu	a5,14(a5)
	.loc 1 2269 14
	bne	a5,zero,.L337
	.loc 1 2271 17
	lw	a5,-32(s0)
	lbu	a5,14(a5)
	.loc 1 2271 33
	addi	a5,a5,-1
	andi	a4,a5,0xff
	lw	a5,-32(s0)
	sb	a4,14(a5)
	.loc 1 2272 20
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 2273 13
	lw	a0,-28(s0)
	call	sys_arch_unprotect
	.loc 1 2275 13
	j	.L338
.L336:
	.loc 1 2277 26
	lbu	a5,-57(s0)
	andi	a5,a5,4
	.loc 1 2277 19
	beq	a5,zero,.L337
	.loc 1 2280 19
	lw	a5,-32(s0)
	lbu	a5,14(a5)
	.loc 1 2280 14
	beq	a5,zero,.L337
	.loc 1 2281 17
	lw	a5,-32(s0)
	lbu	a5,14(a5)
	.loc 1 2281 33
	addi	a5,a5,-1
	andi	a4,a5,0xff
	lw	a5,-32(s0)
	sb	a4,14(a5)
.L337:
	.loc 1 2284 9
	lw	a0,-28(s0)
	call	sys_arch_unprotect
	.loc 1 2289 17
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 1 2289 22
	lh	a5,4(a5)
	.loc 1 2289 30
	slli	a5,a5,16
	srli	a5,a5,16
	andi	a5,a5,1
	.loc 1 2289 12
	beq	a5,zero,.L339
	.loc 1 2289 42 discriminator 1
	lw	a5,-36(s0)
	bne	a5,zero,.L340
	.loc 1 2289 67 discriminator 2
	lh	a5,-38(s0)
	ble	a5,zero,.L339
.L340:
	.loc 1 2290 14
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 1 2290 19
	lh	a4,6(a5)
	.loc 1 2290 14
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a3,-52(s0)
	add	a5,a3,a5
	.loc 1 2290 28
	ori	a4,a4,1
	slli	a4,a4,16
	srai	a4,a4,16
	sh	a4,6(a5)
.L339:
	.loc 1 2294 17
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 1 2294 22
	lh	a5,4(a5)
	.loc 1 2294 30
	slli	a5,a5,16
	srli	a5,a5,16
	andi	a5,a5,2
	.loc 1 2294 12
	beq	a5,zero,.L341
	.loc 1 2294 42 discriminator 1
	lhu	a5,-40(s0)
	beq	a5,zero,.L341
	.loc 1 2295 14
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 1 2295 19
	lh	a4,6(a5)
	.loc 1 2295 14
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a3,-52(s0)
	add	a5,a3,a5
	.loc 1 2295 28
	ori	a4,a4,2
	slli	a4,a4,16
	srai	a4,a4,16
	sh	a4,6(a5)
.L341:
	.loc 1 2299 12
	lhu	a5,-42(s0)
	beq	a5,zero,.L334
	.loc 1 2301 14
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 1 2301 19
	lh	a4,6(a5)
	.loc 1 2301 14
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a3,-52(s0)
	add	a5,a3,a5
	.loc 1 2301 28
	ori	a4,a4,4
	slli	a4,a4,16
	srai	a4,a4,16
	sh	a4,6(a5)
	j	.L334
.L335:
.LBE24:
	.loc 1 2306 9
	lw	a0,-28(s0)
	call	sys_arch_unprotect
	.loc 1 2308 12
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 1 2308 17
	lh	a4,6(a5)
	.loc 1 2308 12
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a3,-52(s0)
	add	a5,a3,a5
	.loc 1 2308 26
	ori	a4,a4,8
	slli	a4,a4,16
	srai	a4,a4,16
	sh	a4,6(a5)
	.loc 1 2309 16
	li	a5,-1
	j	.L342
.L334:
	.loc 1 2315 12
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 1 2315 17
	lh	a5,6(a5)
	.loc 1 2315 8
	beq	a5,zero,.L343
	.loc 1 2316 13
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L343:
	.loc 1 2248 32 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L332:
	.loc 1 2248 21 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	bltu	a4,a5,.L344
.L338:
	.loc 1 2321 10
	lw	a5,-20(s0)
.L342:
	.loc 1 2322 1
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
.LFE42:
	.size	lwip_pollscan, .-lwip_pollscan
	.section	.text.lwip_poll,"ax",@progbits
	.align	1
	.globl	lwip_poll
	.type	lwip_poll, @function
lwip_poll:
.LFB43:
	.loc 1 2367 1
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
	.loc 1 2368 9
	sw	zero,-20(s0)
	.loc 1 2377 11
	lw	a5,-68(s0)
	beq	a5,zero,.L346
	.loc 1 2377 2 discriminator 2
	lw	a5,-72(s0)
	bne	a5,zero,.L347
.L346:
	.loc 1 2377 12 discriminator 3
	lw	a5,-68(s0)
	bne	a5,zero,.L348
	.loc 1 2377 2 discriminator 5
	lw	a5,-72(s0)
	beq	a5,zero,.L347
.L348:
	.loc 1 2377 44 discriminator 7
	lui	a5,%hi(errno)
	li	a4,22
	sw	a4,%lo(errno)(a5)
	.loc 1 2377 73 discriminator 9
	li	a5,-1
	.loc 1 2377 73 is_stmt 0
	j	.L349
.L347:
	.loc 1 2384 12 is_stmt 1
	li	a2,1
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	lwip_pollscan
	sw	a0,-24(s0)
	.loc 1 2386 6
	lw	a5,-24(s0)
	bge	a5,zero,.L350
	.loc 1 2388 12
	li	a5,-1
	j	.L349
.L350:
	.loc 1 2392 6
	lw	a5,-24(s0)
	bne	a5,zero,.L362
.LBB25:
	.loc 1 2395 8
	lw	a5,-76(s0)
	beq	a5,zero,.L363
	.loc 1 2400 5
	addi	a5,s0,-64
	li	a2,36
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 2407 24
	lw	a5,-68(s0)
	sw	a5,-44(s0)
	.loc 1 2408 25
	lw	a5,-72(s0)
	sw	a5,-40(s0)
	.loc 1 2412 9
	addi	a5,s0,-64
	addi	a5,a5,32
	li	a1,0
	mv	a0,a5
	call	sys_sem_new
	mv	a5,a0
	.loc 1 2412 8 discriminator 1
	beq	a5,zero,.L354
	.loc 1 2414 28 discriminator 1
	lui	a5,%hi(errno)
	li	a4,11
	sw	a4,%lo(errno)(a5)
	.loc 1 2417 14
	li	a5,-1
	j	.L349
.L354:
	.loc 1 2421 5
	addi	a5,s0,-64
	mv	a0,a5
	call	lwip_link_select_cb
	.loc 1 2426 14
	li	a2,2
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	lwip_pollscan
	sw	a0,-24(s0)
	.loc 1 2428 8
	lw	a5,-24(s0)
	bne	a5,zero,.L356
	.loc 1 2430 10
	lw	a5,-76(s0)
	bge	a5,zero,.L357
	.loc 1 2432 21
	sw	zero,-28(s0)
	j	.L358
.L357:
	.loc 1 2436 21
	lw	a5,-76(s0)
	sw	a5,-28(s0)
.L358:
	.loc 1 2438 17
	addi	a5,s0,-64
	addi	a5,a5,32
	lw	a1,-28(s0)
	mv	a0,a5
	call	sys_arch_sem_wait
	sw	a0,-20(s0)
.L356:
	.loc 1 2446 14
	li	a2,4
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	lwip_pollscan
	sw	a0,-24(s0)
	.loc 1 2448 5
	addi	a5,s0,-64
	mv	a0,a5
	call	lwip_unlink_select_cb
	.loc 1 2456 5
	addi	a5,s0,-64
	addi	a5,a5,32
	mv	a0,a5
	call	sys_sem_free
	.loc 1 2460 8
	lw	a5,-24(s0)
	bge	a5,zero,.L361
	.loc 1 2463 14
	li	a5,-1
	j	.L349
.L351:
.L362:
.LBE25:
	.loc 1 2474 1
	nop
	j	.L361
.L363:
.LBB26:
	.loc 1 2397 7
	nop
.L361:
.LBE26:
	.loc 1 2477 10
	lw	a5,-24(s0)
.L349:
	.loc 1 2478 1
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
.LFE43:
	.size	lwip_poll, .-lwip_poll
	.section	.text.lwip_poll_should_wake,"ax",@progbits
	.align	1
	.type	lwip_poll_should_wake, @function
lwip_poll_should_wake:
.LFB44:
	.loc 1 2486 1
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
	sw	a4,-52(s0)
	.loc 1 2488 12
	sw	zero,-20(s0)
	.loc 1 2488 3
	j	.L365
.L370:
.LBB27:
	.loc 1 2489 39
	lw	a5,-36(s0)
	lw	a4,20(a5)
	.loc 1 2489 49
	lw	a5,-20(s0)
	slli	a5,a5,3
	.loc 1 2489 26
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 2490 15
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 2490 8
	lw	a4,-40(s0)
	bne	a4,a5,.L366
	.loc 1 2494 10
	lw	a5,-44(s0)
	beq	a5,zero,.L367
	.loc 1 2494 35 discriminator 1
	lw	a5,-24(s0)
	lh	a5,4(a5)
	.loc 1 2494 44 discriminator 1
	slli	a5,a5,16
	srli	a5,a5,16
	andi	a5,a5,1
	.loc 1 2494 25 discriminator 1
	beq	a5,zero,.L367
	.loc 1 2495 16
	li	a5,1
	j	.L368
.L367:
	.loc 1 2497 10
	lw	a5,-48(s0)
	beq	a5,zero,.L369
	.loc 1 2497 35 discriminator 1
	lw	a5,-24(s0)
	lh	a5,4(a5)
	.loc 1 2497 44 discriminator 1
	slli	a5,a5,16
	srli	a5,a5,16
	andi	a5,a5,2
	.loc 1 2497 25 discriminator 1
	beq	a5,zero,.L369
	.loc 1 2498 16
	li	a5,1
	j	.L368
.L369:
	.loc 1 2500 10
	lw	a5,-52(s0)
	beq	a5,zero,.L366
	.loc 1 2502 16
	li	a5,1
	j	.L368
.L366:
.LBE27:
	.loc 1 2488 42 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L365:
	.loc 1 2488 26 discriminator 1
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 2488 21 discriminator 1
	lw	a4,-20(s0)
	bltu	a4,a5,.L370
	.loc 1 2506 10
	li	a5,0
.L368:
	.loc 1 2507 1
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
.LFE44:
	.size	lwip_poll_should_wake, .-lwip_poll_should_wake
	.section	.text.event_callback,"ax",@progbits
	.align	1
	.type	event_callback, @function
event_callback:
.LFB45:
	.loc 1 2525 1
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
	mv	a4,a2
	sb	a5,-53(s0)
	mv	a5,a4
	sh	a5,-56(s0)
	.loc 1 2533 6
	lw	a5,-52(s0)
	beq	a5,zero,.L388
	.loc 1 2534 7
	lw	a5,-52(s0)
	lw	a5,24(a5)
	sw	a5,-20(s0)
	.loc 1 2535 8
	lw	a5,-20(s0)
	bge	a5,zero,.L373
	.loc 1 2541 13
	call	sys_arch_protect
	sw	a0,-28(s0)
	.loc 1 2542 29
	lw	a5,-52(s0)
	lw	a5,24(a5)
	.loc 1 2542 10
	bge	a5,zero,.L374
	.loc 1 2543 12
	lbu	a5,-53(s0)
	bne	a5,zero,.L375
	.loc 1 2546 29
	lw	a5,-52(s0)
	lw	a5,24(a5)
	.loc 1 2546 36
	addi	a4,a5,-1
	lw	a5,-52(s0)
	sw	a4,24(a5)
.L375:
	.loc 1 2548 9
	lw	a0,-28(s0)
	call	sys_arch_unprotect
	.loc 1 2549 9
	j	.L371
.L374:
	.loc 1 2551 9
	lw	a5,-52(s0)
	lw	a5,24(a5)
	sw	a5,-20(s0)
	.loc 1 2552 7
	lw	a0,-28(s0)
	call	sys_arch_unprotect
.L373:
	.loc 1 2555 12
	lw	a0,-20(s0)
	call	get_socket
	sw	a0,-32(s0)
	.loc 1 2556 8
	lw	a5,-32(s0)
	beq	a5,zero,.L389
	.loc 1 2563 17
	li	a5,1
	sw	a5,-24(s0)
	.loc 1 2564 9
	call	sys_arch_protect
	sw	a0,-28(s0)
	.loc 1 2566 3
	lbu	a5,-53(s0)
	li	a4,4
	beq	a5,a4,.L378
	li	a4,4
	bgt	a5,a4,.L390
	li	a4,3
	beq	a5,a4,.L380
	li	a4,3
	bgt	a5,a4,.L390
	li	a4,2
	beq	a5,a4,.L381
	li	a4,2
	bgt	a5,a4,.L390
	beq	a5,zero,.L382
	li	a4,1
	beq	a5,a4,.L383
	.loc 1 2592 7
	j	.L390
.L382:
	.loc 1 2568 11
	lw	a5,-32(s0)
	lh	a5,8(a5)
	.loc 1 2568 21
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	lw	a5,-32(s0)
	sh	a4,8(a5)
	.loc 1 2569 15
	lw	a5,-32(s0)
	lh	a4,8(a5)
	.loc 1 2569 10
	li	a5,1
	ble	a4,a5,.L391
	.loc 1 2570 23
	sw	zero,-24(s0)
	.loc 1 2572 7
	j	.L391
.L383:
	.loc 1 2574 11
	lw	a5,-32(s0)
	lh	a5,8(a5)
	.loc 1 2574 21
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,-1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	lw	a5,-32(s0)
	sh	a4,8(a5)
	.loc 1 2575 21
	sw	zero,-24(s0)
	.loc 1 2576 7
	j	.L385
.L381:
	.loc 1 2578 15
	lw	a5,-32(s0)
	lhu	a5,10(a5)
	.loc 1 2578 10
	beq	a5,zero,.L386
	.loc 1 2579 23
	sw	zero,-24(s0)
.L386:
	.loc 1 2581 23
	lw	a5,-32(s0)
	li	a4,1
	sh	a4,10(a5)
	.loc 1 2582 7
	j	.L385
.L380:
	.loc 1 2584 23
	lw	a5,-32(s0)
	sh	zero,10(a5)
	.loc 1 2585 21
	sw	zero,-24(s0)
	.loc 1 2586 7
	j	.L385
.L378:
	.loc 1 2588 22
	lw	a5,-32(s0)
	li	a4,1
	sh	a4,12(a5)
	.loc 1 2589 7
	j	.L385
.L390:
	.loc 1 2592 7
	nop
	j	.L385
.L391:
	.loc 1 2572 7
	nop
.L385:
	.loc 1 2595 11
	lw	a5,-32(s0)
	lbu	a5,14(a5)
	.loc 1 2595 6
	beq	a5,zero,.L387
	.loc 1 2595 28 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L387
.LBB28:
	.loc 1 2598 25
	lw	a5,-32(s0)
	lh	a5,8(a5)
	.loc 1 2598 36
	sgt	a5,a5,zero
	andi	a5,a5,0xff
	.loc 1 2598 19
	sw	a5,-36(s0)
	.loc 1 2599 25
	lw	a5,-32(s0)
	lhu	a5,10(a5)
	.loc 1 2599 37
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 1 2599 19
	sw	a5,-40(s0)
	.loc 1 2600 24
	lw	a5,-32(s0)
	lhu	a5,12(a5)
	.loc 1 2600 35
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 1 2600 18
	sw	a5,-44(s0)
	.loc 1 2601 5
	lw	a0,-28(s0)
	call	sys_arch_unprotect
	.loc 1 2603 5
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-20(s0)
	call	select_check_waiters
.LBE28:
	.loc 1 2595 46
	j	.L371
.L387:
	.loc 1 2605 5
	lw	a0,-28(s0)
	call	sys_arch_unprotect
	j	.L371
.L388:
	.loc 1 2560 5
	nop
	j	.L371
.L389:
	.loc 1 2557 7
	nop
.L371:
	.loc 1 2608 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE45:
	.size	event_callback, .-event_callback
	.section	.text.select_check_waiters,"ax",@progbits
	.align	1
	.type	select_check_waiters, @function
select_check_waiters:
.LFB46:
	.loc 1 2624 1
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
	.loc 1 2634 9
	call	sys_arch_protect
	sw	a0,-28(s0)
.L393:
	.loc 1 2637 22
	lui	a5,%hi(select_cb_ctr)
	lw	a5,%lo(select_cb_ctr)(a5)
	sw	a5,-24(s0)
	.loc 1 2639 12
	lui	a5,%hi(select_cb_list)
	lw	a5,%lo(select_cb_list)(a5)
	sw	a5,-20(s0)
	.loc 1 2639 3
	j	.L394
.L401:
	.loc 1 2640 12
	lw	a5,-20(s0)
	lw	a5,28(a5)
	.loc 1 2640 8
	bne	a5,zero,.L395
.LBB29:
	.loc 1 2642 11
	sw	zero,-32(s0)
	.loc 1 2644 14
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 2644 10
	beq	a5,zero,.L396
	.loc 1 2645 21
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-20(s0)
	call	lwip_poll_should_wake
	sw	a0,-32(s0)
	j	.L397
.L396:
	.loc 1 2654 12
	lw	a5,-40(s0)
	beq	a5,zero,.L398
	.loc 1 2655 18
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 2655 14
	beq	a5,zero,.L398
	.loc 1 2655 28 discriminator 1
	lw	a4,-36(s0)
	li	a5,15
	bgt	a4,a5,.L398
	.loc 1 2655 56 discriminator 2
	lw	a5,-36(s0)
	blt	a5,zero,.L398
	.loc 1 2655 88 discriminator 3
	lw	a5,-20(s0)
	lw	a4,8(a5)
	.loc 1 2655 115 discriminator 3
	lw	a5,-36(s0)
	srai	a3,a5,31
	andi	a3,a3,7
	add	a5,a3,a5
	srai	a5,a5,3
	.loc 1 2655 107 discriminator 3
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 2655 136 discriminator 3
	lw	a5,-36(s0)
	andi	a5,a5,7
	.loc 1 2655 28 discriminator 3
	sra	a5,a4,a5
	andi	a5,a5,1
	beq	a5,zero,.L398
	.loc 1 2656 23
	li	a5,1
	sw	a5,-32(s0)
.L398:
	.loc 1 2659 12
	lw	a5,-44(s0)
	beq	a5,zero,.L399
	.loc 1 2660 14
	lw	a5,-32(s0)
	bne	a5,zero,.L399
	.loc 1 2660 32 discriminator 1
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 2660 26 discriminator 1
	beq	a5,zero,.L399
	.loc 1 2660 43 discriminator 2
	lw	a4,-36(s0)
	li	a5,15
	bgt	a4,a5,.L399
	.loc 1 2660 71 discriminator 3
	lw	a5,-36(s0)
	blt	a5,zero,.L399
	.loc 1 2660 103 discriminator 4
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 2660 131 discriminator 4
	lw	a5,-36(s0)
	srai	a3,a5,31
	andi	a3,a3,7
	add	a5,a3,a5
	srai	a5,a5,3
	.loc 1 2660 123 discriminator 4
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 2660 152 discriminator 4
	lw	a5,-36(s0)
	andi	a5,a5,7
	.loc 1 2660 43 discriminator 4
	sra	a5,a4,a5
	andi	a5,a5,1
	beq	a5,zero,.L399
	.loc 1 2661 23
	li	a5,1
	sw	a5,-32(s0)
.L399:
	.loc 1 2664 12
	lw	a5,-48(s0)
	beq	a5,zero,.L397
	.loc 1 2665 14
	lw	a5,-32(s0)
	bne	a5,zero,.L397
	.loc 1 2665 32 discriminator 1
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 2665 26 discriminator 1
	beq	a5,zero,.L397
	.loc 1 2665 44 discriminator 2
	lw	a4,-36(s0)
	li	a5,15
	bgt	a4,a5,.L397
	.loc 1 2665 72 discriminator 3
	lw	a5,-36(s0)
	blt	a5,zero,.L397
	.loc 1 2665 104 discriminator 4
	lw	a5,-20(s0)
	lw	a4,16(a5)
	.loc 1 2665 133 discriminator 4
	lw	a5,-36(s0)
	srai	a3,a5,31
	andi	a3,a3,7
	add	a5,a3,a5
	srai	a5,a5,3
	.loc 1 2665 125 discriminator 4
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 2665 154 discriminator 4
	lw	a5,-36(s0)
	andi	a5,a5,7
	.loc 1 2665 44 discriminator 4
	sra	a5,a4,a5
	andi	a5,a5,1
	beq	a5,zero,.L397
	.loc 1 2666 23
	li	a5,1
	sw	a5,-32(s0)
.L397:
	.loc 1 2671 10
	lw	a5,-32(s0)
	beq	a5,zero,.L395
	.loc 1 2672 28
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,28(a5)
	.loc 1 2676 9
	lw	a5,-20(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	sys_sem_signal
.L395:
.LBE29:
	.loc 1 2683 5
	lw	a0,-28(s0)
	call	sys_arch_unprotect
	.loc 1 2685 11
	call	sys_arch_protect
	sw	a0,-28(s0)
	.loc 1 2686 28
	lui	a5,%hi(select_cb_ctr)
	lw	a5,%lo(select_cb_ctr)(a5)
	.loc 1 2686 8
	lw	a4,-24(s0)
	beq	a4,a5,.L400
	.loc 1 2688 7
	j	.L393
.L400:
	.loc 1 2691 24
	lui	a5,%hi(select_cb_ctr)
	lw	a5,%lo(select_cb_ctr)(a5)
	sw	a5,-24(s0)
	.loc 1 2639 46 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L394:
	.loc 1 2639 34 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L401
	.loc 1 2693 3
	lw	a0,-28(s0)
	call	sys_arch_unprotect
	.loc 1 2695 1
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
	.size	select_check_waiters, .-select_check_waiters
	.section	.text.lwip_shutdown,"ax",@progbits
	.align	1
	.globl	lwip_shutdown
	.type	lwip_shutdown, @function
lwip_shutdown:
.LFB47:
	.loc 1 2703 1
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
	.loc 1 2706 8
	sb	zero,-17(s0)
	.loc 1 2706 21
	sb	zero,-18(s0)
	.loc 1 2710 10
	lw	a0,-36(s0)
	call	get_socket
	sw	a0,-24(s0)
	.loc 1 2711 6
	lw	a5,-24(s0)
	bne	a5,zero,.L403
	.loc 1 2712 12
	li	a5,-1
	j	.L404
.L403:
	.loc 1 2715 11
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 2715 6
	beq	a5,zero,.L405
	.loc 1 2716 16
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 2716 22
	lbu	a5,0(a5)
	.loc 1 2716 30
	andi	a4,a5,240
	.loc 1 2716 8
	li	a5,16
	beq	a4,a5,.L406
	.loc 1 2717 28 discriminator 1
	lui	a5,%hi(errno)
	li	a4,95
	sw	a4,%lo(errno)(a5)
	.loc 1 2719 14
	li	a5,-1
	j	.L404
.L405:
	.loc 1 2722 27 discriminator 1
	lui	a5,%hi(errno)
	li	a4,107
	sw	a4,%lo(errno)(a5)
	.loc 1 2724 12
	li	a5,-1
	j	.L404
.L406:
	.loc 1 2727 6
	lw	a5,-40(s0)
	bne	a5,zero,.L407
	.loc 1 2728 13
	li	a5,1
	sb	a5,-17(s0)
	j	.L408
.L407:
	.loc 1 2729 13
	lw	a4,-40(s0)
	li	a5,1
	bne	a4,a5,.L409
	.loc 1 2730 13
	li	a5,1
	sb	a5,-18(s0)
	j	.L408
.L409:
	.loc 1 2731 13
	lw	a4,-40(s0)
	li	a5,2
	bne	a4,a5,.L410
	.loc 1 2732 13
	li	a5,1
	sb	a5,-17(s0)
	.loc 1 2733 13
	li	a5,1
	sb	a5,-18(s0)
	j	.L408
.L410:
	.loc 1 2735 26 discriminator 1
	lui	a5,%hi(errno)
	li	a4,22
	sw	a4,%lo(errno)(a5)
	.loc 1 2737 12
	li	a5,-1
	j	.L404
.L408:
	.loc 1 2739 9
	lw	a5,-24(s0)
	lw	a5,0(a5)
	lbu	a3,-18(s0)
	lbu	a4,-17(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	netconn_shutdown
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 1 2741 12
	lb	a5,-25(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a5,a0
	.loc 1 2741 11 discriminator 1
	beq	a5,zero,.L411
	.loc 1 2741 42 discriminator 2
	lb	a5,-25(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a4,a0
	.loc 1 2741 39 discriminator 3
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L411:
	.loc 1 2743 29
	lb	a5,-25(s0)
	bne	a5,zero,.L412
	.loc 1 2743 29 is_stmt 0 discriminator 1
	li	a5,0
	.loc 1 2743 29
	j	.L404
.L412:
	.loc 1 2743 29 discriminator 2
	li	a5,-1
.L404:
	.loc 1 2744 1 is_stmt 1
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
.LFE47:
	.size	lwip_shutdown, .-lwip_shutdown
	.section	.text.lwip_getaddrname,"ax",@progbits
	.align	1
	.type	lwip_getaddrname, @function
lwip_getaddrname:
.LFB48:
	.loc 1 2748 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	mv	a5,a3
	sb	a5,-61(s0)
	.loc 1 2755 10
	lw	a0,-52(s0)
	call	get_socket
	sw	a0,-20(s0)
	.loc 1 2756 6
	lw	a5,-20(s0)
	bne	a5,zero,.L415
	.loc 1 2757 12
	li	a5,-1
	j	.L420
.L415:
	.loc 1 2761 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lbu	a3,-61(s0)
	addi	a2,s0,-46
	addi	a4,s0,-44
	mv	a1,a4
	mv	a0,a5
	call	netconn_getaddr
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 1 2762 6
	lb	a5,-21(s0)
	beq	a5,zero,.L417
	.loc 1 2763 14
	lb	a5,-21(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a5,a0
	.loc 1 2763 13 discriminator 1
	beq	a5,zero,.L418
	.loc 1 2763 44 discriminator 2
	lb	a5,-21(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a4,a0
	.loc 1 2763 41 discriminator 3
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L418:
	.loc 1 2765 12
	li	a5,-1
	j	.L420
.L417:
	.loc 1 2777 38
	addi	a5,s0,-40
	.loc 1 2777 56
	li	a4,16
	sb	a4,0(a5)
	.loc 1 2777 116
	addi	a5,s0,-40
	.loc 1 2777 137
	li	a4,2
	sb	a4,1(a5)
	.loc 1 2777 193
	lhu	a5,-46(s0)
	.loc 1 2777 172
	addi	s1,s0,-40
	.loc 1 2777 193
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 2777 191 discriminator 1
	sh	a5,2(s1)
	.loc 1 2777 246 discriminator 1
	addi	a5,s0,-40
	.loc 1 2777 287 discriminator 1
	lw	a4,-44(s0)
	.loc 1 2777 274 discriminator 1
	sw	a4,4(a5)
	.loc 1 2777 334 discriminator 1
	addi	a5,s0,-40
	.loc 1 2777 342 discriminator 1
	addi	a5,a5,8
	.loc 1 2777 297 discriminator 1
	li	a2,8
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 2783 7
	lw	a5,-60(s0)
	lw	a5,0(a5)
	.loc 1 2783 30
	lbu	a4,-40(s0)
	.loc 1 2783 6
	bleu	a5,a4,.L419
	.loc 1 2784 28
	lbu	a5,-40(s0)
	mv	a4,a5
	.loc 1 2784 14
	lw	a5,-60(s0)
	sw	a4,0(a5)
.L419:
	.loc 1 2786 3
	lw	a5,-60(s0)
	lw	a4,0(a5)
	addi	a5,s0,-40
	mv	a2,a4
	mv	a1,a5
	lw	a0,-56(s0)
	call	memcpy
	.loc 1 2790 10
	li	a5,0
.L420:
	.loc 1 2791 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE48:
	.size	lwip_getaddrname, .-lwip_getaddrname
	.section	.text.lwip_getpeername,"ax",@progbits
	.align	1
	.globl	lwip_getpeername
	.type	lwip_getpeername, @function
lwip_getpeername:
.LFB49:
	.loc 1 2795 1
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
	.loc 1 2796 10
	li	a3,0
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	lwip_getaddrname
	mv	a5,a0
	.loc 1 2797 1
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
.LFE49:
	.size	lwip_getpeername, .-lwip_getpeername
	.section	.text.lwip_getsockname,"ax",@progbits
	.align	1
	.globl	lwip_getsockname
	.type	lwip_getsockname, @function
lwip_getsockname:
.LFB50:
	.loc 1 2801 1
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
	.loc 1 2802 10
	li	a3,1
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	lwip_getaddrname
	mv	a5,a0
	.loc 1 2803 1
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
	.size	lwip_getsockname, .-lwip_getsockname
	.section	.text.lwip_getsockopt,"ax",@progbits
	.align	1
	.globl	lwip_getsockopt
	.type	lwip_getsockopt, @function
lwip_getsockopt:
.LFB51:
	.loc 1 2807 1
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
	.loc 1 2809 28
	lw	a0,-68(s0)
	call	get_socket
	sw	a0,-20(s0)
	.loc 1 2815 6
	lw	a5,-20(s0)
	bne	a5,zero,.L426
	.loc 1 2816 12
	li	a5,-1
	j	.L435
.L426:
	.loc 1 2819 6
	lw	a5,-80(s0)
	beq	a5,zero,.L428
	.loc 1 2819 23 discriminator 1
	lw	a5,-84(s0)
	bne	a5,zero,.L429
.L428:
	.loc 1 2820 26 discriminator 1
	lui	a5,%hi(errno)
	li	a4,14
	sw	a4,%lo(errno)(a5)
	.loc 1 2822 12
	li	a5,-1
	j	.L435
.L429:
	.loc 1 2843 10
	lw	a5,-68(s0)
	sw	a5,-56(s0)
	.loc 1 2844 14
	lw	a5,-72(s0)
	sw	a5,-52(s0)
	.loc 1 2845 16
	lw	a5,-76(s0)
	sw	a5,-48(s0)
	.loc 1 2846 17
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 1 2846 15
	sw	a5,-40(s0)
	.loc 1 2848 17
	lw	a5,-80(s0)
	sw	a5,-44(s0)
	.loc 1 2850 12
	sw	zero,-36(s0)
	.loc 1 2854 29
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 2854 24
	addi	a5,a5,12
	.loc 1 2854 22
	sw	a5,-32(s0)
	.loc 1 2856 11
	addi	a5,s0,-56
	mv	a1,a5
	lui	a5,%hi(lwip_getsockopt_callback)
	addi	a0,a5,%lo(lwip_getsockopt_callback)
	call	tcpip_callback
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 1 2857 6
	lb	a5,-21(s0)
	beq	a5,zero,.L430
	.loc 1 2859 14
	lb	a5,-21(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a5,a0
	.loc 1 2859 13 discriminator 1
	beq	a5,zero,.L431
	.loc 1 2859 46 discriminator 2
	lb	a5,-21(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a4,a0
	.loc 1 2859 43 discriminator 3
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L431:
	.loc 1 2861 12
	li	a5,-1
	j	.L435
.L430:
	.loc 1 2863 39
	lw	a5,-32(s0)
	.loc 1 2863 3
	li	a1,0
	mv	a0,a5
	call	sys_arch_sem_wait
	.loc 1 2866 17
	lw	a4,-40(s0)
	.loc 1 2866 11
	lw	a5,-84(s0)
	sw	a4,0(a5)
	.loc 1 2873 7
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	.loc 1 2877 11
	lw	a5,-28(s0)
	beq	a5,zero,.L432
	.loc 1 2877 25 discriminator 1
	lui	a5,%hi(errno)
	lw	a4,-28(s0)
	sw	a4,%lo(errno)(a5)
.L432:
	.loc 1 2879 19
	lw	a5,-28(s0)
	beq	a5,zero,.L433
	.loc 1 2879 19 is_stmt 0 discriminator 1
	li	a5,-1
	.loc 1 2879 19
	j	.L435
.L433:
	.loc 1 2879 19 discriminator 2
	li	a5,0
.L435:
	.loc 1 2880 1 is_stmt 1
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
.LFE51:
	.size	lwip_getsockopt, .-lwip_getsockopt
	.section	.text.lwip_getsockopt_callback,"ax",@progbits
	.align	1
	.type	lwip_getsockopt_callback, @function
lwip_getsockopt_callback:
.LFB52:
	.loc 1 2888 1
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
	.loc 1 2891 8
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 2893 15
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a5,-20(s0)
	lw	a1,4(a5)
	lw	a5,-20(s0)
	lw	a2,8(a5)
	lw	a5,-20(s0)
	lw	a3,12(a5)
	lw	a5,-20(s0)
	addi	a5,a5,16
	mv	a4,a5
	call	lwip_getsockopt_impl
	mv	a4,a0
	.loc 1 2893 13 discriminator 1
	lw	a5,-20(s0)
	sw	a4,20(a5)
	.loc 1 2901 36
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 1 2901 3
	mv	a0,a5
	call	sys_sem_signal
	.loc 1 2902 1
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
	.size	lwip_getsockopt_callback, .-lwip_getsockopt_callback
	.section	.text.lwip_sockopt_to_ipopt,"ax",@progbits
	.align	1
	.type	lwip_sockopt_to_ipopt, @function
lwip_sockopt_to_ipopt:
.LFB53:
	.loc 1 2907 1
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
	.loc 1 2912 3
	lw	a4,-20(s0)
	li	a5,32
	beq	a4,a5,.L438
	lw	a4,-20(s0)
	li	a5,32
	bgt	a4,a5,.L439
	lw	a4,-20(s0)
	li	a5,4
	beq	a4,a5,.L440
	lw	a4,-20(s0)
	li	a5,8
	beq	a4,a5,.L441
	j	.L439
.L438:
	.loc 1 2914 12
	li	a5,32
	j	.L442
.L441:
	.loc 1 2916 12
	li	a5,8
	j	.L442
.L440:
	.loc 1 2918 12
	li	a5,4
	j	.L442
.L439:
	.loc 1 2921 12
	li	a5,0
.L442:
	.loc 1 2923 1
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
.LFE53:
	.size	lwip_sockopt_to_ipopt, .-lwip_sockopt_to_ipopt
	.section	.text.lwip_getsockopt_impl,"ax",@progbits
	.align	1
	.type	lwip_getsockopt_impl, @function
lwip_getsockopt_impl:
.LFB54:
	.loc 1 2973 1
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
	sw	a4,-52(s0)
	.loc 1 2974 7
	sw	zero,-20(s0)
	.loc 1 2975 28
	lw	a0,-36(s0)
	call	tryget_socket
	sw	a0,-24(s0)
	.loc 1 2976 6
	lw	a5,-24(s0)
	bne	a5,zero,.L444
	.loc 1 2977 12
	li	a5,9
	j	.L445
.L444:
	.loc 1 2987 3
	lw	a4,-40(s0)
	li	a5,4096
	addi	a5,a5,-1
	beq	a4,a5,.L446
	lw	a4,-40(s0)
	li	a5,4096
	bge	a4,a5,.L447
	lw	a4,-40(s0)
	li	a5,255
	beq	a4,a5,.L448
	lw	a4,-40(s0)
	li	a5,255
	bgt	a4,a5,.L447
	lw	a5,-40(s0)
	beq	a5,zero,.L449
	lw	a4,-40(s0)
	li	a5,6
	beq	a4,a5,.L450
	j	.L447
.L446:
	.loc 1 2991 7
	lw	a4,-44(s0)
	li	a5,4096
	addi	a5,a5,10
	beq	a4,a5,.L451
	lw	a4,-44(s0)
	li	a5,4096
	addi	a5,a5,10
	bgt	a4,a5,.L452
	lw	a4,-44(s0)
	li	a5,4096
	addi	a5,a5,8
	beq	a4,a5,.L453
	lw	a4,-44(s0)
	li	a5,4096
	addi	a5,a5,8
	bgt	a4,a5,.L452
	lw	a4,-44(s0)
	li	a5,4096
	addi	a5,a5,7
	beq	a4,a5,.L454
	lw	a4,-44(s0)
	li	a5,4096
	addi	a5,a5,7
	bgt	a4,a5,.L452
	lw	a4,-44(s0)
	li	a5,4096
	addi	a5,a5,6
	beq	a4,a5,.L455
	lw	a4,-44(s0)
	li	a5,4096
	addi	a5,a5,6
	bgt	a4,a5,.L452
	lw	a4,-44(s0)
	li	a5,4096
	addi	a5,a5,5
	beq	a4,a5,.L456
	lw	a4,-44(s0)
	li	a5,4096
	addi	a5,a5,5
	bgt	a4,a5,.L452
	lw	a4,-44(s0)
	li	a5,32
	beq	a4,a5,.L457
	lw	a4,-44(s0)
	li	a5,32
	bgt	a4,a5,.L452
	lw	a4,-44(s0)
	li	a5,8
	beq	a4,a5,.L457
	lw	a4,-44(s0)
	li	a5,8
	bgt	a4,a5,.L452
	lw	a4,-44(s0)
	li	a5,2
	beq	a4,a5,.L458
	lw	a4,-44(s0)
	li	a5,4
	beq	a4,a5,.L457
	j	.L452
.L458:
	.loc 1 2995 26
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 2995 24
	li	a5,3
	bgtu	a4,a5,.L459
	.loc 1 2995 61 discriminator 1
	li	a5,22
	.loc 1 2995 61 is_stmt 0
	j	.L445
.L459:
	.loc 1 2995 88 is_stmt 1 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 2995 80 discriminator 2
	beq	a5,zero,.L460
	.loc 1 2995 22 discriminator 4
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 2995 33 discriminator 4
	lw	a5,4(a5)
	.loc 1 2995 12 discriminator 4
	bne	a5,zero,.L461
.L460:
	.loc 1 2995 24 discriminator 5
	li	a5,22
	.loc 1 2995 24 is_stmt 0
	j	.L445
.L461:
	.loc 1 2996 21 is_stmt 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 2996 27
	lbu	a5,0(a5)
	.loc 1 2996 34
	andi	a4,a5,240
	.loc 1 2996 14
	li	a5,16
	beq	a4,a5,.L462
	.loc 1 2998 20
	li	a5,92
	j	.L445
.L462:
	.loc 1 3000 20
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3000 31
	lw	a5,4(a5)
	.loc 1 3000 14
	beq	a5,zero,.L463
	.loc 1 3000 52 discriminator 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3000 63 discriminator 1
	lw	a5,4(a5)
	.loc 1 3000 67 discriminator 1
	lbu	a4,20(a5)
	.loc 1 3000 44 discriminator 1
	li	a5,1
	bne	a4,a5,.L463
	.loc 1 3001 28
	lw	a5,-48(s0)
	li	a4,1
	sw	a4,0(a5)
	.loc 1 3005 11
	j	.L465
.L463:
	.loc 1 3003 28
	lw	a5,-48(s0)
	sw	zero,0(a5)
	.loc 1 3005 11
	j	.L465
.L457:
	.loc 1 3014 14
	lw	a4,-44(s0)
	li	a5,32
	bne	a4,a5,.L466
	.loc 1 3015 22
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3015 28
	lbu	a5,0(a5)
	.loc 1 3015 35
	andi	a4,a5,240
	.loc 1 3014 35 discriminator 1
	li	a5,32
	beq	a4,a5,.L466
	.loc 1 3017 20
	li	a5,92
	j	.L445
.L466:
	.loc 1 3020 21
	lw	a0,-44(s0)
	call	lwip_sockopt_to_ipopt
	sw	a0,-44(s0)
	.loc 1 3022 26
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 3022 24
	li	a5,3
	bgtu	a4,a5,.L467
	.loc 1 3022 61 discriminator 1
	li	a5,22
	.loc 1 3022 61 is_stmt 0
	j	.L445
.L467:
	.loc 1 3022 88 is_stmt 1 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3022 80 discriminator 2
	beq	a5,zero,.L468
	.loc 1 3022 22 discriminator 4
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3022 33 discriminator 4
	lw	a5,4(a5)
	.loc 1 3022 12 discriminator 4
	bne	a5,zero,.L469
.L468:
	.loc 1 3022 24 discriminator 5
	li	a5,22
	.loc 1 3022 24 is_stmt 0
	j	.L445
.L469:
	.loc 1 3023 34 is_stmt 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3023 45
	lw	a5,4(a5)
	.loc 1 3023 49
	lbu	a5,9(a5)
	mv	a4,a5
	.loc 1 3023 62
	lw	a5,-44(s0)
	and	a4,a4,a5
	.loc 1 3023 26
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 1 3026 11
	j	.L465
.L453:
	.loc 1 3029 26
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 3029 24
	li	a5,3
	bgtu	a4,a5,.L470
	.loc 1 3029 61 discriminator 1
	li	a5,22
	.loc 1 3029 61 is_stmt 0
	j	.L445
.L470:
	.loc 1 3029 87 is_stmt 1 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3029 80 discriminator 2
	bne	a5,zero,.L471
	.loc 1 3029 23 discriminator 3
	li	a5,22
	.loc 1 3029 23 is_stmt 0
	j	.L445
.L471:
	.loc 1 3030 26 is_stmt 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3030 32
	lbu	a5,0(a5)
	.loc 1 3030 40
	andi	a5,a5,240
	.loc 1 3030 11
	li	a4,64
	beq	a5,a4,.L472
	li	a4,64
	bgt	a5,a4,.L473
	li	a4,16
	beq	a5,a4,.L474
	li	a4,32
	beq	a5,a4,.L475
	j	.L473
.L472:
	.loc 1 3032 30
	lw	a5,-48(s0)
	li	a4,3
	sw	a4,0(a5)
	.loc 1 3033 15
	j	.L476
.L474:
	.loc 1 3035 30
	lw	a5,-48(s0)
	li	a4,1
	sw	a4,0(a5)
	.loc 1 3036 15
	j	.L476
.L475:
	.loc 1 3038 30
	lw	a5,-48(s0)
	li	a4,2
	sw	a4,0(a5)
	.loc 1 3039 15
	j	.L476
.L473:
	.loc 1 3041 37
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3041 43
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 3041 30
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 1 3048 11
	j	.L465
.L476:
	j	.L465
.L454:
	.loc 1 3051 21
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 3051 19
	li	a5,3
	bgtu	a4,a5,.L477
	.loc 1 3051 56 discriminator 1
	li	a5,22
	.loc 1 3051 56 is_stmt 0
	j	.L445
.L477:
	.loc 1 3052 28 is_stmt 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	netconn_err
	mv	a5,a0
	.loc 1 3052 28 is_stmt 0 discriminator 1
	mv	a0,a5
	call	err_to_errno
	mv	a4,a0
	.loc 1 3052 26 is_stmt 1 discriminator 2
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 1 3055 11
	j	.L465
.L456:
	.loc 1 3059 26
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 3059 24
	li	a5,7
	bgtu	a4,a5,.L478
	.loc 1 3059 72 discriminator 1
	li	a5,22
	.loc 1 3059 72 is_stmt 0
	j	.L445
.L478:
	.loc 1 3059 98 is_stmt 1 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3059 91 discriminator 2
	bne	a5,zero,.L479
	.loc 1 3059 23 discriminator 3
	li	a5,22
	.loc 1 3059 23 is_stmt 0
	j	.L445
.L479:
.LBB30:
	.loc 1 3060 35 is_stmt 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3060 42
	lw	a5,28(a5)
	.loc 1 3060 22
	sw	a5,-32(s0)
	.loc 1 3060 112
	lw	a4,-32(s0)
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a5,a5,6
	.loc 1 3060 99
	mv	a4,a5
	.loc 1 3060 97
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 1 3060 176
	lw	a4,-32(s0)
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a5,a5,6
	li	a3,1000
	mul	a5,a5,a3
	sub	a5,a4,a5
	.loc 1 3060 185
	li	a4,1000
	mul	a5,a5,a4
	.loc 1 3060 162
	mv	a4,a5
	.loc 1 3060 160
	lw	a5,-48(s0)
	sw	a4,4(a5)
.LBE30:
	.loc 1 3061 11
	j	.L465
.L455:
	.loc 1 3065 26
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 3065 24
	li	a5,7
	bgtu	a4,a5,.L480
	.loc 1 3065 72 discriminator 1
	li	a5,22
	.loc 1 3065 72 is_stmt 0
	j	.L445
.L480:
	.loc 1 3065 98 is_stmt 1 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3065 91 discriminator 2
	bne	a5,zero,.L481
	.loc 1 3065 23 discriminator 3
	li	a5,22
	.loc 1 3065 23 is_stmt 0
	j	.L445
.L481:
.LBB31:
	.loc 1 3066 35 is_stmt 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3066 22
	lw	a5,32(a5)
	sw	a5,-28(s0)
	.loc 1 3066 112
	lw	a4,-28(s0)
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a5,a5,6
	.loc 1 3066 99
	mv	a4,a5
	.loc 1 3066 97
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 1 3066 176
	lw	a4,-28(s0)
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a5,a5,6
	li	a3,1000
	mul	a5,a5,a3
	sub	a5,a4,a5
	.loc 1 3066 185
	li	a4,1000
	mul	a5,a5,a4
	.loc 1 3066 162
	mv	a4,a5
	.loc 1 3066 160
	lw	a5,-48(s0)
	sw	a4,4(a5)
.LBE31:
	.loc 1 3067 11
	j	.L465
.L451:
	.loc 1 3093 31
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 3093 29
	li	a5,3
	bgtu	a4,a5,.L482
	.loc 1 3093 66 discriminator 1
	li	a5,22
	.loc 1 3093 66 is_stmt 0
	j	.L445
.L482:
	.loc 1 3093 93 is_stmt 1 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3093 85 discriminator 2
	beq	a5,zero,.L483
	.loc 1 3093 22 discriminator 4
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3093 33 discriminator 4
	lw	a5,4(a5)
	.loc 1 3093 12 discriminator 4
	bne	a5,zero,.L484
.L483:
	.loc 1 3093 24 discriminator 5
	li	a5,22
	.loc 1 3093 24 is_stmt 0
	j	.L445
.L484:
	.loc 1 3093 54 is_stmt 1 discriminator 6
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3093 60 discriminator 6
	lbu	a5,0(a5)
	.loc 1 3093 68 discriminator 6
	andi	a4,a5,240
	.loc 1 3093 44 discriminator 6
	li	a5,32
	beq	a4,a5,.L485
	.loc 1 3093 102 discriminator 7
	li	a5,92
	.loc 1 3093 102 is_stmt 0
	j	.L445
.L485:
	.loc 1 3101 35 is_stmt 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3101 46
	lw	a5,4(a5)
	.loc 1 3101 51
	lbu	a5,16(a5)
	.loc 1 3101 80
	andi	a4,a5,1
	.loc 1 3101 26
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 1 3102 11
	j	.L465
.L452:
	.loc 1 3107 15
	li	a5,92
	sw	a5,-20(s0)
	.loc 1 3108 11
	nop
.L465:
	.loc 1 3110 7
	j	.L486
.L449:
	.loc 1 3114 7
	lw	a4,-44(s0)
	li	a5,7
	beq	a4,a5,.L487
	lw	a4,-44(s0)
	li	a5,7
	bgt	a4,a5,.L488
	lw	a4,-44(s0)
	li	a5,6
	beq	a4,a5,.L489
	lw	a4,-44(s0)
	li	a5,6
	bgt	a4,a5,.L488
	lw	a4,-44(s0)
	li	a5,5
	beq	a4,a5,.L490
	lw	a4,-44(s0)
	li	a5,5
	bgt	a4,a5,.L488
	lw	a4,-44(s0)
	li	a5,1
	beq	a4,a5,.L491
	lw	a4,-44(s0)
	li	a5,2
	bne	a4,a5,.L488
	.loc 1 3116 26
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 3116 24
	li	a5,3
	bgtu	a4,a5,.L492
	.loc 1 3116 61 discriminator 1
	li	a5,22
	.loc 1 3116 61 is_stmt 0
	j	.L445
.L492:
	.loc 1 3116 88 is_stmt 1 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3116 80 discriminator 2
	beq	a5,zero,.L493
	.loc 1 3116 22 discriminator 4
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3116 33 discriminator 4
	lw	a5,4(a5)
	.loc 1 3116 12 discriminator 4
	bne	a5,zero,.L494
.L493:
	.loc 1 3116 24 discriminator 5
	li	a5,22
	.loc 1 3116 24 is_stmt 0
	j	.L445
.L494:
	.loc 1 3117 32 is_stmt 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3117 43
	lw	a5,4(a5)
	.loc 1 3117 46
	lbu	a5,11(a5)
	mv	a4,a5
	.loc 1 3117 26
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 1 3120 11
	j	.L495
.L491:
	.loc 1 3122 26
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 3122 24
	li	a5,3
	bgtu	a4,a5,.L496
	.loc 1 3122 61 discriminator 1
	li	a5,22
	.loc 1 3122 61 is_stmt 0
	j	.L445
.L496:
	.loc 1 3122 88 is_stmt 1 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3122 80 discriminator 2
	beq	a5,zero,.L497
	.loc 1 3122 22 discriminator 4
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3122 33 discriminator 4
	lw	a5,4(a5)
	.loc 1 3122 12 discriminator 4
	bne	a5,zero,.L498
.L497:
	.loc 1 3122 24 discriminator 5
	li	a5,22
	.loc 1 3122 24 is_stmt 0
	j	.L445
.L498:
	.loc 1 3123 32 is_stmt 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3123 43
	lw	a5,4(a5)
	.loc 1 3123 46
	lbu	a5,10(a5)
	mv	a4,a5
	.loc 1 3123 26
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 1 3126 11
	j	.L495
.L490:
	.loc 1 3129 26
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 3129 24
	bne	a5,zero,.L499
	.loc 1 3129 62 discriminator 1
	li	a5,22
	.loc 1 3129 62 is_stmt 0
	j	.L445
.L499:
	.loc 1 3129 89 is_stmt 1 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3129 81 discriminator 2
	beq	a5,zero,.L500
	.loc 1 3129 22 discriminator 4
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3129 33 discriminator 4
	lw	a5,4(a5)
	.loc 1 3129 12 discriminator 4
	bne	a5,zero,.L501
.L500:
	.loc 1 3129 24 discriminator 5
	li	a5,22
	.loc 1 3129 24 is_stmt 0
	j	.L445
.L501:
	.loc 1 3130 22 is_stmt 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3130 28
	lbu	a5,0(a5)
	.loc 1 3130 36
	andi	a4,a5,240
	.loc 1 3130 14
	li	a5,32
	beq	a4,a5,.L502
	.loc 1 3132 20
	li	a5,92
	j	.L445
.L502:
	.loc 1 3134 35
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3134 46
	lw	a5,4(a5)
	.loc 1 3134 51
	lbu	a4,29(a5)
	.loc 1 3134 27
	lw	a5,-48(s0)
	sb	a4,0(a5)
	.loc 1 3137 11
	j	.L495
.L489:
	.loc 1 3139 26
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 3139 24
	li	a5,3
	bgtu	a4,a5,.L503
	.loc 1 3139 72 discriminator 1
	li	a5,22
	.loc 1 3139 72 is_stmt 0
	j	.L445
.L503:
	.loc 1 3139 99 is_stmt 1 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3139 91 discriminator 2
	beq	a5,zero,.L504
	.loc 1 3139 22 discriminator 4
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3139 33 discriminator 4
	lw	a5,4(a5)
	.loc 1 3139 12 discriminator 4
	bne	a5,zero,.L505
.L504:
	.loc 1 3139 24 discriminator 5
	li	a5,22
	.loc 1 3139 24 is_stmt 0
	j	.L445
.L505:
	.loc 1 3140 22 is_stmt 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3140 28
	lbu	a5,0(a5)
	.loc 1 3140 36
	andi	a4,a5,240
	.loc 1 3140 14
	li	a5,32
	beq	a4,a5,.L506
	.loc 1 3142 20
	li	a5,92
	j	.L445
.L506:
	.loc 1 3144 58
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3144 69
	lw	a5,4(a5)
	.loc 1 3144 87
	lw	a4,24(a5)
	.loc 1 3144 47
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 1 3147 11
	j	.L495
.L487:
	.loc 1 3149 26
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 3149 24
	bne	a5,zero,.L507
	.loc 1 3149 62 discriminator 1
	li	a5,22
	.loc 1 3149 62 is_stmt 0
	j	.L445
.L507:
	.loc 1 3149 89 is_stmt 1 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3149 81 discriminator 2
	beq	a5,zero,.L508
	.loc 1 3149 22 discriminator 4
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3149 33 discriminator 4
	lw	a5,4(a5)
	.loc 1 3149 12 discriminator 4
	bne	a5,zero,.L509
.L508:
	.loc 1 3149 24 discriminator 5
	li	a5,22
	.loc 1 3149 24 is_stmt 0
	j	.L445
.L509:
	.loc 1 3150 20 is_stmt 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3150 31
	lw	a5,4(a5)
	.loc 1 3150 35
	lbu	a5,16(a5)
	.loc 1 3150 43
	andi	a5,a5,8
	.loc 1 3150 14
	beq	a5,zero,.L510
	.loc 1 3151 29
	lw	a5,-48(s0)
	li	a4,1
	sb	a4,0(a5)
	.loc 1 3157 11
	j	.L495
.L510:
	.loc 1 3153 29
	lw	a5,-48(s0)
	sb	zero,0(a5)
	.loc 1 3157 11
	j	.L495
.L488:
	.loc 1 3162 15
	li	a5,92
	sw	a5,-20(s0)
	.loc 1 3163 11
	nop
.L495:
	.loc 1 3165 7
	j	.L486
.L450:
	.loc 1 3171 27
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 3171 25
	li	a5,3
	bgtu	a4,a5,.L512
	.loc 1 3171 62 discriminator 1
	li	a5,22
	.loc 1 3171 62 is_stmt 0
	j	.L445
.L512:
	.loc 1 3171 89 is_stmt 1 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3171 81 discriminator 2
	beq	a5,zero,.L513
	.loc 1 3171 18 discriminator 4
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3171 29 discriminator 4
	lw	a5,4(a5)
	.loc 1 3171 8 discriminator 4
	bne	a5,zero,.L514
.L513:
	.loc 1 3171 20 discriminator 5
	li	a5,22
	.loc 1 3171 20 is_stmt 0
	j	.L445
.L514:
	.loc 1 3171 50 is_stmt 1 discriminator 6
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3171 56 discriminator 6
	lbu	a5,0(a5)
	.loc 1 3171 64 discriminator 6
	andi	a4,a5,240
	.loc 1 3171 40 discriminator 6
	li	a5,16
	beq	a4,a5,.L515
	.loc 1 3171 98 discriminator 7
	li	a5,92
	.loc 1 3171 98 is_stmt 0
	j	.L445
.L515:
	.loc 1 3172 15 is_stmt 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3172 26
	lw	a5,4(a5)
	.loc 1 3172 30
	lbu	a4,20(a5)
	.loc 1 3172 10
	li	a5,1
	bne	a4,a5,.L516
	.loc 1 3174 16
	li	a5,22
	j	.L445
.L516:
	.loc 1 3176 7
	lw	a4,-44(s0)
	li	a5,5
	beq	a4,a5,.L517
	lw	a4,-44(s0)
	li	a5,5
	bgt	a4,a5,.L518
	lw	a4,-44(s0)
	li	a5,4
	beq	a4,a5,.L519
	lw	a4,-44(s0)
	li	a5,4
	bgt	a4,a5,.L518
	lw	a4,-44(s0)
	li	a5,3
	beq	a4,a5,.L520
	lw	a4,-44(s0)
	li	a5,3
	bgt	a4,a5,.L518
	lw	a4,-44(s0)
	li	a5,1
	beq	a4,a5,.L521
	lw	a4,-44(s0)
	li	a5,2
	beq	a4,a5,.L522
	j	.L518
.L521:
	.loc 1 3178 35
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3178 46
	lw	a5,4(a5)
	.loc 1 3178 51
	lhu	a5,26(a5)
	.loc 1 3178 59
	andi	a5,a5,64
	.loc 1 3178 70
	srli	a5,a5,6
	andi	a5,a5,1
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 1 3178 26
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 1 3181 11
	j	.L523
.L522:
	.loc 1 3183 37
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3183 48
	lw	a5,4(a5)
	.loc 1 3183 52
	lw	a5,148(a5)
	.loc 1 3183 28
	mv	a4,a5
	.loc 1 3183 26
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 1 3186 11
	j	.L523
.L520:
	.loc 1 3190 38
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3190 49
	lw	a5,4(a5)
	.loc 1 3190 53
	lw	a4,148(a5)
	.loc 1 3190 65
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a5,a5,6
	.loc 1 3190 28
	mv	a4,a5
	.loc 1 3190 26
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 1 3193 11
	j	.L523
.L519:
	.loc 1 3195 38
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3195 49
	lw	a5,4(a5)
	.loc 1 3195 53
	lw	a4,152(a5)
	.loc 1 3195 66
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a5,a5,6
	.loc 1 3195 28
	mv	a4,a5
	.loc 1 3195 26
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 1 3198 11
	j	.L523
.L517:
	.loc 1 3200 37
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3200 48
	lw	a5,4(a5)
	.loc 1 3200 52
	lw	a5,156(a5)
	.loc 1 3200 28
	mv	a4,a5
	.loc 1 3200 26
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 1 3203 11
	j	.L523
.L518:
	.loc 1 3208 15
	li	a5,92
	sw	a5,-20(s0)
	.loc 1 3209 11
	nop
.L523:
	.loc 1 3211 7
	j	.L486
.L448:
	.loc 1 3280 15
	li	a5,92
	sw	a5,-20(s0)
	.loc 1 3281 11
	nop
	.loc 1 3283 7
	j	.L486
.L447:
	.loc 1 3287 11
	li	a5,92
	sw	a5,-20(s0)
	.loc 1 3288 7
	nop
.L486:
	.loc 1 3292 10
	lw	a5,-20(s0)
.L445:
	.loc 1 3293 1
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
.LFE54:
	.size	lwip_getsockopt_impl, .-lwip_getsockopt_impl
	.section	.text.lwip_setsockopt,"ax",@progbits
	.align	1
	.globl	lwip_setsockopt
	.type	lwip_setsockopt, @function
lwip_setsockopt:
.LFB55:
	.loc 1 3297 1
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
	.loc 1 3298 7
	sw	zero,-20(s0)
	.loc 1 3299 28
	lw	a0,-68(s0)
	call	get_socket
	sw	a0,-24(s0)
	.loc 1 3305 6
	lw	a5,-24(s0)
	bne	a5,zero,.L525
	.loc 1 3306 12
	li	a5,-1
	j	.L533
.L525:
	.loc 1 3309 6
	lw	a5,-80(s0)
	bne	a5,zero,.L527
	.loc 1 3310 26 discriminator 1
	lui	a5,%hi(errno)
	li	a4,14
	sw	a4,%lo(errno)(a5)
	.loc 1 3312 12
	li	a5,-1
	j	.L533
.L527:
	.loc 1 3333 10
	lw	a5,-68(s0)
	sw	a5,-56(s0)
	.loc 1 3334 14
	lw	a5,-72(s0)
	sw	a5,-52(s0)
	.loc 1 3335 16
	lw	a5,-76(s0)
	sw	a5,-48(s0)
	.loc 1 3336 15
	lw	a5,-84(s0)
	sw	a5,-40(s0)
	.loc 1 3340 18
	lw	a5,-80(s0)
	sw	a5,-44(s0)
	.loc 1 3342 12
	sw	zero,-36(s0)
	.loc 1 3346 29
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3346 24
	addi	a5,a5,12
	.loc 1 3346 22
	sw	a5,-32(s0)
	.loc 1 3348 11
	addi	a5,s0,-56
	mv	a1,a5
	lui	a5,%hi(lwip_setsockopt_callback)
	addi	a0,a5,%lo(lwip_setsockopt_callback)
	call	tcpip_callback
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 1 3349 6
	lb	a5,-25(s0)
	beq	a5,zero,.L528
	.loc 1 3351 14
	lb	a5,-25(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a5,a0
	.loc 1 3351 13 discriminator 1
	beq	a5,zero,.L529
	.loc 1 3351 46 discriminator 2
	lb	a5,-25(s0)
	mv	a0,a5
	call	err_to_errno
	mv	a4,a0
	.loc 1 3351 43 discriminator 3
	lui	a5,%hi(errno)
	sw	a4,%lo(errno)(a5)
.L529:
	.loc 1 3353 12
	li	a5,-1
	j	.L533
.L528:
	.loc 1 3355 39
	lw	a5,-32(s0)
	.loc 1 3355 3
	li	a1,0
	mv	a0,a5
	call	sys_arch_sem_wait
	.loc 1 3358 7
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 3362 11
	lw	a5,-20(s0)
	beq	a5,zero,.L530
	.loc 1 3362 25 discriminator 1
	lui	a5,%hi(errno)
	lw	a4,-20(s0)
	sw	a4,%lo(errno)(a5)
.L530:
	.loc 1 3364 19
	lw	a5,-20(s0)
	beq	a5,zero,.L531
	.loc 1 3364 19 is_stmt 0 discriminator 1
	li	a5,-1
	.loc 1 3364 19
	j	.L533
.L531:
	.loc 1 3364 19 discriminator 2
	li	a5,0
.L533:
	.loc 1 3365 1 is_stmt 1
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
.LFE55:
	.size	lwip_setsockopt, .-lwip_setsockopt
	.section	.text.lwip_setsockopt_callback,"ax",@progbits
	.align	1
	.type	lwip_setsockopt_callback, @function
lwip_setsockopt_callback:
.LFB56:
	.loc 1 3373 1
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
	.loc 1 3376 8
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 3378 15
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a5,-20(s0)
	lw	a1,4(a5)
	lw	a5,-20(s0)
	lw	a2,8(a5)
	lw	a5,-20(s0)
	lw	a3,12(a5)
	lw	a5,-20(s0)
	lw	a5,16(a5)
	mv	a4,a5
	call	lwip_setsockopt_impl
	mv	a4,a0
	.loc 1 3378 13 discriminator 1
	lw	a5,-20(s0)
	sw	a4,20(a5)
	.loc 1 3386 36
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 1 3386 3
	mv	a0,a5
	call	sys_sem_signal
	.loc 1 3387 1
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
.LFE56:
	.size	lwip_setsockopt_callback, .-lwip_setsockopt_callback
	.section	.text.lwip_setsockopt_impl,"ax",@progbits
	.align	1
	.type	lwip_setsockopt_impl, @function
lwip_setsockopt_impl:
.LFB57:
	.loc 1 3395 1
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
	.loc 1 3396 7
	sw	zero,-20(s0)
	.loc 1 3397 28
	lw	a0,-68(s0)
	call	tryget_socket
	sw	a0,-32(s0)
	.loc 1 3398 6
	lw	a5,-32(s0)
	bne	a5,zero,.L536
	.loc 1 3399 12
	li	a5,9
	j	.L537
.L536:
	.loc 1 3409 3
	lw	a4,-72(s0)
	li	a5,4096
	addi	a5,a5,-1
	beq	a4,a5,.L538
	lw	a4,-72(s0)
	li	a5,4096
	bge	a4,a5,.L539
	lw	a4,-72(s0)
	li	a5,255
	beq	a4,a5,.L540
	lw	a4,-72(s0)
	li	a5,255
	bgt	a4,a5,.L539
	lw	a5,-72(s0)
	beq	a5,zero,.L541
	lw	a4,-72(s0)
	li	a5,6
	beq	a4,a5,.L542
	j	.L539
.L538:
	.loc 1 3413 7
	lw	a4,-76(s0)
	li	a5,4096
	addi	a5,a5,11
	beq	a4,a5,.L543
	lw	a4,-76(s0)
	li	a5,4096
	addi	a5,a5,11
	bgt	a4,a5,.L544
	lw	a4,-76(s0)
	li	a5,4096
	addi	a5,a5,10
	beq	a4,a5,.L545
	lw	a4,-76(s0)
	li	a5,4096
	addi	a5,a5,10
	bgt	a4,a5,.L544
	lw	a4,-76(s0)
	li	a5,4096
	addi	a5,a5,6
	beq	a4,a5,.L546
	lw	a4,-76(s0)
	li	a5,4096
	addi	a5,a5,6
	bgt	a4,a5,.L544
	lw	a4,-76(s0)
	li	a5,4096
	addi	a5,a5,5
	beq	a4,a5,.L547
	lw	a4,-76(s0)
	li	a5,4096
	addi	a5,a5,5
	bgt	a4,a5,.L544
	lw	a4,-76(s0)
	li	a5,32
	beq	a4,a5,.L548
	lw	a4,-76(s0)
	li	a5,32
	bgt	a4,a5,.L544
	lw	a4,-76(s0)
	li	a5,4
	beq	a4,a5,.L548
	lw	a4,-76(s0)
	li	a5,8
	bne	a4,a5,.L544
.L548:
	.loc 1 3423 14
	lw	a4,-76(s0)
	li	a5,32
	bne	a4,a5,.L549
	.loc 1 3424 22
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3424 28
	lbu	a5,0(a5)
	.loc 1 3424 35
	andi	a4,a5,240
	.loc 1 3423 35 discriminator 1
	li	a5,32
	beq	a4,a5,.L549
	.loc 1 3426 20
	li	a5,92
	j	.L537
.L549:
	.loc 1 3429 21
	lw	a0,-76(s0)
	call	lwip_sockopt_to_ipopt
	sw	a0,-76(s0)
	.loc 1 3431 24
	lw	a4,-84(s0)
	li	a5,3
	bgtu	a4,a5,.L550
	.loc 1 3431 60 discriminator 1
	li	a5,22
	.loc 1 3431 60 is_stmt 0
	j	.L537
.L550:
	.loc 1 3431 87 is_stmt 1 discriminator 2
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3431 79 discriminator 2
	beq	a5,zero,.L551
	.loc 1 3431 22 discriminator 4
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3431 33 discriminator 4
	lw	a5,4(a5)
	.loc 1 3431 12 discriminator 4
	bne	a5,zero,.L552
.L551:
	.loc 1 3431 24 discriminator 5
	li	a5,22
	.loc 1 3431 24 is_stmt 0
	j	.L537
.L552:
	.loc 1 3432 15 is_stmt 1
	lw	a5,-80(s0)
	lw	a5,0(a5)
	.loc 1 3432 14
	beq	a5,zero,.L553
	.loc 1 3433 61
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3433 72
	lw	a5,4(a5)
	.loc 1 3433 76
	lbu	a5,9(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 3433 89
	lw	a5,-76(s0)
	slli	a5,a5,24
	srai	a5,a5,24
	or	a5,a4,a5
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 3433 19
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3433 30
	lw	a5,4(a5)
	.loc 1 3433 49
	andi	a4,a4,0xff
	.loc 1 3433 47
	sb	a4,9(a5)
	.loc 1 3439 11
	j	.L555
.L553:
	.loc 1 3435 61
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3435 72
	lw	a5,4(a5)
	.loc 1 3435 76
	lbu	a5,9(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 3435 89
	lw	a5,-76(s0)
	slli	a5,a5,24
	srai	a5,a5,24
	not	a5,a5
	slli	a5,a5,24
	srai	a5,a5,24
	and	a5,a4,a5
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 3435 19
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3435 30
	lw	a5,4(a5)
	.loc 1 3435 49
	andi	a4,a4,0xff
	.loc 1 3435 47
	sb	a4,9(a5)
	.loc 1 3439 11
	j	.L555
.L547:
.LBB32:
	.loc 1 3447 24
	lw	a4,-84(s0)
	li	a5,7
	bgtu	a4,a5,.L556
	.loc 1 3447 71 discriminator 1
	li	a5,22
	.loc 1 3447 71 is_stmt 0
	j	.L537
.L556:
	.loc 1 3447 97 is_stmt 1 discriminator 2
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3447 90 discriminator 2
	bne	a5,zero,.L557
	.loc 1 3447 23 discriminator 3
	li	a5,22
	.loc 1 3447 23 is_stmt 0
	j	.L537
.L557:
	.loc 1 3448 57 is_stmt 1
	lw	a5,-80(s0)
	lw	a4,0(a5)
	.loc 1 3448 66
	li	a5,1000
	mul	a4,a4,a5
	.loc 1 3448 111
	lw	a5,-80(s0)
	lw	a5,4(a5)
	.loc 1 3448 121
	li	a3,274878464
	addi	a3,a3,-557
	mulh	a3,a5,a3
	srai	a3,a3,6
	srai	a5,a5,31
	sub	a5,a3,a5
	.loc 1 3448 19
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 1 3449 14
	lw	a5,-44(s0)
	bge	a5,zero,.L558
	.loc 1 3451 20
	li	a5,22
	j	.L537
.L558:
	.loc 1 3453 17
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3453 39
	lw	a4,-44(s0)
	sw	a4,28(a5)
	.loc 1 3454 11
	j	.L555
.L546:
.LBE32:
.LBB33:
	.loc 1 3460 24
	lw	a4,-84(s0)
	li	a5,7
	bgtu	a4,a5,.L559
	.loc 1 3460 71 discriminator 1
	li	a5,22
	.loc 1 3460 71 is_stmt 0
	j	.L537
.L559:
	.loc 1 3460 97 is_stmt 1 discriminator 2
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3460 90 discriminator 2
	bne	a5,zero,.L560
	.loc 1 3460 23 discriminator 3
	li	a5,22
	.loc 1 3460 23 is_stmt 0
	j	.L537
.L560:
	.loc 1 3461 57 is_stmt 1
	lw	a5,-80(s0)
	lw	a4,0(a5)
	.loc 1 3461 66
	li	a5,1000
	mul	a4,a4,a5
	.loc 1 3461 111
	lw	a5,-80(s0)
	lw	a5,4(a5)
	.loc 1 3461 121
	li	a3,274878464
	addi	a3,a3,-557
	mulh	a3,a5,a3
	srai	a3,a3,6
	srai	a5,a5,31
	sub	a5,a3,a5
	.loc 1 3461 19
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 1 3462 14
	lw	a5,-40(s0)
	bge	a5,zero,.L561
	.loc 1 3464 20
	li	a5,22
	j	.L537
.L561:
	.loc 1 3466 17
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3466 42
	lw	a4,-40(s0)
	.loc 1 3466 39
	sw	a4,32(a5)
	.loc 1 3467 11
	j	.L555
.L545:
.LBE33:
	.loc 1 3498 29
	lw	a4,-84(s0)
	li	a5,3
	bgtu	a4,a5,.L562
	.loc 1 3498 65 discriminator 1
	li	a5,22
	.loc 1 3498 65 is_stmt 0
	j	.L537
.L562:
	.loc 1 3498 92 is_stmt 1 discriminator 2
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3498 84 discriminator 2
	beq	a5,zero,.L563
	.loc 1 3498 22 discriminator 4
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3498 33 discriminator 4
	lw	a5,4(a5)
	.loc 1 3498 12 discriminator 4
	bne	a5,zero,.L564
.L563:
	.loc 1 3498 24 discriminator 5
	li	a5,22
	.loc 1 3498 24 is_stmt 0
	j	.L537
.L564:
	.loc 1 3498 54 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3498 60 discriminator 6
	lbu	a5,0(a5)
	.loc 1 3498 68 discriminator 6
	andi	a4,a5,240
	.loc 1 3498 44 discriminator 6
	li	a5,32
	beq	a4,a5,.L565
	.loc 1 3498 102 discriminator 7
	li	a5,92
	.loc 1 3498 102 is_stmt 0
	j	.L537
.L565:
	.loc 1 3506 15 is_stmt 1
	lw	a5,-80(s0)
	lw	a5,0(a5)
	.loc 1 3506 14
	beq	a5,zero,.L566
	.loc 1 3507 61
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3507 72
	lw	a5,4(a5)
	.loc 1 3507 77
	lbu	a4,16(a5)
	.loc 1 3507 23
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3507 34
	lw	a5,4(a5)
	.loc 1 3507 49
	ori	a4,a4,1
	andi	a4,a4,0xff
	.loc 1 3507 47
	sb	a4,16(a5)
	.loc 1 3511 11
	j	.L555
.L566:
	.loc 1 3509 61
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3509 72
	lw	a5,4(a5)
	.loc 1 3509 77
	lbu	a4,16(a5)
	.loc 1 3509 23
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3509 34
	lw	a5,4(a5)
	.loc 1 3509 49
	andi	a4,a4,-2
	andi	a4,a4,0xff
	.loc 1 3509 47
	sb	a4,16(a5)
	.loc 1 3511 11
	j	.L555
.L543:
.LBB34:
	.loc 1 3515 25
	sw	zero,-24(s0)
	.loc 1 3517 24
	lw	a4,-84(s0)
	li	a5,5
	bgtu	a4,a5,.L568
	.loc 1 3517 69 discriminator 1
	li	a5,22
	.loc 1 3517 69 is_stmt 0
	j	.L537
.L568:
	.loc 1 3517 95 is_stmt 1 discriminator 2
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3517 88 discriminator 2
	bne	a5,zero,.L569
	.loc 1 3517 23 discriminator 3
	li	a5,22
	.loc 1 3517 23 is_stmt 0
	j	.L537
.L569:
	.loc 1 3519 17 is_stmt 1
	lw	a5,-80(s0)
	sw	a5,-36(s0)
	.loc 1 3520 30
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 3520 14
	beq	a5,zero,.L570
	.loc 1 3521 33
	lw	a5,-36(s0)
	.loc 1 3521 17
	mv	a0,a5
	call	netif_find
	sw	a0,-24(s0)
	.loc 1 3522 16
	lw	a5,-24(s0)
	bne	a5,zero,.L570
	.loc 1 3524 22
	li	a5,19
	j	.L537
.L570:
	.loc 1 3528 26
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3528 32
	lbu	a5,0(a5)
	.loc 1 3528 40
	andi	a5,a5,240
	.loc 1 3528 11
	li	a4,64
	beq	a5,a4,.L571
	li	a4,64
	bgt	a5,a4,.L628
	li	a4,16
	beq	a5,a4,.L573
	li	a4,32
	beq	a5,a4,.L574
	.loc 1 3546 15
	j	.L628
.L573:
	.loc 1 3531 34
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3531 15
	lw	a5,4(a5)
	lw	a1,-24(s0)
	mv	a0,a5
	call	tcp_bind_netif
	.loc 1 3532 15
	j	.L575
.L574:
	.loc 1 3536 34
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3536 15
	lw	a5,4(a5)
	lw	a1,-24(s0)
	mv	a0,a5
	call	udp_bind_netif
	.loc 1 3537 15
	j	.L575
.L571:
	.loc 1 3541 34
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3541 15
	lw	a5,4(a5)
	lw	a1,-24(s0)
	mv	a0,a5
	call	raw_bind_netif
	.loc 1 3542 15
	j	.L575
.L628:
	.loc 1 3546 15
	nop
.L575:
.LBE34:
	.loc 1 3549 9
	j	.L555
.L544:
	.loc 1 3553 15
	li	a5,92
	sw	a5,-20(s0)
	.loc 1 3554 11
	nop
.L555:
	.loc 1 3556 7
	j	.L576
.L541:
	.loc 1 3560 7
	lw	a4,-76(s0)
	li	a5,7
	beq	a4,a5,.L577
	lw	a4,-76(s0)
	li	a5,7
	bgt	a4,a5,.L578
	lw	a4,-76(s0)
	li	a5,6
	beq	a4,a5,.L579
	lw	a4,-76(s0)
	li	a5,6
	bgt	a4,a5,.L578
	lw	a4,-76(s0)
	li	a5,5
	beq	a4,a5,.L580
	lw	a4,-76(s0)
	li	a5,5
	bgt	a4,a5,.L578
	lw	a4,-76(s0)
	li	a5,4
	bgt	a4,a5,.L578
	lw	a4,-76(s0)
	li	a5,3
	bge	a4,a5,.L581
	lw	a4,-76(s0)
	li	a5,1
	beq	a4,a5,.L582
	lw	a4,-76(s0)
	li	a5,2
	bne	a4,a5,.L578
	.loc 1 3562 24
	lw	a4,-84(s0)
	li	a5,3
	bgtu	a4,a5,.L583
	.loc 1 3562 60 discriminator 1
	li	a5,22
	.loc 1 3562 60 is_stmt 0
	j	.L537
.L583:
	.loc 1 3562 87 is_stmt 1 discriminator 2
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3562 79 discriminator 2
	beq	a5,zero,.L584
	.loc 1 3562 22 discriminator 4
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3562 33 discriminator 4
	lw	a5,4(a5)
	.loc 1 3562 12 discriminator 4
	bne	a5,zero,.L585
.L584:
	.loc 1 3562 24 discriminator 5
	li	a5,22
	.loc 1 3562 24 is_stmt 0
	j	.L537
.L585:
	.loc 1 3563 44 is_stmt 1
	lw	a5,-80(s0)
	lw	a4,0(a5)
	.loc 1 3563 15
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3563 26
	lw	a5,4(a5)
	.loc 1 3563 37
	andi	a4,a4,0xff
	.loc 1 3563 35
	sb	a4,11(a5)
	.loc 1 3566 11
	j	.L586
.L582:
	.loc 1 3568 24
	lw	a4,-84(s0)
	li	a5,3
	bgtu	a4,a5,.L587
	.loc 1 3568 60 discriminator 1
	li	a5,22
	.loc 1 3568 60 is_stmt 0
	j	.L537
.L587:
	.loc 1 3568 87 is_stmt 1 discriminator 2
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3568 79 discriminator 2
	beq	a5,zero,.L588
	.loc 1 3568 22 discriminator 4
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3568 33 discriminator 4
	lw	a5,4(a5)
	.loc 1 3568 12 discriminator 4
	bne	a5,zero,.L589
.L588:
	.loc 1 3568 24 discriminator 5
	li	a5,22
	.loc 1 3568 24 is_stmt 0
	j	.L537
.L589:
	.loc 1 3569 44 is_stmt 1
	lw	a5,-80(s0)
	lw	a4,0(a5)
	.loc 1 3569 15
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3569 26
	lw	a5,4(a5)
	.loc 1 3569 37
	andi	a4,a4,0xff
	.loc 1 3569 35
	sb	a4,10(a5)
	.loc 1 3572 11
	j	.L586
.L580:
	.loc 1 3585 29
	lw	a5,-84(s0)
	bne	a5,zero,.L590
	.loc 1 3585 66 discriminator 1
	li	a5,22
	.loc 1 3585 66 is_stmt 0
	j	.L537
.L590:
	.loc 1 3585 93 is_stmt 1 discriminator 2
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3585 85 discriminator 2
	beq	a5,zero,.L591
	.loc 1 3585 22 discriminator 4
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3585 33 discriminator 4
	lw	a5,4(a5)
	.loc 1 3585 12 discriminator 4
	bne	a5,zero,.L592
.L591:
	.loc 1 3585 24 discriminator 5
	li	a5,22
	.loc 1 3585 24 is_stmt 0
	j	.L537
.L592:
	.loc 1 3585 54 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3585 60 discriminator 6
	lbu	a5,0(a5)
	.loc 1 3585 68 discriminator 6
	andi	a4,a5,240
	.loc 1 3585 44 discriminator 6
	li	a5,32
	beq	a4,a5,.L593
	.loc 1 3585 102 discriminator 7
	li	a5,92
	.loc 1 3585 102 is_stmt 0
	j	.L537
.L593:
	.loc 1 3586 17 is_stmt 1
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3586 28
	lw	a5,4(a5)
	.loc 1 3586 48
	lw	a4,-80(s0)
	lbu	a4,0(a4)
	.loc 1 3586 45
	sb	a4,29(a5)
	.loc 1 3587 11
	j	.L586
.L579:
.LBB35:
	.loc 1 3590 29
	lw	a4,-84(s0)
	li	a5,3
	bgtu	a4,a5,.L594
	.loc 1 3590 76 discriminator 1
	li	a5,22
	.loc 1 3590 76 is_stmt 0
	j	.L537
.L594:
	.loc 1 3590 103 is_stmt 1 discriminator 2
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3590 95 discriminator 2
	beq	a5,zero,.L596
	.loc 1 3590 22 discriminator 5
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3590 33 discriminator 5
	lw	a5,4(a5)
	.loc 1 3590 12 discriminator 5
	bne	a5,zero,.L597
.L596:
	.loc 1 3590 24 discriminator 6
	li	a5,22
	.loc 1 3590 24 is_stmt 0
	j	.L537
.L597:
	.loc 1 3590 54 is_stmt 1 discriminator 7
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3590 60 discriminator 7
	lbu	a5,0(a5)
	.loc 1 3590 68 discriminator 7
	andi	a4,a5,240
	.loc 1 3590 44 discriminator 7
	li	a5,32
	beq	a4,a5,.L598
	.loc 1 3590 102 discriminator 9
	li	a5,92
	.loc 1 3590 102 is_stmt 0
	j	.L537
.L598:
	.loc 1 3591 65 is_stmt 1
	lw	a5,-80(s0)
	lw	a5,0(a5)
	.loc 1 3591 30
	sw	a5,-52(s0)
	.loc 1 3592 18
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3592 29
	lw	a5,4(a5)
	.loc 1 3592 67
	lw	a4,-52(s0)
	.loc 1 3592 52
	sw	a4,24(a5)
.LBE35:
	.loc 1 3594 9
	j	.L586
.L577:
	.loc 1 3596 29
	lw	a5,-84(s0)
	bne	a5,zero,.L599
	.loc 1 3596 66 discriminator 1
	li	a5,22
	.loc 1 3596 66 is_stmt 0
	j	.L537
.L599:
	.loc 1 3596 93 is_stmt 1 discriminator 2
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3596 85 discriminator 2
	beq	a5,zero,.L600
	.loc 1 3596 22 discriminator 4
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3596 33 discriminator 4
	lw	a5,4(a5)
	.loc 1 3596 12 discriminator 4
	bne	a5,zero,.L601
.L600:
	.loc 1 3596 24 discriminator 5
	li	a5,22
	.loc 1 3596 24 is_stmt 0
	j	.L537
.L601:
	.loc 1 3596 54 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3596 60 discriminator 6
	lbu	a5,0(a5)
	.loc 1 3596 68 discriminator 6
	andi	a4,a5,240
	.loc 1 3596 44 discriminator 6
	li	a5,32
	beq	a4,a5,.L602
	.loc 1 3596 102 discriminator 7
	li	a5,92
	.loc 1 3596 102 is_stmt 0
	j	.L537
.L602:
	.loc 1 3597 15 is_stmt 1
	lw	a5,-80(s0)
	lbu	a5,0(a5)
	.loc 1 3597 14
	beq	a5,zero,.L603
	.loc 1 3598 61
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3598 72
	lw	a5,4(a5)
	.loc 1 3598 77
	lbu	a4,16(a5)
	.loc 1 3598 23
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3598 34
	lw	a5,4(a5)
	.loc 1 3598 49
	ori	a4,a4,8
	andi	a4,a4,0xff
	.loc 1 3598 47
	sb	a4,16(a5)
	.loc 1 3602 11
	j	.L586
.L603:
	.loc 1 3600 61
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3600 72
	lw	a5,4(a5)
	.loc 1 3600 77
	lbu	a4,16(a5)
	.loc 1 3600 23
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3600 34
	lw	a5,4(a5)
	.loc 1 3600 49
	andi	a4,a4,-9
	andi	a4,a4,0xff
	.loc 1 3600 47
	sb	a4,16(a5)
	.loc 1 3602 11
	j	.L586
.L581:
.LBB36:
	.loc 1 3609 33
	lw	a5,-80(s0)
	sw	a5,-48(s0)
	.loc 1 3612 29
	lw	a4,-84(s0)
	li	a5,7
	bgtu	a4,a5,.L605
	.loc 1 3612 76 discriminator 1
	li	a5,22
	.loc 1 3612 76 is_stmt 0
	j	.L537
.L605:
	.loc 1 3612 103 is_stmt 1 discriminator 2
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3612 95 discriminator 2
	beq	a5,zero,.L607
	.loc 1 3612 22 discriminator 5
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3612 33 discriminator 5
	lw	a5,4(a5)
	.loc 1 3612 12 discriminator 5
	bne	a5,zero,.L608
.L607:
	.loc 1 3612 24 discriminator 6
	li	a5,22
	.loc 1 3612 24 is_stmt 0
	j	.L537
.L608:
	.loc 1 3612 54 is_stmt 1 discriminator 7
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3612 60 discriminator 7
	lbu	a5,0(a5)
	.loc 1 3612 68 discriminator 7
	andi	a4,a5,240
	.loc 1 3612 44 discriminator 7
	li	a5,32
	beq	a4,a5,.L609
	.loc 1 3612 102 discriminator 9
	li	a5,92
	.loc 1 3612 102 is_stmt 0
	j	.L537
.L609:
	.loc 1 3613 54 is_stmt 1
	lw	a5,-48(s0)
	lw	a5,4(a5)
	.loc 1 3613 30
	sw	a5,-56(s0)
	.loc 1 3614 57
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 1 3614 33
	sw	a5,-60(s0)
	.loc 1 3615 14
	lw	a4,-76(s0)
	li	a5,3
	bne	a4,a5,.L610
	.loc 1 3616 18
	addi	a4,s0,-60
	addi	a5,s0,-56
	mv	a2,a4
	mv	a1,a5
	lw	a0,-68(s0)
	call	lwip_socket_register_membership
	mv	a5,a0
	.loc 1 3616 16 discriminator 1
	bne	a5,zero,.L611
	.loc 1 3618 19
	li	a5,12
	sw	a5,-20(s0)
	.loc 1 3619 24
	sb	zero,-25(s0)
	j	.L612
.L611:
	.loc 1 3621 26
	addi	a4,s0,-60
	addi	a5,s0,-56
	mv	a1,a4
	mv	a0,a5
	call	igmp_joingroup
	mv	a5,a0
	sb	a5,-25(s0)
	j	.L612
.L610:
	.loc 1 3624 24
	addi	a4,s0,-60
	addi	a5,s0,-56
	mv	a1,a4
	mv	a0,a5
	call	igmp_leavegroup
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 1 3625 13
	addi	a4,s0,-60
	addi	a5,s0,-56
	mv	a2,a4
	mv	a1,a5
	lw	a0,-68(s0)
	call	lwip_socket_unregister_membership
.L612:
	.loc 1 3627 14
	lb	a5,-25(s0)
	beq	a5,zero,.L629
	.loc 1 3628 17
	li	a5,99
	sw	a5,-20(s0)
.LBE36:
	.loc 1 3631 9
	j	.L629
.L578:
	.loc 1 3636 15
	li	a5,92
	sw	a5,-20(s0)
	.loc 1 3637 11
	j	.L586
.L629:
	.loc 1 3631 9
	nop
.L586:
	.loc 1 3639 7
	j	.L576
.L542:
	.loc 1 3645 25
	lw	a4,-84(s0)
	li	a5,3
	bgtu	a4,a5,.L614
	.loc 1 3645 61 discriminator 1
	li	a5,22
	.loc 1 3645 61 is_stmt 0
	j	.L537
.L614:
	.loc 1 3645 88 is_stmt 1 discriminator 2
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3645 80 discriminator 2
	beq	a5,zero,.L615
	.loc 1 3645 18 discriminator 4
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3645 29 discriminator 4
	lw	a5,4(a5)
	.loc 1 3645 8 discriminator 4
	bne	a5,zero,.L616
.L615:
	.loc 1 3645 20 discriminator 5
	li	a5,22
	.loc 1 3645 20 is_stmt 0
	j	.L537
.L616:
	.loc 1 3645 50 is_stmt 1 discriminator 6
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3645 56 discriminator 6
	lbu	a5,0(a5)
	.loc 1 3645 64 discriminator 6
	andi	a4,a5,240
	.loc 1 3645 40 discriminator 6
	li	a5,16
	beq	a4,a5,.L617
	.loc 1 3645 98 discriminator 7
	li	a5,92
	.loc 1 3645 98 is_stmt 0
	j	.L537
.L617:
	.loc 1 3646 15 is_stmt 1
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3646 26
	lw	a5,4(a5)
	.loc 1 3646 30
	lbu	a4,20(a5)
	.loc 1 3646 10
	li	a5,1
	bne	a4,a5,.L618
	.loc 1 3648 16
	li	a5,22
	j	.L537
.L618:
	.loc 1 3650 7
	lw	a4,-76(s0)
	li	a5,5
	beq	a4,a5,.L619
	lw	a4,-76(s0)
	li	a5,5
	bgt	a4,a5,.L620
	lw	a4,-76(s0)
	li	a5,4
	beq	a4,a5,.L621
	lw	a4,-76(s0)
	li	a5,4
	bgt	a4,a5,.L620
	lw	a4,-76(s0)
	li	a5,3
	beq	a4,a5,.L622
	lw	a4,-76(s0)
	li	a5,3
	bgt	a4,a5,.L620
	lw	a4,-76(s0)
	li	a5,1
	beq	a4,a5,.L623
	lw	a4,-76(s0)
	li	a5,2
	beq	a4,a5,.L624
	j	.L620
.L623:
	.loc 1 3652 15
	lw	a5,-80(s0)
	lw	a5,0(a5)
	.loc 1 3652 14
	beq	a5,zero,.L625
	.loc 1 3653 67
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3653 78
	lw	a5,4(a5)
	.loc 1 3653 83
	lhu	a4,26(a5)
	.loc 1 3653 23
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3653 34
	lw	a5,4(a5)
	.loc 1 3653 49
	ori	a4,a4,64
	slli	a4,a4,16
	srli	a4,a4,16
	.loc 1 3653 47
	sh	a4,26(a5)
	.loc 1 3659 11
	j	.L627
.L625:
	.loc 1 3655 67
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3655 78
	lw	a5,4(a5)
	.loc 1 3655 83
	lhu	a4,26(a5)
	.loc 1 3655 23
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3655 34
	lw	a5,4(a5)
	.loc 1 3655 49
	andi	a4,a4,-65
	slli	a4,a4,16
	srli	a4,a4,16
	.loc 1 3655 47
	sh	a4,26(a5)
	.loc 1 3659 11
	j	.L627
.L624:
	.loc 1 3661 52
	lw	a5,-80(s0)
	lw	a4,0(a5)
	.loc 1 3661 15
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3661 26
	lw	a5,4(a5)
	.loc 1 3661 42
	sw	a4,148(a5)
	.loc 1 3664 11
	j	.L627
.L622:
	.loc 1 3668 59
	lw	a5,-80(s0)
	lw	a5,0(a5)
	.loc 1 3668 51
	mv	a3,a5
	.loc 1 3668 15
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3668 26
	lw	a5,4(a5)
	.loc 1 3668 49
	li	a4,1000
	mul	a4,a3,a4
	.loc 1 3668 42
	sw	a4,148(a5)
	.loc 1 3671 11
	j	.L627
.L621:
	.loc 1 3673 60
	lw	a5,-80(s0)
	lw	a5,0(a5)
	.loc 1 3673 52
	mv	a3,a5
	.loc 1 3673 15
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3673 26
	lw	a5,4(a5)
	.loc 1 3673 50
	li	a4,1000
	mul	a4,a3,a4
	.loc 1 3673 43
	sw	a4,152(a5)
	.loc 1 3676 11
	j	.L627
.L619:
	.loc 1 3678 51
	lw	a5,-80(s0)
	lw	a4,0(a5)
	.loc 1 3678 15
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 3678 26
	lw	a5,4(a5)
	.loc 1 3678 41
	sw	a4,156(a5)
	.loc 1 3681 11
	j	.L627
.L620:
	.loc 1 3686 15
	li	a5,92
	sw	a5,-20(s0)
	.loc 1 3687 11
	nop
.L627:
	.loc 1 3689 7
	j	.L576
.L540:
	.loc 1 3811 15
	li	a5,92
	sw	a5,-20(s0)
	.loc 1 3812 11
	nop
	.loc 1 3814 7
	j	.L576
.L539:
	.loc 1 3818 11
	li	a5,92
	sw	a5,-20(s0)
	.loc 1 3819 7
	nop
.L576:
	.loc 1 3823 10
	lw	a5,-20(s0)
.L537:
	.loc 1 3824 1
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
.LFE57:
	.size	lwip_setsockopt_impl, .-lwip_setsockopt_impl
	.section	.text.lwip_ioctl,"ax",@progbits
	.align	1
	.globl	lwip_ioctl
	.type	lwip_ioctl, @function
lwip_ioctl:
.LFB58:
	.loc 1 3828 1
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
	.loc 1 3829 28
	lw	a0,-36(s0)
	call	get_socket
	sw	a0,-24(s0)
	.loc 1 3835 6
	lw	a5,-24(s0)
	bne	a5,zero,.L631
	.loc 1 3836 12
	li	a5,-1
	j	.L632
.L631:
	.loc 1 3839 3
	lw	a4,-40(s0)
	li	a5,-2147196928
	addi	a5,a5,1662
	bne	a4,a5,.L638
	.loc 1 3895 11
	sb	zero,-17(s0)
	.loc 1 3896 10
	lw	a5,-44(s0)
	beq	a5,zero,.L634
	.loc 1 3896 19 discriminator 1
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 1 3896 16 discriminator 1
	beq	a5,zero,.L634
	.loc 1 3897 13
	li	a5,1
	sb	a5,-17(s0)
.L634:
	.loc 1 3899 14
	lbu	a5,-17(s0)
	beq	a5,zero,.L635
	.loc 1 3899 61 discriminator 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3899 68 discriminator 1
	lbu	a4,36(a5)
	.loc 1 3899 32 discriminator 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3899 49 discriminator 1
	ori	a4,a4,2
	andi	a4,a4,0xff
	.loc 1 3899 47 discriminator 1
	sb	a4,36(a5)
	j	.L636
.L635:
	.loc 1 3899 147 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3899 154 discriminator 2
	lbu	a4,36(a5)
	.loc 1 3899 118 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 3899 135 discriminator 2
	andi	a4,a4,-3
	andi	a4,a4,0xff
	.loc 1 3899 133 discriminator 2
	sb	a4,36(a5)
.L636:
	.loc 1 3903 14
	li	a5,0
	j	.L632
.L638:
	.loc 1 3906 7
	nop
	.loc 1 3909 24 discriminator 1
	lui	a5,%hi(errno)
	li	a4,38
	sw	a4,%lo(errno)(a5)
	.loc 1 3911 10
	li	a5,-1
.L632:
	.loc 1 3912 1
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
.LFE58:
	.size	lwip_ioctl, .-lwip_ioctl
	.section	.text.lwip_fcntl,"ax",@progbits
	.align	1
	.globl	lwip_fcntl
	.type	lwip_fcntl, @function
lwip_fcntl:
.LFB59:
	.loc 1 3921 1
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
	.loc 1 3922 28
	lw	a0,-36(s0)
	call	get_socket
	sw	a0,-28(s0)
	.loc 1 3923 7
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 3924 7
	sw	zero,-24(s0)
	.loc 1 3926 6
	lw	a5,-28(s0)
	bne	a5,zero,.L640
	.loc 1 3927 12
	li	a5,-1
	j	.L641
.L640:
	.loc 1 3930 3
	lw	a4,-40(s0)
	li	a5,3
	beq	a4,a5,.L642
	lw	a4,-40(s0)
	li	a5,4
	beq	a4,a5,.L643
	j	.L655
.L642:
	.loc 1 3932 20
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 3932 27
	lbu	a5,36(a5)
	.loc 1 3932 53
	srai	a5,a5,1
	.loc 1 3932 11
	andi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 3935 18
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 3935 24
	lbu	a5,0(a5)
	.loc 1 3935 32
	andi	a4,a5,240
	.loc 1 3935 10
	li	a5,16
	bne	a4,a5,.L645
.LBB37:
	.loc 1 3942 15
	call	sys_arch_protect
	sw	a0,-32(s0)
	.loc 1 3945 17
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 3945 28
	lw	a5,4(a5)
	.loc 1 3945 12
	beq	a5,zero,.L646
	.loc 1 3946 21
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 3946 32
	lw	a5,4(a5)
	.loc 1 3946 36
	lhu	a5,26(a5)
	.loc 1 3946 44
	andi	a5,a5,16
	.loc 1 3946 14
	bne	a5,zero,.L647
	.loc 1 3947 21
	lw	a5,-24(s0)
	ori	a5,a5,2
	sw	a5,-24(s0)
.L647:
	.loc 1 3949 21
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 3949 32
	lw	a5,4(a5)
	.loc 1 3949 36
	lhu	a5,26(a5)
	.loc 1 3949 44
	andi	a5,a5,32
	.loc 1 3949 14
	bne	a5,zero,.L646
	.loc 1 3950 21
	lw	a5,-24(s0)
	ori	a5,a5,4
	sw	a5,-24(s0)
.L646:
	.loc 1 3957 9
	lw	a0,-32(s0)
	call	sys_arch_unprotect
.LBE37:
	j	.L648
.L645:
	.loc 1 3960 17
	lw	a5,-24(s0)
	ori	a5,a5,6
	sw	a5,-24(s0)
.L648:
	.loc 1 3964 11
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 3966 7
	j	.L649
.L643:
	.loc 1 3969 11
	lw	a5,-44(s0)
	andi	a5,a5,-7
	sw	a5,-44(s0)
	.loc 1 3970 22
	lw	a4,-44(s0)
	.loc 1 3970 10
	li	a5,1
	bgtu	a4,a5,.L650
	.loc 1 3972 21
	lw	a5,-44(s0)
	andi	a5,a5,1
	.loc 1 3972 16
	beq	a5,zero,.L651
	.loc 1 3972 67 discriminator 1
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 3972 74 discriminator 1
	lbu	a4,36(a5)
	.loc 1 3972 38 discriminator 1
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 3972 55 discriminator 1
	ori	a4,a4,2
	andi	a4,a4,0xff
	.loc 1 3972 53 discriminator 1
	sb	a4,36(a5)
	j	.L652
.L651:
	.loc 1 3972 153 discriminator 2
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 3972 160 discriminator 2
	lbu	a4,36(a5)
	.loc 1 3972 124 discriminator 2
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 3972 141 discriminator 2
	andi	a4,a4,-3
	andi	a4,a4,0xff
	.loc 1 3972 139 discriminator 2
	sb	a4,36(a5)
.L652:
	.loc 1 3973 13
	sw	zero,-20(s0)
	.loc 1 3978 7
	j	.L649
.L650:
	.loc 1 3976 30 discriminator 1
	lui	a5,%hi(errno)
	li	a4,38
	sw	a4,%lo(errno)(a5)
	.loc 1 3978 7
	j	.L649
.L655:
	.loc 1 3981 28 discriminator 1
	lui	a5,%hi(errno)
	li	a4,38
	sw	a4,%lo(errno)(a5)
	.loc 1 3982 7
	nop
.L649:
	.loc 1 3985 10
	lw	a5,-20(s0)
.L641:
	.loc 1 3986 1
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
.LFE59:
	.size	lwip_fcntl, .-lwip_fcntl
	.section	.text.lwip_inet_ntop,"ax",@progbits
	.align	1
	.globl	lwip_inet_ntop
	.type	lwip_inet_ntop, @function
lwip_inet_ntop:
.LFB60:
	.loc 1 4004 1
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
	.loc 1 4005 15
	sw	zero,-20(s0)
	.loc 1 4006 7
	lw	a5,-48(s0)
	sw	a5,-24(s0)
	.loc 1 4007 6
	lw	a5,-24(s0)
	bge	a5,zero,.L657
	.loc 1 4008 26 discriminator 1
	lui	a5,%hi(errno)
	li	a4,28
	sw	a4,%lo(errno)(a5)
	.loc 1 4009 11
	li	a5,0
	j	.L658
.L657:
	.loc 1 4011 3
	lw	a4,-36(s0)
	li	a5,2
	bne	a4,a5,.L662
	.loc 1 4014 13
	lw	a2,-24(s0)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	ip4addr_ntoa_r
	sw	a0,-20(s0)
	.loc 1 4015 10
	lw	a5,-20(s0)
	bne	a5,zero,.L663
	.loc 1 4016 30 discriminator 1
	lui	a5,%hi(errno)
	li	a4,28
	sw	a4,%lo(errno)(a5)
	.loc 1 4018 7
	j	.L663
.L662:
	.loc 1 4029 28 discriminator 1
	lui	a5,%hi(errno)
	li	a4,97
	sw	a4,%lo(errno)(a5)
	.loc 1 4030 7
	j	.L661
.L663:
	.loc 1 4018 7
	nop
.L661:
	.loc 1 4032 10
	lw	a5,-20(s0)
.L658:
	.loc 1 4033 1
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
.LFE60:
	.size	lwip_inet_ntop, .-lwip_inet_ntop
	.section	.text.lwip_inet_pton,"ax",@progbits
	.align	1
	.globl	lwip_inet_pton
	.type	lwip_inet_pton, @function
lwip_inet_pton:
.LFB61:
	.loc 1 4037 1
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
	.loc 1 4039 3
	lw	a4,-36(s0)
	li	a5,2
	bne	a4,a5,.L665
	.loc 1 4042 13
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	ip4addr_aton
	sw	a0,-20(s0)
	.loc 1 4043 7
	j	.L666
.L665:
	.loc 1 4058 11
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 4059 28 discriminator 1
	lui	a5,%hi(errno)
	li	a4,97
	sw	a4,%lo(errno)(a5)
	.loc 1 4060 7
	nop
.L666:
	.loc 1 4062 10
	lw	a5,-20(s0)
	.loc 1 4063 1
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
.LFE61:
	.size	lwip_inet_pton, .-lwip_inet_pton
	.section	.text.lwip_socket_register_membership,"ax",@progbits
	.align	1
	.type	lwip_socket_register_membership, @function
lwip_socket_register_membership:
.LFB62:
	.loc 1 4074 1
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
	.loc 1 4075 28
	lw	a0,-36(s0)
	call	get_socket
	sw	a0,-24(s0)
	.loc 1 4078 6
	lw	a5,-24(s0)
	bne	a5,zero,.L669
	.loc 1 4079 12
	li	a5,0
	j	.L670
.L669:
	.loc 1 4082 10
	sw	zero,-20(s0)
	.loc 1 4082 3
	j	.L671
.L673:
	.loc 1 4083 45
	lui	a5,%hi(socket_ipv4_multicast_memberships)
	addi	a3,a5,%lo(socket_ipv4_multicast_memberships)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 4083 8
	bne	a5,zero,.L672
	.loc 1 4084 49
	lui	a5,%hi(socket_ipv4_multicast_memberships)
	addi	a3,a5,%lo(socket_ipv4_multicast_memberships)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 4085 72
	lw	a5,-40(s0)
	lw	a3,0(a5)
	.loc 1 4085 60
	lui	a5,%hi(socket_ipv4_multicast_memberships)
	addi	a2,a5,%lo(socket_ipv4_multicast_memberships)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,4(a5)
	.loc 1 4086 78
	lw	a5,-44(s0)
	lw	a3,0(a5)
	.loc 1 4086 63
	lui	a5,%hi(socket_ipv4_multicast_memberships)
	addi	a2,a5,%lo(socket_ipv4_multicast_memberships)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,8(a5)
	.loc 1 4088 14
	li	a5,1
	j	.L670
.L672:
	.loc 1 4082 33 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L671:
	.loc 1 4082 17 discriminator 1
	lw	a4,-20(s0)
	li	a5,15
	ble	a4,a5,.L673
	.loc 1 4092 10
	li	a5,0
.L670:
	.loc 1 4093 1
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
.LFE62:
	.size	lwip_socket_register_membership, .-lwip_socket_register_membership
	.section	.text.lwip_socket_unregister_membership,"ax",@progbits
	.align	1
	.type	lwip_socket_unregister_membership, @function
lwip_socket_unregister_membership:
.LFB63:
	.loc 1 4102 1
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
	.loc 1 4103 28
	lw	a0,-36(s0)
	call	get_socket
	sw	a0,-24(s0)
	.loc 1 4106 6
	lw	a5,-24(s0)
	beq	a5,zero,.L680
	.loc 1 4110 10
	sw	zero,-20(s0)
	.loc 1 4110 3
	j	.L677
.L679:
	.loc 1 4111 46
	lui	a5,%hi(socket_ipv4_multicast_memberships)
	addi	a3,a5,%lo(socket_ipv4_multicast_memberships)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 4111 8
	lw	a4,-24(s0)
	bne	a4,a5,.L678
	.loc 1 4112 57
	lui	a5,%hi(socket_ipv4_multicast_memberships)
	addi	a3,a5,%lo(socket_ipv4_multicast_memberships)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,4(a5)
	.loc 1 4112 76
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 4111 61 discriminator 1
	bne	a4,a5,.L678
	.loc 1 4113 60
	lui	a5,%hi(socket_ipv4_multicast_memberships)
	addi	a3,a5,%lo(socket_ipv4_multicast_memberships)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,8(a5)
	.loc 1 4113 82
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 1 4112 84
	bne	a4,a5,.L678
	.loc 1 4114 49
	lui	a5,%hi(socket_ipv4_multicast_memberships)
	addi	a3,a5,%lo(socket_ipv4_multicast_memberships)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	sw	zero,0(a5)
	.loc 1 4115 62
	lui	a5,%hi(socket_ipv4_multicast_memberships)
	addi	a3,a5,%lo(socket_ipv4_multicast_memberships)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	sw	zero,4(a5)
	.loc 1 4116 65
	lui	a5,%hi(socket_ipv4_multicast_memberships)
	addi	a3,a5,%lo(socket_ipv4_multicast_memberships)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	sw	zero,8(a5)
	.loc 1 4117 7
	j	.L674
.L678:
	.loc 1 4110 33 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L677:
	.loc 1 4110 17 discriminator 1
	lw	a4,-20(s0)
	li	a5,15
	ble	a4,a5,.L679
	j	.L674
.L680:
	.loc 1 4107 5
	nop
.L674:
	.loc 1 4121 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE63:
	.size	lwip_socket_unregister_membership, .-lwip_socket_unregister_membership
	.section	.text.lwip_socket_drop_registered_memberships,"ax",@progbits
	.align	1
	.type	lwip_socket_drop_registered_memberships, @function
lwip_socket_drop_registered_memberships:
.LFB64:
	.loc 1 4129 1
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
	.loc 1 4130 28
	lw	a0,-36(s0)
	call	get_socket
	sw	a0,-24(s0)
	.loc 1 4133 6
	lw	a5,-24(s0)
	beq	a5,zero,.L687
	.loc 1 4137 10
	sw	zero,-20(s0)
	.loc 1 4137 3
	j	.L684
.L686:
	.loc 1 4138 45
	lui	a5,%hi(socket_ipv4_multicast_memberships)
	addi	a3,a5,%lo(socket_ipv4_multicast_memberships)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 4138 8
	lw	a4,-24(s0)
	bne	a4,a5,.L685
.LBB38:
	.loc 1 4140 77
	lui	a5,%hi(socket_ipv4_multicast_memberships)
	addi	a3,a5,%lo(socket_ipv4_multicast_memberships)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,8(a5)
	.loc 1 4140 26
	sw	a5,-28(s0)
	.loc 1 4141 71
	lui	a5,%hi(socket_ipv4_multicast_memberships)
	addi	a3,a5,%lo(socket_ipv4_multicast_memberships)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,4(a5)
	.loc 1 4141 23
	sw	a5,-32(s0)
	.loc 1 4142 49
	lui	a5,%hi(socket_ipv4_multicast_memberships)
	addi	a3,a5,%lo(socket_ipv4_multicast_memberships)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	sw	zero,0(a5)
	.loc 1 4143 62
	lui	a5,%hi(socket_ipv4_multicast_memberships)
	addi	a3,a5,%lo(socket_ipv4_multicast_memberships)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	sw	zero,4(a5)
	.loc 1 4144 65
	lui	a5,%hi(socket_ipv4_multicast_memberships)
	addi	a3,a5,%lo(socket_ipv4_multicast_memberships)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	sw	zero,8(a5)
	.loc 1 4146 7
	lw	a5,-24(s0)
	lw	a5,0(a5)
	addi	a2,s0,-32
	addi	a4,s0,-28
	li	a3,1
	mv	a1,a4
	mv	a0,a5
	call	netconn_join_leave_group
.L685:
.LBE38:
	.loc 1 4137 33 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L684:
	.loc 1 4137 17 discriminator 1
	lw	a4,-20(s0)
	li	a5,15
	ble	a4,a5,.L686
	j	.L681
.L687:
	.loc 1 4134 5
	nop
.L681:
	.loc 1 4150 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE64:
	.size	lwip_socket_drop_registered_memberships, .-lwip_socket_drop_registered_memberships
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/arch/cc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/inet.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/sockets.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/queue.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/semphr.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/arch/sys_arch.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/sockets_priv.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netbuf.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/api.h"
	.file 22 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip.h"
	.file 23 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcp.h"
	.file 24 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/udp.h"
	.file 25 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/raw.h"
	.file 26 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcpbase.h"
	.file 27 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcpip.h"
	.file 28 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/igmp.h"
	.file 29 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/sys.h"
	.file 30 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/inet_chksum.h"
	.file 31 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 32 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/def.h"
	.file 33 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x376b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x2c
	.4byte	.LASF501
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL3
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xa
	.4byte	.LASF11
	.byte	0x2
	.byte	0x25
	.byte	0xd
	.4byte	0x37
	.uleb128 0x2d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2e
	.4byte	0x37
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
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x7b
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x3
	.byte	0xa0
	.byte	0xd
	.4byte	0x37
	.uleb128 0x14
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x37
	.uleb128 0x2f
	.byte	0x4
	.uleb128 0x27
	.4byte	0xad
	.uleb128 0x8
	.4byte	0xb9
	.uleb128 0x14
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x13
	.4byte	0xb9
	.uleb128 0x8
	.4byte	0xc0
	.uleb128 0x18
	.4byte	0xb9
	.4byte	0xda
	.uleb128 0x19
	.4byte	0x7b
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x5
	.byte	0x51
	.byte	0x12
	.4byte	0xa1
	.uleb128 0x8
	.4byte	0xf0
	.uleb128 0x27
	.4byte	0xe6
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x6
	.byte	0x22
	.byte	0x15
	.4byte	0x43
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x6
	.byte	0x25
	.byte	0x13
	.4byte	0x51
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x6
	.byte	0x28
	.byte	0x12
	.4byte	0x5f
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x4a
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.4byte	0x58
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x6
	.byte	0x34
	.byte	0x1b
	.4byte	0x66
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x6
	.byte	0x56
	.byte	0x16
	.4byte	0x7b
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x7
	.byte	0x7d
	.byte	0x11
	.4byte	0x115
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x7
	.byte	0x7e
	.byte	0x10
	.4byte	0xf1
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x7
	.byte	0x7f
	.byte	0x12
	.4byte	0x121
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x7
	.byte	0x80
	.byte	0x11
	.4byte	0xfd
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x7
	.byte	0x81
	.byte	0x12
	.4byte	0x12d
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x7
	.byte	0x82
	.byte	0x11
	.4byte	0x109
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x7
	.byte	0x87
	.byte	0x13
	.4byte	0x139
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x4
	.byte	0x8
	.byte	0x33
	.4byte	0x1b3
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x8
	.byte	0x34
	.byte	0x9
	.4byte	0x175
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x8
	.byte	0x39
	.byte	0x19
	.4byte	0x199
	.uleb128 0x13
	.4byte	0x1b3
	.uleb128 0x22
	.4byte	.LASF33
	.byte	0x9
	.2byte	0x126
	.byte	0x14
	.4byte	0x1b3
	.uleb128 0x13
	.4byte	0x1c4
	.uleb128 0x28
	.byte	0x5
	.4byte	0x43
	.byte	0xa
	.byte	0x35
	.4byte	0x249
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0
	.uleb128 0x10
	.4byte	.LASF35
	.sleb128 -1
	.uleb128 0x10
	.4byte	.LASF36
	.sleb128 -2
	.uleb128 0x10
	.4byte	.LASF37
	.sleb128 -3
	.uleb128 0x10
	.4byte	.LASF38
	.sleb128 -4
	.uleb128 0x10
	.4byte	.LASF39
	.sleb128 -5
	.uleb128 0x10
	.4byte	.LASF40
	.sleb128 -6
	.uleb128 0x10
	.4byte	.LASF41
	.sleb128 -7
	.uleb128 0x10
	.4byte	.LASF42
	.sleb128 -8
	.uleb128 0x10
	.4byte	.LASF43
	.sleb128 -9
	.uleb128 0x10
	.4byte	.LASF44
	.sleb128 -10
	.uleb128 0x10
	.4byte	.LASF45
	.sleb128 -11
	.uleb128 0x10
	.4byte	.LASF46
	.sleb128 -12
	.uleb128 0x10
	.4byte	.LASF47
	.sleb128 -13
	.uleb128 0x10
	.4byte	.LASF48
	.sleb128 -14
	.uleb128 0x10
	.4byte	.LASF49
	.sleb128 -15
	.uleb128 0x10
	.4byte	.LASF50
	.sleb128 -16
	.byte	0
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0xa
	.byte	0x60
	.byte	0xe
	.4byte	0x151
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x10
	.byte	0xb
	.byte	0xba
	.4byte	0x2ca
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0xb
	.byte	0xbc
	.byte	0x10
	.4byte	0x2cf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0xb
	.byte	0xbf
	.byte	0x9
	.4byte	0xad
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0xb
	.byte	0xc8
	.byte	0x9
	.4byte	0x15d
	.byte	0x8
	.uleb128 0xf
	.string	"len"
	.byte	0xb
	.byte	0xcb
	.byte	0x9
	.4byte	0x15d
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0xb
	.byte	0xd0
	.byte	0x8
	.4byte	0x145
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0xb
	.byte	0xd3
	.byte	0x8
	.4byte	0x145
	.byte	0xd
	.uleb128 0xf
	.string	"ref"
	.byte	0xb
	.byte	0xda
	.byte	0x8
	.4byte	0x145
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0xb
	.byte	0xdd
	.byte	0x8
	.4byte	0x145
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.4byte	0x255
	.uleb128 0x8
	.4byte	0x255
	.uleb128 0x28
	.byte	0x7
	.4byte	0x4a
	.byte	0xc
	.byte	0x34
	.4byte	0x341
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0xf
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF81
	.4byte	0x4a
	.byte	0xd
	.byte	0x71
	.4byte	0x369
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x3
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF82
	.4byte	0x4a
	.byte	0xd
	.byte	0x9f
	.4byte	0x385
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x38a
	.uleb128 0x1d
	.4byte	.LASF85
	.byte	0x54
	.byte	0xd
	.2byte	0x10d
	.byte	0x8
	.4byte	0x4b0
	.uleb128 0x5
	.4byte	.LASF55
	.byte	0xd
	.2byte	0x110
	.byte	0x11
	.4byte	0x385
	.byte	0
	.uleb128 0x5
	.4byte	.LASF86
	.byte	0xd
	.2byte	0x115
	.byte	0xd
	.4byte	0x1c4
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF87
	.byte	0xd
	.2byte	0x116
	.byte	0xd
	.4byte	0x1c4
	.byte	0x8
	.uleb128 0x15
	.string	"gw"
	.byte	0xd
	.2byte	0x117
	.byte	0xd
	.4byte	0x1c4
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF88
	.byte	0xd
	.2byte	0x129
	.byte	0x12
	.4byte	0x4b5
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF89
	.byte	0xd
	.2byte	0x12f
	.byte	0x13
	.4byte	0x4da
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF90
	.byte	0xd
	.2byte	0x134
	.byte	0x17
	.4byte	0x509
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF91
	.byte	0xd
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x52e
	.byte	0x1c
	.uleb128 0x5
	.4byte	.LASF92
	.byte	0xd
	.2byte	0x144
	.byte	0x1c
	.4byte	0x52e
	.byte	0x20
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0xd
	.2byte	0x14c
	.byte	0x9
	.4byte	0xad
	.byte	0x24
	.uleb128 0x5
	.4byte	.LASF94
	.byte	0xd
	.2byte	0x14e
	.byte	0x9
	.4byte	0x574
	.byte	0x28
	.uleb128 0x5
	.4byte	.LASF95
	.byte	0xd
	.2byte	0x152
	.byte	0xf
	.4byte	0xc5
	.byte	0x38
	.uleb128 0x15
	.string	"mtu"
	.byte	0xd
	.2byte	0x158
	.byte	0x9
	.4byte	0x15d
	.byte	0x3c
	.uleb128 0x5
	.4byte	.LASF96
	.byte	0xd
	.2byte	0x15e
	.byte	0x8
	.4byte	0x584
	.byte	0x3e
	.uleb128 0x5
	.4byte	.LASF97
	.byte	0xd
	.2byte	0x160
	.byte	0x8
	.4byte	0x145
	.byte	0x44
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0xd
	.2byte	0x162
	.byte	0x8
	.4byte	0x145
	.byte	0x45
	.uleb128 0x5
	.4byte	.LASF98
	.byte	0xd
	.2byte	0x164
	.byte	0x8
	.4byte	0x594
	.byte	0x46
	.uleb128 0x15
	.string	"num"
	.byte	0xd
	.2byte	0x167
	.byte	0x8
	.4byte	0x145
	.byte	0x48
	.uleb128 0x5
	.4byte	.LASF99
	.byte	0xd
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x54a
	.byte	0x4c
	.uleb128 0x5
	.4byte	.LASF100
	.byte	0xd
	.2byte	0x185
	.byte	0xf
	.4byte	0x5a9
	.byte	0x50
	.byte	0
	.uleb128 0x13
	.4byte	0x38a
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0xd
	.byte	0xb5
	.byte	0x11
	.4byte	0x4c1
	.uleb128 0x8
	.4byte	0x4c6
	.uleb128 0x1a
	.4byte	0x249
	.4byte	0x4da
	.uleb128 0x1
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0x385
	.byte	0
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0xd
	.byte	0xc0
	.byte	0x11
	.4byte	0x4e6
	.uleb128 0x8
	.4byte	0x4eb
	.uleb128 0x1a
	.4byte	0x249
	.4byte	0x504
	.uleb128 0x1
	.4byte	0x385
	.uleb128 0x1
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0x504
	.byte	0
	.uleb128 0x8
	.4byte	0x1bf
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0xd
	.byte	0xd7
	.byte	0x11
	.4byte	0x515
	.uleb128 0x8
	.4byte	0x51a
	.uleb128 0x1a
	.4byte	0x249
	.4byte	0x52e
	.uleb128 0x1
	.4byte	0x385
	.uleb128 0x1
	.4byte	0x2cf
	.byte	0
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0xd
	.byte	0xd9
	.byte	0x10
	.4byte	0x53a
	.uleb128 0x8
	.4byte	0x53f
	.uleb128 0x1f
	.4byte	0x54a
	.uleb128 0x1
	.4byte	0x385
	.byte	0
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0xd
	.byte	0xdc
	.byte	0x11
	.4byte	0x556
	.uleb128 0x8
	.4byte	0x55b
	.uleb128 0x1a
	.4byte	0x249
	.4byte	0x574
	.uleb128 0x1
	.4byte	0x385
	.uleb128 0x1
	.4byte	0x504
	.uleb128 0x1
	.4byte	0x369
	.byte	0
	.uleb128 0x18
	.4byte	0xad
	.4byte	0x584
	.uleb128 0x19
	.4byte	0x7b
	.byte	0x3
	.byte	0
	.uleb128 0x18
	.4byte	0x145
	.4byte	0x594
	.uleb128 0x19
	.4byte	0x7b
	.byte	0x5
	.byte	0
	.uleb128 0x18
	.4byte	0xb9
	.4byte	0x5a4
	.uleb128 0x19
	.4byte	0x7b
	.byte	0x1
	.byte	0
	.uleb128 0x31
	.string	"acd"
	.uleb128 0x8
	.4byte	0x5a4
	.uleb128 0x8
	.4byte	0x1d1
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0xe
	.byte	0x3c
	.byte	0xf
	.4byte	0x175
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0x4
	.byte	0xe
	.byte	0x3f
	.4byte	0x5d9
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0xe
	.byte	0x40
	.byte	0xd
	.4byte	0x5b3
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF502
	.byte	0x21
	.byte	0xb1
	.byte	0xc
	.4byte	0x37
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0xf
	.byte	0x44
	.byte	0xe
	.4byte	0x145
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0xf
	.byte	0x49
	.byte	0xf
	.4byte	0x15d
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0x10
	.byte	0xf
	.byte	0x4e
	.4byte	0x64b
	.uleb128 0x4
	.4byte	.LASF112
	.byte	0xf
	.byte	0x4f
	.byte	0x8
	.4byte	0x145
	.byte	0
	.uleb128 0x4
	.4byte	.LASF113
	.byte	0xf
	.byte	0x50
	.byte	0xf
	.4byte	0x5e5
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF114
	.byte	0xf
	.byte	0x51
	.byte	0xd
	.4byte	0x5f1
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0xf
	.byte	0x52
	.byte	0x12
	.4byte	0x5bf
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF116
	.byte	0xf
	.byte	0x54
	.byte	0x8
	.4byte	0xca
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0x10
	.byte	0xf
	.byte	0x63
	.4byte	0x67f
	.uleb128 0x4
	.4byte	.LASF118
	.byte	0xf
	.byte	0x64
	.byte	0x8
	.4byte	0x145
	.byte	0
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0xf
	.byte	0x65
	.byte	0xf
	.4byte	0x5e5
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0xf
	.byte	0x66
	.byte	0x8
	.4byte	0x684
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	0x64b
	.uleb128 0x18
	.4byte	0xb9
	.4byte	0x694
	.uleb128 0x19
	.4byte	0x7b
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.4byte	.LASF121
	.byte	0xf
	.byte	0x76
	.byte	0xf
	.4byte	0x175
	.uleb128 0xe
	.4byte	.LASF122
	.byte	0x8
	.byte	0xf
	.byte	0x80
	.4byte	0x6c7
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0xf
	.byte	0x81
	.byte	0x9
	.4byte	0xad
	.byte	0
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0xf
	.byte	0x82
	.byte	0xa
	.4byte	0x82
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.4byte	0x6a0
	.uleb128 0xa
	.4byte	.LASF125
	.byte	0xf
	.byte	0x86
	.byte	0xd
	.4byte	0x37
	.uleb128 0xe
	.4byte	.LASF126
	.byte	0x1c
	.byte	0xf
	.byte	0x88
	.4byte	0x740
	.uleb128 0x4
	.4byte	.LASF127
	.byte	0xf
	.byte	0x89
	.byte	0x9
	.4byte	0xad
	.byte	0
	.uleb128 0x4
	.4byte	.LASF128
	.byte	0xf
	.byte	0x8a
	.byte	0xd
	.4byte	0x694
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF129
	.byte	0xf
	.byte	0x8b
	.byte	0x11
	.4byte	0x745
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF130
	.byte	0xf
	.byte	0x8c
	.byte	0x10
	.4byte	0x6cc
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF131
	.byte	0xf
	.byte	0x8d
	.byte	0x9
	.4byte	0xad
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF132
	.byte	0xf
	.byte	0x8e
	.byte	0xd
	.4byte	0x694
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF133
	.byte	0xf
	.byte	0x8f
	.byte	0x7
	.4byte	0x37
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.4byte	0x6d8
	.uleb128 0x8
	.4byte	0x6a0
	.uleb128 0xe
	.4byte	.LASF134
	.byte	0x6
	.byte	0xf
	.byte	0xc0
	.4byte	0x764
	.uleb128 0x4
	.4byte	.LASF135
	.byte	0xf
	.byte	0xc1
	.byte	0x8
	.4byte	0x769
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x74a
	.uleb128 0x18
	.4byte	0xb9
	.4byte	0x779
	.uleb128 0x19
	.4byte	0x7b
	.byte	0x5
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF136
	.byte	0x8
	.byte	0xf
	.2byte	0x148
	.byte	0x10
	.4byte	0x7a4
	.uleb128 0x5
	.4byte	.LASF137
	.byte	0xf
	.2byte	0x149
	.byte	0x14
	.4byte	0x5bf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF138
	.byte	0xf
	.2byte	0x14a
	.byte	0x14
	.4byte	0x5bf
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.4byte	0x779
	.uleb128 0x1d
	.4byte	.LASF139
	.byte	0x2
	.byte	0xf
	.2byte	0x1ea
	.byte	0x10
	.4byte	0x7c6
	.uleb128 0x5
	.4byte	.LASF140
	.byte	0xf
	.2byte	0x1ec
	.byte	0x11
	.4byte	0x7c6
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x4a
	.4byte	0x7d6
	.uleb128 0x19
	.4byte	0x7b
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.4byte	.LASF139
	.byte	0xf
	.2byte	0x1ed
	.byte	0x3
	.4byte	0x7a9
	.uleb128 0x22
	.4byte	.LASF141
	.byte	0xf
	.2byte	0x205
	.byte	0x16
	.4byte	0x7b
	.uleb128 0x1d
	.4byte	.LASF142
	.byte	0x8
	.byte	0xf
	.2byte	0x206
	.byte	0x8
	.4byte	0x828
	.uleb128 0x15
	.string	"fd"
	.byte	0xf
	.2byte	0x208
	.byte	0x7
	.4byte	0x37
	.byte	0
	.uleb128 0x5
	.4byte	.LASF143
	.byte	0xf
	.2byte	0x209
	.byte	0x9
	.4byte	0x51
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF144
	.byte	0xf
	.2byte	0x20a
	.byte	0x9
	.4byte	0x51
	.byte	0x6
	.byte	0
	.uleb128 0x13
	.4byte	0x7f0
	.uleb128 0x1d
	.4byte	.LASF145
	.byte	0x8
	.byte	0xf
	.2byte	0x218
	.byte	0x8
	.4byte	0x858
	.uleb128 0x5
	.4byte	.LASF146
	.byte	0xf
	.2byte	0x219
	.byte	0x8
	.4byte	0x5f
	.byte	0
	.uleb128 0x5
	.4byte	.LASF147
	.byte	0xf
	.2byte	0x21a
	.byte	0x8
	.4byte	0x5f
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	0x85d
	.uleb128 0x1f
	.4byte	0x868
	.uleb128 0x1
	.4byte	0xad
	.byte	0
	.uleb128 0xa
	.4byte	.LASF148
	.byte	0x10
	.byte	0x30
	.byte	0x22
	.4byte	0x874
	.uleb128 0x8
	.4byte	0x879
	.uleb128 0x23
	.4byte	.LASF149
	.uleb128 0xa
	.4byte	.LASF150
	.byte	0x11
	.byte	0x25
	.byte	0x17
	.4byte	0x868
	.uleb128 0xa
	.4byte	.LASF151
	.byte	0x12
	.byte	0x2c
	.byte	0x1b
	.4byte	0x87e
	.uleb128 0xa
	.4byte	.LASF152
	.byte	0x12
	.byte	0x2e
	.byte	0x17
	.4byte	0x868
	.uleb128 0x29
	.4byte	.LASF299
	.byte	0x4
	.byte	0x13
	.byte	0x3d
	.4byte	0x8c7
	.uleb128 0x24
	.4byte	.LASF153
	.byte	0x13
	.byte	0x3e
	.byte	0x12
	.4byte	0x920
	.uleb128 0x24
	.4byte	.LASF53
	.byte	0x13
	.byte	0x3f
	.byte	0x10
	.4byte	0x2cf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF153
	.byte	0x14
	.byte	0x14
	.byte	0x3c
	.4byte	0x920
	.uleb128 0xf
	.string	"p"
	.byte	0x14
	.byte	0x3d
	.byte	0x10
	.4byte	0x2cf
	.byte	0
	.uleb128 0xf
	.string	"ptr"
	.byte	0x14
	.byte	0x3d
	.byte	0x14
	.4byte	0x2cf
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x14
	.byte	0x3e
	.byte	0xd
	.4byte	0x1c4
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF154
	.byte	0x14
	.byte	0x3f
	.byte	0x9
	.4byte	0x15d
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x14
	.byte	0x41
	.byte	0x8
	.4byte	0x145
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF155
	.byte	0x14
	.byte	0x42
	.byte	0x9
	.4byte	0x15d
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x8c7
	.uleb128 0xe
	.4byte	.LASF156
	.byte	0x10
	.byte	0x13
	.byte	0x43
	.4byte	0x980
	.uleb128 0x4
	.4byte	.LASF157
	.byte	0x13
	.byte	0x45
	.byte	0x13
	.4byte	0xa3b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF158
	.byte	0x13
	.byte	0x47
	.byte	0x1c
	.4byte	0x8a2
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF159
	.byte	0x13
	.byte	0x4b
	.byte	0x9
	.4byte	0x169
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF160
	.byte	0x13
	.byte	0x4e
	.byte	0x9
	.4byte	0x15d
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF161
	.byte	0x13
	.byte	0x50
	.byte	0x9
	.4byte	0x15d
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF162
	.byte	0x13
	.byte	0x52
	.byte	0x8
	.4byte	0x145
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.4byte	.LASF163
	.byte	0x30
	.byte	0x15
	.byte	0xda
	.4byte	0xa3b
	.uleb128 0x4
	.4byte	.LASF164
	.byte	0x15
	.byte	0xdc
	.byte	0x15
	.4byte	0xb59
	.byte	0
	.uleb128 0x4
	.4byte	.LASF93
	.byte	0x15
	.byte	0xde
	.byte	0x16
	.4byte	0xb8d
	.byte	0x1
	.uleb128 0xf
	.string	"pcb"
	.byte	0x15
	.byte	0xe5
	.byte	0x5
	.4byte	0xc2b
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF165
	.byte	0x15
	.byte	0xe7
	.byte	0x9
	.4byte	0x249
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF166
	.byte	0x15
	.byte	0xea
	.byte	0xd
	.4byte	0x88a
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF167
	.byte	0x15
	.byte	0xee
	.byte	0xe
	.4byte	0x896
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF168
	.byte	0x15
	.byte	0xf2
	.byte	0xe
	.4byte	0x896
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF169
	.byte	0x15
	.byte	0xfc
	.byte	0x5
	.4byte	0x11ab
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF170
	.byte	0x15
	.2byte	0x100
	.byte	0x9
	.4byte	0x181
	.byte	0x1c
	.uleb128 0x5
	.4byte	.LASF171
	.byte	0x15
	.2byte	0x105
	.byte	0x9
	.4byte	0x175
	.byte	0x20
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0x15
	.2byte	0x115
	.byte	0x8
	.4byte	0x145
	.byte	0x24
	.uleb128 0x5
	.4byte	.LASF172
	.byte	0x15
	.2byte	0x11a
	.byte	0x13
	.4byte	0x11d0
	.byte	0x28
	.uleb128 0x5
	.4byte	.LASF173
	.byte	0x15
	.2byte	0x11d
	.byte	0x14
	.4byte	0xc05
	.byte	0x2c
	.byte	0
	.uleb128 0x8
	.4byte	0x980
	.uleb128 0x25
	.byte	0x13
	.byte	0x74
	.4byte	0xa5d
	.uleb128 0x1b
	.string	"p"
	.byte	0x13
	.byte	0x75
	.byte	0xb
	.4byte	0xad
	.uleb128 0x1b
	.string	"pc"
	.byte	0x13
	.byte	0x76
	.byte	0x11
	.4byte	0xe6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF174
	.byte	0x1c
	.byte	0x13
	.byte	0x68
	.4byte	0xac3
	.uleb128 0xf
	.string	"s"
	.byte	0x13
	.byte	0x6a
	.byte	0x7
	.4byte	0x37
	.byte	0
	.uleb128 0x4
	.4byte	.LASF175
	.byte	0x13
	.byte	0x6c
	.byte	0x7
	.4byte	0x37
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF176
	.byte	0x13
	.byte	0x6e
	.byte	0x7
	.4byte	0x37
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF177
	.byte	0x13
	.byte	0x77
	.byte	0x5
	.4byte	0xa40
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF178
	.byte	0x13
	.byte	0x7a
	.byte	0xd
	.4byte	0x694
	.byte	0x10
	.uleb128 0xf
	.string	"err"
	.byte	0x13
	.byte	0x7c
	.byte	0x7
	.4byte	0x37
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF179
	.byte	0x13
	.byte	0x7e
	.byte	0x9
	.4byte	0xad
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.4byte	.LASF180
	.byte	0x24
	.byte	0x13
	.byte	0x93
	.4byte	0xb45
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x13
	.byte	0x95
	.byte	0x1a
	.4byte	0xb4a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF181
	.byte	0x13
	.byte	0x97
	.byte	0x1a
	.4byte	0xb4a
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF182
	.byte	0x13
	.byte	0x9a
	.byte	0xb
	.4byte	0xb4f
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF183
	.byte	0x13
	.byte	0x9c
	.byte	0xb
	.4byte	0xb4f
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF184
	.byte	0x13
	.byte	0x9e
	.byte	0xb
	.4byte	0xb4f
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF185
	.byte	0x13
	.byte	0xa2
	.byte	0x12
	.4byte	0xb54
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF186
	.byte	0x13
	.byte	0xa4
	.byte	0xa
	.4byte	0x7e3
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF187
	.byte	0x13
	.byte	0xa7
	.byte	0x7
	.4byte	0x37
	.byte	0x1c
	.uleb128 0xf
	.string	"sem"
	.byte	0x13
	.byte	0xa9
	.byte	0xd
	.4byte	0x88a
	.byte	0x20
	.byte	0
	.uleb128 0x13
	.4byte	0xac3
	.uleb128 0x8
	.4byte	0xac3
	.uleb128 0x8
	.4byte	0x7d6
	.uleb128 0x8
	.4byte	0x7f0
	.uleb128 0x1c
	.4byte	.LASF188
	.4byte	0x4a
	.byte	0x15
	.byte	0x71
	.4byte	0xb8d
	.uleb128 0x9
	.4byte	.LASF189
	.byte	0
	.uleb128 0x9
	.4byte	.LASF190
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF191
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF192
	.byte	0x21
	.uleb128 0x9
	.4byte	.LASF193
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF194
	.byte	0x40
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF195
	.4byte	0x4a
	.byte	0x15
	.byte	0x93
	.4byte	0xbbb
	.uleb128 0x9
	.4byte	.LASF196
	.byte	0
	.uleb128 0x9
	.4byte	.LASF197
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF198
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF199
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF200
	.byte	0x4
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF201
	.4byte	0x4a
	.byte	0x15
	.byte	0xb5
	.4byte	0xbe9
	.uleb128 0x9
	.4byte	.LASF202
	.byte	0
	.uleb128 0x9
	.4byte	.LASF203
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF204
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF205
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF206
	.byte	0x4
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF207
	.4byte	0x4a
	.byte	0x15
	.byte	0xbf
	.4byte	0xc05
	.uleb128 0x9
	.4byte	.LASF208
	.byte	0
	.uleb128 0x9
	.4byte	.LASF209
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF210
	.byte	0x15
	.byte	0xd7
	.byte	0x11
	.4byte	0xc11
	.uleb128 0x8
	.4byte	0xc16
	.uleb128 0x1f
	.4byte	0xc2b
	.uleb128 0x1
	.4byte	0xa3b
	.uleb128 0x1
	.4byte	0xbbb
	.uleb128 0x1
	.4byte	0x15d
	.byte	0
	.uleb128 0x25
	.byte	0x15
	.byte	0xe0
	.4byte	0xc62
	.uleb128 0x1b
	.string	"ip"
	.byte	0x15
	.byte	0xe1
	.byte	0x14
	.4byte	0xcbd
	.uleb128 0x1b
	.string	"tcp"
	.byte	0x15
	.byte	0xe2
	.byte	0x15
	.4byte	0x1016
	.uleb128 0x1b
	.string	"udp"
	.byte	0x15
	.byte	0xe3
	.byte	0x15
	.4byte	0x10eb
	.uleb128 0x1b
	.string	"raw"
	.byte	0x15
	.byte	0xe4
	.byte	0x15
	.4byte	0x11a6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF211
	.byte	0xc
	.byte	0x16
	.byte	0x5b
	.4byte	0xcbd
	.uleb128 0x4
	.4byte	.LASF212
	.byte	0x16
	.byte	0x5d
	.byte	0xd
	.4byte	0x1c4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF213
	.byte	0x16
	.byte	0x5d
	.byte	0x21
	.4byte	0x1c4
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF214
	.byte	0x16
	.byte	0x5d
	.byte	0x31
	.4byte	0x145
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF215
	.byte	0x16
	.byte	0x5d
	.byte	0x41
	.4byte	0x145
	.byte	0x9
	.uleb128 0xf
	.string	"tos"
	.byte	0x16
	.byte	0x5d
	.byte	0x52
	.4byte	0x145
	.byte	0xa
	.uleb128 0xf
	.string	"ttl"
	.byte	0x16
	.byte	0x5d
	.byte	0x5c
	.4byte	0x145
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.4byte	0xc62
	.uleb128 0xe
	.4byte	.LASF216
	.byte	0xa4
	.byte	0x17
	.byte	0xf2
	.4byte	0x1016
	.uleb128 0x4
	.4byte	.LASF212
	.byte	0x17
	.byte	0xf4
	.byte	0xd
	.4byte	0x1c4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF213
	.byte	0x17
	.byte	0xf4
	.byte	0x21
	.4byte	0x1c4
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF214
	.byte	0x17
	.byte	0xf4
	.byte	0x31
	.4byte	0x145
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF215
	.byte	0x17
	.byte	0xf4
	.byte	0x41
	.4byte	0x145
	.byte	0x9
	.uleb128 0xf
	.string	"tos"
	.byte	0x17
	.byte	0xf4
	.byte	0x52
	.4byte	0x145
	.byte	0xa
	.uleb128 0xf
	.string	"ttl"
	.byte	0x17
	.byte	0xf4
	.byte	0x5c
	.4byte	0x145
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x17
	.byte	0xf6
	.byte	0x13
	.4byte	0x1016
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF169
	.byte	0x17
	.byte	0xf6
	.byte	0x1f
	.4byte	0xad
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF93
	.byte	0x17
	.byte	0xf6
	.byte	0x3c
	.4byte	0x120c
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF217
	.byte	0x17
	.byte	0xf6
	.byte	0x48
	.4byte	0x145
	.byte	0x15
	.uleb128 0x4
	.4byte	.LASF218
	.byte	0x17
	.byte	0xf6
	.byte	0x54
	.4byte	0x15d
	.byte	0x16
	.uleb128 0x4
	.4byte	.LASF219
	.byte	0x17
	.byte	0xf9
	.byte	0x9
	.4byte	0x15d
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x17
	.byte	0xfb
	.byte	0xe
	.4byte	0x13e1
	.byte	0x1a
	.uleb128 0x5
	.4byte	.LASF220
	.byte	0x17
	.2byte	0x116
	.byte	0x8
	.4byte	0x145
	.byte	0x1c
	.uleb128 0x5
	.4byte	.LASF221
	.byte	0x17
	.2byte	0x116
	.byte	0x11
	.4byte	0x145
	.byte	0x1d
	.uleb128 0x5
	.4byte	.LASF222
	.byte	0x17
	.2byte	0x117
	.byte	0x8
	.4byte	0x145
	.byte	0x1e
	.uleb128 0x15
	.string	"tmr"
	.byte	0x17
	.2byte	0x118
	.byte	0x9
	.4byte	0x175
	.byte	0x20
	.uleb128 0x5
	.4byte	.LASF223
	.byte	0x17
	.2byte	0x11b
	.byte	0x9
	.4byte	0x175
	.byte	0x24
	.uleb128 0x5
	.4byte	.LASF224
	.byte	0x17
	.2byte	0x11c
	.byte	0x11
	.4byte	0x1200
	.byte	0x28
	.uleb128 0x5
	.4byte	.LASF225
	.byte	0x17
	.2byte	0x11d
	.byte	0x11
	.4byte	0x1200
	.byte	0x2a
	.uleb128 0x5
	.4byte	.LASF226
	.byte	0x17
	.2byte	0x11e
	.byte	0x9
	.4byte	0x175
	.byte	0x2c
	.uleb128 0x5
	.4byte	.LASF227
	.byte	0x17
	.2byte	0x127
	.byte	0x9
	.4byte	0x169
	.byte	0x30
	.uleb128 0x15
	.string	"mss"
	.byte	0x17
	.2byte	0x129
	.byte	0x9
	.4byte	0x15d
	.byte	0x32
	.uleb128 0x5
	.4byte	.LASF228
	.byte	0x17
	.2byte	0x12c
	.byte	0x9
	.4byte	0x175
	.byte	0x34
	.uleb128 0x5
	.4byte	.LASF229
	.byte	0x17
	.2byte	0x12d
	.byte	0x9
	.4byte	0x175
	.byte	0x38
	.uleb128 0x15
	.string	"sa"
	.byte	0x17
	.2byte	0x12e
	.byte	0x9
	.4byte	0x169
	.byte	0x3c
	.uleb128 0x15
	.string	"sv"
	.byte	0x17
	.2byte	0x12e
	.byte	0xd
	.4byte	0x169
	.byte	0x3e
	.uleb128 0x15
	.string	"rto"
	.byte	0x17
	.2byte	0x130
	.byte	0x9
	.4byte	0x169
	.byte	0x40
	.uleb128 0x5
	.4byte	.LASF230
	.byte	0x17
	.2byte	0x131
	.byte	0x8
	.4byte	0x145
	.byte	0x42
	.uleb128 0x5
	.4byte	.LASF231
	.byte	0x17
	.2byte	0x134
	.byte	0x8
	.4byte	0x145
	.byte	0x43
	.uleb128 0x5
	.4byte	.LASF232
	.byte	0x17
	.2byte	0x135
	.byte	0x9
	.4byte	0x175
	.byte	0x44
	.uleb128 0x5
	.4byte	.LASF233
	.byte	0x17
	.2byte	0x138
	.byte	0x11
	.4byte	0x1200
	.byte	0x48
	.uleb128 0x5
	.4byte	.LASF234
	.byte	0x17
	.2byte	0x139
	.byte	0x11
	.4byte	0x1200
	.byte	0x4a
	.uleb128 0x5
	.4byte	.LASF235
	.byte	0x17
	.2byte	0x13c
	.byte	0x9
	.4byte	0x175
	.byte	0x4c
	.uleb128 0x5
	.4byte	.LASF236
	.byte	0x17
	.2byte	0x13f
	.byte	0x9
	.4byte	0x175
	.byte	0x50
	.uleb128 0x5
	.4byte	.LASF237
	.byte	0x17
	.2byte	0x140
	.byte	0x9
	.4byte	0x175
	.byte	0x54
	.uleb128 0x5
	.4byte	.LASF238
	.byte	0x17
	.2byte	0x140
	.byte	0x12
	.4byte	0x175
	.byte	0x58
	.uleb128 0x5
	.4byte	.LASF239
	.byte	0x17
	.2byte	0x142
	.byte	0x9
	.4byte	0x175
	.byte	0x5c
	.uleb128 0x5
	.4byte	.LASF240
	.byte	0x17
	.2byte	0x143
	.byte	0x11
	.4byte	0x1200
	.byte	0x60
	.uleb128 0x5
	.4byte	.LASF241
	.byte	0x17
	.2byte	0x144
	.byte	0x11
	.4byte	0x1200
	.byte	0x62
	.uleb128 0x5
	.4byte	.LASF242
	.byte	0x17
	.2byte	0x146
	.byte	0x11
	.4byte	0x1200
	.byte	0x64
	.uleb128 0x5
	.4byte	.LASF243
	.byte	0x17
	.2byte	0x148
	.byte	0x9
	.4byte	0x15d
	.byte	0x66
	.uleb128 0x5
	.4byte	.LASF244
	.byte	0x17
	.2byte	0x14c
	.byte	0x9
	.4byte	0x15d
	.byte	0x68
	.uleb128 0x5
	.4byte	.LASF245
	.byte	0x17
	.2byte	0x14f
	.byte	0x11
	.4byte	0x1200
	.byte	0x6a
	.uleb128 0x5
	.4byte	.LASF246
	.byte	0x17
	.2byte	0x152
	.byte	0x13
	.4byte	0x13f2
	.byte	0x6c
	.uleb128 0x5
	.4byte	.LASF247
	.byte	0x17
	.2byte	0x153
	.byte	0x13
	.4byte	0x13f2
	.byte	0x70
	.uleb128 0x5
	.4byte	.LASF248
	.byte	0x17
	.2byte	0x155
	.byte	0x13
	.4byte	0x13f2
	.byte	0x74
	.uleb128 0x5
	.4byte	.LASF249
	.byte	0x17
	.2byte	0x158
	.byte	0x10
	.4byte	0x2cf
	.byte	0x78
	.uleb128 0x5
	.4byte	.LASF250
	.byte	0x17
	.2byte	0x15b
	.byte	0x1a
	.4byte	0x1333
	.byte	0x7c
	.uleb128 0x5
	.4byte	.LASF251
	.byte	0x17
	.2byte	0x160
	.byte	0xf
	.4byte	0x12b7
	.byte	0x80
	.uleb128 0x5
	.4byte	.LASF252
	.byte	0x17
	.2byte	0x162
	.byte	0xf
	.4byte	0x1288
	.byte	0x84
	.uleb128 0x5
	.4byte	.LASF253
	.byte	0x17
	.2byte	0x164
	.byte	0x14
	.4byte	0x1327
	.byte	0x88
	.uleb128 0x5
	.4byte	.LASF254
	.byte	0x17
	.2byte	0x166
	.byte	0xf
	.4byte	0x12e1
	.byte	0x8c
	.uleb128 0x5
	.4byte	.LASF255
	.byte	0x17
	.2byte	0x168
	.byte	0xe
	.4byte	0x1306
	.byte	0x90
	.uleb128 0x5
	.4byte	.LASF256
	.byte	0x17
	.2byte	0x171
	.byte	0x9
	.4byte	0x175
	.byte	0x94
	.uleb128 0x5
	.4byte	.LASF257
	.byte	0x17
	.2byte	0x173
	.byte	0x9
	.4byte	0x175
	.byte	0x98
	.uleb128 0x5
	.4byte	.LASF258
	.byte	0x17
	.2byte	0x174
	.byte	0x9
	.4byte	0x175
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF259
	.byte	0x17
	.2byte	0x178
	.byte	0x8
	.4byte	0x145
	.byte	0xa0
	.uleb128 0x5
	.4byte	.LASF260
	.byte	0x17
	.2byte	0x17a
	.byte	0x8
	.4byte	0x145
	.byte	0xa1
	.uleb128 0x5
	.4byte	.LASF261
	.byte	0x17
	.2byte	0x17c
	.byte	0x8
	.4byte	0x145
	.byte	0xa2
	.uleb128 0x5
	.4byte	.LASF262
	.byte	0x17
	.2byte	0x17f
	.byte	0x8
	.4byte	0x145
	.byte	0xa3
	.byte	0
	.uleb128 0x8
	.4byte	0xcc2
	.uleb128 0xe
	.4byte	.LASF263
	.byte	0x28
	.byte	0x18
	.byte	0x51
	.4byte	0x10eb
	.uleb128 0x4
	.4byte	.LASF212
	.byte	0x18
	.byte	0x53
	.byte	0xd
	.4byte	0x1c4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF213
	.byte	0x18
	.byte	0x53
	.byte	0x21
	.4byte	0x1c4
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF214
	.byte	0x18
	.byte	0x53
	.byte	0x31
	.4byte	0x145
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF215
	.byte	0x18
	.byte	0x53
	.byte	0x41
	.4byte	0x145
	.byte	0x9
	.uleb128 0xf
	.string	"tos"
	.byte	0x18
	.byte	0x53
	.byte	0x52
	.4byte	0x145
	.byte	0xa
	.uleb128 0xf
	.string	"ttl"
	.byte	0x18
	.byte	0x53
	.byte	0x5c
	.4byte	0x145
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x18
	.byte	0x57
	.byte	0x13
	.4byte	0x10eb
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x18
	.byte	0x59
	.byte	0x8
	.4byte	0x145
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF218
	.byte	0x18
	.byte	0x5b
	.byte	0x9
	.4byte	0x15d
	.byte	0x12
	.uleb128 0x4
	.4byte	.LASF219
	.byte	0x18
	.byte	0x5b
	.byte	0x15
	.4byte	0x15d
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF264
	.byte	0x18
	.byte	0x60
	.byte	0xe
	.4byte	0x1b3
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF265
	.byte	0x18
	.byte	0x63
	.byte	0x8
	.4byte	0x145
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF266
	.byte	0x18
	.byte	0x65
	.byte	0x8
	.4byte	0x145
	.byte	0x1d
	.uleb128 0x4
	.4byte	.LASF252
	.byte	0x18
	.byte	0x6e
	.byte	0xf
	.4byte	0x1426
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF267
	.byte	0x18
	.byte	0x70
	.byte	0x9
	.4byte	0xad
	.byte	0x24
	.byte	0
	.uleb128 0x8
	.4byte	0x101b
	.uleb128 0xe
	.4byte	.LASF268
	.byte	0x1c
	.byte	0x19
	.byte	0x4b
	.4byte	0x11a6
	.uleb128 0x4
	.4byte	.LASF212
	.byte	0x19
	.byte	0x4d
	.byte	0xd
	.4byte	0x1c4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF213
	.byte	0x19
	.byte	0x4d
	.byte	0x21
	.4byte	0x1c4
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF214
	.byte	0x19
	.byte	0x4d
	.byte	0x31
	.4byte	0x145
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF215
	.byte	0x19
	.byte	0x4d
	.byte	0x41
	.4byte	0x145
	.byte	0x9
	.uleb128 0xf
	.string	"tos"
	.byte	0x19
	.byte	0x4d
	.byte	0x52
	.4byte	0x145
	.byte	0xa
	.uleb128 0xf
	.string	"ttl"
	.byte	0x19
	.byte	0x4d
	.byte	0x5c
	.4byte	0x145
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x19
	.byte	0x4f
	.byte	0x13
	.4byte	0x11a6
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF269
	.byte	0x19
	.byte	0x51
	.byte	0x8
	.4byte	0x145
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x19
	.byte	0x52
	.byte	0x8
	.4byte	0x145
	.byte	0x11
	.uleb128 0x4
	.4byte	.LASF265
	.byte	0x19
	.byte	0x56
	.byte	0x8
	.4byte	0x145
	.byte	0x12
	.uleb128 0x4
	.4byte	.LASF266
	.byte	0x19
	.byte	0x58
	.byte	0x8
	.4byte	0x145
	.byte	0x13
	.uleb128 0x4
	.4byte	.LASF252
	.byte	0x19
	.byte	0x5c
	.byte	0xf
	.4byte	0x13f7
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF267
	.byte	0x19
	.byte	0x5e
	.byte	0x9
	.4byte	0xad
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.4byte	0x10f0
	.uleb128 0x25
	.byte	0x15
	.byte	0xf9
	.4byte	0x11cb
	.uleb128 0x24
	.4byte	.LASF270
	.byte	0x15
	.byte	0xfa
	.byte	0x9
	.4byte	0x37
	.uleb128 0x1b
	.string	"ptr"
	.byte	0x15
	.byte	0xfb
	.byte	0xb
	.4byte	0xad
	.byte	0
	.uleb128 0x23
	.4byte	.LASF271
	.uleb128 0x8
	.4byte	0x11cb
	.uleb128 0x1d
	.4byte	.LASF272
	.byte	0x8
	.byte	0x15
	.2byte	0x125
	.byte	0x8
	.4byte	0x1200
	.uleb128 0x15
	.string	"ptr"
	.byte	0x15
	.2byte	0x127
	.byte	0xf
	.4byte	0xe6
	.byte	0
	.uleb128 0x15
	.string	"len"
	.byte	0x15
	.2byte	0x129
	.byte	0xa
	.4byte	0x82
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF273
	.byte	0x1a
	.byte	0x35
	.byte	0xf
	.4byte	0x15d
	.uleb128 0x1c
	.4byte	.LASF274
	.4byte	0x4a
	.byte	0x1a
	.byte	0x38
	.4byte	0x125e
	.uleb128 0x9
	.4byte	.LASF275
	.byte	0
	.uleb128 0x9
	.4byte	.LASF276
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF277
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF278
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF279
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF281
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF282
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF283
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF284
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF285
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.4byte	.LASF286
	.byte	0x17
	.byte	0x46
	.byte	0x11
	.4byte	0x126a
	.uleb128 0x8
	.4byte	0x126f
	.uleb128 0x1a
	.4byte	0x249
	.4byte	0x1288
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0x1016
	.uleb128 0x1
	.4byte	0x249
	.byte	0
	.uleb128 0xa
	.4byte	.LASF287
	.byte	0x17
	.byte	0x52
	.byte	0x11
	.4byte	0x1294
	.uleb128 0x8
	.4byte	0x1299
	.uleb128 0x1a
	.4byte	0x249
	.4byte	0x12b7
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0x1016
	.uleb128 0x1
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0x249
	.byte	0
	.uleb128 0xa
	.4byte	.LASF288
	.byte	0x17
	.byte	0x60
	.byte	0x11
	.4byte	0x12c3
	.uleb128 0x8
	.4byte	0x12c8
	.uleb128 0x1a
	.4byte	0x249
	.4byte	0x12e1
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0x1016
	.uleb128 0x1
	.4byte	0x15d
	.byte	0
	.uleb128 0xa
	.4byte	.LASF289
	.byte	0x17
	.byte	0x6c
	.byte	0x11
	.4byte	0x12ed
	.uleb128 0x8
	.4byte	0x12f2
	.uleb128 0x1a
	.4byte	0x249
	.4byte	0x1306
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0x1016
	.byte	0
	.uleb128 0xa
	.4byte	.LASF290
	.byte	0x17
	.byte	0x78
	.byte	0x10
	.4byte	0x1312
	.uleb128 0x8
	.4byte	0x1317
	.uleb128 0x1f
	.4byte	0x1327
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0x249
	.byte	0
	.uleb128 0xa
	.4byte	.LASF291
	.byte	0x17
	.byte	0x86
	.byte	0x11
	.4byte	0x126a
	.uleb128 0x8
	.4byte	0x1338
	.uleb128 0xe
	.4byte	.LASF292
	.byte	0x1c
	.byte	0x17
	.byte	0xdf
	.4byte	0x13e1
	.uleb128 0x4
	.4byte	.LASF212
	.byte	0x17
	.byte	0xe1
	.byte	0xd
	.4byte	0x1c4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF213
	.byte	0x17
	.byte	0xe1
	.byte	0x21
	.4byte	0x1c4
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF214
	.byte	0x17
	.byte	0xe1
	.byte	0x31
	.4byte	0x145
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF215
	.byte	0x17
	.byte	0xe1
	.byte	0x41
	.4byte	0x145
	.byte	0x9
	.uleb128 0xf
	.string	"tos"
	.byte	0x17
	.byte	0xe1
	.byte	0x52
	.4byte	0x145
	.byte	0xa
	.uleb128 0xf
	.string	"ttl"
	.byte	0x17
	.byte	0xe1
	.byte	0x5c
	.4byte	0x145
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x17
	.byte	0xe3
	.byte	0x1a
	.4byte	0x1333
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF169
	.byte	0x17
	.byte	0xe3
	.byte	0x26
	.4byte	0xad
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF93
	.byte	0x17
	.byte	0xe3
	.byte	0x43
	.4byte	0x120c
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF217
	.byte	0x17
	.byte	0xe3
	.byte	0x4f
	.4byte	0x145
	.byte	0x15
	.uleb128 0x4
	.4byte	.LASF218
	.byte	0x17
	.byte	0xe3
	.byte	0x5b
	.4byte	0x15d
	.byte	0x16
	.uleb128 0x4
	.4byte	.LASF293
	.byte	0x17
	.byte	0xe7
	.byte	0x11
	.4byte	0x125e
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF294
	.byte	0x17
	.byte	0xce
	.byte	0xf
	.4byte	0x15d
	.uleb128 0x23
	.4byte	.LASF295
	.uleb128 0x8
	.4byte	0x13ed
	.uleb128 0xa
	.4byte	.LASF296
	.byte	0x19
	.byte	0x47
	.byte	0x10
	.4byte	0x1403
	.uleb128 0x8
	.4byte	0x1408
	.uleb128 0x1a
	.4byte	0x145
	.4byte	0x1426
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0x11a6
	.uleb128 0x1
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0x5ae
	.byte	0
	.uleb128 0xa
	.4byte	.LASF297
	.byte	0x18
	.byte	0x4d
	.byte	0x10
	.4byte	0x1432
	.uleb128 0x8
	.4byte	0x1437
	.uleb128 0x1f
	.4byte	0x1456
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0x10eb
	.uleb128 0x1
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0x5ae
	.uleb128 0x1
	.4byte	0x15d
	.byte	0
	.uleb128 0xa
	.4byte	.LASF298
	.byte	0x1b
	.byte	0x48
	.byte	0x10
	.4byte	0x858
	.uleb128 0x8
	.4byte	0x88a
	.uleb128 0x29
	.4byte	.LASF300
	.byte	0x10
	.byte	0x1
	.byte	0xfa
	.4byte	0x148c
	.uleb128 0x1b
	.string	"sa"
	.byte	0x1
	.byte	0xfb
	.byte	0x13
	.4byte	0x64b
	.uleb128 0x33
	.string	"sin"
	.byte	0x1
	.2byte	0x100
	.byte	0x16
	.4byte	0x5fd
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF301
	.byte	0xc
	.byte	0x1
	.2byte	0x10c
	.byte	0x8
	.4byte	0x14c5
	.uleb128 0x5
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x10e
	.byte	0x15
	.4byte	0x14c5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x110
	.byte	0xe
	.4byte	0x1b3
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x112
	.byte	0xe
	.4byte	0x1b3
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x925
	.uleb128 0x18
	.4byte	0x148c
	.4byte	0x14da
	.uleb128 0x19
	.4byte	0x7b
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF305
	.2byte	0x115
	.byte	0x2a
	.4byte	0x14ca
	.uleb128 0x5
	.byte	0x3
	.4byte	socket_ipv4_multicast_memberships
	.uleb128 0x18
	.4byte	0x925
	.4byte	0x14fc
	.uleb128 0x19
	.4byte	0x7b
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF306
	.2byte	0x130
	.byte	0x19
	.4byte	0x14ec
	.uleb128 0x5
	.byte	0x3
	.4byte	sockets
	.uleb128 0x2
	.4byte	.LASF307
	.2byte	0x13f
	.byte	0x15
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x3
	.4byte	select_cb_ctr
	.uleb128 0x2
	.4byte	.LASF308
	.2byte	0x142
	.byte	0x1f
	.4byte	0xb4a
	.uleb128 0x5
	.byte	0x3
	.4byte	select_cb_list
	.uleb128 0x34
	.4byte	.LASF309
	.byte	0x7
	.byte	0x1
	.4byte	0x4a
	.byte	0x1
	.2byte	0x8aa
	.byte	0x6
	.4byte	0x1558
	.uleb128 0x9
	.4byte	.LASF310
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF311
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF312
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF313
	.byte	0x15
	.2byte	0x162
	.byte	0x7
	.4byte	0x249
	.4byte	0x157e
	.uleb128 0x1
	.4byte	0xa3b
	.uleb128 0x1
	.4byte	0x5ae
	.uleb128 0x1
	.4byte	0x5ae
	.uleb128 0x1
	.4byte	0xbe9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF314
	.byte	0x8
	.byte	0xd6
	.byte	0x5
	.4byte	0x37
	.4byte	0x1599
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0x1599
	.byte	0
	.uleb128 0x8
	.4byte	0x1b3
	.uleb128 0x12
	.4byte	.LASF315
	.byte	0x8
	.byte	0xd9
	.byte	0x7
	.4byte	0xb4
	.4byte	0x15be
	.uleb128 0x1
	.4byte	0x504
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0x37
	.byte	0
	.uleb128 0x12
	.4byte	.LASF316
	.byte	0x1c
	.byte	0x62
	.byte	0x7
	.4byte	0x249
	.4byte	0x15d9
	.uleb128 0x1
	.4byte	0x504
	.uleb128 0x1
	.4byte	0x504
	.byte	0
	.uleb128 0x12
	.4byte	.LASF317
	.byte	0x1c
	.byte	0x60
	.byte	0x7
	.4byte	0x249
	.4byte	0x15f4
	.uleb128 0x1
	.4byte	0x504
	.uleb128 0x1
	.4byte	0x504
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF318
	.byte	0x19
	.byte	0x6c
	.4byte	0x160a
	.uleb128 0x1
	.4byte	0x11a6
	.uleb128 0x1
	.4byte	0x160a
	.byte	0
	.uleb128 0x8
	.4byte	0x4b0
	.uleb128 0x1e
	.4byte	.LASF319
	.byte	0x18
	.byte	0x7c
	.4byte	0x1625
	.uleb128 0x1
	.4byte	0x10eb
	.uleb128 0x1
	.4byte	0x160a
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF320
	.byte	0x17
	.2byte	0x1cc
	.4byte	0x163c
	.uleb128 0x1
	.4byte	0x1016
	.uleb128 0x1
	.4byte	0x160a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF321
	.byte	0xd
	.2byte	0x1c0
	.byte	0xf
	.4byte	0x385
	.4byte	0x1653
	.uleb128 0x1
	.4byte	0xc5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF322
	.byte	0x15
	.2byte	0x171
	.byte	0x7
	.4byte	0x249
	.4byte	0x166a
	.uleb128 0x1
	.4byte	0xa3b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF323
	.byte	0x1b
	.byte	0x53
	.byte	0x7
	.4byte	0x249
	.4byte	0x1685
	.uleb128 0x1
	.4byte	0x1456
	.uleb128 0x1
	.4byte	0xad
	.byte	0
	.uleb128 0xc
	.4byte	.LASF324
	.byte	0x15
	.2byte	0x15f
	.byte	0x7
	.4byte	0x249
	.4byte	0x16a6
	.uleb128 0x1
	.4byte	0xa3b
	.uleb128 0x1
	.4byte	0x145
	.uleb128 0x1
	.4byte	0x145
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF325
	.byte	0x1d
	.byte	0xc9
	.4byte	0x16b7
	.uleb128 0x1
	.4byte	0x1462
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF326
	.byte	0x1d
	.byte	0xe1
	.4byte	0x16c8
	.uleb128 0x1
	.4byte	0x1462
	.byte	0
	.uleb128 0x12
	.4byte	.LASF327
	.byte	0x1d
	.byte	0xdb
	.byte	0x7
	.4byte	0x175
	.4byte	0x16e3
	.uleb128 0x1
	.4byte	0x1462
	.uleb128 0x1
	.4byte	0x175
	.byte	0
	.uleb128 0x12
	.4byte	.LASF328
	.byte	0x1d
	.byte	0xc3
	.byte	0x7
	.4byte	0x249
	.4byte	0x16fe
	.uleb128 0x1
	.4byte	0x1462
	.uleb128 0x1
	.4byte	0x145
	.byte	0
	.uleb128 0xc
	.4byte	.LASF329
	.byte	0x15
	.2byte	0x138
	.byte	0x11
	.4byte	0xa3b
	.4byte	0x171f
	.uleb128 0x1
	.4byte	0xb59
	.uleb128 0x1
	.4byte	0x145
	.uleb128 0x1
	.4byte	0xc05
	.byte	0
	.uleb128 0x12
	.4byte	.LASF330
	.byte	0x1e
	.byte	0x4d
	.byte	0x7
	.4byte	0x15d
	.4byte	0x173f
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0xe6
	.uleb128 0x1
	.4byte	0x15d
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF331
	.byte	0x14
	.byte	0x4d
	.4byte	0x1750
	.uleb128 0x1
	.4byte	0x920
	.byte	0
	.uleb128 0xc
	.4byte	.LASF332
	.byte	0x15
	.2byte	0x156
	.byte	0x7
	.4byte	0x249
	.4byte	0x176c
	.uleb128 0x1
	.4byte	0xa3b
	.uleb128 0x1
	.4byte	0x920
	.byte	0
	.uleb128 0x12
	.4byte	.LASF333
	.byte	0x1e
	.byte	0x4b
	.byte	0x7
	.4byte	0x15d
	.4byte	0x1782
	.uleb128 0x1
	.4byte	0x2cf
	.byte	0
	.uleb128 0x12
	.4byte	.LASF334
	.byte	0x14
	.byte	0x4c
	.byte	0x8
	.4byte	0xad
	.4byte	0x179d
	.uleb128 0x1
	.4byte	0x920
	.uleb128 0x1
	.4byte	0x15d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF335
	.byte	0x15
	.2byte	0x159
	.byte	0x7
	.4byte	0x249
	.4byte	0x17c8
	.uleb128 0x1
	.4byte	0xa3b
	.uleb128 0x1
	.4byte	0x17c8
	.uleb128 0x1
	.4byte	0x15d
	.uleb128 0x1
	.4byte	0x145
	.uleb128 0x1
	.4byte	0x17cd
	.byte	0
	.uleb128 0x8
	.4byte	0x11d5
	.uleb128 0x8
	.4byte	0x82
	.uleb128 0xc
	.4byte	.LASF336
	.byte	0x15
	.2byte	0x157
	.byte	0x7
	.4byte	0x249
	.4byte	0x17fd
	.uleb128 0x1
	.4byte	0xa3b
	.uleb128 0x1
	.4byte	0xe6
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x145
	.uleb128 0x1
	.4byte	0x17cd
	.byte	0
	.uleb128 0xc
	.4byte	.LASF337
	.byte	0x15
	.2byte	0x150
	.byte	0x7
	.4byte	0x249
	.4byte	0x181e
	.uleb128 0x1
	.4byte	0xa3b
	.uleb128 0x1
	.4byte	0x181e
	.uleb128 0x1
	.4byte	0x145
	.byte	0
	.uleb128 0x8
	.4byte	0x920
	.uleb128 0xc
	.4byte	.LASF338
	.byte	0x15
	.2byte	0x153
	.byte	0x7
	.4byte	0x249
	.4byte	0x183f
	.uleb128 0x1
	.4byte	0xa3b
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0xc
	.4byte	.LASF339
	.byte	0xb
	.2byte	0x123
	.byte	0xe
	.4byte	0x2cf
	.4byte	0x185b
	.uleb128 0x1
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0x15d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF340
	.byte	0xb
	.2byte	0x12c
	.byte	0x7
	.4byte	0x15d
	.4byte	0x1881
	.uleb128 0x1
	.4byte	0x1881
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0x15d
	.uleb128 0x1
	.4byte	0x15d
	.byte	0
	.uleb128 0x8
	.4byte	0x2ca
	.uleb128 0xc
	.4byte	.LASF341
	.byte	0x15
	.2byte	0x152
	.byte	0x7
	.4byte	0x249
	.4byte	0x18a7
	.uleb128 0x1
	.4byte	0xa3b
	.uleb128 0x1
	.4byte	0x18a7
	.uleb128 0x1
	.4byte	0x145
	.byte	0
	.uleb128 0x8
	.4byte	0x2cf
	.uleb128 0xc
	.4byte	.LASF342
	.byte	0x15
	.2byte	0x14a
	.byte	0x7
	.4byte	0x249
	.4byte	0x18c8
	.uleb128 0x1
	.4byte	0xa3b
	.uleb128 0x1
	.4byte	0x145
	.byte	0
	.uleb128 0xc
	.4byte	.LASF343
	.byte	0x15
	.2byte	0x148
	.byte	0x7
	.4byte	0x249
	.4byte	0x18e9
	.uleb128 0x1
	.4byte	0xa3b
	.uleb128 0x1
	.4byte	0x5ae
	.uleb128 0x1
	.4byte	0x15d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF344
	.byte	0x15
	.2byte	0x149
	.byte	0x7
	.4byte	0x249
	.4byte	0x1900
	.uleb128 0x1
	.4byte	0xa3b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF345
	.byte	0x15
	.2byte	0x13a
	.byte	0x7
	.4byte	0x249
	.4byte	0x1917
	.uleb128 0x1
	.4byte	0xa3b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF346
	.byte	0x15
	.2byte	0x146
	.byte	0x7
	.4byte	0x249
	.4byte	0x1938
	.uleb128 0x1
	.4byte	0xa3b
	.uleb128 0x1
	.4byte	0x5ae
	.uleb128 0x1
	.4byte	0x15d
	.byte	0
	.uleb128 0x12
	.4byte	.LASF347
	.byte	0x1f
	.byte	0x1f
	.byte	0x8
	.4byte	0xad
	.4byte	0x1958
	.uleb128 0x1
	.4byte	0xaf
	.uleb128 0x1
	.4byte	0xeb
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x12
	.4byte	.LASF348
	.byte	0x1f
	.byte	0x21
	.byte	0x8
	.4byte	0xad
	.4byte	0x1978
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0x37
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x12
	.4byte	.LASF349
	.byte	0x20
	.byte	0x60
	.byte	0x7
	.4byte	0x15d
	.4byte	0x198e
	.uleb128 0x1
	.4byte	0x15d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF350
	.byte	0x15
	.2byte	0x13f
	.byte	0x7
	.4byte	0x249
	.4byte	0x19b4
	.uleb128 0x1
	.4byte	0xa3b
	.uleb128 0x1
	.4byte	0x19b4
	.uleb128 0x1
	.4byte	0x19b9
	.uleb128 0x1
	.4byte	0x145
	.byte	0
	.uleb128 0x8
	.4byte	0x1c4
	.uleb128 0x8
	.4byte	0x15d
	.uleb128 0x12
	.4byte	.LASF351
	.byte	0xa
	.byte	0x6e
	.byte	0x5
	.4byte	0x37
	.4byte	0x19d4
	.uleb128 0x1
	.4byte	0x249
	.byte	0
	.uleb128 0xc
	.4byte	.LASF352
	.byte	0x15
	.2byte	0x14d
	.byte	0x7
	.4byte	0x249
	.4byte	0x19f0
	.uleb128 0x1
	.4byte	0xa3b
	.uleb128 0x1
	.4byte	0x19f0
	.byte	0
	.uleb128 0x8
	.4byte	0xa3b
	.uleb128 0xc
	.4byte	.LASF353
	.byte	0x15
	.2byte	0x13b
	.byte	0x7
	.4byte	0x249
	.4byte	0x1a0c
	.uleb128 0x1
	.4byte	0xa3b
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF354
	.byte	0x14
	.byte	0x4b
	.4byte	0x1a1d
	.uleb128 0x1
	.4byte	0x920
	.byte	0
	.uleb128 0xc
	.4byte	.LASF355
	.byte	0xb
	.2byte	0x125
	.byte	0x6
	.4byte	0x145
	.4byte	0x1a34
	.uleb128 0x1
	.4byte	0x2cf
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF356
	.byte	0x1d
	.2byte	0x1fc
	.4byte	0x1a46
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x35
	.4byte	.LASF503
	.byte	0x1d
	.2byte	0x1fb
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x16
	.4byte	.LASF357
	.2byte	0x1020
	.byte	0x1
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1abb
	.uleb128 0x6
	.string	"s"
	.2byte	0x1020
	.byte	0x2d
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x1022
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"i"
	.2byte	0x1023
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.uleb128 0x2
	.4byte	.LASF304
	.2byte	0x102b
	.byte	0x11
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF303
	.2byte	0x102b
	.byte	0x1d
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF358
	.2byte	0x1005
	.byte	0x1
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b19
	.uleb128 0x6
	.string	"s"
	.2byte	0x1005
	.byte	0x27
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF303
	.2byte	0x1005
	.byte	0x3c
	.4byte	0x504
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF304
	.2byte	0x1005
	.byte	0x57
	.4byte	0x504
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x1007
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"i"
	.2byte	0x1008
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF367
	.2byte	0xfe9
	.4byte	0x37
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b7a
	.uleb128 0x6
	.string	"s"
	.2byte	0xfe9
	.byte	0x25
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF303
	.2byte	0xfe9
	.byte	0x3a
	.4byte	0x504
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF304
	.2byte	0xfe9
	.byte	0x55
	.4byte	0x504
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0xfeb
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"i"
	.2byte	0xfec
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF359
	.2byte	0xfc4
	.4byte	0x37
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bcf
	.uleb128 0x6
	.string	"af"
	.2byte	0xfc4
	.byte	0x14
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"src"
	.2byte	0xfc4
	.byte	0x24
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"dst"
	.2byte	0xfc4
	.byte	0x2f
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"err"
	.2byte	0xfc6
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF360
	.2byte	0xfa3
	.4byte	0xc5
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c42
	.uleb128 0x6
	.string	"af"
	.2byte	0xfa3
	.byte	0x14
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"src"
	.2byte	0xfa3
	.byte	0x24
	.4byte	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"dst"
	.2byte	0xfa3
	.byte	0x2f
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF361
	.2byte	0xfa3
	.byte	0x3e
	.4byte	0x694
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"ret"
	.2byte	0xfa5
	.byte	0xf
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF362
	.2byte	0xfa6
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF363
	.2byte	0xf50
	.4byte	0x37
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ccd
	.uleb128 0x6
	.string	"s"
	.2byte	0xf50
	.byte	0x10
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"cmd"
	.2byte	0xf50
	.byte	0x17
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"val"
	.2byte	0xf50
	.byte	0x20
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0xf52
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"ret"
	.2byte	0xf53
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF364
	.2byte	0xf54
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.uleb128 0x7
	.string	"lev"
	.2byte	0xf63
	.byte	0x14
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF365
	.2byte	0xef3
	.4byte	0x37
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d30
	.uleb128 0x6
	.string	"s"
	.2byte	0xef3
	.byte	0x10
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"cmd"
	.2byte	0xef3
	.byte	0x18
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF366
	.2byte	0xef3
	.byte	0x23
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0xef5
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"val"
	.2byte	0xef6
	.byte	0x8
	.4byte	0x145
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x11
	.4byte	.LASF368
	.2byte	0xd42
	.4byte	0x37
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e7d
	.uleb128 0x6
	.string	"s"
	.2byte	0xd42
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF175
	.2byte	0xd42
	.byte	0x21
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0xd42
	.byte	0x2c
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF177
	.2byte	0xd42
	.byte	0x41
	.4byte	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.4byte	.LASF178
	.2byte	0xd42
	.byte	0x53
	.4byte	0x694
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x7
	.string	"err"
	.2byte	0xd44
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0xd45
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0x1dd2
	.uleb128 0x2
	.4byte	.LASF369
	.2byte	0xd76
	.byte	0x10
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x17
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0x1def
	.uleb128 0x2
	.4byte	.LASF369
	.2byte	0xd83
	.byte	0x10
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x17
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.4byte	0x1e19
	.uleb128 0x2
	.4byte	.LASF370
	.2byte	0xdba
	.byte	0x1f
	.4byte	0x1e7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"n"
	.2byte	0xdbb
	.byte	0x19
	.4byte	0x385
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.4byte	0x1e36
	.uleb128 0x2
	.4byte	.LASF303
	.2byte	0xe05
	.byte	0x16
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0xd
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x2
	.4byte	.LASF371
	.2byte	0xe18
	.byte	0x11
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x7
	.string	"imr"
	.2byte	0xe19
	.byte	0x21
	.4byte	0x1e82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF303
	.2byte	0xe1a
	.byte	0x16
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF304
	.2byte	0xe1b
	.byte	0x16
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x764
	.uleb128 0x8
	.4byte	0x7a4
	.uleb128 0x16
	.4byte	.LASF372
	.2byte	0xd2c
	.byte	0x1
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ebc
	.uleb128 0x6
	.string	"arg"
	.2byte	0xd2c
	.byte	0x20
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF373
	.2byte	0xd2e
	.byte	0x23
	.4byte	0x1ebc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	0xa5d
	.uleb128 0xb
	.4byte	.LASF374
	.2byte	0xce0
	.4byte	0x37
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f65
	.uleb128 0x6
	.string	"s"
	.2byte	0xce0
	.byte	0x15
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF175
	.2byte	0xce0
	.byte	0x1c
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0xce0
	.byte	0x27
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF177
	.2byte	0xce0
	.byte	0x3c
	.4byte	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.4byte	.LASF178
	.2byte	0xce0
	.byte	0x4e
	.4byte	0x694
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x7
	.string	"err"
	.2byte	0xce2
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0xce3
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF375
	.2byte	0xce5
	.byte	0x9
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2
	.4byte	.LASF373
	.2byte	0xce6
	.byte	0x22
	.4byte	0xa5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x11
	.4byte	.LASF376
	.2byte	0xb9c
	.4byte	0x37
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x201c
	.uleb128 0x6
	.string	"s"
	.2byte	0xb9c
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF175
	.2byte	0xb9c
	.byte	0x21
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0xb9c
	.byte	0x2c
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF177
	.2byte	0xb9c
	.byte	0x3b
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF178
	.2byte	0xb9c
	.byte	0x4e
	.4byte	0x201c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"err"
	.2byte	0xb9e
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0xb9f
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x2002
	.uleb128 0x7
	.string	"loc"
	.2byte	0xbf4
	.byte	0x16
	.4byte	0x175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xd
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x7
	.string	"loc"
	.2byte	0xbfa
	.byte	0x16
	.4byte	0x175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x694
	.uleb128 0x20
	.4byte	.LASF377
	.2byte	0xb5a
	.4byte	0x37
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x204a
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0xb5a
	.byte	0x1b
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF378
	.2byte	0xb47
	.byte	0x1
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x207f
	.uleb128 0x6
	.string	"arg"
	.2byte	0xb47
	.byte	0x20
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF373
	.2byte	0xb49
	.byte	0x23
	.4byte	0x1ebc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF379
	.2byte	0xaf6
	.4byte	0x37
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2123
	.uleb128 0x6
	.string	"s"
	.2byte	0xaf6
	.byte	0x15
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF175
	.2byte	0xaf6
	.byte	0x1c
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0xaf6
	.byte	0x27
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF177
	.2byte	0xaf6
	.byte	0x36
	.4byte	0xad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.4byte	.LASF178
	.2byte	0xaf6
	.byte	0x49
	.4byte	0x201c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x7
	.string	"err"
	.2byte	0xaf8
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0xaf9
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF375
	.2byte	0xafb
	.byte	0x9
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x2
	.4byte	.LASF373
	.2byte	0xafc
	.byte	0x22
	.4byte	0xa5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xb
	.4byte	.LASF380
	.2byte	0xaf0
	.4byte	0x37
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2168
	.uleb128 0x6
	.string	"s"
	.2byte	0xaf0
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF98
	.2byte	0xaf0
	.byte	0x2a
	.4byte	0x2168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF381
	.2byte	0xaf0
	.byte	0x3b
	.4byte	0x201c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	0x64b
	.uleb128 0xb
	.4byte	.LASF382
	.2byte	0xaea
	.4byte	0x37
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21b2
	.uleb128 0x6
	.string	"s"
	.2byte	0xaea
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF98
	.2byte	0xaea
	.byte	0x2a
	.4byte	0x2168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF381
	.2byte	0xaea
	.byte	0x3b
	.4byte	0x201c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF383
	.2byte	0xabb
	.4byte	0x37
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2251
	.uleb128 0x6
	.string	"s"
	.2byte	0xabb
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF98
	.2byte	0xabb
	.byte	0x2a
	.4byte	0x2168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF381
	.2byte	0xabb
	.byte	0x3b
	.4byte	0x201c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF384
	.2byte	0xabb
	.byte	0x49
	.4byte	0x145
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0xabd
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF385
	.2byte	0xabe
	.byte	0x1a
	.4byte	0x1467
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF386
	.2byte	0xabf
	.byte	0xd
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF154
	.2byte	0xac0
	.byte	0x9
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x7
	.string	"err"
	.2byte	0xac1
	.byte	0x9
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xb
	.4byte	.LASF387
	.2byte	0xa8e
	.4byte	0x37
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22c3
	.uleb128 0x6
	.string	"s"
	.2byte	0xa8e
	.byte	0x13
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"how"
	.2byte	0xa8e
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0xa90
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"err"
	.2byte	0xa91
	.byte	0x9
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2
	.4byte	.LASF388
	.2byte	0xa92
	.byte	0x8
	.4byte	0x145
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF389
	.2byte	0xa92
	.byte	0x15
	.4byte	0x145
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x16
	.4byte	.LASF390
	.2byte	0xa3f
	.byte	0xd
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2365
	.uleb128 0x6
	.string	"s"
	.2byte	0xa3f
	.byte	0x26
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF391
	.2byte	0xa3f
	.byte	0x2d
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF392
	.2byte	0xa3f
	.byte	0x40
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF393
	.2byte	0xa3f
	.byte	0x53
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"scb"
	.2byte	0xa41
	.byte	0x1a
	.4byte	0xb4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF394
	.2byte	0xa43
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"lev"
	.2byte	0xa44
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.4byte	.LASF405
	.2byte	0xa4b
	.4byte	.L393
	.uleb128 0xd
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x2
	.4byte	.LASF395
	.2byte	0xa52
	.byte	0xb
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF396
	.2byte	0x9dc
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x241a
	.uleb128 0x3
	.4byte	.LASF157
	.2byte	0x9dc
	.byte	0x20
	.4byte	0xa3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"evt"
	.2byte	0x9dc
	.byte	0x37
	.4byte	0xbbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x6
	.string	"len"
	.2byte	0x9dc
	.byte	0x42
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"s"
	.2byte	0x9de
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF397
	.2byte	0x9de
	.byte	0xa
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x9df
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.string	"lev"
	.2byte	0x9e0
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x2
	.4byte	.LASF391
	.2byte	0xa25
	.byte	0x9
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF392
	.2byte	0xa25
	.byte	0x18
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF393
	.2byte	0xa25
	.byte	0x27
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF398
	.2byte	0x9b5
	.4byte	0x37
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24a6
	.uleb128 0x6
	.string	"scb"
	.2byte	0x9b5
	.byte	0x34
	.4byte	0x24a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"fd"
	.2byte	0x9b5
	.byte	0x3d
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF391
	.2byte	0x9b5
	.byte	0x45
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF392
	.2byte	0x9b5
	.byte	0x58
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF393
	.2byte	0x9b5
	.byte	0x6b
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"fdi"
	.2byte	0x9b7
	.byte	0xa
	.4byte	0x7e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x9b9
	.byte	0x1a
	.4byte	0x24ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xb45
	.uleb128 0x8
	.4byte	0x828
	.uleb128 0xb
	.4byte	.LASF399
	.2byte	0x93e
	.4byte	0x37
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2547
	.uleb128 0x6
	.string	"fds"
	.2byte	0x93e
	.byte	0x1a
	.4byte	0xb54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF400
	.2byte	0x93e
	.byte	0x26
	.4byte	0x7e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF401
	.2byte	0x93e
	.byte	0x30
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.4byte	.LASF402
	.2byte	0x940
	.byte	0x9
	.4byte	0x175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF403
	.2byte	0x941
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF404
	.2byte	0x942
	.byte	0x9
	.4byte	0x175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.4byte	.LASF406
	.2byte	0x9aa
	.4byte	.L351
	.uleb128 0x26
	.4byte	.LLRL2
	.uleb128 0x2
	.4byte	.LASF407
	.2byte	0x959
	.byte	0x1b
	.4byte	0xac3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF408
	.2byte	0x8c0
	.4byte	0x37
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2610
	.uleb128 0x6
	.string	"fds"
	.2byte	0x8c0
	.byte	0x1e
	.4byte	0xb54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF400
	.2byte	0x8c0
	.byte	0x2a
	.4byte	0x7e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF409
	.2byte	0x8c0
	.byte	0x48
	.4byte	0x1532
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x2
	.4byte	.LASF403
	.2byte	0x8c2
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"fdi"
	.2byte	0x8c3
	.byte	0xa
	.4byte	0x7e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x8c4
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.string	"lev"
	.2byte	0x8c5
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x2
	.4byte	.LASF158
	.2byte	0x8d6
	.byte	0xf
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF159
	.2byte	0x8d7
	.byte	0xf
	.4byte	0x169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x2
	.4byte	.LASF160
	.2byte	0x8d8
	.byte	0xf
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x8d9
	.byte	0xf
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF410
	.2byte	0x7d4
	.4byte	0x37
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x276c
	.uleb128 0x3
	.4byte	.LASF411
	.2byte	0x7d4
	.byte	0x11
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x3
	.4byte	.LASF182
	.2byte	0x7d4
	.byte	0x22
	.4byte	0xb4f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x3
	.4byte	.LASF183
	.2byte	0x7d4
	.byte	0x33
	.4byte	0xb4f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x3
	.4byte	.LASF184
	.2byte	0x7d4
	.byte	0x45
	.4byte	0xb4f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x3
	.4byte	.LASF401
	.2byte	0x7d5
	.byte	0x1d
	.4byte	0x276c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2
	.4byte	.LASF402
	.2byte	0x7d7
	.byte	0x9
	.4byte	0x175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF403
	.2byte	0x7d8
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF412
	.2byte	0x7d9
	.byte	0xa
	.4byte	0x7d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF413
	.2byte	0x7d9
	.byte	0x14
	.4byte	0x7d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF414
	.2byte	0x7d9
	.byte	0x1f
	.4byte	0x7d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF404
	.2byte	0x7da
	.byte	0x9
	.4byte	0x175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"i"
	.2byte	0x7db
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF415
	.2byte	0x7dc
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"lev"
	.2byte	0x7e3
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x2
	.4byte	.LASF407
	.2byte	0x809
	.byte	0x1d
	.4byte	0xac3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x17
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x2734
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x824
	.byte	0x1d
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x17
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x2751
	.uleb128 0x2
	.4byte	.LASF416
	.2byte	0x84c
	.byte	0x12
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xd
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x861
	.byte	0x1d
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x82d
	.uleb128 0x11
	.4byte	.LASF417
	.2byte	0x753
	.4byte	0x37
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28a8
	.uleb128 0x3
	.4byte	.LASF411
	.2byte	0x753
	.byte	0x12
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF418
	.2byte	0x753
	.byte	0x23
	.4byte	0xb4f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF419
	.2byte	0x753
	.byte	0x37
	.4byte	0xb4f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF420
	.2byte	0x753
	.byte	0x4c
	.4byte	0xb4f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.4byte	.LASF421
	.2byte	0x754
	.byte	0x16
	.4byte	0xb4f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3
	.4byte	.LASF422
	.2byte	0x754
	.byte	0x2b
	.4byte	0xb4f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3
	.4byte	.LASF423
	.2byte	0x754
	.byte	0x41
	.4byte	0xb4f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x7
	.string	"i"
	.2byte	0x756
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF403
	.2byte	0x756
	.byte	0xa
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF412
	.2byte	0x757
	.byte	0xa
	.4byte	0x7d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF413
	.2byte	0x757
	.byte	0x14
	.4byte	0x7d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF414
	.2byte	0x757
	.byte	0x1f
	.4byte	0x7d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x758
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.string	"lev"
	.2byte	0x759
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x2
	.4byte	.LASF158
	.2byte	0x76c
	.byte	0xd
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF159
	.2byte	0x76d
	.byte	0xd
	.4byte	0x169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x2
	.4byte	.LASF160
	.2byte	0x76e
	.byte	0xd
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x76f
	.byte	0xd
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF424
	.2byte	0x72b
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28dd
	.uleb128 0x3
	.4byte	.LASF407
	.2byte	0x72b
	.byte	0x2e
	.4byte	0xb4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"lev"
	.2byte	0x72d
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF425
	.2byte	0x713
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2912
	.uleb128 0x3
	.4byte	.LASF407
	.2byte	0x713
	.byte	0x2c
	.4byte	0xb4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"lev"
	.2byte	0x715
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF426
	.2byte	0x700
	.4byte	0xda
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2966
	.uleb128 0x6
	.string	"s"
	.2byte	0x700
	.byte	0x11
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"iov"
	.2byte	0x700
	.byte	0x28
	.4byte	0x2966
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF427
	.2byte	0x700
	.byte	0x31
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.string	"msg"
	.2byte	0x702
	.byte	0x11
	.4byte	0x6d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x8
	.4byte	0x6c7
	.uleb128 0xb
	.4byte	.LASF428
	.2byte	0x6fa
	.4byte	0xda
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29b0
	.uleb128 0x6
	.string	"s"
	.2byte	0x6fa
	.byte	0x10
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF373
	.2byte	0x6fa
	.byte	0x1f
	.4byte	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF361
	.2byte	0x6fa
	.byte	0x2c
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF429
	.2byte	0x6bd
	.4byte	0x37
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a13
	.uleb128 0x3
	.4byte	.LASF430
	.2byte	0x6bd
	.byte	0x11
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF164
	.2byte	0x6bd
	.byte	0x1d
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF269
	.2byte	0x6bd
	.byte	0x27
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF157
	.2byte	0x6bf
	.byte	0x13
	.4byte	0xa3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"i"
	.2byte	0x6c0
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF431
	.2byte	0x659
	.4byte	0xda
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2aea
	.uleb128 0x6
	.string	"s"
	.2byte	0x659
	.byte	0x11
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF373
	.2byte	0x659
	.byte	0x20
	.4byte	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF361
	.2byte	0x659
	.byte	0x2d
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x659
	.byte	0x37
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"to"
	.2byte	0x65a
	.byte	0x24
	.4byte	0x2aea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF432
	.2byte	0x65a
	.byte	0x32
	.4byte	0x694
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x65c
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"err"
	.2byte	0x65d
	.byte	0x9
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF433
	.2byte	0x65e
	.byte	0x9
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x2
	.4byte	.LASF219
	.2byte	0x65f
	.byte	0x9
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"buf"
	.2byte	0x660
	.byte	0x11
	.4byte	0x8c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x2
	.4byte	.LASF434
	.2byte	0x69b
	.byte	0xd
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x67f
	.uleb128 0xb
	.4byte	.LASF435
	.2byte	0x5b6
	.4byte	0xda
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c03
	.uleb128 0x6
	.string	"s"
	.2byte	0x5b6
	.byte	0x12
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x6
	.string	"msg"
	.2byte	0x5b6
	.byte	0x2a
	.4byte	0x2c03
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x5b6
	.byte	0x33
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x5b8
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF436
	.2byte	0x5ba
	.byte	0x8
	.4byte	0x145
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x2
	.4byte	.LASF437
	.2byte	0x5bb
	.byte	0xa
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"err"
	.2byte	0x5bd
	.byte	0x9
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x21
	.4byte	.LASF438
	.2byte	0x64b
	.4byte	.L218
	.uleb128 0xd
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x2
	.4byte	.LASF439
	.2byte	0x5e6
	.byte	0x13
	.4byte	0x8c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x7
	.string	"i"
	.2byte	0x5e7
	.byte	0x12
	.4byte	0x6cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF361
	.2byte	0x5e8
	.byte	0xd
	.4byte	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x2bcf
	.uleb128 0x2
	.4byte	.LASF219
	.2byte	0x5f2
	.byte	0xd
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.byte	0
	.uleb128 0xd
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x2
	.4byte	.LASF440
	.2byte	0x607
	.byte	0xe
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x2
	.4byte	.LASF434
	.2byte	0x60f
	.byte	0xf
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x740
	.uleb128 0xb
	.4byte	.LASF441
	.2byte	0x58e
	.4byte	0xda
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c98
	.uleb128 0x6
	.string	"s"
	.2byte	0x58e
	.byte	0xf
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF373
	.2byte	0x58e
	.byte	0x1e
	.4byte	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF361
	.2byte	0x58e
	.byte	0x2b
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x58e
	.byte	0x35
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x590
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"err"
	.2byte	0x591
	.byte	0x9
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x2
	.4byte	.LASF436
	.2byte	0x592
	.byte	0x8
	.4byte	0x145
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x2
	.4byte	.LASF437
	.2byte	0x593
	.byte	0xa
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF442
	.2byte	0x529
	.4byte	0xda
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d62
	.uleb128 0x6
	.string	"s"
	.2byte	0x529
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF443
	.2byte	0x529
	.byte	0x24
	.4byte	0x2d62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x529
	.byte	0x31
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x52b
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.string	"i"
	.2byte	0x52c
	.byte	0x10
	.4byte	0x6cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF444
	.2byte	0x52d
	.byte	0xb
	.4byte	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x2d39
	.uleb128 0x2
	.4byte	.LASF445
	.2byte	0x54d
	.byte	0x9
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.4byte	.LLRL1
	.uleb128 0x2
	.4byte	.LASF446
	.2byte	0x553
	.byte	0xf
	.4byte	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x2
	.4byte	.LASF447
	.2byte	0x574
	.byte	0xb
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x7
	.string	"err"
	.2byte	0x575
	.byte	0xb
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x6d8
	.uleb128 0xb
	.4byte	.LASF448
	.2byte	0x523
	.4byte	0xda
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dbb
	.uleb128 0x6
	.string	"s"
	.2byte	0x523
	.byte	0xf
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"mem"
	.2byte	0x523
	.byte	0x18
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"len"
	.2byte	0x523
	.byte	0x24
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x523
	.byte	0x2d
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.4byte	.LASF449
	.2byte	0x512
	.4byte	0xda
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e0f
	.uleb128 0x6
	.string	"s"
	.2byte	0x512
	.byte	0x10
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"iov"
	.2byte	0x512
	.byte	0x27
	.4byte	0x2966
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF427
	.2byte	0x512
	.byte	0x30
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.string	"msg"
	.2byte	0x514
	.byte	0x11
	.4byte	0x6d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0xb
	.4byte	.LASF450
	.2byte	0x50c
	.4byte	0xda
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e54
	.uleb128 0x6
	.string	"s"
	.2byte	0x50c
	.byte	0xf
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"mem"
	.2byte	0x50c
	.byte	0x18
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"len"
	.2byte	0x50c
	.byte	0x24
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF451
	.2byte	0x4d7
	.4byte	0xda
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f30
	.uleb128 0x6
	.string	"s"
	.2byte	0x4d7
	.byte	0x13
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.string	"mem"
	.2byte	0x4d7
	.byte	0x1c
	.4byte	0xad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.string	"len"
	.2byte	0x4d7
	.byte	0x28
	.4byte	0x82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x4d7
	.byte	0x31
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.4byte	.LASF452
	.2byte	0x4d8
	.byte	0x20
	.4byte	0x2168
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3
	.4byte	.LASF453
	.2byte	0x4d8
	.byte	0x31
	.4byte	0x201c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x4da
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"ret"
	.2byte	0x4db
	.byte	0xb
	.4byte	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x2
	.4byte	.LASF447
	.2byte	0x4eb
	.byte	0xb
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"vec"
	.2byte	0x4ec
	.byte	0x12
	.4byte	0x6a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"msg"
	.2byte	0x4ed
	.byte	0x13
	.4byte	0x6d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"err"
	.2byte	0x4ee
	.byte	0xb
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF454
	.2byte	0x468
	.4byte	0x249
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3033
	.uleb128 0x3
	.4byte	.LASF302
	.2byte	0x468
	.byte	0x29
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x468
	.byte	0x33
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"msg"
	.2byte	0x468
	.byte	0x49
	.4byte	0x2d62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF447
	.2byte	0x468
	.byte	0x55
	.4byte	0x19b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.4byte	.LASF455
	.2byte	0x468
	.byte	0x67
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x7
	.string	"buf"
	.2byte	0x46a
	.byte	0x12
	.4byte	0x920
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF456
	.2byte	0x46b
	.byte	0x8
	.4byte	0x145
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x7
	.string	"err"
	.2byte	0x46c
	.byte	0x9
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x2
	.4byte	.LASF444
	.2byte	0x46d
	.byte	0x9
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF457
	.2byte	0x46d
	.byte	0x11
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF458
	.2byte	0x46d
	.byte	0x1a
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x7
	.string	"i"
	.2byte	0x46e
	.byte	0x10
	.4byte	0x6cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x3019
	.uleb128 0x2
	.4byte	.LASF459
	.2byte	0x48f
	.byte	0xb
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.byte	0
	.uleb128 0xd
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x2
	.4byte	.LASF460
	.2byte	0x4ae
	.byte	0xa
	.4byte	0x145
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF461
	.2byte	0x448
	.4byte	0x37
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30cf
	.uleb128 0x3
	.4byte	.LASF302
	.2byte	0x448
	.byte	0x26
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF452
	.2byte	0x448
	.byte	0x3d
	.4byte	0x2168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF453
	.2byte	0x448
	.byte	0x4e
	.4byte	0x201c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF462
	.2byte	0x448
	.byte	0x63
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF455
	.2byte	0x448
	.byte	0x6f
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF463
	.2byte	0x448
	.byte	0x7e
	.4byte	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x2
	.4byte	.LASF154
	.2byte	0x456
	.byte	0xb
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2
	.4byte	.LASF464
	.2byte	0x457
	.byte	0xf
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF465
	.2byte	0x427
	.4byte	0x37
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3153
	.uleb128 0x3
	.4byte	.LASF157
	.2byte	0x427
	.byte	0x25
	.4byte	0xa3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF466
	.2byte	0x427
	.byte	0x36
	.4byte	0x19b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF154
	.2byte	0x427
	.byte	0x46
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x3
	.4byte	.LASF452
	.2byte	0x428
	.byte	0x26
	.4byte	0x2168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.4byte	.LASF453
	.2byte	0x428
	.byte	0x37
	.4byte	0x201c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF467
	.2byte	0x42a
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF385
	.2byte	0x42b
	.byte	0x1a
	.4byte	0x1467
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x11
	.4byte	.LASF468
	.2byte	0x3c0
	.4byte	0xda
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3212
	.uleb128 0x3
	.4byte	.LASF302
	.2byte	0x3c0
	.byte	0x21
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"mem"
	.2byte	0x3c0
	.byte	0x2d
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"len"
	.2byte	0x3c0
	.byte	0x39
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x3c0
	.byte	0x42
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF456
	.2byte	0x3c2
	.byte	0x8
	.4byte	0x145
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF469
	.2byte	0x3c3
	.byte	0xb
	.4byte	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF470
	.2byte	0x3c4
	.byte	0xb
	.4byte	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.4byte	.LASF471
	.2byte	0x41b
	.4byte	.L96
	.uleb128 0x26
	.4byte	.LLRL0
	.uleb128 0x7
	.string	"p"
	.2byte	0x3ce
	.byte	0x12
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"err"
	.2byte	0x3cf
	.byte	0xb
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -31
	.uleb128 0x2
	.4byte	.LASF457
	.2byte	0x3d0
	.byte	0xb
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF472
	.2byte	0x399
	.4byte	0x37
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3266
	.uleb128 0x6
	.string	"s"
	.2byte	0x399
	.byte	0x11
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF473
	.2byte	0x399
	.byte	0x18
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x39b
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"err"
	.2byte	0x39c
	.byte	0x9
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xb
	.4byte	.LASF474
	.2byte	0x355
	.4byte	0x37
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32f1
	.uleb128 0x6
	.string	"s"
	.2byte	0x355
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF98
	.2byte	0x355
	.byte	0x2c
	.4byte	0x2aea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF381
	.2byte	0x355
	.byte	0x3c
	.4byte	0x694
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x357
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"err"
	.2byte	0x358
	.byte	0x9
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xd
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x2
	.4byte	.LASF475
	.2byte	0x36b
	.byte	0xf
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF219
	.2byte	0x36c
	.byte	0xb
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF476
	.2byte	0x32c
	.4byte	0x37
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3345
	.uleb128 0x6
	.string	"s"
	.2byte	0x32c
	.byte	0x10
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x32e
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF477
	.2byte	0x32f
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"err"
	.2byte	0x330
	.byte	0x9
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF478
	.2byte	0x2f6
	.4byte	0x37
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33c6
	.uleb128 0x6
	.string	"s"
	.2byte	0x2f6
	.byte	0xf
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF98
	.2byte	0x2f6
	.byte	0x29
	.4byte	0x2aea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF381
	.2byte	0x2f6
	.byte	0x39
	.4byte	0x694
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x2f8
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF479
	.2byte	0x2f9
	.byte	0xd
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF218
	.2byte	0x2fa
	.byte	0x9
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x7
	.string	"err"
	.2byte	0x2fb
	.byte	0x9
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.byte	0
	.uleb128 0xb
	.4byte	.LASF480
	.2byte	0x293
	.4byte	0x37
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34af
	.uleb128 0x6
	.string	"s"
	.2byte	0x293
	.byte	0x11
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3
	.4byte	.LASF54
	.2byte	0x293
	.byte	0x25
	.4byte	0x2168
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3
	.4byte	.LASF481
	.2byte	0x293
	.byte	0x36
	.4byte	0x201c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x295
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF482
	.2byte	0x295
	.byte	0x1c
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF483
	.2byte	0x296
	.byte	0x13
	.4byte	0xa3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF386
	.2byte	0x297
	.byte	0xd
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF154
	.2byte	0x298
	.byte	0x9
	.4byte	0x15d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x2
	.4byte	.LASF484
	.2byte	0x299
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.string	"err"
	.2byte	0x29a
	.byte	0x9
	.4byte	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2
	.4byte	.LASF485
	.2byte	0x29b
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"lev"
	.2byte	0x29c
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x2
	.4byte	.LASF486
	.2byte	0x2c2
	.byte	0x1c
	.4byte	0x1467
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF487
	.2byte	0x279
	.byte	0x1
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3520
	.uleb128 0x3
	.4byte	.LASF302
	.2byte	0x279
	.byte	0x1f
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF477
	.2byte	0x279
	.byte	0x29
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF488
	.2byte	0x27b
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF157
	.2byte	0x27c
	.byte	0x13
	.4byte	0xa3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF158
	.2byte	0x27d
	.byte	0x1c
	.4byte	0x8a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.string	"lev"
	.2byte	0x27e
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF489
	.2byte	0x263
	.byte	0x1
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3564
	.uleb128 0x3
	.4byte	.LASF477
	.2byte	0x263
	.byte	0x1f
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF157
	.2byte	0x263
	.byte	0x37
	.4byte	0xa3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF158
	.2byte	0x263
	.byte	0x57
	.4byte	0x3564
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	0x8a2
	.uleb128 0x20
	.4byte	.LASF490
	.2byte	0x24b
	.4byte	0x37
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35bf
	.uleb128 0x3
	.4byte	.LASF302
	.2byte	0x24b
	.byte	0x26
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF477
	.2byte	0x24b
	.byte	0x30
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF157
	.2byte	0x24b
	.byte	0x49
	.4byte	0x19f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF158
	.2byte	0x24c
	.byte	0x2e
	.4byte	0x3564
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x11
	.4byte	.LASF491
	.2byte	0x21c
	.4byte	0x37
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3613
	.uleb128 0x3
	.4byte	.LASF483
	.2byte	0x21c
	.byte	0x1e
	.4byte	0xa3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF492
	.2byte	0x21c
	.byte	0x2b
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"i"
	.2byte	0x21e
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"lev"
	.2byte	0x21f
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF493
	.2byte	0x206
	.4byte	0x14c5
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x364a
	.uleb128 0x6
	.string	"fd"
	.2byte	0x206
	.byte	0x10
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x208
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF494
	.2byte	0x1f3
	.4byte	0x14c5
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3681
	.uleb128 0x6
	.string	"fd"
	.2byte	0x1f3
	.byte	0x13
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF302
	.2byte	0x1f5
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF495
	.2byte	0x1e1
	.4byte	0x14c5
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x36b8
	.uleb128 0x6
	.string	"fd"
	.2byte	0x1e1
	.byte	0x21
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"ret"
	.2byte	0x1e3
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF496
	.2byte	0x1d4
	.4byte	0x14c5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x36ef
	.uleb128 0x6
	.string	"fd"
	.2byte	0x1d4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"ret"
	.2byte	0x1d6
	.byte	0x15
	.4byte	0x14c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF497
	.2byte	0x1cd
	.4byte	0x14c5
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3717
	.uleb128 0x6
	.string	"fd"
	.2byte	0x1cd
	.byte	0x20
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF498
	.2byte	0x1c2
	.4byte	0x14c5
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x374c
	.uleb128 0x6
	.string	"fd"
	.2byte	0x1c2
	.byte	0x20
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"s"
	.2byte	0x1c4
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF499
	.2byte	0x16e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.4byte	.LASF500
	.2byte	0x167
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x35
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1ec
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
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
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
	.4byte	.LBB4
	.byte	0x4
	.uleb128 .LBB4-.LBB4
	.uleb128 .LBE4-.LBB4
	.byte	0x4
	.uleb128 .LBB5-.LBB4
	.uleb128 .LBE5-.LBB4
	.byte	0
.LLRL1:
	.byte	0x5
	.4byte	.LBB11
	.byte	0x4
	.uleb128 .LBB11-.LBB11
	.uleb128 .LBE11-.LBB11
	.byte	0x4
	.uleb128 .LBB12-.LBB11
	.uleb128 .LBE12-.LBB11
	.byte	0
.LLRL2:
	.byte	0x5
	.4byte	.LBB25
	.byte	0x4
	.uleb128 .LBB25-.LBB25
	.uleb128 .LBE25-.LBB25
	.byte	0x4
	.uleb128 .LBB26-.LBB25
	.uleb128 .LBE26-.LBB25
	.byte	0
.LLRL3:
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
	.byte	0x7
	.4byte	.LFB58
	.uleb128 .LFE58-.LFB58
	.byte	0x7
	.4byte	.LFB59
	.uleb128 .LFE59-.LFB59
	.byte	0x7
	.4byte	.LFB60
	.uleb128 .LFE60-.LFB60
	.byte	0x7
	.4byte	.LFB61
	.uleb128 .LFE61-.LFB61
	.byte	0x7
	.4byte	.LFB62
	.uleb128 .LFE62-.LFB62
	.byte	0x7
	.4byte	.LFB63
	.uleb128 .LFE63-.LFB63
	.byte	0x7
	.4byte	.LFB64
	.uleb128 .LFE64-.LFB64
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF468:
	.string	"lwip_recv_tcp"
.LASF38:
	.string	"ERR_RTE"
.LASF414:
	.string	"lexceptset"
.LASF175:
	.string	"level"
.LASF121:
	.string	"socklen_t"
.LASF18:
	.string	"int8_t"
.LASF15:
	.string	"_ssize_t"
.LASF12:
	.string	"size_t"
.LASF119:
	.string	"sa_family"
.LASF386:
	.string	"naddr"
.LASF127:
	.string	"msg_name"
.LASF225:
	.string	"rcv_ann_wnd"
.LASF427:
	.string	"iovcnt"
.LASF207:
	.string	"netconn_igmp"
.LASF63:
	.string	"MEMP_TCP_PCB"
.LASF144:
	.string	"revents"
.LASF99:
	.string	"igmp_mac_filter"
.LASF339:
	.string	"pbuf_free_header"
.LASF20:
	.string	"int32_t"
.LASF113:
	.string	"sin_family"
.LASF503:
	.string	"sys_arch_protect"
.LASF479:
	.string	"local_addr"
.LASF115:
	.string	"sin_addr"
.LASF459:
	.string	"len_left"
.LASF476:
	.string	"lwip_close"
.LASF499:
	.string	"lwip_socket_thread_cleanup"
.LASF322:
	.string	"netconn_err"
.LASF224:
	.string	"rcv_wnd"
.LASF215:
	.string	"so_options"
.LASF261:
	.string	"persist_probe"
.LASF72:
	.string	"MEMP_SYS_TIMEOUT"
.LASF66:
	.string	"MEMP_ALTCP_PCB"
.LASF344:
	.string	"netconn_disconnect"
.LASF464:
	.string	"tmpaddr"
.LASF452:
	.string	"from"
.LASF488:
	.string	"freed"
.LASF276:
	.string	"LISTEN"
.LASF397:
	.string	"check_waiters"
.LASF93:
	.string	"state"
.LASF81:
	.string	"lwip_internal_netif_client_data_index"
.LASF352:
	.string	"netconn_accept"
.LASF30:
	.string	"s32_t"
.LASF234:
	.string	"ssthresh"
.LASF164:
	.string	"type"
.LASF399:
	.string	"lwip_poll"
.LASF384:
	.string	"local"
.LASF184:
	.string	"exceptset"
.LASF285:
	.string	"TIME_WAIT"
.LASF157:
	.string	"conn"
.LASF165:
	.string	"pending_err"
.LASF495:
	.string	"tryget_socket_unconn_locked"
.LASF274:
	.string	"tcp_state"
.LASF105:
	.string	"netif_igmp_mac_filter_fn"
.LASF17:
	.string	"ssize_t"
.LASF217:
	.string	"prio"
.LASF220:
	.string	"polltmr"
.LASF469:
	.string	"recvd"
.LASF500:
	.string	"lwip_socket_thread_init"
.LASF372:
	.string	"lwip_setsockopt_callback"
.LASF362:
	.string	"size_int"
.LASF319:
	.string	"udp_bind_netif"
.LASF454:
	.string	"lwip_recvfrom_udp_raw"
.LASF163:
	.string	"netconn"
.LASF470:
	.string	"recv_left"
.LASF379:
	.string	"lwip_getsockopt"
.LASF166:
	.string	"op_completed"
.LASF434:
	.string	"chksum"
.LASF219:
	.string	"remote_port"
.LASF368:
	.string	"lwip_setsockopt_impl"
.LASF502:
	.string	"errno"
.LASF206:
	.string	"NETCONN_EVT_ERROR"
.LASF6:
	.string	"long int"
.LASF349:
	.string	"lwip_htons"
.LASF149:
	.string	"QueueDefinition"
.LASF197:
	.string	"NETCONN_WRITE"
.LASF151:
	.string	"sys_sem_t"
.LASF436:
	.string	"write_flags"
.LASF52:
	.string	"ip4_addr"
.LASF39:
	.string	"ERR_INPROGRESS"
.LASF443:
	.string	"message"
.LASF133:
	.string	"msg_flags"
.LASF442:
	.string	"lwip_recvmsg"
.LASF416:
	.string	"msecs_long"
.LASF112:
	.string	"sin_len"
.LASF338:
	.string	"netconn_tcp_recvd"
.LASF279:
	.string	"ESTABLISHED"
.LASF430:
	.string	"domain"
.LASF201:
	.string	"netconn_evt"
.LASF40:
	.string	"ERR_VAL"
.LASF296:
	.string	"raw_recv_fn"
.LASF346:
	.string	"netconn_bind"
.LASF498:
	.string	"tryget_socket_unconn_nouse"
.LASF288:
	.string	"tcp_sent_fn"
.LASF90:
	.string	"linkoutput"
.LASF329:
	.string	"netconn_new_with_proto_and_callback"
.LASF473:
	.string	"backlog"
.LASF97:
	.string	"hwaddr_len"
.LASF75:
	.string	"MEMP_PBUF_POOL"
.LASF2:
	.string	"signed char"
.LASF21:
	.string	"uint8_t"
.LASF214:
	.string	"netif_idx"
.LASF262:
	.string	"keep_cnt_sent"
.LASF316:
	.string	"igmp_leavegroup"
.LASF381:
	.string	"namelen"
.LASF118:
	.string	"sa_len"
.LASF457:
	.string	"copylen"
.LASF223:
	.string	"rcv_nxt"
.LASF212:
	.string	"local_ip"
.LASF406:
	.string	"return_success"
.LASF354:
	.string	"netbuf_delete"
.LASF392:
	.string	"has_sendevent"
.LASF486:
	.string	"tempaddr"
.LASF3:
	.string	"unsigned char"
.LASF396:
	.string	"event_callback"
.LASF444:
	.string	"buflen"
.LASF136:
	.string	"ip_mreq"
.LASF383:
	.string	"lwip_getaddrname"
.LASF135:
	.string	"ifr_name"
.LASF438:
	.string	"sendmsg_emsgsize"
.LASF292:
	.string	"tcp_pcb_listen"
.LASF67:
	.string	"MEMP_NETBUF"
.LASF471:
	.string	"lwip_recv_tcp_done"
.LASF317:
	.string	"igmp_joingroup"
.LASF357:
	.string	"lwip_socket_drop_registered_memberships"
.LASF376:
	.string	"lwip_getsockopt_impl"
.LASF161:
	.string	"errevent"
.LASF418:
	.string	"readset_in"
.LASF280:
	.string	"FIN_WAIT_1"
.LASF281:
	.string	"FIN_WAIT_2"
.LASF272:
	.string	"netvector"
.LASF314:
	.string	"ip4addr_aton"
.LASF190:
	.string	"NETCONN_TCP"
.LASF277:
	.string	"SYN_SENT"
.LASF16:
	.string	"char"
.LASF134:
	.string	"ifreq"
.LASF348:
	.string	"memset"
.LASF228:
	.string	"rttest"
.LASF89:
	.string	"output"
.LASF394:
	.string	"last_select_cb_ctr"
.LASF53:
	.string	"pbuf"
.LASF395:
	.string	"do_signal"
.LASF419:
	.string	"writeset_in"
.LASF333:
	.string	"inet_chksum_pbuf"
.LASF61:
	.string	"MEMP_RAW_PCB"
.LASF489:
	.string	"free_socket_free_elements"
.LASF482:
	.string	"nsock"
.LASF126:
	.string	"msghdr"
.LASF182:
	.string	"readset"
.LASF111:
	.string	"sockaddr_in"
.LASF353:
	.string	"netconn_delete"
.LASF145:
	.string	"timeval"
.LASF446:
	.string	"recvd_local"
.LASF263:
	.string	"udp_pcb"
.LASF387:
	.string	"lwip_shutdown"
.LASF218:
	.string	"local_port"
.LASF341:
	.string	"netconn_recv_tcp_pbuf_flags"
.LASF114:
	.string	"sin_port"
.LASF131:
	.string	"msg_control"
.LASF188:
	.string	"netconn_type"
.LASF162:
	.string	"select_waiting"
.LASF59:
	.string	"flags"
.LASF474:
	.string	"lwip_connect"
.LASF216:
	.string	"tcp_pcb"
.LASF153:
	.string	"netbuf"
.LASF422:
	.string	"writeset_out"
.LASF156:
	.string	"lwip_sock"
.LASF439:
	.string	"chain_buf"
.LASF284:
	.string	"LAST_ACK"
.LASF13:
	.string	"ptrdiff_t"
.LASF86:
	.string	"ip_addr"
.LASF116:
	.string	"sin_zero"
.LASF193:
	.string	"NETCONN_UDPNOCHKSUM"
.LASF88:
	.string	"input"
.LASF304:
	.string	"multi_addr"
.LASF420:
	.string	"exceptset_in"
.LASF271:
	.string	"api_msg"
.LASF239:
	.string	"snd_lbb"
.LASF456:
	.string	"apiflags"
.LASF327:
	.string	"sys_arch_sem_wait"
.LASF43:
	.string	"ERR_ALREADY"
.LASF69:
	.string	"MEMP_TCPIP_MSG_API"
.LASF68:
	.string	"MEMP_NETCONN"
.LASF282:
	.string	"CLOSE_WAIT"
.LASF180:
	.string	"lwip_select_cb"
.LASF226:
	.string	"rcv_ann_right_edge"
.LASF306:
	.string	"sockets"
.LASF147:
	.string	"tv_usec"
.LASF106:
	.string	"in_addr_t"
.LASF78:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF91:
	.string	"status_callback"
.LASF294:
	.string	"tcpflags_t"
.LASF11:
	.string	"sys_prot_t"
.LASF481:
	.string	"addrlen"
.LASF365:
	.string	"lwip_ioctl"
.LASF222:
	.string	"last_timer"
.LASF393:
	.string	"has_errevent"
.LASF435:
	.string	"lwip_sendmsg"
.LASF484:
	.string	"newsock"
.LASF382:
	.string	"lwip_getpeername"
.LASF388:
	.string	"shut_rx"
.LASF491:
	.string	"alloc_socket"
.LASF402:
	.string	"waitres"
.LASF258:
	.string	"keep_cnt"
.LASF45:
	.string	"ERR_CONN"
.LASF200:
	.string	"NETCONN_CLOSE"
.LASF421:
	.string	"readset_out"
.LASF172:
	.string	"current_msg"
.LASF313:
	.string	"netconn_join_leave_group"
.LASF7:
	.string	"long unsigned int"
.LASF85:
	.string	"netif"
.LASF340:
	.string	"pbuf_copy_partial"
.LASF465:
	.string	"lwip_sock_make_addr"
.LASF96:
	.string	"hwaddr"
.LASF248:
	.string	"ooseq"
.LASF58:
	.string	"type_internal"
.LASF204:
	.string	"NETCONN_EVT_SENDPLUS"
.LASF410:
	.string	"lwip_select"
.LASF475:
	.string	"remote_addr"
.LASF264:
	.string	"mcast_ip4"
.LASF463:
	.string	"dbg_ret"
.LASF289:
	.string	"tcp_poll_fn"
.LASF497:
	.string	"lwip_socket_dbg_get_socket"
.LASF168:
	.string	"acceptmbox"
.LASF321:
	.string	"netif_find"
.LASF398:
	.string	"lwip_poll_should_wake"
.LASF24:
	.string	"uintptr_t"
.LASF124:
	.string	"iov_len"
.LASF173:
	.string	"callback"
.LASF56:
	.string	"payload"
.LASF360:
	.string	"lwip_inet_ntop"
.LASF445:
	.string	"recv_flags"
.LASF493:
	.string	"get_socket"
.LASF82:
	.string	"netif_mac_filter_action"
.LASF230:
	.string	"nrtx"
.LASF366:
	.string	"argp"
.LASF359:
	.string	"lwip_inet_pton"
.LASF142:
	.string	"pollfd"
.LASF425:
	.string	"lwip_link_select_cb"
.LASF232:
	.string	"lastack"
.LASF336:
	.string	"netconn_write_partly"
.LASF236:
	.string	"snd_nxt"
.LASF472:
	.string	"lwip_listen"
.LASF310:
	.string	"LWIP_POLLSCAN_CLEAR"
.LASF152:
	.string	"sys_mbox_t"
.LASF191:
	.string	"NETCONN_UDP"
.LASF269:
	.string	"protocol"
.LASF251:
	.string	"sent"
.LASF8:
	.string	"long long int"
.LASF211:
	.string	"ip_pcb"
.LASF245:
	.string	"bytes_acked"
.LASF244:
	.string	"unsent_oversize"
.LASF79:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF35:
	.string	"ERR_MEM"
.LASF50:
	.string	"ERR_ARG"
.LASF32:
	.string	"ip4_addr_t"
.LASF485:
	.string	"recvevent"
.LASF122:
	.string	"iovec"
.LASF87:
	.string	"netmask"
.LASF400:
	.string	"nfds"
.LASF137:
	.string	"imr_multiaddr"
.LASF451:
	.string	"lwip_recvfrom"
.LASF311:
	.string	"LWIP_POLLSCAN_INC_WAIT"
.LASF140:
	.string	"fd_bits"
.LASF187:
	.string	"sem_signalled"
.LASF330:
	.string	"lwip_chksum_copy"
.LASF221:
	.string	"pollinterval"
.LASF401:
	.string	"timeout"
.LASF195:
	.string	"netconn_state"
.LASF54:
	.string	"addr"
.LASF458:
	.string	"copied"
.LASF496:
	.string	"tryget_socket_unconn"
.LASF460:
	.string	"wrote_msg"
.LASF46:
	.string	"ERR_IF"
.LASF10:
	.string	"unsigned int"
.LASF385:
	.string	"saddr"
.LASF356:
	.string	"sys_arch_unprotect"
.LASF409:
	.string	"opts"
.LASF27:
	.string	"u16_t"
.LASF100:
	.string	"acd_list"
.LASF42:
	.string	"ERR_USE"
.LASF302:
	.string	"sock"
.LASF185:
	.string	"poll_fds"
.LASF160:
	.string	"sendevent"
.LASF41:
	.string	"ERR_WOULDBLOCK"
.LASF101:
	.string	"netif_input_fn"
.LASF235:
	.string	"rto_end"
.LASF177:
	.string	"optval"
.LASF325:
	.string	"sys_sem_signal"
.LASF308:
	.string	"select_cb_list"
.LASF480:
	.string	"lwip_accept"
.LASF37:
	.string	"ERR_TIMEOUT"
.LASF254:
	.string	"poll"
.LASF440:
	.string	"offset"
.LASF326:
	.string	"sys_sem_free"
.LASF345:
	.string	"netconn_prepare_delete"
.LASF103:
	.string	"netif_linkoutput_fn"
.LASF227:
	.string	"rtime"
.LASF367:
	.string	"lwip_socket_register_membership"
.LASF298:
	.string	"tcpip_callback_fn"
.LASF278:
	.string	"SYN_RCVD"
.LASF429:
	.string	"lwip_socket"
.LASF405:
	.string	"again"
.LASF176:
	.string	"optname"
.LASF467:
	.string	"truncated"
.LASF102:
	.string	"netif_output_fn"
.LASF300:
	.string	"sockaddr_aligned"
.LASF252:
	.string	"recv"
.LASF453:
	.string	"fromlen"
.LASF199:
	.string	"NETCONN_CONNECT"
.LASF57:
	.string	"tot_len"
.LASF501:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF33:
	.string	"ip_addr_t"
.LASF334:
	.string	"netbuf_alloc"
.LASF273:
	.string	"tcpwnd_size_t"
.LASF14:
	.string	"long double"
.LASF380:
	.string	"lwip_getsockname"
.LASF337:
	.string	"netconn_recv_udp_raw_netbuf_flags"
.LASF441:
	.string	"lwip_send"
.LASF83:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF371:
	.string	"igmp_err"
.LASF51:
	.string	"err_t"
.LASF297:
	.string	"udp_recv_fn"
.LASF462:
	.string	"dbg_fn"
.LASF483:
	.string	"newconn"
.LASF466:
	.string	"fromaddr"
.LASF417:
	.string	"lwip_selscan"
.LASF370:
	.string	"iface"
.LASF413:
	.string	"lwriteset"
.LASF447:
	.string	"datagram_len"
.LASF291:
	.string	"tcp_connected_fn"
.LASF60:
	.string	"if_idx"
.LASF208:
	.string	"NETCONN_JOIN"
.LASF411:
	.string	"maxfdp1"
.LASF415:
	.string	"maxfdp2"
.LASF44:
	.string	"ERR_ISCONN"
.LASF361:
	.string	"size"
.LASF391:
	.string	"has_recvevent"
.LASF9:
	.string	"long long unsigned int"
.LASF62:
	.string	"MEMP_UDP_PCB"
.LASF109:
	.string	"sa_family_t"
.LASF65:
	.string	"MEMP_TCP_SEG"
.LASF22:
	.string	"uint16_t"
.LASF260:
	.string	"persist_backoff"
.LASF332:
	.string	"netconn_send"
.LASF342:
	.string	"netconn_listen_with_backlog"
.LASF70:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF350:
	.string	"netconn_getaddr"
.LASF233:
	.string	"cwnd"
.LASF315:
	.string	"ip4addr_ntoa_r"
.LASF178:
	.string	"optlen"
.LASF249:
	.string	"refused_data"
.LASF205:
	.string	"NETCONN_EVT_SENDMINUS"
.LASF407:
	.string	"select_cb"
.LASF120:
	.string	"sa_data"
.LASF243:
	.string	"snd_queuelen"
.LASF450:
	.string	"lwip_read"
.LASF92:
	.string	"link_callback"
.LASF404:
	.string	"msectimeout"
.LASF80:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF150:
	.string	"SemaphoreHandle_t"
.LASF268:
	.string	"raw_pcb"
.LASF267:
	.string	"recv_arg"
.LASF117:
	.string	"sockaddr"
.LASF73:
	.string	"MEMP_NETDB"
.LASF95:
	.string	"hostname"
.LASF203:
	.string	"NETCONN_EVT_RCVMINUS"
.LASF299:
	.string	"lwip_sock_lastdata"
.LASF246:
	.string	"unsent"
.LASF343:
	.string	"netconn_connect"
.LASF307:
	.string	"select_cb_ctr"
.LASF209:
	.string	"NETCONN_LEAVE"
.LASF433:
	.string	"short_size"
.LASF189:
	.string	"NETCONN_INVALID"
.LASF104:
	.string	"netif_status_callback_fn"
.LASF355:
	.string	"pbuf_free"
.LASF34:
	.string	"ERR_OK"
.LASF265:
	.string	"mcast_ifindex"
.LASF76:
	.string	"MEMP_MAX"
.LASF158:
	.string	"lastdata"
.LASF213:
	.string	"remote_ip"
.LASF107:
	.string	"in_addr"
.LASF29:
	.string	"u32_t"
.LASF171:
	.string	"recv_timeout"
.LASF183:
	.string	"writeset"
.LASF141:
	.string	"nfds_t"
.LASF426:
	.string	"lwip_writev"
.LASF487:
	.string	"free_socket"
.LASF412:
	.string	"lreadset"
.LASF84:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF132:
	.string	"msg_controllen"
.LASF369:
	.string	"ms_long"
.LASF363:
	.string	"lwip_fcntl"
.LASF130:
	.string	"msg_iovlen"
.LASF259:
	.string	"persist_cnt"
.LASF194:
	.string	"NETCONN_RAW"
.LASF448:
	.string	"lwip_recv"
.LASF428:
	.string	"lwip_write"
.LASF431:
	.string	"lwip_sendto"
.LASF125:
	.string	"msg_iovlen_t"
.LASF98:
	.string	"name"
.LASF358:
	.string	"lwip_socket_unregister_membership"
.LASF250:
	.string	"listener"
.LASF154:
	.string	"port"
.LASF74:
	.string	"MEMP_PBUF"
.LASF490:
	.string	"free_socket_locked"
.LASF328:
	.string	"sys_sem_new"
.LASF36:
	.string	"ERR_BUF"
.LASF241:
	.string	"snd_wnd_max"
.LASF312:
	.string	"LWIP_POLLSCAN_DEC_WAIT"
.LASF256:
	.string	"keep_idle"
.LASF129:
	.string	"msg_iov"
.LASF266:
	.string	"mcast_ttl"
.LASF4:
	.string	"short int"
.LASF198:
	.string	"NETCONN_LISTEN"
.LASF423:
	.string	"exceptset_out"
.LASF192:
	.string	"NETCONN_UDPLITE"
.LASF247:
	.string	"unacked"
.LASF455:
	.string	"dbg_s"
.LASF19:
	.string	"int16_t"
.LASF169:
	.string	"callback_arg"
.LASF186:
	.string	"poll_nfds"
.LASF494:
	.string	"tryget_socket"
.LASF255:
	.string	"errf"
.LASF77:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF324:
	.string	"netconn_shutdown"
.LASF128:
	.string	"msg_namelen"
.LASF351:
	.string	"err_to_errno"
.LASF293:
	.string	"accept"
.LASF174:
	.string	"lwip_setgetsockopt_data"
.LASF290:
	.string	"tcp_err_fn"
.LASF374:
	.string	"lwip_setsockopt"
.LASF287:
	.string	"tcp_recv_fn"
.LASF301:
	.string	"lwip_socket_multicast_pair"
.LASF492:
	.string	"accepted"
.LASF196:
	.string	"NETCONN_NONE"
.LASF237:
	.string	"snd_wl1"
.LASF238:
	.string	"snd_wl2"
.LASF139:
	.string	"fd_set"
.LASF275:
	.string	"CLOSED"
.LASF270:
	.string	"socket"
.LASF231:
	.string	"dupacks"
.LASF478:
	.string	"lwip_bind"
.LASF303:
	.string	"if_addr"
.LASF449:
	.string	"lwip_readv"
.LASF28:
	.string	"s16_t"
.LASF347:
	.string	"memcpy"
.LASF229:
	.string	"rtseq"
.LASF437:
	.string	"written"
.LASF257:
	.string	"keep_intvl"
.LASF375:
	.string	"cberr"
.LASF424:
	.string	"lwip_unlink_select_cb"
.LASF159:
	.string	"rcvevent"
.LASF148:
	.string	"QueueHandle_t"
.LASF71:
	.string	"MEMP_IGMP_GROUP"
.LASF31:
	.string	"mem_ptr_t"
.LASF108:
	.string	"s_addr"
.LASF364:
	.string	"op_mode"
.LASF408:
	.string	"lwip_pollscan"
.LASF461:
	.string	"lwip_recv_tcp_from"
.LASF23:
	.string	"uint32_t"
.LASF47:
	.string	"ERR_ABRT"
.LASF305:
	.string	"socket_ipv4_multicast_memberships"
.LASF138:
	.string	"imr_interface"
.LASF210:
	.string	"netconn_callback"
.LASF331:
	.string	"netbuf_free"
.LASF432:
	.string	"tolen"
.LASF323:
	.string	"tcpip_callback"
.LASF390:
	.string	"select_check_waiters"
.LASF167:
	.string	"recvmbox"
.LASF202:
	.string	"NETCONN_EVT_RCVPLUS"
.LASF170:
	.string	"send_timeout"
.LASF335:
	.string	"netconn_write_vectors_partly"
.LASF318:
	.string	"raw_bind_netif"
.LASF5:
	.string	"short unsigned int"
.LASF26:
	.string	"s8_t"
.LASF320:
	.string	"tcp_bind_netif"
.LASF179:
	.string	"completed_sem"
.LASF123:
	.string	"iov_base"
.LASF25:
	.string	"u8_t"
.LASF309:
	.string	"lwip_pollscan_opts"
.LASF94:
	.string	"client_data"
.LASF283:
	.string	"CLOSING"
.LASF242:
	.string	"snd_buf"
.LASF49:
	.string	"ERR_CLSD"
.LASF477:
	.string	"is_tcp"
.LASF240:
	.string	"snd_wnd"
.LASF389:
	.string	"shut_tx"
.LASF403:
	.string	"nready"
.LASF286:
	.string	"tcp_accept_fn"
.LASF378:
	.string	"lwip_getsockopt_callback"
.LASF48:
	.string	"ERR_RST"
.LASF143:
	.string	"events"
.LASF55:
	.string	"next"
.LASF373:
	.string	"data"
.LASF295:
	.string	"tcp_seg"
.LASF253:
	.string	"connected"
.LASF64:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF181:
	.string	"prev"
.LASF146:
	.string	"tv_sec"
.LASF155:
	.string	"toport_chksum"
.LASF377:
	.string	"lwip_sockopt_to_ipopt"
.LASF110:
	.string	"in_port_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/sockets.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
