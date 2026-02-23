	.file	"ring_buffer.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/ring_buffer/ring_buffer.c"
	.section	.text.Ring_Buffer_Init,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Init
	.type	Ring_Buffer_Init, @function
Ring_Buffer_Init:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/ring_buffer/ring_buffer.c"
	.loc 1 100 1
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
	mv	a5,a2
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sh	a5,-26(s0)
	.loc 1 102 21
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 105 24
	lw	a5,-20(s0)
	sb	zero,4(a5)
	.loc 1 106 23
	lw	a5,-20(s0)
	sh	zero,6(a5)
	.loc 1 107 25
	lw	a5,-20(s0)
	sb	zero,8(a5)
	.loc 1 108 24
	lw	a5,-20(s0)
	sh	zero,10(a5)
	.loc 1 111 18
	lw	a5,-20(s0)
	lhu	a4,-26(s0)
	sh	a4,12(a5)
	.loc 1 114 18
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	sw	a4,16(a5)
	.loc 1 115 20
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,20(a5)
	.loc 1 117 12
	li	a5,0
	.loc 1 118 1
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
	.size	Ring_Buffer_Init, .-Ring_Buffer_Init
	.section	.text.Ring_Buffer_Reset,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Reset
	.type	Ring_Buffer_Reset, @function
Ring_Buffer_Reset:
.LFB9:
	.loc 1 130 1
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
	.loc 1 132 24
	lw	a5,-20(s0)
	sb	zero,4(a5)
	.loc 1 133 23
	lw	a5,-20(s0)
	sh	zero,6(a5)
	.loc 1 134 25
	lw	a5,-20(s0)
	sb	zero,8(a5)
	.loc 1 135 24
	lw	a5,-20(s0)
	sh	zero,10(a5)
	.loc 1 137 12
	li	a5,0
	.loc 1 138 1
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
	.size	Ring_Buffer_Reset, .-Ring_Buffer_Reset
	.section	.text.Ring_Buffer_Write_Callback,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Write_Callback
	.type	Ring_Buffer_Write_Callback, @function
Ring_Buffer_Write_Callback:
.LFB10:
	.loc 1 153 1
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
	mv	a5,a1
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sh	a5,-38(s0)
	.loc 1 154 29
	lw	a0,-36(s0)
	call	Ring_Buffer_Get_Empty_Length
	mv	a5,a0
	sh	a5,-18(s0)
	.loc 1 156 7
	lw	a5,-44(s0)
	bne	a5,zero,.L6
	.loc 1 157 16
	li	a5,0
	j	.L7
.L6:
	.loc 1 160 14
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 160 7
	beq	a5,zero,.L8
	.loc 1 161 15
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 161 9
	jalr	a5
.LVL0:
.L8:
	.loc 1 165 7
	lhu	a5,-18(s0)
	bne	a5,zero,.L9
	.loc 1 166 18
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 166 11
	beq	a5,zero,.L10
	.loc 1 167 19
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 167 13
	jalr	a5
.LVL1:
.L10:
	.loc 1 169 16
	li	a5,0
	j	.L7
.L9:
	.loc 1 173 7
	lhu	a4,-38(s0)
	lhu	a5,-18(s0)
	bleu	a4,a5,.L11
	.loc 1 174 16
	lhu	a5,-18(s0)
	sh	a5,-38(s0)
.L11:
	.loc 1 178 26
	lw	a5,-36(s0)
	lhu	a4,12(a5)
	.loc 1 178 41
	lw	a5,-36(s0)
	lhu	a5,10(a5)
	.loc 1 178 18
	sub	a5,a4,a5
	sh	a5,-18(s0)
	.loc 1 180 7
	lhu	a4,-18(s0)
	lhu	a5,-38(s0)
	bleu	a4,a5,.L12
	.loc 1 182 34
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 182 50
	lw	a4,-36(s0)
	lhu	a4,10(a4)
	.loc 1 182 9
	add	a4,a5,a4
	lhu	a3,-38(s0)
	lw	a5,-44(s0)
	mv	a2,a3
	mv	a1,a4
	lw	a0,-48(s0)
	jalr	a5
.LVL2:
	.loc 1 183 15
	lw	a5,-36(s0)
	lhu	a5,10(a5)
	.loc 1 183 28
	lhu	a4,-38(s0)
	add	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-36(s0)
	sh	a4,10(a5)
	j	.L13
.L12:
	.loc 1 186 34
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 186 50
	lw	a4,-36(s0)
	lhu	a4,10(a4)
	.loc 1 186 9
	add	a4,a5,a4
	lhu	a3,-18(s0)
	lw	a5,-44(s0)
	mv	a2,a3
	mv	a1,a4
	lw	a0,-48(s0)
	jalr	a5
.LVL3:
	.loc 1 187 9
	lw	a5,-36(s0)
	lw	a4,0(a5)
	lhu	a5,-38(s0)
	mv	a3,a5
	lhu	a5,-18(s0)
	sub	a5,a3,a5
	slli	a3,a5,16
	srli	a3,a3,16
	lw	a5,-44(s0)
	mv	a2,a3
	mv	a1,a4
	lw	a0,-48(s0)
	jalr	a5
