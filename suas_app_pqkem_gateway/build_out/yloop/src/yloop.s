	.file	"yloop.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/yloop" "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/src/yloop.c"
	.section	.text.__dlist_add,"ax",@progbits
	.align	1
	.type	__dlist_add, @function
__dlist_add:
.LFB2:
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
.LFE2:
	.size	__dlist_add, .-__dlist_add
	.section	.text.dlist_add_tail,"ax",@progbits
	.align	1
	.type	dlist_add_tail, @function
dlist_add_tail:
.LFB4:
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
.LFE4:
	.size	dlist_add_tail, .-dlist_add_tail
	.section	.text.dlist_del,"ax",@progbits
	.align	1
	.type	dlist_del, @function
dlist_del:
.LFB5:
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
.LFE5:
	.size	dlist_del, .-dlist_del
	.section	.text.dlist_init,"ax",@progbits
	.align	1
	.type	dlist_init, @function
dlist_init:
.LFB6:
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
.LFE6:
	.size	dlist_init, .-dlist_init
	.section	.text.dlist_empty,"ax",@progbits
	.align	1
	.type	dlist_empty, @function
dlist_empty:
.LFB8:
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
.LFE8:
	.size	dlist_empty, .-dlist_empty
	.globl	g_main_ctx
	.section	.sbss.g_main_ctx,"aw",@nobits
	.align	2
	.type	g_main_ctx, @object
	.size	g_main_ctx, 4
g_main_ctx:
	.zero	4
	.section	.sbss.g_loop_key,"aw",@nobits
	.align	2
	.type	g_loop_key, @object
	.size	g_loop_key, 4
g_loop_key:
	.zero	4
	.section	.text._set_context,"ax",@progbits
	.align	1
	.type	_set_context, @function
_set_context:
.LFB19:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/src/yloop.c"
	.loc 2 36 1
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
	.loc 2 37 5
	lui	a5,%hi(g_loop_key)
	lw	a5,%lo(g_loop_key)(a5)
	lw	a1,-20(s0)
	mv	a0,a5
	call	aos_task_setspecific
	.loc 2 38 1
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
	.size	_set_context, .-_set_context
	.section	.text._get_context,"ax",@progbits
	.align	1
	.type	_get_context, @function
_get_context:
.LFB20:
	.loc 2 41 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 42 12
	lui	a5,%hi(g_loop_key)
	lw	a5,%lo(g_loop_key)(a5)
	mv	a0,a5
	call	aos_task_getspecific
	mv	a5,a0
	.loc 2 43 1
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
.LFE20:
	.size	_get_context, .-_get_context
	.section	.text.get_context,"ax",@progbits
	.align	1
	.type	get_context, @function
get_context:
.LFB21:
	.loc 2 46 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 47 24
	call	_get_context
	sw	a0,-20(s0)
	.loc 2 48 8
	lw	a5,-20(s0)
	bne	a5,zero,.L11
	.loc 2 49 9
	lui	a5,%hi(g_main_ctx)
	lw	a5,%lo(g_main_ctx)(a5)
	mv	a0,a5
	call	_set_context
	.loc 2 50 16
	lui	a5,%hi(g_main_ctx)
	lw	a5,%lo(g_main_ctx)(a5)
	j	.L12
.L11:
	.loc 2 52 12
	lw	a5,-20(s0)
.L12:
	.loc 2 53 1
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
	.size	get_context, .-get_context
	.section	.text.aos_loop_set_eventfd,"ax",@progbits
	.align	1
	.globl	aos_loop_set_eventfd
	.type	aos_loop_set_eventfd, @function
aos_loop_set_eventfd:
.LFB22:
	.loc 2 56 1
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
	.loc 2 57 24
	call	get_context
	sw	a0,-20(s0)
	.loc 2 58 18
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,16(a5)
	.loc 2 59 1
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
.LFE22:
	.size	aos_loop_set_eventfd, .-aos_loop_set_eventfd
	.section	.text.aos_loop_get_eventfd,"ax",@progbits
	.align	1
	.globl	aos_loop_get_eventfd
	.type	aos_loop_get_eventfd, @function
aos_loop_get_eventfd:
.LFB23:
	.loc 2 62 1
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
	.loc 2 63 36
	lw	a5,-36(s0)
	bne	a5,zero,.L15
	.loc 2 63 38 discriminator 1
	call	get_context
	sw	a0,-20(s0)
	j	.L16
.L15:
	.loc 2 63 18 discriminator 2
	lw	a5,-36(s0)
	sw	a5,-20(s0)
.L16:
	.loc 2 64 15
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 2 65 1
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
.LFE23:
	.size	aos_loop_get_eventfd, .-aos_loop_get_eventfd
	.section	.text.aos_current_loop,"ax",@progbits
	.align	1
	.globl	aos_current_loop
	.type	aos_current_loop, @function
aos_current_loop:
.LFB24:
	.loc 2 68 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 69 12
	call	get_context
	mv	a5,a0
	.loc 2 70 1
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
.LFE24:
	.size	aos_current_loop, .-aos_current_loop
	.section	.rodata
	.align	2
.LC0:
	.string	"yloopyloop already inited"
	.section	.text.aos_loop_init,"ax",@progbits
	.align	1
	.globl	aos_loop_init
	.type	aos_loop_init, @function
aos_loop_init:
.LFB25:
	.loc 2 73 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 74 24
	call	_get_context
	sw	a0,-20(s0)
	.loc 2 76 9
	lui	a5,%hi(g_main_ctx)
	lw	a5,%lo(g_main_ctx)(a5)
	.loc 2 76 8
	bne	a5,zero,.L21
	.loc 2 77 9
	lui	a5,%hi(g_loop_key)
	addi	a0,a5,%lo(g_loop_key)
	call	aos_task_key_create
	j	.L22
