	.file	"aos_freertos.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/yloop" "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/src/aos_freertos.c"
	.section	.text.aos_reboot,"ax",@progbits
	.align	1
	.globl	aos_reboot
	.type	aos_reboot, @function
aos_reboot:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/src/aos_freertos.c"
	.loc 1 19 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 20 1
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
	.size	aos_reboot, .-aos_reboot
	.section	.text.aos_get_hz,"ax",@progbits
	.align	1
	.globl	aos_get_hz
	.type	aos_get_hz, @function
aos_get_hz:
.LFB6:
	.loc 1 23 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 24 12
	li	a5,100
	.loc 1 25 1
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
.LFE6:
	.size	aos_get_hz, .-aos_get_hz
	.section	.rodata
	.align	2
.LC0:
	.string	"aos-linux-xxx"
	.section	.text.aos_version_get,"ax",@progbits
	.align	1
	.globl	aos_version_get
	.type	aos_version_get, @function
aos_version_get:
.LFB7:
	.loc 1 28 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 29 12
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	.loc 1 30 1
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
.LFE7:
	.size	aos_version_get, .-aos_version_get
	.section	.text.dfl_entry,"ax",@progbits
	.align	1
	.type	dfl_entry, @function
dfl_entry:
.LFB8:
	.loc 1 49 1
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
	.loc 1 50 18
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 51 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 52 11
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sw	a5,-28(s0)
	.loc 1 53 5
	lw	a0,-20(s0)
	call	vPortFree
	.loc 1 55 5
	lw	a5,-24(s0)
	lw	a0,-28(s0)
	jalr	a5
.LVL0:
	.loc 1 57 5
	li	a0,0
	call	vTaskDelete
	.loc 1 58 1
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
.LFE8:
	.size	dfl_entry, .-dfl_entry
	.section	.text.vPortCleanUpTCB,"ax",@progbits
	.align	1
	.globl	vPortCleanUpTCB
	.type	vPortCleanUpTCB, @function
vPortCleanUpTCB:
.LFB9:
	.loc 1 61 1
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
	.loc 1 62 22
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 64 13
	lw	a5,-20(s0)
	lw	a4,156(a5)
	.loc 1 64 8
	li	a5,538382336
	addi	a5,a5,32
	bne	a4,a5,.L10
	.loc 1 67 5
	lw	a5,-20(s0)
	lw	a5,120(a5)
	mv	a0,a5
	call	vPortFree
	.loc 1 68 5
	lw	a0,-20(s0)
	call	vPortFree
	j	.L7
.L10:
	.loc 1 65 9
	nop
.L7:
	.loc 1 69 1
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
	.size	vPortCleanUpTCB, .-vPortCleanUpTCB
	.section	.text.aos_task_new,"ax",@progbits
	.align	1
	.globl	aos_task_new
	.type	aos_task_new, @function
aos_task_new:
.LFB10:
	.loc 1 73 1
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
	.loc 1 75 29
	li	a0,160
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 1 76 25
	li	a0,12
	call	pvPortMalloc
	sw	a0,-24(s0)
	.loc 1 77 19
	lw	a5,-48(s0)
	mv	a0,a5
	call	pvPortMalloc
	sw	a0,-28(s0)
	.loc 1 79 5
	lw	a5,-48(s0)
	mv	a2,a5
	li	a1,0
	lw	a0,-28(s0)
	call	memset
	.loc 1 80 5
	li	a2,160
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 81 22
	lw	a5,-20(s0)
	li	a4,-16
	sw	a4,100(a5)
	.loc 1 82 17
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,120(a5)
	.loc 1 83 17
	lw	a5,-20(s0)
	addi	a5,a5,124
	.loc 1 83 5
	li	a2,31
	lw	a1,-36(s0)
	mv	a0,a5
	call	strncpy
	.loc 1 84 17
	lw	a5,-20(s0)
	li	a4,538382336
	addi	a4,a4,32
	sw	a4,156(a5)
	.loc 1 86 16
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 87 14
	lw	a5,-24(s0)
	lw	a4,-40(s0)
	sw	a4,4(a5)
	.loc 1 88 15
	lw	a5,-24(s0)
	lw	a4,-44(s0)
	sw	a4,8(a5)
	.loc 1 90 16
	lw	a5,-48(s0)
	srli	a5,a5,2
	sw	a5,-48(s0)
	.loc 1 91 15
	lw	a2,-48(s0)
	.loc 1 92 44
	lw	a5,-20(s0)
	.loc 1 91 15
	mv	a6,a5
	lw	a5,-28(s0)
	li	a4,10
	lw	a3,-24(s0)
	lw	a1,-36(s0)
	lui	a0,%hi(dfl_entry)
	addi	a0,a0,%lo(dfl_entry)
	call	xTaskCreateStatic
	sw	a0,-32(s0)
	.loc 1 93 8
	lw	a5,-32(s0)
	bne	a5,zero,.L12
	.loc 1 94 9
	lw	a0,-20(s0)
	call	vPortFree
	.loc 1 95 9
	lw	a0,-28(s0)
	call	vPortFree
	.loc 1 96 9
	lw	a0,-24(s0)
	call	vPortFree
.L12:
	.loc 1 98 24
	lw	a5,-32(s0)
	beq	a5,zero,.L13
	.loc 1 98 24 is_stmt 0 discriminator 1
	li	a5,0
	.loc 1 98 24
	j	.L15
.L13:
	.loc 1 98 24 discriminator 2
	li	a5,-1
.L15:
	.loc 1 99 1 is_stmt 1
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
	.size	aos_task_new, .-aos_task_new
	.section	.text.aos_task_new_ext,"ax",@progbits
	.align	1
	.globl	aos_task_new_ext
	.type	aos_task_new_ext, @function
aos_task_new_ext:
.LFB11:
	.loc 1 103 1
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
	.loc 1 104 12
	lw	a3,-36(s0)
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	aos_task_new
	mv	a5,a0
	.loc 1 105 1
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
	.size	aos_task_new_ext, .-aos_task_new_ext
	.section	.text.aos_task_exit,"ax",@progbits
	.align	1
	.globl	aos_task_exit
	.type	aos_task_exit, @function
aos_task_exit:
.LFB12:
	.loc 1 108 1
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
	.loc 1 109 5
	li	a0,0
	call	vTaskDelete
	.loc 1 110 1
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
.LFE12:
	.size	aos_task_exit, .-aos_task_exit
	.section	.rodata
	.align	2
.LC1:
	.string	"unknown"
	.section	.text.aos_task_name,"ax",@progbits
	.align	1
	.globl	aos_task_name
	.type	aos_task_name, @function
aos_task_name:
.LFB13:
	.loc 1 113 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 114 48
	call	xTaskGetCurrentTaskHandle
	sw	a0,-20(s0)
	.loc 1 115 13
	lw	a5,-20(s0)
	lw	a4,156(a5)
	.loc 1 115 8
	li	a5,538382336
	addi	a5,a5,32
	beq	a4,a5,.L20
	.loc 1 116 16
	lui	a5,%hi(.LC1)
	addi	a5,a5,%lo(.LC1)
	j	.L21
.L20:
	.loc 1 117 12
	lw	a5,-20(s0)
	addi	a5,a5,124
.L21:
	.loc 1 118 1
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
	.size	aos_task_name, .-aos_task_name
	.section	.text.aos_task_key_create,"ax",@progbits
	.align	1
	.globl	aos_task_key_create
	.type	aos_task_key_create, @function
aos_task_key_create:
.LFB14:
	.loc 1 121 1
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
	.loc 1 122 48
	call	xTaskGetCurrentTaskHandle
	sw	a0,-24(s0)
	.loc 1 125 13
	lw	a5,-24(s0)
	lw	a4,156(a5)
	.loc 1 125 8
	li	a5,538382336
	addi	a5,a5,32
	beq	a4,a5,.L23
	.loc 1 126 16
	li	a5,-1
	j	.L24
.L23:
	.loc 1 128 11
	sw	zero,-20(s0)
	.loc 1 128 5
	j	.L25
