	.file	"bl602_pwm.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_pwm.c"
	.section	.bss.PWMIntCbfArra,"aw",@nobits
	.align	2
	.type	PWMIntCbfArra, @object
	.size	PWMIntCbfArra, 20
PWMIntCbfArra:
	.zero	20
	.section	.text.PWM_Channel_Init,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Init
	.type	PWM_Channel_Init, @function
PWM_Channel_Init:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_pwm.c"
	.loc 1 155 1
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
	.loc 1 157 14
	li	a5,159744
	addi	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 159 57
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 159 62
	slli	a5,a5,5
	mv	a4,a5
	.loc 1 159 14
	li	a5,1073782784
	addi	a5,a5,1056
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 168 42
	lw	a5,-24(s0)
	addi	a5,a5,16
	.loc 1 168 12
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 169 33
	lw	a5,-24(s0)
	addi	a5,a5,16
	.loc 1 169 8
	mv	a4,a5
	.loc 1 169 55
	lw	a5,-28(s0)
	ori	a5,a5,64
	.loc 1 169 42
	sw	a5,0(a4)
	.loc 1 170 10
	j	.L2
.L4:
	.loc 1 171 19
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 172 11
	lw	a5,-20(s0)
	bne	a5,zero,.L2
	.loc 1 173 20
	li	a5,2
	j	.L3
.L2:
	.loc 1 170 44
	lw	a5,-24(s0)
	addi	a5,a5,16
	.loc 1 170 17
	lw	a5,0(a5)
	.loc 1 170 55
	andi	a5,a5,128
	.loc 1 170 11
	beq	a5,zero,.L4
	.loc 1 176 42
	lw	a5,-24(s0)
	addi	a5,a5,16
	.loc 1 176 12
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 177 25
	lw	a5,-28(s0)
	andi	a5,a5,-4
	.loc 1 177 72
	lw	a4,-36(s0)
	lbu	a4,1(a4)
	.loc 1 177 12
	or	a5,a5,a4
	sw	a5,-28(s0)
	.loc 1 178 25
	lw	a5,-28(s0)
	andi	a4,a5,-5
	.loc 1 178 72
	lw	a5,-36(s0)
	lbu	a5,3(a5)
	.loc 1 178 78
	slli	a5,a5,2
	.loc 1 178 12
	or	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 179 25
	lw	a5,-28(s0)
	andi	a4,a5,-9
	.loc 1 179 72
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	.loc 1 179 83
	slli	a5,a5,3
	.loc 1 179 12
	or	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 180 33
	lw	a5,-24(s0)
	addi	a5,a5,16
	.loc 1 180 8
	mv	a4,a5
	.loc 1 180 42
	lw	a5,-28(s0)
	sw	a5,0(a4)
	.loc 1 183 48
	lw	a5,-36(s0)
	lhu	a4,4(a5)
	.loc 1 183 8
	lw	a5,-24(s0)
	.loc 1 183 41
	sw	a4,0(a5)
	.loc 1 186 48
	lw	a5,-36(s0)
	lhu	a4,8(a5)
	.loc 1 186 33
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 186 41
	sw	a4,0(a5)
	.loc 1 187 48
	lw	a5,-36(s0)
	lhu	a4,10(a5)
	.loc 1 187 33
	lw	a5,-24(s0)
	addi	a5,a5,8
	.loc 1 187 41
	sw	a4,0(a5)
	.loc 1 188 48
	lw	a5,-36(s0)
	lhu	a4,6(a5)
	.loc 1 188 33
	lw	a5,-24(s0)
	addi	a5,a5,12
	.loc 1 188 41
	sw	a4,0(a5)
	.loc 1 191 42
	lw	a5,-24(s0)
	addi	a5,a5,20
	.loc 1 191 12
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 192 55
	lw	a4,-28(s0)
	li	a5,-65536
	and	a5,a4,a5
	.loc 1 192 103
	lw	a4,-36(s0)
	lhu	a4,12(a4)
	.loc 1 192 117
	mv	a3,a4
	.loc 1 192 33
	lw	a4,-24(s0)
	addi	a4,a4,20
	.loc 1 192 84
	or	a5,a5,a3
	.loc 1 192 42
	sw	a5,0(a4)
	.loc 1 193 22
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 1 193 50
	lw	a5,-36(s0)
	lhu	a5,12(a5)
	.loc 1 193 5
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	PWM_IntMask
	.loc 1 195 12
	li	a5,0
