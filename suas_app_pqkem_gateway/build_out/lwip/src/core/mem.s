	.file	"mem.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/mem.c"
	.globl	ram_heap
	.section	.wifi_ram,"aw"
	.align	2
	.type	ram_heap, @object
	.size	ram_heap, 8211
ram_heap:
	.zero	8211
	.section	.sbss.ram,"aw",@nobits
	.align	2
	.type	ram, @object
	.size	ram, 4
ram:
	.zero	4
	.section	.sbss.ram_end,"aw",@nobits
	.align	2
	.type	ram_end, @object
	.size	ram_end, 4
ram_end:
	.zero	4
	.section	.sbss.mem_mutex,"aw",@nobits
	.align	2
	.type	mem_mutex, @object
	.size	mem_mutex, 4
mem_mutex:
	.zero	4
	.section	.sbss.lfree,"aw",@nobits
	.align	2
	.type	lfree, @object
	.size	lfree, 4
lfree:
	.zero	4
	.section	.text.ptr_to_mem,"ax",@progbits
	.align	1
	.type	ptr_to_mem, @function
ptr_to_mem:
.LFB6:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/mem.c"
	.loc 1 439 1
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
	sh	a5,-18(s0)
	.loc 1 440 32
	lui	a5,%hi(ram)
	lw	a4,%lo(ram)(a5)
	lhu	a5,-18(s0)
	.loc 1 440 10
	add	a5,a4,a5
	.loc 1 441 1
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
	.size	ptr_to_mem, .-ptr_to_mem
	.section	.text.mem_to_ptr,"ax",@progbits
	.align	1
	.type	mem_to_ptr, @function
mem_to_ptr:
.LFB7:
	.loc 1 445 1
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
	.loc 1 446 35
	lui	a5,%hi(ram)
	lw	a5,%lo(ram)(a5)
	lw	a4,-20(s0)
	sub	a5,a4,a5
	.loc 1 446 10
	slli	a5,a5,16
	srli	a5,a5,16
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
	.size	mem_to_ptr, .-mem_to_ptr
	.section	.text.plug_holes,"ax",@progbits
	.align	1
	.type	plug_holes, @function
plug_holes:
.LFB8:
	.loc 1 462 1
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
	.loc 1 473 10
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	mv	a0,a5
	call	ptr_to_mem
	sw	a0,-20(s0)
	.loc 1 474 6
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	beq	a4,a5,.L6
	.loc 1 474 26 discriminator 1
	lw	a5,-20(s0)
	lbu	a5,4(a5)
	.loc 1 474 19 discriminator 1
	bne	a5,zero,.L6
	.loc 1 474 57 discriminator 2
	lui	a5,%hi(ram_end)
	lw	a5,%lo(ram_end)(a5)
	.loc 1 474 38 discriminator 2
	lw	a4,-20(s0)
	beq	a4,a5,.L6
	.loc 1 476 15
	lui	a5,%hi(lfree)
	lw	a5,%lo(lfree)(a5)
	.loc 1 476 8
	lw	a4,-20(s0)
	bne	a4,a5,.L7
	.loc 1 477 13
	lui	a5,%hi(lfree)
	lw	a4,-36(s0)
	sw	a4,%lo(lfree)(a5)
.L7:
	.loc 1 479 21
	lw	a5,-20(s0)
	lhu	a4,0(a5)
	.loc 1 479 15
	lw	a5,-36(s0)
	sh	a4,0(a5)
	.loc 1 480 13
	lw	a5,-20(s0)
	lhu	a4,0(a5)
	.loc 1 480 8
	li	a5,8192
	beq	a4,a5,.L6
	.loc 1 481 7
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	mv	a0,a5
	call	ptr_to_mem
	mv	s1,a0
	.loc 1 481 38 discriminator 1
	lw	a0,-36(s0)
	call	mem_to_ptr
	mv	a5,a0
	.loc 1 481 36 discriminator 2
	sh	a5,2(s1)
.L6:
	.loc 1 486 10
	lw	a5,-36(s0)
	lhu	a5,2(a5)
	mv	a0,a5
	call	ptr_to_mem
	sw	a0,-24(s0)
	.loc 1 487 6
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	beq	a4,a5,.L10
	.loc 1 487 26 discriminator 1
	lw	a5,-24(s0)
	lbu	a5,4(a5)
	.loc 1 487 19 discriminator 1
	bne	a5,zero,.L10
	.loc 1 489 15
	lui	a5,%hi(lfree)
	lw	a5,%lo(lfree)(a5)
	.loc 1 489 8
	lw	a4,-36(s0)
	bne	a4,a5,.L9
	.loc 1 490 13
	lui	a5,%hi(lfree)
	lw	a4,-24(s0)
	sw	a4,%lo(lfree)(a5)
.L9:
	.loc 1 492 21
	lw	a5,-36(s0)
	lhu	a4,0(a5)
	.loc 1 492 16
	lw	a5,-24(s0)
	sh	a4,0(a5)
	.loc 1 493 12
	lw	a5,-36(s0)
	lhu	a4,0(a5)
	.loc 1 493 8
	li	a5,8192
	beq	a4,a5,.L10
	.loc 1 494 7
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	mv	a0,a5
	call	ptr_to_mem
	mv	s1,a0
	.loc 1 494 37 discriminator 1
	lw	a0,-24(s0)
	call	mem_to_ptr
	mv	a5,a0
	.loc 1 494 35 discriminator 2
	sh	a5,2(s1)
.L10:
	.loc 1 497 1
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
.LFE8:
	.size	plug_holes, .-plug_holes
	.section	.text.mem_init,"ax",@progbits
	.align	1
	.globl	mem_init
	.type	mem_init, @function
