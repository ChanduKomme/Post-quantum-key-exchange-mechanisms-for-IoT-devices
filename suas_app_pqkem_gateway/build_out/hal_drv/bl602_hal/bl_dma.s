	.file	"bl_dma.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_dma.c"
	.section	.text.utils_list_is_empty,"ax",@progbits
	.align	1
	.type	utils_list_is_empty, @function
utils_list_is_empty:
.LFB9:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_list.h"
	.loc 1 221 1
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
	.loc 1 222 24
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 222 17
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 223 1
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
	.size	utils_list_is_empty, .-utils_list_is_empty
	.section	.text.utils_list_pick,"ax",@progbits
	.align	1
	.type	utils_list_pick, @function
utils_list_pick:
.LFB10:
	.loc 1 246 1
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
	.loc 1 247 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 248 1
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
.LFE10:
	.size	utils_list_pick, .-utils_list_pick
	.section	.text.__utils_dlist_add,"ax",@progbits
	.align	1
	.type	__utils_dlist_add, @function
__utils_dlist_add:
.LFB13:
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
.LFE13:
	.size	__utils_dlist_add, .-__utils_dlist_add
	.section	.text.utils_dlist_add,"ax",@progbits
	.align	1
	.type	utils_dlist_add, @function
utils_dlist_add:
.LFB14:
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
.LFE14:
	.size	utils_dlist_add, .-utils_dlist_add
	.section	.text.utils_dlist_del,"ax",@progbits
	.align	1
	.type	utils_dlist_del, @function
utils_dlist_del:
.LFB16:
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
.LFE16:
	.size	utils_dlist_del, .-utils_dlist_del
	.section	.text.INIT_UTILS_DLIST_HEAD,"ax",@progbits
	.align	1
	.type	INIT_UTILS_DLIST_HEAD, @function
INIT_UTILS_DLIST_HEAD:
.LFB18:
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
.LFE18:
	.size	INIT_UTILS_DLIST_HEAD, .-INIT_UTILS_DLIST_HEAD
	.section	.sbss.dma_copy_list,"aw",@nobits
	.align	2
	.type	dma_copy_list, @object
	.size	dma_copy_list, 8
dma_copy_list:
	.zero	8
	.section	.text.bl_dma_int_clear,"ax",@progbits
	.align	1
	.globl	bl_dma_int_clear
	.type	bl_dma_int_clear, @function