.L3:
	.loc 1 196 1
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
	.size	PWM_Channel_Init, .-PWM_Channel_Init
	.section	.text.PWM_Channel_Update,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Update
	.type	PWM_Channel_Update, @function
PWM_Channel_Update:
.LFB9:
	.loc 1 210 1
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
	mv	a4,a3
	sb	a5,-33(s0)
	mv	a5,a1
	sh	a5,-36(s0)
	mv	a5,a2
	sh	a5,-38(s0)
	mv	a5,a4
	sh	a5,-40(s0)
	.loc 1 212 55
	lbu	a5,-33(s0)
	slli	a5,a5,5
	mv	a4,a5
	.loc 1 212 14
	li	a5,1073782784
	addi	a5,a5,1056
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 218 33
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 218 8
	mv	a4,a5
	.loc 1 218 41
	lhu	a5,-38(s0)
	sw	a5,0(a4)
	.loc 1 219 33
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 1 219 8
	mv	a4,a5
	.loc 1 219 41
	lhu	a5,-40(s0)
	sw	a5,0(a4)
	.loc 1 220 33
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 220 8
	mv	a4,a5
	.loc 1 220 41
	lhu	a5,-36(s0)
	sw	a5,0(a4)
	.loc 1 221 1
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
	.size	PWM_Channel_Update, .-PWM_Channel_Update
	.section	.text.PWM_Channel_Set_Div,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Set_Div
	.type	PWM_Channel_Set_Div, @function
PWM_Channel_Set_Div:
.LFB10:
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
	mv	a5,a0
	mv	a4,a1
	sb	a5,-33(s0)
	mv	a5,a4
	sh	a5,-36(s0)
	.loc 1 235 55
	lbu	a5,-33(s0)
	slli	a5,a5,5
	mv	a4,a5
	.loc 1 235 14
	li	a5,1073782784
	addi	a5,a5,1056
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 240 8
	lw	a5,-20(s0)
	.loc 1 240 41
	lhu	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 241 1
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
	.size	PWM_Channel_Set_Div, .-PWM_Channel_Set_Div
	.section	.text.PWM_Channel_Set_Threshold1,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Set_Threshold1
	.type	PWM_Channel_Set_Threshold1, @function
PWM_Channel_Set_Threshold1:
.LFB11:
	.loc 1 253 1
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
	sb	a5,-33(s0)
	mv	a5,a4
	sh	a5,-36(s0)
	.loc 1 255 55
	lbu	a5,-33(s0)
	slli	a5,a5,5
	mv	a4,a5
	.loc 1 255 14
	li	a5,1073782784
	addi	a5,a5,1056
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 261 33
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 261 8
	mv	a4,a5
	.loc 1 261 41
	lhu	a5,-36(s0)
	sw	a5,0(a4)
	.loc 1 262 1
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
	.size	PWM_Channel_Set_Threshold1, .-PWM_Channel_Set_Threshold1
	.section	.text.PWM_Channel_Set_Threshold2,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Set_Threshold2
	.type	PWM_Channel_Set_Threshold2, @function
PWM_Channel_Set_Threshold2:
.LFB12:
	.loc 1 274 1
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
	sb	a5,-33(s0)
	mv	a5,a4
	sh	a5,-36(s0)
	.loc 1 276 55
	lbu	a5,-33(s0)
	slli	a5,a5,5
	mv	a4,a5
	.loc 1 276 14
	li	a5,1073782784
	addi	a5,a5,1056
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 282 33
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 1 282 8
	mv	a4,a5
	.loc 1 282 41
	lhu	a5,-36(s0)
	sw	a5,0(a4)
	.loc 1 283 1
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
	.size	PWM_Channel_Set_Threshold2, .-PWM_Channel_Set_Threshold2
	.section	.text.PWM_Channel_Set_Period,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Set_Period
	.type	PWM_Channel_Set_Period, @function