.L28:
	.loc 1 129 17
	lw	a5,-24(s0)
	lw	a5,100(a5)
	.loc 1 129 35
	lw	a4,-20(s0)
	li	a3,1
	sll	a4,a3,a4
	.loc 1 129 30
	and	a5,a5,a4
	.loc 1 129 12
	bne	a5,zero,.L30
	.loc 1 132 13
	lw	a5,-24(s0)
	lw	a5,100(a5)
	.loc 1 132 31
	lw	a4,-20(s0)
	li	a3,1
	sll	a4,a3,a4
	.loc 1 132 26
	or	a4,a5,a4
	lw	a5,-24(s0)
	sw	a4,100(a5)
	.loc 1 133 14
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 134 16
	li	a5,0
	j	.L24
.L30:
	.loc 1 130 13
	nop
	.loc 1 128 19 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L25:
	.loc 1 128 15 discriminator 1
	lw	a4,-20(s0)
	li	a5,3
	ble	a4,a5,.L28
	.loc 1 137 12
	li	a5,-1
.L24:
	.loc 1 138 1
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
	.size	aos_task_key_create, .-aos_task_key_create
	.section	.text.aos_task_key_delete,"ax",@progbits
	.align	1
	.globl	aos_task_key_delete
	.type	aos_task_key_delete, @function
aos_task_key_delete:
.LFB15:
	.loc 1 141 1
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
	.loc 1 142 48
	call	xTaskGetCurrentTaskHandle
	sw	a0,-20(s0)
	.loc 1 143 13
	lw	a5,-20(s0)
	lw	a4,156(a5)
	.loc 1 143 8
	li	a5,538382336
	addi	a5,a5,32
	bne	a4,a5,.L34
	.loc 1 145 9
	lw	a5,-20(s0)
	lw	a5,100(a5)
	.loc 1 145 29
	lw	a4,-36(s0)
	li	a3,1
	sll	a4,a3,a4
	.loc 1 145 25
	not	a4,a4
	.loc 1 145 22
	and	a4,a5,a4
	lw	a5,-20(s0)
	sw	a4,100(a5)
	j	.L31
.L34:
	.loc 1 144 9
	nop
.L31:
	.loc 1 146 1
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
	.size	aos_task_key_delete, .-aos_task_key_delete
	.section	.text.aos_task_setspecific,"ax",@progbits
	.align	1
	.globl	aos_task_setspecific
	.type	aos_task_setspecific, @function
aos_task_setspecific:
.LFB16:
	.loc 1 149 1
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
	.loc 1 150 48
	call	xTaskGetCurrentTaskHandle
	sw	a0,-20(s0)
	.loc 1 151 8
	lw	a4,-36(s0)
	li	a5,3
	bleu	a4,a5,.L36
	.loc 1 152 16
	li	a5,-1
	j	.L37
.L36:
	.loc 1 154 13
	lw	a5,-20(s0)
	lw	a4,156(a5)
	.loc 1 154 8
	li	a5,538382336
	addi	a5,a5,32
	beq	a4,a5,.L38
	.loc 1 155 16
	li	a5,-1
	j	.L37
.L38:
	.loc 1 157 21
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	addi	a5,a5,24
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-40(s0)
	sw	a4,8(a5)
	.loc 1 158 12
	li	a5,0
.L37:
	.loc 1 159 1
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
	.size	aos_task_setspecific, .-aos_task_setspecific
	.section	.text.aos_task_getspecific,"ax",@progbits
	.align	1
	.globl	aos_task_getspecific
	.type	aos_task_getspecific, @function
aos_task_getspecific:
.LFB17:
	.loc 1 162 1
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
	.loc 1 163 48
	call	xTaskGetCurrentTaskHandle
	sw	a0,-20(s0)
	.loc 1 164 8
	lw	a4,-36(s0)
	li	a5,3
	bleu	a4,a5,.L40
	.loc 1 165 15
	li	a5,0
	j	.L41
.L40:
	.loc 1 167 13
	lw	a5,-20(s0)
	lw	a4,156(a5)
	.loc 1 167 8
	li	a5,538382336
	addi	a5,a5,32
	beq	a4,a5,.L42
	.loc 1 168 15
	li	a5,0
	j	.L41
.L42:
	.loc 1 170 22
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	addi	a5,a5,24
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,8(a5)
.L41:
	.loc 1 171 1
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
	.size	aos_task_getspecific, .-aos_task_getspecific
	.section	.text.aos_mutex_new,"ax",@progbits
	.align	1
	.globl	aos_mutex_new
	.type	aos_mutex_new, @function
aos_mutex_new:
.LFB18:
	.loc 1 174 1
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
	.loc 1 175 29
	li	a0,1
	call	xQueueCreateMutex
	sw	a0,-20(s0)
	.loc 1 176 16
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 177 27
	lw	a5,-20(s0)
	beq	a5,zero,.L44
	.loc 1 177 27 is_stmt 0 discriminator 1
	li	a5,0
	.loc 1 177 27
	j	.L46
.L44:
	.loc 1 177 27 discriminator 2
	li	a5,-1
.L46:
	.loc 1 178 1 is_stmt 1
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
.LFE18:
	.size	aos_mutex_new, .-aos_mutex_new
	.section	.text.aos_mutex_free,"ax",@progbits
	.align	1
	.globl	aos_mutex_free
	.type	aos_mutex_free, @function
aos_mutex_free:
.LFB19:
	.loc 1 181 1
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
	.loc 1 182 44
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 182 5
	mv	a0,a5
	call	vQueueDelete
	.loc 1 183 1
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
	.size	aos_mutex_free, .-aos_mutex_free
	.section	.text.aos_mutex_lock,"ax",@progbits
	.align	1
	.globl	aos_mutex_lock
	.type	aos_mutex_lock, @function
aos_mutex_lock:
.LFB20:
	.loc 1 186 1
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
	.loc 1 187 8
	lw	a5,-20(s0)
	beq	a5,zero,.L49
	.loc 1 188 37
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 188 9
	lw	a1,-24(s0)
	mv	a0,a5
	call	xQueueSemaphoreTake
.L49:
	.loc 1 190 12
	li	a5,0
	.loc 1 191 1
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
.LFE20:
	.size	aos_mutex_lock, .-aos_mutex_lock
	.section	.text.aos_mutex_unlock,"ax",@progbits
	.align	1
	.globl	aos_mutex_unlock
	.type	aos_mutex_unlock, @function
aos_mutex_unlock:
.LFB21:
	.loc 1 194 1
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
	.loc 1 195 8
	lw	a5,-20(s0)
	beq	a5,zero,.L52
	.loc 1 196 53
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 196 9
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
.L52:
	.loc 1 198 12
	li	a5,0
	.loc 1 199 1
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
	.size	aos_mutex_unlock, .-aos_mutex_unlock
	.section	.text.aos_mutex_is_valid,"ax",@progbits
	.align	1
	.globl	aos_mutex_is_valid
	.type	aos_mutex_is_valid, @function
aos_mutex_is_valid:
.LFB22:
	.loc 1 202 1
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
	.loc 1 203 17
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 203 23
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 1 204 1
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
	.size	aos_mutex_is_valid, .-aos_mutex_is_valid
	.section	.text.aos_sem_new,"ax",@progbits
	.align	1
	.globl	aos_sem_new
	.type	aos_sem_new, @function
aos_sem_new:
.LFB23:
	.loc 1 207 1
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
	.loc 1 208 27
	lw	a5,-40(s0)
	mv	a1,a5
	li	a0,128
	call	xQueueCreateCountingSemaphore
	sw	a0,-20(s0)
	.loc 1 209 14
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 210 12
	li	a5,0
	.loc 1 211 1
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
	.size	aos_sem_new, .-aos_sem_new
	.section	.text.aos_sem_free,"ax",@progbits
	.align	1
	.globl	aos_sem_free
	.type	aos_sem_free, @function
aos_sem_free:
.LFB24:
	.loc 1 214 1
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
	.loc 1 215 8
	lw	a5,-20(s0)
	beq	a5,zero,.L61
	.loc 1 219 42
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 219 5
	mv	a0,a5
	call	vQueueDelete
	j	.L58
.L61:
	.loc 1 216 9
	nop
.L58:
	.loc 1 220 1
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
	.size	aos_sem_free, .-aos_sem_free
	.section	.text.aos_sem_wait,"ax",@progbits
	.align	1
	.globl	aos_sem_wait
	.type	aos_sem_wait, @function
aos_sem_wait:
.LFB25:
	.loc 1 223 1
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
	.loc 1 224 8
	lw	a5,-36(s0)
	bne	a5,zero,.L63
	.loc 1 225 16
	li	a5,-1
	j	.L64