mem_init:
.LFB9:
	.loc 1 504 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 511 28
	lui	a5,%hi(ram_heap)
	addi	a5,a5,%lo(ram_heap)
	.loc 1 511 54
	addi	a5,a5,3
	.loc 1 511 59
	andi	a5,a5,-4
	.loc 1 511 9
	mv	a4,a5
	.loc 1 511 7
	lui	a5,%hi(ram)
	sw	a4,%lo(ram)(a5)
	.loc 1 513 7
	lui	a5,%hi(ram)
	lw	a5,%lo(ram)(a5)
	sw	a5,-20(s0)
	.loc 1 514 13
	lw	a5,-20(s0)
	li	a4,8192
	sh	a4,0(a5)
	.loc 1 515 13
	lw	a5,-20(s0)
	sh	zero,2(a5)
	.loc 1 516 13
	lw	a5,-20(s0)
	sb	zero,4(a5)
	.loc 1 518 13
	li	a0,8192
	call	ptr_to_mem
	mv	a4,a0
	.loc 1 518 11 discriminator 1
	lui	a5,%hi(ram_end)
	sw	a4,%lo(ram_end)(a5)
	.loc 1 519 10
	lui	a5,%hi(ram_end)
	lw	a5,%lo(ram_end)(a5)
	.loc 1 519 17
	li	a4,1
	sb	a4,4(a5)
	.loc 1 520 10
	lui	a5,%hi(ram_end)
	lw	a5,%lo(ram_end)(a5)
	.loc 1 520 17
	li	a4,8192
	sh	a4,0(a5)
	.loc 1 521 10
	lui	a5,%hi(ram_end)
	lw	a5,%lo(ram_end)(a5)
	.loc 1 521 17
	li	a4,8192
	sh	a4,2(a5)
	.loc 1 525 9
	lui	a5,%hi(ram)
	lw	a4,%lo(ram)(a5)
	lui	a5,%hi(lfree)
	sw	a4,%lo(lfree)(a5)
	.loc 1 527 24
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	li	a4,8192
	sh	a4,174(a5)
	.loc 1 529 7
	lui	a5,%hi(mem_mutex)
	addi	a0,a5,%lo(mem_mutex)
	call	sys_mutex_new
	.loc 1 532 1
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
.LFE9:
	.size	mem_init, .-mem_init
	.section	.text.mem_link_valid,"ax",@progbits
	.align	1
	.type	mem_link_valid, @function
mem_link_valid:
.LFB10:
	.loc 1 539 1
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
	.loc 1 542 14
	lw	a0,-36(s0)
	call	mem_to_ptr
	mv	a5,a0
	sh	a5,-18(s0)
	.loc 1 543 10
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	mv	a0,a5
	call	ptr_to_mem
	sw	a0,-24(s0)
	.loc 1 544 10
	lw	a5,-36(s0)
	lhu	a5,2(a5)
	mv	a0,a5
	call	ptr_to_mem
	sw	a0,-28(s0)
	.loc 1 545 11
	lw	a5,-36(s0)
	lhu	a4,0(a5)
	.loc 1 545 6
	li	a5,8192
	bgtu	a4,a5,.L13
	.loc 1 545 63 discriminator 1
	lw	a5,-36(s0)
	lhu	a4,2(a5)
	.loc 1 545 56 discriminator 1
	li	a5,8192
	bgtu	a4,a5,.L13
	.loc 1 546 12
	lw	a5,-36(s0)
	lhu	a5,2(a5)
	.loc 1 545 108 discriminator 2
	lhu	a4,-18(s0)
	beq	a4,a5,.L14
	.loc 1 546 40
	lw	a5,-28(s0)
	lhu	a5,0(a5)
	.loc 1 546 32
	lhu	a4,-18(s0)
	bne	a4,a5,.L13
.L14:
	.loc 1 547 14
	lui	a5,%hi(ram_end)
	lw	a5,%lo(ram_end)(a5)
	.loc 1 546 61 discriminator 1
	lw	a4,-24(s0)
	beq	a4,a5,.L15
	.loc 1 547 34
	lw	a5,-24(s0)
	lhu	a5,2(a5)
	.loc 1 547 26
	lhu	a4,-18(s0)
	beq	a4,a5,.L15
.L13:
	.loc 1 548 12
	li	a5,0
	j	.L16
.L15:
	.loc 1 550 10
	li	a5,1
.L16:
	.loc 1 551 1
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
	.size	mem_link_valid, .-mem_link_valid
	.section	.text.mem_free,"ax",@progbits
	.align	1
	.globl	mem_free
	.type	mem_free, @function
mem_free:
.LFB11:
	.loc 1 605 1
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
	.loc 1 609 6
	lw	a5,-52(s0)
	beq	a5,zero,.L26
	.loc 1 613 9
	lw	a5,-52(s0)
	.loc 1 613 26
	andi	a5,a5,3
	.loc 1 613 6
	beq	a5,zero,.L20
.LBB2:
	.loc 1 617 44
	call	sys_arch_protect
	sw	a0,-36(s0)
	.loc 1 617 80 discriminator 1
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,180(a5)
	.loc 1 617 64 discriminator 1
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,180(a5)
	.loc 1 617 90 discriminator 1
	lw	a0,-36(s0)
	call	sys_arch_unprotect
.LBE2:
	.loc 1 618 5
	j	.L17
.L20:
	.loc 1 623 7
	lw	a5,-52(s0)
	addi	a5,a5,-8
	sw	a5,-20(s0)
	.loc 1 625 19
	lui	a5,%hi(ram)
	lw	a5,%lo(ram)(a5)
	.loc 1 625 6
	lw	a4,-20(s0)
	bltu	a4,a5,.L21
	.loc 1 625 41 discriminator 1
	lw	a5,-52(s0)
	addi	a4,a5,12
	.loc 1 625 74 discriminator 1
	lui	a5,%hi(ram_end)
	lw	a5,%lo(ram_end)(a5)
	.loc 1 625 25 discriminator 1
	bleu	a4,a5,.L22
.L21:
.LBB3:
	.loc 1 629 44
	call	sys_arch_protect
	sw	a0,-32(s0)
	.loc 1 629 80 discriminator 1
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,180(a5)
	.loc 1 629 64 discriminator 1
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,180(a5)
	.loc 1 629 90 discriminator 1
	lw	a0,-32(s0)
	call	sys_arch_unprotect
.LBE3:
	.loc 1 630 5
	j	.L17
.L22:
	.loc 1 636 3
	lui	a5,%hi(mem_mutex)
	addi	a0,a5,%lo(mem_mutex)
	call	sys_mutex_lock
	.loc 1 638 11
	lw	a5,-20(s0)
	lbu	a5,4(a5)
	.loc 1 638 6
	bne	a5,zero,.L23
	.loc 1 640 5
	lui	a5,%hi(mem_mutex)
	addi	a0,a5,%lo(mem_mutex)
	call	sys_mutex_unlock
.LBB4:
	.loc 1 643 44
	call	sys_arch_protect
	sw	a0,-28(s0)
	.loc 1 643 80 discriminator 1
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,180(a5)
	.loc 1 643 64 discriminator 1
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,180(a5)
	.loc 1 643 90 discriminator 1
	lw	a0,-28(s0)
	call	sys_arch_unprotect
.LBE4:
	.loc 1 644 5
	j	.L17
.L23:
	.loc 1 647 8
	lw	a0,-20(s0)
	call	mem_link_valid
	mv	a5,a0
	.loc 1 647 6 discriminator 1
	bne	a5,zero,.L24
	.loc 1 649 5
	lui	a5,%hi(mem_mutex)
	addi	a0,a5,%lo(mem_mutex)
	call	sys_mutex_unlock
