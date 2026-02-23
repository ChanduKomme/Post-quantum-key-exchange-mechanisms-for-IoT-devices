	.file	"sys_arch.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/FreeRTOS/sys_arch.c"
	.globl	errno
	.section	.sbss.errno,"aw",@nobits
	.align	2
	.type	errno, @object
	.size	errno, 4
errno:
	.zero	4
	.section	.sbss.s_nextthread,"aw",@nobits
	.align	1
	.type	s_nextthread, @object
	.size	s_nextthread, 2
s_nextthread:
	.zero	2
	.section	.text.sys_mbox_new,"ax",@progbits
	.align	1
	.globl	sys_mbox_new
	.type	sys_mbox_new, @function
sys_mbox_new:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/FreeRTOS/sys_arch.c"
	.loc 1 55 1
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
	.loc 1 58 13
	li	a2,0
	li	a1,4
	li	a0,50
	call	xQueueGenericCreate
	mv	a4,a0
	.loc 1 58 11 discriminator 1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 61 28
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,256(a5)
	.loc 1 61 7
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,256(a5)
	.loc 1 62 30
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,258(a5)
	.loc 1 62 56
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,256(a5)
	.loc 1 62 10
	bgeu	a4,a5,.L2
	.loc 1 63 55
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,256(a5)
	.loc 1 63 34
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,258(a5)
.L2:
	.loc 1 66 6
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 66 5
	bne	a5,zero,.L3
	.loc 1 67 10
	li	a5,-1
	j	.L4
.L3:
	.loc 1 69 9
	li	a5,0
.L4:
	.loc 1 70 1
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
.LFE5:
	.size	sys_mbox_new, .-sys_mbox_new
	.section	.text.sys_mbox_free,"ax",@progbits
	.align	1
	.globl	sys_mbox_free
	.type	sys_mbox_free, @function
sys_mbox_free:
.LFB6:
	.loc 1 79 1
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
	.loc 1 80 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	uxQueueMessagesWaiting
	mv	a5,a0
	.loc 1 80 7 discriminator 1
	beq	a5,zero,.L6
	.loc 1 83 9
 #APP
# 83 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/FreeRTOS/sys_arch.c" 1
	 nop 
# 0 "" 2
	.loc 1 85 28
 #NO_APP
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,260(a5)
	.loc 1 85 32
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,260(a5)
.L6:
	.loc 1 91 5
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	vQueueDelete
	.loc 1 94 27
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,256(a5)
	.loc 1 94 6
	addi	a5,a5,-1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,256(a5)
	.loc 1 96 1
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
	.size	sys_mbox_free, .-sys_mbox_free
	.section	.text.sys_mbox_post,"ax",@progbits
	.align	1
	.globl	sys_mbox_post
	.type	sys_mbox_post, @function
sys_mbox_post:
.LFB7:
	.loc 1 101 1
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
	.loc 1 102 11
	nop
.L8:
	.loc 1 102 13 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	addi	a4,s0,-24
	li	a3,0
	li	a2,-1
	mv	a1,a4
	mv	a0,a5
	call	xQueueGenericSend
	mv	a4,a0
	.loc 1 102 110 discriminator 2
	li	a5,1
	bne	a4,a5,.L8
	.loc 1 103 1
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
.LFE7:
	.size	sys_mbox_post, .-sys_mbox_post
	.section	.text.sys_mbox_trypost,"ax",@progbits
	.align	1
	.globl	sys_mbox_trypost
	.type	sys_mbox_trypost, @function
sys_mbox_trypost:
.LFB8:
	.loc 1 109 1
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
	.loc 1 112 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	addi	a4,s0,-40
	li	a3,0
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	xQueueGenericSend
	mv	a4,a0
	.loc 1 112 7 discriminator 1
	li	a5,1
	bne	a4,a5,.L10
	.loc 1 114 14
	sb	zero,-17(s0)
	j	.L11
.L10:
	.loc 1 118 14
	li	a5,-1
	sb	a5,-17(s0)
	.loc 1 121 26
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,260(a5)
	.loc 1 121 30
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,260(a5)
.L11:
	.loc 1 126 11
	lb	a5,-17(s0)
	.loc 1 127 1
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
.LFE8:
	.size	sys_mbox_trypost, .-sys_mbox_trypost
	.section	.text.sys_arch_mbox_fetch,"ax",@progbits
	.align	1
	.globl	sys_arch_mbox_fetch
	.type	sys_arch_mbox_fetch, @function
sys_arch_mbox_fetch:
.LFB9:
	.loc 1 146 1
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
	.loc 1 150 17
	call	xTaskGetTickCount
	sw	a0,-20(s0)
	.loc 1 152 8
	lw	a5,-40(s0)
	bne	a5,zero,.L14
	.loc 1 154 13
	addi	a5,s0,-32
	sw	a5,-40(s0)
.L14:
	.loc 1 157 8
	lw	a5,-44(s0)
	beq	a5,zero,.L20
	.loc 1 159 38
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	xQueueReceive
	mv	a4,a0
	.loc 1 159 12 discriminator 1
	li	a5,1
	bne	a4,a5,.L16
	.loc 1 161 23
	call	xTaskGetTickCount
	sw	a0,-24(s0)
	.loc 1 162 21
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 164 20
	lw	a5,-28(s0)
	j	.L19
.L16:
	.loc 1 168 18
	lw	a5,-40(s0)
	sw	zero,0(a5)
	.loc 1 170 20
	li	a5,-1
	j	.L19
.L20:
	.loc 1 175 14
	nop
