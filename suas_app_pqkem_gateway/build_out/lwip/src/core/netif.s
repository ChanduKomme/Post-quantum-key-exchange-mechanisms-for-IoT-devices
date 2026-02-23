	.file	"netif.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/netif.c"
	.globl	netif_list
	.section	.sbss.netif_list,"aw",@nobits
	.align	2
	.type	netif_list, @object
	.size	netif_list, 4
netif_list:
	.zero	4
	.globl	netif_default
	.section	.sbss.netif_default,"aw",@nobits
	.align	2
	.type	netif_default, @object
	.size	netif_default, 4
netif_default:
	.zero	4
	.section	.sbss.netif_num,"aw",@nobits
	.type	netif_num, @object
	.size	netif_num, 1
netif_num:
	.zero	1
	.section	.sbss.netif_client_id,"aw",@nobits
	.type	netif_client_id, @object
	.size	netif_client_id, 1
netif_client_id:
	.zero	1
	.section	.text.netif_init,"ax",@progbits
	.align	1
	.globl	netif_init
	.type	netif_init, @function
netif_init:
.LFB6:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/netif.c"
	.loc 1 189 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 216 1
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
	.size	netif_init, .-netif_init
	.section	.text.netif_input,"ax",@progbits
	.align	1
	.globl	netif_input
	.type	netif_input, @function
netif_input:
.LFB7:
	.loc 1 229 1
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
	.loc 1 236 10
	lw	a5,-24(s0)
	lbu	a5,69(a5)
	.loc 1 236 18
	andi	a5,a5,24
	.loc 1 236 6
	beq	a5,zero,.L3
	.loc 1 237 12
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ethernet_input
	mv	a5,a0
	j	.L4
.L3:
	.loc 1 240 12
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ip4_input
	mv	a5,a0
.L4:
	.loc 1 241 1
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
	.size	netif_input, .-netif_input
	.section	.text.netif_add_noaddr,"ax",@progbits
	.align	1
	.globl	netif_add_noaddr
	.type	netif_add_noaddr, @function
netif_add_noaddr:
.LFB8:
	.loc 1 251 1
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
	.loc 1 252 10
	lw	a6,-32(s0)
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	li	a3,0
	li	a2,0
	li	a1,0
	lw	a0,-20(s0)
	call	netif_add
	mv	a5,a0
	.loc 1 257 1
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
.LFE8:
	.size	netif_add_noaddr, .-netif_add_noaddr
	.section	.text.netif_add,"ax",@progbits
	.align	1
	.globl	netif_add
	.type	netif_add, @function
netif_add:
.LFB9:
	.loc 1 292 1
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
	sw	a6,-60(s0)
	.loc 1 306 11
	lw	a5,-36(s0)
	bne	a5,zero,.L8
	.loc 1 306 2 discriminator 1
	li	a5,0
	.loc 1 306 2 is_stmt 0
	j	.L9
.L8:
	.loc 1 307 11 is_stmt 1
	lw	a5,-56(s0)
	bne	a5,zero,.L10
	.loc 1 307 2 discriminator 1
	li	a5,0
	.loc 1 307 2 is_stmt 0
	j	.L9
.L10:
	.loc 1 310 6 is_stmt 1
	lw	a5,-40(s0)
	bne	a5,zero,.L11
	.loc 1 311 12
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
	sw	a5,-40(s0)
.L11:
	.loc 1 313 6
	lw	a5,-44(s0)
	bne	a5,zero,.L12
	.loc 1 314 13
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
	sw	a5,-44(s0)
.L12:
	.loc 1 316 6
	lw	a5,-48(s0)
	bne	a5,zero,.L13
	.loc 1 317 8
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
	sw	a5,-48(s0)
.L13:
	.loc 1 321 28
	lw	a5,-36(s0)
	sw	zero,4(a5)
	.loc 1 322 28
	lw	a5,-36(s0)
	sw	zero,8(a5)
	.loc 1 323 23
	lw	a5,-36(s0)
	sw	zero,12(a5)
	.loc 1 324 17
	lw	a5,-36(s0)
	lui	a4,%hi(netif_null_output_ip4)
	addi	a4,a4,%lo(netif_null_output_ip4)
	sw	a4,20(a5)
	.loc 1 338 14
	lw	a5,-36(s0)
	sh	zero,60(a5)
	.loc 1 339 16
	lw	a5,-36(s0)
	sb	zero,69(a5)
	.loc 1 341 15
	lw	a5,-36(s0)
	addi	a5,a5,40
	.loc 1 341 3
	li	a2,16
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 351 26
	lw	a5,-36(s0)
	sw	zero,28(a5)
	.loc 1 354 24
	lw	a5,-36(s0)
	sw	zero,32(a5)
	.loc 1 357 26
	lw	a5,-36(s0)
	sw	zero,76(a5)
	.loc 1 364 16
	lw	a5,-36(s0)
	lw	a4,-52(s0)
	sw	a4,36(a5)
	.loc 1 365 14
	lui	a5,%hi(netif_num)
	lbu	a4,%lo(netif_num)(a5)
	lw	a5,-36(s0)
	sb	a4,72(a5)
	.loc 1 366 16
	lw	a5,-36(s0)
	lw	a4,-60(s0)
	sw	a4,16(a5)
	.loc 1 369 19
	lw	a5,-36(s0)
	sw	zero,80(a5)
	.loc 1 384 3
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	netif_set_addr
	.loc 1 388 7
	lw	a5,-56(s0)
	lw	a0,-36(s0)
	jalr	a5
.LVL0:
	mv	a5,a0
	.loc 1 388 6 discriminator 1
	beq	a5,zero,.L14
	.loc 1 389 11
	li	a5,0
	j	.L9
.L14:
.LBB2:
	.loc 1 407 16
	lw	a5,-36(s0)
	lbu	a4,72(a5)
	.loc 1 407 10
	li	a5,255
	bne	a4,a5,.L15
	.loc 1 408 20
	lw	a5,-36(s0)
	sb	zero,72(a5)
.L15:
	.loc 1 410 18
	sw	zero,-24(s0)
	.loc 1 411 19
	lui	a5,%hi(netif_list)
	lw	a5,%lo(netif_list)(a5)
	sw	a5,-20(s0)
	.loc 1 411 7
	j	.L16
.L19:
	.loc 1 413 19
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 1 415 19
	lw	a5,-20(s0)
	lbu	a4,72(a5)
	.loc 1 415 33
	lw	a5,-36(s0)
	lbu	a5,72(a5)
	.loc 1 415 12
	bne	a4,a5,.L17
	.loc 1 416 16
	lw	a5,-36(s0)
	lbu	a5,72(a5)
	.loc 1 416 21
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	sb	a4,72(a5)
	.loc 1 417 11
	j	.L18
.L17:
	.loc 1 411 55 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L16:
	.loc 1 411 40 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L19
.L18:
	.loc 1 420 21
	lw	a5,-20(s0)
	bne	a5,zero,.L14
.LBE2:
	.loc 1 422 12
	lw	a5,-36(s0)
	lbu	a4,72(a5)
	.loc 1 422 6
	li	a5,254
	bne	a4,a5,.L20
	.loc 1 423 15
	lui	a5,%hi(netif_num)
	sb	zero,%lo(netif_num)(a5)
	j	.L21
.L20:
	.loc 1 425 29
	lw	a5,-36(s0)
	lbu	a5,72(a5)
	.loc 1 425 17
	addi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 425 15
	lui	a5,%hi(netif_num)
	sb	a4,%lo(netif_num)(a5)
.L21:
	.loc 1 429 15
	lui	a5,%hi(netif_list)
	lw	a4,%lo(netif_list)(a5)
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 430 14
	lui	a5,%hi(netif_list)
	lw	a4,-36(s0)
	sw	a4,%lo(netif_list)(a5)
	.loc 1 436 12
	lw	a5,-36(s0)
	lbu	a5,69(a5)
	.loc 1 436 20
	andi	a5,a5,32
	.loc 1 436 6
	beq	a5,zero,.L22
	.loc 1 437 5
	lw	a0,-36(s0)
	call	igmp_start
.L22:
	.loc 1 455 10
	lw	a5,-36(s0)
