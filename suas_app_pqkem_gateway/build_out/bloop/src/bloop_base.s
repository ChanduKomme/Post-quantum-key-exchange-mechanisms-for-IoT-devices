	.file	"bloop_base.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bloop" "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/bloop/src/bloop_base.c"
	.section	.text.__utils_dlist_add,"ax",@progbits
	.align	1
	.type	__utils_dlist_add, @function
__utils_dlist_add:
.LFB9:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_list.h"
	.loc 1 286 1
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
	.loc 1 287 16
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,4(a5)
	.loc 1 288 16
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 290 16
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	sw	a4,4(a5)
	.loc 1 291 16
	lw	a5,-28(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 292 1
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
	.size	__utils_dlist_add, .-__utils_dlist_add
	.section	.text.utils_dlist_add,"ax",@progbits
	.align	1
	.type	utils_dlist_add, @function
utils_dlist_add:
.LFB10:
	.loc 1 306 1
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
	.loc 1 307 41
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 307 5
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	__utils_dlist_add
	.loc 1 308 1
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
	.size	utils_dlist_add, .-utils_dlist_add
	.section	.text.utils_dlist_del,"ax",@progbits
	.align	1
	.type	utils_dlist_del, @function
utils_dlist_del:
.LFB12:
	.loc 1 316 1
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
	.loc 1 317 20
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 318 20
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 320 16
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	.loc 1 321 16
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 322 1
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
.LFE12:
	.size	utils_dlist_del, .-utils_dlist_del
	.section	.text.utils_dlist_init,"ax",@progbits
	.align	1
	.type	utils_dlist_init, @function
utils_dlist_init:
.LFB13:
	.loc 1 325 1
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
	.loc 1 326 29
	lw	a5,-20(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 326 22
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 326 16
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 327 1
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
	.size	utils_dlist_init, .-utils_dlist_init
	.section	.text.INIT_UTILS_DLIST_HEAD,"ax",@progbits
	.align	1
	.type	INIT_UTILS_DLIST_HEAD, @function
INIT_UTILS_DLIST_HEAD:
.LFB14:
	.loc 1 330 1
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
	.loc 1 331 16
	lw	a5,-20(s0)
	lw	a4,-20(s0)
	sw	a4,4(a5)
	.loc 1 332 16
	lw	a5,-20(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 333 1
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
.LFE14:
	.size	INIT_UTILS_DLIST_HEAD, .-INIT_UTILS_DLIST_HEAD
	.section	.text.utils_dlist_empty,"ax",@progbits
	.align	1
	.type	utils_dlist_empty, @function
utils_dlist_empty:
.LFB15:
	.loc 1 336 1
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
	.loc 1 337 16
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 337 23
	lw	a4,-20(s0)
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 338 1
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
	.size	utils_dlist_empty, .-utils_dlist_empty
	.section	.rodata
	.align	2
.LC0:
	.string	"=== %d task inited\r\n"
	.section	.text.bloop_init,"ax",@progbits
	.align	1
	.globl	bloop_init
	.type	bloop_init, @function
bloop_init:
.LFB23:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/bloop/src/bloop_base.c"
	.loc 2 40 1
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
	.loc 2 43 5
	li	a2,1184
	li	a1,0
	lw	a0,-36(s0)
	call	memset
	.loc 2 44 12
	sw	zero,-20(s0)
	.loc 2 44 5
	j	.L9
.L10:
	.loc 2 45 9
	lw	a5,-20(s0)
	addi	a5,a5,34
	slli	a5,a5,3
	lw	a4,-36(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	utils_list_init
	.loc 2 44 64 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L9:
	.loc 2 44 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,31
	bleu	a4,a5,.L10
	.loc 2 47 5
	lw	a5,-36(s0)
	addi	a5,a5,1168
	mv	a0,a5
	call	INIT_UTILS_DLIST_HEAD
	.loc 2 48 5
	lw	a5,-36(s0)
	addi	a5,a5,1176
	mv	a0,a5
	call	INIT_UTILS_DLIST_HEAD
	.loc 2 49 5
	lw	a1,-20(s0)
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 2 51 12
	li	a5,0
	.loc 2 52 1
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
	.size	bloop_init, .-bloop_init
	.section	.text.bloop_handler_register,"ax",@progbits
	.align	1
	.globl	bloop_handler_register
	.type	bloop_handler_register, @function
bloop_handler_register:
.LFB24:
	.loc 2 55 1
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
	.loc 2 58 8
	lw	a5,-44(s0)
	blt	a5,zero,.L13
	.loc 2 58 22 discriminator 1
	lw	a4,-44(s0)
	li	a5,31
	ble	a4,a5,.L14
.L13:
	.loc 2 60 16
	li	a5,-1
	j	.L15
.L14:
	.loc 2 63 30
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	addi	a5,a5,260
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 63 8
	bne	a5,zero,.L16
	.loc 2 64 11
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	j	.L17
.L16:
	.loc 2 66 16
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	.loc 2 66 9
	j	.L18
.L21:
	.loc 2 67 38
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	addi	a5,a5,260
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 67 16
	beq	a5,zero,.L22
	.loc 2 66 39 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L18:
	.loc 2 66 30 discriminator 1
	lw	a4,-20(s0)
	li	a5,31
	ble	a4,a5,.L21
	j	.L20
.L22:
	.loc 2 68 17
	nop
.L20:
	.loc 2 71 12
	lw	a4,-20(s0)
	li	a5,32
	bne	a4,a5,.L17
	.loc 2 73 20
	li	a5,-1
	j	.L15
.L17:
	.loc 2 77 23
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	addi	a5,a5,260
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 2 78 12
	li	a5,0
.L15:
	.loc 2 79 1
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
.LFE24:
	.size	bloop_handler_register, .-bloop_handler_register
	.section	.text.bloop_handler_unregister,"ax",@progbits
	.align	1
	.globl	bloop_handler_unregister
	.type	bloop_handler_unregister, @function
bloop_handler_unregister:
.LFB25:
	.loc 2 82 1
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
	.loc 2 83 8
	lw	a5,-28(s0)
	blt	a5,zero,.L24
	.loc 2 83 22 discriminator 1
	lw	a4,-28(s0)
	li	a5,31
	ble	a4,a5,.L25
.L24:
	.loc 2 85 16
	li	a5,-1
	j	.L26
.L25:
	.loc 2 87 30
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	addi	a5,a5,260
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 87 8
	bne	a5,zero,.L27
	.loc 2 89 16
	li	a5,-2
	j	.L26
.L27:
	.loc 2 91 34
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	addi	a5,a5,260
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 91 8
	lw	a4,-24(s0)
	beq	a4,a5,.L28
	.loc 2 93 16
	li	a5,-3
	j	.L26
.L28:
	.loc 2 96 30
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	addi	a5,a5,260
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	.loc 2 97 12
	li	a5,0
.L26:
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
	.size	bloop_handler_unregister, .-bloop_handler_unregister
	.section	.text.bloop_timer_init,"ax",@progbits
	.align	1
	.globl	bloop_timer_init
	.type	bloop_timer_init, @function
bloop_timer_init:
.LFB26:
	.loc 2 101 1
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
	.loc 2 102 5
	li	a2,36
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 2 103 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	utils_dlist_init
	.loc 2 104 18
	lw	a5,-24(s0)
	beq	a5,zero,.L30
	.loc 2 104 18 is_stmt 0 discriminator 1
	li	a5,2
	j	.L31
.L30:
	.loc 2 104 18 discriminator 2
	li	a5,0
.L31:
	.loc 2 104 18 discriminator 4
	lw	a4,-20(s0)
	sb	a5,8(a4)
	.loc 2 105 1 is_stmt 1
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
	.size	bloop_timer_init, .-bloop_timer_init
	.section	.text.bloop_timer_configure,"ax",@progbits
	.align	1
	.globl	bloop_timer_configure
	.type	bloop_timer_configure, @function
bloop_timer_configure:
.LFB27:
	.loc 2 110 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	.loc 2 111 25
	call	xTaskGetTickCount
	mv	a4,a0
	.loc 2 111 23 discriminator 1
	lw	a5,-20(s0)
	sw	a4,12(a5)
	.loc 2 112 31
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 2 112 44
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 2 112 24
	lw	a5,-20(s0)
	sw	a4,16(a5)
	.loc 2 113 15
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,28(a5)
	.loc 2 114 16
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	sw	a4,32(a5)
	.loc 2 115 21
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,20(a5)
	.loc 2 116 25
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,24(a5)
	.loc 2 117 1
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
.LFE27:
	.size	bloop_timer_configure, .-bloop_timer_configure
	.section	.text.bloop_timer_repeat_enable,"ax",@progbits
	.align	1
	.globl	bloop_timer_repeat_enable
	.type	bloop_timer_repeat_enable, @function
bloop_timer_repeat_enable:
.LFB28:
	.loc 2 120 1
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
	.loc 2 121 10
	lw	a5,-20(s0)
	lbu	a5,8(a5)
	.loc 2 121 18
	ori	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,8(a5)
	.loc 2 122 1
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
.LFE28:
	.size	bloop_timer_repeat_enable, .-bloop_timer_repeat_enable
	.section	.text.bloop_timer_repeat_reconfigure,"ax",@progbits
	.align	1
	.globl	bloop_timer_repeat_reconfigure
	.type	bloop_timer_repeat_reconfigure, @function
bloop_timer_repeat_reconfigure:
.LFB29:
	.loc 2 125 1
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
	.loc 2 128 26
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 2 128 16
	mv	a4,a5
	.loc 2 128 52
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 2 128 14
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 129 25
	call	xTaskGetTickCount
	mv	a4,a0
	.loc 2 129 23 discriminator 1
	lw	a5,-36(s0)
	sw	a4,12(a5)
	.loc 2 130 31
	lw	a5,-36(s0)
	lw	a4,12(a5)
	.loc 2 130 44
	lw	a5,-20(s0)
	add	a4,a4,a5
	.loc 2 130 24
	lw	a5,-36(s0)
	sw	a4,16(a5)
	.loc 2 131 1
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
.LFE29:
	.size	bloop_timer_repeat_reconfigure, .-bloop_timer_repeat_reconfigure
	.section	.text.bloop_timer_register,"ax",@progbits
	.align	1
	.globl	bloop_timer_register
	.type	bloop_timer_register, @function
bloop_timer_register:
.LFB30:
	.loc 2 134 1
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
	.loc 2 135 9
	sw	zero,-20(s0)
	.loc 2 136 24
	sw	zero,-24(s0)
	.loc 2 136 37
	sw	zero,-28(s0)
	.loc 2 138 27
	lw	a5,-36(s0)
	addi	a5,a5,1168
	.loc 2 138 9
	mv	a0,a5
	call	utils_dlist_empty
	mv	a5,a0
	.loc 2 138 8 discriminator 1
	beq	a5,zero,.L36
	.loc 2 139 9
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	addi	a5,a5,1168
	mv	a1,a5
	mv	a0,a4
	call	utils_dlist_add
	.loc 2 161 1
	j	.L44
.L36:
	.loc 2 141 19
	lw	a5,-36(s0)
	lw	a5,1172(a5)
	sw	a5,-24(s0)
	.loc 2 141 9
	j	.L38
.L43:
	.loc 2 142 27
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 2 142 17
	mv	a4,a5
	.loc 2 142 52
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 2 142 41
	sub	a5,a4,a5
	.loc 2 142 16
	bgt	a5,zero,.L39
	.loc 2 144 20
	lw	a5,-28(s0)
	bne	a5,zero,.L40
	.loc 2 146 21
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	addi	a5,a5,1168
	mv	a1,a5
	mv	a0,a4
	call	utils_dlist_add
	j	.L41
.L40:
	.loc 2 148 21
	lw	a5,-40(s0)
	lw	a4,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	utils_dlist_add
.L41:
	.loc 2 150 23
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 151 17
	j	.L42
.L39:
	.loc 2 153 26
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	.loc 2 141 186 discriminator 2
	lw	a5,-24(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
.L38:
	.loc 2 141 138 discriminator 1
	lw	a4,-24(s0)
	.loc 2 141 160 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,1168
	.loc 2 141 156 discriminator 1
	bne	a4,a5,.L43
.L42:
	.loc 2 156 12
	lw	a5,-20(s0)
	bne	a5,zero,.L44
	.loc 2 158 13
	lw	a5,-40(s0)
	lw	a4,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	utils_dlist_add
.L44:
	.loc 2 161 1
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
.LFE30:
	.size	bloop_timer_register, .-bloop_timer_register
	.section	.text._timer_is_up_handle,"ax",@progbits
	.align	1
	.type	_timer_is_up_handle, @function
_timer_is_up_handle:
.LFB31:
	.loc 2 165 1
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
	.loc 2 166 35
	lw	a5,-24(s0)
	lw	a5,20(a5)
	.loc 2 166 5
	mv	a4,a5
	lw	a5,-24(s0)
	lw	a5,24(a5)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-20(s0)
	call	bloop_evt_set_sync
	.loc 2 168 14
	lw	a5,-24(s0)
	lw	a5,28(a5)
	.loc 2 168 8
	beq	a5,zero,.L46
	.loc 2 169 14
	lw	a5,-24(s0)
	lw	a5,28(a5)
	.loc 2 169 9
	lw	a4,-24(s0)
	lw	a4,32(a4)
	mv	a2,a4
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	jalr	a5
.LVL0:
.L46:
	.loc 2 172 5
	lw	a5,-24(s0)
	mv	a0,a5
	call	utils_dlist_del
	.loc 2 173 5
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	addi	a5,a5,1176
	mv	a1,a5
	mv	a0,a4
	call	utils_dlist_add
	.loc 2 174 1
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
	.size	_timer_is_up_handle, .-_timer_is_up_handle
	.section	.text._timer_dued_clean,"ax",@progbits
	.align	1
	.type	_timer_dued_clean, @function
_timer_dued_clean:
.LFB32:
	.loc 2 177 1
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
	.loc 2 181 16
	lw	a5,-36(s0)
	lw	a5,1180(a5)
	sw	a5,-24(s0)
	.loc 2 181 159
	lw	a5,-36(s0)
	lw	a5,1180(a5)
	.loc 2 181 200
	beq	a5,zero,.L48
	.loc 2 181 187 discriminator 1
	lw	a5,-36(s0)
	lw	a5,1180(a5)
	.loc 2 181 138 discriminator 1
	lw	a5,4(a5)
	sw	a5,-20(s0)
	j	.L50
.L48:
	.loc 2 181 138 is_stmt 0 discriminator 2
	sw	zero,-20(s0)
	.loc 2 181 5 is_stmt 1
	j	.L50
.L55:
	.loc 2 182 9
	lw	a5,-24(s0)
	mv	a0,a5
	call	utils_dlist_del
	.loc 2 183 19
	lw	a5,-24(s0)
	lbu	a5,8(a5)
	.loc 2 183 27
	andi	a5,a5,2
	.loc 2 183 12
	beq	a5,zero,.L51
	.loc 2 185 13
	lw	a0,-24(s0)
	call	vPortFree
	j	.L52
.L51:
	.loc 2 186 26
	lw	a5,-24(s0)
	lbu	a5,8(a5)
	.loc 2 186 34
	andi	a5,a5,1
	.loc 2 186 19
	beq	a5,zero,.L52
	.loc 2 188 13
	lw	a0,-24(s0)
	call	bloop_timer_repeat_reconfigure
	.loc 2 189 13
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	bloop_timer_register
.L52:
	.loc 2 181 55
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 2 181 173
	lw	a5,-20(s0)
	beq	a5,zero,.L53
	.loc 2 181 155 discriminator 3
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	j	.L50
.L53:
	.loc 2 181 155 is_stmt 0 discriminator 4
	sw	zero,-20(s0)
.L50:
	.loc 2 181 6 is_stmt 1 discriminator 6
	lw	a4,-24(s0)
	.loc 2 181 29 discriminator 6
	lw	a5,-36(s0)
	addi	a5,a5,1176
	.loc 2 181 25 discriminator 6
	bne	a4,a5,.L55
	.loc 2 192 1
	nop
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
.LFE32:
	.size	_timer_dued_clean, .-_timer_dued_clean
	.section	.text._bloop_wait,"ax",@progbits
	.align	1
	.type	_bloop_wait, @function
_bloop_wait:
.LFB33:
	.loc 2 195 1
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
	.loc 2 196 24
	sw	zero,-20(s0)
.L57:
	.loc 2 203 5
	call	vTaskEnterCritical
	.loc 2 204 9
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 2 204 34
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 2 204 27
	or	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,8(a5)
	.loc 2 205 28
	lw	a5,-36(s0)
	sw	zero,4(a5)
	.loc 2 206 5
	call	vTaskExitCritical
	.loc 2 208 18
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 208 8
	bne	a5,zero,.L73
	.loc 2 209 31
	lw	a5,-36(s0)
	addi	a5,a5,1168
	.loc 2 209 13
	mv	a0,a5
	call	utils_dlist_empty
	mv	a5,a0
	.loc 2 209 12 discriminator 1
	beq	a5,zero,.L59
	.loc 2 211 13
	li	a1,-1
	li	a0,1
	call	ulTaskNotifyTake
	j	.L57
.L59:
	.loc 2 214 19
	lw	a5,-36(s0)
	lw	a5,1172(a5)
	sw	a5,-20(s0)
	.loc 2 215 35
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 2 215 25
	mv	s1,a5
	.loc 2 215 56
	call	xTaskGetTickCount
	mv	a5,a0
	.loc 2 215 23 discriminator 1
	sub	a5,s1,a5
	sw	a5,-28(s0)
	.loc 2 216 16
	lw	a5,-28(s0)
	ble	a5,zero,.L74
	.loc 2 217 17
	lw	a5,-28(s0)
	mv	a1,a5
	li	a0,1
	call	ulTaskNotifyTake
	.loc 2 223 9
	j	.L57
.L73:
	.loc 2 226 1
	nop
	j	.L58
.L74:
	.loc 2 220 17
	nop
.L58:
	.loc 2 227 28
	lw	a5,-36(s0)
	addi	a5,a5,1168
	.loc 2 227 10
	mv	a0,a5
	call	utils_dlist_empty
	mv	a5,a0
	.loc 2 227 8 discriminator 1
	bne	a5,zero,.L62
	.loc 2 228 20
	call	xTaskGetTickCount
	sw	a0,-32(s0)
	.loc 2 229 20
	lw	a5,-36(s0)
	lw	a5,1172(a5)
	sw	a5,-20(s0)
	.loc 2 229 165
	lw	a5,-36(s0)
	lw	a5,1172(a5)
	.loc 2 229 207
	beq	a5,zero,.L63
	.loc 2 229 194 discriminator 1
	lw	a5,-36(s0)
	lw	a5,1172(a5)
	.loc 2 229 143 discriminator 1
	lw	a5,4(a5)
	sw	a5,-24(s0)
	j	.L65
.L63:
	.loc 2 229 143 is_stmt 0 discriminator 2
	sw	zero,-24(s0)
	.loc 2 229 9 is_stmt 1
	j	.L65
.L71:
	.loc 2 230 17
	lw	a5,-32(s0)
	.loc 2 230 43
	lw	a4,-20(s0)
	lw	a4,16(a4)
	.loc 2 230 31
	sub	a5,a5,a4
	.loc 2 230 16
	blt	a5,zero,.L75
	.loc 2 232 17
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	_timer_is_up_handle
	.loc 2 229 60
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	.loc 2 229 178
	lw	a5,-24(s0)
	beq	a5,zero,.L69
	.loc 2 229 160 discriminator 3
	lw	a5,-24(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	j	.L65
.L69:
	.loc 2 229 160 is_stmt 0 discriminator 4
	sw	zero,-24(s0)
.L65:
	.loc 2 229 10 is_stmt 1 discriminator 6
	lw	a4,-20(s0)
	.loc 2 229 33 discriminator 6
	lw	a5,-36(s0)
	addi	a5,a5,1168
	.loc 2 229 29 discriminator 6
	bne	a4,a5,.L71
	j	.L68
.L75:
	.loc 2 235 17
	nop
.L68:
	.loc 2 238 9
	lw	a0,-36(s0)
	call	_timer_dued_clean
.L62:
	.loc 2 241 12
	li	a5,0
	.loc 2 242 1
	mv	a0,a5
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
.LFE33:
	.size	_bloop_wait, .-_bloop_wait
	.section	.text._evt_highest,"ax",@progbits
	.align	1
	.type	_evt_highest, @function
_evt_highest:
.LFB34:
	.loc 2 245 1
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
	.loc 2 246 35
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 246 17
	mv	a0,a5
	call	__clzsi2
	mv	a5,a0
	mv	a4,a5
	.loc 2 246 15 discriminator 1
	li	a5,31
	sub	a5,a5,a4
	.loc 2 247 1
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
	.size	_evt_highest, .-_evt_highest
	.section	.text._msg_highest,"ax",@progbits
	.align	1
	.type	_msg_highest, @function
_msg_highest:
.LFB35:
	.loc 2 250 1
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
	.loc 2 251 35
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 2 251 17
	mv	a0,a5
	call	__clzsi2
	mv	a5,a0
	mv	a4,a5
	.loc 2 251 15 discriminator 1
	li	a5,31
	sub	a5,a5,a4
	.loc 2 252 1
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
	.size	_msg_highest, .-_msg_highest
	.section	.rodata
	.align	2
.LC1:
	.string	"bloop_base.c"
	.align	2
.LC2:
	.string	"[ASSERT] [ERR] %s:%d\r\n"
	.section	.text._evt_handle,"ax",@progbits
	.align	1
	.type	_evt_handle, @function
_evt_handle:
.LFB36:
	.loc 2 255 1
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
	.loc 2 260 13
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	addi	a5,a5,260
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 2 261 13
	lw	a5,-20(s0)
	bne	a5,zero,.L81
	.loc 2 261 28 discriminator 1
	li	a2,261
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L82:
	.loc 2 261 91
	nop
	j	.L82
.L81:
	.loc 2 264 5
	call	vTaskEnterCritical
	.loc 2 265 28
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	addi	a5,a5,36
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 265 69
	lw	a3,-36(s0)
	lw	a5,-40(s0)
	addi	a5,a5,4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 2 265 42
	or	a4,a4,a5
	lw	a3,-36(s0)
	lw	a5,-40(s0)
	addi	a5,a5,36
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 2 266 43
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	addi	a5,a5,4
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	.loc 2 267 5
	call	vTaskExitCritical
	.loc 2 269 18
	call	bl_timer_now_us
	mv	a5,a0
	.loc 2 269 16 discriminator 1
	sw	a5,-24(s0)
	.loc 2 270 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 2 270 5
	lw	a4,-36(s0)
	addi	a2,a4,8
	lw	a4,-40(s0)
	addi	a4,a4,36
	slli	a4,a4,2
	lw	a3,-36(s0)
	add	a4,a3,a4
	mv	a3,a4
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	jalr	a5
.LVL1:
	.loc 2 272 15
	lw	a5,-40(s0)
	addi	a5,a5,33
	slli	a5,a5,4
	lw	a4,-36(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 2 273 37
	call	bl_timer_now_us
	mv	a5,a0
	.loc 2 273 32 discriminator 1
	mv	a4,a5
	.loc 2 273 55 discriminator 1
	lw	a5,-24(s0)
	sub	a5,a4,a5
	mv	a4,a5
	.loc 2 273 30 discriminator 1
	lw	a5,-28(s0)
	sw	a4,4(a5)
	.loc 2 274 14
	lw	a5,-28(s0)
	lw	a4,8(a5)
	.loc 2 274 45
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 2 274 33
	add	a4,a4,a5
	lw	a5,-28(s0)
	sw	a4,8(a5)
	.loc 2 275 18
	lw	a5,-28(s0)
	lw	a4,0(a5)
	.loc 2 275 40
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 2 275 8
	bgeu	a4,a5,.L83
	.loc 2 277 40
	lw	a5,-28(s0)
	lw	a4,4(a5)
	.loc 2 277 29
	lw	a5,-28(s0)
	sw	a4,0(a5)
.L83:
	.loc 2 279 14
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 2 279 31
	addi	a4,a5,1
	lw	a5,-28(s0)
	sw	a4,12(a5)
	.loc 2 280 5
	lw	a5,-40(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	bloop_evt_unset_sync
	.loc 2 281 1
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
.LFE36:
	.size	_evt_handle, .-_evt_handle
	.section	.text._msg_handle,"ax",@progbits
	.align	1
	.type	_msg_handle, @function
_msg_handle:
.LFB37:
	.loc 2 284 1
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
	.loc 2 291 29
	lw	a5,-40(s0)
	addi	a5,a5,34
	slli	a5,a5,3
	lw	a4,-36(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	utils_list_pop_front
	sw	a0,-20(s0)
	.loc 2 292 13
	lw	a5,-20(s0)
	bne	a5,zero,.L87
	.loc 2 292 24 discriminator 1
	li	a2,292
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L86:
	.loc 2 292 87
	nop
	j	.L86
.L87:
	.loc 2 307 1
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
.LFE37:
	.size	_msg_handle, .-_msg_handle
	.section	.text._bloop_handle_set,"ax",@progbits
	.align	1
	.type	_bloop_handle_set, @function
_bloop_handle_set:
.LFB38:
	.loc 2 310 1
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
	.loc 2 311 20
	call	xTaskGetCurrentTaskHandle
	mv	a4,a0
	.loc 2 311 18 discriminator 1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 2 312 1
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
.LFE38:
	.size	_bloop_handle_set, .-_bloop_handle_set
	.section	.text.bloop_wait_startup,"ax",@progbits
	.align	1
	.globl	bloop_wait_startup
	.type	bloop_wait_startup, @function
bloop_wait_startup:
.LFB39:
	.loc 2 315 1
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
	.loc 2 316 11
	j	.L90
.L91:
	.loc 2 317 9
	li	a0,1
	call	vTaskDelay
.L90:
	.loc 2 316 23
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 316 16
	beq	a5,zero,.L91
	.loc 2 319 1
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
.LFE39:
	.size	bloop_wait_startup, .-bloop_wait_startup
	.section	.text.bloop_run,"ax",@progbits
	.align	1
	.globl	bloop_run
	.type	bloop_run, @function
bloop_run:
.LFB40:
	.loc 2 322 1
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
	.loc 2 326 5
	lw	a0,-36(s0)
	call	_bloop_handle_set
	.loc 2 328 11
	j	.L93
.L96:
	.loc 2 330 23
	lw	a0,-36(s0)
	call	_evt_highest
	sw	a0,-20(s0)
	.loc 2 331 23
	lw	a0,-36(s0)
	call	_msg_highest
	sw	a0,-24(s0)
	.loc 2 332 12
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	blt	a4,a5,.L94
	.loc 2 332 40 discriminator 1
	lw	a5,-20(s0)
	blt	a5,zero,.L94
	.loc 2 334 13
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	_evt_handle
	j	.L93
.L94:
	.loc 2 335 19
	lw	a5,-24(s0)
	blt	a5,zero,.L93
	.loc 2 337 13
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	_msg_handle
.L93:
	.loc 2 328 17
	lw	a0,-36(s0)
	call	_bloop_wait
	mv	a5,a0
	.loc 2 328 14 discriminator 1
	beq	a5,zero,.L96
	.loc 2 341 12
	li	a5,0
	.loc 2 342 1
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
	.size	bloop_run, .-bloop_run
	.section	.text.bloop_evt_set_async,"ax",@progbits
	.align	1
	.globl	bloop_evt_set_async
	.type	bloop_evt_set_async, @function
bloop_evt_set_async:
.LFB41:
	.loc 2 345 1
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
	.loc 2 346 13
	lw	a4,-24(s0)
	li	a5,31
	bleu	a4,a5,.L99
	.loc 2 346 31 discriminator 1
	li	a2,346
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L100:
	.loc 2 346 94
	nop
	j	.L100
.L99:
	.loc 2 348 5
	call	vTaskEnterCritical
	.loc 2 349 9
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 2 349 34
	lw	a4,-24(s0)
	li	a3,1
	sll	a4,a3,a4
	.loc 2 349 28
	or	a4,a5,a4
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 2 350 29
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	addi	a5,a5,4
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 350 35
	lw	a5,-28(s0)
	or	a4,a4,a5
	lw	a3,-20(s0)
	lw	a5,-24(s0)
	addi	a5,a5,4
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 2 351 5
	call	vTaskExitCritical
	.loc 2 354 5
	lw	a5,-20(s0)
	lw	a5,0(a5)
	li	a3,0
	li	a2,2
	li	a1,0
	mv	a0,a5
	call	xTaskGenericNotify
	.loc 2 355 1
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
	.size	bloop_evt_set_async, .-bloop_evt_set_async
	.section	.text.bloop_evt_set_async_fromISR,"ax",@progbits
	.align	1
	.globl	bloop_evt_set_async_fromISR
	.type	bloop_evt_set_async_fromISR, @function
bloop_evt_set_async_fromISR:
.LFB42:
	.loc 2 358 1
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
	.loc 2 359 16
	sw	zero,-20(s0)
	.loc 2 361 13
	lw	a4,-40(s0)
	li	a5,31
	bleu	a4,a5,.L102
	.loc 2 361 31 discriminator 1
	li	a2,361
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L103:
	.loc 2 361 94
	nop
	j	.L103
.L102:
	.loc 2 363 9
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 2 363 34
	lw	a4,-40(s0)
	li	a3,1
	sll	a4,a3,a4
	.loc 2 363 28
	or	a4,a5,a4
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 2 364 29
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	addi	a5,a5,4
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 364 35
	lw	a5,-44(s0)
	or	a4,a4,a5
	lw	a3,-36(s0)
	lw	a5,-40(s0)
	addi	a5,a5,4
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 2 367 5
	lw	a5,-36(s0)
	lw	a5,0(a5)
	addi	a4,s0,-20
	mv	a1,a4
	mv	a0,a5
	call	vTaskNotifyGiveFromISR
	.loc 2 368 30
	lw	a4,-20(s0)
	.loc 2 368 8
	li	a5,1
	bne	a4,a5,.L105
	.loc 2 369 13
	lw	a5,-20(s0)
	.loc 2 369 11
	beq	a5,zero,.L105
	.loc 2 369 40 discriminator 1
	call	vTaskSwitchContext
.L105:
	.loc 2 371 1
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
.LFE42:
	.size	bloop_evt_set_async_fromISR, .-bloop_evt_set_async_fromISR
	.section	.text.bloop_evt_set_sync,"ax",@progbits
	.align	1
	.globl	bloop_evt_set_sync
	.type	bloop_evt_set_sync, @function
bloop_evt_set_sync:
.LFB43:
	.loc 2 374 1
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
	.loc 2 375 13
	lw	a4,-24(s0)
	li	a5,31
	bleu	a4,a5,.L107
	.loc 2 375 31 discriminator 1
	li	a2,375
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L108:
	.loc 2 375 94
	nop
	j	.L108
.L107:
	.loc 2 377 9
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 377 33
	lw	a4,-24(s0)
	li	a3,1
	sll	a4,a3,a4
	.loc 2 377 27
	or	a4,a5,a4
	lw	a5,-20(s0)
	sw	a4,8(a5)
	.loc 2 378 29
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	addi	a5,a5,4
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 378 35
	lw	a5,-28(s0)
	or	a4,a4,a5
	lw	a3,-20(s0)
	lw	a5,-24(s0)
	addi	a5,a5,4
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 2 379 1
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
.LFE43:
	.size	bloop_evt_set_sync, .-bloop_evt_set_sync
	.section	.text.bloop_evt_unset_sync,"ax",@progbits
	.align	1
	.globl	bloop_evt_unset_sync
	.type	bloop_evt_unset_sync, @function
bloop_evt_unset_sync:
.LFB44:
	.loc 2 382 1
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
	.loc 2 383 13
	lw	a4,-24(s0)
	li	a5,31
	bleu	a4,a5,.L110
	.loc 2 383 31 discriminator 1
	li	a2,383
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L111:
	.loc 2 383 94
	nop
	j	.L111
.L110:
	.loc 2 385 9
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 385 35
	lw	a4,-24(s0)
	li	a3,1
	sll	a4,a3,a4
	.loc 2 385 31
	not	a4,a4
	.loc 2 385 27
	and	a4,a5,a4
	lw	a5,-20(s0)
	sw	a4,8(a5)
	.loc 2 386 1
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
.LFE44:
	.size	bloop_evt_unset_sync, .-bloop_evt_unset_sync
	.section	.rodata
	.align	2
.LC3:
	.string	"      evt handler %p,"
	.align	2
.LC4:
	.string	" msg handler %p,"
	.align	2
.LC5:
	.string	" trigged cnt %u,"
	.align	2
.LC6:
	.string	" bitmap async %lx sync %lx,"
	.align	2
.LC7:
	.string	" time consumed %dus acc %dms, max %uus\r\n"
	.section	.text._dump_task_handler,"ax",@progbits
	.align	1
	.type	_dump_task_handler, @function
_dump_task_handler:
.LFB45:
	.loc 2 392 1
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
	.loc 2 393 44
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 2 393 5
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	.loc 2 394 39
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 394 5
	mv	a1,a5
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
	.loc 2 395 5
	lw	a5,-24(s0)
	lw	a5,12(a5)
	mv	a1,a5
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	printf
	.loc 2 396 5
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
	.loc 2 397 5
	lw	a5,-24(s0)
	lw	a1,4(a5)
	.loc 2 399 18
	lw	a5,-24(s0)
	lw	a4,8(a5)
	.loc 2 397 5
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a4,a5,6
	lw	a5,-24(s0)
	lw	a5,0(a5)
	mv	a3,a5
	mv	a2,a4
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
	.loc 2 402 1
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
.LFE45:
	.size	_dump_task_handler, .-_dump_task_handler
	.section	.rodata
	.align	2
.LC8:
	.string	"--->>> timer list:\r\n"
	.align	2
.LC9:
	.string	"    timer[%02d]: %u(diff %d)ms, \t\t task idx %02d, evt map %08lx, ptr %p\r\n"
	.section	.text._dump_timer_dlist,"ax",@progbits
	.align	1
	.type	_dump_timer_dlist, @function
_dump_timer_dlist:
.LFB46:
	.loc 2 405 1
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
	.loc 2 408 9
	sw	zero,-24(s0)
	.loc 2 410 16
	call	xTaskGetTickCount
	sw	a0,-28(s0)
	.loc 2 411 5
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	puts
	.loc 2 412 15
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 2 412 5
	j	.L114
.L115:
	.loc 2 413 9
	lw	a5,-20(s0)
	lw	a2,16(a5)
	.loc 2 416 17
	lw	a5,-28(s0)
	.loc 2 416 42
	lw	a4,-20(s0)
	lw	a4,16(a4)
	.loc 2 413 9
	sub	a3,a5,a4
	lw	a5,-20(s0)
	lw	a4,20(a5)
	lw	a5,-20(s0)
	lw	a1,24(a5)
	lw	a5,-20(s0)
	lw	a5,28(a5)
	mv	a6,a5
	mv	a5,a1
	lw	a1,-24(s0)
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	printf
	.loc 2 421 14
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 2 412 156 discriminator 3
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L114:
	.loc 2 412 121 discriminator 1
	lw	a5,-20(s0)
	.loc 2 412 139 discriminator 1
	lw	a4,-36(s0)
	bne	a4,a5,.L115
	.loc 2 423 1
	nop
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
	.size	_dump_timer_dlist, .-_dump_timer_dlist
	.section	.rodata
	.align	2
.LC10:
	.string	"====== bloop dump ======\r\n"
	.align	2
.LC11:
	.string	"  bitmap_evt %lx\r\n"
	.align	2
.LC12:
	.string	"  bitmap_msg %lx\r\n"
	.align	2
.LC13:
	.string	"  %d task:\r\n"
	.align	2
.LC14:
	.string	"empty"
	.align	2
.LC15:
	.string	"    task[%02d] : %s\r\n"
	.section	.text.bloop_status_dump,"ax",@progbits
	.align	1
	.globl	bloop_status_dump
	.type	bloop_status_dump, @function
bloop_status_dump:
.LFB47:
	.loc 2 426 1
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
	.loc 2 429 5
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	puts
	.loc 2 430 5
	lw	a5,-36(s0)
	lw	a5,8(a5)
	mv	a1,a5
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	printf
	.loc 2 431 5
	lw	a5,-36(s0)
	lw	a5,12(a5)
	mv	a1,a5
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	printf
	.loc 2 432 5
	lw	a5,-36(s0)
	addi	a5,a5,1168
	mv	a0,a5
	call	_dump_timer_dlist
	.loc 2 433 5
	li	a1,32
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
	.loc 2 434 12
	li	a5,31
	sw	a5,-20(s0)
	.loc 2 434 5
	j	.L117
.L121:
	.loc 2 437 31
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	addi	a5,a5,260
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 435 9
	beq	a5,zero,.L118
	.loc 2 437 51
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	addi	a5,a5,260
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 435 9 discriminator 1
	lw	a5,0(a5)
	j	.L119
.L118:
	.loc 2 435 9 is_stmt 0 discriminator 2
	lui	a5,%hi(.LC14)
	addi	a5,a5,%lo(.LC14)
.L119:
	.loc 2 435 9 discriminator 4
	mv	a2,a5
	lw	a1,-20(s0)
	lui	a5,%hi(.LC15)
	addi	a0,a5,%lo(.LC15)
	call	printf
	.loc 2 439 27 is_stmt 1
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	addi	a5,a5,260
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 439 12
	beq	a5,zero,.L120
	.loc 2 440 13
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	addi	a5,a5,260
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a0,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,33
	slli	a5,a5,4
	lw	a4,-36(s0)
	add	a1,a4,a5
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	addi	a5,a5,4
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a2,0(a5)
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	addi	a5,a5,36
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a3,a5
	call	_dump_task_handler
.L120:
	.loc 2 434 69 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L117:
	.loc 2 434 62 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L121
	.loc 2 448 12
	li	a5,0
	.loc 2 449 1
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
	.size	bloop_status_dump, .-bloop_status_dump
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/bloop/include/bloop.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_timer.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xdae
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x28
	.4byte	.LASF140
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
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
	.uleb128 0x29
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2a
	.byte	0x4
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xf
	.4byte	0x86
	.uleb128 0x5
	.4byte	0x8d
	.uleb128 0x2b
	.4byte	0x92
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x47
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x3f
	.byte	0x11
	.4byte	0x9c
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0x41
	.byte	0x12
	.4byte	0xb4
	.uleb128 0xf
	.4byte	0xcc
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x6
	.byte	0x46
	.byte	0x25
	.4byte	0xe9
	.uleb128 0x5
	.4byte	0xee
	.uleb128 0x2c
	.4byte	.LASF141
	.uleb128 0x2d
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x6
	.byte	0x5b
	.byte	0x1
	.4byte	0x120
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x6
	.byte	0x61
	.byte	0x3
	.4byte	0xf3
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.byte	0x1
	.byte	0x26
	.4byte	0x146
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0x28
	.byte	0x1c
	.4byte	0x146
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x12c
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x8
	.byte	0x1
	.byte	0x2b
	.4byte	0x172
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2e
	.byte	0x1c
	.4byte	0x146
	.byte	0
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0x30
	.byte	0x1c
	.4byte	0x146
	.byte	0x4
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF31
	.byte	0x8
	.byte	0x1
	.2byte	0x118
	.byte	0x10
	.4byte	0x199
	.uleb128 0x1a
	.4byte	.LASF32
	.2byte	0x119
	.4byte	0x199
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF28
	.2byte	0x11a
	.4byte	0x199
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0x172
	.uleb128 0x2f
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x11b
	.byte	0x3
	.4byte	0x172
	.uleb128 0xf
	.4byte	0x19e
	.uleb128 0x30
	.byte	0x4
	.byte	0x7
	.byte	0x2e
	.byte	0x9
	.4byte	0x1ee
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x7
	.byte	0x2f
	.byte	0x15
	.4byte	0xa8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x7
	.byte	0x30
	.byte	0x15
	.4byte	0xa8
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x7
	.byte	0x31
	.byte	0x15
	.4byte	0xa8
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x7
	.byte	0x32
	.byte	0x15
	.4byte	0xa8
	.byte	0x3
	.byte	0
	.uleb128 0x31
	.byte	0x4
	.byte	0x7
	.byte	0x2c
	.byte	0x5
	.4byte	0x20e
	.uleb128 0x1b
	.4byte	.LASF38
	.byte	0x2d
	.byte	0xf
	.4byte	0x84
	.uleb128 0x1b
	.4byte	.LASF39
	.byte	0x33
	.byte	0xb
	.4byte	0x1b0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x18
	.byte	0x7
	.byte	0x2a
	.4byte	0x266
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x7
	.byte	0x2b
	.byte	0x1b
	.4byte	0x12c
	.byte	0
	.uleb128 0x10
	.string	"u"
	.byte	0x34
	.byte	0x7
	.4byte	0x1ee
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x7
	.byte	0x35
	.byte	0xb
	.4byte	0x84
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x7
	.byte	0x36
	.byte	0xb
	.4byte	0x84
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x7
	.byte	0x37
	.byte	0x12
	.4byte	0x6a
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x7
	.byte	0x38
	.byte	0x12
	.4byte	0x6a
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x10
	.byte	0x7
	.byte	0x3b
	.4byte	0x2a7
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x7
	.byte	0x3c
	.byte	0x12
	.4byte	0x6a
	.byte	0
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x7
	.byte	0x3d
	.byte	0x12
	.4byte	0x6a
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x7
	.byte	0x3e
	.byte	0x12
	.4byte	0x6a
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x7
	.byte	0x3f
	.byte	0x12
	.4byte	0x6a
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0xc
	.byte	0x7
	.byte	0x42
	.4byte	0x2da
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x7
	.byte	0x43
	.byte	0x11
	.4byte	0x92
	.byte	0
	.uleb128 0x10
	.string	"evt"
	.byte	0x44
	.byte	0xb
	.4byte	0x3aa
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x7
	.byte	0x45
	.byte	0xb
	.4byte	0x3cd
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	0x2a7
	.uleb128 0x1c
	.4byte	0x63
	.4byte	0x2fd
	.uleb128 0x2
	.4byte	0x2fd
	.uleb128 0x2
	.4byte	0x3a0
	.uleb128 0x2
	.4byte	0x3a5
	.uleb128 0x2
	.4byte	0x3a5
	.byte	0
	.uleb128 0x5
	.4byte	0x302
	.uleb128 0x32
	.4byte	.LASF53
	.2byte	0x4a0
	.byte	0x7
	.byte	0x4b
	.byte	0x8
	.4byte	0x3a0
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x7
	.byte	0x4c
	.byte	0x12
	.4byte	0xdd
	.byte	0
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x7
	.byte	0x4d
	.byte	0xe
	.4byte	0xb4
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x7
	.byte	0x4e
	.byte	0xe
	.4byte	0xb4
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x7
	.byte	0x4f
	.byte	0xe
	.4byte	0xb4
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x7
	.byte	0x50
	.byte	0xe
	.4byte	0x3d2
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x7
	.byte	0x51
	.byte	0xe
	.4byte	0x3d2
	.byte	0x90
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x52
	.byte	0x17
	.4byte	0x3e1
	.2byte	0x110
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x53
	.byte	0x27
	.4byte	0x3f0
	.2byte	0x210
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x54
	.byte	0x24
	.4byte	0x3ff
	.2byte	0x410
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x56
	.byte	0x13
	.4byte	0x19e
	.2byte	0x490
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x57
	.byte	0x13
	.4byte	0x19e
	.2byte	0x498
	.byte	0
	.uleb128 0x5
	.4byte	0x2da
	.uleb128 0x5
	.4byte	0xb4
	.uleb128 0x5
	.4byte	0x2df
	.uleb128 0x1c
	.4byte	0x63
	.4byte	0x3c8
	.uleb128 0x2
	.4byte	0x2fd
	.uleb128 0x2
	.4byte	0x3a0
	.uleb128 0x2
	.4byte	0x3c8
	.byte	0
	.uleb128 0x5
	.4byte	0x20e
	.uleb128 0x5
	.4byte	0x3af
	.uleb128 0x11
	.4byte	0xb4
	.4byte	0x3e1
	.uleb128 0x12
	.4byte	0x6a
	.byte	0
	.uleb128 0x11
	.4byte	0x14b
	.4byte	0x3f0
	.uleb128 0x12
	.4byte	0x6a
	.byte	0
	.uleb128 0x11
	.4byte	0x266
	.4byte	0x3ff
	.uleb128 0x12
	.4byte	0x6a
	.byte	0
	.uleb128 0x11
	.4byte	0x3a0
	.4byte	0x40e
	.uleb128 0x12
	.4byte	0x6a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x24
	.byte	0x7
	.byte	0x5a
	.4byte	0x480
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x7
	.byte	0x5b
	.byte	0x13
	.4byte	0x19e
	.byte	0
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x7
	.byte	0x62
	.byte	0xd
	.4byte	0xa8
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x7
	.byte	0x64
	.byte	0x12
	.4byte	0x6a
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x7
	.byte	0x65
	.byte	0x12
	.4byte	0x6a
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x7
	.byte	0x66
	.byte	0x9
	.4byte	0x63
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x7
	.byte	0x67
	.byte	0xe
	.4byte	0xb4
	.byte	0x18
	.uleb128 0x10
	.string	"cb"
	.byte	0x68
	.byte	0xc
	.4byte	0x49a
	.byte	0x1c
	.uleb128 0x10
	.string	"arg"
	.byte	0x69
	.byte	0xb
	.4byte	0x84
	.byte	0x20
	.byte	0
	.uleb128 0x1d
	.4byte	0x495
	.uleb128 0x2
	.4byte	0x2fd
	.uleb128 0x2
	.4byte	0x495
	.uleb128 0x2
	.4byte	0x84
	.byte	0
	.uleb128 0x5
	.4byte	0x40e
	.uleb128 0x5
	.4byte	0x480
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x8
	.byte	0xe3
	.byte	0x5
	.4byte	0x63
	.4byte	0x4b5
	.uleb128 0x2
	.4byte	0x92
	.byte	0
	.uleb128 0x33
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x97c
	.byte	0x7
	.uleb128 0x1e
	.4byte	.LASF74
	.2byte	0x84b
	.4byte	0x4d4
	.uleb128 0x2
	.4byte	0xdd
	.uleb128 0x2
	.4byte	0x4d4
	.byte	0
	.uleb128 0x5
	.4byte	0xc0
	.uleb128 0x1f
	.4byte	.LASF72
	.2byte	0x73e
	.byte	0xc
	.4byte	0xc0
	.4byte	0x4fe
	.uleb128 0x2
	.4byte	0xdd
	.uleb128 0x2
	.4byte	0xb4
	.uleb128 0x2
	.4byte	0x120
	.uleb128 0x2
	.4byte	0x3a5
	.byte	0
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x1
	.byte	0x6a
	.byte	0x18
	.4byte	0x146
	.4byte	0x514
	.uleb128 0x2
	.4byte	0x514
	.byte	0
	.uleb128 0x5
	.4byte	0x14b
	.uleb128 0x34
	.4byte	.LASF76
	.byte	0x9
	.byte	0x21
	.byte	0xa
	.4byte	0xb4
	.uleb128 0x1e
	.4byte	.LASF75
	.2byte	0x2f6
	.4byte	0x536
	.uleb128 0x2
	.4byte	0xd8
	.byte	0
	.uleb128 0x20
	.4byte	.LASF77
	.2byte	0x987
	.byte	0xe
	.4byte	0xdd
	.uleb128 0x21
	.4byte	.LASF78
	.byte	0xa
	.byte	0xa4
	.4byte	0x553
	.uleb128 0x2
	.4byte	0x84
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF79
	.2byte	0x890
	.byte	0xa
	.4byte	0xb4
	.4byte	0x56e
	.uleb128 0x2
	.4byte	0xc0
	.uleb128 0x2
	.4byte	0xcc
	.byte	0
	.uleb128 0x22
	.4byte	.LASF81
	.byte	0x67
	.uleb128 0x22
	.4byte	.LASF82
	.byte	0x66
	.uleb128 0x20
	.4byte	.LASF83
	.2byte	0x54c
	.byte	0xc
	.4byte	0xcc
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x8
	.byte	0xce
	.byte	0x5
	.4byte	0x63
	.4byte	0x59d
	.uleb128 0x2
	.4byte	0x97
	.uleb128 0x35
	.byte	0
	.uleb128 0x21
	.4byte	.LASF85
	.byte	0x1
	.byte	0x3e
	.4byte	0x5ae
	.uleb128 0x2
	.4byte	0x514
	.byte	0
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x5ce
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x63
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0x23
	.4byte	.LASF103
	.2byte	0x1a9
	.4byte	0x63
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x605
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x1a9
	.byte	0x28
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.string	"i"
	.2byte	0x1ab
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x194
	.byte	0xd
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65d
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x194
	.byte	0x2e
	.4byte	0x65d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x196
	.byte	0x18
	.4byte	0x495
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x197
	.byte	0x12
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x2
	.2byte	0x198
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	0x19e
	.uleb128 0xd
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x184
	.byte	0xd
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ba
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x184
	.byte	0x3f
	.4byte	0x3a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x2
	.2byte	0x185
	.byte	0x2c
	.4byte	0x6ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x186
	.byte	0x12
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x187
	.byte	0x12
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.4byte	0x266
	.uleb128 0xe
	.4byte	.LASF97
	.2byte	0x17d
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f4
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x17d
	.byte	0x2c
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"evt"
	.2byte	0x17d
	.byte	0x3f
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF98
	.2byte	0x175
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x739
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x175
	.byte	0x2a
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"evt"
	.2byte	0x175
	.byte	0x3d
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x2
	.2byte	0x175
	.byte	0x4b
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xe
	.4byte	.LASF100
	.2byte	0x165
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x78e
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x165
	.byte	0x33
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"evt"
	.2byte	0x165
	.byte	0x46
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x2
	.2byte	0x165
	.byte	0x54
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0x2
	.2byte	0x167
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF102
	.2byte	0x158
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d3
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x158
	.byte	0x2b
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"evt"
	.2byte	0x158
	.byte	0x3e
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x2
	.2byte	0x158
	.byte	0x4c
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x23
	.4byte	.LASF104
	.2byte	0x141
	.4byte	0x63
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x81d
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x141
	.byte	0x20
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0x2
	.2byte	0x143
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF106
	.byte	0x2
	.2byte	0x143
	.byte	0x16
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF107
	.2byte	0x13a
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x843
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x13a
	.byte	0x2a
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x135
	.byte	0xd
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x86b
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x135
	.byte	0x30
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x11b
	.byte	0x14
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b2
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x11b
	.byte	0x31
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0x2
	.2byte	0x11b
	.byte	0x3b
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"msg"
	.2byte	0x120
	.byte	0x16
	.4byte	0x3c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF110
	.byte	0xfe
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x913
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xfe
	.byte	0x31
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0xfe
	.byte	0x3b
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x100
	.byte	0x24
	.4byte	0x3a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x2
	.2byte	0x101
	.byte	0x28
	.4byte	0x6ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x102
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0xf9
	.byte	0x13
	.4byte	0x63
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x93b
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xf9
	.byte	0x31
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF113
	.byte	0xf4
	.byte	0x13
	.4byte	0x63
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x963
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xf4
	.byte	0x31
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0xc2
	.byte	0xc
	.4byte	0x63
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d7
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xc2
	.byte	0x29
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0xc4
	.byte	0x18
	.4byte	0x495
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"tmp"
	.byte	0xc5
	.byte	0x14
	.4byte	0x65d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0xc6
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0xc7
	.byte	0x12
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.4byte	.LASF117
	.byte	0xc9
	.4byte	.L57
	.uleb128 0x25
	.4byte	.LASF118
	.byte	0xe2
	.4byte	.L58
	.byte	0
	.uleb128 0x17
	.4byte	.LASF119
	.byte	0xb0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa16
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xb0
	.byte	0x37
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"tmp"
	.byte	0xb2
	.byte	0x14
	.4byte	0x65d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0xb3
	.byte	0x18
	.4byte	0x495
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF120
	.byte	0xa4
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa47
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xa4
	.byte	0x39
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0xa4
	.byte	0x52
	.4byte	0x495
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.4byte	.LASF121
	.byte	0x85
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa2
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0x85
	.byte	0x2c
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x85
	.byte	0x45
	.4byte	0x495
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x87
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x88
	.byte	0x18
	.4byte	0x495
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x88
	.byte	0x25
	.4byte	0x495
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x7c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad3
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x7c
	.byte	0x38
	.4byte	0x495
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x7e
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x36
	.4byte	.LASF126
	.byte	0x2
	.byte	0x77
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf8
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x77
	.byte	0x33
	.4byte	0x495
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF127
	.byte	0x6b
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb60
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x6b
	.byte	0x2f
	.4byte	0x495
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0x6b
	.byte	0x43
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"cb"
	.byte	0x6c
	.byte	0xf
	.4byte	0xb75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.string	"arg"
	.byte	0x6c
	.byte	0x56
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x6d
	.byte	0xd
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x6d
	.byte	0x20
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1d
	.4byte	0xb75
	.uleb128 0x2
	.4byte	0x2fd
	.uleb128 0x2
	.4byte	0x495
	.uleb128 0x2
	.4byte	0x84
	.byte	0
	.uleb128 0x5
	.4byte	0xb60
	.uleb128 0x16
	.4byte	.LASF128
	.byte	0x64
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbab
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x64
	.byte	0x2a
	.4byte	0x495
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF129
	.byte	0x64
	.byte	0x35
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.4byte	.LASF130
	.byte	0x51
	.4byte	0x63
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbee
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0x51
	.byte	0x2f
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF94
	.byte	0x51
	.byte	0x54
	.4byte	0x3a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x51
	.byte	0x61
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x27
	.4byte	.LASF131
	.byte	0x36
	.4byte	0x63
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3d
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0x36
	.byte	0x2d
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF94
	.byte	0x36
	.byte	0x52
	.4byte	0x3a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x36
	.byte	0x5f
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.string	"i"
	.byte	0x38
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.4byte	.LASF132
	.byte	0x2
	.byte	0x27
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc72
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0x27
	.byte	0x21
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"i"
	.byte	0x29
	.byte	0x12
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x38
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x14f
	.byte	0x13
	.4byte	0x63
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc9e
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x14f
	.byte	0x3a
	.4byte	0xc9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x1ab
	.uleb128 0x19
	.4byte	.LASF135
	.2byte	0x149
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc9
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x149
	.byte	0x39
	.4byte	0x65d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF136
	.2byte	0x144
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcef
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x144
	.byte	0x34
	.4byte	0x65d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF137
	.2byte	0x13b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd35
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x13b
	.byte	0x33
	.4byte	0x65d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x13d
	.byte	0x14
	.4byte	0x65d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x13e
	.byte	0x14
	.4byte	0x65d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x131
	.byte	0x14
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd6d
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x131
	.byte	0x33
	.4byte	0x65d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x131
	.byte	0x48
	.4byte	0x65d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x11d
	.byte	0x14
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x11d
	.byte	0x35
	.4byte	0x65d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x11d
	.byte	0x4a
	.4byte	0x65d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x11d
	.byte	0x5f
	.4byte	0x65d
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
	.uleb128 0x5
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 31
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0xd
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
	.sleb128 27
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.sleb128 6
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x17
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
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
	.4byte	.LFB9
	.uleb128 .LFE9-.LFB9
	.byte	0x7
	.4byte	.LFB10
	.uleb128 .LFE10-.LFB10
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"last"
.LASF96:
	.string	"bitmap_sync"
.LASF48:
	.string	"time_accumulated"
.LASF85:
	.string	"utils_list_init"
.LASF106:
	.string	"highest_msg"
.LASF141:
	.string	"tskTaskControlBlock"
.LASF67:
	.string	"flags"
.LASF62:
	.string	"handlers"
.LASF58:
	.string	"evt_type_map_async"
.LASF109:
	.string	"_msg_handle"
.LASF20:
	.string	"eNoAction"
.LASF10:
	.string	"unsigned int"
.LASF28:
	.string	"next"
.LASF65:
	.string	"loop_timer"
.LASF100:
	.string	"bloop_evt_set_async_fromISR"
.LASF134:
	.string	"head"
.LASF138:
	.string	"utils_dlist_add"
.LASF56:
	.string	"bitmap_evt_sync"
.LASF120:
	.string	"_timer_is_up_handle"
.LASF94:
	.string	"handler"
.LASF113:
	.string	"_evt_highest"
.LASF116:
	.string	"time2wait"
.LASF32:
	.string	"prev"
.LASF119:
	.string	"_timer_dued_clean"
.LASF122:
	.string	"found"
.LASF142:
	.string	"__utils_dlist_add"
.LASF60:
	.string	"list"
.LASF61:
	.string	"statistic"
.LASF16:
	.string	"uint32_t"
.LASF59:
	.string	"evt_type_map_sync"
.LASF37:
	.string	"id_src"
.LASF95:
	.string	"bitmap_async"
.LASF72:
	.string	"xTaskGenericNotify"
.LASF98:
	.string	"bloop_evt_set_sync"
.LASF111:
	.string	"time_start"
.LASF130:
	.string	"bloop_handler_unregister"
.LASF91:
	.string	"count"
.LASF23:
	.string	"eSetValueWithOverwrite"
.LASF9:
	.string	"long long unsigned int"
.LASF104:
	.string	"bloop_run"
.LASF112:
	.string	"_msg_highest"
.LASF105:
	.string	"highest_evt"
.LASF81:
	.string	"vTaskExitCritical"
.LASF87:
	.string	"loop"
.LASF25:
	.string	"eNotifyAction"
.LASF71:
	.string	"puts"
.LASF97:
	.string	"bloop_evt_unset_sync"
.LASF13:
	.string	"size_t"
.LASF22:
	.string	"eIncrement"
.LASF35:
	.string	"id_dst"
.LASF102:
	.string	"bloop_evt_set_async"
.LASF99:
	.string	"evt_map"
.LASF137:
	.string	"utils_dlist_del"
.LASF101:
	.string	"xHigherPriorityTaskWoken"
.LASF125:
	.string	"delay_ms"
.LASF54:
	.string	"looper"
.LASF75:
	.string	"vTaskDelay"
.LASF68:
	.string	"time_target"
.LASF131:
	.string	"bloop_handler_register"
.LASF107:
	.string	"bloop_wait_startup"
.LASF90:
	.string	"time_now"
.LASF12:
	.string	"char"
.LASF24:
	.string	"eSetValueWithoutOverwrite"
.LASF63:
	.string	"timer_dlist"
.LASF40:
	.string	"loop_msg"
.LASF123:
	.string	"node_pre"
.LASF47:
	.string	"time_max"
.LASF38:
	.string	"container"
.LASF129:
	.string	"use_auto_free"
.LASF15:
	.string	"uint8_t"
.LASF135:
	.string	"INIT_UTILS_DLIST_HEAD"
.LASF83:
	.string	"xTaskGetTickCount"
.LASF8:
	.string	"long long int"
.LASF84:
	.string	"printf"
.LASF17:
	.string	"BaseType_t"
.LASF64:
	.string	"timer_dued"
.LASF86:
	.string	"memset"
.LASF53:
	.string	"loop_ctx"
.LASF42:
	.string	"arg1"
.LASF43:
	.string	"arg2"
.LASF19:
	.string	"TaskHandle_t"
.LASF39:
	.string	"header"
.LASF132:
	.string	"bloop_init"
.LASF44:
	.string	"time_added"
.LASF70:
	.string	"evt_type_map"
.LASF127:
	.string	"bloop_timer_configure"
.LASF18:
	.string	"TickType_t"
.LASF66:
	.string	"dlist_item"
.LASF21:
	.string	"eSetBits"
.LASF11:
	.string	"long double"
.LASF80:
	.string	"vTaskSwitchContext"
.LASF46:
	.string	"loop_evt_handler_statistic"
.LASF45:
	.string	"time_consumed"
.LASF128:
	.string	"bloop_timer_init"
.LASF4:
	.string	"short int"
.LASF126:
	.string	"bloop_timer_repeat_enable"
.LASF114:
	.string	"_bloop_wait"
.LASF6:
	.string	"long int"
.LASF74:
	.string	"vTaskNotifyGiveFromISR"
.LASF117:
	.string	"copy_evt"
.LASF34:
	.string	"priority"
.LASF108:
	.string	"_bloop_handle_set"
.LASF88:
	.string	"dlist"
.LASF89:
	.string	"node"
.LASF79:
	.string	"ulTaskNotifyTake"
.LASF78:
	.string	"vPortFree"
.LASF51:
	.string	"name"
.LASF92:
	.string	"_dump_timer_dlist"
.LASF93:
	.string	"_dump_task_handler"
.LASF118:
	.string	"handle_timer"
.LASF110:
	.string	"_evt_handle"
.LASF136:
	.string	"utils_dlist_init"
.LASF7:
	.string	"long unsigned int"
.LASF27:
	.string	"utils_list"
.LASF139:
	.string	"queue"
.LASF14:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF29:
	.string	"first"
.LASF121:
	.string	"bloop_timer_register"
.LASF103:
	.string	"bloop_status_dump"
.LASF73:
	.string	"utils_list_pop_front"
.LASF57:
	.string	"bitmap_msg"
.LASF77:
	.string	"xTaskGetCurrentTaskHandle"
.LASF82:
	.string	"vTaskEnterCritical"
.LASF124:
	.string	"bloop_timer_repeat_reconfigure"
.LASF50:
	.string	"loop_evt_handler"
.LASF41:
	.string	"item"
.LASF36:
	.string	"id_msg"
.LASF49:
	.string	"count_triggered"
.LASF2:
	.string	"signed char"
.LASF133:
	.string	"utils_dlist_empty"
.LASF5:
	.string	"short unsigned int"
.LASF69:
	.string	"idx_task"
.LASF52:
	.string	"handle"
.LASF26:
	.string	"utils_list_hdr"
.LASF115:
	.string	"timer"
.LASF140:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF31:
	.string	"utils_dlist_s"
.LASF33:
	.string	"utils_dlist_t"
.LASF76:
	.string	"bl_timer_now_us"
.LASF55:
	.string	"bitmap_evt_async"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bloop"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/bloop/src/bloop_base.c"
	.globl	__clzsi2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