.L63:
	.loc 1 228 41
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 228 15
	lw	a1,-40(s0)
	mv	a0,a5
	call	xQueueSemaphoreTake
	sw	a0,-20(s0)
	.loc 1 229 48
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L65
	.loc 1 229 48 is_stmt 0 discriminator 1
	li	a5,0
	.loc 1 229 48
	j	.L64
.L65:
	.loc 1 229 48 discriminator 2
	li	a5,-1
.L64:
	.loc 1 230 1 is_stmt 1
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
.LFE25:
	.size	aos_sem_wait, .-aos_sem_wait
	.section	.text.aos_sem_signal,"ax",@progbits
	.align	1
	.globl	aos_sem_signal
	.type	aos_sem_signal, @function
aos_sem_signal:
.LFB26:
	.loc 1 233 1
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
	.loc 1 234 16
	sw	zero,-20(s0)
	.loc 1 236 8
	lw	a5,-36(s0)
	beq	a5,zero,.L73
.LBB4:
.LBB5:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE5:
.LBE4:
	.loc 1 240 8 discriminator 1
	beq	a5,zero,.L71
	.loc 1 241 51
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 241 9
	addi	a4,s0,-20
	mv	a1,a4
	mv	a0,a5
	call	xQueueGiveFromISR
	.loc 1 242 13
	lw	a5,-20(s0)
	.loc 1 242 11
	beq	a5,zero,.L67
	.loc 1 242 40 discriminator 1
	call	vTaskSwitchContext
	j	.L67
.L71:
	.loc 1 244 51
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 244 9
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	j	.L67
.L73:
	.loc 1 237 9 discriminator 1
	nop
.L67:
	.loc 1 246 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	aos_sem_signal, .-aos_sem_signal
	.section	.text.aos_sem_is_valid,"ax",@progbits
	.align	1
	.globl	aos_sem_is_valid
	.type	aos_sem_is_valid, @function
aos_sem_is_valid:
.LFB27:
	.loc 1 249 1
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
	.loc 1 250 16
	lw	a5,-20(s0)
	beq	a5,zero,.L75
	.loc 1 250 22 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 250 16 discriminator 1
	beq	a5,zero,.L75
	.loc 1 250 16 is_stmt 0 discriminator 3
	li	a5,1
	.loc 1 250 16
	j	.L77
.L75:
	.loc 1 250 16 discriminator 4
	li	a5,0
.L77:
	.loc 1 251 1 is_stmt 1
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
	.size	aos_sem_is_valid, .-aos_sem_is_valid
	.section	.text.aos_sem_signal_all,"ax",@progbits
	.align	1
	.globl	aos_sem_signal_all
	.type	aos_sem_signal_all, @function
aos_sem_signal_all:
.LFB28:
	.loc 1 254 1
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
	.loc 1 255 5
	lw	a0,-20(s0)
	call	aos_sem_signal
	.loc 1 256 1
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
	.size	aos_sem_signal_all, .-aos_sem_signal_all
	.section	.text.aos_queue_new,"ax",@progbits
	.align	1
	.globl	aos_queue_new
	.type	aos_queue_new, @function
aos_queue_new:
.LFB29:
	.loc 1 259 1
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
	.loc 1 261 9
	lw	a5,-48(s0)
	.loc 1 261 37
	lw	a4,-44(s0)
	divu	a5,a4,a5
	.loc 1 261 9
	lw	a4,-48(s0)
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	xQueueGenericCreate
	sw	a0,-20(s0)
	.loc 1 262 16
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 263 12
	li	a5,0
	.loc 1 264 1
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
	.size	aos_queue_new, .-aos_queue_new
	.section	.text.aos_queue_free,"ax",@progbits
	.align	1
	.globl	aos_queue_free
	.type	aos_queue_free, @function
aos_queue_free:
.LFB30:
	.loc 1 267 1
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
	.loc 1 268 23
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 268 5
	mv	a0,a5
	call	vQueueDelete
	.loc 1 269 1
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
	.size	aos_queue_free, .-aos_queue_free
	.section	.text.aos_queue_send,"ax",@progbits
	.align	1
	.globl	aos_queue_send
	.type	aos_queue_send, @function
aos_queue_send:
.LFB31:
	.loc 1 272 1
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
	.loc 1 273 38
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 273 12
	li	a3,0
	li	a2,-1
	lw	a1,-24(s0)
	mv	a0,a5
	call	xQueueGenericSend
	mv	a4,a0
	.loc 1 273 144 discriminator 1
	li	a5,1
	bne	a4,a5,.L83
	.loc 1 273 144 is_stmt 0 discriminator 2
	li	a5,0
	.loc 1 273 144
	j	.L85
.L83:
	.loc 1 273 144 discriminator 3
	li	a5,-1
.L85:
	.loc 1 274 1 is_stmt 1
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
.LFE31:
	.size	aos_queue_send, .-aos_queue_send
	.section	.text.aos_queue_recv,"ax",@progbits
	.align	1
	.globl	aos_queue_recv
	.type	aos_queue_recv, @function
aos_queue_recv:
.LFB32:
	.loc 1 278 1
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
	.loc 1 279 31
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 279 12
	lw	a2,-24(s0)
	lw	a1,-28(s0)
	mv	a0,a5
	call	xQueueReceive
	mv	a4,a0
	.loc 1 280 44
	li	a5,1
	bne	a4,a5,.L87
	.loc 1 280 44 is_stmt 0 discriminator 1
	li	a5,0
	.loc 1 280 44
	j	.L89
.L87:
	.loc 1 280 44 discriminator 2
	li	a5,-1
.L89:
	.loc 1 281 1 is_stmt 1
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
.LFE32:
	.size	aos_queue_recv, .-aos_queue_recv
	.section	.text.aos_queue_is_valid,"ax",@progbits
	.align	1
	.globl	aos_queue_is_valid
	.type	aos_queue_is_valid, @function
aos_queue_is_valid:
.LFB33:
	.loc 1 284 1
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
	.loc 1 285 18
	lw	a5,-20(s0)
	beq	a5,zero,.L91
	.loc 1 285 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 285 18 discriminator 1
	beq	a5,zero,.L91
	.loc 1 285 18 is_stmt 0 discriminator 3
	li	a5,1
	.loc 1 285 18
	j	.L93
.L91:
	.loc 1 285 18 discriminator 4
	li	a5,0
.L93:
	.loc 1 286 1 is_stmt 1
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
.LFE33:
	.size	aos_queue_is_valid, .-aos_queue_is_valid
	.section	.text.aos_queue_buf_ptr,"ax",@progbits
	.align	1
	.globl	aos_queue_buf_ptr
	.type	aos_queue_buf_ptr, @function
aos_queue_buf_ptr:
.LFB34:
	.loc 1 289 1
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
	.loc 1 290 11
	li	a5,0
	.loc 1 291 1
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
	.size	aos_queue_buf_ptr, .-aos_queue_buf_ptr
	.section	.text.aos_timer_new,"ax",@progbits
	.align	1
	.globl	aos_timer_new
	.type	aos_timer_new, @function
aos_timer_new:
.LFB35:
	.loc 1 295 1
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
	.loc 1 296 12
	li	a5,-1
	.loc 1 297 1
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
.LFE35:
	.size	aos_timer_new, .-aos_timer_new
	.section	.text.aos_timer_free,"ax",@progbits
	.align	1
	.globl	aos_timer_free
	.type	aos_timer_free, @function
aos_timer_free:
.LFB36:
	.loc 1 300 1
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
	.loc 1 301 1
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
	.size	aos_timer_free, .-aos_timer_free
	.section	.text.aos_timer_start,"ax",@progbits
	.align	1
	.globl	aos_timer_start
	.type	aos_timer_start, @function
aos_timer_start:
.LFB37:
	.loc 1 304 1
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
	.loc 1 305 12
	li	a5,-1
	.loc 1 306 1
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
.LFE37:
	.size	aos_timer_start, .-aos_timer_start
	.section	.text.aos_timer_stop,"ax",@progbits
	.align	1
	.globl	aos_timer_stop
	.type	aos_timer_stop, @function
aos_timer_stop:
.LFB38:
	.loc 1 309 1
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
	.loc 1 310 12
	li	a5,-1
	.loc 1 311 1
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
.LFE38:
	.size	aos_timer_stop, .-aos_timer_stop
	.section	.text.aos_timer_change,"ax",@progbits
	.align	1
	.globl	aos_timer_change
	.type	aos_timer_change, @function
