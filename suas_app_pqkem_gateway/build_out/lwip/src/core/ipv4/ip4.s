	.file	"ip4.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ipv4/ip4.c"
	.section	.sbss.ip_id,"aw",@nobits
	.align	1
	.type	ip_id, @object
	.size	ip_id, 2
ip_id:
	.zero	2
	.section	.sbss.ip4_default_multicast_netif,"aw",@nobits
	.align	2
	.type	ip4_default_multicast_netif, @object
	.size	ip4_default_multicast_netif, 4
ip4_default_multicast_netif:
	.zero	4
	.section	.text.ip4_set_default_multicast_netif,"ax",@progbits
	.align	1
	.globl	ip4_set_default_multicast_netif
	.type	ip4_set_default_multicast_netif, @function
ip4_set_default_multicast_netif:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ipv4/ip4.c"
	.loc 1 122 1
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
	.loc 1 123 31
	lui	a5,%hi(ip4_default_multicast_netif)
	lw	a4,-20(s0)
	sw	a4,%lo(ip4_default_multicast_netif)(a5)
	.loc 1 124 1
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
.LFE5:
	.size	ip4_set_default_multicast_netif, .-ip4_set_default_multicast_netif
	.section	.text.ip4_route,"ax",@progbits
	.align	1
	.globl	ip4_route
	.type	ip4_route, @function
ip4_route:
.LFB6:
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
	.loc 1 165 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 165 22
	andi	a4,a5,240
	.loc 1 165 6
	li	a5,224
	bne	a4,a5,.L3
	.loc 1 165 417 discriminator 1
	lui	a5,%hi(ip4_default_multicast_netif)
	lw	a5,%lo(ip4_default_multicast_netif)(a5)
	beq	a5,zero,.L3
	.loc 1 166 12
	lui	a5,%hi(ip4_default_multicast_netif)
	lw	a5,%lo(ip4_default_multicast_netif)(a5)
	j	.L4
.L3:
	.loc 1 174 16
	lui	a5,%hi(netif_list)
	lw	a5,%lo(netif_list)(a5)
	sw	a5,-20(s0)
	.loc 1 174 3
	j	.L5
.L8:
	.loc 1 176 18
	lw	a5,-20(s0)
	lbu	a5,69(a5)
	.loc 1 176 56
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 176 8
	beq	a5,zero,.L6
	.loc 1 176 68 discriminator 1
	lw	a5,-20(s0)
	lbu	a5,69(a5)
	.loc 1 176 56 discriminator 1
	srli	a5,a5,2
	andi	a5,a5,1
	andi	a5,a5,0xff
	beq	a5,zero,.L6
	.loc 1 176 134 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 176 156 discriminator 2
	lw	a5,0(a5)
	.loc 1 176 106 discriminator 2
	beq	a5,zero,.L6
	.loc 1 178 19
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 178 106
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 178 128
	lw	a5,0(a5)
	.loc 1 178 80
	xor	a4,a4,a5
	.loc 1 178 50
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 1 178 72
	lw	a5,0(a5)
	.loc 1 178 80
	and	a5,a4,a5
	.loc 1 178 10
	bne	a5,zero,.L7
	.loc 1 180 16
	lw	a5,-20(s0)
	j	.L4
.L7:
	.loc 1 183 18
	lw	a5,-20(s0)
	lbu	a5,69(a5)
	.loc 1 183 26
	andi	a5,a5,2
	.loc 1 183 10
	bne	a5,zero,.L6
	.loc 1 183 51 discriminator 1
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 183 83 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 183 100 discriminator 1
	lw	a5,0(a5)
	.loc 1 183 41 discriminator 1
	bne	a4,a5,.L6
	.loc 1 185 16
	lw	a5,-20(s0)
	j	.L4
.L6:
	.loc 1 174 12 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L5:
	.loc 1 174 38 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L8
	.loc 1 220 22
	lui	a5,%hi(netif_default)
	lw	a5,%lo(netif_default)(a5)
	.loc 1 220 6
	beq	a5,zero,.L9
	.loc 1 220 51 discriminator 1
	lui	a5,%hi(netif_default)
	lw	a5,%lo(netif_default)(a5)
	lbu	a5,69(a5)
	.loc 1 220 59 discriminator 1
	andi	a5,a5,1
	.loc 1 220 30 discriminator 1
	beq	a5,zero,.L9
	.loc 1 220 110 discriminator 2
	lui	a5,%hi(netif_default)
	lw	a5,%lo(netif_default)(a5)
	lbu	a5,69(a5)
	.loc 1 220 118 discriminator 2
	andi	a5,a5,4
	.loc 1 220 89 discriminator 2
	beq	a5,zero,.L9
	.loc 1 221 48
	lui	a5,%hi(netif_default)
	lw	a5,%lo(netif_default)(a5)
	.loc 1 221 31
	addi	a5,a5,4
	.loc 1 221 61
	lw	a5,0(a5)
	.loc 1 220 148 discriminator 3
	beq	a5,zero,.L9
	.loc 1 221 104
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 221 111
	andi	a4,a5,255
	.loc 1 221 93
	li	a5,127
	bne	a4,a5,.L10
.L9:
	.loc 1 226 20
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,62(a5)
	.loc 1 226 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,62(a5)
	.loc 1 228 11
	li	a5,0
	j	.L4
.L10:
	.loc 1 231 10
	lui	a5,%hi(netif_default)
	lw	a5,%lo(netif_default)(a5)
.L4:
	.loc 1 232 1
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
	.size	ip4_route, .-ip4_route
	.section	.text.ip4_input_accept,"ax",@progbits
	.align	1
	.type	ip4_input_accept, @function
ip4_input_accept:
.LFB7:
	.loc 1 413 1
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
	.loc 1 421 17
	lw	a5,-20(s0)
	lbu	a5,69(a5)
	.loc 1 421 56
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 421 6
	beq	a5,zero,.L12
	.loc 1 421 85 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 421 107 discriminator 1
	lw	a5,0(a5)
	.loc 1 421 56 discriminator 1
	beq	a5,zero,.L12
	.loc 1 423 41
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a4,20(a5)
	.loc 1 423 73
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 423 95
	lw	a5,0(a5)
	.loc 1 423 8
	beq	a4,a5,.L13
	.loc 1 425 9
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,20(a5)
	lw	a1,-20(s0)
	mv	a0,a5
	call	ip4_addr_isbroadcast_u32
	mv	a5,a0
	.loc 1 423 103 discriminator 1
	beq	a5,zero,.L12
.L13:
	.loc 1 433 14
	li	a5,1
	j	.L14
.L12:
	.loc 1 446 10
	li	a5,0
.L14:
	.loc 1 447 1
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
	.size	ip4_input_accept, .-ip4_input_accept
	.section	.text.ip4_input,"ax",@progbits
	.align	1
	.globl	ip4_input
	.type	ip4_input, @function
