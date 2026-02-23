	.file	"tasks.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos" "/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c"
	.globl	pxCurrentTCB
	.section	.sbss.pxCurrentTCB,"aw",@nobits
	.align	2
	.type	pxCurrentTCB, @object
	.size	pxCurrentTCB, 4
pxCurrentTCB:
	.zero	4
	.section	.bss.pxReadyTasksLists,"aw",@nobits
	.align	2
	.type	pxReadyTasksLists, @object
	.size	pxReadyTasksLists, 640
pxReadyTasksLists:
	.zero	640
	.section	.bss.xDelayedTaskList1,"aw",@nobits
	.align	2
	.type	xDelayedTaskList1, @object
	.size	xDelayedTaskList1, 20
xDelayedTaskList1:
	.zero	20
	.section	.bss.xDelayedTaskList2,"aw",@nobits
	.align	2
	.type	xDelayedTaskList2, @object
	.size	xDelayedTaskList2, 20
xDelayedTaskList2:
	.zero	20
	.section	.sbss.pxDelayedTaskList,"aw",@nobits
	.align	2
	.type	pxDelayedTaskList, @object
	.size	pxDelayedTaskList, 4
pxDelayedTaskList:
	.zero	4
	.section	.sbss.pxOverflowDelayedTaskList,"aw",@nobits
	.align	2
	.type	pxOverflowDelayedTaskList, @object
	.size	pxOverflowDelayedTaskList, 4
pxOverflowDelayedTaskList:
	.zero	4
	.section	.bss.xPendingReadyList,"aw",@nobits
	.align	2
	.type	xPendingReadyList, @object
	.size	xPendingReadyList, 20
xPendingReadyList:
	.zero	20
	.section	.bss.xTasksWaitingTermination,"aw",@nobits
	.align	2
	.type	xTasksWaitingTermination, @object
	.size	xTasksWaitingTermination, 20
xTasksWaitingTermination:
	.zero	20
	.section	.sbss.uxDeletedTasksWaitingCleanUp,"aw",@nobits
	.align	2
	.type	uxDeletedTasksWaitingCleanUp, @object
	.size	uxDeletedTasksWaitingCleanUp, 4
uxDeletedTasksWaitingCleanUp:
	.zero	4
	.section	.bss.xSuspendedTaskList,"aw",@nobits
	.align	2
	.type	xSuspendedTaskList, @object
	.size	xSuspendedTaskList, 20
xSuspendedTaskList:
	.zero	20
	.section	.sbss.uxCurrentNumberOfTasks,"aw",@nobits
	.align	2
	.type	uxCurrentNumberOfTasks, @object
	.size	uxCurrentNumberOfTasks, 4
uxCurrentNumberOfTasks:
	.zero	4
	.section	.sbss.xTickCount,"aw",@nobits
	.align	2
	.type	xTickCount, @object
	.size	xTickCount, 4
xTickCount:
	.zero	4
	.section	.sbss.uxTopReadyPriority,"aw",@nobits
	.align	2
	.type	uxTopReadyPriority, @object
	.size	uxTopReadyPriority, 4
uxTopReadyPriority:
	.zero	4
	.section	.sbss.xSchedulerRunning,"aw",@nobits
	.align	2
	.type	xSchedulerRunning, @object
	.size	xSchedulerRunning, 4
xSchedulerRunning:
	.zero	4
	.section	.sbss.xPendedTicks,"aw",@nobits
	.align	2
	.type	xPendedTicks, @object
	.size	xPendedTicks, 4
xPendedTicks:
	.zero	4
	.section	.sbss.xYieldPending,"aw",@nobits
	.align	2
	.type	xYieldPending, @object
	.size	xYieldPending, 4
xYieldPending:
	.zero	4
	.section	.sbss.xNumOfOverflows,"aw",@nobits
	.align	2
	.type	xNumOfOverflows, @object
	.size	xNumOfOverflows, 4
xNumOfOverflows:
	.zero	4
	.section	.sbss.uxTaskNumber,"aw",@nobits
	.align	2
	.type	uxTaskNumber, @object
	.size	uxTaskNumber, 4
uxTaskNumber:
	.zero	4
	.section	.sbss.xNextTaskUnblockTime,"aw",@nobits
	.align	2
	.type	xNextTaskUnblockTime, @object
	.size	xNextTaskUnblockTime, 4
xNextTaskUnblockTime:
	.zero	4
	.section	.sbss.xIdleTaskHandle,"aw",@nobits
	.align	2
	.type	xIdleTaskHandle, @object
	.size	xIdleTaskHandle, 4
xIdleTaskHandle:
	.zero	4
	.section	.sbss.uxSchedulerSuspended,"aw",@nobits
	.align	2
	.type	uxSchedulerSuspended, @object
	.size	uxSchedulerSuspended, 4
uxSchedulerSuspended:
	.zero	4
	.section	.text.xTaskCreateStatic,"ax",@progbits
	.align	1
	.globl	xTaskCreateStatic
	.type	xTaskCreateStatic, @function
xTaskCreateStatic:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c"
	.loc 1 588 2
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
	.loc 1 592 5
	lw	a5,-56(s0)
	bne	a5,zero,.L2
	.loc 1 592 11 discriminator 1
	call	vAssertCalled
.L2:
	.loc 1 593 5
	lw	a5,-60(s0)
	bne	a5,zero,.L3
	.loc 1 593 11 discriminator 1
	call	vAssertCalled
.L3:
.LBB2:
	.loc 1 600 20
	li	a5,100
	sw	a5,-28(s0)
	.loc 1 601 37
	lw	a4,-28(s0)
	.loc 1 601 6
	li	a5,100
	beq	a4,a5,.L4
	.loc 1 601 44 discriminator 1
	call	vAssertCalled
.L4:
	.loc 1 602 4
	lw	a5,-28(s0)