aos_timer_change:
.LFB39:
	.loc 1 314 1
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
	.loc 1 315 12
	li	a5,-1
	.loc 1 316 1
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
.LFE39:
	.size	aos_timer_change, .-aos_timer_change
	.section	.text.aos_workqueue_create,"ax",@progbits
	.align	1
	.globl	aos_workqueue_create
	.type	aos_workqueue_create, @function
aos_workqueue_create:
.LFB40:
	.loc 1 319 1
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
	.loc 1 320 12
	li	a5,-1
	.loc 1 321 1
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
.LFE40:
	.size	aos_workqueue_create, .-aos_workqueue_create
	.section	.text.aos_work_init,"ax",@progbits
	.align	1
	.globl	aos_work_init
	.type	aos_work_init, @function
aos_work_init:
.LFB41:
	.loc 1 330 1
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
	.loc 1 331 22
	li	a0,12
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 1 332 11
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 1 333 12
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	.loc 1 334 12
	lw	a5,-20(s0)
	lw	a4,-48(s0)
	sw	a4,8(a5)
	.loc 1 335 15
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 336 12
	li	a5,0
	.loc 1 337 1
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
	.size	aos_work_init, .-aos_work_init
	.section	.text.aos_work_destroy,"ax",@progbits
	.align	1
	.globl	aos_work_destroy
	.type	aos_work_destroy, @function
aos_work_destroy:
.LFB42:
	.loc 1 340 1
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
	.loc 1 341 5
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	vPortFree
	.loc 1 342 1
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
	.size	aos_work_destroy, .-aos_work_destroy
	.section	.text.aos_work_run,"ax",@progbits
	.align	1
	.globl	aos_work_run
	.type	aos_work_run, @function
aos_work_run:
.LFB43:
	.loc 1 345 1
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
	.loc 1 346 12
	lw	a0,-24(s0)
	call	aos_work_sched
	mv	a5,a0
	.loc 1 347 1
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
.LFE43:
	.size	aos_work_run, .-aos_work_run
	.section	.text.worker_entry,"ax",@progbits
	.align	1
	.type	worker_entry, @function
worker_entry:
.LFB44:
	.loc 1 350 1
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
	.loc 1 351 18
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 352 10
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 352 8
	beq	a5,zero,.L113
	.loc 1 353 59
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 353 81
	mv	a4,a5
	li	a5,1000001536
	addi	a5,a5,-1536
	mul	a4,a4,a5
	.loc 1 353 22
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a5,a5,6
	.loc 1 353 9
	mv	a0,a5
	call	vTaskDelay
.L113:
	.loc 1 355 6
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 355 5
	lw	a4,-20(s0)
	lw	a4,4(a4)
	mv	a0,a4
	jalr	a5
.LVL1:
	.loc 1 356 1
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
	.size	worker_entry, .-worker_entry
	.section	.rodata
	.align	2
.LC2:
	.string	"worker"
	.section	.text.aos_work_sched,"ax",@progbits
	.align	1
	.globl	aos_work_sched
	.type	aos_work_sched, @function
aos_work_sched:
.LFB45:
	.loc 1 359 1
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
	.loc 1 360 18
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 361 12
	li	a3,8192
	lw	a2,-20(s0)
	lui	a5,%hi(worker_entry)
	addi	a1,a5,%lo(worker_entry)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	aos_task_new
	mv	a5,a0
	.loc 1 362 1
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
.LFE45:
	.size	aos_work_sched, .-aos_work_sched
	.section	.text.aos_work_cancel,"ax",@progbits
	.align	1
	.globl	aos_work_cancel
	.type	aos_work_cancel, @function
aos_work_cancel:
.LFB46:
	.loc 1 365 1
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
	.loc 1 366 12
	li	a5,-1
	.loc 1 367 1
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
.LFE46:
	.size	aos_work_cancel, .-aos_work_cancel
	.section	.text.aos_zalloc,"ax",@progbits
	.align	1
	.globl	aos_zalloc
	.type	aos_zalloc, @function
aos_zalloc:
.LFB47:
	.loc 1 370 1
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
	.loc 1 373 11
	lw	a0,-36(s0)
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 1 374 8
	lw	a5,-20(s0)
	beq	a5,zero,.L119
	.loc 1 375 9
	lw	a2,-36(s0)
	li	a1,9
	lw	a0,-20(s0)
	call	memset
.L119:
	.loc 1 377 12
	lw	a5,-20(s0)
	.loc 1 378 1
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
	.size	aos_zalloc, .-aos_zalloc
	.section	.text.aos_malloc,"ax",@progbits
	.align	1
	.globl	aos_malloc
	.type	aos_malloc, @function
aos_malloc:
.LFB48:
	.loc 1 381 1
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
	.loc 1 382 12
	lw	a0,-20(s0)
	call	pvPortMalloc
	mv	a5,a0
	.loc 1 383 1
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
.LFE48:
	.size	aos_malloc, .-aos_malloc
	.section	.text.calloc,"ax",@progbits
	.align	1
	.globl	calloc
	.type	calloc, @function
calloc:
.LFB49:
	.loc 1 387 1
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
	.loc 1 391 11
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	mul	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 392 11
	lw	a0,-20(s0)
	call	pvPortMalloc
	sw	a0,-24(s0)
	.loc 1 393 8
	lw	a5,-24(s0)
	beq	a5,zero,.L124
	.loc 1 394 9
	lw	a2,-20(s0)
	li	a1,0
	lw	a0,-24(s0)
	call	memset
.L124:
	.loc 1 396 12
	lw	a5,-24(s0)
	.loc 1 397 1
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
.LFE49:
	.size	calloc, .-calloc
	.section	.text.free,"ax",@progbits
	.align	1
	.globl	free
	.type	free, @function
free:
.LFB50:
	.loc 1 402 1
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
	.loc 1 403 5
	lw	a0,-20(s0)
	call	vPortFree
	.loc 1 404 1
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
.LFE50:
	.size	free, .-free
	.section	.text.aos_free,"ax",@progbits
	.align	1
	.globl	aos_free
	.type	aos_free, @function
aos_free:
.LFB51:
	.loc 1 408 1
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
	.loc 1 409 5
	lw	a0,-20(s0)
	call	vPortFree
	.loc 1 410 1
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
.LFE51:
	.size	aos_free, .-aos_free
	.section	.text.aos_msleep,"ax",@progbits
	.align	1
	.globl	aos_msleep
	.type	aos_msleep, @function
aos_msleep:
.LFB52:
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
	.loc 1 414 37
	lw	a4,-20(s0)
	.loc 1 414 59
	li	a5,1000
	mul	a4,a4,a5
	.loc 1 414 18
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a5,a5,6
	.loc 1 414 5
	mv	a0,a5
	call	vTaskDelay
	.loc 1 415 1
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
.LFE52:
	.size	aos_msleep, .-aos_msleep
	.section	.text.malloc,"ax",@progbits
	.align	1
	.globl	malloc
	.type	malloc, @function
malloc:
.LFB53:
	.loc 1 419 1
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
	.loc 1 420 12
	lw	a0,-20(s0)
	call	pvPortMalloc
	mv	a5,a0
	.loc 1 421 1
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
.LFE53:
	.size	malloc, .-malloc
	.section	.text.realloc,"ax",@progbits
	.align	1
	.globl	realloc
	.type	realloc, @function
realloc:
.LFB54:
	.loc 1 426 1
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
	.loc 1 427 12
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	pvPortRealloc
	mv	a5,a0
	.loc 1 428 1
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
.LFE54:
	.size	realloc, .-realloc
	.section	.text.aos_now_ms,"ax",@progbits
	.align	1
	.globl	aos_now_ms
	.type	aos_now_ms, @function
aos_now_ms:
.LFB55:
	.loc 1 432 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	sw	s4,28(sp)
	sw	s5,24(sp)
	sw	s6,20(sp)
	sw	s7,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	.cfi_offset 22, -28
	.cfi_offset 23, -32
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 434 16
	sw	zero,-44(s0)
	.loc 1 435 16
	sw	zero,-48(s0)
	.loc 1 437 33
	addi	a4,s0,-48
	addi	a5,s0,-44
	mv	a1,a4
	mv	a0,a5
	call	xTaskGetTickCount2
	mv	a4,a0
	.loc 1 437 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L134