.L9:
	.loc 1 456 1
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
.LFE9:
	.size	netif_add, .-netif_add
	.section	.text.netif_do_ip_addr_changed,"ax",@progbits
	.align	1
	.type	netif_do_ip_addr_changed, @function
netif_do_ip_addr_changed:
.LFB10:
	.loc 1 460 1
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
	.loc 1 462 3
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	tcp_netif_ip_addr_changed
	.loc 1 465 3
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	udp_netif_ip_addr_changed
	.loc 1 468 3
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	raw_netif_ip_addr_changed
	.loc 1 470 1
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
	.size	netif_do_ip_addr_changed, .-netif_do_ip_addr_changed
	.section	.text.netif_do_set_ipaddr,"ax",@progbits
	.align	1
	.type	netif_do_set_ipaddr, @function
netif_do_set_ipaddr:
.LFB11:
	.loc 1 475 1
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
	.loc 1 480 16
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 1 480 48
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 480 70
	lw	a5,0(a5)
	.loc 1 480 6
	beq	a4,a5,.L25
.LBB3:
	.loc 1 482 18
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 485 46
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 485 67
	lw	a4,0(a5)
	.loc 1 485 23
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 1 488 5
	addi	a5,s0,-20
	mv	a1,a5
	lw	a0,-44(s0)
	call	netif_do_ip_addr_changed
	.loc 1 491 5
	addi	a5,s0,-20
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	acd_netif_ip_addr_changed
	.loc 1 497 8
	lw	a5,-40(s0)
	beq	a5,zero,.L26
	.loc 1 497 8 is_stmt 0 discriminator 1
	lw	a5,-40(s0)
	lw	a5,0(a5)
	j	.L27
.L26:
	.loc 1 497 8 discriminator 2
	li	a5,0
.L27:
	.loc 1 497 32 is_stmt 1 discriminator 4
	lw	a4,-36(s0)
	sw	a5,4(a4)
	.loc 1 502 5
	li	a1,1
	lw	a0,-36(s0)
	call	netif_issue_reports
	.loc 1 504 18
	lw	a5,-36(s0)
	lw	a5,28(a5)
	.loc 1 504 12
	beq	a5,zero,.L28
	.loc 1 504 45 discriminator 1
	lw	a5,-36(s0)
	lw	a5,28(a5)
	lw	a0,-36(s0)
	jalr	a5
.LVL1:
.L28:
	.loc 1 505 12
	li	a5,1
	j	.L29
.L25:
.LBE3:
	.loc 1 507 10
	li	a5,0
.L29:
	.loc 1 508 1
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
	.size	netif_do_set_ipaddr, .-netif_do_set_ipaddr
	.section	.text.netif_set_ipaddr,"ax",@progbits
	.align	1
	.globl	netif_set_ipaddr
	.type	netif_set_ipaddr, @function
netif_set_ipaddr:
.LFB12:
	.loc 1 522 1
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
	.loc 1 525 11
	lw	a5,-36(s0)
	beq	a5,zero,.L35
	.loc 1 528 6
	lw	a5,-40(s0)
	bne	a5,zero,.L33
	.loc 1 529 12
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
	sw	a5,-40(s0)
.L33:
	.loc 1 534 7
	addi	a5,s0,-20
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	netif_do_set_ipaddr
	j	.L30
.L35:
	.loc 1 525 9
	nop
.L30:
	.loc 1 541 1
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
	.size	netif_set_ipaddr, .-netif_set_ipaddr
	.section	.text.netif_do_set_netmask,"ax",@progbits
	.align	1
	.type	netif_do_set_netmask, @function
netif_do_set_netmask:
.LFB13:
	.loc 1 545 1
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
	.loc 1 547 17
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 1 547 49
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 1 547 71
	lw	a5,0(a5)
	.loc 1 547 6
	beq	a4,a5,.L37
	.loc 1 556 8
	lw	a5,-24(s0)
	beq	a5,zero,.L38
	.loc 1 556 8 is_stmt 0 discriminator 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	j	.L39
.L38:
	.loc 1 556 8 discriminator 2
	li	a5,0
.L39:
	.loc 1 556 32 is_stmt 1 discriminator 4
	lw	a4,-20(s0)
	sw	a5,8(a4)
	.loc 1 565 12
	li	a5,1
	j	.L40
.L37:
	.loc 1 567 10
	li	a5,0
.L40:
	.loc 1 568 1
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
	.size	netif_do_set_netmask, .-netif_do_set_netmask
	.section	.text.netif_set_netmask,"ax",@progbits
	.align	1
	.globl	netif_set_netmask
	.type	netif_set_netmask, @function
netif_set_netmask:
.LFB14:
	.loc 1 582 1
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
	.loc 1 587 14
	sw	zero,-20(s0)
	.loc 1 591 11
	lw	a5,-36(s0)
	beq	a5,zero,.L45
	.loc 1 594 6
	lw	a5,-40(s0)
	bne	a5,zero,.L44
	.loc 1 595 13
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
	sw	a5,-40(s0)