.LBB5:
	.loc 1 652 44
	call	sys_arch_protect
	sw	a0,-24(s0)
	.loc 1 652 80 discriminator 1
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,180(a5)
	.loc 1 652 64 discriminator 1
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,180(a5)
	.loc 1 652 90 discriminator 1
	lw	a0,-24(s0)
	call	sys_arch_unprotect
.LBE5:
	.loc 1 653 5
	j	.L17
.L24:
	.loc 1 657 13
	lw	a5,-20(s0)
	sb	zero,4(a5)
	.loc 1 659 11
	lui	a5,%hi(lfree)
	lw	a5,%lo(lfree)(a5)
	.loc 1 659 6
	lw	a4,-20(s0)
	bgeu	a4,a5,.L25
	.loc 1 661 11
	lui	a5,%hi(lfree)
	lw	a4,-20(s0)
	sw	a4,%lo(lfree)(a5)
.L25:
	.loc 1 664 53
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,176(a5)
	.loc 1 664 101
	lui	a5,%hi(ram)
	lw	a5,%lo(ram)(a5)
	lw	a3,-20(s0)
	sub	a5,a3,a5
	.loc 1 664 75
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 1 664 66
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	.loc 1 664 60
	sub	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 664 25
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 664 23
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,176(a5)
	.loc 1 667 3
	lw	a0,-20(s0)
	call	plug_holes
	.loc 1 672 3
	lui	a5,%hi(mem_mutex)
	addi	a0,a5,%lo(mem_mutex)
	call	sys_mutex_unlock
	j	.L17
.L26:
	.loc 1 611 5
	nop
.L17:
	.loc 1 673 1
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
	.size	mem_free, .-mem_free
	.section	.text.mem_trim,"ax",@progbits
	.align	1
	.globl	mem_trim
	.type	mem_trim, @function
mem_trim:
.LFB12:
	.loc 1 687 1
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
	sh	a5,-54(s0)
	.loc 1 696 42
	lhu	a5,-54(s0)
	addi	a5,a5,3
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 696 11
	andi	a5,a5,-4
	sh	a5,-18(s0)
	.loc 1 697 6
	lhu	a4,-18(s0)
	li	a5,11
	bgtu	a4,a5,.L28
	.loc 1 699 13
	li	a5,12
	sh	a5,-18(s0)
.L28:
	.loc 1 704 6
	lhu	a4,-18(s0)
	li	a5,8192
	bgtu	a4,a5,.L29
	.loc 1 704 54 discriminator 1
	lhu	a4,-18(s0)
	lhu	a5,-54(s0)
	bgeu	a4,a5,.L30
.L29:
	.loc 1 705 11
	li	a5,0
	j	.L31
.L30:
	.loc 1 711 20
	lui	a5,%hi(ram)
	lw	a5,%lo(ram)(a5)
	.loc 1 711 6
	lw	a4,-52(s0)
	bltu	a4,a5,.L32
	.loc 1 711 53 discriminator 1
	lui	a5,%hi(ram_end)
	lw	a5,%lo(ram_end)(a5)
	.loc 1 711 34 discriminator 1
	lw	a4,-52(s0)
	bltu	a4,a5,.L33
.L32:
.LBB6:
	.loc 1 714 44
	call	sys_arch_protect
	sw	a0,-40(s0)
	.loc 1 714 80 discriminator 1
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,180(a5)
	.loc 1 714 64 discriminator 1
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,180(a5)
	.loc 1 714 90 discriminator 1
	lw	a0,-40(s0)
	call	sys_arch_unprotect
.LBE6:
	.loc 1 715 12
	lw	a5,-52(s0)
	j	.L31
.L33:
	.loc 1 719 7
	lw	a5,-52(s0)
	addi	a5,a5,-8
	sw	a5,-24(s0)
	.loc 1 724 9
	lw	a0,-24(s0)
	call	mem_to_ptr
	mv	a5,a0
	sh	a5,-26(s0)
	.loc 1 726 39
	lw	a5,-24(s0)
	lhu	a5,0(a5)
	.loc 1 726 23
	lhu	a4,-26(s0)
	sub	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 726 8
	addi	a5,a5,-8
	sh	a5,-28(s0)
	.loc 1 728 6
	lhu	a4,-18(s0)
	lhu	a5,-28(s0)
	bleu	a4,a5,.L34
	.loc 1 730 11
	li	a5,0
	j	.L31
.L34:
	.loc 1 732 6
	lhu	a4,-18(s0)
	lhu	a5,-28(s0)
	bne	a4,a5,.L35
	.loc 1 734 12
	lw	a5,-52(s0)
	j	.L31
.L35:
	.loc 1 738 3
	lui	a5,%hi(mem_mutex)
	addi	a0,a5,%lo(mem_mutex)
	call	sys_mutex_lock
	.loc 1 740 10
	lw	a5,-24(s0)
	lhu	a5,0(a5)
	mv	a0,a5
	call	ptr_to_mem
	sw	a0,-32(s0)
	.loc 1 741 11
	lw	a5,-32(s0)
	lbu	a5,4(a5)
	.loc 1 741 6
	bne	a5,zero,.L36
.LBB7:
	.loc 1 746 10
	lw	a5,-32(s0)
	lhu	a5,0(a5)
	sh	a5,-36(s0)
	.loc 1 748 76
	lhu	a5,-26(s0)
	mv	a4,a5
	lhu	a5,-18(s0)
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 748 10
	addi	a5,a5,8
	sh	a5,-34(s0)
	.loc 1 749 15
	lui	a5,%hi(lfree)
	lw	a5,%lo(lfree)(a5)
	.loc 1 749 8
	lw	a4,-32(s0)
	bne	a4,a5,.L37
	.loc 1 750 15
	lhu	a5,-34(s0)
	mv	a0,a5
	call	ptr_to_mem
	mv	a4,a0
	.loc 1 750 13 discriminator 1
	lui	a5,%hi(lfree)
	sw	a4,%lo(lfree)(a5)
.L37:
	.loc 1 752 12
	lhu	a5,-34(s0)
	mv	a0,a5
	call	ptr_to_mem
	sw	a0,-32(s0)
	.loc 1 753 16
	lw	a5,-32(s0)
	sb	zero,4(a5)
	.loc 1 755 16
	lw	a5,-32(s0)
	lhu	a4,-36(s0)
	sh	a4,0(a5)
	.loc 1 757 16
	lw	a5,-32(s0)
	lhu	a4,-26(s0)
	sh	a4,2(a5)
	.loc 1 759 15
	lw	a5,-24(s0)
	lhu	a4,-34(s0)
	sh	a4,0(a5)
	.loc 1 763 13
	lw	a5,-32(s0)
	lhu	a4,0(a5)
	.loc 1 763 8
	li	a5,8192
	beq	a4,a5,.L38
	.loc 1 764 7
	lw	a5,-32(s0)
	lhu	a5,0(a5)
	mv	a0,a5
	call	ptr_to_mem
	mv	a4,a0
	.loc 1 764 36 discriminator 1
	lhu	a5,-34(s0)
	sh	a5,2(a4)