.LVL4:
	.loc 1 188 36
	lhu	a5,-38(s0)
	mv	a4,a5
	lhu	a5,-18(s0)
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 188 28
	lw	a5,-36(s0)
	sh	a4,10(a5)
	.loc 1 189 38
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	.loc 1 189 29
	not	a5,a5
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	sb	a4,8(a5)
.L13:
	.loc 1 192 14
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 192 7
	beq	a5,zero,.L14
	.loc 1 193 15
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 193 9
	jalr	a5
.LVL5:
.L14:
	.loc 1 195 12
	lhu	a5,-38(s0)
.L7:
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
.LFE10:
	.size	Ring_Buffer_Write_Callback, .-Ring_Buffer_Write_Callback
	.section	.text.Ring_Buffer_Write_Copy,"ax",@progbits
	.align	1
	.type	Ring_Buffer_Write_Copy, @function
Ring_Buffer_Write_Copy:
.LFB11:
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
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	mv	a5,a2
	sh	a5,-42(s0)
	.loc 1 211 15
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 213 5
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lhu	a4,-42(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-40(s0)
	call	BL602_MemCpy_Fast
	.loc 1 214 5
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 214 10
	lhu	a5,-42(s0)
	add	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 215 1
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
	.size	Ring_Buffer_Write_Copy, .-Ring_Buffer_Write_Copy
	.section	.text.Ring_Buffer_Write,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Write
	.type	Ring_Buffer_Write, @function
Ring_Buffer_Write:
.LFB12:
	.loc 1 229 1
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
	mv	a5,a2
	sh	a5,-26(s0)
	.loc 1 230 12
	addi	a5,s0,-24
	lhu	a4,-26(s0)
	mv	a3,a5
	lui	a5,%hi(Ring_Buffer_Write_Copy)
	addi	a2,a5,%lo(Ring_Buffer_Write_Copy)
	mv	a1,a4
	lw	a0,-20(s0)
	call	Ring_Buffer_Write_Callback
	mv	a5,a0
	.loc 1 231 1
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
.LFE12:
	.size	Ring_Buffer_Write, .-Ring_Buffer_Write
	.section	.text.Ring_Buffer_Write_Byte,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Write_Byte
	.type	Ring_Buffer_Write_Byte, @function
Ring_Buffer_Write_Byte:
.LFB13:
	.loc 1 244 1
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
	.loc 1 245 14
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 245 7
	beq	a5,zero,.L19
	.loc 1 246 15
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 246 9
	jalr	a5
.LVL6:
.L19:
	.loc 1 250 9
	lw	a0,-20(s0)
	call	Ring_Buffer_Get_Empty_Length
	mv	a5,a0
	.loc 1 250 7 discriminator 1
	bne	a5,zero,.L20
	.loc 1 251 18
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 251 11
	beq	a5,zero,.L21
	.loc 1 252 19
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 252 13
	jalr	a5
.LVL7:
.L21:
	.loc 1 254 16
	li	a5,0
	j	.L22
.L20:
	.loc 1 257 11
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 257 27
	lw	a4,-20(s0)
	lhu	a4,10(a4)
	.loc 1 257 20
	add	a5,a5,a4
	.loc 1 257 41
	lbu	a4,-21(s0)
	sb	a4,0(a5)
	.loc 1 260 14
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 260 37
	lw	a5,-20(s0)
	lhu	a5,12(a5)
	.loc 1 260 43
	addi	a5,a5,-1
	.loc 1 260 7
	beq	a4,a5,.L23
	.loc 1 261 15
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 261 27
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-20(s0)
	sh	a4,10(a5)
	j	.L24
.L23:
	.loc 1 263 28
	lw	a5,-20(s0)
	sh	zero,10(a5)
	.loc 1 264 38
	lw	a5,-20(s0)
	lbu	a5,8(a5)
	.loc 1 264 29
	not	a5,a5
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,8(a5)
.L24:
	.loc 1 267 14
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 267 7
	beq	a5,zero,.L25
	.loc 1 268 15
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 268 9
	jalr	a5
.LVL8:
.L25:
	.loc 1 270 12
	li	a5,1
.L22:
	.loc 1 271 1
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
	.size	Ring_Buffer_Write_Byte, .-Ring_Buffer_Write_Byte
	.section	.text.Ring_Buffer_Write_Force,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Write_Force
	.type	Ring_Buffer_Write_Force, @function
Ring_Buffer_Write_Force:
.LFB14:
	.loc 1 286 1
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
	sh	a5,-42(s0)
	.loc 1 287 29
	lw	a0,-36(s0)
	call	Ring_Buffer_Get_Empty_Length
	mv	a5,a0
	sh	a5,-18(s0)
	.loc 1 288 36
	lw	a5,-36(s0)
	lhu	a4,12(a5)
	.loc 1 288 51
	lw	a5,-36(s0)
	lhu	a5,10(a5)
	.loc 1 288 14
	sub	a5,a4,a5
	sh	a5,-20(s0)
	.loc 1 290 14
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 290 7
	beq	a5,zero,.L27
	.loc 1 291 15
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 291 9
	jalr	a5
.LVL9:
.L27:
	.loc 1 295 23
	lw	a5,-36(s0)
	lhu	a5,12(a5)
	.loc 1 295 7
	lhu	a4,-42(s0)
	bleu	a4,a5,.L28
	.loc 1 296 29
	lhu	a5,-42(s0)
	.loc 1 296 37
	lw	a4,-36(s0)
	lhu	a4,12(a4)
	.loc 1 296 29
	sub	a5,a5,a4
	mv	a4,a5
	.loc 1 296 14
	lw	a5,-40(s0)
	add	a5,a5,a4
	sw	a5,-40(s0)
	.loc 1 297 16
	lw	a5,-36(s0)
	lhu	a5,12(a5)
	sh	a5,-42(s0)
.L28:
	.loc 1 300 7
	lhu	a4,-20(s0)
	lhu	a5,-42(s0)
	bleu	a4,a5,.L29
	.loc 1 302 34
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 302 50
	lw	a4,-36(s0)
	lhu	a4,10(a4)
	.loc 1 302 27
	add	a5,a5,a4
	.loc 1 302 9
	lhu	a4,-42(s0)
	mv	a2,a4
	lw	a1,-40(s0)
	mv	a0,a5
	call	BL602_MemCpy_Fast
	.loc 1 303 15
	lw	a5,-36(s0)
	lhu	a5,10(a5)
	.loc 1 303 28
	lhu	a4,-42(s0)
	add	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-36(s0)
	sh	a4,10(a5)
	.loc 1 306 11
	lhu	a4,-42(s0)
	lhu	a5,-18(s0)
	bleu	a4,a5,.L30
	.loc 1 307 39
	lw	a5,-36(s0)
	lhu	a4,10(a5)
	.loc 1 307 31
	lw	a5,-36(s0)
	sh	a4,6(a5)
	j	.L30
.L29:
	.loc 1 311 34
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 311 50
	lw	a4,-36(s0)
	lhu	a4,10(a4)
	.loc 1 311 27
	add	a5,a5,a4
	.loc 1 311 9
	lhu	a4,-20(s0)
	mv	a2,a4
	lw	a1,-40(s0)
	mv	a0,a5
	call	BL602_MemCpy_Fast
	.loc 1 312 27
	lw	a5,-36(s0)
	lw	a3,0(a5)
	.loc 1 312 9
	lhu	a5,-20(s0)
	.loc 1 312 47
	lw	a4,-40(s0)
	add	a1,a4,a5
	.loc 1 312 74
	lhu	a4,-42(s0)
	lhu	a5,-20(s0)
	sub	a5,a4,a5
	.loc 1 312 9
	mv	a2,a5
	mv	a0,a3
	call	BL602_MemCpy_Fast
	.loc 1 313 36
	lhu	a5,-42(s0)
	mv	a4,a5
	lhu	a5,-20(s0)
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 313 28
	lw	a5,-36(s0)
	sh	a4,10(a5)
	.loc 1 314 38
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	.loc 1 314 29
	not	a5,a5
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	sb	a4,8(a5)
	.loc 1 317 11
	lhu	a4,-42(s0)
	lhu	a5,-18(s0)
	bleu	a4,a5,.L30
	.loc 1 318 39
	lw	a5,-36(s0)
	lhu	a4,10(a5)
	.loc 1 318 31
	lw	a5,-36(s0)
	sh	a4,6(a5)
	.loc 1 319 41
	lw	a5,-36(s0)
	lbu	a5,4(a5)
	.loc 1 319 32
	not	a5,a5
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	sb	a4,4(a5)
.L30:
	.loc 1 323 14
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 323 7
	beq	a5,zero,.L31
	.loc 1 324 15
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 324 9
	jalr	a5
.LVL10:
.L31:
	.loc 1 326 12
	lhu	a5,-42(s0)
	.loc 1 327 1
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
	.size	Ring_Buffer_Write_Force, .-Ring_Buffer_Write_Force
	.section	.text.Ring_Buffer_Write_Byte_Force,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Write_Byte_Force
	.type	Ring_Buffer_Write_Byte_Force, @function
Ring_Buffer_Write_Byte_Force:
.LFB15:
	.loc 1 341 1
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
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 342 38
	lw	a0,-36(s0)
	call	Ring_Buffer_Get_Status
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 344 14
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 344 7
	beq	a5,zero,.L34
	.loc 1 345 15
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 345 9
	jalr	a5
.LVL11:
.L34:
	.loc 1 348 11
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 348 27
	lw	a4,-36(s0)
	lhu	a4,10(a4)
	.loc 1 348 20
	add	a5,a5,a4
	.loc 1 348 41
	lbu	a4,-37(s0)
	sb	a4,0(a5)
	.loc 1 351 14
	lw	a5,-36(s0)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 351 36
	lw	a5,-36(s0)
	lhu	a5,12(a5)
	.loc 1 351 42
	addi	a5,a5,-1
	.loc 1 351 7
	bne	a4,a5,.L35
	.loc 1 352 28
	lw	a5,-36(s0)
	sh	zero,10(a5)
	.loc 1 353 38
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	.loc 1 353 29
	not	a5,a5
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	sb	a4,8(a5)
	.loc 1 356 11
	lbu	a4,-17(s0)
	li	a5,2
	bne	a4,a5,.L36
	.loc 1 357 39
	lw	a5,-36(s0)
	lhu	a4,10(a5)
	.loc 1 357 31
	lw	a5,-36(s0)
	sh	a4,6(a5)
	.loc 1 358 41
	lw	a5,-36(s0)
	lbu	a5,4(a5)
	.loc 1 358 32
	not	a5,a5
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	sb	a4,4(a5)
	j	.L36
.L35:
	.loc 1 361 15
	lw	a5,-36(s0)
	lhu	a5,10(a5)
	.loc 1 361 27
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-36(s0)
	sh	a4,10(a5)
	.loc 1 364 11
	lbu	a4,-17(s0)
	li	a5,2
	bne	a4,a5,.L36
	.loc 1 365 39
	lw	a5,-36(s0)
	lhu	a4,10(a5)
	.loc 1 365 31
	lw	a5,-36(s0)
	sh	a4,6(a5)
.L36:
	.loc 1 369 14
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 369 7
	beq	a5,zero,.L37
	.loc 1 370 15
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 370 9
	jalr	a5
.LVL12:
.L37:
	.loc 1 372 12
	li	a5,1
	.loc 1 373 1
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
	.size	Ring_Buffer_Write_Byte_Force, .-Ring_Buffer_Write_Byte_Force
	.section	.text.Ring_Buffer_Read_Callback,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Read_Callback
	.type	Ring_Buffer_Read_Callback, @function
Ring_Buffer_Read_Callback:
.LFB16:
	.loc 1 388 1
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
	mv	a5,a1
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sh	a5,-38(s0)
	.loc 1 389 21
	lw	a0,-36(s0)
	call	Ring_Buffer_Get_Length
	mv	a5,a0
	sh	a5,-18(s0)
	.loc 1 391 7
	lw	a5,-44(s0)
	bne	a5,zero,.L40
	.loc 1 392 16
	li	a5,0
	j	.L41
.L40:
	.loc 1 395 14
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 395 7
	beq	a5,zero,.L42
	.loc 1 396 15
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 396 9
	jalr	a5
.LVL13:
.L42:
	.loc 1 400 7
	lhu	a5,-18(s0)
	bne	a5,zero,.L43
	.loc 1 401 18
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 401 11
	beq	a5,zero,.L44
	.loc 1 402 19
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 402 13
	jalr	a5
.LVL14:
.L44:
	.loc 1 404 16
	li	a5,0
	j	.L41
.L43:
	.loc 1 408 7
	lhu	a4,-18(s0)
	lhu	a5,-38(s0)
	bgeu	a4,a5,.L45
	.loc 1 409 16
	lhu	a5,-18(s0)
	sh	a5,-38(s0)
.L45:
	.loc 1 413 18
	lw	a5,-36(s0)
	lhu	a4,12(a5)
	.loc 1 413 33
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 1 413 10
	sub	a5,a4,a5
	sh	a5,-18(s0)
	.loc 1 415 7
	lhu	a4,-18(s0)
	lhu	a5,-38(s0)
	bleu	a4,a5,.L46
	.loc 1 417 33
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 417 49
	lw	a4,-36(s0)
	lhu	a4,6(a4)
	.loc 1 417 9
	add	a4,a5,a4
	lhu	a3,-38(s0)
	lw	a5,-44(s0)
	mv	a2,a3
	mv	a1,a4
	lw	a0,-48(s0)
	jalr	a5
.LVL15:
	.loc 1 418 15
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 1 418 27
	lhu	a4,-38(s0)
	add	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-36(s0)
	sh	a4,6(a5)
	j	.L47
.L46:
	.loc 1 421 33
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 421 49
	lw	a4,-36(s0)
	lhu	a4,6(a4)
	.loc 1 421 9
	add	a4,a5,a4
	lhu	a3,-18(s0)
	lw	a5,-44(s0)
	mv	a2,a3
	mv	a1,a4
	lw	a0,-48(s0)
	jalr	a5
.LVL16:
	.loc 1 422 9
	lw	a5,-36(s0)
	lw	a4,0(a5)
	lhu	a5,-38(s0)
	mv	a3,a5
	lhu	a5,-18(s0)
	sub	a5,a3,a5
	slli	a3,a5,16
	srli	a3,a3,16
	lw	a5,-44(s0)
	mv	a2,a3
	mv	a1,a4
	lw	a0,-48(s0)
	jalr	a5
.LVL17:
	.loc 1 423 35
	lhu	a5,-38(s0)
	mv	a4,a5
	lhu	a5,-18(s0)
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 423 27
	lw	a5,-36(s0)
	sh	a4,6(a5)
	.loc 1 424 37
	lw	a5,-36(s0)
	lbu	a5,4(a5)
	.loc 1 424 28
	not	a5,a5
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	sb	a4,4(a5)
.L47:
	.loc 1 427 14
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 427 7
	beq	a5,zero,.L48
	.loc 1 428 15
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 428 9
	jalr	a5
.LVL18:
.L48:
	.loc 1 430 12
	lhu	a5,-38(s0)
.L41:
	.loc 1 431 1
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
	.size	Ring_Buffer_Read_Callback, .-Ring_Buffer_Read_Callback
	.section	.text.Ring_Buffer_Read_Copy,"ax",@progbits
	.align	1
	.type	Ring_Buffer_Read_Copy, @function
Ring_Buffer_Read_Copy:
.LFB17:
	.loc 1 445 1
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
	sh	a5,-42(s0)
	.loc 1 446 15
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 448 5
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lhu	a4,-42(s0)
	mv	a2,a4
	lw	a1,-40(s0)
	mv	a0,a5
	call	BL602_MemCpy_Fast
	.loc 1 449 5
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 449 11
	lhu	a5,-42(s0)
	add	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 450 1
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
	.size	Ring_Buffer_Read_Copy, .-Ring_Buffer_Read_Copy
	.section	.text.Ring_Buffer_Read,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Read
	.type	Ring_Buffer_Read, @function
Ring_Buffer_Read:
.LFB18:
	.loc 1 464 1
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
	mv	a5,a2
	sh	a5,-26(s0)
	.loc 1 465 12
	addi	a5,s0,-24
	lhu	a4,-26(s0)
	mv	a3,a5
	lui	a5,%hi(Ring_Buffer_Read_Copy)
	addi	a2,a5,%lo(Ring_Buffer_Read_Copy)
	mv	a1,a4
	lw	a0,-20(s0)
	call	Ring_Buffer_Read_Callback
	mv	a5,a0
	.loc 1 466 1
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
	.size	Ring_Buffer_Read, .-Ring_Buffer_Read
	.section	.text.Ring_Buffer_Read_Byte,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Read_Byte
	.type	Ring_Buffer_Read_Byte, @function
Ring_Buffer_Read_Byte:
.LFB19:
	.loc 1 479 1
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
	.loc 1 480 14
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 480 7
	beq	a5,zero,.L53
	.loc 1 481 15
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 481 9
	jalr	a5
.LVL19:
.L53:
	.loc 1 485 9
	lw	a0,-20(s0)
	call	Ring_Buffer_Get_Length
	mv	a5,a0
	.loc 1 485 7 discriminator 1
	bne	a5,zero,.L54
	.loc 1 486 18
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 486 11
	beq	a5,zero,.L55
	.loc 1 487 19
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 487 13
	jalr	a5
.LVL20:
.L55:
	.loc 1 489 16
	li	a5,0
	j	.L56
.L54:
	.loc 1 493 19
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 493 35
	lw	a4,-20(s0)
	lhu	a4,6(a4)
	.loc 1 493 28
	add	a5,a5,a4
	lbu	a4,0(a5)
	.loc 1 493 11
	lw	a5,-24(s0)
	sb	a4,0(a5)
	.loc 1 496 14
	lw	a5,-20(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 1 496 35
	lw	a5,-20(s0)
	lhu	a5,12(a5)
	.loc 1 496 41
	addi	a5,a5,-1
	.loc 1 496 7
	bne	a4,a5,.L57
	.loc 1 497 27
	lw	a5,-20(s0)
	sh	zero,6(a5)
	.loc 1 498 37
	lw	a5,-20(s0)
	lbu	a5,4(a5)
	.loc 1 498 28
	not	a5,a5
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,4(a5)
	j	.L58
.L57:
	.loc 1 500 15
	lw	a5,-20(s0)
	lhu	a5,6(a5)
	.loc 1 500 26
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-20(s0)
	sh	a4,6(a5)
.L58:
	.loc 1 503 14
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 503 7
	beq	a5,zero,.L59
	.loc 1 504 15
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 504 9
	jalr	a5
.LVL21:
.L59:
	.loc 1 506 12
	li	a5,1
.L56:
	.loc 1 507 1
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
.LFE19:
	.size	Ring_Buffer_Read_Byte, .-Ring_Buffer_Read_Byte
	.section	.text.Ring_Buffer_Peek,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Peek
	.type	Ring_Buffer_Peek, @function
Ring_Buffer_Peek:
.LFB20:
	.loc 1 521 1
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
	sh	a5,-42(s0)
	.loc 1 522 21
	lw	a0,-36(s0)
	call	Ring_Buffer_Get_Length
	mv	a5,a0
	sh	a5,-18(s0)
	.loc 1 524 14
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 524 7
	beq	a5,zero,.L61
	.loc 1 525 15
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 525 9
	jalr	a5
.LVL22:
.L61:
	.loc 1 529 7
	lhu	a5,-18(s0)
	bne	a5,zero,.L62
	.loc 1 530 18
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 530 11
	beq	a5,zero,.L63
	.loc 1 531 19
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 531 13
	jalr	a5
.LVL23:
.L63:
	.loc 1 533 16
	li	a5,0
	j	.L64
.L62:
	.loc 1 537 7
	lhu	a4,-18(s0)
	lhu	a5,-42(s0)
	bgeu	a4,a5,.L65
	.loc 1 538 16
	lhu	a5,-18(s0)
	sh	a5,-42(s0)
.L65:
	.loc 1 542 18
	lw	a5,-36(s0)
	lhu	a4,12(a5)
	.loc 1 542 33
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 1 542 10
	sub	a5,a4,a5
	sh	a5,-18(s0)
	.loc 1 544 7
	lhu	a4,-18(s0)
	lhu	a5,-42(s0)
	bleu	a4,a5,.L66
	.loc 1 546 39
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 546 55
	lw	a4,-36(s0)
	lhu	a4,6(a4)
	.loc 1 546 32
	add	a5,a5,a4
	.loc 1 546 9
	lhu	a4,-42(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-40(s0)
	call	BL602_MemCpy_Fast
	j	.L67
.L66:
	.loc 1 549 39
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 549 55
	lw	a4,-36(s0)
	lhu	a4,6(a4)
	.loc 1 549 32
	add	a5,a5,a4
	.loc 1 549 9
	lhu	a4,-18(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-40(s0)
	call	BL602_MemCpy_Fast
	.loc 1 550 9
	lhu	a5,-18(s0)
	.loc 1 550 27
	lw	a4,-40(s0)
	add	a3,a4,a5
	.loc 1 550 39
	lw	a5,-36(s0)
	lw	a1,0(a5)
	.loc 1 550 65
	lhu	a4,-42(s0)
	lhu	a5,-18(s0)
	sub	a5,a4,a5
	.loc 1 550 9
	mv	a2,a5
	mv	a0,a3
	call	BL602_MemCpy_Fast
.L67:
	.loc 1 553 14
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 553 7
	beq	a5,zero,.L68
	.loc 1 554 15
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 554 9
	jalr	a5
.LVL24:
.L68:
	.loc 1 556 12
	lhu	a5,-42(s0)
.L64:
	.loc 1 557 1
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
	.size	Ring_Buffer_Peek, .-Ring_Buffer_Peek
	.section	.text.Ring_Buffer_Peek_Byte,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Peek_Byte
	.type	Ring_Buffer_Peek_Byte, @function
Ring_Buffer_Peek_Byte:
.LFB21:
	.loc 1 570 1
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
	.loc 1 571 14
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 571 7
	beq	a5,zero,.L70
	.loc 1 572 15
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 572 9
	jalr	a5
.LVL25:
.L70:
	.loc 1 576 9
	lw	a0,-20(s0)
	call	Ring_Buffer_Get_Length
	mv	a5,a0
	.loc 1 576 7 discriminator 1
	bne	a5,zero,.L71
	.loc 1 577 18
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 577 11
	beq	a5,zero,.L72
	.loc 1 578 19
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 578 13
	jalr	a5
.LVL26:
.L72:
	.loc 1 580 16
	li	a5,0
	j	.L73
.L71:
	.loc 1 584 19
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 584 35
	lw	a4,-20(s0)
	lhu	a4,6(a4)
	.loc 1 584 28
	add	a5,a5,a4
	lbu	a4,0(a5)
	.loc 1 584 11
	lw	a5,-24(s0)
	sb	a4,0(a5)
	.loc 1 586 14
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 586 7
	beq	a5,zero,.L74
	.loc 1 587 15
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 587 9
	jalr	a5
.LVL27:
.L74:
	.loc 1 589 12
	li	a5,1
.L73:
	.loc 1 590 1
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
	.size	Ring_Buffer_Peek_Byte, .-Ring_Buffer_Peek_Byte
	.section	.text.Ring_Buffer_Get_Length,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Get_Length
	.type	Ring_Buffer_Get_Length, @function
Ring_Buffer_Get_Length:
.LFB22:
	.loc 1 602 1
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
	.loc 1 603 14
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 603 7
	beq	a5,zero,.L76
	.loc 1 604 15
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 604 9
	jalr	a5
.LVL28:
.L76:
	.loc 1 607 14
	lw	a5,-20(s0)
	lbu	a4,4(a5)
	.loc 1 607 36
	lw	a5,-20(s0)
	lbu	a5,8(a5)
	.loc 1 607 7
	bne	a4,a5,.L77
	.loc 1 608 18
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 608 11
	beq	a5,zero,.L78
	.loc 1 609 19
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 609 13
	jalr	a5
.LVL29:
.L78:
	.loc 1 611 22
	lw	a5,-20(s0)
	lhu	a4,10(a5)
	.loc 1 611 43
	lw	a5,-20(s0)
	lhu	a5,6(a5)
	.loc 1 611 35
	sub	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	j	.L79
.L77:
	.loc 1 613 18
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 613 11
	beq	a5,zero,.L80
	.loc 1 614 19
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 614 13
	jalr	a5
.LVL30:
.L80:
	.loc 1 616 22
	lw	a5,-20(s0)
	lhu	a4,12(a5)
	.loc 1 616 58
	lw	a5,-20(s0)
	lhu	a3,10(a5)
	.loc 1 616 38
	lw	a5,-20(s0)
	lhu	a5,6(a5)
	.loc 1 616 29
	sub	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
.L79:
	.loc 1 618 1
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
	.size	Ring_Buffer_Get_Length, .-Ring_Buffer_Get_Length
	.section	.text.Ring_Buffer_Get_Empty_Length,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Get_Empty_Length
	.type	Ring_Buffer_Get_Empty_Length, @function
Ring_Buffer_Get_Empty_Length:
.LFB23:
	.loc 1 630 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 631 19
	lw	a5,-20(s0)
	lhu	s1,12(a5)
	.loc 1 631 28
	lw	a0,-20(s0)
	call	Ring_Buffer_Get_Length
	mv	a5,a0
	.loc 1 631 26 discriminator 1
	sub	a5,s1,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 632 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	Ring_Buffer_Get_Empty_Length, .-Ring_Buffer_Get_Empty_Length
	.section	.text.Ring_Buffer_Get_Status,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Get_Status
	.type	Ring_Buffer_Get_Status, @function
Ring_Buffer_Get_Status:
.LFB24:
	.loc 1 644 1
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
	.loc 1 645 14
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 645 7
	beq	a5,zero,.L84
	.loc 1 646 15
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 646 9
	jalr	a5
.LVL31:
.L84:
	.loc 1 650 14
	lw	a5,-20(s0)
	lhu	a4,6(a5)
	.loc 1 650 35
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 650 7
	bne	a4,a5,.L85
	.loc 1 651 18
	lw	a5,-20(s0)
	lbu	a4,4(a5)
	.loc 1 651 40
	lw	a5,-20(s0)
	lbu	a5,8(a5)
	.loc 1 651 11
	bne	a4,a5,.L86
	.loc 1 652 22
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 652 15
	beq	a5,zero,.L87
	.loc 1 653 23
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 653 17
	jalr	a5
.LVL32:
.L87:
	.loc 1 655 20
	li	a5,0
	j	.L88
.L86:
	.loc 1 657 22
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 657 15
	beq	a5,zero,.L89
	.loc 1 658 23
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 658 17
	jalr	a5
.LVL33:
.L89:
	.loc 1 660 20
	li	a5,2
	j	.L88
.L85:
	.loc 1 663 14
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 663 7
	beq	a5,zero,.L90
	.loc 1 664 15
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 664 9
	jalr	a5
.LVL34:
.L90:
	.loc 1 666 12
	li	a5,1
.L88:
	.loc 1 667 1
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
	.size	Ring_Buffer_Get_Status, .-Ring_Buffer_Get_Status
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/ring_buffer/ring_buffer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6a0
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x2b
	.uleb128 0xf
	.4byte	0x4e
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x11
	.byte	0x4
	.uleb128 0x6
	.4byte	0xa8
	.uleb128 0x12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0xc
	.4byte	0x2b
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xcf
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xb0
	.uleb128 0xc
	.4byte	0x2b
	.byte	0x4
	.byte	0x38
	.byte	0xe
	.4byte	0xfa
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x4
	.byte	0x3c
	.byte	0x2
	.4byte	0xdb
	.uleb128 0x13
	.byte	0x18
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.4byte	0x170
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x42
	.byte	0xe
	.4byte	0x170
	.byte	0
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x43
	.byte	0xd
	.4byte	0x4e
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x44
	.byte	0xe
	.4byte	0x5f
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x45
	.byte	0xd
	.4byte	0x4e
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x46
	.byte	0xe
	.4byte	0x5f
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x47
	.byte	0xe
	.4byte	0x5f
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x48
	.byte	0xc
	.4byte	0xa3
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x49
	.byte	0xc
	.4byte	0xa3
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	0x4e
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0x4
	.byte	0x4a
	.byte	0x2
	.4byte	0x106
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0x4
	.byte	0x5e
	.byte	0xf
	.4byte	0xa8
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x4
	.byte	0x5f
	.byte	0xf
	.4byte	0x199
	.uleb128 0x14
	.4byte	0x1ae
	.uleb128 0x9
	.4byte	0xa1
	.uleb128 0x9
	.4byte	0x170
	.uleb128 0x9
	.4byte	0x5f
	.byte	0
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x4
	.byte	0x60
	.byte	0xf
	.4byte	0x199
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x3
	.byte	0x8c
	.byte	0x7
	.4byte	0xa1
	.4byte	0x1da
	.uleb128 0x9
	.4byte	0xa1
	.uleb128 0x9
	.4byte	0x1da
	.uleb128 0x9
	.4byte	0x72
	.byte	0
	.uleb128 0x6
	.4byte	0x1df
	.uleb128 0x16
	.uleb128 0x4
	.4byte	.LASF36
	.2byte	0x283
	.byte	0x19
	.4byte	0xfa
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20a
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x283
	.byte	0x42
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x175
	.uleb128 0x4
	.4byte	.LASF37
	.2byte	0x275
	.byte	0xa
	.4byte	0x5f
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x239
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x275
	.byte	0x39
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.2byte	0x259
	.byte	0xa
	.4byte	0x5f
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x263
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x259
	.byte	0x33
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.2byte	0x239
	.byte	0xa
	.4byte	0x5f
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29c
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x239
	.byte	0x32
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x239
	.byte	0x42
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.2byte	0x208
	.byte	0xa
	.4byte	0x5f
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f3
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x208
	.byte	0x2d
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x208
	.byte	0x3d
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF43
	.2byte	0x208
	.byte	0x4b
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0xa
	.4byte	.LASF29
	.2byte	0x20a
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF44
	.2byte	0x1de
	.byte	0xa
	.4byte	0x5f
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32c
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x1de
	.byte	0x32
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x1de
	.byte	0x42
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF45
	.2byte	0x1cf
	.byte	0xa
	.4byte	0x5f
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x374
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x1cf
	.byte	0x2d
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x1cf
	.byte	0x3d
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF43
	.2byte	0x1cf
	.byte	0x4b
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x17
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x1bc
	.byte	0xd
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c8
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x1bc
	.byte	0x29
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x1bc
	.byte	0x3c
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF43
	.2byte	0x1bc
	.byte	0x4a
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0xa
	.4byte	.LASF47
	.2byte	0x1be
	.byte	0xf
	.4byte	0x3c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x170
	.uleb128 0x4
	.4byte	.LASF48
	.2byte	0x183
	.byte	0xa
	.4byte	0x5f
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x433
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x183
	.byte	0x36
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF43
	.2byte	0x183
	.byte	0x46
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1
	.4byte	.LASF49
	.2byte	0x183
	.byte	0x67
	.4byte	0x433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x183
	.byte	0x74
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	.LASF29
	.2byte	0x185
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x6
	.4byte	0x18d
	.uleb128 0x4
	.4byte	.LASF50
	.2byte	0x154
	.byte	0xa
	.4byte	0x5f
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x480
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x154
	.byte	0x39
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x154
	.byte	0x4e
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xa
	.4byte	.LASF51
	.2byte	0x156
	.byte	0x1d
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF52
	.2byte	0x11d
	.byte	0xa
	.4byte	0x5f
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e6
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x11d
	.byte	0x34
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x11d
	.byte	0x4a
	.4byte	0x4e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF43
	.2byte	0x11d
	.byte	0x58
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0xa
	.4byte	.LASF53
	.2byte	0x11f
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xa
	.4byte	.LASF54
	.2byte	0x120
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x5a
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0xf3
	.4byte	0x5f
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x520
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0xf3
	.byte	0x33
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0xf3
	.byte	0x48
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0xe4
	.4byte	0x5f
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x563
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0xe4
	.byte	0x2e
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0xe4
	.byte	0x44
	.4byte	0x4e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0xe4
	.byte	0x52
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x18
	.4byte	.LASF58
	.byte	0x1
	.byte	0xd1
	.byte	0xd
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b3
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0xd1
	.byte	0x2a
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0xd1
	.byte	0x3d
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0xd1
	.byte	0x4b
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x19
	.string	"src"
	.byte	0x1
	.byte	0xd3
	.byte	0xf
	.4byte	0x3c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x98
	.4byte	0x5f
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x613
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x98
	.byte	0x37
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x98
	.byte	0x47
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x98
	.byte	0x69
	.4byte	0x613
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x98
	.byte	0x77
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x1
	.byte	0x9a
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x6
	.4byte	0x1ae
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x81
	.4byte	0xcf
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63f
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x81
	.byte	0x31
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x63
	.4byte	0xcf
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69e
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x63
	.byte	0x30
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x63
	.byte	0x40
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x63
	.byte	0x50
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x63
	.byte	0x6f
	.4byte	0x69e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x63
	.byte	0x90
	.4byte	0x69e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.4byte	0x181
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0xb
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
	.sleb128 10
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.sleb128 13
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x19
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x9c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"Ring_Buffer_Status_Type"
.LASF36:
	.string	"Ring_Buffer_Get_Status"
.LASF47:
	.string	"dest"
.LASF50:
	.string	"Ring_Buffer_Write_Byte_Force"
.LASF42:
	.string	"Ring_Buffer_Peek"
.LASF4:
	.string	"short int"
.LASF27:
	.string	"writeMirror"
.LASF59:
	.string	"Ring_Buffer_Write_Callback"
.LASF55:
	.string	"Ring_Buffer_Write_Byte"
.LASF43:
	.string	"length"
.LASF33:
	.string	"ringBuffer_Lock_Callback"
.LASF6:
	.string	"long long int"
.LASF41:
	.string	"data"
.LASF49:
	.string	"readCb"
.LASF7:
	.string	"uint8_t"
.LASF53:
	.string	"sizeRemained"
.LASF35:
	.string	"ringBuffer_Write_Callback"
.LASF65:
	.string	"unlockCb"
.LASF48:
	.string	"Ring_Buffer_Read_Callback"
.LASF62:
	.string	"Ring_Buffer_Init"
.LASF16:
	.string	"SUCCESS"
.LASF18:
	.string	"TIMEOUT"
.LASF5:
	.string	"long int"
.LASF19:
	.string	"BL_Err_Type"
.LASF17:
	.string	"ERROR"
.LASF52:
	.string	"Ring_Buffer_Write_Force"
.LASF14:
	.string	"long double"
.LASF38:
	.string	"rbType"
.LASF2:
	.string	"unsigned char"
.LASF45:
	.string	"Ring_Buffer_Read"
.LASF3:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF44:
	.string	"Ring_Buffer_Read_Byte"
.LASF64:
	.string	"lockCb"
.LASF58:
	.string	"Ring_Buffer_Write_Copy"
.LASF20:
	.string	"RING_BUFFER_EMPTY"
.LASF31:
	.string	"unlock"
.LASF46:
	.string	"parameter"
.LASF40:
	.string	"Ring_Buffer_Peek_Byte"
.LASF9:
	.string	"short unsigned int"
.LASF51:
	.string	"status"
.LASF15:
	.string	"char"
.LASF8:
	.string	"uint16_t"
.LASF61:
	.string	"Ring_Buffer_Reset"
.LASF30:
	.string	"lock"
.LASF66:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF32:
	.string	"Ring_Buffer_Type"
.LASF54:
	.string	"indexRemained"
.LASF63:
	.string	"buffer"
.LASF67:
	.string	"BL602_MemCpy_Fast"
.LASF11:
	.string	"long unsigned int"
.LASF60:
	.string	"writeCb"
.LASF34:
	.string	"ringBuffer_Read_Callback"
.LASF29:
	.string	"size"
.LASF26:
	.string	"readIndex"
.LASF22:
	.string	"RING_BUFFER_FULL"
.LASF24:
	.string	"pointer"
.LASF56:
	.string	"Ring_Buffer_Write"
.LASF39:
	.string	"Ring_Buffer_Get_Length"
.LASF28:
	.string	"writeIndex"
.LASF13:
	.string	"unsigned int"
.LASF25:
	.string	"readMirror"
.LASF21:
	.string	"RING_BUFFER_PARTIAL"
.LASF57:
	.string	"Ring_Buffer_Read_Copy"
.LASF37:
	.string	"Ring_Buffer_Get_Empty_Length"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/ring_buffer/ring_buffer.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