PWM_Channel_Set_Period:
.LFB13:
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
	mv	a5,a0
	mv	a4,a1
	sb	a5,-33(s0)
	mv	a5,a4
	sh	a5,-36(s0)
	.loc 1 297 55
	lbu	a5,-33(s0)
	slli	a5,a5,5
	mv	a4,a5
	.loc 1 297 14
	li	a5,1073782784
	addi	a5,a5,1056
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 303 33
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 303 8
	mv	a4,a5
	.loc 1 303 41
	lhu	a5,-36(s0)
	sw	a5,0(a4)
	.loc 1 304 1
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
.LFE13:
	.size	PWM_Channel_Set_Period, .-PWM_Channel_Set_Period
	.section	.text.PWM_Channel_Get,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Get
	.type	PWM_Channel_Get, @function
PWM_Channel_Get:
.LFB14:
	.loc 1 318 1
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
	sw	a3,-48(s0)
	sb	a5,-33(s0)
	.loc 1 321 55
	lbu	a5,-33(s0)
	slli	a5,a5,5
	mv	a4,a5
	.loc 1 321 14
	li	a5,1073782784
	addi	a5,a5,1056
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 327 42
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 327 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 328 17
	lw	a5,-24(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-44(s0)
	sh	a4,0(a5)
	.loc 1 329 42
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 1 329 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 330 17
	lw	a5,-24(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-48(s0)
	sh	a4,0(a5)
	.loc 1 331 42
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 331 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 332 13
	lw	a5,-24(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-40(s0)
	sh	a4,0(a5)
	.loc 1 333 1
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
.LFE14:
	.size	PWM_Channel_Get, .-PWM_Channel_Get
	.section	.text.PWM_Channel_Enable,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Enable
	.type	PWM_Channel_Enable, @function
PWM_Channel_Enable:
.LFB15:
	.loc 1 344 1
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
	.loc 1 347 55
	lbu	a5,-33(s0)
	slli	a5,a5,5
	mv	a4,a5
	.loc 1 347 14
	li	a5,1073782784
	addi	a5,a5,1056
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 353 42
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 353 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 354 33
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 354 8
	mv	a4,a5
	.loc 1 354 55
	lw	a5,-24(s0)
	andi	a5,a5,-65
	.loc 1 354 42
	sw	a5,0(a4)
	.loc 1 355 1
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
	.size	PWM_Channel_Enable, .-PWM_Channel_Enable
	.section	.text.PWM_Channel_Disable,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Disable
	.type	PWM_Channel_Disable, @function
PWM_Channel_Disable:
.LFB16:
	.loc 1 366 1
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
	.loc 1 369 55
	lbu	a5,-33(s0)
	slli	a5,a5,5
	mv	a4,a5
	.loc 1 369 14
	li	a5,1073782784
	addi	a5,a5,1056
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 375 42
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 375 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 376 33
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 376 8
	mv	a4,a5
	.loc 1 376 55
	lw	a5,-24(s0)
	ori	a5,a5,64
	.loc 1 376 42
	sw	a5,0(a4)
	.loc 1 377 5
	lbu	a5,-33(s0)
	li	a2,1
	li	a1,0
	mv	a0,a5
	call	PWM_IntMask
	.loc 1 378 1
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
	.size	PWM_Channel_Disable, .-PWM_Channel_Disable
	.section	.text.PWM_Channel_Fource_Output,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Fource_Output
	.type	PWM_Channel_Fource_Output, @function
PWM_Channel_Fource_Output:
.LFB17:
	.loc 1 389 1
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
	.loc 1 392 55
	lbu	a5,-33(s0)
	slli	a5,a5,5
	mv	a4,a5
	.loc 1 392 14
	li	a5,1073782784
	addi	a5,a5,1056
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 397 42
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 397 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 398 33
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 398 8
	mv	a4,a5
	.loc 1 398 55
	lw	a5,-24(s0)
	ori	a5,a5,32
	.loc 1 398 42
	sw	a5,0(a4)
	.loc 1 399 1
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
.LFE17:
	.size	PWM_Channel_Fource_Output, .-PWM_Channel_Fource_Output
	.section	.text.PWM_IntMask,"ax",@progbits
	.align	1
	.globl	PWM_IntMask
	.type	PWM_IntMask, @function
PWM_IntMask:
.LFB18:
	.loc 1 412 1
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
	mv	a3,a1
	mv	a4,a2
	sb	a5,-33(s0)
	mv	a5,a3
	sb	a5,-34(s0)
	mv	a5,a4
	sb	a5,-35(s0)
	.loc 1 415 55
	lbu	a5,-33(s0)
	slli	a5,a5,5
	mv	a4,a5
	.loc 1 415 14
	li	a5,1073782784
	addi	a5,a5,1056
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 421 42
	lw	a5,-20(s0)
	addi	a5,a5,20
	.loc 1 421 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 423 5
	lbu	a5,-34(s0)
	beq	a5,zero,.L15
	li	a4,1
	beq	a5,a4,.L16
	.loc 1 446 13
	j	.L20
.L15:
	.loc 1 425 15
	lbu	a5,-35(s0)
	bne	a5,zero,.L18
	.loc 1 427 45
	lw	a5,-20(s0)
	addi	a5,a5,20
	.loc 1 427 20
	mv	a3,a5
	.loc 1 427 67
	lw	a4,-24(s0)
	li	a5,65536
	or	a5,a4,a5
	.loc 1 427 54
	sw	a5,0(a3)
	.loc 1 433 13
	j	.L20
.L18:
	.loc 1 431 45
	lw	a5,-20(s0)
	addi	a5,a5,20
	.loc 1 431 20
	mv	a3,a5
	.loc 1 431 67
	lw	a4,-24(s0)
	li	a5,-65536
	addi	a5,a5,-1
	and	a5,a4,a5
	.loc 1 431 54
	sw	a5,0(a3)
	.loc 1 433 13
	j	.L20
.L16:
	.loc 1 435 15
	lbu	a5,-35(s0)
	bne	a5,zero,.L21
	.loc 1 437 45
	lw	a5,-20(s0)
	addi	a5,a5,20
	.loc 1 437 20
	mv	a3,a5
	.loc 1 437 67
	lw	a4,-24(s0)
	li	a5,65536
	or	a5,a4,a5
	.loc 1 437 54
	sw	a5,0(a3)
	.loc 1 443 13
	j	.L23
.L21:
	.loc 1 441 45
	lw	a5,-20(s0)
	addi	a5,a5,20
	.loc 1 441 20
	mv	a3,a5
	.loc 1 441 67
	lw	a4,-24(s0)
	li	a5,-65536
	addi	a5,a5,-1
	and	a5,a4,a5
	.loc 1 441 54
	sw	a5,0(a3)
.L23:
	.loc 1 443 13
	nop
.L20:
	.loc 1 448 1
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
	.size	PWM_IntMask, .-PWM_IntMask
	.section	.text.PWM_Int_Callback_Install,"ax",@progbits
	.align	1
	.globl	PWM_Int_Callback_Install
	.type	PWM_Int_Callback_Install, @function
PWM_Int_Callback_Install:
.LFB19:
	.loc 1 460 1
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
	.loc 1 461 28
	lui	a5,%hi(PWMIntCbfArra)
	addi	a4,a5,%lo(PWMIntCbfArra)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 462 1
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
	.size	PWM_Int_Callback_Install, .-PWM_Int_Callback_Install
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_pwm.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5f1
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x66
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x12
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xa4
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x3
	.byte	0x33
	.byte	0x1
	.4byte	0xe8
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x3
	.byte	0x36
	.byte	0x2
	.4byte	0xcf
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x3
	.byte	0x7c
	.byte	0xf
	.4byte	0x9c
	.uleb128 0xd
	.4byte	0xf4
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x4
	.byte	0x39
	.byte	0xe
	.4byte	0x136
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x4
	.byte	0x40
	.byte	0x2
	.4byte	0x105
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x4
	.byte	0x45
	.byte	0xe
	.4byte	0x161
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x4
	.byte	0x49
	.byte	0x2
	.4byte	0x142
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x4
	.byte	0x4e
	.byte	0xe
	.4byte	0x186
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x4
	.byte	0x51
	.byte	0x2
	.4byte	0x16d
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x4
	.byte	0x56
	.byte	0xe
	.4byte	0x1ab
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x4
	.byte	0x59
	.byte	0x2
	.4byte	0x192
	.uleb128 0x6
	.4byte	0x2b
	.byte	0x4
	.byte	0x5e
	.byte	0xe
	.4byte	0x1d0
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x4
	.byte	0x61
	.byte	0x2
	.4byte	0x1b7
	.uleb128 0x13
	.byte	0xe
	.byte	0x4
	.byte	0x66
	.byte	0x9
	.4byte	0x251
	.uleb128 0xe
	.string	"ch"
	.byte	0x67
	.byte	0x14
	.4byte	0x136
	.byte	0
	.uleb128 0xe
	.string	"clk"
	.byte	0x68
	.byte	0x12
	.4byte	0x161
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x69
	.byte	0x18
	.4byte	0x186
	.byte	0x2
	.uleb128 0xe
	.string	"pol"
	.byte	0x6a
	.byte	0x17
	.4byte	0x1ab
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x6b
	.byte	0xe
	.4byte	0x5a
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x6c
	.byte	0xe
	.4byte	0x5a
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x6d
	.byte	0xe
	.4byte	0x5a
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x6e
	.byte	0xe
	.4byte	0x5a
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x6f
	.byte	0xe
	.4byte	0x5a
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x4
	.byte	0x70
	.byte	0x2
	.4byte	0x1dc
	.uleb128 0x14
	.4byte	0x100
	.4byte	0x26d
	.uleb128 0x15
	.4byte	0x8e
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x45
	.byte	0x1b
	.4byte	0x25d
	.uleb128 0x5
	.byte	0x3
	.4byte	PWMIntCbfArra
	.uleb128 0x8
	.4byte	.LASF53
	.2byte	0x1cb
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b2
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x1cb
	.byte	0x28
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF52
	.2byte	0x1cb
	.byte	0x42
	.4byte	0x100
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF54
	.2byte	0x19b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x310
	.uleb128 0x9
	.string	"ch"
	.2byte	0x19b
	.byte	0x1a
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x19b
	.byte	0x2a
	.4byte	0x1d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x5
	.4byte	.LASF55
	.2byte	0x19b
	.byte	0x40
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x3
	.4byte	.LASF57
	.2byte	0x19d
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF58
	.2byte	0x19f
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF59
	.2byte	0x184
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x350
	.uleb128 0x9
	.string	"ch"
	.2byte	0x184
	.byte	0x28
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF57
	.2byte	0x186
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF58
	.2byte	0x188
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x16d
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x392
	.uleb128 0x9
	.string	"ch"
	.2byte	0x16d
	.byte	0x22
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF57
	.2byte	0x16f
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF58
	.2byte	0x171
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF61
	.2byte	0x157
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d2
	.uleb128 0x9
	.string	"ch"
	.2byte	0x157
	.byte	0x21
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x3
	.4byte	.LASF57
	.2byte	0x159
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF58
	.2byte	0x15b
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF62
	.2byte	0x13d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43f
	.uleb128 0x9
	.string	"ch"
	.2byte	0x13d
	.byte	0x1e
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x5
	.4byte	.LASF46
	.2byte	0x13d
	.byte	0x2c
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF47
	.2byte	0x13d
	.byte	0x3e
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF48
	.2byte	0x13d
	.byte	0x54
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF57
	.2byte	0x13f
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF58
	.2byte	0x141
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	0x5a
	.uleb128 0x8
	.4byte	.LASF63
	.2byte	0x126
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x485
	.uleb128 0x9
	.string	"ch"
	.2byte	0x126
	.byte	0x25
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x5
	.4byte	.LASF46
	.2byte	0x126
	.byte	0x32
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF58
	.2byte	0x129
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF64
	.2byte	0x111
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c6
	.uleb128 0x9
	.string	"ch"
	.2byte	0x111
	.byte	0x29
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x5
	.4byte	.LASF48
	.2byte	0x111
	.byte	0x36
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF58
	.2byte	0x114
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0xfc
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x504
	.uleb128 0xc
	.string	"ch"
	.byte	0xfc
	.byte	0x29
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0xfc
	.byte	0x36
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0xff
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0xe8
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x542
	.uleb128 0xc
	.string	"ch"
	.byte	0xe8
	.byte	0x22
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xc
	.string	"div"
	.byte	0xe8
	.byte	0x2f
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0xeb
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0xd1
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59c
	.uleb128 0xc
	.string	"ch"
	.byte	0xd1
	.byte	0x21
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0xd1
	.byte	0x2e
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0xd1
	.byte	0x3f
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0xd1
	.byte	0x53
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0xd4
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF71
	.byte	0x1
	.byte	0x9a
	.byte	0xd
	.4byte	0xc3
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ef
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x9a
	.byte	0x2f
	.4byte	0x5ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x9c
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x9d
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x9f
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	0x251
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x7
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF60:
	.string	"PWM_Channel_Disable"
.LASF66:
	.string	"PWM_Channel_Set_Div"
.LASF61:
	.string	"PWM_Channel_Enable"
.LASF62:
	.string	"PWM_Channel_Get"
.LASF4:
	.string	"short int"
.LASF56:
	.string	"PWMIntCbfArra"
.LASF40:
	.string	"PWM_Polarity_Type"
.LASF49:
	.string	"intPulseCnt"
.LASF6:
	.string	"long long int"
.LASF54:
	.string	"PWM_IntMask"
.LASF67:
	.string	"PWM_Channel_Update"
.LASF29:
	.string	"PWM_CH_MAX"
.LASF7:
	.string	"uint8_t"
.LASF65:
	.string	"PWM_Channel_Set_Threshold1"
.LASF45:
	.string	"clkDiv"
.LASF55:
	.string	"intMask"
.LASF69:
	.string	"timeoutCnt"
.LASF30:
	.string	"PWM_CH_ID_Type"
.LASF16:
	.string	"SUCCESS"
.LASF15:
	.string	"char"
.LASF18:
	.string	"TIMEOUT"
.LASF58:
	.string	"PWMx"
.LASF47:
	.string	"threshold1"
.LASF48:
	.string	"threshold2"
.LASF46:
	.string	"period"
.LASF17:
	.string	"ERROR"
.LASF14:
	.string	"long double"
.LASF51:
	.string	"intType"
.LASF20:
	.string	"UNMASK"
.LASF2:
	.string	"unsigned char"
.LASF59:
	.string	"PWM_Channel_Fource_Output"
.LASF34:
	.string	"PWM_Clk_Type"
.LASF22:
	.string	"BL_Mask_Type"
.LASF3:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF13:
	.string	"unsigned int"
.LASF21:
	.string	"MASK"
.LASF8:
	.string	"uint16_t"
.LASF50:
	.string	"PWM_CH_CFG_Type"
.LASF68:
	.string	"chCfg"
.LASF23:
	.string	"intCallback_Type"
.LASF24:
	.string	"PWM_CH0"
.LASF25:
	.string	"PWM_CH1"
.LASF26:
	.string	"PWM_CH2"
.LASF27:
	.string	"PWM_CH3"
.LASF28:
	.string	"PWM_CH4"
.LASF39:
	.string	"PWM_POL_INVERT"
.LASF37:
	.string	"PWM_Stop_Mode_Type"
.LASF57:
	.string	"tmpVal"
.LASF53:
	.string	"PWM_Int_Callback_Install"
.LASF71:
	.string	"PWM_Channel_Init"
.LASF31:
	.string	"PWM_CLK_XCLK"
.LASF19:
	.string	"BL_Err_Type"
.LASF9:
	.string	"short unsigned int"
.LASF70:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF43:
	.string	"PWM_INT_Type"
.LASF35:
	.string	"PWM_STOP_ABRUPT"
.LASF52:
	.string	"cbFun"
.LASF11:
	.string	"long unsigned int"
.LASF63:
	.string	"PWM_Channel_Set_Period"
.LASF33:
	.string	"PWM_CLK_32K"
.LASF64:
	.string	"PWM_Channel_Set_Threshold2"
.LASF44:
	.string	"stopMode"
.LASF38:
	.string	"PWM_POL_NORMAL"
.LASF5:
	.string	"long int"
.LASF36:
	.string	"PWM_STOP_GRACEFUL"
.LASF41:
	.string	"PWM_INT_PULSE_CNT"
.LASF32:
	.string	"PWM_CLK_BCLK"
.LASF42:
	.string	"PWM_INT_ALL"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_pwm.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
