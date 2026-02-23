	.file	"dns.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/dns.c"
	.section	.sbss.dns_txid,"aw",@nobits
	.align	1
	.type	dns_txid, @object
	.size	dns_txid, 2
dns_txid:
	.zero	2
	.section	.sbss.dns_pcbs,"aw",@nobits
	.align	2
	.type	dns_pcbs, @object
	.size	dns_pcbs, 4
dns_pcbs:
	.zero	4
	.section	.sbss.dns_seqno,"aw",@nobits
	.type	dns_seqno, @object
	.size	dns_seqno, 1
dns_seqno:
	.zero	1
	.section	.bss.dns_table,"aw",@nobits
	.align	2
	.type	dns_table, @object
	.size	dns_table, 1088
dns_table:
	.zero	1088
	.section	.bss.dns_requests,"aw",@nobits
	.align	2
	.type	dns_requests, @object
	.size	dns_requests, 32
dns_requests:
	.zero	32
	.section	.sbss.dns_servers,"aw",@nobits
	.align	2
	.type	dns_servers, @object
	.size	dns_servers, 8
dns_servers:
	.zero	8
	.globl	dns_mquery_v4group
	.section	.srodata.dns_mquery_v4group,"a"
	.align	2
	.type	dns_mquery_v4group, @object
	.size	dns_mquery_v4group, 4
dns_mquery_v4group:
	.word	-83885856
	.section	.text.dns_init,"ax",@progbits
	.align	1
	.globl	dns_init
	.type	dns_init, @function
dns_init:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/dns.c"
	.loc 1 316 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 333 15
	lui	a5,%hi(dns_pcbs)
	lw	a5,%lo(dns_pcbs)(a5)
	.loc 1 333 6
	bne	a5,zero,.L3
	.loc 1 334 19
	li	a0,46
	call	udp_new_ip_type
	mv	a4,a0
	.loc 1 334 17 discriminator 1
	lui	a5,%hi(dns_pcbs)
	sw	a4,%lo(dns_pcbs)(a5)
	.loc 1 343 5
	lui	a5,%hi(dns_pcbs)
	lw	a4,%lo(dns_pcbs)(a5)
	li	a2,0
	lui	a5,%hi(ip_addr_any)
	addi	a1,a5,%lo(ip_addr_any)
	mv	a0,a4
	call	udp_bind
	.loc 1 344 5
	lui	a5,%hi(dns_pcbs)
	lw	a4,%lo(dns_pcbs)(a5)
	li	a2,0
	lui	a5,%hi(dns_recv)
	addi	a1,a5,%lo(dns_recv)
	mv	a0,a4
	call	udp_recv
.L3:
	.loc 1 351 1
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
	.size	dns_init, .-dns_init
	.section	.text.dns_setserver,"ax",@progbits
	.align	1
	.globl	dns_setserver
	.type	dns_setserver, @function
dns_setserver:
.LFB6:
	.loc 1 362 1
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
	sb	a5,-17(s0)
	.loc 1 363 6
	lbu	a4,-17(s0)
	li	a5,1
	bgtu	a4,a5,.L7
	.loc 1 364 8
	lw	a5,-24(s0)
	beq	a5,zero,.L6
	.loc 1 365 18
	lbu	a5,-17(s0)
	.loc 1 365 27
	lui	a4,%hi(dns_servers)
	addi	a4,a4,%lo(dns_servers)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-24(s0)
	lw	a4,0(a4)
	sw	a4,0(a5)
	.loc 1 370 1
	j	.L7
.L6:
	.loc 1 367 18
	lbu	a5,-17(s0)
	.loc 1 367 27
	lui	a4,%hi(dns_servers)
	addi	a4,a4,%lo(dns_servers)
	slli	a5,a5,2
	add	a5,a4,a5
	lui	a4,%hi(ip_addr_any)
	lw	a4,%lo(ip_addr_any)(a4)
	sw	a4,0(a5)
.L7:
	.loc 1 370 1
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
	.size	dns_setserver, .-dns_setserver
	.section	.text.dns_getserver,"ax",@progbits
	.align	1
	.globl	dns_getserver
	.type	dns_getserver, @function
dns_getserver:
.LFB7:
	.loc 1 382 1
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
	.loc 1 383 6
	lbu	a4,-17(s0)
	li	a5,1
	bgtu	a4,a5,.L9
	.loc 1 384 24
	lbu	a5,-17(s0)
	.loc 1 384 12
	slli	a4,a5,2
	lui	a5,%hi(dns_servers)
	addi	a5,a5,%lo(dns_servers)
	add	a5,a4,a5
	j	.L10
.L9:
	.loc 1 386 13
	lui	a5,%hi(ip_addr_any)
	addi	a5,a5,%lo(ip_addr_any)
.L10:
	.loc 1 388 1
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
	.size	dns_getserver, .-dns_getserver
	.section	.text.dns_tmr,"ax",@progbits
	.align	1
	.globl	dns_tmr
	.type	dns_tmr, @function
dns_tmr:
.LFB8:
	.loc 1 396 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 398 3
	call	dns_check_entries
	.loc 1 399 1
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
	.size	dns_tmr, .-dns_tmr
	.section	.text.dns_lookup,"ax",@progbits
	.align	1
	.type	dns_lookup, @function
dns_lookup:
.LFB9:
	.loc 1 619 1
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
	.loc 1 633 11
	lw	a5,-40(s0)
	li	a4,255
	bleu	a5,a4,.L13
	li	a5,255
.L13:
	sw	a5,-24(s0)
	.loc 1 635 10
	sb	zero,-17(s0)
	.loc 1 635 3
	j	.L14