bl_dma_int_clear:
.LFB27:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_dma.c"
	.loc 2 69 1
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
	.loc 2 73 14
	li	a5,1073790976
	sw	a5,-20(s0)
	.loc 2 75 44
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 2 75 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 76 62
	lw	a5,-36(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 2 76 57
	mv	a4,a5
	lw	a5,-24(s0)
	and	a5,a4,a5
	andi	a5,a5,255
	.loc 2 76 7
	beq	a5,zero,.L10
	.loc 2 78 48
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 2 78 16
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 79 16
	lw	a5,-24(s0)
	andi	a5,a5,255
	sw	a5,-28(s0)
	.loc 2 80 22
	lw	a5,-36(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 2 80 16
	lw	a5,-28(s0)
	or	a5,a5,a4
	sw	a5,-28(s0)
	.loc 2 81 29
	lw	a5,-24(s0)
	andi	a5,a5,-256
	.loc 2 81 16
	lw	a4,-28(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 82 39
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 2 82 12
	mv	a4,a5
	.loc 2 82 47
	lw	a5,-24(s0)
	sw	a5,0(a4)
.L10:
	.loc 2 85 44
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 2 85 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 86 62
	lw	a5,-36(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 2 86 57
	mv	a4,a5
	lw	a5,-24(s0)
	and	a5,a4,a5
	andi	a5,a5,255
	.loc 2 86 7
	beq	a5,zero,.L11
	.loc 2 88 48
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 2 88 16
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 89 16
	lw	a5,-24(s0)
	andi	a5,a5,255
	sw	a5,-28(s0)
	.loc 2 90 22
	lw	a5,-36(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 2 90 16
	lw	a5,-28(s0)
	or	a5,a5,a4
	sw	a5,-28(s0)
	.loc 2 91 29
	lw	a5,-24(s0)
	andi	a5,a5,-256
	.loc 2 91 16
	lw	a4,-28(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 92 39
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 2 92 12
	mv	a4,a5
	.loc 2 92 48
	lw	a5,-24(s0)
	sw	a5,0(a4)
.L11:
	.loc 2 95 12
	li	a5,0
	.loc 2 96 1
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
.LFE27:
	.size	bl_dma_int_clear, .-bl_dma_int_clear
	.section	.text.bl_dma_update_memsrc,"ax",@progbits
	.align	1
	.globl	bl_dma_update_memsrc
	.type	bl_dma_update_memsrc, @function
bl_dma_update_memsrc:
.LFB28:
	.loc 2 99 1
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
	sb	a5,-33(s0)
	.loc 2 102 58
	lbu	a5,-33(s0)
	slli	a5,a5,8
	mv	a4,a5
	.loc 2 102 14
	li	a5,1073790976
	addi	a5,a5,256
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 108 8
	lw	a5,-20(s0)
	.loc 2 108 43
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 2 110 44
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 2 110 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 111 25
	lw	a4,-24(s0)
	li	a5,-4096
	and	a5,a4,a5
	.loc 2 111 12
	lw	a4,-44(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 112 35
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 2 112 8
	mv	a4,a5
	.loc 2 112 43
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 2 113 1
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
.LFE28:
	.size	bl_dma_update_memsrc, .-bl_dma_update_memsrc
	.section	.text.bl_dma_update_memdst,"ax",@progbits
	.align	1
	.globl	bl_dma_update_memdst
	.type	bl_dma_update_memdst, @function
bl_dma_update_memdst:
.LFB29:
	.loc 2 116 1
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
	sb	a5,-33(s0)
	.loc 2 119 58
	lbu	a5,-33(s0)
	slli	a5,a5,8
	mv	a4,a5
	.loc 2 119 14
	li	a5,1073790976
	addi	a5,a5,256
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 125 35
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 2 125 8
	mv	a4,a5
	.loc 2 125 43
	lw	a5,-40(s0)
	sw	a5,0(a4)
	.loc 2 127 44
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 2 127 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 128 25
	lw	a4,-24(s0)
	li	a5,-4096
	and	a5,a4,a5
	.loc 2 128 12
	lw	a4,-44(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 129 35
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 2 129 8
	mv	a4,a5
	.loc 2 129 43
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 2 130 1
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
	.size	bl_dma_update_memdst, .-bl_dma_update_memdst
	.section	.text._dma_copy_trigger,"ax",@progbits
	.align	1
	.type	_dma_copy_trigger, @function
_dma_copy_trigger:
.LFB30:
	.loc 2 133 1
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
	.loc 2 135 41
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 2 135 5
	mv	a1,a5
	li	a0,0
	call	DMA_LLI_Update
	.loc 2 136 5
	li	a0,0
	call	DMA_Channel_Enable
	.loc 2 137 1
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
.LFE30:
	.size	_dma_copy_trigger, .-_dma_copy_trigger
	.section	.text.bl_dma_copy,"ax",@progbits
	.align	1
	.globl	bl_dma_copy
	.type	bl_dma_copy, @function
bl_dma_copy:
.LFB31:
	.loc 2 140 1
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
	.loc 2 141 5
	call	vTaskEnterCritical
	.loc 2 142 9
	lui	a5,%hi(dma_copy_list)
	addi	a0,a5,%lo(dma_copy_list)
	call	utils_list_is_empty
	mv	a5,a0
	.loc 2 142 8 discriminator 1
	beq	a5,zero,.L17
	.loc 2 143 9
	lw	a0,-20(s0)
	call	_dma_copy_trigger
.L17:
	.loc 2 145 5
	lw	a5,-20(s0)
	mv	a1,a5
	lui	a5,%hi(dma_copy_list)
	addi	a0,a5,%lo(dma_copy_list)
	call	utils_list_push_back
	.loc 2 146 5
	call	vTaskExitCritical
	.loc 2 147 1
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
	.size	bl_dma_copy, .-bl_dma_copy
	.section	.text.bl_dma_IRQHandler,"ax",@progbits
	.align	1
	.globl	bl_dma_IRQHandler
	.type	bl_dma_IRQHandler, @function
bl_dma_IRQHandler:
.LFB32:
	.loc 2 150 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 154 5
	li	a0,0
	call	bl_dma_int_clear
	.loc 2 155 34
	lui	a5,%hi(dma_copy_list)
	addi	a0,a5,%lo(dma_copy_list)
	call	utils_list_pop_front
	sw	a0,-20(s0)
	.loc 2 156 8
	lw	a5,-20(s0)
	bne	a5,zero,.L19
.L20:
	.loc 2 158 15
	nop
	j	.L20
.L19:
	.loc 2 161 14
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 2 161 8
	beq	a5,zero,.L21
	.loc 2 162 14
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 2 162 9
	lw	a4,-20(s0)
	lw	a4,8(a4)
	mv	a0,a4
	jalr	a5
.LVL0:
.L21:
	.loc 2 166 34
	lui	a5,%hi(dma_copy_list)
	addi	a0,a5,%lo(dma_copy_list)
	call	utils_list_pick
	sw	a0,-20(s0)
	.loc 2 167 8
	lw	a5,-20(s0)
	beq	a5,zero,.L23
	.loc 2 168 9
	lw	a0,-20(s0)
	call	_dma_copy_trigger
.L23:
	.loc 2 170 1
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
	.size	bl_dma_IRQHandler, .-bl_dma_IRQHandler
	.section	.text.bl_dma_mem_malloc,"ax",@progbits
	.align	1
	.globl	bl_dma_mem_malloc
	.type	bl_dma_mem_malloc, @function
bl_dma_mem_malloc:
.LFB33:
	.loc 2 173 1
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
	.loc 2 179 16
	li	a5,33636352
	sw	a5,-32(s0)
	.loc 2 180 14
	li	a5,33685504
	sw	a5,-36(s0)
	.loc 2 182 21
	call	xPortGetFreeHeapSize
	mv	a5,a0
	.loc 2 182 44 discriminator 1
	srli	a5,a5,10
	.loc 2 182 19 discriminator 1
	addi	a5,a5,1
	sw	a5,-40(s0)
	.loc 2 183 46
	lw	a5,-40(s0)
	slli	a5,a5,2
	.loc 2 183 19
	mv	a0,a5
	call	pvPortMalloc
	sw	a0,-44(s0)
	.loc 2 184 42
	lw	a5,-40(s0)
	slli	a5,a5,2
	.loc 2 184 5
	mv	a2,a5
	li	a1,0
	lw	a0,-44(s0)
	call	memset
	.loc 2 185 8
	lw	a5,-44(s0)
	bne	a5,zero,.L25
	.loc 2 186 15
	li	a5,0
	j	.L26
.L25:
	.loc 2 189 9
	sw	zero,-20(s0)
	.loc 2 190 12
	sw	zero,-24(s0)
.L31:
	.loc 2 192 15
	li	a0,1024
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 2 194 12
	lw	a5,-20(s0)
	beq	a5,zero,.L34
	.loc 2 198 27
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 2 198 20
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	.loc 2 198 33
	lw	a4,-20(s0)
	.loc 2 198 31
	sw	a4,0(a5)
	.loc 2 200 24
	lw	a4,-20(s0)
	.loc 2 200 13
	li	a5,268435456
	addi	a5,a5,-1
	and	a5,a4,a5
	.loc 2 200 12
	lw	a4,-32(s0)
	bgtu	a4,a5,.L31
	.loc 2 201 28
	lw	a4,-20(s0)
	.loc 2 201 17
	li	a5,268435456
	addi	a5,a5,-1
	and	a5,a4,a5
	.loc 2 201 16
	lw	a4,-36(s0)
	bltu	a4,a5,.L31
	.loc 2 202 23
	lw	a0,-52(s0)
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 2 203 17
	nop
	.loc 2 207 16
	sw	zero,-28(s0)
	.loc 2 207 5
	j	.L32
.L33:
	.loc 2 208 42
	lw	a5,-28(s0)
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 208 9
	mv	a0,a5
	call	vPortFree
	.loc 2 207 42 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L32:
	.loc 2 207 27 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L33
	.loc 2 211 1
	j	.L28
.L34:
	.loc 2 195 13
	nop
.L28:
	.loc 2 212 5
	lw	a0,-44(s0)
	call	vPortFree
	.loc 2 213 12
	lw	a5,-20(s0)
.L26:
	.loc 2 214 1
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
.LFE33:
	.size	bl_dma_mem_malloc, .-bl_dma_mem_malloc
	.section	.text.bl_dma_mem_free,"ax",@progbits
	.align	1
	.globl	bl_dma_mem_free
	.type	bl_dma_mem_free, @function
bl_dma_mem_free:
.LFB34:
	.loc 2 217 1
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
	.loc 2 218 5
	lw	a0,-20(s0)
	call	vPortFree
	.loc 2 219 1
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
.LFE34:
	.size	bl_dma_mem_free, .-bl_dma_mem_free
	.section	.text.bl_dma_int_process,"ax",@progbits
	.align	1
	.type	bl_dma_int_process, @function
bl_dma_int_process:
.LFB35:
	.loc 2 222 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 2 229 12
	sw	zero,-32(s0)
	.loc 2 232 15
	li	a5,1073790976
	addi	a5,a5,4
	.loc 2 232 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 233 19
	li	a5,1073790976
	addi	a5,a5,12
	.loc 2 233 16
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 2 234 5
	addi	a5,s0,-52
	mv	a1,a5
	li	a0,31
	call	bl_irq_ctx_get
	.loc 2 235 13
	sw	zero,-20(s0)
	.loc 2 235 5
	j	.L37
.L46:
	.loc 2 236 72
	lw	a5,-20(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 2 236 67
	mv	a4,a5
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 2 236 17
	andi	a5,a5,255
	sw	a5,-40(s0)
	.loc 2 237 80
	lw	a5,-20(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 2 237 75
	mv	a4,a5
	lw	a5,-36(s0)
	and	a5,a4,a5
	.loc 2 237 21
	andi	a5,a5,255
	sw	a5,-44(s0)
	.loc 2 239 11
	lw	a5,-40(s0)
	bne	a5,zero,.L38
	.loc 2 239 27 discriminator 1
	lw	a5,-44(s0)
	beq	a5,zero,.L39
.L38:
	.loc 2 240 16
	lw	a5,-40(s0)
	beq	a5,zero,.L40
	.loc 2 242 27
	li	a5,1073790976
	addi	a5,a5,8
	.loc 2 242 24
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 243 24
	lw	a5,-24(s0)
	andi	a5,a5,255
	sw	a5,-48(s0)
	.loc 2 244 30
	lw	a5,-20(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 2 244 24
	lw	a5,-48(s0)
	or	a5,a5,a4
	sw	a5,-48(s0)
	.loc 2 245 37
	lw	a5,-24(s0)
	andi	a5,a5,-256
	.loc 2 245 24
	lw	a4,-48(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 246 19
	li	a5,1073790976
	addi	a5,a5,8
	.loc 2 246 71
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L40:
	.loc 2 249 16
	lw	a5,-44(s0)
	beq	a5,zero,.L41
	.loc 2 251 27
	li	a5,1073790976
	addi	a5,a5,16
	.loc 2 251 24
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 252 24
	lw	a5,-24(s0)
	andi	a5,a5,255
	sw	a5,-48(s0)
	.loc 2 253 30
	lw	a5,-20(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 2 253 24
	lw	a5,-48(s0)
	or	a5,a5,a4
	sw	a5,-48(s0)
	.loc 2 254 37
	lw	a5,-24(s0)
	andi	a5,a5,-256
	.loc 2 254 24
	lw	a4,-48(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 255 19
	li	a5,1073790976
	addi	a5,a5,16
	.loc 2 255 72
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L41:
	.loc 2 258 64
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 258 23
	lw	a5,4(a5)
	sw	a5,-28(s0)
	.loc 2 258 13
	j	.L42
.L45:
	.loc 2 259 31
	lw	a5,-28(s0)
	lw	a5,8(a5)
	.loc 2 259 20
	lw	a4,-20(s0)
	bne	a4,a5,.L43
	.loc 2 260 29
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 2 260 24
	beq	a5,zero,.L44
	.loc 2 260 49 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L44
	.loc 2 261 54
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 2 261 33
	sw	a5,-32(s0)
	.loc 2 262 25
	lw	a5,-32(s0)
	jalr	a5
.LVL1:
.L44:
	.loc 2 265 29
	lw	a5,-28(s0)
	lw	a5,16(a5)
	.loc 2 265 24
	beq	a5,zero,.L43
	.loc 2 265 53 discriminator 1
	lw	a5,-44(s0)
	beq	a5,zero,.L43
	.loc 2 266 54
	lw	a5,-28(s0)
	lw	a5,16(a5)
	.loc 2 266 33
	sw	a5,-32(s0)
	.loc 2 267 25
	lw	a5,-32(s0)
	jalr	a5
.LVL2:
.L43:
	.loc 2 258 182 discriminator 2
	lw	a5,-28(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
.L42:
	.loc 2 258 136 discriminator 1
	lw	a4,-28(s0)
	.loc 2 258 164 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 258 154 discriminator 1
	bne	a4,a5,.L45
.L39:
	.loc 2 235 37 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L37:
	.loc 2 235 21 discriminator 1
	lw	a4,-20(s0)
	li	a5,3
	ble	a4,a5,.L46
	.loc 2 274 5
	nop
	.loc 2 275 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	bl_dma_int_process, .-bl_dma_int_process
	.section	.text.bl_dma_irq_register,"ax",@progbits
	.align	1
	.globl	bl_dma_irq_register
	.type	bl_dma_irq_register, @function
bl_dma_irq_register:
.LFB36:
	.loc 2 278 1
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
	.loc 2 283 8
	lw	a4,-36(s0)
	li	a5,4
	bgt	a4,a5,.L49
	.loc 2 283 31 discriminator 1
	lw	a5,-36(s0)
	blt	a5,zero,.L49
	.loc 2 283 47 discriminator 2
	lw	a5,-40(s0)
	bne	a5,zero,.L50
.L49:
	.loc 2 286 16
	li	a5,-1
	j	.L55
.L50:
	.loc 2 289 5
	addi	a5,s0,-28
	mv	a1,a5
	li	a0,31
	call	bl_irq_ctx_get
	.loc 2 290 56
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 2 290 15
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 2 290 5
	j	.L52
.L54:
	.loc 2 291 28
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 291 12
	lw	a4,-36(s0)
	bne	a4,a5,.L53
	.loc 2 293 20
	li	a5,-1
	j	.L55
.L53:
	.loc 2 290 174 discriminator 2
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L52:
	.loc 2 290 128 discriminator 1
	lw	a4,-20(s0)
	.loc 2 290 156 discriminator 1
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 2 290 146 discriminator 1
	bne	a4,a5,.L54
	.loc 2 296 15
	li	a0,24
	call	pvPortMalloc
	sw	a0,-24(s0)
	.loc 2 300 22
	lw	a5,-24(s0)
	lw	a4,-36(s0)
	sw	a4,8(a5)
	.loc 2 301 25
	lw	a5,-24(s0)
	lw	a4,-40(s0)
	sw	a4,12(a5)
	.loc 2 302 29
	lw	a5,-24(s0)
	lw	a4,-44(s0)
	sw	a4,16(a5)
	.loc 2 303 18
	lw	a5,-24(s0)
	lw	a4,-48(s0)
	sw	a4,20(a5)
	.loc 2 304 5
	lw	a4,-24(s0)
	.loc 2 304 51
	lw	a5,-28(s0)
	.loc 2 304 5
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,a4
	call	utils_dlist_add
	.loc 2 306 12
	li	a5,-1
.L55:
	.loc 2 307 1
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
.LFE36:
	.size	bl_dma_irq_register, .-bl_dma_irq_register
	.section	.text.bl_dma_find_node_by_channel,"ax",@progbits
	.align	1
	.globl	bl_dma_find_node_by_channel
	.type	bl_dma_find_node_by_channel, @function
bl_dma_find_node_by_channel:
.LFB37:
	.loc 2 310 1
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
	.loc 2 314 5
	addi	a5,s0,-24
	mv	a1,a5
	li	a0,31
	call	bl_irq_ctx_get
	.loc 2 315 56
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 315 15
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 2 315 5
	j	.L57
.L60:
	.loc 2 316 17
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 316 12
	lw	a4,-36(s0)
	beq	a4,a5,.L64
	.loc 2 315 174 discriminator 2
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L57:
	.loc 2 315 128 discriminator 1
	lw	a4,-20(s0)
	.loc 2 315 156 discriminator 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 315 146 discriminator 1
	bne	a4,a5,.L60
	j	.L59
.L64:
	.loc 2 317 13
	nop
.L59:
	.loc 2 321 9
	lw	a4,-20(s0)
	.loc 2 321 38
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 321 8
	bne	a4,a5,.L61
	.loc 2 324 15
	li	a5,0
	j	.L63
.L61:
	.loc 2 327 12
	lw	a5,-20(s0)
.L63:
	.loc 2 328 1
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
	.size	bl_dma_find_node_by_channel, .-bl_dma_find_node_by_channel
	.section	.text.bl_dma_find_ctx_by_channel,"ax",@progbits
	.align	1
	.globl	bl_dma_find_ctx_by_channel
	.type	bl_dma_find_ctx_by_channel, @function
bl_dma_find_ctx_by_channel:
.LFB38:
	.loc 2 331 1
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
	.loc 2 335 12
	lw	a0,-36(s0)
	call	bl_dma_find_node_by_channel
	sw	a0,-20(s0)
	.loc 2 336 9
	lw	a5,-20(s0)
	lw	a5,20(a5)
	sw	a5,-24(s0)
	.loc 2 338 12
	lw	a5,-24(s0)
	.loc 2 339 1
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
.LFE38:
	.size	bl_dma_find_ctx_by_channel, .-bl_dma_find_ctx_by_channel
	.section	.text.bl_dma_irq_unregister,"ax",@progbits
	.align	1
	.globl	bl_dma_irq_unregister
	.type	bl_dma_irq_unregister, @function
bl_dma_irq_unregister:
.LFB39:
	.loc 2 342 1
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
	.loc 2 346 8
	lw	a4,-36(s0)
	li	a5,4
	bgt	a4,a5,.L68
	.loc 2 346 30 discriminator 1
	lw	a5,-36(s0)
	bge	a5,zero,.L69
.L68:
	.loc 2 349 16
	li	a5,-1
	j	.L76
.L69:
	.loc 2 352 5
	addi	a5,s0,-24
	mv	a1,a5
	li	a0,31
	call	bl_irq_ctx_get
	.loc 2 353 56
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 353 15
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 2 353 5
	j	.L71
.L74:
	.loc 2 354 28
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 354 12
	lw	a4,-36(s0)
	bne	a4,a5,.L72
	.loc 2 355 13
	lw	a5,-20(s0)
	mv	a0,a5
	call	utils_dlist_del
	.loc 2 356 13
	lw	a0,-20(s0)
	call	vPortFree
	.loc 2 357 13
	j	.L73
.L72:
	.loc 2 353 174 discriminator 2
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L71:
	.loc 2 353 128 discriminator 1
	lw	a4,-20(s0)
	.loc 2 353 156 discriminator 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 353 146 discriminator 1
	bne	a4,a5,.L74
.L73:
	.loc 2 361 9
	lw	a4,-20(s0)
	.loc 2 361 36
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 361 8
	bne	a4,a5,.L75
	.loc 2 363 16
	li	a5,-1
	j	.L76
.L75:
	.loc 2 366 12
	li	a5,0
.L76:
	.loc 2 367 1
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
.LFE39:
	.size	bl_dma_irq_unregister, .-bl_dma_irq_unregister
	.section	.text.bl_dma_init,"ax",@progbits
	.align	1
	.globl	bl_dma_init
	.type	bl_dma_init, @function
bl_dma_init:
.LFB40:
	.loc 2 370 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 373 19
	sb	zero,-17(s0)
	.loc 2 374 22
	sb	zero,-28(s0)
	sb	zero,-27(s0)
	sb	zero,-26(s0)
	.loc 2 380 5
	lui	a5,%hi(dma_copy_list)
	addi	a0,a5,%lo(dma_copy_list)
	call	utils_list_init
	.loc 2 382 14
	li	a0,4
	call	pvPortMalloc
	sw	a0,-24(s0)
	.loc 2 383 8
	lw	a5,-24(s0)
	beq	a5,zero,.L82
	.loc 2 389 24
	li	a0,8
	call	pvPortMalloc
	mv	a4,a0
	.loc 2 389 22 discriminator 1
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 2 390 15
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 390 8
	beq	a5,zero,.L83
	.loc 2 395 5
	lw	a5,-24(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	INIT_UTILS_DLIST_HEAD
	.loc 2 397 5
	call	DMA_Enable
	.loc 2 398 5
	lbu	a5,-17(s0)
	li	a2,1
	li	a1,2
	mv	a0,a5
	call	DMA_IntMask
	.loc 2 399 5
	lbu	a5,-17(s0)
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	DMA_IntMask
	.loc 2 400 5
	lbu	a5,-17(s0)
	li	a2,0
	li	a1,1
	mv	a0,a5
	call	DMA_IntMask
	.loc 2 401 5
	addi	a4,s0,-28
	lbu	a5,-17(s0)
	mv	a1,a4
	mv	a0,a5
	call	DMA_LLI_Init
	.loc 2 402 5
	lw	a2,-24(s0)
	lui	a5,%hi(bl_dma_int_process)
	addi	a1,a5,%lo(bl_dma_int_process)
	li	a0,31
	call	bl_irq_register_with_ctx
	.loc 2 403 5
	li	a3,0
	li	a2,0
	lui	a5,%hi(bl_dma_IRQHandler)
	addi	a1,a5,%lo(bl_dma_IRQHandler)
	li	a0,0
	call	bl_dma_irq_register
	.loc 2 404 5
	li	a0,31
	call	bl_irq_enable
	j	.L77
.L82:
	.loc 2 386 9
	nop
	j	.L77
.L83:
	.loc 2 393 9
	nop
.L77:
	.loc 2 405 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	bl_dma_init, .-bl_dma_init
	.section	.text._cb_cmd,"ax",@progbits
	.align	1
	.type	_cb_cmd, @function
_cb_cmd:
.LFB41:
	.loc 2 408 1
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
	.loc 2 411 11
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 413 16
	lw	a5,-20(s0)
	sw	zero,8(a5)
	.loc 2 414 1
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
.LFE41:
	.size	_cb_cmd, .-_cb_cmd
	.section	.text._dma_test_case1,"ax",@progbits
	.align	1
	.type	_dma_test_case1, @function
_dma_test_case1:
.LFB42:
	.loc 2 417 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 421 15
	li	a5,68
	sw	a5,-20(s0)
	.loc 2 423 13
	li	a0,28
	call	pvPortMalloc
	sw	a0,-24(s0)
	.loc 2 424 11
	lw	a5,-20(s0)
	mv	a0,a5
	call	pvPortMalloc
	sw	a0,-28(s0)
	.loc 2 425 11
	lw	a5,-20(s0)
	mv	a0,a5
	call	pvPortMalloc
	sw	a0,-32(s0)
	.loc 2 433 5
	li	a2,28
	li	a1,0
	lw	a0,-24(s0)
	call	memset
	.loc 2 434 5
	lw	a5,-20(s0)
	mv	a2,a5
	li	a1,1
	lw	a0,-28(s0)
	call	memset
	.loc 2 435 5
	lw	a5,-20(s0)
	mv	a2,a5
	li	a1,255
	lw	a0,-32(s0)
	call	memset
	.loc 2 436 18
	lw	a4,-28(s0)
	.loc 2 436 16
	lw	a5,-24(s0)
	sw	a4,12(a5)
	.loc 2 437 18
	lw	a4,-32(s0)
	.loc 2 437 16
	lw	a5,-24(s0)
	sw	a4,16(a5)
	.loc 2 438 17
	lw	a5,-24(s0)
	sw	zero,20(a5)
	.loc 2 439 40
	lw	a5,-20(s0)
	srai	a5,a5,2
	mv	a4,a5
	.loc 2 439 32
	li	a5,-1941327872
	or	a4,a4,a5
	.loc 2 439 17
	lw	a5,-24(s0)
	sw	a4,24(a5)
	.loc 2 440 15
	lw	a5,-24(s0)
	lui	a4,%hi(_cb_cmd)
	addi	a4,a4,%lo(_cb_cmd)
	sw	a4,4(a5)
	.loc 2 441 16
	lw	a5,-24(s0)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	.loc 2 443 5
	lw	a0,-24(s0)
	call	bl_dma_copy
	.loc 2 446 11
	j	.L86
.L87:
	.loc 2 447 9
	li	a0,2
	call	vTaskDelay
.L86:
	.loc 2 446 17
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 2 446 12
	bne	a5,zero,.L87
	.loc 2 450 27
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 2 450 5
	mv	a0,a5
	call	vPortFree
	.loc 2 451 27
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 2 451 5
	mv	a0,a5
	call	vPortFree
	.loc 2 452 5
	lw	a0,-24(s0)
	call	vPortFree
	.loc 2 453 1
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
.LFE42:
	.size	_dma_test_case1, .-_dma_test_case1
	.section	.text.bl_dma_test,"ax",@progbits
	.align	1
	.globl	bl_dma_test
	.type	bl_dma_test, @function
bl_dma_test:
.LFB43:
	.loc 2 456 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 457 5
	call	_dma_test_case1
	.loc 2 458 1
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
.LFE43:
	.size	bl_dma_test, .-bl_dma_test
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dma.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_dma.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_irq.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd06
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1e
	.4byte	.LASF199
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1f
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x11
	.4byte	0x63
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x20
	.byte	0x4
	.uleb128 0x5
	.4byte	0x90
	.uleb128 0x21
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0xb
	.4byte	0x32
	.byte	0x5
	.byte	0x41
	.byte	0x1
	.4byte	0x25b
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x35
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x36
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x37
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x39
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x3b
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x49
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x4b
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x4d
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x4f
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.4byte	0x32
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.4byte	0x274
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x6
	.byte	0x36
	.byte	0x2
	.4byte	0x25b
	.uleb128 0xb
	.4byte	0x32
	.byte	0x7
	.byte	0x52
	.byte	0xe
	.4byte	0x2a5
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x7
	.byte	0x57
	.byte	0x2
	.4byte	0x280
	.uleb128 0xb
	.4byte	0x32
	.byte	0x7
	.byte	0x66
	.byte	0xe
	.4byte	0x300
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x7
	.byte	0x72
	.byte	0x2
	.4byte	0x2b1
	.uleb128 0xb
	.4byte	0x32
	.byte	0x7
	.byte	0x77
	.byte	0xe
	.4byte	0x337
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x7
	.byte	0x7d
	.byte	0x2
	.4byte	0x30c
	.uleb128 0xb
	.4byte	0x32
	.byte	0x7
	.byte	0x82
	.byte	0xe
	.4byte	0x362
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x7
	.byte	0x86
	.byte	0x2
	.4byte	0x343
	.uleb128 0x22
	.byte	0x3
	.byte	0x7
	.byte	0xba
	.byte	0x9
	.4byte	0x39f
	.uleb128 0xc
	.string	"dir"
	.byte	0x7
	.byte	0xbb
	.byte	0x18
	.4byte	0x2a5
	.byte	0
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0x7
	.byte	0xbc
	.byte	0x19
	.4byte	0x300
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF116
	.byte	0x7
	.byte	0xbd
	.byte	0x19
	.4byte	0x300
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x7
	.byte	0xbe
	.byte	0x2
	.4byte	0x36e
	.uleb128 0x5
	.4byte	0x39f
	.uleb128 0x5
	.4byte	0x3b5
	.uleb128 0x23
	.4byte	0x3c0
	.uleb128 0x2
	.4byte	0x89
	.byte	0
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x8
	.byte	0x41
	.byte	0x12
	.4byte	0xa4
	.uleb128 0x11
	.4byte	0x3c0
	.uleb128 0xe
	.4byte	.LASF120
	.byte	0x4
	.byte	0x1
	.byte	0x26
	.4byte	0x3eb
	.uleb128 0x6
	.4byte	.LASF119
	.byte	0x1
	.byte	0x28
	.byte	0x1c
	.4byte	0x3eb
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x3d1
	.uleb128 0xe
	.4byte	.LASF121
	.byte	0x8
	.byte	0x1
	.byte	0x2b
	.4byte	0x417
	.uleb128 0x6
	.4byte	.LASF122
	.byte	0x1
	.byte	0x2e
	.byte	0x1c
	.4byte	0x3eb
	.byte	0
	.uleb128 0x6
	.4byte	.LASF123
	.byte	0x1
	.byte	0x30
	.byte	0x1c
	.4byte	0x3eb
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	0x3f0
	.uleb128 0x24
	.4byte	.LASF124
	.byte	0x8
	.byte	0x1
	.2byte	0x118
	.byte	0x10
	.4byte	0x443
	.uleb128 0x17
	.4byte	.LASF125
	.2byte	0x119
	.4byte	0x443
	.byte	0
	.uleb128 0x17
	.4byte	.LASF119
	.2byte	0x11a
	.4byte	0x443
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0x41c
	.uleb128 0x25
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x11b
	.byte	0x3
	.4byte	0x41c
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0x1c
	.byte	0x9
	.byte	0x39
	.4byte	0x4bc
	.uleb128 0x6
	.4byte	.LASF128
	.byte	0x9
	.byte	0x3a
	.byte	0x1b
	.4byte	0x3d1
	.byte	0
	.uleb128 0xc
	.string	"cb"
	.byte	0x9
	.byte	0x3b
	.byte	0xc
	.4byte	0x3b0
	.byte	0x4
	.uleb128 0xc
	.string	"arg"
	.byte	0x9
	.byte	0x3c
	.byte	0xb
	.4byte	0x89
	.byte	0x8
	.uleb128 0xc
	.string	"src"
	.byte	0x9
	.byte	0x3e
	.byte	0xe
	.4byte	0xa4
	.byte	0xc
	.uleb128 0xc
	.string	"dst"
	.byte	0x9
	.byte	0x3f
	.byte	0xe
	.4byte	0xa4
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF119
	.byte	0x9
	.byte	0x40
	.byte	0xe
	.4byte	0xa4
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF129
	.byte	0x9
	.byte	0x41
	.byte	0xe
	.4byte	0xa4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.4byte	.LASF130
	.byte	0x4
	.byte	0x2
	.byte	0x36
	.4byte	0x4d6
	.uleb128 0x6
	.4byte	.LASF131
	.byte	0x2
	.byte	0x37
	.byte	0x14
	.4byte	0x4d6
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x448
	.uleb128 0xe
	.4byte	.LASF132
	.byte	0x18
	.byte	0x2
	.byte	0x3a
	.4byte	0x529
	.uleb128 0x6
	.4byte	.LASF133
	.byte	0x2
	.byte	0x3b
	.byte	0x13
	.4byte	0x448
	.byte	0
	.uleb128 0x6
	.4byte	.LASF134
	.byte	0x2
	.byte	0x3c
	.byte	0x9
	.4byte	0x63
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF135
	.byte	0x2
	.byte	0x3d
	.byte	0xb
	.4byte	0x89
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF136
	.byte	0x2
	.byte	0x3e
	.byte	0xb
	.4byte	0x89
	.byte	0x10
	.uleb128 0xc
	.string	"ctx"
	.byte	0x2
	.byte	0x3f
	.byte	0xb
	.4byte	0x89
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF154
	.byte	0x42
	.byte	0x1a
	.4byte	0x3f0
	.uleb128 0x5
	.byte	0x3
	.4byte	dma_copy_list
	.uleb128 0xf
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x2f6
	.4byte	0x54c
	.uleb128 0x2
	.4byte	0x3cc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF138
	.byte	0xb
	.byte	0x20
	.4byte	0x55d
	.uleb128 0x2
	.4byte	0x6f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF139
	.byte	0xb
	.byte	0x31
	.4byte	0x578
	.uleb128 0x2
	.4byte	0x63
	.uleb128 0x2
	.4byte	0x89
	.uleb128 0x2
	.4byte	0x89
	.byte	0
	.uleb128 0xf
	.4byte	.LASF140
	.byte	0x7
	.2byte	0x142
	.4byte	0x58f
	.uleb128 0x2
	.4byte	0x98
	.uleb128 0x2
	.4byte	0x3ab
	.byte	0
	.uleb128 0xf
	.4byte	.LASF141
	.byte	0x7
	.2byte	0x144
	.4byte	0x5ab
	.uleb128 0x2
	.4byte	0x98
	.uleb128 0x2
	.4byte	0x362
	.uleb128 0x2
	.4byte	0x274
	.byte	0
	.uleb128 0x26
	.4byte	.LASF150
	.byte	0x7
	.2byte	0x139
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF142
	.byte	0x1
	.byte	0x3e
	.4byte	0x5c5
	.uleb128 0x2
	.4byte	0x5c5
	.byte	0
	.uleb128 0x5
	.4byte	0x3f0
	.uleb128 0xd
	.4byte	.LASF143
	.byte	0xb
	.byte	0x34
	.4byte	0x5e0
	.uleb128 0x2
	.4byte	0x63
	.uleb128 0x2
	.4byte	0x5e0
	.byte	0
	.uleb128 0x5
	.4byte	0x89
	.uleb128 0xd
	.4byte	.LASF144
	.byte	0xc
	.byte	0xa4
	.4byte	0x5f6
	.uleb128 0x2
	.4byte	0x89
	.byte	0
	.uleb128 0x14
	.4byte	.LASF145
	.byte	0xd
	.byte	0x21
	.byte	0x8
	.4byte	0x89
	.4byte	0x616
	.uleb128 0x2
	.4byte	0x89
	.uleb128 0x2
	.4byte	0x63
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x14
	.4byte	.LASF146
	.byte	0xc
	.byte	0xa3
	.byte	0x7
	.4byte	0x89
	.4byte	0x62c
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x27
	.4byte	.LASF200
	.byte	0xc
	.byte	0xa7
	.byte	0x8
	.4byte	0x76
	.uleb128 0x14
	.4byte	.LASF147
	.byte	0x1
	.byte	0x6a
	.byte	0x18
	.4byte	0x3eb
	.4byte	0x64e
	.uleb128 0x2
	.4byte	0x5c5
	.byte	0
	.uleb128 0xf
	.4byte	.LASF148
	.byte	0x7
	.2byte	0x140
	.4byte	0x660
	.uleb128 0x2
	.4byte	0x98
	.byte	0
	.uleb128 0xf
	.4byte	.LASF149
	.byte	0x7
	.2byte	0x143
	.4byte	0x677
	.uleb128 0x2
	.4byte	0x98
	.uleb128 0x2
	.4byte	0xa4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF151
	.byte	0x67
	.uleb128 0xd
	.4byte	.LASF152
	.byte	0x1
	.byte	0x55
	.4byte	0x693
	.uleb128 0x2
	.4byte	0x5c5
	.uleb128 0x2
	.4byte	0x3eb
	.byte	0
	.uleb128 0x18
	.4byte	.LASF153
	.byte	0x66
	.uleb128 0x28
	.4byte	.LASF201
	.byte	0x2
	.2byte	0x1c7
	.byte	0x6
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.4byte	.LASF156
	.byte	0x2
	.2byte	0x1a0
	.byte	0xd
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x702
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x1a2
	.byte	0x19
	.4byte	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"src"
	.2byte	0x1a3
	.byte	0xf
	.4byte	0x707
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"dst"
	.2byte	0x1a4
	.byte	0xf
	.4byte	0x707
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF155
	.byte	0x2
	.2byte	0x1a5
	.byte	0xf
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x455
	.uleb128 0x5
	.4byte	0xa4
	.uleb128 0x12
	.4byte	.LASF157
	.byte	0x2
	.2byte	0x197
	.byte	0xd
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x743
	.uleb128 0x1a
	.string	"arg"
	.2byte	0x197
	.byte	0x1b
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x199
	.byte	0x19
	.4byte	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x2
	.2byte	0x171
	.byte	0x6
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x78b
	.uleb128 0x4
	.4byte	.LASF158
	.byte	0x2
	.2byte	0x173
	.byte	0x15
	.4byte	0x78b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF159
	.byte	0x2
	.2byte	0x175
	.byte	0x13
	.4byte	0x337
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x4
	.4byte	.LASF160
	.byte	0x2
	.2byte	0x176
	.byte	0x16
	.4byte	0x39f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5
	.4byte	0x4bc
	.uleb128 0x13
	.4byte	.LASF162
	.2byte	0x155
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7db
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0x2
	.2byte	0x155
	.byte	0x1f
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF158
	.byte	0x2
	.2byte	0x157
	.byte	0x15
	.4byte	0x78b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF161
	.byte	0x2
	.2byte	0x158
	.byte	0x16
	.4byte	0x7db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x4db
	.uleb128 0x13
	.4byte	.LASF163
	.2byte	0x14a
	.byte	0x7
	.4byte	0x89
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82a
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0x2
	.2byte	0x14a
	.byte	0x26
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF161
	.byte	0x2
	.2byte	0x14c
	.byte	0x16
	.4byte	0x7db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"ctx"
	.2byte	0x14d
	.byte	0xb
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF164
	.2byte	0x135
	.byte	0x7
	.4byte	0x89
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x875
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0x2
	.2byte	0x135
	.byte	0x27
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF158
	.byte	0x2
	.2byte	0x137
	.byte	0x15
	.4byte	0x78b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF161
	.byte	0x2
	.2byte	0x138
	.byte	0x16
	.4byte	0x7db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF165
	.2byte	0x115
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ff
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0x2
	.2byte	0x115
	.byte	0x1d
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF135
	.byte	0x2
	.2byte	0x115
	.byte	0x2c
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF136
	.byte	0x2
	.2byte	0x115
	.byte	0x3e
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.string	"ctx"
	.2byte	0x115
	.byte	0x54
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF158
	.byte	0x2
	.2byte	0x117
	.byte	0x15
	.4byte	0x78b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF161
	.byte	0x2
	.2byte	0x118
	.byte	0x16
	.4byte	0x7db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF166
	.byte	0x2
	.2byte	0x119
	.byte	0x16
	.4byte	0x7db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF167
	.byte	0xdd
	.byte	0xd
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x992
	.uleb128 0x1c
	.string	"ch"
	.byte	0xdf
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF168
	.byte	0xe0
	.byte	0xe
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF169
	.byte	0xe1
	.byte	0xe
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF170
	.byte	0xe2
	.byte	0xe
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF161
	.byte	0xe3
	.byte	0x16
	.4byte	0x7db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF158
	.byte	0xe4
	.byte	0x15
	.4byte	0x78b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0xe5
	.byte	0xc
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF172
	.byte	0xe6
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF173
	.byte	0xe6
	.byte	0x12
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x16
	.4byte	.LASF175
	.byte	0xd8
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b5
	.uleb128 0xa
	.string	"ptr"
	.byte	0xd8
	.byte	0x1c
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF176
	.byte	0x2
	.byte	0xac
	.byte	0x7
	.4byte	0x89
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4d
	.uleb128 0x10
	.4byte	.LASF155
	.byte	0x2
	.byte	0xac
	.byte	0x22
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.string	"ptr"
	.byte	0xae
	.byte	0xb
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0xaf
	.byte	0xe
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0xaf
	.byte	0x16
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF179
	.byte	0xaf
	.byte	0x1d
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF180
	.byte	0xb0
	.byte	0xf
	.4byte	0x707
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF181
	.byte	0xb1
	.byte	0xe
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF182
	.byte	0xb1
	.byte	0x1a
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.4byte	.LASF202
	.byte	0x2
	.byte	0xd3
	.byte	0x1
	.4byte	.L28
	.byte	0
	.uleb128 0x16
	.4byte	.LASF183
	.byte	0x95
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa70
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0x97
	.byte	0x19
	.4byte	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF184
	.byte	0x8b
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa94
	.uleb128 0x10
	.4byte	.LASF122
	.byte	0x2
	.byte	0x8b
	.byte	0x26
	.4byte	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF185
	.byte	0x84
	.byte	0x14
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab9
	.uleb128 0x10
	.4byte	.LASF122
	.byte	0x2
	.byte	0x84
	.byte	0x3a
	.4byte	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF186
	.byte	0x73
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb13
	.uleb128 0xa
	.string	"ch"
	.byte	0x73
	.byte	0x23
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xa
	.string	"dst"
	.byte	0x73
	.byte	0x30
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"len"
	.byte	0x73
	.byte	0x3e
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF187
	.byte	0x75
	.byte	0xe
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF188
	.byte	0x77
	.byte	0xe
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF189
	.byte	0x62
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb6d
	.uleb128 0xa
	.string	"ch"
	.byte	0x62
	.byte	0x23
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xa
	.string	"src"
	.byte	0x62
	.byte	0x30
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"len"
	.byte	0x62
	.byte	0x3e
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF187
	.byte	0x64
	.byte	0xe
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF188
	.byte	0x66
	.byte	0xe
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF190
	.byte	0x2
	.byte	0x44
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbbf
	.uleb128 0xa
	.string	"ch"
	.byte	0x44
	.byte	0x1a
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF187
	.byte	0x46
	.byte	0xe
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF191
	.byte	0x47
	.byte	0xe
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF188
	.byte	0x49
	.byte	0xe
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x149
	.byte	0x14
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe7
	.uleb128 0x7
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x149
	.byte	0x39
	.4byte	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x13b
	.byte	0x14
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc2f
	.uleb128 0x7
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x13b
	.byte	0x33
	.4byte	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x13d
	.byte	0x14
	.4byte	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x13e
	.byte	0x14
	.4byte	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x131
	.byte	0x14
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc67
	.uleb128 0x7
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x131
	.byte	0x33
	.4byte	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x131
	.byte	0x48
	.4byte	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x11d
	.byte	0x14
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcaf
	.uleb128 0x7
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x11d
	.byte	0x35
	.4byte	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x11d
	.byte	0x4a
	.4byte	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x11d
	.byte	0x5f
	.4byte	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF203
	.byte	0x1
	.byte	0xf5
	.byte	0x26
	.4byte	0x3eb
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd9
	.uleb128 0x10
	.4byte	.LASF193
	.byte	0x1
	.byte	0xf5
	.byte	0x55
	.4byte	0xcde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x417
	.uleb128 0x11
	.4byte	0xcd9
	.uleb128 0x2e
	.4byte	.LASF198
	.byte	0x1
	.byte	0xdc
	.byte	0x13
	.4byte	0x63
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF193
	.byte	0x1
	.byte	0xdc
	.byte	0x46
	.4byte	0xcde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x4
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
	.uleb128 0x7
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
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2b
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xcc
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
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
	.4byte	.LFB13
	.uleb128 .LFE13-.LFB13
	.byte	0x7
	.4byte	.LFB14
	.uleb128 .LFE14-.LFB14
	.byte	0x7
	.4byte	.LFB16
	.uleb128 .LFE16-.LFB16
	.byte	0x7
	.4byte	.LFB18
	.uleb128 .LFE18-.LFB18
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF109:
	.string	"DMA_CH_MAX"
.LASF197:
	.string	"__utils_dlist_add"
.LASF24:
	.string	"SEC_BMX_ERR_IRQn"
.LASF148:
	.string	"DMA_Channel_Enable"
.LASF177:
	.string	"counts"
.LASF13:
	.string	"size_t"
.LASF119:
	.string	"next"
.LASF58:
	.string	"TIMER_WDT_IRQn"
.LASF22:
	.string	"L1C_BMX_ERR_IRQn"
.LASF125:
	.string	"prev"
.LASF95:
	.string	"DMA_REQ_UART1_RX"
.LASF164:
	.string	"bl_dma_find_node_by_channel"
.LASF96:
	.string	"DMA_REQ_UART1_TX"
.LASF9:
	.string	"long long unsigned int"
.LASF150:
	.string	"DMA_Enable"
.LASF143:
	.string	"bl_irq_ctx_get"
.LASF27:
	.string	"SDIO_IRQn"
.LASF202:
	.string	"__exit"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF170:
	.string	"interr_val"
.LASF127:
	.string	"bl_dma_item"
.LASF138:
	.string	"bl_irq_enable"
.LASF137:
	.string	"vTaskDelay"
.LASF18:
	.string	"MEXT_IRQn"
.LASF30:
	.string	"SEC_CDET_IRQn"
.LASF60:
	.string	"RESERVED11"
.LASF61:
	.string	"RESERVED12"
.LASF62:
	.string	"RESERVED13"
.LASF63:
	.string	"RESERVED14"
.LASF153:
	.string	"vTaskEnterCritical"
.LASF65:
	.string	"RESERVED16"
.LASF66:
	.string	"RESERVED17"
.LASF67:
	.string	"RESERVED18"
.LASF154:
	.string	"dma_copy_list"
.LASF151:
	.string	"vTaskExitCritical"
.LASF6:
	.string	"long int"
.LASF94:
	.string	"DMA_REQ_UART0_TX"
.LASF104:
	.string	"DMA_Periph_Req_Type"
.LASF82:
	.string	"MAC_PORT_TRG_IRQn"
.LASF64:
	.string	"GPIO_INT0_IRQn"
.LASF189:
	.string	"bl_dma_update_memsrc"
.LASF21:
	.string	"BMX_TO_IRQn"
.LASF196:
	.string	"queue"
.LASF135:
	.string	"tc_handler"
.LASF45:
	.string	"GPADC_DMA_IRQn"
.LASF178:
	.string	"piece"
.LASF5:
	.string	"short unsigned int"
.LASF195:
	.string	"utils_dlist_add"
.LASF11:
	.string	"long double"
.LASF97:
	.string	"DMA_REQ_I2C_RX"
.LASF52:
	.string	"I2C_IRQn"
.LASF25:
	.string	"RF_TOP_INT0_IRQn"
.LASF146:
	.string	"pvPortMalloc"
.LASF90:
	.string	"DMA_TRNS_P2M"
.LASF163:
	.string	"bl_dma_find_ctx_by_channel"
.LASF91:
	.string	"DMA_TRNS_P2P"
.LASF203:
	.string	"utils_list_pick"
.LASF69:
	.string	"RESERVED20"
.LASF179:
	.string	"ptr_piece_num"
.LASF86:
	.string	"MASK"
.LASF114:
	.string	"DMA_INT_Type"
.LASF10:
	.string	"unsigned int"
.LASF46:
	.string	"EFUSE_IRQn"
.LASF74:
	.string	"WIFI_IRQn"
.LASF184:
	.string	"bl_dma_copy"
.LASF175:
	.string	"bl_dma_mem_free"
.LASF70:
	.string	"PDS_WAKEUP_IRQn"
.LASF7:
	.string	"long unsigned int"
.LASF160:
	.string	"lliCfg"
.LASF152:
	.string	"utils_list_push_back"
.LASF155:
	.string	"size"
.LASF98:
	.string	"DMA_REQ_I2C_TX"
.LASF73:
	.string	"BOR_IRQn"
.LASF29:
	.string	"SEC_GMAC_IRQn"
.LASF120:
	.string	"utils_list_hdr"
.LASF123:
	.string	"last"
.LASF190:
	.string	"bl_dma_int_clear"
.LASF75:
	.string	"BZ_PHY_IRQn"
.LASF165:
	.string	"bl_dma_irq_register"
.LASF161:
	.string	"node"
.LASF113:
	.string	"DMA_INT_ALL"
.LASF158:
	.string	"pstctx"
.LASF144:
	.string	"vPortFree"
.LASF128:
	.string	"item"
.LASF117:
	.string	"DMA_LLI_Cfg_Type"
.LASF132:
	.string	"dma_node"
.LASF136:
	.string	"interr_handler"
.LASF156:
	.string	"_dma_test_case1"
.LASF171:
	.string	"handler"
.LASF85:
	.string	"UNMASK"
.LASF34:
	.string	"SEC_SHA_IRQn"
.LASF33:
	.string	"SEC_AES_IRQn"
.LASF186:
	.string	"bl_dma_update_memdst"
.LASF105:
	.string	"DMA_CH0"
.LASF106:
	.string	"DMA_CH1"
.LASF107:
	.string	"DMA_CH2"
.LASF108:
	.string	"DMA_CH3"
.LASF112:
	.string	"DMA_INT_ERR"
.LASF118:
	.string	"TickType_t"
.LASF16:
	.string	"MSOFT_IRQn"
.LASF54:
	.string	"PWM_IRQn"
.LASF35:
	.string	"DMA_ALL_IRQn"
.LASF191:
	.string	"intClr"
.LASF176:
	.string	"bl_dma_mem_malloc"
.LASF166:
	.string	"pstnode"
.LASF80:
	.string	"MAC_TX_TRG_IRQn"
.LASF173:
	.string	"interr_flag"
.LASF50:
	.string	"UART1_IRQn"
.LASF116:
	.string	"dstPeriph"
.LASF99:
	.string	"DMA_REQ_SPI_RX"
.LASF36:
	.string	"RESERVED0"
.LASF37:
	.string	"RESERVED1"
.LASF38:
	.string	"RESERVED2"
.LASF41:
	.string	"RESERVED3"
.LASF42:
	.string	"RESERVED4"
.LASF44:
	.string	"RESERVED5"
.LASF48:
	.string	"RESERVED6"
.LASF51:
	.string	"RESERVED7"
.LASF53:
	.string	"RESERVED8"
.LASF55:
	.string	"RESERVED9"
.LASF76:
	.string	"BLE_IRQn"
.LASF101:
	.string	"DMA_REQ_GPADC0"
.LASF102:
	.string	"DMA_REQ_GPADC1"
.LASF40:
	.string	"IRRX_IRQn"
.LASF31:
	.string	"SEC_PKA_IRQn"
.LASF3:
	.string	"unsigned char"
.LASF200:
	.string	"xPortGetFreeHeapSize"
.LASF77:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF43:
	.string	"SF_CTRL_IRQn"
.LASF201:
	.string	"bl_dma_test"
.LASF23:
	.string	"L1C_BMX_TO_IRQn"
.LASF4:
	.string	"short int"
.LASF39:
	.string	"IRTX_IRQn"
.LASF79:
	.string	"MAC_RX_TRG_IRQn"
.LASF115:
	.string	"srcPeriph"
.LASF139:
	.string	"bl_irq_register_with_ctx"
.LASF87:
	.string	"BL_Mask_Type"
.LASF183:
	.string	"bl_dma_IRQHandler"
.LASF134:
	.string	"channel"
.LASF111:
	.string	"DMA_INT_TCOMPLETED"
.LASF187:
	.string	"tmpVal"
.LASF15:
	.string	"uint32_t"
.LASF122:
	.string	"first"
.LASF133:
	.string	"dlist_item"
.LASF12:
	.string	"char"
.LASF188:
	.string	"DMAChs"
.LASF17:
	.string	"MTIME_IRQn"
.LASF181:
	.string	"addr_start"
.LASF89:
	.string	"DMA_TRNS_M2P"
.LASF130:
	.string	"dma_ctx"
.LASF168:
	.string	"intclr"
.LASF81:
	.string	"MAC_GEN_IRQn"
.LASF159:
	.string	"dmaCh"
.LASF185:
	.string	"_dma_copy_trigger"
.LASF110:
	.string	"DMA_Chan_Type"
.LASF182:
	.string	"addr_end"
.LASF129:
	.string	"ctrl"
.LASF20:
	.string	"BMX_ERR_IRQn"
.LASF78:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF56:
	.string	"TIMER_CH0_IRQn"
.LASF88:
	.string	"DMA_TRNS_M2M"
.LASF103:
	.string	"DMA_REQ_NONE"
.LASF92:
	.string	"DMA_Trans_Dir_Type"
.LASF26:
	.string	"RF_TOP_INT1_IRQn"
.LASF71:
	.string	"HBN_OUT0_IRQn"
.LASF49:
	.string	"UART0_IRQn"
.LASF59:
	.string	"RESERVED10"
.LASF83:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF100:
	.string	"DMA_REQ_SPI_TX"
.LASF145:
	.string	"memset"
.LASF194:
	.string	"utils_dlist_del"
.LASF141:
	.string	"DMA_IntMask"
.LASF149:
	.string	"DMA_LLI_Update"
.LASF84:
	.string	"IRQn_LAST"
.LASF162:
	.string	"bl_dma_irq_unregister"
.LASF68:
	.string	"RESERVED19"
.LASF180:
	.string	"p_heap_addr"
.LASF121:
	.string	"utils_list"
.LASF14:
	.string	"uint8_t"
.LASF19:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF147:
	.string	"utils_list_pop_front"
.LASF198:
	.string	"utils_list_is_empty"
.LASF32:
	.string	"SEC_TRNG_IRQn"
.LASF192:
	.string	"INIT_UTILS_DLIST_HEAD"
.LASF28:
	.string	"DMA_BMX_ERR_IRQn"
.LASF174:
	.string	"bl_dma_init"
.LASF131:
	.string	"pstqueue"
.LASF93:
	.string	"DMA_REQ_UART0_RX"
.LASF157:
	.string	"_cb_cmd"
.LASF47:
	.string	"SPI_IRQn"
.LASF169:
	.string	"tmpval"
.LASF167:
	.string	"bl_dma_int_process"
.LASF57:
	.string	"TIMER_CH1_IRQn"
.LASF124:
	.string	"utils_dlist_s"
.LASF126:
	.string	"utils_dlist_t"
.LASF199:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF193:
	.string	"list"
.LASF140:
	.string	"DMA_LLI_Init"
.LASF72:
	.string	"HBN_OUT1_IRQn"
.LASF142:
	.string	"utils_list_init"
.LASF172:
	.string	"tc_flag"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_dma.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