.L135:
	.loc 1 438 15
	nop
	j	.L135
.L134:
	.loc 1 444 11
	lw	a5,-44(s0)
	mv	s6,a5
	li	s7,0
	.loc 1 444 52
	lw	a5,-48(s0)
	mv	s4,a5
	srai	a5,a5,31
	mv	s5,a5
	.loc 1 444 49
	li	a5,-1
	mul	a4,s5,a5
	li	a5,0
	mul	a5,s4,a5
	add	a4,a4,a5
	li	a5,-1
	mul	a3,s4,a5
	mulhu	s3,s4,a5
	mv	s2,a3
	add	a5,a4,s3
	mv	s3,a5
	.loc 1 444 8
	add	a4,s6,s2
	mv	a3,a4
	sltu	a3,a3,s6
	add	a5,s7,s3
	add	a3,a3,a5
	mv	a5,a3
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	.loc 1 446 12
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	.loc 1 447 1
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s2,36(sp)
	.cfi_restore 18
	lw	s3,32(sp)
	.cfi_restore 19
	lw	s4,28(sp)
	.cfi_restore 20
	lw	s5,24(sp)
	.cfi_restore 21
	lw	s6,20(sp)
	.cfi_restore 22
	lw	s7,16(sp)
	.cfi_restore 23
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE55:
	.size	aos_now_ms, .-aos_now_ms
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/projdefs.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/queue.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/semphr.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/kernel.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x11be
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x24
	.4byte	.LASF150
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x25
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
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
	.uleb128 0x26
	.byte	0x4
	.uleb128 0xb
	.4byte	0x84
	.uleb128 0x3
	.4byte	0x95
	.uleb128 0x1e
	.4byte	0x8b
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xb
	.4byte	0x95
	.uleb128 0x3
	.4byte	0x9c
	.uleb128 0xb
	.4byte	0xa1
	.uleb128 0x1e
	.4byte	0xa1
	.uleb128 0x3
	.4byte	0xba
	.uleb128 0xb
	.4byte	0xb0
	.uleb128 0x27
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x5a
	.uleb128 0xb
	.4byte	0xc7
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x76
	.uleb128 0xb
	.4byte	0xd8
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x23
	.byte	0x10
	.4byte	0xf5
	.uleb128 0x3
	.4byte	0xfa
	.uleb128 0x1f
	.4byte	0x105
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x2
	.byte	0x3e
	.byte	0x12
	.4byte	0xd8
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0xbb
	.uleb128 0xb
	.4byte	0x111
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x2
	.byte	0x40
	.byte	0x12
	.4byte	0xd8
	.uleb128 0xb
	.4byte	0x122
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0xd8
	.uleb128 0xb
	.4byte	0x133
	.uleb128 0x28
	.4byte	.LASF151
	.byte	0x2
	.byte	0x5c
	.byte	0x13
	.4byte	0x111
	.uleb128 0x19
	.4byte	.LASF25
	.byte	0x14
	.byte	0x6
	.2byte	0x425
	.byte	0x8
	.4byte	0x179
	.uleb128 0x7
	.4byte	.LASF22
	.2byte	0x42a
	.byte	0xd
	.4byte	0x133
	.byte	0
	.uleb128 0x7
	.4byte	.LASF23
	.2byte	0x42b
	.byte	0x8
	.4byte	0x179
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.4byte	0x84
	.4byte	0x189
	.uleb128 0x14
	.4byte	0x3e
	.byte	0x3
	.byte	0
	.uleb128 0x20
	.4byte	.LASF24
	.2byte	0x430
	.byte	0x22
	.4byte	0x150
	.uleb128 0x19
	.4byte	.LASF26
	.byte	0x64
	.byte	0x6
	.2byte	0x458
	.byte	0x10
	.4byte	0x240
	.uleb128 0x7
	.4byte	.LASF27
	.2byte	0x45a
	.byte	0x8
	.4byte	0x84
	.byte	0
	.uleb128 0x7
	.4byte	.LASF28
	.2byte	0x45e
	.byte	0x13
	.4byte	0x240
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF29
	.2byte	0x45f
	.byte	0xe
	.4byte	0x122
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF30
	.2byte	0x460
	.byte	0x8
	.4byte	0x84
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF31
	.2byte	0x461
	.byte	0xa
	.4byte	0x250
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF32
	.2byte	0x466
	.byte	0xf
	.4byte	0x122
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF33
	.2byte	0x469
	.byte	0xf
	.4byte	0x260
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF34
	.2byte	0x46c
	.byte	0xf
	.4byte	0x260
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF35
	.2byte	0x472
	.byte	0x9
	.4byte	0x270
	.byte	0x58
	.uleb128 0x7
	.4byte	.LASF36
	.2byte	0x47b
	.byte	0xc
	.4byte	0xd8
	.byte	0x5c
	.uleb128 0x7
	.4byte	.LASF37
	.2byte	0x47c
	.byte	0xb
	.4byte	0xc7
	.byte	0x60
	.uleb128 0x7
	.4byte	.LASF38
	.2byte	0x47f
	.byte	0xb
	.4byte	0xc7
	.byte	0x61
	.byte	0
	.uleb128 0x13
	.4byte	0x189
	.4byte	0x250
	.uleb128 0x14
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.4byte	0xc7
	.4byte	0x260
	.uleb128 0x14
	.4byte	0x3e
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.4byte	0x122
	.4byte	0x270
	.uleb128 0x14
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.4byte	0x84
	.4byte	0x280
	.uleb128 0x14
	.4byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF39
	.2byte	0x488
	.byte	0x3
	.4byte	0x195
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x7
	.byte	0x46
	.byte	0x25
	.4byte	0x298
	.uleb128 0x3
	.4byte	0x29d
	.uleb128 0x21
	.4byte	.LASF42
	.uleb128 0x3
	.4byte	0x105
	.uleb128 0xb
	.4byte	0x2a2
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x8
	.byte	0x30
	.byte	0x22
	.4byte	0x2b8
	.uleb128 0x3
	.4byte	0x2bd
	.uleb128 0x21
	.4byte	.LASF43
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x9
	.byte	0x25
	.byte	0x17
	.4byte	0x2ac
	.uleb128 0x1a
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0xc
	.4byte	0x2e5
	.uleb128 0x15
	.string	"hdl"
	.byte	0xa
	.byte	0x18
	.byte	0xf
	.4byte	0x84
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0xa
	.byte	0x19
	.byte	0x7
	.4byte	0x2ce
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0xa
	.byte	0x1b
	.byte	0x17
	.4byte	0x2e5
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0xa
	.byte	0x1c
	.byte	0x17
	.4byte	0x2e5
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0xa
	.byte	0x1d
	.byte	0x17
	.4byte	0x2e5
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0xa
	.byte	0x1e
	.byte	0x17
	.4byte	0x2e5
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0xa
	.byte	0x1f
	.byte	0x17
	.4byte	0x2e5
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0xa
	.byte	0x20
	.byte	0x17
	.4byte	0x2e5
	.uleb128 0x1a
	.byte	0x8
	.byte	0xa
	.byte	0x22
	.byte	0xd
	.4byte	0x35d
	.uleb128 0x15
	.string	"hdl"
	.byte	0xa
	.byte	0x24
	.byte	0xf
	.4byte	0x84
	.byte	0
	.uleb128 0x15
	.string	"stk"
	.byte	0xa
	.byte	0x25
	.byte	0xf
	.4byte	0x84
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0xa
	.byte	0x26
	.byte	0x7
	.4byte	0x339
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0xa
	.byte	0x28
	.byte	0x1a
	.4byte	0x3e
	.uleb128 0x1a
	.byte	0xa0
	.byte	0x1
	.byte	0x21
	.byte	0x9
	.4byte	0x3c7
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0x22
	.byte	0x12
	.4byte	0x280
	.byte	0
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x23
	.byte	0xe
	.4byte	0xd8
	.byte	0x64
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x24
	.byte	0xb
	.4byte	0x179
	.byte	0x68
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x25
	.byte	0xb
	.4byte	0x84
	.byte	0x78
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x26
	.byte	0xa
	.4byte	0x3c7
	.byte	0x7c
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x27
	.byte	0xe
	.4byte	0xd8
	.byte	0x9c
	.byte	0
	.uleb128 0x13
	.4byte	0x95
	.4byte	0x3d7
	.uleb128 0x14
	.4byte	0x3e
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x1
	.byte	0x28
	.byte	0x3
	.4byte	0x375
	.uleb128 0x29
	.4byte	.LASF61
	.byte	0xc
	.byte	0x1
	.byte	0x2a
	.byte	0x8
	.4byte	0x416
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x2b
	.byte	0x16
	.4byte	0x416
	.byte	0
	.uleb128 0x15
	.string	"fn"
	.byte	0x1
	.byte	0x2c
	.byte	0xc
	.4byte	0xf5
	.byte	0x4
	.uleb128 0x15
	.string	"arg"
	.byte	0x1
	.byte	0x2d
	.byte	0xb
	.4byte	0x84
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	0x3d7
	.uleb128 0x19
	.4byte	.LASF63
	.byte	0xc
	.byte	0x1
	.2byte	0x143
	.byte	0x8
	.4byte	0x450
	.uleb128 0x1b
	.string	"fn"
	.2byte	0x144
	.byte	0xc
	.4byte	0xf5
	.byte	0
	.uleb128 0x1b
	.string	"arg"
	.2byte	0x145
	.byte	0xb
	.4byte	0x84
	.byte	0x4
	.uleb128 0x1b
	.string	"dly"
	.2byte	0x146
	.byte	0x9
	.4byte	0x2b
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x54d
	.byte	0xc
	.4byte	0x111
	.4byte	0x46c
	.uleb128 0x1
	.4byte	0x46c
	.uleb128 0x1
	.4byte	0x471
	.byte	0
	.uleb128 0x3
	.4byte	0x133
	.uleb128 0x3
	.4byte	0x111
	.uleb128 0xb
	.4byte	0x471
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0xb
	.byte	0xa5
	.byte	0x7
	.4byte	0x84
	.4byte	0x496
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x2f6
	.4byte	0x4a8
	.uleb128 0x1
	.4byte	0x13f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x364
	.byte	0xc
	.4byte	0x111
	.4byte	0x4c9
	.uleb128 0x1
	.4byte	0x2ac
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0x133
	.byte	0
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x5d8
	.byte	0x10
	.4byte	0x2ac
	.4byte	0x4ea
	.uleb128 0x1
	.4byte	0x12e
	.uleb128 0x1
	.4byte	0x12e
	.uleb128 0x1
	.4byte	0xd3
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF152
	.byte	0x7
	.2byte	0x97c
	.byte	0x7
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x8
	.2byte	0x510
	.byte	0xc
	.4byte	0x111
	.4byte	0x50f
	.uleb128 0x1
	.4byte	0x2ac
	.uleb128 0x1
	.4byte	0x476
	.byte	0
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x8
	.2byte	0x588
	.byte	0xf
	.4byte	0x2ac
	.4byte	0x52b
	.uleb128 0x1
	.4byte	0x12e
	.uleb128 0x1
	.4byte	0x12e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x8
	.2byte	0x28a
	.byte	0xc
	.4byte	0x111
	.4byte	0x551
	.uleb128 0x1
	.4byte	0x2ac
	.uleb128 0x1
	.4byte	0xb5
	.uleb128 0x1
	.4byte	0x133
	.uleb128 0x1
	.4byte	0x11d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x8
	.2byte	0x58a
	.byte	0xc
	.4byte	0x111
	.4byte	0x56d
	.uleb128 0x1
	.4byte	0x2ac
	.uleb128 0x1
	.4byte	0x133
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF73
	.byte	0x8
	.2byte	0x392
	.4byte	0x57f
	.uleb128 0x1
	.4byte	0x2ac
	.byte	0
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x8
	.2byte	0x586
	.byte	0xf
	.4byte	0x2ac
	.4byte	0x596
	.uleb128 0x1
	.4byte	0xd3
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF153
	.byte	0x7
	.2byte	0x987
	.byte	0xe
	.4byte	0x28c
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x1be
	.byte	0xf
	.4byte	0x28c
	.4byte	0x5d8
	.uleb128 0x1
	.4byte	0xe9
	.uleb128 0x1
	.4byte	0xa6
	.uleb128 0x1
	.4byte	0xe4
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0x122
	.uleb128 0x1
	.4byte	0x2a7
	.uleb128 0x1
	.4byte	0x5dd
	.byte	0
	.uleb128 0x3
	.4byte	0x280
	.uleb128 0xb
	.4byte	0x5d8
	.uleb128 0x17
	.4byte	.LASF76
	.byte	0xc
	.byte	0x2c
	.byte	0x7
	.4byte	0x8b
	.4byte	0x602
	.uleb128 0x1
	.4byte	0x90
	.uleb128 0x1
	.4byte	0xab
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0xc
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x622
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0xb
	.byte	0xa3
	.byte	0x7
	.4byte	0x84
	.4byte	0x638
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x2c2
	.4byte	0x64a
	.uleb128 0x1
	.4byte	0x28c
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF80
	.byte	0xb
	.byte	0xa4
	.byte	0x6
	.4byte	0x65c
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0xe
	.4byte	.LASF83
	.2byte	0x1af
	.byte	0xb
	.4byte	0x45
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a3
	.uleb128 0x12
	.string	"ms"
	.2byte	0x1b1
	.byte	0xf
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.4byte	.LASF81
	.2byte	0x1b2
	.byte	0x10
	.4byte	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.4byte	.LASF82
	.2byte	0x1b3
	.byte	0x10
	.4byte	0x111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0xd
	.byte	0x91
	.byte	0x7
	.4byte	0x84
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6dc
	.uleb128 0x6
	.string	"ptr"
	.2byte	0x1a9
	.byte	0x15
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x1a9
	.byte	0x21
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0xd
	.byte	0x6c
	.byte	0x7
	.4byte	0x84
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x706
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x1a2
	.byte	0x15
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF87
	.2byte	0x19c
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72a
	.uleb128 0x6
	.string	"ms"
	.2byte	0x19c
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF88
	.2byte	0x197
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x74f
	.uleb128 0x6
	.string	"mem"
	.2byte	0x197
	.byte	0x15
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0xd
	.byte	0x5e
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x774
	.uleb128 0x6
	.string	"mem"
	.2byte	0x191
	.byte	0x11
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0xd
	.byte	0x5a
	.byte	0x7
	.4byte	0x84
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7cb
	.uleb128 0x2
	.4byte	.LASF91
	.2byte	0x182
	.byte	0x15
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x182
	.byte	0x23
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"ptr"
	.2byte	0x184
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.4byte	.LASF92
	.2byte	0x185
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF93
	.2byte	0x17c
	.byte	0x7
	.4byte	0x84
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f5
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x17c
	.byte	0x1f
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF94
	.2byte	0x171
	.byte	0x7
	.4byte	0x84
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82e
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x171
	.byte	0x1f
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"mem"
	.2byte	0x173
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF95
	.2byte	0x16c
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x858
	.uleb128 0x2
	.4byte	.LASF63
	.2byte	0x16c
	.byte	0x31
	.4byte	0x858
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	0x32d
	.uleb128 0xe
	.4byte	.LASF96
	.2byte	0x166
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x894
	.uleb128 0x2
	.4byte	.LASF63
	.2byte	0x166
	.byte	0x20
	.4byte	0x858
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"w"
	.2byte	0x168
	.byte	0x12
	.4byte	0x894
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	0x41b
	.uleb128 0x2d
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x15d
	.byte	0xd
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8cd
	.uleb128 0x6
	.string	"arg"
	.2byte	0x15d
	.byte	0x20
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"w"
	.2byte	0x15f
	.byte	0x12
	.4byte	0x894
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF97
	.2byte	0x158
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x906
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x158
	.byte	0x33
	.4byte	0x906
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF63
	.2byte	0x158
	.byte	0x4a
	.4byte	0x858
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.4byte	0x35d
	.uleb128 0x18
	.4byte	.LASF99
	.2byte	0x153
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x930
	.uleb128 0x2
	.4byte	.LASF63
	.2byte	0x153
	.byte	0x23
	.4byte	0x858
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF100
	.2byte	0x149
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x993
	.uleb128 0x2
	.4byte	.LASF63
	.2byte	0x149
	.byte	0x1f
	.4byte	0x858
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"fn"
	.2byte	0x149
	.byte	0x2c
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"arg"
	.2byte	0x149
	.byte	0x3f
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"dly"
	.2byte	0x149
	.byte	0x48
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.string	"w"
	.2byte	0x14b
	.byte	0x12
	.4byte	0x894
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF101
	.2byte	0x13e
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9db
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x13e
	.byte	0x3b
	.4byte	0x906
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"pri"
	.2byte	0x13e
	.byte	0x5a
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF102
	.2byte	0x13e
	.byte	0x73
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF103
	.2byte	0x139
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa13
	.uleb128 0x2
	.4byte	.LASF104
	.2byte	0x139
	.byte	0x33
	.4byte	0xa13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"ms"
	.2byte	0x139
	.byte	0x4e
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.4byte	0x321
	.uleb128 0x10
	.4byte	.LASF105
	.2byte	0x134
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa42
	.uleb128 0x2
	.4byte	.LASF104
	.2byte	0x134
	.byte	0x31
	.4byte	0xa13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF106
	.2byte	0x12f
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa6c
	.uleb128 0x2
	.4byte	.LASF104
	.2byte	0x12f
	.byte	0x32
	.4byte	0xa13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x12b
	.byte	0x6
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa93
	.uleb128 0x2
	.4byte	.LASF104
	.2byte	0x12b
	.byte	0x32
	.4byte	0xa13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF108
	.2byte	0x125
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf7
	.uleb128 0x2
	.4byte	.LASF104
	.2byte	0x125
	.byte	0x30
	.4byte	0xa13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"fn"
	.2byte	0x125
	.byte	0x4e
	.4byte	0xb07
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"arg"
	.2byte	0x126
	.byte	0x29
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"ms"
	.2byte	0x126
	.byte	0x42
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF109
	.2byte	0x126
	.byte	0x5a
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1f
	.4byte	0xb07
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x3
	.4byte	0xaf7
	.uleb128 0x10
	.4byte	.LASF110
	.2byte	0x120
	.byte	0x7
	.4byte	0x84
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb36
	.uleb128 0x2
	.4byte	.LASF111
	.2byte	0x120
	.byte	0x36
	.4byte	0xb36
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	0x315
	.uleb128 0x10
	.4byte	.LASF112
	.2byte	0x11b
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb65
	.uleb128 0x2
	.4byte	.LASF111
	.2byte	0x11b
	.byte	0x25
	.4byte	0xb36
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF113
	.2byte	0x114
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbbb
	.uleb128 0x2
	.4byte	.LASF111
	.2byte	0x114
	.byte	0x21
	.4byte	0xb36
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"ms"
	.2byte	0x114
	.byte	0x35
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"msg"
	.2byte	0x114
	.byte	0x3f
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x115
	.byte	0x32
	.4byte	0xbbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3
	.4byte	0x3e
	.uleb128 0xe
	.4byte	.LASF114
	.2byte	0x10f
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc08
	.uleb128 0x2
	.4byte	.LASF111
	.2byte	0x10f
	.byte	0x21
	.4byte	0xb36
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"msg"
	.2byte	0x10f
	.byte	0x2e
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x10f
	.byte	0x50
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x18
	.4byte	.LASF115
	.2byte	0x10a
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc2d
	.uleb128 0x2
	.4byte	.LASF111
	.2byte	0x10a
	.byte	0x22
	.4byte	0xb36
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF116
	.2byte	0x102
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc91
	.uleb128 0x2
	.4byte	.LASF111
	.2byte	0x102
	.byte	0x20
	.4byte	0xb36
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"buf"
	.2byte	0x102
	.byte	0x3d
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x102
	.byte	0x4f
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x102
	.byte	0x59
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.string	"q"
	.2byte	0x104
	.byte	0x13
	.4byte	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF118
	.byte	0x1
	.byte	0xfd
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb5
	.uleb128 0x5
	.string	"sem"
	.byte	0xfd
	.byte	0x24
	.4byte	0xcb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	0x309
	.uleb128 0x22
	.4byte	.LASF119
	.byte	0xf8
	.4byte	0x2b
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce1
	.uleb128 0x5
	.string	"sem"
	.byte	0xf8
	.byte	0x21
	.4byte	0xcb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF120
	.byte	0x1
	.byte	0xe8
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd23
	.uleb128 0x5
	.string	"sem"
	.byte	0xe8
	.byte	0x20
	.4byte	0xcb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF121
	.byte	0xea
	.byte	0x10
	.4byte	0x111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.4byte	0x11b4
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0xf0
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF122
	.byte	0x1
	.byte	0xde
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd67
	.uleb128 0x5
	.string	"sem"
	.byte	0xde
	.byte	0x1d
	.4byte	0xcb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"ms"
	.byte	0xde
	.byte	0x2f
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"ret"
	.byte	0xe4
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF123
	.byte	0x1
	.byte	0xd5
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd8b
	.uleb128 0x5
	.string	"sem"
	.byte	0xd5
	.byte	0x1e
	.4byte	0xcb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF124
	.byte	0x1
	.byte	0xce
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdce
	.uleb128 0x5
	.string	"sem"
	.byte	0xce
	.byte	0x1c
	.4byte	0xcb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0xce
	.byte	0x25
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"s"
	.byte	0xd0
	.byte	0x17
	.4byte	0x2c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.4byte	.LASF126
	.byte	0xc9
	.4byte	0x2b
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf5
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0xc9
	.byte	0x25
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	0x2fd
	.uleb128 0x8
	.4byte	.LASF128
	.byte	0x1
	.byte	0xc1
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe23
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0xc1
	.byte	0x23
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF129
	.byte	0x1
	.byte	0xb9
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe59
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0xb9
	.byte	0x21
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"ms"
	.byte	0xb9
	.byte	0x35
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF130
	.byte	0x1
	.byte	0xb4
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe7d
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0xb4
	.byte	0x22
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF131
	.byte	0x1
	.byte	0xad
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb4
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0xad
	.byte	0x20
	.4byte	0xdf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.string	"mux"
	.byte	0xaf
	.byte	0x17
	.4byte	0x2c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF132
	.byte	0x1
	.byte	0xa1
	.byte	0x7
	.4byte	0x84
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeeb
	.uleb128 0x5
	.string	"key"
	.byte	0xa1
	.byte	0x2b
	.4byte	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0xa3
	.byte	0x16
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF133
	.byte	0x1
	.byte	0x94
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf2f
	.uleb128 0x5
	.string	"key"
	.byte	0x94
	.byte	0x29
	.4byte	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"vp"
	.byte	0x94
	.byte	0x34
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x96
	.byte	0x16
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF134
	.byte	0x1
	.byte	0x8c
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf61
	.uleb128 0x5
	.string	"key"
	.byte	0x8c
	.byte	0x29
	.4byte	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x8e
	.byte	0x16
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF135
	.byte	0x1
	.byte	0x78
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa4
	.uleb128 0x5
	.string	"key"
	.byte	0x78
	.byte	0x29
	.4byte	0xfa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x7a
	.byte	0x16
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"i"
	.byte	0x7b
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	0x369
	.uleb128 0x8
	.4byte	.LASF136
	.byte	0x1
	.byte	0x70
	.byte	0xd
	.4byte	0xa1
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfd2
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x72
	.byte	0x16
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF137
	.byte	0x1
	.byte	0x6b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff6
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0x6b
	.byte	0x28
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF139
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1064
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x65
	.byte	0x32
	.4byte	0x1064
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x65
	.byte	0x44
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"fn"
	.byte	0x65
	.byte	0x51
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"arg"
	.byte	0x65
	.byte	0x64
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x66
	.byte	0x1a
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0x66
	.byte	0x3a
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3
	.4byte	0x2f1
	.uleb128 0x8
	.4byte	.LASF141
	.byte	0x1
	.byte	0x47
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10f3
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x47
	.byte	0x1e
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"fn"
	.byte	0x47
	.byte	0x2b
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"arg"
	.byte	0x47
	.byte	0x3e
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x48
	.byte	0x16
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	.LASF142
	.byte	0x4a
	.byte	0x12
	.4byte	0x28c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x4b
	.byte	0x16
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x4c
	.byte	0x12
	.4byte	0x10f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x4d
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x3
	.4byte	0x3e3
	.uleb128 0xf
	.4byte	.LASF143
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x112a
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0x3c
	.byte	0x1c
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x3e
	.byte	0x16
	.4byte	0x416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.4byte	.LASF146
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1178
	.uleb128 0x5
	.string	"arg"
	.byte	0x30
	.byte	0x1d
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x32
	.byte	0x12
	.4byte	0x10f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.string	"fn"
	.byte	0x33
	.byte	0xc
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF147
	.byte	0x34
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x23
	.4byte	.LASF148
	.byte	0x1b
	.byte	0xd
	.4byte	0xa1
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.4byte	.LASF149
	.byte	0x16
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.4byte	.LASF154
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.4byte	.LASF155
	.byte	0x2
	.byte	0xb3
	.byte	0x3a
	.4byte	0x111
	.byte	0x3
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x34
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1ac
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"StaticTask_t"
.LASF71:
	.string	"xQueueSemaphoreTake"
