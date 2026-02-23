	.file	"tcp_out.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/tcp_out.c"
	.section	.text.tcp_route,"ax",@progbits
	.align	1
	.type	tcp_route, @function
tcp_route:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/tcp_out.c"
	.loc 1 136 1
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
	.loc 1 139 6
	lw	a5,-20(s0)
	beq	a5,zero,.L2
	.loc 1 139 27 discriminator 1
	lw	a5,-20(s0)
	lbu	a5,8(a5)
	.loc 1 139 20 discriminator 1
	beq	a5,zero,.L2
	.loc 1 140 34
	lw	a5,-20(s0)
	lbu	a5,8(a5)
	.loc 1 140 12
	mv	a0,a5
	call	netif_get_by_index
	mv	a5,a0
	j	.L3
.L2:
	.loc 1 142 12
	lw	a0,-28(s0)
	call	ip4_route
	mv	a5,a0
.L3:
	.loc 1 144 1
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
	.size	tcp_route, .-tcp_route
	.section	.text.tcp_create_segment,"ax",@progbits
	.align	1
	.type	tcp_create_segment, @function
tcp_create_segment:
.LFB6:
	.loc 1 162 1
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
	sw	a1,-40(s0)
	mv	a5,a2
	sw	a3,-48(s0)
	sb	a5,-41(s0)
	mv	a5,a4
	sb	a5,-42(s0)
	.loc 1 169 121
	lbu	a5,-42(s0)
	slli	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 169 10
	andi	a5,a5,4
	sb	a5,-17(s0)
	.loc 1 171 32
	li	a0,4
	call	memp_malloc
	sw	a0,-24(s0)
	.loc 1 171 6 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L5
	.loc 1 173 5
	lw	a0,-40(s0)
	call	pbuf_free
	.loc 1 174 11
	li	a5,0
	j	.L6