.L38:
	.loc 1 766 55
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,176(a5)
	.loc 1 766 62
	lhu	a5,-18(s0)
	mv	a3,a5
	lhu	a5,-28(s0)
	sub	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 766 27
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 766 25
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,176(a5)
.LBE7:
	j	.L39
.L36:
	.loc 1 768 69
	lhu	a5,-18(s0)
	addi	a4,a5,20
	.loc 1 768 100
	lhu	a5,-28(s0)
	.loc 1 768 13
	bgtu	a4,a5,.L39
	.loc 1 776 76
	lhu	a5,-26(s0)
	mv	a4,a5
	lhu	a5,-18(s0)
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 776 10
	addi	a5,a5,8
	sh	a5,-34(s0)
	.loc 1 778 12
	lhu	a5,-34(s0)
	mv	a0,a5
	call	ptr_to_mem
	sw	a0,-32(s0)
	.loc 1 779 14
	lui	a5,%hi(lfree)
	lw	a5,%lo(lfree)(a5)
	.loc 1 779 8
	lw	a4,-32(s0)
	bgeu	a4,a5,.L40
	.loc 1 780 13
	lui	a5,%hi(lfree)
	lw	a4,-32(s0)
	sw	a4,%lo(lfree)(a5)
.L40:
	.loc 1 782 16
	lw	a5,-32(s0)
	sb	zero,4(a5)
	.loc 1 783 21
	lw	a5,-24(s0)
	lhu	a4,0(a5)
	.loc 1 783 16
	lw	a5,-32(s0)
	sh	a4,0(a5)
	.loc 1 784 16
	lw	a5,-32(s0)
	lhu	a4,-26(s0)
	sh	a4,2(a5)
	.loc 1 785 15
	lw	a5,-24(s0)
	lhu	a4,-34(s0)
	sh	a4,0(a5)
	.loc 1 786 13
	lw	a5,-32(s0)
	lhu	a4,0(a5)
	.loc 1 786 8
	li	a5,8192
	beq	a4,a5,.L41
	.loc 1 787 7
	lw	a5,-32(s0)
	lhu	a5,0(a5)
	mv	a0,a5
	call	ptr_to_mem
	mv	a4,a0
	.loc 1 787 36 discriminator 1
	lhu	a5,-34(s0)
	sh	a5,2(a4)
.L41:
	.loc 1 789 55
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,176(a5)
	.loc 1 789 62
	lhu	a5,-18(s0)
	mv	a3,a5
	lhu	a5,-28(s0)
	sub	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 789 27
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 789 25
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,176(a5)
.L39:
	.loc 1 805 3
	lui	a5,%hi(mem_mutex)
	addi	a0,a5,%lo(mem_mutex)
	call	sys_mutex_unlock
	.loc 1 806 10
	lw	a5,-52(s0)
.L31:
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
.LFE12:
	.size	mem_trim, .-mem_trim
	.section	.text.mem_malloc,"ax",@progbits
	.align	1
	.globl	mem_malloc
	.type	mem_malloc, @function
mem_malloc:
.LFB13:
	.loc 1 819 1
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
	mv	a5,a0
	sh	a5,-50(s0)
	.loc 1 827 6
	lhu	a5,-50(s0)
	bne	a5,zero,.L43
	.loc 1 828 11
	li	a5,0
	j	.L44
.L43:
	.loc 1 833 38
	lhu	a5,-50(s0)
	addi	a5,a5,3
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 833 8
	andi	a5,a5,-4
	sh	a5,-20(s0)
	.loc 1 834 6
	lhu	a4,-20(s0)
	li	a5,11
	bgtu	a4,a5,.L45
	.loc 1 836 10
	li	a5,12
	sh	a5,-20(s0)
.L45:
	.loc 1 841 6
	lhu	a4,-20(s0)
	li	a5,8192
	bgtu	a4,a5,.L46
	.loc 1 841 51 discriminator 1
	lhu	a4,-20(s0)
	lhu	a5,-50(s0)
	bgeu	a4,a5,.L47
.L46:
	.loc 1 842 11
	li	a5,0
	j	.L44
.L47:
	.loc 1 846 3
	lui	a5,%hi(mem_mutex)
	addi	a0,a5,%lo(mem_mutex)
	call	sys_mutex_lock
	.loc 1 857 16
	lui	a5,%hi(lfree)
	lw	a5,%lo(lfree)(a5)
	mv	a0,a5
	call	mem_to_ptr
	mv	a5,a0
	sh	a5,-18(s0)
	.loc 1 857 5
	j	.L48
.L57:
	.loc 1 859 13
	lhu	a5,-18(s0)
	mv	a0,a5
	call	ptr_to_mem
	sw	a0,-28(s0)
	.loc 1 873 16
	lw	a5,-28(s0)
	lbu	a5,4(a5)
	.loc 1 873 10
	bne	a5,zero,.L49
	.loc 1 874 15
	lw	a5,-28(s0)
	lhu	a5,0(a5)
	mv	a4,a5
	.loc 1 874 22
	lhu	a5,-18(s0)
	sub	a5,a4,a5
	addi	a4,a5,-8
	.loc 1 874 78
	lhu	a5,-20(s0)
	.loc 1 873 24 discriminator 1
	bltu	a4,a5,.L49
	.loc 1 878 16
	lw	a5,-28(s0)
	lhu	a5,0(a5)
	mv	a4,a5
	.loc 1 878 23
	lhu	a5,-18(s0)
	sub	a5,a4,a5
	addi	a4,a5,-8
	.loc 1 878 134
	lhu	a5,-20(s0)
	addi	a5,a5,20
	.loc 1 878 12
	bltu	a4,a5,.L50
	.loc 1 889 82
	lhu	a5,-18(s0)
	mv	a4,a5
	lhu	a5,-20(s0)
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 889 16
	addi	a5,a5,8
	sh	a5,-30(s0)
	.loc 1 892 18
	lhu	a5,-30(s0)
	mv	a0,a5
	call	ptr_to_mem
	sw	a0,-36(s0)
	.loc 1 893 22
	lw	a5,-36(s0)
	sb	zero,4(a5)
	.loc 1 894 27
	lw	a5,-28(s0)
	lhu	a4,0(a5)
	.loc 1 894 22
	lw	a5,-36(s0)
	sh	a4,0(a5)
	.loc 1 895 22
	lw	a5,-36(s0)
	lhu	a4,-18(s0)
	sh	a4,2(a5)
	.loc 1 897 21
	lw	a5,-28(s0)
	lhu	a4,-30(s0)
	sh	a4,0(a5)
	.loc 1 898 21
	lw	a5,-28(s0)
	li	a4,1
	sb	a4,4(a5)
	.loc 1 900 19
	lw	a5,-36(s0)
	lhu	a4,0(a5)
	.loc 1 900 14
	li	a5,8192
	beq	a4,a5,.L51
	.loc 1 901 13
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	mv	a0,a5
	call	ptr_to_mem
	mv	a4,a0
	.loc 1 901 42 discriminator 1
	lhu	a5,-30(s0)
	sh	a5,2(a4)