.LASF138:
	.string	"code"
.LASF33:
	.string	"uxDummy10"
.LASF34:
	.string	"uxDummy12"
.LASF42:
	.string	"tskTaskControlBlock"
.LASF66:
	.string	"xQueueReceive"
.LASF2:
	.string	"unsigned int"
.LASF18:
	.string	"StackType_t"
.LASF112:
	.string	"aos_queue_is_valid"
.LASF73:
	.string	"vQueueDelete"
.LASF113:
	.string	"aos_queue_recv"
.LASF145:
	.string	"worker_entry"
.LASF38:
	.string	"uxDummy20"
.LASF97:
	.string	"aos_work_run"
.LASF135:
	.string	"aos_task_key_create"
.LASF90:
	.string	"calloc"
.LASF132:
	.string	"aos_task_getspecific"
.LASF142:
	.string	"xHandle"
.LASF47:
	.string	"aos_mutex_t"
.LASF106:
	.string	"aos_timer_start"
.LASF16:
	.string	"uint32_t"
.LASF141:
	.string	"aos_task_new"
.LASF127:
	.string	"mutex"
.LASF86:
	.string	"malloc"
.LASF43:
	.string	"QueueDefinition"
.LASF125:
	.string	"count"
.LASF133:
	.string	"aos_task_setspecific"