.L18:
	.loc 1 175 40 discriminator 2
	lw	a5,-36(s0)
	lw	a5,0(a5)
	li	a2,-1
	lw	a1,-40(s0)
	mv	a0,a5
	call	xQueueReceive
	mv	a4,a0
	.loc 1 175 37 discriminator 2
	li	a5,1
	bne	a4,a5,.L18
	.loc 1 176 19
	call	xTaskGetTickCount
	sw	a0,-24(s0)
	.loc 1 177 17
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 179 16
	lw	a5,-28(s0)
.L19:
	.loc 1 181 1
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
	.size	sys_arch_mbox_fetch, .-sys_arch_mbox_fetch
	.section	.text.sys_arch_mbox_tryfetch,"ax",@progbits
	.align	1
	.globl	sys_arch_mbox_tryfetch
	.type	sys_arch_mbox_tryfetch, @function
sys_arch_mbox_tryfetch:
.LFB10:
	.loc 1 189 1
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
	.loc 1 192 8
	lw	a5,-40(s0)
	bne	a5,zero,.L22
	.loc 1 194 13
	addi	a5,s0,-20
	sw	a5,-40(s0)
.L22:
	.loc 1 197 33
	lw	a5,-36(s0)
	lw	a5,0(a5)
	li	a2,0
	lw	a1,-40(s0)
	mv	a0,a5
	call	xQueueReceive
	mv	a4,a0
	.loc 1 197 7 discriminator 1
	li	a5,1
	bne	a4,a5,.L23
	.loc 1 199 14
	li	a5,0
	j	.L25
.L23:
	.loc 1 203 14
	li	a5,-1
.L25:
	.loc 1 205 1
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
	.size	sys_arch_mbox_tryfetch, .-sys_arch_mbox_tryfetch
	.section	.text.sys_mbox_valid,"ax",@progbits
	.align	1
	.globl	sys_mbox_valid
	.type	sys_mbox_valid, @function
sys_mbox_valid:
.LFB11:
	.loc 1 208 1
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
	.loc 1 209 7
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 209 6
	bne	a5,zero,.L27
	.loc 1 210 12
	li	a5,0
	j	.L28
.L27:
	.loc 1 212 12
	li	a5,1
.L28:
	.loc 1 213 1
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
.LFE11:
	.size	sys_mbox_valid, .-sys_mbox_valid
	.section	.text.sys_mbox_set_invalid,"ax",@progbits
	.align	1
	.globl	sys_mbox_set_invalid
	.type	sys_mbox_set_invalid, @function
sys_mbox_set_invalid:
.LFB12:
	.loc 1 216 1
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
	.loc 1 217 9
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 1 218 1
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
	.size	sys_mbox_set_invalid, .-sys_mbox_set_invalid
	.section	.text.sys_sem_new,"ax",@progbits
	.align	1
	.globl	sys_sem_new
	.type	sys_sem_new, @function
sys_sem_new:
.LFB13:
	.loc 1 224 1
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
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 1 225 18
	li	a2,3
	li	a1,0
	li	a0,1
	call	xQueueGenericCreate
	mv	a4,a0
	.loc 1 225 16 discriminator 1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 225 106 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 225 102 discriminator 1
	beq	a5,zero,.L31
	.loc 1 225 17 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
.L31:
	.loc 1 226 8
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 226 7
	bne	a5,zero,.L32
	.loc 1 229 27
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,248(a5)
	.loc 1 229 7
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,248(a5)
	.loc 1 231 16
	li	a5,-1
	j	.L33
.L32:
	.loc 1 234 7
	lbu	a5,-21(s0)
	bne	a5,zero,.L34
	.loc 1 236 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	li	a1,1
	mv	a0,a5
	call	xQueueSemaphoreTake
.L34:
	.loc 1 240 25
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,244(a5)
	.loc 1 240 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,244(a5)
	.loc 1 241 27
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,246(a5)
	.loc 1 241 52
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,244(a5)
	.loc 1 241 8
	bgeu	a4,a5,.L35
	.loc 1 242 52
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,244(a5)
	.loc 1 242 32
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,246(a5)
.L35:
	.loc 1 246 12
	li	a5,0
.L33:
	.loc 1 247 1
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
	.size	sys_sem_new, .-sys_sem_new
	.section	.text.sys_arch_sem_wait,"ax",@progbits
	.align	1
	.globl	sys_arch_sem_wait
	.type	sys_arch_sem_wait, @function
sys_arch_sem_wait:
.LFB14:
	.loc 1 266 1
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
	.loc 1 269 17
	call	xTaskGetTickCount
	sw	a0,-20(s0)
	.loc 1 271 7
	lw	a5,-40(s0)
	beq	a5,zero,.L41
	.loc 1 273 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a1,-40(s0)
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 273 11 discriminator 1
	li	a5,1
	bne	a4,a5,.L38
	.loc 1 275 23
	call	xTaskGetTickCount
	sw	a0,-24(s0)
	.loc 1 276 21
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 278 20
	lw	a5,-28(s0)
	j	.L39
.L38:
	.loc 1 282 20
	li	a5,-1
	j	.L39
.L41:
	.loc 1 287 14
	nop