.L51:
	.loc 1 903 65
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,176(a5)
	.loc 1 903 71
	lhu	a4,-20(s0)
	add	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 903 38
	addi	a5,a5,8
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 903 36
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,176(a5)
	.loc 1 903 147
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,178(a5)
	.loc 1 903 168
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,176(a5)
	.loc 1 903 132
	bgeu	a4,a5,.L52
	.loc 1 903 212 discriminator 1
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,176(a5)
	.loc 1 903 196 discriminator 1
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,178(a5)
	j	.L52
.L50:
	.loc 1 912 21
	lw	a5,-28(s0)
	li	a4,1
	sb	a4,4(a5)
	.loc 1 913 65
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,176(a5)
	.loc 1 913 76
	lw	a5,-28(s0)
	lhu	a5,0(a5)
	.loc 1 913 71
	add	a5,a4,a5
	slli	s1,a5,16
	srli	s1,s1,16
	.loc 1 913 85
	lw	a0,-28(s0)
	call	mem_to_ptr
	mv	a5,a0
	.loc 1 913 38 discriminator 1
	sub	a5,s1,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 913 36 discriminator 1
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,176(a5)
	.loc 1 913 121 discriminator 1
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,178(a5)
	.loc 1 913 142 discriminator 1
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,176(a5)
	.loc 1 913 106 discriminator 1
	bgeu	a4,a5,.L52
	.loc 1 913 186 discriminator 2
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,176(a5)
	.loc 1 913 170 discriminator 2
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,178(a5)
.L52:
	.loc 1 918 17
	lui	a5,%hi(lfree)
	lw	a5,%lo(lfree)(a5)
	.loc 1 918 12
	lw	a4,-28(s0)
	bne	a4,a5,.L53
.LBB8:
	.loc 1 919 23
	lui	a5,%hi(lfree)
	lw	a5,%lo(lfree)(a5)
	sw	a5,-24(s0)
	.loc 1 921 17
	j	.L54
.L56:
	.loc 1 933 19
	lw	a5,-24(s0)
	lhu	a5,0(a5)
	mv	a0,a5
	call	ptr_to_mem
	sw	a0,-24(s0)
.L54:
	.loc 1 921 21
	lw	a5,-24(s0)
	lbu	a5,4(a5)
	.loc 1 921 28
	beq	a5,zero,.L55
	.loc 1 921 35 discriminator 1
	lui	a5,%hi(ram_end)
	lw	a5,%lo(ram_end)(a5)
	.loc 1 921 28 discriminator 1
	lw	a4,-24(s0)
	bne	a4,a5,.L56
.L55:
	.loc 1 935 17
	lui	a5,%hi(lfree)
	lw	a4,-24(s0)
	sw	a4,%lo(lfree)(a5)
.L53:
.LBE8:
	.loc 1 939 9
	lui	a5,%hi(mem_mutex)
	addi	a0,a5,%lo(mem_mutex)
	call	sys_mutex_unlock
	.loc 1 951 75
	lw	a5,-28(s0)
	addi	a5,a5,8
	j	.L44
.L49:
	.loc 1 858 16
	lhu	a5,-18(s0)
	mv	a0,a5
	call	ptr_to_mem
	mv	a5,a0
	.loc 1 858 14 discriminator 1
	lhu	a5,0(a5)
	sh	a5,-18(s0)
.L48:
	.loc 1 857 39 discriminator 2
	lhu	a4,-18(s0)
	.loc 1 857 76 discriminator 2
	lhu	a5,-20(s0)
	li	a3,8192
	sub	a5,a3,a5
	.loc 1 857 39 discriminator 2
	bltu	a4,a5,.L57
	.loc 1 958 19
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,172(a5)
	.loc 1 958 3
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,172(a5)
	.loc 1 960 3
	lui	a5,%hi(mem_mutex)
	addi	a0,a5,%lo(mem_mutex)
	call	sys_mutex_unlock
	.loc 1 962 9
	li	a5,0
.L44:
	.loc 1 963 1
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
.LFE13:
	.size	mem_malloc, .-mem_malloc
	.section	.text.mem_calloc,"ax",@progbits
	.align	1
	.globl	mem_calloc
	.type	mem_calloc, @function
mem_calloc:
.LFB14:
	.loc 1 987 1
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
	mv	a4,a1
	sh	a5,-34(s0)
	mv	a5,a4
	sh	a5,-36(s0)
	.loc 1 989 23
	lhu	a4,-34(s0)
	.loc 1 989 39
	lhu	a5,-36(s0)
	.loc 1 989 10
	mul	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 991 15
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 991 7
	mv	a4,a5
	.loc 1 991 6
	lw	a5,-20(s0)
	beq	a5,a4,.L59
	.loc 1 993 11
	li	a5,0
	j	.L60
.L59:
	.loc 1 997 7
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	mem_malloc
	sw	a0,-24(s0)
	.loc 1 998 6
	lw	a5,-24(s0)
	beq	a5,zero,.L61
	.loc 1 1000 5
	lw	a2,-20(s0)
	li	a1,0
	lw	a0,-24(s0)
	call	memset
.L61:
	.loc 1 1002 10
	lw	a5,-24(s0)
