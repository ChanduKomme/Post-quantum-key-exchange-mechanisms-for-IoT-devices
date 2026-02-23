	.file	"device.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/yloop" "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/src/device.c"
	.section	.text.__dlist_add,"ax",@progbits
	.align	1
	.type	__dlist_add, @function
__dlist_add:
.LFB1:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/list.h"
	.loc 1 37 1
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
	.loc 1 38 16
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,4(a5)
	.loc 1 39 16
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 41 16
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	sw	a4,4(a5)
	.loc 1 42 16
	lw	a5,-28(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 43 1
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
.LFE1:
	.size	__dlist_add, .-__dlist_add
	.section	.text.dlist_add,"ax",@progbits
	.align	1
	.type	dlist_add, @function
dlist_add:
.LFB2:
	.loc 1 57 1
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
	.loc 1 58 35
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 58 5
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	__dlist_add
	.loc 1 59 1
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
.LFE2:
	.size	dlist_add, .-dlist_add
	.section	.text.dlist_add_tail,"ax",@progbits
	.align	1
	.type	dlist_add_tail, @function
dlist_add_tail:
.LFB3:
	.loc 1 62 1
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
	.loc 1 63 28
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 63 5
	lw	a2,-24(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	__dlist_add
	.loc 1 64 1
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
.LFE3:
	.size	dlist_add_tail, .-dlist_add_tail
	.section	.text.dlist_del,"ax",@progbits
	.align	1
	.type	dlist_del, @function
dlist_del:
.LFB4:
	.loc 1 67 1
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
	.loc 1 68 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 69 14
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 71 16
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	.loc 1 72 16
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 73 1
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
.LFE4:
	.size	dlist_del, .-dlist_del
	.section	.text.dlist_init,"ax",@progbits
	.align	1
	.type	dlist_init, @function
dlist_init:
.LFB5:
	.loc 1 76 1
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
	.loc 1 77 29
	lw	a5,-20(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 77 22
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 77 16
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 78 1
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
	.size	dlist_init, .-dlist_init
	.section	.text.dlist_empty,"ax",@progbits
	.align	1
	.type	dlist_empty, @function
dlist_empty:
.LFB7:
	.loc 1 87 1
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
	.loc 1 88 16
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 88 23
	lw	a4,-20(s0)
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 89 1
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
	.size	dlist_empty, .-dlist_empty
	.section	.sbss.inited,"aw",@nobits
	.align	2
	.type	inited, @object
	.size	inited, 4
inited:
	.zero	4
	.section	.text.event_open,"ax",@progbits
	.align	1
	.type	event_open, @function
event_open:
.LFB15:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/src/device.c"
	.loc 2 37 1
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
	.loc 2 38 40
	li	a0,40
	call	aos_malloc
	sw	a0,-20(s0)
	.loc 2 39 5
	li	a2,40
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 2 40 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	aos_mutex_new
	.loc 2 41 5
	lw	a5,-20(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	dlist_init
	.loc 2 42 5
	lw	a5,-20(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	dlist_init
	.loc 2 43 17
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,4(a5)
	.loc 2 44 12
	li	a5,0
	.loc 2 45 1
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
	.size	event_open, .-event_open
	.section	.text.event_close,"ax",@progbits
	.align	1
	.type	event_close, @function
event_close:
.LFB16:
	.loc 2 48 1
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
	.loc 2 49 18
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 2 50 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	aos_mutex_free
	.loc 2 52 11
	j	.L11
.L12:
.LBB2:
	.loc 2 53 18
	lw	a5,-20(s0)
	lw	a5,24(a5)
	sw	a5,-28(s0)
	.loc 2 54 9
	lw	a0,-28(s0)
	call	dlist_del
	.loc 2 55 9
	lw	a0,-28(s0)
	call	aos_free
.L11:
.LBE2:
	.loc 2 52 25
	lw	a5,-20(s0)
	addi	a5,a5,20
	.loc 2 52 13
	mv	a0,a5
	call	dlist_empty
	mv	a5,a0
	.loc 2 52 12 discriminator 1
	beq	a5,zero,.L12
	.loc 2 58 11
	j	.L13
.L14:
.LBB3:
	.loc 2 59 18
	lw	a5,-20(s0)
	lw	a5,36(a5)
	sw	a5,-24(s0)
	.loc 2 60 9
	lw	a0,-24(s0)
	call	dlist_del
	.loc 2 61 9
	lw	a0,-24(s0)
	call	aos_free
.L13:
.LBE3:
	.loc 2 58 25
	lw	a5,-20(s0)
	addi	a5,a5,32
	.loc 2 58 13
	mv	a0,a5
	call	dlist_empty
	mv	a5,a0
	.loc 2 58 12 discriminator 1
	beq	a5,zero,.L14
	.loc 2 64 5
	lw	a0,-20(s0)
	call	aos_free
	.loc 2 66 12
	li	a5,0
	.loc 2 67 1
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
	.size	event_close, .-event_close
	.section	.text._event_write,"ax",@progbits
	.align	1
	.type	_event_write, @function
_event_write:
.LFB17:
	.loc 2 70 1
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
	.loc 2 71 18
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	.loc 2 72 5
	lw	a5,-28(s0)
	li	a1,-1
	mv	a0,a5
	call	aos_mutex_lock
	.loc 2 73 13
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	.loc 2 76 9
	lw	a5,-28(s0)
	lw	a5,36(a5)
	sw	a5,-24(s0)
	.loc 2 78 13
	lw	a5,-28(s0)
	lw	a5,28(a5)
	.loc 2 78 8
	ble	a5,zero,.L17
	.loc 2 78 37 discriminator 1
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 2 78 31 discriminator 1
	lw	a4,-44(s0)
	bne	a4,a5,.L17
	.loc 2 79 9
	lw	a5,-24(s0)
	mv	a0,a5
	call	dlist_del
	.loc 2 80 13
	lw	a5,-28(s0)
	lw	a5,28(a5)
	.loc 2 80 27
	addi	a4,a5,-1
	lw	a5,-28(s0)
	sw	a4,28(a5)
	j	.L18
.L17:
	.loc 2 82 30
	lw	a5,-44(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	aos_malloc
	sw	a0,-24(s0)
.L18:
	.loc 2 85 8
	lw	a5,-24(s0)
	bne	a5,zero,.L19
	.loc 2 86 13
	li	a5,-1
	sw	a5,-20(s0)
	.loc 2 87 9
	j	.L20
.L19:
	.loc 2 90 9
	lw	a5,-28(s0)
	lw	a5,16(a5)
	.loc 2 90 19
	addi	a4,a5,1
	lw	a5,-28(s0)
	sw	a4,16(a5)
	.loc 2 92 14
	lw	a5,-24(s0)
	lw	a4,-44(s0)
	sw	a4,8(a5)
	.loc 2 93 15
	lw	a5,-24(s0)
	addi	a5,a5,12
	.loc 2 93 5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 2 94 8
	lbu	a5,-45(s0)
	beq	a5,zero,.L21
	.loc 2 95 9
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	addi	a5,a5,20
	mv	a1,a5
	mv	a0,a4
	call	dlist_add
	j	.L22
.L21:
	.loc 2 97 9
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	addi	a5,a5,20
	mv	a1,a5
	mv	a0,a4
	call	dlist_add_tail
.L22:
	.loc 2 100 13
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 2 100 8
	beq	a5,zero,.L24
	.loc 2 101 13
	lw	a5,-28(s0)
	lw	a5,8(a5)
	.loc 2 101 17
	lh	a4,6(a5)
	.loc 2 101 13
	lw	a5,-28(s0)
	lw	a5,8(a5)
	.loc 2 101 27
	ori	a4,a4,1
	slli	a4,a4,16
	srai	a4,a4,16
	sh	a4,6(a5)
	.loc 2 102 13
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 2 102 9
	lw	a4,-28(s0)
	lw	a3,8(a4)
	lw	a4,-28(s0)
	lw	a4,12(a4)
	mv	a1,a4
	mv	a0,a3
	jalr	a5
.LVL0:
	j	.L20
.L24:
	.loc 2 104 1
	nop
.L20:
	.loc 2 105 5
	lw	a5,-28(s0)
	mv	a0,a5
	call	aos_mutex_unlock
	.loc 2 106 12
	lw	a5,-20(s0)
	.loc 2 107 1
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
	.size	_event_write, .-_event_write
	.section	.text.event_write,"ax",@progbits
	.align	1
	.type	event_write, @function
event_write:
.LFB18:
	.loc 2 110 1
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
	.loc 2 111 12
	li	a3,0
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	_event_write
	mv	a5,a0
	.loc 2 112 1
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
	.size	event_write, .-event_write
	.section	.text.event_ioctl,"ax",@progbits
	.align	1
	.type	event_ioctl, @function
event_ioctl:
.LFB19:
	.loc 2 115 1
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
	.loc 2 116 9
	lw	a5,-40(s0)
	srai	a5,a5,4
	sw	a5,-20(s0)
	.loc 2 117 11
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	.loc 2 118 9
	lw	a5,-40(s0)
	andi	a5,a5,15
	sw	a5,-40(s0)
	.loc 2 119 5
	lw	a4,-40(s0)
	li	a5,1
	beq	a4,a5,.L28
	lw	a4,-40(s0)
	li	a5,2
	beq	a4,a5,.L29
	j	.L32
.L28:
	.loc 2 121 20
	lw	a5,-20(s0)
	li	a3,0
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	_event_write
	mv	a5,a0
	j	.L31
.L29:
	.loc 2 123 20
	lw	a5,-20(s0)
	li	a3,1
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	_event_write
	mv	a5,a0
	j	.L31
.L32:
	.loc 2 126 12
	li	a5,-1
.L31:
	.loc 2 127 1
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
	.size	event_ioctl, .-event_ioctl
	.section	.text.event_read,"ax",@progbits
	.align	1
	.type	event_read, @function
event_read:
.LFB20:
	.loc 2 130 1
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
	.loc 2 131 18
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 2 132 9
	lw	a5,-20(s0)
	lw	a5,16(a5)
	sw	a5,-24(s0)
	.loc 2 134 8
	lw	a5,-24(s0)
	bne	a5,zero,.L34
	.loc 2 135 16
	li	a5,0
	j	.L35
.L34:
	.loc 2 138 5
	lw	a5,-20(s0)
	li	a1,-1
	mv	a0,a5
	call	aos_mutex_lock
	.loc 2 140 18
	lw	a5,-20(s0)
	lw	a5,24(a5)
	sw	a5,-28(s0)
	.loc 2 141 5
	lw	a5,-28(s0)
	mv	a0,a5
	call	dlist_del
	.loc 2 142 21
	lw	a5,-28(s0)
	lw	a4,8(a5)
	.loc 2 142 39
	lw	a5,-44(s0)
	bleu	a5,a4,.L36
	mv	a5,a4
.L36:
	.loc 2 142 9
	sw	a5,-24(s0)
	.loc 2 143 20
	lw	a5,-28(s0)
	addi	a5,a5,12
	.loc 2 143 5
	lw	a4,-24(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 2 145 13
	lw	a5,-20(s0)
	lw	a4,28(a5)
	.loc 2 145 8
	li	a5,3
	bgt	a4,a5,.L37
	.loc 2 146 9
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	addi	a5,a5,32
	mv	a1,a5
	mv	a0,a4
	call	dlist_add
	.loc 2 147 13
	lw	a5,-20(s0)
	lw	a5,28(a5)
	.loc 2 147 27
	addi	a4,a5,1
	lw	a5,-20(s0)
	sw	a4,28(a5)
	j	.L38
.L37:
	.loc 2 149 9
	lw	a0,-28(s0)
	call	aos_free
.L38:
	.loc 2 152 9
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 2 152 19
	addi	a4,a5,-1
	lw	a5,-20(s0)
	sw	a4,16(a5)
	.loc 2 154 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	aos_mutex_unlock
	.loc 2 156 12
	lw	a5,-24(s0)
.L35:
	.loc 2 157 1
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
	.size	event_read, .-event_read
	.section	.text.event_poll,"ax",@progbits
	.align	1
	.type	event_poll, @function
event_poll:
.LFB21:
	.loc 2 161 1
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
	mv	a5,a1
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sb	a5,-37(s0)
	.loc 2 162 18
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 2 164 5
	lw	a5,-20(s0)
	li	a1,-1
	mv	a0,a5
	call	aos_mutex_lock
	.loc 2 165 9
	lbu	a5,-37(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 2 165 8
	beq	a5,zero,.L40
	.loc 2 166 23
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 2 167 25
	lw	a5,-20(s0)
	sw	zero,12(a5)
	.loc 2 168 9
	j	.L41
.L40:
	.loc 2 171 19
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	.loc 2 172 14
	lw	a5,-20(s0)
	lw	a4,-48(s0)
	sw	a4,8(a5)
	.loc 2 173 21
	lw	a5,-20(s0)
	lw	a4,-52(s0)
	sw	a4,12(a5)
	.loc 2 175 13
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 2 175 8
	beq	a5,zero,.L43
	.loc 2 176 13
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 176 17
	lh	a4,6(a5)
	.loc 2 176 13
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 176 27
	ori	a4,a4,1
	slli	a4,a4,16
	srai	a4,a4,16
	sh	a4,6(a5)
	.loc 2 177 10
	lw	a5,-44(s0)
	lw	a1,-52(s0)
	lw	a0,-48(s0)
	jalr	a5
.LVL1:
	j	.L41
.L43:
	.loc 2 179 1
	nop
.L41:
	.loc 2 180 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	aos_mutex_unlock
	.loc 2 182 12
	li	a5,0
	.loc 2 183 1
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
	.size	event_poll, .-event_poll
	.section	.rodata.event_fops,"a"
	.align	2
	.type	event_fops, @object
	.size	event_fops, 28
event_fops:
	.word	event_open
	.word	event_close
	.word	event_read
	.word	event_write
	.word	event_ioctl
	.word	event_poll
	.zero	4
	.section	.rodata
	.align	2
.LC0:
	.string	"/dev/event"
	.section	.text.vfs_device_init,"ax",@progbits
	.align	1
	.globl	vfs_device_init
	.type	vfs_device_init, @function
vfs_device_init:
.LFB22:
	.loc 2 195 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 198 16
	lui	a5,%hi(inited)
	lw	a4,%lo(inited)(a5)
	.loc 2 198 8
	li	a5,1
	bne	a4,a5,.L45
	.loc 2 199 16
	li	a5,0
	j	.L46
.L45:
	.loc 2 201 11
	li	a2,0
	lui	a5,%hi(event_fops)
	addi	a1,a5,%lo(event_fops)
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	aos_register_driver
	sw	a0,-20(s0)
	.loc 2 203 8
	lw	a5,-20(s0)
	beq	a5,zero,.L47
	.loc 2 204 16
	lw	a5,-20(s0)
	j	.L46
.L47:
	.loc 2 207 12
	lui	a5,%hi(inited)
	li	a4,1
	sw	a4,%lo(inited)(a5)
	.loc 2 209 12
	li	a5,0
.L46:
	.loc 2 210 1
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
	.size	vfs_device_init, .-vfs_device_init
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_stdint.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timeval.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timespec.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/types.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/kernel.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/yloop_types.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/stat.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_dir.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_inode.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_register.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf54
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x18
	.4byte	.LASF160
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x37
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x2b
	.byte	0x17
	.4byte	0x66
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x4f
	.byte	0x1b
	.4byte	0x8e
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0xc8
	.byte	0x17
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x1e
	.byte	0xe
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x22
	.byte	0xe
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x38
	.byte	0xf
	.4byte	0x6d
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x3c
	.byte	0x18
	.4byte	0x74
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x3f
	.byte	0x18
	.4byte	0x74
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x4b
	.byte	0x18
	.4byte	0x74
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x5a
	.byte	0x14
	.4byte	0x82
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x66
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x3e
	.uleb128 0x1a
	.byte	0x4
	.uleb128 0x12
	.4byte	0x120
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0xd5
	.byte	0x18
	.4byte	0x74
	.uleb128 0x4
	.4byte	0x138
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF27
	.uleb128 0x10
	.4byte	0x138
	.uleb128 0x4
	.4byte	0x13f
	.uleb128 0x4
	.4byte	0x153
	.uleb128 0x12
	.4byte	0x149
	.uleb128 0x1b
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x18
	.byte	0x13
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x2a
	.byte	0x19
	.4byte	0x9c
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x10
	.byte	0x8
	.byte	0x2f
	.byte	0x8
	.4byte	0x194
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x8
	.byte	0x30
	.byte	0x9
	.4byte	0x160
	.byte	0
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x8
	.byte	0x31
	.byte	0x7
	.4byte	0x7b
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x9
	.byte	0x61
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x9
	.byte	0x66
	.byte	0x15
	.4byte	0xb4
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x9
	.byte	0x89
	.byte	0x11
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x9
	.byte	0x9b
	.byte	0x11
	.4byte	0x108
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x9
	.byte	0x9f
	.byte	0x11
	.4byte	0xcc
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x9
	.byte	0xa3
	.byte	0x11
	.4byte	0xd8
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x9
	.byte	0xa7
	.byte	0x11
	.4byte	0xe4
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x9
	.byte	0xb6
	.byte	0x12
	.4byte	0x114
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x9
	.byte	0xbb
	.byte	0x12
	.4byte	0xfc
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x9
	.byte	0xc0
	.byte	0x13
	.4byte	0x127
	.uleb128 0xc
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0xc
	.4byte	0x223
	.uleb128 0xe
	.string	"hdl"
	.byte	0xa
	.byte	0x18
	.byte	0xf
	.4byte	0x120
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0xa
	.byte	0x19
	.byte	0x7
	.4byte	0x20c
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xa
	.byte	0x1c
	.byte	0x17
	.4byte	0x223
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x8
	.byte	0x1
	.byte	0x1f
	.byte	0x10
	.4byte	0x263
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x1
	.byte	0x20
	.byte	0x15
	.4byte	0x263
	.byte	0
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x1
	.byte	0x21
	.byte	0x15
	.4byte	0x263
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	0x23b
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x1
	.byte	0x22
	.byte	0x3
	.4byte	0x23b
	.uleb128 0x10
	.4byte	0x268
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x8
	.byte	0xb
	.byte	0x7
	.byte	0x8
	.4byte	0x2ad
	.uleb128 0xe
	.string	"fd"
	.byte	0xb
	.byte	0x8
	.byte	0x9
	.4byte	0x3e
	.byte	0
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0xb
	.byte	0x9
	.byte	0xb
	.4byte	0x6d
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0xb
	.byte	0xa
	.byte	0xb
	.4byte	0x6d
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x58
	.byte	0xc
	.byte	0x1b
	.byte	0x8
	.4byte	0x371
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xc
	.byte	0x1d
	.byte	0x9
	.4byte	0x1c4
	.byte	0
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0xc
	.byte	0x1e
	.byte	0x9
	.4byte	0x1ac
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xc
	.byte	0x1f
	.byte	0xa
	.4byte	0x1f4
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0xc
	.byte	0x20
	.byte	0xb
	.4byte	0x200
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xc
	.byte	0x21
	.byte	0x9
	.4byte	0x1d0
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0xc
	.byte	0x22
	.byte	0x9
	.4byte	0x1dc
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xc
	.byte	0x23
	.byte	0x9
	.4byte	0x1c4
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0xc
	.byte	0x24
	.byte	0x9
	.4byte	0x1b8
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xc
	.byte	0x2a
	.byte	0x13
	.4byte	0x16c
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0xc
	.byte	0x2b
	.byte	0x13
	.4byte	0x16c
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0xc
	.byte	0x2c
	.byte	0x13
	.4byte	0x16c
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0xc
	.byte	0x2d
	.byte	0xd
	.4byte	0x1a0
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0xc
	.byte	0x2e
	.byte	0xc
	.4byte	0x194
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xc
	.byte	0x30
	.byte	0x8
	.4byte	0x371
	.byte	0x50
	.byte	0
	.uleb128 0x13
	.4byte	0x7b
	.4byte	0x381
	.uleb128 0x1c
	.4byte	0x37
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x24
	.byte	0xd
	.byte	0x4
	.byte	0x8
	.4byte	0x404
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0xd
	.byte	0x5
	.byte	0xa
	.4byte	0x7b
	.byte	0
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0xd
	.byte	0x6
	.byte	0xa
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0xd
	.byte	0x7
	.byte	0xa
	.4byte	0x7b
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0xd
	.byte	0x8
	.byte	0xa
	.4byte	0x7b
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xd
	.byte	0x9
	.byte	0xa
	.4byte	0x7b
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0xd
	.byte	0xa
	.byte	0xa
	.4byte	0x7b
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0xd
	.byte	0xb
	.byte	0xa
	.4byte	0x7b
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xd
	.byte	0xc
	.byte	0xa
	.4byte	0x7b
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xd
	.byte	0xd
	.byte	0xa
	.4byte	0x7b
	.byte	0x20
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0xd
	.byte	0x10
	.byte	0x9
	.4byte	0x435
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xd
	.byte	0x11
	.byte	0x9
	.4byte	0x3e
	.byte	0
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xd
	.byte	0x12
	.byte	0xd
	.4byte	0x154
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xd
	.byte	0x13
	.byte	0xa
	.4byte	0x435
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	0x138
	.4byte	0x444
	.uleb128 0x1d
	.4byte	0x37
	.byte	0
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0xd
	.byte	0x14
	.byte	0x3
	.4byte	0x404
	.uleb128 0xc
	.byte	0x8
	.byte	0xd
	.byte	0x16
	.byte	0x9
	.4byte	0x474
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xd
	.byte	0x17
	.byte	0x9
	.4byte	0x3e
	.byte	0
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xd
	.byte	0x18
	.byte	0x9
	.4byte	0x3e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0xd
	.byte	0x19
	.byte	0x3
	.4byte	0x450
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0xe
	.byte	0x2c
	.byte	0x1f
	.4byte	0x4f5
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x1c
	.byte	0xe
	.byte	0x46
	.byte	0x8
	.4byte	0x4f5
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xe
	.byte	0x47
	.byte	0xb
	.4byte	0x730
	.byte	0
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xe
	.byte	0x48
	.byte	0xb
	.4byte	0x744
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xe
	.byte	0x49
	.byte	0xf
	.4byte	0x762
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xe
	.byte	0x4a
	.byte	0xf
	.4byte	0x780
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xe
	.byte	0x4b
	.byte	0xb
	.4byte	0x79e
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xe
	.byte	0x4d
	.byte	0xb
	.4byte	0x7cd
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xe
	.byte	0x4f
	.byte	0xb
	.4byte	0x744
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.4byte	0x48c
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xe
	.byte	0x2d
	.byte	0x1d
	.4byte	0x618
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x50
	.byte	0xe
	.byte	0x52
	.byte	0x8
	.4byte	0x618
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xe
	.byte	0x53
	.byte	0xb
	.4byte	0x7eb
	.byte	0
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xe
	.byte	0x54
	.byte	0xb
	.4byte	0x744
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xe
	.byte	0x55
	.byte	0xf
	.4byte	0x809
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xe
	.byte	0x56
	.byte	0xf
	.4byte	0x827
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xe
	.byte	0x57
	.byte	0xd
	.4byte	0x845
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xe
	.byte	0x58
	.byte	0xb
	.4byte	0x744
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xe
	.byte	0x59
	.byte	0xb
	.4byte	0x868
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0xe
	.byte	0x5a
	.byte	0xb
	.4byte	0x881
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0xe
	.byte	0x5b
	.byte	0xb
	.4byte	0x89f
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0xe
	.byte	0x5c
	.byte	0x12
	.4byte	0x8bd
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0xe
	.byte	0x5d
	.byte	0x15
	.4byte	0x8db
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xe
	.byte	0x5e
	.byte	0xb
	.4byte	0x8f4
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xe
	.byte	0x5f
	.byte	0xb
	.4byte	0x881
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0xe
	.byte	0x60
	.byte	0xb
	.4byte	0x881
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0xe
	.byte	0x61
	.byte	0xc
	.4byte	0x909
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xe
	.byte	0x62
	.byte	0xc
	.4byte	0x922
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0xe
	.byte	0x63
	.byte	0xc
	.4byte	0x93c
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xe
	.byte	0x64
	.byte	0xb
	.4byte	0x79e
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xe
	.byte	0x65
	.byte	0xb
	.4byte	0x95f
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xe
	.byte	0x66
	.byte	0xb
	.4byte	0x7eb
	.byte	0x4c
	.byte	0
	.uleb128 0x10
	.4byte	0x506
	.uleb128 0x1e
	.4byte	.LASF161
	.byte	0x4
	.byte	0xe
	.byte	0x2f
	.byte	0x7
	.4byte	0x641
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x30
	.byte	0x17
	.4byte	0x641
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x31
	.byte	0x15
	.4byte	0x646
	.byte	0
	.uleb128 0x4
	.4byte	0x480
	.uleb128 0x4
	.4byte	0x4fa
	.uleb128 0xc
	.byte	0x14
	.byte	0xe
	.byte	0x35
	.byte	0x9
	.4byte	0x6a3
	.uleb128 0xe
	.string	"ops"
	.byte	0xe
	.byte	0x36
	.byte	0x17
	.4byte	0x61d
	.byte	0
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0xe
	.byte	0x37
	.byte	0xb
	.4byte	0x120
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0xe
	.byte	0x38
	.byte	0xb
	.4byte	0x133
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0xe
	.byte	0x39
	.byte	0x9
	.4byte	0x3e
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0xe
	.byte	0x3a
	.byte	0xd
	.4byte	0x154
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0xe
	.byte	0x3b
	.byte	0xd
	.4byte	0x154
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0xe
	.byte	0x3c
	.byte	0x3
	.4byte	0x64b
	.uleb128 0xc
	.byte	0xc
	.byte	0xe
	.byte	0x3e
	.byte	0x9
	.4byte	0x6e0
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0xe
	.byte	0x3f
	.byte	0xe
	.4byte	0x6e0
	.byte	0
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0xe
	.byte	0x40
	.byte	0xb
	.4byte	0x120
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0xe
	.byte	0x41
	.byte	0xc
	.4byte	0x2b
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x6a3
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0xe
	.byte	0x42
	.byte	0x3
	.4byte	0x6af
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0xe
	.byte	0x45
	.byte	0x10
	.4byte	0x6fd
	.uleb128 0x4
	.4byte	0x702
	.uleb128 0x11
	.4byte	0x712
	.uleb128 0x2
	.4byte	0x712
	.uleb128 0x2
	.4byte	0x120
	.byte	0
	.uleb128 0x4
	.4byte	0x279
	.uleb128 0x5
	.4byte	0x3e
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x6e0
	.uleb128 0x2
	.4byte	0x72b
	.byte	0
	.uleb128 0x4
	.4byte	0x6e5
	.uleb128 0x4
	.4byte	0x717
	.uleb128 0x5
	.4byte	0x3e
	.4byte	0x744
	.uleb128 0x2
	.4byte	0x72b
	.byte	0
	.uleb128 0x4
	.4byte	0x735
	.uleb128 0x5
	.4byte	0x1e8
	.4byte	0x762
	.uleb128 0x2
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x120
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	0x749
	.uleb128 0x5
	.4byte	0x1e8
	.4byte	0x780
	.uleb128 0x2
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x149
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	0x767
	.uleb128 0x5
	.4byte	0x3e
	.4byte	0x79e
	.uleb128 0x2
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x3e
	.uleb128 0x2
	.4byte	0x8e
	.byte	0
	.uleb128 0x4
	.4byte	0x785
	.uleb128 0x5
	.4byte	0x3e
	.4byte	0x7c6
	.uleb128 0x2
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x7c6
	.uleb128 0x2
	.4byte	0x6f1
	.uleb128 0x2
	.4byte	0x712
	.uleb128 0x2
	.4byte	0x120
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.4byte	.LASF120
	.uleb128 0x4
	.4byte	0x7a3
	.uleb128 0x5
	.4byte	0x3e
	.4byte	0x7eb
	.uleb128 0x2
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x144
	.uleb128 0x2
	.4byte	0x3e
	.byte	0
	.uleb128 0x4
	.4byte	0x7d2
	.uleb128 0x5
	.4byte	0x1e8
	.4byte	0x809
	.uleb128 0x2
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	0x7f0
	.uleb128 0x5
	.4byte	0x1e8
	.4byte	0x827
	.uleb128 0x2
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x144
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	0x80e
	.uleb128 0x5
	.4byte	0x1b8
	.4byte	0x845
	.uleb128 0x2
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x1b8
	.uleb128 0x2
	.4byte	0x3e
	.byte	0
	.uleb128 0x4
	.4byte	0x82c
	.uleb128 0x5
	.4byte	0x3e
	.4byte	0x863
	.uleb128 0x2
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x144
	.uleb128 0x2
	.4byte	0x863
	.byte	0
	.uleb128 0x4
	.4byte	0x2ad
	.uleb128 0x4
	.4byte	0x84a
	.uleb128 0x5
	.4byte	0x3e
	.4byte	0x881
	.uleb128 0x2
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x144
	.byte	0
	.uleb128 0x4
	.4byte	0x86d
	.uleb128 0x5
	.4byte	0x3e
	.4byte	0x89f
	.uleb128 0x2
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x144
	.uleb128 0x2
	.4byte	0x144
	.byte	0
	.uleb128 0x4
	.4byte	0x886
	.uleb128 0x5
	.4byte	0x8b8
	.4byte	0x8b8
	.uleb128 0x2
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x144
	.byte	0
	.uleb128 0x4
	.4byte	0x474
	.uleb128 0x4
	.4byte	0x8a4
	.uleb128 0x5
	.4byte	0x8d6
	.4byte	0x8d6
	.uleb128 0x2
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x8b8
	.byte	0
	.uleb128 0x4
	.4byte	0x444
	.uleb128 0x4
	.4byte	0x8c2
	.uleb128 0x5
	.4byte	0x3e
	.4byte	0x8f4
	.uleb128 0x2
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x8b8
	.byte	0
	.uleb128 0x4
	.4byte	0x8e0
	.uleb128 0x11
	.4byte	0x909
	.uleb128 0x2
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x8b8
	.byte	0
	.uleb128 0x4
	.4byte	0x8f9
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x922
	.uleb128 0x2
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x8b8
	.byte	0
	.uleb128 0x4
	.4byte	0x90e
	.uleb128 0x11
	.4byte	0x93c
	.uleb128 0x2
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x8b8
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0x4
	.4byte	0x927
	.uleb128 0x5
	.4byte	0x3e
	.4byte	0x95a
	.uleb128 0x2
	.4byte	0x72b
	.uleb128 0x2
	.4byte	0x144
	.uleb128 0x2
	.4byte	0x95a
	.byte	0
	.uleb128 0x4
	.4byte	0x381
	.uleb128 0x4
	.4byte	0x941
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x2
	.byte	0x11
	.byte	0xc
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x3
	.4byte	inited
	.uleb128 0xc
	.byte	0x28
	.byte	0x2
	.byte	0x13
	.byte	0x9
	.4byte	0x9e7
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x2
	.byte	0x14
	.byte	0x11
	.4byte	0x22f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x2
	.byte	0x15
	.byte	0x13
	.4byte	0x6f1
	.byte	0x4
	.uleb128 0xe
	.string	"fd"
	.byte	0x2
	.byte	0x16
	.byte	0x14
	.4byte	0x712
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x2
	.byte	0x17
	.byte	0xb
	.4byte	0x120
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0x2
	.byte	0x18
	.byte	0x9
	.4byte	0x3e
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x2
	.byte	0x19
	.byte	0xd
	.4byte	0x268
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0x2
	.byte	0x1a
	.byte	0x9
	.4byte	0x3e
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0x2
	.byte	0x1b
	.byte	0xd
	.4byte	0x268
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x2
	.byte	0x1c
	.byte	0x3
	.4byte	0x976
	.uleb128 0xc
	.byte	0xc
	.byte	0x2
	.byte	0x1e
	.byte	0x9
	.4byte	0xa24
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x2
	.byte	0x1f
	.byte	0xd
	.4byte	0x268
	.byte	0
	.uleb128 0xe
	.string	"len"
	.byte	0x2
	.byte	0x20
	.byte	0xc
	.4byte	0x2b
	.byte	0x8
	.uleb128 0xe
	.string	"buf"
	.byte	0x2
	.byte	0x21
	.byte	0xa
	.4byte	0x435
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x2
	.byte	0x22
	.byte	0x3
	.4byte	0x9f3
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x2
	.byte	0xb9
	.byte	0x13
	.4byte	0x480
	.uleb128 0x5
	.byte	0x3
	.4byte	event_fops
	.uleb128 0xf
	.4byte	.LASF132
	.byte	0xf
	.byte	0xe
	.byte	0x5
	.4byte	0x3e
	.4byte	0xa62
	.uleb128 0x2
	.4byte	0x144
	.uleb128 0x2
	.4byte	0x641
	.uleb128 0x2
	.4byte	0x120
	.byte	0
	.uleb128 0xf
	.4byte	.LASF133
	.byte	0xa
	.byte	0xb1
	.byte	0x9
	.4byte	0x3e
	.4byte	0xa78
	.uleb128 0x2
	.4byte	0xa78
	.byte	0
	.uleb128 0x4
	.4byte	0x22f
	.uleb128 0xf
	.4byte	.LASF134
	.byte	0x10
	.byte	0x1f
	.byte	0x8
	.4byte	0x120
	.4byte	0xa9d
	.uleb128 0x2
	.4byte	0x122
	.uleb128 0x2
	.4byte	0x14e
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF135
	.byte	0xa
	.byte	0xa7
	.byte	0x9
	.4byte	0x3e
	.4byte	0xab8
	.uleb128 0x2
	.4byte	0xa78
	.uleb128 0x2
	.4byte	0x37
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x1e1
	.byte	0xa
	.4byte	0xacb
	.uleb128 0x2
	.4byte	0x120
	.byte	0
	.uleb128 0x20
	.4byte	.LASF137
	.byte	0xa
	.byte	0x9c
	.byte	0xa
	.4byte	0xadd
	.uleb128 0x2
	.4byte	0xa78
	.byte	0
	.uleb128 0xf
	.4byte	.LASF138
	.byte	0xa
	.byte	0x94
	.byte	0x9
	.4byte	0x3e
	.4byte	0xaf3
	.uleb128 0x2
	.4byte	0xa78
	.byte	0
	.uleb128 0xf
	.4byte	.LASF139
	.byte	0x10
	.byte	0x21
	.byte	0x8
	.4byte	0x120
	.4byte	0xb13
	.uleb128 0x2
	.4byte	0x120
	.uleb128 0x2
	.4byte	0x3e
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x21
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x1bf
	.byte	0xb
	.4byte	0x120
	.4byte	0xb2a
	.uleb128 0x2
	.4byte	0x37
	.byte	0
	.uleb128 0x22
	.4byte	.LASF162
	.byte	0x2
	.byte	0xc2
	.byte	0x5
	.4byte	0x3e
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb53
	.uleb128 0xa
	.string	"ret"
	.byte	0xc4
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF144
	.byte	0x9f
	.byte	0xc
	.4byte	0x3e
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbcb
	.uleb128 0x7
	.string	"f"
	.byte	0x9f
	.byte	0x1f
	.4byte	0x72b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF141
	.byte	0x2
	.byte	0x9f
	.byte	0x27
	.4byte	0x7c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x6
	.4byte	.LASF142
	.byte	0x2
	.byte	0x9f
	.byte	0x3c
	.4byte	0x6f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"fd"
	.byte	0xa0
	.byte	0x26
	.4byte	0x712
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"opa"
	.byte	0xa0
	.byte	0x30
	.4byte	0x120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.4byte	.LASF143
	.byte	0x2
	.byte	0xa2
	.byte	0x12
	.4byte	0xbcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"out"
	.byte	0xb3
	.4byte	.L41
	.byte	0
	.uleb128 0x4
	.4byte	0x9e7
	.uleb128 0xd
	.4byte	.LASF145
	.byte	0x81
	.byte	0x10
	.4byte	0x1e8
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3d
	.uleb128 0x7
	.string	"f"
	.byte	0x81
	.byte	0x23
	.4byte	0x72b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"buf"
	.byte	0x81
	.byte	0x2c
	.4byte	0x120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"len"
	.byte	0x81
	.byte	0x38
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.4byte	.LASF143
	.byte	0x2
	.byte	0x83
	.byte	0x12
	.4byte	0xbcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"cnt"
	.byte	0x84
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"evt"
	.byte	0x8c
	.byte	0x12
	.4byte	0xc3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.4byte	0xa24
	.uleb128 0xd
	.4byte	.LASF146
	.byte	0x72
	.byte	0xc
	.4byte	0x3e
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca0
	.uleb128 0x7
	.string	"f"
	.byte	0x72
	.byte	0x20
	.4byte	0x72b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"cmd"
	.byte	0x72
	.byte	0x27
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"arg"
	.byte	0x72
	.byte	0x3a
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.string	"len"
	.byte	0x74
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"buf"
	.byte	0x75
	.byte	0xb
	.4byte	0x120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF147
	.byte	0x6d
	.byte	0x10
	.4byte	0x1e8
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce2
	.uleb128 0x7
	.string	"f"
	.byte	0x6d
	.byte	0x24
	.4byte	0x72b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"buf"
	.byte	0x6d
	.byte	0x33
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"len"
	.byte	0x6d
	.byte	0x3f
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xd
	.4byte	.LASF148
	.byte	0x45
	.byte	0x10
	.4byte	0x1e8
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd68
	.uleb128 0x7
	.string	"f"
	.byte	0x45
	.byte	0x25
	.4byte	0x72b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"buf"
	.byte	0x45
	.byte	0x34
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"len"
	.byte	0x45
	.byte	0x40
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF149
	.byte	0x2
	.byte	0x45
	.byte	0x4a
	.4byte	0x7c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x9
	.4byte	.LASF143
	.byte	0x2
	.byte	0x47
	.byte	0x12
	.4byte	0xbcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.string	"ret"
	.byte	0x49
	.byte	0xd
	.4byte	0x1e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"evt"
	.byte	0x4b
	.byte	0x12
	.4byte	0xc3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"out"
	.byte	0x68
	.4byte	.L20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF150
	.byte	0x2f
	.byte	0xc
	.4byte	0x3e
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd0
	.uleb128 0x6
	.4byte	.LASF151
	.byte	0x2
	.byte	0x2f
	.byte	0x20
	.4byte	0x72b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF143
	.byte	0x2
	.byte	0x31
	.byte	0x12
	.4byte	0xbcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xdb9
	.uleb128 0xa
	.string	"n"
	.byte	0x35
	.byte	0x12
	.4byte	0xdd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x24
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xa
	.string	"n"
	.byte	0x3b
	.byte	0x12
	.4byte	0xdd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x268
	.uleb128 0xd
	.4byte	.LASF152
	.byte	0x24
	.byte	0xc
	.4byte	0x3e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe1c
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0x2
	.byte	0x24
	.byte	0x30
	.4byte	0x6e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF151
	.byte	0x2
	.byte	0x24
	.byte	0x3e
	.4byte	0x72b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF143
	.byte	0x2
	.byte	0x26
	.byte	0x12
	.4byte	0xbcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.4byte	.LASF153
	.byte	0x1
	.byte	0x56
	.byte	0x13
	.4byte	0x3e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe46
	.uleb128 0x6
	.4byte	.LASF154
	.byte	0x1
	.byte	0x56
	.byte	0x2e
	.4byte	0xe46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	0x274
	.uleb128 0x16
	.4byte	.LASF155
	.byte	0x4b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe6f
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0x1
	.byte	0x4b
	.byte	0x28
	.4byte	0xdd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF156
	.byte	0x42
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb1
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0x1
	.byte	0x42
	.byte	0x27
	.4byte	0xdd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x1
	.byte	0x44
	.byte	0xe
	.4byte	0xdd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x1
	.byte	0x45
	.byte	0xe
	.4byte	0xdd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF157
	.byte	0x3d
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee4
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0x1
	.byte	0x3d
	.byte	0x2c
	.4byte	0xdd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF158
	.byte	0x1
	.byte	0x3d
	.byte	0x3b
	.4byte	0xdd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF159
	.byte	0x38
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf17
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0x1
	.byte	0x38
	.byte	0x27
	.4byte	0xdd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF158
	.byte	0x1
	.byte	0x38
	.byte	0x36
	.4byte	0xdd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.4byte	.LASF163
	.byte	0x1
	.byte	0x24
	.byte	0x14
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0x1
	.byte	0x24
	.byte	0x29
	.4byte	0xdd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x1
	.byte	0x24
	.byte	0x38
	.4byte	0xdd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x1
	.byte	0x24
	.byte	0x47
	.4byte	0xdd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
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
	.uleb128 0x6
	.uleb128 0x5
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
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
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
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
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
	.uleb128 0x17
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
	.sleb128 20
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0xb
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.4byte	.LFB1
	.uleb128 .LFE1-.LFB1
	.byte	0x7
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0x7
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0x7
	.4byte	.LFB7
	.uleb128 .LFE7-.LFB7
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
.LASF144:
	.string	"event_poll"
.LASF147:
	.string	"event_write"
.LASF80:
	.string	"aos_dirent_t"
.LASF130:
	.string	"inited"
.LASF128:
	.string	"event_dev_t"
.LASF114:
	.string	"inode_t"
.LASF122:
	.string	"poll_cb"
.LASF83:
	.string	"aos_dir_t"
.LASF140:
	.string	"aos_malloc"
.LASF2:
	.string	"unsigned int"
.LASF47:
	.string	"next"
.LASF64:
	.string	"st_blksize"
.LASF154:
	.string	"head"
.LASF113:
	.string	"refs"
.LASF50:
	.string	"events"
.LASF98:
	.string	"opendir"
.LASF92:
	.string	"sync"
.LASF26:
	.string	"__nlink_t"
.LASF74:
	.string	"f_ffree"
.LASF110:
	.string	"i_name"
.LASF46:
	.string	"prev"
.LASF79:
	.string	"d_name"
.LASF22:
	.string	"__ino_t"
.LASF43:
	.string	"aos_mutex_t"
.LASF34:
	.string	"ino_t"
.LASF129:
	.string	"dev_event_t"
.LASF104:
	.string	"telldir"
.LASF121:
	.string	"mutex"
.LASF109:
	.string	"i_arg"
.LASF96:
	.string	"unlink"
.LASF14:
	.string	"long long unsigned int"
.LASF65:
	.string	"st_blocks"
.LASF151:
	.string	"file"
.LASF117:
	.string	"offset"
.LASF116:
	.string	"f_arg"
.LASF108:
	.string	"i_fops"
.LASF52:
	.string	"stat"
.LASF53:
	.string	"st_dev"
.LASF124:
	.string	"counter"
.LASF31:
	.string	"tv_nsec"
.LASF125:
	.string	"bufs"
.LASF6:
	.string	"size_t"
.LASF135:
	.string	"aos_mutex_lock"
.LASF23:
	.string	"__mode_t"
.LASF78:
	.string	"d_type"
.LASF120:
	.string	"_Bool"
.LASF58:
	.string	"st_gid"
.LASF103:
	.string	"rewinddir"
.LASF55:
	.string	"st_mode"
.LASF101:
	.string	"mkdir"
.LASF118:
	.string	"file_t"
.LASF56:
	.string	"st_nlink"
.LASF161:
	.string	"inode_ops_t"
.LASF149:
	.string	"urgent"
.LASF90:
	.string	"ioctl"
.LASF91:
	.string	"poll"
.LASF42:
	.string	"aos_hdl_t"
.LASF44:
	.string	"timespec"
.LASF27:
	.string	"char"
.LASF32:
	.string	"blkcnt_t"
.LASF119:
	.string	"poll_notify_t"
.LASF87:
	.string	"close"
.LASF100:
	.string	"closedir"
.LASF39:
	.string	"ssize_t"
.LASF95:
	.string	"lseek"
.LASF28:
	.string	"uint8_t"
.LASF112:
	.string	"type"
.LASF157:
	.string	"dlist_add_tail"
.LASF29:
	.string	"time_t"
.LASF94:
	.string	"fs_ops"
.LASF67:
	.string	"statfs"
.LASF145:
	.string	"event_read"
.LASF54:
	.string	"st_ino"
.LASF73:
	.string	"f_files"
.LASF163:
	.string	"__dlist_add"
.LASF3:
	.string	"long long int"
.LASF89:
	.string	"write"
.LASF155:
	.string	"dlist_init"
.LASF68:
	.string	"f_type"
.LASF131:
	.string	"event_fops"
.LASF19:
	.string	"__dev_t"
.LASF162:
	.string	"vfs_device_init"
.LASF36:
	.string	"dev_t"
.LASF71:
	.string	"f_bfree"
.LASF85:
	.string	"file_ops"
.LASF137:
	.string	"aos_mutex_free"
.LASF84:
	.string	"file_ops_t"
.LASF139:
	.string	"memset"
.LASF49:
	.string	"pollfd"
.LASF72:
	.string	"f_bavail"
.LASF75:
	.string	"f_fsid"
.LASF143:
	.string	"pdev"
.LASF66:
	.string	"st_spare4"
.LASF106:
	.string	"access"
.LASF97:
	.string	"rename"
.LASF4:
	.string	"long double"
.LASF127:
	.string	"buf_cache"
.LASF21:
	.string	"__gid_t"
.LASF70:
	.string	"f_blocks"
.LASF38:
	.string	"gid_t"
.LASF152:
	.string	"event_open"
.LASF15:
	.string	"__int_least64_t"
.LASF107:
	.string	"i_ops"
.LASF37:
	.string	"uid_t"
.LASF102:
	.string	"rmdir"
.LASF51:
	.string	"revents"
.LASF9:
	.string	"short int"
.LASF62:
	.string	"st_mtim"
.LASF111:
	.string	"i_flags"
.LASF11:
	.string	"long int"
.LASF159:
	.string	"dlist_add"
.LASF115:
	.string	"node"
.LASF99:
	.string	"readdir"
.LASF76:
	.string	"f_namelen"
.LASF142:
	.string	"notify"
.LASF17:
	.string	"__blksize_t"
.LASF45:
	.string	"dlist_s"
.LASF48:
	.string	"dlist_t"
.LASF20:
	.string	"__uid_t"
.LASF7:
	.string	"__uint8_t"
.LASF61:
	.string	"st_atim"
.LASF88:
	.string	"read"
.LASF81:
	.string	"dd_vfs_fd"
.LASF86:
	.string	"open"
.LASF148:
	.string	"_event_write"
.LASF30:
	.string	"tv_sec"
.LASF13:
	.string	"long unsigned int"
.LASF158:
	.string	"queue"
.LASF138:
	.string	"aos_mutex_new"
.LASF41:
	.string	"nlink_t"
.LASF69:
	.string	"f_bsize"
.LASF8:
	.string	"unsigned char"
.LASF141:
	.string	"setup"
.LASF12:
	.string	"__uint32_t"
.LASF33:
	.string	"blksize_t"
.LASF123:
	.string	"poll_data"
.LASF60:
	.string	"st_size"
.LASF132:
	.string	"aos_register_driver"
.LASF77:
	.string	"d_ino"
.LASF156:
	.string	"dlist_del"
.LASF136:
	.string	"aos_free"
.LASF146:
	.string	"event_ioctl"
.LASF57:
	.string	"st_uid"
.LASF24:
	.string	"__off_t"
.LASF63:
	.string	"st_ctim"
.LASF25:
	.string	"_ssize_t"
.LASF82:
	.string	"dd_rsv"
.LASF5:
	.string	"signed char"
.LASF40:
	.string	"mode_t"
.LASF35:
	.string	"off_t"
.LASF10:
	.string	"short unsigned int"
.LASF134:
	.string	"memcpy"
.LASF105:
	.string	"seekdir"
.LASF150:
	.string	"event_close"
.LASF16:
	.string	"__blkcnt_t"
.LASF18:
	.string	"_off_t"
.LASF59:
	.string	"st_rdev"
.LASF133:
	.string	"aos_mutex_unlock"
.LASF126:
	.string	"cache_count"
.LASF160:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF93:
	.string	"fs_ops_t"
.LASF153:
	.string	"dlist_empty"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/src/device.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/yloop"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