.L40:
	.loc 1 287 16 discriminator 2
	lw	a5,-36(s0)
	lw	a5,0(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 287 81 discriminator 2
	li	a5,1
	bne	a4,a5,.L40
	.loc 1 288 19
	call	xTaskGetTickCount
	sw	a0,-24(s0)
	.loc 1 289 17
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 291 16
	lw	a5,-28(s0)
.L39:
	.loc 1 294 1
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
	.size	sys_arch_sem_wait, .-sys_arch_sem_wait
	.section	.text.sys_sem_signal,"ax",@progbits
	.align	1
	.globl	sys_sem_signal
	.type	sys_sem_signal, @function
sys_sem_signal:
.LFB15:
	.loc 1 299 1
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
	.loc 1 300 5
	lw	a5,-20(s0)
	lw	a5,0(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
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
.LFE15:
	.size	sys_sem_signal, .-sys_sem_signal
	.section	.text.sys_sem_free,"ax",@progbits
	.align	1
	.globl	sys_sem_free
	.type	sys_sem_free, @function
sys_sem_free:
.LFB16:
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
	.loc 1 308 27
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,244(a5)
	.loc 1 308 7
	addi	a5,a5,-1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,244(a5)
	.loc 1 311 5
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	vQueueDelete
	.loc 1 312 1
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
.LFE16:
	.size	sys_sem_free, .-sys_sem_free
	.section	.text.sys_sem_valid,"ax",@progbits
	.align	1
	.globl	sys_sem_valid
	.type	sys_sem_valid, @function
sys_sem_valid:
.LFB17:
	.loc 1 315 1
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
	.loc 1 316 7
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 316 6
	bne	a5,zero,.L45
	.loc 1 317 12
	li	a5,0
	j	.L46
.L45:
	.loc 1 319 12
	li	a5,1
.L46:
	.loc 1 320 1
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
	.size	sys_sem_valid, .-sys_sem_valid
	.section	.text.sys_sem_set_invalid,"ax",@progbits
	.align	1
	.globl	sys_sem_set_invalid
	.type	sys_sem_set_invalid, @function
sys_sem_set_invalid:
.LFB18:
	.loc 1 324 1
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
	.loc 1 325 8
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 1 326 1
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
	.size	sys_sem_set_invalid, .-sys_sem_set_invalid
	.section	.text.sys_init,"ax",@progbits
	.align	1
	.globl	sys_init
	.type	sys_init, @function
sys_init:
.LFB19:
	.loc 1 331 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 333 18
	lui	a5,%hi(s_nextthread)
	sh	zero,%lo(s_nextthread)(a5)
	.loc 1 334 1
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
.LFE19:
	.size	sys_init, .-sys_init
	.section	.text.sys_mutex_new,"ax",@progbits
	.align	1
	.globl	sys_mutex_new
	.type	sys_mutex_new, @function
sys_mutex_new:
.LFB20:
	.loc 1 341 41
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
	.loc 1 343 12
	li	a0,1
	call	xQueueCreateMutex
	mv	a4,a0
	.loc 1 343 10 discriminator 1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 344 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 344 11
	bne	a5,zero,.L50
	.loc 1 347 29
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,254(a5)
	.loc 1 347 7
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,254(a5)
	.loc 1 349 16
	li	a5,-1
	j	.L51
.L50:
	.loc 1 353 27
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,250(a5)
	.loc 1 353 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,250(a5)
	.loc 1 354 29
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,252(a5)
	.loc 1 354 56
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,250(a5)
	.loc 1 354 8
	bgeu	a4,a5,.L52
	.loc 1 355 56
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,250(a5)
	.loc 1 355 34
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,252(a5)
.L52:
	.loc 1 358 16
	li	a5,0
.L51:
	.loc 1 359 1
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
	.size	sys_mutex_new, .-sys_mutex_new
	.section	.text.sys_mutex_free,"ax",@progbits
	.align	1
	.globl	sys_mutex_free
	.type	sys_mutex_free, @function
sys_mutex_free:
.LFB21:
	.loc 1 363 1
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
	.loc 1 365 29
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,250(a5)
	.loc 1 365 7
	addi	a5,a5,-1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,250(a5)
	.loc 1 368 5
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	vQueueDelete
	.loc 1 369 1
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
.LFE21:
	.size	sys_mutex_free, .-sys_mutex_free
	.section	.text.sys_mutex_lock,"ax",@progbits
	.align	1
	.globl	sys_mutex_lock
	.type	sys_mutex_lock, @function
sys_mutex_lock:
.LFB22:
	.loc 1 373 1
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
	.loc 1 374 5
	li	a1,0
	lw	a0,-20(s0)
	call	sys_arch_sem_wait
	.loc 1 375 1
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
.LFE22:
	.size	sys_mutex_lock, .-sys_mutex_lock
	.section	.text.sys_mutex_unlock,"ax",@progbits
	.align	1
	.globl	sys_mutex_unlock
	.type	sys_mutex_unlock, @function
sys_mutex_unlock:
.LFB23:
	.loc 1 380 1
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
	.loc 1 381 5
	lw	a5,-20(s0)
	lw	a5,0(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 382 1
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
.LFE23:
	.size	sys_mutex_unlock, .-sys_mutex_unlock
	.section	.text.sys_thread_new,"ax",@progbits
	.align	1
	.globl	sys_thread_new
	.type	sys_thread_new, @function
sys_thread_new:
.LFB24:
	.loc 1 394 1
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
	.loc 1 398 22
	lui	a5,%hi(s_nextthread)
	lhu	a4,%lo(s_nextthread)(a5)
	.loc 1 398 7
	li	a5,5
	bgtu	a4,a5,.L57
	.loc 1 400 16
	lw	a5,-48(s0)
	slli	a2,a5,16
	srli	a2,a2,16
	lw	a4,-52(s0)
	addi	a5,s0,-24
	lw	a3,-44(s0)
	lw	a1,-36(s0)
	lw	a0,-40(s0)
	call	xTaskCreate
	sw	a0,-20(s0)
	.loc 1 406 10
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L58
	.loc 1 408 19
	lw	a5,-24(s0)
	j	.L60
.L58:
	.loc 1 412 18
	li	a5,0
	j	.L60
.L57:
	.loc 1 417 13
	li	a5,0
.L60:
	.loc 1 419 1
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
.LFE24:
	.size	sys_thread_new, .-sys_thread_new
	.section	.text.sys_arch_protect,"ax",@progbits
	.align	1
	.globl	sys_arch_protect
	.type	sys_arch_protect, @function
sys_arch_protect:
.LFB25:
	.loc 1 435 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 436 5
	call	vTaskEnterCritical
	.loc 1 437 12
	li	a5,1
	.loc 1 438 1
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
.LFE25:
	.size	sys_arch_protect, .-sys_arch_protect
	.section	.text.sys_arch_unprotect,"ax",@progbits
	.align	1
	.globl	sys_arch_unprotect
	.type	sys_arch_unprotect, @function
sys_arch_unprotect:
.LFB26:
	.loc 1 447 1
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
	.loc 1 449 5
	call	vTaskExitCritical
	.loc 1 450 1
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
	.size	sys_arch_unprotect, .-sys_arch_unprotect
	.section	.rodata
	.align	2
.LC0:
	.string	"[LWIP] sys_assert %s\r\n"
	.section	.text.sys_assert,"ax",@progbits
	.align	1
	.globl	sys_assert
	.type	sys_assert, @function
sys_assert:
.LFB27:
	.loc 1 456 1
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
	.loc 1 462 5
	call	vTaskEnterCritical
	.loc 1 463 5
	lw	a1,-20(s0)
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
.L65:
	.loc 1 464 5
	nop
	j	.L65
	.cfi_endproc
.LFE27:
	.size	sys_assert, .-sys_assert
	.section	.text.sys_now,"ax",@progbits
	.align	1
	.globl	sys_now
	.type	sys_now, @function
sys_now:
.LFB28:
	.loc 1 469 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 471 12
	call	xTaskGetTickCount
	mv	a5,a0
	.loc 1 472 1
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
.LFE28:
	.size	sys_now, .-sys_now
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/arch/cc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/projdefs.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/queue.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/semphr.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/arch/sys_arch.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/sys.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/mem.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/stats.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb9b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1c
	.4byte	.LASF156
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x2
	.byte	0x25
	.byte	0xd
	.4byte	0x37
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x1e
	.byte	0x4
	.uleb128 0x9
	.4byte	0x84
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x9
	.4byte	0x8b
	.uleb128 0x8
	.4byte	0x92
	.uleb128 0x9
	.4byte	0x97
	.uleb128 0x1f
	.4byte	0x97
	.uleb128 0x8
	.4byte	0xb0
	.uleb128 0x9
	.4byte	0xa6
	.uleb128 0x20
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x5a
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x45
	.uleb128 0x9
	.4byte	0xc9
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x53
	.uleb128 0x9
	.4byte	0xda
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x61
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xc9
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0xb1
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xda
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xeb
	.uleb128 0x16
	.byte	0x5
	.4byte	0x3e
	.byte	0x5
	.byte	0x35
	.4byte	0x19a
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0
	.uleb128 0x5
	.4byte	.LASF24
	.sleb128 -1
	.uleb128 0x5
	.4byte	.LASF25
	.sleb128 -2
	.uleb128 0x5
	.4byte	.LASF26
	.sleb128 -3
	.uleb128 0x5
	.4byte	.LASF27
	.sleb128 -4
	.uleb128 0x5
	.4byte	.LASF28
	.sleb128 -5
	.uleb128 0x5
	.4byte	.LASF29
	.sleb128 -6
	.uleb128 0x5
	.4byte	.LASF30
	.sleb128 -7
	.uleb128 0x5
	.4byte	.LASF31
	.sleb128 -8
	.uleb128 0x5
	.4byte	.LASF32
	.sleb128 -9
	.uleb128 0x5
	.4byte	.LASF33
	.sleb128 -10
	.uleb128 0x5
	.4byte	.LASF34
	.sleb128 -11
	.uleb128 0x5
	.4byte	.LASF35
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF36
	.sleb128 -13
	.uleb128 0x5
	.4byte	.LASF37
	.sleb128 -14
	.uleb128 0x5
	.4byte	.LASF38
	.sleb128 -15
	.uleb128 0x5
	.4byte	.LASF39
	.sleb128 -16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0x103
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x6
	.byte	0x23
	.byte	0x10
	.4byte	0x1b2
	.uleb128 0x8
	.4byte	0x1b7
	.uleb128 0x21
	.4byte	0x1c2
	.uleb128 0x3
	.4byte	0x84
	.byte	0
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x7
	.byte	0x3f
	.byte	0x11
	.4byte	0xbd
	.uleb128 0x9
	.4byte	0x1c2
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x7
	.byte	0x40
	.byte	0x12
	.4byte	0xeb
	.uleb128 0x9
	.4byte	0x1d3
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x7
	.byte	0x41
	.byte	0x12
	.4byte	0xeb
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x8
	.byte	0x46
	.byte	0x25
	.4byte	0x1fc
	.uleb128 0x8
	.4byte	0x201
	.uleb128 0x17
	.4byte	.LASF47
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x9
	.byte	0x30
	.byte	0x22
	.4byte	0x217
	.uleb128 0x9
	.4byte	0x206
	.uleb128 0x8
	.4byte	0x21c
	.uleb128 0x17
	.4byte	.LASF48
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0xa
	.byte	0x25
	.byte	0x17
	.4byte	0x206
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xb
	.byte	0x2c
	.byte	0x1b
	.4byte	0x221
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0xb
	.byte	0x2d
	.byte	0x1b
	.4byte	0x221
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xb
	.byte	0x2e
	.byte	0x17
	.4byte	0x206
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xb
	.byte	0x2f
	.byte	0x16
	.4byte	0x1f0
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0xc
	.byte	0x62
	.byte	0x10
	.4byte	0x1b2
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0xd
	.byte	0x43
	.byte	0xf
	.4byte	0x10f
	.uleb128 0x16
	.byte	0x7
	.4byte	0x45
	.byte	0xe
	.byte	0x34
	.4byte	0x2e2
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0xd
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0xa
	.byte	0x62
	.4byte	0x32a
	.uleb128 0xb
	.string	"err"
	.byte	0x66
	.byte	0x9
	.4byte	0x10f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x67
	.byte	0xe
	.4byte	0x269
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x68
	.byte	0xe
	.4byte	0x269
	.byte	0x4
	.uleb128 0xb
	.string	"max"
	.byte	0x69
	.byte	0xe
	.4byte	0x269
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x6a
	.byte	0x9
	.4byte	0x10f
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x2e2
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x18
	.byte	0x40
	.4byte	0x3ca
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x41
	.byte	0x9
	.4byte	0x10f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x42
	.byte	0x9
	.4byte	0x10f
	.byte	0x2
	.uleb128 0xb
	.string	"fw"
	.byte	0x43
	.byte	0x9
	.4byte	0x10f
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x44
	.byte	0x9
	.4byte	0x10f
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x45
	.byte	0x9
	.4byte	0x10f
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x46
	.byte	0x9
	.4byte	0x10f
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x47
	.byte	0x9
	.4byte	0x10f
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x48
	.byte	0x9
	.4byte	0x10f
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x49
	.byte	0x9
	.4byte	0x10f
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x4a
	.byte	0x9
	.4byte	0x10f
	.byte	0x12
	.uleb128 0xb
	.string	"err"
	.byte	0x4b
	.byte	0x9
	.4byte	0x10f
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x4c
	.byte	0x9
	.4byte	0x10f
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x1c
	.byte	0x50
	.4byte	0x47e
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x51
	.byte	0x9
	.4byte	0x10f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x52
	.byte	0x9
	.4byte	0x10f
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x53
	.byte	0x9
	.4byte	0x10f
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x54
	.byte	0x9
	.4byte	0x10f
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x55
	.byte	0x9
	.4byte	0x10f
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x56
	.byte	0x9
	.4byte	0x10f
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x57
	.byte	0x9
	.4byte	0x10f
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x58
	.byte	0x9
	.4byte	0x10f
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x59
	.byte	0x9
	.4byte	0x10f
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x5a
	.byte	0x9
	.4byte	0x10f
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x5b
	.byte	0x9
	.4byte	0x10f
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x5c
	.byte	0x9
	.4byte	0x10f
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x5d
	.byte	0x9
	.4byte	0x10f
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x5e
	.byte	0x9
	.4byte	0x10f
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0x6
	.byte	0x6e
	.4byte	0x4ae
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x6f
	.byte	0x9
	.4byte	0x10f
	.byte	0
	.uleb128 0xb
	.string	"max"
	.byte	0x70
	.byte	0x9
	.4byte	0x10f
	.byte	0x2
	.uleb128 0xb
	.string	"err"
	.byte	0x71
	.byte	0x9
	.4byte	0x10f
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x12
	.byte	0x75
	.4byte	0x4de
	.uleb128 0xb
	.string	"sem"
	.byte	0x76
	.byte	0x18
	.4byte	0x47e
	.byte	0
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x77
	.byte	0x18
	.4byte	0x47e
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x78
	.byte	0x18
	.4byte	0x47e
	.byte	0xc
	.byte	0
	.uleb128 0x22
	.4byte	.LASF99
	.2byte	0x108
	.byte	0xf
	.byte	0xeb
	.byte	0x8
	.4byte	0x568
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xee
	.byte	0x16
	.4byte	0x32f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xf2
	.byte	0x16
	.4byte	0x32f
	.byte	0x18
	.uleb128 0xb
	.string	"ip"
	.byte	0xfa
	.byte	0x16
	.4byte	0x32f
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0xfe
	.byte	0x16
	.4byte	0x32f
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF103
	.2byte	0x102
	.4byte	0x3ca
	.byte	0x60
	.uleb128 0x12
	.string	"udp"
	.2byte	0x106
	.byte	0x16
	.4byte	0x32f
	.byte	0x7c
	.uleb128 0x12
	.string	"tcp"
	.2byte	0x10a
	.byte	0x16
	.4byte	0x32f
	.byte	0x94
	.uleb128 0x12
	.string	"mem"
	.2byte	0x10e
	.byte	0x14
	.4byte	0x2e2
	.byte	0xac
	.uleb128 0x18
	.4byte	.LASF104
	.2byte	0x112
	.4byte	0x568
	.byte	0xb8
	.uleb128 0x12
	.string	"sys"
	.2byte	0x116
	.byte	0x14
	.4byte	0x4ae
	.byte	0xf4
	.byte	0
	.uleb128 0x23
	.4byte	0x32a
	.4byte	0x578
	.uleb128 0x24
	.4byte	0x76
	.byte	0xe
	.byte	0
	.uleb128 0x25
	.4byte	.LASF105
	.byte	0xf
	.2byte	0x133
	.byte	0x16
	.4byte	0x4de
	.uleb128 0x26
	.4byte	.LASF106
	.byte	0x1
	.byte	0x2a
	.byte	0x5
	.4byte	0x37
	.uleb128 0x5
	.byte	0x3
	.4byte	errno
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0x31
	.byte	0xe
	.4byte	0x10f
	.uleb128 0x5
	.byte	0x3
	.4byte	s_nextthread
	.uleb128 0x27
	.4byte	.LASF109
	.byte	0x10
	.byte	0xce
	.byte	0x5
	.4byte	0x37
	.4byte	0x5bf
	.uleb128 0x3
	.4byte	0xa1
	.uleb128 0x28
	.byte	0
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0x67
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0x66
	.uleb128 0xd
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x14a
	.byte	0xd
	.4byte	0x1c2
	.4byte	0x5fb
	.uleb128 0x3
	.4byte	0x1a6
	.uleb128 0x3
	.4byte	0x9c
	.uleb128 0x3
	.4byte	0xe6
	.uleb128 0x3
	.4byte	0x86
	.uleb128 0x3
	.4byte	0x1d3
	.uleb128 0x3
	.4byte	0x600
	.byte	0
	.uleb128 0x8
	.4byte	0x1f0
	.uleb128 0x9
	.4byte	0x5fb
	.uleb128 0xd
	.4byte	.LASF111
	.byte	0x9
	.2byte	0x586
	.byte	0xf
	.4byte	0x206
	.4byte	0x61c
	.uleb128 0x3
	.4byte	0xd5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x58a
	.byte	0xc
	.4byte	0x1c2
	.4byte	0x638
	.uleb128 0x3
	.4byte	0x206
	.uleb128 0x3
	.4byte	0x1e4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF113
	.byte	0x9
	.2byte	0x364
	.byte	0xc
	.4byte	0x1c2
	.4byte	0x659
	.uleb128 0x3
	.4byte	0x206
	.uleb128 0x3
	.4byte	0x86
	.uleb128 0x3
	.4byte	0x1e4
	.byte	0
	.uleb128 0x29
	.4byte	.LASF157
	.byte	0x8
	.2byte	0x54c
	.byte	0xc
	.4byte	0x1e4
	.uleb128 0xd
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x28a
	.byte	0xc
	.4byte	0x1c2
	.4byte	0x68c
	.uleb128 0x3
	.4byte	0x206
	.uleb128 0x3
	.4byte	0xab
	.uleb128 0x3
	.4byte	0x1e4
	.uleb128 0x3
	.4byte	0x1ce
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF158
	.byte	0x9
	.2byte	0x392
	.byte	0x6
	.4byte	0x69f
	.uleb128 0x3
	.4byte	0x206
	.byte	0
	.uleb128 0xd
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x373
	.byte	0xd
	.4byte	0x1d3
	.4byte	0x6b6
	.uleb128 0x3
	.4byte	0x212
	.byte	0
	.uleb128 0xd
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x5d8
	.byte	0x10
	.4byte	0x206
	.4byte	0x6d7
	.uleb128 0x3
	.4byte	0x1df
	.uleb128 0x3
	.4byte	0x1df
	.uleb128 0x3
	.4byte	0xd5
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF120
	.2byte	0x1d4
	.byte	0x7
	.4byte	0x11b
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF117
	.2byte	0x1c7
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x712
	.uleb128 0xf
	.string	"msg"
	.2byte	0x1c7
	.byte	0x1e
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF118
	.2byte	0x1be
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x737
	.uleb128 0xa
	.4byte	.LASF119
	.2byte	0x1be
	.byte	0x24
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF121
	.2byte	0x1b2
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF132
	.2byte	0x189
	.byte	0xe
	.4byte	0x251
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d1
	.uleb128 0xa
	.4byte	.LASF122
	.2byte	0x189
	.byte	0x29
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF123
	.2byte	0x189
	.byte	0x3e
	.4byte	0x25d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"arg"
	.2byte	0x189
	.byte	0x4d
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.4byte	.LASF124
	.2byte	0x189
	.byte	0x56
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	.LASF125
	.2byte	0x189
	.byte	0x65
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x11
	.4byte	.LASF127
	.2byte	0x18b
	.byte	0xe
	.4byte	0x1f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.4byte	.LASF128
	.2byte	0x18c
	.byte	0x5
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF129
	.2byte	0x17b
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f6
	.uleb128 0xa
	.4byte	.LASF97
	.2byte	0x17b
	.byte	0x24
	.4byte	0x7f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	0x239
	.uleb128 0xe
	.4byte	.LASF130
	.2byte	0x174
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x820
	.uleb128 0xa
	.4byte	.LASF97
	.2byte	0x174
	.byte	0x22
	.4byte	0x7f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF131
	.2byte	0x16a
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x845
	.uleb128 0xa
	.4byte	.LASF97
	.2byte	0x16a
	.byte	0x22
	.4byte	0x7f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF133
	.2byte	0x155
	.byte	0x7
	.4byte	0x19a
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x86f
	.uleb128 0xa
	.4byte	.LASF97
	.2byte	0x155
	.byte	0x22
	.4byte	0x7f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x14a
	.byte	0x6
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x143
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a9
	.uleb128 0xf
	.string	"sem"
	.2byte	0x143
	.byte	0x25
	.4byte	0x8a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	0x22d
	.uleb128 0x2d
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x13a
	.byte	0x5
	.4byte	0x37
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d9
	.uleb128 0xf
	.string	"sem"
	.2byte	0x13a
	.byte	0x1e
	.4byte	0x8a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF136
	.2byte	0x131
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8fe
	.uleb128 0xf
	.string	"sem"
	.2byte	0x131
	.byte	0x1e
	.4byte	0x8a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF137
	.2byte	0x12a
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x923
	.uleb128 0xf
	.string	"sem"
	.2byte	0x12a
	.byte	0x20
	.4byte	0x8a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF138
	.2byte	0x109
	.byte	0x7
	.4byte	0x11b
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x989
	.uleb128 0xf
	.string	"sem"
	.2byte	0x109
	.byte	0x24
	.4byte	0x8a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF139
	.2byte	0x109
	.byte	0x2f
	.4byte	0x11b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.4byte	.LASF140
	.2byte	0x10b
	.byte	0xc
	.4byte	0x1e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LASF141
	.2byte	0x10b
	.byte	0x17
	.4byte	0x1e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.4byte	.LASF142
	.2byte	0x10b
	.byte	0x20
	.4byte	0x1e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.4byte	.LASF143
	.byte	0xdf
	.4byte	0x19a
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9be
	.uleb128 0x14
	.string	"sem"
	.byte	0xdf
	.byte	0x1e
	.4byte	0x8a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF144
	.byte	0xdf
	.byte	0x28
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF145
	.byte	0x1
	.byte	0xd7
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e3
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0xd7
	.byte	0x27
	.4byte	0x9e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	0x245
	.uleb128 0x2f
	.4byte	.LASF146
	.byte	0x1
	.byte	0xcf
	.byte	0x5
	.4byte	0x37
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa11
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0xcf
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF147
	.byte	0xbc
	.4byte	0x11b
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa54
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0xbc
	.byte	0x2a
	.4byte	0x9e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"msg"
	.byte	0xbc
	.byte	0x37
	.4byte	0xa54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.4byte	.LASF148
	.byte	0xbe
	.byte	0x7
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	0x84
	.uleb128 0x13
	.4byte	.LASF149
	.byte	0x91
	.4byte	0x11b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad4
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0x91
	.byte	0x27
	.4byte	0x9e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"msg"
	.byte	0x91
	.byte	0x34
	.4byte	0xa54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF139
	.byte	0x91
	.byte	0x3f
	.4byte	0x11b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.4byte	.LASF148
	.byte	0x93
	.byte	0x7
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.4byte	.LASF140
	.byte	0x94
	.byte	0xc
	.4byte	0x1e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0x94
	.byte	0x17
	.4byte	0x1e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0x94
	.byte	0x20
	.4byte	0x1e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.4byte	.LASF150
	.byte	0x6c
	.4byte	0x19a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb17
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0x6c
	.byte	0x24
	.4byte	0x9e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"msg"
	.byte	0x6c
	.byte	0x30
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0x6e
	.byte	0x7
	.4byte	0x19a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF151
	.byte	0x64
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb48
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0x64
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF152
	.byte	0x64
	.byte	0x2c
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF153
	.byte	0x4e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb6b
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0x4e
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.4byte	.LASF154
	.byte	0x1
	.byte	0x36
	.byte	0x7
	.4byte	0x19a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0x36
	.byte	0x20
	.4byte	0x9e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF155
	.byte	0x36
	.byte	0x2a
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.sleb128 15
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x26
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
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
	.uleb128 0x13
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
	.sleb128 7
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x1a
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x30
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xd4
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF112:
	.string	"xQueueSemaphoreTake"
.LASF153:
	.string	"sys_mbox_free"
.LASF140:
	.string	"StartTime"
.LASF53:
	.string	"sys_thread_t"
.LASF59:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF141:
	.string	"EndTime"
.LASF47:
	.string	"tskTaskControlBlock"
.LASF38:
	.string	"ERR_CLSD"
.LASF113:
	.string	"xQueueReceive"
.LASF31:
	.string	"ERR_USE"
.LASF145:
	.string	"sys_mbox_set_invalid"
.LASF106:
	.string	"errno"
.LASF39:
	.string	"ERR_ARG"
.LASF91:
	.string	"rx_report"
.LASF10:
	.string	"unsigned int"
.LASF132:
	.string	"sys_thread_new"
.LASF40:
	.string	"err_t"
.LASF158:
	.string	"vQueueDelete"
.LASF21:
	.string	"u16_t"
.LASF129:
	.string	"sys_mutex_unlock"
.LASF133:
	.string	"sys_mutex_new"
.LASF75:
	.string	"stats_mem"
.LASF70:
	.string	"MEMP_PBUF_POOL"
.LASF105:
	.string	"lwip_stats"
.LASF37:
	.string	"ERR_RST"
.LASF131:
	.string	"sys_mutex_free"
.LASF32:
	.string	"ERR_ALREADY"
.LASF95:
	.string	"stats_syselem"
.LASF118:
	.string	"sys_arch_unprotect"
.LASF18:
	.string	"uint32_t"
.LASF14:
	.string	"int8_t"
.LASF66:
	.string	"MEMP_IGMP_GROUP"
.LASF64:
	.string	"MEMP_TCPIP_MSG_API"
.LASF85:
	.string	"opterr"
.LASF97:
	.string	"mutex"
.LASF48:
	.string	"QueueDefinition"
.LASF144:
	.string	"count"
.LASF74:
	.string	"illegal"
.LASF128:
	.string	"result"
.LASF101:
	.string	"etharp"
.LASF9:
	.string	"long long unsigned int"
.LASF103:
	.string	"igmp"
.LASF54:
	.string	"lwip_thread_fn"
.LASF29:
	.string	"ERR_VAL"
.LASF135:
	.string	"sys_sem_valid"
.LASF107:
	.string	"vTaskExitCritical"
.LASF137:
	.string	"sys_sem_signal"
.LASF65:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF73:
	.string	"used"
.LASF99:
	.string	"stats_"
.LASF146:
	.string	"sys_mbox_valid"
.LASF130:
	.string	"sys_mutex_lock"
.LASF50:
	.string	"sys_sem_t"
.LASF71:
	.string	"MEMP_MAX"
.LASF20:
	.string	"s8_t"
.LASF114:
	.string	"xQueueGenericSend"
.LASF63:
	.string	"MEMP_NETCONN"
.LASF134:
	.string	"sys_sem_set_invalid"
.LASF159:
	.string	"sys_init"
.LASF90:
	.string	"rx_general"
.LASF30:
	.string	"ERR_WOULDBLOCK"
.LASF26:
	.string	"ERR_TIMEOUT"
.LASF125:
	.string	"prio"
.LASF69:
	.string	"MEMP_PBUF"
.LASF12:
	.string	"char"
.LASF55:
	.string	"mem_size_t"
.LASF43:
	.string	"UBaseType_t"
.LASF76:
	.string	"stats_proto"
.LASF13:
	.string	"sys_prot_t"
.LASF152:
	.string	"data"
.LASF46:
	.string	"QueueHandle_t"
.LASF110:
	.string	"xTaskCreate"
.LASF16:
	.string	"uint8_t"
.LASF119:
	.string	"pval"
.LASF124:
	.string	"stacksize"
.LASF127:
	.string	"CreatedTask"
.LASF116:
	.string	"xQueueGenericCreate"
.LASF111:
	.string	"xQueueCreateMutex"
.LASF157:
	.string	"xTaskGetTickCount"
.LASF62:
	.string	"MEMP_NETBUF"
.LASF8:
	.string	"long long int"
.LASF149:
	.string	"sys_arch_mbox_fetch"
.LASF51:
	.string	"sys_mutex_t"
.LASF109:
	.string	"printf"
.LASF35:
	.string	"ERR_IF"
.LASF150:
	.string	"sys_mbox_trypost"
.LASF142:
	.string	"Elapsed"
.LASF58:
	.string	"MEMP_TCP_PCB"
.LASF104:
	.string	"memp"
.LASF19:
	.string	"u8_t"
.LASF42:
	.string	"BaseType_t"
.LASF41:
	.string	"TaskFunction_t"
.LASF147:
	.string	"sys_arch_mbox_tryfetch"
.LASF155:
	.string	"size"
.LASF80:
	.string	"chkerr"
.LASF45:
	.string	"TaskHandle_t"
.LASF61:
	.string	"MEMP_ALTCP_PCB"
.LASF44:
	.string	"TickType_t"
.LASF126:
	.string	"s_nextthread"
.LASF11:
	.string	"long double"
.LASF17:
	.string	"uint16_t"
.LASF117:
	.string	"sys_assert"
.LASF143:
	.string	"sys_sem_new"
.LASF139:
	.string	"timeout"
.LASF25:
	.string	"ERR_BUF"
.LASF22:
	.string	"u32_t"
.LASF4:
	.string	"short int"
.LASF102:
	.string	"icmp"
.LASF6:
	.string	"long int"
.LASF83:
	.string	"rterr"
.LASF72:
	.string	"avail"
.LASF49:
	.string	"SemaphoreHandle_t"
.LASF67:
	.string	"MEMP_SYS_TIMEOUT"
.LASF57:
	.string	"MEMP_UDP_PCB"
.LASF98:
	.string	"mbox"
.LASF138:
	.string	"sys_arch_sem_wait"
.LASF28:
	.string	"ERR_INPROGRESS"
.LASF115:
	.string	"uxQueueMessagesWaiting"
.LASF33:
	.string	"ERR_ISCONN"
.LASF86:
	.string	"cachehit"
.LASF122:
	.string	"name"
.LASF121:
	.string	"sys_arch_protect"
.LASF136:
	.string	"sys_sem_free"
.LASF56:
	.string	"MEMP_RAW_PCB"
.LASF81:
	.string	"lenerr"
.LASF52:
	.string	"sys_mbox_t"
.LASF7:
	.string	"long unsigned int"
.LASF15:
	.string	"int32_t"
.LASF123:
	.string	"thread"
.LASF84:
	.string	"proterr"
.LASF88:
	.string	"rx_v1"
.LASF151:
	.string	"sys_mbox_post"
.LASF96:
	.string	"stats_sys"
.LASF3:
	.string	"unsigned char"
.LASF82:
	.string	"memerr"
.LASF60:
	.string	"MEMP_TCP_SEG"
.LASF100:
	.string	"link"
.LASF92:
	.string	"tx_join"
.LASF77:
	.string	"xmit"
.LASF79:
	.string	"drop"
.LASF108:
	.string	"vTaskEnterCritical"
.LASF36:
	.string	"ERR_ABRT"
.LASF154:
	.string	"sys_mbox_new"
.LASF93:
	.string	"tx_leave"
.LASF23:
	.string	"ERR_OK"
.LASF78:
	.string	"recv"
.LASF2:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF87:
	.string	"stats_igmp"
.LASF34:
	.string	"ERR_CONN"
.LASF27:
	.string	"ERR_RTE"
.LASF68:
	.string	"MEMP_NETDB"
.LASF148:
	.string	"dummyptr"
.LASF94:
	.string	"tx_report"
.LASF156:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF24:
	.string	"ERR_MEM"
.LASF120:
	.string	"sys_now"
.LASF89:
	.string	"rx_group"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/FreeRTOS/sys_arch.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