.L60:
	.loc 1 1003 1
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
	.size	mem_calloc, .-mem_calloc
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/arch/cc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/mem.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/queue.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/semphr.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/arch/sys_arch.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/stats.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/sys.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x94e
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x18
	.4byte	.LASF128
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x2
	.byte	0x25
	.byte	0xd
	.4byte	0x37
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x76
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x1a
	.byte	0x4
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x4
	.byte	0x22
	.byte	0x15
	.4byte	0x3e
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x45
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x53
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x4
	.byte	0x56
	.byte	0x16
	.4byte	0x76
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x5
	.byte	0x7d
	.byte	0x11
	.4byte	0xa5
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x5
	.byte	0x7e
	.byte	0x10
	.4byte	0x99
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x5
	.byte	0x7f
	.byte	0x12
	.4byte	0xb1
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x5
	.byte	0x87
	.byte	0x13
	.4byte	0xbd
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x6
	.byte	0x43
	.byte	0xf
	.4byte	0xe1
	.uleb128 0x13
	.byte	0x5
	.4byte	0x3e
	.byte	0x7
	.byte	0x35
	.4byte	0x178
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF25
	.sleb128 -1
	.uleb128 0x4
	.4byte	.LASF26
	.sleb128 -2
	.uleb128 0x4
	.4byte	.LASF27
	.sleb128 -3
	.uleb128 0x4
	.4byte	.LASF28
	.sleb128 -4
	.uleb128 0x4
	.4byte	.LASF29
	.sleb128 -5
	.uleb128 0x4
	.4byte	.LASF30
	.sleb128 -6
	.uleb128 0x4
	.4byte	.LASF31
	.sleb128 -7
	.uleb128 0x4
	.4byte	.LASF32
	.sleb128 -8
	.uleb128 0x4
	.4byte	.LASF33
	.sleb128 -9
	.uleb128 0x4
	.4byte	.LASF34
	.sleb128 -10
	.uleb128 0x4
	.4byte	.LASF35
	.sleb128 -11
	.uleb128 0x4
	.4byte	.LASF36
	.sleb128 -12
	.uleb128 0x4
	.4byte	.LASF37
	.sleb128 -13
	.uleb128 0x4
	.4byte	.LASF38
	.sleb128 -14
	.uleb128 0x4
	.4byte	.LASF39
	.sleb128 -15
	.uleb128 0x4
	.4byte	.LASF40
	.sleb128 -16
	.byte	0
	.uleb128 0x5
	.4byte	.LASF41
	.byte	0x7
	.byte	0x60
	.byte	0xe
	.4byte	0xd5
	.uleb128 0x5
	.4byte	.LASF42
	.byte	0x8
	.byte	0x30
	.byte	0x22
	.4byte	0x190
	.uleb128 0xb
	.4byte	0x195
	.uleb128 0x1b
	.4byte	.LASF129
	.uleb128 0x5
	.4byte	.LASF43
	.byte	0x9
	.byte	0x25
	.byte	0x17
	.4byte	0x184
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0xa
	.byte	0x2d
	.byte	0x1b
	.4byte	0x19a
	.uleb128 0x13
	.byte	0x7
	.4byte	0x45
	.byte	0xb
	.byte	0x34
	.4byte	0x21f
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0xa
	.byte	0x62
	.4byte	0x267
	.uleb128 0x8
	.string	"err"
	.byte	0x66
	.byte	0x9
	.4byte	0xe1
	.byte	0
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x67
	.byte	0xe
	.4byte	0xf9
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x68
	.byte	0xe
	.4byte	0xf9
	.byte	0x4
	.uleb128 0x8
	.string	"max"
	.byte	0x69
	.byte	0xe
	.4byte	0xf9
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x6a
	.byte	0x9
	.4byte	0xe1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0x21f
	.uleb128 0xb
	.4byte	0xc9
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x18
	.byte	0x40
	.4byte	0x30c
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x41
	.byte	0x9
	.4byte	0xe1
	.byte	0
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x42
	.byte	0x9
	.4byte	0xe1
	.byte	0x2
	.uleb128 0x8
	.string	"fw"
	.byte	0x43
	.byte	0x9
	.4byte	0xe1
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x44
	.byte	0x9
	.4byte	0xe1
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x45
	.byte	0x9
	.4byte	0xe1
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x46
	.byte	0x9
	.4byte	0xe1
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x47
	.byte	0x9
	.4byte	0xe1
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x48
	.byte	0x9
	.4byte	0xe1
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x49
	.byte	0x9
	.4byte	0xe1
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x4a
	.byte	0x9
	.4byte	0xe1
	.byte	0x12
	.uleb128 0x8
	.string	"err"
	.byte	0x4b
	.byte	0x9
	.4byte	0xe1
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x4c
	.byte	0x9
	.4byte	0xe1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x1c
	.byte	0x50
	.4byte	0x3c0
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x51
	.byte	0x9
	.4byte	0xe1
	.byte	0
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x52
	.byte	0x9
	.4byte	0xe1
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x53
	.byte	0x9
	.4byte	0xe1
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x54
	.byte	0x9
	.4byte	0xe1
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x55
	.byte	0x9
	.4byte	0xe1
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x56
	.byte	0x9
	.4byte	0xe1
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x57
	.byte	0x9
	.4byte	0xe1
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x58
	.byte	0x9
	.4byte	0xe1
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x59
	.byte	0x9
	.4byte	0xe1
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x5a
	.byte	0x9
	.4byte	0xe1
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x5b
	.byte	0x9
	.4byte	0xe1
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x5c
	.byte	0x9
	.4byte	0xe1
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x5d
	.byte	0x9
	.4byte	0xe1
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x5e
	.byte	0x9
	.4byte	0xe1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0x6e
	.4byte	0x3f0
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x6f
	.byte	0x9
	.4byte	0xe1
	.byte	0
	.uleb128 0x8
	.string	"max"
	.byte	0x70
	.byte	0x9
	.4byte	0xe1
	.byte	0x2
	.uleb128 0x8
	.string	"err"
	.byte	0x71
	.byte	0x9
	.4byte	0xe1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x12
	.byte	0x75
	.4byte	0x420
	.uleb128 0x8
	.string	"sem"
	.byte	0x76
	.byte	0x18
	.4byte	0x3c0
	.byte	0
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x77
	.byte	0x18
	.4byte	0x3c0
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x78
	.byte	0x18
	.4byte	0x3c0
	.byte	0xc
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF88
	.2byte	0x108
	.byte	0xc
	.byte	0xeb
	.byte	0x8
	.4byte	0x4ae
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xee
	.byte	0x16
	.4byte	0x271
	.byte	0
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xf2
	.byte	0x16
	.4byte	0x271
	.byte	0x18
	.uleb128 0x8
	.string	"ip"
	.byte	0xfa
	.byte	0x16
	.4byte	0x271
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xfe
	.byte	0x16
	.4byte	0x271
	.byte	0x48
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0xc
	.2byte	0x102
	.byte	0x15
	.4byte	0x30c
	.byte	0x60
	.uleb128 0xe
	.string	"udp"
	.2byte	0x106
	.byte	0x16
	.4byte	0x271
	.byte	0x7c
	.uleb128 0xe
	.string	"tcp"
	.2byte	0x10a
	.byte	0x16
	.4byte	0x271
	.byte	0x94
	.uleb128 0xe
	.string	"mem"
	.2byte	0x10e
	.byte	0x14
	.4byte	0x21f
	.byte	0xac
	.uleb128 0xd
	.4byte	.LASF93
	.byte	0xc
	.2byte	0x112
	.byte	0x15
	.4byte	0x4ae
	.byte	0xb8
	.uleb128 0xe
	.string	"sys"
	.2byte	0x116
	.byte	0x14
	.4byte	0x3f0
	.byte	0xf4
	.byte	0
	.uleb128 0x14
	.4byte	0x267
	.4byte	0x4be
	.uleb128 0x1d
	.4byte	0x76
	.byte	0xe
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF96
	.byte	0xc
	.2byte	0x133
	.byte	0x16
	.4byte	0x420
	.uleb128 0x1f
	.string	"mem"
	.byte	0x6
	.byte	0x1
	.2byte	0x150
	.byte	0x8
	.4byte	0x504
	.uleb128 0xd
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x152
	.byte	0xe
	.4byte	0xf9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x154
	.byte	0xe
	.4byte	0xf9
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x156
	.byte	0x8
	.4byte	0xc9
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	0xc9
	.4byte	0x515
	.uleb128 0x20
	.4byte	0x76
	.2byte	0x2012
	.byte	0
	.uleb128 0x21
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x16e
	.byte	0x6
	.4byte	0x504
	.uleb128 0x5
	.byte	0x3
	.4byte	ram_heap
	.uleb128 0x7
	.string	"ram"
	.2byte	0x173
	.byte	0xe
	.4byte	0x26c
	.uleb128 0x5
	.byte	0x3
	.4byte	ram
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x175
	.byte	0x14
	.4byte	0x54c
	.uleb128 0x5
	.byte	0x3
	.4byte	ram_end
	.uleb128 0xb
	.4byte	0x4cb
	.uleb128 0x2
	.4byte	.LASF99
	.2byte	0x179
	.byte	0x14
	.4byte	0x1a6
	.uleb128 0x5
	.byte	0x3
	.4byte	mem_mutex
	.uleb128 0x2
	.4byte	.LASF100
	.2byte	0x198
	.byte	0x15
	.4byte	0x54c
	.uleb128 0x5
	.byte	0x3
	.4byte	lfree
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0xe
	.byte	0x21
	.byte	0x8
	.4byte	0x90
	.4byte	0x595
	.uleb128 0x9
	.4byte	0x90
	.uleb128 0x9
	.4byte	0x37
	.uleb128 0x9
	.4byte	0x7d
	.byte	0
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x95
	.4byte	0x5a5
	.uleb128 0x9
	.4byte	0x5a5
	.byte	0
	.uleb128 0xb
	.4byte	0x1a6
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x8f
	.4byte	0x5ba
	.uleb128 0x9
	.4byte	0x5a5
	.byte	0
	.uleb128 0x22
	.4byte	.LASF103
	.byte	0xd
	.2byte	0x1fc
	.byte	0x6
	.4byte	0x5cd
	.uleb128 0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x23
	.4byte	.LASF130
	.byte	0xd
	.2byte	0x1fb
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0xd
	.byte	0x89
	.byte	0x7
	.4byte	0x178
	.4byte	0x5f0
	.uleb128 0x9
	.4byte	0x5a5
	.byte	0
	.uleb128 0x11
	.4byte	.LASF109
	.2byte	0x3da
	.4byte	0x90
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x644
	.uleb128 0xa
	.4byte	.LASF106
	.2byte	0x3da
	.byte	0x17
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xa
	.4byte	.LASF107
	.2byte	0x3da
	.byte	0x29
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"p"
	.2byte	0x3dc
	.byte	0x9
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF108
	.2byte	0x3dd
	.byte	0xa
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF110
	.2byte	0x332
	.4byte	0x90
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d1
	.uleb128 0xa
	.4byte	.LASF111
	.2byte	0x332
	.byte	0x17
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x7
	.string	"ptr"
	.2byte	0x334
	.byte	0xe
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2
	.4byte	.LASF112
	.2byte	0x334
	.byte	0x13
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x2
	.4byte	.LASF107
	.2byte	0x334
	.byte	0x19
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"mem"
	.2byte	0x335
	.byte	0xf
	.4byte	0x54c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF113
	.2byte	0x335
	.byte	0x15
	.4byte	0x54c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x7
	.string	"cur"
	.2byte	0x397
	.byte	0x17
	.4byte	0x54c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF114
	.2byte	0x2ae
	.4byte	0x90
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x799
	.uleb128 0xa
	.4byte	.LASF115
	.2byte	0x2ae
	.byte	0x10
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xa
	.4byte	.LASF116
	.2byte	0x2ae
	.byte	0x21
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x2
	.4byte	.LASF107
	.2byte	0x2b0
	.byte	0xe
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x2b0
	.byte	0x14
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x7
	.string	"ptr"
	.2byte	0x2b1
	.byte	0xe
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x2
	.4byte	.LASF112
	.2byte	0x2b1
	.byte	0x13
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x7
	.string	"mem"
	.2byte	0x2b2
	.byte	0xf
	.4byte	0x54c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF113
	.2byte	0x2b2
	.byte	0x15
	.4byte	0x54c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x77f
	.uleb128 0x2
	.4byte	.LASF118
	.2byte	0x2ca
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x12
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x2
	.4byte	.LASF94
	.2byte	0x2e7
	.byte	0x10
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF122
	.2byte	0x25c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83d
	.uleb128 0xa
	.4byte	.LASF115
	.2byte	0x25c
	.byte	0x10
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"mem"
	.2byte	0x25e
	.byte	0xf
	.4byte	0x54c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x7e9
	.uleb128 0x2
	.4byte	.LASF118
	.2byte	0x269
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xf
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x806
	.uleb128 0x2
	.4byte	.LASF118
	.2byte	0x275
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xf
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x823
	.uleb128 0x2
	.4byte	.LASF118
	.2byte	0x283
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x2
	.4byte	.LASF118
	.2byte	0x28c
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x21a
	.byte	0x1
	.4byte	0x37
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x895
	.uleb128 0x10
	.string	"mem"
	.2byte	0x21a
	.byte	0x1c
	.4byte	0x54c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x21c
	.byte	0xf
	.4byte	0x54c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x21c
	.byte	0x16
	.4byte	0x54c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF121
	.2byte	0x21d
	.byte	0xe
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x17
	.4byte	.LASF123
	.2byte	0x1f7
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ba
	.uleb128 0x7
	.string	"mem"
	.2byte	0x1f9
	.byte	0xf
	.4byte	0x54c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x1cd
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ff
	.uleb128 0x10
	.string	"mem"
	.2byte	0x1cd
	.byte	0x18
	.4byte	0x54c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x1cf
	.byte	0xf
	.4byte	0x54c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x1d0
	.byte	0xf
	.4byte	0x54c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x1bc
	.byte	0x1
	.4byte	0xf9
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x92a
	.uleb128 0x10
	.string	"mem"
	.2byte	0x1bc
	.byte	0x12
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x1b6
	.byte	0x1
	.4byte	0x54c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.string	"ptr"
	.2byte	0x1b6
	.byte	0x17
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
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
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x10
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF122:
	.string	"mem_free"