.LASF121:
	.string	"xHigherPriorityTaskWoken"
.LASF11:
	.string	"long long unsigned int"
.LASF148:
	.string	"aos_version_get"
.LASF76:
	.string	"strncpy"
.LASF52:
	.string	"aos_workqueue_t"
.LASF123:
	.string	"aos_sem_free"
.LASF78:
	.string	"pvPortMalloc"
.LASF124:
	.string	"aos_sem_new"
.LASF95:
	.string	"aos_work_cancel"
.LASF151:
	.string	"TrapNetCounter"
.LASF136:
	.string	"aos_task_name"
.LASF13:
	.string	"size_t"
.LASF83:
	.string	"aos_now_ms"
.LASF24:
	.string	"StaticListItem_t"
.LASF143:
	.string	"vPortCleanUpTCB"
.LASF89:
	.string	"free"
.LASF23:
	.string	"pvDummy3"
.LASF49:
	.string	"aos_queue_t"
.LASF46:
	.string	"aos_task_t"
.LASF29:
	.string	"uxDummy5"
.LASF32:
	.string	"uxDummy9"
.LASF70:
	.string	"xQueueGenericSend"
.LASF72:
	.string	"vTaskDelay"
.LASF94:
	.string	"aos_zalloc"
.LASF114:
	.string	"aos_queue_send"
