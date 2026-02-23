	.file	"xz_dec_stream.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz/xz_dec_stream.c"
	.section	.text.get_unaligned_le32,"ax",@progbits
	.align	1
	.type	get_unaligned_le32, @function
get_unaligned_le32:
.LFB1:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz/xz_config.h"
	.loc 1 73 1
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
	.loc 1 74 25
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 74 12
	mv	a4,a5
	.loc 1 75 29
	lw	a5,-20(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 75 33
	slli	a5,a5,8
	.loc 1 75 13
	or	a4,a4,a5
	.loc 1 76 29
	lw	a5,-20(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 76 33
	slli	a5,a5,16
	.loc 1 76 13
	or	a4,a4,a5
	.loc 1 77 29
	lw	a5,-20(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 77 33
	slli	a5,a5,24
	.loc 1 77 13
	or	a5,a4,a5
	.loc 1 78 1
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
.LFE1:
	.size	get_unaligned_le32, .-get_unaligned_le32
	.section	.text.fill_temp,"ax",@progbits
	.align	1
	.type	fill_temp, @function
fill_temp:
.LFB5:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz/xz_dec_stream.c"
	.loc 2 169 1
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
	.loc 2 170 60
	lw	a5,-36(s0)
	lw	a4,156(a5)
	.loc 2 170 75
	lw	a5,-36(s0)
	lw	a5,152(a5)
	.loc 2 170 66
	sub	a3,a4,a5
	.loc 2 170 27
	lw	a5,-40(s0)
	lw	a4,8(a5)
	.loc 2 170 40
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 170 37
	sub	a4,a4,a5
	.loc 2 170 12
	mv	a5,a3
	bleu	a5,a4,.L4
	mv	a5,a4
.L4:
	sw	a5,-20(s0)
	.loc 2 173 12
	lw	a5,-36(s0)
	addi	a4,a5,160
	.loc 2 173 33
	lw	a5,-36(s0)
	lw	a5,152(a5)
	.loc 2 173 5
	add	a3,a4,a5
	.loc 2 173 40
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 173 48
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 173 45
	add	a5,a4,a5
	.loc 2 173 5
	lw	a2,-20(s0)
	mv	a1,a5
	mv	a0,a3
	call	memcpy
	.loc 2 174 6
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 2 174 15
	lw	a5,-20(s0)
	add	a4,a4,a5
	lw	a5,-40(s0)
	sw	a4,4(a5)
	.loc 2 175 12
	lw	a5,-36(s0)
	lw	a4,152(a5)
	.loc 2 175 17
	lw	a5,-20(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,152(a5)
	.loc 2 177 16
	lw	a5,-36(s0)
	lw	a4,152(a5)
	.loc 2 177 31
	lw	a5,-36(s0)
	lw	a5,156(a5)
	.loc 2 177 8
	bne	a4,a5,.L5
	.loc 2 178 21
	lw	a5,-36(s0)
	sw	zero,152(a5)
	.loc 2 179 16
	li	a5,1
	j	.L6
.L5:
	.loc 2 182 12
	li	a5,0
.L6:
	.loc 2 183 1
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
.LFE5:
	.size	fill_temp, .-fill_temp
	.section	.text.dec_vli,"ax",@progbits
	.align	1
	.type	dec_vli, @function
dec_vli:
.LFB6:
	.loc 2 188 1
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
	.loc 2 191 10
	lw	a3,-36(s0)
	lw	a3,4(a3)
	.loc 2 191 8
	bne	a3,zero,.L9
	.loc 2 192 16
	lw	a3,-36(s0)
	li	a1,0
	li	a2,0
	sw	a1,8(a3)
	sw	a2,12(a3)
	.loc 2 194 11
	j	.L9
.L15:
	.loc 2 195 19
	lw	a3,-44(s0)
	lw	a3,0(a3)
	.loc 2 195 18
	lw	a2,-40(s0)
	add	a3,a2,a3
	.loc 2 195 14
	lbu	a3,0(a3)
	sb	a3,-17(s0)
	.loc 2 196 11
	lw	a3,-44(s0)
	lw	a3,0(a3)
	.loc 2 196 9
	addi	a2,a3,1
	lw	a3,-44(s0)
	sw	a2,0(a3)
	.loc 2 198 10
	lw	a3,-36(s0)
	lw	a0,8(a3)
	lw	a1,12(a3)
	.loc 2 198 35
	lbu	a3,-17(s0)
	andi	a3,a3,0xff
	mv	t1,a3
	li	t2,0
	.loc 2 198 19
	andi	a6,t1,127
	andi	a7,t2,0
	.loc 2 198 47
	lw	a3,-36(s0)
	lw	a3,4(a3)
	.loc 2 198 43
	addi	a2,a3,-32
	blt	a2,zero,.L10
	sll	a5,a6,a2
	li	a4,0
	j	.L11
.L10:
	srli	t5,a6,1
	li	a2,31
	sub	a2,a2,a3
	srl	a2,t5,a2
	sll	a5,a7,a3
	add	a5,a2,a5
	sll	a4,a6,a3
.L11:
	.loc 2 198 16
	or	t3,a0,a4
	or	t4,a1,a5
	lw	a3,-36(s0)
	sw	t3,8(a3)
	sw	t4,12(a3)
	.loc 2 200 27
	lb	a3,-17(s0)
	.loc 2 200 12
	blt	a3,zero,.L12
	.loc 2 202 16
	lbu	a5,-17(s0)
	bne	a5,zero,.L13
	.loc 2 202 31 discriminator 1
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 2 202 27 discriminator 1
	beq	a5,zero,.L13
	.loc 2 203 24
	li	a5,7
	j	.L14
.L13:
	.loc 2 205 20
	lw	a5,-36(s0)
	sw	zero,4(a5)
	.loc 2 206 20
	li	a5,1
	j	.L14
.L12:
	.loc 2 209 10
	lw	a3,-36(s0)
	lw	a3,4(a3)
	.loc 2 209 16
	addi	a2,a3,7
	lw	a3,-36(s0)
	sw	a2,4(a3)
	.loc 2 210 14
	lw	a3,-36(s0)
	lw	a2,4(a3)
	.loc 2 210 12
	li	a3,63
	bne	a2,a3,.L9
	.loc 2 211 20
	li	a5,7
	j	.L14
.L9:
	.loc 2 194 12
	lw	a3,-44(s0)
	lw	a3,0(a3)
	.loc 2 194 20
	lw	a2,-48(s0)
	bgtu	a2,a3,.L15
	.loc 2 214 12
	li	a5,0
.L14:
	.loc 2 215 1
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
.LFE6:
	.size	dec_vli, .-dec_vli
	.section	.text.dec_block,"ax",@progbits
	.align	1
	.type	dec_block, @function
dec_block:
.LFB7:
	.loc 2 230 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s2,52(sp)
	sw	s3,48(sp)
	sw	s4,44(sp)
	sw	s5,40(sp)
	sw	s6,36(sp)
	sw	s7,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	.cfi_offset 22, -28
	.cfi_offset 23, -32
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	.loc 2 233 20
	lw	a5,-56(s0)
	lw	a4,4(a5)
	.loc 2 233 17
	lw	a5,-52(s0)
	sw	a4,16(a5)
	.loc 2 234 21
	lw	a5,-56(s0)
	lw	a4,16(a5)
	.loc 2 234 18
	lw	a5,-52(s0)
	sw	a4,20(a5)
	.loc 2 241 15
	lw	a5,-52(s0)
	lw	a5,1184(a5)
	lw	a1,-56(s0)
	mv	a0,a5
	call	xz_dec_lzma2_run
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 2 243 13
	lw	a5,-52(s0)
	lw	a4,56(a5)
	lw	a5,60(a5)
	.loc 2 243 29
	lw	a3,-56(s0)
	lw	a2,4(a3)
	.loc 2 243 41
	lw	a3,-52(s0)
	lw	a3,16(a3)
	.loc 2 243 38
	sub	a3,a2,a3
	mv	s6,a3
	li	s7,0
	.loc 2 243 25
	add	a2,a4,s6
	mv	a1,a2
	sltu	a1,a1,a4
	add	a3,a5,s7
	add	a5,a1,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	lw	a3,-52(s0)
	sw	a4,56(a3)
	sw	a5,60(a3)
	.loc 2 244 13
	lw	a5,-52(s0)
	lw	a4,64(a5)
	lw	a5,68(a5)
	.loc 2 244 31
	lw	a3,-56(s0)
	lw	a2,16(a3)
	.loc 2 244 44
	lw	a3,-52(s0)
	lw	a3,20(a3)
	.loc 2 244 41
	sub	a3,a2,a3
	mv	s4,a3
	li	s5,0
	.loc 2 244 27
	add	a2,a4,s4
	mv	a1,a2
	sltu	a1,a1,a4
	add	a3,a5,s5
	add	a5,a1,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	lw	a3,-52(s0)
	sw	a4,64(a3)
	sw	a5,68(a3)
	.loc 2 250 17
	lw	a5,-52(s0)
	lw	a2,56(a5)
	lw	a3,60(a5)
	.loc 2 250 46
	lw	a5,-52(s0)
	lw	a4,32(a5)
	lw	a5,36(a5)
	.loc 2 250 8
	mv	a0,a3
	mv	a1,a5
	bgtu	a0,a1,.L17
	mv	a0,a3
	mv	a1,a5
	bne	a0,a1,.L31
	mv	a3,a2
	mv	a5,a4
	bgtu	a3,a5,.L17
.L31:
	.loc 2 251 24
	lw	a5,-52(s0)
	lw	a2,64(a5)
	lw	a3,68(a5)
	.loc 2 252 34
	lw	a5,-52(s0)
	lw	a4,40(a5)
	lw	a5,44(a5)
	.loc 2 251 13
	mv	a0,a3
	mv	a1,a5
	bgtu	a0,a1,.L17
	mv	a0,a3
	mv	a1,a5
	bne	a0,a1,.L19
	mv	a3,a2
	mv	a5,a4
	bleu	a3,a5,.L19
.L17:
	.loc 2 253 16
	li	a5,7
	j	.L21
.L19:
	.loc 2 255 10
	lw	a5,-52(s0)
	lbu	a4,28(a5)
	.loc 2 255 8
	li	a5,1
	bne	a4,a5,.L22
	.loc 2 256 28
	lw	a5,-56(s0)
	lw	a4,12(a5)
	.loc 2 256 37
	lw	a5,-52(s0)
	lw	a5,20(a5)
	.loc 2 256 34
	add	a3,a4,a5
	.loc 2 257 18
	lw	a5,-56(s0)
	lw	a4,16(a5)
	.loc 2 257 31
	lw	a5,-52(s0)
	lw	a5,20(a5)
	.loc 2 256 18
	sub	a4,a4,a5
	lw	a5,-52(s0)
	lw	a5,24(a5)
	mv	a2,a5
	mv	a1,a4
	mv	a0,a3
	call	xz_crc32
	mv	a4,a0
	.loc 2 256 16 discriminator 1
	lw	a5,-52(s0)
	sw	a4,24(a5)
.L22:
	.loc 2 264 8
	lbu	a4,-33(s0)
	li	a5,1
	bne	a4,a5,.L23
	.loc 2 265 28
	lw	a5,-52(s0)
	lw	a4,32(a5)
	lw	a5,36(a5)
	.loc 2 265 12
	mv	a2,a4
	li	a3,-1
	bne	a2,a3,.L32
	mv	a4,a5
	li	a5,-1
	beq	a4,a5,.L24
.L32:
	.loc 2 266 35
	lw	a5,-52(s0)
	lw	a2,32(a5)
	lw	a3,36(a5)
	.loc 2 267 32
	lw	a5,-52(s0)
	lw	a4,56(a5)
	lw	a5,60(a5)
	.loc 2 266 17
	mv	a0,a2
	mv	a1,a4
	bne	a0,a1,.L33
	beq	a3,a5,.L24
.L33:
	.loc 2 268 20
	li	a5,7
	j	.L21
.L24:
	.loc 2 270 28
	lw	a5,-52(s0)
	lw	a4,40(a5)
	lw	a5,44(a5)
	.loc 2 270 12
	mv	a2,a4
	li	a3,-1
	bne	a2,a3,.L34
	mv	a4,a5
	li	a5,-1
	beq	a4,a5,.L27
.L34:
	.loc 2 271 35
	lw	a5,-52(s0)
	lw	a2,40(a5)
	lw	a3,44(a5)
	.loc 2 272 32
	lw	a5,-52(s0)
	lw	a4,64(a5)
	lw	a5,68(a5)
	.loc 2 271 17
	mv	a0,a2
	mv	a1,a4
	bne	a0,a1,.L35
	beq	a3,a5,.L27
.L35:
	.loc 2 273 20
	li	a5,7
	j	.L21
.L27:
	.loc 2 275 22
	lw	a5,-52(s0)
	lw	a4,80(a5)
	lw	a5,84(a5)
	.loc 2 275 50
	lw	a3,-52(s0)
	lw	a3,48(a3)
	mv	s2,a3
	li	s3,0
	.loc 2 276 27
	lw	a3,-52(s0)
	lw	a0,56(a3)
	lw	a1,60(a3)
	.loc 2 276 17
	add	a2,s2,a0
	mv	a6,a2
	sltu	a6,a6,s2
	add	a3,s3,a1
	add	a1,a6,a3
	mv	a3,a1
	mv	a0,a2
	mv	a1,a3
	.loc 2 275 32
	add	a2,a4,a0
	mv	a6,a2
	sltu	a6,a6,a4
	add	a3,a5,a1
	add	a5,a6,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	lw	a3,-52(s0)
	sw	a4,80(a3)
	sw	a5,84(a3)
	.loc 2 281 14
	lw	a5,-52(s0)
	lbu	a4,28(a5)
	.loc 2 281 12
	li	a5,1
	bne	a4,a5,.L30
	.loc 2 282 26
	lw	a5,-52(s0)
	lw	a4,80(a5)
	lw	a5,84(a5)
	.loc 2 282 36
	li	a0,4
	li	a1,0
	add	a2,a4,a0
	mv	a6,a2
	sltu	a6,a6,a4
	add	a3,a5,a1
	add	a5,a6,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	lw	a3,-52(s0)
	sw	a4,80(a3)
	sw	a5,84(a3)
.L30:
	.loc 2 287 22
	lw	a5,-52(s0)
	lw	a4,88(a5)
	lw	a5,92(a5)
	.loc 2 287 47
	lw	a3,-52(s0)
	lw	a0,64(a3)
	lw	a1,68(a3)
	.loc 2 287 36
	add	a2,a4,a0
	mv	a6,a2
	sltu	a6,a6,a4
	add	a3,a5,a1
	add	a5,a6,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	lw	a3,-52(s0)
	sw	a4,88(a3)
	sw	a5,92(a3)
	.loc 2 289 34
	lw	a5,-52(s0)
	addi	a4,a5,80
	.loc 2 288 31
	lw	a5,-52(s0)
	lw	a5,96(a5)
	mv	a2,a5
	li	a1,24
	mv	a0,a4
	call	xz_crc32
	mv	a4,a0
	.loc 2 288 29 discriminator 1
	lw	a5,-52(s0)
	sw	a4,96(a5)
	.loc 2 292 19
	lw	a5,-52(s0)
	lw	a4,72(a5)
	lw	a5,76(a5)
	.loc 2 292 9
	li	a0,1
	li	a1,0
	add	a2,a4,a0
	mv	a6,a2
	sltu	a6,a6,a4
	add	a3,a5,a1
	add	a5,a6,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	lw	a3,-52(s0)
	sw	a4,72(a3)
	sw	a5,76(a3)
.L23:
	.loc 2 295 12
	lbu	a5,-33(s0)
.L21:
	.loc 2 296 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s2,52(sp)
	.cfi_restore 18
	lw	s3,48(sp)
	.cfi_restore 19
	lw	s4,44(sp)
	.cfi_restore 20
	lw	s5,40(sp)
	.cfi_restore 21
	lw	s6,36(sp)
	.cfi_restore 22
	lw	s7,32(sp)
	.cfi_restore 23
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	dec_block, .-dec_block
	.section	.text.index_update,"ax",@progbits
	.align	1
	.type	index_update, @function
index_update:
.LFB8:
	.loc 2 300 1
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
	.loc 2 301 23
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 2 301 35
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 2 301 12
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 302 13
	lw	a5,-36(s0)
	lw	a4,112(a5)
	lw	a5,116(a5)
	.loc 2 302 19
	lw	a3,-20(s0)
	mv	a6,a3
	li	a7,0
	add	a2,a4,a6
	mv	a1,a2
	sltu	a1,a1,a4
	add	a3,a5,a7
	add	a5,a1,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	lw	a3,-36(s0)
	sw	a4,112(a3)
	sw	a5,116(a3)
	.loc 2 303 24
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 303 32
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 2 303 14
	add	a4,a4,a5
	lw	a5,-36(s0)
	lw	a5,24(a5)
	mv	a2,a5
	lw	a1,-20(s0)
	mv	a0,a4
	call	xz_crc32
	mv	a4,a0
	.loc 2 303 12 discriminator 1
	lw	a5,-36(s0)
	sw	a4,24(a5)
	.loc 2 304 1
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
	.size	index_update, .-index_update
	.section	.text.dec_index,"ax",@progbits
	.align	1
	.type	dec_index, @function
dec_index:
.LFB9:
	.loc 2 315 1
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
.L47:
	.loc 2 319 15
	lw	a5,-40(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	addi	a2,a5,4
	lw	a5,-40(s0)
	lw	a5,8(a5)
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	dec_vli
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 2 320 12
	lbu	a4,-17(s0)
	li	a5,1
	beq	a4,a5,.L38
	.loc 2 321 13
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	index_update
	.loc 2 322 20
	lbu	a5,-17(s0)
	j	.L39
.L38:
	.loc 2 325 25
	lw	a5,-36(s0)
	lbu	a5,104(a5)
	.loc 2 325 9
	li	a4,2
	beq	a5,a4,.L40
	li	a4,2
	bgt	a5,a4,.L50
	beq	a5,zero,.L42
	li	a4,1
	beq	a5,a4,.L43
	.loc 2 355 13
	j	.L50
.L42:
	.loc 2 327 31
	lw	a5,-36(s0)
	lw	a4,8(a5)
	lw	a5,12(a5)
	.loc 2 327 28
	lw	a3,-36(s0)
	sw	a4,120(a3)
	sw	a5,124(a3)
	.loc 2 334 25
	lw	a5,-36(s0)
	lw	a2,120(a5)
	lw	a3,124(a5)
	.loc 2 334 43
	lw	a5,-36(s0)
	lw	a4,72(a5)
	lw	a5,76(a5)
	.loc 2 334 16
	mv	a0,a2
	mv	a1,a4
	bne	a0,a1,.L48
	beq	a3,a5,.L49
.L48:
	.loc 2 335 24
	li	a5,7
	j	.L39
.L49:
	.loc 2 337 31
	lw	a5,-36(s0)
	li	a4,1
	sb	a4,104(a5)
	.loc 2 338 13
	j	.L46
.L43:
	.loc 2 341 26
	lw	a5,-36(s0)
	lw	a4,128(a5)
	lw	a5,132(a5)
	.loc 2 341 40
	lw	a3,-36(s0)
	lw	a0,8(a3)
	lw	a1,12(a3)
	.loc 2 341 36
	add	a2,a4,a0
	mv	a6,a2
	sltu	a6,a6,a4
	add	a3,a5,a1
	add	a5,a6,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	lw	a3,-36(s0)
	sw	a4,128(a3)
	sw	a5,132(a3)
	.loc 2 342 31
	lw	a5,-36(s0)
	li	a4,2
	sb	a4,104(a5)
	.loc 2 343 13
	j	.L46
.L40:
	.loc 2 346 26
	lw	a5,-36(s0)
	lw	a4,136(a5)
	lw	a5,140(a5)
	.loc 2 346 44
	lw	a3,-36(s0)
	lw	a0,8(a3)
	lw	a1,12(a3)
	.loc 2 346 40
	add	a2,a4,a0
	mv	a6,a2
	sltu	a6,a6,a4
	add	a3,a5,a1
	add	a5,a6,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	lw	a3,-36(s0)
	sw	a4,136(a3)
	sw	a5,140(a3)
	.loc 2 348 38
	lw	a5,-36(s0)
	addi	a4,a5,128
	.loc 2 347 35
	lw	a5,-36(s0)
	lw	a5,144(a5)
	mv	a2,a5
	li	a1,24
	mv	a0,a4
	call	xz_crc32
	mv	a4,a0
	.loc 2 347 33 discriminator 1
	lw	a5,-36(s0)
	sw	a4,144(a5)
	.loc 2 351 23
	lw	a5,-36(s0)
	lw	a4,120(a5)
	lw	a5,124(a5)
	.loc 2 351 13
	li	a0,-1
	li	a1,-1
	add	a2,a4,a0
	mv	a6,a2
	sltu	a6,a6,a4
	add	a3,a5,a1
	add	a5,a6,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	lw	a3,-36(s0)
	sw	a4,120(a3)
	sw	a5,124(a3)
	.loc 2 352 31
	lw	a5,-36(s0)
	li	a4,1
	sb	a4,104(a5)
	.loc 2 353 13
	j	.L46
.L50:
	.loc 2 355 13
	nop
.L46:
	.loc 2 357 22
	lw	a5,-36(s0)
	lw	a2,120(a5)
	lw	a3,124(a5)
	.loc 2 357 29
	mv	a5,a2
	or	a5,a5,a3
	bne	a5,zero,.L47
	.loc 2 359 12
	li	a5,1
.L39:
	.loc 2 360 1
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
	.size	dec_index, .-dec_index
	.section	.text.crc_validate,"ax",@progbits
	.align	1
	.type	crc_validate, @function
crc_validate:
.LFB10:
	.loc 2 369 1
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
.L55:
	.loc 2 371 14
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 2 371 27
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 2 371 12
	bne	a4,a5,.L52
	.loc 2 372 20
	li	a5,0
	j	.L53
.L52:
	.loc 2 374 16
	lw	a5,-20(s0)
	lw	a4,24(a5)
	.loc 2 374 26
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 2 374 22
	srl	a5,a4,a5
	.loc 2 374 33
	andi	a4,a5,255
	.loc 2 374 45
	lw	a5,-24(s0)
	lw	a3,0(a5)
	.loc 2 374 51
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 2 374 59
	addi	a1,a5,1
	lw	a2,-24(s0)
	sw	a1,4(a2)
	.loc 2 374 49
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 374 12
	beq	a4,a5,.L54
	.loc 2 375 20
	li	a5,7
	j	.L53
.L54:
	.loc 2 377 10
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 2 377 16
	addi	a4,a5,8
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 2 379 15
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 2 379 21
	lw	a4,-28(s0)
	bgtu	a4,a5,.L55
	.loc 2 381 12
	lw	a5,-20(s0)
	sw	zero,24(a5)
	.loc 2 382 12
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 2 384 12
	li	a5,1
.L53:
	.loc 2 385 1
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
	.size	crc_validate, .-crc_validate
	.section	.rodata
	.align	2
.LC0:
	.string	"\3757zXZ"
	.section	.text.dec_stream_header,"ax",@progbits
	.align	1
	.type	dec_stream_header, @function
dec_stream_header:
.LFB11:
	.loc 2 410 1
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
	.loc 2 411 25
	lw	a5,-20(s0)
	addi	a4,a5,160
	.loc 2 411 11
	li	a2,6
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 2 411 8 discriminator 1
	beq	a5,zero,.L57
	.loc 2 412 16
	li	a5,5
	j	.L58
.L57:
	.loc 2 414 18
	lw	a5,-20(s0)
	addi	a5,a5,160
	.loc 2 414 9
	addi	a5,a5,6
	li	a2,0
	li	a1,2
	mv	a0,a5
	call	xz_crc32
	mv	s1,a0
	.loc 2 415 35
	lw	a5,-20(s0)
	addi	a5,a5,160
	.loc 2 415 16
	addi	a5,a5,8
	mv	a0,a5
	call	get_unaligned_le32
	mv	a5,a0
	.loc 2 414 8
	beq	s1,a5,.L59
	.loc 2 416 16
	li	a5,7
	j	.L58
.L59:
	.loc 2 418 20
	lw	a5,-20(s0)
	lbu	a5,166(a5)
	.loc 2 418 8
	beq	a5,zero,.L60
	.loc 2 419 16
	li	a5,6
	j	.L58
.L60:
	.loc 2 428 32
	lw	a5,-20(s0)
	lbu	a4,167(a5)
	.loc 2 428 19
	lw	a5,-20(s0)
	sb	a4,28(a5)
	.loc 2 437 10
	lw	a5,-20(s0)
	lbu	a4,28(a5)
	.loc 2 437 8
	li	a5,1
	bleu	a4,a5,.L61
	.loc 2 438 16
	li	a5,6
	j	.L58
.L61:
	.loc 2 441 12
	li	a5,0
.L58:
	.loc 2 442 1
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
.LFE11:
	.size	dec_stream_header, .-dec_stream_header
	.section	.rodata
	.align	2
.LC1:
	.string	"YZ"
	.section	.text.dec_stream_footer,"ax",@progbits
	.align	1
	.type	dec_stream_footer, @function
dec_stream_footer:
.LFB12:
	.loc 2 446 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 2 447 18
	lw	a5,-36(s0)
	addi	a5,a5,160
	.loc 2 447 11
	addi	a4,a5,10
	li	a2,2
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 2 447 8 discriminator 1
	beq	a5,zero,.L63
	.loc 2 448 16
	li	a5,7
	j	.L64
.L63:
	.loc 2 450 18
	lw	a5,-36(s0)
	addi	a5,a5,160
	.loc 2 450 9
	addi	a5,a5,4
	li	a2,0
	li	a1,6
	mv	a0,a5
	call	xz_crc32
	mv	s1,a0
	.loc 2 450 70 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,160
	.loc 2 450 44 discriminator 1
	mv	a0,a5
	call	get_unaligned_le32
	mv	a5,a0
	.loc 2 450 8 discriminator 2
	beq	s1,a5,.L65
	.loc 2 451 16
	li	a5,7
	j	.L64
.L65:
	.loc 2 458 18
	lw	a5,-36(s0)
	lw	a4,112(a5)
	lw	a5,116(a5)
	.loc 2 458 24
	slli	a3,a5,30
	srli	s2,a4,2
	add	s2,a3,s2
	srli	s3,a5,2
	.loc 2 458 52
	lw	a5,-36(s0)
	addi	a5,a5,160
	.loc 2 458 33
	addi	a5,a5,4
	mv	a0,a5
	call	get_unaligned_le32
	mv	a5,a0
	.loc 2 458 33 is_stmt 0 discriminator 1
	mv	s4,a5
	li	s5,0
	.loc 2 458 8 is_stmt 1 discriminator 1
	mv	a4,s2
	mv	a5,s4
	bne	a4,a5,.L70
	mv	a4,s3
	mv	a5,s5
	beq	a4,a5,.L71
.L70:
	.loc 2 459 16
	li	a5,7
	j	.L64
.L71:
	.loc 2 461 20
	lw	a5,-36(s0)
	lbu	a5,168(a5)
	.loc 2 461 8
	bne	a5,zero,.L68
	.loc 2 461 43 discriminator 1
	lw	a5,-36(s0)
	lbu	a4,169(a5)
	.loc 2 461 51 discriminator 1
	lw	a5,-36(s0)
	lbu	a5,28(a5)
	.loc 2 461 29 discriminator 1
	beq	a4,a5,.L69
.L68:
	.loc 2 462 16
	li	a5,7
	j	.L64
.L69:
	.loc 2 468 12
	li	a5,1
.L64:
	.loc 2 469 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	dec_stream_footer, .-dec_stream_footer
	.section	.text.dec_block_header,"ax",@progbits
	.align	1
	.type	dec_block_header, @function
dec_block_header:
.LFB13:
	.loc 2 473 1
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
	.loc 2 480 12
	lw	a5,-36(s0)
	lw	a5,156(a5)
	.loc 2 480 18
	addi	a4,a5,-4
	lw	a5,-36(s0)
	sw	a4,156(a5)
	.loc 2 481 25
	lw	a5,-36(s0)
	addi	a4,a5,160
	.loc 2 481 9
	lw	a5,-36(s0)
	lw	a5,156(a5)
	li	a2,0
	mv	a1,a5
	mv	a0,a4
	call	xz_crc32
	mv	s1,a0
	.loc 2 482 35
	lw	a5,-36(s0)
	addi	a4,a5,160
	.loc 2 482 56
	lw	a5,-36(s0)
	lw	a5,156(a5)
	.loc 2 482 16
	add	a5,a4,a5
	mv	a0,a5
	call	get_unaligned_le32
	mv	a5,a0
	.loc 2 481 8
	beq	s1,a5,.L73
	.loc 2 483 16
	li	a5,7
	j	.L74
.L73:
	.loc 2 485 17
	lw	a5,-36(s0)
	li	a4,2
	sw	a4,152(a5)
	.loc 2 494 20
	lw	a5,-36(s0)
	lbu	a5,161(a5)
	.loc 2 494 24
	andi	a5,a5,63
	.loc 2 494 8
	beq	a5,zero,.L75
	.loc 2 496 16
	li	a5,6
	j	.L74
.L75:
	.loc 2 499 20
	lw	a5,-36(s0)
	lbu	a5,161(a5)
	.loc 2 499 24
	andi	a5,a5,64
	.loc 2 499 8
	beq	a5,zero,.L76
	.loc 2 500 31
	lw	a5,-36(s0)
	addi	a4,a5,160
	.loc 2 500 13
	lw	a5,-36(s0)
	addi	a2,a5,152
	lw	a5,-36(s0)
	lw	a5,156(a5)
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	dec_vli
	mv	a5,a0
	mv	a4,a5
	.loc 2 500 12 discriminator 1
	li	a5,1
	beq	a4,a5,.L77
	.loc 2 502 20
	li	a5,7
	j	.L74
.L77:
	.loc 2 504 39
	lw	a5,-36(s0)
	lw	a4,8(a5)
	lw	a5,12(a5)
	.loc 2 504 36
	lw	a3,-36(s0)
	sw	a4,32(a3)
	sw	a5,36(a3)
	j	.L78
.L76:
	.loc 2 506 36
	lw	a3,-36(s0)
	li	a4,-1
	li	a5,-1
	sw	a4,32(a3)
	sw	a5,36(a3)
.L78:
	.loc 2 510 20
	lw	a5,-36(s0)
	lbu	a5,161(a5)
	.loc 2 510 9
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 2 510 8
	bge	a5,zero,.L79
	.loc 2 511 31
	lw	a5,-36(s0)
	addi	a4,a5,160
	.loc 2 511 13
	lw	a5,-36(s0)
	addi	a2,a5,152
	lw	a5,-36(s0)
	lw	a5,156(a5)
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	dec_vli
	mv	a5,a0
	mv	a4,a5
	.loc 2 511 12 discriminator 1
	li	a5,1
	beq	a4,a5,.L80
	.loc 2 513 20
	li	a5,7
	j	.L74
.L80:
	.loc 2 515 41
	lw	a5,-36(s0)
	lw	a4,8(a5)
	lw	a5,12(a5)
	.loc 2 515 38
	lw	a3,-36(s0)
	sw	a4,40(a3)
	sw	a5,44(a3)
	j	.L81
.L79:
	.loc 2 517 38
	lw	a3,-36(s0)
	li	a4,-1
	li	a5,-1
	sw	a4,40(a3)
	sw	a5,44(a3)
.L81:
	.loc 2 541 16
	lw	a5,-36(s0)
	lw	a4,156(a5)
	.loc 2 541 31
	lw	a5,-36(s0)
	lw	a5,152(a5)
	.loc 2 541 22
	sub	a4,a4,a5
	.loc 2 541 8
	li	a5,1
	bgtu	a4,a5,.L82
	.loc 2 542 16
	li	a5,7
	j	.L74
.L82:
	.loc 2 545 28
	lw	a5,-36(s0)
	lw	a5,152(a5)
	.loc 2 545 32
	addi	a3,a5,1
	lw	a4,-36(s0)
	sw	a3,152(a4)
	.loc 2 545 20
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a4,160(a5)
	.loc 2 545 8
	li	a5,33
	beq	a4,a5,.L83
	.loc 2 546 16
	li	a5,6
	j	.L74
.L83:
	.loc 2 549 28
	lw	a5,-36(s0)
	lw	a5,152(a5)
	.loc 2 549 32
	addi	a3,a5,1
	lw	a4,-36(s0)
	sw	a3,152(a4)
	.loc 2 549 20
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a4,160(a5)
	.loc 2 549 8
	li	a5,1
	beq	a4,a5,.L84
	.loc 2 550 16
	li	a5,6
	j	.L74
.L84:
	.loc 2 553 16
	lw	a5,-36(s0)
	lw	a4,156(a5)
	.loc 2 553 31
	lw	a5,-36(s0)
	lw	a5,152(a5)
	.loc 2 553 8
	bne	a4,a5,.L85
	.loc 2 554 16
	li	a5,7
	j	.L74
.L85:
	.loc 2 556 11
	lw	a5,-36(s0)
	lw	a2,1184(a5)
	.loc 2 556 59
	lw	a5,-36(s0)
	lw	a5,152(a5)
	.loc 2 556 63
	addi	a3,a5,1
	lw	a4,-36(s0)
	sw	a3,152(a4)
	.loc 2 556 11
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a5,160(a5)
	mv	a1,a5
	mv	a0,a2
	call	xz_dec_lzma2_reset
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 2 557 8
	lbu	a5,-17(s0)
	beq	a5,zero,.L87
	.loc 2 558 16
	lbu	a5,-17(s0)
	j	.L74
.L88:
	.loc 2 562 32
	lw	a5,-36(s0)
	lw	a5,152(a5)
	.loc 2 562 36
	addi	a3,a5,1
	lw	a4,-36(s0)
	sw	a3,152(a4)
	.loc 2 562 24
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a5,160(a5)
	.loc 2 562 12
	beq	a5,zero,.L87
	.loc 2 563 20
	li	a5,6
	j	.L74
.L87:
	.loc 2 561 19
	lw	a5,-36(s0)
	lw	a4,152(a5)
	.loc 2 561 33
	lw	a5,-36(s0)
	lw	a5,156(a5)
	.loc 2 561 24
	bltu	a4,a5,.L88
	.loc 2 565 17
	lw	a5,-36(s0)
	sw	zero,152(a5)
	.loc 2 566 25
	lw	a5,-36(s0)
	li	a3,0
	li	a4,0
	sw	a3,56(a5)
	sw	a4,60(a5)
	.loc 2 567 27
	lw	a5,-36(s0)
	sw	a3,64(a5)
	sw	a4,68(a5)
	.loc 2 569 12
	li	a5,0
.L74:
	.loc 2 570 1
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
.LFE13:
	.size	dec_block_header, .-dec_block_header
	.section	.text.dec_main,"ax",@progbits
	.align	1
	.type	dec_main, @function
dec_main:
.LFB14:
	.loc 2 573 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s2,52(sp)
	sw	s3,48(sp)
	sw	s4,44(sp)
	sw	s5,40(sp)
	sw	s6,36(sp)
	sw	s7,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	.cfi_offset 22, -28
	.cfi_offset 23, -32
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	.loc 2 580 20
	lw	a5,-56(s0)
	lw	a4,4(a5)
	.loc 2 580 17
	lw	a5,-52(s0)
	sw	a4,16(a5)
.L121:
	.loc 2 583 18
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	.loc 2 583 9
	li	a4,9
	beq	a5,a4,.L90
	li	a4,9
	bgt	a5,a4,.L122
	li	a4,8
	beq	a5,a4,.L92
	li	a4,8
	bgt	a5,a4,.L122
	li	a4,7
	beq	a5,a4,.L115
	li	a4,7
	bgt	a5,a4,.L122
	li	a4,6
	beq	a5,a4,.L94
	li	a4,6
	bgt	a5,a4,.L122
	li	a4,5
	beq	a5,a4,.L95
	li	a4,5
	bgt	a5,a4,.L122
	li	a4,4
	beq	a5,a4,.L109
	li	a4,4
	bgt	a5,a4,.L122
	li	a4,3
	beq	a5,a4,.L97
	li	a4,3
	bgt	a5,a4,.L122
	li	a4,2
	beq	a5,a4,.L98
	li	a4,2
	bgt	a5,a4,.L122
	beq	a5,zero,.L99
	li	a4,1
	beq	a5,a4,.L100
	.loc 2 756 13
	j	.L122
.L99:
	.loc 2 593 18
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	fill_temp
	mv	a5,a0
	.loc 2 593 17 discriminator 1
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 2 593 16 discriminator 1
	beq	a5,zero,.L101
	.loc 2 594 24
	li	a5,0
	j	.L102
.L101:
	.loc 2 603 25
	lw	a5,-52(s0)
	li	a4,1
	sb	a4,0(a5)
	.loc 2 605 19
	lw	a0,-52(s0)
	call	dec_stream_header
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 2 606 16
	lbu	a5,-33(s0)
	beq	a5,zero,.L100
	.loc 2 607 24
	lbu	a5,-33(s0)
	j	.L102
.L100:
	.loc 2 614 18
	lw	a5,-56(s0)
	lw	a4,4(a5)
	.loc 2 614 31
	lw	a5,-56(s0)
	lw	a5,8(a5)
	.loc 2 614 16
	bne	a4,a5,.L103
	.loc 2 615 24
	li	a5,0
	j	.L102
.L103:
	.loc 2 618 18
	lw	a5,-56(s0)
	lw	a4,0(a5)
	.loc 2 618 24
	lw	a5,-56(s0)
	lw	a5,4(a5)
	.loc 2 618 22
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 2 618 16
	bne	a5,zero,.L104
	.loc 2 619 32
	lw	a5,-56(s0)
	lw	a5,4(a5)
	.loc 2 619 40
	addi	a3,a5,1
	lw	a4,-56(s0)
	sw	a3,4(a4)
	.loc 2 619 29
	lw	a4,-52(s0)
	sw	a5,16(a4)
	.loc 2 620 29
	lw	a5,-52(s0)
	li	a4,6
	sb	a4,0(a5)
	.loc 2 621 17
	j	.L105
.L104:
	.loc 2 629 31
	lw	a5,-56(s0)
	lw	a4,0(a5)
	.loc 2 629 37
	lw	a5,-56(s0)
	lw	a5,4(a5)
	.loc 2 629 35
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 2 629 47
	addi	a5,a5,1
	.loc 2 629 52
	slli	a4,a5,2
	.loc 2 629 17
	lw	a5,-52(s0)
	sw	a4,48(a5)
	.loc 2 631 43
	lw	a5,-52(s0)
	lw	a4,48(a5)
	.loc 2 631 26
	lw	a5,-52(s0)
	sw	a4,156(a5)
	.loc 2 632 25
	lw	a5,-52(s0)
	sw	zero,152(a5)
	.loc 2 633 25
	lw	a5,-52(s0)
	li	a4,2
	sb	a4,0(a5)
.L98:
	.loc 2 639 18
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	fill_temp
	mv	a5,a0
	.loc 2 639 17 discriminator 1
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 2 639 16 discriminator 1
	beq	a5,zero,.L106
	.loc 2 640 24
	li	a5,0
	j	.L102
.L106:
	.loc 2 642 19
	lw	a0,-52(s0)
	call	dec_block_header
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 2 643 16
	lbu	a5,-33(s0)
	beq	a5,zero,.L107
	.loc 2 644 24
	lbu	a5,-33(s0)
	j	.L102
.L107:
	.loc 2 646 25
	lw	a5,-52(s0)
	li	a4,3
	sb	a4,0(a5)
.L97:
	.loc 2 652 19
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	dec_block
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 2 653 16
	lbu	a4,-33(s0)
	li	a5,1
	beq	a4,a5,.L108
	.loc 2 654 24
	lbu	a5,-33(s0)
	j	.L102
.L108:
	.loc 2 656 25
	lw	a5,-52(s0)
	li	a4,4
	sb	a4,0(a5)
	.loc 2 669 19
	j	.L109
.L112:
	.loc 2 670 22
	lw	a5,-56(s0)
	lw	a4,4(a5)
	.loc 2 670 35
	lw	a5,-56(s0)
	lw	a5,8(a5)
	.loc 2 670 20
	bne	a4,a5,.L110
	.loc 2 671 28
	li	a5,0
	j	.L102
.L110:
	.loc 2 673 22
	lw	a5,-56(s0)
	lw	a4,0(a5)
	.loc 2 673 28
	lw	a5,-56(s0)
	lw	a5,4(a5)
	.loc 2 673 36
	addi	a2,a5,1
	lw	a3,-56(s0)
	sw	a2,4(a3)
	.loc 2 673 26
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 2 673 20
	beq	a5,zero,.L111
	.loc 2 674 28
	li	a5,7
	j	.L102
.L111:
	.loc 2 676 27
	lw	a5,-52(s0)
	lw	a4,56(a5)
	lw	a5,60(a5)
	.loc 2 676 17
	li	a0,1
	li	a1,0
	add	a2,a4,a0
	mv	a6,a2
	sltu	a6,a6,a4
	add	a3,a5,a1
	add	a5,a6,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	lw	a3,-52(s0)
	sw	a4,56(a3)
	sw	a5,60(a3)
.L109:
	.loc 2 669 28
	lw	a5,-52(s0)
	lw	a4,56(a5)
	lw	a5,60(a5)
	.loc 2 669 40
	andi	s2,a4,3
	andi	s3,a5,0
	.loc 2 669 20
	mv	a5,s2
	or	a5,a5,s3
	bne	a5,zero,.L112
	.loc 2 679 25
	lw	a5,-52(s0)
	li	a4,5
	sb	a4,0(a5)
.L95:
	.loc 2 685 18
	lw	a5,-52(s0)
	lbu	a4,28(a5)
	.loc 2 685 16
	li	a5,1
	bne	a4,a5,.L113
	.loc 2 686 23
	li	a2,32
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	crc_validate
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 2 687 20
	lbu	a4,-33(s0)
	li	a5,1
	beq	a4,a5,.L113
	.loc 2 688 28
	lbu	a5,-33(s0)
	j	.L102
.L113:
	.loc 2 701 25
	lw	a5,-52(s0)
	li	a4,1
	sb	a4,0(a5)
	.loc 2 702 13
	j	.L105
.L94:
	.loc 2 705 19
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	dec_index
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 2 706 16
	lbu	a4,-33(s0)
	li	a5,1
	beq	a4,a5,.L114
	.loc 2 707 24
	lbu	a5,-33(s0)
	j	.L102
.L114:
	.loc 2 709 25
	lw	a5,-52(s0)
	li	a4,7
	sb	a4,0(a5)
	.loc 2 715 19
	j	.L115
.L117:
	.loc 2 717 22
	lw	a5,-56(s0)
	lw	a4,4(a5)
	.loc 2 717 35
	lw	a5,-56(s0)
	lw	a5,8(a5)
	.loc 2 717 20
	bne	a4,a5,.L116
	.loc 2 718 21
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	index_update
	.loc 2 719 28
	li	a5,0
	j	.L102
.L116:
	.loc 2 722 22
	lw	a5,-56(s0)
	lw	a4,0(a5)
	.loc 2 722 28
	lw	a5,-56(s0)
	lw	a5,4(a5)
	.loc 2 722 36
	addi	a2,a5,1
	lw	a3,-56(s0)
	sw	a2,4(a3)
	.loc 2 722 26
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 2 722 20
	beq	a5,zero,.L115
	.loc 2 723 28
	li	a5,7
	j	.L102
.L115:
	.loc 2 715 29
	lw	a5,-52(s0)
	lw	a4,112(a5)
	lw	a5,116(a5)
	.loc 2 715 39
	lw	a3,-56(s0)
	lw	a2,4(a3)
	.loc 2 715 51
	lw	a3,-52(s0)
	lw	a3,16(a3)
	.loc 2 715 48
	sub	a3,a2,a3
	mv	s6,a3
	li	s7,0
	.loc 2 715 35
	add	a2,a4,s6
	mv	a1,a2
	sltu	a1,a1,a4
	add	a3,a5,s7
	add	a5,a1,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	.loc 2 716 21
	andi	s4,a4,3
	andi	s5,a5,0
	.loc 2 715 20
	mv	a5,s4
	or	a5,a5,s5
	bne	a5,zero,.L117
	.loc 2 727 13
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	index_update
	.loc 2 730 26
	lw	a5,-52(s0)
	addi	a4,a5,80
	.loc 2 730 42
	lw	a5,-52(s0)
	addi	a5,a5,128
	.loc 2 730 19
	li	a2,24
	mv	a1,a5
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 2 730 16 discriminator 1
	beq	a5,zero,.L118
	.loc 2 732 24
	li	a5,7
	j	.L102
.L118:
	.loc 2 734 25
	lw	a5,-52(s0)
	li	a4,8
	sb	a4,0(a5)
.L92:
	.loc 2 740 19
	li	a2,32
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	crc_validate
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 2 741 16
	lbu	a4,-33(s0)
	li	a5,1
	beq	a4,a5,.L119
	.loc 2 742 24
	lbu	a5,-33(s0)
	j	.L102
.L119:
	.loc 2 744 26
	lw	a5,-52(s0)
	li	a4,12
	sw	a4,156(a5)
	.loc 2 745 25
	lw	a5,-52(s0)
	li	a4,9
	sb	a4,0(a5)
.L90:
	.loc 2 751 18
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	fill_temp
	mv	a5,a0
	.loc 2 751 17 discriminator 1
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 2 751 16 discriminator 1
	beq	a5,zero,.L120
	.loc 2 752 24
	li	a5,0
	j	.L102
.L120:
	.loc 2 754 20
	lw	a0,-52(s0)
	call	dec_stream_footer
	mv	a5,a0
	j	.L102
.L122:
	.loc 2 756 13
	nop
.L105:
	.loc 2 583 9
	j	.L121
.L102:
	.loc 2 761 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s2,52(sp)
	.cfi_restore 18
	lw	s3,48(sp)
	.cfi_restore 19
	lw	s4,44(sp)
	.cfi_restore 20
	lw	s5,40(sp)
	.cfi_restore 21
	lw	s6,36(sp)
	.cfi_restore 22
	lw	s7,32(sp)
	.cfi_restore 23
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	dec_main, .-dec_main
	.section	.text.xz_dec_run,"ax",@progbits
	.align	1
	.globl	xz_dec_run
	.type	xz_dec_run, @function
xz_dec_run:
.LFB15:
	.loc 2 789 1
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
	.loc 2 794 12
	lw	a5,-36(s0)
	lbu	a5,29(a5)
	.loc 2 794 8
	bne	a5,zero,.L124
	.loc 2 795 9
	lw	a0,-36(s0)
	call	xz_dec_reset
.L124:
	.loc 2 797 14
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 2 798 15
	lw	a5,-40(s0)
	lw	a5,16(a5)
	sw	a5,-28(s0)
	.loc 2 799 11
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	dec_main
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 2 801 12
	lw	a5,-36(s0)
	lbu	a5,29(a5)
	.loc 2 801 8
	bne	a5,zero,.L125
	.loc 2 802 12
	lbu	a5,-17(s0)
	bne	a5,zero,.L126
	.loc 2 803 20
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 2 803 33
	lw	a5,-40(s0)
	lw	a5,8(a5)
	.loc 2 804 37
	bne	a4,a5,.L127
	.loc 2 803 17
	li	a5,7
	sb	a5,-17(s0)
	j	.L126
.L127:
	li	a5,8
	sb	a5,-17(s0)
.L126:
	.loc 2 806 12
	lbu	a4,-17(s0)
	li	a5,1
	beq	a4,a5,.L128
	.loc 2 807 23
	lw	a5,-40(s0)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	.loc 2 808 24
	lw	a5,-40(s0)
	lw	a4,-28(s0)
	sw	a4,16(a5)
	j	.L128
.L125:
	.loc 2 811 15
	lbu	a5,-17(s0)
	bne	a5,zero,.L129
	.loc 2 811 45 discriminator 1
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 2 811 29 discriminator 1
	lw	a4,-24(s0)
	bne	a4,a5,.L129
	.loc 2 812 30
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 2 812 13
	lw	a4,-28(s0)
	bne	a4,a5,.L129
	.loc 2 813 14
	lw	a5,-36(s0)
	lbu	a5,30(a5)
	.loc 2 813 12
	beq	a5,zero,.L130
	.loc 2 814 17
	li	a5,8
	sb	a5,-17(s0)
.L130:
	.loc 2 816 28
	lw	a5,-36(s0)
	li	a4,1
	sb	a4,30(a5)
	j	.L128
.L129:
	.loc 2 818 28
	lw	a5,-36(s0)
	sb	zero,30(a5)
.L128:
	.loc 2 821 12
	lbu	a5,-17(s0)
	.loc 2 822 1
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
	.size	xz_dec_run, .-xz_dec_run
	.section	.text.xz_dec_init,"ax",@progbits
	.align	1
	.globl	xz_dec_init
	.type	xz_dec_init, @function
xz_dec_init:
.LFB16:
	.loc 2 825 1
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
	sb	a5,-33(s0)
	.loc 2 826 24
	li	a0,1192
	call	simple_malloc
	sw	a0,-20(s0)
	.loc 2 827 8
	lw	a5,-20(s0)
	bne	a5,zero,.L133
	.loc 2 828 15
	li	a5,0
	j	.L134
.L133:
	.loc 2 830 13
	lw	a5,-20(s0)
	lbu	a4,-33(s0)
	sb	a4,29(a5)
	.loc 2 838 16
	lbu	a5,-33(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	xz_dec_lzma2_create
	mv	a4,a0
	.loc 2 838 14 discriminator 1
	lw	a5,-20(s0)
	sw	a4,1184(a5)
	.loc 2 839 10
	lw	a5,-20(s0)
	lw	a5,1184(a5)
	.loc 2 839 8
	beq	a5,zero,.L138
	.loc 2 842 5
	lw	a0,-20(s0)
	call	xz_dec_reset
	.loc 2 843 12
	lw	a5,-20(s0)
	j	.L134
.L138:
	.loc 2 840 9
	nop
.L136:
	.loc 2 850 5
	lw	a0,-20(s0)
	call	simple_free
	.loc 2 851 11
	li	a5,0
.L134:
	.loc 2 852 1
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
	.size	xz_dec_init, .-xz_dec_init
	.section	.text.xz_dec_reset,"ax",@progbits
	.align	1
	.globl	xz_dec_reset
	.type	xz_dec_reset, @function
xz_dec_reset:
.LFB17:
	.loc 2 855 1
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
	.loc 2 856 17
	lw	a5,-20(s0)
	sb	zero,0(a5)
	.loc 2 857 24
	lw	a5,-20(s0)
	sb	zero,30(a5)
	.loc 2 858 12
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 2 859 12
	lw	a5,-20(s0)
	sw	zero,24(a5)
	.loc 2 860 12
	lw	a5,-20(s0)
	addi	a5,a5,56
	.loc 2 860 5
	li	a2,48
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 861 12
	lw	a5,-20(s0)
	addi	a5,a5,104
	.loc 2 861 5
	li	a2,48
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 862 17
	lw	a5,-20(s0)
	sw	zero,152(a5)
	.loc 2 863 18
	lw	a5,-20(s0)
	li	a4,12
	sw	a4,156(a5)
	.loc 2 864 1
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
.LFE17:
	.size	xz_dec_reset, .-xz_dec_reset
	.section	.text.xz_dec_end,"ax",@progbits
	.align	1
	.globl	xz_dec_end
	.type	xz_dec_end, @function
xz_dec_end:
.LFB18:
	.loc 2 867 1
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
	.loc 2 868 8
	lw	a5,-20(s0)
	beq	a5,zero,.L142
	.loc 2 869 9
	lw	a5,-20(s0)
	lw	a5,1184(a5)
	mv	a0,a5
	call	xz_dec_lzma2_end
	.loc 2 873 9
	lw	a0,-20(s0)
	call	simple_free
.L142:
	.loc 2 875 1
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
	.size	xz_dec_end, .-xz_dec_end
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz/xz.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz/xz_stream.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz/xz_private.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8d2
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1b
	.4byte	.LASF106
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x37
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x1c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x1d
	.byte	0x4
	.uleb128 0x11
	.4byte	0x84
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	0x9c
	.uleb128 0x11
	.4byte	0x92
	.uleb128 0x1e
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x5a
	.uleb128 0x12
	.4byte	0x9d
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x76
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x4
	.byte	0x37
	.byte	0x20
	.4byte	0x7d
	.uleb128 0xd
	.4byte	.LASF20
	.4byte	0x5a
	.byte	0x5
	.byte	0x38
	.4byte	0xe8
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF21
	.4byte	0x5a
	.byte	0x5
	.byte	0x70
	.4byte	0x12e
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x5
	.byte	0x8c
	.4byte	0x187
	.uleb128 0x7
	.string	"in"
	.byte	0x5
	.byte	0x8d
	.byte	0x14
	.4byte	0x18c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x5
	.byte	0x8e
	.byte	0xc
	.4byte	0x2b
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x5
	.byte	0x8f
	.byte	0xc
	.4byte	0x2b
	.byte	0x8
	.uleb128 0x7
	.string	"out"
	.byte	0x5
	.byte	0x91
	.byte	0xe
	.4byte	0x191
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x5
	.byte	0x92
	.byte	0xc
	.4byte	0x2b
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x5
	.byte	0x93
	.byte	0xc
	.4byte	0x2b
	.byte	0x14
	.byte	0
	.uleb128 0x12
	.4byte	0x12e
	.uleb128 0x6
	.4byte	0xa9
	.uleb128 0x6
	.4byte	0x9d
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x6
	.byte	0x2b
	.byte	0x12
	.4byte	0xba
	.uleb128 0xd
	.4byte	.LASF36
	.4byte	0x5a
	.byte	0x6
	.byte	0x34
	.4byte	0x1ca
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0xa
	.byte	0
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x2
	.byte	0x14
	.4byte	0x1fd
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x2
	.byte	0x15
	.byte	0xe
	.4byte	0x196
	.byte	0
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x2
	.byte	0x16
	.byte	0xe
	.4byte	0x196
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x2
	.byte	0x17
	.byte	0xe
	.4byte	0xae
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.4byte	0x5a
	.byte	0x1c
	.byte	0xa
	.4byte	0x245
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.byte	0x18
	.byte	0x48
	.4byte	0x274
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x196
	.byte	0
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x2
	.byte	0x53
	.byte	0x12
	.4byte	0x196
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x2
	.byte	0x56
	.byte	0x12
	.4byte	0xae
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x30
	.byte	0x5a
	.4byte	0x2b0
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x2
	.byte	0x5c
	.byte	0x12
	.4byte	0x196
	.byte	0
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x2
	.byte	0x5f
	.byte	0x12
	.4byte	0x196
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x2
	.byte	0x62
	.byte	0x12
	.4byte	0x196
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x2
	.byte	0x68
	.byte	0x1c
	.4byte	0x1ca
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.4byte	0x5a
	.byte	0x6e
	.byte	0xe
	.4byte	0x2ce
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.byte	0x30
	.byte	0x6c
	.4byte	0x30a
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x2
	.byte	0x72
	.byte	0xb
	.4byte	0x2b0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x2
	.byte	0x75
	.byte	0x12
	.4byte	0x196
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x2
	.byte	0x78
	.byte	0x12
	.4byte	0x196
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x2
	.byte	0x7e
	.byte	0x1c
	.4byte	0x1ca
	.byte	0x18
	.byte	0
	.uleb128 0x1f
	.2byte	0x408
	.byte	0x2
	.byte	0x88
	.byte	0x5
	.4byte	0x33c
	.uleb128 0x7
	.string	"pos"
	.byte	0x2
	.byte	0x89
	.byte	0x10
	.4byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x2
	.byte	0x8a
	.byte	0x10
	.4byte	0x2b
	.byte	0x4
	.uleb128 0x7
	.string	"buf"
	.byte	0x2
	.byte	0x8b
	.byte	0x11
	.4byte	0x33c
	.byte	0x8
	.byte	0
	.uleb128 0x20
	.4byte	0x9d
	.4byte	0x34d
	.uleb128 0x21
	.4byte	0x37
	.2byte	0x3ff
	.byte	0
	.uleb128 0x22
	.4byte	.LASF64
	.2byte	0x4a8
	.byte	0x2
	.byte	0x1a
	.byte	0x8
	.4byte	0x413
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x2
	.byte	0x27
	.byte	0x7
	.4byte	0x1fd
	.byte	0
	.uleb128 0x7
	.string	"pos"
	.byte	0x2
	.byte	0x2a
	.byte	0xe
	.4byte	0xae
	.byte	0x4
	.uleb128 0x7
	.string	"vli"
	.byte	0x2
	.byte	0x2d
	.byte	0xe
	.4byte	0x196
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x2
	.byte	0x30
	.byte	0xc
	.4byte	0x2b
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x2
	.byte	0x31
	.byte	0xc
	.4byte	0x2b
	.byte	0x14
	.uleb128 0x7
	.string	"crc"
	.byte	0x2
	.byte	0x38
	.byte	0xe
	.4byte	0xae
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x2
	.byte	0x3c
	.byte	0x13
	.4byte	0x1a2
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x2
	.byte	0x3f
	.byte	0x12
	.4byte	0xc6
	.byte	0x1d
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x2
	.byte	0x45
	.byte	0xa
	.4byte	0x413
	.byte	0x1e
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0x2
	.byte	0x57
	.byte	0x7
	.4byte	0x245
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0x2
	.byte	0x69
	.byte	0x7
	.4byte	0x274
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x2
	.byte	0x7f
	.byte	0x7
	.4byte	0x2ce
	.byte	0x68
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x2
	.byte	0x8c
	.byte	0x7
	.4byte	0x30a
	.byte	0x98
	.uleb128 0x23
	.4byte	.LASF74
	.byte	0x2
	.byte	0x8e
	.byte	0x1a
	.4byte	0x41f
	.2byte	0x4a0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF75
	.uleb128 0x24
	.4byte	.LASF107
	.uleb128 0x6
	.4byte	0x41a
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x7
	.byte	0x7e
	.4byte	0x435
	.uleb128 0x3
	.4byte	0x41f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x8
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x455
	.uleb128 0x3
	.4byte	0x84
	.uleb128 0x3
	.4byte	0x3e
	.uleb128 0x3
	.4byte	0x2b
	.byte	0
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x1
	.byte	0x1b
	.4byte	0x466
	.uleb128 0x3
	.4byte	0x84
	.byte	0
	.uleb128 0x8
	.4byte	.LASF79
	.byte	0x7
	.byte	0x6d
	.byte	0x1d
	.4byte	0x41f
	.4byte	0x481
	.uleb128 0x3
	.4byte	0xc6
	.uleb128 0x3
	.4byte	0xae
	.byte	0
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x1
	.byte	0x1a
	.byte	0xf
	.4byte	0x84
	.4byte	0x497
	.uleb128 0x3
	.4byte	0xae
	.byte	0
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0x7
	.byte	0x76
	.byte	0x14
	.4byte	0xe8
	.4byte	0x4b2
	.uleb128 0x3
	.4byte	0x41f
	.uleb128 0x3
	.4byte	0x9d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0x8
	.byte	0x1e
	.byte	0x5
	.4byte	0x3e
	.4byte	0x4d2
	.uleb128 0x3
	.4byte	0x92
	.uleb128 0x3
	.4byte	0x92
	.uleb128 0x3
	.4byte	0x2b
	.byte	0
	.uleb128 0x25
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x11a
	.byte	0x11
	.4byte	0xae
	.4byte	0x4f3
	.uleb128 0x3
	.4byte	0x18c
	.uleb128 0x3
	.4byte	0x2b
	.uleb128 0x3
	.4byte	0xae
	.byte	0
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x7
	.byte	0x7a
	.byte	0x14
	.4byte	0xe8
	.4byte	0x50e
	.uleb128 0x3
	.4byte	0x41f
	.uleb128 0x3
	.4byte	0x50e
	.byte	0
	.uleb128 0x6
	.4byte	0x12e
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0x8
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0x533
	.uleb128 0x3
	.4byte	0x86
	.uleb128 0x3
	.4byte	0x97
	.uleb128 0x3
	.4byte	0x2b
	.byte	0
	.uleb128 0x16
	.4byte	.LASF86
	.2byte	0x362
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x556
	.uleb128 0x4
	.string	"s"
	.2byte	0x362
	.byte	0x27
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x34d
	.uleb128 0x16
	.4byte	.LASF87
	.2byte	0x356
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57e
	.uleb128 0x4
	.string	"s"
	.2byte	0x356
	.byte	0x29
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF89
	.2byte	0x338
	.byte	0x17
	.4byte	0x556
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d1
	.uleb128 0xf
	.4byte	.LASF68
	.2byte	0x338
	.byte	0x30
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xf
	.4byte	.LASF88
	.2byte	0x338
	.byte	0x3f
	.4byte	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"s"
	.2byte	0x33a
	.byte	0x14
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x34d
	.byte	0x1
	.4byte	.L136
	.byte	0
	.uleb128 0x17
	.4byte	.LASF90
	.2byte	0x314
	.byte	0x14
	.4byte	0xe8
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x631
	.uleb128 0x4
	.string	"s"
	.2byte	0x314
	.byte	0x2e
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"b"
	.2byte	0x314
	.byte	0x40
	.4byte	0x50e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.4byte	.LASF65
	.2byte	0x316
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	.LASF66
	.2byte	0x317
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.string	"ret"
	.2byte	0x318
	.byte	0x11
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xc
	.4byte	.LASF91
	.2byte	0x23c
	.4byte	0xe8
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x674
	.uleb128 0x4
	.string	"s"
	.2byte	0x23c
	.byte	0x2c
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.string	"b"
	.2byte	0x23c
	.byte	0x3e
	.4byte	0x50e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"ret"
	.2byte	0x23e
	.byte	0x11
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0xc
	.4byte	.LASF92
	.2byte	0x1d8
	.4byte	0xe8
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6aa
	.uleb128 0x4
	.string	"s"
	.2byte	0x1d8
	.byte	0x34
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"ret"
	.2byte	0x1da
	.byte	0x11
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xc
	.4byte	.LASF93
	.2byte	0x1bd
	.4byte	0xe8
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d1
	.uleb128 0x4
	.string	"s"
	.2byte	0x1bd
	.byte	0x35
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xc
	.4byte	.LASF94
	.2byte	0x199
	.4byte	0xe8
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f8
	.uleb128 0x4
	.string	"s"
	.2byte	0x199
	.byte	0x35
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x16f
	.byte	0x14
	.4byte	0xe8
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73d
	.uleb128 0x4
	.string	"s"
	.2byte	0x16f
	.byte	0x30
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"b"
	.2byte	0x16f
	.byte	0x42
	.4byte	0x50e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.4byte	.LASF96
	.2byte	0x170
	.byte	0x1a
	.4byte	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xc
	.4byte	.LASF97
	.2byte	0x13a
	.4byte	0xe8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x780
	.uleb128 0x4
	.string	"s"
	.2byte	0x13a
	.byte	0x2d
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"b"
	.2byte	0x13a
	.byte	0x3f
	.4byte	0x50e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"ret"
	.2byte	0x13c
	.byte	0x11
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x28
	.4byte	.LASF104
	.byte	0x2
	.2byte	0x12b
	.byte	0xd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c0
	.uleb128 0x4
	.string	"s"
	.2byte	0x12b
	.byte	0x29
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"b"
	.2byte	0x12b
	.byte	0x41
	.4byte	0x7c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.4byte	.LASF98
	.2byte	0x12d
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x187
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0xe5
	.byte	0x14
	.4byte	0xe8
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x808
	.uleb128 0x9
	.string	"s"
	.byte	0x2
	.byte	0xe5
	.byte	0x2d
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.string	"b"
	.byte	0x2
	.byte	0xe5
	.byte	0x3f
	.4byte	0x50e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"ret"
	.byte	0x2
	.byte	0xe7
	.byte	0x11
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF100
	.byte	0x2
	.byte	0xba
	.byte	0x14
	.4byte	0xe8
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x868
	.uleb128 0x9
	.string	"s"
	.byte	0x2
	.byte	0xba
	.byte	0x2b
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"in"
	.byte	0x2
	.byte	0xba
	.byte	0x3d
	.4byte	0x18c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.4byte	.LASF31
	.byte	0xbb
	.byte	0x18
	.4byte	0x868
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.4byte	.LASF32
	.byte	0xbb
	.byte	0x27
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.4byte	.LASF101
	.byte	0xbd
	.byte	0xd
	.4byte	0x9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x6
	.4byte	0x2b
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0xa8
	.byte	0xd
	.4byte	0x413
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8af
	.uleb128 0x9
	.string	"s"
	.byte	0x2
	.byte	0xa8
	.byte	0x26
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"b"
	.byte	0x2
	.byte	0xa8
	.byte	0x38
	.4byte	0x50e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.4byte	.LASF103
	.byte	0xaa
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF105
	.byte	0x1
	.byte	0x48
	.byte	0x18
	.4byte	0xae
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.string	"buf"
	.byte	0x1
	.byte	0x48
	.byte	0x3a
	.4byte	0x18c
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
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
	.uleb128 0xd
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 24
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
	.uleb128 0x14
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
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.sleb128 13
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
	.sleb128 13
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.4byte	0x8c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF58:
	.string	"count"
.LASF87:
	.string	"xz_dec_reset"
.LASF53:
	.string	"SEQ_INDEX_PADDING"
.LASF36:
	.string	"xz_check"
.LASF13:
	.string	"size_t"
.LASF45:
	.string	"crc32"
.LASF69:
	.string	"allow_buf_error"
.LASF108:
	.string	"error_lzma2"
.LASF16:
	.string	"uint64_t"
.LASF49:
	.string	"SEQ_BLOCK_UNCOMPRESS"
.LASF39:
	.string	"XZ_CHECK_CRC64"
.LASF74:
	.string	"lzma2"
.LASF11:
	.string	"long long unsigned int"
.LASF34:
	.string	"out_size"
.LASF80:
	.string	"simple_malloc"
.LASF44:
	.string	"uncompressed"
.LASF84:
	.string	"xz_dec_lzma2_run"
.LASF31:
	.string	"in_pos"
.LASF3:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF94:
	.string	"dec_stream_header"
.LASF61:
	.string	"SEQ_INDEX_UNPADDED"
.LASF37:
	.string	"XZ_CHECK_NONE"
.LASF86:
	.string	"xz_dec_end"
.LASF98:
	.string	"in_used"
.LASF96:
	.string	"bits"
.LASF9:
	.string	"long int"
.LASF28:
	.string	"XZ_OPTIONS_ERROR"
.LASF22:
	.string	"XZ_OK"
.LASF85:
	.string	"memcpy"
.LASF50:
	.string	"SEQ_BLOCK_PADDING"
.LASF81:
	.string	"xz_dec_lzma2_reset"
.LASF101:
	.string	"byte"
.LASF25:
	.string	"XZ_MEM_ERROR"
.LASF66:
	.string	"out_start"
.LASF73:
	.string	"temp"
.LASF41:
	.string	"xz_buf"
.LASF71:
	.string	"block"
.LASF2:
	.string	"unsigned int"
.LASF21:
	.string	"xz_ret"
.LASF10:
	.string	"long unsigned int"
.LASF107:
	.string	"xz_dec_lzma2"
.LASF20:
	.string	"xz_mode"
.LASF55:
	.string	"SEQ_STREAM_FOOTER"
.LASF62:
	.string	"SEQ_INDEX_UNCOMPRESSED"
.LASF57:
	.string	"size"
.LASF8:
	.string	"short unsigned int"
.LASF17:
	.string	"XZ_SINGLE"
.LASF70:
	.string	"block_header"
.LASF63:
	.string	"sequence"
.LASF51:
	.string	"SEQ_BLOCK_CHECK"
.LASF93:
	.string	"dec_stream_footer"
.LASF79:
	.string	"xz_dec_lzma2_create"
.LASF88:
	.string	"dict_max"
.LASF30:
	.string	"XZ_BUF_ERROR"
.LASF4:
	.string	"long double"
.LASF65:
	.string	"in_start"
.LASF42:
	.string	"xz_dec_hash"
.LASF76:
	.string	"xz_dec_lzma2_end"
.LASF33:
	.string	"out_pos"
.LASF95:
	.string	"crc_validate"
.LASF24:
	.string	"XZ_UNSUPPORTED_CHECK"
.LASF23:
	.string	"XZ_STREAM_END"
.LASF75:
	.string	"_Bool"
.LASF6:
	.string	"unsigned char"
.LASF38:
	.string	"XZ_CHECK_CRC32"
.LASF103:
	.string	"copy_size"
.LASF104:
	.string	"index_update"
.LASF7:
	.string	"short int"
.LASF102:
	.string	"fill_temp"
.LASF48:
	.string	"SEQ_BLOCK_HEADER"
.LASF40:
	.string	"XZ_CHECK_SHA256"
.LASF56:
	.string	"compressed"
.LASF15:
	.string	"uint32_t"
.LASF77:
	.string	"simple_free"
.LASF60:
	.string	"SEQ_INDEX_COUNT"
.LASF46:
	.string	"SEQ_STREAM_HEADER"
.LASF12:
	.string	"char"
.LASF90:
	.string	"xz_dec_run"
.LASF68:
	.string	"mode"
.LASF92:
	.string	"dec_block_header"
.LASF19:
	.string	"XZ_DYNALLOC"
.LASF89:
	.string	"xz_dec_init"
.LASF72:
	.string	"index"
.LASF35:
	.string	"vli_type"
.LASF26:
	.string	"XZ_MEMLIMIT_ERROR"
.LASF82:
	.string	"memcmp"
.LASF106:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF59:
	.string	"hash"
.LASF67:
	.string	"check_type"
.LASF64:
	.string	"xz_dec"
.LASF18:
	.string	"XZ_PREALLOC"
.LASF27:
	.string	"XZ_FORMAT_ERROR"
.LASF78:
	.string	"memset"
.LASF91:
	.string	"dec_main"
.LASF83:
	.string	"xz_crc32"
.LASF47:
	.string	"SEQ_BLOCK_START"
.LASF105:
	.string	"get_unaligned_le32"
.LASF14:
	.string	"uint8_t"
.LASF52:
	.string	"SEQ_INDEX"
.LASF100:
	.string	"dec_vli"
.LASF43:
	.string	"unpadded"
.LASF29:
	.string	"XZ_DATA_ERROR"
.LASF97:
	.string	"dec_index"
.LASF99:
	.string	"dec_block"
.LASF54:
	.string	"SEQ_INDEX_CRC32"
.LASF32:
	.string	"in_size"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/xz/xz_dec_stream.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