.LASF48:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF39:
	.string	"ERR_CLSD"
.LASF32:
	.string	"ERR_USE"
.LASF40:
	.string	"ERR_ARG"
.LASF80:
	.string	"rx_report"
.LASF10:
	.string	"unsigned int"
.LASF94:
	.string	"next"
.LASF41:
	.string	"err_t"
.LASF100:
	.string	"lfree"
.LASF21:
	.string	"u16_t"
.LASF101:
	.string	"sys_mutex_unlock"
.LASF105:
	.string	"sys_mutex_new"
.LASF125:
	.string	"mem_to_ptr"
.LASF64:
	.string	"stats_mem"
.LASF95:
	.string	"prev"
.LASF116:
	.string	"new_size"
.LASF59:
	.string	"MEMP_PBUF_POOL"
.LASF120:
	.string	"pmem"
.LASF96:
	.string	"lwip_stats"
.LASF38:
	.string	"ERR_RST"
.LASF33:
	.string	"ERR_ALREADY"
.LASF84:
	.string	"stats_syselem"
.LASF103:
	.string	"sys_arch_unprotect"
.LASF15:
	.string	"int8_t"
.LASF115:
	.string	"rmem"
.LASF55:
	.string	"MEMP_IGMP_GROUP"
.LASF53:
	.string	"MEMP_TCPIP_MSG_API"
