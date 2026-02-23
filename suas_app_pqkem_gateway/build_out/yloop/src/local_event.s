	.file	"local_event.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/yloop" "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/src/local_event.c"
	.section	.text.__dlist_add,"ax",@progbits
	.align	1
	.type	__dlist_add, @function
__dlist_add:
.LFB0:
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
.LFE0:
	.size	__dlist_add, .-__dlist_add
	.section	.text.dlist_add_tail,"ax",@progbits
	.align	1
	.type	dlist_add_tail, @function
dlist_add_tail:
.LFB2:
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
.LFE2:
	.size	dlist_add_tail, .-dlist_add_tail
	.section	.text.dlist_del,"ax",@progbits
	.align	1
	.type	dlist_del, @function
dlist_del:
.LFB3:
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
.LFE3:
	.size	dlist_del, .-dlist_del
	.section	.sdata.local_event,"aw"
	.align	2
	.type	local_event, @object
	.size	local_event, 8
local_event:
	.zero	4
	.word	-1
	.section	.sdata.g_local_event_list,"aw"
	.align	2
	.type	g_local_event_list, @object
	.size	g_local_event_list, 8
g_local_event_list:
	.word	g_local_event_list
	.word	g_local_event_list
	.section	.text.handle_events,"ax",@progbits
	.align	1
	.type	handle_events, @function
handle_events:
.LFB14:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/src/local_event.c"
	.loc 2 41 1
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
	.loc 2 42 14
	lw	a5,-36(s0)
	lhu	a4,4(a5)
	.loc 2 42 8
	li	a5,256
	bne	a4,a5,.L5
.LBB2:
	.loc 2 43 47
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 43 20
	sw	a5,-24(s0)
	.loc 2 44 34
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 2 44 15
	sw	a5,-28(s0)
	.loc 2 45 9
	lw	a5,-24(s0)
	lw	a0,-28(s0)
	jalr	a5
.LVL0:
	.loc 2 47 9
	j	.L4
.L5:
.LBE2:
	.loc 2 50 24
	sw	zero,-20(s0)
	.loc 2 51 21
	lui	a5,%hi(g_local_event_list)
	addi	a5,a5,%lo(g_local_event_list)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 2 51 5
	j	.L7
.L10:
	.loc 2 52 23
	lw	a5,-20(s0)
	lhu	a5,16(a5)
	.loc 2 52 12
	beq	a5,zero,.L8
	.loc 2 53 26
	lw	a5,-20(s0)
	lhu	a4,16(a5)
	.loc 2 53 48
	lw	a5,-36(s0)
	lhu	a5,4(a5)
	.loc 2 53 13
	bne	a4,a5,.L11
.L8:
	.loc 2 56 20
	lw	a5,-20(s0)
	lw	a5,8(a5)
	lw	a4,-20(s0)
	lw	a4,12(a4)
	mv	a1,a4
	lw	a0,-36(s0)
	jalr	a5
.LVL1:
	j	.L9
.L11:
	.loc 2 54 13
	nop
.L9:
	.loc 2 51 190 discriminator 2
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L7:
	.loc 2 51 135 discriminator 1
	lw	a4,-20(s0)
	.loc 2 51 153 discriminator 1
	lui	a5,%hi(g_local_event_list)
	addi	a5,a5,%lo(g_local_event_list)
	bne	a4,a5,.L10
.L4:
	.loc 2 58 1
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
	.size	handle_events, .-handle_events
	.section	.text.input_add_event,"ax",@progbits
	.align	1
	.type	input_add_event, @function
input_add_event:
.LFB15:
	.loc 2 61 1
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
	.loc 2 62 24
	lw	a5,-40(s0)
	lhu	a5,4(a5)
	.loc 2 62 31
	mv	a4,a5
	li	a5,32768
	and	a5,a4,a5
	.loc 2 62 10
	srli	a5,a5,15
	andi	a5,a5,1
	sb	a5,-21(s0)
	.loc 2 63 10
	lw	a5,-40(s0)
	lhu	a4,4(a5)
	.loc 2 63 17
	li	a5,32768
	addi	a5,a5,-1
	and	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-40(s0)
	sh	a4,4(a5)
	.loc 2 66 8
	lbu	a5,-21(s0)
	beq	a5,zero,.L13
	.loc 2 67 13
	li	a5,258
	sw	a5,-20(s0)
	j	.L14