.L21:
	.loc 2 78 15
	lw	a5,-20(s0)
	beq	a5,zero,.L22
	.loc 2 79 9
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 2 80 16
	lw	a5,-20(s0)
	j	.L23
.L22:
	.loc 2 83 11
	li	a0,28
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 2 84 8
	lw	a5,-20(s0)
	beq	a5,zero,.L24
	.loc 2 85 9
	li	a2,28
	li	a1,0
	lw	a0,-20(s0)
	call	memset
.L24:
	.loc 2 87 9
	lui	a5,%hi(g_main_ctx)
	lw	a5,%lo(g_main_ctx)(a5)
	.loc 2 87 8
	bne	a5,zero,.L25
	.loc 2 88 20
	lui	a5,%hi(g_main_ctx)
	lw	a4,-20(s0)
	sw	a4,%lo(g_main_ctx)(a5)
.L25:
	.loc 2 91 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	dlist_init
	.loc 2 92 18
	lw	a5,-20(s0)
	li	a4,-1
	sw	a4,16(a5)
	.loc 2 93 5
	lw	a0,-20(s0)
	call	_set_context
	.loc 2 95 5
	call	aos_event_service_init
	.loc 2 97 12
	lw	a5,-20(s0)
.L23:
	.loc 2 98 1
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
	.size	aos_loop_init, .-aos_loop_init
	.section	.rodata
	.align	2
.LC1:
	.string	"yloopout of memory"
	.section	.text.aos_poll_read_fd,"ax",@progbits
	.align	1
	.globl	aos_poll_read_fd
	.type	aos_poll_read_fd, @function
aos_poll_read_fd:
.LFB26:
	.loc 2 101 1
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
	.loc 2 102 24
	call	get_context
	sw	a0,-20(s0)
	.loc 2 103 8
	lw	a5,-52(s0)
	bge	a5,zero,.L27
	.loc 2 104 16
	li	a5,-22
	j	.L28
.L27:
	.loc 2 109 18
	lw	a5,-20(s0)
	lbu	a5,22(a5)
	.loc 2 109 9
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 2 111 16
	lw	a4,-24(s0)
	.loc 2 111 33
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	.loc 2 111 16
	mv	a0,a5
	call	pvPortMalloc
	sw	a0,-28(s0)
	.loc 2 112 24
	lw	a5,-24(s0)
	.loc 2 112 41
	slli	a5,a5,3
	.loc 2 112 24
	mv	a0,a5
	call	pvPortMalloc
	sw	a0,-32(s0)
	.loc 2 114 8
	lw	a5,-28(s0)
	beq	a5,zero,.L29
	.loc 2 114 25 discriminator 1
	lw	a5,-32(s0)
	bne	a5,zero,.L30
.L29:
	.loc 2 115 9
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	.loc 2 116 9
	lw	a0,-28(s0)
	call	vPortFree
	.loc 2 117 9
	lw	a0,-32(s0)
	call	vPortFree
	.loc 2 118 16
	li	a5,-12
	j	.L28