.LASF74:
	.string	"opterr"
.LASF86:
	.string	"mutex"
.LASF129:
	.string	"QueueDefinition"
.LASF106:
	.string	"count"
.LASF63:
	.string	"illegal"
.LASF121:
	.string	"rmem_idx"
.LASF90:
	.string	"etharp"
.LASF9:
	.string	"long long unsigned int"
.LASF109:
	.string	"mem_calloc"
.LASF92:
	.string	"igmp"
.LASF30:
	.string	"ERR_VAL"
.LASF54:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF62:
	.string	"used"
.LASF88:
	.string	"stats_"
.LASF102:
	.string	"sys_mutex_lock"
.LASF12:
	.string	"size_t"
.LASF110:
	.string	"mem_malloc"
.LASF97:
	.string	"ram_heap"
.LASF60:
	.string	"MEMP_MAX"
.LASF20:
	.string	"s8_t"
.LASF114:
	.string	"mem_trim"
.LASF52:
	.string	"MEMP_NETCONN"
.LASF79:
	.string	"rx_general"
.LASF31:
	.string	"ERR_WOULDBLOCK"
.LASF27:
	.string	"ERR_TIMEOUT"
.LASF58:
	.string	"MEMP_PBUF"
.LASF14:
	.string	"char"
.LASF23:
	.string	"mem_size_t"
.LASF65:
	.string	"stats_proto"
.LASF11:
	.string	"sys_prot_t"
.LASF123:
	.string	"mem_init"
.LASF42:
	.string	"QueueHandle_t"
.LASF16:
	.string	"uint8_t"
.LASF51:
	.string	"MEMP_NETBUF"
.LASF8:
	.string	"long long int"
.LASF44:
	.string	"sys_mutex_t"
.LASF36:
	.string	"ERR_IF"
.LASF47:
	.string	"MEMP_TCP_PCB"
.LASF93:
	.string	"memp"
.LASF19:
	.string	"u8_t"
.LASF117:
	.string	"newsize"
.LASF104:
	.string	"memset"
.LASF98:
	.string	"ram_end"
.LASF126:
	.string	"plug_holes"
.LASF99:
	.string	"mem_mutex"
.LASF107:
	.string	"size"
.LASF69:
	.string	"chkerr"
.LASF50:
	.string	"MEMP_ALTCP_PCB"
.LASF111:
	.string	"size_in"
.LASF13:
	.string	"long double"
.LASF17:
	.string	"uint16_t"
.LASF26:
	.string	"ERR_BUF"
.LASF124:
	.string	"mem_link_valid"
.LASF4:
	.string	"short int"
.LASF91:
	.string	"icmp"
.LASF6:
	.string	"long int"
.LASF72:
	.string	"rterr"
.LASF61:
	.string	"avail"
.LASF43:
	.string	"SemaphoreHandle_t"
.LASF127:
	.string	"ptr_to_mem"
.LASF56:
	.string	"MEMP_SYS_TIMEOUT"
.LASF113:
	.string	"mem2"
.LASF46:
	.string	"MEMP_UDP_PCB"
.LASF112:
	.string	"ptr2"
.LASF87:
	.string	"mbox"
.LASF29:
	.string	"ERR_INPROGRESS"
.LASF22:
	.string	"mem_ptr_t"
.LASF34:
	.string	"ERR_ISCONN"
.LASF75:
	.string	"cachehit"
.LASF130:
	.string	"sys_arch_protect"
.LASF18:
	.string	"uintptr_t"
.LASF45:
	.string	"MEMP_RAW_PCB"
.LASF70:
	.string	"lenerr"
.LASF7:
	.string	"long unsigned int"
.LASF73:
	.string	"proterr"
.LASF118:
	.string	"old_level"
.LASF77:
	.string	"rx_v1"
.LASF85:
	.string	"stats_sys"
.LASF3:
	.string	"unsigned char"
.LASF71:
	.string	"memerr"
.LASF49:
	.string	"MEMP_TCP_SEG"
.LASF89:
	.string	"link"
.LASF81:
	.string	"tx_join"
.LASF66:
	.string	"xmit"
.LASF68:
	.string	"drop"
.LASF37:
	.string	"ERR_ABRT"
.LASF82:
	.string	"tx_leave"
.LASF24:
	.string	"ERR_OK"
.LASF67:
	.string	"recv"
.LASF2:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF76:
	.string	"stats_igmp"
.LASF35:
	.string	"ERR_CONN"
.LASF28:
	.string	"ERR_RTE"
.LASF57:
	.string	"MEMP_NETDB"
.LASF83:
	.string	"tx_report"
.LASF128:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF108:
	.string	"alloc_size"
.LASF25:
	.string	"ERR_MEM"
.LASF78:
	.string	"rx_group"
.LASF119:
	.string	"nmem"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/mem.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