.L44:
	.loc 1 598 7
	lw	a2,-20(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	netif_do_set_netmask
	j	.L41
.L45:
	.loc 1 591 9
	nop
.L41:
	.loc 1 605 1
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
	.size	netif_set_netmask, .-netif_set_netmask
	.section	.text.netif_do_set_gw,"ax",@progbits
	.align	1
	.type	netif_do_set_gw, @function
netif_do_set_gw:
.LFB15:
	.loc 1 609 1
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
	.loc 1 611 12
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 1 611 44
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 611 61
	lw	a5,0(a5)
	.loc 1 611 6
	beq	a4,a5,.L47
	.loc 1 619 8
	lw	a5,-24(s0)
	beq	a5,zero,.L48
	.loc 1 619 8 is_stmt 0 discriminator 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	j	.L49
.L48:
	.loc 1 619 8 discriminator 2
	li	a5,0
.L49:
	.loc 1 619 27 is_stmt 1 discriminator 4
	lw	a4,-20(s0)
	sw	a5,12(a4)
	.loc 1 627 12
	li	a5,1
	j	.L50
.L47:
	.loc 1 629 10
	li	a5,0
.L50:
	.loc 1 630 1
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
	.size	netif_do_set_gw, .-netif_do_set_gw
	.section	.text.netif_set_gw,"ax",@progbits
	.align	1
	.globl	netif_set_gw
	.type	netif_set_gw, @function
netif_set_gw:
.LFB16:
	.loc 1 643 1
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
	.loc 1 648 14
	sw	zero,-20(s0)
	.loc 1 652 11
	lw	a5,-36(s0)
	beq	a5,zero,.L55
	.loc 1 655 6
	lw	a5,-40(s0)
	bne	a5,zero,.L54
	.loc 1 656 8
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
	sw	a5,-40(s0)
.L54:
	.loc 1 659 7
	lw	a2,-20(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	netif_do_set_gw
	j	.L51
.L55:
	.loc 1 652 9
	nop
.L51:
	.loc 1 666 1
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
	.size	netif_set_gw, .-netif_set_gw
	.section	.text.netif_set_addr,"ax",@progbits
	.align	1
	.globl	netif_set_addr
	.type	netif_set_addr, @function
netif_set_addr:
.LFB17:
	.loc 1 681 1
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
	.loc 1 690 14
	sw	zero,-20(s0)
	.loc 1 691 14
	sw	zero,-24(s0)
	.loc 1 699 6
	lw	a5,-40(s0)
	bne	a5,zero,.L57
	.loc 1 700 12
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
	sw	a5,-40(s0)
.L57:
	.loc 1 702 6
	lw	a5,-44(s0)
	bne	a5,zero,.L58
	.loc 1 703 13
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
	sw	a5,-44(s0)
.L58:
	.loc 1 705 6
	lw	a5,-48(s0)
	bne	a5,zero,.L59
	.loc 1 706 8
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
	sw	a5,-48(s0)
.L59:
	.loc 1 709 11
	lw	a5,-40(s0)
	beq	a5,zero,.L60
	.loc 1 709 26 discriminator 2
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 709 11 discriminator 2
	bne	a5,zero,.L61
.L60:
	.loc 1 709 11 is_stmt 0 discriminator 3
	li	a5,1
	.loc 1 709 11
	j	.L62
.L61:
	.loc 1 709 11 discriminator 4
	li	a5,0
.L62:
	.loc 1 709 10 is_stmt 1 discriminator 6
	sw	a5,-28(s0)
	.loc 1 710 6
	lw	a5,-28(s0)
	beq	a5,zero,.L63
	.loc 1 713 9
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	netif_do_set_ipaddr
.L63:
	.loc 1 720 7
	lw	a2,-20(s0)
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	netif_do_set_netmask
	.loc 1 726 7
	lw	a2,-24(s0)
	lw	a1,-48(s0)
	lw	a0,-36(s0)
	call	netif_do_set_gw
	.loc 1 732 6
	lw	a5,-28(s0)
	bne	a5,zero,.L65
	.loc 1 734 9
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	netif_do_set_ipaddr
.L65:
	.loc 1 754 1
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
	.size	netif_set_addr, .-netif_set_addr
	.section	.text.netif_remove,"ax",@progbits
	.align	1
	.globl	netif_remove
	.type	netif_remove, @function
netif_remove:
.LFB18:
	.loc 1 765 1
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
	.loc 1 772 6
	lw	a5,-36(s0)
	beq	a5,zero,.L78
	.loc 1 779 32
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 779 54
	lw	a5,0(a5)
	.loc 1 779 6
	beq	a5,zero,.L69
	.loc 1 780 49
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 780 5
	li	a1,0
	mv	a0,a5
	call	netif_do_ip_addr_changed
.L69:
	.loc 1 785 12
	lw	a5,-36(s0)
	lbu	a5,69(a5)
	.loc 1 785 20
	andi	a5,a5,32
	.loc 1 785 6
	beq	a5,zero,.L70
	.loc 1 786 5
	lw	a0,-36(s0)
	call	igmp_stop
.L70:
	.loc 1 802 16
	lw	a5,-36(s0)
	lbu	a5,69(a5)
	.loc 1 802 7
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 802 6
	beq	a5,zero,.L71
	.loc 1 804 5
	lw	a0,-36(s0)
	call	netif_set_down
.L71:
	.loc 1 810 21
	lui	a5,%hi(netif_default)
	lw	a5,%lo(netif_default)(a5)
	.loc 1 810 6
	lw	a4,-36(s0)
	bne	a4,a5,.L72
	.loc 1 812 5
	li	a0,0
	call	netif_set_default
.L72:
	.loc 1 816 18
	lui	a5,%hi(netif_list)
	lw	a5,%lo(netif_list)(a5)
	.loc 1 816 6
	lw	a4,-36(s0)
	bne	a4,a5,.L73
	.loc 1 817 23
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 817 16
	lui	a5,%hi(netif_list)
	sw	a4,%lo(netif_list)(a5)
	j	.L66
.L73:
.LBB4:
	.loc 1 821 22
	lui	a5,%hi(netif_list)
	lw	a5,%lo(netif_list)(a5)
	sw	a5,-20(s0)
	.loc 1 821 5
	j	.L74
.L77:
	.loc 1 822 20
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 822 10
	lw	a4,-36(s0)
	bne	a4,a5,.L75
	.loc 1 823 32
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 823 25
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 824 9
	j	.L66
.L75:
	.loc 1 821 18 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L74:
	.loc 1 821 48 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L77
	j	.L66
.L78:
.LBE4:
	.loc 1 773 5
	nop
.L66:
	.loc 1 839 1
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
	.size	netif_remove, .-netif_remove
	.section	.text.netif_set_default,"ax",@progbits
	.align	1
	.globl	netif_set_default
	.type	netif_set_default, @function
netif_set_default:
.LFB19:
	.loc 1 850 1
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
	.loc 1 860 17
	lui	a5,%hi(netif_default)
	lw	a4,-20(s0)
	sw	a4,%lo(netif_default)(a5)
	.loc 1 863 1
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
	.size	netif_set_default, .-netif_set_default
	.section	.text.netif_set_up,"ax",@progbits
	.align	1
	.globl	netif_set_up
	.type	netif_set_up, @function
netif_set_up:
.LFB20:
	.loc 1 872 1
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
	.loc 1 875 11
	lw	a5,-20(s0)
	beq	a5,zero,.L84
	.loc 1 877 14
	lw	a5,-20(s0)
	lbu	a5,69(a5)
	.loc 1 877 22
	andi	a5,a5,1
	.loc 1 877 6
	bne	a5,zero,.L80
	.loc 1 878 41
	lw	a5,-20(s0)
	lbu	a5,69(a5)
	.loc 1 878 27
	ori	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 878 25
	lw	a5,-20(s0)
	sb	a4,69(a5)
	.loc 1 882 18
	lw	a5,-20(s0)
	lw	a5,28(a5)
	.loc 1 882 12
	beq	a5,zero,.L83
	.loc 1 882 45 discriminator 1
	lw	a5,-20(s0)
	lw	a5,28(a5)
	lw	a0,-20(s0)
	jalr	a5
.LVL2:
.L83:
	.loc 1 892 5
	li	a1,3
	lw	a0,-20(s0)
	call	netif_issue_reports
	j	.L80
.L84:
	.loc 1 875 9
	nop
.L80:
	.loc 1 897 1
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
	.size	netif_set_up, .-netif_set_up
	.section	.text.netif_issue_reports,"ax",@progbits
	.align	1
	.type	netif_issue_reports, @function
netif_issue_reports:
.LFB21:
	.loc 1 903 1
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
	.loc 1 907 14
	lw	a5,-20(s0)
	lbu	a5,69(a5)
	.loc 1 907 22
	andi	a5,a5,4
	.loc 1 907 6
	beq	a5,zero,.L89
	.loc 1 908 14
	lw	a5,-20(s0)
	lbu	a5,69(a5)
	.loc 1 908 22
	andi	a5,a5,1
	.loc 1 907 31 discriminator 1
	beq	a5,zero,.L89
	.loc 1 913 20
	lbu	a5,-21(s0)
	andi	a5,a5,1
	.loc 1 913 6
	beq	a5,zero,.L85
	.loc 1 914 32
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 914 54
	lw	a5,0(a5)
	.loc 1 913 28 discriminator 1
	beq	a5,zero,.L85
	.loc 1 927 14
	lw	a5,-20(s0)
	lbu	a5,69(a5)
	.loc 1 927 22
	andi	a5,a5,32
	.loc 1 927 8
	beq	a5,zero,.L85
	.loc 1 928 7
	lw	a0,-20(s0)
	call	igmp_report_groups
	j	.L85
.L89:
	.loc 1 909 5
	nop
.L85:
	.loc 1 942 1
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
	.size	netif_issue_reports, .-netif_issue_reports
	.section	.text.netif_set_down,"ax",@progbits
	.align	1
	.globl	netif_set_down
	.type	netif_set_down, @function
netif_set_down:
.LFB22:
	.loc 1 950 1
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
	.loc 1 953 11
	lw	a5,-20(s0)
	beq	a5,zero,.L94
	.loc 1 955 12
	lw	a5,-20(s0)
	lbu	a5,69(a5)
	.loc 1 955 20
	andi	a5,a5,1
	.loc 1 955 6
	beq	a5,zero,.L90
	.loc 1 964 41
	lw	a5,-20(s0)
	lbu	a5,69(a5)
	.loc 1 964 27
	andi	a5,a5,-2
	andi	a4,a5,0xff
	.loc 1 964 25
	lw	a5,-20(s0)
	sb	a4,69(a5)
	.loc 1 968 14
	lw	a5,-20(s0)
	lbu	a5,69(a5)
	.loc 1 968 22
	andi	a5,a5,8
	.loc 1 968 8
	beq	a5,zero,.L93
	.loc 1 969 7
	lw	a0,-20(s0)
	call	etharp_cleanup_netif
.L93:
	.loc 1 977 18
	lw	a5,-20(s0)
	lw	a5,28(a5)
	.loc 1 977 12
	beq	a5,zero,.L90
	.loc 1 977 45 discriminator 1
	lw	a5,-20(s0)
	lw	a5,28(a5)
	lw	a0,-20(s0)
	jalr	a5
.LVL3:
	j	.L90
.L94:
	.loc 1 953 9
	nop
.L90:
	.loc 1 979 1
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
	.size	netif_set_down, .-netif_set_down
	.section	.text.netif_set_status_callback,"ax",@progbits
	.align	1
	.globl	netif_set_status_callback
	.type	netif_set_status_callback, @function
netif_set_status_callback:
.LFB23:
	.loc 1 988 1
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
	.loc 1 991 6
	lw	a5,-20(s0)
	beq	a5,zero,.L97
	.loc 1 992 28
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,28(a5)
.L97:
	.loc 1 994 1
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
	.size	netif_set_status_callback, .-netif_set_status_callback
	.section	.text.netif_set_link_up,"ax",@progbits
	.align	1
	.globl	netif_set_link_up
	.type	netif_set_link_up, @function
netif_set_link_up:
.LFB24:
	.loc 1 1019 1
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
	.loc 1 1022 11
	lw	a5,-20(s0)
	beq	a5,zero,.L101
	.loc 1 1024 14
	lw	a5,-20(s0)
	lbu	a5,69(a5)
	.loc 1 1024 22
	andi	a5,a5,4
	.loc 1 1024 6
	bne	a5,zero,.L98
	.loc 1 1025 41
	lw	a5,-20(s0)
	lbu	a5,69(a5)
	.loc 1 1025 27
	ori	a5,a5,4
	andi	a4,a5,0xff
	.loc 1 1025 25
	lw	a5,-20(s0)
	sb	a4,69(a5)
	.loc 1 1028 5
	lw	a0,-20(s0)
	call	dhcp_network_changed_link_up
	.loc 1 1035 5
	li	a1,3
	lw	a0,-20(s0)
	call	netif_issue_reports
	.loc 1 1040 18
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 1040 12
	beq	a5,zero,.L98
	.loc 1 1040 43 discriminator 1
	lw	a5,-20(s0)
	lw	a5,32(a5)
	lw	a0,-20(s0)
	jalr	a5
.LVL4:
	j	.L98
.L101:
	.loc 1 1022 9
	nop
.L98:
	.loc 1 1049 1
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
	.size	netif_set_link_up, .-netif_set_link_up
	.section	.text.netif_set_link_down,"ax",@progbits
	.align	1
	.globl	netif_set_link_down
	.type	netif_set_link_down, @function
netif_set_link_down:
.LFB25:
	.loc 1 1057 1
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
	.loc 1 1060 11
	lw	a5,-20(s0)
	beq	a5,zero,.L105
	.loc 1 1062 12
	lw	a5,-20(s0)
	lbu	a5,69(a5)
	.loc 1 1062 20
	andi	a5,a5,4
	.loc 1 1062 6
	beq	a5,zero,.L102
	.loc 1 1063 41
	lw	a5,-20(s0)
	lbu	a5,69(a5)
	.loc 1 1063 27
	andi	a5,a5,-5
	andi	a4,a5,0xff
	.loc 1 1063 25
	lw	a5,-20(s0)
	sb	a4,69(a5)
	.loc 1 1070 5
	lw	a0,-20(s0)
	call	acd_network_changed_link_down
	.loc 1 1077 18
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 1077 12
	beq	a5,zero,.L102
	.loc 1 1077 43 discriminator 1
	lw	a5,-20(s0)
	lw	a5,32(a5)
	lw	a0,-20(s0)
	jalr	a5
.LVL5:
	j	.L102
.L105:
	.loc 1 1060 9
	nop
.L102:
	.loc 1 1086 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	netif_set_link_down, .-netif_set_link_down
	.section	.text.netif_set_link_callback,"ax",@progbits
	.align	1
	.globl	netif_set_link_callback
	.type	netif_set_link_callback, @function
netif_set_link_callback:
.LFB26:
	.loc 1 1095 1
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
	.loc 1 1098 6
	lw	a5,-20(s0)
	beq	a5,zero,.L108
	.loc 1 1099 26
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,32(a5)
.L108:
	.loc 1 1101 1
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
.LFE26:
	.size	netif_set_link_callback, .-netif_set_link_callback
	.section	.text.netif_alloc_client_data_id,"ax",@progbits
	.align	1
	.globl	netif_alloc_client_data_id
	.type	netif_alloc_client_data_id, @function
netif_alloc_client_data_id:
.LFB27:
	.loc 1 1342 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1343 8
	lui	a5,%hi(netif_client_id)
	lbu	a5,%lo(netif_client_id)(a5)
	sb	a5,-17(s0)
	.loc 1 1344 18
	lui	a5,%hi(netif_client_id)
	lbu	a5,%lo(netif_client_id)(a5)
	addi	a5,a5,1
	andi	a4,a5,0xff
	lui	a5,%hi(netif_client_id)
	sb	a4,%lo(netif_client_id)(a5)
	.loc 1 1352 10
	lbu	a5,-17(s0)
	addi	a5,a5,3
	andi	a5,a5,0xff
	.loc 1 1353 1
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
.LFE27:
	.size	netif_alloc_client_data_id, .-netif_alloc_client_data_id
	.section	.text.netif_null_output_ip4,"ax",@progbits
	.align	1
	.type	netif_null_output_ip4, @function
netif_null_output_ip4:
.LFB28:
	.loc 1 1674 1
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
	.loc 1 1679 10
	li	a5,-12
	.loc 1 1680 1
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
	.size	netif_null_output_ip4, .-netif_null_output_ip4
	.section	.text.netif_name_to_index,"ax",@progbits
	.align	1
	.globl	netif_name_to_index
	.type	netif_name_to_index, @function
netif_name_to_index:
.LFB29:
	.loc 1 1692 1
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
	.loc 1 1693 25
	lw	a0,-36(s0)
	call	netif_find
	sw	a0,-20(s0)
	.loc 1 1694 6
	lw	a5,-20(s0)
	beq	a5,zero,.L114
	.loc 1 1695 27
	lw	a5,-20(s0)
	lbu	a5,72(a5)
	.loc 1 1695 13
	addi	a5,a5,1
	andi	a5,a5,0xff
	j	.L115
.L114:
	.loc 1 1698 10
	li	a5,0
.L115:
	.loc 1 1699 1
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
	.size	netif_name_to_index, .-netif_name_to_index
	.section	.text.netif_index_to_name,"ax",@progbits
	.align	1
	.globl	netif_index_to_name
	.type	netif_index_to_name, @function
netif_index_to_name:
.LFB30:
	.loc 1 1711 1
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
	.loc 1 1712 25
	lbu	a5,-33(s0)
	mv	a0,a5
	call	netif_get_by_index
	sw	a0,-20(s0)
	.loc 1 1714 6
	lw	a5,-20(s0)
	beq	a5,zero,.L117
	.loc 1 1715 26
	lw	a5,-20(s0)
	lbu	a4,70(a5)
	.loc 1 1715 13
	lw	a5,-40(s0)
	sb	a4,0(a5)
	.loc 1 1716 9
	lw	a5,-40(s0)
	addi	a5,a5,1
	.loc 1 1716 26
	lw	a4,-20(s0)
	lbu	a4,71(a4)
	.loc 1 1716 13
	sb	a4,0(a5)
	.loc 1 1717 5
	lw	a5,-40(s0)
	addi	a4,a5,2
	lbu	a5,-33(s0)
	addi	a5,a5,-1
	mv	a2,a5
	li	a1,4
	mv	a0,a4
	call	lwip_itoa
	.loc 1 1718 12
	lw	a5,-40(s0)
	j	.L118
.L117:
	.loc 1 1720 9
	li	a5,0
.L118:
	.loc 1 1721 1
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
.LFE30:
	.size	netif_index_to_name, .-netif_index_to_name
	.section	.text.netif_get_by_index,"ax",@progbits
	.align	1
	.globl	netif_get_by_index
	.type	netif_get_by_index, @function
netif_get_by_index:
.LFB31:
	.loc 1 1731 1
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
	.loc 1 1736 6
	lbu	a5,-33(s0)
	beq	a5,zero,.L120
	.loc 1 1737 18
	lui	a5,%hi(netif_list)
	lw	a5,%lo(netif_list)(a5)
	sw	a5,-20(s0)
	.loc 1 1737 5
	j	.L121
.L124:
	.loc 1 1738 33
	lw	a5,-20(s0)
	lbu	a5,72(a5)
	.loc 1 1738 19
	addi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1738 10
	lbu	a4,-33(s0)
	bne	a4,a5,.L122
	.loc 1 1739 16
	lw	a5,-20(s0)
	j	.L123
.L122:
	.loc 1 1737 14 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L121:
	.loc 1 1737 40 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L124
.L120:
	.loc 1 1744 9
	li	a5,0
.L123:
	.loc 1 1745 1
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
	.size	netif_get_by_index, .-netif_get_by_index
	.section	.text.netif_find,"ax",@progbits
	.align	1
	.globl	netif_find
	.type	netif_find, @function
netif_find:
.LFB32:
	.loc 1 1756 1
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
	.loc 1 1762 6
	lw	a5,-36(s0)
	bne	a5,zero,.L126
	.loc 1 1763 11
	li	a5,0
	j	.L127
.L126:
	.loc 1 1766 15
	lw	a5,-36(s0)
	addi	a5,a5,2
	mv	a0,a5
	call	atoi
	mv	a5,a0
	.loc 1 1766 7 discriminator 1
	sb	a5,-21(s0)
	.loc 1 1767 6
	lbu	a5,-21(s0)
	bne	a5,zero,.L128
	.loc 1 1767 20 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,2
	lbu	a4,0(a5)
	.loc 1 1767 12 discriminator 1
	li	a5,48
	beq	a4,a5,.L128
	.loc 1 1769 11
	li	a5,0
	j	.L127
.L128:
	.loc 1 1772 16
	lui	a5,%hi(netif_list)
	lw	a5,%lo(netif_list)(a5)
	sw	a5,-20(s0)
	.loc 1 1772 3
	j	.L129
.L131:
	.loc 1 1773 21
	lw	a5,-20(s0)
	lbu	a5,72(a5)
	.loc 1 1773 8
	lbu	a4,-21(s0)
	bne	a4,a5,.L130
	.loc 1 1774 13
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 1 1774 31
	lw	a5,-20(s0)
	lbu	a5,70(a5)
	.loc 1 1773 27 discriminator 1
	bne	a4,a5,.L130
	.loc 1 1775 13
	lw	a5,-36(s0)
	addi	a5,a5,1
	lbu	a4,0(a5)
	.loc 1 1775 31
	lw	a5,-20(s0)
	lbu	a5,71(a5)
	.loc 1 1774 35
	bne	a4,a5,.L130
	.loc 1 1777 14
	lw	a5,-20(s0)
	j	.L127
.L130:
	.loc 1 1772 12 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L129:
	.loc 1 1772 38 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L131
	.loc 1 1781 9
	li	a5,0
.L127:
	.loc 1 1782 1
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
	.size	netif_find, .-netif_find
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/acd.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/acd.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/def.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/dhcp.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/etharp.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/igmp.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/raw_priv.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/udp.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/tcp_priv.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 22 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4.h"
	.file 23 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/netif/ethernet.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe87
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x25
	.4byte	.LASF173
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
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x27
	.byte	0x4
	.uleb128 0x8
	.4byte	0x8b
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x13
	.4byte	0x8b
	.uleb128 0x8
	.4byte	0x92
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x32
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x47
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xa8
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0x9c
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xb4
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xc0
	.uleb128 0x1c
	.4byte	.LASF42
	.byte	0x4
	.byte	0x5
	.byte	0x33
	.4byte	0x116
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x5
	.byte	0x34
	.byte	0x9
	.4byte	0xf0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x39
	.byte	0x19
	.4byte	0xfc
	.uleb128 0x13
	.4byte	0x116
	.uleb128 0x28
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x126
	.byte	0x14
	.4byte	0x116
	.uleb128 0x13
	.4byte	0x127
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x18e
	.byte	0x18
	.4byte	0x134
	.uleb128 0x10
	.byte	0x5
	.4byte	0x32
	.byte	0x7
	.byte	0x35
	.4byte	0x1b9
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF25
	.sleb128 -1
	.uleb128 0x6
	.4byte	.LASF26
	.sleb128 -2
	.uleb128 0x6
	.4byte	.LASF27
	.sleb128 -3
	.uleb128 0x6
	.4byte	.LASF28
	.sleb128 -4
	.uleb128 0x6
	.4byte	.LASF29
	.sleb128 -5
	.uleb128 0x6
	.4byte	.LASF30
	.sleb128 -6
	.uleb128 0x6
	.4byte	.LASF31
	.sleb128 -7
	.uleb128 0x6
	.4byte	.LASF32
	.sleb128 -8
	.uleb128 0x6
	.4byte	.LASF33
	.sleb128 -9
	.uleb128 0x6
	.4byte	.LASF34
	.sleb128 -10
	.uleb128 0x6
	.4byte	.LASF35
	.sleb128 -11
	.uleb128 0x6
	.4byte	.LASF36
	.sleb128 -12
	.uleb128 0x6
	.4byte	.LASF37
	.sleb128 -13
	.uleb128 0x6
	.4byte	.LASF38
	.sleb128 -14
	.uleb128 0x6
	.4byte	.LASF39
	.sleb128 -15
	.uleb128 0x6
	.4byte	.LASF40
	.sleb128 -16
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x7
	.byte	0x60
	.byte	0xe
	.4byte	0xd8
	.uleb128 0x1c
	.4byte	.LASF43
	.byte	0x10
	.byte	0x8
	.byte	0xba
	.4byte	0x23a
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x8
	.byte	0xbc
	.byte	0x10
	.4byte	0x23a
	.byte	0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x8
	.byte	0xbf
	.byte	0x9
	.4byte	0x84
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x8
	.byte	0xc8
	.byte	0x9
	.4byte	0xe4
	.byte	0x8
	.uleb128 0x15
	.string	"len"
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0xe4
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x8
	.byte	0xd0
	.byte	0x8
	.4byte	0xcc
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x8
	.byte	0xd3
	.byte	0x8
	.4byte	0xcc
	.byte	0xd
	.uleb128 0x15
	.string	"ref"
	.byte	0x8
	.byte	0xda
	.byte	0x8
	.4byte	0xcc
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x8
	.byte	0xdd
	.byte	0x8
	.4byte	0xcc
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x1c5
	.uleb128 0x10
	.byte	0x7
	.4byte	0x39
	.byte	0x9
	.byte	0x34
	.4byte	0x2ac
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xf
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF71
	.4byte	0x39
	.byte	0x71
	.4byte	0x2d3
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x3
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF72
	.4byte	0x39
	.byte	0x9f
	.4byte	0x2ee
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0xa
	.byte	0xab
	.byte	0x11
	.4byte	0x2fa
	.uleb128 0x8
	.4byte	0x2ff
	.uleb128 0xf
	.4byte	0x1b9
	.4byte	0x30e
	.uleb128 0x2
	.4byte	0x30e
	.byte	0
	.uleb128 0x8
	.4byte	0x313
	.uleb128 0x29
	.4byte	.LASF76
	.byte	0x54
	.byte	0xa
	.2byte	0x10d
	.byte	0x8
	.4byte	0x425
	.uleb128 0x5
	.4byte	.LASF45
	.2byte	0x110
	.byte	0x11
	.4byte	0x30e
	.byte	0
	.uleb128 0x5
	.4byte	.LASF77
	.2byte	0x115
	.byte	0xd
	.4byte	0x127
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF78
	.2byte	0x116
	.byte	0xd
	.4byte	0x127
	.byte	0x8
	.uleb128 0x16
	.string	"gw"
	.2byte	0x117
	.byte	0xd
	.4byte	0x127
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF79
	.2byte	0x129
	.byte	0x12
	.4byte	0x425
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF80
	.2byte	0x12f
	.byte	0x13
	.4byte	0x44a
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF81
	.2byte	0x134
	.byte	0x17
	.4byte	0x479
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF82
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x49e
	.byte	0x1c
	.uleb128 0x5
	.4byte	.LASF83
	.2byte	0x144
	.byte	0x1c
	.4byte	0x49e
	.byte	0x20
	.uleb128 0x5
	.4byte	.LASF84
	.2byte	0x14c
	.byte	0x9
	.4byte	0x84
	.byte	0x24
	.uleb128 0x5
	.4byte	.LASF85
	.2byte	0x14e
	.byte	0x9
	.4byte	0x4e4
	.byte	0x28
	.uleb128 0x5
	.4byte	.LASF86
	.2byte	0x152
	.byte	0xf
	.4byte	0x97
	.byte	0x38
	.uleb128 0x16
	.string	"mtu"
	.2byte	0x158
	.byte	0x9
	.4byte	0xe4
	.byte	0x3c
	.uleb128 0x5
	.4byte	.LASF87
	.2byte	0x15e
	.byte	0x8
	.4byte	0x4f4
	.byte	0x3e
	.uleb128 0x5
	.4byte	.LASF88
	.2byte	0x160
	.byte	0x8
	.4byte	0xcc
	.byte	0x44
	.uleb128 0x5
	.4byte	.LASF49
	.2byte	0x162
	.byte	0x8
	.4byte	0xcc
	.byte	0x45
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x164
	.byte	0x8
	.4byte	0x504
	.byte	0x46
	.uleb128 0x16
	.string	"num"
	.2byte	0x167
	.byte	0x8
	.4byte	0xcc
	.byte	0x48
	.uleb128 0x5
	.4byte	.LASF90
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x4ba
	.byte	0x4c
	.uleb128 0x5
	.4byte	.LASF91
	.2byte	0x185
	.byte	0xf
	.4byte	0x58a
	.byte	0x50
	.byte	0
	.uleb128 0x4
	.4byte	.LASF92
	.byte	0xa
	.byte	0xb5
	.byte	0x11
	.4byte	0x431
	.uleb128 0x8
	.4byte	0x436
	.uleb128 0xf
	.4byte	0x1b9
	.4byte	0x44a
	.uleb128 0x2
	.4byte	0x23a
	.uleb128 0x2
	.4byte	0x30e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF93
	.byte	0xa
	.byte	0xc0
	.byte	0x11
	.4byte	0x456
	.uleb128 0x8
	.4byte	0x45b
	.uleb128 0xf
	.4byte	0x1b9
	.4byte	0x474
	.uleb128 0x2
	.4byte	0x30e
	.uleb128 0x2
	.4byte	0x23a
	.uleb128 0x2
	.4byte	0x474
	.byte	0
	.uleb128 0x8
	.4byte	0x122
	.uleb128 0x4
	.4byte	.LASF94
	.byte	0xa
	.byte	0xd7
	.byte	0x11
	.4byte	0x485
	.uleb128 0x8
	.4byte	0x48a
	.uleb128 0xf
	.4byte	0x1b9
	.4byte	0x49e
	.uleb128 0x2
	.4byte	0x30e
	.uleb128 0x2
	.4byte	0x23a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF95
	.byte	0xa
	.byte	0xd9
	.byte	0x10
	.4byte	0x4aa
	.uleb128 0x8
	.4byte	0x4af
	.uleb128 0x1e
	.4byte	0x4ba
	.uleb128 0x2
	.4byte	0x30e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF96
	.byte	0xa
	.byte	0xdc
	.byte	0x11
	.4byte	0x4c6
	.uleb128 0x8
	.4byte	0x4cb
	.uleb128 0xf
	.4byte	0x1b9
	.4byte	0x4e4
	.uleb128 0x2
	.4byte	0x30e
	.uleb128 0x2
	.4byte	0x474
	.uleb128 0x2
	.4byte	0x2d3
	.byte	0
	.uleb128 0x17
	.4byte	0x84
	.4byte	0x4f4
	.uleb128 0x18
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.4byte	0xcc
	.4byte	0x504
	.uleb128 0x18
	.4byte	0x6a
	.byte	0x5
	.byte	0
	.uleb128 0x17
	.4byte	0x8b
	.4byte	0x514
	.uleb128 0x18
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.string	"acd"
	.byte	0x14
	.byte	0xb
	.byte	0x47
	.byte	0x8
	.4byte	0x58a
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0xb
	.byte	0x4a
	.byte	0xf
	.4byte	0x58a
	.byte	0
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0xb
	.byte	0x4c
	.byte	0xe
	.4byte	0x116
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0xb
	.byte	0x4e
	.byte	0x14
	.4byte	0x5eb
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0xb
	.byte	0x50
	.byte	0x8
	.4byte	0xcc
	.byte	0x9
	.uleb128 0x15
	.string	"ttw"
	.byte	0xb
	.byte	0x52
	.byte	0x9
	.4byte	0xe4
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0xb
	.byte	0x54
	.byte	0x8
	.4byte	0xcc
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0xb
	.byte	0x56
	.byte	0x8
	.4byte	0xcc
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0xb
	.byte	0x59
	.byte	0x1b
	.4byte	0x622
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x514
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0xa
	.2byte	0x1a7
	.byte	0x16
	.4byte	0x30e
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0xa
	.2byte	0x1ab
	.byte	0x16
	.4byte	0x30e
	.uleb128 0x8
	.4byte	0x134
	.uleb128 0x10
	.byte	0x7
	.4byte	0x39
	.byte	0xc
	.byte	0x3a
	.4byte	0x5eb
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF113
	.byte	0xc
	.byte	0x4f
	.byte	0x3
	.4byte	0x5ae
	.uleb128 0x10
	.byte	0x7
	.4byte	0x39
	.byte	0xc
	.byte	0x51
	.4byte	0x616
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0xc
	.byte	0x55
	.byte	0x3
	.4byte	0x5f7
	.uleb128 0x4
	.4byte	.LASF118
	.byte	0xb
	.byte	0x44
	.byte	0x10
	.4byte	0x62e
	.uleb128 0x8
	.4byte	0x633
	.uleb128 0x1e
	.4byte	0x643
	.uleb128 0x2
	.4byte	0x30e
	.uleb128 0x2
	.4byte	0x616
	.byte	0
	.uleb128 0x1f
	.4byte	0x58f
	.byte	0x71
	.uleb128 0x5
	.byte	0x3
	.4byte	netif_list
	.uleb128 0x1f
	.4byte	0x59c
	.byte	0x73
	.uleb128 0x5
	.byte	0x3
	.4byte	netif_default
	.uleb128 0x20
	.4byte	.LASF119
	.byte	0x76
	.4byte	0xcc
	.uleb128 0x5
	.byte	0x3
	.4byte	netif_num
	.uleb128 0x20
	.4byte	.LASF120
	.byte	0x79
	.4byte	0xcc
	.uleb128 0x5
	.byte	0x3
	.4byte	netif_client_id
	.uleb128 0xe
	.4byte	.LASF126
	.byte	0x11
	.byte	0x51
	.byte	0x5
	.4byte	0x2b
	.4byte	0x691
	.uleb128 0x2
	.4byte	0x97
	.byte	0
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0xd
	.byte	0x85
	.4byte	0x6ac
	.uleb128 0x2
	.4byte	0x86
	.uleb128 0x2
	.4byte	0x71
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0xb
	.byte	0x63
	.4byte	0x6bd
	.uleb128 0x2
	.4byte	0x30e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF123
	.byte	0xe
	.byte	0x84
	.4byte	0x6ce
	.uleb128 0x2
	.4byte	0x30e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0xf
	.byte	0x59
	.4byte	0x6df
	.uleb128 0x2
	.4byte	0x30e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0x10
	.byte	0x5d
	.4byte	0x6f0
	.uleb128 0x2
	.4byte	0x30e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0x10
	.byte	0x5c
	.byte	0x7
	.4byte	0x1b9
	.4byte	0x706
	.uleb128 0x2
	.4byte	0x30e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0xb
	.byte	0x64
	.4byte	0x721
	.uleb128 0x2
	.4byte	0x30e
	.uleb128 0x2
	.4byte	0x5a9
	.uleb128 0x2
	.4byte	0x5a9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0x12
	.byte	0x3d
	.4byte	0x737
	.uleb128 0x2
	.4byte	0x5a9
	.uleb128 0x2
	.4byte	0x5a9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0x13
	.byte	0xbb
	.4byte	0x74d
	.uleb128 0x2
	.4byte	0x5a9
	.uleb128 0x2
	.4byte	0x5a9
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF131
	.byte	0x14
	.2byte	0x1fb
	.byte	0x6
	.4byte	0x765
	.uleb128 0x2
	.4byte	0x5a9
	.uleb128 0x2
	.4byte	0x5a9
	.byte	0
	.uleb128 0xe
	.4byte	.LASF132
	.byte	0x10
	.byte	0x5b
	.byte	0x7
	.4byte	0x1b9
	.4byte	0x77b
	.uleb128 0x2
	.4byte	0x30e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF133
	.byte	0x15
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x79b
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0xe
	.4byte	.LASF134
	.byte	0x16
	.byte	0x47
	.byte	0x7
	.4byte	0x1b9
	.4byte	0x7b6
	.uleb128 0x2
	.4byte	0x23a
	.uleb128 0x2
	.4byte	0x30e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF135
	.byte	0x17
	.byte	0x42
	.byte	0x7
	.4byte	0x1b9
	.4byte	0x7d1
	.uleb128 0x2
	.4byte	0x23a
	.uleb128 0x2
	.4byte	0x30e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF136
	.2byte	0x6db
	.4byte	0x30e
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x819
	.uleb128 0x1
	.4byte	.LASF89
	.2byte	0x6db
	.byte	0x18
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF76
	.2byte	0x6dd
	.byte	0x11
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.string	"num"
	.byte	0x1
	.2byte	0x6de
	.byte	0x8
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x21
	.4byte	.LASF137
	.2byte	0x6c2
	.4byte	0x30e
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x851
	.uleb128 0xd
	.string	"idx"
	.2byte	0x6c2
	.byte	0x19
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x7
	.4byte	.LASF76
	.2byte	0x6c4
	.byte	0x11
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF138
	.2byte	0x6ae
	.4byte	0x86
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x898
	.uleb128 0xd
	.string	"idx"
	.2byte	0x6ae
	.byte	0x1a
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF89
	.2byte	0x6ae
	.byte	0x25
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF76
	.2byte	0x6b0
	.byte	0x11
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF139
	.2byte	0x69b
	.4byte	0xcc
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d0
	.uleb128 0x1
	.4byte	.LASF89
	.2byte	0x69b
	.byte	0x21
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF76
	.2byte	0x69d
	.byte	0x11
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF158
	.2byte	0x689
	.4byte	0x1b9
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x915
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x689
	.byte	0x25
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"p"
	.2byte	0x689
	.byte	0x39
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF97
	.2byte	0x689
	.byte	0x4e
	.4byte	0x474
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x21
	.4byte	.LASF140
	.2byte	0x53d
	.4byte	0xcc
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x93e
	.uleb128 0x7
	.4byte	.LASF141
	.2byte	0x53f
	.byte	0x8
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF142
	.2byte	0x446
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x972
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x446
	.byte	0x27
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x446
	.byte	0x47
	.4byte	0x49e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF143
	.2byte	0x420
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x997
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x420
	.byte	0x23
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF144
	.2byte	0x3fa
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9bc
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x3fa
	.byte	0x21
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF145
	.2byte	0x3db
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f0
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x3db
	.byte	0x29
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF82
	.2byte	0x3db
	.byte	0x49
	.4byte	0x49e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF146
	.2byte	0x3b5
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa15
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x3b5
	.byte	0x1e
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.4byte	.LASF165
	.2byte	0x386
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa49
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x386
	.byte	0x23
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF147
	.2byte	0x386
	.byte	0x2f
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xb
	.4byte	.LASF148
	.2byte	0x367
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa6e
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x367
	.byte	0x1c
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF149
	.2byte	0x351
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa93
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x351
	.byte	0x21
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF150
	.2byte	0x2fc
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad1
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x2fc
	.byte	0x1c
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x7
	.4byte	.LASF151
	.2byte	0x334
	.byte	0x13
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF152
	.2byte	0x2a7
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5e
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x2a7
	.byte	0x1e
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF97
	.2byte	0x2a7
	.byte	0x37
	.4byte	0x474
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF78
	.2byte	0x2a7
	.byte	0x51
	.4byte	0x474
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"gw"
	.2byte	0x2a8
	.byte	0x22
	.4byte	0x474
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.4byte	.LASF153
	.2byte	0x2b2
	.byte	0xe
	.4byte	0xb5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF154
	.2byte	0x2b3
	.byte	0xe
	.4byte	0xb5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF155
	.2byte	0x2b5
	.byte	0xd
	.4byte	0x127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.4byte	.LASF156
	.2byte	0x2b6
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	0x127
	.uleb128 0xb
	.4byte	.LASF157
	.2byte	0x282
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba5
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x282
	.byte	0x1c
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"gw"
	.2byte	0x282
	.byte	0x35
	.4byte	0x474
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF154
	.2byte	0x288
	.byte	0xe
	.4byte	0xb5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF159
	.2byte	0x260
	.4byte	0x2b
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbeb
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x260
	.byte	0x1f
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"gw"
	.2byte	0x260
	.byte	0x38
	.4byte	0x474
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF154
	.2byte	0x260
	.byte	0x47
	.4byte	0xb5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF160
	.2byte	0x245
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc2e
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x245
	.byte	0x21
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF78
	.2byte	0x245
	.byte	0x3a
	.4byte	0x474
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF153
	.2byte	0x24b
	.byte	0xe
	.4byte	0xb5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF161
	.2byte	0x220
	.4byte	0x2b
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc75
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x220
	.byte	0x24
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF78
	.2byte	0x220
	.byte	0x3d
	.4byte	0x474
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF153
	.2byte	0x220
	.byte	0x51
	.4byte	0xb5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF162
	.2byte	0x209
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb8
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x209
	.byte	0x20
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF97
	.2byte	0x209
	.byte	0x39
	.4byte	0x474
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF155
	.2byte	0x20b
	.byte	0xd
	.4byte	0x127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x1da
	.byte	0x1
	.4byte	0x2b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd1a
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x1da
	.byte	0x23
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF97
	.2byte	0x1da
	.byte	0x3c
	.4byte	0x474
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF155
	.2byte	0x1da
	.byte	0x4f
	.4byte	0xb5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x7
	.4byte	.LASF164
	.2byte	0x1e1
	.byte	0xf
	.4byte	0x127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF166
	.2byte	0x1cb
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd4e
	.uleb128 0x1
	.4byte	.LASF155
	.2byte	0x1cb
	.byte	0x2b
	.4byte	0x5a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF164
	.2byte	0x1cb
	.byte	0x46
	.4byte	0x5a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF167
	.2byte	0x11f
	.4byte	0x30e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf8
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x11f
	.byte	0x19
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF97
	.2byte	0x121
	.byte	0x1d
	.4byte	0x474
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF78
	.2byte	0x121
	.byte	0x37
	.4byte	0x474
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"gw"
	.2byte	0x121
	.byte	0x52
	.4byte	0x474
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF84
	.2byte	0x123
	.byte	0x11
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF168
	.2byte	0x123
	.byte	0x26
	.4byte	0x2ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF79
	.2byte	0x123
	.byte	0x3b
	.4byte	0x425
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x7
	.4byte	.LASF169
	.2byte	0x194
	.byte	0x13
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF170
	.2byte	0x195
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF171
	.byte	0xfa
	.4byte	0x30e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe45
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x20
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x2d
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF168
	.byte	0x42
	.4byte	0x2ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x57
	.4byte	0x425
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.4byte	.LASF172
	.byte	0xe4
	.4byte	0x1b9
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe78
	.uleb128 0x24
	.string	"p"
	.byte	0xe4
	.byte	0x1a
	.4byte	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.string	"inp"
	.byte	0xe4
	.byte	0x2b
	.4byte	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF174
	.byte	0x1
	.byte	0xbc
	.byte	0x1
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 250
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
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
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x7c
	.uleb128 0x19
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
	.4byte	0xec
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF96:
	.string	"netif_igmp_mac_filter_fn"
.LASF62:
	.string	"MEMP_SYS_TIMEOUT"
.LASF155:
	.string	"old_addr"
.LASF43:
	.string	"pbuf"
.LASF13:
	.string	"size_t"
.LASF163:
	.string	"netif_do_set_ipaddr"
.LASF110:
	.string	"ACD_STATE_ONGOING"
.LASF63:
	.string	"MEMP_NETDB"
.LASF114:
	.string	"ACD_IP_OK"
.LASF50:
	.string	"if_idx"
.LASF120:
	.string	"netif_client_id"
.LASF122:
	.string	"acd_network_changed_link_down"
.LASF38:
	.string	"ERR_RST"
.LASF168:
	.string	"init"
.LASF130:
	.string	"udp_netif_ip_addr_changed"
.LASF118:
	.string	"acd_conflict_callback_t"
.LASF147:
	.string	"report_type"
.LASF44:
	.string	"addr"
.LASF107:
	.string	"ACD_STATE_PROBING"
.LASF156:
	.string	"remove"
.LASF142:
	.string	"netif_set_link_callback"
.LASF55:
	.string	"MEMP_TCP_SEG"
.LASF132:
	.string	"igmp_start"
.LASF152:
	.string	"netif_set_addr"
.LASF116:
	.string	"ACD_DECLINE"
.LASF73:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF104:
	.string	"netif_default"
.LASF7:
	.string	"long unsigned int"
.LASF32:
	.string	"ERR_USE"
.LASF9:
	.string	"long long unsigned int"
.LASF108:
	.string	"ACD_STATE_ANNOUNCE_WAIT"
.LASF87:
	.string	"hwaddr"
.LASF98:
	.string	"sent_num"
.LASF27:
	.string	"ERR_TIMEOUT"
.LASF25:
	.string	"ERR_MEM"
.LASF159:
	.string	"netif_do_set_gw"
.LASF84:
	.string	"state"
.LASF86:
	.string	"hostname"
.LASF6:
	.string	"long int"
.LASF51:
	.string	"MEMP_RAW_PCB"
.LASF42:
	.string	"ip4_addr"
.LASF172:
	.string	"netif_input"
.LASF151:
	.string	"tmp_netif"
.LASF4:
	.string	"short int"
.LASF70:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF36:
	.string	"ERR_IF"
.LASF16:
	.string	"uint16_t"
.LASF88:
	.string	"hwaddr_len"
.LASF52:
	.string	"MEMP_UDP_PCB"
.LASF78:
	.string	"netmask"
.LASF125:
	.string	"igmp_report_groups"
.LASF24:
	.string	"ERR_OK"
.LASF61:
	.string	"MEMP_IGMP_GROUP"
.LASF54:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF146:
	.string	"netif_set_down"
.LASF48:
	.string	"type_internal"
.LASF134:
	.string	"ip4_input"
.LASF10:
	.string	"unsigned int"
.LASF18:
	.string	"u8_t"
.LASF169:
	.string	"netif2"
.LASF100:
	.string	"num_conflicts"
.LASF80:
	.string	"output"
.LASF158:
	.string	"netif_null_output_ip4"
.LASF33:
	.string	"ERR_ALREADY"
.LASF21:
	.string	"u32_t"
.LASF111:
	.string	"ACD_STATE_PASSIVE_ONGOING"
.LASF53:
	.string	"MEMP_TCP_PCB"
.LASF148:
	.string	"netif_set_up"
.LASF89:
	.string	"name"
.LASF170:
	.string	"num_netifs"
.LASF102:
	.string	"ip_addr_any"
.LASF5:
	.string	"short unsigned int"
.LASF22:
	.string	"ip4_addr_t"
.LASF83:
	.string	"link_callback"
.LASF128:
	.string	"acd_netif_ip_addr_changed"
.LASF140:
	.string	"netif_alloc_client_data_id"
.LASF121:
	.string	"lwip_itoa"
.LASF124:
	.string	"etharp_cleanup_netif"
.LASF106:
	.string	"ACD_STATE_PROBE_WAIT"
.LASF99:
	.string	"lastconflict"
.LASF72:
	.string	"netif_mac_filter_action"
.LASF66:
	.string	"MEMP_MAX"
.LASF23:
	.string	"ip_addr_t"
.LASF19:
	.string	"s8_t"
.LASF41:
	.string	"err_t"
.LASF94:
	.string	"netif_linkoutput_fn"
.LASF11:
	.string	"long double"
.LASF76:
	.string	"netif"
.LASF153:
	.string	"old_nm"
.LASF90:
	.string	"igmp_mac_filter"
.LASF46:
	.string	"payload"
.LASF136:
	.string	"netif_find"
.LASF77:
	.string	"ip_addr"
.LASF164:
	.string	"new_addr"
.LASF103:
	.string	"netif_list"
.LASF166:
	.string	"netif_do_ip_addr_changed"
.LASF92:
	.string	"netif_input_fn"
.LASF165:
	.string	"netif_issue_reports"
.LASF29:
	.string	"ERR_INPROGRESS"
.LASF112:
	.string	"ACD_STATE_RATE_LIMIT"
.LASF131:
	.string	"tcp_netif_ip_addr_changed"
.LASF150:
	.string	"netif_remove"
.LASF68:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF30:
	.string	"ERR_VAL"
.LASF126:
	.string	"atoi"
.LASF75:
	.string	"netif_init_fn"
.LASF3:
	.string	"unsigned char"
.LASF40:
	.string	"ERR_ARG"
.LASF35:
	.string	"ERR_CONN"
.LASF135:
	.string	"ethernet_input"
.LASF69:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF123:
	.string	"dhcp_network_changed_link_up"
.LASF117:
	.string	"acd_callback_enum_t"
.LASF119:
	.string	"netif_num"
.LASF93:
	.string	"netif_output_fn"
.LASF174:
	.string	"netif_init"
.LASF95:
	.string	"netif_status_callback_fn"
.LASF154:
	.string	"old_gw"
.LASF82:
	.string	"status_callback"
.LASF171:
	.string	"netif_add_noaddr"
.LASF127:
	.string	"igmp_stop"
.LASF79:
	.string	"input"
.LASF157:
	.string	"netif_set_gw"
.LASF101:
	.string	"acd_conflict_callback"
.LASF74:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF67:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF17:
	.string	"uint32_t"
.LASF145:
	.string	"netif_set_status_callback"
.LASF37:
	.string	"ERR_ABRT"
.LASF59:
	.string	"MEMP_TCPIP_MSG_API"
.LASF137:
	.string	"netif_get_by_index"
.LASF12:
	.string	"char"
.LASF167:
	.string	"netif_add"
.LASF139:
	.string	"netif_name_to_index"
.LASF57:
	.string	"MEMP_NETBUF"
.LASF144:
	.string	"netif_set_link_up"
.LASF58:
	.string	"MEMP_NETCONN"
.LASF143:
	.string	"netif_set_link_down"
.LASF56:
	.string	"MEMP_ALTCP_PCB"
.LASF149:
	.string	"netif_set_default"
.LASF65:
	.string	"MEMP_PBUF_POOL"
.LASF162:
	.string	"netif_set_ipaddr"
.LASF113:
	.string	"acd_state_enum_t"
.LASF173:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF39:
	.string	"ERR_CLSD"
.LASF28:
	.string	"ERR_RTE"
.LASF14:
	.string	"int8_t"
.LASF47:
	.string	"tot_len"
.LASF20:
	.string	"u16_t"
.LASF26:
	.string	"ERR_BUF"
.LASF161:
	.string	"netif_do_set_netmask"
.LASF133:
	.string	"memset"
.LASF71:
	.string	"lwip_internal_netif_client_data_index"
.LASF34:
	.string	"ERR_ISCONN"
.LASF91:
	.string	"acd_list"
.LASF109:
	.string	"ACD_STATE_ANNOUNCING"
.LASF97:
	.string	"ipaddr"
.LASF15:
	.string	"uint8_t"
.LASF49:
	.string	"flags"
.LASF115:
	.string	"ACD_RESTART_CLIENT"
.LASF138:
	.string	"netif_index_to_name"
.LASF31:
	.string	"ERR_WOULDBLOCK"
.LASF160:
	.string	"netif_set_netmask"
.LASF45:
	.string	"next"
.LASF85:
	.string	"client_data"
.LASF81:
	.string	"linkoutput"
.LASF105:
	.string	"ACD_STATE_OFF"
.LASF129:
	.string	"raw_netif_ip_addr_changed"
.LASF64:
	.string	"MEMP_PBUF"
.LASF141:
	.string	"result"
.LASF60:
	.string	"MEMP_TCPIP_MSG_INPKT"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/netif.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