.LASF103:
	.string	"aos_timer_change"
.LASF81:
	.string	"ticks"
.LASF140:
	.string	"prio"
.LASF45:
	.string	"aos_hdl_t"
.LASF12:
	.string	"char"
.LASF56:
	.string	"keys"
.LASF20:
	.string	"UBaseType_t"
.LASF68:
	.string	"xQueueGiveFromISR"
.LASF109:
	.string	"repeat"
.LASF61:
	.string	"targ"
.LASF41:
	.string	"QueueHandle_t"
.LASF115:
	.string	"aos_queue_free"
.LASF15:
	.string	"uint8_t"
.LASF67:
	.string	"xQueueGenericCreate"
.LASF74:
	.string	"xQueueCreateMutex"
.LASF27:
	.string	"pxDummy1"
.LASF37:
	.string	"ucDummy19"
.LASF3:
	.string	"long long int"
.LASF30:
	.string	"pxDummy6"
.LASF93:
	.string	"aos_malloc"
.LASF62:
	.string	"task"
.LASF149:
	.string	"aos_get_hz"
.LASF19:
	.string	"BaseType_t"
.LASF146:
	.string	"dfl_entry"
.LASF17:
	.string	"TaskFunction_t"
.LASF48:
	.string	"aos_sem_t"
.LASF77:
	.string	"memset"
.LASF107:
	.string	"aos_timer_free"
.LASF110:
	.string	"aos_queue_buf_ptr"
.LASF85:
	.string	"size"
.LASF40:
	.string	"TaskHandle_t"
.LASF155:
	.string	"xPortIsInsideInterrupt"
.LASF130:
	.string	"aos_mutex_free"
.LASF57:
	.string	"stack"
.LASF122:
	.string	"aos_sem_wait"
.LASF21:
	.string	"TickType_t"
.LASF75:
	.string	"xTaskCreateStatic"
.LASF99:
	.string	"aos_work_destroy"
.LASF4:
	.string	"long double"
.LASF79:
	.string	"vTaskDelete"
.LASF31:
	.string	"ucDummy7"
.LASF154:
	.string	"aos_reboot"
.LASF152:
	.string	"vTaskSwitchContext"
.LASF120:
	.string	"aos_sem_signal"
.LASF7:
	.string	"short int"
.LASF64:
	.string	"xTaskGetTickCount2"
.LASF108:
	.string	"aos_timer_new"
.LASF101:
	.string	"aos_workqueue_create"
.LASF129:
	.string	"aos_mutex_lock"
.LASF9:
	.string	"long int"
.LASF44:
	.string	"SemaphoreHandle_t"
.LASF126:
	.string	"aos_mutex_is_valid"
.LASF139:
	.string	"aos_task_new_ext"
.LASF51:
	.string	"aos_work_t"
.LASF63:
	.string	"work"
.LASF105:
	.string	"aos_timer_stop"
.LASF80:
	.string	"vPortFree"
.LASF26:
	.string	"xSTATIC_TCB"
.LASF58:
	.string	"name"
.LASF60:
	.string	"AosStaticTask_t"
.LASF36:
	.string	"ulDummy18"
.LASF59:
	.string	"magic"
.LASF25:
	.string	"xSTATIC_LIST_ITEM"
.LASF100:
	.string	"aos_work_init"
.LASF10:
	.string	"long unsigned int"
.LASF111:
	.string	"queue"
.LASF14:
	.string	"int32_t"
.LASF87:
	.string	"aos_msleep"
.LASF134:
	.string	"aos_task_key_delete"
.LASF131:
	.string	"aos_mutex_new"
.LASF98:
	.string	"workqueue"
.LASF147:
	.string	"farg"
.LASF6:
	.string	"unsigned char"
.LASF35:
	.string	"pvDummy15"
.LASF22:
	.string	"xDummy2"
.LASF28:
	.string	"xDummy3"
.LASF153:
	.string	"xTaskGetCurrentTaskHandle"
.LASF55:
	.string	"key_bitmap"
.LASF117:
	.string	"max_msg"
.LASF88:
	.string	"aos_free"
.LASF84:
	.string	"realloc"
.LASF118:
	.string	"aos_sem_signal_all"
.LASF5:
	.string	"signed char"
.LASF53:
	.string	"aos_task_key_t"
.LASF8:
	.string	"short unsigned int"
.LASF116:
	.string	"aos_queue_new"
.LASF119:
	.string	"aos_sem_is_valid"
.LASF144:
	.string	"pxTCB"
.LASF96:
	.string	"aos_work_sched"
.LASF91:
	.string	"nmemb"
.LASF92:
	.string	"total"
.LASF65:
	.string	"pvPortRealloc"
.LASF102:
	.string	"stack_size"
.LASF50:
	.string	"aos_timer_t"
.LASF82:
	.string	"overflow_count"
.LASF128:
	.string	"aos_mutex_unlock"
.LASF104:
	.string	"timer"
.LASF150:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF54:
	.string	"fTask"
.LASF69:
	.string	"xQueueCreateCountingSemaphore"
.LASF137:
	.string	"aos_task_exit"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/src/aos_freertos.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/yloop"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