.L30:
	.loc 2 121 18
	li	a2,0
	li	a1,3
	lw	a0,-52(s0)
	call	aos_fcntl
	sw	a0,-36(s0)
	.loc 2 122 5
	lw	a4,-36(s0)
	li	a5,16384
	or	a5,a4,a5
	mv	a2,a5
	li	a1,4
	lw	a0,-52(s0)
	call	aos_fcntl
	.loc 2 124 8
	lw	a5,-20(s0)
	lbu	a5,22(a5)
	.loc 2 124 22
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,22(a5)
	.loc 2 126 25
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 2 126 41
	lw	a5,-24(s0)
	addi	a5,a5,-1
	mv	a3,a5
	.loc 2 126 46
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,2
	.loc 2 126 5
	mv	a2,a5
	mv	a1,a4
	lw	a0,-28(s0)
	call	memcpy
	.loc 2 127 18
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 2 127 5
	mv	a0,a5
	call	vPortFree
	.loc 2 128 18
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,12(a5)
	.loc 2 130 33
	lw	a5,-20(s0)
	lw	a4,8(a5)
	.loc 2 130 49
	lw	a5,-24(s0)
	addi	a5,a5,-1
	.loc 2 130 54
	slli	a5,a5,3
	.loc 2 130 5
	mv	a2,a5
	mv	a1,a4
	lw	a0,-32(s0)
	call	memcpy
	.loc 2 131 18
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 131 5
	mv	a0,a5
	call	vPortFree
	.loc 2 132 18
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	sw	a4,8(a5)
	.loc 2 134 14
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,-12
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 135 20
	lw	a5,-28(s0)
	lw	a4,-52(s0)
	sw	a4,0(a5)
	.loc 2 136 28
	lw	a5,-28(s0)
	lw	a4,-60(s0)
	sw	a4,4(a5)
	.loc 2 137 18
	lw	a5,-28(s0)
	lw	a4,-56(s0)
	sw	a4,8(a5)
	.loc 2 139 19
	lw	a5,-20(s0)
	lhu	a5,20(a5)
	mv	a4,a5
	.loc 2 139 8
	lw	a5,-52(s0)
	ble	a5,a4,.L31
	.loc 2 140 23
	lw	a5,-52(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-20(s0)
	sh	a4,20(a5)
.L31:
	.loc 2 143 12
	li	a5,0
.L28:
	.loc 2 144 1
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
	.size	aos_poll_read_fd, .-aos_poll_read_fd
	.section	.text.aos_cancel_poll_read_fd,"ax",@progbits
	.align	1
	.globl	aos_cancel_poll_read_fd
	.type	aos_cancel_poll_read_fd, @function
aos_cancel_poll_read_fd:
.LFB27:
	.loc 2 147 1
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
	.loc 2 148 24
	call	get_context
	sw	a0,-24(s0)
	.loc 2 149 12
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 2 149 8
	beq	a5,zero,.L42
	.loc 2 149 35 discriminator 1
	lw	a5,-24(s0)
	lbu	a5,22(a5)
	.loc 2 149 29 discriminator 1
	beq	a5,zero,.L42
	.loc 2 154 12
	sw	zero,-20(s0)
	.loc 2 154 5
	j	.L36
.L39:
	.loc 2 155 16
	lw	a5,-24(s0)
	lw	a3,12(a5)
	.loc 2 155 25
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	.loc 2 155 28
	lw	a5,0(a5)
	.loc 2 155 12
	lw	a4,-36(s0)
	beq	a4,a5,.L43
	.loc 2 154 41 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L36:
	.loc 2 154 24 discriminator 1
	lw	a5,-24(s0)
	lbu	a5,22(a5)
	mv	a4,a5
	.loc 2 154 19 discriminator 1
	lw	a5,-20(s0)
	blt	a5,a4,.L39
	j	.L38
.L43:
	.loc 2 156 13
	nop
.L38:
	.loc 2 160 17
	lw	a5,-24(s0)
	lbu	a5,22(a5)
	mv	a4,a5
	.loc 2 160 8
	lw	a5,-20(s0)
	beq	a5,a4,.L44
	.loc 2 164 17
	lw	a5,-24(s0)
	lbu	a5,22(a5)
	.loc 2 164 32
	addi	a5,a5,-1
	.loc 2 164 8
	lw	a4,-20(s0)
	beq	a4,a5,.L41
	.loc 2 165 21
	lw	a5,-24(s0)
	lw	a3,12(a5)
	.loc 2 165 30
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	.loc 2 165 17
	add	a0,a3,a5
	.loc 2 165 39
	lw	a5,-24(s0)
	lw	a3,12(a5)
	.loc 2 165 48
	lw	a5,-20(s0)
	.loc 2 165 9
	addi	a4,a5,1
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	.loc 2 165 35
	add	a4,a3,a5
	.loc 2 166 21
	lw	a5,-24(s0)
	lbu	a5,22(a5)
	mv	a3,a5
	.loc 2 166 36
	lw	a5,-20(s0)
	sub	a5,a3,a5
	.loc 2 166 40
	addi	a5,a5,-1
	mv	a3,a5
	.loc 2 166 45
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,2
	.loc 2 165 9
	mv	a2,a5
	mv	a1,a4
	call	memmove
.L41:
	.loc 2 170 8
	lw	a5,-24(s0)
	lbu	a5,22(a5)
	.loc 2 170 22
	addi	a5,a5,-1
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,22(a5)
	j	.L32
.L42:
	.loc 2 150 9
	nop
	j	.L32
.L44:
	.loc 2 161 9
	nop
.L32:
	.loc 2 171 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	aos_cancel_poll_read_fd, .-aos_cancel_poll_read_fd
	.section	.text.aos_post_delayed_action,"ax",@progbits
	.align	1
	.globl	aos_post_delayed_action
	.type	aos_post_delayed_action, @function
aos_post_delayed_action:
.LFB28:
	.loc 2 174 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 2 175 8
	lw	a5,-40(s0)
	bne	a5,zero,.L46
	.loc 2 176 16
	li	a5,-22
	j	.L47
.L46:
	.loc 2 179 24
	call	get_context
	sw	a0,-24(s0)
	.loc 2 180 32
	li	a0,32
	call	pvPortMalloc
	sw	a0,-28(s0)
	.loc 2 181 8
	lw	a5,-28(s0)
	bne	a5,zero,.L48
	.loc 2 182 16
	li	a5,-12
	j	.L47
.L48:
	.loc 2 185 27
	call	aos_now_ms
	mv	a2,a0
	mv	a3,a1
	.loc 2 185 40 discriminator 1
	lw	a5,-36(s0)
	mv	s2,a5
	srai	a5,a5,31
	mv	s3,a5
	add	a4,a2,s2
	mv	a1,a4
	sltu	a1,a1,a2
	add	a5,a3,s3
	add	a3,a1,a5
	mv	a5,a3
	.loc 2 185 25 discriminator 1
	lw	a3,-28(s0)
	sw	a4,8(a3)
	sw	a5,12(a3)
	.loc 2 186 27
	lw	a5,-28(s0)
	lw	a4,-44(s0)
	sw	a4,16(a5)
	.loc 2 187 17
	lw	a5,-28(s0)
	lw	a4,-40(s0)
	sw	a4,20(a5)
	.loc 2 188 17
	lw	a5,-28(s0)
	lw	a4,-36(s0)
	sw	a4,24(a5)
	.loc 2 192 14
	lw	a5,-24(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 2 192 5
	j	.L49
.L53:
	.loc 2 193 20
	lw	a5,-28(s0)
	lw	a4,8(a5)
	lw	a5,12(a5)
	.loc 2 193 38
	lw	a3,-20(s0)
	lw	a2,8(a3)
	lw	a3,12(a3)
	.loc 2 193 12
	mv	a0,a3
	mv	a1,a5
	bgt	a0,a1,.L54
	mv	a0,a3
	mv	a1,a5
	bne	a0,a1,.L50
	mv	a3,a2
	mv	a5,a4
	bgtu	a3,a5,.L54
.L50:
	.loc 2 192 155 discriminator 2
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L49:
	.loc 2 192 130 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bne	a4,a5,.L53
	j	.L52
.L54:
	.loc 2 194 13
	nop
.L52:
	.loc 2 198 5
	lw	a5,-28(s0)
	lw	a4,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	dlist_add_tail
	.loc 2 200 12
	li	a5,0
.L47:
	.loc 2 201 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s2,36(sp)
	.cfi_restore 18
	lw	s3,32(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	aos_post_delayed_action, .-aos_post_delayed_action
	.section	.text.aos_cancel_delayed_action,"ax",@progbits
	.align	1
	.globl	aos_cancel_delayed_action
	.type	aos_cancel_delayed_action, @function
aos_cancel_delayed_action:
.LFB29:
	.loc 2 204 1
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
	.loc 2 205 24
	call	get_context
	sw	a0,-24(s0)
	.loc 2 208 14
	lw	a5,-24(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 2 208 5
	j	.L56
.L62:
	.loc 2 209 12
	lw	a4,-36(s0)
	li	a5,-1
	beq	a4,a5,.L57
	.loc 2 209 28 discriminator 1
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 2 209 22 discriminator 1
	lw	a4,-36(s0)
	bne	a4,a5,.L63
.L57:
	.loc 2 213 16
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 2 213 12
	lw	a4,-40(s0)
	bne	a4,a5,.L64
	.loc 2 217 16
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 2 217 12
	lw	a4,-44(s0)
	bne	a4,a5,.L65
	.loc 2 221 9
	lw	a5,-20(s0)
	mv	a0,a5
	call	dlist_del
	.loc 2 222 9
	lw	a0,-20(s0)
	call	vPortFree
	.loc 2 223 9
	j	.L55
.L63:
	.loc 2 210 13
	nop
	j	.L58
.L64:
	.loc 2 214 13
	nop
	j	.L58
.L65:
	.loc 2 218 13
	nop
.L58:
	.loc 2 208 155 discriminator 2
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L56:
	.loc 2 208 130 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bne	a4,a5,.L62
.L55:
	.loc 2 225 1
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
	.size	aos_cancel_delayed_action, .-aos_cancel_delayed_action
	.section	.rodata
	.align	2
.LC2:
	.string	"yloopaos_poll"
	.section	.text.aos_loop_run,"ax",@progbits
	.align	1
	.globl	aos_loop_run
	.type	aos_loop_run, @function
aos_loop_run:
.LFB30:
	.loc 2 228 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 2 229 24
	call	get_context
	sw	a0,-28(s0)
	.loc 2 231 11
	j	.L67
.L83:
.LBB2:
	.loc 2 233 13
	li	a5,-1
	sw	a5,-20(s0)
	.loc 2 234 26
	lw	a5,-28(s0)
	lbu	a5,22(a5)
	.loc 2 234 13
	sw	a5,-32(s0)
	.loc 2 237 26
	lw	a5,-28(s0)
	.loc 2 237 14
	mv	a0,a5
	call	dlist_empty
	mv	a5,a0
	.loc 2 237 12 discriminator 1
	bne	a5,zero,.L68
.LBB3:
	.loc 2 238 30
	lw	a5,-28(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	.loc 2 239 29
	call	aos_now_ms
	sw	a0,-48(s0)
	sw	a1,-44(s0)
	.loc 2 241 26
	lw	a5,-36(s0)
	lw	a4,8(a5)
	lw	a5,12(a5)
	.loc 2 241 16
	lw	a3,-44(s0)
	mv	a2,a5
	blt	a3,a2,.L84
	lw	a3,-44(s0)
	mv	a2,a5
	bne	a3,a2,.L69
	lw	a3,-48(s0)
	mv	a5,a4
	bgeu	a3,a5,.L69
.L84:
	.loc 2 242 33
	lw	a5,-36(s0)
	lw	a4,8(a5)
	lw	a5,12(a5)
	.loc 2 242 46
	lw	a5,-48(s0)
	sub	a5,a4,a5
	.loc 2 242 28
	sw	a5,-20(s0)
	j	.L68
.L69:
	.loc 2 244 28
	sw	zero,-20(s0)
.L68:
.LBE3:
	.loc 2 248 16
	sw	zero,-24(s0)
	.loc 2 248 9
	j	.L71
.L72:
	.loc 2 249 37
	lw	a5,-28(s0)
	lw	a3,12(a5)
	.loc 2 249 46
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a4,a3,a5
	.loc 2 249 16
	lw	a5,-28(s0)
	lw	a3,8(a5)
	.loc 2 249 25
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a3,a5
	.loc 2 249 49
	lw	a4,0(a4)
	.loc 2 249 32
	sw	a4,0(a5)
	.loc 2 250 16
	lw	a5,-28(s0)
	lw	a4,8(a5)
	.loc 2 250 25
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 2 250 36
	li	a4,1
	sh	a4,4(a5)
	.loc 2 248 35 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L71:
	.loc 2 248 23 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	blt	a4,a5,.L72
	.loc 2 253 19
	lw	a5,-28(s0)
	lw	a5,8(a5)
	lw	a2,-20(s0)
	lw	a1,-32(s0)
	mv	a0,a5
	call	aos_poll
	sw	a0,-52(s0)
	.loc 2 255 12
	lw	a5,-52(s0)
	bge	a5,zero,.L73
	.loc 2 255 25 discriminator 1
	call	__errno
	mv	a5,a0
	.loc 2 255 24 discriminator 2
	lw	a4,0(a5)
	.loc 2 255 21 discriminator 2
	li	a5,4
	beq	a4,a5,.L73
	.loc 2 256 13
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	.loc 2 257 13
	j	.L66
.L73:
	.loc 2 261 26
	lw	a5,-28(s0)
	.loc 2 261 14
	mv	a0,a5
	call	dlist_empty
	mv	a5,a0
	.loc 2 261 12 discriminator 1
	bne	a5,zero,.L75
.LBB4:
	.loc 2 262 30
	lw	a5,-28(s0)
	lw	a5,4(a5)
	sw	a5,-56(s0)
	.loc 2 263 29
	call	aos_now_ms
	sw	a0,-64(s0)
	sw	a1,-60(s0)
	.loc 2 265 27
	lw	a5,-56(s0)
	lw	a4,8(a5)
	lw	a5,12(a5)
	.loc 2 265 16
	lw	a3,-60(s0)
	mv	a2,a5
	blt	a3,a2,.L75
	lw	a3,-60(s0)
	mv	a2,a5
	bne	a3,a2,.L85
	lw	a3,-64(s0)
	mv	a5,a4
	bltu	a3,a5,.L75
.L85:
	.loc 2 266 17
	lw	a5,-56(s0)
	mv	a0,a5
	call	dlist_del
	.loc 2 267 20
	lw	a5,-56(s0)
	lw	a5,20(a5)
	.loc 2 267 17
	lw	a4,-56(s0)
	lw	a4,16(a4)
	mv	a0,a4
	jalr	a5
.LVL0:
	.loc 2 268 17
	lw	a0,-56(s0)
	call	vPortFree
.L75:
.LBE4:
	.loc 2 272 12
	lw	a5,-52(s0)
	ble	a5,zero,.L86
	.loc 2 276 16
	sw	zero,-24(s0)
	.loc 2 276 9
	j	.L79
.L81:
	.loc 2 277 20
	lw	a5,-28(s0)
	lw	a4,8(a5)
	.loc 2 277 29
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 2 277 32
	lh	a5,6(a5)
	.loc 2 277 41
	slli	a5,a5,16
	srli	a5,a5,16
	andi	a5,a5,1
	.loc 2 277 16
	beq	a5,zero,.L80
	.loc 2 278 20
	lw	a5,-28(s0)
	lw	a3,12(a5)
	.loc 2 278 29
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	.loc 2 278 32
	lw	a3,8(a5)
	.loc 2 279 24
	lw	a5,-28(s0)
	lw	a2,12(a5)
	.loc 2 279 33
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	.loc 2 278 17
	lw	a0,0(a5)
	.loc 2 280 24
	lw	a5,-28(s0)
	lw	a2,12(a5)
	.loc 2 280 33
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	.loc 2 278 17
	lw	a5,4(a5)
	mv	a1,a5
	jalr	a3
.LVL1:
.L80:
	.loc 2 276 35 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L79:
	.loc 2 276 23 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	blt	a4,a5,.L81
	j	.L67
.L86:
	.loc 2 273 13
	nop
.L67:
.LBE2:
	.loc 2 231 16
	lw	a5,-28(s0)
	lbu	a5,24(a5)
	.loc 2 231 12
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 2 231 28
	beq	a5,zero,.L82
	.loc 2 232 26
	lw	a5,-28(s0)
	.loc 2 232 14
	mv	a0,a5
	call	dlist_empty
	mv	a5,a0
	.loc 2 231 28 discriminator 1
	beq	a5,zero,.L83
	.loc 2 232 48
	lw	a5,-28(s0)
	lbu	a5,22(a5)
	.loc 2 232 42
	bne	a5,zero,.L83
.L82:
	.loc 2 285 20
	lw	a5,-28(s0)
	sb	zero,24(a5)
.L66:
	.loc 2 286 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	aos_loop_run, .-aos_loop_run
	.section	.text.aos_loop_exit,"ax",@progbits
	.align	1
	.globl	aos_loop_exit
	.type	aos_loop_exit, @function
aos_loop_exit:
.LFB31:
	.loc 2 289 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 290 24
	call	get_context
	sw	a0,-20(s0)
	.loc 2 291 20
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,24(a5)
	.loc 2 292 1
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
	.size	aos_loop_exit, .-aos_loop_exit
	.section	.text.aos_loop_destroy,"ax",@progbits
	.align	1
	.globl	aos_loop_destroy
	.type	aos_loop_destroy, @function
aos_loop_destroy:
.LFB32:
	.loc 2 295 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 296 24
	call	_get_context
	sw	a0,-20(s0)
	.loc 2 298 8
	lw	a5,-20(s0)
	beq	a5,zero,.L94
	.loc 2 302 5
	lw	a5,-20(s0)
	lw	a5,16(a5)
	mv	a0,a5
	call	aos_event_service_deinit
	.loc 2 304 11
	j	.L91
.L92:
.LBB5:
	.loc 2 305 26
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 2 307 9
	lw	a5,-24(s0)
	mv	a0,a5
	call	dlist_del
	.loc 2 308 9
	lw	a0,-24(s0)
	call	vPortFree
.L91:
.LBE5:
	.loc 2 304 25
	lw	a5,-20(s0)
	.loc 2 304 13
	mv	a0,a5
	call	dlist_empty
	mv	a5,a0
	.loc 2 304 12 discriminator 1
	beq	a5,zero,.L92
	.loc 2 311 18
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 2 311 5
	mv	a0,a5
	call	vPortFree
	.loc 2 312 18
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 312 5
	mv	a0,a5
	call	vPortFree
	.loc 2 314 5
	li	a0,0
	call	_set_context
	.loc 2 315 13
	lui	a5,%hi(g_main_ctx)
	lw	a5,%lo(g_main_ctx)(a5)
	.loc 2 315 8
	lw	a4,-20(s0)
	bne	a4,a5,.L93
	.loc 2 316 20
	lui	a5,%hi(g_main_ctx)
	sw	zero,%lo(g_main_ctx)(a5)
.L93:
	.loc 2 318 5
	lw	a0,-20(s0)
	call	vPortFree
	j	.L88
.L94:
	.loc 2 299 9
	nop
.L88:
	.loc 2 319 1
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
	.size	aos_loop_destroy, .-aos_loop_destroy
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/kernel.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/yloop.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/yloop_types.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/yloop.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/errno.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x920
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1a
	.4byte	.LASF86
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
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
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x1c
	.byte	0x4
	.uleb128 0xf
	.4byte	0x84
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x12
	.4byte	0x8b
	.uleb128 0x5
	.4byte	0x92
	.uleb128 0xf
	.4byte	0x97
	.uleb128 0x5
	.4byte	0xab
	.uleb128 0xf
	.4byte	0xa1
	.uleb128 0x1d
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x5a
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x5
	.4byte	0xc9
	.uleb128 0x13
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x8
	.byte	0x1
	.byte	0x1f
	.byte	0x10
	.4byte	0xfc
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x1
	.byte	0x20
	.byte	0x15
	.4byte	0xfc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x1
	.byte	0x21
	.byte	0x15
	.4byte	0xfc
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0xd4
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x22
	.byte	0x3
	.4byte	0xd4
	.uleb128 0x12
	.4byte	0x101
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x28
	.byte	0x1a
	.4byte	0x3e
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x6
	.byte	0x74
	.byte	0x10
	.4byte	0xc4
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x6
	.byte	0x76
	.byte	0x10
	.4byte	0x136
	.uleb128 0x5
	.4byte	0x13b
	.uleb128 0x13
	.4byte	0x14b
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x6
	.byte	0xce
	.byte	0xf
	.4byte	0x84
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x8
	.byte	0x7
	.byte	0x7
	.byte	0x8
	.4byte	0x18b
	.uleb128 0xb
	.string	"fd"
	.byte	0x7
	.byte	0x8
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x7
	.byte	0x9
	.byte	0xb
	.4byte	0x61
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x7
	.byte	0xa
	.byte	0xb
	.4byte	0x61
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	0x157
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x14
	.byte	0xc
	.byte	0xa
	.4byte	0x1c5
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x8
	.byte	0xb
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x8
	.byte	0xc
	.byte	0xb
	.4byte	0x84
	.byte	0x4
	.uleb128 0xb
	.string	"cb"
	.byte	0x8
	.byte	0xd
	.byte	0x15
	.4byte	0x12a
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x8
	.byte	0xe
	.byte	0x3
	.4byte	0x197
	.uleb128 0x14
	.byte	0x1c
	.byte	0x10
	.4byte	0x241
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x8
	.byte	0x11
	.byte	0xd
	.4byte	0x101
	.byte	0
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x8
	.byte	0x12
	.byte	0x14
	.4byte	0x18b
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x8
	.byte	0x13
	.byte	0x13
	.4byte	0x241
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x8
	.byte	0x14
	.byte	0x9
	.4byte	0x2b
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x8
	.byte	0x16
	.byte	0xe
	.4byte	0xb8
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x8
	.byte	0x17
	.byte	0xd
	.4byte	0xac
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x8
	.byte	0x18
	.byte	0xa
	.4byte	0x190
	.byte	0x17
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x8
	.byte	0x19
	.byte	0xa
	.4byte	0x190
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.4byte	0x1c5
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x8
	.byte	0x1a
	.byte	0x3
	.4byte	0x1d1
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x20
	.byte	0x2
	.byte	0x17
	.byte	0x10
	.4byte	0x29f
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x2
	.byte	0x18
	.byte	0xd
	.4byte	0x101
	.byte	0
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x2
	.byte	0x19
	.byte	0xf
	.4byte	0x45
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x2
	.byte	0x1a
	.byte	0xb
	.4byte	0x84
	.byte	0x10
	.uleb128 0xb
	.string	"cb"
	.byte	0x2
	.byte	0x1b
	.byte	0x10
	.4byte	0x11e
	.byte	0x14
	.uleb128 0xb
	.string	"ms"
	.byte	0x2
	.byte	0x1c
	.byte	0x9
	.4byte	0x2b
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x2
	.byte	0x1d
	.byte	0x3
	.4byte	0x252
	.uleb128 0x1e
	.4byte	.LASF87
	.byte	0x2
	.byte	0x20
	.byte	0xe
	.4byte	0x2bd
	.uleb128 0x5
	.byte	0x3
	.4byte	g_main_ctx
	.uleb128 0x5
	.4byte	0x246
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x2
	.byte	0x21
	.byte	0x17
	.4byte	0x112
	.uleb128 0x5
	.byte	0x3
	.4byte	g_loop_key
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x8
	.byte	0x25
	.4byte	0x2e5
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x9
	.byte	0x13
	.byte	0xd
	.4byte	0x2f1
	.uleb128 0x5
	.4byte	0x2b
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0xa
	.byte	0x6c
	.byte	0x5
	.4byte	0x2b
	.4byte	0x316
	.uleb128 0x1
	.4byte	0x18b
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x1ef
	.byte	0xf
	.4byte	0x45
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0xb
	.byte	0x20
	.byte	0x8
	.4byte	0x84
	.4byte	0x343
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0xb
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0x363
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0xa6
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0xa
	.byte	0x77
	.byte	0x5
	.4byte	0x2b
	.4byte	0x383
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0xc
	.byte	0xa4
	.4byte	0x394
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x8
	.byte	0x22
	.byte	0x5
	.4byte	0x2b
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x3c0
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0xc
	.byte	0xa3
	.byte	0x7
	.4byte	0x84
	.4byte	0x3d6
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0xd
	.byte	0xce
	.byte	0x5
	.4byte	0x2b
	.4byte	0x3ed
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x5
	.byte	0x71
	.byte	0x9
	.4byte	0x2b
	.4byte	0x403
	.uleb128 0x1
	.4byte	0x403
	.byte	0
	.uleb128 0x5
	.4byte	0x112
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x5
	.byte	0x82
	.byte	0x9
	.4byte	0x2b
	.4byte	0x423
	.uleb128 0x1
	.4byte	0x112
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x5
	.byte	0x89
	.byte	0xb
	.4byte	0x84
	.4byte	0x439
	.uleb128 0x1
	.4byte	0x112
	.byte	0
	.uleb128 0x17
	.4byte	.LASF60
	.2byte	0x126
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x478
	.uleb128 0xc
	.string	"ctx"
	.2byte	0x128
	.byte	0x12
	.4byte	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x21
	.4byte	.LASF59
	.byte	0x2
	.2byte	0x131
	.byte	0x1a
	.4byte	0x478
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x29f
	.uleb128 0x17
	.4byte	.LASF61
	.2byte	0x120
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a2
	.uleb128 0xc
	.string	"ctx"
	.2byte	0x122
	.byte	0x12
	.4byte	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0xe3
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x559
	.uleb128 0x3
	.string	"ctx"
	.byte	0xe5
	.byte	0x12
	.4byte	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x2
	.byte	0xe9
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x2
	.byte	0xea
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"i"
	.byte	0xeb
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"res"
	.byte	0xfd
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x52f
	.uleb128 0x3
	.string	"tmo"
	.byte	0xee
	.byte	0x1e
	.4byte	0x478
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"now"
	.byte	0xef
	.byte	0x17
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x11
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0xc
	.string	"tmo"
	.2byte	0x106
	.byte	0x1e
	.4byte	0x478
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"now"
	.2byte	0x107
	.byte	0x17
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0xcb
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b3
	.uleb128 0xa
	.string	"ms"
	.byte	0xcb
	.byte	0x24
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"cb"
	.byte	0xcb
	.byte	0x33
	.4byte	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x2
	.byte	0xcb
	.byte	0x3d
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"ctx"
	.byte	0xcd
	.byte	0x12
	.4byte	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"tmp"
	.byte	0xce
	.byte	0x16
	.4byte	0x478
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0xad
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x623
	.uleb128 0xa
	.string	"ms"
	.byte	0xad
	.byte	0x21
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x2
	.byte	0xad
	.byte	0x30
	.4byte	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x2
	.byte	0xad
	.byte	0x3e
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"ctx"
	.byte	0xb3
	.byte	0x12
	.4byte	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x2
	.byte	0xb4
	.byte	0x16
	.4byte	0x478
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.string	"tmp"
	.byte	0xbe
	.byte	0x16
	.4byte	0x478
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x92
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67f
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x2
	.byte	0x92
	.byte	0x22
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x2
	.byte	0x92
	.byte	0x48
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x2
	.byte	0x92
	.byte	0x66
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"ctx"
	.byte	0x94
	.byte	0x12
	.4byte	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"i"
	.byte	0x99
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x64
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70d
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x2
	.byte	0x64
	.byte	0x1a
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xa
	.string	"cb"
	.byte	0x64
	.byte	0x30
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x2
	.byte	0x64
	.byte	0x3a
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.string	"ctx"
	.byte	0x66
	.byte	0x12
	.4byte	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x2
	.byte	0x6b
	.byte	0x13
	.4byte	0x241
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x2
	.byte	0x6c
	.byte	0x14
	.4byte	0x18b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"cnt"
	.byte	0x6d
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x2
	.byte	0x79
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x48
	.byte	0xc
	.4byte	0x14b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x735
	.uleb128 0x3
	.string	"ctx"
	.byte	0x4a
	.byte	0x12
	.4byte	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	.LASF88
	.byte	0x2
	.byte	0x43
	.byte	0xc
	.4byte	0x14b
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x3d
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x782
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x2
	.byte	0x3d
	.byte	0x20
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"ctx"
	.byte	0x3f
	.byte	0x12
	.4byte	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x37
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b2
	.uleb128 0xa
	.string	"fd"
	.byte	0x37
	.byte	0x1f
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"ctx"
	.byte	0x39
	.byte	0x12
	.4byte	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.4byte	.LASF77
	.byte	0x2
	.byte	0x2d
	.byte	0x1c
	.4byte	0x2bd
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7db
	.uleb128 0x3
	.string	"ctx"
	.byte	0x2f
	.byte	0x12
	.4byte	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.4byte	.LASF89
	.byte	0x2
	.byte	0x28
	.byte	0x1c
	.4byte	0x2bd
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x2
	.byte	0x23
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x815
	.uleb128 0xa
	.string	"ctx"
	.byte	0x23
	.byte	0x2e
	.4byte	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.4byte	.LASF78
	.byte	0x1
	.byte	0x56
	.byte	0x13
	.4byte	0x2b
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83f
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x1
	.byte	0x56
	.byte	0x2e
	.4byte	0x83f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x10d
	.uleb128 0x19
	.4byte	.LASF81
	.byte	0x4b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x868
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x1
	.byte	0x4b
	.byte	0x28
	.4byte	0x868
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x101
	.uleb128 0x19
	.4byte	.LASF83
	.byte	0x42
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8af
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x1
	.byte	0x42
	.byte	0x27
	.4byte	0x868
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x44
	.byte	0xe
	.4byte	0x868
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x45
	.byte	0xe
	.4byte	0x868
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0x1
	.byte	0x3d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e3
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x1
	.byte	0x3d
	.byte	0x2c
	.4byte	0x868
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF85
	.byte	0x1
	.byte	0x3d
	.byte	0x3b
	.4byte	0x868
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.4byte	.LASF90
	.byte	0x1
	.byte	0x24
	.byte	0x14
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x1
	.byte	0x24
	.byte	0x29
	.4byte	0x868
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x1
	.byte	0x24
	.byte	0x38
	.4byte	0x868
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x1
	.byte	0x24
	.byte	0x47
	.4byte	0x868
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x8
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0xd
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
	.sleb128 6
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x24
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0
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
	.4byte	0xac
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0x7
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0x7
	.4byte	.LFB8
	.uleb128 .LFE8-.LFB8
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
.LASF49:
	.string	"aos_event_service_deinit"
.LASF22:
	.string	"aos_loop_t"
.LASF68:
	.string	"aos_post_delayed_action"
.LASF87:
	.string	"g_main_ctx"
.LASF38:
	.string	"terminate"
.LASF57:
	.string	"aos_task_getspecific"
.LASF70:
	.string	"new_sock"
.LASF7:
	.string	"short int"
.LASF13:
	.string	"size_t"
.LASF35:
	.string	"max_sock"
.LASF11:
	.string	"long long unsigned int"
.LASF36:
	.string	"reader_count"
.LASF90:
	.string	"__dlist_add"
.LASF56:
	.string	"aos_task_setspecific"
.LASF80:
	.string	"_set_context"
.LASF47:
	.string	"memcpy"
.LASF71:
	.string	"new_loop_pollfds"
.LASF79:
	.string	"head"
.LASF21:
	.string	"aos_poll_call_t"
.LASF14:
	.string	"uint8_t"
.LASF39:
	.string	"yloop_ctx_t"
.LASF33:
	.string	"readers"
.LASF44:
	.string	"aos_now_ms"
.LASF30:
	.string	"yloop_sock_t"
.LASF3:
	.string	"long long int"
.LASF31:
	.string	"timeouts"
.LASF84:
	.string	"dlist_add_tail"
.LASF88:
	.string	"aos_current_loop"
.LASF52:
	.string	"memset"
.LASF89:
	.string	"_get_context"
.LASF9:
	.string	"long int"
.LASF51:
	.string	"aos_event_service_init"
.LASF54:
	.string	"printf"
.LASF65:
	.string	"action"
.LASF20:
	.string	"aos_call_t"
.LASF26:
	.string	"revents"
.LASF69:
	.string	"aos_poll_read_fd"
.LASF85:
	.string	"queue"
.LASF29:
	.string	"private_data"
.LASF61:
	.string	"aos_loop_exit"
.LASF4:
	.string	"long double"
.LASF77:
	.string	"get_context"
.LASF46:
	.string	"memmove"
.LASF6:
	.string	"unsigned char"
.LASF40:
	.string	"yloop_timeout_s"
.LASF42:
	.string	"yloop_timeout_t"
.LASF18:
	.string	"dlist_t"
.LASF76:
	.string	"aos_loop_set_eventfd"
.LASF5:
	.string	"signed char"
.LASF55:
	.string	"aos_task_key_create"
.LASF23:
	.string	"dlist_s"
.LASF2:
	.string	"unsigned int"
.LASF58:
	.string	"g_loop_key"
.LASF15:
	.string	"uint16_t"
.LASF37:
	.string	"pending_terminate"
.LASF10:
	.string	"long unsigned int"
.LASF62:
	.string	"aos_loop_run"
.LASF67:
	.string	"aos_cancel_poll_read_fd"
.LASF48:
	.string	"aos_fcntl"
.LASF24:
	.string	"pollfd"
.LASF78:
	.string	"dlist_empty"
.LASF8:
	.string	"short unsigned int"
.LASF66:
	.string	"param"
.LASF72:
	.string	"status"
.LASF34:
	.string	"eventfd"
.LASF12:
	.string	"char"
.LASF73:
	.string	"aos_loop_init"
.LASF83:
	.string	"dlist_del"
.LASF86:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF27:
	.string	"_Bool"
.LASF45:
	.string	"aos_poll"
.LASF32:
	.string	"pollfds"
.LASF64:
	.string	"aos_cancel_delayed_action"
.LASF41:
	.string	"timeout_ms"
.LASF74:
	.string	"aos_loop_get_eventfd"
.LASF81:
	.string	"dlist_init"
.LASF50:
	.string	"vPortFree"
.LASF82:
	.string	"node"
.LASF63:
	.string	"delayed_ms"
.LASF60:
	.string	"aos_loop_destroy"
.LASF19:
	.string	"aos_task_key_t"
.LASF25:
	.string	"events"
.LASF75:
	.string	"loop"
.LASF16:
	.string	"prev"
.LASF53:
	.string	"pvPortMalloc"
.LASF59:
	.string	"timeout"
.LASF17:
	.string	"next"
.LASF43:
	.string	"__errno"
.LASF28:
	.string	"sock"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/src/yloop.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/yloop"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