.L5:
	.loc 1 176 14
	lw	a5,-24(s0)
	lbu	a4,-42(s0)
	sb	a4,13(a5)
	.loc 1 177 13
	lw	a5,-24(s0)
	sw	zero,0(a5)
	.loc 1 178 10
	lw	a5,-24(s0)
	lw	a4,-40(s0)
	sw	a4,4(a5)
	.loc 1 180 15
	lw	a5,-40(s0)
	lhu	a4,8(a5)
	.loc 1 180 25
	lbu	a5,-17(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 180 12
	lw	a5,-24(s0)
	sh	a4,8(a5)
	.loc 1 185 15
	lw	a5,-24(s0)
	sh	zero,10(a5)
	.loc 1 186 23
	lw	a5,-24(s0)
	sb	zero,12(a5)
	.loc 1 193 7
	li	a1,20
	lw	a0,-40(s0)
	call	pbuf_add_header
	mv	a5,a0
	.loc 1 193 6 discriminator 1
	beq	a5,zero,.L7
	.loc 1 195 21
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,168(a5)
	.loc 1 195 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,168(a5)
	.loc 1 196 5
	lw	a0,-24(s0)
	call	tcp_seg_free
	.loc 1 197 11
	li	a5,0
	j	.L6
.L7:
	.loc 1 199 38
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 199 41
	lw	a4,4(a5)
	.loc 1 199 15
	lw	a5,-24(s0)
	sw	a4,16(a5)
	.loc 1 200 36
	lw	a5,-36(s0)
	lhu	a4,22(a5)
	.loc 1 200 6
	lw	a5,-24(s0)
	lw	s1,16(a5)
	.loc 1 200 22
	mv	a0,a4
	call	lwip_htons
	mv	a5,a0
	.loc 1 200 20 discriminator 1
	andi	a4,a5,255
	lbu	a3,0(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(s1)
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	lbu	a4,1(s1)
	andi	a4,a4,0
	or	a5,a4,a5
	sb	a5,1(s1)
	.loc 1 201 37
	lw	a5,-36(s0)
	lhu	a4,24(a5)
	.loc 1 201 6
	lw	a5,-24(s0)
	lw	s1,16(a5)
	.loc 1 201 23
	mv	a0,a4
	call	lwip_htons
	mv	a5,a0
	.loc 1 201 21 discriminator 1
	andi	a4,a5,255
	lbu	a3,2(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(s1)
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	lbu	a4,3(s1)
	andi	a4,a4,0
	or	a5,a4,a5
	sb	a5,3(s1)
	.loc 1 202 6
	lw	a5,-24(s0)
	lw	s1,16(a5)
	.loc 1 202 24
	lw	a0,-48(s0)
	call	lwip_htonl
	mv	a5,a0
	.loc 1 202 22 discriminator 1
	andi	a4,a5,255
	lbu	a3,4(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,4(s1)
	srli	a4,a5,8
	andi	a4,a4,255
	lbu	a3,5(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,5(s1)
	srli	a4,a5,16
	andi	a4,a4,255
	lbu	a3,6(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,6(s1)
	srli	a5,a5,24
	lbu	a4,7(s1)
	andi	a4,a4,0
	or	a5,a4,a5
	sb	a5,7(s1)
	.loc 1 204 58
	lbu	a5,-17(s0)
	srli	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 204 70
	addi	a5,a5,5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 204 58
	slli	a5,a5,12
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 204 47
	lbu	a5,-41(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	or	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 204 7
	lw	a5,-24(s0)
	lw	s1,16(a5)
	.loc 1 204 47
	mv	a0,a4
	call	lwip_htons
	mv	a5,a0
	.loc 1 204 37 discriminator 1
	andi	a4,a5,255
	lbu	a3,12(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,12(s1)
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	lbu	a4,13(s1)
	andi	a4,a4,0
	or	a5,a4,a5
	sb	a5,13(s1)
	.loc 1 206 6
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 206 21
	lbu	a4,18(a5)
	andi	a4,a4,0
	sb	a4,18(a5)
	lbu	a4,19(a5)
	andi	a4,a4,0
	sb	a4,19(a5)
	.loc 1 207 10
	lw	a5,-24(s0)
.L6:
	.loc 1 208 1
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
.LFE6:
	.size	tcp_create_segment, .-tcp_create_segment
	.section	.text.tcp_pbuf_prealloc,"ax",@progbits
	.align	1
	.type	tcp_pbuf_prealloc, @function
tcp_pbuf_prealloc:
.LFB7:
	.loc 1 231 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a3,-44(s0)
	sw	a4,-48(s0)
	mv	a3,a5
	mv	a4,a6
	mv	a5,a0
	sb	a5,-33(s0)
	mv	a5,a1
	sh	a5,-36(s0)
	mv	a5,a2
	sh	a5,-38(s0)
	mv	a5,a3
	sb	a5,-39(s0)
	mv	a5,a4
	sb	a5,-40(s0)
	.loc 1 233 9
	lhu	a5,-36(s0)
	sh	a5,-18(s0)
	.loc 1 243 9
	lhu	a5,-38(s0)
	sh	a5,-18(s0)
	.loc 1 266 7
	lhu	a4,-18(s0)
	lbu	a5,-33(s0)
	li	a2,640
	mv	a1,a4
	mv	a0,a5
	call	pbuf_alloc
	sw	a0,-24(s0)
	.loc 1 267 6
	lw	a5,-24(s0)
	bne	a5,zero,.L9
	.loc 1 268 11
	li	a5,0
	j	.L10
.L9:
	.loc 1 271 16
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	.loc 1 271 22
	lhu	a4,-36(s0)
	sub	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 271 13
	lw	a5,-44(s0)
	sh	a4,0(a5)
	.loc 1 273 23
	lw	a5,-24(s0)
	lhu	a4,-36(s0)
	sh	a4,8(a5)
	.loc 1 273 13
	lw	a5,-24(s0)
	lhu	a4,8(a5)
	.loc 1 273 10
	lw	a5,-24(s0)
	sh	a4,10(a5)
	.loc 1 274 10
	lw	a5,-24(s0)
.L10:
	.loc 1 275 1
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
.LFE7:
	.size	tcp_pbuf_prealloc, .-tcp_pbuf_prealloc
	.section	.text.tcp_seg_add_chksum,"ax",@progbits
	.align	1
	.type	tcp_seg_add_chksum, @function
tcp_seg_add_chksum:
.LFB8:
	.loc 1 288 1
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
	sw	a3,-44(s0)
	sh	a5,-34(s0)
	mv	a5,a4
	sh	a5,-36(s0)
	.loc 1 291 19
	lhu	a5,-34(s0)
	.loc 1 291 21
	lw	a4,-40(s0)
	lhu	a4,0(a4)
	.loc 1 291 19
	add	a5,a5,a4
	.loc 1 291 10
	sw	a5,-20(s0)
	.loc 1 292 31
	lw	a5,-20(s0)
	srli	a5,a5,16
	.loc 1 292 13
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 292 10
	add	a5,a4,a5
	sh	a5,-34(s0)
	.loc 1 293 12
	lhu	a5,-36(s0)
	andi	a5,a5,1
	.loc 1 293 6
	beq	a5,zero,.L12
	.loc 1 294 31
	lw	a5,-44(s0)
	lbu	a5,0(a5)
	.loc 1 294 29
	li	a4,1
	sub	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 294 25
	lw	a5,-44(s0)
	sb	a4,0(a5)
	.loc 1 295 39
	lh	a5,-34(s0)
	slli	a5,a5,8
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 295 62
	lhu	a5,-34(s0)
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 295 39
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 295 12
	sh	a5,-34(s0)
.L12:
	.loc 1 297 15
	lw	a5,-40(s0)
	lhu	a4,-34(s0)
	sh	a4,0(a5)
	.loc 1 298 1
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
	.size	tcp_seg_add_chksum, .-tcp_seg_add_chksum
	.section	.text.tcp_write_checks,"ax",@progbits
	.align	1
	.type	tcp_write_checks, @function
tcp_write_checks:
.LFB9:
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
	mv	a5,a1
	sh	a5,-22(s0)
	.loc 1 313 11
	lw	a5,-20(s0)
	lbu	a4,20(a5)
	.loc 1 313 6
	li	a5,4
	beq	a4,a5,.L14
	.loc 1 314 11
	lw	a5,-20(s0)
	lbu	a4,20(a5)
	.loc 1 313 35 discriminator 1
	li	a5,7
	beq	a4,a5,.L14
	.loc 1 315 11
	lw	a5,-20(s0)
	lbu	a4,20(a5)
	.loc 1 314 34
	li	a5,2
	beq	a4,a5,.L14
	.loc 1 316 11
	lw	a5,-20(s0)
	lbu	a4,20(a5)
	.loc 1 315 32
	li	a5,3
	beq	a4,a5,.L14
	.loc 1 318 12
	li	a5,-11
	j	.L15
.L14:
	.loc 1 319 13
	lhu	a5,-22(s0)
	bne	a5,zero,.L16
	.loc 1 320 12
	li	a5,0
	j	.L15
.L16:
	.loc 1 324 16
	lw	a5,-20(s0)
	lhu	a5,100(a5)
	.loc 1 324 6
	lhu	a4,-22(s0)
	bleu	a4,a5,.L17
	.loc 1 327 43
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 327 25
	ori	a5,a5,128
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 327 23
	lw	a5,-20(s0)
	sh	a4,26(a5)
	.loc 1 328 12
	li	a5,-1
	j	.L15
.L17:
	.loc 1 336 10
	lw	a5,-20(s0)
	lhu	a4,102(a5)
	.loc 1 336 6
	li	a5,15
	bleu	a4,a5,.L18
	.loc 1 339 21
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,160(a5)
	.loc 1 339 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,160(a5)
	.loc 1 340 43
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 340 25
	ori	a5,a5,128
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 340 23
	lw	a5,-20(s0)
	sh	a4,26(a5)
	.loc 1 341 12
	li	a5,-1
	j	.L15
.L18:
	.loc 1 350 10
	li	a5,0
.L15:
	.loc 1 351 1
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
	.size	tcp_write_checks, .-tcp_write_checks
	.section	.text.tcp_write,"ax",@progbits
	.align	1
	.globl	tcp_write
	.type	tcp_write, @function
tcp_write:
.LFB10:
	.loc 1 394 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	mv	a5,a2
	mv	a4,a3
	sh	a5,-106(s0)
	mv	a5,a4
	sb	a5,-107(s0)
	.loc 1 395 16
	sw	zero,-60(s0)
	.loc 1 396 19
	sw	zero,-20(s0)
	.loc 1 396 39
	sw	zero,-24(s0)
	.loc 1 396 52
	sw	zero,-28(s0)
	.loc 1 396 70
	sw	zero,-32(s0)
	.loc 1 397 9
	sh	zero,-34(s0)
	.loc 1 400 8
	sb	zero,-61(s0)
	.loc 1 402 9
	sh	zero,-86(s0)
	.loc 1 403 9
	sh	zero,-38(s0)
	.loc 1 408 9
	sh	zero,-64(s0)
	.loc 1 410 9
	sh	zero,-40(s0)
	.loc 1 411 8
	sb	zero,-65(s0)
	.loc 1 412 9
	sh	zero,-68(s0)
	.loc 1 417 11
	lw	a5,-100(s0)
	bne	a5,zero,.L20
	.loc 1 417 16 discriminator 1
	li	a5,-16
	.loc 1 417 16 is_stmt 0
	j	.L62
.L20:
	.loc 1 420 34 is_stmt 1
	lw	a5,-100(s0)
	lhu	a5,98(a5)
	.loc 1 420 67
	srli	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 420 21
	lw	a5,-100(s0)
	lhu	a5,50(a5)
	.loc 1 420 13
	mv	a2,a5
	mv	a5,a4
	slli	a3,a5,16
	srli	a3,a3,16
	slli	a4,a2,16
	srli	a4,a4,16
	bleu	a3,a4,.L22
	mv	a5,a2
.L22:
	sh	a5,-42(s0)
	.loc 1 421 13
	lhu	a5,-42(s0)
	bne	a5,zero,.L24
	.loc 1 421 13 is_stmt 0 discriminator 1
	lw	a5,-100(s0)
	lhu	a5,50(a5)
	sh	a5,-42(s0)
.L24:
	.loc 1 427 12 is_stmt 1
	lbu	a5,-107(s0)
	ori	a5,a5,1
	sb	a5,-107(s0)
	.loc 1 432 11
	lw	a5,-104(s0)
	bne	a5,zero,.L25
	.loc 1 432 16 discriminator 1
	li	a5,-16
	.loc 1 432 16 is_stmt 0
	j	.L62
.L25:
	.loc 1 435 9 is_stmt 1
	lhu	a5,-106(s0)
	mv	a1,a5
	lw	a0,-100(s0)
	call	tcp_write_checks
	mv	a5,a0
	sb	a5,-69(s0)
	.loc 1 436 6
	lb	a5,-69(s0)
	beq	a5,zero,.L26
	.loc 1 437 12
	lb	a5,-69(s0)
	j	.L62
.L26:
	.loc 1 439 12
	lw	a5,-100(s0)
	lhu	a5,102(a5)
	sh	a5,-36(s0)
	.loc 1 452 12
	sb	zero,-70(s0)
	.loc 1 479 10
	lw	a5,-100(s0)
	lw	a5,108(a5)
	.loc 1 479 6
	beq	a5,zero,.L32
.LBB2:
	.loc 1 484 22
	lw	a5,-100(s0)
	lw	a5,108(a5)
	sw	a5,-20(s0)
	.loc 1 484 5
	j	.L28
.L29:
	.loc 1 485 22
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L28:
	.loc 1 484 48 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 484 55 discriminator 1
	bne	a5,zero,.L29
	.loc 1 488 34
	lw	a5,-20(s0)
	lbu	a5,13(a5)
	.loc 1 488 160
	slli	a5,a5,2
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 488 19
	andi	a5,a5,4
	sh	a5,-72(s0)
	.loc 1 490 37
	lw	a5,-20(s0)
	lhu	a5,8(a5)
	.loc 1 490 43
	lhu	a4,-72(s0)
	add	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 490 11
	lhu	a4,-42(s0)
	sub	a5,a4,a5
	sh	a5,-74(s0)
	.loc 1 505 19
	lw	a5,-100(s0)
	lhu	a5,104(a5)
	.loc 1 505 14
	sh	a5,-86(s0)
	.loc 1 506 18
	lhu	a5,-86(s0)
	.loc 1 506 8
	beq	a5,zero,.L32
	.loc 1 508 11
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 509 71
	lhu	a5,-86(s0)
	mv	a2,a5
	lhu	a5,-106(s0)
	mv	a3,a5
	slli	a4,a3,16
	srli	a4,a4,16
	slli	a5,a2,16
	srli	a5,a5,16
	bleu	a4,a5,.L30
	mv	a3,a2
.L30:
	slli	a5,a3,16
	srli	a5,a5,16
	.loc 1 509 21
	mv	a2,a5
	lhu	a5,-74(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	slli	a4,a2,16
	srli	a4,a4,16
	bleu	a3,a4,.L31
	mv	a5,a2
.L31:
	sh	a5,-38(s0)
	.loc 1 510 11
	lhu	a5,-34(s0)
	mv	a4,a5
	lhu	a5,-38(s0)
	add	a5,a4,a5
	sh	a5,-34(s0)
	.loc 1 511 16
	lhu	a5,-86(s0)
	lhu	a4,-38(s0)
	sub	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,-86(s0)
	.loc 1 512 13
	lhu	a5,-74(s0)
	mv	a4,a5
	lhu	a5,-38(s0)
	sub	a5,a4,a5
	sh	a5,-74(s0)
.LBE2:
	.loc 1 600 9
	j	.L32
.L46:
.LBB3:
	.loc 1 602 11
	lhu	a5,-106(s0)
	mv	a4,a5
	lhu	a5,-34(s0)
	sub	a5,a4,a5
	sh	a5,-76(s0)
	.loc 1 603 31
	lbu	a5,-70(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 603 11
	lhu	a4,-42(s0)
	sub	a5,a4,a5
	sh	a5,-78(s0)
	.loc 1 604 11
	lhu	a5,-76(s0)
	mv	a2,a5
	lhu	a5,-78(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	slli	a4,a2,16
	srli	a4,a4,16
	bleu	a3,a4,.L33
	mv	a5,a2
.L33:
	sh	a5,-80(s0)
	.loc 1 606 11
	sh	zero,-88(s0)
	.loc 1 607 10
	sb	zero,-89(s0)
	.loc 1 610 18
	lbu	a5,-107(s0)
	andi	a5,a5,1
	.loc 1 610 8
	beq	a5,zero,.L34
	.loc 1 613 16
	lbu	a5,-70(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-80(s0)
	add	a5,a5,a4
	slli	a1,a5,16
	srli	a1,a1,16
	lw	a5,-32(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	lbu	a5,-107(s0)
	addi	a3,s0,-86
	lhu	a2,-42(s0)
	mv	a6,a4
	lw	a4,-100(s0)
	li	a0,182
	call	tcp_pbuf_prealloc
	sw	a0,-48(s0)
	.loc 1 613 10 discriminator 1
	lw	a5,-48(s0)
	beq	a5,zero,.L64
	.loc 1 619 52
	lw	a5,-48(s0)
	lw	a4,4(a5)
	.loc 1 619 7
	lbu	a5,-70(s0)
	add	a3,a4,a5
	lhu	a5,-34(s0)
	lw	a4,-104(s0)
	add	a5,a4,a5
	lhu	a4,-80(s0)
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	lwip_chksum_copy
	mv	a5,a0
	mv	a0,a5
	.loc 1 619 7 is_stmt 0 discriminator 1
	addi	a3,s0,-89
	addi	a4,s0,-88
	lhu	a5,-80(s0)
	mv	a2,a4
	mv	a1,a5
	call	tcp_seg_add_chksum
	j	.L37
.L34:
.LBB4:
	.loc 1 630 17 is_stmt 1
	lhu	a5,-80(s0)
	li	a2,1
	mv	a1,a5
	li	a0,182
	call	pbuf_alloc
	sw	a0,-84(s0)
	.loc 1 630 10 discriminator 1
	lw	a5,-84(s0)
	beq	a5,zero,.L65
	.loc 1 636 17
	lhu	a5,-34(s0)
	lw	a4,-104(s0)
	add	a5,a4,a5
	lhu	a4,-80(s0)
	mv	a1,a4
	mv	a0,a5
	call	inet_chksum
	mv	a5,a0
	.loc 1 636 14 discriminator 1
	not	a5,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,-88(s0)
	.loc 1 637 18
	lhu	a5,-80(s0)
	andi	a5,a5,1
	.loc 1 637 10
	beq	a5,zero,.L39
	.loc 1 638 24
	li	a5,1
	sb	a5,-89(s0)
	.loc 1 639 43
	lhu	a5,-88(s0)
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,8
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 639 66
	lhu	a5,-88(s0)
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 639 43
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 639 16
	sh	a5,-88(s0)
.L39:
	.loc 1 643 60
	lhu	a5,-34(s0)
	lw	a4,-104(s0)
	add	a4,a4,a5
	.loc 1 643 40
	lw	a5,-84(s0)
	sw	a4,4(a5)
	.loc 1 646 16
	lbu	a5,-70(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	li	a2,640
	mv	a1,a5
	li	a0,182
	call	pbuf_alloc
	sw	a0,-48(s0)
	.loc 1 646 10 discriminator 1
	lw	a5,-48(s0)
	bne	a5,zero,.L40
	.loc 1 649 9
	lw	a0,-84(s0)
	call	pbuf_free
	.loc 1 651 9
	j	.L36
.L40:
	.loc 1 654 7
	lw	a1,-84(s0)
	lw	a0,-48(s0)
	call	pbuf_cat
.L37:
.LBE4:
	.loc 1 657 17
	lw	a0,-48(s0)
	call	pbuf_clen
	mv	a5,a0
	mv	a4,a5
	.loc 1 657 14 discriminator 1
	lhu	a5,-36(s0)
	add	a5,a4,a5
	sh	a5,-36(s0)
	.loc 1 662 8
	lhu	a4,-36(s0)
	li	a5,16
	bleu	a4,a5,.L41
	.loc 1 665 7
	lw	a0,-48(s0)
	call	pbuf_free
	.loc 1 666 7
	j	.L36
.L41:
	.loc 1 669 49
	lw	a5,-100(s0)
	lw	a4,92(a5)
	.loc 1 669 16
	lhu	a5,-34(s0)
	.loc 1 669 59
	add	a5,a4,a5
	.loc 1 669 16
	lbu	a4,-61(s0)
	mv	a3,a5
	li	a2,0
	lw	a1,-48(s0)
	lw	a0,-100(s0)
	call	tcp_create_segment
	sw	a0,-24(s0)
	.loc 1 669 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L66
	.loc 1 676 17
	lhu	a4,-88(s0)
	lw	a5,-24(s0)
	sh	a4,10(a5)
	.loc 1 677 25
	lbu	a4,-89(s0)
	lw	a5,-24(s0)
	sb	a4,12(a5)
	.loc 1 678 8
	lw	a5,-24(s0)
	lbu	a5,13(a5)
	.loc 1 678 16
	ori	a5,a5,4
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,13(a5)
	.loc 1 682 8
	lw	a5,-32(s0)
	bne	a5,zero,.L43
	.loc 1 683 13
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	j	.L44
.L43:
	.loc 1 687 22
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L44:
	.loc 1 690 14
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	.loc 1 696 9
	lhu	a5,-34(s0)
	mv	a4,a5
	lhu	a5,-80(s0)
	add	a5,a4,a5
	sh	a5,-34(s0)
	j	.L32
.L64:
	.loc 1 615 9
	nop
	j	.L36
.L65:
.LBB5:
	.loc 1 632 9
	nop
	j	.L36
.L66:
.LBE5:
	.loc 1 670 7
	nop
.L36:
.L45:
.LBE3:
	.loc 1 800 41
	lw	a5,-100(s0)
	lhu	a5,26(a5)
	.loc 1 800 23
	ori	a5,a5,128
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 800 21
	lw	a5,-100(s0)
	sh	a4,26(a5)
	.loc 1 801 19
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,160(a5)
	.loc 1 801 3
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,160(a5)
	.loc 1 803 6
	lw	a5,-60(s0)
	beq	a5,zero,.L60
	j	.L63
.L32:
	.loc 1 600 14
	lhu	a4,-34(s0)
	lhu	a5,-106(s0)
	bltu	a4,a5,.L46
	.loc 1 714 6
	lhu	a5,-38(s0)
	beq	a5,zero,.L47
.LBB6:
	.loc 1 717 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-52(s0)
	.loc 1 717 5
	j	.L48
.L50:
	.loc 1 718 8
	lw	a5,-52(s0)
	lhu	a5,8(a5)
	.loc 1 718 18
	lhu	a4,-38(s0)
	add	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-52(s0)
	sh	a4,8(a5)
	.loc 1 719 12
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 719 10
	bne	a5,zero,.L49
	.loc 1 720 59
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 720 72
	lw	a4,-52(s0)
	lhu	a4,10(a4)
	.loc 1 720 14
	add	a5,a5,a4
	lhu	a4,-38(s0)
	mv	a2,a4
	lw	a1,-104(s0)
	mv	a0,a5
	call	lwip_chksum_copy
	mv	a5,a0
	mv	a0,a5
	.loc 1 720 14 is_stmt 0 discriminator 1
	lw	a5,-20(s0)
	addi	a4,a5,10
	lw	a5,-20(s0)
	addi	a3,a5,12
	lhu	a5,-38(s0)
	mv	a2,a4
	mv	a1,a5
	call	tcp_seg_add_chksum
	.loc 1 720 179 is_stmt 1 discriminator 2
	lw	a5,-20(s0)
	lbu	a5,13(a5)
	.loc 1 720 187 discriminator 2
	ori	a5,a5,4
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,13(a5)
	.loc 1 721 10
	lw	a5,-52(s0)
	lhu	a5,10(a5)
	.loc 1 721 16
	lhu	a4,-38(s0)
	add	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-52(s0)
	sh	a4,10(a5)
.L49:
	.loc 1 717 35 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	sw	a5,-52(s0)
.L48:
	.loc 1 717 30 discriminator 1
	lw	a5,-52(s0)
	bne	a5,zero,.L50
	.loc 1 724 16
	lw	a5,-20(s0)
	lhu	a5,8(a5)
	.loc 1 724 22
	lhu	a4,-38(s0)
	add	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-20(s0)
	sh	a4,8(a5)
.L47:
.LBE6:
	.loc 1 731 24
	lhu	a4,-86(s0)
	lw	a5,-100(s0)
	sh	a4,104(a5)
	.loc 1 738 6
	lw	a5,-60(s0)
	beq	a5,zero,.L51
	.loc 1 741 5
	lw	a5,-20(s0)
	lw	a5,4(a5)
	lw	a1,-60(s0)
	mv	a0,a5
	call	pbuf_cat
	.loc 1 742 16
	lw	a5,-20(s0)
	lhu	a4,8(a5)
	.loc 1 742 33
	lw	a5,-60(s0)
	lhu	a5,8(a5)
	.loc 1 742 22
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-20(s0)
	sh	a4,8(a5)
	j	.L52
.L51:
	.loc 1 743 13
	lhu	a5,-64(s0)
	beq	a5,zero,.L52
.LBB7:
	.loc 1 747 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-56(s0)
	.loc 1 747 5
	j	.L53
.L54:
	.loc 1 748 8
	lw	a5,-56(s0)
	lhu	a5,8(a5)
	.loc 1 748 18
	lhu	a4,-64(s0)
	add	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-56(s0)
	sh	a4,8(a5)
	.loc 1 747 48 discriminator 3
	lw	a5,-56(s0)
	lw	a5,0(a5)
	sw	a5,-56(s0)
.L53:
	.loc 1 747 31 discriminator 1
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 747 38 discriminator 1
	bne	a5,zero,.L54
	.loc 1 750 6
	lw	a5,-56(s0)
	lhu	a5,8(a5)
	.loc 1 750 16
	lhu	a4,-64(s0)
	add	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-56(s0)
	sh	a4,8(a5)
	.loc 1 751 6
	lw	a5,-56(s0)
	lhu	a5,10(a5)
	.loc 1 751 12
	lhu	a4,-64(s0)
	add	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-56(s0)
	sh	a4,10(a5)
	.loc 1 752 16
	lw	a5,-20(s0)
	lhu	a5,8(a5)
	.loc 1 752 22
	lhu	a4,-64(s0)
	add	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-20(s0)
	sh	a4,8(a5)
.L52:
.LBE7:
	.loc 1 756 6
	lhu	a5,-68(s0)
	beq	a5,zero,.L55
	.loc 1 760 8
	lbu	a5,-65(s0)
	beq	a5,zero,.L56
	.loc 1 761 55
	lh	a5,-40(s0)
	slli	a5,a5,8
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 761 85
	lhu	a5,-40(s0)
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 761 55
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 761 21
	sh	a5,-40(s0)
.L56:
	.loc 1 763 5
	lw	a5,-20(s0)
	addi	a2,a5,10
	lw	a5,-20(s0)
	addi	a3,a5,12
	lhu	a4,-68(s0)
	lhu	a5,-40(s0)
	mv	a1,a4
	mv	a0,a5
	call	tcp_seg_add_chksum
	.loc 1 765 16
	lw	a5,-20(s0)
	lbu	a5,13(a5)
	.loc 1 765 24
	ori	a5,a5,4
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,13(a5)
.L55:
	.loc 1 773 6
	lw	a5,-20(s0)
	bne	a5,zero,.L57
	.loc 1 774 17
	lw	a5,-100(s0)
	lw	a4,-32(s0)
	sw	a4,108(a5)
	j	.L58
.L57:
	.loc 1 776 23
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
.L58:
	.loc 1 782 6
	lw	a5,-100(s0)
	lw	a4,92(a5)
	.loc 1 782 16
	lhu	a5,-106(s0)
	add	a4,a4,a5
	lw	a5,-100(s0)
	sw	a4,92(a5)
	.loc 1 783 6
	lw	a5,-100(s0)
	lhu	a5,100(a5)
	.loc 1 783 16
	lhu	a4,-106(s0)
	sub	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-100(s0)
	sh	a4,100(a5)
	.loc 1 784 21
	lw	a5,-100(s0)
	lhu	a4,-36(s0)
	sh	a4,102(a5)
	.loc 1 794 6
	lw	a5,-24(s0)
	beq	a5,zero,.L59
	.loc 1 794 24 discriminator 1
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 794 18 discriminator 1
	beq	a5,zero,.L59
	.loc 1 794 55 discriminator 2
	lbu	a5,-107(s0)
	andi	a5,a5,2
	.loc 1 794 41 discriminator 2
	bne	a5,zero,.L59
	.loc 1 795 46
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 795 55
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	s1,a5,16
	srli	s1,s1,16
	.loc 1 795 78
	li	a0,8
	call	lwip_htons
	mv	a5,a0
	mv	a4,a5
	.loc 1 795 9 discriminator 1
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 795 39 discriminator 1
	or	a4,s1,a4
	slli	a4,a4,16
	srli	a4,a4,16
	andi	a3,a4,255
	lbu	a2,12(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,12(a5)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,13(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,13(a5)
.L59:
	.loc 1 798 10
	li	a5,0
	j	.L62
.L63:
	.loc 1 804 5
	lw	a0,-60(s0)
	call	pbuf_free
.L60:
	.loc 1 806 6
	lw	a5,-32(s0)
	beq	a5,zero,.L61
	.loc 1 807 5
	lw	a0,-32(s0)
	call	tcp_segs_free
.L61:
	.loc 1 814 10
	li	a5,-1
.L62:
	.loc 1 815 1
	mv	a0,a5
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	lw	s1,100(sp)
	.cfi_restore 9
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	tcp_write, .-tcp_write
	.section	.text.tcp_split_unsent_seg,"ax",@progbits
	.align	1
	.globl	tcp_split_unsent_seg
	.type	tcp_split_unsent_seg, @function
tcp_split_unsent_seg:
.LFB11:
	.loc 1 831 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	mv	a5,a1
	sh	a5,-54(s0)
	.loc 1 832 19
	sw	zero,-32(s0)
	.loc 1 832 31
	sw	zero,-36(s0)
	.loc 1 833 16
	sw	zero,-20(s0)
	.loc 1 841 9
	sh	zero,-42(s0)
	.loc 1 842 8
	sb	zero,-43(s0)
	.loc 1 848 8
	lw	a5,-52(s0)
	lw	a5,108(a5)
	sw	a5,-36(s0)
	.loc 1 849 6
	lw	a5,-36(s0)
	bne	a5,zero,.L68
	.loc 1 850 12
	li	a5,-1
	j	.L85
.L68:
	.loc 1 853 6
	lhu	a5,-54(s0)
	bne	a5,zero,.L70
	.loc 1 855 12
	li	a5,-6
	j	.L85
.L70:
	.loc 1 858 11
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	.loc 1 858 6
	lhu	a4,-54(s0)
	bltu	a4,a5,.L71
	.loc 1 859 12
	li	a5,0
	j	.L85
.L71:
	.loc 1 871 12
	lw	a5,-36(s0)
	lbu	a5,13(a5)
	sb	a5,-37(s0)
	.loc 1 874 12
	lbu	a5,-37(s0)
	andi	a5,a5,-5
	sb	a5,-37(s0)
	.loc 1 876 121
	lbu	a5,-37(s0)
	slli	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 876 10
	andi	a5,a5,4
	sb	a5,-38(s0)
	.loc 1 877 19
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	.loc 1 877 13
	lhu	a4,-54(s0)
	sub	a5,a5,a4
	sh	a5,-40(s0)
	.loc 1 880 7
	lbu	a5,-38(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-40(s0)
	add	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	li	a2,640
	mv	a1,a5
	li	a0,182
	call	pbuf_alloc
	sw	a0,-20(s0)
	.loc 1 881 6
	lw	a5,-20(s0)
	beq	a5,zero,.L86
	.loc 1 888 16
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 888 19
	lhu	a4,8(a5)
	.loc 1 888 35
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	.loc 1 888 29
	sub	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 888 10
	lhu	a4,-54(s0)
	add	a5,a5,a4
	sh	a5,-24(s0)
	.loc 1 890 29
	lw	a5,-36(s0)
	lw	a0,4(a5)
	.loc 1 890 43
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 890 7
	lbu	a5,-38(s0)
	add	a5,a4,a5
	lhu	a3,-24(s0)
	lhu	a4,-40(s0)
	mv	a2,a4
	mv	a1,a5
	call	pbuf_copy_partial
	mv	a5,a0
	mv	a4,a5
	.loc 1 890 6 discriminator 1
	lhu	a5,-40(s0)
	bne	a5,a4,.L87
	.loc 1 897 50
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 897 23
	lbu	a5,-38(s0)
	add	a5,a4,a5
	lhu	a4,-40(s0)
	mv	a1,a4
	mv	a0,a5
	call	inet_chksum
	mv	a5,a0
	.loc 1 897 3 discriminator 1
	not	a5,a5
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a3,s0,-43
	addi	a2,s0,-42
	lhu	a4,-40(s0)
	mv	a1,a4
	mv	a0,a5
	call	tcp_seg_add_chksum
	.loc 1 904 42
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 904 26
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 904 18 discriminator 1
	andi	a5,a5,0xff
	.loc 1 904 15 discriminator 1
	andi	a5,a5,63
	sb	a5,-21(s0)
	.loc 1 905 19
	sb	zero,-22(s0)
	.loc 1 907 19
	lbu	a5,-21(s0)
	andi	a5,a5,8
	.loc 1 907 6
	beq	a5,zero,.L75
	.loc 1 908 17
	lbu	a5,-21(s0)
	andi	a5,a5,-9
	sb	a5,-21(s0)
	.loc 1 909 21
	lbu	a5,-22(s0)
	ori	a5,a5,8
	sb	a5,-22(s0)
.L75:
	.loc 1 911 19
	lbu	a5,-21(s0)
	andi	a5,a5,1
	.loc 1 911 6
	beq	a5,zero,.L76
	.loc 1 912 17
	lbu	a5,-21(s0)
	andi	a5,a5,-2
	sb	a5,-21(s0)
	.loc 1 913 21
	lbu	a5,-22(s0)
	ori	a5,a5,1
	sb	a5,-22(s0)
.L76:
	.loc 1 917 68
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 917 53
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a0,a5
	call	lwip_htonl
	mv	a4,a0
	.loc 1 917 9 discriminator 1
	lhu	a5,-54(s0)
	.loc 1 917 85 discriminator 1
	add	a3,a4,a5
	.loc 1 917 9 discriminator 1
	lbu	a4,-37(s0)
	lbu	a5,-22(s0)
	mv	a2,a5
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	tcp_create_segment
	sw	a0,-32(s0)
	.loc 1 918 6
	lw	a5,-32(s0)
	bne	a5,zero,.L77
	.loc 1 919 7
	sw	zero,-20(s0)
	.loc 1 922 5
	j	.L73
.L77:
	.loc 1 926 15
	lhu	a4,-42(s0)
	lw	a5,-32(s0)
	sh	a4,10(a5)
	.loc 1 927 23
	lbu	a4,-43(s0)
	lw	a5,-32(s0)
	sb	a4,12(a5)
	.loc 1 928 6
	lw	a5,-32(s0)
	lbu	a5,13(a5)
	.loc 1 928 14
	ori	a5,a5,4
	andi	a4,a5,0xff
	lw	a5,-32(s0)
	sb	a4,13(a5)
	.loc 1 932 38
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 932 24
	mv	a0,a5
	call	pbuf_clen
	mv	a5,a0
	mv	a4,a5
	.loc 1 932 6 discriminator 1
	lw	a5,-52(s0)
	lhu	a5,102(a5)
	.loc 1 932 21 discriminator 1
	sub	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-52(s0)
	sh	a4,102(a5)
	.loc 1 936 3
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 936 29
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 936 32
	lhu	a5,8(a5)
	.loc 1 936 3
	lhu	a3,-40(s0)
	sub	a5,a5,a3
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a1,a5
	mv	a0,a4
	call	pbuf_realloc
	.loc 1 937 7
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	.loc 1 937 13
	lhu	a4,-40(s0)
	sub	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-36(s0)
	sh	a4,8(a5)
	.loc 1 938 46
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 938 55
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	s1,a5,16
	srli	s1,s1,16
	.loc 1 938 78
	lbu	a5,-21(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	mv	a4,a5
	.loc 1 938 8 discriminator 1
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 938 38 discriminator 1
	or	a4,s1,a4
	slli	a4,a4,16
	srli	a4,a4,16
	andi	a3,a4,255
	lbu	a2,12(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,12(a5)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,13(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,13(a5)
	.loc 1 945 38
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 945 24
	mv	a0,a5
	call	pbuf_clen
	mv	a5,a0
	mv	a4,a5
	.loc 1 945 6 discriminator 1
	lw	a5,-52(s0)
	lhu	a5,102(a5)
	.loc 1 945 21 discriminator 1
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-52(s0)
	sh	a4,102(a5)
	.loc 1 949 16
	lw	a5,-36(s0)
	sh	zero,10(a5)
	.loc 1 950 24
	lw	a5,-36(s0)
	sb	zero,12(a5)
	.loc 1 951 5
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	.loc 1 952 13
	lw	a5,-28(s0)
	lhu	a4,8(a5)
	.loc 1 952 29
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	.loc 1 952 10
	sub	a5,a4,a5
	sh	a5,-24(s0)
	.loc 1 955 9
	j	.L78
.L80:
	.loc 1 956 16
	lw	a5,-28(s0)
	lhu	a5,10(a5)
	.loc 1 956 12
	lhu	a4,-24(s0)
	sub	a5,a4,a5
	sh	a5,-24(s0)
	.loc 1 957 7
	lw	a5,-28(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
.L78:
	.loc 1 955 19
	lw	a5,-28(s0)
	beq	a5,zero,.L81
	.loc 1 955 32 discriminator 1
	lw	a5,-28(s0)
	lhu	a5,10(a5)
	.loc 1 955 19 discriminator 1
	lhu	a4,-24(s0)
	bgtu	a4,a5,.L80
	.loc 1 961 3
	j	.L81
.L82:
	.loc 1 962 52
	lw	a5,-28(s0)
	lw	a4,4(a5)
	.loc 1 962 25
	lhu	a5,-24(s0)
	add	a4,a4,a5
	.loc 1 962 73
	lw	a5,-28(s0)
	lhu	a5,10(a5)
	.loc 1 962 25
	lhu	a3,-24(s0)
	sub	a5,a5,a3
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a1,a5
	mv	a0,a4
	call	inet_chksum
	mv	a5,a0
	.loc 1 962 5 discriminator 1
	not	a5,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 962 91 discriminator 1
	lw	a5,-28(s0)
	lhu	a5,10(a5)
	.loc 1 962 5 discriminator 1
	lhu	a3,-24(s0)
	sub	a5,a5,a3
	slli	a1,a5,16
	srli	a1,a1,16
	lw	a5,-36(s0)
	addi	a2,a5,10
	lw	a5,-36(s0)
	addi	a5,a5,12
	mv	a3,a5
	mv	a0,a4
	call	tcp_seg_add_chksum
	.loc 1 961 27 discriminator 2
	sh	zero,-24(s0)
	.loc 1 961 34 discriminator 2
	lw	a5,-28(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
.L81:
	.loc 1 961 12 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L82
	.loc 1 970 37
	lw	a5,-32(s0)
	lw	a5,4(a5)
	.loc 1 970 24
	mv	a0,a5
	call	pbuf_clen
	mv	a5,a0
	mv	a4,a5
	.loc 1 970 6 discriminator 1
	lw	a5,-52(s0)
	lhu	a5,102(a5)
	.loc 1 970 21 discriminator 1
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-52(s0)
	sh	a4,102(a5)
	.loc 1 973 19
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 973 13
	lw	a5,-32(s0)
	sw	a4,0(a5)
	.loc 1 974 14
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 1 979 10
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 979 6
	bne	a5,zero,.L83
	.loc 1 980 26
	lw	a5,-52(s0)
	sh	zero,104(a5)
.L83:
	.loc 1 984 10
	li	a5,0
	j	.L85
.L86:
	.loc 1 884 5
	nop
	j	.L73
.L87:
	.loc 1 893 5
	nop
.L73:
	.loc 1 986 19
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,160(a5)
	.loc 1 986 3
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,160(a5)
	.loc 1 989 6
	lw	a5,-20(s0)
	beq	a5,zero,.L84
	.loc 1 990 5
	lw	a0,-20(s0)
	call	pbuf_free
.L84:
	.loc 1 993 10
	li	a5,-1
.L85:
	.loc 1 994 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	tcp_split_unsent_seg, .-tcp_split_unsent_seg
	.section	.text.tcp_send_fin,"ax",@progbits
	.align	1
	.globl	tcp_send_fin
	.type	tcp_send_fin, @function
tcp_send_fin:
.LFB12:
	.loc 1 1006 1
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
	.loc 1 1010 10
	lw	a5,-36(s0)
	lw	a5,108(a5)
	.loc 1 1010 6
	beq	a5,zero,.L89
.LBB8:
	.loc 1 1012 22
	lw	a5,-36(s0)
	lw	a5,108(a5)
	sw	a5,-20(s0)
	.loc 1 1012 5
	j	.L90
.L91:
	.loc 1 1013 22
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L90:
	.loc 1 1012 48 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1012 55 discriminator 1
	bne	a5,zero,.L91
	.loc 1 1015 42
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 1015 19
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1015 11 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1015 84 discriminator 1
	andi	a5,a5,7
	.loc 1 1015 8 discriminator 1
	bne	a5,zero,.L89
	.loc 1 1017 64
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 1017 73
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	s1,a5,16
	srli	s1,s1,16
	.loc 1 1017 96
	li	a0,1
	call	lwip_htons
	mv	a5,a0
	mv	a4,a5
	.loc 1 1017 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 1017 49 discriminator 1
	or	a4,s1,a4
	slli	a4,a4,16
	srli	a4,a4,16
	andi	a3,a4,255
	lbu	a2,12(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,12(a5)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,13(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,13(a5)
	.loc 1 1018 45
	lw	a5,-36(s0)
	lhu	a5,26(a5)
	.loc 1 1018 27
	ori	a5,a5,32
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1018 25
	lw	a5,-36(s0)
	sh	a4,26(a5)
	.loc 1 1019 14
	li	a5,0
	j	.L92
.L89:
.LBE8:
	.loc 1 1023 10
	li	a1,1
	lw	a0,-36(s0)
	call	tcp_enqueue_flags
	mv	a5,a0
.L92:
	.loc 1 1024 1
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
.LFE12:
	.size	tcp_send_fin, .-tcp_send_fin
	.section	.text.tcp_enqueue_flags,"ax",@progbits
	.align	1
	.globl	tcp_enqueue_flags
	.type	tcp_enqueue_flags, @function
tcp_enqueue_flags:
.LFB13:
	.loc 1 1037 1
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
	mv	a5,a1
	sb	a5,-53(s0)
	.loc 1 1040 8
	sb	zero,-17(s0)
	.loc 1 1041 8
	sb	zero,-25(s0)
	.loc 1 1053 13
	lbu	a5,-53(s0)
	andi	a5,a5,2
	.loc 1 1053 6
	beq	a5,zero,.L94
	.loc 1 1054 14
	li	a5,1
	sb	a5,-17(s0)
.L94:
	.loc 1 1077 121
	lbu	a5,-17(s0)
	slli	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 1077 10
	andi	a5,a5,4
	sb	a5,-25(s0)
	.loc 1 1080 12
	lbu	a5,-25(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	li	a2,640
	mv	a1,a5
	li	a0,182
	call	pbuf_alloc
	sw	a0,-32(s0)
	.loc 1 1080 6 discriminator 1
	lw	a5,-32(s0)
	bne	a5,zero,.L95
	.loc 1 1081 43
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 1081 25
	ori	a5,a5,128
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1081 23
	lw	a5,-52(s0)
	sh	a4,26(a5)
	.loc 1 1082 21
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,160(a5)
	.loc 1 1082 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,160(a5)
	.loc 1 1083 12
	li	a5,-1
	j	.L96
.L95:
	.loc 1 1089 14
	lw	a5,-52(s0)
	lw	a3,92(a5)
	lbu	a4,-17(s0)
	lbu	a5,-53(s0)
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-52(s0)
	call	tcp_create_segment
	sw	a0,-36(s0)
	.loc 1 1089 6 discriminator 1
	lw	a5,-36(s0)
	bne	a5,zero,.L97
	.loc 1 1090 43
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 1090 25
	ori	a5,a5,128
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1090 23
	lw	a5,-52(s0)
	sh	a4,26(a5)
	.loc 1 1091 21
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,160(a5)
	.loc 1 1091 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,160(a5)
	.loc 1 1092 12
	li	a5,-1
	j	.L96
.L97:
	.loc 1 1104 10
	lw	a5,-52(s0)
	lw	a5,108(a5)
	.loc 1 1104 6
	bne	a5,zero,.L98
	.loc 1 1105 17
	lw	a5,-52(s0)
	lw	a4,-36(s0)
	sw	a4,108(a5)
	j	.L99
.L98:
.LBB9:
	.loc 1 1108 15
	lw	a5,-52(s0)
	lw	a5,108(a5)
	sw	a5,-24(s0)
	.loc 1 1108 5
	j	.L100
.L101:
	.loc 1 1108 54 discriminator 3
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
.L100:
	.loc 1 1108 34 discriminator 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1108 41 discriminator 1
	bne	a5,zero,.L101
	.loc 1 1109 16
	lw	a5,-24(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
.L99:
.LBE9:
	.loc 1 1113 24
	lw	a5,-52(s0)
	sh	zero,104(a5)
	.loc 1 1117 14
	lbu	a5,-53(s0)
	andi	a5,a5,2
	.loc 1 1117 6
	bne	a5,zero,.L102
	.loc 1 1117 33 discriminator 1
	lbu	a5,-53(s0)
	andi	a5,a5,1
	.loc 1 1117 23 discriminator 1
	beq	a5,zero,.L103
.L102:
	.loc 1 1118 8
	lw	a5,-52(s0)
	lw	a5,92(a5)
	.loc 1 1118 17
	addi	a4,a5,1
	lw	a5,-52(s0)
	sw	a4,92(a5)
.L103:
	.loc 1 1121 13
	lbu	a5,-53(s0)
	andi	a5,a5,1
	.loc 1 1121 6
	beq	a5,zero,.L104
	.loc 1 1122 43
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 1122 25
	ori	a5,a5,32
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1122 23
	lw	a5,-52(s0)
	sh	a4,26(a5)
.L104:
	.loc 1 1126 37
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1126 24
	mv	a0,a5
	call	pbuf_clen
	mv	a5,a0
	mv	a4,a5
	.loc 1 1126 6 discriminator 1
	lw	a5,-52(s0)
	lhu	a5,102(a5)
	.loc 1 1126 21 discriminator 1
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-52(s0)
	sh	a4,102(a5)
	.loc 1 1133 10
	li	a5,0
.L96:
	.loc 1 1134 1
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
.LFE13:
	.size	tcp_enqueue_flags, .-tcp_enqueue_flags
	.section	.text.tcp_output,"ax",@progbits
	.align	1
	.globl	tcp_output
	.type	tcp_output, @function
tcp_output:
.LFB14:
	.loc 1 1242 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	.loc 1 1258 32
	lw	a5,-52(s0)
	lhu	a4,72(a5)
	.loc 1 1258 15
	lw	a5,-52(s0)
	lhu	a5,96(a5)
	.loc 1 1258 58
	mv	a2,a5
	mv	a3,a4
	slli	a4,a3,16
	srli	a4,a4,16
	slli	a5,a2,16
	srli	a5,a5,16
	bleu	a4,a5,.L106
	mv	a3,a2
.L106:
	slli	a5,a3,16
	srli	a5,a5,16
	.loc 1 1258 7
	sw	a5,-36(s0)
	.loc 1 1260 7
	lw	a5,-52(s0)
	lw	a5,108(a5)
	sw	a5,-20(s0)
	.loc 1 1262 6
	lw	a5,-20(s0)
	bne	a5,zero,.L107
	.loc 1 1272 12
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 1272 20
	andi	a5,a5,2
	.loc 1 1272 8
	beq	a5,zero,.L147
	.loc 1 1273 14
	lw	a0,-52(s0)
	call	tcp_send_empty_ack
	mv	a5,a0
	j	.L109
.L107:
	.loc 1 1286 26
	lw	a4,-52(s0)
	.loc 1 1286 42
	lw	a5,-52(s0)
	addi	a5,a5,4
	.loc 1 1286 11
	mv	a2,a5
	mv	a1,a4
	lw	a0,-52(s0)
	call	tcp_route
	sw	a0,-40(s0)
	.loc 1 1287 6
	lw	a5,-40(s0)
	bne	a5,zero,.L111
	.loc 1 1288 12
	li	a5,-4
	j	.L109
.L111:
	.loc 1 1292 9
	lw	a5,-52(s0)
	.loc 1 1292 6
	beq	a5,zero,.L112
	.loc 1 1292 29 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 1292 6 discriminator 1
	bne	a5,zero,.L113
.L112:
.LBB10:
	.loc 1 1293 76
	lw	a5,-40(s0)
	beq	a5,zero,.L114
	.loc 1 1293 22 discriminator 1
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-28(s0)
	j	.L115
.L114:
	.loc 1 1293 22 is_stmt 0 discriminator 2
	sw	zero,-28(s0)
.L115:
	.loc 1 1294 8 is_stmt 1
	lw	a5,-28(s0)
	bne	a5,zero,.L116
	.loc 1 1295 14
	li	a5,-4
	j	.L109
.L116:
	.loc 1 1297 40
	lw	a5,-28(s0)
	lw	a4,0(a5)
	.loc 1 1297 27
	lw	a5,-52(s0)
	sw	a4,0(a5)
.L113:
.LBE10:
	.loc 1 1301 21
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 1301 7
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a0,a5
	call	lwip_htonl
	mv	a4,a0
	.loc 1 1301 43 discriminator 1
	lw	a5,-52(s0)
	lw	a5,68(a5)
	.loc 1 1301 38 discriminator 1
	sub	a5,a4,a5
	.loc 1 1301 58 discriminator 1
	lw	a4,-20(s0)
	lhu	a4,8(a4)
	.loc 1 1301 53 discriminator 1
	add	a5,a5,a4
	.loc 1 1301 6 discriminator 1
	lw	a4,-36(s0)
	bgeu	a4,a5,.L117
	.loc 1 1308 19
	lw	a5,-52(s0)
	lhu	a5,96(a5)
	mv	a4,a5
	.loc 1 1308 8
	lw	a5,-36(s0)
	bne	a5,a4,.L118
	.loc 1 1308 35 discriminator 1
	lw	a5,-52(s0)
	lw	a5,112(a5)
	.loc 1 1308 29 discriminator 1
	bne	a5,zero,.L118
	.loc 1 1308 58 discriminator 2
	lw	a5,-52(s0)
	lbu	a5,161(a5)
	.loc 1 1308 52 discriminator 2
	bne	a5,zero,.L118
	.loc 1 1309 24
	lw	a5,-52(s0)
	sb	zero,160(a5)
	.loc 1 1310 28
	lw	a5,-52(s0)
	li	a4,1
	sb	a4,161(a5)
	.loc 1 1311 26
	lw	a5,-52(s0)
	sb	zero,162(a5)
.L118:
	.loc 1 1314 12
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 1314 20
	andi	a5,a5,2
	.loc 1 1314 8
	beq	a5,zero,.L148
	.loc 1 1315 14
	lw	a0,-52(s0)
	call	tcp_send_empty_ack
	mv	a5,a0
	j	.L109
.L117:
	.loc 1 1320 24
	lw	a5,-52(s0)
	sb	zero,161(a5)
	.loc 1 1323 8
	lw	a5,-52(s0)
	lw	a5,112(a5)
	sw	a5,-24(s0)
	.loc 1 1324 6
	lw	a5,-24(s0)
	beq	a5,zero,.L123
	.loc 1 1325 5
	j	.L121
.L122:
	.loc 1 1325 36 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
.L121:
	.loc 1 1325 16 discriminator 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1325 23 discriminator 1
	bne	a5,zero,.L122
	.loc 1 1328 9
	j	.L123
.L146:
	.loc 1 1330 41
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 1330 26
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	.loc 1 1339 18
	lw	a5,-52(s0)
	lw	a5,112(a5)
	.loc 1 1339 202
	beq	a5,zero,.L124
	.loc 1 1339 20 discriminator 2
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 1339 28 discriminator 2
	andi	a5,a5,68
	.loc 1 1339 11 discriminator 2
	bne	a5,zero,.L124
	.loc 1 1339 57 discriminator 4
	lw	a5,-52(s0)
	lw	a5,108(a5)
	.loc 1 1339 47 discriminator 4
	beq	a5,zero,.L125
	.loc 1 1339 21 discriminator 5
	lw	a5,-52(s0)
	lw	a5,108(a5)
	.loc 1 1339 29 discriminator 5
	lw	a5,0(a5)
	.loc 1 1339 11 discriminator 5
	bne	a5,zero,.L124
	.loc 1 1339 20 discriminator 8
	lw	a5,-52(s0)
	lw	a5,108(a5)
	.loc 1 1339 28 discriminator 8
	lhu	a4,8(a5)
	.loc 1 1339 42 discriminator 8
	lw	a5,-52(s0)
	lhu	a5,50(a5)
	.loc 1 1339 11 discriminator 8
	bgeu	a4,a5,.L124
.L125:
	.loc 1 1339 63 discriminator 10
	lw	a5,-52(s0)
	lhu	a5,100(a5)
	.loc 1 1339 202 discriminator 10
	beq	a5,zero,.L124
	.loc 1 1339 91 discriminator 12
	lw	a5,-52(s0)
	lhu	a4,102(a5)
	.loc 1 1339 81 discriminator 12
	li	a5,15
	bleu	a4,a5,.L126
.L124:
	.loc 1 1339 202 discriminator 13
	li	a5,1
	.loc 1 1339 202 is_stmt 0
	j	.L127
.L126:
	.loc 1 1339 202 discriminator 14
	li	a5,0
.L127:
	.loc 1 1339 8 is_stmt 1 discriminator 16
	bne	a5,zero,.L128
	.loc 1 1340 14
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 1340 22
	andi	a5,a5,160
	.loc 1 1339 213 discriminator 17
	beq	a5,zero,.L149
.L128:
	.loc 1 1352 12
	lw	a5,-52(s0)
	lbu	a4,20(a5)
	.loc 1 1352 8
	li	a5,2
	beq	a4,a5,.L130
	.loc 1 1353 48
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 1353 57
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	s1,a5,16
	srli	s1,s1,16
	.loc 1 1353 80
	li	a0,16
	call	lwip_htons
	mv	a5,a0
	mv	a4,a5
	.loc 1 1353 11 discriminator 1
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 1353 41 discriminator 1
	or	a4,s1,a4
	slli	a4,a4,16
	srli	a4,a4,16
	andi	a3,a4,255
	lbu	a2,12(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,12(a5)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,13(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,13(a5)
.L130:
	.loc 1 1356 11
	lw	a2,-40(s0)
	lw	a1,-52(s0)
	lw	a0,-20(s0)
	call	tcp_output_segment
	mv	a5,a0
	sb	a5,-41(s0)
	.loc 1 1357 8
	lb	a5,-41(s0)
	beq	a5,zero,.L131
	.loc 1 1359 45
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 1359 27
	ori	a5,a5,128
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1359 25
	lw	a5,-52(s0)
	sh	a4,26(a5)
	.loc 1 1360 14
	lb	a5,-41(s0)
	j	.L109
.L131:
	.loc 1 1365 22
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 1365 17
	lw	a5,-52(s0)
	sw	a4,108(a5)
	.loc 1 1366 12
	lw	a5,-52(s0)
	lbu	a4,20(a5)
	.loc 1 1366 8
	li	a5,2
	beq	a4,a5,.L132
	.loc 1 1367 45
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 1367 27
	andi	a5,a5,-4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1367 25
	lw	a5,-52(s0)
	sh	a4,26(a5)
.L132:
	.loc 1 1369 29
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 1369 15
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a0,a5
	call	lwip_htonl
	mv	s1,a0
	.loc 1 1369 54 discriminator 1
	lw	a5,-20(s0)
	lhu	a5,8(a5)
	mv	s2,a5
	.loc 1 1369 91 discriminator 1
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 1369 74 discriminator 1
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1369 66 discriminator 2
	andi	a5,a5,0xff
	.loc 1 1369 133 discriminator 2
	andi	a5,a5,3
	.loc 1 1369 163 discriminator 2
	beq	a5,zero,.L133
	.loc 1 1369 163 is_stmt 0 discriminator 3
	li	a5,1
	j	.L134
.L133:
	.loc 1 1369 163 discriminator 4
	li	a5,0
.L134:
	.loc 1 1369 60 is_stmt 1 discriminator 6
	add	a5,a5,s2
	.loc 1 1369 13 discriminator 6
	add	a5,s1,a5
	sw	a5,-48(s0)
	.loc 1 1370 30
	lw	a5,-52(s0)
	lw	a4,80(a5)
	.loc 1 1370 11
	lw	a5,-48(s0)
	sub	a5,a4,a5
	.loc 1 1370 8
	bge	a5,zero,.L135
	.loc 1 1371 20
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,80(a5)
.L135:
	.loc 1 1374 15
	lw	a5,-20(s0)
	lhu	a5,8(a5)
	mv	s1,a5
	.loc 1 1374 52
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 1374 35
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1374 27 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1374 94 discriminator 1
	andi	a5,a5,3
	.loc 1 1374 124 discriminator 1
	beq	a5,zero,.L136
	.loc 1 1374 124 is_stmt 0 discriminator 2
	li	a5,1
	j	.L137
.L136:
	.loc 1 1374 124 discriminator 3
	li	a5,0
.L137:
	.loc 1 1374 21 is_stmt 1 discriminator 5
	add	a5,a5,s1
	.loc 1 1374 8 discriminator 5
	beq	a5,zero,.L138
	.loc 1 1375 17
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 1 1377 14
	lw	a5,-52(s0)
	lw	a5,112(a5)
	.loc 1 1377 10
	bne	a5,zero,.L139
	.loc 1 1378 22
	lw	a5,-52(s0)
	lw	a4,-20(s0)
	sw	a4,112(a5)
	.loc 1 1379 14
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	j	.L145
.L139:
	.loc 1 1387 12
	lw	a5,-24(s0)
	beq	a5,zero,.L141
	.loc 1 1387 63 discriminator 1
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 1387 49 discriminator 1
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a0,a5
	call	lwip_htonl
	mv	s1,a0
	.loc 1 1387 106 discriminator 2
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 1387 91 discriminator 2
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a0,a5
	call	lwip_htonl
	mv	a5,a0
	.loc 1 1387 33 discriminator 3
	sub	a5,s1,a5
	.loc 1 1387 27 discriminator 3
	bge	a5,zero,.L141
.LBB11:
	.loc 1 1389 28
	lw	a5,-52(s0)
	addi	a5,a5,112
	sw	a5,-32(s0)
	.loc 1 1390 17
	j	.L142
.L144:
	.loc 1 1392 26
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 1392 21
	sw	a5,-32(s0)
.L142:
	.loc 1 1390 18
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 1390 27
	beq	a5,zero,.L143
	.loc 1 1391 48
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 1391 57
	lw	a5,16(a5)
	.loc 1 1391 36
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a0,a5
	call	lwip_htonl
	mv	s1,a0
	.loc 1 1391 99 discriminator 1
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 1391 85 discriminator 1
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a0,a5
	call	lwip_htonl
	mv	a5,a0
	.loc 1 1391 20 discriminator 2
	sub	a5,s1,a5
	.loc 1 1390 27 discriminator 1
	blt	a5,zero,.L144
.L143:
	.loc 1 1394 24
	lw	a5,-32(s0)
	lw	a4,0(a5)
	.loc 1 1394 21
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 1395 22
	lw	a5,-32(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
.LBE11:
	.loc 1 1387 148
	j	.L145
.L141:
	.loc 1 1398 16
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	j	.L145
.L138:
	.loc 1 1403 7
	lw	a0,-20(s0)
	call	tcp_seg_free
.L145:
	.loc 1 1405 9
	lw	a5,-52(s0)
	lw	a5,108(a5)
	sw	a5,-20(s0)
.L123:
	.loc 1 1328 21
	lw	a5,-20(s0)
	beq	a5,zero,.L129
	.loc 1 1329 24
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 1329 10
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a0,a5
	call	lwip_htonl
	mv	a4,a0
	.loc 1 1329 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,68(a5)
	.loc 1 1329 41 discriminator 1
	sub	a5,a4,a5
	.loc 1 1329 61 discriminator 1
	lw	a4,-20(s0)
	lhu	a4,8(a4)
	.loc 1 1329 56 discriminator 1
	add	a5,a5,a4
	.loc 1 1328 21 discriminator 1
	lw	a4,-36(s0)
	bgeu	a4,a5,.L146
	j	.L129
.L149:
	.loc 1 1341 7
	nop
.L129:
	.loc 1 1408 10
	lw	a5,-52(s0)
	lw	a5,108(a5)
	.loc 1 1408 6
	bne	a5,zero,.L150
	.loc 1 1410 26
	lw	a5,-52(s0)
	sh	zero,104(a5)
	j	.L110
.L147:
	.loc 1 1276 5
	nop
	j	.L110
.L148:
	.loc 1 1317 5
	nop
	j	.L110
.L150:
	.loc 1 1414 1
	nop
.L110:
	.loc 1 1415 41
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 1415 23
	andi	a5,a5,-129
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1415 21
	lw	a5,-52(s0)
	sh	a4,26(a5)
	.loc 1 1416 10
	li	a5,0
.L109:
	.loc 1 1417 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	tcp_output, .-tcp_output
	.section	.text.tcp_output_segment_busy,"ax",@progbits
	.align	1
	.type	tcp_output_segment_busy, @function
tcp_output_segment_busy:
.LFB15:
	.loc 1 1430 1
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
	.loc 1 1436 10
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 1436 13
	lbu	a4,14(a5)
	.loc 1 1436 6
	li	a5,1
	beq	a4,a5,.L152
	.loc 1 1438 12
	li	a5,1
	j	.L153
.L152:
	.loc 1 1441 10
	li	a5,0
.L153:
	.loc 1 1442 1
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
	.size	tcp_output_segment_busy, .-tcp_output_segment_busy
	.section	.text.tcp_output_segment,"ax",@progbits
	.align	1
	.type	tcp_output_segment, @function
tcp_output_segment:
.LFB16:
	.loc 1 1453 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	.loc 1 1458 7
	sw	zero,-20(s0)
	.loc 1 1465 7
	lw	a0,-52(s0)
	call	tcp_output_segment_busy
	mv	a5,a0
	.loc 1 1465 6 discriminator 1
	beq	a5,zero,.L155
	.loc 1 1469 12
	li	a5,0
	j	.L156
.L155:
	.loc 1 1474 24
	lw	a5,-56(s0)
	lw	a4,36(a5)
	.loc 1 1474 6
	lw	a5,-52(s0)
	lw	s1,16(a5)
	.loc 1 1474 24
	mv	a0,a4
	call	lwip_htonl
	mv	a5,a0
	.loc 1 1474 22 discriminator 1
	andi	a4,a5,255
	lbu	a3,8(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,8(s1)
	srli	a4,a5,8
	andi	a4,a4,255
	lbu	a3,9(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,9(s1)
	srli	a4,a5,16
	andi	a4,a4,255
	lbu	a3,10(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,10(s1)
	srli	a5,a5,24
	lbu	a4,11(s1)
	andi	a4,a4,0
	or	a5,a4,a5
	sb	a5,11(s1)
	.loc 1 1485 39
	lw	a5,-56(s0)
	lhu	a4,42(a5)
	.loc 1 1485 8
	lw	a5,-52(s0)
	lw	s1,16(a5)
	.loc 1 1485 24
	mv	a0,a4
	call	lwip_htons
	mv	a5,a0
	.loc 1 1485 22 discriminator 1
	andi	a4,a5,255
	lbu	a3,14(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,14(s1)
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	lbu	a4,15(s1)
	andi	a4,a4,0
	or	a5,a4,a5
	sb	a5,15(s1)
	.loc 1 1488 32
	lw	a5,-56(s0)
	lw	a5,36(a5)
	.loc 1 1488 47
	lw	a4,-56(s0)
	lhu	a4,42(a4)
	.loc 1 1488 42
	add	a4,a5,a4
	.loc 1 1488 27
	lw	a5,-56(s0)
	sw	a4,44(a5)
	.loc 1 1493 31
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 1 1493 8
	addi	a5,a5,20
	sw	a5,-24(s0)
	.loc 1 1494 10
	lw	a5,-52(s0)
	lbu	a5,13(a5)
	.loc 1 1494 18
	andi	a5,a5,1
	.loc 1 1494 6
	beq	a5,zero,.L157
.LBB12:
	.loc 1 1497 62
	lw	a5,-56(s0)
	addi	a5,a5,4
	.loc 1 1497 11
	mv	a2,a5
	lw	a1,-60(s0)
	li	a0,688
	call	tcp_eff_send_mss_netif
	mv	a5,a0
	sh	a5,-26(s0)
	.loc 1 1501 44
	lhu	a4,-26(s0)
	.loc 1 1501 35
	li	a5,33816576
	or	a5,a4,a5
	.loc 1 1501 13
	mv	a0,a5
	call	lwip_htonl
	mv	a4,a0
	.loc 1 1501 11 discriminator 1
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 1502 10
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
.L157:
.LBE12:
	.loc 1 1531 10
	lw	a5,-56(s0)
	lh	a5,48(a5)
	.loc 1 1531 6
	bge	a5,zero,.L158
	.loc 1 1532 16
	lw	a5,-56(s0)
	sh	zero,48(a5)
.L158:
	.loc 1 1535 10
	lw	a5,-56(s0)
	lw	a5,52(a5)
	.loc 1 1535 6
	bne	a5,zero,.L159
	.loc 1 1536 17
	lui	a5,%hi(tcp_ticks)
	lw	a4,%lo(tcp_ticks)(a5)
	lw	a5,-56(s0)
	sw	a4,52(a5)
	.loc 1 1537 32
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 1 1537 18
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a0,a5
	call	lwip_htonl
	mv	a4,a0
	.loc 1 1537 16 discriminator 1
	lw	a5,-56(s0)
	sw	a4,56(a5)
.L159:
	.loc 1 1545 28
	lw	a5,-52(s0)
	lw	a4,16(a5)
	.loc 1 1545 50
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 1545 53
	lw	a5,4(a5)
	.loc 1 1545 37
	sub	a5,a4,a5
	.loc 1 1545 7
	sh	a5,-28(s0)
	.loc 1 1551 6
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 1551 9
	lhu	a4,10(a5)
	.loc 1 1551 6
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 1551 15
	lhu	a3,-28(s0)
	sub	a4,a4,a3
	slli	a4,a4,16
	srli	a4,a4,16
	sh	a4,10(a5)
	.loc 1 1552 6
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 1552 9
	lhu	a4,8(a5)
	.loc 1 1552 6
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 1552 19
	lhu	a3,-28(s0)
	sub	a4,a4,a3
	slli	a4,a4,16
	srli	a4,a4,16
	sh	a4,8(a5)
	.loc 1 1554 6
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 1554 24
	lw	a4,-52(s0)
	lw	a4,16(a4)
	.loc 1 1554 19
	sw	a4,4(a5)
	.loc 1 1556 6
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 1 1556 23
	lbu	a4,16(a5)
	andi	a4,a4,0
	sb	a4,16(a5)
	lbu	a4,17(a5)
	andi	a4,a4,0
	sb	a4,17(a5)
.LBB13:
	.loc 1 1571 13
	lw	a5,-52(s0)
	lbu	a5,13(a5)
	.loc 1 1571 21
	andi	a5,a5,4
	.loc 1 1571 8
	bne	a5,zero,.L160
	.loc 1 1572 69
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 1 1572 54
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
.L160:
	.loc 1 1577 11
	lw	a5,-52(s0)
	lw	s1,4(a5)
	.loc 1 1578 39
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 1577 11
	lhu	s2,8(a5)
	.loc 1 1578 85
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 1 1578 70
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1578 62 discriminator 1
	srli	a5,a5,12
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1578 54 discriminator 1
	andi	a5,a5,0xff
	slli	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 1577 11
	mv	a3,a5
	.loc 1 1578 132
	lw	a4,-56(s0)
	.loc 1 1578 148
	lw	a5,-56(s0)
	addi	a5,a5,4
	.loc 1 1577 11
	mv	a2,s2
	li	a1,6
	mv	a0,s1
	call	ip_chksum_pseudo_partial
	mv	a5,a0
	.loc 1 1577 9 discriminator 1
	sw	a5,-32(s0)
	.loc 1 1580 12
	lw	a5,-52(s0)
	lbu	a5,12(a5)
	.loc 1 1580 8
	beq	a5,zero,.L161
	.loc 1 1581 30
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 1582 27
	lw	a5,-52(s0)
	lhu	a5,10(a5)
	.loc 1 1582 51
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,8
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 1582 59
	lw	a5,-52(s0)
	lhu	a5,10(a5)
	.loc 1 1582 79
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 1582 51
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1582 19
	lw	a5,-52(s0)
	sh	a4,10(a5)
	.loc 1 1583 27
	lw	a5,-52(s0)
	sb	zero,12(a5)
.L161:
	.loc 1 1585 11
	lw	a5,-32(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	not	a5,a5
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a4,a5
	.loc 1 1585 28
	lw	a5,-52(s0)
	lhu	a5,10(a5)
	.loc 1 1585 23
	add	a5,a4,a5
	.loc 1 1585 9
	sw	a5,-32(s0)
	.loc 1 1586 51
	lw	a5,-32(s0)
	srli	a5,a5,16
	.loc 1 1586 36
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-32(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1586 8
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 1 1586 27
	not	a4,a4
	slli	a4,a4,16
	srli	a4,a4,16
	.loc 1 1586 25
	andi	a3,a4,255
	lbu	a2,16(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,16(a5)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,17(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,17(a5)
.LBE13:
	.loc 1 1601 19
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,148(a5)
	.loc 1 1601 3
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,148(a5)
	.loc 1 1604 9
	lw	a5,-52(s0)
	lw	a0,4(a5)
	.loc 1 1604 31
	lw	a1,-56(s0)
	.loc 1 1604 47
	lw	a5,-56(s0)
	addi	a2,a5,4
	.loc 1 1604 9
	lw	a5,-56(s0)
	lbu	a3,11(a5)
	lw	a5,-56(s0)
	lbu	a4,10(a5)
	lw	a6,-60(s0)
	li	a5,6
	call	ip4_output_if
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 1 1609 6
	lw	a5,-20(s0)
	beq	a5,zero,.L162
	.loc 1 1612 25
	lw	a5,-52(s0)
	lhu	a5,10(a5)
	.loc 1 1612 49
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,8
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 1612 57
	lw	a5,-52(s0)
	lhu	a5,10(a5)
	.loc 1 1612 77
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 1612 49
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1612 17
	lw	a5,-52(s0)
	sh	a4,10(a5)
	.loc 1 1613 25
	lw	a5,-52(s0)
	li	a4,1
	sb	a4,12(a5)
.L162:
	.loc 1 1617 10
	lb	a5,-33(s0)
.L156:
	.loc 1 1618 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	tcp_output_segment, .-tcp_output_segment
	.section	.text.tcp_rexmit_rto_prepare,"ax",@progbits
	.align	1
	.globl	tcp_rexmit_rto_prepare
	.type	tcp_rexmit_rto_prepare, @function
tcp_rexmit_rto_prepare:
.LFB17:
	.loc 1 1629 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 1634 10
	lw	a5,-36(s0)
	lw	a5,112(a5)
	.loc 1 1634 6
	bne	a5,zero,.L164
	.loc 1 1635 12
	li	a5,-6
	j	.L165
.L164:
	.loc 1 1642 12
	lw	a5,-36(s0)
	lw	a5,112(a5)
	sw	a5,-20(s0)
	.loc 1 1642 3
	j	.L166
.L168:
	.loc 1 1643 9
	lw	a0,-20(s0)
	call	tcp_output_segment_busy
	mv	a5,a0
	.loc 1 1643 8 discriminator 1
	beq	a5,zero,.L167
	.loc 1 1645 14
	li	a5,-6
	j	.L165
.L167:
	.loc 1 1642 50 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L166:
	.loc 1 1642 31 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1642 38 discriminator 1
	bne	a5,zero,.L168
	.loc 1 1648 7
	lw	a0,-20(s0)
	call	tcp_output_segment_busy
	mv	a5,a0
	.loc 1 1648 6 discriminator 1
	beq	a5,zero,.L169
	.loc 1 1650 12
	li	a5,-6
	j	.L165
.L169:
	.loc 1 1653 18
	lw	a5,-36(s0)
	lw	a4,108(a5)
	.loc 1 1653 13
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 1661 20
	lw	a5,-36(s0)
	lw	a4,112(a5)
	.loc 1 1661 15
	lw	a5,-36(s0)
	sw	a4,108(a5)
	.loc 1 1663 16
	lw	a5,-36(s0)
	sw	zero,112(a5)
	.loc 1 1666 41
	lw	a5,-36(s0)
	lhu	a4,26(a5)
	.loc 1 1666 23
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1666 21
	lw	a5,-36(s0)
	sh	a4,26(a5)
	.loc 1 1668 32
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 1668 18
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a0,a5
	call	lwip_htonl
	mv	s1,a0
	.loc 1 1668 57 discriminator 1
	lw	a5,-20(s0)
	lhu	a5,8(a5)
	mv	s2,a5
	.loc 1 1668 94 discriminator 1
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 1668 77 discriminator 1
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1668 69 discriminator 2
	andi	a5,a5,0xff
	.loc 1 1668 136 discriminator 2
	andi	a5,a5,3
	.loc 1 1668 166 discriminator 2
	beq	a5,zero,.L170
	.loc 1 1668 166 is_stmt 0 discriminator 3
	li	a5,1
	j	.L171
.L170:
	.loc 1 1668 166 discriminator 4
	li	a5,0
.L171:
	.loc 1 1668 63 is_stmt 1 discriminator 6
	add	a5,a5,s2
	.loc 1 1668 49 discriminator 6
	add	a4,s1,a5
	.loc 1 1668 16 discriminator 6
	lw	a5,-36(s0)
	sw	a4,76(a5)
	.loc 1 1670 15
	lw	a5,-36(s0)
	sw	zero,52(a5)
	.loc 1 1672 10
	li	a5,0
.L165:
	.loc 1 1673 1
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
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	tcp_rexmit_rto_prepare, .-tcp_rexmit_rto_prepare
	.section	.text.tcp_rexmit_rto_commit,"ax",@progbits
	.align	1
	.globl	tcp_rexmit_rto_commit
	.type	tcp_rexmit_rto_commit, @function
tcp_rexmit_rto_commit:
.LFB18:
	.loc 1 1684 1
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
	.loc 1 1688 10
	lw	a5,-20(s0)
	lbu	a4,66(a5)
	.loc 1 1688 6
	li	a5,255
	beq	a4,a5,.L173
	.loc 1 1689 10
	lw	a5,-20(s0)
	lbu	a5,66(a5)
	.loc 1 1689 5
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,66(a5)
.L173:
	.loc 1 1692 3
	lw	a0,-20(s0)
	call	tcp_output
	.loc 1 1693 1
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
	.size	tcp_rexmit_rto_commit, .-tcp_rexmit_rto_commit
	.section	.text.tcp_rexmit_rto,"ax",@progbits
	.align	1
	.globl	tcp_rexmit_rto
	.type	tcp_rexmit_rto, @function
tcp_rexmit_rto:
.LFB19:
	.loc 1 1705 1
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
	.loc 1 1708 7
	lw	a0,-20(s0)
	call	tcp_rexmit_rto_prepare
	mv	a5,a0
	.loc 1 1708 6 discriminator 1
	bne	a5,zero,.L176
	.loc 1 1709 5
	lw	a0,-20(s0)
	call	tcp_rexmit_rto_commit
.L176:
	.loc 1 1711 1
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
	.size	tcp_rexmit_rto, .-tcp_rexmit_rto
	.section	.text.tcp_rexmit,"ax",@progbits
	.align	1
	.globl	tcp_rexmit
	.type	tcp_rexmit, @function
tcp_rexmit:
.LFB20:
	.loc 1 1722 1
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
	.loc 1 1728 10
	lw	a5,-36(s0)
	lw	a5,112(a5)
	.loc 1 1728 6
	bne	a5,zero,.L178
	.loc 1 1729 12
	li	a5,-6
	j	.L179
.L178:
	.loc 1 1732 7
	lw	a5,-36(s0)
	lw	a5,112(a5)
	sw	a5,-24(s0)
	.loc 1 1736 7
	lw	a0,-24(s0)
	call	tcp_output_segment_busy
	mv	a5,a0
	.loc 1 1736 6 discriminator 1
	beq	a5,zero,.L180
	.loc 1 1738 12
	li	a5,-6
	j	.L179
.L180:
	.loc 1 1743 21
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 1 1743 16
	lw	a5,-36(s0)
	sw	a4,112(a5)
	.loc 1 1745 11
	lw	a5,-36(s0)
	addi	a5,a5,108
	sw	a5,-20(s0)
	.loc 1 1746 9
	j	.L181
.L183:
	.loc 1 1748 18
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1748 13
	sw	a5,-20(s0)
.L181:
	.loc 1 1746 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1746 19
	beq	a5,zero,.L182
	.loc 1 1747 40
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1747 49
	lw	a5,16(a5)
	.loc 1 1747 28
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a0,a5
	call	lwip_htonl
	mv	s1,a0
	.loc 1 1747 91 discriminator 1
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 1747 77 discriminator 1
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a0,a5
	call	lwip_htonl
	mv	a5,a0
	.loc 1 1747 12 discriminator 2
	sub	a5,s1,a5
	.loc 1 1746 19 discriminator 1
	blt	a5,zero,.L183
.L182:
	.loc 1 1750 15
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 1750 13
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 1751 12
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 1753 10
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1753 6
	bne	a5,zero,.L184
	.loc 1 1755 26
	lw	a5,-36(s0)
	sh	zero,104(a5)
.L184:
	.loc 1 1759 10
	lw	a5,-36(s0)
	lbu	a4,66(a5)
	.loc 1 1759 6
	li	a5,255
	beq	a4,a5,.L185
	.loc 1 1760 10
	lw	a5,-36(s0)
	lbu	a5,66(a5)
	.loc 1 1760 5
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	sb	a4,66(a5)
.L185:
	.loc 1 1764 15
	lw	a5,-36(s0)
	sw	zero,52(a5)
	.loc 1 1770 10
	li	a5,0
.L179:
	.loc 1 1771 1
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
.LFE20:
	.size	tcp_rexmit, .-tcp_rexmit
	.section	.text.tcp_rexmit_fast,"ax",@progbits
	.align	1
	.globl	tcp_rexmit_fast
	.type	tcp_rexmit_fast, @function
tcp_rexmit_fast:
.LFB21:
	.loc 1 1781 1
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
	.loc 1 1784 10
	lw	a5,-20(s0)
	lw	a5,112(a5)
	.loc 1 1784 6
	beq	a5,zero,.L190
	.loc 1 1784 35 discriminator 1
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 1784 43 discriminator 1
	andi	a5,a5,4
	.loc 1 1784 27 discriminator 1
	bne	a5,zero,.L190
	.loc 1 1791 9
	lw	a0,-20(s0)
	call	tcp_rexmit
	mv	a5,a0
	.loc 1 1791 8 discriminator 1
	bne	a5,zero,.L190
	.loc 1 1794 43
	lw	a5,-20(s0)
	lhu	a4,96(a5)
	.loc 1 1794 29
	lw	a5,-20(s0)
	lhu	a5,72(a5)
	.loc 1 1794 69
	mv	a2,a5
	mv	a3,a4
	slli	a4,a3,16
	srli	a4,a4,16
	slli	a5,a2,16
	srli	a5,a5,16
	bleu	a4,a5,.L188
	mv	a3,a2
.L188:
	slli	a5,a3,16
	srli	a5,a5,16
	.loc 1 1794 87
	srai	a5,a5,1
	.loc 1 1794 21
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-20(s0)
	sh	a4,74(a5)
	.loc 1 1797 14
	lw	a5,-20(s0)
	lhu	a5,74(a5)
	mv	a4,a5
	.loc 1 1797 36
	lw	a5,-20(s0)
	lhu	a5,50(a5)
	.loc 1 1797 31
	slli	a5,a5,1
	.loc 1 1797 10
	bgeu	a4,a5,.L189
	.loc 1 1802 32
	lw	a5,-20(s0)
	lhu	a5,50(a5)
	.loc 1 1802 23
	slli	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-20(s0)
	sh	a4,74(a5)
.L189:
	.loc 1 1805 22
	lw	a5,-20(s0)
	lhu	a4,74(a5)
	.loc 1 1805 42
	lw	a5,-20(s0)
	lhu	a5,50(a5)
	.loc 1 1805 33
	mv	a3,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1805 17
	lw	a5,-20(s0)
	sh	a4,72(a5)
	.loc 1 1806 45
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 1806 27
	ori	a5,a5,4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1806 25
	lw	a5,-20(s0)
	sh	a4,26(a5)
	.loc 1 1809 18
	lw	a5,-20(s0)
	sh	zero,48(a5)
.L190:
	.loc 1 1812 1
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
	.size	tcp_rexmit_fast, .-tcp_rexmit_fast
	.section	.text.tcp_output_alloc_header_common,"ax",@progbits
	.align	1
	.type	tcp_output_alloc_header_common, @function
tcp_output_alloc_header_common:
.LFB22:
	.loc 1 1818 1
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
	mv	t1,a1
	mv	a0,a2
	sw	a3,-44(s0)
	mv	a1,a4
	mv	a2,a5
	mv	a3,a6
	mv	a4,a7
	mv	a5,t1
	sh	a5,-38(s0)
	mv	a5,a0
	sh	a5,-40(s0)
	mv	a5,a1
	sh	a5,-46(s0)
	mv	a5,a2
	sh	a5,-48(s0)
	mv	a5,a3
	sb	a5,-49(s0)
	mv	a5,a4
	sh	a5,-52(s0)
	.loc 1 1822 39
	lhu	a5,-38(s0)
	mv	a4,a5
	lhu	a5,-40(s0)
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1822 7
	addi	a5,a5,20
	slli	a5,a5,16
	srli	a5,a5,16
	li	a2,640
	mv	a1,a5
	li	a0,162
	call	pbuf_alloc
	sw	a0,-20(s0)
	.loc 1 1823 6
	lw	a5,-20(s0)
	beq	a5,zero,.L192
	.loc 1 1826 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 1827 19
	lhu	a5,-46(s0)
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	mv	a4,a5
	.loc 1 1827 17 discriminator 1
	lw	a5,-24(s0)
	andi	a3,a4,255
	lbu	a2,0(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,0(a5)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 1 1828 20
	lhu	a5,-48(s0)
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	mv	a4,a5
	.loc 1 1828 18 discriminator 1
	lw	a5,-24(s0)
	andi	a3,a4,255
	lbu	a2,2(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,2(a5)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 1 1829 19
	lw	a5,-24(s0)
	lw	a4,-44(s0)
	andi	a4,a4,255
	lbu	a3,4(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,4(a5)
	lw	a4,-44(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,5(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,5(a5)
	lw	a4,-44(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,6(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,6(a5)
	lw	a4,-44(s0)
	srli	a4,a4,24
	lbu	a3,7(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,7(a5)
	.loc 1 1830 21
	lw	a0,-36(s0)
	call	lwip_htonl
	mv	a4,a0
	.loc 1 1830 19 discriminator 1
	lw	a5,-24(s0)
	andi	a3,a4,255
	lbu	a2,8(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,8(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,9(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,9(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,10(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,10(a5)
	srli	a4,a4,24
	lbu	a3,11(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,11(a5)
	.loc 1 1831 55
	lhu	a5,-38(s0)
	srli	a5,a5,2
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1831 67
	addi	a5,a5,5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1831 55
	slli	a5,a5,12
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1831 44
	lbu	a5,-49(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	mv	a4,a5
	.loc 1 1831 34 discriminator 1
	lw	a5,-24(s0)
	andi	a3,a4,255
	lbu	a2,12(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,12(a5)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,13(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,13(a5)
	.loc 1 1832 19
	lhu	a5,-52(s0)
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	mv	a4,a5
	.loc 1 1832 17 discriminator 1
	lw	a5,-24(s0)
	andi	a3,a4,255
	lbu	a2,14(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,14(a5)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,15(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,15(a5)
	.loc 1 1833 20
	lw	a5,-24(s0)
	lbu	a4,16(a5)
	andi	a4,a4,0
	sb	a4,16(a5)
	lbu	a4,17(a5)
	andi	a4,a4,0
	sb	a4,17(a5)
	.loc 1 1834 18
	lw	a5,-24(s0)
	lbu	a4,18(a5)
	andi	a4,a4,0
	sb	a4,18(a5)
	lbu	a4,19(a5)
	andi	a4,a4,0
	sb	a4,19(a5)
.L192:
	.loc 1 1836 10
	lw	a5,-20(s0)
	.loc 1 1837 1
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
	.size	tcp_output_alloc_header_common, .-tcp_output_alloc_header_common
	.section	.text.tcp_output_alloc_header,"ax",@progbits
	.align	1
	.type	tcp_output_alloc_header, @function
tcp_output_alloc_header:
.LFB23:
	.loc 1 1852 1
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
	mv	a4,a2
	sw	a3,-44(s0)
	sh	a5,-38(s0)
	mv	a5,a4
	sh	a5,-40(s0)
	.loc 1 1857 7
	lw	a5,-36(s0)
	lw	a0,36(a5)
	lw	a5,-36(s0)
	lhu	a4,22(a5)
	lw	a5,-36(s0)
	lhu	a3,24(a5)
	.loc 1 1859 9
	lw	a5,-36(s0)
	lhu	a5,42(a5)
	.loc 1 1857 7
	lhu	a2,-40(s0)
	lhu	a1,-38(s0)
	mv	a7,a5
	li	a6,16
	mv	a5,a3
	lw	a3,-44(s0)
	call	tcp_output_alloc_header_common
	sw	a0,-20(s0)
	.loc 1 1860 6
	lw	a5,-20(s0)
	beq	a5,zero,.L195
	.loc 1 1862 34
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 1 1862 49
	lw	a4,-36(s0)
	lhu	a4,42(a4)
	.loc 1 1862 44
	add	a4,a5,a4
	.loc 1 1862 29
	lw	a5,-36(s0)
	sw	a4,44(a5)
.L195:
	.loc 1 1864 10
	lw	a5,-20(s0)
	.loc 1 1865 1
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
	.size	tcp_output_alloc_header, .-tcp_output_alloc_header
	.section	.text.tcp_output_fill_options,"ax",@progbits
	.align	1
	.type	tcp_output_fill_options, @function
tcp_output_fill_options:
.LFB24:
	.loc 1 1870 1
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
	mv	a4,a3
	sb	a5,-41(s0)
	mv	a5,a4
	sb	a5,-42(s0)
	.loc 1 1873 9
	sh	zero,-18(s0)
	.loc 1 1877 10
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 1878 8
	lw	a5,-24(s0)
	addi	a5,a5,20
	sw	a5,-28(s0)
	.loc 1 1909 1
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
.LFE24:
	.size	tcp_output_fill_options, .-tcp_output_fill_options
	.section	.text.tcp_output_control_segment,"ax",@progbits
	.align	1
	.type	tcp_output_control_segment, @function
tcp_output_control_segment:
.LFB25:
	.loc 1 1920 1
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
	.loc 1 1925 11
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	tcp_route
	sw	a0,-20(s0)
	.loc 1 1926 6
	lw	a5,-20(s0)
	bne	a5,zero,.L199
	.loc 1 1927 5
	lw	a0,-40(s0)
	call	pbuf_free
	.loc 1 1928 12
	li	a5,-4
	j	.L200
.L199:
	.loc 1 1930 10
	lw	a4,-20(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	tcp_output_control_segment_netif
	mv	a5,a0
.L200:
	.loc 1 1931 1
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
	.size	tcp_output_control_segment, .-tcp_output_control_segment
	.section	.text.tcp_output_control_segment_netif,"ax",@progbits
	.align	1
	.type	tcp_output_control_segment_netif, @function
tcp_output_control_segment_netif:
.LFB26:
	.loc 1 1942 1
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
.LBB14:
	.loc 1 1950 21
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 1951 22
	lw	a5,-40(s0)
	lhu	a5,8(a5)
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	mv	a2,a5
	li	a1,6
	lw	a0,-40(s0)
	call	ip_chksum_pseudo
	mv	a5,a0
	mv	a4,a5
	.loc 1 1951 20 discriminator 1
	lw	a5,-24(s0)
	andi	a3,a4,255
	lbu	a2,16(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,16(a5)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,17(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,17(a5)
.LBE14:
	.loc 1 1955 6
	lw	a5,-36(s0)
	beq	a5,zero,.L202
	.loc 1 1957 9
	lw	a5,-36(s0)
	lbu	a5,11(a5)
	sb	a5,-17(s0)
	.loc 1 1958 9
	lw	a5,-36(s0)
	lbu	a5,10(a5)
	sb	a5,-18(s0)
	j	.L203
.L202:
	.loc 1 1961 9
	li	a5,-1
	sb	a5,-17(s0)
	.loc 1 1962 9
	sb	zero,-18(s0)
.L203:
	.loc 1 1964 19
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,148(a5)
	.loc 1 1964 3
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,148(a5)
	.loc 1 1965 9
	lbu	a4,-18(s0)
	lbu	a3,-17(s0)
	lw	a6,-52(s0)
	li	a5,6
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	ip4_output_if
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 1 1968 3
	lw	a0,-40(s0)
	call	pbuf_free
	.loc 1 1969 10
	lb	a5,-25(s0)
	.loc 1 1970 1
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
	.size	tcp_output_control_segment_netif, .-tcp_output_control_segment_netif
	.section	.text.tcp_rst_common,"ax",@progbits
	.align	1
	.type	tcp_rst_common, @function
tcp_rst_common:
.LFB27:
	.loc 1 1976 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	mv	a4,a6
	sh	a5,-54(s0)
	mv	a5,a4
	sh	a5,-56(s0)
	.loc 1 1987 10
	sb	zero,-17(s0)
	.loc 1 1992 7
	li	a5,4096
	addi	a5,a5,8
	sh	a5,-20(s0)
	.loc 1 1995 7
	lbu	a5,-17(s0)
	slli	s1,a5,16
	srli	s1,s1,16
	lw	a0,-40(s0)
	call	lwip_htonl
	mv	a2,a0
	.loc 1 1995 7 is_stmt 0 discriminator 1
	lhu	a3,-20(s0)
	lhu	a5,-56(s0)
	lhu	a4,-54(s0)
	mv	a7,a3
	li	a6,20
	mv	a3,a2
	li	a2,0
	mv	a1,s1
	lw	a0,-44(s0)
	call	tcp_output_alloc_header_common
	sw	a0,-24(s0)
	.loc 1 1997 6 is_stmt 1
	lw	a5,-24(s0)
	bne	a5,zero,.L206
	.loc 1 1999 11
	li	a5,0
	j	.L207
.L206:
	.loc 1 2001 3
	li	a3,0
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	tcp_output_fill_options
	.loc 1 2006 10
	lw	a5,-24(s0)
.L207:
	.loc 1 2007 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	tcp_rst_common, .-tcp_rst_common
	.section	.text.tcp_rst,"ax",@progbits
	.align	1
	.globl	tcp_rst
	.type	tcp_rst, @function
tcp_rst:
.LFB28:
	.loc 1 2033 1
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
	mv	a4,a6
	sh	a5,-54(s0)
	mv	a5,a4
	sh	a5,-56(s0)
	.loc 1 2036 7
	lhu	a4,-56(s0)
	lhu	a5,-54(s0)
	mv	a6,a4
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	tcp_rst_common
	sw	a0,-20(s0)
	.loc 1 2037 6
	lw	a5,-20(s0)
	beq	a5,zero,.L210
	.loc 1 2038 5
	lw	a3,-52(s0)
	lw	a2,-48(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	tcp_output_control_segment
.L210:
	.loc 1 2040 1
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
.LFE28:
	.size	tcp_rst, .-tcp_rst
	.section	.text.tcp_rst_netif,"ax",@progbits
	.align	1
	.globl	tcp_rst_netif
	.type	tcp_rst_netif, @function
tcp_rst_netif:
.LFB29:
	.loc 1 2065 1
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
	mv	a4,a6
	sh	a5,-54(s0)
	mv	a5,a4
	sh	a5,-56(s0)
	.loc 1 2066 6
	lw	a5,-36(s0)
	beq	a5,zero,.L213
.LBB15:
	.loc 1 2067 22
	lhu	a4,-56(s0)
	lhu	a5,-54(s0)
	mv	a6,a4
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	li	a0,0
	call	tcp_rst_common
	sw	a0,-20(s0)
	.loc 1 2068 8
	lw	a5,-20(s0)
	beq	a5,zero,.L213
	.loc 1 2069 7
	lw	a4,-36(s0)
	lw	a3,-52(s0)
	lw	a2,-48(s0)
	lw	a1,-20(s0)
	li	a0,0
	call	tcp_output_control_segment_netif
.L213:
.LBE15:
	.loc 1 2074 1
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
.LFE29:
	.size	tcp_rst_netif, .-tcp_rst_netif
	.section	.text.tcp_send_empty_ack,"ax",@progbits
	.align	1
	.globl	tcp_send_empty_ack
	.type	tcp_send_empty_ack, @function
tcp_send_empty_ack:
.LFB30:
	.loc 1 2083 1
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
	.loc 1 2086 16
	sb	zero,-17(s0)
	.loc 1 2087 8
	sb	zero,-18(s0)
	.loc 1 2096 121
	lbu	a5,-17(s0)
	slli	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 2096 10
	andi	a5,a5,4
	sb	a5,-19(s0)
	.loc 1 2105 7
	lbu	a5,-19(s0)
	slli	s1,a5,16
	srli	s1,s1,16
	lw	a5,-36(s0)
	lw	a5,80(a5)
	mv	a0,a5
	call	lwip_htonl
	mv	a5,a0
	.loc 1 2105 7 is_stmt 0 discriminator 1
	mv	a3,a5
	li	a2,0
	mv	a1,s1
	lw	a0,-36(s0)
	call	tcp_output_alloc_header
	sw	a0,-24(s0)
	.loc 1 2106 6 is_stmt 1
	lw	a5,-24(s0)
	bne	a5,zero,.L215
	.loc 1 2108 43
	lw	a5,-36(s0)
	lhu	a5,26(a5)
	.loc 1 2108 25
	ori	a5,a5,3
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 2108 23
	lw	a5,-36(s0)
	sh	a4,26(a5)
	.loc 1 2110 12
	li	a5,-2
	j	.L216
.L215:
	.loc 1 2112 3
	lbu	a4,-18(s0)
	lbu	a5,-17(s0)
	mv	a3,a4
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	tcp_output_fill_options
	.loc 1 2120 44
	lw	a4,-36(s0)
	.loc 1 2120 60
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 2120 9
	mv	a3,a5
	mv	a2,a4
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	tcp_output_control_segment
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 1 2121 6
	lb	a5,-25(s0)
	beq	a5,zero,.L217
	.loc 1 2123 43
	lw	a5,-36(s0)
	lhu	a5,26(a5)
	.loc 1 2123 25
	ori	a5,a5,3
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 2123 23
	lw	a5,-36(s0)
	sh	a4,26(a5)
	j	.L218
.L217:
	.loc 1 2126 43
	lw	a5,-36(s0)
	lhu	a5,26(a5)
	.loc 1 2126 25
	andi	a5,a5,-4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 2126 23
	lw	a5,-36(s0)
	sh	a4,26(a5)
.L218:
	.loc 1 2129 10
	lb	a5,-25(s0)
.L216:
	.loc 1 2130 1
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
.LFE30:
	.size	tcp_send_empty_ack, .-tcp_send_empty_ack
	.section	.text.tcp_keepalive,"ax",@progbits
	.align	1
	.globl	tcp_keepalive
	.type	tcp_keepalive, @function
tcp_keepalive:
.LFB31:
	.loc 1 2142 1
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
	.loc 1 2145 8
	sb	zero,-17(s0)
	.loc 1 2156 7
	lbu	a5,-17(s0)
	slli	s1,a5,16
	srli	s1,s1,16
	.loc 1 2156 61
	lw	a5,-36(s0)
	lw	a5,80(a5)
	.loc 1 2156 71
	addi	a5,a5,-1
	.loc 1 2156 7
	mv	a0,a5
	call	lwip_htonl
	mv	a5,a0
	.loc 1 2156 7 is_stmt 0 discriminator 1
	mv	a3,a5
	li	a2,0
	mv	a1,s1
	lw	a0,-36(s0)
	call	tcp_output_alloc_header
	sw	a0,-24(s0)
	.loc 1 2157 6 is_stmt 1
	lw	a5,-24(s0)
	bne	a5,zero,.L220
	.loc 1 2160 12
	li	a5,-1
	j	.L221
.L220:
	.loc 1 2162 3
	li	a3,0
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	tcp_output_fill_options
	.loc 1 2163 44
	lw	a4,-36(s0)
	.loc 1 2163 60
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 2163 9
	mv	a3,a5
	mv	a2,a4
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	tcp_output_control_segment
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 1 2167 10
	lb	a5,-25(s0)
.L221:
	.loc 1 2168 1
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
.LFE31:
	.size	tcp_keepalive, .-tcp_keepalive
	.section	.text.tcp_zero_window_probe,"ax",@progbits
	.align	1
	.globl	tcp_zero_window_probe
	.type	tcp_zero_window_probe, @function
tcp_zero_window_probe:
.LFB32:
	.loc 1 2180 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	.loc 1 2188 8
	sb	zero,-17(s0)
	.loc 1 2202 7
	lw	a5,-52(s0)
	lw	a5,108(a5)
	sw	a5,-24(s0)
	.loc 1 2203 6
	lw	a5,-24(s0)
	bne	a5,zero,.L223
	.loc 1 2205 12
	li	a5,0
	j	.L224
.L223:
	.loc 1 2212 10
	lw	a5,-52(s0)
	lbu	a4,162(a5)
	.loc 1 2212 6
	li	a5,255
	beq	a4,a5,.L225
	.loc 1 2213 10
	lw	a5,-52(s0)
	lbu	a5,162(a5)
	.loc 1 2213 5
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-52(s0)
	sb	a4,162(a5)
.L225:
	.loc 1 2216 38
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 2216 23
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 2216 15 discriminator 1
	andi	a5,a5,0xff
	.loc 1 2216 80 discriminator 1
	andi	a5,a5,1
	.loc 1 2216 95 discriminator 1
	beq	a5,zero,.L226
	.loc 1 2216 102 discriminator 2
	lw	a5,-24(s0)
	lhu	a5,8(a5)
	.loc 1 2216 95 discriminator 2
	bne	a5,zero,.L226
	.loc 1 2216 95 is_stmt 0 discriminator 4
	li	a5,1
	.loc 1 2216 95
	j	.L227
.L226:
	.loc 1 2216 95 discriminator 5
	li	a5,0
.L227:
	.loc 1 2216 10 is_stmt 1 discriminator 7
	sb	a5,-25(s0)
	.loc 1 2218 20
	lbu	a5,-25(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 2218 7
	sh	a5,-28(s0)
	.loc 1 2220 7
	lbu	a5,-17(s0)
	slli	a1,a5,16
	srli	a1,a1,16
	.loc 1 2220 52
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 2220 7
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	lhu	a5,-28(s0)
	mv	a3,a4
	mv	a2,a5
	lw	a0,-52(s0)
	call	tcp_output_alloc_header
	sw	a0,-32(s0)
	.loc 1 2221 6
	lw	a5,-32(s0)
	bne	a5,zero,.L228
	.loc 1 2223 12
	li	a5,-1
	j	.L224
.L228:
	.loc 1 2225 10
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	.loc 1 2227 6
	lbu	a5,-25(s0)
	beq	a5,zero,.L229
	.loc 1 2229 46
	lw	a5,-36(s0)
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 2229 67
	li	a5,-16384
	addi	a5,a5,255
	and	a5,a4,a5
	slli	s1,a5,16
	srai	s1,s1,16
	.loc 1 2229 155
	li	a0,17
	call	lwip_htons
	mv	a5,a0
	.loc 1 2229 155 is_stmt 0 discriminator 1
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 2229 153 is_stmt 1 discriminator 1
	or	a5,s1,a5
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 2229 34 discriminator 1
	lw	a5,-36(s0)
	andi	a3,a4,255
	lbu	a2,12(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,12(a5)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,13(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,13(a5)
	j	.L230
.L229:
.LBB16:
	.loc 1 2232 25
	lw	a5,-32(s0)
	lw	a5,4(a5)
	.loc 1 2232 11
	addi	a5,a5,20
	sw	a5,-40(s0)
	.loc 1 2236 26
	lw	a5,-24(s0)
	lw	a0,4(a5)
	.loc 1 2236 40
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 2236 43
	lhu	a4,8(a5)
	.loc 1 2236 58
	lw	a5,-24(s0)
	lhu	a5,8(a5)
	.loc 1 2236 5
	sub	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a3,a5
	li	a2,1
	lw	a1,-40(s0)
	call	pbuf_copy_partial
.L230:
.LBE16:
	.loc 1 2240 27
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 2240 13
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a0,a5
	call	lwip_htonl
	mv	a5,a0
	.loc 1 2240 11 discriminator 1
	addi	a5,a5,1
	sw	a5,-44(s0)
	.loc 1 2241 28
	lw	a5,-52(s0)
	lw	a4,80(a5)
	.loc 1 2241 9
	lw	a5,-44(s0)
	sub	a5,a4,a5
	.loc 1 2241 6
	bge	a5,zero,.L231
	.loc 1 2242 18
	lw	a5,-52(s0)
	lw	a4,-44(s0)
	sw	a4,80(a5)
.L231:
	.loc 1 2244 3
	li	a3,0
	li	a2,0
	lw	a1,-32(s0)
	lw	a0,-52(s0)
	call	tcp_output_fill_options
	.loc 1 2246 44
	lw	a4,-52(s0)
	.loc 1 2246 60
	lw	a5,-52(s0)
	addi	a5,a5,4
	.loc 1 2246 9
	mv	a3,a5
	mv	a2,a4
	lw	a1,-32(s0)
	lw	a0,-52(s0)
	call	tcp_output_control_segment
	mv	a5,a0
	sb	a5,-45(s0)
	.loc 1 2251 10
	lb	a5,-45(s0)
.L224:
	.loc 1 2252 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	tcp_zero_window_probe, .-tcp_zero_window_probe
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcpbase.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/mem.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/stats.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcp.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/tcp_priv.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/tcp.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/inet_chksum.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1fb1
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x29
	.4byte	.LASF321
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2a
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xf
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xf
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xf
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0xf
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2b
	.byte	0x4
	.uleb128 0xa
	.4byte	0x8b
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x16
	.4byte	0x8b
	.uleb128 0xa
	.4byte	0x92
	.uleb128 0xa
	.4byte	0xa1
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x32
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x3
	.byte	0x25
	.byte	0x13
	.4byte	0x40
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x47
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x3
	.byte	0x56
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xba
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0xa2
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xc6
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x80
	.byte	0x11
	.4byte	0xae
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xd2
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.byte	0x87
	.byte	0x13
	.4byte	0xde
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x35
	.byte	0xf
	.4byte	0x102
	.uleb128 0x20
	.4byte	.LASF130
	.4byte	0x39
	.byte	0x5
	.byte	0x38
	.4byte	0x190
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x6
	.byte	0x43
	.byte	0xf
	.4byte	0x102
	.uleb128 0x1b
	.byte	0x5
	.byte	0x1
	.4byte	0x32
	.byte	0x7
	.byte	0x35
	.4byte	0x210
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0
	.uleb128 0xc
	.4byte	.LASF40
	.sleb128 -1
	.uleb128 0xc
	.4byte	.LASF41
	.sleb128 -2
	.uleb128 0xc
	.4byte	.LASF42
	.sleb128 -3
	.uleb128 0xc
	.4byte	.LASF43
	.sleb128 -4
	.uleb128 0xc
	.4byte	.LASF44
	.sleb128 -5
	.uleb128 0xc
	.4byte	.LASF45
	.sleb128 -6
	.uleb128 0xc
	.4byte	.LASF46
	.sleb128 -7
	.uleb128 0xc
	.4byte	.LASF47
	.sleb128 -8
	.uleb128 0xc
	.4byte	.LASF48
	.sleb128 -9
	.uleb128 0xc
	.4byte	.LASF49
	.sleb128 -10
	.uleb128 0xc
	.4byte	.LASF50
	.sleb128 -11
	.uleb128 0xc
	.4byte	.LASF51
	.sleb128 -12
	.uleb128 0xc
	.4byte	.LASF52
	.sleb128 -13
	.uleb128 0xc
	.4byte	.LASF53
	.sleb128 -14
	.uleb128 0xc
	.4byte	.LASF54
	.sleb128 -15
	.uleb128 0xc
	.4byte	.LASF55
	.sleb128 -16
	.byte	0
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x7
	.byte	0x60
	.byte	0xe
	.4byte	0xf6
	.uleb128 0x1b
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0x8
	.byte	0x59
	.4byte	0x248
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0xb6
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0xa2
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x8e
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x80
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x8
	.byte	0x70
	.byte	0x3
	.4byte	0x21c
	.uleb128 0x1b
	.byte	0x7
	.byte	0x2
	.4byte	0x47
	.byte	0x8
	.byte	0x91
	.4byte	0x27c
	.uleb128 0x21
	.4byte	.LASF63
	.2byte	0x280
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x41
	.uleb128 0x21
	.4byte	.LASF66
	.2byte	0x182
	.byte	0
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x8
	.byte	0xa8
	.byte	0x3
	.4byte	0x254
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x10
	.byte	0x8
	.byte	0xba
	.4byte	0x2fd
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x8
	.byte	0xbc
	.byte	0x10
	.4byte	0x302
	.byte	0
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x8
	.byte	0xbf
	.byte	0x9
	.4byte	0x84
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0x8
	.byte	0xc8
	.byte	0x9
	.4byte	0x102
	.byte	0x8
	.uleb128 0xb
	.string	"len"
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0x102
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0x8
	.byte	0xd0
	.byte	0x8
	.4byte	0xea
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x8
	.byte	0xd3
	.byte	0x8
	.4byte	0xea
	.byte	0xd
	.uleb128 0xb
	.string	"ref"
	.byte	0x8
	.byte	0xda
	.byte	0x8
	.4byte	0xea
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x8
	.byte	0xdd
	.byte	0x8
	.4byte	0xea
	.byte	0xf
	.byte	0
	.uleb128 0x16
	.4byte	0x288
	.uleb128 0xa
	.4byte	0x288
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x8
	.byte	0x8
	.byte	0xe8
	.4byte	0x32e
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x8
	.byte	0xea
	.byte	0x10
	.4byte	0x302
	.byte	0
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x8
	.byte	0xed
	.byte	0xf
	.4byte	0x9c
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x4
	.byte	0x9
	.byte	0x33
	.4byte	0x348
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0x9
	.byte	0x34
	.byte	0x9
	.4byte	0x11a
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x9
	.byte	0x39
	.byte	0x19
	.4byte	0x32e
	.uleb128 0x16
	.4byte	0x348
	.uleb128 0x2d
	.4byte	.LASF79
	.byte	0xa
	.2byte	0x126
	.byte	0x14
	.4byte	0x348
	.uleb128 0x16
	.4byte	0x359
	.uleb128 0x1b
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0xb
	.byte	0x34
	.4byte	0x3d9
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0xb
	.byte	0x38
	.byte	0x3
	.4byte	0x36b
	.uleb128 0xd
	.4byte	.LASF97
	.byte	0xa
	.byte	0xc
	.byte	0x62
	.4byte	0x433
	.uleb128 0xb
	.string	"err"
	.byte	0xc
	.byte	0x66
	.byte	0x9
	.4byte	0x102
	.byte	0
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xc
	.byte	0x67
	.byte	0xe
	.4byte	0x190
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0xc
	.byte	0x68
	.byte	0xe
	.4byte	0x190
	.byte	0x4
	.uleb128 0xb
	.string	"max"
	.byte	0xc
	.byte	0x69
	.byte	0xe
	.4byte	0x190
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0xc
	.byte	0x6a
	.byte	0x9
	.4byte	0x102
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	0x3e5
	.uleb128 0xa
	.4byte	0xea
	.uleb128 0xd
	.4byte	.LASF101
	.byte	0x18
	.byte	0xc
	.byte	0x40
	.4byte	0x4e5
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0xc
	.byte	0x41
	.byte	0x9
	.4byte	0x102
	.byte	0
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0xc
	.byte	0x42
	.byte	0x9
	.4byte	0x102
	.byte	0x2
	.uleb128 0xb
	.string	"fw"
	.byte	0xc
	.byte	0x43
	.byte	0x9
	.4byte	0x102
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0xc
	.byte	0x44
	.byte	0x9
	.4byte	0x102
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0xc
	.byte	0x45
	.byte	0x9
	.4byte	0x102
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0xc
	.byte	0x46
	.byte	0x9
	.4byte	0x102
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0xc
	.byte	0x47
	.byte	0x9
	.4byte	0x102
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0xc
	.byte	0x48
	.byte	0x9
	.4byte	0x102
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xc
	.byte	0x49
	.byte	0x9
	.4byte	0x102
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xc
	.byte	0x4a
	.byte	0x9
	.4byte	0x102
	.byte	0x12
	.uleb128 0xb
	.string	"err"
	.byte	0xc
	.byte	0x4b
	.byte	0x9
	.4byte	0x102
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0xc
	.byte	0x4c
	.byte	0x9
	.4byte	0x102
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.4byte	.LASF112
	.byte	0x1c
	.byte	0xc
	.byte	0x50
	.4byte	0x5a8
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0xc
	.byte	0x51
	.byte	0x9
	.4byte	0x102
	.byte	0
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0xc
	.byte	0x52
	.byte	0x9
	.4byte	0x102
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0xc
	.byte	0x53
	.byte	0x9
	.4byte	0x102
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0xc
	.byte	0x54
	.byte	0x9
	.4byte	0x102
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0xc
	.byte	0x55
	.byte	0x9
	.4byte	0x102
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0xc
	.byte	0x56
	.byte	0x9
	.4byte	0x102
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xc
	.byte	0x57
	.byte	0x9
	.4byte	0x102
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0xc
	.byte	0x58
	.byte	0x9
	.4byte	0x102
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0xc
	.byte	0x59
	.byte	0x9
	.4byte	0x102
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0xc
	.byte	0x5a
	.byte	0x9
	.4byte	0x102
	.byte	0x12
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0xc
	.byte	0x5b
	.byte	0x9
	.4byte	0x102
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0xc
	.byte	0x5c
	.byte	0x9
	.4byte	0x102
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0xc
	.byte	0x5d
	.byte	0x9
	.4byte	0x102
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0xc
	.byte	0x5e
	.byte	0x9
	.4byte	0x102
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.4byte	.LASF120
	.byte	0x6
	.byte	0xc
	.byte	0x6e
	.4byte	0x5dc
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0xc
	.byte	0x6f
	.byte	0x9
	.4byte	0x102
	.byte	0
	.uleb128 0xb
	.string	"max"
	.byte	0xc
	.byte	0x70
	.byte	0x9
	.4byte	0x102
	.byte	0x2
	.uleb128 0xb
	.string	"err"
	.byte	0xc
	.byte	0x71
	.byte	0x9
	.4byte	0x102
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF121
	.byte	0x12
	.byte	0xc
	.byte	0x75
	.4byte	0x610
	.uleb128 0xb
	.string	"sem"
	.byte	0xc
	.byte	0x76
	.byte	0x18
	.4byte	0x5a8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0xc
	.byte	0x77
	.byte	0x18
	.4byte	0x5a8
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0xc
	.byte	0x78
	.byte	0x18
	.4byte	0x5a8
	.byte	0xc
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF124
	.2byte	0x108
	.byte	0xc
	.byte	0xeb
	.byte	0x8
	.4byte	0x6a6
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0xc
	.byte	0xee
	.byte	0x16
	.4byte	0x43d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0xc
	.byte	0xf2
	.byte	0x16
	.4byte	0x43d
	.byte	0x18
	.uleb128 0xb
	.string	"ip"
	.byte	0xc
	.byte	0xfa
	.byte	0x16
	.4byte	0x43d
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0xc
	.byte	0xfe
	.byte	0x16
	.4byte	0x43d
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0xc
	.2byte	0x102
	.byte	0x15
	.4byte	0x4e5
	.byte	0x60
	.uleb128 0xe
	.string	"udp"
	.byte	0xc
	.2byte	0x106
	.byte	0x16
	.4byte	0x43d
	.byte	0x7c
	.uleb128 0xe
	.string	"tcp"
	.byte	0xc
	.2byte	0x10a
	.byte	0x16
	.4byte	0x43d
	.byte	0x94
	.uleb128 0xe
	.string	"mem"
	.byte	0xc
	.2byte	0x10e
	.byte	0x14
	.4byte	0x3e5
	.byte	0xac
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0xc
	.2byte	0x112
	.byte	0x15
	.4byte	0x6a6
	.byte	0xb8
	.uleb128 0xe
	.string	"sys"
	.byte	0xc
	.2byte	0x116
	.byte	0x14
	.4byte	0x5dc
	.byte	0xf4
	.byte	0
	.uleb128 0x1c
	.4byte	0x433
	.4byte	0x6b6
	.uleb128 0x1d
	.4byte	0x6a
	.byte	0xe
	.byte	0
	.uleb128 0x22
	.4byte	.LASF225
	.byte	0xc
	.2byte	0x133
	.byte	0x16
	.4byte	0x610
	.uleb128 0x20
	.4byte	.LASF131
	.4byte	0x39
	.byte	0xd
	.byte	0x9f
	.4byte	0x6df
	.uleb128 0x7
	.4byte	.LASF132
	.byte	0
	.uleb128 0x7
	.4byte	.LASF133
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x6e4
	.uleb128 0x2f
	.4byte	.LASF134
	.byte	0x54
	.byte	0xd
	.2byte	0x10d
	.byte	0x8
	.4byte	0x80a
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xd
	.2byte	0x110
	.byte	0x11
	.4byte	0x6df
	.byte	0
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0xd
	.2byte	0x115
	.byte	0xd
	.4byte	0x359
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF136
	.byte	0xd
	.2byte	0x116
	.byte	0xd
	.4byte	0x359
	.byte	0x8
	.uleb128 0xe
	.string	"gw"
	.byte	0xd
	.2byte	0x117
	.byte	0xd
	.4byte	0x359
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF137
	.byte	0xd
	.2byte	0x129
	.byte	0x12
	.4byte	0x80a
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF138
	.byte	0xd
	.2byte	0x12f
	.byte	0x13
	.4byte	0x82f
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0xd
	.2byte	0x134
	.byte	0x17
	.4byte	0x85e
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0xd
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x883
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF141
	.byte	0xd
	.2byte	0x144
	.byte	0x1c
	.4byte	0x883
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0xd
	.2byte	0x14c
	.byte	0x9
	.4byte	0x84
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0xd
	.2byte	0x14e
	.byte	0x9
	.4byte	0x8c9
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0xd
	.2byte	0x152
	.byte	0xf
	.4byte	0x97
	.byte	0x38
	.uleb128 0xe
	.string	"mtu"
	.byte	0xd
	.2byte	0x158
	.byte	0x9
	.4byte	0x102
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF145
	.byte	0xd
	.2byte	0x15e
	.byte	0x8
	.4byte	0x8d9
	.byte	0x3e
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0xd
	.2byte	0x160
	.byte	0x8
	.4byte	0xea
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xd
	.2byte	0x162
	.byte	0x8
	.4byte	0xea
	.byte	0x45
	.uleb128 0x3
	.4byte	.LASF147
	.byte	0xd
	.2byte	0x164
	.byte	0x8
	.4byte	0x8e9
	.byte	0x46
	.uleb128 0xe
	.string	"num"
	.byte	0xd
	.2byte	0x167
	.byte	0x8
	.4byte	0xea
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0xd
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x89f
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0xd
	.2byte	0x185
	.byte	0xf
	.4byte	0x8fe
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.4byte	.LASF150
	.byte	0xd
	.byte	0xb5
	.byte	0x11
	.4byte	0x816
	.uleb128 0xa
	.4byte	0x81b
	.uleb128 0x13
	.4byte	0x210
	.4byte	0x82f
	.uleb128 0x1
	.4byte	0x302
	.uleb128 0x1
	.4byte	0x6df
	.byte	0
	.uleb128 0x9
	.4byte	.LASF151
	.byte	0xd
	.byte	0xc0
	.byte	0x11
	.4byte	0x83b
	.uleb128 0xa
	.4byte	0x840
	.uleb128 0x13
	.4byte	0x210
	.4byte	0x859
	.uleb128 0x1
	.4byte	0x6df
	.uleb128 0x1
	.4byte	0x302
	.uleb128 0x1
	.4byte	0x859
	.byte	0
	.uleb128 0xa
	.4byte	0x354
	.uleb128 0x9
	.4byte	.LASF152
	.byte	0xd
	.byte	0xd7
	.byte	0x11
	.4byte	0x86a
	.uleb128 0xa
	.4byte	0x86f
	.uleb128 0x13
	.4byte	0x210
	.4byte	0x883
	.uleb128 0x1
	.4byte	0x6df
	.uleb128 0x1
	.4byte	0x302
	.byte	0
	.uleb128 0x9
	.4byte	.LASF153
	.byte	0xd
	.byte	0xd9
	.byte	0x10
	.4byte	0x88f
	.uleb128 0xa
	.4byte	0x894
	.uleb128 0x23
	.4byte	0x89f
	.uleb128 0x1
	.4byte	0x6df
	.byte	0
	.uleb128 0x9
	.4byte	.LASF154
	.byte	0xd
	.byte	0xdc
	.byte	0x11
	.4byte	0x8ab
	.uleb128 0xa
	.4byte	0x8b0
	.uleb128 0x13
	.4byte	0x210
	.4byte	0x8c9
	.uleb128 0x1
	.4byte	0x6df
	.uleb128 0x1
	.4byte	0x859
	.uleb128 0x1
	.4byte	0x6c3
	.byte	0
	.uleb128 0x1c
	.4byte	0x84
	.4byte	0x8d9
	.uleb128 0x1d
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x1c
	.4byte	0xea
	.4byte	0x8e9
	.uleb128 0x1d
	.4byte	0x6a
	.byte	0x5
	.byte	0
	.uleb128 0x1c
	.4byte	0x8b
	.4byte	0x8f9
	.uleb128 0x1d
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x30
	.string	"acd"
	.uleb128 0xa
	.4byte	0x8f9
	.uleb128 0xa
	.4byte	0x366
	.uleb128 0x9
	.4byte	.LASF155
	.byte	0xe
	.byte	0x46
	.byte	0x11
	.4byte	0x914
	.uleb128 0xa
	.4byte	0x919
	.uleb128 0x13
	.4byte	0x210
	.4byte	0x932
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x932
	.uleb128 0x1
	.4byte	0x210
	.byte	0
	.uleb128 0xa
	.4byte	0x937
	.uleb128 0xd
	.4byte	.LASF156
	.byte	0xa4
	.byte	0xe
	.byte	0xf2
	.4byte	0xc8b
	.uleb128 0x2
	.4byte	.LASF157
	.byte	0xe
	.byte	0xf4
	.byte	0xd
	.4byte	0x359
	.byte	0
	.uleb128 0x2
	.4byte	.LASF158
	.byte	0xe
	.byte	0xf4
	.byte	0x21
	.4byte	0x359
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0xe
	.byte	0xf4
	.byte	0x31
	.4byte	0xea
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0xe
	.byte	0xf4
	.byte	0x41
	.4byte	0xea
	.byte	0x9
	.uleb128 0xb
	.string	"tos"
	.byte	0xe
	.byte	0xf4
	.byte	0x52
	.4byte	0xea
	.byte	0xa
	.uleb128 0xb
	.string	"ttl"
	.byte	0xe
	.byte	0xf4
	.byte	0x5c
	.4byte	0xea
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0xe
	.byte	0xf6
	.byte	0x13
	.4byte	0x932
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0xe
	.byte	0xf6
	.byte	0x1f
	.4byte	0x84
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0xe
	.byte	0xf6
	.byte	0x3c
	.4byte	0x13e
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0xe
	.byte	0xf6
	.byte	0x48
	.4byte	0xea
	.byte	0x15
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0xe
	.byte	0xf6
	.byte	0x54
	.4byte	0x102
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF164
	.byte	0xe
	.byte	0xf9
	.byte	0x9
	.4byte	0x102
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0xe
	.byte	0xfb
	.byte	0xe
	.4byte	0xde9
	.byte	0x1a
	.uleb128 0x3
	.4byte	.LASF165
	.byte	0xe
	.2byte	0x116
	.byte	0x8
	.4byte	0xea
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF166
	.byte	0xe
	.2byte	0x116
	.byte	0x11
	.4byte	0xea
	.byte	0x1d
	.uleb128 0x3
	.4byte	.LASF167
	.byte	0xe
	.2byte	0x117
	.byte	0x8
	.4byte	0xea
	.byte	0x1e
	.uleb128 0xe
	.string	"tmr"
	.byte	0xe
	.2byte	0x118
	.byte	0x9
	.4byte	0x11a
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF168
	.byte	0xe
	.2byte	0x11b
	.byte	0x9
	.4byte	0x11a
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF169
	.byte	0xe
	.2byte	0x11c
	.byte	0x11
	.4byte	0x132
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF170
	.byte	0xe
	.2byte	0x11d
	.byte	0x11
	.4byte	0x132
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0xe
	.2byte	0x11e
	.byte	0x9
	.4byte	0x11a
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF172
	.byte	0xe
	.2byte	0x127
	.byte	0x9
	.4byte	0x10e
	.byte	0x30
	.uleb128 0xe
	.string	"mss"
	.byte	0xe
	.2byte	0x129
	.byte	0x9
	.4byte	0x102
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF173
	.byte	0xe
	.2byte	0x12c
	.byte	0x9
	.4byte	0x11a
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF174
	.byte	0xe
	.2byte	0x12d
	.byte	0x9
	.4byte	0x11a
	.byte	0x38
	.uleb128 0xe
	.string	"sa"
	.byte	0xe
	.2byte	0x12e
	.byte	0x9
	.4byte	0x10e
	.byte	0x3c
	.uleb128 0xe
	.string	"sv"
	.byte	0xe
	.2byte	0x12e
	.byte	0xd
	.4byte	0x10e
	.byte	0x3e
	.uleb128 0xe
	.string	"rto"
	.byte	0xe
	.2byte	0x130
	.byte	0x9
	.4byte	0x10e
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF175
	.byte	0xe
	.2byte	0x131
	.byte	0x8
	.4byte	0xea
	.byte	0x42
	.uleb128 0x3
	.4byte	.LASF176
	.byte	0xe
	.2byte	0x134
	.byte	0x8
	.4byte	0xea
	.byte	0x43
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0xe
	.2byte	0x135
	.byte	0x9
	.4byte	0x11a
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0xe
	.2byte	0x138
	.byte	0x11
	.4byte	0x132
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF179
	.byte	0xe
	.2byte	0x139
	.byte	0x11
	.4byte	0x132
	.byte	0x4a
	.uleb128 0x3
	.4byte	.LASF180
	.byte	0xe
	.2byte	0x13c
	.byte	0x9
	.4byte	0x11a
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF181
	.byte	0xe
	.2byte	0x13f
	.byte	0x9
	.4byte	0x11a
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF182
	.byte	0xe
	.2byte	0x140
	.byte	0x9
	.4byte	0x11a
	.byte	0x54
	.uleb128 0x3
	.4byte	.LASF183
	.byte	0xe
	.2byte	0x140
	.byte	0x12
	.4byte	0x11a
	.byte	0x58
	.uleb128 0x3
	.4byte	.LASF184
	.byte	0xe
	.2byte	0x142
	.byte	0x9
	.4byte	0x11a
	.byte	0x5c
	.uleb128 0x3
	.4byte	.LASF185
	.byte	0xe
	.2byte	0x143
	.byte	0x11
	.4byte	0x132
	.byte	0x60
	.uleb128 0x3
	.4byte	.LASF186
	.byte	0xe
	.2byte	0x144
	.byte	0x11
	.4byte	0x132
	.byte	0x62
	.uleb128 0x3
	.4byte	.LASF187
	.byte	0xe
	.2byte	0x146
	.byte	0x11
	.4byte	0x132
	.byte	0x64
	.uleb128 0x3
	.4byte	.LASF188
	.byte	0xe
	.2byte	0x148
	.byte	0x9
	.4byte	0x102
	.byte	0x66
	.uleb128 0x3
	.4byte	.LASF189
	.byte	0xe
	.2byte	0x14c
	.byte	0x9
	.4byte	0x102
	.byte	0x68
	.uleb128 0x3
	.4byte	.LASF190
	.byte	0xe
	.2byte	0x14f
	.byte	0x11
	.4byte	0x132
	.byte	0x6a
	.uleb128 0x3
	.4byte	.LASF191
	.byte	0xe
	.2byte	0x152
	.byte	0x13
	.4byte	0xe64
	.byte	0x6c
	.uleb128 0x3
	.4byte	.LASF192
	.byte	0xe
	.2byte	0x153
	.byte	0x13
	.4byte	0xe64
	.byte	0x70
	.uleb128 0x3
	.4byte	.LASF193
	.byte	0xe
	.2byte	0x155
	.byte	0x13
	.4byte	0xe64
	.byte	0x74
	.uleb128 0x3
	.4byte	.LASF194
	.byte	0xe
	.2byte	0x158
	.byte	0x10
	.4byte	0x302
	.byte	0x78
	.uleb128 0x3
	.4byte	.LASF195
	.byte	0xe
	.2byte	0x15b
	.byte	0x1a
	.4byte	0xd3b
	.byte	0x7c
	.uleb128 0x3
	.4byte	.LASF196
	.byte	0xe
	.2byte	0x160
	.byte	0xf
	.4byte	0xcbf
	.byte	0x80
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0xe
	.2byte	0x162
	.byte	0xf
	.4byte	0xc90
	.byte	0x84
	.uleb128 0x3
	.4byte	.LASF197
	.byte	0xe
	.2byte	0x164
	.byte	0x14
	.4byte	0xd2f
	.byte	0x88
	.uleb128 0x3
	.4byte	.LASF198
	.byte	0xe
	.2byte	0x166
	.byte	0xf
	.4byte	0xce9
	.byte	0x8c
	.uleb128 0x3
	.4byte	.LASF199
	.byte	0xe
	.2byte	0x168
	.byte	0xe
	.4byte	0xd0e
	.byte	0x90
	.uleb128 0x3
	.4byte	.LASF200
	.byte	0xe
	.2byte	0x171
	.byte	0x9
	.4byte	0x11a
	.byte	0x94
	.uleb128 0x3
	.4byte	.LASF201
	.byte	0xe
	.2byte	0x173
	.byte	0x9
	.4byte	0x11a
	.byte	0x98
	.uleb128 0x3
	.4byte	.LASF202
	.byte	0xe
	.2byte	0x174
	.byte	0x9
	.4byte	0x11a
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF203
	.byte	0xe
	.2byte	0x178
	.byte	0x8
	.4byte	0xea
	.byte	0xa0
	.uleb128 0x3
	.4byte	.LASF204
	.byte	0xe
	.2byte	0x17a
	.byte	0x8
	.4byte	0xea
	.byte	0xa1
	.uleb128 0x3
	.4byte	.LASF205
	.byte	0xe
	.2byte	0x17c
	.byte	0x8
	.4byte	0xea
	.byte	0xa2
	.uleb128 0x3
	.4byte	.LASF206
	.byte	0xe
	.2byte	0x17f
	.byte	0x8
	.4byte	0xea
	.byte	0xa3
	.byte	0
	.uleb128 0x16
	.4byte	0x937
	.uleb128 0x9
	.4byte	.LASF207
	.byte	0xe
	.byte	0x52
	.byte	0x11
	.4byte	0xc9c
	.uleb128 0xa
	.4byte	0xca1
	.uleb128 0x13
	.4byte	0x210
	.4byte	0xcbf
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x932
	.uleb128 0x1
	.4byte	0x302
	.uleb128 0x1
	.4byte	0x210
	.byte	0
	.uleb128 0x9
	.4byte	.LASF208
	.byte	0xe
	.byte	0x60
	.byte	0x11
	.4byte	0xccb
	.uleb128 0xa
	.4byte	0xcd0
	.uleb128 0x13
	.4byte	0x210
	.4byte	0xce9
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x932
	.uleb128 0x1
	.4byte	0x102
	.byte	0
	.uleb128 0x9
	.4byte	.LASF209
	.byte	0xe
	.byte	0x6c
	.byte	0x11
	.4byte	0xcf5
	.uleb128 0xa
	.4byte	0xcfa
	.uleb128 0x13
	.4byte	0x210
	.4byte	0xd0e
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x932
	.byte	0
	.uleb128 0x9
	.4byte	.LASF210
	.byte	0xe
	.byte	0x78
	.byte	0x10
	.4byte	0xd1a
	.uleb128 0xa
	.4byte	0xd1f
	.uleb128 0x23
	.4byte	0xd2f
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x210
	.byte	0
	.uleb128 0x9
	.4byte	.LASF211
	.byte	0xe
	.byte	0x86
	.byte	0x11
	.4byte	0x914
	.uleb128 0xa
	.4byte	0xd40
	.uleb128 0xd
	.4byte	.LASF212
	.byte	0x1c
	.byte	0xe
	.byte	0xdf
	.4byte	0xde9
	.uleb128 0x2
	.4byte	.LASF157
	.byte	0xe
	.byte	0xe1
	.byte	0xd
	.4byte	0x359
	.byte	0
	.uleb128 0x2
	.4byte	.LASF158
	.byte	0xe
	.byte	0xe1
	.byte	0x21
	.4byte	0x359
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0xe
	.byte	0xe1
	.byte	0x31
	.4byte	0xea
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0xe
	.byte	0xe1
	.byte	0x41
	.4byte	0xea
	.byte	0x9
	.uleb128 0xb
	.string	"tos"
	.byte	0xe
	.byte	0xe1
	.byte	0x52
	.4byte	0xea
	.byte	0xa
	.uleb128 0xb
	.string	"ttl"
	.byte	0xe
	.byte	0xe1
	.byte	0x5c
	.4byte	0xea
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0xe
	.byte	0xe3
	.byte	0x1a
	.4byte	0xd3b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0xe
	.byte	0xe3
	.byte	0x26
	.4byte	0x84
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0xe
	.byte	0xe3
	.byte	0x43
	.4byte	0x13e
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0xe
	.byte	0xe3
	.byte	0x4f
	.4byte	0xea
	.byte	0x15
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0xe
	.byte	0xe3
	.byte	0x5b
	.4byte	0x102
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF213
	.byte	0xe
	.byte	0xe7
	.byte	0x11
	.4byte	0x908
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF214
	.byte	0xe
	.byte	0xce
	.byte	0xf
	.4byte	0x102
	.uleb128 0xd
	.4byte	.LASF215
	.byte	0x14
	.byte	0xf
	.byte	0xfa
	.4byte	0xe5f
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0xf
	.byte	0xfb
	.byte	0x13
	.4byte	0xe64
	.byte	0
	.uleb128 0xb
	.string	"p"
	.byte	0xf
	.byte	0xfc
	.byte	0x10
	.4byte	0x302
	.byte	0x4
	.uleb128 0xb
	.string	"len"
	.byte	0xf
	.byte	0xfd
	.byte	0x9
	.4byte	0x102
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0xf
	.2byte	0x104
	.byte	0x9
	.4byte	0x102
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF217
	.byte	0xf
	.2byte	0x105
	.byte	0x8
	.4byte	0xea
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xf
	.2byte	0x107
	.byte	0x8
	.4byte	0xea
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0xf
	.2byte	0x10e
	.byte	0x13
	.4byte	0xede
	.byte	0x10
	.byte	0
	.uleb128 0x16
	.4byte	0xdf5
	.uleb128 0xa
	.4byte	0xdf5
	.uleb128 0xd
	.4byte	.LASF219
	.byte	0x14
	.byte	0x10
	.byte	0x38
	.4byte	0xede
	.uleb128 0xb
	.string	"src"
	.byte	0x10
	.byte	0x39
	.byte	0x9
	.4byte	0x102
	.byte	0
	.uleb128 0x2
	.4byte	.LASF220
	.byte	0x10
	.byte	0x3a
	.byte	0x9
	.4byte	0x102
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF221
	.byte	0x10
	.byte	0x3b
	.byte	0x9
	.4byte	0x11a
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF222
	.byte	0x10
	.byte	0x3c
	.byte	0x9
	.4byte	0x11a
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF223
	.byte	0x10
	.byte	0x3d
	.byte	0x9
	.4byte	0x102
	.byte	0xc
	.uleb128 0xb
	.string	"wnd"
	.byte	0x10
	.byte	0x3e
	.byte	0x9
	.4byte	0x102
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF216
	.byte	0x10
	.byte	0x3f
	.byte	0x9
	.4byte	0x102
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF224
	.byte	0x10
	.byte	0x40
	.byte	0x9
	.4byte	0x102
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.4byte	0xe69
	.uleb128 0x22
	.4byte	.LASF226
	.byte	0xf
	.2byte	0x144
	.byte	0xe
	.4byte	0x11a
	.uleb128 0x11
	.4byte	.LASF227
	.byte	0x11
	.byte	0x5f
	.byte	0x7
	.4byte	0x102
	.4byte	0xf1a
	.uleb128 0x1
	.4byte	0x302
	.uleb128 0x1
	.4byte	0xea
	.uleb128 0x1
	.4byte	0x102
	.uleb128 0x1
	.4byte	0x903
	.uleb128 0x1
	.4byte	0x903
	.byte	0
	.uleb128 0x11
	.4byte	.LASF228
	.byte	0x12
	.byte	0x4a
	.byte	0x7
	.4byte	0x210
	.4byte	0xf4e
	.uleb128 0x1
	.4byte	0x302
	.uleb128 0x1
	.4byte	0x859
	.uleb128 0x1
	.4byte	0x859
	.uleb128 0x1
	.4byte	0xea
	.uleb128 0x1
	.4byte	0xea
	.uleb128 0x1
	.4byte	0xea
	.uleb128 0x1
	.4byte	0x6df
	.byte	0
	.uleb128 0x11
	.4byte	.LASF229
	.byte	0x11
	.byte	0x61
	.byte	0x7
	.4byte	0x102
	.4byte	0xf7d
	.uleb128 0x1
	.4byte	0x302
	.uleb128 0x1
	.4byte	0xea
	.uleb128 0x1
	.4byte	0x102
	.uleb128 0x1
	.4byte	0x102
	.uleb128 0x1
	.4byte	0x903
	.uleb128 0x1
	.4byte	0x903
	.byte	0
	.uleb128 0x15
	.4byte	.LASF230
	.byte	0xf
	.2byte	0x1df
	.byte	0x7
	.4byte	0x102
	.4byte	0xf9e
	.uleb128 0x1
	.4byte	0x102
	.uleb128 0x1
	.4byte	0x6df
	.uleb128 0x1
	.4byte	0x903
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF232
	.byte	0x8
	.2byte	0x11a
	.4byte	0xfb5
	.uleb128 0x1
	.4byte	0x302
	.uleb128 0x1
	.4byte	0x102
	.byte	0
	.uleb128 0x15
	.4byte	.LASF231
	.byte	0x8
	.2byte	0x12c
	.byte	0x7
	.4byte	0x102
	.4byte	0xfdb
	.uleb128 0x1
	.4byte	0xfdb
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x102
	.uleb128 0x1
	.4byte	0x102
	.byte	0
	.uleb128 0xa
	.4byte	0x2fd
	.uleb128 0x1e
	.4byte	.LASF233
	.byte	0xf
	.2byte	0x1b9
	.4byte	0xff2
	.uleb128 0x1
	.4byte	0xe64
	.byte	0
	.uleb128 0x15
	.4byte	.LASF234
	.byte	0x8
	.2byte	0x126
	.byte	0x7
	.4byte	0x102
	.4byte	0x1009
	.uleb128 0x1
	.4byte	0xfdb
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF235
	.byte	0x8
	.2byte	0x127
	.4byte	0x1020
	.uleb128 0x1
	.4byte	0x302
	.uleb128 0x1
	.4byte	0x302
	.byte	0
	.uleb128 0x11
	.4byte	.LASF236
	.byte	0x11
	.byte	0x4a
	.byte	0x7
	.4byte	0x102
	.4byte	0x103b
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0x102
	.byte	0
	.uleb128 0x11
	.4byte	.LASF237
	.byte	0x11
	.byte	0x4d
	.byte	0x7
	.4byte	0x102
	.4byte	0x105b
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0x102
	.byte	0
	.uleb128 0x15
	.4byte	.LASF238
	.byte	0x8
	.2byte	0x113
	.byte	0xe
	.4byte	0x302
	.4byte	0x107c
	.uleb128 0x1
	.4byte	0x248
	.uleb128 0x1
	.4byte	0x102
	.uleb128 0x1
	.4byte	0x27c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF239
	.byte	0x13
	.byte	0x65
	.byte	0x7
	.4byte	0x11a
	.4byte	0x1092
	.uleb128 0x1
	.4byte	0x11a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF240
	.byte	0x13
	.byte	0x60
	.byte	0x7
	.4byte	0x102
	.4byte	0x10a8
	.uleb128 0x1
	.4byte	0x102
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF241
	.byte	0xf
	.2byte	0x1ba
	.4byte	0x10ba
	.uleb128 0x1
	.4byte	0xe64
	.byte	0
	.uleb128 0x15
	.4byte	.LASF242
	.byte	0x8
	.2byte	0x120
	.byte	0x6
	.4byte	0xea
	.4byte	0x10d6
	.uleb128 0x1
	.4byte	0x302
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0x15
	.4byte	.LASF243
	.byte	0x8
	.2byte	0x125
	.byte	0x6
	.4byte	0xea
	.4byte	0x10ed
	.uleb128 0x1
	.4byte	0x302
	.byte	0
	.uleb128 0x11
	.4byte	.LASF244
	.byte	0xb
	.byte	0x93
	.byte	0x7
	.4byte	0x84
	.4byte	0x1103
	.uleb128 0x1
	.4byte	0x3d9
	.byte	0
	.uleb128 0x11
	.4byte	.LASF245
	.byte	0x12
	.byte	0x41
	.byte	0xf
	.4byte	0x6df
	.4byte	0x1119
	.uleb128 0x1
	.4byte	0x859
	.byte	0
	.uleb128 0x15
	.4byte	.LASF246
	.byte	0xd
	.2byte	0x23f
	.byte	0xf
	.4byte	0x6df
	.4byte	0x1130
	.uleb128 0x1
	.4byte	0xea
	.byte	0
	.uleb128 0x10
	.4byte	.LASF249
	.2byte	0x883
	.4byte	0x210
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11e6
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x883
	.byte	0x27
	.4byte	0x932
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"err"
	.2byte	0x885
	.byte	0x9
	.4byte	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x5
	.string	"p"
	.2byte	0x886
	.byte	0x10
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF218
	.2byte	0x887
	.byte	0x13
	.4byte	0xede
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"seg"
	.2byte	0x888
	.byte	0x13
	.4byte	0xe64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"len"
	.2byte	0x889
	.byte	0x9
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF247
	.2byte	0x88a
	.byte	0x8
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x4
	.4byte	.LASF181
	.2byte	0x88b
	.byte	0x9
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF248
	.2byte	0x88c
	.byte	0x8
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x5
	.string	"d"
	.2byte	0x8b8
	.byte	0xb
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF250
	.2byte	0x85d
	.4byte	0x210
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x123a
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x85d
	.byte	0x1f
	.4byte	0x932
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"err"
	.2byte	0x85f
	.byte	0x9
	.4byte	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x5
	.string	"p"
	.2byte	0x860
	.byte	0x10
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF248
	.2byte	0x861
	.byte	0x8
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x10
	.4byte	.LASF251
	.2byte	0x822
	.4byte	0x210
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12ac
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x822
	.byte	0x24
	.4byte	0x932
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"err"
	.2byte	0x824
	.byte	0x9
	.4byte	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x5
	.string	"p"
	.2byte	0x825
	.byte	0x10
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF248
	.2byte	0x826
	.byte	0x8
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x4
	.4byte	.LASF252
	.2byte	0x826
	.byte	0x10
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x4
	.4byte	.LASF253
	.2byte	0x827
	.byte	0x8
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x19
	.4byte	.LASF254
	.2byte	0x80e
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1342
	.uleb128 0x6
	.4byte	.LASF134
	.2byte	0x80e
	.byte	0x1d
	.4byte	0x6df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF221
	.2byte	0x80e
	.byte	0x2a
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF222
	.2byte	0x80e
	.byte	0x37
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF157
	.2byte	0x80f
	.byte	0x20
	.4byte	0x903
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.4byte	.LASF158
	.2byte	0x80f
	.byte	0x3b
	.4byte	0x903
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.4byte	.LASF163
	.2byte	0x810
	.byte	0x15
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x6
	.4byte	.LASF164
	.2byte	0x810
	.byte	0x27
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x5
	.string	"p"
	.2byte	0x813
	.byte	0x12
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF255
	.2byte	0x7ee
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13ce
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x7ee
	.byte	0x1f
	.4byte	0x13ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF221
	.2byte	0x7ee
	.byte	0x2a
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF222
	.2byte	0x7ee
	.byte	0x37
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF157
	.2byte	0x7ef
	.byte	0x1a
	.4byte	0x903
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.4byte	.LASF158
	.2byte	0x7ef
	.byte	0x35
	.4byte	0x903
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.4byte	.LASF163
	.2byte	0x7f0
	.byte	0xf
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x6
	.4byte	.LASF164
	.2byte	0x7f0
	.byte	0x21
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"p"
	.2byte	0x7f2
	.byte	0x10
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	0xc8b
	.uleb128 0x17
	.4byte	.LASF256
	.2byte	0x7b5
	.4byte	0x302
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1481
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x7b5
	.byte	0x26
	.4byte	0x13ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF221
	.2byte	0x7b5
	.byte	0x31
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF222
	.2byte	0x7b5
	.byte	0x3e
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF157
	.2byte	0x7b6
	.byte	0x21
	.4byte	0x903
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.4byte	.LASF158
	.2byte	0x7b6
	.byte	0x3c
	.4byte	0x903
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.4byte	.LASF163
	.2byte	0x7b7
	.byte	0x16
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x6
	.4byte	.LASF164
	.2byte	0x7b7
	.byte	0x28
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"p"
	.2byte	0x7b9
	.byte	0x10
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"wnd"
	.2byte	0x7ba
	.byte	0x9
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF248
	.2byte	0x7bb
	.byte	0x8
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x17
	.4byte	.LASF257
	.2byte	0x793
	.4byte	0x210
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x152a
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x793
	.byte	0x38
	.4byte	0x13ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"p"
	.2byte	0x793
	.byte	0x4a
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"src"
	.2byte	0x794
	.byte	0x33
	.4byte	0x903
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"dst"
	.2byte	0x794
	.byte	0x49
	.4byte	0x903
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.4byte	.LASF134
	.2byte	0x795
	.byte	0x30
	.4byte	0x6df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"err"
	.2byte	0x797
	.byte	0x9
	.4byte	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x5
	.string	"ttl"
	.2byte	0x798
	.byte	0x8
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x5
	.string	"tos"
	.2byte	0x798
	.byte	0xd
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x14
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x4
	.4byte	.LASF218
	.2byte	0x79e
	.byte	0x15
	.4byte	0xede
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF258
	.2byte	0x77e
	.4byte	0x210
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x158d
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x77e
	.byte	0x32
	.4byte	0x13ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"p"
	.2byte	0x77e
	.byte	0x44
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"src"
	.2byte	0x77f
	.byte	0x2d
	.4byte	0x903
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"dst"
	.2byte	0x77f
	.byte	0x43
	.4byte	0x903
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF134
	.2byte	0x781
	.byte	0x11
	.4byte	0x6df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.4byte	.LASF307
	.2byte	0x74d
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x160a
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x74d
	.byte	0x2f
	.4byte	0x13ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"p"
	.2byte	0x74d
	.byte	0x41
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF252
	.2byte	0x74d
	.byte	0x49
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x6
	.4byte	.LASF253
	.2byte	0x74d
	.byte	0x58
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x4
	.4byte	.LASF218
	.2byte	0x74f
	.byte	0x13
	.4byte	0xede
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF259
	.2byte	0x750
	.byte	0xa
	.4byte	0x160a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF260
	.2byte	0x751
	.byte	0x9
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xa
	.4byte	0x11a
	.uleb128 0x17
	.4byte	.LASF261
	.2byte	0x73a
	.4byte	0x302
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1672
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x73a
	.byte	0x29
	.4byte	0x932
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF248
	.2byte	0x73a
	.byte	0x34
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x6
	.4byte	.LASF262
	.2byte	0x73a
	.byte	0x42
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF263
	.2byte	0x73b
	.byte	0x1f
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"p"
	.2byte	0x73d
	.byte	0x10
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF264
	.2byte	0x717
	.4byte	0x302
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1720
	.uleb128 0x6
	.4byte	.LASF222
	.2byte	0x717
	.byte	0x26
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF248
	.2byte	0x717
	.byte	0x33
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x6
	.4byte	.LASF262
	.2byte	0x717
	.byte	0x41
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF263
	.2byte	0x718
	.byte	0x1f
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF265
	.2byte	0x719
	.byte	0x1f
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x6
	.4byte	.LASF266
	.2byte	0x719
	.byte	0x2f
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.4byte	.LASF72
	.2byte	0x719
	.byte	0x3e
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x8
	.string	"wnd"
	.2byte	0x719
	.byte	0x4b
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF218
	.2byte	0x71b
	.byte	0x13
	.4byte	0xede
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"p"
	.2byte	0x71c
	.byte	0x10
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF267
	.2byte	0x6f4
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1745
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x6f4
	.byte	0x21
	.4byte	0x932
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF268
	.2byte	0x6b9
	.4byte	0x210
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x178c
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x6b9
	.byte	0x1c
	.4byte	0x932
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"seg"
	.2byte	0x6bb
	.byte	0x13
	.4byte	0xe64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF269
	.2byte	0x6bc
	.byte	0x14
	.4byte	0x178c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	0xe64
	.uleb128 0x19
	.4byte	.LASF270
	.2byte	0x6a8
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17b6
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x6a8
	.byte	0x20
	.4byte	0x932
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF271
	.2byte	0x693
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17db
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x693
	.byte	0x27
	.4byte	0x932
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF272
	.2byte	0x65c
	.4byte	0x210
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1813
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x65c
	.byte	0x28
	.4byte	0x932
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"seg"
	.2byte	0x65e
	.byte	0x13
	.4byte	0xe64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF273
	.2byte	0x5ac
	.4byte	0x210
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18cc
	.uleb128 0x8
	.string	"seg"
	.2byte	0x5ac
	.byte	0x24
	.4byte	0xe64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x5ac
	.byte	0x39
	.4byte	0x932
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.4byte	.LASF134
	.2byte	0x5ac
	.byte	0x4c
	.4byte	0x6df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.string	"err"
	.2byte	0x5ae
	.byte	0x9
	.4byte	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x5
	.string	"len"
	.2byte	0x5af
	.byte	0x9
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF259
	.2byte	0x5b0
	.byte	0xa
	.4byte	0x160a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF274
	.2byte	0x5b2
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x18b2
	.uleb128 0x5
	.string	"mss"
	.2byte	0x5d7
	.byte	0xb
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x14
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x5
	.string	"acc"
	.2byte	0x61e
	.byte	0xb
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF275
	.2byte	0x595
	.4byte	0x2b
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18f5
	.uleb128 0x8
	.string	"seg"
	.2byte	0x595
	.byte	0x2f
	.4byte	0x18f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	0xe5f
	.uleb128 0x10
	.4byte	.LASF276
	.2byte	0x4d9
	.4byte	0x210
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19be
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x4d9
	.byte	0x1c
	.4byte	0x932
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"seg"
	.2byte	0x4db
	.byte	0x13
	.4byte	0xe64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF277
	.2byte	0x4db
	.byte	0x19
	.4byte	0xe64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"wnd"
	.2byte	0x4dc
	.byte	0x9
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF181
	.2byte	0x4dc
	.byte	0xe
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"err"
	.2byte	0x4dd
	.byte	0x9
	.4byte	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x4
	.4byte	.LASF134
	.2byte	0x4de
	.byte	0x11
	.4byte	0x6df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.4byte	.LASF287
	.2byte	0x586
	.4byte	.L110
	.uleb128 0x1a
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x19a4
	.uleb128 0x4
	.4byte	.LASF157
	.2byte	0x50d
	.byte	0x16
	.4byte	0x903
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x14
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x4
	.4byte	.LASF269
	.2byte	0x56d
	.byte	0x1c
	.4byte	0x178c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF278
	.2byte	0x40c
	.4byte	0x210
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a49
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x40c
	.byte	0x23
	.4byte	0x932
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.4byte	.LASF72
	.2byte	0x40c
	.byte	0x2d
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x5
	.string	"p"
	.2byte	0x40e
	.byte	0x10
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"seg"
	.2byte	0x40f
	.byte	0x13
	.4byte	0xe64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF252
	.2byte	0x410
	.byte	0x8
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x4
	.4byte	.LASF248
	.2byte	0x411
	.byte	0x8
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x14
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x4
	.4byte	.LASF277
	.2byte	0x453
	.byte	0x15
	.4byte	0xe64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF279
	.2byte	0x3ed
	.4byte	0x210
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a8b
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x3ed
	.byte	0x1e
	.4byte	0x932
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x4
	.4byte	.LASF280
	.2byte	0x3f3
	.byte	0x15
	.4byte	0xe64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF281
	.2byte	0x33e
	.4byte	0x210
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b7e
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x33e
	.byte	0x26
	.4byte	0x932
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.4byte	.LASF282
	.2byte	0x33e
	.byte	0x31
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x5
	.string	"seg"
	.2byte	0x340
	.byte	0x13
	.4byte	0xe64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF277
	.2byte	0x340
	.byte	0x1f
	.4byte	0xe64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"p"
	.2byte	0x341
	.byte	0x10
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF248
	.2byte	0x342
	.byte	0x8
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x4
	.4byte	.LASF252
	.2byte	0x343
	.byte	0x8
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x4
	.4byte	.LASF283
	.2byte	0x344
	.byte	0x8
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x4
	.4byte	.LASF284
	.2byte	0x345
	.byte	0x8
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x4
	.4byte	.LASF285
	.2byte	0x346
	.byte	0x9
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF286
	.2byte	0x347
	.byte	0x9
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF216
	.2byte	0x349
	.byte	0x9
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x4
	.4byte	.LASF217
	.2byte	0x34a
	.byte	0x8
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -43
	.uleb128 0x5
	.string	"q"
	.2byte	0x34b
	.byte	0x10
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.4byte	.LASF107
	.2byte	0x3d9
	.4byte	.L73
	.byte	0
	.uleb128 0x10
	.4byte	.LASF288
	.2byte	0x189
	.4byte	0x210
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dc7
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x189
	.byte	0x1b
	.4byte	0x932
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x8
	.string	"arg"
	.2byte	0x189
	.byte	0x2c
	.4byte	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x8
	.string	"len"
	.2byte	0x189
	.byte	0x37
	.4byte	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -106
	.uleb128 0x6
	.4byte	.LASF289
	.2byte	0x189
	.byte	0x41
	.4byte	0xea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -107
	.uleb128 0x4
	.4byte	.LASF290
	.2byte	0x18b
	.byte	0x10
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF280
	.2byte	0x18c
	.byte	0x13
	.4byte	0xe64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"seg"
	.2byte	0x18c
	.byte	0x27
	.4byte	0xe64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF291
	.2byte	0x18c
	.byte	0x34
	.4byte	0xe64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF292
	.2byte	0x18c
	.byte	0x46
	.4byte	0xe64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"pos"
	.2byte	0x18d
	.byte	0x9
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x4
	.4byte	.LASF293
	.2byte	0x18e
	.byte	0x9
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF248
	.2byte	0x18f
	.byte	0x8
	.4byte	0xea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x4
	.4byte	.LASF252
	.2byte	0x190
	.byte	0x8
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x4
	.4byte	.LASF294
	.2byte	0x192
	.byte	0x9
	.4byte	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -86
	.uleb128 0x4
	.4byte	.LASF295
	.2byte	0x193
	.byte	0x9
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x4
	.4byte	.LASF296
	.2byte	0x198
	.byte	0x9
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.4byte	.LASF297
	.2byte	0x19a
	.byte	0x9
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF298
	.2byte	0x19b
	.byte	0x8
	.4byte	0xea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x4
	.4byte	.LASF299
	.2byte	0x19c
	.byte	0x9
	.4byte	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.string	"err"
	.2byte	0x19e
	.byte	0x9
	.4byte	0x210
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x4
	.4byte	.LASF300
	.2byte	0x19f
	.byte	0x9
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x1f
	.4byte	.LASF107
	.2byte	0x31f
	.4byte	.L45
	.uleb128 0x1a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x1d14
	.uleb128 0x4
	.4byte	.LASF301
	.2byte	0x1e0
	.byte	0xb
	.4byte	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0x4
	.4byte	.LASF302
	.2byte	0x1e1
	.byte	0xb
	.4byte	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x1a
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x1d94
	.uleb128 0x5
	.string	"p"
	.2byte	0x259
	.byte	0x12
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF303
	.2byte	0x25a
	.byte	0xb
	.4byte	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x4
	.4byte	.LASF304
	.2byte	0x25b
	.byte	0xb
	.4byte	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -78
	.uleb128 0x4
	.4byte	.LASF305
	.2byte	0x25c
	.byte	0xb
	.4byte	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4
	.4byte	.LASF216
	.2byte	0x25e
	.byte	0xb
	.4byte	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4
	.4byte	.LASF217
	.2byte	0x25f
	.byte	0xa
	.4byte	0xea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -89
	.uleb128 0x31
	.4byte	.LLRL0
	.uleb128 0x5
	.string	"p2"
	.2byte	0x272
	.byte	0x14
	.4byte	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x1daf
	.uleb128 0x5
	.string	"p"
	.2byte	0x2cb
	.byte	0x12
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x14
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x5
	.string	"p"
	.2byte	0x2e8
	.byte	0x12
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF306
	.2byte	0x134
	.4byte	0x210
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dff
	.uleb128 0x8
	.string	"pcb"
	.2byte	0x134
	.byte	0x22
	.4byte	0x932
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"len"
	.2byte	0x134
	.byte	0x2d
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x24
	.4byte	.LASF308
	.2byte	0x11e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e60
	.uleb128 0x6
	.4byte	.LASF216
	.2byte	0x11e
	.byte	0x1a
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x8
	.string	"len"
	.2byte	0x11e
	.byte	0x28
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF309
	.2byte	0x11e
	.byte	0x34
	.4byte	0x1e60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF310
	.2byte	0x11f
	.byte	0x1a
	.4byte	0x438
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF311
	.2byte	0x121
	.byte	0x9
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	0x102
	.uleb128 0x26
	.4byte	.LASF312
	.byte	0xe4
	.4byte	0x302
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1efa
	.uleb128 0x12
	.4byte	.LASF313
	.byte	0xe4
	.byte	0x1e
	.4byte	0x248
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x12
	.4byte	.LASF314
	.byte	0xe4
	.byte	0x2b
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF315
	.byte	0xe4
	.byte	0x39
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x12
	.4byte	.LASF294
	.byte	0xe5
	.byte	0x1a
	.4byte	0x1e60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.string	"pcb"
	.byte	0xe5
	.byte	0x3a
	.4byte	0x13ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LASF289
	.byte	0xe5
	.byte	0x44
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0x12
	.4byte	.LASF316
	.byte	0xe6
	.byte	0x18
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"p"
	.byte	0xe8
	.byte	0x10
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.4byte	.LASF317
	.byte	0xe9
	.byte	0x9
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x26
	.4byte	.LASF318
	.byte	0xa1
	.4byte	0xe64
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f73
	.uleb128 0x18
	.string	"pcb"
	.byte	0xa1
	.byte	0x2a
	.4byte	0x13ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"p"
	.byte	0xa1
	.byte	0x3c
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.4byte	.LASF319
	.byte	0xa1
	.byte	0x44
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x12
	.4byte	.LASF221
	.byte	0xa1
	.byte	0x54
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LASF252
	.byte	0xa1
	.byte	0x60
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x27
	.string	"seg"
	.byte	0xa3
	.byte	0x13
	.4byte	0xe64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.4byte	.LASF248
	.byte	0xa4
	.byte	0x8
	.4byte	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x32
	.4byte	.LASF320
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.4byte	0x6df
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.string	"pcb"
	.byte	0x87
	.byte	0x21
	.4byte	0x13ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"src"
	.byte	0x87
	.byte	0x37
	.4byte	0x903
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"dst"
	.byte	0x87
	.byte	0x4d
	.4byte	0x903
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xf
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
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x49
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
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x19
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
	.sleb128 1
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
	.uleb128 0x1b
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1f
	.uleb128 0xa
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
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.sleb128 1
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
	.uleb128 0x25
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
	.sleb128 1
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
	.uleb128 0x26
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
	.sleb128 1
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xf4
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
	.byte	0x5
	.4byte	.LBB4
	.byte	0x4
	.uleb128 .LBB4-.LBB4
	.uleb128 .LBE4-.LBB4
	.byte	0x4
	.uleb128 .LBB5-.LBB4
	.uleb128 .LBE5-.LBB4
	.byte	0
.LLRL1:
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF306:
	.string	"tcp_write_checks"
.LASF313:
	.string	"layer"
.LASF299:
	.string	"concat_chksummed"
.LASF83:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF250:
	.string	"tcp_keepalive"
.LASF160:
	.string	"so_options"
.LASF137:
	.string	"input"
.LASF243:
	.string	"pbuf_free"
.LASF294:
	.string	"oversize"
.LASF63:
	.string	"PBUF_RAM"
.LASF205:
	.string	"persist_probe"
.LASF224:
	.string	"urgp"
.LASF195:
	.string	"listener"
.LASF302:
	.string	"unsent_optlen"
.LASF165:
	.string	"polltmr"
.LASF61:
	.string	"PBUF_RAW"
.LASF67:
	.string	"pbuf_type"
.LASF54:
	.string	"ERR_CLSD"
.LASF312:
	.string	"tcp_pbuf_prealloc"
.LASF47:
	.string	"ERR_USE"
.LASF55:
	.string	"ERR_ARG"
.LASF116:
	.string	"rx_report"
.LASF37:
	.string	"TIME_WAIT"
.LASF10:
	.string	"unsigned int"
.LASF159:
	.string	"netif_idx"
.LASF68:
	.string	"next"
.LASF249:
	.string	"tcp_zero_window_probe"
.LASF56:
	.string	"err_t"
.LASF227:
	.string	"ip_chksum_pseudo"
.LASF319:
	.string	"hdrflags"
.LASF139:
	.string	"linkoutput"
.LASF293:
	.string	"queuelen"
.LASF268:
	.string	"tcp_rexmit"
.LASF22:
	.string	"u16_t"
.LASF125:
	.string	"link"
.LASF287:
	.string	"output_done"
.LASF171:
	.string	"rcv_ann_right_edge"
.LASF295:
	.string	"oversize_used"
.LASF97:
	.string	"stats_mem"
.LASF248:
	.string	"optlen"
.LASF239:
	.string	"lwip_htonl"
.LASF271:
	.string	"tcp_rexmit_rto_commit"
.LASF151:
	.string	"netif_output_fn"
.LASF240:
	.string	"lwip_htons"
.LASF206:
	.string	"keep_cnt_sent"
.LASF94:
	.string	"MEMP_PBUF_POOL"
.LASF225:
	.string	"lwip_stats"
.LASF208:
	.string	"tcp_sent_fn"
.LASF53:
	.string	"ERR_RST"
.LASF275:
	.string	"tcp_output_segment_busy"
.LASF285:
	.string	"remainder"
.LASF202:
	.string	"keep_cnt"
.LASF57:
	.string	"PBUF_TRANSPORT"
.LASF278:
	.string	"tcp_enqueue_flags"
.LASF48:
	.string	"ERR_ALREADY"
.LASF120:
	.string	"stats_syselem"
.LASF221:
	.string	"seqno"
.LASF150:
	.string	"netif_input_fn"
.LASF18:
	.string	"uint32_t"
.LASF14:
	.string	"int8_t"
.LASF178:
	.string	"cwnd"
.LASF90:
	.string	"MEMP_IGMP_GROUP"
.LASF213:
	.string	"accept"
.LASF88:
	.string	"MEMP_TCPIP_MSG_API"
.LASF110:
	.string	"opterr"
.LASF163:
	.string	"local_port"
.LASF122:
	.string	"mutex"
.LASF282:
	.string	"split"
.LASF211:
	.string	"tcp_connected_fn"
.LASF100:
	.string	"illegal"
.LASF238:
	.string	"pbuf_alloc"
.LASF15:
	.string	"int16_t"
.LASF247:
	.string	"is_fin"
.LASF145:
	.string	"hwaddr"
.LASF126:
	.string	"etharp"
.LASF215:
	.string	"tcp_seg"
.LASF9:
	.string	"long long unsigned int"
.LASF266:
	.string	"dst_port"
.LASF128:
	.string	"igmp"
.LASF174:
	.string	"rtseq"
.LASF78:
	.string	"ip4_addr_t"
.LASF130:
	.string	"tcp_state"
.LASF217:
	.string	"chksum_swapped"
.LASF172:
	.string	"rtime"
.LASF146:
	.string	"hwaddr_len"
.LASF244:
	.string	"memp_malloc"
.LASF45:
	.string	"ERR_VAL"
.LASF119:
	.string	"tx_report"
.LASF168:
	.string	"rcv_nxt"
.LASF89:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF65:
	.string	"PBUF_REF"
.LASF296:
	.string	"extendlen"
.LASF192:
	.string	"unacked"
.LASF277:
	.string	"useg"
.LASF124:
	.string	"stats_"
.LASF36:
	.string	"LAST_ACK"
.LASF71:
	.string	"type_internal"
.LASF70:
	.string	"tot_len"
.LASF13:
	.string	"size_t"
.LASF230:
	.string	"tcp_eff_send_mss_netif"
.LASF237:
	.string	"lwip_chksum_copy"
.LASF69:
	.string	"payload"
.LASF58:
	.string	"PBUF_IP"
.LASF138:
	.string	"output"
.LASF197:
	.string	"connected"
.LASF273:
	.string	"tcp_output_segment"
.LASF74:
	.string	"pbuf"
.LASF263:
	.string	"seqno_be"
.LASF66:
	.string	"PBUF_POOL"
.LASF35:
	.string	"CLOSING"
.LASF316:
	.string	"first_seg"
.LASF72:
	.string	"flags"
.LASF177:
	.string	"lastack"
.LASF308:
	.string	"tcp_seg_add_chksum"
.LASF298:
	.string	"concat_chksum_swapped"
.LASF95:
	.string	"MEMP_MAX"
.LASF21:
	.string	"s8_t"
.LASF87:
	.string	"MEMP_NETCONN"
.LASF234:
	.string	"pbuf_clen"
.LASF245:
	.string	"ip4_route"
.LASF155:
	.string	"tcp_accept_fn"
.LASF115:
	.string	"rx_general"
.LASF46:
	.string	"ERR_WOULDBLOCK"
.LASF42:
	.string	"ERR_TIMEOUT"
.LASF297:
	.string	"concat_chksum"
.LASF226:
	.string	"tcp_ticks"
.LASF176:
	.string	"dupacks"
.LASF276:
	.string	"tcp_output"
.LASF162:
	.string	"prio"
.LASF166:
	.string	"pollinterval"
.LASF93:
	.string	"MEMP_PBUF"
.LASF198:
	.string	"poll"
.LASF143:
	.string	"client_data"
.LASF12:
	.string	"char"
.LASF280:
	.string	"last_unsent"
.LASF310:
	.string	"seg_chksum_swapped"
.LASF232:
	.string	"pbuf_realloc"
.LASF38:
	.string	"mem_size_t"
.LASF154:
	.string	"netif_igmp_mac_filter_fn"
.LASF148:
	.string	"igmp_mac_filter"
.LASF101:
	.string	"stats_proto"
.LASF34:
	.string	"CLOSE_WAIT"
.LASF75:
	.string	"pbuf_rom"
.LASF191:
	.string	"unsent"
.LASF246:
	.string	"netif_get_by_index"
.LASF231:
	.string	"pbuf_copy_partial"
.LASF301:
	.string	"space"
.LASF133:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF196:
	.string	"sent"
.LASF16:
	.string	"uint8_t"
.LASF182:
	.string	"snd_wl1"
.LASF183:
	.string	"snd_wl2"
.LASF210:
	.string	"tcp_err_fn"
.LASF144:
	.string	"hostname"
.LASF184:
	.string	"snd_lbb"
.LASF141:
	.string	"link_callback"
.LASF86:
	.string	"MEMP_NETBUF"
.LASF136:
	.string	"netmask"
.LASF8:
	.string	"long long int"
.LASF212:
	.string	"tcp_pcb_listen"
.LASF222:
	.string	"ackno"
.LASF51:
	.string	"ERR_IF"
.LASF140:
	.string	"status_callback"
.LASF204:
	.string	"persist_backoff"
.LASF281:
	.string	"tcp_split_unsent_seg"
.LASF261:
	.string	"tcp_output_alloc_header"
.LASF82:
	.string	"MEMP_TCP_PCB"
.LASF260:
	.string	"sacks_len"
.LASF129:
	.string	"memp"
.LASF20:
	.string	"u8_t"
.LASF255:
	.string	"tcp_rst"
.LASF272:
	.string	"tcp_rexmit_rto_prepare"
.LASF109:
	.string	"proterr"
.LASF252:
	.string	"optflags"
.LASF164:
	.string	"remote_port"
.LASF99:
	.string	"used"
.LASF304:
	.string	"max_len"
.LASF170:
	.string	"rcv_ann_wnd"
.LASF105:
	.string	"chkerr"
.LASF207:
	.string	"tcp_recv_fn"
.LASF59:
	.string	"PBUF_LINK"
.LASF85:
	.string	"MEMP_ALTCP_PCB"
.LASF132:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF236:
	.string	"inet_chksum"
.LASF209:
	.string	"tcp_poll_fn"
.LASF190:
	.string	"bytes_acked"
.LASF11:
	.string	"long double"
.LASF17:
	.string	"uint16_t"
.LASF279:
	.string	"tcp_send_fin"
.LASF214:
	.string	"tcpflags_t"
.LASF309:
	.string	"seg_chksum"
.LASF199:
	.string	"errf"
.LASF185:
	.string	"snd_wnd"
.LASF73:
	.string	"if_idx"
.LASF241:
	.string	"tcp_seg_free"
.LASF257:
	.string	"tcp_output_control_segment_netif"
.LASF264:
	.string	"tcp_output_alloc_header_common"
.LASF253:
	.string	"num_sacks"
.LASF193:
	.string	"ooseq"
.LASF219:
	.string	"tcp_hdr"
.LASF41:
	.string	"ERR_BUF"
.LASF315:
	.string	"max_length"
.LASF320:
	.string	"tcp_route"
.LASF27:
	.string	"CLOSED"
.LASF24:
	.string	"u32_t"
.LASF317:
	.string	"alloc"
.LASF4:
	.string	"short int"
.LASF127:
	.string	"icmp"
.LASF259:
	.string	"opts"
.LASF290:
	.string	"concat_p"
.LASF6:
	.string	"long int"
.LASF311:
	.string	"helper"
.LASF108:
	.string	"rterr"
.LASF98:
	.string	"avail"
.LASF314:
	.string	"length"
.LASF91:
	.string	"MEMP_SYS_TIMEOUT"
.LASF169:
	.string	"rcv_wnd"
.LASF173:
	.string	"rttest"
.LASF251:
	.string	"tcp_send_empty_ack"
.LASF228:
	.string	"ip4_output_if"
.LASF318:
	.string	"tcp_create_segment"
.LASF286:
	.string	"offset"
.LASF274:
	.string	"seg_chksum_was_swapped"
.LASF167:
	.string	"last_timer"
.LASF307:
	.string	"tcp_output_fill_options"
.LASF81:
	.string	"MEMP_UDP_PCB"
.LASF157:
	.string	"local_ip"
.LASF262:
	.string	"datalen"
.LASF123:
	.string	"mbox"
.LASF189:
	.string	"unsent_oversize"
.LASF44:
	.string	"ERR_INPROGRESS"
.LASF76:
	.string	"ip4_addr"
.LASF303:
	.string	"left"
.LASF25:
	.string	"mem_ptr_t"
.LASF31:
	.string	"ESTABLISHED"
.LASF49:
	.string	"ERR_ISCONN"
.LASF111:
	.string	"cachehit"
.LASF186:
	.string	"snd_wnd_max"
.LASF147:
	.string	"name"
.LASF256:
	.string	"tcp_rst_common"
.LASF152:
	.string	"netif_linkoutput_fn"
.LASF179:
	.string	"ssthresh"
.LASF187:
	.string	"snd_buf"
.LASF19:
	.string	"uintptr_t"
.LASF80:
	.string	"MEMP_RAW_PCB"
.LASF229:
	.string	"ip_chksum_pseudo_partial"
.LASF223:
	.string	"_hdrlen_rsvd_flags"
.LASF106:
	.string	"lenerr"
.LASF7:
	.string	"long unsigned int"
.LASF131:
	.string	"netif_mac_filter_action"
.LASF218:
	.string	"tcphdr"
.LASF23:
	.string	"s16_t"
.LASF62:
	.string	"pbuf_layer"
.LASF289:
	.string	"apiflags"
.LASF194:
	.string	"refused_data"
.LASF292:
	.string	"queue"
.LASF26:
	.string	"tcpwnd_size_t"
.LASF284:
	.string	"remainder_flags"
.LASF113:
	.string	"rx_v1"
.LASF291:
	.string	"prev_seg"
.LASF180:
	.string	"rto_end"
.LASF121:
	.string	"stats_sys"
.LASF3:
	.string	"unsigned char"
.LASF32:
	.string	"FIN_WAIT_1"
.LASF33:
	.string	"FIN_WAIT_2"
.LASF258:
	.string	"tcp_output_control_segment"
.LASF283:
	.string	"split_flags"
.LASF107:
	.string	"memerr"
.LASF84:
	.string	"MEMP_TCP_SEG"
.LASF153:
	.string	"netif_status_callback_fn"
.LASF29:
	.string	"SYN_SENT"
.LASF200:
	.string	"keep_idle"
.LASF300:
	.string	"mss_local"
.LASF161:
	.string	"callback_arg"
.LASF28:
	.string	"LISTEN"
.LASF270:
	.string	"tcp_rexmit_rto"
.LASF77:
	.string	"addr"
.LASF117:
	.string	"tx_join"
.LASF102:
	.string	"xmit"
.LASF104:
	.string	"drop"
.LASF142:
	.string	"state"
.LASF265:
	.string	"src_port"
.LASF134:
	.string	"netif"
.LASF52:
	.string	"ERR_ABRT"
.LASF216:
	.string	"chksum"
.LASF149:
	.string	"acd_list"
.LASF288:
	.string	"tcp_write"
.LASF242:
	.string	"pbuf_add_header"
.LASF118:
	.string	"tx_leave"
.LASF39:
	.string	"ERR_OK"
.LASF103:
	.string	"recv"
.LASF2:
	.string	"signed char"
.LASF181:
	.string	"snd_nxt"
.LASF156:
	.string	"tcp_pcb"
.LASF5:
	.string	"short unsigned int"
.LASF305:
	.string	"seglen"
.LASF269:
	.string	"cur_seg"
.LASF112:
	.string	"stats_igmp"
.LASF50:
	.string	"ERR_CONN"
.LASF203:
	.string	"persist_cnt"
.LASF254:
	.string	"tcp_rst_netif"
.LASF158:
	.string	"remote_ip"
.LASF43:
	.string	"ERR_RTE"
.LASF267:
	.string	"tcp_rexmit_fast"
.LASF201:
	.string	"keep_intvl"
.LASF79:
	.string	"ip_addr_t"
.LASF233:
	.string	"tcp_segs_free"
.LASF92:
	.string	"MEMP_NETDB"
.LASF235:
	.string	"pbuf_cat"
.LASF96:
	.string	"memp_t"
.LASF60:
	.string	"PBUF_RAW_TX"
.LASF64:
	.string	"PBUF_ROM"
.LASF321:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF175:
	.string	"nrtx"
.LASF188:
	.string	"snd_queuelen"
.LASF40:
	.string	"ERR_MEM"
.LASF220:
	.string	"dest"
.LASF30:
	.string	"SYN_RCVD"
.LASF135:
	.string	"ip_addr"
.LASF114:
	.string	"rx_group"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/tcp_out.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