.L18:
	.loc 1 636 22
	lbu	a4,-17(s0)
	lui	a5,%hi(dns_table)
	addi	a3,a5,%lo(dns_table)
	mv	a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	slli	a5,a5,4
	add	a5,a3,a5
	lbu	a4,10(a5)
	.loc 1 636 8
	li	a5,3
	bne	a4,a5,.L15
	.loc 1 637 42
	lbu	a4,-17(s0)
	mv	a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	slli	a5,a5,4
	lui	a4,%hi(dns_table)
	addi	a4,a4,%lo(dns_table)
	add	a5,a5,a4
	addi	a5,a5,15
	.loc 1 637 10
	lw	a2,-24(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	lwip_strnicmp
	mv	a5,a0
	.loc 1 636 48 discriminator 1
	bne	a5,zero,.L15
	.loc 1 638 27
	lbu	a4,-17(s0)
	lui	a5,%hi(dns_table)
	addi	a3,a5,%lo(dns_table)
	mv	a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	slli	a5,a5,4
	add	a4,a3,a5
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,15(a5)
	.loc 1 637 64
	bne	a5,zero,.L15
	.loc 1 643 10
	lw	a5,-44(s0)
	beq	a5,zero,.L16
	.loc 1 644 46
	lbu	a4,-17(s0)
	lui	a5,%hi(dns_table)
	addi	a3,a5,%lo(dns_table)
	mv	a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	slli	a5,a5,4
	add	a5,a3,a5
	lw	a4,4(a5)
	.loc 1 644 23
	lw	a5,-44(s0)
	sw	a4,0(a5)
.L16:
	.loc 1 646 14
	li	a5,0
	j	.L17
.L15:
	.loc 1 635 22 discriminator 2
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L14:
	.loc 1 635 17 discriminator 1
	lbu	a4,-17(s0)
	li	a5,3
	bleu	a4,a5,.L18
	.loc 1 650 10
	li	a5,-16
.L17:
	.loc 1 651 1
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
	.size	dns_lookup, .-dns_lookup
	.section	.text.dns_compare_name,"ax",@progbits
	.align	1
	.type	dns_compare_name, @function
dns_compare_name:
.LFB10:
	.loc 1 671 1
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
	.loc 1 673 9
	lhu	a5,-42(s0)
	sh	a5,-22(s0)
.L34:
	.loc 1 676 9
	lhu	a5,-22(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	pbuf_try_get_at
	sw	a0,-20(s0)
	.loc 1 677 8
	lw	a5,-20(s0)
	blt	a5,zero,.L20
	.loc 1 677 17 discriminator 1
	lhu	a4,-22(s0)
	li	a5,65536
	addi	a5,a5,-1
	bne	a4,a5,.L21
.L20:
	.loc 1 679 14
	li	a5,65536
	addi	a5,a5,-1
	j	.L22
.L21:
	.loc 1 681 20
	lhu	a5,-22(s0)
	addi	a5,a5,1
	sh	a5,-22(s0)
	.loc 1 683 12
	lw	a5,-20(s0)
	andi	a4,a5,192
	.loc 1 683 8
	li	a5,192
	bne	a4,a5,.L24
	.loc 1 685 14
	li	a5,65536
	addi	a5,a5,-1
	j	.L22
.L32:
.LBB2:
	.loc 1 689 17
	lhu	a5,-22(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	pbuf_try_get_at
	sw	a0,-28(s0)
	.loc 1 690 12
	lw	a5,-28(s0)
	bge	a5,zero,.L25
	.loc 1 691 18
	li	a5,65536
	addi	a5,a5,-1
	j	.L22
.L25:
.LBB3:
	.loc 1 693 14
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	sb	a5,-29(s0)
	.loc 1 693 46
	lbu	a5,-29(s0)
	.loc 1 693 45
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 693 58
	andi	a4,a5,3
	.loc 1 693 97
	li	a5,1
	bne	a4,a5,.L26
	.loc 1 693 75 discriminator 1
	lbu	a5,-29(s0)
	.loc 1 693 97 discriminator 1
	addi	a4,a5,32
	j	.L27
.L26:
	.loc 1 693 97 is_stmt 0 discriminator 2
	lbu	a4,-29(s0)
.L27:
.LBE3:
.LBB4:
	.loc 1 693 40 is_stmt 1 discriminator 4
	lw	a5,-28(s0)
	sb	a5,-30(s0)
	.loc 1 693 72 discriminator 4
	lbu	a5,-30(s0)
	.loc 1 693 71 discriminator 4
	addi	a3,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 1 693 84 discriminator 4
	andi	a3,a5,3
	.loc 1 693 123 discriminator 4
	li	a5,1
	bne	a3,a5,.L28
	.loc 1 693 101 discriminator 5
	lbu	a5,-30(s0)
	.loc 1 693 123 discriminator 5
	addi	a5,a5,32
	j	.L29
.L28:
	.loc 1 693 123 is_stmt 0 discriminator 6
	lbu	a5,-30(s0)
.L29:
.LBE4:
	.loc 1 693 12 is_stmt 1 discriminator 8
	beq	a4,a5,.L30
	.loc 1 694 18
	li	a5,65536
	addi	a5,a5,-1
	j	.L22
.L30:
	.loc 1 696 12
	lhu	a4,-22(s0)
	li	a5,65536
	addi	a5,a5,-1
	bne	a4,a5,.L31
	.loc 1 698 18
	li	a5,65536
	addi	a5,a5,-1
	j	.L22
.L31:
	.loc 1 700 24
	lhu	a5,-22(s0)
	addi	a5,a5,1
	sh	a5,-22(s0)
	.loc 1 701 9
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
	.loc 1 702 9
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L24:
.LBE2:
	.loc 1 688 16
	lw	a5,-20(s0)
	bgt	a5,zero,.L32
	.loc 1 704 7
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
	.loc 1 706 9
	lhu	a5,-22(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	pbuf_try_get_at
	sw	a0,-20(s0)
	.loc 1 707 8
	lw	a5,-20(s0)
	bge	a5,zero,.L33
	.loc 1 708 14
	li	a5,65536
	addi	a5,a5,-1
	j	.L22
.L33:
	.loc 1 710 14
	lw	a5,-20(s0)
	bne	a5,zero,.L34
	.loc 1 712 6
	lhu	a4,-22(s0)
	li	a5,65536
	addi	a5,a5,-1
	bne	a4,a5,.L35
	.loc 1 714 12
	li	a5,65536
	addi	a5,a5,-1
	j	.L22
.L35:
	.loc 1 716 10
	lhu	a5,-22(s0)
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
.L22:
	.loc 1 717 1
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
	.size	dns_compare_name, .-dns_compare_name
	.section	.text.dns_skip_name,"ax",@progbits
	.align	1
	.type	dns_skip_name, @function
dns_skip_name:
.LFB11:
	.loc 1 728 1
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
	.loc 1 730 9
	lhu	a5,-38(s0)
	sh	a5,-18(s0)
.L44:
	.loc 1 733 9
	lhu	a5,-18(s0)
	addi	a4,a5,1
	sh	a4,-18(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	pbuf_try_get_at
	sw	a0,-24(s0)
	.loc 1 734 8
	lw	a5,-24(s0)
	blt	a5,zero,.L37
	.loc 1 734 17 discriminator 1
	lhu	a5,-18(s0)
	bne	a5,zero,.L38
.L37:
	.loc 1 735 14
	li	a5,65536
	addi	a5,a5,-1
	j	.L39
.L38:
	.loc 1 738 12
	lw	a5,-24(s0)
	andi	a4,a5,192
	.loc 1 738 8
	li	a5,192
	beq	a4,a5,.L46
	.loc 1 743 18
	lhu	a4,-18(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 1 743 26
	lw	a4,-36(s0)
	lhu	a4,8(a4)
	.loc 1 743 10
	blt	a5,a4,.L42
	.loc 1 744 16
	li	a5,65536
	addi	a5,a5,-1
	j	.L39
.L42:
	.loc 1 746 16
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 746 14
	lhu	a4,-18(s0)
	add	a5,a5,a4
	sh	a5,-18(s0)
	.loc 1 748 9
	lhu	a5,-18(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	pbuf_try_get_at
	sw	a0,-24(s0)
	.loc 1 749 8
	lw	a5,-24(s0)
	bge	a5,zero,.L43
	.loc 1 750 14
	li	a5,65536
	addi	a5,a5,-1
	j	.L39
.L43:
	.loc 1 752 14
	lw	a5,-24(s0)
	bne	a5,zero,.L44
	j	.L41
.L46:
	.loc 1 740 7
	nop
.L41:
	.loc 1 754 6
	lhu	a4,-18(s0)
	li	a5,65536
	addi	a5,a5,-1
	bne	a4,a5,.L45
	.loc 1 755 12
	li	a5,65536
	addi	a5,a5,-1
	j	.L39
.L45:
	.loc 1 757 10
	lhu	a5,-18(s0)
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
.L39:
	.loc 1 758 1
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
	.size	dns_skip_name, .-dns_skip_name
	.section	.text.dns_send,"ax",@progbits
	.align	1
	.type	dns_send, @function
dns_send:
.LFB12:
	.loc 1 768 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-81(s0)
	.loc 1 777 45
	lbu	a4,-81(s0)
	.loc 1 777 27
	mv	a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	slli	a5,a5,4
	lui	a4,%hi(dns_table)
	addi	a4,a4,%lo(dns_table)
	add	a5,a5,a4
	sw	a5,-32(s0)
	.loc 1 782 26
	lw	a5,-32(s0)
	lbu	a5,11(a5)
	mv	a3,a5
	.loc 1 782 40
	lui	a5,%hi(dns_servers)
	addi	a4,a5,%lo(dns_servers)
	slli	a5,a3,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 782 6
	bne	a5,zero,.L48
	.loc 1 789 5
	lbu	a5,-81(s0)
	li	a1,0
	mv	a0,a5
	call	dns_call_found
	.loc 1 791 18
	lw	a5,-32(s0)
	sb	zero,10(a5)
	.loc 1 792 12
	li	a5,0
	j	.L58
.L48:
	.loc 1 796 59
	lw	a5,-32(s0)
	addi	a5,a5,15
	.loc 1 796 47
	mv	a0,a5
	call	strlen
	mv	a5,a0
	.loc 1 796 7 discriminator 1
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 796 34 discriminator 1
	addi	a5,a5,18
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 796 7 discriminator 1
	li	a2,640
	mv	a1,a5
	li	a0,182
	call	pbuf_alloc
	sw	a0,-36(s0)
	.loc 1 798 6
	lw	a5,-36(s0)
	beq	a5,zero,.L50
.LBB5:
	.loc 1 802 5
	addi	a5,s0,-64
	li	a2,12
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 803 14
	lw	a5,-32(s0)
	lhu	a5,8(a5)
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 803 12 discriminator 1
	sh	a5,-64(s0)
	.loc 1 804 16
	li	a5,1
	sb	a5,-62(s0)
	.loc 1 805 22
	li	a5,256
	sh	a5,-60(s0)
	.loc 1 806 5
	addi	a5,s0,-64
	li	a2,12
	mv	a1,a5
	lw	a0,-36(s0)
	call	pbuf_take
	.loc 1 807 14
	lw	a5,-32(s0)
	addi	a5,a5,15
	sw	a5,-24(s0)
	.loc 1 808 5
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 811 15
	li	a5,12
	sh	a5,-20(s0)
.L56:
	.loc 1 813 7
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 1 814 21
	lw	a5,-24(s0)
	sw	a5,-40(s0)
	.loc 1 815 14
	sb	zero,-25(s0)
	.loc 1 815 7
	j	.L51
.L53:
	.loc 1 816 9
	lbu	a5,-25(s0)
	addi	a5,a5,1
	sb	a5,-25(s0)
	.loc 1 815 55 discriminator 4
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L51:
	.loc 1 815 19 discriminator 1
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	.loc 1 815 36 discriminator 1
	li	a5,46
	beq	a4,a5,.L52
	.loc 1 815 39 discriminator 3
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 1 815 36 discriminator 3
	bne	a5,zero,.L53
.L52:
	.loc 1 818 35
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	sub	a5,a4,a5
	.loc 1 818 16
	sh	a5,-42(s0)
	.loc 1 819 21
	lhu	a4,-20(s0)
	lbu	a5,-25(s0)
	add	a4,a4,a5
	.loc 1 819 10
	li	a5,65536
	addi	a5,a5,-2
	bgt	a4,a5,.L60
	.loc 1 823 7
	lbu	a4,-25(s0)
	lhu	a5,-20(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	pbuf_put_at
	.loc 1 824 48
	lhu	a5,-20(s0)
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 824 7
	lhu	a5,-42(s0)
	mv	a3,a4
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	pbuf_take_at
	.loc 1 825 37
	lbu	a5,-25(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-20(s0)
	add	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 825 17
	addi	a5,a5,1
	sh	a5,-20(s0)
	.loc 1 826 14
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 1 826 24
	bne	a5,zero,.L56
	.loc 1 827 5
	lhu	a5,-20(s0)
	li	a2,0
	mv	a1,a5
	lw	a0,-36(s0)
	call	pbuf_put_at
	.loc 1 828 14
	lhu	a5,-20(s0)
	addi	a5,a5,1
	sh	a5,-20(s0)
	.loc 1 834 16
	li	a5,256
	sh	a5,-68(s0)
	.loc 1 836 13
	li	a5,256
	sh	a5,-66(s0)
	.loc 1 837 5
	lhu	a4,-20(s0)
	addi	a5,s0,-68
	mv	a3,a4
	li	a2,4
	mv	a1,a5
	lw	a0,-36(s0)
	call	pbuf_take_at
	.loc 1 842 13
	sb	zero,-43(s0)
	.loc 1 866 16
	li	a5,53
	sh	a5,-46(s0)
	.loc 1 867 31
	lw	a5,-32(s0)
	lbu	a5,11(a5)
	.loc 1 867 11
	slli	a4,a5,2
	lui	a5,%hi(dns_servers)
	addi	a5,a5,%lo(dns_servers)
	add	a5,a4,a5
	sw	a5,-52(s0)
	.loc 1 869 11
	lbu	a4,-43(s0)
	lui	a5,%hi(dns_pcbs)
	slli	a4,a4,2
	addi	a5,a5,%lo(dns_pcbs)
	add	a5,a4,a5
	lw	a5,0(a5)
	lhu	a4,-46(s0)
	mv	a3,a4
	lw	a2,-52(s0)
	lw	a1,-36(s0)
	mv	a0,a5
	call	udp_sendto
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 872 5
	lw	a0,-36(s0)
	call	pbuf_free
.LBE5:
	j	.L57
.L50:
	.loc 1 874 9
	li	a5,-1
	sb	a5,-17(s0)
.L57:
	.loc 1 877 10
	lb	a5,-17(s0)
	j	.L58
.L60:
.LBB6:
	.loc 1 821 9
	nop
.L55:
.LBE6:
	.loc 1 879 3
	lw	a0,-36(s0)
	call	pbuf_free
	.loc 1 880 10
	li	a5,-6
.L58:
	.loc 1 881 1
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
.LFE12:
	.size	dns_send, .-dns_send
	.section	.text.dns_call_found,"ax",@progbits
	.align	1
	.type	dns_call_found, @function
dns_call_found:
.LFB13:
	.loc 1 962 1
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
	sb	a5,-17(s0)
	.loc 1 989 24
	lbu	a5,-17(s0)
	lui	a4,%hi(dns_requests)
	addi	a4,a4,%lo(dns_requests)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 989 6
	beq	a5,zero,.L62
	.loc 1 990 6
	lbu	a5,-17(s0)
	lui	a4,%hi(dns_requests)
	addi	a4,a4,%lo(dns_requests)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 1 990 46
	lbu	a4,-17(s0)
	mv	a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	slli	a5,a5,4
	lui	a4,%hi(dns_table)
	addi	a4,a4,%lo(dns_table)
	add	a5,a5,a4
	addi	a0,a5,15
	.loc 1 990 6
	lbu	a5,-17(s0)
	lui	a4,%hi(dns_requests)
	addi	a4,a4,%lo(dns_requests)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a5,4(a5)
	mv	a2,a5
	lw	a1,-24(s0)
	jalr	a3
.LVL0:
.L62:
	.loc 1 992 20
	lbu	a5,-17(s0)
	.loc 1 992 27
	lui	a4,%hi(dns_requests)
	addi	a4,a4,%lo(dns_requests)
	slli	a5,a5,3
	add	a5,a4,a5
	sw	zero,0(a5)
	.loc 1 1015 1
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
	.size	dns_call_found, .-dns_call_found
	.section	.text.dns_create_txid,"ax",@progbits
	.align	1
	.type	dns_create_txid, @function
dns_create_txid:
.LFB14:
	.loc 1 1020 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.L64:
	.loc 1 1025 18
	lui	a5,%hi(dns_txid)
	lhu	a5,%lo(dns_txid)(a5)
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1025 8
	lui	a5,%hi(dns_txid)
	sh	a4,%lo(dns_txid)(a5)
	lui	a5,%hi(dns_txid)
	lhu	a5,%lo(dns_txid)(a5)
	sh	a5,-20(s0)
	.loc 1 1028 10
	sb	zero,-17(s0)
	.loc 1 1028 3
	j	.L65
.L67:
	.loc 1 1029 22
	lbu	a4,-17(s0)
	lui	a5,%hi(dns_table)
	addi	a3,a5,%lo(dns_table)
	mv	a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	slli	a5,a5,4
	add	a5,a3,a5
	lbu	a4,10(a5)
	.loc 1 1029 8
	li	a5,2
	bne	a4,a5,.L66
	.loc 1 1030 22
	lbu	a4,-17(s0)
	lui	a5,%hi(dns_table)
	addi	a3,a5,%lo(dns_table)
	mv	a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	slli	a5,a5,4
	add	a5,a3,a5
	lhu	a5,8(a5)
	.loc 1 1029 50 discriminator 1
	lhu	a4,-20(s0)
	bne	a4,a5,.L66
	.loc 1 1032 7
	j	.L64
.L66:
	.loc 1 1028 23 discriminator 2
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L65:
	.loc 1 1028 17 discriminator 1
	lbu	a4,-17(s0)
	li	a5,3
	bleu	a4,a5,.L67
	.loc 1 1036 10
	lhu	a5,-20(s0)
	.loc 1 1037 1
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
	.size	dns_create_txid, .-dns_create_txid
	.section	.text.dns_backupserver_available,"ax",@progbits
	.align	1
	.type	dns_backupserver_available, @function
dns_backupserver_available:
.LFB15:
	.loc 1 1044 1
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
	.loc 1 1045 8
	sb	zero,-17(s0)
	.loc 1 1047 6
	lw	a5,-36(s0)
	beq	a5,zero,.L70
	.loc 1 1048 16
	lw	a5,-36(s0)
	lbu	a5,11(a5)
	.loc 1 1048 8
	bne	a5,zero,.L70
	.loc 1 1048 62 discriminator 1
	lw	a5,-36(s0)
	lbu	a5,11(a5)
	.loc 1 1048 75 discriminator 1
	addi	a5,a5,1
	.loc 1 1048 80 discriminator 1
	lui	a4,%hi(dns_servers)
	addi	a4,a4,%lo(dns_servers)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 1048 38 discriminator 1
	beq	a5,zero,.L70
	.loc 1 1049 11
	li	a5,1
	sb	a5,-17(s0)
.L70:
	.loc 1 1053 10
	lbu	a5,-17(s0)
	.loc 1 1054 1
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
.LFE15:
	.size	dns_backupserver_available, .-dns_backupserver_available
	.section	.text.dns_check_entry,"ax",@progbits
	.align	1
	.type	dns_check_entry, @function
dns_check_entry:
.LFB16:
	.loc 1 1067 1
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
	.loc 1 1069 45
	lbu	a4,-33(s0)
	.loc 1 1069 27
	mv	a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	slli	a5,a5,4
	lui	a4,%hi(dns_table)
	addi	a4,a4,%lo(dns_table)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 1073 16
	lw	a5,-20(s0)
	lbu	a5,10(a5)
	.loc 1 1073 3
	li	a4,3
	beq	a5,a4,.L73
	li	a4,3
	bgt	a5,a4,.L84
	li	a4,2
	beq	a5,a4,.L75
	li	a4,2
	bgt	a5,a4,.L84
	beq	a5,zero,.L85
	li	a4,1
	bne	a5,a4,.L84
	.loc 1 1076 21
	call	dns_create_txid
	mv	a5,a0
	mv	a4,a5
	.loc 1 1076 19 discriminator 1
	lw	a5,-20(s0)
	sh	a4,8(a5)
	.loc 1 1077 20
	lw	a5,-20(s0)
	li	a4,2
	sb	a4,10(a5)
	.loc 1 1078 25
	lw	a5,-20(s0)
	sb	zero,11(a5)
	.loc 1 1079 18
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,12(a5)
	.loc 1 1080 22
	lw	a5,-20(s0)
	sb	zero,13(a5)
	.loc 1 1083 13
	lbu	a5,-33(s0)
	mv	a0,a5
	call	dns_send
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 1 1088 7
	j	.L77
.L75:
	.loc 1 1090 18
	lw	a5,-20(s0)
	lbu	a5,12(a5)
	.loc 1 1090 11
	addi	a5,a5,-1
	andi	a4,a5,0xff
	.loc 1 1090 10
	lw	a5,-20(s0)
	sb	a4,12(a5)
	.loc 1 1090 18
	lw	a5,-20(s0)
	lbu	a5,12(a5)
	.loc 1 1090 10
	bne	a5,zero,.L86
	.loc 1 1091 20
	lw	a5,-20(s0)
	lbu	a5,13(a5)
	.loc 1 1091 13
	addi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 1091 12
	lw	a5,-20(s0)
	sb	a4,13(a5)
	.loc 1 1091 20
	lw	a5,-20(s0)
	lbu	a4,13(a5)
	.loc 1 1091 12
	li	a5,4
	bne	a4,a5,.L79
	.loc 1 1092 15
	lw	a0,-20(s0)
	call	dns_backupserver_available
	mv	a5,a0
	.loc 1 1092 14 discriminator 1
	beq	a5,zero,.L80
	.loc 1 1098 18
	lw	a5,-20(s0)
	lbu	a5,11(a5)
	.loc 1 1098 30
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,11(a5)
	.loc 1 1099 24
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,12(a5)
	.loc 1 1100 28
	lw	a5,-20(s0)
	sb	zero,13(a5)
	j	.L81
.L80:
	.loc 1 1104 13
	lbu	a5,-33(s0)
	li	a1,0
	mv	a0,a5
	call	dns_call_found
	.loc 1 1106 26
	lw	a5,-20(s0)
	sb	zero,10(a5)
	.loc 1 1107 13
	j	.L77
.L79:
	.loc 1 1111 29
	lw	a5,-20(s0)
	lbu	a4,13(a5)
	.loc 1 1111 22
	lw	a5,-20(s0)
	sb	a4,12(a5)
.L81:
	.loc 1 1115 15
	lbu	a5,-33(s0)
	mv	a0,a5
	call	dns_send
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 1 1121 7
	j	.L86
.L73:
	.loc 1 1124 17
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1124 10
	beq	a5,zero,.L82
	.loc 1 1124 40 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1124 33 discriminator 1
	addi	a4,a5,-1
	.loc 1 1124 29 discriminator 1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 1124 40 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1124 29 discriminator 1
	bne	a5,zero,.L87
.L82:
	.loc 1 1127 22
	lw	a5,-20(s0)
	sb	zero,10(a5)
	.loc 1 1129 7
	j	.L87
.L84:
	.loc 1 1135 7
	nop
	j	.L88
.L85:
	.loc 1 1132 7
	nop
	j	.L88
.L86:
	.loc 1 1121 7
	nop
	j	.L88
.L87:
	.loc 1 1129 7
	nop
.L77:
.L88:
	.loc 1 1137 1
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
	.size	dns_check_entry, .-dns_check_entry
	.section	.text.dns_check_entries,"ax",@progbits
	.align	1
	.type	dns_check_entries, @function
dns_check_entries:
.LFB17:
	.loc 1 1144 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1147 10
	sb	zero,-17(s0)
	.loc 1 1147 3
	j	.L90
.L91:
	.loc 1 1148 5
	lbu	a5,-17(s0)
	mv	a0,a5
	call	dns_check_entry
	.loc 1 1147 22 discriminator 3
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L90:
	.loc 1 1147 17 discriminator 1
	lbu	a4,-17(s0)
	li	a5,3
	bleu	a4,a5,.L91
	.loc 1 1150 1
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
.LFE17:
	.size	dns_check_entries, .-dns_check_entries
	.section	.text.dns_correct_response,"ax",@progbits
	.align	1
	.type	dns_correct_response, @function
dns_correct_response:
.LFB18:
	.loc 1 1157 1
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
	.loc 1 1158 45
	lbu	a4,-33(s0)
	.loc 1 1158 27
	mv	a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	slli	a5,a5,4
	lui	a4,%hi(dns_table)
	addi	a4,a4,%lo(dns_table)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 1160 16
	lw	a5,-20(s0)
	li	a4,3
	sb	a4,10(a5)
	.loc 1 1167 14
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 1 1168 12
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 1168 6
	li	a5,606208
	addi	a5,a5,-1408
	bleu	a4,a5,.L93
	.loc 1 1169 16
	lw	a5,-20(s0)
	li	a4,606208
	addi	a4,a4,-1408
	sw	a4,0(a5)
.L93:
	.loc 1 1171 3
	lw	a5,-20(s0)
	addi	a4,a5,4
	lbu	a5,-33(s0)
	mv	a1,a4
	mv	a0,a5
	call	dns_call_found
	.loc 1 1173 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1173 6
	bne	a5,zero,.L95
	.loc 1 1179 14
	lw	a5,-20(s0)
	lbu	a4,10(a5)
	.loc 1 1179 8
	li	a5,3
	bne	a4,a5,.L95
	.loc 1 1180 20
	lw	a5,-20(s0)
	sb	zero,10(a5)
.L95:
	.loc 1 1183 1
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
	.size	dns_correct_response, .-dns_correct_response
	.section	.text.dns_recv,"ax",@progbits
	.align	1
	.type	dns_recv, @function
dns_recv:
.LFB19:
	.loc 1 1190 1
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
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	mv	a5,a4
	sh	a5,-82(s0)
	.loc 1 1204 8
	lw	a5,-76(s0)
	lhu	a4,8(a5)
	.loc 1 1204 6
	li	a5,15
	bleu	a4,a5,.L122
	.loc 1 1211 7
	addi	a5,s0,-44
	li	a3,0
	li	a2,12
	mv	a1,a5
	lw	a0,-76(s0)
	call	pbuf_copy_partial
	mv	a5,a0
	mv	a4,a5
	.loc 1 1211 6 discriminator 1
	li	a5,12
	bne	a4,a5,.L123
	.loc 1 1213 12
	lhu	a5,-44(s0)
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	sh	a5,-24(s0)
	.loc 1 1214 12
	sb	zero,-17(s0)
	.loc 1 1214 5
	j	.L99
.L120:
.LBB7:
	.loc 1 1215 49
	lbu	a4,-17(s0)
	.loc 1 1215 31
	mv	a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	slli	a5,a5,4
	lui	a4,%hi(dns_table)
	addi	a4,a4,%lo(dns_table)
	add	a5,a5,a4
	sw	a5,-28(s0)
	.loc 1 1216 17
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 1 1216 10
	li	a5,2
	bne	a4,a5,.L100
	.loc 1 1217 17
	lw	a5,-28(s0)
	lhu	a5,8(a5)
	.loc 1 1216 46 discriminator 1
	lhu	a4,-24(s0)
	bne	a4,a5,.L100
	.loc 1 1221 22
	lhu	a5,-40(s0)
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	sh	a5,-30(s0)
	.loc 1 1222 20
	lhu	a5,-38(s0)
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	sh	a5,-22(s0)
	.loc 1 1225 17
	lbu	a5,-42(s0)
	.loc 1 1225 33
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 1225 12
	bge	a5,zero,.L124
	.loc 1 1229 12
	lhu	a4,-30(s0)
	li	a5,1
	bne	a4,a5,.L125
	.loc 1 1240 23
	lw	a5,-80(s0)
	lw	a4,0(a5)
	.loc 1 1240 52
	lw	a5,-28(s0)
	lbu	a5,11(a5)
	mv	a2,a5
	.loc 1 1240 66
	lui	a5,%hi(dns_servers)
	addi	a3,a5,%lo(dns_servers)
	slli	a5,a2,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 1240 14
	bne	a4,a5,.L126
	.loc 1 1247 41
	lw	a5,-28(s0)
	addi	a5,a5,15
	.loc 1 1247 19
	li	a2,12
	lw	a1,-76(s0)
	mv	a0,a5
	call	dns_compare_name
	mv	a5,a0
	sh	a5,-20(s0)
	.loc 1 1248 12
	lhu	a4,-20(s0)
	li	a5,65536
	addi	a5,a5,-1
	beq	a4,a5,.L127
	.loc 1 1254 13
	lhu	a4,-20(s0)
	addi	a5,s0,-60
	mv	a3,a4
	li	a2,4
	mv	a1,a5
	lw	a0,-76(s0)
	call	pbuf_copy_partial
	mv	a5,a0
	mv	a4,a5
	.loc 1 1254 12 discriminator 1
	li	a5,4
	bne	a4,a5,.L128
	.loc 1 1257 17
	lhu	a4,-58(s0)
	.loc 1 1257 12
	li	a5,256
	bne	a4,a5,.L129
	.loc 1 1259 24
	lhu	a4,-60(s0)
	.loc 1 1258 109
	li	a5,256
	bne	a4,a5,.L129
	.loc 1 1264 12
	lhu	a4,-20(s0)
	li	a5,65536
	addi	a5,a5,-5
	bgtu	a4,a5,.L130
	.loc 1 1267 17
	lhu	a5,-20(s0)
	addi	a5,a5,4
	sh	a5,-20(s0)
	.loc 1 1270 16
	lbu	a5,-41(s0)
	.loc 1 1270 24
	andi	a5,a5,15
	.loc 1 1270 12
	beq	a5,zero,.L111
	.loc 1 1276 15
	lw	a0,-28(s0)
	call	dns_backupserver_available
	mv	a5,a0
	.loc 1 1276 14 discriminator 1
	beq	a5,zero,.L110
	.loc 1 1278 28
	lw	a5,-28(s0)
	li	a4,3
	sb	a4,13(a5)
	.loc 1 1279 24
	lw	a5,-28(s0)
	li	a4,1
	sb	a4,12(a5)
	.loc 1 1282 13
	lbu	a5,-17(s0)
	mv	a0,a5
	call	dns_check_entry
	.loc 1 1284 13
	j	.L98
.L119:
	.loc 1 1289 23
	lhu	a5,-20(s0)
	mv	a1,a5
	lw	a0,-76(s0)
	call	dns_skip_name
	mv	a5,a0
	sh	a5,-20(s0)
	.loc 1 1290 16
	lhu	a4,-20(s0)
	li	a5,65536
	addi	a5,a5,-1
	beq	a4,a5,.L131
	.loc 1 1295 17
	lhu	a4,-20(s0)
	addi	a5,s0,-56
	mv	a3,a4
	li	a2,10
	mv	a1,a5
	lw	a0,-76(s0)
	call	pbuf_copy_partial
	mv	a5,a0
	mv	a4,a5
	.loc 1 1295 16 discriminator 1
	li	a5,10
	bne	a4,a5,.L132
	.loc 1 1298 16
	lhu	a4,-20(s0)
	li	a5,65536
	addi	a5,a5,-11
	bgtu	a4,a5,.L133
	.loc 1 1301 21
	lhu	a5,-20(s0)
	addi	a5,a5,10
	sh	a5,-20(s0)
	.loc 1 1303 20
	lhu	a4,-54(s0)
	.loc 1 1303 16
	li	a5,256
	bne	a4,a5,.L115
	.loc 1 1305 23
	lhu	a4,-56(s0)
	.loc 1 1305 18
	li	a5,256
	bne	a4,a5,.L115
	.loc 1 1305 113 discriminator 1
	lhu	a4,-48(s0)
	.loc 1 1305 106 discriminator 1
	li	a5,1024
	bne	a4,a5,.L115
.LBB8:
	.loc 1 1312 23
	lhu	a4,-20(s0)
	addi	a5,s0,-64
	mv	a3,a4
	li	a2,4
	mv	a1,a5
	lw	a0,-76(s0)
	call	pbuf_copy_partial
	mv	a5,a0
	mv	a4,a5
	.loc 1 1312 22 discriminator 1
	li	a5,4
	bne	a4,a5,.L134
	.loc 1 1315 41
	lbu	a4,-17(s0)
	.loc 1 1315 58
	lw	a3,-64(s0)
	.loc 1 1315 47
	lui	a5,%hi(dns_table)
	addi	a2,a5,%lo(dns_table)
	mv	a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	slli	a5,a5,4
	add	a5,a2,a5
	sw	a3,4(a5)
	.loc 1 1316 19
	lw	a0,-76(s0)
	call	pbuf_free
	.loc 1 1318 19
	lw	a5,-52(s0)
	mv	a0,a5
	call	lwip_htonl
	mv	a4,a0
	.loc 1 1318 19 is_stmt 0 discriminator 1
	lbu	a5,-17(s0)
	mv	a1,a4
	mv	a0,a5
	call	dns_correct_response
	j	.L96
.L115:
.LBE8:
	.loc 1 1345 17 is_stmt 1
	lhu	s1,-20(s0)
	.loc 1 1345 33
	lhu	a5,-48(s0)
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1345 17 discriminator 1
	add	a4,s1,a5
	.loc 1 1345 16 discriminator 1
	li	a5,65536
	bge	a4,a5,.L135
	.loc 1 1348 41
	lhu	a5,-48(s0)
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	mv	a4,a5
	.loc 1 1348 21 discriminator 1
	lhu	a5,-20(s0)
	add	a5,a4,a5
	sh	a5,-20(s0)
	.loc 1 1349 13
	lhu	a5,-22(s0)
	addi	a5,a5,-1
	sh	a5,-22(s0)
.L111:
	.loc 1 1287 33
	lhu	a5,-22(s0)
	beq	a5,zero,.L110
	.loc 1 1287 48 discriminator 1
	lw	a5,-76(s0)
	lhu	a5,8(a5)
	.loc 1 1287 33 discriminator 1
	lhu	a4,-20(s0)
	bltu	a4,a5,.L119
.L110:
	.loc 1 1370 9
	lw	a0,-76(s0)
	call	pbuf_free
	.loc 1 1371 9
	lbu	a5,-17(s0)
	li	a1,0
	mv	a0,a5
	call	dns_call_found
	.loc 1 1372 21
	lbu	a4,-17(s0)
	.loc 1 1372 28
	lui	a5,%hi(dns_table)
	addi	a3,a5,%lo(dns_table)
	mv	a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	slli	a5,a5,4
	add	a5,a3,a5
	sb	zero,10(a5)
	.loc 1 1373 9
	j	.L96
.L100:
.LBE7:
	.loc 1 1214 25 discriminator 2
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L99:
	.loc 1 1214 19 discriminator 1
	lbu	a4,-17(s0)
	li	a5,3
	bleu	a4,a5,.L120
	.loc 1 1378 1
	j	.L123
.L122:
	.loc 1 1207 5
	nop
	j	.L98
.L123:
	.loc 1 1378 1
	nop
	j	.L98
.L124:
.LBB10:
	.loc 1 1227 11
	nop
	j	.L98
.L125:
	.loc 1 1231 11
	nop
	j	.L98
.L126:
	.loc 1 1241 13
	nop
	j	.L98
.L127:
	.loc 1 1250 11
	nop
	j	.L98
.L128:
	.loc 1 1255 11
	nop
	j	.L98
.L129:
	.loc 1 1261 11
	nop
	j	.L98
.L130:
	.loc 1 1265 11
	nop
	j	.L98
.L131:
	.loc 1 1291 15
	nop
	j	.L98
.L132:
	.loc 1 1296 15
	nop
	j	.L98
.L133:
	.loc 1 1299 15
	nop
	j	.L98
.L134:
.LBB9:
	.loc 1 1313 21 discriminator 1
	nop
	j	.L98
.L135:
.LBE9:
	.loc 1 1346 15
	nop
.L98:
.LBE10:
	.loc 1 1380 3
	lw	a0,-76(s0)
	call	pbuf_free
	.loc 1 1381 3
	nop
.L96:
	.loc 1 1382 1
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
.LFE19:
	.size	dns_recv, .-dns_recv
	.section	.text.dns_enqueue,"ax",@progbits
	.align	1
	.type	dns_enqueue, @function
dns_enqueue:
.LFB20:
	.loc 1 1396 1
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
	.loc 1 1399 27
	sw	zero,-24(s0)
	.loc 1 1406 11
	lw	a5,-56(s0)
	li	a4,255
	bleu	a5,a4,.L137
	li	a5,255
.L137:
	sw	a5,-28(s0)
	.loc 1 1439 8
	sb	zero,-18(s0)
	.loc 1 1440 9
	li	a5,4
	sb	a5,-19(s0)
	.loc 1 1441 10
	sb	zero,-17(s0)
	.loc 1 1441 3
	j	.L138
.L142:
	.loc 1 1442 23
	lbu	a4,-17(s0)
	.loc 1 1442 11
	mv	a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	slli	a5,a5,4
	lui	a4,%hi(dns_table)
	addi	a4,a4,%lo(dns_table)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 1444 14
	lw	a5,-24(s0)
	lbu	a5,10(a5)
	.loc 1 1444 8
	beq	a5,zero,.L147
	.loc 1 1448 14
	lw	a5,-24(s0)
	lbu	a4,10(a5)
	.loc 1 1448 8
	li	a5,3
	bne	a4,a5,.L141
.LBB11:
	.loc 1 1449 18
	lui	a5,%hi(dns_seqno)
	lbu	a4,%lo(dns_seqno)(a5)
	.loc 1 1449 42
	lw	a5,-24(s0)
	lbu	a5,14(a5)
	.loc 1 1449 12
	sub	a5,a4,a5
	sb	a5,-29(s0)
	.loc 1 1450 10
	lbu	a4,-29(s0)
	lbu	a5,-18(s0)
	bleu	a4,a5,.L141
	.loc 1 1451 14
	lbu	a5,-29(s0)
	sb	a5,-18(s0)
	.loc 1 1452 15
	lbu	a5,-17(s0)
	sb	a5,-19(s0)
.L141:
.LBE11:
	.loc 1 1441 22 discriminator 2
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L138:
	.loc 1 1441 17 discriminator 1
	lbu	a4,-17(s0)
	li	a5,3
	bleu	a4,a5,.L142
	j	.L140
.L147:
	.loc 1 1445 7
	nop
.L140:
	.loc 1 1458 6
	lbu	a4,-17(s0)
	li	a5,4
	bne	a4,a5,.L143
	.loc 1 1459 8
	lbu	a4,-19(s0)
	li	a5,3
	bgtu	a4,a5,.L144
	.loc 1 1459 42 discriminator 1
	lbu	a4,-19(s0)
	lui	a5,%hi(dns_table)
	addi	a3,a5,%lo(dns_table)
	mv	a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	slli	a5,a5,4
	add	a5,a3,a5
	lbu	a4,10(a5)
	.loc 1 1459 22 discriminator 1
	li	a5,3
	beq	a4,a5,.L145
.L144:
	.loc 1 1462 14
	li	a5,-1
	j	.L146
.L145:
	.loc 1 1465 9
	lbu	a5,-19(s0)
	sb	a5,-17(s0)
	.loc 1 1466 25
	lbu	a4,-17(s0)
	.loc 1 1466 13
	mv	a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	slli	a5,a5,4
	lui	a4,%hi(dns_table)
	addi	a4,a4,%lo(dns_table)
	add	a5,a5,a4
	sw	a5,-24(s0)
.L143:
	.loc 1 1487 22
	lbu	a5,-17(s0)
	.loc 1 1487 7
	slli	a4,a5,3
	lui	a5,%hi(dns_requests)
	addi	a5,a5,%lo(dns_requests)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 1 1494 16
	lw	a5,-24(s0)
	li	a4,1
	sb	a4,10(a5)
	.loc 1 1495 16
	lui	a5,%hi(dns_seqno)
	lbu	a4,%lo(dns_seqno)(a5)
	lw	a5,-24(s0)
	sb	a4,14(a5)
	.loc 1 1498 14
	lw	a5,-36(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	.loc 1 1499 12
	lw	a5,-36(s0)
	lw	a4,-64(s0)
	sw	a4,4(a5)
	.loc 1 1500 15
	lw	a5,-24(s0)
	addi	a5,a5,15
	.loc 1 1500 3
	lw	a2,-28(s0)
	lw	a1,-52(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 1501 24
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sb	zero,15(a5)
	.loc 1 1519 12
	lui	a5,%hi(dns_seqno)
	lbu	a5,%lo(dns_seqno)(a5)
	addi	a5,a5,1
	andi	a4,a5,0xff
	lui	a5,%hi(dns_seqno)
	sb	a4,%lo(dns_seqno)(a5)
	.loc 1 1522 3
	lbu	a5,-17(s0)
	mv	a0,a5
	call	dns_check_entry
	.loc 1 1525 10
	li	a5,-5
.L146:
	.loc 1 1526 1
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
.LFE20:
	.size	dns_enqueue, .-dns_enqueue
	.section	.text.dns_gethostbyname,"ax",@progbits
	.align	1
	.globl	dns_gethostbyname
	.type	dns_gethostbyname, @function
dns_gethostbyname:
.LFB21:
	.loc 1 1551 1
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
	.loc 1 1552 10
	li	a4,0
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	dns_gethostbyname_addrtype
	mv	a5,a0
	.loc 1 1553 1
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
	.size	dns_gethostbyname, .-dns_gethostbyname
	.section	.text.dns_gethostbyname_addrtype,"ax",@progbits
	.align	1
	.globl	dns_gethostbyname_addrtype
	.type	dns_gethostbyname_addrtype, @function
dns_gethostbyname_addrtype:
.LFB22:
	.loc 1 1572 1
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
	sb	a5,-49(s0)
	.loc 1 1579 6
	lw	a5,-40(s0)
	beq	a5,zero,.L151
	.loc 1 1579 21 discriminator 1
	lw	a5,-36(s0)
	beq	a5,zero,.L151
	.loc 1 1580 32
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 1580 19
	bne	a5,zero,.L152
.L151:
	.loc 1 1581 12
	li	a5,-16
	j	.L153
.L152:
	.loc 1 1584 15
	lui	a5,%hi(dns_pcbs)
	lw	a5,%lo(dns_pcbs)(a5)
	.loc 1 1584 6
	bne	a5,zero,.L154
	.loc 1 1585 12
	li	a5,-16
	j	.L153
.L154:
	.loc 1 1588 17
	lw	a0,-36(s0)
	call	strlen
	sw	a0,-20(s0)
	.loc 1 1589 15
	lw	a5,-20(s0)
	addi	a5,a5,-1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 1589 6
	li	a5,46
	bne	a4,a5,.L155
	.loc 1 1590 16
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L155:
	.loc 1 1592 6
	lw	a4,-20(s0)
	li	a5,255
	bleu	a4,a5,.L156
	.loc 1 1594 12
	li	a5,-16
	j	.L153
.L156:
	.loc 1 1606 7
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	ip4addr_aton
	mv	a5,a0
	.loc 1 1606 6 discriminator 1
	beq	a5,zero,.L157
	.loc 1 1612 14
	li	a5,0
	j	.L153
.L157:
	.loc 1 1616 7
	lw	a2,-40(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	dns_lookup
	mv	a5,a0
	.loc 1 1616 6 discriminator 1
	bne	a5,zero,.L158
	.loc 1 1617 12
	li	a5,0
	j	.L153
.L158:
	.loc 1 1647 26
	lui	a5,%hi(dns_servers)
	addi	a5,a5,%lo(dns_servers)
	lw	a5,0(a5)
	.loc 1 1647 8
	bne	a5,zero,.L159
	.loc 1 1648 14
	li	a5,-6
	j	.L153
.L159:
	.loc 1 1653 10
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	dns_enqueue
	mv	a5,a0
.L153:
	.loc 1 1655 1
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
.LFE22:
	.size	dns_gethostbyname_addrtype, .-dns_gethostbyname_addrtype
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/ctype.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/udp.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/dns.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/dns.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1029
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x21
	.4byte	.LASF197
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL3
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x22
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0xb
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x23
	.byte	0x4
	.uleb128 0x19
	.4byte	0x84
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x15
	.4byte	0x8b
	.uleb128 0x9
	.4byte	0x92
	.uleb128 0x9
	.4byte	0xa6
	.uleb128 0x19
	.4byte	0x9c
	.uleb128 0x24
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x32
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x47
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xb3
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0xa7
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xbf
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xcb
	.uleb128 0xf
	.4byte	0x92
	.4byte	0x112
	.uleb128 0x25
	.byte	0
	.uleb128 0x15
	.4byte	0x107
	.uleb128 0x1a
	.4byte	.LASF65
	.byte	0x9
	.byte	0x46
	.byte	0x13
	.4byte	0x112
	.uleb128 0x11
	.byte	0x5
	.byte	0x1
	.4byte	0x32
	.byte	0x5
	.byte	0x35
	.4byte	0x197
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0
	.uleb128 0x7
	.4byte	.LASF23
	.sleb128 -1
	.uleb128 0x7
	.4byte	.LASF24
	.sleb128 -2
	.uleb128 0x7
	.4byte	.LASF25
	.sleb128 -3
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 -4
	.uleb128 0x7
	.4byte	.LASF27
	.sleb128 -5
	.uleb128 0x7
	.4byte	.LASF28
	.sleb128 -6
	.uleb128 0x7
	.4byte	.LASF29
	.sleb128 -7
	.uleb128 0x7
	.4byte	.LASF30
	.sleb128 -8
	.uleb128 0x7
	.4byte	.LASF31
	.sleb128 -9
	.uleb128 0x7
	.4byte	.LASF32
	.sleb128 -10
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 -11
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 -12
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 -13
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 -14
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 -15
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 -16
	.byte	0
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xe3
	.uleb128 0x11
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0x6
	.byte	0x59
	.4byte	0x1cf
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0xb6
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0xa2
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x8e
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x80
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x6
	.byte	0x70
	.byte	0x3
	.4byte	0x1a3
	.uleb128 0x11
	.byte	0x7
	.byte	0x2
	.4byte	0x47
	.byte	0x6
	.byte	0x91
	.4byte	0x203
	.uleb128 0x1b
	.4byte	.LASF46
	.2byte	0x280
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x41
	.uleb128 0x1b
	.4byte	.LASF49
	.2byte	0x182
	.byte	0
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x6
	.byte	0xa8
	.byte	0x3
	.4byte	0x1db
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x10
	.byte	0x6
	.byte	0xba
	.4byte	0x284
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x6
	.byte	0xbc
	.byte	0x10
	.4byte	0x289
	.byte	0
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x84
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x6
	.byte	0xc8
	.byte	0x9
	.4byte	0xef
	.byte	0x8
	.uleb128 0xa
	.string	"len"
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0xef
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x6
	.byte	0xd0
	.byte	0x8
	.4byte	0xd7
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x6
	.byte	0xd3
	.byte	0x8
	.4byte	0xd7
	.byte	0xd
	.uleb128 0xa
	.string	"ref"
	.byte	0x6
	.byte	0xda
	.byte	0x8
	.4byte	0xd7
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x6
	.byte	0xdd
	.byte	0x8
	.4byte	0xd7
	.byte	0xf
	.byte	0
	.uleb128 0x15
	.4byte	0x20f
	.uleb128 0x9
	.4byte	0x20f
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x4
	.byte	0x7
	.byte	0x33
	.4byte	0x2a8
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x7
	.byte	0x34
	.byte	0x9
	.4byte	0xfb
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x7
	.byte	0x39
	.byte	0x19
	.4byte	0x28e
	.uleb128 0x1c
	.4byte	.LASF83
	.4byte	0x39
	.byte	0x8
	.byte	0x36
	.4byte	0x2d6
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x2e
	.byte	0
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x126
	.byte	0x14
	.4byte	0x2a8
	.uleb128 0x15
	.4byte	0x2d6
	.uleb128 0x27
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x18e
	.byte	0x18
	.4byte	0x2e3
	.uleb128 0x11
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0xa
	.byte	0x34
	.4byte	0x363
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
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0xf
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF84
	.4byte	0x39
	.byte	0xb
	.byte	0x71
	.4byte	0x38b
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0x2e3
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0xc
	.byte	0x4d
	.byte	0x10
	.4byte	0x39c
	.uleb128 0x9
	.4byte	0x3a1
	.uleb128 0x1d
	.4byte	0x3c0
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x3c0
	.uleb128 0x1
	.4byte	0x289
	.uleb128 0x1
	.4byte	0x38b
	.uleb128 0x1
	.4byte	0xef
	.byte	0
	.uleb128 0x9
	.4byte	0x3c5
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0x28
	.byte	0xc
	.byte	0x51
	.4byte	0x495
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0xc
	.byte	0x53
	.byte	0xd
	.4byte	0x2d6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0xc
	.byte	0x53
	.byte	0x21
	.4byte	0x2d6
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0xc
	.byte	0x53
	.byte	0x31
	.4byte	0xd7
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0xc
	.byte	0x53
	.byte	0x41
	.4byte	0xd7
	.byte	0x9
	.uleb128 0xa
	.string	"tos"
	.byte	0xc
	.byte	0x53
	.byte	0x52
	.4byte	0xd7
	.byte	0xa
	.uleb128 0xa
	.string	"ttl"
	.byte	0xc
	.byte	0x53
	.byte	0x5c
	.4byte	0xd7
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0xc
	.byte	0x57
	.byte	0x13
	.4byte	0x3c0
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0xc
	.byte	0x59
	.byte	0x8
	.4byte	0xd7
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0xc
	.byte	0x5b
	.byte	0x9
	.4byte	0xef
	.byte	0x12
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xc
	.byte	0x5b
	.byte	0x15
	.4byte	0xef
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0xc
	.byte	0x60
	.byte	0xe
	.4byte	0x2a8
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xc
	.byte	0x63
	.byte	0x8
	.4byte	0xd7
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0xc
	.byte	0x65
	.byte	0x8
	.4byte	0xd7
	.byte	0x1d
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0xc
	.byte	0x6e
	.byte	0xf
	.4byte	0x390
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0xc
	.byte	0x70
	.byte	0x9
	.4byte	0x84
	.byte	0x24
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF102
	.byte	0xd
	.byte	0x5a
	.byte	0x18
	.4byte	0x2e3
	.uleb128 0x8
	.4byte	.LASF103
	.byte	0xd
	.byte	0x67
	.byte	0x10
	.4byte	0x4ad
	.uleb128 0x9
	.4byte	0x4b2
	.uleb128 0x1d
	.4byte	0x4c7
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x38b
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0xc
	.byte	0xe
	.byte	0x67
	.4byte	0x52e
	.uleb128 0xa
	.string	"id"
	.byte	0xe
	.byte	0x68
	.byte	0x9
	.4byte	0xef
	.byte	0
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0xe
	.byte	0x69
	.byte	0x8
	.4byte	0xd7
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0xe
	.byte	0x6a
	.byte	0x8
	.4byte	0xd7
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0xe
	.byte	0x6b
	.byte	0x9
	.4byte	0xef
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0xe
	.byte	0x6c
	.byte	0x9
	.4byte	0xef
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xe
	.byte	0x6d
	.byte	0x9
	.4byte	0xef
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xe
	.byte	0x6e
	.byte	0x9
	.4byte	0xef
	.byte	0xa
	.byte	0
	.uleb128 0x28
	.4byte	.LASF128
	.byte	0x1
	.byte	0x69
	.byte	0xe
	.4byte	0xef
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_txid
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0x4
	.byte	0x1
	.byte	0xbd
	.4byte	0x567
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0x1
	.byte	0xc0
	.byte	0x9
	.4byte	0xef
	.byte	0
	.uleb128 0xa
	.string	"cls"
	.byte	0x1
	.byte	0xc1
	.byte	0x9
	.4byte	0xef
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0xc
	.byte	0x1
	.byte	0xc7
	.4byte	0x5a8
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0x1
	.byte	0xca
	.byte	0x9
	.4byte	0xef
	.byte	0
	.uleb128 0xa
	.string	"cls"
	.byte	0x1
	.byte	0xcb
	.byte	0x9
	.4byte	0xef
	.byte	0x2
	.uleb128 0xa
	.string	"ttl"
	.byte	0x1
	.byte	0xcc
	.byte	0x9
	.4byte	0xfb
	.byte	0x4
	.uleb128 0xa
	.string	"len"
	.byte	0x1
	.byte	0xcd
	.byte	0x9
	.4byte	0xef
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0x1
	.byte	0xd4
	.4byte	0x5ce
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0x3
	.byte	0
	.uleb128 0x29
	.4byte	.LASF118
	.2byte	0x110
	.byte	0x1
	.byte	0xdc
	.byte	0x8
	.4byte	0x652
	.uleb128 0xa
	.string	"ttl"
	.byte	0x1
	.byte	0xdd
	.byte	0x9
	.4byte	0xfb
	.byte	0
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x1
	.byte	0xde
	.byte	0xd
	.4byte	0x2d6
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x1
	.byte	0xdf
	.byte	0x9
	.4byte	0xef
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x1
	.byte	0xe0
	.byte	0x8
	.4byte	0xd7
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x1
	.byte	0xe1
	.byte	0x8
	.4byte	0xd7
	.byte	0xb
	.uleb128 0xa
	.string	"tmr"
	.byte	0x1
	.byte	0xe2
	.byte	0x8
	.4byte	0xd7
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0x1
	.byte	0xe3
	.byte	0x8
	.4byte	0xd7
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0x1
	.byte	0xe4
	.byte	0x8
	.4byte	0xd7
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0x1
	.byte	0xe8
	.byte	0x8
	.4byte	0x652
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.4byte	0x8b
	.4byte	0x662
	.uleb128 0x12
	.4byte	0x6a
	.byte	0xff
	.byte	0
	.uleb128 0xe
	.4byte	.LASF126
	.byte	0x8
	.byte	0x1
	.byte	0xf3
	.4byte	0x689
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x1
	.byte	0xf5
	.byte	0x16
	.4byte	0x4a1
	.byte	0
	.uleb128 0xa
	.string	"arg"
	.byte	0x1
	.byte	0xf7
	.byte	0x9
	.4byte	0x84
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	0x3c0
	.4byte	0x699
	.uleb128 0x12
	.4byte	0x6a
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF129
	.2byte	0x126
	.byte	0x18
	.4byte	0x689
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_pcbs
	.uleb128 0x4
	.4byte	.LASF130
	.2byte	0x12a
	.byte	0xd
	.4byte	0xd7
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_seqno
	.uleb128 0xf
	.4byte	0x5ce
	.4byte	0x6cd
	.uleb128 0x12
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF131
	.2byte	0x12b
	.byte	0x1f
	.4byte	0x6bd
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_table
	.uleb128 0xf
	.4byte	0x662
	.4byte	0x6ef
	.uleb128 0x12
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF132
	.2byte	0x12c
	.byte	0x1d
	.4byte	0x6df
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_requests
	.uleb128 0xf
	.4byte	0x2d6
	.4byte	0x711
	.uleb128 0x12
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF133
	.2byte	0x12d
	.byte	0x12
	.4byte	0x701
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_servers
	.uleb128 0x2a
	.4byte	0x495
	.byte	0x1
	.2byte	0x130
	.byte	0x11
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_mquery_v4group
	.uleb128 0xc
	.4byte	.LASF134
	.byte	0x7
	.byte	0xd6
	.byte	0x5
	.4byte	0x2b
	.4byte	0x74d
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x74d
	.byte	0
	.uleb128 0x9
	.4byte	0x2a8
	.uleb128 0xc
	.4byte	.LASF135
	.byte	0xf
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0x772
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0xc
	.4byte	.LASF136
	.byte	0x10
	.byte	0x65
	.byte	0x7
	.4byte	0xfb
	.4byte	0x788
	.uleb128 0x1
	.4byte	0xfb
	.byte	0
	.uleb128 0x10
	.4byte	.LASF137
	.2byte	0x12c
	.byte	0x7
	.4byte	0xef
	.4byte	0x7ad
	.uleb128 0x1
	.4byte	0x7ad
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0xef
	.uleb128 0x1
	.4byte	0xef
	.byte	0
	.uleb128 0x9
	.4byte	0x284
	.uleb128 0x10
	.4byte	.LASF138
	.2byte	0x125
	.byte	0x6
	.4byte	0xd7
	.4byte	0x7c8
	.uleb128 0x1
	.4byte	0x289
	.byte	0
	.uleb128 0xc
	.4byte	.LASF139
	.byte	0xc
	.byte	0x88
	.byte	0x7
	.4byte	0x197
	.4byte	0x7ed
	.uleb128 0x1
	.4byte	0x3c0
	.uleb128 0x1
	.4byte	0x289
	.uleb128 0x1
	.4byte	0x38b
	.uleb128 0x1
	.4byte	0xef
	.byte	0
	.uleb128 0x10
	.4byte	.LASF140
	.2byte	0x12f
	.byte	0x7
	.4byte	0x197
	.4byte	0x812
	.uleb128 0x1
	.4byte	0x289
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0xef
	.uleb128 0x1
	.4byte	0xef
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF148
	.byte	0x6
	.2byte	0x13d
	.byte	0x6
	.4byte	0x82f
	.uleb128 0x1
	.4byte	0x289
	.uleb128 0x1
	.4byte	0xef
	.uleb128 0x1
	.4byte	0xd7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF141
	.2byte	0x12e
	.byte	0x7
	.4byte	0x197
	.4byte	0x84f
	.uleb128 0x1
	.4byte	0x289
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0xef
	.byte	0
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0x10
	.byte	0x60
	.byte	0x7
	.4byte	0xef
	.4byte	0x865
	.uleb128 0x1
	.4byte	0xef
	.byte	0
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0xf
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x885
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0x10
	.4byte	.LASF144
	.2byte	0x113
	.byte	0xe
	.4byte	0x289
	.4byte	0x8a5
	.uleb128 0x1
	.4byte	0x1cf
	.uleb128 0x1
	.4byte	0xef
	.uleb128 0x1
	.4byte	0x203
	.byte	0
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0xf
	.byte	0x29
	.byte	0x8
	.4byte	0x71
	.4byte	0x8bb
	.uleb128 0x1
	.4byte	0x97
	.byte	0
	.uleb128 0x10
	.4byte	.LASF146
	.2byte	0x13c
	.byte	0x5
	.4byte	0x2b
	.4byte	0x8d6
	.uleb128 0x1
	.4byte	0x7ad
	.uleb128 0x1
	.4byte	0xef
	.byte	0
	.uleb128 0xc
	.4byte	.LASF147
	.byte	0x10
	.byte	0x89
	.byte	0x5
	.4byte	0x2b
	.4byte	0x8f6
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF149
	.byte	0xc
	.byte	0x80
	.byte	0x6
	.4byte	0x912
	.uleb128 0x1
	.4byte	0x3c0
	.uleb128 0x1
	.4byte	0x390
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0xc
	.4byte	.LASF150
	.byte	0xc
	.byte	0x7a
	.byte	0x7
	.4byte	0x197
	.4byte	0x932
	.uleb128 0x1
	.4byte	0x3c0
	.uleb128 0x1
	.4byte	0x38b
	.uleb128 0x1
	.4byte	0xef
	.byte	0
	.uleb128 0xc
	.4byte	.LASF151
	.byte	0xc
	.byte	0x78
	.byte	0x12
	.4byte	0x3c0
	.4byte	0x948
	.uleb128 0x1
	.4byte	0xd7
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF156
	.2byte	0x622
	.4byte	0x197
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9bc
	.uleb128 0x5
	.4byte	.LASF152
	.2byte	0x622
	.byte	0x28
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF59
	.2byte	0x622
	.byte	0x3d
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF127
	.2byte	0x622
	.byte	0x56
	.4byte	0x4a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF153
	.2byte	0x623
	.byte	0x22
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LASF154
	.2byte	0x623
	.byte	0x35
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x4
	.4byte	.LASF155
	.2byte	0x625
	.byte	0xa
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x2d6
	.uleb128 0x1e
	.4byte	.LASF157
	.2byte	0x60d
	.4byte	0x197
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa17
	.uleb128 0x5
	.4byte	.LASF152
	.2byte	0x60d
	.byte	0x1f
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF59
	.2byte	0x60d
	.byte	0x34
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF127
	.2byte	0x60d
	.byte	0x4d
	.4byte	0x4a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF153
	.2byte	0x60e
	.byte	0x19
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x13
	.4byte	.LASF171
	.2byte	0x572
	.4byte	0x197
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xade
	.uleb128 0x5
	.4byte	.LASF125
	.2byte	0x572
	.byte	0x19
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LASF155
	.2byte	0x572
	.byte	0x26
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.4byte	.LASF127
	.2byte	0x572
	.byte	0x46
	.4byte	0x4a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.4byte	.LASF153
	.2byte	0x573
	.byte	0x13
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"i"
	.2byte	0x575
	.byte	0x8
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x4
	.4byte	.LASF158
	.2byte	0x576
	.byte	0x8
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x4
	.4byte	.LASF159
	.2byte	0x576
	.byte	0xe
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x4
	.4byte	.LASF160
	.2byte	0x577
	.byte	0x1b
	.4byte	0xade
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF161
	.2byte	0x578
	.byte	0xa
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"req"
	.2byte	0x579
	.byte	0x19
	.4byte	0xae3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x6
	.string	"age"
	.2byte	0x5a9
	.byte	0xc
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x5ce
	.uleb128 0x9
	.4byte	0x662
	.uleb128 0x14
	.4byte	.LASF167
	.2byte	0x4a5
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf7
	.uleb128 0xd
	.string	"arg"
	.2byte	0x4a5
	.byte	0x10
	.4byte	0x84
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xd
	.string	"pcb"
	.2byte	0x4a5
	.byte	0x25
	.4byte	0x3c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xd
	.string	"p"
	.2byte	0x4a5
	.byte	0x37
	.4byte	0x289
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x5
	.4byte	.LASF59
	.2byte	0x4a5
	.byte	0x4b
	.4byte	0x38b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.4byte	.LASF162
	.2byte	0x4a5
	.byte	0x57
	.4byte	0xef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -82
	.uleb128 0x6
	.string	"i"
	.2byte	0x4a7
	.byte	0x8
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x4
	.4byte	.LASF120
	.2byte	0x4a8
	.byte	0x9
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF163
	.2byte	0x4a9
	.byte	0x9
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"hdr"
	.2byte	0x4aa
	.byte	0x12
	.4byte	0x4c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"ans"
	.2byte	0x4ab
	.byte	0x15
	.4byte	0x567
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"qry"
	.2byte	0x4ac
	.byte	0x14
	.4byte	0x540
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF164
	.2byte	0x4ad
	.byte	0x9
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x4
	.4byte	.LASF165
	.2byte	0x4ad
	.byte	0x15
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x17
	.4byte	.LASF175
	.2byte	0x562
	.4byte	.L98
	.uleb128 0x18
	.4byte	.LLRL1
	.uleb128 0x4
	.4byte	.LASF160
	.2byte	0x4bf
	.byte	0x1f
	.4byte	0xade
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LLRL2
	.uleb128 0x4
	.4byte	.LASF166
	.2byte	0x51e
	.byte	0x1e
	.4byte	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF168
	.2byte	0x484
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3a
	.uleb128 0xd
	.string	"idx"
	.2byte	0x484
	.byte	0x1b
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xd
	.string	"ttl"
	.2byte	0x484
	.byte	0x26
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF160
	.2byte	0x486
	.byte	0x1b
	.4byte	0xade
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF169
	.2byte	0x477
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc5d
	.uleb128 0x6
	.string	"i"
	.2byte	0x479
	.byte	0x8
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x14
	.4byte	.LASF170
	.2byte	0x42a
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc9e
	.uleb128 0xd
	.string	"i"
	.2byte	0x42a
	.byte	0x16
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x6
	.string	"err"
	.2byte	0x42c
	.byte	0x9
	.4byte	0x197
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x4
	.4byte	.LASF160
	.2byte	0x42d
	.byte	0x1b
	.4byte	0xade
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF172
	.2byte	0x413
	.4byte	0xd7
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd6
	.uleb128 0x5
	.4byte	.LASF173
	.2byte	0x413
	.byte	0x34
	.4byte	0xade
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"ret"
	.2byte	0x415
	.byte	0x8
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF174
	.2byte	0x3fb
	.4byte	0xef
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd17
	.uleb128 0x4
	.4byte	.LASF120
	.2byte	0x3fd
	.byte	0x9
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"i"
	.2byte	0x3fe
	.byte	0x8
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x17
	.4byte	.LASF176
	.2byte	0x400
	.4byte	.L64
	.byte	0
	.uleb128 0x14
	.4byte	.LASF177
	.2byte	0x3c1
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd4b
	.uleb128 0xd
	.string	"idx"
	.2byte	0x3c1
	.byte	0x15
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x5
	.4byte	.LASF59
	.2byte	0x3c1
	.byte	0x25
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF178
	.2byte	0x2ff
	.4byte	0x197
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe46
	.uleb128 0xd
	.string	"idx"
	.2byte	0x2ff
	.byte	0xf
	.4byte	0xd7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x6
	.string	"err"
	.2byte	0x301
	.byte	0x9
	.4byte	0x197
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x6
	.string	"hdr"
	.2byte	0x302
	.byte	0x12
	.4byte	0x4c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"qry"
	.2byte	0x303
	.byte	0x14
	.4byte	0x540
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.string	"p"
	.2byte	0x304
	.byte	0x10
	.4byte	0x289
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF179
	.2byte	0x305
	.byte	0x9
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF180
	.2byte	0x305
	.byte	0x14
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x4
	.4byte	.LASF152
	.2byte	0x306
	.byte	0xf
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF181
	.2byte	0x306
	.byte	0x1a
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"n"
	.2byte	0x307
	.byte	0x8
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x4
	.4byte	.LASF182
	.2byte	0x308
	.byte	0x8
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -43
	.uleb128 0x4
	.4byte	.LASF160
	.2byte	0x309
	.byte	0x1b
	.4byte	0xade
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.4byte	.LASF183
	.2byte	0x36e
	.4byte	.L55
	.uleb128 0x18
	.4byte	.LLRL0
	.uleb128 0x6
	.string	"dst"
	.2byte	0x31f
	.byte	0x16
	.4byte	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF184
	.2byte	0x320
	.byte	0xb
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF185
	.2byte	0x2d7
	.4byte	0xef
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe98
	.uleb128 0xd
	.string	"p"
	.2byte	0x2d7
	.byte	0x1c
	.4byte	0x289
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF179
	.2byte	0x2d7
	.byte	0x25
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x6
	.string	"n"
	.2byte	0x2d9
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF186
	.2byte	0x2da
	.byte	0x9
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x13
	.4byte	.LASF187
	.2byte	0x29e
	.4byte	0xef
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf46
	.uleb128 0x5
	.4byte	.LASF188
	.2byte	0x29e
	.byte	0x1e
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"p"
	.2byte	0x29e
	.byte	0x32
	.4byte	0x289
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF189
	.2byte	0x29e
	.byte	0x3b
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x6
	.string	"n"
	.2byte	0x2a0
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF190
	.2byte	0x2a1
	.byte	0x9
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x16
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x6
	.string	"c"
	.2byte	0x2b1
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0xf2b
	.uleb128 0x6
	.string	"__x"
	.2byte	0x2b5
	.byte	0xe
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.uleb128 0x16
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x6
	.string	"__x"
	.2byte	0x2b5
	.byte	0x28
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF191
	.2byte	0x26a
	.4byte	0x197
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa9
	.uleb128 0x5
	.4byte	.LASF125
	.2byte	0x26a
	.byte	0x18
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF155
	.2byte	0x26a
	.byte	0x25
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF59
	.2byte	0x26a
	.byte	0x3d
	.4byte	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF161
	.2byte	0x26c
	.byte	0xa
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"i"
	.2byte	0x26d
	.byte	0x8
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x20
	.4byte	.LASF195
	.2byte	0x18b
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x17d
	.byte	0x1
	.4byte	0x38b
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe5
	.uleb128 0x5
	.4byte	.LASF193
	.2byte	0x17d
	.byte	0x14
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x169
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x101b
	.uleb128 0x5
	.4byte	.LASF193
	.2byte	0x169
	.byte	0x14
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x5
	.4byte	.LASF194
	.2byte	0x169
	.byte	0x2d
	.4byte	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.4byte	.LASF196
	.2byte	0x13b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.sleb128 6
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
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2d
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
	.byte	0x5
	.4byte	.LBB5
	.byte	0x4
	.uleb128 .LBB5-.LBB5
	.uleb128 .LBE5-.LBB5
	.byte	0x4
	.uleb128 .LBB6-.LBB5
	.uleb128 .LBE6-.LBB5
	.byte	0
.LLRL1:
	.byte	0x5
	.4byte	.LBB7
	.byte	0x4
	.uleb128 .LBB7-.LBB7
	.uleb128 .LBE7-.LBB7
	.byte	0x4
	.uleb128 .LBB10-.LBB7
	.uleb128 .LBE10-.LBB7
	.byte	0
.LLRL2:
	.byte	0x5
	.4byte	.LBB8
	.byte	0x4
	.uleb128 .LBB8-.LBB8
	.uleb128 .LBE8-.LBB8
	.byte	0x4
	.uleb128 .LBB9-.LBB8
	.uleb128 .LBE9-.LBB8
	.byte	0
.LLRL3:
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
.LASF183:
	.string	"overflow_return"
.LASF117:
	.string	"DNS_STATE_DONE"
.LASF90:
	.string	"udp_pcb"
.LASF105:
	.string	"flags1"
.LASF106:
	.string	"flags2"
.LASF103:
	.string	"dns_found_callback"
.LASF70:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF94:
	.string	"so_options"
.LASF111:
	.string	"dns_query"
.LASF145:
	.string	"strlen"
.LASF176:
	.string	"again"
.LASF157:
	.string	"dns_gethostbyname"
.LASF46:
	.string	"PBUF_RAM"
.LASF87:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF44:
	.string	"PBUF_RAW"
.LASF50:
	.string	"pbuf_type"
.LASF37:
	.string	"ERR_CLSD"
.LASF30:
	.string	"ERR_USE"
.LASF38:
	.string	"ERR_ARG"
.LASF198:
	.string	"dns_setserver"
.LASF10:
	.string	"unsigned int"
.LASF93:
	.string	"netif_idx"
.LASF51:
	.string	"next"
.LASF189:
	.string	"start_offset"
.LASF129:
	.string	"dns_pcbs"
.LASF39:
	.string	"err_t"
.LASF166:
	.string	"ip4addr"
.LASF137:
	.string	"pbuf_copy_partial"
.LASF152:
	.string	"hostname"
.LASF167:
	.string	"dns_recv"
.LASF20:
	.string	"u16_t"
.LASF99:
	.string	"mcast_ttl"
.LASF170:
	.string	"dns_check_entry"
.LASF172:
	.string	"dns_backupserver_available"
.LASF193:
	.string	"numdns"
.LASF136:
	.string	"lwip_htonl"
.LASF142:
	.string	"lwip_htons"
.LASF155:
	.string	"hostnamelen"
.LASF81:
	.string	"MEMP_PBUF_POOL"
.LASF36:
	.string	"ERR_RST"
.LASF134:
	.string	"ip4addr_aton"
.LASF127:
	.string	"found"
.LASF128:
	.string	"dns_txid"
.LASF40:
	.string	"PBUF_TRANSPORT"
.LASF179:
	.string	"query_idx"
.LASF31:
	.string	"ERR_ALREADY"
.LASF83:
	.string	"lwip_ip_addr_type"
.LASF124:
	.string	"seqno"
.LASF173:
	.string	"pentry"
.LASF17:
	.string	"uint32_t"
.LASF14:
	.string	"int8_t"
.LASF77:
	.string	"MEMP_IGMP_GROUP"
.LASF141:
	.string	"pbuf_take"
.LASF75:
	.string	"MEMP_TCPIP_MSG_API"
.LASF122:
	.string	"server_idx"
.LASF95:
	.string	"local_port"
.LASF163:
	.string	"res_idx"
.LASF191:
	.string	"dns_lookup"
.LASF158:
	.string	"lseq"
.LASF66:
	.string	"ip_addr_any"
.LASF159:
	.string	"lseqi"
.LASF9:
	.string	"long long unsigned int"
.LASF184:
	.string	"dst_port"
.LASF102:
	.string	"dns_mquery_v4group"
.LASF118:
	.string	"dns_table_entry"
.LASF60:
	.string	"ip4_addr_t"
.LASF185:
	.string	"dns_skip_name"
.LASF28:
	.string	"ERR_VAL"
.LASF175:
	.string	"ignore_packet"
.LASF76:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF48:
	.string	"PBUF_REF"
.LASF165:
	.string	"nanswers"
.LASF54:
	.string	"type_internal"
.LASF53:
	.string	"tot_len"
.LASF119:
	.string	"ipaddr"
.LASF13:
	.string	"size_t"
.LASF148:
	.string	"pbuf_put_at"
.LASF52:
	.string	"payload"
.LASF41:
	.string	"PBUF_IP"
.LASF57:
	.string	"pbuf"
.LASF133:
	.string	"dns_servers"
.LASF115:
	.string	"DNS_STATE_NEW"
.LASF49:
	.string	"PBUF_POOL"
.LASF180:
	.string	"copy_len"
.LASF55:
	.string	"flags"
.LASF82:
	.string	"MEMP_MAX"
.LASF19:
	.string	"s8_t"
.LASF74:
	.string	"MEMP_NETCONN"
.LASF178:
	.string	"dns_send"
.LASF177:
	.string	"dns_call_found"
.LASF29:
	.string	"ERR_WOULDBLOCK"
.LASF25:
	.string	"ERR_TIMEOUT"
.LASF80:
	.string	"MEMP_PBUF"
.LASF12:
	.string	"char"
.LASF108:
	.string	"numanswers"
.LASF146:
	.string	"pbuf_try_get_at"
.LASF161:
	.string	"namelen"
.LASF97:
	.string	"mcast_ip4"
.LASF15:
	.string	"uint8_t"
.LASF104:
	.string	"dns_hdr"
.LASF144:
	.string	"pbuf_alloc"
.LASF138:
	.string	"pbuf_free"
.LASF73:
	.string	"MEMP_NETBUF"
.LASF8:
	.string	"long long int"
.LASF63:
	.string	"IPADDR_TYPE_ANY"
.LASF34:
	.string	"ERR_IF"
.LASF194:
	.string	"dnsserver"
.LASF140:
	.string	"pbuf_take_at"
.LASF69:
	.string	"MEMP_TCP_PCB"
.LASF18:
	.string	"u8_t"
.LASF139:
	.string	"udp_sendto"
.LASF109:
	.string	"numauthrr"
.LASF143:
	.string	"memset"
.LASF96:
	.string	"remote_port"
.LASF156:
	.string	"dns_gethostbyname_addrtype"
.LASF181:
	.string	"hostname_part"
.LASF130:
	.string	"dns_seqno"
.LASF42:
	.string	"PBUF_LINK"
.LASF72:
	.string	"MEMP_ALTCP_PCB"
.LASF174:
	.string	"dns_create_txid"
.LASF187:
	.string	"dns_compare_name"
.LASF147:
	.string	"lwip_strnicmp"
.LASF188:
	.string	"query"
.LASF11:
	.string	"long double"
.LASF192:
	.string	"dns_getserver"
.LASF16:
	.string	"uint16_t"
.LASF56:
	.string	"if_idx"
.LASF24:
	.string	"ERR_BUF"
.LASF89:
	.string	"udp_recv_fn"
.LASF21:
	.string	"u32_t"
.LASF4:
	.string	"short int"
.LASF164:
	.string	"nquestions"
.LASF6:
	.string	"long int"
.LASF107:
	.string	"numquestions"
.LASF78:
	.string	"MEMP_SYS_TIMEOUT"
.LASF186:
	.string	"offset"
.LASF132:
	.string	"dns_requests"
.LASF68:
	.string	"MEMP_UDP_PCB"
.LASF91:
	.string	"local_ip"
.LASF27:
	.string	"ERR_INPROGRESS"
.LASF98:
	.string	"mcast_ifindex"
.LASF58:
	.string	"ip4_addr"
.LASF32:
	.string	"ERR_ISCONN"
.LASF125:
	.string	"name"
.LASF67:
	.string	"MEMP_RAW_PCB"
.LASF101:
	.string	"recv_arg"
.LASF7:
	.string	"long unsigned int"
.LASF169:
	.string	"dns_check_entries"
.LASF45:
	.string	"pbuf_layer"
.LASF162:
	.string	"port"
.LASF195:
	.string	"dns_tmr"
.LASF110:
	.string	"numextrarr"
.LASF149:
	.string	"udp_recv"
.LASF126:
	.string	"dns_req_entry"
.LASF160:
	.string	"entry"
.LASF112:
	.string	"type"
.LASF3:
	.string	"unsigned char"
.LASF84:
	.string	"lwip_internal_netif_client_data_index"
.LASF61:
	.string	"IPADDR_TYPE_V4"
.LASF62:
	.string	"IPADDR_TYPE_V6"
.LASF71:
	.string	"MEMP_TCP_SEG"
.LASF131:
	.string	"dns_table"
.LASF182:
	.string	"pcb_idx"
.LASF153:
	.string	"callback_arg"
.LASF59:
	.string	"addr"
.LASF116:
	.string	"DNS_STATE_ASKING"
.LASF196:
	.string	"dns_init"
.LASF121:
	.string	"state"
.LASF150:
	.string	"udp_bind"
.LASF88:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF113:
	.string	"dns_answer"
.LASF35:
	.string	"ERR_ABRT"
.LASF114:
	.string	"DNS_STATE_UNUSED"
.LASF123:
	.string	"retries"
.LASF22:
	.string	"ERR_OK"
.LASF100:
	.string	"recv"
.LASF190:
	.string	"response_offset"
.LASF85:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF65:
	.string	"_ctype_"
.LASF154:
	.string	"dns_addrtype"
.LASF2:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF135:
	.string	"memcpy"
.LASF33:
	.string	"ERR_CONN"
.LASF171:
	.string	"dns_enqueue"
.LASF92:
	.string	"remote_ip"
.LASF26:
	.string	"ERR_RTE"
.LASF168:
	.string	"dns_correct_response"
.LASF64:
	.string	"ip_addr_t"
.LASF79:
	.string	"MEMP_NETDB"
.LASF43:
	.string	"PBUF_RAW_TX"
.LASF47:
	.string	"PBUF_ROM"
.LASF197:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF120:
	.string	"txid"
.LASF86:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF23:
	.string	"ERR_MEM"
.LASF151:
	.string	"udp_new_ip_type"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/dns.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