.L13:
	.loc 2 69 13
	li	a5,257
	sw	a5,-20(s0)
.L14:
	.loc 2 72 12
	lw	a5,-40(s0)
	mv	a2,a5
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	aos_ioctl
	mv	a5,a0
	.loc 2 73 1
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
	.size	input_add_event, .-input_add_event
	.section	.text.event_read_cb,"ax",@progbits
	.align	1
	.type	event_read_cb, @function
event_read_cb:
.LFB16:
	.loc 2 76 1
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
	.loc 2 78 15
	addi	a5,s0,-36
	li	a2,16
	mv	a1,a5
	lw	a0,-52(s0)
	call	aos_read
	sw	a0,-20(s0)
	.loc 2 79 8
	lw	a4,-20(s0)
	li	a5,16
	bne	a4,a5,.L18
	.loc 2 80 9
	addi	a5,s0,-36
	mv	a0,a5
	call	handle_events
.L18:
	.loc 2 82 1
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
.LFE16:
	.size	event_read_cb, .-event_read_cb
	.section	.rodata
	.align	2
.LC0:
	.string	"/dev/event"
	.section	.text.aos_event_service_init,"ax",@progbits
	.align	1
	.globl	aos_event_service_init
	.type	aos_event_service_init, @function
aos_event_service_init:
.LFB17:
	.loc 2 85 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 89 14
	li	a1,0
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	aos_open
	sw	a0,-20(s0)
	.loc 2 92 20
	lui	a5,%hi(local_event)
	addi	a5,a5,%lo(local_event)
	lw	a5,4(a5)
	.loc 2 92 8
	bge	a5,zero,.L20
	.loc 2 93 24
	lui	a5,%hi(local_event)
	addi	a5,a5,%lo(local_event)
	lw	a4,-20(s0)
	sw	a4,4(a5)
.L20:
	.loc 2 95 5
	li	a2,0
	lui	a5,%hi(event_read_cb)
	addi	a1,a5,%lo(event_read_cb)
	lw	a0,-20(s0)
	call	aos_poll_read_fd
	.loc 2 96 5
	lw	a0,-20(s0)
	call	aos_loop_set_eventfd
	.loc 2 98 12
	li	a5,0
	.loc 2 99 1
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
	.size	aos_event_service_init, .-aos_event_service_init
	.section	.text.aos_event_service_deinit,"ax",@progbits
	.align	1
	.globl	aos_event_service_deinit
	.type	aos_event_service_deinit, @function
aos_event_service_deinit:
.LFB18:
	.loc 2 102 1
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
	.loc 2 103 5
	li	a2,0
	lui	a5,%hi(event_read_cb)
	addi	a1,a5,%lo(event_read_cb)
	lw	a0,-20(s0)
	call	aos_cancel_poll_read_fd
	.loc 2 104 5
	lw	a0,-20(s0)
	call	aos_close
	.loc 2 105 1
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
	.size	aos_event_service_deinit, .-aos_event_service_deinit
	.section	.text.aos_post_event,"ax",@progbits
	.align	1
	.globl	aos_post_event
	.type	aos_post_event, @function