.LBE2:
	.loc 1 607 5
	lw	a5,-60(s0)
	beq	a5,zero,.L5
	.loc 1 607 31 discriminator 1
	lw	a5,-56(s0)
	beq	a5,zero,.L5
	.loc 1 611 13
	lw	a5,-60(s0)
	sw	a5,-20(s0)
	.loc 1 612 22
	lw	a5,-20(s0)
	lw	a4,-56(s0)
	sw	a4,48(a5)
	.loc 1 618 37
	lw	a5,-20(s0)
	li	a4,2
	sb	a4,97(a5)
	.loc 1 622 4
	addi	a5,s0,-24
	li	a7,0
	lw	a6,-20(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	prvInitialiseNewTask
	.loc 1 623 4
	lw	a0,-20(s0)
	call	prvAddNewTaskToReadyList
	j	.L6
.L5:
	.loc 1 627 12
	sw	zero,-24(s0)
.L6:
	.loc 1 630 10
	lw	a5,-24(s0)
	.loc 1 631 2
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
.LFE5:
	.size	xTaskCreateStatic, .-xTaskCreateStatic
	.section	.text.xTaskCreate,"ax",@progbits
	.align	1
	.globl	xTaskCreate
	.type	xTaskCreate, @function
xTaskCreate:
.LFB6:
	.loc 1 739 2
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
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	mv	a5,a2
	sh	a5,-42(s0)
.LBB3:
	.loc 1 773 32
	lhu	a5,-42(s0)
	.loc 1 773 58
	slli	a5,a5,2
	.loc 1 773 14
	mv	a0,a5
	call	pvPortMalloc
	sw	a0,-28(s0)
	.loc 1 775 6
	lw	a5,-28(s0)
	beq	a5,zero,.L9
	.loc 1 778 28
	li	a0,100
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 1 780 7
	lw	a5,-20(s0)
	beq	a5,zero,.L10
	.loc 1 783 24
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,48(a5)
	j	.L11
.L10:
	.loc 1 789 6
	lw	a0,-28(s0)
	call	vPortFree
	j	.L11
.L9:
	.loc 1 794 14
	sw	zero,-20(s0)
.L11:
.LBE3:
	.loc 1 799 5
	lw	a5,-20(s0)
	beq	a5,zero,.L12
	.loc 1 805 37
	lw	a5,-20(s0)
	sb	zero,97(a5)
	.loc 1 809 4
	lhu	a2,-42(s0)
	li	a7,0
	lw	a6,-20(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	prvInitialiseNewTask
	.loc 1 810 4
	lw	a0,-20(s0)
	call	prvAddNewTaskToReadyList
	.loc 1 811 12
	li	a5,1
	sw	a5,-24(s0)
	j	.L13
.L12:
	.loc 1 815 12
	li	a5,-1
	sw	a5,-24(s0)
.L13:
	.loc 1 818 10
	lw	a5,-24(s0)
	.loc 1 819 2
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
.LFE6:
	.size	xTaskCreate, .-xTaskCreate
	.section	.text.prvInitialiseNewTask,"ax",@progbits
	.align	1
	.type	prvInitialiseNewTask, @function
prvInitialiseNewTask:
.LFB7:
	.loc 1 832 1
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
	sw	a7,-64(s0)
	.loc 1 854 28
	lw	a5,-60(s0)
	lw	a4,48(a5)
	.loc 1 854 82
	lw	a5,-44(s0)
	slli	a5,a5,2
	.loc 1 854 12
	mv	a2,a5
	li	a1,165
	mv	a0,a4
	call	memset
	.loc 1 864 29
	lw	a5,-60(s0)
	lw	a4,48(a5)
	.loc 1 864 38
	lw	a3,-44(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	.loc 1 864 16
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 865 40
	lw	a5,-24(s0)
	.loc 1 865 68
	andi	a5,a5,-16
	.loc 1 865 16
	sw	a5,-24(s0)
	.loc 1 868 13
	lw	a5,-24(s0)
	.loc 1 868 39
	andi	a5,a5,15
	.loc 1 868 5
	beq	a5,zero,.L16
	.loc 1 868 85 discriminator 1
	call	vAssertCalled
.L16:
	.loc 1 892 4
	lw	a5,-40(s0)
	beq	a5,zero,.L17
	.loc 1 894 10
	sw	zero,-20(s0)
	.loc 1 894 3
	j	.L18
.L21:
	.loc 1 896 38
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 896 30
	lw	a3,-60(s0)
	lw	a5,-20(s0)
	add	a5,a3,a5
	sb	a4,52(a5)
	.loc 1 901 14
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 901 6
	beq	a5,zero,.L27
	.loc 1 894 60 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L18:
	.loc 1 894 33 discriminator 1
	lw	a4,-20(s0)
	li	a5,15
	bleu	a4,a5,.L21
	j	.L20
.L27:
	.loc 1 903 5
	nop
.L20:
	.loc 1 913 38
	lw	a5,-60(s0)
	sb	zero,67(a5)
	j	.L22
.L17:
	.loc 1 919 29
	lw	a5,-60(s0)
	sb	zero,52(a5)
.L22:
	.loc 1 924 4
	lw	a4,-52(s0)
	li	a5,31
	bleu	a4,a5,.L23
	.loc 1 926 14
	li	a5,31
	sw	a5,-52(s0)
.L23:
	.loc 1 933 23
	lw	a5,-60(s0)
	lw	a4,-52(s0)
	sw	a4,44(a5)
	.loc 1 936 28
	lw	a5,-60(s0)
	lw	a4,-52(s0)
	sw	a4,80(a5)
	.loc 1 937 27
	lw	a5,-60(s0)
	sw	zero,84(a5)
	.loc 1 941 23
	lw	a5,-60(s0)
	addi	a5,a5,4
	.loc 1 941 2
	mv	a0,a5
	call	vListInitialiseItem
	.loc 1 942 23
	lw	a5,-60(s0)
	addi	a5,a5,24
	.loc 1 942 2
	mv	a0,a5
	call	vListInitialiseItem
	.loc 1 946 47
	lw	a5,-60(s0)
	lw	a4,-60(s0)
	sw	a4,16(a5)
	.loc 1 949 76
	li	a4,32
	lw	a5,-52(s0)
	sub	a4,a4,a5
	.loc 1 949 50
	lw	a5,-60(s0)
	sw	a4,24(a5)
	.loc 1 950 47
	lw	a5,-60(s0)
	lw	a4,-60(s0)
	sw	a4,36(a5)
	.loc 1 954 31
	lw	a5,-60(s0)
	sw	zero,68(a5)
	.loc 1 983 10
	sw	zero,-20(s0)
	.loc 1 983 3
	j	.L24
.L25:
	.loc 1 985 48
	lw	a4,-60(s0)
	lw	a5,-20(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,8(a5)
	.loc 1 983 39 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L24:
	.loc 1 983 17 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L25
	.loc 1 992 29
	lw	a5,-60(s0)
	sw	zero,92(a5)
	.loc 1 993 27
	lw	a5,-60(s0)
	sb	zero,96(a5)
	.loc 1 1058 29
	lw	a2,-48(s0)
	lw	a1,-36(s0)
	lw	a0,-24(s0)
	call	pxPortInitialiseStack
	mv	a4,a0
	.loc 1 1058 27 discriminator 1
	lw	a5,-60(s0)
	sw	a4,0(a5)
	.loc 1 1064 4
	lw	a5,-56(s0)
	beq	a5,zero,.L28
	.loc 1 1068 18
	lw	a5,-56(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
.L28:
	.loc 1 1074 1
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
.LFE7:
	.size	prvInitialiseNewTask, .-prvInitialiseNewTask
	.section	.text.prvAddNewTaskToReadyList,"ax",@progbits
	.align	1
	.type	prvAddNewTaskToReadyList, @function
prvAddNewTaskToReadyList:
.LFB8:
	.loc 1 1078 1
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
	.loc 1 1081 2
	call	vTaskEnterCritical
	.loc 1 1083 25
	lui	a5,%hi(uxCurrentNumberOfTasks)
	lw	a5,%lo(uxCurrentNumberOfTasks)(a5)
	addi	a4,a5,1
	lui	a5,%hi(uxCurrentNumberOfTasks)
	sw	a4,%lo(uxCurrentNumberOfTasks)(a5)
	.loc 1 1084 20
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 1084 5
	bne	a5,zero,.L30
	.loc 1 1088 17
	lui	a5,%hi(pxCurrentTCB)
	lw	a4,-20(s0)
	sw	a4,%lo(pxCurrentTCB)(a5)
	.loc 1 1090 31
	lui	a5,%hi(uxCurrentNumberOfTasks)
	lw	a4,%lo(uxCurrentNumberOfTasks)(a5)
	.loc 1 1090 6
	li	a5,1
	bne	a4,a5,.L31
	.loc 1 1095 5
	call	prvInitialiseTaskLists
	j	.L31
.L30:
	.loc 1 1107 26
	lui	a5,%hi(xSchedulerRunning)
	lw	a5,%lo(xSchedulerRunning)(a5)
	.loc 1 1107 6
	bne	a5,zero,.L31
	.loc 1 1109 21
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,44(a5)
	.loc 1 1109 45
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 1109 7
	bgtu	a4,a5,.L31
	.loc 1 1111 19
	lui	a5,%hi(pxCurrentTCB)
	lw	a4,-20(s0)
	sw	a4,%lo(pxCurrentTCB)(a5)
.L31:
	.loc 1 1124 15
	lui	a5,%hi(uxTaskNumber)
	lw	a5,%lo(uxTaskNumber)(a5)
	addi	a4,a5,1
	lui	a5,%hi(uxTaskNumber)
	sw	a4,%lo(uxTaskNumber)(a5)
	.loc 1 1129 26
	lui	a5,%hi(uxTaskNumber)
	lw	a4,%lo(uxTaskNumber)(a5)
	lw	a5,-20(s0)
	sw	a4,72(a5)
	.loc 1 1134 54
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 1134 37
	li	a4,1
	sll	a4,a4,a5
	.loc 1 1134 28
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	.loc 1 1134 122
	lw	a5,-20(s0)
	lw	a4,44(a5)
	.loc 1 1134 88
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	.loc 1 1134 140
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 1134 72
	mv	a1,a5
	mv	a0,a4
	call	vListInsertEnd
	.loc 1 1138 2
	call	vTaskExitCritical
	.loc 1 1140 24
	lui	a5,%hi(xSchedulerRunning)
	lw	a5,%lo(xSchedulerRunning)(a5)
	.loc 1 1140 4
	beq	a5,zero,.L33
	.loc 1 1144 19
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,44(a5)
	.loc 1 1144 42
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 1144 5
	bgeu	a4,a5,.L33
	.loc 1 1146 4
 #APP
# 1146 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c" 1
	ecall
# 0 "" 2
 #NO_APP
.L33:
	.loc 1 1157 1
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
.LFE8:
	.size	prvAddNewTaskToReadyList, .-prvAddNewTaskToReadyList
	.section	.text.vTaskDelete,"ax",@progbits
	.align	1
	.globl	vTaskDelete
	.type	vTaskDelete, @function
vTaskDelete:
.LFB9:
	.loc 1 1163 2
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
	.loc 1 1166 3
	call	vTaskEnterCritical
	.loc 1 1170 28
	lw	a5,-36(s0)
	bne	a5,zero,.L35
	.loc 1 1170 10 discriminator 1
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	sw	a5,-20(s0)
	j	.L36
.L35:
	.loc 1 1170 10 is_stmt 0 discriminator 2
	lw	a5,-36(s0)
	sw	a5,-20(s0)
.L36:
	.loc 1 1173 22 is_stmt 1
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 1173 8
	mv	a0,a5
	call	uxListRemove
	mv	a5,a0
	.loc 1 1173 6 discriminator 1
	bne	a5,zero,.L37
	.loc 1 1175 44
	lw	a5,-20(s0)
	lw	a4,44(a5)
	.loc 1 1175 64
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 1175 9
	bne	a5,zero,.L37
	.loc 1 1175 158 discriminator 1
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 1175 146 discriminator 1
	li	a4,1
	sll	a5,a4,a5
	.loc 1 1175 139 discriminator 1
	not	a4,a5
	.loc 1 1175 136 discriminator 1
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	and	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
.L37:
	.loc 1 1183 40
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 1183 6
	beq	a5,zero,.L38
	.loc 1 1185 28
	lw	a5,-20(s0)
	addi	a5,a5,24
	.loc 1 1185 14
	mv	a0,a5
	call	uxListRemove
.L38:
	.loc 1 1196 16
	lui	a5,%hi(uxTaskNumber)
	lw	a5,%lo(uxTaskNumber)(a5)
	addi	a4,a5,1
	lui	a5,%hi(uxTaskNumber)
	sw	a4,%lo(uxTaskNumber)(a5)
	.loc 1 1198 14
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 1198 6
	lw	a4,-20(s0)
	bne	a4,a5,.L39
	.loc 1 1205 48
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 1205 5
	mv	a1,a5
	lui	a5,%hi(xTasksWaitingTermination)
	addi	a0,a5,%lo(xTasksWaitingTermination)
	call	vListInsertEnd
	.loc 1 1210 5
	lui	a5,%hi(uxDeletedTasksWaitingCleanUp)
	lw	a5,%lo(uxDeletedTasksWaitingCleanUp)(a5)
	addi	a4,a5,1
	lui	a5,%hi(uxDeletedTasksWaitingCleanUp)
	sw	a4,%lo(uxDeletedTasksWaitingCleanUp)(a5)
	j	.L40
.L39:
	.loc 1 1225 5
	lui	a5,%hi(uxCurrentNumberOfTasks)
	lw	a5,%lo(uxCurrentNumberOfTasks)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(uxCurrentNumberOfTasks)
	sw	a4,%lo(uxCurrentNumberOfTasks)(a5)
	.loc 1 1227 5
	lw	a0,-20(s0)
	call	prvDeleteTCB
	.loc 1 1231 5
	call	prvResetNextTaskUnblockTime
.L40:
	.loc 1 1234 3
	call	vTaskExitCritical
	.loc 1 1238 25
	lui	a5,%hi(xSchedulerRunning)
	lw	a5,%lo(xSchedulerRunning)(a5)
	.loc 1 1238 5
	beq	a5,zero,.L43
	.loc 1 1240 14
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 1240 6
	lw	a4,-20(s0)
	bne	a4,a5,.L43
	.loc 1 1242 39
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	.loc 1 1242 7
	beq	a5,zero,.L42
	.loc 1 1242 46 discriminator 1
	call	vAssertCalled
.L42:
	.loc 1 1243 5
 #APP
# 1243 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c" 1
	ecall
# 0 "" 2
 #NO_APP
.L43:
	.loc 1 1250 2
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
.LFE9:
	.size	vTaskDelete, .-vTaskDelete
	.section	.text.vTaskDelayUntil,"ax",@progbits
	.align	1
	.globl	vTaskDelayUntil
	.type	vTaskDelayUntil, @function
vTaskDelayUntil:
.LFB10:
	.loc 1 1258 2
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
	.loc 1 1260 30
	sw	zero,-20(s0)
	.loc 1 1262 5
	lw	a5,-36(s0)
	bne	a5,zero,.L45
	.loc 1 1262 37 discriminator 1
	call	vAssertCalled
.L45:
	.loc 1 1263 5
	lw	a5,-40(s0)
	bne	a5,zero,.L46
	.loc 1 1263 42 discriminator 1
	call	vAssertCalled
.L46:
	.loc 1 1264 37
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	.loc 1 1264 5
	beq	a5,zero,.L47
	.loc 1 1264 44 discriminator 1
	call	vAssertCalled
.L47:
	.loc 1 1266 3
	call	vTaskSuspendAll
.LBB4:
	.loc 1 1270 21
	lui	a5,%hi(xTickCount)
	lw	a5,%lo(xTickCount)(a5)
	sw	a5,-24(s0)
	.loc 1 1273 18
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1273 16
	lw	a4,-40(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 1275 26
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1275 6
	lw	a4,-24(s0)
	bgeu	a4,a5,.L48
	.loc 1 1282 25
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1282 7
	lw	a4,-28(s0)
	bgeu	a4,a5,.L49
	.loc 1 1282 47 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	bleu	a4,a5,.L49
	.loc 1 1284 19
	li	a5,1
	sw	a5,-20(s0)
	j	.L49
.L48:
	.loc 1 1296 25
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1296 7
	lw	a4,-28(s0)
	bltu	a4,a5,.L50
	.loc 1 1296 47 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	bleu	a4,a5,.L49
.L50:
	.loc 1 1298 19
	li	a5,1
	sw	a5,-20(s0)
.L49:
	.loc 1 1307 24
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 1 1309 6
	lw	a5,-20(s0)
	beq	a5,zero,.L51
	.loc 1 1315 5
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	li	a1,0
	mv	a0,a5
	call	prvAddCurrentTaskToDelayedList
.L51:
.LBE4:
	.loc 1 1322 21
	call	xTaskResumeAll
	sw	a0,-32(s0)
	.loc 1 1326 5
	lw	a5,-32(s0)
	bne	a5,zero,.L53
	.loc 1 1328 4
 #APP
# 1328 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c" 1
	ecall
# 0 "" 2
 #NO_APP
.L53:
	.loc 1 1334 2
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
.LFE10:
	.size	vTaskDelayUntil, .-vTaskDelayUntil
	.section	.text.vTaskDelay,"ax",@progbits
	.align	1
	.globl	vTaskDelay
	.type	vTaskDelay, @function
vTaskDelay:
.LFB11:
	.loc 1 1342 2
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
	.loc 1 1343 13
	sw	zero,-20(s0)
	.loc 1 1346 5
	lw	a5,-36(s0)
	beq	a5,zero,.L55
	.loc 1 1348 38
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	.loc 1 1348 6
	beq	a5,zero,.L56
	.loc 1 1348 45 discriminator 1
	call	vAssertCalled
.L56:
	.loc 1 1349 4
	call	vTaskSuspendAll
	.loc 1 1360 5
	li	a1,0
	lw	a0,-36(s0)
	call	prvAddCurrentTaskToDelayedList
	.loc 1 1362 22
	call	xTaskResumeAll
	sw	a0,-20(s0)
.L55:
	.loc 1 1371 5
	lw	a5,-20(s0)
	bne	a5,zero,.L58
	.loc 1 1373 4
 #APP
# 1373 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c" 1
	ecall
# 0 "" 2
 #NO_APP
.L58:
	.loc 1 1379 2
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
.LFE11:
	.size	vTaskDelay, .-vTaskDelay
	.section	.text.eTaskGetState,"ax",@progbits
	.align	1
	.globl	eTaskGetState
	.type	eTaskGetState, @function
eTaskGetState:
.LFB12:
	.loc 1 1387 2
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
	.loc 1 1390 22
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	.loc 1 1392 5
	lw	a5,-24(s0)
	bne	a5,zero,.L60
	.loc 1 1392 24 discriminator 1
	call	vAssertCalled
.L60:
	.loc 1 1394 13
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 1394 5
	lw	a4,-24(s0)
	bne	a4,a5,.L61
	.loc 1 1397 12
	sb	zero,-17(s0)
	j	.L62
.L61:
	.loc 1 1401 4
	call	vTaskEnterCritical
	.loc 1 1403 17
	lw	a5,-24(s0)
	lw	a5,20(a5)
	sw	a5,-28(s0)
	.loc 1 1404 19
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	sw	a5,-32(s0)
	.loc 1 1405 29
	lui	a5,%hi(pxOverflowDelayedTaskList)
	lw	a5,%lo(pxOverflowDelayedTaskList)(a5)
	sw	a5,-36(s0)
	.loc 1 1407 4
	call	vTaskExitCritical
	.loc 1 1409 6
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	beq	a4,a5,.L63
	.loc 1 1409 41 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L64
.L63:
	.loc 1 1413 13
	li	a5,2
	sb	a5,-17(s0)
	j	.L62
.L64:
	.loc 1 1417 12
	lw	a4,-28(s0)
	lui	a5,%hi(xSuspendedTaskList)
	addi	a5,a5,%lo(xSuspendedTaskList)
	bne	a4,a5,.L65
	.loc 1 1422 42
	lw	a5,-24(s0)
	lw	a5,40(a5)
	.loc 1 1422 8
	bne	a5,zero,.L66
	.loc 1 1430 17
	lw	a5,-24(s0)
	lbu	a5,96(a5)
	andi	a4,a5,0xff
	.loc 1 1430 10
	li	a5,1
	bne	a4,a5,.L67
	.loc 1 1432 17
	li	a5,2
	sb	a5,-17(s0)
	j	.L62
.L67:
	.loc 1 1436 17
	li	a5,3
	sb	a5,-17(s0)
	j	.L62
.L66:
	.loc 1 1447 15
	li	a5,2
	sb	a5,-17(s0)
	j	.L62
.L65:
	.loc 1 1453 12
	lw	a4,-28(s0)
	lui	a5,%hi(xTasksWaitingTermination)
	addi	a5,a5,%lo(xTasksWaitingTermination)
	beq	a4,a5,.L68
	.loc 1 1453 59 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L69
.L68:
	.loc 1 1458 14
	li	a5,4
	sb	a5,-17(s0)
	j	.L62
.L69:
	.loc 1 1466 13
	li	a5,1
	sb	a5,-17(s0)
.L62:
	.loc 1 1470 10
	lbu	a5,-17(s0)
	.loc 1 1471 2
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
	.size	eTaskGetState, .-eTaskGetState
	.section	.text.uxTaskPriorityGet,"ax",@progbits
	.align	1
	.globl	uxTaskPriorityGet
	.type	uxTaskPriorityGet, @function
uxTaskPriorityGet:
.LFB13:
	.loc 1 1479 2
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
	.loc 1 1483 3
	call	vTaskEnterCritical
	.loc 1 1487 28
	lw	a5,-36(s0)
	bne	a5,zero,.L72
	.loc 1 1487 10 discriminator 1
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	sw	a5,-20(s0)
	j	.L73
.L72:
	.loc 1 1487 10 is_stmt 0 discriminator 2
	lw	a5,-36(s0)
	sw	a5,-20(s0)
.L73:
	.loc 1 1488 13 is_stmt 1
	lw	a5,-20(s0)
	lw	a5,44(a5)
	sw	a5,-24(s0)
	.loc 1 1490 3
	call	vTaskExitCritical
	.loc 1 1492 10
	lw	a5,-24(s0)
	.loc 1 1493 2
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
	.size	uxTaskPriorityGet, .-uxTaskPriorityGet
	.section	.text.uxTaskPriorityGetFromISR,"ax",@progbits
	.align	1
	.globl	uxTaskPriorityGetFromISR
	.type	uxTaskPriorityGetFromISR, @function
uxTaskPriorityGetFromISR:
.LFB14:
	.loc 1 1501 2
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
	.loc 1 1523 25
	sw	zero,-24(s0)
	.loc 1 1527 28
	lw	a5,-36(s0)
	bne	a5,zero,.L76
	.loc 1 1527 10 discriminator 1
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	sw	a5,-20(s0)
	j	.L77
.L76:
	.loc 1 1527 10 is_stmt 0 discriminator 2
	lw	a5,-36(s0)
	sw	a5,-20(s0)
.L77:
	.loc 1 1528 13 is_stmt 1
	lw	a5,-20(s0)
	lw	a5,44(a5)
	sw	a5,-28(s0)
	.loc 1 1532 10
	lw	a5,-28(s0)
	.loc 1 1533 2
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
	.size	uxTaskPriorityGetFromISR, .-uxTaskPriorityGetFromISR
	.section	.text.vTaskPrioritySet,"ax",@progbits
	.align	1
	.globl	vTaskPrioritySet
	.type	vTaskPrioritySet, @function
vTaskPrioritySet:
.LFB15:
	.loc 1 1541 2
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
	.loc 1 1544 13
	sw	zero,-24(s0)
	.loc 1 1546 5
	lw	a4,-40(s0)
	li	a5,31
	bleu	a4,a5,.L80
	.loc 1 1546 45 discriminator 1
	call	vAssertCalled
.L80:
	.loc 1 1549 5
	lw	a4,-40(s0)
	li	a5,31
	bleu	a4,a5,.L81
	.loc 1 1551 18
	li	a5,31
	sw	a5,-40(s0)
.L81:
	.loc 1 1558 3
	call	vTaskEnterCritical
	.loc 1 1562 28
	lw	a5,-36(s0)
	bne	a5,zero,.L82
	.loc 1 1562 10 discriminator 1
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	sw	a5,-20(s0)
	j	.L83
.L82:
	.loc 1 1562 10 is_stmt 0 discriminator 2
	lw	a5,-36(s0)
	sw	a5,-20(s0)
.L83:
	.loc 1 1568 27 is_stmt 1
	lw	a5,-20(s0)
	lw	a5,80(a5)
	sw	a5,-28(s0)
	.loc 1 1576 6
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	beq	a4,a5,.L84
	.loc 1 1580 7
	lw	a4,-40(s0)
	lw	a5,-28(s0)
	bleu	a4,a5,.L85
	.loc 1 1582 16
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 1582 8
	lw	a4,-20(s0)
	beq	a4,a5,.L86
	.loc 1 1587 40
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	.loc 1 1587 9
	lw	a4,-40(s0)
	bltu	a4,a5,.L86
	.loc 1 1589 23
	li	a5,1
	sw	a5,-24(s0)
	j	.L86
.L85:
	.loc 1 1603 20
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 1603 12
	lw	a4,-20(s0)
	bne	a4,a5,.L86
	.loc 1 1608 21
	li	a5,1
	sw	a5,-24(s0)
.L86:
	.loc 1 1620 27
	lw	a5,-20(s0)
	lw	a5,44(a5)
	sw	a5,-32(s0)
	.loc 1 1626 15
	lw	a5,-20(s0)
	lw	a4,80(a5)
	.loc 1 1626 40
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 1626 8
	bne	a4,a5,.L87
	.loc 1 1628 25
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,44(a5)
.L87:
	.loc 1 1636 28
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,80(a5)
	.loc 1 1646 43
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 1 1646 7
	blt	a5,zero,.L88
	.loc 1 1648 79
	li	a4,32
	lw	a5,-40(s0)
	sub	a4,a4,a5
	.loc 1 1648 51
	lw	a5,-20(s0)
	sw	a4,24(a5)
.L88:
	.loc 1 1659 43
	lw	a5,-20(s0)
	lw	a3,20(a5)
	.loc 1 1659 62
	lw	a4,-32(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a5,a5,a4
	.loc 1 1659 7
	bne	a3,a5,.L89
	.loc 1 1664 24
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 1664 10
	mv	a0,a5
	call	uxListRemove
	mv	a5,a0
	.loc 1 1664 8 discriminator 1
	bne	a5,zero,.L90
	.loc 1 1669 40
	lw	a5,-32(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 1 1669 33
	not	a4,a5
	.loc 1 1669 30
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	and	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
.L90:
	.loc 1 1675 54
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 1675 40
	li	a4,1
	sll	a4,a4,a5
	.loc 1 1675 31
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	.loc 1 1675 119
	lw	a5,-20(s0)
	lw	a4,44(a5)
	.loc 1 1675 88
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	.loc 1 1675 137
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 1675 72
	mv	a1,a5
	mv	a0,a4
	call	vListInsertEnd
.L89:
	.loc 1 1682 7
	lw	a5,-24(s0)
	beq	a5,zero,.L84
	.loc 1 1684 6
 #APP
# 1684 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c" 1
	ecall
# 0 "" 2
 #NO_APP
.L84:
	.loc 1 1696 3
	call	vTaskExitCritical
	.loc 1 1697 2
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
.LFE15:
	.size	vTaskPrioritySet, .-vTaskPrioritySet
	.section	.text.vTaskSuspend,"ax",@progbits
	.align	1
	.globl	vTaskSuspend
	.type	vTaskSuspend, @function
vTaskSuspend:
.LFB16:
	.loc 1 1705 2
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
	.loc 1 1708 3
	call	vTaskEnterCritical
	.loc 1 1712 28
	lw	a5,-36(s0)
	bne	a5,zero,.L92
	.loc 1 1712 10 discriminator 1
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	sw	a5,-20(s0)
	j	.L93
.L92:
	.loc 1 1712 10 is_stmt 0 discriminator 2
	lw	a5,-36(s0)
	sw	a5,-20(s0)
.L93:
	.loc 1 1718 22 is_stmt 1
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 1718 8
	mv	a0,a5
	call	uxListRemove
	mv	a5,a0
	.loc 1 1718 6 discriminator 1
	bne	a5,zero,.L94
	.loc 1 1720 44
	lw	a5,-20(s0)
	lw	a4,44(a5)
	.loc 1 1720 64
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 1720 9
	bne	a5,zero,.L94
	.loc 1 1720 158 discriminator 1
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 1720 146 discriminator 1
	li	a4,1
	sll	a5,a4,a5
	.loc 1 1720 139 discriminator 1
	not	a4,a5
	.loc 1 1720 136 discriminator 1
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	and	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
.L94:
	.loc 1 1728 40
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 1728 6
	beq	a5,zero,.L95
	.loc 1 1730 28
	lw	a5,-20(s0)
	addi	a5,a5,24
	.loc 1 1730 14
	mv	a0,a5
	call	uxListRemove
.L95:
	.loc 1 1737 41
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 1737 4
	mv	a1,a5
	lui	a5,%hi(xSuspendedTaskList)
	addi	a0,a5,%lo(xSuspendedTaskList)
	call	vListInsertEnd
	.loc 1 1741 14
	lw	a5,-20(s0)
	lbu	a5,96(a5)
	andi	a4,a5,0xff
	.loc 1 1741 7
	li	a5,1
	bne	a4,a5,.L96
	.loc 1 1745 27
	lw	a5,-20(s0)
	sb	zero,96(a5)
.L96:
	.loc 1 1750 3
	call	vTaskExitCritical
	.loc 1 1752 25
	lui	a5,%hi(xSchedulerRunning)
	lw	a5,%lo(xSchedulerRunning)(a5)
	.loc 1 1752 5
	beq	a5,zero,.L97
	.loc 1 1756 4
	call	vTaskEnterCritical
	.loc 1 1758 5
	call	prvResetNextTaskUnblockTime
	.loc 1 1760 4
	call	vTaskExitCritical
.L97:
	.loc 1 1767 13
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 1767 5
	lw	a4,-20(s0)
	bne	a4,a5,.L102
	.loc 1 1769 26
	lui	a5,%hi(xSchedulerRunning)
	lw	a5,%lo(xSchedulerRunning)(a5)
	.loc 1 1769 6
	beq	a5,zero,.L99
	.loc 1 1772 39
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	.loc 1 1772 7
	beq	a5,zero,.L100
	.loc 1 1772 46 discriminator 1
	call	vAssertCalled
.L100:
	.loc 1 1773 5
 #APP
# 1773 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c" 1
	ecall
# 0 "" 2
	.loc 1 1798 2
 #NO_APP
	j	.L102
.L99:
	.loc 1 1780 34
	lui	a5,%hi(xSuspendedTaskList)
	addi	a5,a5,%lo(xSuspendedTaskList)
	lw	a4,0(a5)
	.loc 1 1780 54
	lui	a5,%hi(uxCurrentNumberOfTasks)
	lw	a5,%lo(uxCurrentNumberOfTasks)(a5)
	.loc 1 1780 7
	bne	a4,a5,.L101
	.loc 1 1786 19
	lui	a5,%hi(pxCurrentTCB)
	sw	zero,%lo(pxCurrentTCB)(a5)
	.loc 1 1798 2
	j	.L102
.L101:
	.loc 1 1790 6
	call	vTaskSwitchContext
.L102:
	.loc 1 1798 2
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
	.size	vTaskSuspend, .-vTaskSuspend
	.section	.text.prvTaskIsTaskSuspended,"ax",@progbits
	.align	1
	.type	prvTaskIsTaskSuspended, @function
prvTaskIsTaskSuspended:
.LFB17:
	.loc 1 1806 2
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
	.loc 1 1807 13
	sw	zero,-20(s0)
	.loc 1 1808 22
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 1814 5
	lw	a5,-36(s0)
	bne	a5,zero,.L104
	.loc 1 1814 24 discriminator 1
	call	vAssertCalled
.L104:
	.loc 1 1817 41
	lw	a5,-24(s0)
	lw	a4,20(a5)
	.loc 1 1817 5
	lui	a5,%hi(xSuspendedTaskList)
	addi	a5,a5,%lo(xSuspendedTaskList)
	bne	a4,a5,.L105
	.loc 1 1820 42
	lw	a5,-24(s0)
	lw	a4,40(a5)
	.loc 1 1820 6
	lui	a5,%hi(xPendingReadyList)
	addi	a5,a5,%lo(xPendingReadyList)
	beq	a4,a5,.L105
	.loc 1 1824 43
	lw	a5,-24(s0)
	lw	a5,40(a5)
	.loc 1 1824 7
	bne	a5,zero,.L105
	.loc 1 1826 14
	li	a5,1
	sw	a5,-20(s0)
.L105:
	.loc 1 1843 10
	lw	a5,-20(s0)
	.loc 1 1844 2
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
	.size	prvTaskIsTaskSuspended, .-prvTaskIsTaskSuspended
	.section	.text.vTaskResume,"ax",@progbits
	.align	1
	.globl	vTaskResume
	.type	vTaskResume, @function
vTaskResume:
.LFB18:
	.loc 1 1852 2
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
	.loc 1 1853 16
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1856 5
	lw	a5,-36(s0)
	bne	a5,zero,.L108
	.loc 1 1856 32 discriminator 1
	call	vAssertCalled
.L108:
	.loc 1 1860 15
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 1860 5
	lw	a4,-20(s0)
	beq	a4,a5,.L111
	.loc 1 1860 33 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L111
	.loc 1 1862 4
	call	vTaskEnterCritical
	.loc 1 1864 9
	lw	a0,-20(s0)
	call	prvTaskIsTaskSuspended
	mv	a5,a0
	.loc 1 1864 7 discriminator 1
	beq	a5,zero,.L110
	.loc 1 1870 29
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 1870 15
	mv	a0,a5
	call	uxListRemove
	.loc 1 1871 54
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 1871 40
	li	a4,1
	sll	a4,a4,a5
	.loc 1 1871 31
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	.loc 1 1871 119
	lw	a5,-20(s0)
	lw	a4,44(a5)
	.loc 1 1871 88
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	.loc 1 1871 137
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 1871 72
	mv	a1,a5
	mv	a0,a4
	call	vListInsertEnd
	.loc 1 1874 15
	lw	a5,-20(s0)
	lw	a4,44(a5)
	.loc 1 1874 43
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	.loc 1 1874 8
	bltu	a4,a5,.L110
	.loc 1 1879 7
 #APP
# 1879 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c" 1
	ecall
# 0 "" 2
 #NO_APP
.L110:
	.loc 1 1891 4
	call	vTaskExitCritical
.L111:
	.loc 1 1897 2
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
	.size	vTaskResume, .-vTaskResume
	.section	.text.xTaskResumeFromISR,"ax",@progbits
	.align	1
	.globl	xTaskResumeFromISR
	.type	xTaskResumeFromISR, @function
xTaskResumeFromISR:
.LFB19:
	.loc 1 1906 2
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
	.loc 1 1907 13
	sw	zero,-20(s0)
	.loc 1 1908 16
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 1911 5
	lw	a5,-36(s0)
	bne	a5,zero,.L113
	.loc 1 1911 32 discriminator 1
	call	vAssertCalled
.L113:
	.loc 1 1931 26
	sw	zero,-28(s0)
	.loc 1 1933 8
	lw	a0,-24(s0)
	call	prvTaskIsTaskSuspended
	mv	a5,a0
	.loc 1 1933 6 discriminator 1
	beq	a5,zero,.L114
	.loc 1 1938 30
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	.loc 1 1938 7
	bne	a5,zero,.L115
	.loc 1 1942 15
	lw	a5,-24(s0)
	lw	a4,44(a5)
	.loc 1 1942 43
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	.loc 1 1942 8
	bltu	a4,a5,.L116
	.loc 1 1944 22
	li	a5,1
	sw	a5,-20(s0)
.L116:
	.loc 1 1951 29
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 1951 15
	mv	a0,a5
	call	uxListRemove
	.loc 1 1952 54
	lw	a5,-24(s0)
	lw	a5,44(a5)
	.loc 1 1952 40
	li	a4,1
	sll	a4,a4,a5
	.loc 1 1952 31
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	.loc 1 1952 119
	lw	a5,-24(s0)
	lw	a4,44(a5)
	.loc 1 1952 88
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	.loc 1 1952 137
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 1952 72
	mv	a1,a5
	mv	a0,a4
	call	vListInsertEnd
	j	.L114
.L115:
	.loc 1 1959 46
	lw	a5,-24(s0)
	addi	a5,a5,24
	.loc 1 1959 6
	mv	a1,a5
	lui	a5,%hi(xPendingReadyList)
	addi	a0,a5,%lo(xPendingReadyList)
	call	vListInsertEnd
.L114:
	.loc 1 1969 10
	lw	a5,-20(s0)
	.loc 1 1970 2
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
	.size	xTaskResumeFromISR, .-xTaskResumeFromISR
	.section	.rodata
	.align	2
.LC0:
	.string	"IDLE"
	.section	.text.vTaskStartScheduler,"ax",@progbits
	.align	1
	.globl	vTaskStartScheduler
	.type	vTaskStartScheduler, @function
vTaskStartScheduler:
.LFB20:
	.loc 1 1976 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB5:
	.loc 1 1982 17
	sw	zero,-24(s0)
	.loc 1 1983 16
	sw	zero,-28(s0)
	.loc 1 1988 3
	addi	a3,s0,-32
	addi	a4,s0,-28
	addi	a5,s0,-24
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	vApplicationGetIdleTaskMemory
	.loc 1 1989 21
	lw	a2,-32(s0)
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	mv	a6,a4
	li	a4,0
	li	a3,0
	lui	a1,%hi(.LC0)
	addi	a1,a1,%lo(.LC0)
	lui	a0,%hi(prvIdleTask)
	addi	a0,a0,%lo(prvIdleTask)
	call	xTaskCreateStatic
	mv	a4,a0
	.loc 1 1989 19 discriminator 1
	lui	a5,%hi(xIdleTaskHandle)
	sw	a4,%lo(xIdleTaskHandle)(a5)
	.loc 1 1997 23
	lui	a5,%hi(xIdleTaskHandle)
	lw	a5,%lo(xIdleTaskHandle)(a5)
	.loc 1 1997 5
	beq	a5,zero,.L119
	.loc 1 1999 12
	li	a5,1
	sw	a5,-20(s0)
	j	.L120
.L119:
	.loc 1 2003 12
	sw	zero,-20(s0)
.L120:
.LBE5:
	.loc 1 2020 5
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L121
	.loc 1 2022 14
	call	xTimerCreateTimerTask
	sw	a0,-20(s0)
.L121:
	.loc 1 2031 4
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L122
	.loc 1 2047 3
 #APP
# 2047 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
	.loc 1 2059 24
 #NO_APP
	lui	a5,%hi(xNextTaskUnblockTime)
	li	a4,-1
	sw	a4,%lo(xNextTaskUnblockTime)(a5)
	.loc 1 2060 21
	lui	a5,%hi(xSchedulerRunning)
	li	a4,1
	sw	a4,%lo(xSchedulerRunning)(a5)
	.loc 1 2061 14
	lui	a5,%hi(xTickCount)
	sw	zero,%lo(xTickCount)(a5)
	.loc 1 2075 7
	call	xPortStartScheduler
	.loc 1 2096 1
	j	.L124
.L122:
	.loc 1 2090 5
	lw	a4,-20(s0)
	li	a5,-1
	bne	a4,a5,.L124
	.loc 1 2090 36 discriminator 1
	call	vAssertCalled
.L124:
	.loc 1 2096 1
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
.LFE20:
	.size	vTaskStartScheduler, .-vTaskStartScheduler
	.section	.text.vTaskEndScheduler,"ax",@progbits
	.align	1
	.globl	vTaskEndScheduler
	.type	vTaskEndScheduler, @function
vTaskEndScheduler:
.LFB21:
	.loc 1 2100 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 2104 2
 #APP
# 2104 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
	.loc 1 2105 20
 #NO_APP
	lui	a5,%hi(xSchedulerRunning)
	sw	zero,%lo(xSchedulerRunning)(a5)
	.loc 1 2106 2
	call	vPortEndScheduler
	.loc 1 2107 1
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
.LFE21:
	.size	vTaskEndScheduler, .-vTaskEndScheduler
	.section	.text.vTaskSuspendAll,"ax",@progbits
	.align	1
	.globl	vTaskSuspendAll
	.type	vTaskSuspendAll, @function
vTaskSuspendAll:
.LFB22:
	.loc 1 2111 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 2123 2
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	addi	a4,a5,1
	lui	a5,%hi(uxSchedulerSuspended)
	sw	a4,%lo(uxSchedulerSuspended)(a5)
	.loc 1 2127 2
	.loc 1 2128 1
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
.LFE22:
	.size	vTaskSuspendAll, .-vTaskSuspendAll
	.section	.text.xTaskResumeAll,"ax",@progbits
	.align	1
	.globl	xTaskResumeAll
	.type	xTaskResumeAll, @function
xTaskResumeAll:
.LFB23:
	.loc 1 2195 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 2196 8
	sw	zero,-20(s0)
	.loc 1 2197 12
	sw	zero,-24(s0)
	.loc 1 2201 31
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	.loc 1 2201 4
	bne	a5,zero,.L128
	.loc 1 2201 38 discriminator 1
	call	vAssertCalled
.L128:
	.loc 1 2208 2
	call	vTaskEnterCritical
	.loc 1 2210 3
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(uxSchedulerSuspended)
	sw	a4,%lo(uxSchedulerSuspended)(a5)
	.loc 1 2212 28
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	.loc 1 2212 5
	bne	a5,zero,.L129
	.loc 1 2214 31
	lui	a5,%hi(uxCurrentNumberOfTasks)
	lw	a5,%lo(uxCurrentNumberOfTasks)(a5)
	.loc 1 2214 6
	beq	a5,zero,.L129
	.loc 1 2218 10
	j	.L130
.L132:
	.loc 1 2220 59
	lui	a5,%hi(xPendingReadyList)
	addi	a5,a5,%lo(xPendingReadyList)
	lw	a5,12(a5)
	.loc 1 2220 12
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 2221 29
	lw	a5,-20(s0)
	addi	a5,a5,24
	.loc 1 2221 15
	mv	a0,a5
	call	uxListRemove
	.loc 1 2222 29
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 2222 15
	mv	a0,a5
	call	uxListRemove
	.loc 1 2223 54
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 2223 40
	li	a4,1
	sll	a4,a4,a5
	.loc 1 2223 31
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	.loc 1 2223 119
	lw	a5,-20(s0)
	lw	a4,44(a5)
	.loc 1 2223 88
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	.loc 1 2223 137
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 2223 72
	mv	a1,a5
	mv	a0,a4
	call	vListInsertEnd
	.loc 1 2227 15
	lw	a5,-20(s0)
	lw	a4,44(a5)
	.loc 1 2227 43
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	.loc 1 2227 8
	bltu	a4,a5,.L130
	.loc 1 2229 21
	lui	a5,%hi(xYieldPending)
	li	a4,1
	sw	a4,%lo(xYieldPending)(a5)
.L130:
	.loc 1 2218 38
	lui	a5,%hi(xPendingReadyList)
	addi	a5,a5,%lo(xPendingReadyList)
	lw	a5,0(a5)
	.loc 1 2218 127
	bne	a5,zero,.L132
	.loc 1 2237 7
	lw	a5,-20(s0)
	beq	a5,zero,.L133
	.loc 1 2245 6
	call	prvResetNextTaskUnblockTime
.L133:
.LBB6:
	.loc 1 2253 17
	lui	a5,%hi(xPendedTicks)
	lw	a5,%lo(xPendedTicks)(a5)
	sw	a5,-28(s0)
	.loc 1 2255 8
	lw	a5,-28(s0)
	beq	a5,zero,.L134
.L136:
	.loc 1 2259 12
	call	xTaskIncrementTick
	mv	a5,a0
	.loc 1 2259 10 discriminator 1
	beq	a5,zero,.L135
	.loc 1 2261 23
	lui	a5,%hi(xYieldPending)
	li	a4,1
	sw	a4,%lo(xYieldPending)(a5)
.L135:
	.loc 1 2267 8
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
	.loc 1 2268 30
	lw	a5,-28(s0)
	bne	a5,zero,.L136
	.loc 1 2270 20
	lui	a5,%hi(xPendedTicks)
	sw	zero,%lo(xPendedTicks)(a5)
.L134:
.LBE6:
	.loc 1 2278 23
	lui	a5,%hi(xYieldPending)
	lw	a5,%lo(xYieldPending)(a5)
	.loc 1 2278 7
	beq	a5,zero,.L129
	.loc 1 2282 23
	li	a5,1
	sw	a5,-24(s0)
	.loc 1 2285 6
 #APP
# 2285 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c" 1
	ecall
# 0 "" 2
 #NO_APP
.L129:
	.loc 1 2298 2
	call	vTaskExitCritical
	.loc 1 2300 9
	lw	a5,-24(s0)
	.loc 1 2301 1
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
	.size	xTaskResumeAll, .-xTaskResumeAll
	.section	.text.xTaskGetTickCount,"ax",@progbits
	.align	1
	.globl	xTaskGetTickCount
	.type	xTaskGetTickCount, @function
xTaskGetTickCount:
.LFB24:
	.loc 1 2305 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 2311 10
	lui	a5,%hi(xTickCount)
	lw	a5,%lo(xTickCount)(a5)
	sw	a5,-20(s0)
	.loc 1 2315 9
	lw	a5,-20(s0)
	.loc 1 2316 1
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
	.size	xTaskGetTickCount, .-xTaskGetTickCount
	.section	.text.xTaskGetTickCount2,"ax",@progbits
	.align	1
	.globl	xTaskGetTickCount2
	.type	xTaskGetTickCount2, @function
xTaskGetTickCount2:
.LFB25:
	.loc 1 2319 1
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
	.loc 1 2323 16
	lui	a5,%hi(xTickCount)
	lw	a4,%lo(xTickCount)(a5)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 2324 19
	lui	a5,%hi(xNumOfOverflows)
	lw	a4,%lo(xNumOfOverflows)(a5)
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 2328 12
	li	a5,1
	.loc 1 2329 1
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
	.size	xTaskGetTickCount2, .-xTaskGetTickCount2
	.section	.text.xTaskGetTickCountFromISR,"ax",@progbits
	.align	1
	.globl	xTaskGetTickCountFromISR
	.type	xTaskGetTickCountFromISR, @function
xTaskGetTickCountFromISR:
.LFB26:
	.loc 1 2334 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 2354 25
	sw	zero,-20(s0)
	.loc 1 2356 11
	lui	a5,%hi(xTickCount)
	lw	a5,%lo(xTickCount)(a5)
	sw	a5,-24(s0)
	.loc 1 2360 9
	lw	a5,-24(s0)
	.loc 1 2361 1
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
.LFE26:
	.size	xTaskGetTickCountFromISR, .-xTaskGetTickCountFromISR
	.section	.text.uxTaskGetNumberOfTasks,"ax",@progbits
	.align	1
	.globl	uxTaskGetNumberOfTasks
	.type	uxTaskGetNumberOfTasks, @function
uxTaskGetNumberOfTasks:
.LFB27:
	.loc 1 2365 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 2368 9
	lui	a5,%hi(uxCurrentNumberOfTasks)
	lw	a5,%lo(uxCurrentNumberOfTasks)(a5)
	.loc 1 2369 1
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
.LFE27:
	.size	uxTaskGetNumberOfTasks, .-uxTaskGetNumberOfTasks
	.section	.text.pcTaskGetName,"ax",@progbits
	.align	1
	.globl	pcTaskGetName
	.type	pcTaskGetName, @function
pcTaskGetName:
.LFB28:
	.loc 1 2373 1
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
	.loc 1 2378 26
	lw	a5,-36(s0)
	bne	a5,zero,.L147
	.loc 1 2378 8 discriminator 1
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	sw	a5,-20(s0)
	j	.L148
.L147:
	.loc 1 2378 8 is_stmt 0 discriminator 2
	lw	a5,-36(s0)
	sw	a5,-20(s0)
.L148:
	.loc 1 2379 4 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L149
	.loc 1 2379 23 discriminator 1
	call	vAssertCalled
.L149:
	.loc 1 2380 9
	lw	a5,-20(s0)
	addi	a5,a5,52
	.loc 1 2381 1
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
.LFE28:
	.size	pcTaskGetName, .-pcTaskGetName
	.section	.text.uxTaskGetSystemState,"ax",@progbits
	.align	1
	.globl	uxTaskGetSystemState
	.type	uxTaskGetSystemState, @function
uxTaskGetSystemState:
.LFB29:
	.loc 1 2520 2
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
	.loc 1 2521 14
	sw	zero,-20(s0)
	.loc 1 2521 26
	li	a5,32
	sw	a5,-24(s0)
	.loc 1 2523 3
	call	vTaskSuspendAll
	.loc 1 2526 20
	lui	a5,%hi(uxCurrentNumberOfTasks)
	lw	a5,%lo(uxCurrentNumberOfTasks)(a5)
	.loc 1 2526 6
	lw	a4,-40(s0)
	bltu	a4,a5,.L152
.L153:
	.loc 1 2532 13
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 2533 66
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 2533 46
	lw	a5,-36(s0)
	add	a3,a5,a4
	.loc 1 2533 16
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a5,a5,a4
	li	a2,1
	mv	a1,a5
	mv	a0,a3
	call	prvListTasksWithinSingleList
	mv	a4,a0
	.loc 1 2533 13 discriminator 1
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 2535 22 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L153
	.loc 1 2539 65
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 2539 45
	lw	a5,-36(s0)
	add	a4,a5,a4
	.loc 1 2539 15
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	li	a2,2
	mv	a1,a5
	mv	a0,a4
	call	prvListTasksWithinSingleList
	mv	a4,a0
	.loc 1 2539 12 discriminator 1
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 2540 65
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 2540 45
	lw	a5,-36(s0)
	add	a4,a5,a4
	.loc 1 2540 15
	lui	a5,%hi(pxOverflowDelayedTaskList)
	lw	a5,%lo(pxOverflowDelayedTaskList)(a5)
	li	a2,2
	mv	a1,a5
	mv	a0,a4
	call	prvListTasksWithinSingleList
	mv	a4,a0
	.loc 1 2540 12 discriminator 1
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 2546 66
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 2546 46
	lw	a5,-36(s0)
	add	a4,a5,a4
	.loc 1 2546 16
	li	a2,4
	lui	a5,%hi(xTasksWaitingTermination)
	addi	a1,a5,%lo(xTasksWaitingTermination)
	mv	a0,a4
	call	prvListTasksWithinSingleList
	mv	a4,a0
	.loc 1 2546 13 discriminator 1
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 2554 66
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 2554 46
	lw	a5,-36(s0)
	add	a4,a5,a4
	.loc 1 2554 16
	li	a2,3
	lui	a5,%hi(xSuspendedTaskList)
	addi	a1,a5,%lo(xSuspendedTaskList)
	mv	a0,a4
	call	prvListTasksWithinSingleList
	mv	a4,a0
	.loc 1 2554 13 discriminator 1
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 2571 8
	lw	a5,-44(s0)
	beq	a5,zero,.L152
	.loc 1 2573 24
	lw	a5,-44(s0)
	sw	zero,0(a5)
.L152:
	.loc 1 2583 12
	call	xTaskResumeAll
	.loc 1 2585 10
	lw	a5,-20(s0)
	.loc 1 2586 2
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
	.size	uxTaskGetSystemState, .-uxTaskGetSystemState
	.section	.text.xTaskCatchUpTicks,"ax",@progbits
	.align	1
	.globl	xTaskCatchUpTicks
	.type	xTaskCatchUpTicks, @function
xTaskCatchUpTicks:
.LFB30:
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
	.loc 1 2625 12
	sw	zero,-20(s0)
	.loc 1 2629 36
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	.loc 1 2629 4
	beq	a5,zero,.L156
	.loc 1 2629 43 discriminator 1
	call	vAssertCalled
.L156:
	.loc 1 2633 2
	call	vTaskSuspendAll
	.loc 1 2634 15
	lui	a5,%hi(xPendedTicks)
	lw	a4,%lo(xPendedTicks)(a5)
	lw	a5,-36(s0)
	add	a4,a4,a5
	lui	a5,%hi(xPendedTicks)
	sw	a4,%lo(xPendedTicks)(a5)
	.loc 1 2635 19
	call	xTaskResumeAll
	sw	a0,-20(s0)
	.loc 1 2637 9
	lw	a5,-20(s0)
	.loc 1 2638 1
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
	.size	xTaskCatchUpTicks, .-xTaskCatchUpTicks
	.section	.text.vTaskStepTickSafe,"ax",@progbits
	.align	1
	.globl	vTaskStepTickSafe
	.type	vTaskStepTickSafe, @function
vTaskStepTickSafe:
.LFB31:
	.loc 1 2642 1
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
	.loc 1 2644 46
	lui	a5,%hi(xTickCount)
	lw	a5,%lo(xTickCount)(a5)
	.loc 1 2644 16
	neg	a5,a5
	sw	a5,-20(s0)
	.loc 1 2646 7
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	bltu	a4,a5,.L159
.L163:
	.loc 1 2650 42
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	lw	a5,0(a5)
	.loc 1 2650 15
	beq	a5,zero,.L166
	.loc 1 2661 52
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	.loc 1 2661 65
	lw	a5,12(a5)
	.loc 1 2661 23
	lw	a5,12(a5)
	sw	a5,-24(s0)
	.loc 1 2664 40
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 2664 26
	mv	a0,a5
	call	uxListRemove
	.loc 1 2668 53
	lw	a5,-24(s0)
	lw	a5,40(a5)
	.loc 1 2668 19
	beq	a5,zero,.L162
	.loc 1 2670 44
	lw	a5,-24(s0)
	addi	a5,a5,24
	.loc 1 2670 30
	mv	a0,a5
	call	uxListRemove
.L162:
	.loc 1 2679 65
	lw	a5,-24(s0)
	lw	a5,44(a5)
	.loc 1 2679 51
	li	a4,1
	sll	a4,a4,a5
	.loc 1 2679 42
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	.loc 1 2679 130
	lw	a5,-24(s0)
	lw	a4,44(a5)
	.loc 1 2679 99
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	.loc 1 2679 148
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 2679 83
	mv	a1,a5
	mv	a0,a4
	call	vListInsertEnd
	.loc 1 2650 15
	j	.L163
.L166:
	.loc 1 2653 17
	nop
.LBB7:
	.loc 1 2683 60
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	lw	a5,0(a5)
	.loc 1 2683 29
	beq	a5,zero,.L164
	.loc 1 2683 160 discriminator 1
	call	vAssertCalled
.L164:
	.loc 1 2683 184 discriminator 4
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	sw	a5,-28(s0)
	.loc 1 2683 223 discriminator 4
	lui	a5,%hi(pxOverflowDelayedTaskList)
	lw	a4,%lo(pxOverflowDelayedTaskList)(a5)
	lui	a5,%hi(pxDelayedTaskList)
	sw	a4,%lo(pxDelayedTaskList)(a5)
	.loc 1 2683 278 discriminator 4
	lui	a5,%hi(pxOverflowDelayedTaskList)
	lw	a4,-28(s0)
	sw	a4,%lo(pxOverflowDelayedTaskList)(a5)
	.loc 1 2683 303 discriminator 4
	lui	a5,%hi(xNumOfOverflows)
	lw	a5,%lo(xNumOfOverflows)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xNumOfOverflows)
	sw	a4,%lo(xNumOfOverflows)(a5)
	.loc 1 2683 307 discriminator 4
	call	prvResetNextTaskUnblockTime
.L159:
.LBE7:
	.loc 1 2690 16
	lui	a5,%hi(xTickCount)
	lw	a4,%lo(xTickCount)(a5)
	lw	a5,-36(s0)
	add	a4,a4,a5
	lui	a5,%hi(xTickCount)
	sw	a4,%lo(xTickCount)(a5)
	.loc 1 2692 1
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
.LFE31:
	.size	vTaskStepTickSafe, .-vTaskStepTickSafe
	.section	.text.xTaskIncrementTick,"ax",@progbits
	.align	1
	.globl	xTaskIncrementTick
	.type	xTaskIncrementTick, @function
xTaskIncrementTick:
.LFB32:
	.loc 1 2776 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 2779 12
	sw	zero,-20(s0)
	.loc 1 2784 9
	addi	a5,s0,-40
	mv	a0,a5
	call	bl_sys_time_sync_state
	mv	a5,a0
	.loc 1 2784 7 discriminator 1
	bne	a5,zero,.L168
	.loc 1 2786 16
	li	a5,0
	j	.L181
.L168:
	.loc 1 2793 27
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	.loc 1 2793 4
	bne	a5,zero,.L170
.LBB8:
	.loc 1 2797 49
	lui	a5,%hi(xTickCount)
	lw	a5,%lo(xTickCount)(a5)
	.loc 1 2797 20
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 1 2801 14
	lui	a5,%hi(xTickCount)
	lw	a4,-24(s0)
	sw	a4,%lo(xTickCount)(a5)
	.loc 1 2803 5
	lw	a5,-24(s0)
	bne	a5,zero,.L171
.LBB9:
	.loc 1 2805 55
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	lw	a5,0(a5)
	.loc 1 2805 24
	beq	a5,zero,.L172
	.loc 1 2805 155 discriminator 1
	call	vAssertCalled
.L172:
	.loc 1 2805 179 discriminator 4
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	sw	a5,-28(s0)
	.loc 1 2805 218 discriminator 4
	lui	a5,%hi(pxOverflowDelayedTaskList)
	lw	a4,%lo(pxOverflowDelayedTaskList)(a5)
	lui	a5,%hi(pxDelayedTaskList)
	sw	a4,%lo(pxDelayedTaskList)(a5)
	.loc 1 2805 273 discriminator 4
	lui	a5,%hi(pxOverflowDelayedTaskList)
	lw	a4,-28(s0)
	sw	a4,%lo(pxOverflowDelayedTaskList)(a5)
	.loc 1 2805 298 discriminator 4
	lui	a5,%hi(xNumOfOverflows)
	lw	a5,%lo(xNumOfOverflows)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xNumOfOverflows)
	sw	a4,%lo(xNumOfOverflows)(a5)
	.loc 1 2805 302 discriminator 4
	call	prvResetNextTaskUnblockTime
.L171:
.LBE9:
	.loc 1 2816 23
	lui	a5,%hi(xNextTaskUnblockTime)
	lw	a5,%lo(xNextTaskUnblockTime)(a5)
	.loc 1 2816 5
	lw	a4,-24(s0)
	bltu	a4,a5,.L173
.L178:
	.loc 1 2820 34
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	lw	a5,0(a5)
	.loc 1 2820 7
	bne	a5,zero,.L174
	.loc 1 2827 27
	lui	a5,%hi(xNextTaskUnblockTime)
	li	a4,-1
	sw	a4,%lo(xNextTaskUnblockTime)(a5)
	.loc 1 2828 6
	j	.L173
.L174:
	.loc 1 2836 41
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	.loc 1 2836 54
	lw	a5,12(a5)
	.loc 1 2836 12
	lw	a5,12(a5)
	sw	a5,-32(s0)
	.loc 1 2837 17
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	.loc 1 2839 8
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	bgeu	a4,a5,.L175
	.loc 1 2846 28
	lui	a5,%hi(xNextTaskUnblockTime)
	lw	a4,-36(s0)
	sw	a4,%lo(xNextTaskUnblockTime)(a5)
	.loc 1 2847 7
	j	.L173
.L175:
	.loc 1 2855 29
	lw	a5,-32(s0)
	addi	a5,a5,4
	.loc 1 2855 15
	mv	a0,a5
	call	uxListRemove
	.loc 1 2859 42
	lw	a5,-32(s0)
	lw	a5,40(a5)
	.loc 1 2859 8
	beq	a5,zero,.L176
	.loc 1 2861 30
	lw	a5,-32(s0)
	addi	a5,a5,24
	.loc 1 2861 16
	mv	a0,a5
	call	uxListRemove
.L176:
	.loc 1 2870 54
	lw	a5,-32(s0)
	lw	a5,44(a5)
	.loc 1 2870 40
	li	a4,1
	sll	a4,a4,a5
	.loc 1 2870 31
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	.loc 1 2870 119
	lw	a5,-32(s0)
	lw	a4,44(a5)
	.loc 1 2870 88
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	.loc 1 2870 137
	lw	a5,-32(s0)
	addi	a5,a5,4
	.loc 1 2870 72
	mv	a1,a5
	mv	a0,a4
	call	vListInsertEnd
	.loc 1 2880 16
	lw	a5,-32(s0)
	lw	a4,44(a5)
	.loc 1 2880 44
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	.loc 1 2880 9
	bltu	a4,a5,.L178
	.loc 1 2882 24
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 2820 7
	j	.L178
.L173:
	.loc 1 2899 46
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,44(a5)
	.loc 1 2899 64
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,0(a5)
	.loc 1 2899 6
	li	a5,1
	bleu	a4,a5,.L179
	.loc 1 2901 21
	li	a5,1
	sw	a5,-20(s0)
.L179:
	.loc 1 2927 22
	lui	a5,%hi(xYieldPending)
	lw	a5,%lo(xYieldPending)(a5)
	.loc 1 2927 6
	beq	a5,zero,.L180
	.loc 1 2929 21
	li	a5,1
	sw	a5,-20(s0)
	j	.L180
.L170:
.LBE8:
	.loc 1 2940 3
	lui	a5,%hi(xPendedTicks)
	lw	a5,%lo(xPendedTicks)(a5)
	addi	a4,a5,1
	lui	a5,%hi(xPendedTicks)
	sw	a4,%lo(xPendedTicks)(a5)
.L180:
	.loc 1 2951 9
	lw	a5,-20(s0)
.L181:
	.loc 1 2952 1
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
	.size	xTaskIncrementTick, .-xTaskIncrementTick
	.section	.text.vTaskSwitchContext,"ax",@progbits
	.align	1
	.globl	vTaskSwitchContext
	.type	vTaskSwitchContext, @function
vTaskSwitchContext:
.LFB33:
	.loc 1 3066 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 3067 27
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	.loc 1 3067 4
	beq	a5,zero,.L183
	.loc 1 3071 17
	lui	a5,%hi(xYieldPending)
	li	a4,1
	sw	a4,%lo(xYieldPending)(a5)
	.loc 1 3137 1
	j	.L189
.L183:
	.loc 1 3075 17
	lui	a5,%hi(xYieldPending)
	sw	zero,%lo(xYieldPending)(a5)
.LBB10:
	.loc 1 3106 66
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 3106 28
	lw	a5,48(a5)
	sw	a5,-20(s0)
	.loc 1 3106 92
	li	a5,-1515872256
	addi	a5,a5,1445
	sw	a5,-24(s0)
	.loc 1 3106 146
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 3106 134
	lw	a4,-24(s0)
	bne	a4,a5,.L185
	.loc 1 3106 183 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	.loc 1 3106 170 discriminator 2
	lw	a4,-24(s0)
	bne	a4,a5,.L185
	.loc 1 3106 220 discriminator 4
	lw	a5,-20(s0)
	addi	a5,a5,8
	lw	a5,0(a5)
	.loc 1 3106 207 discriminator 4
	lw	a4,-24(s0)
	bne	a4,a5,.L185
	.loc 1 3106 257 discriminator 6
	lw	a5,-20(s0)
	addi	a5,a5,12
	lw	a5,0(a5)
	.loc 1 3106 244 discriminator 6
	lw	a4,-24(s0)
	beq	a4,a5,.L186
.L185:
	.loc 1 3106 285 discriminator 7
	lui	a5,%hi(pxCurrentTCB)
	lw	a4,%lo(pxCurrentTCB)(a5)
	.loc 1 3106 359 discriminator 7
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	addi	a5,a5,52
	.loc 1 3106 285 discriminator 7
	mv	a1,a5
	mv	a0,a4
	call	vApplicationStackOverflowHook
.L186:
.LBE10:
.LBB11:
	.loc 1 3117 57
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	mv	a0,a5
	call	__clzsi2
	mv	a5,a0
	.loc 1 3117 57 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 1 3117 46 is_stmt 1 discriminator 1
	li	a5,31
	sub	a5,a5,a4
	sw	a5,-28(s0)
	.loc 1 3117 147 discriminator 1
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 3117 98 discriminator 1
	bne	a5,zero,.L187
	.loc 1 3117 180 discriminator 2
	call	vAssertCalled
.L187:
.LBB12:
	.loc 1 3117 214 discriminator 5
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a5,a5,a4
	sw	a5,-32(s0)
	.loc 1 3117 315 discriminator 5
	lw	a5,-32(s0)
	lw	a5,4(a5)
	.loc 1 3117 324 discriminator 5
	lw	a4,4(a5)
	.loc 1 3117 298 discriminator 5
	lw	a5,-32(s0)
	sw	a4,4(a5)
	.loc 1 3117 364 discriminator 5
	lw	a5,-32(s0)
	lw	a4,4(a5)
	.loc 1 3117 388 discriminator 5
	lw	a5,-32(s0)
	addi	a5,a5,8
	.loc 1 3117 336 discriminator 5
	bne	a4,a5,.L188
	.loc 1 3117 465 discriminator 6
	lw	a5,-32(s0)
	lw	a5,4(a5)
	.loc 1 3117 474 discriminator 6
	lw	a4,4(a5)
	.loc 1 3117 448 discriminator 6
	lw	a5,-32(s0)
	sw	a4,4(a5)
.L188:
	.loc 1 3117 520 discriminator 8
	lw	a5,-32(s0)
	lw	a5,4(a5)
	.loc 1 3117 529 discriminator 8
	lw	a4,12(a5)
	.loc 1 3117 503 discriminator 8
	lui	a5,%hi(pxCurrentTCB)
	sw	a4,%lo(pxCurrentTCB)(a5)
.L189:
.LBE12:
.LBE11:
	.loc 1 3137 1
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
.LFE33:
	.size	vTaskSwitchContext, .-vTaskSwitchContext
	.section	.text.vTaskPlaceOnEventList,"ax",@progbits
	.align	1
	.globl	vTaskPlaceOnEventList
	.type	vTaskPlaceOnEventList, @function
vTaskPlaceOnEventList:
.LFB34:
	.loc 1 3141 1
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
	.loc 1 3142 4
	lw	a5,-20(s0)
	bne	a5,zero,.L191
	.loc 1 3142 29 discriminator 1
	call	vAssertCalled
.L191:
	.loc 1 3151 43
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 3151 28
	addi	a5,a5,24
	.loc 1 3151 2
	mv	a1,a5
	lw	a0,-20(s0)
	call	vListInsert
	.loc 1 3153 2
	li	a1,1
	lw	a0,-24(s0)
	call	prvAddCurrentTaskToDelayedList
	.loc 1 3154 1
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
	.size	vTaskPlaceOnEventList, .-vTaskPlaceOnEventList
	.section	.text.vTaskPlaceOnUnorderedEventList,"ax",@progbits
	.align	1
	.globl	vTaskPlaceOnUnorderedEventList
	.type	vTaskPlaceOnUnorderedEventList, @function
vTaskPlaceOnUnorderedEventList:
.LFB35:
	.loc 1 3158 1
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
	.loc 1 3159 4
	lw	a5,-20(s0)
	bne	a5,zero,.L193
	.loc 1 3159 29 discriminator 1
	call	vAssertCalled
.L193:
	.loc 1 3163 36
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	.loc 1 3163 4
	bne	a5,zero,.L194
	.loc 1 3163 43 discriminator 1
	call	vAssertCalled
.L194:
	.loc 1 3168 21
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 3168 69
	lw	a3,-24(s0)
	li	a4,-2147483648
	or	a4,a3,a4
	.loc 1 3168 54
	sw	a4,24(a5)
	.loc 1 3175 46
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 3175 31
	addi	a5,a5,24
	.loc 1 3175 2
	mv	a1,a5
	lw	a0,-20(s0)
	call	vListInsertEnd
	.loc 1 3177 2
	li	a1,1
	lw	a0,-28(s0)
	call	prvAddCurrentTaskToDelayedList
	.loc 1 3178 1
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
.LFE35:
	.size	vTaskPlaceOnUnorderedEventList, .-vTaskPlaceOnUnorderedEventList
	.section	.text.vTaskPlaceOnEventListRestricted,"ax",@progbits
	.align	1
	.globl	vTaskPlaceOnEventListRestricted
	.type	vTaskPlaceOnEventListRestricted, @function
vTaskPlaceOnEventListRestricted:
.LFB36:
	.loc 1 3184 2
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
	.loc 1 3185 5
	lw	a5,-20(s0)
	bne	a5,zero,.L196
	.loc 1 3185 30 discriminator 1
	call	vAssertCalled
.L196:
	.loc 1 3197 47
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 3197 32
	addi	a5,a5,24
	.loc 1 3197 3
	mv	a1,a5
	lw	a0,-20(s0)
	call	vListInsertEnd
	.loc 1 3202 5
	lw	a5,-28(s0)
	beq	a5,zero,.L197
	.loc 1 3204 17
	li	a5,-1
	sw	a5,-24(s0)
.L197:
	.loc 1 3208 3
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	prvAddCurrentTaskToDelayedList
	.loc 1 3209 2
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
.LFE36:
	.size	vTaskPlaceOnEventListRestricted, .-vTaskPlaceOnEventListRestricted
	.section	.text.xTaskRemoveFromEventList,"ax",@progbits
	.align	1
	.globl	xTaskRemoveFromEventList
	.type	xTaskRemoveFromEventList, @function
xTaskRemoveFromEventList:
.LFB37:
	.loc 1 3215 1
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
	.loc 1 3232 53
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 3232 17
	lw	a5,12(a5)
	sw	a5,-24(s0)
	.loc 1 3233 4
	lw	a5,-24(s0)
	bne	a5,zero,.L199
	.loc 1 3233 32 discriminator 1
	call	vAssertCalled
.L199:
	.loc 1 3234 25
	lw	a5,-24(s0)
	addi	a5,a5,24
	.loc 1 3234 11
	mv	a0,a5
	call	uxListRemove
	.loc 1 3236 27
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	.loc 1 3236 4
	bne	a5,zero,.L200
	.loc 1 3238 26
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 3238 12
	mv	a0,a5
	call	uxListRemove
	.loc 1 3239 60
	lw	a5,-24(s0)
	lw	a5,44(a5)
	.loc 1 3239 37
	li	a4,1
	sll	a4,a4,a5
	.loc 1 3239 28
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	.loc 1 3239 134
	lw	a5,-24(s0)
	lw	a4,44(a5)
	.loc 1 3239 94
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	.loc 1 3239 152
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 3239 78
	mv	a1,a5
	mv	a0,a4
	call	vListInsertEnd
	j	.L201
.L200:
	.loc 1 3259 43
	lw	a5,-24(s0)
	addi	a5,a5,24
	.loc 1 3259 3
	mv	a1,a5
	lui	a5,%hi(xPendingReadyList)
	addi	a0,a5,%lo(xPendingReadyList)
	call	vListInsertEnd
.L201:
	.loc 1 3262 20
	lw	a5,-24(s0)
	lw	a4,44(a5)
	.loc 1 3262 47
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	.loc 1 3262 4
	bleu	a4,a5,.L202
	.loc 1 3267 11
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 3271 17
	lui	a5,%hi(xYieldPending)
	li	a4,1
	sw	a4,%lo(xYieldPending)(a5)
	j	.L203
.L202:
	.loc 1 3275 11
	sw	zero,-20(s0)
.L203:
	.loc 1 3278 9
	lw	a5,-20(s0)
	.loc 1 3279 1
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
	.size	xTaskRemoveFromEventList, .-xTaskRemoveFromEventList
	.section	.text.vTaskRemoveFromUnorderedEventList,"ax",@progbits
	.align	1
	.globl	vTaskRemoveFromUnorderedEventList
	.type	vTaskRemoveFromUnorderedEventList, @function
vTaskRemoveFromUnorderedEventList:
.LFB38:
	.loc 1 3283 1
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
	.loc 1 3288 55
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	.loc 1 3288 4
	bne	a5,zero,.L206
	.loc 1 3288 62 discriminator 1
	call	vAssertCalled
.L206:
	.loc 1 3291 51
	lw	a4,-40(s0)
	li	a5,-2147483648
	or	a4,a4,a5
	.loc 1 3291 36
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 3295 17
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 3296 4
	lw	a5,-20(s0)
	bne	a5,zero,.L207
	.loc 1 3296 32 discriminator 1
	call	vAssertCalled
.L207:
	.loc 1 3297 11
	lw	a0,-36(s0)
	call	uxListRemove
	.loc 1 3316 25
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 3316 11
	mv	a0,a5
	call	uxListRemove
	.loc 1 3317 59
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 3317 36
	li	a4,1
	sll	a4,a4,a5
	.loc 1 3317 27
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	.loc 1 3317 133
	lw	a5,-20(s0)
	lw	a4,44(a5)
	.loc 1 3317 93
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	.loc 1 3317 151
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 3317 77
	mv	a1,a5
	mv	a0,a4
	call	vListInsertEnd
	.loc 1 3319 20
	lw	a5,-20(s0)
	lw	a4,44(a5)
	.loc 1 3319 47
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	.loc 1 3319 4
	bleu	a4,a5,.L209
	.loc 1 3325 17
	lui	a5,%hi(xYieldPending)
	li	a4,1
	sw	a4,%lo(xYieldPending)(a5)
.L209:
	.loc 1 3327 1
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
	.size	vTaskRemoveFromUnorderedEventList, .-vTaskRemoveFromUnorderedEventList
	.section	.text.vTaskSetTimeOutState,"ax",@progbits
	.align	1
	.globl	vTaskSetTimeOutState
	.type	vTaskSetTimeOutState, @function
vTaskSetTimeOutState:
.LFB39:
	.loc 1 3331 1
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
	.loc 1 3332 4
	lw	a5,-20(s0)
	bne	a5,zero,.L211
	.loc 1 3332 27 discriminator 1
	call	vAssertCalled
.L211:
	.loc 1 3333 2
	call	vTaskEnterCritical
	.loc 1 3335 29
	lui	a5,%hi(xNumOfOverflows)
	lw	a4,%lo(xNumOfOverflows)(a5)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 3336 30
	lui	a5,%hi(xTickCount)
	lw	a4,%lo(xTickCount)(a5)
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 3338 2
	call	vTaskExitCritical
	.loc 1 3339 1
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
	.size	vTaskSetTimeOutState, .-vTaskSetTimeOutState
	.section	.text.vTaskInternalSetTimeOutState,"ax",@progbits
	.align	1
	.globl	vTaskInternalSetTimeOutState
	.type	vTaskInternalSetTimeOutState, @function
vTaskInternalSetTimeOutState:
.LFB40:
	.loc 1 3343 1
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
	.loc 1 3345 28
	lui	a5,%hi(xNumOfOverflows)
	lw	a4,%lo(xNumOfOverflows)(a5)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 3346 29
	lui	a5,%hi(xTickCount)
	lw	a4,%lo(xTickCount)(a5)
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 3347 1
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
.LFE40:
	.size	vTaskInternalSetTimeOutState, .-vTaskInternalSetTimeOutState
	.section	.text.xTaskCheckForTimeOut,"ax",@progbits
	.align	1
	.globl	xTaskCheckForTimeOut
	.type	xTaskCheckForTimeOut, @function
xTaskCheckForTimeOut:
.LFB41:
	.loc 1 3351 1
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
	.loc 1 3354 4
	lw	a5,-36(s0)
	bne	a5,zero,.L214
	.loc 1 3354 27 discriminator 1
	call	vAssertCalled
.L214:
	.loc 1 3355 4
	lw	a5,-40(s0)
	bne	a5,zero,.L215
	.loc 1 3355 31 discriminator 1
	call	vAssertCalled
.L215:
	.loc 1 3357 2
	call	vTaskEnterCritical
.LBB13:
	.loc 1 3360 20
	lui	a5,%hi(xTickCount)
	lw	a5,%lo(xTickCount)(a5)
	sw	a5,-24(s0)
	.loc 1 3361 62
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 3361 20
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 3375 8
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 1 3375 6
	li	a5,-1
	bne	a4,a5,.L216
	.loc 1 3380 13
	sw	zero,-20(s0)
	j	.L217
.L216:
	.loc 1 3385 37
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 3385 25
	lui	a5,%hi(xNumOfOverflows)
	lw	a5,%lo(xNumOfOverflows)(a5)
	.loc 1 3385 5
	beq	a4,a5,.L218
	.loc 1 3385 89 discriminator 1
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 3385 56 discriminator 1
	lw	a4,-24(s0)
	bltu	a4,a5,.L218
	.loc 1 3392 12
	li	a5,1
	sw	a5,-20(s0)
	j	.L217
.L218:
	.loc 1 3394 27
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 3394 10
	lw	a4,-28(s0)
	bgeu	a4,a5,.L219
	.loc 1 3397 4
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 1 3397 19
	lw	a5,-28(s0)
	sub	a4,a4,a5
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 3398 4
	lw	a0,-36(s0)
	call	vTaskInternalSetTimeOutState
	.loc 1 3399 12
	sw	zero,-20(s0)
	j	.L217
.L219:
	.loc 1 3403 19
	lw	a5,-40(s0)
	sw	zero,0(a5)
	.loc 1 3404 12
	li	a5,1
	sw	a5,-20(s0)
.L217:
.LBE13:
	.loc 1 3407 2
	call	vTaskExitCritical
	.loc 1 3409 9
	lw	a5,-20(s0)
	.loc 1 3410 1
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
.LFE41:
	.size	xTaskCheckForTimeOut, .-xTaskCheckForTimeOut
	.section	.text.vTaskMissedYield,"ax",@progbits
	.align	1
	.globl	vTaskMissedYield
	.type	vTaskMissedYield, @function
vTaskMissedYield:
.LFB42:
	.loc 1 3414 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 3415 16
	lui	a5,%hi(xYieldPending)
	li	a4,1
	sw	a4,%lo(xYieldPending)(a5)
	.loc 1 3416 1
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
.LFE42:
	.size	vTaskMissedYield, .-vTaskMissedYield
	.section	.text.uxTaskGetTaskNumber,"ax",@progbits
	.align	1
	.globl	uxTaskGetTaskNumber
	.type	uxTaskGetTaskNumber, @function
uxTaskGetTaskNumber:
.LFB43:
	.loc 1 3422 2
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
	.loc 1 3426 5
	lw	a5,-36(s0)
	beq	a5,zero,.L223
	.loc 1 3428 10
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 3429 13
	lw	a5,-24(s0)
	lw	a5,76(a5)
	sw	a5,-20(s0)
	j	.L224
.L223:
	.loc 1 3433 13
	sw	zero,-20(s0)
.L224:
	.loc 1 3436 10
	lw	a5,-20(s0)
	.loc 1 3437 2
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
.LFE43:
	.size	uxTaskGetTaskNumber, .-uxTaskGetTaskNumber
	.section	.text.vTaskSetTaskNumber,"ax",@progbits
	.align	1
	.globl	vTaskSetTaskNumber
	.type	vTaskSetTaskNumber, @function
vTaskSetTaskNumber:
.LFB44:
	.loc 1 3445 2
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
	.loc 1 3448 5
	lw	a5,-36(s0)
	beq	a5,zero,.L228
	.loc 1 3450 10
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 3451 24
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,76(a5)
.L228:
	.loc 1 3453 2
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
.LFE44:
	.size	vTaskSetTaskNumber, .-vTaskSetTaskNumber
	.section	.text.prvIdleTask,"ax",@progbits
	.align	1
	.type	prvIdleTask, @function
prvIdleTask:
.LFB45:
	.loc 1 3469 1
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
.L231:
	.loc 1 3485 3
	call	prvCheckTasksWaitingTermination
	.loc 1 3508 62
	lui	a5,%hi(pxReadyTasksLists)
	addi	a5,a5,%lo(pxReadyTasksLists)
	lw	a4,0(a5)
	.loc 1 3508 6
	li	a5,1
	bleu	a4,a5,.L230
	.loc 1 3510 5
 #APP
# 3510 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c" 1
	ecall
# 0 "" 2
 #NO_APP
.L230:
.LBB14:
	.loc 1 3528 4
	call	vApplicationIdleHook
.LBE14:
	.loc 1 3485 3
	j	.L231
	.cfi_endproc
.LFE45:
	.size	prvIdleTask, .-prvIdleTask
	.section	.text.vTaskSetThreadLocalStoragePointer,"ax",@progbits
	.align	1
	.globl	vTaskSetThreadLocalStoragePointer
	.type	vTaskSetThreadLocalStoragePointer, @function
vTaskSetThreadLocalStoragePointer:
.LFB46:
	.loc 1 3630 2
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
	.loc 1 3633 11
	lw	a5,-40(s0)
	blt	a5,zero,.L237
	.loc 1 3633 29 discriminator 1
	lw	a5,-40(s0)
	bgt	a5,zero,.L237
	.loc 1 3635 28
	lw	a5,-36(s0)
	bne	a5,zero,.L234
	.loc 1 3635 10 discriminator 1
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	sw	a5,-20(s0)
	j	.L235
.L234:
	.loc 1 3635 10 is_stmt 0 discriminator 2
	lw	a5,-36(s0)
	sw	a5,-20(s0)
.L235:
	.loc 1 3636 6 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L236
	.loc 1 3636 12 discriminator 1
	call	vAssertCalled
.L236:
	.loc 1 3637 50
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-44(s0)
	sw	a4,8(a5)
.L237:
	.loc 1 3639 2
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
	.size	vTaskSetThreadLocalStoragePointer, .-vTaskSetThreadLocalStoragePointer
	.section	.text.pvTaskGetThreadLocalStoragePointer,"ax",@progbits
	.align	1
	.globl	pvTaskGetThreadLocalStoragePointer
	.type	pvTaskGetThreadLocalStoragePointer, @function
pvTaskGetThreadLocalStoragePointer:
.LFB47:
	.loc 1 3647 2
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
	.loc 1 3648 8
	sw	zero,-20(s0)
	.loc 1 3651 11
	lw	a5,-40(s0)
	blt	a5,zero,.L239
	.loc 1 3651 29 discriminator 1
	lw	a5,-40(s0)
	bgt	a5,zero,.L239
	.loc 1 3654 28
	lw	a5,-36(s0)
	bne	a5,zero,.L240
	.loc 1 3654 10 discriminator 1
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	sw	a5,-24(s0)
	j	.L241
.L240:
	.loc 1 3654 10 is_stmt 0 discriminator 2
	lw	a5,-36(s0)
	sw	a5,-24(s0)
.L241:
	.loc 1 3655 13 is_stmt 1
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	addi	a5,a5,20
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,8(a5)
	sw	a5,-20(s0)
	j	.L242
.L239:
	.loc 1 3659 13
	sw	zero,-20(s0)
.L242:
	.loc 1 3662 10
	lw	a5,-20(s0)
	.loc 1 3663 2
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
	.size	pvTaskGetThreadLocalStoragePointer, .-pvTaskGetThreadLocalStoragePointer
	.section	.text.prvInitialiseTaskLists,"ax",@progbits
	.align	1
	.type	prvInitialiseTaskLists, @function
prvInitialiseTaskLists:
.LFB48:
	.loc 1 3685 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 3688 18
	sw	zero,-20(s0)
	.loc 1 3688 2
	j	.L245
.L246:
	.loc 1 3690 20
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a5,a5,a4
	.loc 1 3690 3
	mv	a0,a5
	call	vListInitialise
	.loc 1 3688 87 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L245:
	.loc 1 3688 51 discriminator 1
	lw	a4,-20(s0)
	li	a5,31
	bleu	a4,a5,.L246
	.loc 1 3693 2
	lui	a5,%hi(xDelayedTaskList1)
	addi	a0,a5,%lo(xDelayedTaskList1)
	call	vListInitialise
	.loc 1 3694 2
	lui	a5,%hi(xDelayedTaskList2)
	addi	a0,a5,%lo(xDelayedTaskList2)
	call	vListInitialise
	.loc 1 3695 2
	lui	a5,%hi(xPendingReadyList)
	addi	a0,a5,%lo(xPendingReadyList)
	call	vListInitialise
	.loc 1 3699 3
	lui	a5,%hi(xTasksWaitingTermination)
	addi	a0,a5,%lo(xTasksWaitingTermination)
	call	vListInitialise
	.loc 1 3705 3
	lui	a5,%hi(xSuspendedTaskList)
	addi	a0,a5,%lo(xSuspendedTaskList)
	call	vListInitialise
	.loc 1 3711 20
	lui	a5,%hi(pxDelayedTaskList)
	lui	a4,%hi(xDelayedTaskList1)
	addi	a4,a4,%lo(xDelayedTaskList1)
	sw	a4,%lo(pxDelayedTaskList)(a5)
	.loc 1 3712 28
	lui	a5,%hi(pxOverflowDelayedTaskList)
	lui	a4,%hi(xDelayedTaskList2)
	addi	a4,a4,%lo(xDelayedTaskList2)
	sw	a4,%lo(pxOverflowDelayedTaskList)(a5)
	.loc 1 3713 1
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
.LFE48:
	.size	prvInitialiseTaskLists, .-prvInitialiseTaskLists
	.section	.text.prvCheckTasksWaitingTermination,"ax",@progbits
	.align	1
	.type	prvCheckTasksWaitingTermination, @function
prvCheckTasksWaitingTermination:
.LFB49:
	.loc 1 3717 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB15:
	.loc 1 3727 8
	j	.L248
.L249:
	.loc 1 3729 4
	call	vTaskEnterCritical
	.loc 1 3731 65
	lui	a5,%hi(xTasksWaitingTermination)
	addi	a5,a5,%lo(xTasksWaitingTermination)
	lw	a5,12(a5)
	.loc 1 3731 11
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 3732 28
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 3732 14
	mv	a0,a5
	call	uxListRemove
	.loc 1 3733 5
	lui	a5,%hi(uxCurrentNumberOfTasks)
	lw	a5,%lo(uxCurrentNumberOfTasks)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(uxCurrentNumberOfTasks)
	sw	a4,%lo(uxCurrentNumberOfTasks)(a5)
	.loc 1 3734 5
	lui	a5,%hi(uxDeletedTasksWaitingCleanUp)
	lw	a5,%lo(uxDeletedTasksWaitingCleanUp)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(uxDeletedTasksWaitingCleanUp)
	sw	a4,%lo(uxDeletedTasksWaitingCleanUp)(a5)
	.loc 1 3736 4
	call	vTaskExitCritical
	.loc 1 3738 4
	lw	a0,-20(s0)
	call	prvDeleteTCB
.L248:
	.loc 1 3727 39
	lui	a5,%hi(uxDeletedTasksWaitingCleanUp)
	lw	a5,%lo(uxDeletedTasksWaitingCleanUp)(a5)
	bne	a5,zero,.L249
.LBE15:
	.loc 1 3742 1
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
.LFE49:
	.size	prvCheckTasksWaitingTermination, .-prvCheckTasksWaitingTermination
	.section	.text.vTaskGetInfo,"ax",@progbits
	.align	1
	.globl	vTaskGetInfo
	.type	vTaskGetInfo, @function
vTaskGetInfo:
.LFB50:
	.loc 1 3748 2
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
	.loc 1 3752 27
	lw	a5,-36(s0)
	bne	a5,zero,.L251
	.loc 1 3752 9 discriminator 1
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	sw	a5,-20(s0)
	j	.L252
.L251:
	.loc 1 3752 9 is_stmt 0 discriminator 2
	lw	a5,-36(s0)
	sw	a5,-20(s0)
.L252:
	.loc 1 3754 25 is_stmt 1
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 3755 47
	lw	a5,-20(s0)
	addi	a4,a5,52
	.loc 1 3755 28
	lw	a5,-40(s0)
	sw	a4,4(a5)
	.loc 1 3756 42
	lw	a5,-20(s0)
	lw	a4,44(a5)
	.loc 1 3756 35
	lw	a5,-40(s0)
	sw	a4,16(a5)
	.loc 1 3757 36
	lw	a5,-20(s0)
	lw	a4,48(a5)
	.loc 1 3757 29
	lw	a5,-40(s0)
	sw	a4,28(a5)
	.loc 1 3758 36
	lw	a5,-20(s0)
	lw	a4,72(a5)
	.loc 1 3758 29
	lw	a5,-40(s0)
	sw	a4,8(a5)
	.loc 1 3762 40
	lw	a5,-20(s0)
	lw	a4,80(a5)
	.loc 1 3762 33
	lw	a5,-40(s0)
	sw	a4,20(a5)
	.loc 1 3776 35
	lw	a5,-40(s0)
	sw	zero,24(a5)
	.loc 1 3783 5
	lbu	a4,-45(s0)
	li	a5,5
	beq	a4,a5,.L253
	.loc 1 3785 14
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 3785 6
	lw	a4,-20(s0)
	bne	a4,a5,.L254
	.loc 1 3787 33
	lw	a5,-40(s0)
	sb	zero,12(a5)
	j	.L255
.L254:
	.loc 1 3791 33
	lw	a5,-40(s0)
	lbu	a4,-45(s0)
	sb	a4,12(a5)
	.loc 1 3798 8
	lbu	a4,-45(s0)
	li	a5,3
	bne	a4,a5,.L255
	.loc 1 3800 7
	call	vTaskSuspendAll
	.loc 1 3802 44
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 3802 10
	beq	a5,zero,.L256
	.loc 1 3804 37
	lw	a5,-40(s0)
	li	a4,2
	sb	a4,12(a5)
.L256:
	.loc 1 3807 16
	call	xTaskResumeAll
	j	.L255
.L253:
	.loc 1 3815 34
	lw	a0,-20(s0)
	call	eTaskGetState
	mv	a5,a0
	mv	a4,a5
	.loc 1 3815 32 discriminator 1
	lw	a5,-40(s0)
	sb	a4,12(a5)
.L255:
	.loc 1 3820 5
	lw	a5,-44(s0)
	beq	a5,zero,.L257
	.loc 1 3828 89
	lw	a5,-20(s0)
	lw	a5,48(a5)
	.loc 1 3828 42
	mv	a0,a5
	call	prvTaskCheckFreeStackSpace
	mv	a5,a0
	mv	a4,a5
	.loc 1 3828 40 discriminator 1
	lw	a5,-40(s0)
	sh	a4,32(a5)
	.loc 1 3836 2
	j	.L259
.L257:
	.loc 1 3834 39
	lw	a5,-40(s0)
	sh	zero,32(a5)
.L259:
	.loc 1 3836 2
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
.LFE50:
	.size	vTaskGetInfo, .-vTaskGetInfo
	.section	.text.prvListTasksWithinSingleList,"ax",@progbits
	.align	1
	.type	prvListTasksWithinSingleList, @function
prvListTasksWithinSingleList:
.LFB51:
	.loc 1 3844 2
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
	.loc 1 3846 14
	sw	zero,-20(s0)
	.loc 1 3848 19
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 3848 5
	beq	a5,zero,.L261
.LBB16:
	.loc 1 3850 21
	lw	a5,-56(s0)
	sw	a5,-24(s0)
	.loc 1 3850 89
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 3850 98
	lw	a4,4(a5)
	.loc 1 3850 72
	lw	a5,-24(s0)
	sw	a4,4(a5)
	.loc 1 3850 138
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 1 3850 162
	lw	a5,-24(s0)
	addi	a5,a5,8
	.loc 1 3850 110
	bne	a4,a5,.L262
	.loc 1 3850 239 discriminator 1
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 3850 248 discriminator 1
	lw	a4,4(a5)
	.loc 1 3850 222 discriminator 1
	lw	a5,-24(s0)
	sw	a4,4(a5)
.L262:
	.loc 1 3850 292 discriminator 3
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 3850 275 discriminator 3
	lw	a5,12(a5)
	sw	a5,-28(s0)
.L264:
.LBE16:
.LBB17:
	.loc 1 3858 22
	lw	a5,-56(s0)
	sw	a5,-32(s0)
	.loc 1 3858 90
	lw	a5,-32(s0)
	lw	a5,4(a5)
	.loc 1 3858 99
	lw	a4,4(a5)
	.loc 1 3858 73
	lw	a5,-32(s0)
	sw	a4,4(a5)
	.loc 1 3858 139
	lw	a5,-32(s0)
	lw	a4,4(a5)
	.loc 1 3858 163
	lw	a5,-32(s0)
	addi	a5,a5,8
	.loc 1 3858 111
	bne	a4,a5,.L263
	.loc 1 3858 240 discriminator 1
	lw	a5,-32(s0)
	lw	a5,4(a5)
	.loc 1 3858 249 discriminator 1
	lw	a4,4(a5)
	.loc 1 3858 223 discriminator 1
	lw	a5,-32(s0)
	sw	a4,4(a5)
.L263:
	.loc 1 3858 292 discriminator 3
	lw	a5,-32(s0)
	lw	a5,4(a5)
	.loc 1 3858 275 discriminator 3
	lw	a5,12(a5)
	sw	a5,-36(s0)
.LBE17:
	.loc 1 3859 67
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 3859 5
	lw	a5,-52(s0)
	add	a5,a5,a4
	lbu	a4,-57(s0)
	mv	a3,a4
	li	a2,1
	mv	a1,a5
	lw	a0,-36(s0)
	call	vTaskGetInfo
	.loc 1 3860 11
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 3861 23
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bne	a4,a5,.L264
.L261:
	.loc 1 3868 10
	lw	a5,-20(s0)
	.loc 1 3869 2
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
.LFE51:
	.size	prvListTasksWithinSingleList, .-prvListTasksWithinSingleList
	.section	.text.prvTaskCheckFreeStackSpace,"ax",@progbits
	.align	1
	.type	prvTaskCheckFreeStackSpace, @function
prvTaskCheckFreeStackSpace:
.LFB52:
	.loc 1 3877 2
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
	.loc 1 3878 11
	sw	zero,-20(s0)
	.loc 1 3880 8
	j	.L267
.L268:
	.loc 1 3882 17
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
	.loc 1 3883 11
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L267:
	.loc 1 3880 10
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 1 3880 24
	li	a5,165
	beq	a4,a5,.L268
	.loc 1 3886 11
	lw	a5,-20(s0)
	srli	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 3888 10
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 3889 2
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
.LFE52:
	.size	prvTaskCheckFreeStackSpace, .-prvTaskCheckFreeStackSpace
	.section	.text.uxTaskGetStackHighWaterMark,"ax",@progbits
	.align	1
	.globl	uxTaskGetStackHighWaterMark
	.type	uxTaskGetStackHighWaterMark, @function
uxTaskGetStackHighWaterMark:
.LFB53:
	.loc 1 3937 2
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
	.loc 1 3942 27
	lw	a5,-36(s0)
	bne	a5,zero,.L271
	.loc 1 3942 9 discriminator 1
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	sw	a5,-20(s0)
	j	.L272
.L271:
	.loc 1 3942 9 is_stmt 0 discriminator 2
	lw	a5,-36(s0)
	sw	a5,-20(s0)
.L272:
	.loc 1 3946 18 is_stmt 1
	lw	a5,-20(s0)
	lw	a5,48(a5)
	sw	a5,-24(s0)
	.loc 1 3954 30
	lw	a0,-24(s0)
	call	prvTaskCheckFreeStackSpace
	mv	a5,a0
	.loc 1 3954 12 discriminator 1
	sw	a5,-28(s0)
	.loc 1 3956 10
	lw	a5,-28(s0)
	.loc 1 3957 2
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
.LFE53:
	.size	uxTaskGetStackHighWaterMark, .-uxTaskGetStackHighWaterMark
	.section	.text.prvDeleteTCB,"ax",@progbits
	.align	1
	.type	prvDeleteTCB, @function
prvDeleteTCB:
.LFB54:
	.loc 1 3965 2
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
	.loc 1 3993 13
	lw	a5,-20(s0)
	lbu	a5,97(a5)
	.loc 1 3993 6
	bne	a5,zero,.L275
	.loc 1 3997 21
	lw	a5,-20(s0)
	lw	a5,48(a5)
	.loc 1 3997 5
	mv	a0,a5
	call	vPortFree
	.loc 1 3998 5
	lw	a0,-20(s0)
	call	vPortFree
	.loc 1 4015 2
	j	.L278
.L275:
	.loc 1 4000 18
	lw	a5,-20(s0)
	lbu	a4,97(a5)
	.loc 1 4000 11
	li	a5,1
	bne	a4,a5,.L277
	.loc 1 4004 5
	lw	a0,-20(s0)
	call	vPortFree
	.loc 1 4015 2
	j	.L278
.L277:
	.loc 1 4010 16
	lw	a5,-20(s0)
	lbu	a4,97(a5)
	.loc 1 4010 7
	li	a5,2
	beq	a4,a5,.L278
	.loc 1 4010 70 discriminator 1
	call	vAssertCalled
.L278:
	.loc 1 4015 2
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
.LFE54:
	.size	prvDeleteTCB, .-prvDeleteTCB
	.section	.text.prvResetNextTaskUnblockTime,"ax",@progbits
	.align	1
	.type	prvResetNextTaskUnblockTime, @function
prvResetNextTaskUnblockTime:
.LFB55:
	.loc 1 4021 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 4024 31
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	lw	a5,0(a5)
	.loc 1 4024 4
	bne	a5,zero,.L280
	.loc 1 4030 24
	lui	a5,%hi(xNextTaskUnblockTime)
	li	a4,-1
	sw	a4,%lo(xNextTaskUnblockTime)(a5)
	.loc 1 4041 1
	j	.L282
.L280:
	.loc 1 4038 42
	lui	a5,%hi(pxDelayedTaskList)
	lw	a5,%lo(pxDelayedTaskList)(a5)
	.loc 1 4038 55
	lw	a5,12(a5)
	.loc 1 4038 13
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 4039 62
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 4039 24
	lui	a5,%hi(xNextTaskUnblockTime)
	sw	a4,%lo(xNextTaskUnblockTime)(a5)
.L282:
	.loc 1 4041 1
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
.LFE55:
	.size	prvResetNextTaskUnblockTime, .-prvResetNextTaskUnblockTime
	.section	.text.xTaskGetCurrentTaskHandle,"ax",@progbits
	.align	1
	.globl	xTaskGetCurrentTaskHandle
	.type	xTaskGetCurrentTaskHandle, @function
xTaskGetCurrentTaskHandle:
.LFB56:
	.loc 1 4047 2
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 4053 11
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	sw	a5,-20(s0)
	.loc 1 4055 10
	lw	a5,-20(s0)
	.loc 1 4056 2
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
.LFE56:
	.size	xTaskGetCurrentTaskHandle, .-xTaskGetCurrentTaskHandle
	.section	.text.xTaskGetSchedulerState,"ax",@progbits
	.align	1
	.globl	xTaskGetSchedulerState
	.type	xTaskGetSchedulerState, @function
xTaskGetSchedulerState:
.LFB57:
	.loc 1 4064 2
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 4067 25
	lui	a5,%hi(xSchedulerRunning)
	lw	a5,%lo(xSchedulerRunning)(a5)
	.loc 1 4067 5
	bne	a5,zero,.L286
	.loc 1 4069 12
	li	a5,1
	sw	a5,-20(s0)
	j	.L287
.L286:
	.loc 1 4073 29
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	.loc 1 4073 6
	bne	a5,zero,.L288
	.loc 1 4075 13
	li	a5,2
	sw	a5,-20(s0)
	j	.L287
.L288:
	.loc 1 4079 13
	sw	zero,-20(s0)
.L287:
	.loc 1 4083 10
	lw	a5,-20(s0)
	.loc 1 4084 2
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
.LFE57:
	.size	xTaskGetSchedulerState, .-xTaskGetSchedulerState
	.section	.text.xTaskPriorityInherit,"ax",@progbits
	.align	1
	.globl	xTaskPriorityInherit
	.type	xTaskPriorityInherit, @function
xTaskPriorityInherit:
.LFB58:
	.loc 1 4092 2
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
	.loc 1 4093 16
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 4094 13
	sw	zero,-20(s0)
	.loc 1 4099 5
	lw	a5,-36(s0)
	beq	a5,zero,.L291
	.loc 1 4104 24
	lw	a5,-24(s0)
	lw	a4,44(a5)
	.loc 1 4104 51
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	.loc 1 4104 6
	bgeu	a4,a5,.L292
	.loc 1 4109 54
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 1 4109 7
	blt	a5,zero,.L293
	.loc 1 4111 117
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	.loc 1 4111 88
	li	a4,32
	sub	a4,a4,a5
	.loc 1 4111 62
	lw	a5,-24(s0)
	sw	a4,24(a5)
.L293:
	.loc 1 4120 54
	lw	a5,-24(s0)
	lw	a3,20(a5)
	.loc 1 4120 111
	lw	a5,-24(s0)
	lw	a4,44(a5)
	.loc 1 4120 73
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a5,a5,a4
	.loc 1 4120 7
	bne	a3,a5,.L294
	.loc 1 4122 24
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 4122 10
	mv	a0,a5
	call	uxListRemove
	mv	a5,a0
	.loc 1 4122 8 discriminator 1
	bne	a5,zero,.L295
	.loc 1 4127 61
	lw	a5,-24(s0)
	lw	a5,44(a5)
	.loc 1 4127 40
	li	a4,1
	sll	a5,a4,a5
	.loc 1 4127 33
	not	a4,a5
	.loc 1 4127 30
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	and	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
.L295:
	.loc 1 4135 49
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,44(a5)
	.loc 1 4135 35
	lw	a5,-24(s0)
	sw	a4,44(a5)
	.loc 1 4136 65
	lw	a5,-24(s0)
	lw	a5,44(a5)
	.loc 1 4136 40
	li	a4,1
	sll	a4,a4,a5
	.loc 1 4136 31
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	.loc 1 4136 141
	lw	a5,-24(s0)
	lw	a4,44(a5)
	.loc 1 4136 99
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	.loc 1 4136 159
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 4136 83
	mv	a1,a5
	mv	a0,a4
	call	vListInsertEnd
	j	.L296
.L294:
	.loc 1 4141 49
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,44(a5)
	.loc 1 4141 35
	lw	a5,-24(s0)
	sw	a4,44(a5)
.L296:
	.loc 1 4147 13
	li	a5,1
	sw	a5,-20(s0)
	j	.L291
.L292:
	.loc 1 4151 25
	lw	a5,-24(s0)
	lw	a4,80(a5)
	.loc 1 4151 56
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	.loc 1 4151 7
	bgeu	a4,a5,.L291
	.loc 1 4160 14
	li	a5,1
	sw	a5,-20(s0)
.L291:
	.loc 1 4173 10
	lw	a5,-20(s0)
	.loc 1 4174 2
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
	.size	xTaskPriorityInherit, .-xTaskPriorityInherit
	.section	.text.xTaskPriorityDisinherit,"ax",@progbits
	.align	1
	.globl	xTaskPriorityDisinherit
	.type	xTaskPriorityDisinherit, @function
xTaskPriorityDisinherit:
.LFB59:
	.loc 1 4182 2
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
	.loc 1 4183 16
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 4184 13
	sw	zero,-20(s0)
	.loc 1 4186 5
	lw	a5,-36(s0)
	beq	a5,zero,.L299
	.loc 1 4192 34
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 4192 6
	lw	a4,-24(s0)
	beq	a4,a5,.L300
	.loc 1 4192 41 discriminator 1
	call	vAssertCalled
.L300:
	.loc 1 4193 15
	lw	a5,-24(s0)
	lw	a5,84(a5)
	.loc 1 4193 6
	bne	a5,zero,.L301
	.loc 1 4193 40 discriminator 1
	call	vAssertCalled
.L301:
	.loc 1 4194 11
	lw	a5,-24(s0)
	lw	a5,84(a5)
	.loc 1 4194 28
	addi	a4,a5,-1
	lw	a5,-24(s0)
	sw	a4,84(a5)
	.loc 1 4198 13
	lw	a5,-24(s0)
	lw	a4,44(a5)
	.loc 1 4198 34
	lw	a5,-24(s0)
	lw	a5,80(a5)
	.loc 1 4198 6
	beq	a4,a5,.L299
	.loc 1 4201 14
	lw	a5,-24(s0)
	lw	a5,84(a5)
	.loc 1 4201 7
	bne	a5,zero,.L299
	.loc 1 4208 24
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 4208 10
	mv	a0,a5
	call	uxListRemove
	mv	a5,a0
	.loc 1 4208 8 discriminator 1
	bne	a5,zero,.L302
	.loc 1 4210 46
	lw	a5,-24(s0)
	lw	a4,44(a5)
	.loc 1 4210 66
	lui	a5,%hi(pxReadyTasksLists)
	addi	a3,a5,%lo(pxReadyTasksLists)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 4210 11
	bne	a5,zero,.L302
	.loc 1 4210 160 discriminator 1
	lw	a5,-24(s0)
	lw	a5,44(a5)
	.loc 1 4210 148 discriminator 1
	li	a4,1
	sll	a5,a4,a5
	.loc 1 4210 141 discriminator 1
	not	a4,a5
	.loc 1 4210 138 discriminator 1
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	and	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
.L302:
	.loc 1 4220 31
	lw	a5,-24(s0)
	lw	a4,80(a5)
	.loc 1 4220 24
	lw	a5,-24(s0)
	sw	a4,44(a5)
	.loc 1 4225 99
	lw	a5,-24(s0)
	lw	a5,44(a5)
	.loc 1 4225 77
	li	a4,32
	sub	a4,a4,a5
	.loc 1 4225 51
	lw	a5,-24(s0)
	sw	a4,24(a5)
	.loc 1 4226 54
	lw	a5,-24(s0)
	lw	a5,44(a5)
	.loc 1 4226 40
	li	a4,1
	sll	a4,a4,a5
	.loc 1 4226 31
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	.loc 1 4226 119
	lw	a5,-24(s0)
	lw	a4,44(a5)
	.loc 1 4226 88
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	.loc 1 4226 137
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 4226 72
	mv	a1,a5
	mv	a0,a4
	call	vListInsertEnd
	.loc 1 4236 14
	li	a5,1
	sw	a5,-20(s0)
.L299:
	.loc 1 4253 10
	lw	a5,-20(s0)
	.loc 1 4254 2
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
	.size	xTaskPriorityDisinherit, .-xTaskPriorityDisinherit
	.section	.text.vTaskPriorityDisinheritAfterTimeout,"ax",@progbits
	.align	1
	.globl	vTaskPriorityDisinheritAfterTimeout
	.type	vTaskPriorityDisinheritAfterTimeout, @function
vTaskPriorityDisinheritAfterTimeout:
.LFB60:
	.loc 1 4262 2
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
	.loc 1 4263 16
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 4265 20
	li	a5,1
	sw	a5,-28(s0)
	.loc 1 4267 5
	lw	a5,-36(s0)
	beq	a5,zero,.L312
	.loc 1 4271 15
	lw	a5,-24(s0)
	lw	a5,84(a5)
	.loc 1 4271 6
	bne	a5,zero,.L306
	.loc 1 4271 40 discriminator 1
	call	vAssertCalled
.L306:
	.loc 1 4277 13
	lw	a5,-24(s0)
	lw	a5,80(a5)
	.loc 1 4277 6
	lw	a4,-40(s0)
	bleu	a4,a5,.L307
	.loc 1 4279 21
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	j	.L308
.L307:
	.loc 1 4283 21
	lw	a5,-24(s0)
	lw	a5,80(a5)
	sw	a5,-20(s0)
.L308:
	.loc 1 4287 13
	lw	a5,-24(s0)
	lw	a5,44(a5)
	.loc 1 4287 6
	lw	a4,-20(s0)
	beq	a4,a5,.L312
	.loc 1 4293 14
	lw	a5,-24(s0)
	lw	a5,84(a5)
	.loc 1 4293 7
	lw	a4,-28(s0)
	bne	a4,a5,.L312
	.loc 1 4298 36
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 4298 8
	lw	a4,-24(s0)
	bne	a4,a5,.L309
	.loc 1 4298 43 discriminator 1
	call	vAssertCalled
.L309:
	.loc 1 4304 28
	lw	a5,-24(s0)
	lw	a5,44(a5)
	sw	a5,-32(s0)
	.loc 1 4305 24
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	sw	a4,44(a5)
	.loc 1 4309 44
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 1 4309 8
	blt	a5,zero,.L310
	.loc 1 4311 78
	li	a4,32
	lw	a5,-20(s0)
	sub	a4,a4,a5
	.loc 1 4311 52
	lw	a5,-24(s0)
	sw	a4,24(a5)
.L310:
	.loc 1 4324 44
	lw	a5,-24(s0)
	lw	a3,20(a5)
	.loc 1 4324 63
	lw	a4,-32(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a5,a5,a4
	.loc 1 4324 8
	bne	a3,a5,.L312
	.loc 1 4326 25
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 4326 11
	mv	a0,a5
	call	uxListRemove
	mv	a5,a0
	.loc 1 4326 9 discriminator 1
	bne	a5,zero,.L311
	.loc 1 4331 51
	lw	a5,-24(s0)
	lw	a5,44(a5)
	.loc 1 4331 41
	li	a4,1
	sll	a5,a4,a5
	.loc 1 4331 34
	not	a4,a5
	.loc 1 4331 31
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	and	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
.L311:
	.loc 1 4338 55
	lw	a5,-24(s0)
	lw	a5,44(a5)
	.loc 1 4338 41
	li	a4,1
	sll	a4,a4,a5
	.loc 1 4338 32
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	.loc 1 4338 120
	lw	a5,-24(s0)
	lw	a4,44(a5)
	.loc 1 4338 89
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	.loc 1 4338 138
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 4338 73
	mv	a1,a5
	mv	a0,a4
	call	vListInsertEnd
.L312:
	.loc 1 4359 2
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
.LFE60:
	.size	vTaskPriorityDisinheritAfterTimeout, .-vTaskPriorityDisinheritAfterTimeout
	.section	.text.vTaskEnterCritical,"ax",@progbits
	.align	1
	.globl	vTaskEnterCritical
	.type	vTaskEnterCritical, @function
vTaskEnterCritical:
.LFB61:
	.loc 1 4367 2
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 4368 3
 #APP
# 4368 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c" 1
	csrc mstatus, 8
# 0 "" 2
	.loc 1 4370 25
 #NO_APP
	lui	a5,%hi(xSchedulerRunning)
	lw	a5,%lo(xSchedulerRunning)(a5)
	.loc 1 4370 5
	beq	a5,zero,.L315
	.loc 1 4372 18
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,68(a5)
	.loc 1 4372 39
	addi	a4,a4,1
	sw	a4,68(a5)
	.loc 1 4380 20
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
.L315:
	.loc 1 4389 2
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
.LFE61:
	.size	vTaskEnterCritical, .-vTaskEnterCritical
	.section	.text.vTaskExitCritical,"ax",@progbits
	.align	1
	.globl	vTaskExitCritical
	.type	vTaskExitCritical, @function
vTaskExitCritical:
.LFB62:
	.loc 1 4397 2
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 4398 25
	lui	a5,%hi(xSchedulerRunning)
	lw	a5,%lo(xSchedulerRunning)(a5)
	.loc 1 4398 5
	beq	a5,zero,.L318
	.loc 1 4400 20
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,68(a5)
	.loc 1 4400 6
	beq	a5,zero,.L318
	.loc 1 4402 19
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,68(a5)
	.loc 1 4402 40
	addi	a4,a4,-1
	sw	a4,68(a5)
	.loc 1 4404 21
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,68(a5)
	.loc 1 4404 7
	bne	a5,zero,.L318
	.loc 1 4406 6
 #APP
# 4406 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c" 1
	csrs mstatus, 8
# 0 "" 2
 #NO_APP
.L318:
	.loc 1 4422 2
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
.LFE62:
	.size	vTaskExitCritical, .-vTaskExitCritical
	.section	.text.prvWriteNameToBuffer,"ax",@progbits
	.align	1
	.type	prvWriteNameToBuffer, @function
prvWriteNameToBuffer:
.LFB63:
	.loc 1 4430 2
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
	.loc 1 4434 3
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	strcpy
	.loc 1 4438 12
	lw	a0,-36(s0)
	call	strlen
	sw	a0,-20(s0)
	.loc 1 4438 3
	j	.L320
.L321:
	.loc 1 4440 12
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 4440 18
	li	a4,32
	sb	a4,0(a5)
	.loc 1 4438 64 discriminator 4
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L320:
	.loc 1 4438 34 discriminator 2
	lw	a4,-20(s0)
	li	a5,14
	bleu	a4,a5,.L321
	.loc 1 4444 11
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 4444 17
	sb	zero,0(a5)
	.loc 1 4447 10
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 4448 2
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
.LFE63:
	.size	prvWriteNameToBuffer, .-prvWriteNameToBuffer
	.section	.rodata
	.align	2
.LC1:
	.string	"\t%c\t%u\t%u\t%u\r\n"
	.section	.text.vTaskList,"ax",@progbits
	.align	1
	.globl	vTaskList
	.type	vTaskList, @function
vTaskList:
.LFB64:
	.loc 1 4456 2
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
	.loc 1 4487 18
	lw	a5,-36(s0)
	sb	zero,0(a5)
	.loc 1 4491 15
	lui	a5,%hi(uxCurrentNumberOfTasks)
	lw	a5,%lo(uxCurrentNumberOfTasks)(a5)
	sw	a5,-28(s0)
	.loc 1 4496 23
	lui	a5,%hi(uxCurrentNumberOfTasks)
	lw	a4,%lo(uxCurrentNumberOfTasks)(a5)
	.loc 1 4496 60
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	.loc 1 4496 23
	mv	a0,a5
	call	pvPortMalloc
	sw	a0,-32(s0)
	.loc 1 4498 5
	lw	a5,-32(s0)
	beq	a5,zero,.L334
	.loc 1 4501 18
	li	a2,0
	lw	a1,-28(s0)
	lw	a0,-32(s0)
	call	uxTaskGetSystemState
	sw	a0,-28(s0)
	.loc 1 4504 11
	sw	zero,-20(s0)
	.loc 1 4504 4
	j	.L325
.L333:
	.loc 1 4506 30
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-32(s0)
	add	a5,a5,a4
	.loc 1 4506 35
	lbu	a5,12(a5)
	.loc 1 4506 5
	li	a4,4
	beq	a5,a4,.L326
	li	a4,4
	bgt	a5,a4,.L327
	li	a4,3
	beq	a5,a4,.L328
	li	a4,3
	bgt	a5,a4,.L327
	li	a4,2
	beq	a5,a4,.L329
	li	a4,2
	bgt	a5,a4,.L327
	beq	a5,zero,.L330
	li	a4,1
	beq	a5,a4,.L331
	j	.L327
.L330:
	.loc 1 4508 29
	li	a5,88
	sb	a5,-21(s0)
	.loc 1 4509 11
	j	.L332
.L331:
	.loc 1 4511 27
	li	a5,82
	sb	a5,-21(s0)
	.loc 1 4512 11
	j	.L332
.L329:
	.loc 1 4514 29
	li	a5,66
	sb	a5,-21(s0)
	.loc 1 4515 11
	j	.L332
.L328:
	.loc 1 4517 31
	li	a5,83
	sb	a5,-21(s0)
	.loc 1 4518 11
	j	.L332
.L326:
	.loc 1 4520 29
	li	a5,68
	sb	a5,-21(s0)
	.loc 1 4521 11
	j	.L332
.L327:
	.loc 1 4526 19
	sb	zero,-21(s0)
	.loc 1 4527 11
	nop
.L332:
	.loc 1 4532 75
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-32(s0)
	add	a5,a5,a4
	.loc 1 4532 21
	lw	a5,4(a5)
	mv	a1,a5
	lw	a0,-36(s0)
	call	prvWriteNameToBuffer
	sw	a0,-36(s0)
	.loc 1 4535 5
	lbu	a2,-21(s0)
	.loc 1 4535 96
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-32(s0)
	add	a5,a5,a4
	.loc 1 4535 101
	lw	a3,16(a5)
	.loc 1 4535 155
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-32(s0)
	add	a5,a5,a4
	.loc 1 4535 160
	lhu	a5,32(a5)
	.loc 1 4535 5
	mv	a1,a5
	.loc 1 4535 217
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-32(s0)
	add	a5,a5,a4
	.loc 1 4535 222
	lw	a5,8(a5)
	.loc 1 4535 5
	mv	a4,a1
	lui	a1,%hi(.LC1)
	addi	a1,a1,%lo(.LC1)
	lw	a0,-36(s0)
	call	sprintf
	.loc 1 4536 22
	lw	a0,-36(s0)
	call	strlen
	mv	a4,a0
	.loc 1 4536 19 discriminator 1
	lw	a5,-36(s0)
	add	a5,a5,a4
	sw	a5,-36(s0)
	.loc 1 4504 34 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L325:
	.loc 1 4504 18 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	bltu	a4,a5,.L333
	.loc 1 4541 4
	lw	a0,-32(s0)
	call	vPortFree
.L334:
	.loc 1 4547 2
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
.LFE64:
	.size	vTaskList, .-vTaskList
	.section	.text.uxTaskResetEventItemValue,"ax",@progbits
	.align	1
	.globl	uxTaskResetEventItemValue
	.type	uxTaskResetEventItemValue, @function
uxTaskResetEventItemValue:
.LFB65:
	.loc 1 4680 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 4683 32
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 4683 11
	lw	a5,24(a5)
	sw	a5,-20(s0)
	.loc 1 4687 111
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,44(a5)
	.loc 1 4687 21
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 4687 82
	li	a3,32
	sub	a4,a3,a4
	.loc 1 4687 54
	sw	a4,24(a5)
	.loc 1 4689 9
	lw	a5,-20(s0)
	.loc 1 4690 1
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
.LFE65:
	.size	uxTaskResetEventItemValue, .-uxTaskResetEventItemValue
	.section	.text.pvTaskIncrementMutexHeldCount,"ax",@progbits
	.align	1
	.globl	pvTaskIncrementMutexHeldCount
	.type	pvTaskIncrementMutexHeldCount, @function
pvTaskIncrementMutexHeldCount:
.LFB66:
	.loc 1 4696 2
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 4699 20
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 4699 5
	beq	a5,zero,.L338
	.loc 1 4701 18
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,84(a5)
	.loc 1 4701 35
	addi	a4,a4,1
	sw	a4,84(a5)
.L338:
	.loc 1 4704 10
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 4705 2
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
.LFE66:
	.size	pvTaskIncrementMutexHeldCount, .-pvTaskIncrementMutexHeldCount
	.section	.text.ulTaskNotifyTake,"ax",@progbits
	.align	1
	.globl	ulTaskNotifyTake
	.type	ulTaskNotifyTake, @function
ulTaskNotifyTake:
.LFB67:
	.loc 1 4713 2
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
	.loc 1 4716 3
	call	vTaskEnterCritical
	.loc 1 4719 20
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,92(a5)
	.loc 1 4719 6
	bne	a5,zero,.L341
	.loc 1 4722 17
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 4722 33
	li	a4,1
	sb	a4,96(a5)
	.loc 1 4724 7
	lw	a5,-40(s0)
	beq	a5,zero,.L341
	.loc 1 4726 6
	li	a1,1
	lw	a0,-40(s0)
	call	prvAddCurrentTaskToDelayedList
	.loc 1 4733 6
 #APP
# 4733 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c" 1
	ecall
# 0 "" 2
 #NO_APP
.L341:
	.loc 1 4745 3
	call	vTaskExitCritical
	.loc 1 4747 3
	call	vTaskEnterCritical
	.loc 1 4750 27
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 4750 13
	lw	a5,92(a5)
	sw	a5,-20(s0)
	.loc 1 4752 6
	lw	a5,-20(s0)
	beq	a5,zero,.L342
	.loc 1 4754 7
	lw	a5,-36(s0)
	beq	a5,zero,.L343
	.loc 1 4756 18
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 4756 36
	sw	zero,92(a5)
	j	.L342
.L343:
	.loc 1 4760 18
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 4760 47
	lw	a4,-20(s0)
	addi	a4,a4,-1
	.loc 1 4760 36
	sw	a4,92(a5)
.L342:
	.loc 1 4768 16
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 4768 32
	sb	zero,96(a5)
	.loc 1 4770 3
	call	vTaskExitCritical
	.loc 1 4772 10
	lw	a5,-20(s0)
	.loc 1 4773 2
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
.LFE67:
	.size	ulTaskNotifyTake, .-ulTaskNotifyTake
	.section	.text.xTaskNotifyWait,"ax",@progbits
	.align	1
	.globl	xTaskNotifyWait
	.type	xTaskNotifyWait, @function
xTaskNotifyWait:
.LFB68:
	.loc 1 4781 2
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
	.loc 1 4784 3
	call	vTaskEnterCritical
	.loc 1 4787 20
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lbu	a5,96(a5)
	andi	a4,a5,0xff
	.loc 1 4787 6
	li	a5,2
	beq	a4,a5,.L346
	.loc 1 4792 17
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a3,92(a5)
	.loc 1 4792 38
	lw	a4,-36(s0)
	not	a4,a4
	.loc 1 4792 35
	and	a4,a3,a4
	sw	a4,92(a5)
	.loc 1 4795 17
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 4795 33
	li	a4,1
	sb	a4,96(a5)
	.loc 1 4797 7
	lw	a5,-48(s0)
	beq	a5,zero,.L346
	.loc 1 4799 6
	li	a1,1
	lw	a0,-48(s0)
	call	prvAddCurrentTaskToDelayedList
	.loc 1 4806 6
 #APP
# 4806 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c" 1
	ecall
# 0 "" 2
 #NO_APP
.L346:
	.loc 1 4818 3
	call	vTaskExitCritical
	.loc 1 4820 3
	call	vTaskEnterCritical
	.loc 1 4824 6
	lw	a5,-44(s0)
	beq	a5,zero,.L347
	.loc 1 4828 41
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a4,92(a5)
	.loc 1 4828 27
	lw	a5,-44(s0)
	sw	a4,0(a5)
.L347:
	.loc 1 4835 20
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lbu	a5,96(a5)
	andi	a4,a5,0xff
	.loc 1 4835 6
	li	a5,2
	beq	a4,a5,.L348
	.loc 1 4838 13
	sw	zero,-20(s0)
	j	.L349
.L348:
	.loc 1 4844 17
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a3,92(a5)
	.loc 1 4844 38
	lw	a4,-40(s0)
	not	a4,a4
	.loc 1 4844 35
	and	a4,a3,a4
	sw	a4,92(a5)
	.loc 1 4845 13
	li	a5,1
	sw	a5,-20(s0)
.L349:
	.loc 1 4848 16
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 4848 32
	sb	zero,96(a5)
	.loc 1 4850 3
	call	vTaskExitCritical
	.loc 1 4852 10
	lw	a5,-20(s0)
	.loc 1 4853 2
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
.LFE68:
	.size	xTaskNotifyWait, .-xTaskNotifyWait
	.section	.text.xTaskGenericNotify,"ax",@progbits
	.align	1
	.globl	xTaskGenericNotify
	.type	xTaskGenericNotify, @function
xTaskGenericNotify:
.LFB69:
	.loc 1 4861 2
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
	sw	a3,-48(s0)
	sb	a5,-41(s0)
	.loc 1 4863 13
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 4866 5
	lw	a5,-36(s0)
	bne	a5,zero,.L352
	.loc 1 4866 32 discriminator 1
	call	vAssertCalled
.L352:
	.loc 1 4867 9
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 4869 3
	call	vTaskEnterCritical
	.loc 1 4871 6
	lw	a5,-48(s0)
	beq	a5,zero,.L353
	.loc 1 4873 42
	lw	a5,-24(s0)
	lw	a4,92(a5)
	.loc 1 4873 35
	lw	a5,-48(s0)
	sw	a4,0(a5)
.L353:
	.loc 1 4876 26
	lw	a5,-24(s0)
	lbu	a5,96(a5)
	sb	a5,-25(s0)
	.loc 1 4878 25
	lw	a5,-24(s0)
	li	a4,2
	sb	a4,96(a5)
	.loc 1 4880 4
	lbu	a5,-41(s0)
	li	a4,4
	beq	a5,a4,.L354
	li	a4,4
	bgt	a5,a4,.L355
	li	a4,3
	beq	a5,a4,.L356
	li	a4,3
	bgt	a5,a4,.L355
	li	a4,2
	beq	a5,a4,.L357
	li	a4,2
	bgt	a5,a4,.L355
	beq	a5,zero,.L366
	li	a4,1
	bne	a5,a4,.L355
	.loc 1 4883 11
	lw	a5,-24(s0)
	lw	a4,92(a5)
	.loc 1 4883 29
	lw	a5,-40(s0)
	or	a4,a4,a5
	lw	a5,-24(s0)
	sw	a4,92(a5)
	.loc 1 4884 6
	j	.L359
.L357:
	.loc 1 4887 13
	lw	a5,-24(s0)
	lw	a5,92(a5)
	.loc 1 4887 32
	addi	a4,a5,1
	lw	a5,-24(s0)
	sw	a4,92(a5)
	.loc 1 4888 6
	j	.L359
.L356:
	.loc 1 4891 29
	lw	a5,-24(s0)
	lw	a4,-40(s0)
	sw	a4,92(a5)
	.loc 1 4892 6
	j	.L359
.L354:
	.loc 1 4895 8
	lbu	a4,-25(s0)
	li	a5,2
	beq	a4,a5,.L360
	.loc 1 4897 30
	lw	a5,-24(s0)
	lw	a4,-40(s0)
	sw	a4,92(a5)
	.loc 1 4904 6
	j	.L359
.L360:
	.loc 1 4902 15
	sw	zero,-20(s0)
	.loc 1 4904 6
	j	.L359
.L355:
	.loc 1 4915 17
	lw	a5,-24(s0)
	lw	a4,92(a5)
	.loc 1 4915 8
	li	a5,-1
	beq	a4,a5,.L367
	.loc 1 4915 52 discriminator 1
	call	vAssertCalled
	.loc 1 4917 6
	j	.L367
.L366:
	.loc 1 4909 6
	nop
	j	.L359
.L367:
	.loc 1 4917 6
	nop
.L359:
	.loc 1 4924 6
	lbu	a4,-25(s0)
	li	a5,1
	bne	a4,a5,.L363
	.loc 1 4926 28
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 4926 14
	mv	a0,a5
	call	uxListRemove
	.loc 1 4927 53
	lw	a5,-24(s0)
	lw	a5,44(a5)
	.loc 1 4927 39
	li	a4,1
	sll	a4,a4,a5
	.loc 1 4927 30
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	.loc 1 4927 118
	lw	a5,-24(s0)
	lw	a4,44(a5)
	.loc 1 4927 87
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	.loc 1 4927 136
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 4927 71
	mv	a1,a5
	mv	a0,a4
	call	vListInsertEnd
	.loc 1 4930 43
	lw	a5,-24(s0)
	lw	a5,40(a5)
	.loc 1 4930 7
	beq	a5,zero,.L364
	.loc 1 4930 13 discriminator 1
	call	vAssertCalled
.L364:
	.loc 1 4948 14
	lw	a5,-24(s0)
	lw	a4,44(a5)
	.loc 1 4948 41
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	.loc 1 4948 7
	bleu	a4,a5,.L363
	.loc 1 4952 6
 #APP
# 4952 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c" 1
	ecall
# 0 "" 2
 #NO_APP
.L363:
	.loc 1 4964 3
	call	vTaskExitCritical
	.loc 1 4966 10
	lw	a5,-20(s0)
	.loc 1 4967 2
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
.LFE69:
	.size	xTaskGenericNotify, .-xTaskGenericNotify
	.section	.text.xTaskGenericNotifyFromISR,"ax",@progbits
	.align	1
	.globl	xTaskGenericNotifyFromISR
	.type	xTaskGenericNotifyFromISR, @function
xTaskGenericNotifyFromISR:
.LFB70:
	.loc 1 4975 2
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
	mv	a5,a2
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sb	a5,-41(s0)
	.loc 1 4978 13
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 4981 5
	lw	a5,-36(s0)
	bne	a5,zero,.L369
	.loc 1 4981 32 discriminator 1
	call	vAssertCalled
.L369:
	.loc 1 5001 9
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 5003 26
	sw	zero,-28(s0)
	.loc 1 5005 6
	lw	a5,-48(s0)
	beq	a5,zero,.L370
	.loc 1 5007 42
	lw	a5,-24(s0)
	lw	a4,92(a5)
	.loc 1 5007 35
	lw	a5,-48(s0)
	sw	a4,0(a5)
.L370:
	.loc 1 5010 26
	lw	a5,-24(s0)
	lbu	a5,96(a5)
	sb	a5,-29(s0)
	.loc 1 5011 25
	lw	a5,-24(s0)
	li	a4,2
	sb	a4,96(a5)
	.loc 1 5013 4
	lbu	a5,-41(s0)
	li	a4,4
	beq	a5,a4,.L371
	li	a4,4
	bgt	a5,a4,.L372
	li	a4,3
	beq	a5,a4,.L373
	li	a4,3
	bgt	a5,a4,.L372
	li	a4,2
	beq	a5,a4,.L374
	li	a4,2
	bgt	a5,a4,.L372
	beq	a5,zero,.L386
	li	a4,1
	bne	a5,a4,.L372
	.loc 1 5016 11
	lw	a5,-24(s0)
	lw	a4,92(a5)
	.loc 1 5016 29
	lw	a5,-40(s0)
	or	a4,a4,a5
	lw	a5,-24(s0)
	sw	a4,92(a5)
	.loc 1 5017 6
	j	.L376
.L374:
	.loc 1 5020 13
	lw	a5,-24(s0)
	lw	a5,92(a5)
	.loc 1 5020 32
	addi	a4,a5,1
	lw	a5,-24(s0)
	sw	a4,92(a5)
	.loc 1 5021 6
	j	.L376
.L373:
	.loc 1 5024 29
	lw	a5,-24(s0)
	lw	a4,-40(s0)
	sw	a4,92(a5)
	.loc 1 5025 6
	j	.L376
.L371:
	.loc 1 5028 8
	lbu	a4,-29(s0)
	li	a5,2
	beq	a4,a5,.L377
	.loc 1 5030 30
	lw	a5,-24(s0)
	lw	a4,-40(s0)
	sw	a4,92(a5)
	.loc 1 5037 6
	j	.L376
.L377:
	.loc 1 5035 15
	sw	zero,-20(s0)
	.loc 1 5037 6
	j	.L376
.L372:
	.loc 1 5048 17
	lw	a5,-24(s0)
	lw	a4,92(a5)
	.loc 1 5048 8
	li	a5,-1
	beq	a4,a5,.L387
	.loc 1 5048 52 discriminator 1
	call	vAssertCalled
	.loc 1 5049 6
	j	.L387
.L386:
	.loc 1 5042 6
	nop
	j	.L376
.L387:
	.loc 1 5049 6
	nop
.L376:
	.loc 1 5056 6
	lbu	a4,-29(s0)
	li	a5,1
	bne	a4,a5,.L380
	.loc 1 5059 43
	lw	a5,-24(s0)
	lw	a5,40(a5)
	.loc 1 5059 7
	beq	a5,zero,.L381
	.loc 1 5059 13 discriminator 1
	call	vAssertCalled
.L381:
	.loc 1 5061 30
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	.loc 1 5061 7
	bne	a5,zero,.L382
	.loc 1 5063 29
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 5063 15
	mv	a0,a5
	call	uxListRemove
	.loc 1 5064 54
	lw	a5,-24(s0)
	lw	a5,44(a5)
	.loc 1 5064 40
	li	a4,1
	sll	a4,a4,a5
	.loc 1 5064 31
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	.loc 1 5064 119
	lw	a5,-24(s0)
	lw	a4,44(a5)
	.loc 1 5064 88
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	.loc 1 5064 137
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 5064 72
	mv	a1,a5
	mv	a0,a4
	call	vListInsertEnd
	j	.L383
.L382:
	.loc 1 5070 46
	lw	a5,-24(s0)
	addi	a5,a5,24
	.loc 1 5070 6
	mv	a1,a5
	lui	a5,%hi(xPendingReadyList)
	addi	a0,a5,%lo(xPendingReadyList)
	call	vListInsertEnd
.L383:
	.loc 1 5073 14
	lw	a5,-24(s0)
	lw	a4,44(a5)
	.loc 1 5073 41
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	.loc 1 5073 7
	bleu	a4,a5,.L380
	.loc 1 5077 8
	lw	a5,-52(s0)
	beq	a5,zero,.L384
	.loc 1 5079 34
	lw	a5,-52(s0)
	li	a4,1
	sw	a4,0(a5)
.L384:
	.loc 1 5085 20
	lui	a5,%hi(xYieldPending)
	li	a4,1
	sw	a4,%lo(xYieldPending)(a5)
.L380:
	.loc 1 5095 10
	lw	a5,-20(s0)
	.loc 1 5096 2
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
.LFE70:
	.size	xTaskGenericNotifyFromISR, .-xTaskGenericNotifyFromISR
	.section	.text.vTaskNotifyGiveFromISR,"ax",@progbits
	.align	1
	.globl	vTaskNotifyGiveFromISR
	.type	vTaskNotifyGiveFromISR, @function
vTaskNotifyGiveFromISR:
.LFB71:
	.loc 1 5104 2
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
	.loc 1 5109 5
	lw	a5,-36(s0)
	bne	a5,zero,.L389
	.loc 1 5109 32 discriminator 1
	call	vAssertCalled
.L389:
	.loc 1 5129 9
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 5131 26
	sw	zero,-24(s0)
	.loc 1 5133 26
	lw	a5,-20(s0)
	lbu	a5,96(a5)
	sb	a5,-25(s0)
	.loc 1 5134 25
	lw	a5,-20(s0)
	li	a4,2
	sb	a4,96(a5)
	.loc 1 5138 11
	lw	a5,-20(s0)
	lw	a5,92(a5)
	.loc 1 5138 30
	addi	a4,a5,1
	lw	a5,-20(s0)
	sw	a4,92(a5)
	.loc 1 5144 6
	lbu	a4,-25(s0)
	li	a5,1
	bne	a4,a5,.L395
	.loc 1 5147 43
	lw	a5,-20(s0)
	lw	a5,40(a5)
	.loc 1 5147 7
	beq	a5,zero,.L391
	.loc 1 5147 13 discriminator 1
	call	vAssertCalled
.L391:
	.loc 1 5149 30
	lui	a5,%hi(uxSchedulerSuspended)
	lw	a5,%lo(uxSchedulerSuspended)(a5)
	.loc 1 5149 7
	bne	a5,zero,.L392
	.loc 1 5151 29
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 5151 15
	mv	a0,a5
	call	uxListRemove
	.loc 1 5152 54
	lw	a5,-20(s0)
	lw	a5,44(a5)
	.loc 1 5152 40
	li	a4,1
	sll	a4,a4,a5
	.loc 1 5152 31
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	or	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
	.loc 1 5152 119
	lw	a5,-20(s0)
	lw	a4,44(a5)
	.loc 1 5152 88
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(pxReadyTasksLists)
	addi	a4,a4,%lo(pxReadyTasksLists)
	add	a4,a5,a4
	.loc 1 5152 137
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 5152 72
	mv	a1,a5
	mv	a0,a4
	call	vListInsertEnd
	j	.L393
.L392:
	.loc 1 5158 46
	lw	a5,-20(s0)
	addi	a5,a5,24
	.loc 1 5158 6
	mv	a1,a5
	lui	a5,%hi(xPendingReadyList)
	addi	a0,a5,%lo(xPendingReadyList)
	call	vListInsertEnd
.L393:
	.loc 1 5161 14
	lw	a5,-20(s0)
	lw	a4,44(a5)
	.loc 1 5161 41
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	.loc 1 5161 7
	bleu	a4,a5,.L395
	.loc 1 5165 8
	lw	a5,-40(s0)
	beq	a5,zero,.L394
	.loc 1 5167 34
	lw	a5,-40(s0)
	li	a4,1
	sw	a4,0(a5)
.L394:
	.loc 1 5173 20
	lui	a5,%hi(xYieldPending)
	li	a4,1
	sw	a4,%lo(xYieldPending)(a5)
.L395:
	.loc 1 5182 2
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
.LFE71:
	.size	vTaskNotifyGiveFromISR, .-vTaskNotifyGiveFromISR
	.section	.text.xTaskNotifyStateClear,"ax",@progbits
	.align	1
	.globl	xTaskNotifyStateClear
	.type	xTaskNotifyStateClear, @function
xTaskNotifyStateClear:
.LFB72:
	.loc 1 5190 2
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
	.loc 1 5196 27
	lw	a5,-36(s0)
	bne	a5,zero,.L397
	.loc 1 5196 9 discriminator 1
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	sw	a5,-20(s0)
	j	.L398
.L397:
	.loc 1 5196 9 is_stmt 0 discriminator 2
	lw	a5,-36(s0)
	sw	a5,-20(s0)
.L398:
	.loc 1 5198 3 is_stmt 1
	call	vTaskEnterCritical
	.loc 1 5200 13
	lw	a5,-20(s0)
	lbu	a5,96(a5)
	andi	a4,a5,0xff
	.loc 1 5200 6
	li	a5,2
	bne	a4,a5,.L399
	.loc 1 5202 26
	lw	a5,-20(s0)
	sb	zero,96(a5)
	.loc 1 5203 13
	li	a5,1
	sw	a5,-24(s0)
	j	.L400
.L399:
	.loc 1 5207 13
	sw	zero,-24(s0)
.L400:
	.loc 1 5210 3
	call	vTaskExitCritical
	.loc 1 5212 10
	lw	a5,-24(s0)
	.loc 1 5213 2
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
.LFE72:
	.size	xTaskNotifyStateClear, .-xTaskNotifyStateClear
	.section	.text.ulTaskNotifyValueClear,"ax",@progbits
	.align	1
	.globl	ulTaskNotifyValueClear
	.type	ulTaskNotifyValueClear, @function
ulTaskNotifyValueClear:
.LFB73:
	.loc 1 5221 2
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
	.loc 1 5227 27
	lw	a5,-36(s0)
	bne	a5,zero,.L403
	.loc 1 5227 9 discriminator 1
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	sw	a5,-20(s0)
	j	.L404
.L403:
	.loc 1 5227 9 is_stmt 0 discriminator 2
	lw	a5,-36(s0)
	sw	a5,-20(s0)
.L404:
	.loc 1 5229 3 is_stmt 1
	call	vTaskEnterCritical
	.loc 1 5233 27
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 5233 13
	lw	a5,92(a5)
	sw	a5,-24(s0)
	.loc 1 5234 9
	lw	a5,-20(s0)
	lw	a4,92(a5)
	.loc 1 5234 30
	lw	a5,-40(s0)
	not	a5,a5
	.loc 1 5234 27
	and	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,92(a5)
	.loc 1 5236 3
	call	vTaskExitCritical
	.loc 1 5238 10
	lw	a5,-24(s0)
	.loc 1 5239 2
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
.LFE73:
	.size	ulTaskNotifyValueClear, .-ulTaskNotifyValueClear
	.section	.text.prvAddCurrentTaskToDelayedList,"ax",@progbits
	.align	1
	.type	prvAddCurrentTaskToDelayedList, @function
prvAddCurrentTaskToDelayedList:
.LFB74:
	.loc 1 5255 1
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
	.loc 1 5257 18
	lui	a5,%hi(xTickCount)
	lw	a5,%lo(xTickCount)(a5)
	sw	a5,-20(s0)
	.loc 1 5270 35
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 5270 20
	addi	a5,a5,4
	.loc 1 5270 6
	mv	a0,a5
	call	uxListRemove
	mv	a5,a0
	.loc 1 5270 4 discriminator 1
	bne	a5,zero,.L407
	.loc 1 5274 53
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	lw	a5,44(a5)
	.loc 1 5274 36
	li	a4,1
	sll	a5,a4,a5
	.loc 1 5274 29
	not	a4,a5
	.loc 1 5274 26
	lui	a5,%hi(uxTopReadyPriority)
	lw	a5,%lo(uxTopReadyPriority)(a5)
	and	a4,a4,a5
	lui	a5,%hi(uxTopReadyPriority)
	sw	a4,%lo(uxTopReadyPriority)(a5)
.L407:
	.loc 1 5283 5
	lw	a4,-36(s0)
	li	a5,-1
	bne	a4,a5,.L408
	.loc 1 5283 55 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L408
	.loc 1 5288 56
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 5288 41
	addi	a5,a5,4
	.loc 1 5288 4
	mv	a1,a5
	lui	a5,%hi(xSuspendedTaskList)
	addi	a0,a5,%lo(xSuspendedTaskList)
	call	vListInsertEnd
	.loc 1 5363 1
	j	.L411
.L408:
	.loc 1 5295 16
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 5298 23
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 5298 56
	lw	a4,-24(s0)
	sw	a4,4(a5)
	.loc 1 5300 6
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L410
	.loc 1 5304 5
	lui	a5,%hi(pxOverflowDelayedTaskList)
	lw	a4,%lo(pxOverflowDelayedTaskList)(a5)
	.loc 1 5304 60
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 5304 45
	addi	a5,a5,4
	.loc 1 5304 5
	mv	a1,a5
	mv	a0,a4
	call	vListInsert
	.loc 1 5363 1
	j	.L411
.L410:
	.loc 1 5310 5
	lui	a5,%hi(pxDelayedTaskList)
	lw	a4,%lo(pxDelayedTaskList)(a5)
	.loc 1 5310 52
	lui	a5,%hi(pxCurrentTCB)
	lw	a5,%lo(pxCurrentTCB)(a5)
	.loc 1 5310 37
	addi	a5,a5,4
	.loc 1 5310 5
	mv	a1,a5
	mv	a0,a4
	call	vListInsert
	.loc 1 5315 21
	lui	a5,%hi(xNextTaskUnblockTime)
	lw	a5,%lo(xNextTaskUnblockTime)(a5)
	.loc 1 5315 7
	lw	a4,-24(s0)
	bgeu	a4,a5,.L411
	.loc 1 5317 27
	lui	a5,%hi(xNextTaskUnblockTime)
	lw	a4,-24(s0)
	sw	a4,%lo(xNextTaskUnblockTime)(a5)
.L411:
	.loc 1 5363 1
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
.LFE74:
	.size	prvAddCurrentTaskToDelayedList, .-prvAddCurrentTaskToDelayedList
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/projdefs.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/list.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/timers.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOSConfig.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1ed8
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x23
	.4byte	.LASF314
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x3c
	.uleb128 0xe
	.4byte	0x2b
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x24
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0xc
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0xc
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x25
	.byte	0x4
	.uleb128 0x5
	.4byte	0x89
	.uleb128 0x6
	.4byte	0x9a
	.uleb128 0x1b
	.4byte	0x90
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	0x9a
	.uleb128 0x6
	.4byte	0xa1
	.uleb128 0x5
	.4byte	0xa6
	.uleb128 0x1b
	.4byte	0xa6
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x74
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x5f
	.uleb128 0xe
	.4byte	0xc1
	.uleb128 0x5
	.4byte	0xc1
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x6d
	.uleb128 0x5
	.4byte	0xd7
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x7b
	.uleb128 0xe
	.4byte	0xe8
	.uleb128 0x5
	.4byte	0xe8
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x23
	.byte	0x10
	.4byte	0x10a
	.uleb128 0x6
	.4byte	0x10f
	.uleb128 0x26
	.4byte	0x11a
	.uleb128 0x3
	.4byte	0x89
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x3e
	.byte	0x12
	.4byte	0xe8
	.uleb128 0xe
	.4byte	0x11a
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x3f
	.byte	0x11
	.4byte	0xb5
	.uleb128 0xe
	.4byte	0x12b
	.uleb128 0x5
	.4byte	0x12b
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x40
	.byte	0x12
	.4byte	0xe8
	.uleb128 0xe
	.4byte	0x141
	.uleb128 0x5
	.4byte	0x141
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x41
	.byte	0x12
	.4byte	0xe8
	.uleb128 0xe
	.4byte	0x157
	.uleb128 0x5
	.4byte	0x157
	.uleb128 0x6
	.4byte	0xc1
	.uleb128 0x1c
	.4byte	.LASF26
	.byte	0x14
	.2byte	0x425
	.byte	0x8
	.4byte	0x19c
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x42a
	.byte	0xd
	.4byte	0x157
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x42b
	.byte	0x8
	.4byte	0x19c
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	0x89
	.4byte	0x1ac
	.uleb128 0x11
	.4byte	0x3c
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x430
	.byte	0x22
	.4byte	0x172
	.uleb128 0x1c
	.4byte	.LASF27
	.byte	0x64
	.2byte	0x458
	.byte	0x10
	.4byte	0x26f
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x45a
	.byte	0x8
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x45e
	.byte	0x13
	.4byte	0x26f
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x45f
	.byte	0xe
	.4byte	0x141
	.byte	0x2c
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x460
	.byte	0x8
	.4byte	0x89
	.byte	0x30
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x461
	.byte	0xa
	.4byte	0x27f
	.byte	0x34
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x466
	.byte	0xf
	.4byte	0x141
	.byte	0x44
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x469
	.byte	0xf
	.4byte	0x28f
	.byte	0x48
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x46c
	.byte	0xf
	.4byte	0x28f
	.byte	0x50
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x472
	.byte	0x9
	.4byte	0x29f
	.byte	0x58
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x47b
	.byte	0xc
	.4byte	0xe8
	.byte	0x5c
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x47c
	.byte	0xb
	.4byte	0xc1
	.byte	0x60
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x47f
	.byte	0xb
	.4byte	0xc1
	.byte	0x61
	.byte	0
	.uleb128 0x10
	.4byte	0x1ac
	.4byte	0x27f
	.uleb128 0x11
	.4byte	0x3c
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.4byte	0xc1
	.4byte	0x28f
	.uleb128 0x11
	.4byte	0x3c
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.4byte	0x141
	.4byte	0x29f
	.uleb128 0x11
	.4byte	0x3c
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.4byte	0x89
	.4byte	0x2af
	.uleb128 0x11
	.4byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x488
	.byte	0x3
	.4byte	0x1b9
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x14
	.byte	0x7
	.byte	0x8c
	.byte	0x8
	.4byte	0x30b
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x7
	.byte	0x8f
	.byte	0xd
	.4byte	0x157
	.byte	0
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x7
	.byte	0x90
	.byte	0x16
	.4byte	0x30b
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x7
	.byte	0x91
	.byte	0x16
	.4byte	0x30b
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x7
	.byte	0x92
	.byte	0x9
	.4byte	0x89
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x7
	.byte	0x93
	.byte	0x11
	.4byte	0x345
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	0x2bc
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x14
	.byte	0x7
	.byte	0xa4
	.byte	0x10
	.4byte	0x345
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x7
	.byte	0xa7
	.byte	0x17
	.4byte	0x14d
	.byte	0
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x7
	.byte	0xa8
	.byte	0xf
	.4byte	0x397
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x7
	.byte	0xa9
	.byte	0x11
	.4byte	0x38b
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	0x310
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x7
	.byte	0x96
	.byte	0x1b
	.4byte	0x2bc
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0xc
	.byte	0x7
	.byte	0x98
	.byte	0x8
	.4byte	0x38b
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x7
	.byte	0x9b
	.byte	0xd
	.4byte	0x157
	.byte	0
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x7
	.byte	0x9c
	.byte	0x16
	.4byte	0x30b
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x7
	.byte	0x9d
	.byte	0x16
	.4byte	0x30b
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x7
	.byte	0x9f
	.byte	0x20
	.4byte	0x356
	.uleb128 0x6
	.4byte	0x34a
	.uleb128 0x5
	.4byte	0x397
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x7
	.byte	0xab
	.byte	0x3
	.4byte	0x310
	.uleb128 0x5
	.4byte	0x3a1
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x8
	.byte	0x46
	.byte	0x25
	.4byte	0x3c3
	.uleb128 0x5
	.4byte	0x3b2
	.uleb128 0x6
	.4byte	0x3c8
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x64
	.byte	0x1
	.byte	0xfc
	.byte	0x10
	.4byte	0x4a7
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x1
	.byte	0xfe
	.byte	0x18
	.4byte	0x62a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x104
	.byte	0xd
	.4byte	0x34a
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x105
	.byte	0xd
	.4byte	0x34a
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x106
	.byte	0xe
	.4byte	0x141
	.byte	0x2c
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x107
	.byte	0xf
	.4byte	0x591
	.byte	0x30
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x108
	.byte	0x7
	.4byte	0x62f
	.byte	0x34
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x10f
	.byte	0xf
	.4byte	0x141
	.byte	0x44
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x113
	.byte	0xf
	.4byte	0x141
	.byte	0x48
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x114
	.byte	0xf
	.4byte	0x141
	.byte	0x4c
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x118
	.byte	0xf
	.4byte	0x141
	.byte	0x50
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x119
	.byte	0xf
	.4byte	0x141
	.byte	0x54
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x121
	.byte	0x9
	.4byte	0x29f
	.byte	0x58
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x137
	.byte	0x15
	.4byte	0xf4
	.byte	0x5c
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x138
	.byte	0x14
	.4byte	0xcd
	.byte	0x60
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x13e
	.byte	0xb
	.4byte	0xc1
	.byte	0x61
	.byte	0
	.uleb128 0x1d
	.4byte	0x5f
	.byte	0x50
	.4byte	0x4d6
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x8
	.byte	0x57
	.byte	0x3
	.4byte	0x4a7
	.uleb128 0x1d
	.4byte	0x5f
	.byte	0x5b
	.4byte	0x50b
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x8
	.byte	0x61
	.byte	0x3
	.4byte	0x4e2
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x8
	.byte	0x8
	.byte	0x66
	.byte	0x10
	.4byte	0x53f
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x8
	.byte	0x68
	.byte	0xd
	.4byte	0x12b
	.byte	0
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x8
	.byte	0x69
	.byte	0xd
	.4byte	0x157
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x8
	.byte	0x6a
	.byte	0x3
	.4byte	0x517
	.uleb128 0x12
	.4byte	.LASF89
	.byte	0xc
	.byte	0x8
	.byte	0x6f
	.byte	0x10
	.4byte	0x580
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x8
	.byte	0x71
	.byte	0x8
	.4byte	0x89
	.byte	0
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x8
	.byte	0x72
	.byte	0xb
	.4byte	0xe8
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x8
	.byte	0x73
	.byte	0xb
	.4byte	0xe8
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x8
	.byte	0x74
	.byte	0x3
	.4byte	0x54b
	.uleb128 0x5
	.4byte	0x580
	.uleb128 0x6
	.4byte	0x11a
	.uleb128 0x5
	.4byte	0x591
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x24
	.byte	0x8
	.byte	0x89
	.byte	0x10
	.4byte	0x61e
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x8
	.byte	0x8b
	.byte	0xf
	.4byte	0x3b2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x8
	.byte	0x8c
	.byte	0xe
	.4byte	0xa6
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0x8
	.byte	0x8d
	.byte	0xe
	.4byte	0x141
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x8
	.byte	0x8e
	.byte	0xd
	.4byte	0x4d6
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0x8
	.byte	0x8f
	.byte	0xe
	.4byte	0x141
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x8
	.byte	0x90
	.byte	0xe
	.4byte	0x141
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0x8
	.byte	0x91
	.byte	0xb
	.4byte	0xe8
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0x8
	.byte	0x92
	.byte	0xf
	.4byte	0x591
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0x8
	.byte	0x93
	.byte	0xb
	.4byte	0xd7
	.byte	0x20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x8
	.byte	0x94
	.byte	0x3
	.4byte	0x59b
	.uleb128 0x6
	.4byte	0x126
	.uleb128 0x10
	.4byte	0x9a
	.4byte	0x63f
	.uleb128 0x11
	.4byte	0x3c
	.byte	0xf
	.byte	0
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x149
	.byte	0x3
	.4byte	0x3c8
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x14d
	.byte	0x10
	.4byte	0x63f
	.uleb128 0x5
	.4byte	0x64c
	.uleb128 0x27
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x151
	.byte	0x13
	.4byte	0x676
	.uleb128 0x5
	.byte	0x3
	.4byte	pxCurrentTCB
	.uleb128 0x6
	.4byte	0x64c
	.uleb128 0xe
	.4byte	0x671
	.uleb128 0x5
	.4byte	0x671
	.uleb128 0x10
	.4byte	0x3a1
	.4byte	0x690
	.uleb128 0x11
	.4byte	0x3c
	.byte	0x1f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF105
	.2byte	0x157
	.byte	0x10
	.4byte	0x680
	.uleb128 0x5
	.byte	0x3
	.4byte	pxReadyTasksLists
	.uleb128 0x1
	.4byte	.LASF106
	.2byte	0x158
	.byte	0x10
	.4byte	0x3a1
	.uleb128 0x5
	.byte	0x3
	.4byte	xDelayedTaskList1
	.uleb128 0x1
	.4byte	.LASF107
	.2byte	0x159
	.byte	0x10
	.4byte	0x3a1
	.uleb128 0x5
	.byte	0x3
	.4byte	xDelayedTaskList2
	.uleb128 0x1
	.4byte	.LASF108
	.2byte	0x15a
	.byte	0x1b
	.4byte	0x6dd
	.uleb128 0x5
	.byte	0x3
	.4byte	pxDelayedTaskList
	.uleb128 0x6
	.4byte	0x3a1
	.uleb128 0xe
	.4byte	0x6d8
	.uleb128 0x5
	.4byte	0x6d8
	.uleb128 0x1
	.4byte	.LASF109
	.2byte	0x15b
	.byte	0x1b
	.4byte	0x6dd
	.uleb128 0x5
	.byte	0x3
	.4byte	pxOverflowDelayedTaskList
	.uleb128 0x1
	.4byte	.LASF110
	.2byte	0x15c
	.byte	0x10
	.4byte	0x3a1
	.uleb128 0x5
	.byte	0x3
	.4byte	xPendingReadyList
	.uleb128 0x1
	.4byte	.LASF111
	.2byte	0x160
	.byte	0x10
	.4byte	0x3a1
	.uleb128 0x5
	.byte	0x3
	.4byte	xTasksWaitingTermination
	.uleb128 0x1
	.4byte	.LASF112
	.2byte	0x161
	.byte	0x1e
	.4byte	0x14d
	.uleb128 0x5
	.byte	0x3
	.4byte	uxDeletedTasksWaitingCleanUp
	.uleb128 0x1
	.4byte	.LASF113
	.2byte	0x167
	.byte	0x10
	.4byte	0x3a1
	.uleb128 0x5
	.byte	0x3
	.4byte	xSuspendedTaskList
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x172
	.byte	0x1e
	.4byte	0x14d
	.uleb128 0x5
	.byte	0x3
	.4byte	uxCurrentNumberOfTasks
	.uleb128 0x1
	.4byte	.LASF115
	.2byte	0x173
	.byte	0x1d
	.4byte	0x163
	.uleb128 0x5
	.byte	0x3
	.4byte	xTickCount
	.uleb128 0x1
	.4byte	.LASF116
	.2byte	0x174
	.byte	0x1e
	.4byte	0x14d
	.uleb128 0x5
	.byte	0x3
	.4byte	uxTopReadyPriority
	.uleb128 0x1
	.4byte	.LASF117
	.2byte	0x175
	.byte	0x1d
	.4byte	0x137
	.uleb128 0x5
	.byte	0x3
	.4byte	xSchedulerRunning
	.uleb128 0x1
	.4byte	.LASF118
	.2byte	0x176
	.byte	0x1d
	.4byte	0x163
	.uleb128 0x5
	.byte	0x3
	.4byte	xPendedTicks
	.uleb128 0x1
	.4byte	.LASF119
	.2byte	0x177
	.byte	0x1d
	.4byte	0x137
	.uleb128 0x5
	.byte	0x3
	.4byte	xYieldPending
	.uleb128 0x1
	.4byte	.LASF120
	.2byte	0x178
	.byte	0x1d
	.4byte	0x137
	.uleb128 0x5
	.byte	0x3
	.4byte	xNumOfOverflows
	.uleb128 0x1
	.4byte	.LASF65
	.2byte	0x179
	.byte	0x15
	.4byte	0x141
	.uleb128 0x5
	.byte	0x3
	.4byte	uxTaskNumber
	.uleb128 0x1
	.4byte	.LASF121
	.2byte	0x17a
	.byte	0x1d
	.4byte	0x163
	.uleb128 0x5
	.byte	0x3
	.4byte	xNextTaskUnblockTime
	.uleb128 0x1
	.4byte	.LASF122
	.2byte	0x17b
	.byte	0x16
	.4byte	0x3b2
	.uleb128 0x5
	.byte	0x3
	.4byte	xIdleTaskHandle
	.uleb128 0x1
	.4byte	.LASF123
	.2byte	0x185
	.byte	0x1e
	.4byte	0x14d
	.uleb128 0x5
	.byte	0x3
	.4byte	uxSchedulerSuspended
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0x9
	.byte	0xfa
	.byte	0x5
	.4byte	0x43
	.4byte	0x823
	.uleb128 0x3
	.4byte	0x95
	.uleb128 0x3
	.4byte	0xb0
	.uleb128 0x28
	.byte	0
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0xa
	.byte	0x29
	.byte	0x8
	.4byte	0x2b
	.4byte	0x839
	.uleb128 0x3
	.4byte	0xa6
	.byte	0
	.uleb128 0x14
	.4byte	.LASF126
	.byte	0xa
	.byte	0x26
	.byte	0x7
	.4byte	0x90
	.4byte	0x854
	.uleb128 0x3
	.4byte	0x95
	.uleb128 0x3
	.4byte	0xb0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF127
	.byte	0x7
	.2byte	0x159
	.byte	0x6
	.4byte	0x867
	.uleb128 0x3
	.4byte	0x6e2
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF131
	.uleb128 0x15
	.4byte	.LASF128
	.byte	0x7
	.2byte	0x171
	.byte	0x6
	.4byte	0x884
	.uleb128 0x3
	.4byte	0x6e2
	.uleb128 0x3
	.4byte	0x39c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x197
	.byte	0xe
	.4byte	0x89c
	.uleb128 0x3
	.4byte	0x3b2
	.uleb128 0x3
	.4byte	0x90
	.byte	0
	.uleb128 0x19
	.4byte	.LASF130
	.byte	0x1
	.2byte	0xadf
	.byte	0x10
	.4byte	0x43
	.4byte	0x8b3
	.uleb128 0x3
	.4byte	0x8b3
	.byte	0
	.uleb128 0x6
	.4byte	0xe8
	.uleb128 0x5
	.4byte	0x8b3
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0xb
	.byte	0xb5
	.uleb128 0x29
	.4byte	.LASF133
	.byte	0xb
	.byte	0xae
	.byte	0xc
	.4byte	0x12b
	.uleb128 0x2a
	.4byte	.LASF134
	.byte	0xc
	.2byte	0x50f
	.byte	0xc
	.4byte	0x12b
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x1a3
	.byte	0xe
	.4byte	0x8fa
	.uleb128 0x3
	.4byte	0x8fa
	.uleb128 0x3
	.4byte	0x909
	.uleb128 0x3
	.4byte	0x8b3
	.byte	0
	.uleb128 0x6
	.4byte	0x8ff
	.uleb128 0x6
	.4byte	0x2af
	.uleb128 0x5
	.4byte	0x8ff
	.uleb128 0x6
	.4byte	0x591
	.uleb128 0x19
	.4byte	.LASF136
	.byte	0x7
	.2byte	0x195
	.byte	0xd
	.4byte	0x141
	.4byte	0x925
	.uleb128 0x3
	.4byte	0x39c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF137
	.byte	0x7
	.2byte	0x186
	.byte	0x6
	.4byte	0x93d
	.uleb128 0x3
	.4byte	0x6e2
	.uleb128 0x3
	.4byte	0x39c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF138
	.byte	0xb
	.byte	0x75
	.byte	0x10
	.4byte	0x591
	.4byte	0x95d
	.uleb128 0x3
	.4byte	0x591
	.uleb128 0x3
	.4byte	0xfe
	.uleb128 0x3
	.4byte	0x89
	.byte	0
	.uleb128 0x15
	.4byte	.LASF139
	.byte	0x7
	.2byte	0x164
	.byte	0x6
	.4byte	0x970
	.uleb128 0x3
	.4byte	0x39c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF140
	.byte	0xa
	.byte	0x21
	.byte	0x8
	.4byte	0x89
	.4byte	0x990
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0x43
	.uleb128 0x3
	.4byte	0x2b
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF141
	.byte	0xb
	.byte	0xa4
	.byte	0x6
	.4byte	0x9a2
	.uleb128 0x3
	.4byte	0x89
	.byte	0
	.uleb128 0x14
	.4byte	.LASF142
	.byte	0xb
	.byte	0xa3
	.byte	0x7
	.4byte	0x89
	.4byte	0x9b8
	.uleb128 0x3
	.4byte	0x2b
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF143
	.byte	0xd
	.byte	0x97
	.uleb128 0x13
	.4byte	.LASF192
	.2byte	0x1486
	.byte	0xd
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa12
	.uleb128 0x2
	.4byte	.LASF144
	.2byte	0x1486
	.byte	0x38
	.4byte	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF145
	.2byte	0x1486
	.byte	0x57
	.4byte	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF146
	.2byte	0x1488
	.byte	0xc
	.4byte	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF147
	.2byte	0x1489
	.byte	0x12
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF152
	.2byte	0x1464
	.byte	0xb
	.4byte	0xe8
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa69
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0x1464
	.byte	0x30
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF149
	.2byte	0x1464
	.byte	0x40
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x1466
	.byte	0x9
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF151
	.2byte	0x1467
	.byte	0xb
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF153
	.2byte	0x1445
	.byte	0xd
	.4byte	0x12b
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab1
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0x1445
	.byte	0x31
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x1447
	.byte	0x9
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF154
	.2byte	0x1448
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF172
	.2byte	0x13ef
	.byte	0x7
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb13
	.uleb128 0x2
	.4byte	.LASF155
	.2byte	0x13ef
	.byte	0x2c
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF156
	.2byte	0x13ef
	.byte	0x47
	.4byte	0xb13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x13f1
	.byte	0xa
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF157
	.2byte	0x13f2
	.byte	0xa
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.4byte	.LASF158
	.2byte	0x13f3
	.byte	0xe
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	0x12b
	.uleb128 0x8
	.4byte	.LASF159
	.2byte	0x136e
	.byte	0xd
	.4byte	0x12b
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbba
	.uleb128 0x2
	.4byte	.LASF155
	.2byte	0x136e
	.byte	0x35
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF160
	.2byte	0x136e
	.byte	0x4d
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x136e
	.byte	0x64
	.4byte	0x50b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x2
	.4byte	.LASF162
	.2byte	0x136e
	.byte	0x77
	.4byte	0x8b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF156
	.2byte	0x136e
	.byte	0xa1
	.4byte	0xb13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x1370
	.byte	0xa
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF157
	.2byte	0x1371
	.byte	0xa
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x1
	.4byte	.LASF154
	.2byte	0x1372
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF158
	.2byte	0x1373
	.byte	0xe
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	.LASF163
	.2byte	0x12fc
	.byte	0xd
	.4byte	0x12b
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3e
	.uleb128 0x2
	.4byte	.LASF155
	.2byte	0x12fc
	.byte	0x2e
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF160
	.2byte	0x12fc
	.byte	0x46
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF161
	.2byte	0x12fc
	.byte	0x5d
	.4byte	0x50b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x2
	.4byte	.LASF162
	.2byte	0x12fc
	.byte	0x70
	.4byte	0x8b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x12fe
	.byte	0xa
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF154
	.2byte	0x12ff
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF157
	.2byte	0x1300
	.byte	0xa
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x8
	.4byte	.LASF164
	.2byte	0x12ac
	.byte	0xd
	.4byte	0x12b
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca4
	.uleb128 0x2
	.4byte	.LASF165
	.2byte	0x12ac
	.byte	0x27
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF166
	.2byte	0x12ac
	.byte	0x46
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF167
	.2byte	0x12ac
	.byte	0x65
	.4byte	0x8b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF144
	.2byte	0x12ac
	.byte	0x86
	.4byte	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF154
	.2byte	0x12ae
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF168
	.2byte	0x1268
	.byte	0xb
	.4byte	0xe8
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcec
	.uleb128 0x2
	.4byte	.LASF169
	.2byte	0x1268
	.byte	0x28
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF144
	.2byte	0x1268
	.byte	0x46
	.4byte	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF151
	.2byte	0x126a
	.byte	0xb
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF258
	.2byte	0x1257
	.byte	0xf
	.4byte	0x3b2
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF170
	.2byte	0x1247
	.byte	0xc
	.4byte	0x157
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd2c
	.uleb128 0x1
	.4byte	.LASF171
	.2byte	0x1249
	.byte	0xc
	.4byte	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF173
	.2byte	0x1167
	.byte	0x7
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd8c
	.uleb128 0x2
	.4byte	.LASF174
	.2byte	0x1167
	.byte	0x19
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x1169
	.byte	0x10
	.4byte	0xd8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x116a
	.byte	0xe
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"x"
	.2byte	0x116a
	.byte	0x1b
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x116b
	.byte	0x7
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x6
	.4byte	0x61e
	.uleb128 0x5
	.4byte	0xd8c
	.uleb128 0x1a
	.4byte	.LASF197
	.2byte	0x114d
	.byte	0xf
	.4byte	0x90
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xddc
	.uleb128 0x2
	.4byte	.LASF178
	.2byte	0x114d
	.byte	0x2b
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF62
	.2byte	0x114d
	.byte	0x41
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"x"
	.2byte	0x114f
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF179
	.2byte	0x112c
	.byte	0x7
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LASF180
	.2byte	0x110e
	.byte	0x7
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF181
	.2byte	0x10a5
	.byte	0x7
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe71
	.uleb128 0x2
	.4byte	.LASF182
	.2byte	0x10a5
	.byte	0x3f
	.4byte	0x3be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF183
	.2byte	0x10a5
	.byte	0x5a
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x10a7
	.byte	0x10
	.4byte	0x67b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF184
	.2byte	0x10a8
	.byte	0xe
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF185
	.2byte	0x10a8
	.byte	0x25
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF186
	.2byte	0x10a9
	.byte	0x14
	.4byte	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	.LASF187
	.2byte	0x1055
	.byte	0xd
	.4byte	0x12b
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb9
	.uleb128 0x2
	.4byte	.LASF182
	.2byte	0x1055
	.byte	0x39
	.4byte	0x3be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x1057
	.byte	0x10
	.4byte	0x67b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF154
	.2byte	0x1058
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF188
	.2byte	0xffb
	.byte	0xd
	.4byte	0x12b
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf01
	.uleb128 0x2
	.4byte	.LASF182
	.2byte	0xffb
	.byte	0x36
	.4byte	0x3be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF189
	.2byte	0xffd
	.byte	0x10
	.4byte	0x67b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF154
	.2byte	0xffe
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF190
	.2byte	0xfdf
	.byte	0xd
	.4byte	0x12b
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf2b
	.uleb128 0x1
	.4byte	.LASF154
	.2byte	0xfe1
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF191
	.2byte	0xfce
	.byte	0xf
	.4byte	0x3b2
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf55
	.uleb128 0x1
	.4byte	.LASF154
	.2byte	0xfd0
	.byte	0xf
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF193
	.byte	0x1
	.2byte	0xfb4
	.byte	0xd
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf7c
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0xfb6
	.byte	0x8
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF194
	.2byte	0xf7c
	.byte	0xe
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa2
	.uleb128 0x2
	.4byte	.LASF150
	.2byte	0xf7c
	.byte	0x23
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF195
	.2byte	0xf60
	.byte	0xe
	.4byte	0x141
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff9
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0xf60
	.byte	0x38
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0xf62
	.byte	0x9
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF196
	.2byte	0xf63
	.byte	0xb
	.4byte	0x16d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF171
	.2byte	0xf64
	.byte	0xe
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF198
	.byte	0x1
	.2byte	0xf24
	.byte	0x12
	.4byte	0xd7
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1033
	.uleb128 0x2
	.4byte	.LASF199
	.2byte	0xf24
	.byte	0x3e
	.4byte	0x1033
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF200
	.2byte	0xf26
	.byte	0xb
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0xd2
	.uleb128 0x1a
	.4byte	.LASF201
	.2byte	0xf03
	.byte	0x15
	.4byte	0x141
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10e3
	.uleb128 0x2
	.4byte	.LASF175
	.2byte	0xf03
	.byte	0x41
	.4byte	0xd8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF202
	.2byte	0xf03
	.byte	0x5c
	.4byte	0x6d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF203
	.2byte	0xf03
	.byte	0x6f
	.4byte	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x1
	.4byte	.LASF204
	.2byte	0xf05
	.byte	0x9
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF205
	.2byte	0xf05
	.byte	0x15
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF206
	.2byte	0xf06
	.byte	0xe
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x10c9
	.uleb128 0x1
	.4byte	.LASF207
	.2byte	0xf0a
	.byte	0x15
	.4byte	0x6e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x1
	.4byte	.LASF207
	.2byte	0xf12
	.byte	0x16
	.4byte	0x6e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF208
	.2byte	0xea3
	.byte	0x7
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1145
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0xea3
	.byte	0x22
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF209
	.2byte	0xea3
	.byte	0x37
	.4byte	0xd8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF210
	.2byte	0xea3
	.byte	0x50
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF203
	.2byte	0xea3
	.byte	0x6f
	.4byte	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0xea5
	.byte	0x9
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF211
	.2byte	0xe84
	.byte	0xd
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1175
	.uleb128 0xb
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0xe8b
	.byte	0xa
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF212
	.2byte	0xe64
	.byte	0xd
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x119b
	.uleb128 0x1
	.4byte	.LASF60
	.2byte	0xe66
	.byte	0xd
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF213
	.2byte	0xe3e
	.byte	0x8
	.4byte	0x89
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11f2
	.uleb128 0x2
	.4byte	.LASF214
	.2byte	0xe3e
	.byte	0x39
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF215
	.2byte	0xe3e
	.byte	0x52
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF216
	.2byte	0xe40
	.byte	0x8
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0xe41
	.byte	0x9
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF217
	.2byte	0xe2d
	.byte	0x7
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1245
	.uleb128 0x2
	.4byte	.LASF218
	.2byte	0xe2d
	.byte	0x37
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF215
	.2byte	0xe2d
	.byte	0x4e
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF219
	.2byte	0xe2d
	.byte	0x5c
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0xe2f
	.byte	0x9
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF220
	.2byte	0xd8c
	.byte	0xd
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x127a
	.uleb128 0x2
	.4byte	.LASF221
	.2byte	0xd8c
	.byte	0x20
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF222
	.2byte	0xd74
	.byte	0x7
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12be
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0xd74
	.byte	0x28
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF223
	.2byte	0xd74
	.byte	0x41
	.4byte	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0xd76
	.byte	0xa
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF224
	.2byte	0xd5d
	.byte	0xe
	.4byte	0x141
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1306
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0xd5d
	.byte	0x30
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF171
	.2byte	0xd5f
	.byte	0xe
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0xd60
	.byte	0xf
	.4byte	0x1306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	0x659
	.uleb128 0x5
	.4byte	0x1306
	.uleb128 0x18
	.4byte	.LASF225
	.2byte	0xd55
	.byte	0x6
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF226
	.2byte	0xd16
	.byte	0xc
	.4byte	0x12b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1392
	.uleb128 0x2
	.4byte	.LASF227
	.2byte	0xd16
	.byte	0x34
	.4byte	0x1397
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF228
	.2byte	0xd16
	.byte	0x52
	.4byte	0x13a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF154
	.2byte	0xd18
	.byte	0xc
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x1
	.4byte	.LASF147
	.2byte	0xd20
	.byte	0x14
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF229
	.2byte	0xd21
	.byte	0x14
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x53f
	.uleb128 0x5
	.4byte	0x1392
	.uleb128 0x6
	.4byte	0x157
	.uleb128 0x5
	.4byte	0x139c
	.uleb128 0x22
	.4byte	.LASF230
	.2byte	0xd0e
	.byte	0x6
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13cc
	.uleb128 0x2
	.4byte	.LASF227
	.2byte	0xd0e
	.byte	0x36
	.4byte	0x1397
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF231
	.2byte	0xd02
	.byte	0x6
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13f2
	.uleb128 0x2
	.4byte	.LASF227
	.2byte	0xd02
	.byte	0x2e
	.4byte	0x1397
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF232
	.2byte	0xcd2
	.byte	0x6
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1436
	.uleb128 0x2
	.4byte	.LASF233
	.2byte	0xcd2
	.byte	0x36
	.4byte	0x397
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF42
	.2byte	0xcd2
	.byte	0x58
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF234
	.2byte	0xcd4
	.byte	0x8
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF235
	.2byte	0xc8e
	.byte	0xc
	.4byte	0x12b
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x147e
	.uleb128 0x2
	.4byte	.LASF236
	.2byte	0xc8e
	.byte	0x3b
	.4byte	0x1483
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF234
	.2byte	0xc90
	.byte	0x8
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF154
	.2byte	0xc91
	.byte	0xc
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x3ad
	.uleb128 0x5
	.4byte	0x147e
	.uleb128 0xa
	.4byte	.LASF237
	.2byte	0xc6f
	.byte	0x7
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14cc
	.uleb128 0x2
	.4byte	.LASF236
	.2byte	0xc6f
	.byte	0x37
	.4byte	0x6e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF144
	.2byte	0xc6f
	.byte	0x4f
	.4byte	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF238
	.2byte	0xc6f
	.byte	0x6e
	.4byte	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF239
	.2byte	0xc55
	.byte	0x6
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1510
	.uleb128 0x2
	.4byte	.LASF236
	.2byte	0xc55
	.byte	0x2f
	.4byte	0x6d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF42
	.2byte	0xc55
	.byte	0x4d
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF144
	.2byte	0xc55
	.byte	0x6a
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF240
	.2byte	0xc44
	.byte	0x6
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1545
	.uleb128 0x2
	.4byte	.LASF236
	.2byte	0xc44
	.byte	0x2c
	.4byte	0x6e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF144
	.2byte	0xc44
	.byte	0x4a
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF241
	.2byte	0xbf9
	.byte	0x6
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15ba
	.uleb128 0x21
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x1587
	.uleb128 0x1
	.4byte	.LASF242
	.2byte	0xc22
	.byte	0x1c
	.4byte	0x15bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF243
	.2byte	0xc22
	.byte	0x5c
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x1
	.4byte	.LASF244
	.2byte	0xc2d
	.byte	0x11
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x1
	.4byte	.LASF207
	.2byte	0xc2d
	.byte	0xd6
	.4byte	0x6e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0xf9
	.uleb128 0x5
	.4byte	0x15ba
	.uleb128 0x8
	.4byte	.LASF245
	.2byte	0xad7
	.byte	0xc
	.4byte	0x12b
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1664
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0xad9
	.byte	0x9
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0xada
	.byte	0xc
	.4byte	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF246
	.2byte	0xadb
	.byte	0xc
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.string	"tmp"
	.2byte	0xadc
	.byte	0xa
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.4byte	.LASF130
	.byte	0x1
	.2byte	0xadf
	.byte	0x10
	.4byte	0x43
	.4byte	0x1631
	.uleb128 0x3
	.4byte	0x8b3
	.byte	0
	.uleb128 0xb
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x1
	.4byte	.LASF147
	.2byte	0xaed
	.byte	0x14
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1
	.4byte	.LASF247
	.2byte	0xaf5
	.byte	0xe
	.4byte	0x6d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF248
	.2byte	0xa51
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16c1
	.uleb128 0x2
	.4byte	.LASF249
	.2byte	0xa51
	.byte	0x2a
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0xa53
	.byte	0xd
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF250
	.2byte	0xa54
	.byte	0x10
	.4byte	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1
	.4byte	.LASF247
	.2byte	0xa7b
	.byte	0x13
	.4byte	0x6d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF251
	.2byte	0xa3f
	.byte	0xc
	.4byte	0x12b
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16fa
	.uleb128 0x2
	.4byte	.LASF252
	.2byte	0xa3f
	.byte	0x2a
	.4byte	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF253
	.2byte	0xa41
	.byte	0xc
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF254
	.2byte	0x9d7
	.byte	0xe
	.4byte	0x141
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1760
	.uleb128 0x2
	.4byte	.LASF175
	.2byte	0x9d7
	.byte	0x39
	.4byte	0xd91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF176
	.2byte	0x9d7
	.byte	0x5e
	.4byte	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF255
	.2byte	0x9d7
	.byte	0x7c
	.4byte	0x8b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF206
	.2byte	0x9d9
	.byte	0xe
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF256
	.2byte	0x9d9
	.byte	0x1a
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF257
	.2byte	0x944
	.byte	0x7
	.4byte	0x90
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1799
	.uleb128 0x2
	.4byte	.LASF214
	.2byte	0x944
	.byte	0x23
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x946
	.byte	0x8
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF259
	.2byte	0x93c
	.byte	0xd
	.4byte	0x141
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF260
	.2byte	0x91d
	.byte	0xc
	.4byte	0x157
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17e8
	.uleb128 0x1
	.4byte	.LASF154
	.2byte	0x91f
	.byte	0xc
	.4byte	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF158
	.2byte	0x920
	.byte	0xd
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF261
	.2byte	0x90e
	.byte	0xc
	.4byte	0x12b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1821
	.uleb128 0x2
	.4byte	.LASF262
	.2byte	0x90e
	.byte	0x2c
	.4byte	0x139c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF263
	.2byte	0x90e
	.byte	0x3f
	.4byte	0xb13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF264
	.2byte	0x900
	.byte	0xc
	.4byte	0x157
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x184b
	.uleb128 0x1
	.4byte	.LASF265
	.2byte	0x902
	.byte	0xc
	.4byte	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF266
	.2byte	0x892
	.byte	0xc
	.4byte	0x12b
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x189d
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x894
	.byte	0x8
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF267
	.2byte	0x895
	.byte	0xc
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x1
	.4byte	.LASF268
	.2byte	0x8cd
	.byte	0x11
	.4byte	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF269
	.2byte	0x83e
	.byte	0x6
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x833
	.byte	0x6
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF271
	.2byte	0x7b7
	.byte	0x6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x191f
	.uleb128 0x1
	.4byte	.LASF154
	.2byte	0x7b9
	.byte	0xc
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1
	.4byte	.LASF272
	.2byte	0x7be
	.byte	0x11
	.4byte	0x8ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF273
	.2byte	0x7bf
	.byte	0x10
	.4byte	0x591
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF274
	.2byte	0x7c0
	.byte	0xc
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF275
	.2byte	0x771
	.byte	0xd
	.4byte	0x12b
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1976
	.uleb128 0x2
	.4byte	.LASF276
	.2byte	0x771
	.byte	0x2e
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF253
	.2byte	0x773
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x774
	.byte	0x10
	.4byte	0x67b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF158
	.2byte	0x775
	.byte	0xe
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF277
	.2byte	0x73b
	.byte	0x7
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19ab
	.uleb128 0x2
	.4byte	.LASF276
	.2byte	0x73b
	.byte	0x21
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x73d
	.byte	0x10
	.4byte	0x67b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF278
	.2byte	0x70d
	.byte	0x14
	.4byte	0x12b
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19f3
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0x70d
	.byte	0x3f
	.4byte	0x3be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF154
	.2byte	0x70f
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x710
	.byte	0x16
	.4byte	0x130b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF279
	.2byte	0x6a8
	.byte	0x7
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a28
	.uleb128 0x2
	.4byte	.LASF280
	.2byte	0x6a8
	.byte	0x22
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x6aa
	.byte	0x9
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF281
	.2byte	0x604
	.byte	0x7
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a99
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0x604
	.byte	0x26
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF282
	.2byte	0x604
	.byte	0x39
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x606
	.byte	0x9
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF283
	.2byte	0x607
	.byte	0xe
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF184
	.2byte	0x607
	.byte	0x25
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF253
	.2byte	0x608
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF284
	.2byte	0x5dc
	.byte	0xe
	.4byte	0x141
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1af0
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0x5dc
	.byte	0x3b
	.4byte	0x3be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x5de
	.byte	0xf
	.4byte	0x1306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF171
	.2byte	0x5df
	.byte	0xe
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF285
	.2byte	0x5df
	.byte	0x18
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF286
	.2byte	0x5c6
	.byte	0xe
	.4byte	0x141
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b38
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0x5c6
	.byte	0x34
	.4byte	0x3be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x5c8
	.byte	0xf
	.4byte	0x1306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF171
	.2byte	0x5c9
	.byte	0xe
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF287
	.2byte	0x56a
	.byte	0xd
	.4byte	0x4d6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bad
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0x56a
	.byte	0x29
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF288
	.2byte	0x56c
	.byte	0xd
	.4byte	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF289
	.2byte	0x56d
	.byte	0x11
	.4byte	0x147e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF290
	.2byte	0x56d
	.byte	0x1f
	.4byte	0x147e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF291
	.2byte	0x56d
	.byte	0x2f
	.4byte	0x147e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x56e
	.byte	0x16
	.4byte	0x130b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF292
	.2byte	0x53d
	.byte	0x7
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1be2
	.uleb128 0x2
	.4byte	.LASF293
	.2byte	0x53d
	.byte	0x24
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF267
	.2byte	0x53f
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF294
	.2byte	0x4e9
	.byte	0x7
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c5d
	.uleb128 0x2
	.4byte	.LASF295
	.2byte	0x4e9
	.byte	0x2b
	.4byte	0x13a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF296
	.2byte	0x4e9
	.byte	0x50
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF146
	.2byte	0x4eb
	.byte	0xd
	.4byte	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF267
	.2byte	0x4ec
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF297
	.2byte	0x4ec
	.byte	0x1e
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1
	.4byte	.LASF147
	.2byte	0x4f6
	.byte	0x15
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF298
	.2byte	0x48a
	.byte	0x7
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c92
	.uleb128 0x2
	.4byte	.LASF299
	.2byte	0x48a
	.byte	0x21
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x48c
	.byte	0x9
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF300
	.2byte	0x435
	.byte	0xd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cb8
	.uleb128 0x2
	.4byte	.LASF301
	.2byte	0x435
	.byte	0x2e
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF302
	.2byte	0x338
	.byte	0xd
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d63
	.uleb128 0x2
	.4byte	.LASF303
	.2byte	0x338
	.byte	0x32
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF304
	.2byte	0x339
	.byte	0x1d
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF305
	.2byte	0x33a
	.byte	0x19
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF221
	.2byte	0x33b
	.byte	0x17
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF60
	.2byte	0x33c
	.byte	0x16
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF306
	.2byte	0x33d
	.byte	0x1f
	.4byte	0x1d68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF301
	.2byte	0x33e
	.byte	0x11
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF307
	.2byte	0x33f
	.byte	0x27
	.4byte	0x1d72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF57
	.2byte	0x341
	.byte	0xe
	.4byte	0x591
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"x"
	.2byte	0x342
	.byte	0xd
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x3b2
	.uleb128 0x5
	.4byte	0x1d63
	.uleb128 0x6
	.4byte	0x58c
	.uleb128 0x5
	.4byte	0x1d6d
	.uleb128 0x8
	.4byte	.LASF308
	.2byte	0x2dd
	.byte	0xd
	.4byte	0x12b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e23
	.uleb128 0x2
	.4byte	.LASF303
	.2byte	0x2dd
	.byte	0x29
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF304
	.2byte	0x2de
	.byte	0x1b
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF309
	.2byte	0x2df
	.byte	0x17
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x2
	.4byte	.LASF221
	.2byte	0x2e0
	.byte	0x15
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF60
	.2byte	0x2e1
	.byte	0x14
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF306
	.2byte	0x2e2
	.byte	0x1d
	.4byte	0x1d68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF301
	.2byte	0x2e4
	.byte	0x9
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF154
	.2byte	0x2e5
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1
	.4byte	.LASF61
	.2byte	0x302
	.byte	0x10
	.4byte	0x591
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x245
	.byte	0xf
	.4byte	0x3b2
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.4byte	.LASF303
	.2byte	0x245
	.byte	0x31
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF304
	.2byte	0x246
	.byte	0x1d
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF305
	.2byte	0x247
	.byte	0x19
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF221
	.2byte	0x248
	.byte	0x17
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF60
	.2byte	0x249
	.byte	0x16
	.4byte	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF311
	.2byte	0x24a
	.byte	0x1e
	.4byte	0x596
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF312
	.2byte	0x24b
	.byte	0x1f
	.4byte	0x904
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF301
	.2byte	0x24d
	.byte	0x9
	.4byte	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF154
	.2byte	0x24e
	.byte	0xf
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1
	.4byte	.LASF313
	.2byte	0x258
	.byte	0x14
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1b
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x21
	.sleb128 3521
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x28
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x244
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
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
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
	.byte	0x7
	.4byte	.LFB65
	.uleb128 .LFE65-.LFB65
	.byte	0x7
	.4byte	.LFB66
	.uleb128 .LFE66-.LFB66
	.byte	0x7
	.4byte	.LFB67
	.uleb128 .LFE67-.LFB67
	.byte	0x7
	.4byte	.LFB68
	.uleb128 .LFE68-.LFB68
	.byte	0x7
	.4byte	.LFB69
	.uleb128 .LFE69-.LFB69
	.byte	0x7
	.4byte	.LFB70
	.uleb128 .LFE70-.LFB70
	.byte	0x7
	.4byte	.LFB71
	.uleb128 .LFE71-.LFB71
	.byte	0x7
	.4byte	.LFB72
	.uleb128 .LFE72-.LFB72
	.byte	0x7
	.4byte	.LFB73
	.uleb128 .LFE73-.LFB73
	.byte	0x7
	.4byte	.LFB74
	.uleb128 .LFE74-.LFB74
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF128:
	.string	"vListInsert"
.LASF40:
	.string	"StaticTask_t"
.LASF62:
	.string	"pcTaskName"
.LASF48:
	.string	"uxNumberOfItems"
.LASF201:
	.string	"prvListTasksWithinSingleList"
.LASF263:
	.string	"overflow"
.LASF250:
	.string	"xTickDelta"
.LASF125:
	.string	"strlen"
.LASF133:
	.string	"xPortStartScheduler"
.LASF60:
	.string	"uxPriority"
.LASF207:
	.string	"pxConstList"
.LASF289:
	.string	"pxStateList"
.LASF34:
	.string	"uxDummy10"
.LASF75:
	.string	"eSuspended"
.LASF35:
	.string	"uxDummy12"
.LASF56:
	.string	"tskTaskControlBlock"
.LASF186:
	.string	"uxOnlyOneMutexHeld"
.LASF217:
	.string	"vTaskSetThreadLocalStoragePointer"
.LASF166:
	.string	"ulBitsToClearOnExit"
.LASF259:
	.string	"uxTaskGetNumberOfTasks"
.LASF190:
	.string	"xTaskGetSchedulerState"
.LASF313:
	.string	"xSize"
.LASF156:
	.string	"pxHigherPriorityTaskWoken"
.LASF79:
	.string	"eNoAction"
.LASF116:
	.string	"uxTopReadyPriority"
.LASF290:
	.string	"pxDelayedList"
.LASF2:
	.string	"unsigned int"
.LASF236:
	.string	"pxEventList"
.LASF117:
	.string	"xSchedulerRunning"
.LASF49:
	.string	"pxIndex"
.LASF19:
	.string	"StackType_t"
.LASF85:
	.string	"xTIME_OUT"
.LASF149:
	.string	"ulBitsToClear"
.LASF112:
	.string	"uxDeletedTasksWaitingCleanUp"
.LASF268:
	.string	"xPendedCounts"
.LASF41:
	.string	"xLIST_ITEM"
.LASF105:
	.string	"pxReadyTasksLists"
.LASF255:
	.string	"pulTotalRunTime"
.LASF39:
	.string	"uxDummy20"
.LASF129:
	.string	"vApplicationStackOverflowHook"
.LASF130:
	.string	"bl_sys_time_sync_state"
.LASF157:
	.string	"ucOriginalNotifyState"
.LASF231:
	.string	"vTaskSetTimeOutState"
.LASF159:
	.string	"xTaskGenericNotifyFromISR"
.LASF312:
	.string	"pxTaskBuffer"
.LASF307:
	.string	"xRegions"
.LASF199:
	.string	"pucStackByte"
.LASF174:
	.string	"pcWriteBuffer"
.LASF223:
	.string	"uxHandle"
.LASF106:
	.string	"xDelayedTaskList1"
.LASF107:
	.string	"xDelayedTaskList2"
.LASF86:
	.string	"xOverflowCount"
.LASF291:
	.string	"pxOverflowedDelayedList"
.LASF96:
	.string	"xTaskNumber"
.LASF131:
	.string	"vApplicationIdleHook"
.LASF64:
	.string	"uxTCBNumber"
.LASF251:
	.string	"xTaskCatchUpTicks"
.LASF92:
	.string	"ulParameters"
.LASF288:
	.string	"eReturn"
.LASF276:
	.string	"xTaskToResume"
.LASF171:
	.string	"uxReturn"
.LASF134:
	.string	"xTimerCreateTimerTask"
.LASF310:
	.string	"xTaskCreateStatic"
.LASF103:
	.string	"tskTCB"
.LASF158:
	.string	"uxSavedInterruptStatus"
.LASF17:
	.string	"uint32_t"
.LASF126:
	.string	"strcpy"
.LASF70:
	.string	"ucNotifyState"
.LASF136:
	.string	"uxListRemove"
.LASF253:
	.string	"xYieldRequired"
.LASF286:
	.string	"uxTaskPriorityGet"
.LASF163:
	.string	"xTaskGenericNotify"
.LASF234:
	.string	"pxUnblockedTCB"
.LASF309:
	.string	"usStackDepth"
.LASF169:
	.string	"xClearCountOnExit"
.LASF229:
	.string	"xElapsedTime"
.LASF82:
	.string	"eSetValueWithOverwrite"
.LASF11:
	.string	"long long unsigned int"
.LASF260:
	.string	"xTaskGetTickCountFromISR"
.LASF285:
	.string	"uxSavedInterruptState"
.LASF165:
	.string	"ulBitsToClearOnEntry"
.LASF262:
	.string	"ticks"
.LASF110:
	.string	"xPendingReadyList"
.LASF212:
	.string	"prvInitialiseTaskLists"
.LASF44:
	.string	"pxPrevious"
.LASF111:
	.string	"xTasksWaitingTermination"
.LASF181:
	.string	"vTaskPriorityDisinheritAfterTimeout"
.LASF213:
	.string	"pvTaskGetThreadLocalStoragePointer"
.LASF216:
	.string	"pvReturn"
.LASF247:
	.string	"pxTemp"
.LASF248:
	.string	"vTaskStepTickSafe"
.LASF142:
	.string	"pvPortMalloc"
.LASF269:
	.string	"vTaskSuspendAll"
.LASF177:
	.string	"cStatus"
.LASF195:
	.string	"uxTaskGetStackHighWaterMark"
.LASF245:
	.string	"xTaskIncrementTick"
.LASF68:
	.string	"pvThreadLocalStoragePointers"
.LASF179:
	.string	"vTaskExitCritical"
.LASF84:
	.string	"eNotifyAction"
.LASF210:
	.string	"xGetFreeStackSpace"
.LASF13:
	.string	"size_t"
.LASF95:
	.string	"xHandle"
.LASF102:
	.string	"TaskStatus_t"
.LASF81:
	.string	"eIncrement"
.LASF52:
	.string	"xMINI_LIST_ITEM"
.LASF238:
	.string	"xWaitIndefinitely"
.LASF25:
	.string	"StaticListItem_t"
.LASF115:
	.string	"xTickCount"
.LASF47:
	.string	"xLIST"
.LASF270:
	.string	"vTaskEndScheduler"
.LASF137:
	.string	"vListInsertEnd"
.LASF147:
	.string	"xConstTickCount"
.LASF113:
	.string	"xSuspendedTaskList"
.LASF304:
	.string	"pcName"
.LASF24:
	.string	"pvDummy3"
.LASF109:
	.string	"pxOverflowDelayedTaskList"
.LASF30:
	.string	"uxDummy5"
.LASF33:
	.string	"uxDummy9"
.LASF71:
	.string	"ucStaticallyAllocated"
.LASF153:
	.string	"xTaskNotifyStateClear"
.LASF292:
	.string	"vTaskDelay"
.LASF258:
	.string	"pvTaskIncrementMutexHeldCount"
.LASF98:
	.string	"uxCurrentPriority"
.LASF69:
	.string	"ulNotifiedValue"
.LASF274:
	.string	"ulIdleTaskStackSize"
.LASF273:
	.string	"pxIdleTaskStackBuffer"
.LASF232:
	.string	"vTaskRemoveFromUnorderedEventList"
.LASF67:
	.string	"uxMutexesHeld"
.LASF187:
	.string	"xTaskPriorityDisinherit"
.LASF218:
	.string	"xTaskToSet"
.LASF12:
	.string	"char"
.LASF51:
	.string	"ListItem_t"
.LASF209:
	.string	"pxTaskStatus"
.LASF83:
	.string	"eSetValueWithoutOverwrite"
.LASF164:
	.string	"xTaskNotifyWait"
.LASF21:
	.string	"UBaseType_t"
.LASF305:
	.string	"ulStackDepth"
.LASF297:
	.string	"xShouldDelay"
.LASF220:
	.string	"prvIdleTask"
.LASF50:
	.string	"xListEnd"
.LASF168:
	.string	"ulTaskNotifyTake"
.LASF53:
	.string	"MiniListItem_t"
.LASF237:
	.string	"vTaskPlaceOnEventListRestricted"
.LASF300:
	.string	"prvAddNewTaskToReadyList"
.LASF15:
	.string	"uint8_t"
.LASF73:
	.string	"eReady"
.LASF287:
	.string	"eTaskGetState"
.LASF301:
	.string	"pxNewTCB"
.LASF256:
	.string	"uxQueue"
.LASF303:
	.string	"pxTaskCode"
.LASF93:
	.string	"MemoryRegion_t"
.LASF121:
	.string	"xNextTaskUnblockTime"
.LASF138:
	.string	"pxPortInitialiseStack"
.LASF28:
	.string	"pxDummy1"
.LASF38:
	.string	"ucDummy19"
.LASF3:
	.string	"long long int"
.LASF31:
	.string	"pxDummy6"
.LASF143:
	.string	"vAssertCalled"
.LASF76:
	.string	"eDeleted"
.LASF254:
	.string	"uxTaskGetSystemState"
.LASF178:
	.string	"pcBuffer"
.LASF91:
	.string	"ulLengthInBytes"
.LASF20:
	.string	"BaseType_t"
.LASF243:
	.string	"ulCheckValue"
.LASF193:
	.string	"prvResetNextTaskUnblockTime"
.LASF87:
	.string	"xTimeOnEntering"
.LASF282:
	.string	"uxNewPriority"
.LASF18:
	.string	"TaskFunction_t"
.LASF43:
	.string	"pxNext"
.LASF162:
	.string	"pulPreviousNotificationValue"
.LASF140:
	.string	"memset"
.LASF227:
	.string	"pxTimeOut"
.LASF284:
	.string	"uxTaskPriorityGetFromISR"
.LASF200:
	.string	"ulCount"
.LASF249:
	.string	"xTicksToJump"
.LASF88:
	.string	"TimeOut_t"
.LASF230:
	.string	"vTaskInternalSetTimeOutState"
.LASF65:
	.string	"uxTaskNumber"
.LASF55:
	.string	"TaskHandle_t"
.LASF161:
	.string	"eAction"
.LASF206:
	.string	"uxTask"
.LASF170:
	.string	"uxTaskResetEventItemValue"
.LASF281:
	.string	"vTaskPrioritySet"
.LASF277:
	.string	"vTaskResume"
.LASF124:
	.string	"sprintf"
.LASF78:
	.string	"eTaskState"
.LASF54:
	.string	"List_t"
.LASF214:
	.string	"xTaskToQuery"
.LASF22:
	.string	"TickType_t"
.LASF155:
	.string	"xTaskToNotify"
.LASF148:
	.string	"xTask"
.LASF80:
	.string	"eSetBits"
.LASF4:
	.string	"long double"
.LASF89:
	.string	"xMEMORY_REGION"
.LASF16:
	.string	"uint16_t"
.LASF298:
	.string	"vTaskDelete"
.LASF32:
	.string	"ucDummy7"
.LASF185:
	.string	"uxPriorityToUse"
.LASF241:
	.string	"vTaskSwitchContext"
.LASF120:
	.string	"xNumOfOverflows"
.LASF46:
	.string	"pvContainer"
.LASF315:
	.string	"pxCurrentTCB"
.LASF240:
	.string	"vTaskPlaceOnEventList"
.LASF183:
	.string	"uxHighestPriorityWaitingTask"
.LASF100:
	.string	"pxStackBase"
.LASF7:
	.string	"short int"
.LASF261:
	.string	"xTaskGetTickCount2"
.LASF97:
	.string	"eCurrentState"
.LASF139:
	.string	"vListInitialiseItem"
.LASF302:
	.string	"prvInitialiseNewTask"
.LASF221:
	.string	"pvParameters"
.LASF42:
	.string	"xItemValue"
.LASF9:
	.string	"long int"
.LASF94:
	.string	"xTASK_STATUS"
.LASF266:
	.string	"xTaskResumeAll"
.LASF172:
	.string	"vTaskNotifyGiveFromISR"
.LASF108:
	.string	"pxDelayedTaskList"
.LASF264:
	.string	"xTaskGetTickCount"
.LASF278:
	.string	"prvTaskIsTaskSuspended"
.LASF222:
	.string	"vTaskSetTaskNumber"
.LASF246:
	.string	"xSwitchRequired"
.LASF182:
	.string	"pxMutexHolder"
.LASF61:
	.string	"pxStack"
.LASF208:
	.string	"vTaskGetInfo"
.LASF160:
	.string	"ulValue"
.LASF280:
	.string	"xTaskToSuspend"
.LASF226:
	.string	"xTaskCheckForTimeOut"
.LASF141:
	.string	"vPortFree"
.LASF295:
	.string	"pxPreviousWakeTime"
.LASF27:
	.string	"xSTATIC_TCB"
.LASF275:
	.string	"xTaskResumeFromISR"
.LASF215:
	.string	"xIndex"
.LASF122:
	.string	"xIdleTaskHandle"
.LASF37:
	.string	"ulDummy18"
.LASF26:
	.string	"xSTATIC_LIST_ITEM"
.LASF167:
	.string	"pulNotificationValue"
.LASF154:
	.string	"xReturn"
.LASF225:
	.string	"vTaskMissedYield"
.LASF10:
	.string	"long unsigned int"
.LASF203:
	.string	"eState"
.LASF175:
	.string	"pxTaskStatusArray"
.LASF188:
	.string	"xTaskPriorityInherit"
.LASF196:
	.string	"pucEndOfStack"
.LASF189:
	.string	"pxMutexHolderTCB"
.LASF257:
	.string	"pcTaskGetName"
.LASF14:
	.string	"int32_t"
.LASF265:
	.string	"xTicks"
.LASF271:
	.string	"vTaskStartScheduler"
.LASF176:
	.string	"uxArraySize"
.LASF145:
	.string	"xCanBlockIndefinitely"
.LASF72:
	.string	"eRunning"
.LASF242:
	.string	"pulStack"
.LASF99:
	.string	"ulRunTimeCounter"
.LASF90:
	.string	"pvBaseAddress"
.LASF293:
	.string	"xTicksToDelay"
.LASF6:
	.string	"unsigned char"
.LASF239:
	.string	"vTaskPlaceOnUnorderedEventList"
.LASF127:
	.string	"vListInitialise"
.LASF228:
	.string	"pxTicksToWait"
.LASF77:
	.string	"eInvalid"
.LASF244:
	.string	"uxTopPriority"
.LASF66:
	.string	"uxBasePriority"
.LASF294:
	.string	"vTaskDelayUntil"
.LASF59:
	.string	"xEventListItem"
.LASF184:
	.string	"uxPriorityUsedOnEntry"
.LASF104:
	.string	"TCB_t"
.LASF144:
	.string	"xTicksToWait"
.LASF45:
	.string	"pvOwner"
.LASF36:
	.string	"pvDummy15"
.LASF194:
	.string	"prvDeleteTCB"
.LASF74:
	.string	"eBlocked"
.LASF279:
	.string	"vTaskSuspend"
.LASF23:
	.string	"xDummy2"
.LASF29:
	.string	"xDummy3"
.LASF267:
	.string	"xAlreadyYielded"
.LASF191:
	.string	"xTaskGetCurrentTaskHandle"
.LASF180:
	.string	"vTaskEnterCritical"
.LASF308:
	.string	"xTaskCreate"
.LASF205:
	.string	"pxFirstTCB"
.LASF118:
	.string	"xPendedTicks"
.LASF198:
	.string	"prvTaskCheckFreeStackSpace"
.LASF224:
	.string	"uxTaskGetTaskNumber"
.LASF252:
	.string	"xTicksToCatchUp"
.LASF299:
	.string	"xTaskToDelete"
.LASF192:
	.string	"prvAddCurrentTaskToDelayedList"
.LASF101:
	.string	"usStackHighWaterMark"
.LASF114:
	.string	"uxCurrentNumberOfTasks"
.LASF296:
	.string	"xTimeIncrement"
.LASF5:
	.string	"signed char"
.LASF152:
	.string	"ulTaskNotifyValueClear"
.LASF204:
	.string	"pxNextTCB"
.LASF272:
	.string	"pxIdleTaskTCBBuffer"
.LASF8:
	.string	"short unsigned int"
.LASF146:
	.string	"xTimeToWake"
.LASF58:
	.string	"xStateListItem"
.LASF135:
	.string	"vApplicationGetIdleTaskMemory"
.LASF150:
	.string	"pxTCB"
.LASF173:
	.string	"vTaskList"
.LASF123:
	.string	"uxSchedulerSuspended"
.LASF311:
	.string	"puxStackBuffer"
.LASF57:
	.string	"pxTopOfStack"
.LASF63:
	.string	"uxCriticalNesting"
.LASF314:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF132:
	.string	"vPortEndScheduler"
.LASF202:
	.string	"pxList"
.LASF233:
	.string	"pxEventListItem"
.LASF219:
	.string	"pvValue"
.LASF197:
	.string	"prvWriteNameToBuffer"
.LASF306:
	.string	"pxCreatedTask"
.LASF211:
	.string	"prvCheckTasksWaitingTermination"
.LASF235:
	.string	"xTaskRemoveFromEventList"
.LASF151:
	.string	"ulReturn"
.LASF283:
	.string	"uxCurrentBasePriority"
.LASF119:
	.string	"xYieldPending"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/tasks.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos"
	.globl	__clzsi2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