ip4_input:
.LFB8:
	.loc 1 465 1
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
	.loc 1 471 7
	li	a5,1
	sw	a5,-24(s0)
	.loc 1 479 18
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,50(a5)
	.loc 1 479 3
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,50(a5)
	.loc 1 483 9
	lw	a5,-52(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	.loc 1 484 15
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 484 29
	srli	a5,a5,4
	andi	a4,a5,0xff
	.loc 1 484 6
	li	a5,4
	beq	a4,a5,.L16
	.loc 1 487 5
	lw	a0,-52(s0)
	call	pbuf_free
	.loc 1 488 20
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,68(a5)
	.loc 1 488 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,68(a5)
	.loc 1 489 20
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,54(a5)
	.loc 1 489 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,54(a5)
	.loc 1 491 12
	li	a5,0
	j	.L17
.L16:
	.loc 1 506 32
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 506 17
	andi	a5,a5,15
	andi	a5,a5,0xff
	slli	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 506 14
	sh	a5,-30(s0)
	.loc 1 508 34
	lw	a5,-28(s0)
	lbu	a4,2(a5)
	lbu	a5,3(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 508 15
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	sh	a5,-32(s0)
	.loc 1 511 20
	lw	a5,-52(s0)
	lhu	a5,8(a5)
	.loc 1 511 6
	lhu	a4,-32(s0)
	bgeu	a4,a5,.L18
	.loc 1 512 5
	lhu	a5,-32(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	pbuf_realloc
.L18:
	.loc 1 516 22
	lw	a5,-52(s0)
	lhu	a5,10(a5)
	.loc 1 516 6
	lhu	a4,-30(s0)
	bgtu	a4,a5,.L19
	.loc 1 516 46 discriminator 1
	lw	a5,-52(s0)
	lhu	a5,8(a5)
	.loc 1 516 29 discriminator 1
	lhu	a4,-32(s0)
	bgtu	a4,a5,.L19
	.loc 1 516 57 discriminator 2
	lhu	a4,-30(s0)
	li	a5,19
	bgtu	a4,a5,.L20
.L19:
	.loc 1 532 5
	lw	a0,-52(s0)
	call	pbuf_free
	.loc 1 533 20
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,58(a5)
	.loc 1 533 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,58(a5)
	.loc 1 534 20
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,54(a5)
	.loc 1 534 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,54(a5)
	.loc 1 536 12
	li	a5,0
	j	.L17
.L20:
	.loc 1 542 9
	lhu	a5,-30(s0)
	mv	a1,a5
	lw	a0,-28(s0)
	call	inet_chksum
	mv	a5,a0
	.loc 1 542 8 discriminator 1
	beq	a5,zero,.L21
	.loc 1 547 7
	lw	a0,-52(s0)
	call	pbuf_free
	.loc 1 548 22
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,56(a5)
	.loc 1 548 7
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,56(a5)
	.loc 1 549 22
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,54(a5)
	.loc 1 549 7
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,54(a5)
	.loc 1 551 14
	li	a5,0
	j	.L17
.L21:
	.loc 1 557 53
	lw	a5,-28(s0)
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
	.loc 1 557 38
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	sw	a4,20(a5)
	.loc 1 558 51
	lw	a5,-28(s0)
	lbu	a4,12(a5)
	lbu	a3,13(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,14(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,15(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 558 37
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	sw	a4,16(a5)
	.loc 1 561 40
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,20(a5)
	.loc 1 561 47
	andi	a4,a5,240
	.loc 1 561 6
	li	a5,224
	bne	a4,a5,.L22
	.loc 1 563 13
	lw	a5,-56(s0)
	lbu	a5,69(a5)
	.loc 1 563 21
	andi	a5,a5,32
	.loc 1 563 8
	beq	a5,zero,.L23
	.loc 1 563 34 discriminator 1
	lui	a5,%hi(ip_data+20)
	addi	a1,a5,%lo(ip_data+20)
	lw	a0,-56(s0)
	call	igmp_lookfor_group
	mv	a5,a0
	.loc 1 563 30 discriminator 2
	beq	a5,zero,.L23
.LBB2:
	.loc 1 566 27
	li	a5,16777216
	addi	a5,a5,224
	sw	a5,-44(s0)
	.loc 1 567 43
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a4,20(a5)
	.loc 1 567 66
	lw	a5,-44(s0)
	.loc 1 567 10
	bne	a4,a5,.L24
	.loc 1 568 47
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,16(a5)
	.loc 1 568 10
	bne	a5,zero,.L24
	.loc 1 569 22
	sw	zero,-24(s0)
.L24:
	.loc 1 571 13
	lw	a5,-56(s0)
	sw	a5,-20(s0)
.LBE2:
	.loc 1 563 91
	j	.L26
.L23:
	.loc 1 573 13
	sw	zero,-20(s0)
	j	.L26
.L22:
	.loc 1 585 9
	lw	a0,-56(s0)
	call	ip4_input_accept
	mv	a5,a0
	.loc 1 585 8 discriminator 1
	beq	a5,zero,.L27
	.loc 1 586 13
	lw	a5,-56(s0)
	sw	a5,-20(s0)
	j	.L26
.L27:
	.loc 1 588 13
	sw	zero,-20(s0)
	.loc 1 593 45
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,20(a5)
	.loc 1 593 52
	andi	a4,a5,255
	.loc 1 593 10
	li	a5,127
	beq	a4,a5,.L26
	.loc 1 597 22
	lui	a5,%hi(netif_list)
	lw	a5,%lo(netif_list)(a5)
	sw	a5,-20(s0)
	.loc 1 597 9
	j	.L28
.L31:
	.loc 1 598 14
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	beq	a4,a5,.L45
	.loc 1 602 15
	lw	a0,-20(s0)
	call	ip4_input_accept
	mv	a5,a0
	.loc 1 602 14 discriminator 1
	bne	a5,zero,.L46
	j	.L30
.L45:
	.loc 1 600 13
	nop
.L30:
	.loc 1 597 18 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L28:
	.loc 1 597 44 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L31
	j	.L26
.L46:
	.loc 1 603 13
	nop
.L26:
	.loc 1 621 6
	lw	a5,-20(s0)
	bne	a5,zero,.L32
	.loc 1 623 17
	lw	a5,-28(s0)
	lbu	a4,9(a5)
	.loc 1 623 8
	li	a5,17
	bne	a4,a5,.L32
.LBB3:
	.loc 1 624 38
	lhu	a5,-30(s0)
	.loc 1 624 29
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 1 627 19
	lw	a5,-36(s0)
	lbu	a4,2(a5)
	lbu	a5,3(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 627 10
	li	a5,16384
	addi	a5,a5,1024
	bne	a4,a5,.L32
	.loc 1 629 15
	lw	a5,-56(s0)
	sw	a5,-20(s0)
	.loc 1 630 22
	sw	zero,-24(s0)
.L32:
.LBE3:
	.loc 1 638 6
	lw	a5,-24(s0)
	beq	a5,zero,.L33
	.loc 1 641 43
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,16(a5)
	.loc 1 641 7
	beq	a5,zero,.L33
	.loc 1 646 10
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,16(a5)
	lw	a1,-56(s0)
	mv	a0,a5
	call	ip4_addr_isbroadcast_u32
	mv	a5,a0
	.loc 1 646 8 discriminator 1
	bne	a5,zero,.L34
	.loc 1 647 42
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,16(a5)
	.loc 1 647 49
	andi	a4,a5,240
	.loc 1 646 79 discriminator 2
	li	a5,224
	bne	a4,a5,.L33
.L34:
	.loc 1 651 7
	lw	a0,-52(s0)
	call	pbuf_free
	.loc 1 652 22
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,54(a5)
	.loc 1 652 7
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,54(a5)
	.loc 1 655 14
	li	a5,0
	j	.L17
.L33:
	.loc 1 660 6
	lw	a5,-20(s0)
	bne	a5,zero,.L35
	.loc 1 671 22
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,54(a5)
	.loc 1 671 7
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,54(a5)
	.loc 1 675 5
	lw	a0,-52(s0)
	call	pbuf_free
	.loc 1 676 12
	li	a5,0
	j	.L17
.L35:
	.loc 1 679 16
	lw	a5,-28(s0)
	lbu	a4,6(a5)
	lbu	a5,7(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 679 27
	mv	a4,a5
	li	a5,65536
	addi	a5,a5,-193
	and	a5,a4,a5
	.loc 1 679 6
	beq	a5,zero,.L36
	.loc 1 691 5
	lw	a0,-52(s0)
	call	pbuf_free
	.loc 1 694 20
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,66(a5)
	.loc 1 694 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,66(a5)
	.loc 1 695 20
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,54(a5)
	.loc 1 695 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,54(a5)
	.loc 1 698 12
	li	a5,0
	j	.L17
.L36:
	.loc 1 731 25
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 732 31
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	.loc 1 733 30
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a4,-28(s0)
	sw	a4,8(a5)
	.loc 1 734 55
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 734 40
	andi	a5,a5,15
	andi	a5,a5,0xff
	slli	a5,a5,2
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 1 734 37
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	sh	a4,12(a5)
	.loc 1 738 16
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	raw_input
	mv	a5,a0
	sb	a5,-37(s0)
	.loc 1 739 6
	lbu	a4,-37(s0)
	li	a5,1
	beq	a4,a5,.L37
	.loc 1 742 5
	lhu	a5,-30(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	pbuf_remove_header
	.loc 1 744 21
	lw	a5,-28(s0)
	lbu	a5,9(a5)
	.loc 1 744 5
	li	a4,17
	beq	a5,a4,.L38
	li	a4,17
	bgt	a5,a4,.L39
	li	a4,6
	beq	a5,a4,.L40
	li	a4,6
	bgt	a5,a4,.L39
	li	a4,1
	beq	a5,a4,.L41
	li	a4,2
	beq	a5,a4,.L42
	j	.L39
.L38:
	.loc 1 751 9
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	udp_input
	.loc 1 752 9
	j	.L37
.L40:
	.loc 1 757 9
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	tcp_input
	.loc 1 758 9
	j	.L37
.L41:
	.loc 1 763 9
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	icmp_input
	.loc 1 764 9
	j	.L37
.L42:
	.loc 1 768 9
	lui	a5,%hi(ip_data+20)
	addi	a2,a5,%lo(ip_data+20)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	igmp_input
	.loc 1 769 9
	j	.L37
.L39:
	.loc 1 773 12
	lbu	a4,-37(s0)
	li	a5,2
	beq	a4,a5,.L43
	.loc 1 780 16
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,20(a5)
	lw	a1,-20(s0)
	mv	a0,a5
	call	ip4_addr_isbroadcast_u32
	mv	a5,a0
	.loc 1 780 14 discriminator 1
	bne	a5,zero,.L44
	.loc 1 781 49
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,20(a5)
	.loc 1 781 56
	andi	a4,a5,240
	.loc 1 780 87 discriminator 2
	li	a5,224
	beq	a4,a5,.L44
	.loc 1 782 13
	lh	a5,-30(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	pbuf_header_force
	.loc 1 783 13
	li	a1,2
	lw	a0,-52(s0)
	call	icmp_dest_unreach
.L44:
	.loc 1 789 26
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,64(a5)
	.loc 1 789 11
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,64(a5)
	.loc 1 790 26
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,54(a5)
	.loc 1 790 11
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,54(a5)
.L43:
	.loc 1 793 9
	lw	a0,-52(s0)
	call	pbuf_free
	.loc 1 794 9
	nop
.L37:
	.loc 1 799 25
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	sw	zero,0(a5)
	.loc 1 800 31
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	sw	zero,4(a5)
	.loc 1 801 30
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	sw	zero,8(a5)
	.loc 1 802 37
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	sh	zero,12(a5)
	.loc 1 803 41
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	sw	zero,16(a5)
	.loc 1 804 42
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	sw	zero,20(a5)
	.loc 1 806 10
	li	a5,0
.L17:
	.loc 1 807 1
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
.LFE8:
	.size	ip4_input, .-ip4_input
	.section	.text.ip4_output_if,"ax",@progbits
	.align	1
	.globl	ip4_output_if
	.type	ip4_output_if, @function
ip4_output_if:
.LFB9:
	.loc 1 838 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	mv	a2,a3
	mv	a3,a4
	mv	a4,a5
	sw	a6,-36(s0)
	mv	a5,a2
	sb	a5,-29(s0)
	mv	a5,a3
	sb	a5,-30(s0)
	mv	a5,a4
	sb	a5,-31(s0)
	.loc 1 840 10
	lbu	a5,-31(s0)
	lbu	a4,-30(s0)
	lbu	a3,-29(s0)
	sw	zero,0(sp)
	li	a7,0
	lw	a6,-36(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ip4_output_if_opt
	mv	a5,a0
	.loc 1 841 1
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
	.size	ip4_output_if, .-ip4_output_if
	.section	.text.ip4_output_if_opt,"ax",@progbits
	.align	1
	.globl	ip4_output_if_opt
	.type	ip4_output_if_opt, @function
ip4_output_if_opt:
.LFB10:
	.loc 1 853 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	mv	a2,a3
	mv	a3,a4
	mv	a4,a5
	sw	a6,-52(s0)
	sw	a7,-56(s0)
	mv	a5,a2
	sb	a5,-45(s0)
	mv	a5,a3
	sb	a5,-46(s0)
	mv	a5,a4
	sb	a5,-47(s0)
	.loc 1 855 21
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 1 856 6
	lw	a5,-44(s0)
	beq	a5,zero,.L50
	.loc 1 857 8
	lw	a5,-40(s0)
	beq	a5,zero,.L51
	.loc 1 857 20 discriminator 1
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 857 8 discriminator 1
	bne	a5,zero,.L50
.L51:
	.loc 1 858 16
	lw	a5,-52(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
.L50:
	.loc 1 864 12
	lbu	a2,-47(s0)
	lbu	a4,-46(s0)
	lbu	a3,-45(s0)
	lhu	a5,0(s0)
	sw	a5,0(sp)
	lw	a7,-56(s0)
	lw	a6,-52(s0)
	mv	a5,a2
	lw	a2,-44(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	ip4_output_if_opt_src
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 1 872 10
	lb	a5,-21(s0)
	.loc 1 873 1
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
	.size	ip4_output_if_opt, .-ip4_output_if_opt
	.section	.text.ip4_output_if_src,"ax",@progbits
	.align	1
	.globl	ip4_output_if_src
	.type	ip4_output_if_src, @function
ip4_output_if_src:
.LFB11:
	.loc 1 883 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	mv	a2,a3
	mv	a3,a4
	mv	a4,a5
	sw	a6,-36(s0)
	mv	a5,a2
	sb	a5,-29(s0)
	mv	a5,a3
	sb	a5,-30(s0)
	mv	a5,a4
	sb	a5,-31(s0)
	.loc 1 885 10
	lbu	a5,-31(s0)
	lbu	a4,-30(s0)
	lbu	a3,-29(s0)
	sw	zero,0(sp)
	li	a7,0
	lw	a6,-36(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ip4_output_if_opt_src
	mv	a5,a0
	.loc 1 886 1
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
.LFE11:
	.size	ip4_output_if_src, .-ip4_output_if_src
	.section	.text.ip4_output_if_opt_src,"ax",@progbits
	.align	1
	.globl	ip4_output_if_opt_src
	.type	ip4_output_if_opt_src, @function
ip4_output_if_opt_src:
.LFB12:
	.loc 1 896 1
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
	mv	a2,a3
	mv	a3,a4
	mv	a4,a5
	sw	a6,-68(s0)
	sw	a7,-72(s0)
	mv	a5,a2
	sb	a5,-61(s0)
	mv	a5,a3
	sb	a5,-62(s0)
	mv	a5,a4
	sb	a5,-63(s0)
	.loc 1 901 9
	sw	zero,-20(s0)
	.loc 1 910 6
	lw	a5,-60(s0)
	beq	a5,zero,.L56
.LBB4:
	.loc 1 911 11
	li	a5,20
	sh	a5,-22(s0)
	.loc 1 913 11
	sh	zero,-34(s0)
	.loc 1 914 8
	lhu	a5,0(s0)
	beq	a5,zero,.L57
.LBB5:
	.loc 1 918 10
	lhu	a4,0(s0)
	li	a5,40
	bleu	a4,a5,.L58
	.loc 1 921 24
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,68(a5)
	.loc 1 921 9
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,68(a5)
	.loc 1 923 16
	li	a5,-6
	j	.L69
.L58:
	.loc 1 926 40
	lhu	a5,0(s0)
	addi	a5,a5,3
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 926 22
	andi	a5,a5,-4
	sh	a5,-34(s0)
	.loc 1 927 15
	lhu	a5,-22(s0)
	mv	a4,a5
	lhu	a5,-34(s0)
	add	a5,a4,a5
	sh	a5,-22(s0)
	.loc 1 929 11
	lhu	a5,-34(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	pbuf_add_header
	mv	a5,a0
	.loc 1 929 10 discriminator 1
	beq	a5,zero,.L60
	.loc 1 931 24
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,68(a5)
	.loc 1 931 9
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,68(a5)
	.loc 1 933 16
	li	a5,-2
	j	.L69
.L60:
	.loc 1 935 15
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 935 7
	lhu	a4,0(s0)
	mv	a2,a4
	lw	a1,-72(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 936 10
	lhu	a4,0(s0)
	lhu	a5,-34(s0)
	bgeu	a4,a5,.L61
	.loc 1 938 26
	lw	a5,-52(s0)
	lw	a4,4(a5)
	.loc 1 938 9
	lhu	a5,0(s0)
	add	a3,a4,a5
	.loc 1 938 74
	lhu	a4,-34(s0)
	lhu	a5,0(s0)
	sub	a5,a4,a5
	.loc 1 938 9
	mv	a2,a5
	li	a1,0
	mv	a0,a3
	call	memset
.L61:
	.loc 1 941 14
	sw	zero,-28(s0)
	.loc 1 941 7
	j	.L62
.L63:
	.loc 1 942 31
	lw	a5,-52(s0)
	lw	a4,4(a5)
	.loc 1 942 41
	lw	a5,-28(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	mv	a4,a5
	.loc 1 942 17
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 941 44 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L62:
	.loc 1 941 38 discriminator 1
	lhu	a5,-34(s0)
	srli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a4,a5
	.loc 1 941 21 discriminator 1
	lw	a5,-28(s0)
	blt	a5,a4,.L63
.L57:
.LBE5:
	.loc 1 948 9
	li	a1,20
	lw	a0,-52(s0)
	call	pbuf_add_header
	mv	a5,a0
	.loc 1 948 8 discriminator 1
	beq	a5,zero,.L64
	.loc 1 951 22
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,68(a5)
	.loc 1 951 7
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,68(a5)
	.loc 1 953 14
	li	a5,-2
	j	.L69
.L64:
	.loc 1 956 11
	lw	a5,-52(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	.loc 1 960 19
	lw	a5,-32(s0)
	lbu	a4,-61(s0)
	sb	a4,8(a5)
	.loc 1 961 21
	lw	a5,-32(s0)
	lbu	a4,-63(s0)
	sb	a4,9(a5)
	.loc 1 963 34
	lbu	a4,-63(s0)
	.loc 1 963 41
	lbu	a5,-61(s0)
	slli	a5,a5,8
	.loc 1 963 34
	or	a5,a4,a5
	.loc 1 963 72
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,8
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 963 83
	lbu	a3,-63(s0)
	.loc 1 963 90
	lbu	a5,-61(s0)
	slli	a5,a5,8
	.loc 1 963 83
	or	a5,a3,a5
	.loc 1 963 115
	srai	a5,a5,8
	.loc 1 963 72
	slli	a5,a5,16
	srai	a5,a5,16
	andi	a5,a5,255
	slli	a5,a5,16
	srai	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 963 17
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a4,a5
	.loc 1 963 13
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 967 34
	lw	a5,-60(s0)
	lw	a4,0(a5)
	.loc 1 967 25
	lw	a5,-32(s0)
	andi	a3,a4,255
	lbu	a2,16(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,16(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,17(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,17(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,18(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,18(a5)
	srli	a4,a4,24
	lbu	a3,19(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,19(a5)
	.loc 1 969 31
	lw	a5,-32(s0)
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
	.loc 1 969 39
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 969 13
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 970 31
	lw	a5,-32(s0)
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
	.loc 1 970 39
	srli	a5,a5,16
	.loc 1 970 13
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 973 22
	lhu	a5,-22(s0)
	srli	a5,a5,2
	slli	a5,a5,16
	srli	a5,a5,16
	andi	a5,a5,0xff
	ori	a5,a5,64
	andi	a4,a5,0xff
	.loc 1 973 20
	lw	a5,-32(s0)
	sb	a4,0(a5)
	.loc 1 974 19
	lw	a5,-32(s0)
	lbu	a4,-62(s0)
	sb	a4,1(a5)
	.loc 1 976 32
	lbu	a4,-62(s0)
	.loc 1 976 40
	lw	a5,-32(s0)
	lbu	a5,0(a5)
	.loc 1 976 48
	slli	a5,a5,8
	.loc 1 976 32
	or	a5,a4,a5
	.loc 1 976 79
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,8
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 976 88
	lbu	a3,-62(s0)
	.loc 1 976 96
	lw	a5,-32(s0)
	lbu	a5,0(a5)
	.loc 1 976 104
	slli	a5,a5,8
	.loc 1 976 88
	or	a5,a3,a5
	.loc 1 976 129
	srai	a5,a5,8
	.loc 1 976 79
	slli	a5,a5,16
	srai	a5,a5,16
	andi	a5,a5,255
	slli	a5,a5,16
	srai	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 976 17
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a4,a5
	.loc 1 976 13
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 978 22
	lw	a5,-52(s0)
	lhu	a5,8(a5)
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	mv	a4,a5
	.loc 1 978 19 discriminator 1
	lw	a5,-32(s0)
	andi	a3,a4,255
	lbu	a2,2(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,2(a5)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 1 980 21
	lw	a5,-32(s0)
	lbu	a4,2(a5)
	lbu	a5,3(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a4,a5
	.loc 1 980 13
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 982 22
	lw	a5,-32(s0)
	lbu	a4,6(a5)
	andi	a4,a4,0
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	sb	a4,7(a5)
	.loc 1 983 21
	lui	a5,%hi(ip_id)
	lhu	a5,%lo(ip_id)(a5)
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	mv	a4,a5
	.loc 1 983 18 discriminator 1
	lw	a5,-32(s0)
	andi	a3,a4,255
	lbu	a2,4(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,4(a5)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,5(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,5(a5)
	.loc 1 985 21
	lw	a5,-32(s0)
	lbu	a4,4(a5)
	lbu	a5,5(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a4,a5
	.loc 1 985 13
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 987 5
	lui	a5,%hi(ip_id)
	lhu	a5,%lo(ip_id)(a5)
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(ip_id)
	sh	a4,%lo(ip_id)(a5)
	.loc 1 989 8
	lw	a5,-56(s0)
	bne	a5,zero,.L65
	.loc 1 990 47
	lui	a5,%hi(ip_addr_any)
	lw	a4,%lo(ip_addr_any)(a5)
	.loc 1 990 26
	lw	a5,-32(s0)
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
	j	.L66
.L65:
	.loc 1 993 34
	lw	a5,-56(s0)
	lw	a4,0(a5)
	.loc 1 993 26
	lw	a5,-32(s0)
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
.L66:
	.loc 1 997 30
	lw	a5,-32(s0)
	lbu	a4,12(a5)
	lbu	a3,13(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,14(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,15(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 997 38
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 997 13
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 998 30
	lw	a5,-32(s0)
	lbu	a4,12(a5)
	lbu	a3,13(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,14(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,15(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 998 38
	srli	a5,a5,16
	.loc 1 998 13
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 999 24
	lw	a5,-20(s0)
	srli	a4,a5,16
	.loc 1 999 42
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 999 13
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1000 24
	lw	a5,-20(s0)
	srli	a5,a5,16
	.loc 1 1000 13
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1001 13
	lw	a5,-20(s0)
	not	a5,a5
	sw	a5,-20(s0)
	.loc 1 1003 24
	lw	a5,-20(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1003 22
	lw	a5,-32(s0)
	andi	a3,a4,255
	lbu	a2,10(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,10(a5)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,11(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,11(a5)
.LBE4:
	j	.L67
.L56:
	.loc 1 1020 10
	lw	a5,-52(s0)
	lhu	a4,10(a5)
	.loc 1 1020 8
	li	a5,19
	bgtu	a4,a5,.L68
	.loc 1 1022 22
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,68(a5)
	.loc 1 1022 7
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,68(a5)
	.loc 1 1024 14
	li	a5,-2
	j	.L69
.L68:
	.loc 1 1026 11
	lw	a5,-52(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	.loc 1 1027 38
	lw	a5,-32(s0)
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
	.loc 1 1027 23
	sw	a5,-40(s0)
	.loc 1 1028 10
	addi	a5,s0,-40
	sw	a5,-60(s0)
.L67:
	.loc 1 1031 18
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,48(a5)
	.loc 1 1031 3
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,48(a5)
	.loc 1 1064 15
	lw	a5,-68(s0)
	lw	a5,20(a5)
	.loc 1 1064 10
	lw	a2,-60(s0)
	lw	a1,-52(s0)
	lw	a0,-68(s0)
	jalr	a5
.LVL0:
	mv	a5,a0
.L69:
	.loc 1 1065 1
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
	.size	ip4_output_if_opt_src, .-ip4_output_if_opt_src
	.section	.text.ip4_output,"ax",@progbits
	.align	1
	.globl	ip4_output
	.type	ip4_output, @function
ip4_output:
.LFB13:
	.loc 1 1087 1
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
	mv	a2,a3
	mv	a3,a4
	mv	a4,a5
	mv	a5,a2
	sb	a5,-45(s0)
	mv	a5,a3
	sb	a5,-46(s0)
	mv	a5,a4
	sb	a5,-47(s0)
	.loc 1 1092 16
	lw	a0,-44(s0)
	call	ip4_route
	sw	a0,-20(s0)
	.loc 1 1092 6 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L71
	.loc 1 1095 20
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,62(a5)
	.loc 1 1095 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,62(a5)
	.loc 1 1096 12
	li	a5,-4
	j	.L72
.L71:
	.loc 1 1099 10
	lbu	a5,-47(s0)
	lbu	a4,-46(s0)
	lbu	a3,-45(s0)
	lw	a6,-20(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	ip4_output_if
	mv	a5,a0
.L72:
	.loc 1 1100 1
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
	.size	ip4_output, .-ip4_output
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/mem.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/stats.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/ip4.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/icmp.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/igmp.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/raw_priv.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/udp.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/iana.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/tcp_priv.h"
	.file 22 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/udp.h"
	.file 23 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/inet_chksum.h"
	.file 24 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1151
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1f
	.4byte	.LASF232
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x20
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xd
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xd
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0xd
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x21
	.byte	0x4
	.uleb128 0x1c
	.4byte	0x84
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x10
	.4byte	0x8b
	.uleb128 0x8
	.4byte	0x92
	.uleb128 0x8
	.4byte	0xa6
	.uleb128 0x1c
	.4byte	0x9c
	.uleb128 0x22
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x32
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x3
	.byte	0x25
	.byte	0x13
	.4byte	0x40
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x47
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xbf
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0xa7
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xcb
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x4
	.byte	0x80
	.byte	0x11
	.4byte	0xb3
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xd7
	.uleb128 0x1d
	.byte	0x5
	.4byte	0x32
	.byte	0x5
	.byte	0x35
	.4byte	0x192
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.sleb128 -1
	.uleb128 0x9
	.4byte	.LASF26
	.sleb128 -2
	.uleb128 0x9
	.4byte	.LASF27
	.sleb128 -3
	.uleb128 0x9
	.4byte	.LASF28
	.sleb128 -4
	.uleb128 0x9
	.4byte	.LASF29
	.sleb128 -5
	.uleb128 0x9
	.4byte	.LASF30
	.sleb128 -6
	.uleb128 0x9
	.4byte	.LASF31
	.sleb128 -7
	.uleb128 0x9
	.4byte	.LASF32
	.sleb128 -8
	.uleb128 0x9
	.4byte	.LASF33
	.sleb128 -9
	.uleb128 0x9
	.4byte	.LASF34
	.sleb128 -10
	.uleb128 0x9
	.4byte	.LASF35
	.sleb128 -11
	.uleb128 0x9
	.4byte	.LASF36
	.sleb128 -12
	.uleb128 0x9
	.4byte	.LASF37
	.sleb128 -13
	.uleb128 0x9
	.4byte	.LASF38
	.sleb128 -14
	.uleb128 0x9
	.4byte	.LASF39
	.sleb128 -15
	.uleb128 0x9
	.4byte	.LASF40
	.sleb128 -16
	.byte	0
	.uleb128 0x5
	.4byte	.LASF41
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xef
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x10
	.byte	0x6
	.byte	0xba
	.4byte	0x213
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x6
	.byte	0xbc
	.byte	0x10
	.4byte	0x213
	.byte	0
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x84
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x6
	.byte	0xc8
	.byte	0x9
	.4byte	0xfb
	.byte	0x8
	.uleb128 0xb
	.string	"len"
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0xfb
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x6
	.byte	0xd0
	.byte	0x8
	.4byte	0xe3
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x6
	.byte	0xd3
	.byte	0x8
	.4byte	0xe3
	.byte	0xd
	.uleb128 0xb
	.string	"ref"
	.byte	0x6
	.byte	0xda
	.byte	0x8
	.4byte	0xe3
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x6
	.byte	0xdd
	.byte	0x8
	.4byte	0xe3
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x19e
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x4
	.byte	0x7
	.byte	0x33
	.4byte	0x232
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x7
	.byte	0x34
	.byte	0x9
	.4byte	0x113
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF51
	.byte	0x7
	.byte	0x39
	.byte	0x19
	.4byte	0x218
	.uleb128 0x10
	.4byte	0x232
	.uleb128 0x23
	.4byte	.LASF52
	.byte	0x8
	.2byte	0x126
	.byte	0x14
	.4byte	0x232
	.uleb128 0x10
	.4byte	0x243
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x18e
	.byte	0x18
	.4byte	0x250
	.uleb128 0x5
	.4byte	.LASF53
	.byte	0x9
	.byte	0x43
	.byte	0xf
	.4byte	0xfb
	.uleb128 0x1d
	.byte	0x7
	.4byte	0x39
	.byte	0xa
	.byte	0x34
	.4byte	0x2db
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0xa
	.byte	0xb
	.byte	0x62
	.4byte	0x329
	.uleb128 0xb
	.string	"err"
	.byte	0xb
	.byte	0x66
	.byte	0x9
	.4byte	0xfb
	.byte	0
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0xb
	.byte	0x67
	.byte	0xe
	.4byte	0x262
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xb
	.byte	0x68
	.byte	0xe
	.4byte	0x262
	.byte	0x4
	.uleb128 0xb
	.string	"max"
	.byte	0xb
	.byte	0x69
	.byte	0xe
	.4byte	0x262
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0xb
	.byte	0x6a
	.byte	0x9
	.4byte	0xfb
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x2db
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x18
	.byte	0xb
	.byte	0x40
	.4byte	0x3d6
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xb
	.byte	0x41
	.byte	0x9
	.4byte	0xfb
	.byte	0
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xb
	.byte	0x42
	.byte	0x9
	.4byte	0xfb
	.byte	0x2
	.uleb128 0xb
	.string	"fw"
	.byte	0xb
	.byte	0x43
	.byte	0x9
	.4byte	0xfb
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xb
	.byte	0x44
	.byte	0x9
	.4byte	0xfb
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xb
	.byte	0x45
	.byte	0x9
	.4byte	0xfb
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xb
	.byte	0x46
	.byte	0x9
	.4byte	0xfb
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xb
	.byte	0x47
	.byte	0x9
	.4byte	0xfb
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xb
	.byte	0x48
	.byte	0x9
	.4byte	0xfb
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xb
	.byte	0x49
	.byte	0x9
	.4byte	0xfb
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xb
	.byte	0x4a
	.byte	0x9
	.4byte	0xfb
	.byte	0x12
	.uleb128 0xb
	.string	"err"
	.byte	0xb
	.byte	0x4b
	.byte	0x9
	.4byte	0xfb
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xb
	.byte	0x4c
	.byte	0x9
	.4byte	0xfb
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x1c
	.byte	0xb
	.byte	0x50
	.4byte	0x499
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xb
	.byte	0x51
	.byte	0x9
	.4byte	0xfb
	.byte	0
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xb
	.byte	0x52
	.byte	0x9
	.4byte	0xfb
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xb
	.byte	0x53
	.byte	0x9
	.4byte	0xfb
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xb
	.byte	0x54
	.byte	0x9
	.4byte	0xfb
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xb
	.byte	0x55
	.byte	0x9
	.4byte	0xfb
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xb
	.byte	0x56
	.byte	0x9
	.4byte	0xfb
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xb
	.byte	0x57
	.byte	0x9
	.4byte	0xfb
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xb
	.byte	0x58
	.byte	0x9
	.4byte	0xfb
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xb
	.byte	0x59
	.byte	0x9
	.4byte	0xfb
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xb
	.byte	0x5a
	.byte	0x9
	.4byte	0xfb
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xb
	.byte	0x5b
	.byte	0x9
	.4byte	0xfb
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xb
	.byte	0x5c
	.byte	0x9
	.4byte	0xfb
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xb
	.byte	0x5d
	.byte	0x9
	.4byte	0xfb
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xb
	.byte	0x5e
	.byte	0x9
	.4byte	0xfb
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x6
	.byte	0xb
	.byte	0x6e
	.4byte	0x4cd
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xb
	.byte	0x6f
	.byte	0x9
	.4byte	0xfb
	.byte	0
	.uleb128 0xb
	.string	"max"
	.byte	0xb
	.byte	0x70
	.byte	0x9
	.4byte	0xfb
	.byte	0x2
	.uleb128 0xb
	.string	"err"
	.byte	0xb
	.byte	0x71
	.byte	0x9
	.4byte	0xfb
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x12
	.byte	0xb
	.byte	0x75
	.4byte	0x501
	.uleb128 0xb
	.string	"sem"
	.byte	0xb
	.byte	0x76
	.byte	0x18
	.4byte	0x499
	.byte	0
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xb
	.byte	0x77
	.byte	0x18
	.4byte	0x499
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0xb
	.byte	0x78
	.byte	0x18
	.4byte	0x499
	.byte	0xc
	.byte	0
	.uleb128 0x24
	.4byte	.LASF97
	.2byte	0x108
	.byte	0xb
	.byte	0xeb
	.byte	0x8
	.4byte	0x597
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0xb
	.byte	0xee
	.byte	0x16
	.4byte	0x32e
	.byte	0
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0xb
	.byte	0xf2
	.byte	0x16
	.4byte	0x32e
	.byte	0x18
	.uleb128 0xb
	.string	"ip"
	.byte	0xb
	.byte	0xfa
	.byte	0x16
	.4byte	0x32e
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xb
	.byte	0xfe
	.byte	0x16
	.4byte	0x32e
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0xb
	.2byte	0x102
	.byte	0x15
	.4byte	0x3d6
	.byte	0x60
	.uleb128 0xe
	.string	"udp"
	.byte	0xb
	.2byte	0x106
	.byte	0x16
	.4byte	0x32e
	.byte	0x7c
	.uleb128 0xe
	.string	"tcp"
	.byte	0xb
	.2byte	0x10a
	.byte	0x16
	.4byte	0x32e
	.byte	0x94
	.uleb128 0xe
	.string	"mem"
	.byte	0xb
	.2byte	0x10e
	.byte	0x14
	.4byte	0x2db
	.byte	0xac
	.uleb128 0x6
	.4byte	.LASF102
	.byte	0xb
	.2byte	0x112
	.byte	0x15
	.4byte	0x597
	.byte	0xb8
	.uleb128 0xe
	.string	"sys"
	.byte	0xb
	.2byte	0x116
	.byte	0x14
	.4byte	0x4cd
	.byte	0xf4
	.byte	0
	.uleb128 0x16
	.4byte	0x329
	.4byte	0x5a7
	.uleb128 0x17
	.4byte	0x6a
	.byte	0xe
	.byte	0
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0xb
	.2byte	0x133
	.byte	0x16
	.4byte	0x501
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x1
	.4byte	0x39
	.byte	0xc
	.byte	0x71
	.byte	0x6
	.4byte	0x5de
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
	.byte	0
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0x1
	.4byte	0x39
	.byte	0xc
	.byte	0x9f
	.byte	0x6
	.4byte	0x5fc
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x601
	.uleb128 0x25
	.4byte	.LASF113
	.byte	0x54
	.byte	0xc
	.2byte	0x10d
	.byte	0x8
	.4byte	0x727
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0xc
	.2byte	0x110
	.byte	0x11
	.4byte	0x5fc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF114
	.byte	0xc
	.2byte	0x115
	.byte	0xd
	.4byte	0x243
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0xc
	.2byte	0x116
	.byte	0xd
	.4byte	0x243
	.byte	0x8
	.uleb128 0xe
	.string	"gw"
	.byte	0xc
	.2byte	0x117
	.byte	0xd
	.4byte	0x243
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF116
	.byte	0xc
	.2byte	0x129
	.byte	0x12
	.4byte	0x72c
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF117
	.byte	0xc
	.2byte	0x12f
	.byte	0x13
	.4byte	0x751
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF118
	.byte	0xc
	.2byte	0x134
	.byte	0x17
	.4byte	0x780
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF119
	.byte	0xc
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x7a5
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF120
	.byte	0xc
	.2byte	0x144
	.byte	0x1c
	.4byte	0x7a5
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF121
	.byte	0xc
	.2byte	0x14c
	.byte	0x9
	.4byte	0x84
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF122
	.byte	0xc
	.2byte	0x14e
	.byte	0x9
	.4byte	0x7eb
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF123
	.byte	0xc
	.2byte	0x152
	.byte	0xf
	.4byte	0x97
	.byte	0x38
	.uleb128 0xe
	.string	"mtu"
	.byte	0xc
	.2byte	0x158
	.byte	0x9
	.4byte	0xfb
	.byte	0x3c
	.uleb128 0x6
	.4byte	.LASF124
	.byte	0xc
	.2byte	0x15e
	.byte	0x8
	.4byte	0x7fb
	.byte	0x3e
	.uleb128 0x6
	.4byte	.LASF125
	.byte	0xc
	.2byte	0x160
	.byte	0x8
	.4byte	0xe3
	.byte	0x44
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0xc
	.2byte	0x162
	.byte	0x8
	.4byte	0xe3
	.byte	0x45
	.uleb128 0x6
	.4byte	.LASF126
	.byte	0xc
	.2byte	0x164
	.byte	0x8
	.4byte	0x80b
	.byte	0x46
	.uleb128 0xe
	.string	"num"
	.byte	0xc
	.2byte	0x167
	.byte	0x8
	.4byte	0xe3
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF127
	.byte	0xc
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x7c1
	.byte	0x4c
	.uleb128 0x6
	.4byte	.LASF128
	.byte	0xc
	.2byte	0x185
	.byte	0xf
	.4byte	0x820
	.byte	0x50
	.byte	0
	.uleb128 0x10
	.4byte	0x601
	.uleb128 0x5
	.4byte	.LASF129
	.byte	0xc
	.byte	0xb5
	.byte	0x11
	.4byte	0x738
	.uleb128 0x8
	.4byte	0x73d
	.uleb128 0x18
	.4byte	0x192
	.4byte	0x751
	.uleb128 0x2
	.4byte	0x213
	.uleb128 0x2
	.4byte	0x5fc
	.byte	0
	.uleb128 0x5
	.4byte	.LASF130
	.byte	0xc
	.byte	0xc0
	.byte	0x11
	.4byte	0x75d
	.uleb128 0x8
	.4byte	0x762
	.uleb128 0x18
	.4byte	0x192
	.4byte	0x77b
	.uleb128 0x2
	.4byte	0x5fc
	.uleb128 0x2
	.4byte	0x213
	.uleb128 0x2
	.4byte	0x77b
	.byte	0
	.uleb128 0x8
	.4byte	0x23e
	.uleb128 0x5
	.4byte	.LASF131
	.byte	0xc
	.byte	0xd7
	.byte	0x11
	.4byte	0x78c
	.uleb128 0x8
	.4byte	0x791
	.uleb128 0x18
	.4byte	0x192
	.4byte	0x7a5
	.uleb128 0x2
	.4byte	0x5fc
	.uleb128 0x2
	.4byte	0x213
	.byte	0
	.uleb128 0x5
	.4byte	.LASF132
	.byte	0xc
	.byte	0xd9
	.byte	0x10
	.4byte	0x7b1
	.uleb128 0x8
	.4byte	0x7b6
	.uleb128 0x26
	.4byte	0x7c1
	.uleb128 0x2
	.4byte	0x5fc
	.byte	0
	.uleb128 0x5
	.4byte	.LASF133
	.byte	0xc
	.byte	0xdc
	.byte	0x11
	.4byte	0x7cd
	.uleb128 0x8
	.4byte	0x7d2
	.uleb128 0x18
	.4byte	0x192
	.4byte	0x7eb
	.uleb128 0x2
	.4byte	0x5fc
	.uleb128 0x2
	.4byte	0x77b
	.uleb128 0x2
	.4byte	0x5de
	.byte	0
	.uleb128 0x16
	.4byte	0x84
	.4byte	0x7fb
	.uleb128 0x17
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.4byte	0xe3
	.4byte	0x80b
	.uleb128 0x17
	.4byte	0x6a
	.byte	0x5
	.byte	0
	.uleb128 0x16
	.4byte	0x8b
	.4byte	0x81b
	.uleb128 0x17
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.string	"acd"
	.uleb128 0x8
	.4byte	0x81b
	.uleb128 0x15
	.4byte	.LASF134
	.byte	0xc
	.2byte	0x1a7
	.byte	0x16
	.4byte	0x5fc
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0xc
	.2byte	0x1ab
	.byte	0x16
	.4byte	0x5fc
	.uleb128 0xc
	.4byte	.LASF136
	.byte	0x4
	.byte	0xd
	.byte	0x35
	.4byte	0x859
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0xd
	.byte	0x36
	.byte	0x9
	.4byte	0x113
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF137
	.byte	0xd
	.byte	0x3d
	.byte	0x20
	.4byte	0x83f
	.uleb128 0xc
	.4byte	.LASF138
	.byte	0x14
	.byte	0xd
	.byte	0x49
	.4byte	0x8f4
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0xd
	.byte	0x4b
	.byte	0x8
	.4byte	0xe3
	.byte	0
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0xd
	.byte	0x4d
	.byte	0x8
	.4byte	0xe3
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0xd
	.byte	0x4f
	.byte	0x9
	.4byte	0xfb
	.byte	0x2
	.uleb128 0xb
	.string	"_id"
	.byte	0xd
	.byte	0x51
	.byte	0x9
	.4byte	0xfb
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0xd
	.byte	0x53
	.byte	0x9
	.4byte	0xfb
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0xd
	.byte	0x59
	.byte	0x8
	.4byte	0xe3
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF144
	.byte	0xd
	.byte	0x5b
	.byte	0x8
	.4byte	0xe3
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0xd
	.byte	0x5d
	.byte	0x9
	.4byte	0xfb
	.byte	0xa
	.uleb128 0xb
	.string	"src"
	.byte	0xd
	.byte	0x5f
	.byte	0x10
	.4byte	0x859
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0xd
	.byte	0x60
	.byte	0x10
	.4byte	0x859
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.4byte	0x865
	.uleb128 0xc
	.4byte	.LASF147
	.byte	0x18
	.byte	0xe
	.byte	0x76
	.4byte	0x954
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0xe
	.byte	0x79
	.byte	0x11
	.4byte	0x5fc
	.byte	0
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0xe
	.byte	0x7b
	.byte	0x11
	.4byte	0x5fc
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0xe
	.byte	0x7e
	.byte	0x18
	.4byte	0x954
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0xe
	.byte	0x85
	.byte	0x9
	.4byte	0xfb
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0xe
	.byte	0x87
	.byte	0xd
	.4byte	0x243
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0xe
	.byte	0x89
	.byte	0xd
	.4byte	0x243
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.4byte	0x8f4
	.uleb128 0x28
	.4byte	.LASF154
	.byte	0xe
	.byte	0x8b
	.byte	0x1a
	.4byte	0x8f9
	.uleb128 0x12
	.4byte	.LASF155
	.byte	0x1
	.4byte	0x39
	.byte	0xf
	.byte	0x37
	.byte	0x6
	.4byte	0x99b
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0
	.uleb128 0x3
	.4byte	.LASF157
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF158
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF160
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF161
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF162
	.byte	0x10
	.byte	0x10
	.byte	0x4a
	.4byte	0x9f6
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x10
	.byte	0x4c
	.byte	0x16
	.4byte	0x9f6
	.byte	0
	.uleb128 0x1
	.4byte	.LASF163
	.byte	0x10
	.byte	0x4e
	.byte	0xe
	.4byte	0x232
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF164
	.byte	0x10
	.byte	0x50
	.byte	0x8
	.4byte	0xe3
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF165
	.byte	0x10
	.byte	0x52
	.byte	0x8
	.4byte	0xe3
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF166
	.byte	0x10
	.byte	0x54
	.byte	0x9
	.4byte	0xfb
	.byte	0xa
	.uleb128 0xb
	.string	"use"
	.byte	0x10
	.byte	0x56
	.byte	0x8
	.4byte	0xe3
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x99b
	.uleb128 0x12
	.4byte	.LASF167
	.byte	0x1
	.4byte	0x39
	.byte	0x11
	.byte	0x33
	.byte	0xe
	.4byte	0xa1f
	.uleb128 0x3
	.4byte	.LASF168
	.byte	0
	.uleb128 0x3
	.4byte	.LASF169
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF170
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF171
	.byte	0x11
	.byte	0x38
	.byte	0x3
	.4byte	0x9fb
	.uleb128 0xc
	.4byte	.LASF172
	.byte	0x8
	.byte	0x12
	.byte	0x35
	.4byte	0xa6c
	.uleb128 0xb
	.string	"src"
	.byte	0x12
	.byte	0x36
	.byte	0x9
	.4byte	0xfb
	.byte	0
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0x12
	.byte	0x37
	.byte	0x9
	.4byte	0xfb
	.byte	0x2
	.uleb128 0xb
	.string	"len"
	.byte	0x12
	.byte	0x38
	.byte	0x9
	.4byte	0xfb
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF173
	.byte	0x12
	.byte	0x39
	.byte	0x9
	.4byte	0xfb
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.4byte	0xa2b
	.uleb128 0x12
	.4byte	.LASF174
	.byte	0x2
	.4byte	0x47
	.byte	0x13
	.byte	0x3e
	.byte	0x6
	.4byte	0xadc
	.uleb128 0x3
	.4byte	.LASF175
	.byte	0x19
	.uleb128 0x3
	.4byte	.LASF176
	.byte	0x43
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0x45
	.uleb128 0x3
	.4byte	.LASF179
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF180
	.byte	0x7b
	.uleb128 0x3
	.4byte	.LASF181
	.byte	0x89
	.uleb128 0x3
	.4byte	.LASF182
	.byte	0xa1
	.uleb128 0x3
	.4byte	.LASF183
	.byte	0xa2
	.uleb128 0x13
	.4byte	.LASF184
	.2byte	0x1bb
	.uleb128 0x13
	.4byte	.LASF185
	.2byte	0x1d1
	.uleb128 0x13
	.4byte	.LASF186
	.2byte	0x75b
	.uleb128 0x13
	.4byte	.LASF187
	.2byte	0x14e9
	.uleb128 0x13
	.4byte	.LASF188
	.2byte	0x22b3
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF189
	.byte	0x6f
	.byte	0xe
	.4byte	0xfb
	.uleb128 0x5
	.byte	0x3
	.4byte	ip_id
	.uleb128 0x1a
	.4byte	.LASF190
	.byte	0x73
	.byte	0x16
	.4byte	0x5fc
	.uleb128 0x5
	.byte	0x3
	.4byte	ip4_default_multicast_netif
	.uleb128 0xf
	.4byte	.LASF191
	.byte	0x14
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0xb1e
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0xf
	.4byte	.LASF192
	.byte	0x14
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0xb3e
	.uleb128 0x2
	.4byte	0x86
	.uleb128 0x2
	.4byte	0xa1
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0x19
	.4byte	.LASF193
	.2byte	0x120
	.4byte	0xe3
	.4byte	0xb58
	.uleb128 0x2
	.4byte	0x213
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0x14
	.4byte	.LASF195
	.byte	0xf
	.byte	0x51
	.4byte	0xb6e
	.uleb128 0x2
	.4byte	0x213
	.uleb128 0x2
	.4byte	0x965
	.byte	0
	.uleb128 0x19
	.4byte	.LASF194
	.2byte	0x11f
	.4byte	0xe3
	.4byte	0xb88
	.uleb128 0x2
	.4byte	0x213
	.uleb128 0x2
	.4byte	0x107
	.byte	0
	.uleb128 0x14
	.4byte	.LASF196
	.byte	0x10
	.byte	0x5f
	.4byte	0xba3
	.uleb128 0x2
	.4byte	0x213
	.uleb128 0x2
	.4byte	0x5fc
	.uleb128 0x2
	.4byte	0x77b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF197
	.byte	0xf
	.byte	0x50
	.4byte	0xbb9
	.uleb128 0x2
	.4byte	0x213
	.uleb128 0x2
	.4byte	0x5fc
	.byte	0
	.uleb128 0x14
	.4byte	.LASF198
	.byte	0x15
	.byte	0x4d
	.4byte	0xbcf
	.uleb128 0x2
	.4byte	0x213
	.uleb128 0x2
	.4byte	0x5fc
	.byte	0
	.uleb128 0x14
	.4byte	.LASF199
	.byte	0x16
	.byte	0xa3
	.4byte	0xbe5
	.uleb128 0x2
	.4byte	0x213
	.uleb128 0x2
	.4byte	0x5fc
	.byte	0
	.uleb128 0x19
	.4byte	.LASF200
	.2byte	0x122
	.4byte	0xe3
	.4byte	0xbff
	.uleb128 0x2
	.4byte	0x213
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0xf
	.4byte	.LASF201
	.byte	0x11
	.byte	0x3b
	.byte	0x13
	.4byte	0xa1f
	.4byte	0xc1a
	.uleb128 0x2
	.4byte	0x213
	.uleb128 0x2
	.4byte	0x5fc
	.byte	0
	.uleb128 0xf
	.4byte	.LASF202
	.byte	0x10
	.byte	0x5e
	.byte	0x14
	.4byte	0x9f6
	.4byte	0xc35
	.uleb128 0x2
	.4byte	0x5fc
	.uleb128 0x2
	.4byte	0x77b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF203
	.byte	0x17
	.byte	0x4a
	.byte	0x7
	.4byte	0xfb
	.4byte	0xc50
	.uleb128 0x2
	.4byte	0x9c
	.uleb128 0x2
	.4byte	0xfb
	.byte	0
	.uleb128 0x29
	.4byte	.LASF204
	.byte	0x6
	.2byte	0x11a
	.byte	0x6
	.4byte	0xc68
	.uleb128 0x2
	.4byte	0x213
	.uleb128 0x2
	.4byte	0xfb
	.byte	0
	.uleb128 0xf
	.4byte	.LASF205
	.byte	0x18
	.byte	0x60
	.byte	0x7
	.4byte	0xfb
	.4byte	0xc7e
	.uleb128 0x2
	.4byte	0xfb
	.byte	0
	.uleb128 0x19
	.4byte	.LASF206
	.2byte	0x125
	.4byte	0xe3
	.4byte	0xc93
	.uleb128 0x2
	.4byte	0x213
	.byte	0
	.uleb128 0xf
	.4byte	.LASF207
	.byte	0x7
	.byte	0xa0
	.byte	0x6
	.4byte	0xe3
	.4byte	0xcae
	.uleb128 0x2
	.4byte	0x113
	.uleb128 0x2
	.4byte	0xcae
	.byte	0
	.uleb128 0x8
	.4byte	0x727
	.uleb128 0x11
	.4byte	.LASF209
	.2byte	0x43d
	.4byte	0x192
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd34
	.uleb128 0x4
	.string	"p"
	.2byte	0x43d
	.byte	0x19
	.4byte	0x213
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"src"
	.2byte	0x43d
	.byte	0x2e
	.4byte	0x77b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF146
	.2byte	0x43d
	.byte	0x45
	.4byte	0x77b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.string	"ttl"
	.2byte	0x43e
	.byte	0x11
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x4
	.string	"tos"
	.2byte	0x43e
	.byte	0x1b
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x7
	.4byte	.LASF208
	.2byte	0x43e
	.byte	0x25
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0xa
	.4byte	.LASF113
	.2byte	0x440
	.byte	0x11
	.4byte	0x5fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF210
	.2byte	0x37d
	.4byte	0x192
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe42
	.uleb128 0x4
	.string	"p"
	.2byte	0x37d
	.byte	0x24
	.4byte	0x213
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.string	"src"
	.2byte	0x37d
	.byte	0x39
	.4byte	0x77b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.4byte	.LASF146
	.2byte	0x37d
	.byte	0x50
	.4byte	0x77b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.string	"ttl"
	.2byte	0x37e
	.byte	0x1c
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x4
	.string	"tos"
	.2byte	0x37e
	.byte	0x26
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x7
	.4byte	.LASF208
	.2byte	0x37e
	.byte	0x30
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -63
	.uleb128 0x7
	.4byte	.LASF113
	.2byte	0x37e
	.byte	0x45
	.4byte	0x5fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x7
	.4byte	.LASF211
	.2byte	0x37e
	.byte	0x52
	.4byte	0x84
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x7
	.4byte	.LASF212
	.2byte	0x37f
	.byte	0x1d
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.4byte	.LASF213
	.2byte	0x382
	.byte	0x12
	.4byte	0xe42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.4byte	.LASF214
	.2byte	0x383
	.byte	0xe
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.4byte	.LASF215
	.2byte	0x385
	.byte	0x9
	.4byte	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0xa
	.4byte	.LASF216
	.2byte	0x38f
	.byte	0xb
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0xa
	.4byte	.LASF217
	.2byte	0x391
	.byte	0xb
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1b
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x394
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x865
	.uleb128 0x11
	.4byte	.LASF218
	.2byte	0x370
	.4byte	0x192
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec8
	.uleb128 0x4
	.string	"p"
	.2byte	0x370
	.byte	0x20
	.4byte	0x213
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"src"
	.2byte	0x370
	.byte	0x35
	.4byte	0x77b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF146
	.2byte	0x370
	.byte	0x4c
	.4byte	0x77b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.string	"ttl"
	.2byte	0x371
	.byte	0x18
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x4
	.string	"tos"
	.2byte	0x371
	.byte	0x22
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x7
	.4byte	.LASF208
	.2byte	0x372
	.byte	0x18
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -31
	.uleb128 0x7
	.4byte	.LASF113
	.2byte	0x372
	.byte	0x2d
	.4byte	0x5fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x11
	.4byte	.LASF219
	.2byte	0x352
	.4byte	0x192
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf85
	.uleb128 0x4
	.string	"p"
	.2byte	0x352
	.byte	0x20
	.4byte	0x213
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"src"
	.2byte	0x352
	.byte	0x35
	.4byte	0x77b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF146
	.2byte	0x352
	.byte	0x4c
	.4byte	0x77b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.string	"ttl"
	.2byte	0x353
	.byte	0x18
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x4
	.string	"tos"
	.2byte	0x353
	.byte	0x22
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x7
	.4byte	.LASF208
	.2byte	0x353
	.byte	0x2c
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x7
	.4byte	.LASF113
	.2byte	0x353
	.byte	0x41
	.4byte	0x5fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.4byte	.LASF211
	.2byte	0x353
	.byte	0x4e
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.4byte	.LASF212
	.2byte	0x354
	.byte	0x19
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.4byte	.LASF220
	.2byte	0x357
	.byte	0x15
	.4byte	0x77b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF221
	.2byte	0x35e
	.byte	0x9
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x11
	.4byte	.LASF222
	.2byte	0x343
	.4byte	0x192
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1006
	.uleb128 0x4
	.string	"p"
	.2byte	0x343
	.byte	0x1c
	.4byte	0x213
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"src"
	.2byte	0x343
	.byte	0x31
	.4byte	0x77b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF146
	.2byte	0x343
	.byte	0x48
	.4byte	0x77b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.string	"ttl"
	.2byte	0x344
	.byte	0x14
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x4
	.string	"tos"
	.2byte	0x344
	.byte	0x1e
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x7
	.4byte	.LASF208
	.2byte	0x345
	.byte	0x14
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -31
	.uleb128 0x7
	.4byte	.LASF113
	.2byte	0x345
	.byte	0x29
	.4byte	0x5fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x11
	.4byte	.LASF223
	.2byte	0x1d0
	.4byte	0x192
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10cc
	.uleb128 0x4
	.string	"p"
	.2byte	0x1d0
	.byte	0x18
	.4byte	0x213
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.string	"inp"
	.2byte	0x1d0
	.byte	0x29
	.4byte	0x5fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.4byte	.LASF213
	.2byte	0x1d2
	.byte	0x18
	.4byte	0x954
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.4byte	.LASF113
	.2byte	0x1d3
	.byte	0x11
	.4byte	0x5fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF224
	.2byte	0x1d4
	.byte	0x9
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0xa
	.4byte	.LASF225
	.2byte	0x1d5
	.byte	0x9
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.4byte	.LASF226
	.2byte	0x1d7
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF227
	.2byte	0x1da
	.byte	0x15
	.4byte	0xa1f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2b
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x10b2
	.uleb128 0xa
	.4byte	.LASF228
	.2byte	0x235
	.byte	0x12
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xa
	.4byte	.LASF229
	.2byte	0x270
	.byte	0x1d
	.4byte	0x10cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xa6c
	.uleb128 0x2c
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x19c
	.byte	0x1
	.4byte	0x2b
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10fc
	.uleb128 0x7
	.4byte	.LASF113
	.2byte	0x19c
	.byte	0x20
	.4byte	0x5fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF230
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.4byte	0x5fc
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1133
	.uleb128 0x1e
	.4byte	.LASF146
	.byte	0x9c
	.byte	0x1d
	.4byte	0x77b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.4byte	.LASF113
	.byte	0x9f
	.byte	0x11
	.4byte	0x5fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF234
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF231
	.byte	0x79
	.byte	0x2f
	.4byte	0x5fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x1a
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
	.uleb128 0x37
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.4byte	0x5c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF57:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF157:
	.string	"ICMP_DUR_HOST"
.LASF183:
	.string	"LWIP_IANA_PORT_SNMP_TRAP"
.LASF184:
	.string	"LWIP_IANA_PORT_HTTPS"
.LASF116:
	.string	"input"
.LASF206:
	.string	"pbuf_free"
.LASF107:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF149:
	.string	"current_input_netif"
.LASF46:
	.string	"flags"
.LASF39:
	.string	"ERR_CLSD"
.LASF32:
	.string	"ERR_USE"
.LASF40:
	.string	"ERR_ARG"
.LASF89:
	.string	"rx_report"
.LASF207:
	.string	"ip4_addr_isbroadcast_u32"
.LASF10:
	.string	"unsigned int"
.LASF42:
	.string	"next"
.LASF156:
	.string	"ICMP_DUR_NET"
.LASF41:
	.string	"err_t"
.LASF118:
	.string	"linkoutput"
.LASF163:
	.string	"group_address"
.LASF21:
	.string	"u16_t"
.LASF143:
	.string	"_ttl"
.LASF219:
	.string	"ip4_output_if_opt"
.LASF194:
	.string	"pbuf_header_force"
.LASF70:
	.string	"stats_mem"
.LASF171:
	.string	"raw_input_state_t"
.LASF212:
	.string	"optlen"
.LASF231:
	.string	"default_multicast_netif"
.LASF150:
	.string	"current_ip4_header"
.LASF130:
	.string	"netif_output_fn"
.LASF205:
	.string	"lwip_htons"
.LASF68:
	.string	"MEMP_PBUF_POOL"
.LASF104:
	.string	"lwip_stats"
.LASF185:
	.string	"LWIP_IANA_PORT_SMTPS"
.LASF38:
	.string	"ERR_RST"
.LASF197:
	.string	"icmp_input"
.LASF33:
	.string	"ERR_ALREADY"
.LASF93:
	.string	"stats_syselem"
.LASF227:
	.string	"raw_status"
.LASF129:
	.string	"netif_input_fn"
.LASF18:
	.string	"uint32_t"
.LASF14:
	.string	"int8_t"
.LASF64:
	.string	"MEMP_IGMP_GROUP"
.LASF188:
	.string	"LWIP_IANA_PORT_SECURE_MQTT"
.LASF62:
	.string	"MEMP_TCPIP_MSG_API"
.LASF178:
	.string	"LWIP_IANA_PORT_TFTP"
.LASF83:
	.string	"opterr"
.LASF221:
	.string	"result"
.LASF95:
	.string	"mutex"
.LASF136:
	.string	"ip4_addr_packed"
.LASF73:
	.string	"illegal"
.LASF103:
	.string	"ip_addr_any"
.LASF15:
	.string	"int16_t"
.LASF134:
	.string	"netif_list"
.LASF124:
	.string	"hwaddr"
.LASF99:
	.string	"etharp"
.LASF9:
	.string	"long long unsigned int"
.LASF234:
	.string	"ip4_set_default_multicast_netif"
.LASF195:
	.string	"icmp_dest_unreach"
.LASF101:
	.string	"igmp"
.LASF152:
	.string	"current_iphdr_src"
.LASF216:
	.string	"ip_hlen"
.LASF51:
	.string	"ip4_addr_t"
.LASF145:
	.string	"_chksum"
.LASF125:
	.string	"hwaddr_len"
.LASF142:
	.string	"_offset"
.LASF30:
	.string	"ERR_VAL"
.LASF233:
	.string	"ip4_input_accept"
.LASF161:
	.string	"ICMP_DUR_SR"
.LASF63:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF72:
	.string	"used"
.LASF97:
	.string	"stats_"
.LASF45:
	.string	"type_internal"
.LASF44:
	.string	"tot_len"
.LASF13:
	.string	"size_t"
.LASF43:
	.string	"payload"
.LASF198:
	.string	"tcp_input"
.LASF165:
	.string	"group_state"
.LASF117:
	.string	"output"
.LASF48:
	.string	"pbuf"
.LASF228:
	.string	"allsystems"
.LASF217:
	.string	"optlen_aligned"
.LASF176:
	.string	"LWIP_IANA_PORT_DHCP_SERVER"
.LASF174:
	.string	"lwip_iana_port_number"
.LASF182:
	.string	"LWIP_IANA_PORT_SNMP"
.LASF167:
	.string	"raw_input_state"
.LASF69:
	.string	"MEMP_MAX"
.LASF20:
	.string	"s8_t"
.LASF61:
	.string	"MEMP_NETCONN"
.LASF88:
	.string	"rx_general"
.LASF31:
	.string	"ERR_WOULDBLOCK"
.LASF27:
	.string	"ERR_TIMEOUT"
.LASF147:
	.string	"ip_globals"
.LASF67:
	.string	"MEMP_PBUF"
.LASF122:
	.string	"client_data"
.LASF223:
	.string	"ip4_input"
.LASF12:
	.string	"char"
.LASF210:
	.string	"ip4_output_if_opt_src"
.LASF204:
	.string	"pbuf_realloc"
.LASF53:
	.string	"mem_size_t"
.LASF133:
	.string	"netif_igmp_mac_filter_fn"
.LASF127:
	.string	"igmp_mac_filter"
.LASF74:
	.string	"stats_proto"
.LASF189:
	.string	"ip_id"
.LASF208:
	.string	"proto"
.LASF196:
	.string	"igmp_input"
.LASF112:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF16:
	.string	"uint8_t"
.LASF144:
	.string	"_proto"
.LASF200:
	.string	"pbuf_remove_header"
.LASF220:
	.string	"src_used"
.LASF123:
	.string	"hostname"
.LASF120:
	.string	"link_callback"
.LASF60:
	.string	"MEMP_NETBUF"
.LASF115:
	.string	"netmask"
.LASF8:
	.string	"long long int"
.LASF211:
	.string	"ip_options"
.LASF36:
	.string	"ERR_IF"
.LASF119:
	.string	"status_callback"
.LASF56:
	.string	"MEMP_TCP_PCB"
.LASF102:
	.string	"memp"
.LASF19:
	.string	"u8_t"
.LASF139:
	.string	"_v_hl"
.LASF215:
	.string	"chk_sum"
.LASF186:
	.string	"LWIP_IANA_PORT_MQTT"
.LASF191:
	.string	"memset"
.LASF154:
	.string	"ip_data"
.LASF168:
	.string	"RAW_INPUT_NONE"
.LASF78:
	.string	"chkerr"
.LASF159:
	.string	"ICMP_DUR_PORT"
.LASF201:
	.string	"raw_input"
.LASF202:
	.string	"igmp_lookfor_group"
.LASF151:
	.string	"current_ip_header_tot_len"
.LASF59:
	.string	"MEMP_ALTCP_PCB"
.LASF135:
	.string	"netif_default"
.LASF111:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF203:
	.string	"inet_chksum"
.LASF11:
	.string	"long double"
.LASF17:
	.string	"uint16_t"
.LASF169:
	.string	"RAW_INPUT_EATEN"
.LASF226:
	.string	"check_ip_src"
.LASF47:
	.string	"if_idx"
.LASF137:
	.string	"ip4_addr_p_t"
.LASF26:
	.string	"ERR_BUF"
.LASF148:
	.string	"current_netif"
.LASF23:
	.string	"u32_t"
.LASF4:
	.string	"short int"
.LASF100:
	.string	"icmp"
.LASF6:
	.string	"long int"
.LASF81:
	.string	"rterr"
.LASF71:
	.string	"avail"
.LASF65:
	.string	"MEMP_SYS_TIMEOUT"
.LASF222:
	.string	"ip4_output_if"
.LASF55:
	.string	"MEMP_UDP_PCB"
.LASF170:
	.string	"RAW_INPUT_DELIVERED"
.LASF96:
	.string	"mbox"
.LASF29:
	.string	"ERR_INPROGRESS"
.LASF138:
	.string	"ip_hdr"
.LASF209:
	.string	"ip4_output"
.LASF49:
	.string	"ip4_addr"
.LASF230:
	.string	"ip4_route"
.LASF34:
	.string	"ERR_ISCONN"
.LASF84:
	.string	"cachehit"
.LASF126:
	.string	"name"
.LASF131:
	.string	"netif_linkoutput_fn"
.LASF155:
	.string	"icmp_dur_type"
.LASF190:
	.string	"ip4_default_multicast_netif"
.LASF54:
	.string	"MEMP_RAW_PCB"
.LASF79:
	.string	"lenerr"
.LASF140:
	.string	"_tos"
.LASF7:
	.string	"long unsigned int"
.LASF110:
	.string	"netif_mac_filter_action"
.LASF180:
	.string	"LWIP_IANA_PORT_SNTP"
.LASF22:
	.string	"s16_t"
.LASF82:
	.string	"proterr"
.LASF86:
	.string	"rx_v1"
.LASF218:
	.string	"ip4_output_if_src"
.LASF164:
	.string	"last_reporter_flag"
.LASF94:
	.string	"stats_sys"
.LASF3:
	.string	"unsigned char"
.LASF109:
	.string	"lwip_internal_netif_client_data_index"
.LASF80:
	.string	"memerr"
.LASF58:
	.string	"MEMP_TCP_SEG"
.LASF132:
	.string	"netif_status_callback_fn"
.LASF179:
	.string	"LWIP_IANA_PORT_HTTP"
.LASF98:
	.string	"link"
.LASF158:
	.string	"ICMP_DUR_PROTO"
.LASF50:
	.string	"addr"
.LASF90:
	.string	"tx_join"
.LASF160:
	.string	"ICMP_DUR_FRAG"
.LASF75:
	.string	"xmit"
.LASF77:
	.string	"drop"
.LASF121:
	.string	"state"
.LASF177:
	.string	"LWIP_IANA_PORT_DHCP_CLIENT"
.LASF108:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF113:
	.string	"netif"
.LASF37:
	.string	"ERR_ABRT"
.LASF173:
	.string	"chksum"
.LASF128:
	.string	"acd_list"
.LASF213:
	.string	"iphdr"
.LASF193:
	.string	"pbuf_add_header"
.LASF91:
	.string	"tx_leave"
.LASF24:
	.string	"ERR_OK"
.LASF76:
	.string	"recv"
.LASF105:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF2:
	.string	"signed char"
.LASF224:
	.string	"iphdr_hlen"
.LASF5:
	.string	"short unsigned int"
.LASF162:
	.string	"igmp_group"
.LASF172:
	.string	"udp_hdr"
.LASF192:
	.string	"memcpy"
.LASF85:
	.string	"stats_igmp"
.LASF35:
	.string	"ERR_CONN"
.LASF153:
	.string	"current_iphdr_dest"
.LASF28:
	.string	"ERR_RTE"
.LASF141:
	.string	"_len"
.LASF52:
	.string	"ip_addr_t"
.LASF181:
	.string	"LWIP_IANA_PORT_NETBIOS"
.LASF66:
	.string	"MEMP_NETDB"
.LASF214:
	.string	"dest_addr"
.LASF92:
	.string	"tx_report"
.LASF166:
	.string	"timer"
.LASF232:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF225:
	.string	"iphdr_len"
.LASF106:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF25:
	.string	"ERR_MEM"
.LASF146:
	.string	"dest"
.LASF229:
	.string	"udphdr"
.LASF199:
	.string	"udp_input"
.LASF187:
	.string	"LWIP_IANA_PORT_MDNS"
.LASF114:
	.string	"ip_addr"
.LASF87:
	.string	"rx_group"
.LASF175:
	.string	"LWIP_IANA_PORT_SMTP"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ipv4/ip4.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