aos_post_event:
.LFB19:
	.loc 2 108 1
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
	sw	a2,-40(s0)
	sh	a5,-34(s0)
	mv	a5,a4
	sh	a5,-36(s0)
	.loc 2 109 19
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	lhu	a5,-34(s0)
	sh	a5,-28(s0)
	lhu	a5,-36(s0)
	sh	a5,-26(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 2 115 12
	lui	a5,%hi(local_event)
	addi	a5,a5,%lo(local_event)
	lw	a5,4(a5)
	addi	a4,s0,-32
	mv	a1,a4
	mv	a0,a5
	call	input_add_event
	mv	a5,a0
	.loc 2 116 1
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
	.size	aos_post_event, .-aos_post_event
	.section	.text.aos_register_event_filter,"ax",@progbits
	.align	1
	.globl	aos_register_event_filter
	.type	aos_register_event_filter, @function
aos_register_event_filter:
.LFB20:
	.loc 2 119 1
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
	.loc 2 120 8
	lw	a5,-40(s0)
	bne	a5,zero,.L26
	.loc 2 121 16
	li	a5,-22
	j	.L27
.L26:
	.loc 2 124 37
	li	a0,20
	call	aos_malloc
	sw	a0,-20(s0)
	.loc 2 125 8
	lw	a5,-20(s0)
	bne	a5,zero,.L28
	.loc 2 126 16
	li	a5,-12
	j	.L27
.L28:
	.loc 2 129 20
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	.loc 2 130 29
	lw	a5,-20(s0)
	lhu	a4,-34(s0)
	sh	a4,16(a5)
	.loc 2 131 22
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	sw	a4,12(a5)
	.loc 2 133 5
	lw	a4,-20(s0)
	lui	a5,%hi(g_local_event_list)
	addi	a1,a5,%lo(g_local_event_list)
	mv	a0,a4
	call	dlist_add_tail
	.loc 2 135 12
	li	a5,0
.L27:
	.loc 2 136 1
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
	.size	aos_register_event_filter, .-aos_register_event_filter
	.section	.text.aos_unregister_event_filter,"ax",@progbits
	.align	1
	.globl	aos_unregister_event_filter
	.type	aos_unregister_event_filter, @function
aos_unregister_event_filter:
.LFB21:
	.loc 2 139 1
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
	.loc 2 140 24
	sw	zero,-20(s0)
	.loc 2 141 21
	lui	a5,%hi(g_local_event_list)
	addi	a5,a5,%lo(g_local_event_list)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 2 141 5
	j	.L30
.L36:
	.loc 2 142 23
	lw	a5,-20(s0)
	lhu	a5,16(a5)
	.loc 2 142 12
	lhu	a4,-34(s0)
	bne	a4,a5,.L37
	.loc 2 146 23
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 146 12
	lw	a4,-40(s0)
	bne	a4,a5,.L38
	.loc 2 150 23
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 2 150 12
	lw	a4,-44(s0)
	bne	a4,a5,.L39
	.loc 2 154 9
	lw	a5,-20(s0)
	mv	a0,a5
	call	dlist_del
	.loc 2 155 9
	lw	a0,-20(s0)
	call	aos_free
	.loc 2 156 16
	li	a5,0
	j	.L35
.L37:
	.loc 2 143 13
	nop
	j	.L32
.L38:
	.loc 2 147 13
	nop
	j	.L32
.L39:
	.loc 2 151 13
	nop
.L32:
	.loc 2 141 190 discriminator 2
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L30:
	.loc 2 141 135 discriminator 1
	lw	a4,-20(s0)
	.loc 2 141 153 discriminator 1
	lui	a5,%hi(g_local_event_list)
	addi	a5,a5,%lo(g_local_event_list)
	bne	a4,a5,.L36
	.loc 2 159 12
	li	a5,-22
.L35:
	.loc 2 160 1
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
	.size	aos_unregister_event_filter, .-aos_unregister_event_filter
	.section	.text._schedule_call,"ax",@progbits
	.align	1
	.type	_schedule_call, @function
_schedule_call:
.LFB22:
	.loc 2 167 1
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
	mv	a5,a3
	sb	a5,-61(s0)
	.loc 2 169 8
	lw	a5,-56(s0)
	beq	a5,zero,.L41
	.loc 2 169 34 discriminator 1
	lui	a5,%hi(g_main_ctx)
	lw	a5,%lo(g_main_ctx)(a5)
	.loc 2 169 20 discriminator 1
	bne	a5,zero,.L42
.L41:
	.loc 2 170 16
	li	a5,-22
	j	.L46
.L42:
	.loc 2 173 19
	sw	zero,-36(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	li	a5,256
	sh	a5,-32(s0)
	.loc 2 175 18
	lw	a5,-56(s0)
	.loc 2 173 19
	sw	a5,-28(s0)
	.loc 2 176 18
	lw	a5,-60(s0)
	.loc 2 173 19
	sw	a5,-24(s0)
	.loc 2 178 14
	lw	a0,-52(s0)
	call	aos_loop_get_eventfd
	sw	a0,-20(s0)
	.loc 2 179 8
	lw	a5,-20(s0)
	bge	a5,zero,.L44
	.loc 2 180 12
	lui	a5,%hi(local_event)
	addi	a5,a5,%lo(local_event)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L44:
	.loc 2 183 8
	lbu	a5,-61(s0)
	beq	a5,zero,.L45
	.loc 2 184 14
	lhu	a4,-32(s0)
	.loc 2 184 20
	li	a5,-32768
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,-32(s0)
.L45:
	.loc 2 186 12
	addi	a5,s0,-36
	mv	a1,a5
	lw	a0,-20(s0)
	call	input_add_event
	mv	a5,a0
.L46:
	.loc 2 187 1
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
	.size	_schedule_call, .-_schedule_call
	.section	.text.aos_loop_schedule_urgent_call,"ax",@progbits
	.align	1
	.globl	aos_loop_schedule_urgent_call
	.type	aos_loop_schedule_urgent_call, @function
aos_loop_schedule_urgent_call:
.LFB23:
	.loc 2 190 1
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
	.loc 2 191 12
	li	a3,1
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	_schedule_call
	mv	a5,a0
	.loc 2 192 1
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
	.size	aos_loop_schedule_urgent_call, .-aos_loop_schedule_urgent_call
	.section	.text.aos_loop_schedule_call,"ax",@progbits
	.align	1
	.globl	aos_loop_schedule_call
	.type	aos_loop_schedule_call, @function
aos_loop_schedule_call:
.LFB24:
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
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	.loc 2 196 12
	li	a3,0
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	_schedule_call
	mv	a5,a0
	.loc 2 197 1
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
	.size	aos_loop_schedule_call, .-aos_loop_schedule_call
	.section	.text.aos_schedule_call,"ax",@progbits
	.align	1
	.globl	aos_schedule_call
	.type	aos_schedule_call, @function
aos_schedule_call:
.LFB25:
	.loc 2 200 1
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
	.loc 2 201 12
	li	a3,0
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	li	a0,0
	call	_schedule_call
	mv	a5,a0
	.loc 2 202 1
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
.LFE25:
	.size	aos_schedule_call, .-aos_schedule_call
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_stdint.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/types.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/yloop.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/yloop_types.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/yloop.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/kernel.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8c5
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x37
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x4
	.byte	0x2b
	.byte	0x17
	.4byte	0x66
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x4
	.byte	0x39
	.byte	0x1c
	.4byte	0x80
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x4f
	.byte	0x1b
	.4byte	0x9a
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x3e
	.uleb128 0x15
	.byte	0x4
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x16
	.4byte	0xb6
	.uleb128 0x7
	.4byte	0xbd
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x6
	.byte	0x18
	.byte	0x13
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x6
	.byte	0x24
	.byte	0x14
	.4byte	0x74
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x6
	.byte	0x30
	.byte	0x14
	.4byte	0x8e
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0xa8
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x1f
	.byte	0x10
	.4byte	0x11e
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x1
	.byte	0x20
	.byte	0x15
	.4byte	0x11e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x1
	.byte	0x21
	.byte	0x15
	.4byte	0x11e
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0xf7
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x1
	.byte	0x22
	.byte	0x3
	.4byte	0xf7
	.uleb128 0xb
	.byte	0x10
	.byte	0x8
	.byte	0x64
	.byte	0x9
	.4byte	0x17a
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x8
	.byte	0x66
	.byte	0xe
	.4byte	0xdf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x8
	.byte	0x68
	.byte	0xe
	.4byte	0xd3
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x8
	.byte	0x6a
	.byte	0xe
	.4byte	0xd3
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x8
	.byte	0x6c
	.byte	0x13
	.4byte	0x9a
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x8
	.byte	0x6e
	.byte	0x13
	.4byte	0x9a
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x8
	.byte	0x6f
	.byte	0x3
	.4byte	0x12f
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x8
	.byte	0x72
	.byte	0x10
	.4byte	0x192
	.uleb128 0x7
	.4byte	0x197
	.uleb128 0xe
	.4byte	0x1a7
	.uleb128 0x1
	.4byte	0x1a7
	.uleb128 0x1
	.4byte	0xb4
	.byte	0
	.uleb128 0x7
	.4byte	0x17a
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x8
	.byte	0x74
	.byte	0x10
	.4byte	0x1b8
	.uleb128 0x7
	.4byte	0x1bd
	.uleb128 0xe
	.4byte	0x1c8
	.uleb128 0x1
	.4byte	0xb4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x8
	.byte	0x76
	.byte	0x10
	.4byte	0x1d4
	.uleb128 0x7
	.4byte	0x1d9
	.uleb128 0xe
	.4byte	0x1e9
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0xb4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x8
	.byte	0xce
	.byte	0xf
	.4byte	0xb4
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x9
	.byte	0x7
	.byte	0x8
	.4byte	0x228
	.uleb128 0xd
	.string	"fd"
	.byte	0x9
	.byte	0x8
	.byte	0x9
	.4byte	0x3e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x9
	.byte	0x9
	.byte	0xb
	.4byte	0x6d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x9
	.byte	0xa
	.byte	0xb
	.4byte	0x6d
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.4byte	0x1f5
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF39
	.uleb128 0xb
	.byte	0xc
	.byte	0xa
	.byte	0xa
	.byte	0x9
	.4byte	0x264
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0xa
	.byte	0xb
	.byte	0x9
	.4byte	0x3e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0xa
	.byte	0xc
	.byte	0xb
	.4byte	0xb4
	.byte	0x4
	.uleb128 0xd
	.string	"cb"
	.byte	0xa
	.byte	0xd
	.byte	0x15
	.4byte	0x1c8
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0xa
	.byte	0xe
	.byte	0x3
	.4byte	0x234
	.uleb128 0xb
	.byte	0x1c
	.byte	0xa
	.byte	0x10
	.byte	0x9
	.4byte	0x2e2
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0xa
	.byte	0x11
	.byte	0xd
	.4byte	0x123
	.byte	0
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0xa
	.byte	0x12
	.byte	0x14
	.4byte	0x228
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xa
	.byte	0x13
	.byte	0x13
	.4byte	0x2e2
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0xa
	.byte	0x14
	.byte	0x9
	.4byte	0x3e
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0xa
	.byte	0x16
	.byte	0xe
	.4byte	0xd3
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xa
	.byte	0x17
	.byte	0xd
	.4byte	0xc7
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0xa
	.byte	0x18
	.byte	0xa
	.4byte	0x22d
	.byte	0x17
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xa
	.byte	0x19
	.byte	0xa
	.4byte	0x22d
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0x264
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0xa
	.byte	0x1a
	.byte	0x3
	.4byte	0x270
	.uleb128 0xb
	.byte	0x14
	.byte	0x2
	.byte	0x10
	.byte	0x9
	.4byte	0x330
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x2
	.byte	0x11
	.byte	0xd
	.4byte	0x123
	.byte	0
	.uleb128 0xd
	.string	"cb"
	.byte	0x2
	.byte	0x12
	.byte	0x12
	.4byte	0x186
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x2
	.byte	0x13
	.byte	0xb
	.4byte	0xb4
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x2
	.byte	0x14
	.byte	0xe
	.4byte	0xd3
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x2
	.byte	0x15
	.byte	0x3
	.4byte	0x2f3
	.uleb128 0xb
	.byte	0x8
	.byte	0x2
	.byte	0x17
	.byte	0x8
	.4byte	0x35f
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x2
	.byte	0x18
	.byte	0xb
	.4byte	0xb4
	.byte	0
	.uleb128 0xd
	.string	"fd"
	.byte	0x2
	.byte	0x19
	.byte	0x9
	.4byte	0x3e
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x2
	.byte	0x1a
	.byte	0x3
	.4byte	0x33c
	.uleb128 0x5
	.byte	0x3
	.4byte	local_event
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x2
	.byte	0x1e
	.byte	0x10
	.4byte	0x123
	.uleb128 0x5
	.byte	0x3
	.4byte	g_local_event_list
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x2
	.byte	0x24
	.byte	0x15
	.4byte	0x38f
	.uleb128 0x7
	.4byte	0x2e7
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0xa
	.byte	0x1f
	.byte	0x5
	.4byte	0x3e
	.4byte	0x3aa
	.uleb128 0x1
	.4byte	0xb4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF62
	.byte	0xb
	.2byte	0x1e1
	.byte	0xa
	.4byte	0x3bd
	.uleb128 0x1
	.4byte	0xb4
	.byte	0
	.uleb128 0x19
	.4byte	.LASF60
	.byte	0xb
	.2byte	0x1bf
	.byte	0xb
	.4byte	0xb4
	.4byte	0x3d4
	.uleb128 0x1
	.4byte	0x37
	.byte	0
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0xc
	.byte	0x3f
	.byte	0x5
	.4byte	0x3e
	.4byte	0x3ea
	.uleb128 0x1
	.4byte	0x3e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x8
	.byte	0xab
	.4byte	0x405
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0x1c8
	.uleb128 0x1
	.4byte	0xb4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0xa
	.byte	0x1c
	.4byte	0x416
	.uleb128 0x1
	.4byte	0x3e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x8
	.byte	0xa2
	.byte	0x5
	.4byte	0x3e
	.4byte	0x436
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0x1c8
	.uleb128 0x1
	.4byte	0xb4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xc
	.byte	0x36
	.byte	0x5
	.4byte	0x3e
	.4byte	0x451
	.uleb128 0x1
	.4byte	0xc2
	.uleb128 0x1
	.4byte	0x3e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0xc
	.byte	0x4a
	.byte	0x9
	.4byte	0xeb
	.4byte	0x471
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0xc
	.byte	0x60
	.byte	0x5
	.4byte	0x3e
	.4byte	0x491
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0x9a
	.byte	0
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0xc7
	.4byte	0x3e
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c6
	.uleb128 0x5
	.string	"fun"
	.byte	0xc7
	.byte	0x22
	.4byte	0x1ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"arg"
	.byte	0xc7
	.byte	0x2d
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0xc2
	.4byte	0x3e
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50a
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x2
	.byte	0xc2
	.byte	0x28
	.4byte	0x50a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"fun"
	.byte	0xc2
	.byte	0x39
	.4byte	0x1ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"arg"
	.byte	0xc2
	.byte	0x44
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x7
	.4byte	0x1e9
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0xbd
	.4byte	0x3e
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x553
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x2
	.byte	0xbd
	.byte	0x2f
	.4byte	0x50a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"fun"
	.byte	0xbd
	.byte	0x40
	.4byte	0x1ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"arg"
	.byte	0xbd
	.byte	0x4b
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0xa5
	.4byte	0x3e
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c2
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x2
	.byte	0xa5
	.byte	0x27
	.4byte	0x50a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"fun"
	.byte	0xa5
	.byte	0x38
	.4byte	0x1ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"arg"
	.byte	0xa5
	.byte	0x43
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x2
	.byte	0xa6
	.byte	0x20
	.4byte	0x22d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x2
	.byte	0xad
	.byte	0x13
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"fd"
	.byte	0xb2
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x8a
	.4byte	0x3e
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x615
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x2
	.byte	0x8a
	.byte	0x2a
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x5
	.string	"cb"
	.byte	0x8a
	.byte	0x3d
	.4byte	0x186
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x2
	.byte	0x8a
	.byte	0x47
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x2
	.byte	0x8c
	.byte	0x18
	.4byte	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	0x330
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x76
	.4byte	0x3e
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x66d
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x2
	.byte	0x76
	.byte	0x28
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x5
	.string	"cb"
	.byte	0x76
	.byte	0x3b
	.4byte	0x186
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x2
	.byte	0x76
	.byte	0x45
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x2
	.byte	0x7c
	.byte	0x18
	.4byte	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x6b
	.4byte	0x3e
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c2
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x2
	.byte	0x6b
	.byte	0x1d
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x2
	.byte	0x6b
	.byte	0x2c
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x2
	.byte	0x6b
	.byte	0x40
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x2
	.byte	0x6d
	.byte	0x13
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF91
	.byte	0x2
	.byte	0x65
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e6
	.uleb128 0x5
	.string	"fd"
	.byte	0x65
	.byte	0x23
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x54
	.4byte	0x3e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70c
	.uleb128 0xc
	.string	"fd"
	.byte	0x59
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0x2
	.byte	0x4b
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x75c
	.uleb128 0x5
	.string	"fd"
	.byte	0x4b
	.byte	0x18
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x2
	.byte	0x4b
	.byte	0x32
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x2
	.byte	0x4d
	.byte	0x13
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"ret"
	.byte	0x4e
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x3c
	.4byte	0x3e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ae
	.uleb128 0x5
	.string	"fd"
	.byte	0x3c
	.byte	0x20
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x2
	.byte	0x3c
	.byte	0x33
	.4byte	0x1a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x2
	.byte	0x3e
	.byte	0xa
	.4byte	0x22d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0xc
	.string	"cmd"
	.byte	0x40
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF84
	.byte	0x2
	.byte	0x28
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x80a
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x2
	.byte	0x28
	.byte	0x23
	.4byte	0x1a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x2
	.byte	0x32
	.byte	0x18
	.4byte	0x615
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0x2
	.byte	0x2b
	.byte	0x14
	.4byte	0x1ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"arg"
	.byte	0x2c
	.byte	0xf
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF86
	.byte	0x1
	.byte	0x42
	.byte	0x14
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84e
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x1
	.byte	0x42
	.byte	0x27
	.4byte	0x84e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x44
	.byte	0xe
	.4byte	0x84e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x45
	.byte	0xe
	.4byte	0x84e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.4byte	0x123
	.uleb128 0xf
	.4byte	.LASF87
	.byte	0x1
	.byte	0x3d
	.byte	0x14
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x888
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x1
	.byte	0x3d
	.byte	0x2c
	.4byte	0x84e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x1
	.byte	0x3d
	.byte	0x3b
	.4byte	0x84e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF92
	.byte	0x1
	.byte	0x24
	.byte	0x14
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x1
	.byte	0x24
	.byte	0x29
	.4byte	0x84e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x1
	.byte	0x24
	.byte	0x38
	.4byte	0x84e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x1
	.byte	0x24
	.byte	0x47
	.4byte	0x84e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
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
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x12
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
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x1d
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
	.4byte	0x8c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
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
	.4byte	.LFB0
	.uleb128 .LFE0-.LFB0
	.byte	0x7
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0x7
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF53:
	.string	"priv"
.LASF68:
	.string	"aos_ioctl"
.LASF60:
	.string	"aos_malloc"
.LASF58:
	.string	"g_local_event_list"
.LASF77:
	.string	"aos_register_event_filter"
.LASF81:
	.string	"_schedule_call"
.LASF90:
	.string	"g_main_ctx"
.LASF50:
	.string	"terminate"
.LASF72:
	.string	"aos_loop_schedule_urgent_call"
.LASF9:
	.string	"short int"
.LASF6:
	.string	"size_t"
.LASF47:
	.string	"max_sock"
.LASF71:
	.string	"loop"
.LASF4:
	.string	"long double"
.LASF48:
	.string	"reader_count"
.LASF74:
	.string	"event"
.LASF10:
	.string	"__uint16_t"
.LASF85:
	.string	"handler"
.LASF65:
	.string	"aos_poll_read_fd"
.LASF28:
	.string	"value"
.LASF70:
	.string	"aos_loop_schedule_call"
.LASF33:
	.string	"aos_poll_call_t"
.LASF18:
	.string	"uint8_t"
.LASF83:
	.string	"event_read_cb"
.LASF51:
	.string	"yloop_ctx_t"
.LASF31:
	.string	"aos_event_cb"
.LASF45:
	.string	"readers"
.LASF92:
	.string	"__dlist_add"
.LASF42:
	.string	"yloop_sock_t"
.LASF3:
	.string	"long long int"
.LASF43:
	.string	"timeouts"
.LASF87:
	.string	"dlist_add_tail"
.LASF17:
	.string	"char"
.LASF12:
	.string	"long int"
.LASF79:
	.string	"aos_event_service_init"
.LASF32:
	.string	"aos_call_t"
.LASF67:
	.string	"aos_read"
.LASF38:
	.string	"revents"
.LASF52:
	.string	"node"
.LASF84:
	.string	"handle_events"
.LASF88:
	.string	"queue"
.LASF41:
	.string	"private_data"
.LASF82:
	.string	"input_add_event"
.LASF61:
	.string	"aos_close"
.LASF66:
	.string	"aos_open"
.LASF8:
	.string	"unsigned char"
.LASF56:
	.string	"handle"
.LASF24:
	.string	"dlist_t"
.LASF64:
	.string	"aos_loop_set_eventfd"
.LASF5:
	.string	"signed char"
.LASF15:
	.string	"long long unsigned int"
.LASF20:
	.string	"uint32_t"
.LASF35:
	.string	"dlist_s"
.LASF2:
	.string	"unsigned int"
.LASF19:
	.string	"uint16_t"
.LASF49:
	.string	"pending_terminate"
.LASF27:
	.string	"code"
.LASF63:
	.string	"aos_cancel_poll_read_fd"
.LASF34:
	.string	"aos_loop_t"
.LASF36:
	.string	"pollfd"
.LASF11:
	.string	"short unsigned int"
.LASF80:
	.string	"param"
.LASF46:
	.string	"eventfd"
.LASF55:
	.string	"event_list_node_t"
.LASF26:
	.string	"type"
.LASF69:
	.string	"aos_schedule_call"
.LASF39:
	.string	"_Bool"
.LASF76:
	.string	"event_node"
.LASF30:
	.string	"input_event_t"
.LASF44:
	.string	"pollfds"
.LASF86:
	.string	"dlist_del"
.LASF59:
	.string	"aos_loop_get_eventfd"
.LASF78:
	.string	"aos_post_event"
.LASF14:
	.string	"long unsigned int"
.LASF57:
	.string	"local_event"
.LASF13:
	.string	"__uint32_t"
.LASF73:
	.string	"urgent"
.LASF91:
	.string	"aos_event_service_deinit"
.LASF62:
	.string	"aos_free"
.LASF21:
	.string	"ssize_t"
.LASF37:
	.string	"events"
.LASF25:
	.string	"time"
.LASF40:
	.string	"sock"
.LASF75:
	.string	"aos_unregister_event_filter"
.LASF54:
	.string	"type_filter"
.LASF22:
	.string	"prev"
.LASF29:
	.string	"extra"
.LASF89:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF23:
	.string	"next"
.LASF7:
	.string	"__uint8_t"
.LASF16:
	.string	"_ssize_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/yloop"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/src/local_event.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
